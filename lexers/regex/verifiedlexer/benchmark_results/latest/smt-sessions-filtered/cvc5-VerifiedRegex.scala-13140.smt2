; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717846 () Bool)

(assert start!717846)

(declare-fun b!7350982 () Bool)

(declare-fun e!4401468 () Bool)

(declare-fun e!4401467 () Bool)

(assert (=> b!7350982 (= e!4401468 e!4401467)))

(declare-fun res!2968637 () Bool)

(assert (=> b!7350982 (=> (not res!2968637) (not e!4401467))))

(declare-datatypes ((C!38610 0))(
  ( (C!38611 (val!29665 Int)) )
))
(declare-datatypes ((Regex!19168 0))(
  ( (ElementMatch!19168 (c!1365688 C!38610)) (Concat!28013 (regOne!38848 Regex!19168) (regTwo!38848 Regex!19168)) (EmptyExpr!19168) (Star!19168 (reg!19497 Regex!19168)) (EmptyLang!19168) (Union!19168 (regOne!38849 Regex!19168) (regTwo!38849 Regex!19168)) )
))
(declare-fun r1!2370 () Regex!19168)

(declare-fun c!10362 () C!38610)

(declare-datatypes ((List!71664 0))(
  ( (Nil!71540) (Cons!71540 (h!77988 Regex!19168) (t!386083 List!71664)) )
))
(declare-datatypes ((Context!16216 0))(
  ( (Context!16217 (exprs!8608 List!71664)) )
))
(declare-fun lt!2612181 () Context!16216)

(declare-fun lt!2612180 () (Set Context!16216))

(declare-fun derivationStepZipperDown!2994 (Regex!19168 Context!16216 C!38610) (Set Context!16216))

(assert (=> b!7350982 (= res!2968637 (= lt!2612180 (derivationStepZipperDown!2994 (regOne!38848 r1!2370) lt!2612181 c!10362)))))

(declare-fun lt!2612178 () List!71664)

(assert (=> b!7350982 (= lt!2612181 (Context!16217 lt!2612178))))

(declare-fun ct1!282 () Context!16216)

(declare-fun $colon$colon!3166 (List!71664 Regex!19168) List!71664)

(assert (=> b!7350982 (= lt!2612178 ($colon$colon!3166 (exprs!8608 ct1!282) (regTwo!38848 r1!2370)))))

(declare-fun b!7350983 () Bool)

(declare-fun e!4401466 () Bool)

(declare-fun tp!2087905 () Bool)

(declare-fun tp!2087902 () Bool)

(assert (=> b!7350983 (= e!4401466 (and tp!2087905 tp!2087902))))

(declare-fun b!7350984 () Bool)

(declare-fun e!4401469 () Bool)

(declare-fun tp!2087909 () Bool)

(assert (=> b!7350984 (= e!4401469 tp!2087909)))

(declare-fun b!7350985 () Bool)

(declare-fun tp_is_empty!48581 () Bool)

(assert (=> b!7350985 (= e!4401466 tp_is_empty!48581)))

(declare-fun b!7350986 () Bool)

(declare-fun e!4401461 () Bool)

(declare-fun e!4401462 () Bool)

(assert (=> b!7350986 (= e!4401461 e!4401462)))

(declare-fun res!2968631 () Bool)

(assert (=> b!7350986 (=> (not res!2968631) (not e!4401462))))

(declare-fun cWitness!61 () Context!16216)

(assert (=> b!7350986 (= res!2968631 (set.member cWitness!61 lt!2612180))))

(assert (=> b!7350986 (= lt!2612180 (derivationStepZipperDown!2994 r1!2370 ct1!282 c!10362))))

(declare-fun b!7350987 () Bool)

(declare-fun e!4401465 () Bool)

(declare-fun nullable!8259 (Regex!19168) Bool)

(assert (=> b!7350987 (= e!4401465 (not (nullable!8259 (regOne!38848 r1!2370))))))

(declare-fun b!7350988 () Bool)

(declare-fun lambda!456552 () Int)

(declare-fun forall!17990 (List!71664 Int) Bool)

(assert (=> b!7350988 (= e!4401467 (not (forall!17990 (exprs!8608 cWitness!61) lambda!456552)))))

(declare-fun ct2!378 () Context!16216)

(declare-fun ++!16986 (List!71664 List!71664) List!71664)

(assert (=> b!7350988 (set.member (Context!16217 (++!16986 (exprs!8608 cWitness!61) (exprs!8608 ct2!378))) (derivationStepZipperDown!2994 (regOne!38848 r1!2370) (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165289 0))(
  ( (Unit!165290) )
))
(declare-fun lt!2612175 () Unit!165289)

(declare-fun lemmaConcatPreservesForall!1843 (List!71664 List!71664 Int) Unit!165289)

(assert (=> b!7350988 (= lt!2612175 (lemmaConcatPreservesForall!1843 lt!2612178 (exprs!8608 ct2!378) lambda!456552))))

(declare-fun lt!2612177 () Unit!165289)

(assert (=> b!7350988 (= lt!2612177 (lemmaConcatPreservesForall!1843 (exprs!8608 cWitness!61) (exprs!8608 ct2!378) lambda!456552))))

(declare-fun lt!2612179 () Unit!165289)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!89 (Regex!19168 Context!16216 Context!16216 Context!16216 C!38610) Unit!165289)

(assert (=> b!7350988 (= lt!2612179 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!89 (regOne!38848 r1!2370) lt!2612181 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7350989 () Bool)

(declare-fun e!4401464 () Bool)

(declare-fun tp!2087908 () Bool)

(assert (=> b!7350989 (= e!4401464 tp!2087908)))

(declare-fun b!7350990 () Bool)

(declare-fun res!2968633 () Bool)

(assert (=> b!7350990 (=> (not res!2968633) (not e!4401468))))

(assert (=> b!7350990 (= res!2968633 e!4401465)))

(declare-fun res!2968638 () Bool)

(assert (=> b!7350990 (=> res!2968638 e!4401465)))

(assert (=> b!7350990 (= res!2968638 (not (is-Concat!28013 r1!2370)))))

(declare-fun b!7350991 () Bool)

(declare-fun tp!2087906 () Bool)

(declare-fun tp!2087903 () Bool)

(assert (=> b!7350991 (= e!4401466 (and tp!2087906 tp!2087903))))

(declare-fun b!7350993 () Bool)

(declare-fun e!4401463 () Bool)

(declare-fun tp!2087907 () Bool)

(assert (=> b!7350993 (= e!4401463 tp!2087907)))

(declare-fun b!7350994 () Bool)

(declare-fun res!2968632 () Bool)

(assert (=> b!7350994 (=> (not res!2968632) (not e!4401468))))

(declare-fun validRegex!9764 (Regex!19168) Bool)

(assert (=> b!7350994 (= res!2968632 (validRegex!9764 (regTwo!38848 r1!2370)))))

(declare-fun b!7350995 () Bool)

(declare-fun res!2968635 () Bool)

(assert (=> b!7350995 (=> (not res!2968635) (not e!4401468))))

(assert (=> b!7350995 (= res!2968635 (is-Concat!28013 r1!2370))))

(declare-fun b!7350996 () Bool)

(assert (=> b!7350996 (= e!4401462 e!4401468)))

(declare-fun res!2968634 () Bool)

(assert (=> b!7350996 (=> (not res!2968634) (not e!4401468))))

(assert (=> b!7350996 (= res!2968634 (and (or (not (is-ElementMatch!19168 r1!2370)) (not (= c!10362 (c!1365688 r1!2370)))) (not (is-Union!19168 r1!2370))))))

(declare-fun lt!2612174 () (Set Context!16216))

(assert (=> b!7350996 (= lt!2612174 (derivationStepZipperDown!2994 r1!2370 (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378))) c!10362))))

(declare-fun lt!2612176 () Unit!165289)

(assert (=> b!7350996 (= lt!2612176 (lemmaConcatPreservesForall!1843 (exprs!8608 ct1!282) (exprs!8608 ct2!378) lambda!456552))))

(declare-fun b!7350992 () Bool)

(declare-fun tp!2087904 () Bool)

(assert (=> b!7350992 (= e!4401466 tp!2087904)))

(declare-fun res!2968636 () Bool)

(assert (=> start!717846 (=> (not res!2968636) (not e!4401461))))

(assert (=> start!717846 (= res!2968636 (validRegex!9764 r1!2370))))

(assert (=> start!717846 e!4401461))

(assert (=> start!717846 tp_is_empty!48581))

(declare-fun inv!91261 (Context!16216) Bool)

(assert (=> start!717846 (and (inv!91261 cWitness!61) e!4401464)))

(assert (=> start!717846 (and (inv!91261 ct1!282) e!4401463)))

(assert (=> start!717846 e!4401466))

(assert (=> start!717846 (and (inv!91261 ct2!378) e!4401469)))

(assert (= (and start!717846 res!2968636) b!7350986))

(assert (= (and b!7350986 res!2968631) b!7350996))

(assert (= (and b!7350996 res!2968634) b!7350990))

(assert (= (and b!7350990 (not res!2968638)) b!7350987))

(assert (= (and b!7350990 res!2968633) b!7350995))

(assert (= (and b!7350995 res!2968635) b!7350994))

(assert (= (and b!7350994 res!2968632) b!7350982))

(assert (= (and b!7350982 res!2968637) b!7350988))

(assert (= start!717846 b!7350989))

(assert (= start!717846 b!7350993))

(assert (= (and start!717846 (is-ElementMatch!19168 r1!2370)) b!7350985))

(assert (= (and start!717846 (is-Concat!28013 r1!2370)) b!7350991))

(assert (= (and start!717846 (is-Star!19168 r1!2370)) b!7350992))

(assert (= (and start!717846 (is-Union!19168 r1!2370)) b!7350983))

(assert (= start!717846 b!7350984))

(declare-fun m!8012010 () Bool)

(assert (=> b!7350987 m!8012010))

(declare-fun m!8012012 () Bool)

(assert (=> b!7350996 m!8012012))

(declare-fun m!8012014 () Bool)

(assert (=> b!7350996 m!8012014))

(declare-fun m!8012016 () Bool)

(assert (=> b!7350996 m!8012016))

(declare-fun m!8012018 () Bool)

(assert (=> b!7350994 m!8012018))

(declare-fun m!8012020 () Bool)

(assert (=> b!7350982 m!8012020))

(declare-fun m!8012022 () Bool)

(assert (=> b!7350982 m!8012022))

(declare-fun m!8012024 () Bool)

(assert (=> b!7350988 m!8012024))

(declare-fun m!8012026 () Bool)

(assert (=> b!7350988 m!8012026))

(declare-fun m!8012028 () Bool)

(assert (=> b!7350988 m!8012028))

(declare-fun m!8012030 () Bool)

(assert (=> b!7350988 m!8012030))

(declare-fun m!8012032 () Bool)

(assert (=> b!7350988 m!8012032))

(declare-fun m!8012034 () Bool)

(assert (=> b!7350988 m!8012034))

(declare-fun m!8012036 () Bool)

(assert (=> b!7350988 m!8012036))

(declare-fun m!8012038 () Bool)

(assert (=> b!7350988 m!8012038))

(declare-fun m!8012040 () Bool)

(assert (=> b!7350986 m!8012040))

(declare-fun m!8012042 () Bool)

(assert (=> b!7350986 m!8012042))

(declare-fun m!8012044 () Bool)

(assert (=> start!717846 m!8012044))

(declare-fun m!8012046 () Bool)

(assert (=> start!717846 m!8012046))

(declare-fun m!8012048 () Bool)

(assert (=> start!717846 m!8012048))

(declare-fun m!8012050 () Bool)

(assert (=> start!717846 m!8012050))

(push 1)

(assert (not b!7350986))

(assert (not b!7350993))

(assert (not b!7350994))

(assert (not b!7350996))

(assert (not b!7350987))

(assert (not start!717846))

(assert (not b!7350984))

(assert (not b!7350992))

(assert (not b!7350982))

(assert (not b!7350989))

(assert (not b!7350983))

(assert (not b!7350991))

(assert (not b!7350988))

(assert tp_is_empty!48581)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7351087 () Bool)

