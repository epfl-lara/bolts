; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690538 () Bool)

(assert start!690538)

(declare-fun res!2896999 () Bool)

(declare-fun e!4264433 () Bool)

(assert (=> start!690538 (=> (not res!2896999) (not e!4264433))))

(declare-datatypes ((C!35902 0))(
  ( (C!35903 (val!27657 Int)) )
))
(declare-datatypes ((Regex!17816 0))(
  ( (ElementMatch!17816 (c!1323901 C!35902)) (Concat!26661 (regOne!36144 Regex!17816) (regTwo!36144 Regex!17816)) (EmptyExpr!17816) (Star!17816 (reg!18145 Regex!17816)) (EmptyLang!17816) (Union!17816 (regOne!36145 Regex!17816) (regTwo!36145 Regex!17816)) )
))
(declare-fun r!11554 () Regex!17816)

(declare-fun validRegex!9091 (Regex!17816) Bool)

(assert (=> start!690538 (= res!2896999 (validRegex!9091 r!11554))))

(assert (=> start!690538 e!4264433))

(declare-fun e!4264431 () Bool)

(assert (=> start!690538 e!4264431))

(declare-fun tp_is_empty!44865 () Bool)

(assert (=> start!690538 tp_is_empty!44865))

(declare-datatypes ((List!68779 0))(
  ( (Nil!68655) (Cons!68655 (h!75103 Regex!17816) (t!382574 List!68779)) )
))
(declare-datatypes ((Context!13624 0))(
  ( (Context!13625 (exprs!7312 List!68779)) )
))
(declare-fun c!9994 () Context!13624)

(declare-fun e!4264429 () Bool)

(declare-fun inv!87406 (Context!13624) Bool)

(assert (=> start!690538 (and (inv!87406 c!9994) e!4264429)))

(declare-fun auxCtx!45 () Context!13624)

(declare-fun e!4264430 () Bool)

(assert (=> start!690538 (and (inv!87406 auxCtx!45) e!4264430)))

(declare-fun b!7094019 () Bool)

(declare-fun tp!1949121 () Bool)

(declare-fun tp!1949123 () Bool)

(assert (=> b!7094019 (= e!4264431 (and tp!1949121 tp!1949123))))

(declare-fun b!7094020 () Bool)

(declare-fun tp!1949119 () Bool)

(assert (=> b!7094020 (= e!4264429 tp!1949119)))

(declare-fun b!7094021 () Bool)

(declare-fun lambda!430256 () Int)

(declare-fun forall!16744 (List!68779 Int) Bool)

(assert (=> b!7094021 (= e!4264433 (not (forall!16744 (exprs!7312 c!9994) lambda!430256)))))

(declare-datatypes ((Unit!162315 0))(
  ( (Unit!162316) )
))
(declare-fun lt!2556925 () Unit!162315)

(declare-fun lemmaConcatPreservesForall!1111 (List!68779 List!68779 Int) Unit!162315)

(assert (=> b!7094021 (= lt!2556925 (lemmaConcatPreservesForall!1111 (exprs!7312 c!9994) (exprs!7312 auxCtx!45) lambda!430256))))

(declare-fun b!7094022 () Bool)

(declare-fun e!4264432 () Bool)

(declare-fun nullable!7456 (Regex!17816) Bool)

(assert (=> b!7094022 (= e!4264432 (not (nullable!7456 (regOne!36144 r!11554))))))

(declare-fun b!7094023 () Bool)

(declare-fun res!2897001 () Bool)

(assert (=> b!7094023 (=> (not res!2897001) (not e!4264433))))

(assert (=> b!7094023 (= res!2897001 (is-Concat!26661 r!11554))))

(declare-fun b!7094024 () Bool)

(declare-fun tp!1949122 () Bool)

(assert (=> b!7094024 (= e!4264431 tp!1949122)))

(declare-fun b!7094025 () Bool)

(assert (=> b!7094025 (= e!4264431 tp_is_empty!44865)))

(declare-fun b!7094026 () Bool)

(declare-fun res!2896997 () Bool)

(assert (=> b!7094026 (=> (not res!2896997) (not e!4264433))))

(assert (=> b!7094026 (= res!2896997 e!4264432)))

(declare-fun res!2897000 () Bool)

(assert (=> b!7094026 (=> res!2897000 e!4264432)))

