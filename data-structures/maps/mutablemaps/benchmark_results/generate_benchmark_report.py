#!/usr/bin/env python3
"""Build a self-contained HTML report from the JMH JSON files written by ../run_benchmarks_ci.sh.

Usage: python3 generate_benchmark_report.py <results_dir> [-o report.html] [--summary summary.md]

<results_dir> holds one <group>.json per benchmark group (JMH `-rf json`) and run-info.json.
The report compares the verified maps with the maps of the Scala standard library: one chart per
scenario (time against the number of looked-up keys), the ratio verified / standard library, and
the tables of the measurements. `--summary` also writes a short Markdown summary (for the GitHub
job summary). Only the Python standard library is needed; a group without results is reported as
missing instead of failing, so that a partial run still gives a report.
"""

from __future__ import annotations

import argparse
import html
import json
import math
import sys
from pathlib import Path

# Series colours: the ones of resource-report.html. A colour follows the implementation, in every chart.
VERIFIED = "var(--s1)"
STDLIB = "var(--s2)"
STDLIB_IMMUTABLE = "var(--s3)"

PKG = "benchmark.maps."

# For each group: the series (first one = verified implementation, compared with each of the others) and,
# for each scenario, the benchmark method of each series.
GROUPS = [
    {
        "id": "longmap",
        "title": "LongMap, 2¹⁵ keys",
        "what": "Verified <code>MutableLongMap</code> against <code>scala.collection.mutable.LongMap</code>, maps of 2¹⁵ entries.",
        "series": [
            {"key": "verified", "label": "Verified LongMap", "short": "verified", "color": VERIFIED},
            {"key": "stdlib", "label": "mutable.LongMap", "short": "mutable.LongMap", "color": STDLIB},
        ],
        "scenarios": [
            ("lookupN", "Lookup N keys", "N lookups in a filled map",
             {"verified": "MutableLongMapBenchmark.lookupN_Verified", "stdlib": "MutableLongMapBenchmark.lookupN_Original"}),
            ("createUpdateLookup_16Buffer", "Fill, then lookup N keys · initial size 16", "2¹⁵ updates from an empty map, then N lookups",
             {"verified": "MutableLongMapBenchmark.createUpdateLookup_16Buffer_Verified", "stdlib": "MutableLongMapBenchmark.createUpdateLookup_16Buffer_Original"}),
            ("createUpdateLookup_2to17Buffer", "Fill, then lookup N keys · initial size 2¹⁷", "same, with no resizing",
             {"verified": "MutableLongMapBenchmark.createUpdateLookup_2to17Buffer_Verified", "stdlib": "MutableLongMapBenchmark.createUpdateLookup_2to17Buffer_Original"}),
            ("createUpdateRemoveUpdateLookup_16Buffer", "Fill, remove, refill, then lookup N keys", "2¹⁵ updates, 24576 removals, 2¹⁵ updates, then N lookups",
             {"verified": "MutableLongMapBenchmark.createUpdateRemoveUpdateLookup_16Buffer_Verified", "stdlib": "MutableLongMapBenchmark.createUpdateRemoveUpdateLookup_16Buffer_Original"}),
        ],
    },
    {
        "id": "longmap_big",
        "title": "LongMap, 2²² keys",
        "what": "Verified <code>MutableLongMap</code> against <code>scala.collection.mutable.LongMap</code>, maps of 2²² entries.",
        "series": [
            {"key": "verified", "label": "Verified LongMap", "short": "verified", "color": VERIFIED},
            {"key": "stdlib", "label": "mutable.LongMap", "short": "mutable.LongMap", "color": STDLIB},
        ],
        "scenarios": [
            ("lookupN", "Lookup N keys", "N lookups in a filled map",
             {"verified": "MutableLongMapBenchmarkBig.lookupN_Verified", "stdlib": "MutableLongMapBenchmarkBig.lookupN_Original"}),
            ("createUpdateLookup_16Buffer", "Fill, then lookup N keys · initial size 16", "2²² updates from an empty map, then N lookups",
             {"verified": "MutableLongMapBenchmarkBig.createUpdateLookup_16Buffer_Verified", "stdlib": "MutableLongMapBenchmarkBig.createUpdateLookup_16Buffer_Original"}),
            ("createUpdateLookup_2to17Buffer", "Fill, then lookup N keys · initial size 2²³", "same, with no resizing",
             {"verified": "MutableLongMapBenchmarkBig.createUpdateLookup_2to17Buffer_Verified", "stdlib": "MutableLongMapBenchmarkBig.createUpdateLookup_2to17Buffer_Original"}),
            ("createUpdateRemoveUpdateLookup_16Buffer", "Fill, remove, refill, then lookup N keys", "2²² updates, 2²¹ removals, 2²² updates, then N lookups",
             {"verified": "MutableLongMapBenchmarkBig.createUpdateRemoveUpdateLookup_16Buffer_Verified", "stdlib": "MutableLongMapBenchmarkBig.createUpdateRemoveUpdateLookup_16Buffer_Original"}),
        ],
    },
    {
        "id": "hashmap_big",
        "title": "HashMap, 2²² keys",
        "what": "Verified <code>MutableHashMap</code> against <code>scala.collection.mutable.HashMap</code> and <code>scala.collection.immutable.HashMap</code>, "
                "maps of 2²² entries, keys <code>Key(Long, String)</code>.",
        "series": [
            {"key": "verified", "label": "Verified HashMap", "short": "verified", "color": VERIFIED},
            {"key": "stdlib", "label": "mutable.HashMap", "short": "mutable.HashMap", "color": STDLIB},
            {"key": "immutable", "label": "immutable.HashMap", "short": "immutable.HashMap", "color": STDLIB_IMMUTABLE},
        ],
        "scenarios": [
            ("lookupN", "Lookup N keys", "N lookups in a filled map",
             {"verified": "MutableHashMapBenchmarkBig.lookupN_VerifiedHashMap", "stdlib": "MutableHashMapBenchmarkBig.lookupN_OriginalHashMap",
              "immutable": "ImmutableHashMapBenchmarkBig.lookupN_ImmutableHashMap"}),
            ("createUpdateLookup", "Fill, then lookup N keys", "2²² updates from an empty map, then N lookups",
             {"verified": "MutableHashMapBenchmarkBig.createUpdateLookup_16Buffer_VerifiedHashMap",
              "stdlib": "MutableHashMapBenchmarkBig.createUpdateLookup_16Buffer_OriginalHashMap",
              "immutable": "ImmutableHashMapBenchmarkBig.createUpdateLookup_ImmutableHashMap"}),
            ("createUpdateRemoveUpdateLookup", "Fill, remove, refill, then lookup N keys", "2²² updates, 2²¹ removals, 2²² updates, then N lookups",
             {"verified": "MutableHashMapBenchmarkBig.createUpdateRemoveUpdateLookup_16Buffer_VerifiedHashMap",
              "stdlib": "MutableHashMapBenchmarkBig.createUpdateRemoveUpdateLookup_16Buffer_OriginalHashMap",
              "immutable": "ImmutableHashMapBenchmarkBig.createUpdateRemoveUpdateLookup_ImmutableHashMap"}),
        ],
    },
]