(declare-fun e!4401525 () (Set Context!16216))

(declare-fun call!672407 () (Set Context!16216))

(assert (=> b!7351087 (= e!4401525 call!672407)))

(declare-fun b!7351088 () Bool)

(declare-fun e!4401521 () (Set Context!16216))

(assert (=> b!7351088 (= e!4401521 (as set.empty (Set Context!16216)))))

(declare-fun bm!672397 () Bool)

(declare-fun call!672404 () (Set Context!16216))

(assert (=> bm!672397 (= call!672407 call!672404)))

(declare-fun b!7351089 () Bool)

(declare-fun e!4401524 () (Set Context!16216))

(assert (=> b!7351089 (= e!4401524 (set.insert lt!2612181 (as set.empty (Set Context!16216))))))

(declare-fun bm!672398 () Bool)

(declare-fun c!1365710 () Bool)

(declare-fun call!672406 () (Set Context!16216))

(declare-fun c!1365713 () Bool)

(declare-fun c!1365712 () Bool)

(declare-fun call!672403 () List!71664)

(assert (=> bm!672398 (= call!672406 (derivationStepZipperDown!2994 (ite c!1365712 (regOne!38849 (regOne!38848 r1!2370)) (ite c!1365710 (regTwo!38848 (regOne!38848 r1!2370)) (ite c!1365713 (regOne!38848 (regOne!38848 r1!2370)) (reg!19497 (regOne!38848 r1!2370))))) (ite (or c!1365712 c!1365710) lt!2612181 (Context!16217 call!672403)) c!10362))))

(declare-fun bm!672399 () Bool)

(assert (=> bm!672399 (= call!672404 call!672406)))

(declare-fun b!7351090 () Bool)

(declare-fun e!4401522 () (Set Context!16216))

(assert (=> b!7351090 (= e!4401524 e!4401522)))

(assert (=> b!7351090 (= c!1365712 (is-Union!19168 (regOne!38848 r1!2370)))))

(declare-fun b!7351091 () Bool)

(declare-fun call!672405 () (Set Context!16216))

(assert (=> b!7351091 (= e!4401522 (set.union call!672406 call!672405))))

(declare-fun b!7351086 () Bool)

(assert (=> b!7351086 (= e!4401521 call!672407)))

(declare-fun d!2280521 () Bool)

(declare-fun c!1365714 () Bool)

(assert (=> d!2280521 (= c!1365714 (and (is-ElementMatch!19168 (regOne!38848 r1!2370)) (= (c!1365688 (regOne!38848 r1!2370)) c!10362)))))

(assert (=> d!2280521 (= (derivationStepZipperDown!2994 (regOne!38848 r1!2370) lt!2612181 c!10362) e!4401524)))

(declare-fun b!7351092 () Bool)

(declare-fun e!4401523 () Bool)

(assert (=> b!7351092 (= c!1365710 e!4401523)))

(declare-fun res!2968667 () Bool)

(assert (=> b!7351092 (=> (not res!2968667) (not e!4401523))))

(assert (=> b!7351092 (= res!2968667 (is-Concat!28013 (regOne!38848 r1!2370)))))

(declare-fun e!4401526 () (Set Context!16216))

(assert (=> b!7351092 (= e!4401522 e!4401526)))

(declare-fun call!672402 () List!71664)

(declare-fun bm!672400 () Bool)

(assert (=> bm!672400 (= call!672405 (derivationStepZipperDown!2994 (ite c!1365712 (regTwo!38849 (regOne!38848 r1!2370)) (regOne!38848 (regOne!38848 r1!2370))) (ite c!1365712 lt!2612181 (Context!16217 call!672402)) c!10362))))

(declare-fun bm!672401 () Bool)

(assert (=> bm!672401 (= call!672403 call!672402)))

(declare-fun bm!672402 () Bool)

(assert (=> bm!672402 (= call!672402 ($colon$colon!3166 (exprs!8608 lt!2612181) (ite (or c!1365710 c!1365713) (regTwo!38848 (regOne!38848 r1!2370)) (regOne!38848 r1!2370))))))

(declare-fun b!7351093 () Bool)

(assert (=> b!7351093 (= e!4401523 (nullable!8259 (regOne!38848 (regOne!38848 r1!2370))))))

(declare-fun b!7351094 () Bool)

(assert (=> b!7351094 (= e!4401526 (set.union call!672405 call!672404))))

(declare-fun b!7351095 () Bool)

(declare-fun c!1365711 () Bool)

(assert (=> b!7351095 (= c!1365711 (is-Star!19168 (regOne!38848 r1!2370)))))

(assert (=> b!7351095 (= e!4401525 e!4401521)))

(declare-fun b!7351096 () Bool)

(assert (=> b!7351096 (= e!4401526 e!4401525)))

(assert (=> b!7351096 (= c!1365713 (is-Concat!28013 (regOne!38848 r1!2370)))))

(assert (= (and d!2280521 c!1365714) b!7351089))

(assert (= (and d!2280521 (not c!1365714)) b!7351090))

(assert (= (and b!7351090 c!1365712) b!7351091))

(assert (= (and b!7351090 (not c!1365712)) b!7351092))

(assert (= (and b!7351092 res!2968667) b!7351093))

(assert (= (and b!7351092 c!1365710) b!7351094))

(assert (= (and b!7351092 (not c!1365710)) b!7351096))

(assert (= (and b!7351096 c!1365713) b!7351087))

(assert (= (and b!7351096 (not c!1365713)) b!7351095))

(assert (= (and b!7351095 c!1365711) b!7351086))

(assert (= (and b!7351095 (not c!1365711)) b!7351088))

(assert (= (or b!7351087 b!7351086) bm!672401))

(assert (= (or b!7351087 b!7351086) bm!672397))

(assert (= (or b!7351094 bm!672397) bm!672399))

(assert (= (or b!7351094 bm!672401) bm!672402))

(assert (= (or b!7351091 b!7351094) bm!672400))

(assert (= (or b!7351091 bm!672399) bm!672398))

(declare-fun m!8012094 () Bool)

(assert (=> bm!672398 m!8012094))

(declare-fun m!8012096 () Bool)

(assert (=> b!7351093 m!8012096))

(declare-fun m!8012098 () Bool)

(assert (=> bm!672402 m!8012098))

(declare-fun m!8012100 () Bool)

(assert (=> b!7351089 m!8012100))

(declare-fun m!8012102 () Bool)

(assert (=> bm!672400 m!8012102))

(assert (=> b!7350982 d!2280521))

(declare-fun d!2280523 () Bool)

(assert (=> d!2280523 (= ($colon$colon!3166 (exprs!8608 ct1!282) (regTwo!38848 r1!2370)) (Cons!71540 (regTwo!38848 r1!2370) (exprs!8608 ct1!282)))))

(assert (=> b!7350982 d!2280523))

(declare-fun d!2280525 () Bool)

(declare-fun nullableFct!3294 (Regex!19168) Bool)

(assert (=> d!2280525 (= (nullable!8259 (regOne!38848 r1!2370)) (nullableFct!3294 (regOne!38848 r1!2370)))))

(declare-fun bs!1919290 () Bool)

(assert (= bs!1919290 d!2280525))

(declare-fun m!8012104 () Bool)

