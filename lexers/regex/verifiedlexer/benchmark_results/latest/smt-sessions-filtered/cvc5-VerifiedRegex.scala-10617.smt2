; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!545572 () Bool)

(assert start!545572)

(declare-fun b!5157098 () Bool)

(declare-fun e!3214163 () Bool)

(declare-datatypes ((C!29314 0))(
  ( (C!29315 (val!24309 Int)) )
))
(declare-datatypes ((Regex!14524 0))(
  ( (ElementMatch!14524 (c!887565 C!29314)) (Concat!23369 (regOne!29560 Regex!14524) (regTwo!29560 Regex!14524)) (EmptyExpr!14524) (Star!14524 (reg!14853 Regex!14524)) (EmptyLang!14524) (Union!14524 (regOne!29561 Regex!14524) (regTwo!29561 Regex!14524)) )
))
(declare-datatypes ((List!59965 0))(
  ( (Nil!59841) (Cons!59841 (h!66289 Regex!14524) (t!373030 List!59965)) )
))
(declare-datatypes ((Context!7816 0))(
  ( (Context!7817 (exprs!4408 List!59965)) )
))
(declare-fun ctx!100 () Context!7816)

(declare-fun lostCause!1600 (Context!7816) Bool)

(assert (=> b!5157098 (= e!3214163 (lostCause!1600 ctx!100))))

(declare-fun res!2193578 () Bool)

(declare-fun e!3214165 () Bool)

(assert (=> start!545572 (=> (not res!2193578) (not e!3214165))))

(declare-fun expr!117 () Regex!14524)

(declare-fun validRegex!6379 (Regex!14524) Bool)

(assert (=> start!545572 (= res!2193578 (validRegex!6379 expr!117))))

(assert (=> start!545572 e!3214165))

(declare-fun e!3214164 () Bool)

(assert (=> start!545572 e!3214164))

(declare-fun e!3214167 () Bool)

(declare-fun inv!79492 (Context!7816) Bool)

(assert (=> start!545572 (and (inv!79492 ctx!100) e!3214167)))

(declare-fun tp_is_empty!38197 () Bool)

(assert (=> start!545572 tp_is_empty!38197))

(declare-fun b!5157099 () Bool)

(declare-fun tp!1443980 () Bool)

(assert (=> b!5157099 (= e!3214167 tp!1443980)))

(declare-fun b!5157100 () Bool)

(declare-fun res!2193575 () Bool)

(assert (=> b!5157100 (=> (not res!2193575) (not e!3214165))))

(assert (=> b!5157100 (= res!2193575 (and (not (is-Concat!23369 expr!117)) (is-Star!14524 expr!117)))))

(declare-fun b!5157101 () Bool)

(declare-fun res!2193573 () Bool)

(assert (=> b!5157101 (=> (not res!2193573) (not e!3214165))))

(assert (=> b!5157101 (= res!2193573 e!3214163)))

(declare-fun res!2193576 () Bool)

(assert (=> b!5157101 (=> res!2193576 e!3214163)))

(declare-fun lostCause!1601 (Regex!14524) Bool)

(assert (=> b!5157101 (= res!2193576 (lostCause!1601 expr!117))))

(declare-fun b!5157102 () Bool)

(assert (=> b!5157102 (= e!3214164 tp_is_empty!38197)))

(declare-fun b!5157103 () Bool)

(declare-fun tp!1443977 () Bool)

(declare-fun tp!1443981 () Bool)

(assert (=> b!5157103 (= e!3214164 (and tp!1443977 tp!1443981))))

(declare-fun b!5157104 () Bool)

(assert (=> b!5157104 (= e!3214165 (not (validRegex!6379 (reg!14853 expr!117))))))

(declare-fun b!5157105 () Bool)

(declare-fun tp!1443976 () Bool)

(declare-fun tp!1443979 () Bool)

(assert (=> b!5157105 (= e!3214164 (and tp!1443976 tp!1443979))))

(declare-fun b!5157106 () Bool)

(declare-fun tp!1443978 () Bool)

(assert (=> b!5157106 (= e!3214164 tp!1443978)))

(declare-fun b!5157107 () Bool)

(declare-fun res!2193579 () Bool)

(assert (=> b!5157107 (=> (not res!2193579) (not e!3214165))))

(declare-fun a!1296 () C!29314)

(assert (=> b!5157107 (= res!2193579 (and (or (not (is-ElementMatch!14524 expr!117)) (not (= (c!887565 expr!117) a!1296))) (not (is-Union!14524 expr!117))))))

