; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285406 () Bool)

(assert start!285406)

(declare-fun b!2937240 () Bool)

(declare-fun e!1851458 () Bool)

(declare-datatypes ((C!18338 0))(
  ( (C!18339 (val!11205 Int)) )
))
(declare-datatypes ((Regex!9076 0))(
  ( (ElementMatch!9076 (c!479988 C!18338)) (Concat!14397 (regOne!18664 Regex!9076) (regTwo!18664 Regex!9076)) (EmptyExpr!9076) (Star!9076 (reg!9405 Regex!9076)) (EmptyLang!9076) (Union!9076 (regOne!18665 Regex!9076) (regTwo!18665 Regex!9076)) )
))
(declare-fun r!17423 () Regex!9076)

(declare-fun validRegex!3809 (Regex!9076) Bool)

(assert (=> b!2937240 (= e!1851458 (validRegex!3809 (regTwo!18664 r!17423)))))

(declare-fun lt!1029378 () Regex!9076)

(declare-fun simplify!81 (Regex!9076) Regex!9076)

(assert (=> b!2937240 (= lt!1029378 (simplify!81 (regOne!18664 r!17423)))))

(declare-fun b!2937241 () Bool)

(declare-fun e!1851460 () Bool)

(assert (=> b!2937241 (= e!1851460 (not e!1851458))))

(declare-fun res!1212543 () Bool)

(assert (=> b!2937241 (=> res!1212543 e!1851458)))

(declare-fun lt!1029380 () Bool)

(assert (=> b!2937241 (= res!1212543 (or lt!1029380 (not (is-Concat!14397 r!17423))))))

(declare-datatypes ((List!34941 0))(
  ( (Nil!34817) (Cons!34817 (h!40237 C!18338) (t!234006 List!34941)) )
))
(declare-fun s!11993 () List!34941)

(declare-fun matchRSpec!1213 (Regex!9076 List!34941) Bool)

(assert (=> b!2937241 (= lt!1029380 (matchRSpec!1213 r!17423 s!11993))))

(declare-fun matchR!3958 (Regex!9076 List!34941) Bool)

(assert (=> b!2937241 (= lt!1029380 (matchR!3958 r!17423 s!11993))))

(declare-datatypes ((Unit!48531 0))(
  ( (Unit!48532) )
))
(declare-fun lt!1029379 () Unit!48531)

(declare-fun mainMatchTheorem!1213 (Regex!9076 List!34941) Unit!48531)

(assert (=> b!2937241 (= lt!1029379 (mainMatchTheorem!1213 r!17423 s!11993))))

(declare-fun b!2937242 () Bool)

(declare-fun res!1212542 () Bool)

(assert (=> b!2937242 (=> res!1212542 e!1851458)))

(declare-fun isEmpty!19078 (List!34941) Bool)

(assert (=> b!2937242 (= res!1212542 (isEmpty!19078 s!11993))))

(declare-fun b!2937243 () Bool)

(declare-fun e!1851459 () Bool)

(declare-fun tp_is_empty!15715 () Bool)

(declare-fun tp!940435 () Bool)

(assert (=> b!2937243 (= e!1851459 (and tp_is_empty!15715 tp!940435))))

(declare-fun b!2937244 () Bool)

(declare-fun e!1851461 () Bool)

(assert (=> b!2937244 (= e!1851461 tp_is_empty!15715)))

(declare-fun res!1212541 () Bool)

(assert (=> start!285406 (=> (not res!1212541) (not e!1851460))))

(assert (=> start!285406 (= res!1212541 (validRegex!3809 r!17423))))

(assert (=> start!285406 e!1851460))

(assert (=> start!285406 e!1851461))

(assert (=> start!285406 e!1851459))

(declare-fun b!2937245 () Bool)

(declare-fun tp!940436 () Bool)

(declare-fun tp!940439 () Bool)

(assert (=> b!2937245 (= e!1851461 (and tp!940436 tp!940439))))

(declare-fun b!2937246 () Bool)

(declare-fun tp!940434 () Bool)

(assert (=> b!2937246 (= e!1851461 tp!940434)))

(declare-fun b!2937247 () Bool)

(declare-fun tp!940438 () Bool)

(declare-fun tp!940437 () Bool)

(assert (=> b!2937247 (= e!1851461 (and tp!940438 tp!940437))))

(assert (= (and start!285406 res!1212541) b!2937241))

(assert (= (and b!2937241 (not res!1212543)) b!2937242))

(assert (= (and b!2937242 (not res!1212542)) b!2937240))

(assert (= (and start!285406 (is-ElementMatch!9076 r!17423)) b!2937244))

(assert (= (and start!285406 (is-Concat!14397 r!17423)) b!2937247))

(assert (= (and start!285406 (is-Star!9076 r!17423)) b!2937246))

(assert (= (and start!285406 (is-Union!9076 r!17423)) b!2937245))

(assert (= (and start!285406 (is-Cons!34817 s!11993)) b!2937243))

(declare-fun m!3324037 () Bool)

(assert (=> b!2937240 m!3324037))

(declare-fun m!3324039 () Bool)

(assert (=> b!2937240 m!3324039))

(declare-fun m!3324041 () Bool)

(assert (=> b!2937241 m!3324041))

(declare-fun m!3324043 () Bool)

(assert (=> b!2937241 m!3324043))

(declare-fun m!3324045 () Bool)

(assert (=> b!2937241 m!3324045))

(declare-fun m!3324047 () Bool)

(assert (=> b!2937242 m!3324047))

(declare-fun m!3324049 () Bool)

(assert (=> start!285406 m!3324049))

(push 1)

(assert (not start!285406))

(assert (not b!2937242))

(assert (not b!2937245))

(assert (not b!2937247))

(assert (not b!2937241))

(assert (not b!2937246))

(assert (not b!2937243))

(assert tp_is_empty!15715)