(assert (=> bs!1919290 m!8012104))

(assert (=> b!7350987 d!2280525))

(declare-fun b!7351098 () Bool)

(declare-fun e!4401531 () (Set Context!16216))

(declare-fun call!672413 () (Set Context!16216))

(assert (=> b!7351098 (= e!4401531 call!672413)))

(declare-fun b!7351099 () Bool)

(declare-fun e!4401527 () (Set Context!16216))

(assert (=> b!7351099 (= e!4401527 (as set.empty (Set Context!16216)))))

(declare-fun bm!672403 () Bool)

(declare-fun call!672410 () (Set Context!16216))

(assert (=> bm!672403 (= call!672413 call!672410)))

(declare-fun b!7351100 () Bool)

(declare-fun e!4401530 () (Set Context!16216))

(assert (=> b!7351100 (= e!4401530 (set.insert (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378))) (as set.empty (Set Context!16216))))))

(declare-fun call!672412 () (Set Context!16216))

(declare-fun c!1365717 () Bool)

(declare-fun call!672409 () List!71664)

(declare-fun c!1365718 () Bool)

(declare-fun c!1365715 () Bool)

(declare-fun bm!672404 () Bool)

(assert (=> bm!672404 (= call!672412 (derivationStepZipperDown!2994 (ite c!1365717 (regOne!38849 r1!2370) (ite c!1365715 (regTwo!38848 r1!2370) (ite c!1365718 (regOne!38848 r1!2370) (reg!19497 r1!2370)))) (ite (or c!1365717 c!1365715) (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378))) (Context!16217 call!672409)) c!10362))))

(declare-fun bm!672405 () Bool)

(assert (=> bm!672405 (= call!672410 call!672412)))

(declare-fun b!7351101 () Bool)

(declare-fun e!4401528 () (Set Context!16216))

(assert (=> b!7351101 (= e!4401530 e!4401528)))

(assert (=> b!7351101 (= c!1365717 (is-Union!19168 r1!2370))))

(declare-fun b!7351102 () Bool)

(declare-fun call!672411 () (Set Context!16216))

(assert (=> b!7351102 (= e!4401528 (set.union call!672412 call!672411))))

(declare-fun b!7351097 () Bool)

(assert (=> b!7351097 (= e!4401527 call!672413)))

(declare-fun d!2280527 () Bool)

(declare-fun c!1365719 () Bool)

(assert (=> d!2280527 (= c!1365719 (and (is-ElementMatch!19168 r1!2370) (= (c!1365688 r1!2370) c!10362)))))

(assert (=> d!2280527 (= (derivationStepZipperDown!2994 r1!2370 (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378))) c!10362) e!4401530)))

(declare-fun b!7351103 () Bool)

(declare-fun e!4401529 () Bool)

(assert (=> b!7351103 (= c!1365715 e!4401529)))

(declare-fun res!2968668 () Bool)

(assert (=> b!7351103 (=> (not res!2968668) (not e!4401529))))

(assert (=> b!7351103 (= res!2968668 (is-Concat!28013 r1!2370))))

(declare-fun e!4401532 () (Set Context!16216))

(assert (=> b!7351103 (= e!4401528 e!4401532)))

(declare-fun bm!672406 () Bool)

(declare-fun call!672408 () List!71664)

(assert (=> bm!672406 (= call!672411 (derivationStepZipperDown!2994 (ite c!1365717 (regTwo!38849 r1!2370) (regOne!38848 r1!2370)) (ite c!1365717 (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378))) (Context!16217 call!672408)) c!10362))))

(declare-fun bm!672407 () Bool)

(assert (=> bm!672407 (= call!672409 call!672408)))

(declare-fun bm!672408 () Bool)

(assert (=> bm!672408 (= call!672408 ($colon$colon!3166 (exprs!8608 (Context!16217 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378)))) (ite (or c!1365715 c!1365718) (regTwo!38848 r1!2370) r1!2370)))))

(declare-fun b!7351104 () Bool)

(assert (=> b!7351104 (= e!4401529 (nullable!8259 (regOne!38848 r1!2370)))))

(declare-fun b!7351105 () Bool)

(assert (=> b!7351105 (= e!4401532 (set.union call!672411 call!672410))))

(declare-fun b!7351106 () Bool)

(declare-fun c!1365716 () Bool)

(assert (=> b!7351106 (= c!1365716 (is-Star!19168 r1!2370))))

(assert (=> b!7351106 (= e!4401531 e!4401527)))

(declare-fun b!7351107 () Bool)

(assert (=> b!7351107 (= e!4401532 e!4401531)))

(assert (=> b!7351107 (= c!1365718 (is-Concat!28013 r1!2370))))

(assert (= (and d!2280527 c!1365719) b!7351100))

(assert (= (and d!2280527 (not c!1365719)) b!7351101))

(assert (= (and b!7351101 c!1365717) b!7351102))

(assert (= (and b!7351101 (not c!1365717)) b!7351103))

(assert (= (and b!7351103 res!2968668) b!7351104))

(assert (= (and b!7351103 c!1365715) b!7351105))

(assert (= (and b!7351103 (not c!1365715)) b!7351107))

(assert (= (and b!7351107 c!1365718) b!7351098))

(assert (= (and b!7351107 (not c!1365718)) b!7351106))

(assert (= (and b!7351106 c!1365716) b!7351097))

(assert (= (and b!7351106 (not c!1365716)) b!7351099))

(assert (= (or b!7351098 b!7351097) bm!672407))

(assert (= (or b!7351098 b!7351097) bm!672403))

(assert (= (or b!7351105 bm!672403) bm!672405))

(assert (= (or b!7351105 bm!672407) bm!672408))

(assert (= (or b!7351102 b!7351105) bm!672406))

(assert (= (or b!7351102 bm!672405) bm!672404))

(declare-fun m!8012106 () Bool)

(assert (=> bm!672404 m!8012106))

(assert (=> b!7351104 m!8012010))

(declare-fun m!8012108 () Bool)

(assert (=> bm!672408 m!8012108))

(declare-fun m!8012110 () Bool)

(assert (=> b!7351100 m!8012110))

(declare-fun m!8012112 () Bool)

(assert (=> bm!672406 m!8012112))

(assert (=> b!7350996 d!2280527))

(declare-fun b!7351129 () Bool)

(declare-fun res!2968674 () Bool)

(declare-fun e!4401544 () Bool)

(assert (=> b!7351129 (=> (not res!2968674) (not e!4401544))))

(declare-fun lt!2612208 () List!71664)

(declare-fun size!42053 (List!71664) Int)

(assert (=> b!7351129 (= res!2968674 (= (size!42053 lt!2612208) (+ (size!42053 (exprs!8608 ct1!282)) (size!42053 (exprs!8608 ct2!378)))))))

(declare-fun b!7351127 () Bool)

(declare-fun e!4401543 () List!71664)

(assert (=> b!7351127 (= e!4401543 (exprs!8608 ct2!378))))

(declare-fun b!7351130 () Bool)

(assert (=> b!7351130 (= e!4401544 (or (not (= (exprs!8608 ct2!378) Nil!71540)) (= lt!2612208 (exprs!8608 ct1!282))))))

(declare-fun b!7351128 () Bool)

(assert (=> b!7351128 (= e!4401543 (Cons!71540 (h!77988 (exprs!8608 ct1!282)) (++!16986 (t!386083 (exprs!8608 ct1!282)) (exprs!8608 ct2!378))))))

(declare-fun d!2280529 () Bool)

(assert (=> d!2280529 e!4401544))

(declare-fun res!2968675 () Bool)

(assert (=> d!2280529 (=> (not res!2968675) (not e!4401544))))

(declare-fun content!15074 (List!71664) (Set Regex!19168))

(assert (=> d!2280529 (= res!2968675 (= (content!15074 lt!2612208) (set.union (content!15074 (exprs!8608 ct1!282)) (content!15074 (exprs!8608 ct2!378)))))))

(assert (=> d!2280529 (= lt!2612208 e!4401543)))

(declare-fun c!1365727 () Bool)

(assert (=> d!2280529 (= c!1365727 (is-Nil!71540 (exprs!8608 ct1!282)))))

(assert (=> d!2280529 (= (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378)) lt!2612208)))

(assert (= (and d!2280529 c!1365727) b!7351127))

(assert (= (and d!2280529 (not c!1365727)) b!7351128))

(assert (= (and d!2280529 res!2968675) b!7351129))

(assert (= (and b!7351129 res!2968674) b!7351130))

(declare-fun m!8012124 () Bool)

(assert (=> b!7351129 m!8012124))

(declare-fun m!8012126 () Bool)

(assert (=> b!7351129 m!8012126))

(declare-fun m!8012128 () Bool)

(assert (=> b!7351129 m!8012128))

(declare-fun m!8012130 () Bool)

(assert (=> b!7351128 m!8012130))

(declare-fun m!8012132 () Bool)

(assert (=> d!2280529 m!8012132))

(declare-fun m!8012134 () Bool)

(assert (=> d!2280529 m!8012134))

(declare-fun m!8012136 () Bool)

(assert (=> d!2280529 m!8012136))

(assert (=> b!7350996 d!2280529))

(declare-fun d!2280535 () Bool)

(assert (=> d!2280535 (forall!17990 (++!16986 (exprs!8608 ct1!282) (exprs!8608 ct2!378)) lambda!456552)))

(declare-fun lt!2612211 () Unit!165289)

(declare-fun choose!57181 (List!71664 List!71664 Int) Unit!165289)

(assert (=> d!2280535 (= lt!2612211 (choose!57181 (exprs!8608 ct1!282) (exprs!8608 ct2!378) lambda!456552))))

(assert (=> d!2280535 (forall!17990 (exprs!8608 ct1!282) lambda!456552)))

