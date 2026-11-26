#!/usr/bin/env python3
"""Build a self-contained HTML report from the results written by ../run_benchmarks_ci.sh.

Usage: python3 generate_benchmark_report.py <results_dir> [-o report.html] [--summary summary.md] [--coqlex-dir DIR]

<results_dir> holds one <group>.json per JMH group (JMH `-rf json`), flex.json (hyperfine) and run-info.json.
The report has three parts:
  - the patterns of RegexClementBenchmark, with and without ranges, with and without memoization
  - the zipper matcher against the derivative-based matcher and scala.util.matching.Regex
  - the V3 memoized lexer against Silex, flex and Coqlex
The Coqlex numbers are not measured by the run: they are the reference results kept in from_coqlex/
(`--coqlex-dir`, default: from_coqlex/Comparison next to this script), measured on another machine.
`--summary` also writes a short Markdown summary (for the GitHub job summary). Only the Python standard
library is needed; a group without results is reported as missing instead of failing, so that a partial
run still gives a report.
"""

from __future__ import annotations

import argparse
import html
import json
import math
import re
import sys
from pathlib import Path

# Series: label, short label and colour. A colour follows the implementation, in every chart of a section.
SERIES = {
    # Clément's patterns
    "ranges": {"label": "With ranges", "short": "ranges", "color": "var(--s1)"},
    "noRanges": {"label": "Without ranges", "short": "no ranges", "color": "var(--s2)"},
    # Regex matchers
    "zipmem": {"label": "Zipper, memoized", "short": "memoized zipper", "color": "var(--s1)"},
    "zip": {"label": "Zipper", "short": "zipper", "color": "var(--s3)"},
    "deriv": {"label": "Derivatives", "short": "derivatives", "color": "var(--s2)"},
    "scala": {"label": "scala.util.matching.Regex", "short": "Scala Regex", "color": "var(--s4)"},
    # Lexers
    "ziplex": {"label": "Ziplex V3, memoized", "short": "Ziplex", "color": "var(--s1)"},
    "silex": {"label": "Silex", "short": "Silex", "color": "var(--s2)"},
    "flex": {"label": "flex", "short": "flex", "color": "var(--s3)"},
    "coqlex": {"label": "Coqlex (reference, other machine)", "short": "Coqlex", "color": "var(--s4)", "ref": True},
}

# The patterns of RegexClementBenchmark, by index
CLEMENT_PATTERNS = [
    "[a-z]+", "[a-z][a-z0-9]*", "[0-9]+", "[a-z0-9]+", "[a-z]+@[a-z]+", "(foo|bar|baz)+", "(cat|dog|bird|fish)+",
    "(abc)+", "(ab|cd|ef)+", "(x|y|z)+", "a*b*c*", "(a|b|...|p)+", "(abcdefghij)+", "[a-c]+[d-f]+[g-i]+",
    "([a-z][0-9])+", "(a*)*", "(a+)+", "(a|aa)+", "(a*b*)*", "((a+)+)+",
]
CLEMENT_MATCHERS = [
    ("mem", "RegexClementBenchmark", "Memoized zipper matcher", "matchZipperSequenceMem, caches emptied before each iteration"),
    ("nomem", "RegexClementNoMemBenchmark", "Zipper matcher without memoization", "matchZipperSequence"),
]

