; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!246950 () Bool)

(assert start!246950)

(declare-fun b!2543659 () Bool)

(declare-fun e!1608213 () Bool)

(declare-fun tp_is_empty!13003 () Bool)

(assert (=> b!2543659 (= e!1608213 tp_is_empty!13003)))

(declare-fun b!2543660 () Bool)

(declare-fun tp!812162 () Bool)

(declare-fun tp!812160 () Bool)

(assert (=> b!2543660 (= e!1608213 (and tp!812162 tp!812160))))

(declare-fun b!2543661 () Bool)

(declare-fun tp!812163 () Bool)

(assert (=> b!2543661 (= e!1608213 tp!812163)))

(declare-fun res!1071907 () Bool)

(declare-fun e!1608209 () Bool)

(assert (=> start!246950 (=> (not res!1071907) (not e!1608209))))

(declare-datatypes ((C!15306 0))(
  ( (C!15307 (val!9305 Int)) )
))
(declare-datatypes ((Regex!7574 0))(
  ( (ElementMatch!7574 (c!407342 C!15306)) (Concat!12270 (regOne!15660 Regex!7574) (regTwo!15660 Regex!7574)) (EmptyExpr!7574) (Star!7574 (reg!7903 Regex!7574)) (EmptyLang!7574) (Union!7574 (regOne!15661 Regex!7574) (regTwo!15661 Regex!7574)) )
))
(declare-fun r!27340 () Regex!7574)

(declare-fun validRegex!3200 (Regex!7574) Bool)

(assert (=> start!246950 (= res!1071907 (validRegex!3200 r!27340))))

(assert (=> start!246950 e!1608209))

(assert (=> start!246950 e!1608213))

(assert (=> start!246950 tp_is_empty!13003))

(declare-fun e!1608212 () Bool)

(assert (=> start!246950 e!1608212))

(declare-fun b!2543662 () Bool)

(declare-fun e!1608211 () Bool)

(assert (=> b!2543662 (= e!1608209 e!1608211)))

(declare-fun res!1071908 () Bool)

(assert (=> b!2543662 (=> (not res!1071908) (not e!1608211))))

(declare-fun lt!902241 () Regex!7574)

(declare-datatypes ((List!29639 0))(
  ( (Nil!29539) (Cons!29539 (h!34959 C!15306) (t!211338 List!29639)) )
))
(declare-fun tl!4068 () List!29639)

(declare-fun nullable!2491 (Regex!7574) Bool)

(declare-fun derivative!269 (Regex!7574 List!29639) Regex!7574)

(assert (=> b!2543662 (= res!1071908 (nullable!2491 (derivative!269 lt!902241 tl!4068)))))

(declare-fun c!14016 () C!15306)

(declare-fun derivativeStep!2143 (Regex!7574 C!15306) Regex!7574)

(assert (=> b!2543662 (= lt!902241 (derivativeStep!2143 r!27340 c!14016))))

(declare-fun b!2543663 () Bool)

(declare-fun tp!812159 () Bool)

(assert (=> b!2543663 (= e!1608212 (and tp_is_empty!13003 tp!812159))))

(declare-fun b!2543664 () Bool)

(declare-fun res!1071906 () Bool)

(declare-fun e!1608210 () Bool)

(assert (=> b!2543664 (=> (not res!1071906) (not e!1608210))))

(assert (=> b!2543664 (= res!1071906 (validRegex!3200 (reg!7903 r!27340)))))

(declare-fun b!2543665 () Bool)

(declare-fun contains!5300 (List!29639 C!15306) Bool)

(declare-fun firstChars!91 (Regex!7574) List!29639)

(assert (=> b!2543665 (= e!1608210 (not (contains!5300 (firstChars!91 r!27340) c!14016)))))

(assert (=> b!2543665 (contains!5300 (firstChars!91 (reg!7903 r!27340)) c!14016)))

(declare-datatypes ((Unit!43341 0))(
  ( (Unit!43342) )
))
(declare-fun lt!902240 () Unit!43341)

(declare-fun lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!7 (Regex!7574 C!15306 List!29639) Unit!43341)

(assert (=> b!2543665 (= lt!902240 (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!7 (reg!7903 r!27340) c!14016 tl!4068))))

(declare-fun b!2543666 () Bool)

(declare-fun res!1071905 () Bool)

(assert (=> b!2543666 (=> (not res!1071905) (not e!1608211))))

(assert (=> b!2543666 (= res!1071905 (and (not (is-EmptyExpr!7574 r!27340)) (not (is-EmptyLang!7574 r!27340)) (not (is-ElementMatch!7574 r!27340)) (not (is-Union!7574 r!27340)) (is-Star!7574 r!27340)))))

(declare-fun b!2543667 () Bool)

(declare-fun res!1071904 () Bool)

(assert (=> b!2543667 (=> (not res!1071904) (not e!1608210))))

(declare-fun lt!902239 () Regex!7574)

(assert (=> b!2543667 (= res!1071904 (nullable!2491 (derivative!269 lt!902239 tl!4068)))))

(declare-fun b!2543668 () Bool)

(assert (=> b!2543668 (= e!1608211 e!1608210)))

(declare-fun res!1071903 () Bool)

(assert (=> b!2543668 (=> (not res!1071903) (not e!1608210))))

(assert (=> b!2543668 (= res!1071903 (= lt!902241 (Concat!12270 lt!902239 (Star!7574 (reg!7903 r!27340)))))))

(assert (=> b!2543668 (= lt!902239 (derivativeStep!2143 (reg!7903 r!27340) c!14016))))

(declare-fun b!2543669 () Bool)

(declare-fun tp!812161 () Bool)

(declare-fun tp!812164 () Bool)

(assert (=> b!2543669 (= e!1608213 (and tp!812161 tp!812164))))

(assert (= (and start!246950 res!1071907) b!2543662))

(assert (= (and b!2543662 res!1071908) b!2543666))

(assert (= (and b!2543666 res!1071905) b!2543668))

(assert (= (and b!2543668 res!1071903) b!2543667))

(assert (= (and b!2543667 res!1071904) b!2543664))

(assert (= (and b!2543664 res!1071906) b!2543665))

(assert (= (and start!246950 (is-ElementMatch!7574 r!27340)) b!2543659))

(assert (= (and start!246950 (is-Concat!12270 r!27340)) b!2543660))

(assert (= (and start!246950 (is-Star!7574 r!27340)) b!2543661))

(assert (= (and start!246950 (is-Union!7574 r!27340)) b!2543669))

(assert (= (and start!246950 (is-Cons!29539 tl!4068)) b!2543663))

(declare-fun m!2889501 () Bool)

(assert (=> b!2543662 m!2889501))

(assert (=> b!2543662 m!2889501))

(declare-fun m!2889503 () Bool)

(assert (=> b!2543662 m!2889503))

(declare-fun m!2889505 () Bool)

(assert (=> b!2543662 m!2889505))

(declare-fun m!2889507 () Bool)