(assert (=> d!2280535 (= (lemmaConcatPreservesForall!1843 (exprs!8608 ct1!282) (exprs!8608 ct2!378) lambda!456552) lt!2612211)))

(declare-fun bs!1919291 () Bool)

(assert (= bs!1919291 d!2280535))

(assert (=> bs!1919291 m!8012012))

(assert (=> bs!1919291 m!8012012))

(declare-fun m!8012138 () Bool)

(assert (=> bs!1919291 m!8012138))

(declare-fun m!8012140 () Bool)

(assert (=> bs!1919291 m!8012140))

(declare-fun m!8012142 () Bool)

(assert (=> bs!1919291 m!8012142))

(assert (=> b!7350996 d!2280535))

(declare-fun b!7351132 () Bool)

(declare-fun e!4401549 () (Set Context!16216))

(declare-fun call!672425 () (Set Context!16216))

(assert (=> b!7351132 (= e!4401549 call!672425)))

(declare-fun b!7351133 () Bool)

(declare-fun e!4401545 () (Set Context!16216))

(assert (=> b!7351133 (= e!4401545 (as set.empty (Set Context!16216)))))

(declare-fun bm!672415 () Bool)

(declare-fun call!672422 () (Set Context!16216))

(assert (=> bm!672415 (= call!672425 call!672422)))

(declare-fun b!7351134 () Bool)

(declare-fun e!4401548 () (Set Context!16216))

(assert (=> b!7351134 (= e!4401548 (set.insert ct1!282 (as set.empty (Set Context!16216))))))

(declare-fun call!672424 () (Set Context!16216))

(declare-fun c!1365730 () Bool)

(declare-fun c!1365731 () Bool)

(declare-fun call!672421 () List!71664)

(declare-fun bm!672416 () Bool)

(declare-fun c!1365728 () Bool)

(assert (=> bm!672416 (= call!672424 (derivationStepZipperDown!2994 (ite c!1365730 (regOne!38849 r1!2370) (ite c!1365728 (regTwo!38848 r1!2370) (ite c!1365731 (regOne!38848 r1!2370) (reg!19497 r1!2370)))) (ite (or c!1365730 c!1365728) ct1!282 (Context!16217 call!672421)) c!10362))))

(declare-fun bm!672417 () Bool)

(assert (=> bm!672417 (= call!672422 call!672424)))

(declare-fun b!7351135 () Bool)

(declare-fun e!4401546 () (Set Context!16216))

(assert (=> b!7351135 (= e!4401548 e!4401546)))

(assert (=> b!7351135 (= c!1365730 (is-Union!19168 r1!2370))))

(declare-fun b!7351136 () Bool)

(declare-fun call!672423 () (Set Context!16216))

(assert (=> b!7351136 (= e!4401546 (set.union call!672424 call!672423))))

(declare-fun b!7351131 () Bool)

(assert (=> b!7351131 (= e!4401545 call!672425)))

(declare-fun d!2280537 () Bool)

(declare-fun c!1365732 () Bool)

(assert (=> d!2280537 (= c!1365732 (and (is-ElementMatch!19168 r1!2370) (= (c!1365688 r1!2370) c!10362)))))

(assert (=> d!2280537 (= (derivationStepZipperDown!2994 r1!2370 ct1!282 c!10362) e!4401548)))

(declare-fun b!7351137 () Bool)

(declare-fun e!4401547 () Bool)

(assert (=> b!7351137 (= c!1365728 e!4401547)))

(declare-fun res!2968676 () Bool)

(assert (=> b!7351137 (=> (not res!2968676) (not e!4401547))))

(assert (=> b!7351137 (= res!2968676 (is-Concat!28013 r1!2370))))

(declare-fun e!4401550 () (Set Context!16216))

(assert (=> b!7351137 (= e!4401546 e!4401550)))

(declare-fun call!672420 () List!71664)

(declare-fun bm!672418 () Bool)

(assert (=> bm!672418 (= call!672423 (derivationStepZipperDown!2994 (ite c!1365730 (regTwo!38849 r1!2370) (regOne!38848 r1!2370)) (ite c!1365730 ct1!282 (Context!16217 call!672420)) c!10362))))

(declare-fun bm!672419 () Bool)

(assert (=> bm!672419 (= call!672421 call!672420)))

(declare-fun bm!672420 () Bool)

(assert (=> bm!672420 (= call!672420 ($colon$colon!3166 (exprs!8608 ct1!282) (ite (or c!1365728 c!1365731) (regTwo!38848 r1!2370) r1!2370)))))

(declare-fun b!7351138 () Bool)

(assert (=> b!7351138 (= e!4401547 (nullable!8259 (regOne!38848 r1!2370)))))

(declare-fun b!7351139 () Bool)

(assert (=> b!7351139 (= e!4401550 (set.union call!672423 call!672422))))

(declare-fun b!7351140 () Bool)

(declare-fun c!1365729 () Bool)

(assert (=> b!7351140 (= c!1365729 (is-Star!19168 r1!2370))))

(assert (=> b!7351140 (= e!4401549 e!4401545)))

(declare-fun b!7351141 () Bool)

(assert (=> b!7351141 (= e!4401550 e!4401549)))

(assert (=> b!7351141 (= c!1365731 (is-Concat!28013 r1!2370))))

(assert (= (and d!2280537 c!1365732) b!7351134))

(assert (= (and d!2280537 (not c!1365732)) b!7351135))

(assert (= (and b!7351135 c!1365730) b!7351136))

(assert (= (and b!7351135 (not c!1365730)) b!7351137))

(assert (= (and b!7351137 res!2968676) b!7351138))

(assert (= (and b!7351137 c!1365728) b!7351139))

(assert (= (and b!7351137 (not c!1365728)) b!7351141))

(assert (= (and b!7351141 c!1365731) b!7351132))

(assert (= (and b!7351141 (not c!1365731)) b!7351140))

(assert (= (and b!7351140 c!1365729) b!7351131))

(assert (= (and b!7351140 (not c!1365729)) b!7351133))

(assert (= (or b!7351132 b!7351131) bm!672419))

(assert (= (or b!7351132 b!7351131) bm!672415))

(assert (= (or b!7351139 bm!672415) bm!672417))

(assert (= (or b!7351139 bm!672419) bm!672420))

(assert (= (or b!7351136 b!7351139) bm!672418))

(assert (= (or b!7351136 bm!672417) bm!672416))

(declare-fun m!8012144 () Bool)

(assert (=> bm!672416 m!8012144))

(assert (=> b!7351138 m!8012010))

(declare-fun m!8012146 () Bool)

(assert (=> bm!672420 m!8012146))

(declare-fun m!8012148 () Bool)

(assert (=> b!7351134 m!8012148))

(declare-fun m!8012150 () Bool)

(assert (=> bm!672418 m!8012150))

(assert (=> b!7350986 d!2280537))

(declare-fun b!7351178 () Bool)

(declare-fun res!2968697 () Bool)

(declare-fun e!4401582 () Bool)

(assert (=> b!7351178 (=> (not res!2968697) (not e!4401582))))

(declare-fun call!672439 () Bool)

(assert (=> b!7351178 (= res!2968697 call!672439)))

(declare-fun e!4401579 () Bool)

(assert (=> b!7351178 (= e!4401579 e!4401582)))

(declare-fun bm!672433 () Bool)

(declare-fun call!672440 () Bool)

(declare-fun call!672438 () Bool)

(assert (=> bm!672433 (= call!672440 call!672438)))

(declare-fun b!7351179 () Bool)

(declare-fun e!4401585 () Bool)

(assert (=> b!7351179 (= e!4401585 call!672439)))

(declare-fun b!7351180 () Bool)

(assert (=> b!7351180 (= e!4401582 call!672440)))

(declare-fun b!7351181 () Bool)

(declare-fun e!4401583 () Bool)

(assert (=> b!7351181 (= e!4401583 e!4401579)))

(declare-fun c!1365742 () Bool)

(assert (=> b!7351181 (= c!1365742 (is-Union!19168 r1!2370))))

(declare-fun c!1365741 () Bool)

(declare-fun bm!672434 () Bool)

(assert (=> bm!672434 (= call!672438 (validRegex!9764 (ite c!1365741 (reg!19497 r1!2370) (ite c!1365742 (regTwo!38849 r1!2370) (regOne!38848 r1!2370)))))))

(declare-fun b!7351182 () Bool)

(declare-fun e!4401580 () Bool)

(assert (=> b!7351182 (= e!4401583 e!4401580)))

(declare-fun res!2968699 () Bool)

(assert (=> b!7351182 (= res!2968699 (not (nullable!8259 (reg!19497 r1!2370))))))

(assert (=> b!7351182 (=> (not res!2968699) (not e!4401580))))

(declare-fun b!7351183 () Bool)

(assert (=> b!7351183 (= e!4401580 call!672438)))

(declare-fun b!7351184 () Bool)

(declare-fun e!4401584 () Bool)

(assert (=> b!7351184 (= e!4401584 e!4401585)))

(declare-fun res!2968700 () Bool)

(assert (=> b!7351184 (=> (not res!2968700) (not e!4401585))))

(assert (=> b!7351184 (= res!2968700 call!672440)))

(declare-fun b!7351185 () Bool)

(declare-fun res!2968701 () Bool)

(assert (=> b!7351185 (=> res!2968701 e!4401584)))

(assert (=> b!7351185 (= res!2968701 (not (is-Concat!28013 r1!2370)))))

(assert (=> b!7351185 (= e!4401579 e!4401584)))

(declare-fun b!7351186 () Bool)

(declare-fun e!4401581 () Bool)

(assert (=> b!7351186 (= e!4401581 e!4401583)))