# Line charts. A source is ("jmh", group, "Class.method"), ("flex",) or ("coqlex", directory of from_coqlex/Comparison).
# The first series of a chart is the one the others are compared with.
SECTIONS = [
    {
        "id": "matchers",
        "title": "Regex matchers",
        "what": "The verified zipper matcher (on a <code>Sequence</code>), with and without memoization, against the verified "
                "derivative-based matcher <code>matchR</code> (on a list) and, for the comments, <code>scala.util.matching.Regex</code>. "
                "Accepted strings, generated randomly.",
        "xlabel": "length of the matched string (characters)", "xunit": "chars", "xlog": False,
        "charts": [
            {"id": "abstar", "title": "(a|b)*", "desc": "RegexBenchmark.abStarAccepting", "series": [
                ("zipmem", ("jmh", "regex", "RegexBenchmark.abStarAccepting_ZipperMem_vector")),
                ("zip", ("jmh", "regex", "RegexBenchmark.abStarAccepting_Zipper_vector")),
                ("deriv", ("jmh", "regex", "RegexBenchmark.abStarAccepting_Regex_list"))]},
            {"id": "email", "title": "Email address", "desc": "RegexBenchmark.emailAccepting · [a-z.]+@[a-z.]+.[a-z.]+", "series": [
                ("zipmem", ("jmh", "regex", "RegexBenchmark.emailAccepting_ZipperMem_vector")),
                ("zip", ("jmh", "regex", "RegexBenchmark.emailAccepting_Zipper_vector")),
                ("deriv", ("jmh", "regex", "RegexBenchmark.emailAccepting_Regex_list"))]},
            {"id": "comment", "title": "Single-line comment", "desc": "LexerRegexBenchmark.commentAccepting · // …", "series": [
                ("zipmem", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_ZipperNMem_vector")),
                ("zip", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_Zipper_vector")),
                ("deriv", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_Regex_list")),
                ("scala", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_scalaRegex"))]},
            {"id": "multiline", "title": "Multi-line comment", "desc": "LexerRegexBenchmark.commentAccepting_multiline · /* … */", "series": [
                ("zipmem", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_Zipper_multiline_vector_mem")),
                ("zip", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_Zipper_multiline_vector")),
                ("deriv", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_Regex_multiline_list")),
                ("scala", ("jmh", "lexer_regex", "LexerRegexBenchmark.commentAccepting_scalaRegex_multiline"))]},
        ],
    },
    {
        "id": "lexers",
        "title": "Lexers",
        "what": "The verified V3 tail-recursive lexer with memoization (<code>Lexer.lexMem</code>) against "
                "Silex, flex and Coqlex. Silex is measured by JMH in the same JVM; flex is a process timed by hyperfine, start-up included; "
                "the Coqlex numbers are the reference results of <code>from_coqlex/</code>, not measured by this run.",
        "xlabel": "size of the input (characters)", "xunit": "chars", "xlog": False,
        "charts": [
            {"id": "aastarb", "title": "a and a*b", "desc": "AAStarBLexerBenchmark · inputs made of a only, the worst case for backtracking",
             "xlog": True, "series": [
                ("ziplex", ("jmh", "lexer_aastarb", "AAStarBLexerBenchmark.lex_ZipperV3Mem")),
                ("silex", ("jmh", "lexer_aastarb", "AAStarBLexerBenchmark.lex_Silex")),
                ("flex", ("flex",)),
                ("coqlex", ("coqlex", "AAStarB"))]},
            {"id": "json", "title": "JSON", "desc": "JsonLexerBenchmark · the files of the Coqlex comparison", "series": [
                ("ziplex", ("jmh", "lexer_json", "JsonLexerBenchmark.lex_ZipperMem")),
                ("coqlex", ("coqlex", "JSON"))]},
            {"id": "amy", "title": "Amy", "desc": "AmyLexerBenchmarkGenerated · generated Amy programs", "series": [
                ("ziplex", ("jmh", "lexer_amy", "AmyLexerBenchmarkGenerated.lex_ZipperMem")),
                ("silex", ("jmh", "lexer_amy", "AmyLexerBenchmarkGenerated.lex_OriginalSilex"))]},
        ],
    },
]

JMH_GROUPS = ["regex_clement", "regex", "lexer_regex", "lexer_aastarb", "lexer_json", "lexer_amy"]
UNIT_TO_US = {"ns/op": 1e-3, "us/op": 1.0, "ms/op": 1e3, "s/op": 1e6}


# --------------------------------------------------------------------------------------------- data

def _number(value) -> float | None:
    """JMH writes "NaN" (a string) for the error of a single iteration."""
    try:
        f = float(value)
    except (TypeError, ValueError):
        return None
    return f if math.isfinite(f) else None


def size_of(value: str) -> int | None:
    """Size given by the value of a JMH parameter: "512", "100000.txt", "102_23677chars.json"."""
    m = re.search(r"(\d+)chars", value) or re.match(r"(\d+)", value)
    return int(m.group(1)) if m else None


def load_jmh(path: Path) -> dict[str, dict[int, tuple[float, float | None]]]:
    """JMH JSON → {Class.method: {size: (score in µs/op, error in µs/op or None)}}."""
    out: dict[str, dict[int, tuple[float, float | None]]] = {}
    if not path.is_file() or path.stat().st_size == 0:
        return out
    for entry in json.loads(path.read_text()):
        name = ".".join(entry["benchmark"].split(".")[-2:])
        metric = entry["primaryMetric"]
        factor = UNIT_TO_US.get(metric.get("scoreUnit", "us/op"), 1.0)
        params = entry.get("params") or {}
        size = size_of(str(next(iter(params.values())))) if params else None
        score = _number(metric.get("score"))
        if size is None or score is None:
            continue
        error = _number(metric.get("scoreError"))
        out.setdefault(name, {})[size] = (score * factor, error * factor if error is not None else None)
    return out


def load_flex(path: Path) -> dict[int, tuple[float, float | None]]:
    """flex.json of run_benchmarks_ci.sh → {size: (mean in µs, standard deviation in µs)}."""
    out = {}
    if not path.is_file() or path.stat().st_size == 0:
        return out
    for entry in json.loads(path.read_text()):
        size = size_of(str(entry.get("file", "")))
        mean = _number(entry.get("mean_seconds"))
        if size is None or mean is None:
            continue
        dev = _number(entry.get("stddev_seconds"))
        out[size] = (mean * 1e6, dev * 1e6 if dev else None)
    return out


def load_coqlex(directory: Path) -> dict[int, tuple[float, float | None]]:
    """Result files of the Coqlex evaluation (times in seconds) → {input length: (mean in µs, None)}."""
    out = {}
    if not directory.is_dir():
        return out
    for path in directory.glob("*.json"):
        try:
            entry = json.loads(path.read_text())
            times = [float(t) for t in entry["times"]]
            out[int(entry["input_len"])] = (sum(times) / len(times) * 1e6, None)
        except (ValueError, KeyError, TypeError, ZeroDivisionError):
            continue
    return out


def geomean(values: list[float]) -> float | None:
    values = [v for v in values if v > 0]
    if not values:
        return None
    return math.exp(sum(math.log(v) for v in values) / len(values))


def ratios_of(base: list, other: list) -> list[tuple[int, float]]:
    """Time of base / time of other, at the sizes they share."""
    by_x = {x: s for x, s, _ in other}
    return [(x, s / by_x[x]) for x, s, _ in base if by_x.get(x, 0) > 0]


def build_sections(results_dir: Path, coqlex_dir: Path) -> list[dict]:
    jmh = {group: load_jmh(results_dir / f"{group}.json") for group in JMH_GROUPS}
    flex = load_flex(results_dir / "flex.json")
    sections = []
    for section in SECTIONS:
        charts = []
        ratios_all: dict[str, list[float]] = {}
        for chart in section["charts"]:
            points = {}
            for key, source in chart["series"]:
                if source[0] == "jmh":
                    data = jmh[source[1]].get(source[2], {})
                elif source[0] == "flex":
                    data = flex
                else:
                    data = load_coqlex(coqlex_dir / source[1] / "results" / "CoqLex")
                points[key] = sorted((x, v[0], v[1]) for x, v in data.items())
            base_key = chart["series"][0][0]
            measured = {x for key, pts in points.items() if not SERIES[key].get("ref") for x, _, _ in pts}
            if not measured:
                continue
            # A reference series is only shown at the sizes measured by the run
            for key in points:
                if SERIES[key].get("ref"):
                    points[key] = [p for p in points[key] if p[0] in measured]
            ratios = {}
            for key, _ in chart["series"][1:]:
                ratios[key] = ratios_of(points[base_key], points[key])
                ratios_all.setdefault(key, []).extend(r for _, r in ratios[key])
            charts.append({**chart, "points": points, "ratios": ratios, "xlog": chart.get("xlog", section["xlog"])})
        sections.append({**section, "charts": charts, "ratios_all": ratios_all, "found": bool(charts)})
    return sections


def build_clement(results_dir: Path) -> dict:
    """{"sizes": [...], "matchers": [{key, title, desc, rows: [{p, name, pattern, by_size: {size: {variant: (us, err)}}}]}]}"""
    data = load_jmh(results_dir / "regex_clement.json")
    matchers = []
    sizes: set[int] = set()
    for key, cls, title, desc in CLEMENT_MATCHERS:
        rows: dict[int, dict] = {}
        for name, by_size in data.items():
            m = re.match(rf"{cls}\.p(\d+)_(\w+?)_Zipper(?:Mem)?_seq_(noRanges|ranges)$", name)
            if not m:
                continue
            index = int(m.group(1))
            pattern = CLEMENT_PATTERNS[index] if index < len(CLEMENT_PATTERNS) else m.group(2)
            row = rows.setdefault(index, {"p": index, "name": m.group(2), "pattern": pattern, "by_size": {}})
            for size, value in by_size.items():
                row["by_size"].setdefault(size, {})[m.group(3)] = value
                sizes.add(size)
        matchers.append({"key": key, "title": title, "desc": desc, "rows": [rows[i] for i in sorted(rows)]})
    return {"sizes": sorted(sizes), "matchers": matchers, "found": bool(sizes)}


def clement_ratios(matcher: dict, size: int | None = None) -> list[float]:
    """ranges / noRanges of every pattern, at one size or at all of them."""
    out = []
    for row in matcher["rows"]:
        for s, variants in row["by_size"].items():
            if (size is None or s == size) and "ranges" in variants and variants.get("noRanges", (0,))[0] > 0:
                out.append(variants["ranges"][0] / variants["noRanges"][0])
    return out


# --------------------------------------------------------------------------------------------- formatting

def fmt_time(us: float) -> str:
    for unit, factor in (("s", 1e-6), ("ms", 1e-3), ("µs", 1.0)):
        if us * factor >= 1:
            v = us * factor
            break
    else:
        unit, v = "ns", us * 1e3
    return (f"{v:,.0f}" if v >= 100 else f"{v:.1f}" if v >= 10 else f"{v:.2f}") + f" {unit}"


def fmt_ratio(r: float | None) -> str:
    if r is None:
        return "–"
    return f"{r:,.0f}×" if r >= 100 else f"{r:.1f}×" if r >= 10 else f"{r:.2f}×" if r >= 0.1 else f"{r:.3f}×"


def verdict(r: float | None) -> str:
    """Reading of a ratio time of the subject / time of what it is compared with."""
    if r is None:
        return "no data"
    if r >= 1.05:
        return f"{fmt_ratio(r)} slower"
    if r <= 0.95:
        return f"{fmt_ratio(1 / r)} faster"
    return "on par"


def than(text: str, other: str) -> str:
    return f"{text} with {other}" if text == "on par" else f"{text} than {other}"


def fmt_duration(seconds) -> str:
    try:
        seconds = int(seconds)
    except (TypeError, ValueError):
        return "?"
    return f"{seconds // 3600}h{seconds % 3600 // 60:02d}" if seconds >= 3600 else f"{seconds // 60}m{seconds % 60:02d}"


def esc(s) -> str:
    return html.escape(str(s))


# --------------------------------------------------------------------------------------------- HTML

CSS = """
:root{
  --bg:#f7f8f9; --surface:#ffffff; --fg:#14171a; --fg2:#4f5862; --muted:#7c8590; --rule:#dde1e5; --grid:#eceef1;
  --s1:#2a78d6; --s2:#eb6834; --s3:#1baf7a; --s4:#8a5cc9; --critink:#b02e2e;
  --sans:"IBM Plex Sans",system-ui,-apple-system,"Segoe UI",sans-serif; --mono:"IBM Plex Mono",ui-monospace,SFMono-Regular,Menlo,monospace;
}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){
  --bg:#121417; --surface:#1a1d21; --fg:#eef0f2; --fg2:#b9c0c8; --muted:#8a939d; --rule:#2c3136; --grid:#24282d;
  --s1:#3987e5; --s2:#d95926; --s3:#199e70; --s4:#9a70d6; --critink:#ef7a7a; color-scheme:dark}}
:root[data-theme="dark"]{
  --bg:#121417; --surface:#1a1d21; --fg:#eef0f2; --fg2:#b9c0c8; --muted:#8a939d; --rule:#2c3136; --grid:#24282d;
  --s1:#3987e5; --s2:#d95926; --s3:#199e70; --s4:#9a70d6; --critink:#ef7a7a; color-scheme:dark}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--fg);font:13px/1.45 var(--sans);padding:20px 16px 28px}
main{max-width:1080px;margin:0 auto;display:grid;gap:14px}
h1{font-size:17px;font-weight:600;margin:0;text-wrap:balance}
h2{font-size:14px;font-weight:600;margin:10px 0 0}
p.what{margin:2px 0 0;color:var(--fg2);font-size:12px;max-width:90ch}
.meta{color:var(--muted);font:11px/1.5 var(--mono);margin-top:2px}
.verdict{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:10px 18px;padding:10px 12px;background:var(--surface);border:1px solid var(--rule);border-radius:6px}
.verdict b{display:block;font:600 15px var(--mono)}
.verdict span{display:block;color:var(--fg2);font-size:11.5px}
.k{font:500 10px var(--sans);text-transform:uppercase;letter-spacing:.06em;color:var(--muted)}
.charts{display:grid;grid-template-columns:repeat(auto-fit,minmax(min(100%,420px),1fr));gap:14px}
figure{margin:0;background:var(--surface);border:1px solid var(--rule);border-radius:6px;padding:10px 12px;min-width:0;position:relative}
figcaption{display:flex;justify-content:space-between;gap:4px 8px;flex-wrap:wrap;margin-bottom:4px}
figcaption strong{font-weight:600;font-size:12.5px}
figcaption small{display:block;flex-basis:100%;color:var(--muted);font-size:11px}
.legend{display:flex;gap:10px;flex-wrap:wrap;color:var(--fg2);font-size:11px}
.legend i{display:inline-block;width:8px;height:8px;border-radius:50%;vertical-align:middle;margin-right:4px}
.legend i.ref{background:transparent!important;border:2px solid}
svg{display:block;width:100%;height:auto;overflow:visible}
svg text{font:10px var(--mono);fill:var(--muted)}
svg .lab{fill:var(--fg2)}
svg .row{fill:var(--fg)}
.ratio{color:var(--fg2);font:11px var(--mono);margin-top:4px}
.tip{position:absolute;pointer-events:none;background:var(--fg);color:var(--bg);font:11px/1.4 var(--mono);padding:5px 7px;border-radius:4px;white-space:nowrap;z-index:2}
.tip i{display:inline-block;width:7px;height:7px;border-radius:50%;margin-right:5px}
details{background:var(--surface);border:1px solid var(--rule);border-radius:6px}
summary{cursor:pointer;padding:7px 12px;font-weight:500;font-size:12px;color:var(--fg2)}
.tbl{overflow-x:auto;border-top:1px solid var(--rule)}
table{border-collapse:collapse;width:100%;font:11.5px/1.3 var(--mono);font-variant-numeric:tabular-nums}
th,td{padding:4px 8px;text-align:left;border-bottom:1px solid var(--grid);white-space:nowrap}
th{font:500 10px var(--sans);text-transform:uppercase;letter-spacing:.06em;color:var(--muted)}
td.n,th.n{text-align:right}
td .e{color:var(--muted)}
tr.ph td{background:var(--bg);font:500 10px var(--sans);text-transform:uppercase;letter-spacing:.06em;color:var(--muted)}
.notes{display:grid;grid-template-columns:repeat(auto-fit,minmax(240px,1fr));gap:6px 18px;color:var(--fg2);font-size:12px;margin:0;padding:0;list-style:none}
.notes b{color:var(--fg);font-weight:600}
.missing{padding:10px 12px;background:var(--surface);border:1px solid var(--rule);border-radius:6px;color:var(--critink)}
code{font:11.5px var(--mono)}
"""

JS = r"""
const NS="http://www.w3.org/2000/svg";
function el(t,a,p,x){const e=document.createElementNS(NS,t);for(const k in a)e.setAttribute(k,a[k]);if(x!=null)e.textContent=x;if(p)p.appendChild(e);return e;}
const tip=document.getElementById('tip');
const fv=v=>v>=100?v.toFixed(0):v>=10?v.toFixed(1):v.toFixed(2);
// Times are in µs
const ft=u=>u>=1e6?fv(u/1e6)+' s':u>=1e3?fv(u/1e3)+' ms':u>=1?fv(u)+' µs':fv(u*1e3)+' ns';
const tick=u=>u>=1e6?+(u/1e6).toPrecision(3)+' s':u>=1e3?+(u/1e3).toPrecision(3)+' ms':u>=1?+u.toPrecision(3)+' µs':+(u*1e3).toPrecision(3)+' ns';
const fn=n=>n>=1e6?+(n/1e6).toFixed(2)+'M':n>=1e4?+(n/1e3).toFixed(1)+'k':''+n;
const fr=r=>r>=100?r.toFixed(0)+'×':r>=10?r.toFixed(1)+'×':r>=0.1?r.toFixed(2)+'×':r.toFixed(3)+'×';
const lg=Math.log10;
function showTip(svg,ev,h){const f=svg.closest('figure'),b=f.getBoundingClientRect();tip.innerHTML=h;tip.hidden=false;f.appendChild(tip);
  let x=ev.clientX-b.left+14;if(x+tip.offsetWidth>b.width-4)x=ev.clientX-b.left-tip.offsetWidth-14;
  tip.style.left=Math.max(4,x)+'px';tip.style.top=Math.max(4,ev.clientY-b.top-tip.offsetHeight-8)+'px';}
// Decades covering [lo, hi], at least one
function decades(lo,hi){let a=Math.floor(lg(lo)+1e-9),b=Math.ceil(lg(hi)-1e-9);if(a==b){a-=1;}return [a,b];}

// Time against size, logarithmic time axis
document.querySelectorAll('svg.plot').forEach(svg=>{
  const C=D[svg.dataset.c],W=560,H=260,L=52,R=14,T=12,B=34;
  const all=C.series.flatMap(s=>s.pts);
  if(!all.length)return;
  const xs=[...new Set(all.map(p=>p[0]))].sort((a,b)=>a-b);
  const [d0,d1]=decades(Math.min(...all.map(p=>p[1])),Math.max(...all.map(p=>p[1]+(p[2]||0))));
  const xl=C.xlog&&xs[0]>0,fx=n=>xl?lg(n):n,x0=xl?fx(xs[0]):0,x1=fx(xs[xs.length-1]);
  const X=n=>xs.length>1?L+(fx(n)-x0)/(x1-x0)*(W-L-R):(L+W-R)/2;
  const Y=v=>H-B-(lg(Math.max(v,10**d0))-d0)/(d1-d0)*(H-T-B);
  const every=Math.ceil((d1-d0+1)/7);
  for(let d=d0;d<=d1;d++){const y=Y(10**d);el('line',{x1:L,x2:W-R,y1:y,y2:y,stroke:'var(--grid)'},svg);
    if((d-d0)%every==0||d==d1)el('text',{x:L-6,y:y+3,'text-anchor':'end'},svg,tick(10**d));}
  let last=-1e9;
  xs.forEach((n,i)=>{const x=X(n);el('line',{x1:x,x2:x,y1:H-B,y2:H-B+4,stroke:'var(--rule)'},svg);
    if(x-last<46&&i<xs.length-1)return;
    if(i==xs.length-1&&x-last<46)return;
    last=x;el('text',{x:x,y:H-B+15,'text-anchor':i==0&&xs.length>1?'start':i==xs.length-1&&xs.length>1?'end':'middle'},svg,fn(n));});
  el('text',{x:W-R,y:H-4,'text-anchor':'end'},svg,C.xlabel+(xl?' · logarithmic':'')+' · time: logarithmic');
  const cross=el('line',{y1:T,y2:H-B,stroke:'var(--muted)','stroke-dasharray':'2 3',visibility:'hidden'},svg);
  C.series.forEach(s=>{
    if(!s.pts.length)return;
    s.pts.forEach(p=>{if(p[2]){const x=X(p[0]),a=Y(p[1]+p[2]),b=Y(p[1]-p[2]);
      el('path',{d:`M${x-3} ${a}H${x+3}M${x} ${a}V${b}M${x-3} ${b}H${x+3}`,stroke:s.color,'stroke-width':1,'stroke-opacity':.55,fill:'none'},svg);}});
    const line={d:s.pts.map((p,i)=>(i?'L':'M')+X(p[0]).toFixed(1)+' '+Y(p[1]).toFixed(1)).join(''),fill:'none',stroke:s.color,'stroke-width':2,'stroke-linejoin':'round'};
    if(s.ref)line['stroke-dasharray']='5 4';
    el('path',line,svg);
    s.pts.forEach(p=>el('circle',{cx:X(p[0]),cy:Y(p[1]),r:4,fill:s.ref?'var(--surface)':s.color,stroke:s.ref?s.color:'var(--surface)','stroke-width':2},svg));
  });
  const hit=el('rect',{x:L-8,y:T,width:W-L-R+16,height:H-T-B,fill:'transparent'},svg);
  hit.addEventListener('mousemove',ev=>{
    const r=svg.getBoundingClientRect(),px=(ev.clientX-r.left)/r.width*W;
    const n=xs.reduce((a,b)=>Math.abs(X(b)-px)<Math.abs(X(a)-px)?b:a);
    cross.setAttribute('x1',X(n));cross.setAttribute('x2',X(n));cross.setAttribute('visibility','visible');
    const base=C.series[0].pts.find(p=>p[0]==n);
    let h=`${n.toLocaleString('en-US')} ${C.xunit}`;
    C.series.forEach((s,i)=>{const p=s.pts.find(q=>q[0]==n);if(!p)return;
      h+=`<br><i style="background:${s.color}"></i>${s.label} <b>${ft(p[1])}</b>`+(p[2]?` ± ${ft(p[2])}`:'')+(i&&base?` · ${C.series[0].short} takes ${fr(base[1]/p[1])}`:'');});
    showTip(svg,ev,h);
  });
  hit.addEventListener('mouseleave',()=>{tip.hidden=true;cross.setAttribute('visibility','hidden');});
});

// One row per pattern: time without ranges and time with ranges, logarithmic time axis
document.querySelectorAll('svg.rows').forEach(svg=>{
  const C=D[svg.dataset.c],W=560,RH=19,L=150,R=62,T=20,B=22,H=T+C.rows.length*RH+B;
  svg.setAttribute('viewBox',`0 0 ${W} ${H}`);
  const all=C.rows.flatMap(r=>[r.a,r.b]).filter(v=>v>0);
  if(!all.length)return;
  const [d0,d1]=decades(Math.min(...all),Math.max(...all));
  const X=v=>L+(lg(v)-d0)/(d1-d0)*(W-L-R);
  for(let d=d0;d<=d1;d++){el('line',{x1:X(10**d),x2:X(10**d),y1:T-4,y2:H-B,stroke:'var(--grid)'},svg);el('text',{x:X(10**d),y:H-B+14,'text-anchor':'middle'},svg,tick(10**d));}
  el('text',{x:W,y:T-8,'text-anchor':'end',class:'lab'},svg,'ranges / none');
  C.rows.forEach((r,i)=>{
    const y=T+i*RH+RH/2;
    el('text',{x:0,y:y+3,class:'row'},svg,r.label);
    if(r.a>0&&r.b>0)el('line',{x1:X(r.a),x2:X(r.b),y1:y,y2:y,stroke:'var(--muted)','stroke-width':2},svg);
    if(r.a>0)el('circle',{cx:X(r.a),cy:y,r:4.5,fill:C.colors[0],stroke:'var(--surface)','stroke-width':2},svg);
    if(r.b>0)el('circle',{cx:X(r.b),cy:y,r:4.5,fill:C.colors[1],stroke:'var(--surface)','stroke-width':2},svg);
    if(r.a>0&&r.b>0)el('text',{x:W,y:y+3,'text-anchor':'end',class:'lab'},svg,fr(r.b/r.a));
    const hit=el('rect',{x:0,y:y-RH/2,width:W,height:RH,fill:'transparent'},svg);
    hit.addEventListener('mousemove',ev=>showTip(svg,ev,`${r.label} · ${C.size} chars`
      +(r.a>0?`<br><i style="background:${C.colors[0]}"></i>${C.labels[0]} <b>${ft(r.a)}</b>`+(r.ae?` ± ${ft(r.ae)}`:''):'')
      +(r.b>0?`<br><i style="background:${C.colors[1]}"></i>${C.labels[1]} <b>${ft(r.b)}</b>`+(r.be?` ± ${ft(r.be)}`:''):'')
      +(r.a>0&&r.b>0?`<br>with ranges takes ${fr(r.b/r.a)}`:'')));
    hit.addEventListener('mouseleave',()=>{tip.hidden=true;});
  });
});
"""


def legend_html(keys: list[str]) -> str:
    out = []
    for k in keys:
        ref = ' class="ref"' if SERIES[k].get("ref") else ""
        out.append(f'<span><i{ref} style="background:{SERIES[k]["color"]};border-color:{SERIES[k]["color"]}"></i>{esc(SERIES[k]["label"])}</span>')
    return "".join(out)


def cell(value) -> str:
    if value is None:
        return '<td class="n">–</td>'
    err = f' <span class="e">± {fmt_time(value[1])}</span>' if value[1] is not None else ""
    return f'<td class="n">{fmt_time(value[0])}{err}</td>'


def render_clement(clement: dict, chart_data: dict) -> list[str]:
    body = ['<section><h2>Clément\'s patterns</h2><p class="what">20 small patterns matched against accepted strings '
            '(<code>RegexClementBenchmark</code>). Each pattern is built twice: without ranges, its character classes are '
            '<code>ElementSet</code>s and unions of single characters; with ranges, they are <code>ElementRange</code>s. '
            'The same strings are matched by both.</p></section>']
    if not clement["found"]:
        body.append('<div class="missing">No results for this group (<code>regex_clement.json</code> is missing or empty): '
                    'see <code>regex_clement.log</code>.</div>')
        return body
    size = clement["sizes"][-1]
    figures = []
    for m in clement["matchers"]:
        rows = []
        for row in m["rows"]:
            v = row["by_size"].get(size, {})
            a, b = v.get("noRanges"), v.get("ranges")
            rows.append({"label": row["pattern"], "a": a[0] if a else 0, "ae": a[1] if a else None,
                         "b": b[0] if b else 0, "be": b[1] if b else None})
        if not rows:
            continue
        cid = f'clement.{m["key"]}'
        chart_data[cid] = {"size": size, "rows": rows, "colors": [SERIES["noRanges"]["color"], SERIES["ranges"]["color"]],
                           "labels": [SERIES["noRanges"]["label"], SERIES["ranges"]["label"]]}
        gm = geomean(clement_ratios(m, size))
        figures.append(
            f'<figure><figcaption><strong>{esc(m["title"])} · strings of {size} characters</strong>'
            f'<span class="legend">{legend_html(["noRanges", "ranges"])}</span><small>{esc(m["desc"])} · time per match, logarithmic</small></figcaption>'
            f'<svg class="rows" data-c="{esc(cid)}" role="img" aria-label="{esc(m["title"])}: time per pattern, without and with ranges"></svg>'
            f'<div class="ratio">With ranges: {esc(than(verdict(gm), "without"))} (geometric mean over the patterns)</div></figure>')
    body.append(f'<div class="charts">{"".join(figures)}</div>')

    head = '<th>Pattern</th><th class="n">Chars</th>'
    for m in clement["matchers"]:
        short = "memoized" if m["key"] == "mem" else "not memoized"
        head += f'<th class="n">{short} · no ranges</th><th class="n">{short} · ranges</th><th class="n">ranges / none</th>'
    rows_html = []
    patterns = sorted({(r["p"], r["pattern"]) for m in clement["matchers"] for r in m["rows"]})
    for index, pattern in patterns:
        for s in clement["sizes"]:
            cells = [f'<td>{esc(pattern)}</td><td class="n">{s}</td>']
            for m in clement["matchers"]:
                v = next((r["by_size"].get(s, {}) for r in m["rows"] if r["p"] == index), {})
                a, b = v.get("noRanges"), v.get("ranges")
                cells += [cell(a), cell(b), f'<td class="n">{fmt_ratio(b[0] / a[0] if a and b and a[0] > 0 else None)}</td>']
            rows_html.append(f'<tr>{"".join(cells)}</tr>')
    body.append('<details><summary>Measurements · Clément\'s patterns</summary><div class="tbl"><table><thead><tr>'
                f'{head}</tr></thead><tbody>{"".join(rows_html)}</tbody></table></div></details>')
    return body


def render_section(section: dict, chart_data: dict, missing_groups: set[str]) -> list[str]:
    body = [f'<section><h2>{esc(section["title"])}</h2><p class="what">{section["what"]}</p></section>']
    figures = []
    rows = []
    max_cols = 1 + max(2 * len(c["series"]) - 1 for c in section["charts"]) if section["charts"] else 1
    for c in section["charts"]:
        keys = [k for k, _ in c["series"] if c["points"].get(k)]
        base = c["series"][0][0]
        cid = f'{section["id"]}.{c["id"]}'
        chart_data[cid] = {
            "xlabel": section["xlabel"], "xunit": section["xunit"], "xlog": c["xlog"],
            "series": [{"label": SERIES[k]["label"], "short": SERIES[k]["short"], "color": SERIES[k]["color"], "ref": bool(SERIES[k].get("ref")),
                        "pts": [[x, s, e] for x, s, e in c["points"][k]]} for k in keys],
        }
        ratio_text = " · ".join(esc(than(verdict(geomean([r for _, r in c["ratios"].get(k, [])])), SERIES[k]["short"]))
                                for k in keys if k != base and c["ratios"].get(k))
        ratio_html = (f'<div class="ratio">{esc(SERIES[base]["short"][0].upper() + SERIES[base]["short"][1:])}: {ratio_text} '
                      f'(geometric mean over the sizes)</div>') if ratio_text and base in keys else ""
        figures.append(
            f'<figure><figcaption><strong>{esc(c["title"])}</strong><span class="legend">{legend_html(keys)}</span>'
            f'<small>{esc(c["desc"])}</small></figcaption>'
            f'<svg class="plot" data-c="{esc(cid)}" viewBox="0 0 560 260" role="img" aria-label="{esc(c["title"])}: time against the size of the input"></svg>'
            f'{ratio_html}</figure>')

        others = [k for k in keys if k != base]
        header = (['<td class="n">Chars</td>'] + [f'<td class="n">{esc(SERIES[k]["label"])}</td>' for k in keys]
                  + [f'<td class="n">{esc(SERIES[base]["short"])} / {esc(SERIES[k]["short"])}</td>' for k in others])
        pad = max_cols - len(header)
        filler = f'<td colspan="{pad}"></td>' if pad > 0 else ""
        rows.append(f'<tr class="ph"><td colspan="{max_cols}">{esc(c["title"])}</td></tr><tr class="ph">{"".join(header)}{filler}</tr>')
        for x in sorted({x for k in keys for x, _, _ in c["points"][k]}):
            cells = [f'<td class="n">{x:,}</td>']
            for k in keys:
                cells.append(cell(next(((s, e) for n, s, e in c["points"][k] if n == x), None)))
            for k in others:
                cells.append(f'<td class="n">{fmt_ratio(next((r for n, r in c["ratios"].get(k, []) if n == x), None))}</td>')
            rows.append(f'<tr>{"".join(cells)}{filler}</tr>')
    groups = sorted({src[1] for c in SECTIONS if c["id"] == section["id"] for ch in c["charts"] for _, src in ch["series"] if src[0] == "jmh"}
                    & missing_groups)
    if groups:
        body.append('<div class="missing">No results for ' + ", ".join(f'<code>{esc(g)}.json</code>' for g in groups)
                    + ' (missing or empty): see the corresponding <code>.log</code> files.</div>')
    if figures:
        body.append(f'<div class="charts">{"".join(figures)}</div>')
        body.append(f'<details><summary>Measurements · {esc(section["title"])}</summary><div class="tbl"><table>'
                    f'<tbody>{"".join(rows)}</tbody></table></div></details>')
    return body


def headline(clement: dict, sections: list[dict]) -> list[tuple[str, float | None, list[float], str]]:
    """(label, geometric mean, ratios, what the ratio is about)"""
    tiles = []
    for m in clement["matchers"]:
        rs = clement_ratios(m)
        tiles.append((f'Ranges vs none · {"memoized" if m["key"] == "mem" else "not memoized"}', geomean(rs), rs, "With ranges"))
    for section in sections:
        base = SERIES[section["charts"][0]["series"][0][0]]["short"] if section["charts"] else ""
        for key, rs in section["ratios_all"].items():
            tiles.append((f'{base} vs {SERIES[key]["short"]}', geomean(rs), rs, base))
    return tiles


def render_html(clement: dict, sections: list[dict], info: dict, missing_groups: set[str]) -> str:
    chart_data: dict = {}
    tiles = []
    for label, gm, rs, _ in headline(clement, sections):
        rng = f"range {fmt_ratio(min(rs))}–{fmt_ratio(max(rs))} over {len(rs)} points" if rs else "no data"
        tiles.append(f'<div><div class="k">{esc(label)}</div><b>{esc(verdict(gm))}</b><span>{esc(rng)}</span></div>')
    body = [f'<div class="verdict">{"".join(tiles)}</div>']
    body += render_clement(clement, chart_data)
    for section in sections:
        body += render_section(section, chart_data, missing_groups)

    meta = [
        info.get("date", "")[:10],
        f'commit {info["commit"]}' if info.get("commit") else "",
        f'branch {info["branch"]}' if info.get("branch") else "",
        f'profile {info["profile"]}' if info.get("profile") else "",
        f'total {fmt_duration(info["total_seconds"])}' if "total_seconds" in info else "",
    ]
    machine = [
        info.get("host", ""), info.get("cpu", ""),
        f'{info["cores"]} cores' if info.get("cores") else "",
        f'{info["memory_gb"]} GB' if info.get("memory_gb") else "",
        info.get("java", ""),
        f'Stainless {info["stainless"]}' if info.get("stainless") else "",
    ]
    jmh = ""
    if "iterations" in info:
        jmh = (f'<li><b>JMH.</b> Average time per operation, 1 fork, 1 thread, {esc(info.get("warmup_iterations"))} warmup iterations of '
               f'{esc(info.get("warmup_time"))}, {esc(info.get("iterations"))} measurement iterations of {esc(info.get("iteration_time"))}, '
               f'heap {esc(info.get("fork_heap"))}. An iteration lasts at least one operation, however long.</li>')
    status = {"ok": "", "skipped": " (skipped)", "failed": " (failed)"}
    durations = " · ".join(f'{esc(x.get("name"))} {fmt_duration(x.get("seconds"))}{status.get(x.get("status"), "")}' for x in info.get("groups", []))
    flex_note = ""
    if any(x.get("name") == "flex" and x.get("status") == "skipped" for x in info.get("groups", [])):
        flex_note = '<li><b>flex.</b> Not measured: flex or hyperfine is not installed on the machine.</li>'
    elif "flex_runs" in info:
        flex_note = (f'<li><b>flex.</b> Mean of {esc(info.get("flex_runs"))} runs of the process after {esc(info.get("flex_warmup"))} warmup run(s), '
                     'timed by hyperfine; the bars are the standard deviation. The time includes the start of the process and reading the file.</li>')
    notes = (
        '<ul class="notes">'
        '<li><b>Reading.</b> Lower is better. Time axes are logarithmic: one grid line is a factor of 10. '
        'A ratio is a time divided by the time it is compared with, at the same input: above 1 is slower.</li>'
        f'{jmh}'
        '<li><b>Error bars.</b> For JMH, the 99.9% confidence interval over the measurement iterations of the single fork. '
        'With few iterations it is wide, and it says nothing about the variation between JVM runs.</li>'
        f'{flex_note}'
        '<li><b>Coqlex.</b> Reference results kept in <code>benchmark_results/from_coqlex</code>, measured on another machine with the '
        'Coqlex evaluation pipeline, shown at the sizes of this run. Its ratios compare two machines.</li>'
        '<li><b>Memoization.</b> The caches of the memoized matchers and lexers are emptied before each JMH iteration, not before each '
        'operation: an iteration fills them once, then measures with warm caches.</li>'
        '<li><b>Sizes.</b> A subset of the <code>@Param</code> values of the benchmark classes, to fit a CI job.</li>'
        + (f'<li><b>Duration.</b> {durations}.</li>' if durations else "")
        + '</ul>')

    return (
        '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">\n'
        '<title>Ziplex benchmarks</title>\n'
        '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500&family=IBM+Plex+Sans:wght@400;500;600&display=swap">\n'
        f'<style>{CSS}</style></head>\n<body><main>\n'
        '<header><h1>lexers/regex/ziplex — regex matching and lexing benchmarks</h1>'
        f'<div class="meta">{esc(" · ".join(x for x in meta if x))}<br>{esc(" · ".join(str(x) for x in machine if x))}</div></header>\n'
        + "\n".join(body) + "\n" + notes +
        '\n</main>\n<div class="tip" id="tip" hidden></div>\n'
        f'<script>const D={json.dumps(chart_data, separators=(",", ":")).replace("</", "<\\/")};{JS}</script>\n</body></html>\n')


# --------------------------------------------------------------------------------------------- Markdown

def render_summary(clement: dict, sections: list[dict], info: dict) -> str:
    lines = ["## Ziplex benchmarks", ""]
    if info:
        lines += [f'{info.get("profile", "?")} profile · commit `{info.get("commit", "?")}` · total {fmt_duration(info.get("total_seconds"))} · '
                  f'{info.get("cpu", "")} · {info.get("java", "")}'
                  + (f' · Stainless {info["stainless"]}' if info.get("stainless") else ""), ""]
    lines += ["A ratio is a time divided by the time it is compared with (geometric mean; above 1 is slower).", ""]

    lines += ["### Clément's patterns: with ranges / without ranges", ""]
    if clement["found"]:
        lines.append("| Matcher | " + " | ".join(f"{s} chars" for s in clement["sizes"]) + " | All |")
        lines.append("|---|" + "---:|" * (len(clement["sizes"]) + 1))
        for m in clement["matchers"]:
            lines.append(f'| {m["title"]} | ' + " | ".join(fmt_ratio(geomean(clement_ratios(m, s))) for s in clement["sizes"])
                         + f' | **{fmt_ratio(geomean(clement_ratios(m)))}** |')
    else:
        lines.append("No results (see `regex_clement.log`).")
    lines.append("")

    for section in sections:
        lines += [f'### {section["title"]}', ""]
        if not section["found"]:
            lines += ["No results.", ""]
            continue
        keys = [k for k, rs in section["ratios_all"].items() if rs]
        base = SERIES[section["charts"][0]["series"][0][0]]["short"]
        lines.append("| | " + " | ".join(f'{base} / {SERIES[k]["short"]}' for k in keys) + " |")
        lines.append("|---|" + "---:|" * len(keys))
        for c in section["charts"]:
            lines.append(f'| {c["title"].replace("|", chr(92) + "|")} | ' + " | ".join(fmt_ratio(geomean([r for _, r in c["ratios"].get(k, [])])) for k in keys) + " |")
        lines.append("| **All** | " + " | ".join(f'**{fmt_ratio(geomean(section["ratios_all"][k]))}**' for k in keys) + " |")
        lines.append("")
    lines += ["Coqlex is not measured by the run: its numbers are the reference results of `benchmark_results/from_coqlex`, from another machine.",
              "The charts and all the measurements are in the HTML report of the run artifacts.", ""]
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description="HTML report of the Ziplex benchmarks.")
    parser.add_argument("results_dir", type=Path, help="directory with the <group>.json files and run-info.json")
    parser.add_argument("-o", "--output", type=Path, help="HTML file to write (default: <results_dir>/benchmark-report.html)")
    parser.add_argument("--summary", type=Path, help="also write a Markdown summary to this file")
    parser.add_argument("--coqlex-dir", type=Path, default=Path(__file__).resolve().parent / "from_coqlex" / "Comparison",
                        help="Comparison directory of the Coqlex evaluation (default: from_coqlex/Comparison)")
    args = parser.parse_args()

    if not args.results_dir.is_dir():
        print(f"Not a directory: {args.results_dir}", file=sys.stderr)
        return 2
    info_path = args.results_dir / "run-info.json"
    info = json.loads(info_path.read_text()) if info_path.is_file() else {}
    clement = build_clement(args.results_dir)
    sections = build_sections(args.results_dir, args.coqlex_dir)
    missing = {g for g in JMH_GROUPS if not load_jmh(args.results_dir / f"{g}.json")}

    output = args.output or args.results_dir / "benchmark-report.html"
    output.write_text(render_html(clement, sections, info, missing), encoding="utf-8")
    print(f"Report written to {output}")
    if args.summary:
        args.summary.write_text(render_summary(clement, sections, info), encoding="utf-8")
        print(f"Summary written to {args.summary}")
    if not clement["found"] and not any(s["found"] for s in sections):
        print("No benchmark results found.", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