UNIT_TO_US = {"ns/op": 1e-3, "us/op": 1.0, "ms/op": 1e3, "s/op": 1e6}


# --------------------------------------------------------------------------------------------- data

def load_results(path: Path) -> dict[str, dict[int, tuple[float, float | None]]]:
    """JMH JSON → {benchmark (without package): {nKeys: (score in µs/op, error in µs/op or None)}}."""
    out: dict[str, dict[int, tuple[float, float | None]]] = {}
    for entry in json.loads(path.read_text()):
        name = entry["benchmark"]
        if name.startswith(PKG):
            name = name[len(PKG):]
        metric = entry["primaryMetric"]
        factor = UNIT_TO_US.get(metric.get("scoreUnit", "us/op"), 1.0)
        try:
            n_keys = int(entry.get("params", {}).get("nKeys"))
            score = float(metric["score"]) * factor
        except (TypeError, ValueError):
            continue
        error = _number(metric.get("scoreError"))
        out.setdefault(name, {})[n_keys] = (score, error * factor if error is not None else None)
    return out


def _number(value) -> float | None:
    """JMH writes "NaN" (a string) for the error of a single iteration."""
    try:
        f = float(value)
    except (TypeError, ValueError):
        return None
    return f if math.isfinite(f) else None


def geomean(values: list[float]) -> float | None:
    values = [v for v in values if v > 0]
    if not values:
        return None
    return math.exp(sum(math.log(v) for v in values) / len(values))