(assert (=> b!7351186 (= c!1365741 (is-Star!19168 r1!2370))))

(declare-fun d!2280539 () Bool)

(declare-fun res!2968698 () Bool)

(assert (=> d!2280539 (=> res!2968698 e!4401581)))

(assert (=> d!2280539 (= res!2968698 (is-ElementMatch!19168 r1!2370))))

(assert (=> d!2280539 (= (validRegex!9764 r1!2370) e!4401581)))

(declare-fun bm!672435 () Bool)

(assert (=> bm!672435 (= call!672439 (validRegex!9764 (ite c!1365742 (regOne!38849 r1!2370) (regTwo!38848 r1!2370))))))

(assert (= (and d!2280539 (not res!2968698)) b!7351186))

(assert (= (and b!7351186 c!1365741) b!7351182))

(assert (= (and b!7351186 (not c!1365741)) b!7351181))

(assert (= (and b!7351182 res!2968699) b!7351183))

(assert (= (and b!7351181 c!1365742) b!7351178))

(assert (= (and b!7351181 (not c!1365742)) b!7351185))

(assert (= (and b!7351178 res!2968697) b!7351180))

(assert (= (and b!7351185 (not res!2968701)) b!7351184))

(assert (= (and b!7351184 res!2968700) b!7351179))

(assert (= (or b!7351178 b!7351179) bm!672435))

(assert (= (or b!7351180 b!7351184) bm!672433))

(assert (= (or b!7351183 bm!672433) bm!672434))

(declare-fun m!8012152 () Bool)

(assert (=> bm!672434 m!8012152))

(declare-fun m!8012154 () Bool)

(assert (=> b!7351182 m!8012154))

(declare-fun m!8012156 () Bool)

(assert (=> bm!672435 m!8012156))

(assert (=> start!717846 d!2280539))

(declare-fun bs!1919292 () Bool)

(declare-fun d!2280541 () Bool)

(assert (= bs!1919292 (and d!2280541 b!7350996)))

(declare-fun lambda!456564 () Int)

(assert (=> bs!1919292 (= lambda!456564 lambda!456552)))

(assert (=> d!2280541 (= (inv!91261 cWitness!61) (forall!17990 (exprs!8608 cWitness!61) lambda!456564))))

(declare-fun bs!1919293 () Bool)

(assert (= bs!1919293 d!2280541))

(declare-fun m!8012158 () Bool)

(assert (=> bs!1919293 m!8012158))

(assert (=> start!717846 d!2280541))

(declare-fun bs!1919294 () Bool)

(declare-fun d!2280543 () Bool)

(assert (= bs!1919294 (and d!2280543 b!7350996)))

(declare-fun lambda!456565 () Int)

(assert (=> bs!1919294 (= lambda!456565 lambda!456552)))

(declare-fun bs!1919295 () Bool)

(assert (= bs!1919295 (and d!2280543 d!2280541)))

(assert (=> bs!1919295 (= lambda!456565 lambda!456564)))

(assert (=> d!2280543 (= (inv!91261 ct1!282) (forall!17990 (exprs!8608 ct1!282) lambda!456565))))

(declare-fun bs!1919296 () Bool)

(assert (= bs!1919296 d!2280543))

(declare-fun m!8012160 () Bool)

(assert (=> bs!1919296 m!8012160))

(assert (=> start!717846 d!2280543))

(declare-fun bs!1919297 () Bool)

(declare-fun d!2280545 () Bool)

(assert (= bs!1919297 (and d!2280545 b!7350996)))

(declare-fun lambda!456566 () Int)

(assert (=> bs!1919297 (= lambda!456566 lambda!456552)))

(declare-fun bs!1919298 () Bool)

(assert (= bs!1919298 (and d!2280545 d!2280541)))

(assert (=> bs!1919298 (= lambda!456566 lambda!456564)))

(declare-fun bs!1919299 () Bool)

(assert (= bs!1919299 (and d!2280545 d!2280543)))

(assert (=> bs!1919299 (= lambda!456566 lambda!456565)))

(assert (=> d!2280545 (= (inv!91261 ct2!378) (forall!17990 (exprs!8608 ct2!378) lambda!456566))))

(declare-fun bs!1919300 () Bool)

(assert (= bs!1919300 d!2280545))

(declare-fun m!8012162 () Bool)

(assert (=> bs!1919300 m!8012162))

(assert (=> start!717846 d!2280545))

(declare-fun b!7351188 () Bool)

(declare-fun e!4401590 () (Set Context!16216))

(declare-fun call!672446 () (Set Context!16216))

(assert (=> b!7351188 (= e!4401590 call!672446)))

(declare-fun b!7351189 () Bool)

(declare-fun e!4401586 () (Set Context!16216))

(assert (=> b!7351189 (= e!4401586 (as set.empty (Set Context!16216)))))

(declare-fun bm!672436 () Bool)

(declare-fun call!672443 () (Set Context!16216))

(assert (=> bm!672436 (= call!672446 call!672443)))

(declare-fun b!7351190 () Bool)

(declare-fun e!4401589 () (Set Context!16216))

(assert (=> b!7351190 (= e!4401589 (set.insert (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378))) (as set.empty (Set Context!16216))))))

(declare-fun bm!672437 () Bool)

(declare-fun call!672442 () List!71664)

(declare-fun c!1365746 () Bool)

(declare-fun c!1365745 () Bool)

(declare-fun call!672445 () (Set Context!16216))

(declare-fun c!1365743 () Bool)

(assert (=> bm!672437 (= call!672445 (derivationStepZipperDown!2994 (ite c!1365745 (regOne!38849 (regOne!38848 r1!2370)) (ite c!1365743 (regTwo!38848 (regOne!38848 r1!2370)) (ite c!1365746 (regOne!38848 (regOne!38848 r1!2370)) (reg!19497 (regOne!38848 r1!2370))))) (ite (or c!1365745 c!1365743) (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378))) (Context!16217 call!672442)) c!10362))))

(declare-fun bm!672438 () Bool)

(assert (=> bm!672438 (= call!672443 call!672445)))

(declare-fun b!7351191 () Bool)

(declare-fun e!4401587 () (Set Context!16216))

(assert (=> b!7351191 (= e!4401589 e!4401587)))

(assert (=> b!7351191 (= c!1365745 (is-Union!19168 (regOne!38848 r1!2370)))))

(declare-fun b!7351192 () Bool)

(declare-fun call!672444 () (Set Context!16216))

(assert (=> b!7351192 (= e!4401587 (set.union call!672445 call!672444))))

(declare-fun b!7351187 () Bool)

(assert (=> b!7351187 (= e!4401586 call!672446)))

(declare-fun d!2280547 () Bool)

(declare-fun c!1365747 () Bool)

(assert (=> d!2280547 (= c!1365747 (and (is-ElementMatch!19168 (regOne!38848 r1!2370)) (= (c!1365688 (regOne!38848 r1!2370)) c!10362)))))

(assert (=> d!2280547 (= (derivationStepZipperDown!2994 (regOne!38848 r1!2370) (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378))) c!10362) e!4401589)))

(declare-fun b!7351193 () Bool)

(declare-fun e!4401588 () Bool)

(assert (=> b!7351193 (= c!1365743 e!4401588)))

(declare-fun res!2968702 () Bool)

(assert (=> b!7351193 (=> (not res!2968702) (not e!4401588))))

(assert (=> b!7351193 (= res!2968702 (is-Concat!28013 (regOne!38848 r1!2370)))))

(declare-fun e!4401591 () (Set Context!16216))

(assert (=> b!7351193 (= e!4401587 e!4401591)))

(declare-fun call!672441 () List!71664)

(declare-fun bm!672439 () Bool)

(assert (=> bm!672439 (= call!672444 (derivationStepZipperDown!2994 (ite c!1365745 (regTwo!38849 (regOne!38848 r1!2370)) (regOne!38848 (regOne!38848 r1!2370))) (ite c!1365745 (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378))) (Context!16217 call!672441)) c!10362))))

(declare-fun bm!672440 () Bool)

(assert (=> bm!672440 (= call!672442 call!672441)))

(declare-fun bm!672441 () Bool)

(assert (=> bm!672441 (= call!672441 ($colon$colon!3166 (exprs!8608 (Context!16217 (++!16986 lt!2612178 (exprs!8608 ct2!378)))) (ite (or c!1365743 c!1365746) (regTwo!38848 (regOne!38848 r1!2370)) (regOne!38848 r1!2370))))))

(declare-fun b!7351194 () Bool)

(assert (=> b!7351194 (= e!4401588 (nullable!8259 (regOne!38848 (regOne!38848 r1!2370))))))

(declare-fun b!7351195 () Bool)

(assert (=> b!7351195 (= e!4401591 (set.union call!672444 call!672443))))

(declare-fun b!7351196 () Bool)

(declare-fun c!1365744 () Bool)

(assert (=> b!7351196 (= c!1365744 (is-Star!19168 (regOne!38848 r1!2370)))))

(assert (=> b!7351196 (= e!4401590 e!4401586)))

(declare-fun b!7351197 () Bool)

(assert (=> b!7351197 (= e!4401591 e!4401590)))

(assert (=> b!7351197 (= c!1365746 (is-Concat!28013 (regOne!38848 r1!2370)))))

(assert (= (and d!2280547 c!1365747) b!7351190))

(assert (= (and d!2280547 (not c!1365747)) b!7351191))

(assert (= (and b!7351191 c!1365745) b!7351192))

(assert (= (and b!7351191 (not c!1365745)) b!7351193))

(assert (= (and b!7351193 res!2968702) b!7351194))

(assert (= (and b!7351193 c!1365743) b!7351195))

(assert (= (and b!7351193 (not c!1365743)) b!7351197))