(assert (=> b!7094026 (= res!2897000 (not (is-Concat!26661 r!11554)))))

(declare-fun b!7094027 () Bool)

(declare-fun tp!1949120 () Bool)

(assert (=> b!7094027 (= e!4264430 tp!1949120)))

(declare-fun b!7094028 () Bool)

(declare-fun tp!1949125 () Bool)

(declare-fun tp!1949124 () Bool)

(assert (=> b!7094028 (= e!4264431 (and tp!1949125 tp!1949124))))

(declare-fun b!7094029 () Bool)

(declare-fun res!2896998 () Bool)

(assert (=> b!7094029 (=> (not res!2896998) (not e!4264433))))

(declare-fun a!1901 () C!35902)

(assert (=> b!7094029 (= res!2896998 (and (or (not (is-ElementMatch!17816 r!11554)) (not (= (c!1323901 r!11554) a!1901))) (not (is-Union!17816 r!11554))))))

(assert (= (and start!690538 res!2896999) b!7094029))

(assert (= (and b!7094029 res!2896998) b!7094026))

(assert (= (and b!7094026 (not res!2897000)) b!7094022))

(assert (= (and b!7094026 res!2896997) b!7094023))

(assert (= (and b!7094023 res!2897001) b!7094021))

(assert (= (and start!690538 (is-ElementMatch!17816 r!11554)) b!7094025))

(assert (= (and start!690538 (is-Concat!26661 r!11554)) b!7094019))

(assert (= (and start!690538 (is-Star!17816 r!11554)) b!7094024))

(assert (= (and start!690538 (is-Union!17816 r!11554)) b!7094028))

(assert (= start!690538 b!7094020))

(assert (= start!690538 b!7094027))

(declare-fun m!7822400 () Bool)

(assert (=> start!690538 m!7822400))

(declare-fun m!7822402 () Bool)

(assert (=> start!690538 m!7822402))

(declare-fun m!7822404 () Bool)

(assert (=> start!690538 m!7822404))

(declare-fun m!7822406 () Bool)

(assert (=> b!7094021 m!7822406))

(declare-fun m!7822408 () Bool)

(assert (=> b!7094021 m!7822408))

(declare-fun m!7822410 () Bool)

(assert (=> b!7094022 m!7822410))

(push 1)

(assert tp_is_empty!44865)

(assert (not b!7094027))

(assert (not b!7094028))

(assert (not b!7094021))

(assert (not b!7094024))

(assert (not start!690538))

(assert (not b!7094019))

(assert (not b!7094022))