def build(results_dir: Path) -> list[dict]:
    """Join the configuration above with the measurements found in results_dir."""
    groups = []
    for group in GROUPS:
        path = results_dir / f"{group['id']}.json"
        data = load_results(path) if path.is_file() and path.stat().st_size > 0 else {}
        base = group["series"][0]["key"]
        others = [s["key"] for s in group["series"][1:]]
        charts = []
        ratios_all: dict[str, list[float]] = {k: [] for k in others}
        for sid, title, desc, methods in group["scenarios"]:
            points = {key: sorted((n, v[0], v[1]) for n, v in data.get(method, {}).items()) for key, method in methods.items()}
            if not any(points.values()):
                continue
            ratios = {}
            for other in others:
                by_n = {n: s for n, s, _ in points.get(other, [])}
                rs = [(n, s / by_n[n]) for n, s, _ in points.get(base, []) if by_n.get(n, 0) > 0]
                ratios[other] = rs
                ratios_all[other] += [r for _, r in rs]
            charts.append({"id": sid, "title": title, "desc": desc, "points": points, "ratios": ratios})
        groups.append({**group, "charts": charts, "ratios_all": ratios_all, "found": bool(charts)})
    return groups


# --------------------------------------------------------------------------------------------- formatting

def pick_unit(max_us: float) -> tuple[str, float]:
    """Unit and the factor from µs for a chart or a table block whose largest value is max_us."""
    if max_us >= 1e6:
        return "s", 1e-6
    if max_us >= 1e3:
        return "ms", 1e-3
    if max_us >= 1:
        return "µs", 1.0
    return "ns", 1e3


def fmt(v: float) -> str:
    if v >= 100:
        return f"{v:,.0f}"
    if v >= 10:
        return f"{v:.1f}"
    if v >= 1:
        return f"{v:.2f}"
    return f"{v:.3f}"


def fmt_ratio(r: float | None) -> str:
    return "–" if r is None else f"{r:.2f}×"