(assert (= (and b!7351197 c!1365746) b!7351188))

(assert (= (and b!7351197 (not c!1365746)) b!7351196))

(assert (= (and b!7351196 c!1365744) b!7351187))

(assert (= (and b!7351196 (not c!1365744)) b!7351189))

(assert (= (or b!7351188 b!7351187) bm!672440))

(assert (= (or b!7351188 b!7351187) bm!672436))

(assert (= (or b!7351195 bm!672436) bm!672438))

(assert (= (or b!7351195 bm!672440) bm!672441))

(assert (= (or b!7351192 b!7351195) bm!672439))

(assert (= (or b!7351192 bm!672438) bm!672437))

(declare-fun m!8012164 () Bool)

(assert (=> bm!672437 m!8012164))

(assert (=> b!7351194 m!8012096))

(declare-fun m!8012166 () Bool)

(assert (=> bm!672441 m!8012166))

(declare-fun m!8012168 () Bool)

(assert (=> b!7351190 m!8012168))

(declare-fun m!8012170 () Bool)

(assert (=> bm!672439 m!8012170))

(assert (=> b!7350988 d!2280547))

(declare-fun b!7351209 () Bool)

(declare-fun res!2968708 () Bool)

(declare-fun e!4401600 () Bool)

(assert (=> b!7351209 (=> (not res!2968708) (not e!4401600))))

(declare-fun lt!2612212 () List!71664)

(assert (=> b!7351209 (= res!2968708 (= (size!42053 lt!2612212) (+ (size!42053 lt!2612178) (size!42053 (exprs!8608 ct2!378)))))))

(declare-fun b!7351207 () Bool)

(declare-fun e!4401599 () List!71664)

(assert (=> b!7351207 (= e!4401599 (exprs!8608 ct2!378))))

(declare-fun b!7351210 () Bool)

(assert (=> b!7351210 (= e!4401600 (or (not (= (exprs!8608 ct2!378) Nil!71540)) (= lt!2612212 lt!2612178)))))

(declare-fun b!7351208 () Bool)

(assert (=> b!7351208 (= e!4401599 (Cons!71540 (h!77988 lt!2612178) (++!16986 (t!386083 lt!2612178) (exprs!8608 ct2!378))))))

(declare-fun d!2280549 () Bool)

(assert (=> d!2280549 e!4401600))

(declare-fun res!2968709 () Bool)

(assert (=> d!2280549 (=> (not res!2968709) (not e!4401600))))

(assert (=> d!2280549 (= res!2968709 (= (content!15074 lt!2612212) (set.union (content!15074 lt!2612178) (content!15074 (exprs!8608 ct2!378)))))))

(assert (=> d!2280549 (= lt!2612212 e!4401599)))

(declare-fun c!1365750 () Bool)

(assert (=> d!2280549 (= c!1365750 (is-Nil!71540 lt!2612178))))

(assert (=> d!2280549 (= (++!16986 lt!2612178 (exprs!8608 ct2!378)) lt!2612212)))

(assert (= (and d!2280549 c!1365750) b!7351207))

(assert (= (and d!2280549 (not c!1365750)) b!7351208))

(assert (= (and d!2280549 res!2968709) b!7351209))

(assert (= (and b!7351209 res!2968708) b!7351210))

(declare-fun m!8012172 () Bool)

(assert (=> b!7351209 m!8012172))

(declare-fun m!8012174 () Bool)

(assert (=> b!7351209 m!8012174))

(assert (=> b!7351209 m!8012128))

(declare-fun m!8012176 () Bool)

(assert (=> b!7351208 m!8012176))

(declare-fun m!8012180 () Bool)

(assert (=> d!2280549 m!8012180))

(declare-fun m!8012182 () Bool)

(assert (=> d!2280549 m!8012182))

(assert (=> d!2280549 m!8012136))

(assert (=> b!7350988 d!2280549))

(declare-fun b!7351213 () Bool)

(declare-fun res!2968710 () Bool)

(declare-fun e!4401602 () Bool)

(assert (=> b!7351213 (=> (not res!2968710) (not e!4401602))))

(declare-fun lt!2612213 () List!71664)

(assert (=> b!7351213 (= res!2968710 (= (size!42053 lt!2612213) (+ (size!42053 (exprs!8608 cWitness!61)) (size!42053 (exprs!8608 ct2!378)))))))

(declare-fun b!7351211 () Bool)

(declare-fun e!4401601 () List!71664)

(assert (=> b!7351211 (= e!4401601 (exprs!8608 ct2!378))))

(declare-fun b!7351214 () Bool)

(assert (=> b!7351214 (= e!4401602 (or (not (= (exprs!8608 ct2!378) Nil!71540)) (= lt!2612213 (exprs!8608 cWitness!61))))))

(declare-fun b!7351212 () Bool)

(assert (=> b!7351212 (= e!4401601 (Cons!71540 (h!77988 (exprs!8608 cWitness!61)) (++!16986 (t!386083 (exprs!8608 cWitness!61)) (exprs!8608 ct2!378))))))

(declare-fun d!2280551 () Bool)

(assert (=> d!2280551 e!4401602))

(declare-fun res!2968711 () Bool)

(assert (=> d!2280551 (=> (not res!2968711) (not e!4401602))))

(assert (=> d!2280551 (= res!2968711 (= (content!15074 lt!2612213) (set.union (content!15074 (exprs!8608 cWitness!61)) (content!15074 (exprs!8608 ct2!378)))))))

(assert (=> d!2280551 (= lt!2612213 e!4401601)))

(declare-fun c!1365751 () Bool)

(assert (=> d!2280551 (= c!1365751 (is-Nil!71540 (exprs!8608 cWitness!61)))))

(assert (=> d!2280551 (= (++!16986 (exprs!8608 cWitness!61) (exprs!8608 ct2!378)) lt!2612213)))

(assert (= (and d!2280551 c!1365751) b!7351211))

(assert (= (and d!2280551 (not c!1365751)) b!7351212))

(assert (= (and d!2280551 res!2968711) b!7351213))

(assert (= (and b!7351213 res!2968710) b!7351214))

(declare-fun m!8012188 () Bool)

(assert (=> b!7351213 m!8012188))

(declare-fun m!8012190 () Bool)

(assert (=> b!7351213 m!8012190))

(assert (=> b!7351213 m!8012128))

(declare-fun m!8012192 () Bool)

(assert (=> b!7351212 m!8012192))

(declare-fun m!8012194 () Bool)

(assert (=> d!2280551 m!8012194))

(declare-fun m!8012196 () Bool)

(assert (=> d!2280551 m!8012196))

(assert (=> d!2280551 m!8012136))

(assert (=> b!7350988 d!2280551))

(declare-fun d!2280555 () Bool)

(assert (=> d!2280555 (forall!17990 (++!16986 lt!2612178 (exprs!8608 ct2!378)) lambda!456552)))

(declare-fun lt!2612214 () Unit!165289)

(assert (=> d!2280555 (= lt!2612214 (choose!57181 lt!2612178 (exprs!8608 ct2!378) lambda!456552))))

(assert (=> d!2280555 (forall!17990 lt!2612178 lambda!456552)))

(assert (=> d!2280555 (= (lemmaConcatPreservesForall!1843 lt!2612178 (exprs!8608 ct2!378) lambda!456552) lt!2612214)))

(declare-fun bs!1919301 () Bool)

(assert (= bs!1919301 d!2280555))

(assert (=> bs!1919301 m!8012026))

(assert (=> bs!1919301 m!8012026))

(declare-fun m!8012198 () Bool)

(assert (=> bs!1919301 m!8012198))

(declare-fun m!8012200 () Bool)

(assert (=> bs!1919301 m!8012200))

(declare-fun m!8012202 () Bool)

(assert (=> bs!1919301 m!8012202))

(assert (=> b!7350988 d!2280555))

(declare-fun d!2280557 () Bool)

(declare-fun res!2968716 () Bool)

(declare-fun e!4401607 () Bool)

(assert (=> d!2280557 (=> res!2968716 e!4401607)))

(assert (=> d!2280557 (= res!2968716 (is-Nil!71540 (exprs!8608 cWitness!61)))))

(assert (=> d!2280557 (= (forall!17990 (exprs!8608 cWitness!61) lambda!456552) e!4401607)))

(declare-fun b!7351219 () Bool)

(declare-fun e!4401608 () Bool)

(assert (=> b!7351219 (= e!4401607 e!4401608)))

(declare-fun res!2968717 () Bool)

(assert (=> b!7351219 (=> (not res!2968717) (not e!4401608))))

(declare-fun dynLambda!29493 (Int Regex!19168) Bool)

(assert (=> b!7351219 (= res!2968717 (dynLambda!29493 lambda!456552 (h!77988 (exprs!8608 cWitness!61))))))

(declare-fun b!7351220 () Bool)

(assert (=> b!7351220 (= e!4401608 (forall!17990 (t!386083 (exprs!8608 cWitness!61)) lambda!456552))))

(assert (= (and d!2280557 (not res!2968716)) b!7351219))

(assert (= (and b!7351219 res!2968717) b!7351220))

(declare-fun b_lambda!284123 () Bool)

(assert (=> (not b_lambda!284123) (not b!7351219)))

(declare-fun m!8012204 () Bool)

(assert (=> b!7351219 m!8012204))

(declare-fun m!8012206 () Bool)

(assert (=> b!7351220 m!8012206))

(assert (=> b!7350988 d!2280557))

(declare-fun bs!1919311 () Bool)

(declare-fun d!2280559 () Bool)

(assert (= bs!1919311 (and d!2280559 b!7350996)))

(declare-fun lambda!456576 () Int)

(assert (=> bs!1919311 (= lambda!456576 lambda!456552)))