(assert (not b!7094020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217490 () Bool)

(declare-fun nullableFct!2862 (Regex!17816) Bool)

(assert (=> d!2217490 (= (nullable!7456 (regOne!36144 r!11554)) (nullableFct!2862 (regOne!36144 r!11554)))))

(declare-fun bs!1883779 () Bool)

(assert (= bs!1883779 d!2217490))

(declare-fun m!7822424 () Bool)

(assert (=> bs!1883779 m!7822424))

(assert (=> b!7094022 d!2217490))

(declare-fun d!2217492 () Bool)

(declare-fun res!2897021 () Bool)

(declare-fun e!4264453 () Bool)

(assert (=> d!2217492 (=> res!2897021 e!4264453)))

(assert (=> d!2217492 (= res!2897021 (is-Nil!68655 (exprs!7312 c!9994)))))

(assert (=> d!2217492 (= (forall!16744 (exprs!7312 c!9994) lambda!430256) e!4264453)))

(declare-fun b!7094067 () Bool)

(declare-fun e!4264454 () Bool)

(assert (=> b!7094067 (= e!4264453 e!4264454)))

(declare-fun res!2897022 () Bool)

(assert (=> b!7094067 (=> (not res!2897022) (not e!4264454))))

(declare-fun dynLambda!28012 (Int Regex!17816) Bool)

(assert (=> b!7094067 (= res!2897022 (dynLambda!28012 lambda!430256 (h!75103 (exprs!7312 c!9994))))))

(declare-fun b!7094068 () Bool)

(assert (=> b!7094068 (= e!4264454 (forall!16744 (t!382574 (exprs!7312 c!9994)) lambda!430256))))

(assert (= (and d!2217492 (not res!2897021)) b!7094067))

(assert (= (and b!7094067 res!2897022) b!7094068))

(declare-fun b_lambda!271097 () Bool)

(assert (=> (not b_lambda!271097) (not b!7094067)))

(declare-fun m!7822426 () Bool)

(assert (=> b!7094067 m!7822426))

(declare-fun m!7822428 () Bool)

(assert (=> b!7094068 m!7822428))

(assert (=> b!7094021 d!2217492))

(declare-fun d!2217496 () Bool)

(declare-fun ++!15981 (List!68779 List!68779) List!68779)

(assert (=> d!2217496 (forall!16744 (++!15981 (exprs!7312 c!9994) (exprs!7312 auxCtx!45)) lambda!430256)))

(declare-fun lt!2556931 () Unit!162315)

(declare-fun choose!54701 (List!68779 List!68779 Int) Unit!162315)

(assert (=> d!2217496 (= lt!2556931 (choose!54701 (exprs!7312 c!9994) (exprs!7312 auxCtx!45) lambda!430256))))

(assert (=> d!2217496 (forall!16744 (exprs!7312 c!9994) lambda!430256)))

(assert (=> d!2217496 (= (lemmaConcatPreservesForall!1111 (exprs!7312 c!9994) (exprs!7312 auxCtx!45) lambda!430256) lt!2556931)))

(declare-fun bs!1883780 () Bool)

(assert (= bs!1883780 d!2217496))

(declare-fun m!7822430 () Bool)

(assert (=> bs!1883780 m!7822430))

(assert (=> bs!1883780 m!7822430))

(declare-fun m!7822432 () Bool)

(assert (=> bs!1883780 m!7822432))

(declare-fun m!7822434 () Bool)

(assert (=> bs!1883780 m!7822434))

(assert (=> bs!1883780 m!7822406))

(assert (=> b!7094021 d!2217496))

(declare-fun b!7094105 () Bool)

(declare-fun e!4264485 () Bool)

(declare-fun call!645445 () Bool)

(assert (=> b!7094105 (= e!4264485 call!645445)))

(declare-fun b!7094106 () Bool)

(declare-fun e!4264488 () Bool)

(declare-fun e!4264487 () Bool)

(assert (=> b!7094106 (= e!4264488 e!4264487)))

(declare-fun res!2897045 () Bool)

(assert (=> b!7094106 (=> (not res!2897045) (not e!4264487))))

(assert (=> b!7094106 (= res!2897045 call!645445)))

(declare-fun bm!645439 () Bool)

(declare-fun call!645446 () Bool)

(declare-fun call!645444 () Bool)

(assert (=> bm!645439 (= call!645446 call!645444)))

(declare-fun c!1323912 () Bool)

(declare-fun bm!645440 () Bool)

(declare-fun c!1323911 () Bool)

(assert (=> bm!645440 (= call!645444 (validRegex!9091 (ite c!1323911 (reg!18145 r!11554) (ite c!1323912 (regOne!36145 r!11554) (regTwo!36144 r!11554)))))))

(declare-fun b!7094107 () Bool)

(declare-fun res!2897046 () Bool)

(assert (=> b!7094107 (=> (not res!2897046) (not e!4264485))))

(assert (=> b!7094107 (= res!2897046 call!645446)))

(declare-fun e!4264484 () Bool)

(assert (=> b!7094107 (= e!4264484 e!4264485)))

(declare-fun b!7094108 () Bool)

(declare-fun e!4264489 () Bool)

(assert (=> b!7094108 (= e!4264489 e!4264484)))

(assert (=> b!7094108 (= c!1323912 (is-Union!17816 r!11554))))

(declare-fun b!7094109 () Bool)

(declare-fun res!2897044 () Bool)

(assert (=> b!7094109 (=> res!2897044 e!4264488)))

(assert (=> b!7094109 (= res!2897044 (not (is-Concat!26661 r!11554)))))

(assert (=> b!7094109 (= e!4264484 e!4264488)))

(declare-fun b!7094110 () Bool)

(declare-fun e!4264483 () Bool)

(assert (=> b!7094110 (= e!4264483 call!645444)))

(declare-fun bm!645441 () Bool)

(assert (=> bm!645441 (= call!645445 (validRegex!9091 (ite c!1323912 (regTwo!36145 r!11554) (regOne!36144 r!11554))))))

(declare-fun b!7094111 () Bool)

(assert (=> b!7094111 (= e!4264487 call!645446)))

(declare-fun d!2217498 () Bool)

(declare-fun res!2897043 () Bool)

(declare-fun e!4264486 () Bool)

(assert (=> d!2217498 (=> res!2897043 e!4264486)))

(assert (=> d!2217498 (= res!2897043 (is-ElementMatch!17816 r!11554))))

(assert (=> d!2217498 (= (validRegex!9091 r!11554) e!4264486)))

(declare-fun b!7094112 () Bool)

(assert (=> b!7094112 (= e!4264489 e!4264483)))

(declare-fun res!2897047 () Bool)

(assert (=> b!7094112 (= res!2897047 (not (nullable!7456 (reg!18145 r!11554))))))

(assert (=> b!7094112 (=> (not res!2897047) (not e!4264483))))

(declare-fun b!7094113 () Bool)

(assert (=> b!7094113 (= e!4264486 e!4264489)))

(assert (=> b!7094113 (= c!1323911 (is-Star!17816 r!11554))))

(assert (= (and d!2217498 (not res!2897043)) b!7094113))

(assert (= (and b!7094113 c!1323911) b!7094112))

(assert (= (and b!7094113 (not c!1323911)) b!7094108))

(assert (= (and b!7094112 res!2897047) b!7094110))

(assert (= (and b!7094108 c!1323912) b!7094107))

(assert (= (and b!7094108 (not c!1323912)) b!7094109))

(assert (= (and b!7094107 res!2897046) b!7094105))

(assert (= (and b!7094109 (not res!2897044)) b!7094106))

(assert (= (and b!7094106 res!2897045) b!7094111))

(assert (= (or b!7094107 b!7094111) bm!645439))

(assert (= (or b!7094105 b!7094106) bm!645441))

(assert (= (or b!7094110 bm!645439) bm!645440))

(declare-fun m!7822436 () Bool)

(assert (=> bm!645440 m!7822436))

(declare-fun m!7822438 () Bool)

(assert (=> bm!645441 m!7822438))

(declare-fun m!7822440 () Bool)

(assert (=> b!7094112 m!7822440))

(assert (=> start!690538 d!2217498))

(declare-fun bs!1883781 () Bool)

(declare-fun d!2217500 () Bool)

(assert (= bs!1883781 (and d!2217500 b!7094021)))

(declare-fun lambda!430264 () Int)

(assert (=> bs!1883781 (= lambda!430264 lambda!430256)))

(assert (=> d!2217500 (= (inv!87406 c!9994) (forall!16744 (exprs!7312 c!9994) lambda!430264))))

(declare-fun bs!1883782 () Bool)

(assert (= bs!1883782 d!2217500))

(declare-fun m!7822442 () Bool)

(assert (=> bs!1883782 m!7822442))

(assert (=> start!690538 d!2217500))

(declare-fun bs!1883783 () Bool)

(declare-fun d!2217502 () Bool)

(assert (= bs!1883783 (and d!2217502 b!7094021)))

(declare-fun lambda!430265 () Int)

(assert (=> bs!1883783 (= lambda!430265 lambda!430256)))

(declare-fun bs!1883784 () Bool)

(assert (= bs!1883784 (and d!2217502 d!2217500)))

(assert (=> bs!1883784 (= lambda!430265 lambda!430264)))

(assert (=> d!2217502 (= (inv!87406 auxCtx!45) (forall!16744 (exprs!7312 auxCtx!45) lambda!430265))))

(declare-fun bs!1883785 () Bool)

(assert (= bs!1883785 d!2217502))

(declare-fun m!7822444 () Bool)

(assert (=> bs!1883785 m!7822444))

(assert (=> start!690538 d!2217502))

(declare-fun b!7094118 () Bool)

(declare-fun e!4264492 () Bool)

(declare-fun tp!1949151 () Bool)

(declare-fun tp!1949152 () Bool)

(assert (=> b!7094118 (= e!4264492 (and tp!1949151 tp!1949152))))

(assert (=> b!7094027 (= tp!1949120 e!4264492)))

(assert (= (and b!7094027 (is-Cons!68655 (exprs!7312 auxCtx!45))) b!7094118))

(declare-fun b!7094119 () Bool)

(declare-fun e!4264493 () Bool)

(declare-fun tp!1949153 () Bool)

(declare-fun tp!1949154 () Bool)

(assert (=> b!7094119 (= e!4264493 (and tp!1949153 tp!1949154))))

(assert (=> b!7094020 (= tp!1949119 e!4264493)))

(assert (= (and b!7094020 (is-Cons!68655 (exprs!7312 c!9994))) b!7094119))

(declare-fun b!7094133 () Bool)

(declare-fun e!4264496 () Bool)

(declare-fun tp!1949169 () Bool)

(declare-fun tp!1949168 () Bool)

(assert (=> b!7094133 (= e!4264496 (and tp!1949169 tp!1949168))))

(assert (=> b!7094019 (= tp!1949121 e!4264496)))

(declare-fun b!7094130 () Bool)

(assert (=> b!7094130 (= e!4264496 tp_is_empty!44865)))

(declare-fun b!7094131 () Bool)

(declare-fun tp!1949165 () Bool)

(declare-fun tp!1949166 () Bool)

(assert (=> b!7094131 (= e!4264496 (and tp!1949165 tp!1949166))))

(declare-fun b!7094132 () Bool)

(declare-fun tp!1949167 () Bool)

(assert (=> b!7094132 (= e!4264496 tp!1949167)))

(assert (= (and b!7094019 (is-ElementMatch!17816 (regOne!36144 r!11554))) b!7094130))

(assert (= (and b!7094019 (is-Concat!26661 (regOne!36144 r!11554))) b!7094131))

(assert (= (and b!7094019 (is-Star!17816 (regOne!36144 r!11554))) b!7094132))

(assert (= (and b!7094019 (is-Union!17816 (regOne!36144 r!11554))) b!7094133))

(declare-fun b!7094137 () Bool)

(declare-fun e!4264497 () Bool)

(declare-fun tp!1949174 () Bool)

(declare-fun tp!1949173 () Bool)

(assert (=> b!7094137 (= e!4264497 (and tp!1949174 tp!1949173))))

(assert (=> b!7094019 (= tp!1949123 e!4264497)))

(declare-fun b!7094134 () Bool)

(assert (=> b!7094134 (= e!4264497 tp_is_empty!44865)))

(declare-fun b!7094135 () Bool)

(declare-fun tp!1949170 () Bool)

(declare-fun tp!1949171 () Bool)

(assert (=> b!7094135 (= e!4264497 (and tp!1949170 tp!1949171))))

(declare-fun b!7094136 () Bool)

(declare-fun tp!1949172 () Bool)

(assert (=> b!7094136 (= e!4264497 tp!1949172)))

(assert (= (and b!7094019 (is-ElementMatch!17816 (regTwo!36144 r!11554))) b!7094134))

(assert (= (and b!7094019 (is-Concat!26661 (regTwo!36144 r!11554))) b!7094135))

(assert (= (and b!7094019 (is-Star!17816 (regTwo!36144 r!11554))) b!7094136))

(assert (= (and b!7094019 (is-Union!17816 (regTwo!36144 r!11554))) b!7094137))

(declare-fun b!7094141 () Bool)

(declare-fun e!4264498 () Bool)

(declare-fun tp!1949179 () Bool)

(declare-fun tp!1949178 () Bool)

(assert (=> b!7094141 (= e!4264498 (and tp!1949179 tp!1949178))))

(assert (=> b!7094024 (= tp!1949122 e!4264498)))

(declare-fun b!7094138 () Bool)

(assert (=> b!7094138 (= e!4264498 tp_is_empty!44865)))

(declare-fun b!7094139 () Bool)

(declare-fun tp!1949175 () Bool)

(declare-fun tp!1949176 () Bool)

(assert (=> b!7094139 (= e!4264498 (and tp!1949175 tp!1949176))))

(declare-fun b!7094140 () Bool)

(declare-fun tp!1949177 () Bool)

(assert (=> b!7094140 (= e!4264498 tp!1949177)))

(assert (= (and b!7094024 (is-ElementMatch!17816 (reg!18145 r!11554))) b!7094138))

(assert (= (and b!7094024 (is-Concat!26661 (reg!18145 r!11554))) b!7094139))

(assert (= (and b!7094024 (is-Star!17816 (reg!18145 r!11554))) b!7094140))

(assert (= (and b!7094024 (is-Union!17816 (reg!18145 r!11554))) b!7094141))

(declare-fun b!7094145 () Bool)

(declare-fun e!4264499 () Bool)

(declare-fun tp!1949184 () Bool)

(declare-fun tp!1949183 () Bool)

(assert (=> b!7094145 (= e!4264499 (and tp!1949184 tp!1949183))))

(assert (=> b!7094028 (= tp!1949125 e!4264499)))

(declare-fun b!7094142 () Bool)

(assert (=> b!7094142 (= e!4264499 tp_is_empty!44865)))

(declare-fun b!7094143 () Bool)

(declare-fun tp!1949180 () Bool)

(declare-fun tp!1949181 () Bool)

(assert (=> b!7094143 (= e!4264499 (and tp!1949180 tp!1949181))))

(declare-fun b!7094144 () Bool)

(declare-fun tp!1949182 () Bool)

(assert (=> b!7094144 (= e!4264499 tp!1949182)))

(assert (= (and b!7094028 (is-ElementMatch!17816 (regOne!36145 r!11554))) b!7094142))

(assert (= (and b!7094028 (is-Concat!26661 (regOne!36145 r!11554))) b!7094143))

(assert (= (and b!7094028 (is-Star!17816 (regOne!36145 r!11554))) b!7094144))

(assert (= (and b!7094028 (is-Union!17816 (regOne!36145 r!11554))) b!7094145))

(declare-fun b!7094149 () Bool)

(declare-fun e!4264500 () Bool)

(declare-fun tp!1949189 () Bool)

(declare-fun tp!1949188 () Bool)

(assert (=> b!7094149 (= e!4264500 (and tp!1949189 tp!1949188))))

(assert (=> b!7094028 (= tp!1949124 e!4264500)))

(declare-fun b!7094146 () Bool)

(assert (=> b!7094146 (= e!4264500 tp_is_empty!44865)))

(declare-fun b!7094147 () Bool)

(declare-fun tp!1949185 () Bool)

(declare-fun tp!1949186 () Bool)

(assert (=> b!7094147 (= e!4264500 (and tp!1949185 tp!1949186))))

(declare-fun b!7094148 () Bool)

(declare-fun tp!1949187 () Bool)

(assert (=> b!7094148 (= e!4264500 tp!1949187)))

(assert (= (and b!7094028 (is-ElementMatch!17816 (regTwo!36145 r!11554))) b!7094146))

(assert (= (and b!7094028 (is-Concat!26661 (regTwo!36145 r!11554))) b!7094147))

(assert (= (and b!7094028 (is-Star!17816 (regTwo!36145 r!11554))) b!7094148))

(assert (= (and b!7094028 (is-Union!17816 (regTwo!36145 r!11554))) b!7094149))

(declare-fun b_lambda!271099 () Bool)

(assert (= b_lambda!271097 (or b!7094021 b_lambda!271099)))

(declare-fun bs!1883786 () Bool)

(declare-fun d!2217504 () Bool)

(assert (= bs!1883786 (and d!2217504 b!7094021)))

(assert (=> bs!1883786 (= (dynLambda!28012 lambda!430256 (h!75103 (exprs!7312 c!9994))) (validRegex!9091 (h!75103 (exprs!7312 c!9994))))))

(declare-fun m!7822446 () Bool)

(assert (=> bs!1883786 m!7822446))

(assert (=> b!7094067 d!2217504))

(push 1)

(assert tp_is_empty!44865)

(assert (not b!7094147))

(assert (not bm!645441))

(assert (not b!7094137))

(assert (not b!7094145))

(assert (not b!7094112))

(assert (not d!2217496))

(assert (not d!2217490))

(assert (not b!7094118))

(assert (not b!7094068))

(assert (not bs!1883786))

(assert (not b!7094143))

(assert (not b!7094141))

(assert (not b!7094131))

(assert (not b!7094139))

(assert (not b!7094144))

(assert (not b!7094133))

(assert (not b!7094119))

(assert (not b_lambda!271099))

(assert (not b!7094136))

(assert (not b!7094132))

(assert (not b!7094140))

(assert (not b!7094148))

(assert (not b!7094135))

(assert (not d!2217500))

(assert (not d!2217502))

(assert (not b!7094149))

(assert (not bm!645440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