def verdict(r: float | None) -> str:
    """Reading of a ratio verified / standard library."""
    if r is None:
        return "no data"
    if r >= 1.05:
        return f"{r:.2f}× slower"
    if r <= 0.95:
        return f"{1 / r:.2f}× faster"
    return "on par"


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
  --s1:#2a78d6; --s2:#eb6834; --s3:#1baf7a; --critink:#b02e2e;
  --sans:"IBM Plex Sans",system-ui,-apple-system,"Segoe UI",sans-serif; --mono:"IBM Plex Mono",ui-monospace,SFMono-Regular,Menlo,monospace;
}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]){
  --bg:#121417; --surface:#1a1d21; --fg:#eef0f2; --fg2:#b9c0c8; --muted:#8a939d; --rule:#2c3136; --grid:#24282d;
  --s1:#3987e5; --s2:#d95926; --s3:#199e70; --critink:#ef7a7a; color-scheme:dark}}
:root[data-theme="dark"]{
  --bg:#121417; --surface:#1a1d21; --fg:#eef0f2; --fg2:#b9c0c8; --muted:#8a939d; --rule:#2c3136; --grid:#24282d;
  --s1:#3987e5; --s2:#d95926; --s3:#199e70; --critink:#ef7a7a; color-scheme:dark}
*{box-sizing:border-box}
body{margin:0;background:var(--bg);color:var(--fg);font:13px/1.45 var(--sans);padding:20px 16px 28px}
main{max-width:1080px;margin:0 auto;display:grid;gap:14px}
h1{font-size:17px;font-weight:600;margin:0;text-wrap:balance}
h2{font-size:14px;font-weight:600;margin:10px 0 0}
p.what{margin:2px 0 0;color:var(--fg2);font-size:12px}
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
svg{display:block;width:100%;height:auto;overflow:visible}
svg text{font:10px var(--mono);fill:var(--muted)}
svg .lab{fill:var(--fg2)}
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
const fv=v=>v>=100?v.toFixed(0):v>=10?v.toFixed(1):v>=1?v.toFixed(2):v.toFixed(3);
const fn=n=>n>=1e6?+(n/1e6).toFixed(2)+'M':n>=1e3?+(n/1e3).toFixed(1)+'k':''+n;
function niceStep(max,count){const raw=max/count,p=10**Math.floor(Math.log10(raw)),m=raw/p;return (m<=1?1:m<=2?2:m<=5?5:10)*p;}
document.querySelectorAll('svg.plot').forEach(svg=>{
  const C=D[svg.dataset.c],W=560,H=250,L=44,R=14,T=12,B=34;
  const all=C.series.flatMap(s=>s.pts);
  if(!all.length)return;
  const xs=[...new Set(all.map(p=>p[0]))].sort((a,b)=>a-b);
  const xmax=xs[xs.length-1],xmin=xs.length>1?0:xs[0]-1;
  const ymaxRaw=Math.max(...all.map(p=>(p[1]+(p[2]||0))*C.f));
  const step=niceStep(ymaxRaw,4),ymax=Math.ceil(ymaxRaw/step)*step;
  const X=n=>xs.length>1?L+(n-xmin)/(xmax-xmin)*(W-L-R):(L+W-R)/2,Y=v=>H-B-v/ymax*(H-T-B);
  for(let v=0;v<=ymax+step/2;v+=step){el('line',{x1:L,x2:W-R,y1:Y(v),y2:Y(v),stroke:'var(--grid)'},svg);el('text',{x:L-6,y:Y(v)+3,'text-anchor':'end'},svg,+v.toPrecision(6));}
  el('text',{x:L-6,y:T-2,'text-anchor':'end',class:'lab'},svg,C.unit);
  xs.forEach((n,i)=>{el('line',{x1:X(n),x2:X(n),y1:H-B,y2:H-B+4,stroke:'var(--rule)'},svg);el('text',{x:X(n),y:H-B+15,'text-anchor':i==0&&xs.length>1?'start':i==xs.length-1&&xs.length>1?'end':'middle'},svg,fn(n));});
  el('text',{x:W-R,y:H-4,'text-anchor':'end'},svg,'N = number of looked-up keys (nKeys)');
  const cross=el('line',{y1:T,y2:H-B,stroke:'var(--muted)','stroke-dasharray':'2 3',visibility:'hidden'},svg);
  C.series.forEach(s=>{
    if(!s.pts.length)return;
    s.pts.forEach(p=>{if(p[2]){const x=X(p[0]),a=Y((p[1]+p[2])*C.f),b=Y(Math.max(0,p[1]-p[2])*C.f);
      el('path',{d:`M${x-3} ${a}H${x+3}M${x} ${a}V${b}M${x-3} ${b}H${x+3}`,stroke:s.color,'stroke-width':1,'stroke-opacity':.55,fill:'none'},svg);}});
    el('path',{d:s.pts.map((p,i)=>(i?'L':'M')+X(p[0]).toFixed(1)+' '+Y(p[1]*C.f).toFixed(1)).join(''),fill:'none',stroke:s.color,'stroke-width':2,'stroke-linejoin':'round'},svg);
    s.pts.forEach(p=>el('circle',{cx:X(p[0]),cy:Y(p[1]*C.f),r:4,fill:s.color,stroke:'var(--surface)','stroke-width':2},svg));
  });
  const hit=el('rect',{x:L-8,y:T,width:W-L-R+16,height:H-T-B,fill:'transparent'},svg);
  hit.addEventListener('mousemove',ev=>{
    const r=svg.getBoundingClientRect(),px=(ev.clientX-r.left)/r.width*W;
    const n=xs.reduce((a,b)=>Math.abs(X(b)-px)<Math.abs(X(a)-px)?b:a);
    cross.setAttribute('x1',X(n));cross.setAttribute('x2',X(n));cross.setAttribute('visibility','visible');
    const base=C.series[0].pts.find(p=>p[0]==n);
    let h=`N = ${n.toLocaleString('en-US')}`;
    C.series.forEach((s,i)=>{const p=s.pts.find(q=>q[0]==n);if(!p)return;
      h+=`<br><i style="background:${s.color}"></i>${s.label} <b>${fv(p[1]*C.f)} ${C.unit}</b>`+(p[2]?` ± ${fv(p[2]*C.f)}`:'')+(i&&base?` · verified is ${(base[1]/p[1]).toFixed(2)}×`:'');});
    const f=svg.closest('figure'),fr=f.getBoundingClientRect();tip.innerHTML=h;tip.hidden=false;f.appendChild(tip);
    let x=ev.clientX-fr.left+14;if(x+tip.offsetWidth>fr.width-4)x=ev.clientX-fr.left-tip.offsetWidth-14;
    tip.style.left=Math.max(4,x)+'px';tip.style.top=Math.max(4,ev.clientY-fr.top-tip.offsetHeight-8)+'px';
  });
  hit.addEventListener('mouseleave',()=>{tip.hidden=true;cross.setAttribute('visibility','hidden');});
});
"""


def render_html(groups: list[dict], info: dict) -> str:
    chart_data = {}
    body = []

    # Headline: geometric mean of verified / standard library over every scenario and size of the group
    tiles = []
    for g in groups:
        for s in g["series"][1:]:
            rs = g["ratios_all"].get(s["key"], [])
            gm = geomean(rs)
            rng = f"range {min(rs):.2f}–{max(rs):.2f}× over {len(rs)} points" if rs else "no data"
            tiles.append(f'<div><div class="k">{esc(g["title"])} · vs {esc(s["short"])}</div><b>{esc(verdict(gm))}</b><span>{esc(rng)}</span></div>')
    body.append(f'<div class="verdict">{"".join(tiles)}</div>')

    for g in groups:
        body.append(f'<section><h2>{esc(g["title"])}</h2><p class="what">{g["what"]}</p></section>')
        if not g["found"]:
            body.append(f'<div class="missing">No results for this group (<code>{esc(g["id"])}.json</code> is missing or empty): '
                        f'see <code>{esc(g["id"])}.log</code>.</div>')
            continue
        legend = "".join(f'<span><i style="background:{s["color"]}"></i>{esc(s["label"])}</span>' for s in g["series"])
        figures = []
        rows = []
        for c in g["charts"]:
            cid = f'{g["id"]}.{c["id"]}'
            max_us = max((s for pts in c["points"].values() for _, s, _ in pts), default=1.0)
            unit, factor = pick_unit(max_us)
            chart_data[cid] = {
                "unit": unit, "f": factor,
                "series": [{"label": s["label"], "color": s["color"],
                            "pts": [[n, sc, er] for n, sc, er in c["points"].get(s["key"], [])]} for s in g["series"]],
            }
            ratio_text = " · ".join(
                f'{esc(verdict(geomean([r for _, r in c["ratios"].get(s["key"], [])])))} than {esc(s["short"])}'.replace("on par than", "on par with")
                for s in g["series"][1:])
            figures.append(
                f'<figure><figcaption><strong>{esc(c["title"])}</strong><span class="legend">{legend}</span>'
                f'<small>{esc(c["desc"])}</small></figcaption>'
                f'<svg class="plot" data-c="{esc(cid)}" viewBox="0 0 560 250" role="img" '
                f'aria-label="{esc(c["title"])}: time against the number of looked-up keys"></svg>'
                f'<div class="ratio">Verified: {ratio_text} (geometric mean over the sizes)</div></figure>')

            # Table block of the scenario
            ncols = 1 + len(g["series"]) + len(g["series"]) - 1
            rows.append(f'<tr class="ph"><td colspan="{ncols}">{esc(c["title"])} · {unit}/op</td></tr>')
            sizes = sorted({n for pts in c["points"].values() for n, _, _ in pts})
            for n in sizes:
                cells = [f'<td class="n">{n:,}</td>']
                for s in g["series"]:
                    p = next(((sc, er) for m, sc, er in c["points"].get(s["key"], []) if m == n), None)
                    if p is None:
                        cells.append('<td class="n">–</td>')
                    else:
                        err = f' <span class="e">± {fmt(p[1] * factor)}</span>' if p[1] is not None else ""
                        cells.append(f'<td class="n">{fmt(p[0] * factor)}{err}</td>')
                for s in g["series"][1:]:
                    r = next((r for m, r in c["ratios"].get(s["key"], []) if m == n), None)
                    cells.append(f'<td class="n">{fmt_ratio(r)}</td>')
                rows.append(f'<tr>{"".join(cells)}</tr>')
        head = ('<th class="n">N (nKeys)</th>' + "".join(f'<th class="n">{esc(s["label"])}</th>' for s in g["series"])
                + "".join(f'<th class="n">verified / {esc(s["short"])}</th>' for s in g["series"][1:]))
        body.append(f'<div class="charts">{"".join(figures)}</div>')
        body.append(f'<details><summary>Measurements · {esc(g["title"])}</summary><div class="tbl"><table><thead><tr>{head}</tr></thead>'
                    f'<tbody>{"".join(rows)}</tbody></table></div></details>')

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
    ]
    jmh = ""
    if "iterations" in info:
        jmh = (f'<li><b>JMH.</b> Average time per operation, 1 fork, 1 thread, {esc(info.get("warmup_iterations"))} warmup iterations of '
               f'{esc(info.get("warmup_time"))}, {esc(info.get("iterations"))} measurement iterations of {esc(info.get("iteration_time"))}, '
               f'heap {esc(info.get("fork_heap"))}. An iteration lasts at least one operation, however long.</li>')
    durations = " · ".join(f'{esc(x.get("name"))} {fmt_duration(x.get("seconds"))}' + ("" if x.get("status") == "ok" else " (failed)")
                           for x in info.get("groups", []))
    notes = (
        '<ul class="notes">'
        '<li><b>Reading.</b> Lower is better. The ratio is the time of the verified map divided by the time of the standard library map, '
        'at the same size: above 1 the verified map is slower.</li>'
        f'{jmh}'
        '<li><b>Error bars.</b> The 99.9% confidence interval that JMH computes over the measurement iterations of the single fork. '
        'With few iterations it is wide, and it says nothing about the variation between JVM runs.</li>'
        '<li><b>Sizes.</b> A subset of the <code>@Param</code> values of the benchmark classes (JMH <code>-p nKeys=…</code>), to fit a CI job. '
        'N only changes the number of lookups; the maps always hold 2¹⁵ or 2²² entries.</li>'
        + (f'<li><b>Duration.</b> {durations}.</li>' if durations else "")
        + '</ul>')

    return (
        '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">\n'
        '<title>mutablemaps benchmarks</title>\n'
        '<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500&family=IBM+Plex+Sans:wght@400;500;600&display=swap">\n'
        f'<style>{CSS}</style></head>\n<body><main>\n'
        '<header><h1>data-structures/maps/mutablemaps — verified maps against the Scala standard library</h1>'
        f'<div class="meta">{esc(" · ".join(x for x in meta if x))}<br>{esc(" · ".join(str(x) for x in machine if x))}</div></header>\n'
        + "\n".join(body) + "\n" + notes +
        '\n</main>\n<div class="tip" id="tip" hidden></div>\n'
        f'<script>const D={json.dumps(chart_data, separators=(",", ":")).replace("</", "<\\/")};{JS}</script>\n</body></html>\n')


# --------------------------------------------------------------------------------------------- Markdown

def render_summary(groups: list[dict], info: dict) -> str:
    lines = ["## mutablemaps benchmarks", ""]
    if info:
        lines += [f'{info.get("profile", "?")} profile · commit `{info.get("commit", "?")}` · total {fmt_duration(info.get("total_seconds"))} · '
                  f'{info.get("cpu", "")} · {info.get("java", "")}', ""]
    lines += ["Time of the verified map divided by the time of the standard library map (geometric mean over the sizes; above 1 the verified map is slower).", ""]
    for g in groups:
        lines += [f'### {g["title"]}', ""]
        if not g["found"]:
            lines += [f'No results (see `{g["id"]}.log`).', ""]
            continue
        others = g["series"][1:]
        lines.append("| Scenario | " + " | ".join(f'vs {s["short"]}' for s in others) + " |")
        lines.append("|---|" + "---:|" * len(others))
        for c in g["charts"]:
            lines.append(f'| {c["title"]} | ' + " | ".join(fmt_ratio(geomean([r for _, r in c["ratios"].get(s["key"], [])])) for s in others) + " |")
        lines.append("| **All** | " + " | ".join(f'**{fmt_ratio(geomean(g["ratios_all"].get(s["key"], [])))}**' for s in others) + " |")
        lines.append("")
    lines += ["The charts and all the measurements are in the HTML report of the run artifacts.", ""]
    return "\n".join(lines)


def main() -> int:
    parser = argparse.ArgumentParser(description="HTML report of the mutablemaps JMH benchmarks.")
    parser.add_argument("results_dir", type=Path, help="directory with the <group>.json files and run-info.json")
    parser.add_argument("-o", "--output", type=Path, help="HTML file to write (default: <results_dir>/benchmark-report.html)")
    parser.add_argument("--summary", type=Path, help="also write a Markdown summary to this file")
    args = parser.parse_args()

    if not args.results_dir.is_dir():
        print(f"Not a directory: {args.results_dir}", file=sys.stderr)
        return 2
    info_path = args.results_dir / "run-info.json"
    info = json.loads(info_path.read_text()) if info_path.is_file() else {}
    groups = build(args.results_dir)

    output = args.output or args.results_dir / "benchmark-report.html"
    output.write_text(render_html(groups, info), encoding="utf-8")
    print(f"Report written to {output}")
    if args.summary:
        args.summary.write_text(render_summary(groups, info), encoding="utf-8")
        print(f"Summary written to {args.summary}")
    if not any(g["found"] for g in groups):
        print("No benchmark results found.", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