(declare-fun bs!1919312 () Bool)

(assert (= bs!1919312 (and d!2280559 d!2280541)))

(assert (=> bs!1919312 (= lambda!456576 lambda!456564)))

(declare-fun bs!1919313 () Bool)

(assert (= bs!1919313 (and d!2280559 d!2280543)))

(assert (=> bs!1919313 (= lambda!456576 lambda!456565)))

(declare-fun bs!1919314 () Bool)

(assert (= bs!1919314 (and d!2280559 d!2280545)))

(assert (=> bs!1919314 (= lambda!456576 lambda!456566)))

(assert (=> d!2280559 (set.member (Context!16217 (++!16986 (exprs!8608 cWitness!61) (exprs!8608 ct2!378))) (derivationStepZipperDown!2994 (regOne!38848 r1!2370) (Context!16217 (++!16986 (exprs!8608 lt!2612181) (exprs!8608 ct2!378))) c!10362))))

(declare-fun lt!2612223 () Unit!165289)

(assert (=> d!2280559 (= lt!2612223 (lemmaConcatPreservesForall!1843 (exprs!8608 lt!2612181) (exprs!8608 ct2!378) lambda!456576))))

(declare-fun lt!2612222 () Unit!165289)

(assert (=> d!2280559 (= lt!2612222 (lemmaConcatPreservesForall!1843 (exprs!8608 cWitness!61) (exprs!8608 ct2!378) lambda!456576))))

(declare-fun lt!2612221 () Unit!165289)

(declare-fun choose!57182 (Regex!19168 Context!16216 Context!16216 Context!16216 C!38610) Unit!165289)

(assert (=> d!2280559 (= lt!2612221 (choose!57182 (regOne!38848 r1!2370) lt!2612181 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280559 (validRegex!9764 (regOne!38848 r1!2370))))

(assert (=> d!2280559 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!89 (regOne!38848 r1!2370) lt!2612181 ct2!378 cWitness!61 c!10362) lt!2612221)))

(declare-fun bs!1919315 () Bool)

(assert (= bs!1919315 d!2280559))

(declare-fun m!8012222 () Bool)

(assert (=> bs!1919315 m!8012222))

(declare-fun m!8012224 () Bool)

(assert (=> bs!1919315 m!8012224))

(assert (=> bs!1919315 m!8012030))

(declare-fun m!8012226 () Bool)

(assert (=> bs!1919315 m!8012226))

(declare-fun m!8012228 () Bool)

(assert (=> bs!1919315 m!8012228))

(declare-fun m!8012230 () Bool)

(assert (=> bs!1919315 m!8012230))

(declare-fun m!8012232 () Bool)

(assert (=> bs!1919315 m!8012232))

(declare-fun m!8012234 () Bool)

(assert (=> bs!1919315 m!8012234))

(assert (=> b!7350988 d!2280559))

(declare-fun d!2280569 () Bool)

(assert (=> d!2280569 (forall!17990 (++!16986 (exprs!8608 cWitness!61) (exprs!8608 ct2!378)) lambda!456552)))

(declare-fun lt!2612224 () Unit!165289)

(assert (=> d!2280569 (= lt!2612224 (choose!57181 (exprs!8608 cWitness!61) (exprs!8608 ct2!378) lambda!456552))))

(assert (=> d!2280569 (forall!17990 (exprs!8608 cWitness!61) lambda!456552)))

(assert (=> d!2280569 (= (lemmaConcatPreservesForall!1843 (exprs!8608 cWitness!61) (exprs!8608 ct2!378) lambda!456552) lt!2612224)))

(declare-fun bs!1919316 () Bool)

(assert (= bs!1919316 d!2280569))

(assert (=> bs!1919316 m!8012030))

(assert (=> bs!1919316 m!8012030))

(declare-fun m!8012236 () Bool)

(assert (=> bs!1919316 m!8012236))

(declare-fun m!8012238 () Bool)

(assert (=> bs!1919316 m!8012238))

(assert (=> bs!1919316 m!8012034))

(assert (=> b!7350988 d!2280569))

(declare-fun b!7351232 () Bool)

(declare-fun res!2968719 () Bool)

(declare-fun e!4401618 () Bool)

(assert (=> b!7351232 (=> (not res!2968719) (not e!4401618))))

(declare-fun call!672457 () Bool)

(assert (=> b!7351232 (= res!2968719 call!672457)))

(declare-fun e!4401615 () Bool)

(assert (=> b!7351232 (= e!4401615 e!4401618)))

(declare-fun bm!672451 () Bool)

(declare-fun call!672458 () Bool)

(declare-fun call!672456 () Bool)

(assert (=> bm!672451 (= call!672458 call!672456)))

(declare-fun b!7351233 () Bool)

(declare-fun e!4401621 () Bool)

(assert (=> b!7351233 (= e!4401621 call!672457)))

(declare-fun b!7351234 () Bool)

(assert (=> b!7351234 (= e!4401618 call!672458)))

(declare-fun b!7351235 () Bool)

(declare-fun e!4401619 () Bool)

(assert (=> b!7351235 (= e!4401619 e!4401615)))

(declare-fun c!1365759 () Bool)

(assert (=> b!7351235 (= c!1365759 (is-Union!19168 (regTwo!38848 r1!2370)))))

(declare-fun c!1365758 () Bool)

(declare-fun bm!672452 () Bool)

(assert (=> bm!672452 (= call!672456 (validRegex!9764 (ite c!1365758 (reg!19497 (regTwo!38848 r1!2370)) (ite c!1365759 (regTwo!38849 (regTwo!38848 r1!2370)) (regOne!38848 (regTwo!38848 r1!2370))))))))

(declare-fun b!7351236 () Bool)

(declare-fun e!4401616 () Bool)

(assert (=> b!7351236 (= e!4401619 e!4401616)))

(declare-fun res!2968721 () Bool)

(assert (=> b!7351236 (= res!2968721 (not (nullable!8259 (reg!19497 (regTwo!38848 r1!2370)))))))

(assert (=> b!7351236 (=> (not res!2968721) (not e!4401616))))

(declare-fun b!7351237 () Bool)

(assert (=> b!7351237 (= e!4401616 call!672456)))

(declare-fun b!7351238 () Bool)

(declare-fun e!4401620 () Bool)

(assert (=> b!7351238 (= e!4401620 e!4401621)))

(declare-fun res!2968722 () Bool)

(assert (=> b!7351238 (=> (not res!2968722) (not e!4401621))))

(assert (=> b!7351238 (= res!2968722 call!672458)))

(declare-fun b!7351239 () Bool)

(declare-fun res!2968723 () Bool)

(assert (=> b!7351239 (=> res!2968723 e!4401620)))

(assert (=> b!7351239 (= res!2968723 (not (is-Concat!28013 (regTwo!38848 r1!2370))))))

(assert (=> b!7351239 (= e!4401615 e!4401620)))

(declare-fun b!7351240 () Bool)

(declare-fun e!4401617 () Bool)

(assert (=> b!7351240 (= e!4401617 e!4401619)))

(assert (=> b!7351240 (= c!1365758 (is-Star!19168 (regTwo!38848 r1!2370)))))

(declare-fun d!2280571 () Bool)

(declare-fun res!2968720 () Bool)

(assert (=> d!2280571 (=> res!2968720 e!4401617)))

(assert (=> d!2280571 (= res!2968720 (is-ElementMatch!19168 (regTwo!38848 r1!2370)))))

(assert (=> d!2280571 (= (validRegex!9764 (regTwo!38848 r1!2370)) e!4401617)))

(declare-fun bm!672453 () Bool)

(assert (=> bm!672453 (= call!672457 (validRegex!9764 (ite c!1365759 (regOne!38849 (regTwo!38848 r1!2370)) (regTwo!38848 (regTwo!38848 r1!2370)))))))

(assert (= (and d!2280571 (not res!2968720)) b!7351240))

(assert (= (and b!7351240 c!1365758) b!7351236))

(assert (= (and b!7351240 (not c!1365758)) b!7351235))

(assert (= (and b!7351236 res!2968721) b!7351237))

(assert (= (and b!7351235 c!1365759) b!7351232))

(assert (= (and b!7351235 (not c!1365759)) b!7351239))

(assert (= (and b!7351232 res!2968719) b!7351234))

(assert (= (and b!7351239 (not res!2968723)) b!7351238))

(assert (= (and b!7351238 res!2968722) b!7351233))

(assert (= (or b!7351232 b!7351233) bm!672453))

(assert (= (or b!7351234 b!7351238) bm!672451))

(assert (= (or b!7351237 bm!672451) bm!672452))

(declare-fun m!8012240 () Bool)

(assert (=> bm!672452 m!8012240))

(declare-fun m!8012242 () Bool)

(assert (=> b!7351236 m!8012242))

(declare-fun m!8012244 () Bool)

(assert (=> bm!672453 m!8012244))

(assert (=> b!7350994 d!2280571))

(declare-fun b!7351253 () Bool)

(declare-fun e!4401624 () Bool)

(declare-fun tp!2087946 () Bool)

(assert (=> b!7351253 (= e!4401624 tp!2087946)))

(declare-fun b!7351251 () Bool)

(assert (=> b!7351251 (= e!4401624 tp_is_empty!48581)))

(declare-fun b!7351254 () Bool)

(declare-fun tp!2087948 () Bool)

(declare-fun tp!2087945 () Bool)

(assert (=> b!7351254 (= e!4401624 (and tp!2087948 tp!2087945))))

(assert (=> b!7350992 (= tp!2087904 e!4401624)))

(declare-fun b!7351252 () Bool)

(declare-fun tp!2087947 () Bool)

(declare-fun tp!2087944 () Bool)