(assert (=> start!246950 m!2889507))

(declare-fun m!2889509 () Bool)

(assert (=> b!2543664 m!2889509))

(declare-fun m!2889511 () Bool)

(assert (=> b!2543665 m!2889511))

(declare-fun m!2889513 () Bool)

(assert (=> b!2543665 m!2889513))

(assert (=> b!2543665 m!2889511))

(declare-fun m!2889515 () Bool)

(assert (=> b!2543665 m!2889515))

(declare-fun m!2889517 () Bool)

(assert (=> b!2543665 m!2889517))

(declare-fun m!2889519 () Bool)

(assert (=> b!2543665 m!2889519))

(assert (=> b!2543665 m!2889515))

(declare-fun m!2889521 () Bool)

(assert (=> b!2543667 m!2889521))

(assert (=> b!2543667 m!2889521))

(declare-fun m!2889523 () Bool)

(assert (=> b!2543667 m!2889523))

(declare-fun m!2889525 () Bool)

(assert (=> b!2543668 m!2889525))

(push 1)

(assert (not start!246950))

(assert (not b!2543662))

(assert (not b!2543664))

(assert (not b!2543668))

(assert (not b!2543663))

(assert (not b!2543665))

(assert tp_is_empty!13003)

(assert (not b!2543667))

(assert (not b!2543661))

(assert (not b!2543669))