(declare-fun b!5157108 () Bool)

(declare-fun res!2193574 () Bool)

(assert (=> b!5157108 (=> (not res!2193574) (not e!3214165))))

(declare-fun e!3214166 () Bool)

(assert (=> b!5157108 (= res!2193574 e!3214166)))

(declare-fun res!2193577 () Bool)

(assert (=> b!5157108 (=> res!2193577 e!3214166)))

(assert (=> b!5157108 (= res!2193577 (not (is-Concat!23369 expr!117)))))

(declare-fun b!5157109 () Bool)

(declare-fun nullable!4880 (Regex!14524) Bool)

(assert (=> b!5157109 (= e!3214166 (not (nullable!4880 (regOne!29560 expr!117))))))

(assert (= (and start!545572 res!2193578) b!5157101))

(assert (= (and b!5157101 (not res!2193576)) b!5157098))

(assert (= (and b!5157101 res!2193573) b!5157107))

(assert (= (and b!5157107 res!2193579) b!5157108))

(assert (= (and b!5157108 (not res!2193577)) b!5157109))

(assert (= (and b!5157108 res!2193574) b!5157100))

(assert (= (and b!5157100 res!2193575) b!5157104))

(assert (= (and start!545572 (is-ElementMatch!14524 expr!117)) b!5157102))

(assert (= (and start!545572 (is-Concat!23369 expr!117)) b!5157105))

(assert (= (and start!545572 (is-Star!14524 expr!117)) b!5157106))

(assert (= (and start!545572 (is-Union!14524 expr!117)) b!5157103))

(assert (= start!545572 b!5157099))

(declare-fun m!6211108 () Bool)

(assert (=> b!5157101 m!6211108))

(declare-fun m!6211110 () Bool)

(assert (=> b!5157109 m!6211110))

(declare-fun m!6211112 () Bool)

(assert (=> b!5157098 m!6211112))

(declare-fun m!6211114 () Bool)

(assert (=> start!545572 m!6211114))

(declare-fun m!6211116 () Bool)

(assert (=> start!545572 m!6211116))

(declare-fun m!6211118 () Bool)

(assert (=> b!5157104 m!6211118))

(push 1)

(assert (not b!5157109))

(assert tp_is_empty!38197)

(assert (not b!5157101))

(assert (not b!5157099))

(assert (not b!5157098))

(assert (not b!5157104))

(assert (not start!545572))

(assert (not b!5157105))

(assert (not b!5157106))