(assert (=> b!7351252 (= e!4401624 (and tp!2087947 tp!2087944))))

(assert (= (and b!7350992 (is-ElementMatch!19168 (reg!19497 r1!2370))) b!7351251))

(assert (= (and b!7350992 (is-Concat!28013 (reg!19497 r1!2370))) b!7351252))

(assert (= (and b!7350992 (is-Star!19168 (reg!19497 r1!2370))) b!7351253))

(assert (= (and b!7350992 (is-Union!19168 (reg!19497 r1!2370))) b!7351254))

(declare-fun b!7351257 () Bool)

(declare-fun e!4401625 () Bool)

(declare-fun tp!2087951 () Bool)

(assert (=> b!7351257 (= e!4401625 tp!2087951)))

(declare-fun b!7351255 () Bool)

(assert (=> b!7351255 (= e!4401625 tp_is_empty!48581)))

(declare-fun b!7351258 () Bool)

(declare-fun tp!2087953 () Bool)

(declare-fun tp!2087950 () Bool)

(assert (=> b!7351258 (= e!4401625 (and tp!2087953 tp!2087950))))

(assert (=> b!7350991 (= tp!2087906 e!4401625)))

(declare-fun b!7351256 () Bool)

(declare-fun tp!2087952 () Bool)

(declare-fun tp!2087949 () Bool)

(assert (=> b!7351256 (= e!4401625 (and tp!2087952 tp!2087949))))

(assert (= (and b!7350991 (is-ElementMatch!19168 (regOne!38848 r1!2370))) b!7351255))

(assert (= (and b!7350991 (is-Concat!28013 (regOne!38848 r1!2370))) b!7351256))

(assert (= (and b!7350991 (is-Star!19168 (regOne!38848 r1!2370))) b!7351257))

(assert (= (and b!7350991 (is-Union!19168 (regOne!38848 r1!2370))) b!7351258))

(declare-fun b!7351261 () Bool)

(declare-fun e!4401626 () Bool)

(declare-fun tp!2087956 () Bool)

(assert (=> b!7351261 (= e!4401626 tp!2087956)))

(declare-fun b!7351259 () Bool)

(assert (=> b!7351259 (= e!4401626 tp_is_empty!48581)))

(declare-fun b!7351262 () Bool)

(declare-fun tp!2087958 () Bool)

(declare-fun tp!2087955 () Bool)

(assert (=> b!7351262 (= e!4401626 (and tp!2087958 tp!2087955))))

(assert (=> b!7350991 (= tp!2087903 e!4401626)))

(declare-fun b!7351260 () Bool)

(declare-fun tp!2087957 () Bool)

(declare-fun tp!2087954 () Bool)

(assert (=> b!7351260 (= e!4401626 (and tp!2087957 tp!2087954))))

(assert (= (and b!7350991 (is-ElementMatch!19168 (regTwo!38848 r1!2370))) b!7351259))

(assert (= (and b!7350991 (is-Concat!28013 (regTwo!38848 r1!2370))) b!7351260))

(assert (= (and b!7350991 (is-Star!19168 (regTwo!38848 r1!2370))) b!7351261))

(assert (= (and b!7350991 (is-Union!19168 (regTwo!38848 r1!2370))) b!7351262))

(declare-fun b!7351267 () Bool)

(declare-fun e!4401629 () Bool)

(declare-fun tp!2087963 () Bool)

(declare-fun tp!2087964 () Bool)

(assert (=> b!7351267 (= e!4401629 (and tp!2087963 tp!2087964))))

(assert (=> b!7350984 (= tp!2087909 e!4401629)))

(assert (= (and b!7350984 (is-Cons!71540 (exprs!8608 ct2!378))) b!7351267))

(declare-fun b!7351268 () Bool)

(declare-fun e!4401630 () Bool)

(declare-fun tp!2087965 () Bool)

(declare-fun tp!2087966 () Bool)

(assert (=> b!7351268 (= e!4401630 (and tp!2087965 tp!2087966))))

(assert (=> b!7350989 (= tp!2087908 e!4401630)))

(assert (= (and b!7350989 (is-Cons!71540 (exprs!8608 cWitness!61))) b!7351268))

(declare-fun b!7351273 () Bool)

(declare-fun e!4401632 () Bool)

(declare-fun tp!2087967 () Bool)

(declare-fun tp!2087968 () Bool)

(assert (=> b!7351273 (= e!4401632 (and tp!2087967 tp!2087968))))

(assert (=> b!7350993 (= tp!2087907 e!4401632)))

(assert (= (and b!7350993 (is-Cons!71540 (exprs!8608 ct1!282))) b!7351273))

(declare-fun b!7351276 () Bool)

(declare-fun e!4401634 () Bool)

(declare-fun tp!2087971 () Bool)

(assert (=> b!7351276 (= e!4401634 tp!2087971)))

(declare-fun b!7351274 () Bool)

(assert (=> b!7351274 (= e!4401634 tp_is_empty!48581)))

(declare-fun b!7351277 () Bool)

(declare-fun tp!2087973 () Bool)

(declare-fun tp!2087970 () Bool)

(assert (=> b!7351277 (= e!4401634 (and tp!2087973 tp!2087970))))

(assert (=> b!7350983 (= tp!2087905 e!4401634)))

(declare-fun b!7351275 () Bool)

(declare-fun tp!2087972 () Bool)

(declare-fun tp!2087969 () Bool)

(assert (=> b!7351275 (= e!4401634 (and tp!2087972 tp!2087969))))

(assert (= (and b!7350983 (is-ElementMatch!19168 (regOne!38849 r1!2370))) b!7351274))

(assert (= (and b!7350983 (is-Concat!28013 (regOne!38849 r1!2370))) b!7351275))

(assert (= (and b!7350983 (is-Star!19168 (regOne!38849 r1!2370))) b!7351276))

(assert (= (and b!7350983 (is-Union!19168 (regOne!38849 r1!2370))) b!7351277))

(declare-fun b!7351280 () Bool)

(declare-fun e!4401635 () Bool)

(declare-fun tp!2087976 () Bool)

(assert (=> b!7351280 (= e!4401635 tp!2087976)))

(declare-fun b!7351278 () Bool)

(assert (=> b!7351278 (= e!4401635 tp_is_empty!48581)))

(declare-fun b!7351281 () Bool)

(declare-fun tp!2087978 () Bool)

(declare-fun tp!2087975 () Bool)

(assert (=> b!7351281 (= e!4401635 (and tp!2087978 tp!2087975))))

(assert (=> b!7350983 (= tp!2087902 e!4401635)))

(declare-fun b!7351279 () Bool)

(declare-fun tp!2087977 () Bool)

(declare-fun tp!2087974 () Bool)

(assert (=> b!7351279 (= e!4401635 (and tp!2087977 tp!2087974))))

(assert (= (and b!7350983 (is-ElementMatch!19168 (regTwo!38849 r1!2370))) b!7351278))

(assert (= (and b!7350983 (is-Concat!28013 (regTwo!38849 r1!2370))) b!7351279))

(assert (= (and b!7350983 (is-Star!19168 (regTwo!38849 r1!2370))) b!7351280))

(assert (= (and b!7350983 (is-Union!19168 (regTwo!38849 r1!2370))) b!7351281))

(declare-fun b_lambda!284125 () Bool)

(assert (= b_lambda!284123 (or b!7350996 b_lambda!284125)))

(declare-fun bs!1919317 () Bool)

(declare-fun d!2280573 () Bool)

(assert (= bs!1919317 (and d!2280573 b!7350996)))

(assert (=> bs!1919317 (= (dynLambda!29493 lambda!456552 (h!77988 (exprs!8608 cWitness!61))) (validRegex!9764 (h!77988 (exprs!8608 cWitness!61))))))

(declare-fun m!8012246 () Bool)

(assert (=> bs!1919317 m!8012246))

(assert (=> b!7351219 d!2280573))

(push 1)

(assert (not b!7351104))

(assert (not b!7351253))

(assert (not b!7351260))

(assert (not bm!672404))

(assert (not b!7351261))

(assert (not d!2280525))

(assert (not b_lambda!284125))

(assert (not d!2280535))

(assert (not bm!672408))

(assert (not b!7351236))

(assert (not bm!672434))

(assert (not b!7351213))

(assert (not d!2280543))

(assert (not bm!672441))

(assert (not bm!672402))

(assert (not bm!672453))

(assert (not d!2280541))

(assert (not d!2280555))

(assert (not b!7351256))

(assert (not b!7351194))

(assert (not bm!672416))

(assert (not b!7351257))

(assert (not b!7351277))

(assert (not b!7351275))

(assert (not b!7351093))

(assert (not bm!672420))

(assert (not d!2280549))

(assert (not bm!672406))

(assert (not b!7351208))

(assert (not b!7351280))

(assert (not b!7351129))

(assert (not b!7351276))

(assert (not d!2280529))

(assert (not b!7351128))

(assert (not bm!672452))

(assert (not d!2280545))

(assert (not b!7351209))

(assert (not b!7351254))

(assert (not bm!672439))

(assert (not b!7351267))

(assert (not d!2280559))

(assert (not b!7351273))

(assert (not bm!672400))

(assert (not bm!672437))

(assert (not bm!672435))

(assert (not d!2280551))

(assert (not b!7351252))

(assert (not b!7351138))

(assert (not bs!1919317))

(assert tp_is_empty!48581)

(assert (not d!2280569))

(assert (not b!7351212))

(assert (not b!7351279))

(assert (not b!7351262))

(assert (not b!7351268))

(assert (not b!7351258))

(assert (not b!7351220))

(assert (not bm!672398))

(assert (not bm!672418))

(assert (not b!7351281))

(assert (not b!7351182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