(assert (not b!2543660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2543756 () Bool)

(declare-fun e!1608264 () Regex!7574)

(declare-fun call!161205 () Regex!7574)

(declare-fun call!161206 () Regex!7574)

(assert (=> b!2543756 (= e!1608264 (Union!7574 call!161205 call!161206))))

(declare-fun bm!161200 () Bool)

(declare-fun call!161208 () Regex!7574)

(declare-fun call!161207 () Regex!7574)

(assert (=> bm!161200 (= call!161208 call!161207)))

(declare-fun b!2543757 () Bool)

(declare-fun c!407367 () Bool)

(assert (=> b!2543757 (= c!407367 (nullable!2491 (regOne!15660 (reg!7903 r!27340))))))

(declare-fun e!1608265 () Regex!7574)

(declare-fun e!1608267 () Regex!7574)

(assert (=> b!2543757 (= e!1608265 e!1608267)))

(declare-fun b!2543758 () Bool)

(declare-fun e!1608266 () Regex!7574)

(assert (=> b!2543758 (= e!1608266 EmptyLang!7574)))

(declare-fun b!2543759 () Bool)

(declare-fun c!407363 () Bool)

(assert (=> b!2543759 (= c!407363 (is-Union!7574 (reg!7903 r!27340)))))

(declare-fun e!1608263 () Regex!7574)

(assert (=> b!2543759 (= e!1608263 e!1608264)))

(declare-fun b!2543760 () Bool)

(assert (=> b!2543760 (= e!1608267 (Union!7574 (Concat!12270 call!161208 (regTwo!15660 (reg!7903 r!27340))) call!161205))))

(declare-fun b!2543761 () Bool)

(assert (=> b!2543761 (= e!1608266 e!1608263)))

(declare-fun c!407364 () Bool)

(assert (=> b!2543761 (= c!407364 (is-ElementMatch!7574 (reg!7903 r!27340)))))

(declare-fun b!2543762 () Bool)

(assert (=> b!2543762 (= e!1608267 (Union!7574 (Concat!12270 call!161208 (regTwo!15660 (reg!7903 r!27340))) EmptyLang!7574))))

(declare-fun c!407366 () Bool)

(declare-fun bm!161201 () Bool)

(assert (=> bm!161201 (= call!161206 (derivativeStep!2143 (ite c!407363 (regTwo!15661 (reg!7903 r!27340)) (ite c!407366 (reg!7903 (reg!7903 r!27340)) (regOne!15660 (reg!7903 r!27340)))) c!14016))))

(declare-fun bm!161202 () Bool)

(assert (=> bm!161202 (= call!161207 call!161206)))

(declare-fun b!2543763 () Bool)

(assert (=> b!2543763 (= e!1608264 e!1608265)))

(assert (=> b!2543763 (= c!407366 (is-Star!7574 (reg!7903 r!27340)))))

(declare-fun b!2543764 () Bool)

(assert (=> b!2543764 (= e!1608263 (ite (= c!14016 (c!407342 (reg!7903 r!27340))) EmptyExpr!7574 EmptyLang!7574))))

(declare-fun b!2543765 () Bool)

(assert (=> b!2543765 (= e!1608265 (Concat!12270 call!161207 (reg!7903 r!27340)))))

(declare-fun bm!161203 () Bool)

(assert (=> bm!161203 (= call!161205 (derivativeStep!2143 (ite c!407363 (regOne!15661 (reg!7903 r!27340)) (regTwo!15660 (reg!7903 r!27340))) c!14016))))

(declare-fun d!722115 () Bool)

(declare-fun lt!902256 () Regex!7574)

(assert (=> d!722115 (validRegex!3200 lt!902256)))

(assert (=> d!722115 (= lt!902256 e!1608266)))

(declare-fun c!407365 () Bool)

(assert (=> d!722115 (= c!407365 (or (is-EmptyExpr!7574 (reg!7903 r!27340)) (is-EmptyLang!7574 (reg!7903 r!27340))))))

(assert (=> d!722115 (validRegex!3200 (reg!7903 r!27340))))

(assert (=> d!722115 (= (derivativeStep!2143 (reg!7903 r!27340) c!14016) lt!902256)))

(assert (= (and d!722115 c!407365) b!2543758))

(assert (= (and d!722115 (not c!407365)) b!2543761))

(assert (= (and b!2543761 c!407364) b!2543764))

(assert (= (and b!2543761 (not c!407364)) b!2543759))

(assert (= (and b!2543759 c!407363) b!2543756))

(assert (= (and b!2543759 (not c!407363)) b!2543763))

(assert (= (and b!2543763 c!407366) b!2543765))

(assert (= (and b!2543763 (not c!407366)) b!2543757))

(assert (= (and b!2543757 c!407367) b!2543760))

(assert (= (and b!2543757 (not c!407367)) b!2543762))

(assert (= (or b!2543760 b!2543762) bm!161200))

(assert (= (or b!2543765 bm!161200) bm!161202))

(assert (= (or b!2543756 bm!161202) bm!161201))

(assert (= (or b!2543756 b!2543760) bm!161203))

(declare-fun m!2889569 () Bool)

(assert (=> b!2543757 m!2889569))

(declare-fun m!2889571 () Bool)

(assert (=> bm!161201 m!2889571))

(declare-fun m!2889573 () Bool)

(assert (=> bm!161203 m!2889573))

(declare-fun m!2889575 () Bool)

(assert (=> d!722115 m!2889575))

(assert (=> d!722115 m!2889509))

(assert (=> b!2543668 d!722115))

(declare-fun d!722123 () Bool)

(assert (=> d!722123 (contains!5300 (firstChars!91 (reg!7903 r!27340)) c!14016)))

(declare-fun lt!902261 () Unit!43341)

(declare-fun choose!15028 (Regex!7574 C!15306 List!29639) Unit!43341)

(assert (=> d!722123 (= lt!902261 (choose!15028 (reg!7903 r!27340) c!14016 tl!4068))))

(assert (=> d!722123 (validRegex!3200 (reg!7903 r!27340))))

(assert (=> d!722123 (= (lemmaDerivAfterDerivStepIsNullableThenFirstCharsContainsHead!7 (reg!7903 r!27340) c!14016 tl!4068) lt!902261)))

(declare-fun bs!469461 () Bool)

(assert (= bs!469461 d!722123))

(assert (=> bs!469461 m!2889511))

(assert (=> bs!469461 m!2889511))

(assert (=> bs!469461 m!2889513))

(declare-fun m!2889577 () Bool)

(assert (=> bs!469461 m!2889577))

(assert (=> bs!469461 m!2889509))

(assert (=> b!2543665 d!722123))

(declare-fun b!2543816 () Bool)

(declare-fun e!1608294 () List!29639)

(declare-fun call!161234 () List!29639)

(assert (=> b!2543816 (= e!1608294 call!161234)))

(declare-fun bm!161226 () Bool)

(declare-fun call!161233 () List!29639)

(declare-fun call!161232 () List!29639)

(assert (=> bm!161226 (= call!161233 call!161232)))

(declare-fun b!2543817 () Bool)

(declare-fun c!407398 () Bool)

(assert (=> b!2543817 (= c!407398 (nullable!2491 (regOne!15660 r!27340)))))

(declare-fun e!1608296 () List!29639)

(assert (=> b!2543817 (= e!1608294 e!1608296)))

(declare-fun call!161235 () List!29639)

(declare-fun bm!161227 () Bool)

(declare-fun c!407395 () Bool)

(declare-fun ++!7249 (List!29639 List!29639) List!29639)

(assert (=> bm!161227 (= call!161234 (++!7249 (ite c!407395 call!161232 call!161235) (ite c!407395 call!161235 call!161233)))))

(declare-fun c!407396 () Bool)

(declare-fun call!161231 () List!29639)

(declare-fun bm!161228 () Bool)

(assert (=> bm!161228 (= call!161231 (firstChars!91 (ite c!407396 (reg!7903 r!27340) (ite c!407395 (regTwo!15661 r!27340) (regOne!15660 r!27340)))))))

(declare-fun bm!161229 () Bool)

(assert (=> bm!161229 (= call!161235 call!161231)))

(declare-fun b!2543818 () Bool)

(assert (=> b!2543818 (= c!407396 (is-Star!7574 r!27340))))

(declare-fun e!1608293 () List!29639)

(declare-fun e!1608297 () List!29639)

(assert (=> b!2543818 (= e!1608293 e!1608297)))

(declare-fun b!2543819 () Bool)

(declare-fun e!1608295 () List!29639)

(assert (=> b!2543819 (= e!1608295 Nil!29539)))

(declare-fun d!722125 () Bool)

(declare-fun c!407397 () Bool)

(assert (=> d!722125 (= c!407397 (or (is-EmptyExpr!7574 r!27340) (is-EmptyLang!7574 r!27340)))))

(assert (=> d!722125 (= (firstChars!91 r!27340) e!1608295)))

(declare-fun b!2543820 () Bool)

(assert (=> b!2543820 (= e!1608297 e!1608294)))

(assert (=> b!2543820 (= c!407395 (is-Union!7574 r!27340))))

(declare-fun bm!161230 () Bool)

(assert (=> bm!161230 (= call!161232 (firstChars!91 (ite c!407395 (regOne!15661 r!27340) (ite c!407398 (regTwo!15660 r!27340) (regOne!15660 r!27340)))))))

(declare-fun b!2543821 () Bool)

(assert (=> b!2543821 (= e!1608297 call!161231)))

(declare-fun b!2543822 () Bool)

(assert (=> b!2543822 (= e!1608296 call!161233)))

(declare-fun b!2543823 () Bool)

(assert (=> b!2543823 (= e!1608293 (Cons!29539 (c!407342 r!27340) Nil!29539))))

(declare-fun b!2543824 () Bool)

(assert (=> b!2543824 (= e!1608295 e!1608293)))

(declare-fun c!407394 () Bool)

(assert (=> b!2543824 (= c!407394 (is-ElementMatch!7574 r!27340))))

(declare-fun b!2543825 () Bool)

(assert (=> b!2543825 (= e!1608296 call!161234)))

(assert (= (and d!722125 c!407397) b!2543819))

(assert (= (and d!722125 (not c!407397)) b!2543824))

(assert (= (and b!2543824 c!407394) b!2543823))

(assert (= (and b!2543824 (not c!407394)) b!2543818))

(assert (= (and b!2543818 c!407396) b!2543821))

(assert (= (and b!2543818 (not c!407396)) b!2543820))

(assert (= (and b!2543820 c!407395) b!2543816))

(assert (= (and b!2543820 (not c!407395)) b!2543817))

(assert (= (and b!2543817 c!407398) b!2543825))

(assert (= (and b!2543817 (not c!407398)) b!2543822))

(assert (= (or b!2543825 b!2543822) bm!161226))

(assert (= (or b!2543816 bm!161226) bm!161230))

(assert (= (or b!2543816 b!2543825) bm!161229))

(assert (= (or b!2543816 b!2543825) bm!161227))

(assert (= (or b!2543821 bm!161229) bm!161228))

(declare-fun m!2889587 () Bool)

(assert (=> b!2543817 m!2889587))

(declare-fun m!2889589 () Bool)

(assert (=> bm!161227 m!2889589))

(declare-fun m!2889591 () Bool)

(assert (=> bm!161228 m!2889591))

(declare-fun m!2889593 () Bool)

(assert (=> bm!161230 m!2889593))

(assert (=> b!2543665 d!722125))

(declare-fun d!722129 () Bool)

(declare-fun lt!902268 () Bool)

(declare-fun content!4055 (List!29639) (Set C!15306))

(assert (=> d!722129 (= lt!902268 (set.member c!14016 (content!4055 (firstChars!91 (reg!7903 r!27340)))))))

(declare-fun e!1608302 () Bool)

(assert (=> d!722129 (= lt!902268 e!1608302)))

(declare-fun res!1071946 () Bool)

(assert (=> d!722129 (=> (not res!1071946) (not e!1608302))))

(assert (=> d!722129 (= res!1071946 (is-Cons!29539 (firstChars!91 (reg!7903 r!27340))))))

(assert (=> d!722129 (= (contains!5300 (firstChars!91 (reg!7903 r!27340)) c!14016) lt!902268)))

(declare-fun b!2543830 () Bool)

(declare-fun e!1608303 () Bool)

(assert (=> b!2543830 (= e!1608302 e!1608303)))

(declare-fun res!1071947 () Bool)

(assert (=> b!2543830 (=> res!1071947 e!1608303)))

(assert (=> b!2543830 (= res!1071947 (= (h!34959 (firstChars!91 (reg!7903 r!27340))) c!14016))))

(declare-fun b!2543831 () Bool)

(assert (=> b!2543831 (= e!1608303 (contains!5300 (t!211338 (firstChars!91 (reg!7903 r!27340))) c!14016))))

(assert (= (and d!722129 res!1071946) b!2543830))

(assert (= (and b!2543830 (not res!1071947)) b!2543831))

(assert (=> d!722129 m!2889511))

(declare-fun m!2889597 () Bool)

(assert (=> d!722129 m!2889597))

(declare-fun m!2889599 () Bool)

(assert (=> d!722129 m!2889599))

(declare-fun m!2889601 () Bool)

(assert (=> b!2543831 m!2889601))

(assert (=> b!2543665 d!722129))

(declare-fun b!2543832 () Bool)

(declare-fun e!1608305 () List!29639)

(declare-fun call!161239 () List!29639)

(assert (=> b!2543832 (= e!1608305 call!161239)))

(declare-fun bm!161231 () Bool)

(declare-fun call!161238 () List!29639)

(declare-fun call!161237 () List!29639)

(assert (=> bm!161231 (= call!161238 call!161237)))

(declare-fun b!2543833 () Bool)

(declare-fun c!407404 () Bool)

(assert (=> b!2543833 (= c!407404 (nullable!2491 (regOne!15660 (reg!7903 r!27340))))))

(declare-fun e!1608307 () List!29639)

(assert (=> b!2543833 (= e!1608305 e!1608307)))

(declare-fun c!407401 () Bool)

(declare-fun bm!161232 () Bool)

(declare-fun call!161240 () List!29639)

(assert (=> bm!161232 (= call!161239 (++!7249 (ite c!407401 call!161237 call!161240) (ite c!407401 call!161240 call!161238)))))

(declare-fun call!161236 () List!29639)

(declare-fun c!407402 () Bool)

(declare-fun bm!161233 () Bool)

(assert (=> bm!161233 (= call!161236 (firstChars!91 (ite c!407402 (reg!7903 (reg!7903 r!27340)) (ite c!407401 (regTwo!15661 (reg!7903 r!27340)) (regOne!15660 (reg!7903 r!27340))))))))

(declare-fun bm!161234 () Bool)

(assert (=> bm!161234 (= call!161240 call!161236)))

(declare-fun b!2543834 () Bool)

(assert (=> b!2543834 (= c!407402 (is-Star!7574 (reg!7903 r!27340)))))

(declare-fun e!1608304 () List!29639)

(declare-fun e!1608308 () List!29639)

(assert (=> b!2543834 (= e!1608304 e!1608308)))

(declare-fun b!2543835 () Bool)

(declare-fun e!1608306 () List!29639)

(assert (=> b!2543835 (= e!1608306 Nil!29539)))

(declare-fun d!722133 () Bool)

(declare-fun c!407403 () Bool)

(assert (=> d!722133 (= c!407403 (or (is-EmptyExpr!7574 (reg!7903 r!27340)) (is-EmptyLang!7574 (reg!7903 r!27340))))))

(assert (=> d!722133 (= (firstChars!91 (reg!7903 r!27340)) e!1608306)))

(declare-fun b!2543836 () Bool)

(assert (=> b!2543836 (= e!1608308 e!1608305)))

(assert (=> b!2543836 (= c!407401 (is-Union!7574 (reg!7903 r!27340)))))

(declare-fun bm!161235 () Bool)

(assert (=> bm!161235 (= call!161237 (firstChars!91 (ite c!407401 (regOne!15661 (reg!7903 r!27340)) (ite c!407404 (regTwo!15660 (reg!7903 r!27340)) (regOne!15660 (reg!7903 r!27340))))))))

(declare-fun b!2543837 () Bool)

(assert (=> b!2543837 (= e!1608308 call!161236)))

(declare-fun b!2543838 () Bool)

(assert (=> b!2543838 (= e!1608307 call!161238)))

(declare-fun b!2543839 () Bool)

(assert (=> b!2543839 (= e!1608304 (Cons!29539 (c!407342 (reg!7903 r!27340)) Nil!29539))))

(declare-fun b!2543840 () Bool)

(assert (=> b!2543840 (= e!1608306 e!1608304)))

(declare-fun c!407400 () Bool)

(assert (=> b!2543840 (= c!407400 (is-ElementMatch!7574 (reg!7903 r!27340)))))

(declare-fun b!2543841 () Bool)

(assert (=> b!2543841 (= e!1608307 call!161239)))

(assert (= (and d!722133 c!407403) b!2543835))

(assert (= (and d!722133 (not c!407403)) b!2543840))

(assert (= (and b!2543840 c!407400) b!2543839))

(assert (= (and b!2543840 (not c!407400)) b!2543834))

(assert (= (and b!2543834 c!407402) b!2543837))

(assert (= (and b!2543834 (not c!407402)) b!2543836))

(assert (= (and b!2543836 c!407401) b!2543832))

(assert (= (and b!2543836 (not c!407401)) b!2543833))

(assert (= (and b!2543833 c!407404) b!2543841))

(assert (= (and b!2543833 (not c!407404)) b!2543838))

(assert (= (or b!2543841 b!2543838) bm!161231))

(assert (= (or b!2543832 bm!161231) bm!161235))

(assert (= (or b!2543832 b!2543841) bm!161234))

(assert (= (or b!2543832 b!2543841) bm!161232))

(assert (= (or b!2543837 bm!161234) bm!161233))

(assert (=> b!2543833 m!2889569))

(declare-fun m!2889603 () Bool)

(assert (=> bm!161232 m!2889603))

(declare-fun m!2889605 () Bool)

(assert (=> bm!161233 m!2889605))

(declare-fun m!2889607 () Bool)

(assert (=> bm!161235 m!2889607))

(assert (=> b!2543665 d!722133))

(declare-fun d!722135 () Bool)

(declare-fun lt!902269 () Bool)

(assert (=> d!722135 (= lt!902269 (set.member c!14016 (content!4055 (firstChars!91 r!27340))))))

(declare-fun e!1608309 () Bool)

(assert (=> d!722135 (= lt!902269 e!1608309)))

(declare-fun res!1071948 () Bool)

(assert (=> d!722135 (=> (not res!1071948) (not e!1608309))))

(assert (=> d!722135 (= res!1071948 (is-Cons!29539 (firstChars!91 r!27340)))))

(assert (=> d!722135 (= (contains!5300 (firstChars!91 r!27340) c!14016) lt!902269)))

(declare-fun b!2543842 () Bool)

(declare-fun e!1608310 () Bool)

(assert (=> b!2543842 (= e!1608309 e!1608310)))

(declare-fun res!1071949 () Bool)

(assert (=> b!2543842 (=> res!1071949 e!1608310)))

(assert (=> b!2543842 (= res!1071949 (= (h!34959 (firstChars!91 r!27340)) c!14016))))

(declare-fun b!2543843 () Bool)

(assert (=> b!2543843 (= e!1608310 (contains!5300 (t!211338 (firstChars!91 r!27340)) c!14016))))

(assert (= (and d!722135 res!1071948) b!2543842))

(assert (= (and b!2543842 (not res!1071949)) b!2543843))

(assert (=> d!722135 m!2889515))

(declare-fun m!2889609 () Bool)

(assert (=> d!722135 m!2889609))

(declare-fun m!2889611 () Bool)

(assert (=> d!722135 m!2889611))

(declare-fun m!2889613 () Bool)

(assert (=> b!2543843 m!2889613))

(assert (=> b!2543665 d!722135))

(declare-fun b!2543882 () Bool)

(declare-fun e!1608338 () Bool)

(declare-fun call!161258 () Bool)

(assert (=> b!2543882 (= e!1608338 call!161258)))

(declare-fun bm!161252 () Bool)

(declare-fun c!407420 () Bool)

(declare-fun c!407419 () Bool)

(declare-fun call!161259 () Bool)

(assert (=> bm!161252 (= call!161259 (validRegex!3200 (ite c!407419 (reg!7903 r!27340) (ite c!407420 (regTwo!15661 r!27340) (regOne!15660 r!27340)))))))

(declare-fun b!2543883 () Bool)

(declare-fun e!1608339 () Bool)

(declare-fun e!1608337 () Bool)

(assert (=> b!2543883 (= e!1608339 e!1608337)))

(assert (=> b!2543883 (= c!407419 (is-Star!7574 r!27340))))

(declare-fun b!2543884 () Bool)

(declare-fun e!1608336 () Bool)

(assert (=> b!2543884 (= e!1608337 e!1608336)))

(assert (=> b!2543884 (= c!407420 (is-Union!7574 r!27340))))

(declare-fun bm!161253 () Bool)

(declare-fun call!161257 () Bool)

(assert (=> bm!161253 (= call!161257 call!161259)))

(declare-fun bm!161254 () Bool)

(assert (=> bm!161254 (= call!161258 (validRegex!3200 (ite c!407420 (regOne!15661 r!27340) (regTwo!15660 r!27340))))))

(declare-fun d!722137 () Bool)

(declare-fun res!1071961 () Bool)

(assert (=> d!722137 (=> res!1071961 e!1608339)))

(assert (=> d!722137 (= res!1071961 (is-ElementMatch!7574 r!27340))))

(assert (=> d!722137 (= (validRegex!3200 r!27340) e!1608339)))

(declare-fun b!2543885 () Bool)

(declare-fun e!1608341 () Bool)

(assert (=> b!2543885 (= e!1608341 call!161257)))

(declare-fun b!2543886 () Bool)

(declare-fun res!1071960 () Bool)

(declare-fun e!1608335 () Bool)

(assert (=> b!2543886 (=> res!1071960 e!1608335)))

(assert (=> b!2543886 (= res!1071960 (not (is-Concat!12270 r!27340)))))

(assert (=> b!2543886 (= e!1608336 e!1608335)))

(declare-fun b!2543887 () Bool)

(assert (=> b!2543887 (= e!1608335 e!1608338)))

(declare-fun res!1071962 () Bool)

(assert (=> b!2543887 (=> (not res!1071962) (not e!1608338))))

(assert (=> b!2543887 (= res!1071962 call!161257)))

(declare-fun b!2543888 () Bool)

(declare-fun e!1608340 () Bool)

(assert (=> b!2543888 (= e!1608340 call!161259)))

(declare-fun b!2543889 () Bool)

(assert (=> b!2543889 (= e!1608337 e!1608340)))

(declare-fun res!1071963 () Bool)

(assert (=> b!2543889 (= res!1071963 (not (nullable!2491 (reg!7903 r!27340))))))

(assert (=> b!2543889 (=> (not res!1071963) (not e!1608340))))

(declare-fun b!2543890 () Bool)

(declare-fun res!1071964 () Bool)

(assert (=> b!2543890 (=> (not res!1071964) (not e!1608341))))

(assert (=> b!2543890 (= res!1071964 call!161258)))

(assert (=> b!2543890 (= e!1608336 e!1608341)))

(assert (= (and d!722137 (not res!1071961)) b!2543883))

(assert (= (and b!2543883 c!407419) b!2543889))

(assert (= (and b!2543883 (not c!407419)) b!2543884))

(assert (= (and b!2543889 res!1071963) b!2543888))

(assert (= (and b!2543884 c!407420) b!2543890))

(assert (= (and b!2543884 (not c!407420)) b!2543886))

(assert (= (and b!2543890 res!1071964) b!2543885))

(assert (= (and b!2543886 (not res!1071960)) b!2543887))

(assert (= (and b!2543887 res!1071962) b!2543882))

(assert (= (or b!2543890 b!2543882) bm!161254))

(assert (= (or b!2543885 b!2543887) bm!161253))

(assert (= (or b!2543888 bm!161253) bm!161252))

(declare-fun m!2889615 () Bool)

(assert (=> bm!161252 m!2889615))

(declare-fun m!2889617 () Bool)

(assert (=> bm!161254 m!2889617))

(declare-fun m!2889619 () Bool)

(assert (=> b!2543889 m!2889619))

(assert (=> start!246950 d!722137))

(declare-fun b!2543891 () Bool)

(declare-fun e!1608345 () Bool)

(declare-fun call!161261 () Bool)

(assert (=> b!2543891 (= e!1608345 call!161261)))

(declare-fun call!161262 () Bool)

(declare-fun c!407421 () Bool)

(declare-fun c!407422 () Bool)

(declare-fun bm!161255 () Bool)

(assert (=> bm!161255 (= call!161262 (validRegex!3200 (ite c!407421 (reg!7903 (reg!7903 r!27340)) (ite c!407422 (regTwo!15661 (reg!7903 r!27340)) (regOne!15660 (reg!7903 r!27340))))))))

(declare-fun b!2543892 () Bool)

(declare-fun e!1608346 () Bool)

(declare-fun e!1608344 () Bool)

(assert (=> b!2543892 (= e!1608346 e!1608344)))

(assert (=> b!2543892 (= c!407421 (is-Star!7574 (reg!7903 r!27340)))))

(declare-fun b!2543893 () Bool)

(declare-fun e!1608343 () Bool)

(assert (=> b!2543893 (= e!1608344 e!1608343)))

(assert (=> b!2543893 (= c!407422 (is-Union!7574 (reg!7903 r!27340)))))

(declare-fun bm!161256 () Bool)

(declare-fun call!161260 () Bool)

(assert (=> bm!161256 (= call!161260 call!161262)))

(declare-fun bm!161257 () Bool)

(assert (=> bm!161257 (= call!161261 (validRegex!3200 (ite c!407422 (regOne!15661 (reg!7903 r!27340)) (regTwo!15660 (reg!7903 r!27340)))))))

(declare-fun d!722139 () Bool)

(declare-fun res!1071966 () Bool)

(assert (=> d!722139 (=> res!1071966 e!1608346)))

(assert (=> d!722139 (= res!1071966 (is-ElementMatch!7574 (reg!7903 r!27340)))))

(assert (=> d!722139 (= (validRegex!3200 (reg!7903 r!27340)) e!1608346)))

(declare-fun b!2543894 () Bool)

(declare-fun e!1608348 () Bool)

(assert (=> b!2543894 (= e!1608348 call!161260)))

(declare-fun b!2543895 () Bool)

(declare-fun res!1071965 () Bool)

(declare-fun e!1608342 () Bool)

(assert (=> b!2543895 (=> res!1071965 e!1608342)))

(assert (=> b!2543895 (= res!1071965 (not (is-Concat!12270 (reg!7903 r!27340))))))

(assert (=> b!2543895 (= e!1608343 e!1608342)))

(declare-fun b!2543896 () Bool)

(assert (=> b!2543896 (= e!1608342 e!1608345)))

(declare-fun res!1071967 () Bool)

(assert (=> b!2543896 (=> (not res!1071967) (not e!1608345))))

(assert (=> b!2543896 (= res!1071967 call!161260)))

(declare-fun b!2543897 () Bool)

(declare-fun e!1608347 () Bool)

(assert (=> b!2543897 (= e!1608347 call!161262)))

(declare-fun b!2543898 () Bool)

(assert (=> b!2543898 (= e!1608344 e!1608347)))

(declare-fun res!1071968 () Bool)

(assert (=> b!2543898 (= res!1071968 (not (nullable!2491 (reg!7903 (reg!7903 r!27340)))))))

(assert (=> b!2543898 (=> (not res!1071968) (not e!1608347))))

(declare-fun b!2543899 () Bool)

(declare-fun res!1071969 () Bool)

(assert (=> b!2543899 (=> (not res!1071969) (not e!1608348))))

(assert (=> b!2543899 (= res!1071969 call!161261)))

(assert (=> b!2543899 (= e!1608343 e!1608348)))

(assert (= (and d!722139 (not res!1071966)) b!2543892))

(assert (= (and b!2543892 c!407421) b!2543898))

(assert (= (and b!2543892 (not c!407421)) b!2543893))

(assert (= (and b!2543898 res!1071968) b!2543897))

(assert (= (and b!2543893 c!407422) b!2543899))

(assert (= (and b!2543893 (not c!407422)) b!2543895))

(assert (= (and b!2543899 res!1071969) b!2543894))

(assert (= (and b!2543895 (not res!1071965)) b!2543896))

(assert (= (and b!2543896 res!1071967) b!2543891))

(assert (= (or b!2543899 b!2543891) bm!161257))

(assert (= (or b!2543894 b!2543896) bm!161256))

(assert (= (or b!2543897 bm!161256) bm!161255))

(declare-fun m!2889621 () Bool)

(assert (=> bm!161255 m!2889621))

(declare-fun m!2889623 () Bool)

(assert (=> bm!161257 m!2889623))

(declare-fun m!2889625 () Bool)

(assert (=> b!2543898 m!2889625))

(assert (=> b!2543664 d!722139))

(declare-fun d!722141 () Bool)

(declare-fun nullableFct!721 (Regex!7574) Bool)

(assert (=> d!722141 (= (nullable!2491 (derivative!269 lt!902241 tl!4068)) (nullableFct!721 (derivative!269 lt!902241 tl!4068)))))

(declare-fun bs!469463 () Bool)

(assert (= bs!469463 d!722141))

(assert (=> bs!469463 m!2889501))

(declare-fun m!2889627 () Bool)

(assert (=> bs!469463 m!2889627))

(assert (=> b!2543662 d!722141))

(declare-fun d!722143 () Bool)

(declare-fun lt!902272 () Regex!7574)

(assert (=> d!722143 (validRegex!3200 lt!902272)))

(declare-fun e!1608356 () Regex!7574)

(assert (=> d!722143 (= lt!902272 e!1608356)))

(declare-fun c!407430 () Bool)

(assert (=> d!722143 (= c!407430 (is-Cons!29539 tl!4068))))

(assert (=> d!722143 (validRegex!3200 lt!902241)))

(assert (=> d!722143 (= (derivative!269 lt!902241 tl!4068) lt!902272)))

(declare-fun b!2543914 () Bool)

(assert (=> b!2543914 (= e!1608356 (derivative!269 (derivativeStep!2143 lt!902241 (h!34959 tl!4068)) (t!211338 tl!4068)))))

(declare-fun b!2543915 () Bool)

(assert (=> b!2543915 (= e!1608356 lt!902241)))

(assert (= (and d!722143 c!407430) b!2543914))

(assert (= (and d!722143 (not c!407430)) b!2543915))

(declare-fun m!2889635 () Bool)

(assert (=> d!722143 m!2889635))

(declare-fun m!2889637 () Bool)

(assert (=> d!722143 m!2889637))

(declare-fun m!2889639 () Bool)

(assert (=> b!2543914 m!2889639))

(assert (=> b!2543914 m!2889639))

(declare-fun m!2889641 () Bool)

(assert (=> b!2543914 m!2889641))

(assert (=> b!2543662 d!722143))

(declare-fun b!2543916 () Bool)

(declare-fun e!1608358 () Regex!7574)

(declare-fun call!161268 () Regex!7574)

(declare-fun call!161269 () Regex!7574)

(assert (=> b!2543916 (= e!1608358 (Union!7574 call!161268 call!161269))))

(declare-fun bm!161263 () Bool)

(declare-fun call!161271 () Regex!7574)

(declare-fun call!161270 () Regex!7574)

(assert (=> bm!161263 (= call!161271 call!161270)))

(declare-fun b!2543917 () Bool)

(declare-fun c!407435 () Bool)

(assert (=> b!2543917 (= c!407435 (nullable!2491 (regOne!15660 r!27340)))))

(declare-fun e!1608359 () Regex!7574)

(declare-fun e!1608361 () Regex!7574)

(assert (=> b!2543917 (= e!1608359 e!1608361)))

(declare-fun b!2543918 () Bool)

(declare-fun e!1608360 () Regex!7574)

(assert (=> b!2543918 (= e!1608360 EmptyLang!7574)))

(declare-fun b!2543919 () Bool)

(declare-fun c!407431 () Bool)

(assert (=> b!2543919 (= c!407431 (is-Union!7574 r!27340))))

(declare-fun e!1608357 () Regex!7574)

(assert (=> b!2543919 (= e!1608357 e!1608358)))

(declare-fun b!2543920 () Bool)

(assert (=> b!2543920 (= e!1608361 (Union!7574 (Concat!12270 call!161271 (regTwo!15660 r!27340)) call!161268))))

(declare-fun b!2543921 () Bool)

(assert (=> b!2543921 (= e!1608360 e!1608357)))

(declare-fun c!407432 () Bool)

(assert (=> b!2543921 (= c!407432 (is-ElementMatch!7574 r!27340))))

(declare-fun b!2543922 () Bool)

(assert (=> b!2543922 (= e!1608361 (Union!7574 (Concat!12270 call!161271 (regTwo!15660 r!27340)) EmptyLang!7574))))

(declare-fun bm!161264 () Bool)

(declare-fun c!407434 () Bool)

(assert (=> bm!161264 (= call!161269 (derivativeStep!2143 (ite c!407431 (regTwo!15661 r!27340) (ite c!407434 (reg!7903 r!27340) (regOne!15660 r!27340))) c!14016))))

(declare-fun bm!161265 () Bool)

(assert (=> bm!161265 (= call!161270 call!161269)))

(declare-fun b!2543923 () Bool)

(assert (=> b!2543923 (= e!1608358 e!1608359)))

(assert (=> b!2543923 (= c!407434 (is-Star!7574 r!27340))))

(declare-fun b!2543924 () Bool)

(assert (=> b!2543924 (= e!1608357 (ite (= c!14016 (c!407342 r!27340)) EmptyExpr!7574 EmptyLang!7574))))

(declare-fun b!2543925 () Bool)

(assert (=> b!2543925 (= e!1608359 (Concat!12270 call!161270 r!27340))))

(declare-fun bm!161266 () Bool)

(assert (=> bm!161266 (= call!161268 (derivativeStep!2143 (ite c!407431 (regOne!15661 r!27340) (regTwo!15660 r!27340)) c!14016))))

(declare-fun d!722147 () Bool)

(declare-fun lt!902273 () Regex!7574)

(assert (=> d!722147 (validRegex!3200 lt!902273)))

(assert (=> d!722147 (= lt!902273 e!1608360)))

(declare-fun c!407433 () Bool)

(assert (=> d!722147 (= c!407433 (or (is-EmptyExpr!7574 r!27340) (is-EmptyLang!7574 r!27340)))))

(assert (=> d!722147 (validRegex!3200 r!27340)))

(assert (=> d!722147 (= (derivativeStep!2143 r!27340 c!14016) lt!902273)))

(assert (= (and d!722147 c!407433) b!2543918))

(assert (= (and d!722147 (not c!407433)) b!2543921))

(assert (= (and b!2543921 c!407432) b!2543924))

(assert (= (and b!2543921 (not c!407432)) b!2543919))

(assert (= (and b!2543919 c!407431) b!2543916))

(assert (= (and b!2543919 (not c!407431)) b!2543923))

(assert (= (and b!2543923 c!407434) b!2543925))

(assert (= (and b!2543923 (not c!407434)) b!2543917))

(assert (= (and b!2543917 c!407435) b!2543920))

(assert (= (and b!2543917 (not c!407435)) b!2543922))

(assert (= (or b!2543920 b!2543922) bm!161263))

(assert (= (or b!2543925 bm!161263) bm!161265))

(assert (= (or b!2543916 bm!161265) bm!161264))

(assert (= (or b!2543916 b!2543920) bm!161266))

(assert (=> b!2543917 m!2889587))

(declare-fun m!2889643 () Bool)

(assert (=> bm!161264 m!2889643))

(declare-fun m!2889645 () Bool)

(assert (=> bm!161266 m!2889645))

(declare-fun m!2889647 () Bool)

(assert (=> d!722147 m!2889647))

(assert (=> d!722147 m!2889507))

(assert (=> b!2543662 d!722147))

(declare-fun d!722149 () Bool)

(assert (=> d!722149 (= (nullable!2491 (derivative!269 lt!902239 tl!4068)) (nullableFct!721 (derivative!269 lt!902239 tl!4068)))))

(declare-fun bs!469464 () Bool)

(assert (= bs!469464 d!722149))

(assert (=> bs!469464 m!2889521))

(declare-fun m!2889649 () Bool)

(assert (=> bs!469464 m!2889649))

(assert (=> b!2543667 d!722149))

(declare-fun d!722151 () Bool)

(declare-fun lt!902276 () Regex!7574)

(assert (=> d!722151 (validRegex!3200 lt!902276)))

(declare-fun e!1608366 () Regex!7574)

(assert (=> d!722151 (= lt!902276 e!1608366)))

(declare-fun c!407436 () Bool)

(assert (=> d!722151 (= c!407436 (is-Cons!29539 tl!4068))))

(assert (=> d!722151 (validRegex!3200 lt!902239)))

(assert (=> d!722151 (= (derivative!269 lt!902239 tl!4068) lt!902276)))

(declare-fun b!2543930 () Bool)

(assert (=> b!2543930 (= e!1608366 (derivative!269 (derivativeStep!2143 lt!902239 (h!34959 tl!4068)) (t!211338 tl!4068)))))

(declare-fun b!2543931 () Bool)

(assert (=> b!2543931 (= e!1608366 lt!902239)))

(assert (= (and d!722151 c!407436) b!2543930))

(assert (= (and d!722151 (not c!407436)) b!2543931))

(declare-fun m!2889651 () Bool)

(assert (=> d!722151 m!2889651))

(declare-fun m!2889653 () Bool)

(assert (=> d!722151 m!2889653))

(declare-fun m!2889655 () Bool)

(assert (=> b!2543930 m!2889655))

(assert (=> b!2543930 m!2889655))

(declare-fun m!2889657 () Bool)

(assert (=> b!2543930 m!2889657))

(assert (=> b!2543667 d!722151))

(declare-fun b!2543942 () Bool)

(declare-fun e!1608369 () Bool)

(assert (=> b!2543942 (= e!1608369 tp_is_empty!13003)))

(declare-fun b!2543945 () Bool)

(declare-fun tp!812196 () Bool)

(declare-fun tp!812194 () Bool)

(assert (=> b!2543945 (= e!1608369 (and tp!812196 tp!812194))))

(declare-fun b!2543944 () Bool)

(declare-fun tp!812197 () Bool)

(assert (=> b!2543944 (= e!1608369 tp!812197)))

(assert (=> b!2543669 (= tp!812161 e!1608369)))

(declare-fun b!2543943 () Bool)

(declare-fun tp!812193 () Bool)

(declare-fun tp!812195 () Bool)

(assert (=> b!2543943 (= e!1608369 (and tp!812193 tp!812195))))

(assert (= (and b!2543669 (is-ElementMatch!7574 (regOne!15661 r!27340))) b!2543942))

(assert (= (and b!2543669 (is-Concat!12270 (regOne!15661 r!27340))) b!2543943))

(assert (= (and b!2543669 (is-Star!7574 (regOne!15661 r!27340))) b!2543944))

(assert (= (and b!2543669 (is-Union!7574 (regOne!15661 r!27340))) b!2543945))

(declare-fun b!2543946 () Bool)

(declare-fun e!1608370 () Bool)

(assert (=> b!2543946 (= e!1608370 tp_is_empty!13003)))

(declare-fun b!2543949 () Bool)

(declare-fun tp!812201 () Bool)

(declare-fun tp!812199 () Bool)

(assert (=> b!2543949 (= e!1608370 (and tp!812201 tp!812199))))

(declare-fun b!2543948 () Bool)

(declare-fun tp!812202 () Bool)

(assert (=> b!2543948 (= e!1608370 tp!812202)))

(assert (=> b!2543669 (= tp!812164 e!1608370)))

(declare-fun b!2543947 () Bool)

(declare-fun tp!812198 () Bool)

(declare-fun tp!812200 () Bool)

(assert (=> b!2543947 (= e!1608370 (and tp!812198 tp!812200))))

(assert (= (and b!2543669 (is-ElementMatch!7574 (regTwo!15661 r!27340))) b!2543946))

(assert (= (and b!2543669 (is-Concat!12270 (regTwo!15661 r!27340))) b!2543947))

(assert (= (and b!2543669 (is-Star!7574 (regTwo!15661 r!27340))) b!2543948))

(assert (= (and b!2543669 (is-Union!7574 (regTwo!15661 r!27340))) b!2543949))

(declare-fun b!2543954 () Bool)

(declare-fun e!1608373 () Bool)

(declare-fun tp!812205 () Bool)

(assert (=> b!2543954 (= e!1608373 (and tp_is_empty!13003 tp!812205))))

(assert (=> b!2543663 (= tp!812159 e!1608373)))

(assert (= (and b!2543663 (is-Cons!29539 (t!211338 tl!4068))) b!2543954))

(declare-fun b!2543955 () Bool)

(declare-fun e!1608374 () Bool)

(assert (=> b!2543955 (= e!1608374 tp_is_empty!13003)))

(declare-fun b!2543958 () Bool)

(declare-fun tp!812209 () Bool)

(declare-fun tp!812207 () Bool)

(assert (=> b!2543958 (= e!1608374 (and tp!812209 tp!812207))))

(declare-fun b!2543957 () Bool)

(declare-fun tp!812210 () Bool)

(assert (=> b!2543957 (= e!1608374 tp!812210)))

(assert (=> b!2543661 (= tp!812163 e!1608374)))

(declare-fun b!2543956 () Bool)

(declare-fun tp!812206 () Bool)

(declare-fun tp!812208 () Bool)

(assert (=> b!2543956 (= e!1608374 (and tp!812206 tp!812208))))

(assert (= (and b!2543661 (is-ElementMatch!7574 (reg!7903 r!27340))) b!2543955))

(assert (= (and b!2543661 (is-Concat!12270 (reg!7903 r!27340))) b!2543956))

(assert (= (and b!2543661 (is-Star!7574 (reg!7903 r!27340))) b!2543957))

(assert (= (and b!2543661 (is-Union!7574 (reg!7903 r!27340))) b!2543958))

(declare-fun b!2543961 () Bool)

(declare-fun e!1608377 () Bool)

(assert (=> b!2543961 (= e!1608377 tp_is_empty!13003)))

(declare-fun b!2543964 () Bool)

(declare-fun tp!812214 () Bool)

(declare-fun tp!812212 () Bool)

(assert (=> b!2543964 (= e!1608377 (and tp!812214 tp!812212))))

(declare-fun b!2543963 () Bool)

(declare-fun tp!812215 () Bool)

(assert (=> b!2543963 (= e!1608377 tp!812215)))

(assert (=> b!2543660 (= tp!812162 e!1608377)))

(declare-fun b!2543962 () Bool)

(declare-fun tp!812211 () Bool)

(declare-fun tp!812213 () Bool)

(assert (=> b!2543962 (= e!1608377 (and tp!812211 tp!812213))))

(assert (= (and b!2543660 (is-ElementMatch!7574 (regOne!15660 r!27340))) b!2543961))

(assert (= (and b!2543660 (is-Concat!12270 (regOne!15660 r!27340))) b!2543962))

(assert (= (and b!2543660 (is-Star!7574 (regOne!15660 r!27340))) b!2543963))

(assert (= (and b!2543660 (is-Union!7574 (regOne!15660 r!27340))) b!2543964))

(declare-fun b!2543965 () Bool)

(declare-fun e!1608378 () Bool)

(assert (=> b!2543965 (= e!1608378 tp_is_empty!13003)))

(declare-fun b!2543968 () Bool)

(declare-fun tp!812219 () Bool)

(declare-fun tp!812217 () Bool)

(assert (=> b!2543968 (= e!1608378 (and tp!812219 tp!812217))))

(declare-fun b!2543967 () Bool)

(declare-fun tp!812220 () Bool)

(assert (=> b!2543967 (= e!1608378 tp!812220)))

(assert (=> b!2543660 (= tp!812160 e!1608378)))

(declare-fun b!2543966 () Bool)

(declare-fun tp!812216 () Bool)

(declare-fun tp!812218 () Bool)

(assert (=> b!2543966 (= e!1608378 (and tp!812216 tp!812218))))

(assert (= (and b!2543660 (is-ElementMatch!7574 (regTwo!15660 r!27340))) b!2543965))

(assert (= (and b!2543660 (is-Concat!12270 (regTwo!15660 r!27340))) b!2543966))

(assert (= (and b!2543660 (is-Star!7574 (regTwo!15660 r!27340))) b!2543967))

(assert (= (and b!2543660 (is-Union!7574 (regTwo!15660 r!27340))) b!2543968))

(push 1)

(assert (not b!2543958))

(assert (not b!2543962))

(assert (not bm!161257))

(assert (not b!2543898))

(assert (not b!2543966))

(assert (not b!2543968))

(assert (not b!2543954))

(assert (not b!2543967))

(assert (not b!2543917))

(assert (not b!2543949))

(assert (not b!2543943))

(assert (not d!722115))

(assert (not b!2543947))

(assert (not d!722141))

(assert (not bm!161232))

(assert (not b!2543956))

(assert (not bm!161266))

(assert (not b!2543817))

(assert tp_is_empty!13003)

(assert (not b!2543948))

(assert (not d!722147))

(assert (not b!2543964))

(assert (not b!2543889))

(assert (not b!2543957))

(assert (not bm!161264))

(assert (not bm!161254))

(assert (not bm!161227))

(assert (not bm!161228))

(assert (not bm!161252))

(assert (not b!2543843))

(assert (not bm!161201))

(assert (not b!2543944))

(assert (not d!722123))

(assert (not bm!161235))

(assert (not d!722135))

(assert (not bm!161203))

(assert (not b!2543831))

(assert (not d!722151))

(assert (not d!722129))

(assert (not bm!161255))

(assert (not b!2543757))

(assert (not bm!161233))

(assert (not b!2543833))

(assert (not d!722149))

(assert (not bm!161230))

(assert (not d!722143))

(assert (not b!2543945))

(assert (not b!2543930))

(assert (not b!2543963))

(assert (not b!2543914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