(assert (not b!5157103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5157191 () Bool)

(declare-fun e!3214224 () Bool)

(declare-fun call!361463 () Bool)

(assert (=> b!5157191 (= e!3214224 call!361463)))

(declare-fun b!5157192 () Bool)

(declare-fun e!3214221 () Bool)

(declare-fun e!3214220 () Bool)

(assert (=> b!5157192 (= e!3214221 e!3214220)))

(declare-fun c!887577 () Bool)

(assert (=> b!5157192 (= c!887577 (is-Union!14524 (reg!14853 expr!117)))))

(declare-fun b!5157193 () Bool)

(declare-fun e!3214219 () Bool)

(declare-fun e!3214218 () Bool)

(assert (=> b!5157193 (= e!3214219 e!3214218)))

(declare-fun res!2193630 () Bool)

(assert (=> b!5157193 (=> (not res!2193630) (not e!3214218))))

(declare-fun call!361462 () Bool)

(assert (=> b!5157193 (= res!2193630 call!361462)))

(declare-fun bm!361456 () Bool)

(declare-fun call!361461 () Bool)

(declare-fun c!887578 () Bool)

(assert (=> bm!361456 (= call!361461 (validRegex!6379 (ite c!887578 (reg!14853 (reg!14853 expr!117)) (ite c!887577 (regOne!29561 (reg!14853 expr!117)) (regOne!29560 (reg!14853 expr!117))))))))

(declare-fun bm!361457 () Bool)

(assert (=> bm!361457 (= call!361463 (validRegex!6379 (ite c!887577 (regTwo!29561 (reg!14853 expr!117)) (regTwo!29560 (reg!14853 expr!117)))))))

(declare-fun d!1665148 () Bool)

(declare-fun res!2193628 () Bool)

(declare-fun e!3214223 () Bool)

(assert (=> d!1665148 (=> res!2193628 e!3214223)))

(assert (=> d!1665148 (= res!2193628 (is-ElementMatch!14524 (reg!14853 expr!117)))))

(assert (=> d!1665148 (= (validRegex!6379 (reg!14853 expr!117)) e!3214223)))

(declare-fun b!5157194 () Bool)

(assert (=> b!5157194 (= e!3214218 call!361463)))

(declare-fun b!5157195 () Bool)

(declare-fun res!2193626 () Bool)

(assert (=> b!5157195 (=> res!2193626 e!3214219)))

(assert (=> b!5157195 (= res!2193626 (not (is-Concat!23369 (reg!14853 expr!117))))))

(assert (=> b!5157195 (= e!3214220 e!3214219)))

(declare-fun bm!361458 () Bool)

(assert (=> bm!361458 (= call!361462 call!361461)))

(declare-fun b!5157196 () Bool)

(assert (=> b!5157196 (= e!3214223 e!3214221)))

(assert (=> b!5157196 (= c!887578 (is-Star!14524 (reg!14853 expr!117)))))

(declare-fun b!5157197 () Bool)

(declare-fun e!3214222 () Bool)

(assert (=> b!5157197 (= e!3214222 call!361461)))

(declare-fun b!5157198 () Bool)

(assert (=> b!5157198 (= e!3214221 e!3214222)))

(declare-fun res!2193627 () Bool)

(assert (=> b!5157198 (= res!2193627 (not (nullable!4880 (reg!14853 (reg!14853 expr!117)))))))

(assert (=> b!5157198 (=> (not res!2193627) (not e!3214222))))

(declare-fun b!5157199 () Bool)

(declare-fun res!2193629 () Bool)

(assert (=> b!5157199 (=> (not res!2193629) (not e!3214224))))

(assert (=> b!5157199 (= res!2193629 call!361462)))

(assert (=> b!5157199 (= e!3214220 e!3214224)))

(assert (= (and d!1665148 (not res!2193628)) b!5157196))

(assert (= (and b!5157196 c!887578) b!5157198))

(assert (= (and b!5157196 (not c!887578)) b!5157192))

(assert (= (and b!5157198 res!2193627) b!5157197))

(assert (= (and b!5157192 c!887577) b!5157199))

(assert (= (and b!5157192 (not c!887577)) b!5157195))

(assert (= (and b!5157199 res!2193629) b!5157191))

(assert (= (and b!5157195 (not res!2193626)) b!5157193))

(assert (= (and b!5157193 res!2193630) b!5157194))

(assert (= (or b!5157191 b!5157194) bm!361457))

(assert (= (or b!5157199 b!5157193) bm!361458))

(assert (= (or b!5157197 bm!361458) bm!361456))

(declare-fun m!6211138 () Bool)

(assert (=> bm!361456 m!6211138))

(declare-fun m!6211140 () Bool)

(assert (=> bm!361457 m!6211140))

(declare-fun m!6211142 () Bool)

(assert (=> b!5157198 m!6211142))

(assert (=> b!5157104 d!1665148))

(declare-fun d!1665152 () Bool)

(declare-fun lambda!257482 () Int)

(declare-fun exists!1865 (List!59965 Int) Bool)

(assert (=> d!1665152 (= (lostCause!1600 ctx!100) (exists!1865 (exprs!4408 ctx!100) lambda!257482))))

(declare-fun bs!1202273 () Bool)

(assert (= bs!1202273 d!1665152))

(declare-fun m!6211144 () Bool)

(assert (=> bs!1202273 m!6211144))

(assert (=> b!5157098 d!1665152))

(declare-fun d!1665154 () Bool)

(declare-fun nullableFct!1356 (Regex!14524) Bool)

(assert (=> d!1665154 (= (nullable!4880 (regOne!29560 expr!117)) (nullableFct!1356 (regOne!29560 expr!117)))))

(declare-fun bs!1202274 () Bool)

(assert (= bs!1202274 d!1665154))

(declare-fun m!6211146 () Bool)

(assert (=> bs!1202274 m!6211146))

(assert (=> b!5157109 d!1665154))

(declare-fun b!5157200 () Bool)

(declare-fun e!3214231 () Bool)

(declare-fun call!361466 () Bool)

(assert (=> b!5157200 (= e!3214231 call!361466)))

(declare-fun b!5157201 () Bool)

(declare-fun e!3214228 () Bool)

(declare-fun e!3214227 () Bool)

(assert (=> b!5157201 (= e!3214228 e!3214227)))

(declare-fun c!887579 () Bool)

(assert (=> b!5157201 (= c!887579 (is-Union!14524 expr!117))))

(declare-fun b!5157202 () Bool)

(declare-fun e!3214226 () Bool)

(declare-fun e!3214225 () Bool)

(assert (=> b!5157202 (= e!3214226 e!3214225)))

(declare-fun res!2193635 () Bool)

(assert (=> b!5157202 (=> (not res!2193635) (not e!3214225))))

(declare-fun call!361465 () Bool)

(assert (=> b!5157202 (= res!2193635 call!361465)))

(declare-fun c!887580 () Bool)

(declare-fun bm!361459 () Bool)

(declare-fun call!361464 () Bool)

(assert (=> bm!361459 (= call!361464 (validRegex!6379 (ite c!887580 (reg!14853 expr!117) (ite c!887579 (regOne!29561 expr!117) (regOne!29560 expr!117)))))))

(declare-fun bm!361460 () Bool)

(assert (=> bm!361460 (= call!361466 (validRegex!6379 (ite c!887579 (regTwo!29561 expr!117) (regTwo!29560 expr!117))))))

(declare-fun d!1665156 () Bool)

(declare-fun res!2193633 () Bool)

(declare-fun e!3214230 () Bool)

(assert (=> d!1665156 (=> res!2193633 e!3214230)))

(assert (=> d!1665156 (= res!2193633 (is-ElementMatch!14524 expr!117))))

(assert (=> d!1665156 (= (validRegex!6379 expr!117) e!3214230)))

(declare-fun b!5157203 () Bool)

(assert (=> b!5157203 (= e!3214225 call!361466)))

(declare-fun b!5157204 () Bool)

(declare-fun res!2193631 () Bool)

(assert (=> b!5157204 (=> res!2193631 e!3214226)))

(assert (=> b!5157204 (= res!2193631 (not (is-Concat!23369 expr!117)))))

(assert (=> b!5157204 (= e!3214227 e!3214226)))

(declare-fun bm!361461 () Bool)

(assert (=> bm!361461 (= call!361465 call!361464)))

(declare-fun b!5157205 () Bool)

(assert (=> b!5157205 (= e!3214230 e!3214228)))

(assert (=> b!5157205 (= c!887580 (is-Star!14524 expr!117))))

(declare-fun b!5157206 () Bool)

(declare-fun e!3214229 () Bool)

(assert (=> b!5157206 (= e!3214229 call!361464)))

(declare-fun b!5157207 () Bool)

(assert (=> b!5157207 (= e!3214228 e!3214229)))

(declare-fun res!2193632 () Bool)

(assert (=> b!5157207 (= res!2193632 (not (nullable!4880 (reg!14853 expr!117))))))

(assert (=> b!5157207 (=> (not res!2193632) (not e!3214229))))

(declare-fun b!5157208 () Bool)

(declare-fun res!2193634 () Bool)

(assert (=> b!5157208 (=> (not res!2193634) (not e!3214231))))

(assert (=> b!5157208 (= res!2193634 call!361465)))

(assert (=> b!5157208 (= e!3214227 e!3214231)))

(assert (= (and d!1665156 (not res!2193633)) b!5157205))

(assert (= (and b!5157205 c!887580) b!5157207))

(assert (= (and b!5157205 (not c!887580)) b!5157201))

(assert (= (and b!5157207 res!2193632) b!5157206))

(assert (= (and b!5157201 c!887579) b!5157208))

(assert (= (and b!5157201 (not c!887579)) b!5157204))

(assert (= (and b!5157208 res!2193634) b!5157200))

(assert (= (and b!5157204 (not res!2193631)) b!5157202))

(assert (= (and b!5157202 res!2193635) b!5157203))

(assert (= (or b!5157200 b!5157203) bm!361460))

(assert (= (or b!5157208 b!5157202) bm!361461))

(assert (= (or b!5157206 bm!361461) bm!361459))

(declare-fun m!6211148 () Bool)

(assert (=> bm!361459 m!6211148))

(declare-fun m!6211150 () Bool)

(assert (=> bm!361460 m!6211150))

(declare-fun m!6211152 () Bool)

(assert (=> b!5157207 m!6211152))

(assert (=> start!545572 d!1665156))

(declare-fun bs!1202275 () Bool)

(declare-fun d!1665158 () Bool)

(assert (= bs!1202275 (and d!1665158 d!1665152)))

(declare-fun lambda!257485 () Int)

(assert (=> bs!1202275 (not (= lambda!257485 lambda!257482))))

(declare-fun forall!14016 (List!59965 Int) Bool)

(assert (=> d!1665158 (= (inv!79492 ctx!100) (forall!14016 (exprs!4408 ctx!100) lambda!257485))))

(declare-fun bs!1202276 () Bool)

(assert (= bs!1202276 d!1665158))

(declare-fun m!6211154 () Bool)

(assert (=> bs!1202276 m!6211154))

(assert (=> start!545572 d!1665158))

(declare-fun d!1665160 () Bool)

(declare-fun lostCauseFct!397 (Regex!14524) Bool)

(assert (=> d!1665160 (= (lostCause!1601 expr!117) (lostCauseFct!397 expr!117))))

(declare-fun bs!1202277 () Bool)

(assert (= bs!1202277 d!1665160))

(declare-fun m!6211156 () Bool)

(assert (=> bs!1202277 m!6211156))

(assert (=> b!5157101 d!1665160))

(declare-fun b!5157220 () Bool)

(declare-fun e!3214234 () Bool)

(declare-fun tp!1444012 () Bool)

(declare-fun tp!1444013 () Bool)

(assert (=> b!5157220 (= e!3214234 (and tp!1444012 tp!1444013))))

(assert (=> b!5157105 (= tp!1443976 e!3214234)))

(declare-fun b!5157219 () Bool)

(assert (=> b!5157219 (= e!3214234 tp_is_empty!38197)))

(declare-fun b!5157221 () Bool)

(declare-fun tp!1444010 () Bool)

(assert (=> b!5157221 (= e!3214234 tp!1444010)))

(declare-fun b!5157222 () Bool)

(declare-fun tp!1444014 () Bool)

(declare-fun tp!1444011 () Bool)

(assert (=> b!5157222 (= e!3214234 (and tp!1444014 tp!1444011))))

(assert (= (and b!5157105 (is-ElementMatch!14524 (regOne!29560 expr!117))) b!5157219))

(assert (= (and b!5157105 (is-Concat!23369 (regOne!29560 expr!117))) b!5157220))

(assert (= (and b!5157105 (is-Star!14524 (regOne!29560 expr!117))) b!5157221))

(assert (= (and b!5157105 (is-Union!14524 (regOne!29560 expr!117))) b!5157222))

(declare-fun b!5157224 () Bool)

(declare-fun e!3214235 () Bool)

(declare-fun tp!1444017 () Bool)

(declare-fun tp!1444018 () Bool)

(assert (=> b!5157224 (= e!3214235 (and tp!1444017 tp!1444018))))

(assert (=> b!5157105 (= tp!1443979 e!3214235)))

(declare-fun b!5157223 () Bool)

(assert (=> b!5157223 (= e!3214235 tp_is_empty!38197)))

(declare-fun b!5157225 () Bool)

(declare-fun tp!1444015 () Bool)

(assert (=> b!5157225 (= e!3214235 tp!1444015)))

(declare-fun b!5157226 () Bool)

(declare-fun tp!1444019 () Bool)

(declare-fun tp!1444016 () Bool)

(assert (=> b!5157226 (= e!3214235 (and tp!1444019 tp!1444016))))

(assert (= (and b!5157105 (is-ElementMatch!14524 (regTwo!29560 expr!117))) b!5157223))

(assert (= (and b!5157105 (is-Concat!23369 (regTwo!29560 expr!117))) b!5157224))

(assert (= (and b!5157105 (is-Star!14524 (regTwo!29560 expr!117))) b!5157225))

(assert (= (and b!5157105 (is-Union!14524 (regTwo!29560 expr!117))) b!5157226))

(declare-fun b!5157231 () Bool)

(declare-fun e!3214238 () Bool)

(declare-fun tp!1444024 () Bool)

(declare-fun tp!1444025 () Bool)

(assert (=> b!5157231 (= e!3214238 (and tp!1444024 tp!1444025))))

(assert (=> b!5157099 (= tp!1443980 e!3214238)))

(assert (= (and b!5157099 (is-Cons!59841 (exprs!4408 ctx!100))) b!5157231))

(declare-fun b!5157233 () Bool)

(declare-fun e!3214239 () Bool)

(declare-fun tp!1444028 () Bool)

(declare-fun tp!1444029 () Bool)

(assert (=> b!5157233 (= e!3214239 (and tp!1444028 tp!1444029))))

(assert (=> b!5157103 (= tp!1443977 e!3214239)))

(declare-fun b!5157232 () Bool)

(assert (=> b!5157232 (= e!3214239 tp_is_empty!38197)))

(declare-fun b!5157234 () Bool)

(declare-fun tp!1444026 () Bool)

(assert (=> b!5157234 (= e!3214239 tp!1444026)))

(declare-fun b!5157235 () Bool)

(declare-fun tp!1444030 () Bool)

(declare-fun tp!1444027 () Bool)

(assert (=> b!5157235 (= e!3214239 (and tp!1444030 tp!1444027))))

(assert (= (and b!5157103 (is-ElementMatch!14524 (regOne!29561 expr!117))) b!5157232))

(assert (= (and b!5157103 (is-Concat!23369 (regOne!29561 expr!117))) b!5157233))

(assert (= (and b!5157103 (is-Star!14524 (regOne!29561 expr!117))) b!5157234))

(assert (= (and b!5157103 (is-Union!14524 (regOne!29561 expr!117))) b!5157235))

(declare-fun b!5157237 () Bool)

(declare-fun e!3214240 () Bool)

(declare-fun tp!1444033 () Bool)

(declare-fun tp!1444034 () Bool)

(assert (=> b!5157237 (= e!3214240 (and tp!1444033 tp!1444034))))

(assert (=> b!5157103 (= tp!1443981 e!3214240)))

(declare-fun b!5157236 () Bool)

(assert (=> b!5157236 (= e!3214240 tp_is_empty!38197)))

(declare-fun b!5157238 () Bool)

(declare-fun tp!1444031 () Bool)

(assert (=> b!5157238 (= e!3214240 tp!1444031)))

(declare-fun b!5157239 () Bool)

(declare-fun tp!1444035 () Bool)

(declare-fun tp!1444032 () Bool)

(assert (=> b!5157239 (= e!3214240 (and tp!1444035 tp!1444032))))

(assert (= (and b!5157103 (is-ElementMatch!14524 (regTwo!29561 expr!117))) b!5157236))

(assert (= (and b!5157103 (is-Concat!23369 (regTwo!29561 expr!117))) b!5157237))

(assert (= (and b!5157103 (is-Star!14524 (regTwo!29561 expr!117))) b!5157238))

(assert (= (and b!5157103 (is-Union!14524 (regTwo!29561 expr!117))) b!5157239))

(declare-fun b!5157241 () Bool)

(declare-fun e!3214241 () Bool)

(declare-fun tp!1444038 () Bool)

(declare-fun tp!1444039 () Bool)

(assert (=> b!5157241 (= e!3214241 (and tp!1444038 tp!1444039))))

(assert (=> b!5157106 (= tp!1443978 e!3214241)))

(declare-fun b!5157240 () Bool)

(assert (=> b!5157240 (= e!3214241 tp_is_empty!38197)))

(declare-fun b!5157242 () Bool)

(declare-fun tp!1444036 () Bool)

(assert (=> b!5157242 (= e!3214241 tp!1444036)))

(declare-fun b!5157243 () Bool)

(declare-fun tp!1444040 () Bool)

(declare-fun tp!1444037 () Bool)

(assert (=> b!5157243 (= e!3214241 (and tp!1444040 tp!1444037))))

(assert (= (and b!5157106 (is-ElementMatch!14524 (reg!14853 expr!117))) b!5157240))

(assert (= (and b!5157106 (is-Concat!23369 (reg!14853 expr!117))) b!5157241))

(assert (= (and b!5157106 (is-Star!14524 (reg!14853 expr!117))) b!5157242))

(assert (= (and b!5157106 (is-Union!14524 (reg!14853 expr!117))) b!5157243))

(push 1)

(assert (not b!5157222))

(assert (not d!1665158))

(assert (not d!1665160))

(assert (not b!5157241))

(assert (not bm!361457))

(assert (not b!5157235))

(assert (not b!5157238))

(assert (not b!5157237))

(assert (not b!5157226))

(assert (not b!5157243))

(assert (not b!5157231))

(assert (not d!1665152))

(assert (not b!5157225))

(assert (not d!1665154))

(assert (not b!5157239))

(assert tp_is_empty!38197)

(assert (not b!5157224))

(assert (not bm!361456))

(assert (not b!5157242))

(assert (not b!5157220))

(assert (not b!5157234))

(assert (not bm!361459))

(assert (not b!5157198))

(assert (not b!5157207))

(assert (not b!5157221))

(assert (not b!5157233))

(assert (not bm!361460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