(assert (not b!2937240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!839920 () Bool)

(assert (=> d!839920 (= (isEmpty!19078 s!11993) (is-Nil!34817 s!11993))))

(assert (=> b!2937242 d!839920))

(declare-fun b!2937292 () Bool)

(declare-fun e!1851492 () Bool)

(declare-fun e!1851489 () Bool)

(assert (=> b!2937292 (= e!1851492 e!1851489)))

(declare-fun c!479994 () Bool)

(assert (=> b!2937292 (= c!479994 (is-Star!9076 r!17423))))

(declare-fun call!193116 () Bool)

(declare-fun c!479995 () Bool)

(declare-fun bm!193110 () Bool)

(assert (=> bm!193110 (= call!193116 (validRegex!3809 (ite c!479994 (reg!9405 r!17423) (ite c!479995 (regTwo!18665 r!17423) (regOne!18664 r!17423)))))))

(declare-fun b!2937293 () Bool)

(declare-fun e!1851493 () Bool)

(declare-fun e!1851488 () Bool)

(assert (=> b!2937293 (= e!1851493 e!1851488)))

(declare-fun res!1212563 () Bool)

(assert (=> b!2937293 (=> (not res!1212563) (not e!1851488))))

(declare-fun call!193115 () Bool)

(assert (=> b!2937293 (= res!1212563 call!193115)))

(declare-fun b!2937294 () Bool)

(declare-fun e!1851491 () Bool)

(assert (=> b!2937294 (= e!1851489 e!1851491)))

(assert (=> b!2937294 (= c!479995 (is-Union!9076 r!17423))))

(declare-fun d!839922 () Bool)

(declare-fun res!1212566 () Bool)

(assert (=> d!839922 (=> res!1212566 e!1851492)))

(assert (=> d!839922 (= res!1212566 (is-ElementMatch!9076 r!17423))))

(assert (=> d!839922 (= (validRegex!3809 r!17423) e!1851492)))

(declare-fun b!2937295 () Bool)

(declare-fun e!1851494 () Bool)

(assert (=> b!2937295 (= e!1851494 call!193116)))

(declare-fun b!2937296 () Bool)

(declare-fun call!193117 () Bool)

(assert (=> b!2937296 (= e!1851488 call!193117)))

(declare-fun b!2937297 () Bool)

(declare-fun res!1212567 () Bool)

(declare-fun e!1851490 () Bool)

(assert (=> b!2937297 (=> (not res!1212567) (not e!1851490))))

(assert (=> b!2937297 (= res!1212567 call!193117)))

(assert (=> b!2937297 (= e!1851491 e!1851490)))

(declare-fun b!2937298 () Bool)

(declare-fun res!1212564 () Bool)

(assert (=> b!2937298 (=> res!1212564 e!1851493)))

(assert (=> b!2937298 (= res!1212564 (not (is-Concat!14397 r!17423)))))

(assert (=> b!2937298 (= e!1851491 e!1851493)))

(declare-fun b!2937299 () Bool)

(assert (=> b!2937299 (= e!1851490 call!193115)))

(declare-fun bm!193111 () Bool)

(assert (=> bm!193111 (= call!193115 call!193116)))

(declare-fun b!2937300 () Bool)

(assert (=> b!2937300 (= e!1851489 e!1851494)))

(declare-fun res!1212565 () Bool)

(declare-fun nullable!2864 (Regex!9076) Bool)

(assert (=> b!2937300 (= res!1212565 (not (nullable!2864 (reg!9405 r!17423))))))

(assert (=> b!2937300 (=> (not res!1212565) (not e!1851494))))

(declare-fun bm!193112 () Bool)

(assert (=> bm!193112 (= call!193117 (validRegex!3809 (ite c!479995 (regOne!18665 r!17423) (regTwo!18664 r!17423))))))

(assert (= (and d!839922 (not res!1212566)) b!2937292))

(assert (= (and b!2937292 c!479994) b!2937300))

(assert (= (and b!2937292 (not c!479994)) b!2937294))

(assert (= (and b!2937300 res!1212565) b!2937295))

(assert (= (and b!2937294 c!479995) b!2937297))

(assert (= (and b!2937294 (not c!479995)) b!2937298))

(assert (= (and b!2937297 res!1212567) b!2937299))

(assert (= (and b!2937298 (not res!1212564)) b!2937293))

(assert (= (and b!2937293 res!1212563) b!2937296))

(assert (= (or b!2937297 b!2937296) bm!193112))

(assert (= (or b!2937299 b!2937293) bm!193111))

(assert (= (or b!2937295 bm!193111) bm!193110))

(declare-fun m!3324065 () Bool)

(assert (=> bm!193110 m!3324065))

(declare-fun m!3324067 () Bool)

(assert (=> b!2937300 m!3324067))

(declare-fun m!3324069 () Bool)

(assert (=> bm!193112 m!3324069))

(assert (=> start!285406 d!839922))

(declare-fun b!2937321 () Bool)

(declare-fun e!1851513 () Bool)

(declare-fun e!1851510 () Bool)

(assert (=> b!2937321 (= e!1851513 e!1851510)))

(declare-fun c!480004 () Bool)

(assert (=> b!2937321 (= c!480004 (is-Star!9076 (regTwo!18664 r!17423)))))

(declare-fun call!193119 () Bool)

(declare-fun c!480005 () Bool)

(declare-fun bm!193113 () Bool)

(assert (=> bm!193113 (= call!193119 (validRegex!3809 (ite c!480004 (reg!9405 (regTwo!18664 r!17423)) (ite c!480005 (regTwo!18665 (regTwo!18664 r!17423)) (regOne!18664 (regTwo!18664 r!17423))))))))

(declare-fun b!2937322 () Bool)

(declare-fun e!1851514 () Bool)

(declare-fun e!1851509 () Bool)

(assert (=> b!2937322 (= e!1851514 e!1851509)))

(declare-fun res!1212574 () Bool)

(assert (=> b!2937322 (=> (not res!1212574) (not e!1851509))))

(declare-fun call!193118 () Bool)

(assert (=> b!2937322 (= res!1212574 call!193118)))

(declare-fun b!2937323 () Bool)

(declare-fun e!1851512 () Bool)

(assert (=> b!2937323 (= e!1851510 e!1851512)))

(assert (=> b!2937323 (= c!480005 (is-Union!9076 (regTwo!18664 r!17423)))))

(declare-fun d!839928 () Bool)

(declare-fun res!1212577 () Bool)

(assert (=> d!839928 (=> res!1212577 e!1851513)))

(assert (=> d!839928 (= res!1212577 (is-ElementMatch!9076 (regTwo!18664 r!17423)))))

(assert (=> d!839928 (= (validRegex!3809 (regTwo!18664 r!17423)) e!1851513)))

(declare-fun b!2937324 () Bool)

(declare-fun e!1851515 () Bool)

(assert (=> b!2937324 (= e!1851515 call!193119)))

(declare-fun b!2937325 () Bool)

(declare-fun call!193120 () Bool)

(assert (=> b!2937325 (= e!1851509 call!193120)))

(declare-fun b!2937326 () Bool)

(declare-fun res!1212578 () Bool)

(declare-fun e!1851511 () Bool)

(assert (=> b!2937326 (=> (not res!1212578) (not e!1851511))))

(assert (=> b!2937326 (= res!1212578 call!193120)))

(assert (=> b!2937326 (= e!1851512 e!1851511)))

(declare-fun b!2937327 () Bool)

(declare-fun res!1212575 () Bool)

(assert (=> b!2937327 (=> res!1212575 e!1851514)))

(assert (=> b!2937327 (= res!1212575 (not (is-Concat!14397 (regTwo!18664 r!17423))))))

(assert (=> b!2937327 (= e!1851512 e!1851514)))

(declare-fun b!2937328 () Bool)

(assert (=> b!2937328 (= e!1851511 call!193118)))

(declare-fun bm!193114 () Bool)

(assert (=> bm!193114 (= call!193118 call!193119)))

(declare-fun b!2937329 () Bool)

(assert (=> b!2937329 (= e!1851510 e!1851515)))

(declare-fun res!1212576 () Bool)

(assert (=> b!2937329 (= res!1212576 (not (nullable!2864 (reg!9405 (regTwo!18664 r!17423)))))))

(assert (=> b!2937329 (=> (not res!1212576) (not e!1851515))))

(declare-fun bm!193115 () Bool)

(assert (=> bm!193115 (= call!193120 (validRegex!3809 (ite c!480005 (regOne!18665 (regTwo!18664 r!17423)) (regTwo!18664 (regTwo!18664 r!17423)))))))

(assert (= (and d!839928 (not res!1212577)) b!2937321))

(assert (= (and b!2937321 c!480004) b!2937329))

(assert (= (and b!2937321 (not c!480004)) b!2937323))

(assert (= (and b!2937329 res!1212576) b!2937324))

(assert (= (and b!2937323 c!480005) b!2937326))

(assert (= (and b!2937323 (not c!480005)) b!2937327))

(assert (= (and b!2937326 res!1212578) b!2937328))

(assert (= (and b!2937327 (not res!1212575)) b!2937322))

(assert (= (and b!2937322 res!1212574) b!2937325))

(assert (= (or b!2937326 b!2937325) bm!193115))

(assert (= (or b!2937328 b!2937322) bm!193114))

(assert (= (or b!2937324 bm!193114) bm!193113))

(declare-fun m!3324071 () Bool)

(assert (=> bm!193113 m!3324071))

(declare-fun m!3324073 () Bool)

(assert (=> b!2937329 m!3324073))

(declare-fun m!3324075 () Bool)

(assert (=> bm!193115 m!3324075))

(assert (=> b!2937240 d!839928))

(declare-fun b!2937380 () Bool)

(declare-fun e!1851549 () Regex!9076)

(declare-fun lt!1029405 () Regex!9076)

(assert (=> b!2937380 (= e!1851549 (Star!9076 lt!1029405))))

(declare-fun b!2937381 () Bool)

(declare-fun c!480028 () Bool)

(declare-fun call!193140 () Bool)

(assert (=> b!2937381 (= c!480028 call!193140)))

(declare-fun e!1851553 () Regex!9076)

(declare-fun e!1851554 () Regex!9076)

(assert (=> b!2937381 (= e!1851553 e!1851554)))

(declare-fun b!2937382 () Bool)

(declare-fun e!1851551 () Regex!9076)

(declare-fun e!1851544 () Regex!9076)

(assert (=> b!2937382 (= e!1851551 e!1851544)))

(declare-fun c!480032 () Bool)

(assert (=> b!2937382 (= c!480032 (is-ElementMatch!9076 (regOne!18664 r!17423)))))

(declare-fun b!2937383 () Bool)

(declare-fun lt!1029402 () Regex!9076)

(assert (=> b!2937383 (= e!1851554 lt!1029402)))

(declare-fun bm!193130 () Bool)

(declare-fun lt!1029406 () Regex!9076)

(declare-fun c!480031 () Bool)

(declare-fun isEmptyExpr!291 (Regex!9076) Bool)

(assert (=> bm!193130 (= call!193140 (isEmptyExpr!291 (ite c!480031 lt!1029405 lt!1029406)))))

(declare-fun b!2937384 () Bool)

(assert (=> b!2937384 (= e!1851553 EmptyLang!9076)))

(declare-fun b!2937385 () Bool)

(declare-fun e!1851556 () Bool)

(assert (=> b!2937385 (= e!1851556 call!193140)))

(declare-fun b!2937387 () Bool)

(declare-fun c!480030 () Bool)

(assert (=> b!2937387 (= c!480030 (is-Union!9076 (regOne!18664 r!17423)))))

(declare-fun e!1851555 () Regex!9076)

(declare-fun e!1851552 () Regex!9076)

(assert (=> b!2937387 (= e!1851555 e!1851552)))

(declare-fun b!2937388 () Bool)

(assert (=> b!2937388 (= e!1851549 EmptyExpr!9076)))

(declare-fun lt!1029403 () Regex!9076)

(declare-fun call!193135 () Bool)

(declare-fun bm!193131 () Bool)

(declare-fun isEmptyLang!206 (Regex!9076) Bool)

(assert (=> bm!193131 (= call!193135 (isEmptyLang!206 (ite c!480030 lt!1029403 lt!1029406)))))

(declare-fun b!2937389 () Bool)

(declare-fun e!1851557 () Regex!9076)

(assert (=> b!2937389 (= e!1851557 e!1851555)))

(assert (=> b!2937389 (= c!480031 (is-Star!9076 (regOne!18664 r!17423)))))

(declare-fun b!2937390 () Bool)

(declare-fun c!480037 () Bool)

(assert (=> b!2937390 (= c!480037 call!193135)))

(declare-fun e!1851550 () Regex!9076)

(declare-fun e!1851545 () Regex!9076)

(assert (=> b!2937390 (= e!1851550 e!1851545)))

(declare-fun b!2937391 () Bool)

(declare-fun e!1851546 () Bool)

(declare-fun call!193138 () Bool)

(assert (=> b!2937391 (= e!1851546 call!193138)))

(declare-fun b!2937392 () Bool)

(declare-fun c!480036 () Bool)

(assert (=> b!2937392 (= c!480036 e!1851556)))

(declare-fun res!1212586 () Bool)

(assert (=> b!2937392 (=> res!1212586 e!1851556)))

(declare-fun call!193136 () Bool)

(assert (=> b!2937392 (= res!1212586 call!193136)))

(declare-fun call!193137 () Regex!9076)

(assert (=> b!2937392 (= lt!1029405 call!193137)))

(assert (=> b!2937392 (= e!1851555 e!1851549)))

(declare-fun b!2937393 () Bool)

(assert (=> b!2937393 (= e!1851552 e!1851550)))

(declare-fun lt!1029404 () Regex!9076)

(declare-fun call!193139 () Regex!9076)

(assert (=> b!2937393 (= lt!1029404 call!193139)))

(declare-fun call!193141 () Regex!9076)

(assert (=> b!2937393 (= lt!1029403 call!193141)))

(declare-fun c!480029 () Bool)

(assert (=> b!2937393 (= c!480029 call!193138)))

(declare-fun b!2937394 () Bool)

(assert (=> b!2937394 (= e!1851545 lt!1029404)))

(declare-fun b!2937395 () Bool)

(assert (=> b!2937395 (= e!1851552 e!1851553)))

(assert (=> b!2937395 (= lt!1029406 call!193141)))

(assert (=> b!2937395 (= lt!1029402 call!193139)))

(declare-fun res!1212587 () Bool)

(assert (=> b!2937395 (= res!1212587 call!193135)))

(assert (=> b!2937395 (=> res!1212587 e!1851546)))

(declare-fun c!480038 () Bool)

(assert (=> b!2937395 (= c!480038 e!1851546)))

(declare-fun b!2937386 () Bool)

(assert (=> b!2937386 (= e!1851544 (regOne!18664 r!17423))))

(declare-fun d!839930 () Bool)

(declare-fun e!1851548 () Bool)

(assert (=> d!839930 e!1851548))

(declare-fun res!1212585 () Bool)

(assert (=> d!839930 (=> (not res!1212585) (not e!1851548))))

(declare-fun lt!1029407 () Regex!9076)

(assert (=> d!839930 (= res!1212585 (validRegex!3809 lt!1029407))))

(assert (=> d!839930 (= lt!1029407 e!1851551)))

(declare-fun c!480034 () Bool)

(assert (=> d!839930 (= c!480034 (is-EmptyLang!9076 (regOne!18664 r!17423)))))

(assert (=> d!839930 (validRegex!3809 (regOne!18664 r!17423))))

(assert (=> d!839930 (= (simplify!81 (regOne!18664 r!17423)) lt!1029407)))

(declare-fun bm!193132 () Bool)

(assert (=> bm!193132 (= call!193136 (isEmptyLang!206 (ite c!480031 lt!1029405 (ite c!480030 lt!1029404 lt!1029402))))))

(declare-fun b!2937396 () Bool)

(assert (=> b!2937396 (= e!1851550 lt!1029403)))

(declare-fun b!2937397 () Bool)

(declare-fun c!480033 () Bool)

(assert (=> b!2937397 (= c!480033 (is-EmptyExpr!9076 (regOne!18664 r!17423)))))

(assert (=> b!2937397 (= e!1851544 e!1851557)))

(declare-fun b!2937398 () Bool)

(declare-fun e!1851547 () Regex!9076)

(assert (=> b!2937398 (= e!1851547 (Concat!14397 lt!1029406 lt!1029402))))

(declare-fun bm!193133 () Bool)

(assert (=> bm!193133 (= call!193137 (simplify!81 (ite c!480031 (reg!9405 (regOne!18664 r!17423)) (ite c!480030 (regOne!18665 (regOne!18664 r!17423)) (regTwo!18664 (regOne!18664 r!17423))))))))

(declare-fun b!2937399 () Bool)

(assert (=> b!2937399 (= e!1851548 (= (nullable!2864 lt!1029407) (nullable!2864 (regOne!18664 r!17423))))))

(declare-fun bm!193134 () Bool)

(assert (=> bm!193134 (= call!193139 call!193137)))

(declare-fun b!2937400 () Bool)

(assert (=> b!2937400 (= e!1851545 (Union!9076 lt!1029404 lt!1029403))))

(declare-fun bm!193135 () Bool)

(assert (=> bm!193135 (= call!193138 call!193136)))

(declare-fun b!2937401 () Bool)

(assert (=> b!2937401 (= e!1851554 e!1851547)))

(declare-fun c!480035 () Bool)

(assert (=> b!2937401 (= c!480035 (isEmptyExpr!291 lt!1029402))))

(declare-fun bm!193136 () Bool)

(assert (=> bm!193136 (= call!193141 (simplify!81 (ite c!480030 (regTwo!18665 (regOne!18664 r!17423)) (regOne!18664 (regOne!18664 r!17423)))))))

(declare-fun b!2937402 () Bool)

(assert (=> b!2937402 (= e!1851551 EmptyLang!9076)))

(declare-fun b!2937403 () Bool)

(assert (=> b!2937403 (= e!1851547 lt!1029406)))

(declare-fun b!2937404 () Bool)

(assert (=> b!2937404 (= e!1851557 EmptyExpr!9076)))

(assert (= (and d!839930 c!480034) b!2937402))

(assert (= (and d!839930 (not c!480034)) b!2937382))

(assert (= (and b!2937382 c!480032) b!2937386))

(assert (= (and b!2937382 (not c!480032)) b!2937397))

(assert (= (and b!2937397 c!480033) b!2937404))

(assert (= (and b!2937397 (not c!480033)) b!2937389))

(assert (= (and b!2937389 c!480031) b!2937392))

(assert (= (and b!2937389 (not c!480031)) b!2937387))

(assert (= (and b!2937392 (not res!1212586)) b!2937385))

(assert (= (and b!2937392 c!480036) b!2937388))

(assert (= (and b!2937392 (not c!480036)) b!2937380))

(assert (= (and b!2937387 c!480030) b!2937393))

(assert (= (and b!2937387 (not c!480030)) b!2937395))

(assert (= (and b!2937393 c!480029) b!2937396))

(assert (= (and b!2937393 (not c!480029)) b!2937390))

(assert (= (and b!2937390 c!480037) b!2937394))

(assert (= (and b!2937390 (not c!480037)) b!2937400))

(assert (= (and b!2937395 (not res!1212587)) b!2937391))

(assert (= (and b!2937395 c!480038) b!2937384))

(assert (= (and b!2937395 (not c!480038)) b!2937381))

(assert (= (and b!2937381 c!480028) b!2937383))

(assert (= (and b!2937381 (not c!480028)) b!2937401))

(assert (= (and b!2937401 c!480035) b!2937403))

(assert (= (and b!2937401 (not c!480035)) b!2937398))

(assert (= (or b!2937393 b!2937395) bm!193134))

(assert (= (or b!2937393 b!2937395) bm!193136))

(assert (= (or b!2937390 b!2937395) bm!193131))

(assert (= (or b!2937393 b!2937391) bm!193135))

(assert (= (or b!2937385 b!2937381) bm!193130))

(assert (= (or b!2937392 bm!193134) bm!193133))

(assert (= (or b!2937392 bm!193135) bm!193132))

(assert (= (and d!839930 res!1212585) b!2937399))

(declare-fun m!3324077 () Bool)

(assert (=> bm!193130 m!3324077))

(declare-fun m!3324079 () Bool)

(assert (=> bm!193132 m!3324079))

(declare-fun m!3324081 () Bool)

(assert (=> b!2937401 m!3324081))

(declare-fun m!3324083 () Bool)

(assert (=> bm!193131 m!3324083))

(declare-fun m!3324085 () Bool)

(assert (=> bm!193133 m!3324085))

(declare-fun m!3324087 () Bool)

(assert (=> bm!193136 m!3324087))

(declare-fun m!3324089 () Bool)

(assert (=> b!2937399 m!3324089))

(declare-fun m!3324091 () Bool)

(assert (=> b!2937399 m!3324091))

(declare-fun m!3324093 () Bool)

(assert (=> d!839930 m!3324093))

(declare-fun m!3324095 () Bool)

(assert (=> d!839930 m!3324095))

(assert (=> b!2937240 d!839930))

(declare-fun b!2937457 () Bool)

(assert (=> b!2937457 true))

(assert (=> b!2937457 true))

(declare-fun bs!525455 () Bool)

(declare-fun b!2937448 () Bool)

(assert (= bs!525455 (and b!2937448 b!2937457)))

(declare-fun lambda!109451 () Int)

(declare-fun lambda!109449 () Int)

(assert (=> bs!525455 (not (= lambda!109451 lambda!109449))))

(assert (=> b!2937448 true))

(assert (=> b!2937448 true))

(declare-fun b!2937447 () Bool)

(declare-fun c!480048 () Bool)

(assert (=> b!2937447 (= c!480048 (is-Union!9076 r!17423))))

(declare-fun e!1851581 () Bool)

(declare-fun e!1851586 () Bool)

(assert (=> b!2937447 (= e!1851581 e!1851586)))

(declare-fun e!1851584 () Bool)

(declare-fun call!193151 () Bool)

(assert (=> b!2937448 (= e!1851584 call!193151)))

(declare-fun b!2937449 () Bool)

(assert (=> b!2937449 (= e!1851581 (= s!11993 (Cons!34817 (c!479988 r!17423) Nil!34817)))))

(declare-fun b!2937450 () Bool)

(declare-fun res!1212615 () Bool)

(declare-fun e!1851582 () Bool)

(assert (=> b!2937450 (=> res!1212615 e!1851582)))

(declare-fun call!193150 () Bool)

(assert (=> b!2937450 (= res!1212615 call!193150)))

(assert (=> b!2937450 (= e!1851584 e!1851582)))

(declare-fun d!839932 () Bool)

(declare-fun c!480049 () Bool)

(assert (=> d!839932 (= c!480049 (is-EmptyExpr!9076 r!17423))))

(declare-fun e!1851580 () Bool)

(assert (=> d!839932 (= (matchRSpec!1213 r!17423 s!11993) e!1851580)))

(declare-fun b!2937451 () Bool)

(assert (=> b!2937451 (= e!1851580 call!193150)))

(declare-fun b!2937452 () Bool)

(declare-fun c!480047 () Bool)

(assert (=> b!2937452 (= c!480047 (is-ElementMatch!9076 r!17423))))

(declare-fun e!1851583 () Bool)

(assert (=> b!2937452 (= e!1851583 e!1851581)))

(declare-fun b!2937453 () Bool)

(assert (=> b!2937453 (= e!1851586 e!1851584)))

(declare-fun c!480050 () Bool)

(assert (=> b!2937453 (= c!480050 (is-Star!9076 r!17423))))

(declare-fun bm!193145 () Bool)

(declare-fun Exists!1439 (Int) Bool)

(assert (=> bm!193145 (= call!193151 (Exists!1439 (ite c!480050 lambda!109449 lambda!109451)))))

(declare-fun b!2937454 () Bool)

(declare-fun e!1851585 () Bool)

(assert (=> b!2937454 (= e!1851585 (matchRSpec!1213 (regTwo!18665 r!17423) s!11993))))

(declare-fun bm!193146 () Bool)

(assert (=> bm!193146 (= call!193150 (isEmpty!19078 s!11993))))

(declare-fun b!2937455 () Bool)

(assert (=> b!2937455 (= e!1851580 e!1851583)))

(declare-fun res!1212616 () Bool)

(assert (=> b!2937455 (= res!1212616 (not (is-EmptyLang!9076 r!17423)))))

(assert (=> b!2937455 (=> (not res!1212616) (not e!1851583))))

(declare-fun b!2937456 () Bool)

(assert (=> b!2937456 (= e!1851586 e!1851585)))

(declare-fun res!1212614 () Bool)

(assert (=> b!2937456 (= res!1212614 (matchRSpec!1213 (regOne!18665 r!17423) s!11993))))

(assert (=> b!2937456 (=> res!1212614 e!1851585)))

(assert (=> b!2937457 (= e!1851582 call!193151)))

(assert (= (and d!839932 c!480049) b!2937451))

(assert (= (and d!839932 (not c!480049)) b!2937455))

(assert (= (and b!2937455 res!1212616) b!2937452))

(assert (= (and b!2937452 c!480047) b!2937449))

(assert (= (and b!2937452 (not c!480047)) b!2937447))

(assert (= (and b!2937447 c!480048) b!2937456))

(assert (= (and b!2937447 (not c!480048)) b!2937453))

(assert (= (and b!2937456 (not res!1212614)) b!2937454))

(assert (= (and b!2937453 c!480050) b!2937450))

(assert (= (and b!2937453 (not c!480050)) b!2937448))

(assert (= (and b!2937450 (not res!1212615)) b!2937457))

(assert (= (or b!2937457 b!2937448) bm!193145))

(assert (= (or b!2937451 b!2937450) bm!193146))

(declare-fun m!3324097 () Bool)

(assert (=> bm!193145 m!3324097))

(declare-fun m!3324099 () Bool)

(assert (=> b!2937454 m!3324099))

(assert (=> bm!193146 m!3324047))

(declare-fun m!3324101 () Bool)

(assert (=> b!2937456 m!3324101))

(assert (=> b!2937241 d!839932))

(declare-fun b!2937533 () Bool)

(declare-fun e!1851623 () Bool)

(declare-fun e!1851626 () Bool)

(assert (=> b!2937533 (= e!1851623 e!1851626)))

(declare-fun res!1212658 () Bool)

(assert (=> b!2937533 (=> res!1212658 e!1851626)))

(declare-fun call!193158 () Bool)

(assert (=> b!2937533 (= res!1212658 call!193158)))

(declare-fun b!2937534 () Bool)

(declare-fun e!1851627 () Bool)

(declare-fun lt!1029412 () Bool)

(assert (=> b!2937534 (= e!1851627 (= lt!1029412 call!193158))))

(declare-fun b!2937535 () Bool)

(declare-fun e!1851628 () Bool)

(assert (=> b!2937535 (= e!1851628 (not lt!1029412))))

(declare-fun b!2937536 () Bool)

(declare-fun res!1212655 () Bool)

(declare-fun e!1851622 () Bool)

(assert (=> b!2937536 (=> res!1212655 e!1851622)))

(declare-fun e!1851625 () Bool)

(assert (=> b!2937536 (= res!1212655 e!1851625)))

(declare-fun res!1212654 () Bool)

(assert (=> b!2937536 (=> (not res!1212654) (not e!1851625))))

(assert (=> b!2937536 (= res!1212654 lt!1029412)))

(declare-fun b!2937537 () Bool)

(assert (=> b!2937537 (= e!1851627 e!1851628)))

(declare-fun c!480067 () Bool)

(assert (=> b!2937537 (= c!480067 (is-EmptyLang!9076 r!17423))))

(declare-fun b!2937538 () Bool)

(declare-fun e!1851624 () Bool)

(assert (=> b!2937538 (= e!1851624 (nullable!2864 r!17423))))

(declare-fun d!839934 () Bool)

(assert (=> d!839934 e!1851627))

(declare-fun c!480069 () Bool)

(assert (=> d!839934 (= c!480069 (is-EmptyExpr!9076 r!17423))))

(assert (=> d!839934 (= lt!1029412 e!1851624)))

(declare-fun c!480068 () Bool)

(assert (=> d!839934 (= c!480068 (isEmpty!19078 s!11993))))

(assert (=> d!839934 (validRegex!3809 r!17423)))

(assert (=> d!839934 (= (matchR!3958 r!17423 s!11993) lt!1029412)))

(declare-fun b!2937539 () Bool)

(declare-fun res!1212653 () Bool)

(assert (=> b!2937539 (=> res!1212653 e!1851626)))

(declare-fun tail!4761 (List!34941) List!34941)

(assert (=> b!2937539 (= res!1212653 (not (isEmpty!19078 (tail!4761 s!11993))))))

(declare-fun b!2937540 () Bool)

(declare-fun res!1212659 () Bool)

(assert (=> b!2937540 (=> res!1212659 e!1851622)))

(assert (=> b!2937540 (= res!1212659 (not (is-ElementMatch!9076 r!17423)))))

(assert (=> b!2937540 (= e!1851628 e!1851622)))

(declare-fun b!2937541 () Bool)

(declare-fun res!1212656 () Bool)

(assert (=> b!2937541 (=> (not res!1212656) (not e!1851625))))

(assert (=> b!2937541 (= res!1212656 (isEmpty!19078 (tail!4761 s!11993)))))

(declare-fun b!2937542 () Bool)

(assert (=> b!2937542 (= e!1851622 e!1851623)))

(declare-fun res!1212652 () Bool)

(assert (=> b!2937542 (=> (not res!1212652) (not e!1851623))))

(assert (=> b!2937542 (= res!1212652 (not lt!1029412))))

(declare-fun b!2937543 () Bool)

(declare-fun head!6535 (List!34941) C!18338)

(assert (=> b!2937543 (= e!1851625 (= (head!6535 s!11993) (c!479988 r!17423)))))

(declare-fun b!2937544 () Bool)

(declare-fun derivativeStep!2476 (Regex!9076 C!18338) Regex!9076)

(assert (=> b!2937544 (= e!1851624 (matchR!3958 (derivativeStep!2476 r!17423 (head!6535 s!11993)) (tail!4761 s!11993)))))

(declare-fun b!2937545 () Bool)

(assert (=> b!2937545 (= e!1851626 (not (= (head!6535 s!11993) (c!479988 r!17423))))))

(declare-fun b!2937546 () Bool)

(declare-fun res!1212657 () Bool)

(assert (=> b!2937546 (=> (not res!1212657) (not e!1851625))))

(assert (=> b!2937546 (= res!1212657 (not call!193158))))

(declare-fun bm!193153 () Bool)

(assert (=> bm!193153 (= call!193158 (isEmpty!19078 s!11993))))

(assert (= (and d!839934 c!480068) b!2937538))

(assert (= (and d!839934 (not c!480068)) b!2937544))

(assert (= (and d!839934 c!480069) b!2937534))

(assert (= (and d!839934 (not c!480069)) b!2937537))

(assert (= (and b!2937537 c!480067) b!2937535))

(assert (= (and b!2937537 (not c!480067)) b!2937540))

(assert (= (and b!2937540 (not res!1212659)) b!2937536))

(assert (= (and b!2937536 res!1212654) b!2937546))

(assert (= (and b!2937546 res!1212657) b!2937541))

(assert (= (and b!2937541 res!1212656) b!2937543))

(assert (= (and b!2937536 (not res!1212655)) b!2937542))

(assert (= (and b!2937542 res!1212652) b!2937533))

(assert (= (and b!2937533 (not res!1212658)) b!2937539))

(assert (= (and b!2937539 (not res!1212653)) b!2937545))

(assert (= (or b!2937534 b!2937533 b!2937546) bm!193153))

(assert (=> d!839934 m!3324047))

(assert (=> d!839934 m!3324049))

(declare-fun m!3324109 () Bool)

(assert (=> b!2937538 m!3324109))

(declare-fun m!3324111 () Bool)

(assert (=> b!2937545 m!3324111))

(assert (=> bm!193153 m!3324047))

(assert (=> b!2937543 m!3324111))

(declare-fun m!3324113 () Bool)

(assert (=> b!2937541 m!3324113))

(assert (=> b!2937541 m!3324113))

(declare-fun m!3324115 () Bool)

(assert (=> b!2937541 m!3324115))

(assert (=> b!2937539 m!3324113))

(assert (=> b!2937539 m!3324113))

(assert (=> b!2937539 m!3324115))

(assert (=> b!2937544 m!3324111))

(assert (=> b!2937544 m!3324111))

(declare-fun m!3324117 () Bool)

(assert (=> b!2937544 m!3324117))

(assert (=> b!2937544 m!3324113))

(assert (=> b!2937544 m!3324117))

(assert (=> b!2937544 m!3324113))

(declare-fun m!3324119 () Bool)

(assert (=> b!2937544 m!3324119))

(assert (=> b!2937241 d!839934))

(declare-fun d!839938 () Bool)

(assert (=> d!839938 (= (matchR!3958 r!17423 s!11993) (matchRSpec!1213 r!17423 s!11993))))

(declare-fun lt!1029416 () Unit!48531)

(declare-fun choose!17376 (Regex!9076 List!34941) Unit!48531)

(assert (=> d!839938 (= lt!1029416 (choose!17376 r!17423 s!11993))))

(assert (=> d!839938 (validRegex!3809 r!17423)))

(assert (=> d!839938 (= (mainMatchTheorem!1213 r!17423 s!11993) lt!1029416)))

(declare-fun bs!525457 () Bool)

(assert (= bs!525457 d!839938))

(assert (=> bs!525457 m!3324043))

(assert (=> bs!525457 m!3324041))

(declare-fun m!3324133 () Bool)

(assert (=> bs!525457 m!3324133))

(assert (=> bs!525457 m!3324049))

(assert (=> b!2937241 d!839938))

(declare-fun b!2937572 () Bool)

(declare-fun e!1851638 () Bool)

(declare-fun tp!940469 () Bool)

(declare-fun tp!940468 () Bool)

(assert (=> b!2937572 (= e!1851638 (and tp!940469 tp!940468))))

(declare-fun b!2937573 () Bool)

(declare-fun tp!940472 () Bool)

(assert (=> b!2937573 (= e!1851638 tp!940472)))

(declare-fun b!2937571 () Bool)

(assert (=> b!2937571 (= e!1851638 tp_is_empty!15715)))

(declare-fun b!2937574 () Bool)

(declare-fun tp!940470 () Bool)

(declare-fun tp!940471 () Bool)

(assert (=> b!2937574 (= e!1851638 (and tp!940470 tp!940471))))

(assert (=> b!2937247 (= tp!940438 e!1851638)))

(assert (= (and b!2937247 (is-ElementMatch!9076 (regOne!18664 r!17423))) b!2937571))

(assert (= (and b!2937247 (is-Concat!14397 (regOne!18664 r!17423))) b!2937572))

(assert (= (and b!2937247 (is-Star!9076 (regOne!18664 r!17423))) b!2937573))

(assert (= (and b!2937247 (is-Union!9076 (regOne!18664 r!17423))) b!2937574))

(declare-fun b!2937576 () Bool)

(declare-fun e!1851639 () Bool)

(declare-fun tp!940474 () Bool)

(declare-fun tp!940473 () Bool)

(assert (=> b!2937576 (= e!1851639 (and tp!940474 tp!940473))))

(declare-fun b!2937577 () Bool)

(declare-fun tp!940477 () Bool)

(assert (=> b!2937577 (= e!1851639 tp!940477)))

(declare-fun b!2937575 () Bool)

(assert (=> b!2937575 (= e!1851639 tp_is_empty!15715)))

(declare-fun b!2937578 () Bool)

(declare-fun tp!940475 () Bool)

(declare-fun tp!940476 () Bool)

(assert (=> b!2937578 (= e!1851639 (and tp!940475 tp!940476))))

(assert (=> b!2937247 (= tp!940437 e!1851639)))

(assert (= (and b!2937247 (is-ElementMatch!9076 (regTwo!18664 r!17423))) b!2937575))

(assert (= (and b!2937247 (is-Concat!14397 (regTwo!18664 r!17423))) b!2937576))

(assert (= (and b!2937247 (is-Star!9076 (regTwo!18664 r!17423))) b!2937577))

(assert (= (and b!2937247 (is-Union!9076 (regTwo!18664 r!17423))) b!2937578))

(declare-fun b!2937583 () Bool)

(declare-fun e!1851642 () Bool)

(declare-fun tp!940480 () Bool)

(assert (=> b!2937583 (= e!1851642 (and tp_is_empty!15715 tp!940480))))

(assert (=> b!2937243 (= tp!940435 e!1851642)))

(assert (= (and b!2937243 (is-Cons!34817 (t!234006 s!11993))) b!2937583))

(declare-fun b!2937585 () Bool)

(declare-fun e!1851643 () Bool)

(declare-fun tp!940482 () Bool)

(declare-fun tp!940481 () Bool)

(assert (=> b!2937585 (= e!1851643 (and tp!940482 tp!940481))))

(declare-fun b!2937586 () Bool)

(declare-fun tp!940485 () Bool)

(assert (=> b!2937586 (= e!1851643 tp!940485)))

(declare-fun b!2937584 () Bool)

(assert (=> b!2937584 (= e!1851643 tp_is_empty!15715)))

(declare-fun b!2937587 () Bool)

(declare-fun tp!940483 () Bool)

(declare-fun tp!940484 () Bool)

(assert (=> b!2937587 (= e!1851643 (and tp!940483 tp!940484))))

(assert (=> b!2937245 (= tp!940436 e!1851643)))

(assert (= (and b!2937245 (is-ElementMatch!9076 (regOne!18665 r!17423))) b!2937584))

(assert (= (and b!2937245 (is-Concat!14397 (regOne!18665 r!17423))) b!2937585))

(assert (= (and b!2937245 (is-Star!9076 (regOne!18665 r!17423))) b!2937586))

(assert (= (and b!2937245 (is-Union!9076 (regOne!18665 r!17423))) b!2937587))

(declare-fun b!2937589 () Bool)

(declare-fun e!1851644 () Bool)

(declare-fun tp!940487 () Bool)

(declare-fun tp!940486 () Bool)

(assert (=> b!2937589 (= e!1851644 (and tp!940487 tp!940486))))

(declare-fun b!2937590 () Bool)

(declare-fun tp!940490 () Bool)

(assert (=> b!2937590 (= e!1851644 tp!940490)))

(declare-fun b!2937588 () Bool)

(assert (=> b!2937588 (= e!1851644 tp_is_empty!15715)))

(declare-fun b!2937591 () Bool)

(declare-fun tp!940488 () Bool)

(declare-fun tp!940489 () Bool)

(assert (=> b!2937591 (= e!1851644 (and tp!940488 tp!940489))))

(assert (=> b!2937245 (= tp!940439 e!1851644)))

(assert (= (and b!2937245 (is-ElementMatch!9076 (regTwo!18665 r!17423))) b!2937588))

(assert (= (and b!2937245 (is-Concat!14397 (regTwo!18665 r!17423))) b!2937589))

(assert (= (and b!2937245 (is-Star!9076 (regTwo!18665 r!17423))) b!2937590))

(assert (= (and b!2937245 (is-Union!9076 (regTwo!18665 r!17423))) b!2937591))

(declare-fun b!2937593 () Bool)

(declare-fun e!1851645 () Bool)

(declare-fun tp!940492 () Bool)

(declare-fun tp!940491 () Bool)

(assert (=> b!2937593 (= e!1851645 (and tp!940492 tp!940491))))

(declare-fun b!2937594 () Bool)

(declare-fun tp!940495 () Bool)

(assert (=> b!2937594 (= e!1851645 tp!940495)))

(declare-fun b!2937592 () Bool)

(assert (=> b!2937592 (= e!1851645 tp_is_empty!15715)))

(declare-fun b!2937595 () Bool)

(declare-fun tp!940493 () Bool)

(declare-fun tp!940494 () Bool)

(assert (=> b!2937595 (= e!1851645 (and tp!940493 tp!940494))))

(assert (=> b!2937246 (= tp!940434 e!1851645)))

(assert (= (and b!2937246 (is-ElementMatch!9076 (reg!9405 r!17423))) b!2937592))

(assert (= (and b!2937246 (is-Concat!14397 (reg!9405 r!17423))) b!2937593))

(assert (= (and b!2937246 (is-Star!9076 (reg!9405 r!17423))) b!2937594))

(assert (= (and b!2937246 (is-Union!9076 (reg!9405 r!17423))) b!2937595))

(push 1)

(assert (not bm!193130))

(assert (not b!2937539))

(assert (not b!2937329))

(assert (not b!2937590))

(assert (not b!2937589))

(assert (not b!2937573))

(assert (not b!2937454))

(assert (not bm!193133))

(assert (not b!2937541))

(assert (not b!2937585))

(assert (not bm!193115))

(assert (not b!2937300))

(assert (not d!839938))

(assert (not b!2937543))

(assert (not b!2937577))

(assert (not b!2937538))

(assert (not d!839930))

(assert (not bm!193146))

(assert (not bm!193132))

(assert (not b!2937399))

(assert (not bm!193110))

(assert (not bm!193131))

(assert (not b!2937401))

(assert (not bm!193113))

(assert (not b!2937587))

(assert (not b!2937574))

(assert (not b!2937594))

(assert (not b!2937544))

(assert (not bm!193112))

(assert (not b!2937545))

(assert (not b!2937586))

(assert (not b!2937576))

(assert (not b!2937456))

(assert (not b!2937572))

(assert (not b!2937591))

(assert (not bm!193136))

(assert (not b!2937578))

(assert (not b!2937593))

(assert (not bm!193153))

(assert (not d!839934))

(assert (not b!2937595))

(assert tp_is_empty!15715)

(assert (not bm!193145))

(assert (not b!2937583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

