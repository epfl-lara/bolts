; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743578 () Bool)

(assert start!743578)

(declare-fun b!7860230 () Bool)

(declare-fun e!4645103 () Bool)

(declare-fun tp!2329498 () Bool)

(declare-fun tp!2329490 () Bool)

(assert (=> b!7860230 (= e!4645103 (and tp!2329498 tp!2329490))))

(declare-fun b!7860231 () Bool)

(declare-fun res!3124795 () Bool)

(declare-fun e!4645109 () Bool)

(assert (=> b!7860231 (=> res!3124795 e!4645109)))

(declare-datatypes ((C!42572 0))(
  ( (C!42573 (val!31748 Int)) )
))
(declare-datatypes ((Regex!21123 0))(
  ( (ElementMatch!21123 (c!1444401 C!42572)) (Concat!29968 (regOne!42758 Regex!21123) (regTwo!42758 Regex!21123)) (EmptyExpr!21123) (Star!21123 (reg!21452 Regex!21123)) (EmptyLang!21123) (Union!21123 (regOne!42759 Regex!21123) (regTwo!42759 Regex!21123)) )
))
(declare-fun lt!2680353 () Regex!21123)

(declare-fun validRegex!11533 (Regex!21123) Bool)

(assert (=> b!7860231 (= res!3124795 (not (validRegex!11533 lt!2680353)))))

(declare-fun b!7860232 () Bool)

(declare-fun res!3124792 () Bool)

(declare-fun e!4645105 () Bool)

(assert (=> b!7860232 (=> (not res!3124792) (not e!4645105))))

(declare-fun r2!6156 () Regex!21123)

(declare-fun nullable!9393 (Regex!21123) Bool)

(assert (=> b!7860232 (= res!3124792 (nullable!9393 r2!6156))))

(declare-fun b!7860233 () Bool)

(declare-fun tp_is_empty!52645 () Bool)

(assert (=> b!7860233 (= e!4645103 tp_is_empty!52645)))

(declare-fun b!7860234 () Bool)

(declare-fun res!3124791 () Bool)

(assert (=> b!7860234 (=> (not res!3124791) (not e!4645105))))

(assert (=> b!7860234 (= res!3124791 (validRegex!11533 r2!6156))))

(declare-fun b!7860235 () Bool)

(declare-fun tp!2329493 () Bool)

(assert (=> b!7860235 (= e!4645103 tp!2329493)))

(declare-fun b!7860236 () Bool)

(declare-fun e!4645102 () Bool)

(declare-fun tp!2329491 () Bool)

(declare-fun tp!2329499 () Bool)

(assert (=> b!7860236 (= e!4645102 (and tp!2329491 tp!2329499))))

(declare-fun b!7860237 () Bool)

(declare-fun lt!2680351 () Regex!21123)

(assert (=> b!7860237 (= e!4645109 (validRegex!11533 lt!2680351))))

(declare-fun lt!2680350 () Regex!21123)

(declare-datatypes ((List!73982 0))(
  ( (Nil!73858) (Cons!73858 (h!80306 C!42572) (t!388717 List!73982)) )
))
(declare-fun s!14237 () List!73982)

(declare-fun matchR!10559 (Regex!21123 List!73982) Bool)

(assert (=> b!7860237 (matchR!10559 lt!2680350 (t!388717 s!14237))))

(declare-datatypes ((Unit!168952 0))(
  ( (Unit!168953) )
))
(declare-fun lt!2680354 () Unit!168952)

(declare-fun lt!2680355 () Regex!21123)

(declare-fun lemmaReversedUnionAcceptsSameString!48 (Regex!21123 Regex!21123 List!73982) Unit!168952)

(assert (=> b!7860237 (= lt!2680354 (lemmaReversedUnionAcceptsSameString!48 lt!2680355 lt!2680353 (t!388717 s!14237)))))

(declare-fun b!7860238 () Bool)

(declare-fun res!3124797 () Bool)

(assert (=> b!7860238 (=> (not res!3124797) (not e!4645105))))

(declare-fun r1!6218 () Regex!21123)

(assert (=> b!7860238 (= res!3124797 (matchR!10559 r1!6218 s!14237))))

(declare-fun res!3124793 () Bool)

(assert (=> start!743578 (=> (not res!3124793) (not e!4645105))))

(assert (=> start!743578 (= res!3124793 (validRegex!11533 r1!6218))))

(assert (=> start!743578 e!4645105))

(assert (=> start!743578 e!4645102))

(assert (=> start!743578 e!4645103))

(declare-fun e!4645106 () Bool)

(assert (=> start!743578 e!4645106))

(declare-fun b!7860239 () Bool)

(assert (=> b!7860239 (= e!4645102 tp_is_empty!52645)))

(declare-fun b!7860240 () Bool)

(declare-fun tp!2329497 () Bool)

(declare-fun tp!2329495 () Bool)

(assert (=> b!7860240 (= e!4645103 (and tp!2329497 tp!2329495))))

(declare-fun b!7860241 () Bool)

(declare-fun tp!2329494 () Bool)

(declare-fun tp!2329492 () Bool)

(assert (=> b!7860241 (= e!4645102 (and tp!2329494 tp!2329492))))

(declare-fun b!7860242 () Bool)

(declare-fun e!4645108 () Bool)

(declare-fun e!4645107 () Bool)

(assert (=> b!7860242 (= e!4645108 e!4645107)))

(declare-fun res!3124796 () Bool)

(assert (=> b!7860242 (=> (not res!3124796) (not e!4645107))))

(declare-fun derivativeStep!6356 (Regex!21123 C!42572) Regex!21123)

(assert (=> b!7860242 (= res!3124796 (= (derivativeStep!6356 lt!2680351 (h!80306 s!14237)) lt!2680350))))

(assert (=> b!7860242 (= lt!2680350 (Union!21123 lt!2680353 lt!2680355))))

(assert (=> b!7860242 (= lt!2680355 (derivativeStep!6356 r1!6218 (h!80306 s!14237)))))

(assert (=> b!7860242 (= lt!2680353 (Concat!29968 (derivativeStep!6356 r2!6156 (h!80306 s!14237)) r1!6218))))

(declare-fun b!7860243 () Bool)

(declare-fun tp!2329496 () Bool)

(assert (=> b!7860243 (= e!4645102 tp!2329496)))

(declare-fun b!7860244 () Bool)

(declare-fun e!4645104 () Bool)

(declare-fun head!16072 (List!73982) C!42572)

(declare-fun tail!15615 (List!73982) List!73982)

(assert (=> b!7860244 (= e!4645104 (matchR!10559 (derivativeStep!6356 r1!6218 (head!16072 s!14237)) (tail!15615 s!14237)))))

(declare-fun b!7860245 () Bool)

(declare-fun tp!2329500 () Bool)

(assert (=> b!7860245 (= e!4645106 (and tp_is_empty!52645 tp!2329500))))

(declare-fun b!7860246 () Bool)

(assert (=> b!7860246 (= e!4645104 (nullable!9393 r1!6218))))

(declare-fun b!7860247 () Bool)

(assert (=> b!7860247 (= e!4645105 e!4645108)))

(declare-fun res!3124794 () Bool)

(assert (=> b!7860247 (=> (not res!3124794) (not e!4645108))))

(get-info :version)

(assert (=> b!7860247 (= res!3124794 ((_ is Cons!73858) s!14237))))

(assert (=> b!7860247 (= lt!2680351 (Concat!29968 r2!6156 r1!6218))))

(declare-fun b!7860248 () Bool)

(assert (=> b!7860248 (= e!4645107 (not e!4645109))))

(declare-fun res!3124798 () Bool)

(assert (=> b!7860248 (=> res!3124798 e!4645109)))

(assert (=> b!7860248 (= res!3124798 (not (validRegex!11533 lt!2680355)))))

(assert (=> b!7860248 (matchR!10559 (Union!21123 lt!2680355 lt!2680353) (t!388717 s!14237))))

(declare-fun lt!2680349 () Unit!168952)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!136 (Regex!21123 Regex!21123 List!73982) Unit!168952)

(assert (=> b!7860248 (= lt!2680349 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!136 lt!2680355 lt!2680353 (t!388717 s!14237)))))

(assert (=> b!7860248 e!4645104))

(declare-fun c!1444400 () Bool)

(declare-fun isEmpty!42361 (List!73982) Bool)

(assert (=> b!7860248 (= c!1444400 (isEmpty!42361 s!14237))))

(declare-fun lt!2680352 () Unit!168952)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!10 (Regex!21123 List!73982) Unit!168952)

(assert (=> b!7860248 (= lt!2680352 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!10 r1!6218 s!14237))))

(assert (= (and start!743578 res!3124793) b!7860234))

(assert (= (and b!7860234 res!3124791) b!7860238))

(assert (= (and b!7860238 res!3124797) b!7860232))

(assert (= (and b!7860232 res!3124792) b!7860247))

(assert (= (and b!7860247 res!3124794) b!7860242))

(assert (= (and b!7860242 res!3124796) b!7860248))

(assert (= (and b!7860248 c!1444400) b!7860246))

(assert (= (and b!7860248 (not c!1444400)) b!7860244))

(assert (= (and b!7860248 (not res!3124798)) b!7860231))

(assert (= (and b!7860231 (not res!3124795)) b!7860237))

(assert (= (and start!743578 ((_ is ElementMatch!21123) r1!6218)) b!7860239))

(assert (= (and start!743578 ((_ is Concat!29968) r1!6218)) b!7860236))

(assert (= (and start!743578 ((_ is Star!21123) r1!6218)) b!7860243))

(assert (= (and start!743578 ((_ is Union!21123) r1!6218)) b!7860241))

(assert (= (and start!743578 ((_ is ElementMatch!21123) r2!6156)) b!7860233))

(assert (= (and start!743578 ((_ is Concat!29968) r2!6156)) b!7860240))

(assert (= (and start!743578 ((_ is Star!21123) r2!6156)) b!7860235))

(assert (= (and start!743578 ((_ is Union!21123) r2!6156)) b!7860230))

(assert (= (and start!743578 ((_ is Cons!73858) s!14237)) b!7860245))

(declare-fun m!8262050 () Bool)

(assert (=> start!743578 m!8262050))

(declare-fun m!8262052 () Bool)

(assert (=> b!7860231 m!8262052))

(declare-fun m!8262054 () Bool)

(assert (=> b!7860248 m!8262054))

(declare-fun m!8262056 () Bool)

(assert (=> b!7860248 m!8262056))

(declare-fun m!8262058 () Bool)

(assert (=> b!7860248 m!8262058))

(declare-fun m!8262060 () Bool)

(assert (=> b!7860248 m!8262060))

(declare-fun m!8262062 () Bool)

(assert (=> b!7860248 m!8262062))

(declare-fun m!8262064 () Bool)

(assert (=> b!7860246 m!8262064))

(declare-fun m!8262066 () Bool)

(assert (=> b!7860232 m!8262066))

(declare-fun m!8262068 () Bool)

(assert (=> b!7860234 m!8262068))

(declare-fun m!8262070 () Bool)

(assert (=> b!7860242 m!8262070))

(declare-fun m!8262072 () Bool)

(assert (=> b!7860242 m!8262072))

(declare-fun m!8262074 () Bool)

(assert (=> b!7860242 m!8262074))

(declare-fun m!8262076 () Bool)

(assert (=> b!7860238 m!8262076))

(declare-fun m!8262078 () Bool)

(assert (=> b!7860237 m!8262078))

(declare-fun m!8262080 () Bool)

(assert (=> b!7860237 m!8262080))

(declare-fun m!8262082 () Bool)

(assert (=> b!7860237 m!8262082))

(declare-fun m!8262084 () Bool)

(assert (=> b!7860244 m!8262084))

(assert (=> b!7860244 m!8262084))

(declare-fun m!8262086 () Bool)

(assert (=> b!7860244 m!8262086))

(declare-fun m!8262088 () Bool)

(assert (=> b!7860244 m!8262088))

(assert (=> b!7860244 m!8262086))

(assert (=> b!7860244 m!8262088))

(declare-fun m!8262090 () Bool)

(assert (=> b!7860244 m!8262090))

(check-sat (not b!7860248) (not b!7860230) (not b!7860240) (not b!7860238) tp_is_empty!52645 (not b!7860242) (not b!7860244) (not b!7860243) (not b!7860237) (not b!7860232) (not b!7860235) (not b!7860245) (not b!7860231) (not b!7860234) (not start!743578) (not b!7860241) (not b!7860236) (not b!7860246))
(check-sat)
(get-model)

(declare-fun b!7860267 () Bool)

(declare-fun e!4645125 () Bool)

(declare-fun e!4645129 () Bool)

(assert (=> b!7860267 (= e!4645125 e!4645129)))

(declare-fun res!3124813 () Bool)

(assert (=> b!7860267 (= res!3124813 (not (nullable!9393 (reg!21452 r2!6156))))))

(assert (=> b!7860267 (=> (not res!3124813) (not e!4645129))))

(declare-fun b!7860268 () Bool)

(declare-fun res!3124811 () Bool)

(declare-fun e!4645124 () Bool)

(assert (=> b!7860268 (=> (not res!3124811) (not e!4645124))))

(declare-fun call!728668 () Bool)

(assert (=> b!7860268 (= res!3124811 call!728668)))

(declare-fun e!4645130 () Bool)

(assert (=> b!7860268 (= e!4645130 e!4645124)))

(declare-fun d!2354332 () Bool)

(declare-fun res!3124810 () Bool)

(declare-fun e!4645128 () Bool)

(assert (=> d!2354332 (=> res!3124810 e!4645128)))

(assert (=> d!2354332 (= res!3124810 ((_ is ElementMatch!21123) r2!6156))))

(assert (=> d!2354332 (= (validRegex!11533 r2!6156) e!4645128)))

(declare-fun bm!728662 () Bool)

(declare-fun call!728669 () Bool)

(declare-fun call!728667 () Bool)

(assert (=> bm!728662 (= call!728669 call!728667)))

(declare-fun b!7860269 () Bool)

(assert (=> b!7860269 (= e!4645129 call!728667)))

(declare-fun b!7860270 () Bool)

(assert (=> b!7860270 (= e!4645125 e!4645130)))

(declare-fun c!1444406 () Bool)

(assert (=> b!7860270 (= c!1444406 ((_ is Union!21123) r2!6156))))

(declare-fun b!7860271 () Bool)

(assert (=> b!7860271 (= e!4645124 call!728669)))

(declare-fun c!1444407 () Bool)

(declare-fun bm!728663 () Bool)

(assert (=> bm!728663 (= call!728667 (validRegex!11533 (ite c!1444407 (reg!21452 r2!6156) (ite c!1444406 (regTwo!42759 r2!6156) (regTwo!42758 r2!6156)))))))

(declare-fun b!7860272 () Bool)

(declare-fun e!4645127 () Bool)

(assert (=> b!7860272 (= e!4645127 call!728669)))

(declare-fun b!7860273 () Bool)

(assert (=> b!7860273 (= e!4645128 e!4645125)))

(assert (=> b!7860273 (= c!1444407 ((_ is Star!21123) r2!6156))))

(declare-fun b!7860274 () Bool)

(declare-fun e!4645126 () Bool)

(assert (=> b!7860274 (= e!4645126 e!4645127)))

(declare-fun res!3124809 () Bool)

(assert (=> b!7860274 (=> (not res!3124809) (not e!4645127))))

(assert (=> b!7860274 (= res!3124809 call!728668)))

(declare-fun b!7860275 () Bool)

(declare-fun res!3124812 () Bool)

(assert (=> b!7860275 (=> res!3124812 e!4645126)))

(assert (=> b!7860275 (= res!3124812 (not ((_ is Concat!29968) r2!6156)))))

(assert (=> b!7860275 (= e!4645130 e!4645126)))

(declare-fun bm!728664 () Bool)

(assert (=> bm!728664 (= call!728668 (validRegex!11533 (ite c!1444406 (regOne!42759 r2!6156) (regOne!42758 r2!6156))))))

(assert (= (and d!2354332 (not res!3124810)) b!7860273))

(assert (= (and b!7860273 c!1444407) b!7860267))

(assert (= (and b!7860273 (not c!1444407)) b!7860270))

(assert (= (and b!7860267 res!3124813) b!7860269))

(assert (= (and b!7860270 c!1444406) b!7860268))

(assert (= (and b!7860270 (not c!1444406)) b!7860275))

(assert (= (and b!7860268 res!3124811) b!7860271))

(assert (= (and b!7860275 (not res!3124812)) b!7860274))

(assert (= (and b!7860274 res!3124809) b!7860272))

(assert (= (or b!7860271 b!7860272) bm!728662))

(assert (= (or b!7860268 b!7860274) bm!728664))

(assert (= (or b!7860269 bm!728662) bm!728663))

(declare-fun m!8262094 () Bool)

(assert (=> b!7860267 m!8262094))

(declare-fun m!8262096 () Bool)

(assert (=> bm!728663 m!8262096))

(declare-fun m!8262098 () Bool)

(assert (=> bm!728664 m!8262098))

(assert (=> b!7860234 d!2354332))

(declare-fun b!7860276 () Bool)

(declare-fun e!4645132 () Bool)

(declare-fun e!4645136 () Bool)

(assert (=> b!7860276 (= e!4645132 e!4645136)))

(declare-fun res!3124818 () Bool)

(assert (=> b!7860276 (= res!3124818 (not (nullable!9393 (reg!21452 r1!6218))))))

(assert (=> b!7860276 (=> (not res!3124818) (not e!4645136))))

(declare-fun b!7860277 () Bool)

(declare-fun res!3124816 () Bool)

(declare-fun e!4645131 () Bool)

(assert (=> b!7860277 (=> (not res!3124816) (not e!4645131))))

(declare-fun call!728671 () Bool)

(assert (=> b!7860277 (= res!3124816 call!728671)))

(declare-fun e!4645137 () Bool)

(assert (=> b!7860277 (= e!4645137 e!4645131)))

(declare-fun d!2354338 () Bool)

(declare-fun res!3124815 () Bool)

(declare-fun e!4645135 () Bool)

(assert (=> d!2354338 (=> res!3124815 e!4645135)))

(assert (=> d!2354338 (= res!3124815 ((_ is ElementMatch!21123) r1!6218))))

(assert (=> d!2354338 (= (validRegex!11533 r1!6218) e!4645135)))

(declare-fun bm!728665 () Bool)

(declare-fun call!728672 () Bool)

(declare-fun call!728670 () Bool)

(assert (=> bm!728665 (= call!728672 call!728670)))

(declare-fun b!7860278 () Bool)

(assert (=> b!7860278 (= e!4645136 call!728670)))

(declare-fun b!7860279 () Bool)

(assert (=> b!7860279 (= e!4645132 e!4645137)))

(declare-fun c!1444408 () Bool)

(assert (=> b!7860279 (= c!1444408 ((_ is Union!21123) r1!6218))))

(declare-fun b!7860280 () Bool)

(assert (=> b!7860280 (= e!4645131 call!728672)))

(declare-fun bm!728666 () Bool)

(declare-fun c!1444409 () Bool)

(assert (=> bm!728666 (= call!728670 (validRegex!11533 (ite c!1444409 (reg!21452 r1!6218) (ite c!1444408 (regTwo!42759 r1!6218) (regTwo!42758 r1!6218)))))))

(declare-fun b!7860281 () Bool)

(declare-fun e!4645134 () Bool)

(assert (=> b!7860281 (= e!4645134 call!728672)))

(declare-fun b!7860282 () Bool)

(assert (=> b!7860282 (= e!4645135 e!4645132)))

(assert (=> b!7860282 (= c!1444409 ((_ is Star!21123) r1!6218))))

(declare-fun b!7860283 () Bool)

(declare-fun e!4645133 () Bool)

(assert (=> b!7860283 (= e!4645133 e!4645134)))

(declare-fun res!3124814 () Bool)

(assert (=> b!7860283 (=> (not res!3124814) (not e!4645134))))

(assert (=> b!7860283 (= res!3124814 call!728671)))

(declare-fun b!7860284 () Bool)

(declare-fun res!3124817 () Bool)

(assert (=> b!7860284 (=> res!3124817 e!4645133)))

(assert (=> b!7860284 (= res!3124817 (not ((_ is Concat!29968) r1!6218)))))

(assert (=> b!7860284 (= e!4645137 e!4645133)))

(declare-fun bm!728667 () Bool)

(assert (=> bm!728667 (= call!728671 (validRegex!11533 (ite c!1444408 (regOne!42759 r1!6218) (regOne!42758 r1!6218))))))

(assert (= (and d!2354338 (not res!3124815)) b!7860282))

(assert (= (and b!7860282 c!1444409) b!7860276))

(assert (= (and b!7860282 (not c!1444409)) b!7860279))

(assert (= (and b!7860276 res!3124818) b!7860278))

(assert (= (and b!7860279 c!1444408) b!7860277))

(assert (= (and b!7860279 (not c!1444408)) b!7860284))

(assert (= (and b!7860277 res!3124816) b!7860280))

(assert (= (and b!7860284 (not res!3124817)) b!7860283))

(assert (= (and b!7860283 res!3124814) b!7860281))

(assert (= (or b!7860280 b!7860281) bm!728665))

(assert (= (or b!7860277 b!7860283) bm!728667))

(assert (= (or b!7860278 bm!728665) bm!728666))

(declare-fun m!8262100 () Bool)

(assert (=> b!7860276 m!8262100))

(declare-fun m!8262102 () Bool)

(assert (=> bm!728666 m!8262102))

(declare-fun m!8262104 () Bool)

(assert (=> bm!728667 m!8262104))

(assert (=> start!743578 d!2354338))

(declare-fun b!7860355 () Bool)

(declare-fun e!4645173 () Bool)

(declare-fun e!4645176 () Bool)

(assert (=> b!7860355 (= e!4645173 e!4645176)))

(declare-fun res!3124861 () Bool)

(assert (=> b!7860355 (=> res!3124861 e!4645176)))

(declare-fun call!728678 () Bool)

(assert (=> b!7860355 (= res!3124861 call!728678)))

(declare-fun b!7860356 () Bool)

(declare-fun e!4645177 () Bool)

(declare-fun lt!2680361 () Bool)

(assert (=> b!7860356 (= e!4645177 (not lt!2680361))))

(declare-fun b!7860357 () Bool)

(declare-fun res!3124860 () Bool)

(declare-fun e!4645174 () Bool)

(assert (=> b!7860357 (=> (not res!3124860) (not e!4645174))))

(assert (=> b!7860357 (= res!3124860 (isEmpty!42361 (tail!15615 (tail!15615 s!14237))))))

(declare-fun b!7860358 () Bool)

(assert (=> b!7860358 (= e!4645174 (= (head!16072 (tail!15615 s!14237)) (c!1444401 (derivativeStep!6356 r1!6218 (head!16072 s!14237)))))))

(declare-fun b!7860359 () Bool)

(declare-fun e!4645179 () Bool)

(assert (=> b!7860359 (= e!4645179 (matchR!10559 (derivativeStep!6356 (derivativeStep!6356 r1!6218 (head!16072 s!14237)) (head!16072 (tail!15615 s!14237))) (tail!15615 (tail!15615 s!14237))))))

(declare-fun b!7860360 () Bool)

(declare-fun res!3124862 () Bool)

(assert (=> b!7860360 (=> (not res!3124862) (not e!4645174))))

(assert (=> b!7860360 (= res!3124862 (not call!728678))))

(declare-fun b!7860361 () Bool)

(assert (=> b!7860361 (= e!4645179 (nullable!9393 (derivativeStep!6356 r1!6218 (head!16072 s!14237))))))

(declare-fun b!7860362 () Bool)

(assert (=> b!7860362 (= e!4645176 (not (= (head!16072 (tail!15615 s!14237)) (c!1444401 (derivativeStep!6356 r1!6218 (head!16072 s!14237))))))))

(declare-fun d!2354340 () Bool)

(declare-fun e!4645178 () Bool)

(assert (=> d!2354340 e!4645178))

(declare-fun c!1444425 () Bool)

(assert (=> d!2354340 (= c!1444425 ((_ is EmptyExpr!21123) (derivativeStep!6356 r1!6218 (head!16072 s!14237))))))

(assert (=> d!2354340 (= lt!2680361 e!4645179)))

(declare-fun c!1444427 () Bool)

(assert (=> d!2354340 (= c!1444427 (isEmpty!42361 (tail!15615 s!14237)))))

(assert (=> d!2354340 (validRegex!11533 (derivativeStep!6356 r1!6218 (head!16072 s!14237)))))

(assert (=> d!2354340 (= (matchR!10559 (derivativeStep!6356 r1!6218 (head!16072 s!14237)) (tail!15615 s!14237)) lt!2680361)))

(declare-fun b!7860363 () Bool)

(assert (=> b!7860363 (= e!4645178 (= lt!2680361 call!728678))))

(declare-fun b!7860364 () Bool)

(assert (=> b!7860364 (= e!4645178 e!4645177)))

(declare-fun c!1444426 () Bool)

(assert (=> b!7860364 (= c!1444426 ((_ is EmptyLang!21123) (derivativeStep!6356 r1!6218 (head!16072 s!14237))))))

(declare-fun bm!728673 () Bool)

(assert (=> bm!728673 (= call!728678 (isEmpty!42361 (tail!15615 s!14237)))))

(declare-fun b!7860365 () Bool)

(declare-fun res!3124865 () Bool)

(declare-fun e!4645175 () Bool)

(assert (=> b!7860365 (=> res!3124865 e!4645175)))

(assert (=> b!7860365 (= res!3124865 e!4645174)))

(declare-fun res!3124863 () Bool)

(assert (=> b!7860365 (=> (not res!3124863) (not e!4645174))))

(assert (=> b!7860365 (= res!3124863 lt!2680361)))

(declare-fun b!7860366 () Bool)

(declare-fun res!3124859 () Bool)

(assert (=> b!7860366 (=> res!3124859 e!4645175)))

(assert (=> b!7860366 (= res!3124859 (not ((_ is ElementMatch!21123) (derivativeStep!6356 r1!6218 (head!16072 s!14237)))))))

(assert (=> b!7860366 (= e!4645177 e!4645175)))

(declare-fun b!7860367 () Bool)

(assert (=> b!7860367 (= e!4645175 e!4645173)))

(declare-fun res!3124864 () Bool)

(assert (=> b!7860367 (=> (not res!3124864) (not e!4645173))))

(assert (=> b!7860367 (= res!3124864 (not lt!2680361))))

(declare-fun b!7860368 () Bool)

(declare-fun res!3124866 () Bool)

(assert (=> b!7860368 (=> res!3124866 e!4645176)))

(assert (=> b!7860368 (= res!3124866 (not (isEmpty!42361 (tail!15615 (tail!15615 s!14237)))))))

(assert (= (and d!2354340 c!1444427) b!7860361))

(assert (= (and d!2354340 (not c!1444427)) b!7860359))

(assert (= (and d!2354340 c!1444425) b!7860363))

(assert (= (and d!2354340 (not c!1444425)) b!7860364))

(assert (= (and b!7860364 c!1444426) b!7860356))

(assert (= (and b!7860364 (not c!1444426)) b!7860366))

(assert (= (and b!7860366 (not res!3124859)) b!7860365))

(assert (= (and b!7860365 res!3124863) b!7860360))

(assert (= (and b!7860360 res!3124862) b!7860357))

(assert (= (and b!7860357 res!3124860) b!7860358))

(assert (= (and b!7860365 (not res!3124865)) b!7860367))

(assert (= (and b!7860367 res!3124864) b!7860355))

(assert (= (and b!7860355 (not res!3124861)) b!7860368))

(assert (= (and b!7860368 (not res!3124866)) b!7860362))

(assert (= (or b!7860363 b!7860355 b!7860360) bm!728673))

(assert (=> b!7860362 m!8262088))

(declare-fun m!8262122 () Bool)

(assert (=> b!7860362 m!8262122))

(assert (=> b!7860368 m!8262088))

(declare-fun m!8262124 () Bool)

(assert (=> b!7860368 m!8262124))

(assert (=> b!7860368 m!8262124))

(declare-fun m!8262126 () Bool)

(assert (=> b!7860368 m!8262126))

(assert (=> b!7860357 m!8262088))

(assert (=> b!7860357 m!8262124))

(assert (=> b!7860357 m!8262124))

(assert (=> b!7860357 m!8262126))

(assert (=> b!7860361 m!8262086))

(declare-fun m!8262128 () Bool)

(assert (=> b!7860361 m!8262128))

(assert (=> d!2354340 m!8262088))

(declare-fun m!8262130 () Bool)

(assert (=> d!2354340 m!8262130))

(assert (=> d!2354340 m!8262086))

(declare-fun m!8262132 () Bool)

(assert (=> d!2354340 m!8262132))

(assert (=> bm!728673 m!8262088))

(assert (=> bm!728673 m!8262130))

(assert (=> b!7860358 m!8262088))

(assert (=> b!7860358 m!8262122))

(assert (=> b!7860359 m!8262088))

(assert (=> b!7860359 m!8262122))

(assert (=> b!7860359 m!8262086))

(assert (=> b!7860359 m!8262122))

(declare-fun m!8262134 () Bool)

(assert (=> b!7860359 m!8262134))

(assert (=> b!7860359 m!8262088))

(assert (=> b!7860359 m!8262124))

(assert (=> b!7860359 m!8262134))

(assert (=> b!7860359 m!8262124))

(declare-fun m!8262136 () Bool)

(assert (=> b!7860359 m!8262136))

(assert (=> b!7860244 d!2354340))

(declare-fun bm!728694 () Bool)

(declare-fun call!728699 () Regex!21123)

(declare-fun call!728700 () Regex!21123)

(assert (=> bm!728694 (= call!728699 call!728700)))

(declare-fun b!7860419 () Bool)

(declare-fun c!1444455 () Bool)

(assert (=> b!7860419 (= c!1444455 ((_ is Union!21123) r1!6218))))

(declare-fun e!4645207 () Regex!21123)

(declare-fun e!4645206 () Regex!21123)

(assert (=> b!7860419 (= e!4645207 e!4645206)))

(declare-fun call!728702 () Regex!21123)

(declare-fun c!1444456 () Bool)

(declare-fun bm!728695 () Bool)

(assert (=> bm!728695 (= call!728702 (derivativeStep!6356 (ite c!1444455 (regOne!42759 r1!6218) (ite c!1444456 (reg!21452 r1!6218) (regOne!42758 r1!6218))) (head!16072 s!14237)))))

(declare-fun b!7860420 () Bool)

(declare-fun e!4645209 () Regex!21123)

(assert (=> b!7860420 (= e!4645209 e!4645207)))

(declare-fun c!1444457 () Bool)

(assert (=> b!7860420 (= c!1444457 ((_ is ElementMatch!21123) r1!6218))))

(declare-fun bm!728696 () Bool)

(declare-fun call!728701 () Regex!21123)

(assert (=> bm!728696 (= call!728701 call!728702)))

(declare-fun e!4645205 () Regex!21123)

(declare-fun b!7860421 () Bool)

(assert (=> b!7860421 (= e!4645205 (Union!21123 (Concat!29968 call!728701 (regTwo!42758 r1!6218)) call!728699))))

(declare-fun b!7860422 () Bool)

(declare-fun e!4645208 () Regex!21123)

(assert (=> b!7860422 (= e!4645208 (Concat!29968 call!728701 r1!6218))))

(declare-fun b!7860423 () Bool)

(assert (=> b!7860423 (= e!4645207 (ite (= (head!16072 s!14237) (c!1444401 r1!6218)) EmptyExpr!21123 EmptyLang!21123))))

(declare-fun b!7860424 () Bool)

(assert (=> b!7860424 (= e!4645205 (Union!21123 (Concat!29968 call!728699 (regTwo!42758 r1!6218)) EmptyLang!21123))))

(declare-fun c!1444453 () Bool)

(declare-fun bm!728697 () Bool)

(assert (=> bm!728697 (= call!728700 (derivativeStep!6356 (ite c!1444455 (regTwo!42759 r1!6218) (ite c!1444453 (regTwo!42758 r1!6218) (regOne!42758 r1!6218))) (head!16072 s!14237)))))

(declare-fun d!2354344 () Bool)

(declare-fun lt!2680367 () Regex!21123)

(assert (=> d!2354344 (validRegex!11533 lt!2680367)))

(assert (=> d!2354344 (= lt!2680367 e!4645209)))

(declare-fun c!1444454 () Bool)

(assert (=> d!2354344 (= c!1444454 (or ((_ is EmptyExpr!21123) r1!6218) ((_ is EmptyLang!21123) r1!6218)))))

(assert (=> d!2354344 (validRegex!11533 r1!6218)))

(assert (=> d!2354344 (= (derivativeStep!6356 r1!6218 (head!16072 s!14237)) lt!2680367)))

(declare-fun b!7860425 () Bool)

(assert (=> b!7860425 (= c!1444453 (nullable!9393 (regOne!42758 r1!6218)))))

(assert (=> b!7860425 (= e!4645208 e!4645205)))

(declare-fun b!7860426 () Bool)

(assert (=> b!7860426 (= e!4645206 e!4645208)))

(assert (=> b!7860426 (= c!1444456 ((_ is Star!21123) r1!6218))))

(declare-fun b!7860427 () Bool)

(assert (=> b!7860427 (= e!4645206 (Union!21123 call!728702 call!728700))))

(declare-fun b!7860428 () Bool)

(assert (=> b!7860428 (= e!4645209 EmptyLang!21123)))

(assert (= (and d!2354344 c!1444454) b!7860428))

(assert (= (and d!2354344 (not c!1444454)) b!7860420))

(assert (= (and b!7860420 c!1444457) b!7860423))

(assert (= (and b!7860420 (not c!1444457)) b!7860419))

(assert (= (and b!7860419 c!1444455) b!7860427))

(assert (= (and b!7860419 (not c!1444455)) b!7860426))

(assert (= (and b!7860426 c!1444456) b!7860422))

(assert (= (and b!7860426 (not c!1444456)) b!7860425))

(assert (= (and b!7860425 c!1444453) b!7860421))

(assert (= (and b!7860425 (not c!1444453)) b!7860424))

(assert (= (or b!7860421 b!7860424) bm!728694))

(assert (= (or b!7860422 b!7860421) bm!728696))

(assert (= (or b!7860427 bm!728694) bm!728697))

(assert (= (or b!7860427 bm!728696) bm!728695))

(assert (=> bm!728695 m!8262084))

(declare-fun m!8262148 () Bool)

(assert (=> bm!728695 m!8262148))

(assert (=> bm!728697 m!8262084))

(declare-fun m!8262150 () Bool)

(assert (=> bm!728697 m!8262150))

(declare-fun m!8262152 () Bool)

(assert (=> d!2354344 m!8262152))

(assert (=> d!2354344 m!8262050))

(declare-fun m!8262154 () Bool)

(assert (=> b!7860425 m!8262154))

(assert (=> b!7860244 d!2354344))

(declare-fun d!2354354 () Bool)

(assert (=> d!2354354 (= (head!16072 s!14237) (h!80306 s!14237))))

(assert (=> b!7860244 d!2354354))

(declare-fun d!2354356 () Bool)

(assert (=> d!2354356 (= (tail!15615 s!14237) (t!388717 s!14237))))

(assert (=> b!7860244 d!2354356))

(declare-fun b!7860447 () Bool)

(declare-fun e!4645224 () Bool)

(declare-fun e!4645227 () Bool)

(assert (=> b!7860447 (= e!4645224 e!4645227)))

(declare-fun res!3124879 () Bool)

(assert (=> b!7860447 (=> res!3124879 e!4645227)))

(declare-fun call!728709 () Bool)

(assert (=> b!7860447 (= res!3124879 call!728709)))

(declare-fun b!7860448 () Bool)

(declare-fun e!4645228 () Bool)

(declare-fun lt!2680368 () Bool)

(assert (=> b!7860448 (= e!4645228 (not lt!2680368))))

(declare-fun b!7860449 () Bool)

(declare-fun res!3124878 () Bool)

(declare-fun e!4645225 () Bool)

(assert (=> b!7860449 (=> (not res!3124878) (not e!4645225))))

(assert (=> b!7860449 (= res!3124878 (isEmpty!42361 (tail!15615 s!14237)))))

(declare-fun b!7860450 () Bool)

(assert (=> b!7860450 (= e!4645225 (= (head!16072 s!14237) (c!1444401 r1!6218)))))

(declare-fun b!7860451 () Bool)

(declare-fun e!4645230 () Bool)

(assert (=> b!7860451 (= e!4645230 (matchR!10559 (derivativeStep!6356 r1!6218 (head!16072 s!14237)) (tail!15615 s!14237)))))

(declare-fun b!7860452 () Bool)

(declare-fun res!3124880 () Bool)

(assert (=> b!7860452 (=> (not res!3124880) (not e!4645225))))

(assert (=> b!7860452 (= res!3124880 (not call!728709))))

(declare-fun b!7860453 () Bool)

(assert (=> b!7860453 (= e!4645230 (nullable!9393 r1!6218))))

(declare-fun b!7860454 () Bool)

(assert (=> b!7860454 (= e!4645227 (not (= (head!16072 s!14237) (c!1444401 r1!6218))))))

(declare-fun d!2354358 () Bool)

(declare-fun e!4645229 () Bool)

(assert (=> d!2354358 e!4645229))

(declare-fun c!1444462 () Bool)

(assert (=> d!2354358 (= c!1444462 ((_ is EmptyExpr!21123) r1!6218))))

(assert (=> d!2354358 (= lt!2680368 e!4645230)))

(declare-fun c!1444464 () Bool)

(assert (=> d!2354358 (= c!1444464 (isEmpty!42361 s!14237))))

(assert (=> d!2354358 (validRegex!11533 r1!6218)))

(assert (=> d!2354358 (= (matchR!10559 r1!6218 s!14237) lt!2680368)))

(declare-fun b!7860455 () Bool)

(assert (=> b!7860455 (= e!4645229 (= lt!2680368 call!728709))))

(declare-fun b!7860456 () Bool)

(assert (=> b!7860456 (= e!4645229 e!4645228)))

(declare-fun c!1444463 () Bool)

(assert (=> b!7860456 (= c!1444463 ((_ is EmptyLang!21123) r1!6218))))

(declare-fun bm!728702 () Bool)

(assert (=> bm!728702 (= call!728709 (isEmpty!42361 s!14237))))

(declare-fun b!7860457 () Bool)

(declare-fun res!3124883 () Bool)

(declare-fun e!4645226 () Bool)

(assert (=> b!7860457 (=> res!3124883 e!4645226)))

(assert (=> b!7860457 (= res!3124883 e!4645225)))

(declare-fun res!3124881 () Bool)

(assert (=> b!7860457 (=> (not res!3124881) (not e!4645225))))

(assert (=> b!7860457 (= res!3124881 lt!2680368)))

(declare-fun b!7860458 () Bool)

(declare-fun res!3124877 () Bool)

(assert (=> b!7860458 (=> res!3124877 e!4645226)))

(assert (=> b!7860458 (= res!3124877 (not ((_ is ElementMatch!21123) r1!6218)))))

(assert (=> b!7860458 (= e!4645228 e!4645226)))

(declare-fun b!7860459 () Bool)

(assert (=> b!7860459 (= e!4645226 e!4645224)))

(declare-fun res!3124882 () Bool)

(assert (=> b!7860459 (=> (not res!3124882) (not e!4645224))))

(assert (=> b!7860459 (= res!3124882 (not lt!2680368))))

(declare-fun b!7860460 () Bool)

(declare-fun res!3124884 () Bool)

(assert (=> b!7860460 (=> res!3124884 e!4645227)))

(assert (=> b!7860460 (= res!3124884 (not (isEmpty!42361 (tail!15615 s!14237))))))

(assert (= (and d!2354358 c!1444464) b!7860453))

(assert (= (and d!2354358 (not c!1444464)) b!7860451))

(assert (= (and d!2354358 c!1444462) b!7860455))

(assert (= (and d!2354358 (not c!1444462)) b!7860456))

(assert (= (and b!7860456 c!1444463) b!7860448))

(assert (= (and b!7860456 (not c!1444463)) b!7860458))

(assert (= (and b!7860458 (not res!3124877)) b!7860457))

(assert (= (and b!7860457 res!3124881) b!7860452))

(assert (= (and b!7860452 res!3124880) b!7860449))

(assert (= (and b!7860449 res!3124878) b!7860450))

(assert (= (and b!7860457 (not res!3124883)) b!7860459))

(assert (= (and b!7860459 res!3124882) b!7860447))

(assert (= (and b!7860447 (not res!3124879)) b!7860460))

(assert (= (and b!7860460 (not res!3124884)) b!7860454))

(assert (= (or b!7860455 b!7860447 b!7860452) bm!728702))

(assert (=> b!7860454 m!8262084))

(assert (=> b!7860460 m!8262088))

(assert (=> b!7860460 m!8262088))

(assert (=> b!7860460 m!8262130))

(assert (=> b!7860449 m!8262088))

(assert (=> b!7860449 m!8262088))

(assert (=> b!7860449 m!8262130))

(assert (=> b!7860453 m!8262064))

(assert (=> d!2354358 m!8262058))

(assert (=> d!2354358 m!8262050))

(assert (=> bm!728702 m!8262058))

(assert (=> b!7860450 m!8262084))

(assert (=> b!7860451 m!8262084))

(assert (=> b!7860451 m!8262084))

(assert (=> b!7860451 m!8262086))

(assert (=> b!7860451 m!8262088))

(assert (=> b!7860451 m!8262086))

(assert (=> b!7860451 m!8262088))

(assert (=> b!7860451 m!8262090))

(assert (=> b!7860238 d!2354358))

(declare-fun d!2354360 () Bool)

(assert (=> d!2354360 (matchR!10559 (Union!21123 lt!2680355 lt!2680353) (t!388717 s!14237))))

(declare-fun lt!2680372 () Unit!168952)

(declare-fun choose!59665 (Regex!21123 Regex!21123 List!73982) Unit!168952)

(assert (=> d!2354360 (= lt!2680372 (choose!59665 lt!2680355 lt!2680353 (t!388717 s!14237)))))

(declare-fun e!4645261 () Bool)

(assert (=> d!2354360 e!4645261))

(declare-fun res!3124910 () Bool)

(assert (=> d!2354360 (=> (not res!3124910) (not e!4645261))))

(assert (=> d!2354360 (= res!3124910 (validRegex!11533 lt!2680355))))

(assert (=> d!2354360 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!136 lt!2680355 lt!2680353 (t!388717 s!14237)) lt!2680372)))

(declare-fun b!7860504 () Bool)

(assert (=> b!7860504 (= e!4645261 (validRegex!11533 lt!2680353))))

(assert (= (and d!2354360 res!3124910) b!7860504))

(assert (=> d!2354360 m!8262060))

(declare-fun m!8262174 () Bool)

(assert (=> d!2354360 m!8262174))

(assert (=> d!2354360 m!8262062))

(assert (=> b!7860504 m!8262052))

(assert (=> b!7860248 d!2354360))

(declare-fun b!7860505 () Bool)

(declare-fun e!4645262 () Bool)

(declare-fun e!4645265 () Bool)

(assert (=> b!7860505 (= e!4645262 e!4645265)))

(declare-fun res!3124913 () Bool)

(assert (=> b!7860505 (=> res!3124913 e!4645265)))

(declare-fun call!728721 () Bool)

(assert (=> b!7860505 (= res!3124913 call!728721)))

(declare-fun b!7860506 () Bool)

(declare-fun e!4645266 () Bool)

(declare-fun lt!2680373 () Bool)

(assert (=> b!7860506 (= e!4645266 (not lt!2680373))))

(declare-fun b!7860507 () Bool)

(declare-fun res!3124912 () Bool)

(declare-fun e!4645263 () Bool)

(assert (=> b!7860507 (=> (not res!3124912) (not e!4645263))))

(assert (=> b!7860507 (= res!3124912 (isEmpty!42361 (tail!15615 (t!388717 s!14237))))))

(declare-fun b!7860508 () Bool)

(assert (=> b!7860508 (= e!4645263 (= (head!16072 (t!388717 s!14237)) (c!1444401 (Union!21123 lt!2680355 lt!2680353))))))

(declare-fun b!7860509 () Bool)

(declare-fun e!4645269 () Bool)

(assert (=> b!7860509 (= e!4645269 (matchR!10559 (derivativeStep!6356 (Union!21123 lt!2680355 lt!2680353) (head!16072 (t!388717 s!14237))) (tail!15615 (t!388717 s!14237))))))

(declare-fun b!7860510 () Bool)

(declare-fun res!3124914 () Bool)

(assert (=> b!7860510 (=> (not res!3124914) (not e!4645263))))

(assert (=> b!7860510 (= res!3124914 (not call!728721))))

(declare-fun b!7860511 () Bool)

(assert (=> b!7860511 (= e!4645269 (nullable!9393 (Union!21123 lt!2680355 lt!2680353)))))

(declare-fun b!7860512 () Bool)

(assert (=> b!7860512 (= e!4645265 (not (= (head!16072 (t!388717 s!14237)) (c!1444401 (Union!21123 lt!2680355 lt!2680353)))))))

(declare-fun d!2354368 () Bool)

(declare-fun e!4645267 () Bool)

(assert (=> d!2354368 e!4645267))

(declare-fun c!1444474 () Bool)

(assert (=> d!2354368 (= c!1444474 ((_ is EmptyExpr!21123) (Union!21123 lt!2680355 lt!2680353)))))

(assert (=> d!2354368 (= lt!2680373 e!4645269)))

(declare-fun c!1444476 () Bool)

(assert (=> d!2354368 (= c!1444476 (isEmpty!42361 (t!388717 s!14237)))))

(assert (=> d!2354368 (validRegex!11533 (Union!21123 lt!2680355 lt!2680353))))

(assert (=> d!2354368 (= (matchR!10559 (Union!21123 lt!2680355 lt!2680353) (t!388717 s!14237)) lt!2680373)))

(declare-fun b!7860513 () Bool)

(assert (=> b!7860513 (= e!4645267 (= lt!2680373 call!728721))))

(declare-fun b!7860514 () Bool)

(assert (=> b!7860514 (= e!4645267 e!4645266)))

(declare-fun c!1444475 () Bool)

(assert (=> b!7860514 (= c!1444475 ((_ is EmptyLang!21123) (Union!21123 lt!2680355 lt!2680353)))))

(declare-fun bm!728715 () Bool)

(assert (=> bm!728715 (= call!728721 (isEmpty!42361 (t!388717 s!14237)))))

(declare-fun b!7860515 () Bool)

(declare-fun res!3124917 () Bool)

(declare-fun e!4645264 () Bool)

(assert (=> b!7860515 (=> res!3124917 e!4645264)))

(assert (=> b!7860515 (= res!3124917 e!4645263)))

(declare-fun res!3124915 () Bool)

(assert (=> b!7860515 (=> (not res!3124915) (not e!4645263))))

(assert (=> b!7860515 (= res!3124915 lt!2680373)))

(declare-fun b!7860517 () Bool)

(declare-fun res!3124911 () Bool)

(assert (=> b!7860517 (=> res!3124911 e!4645264)))

(assert (=> b!7860517 (= res!3124911 (not ((_ is ElementMatch!21123) (Union!21123 lt!2680355 lt!2680353))))))

(assert (=> b!7860517 (= e!4645266 e!4645264)))

(declare-fun b!7860519 () Bool)

(assert (=> b!7860519 (= e!4645264 e!4645262)))

(declare-fun res!3124916 () Bool)

(assert (=> b!7860519 (=> (not res!3124916) (not e!4645262))))

(assert (=> b!7860519 (= res!3124916 (not lt!2680373))))

(declare-fun b!7860521 () Bool)

(declare-fun res!3124918 () Bool)

(assert (=> b!7860521 (=> res!3124918 e!4645265)))

(assert (=> b!7860521 (= res!3124918 (not (isEmpty!42361 (tail!15615 (t!388717 s!14237)))))))

(assert (= (and d!2354368 c!1444476) b!7860511))

(assert (= (and d!2354368 (not c!1444476)) b!7860509))

(assert (= (and d!2354368 c!1444474) b!7860513))

(assert (= (and d!2354368 (not c!1444474)) b!7860514))

(assert (= (and b!7860514 c!1444475) b!7860506))

(assert (= (and b!7860514 (not c!1444475)) b!7860517))

(assert (= (and b!7860517 (not res!3124911)) b!7860515))

(assert (= (and b!7860515 res!3124915) b!7860510))

(assert (= (and b!7860510 res!3124914) b!7860507))

(assert (= (and b!7860507 res!3124912) b!7860508))

(assert (= (and b!7860515 (not res!3124917)) b!7860519))

(assert (= (and b!7860519 res!3124916) b!7860505))

(assert (= (and b!7860505 (not res!3124913)) b!7860521))

(assert (= (and b!7860521 (not res!3124918)) b!7860512))

(assert (= (or b!7860513 b!7860505 b!7860510) bm!728715))

(declare-fun m!8262184 () Bool)

(assert (=> b!7860512 m!8262184))

(declare-fun m!8262186 () Bool)

(assert (=> b!7860521 m!8262186))

(assert (=> b!7860521 m!8262186))

(declare-fun m!8262188 () Bool)

(assert (=> b!7860521 m!8262188))

(assert (=> b!7860507 m!8262186))

(assert (=> b!7860507 m!8262186))

(assert (=> b!7860507 m!8262188))

(declare-fun m!8262190 () Bool)

(assert (=> b!7860511 m!8262190))

(declare-fun m!8262192 () Bool)

(assert (=> d!2354368 m!8262192))

(declare-fun m!8262194 () Bool)

(assert (=> d!2354368 m!8262194))

(assert (=> bm!728715 m!8262192))

(assert (=> b!7860508 m!8262184))

(assert (=> b!7860509 m!8262184))

(assert (=> b!7860509 m!8262184))

(declare-fun m!8262196 () Bool)

(assert (=> b!7860509 m!8262196))

(assert (=> b!7860509 m!8262186))

(assert (=> b!7860509 m!8262196))

(assert (=> b!7860509 m!8262186))

(declare-fun m!8262198 () Bool)

(assert (=> b!7860509 m!8262198))

(assert (=> b!7860248 d!2354368))

(declare-fun b!7860539 () Bool)

(declare-fun e!4645280 () Bool)

(declare-fun e!4645284 () Bool)

(assert (=> b!7860539 (= e!4645280 e!4645284)))

(declare-fun res!3124923 () Bool)

(assert (=> b!7860539 (= res!3124923 (not (nullable!9393 (reg!21452 lt!2680355))))))

(assert (=> b!7860539 (=> (not res!3124923) (not e!4645284))))

(declare-fun b!7860540 () Bool)

(declare-fun res!3124921 () Bool)

(declare-fun e!4645279 () Bool)

(assert (=> b!7860540 (=> (not res!3124921) (not e!4645279))))

(declare-fun call!728730 () Bool)

(assert (=> b!7860540 (= res!3124921 call!728730)))

(declare-fun e!4645285 () Bool)

(assert (=> b!7860540 (= e!4645285 e!4645279)))

(declare-fun d!2354374 () Bool)

(declare-fun res!3124920 () Bool)

(declare-fun e!4645283 () Bool)

(assert (=> d!2354374 (=> res!3124920 e!4645283)))

(assert (=> d!2354374 (= res!3124920 ((_ is ElementMatch!21123) lt!2680355))))

(assert (=> d!2354374 (= (validRegex!11533 lt!2680355) e!4645283)))

(declare-fun bm!728724 () Bool)

(declare-fun call!728731 () Bool)

(declare-fun call!728729 () Bool)

(assert (=> bm!728724 (= call!728731 call!728729)))

(declare-fun b!7860541 () Bool)

(assert (=> b!7860541 (= e!4645284 call!728729)))

(declare-fun b!7860542 () Bool)

(assert (=> b!7860542 (= e!4645280 e!4645285)))

(declare-fun c!1444487 () Bool)

(assert (=> b!7860542 (= c!1444487 ((_ is Union!21123) lt!2680355))))

(declare-fun b!7860543 () Bool)

(assert (=> b!7860543 (= e!4645279 call!728731)))

(declare-fun bm!728725 () Bool)

(declare-fun c!1444488 () Bool)

(assert (=> bm!728725 (= call!728729 (validRegex!11533 (ite c!1444488 (reg!21452 lt!2680355) (ite c!1444487 (regTwo!42759 lt!2680355) (regTwo!42758 lt!2680355)))))))

(declare-fun b!7860544 () Bool)

(declare-fun e!4645282 () Bool)

(assert (=> b!7860544 (= e!4645282 call!728731)))

(declare-fun b!7860545 () Bool)

(assert (=> b!7860545 (= e!4645283 e!4645280)))

(assert (=> b!7860545 (= c!1444488 ((_ is Star!21123) lt!2680355))))

(declare-fun b!7860546 () Bool)

(declare-fun e!4645281 () Bool)

(assert (=> b!7860546 (= e!4645281 e!4645282)))

(declare-fun res!3124919 () Bool)

(assert (=> b!7860546 (=> (not res!3124919) (not e!4645282))))

(assert (=> b!7860546 (= res!3124919 call!728730)))

(declare-fun b!7860547 () Bool)

(declare-fun res!3124922 () Bool)

(assert (=> b!7860547 (=> res!3124922 e!4645281)))

(assert (=> b!7860547 (= res!3124922 (not ((_ is Concat!29968) lt!2680355)))))

(assert (=> b!7860547 (= e!4645285 e!4645281)))

(declare-fun bm!728726 () Bool)

(assert (=> bm!728726 (= call!728730 (validRegex!11533 (ite c!1444487 (regOne!42759 lt!2680355) (regOne!42758 lt!2680355))))))

(assert (= (and d!2354374 (not res!3124920)) b!7860545))

(assert (= (and b!7860545 c!1444488) b!7860539))

(assert (= (and b!7860545 (not c!1444488)) b!7860542))

(assert (= (and b!7860539 res!3124923) b!7860541))

(assert (= (and b!7860542 c!1444487) b!7860540))

(assert (= (and b!7860542 (not c!1444487)) b!7860547))

(assert (= (and b!7860540 res!3124921) b!7860543))

(assert (= (and b!7860547 (not res!3124922)) b!7860546))

(assert (= (and b!7860546 res!3124919) b!7860544))

(assert (= (or b!7860543 b!7860544) bm!728724))

(assert (= (or b!7860540 b!7860546) bm!728726))

(assert (= (or b!7860541 bm!728724) bm!728725))

(declare-fun m!8262206 () Bool)

(assert (=> b!7860539 m!8262206))

(declare-fun m!8262208 () Bool)

(assert (=> bm!728725 m!8262208))

(declare-fun m!8262210 () Bool)

(assert (=> bm!728726 m!8262210))

(assert (=> b!7860248 d!2354374))

(declare-fun d!2354378 () Bool)

(assert (=> d!2354378 (= (isEmpty!42361 s!14237) ((_ is Nil!73858) s!14237))))

(assert (=> b!7860248 d!2354378))

(declare-fun d!2354382 () Bool)

(declare-fun e!4645303 () Bool)

(assert (=> d!2354382 e!4645303))

(declare-fun c!1444499 () Bool)

(assert (=> d!2354382 (= c!1444499 (isEmpty!42361 s!14237))))

(declare-fun lt!2680383 () Unit!168952)

(declare-fun choose!59667 (Regex!21123 List!73982) Unit!168952)

(assert (=> d!2354382 (= lt!2680383 (choose!59667 r1!6218 s!14237))))

(assert (=> d!2354382 (validRegex!11533 r1!6218)))

(assert (=> d!2354382 (= (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!10 r1!6218 s!14237) lt!2680383)))

(declare-fun b!7860579 () Bool)

(assert (=> b!7860579 (= e!4645303 (nullable!9393 r1!6218))))

(declare-fun b!7860580 () Bool)

(assert (=> b!7860580 (= e!4645303 (matchR!10559 (derivativeStep!6356 r1!6218 (head!16072 s!14237)) (tail!15615 s!14237)))))

(assert (= (and d!2354382 c!1444499) b!7860579))

(assert (= (and d!2354382 (not c!1444499)) b!7860580))

(assert (=> d!2354382 m!8262058))

(declare-fun m!8262238 () Bool)

(assert (=> d!2354382 m!8262238))

(assert (=> d!2354382 m!8262050))

(assert (=> b!7860579 m!8262064))

(assert (=> b!7860580 m!8262084))

(assert (=> b!7860580 m!8262084))

(assert (=> b!7860580 m!8262086))

(assert (=> b!7860580 m!8262088))

(assert (=> b!7860580 m!8262086))

(assert (=> b!7860580 m!8262088))

(assert (=> b!7860580 m!8262090))

(assert (=> b!7860248 d!2354382))

(declare-fun d!2354388 () Bool)

(declare-fun nullableFct!3705 (Regex!21123) Bool)

(assert (=> d!2354388 (= (nullable!9393 r2!6156) (nullableFct!3705 r2!6156))))

(declare-fun bs!1967193 () Bool)

(assert (= bs!1967193 d!2354388))

(declare-fun m!8262246 () Bool)

(assert (=> bs!1967193 m!8262246))

(assert (=> b!7860232 d!2354388))

(declare-fun b!7860590 () Bool)

(declare-fun e!4645312 () Bool)

(declare-fun e!4645316 () Bool)

(assert (=> b!7860590 (= e!4645312 e!4645316)))

(declare-fun res!3124944 () Bool)

(assert (=> b!7860590 (= res!3124944 (not (nullable!9393 (reg!21452 lt!2680351))))))

(assert (=> b!7860590 (=> (not res!3124944) (not e!4645316))))

(declare-fun b!7860591 () Bool)

(declare-fun res!3124942 () Bool)

(declare-fun e!4645311 () Bool)

(assert (=> b!7860591 (=> (not res!3124942) (not e!4645311))))

(declare-fun call!728741 () Bool)

(assert (=> b!7860591 (= res!3124942 call!728741)))

(declare-fun e!4645317 () Bool)

(assert (=> b!7860591 (= e!4645317 e!4645311)))

(declare-fun d!2354394 () Bool)

(declare-fun res!3124941 () Bool)

(declare-fun e!4645315 () Bool)

(assert (=> d!2354394 (=> res!3124941 e!4645315)))

(assert (=> d!2354394 (= res!3124941 ((_ is ElementMatch!21123) lt!2680351))))

(assert (=> d!2354394 (= (validRegex!11533 lt!2680351) e!4645315)))

(declare-fun bm!728735 () Bool)

(declare-fun call!728742 () Bool)

(declare-fun call!728740 () Bool)

(assert (=> bm!728735 (= call!728742 call!728740)))

(declare-fun b!7860592 () Bool)

(assert (=> b!7860592 (= e!4645316 call!728740)))

(declare-fun b!7860593 () Bool)

(assert (=> b!7860593 (= e!4645312 e!4645317)))

(declare-fun c!1444502 () Bool)

(assert (=> b!7860593 (= c!1444502 ((_ is Union!21123) lt!2680351))))

(declare-fun b!7860594 () Bool)

(assert (=> b!7860594 (= e!4645311 call!728742)))

(declare-fun c!1444503 () Bool)

(declare-fun bm!728736 () Bool)

(assert (=> bm!728736 (= call!728740 (validRegex!11533 (ite c!1444503 (reg!21452 lt!2680351) (ite c!1444502 (regTwo!42759 lt!2680351) (regTwo!42758 lt!2680351)))))))

(declare-fun b!7860595 () Bool)

(declare-fun e!4645314 () Bool)

(assert (=> b!7860595 (= e!4645314 call!728742)))

(declare-fun b!7860596 () Bool)

(assert (=> b!7860596 (= e!4645315 e!4645312)))

(assert (=> b!7860596 (= c!1444503 ((_ is Star!21123) lt!2680351))))

(declare-fun b!7860597 () Bool)

(declare-fun e!4645313 () Bool)

(assert (=> b!7860597 (= e!4645313 e!4645314)))

(declare-fun res!3124940 () Bool)

(assert (=> b!7860597 (=> (not res!3124940) (not e!4645314))))

(assert (=> b!7860597 (= res!3124940 call!728741)))

(declare-fun b!7860598 () Bool)

(declare-fun res!3124943 () Bool)

(assert (=> b!7860598 (=> res!3124943 e!4645313)))

(assert (=> b!7860598 (= res!3124943 (not ((_ is Concat!29968) lt!2680351)))))

(assert (=> b!7860598 (= e!4645317 e!4645313)))

(declare-fun bm!728737 () Bool)

(assert (=> bm!728737 (= call!728741 (validRegex!11533 (ite c!1444502 (regOne!42759 lt!2680351) (regOne!42758 lt!2680351))))))

(assert (= (and d!2354394 (not res!3124941)) b!7860596))

(assert (= (and b!7860596 c!1444503) b!7860590))

(assert (= (and b!7860596 (not c!1444503)) b!7860593))

(assert (= (and b!7860590 res!3124944) b!7860592))

(assert (= (and b!7860593 c!1444502) b!7860591))

(assert (= (and b!7860593 (not c!1444502)) b!7860598))

(assert (= (and b!7860591 res!3124942) b!7860594))

(assert (= (and b!7860598 (not res!3124943)) b!7860597))

(assert (= (and b!7860597 res!3124940) b!7860595))

(assert (= (or b!7860594 b!7860595) bm!728735))

(assert (= (or b!7860591 b!7860597) bm!728737))

(assert (= (or b!7860592 bm!728735) bm!728736))

(declare-fun m!8262248 () Bool)

(assert (=> b!7860590 m!8262248))

(declare-fun m!8262250 () Bool)

(assert (=> bm!728736 m!8262250))

(declare-fun m!8262252 () Bool)

(assert (=> bm!728737 m!8262252))

(assert (=> b!7860237 d!2354394))

(declare-fun b!7860599 () Bool)

(declare-fun e!4645318 () Bool)

(declare-fun e!4645321 () Bool)

(assert (=> b!7860599 (= e!4645318 e!4645321)))

(declare-fun res!3124947 () Bool)

(assert (=> b!7860599 (=> res!3124947 e!4645321)))

(declare-fun call!728743 () Bool)

(assert (=> b!7860599 (= res!3124947 call!728743)))

(declare-fun b!7860600 () Bool)

(declare-fun e!4645322 () Bool)

(declare-fun lt!2680384 () Bool)

(assert (=> b!7860600 (= e!4645322 (not lt!2680384))))

(declare-fun b!7860601 () Bool)

(declare-fun res!3124946 () Bool)

(declare-fun e!4645319 () Bool)

(assert (=> b!7860601 (=> (not res!3124946) (not e!4645319))))

(assert (=> b!7860601 (= res!3124946 (isEmpty!42361 (tail!15615 (t!388717 s!14237))))))

(declare-fun b!7860602 () Bool)

(assert (=> b!7860602 (= e!4645319 (= (head!16072 (t!388717 s!14237)) (c!1444401 lt!2680350)))))

(declare-fun b!7860603 () Bool)

(declare-fun e!4645324 () Bool)

(assert (=> b!7860603 (= e!4645324 (matchR!10559 (derivativeStep!6356 lt!2680350 (head!16072 (t!388717 s!14237))) (tail!15615 (t!388717 s!14237))))))

(declare-fun b!7860604 () Bool)

(declare-fun res!3124948 () Bool)

(assert (=> b!7860604 (=> (not res!3124948) (not e!4645319))))

(assert (=> b!7860604 (= res!3124948 (not call!728743))))

(declare-fun b!7860605 () Bool)

(assert (=> b!7860605 (= e!4645324 (nullable!9393 lt!2680350))))

(declare-fun b!7860606 () Bool)

(assert (=> b!7860606 (= e!4645321 (not (= (head!16072 (t!388717 s!14237)) (c!1444401 lt!2680350))))))

(declare-fun d!2354396 () Bool)

(declare-fun e!4645323 () Bool)

(assert (=> d!2354396 e!4645323))

(declare-fun c!1444504 () Bool)

(assert (=> d!2354396 (= c!1444504 ((_ is EmptyExpr!21123) lt!2680350))))

(assert (=> d!2354396 (= lt!2680384 e!4645324)))

(declare-fun c!1444506 () Bool)

(assert (=> d!2354396 (= c!1444506 (isEmpty!42361 (t!388717 s!14237)))))

(assert (=> d!2354396 (validRegex!11533 lt!2680350)))

(assert (=> d!2354396 (= (matchR!10559 lt!2680350 (t!388717 s!14237)) lt!2680384)))

(declare-fun b!7860607 () Bool)

(assert (=> b!7860607 (= e!4645323 (= lt!2680384 call!728743))))

(declare-fun b!7860608 () Bool)

(assert (=> b!7860608 (= e!4645323 e!4645322)))

(declare-fun c!1444505 () Bool)

(assert (=> b!7860608 (= c!1444505 ((_ is EmptyLang!21123) lt!2680350))))

(declare-fun bm!728738 () Bool)

(assert (=> bm!728738 (= call!728743 (isEmpty!42361 (t!388717 s!14237)))))

(declare-fun b!7860609 () Bool)

(declare-fun res!3124951 () Bool)

(declare-fun e!4645320 () Bool)

(assert (=> b!7860609 (=> res!3124951 e!4645320)))

(assert (=> b!7860609 (= res!3124951 e!4645319)))

(declare-fun res!3124949 () Bool)

(assert (=> b!7860609 (=> (not res!3124949) (not e!4645319))))

(assert (=> b!7860609 (= res!3124949 lt!2680384)))

(declare-fun b!7860610 () Bool)

(declare-fun res!3124945 () Bool)

(assert (=> b!7860610 (=> res!3124945 e!4645320)))

(assert (=> b!7860610 (= res!3124945 (not ((_ is ElementMatch!21123) lt!2680350)))))

(assert (=> b!7860610 (= e!4645322 e!4645320)))

(declare-fun b!7860611 () Bool)

(assert (=> b!7860611 (= e!4645320 e!4645318)))

(declare-fun res!3124950 () Bool)

(assert (=> b!7860611 (=> (not res!3124950) (not e!4645318))))

(assert (=> b!7860611 (= res!3124950 (not lt!2680384))))

(declare-fun b!7860612 () Bool)

(declare-fun res!3124952 () Bool)

(assert (=> b!7860612 (=> res!3124952 e!4645321)))

(assert (=> b!7860612 (= res!3124952 (not (isEmpty!42361 (tail!15615 (t!388717 s!14237)))))))

(assert (= (and d!2354396 c!1444506) b!7860605))

(assert (= (and d!2354396 (not c!1444506)) b!7860603))

(assert (= (and d!2354396 c!1444504) b!7860607))

(assert (= (and d!2354396 (not c!1444504)) b!7860608))

(assert (= (and b!7860608 c!1444505) b!7860600))

(assert (= (and b!7860608 (not c!1444505)) b!7860610))

(assert (= (and b!7860610 (not res!3124945)) b!7860609))

(assert (= (and b!7860609 res!3124949) b!7860604))

(assert (= (and b!7860604 res!3124948) b!7860601))

(assert (= (and b!7860601 res!3124946) b!7860602))

(assert (= (and b!7860609 (not res!3124951)) b!7860611))

(assert (= (and b!7860611 res!3124950) b!7860599))

(assert (= (and b!7860599 (not res!3124947)) b!7860612))

(assert (= (and b!7860612 (not res!3124952)) b!7860606))

(assert (= (or b!7860607 b!7860599 b!7860604) bm!728738))

(assert (=> b!7860606 m!8262184))

(assert (=> b!7860612 m!8262186))

(assert (=> b!7860612 m!8262186))

(assert (=> b!7860612 m!8262188))

(assert (=> b!7860601 m!8262186))

(assert (=> b!7860601 m!8262186))

(assert (=> b!7860601 m!8262188))

(declare-fun m!8262254 () Bool)

(assert (=> b!7860605 m!8262254))

(assert (=> d!2354396 m!8262192))

(declare-fun m!8262256 () Bool)

(assert (=> d!2354396 m!8262256))

(assert (=> bm!728738 m!8262192))

(assert (=> b!7860602 m!8262184))

(assert (=> b!7860603 m!8262184))

(assert (=> b!7860603 m!8262184))

(declare-fun m!8262258 () Bool)

(assert (=> b!7860603 m!8262258))

(assert (=> b!7860603 m!8262186))

(assert (=> b!7860603 m!8262258))

(assert (=> b!7860603 m!8262186))

(declare-fun m!8262260 () Bool)

(assert (=> b!7860603 m!8262260))

(assert (=> b!7860237 d!2354396))

(declare-fun d!2354398 () Bool)

(assert (=> d!2354398 (matchR!10559 (Union!21123 lt!2680353 lt!2680355) (t!388717 s!14237))))

(declare-fun lt!2680391 () Unit!168952)

(declare-fun choose!59669 (Regex!21123 Regex!21123 List!73982) Unit!168952)

(assert (=> d!2354398 (= lt!2680391 (choose!59669 lt!2680355 lt!2680353 (t!388717 s!14237)))))

(declare-fun e!4645344 () Bool)

(assert (=> d!2354398 e!4645344))

(declare-fun res!3124968 () Bool)

(assert (=> d!2354398 (=> (not res!3124968) (not e!4645344))))

(assert (=> d!2354398 (= res!3124968 (validRegex!11533 lt!2680355))))

(assert (=> d!2354398 (= (lemmaReversedUnionAcceptsSameString!48 lt!2680355 lt!2680353 (t!388717 s!14237)) lt!2680391)))

(declare-fun b!7860644 () Bool)

(assert (=> b!7860644 (= e!4645344 (validRegex!11533 lt!2680353))))

(assert (= (and d!2354398 res!3124968) b!7860644))

(declare-fun m!8262278 () Bool)

(assert (=> d!2354398 m!8262278))

(declare-fun m!8262280 () Bool)

(assert (=> d!2354398 m!8262280))

(assert (=> d!2354398 m!8262062))

(assert (=> b!7860644 m!8262052))

(assert (=> b!7860237 d!2354398))

(declare-fun bm!728743 () Bool)

(declare-fun call!728748 () Regex!21123)

(declare-fun call!728749 () Regex!21123)

(assert (=> bm!728743 (= call!728748 call!728749)))

(declare-fun b!7860645 () Bool)

(declare-fun c!1444517 () Bool)

(assert (=> b!7860645 (= c!1444517 ((_ is Union!21123) lt!2680351))))

(declare-fun e!4645347 () Regex!21123)

(declare-fun e!4645346 () Regex!21123)

(assert (=> b!7860645 (= e!4645347 e!4645346)))

(declare-fun c!1444518 () Bool)

(declare-fun bm!728744 () Bool)

(declare-fun call!728751 () Regex!21123)

(assert (=> bm!728744 (= call!728751 (derivativeStep!6356 (ite c!1444517 (regOne!42759 lt!2680351) (ite c!1444518 (reg!21452 lt!2680351) (regOne!42758 lt!2680351))) (h!80306 s!14237)))))

(declare-fun b!7860646 () Bool)

(declare-fun e!4645349 () Regex!21123)

(assert (=> b!7860646 (= e!4645349 e!4645347)))

(declare-fun c!1444519 () Bool)

(assert (=> b!7860646 (= c!1444519 ((_ is ElementMatch!21123) lt!2680351))))

(declare-fun bm!728745 () Bool)

(declare-fun call!728750 () Regex!21123)

(assert (=> bm!728745 (= call!728750 call!728751)))

(declare-fun e!4645345 () Regex!21123)

(declare-fun b!7860647 () Bool)

(assert (=> b!7860647 (= e!4645345 (Union!21123 (Concat!29968 call!728750 (regTwo!42758 lt!2680351)) call!728748))))

(declare-fun b!7860648 () Bool)

(declare-fun e!4645348 () Regex!21123)

(assert (=> b!7860648 (= e!4645348 (Concat!29968 call!728750 lt!2680351))))

(declare-fun b!7860649 () Bool)

(assert (=> b!7860649 (= e!4645347 (ite (= (h!80306 s!14237) (c!1444401 lt!2680351)) EmptyExpr!21123 EmptyLang!21123))))

(declare-fun b!7860650 () Bool)

(assert (=> b!7860650 (= e!4645345 (Union!21123 (Concat!29968 call!728748 (regTwo!42758 lt!2680351)) EmptyLang!21123))))

(declare-fun c!1444515 () Bool)

(declare-fun bm!728746 () Bool)

(assert (=> bm!728746 (= call!728749 (derivativeStep!6356 (ite c!1444517 (regTwo!42759 lt!2680351) (ite c!1444515 (regTwo!42758 lt!2680351) (regOne!42758 lt!2680351))) (h!80306 s!14237)))))

(declare-fun d!2354406 () Bool)

(declare-fun lt!2680392 () Regex!21123)

(assert (=> d!2354406 (validRegex!11533 lt!2680392)))

(assert (=> d!2354406 (= lt!2680392 e!4645349)))

(declare-fun c!1444516 () Bool)

(assert (=> d!2354406 (= c!1444516 (or ((_ is EmptyExpr!21123) lt!2680351) ((_ is EmptyLang!21123) lt!2680351)))))

(assert (=> d!2354406 (validRegex!11533 lt!2680351)))

(assert (=> d!2354406 (= (derivativeStep!6356 lt!2680351 (h!80306 s!14237)) lt!2680392)))

(declare-fun b!7860651 () Bool)

(assert (=> b!7860651 (= c!1444515 (nullable!9393 (regOne!42758 lt!2680351)))))

(assert (=> b!7860651 (= e!4645348 e!4645345)))

(declare-fun b!7860652 () Bool)

(assert (=> b!7860652 (= e!4645346 e!4645348)))

(assert (=> b!7860652 (= c!1444518 ((_ is Star!21123) lt!2680351))))

(declare-fun b!7860653 () Bool)

(assert (=> b!7860653 (= e!4645346 (Union!21123 call!728751 call!728749))))

(declare-fun b!7860654 () Bool)

(assert (=> b!7860654 (= e!4645349 EmptyLang!21123)))

(assert (= (and d!2354406 c!1444516) b!7860654))

(assert (= (and d!2354406 (not c!1444516)) b!7860646))

(assert (= (and b!7860646 c!1444519) b!7860649))

(assert (= (and b!7860646 (not c!1444519)) b!7860645))

(assert (= (and b!7860645 c!1444517) b!7860653))

(assert (= (and b!7860645 (not c!1444517)) b!7860652))

(assert (= (and b!7860652 c!1444518) b!7860648))

(assert (= (and b!7860652 (not c!1444518)) b!7860651))

(assert (= (and b!7860651 c!1444515) b!7860647))

(assert (= (and b!7860651 (not c!1444515)) b!7860650))

(assert (= (or b!7860647 b!7860650) bm!728743))

(assert (= (or b!7860648 b!7860647) bm!728745))

(assert (= (or b!7860653 bm!728743) bm!728746))

(assert (= (or b!7860653 bm!728745) bm!728744))

(declare-fun m!8262282 () Bool)

(assert (=> bm!728744 m!8262282))

(declare-fun m!8262284 () Bool)

(assert (=> bm!728746 m!8262284))

(declare-fun m!8262286 () Bool)

(assert (=> d!2354406 m!8262286))

(assert (=> d!2354406 m!8262078))

(declare-fun m!8262288 () Bool)

(assert (=> b!7860651 m!8262288))

(assert (=> b!7860242 d!2354406))

(declare-fun bm!728747 () Bool)

(declare-fun call!728752 () Regex!21123)

(declare-fun call!728753 () Regex!21123)

(assert (=> bm!728747 (= call!728752 call!728753)))

(declare-fun b!7860655 () Bool)

(declare-fun c!1444522 () Bool)

(assert (=> b!7860655 (= c!1444522 ((_ is Union!21123) r1!6218))))

(declare-fun e!4645352 () Regex!21123)

(declare-fun e!4645351 () Regex!21123)

(assert (=> b!7860655 (= e!4645352 e!4645351)))

(declare-fun bm!728748 () Bool)

(declare-fun call!728755 () Regex!21123)

(declare-fun c!1444523 () Bool)

(assert (=> bm!728748 (= call!728755 (derivativeStep!6356 (ite c!1444522 (regOne!42759 r1!6218) (ite c!1444523 (reg!21452 r1!6218) (regOne!42758 r1!6218))) (h!80306 s!14237)))))

(declare-fun b!7860656 () Bool)

(declare-fun e!4645354 () Regex!21123)

(assert (=> b!7860656 (= e!4645354 e!4645352)))

(declare-fun c!1444524 () Bool)

(assert (=> b!7860656 (= c!1444524 ((_ is ElementMatch!21123) r1!6218))))

(declare-fun bm!728749 () Bool)

(declare-fun call!728754 () Regex!21123)

(assert (=> bm!728749 (= call!728754 call!728755)))

(declare-fun e!4645350 () Regex!21123)

(declare-fun b!7860657 () Bool)

(assert (=> b!7860657 (= e!4645350 (Union!21123 (Concat!29968 call!728754 (regTwo!42758 r1!6218)) call!728752))))

(declare-fun b!7860658 () Bool)

(declare-fun e!4645353 () Regex!21123)

(assert (=> b!7860658 (= e!4645353 (Concat!29968 call!728754 r1!6218))))

(declare-fun b!7860659 () Bool)

(assert (=> b!7860659 (= e!4645352 (ite (= (h!80306 s!14237) (c!1444401 r1!6218)) EmptyExpr!21123 EmptyLang!21123))))

(declare-fun b!7860660 () Bool)

(assert (=> b!7860660 (= e!4645350 (Union!21123 (Concat!29968 call!728752 (regTwo!42758 r1!6218)) EmptyLang!21123))))

(declare-fun c!1444520 () Bool)

(declare-fun bm!728750 () Bool)

(assert (=> bm!728750 (= call!728753 (derivativeStep!6356 (ite c!1444522 (regTwo!42759 r1!6218) (ite c!1444520 (regTwo!42758 r1!6218) (regOne!42758 r1!6218))) (h!80306 s!14237)))))

(declare-fun d!2354408 () Bool)

(declare-fun lt!2680393 () Regex!21123)

(assert (=> d!2354408 (validRegex!11533 lt!2680393)))

(assert (=> d!2354408 (= lt!2680393 e!4645354)))

(declare-fun c!1444521 () Bool)

(assert (=> d!2354408 (= c!1444521 (or ((_ is EmptyExpr!21123) r1!6218) ((_ is EmptyLang!21123) r1!6218)))))

(assert (=> d!2354408 (validRegex!11533 r1!6218)))

(assert (=> d!2354408 (= (derivativeStep!6356 r1!6218 (h!80306 s!14237)) lt!2680393)))

(declare-fun b!7860661 () Bool)

(assert (=> b!7860661 (= c!1444520 (nullable!9393 (regOne!42758 r1!6218)))))

(assert (=> b!7860661 (= e!4645353 e!4645350)))

(declare-fun b!7860662 () Bool)

(assert (=> b!7860662 (= e!4645351 e!4645353)))

(assert (=> b!7860662 (= c!1444523 ((_ is Star!21123) r1!6218))))

(declare-fun b!7860663 () Bool)

(assert (=> b!7860663 (= e!4645351 (Union!21123 call!728755 call!728753))))

(declare-fun b!7860664 () Bool)

(assert (=> b!7860664 (= e!4645354 EmptyLang!21123)))

(assert (= (and d!2354408 c!1444521) b!7860664))

(assert (= (and d!2354408 (not c!1444521)) b!7860656))

(assert (= (and b!7860656 c!1444524) b!7860659))

(assert (= (and b!7860656 (not c!1444524)) b!7860655))

(assert (= (and b!7860655 c!1444522) b!7860663))

(assert (= (and b!7860655 (not c!1444522)) b!7860662))

(assert (= (and b!7860662 c!1444523) b!7860658))

(assert (= (and b!7860662 (not c!1444523)) b!7860661))

(assert (= (and b!7860661 c!1444520) b!7860657))

(assert (= (and b!7860661 (not c!1444520)) b!7860660))

(assert (= (or b!7860657 b!7860660) bm!728747))

(assert (= (or b!7860658 b!7860657) bm!728749))

(assert (= (or b!7860663 bm!728747) bm!728750))

(assert (= (or b!7860663 bm!728749) bm!728748))

(declare-fun m!8262290 () Bool)

(assert (=> bm!728748 m!8262290))

(declare-fun m!8262294 () Bool)

(assert (=> bm!728750 m!8262294))

(declare-fun m!8262296 () Bool)

(assert (=> d!2354408 m!8262296))

(assert (=> d!2354408 m!8262050))

(assert (=> b!7860661 m!8262154))

(assert (=> b!7860242 d!2354408))

(declare-fun bm!728751 () Bool)

(declare-fun call!728756 () Regex!21123)

(declare-fun call!728757 () Regex!21123)

(assert (=> bm!728751 (= call!728756 call!728757)))

(declare-fun b!7860672 () Bool)

(declare-fun c!1444527 () Bool)

(assert (=> b!7860672 (= c!1444527 ((_ is Union!21123) r2!6156))))

(declare-fun e!4645360 () Regex!21123)

(declare-fun e!4645359 () Regex!21123)

(assert (=> b!7860672 (= e!4645360 e!4645359)))

(declare-fun bm!728752 () Bool)

(declare-fun c!1444528 () Bool)

(declare-fun call!728759 () Regex!21123)

(assert (=> bm!728752 (= call!728759 (derivativeStep!6356 (ite c!1444527 (regOne!42759 r2!6156) (ite c!1444528 (reg!21452 r2!6156) (regOne!42758 r2!6156))) (h!80306 s!14237)))))

(declare-fun b!7860673 () Bool)

(declare-fun e!4645364 () Regex!21123)

(assert (=> b!7860673 (= e!4645364 e!4645360)))

(declare-fun c!1444529 () Bool)

(assert (=> b!7860673 (= c!1444529 ((_ is ElementMatch!21123) r2!6156))))

(declare-fun bm!728753 () Bool)

(declare-fun call!728758 () Regex!21123)

(assert (=> bm!728753 (= call!728758 call!728759)))

(declare-fun e!4645358 () Regex!21123)

(declare-fun b!7860674 () Bool)

(assert (=> b!7860674 (= e!4645358 (Union!21123 (Concat!29968 call!728758 (regTwo!42758 r2!6156)) call!728756))))

(declare-fun b!7860675 () Bool)

(declare-fun e!4645361 () Regex!21123)

(assert (=> b!7860675 (= e!4645361 (Concat!29968 call!728758 r2!6156))))

(declare-fun b!7860676 () Bool)

(assert (=> b!7860676 (= e!4645360 (ite (= (h!80306 s!14237) (c!1444401 r2!6156)) EmptyExpr!21123 EmptyLang!21123))))

(declare-fun b!7860677 () Bool)

(assert (=> b!7860677 (= e!4645358 (Union!21123 (Concat!29968 call!728756 (regTwo!42758 r2!6156)) EmptyLang!21123))))

(declare-fun c!1444525 () Bool)

(declare-fun bm!728754 () Bool)

(assert (=> bm!728754 (= call!728757 (derivativeStep!6356 (ite c!1444527 (regTwo!42759 r2!6156) (ite c!1444525 (regTwo!42758 r2!6156) (regOne!42758 r2!6156))) (h!80306 s!14237)))))

(declare-fun d!2354410 () Bool)

(declare-fun lt!2680397 () Regex!21123)

(assert (=> d!2354410 (validRegex!11533 lt!2680397)))

(assert (=> d!2354410 (= lt!2680397 e!4645364)))

(declare-fun c!1444526 () Bool)

(assert (=> d!2354410 (= c!1444526 (or ((_ is EmptyExpr!21123) r2!6156) ((_ is EmptyLang!21123) r2!6156)))))

(assert (=> d!2354410 (validRegex!11533 r2!6156)))

(assert (=> d!2354410 (= (derivativeStep!6356 r2!6156 (h!80306 s!14237)) lt!2680397)))

(declare-fun b!7860680 () Bool)

(assert (=> b!7860680 (= c!1444525 (nullable!9393 (regOne!42758 r2!6156)))))

(assert (=> b!7860680 (= e!4645361 e!4645358)))

(declare-fun b!7860681 () Bool)

(assert (=> b!7860681 (= e!4645359 e!4645361)))

(assert (=> b!7860681 (= c!1444528 ((_ is Star!21123) r2!6156))))

(declare-fun b!7860682 () Bool)

(assert (=> b!7860682 (= e!4645359 (Union!21123 call!728759 call!728757))))

(declare-fun b!7860683 () Bool)

(assert (=> b!7860683 (= e!4645364 EmptyLang!21123)))

(assert (= (and d!2354410 c!1444526) b!7860683))

(assert (= (and d!2354410 (not c!1444526)) b!7860673))

(assert (= (and b!7860673 c!1444529) b!7860676))

(assert (= (and b!7860673 (not c!1444529)) b!7860672))

(assert (= (and b!7860672 c!1444527) b!7860682))

(assert (= (and b!7860672 (not c!1444527)) b!7860681))

(assert (= (and b!7860681 c!1444528) b!7860675))

(assert (= (and b!7860681 (not c!1444528)) b!7860680))

(assert (= (and b!7860680 c!1444525) b!7860674))

(assert (= (and b!7860680 (not c!1444525)) b!7860677))

(assert (= (or b!7860674 b!7860677) bm!728751))

(assert (= (or b!7860675 b!7860674) bm!728753))

(assert (= (or b!7860682 bm!728751) bm!728754))

(assert (= (or b!7860682 bm!728753) bm!728752))

(declare-fun m!8262300 () Bool)

(assert (=> bm!728752 m!8262300))

(declare-fun m!8262302 () Bool)

(assert (=> bm!728754 m!8262302))

(declare-fun m!8262304 () Bool)

(assert (=> d!2354410 m!8262304))

(assert (=> d!2354410 m!8262068))

(declare-fun m!8262306 () Bool)

(assert (=> b!7860680 m!8262306))

(assert (=> b!7860242 d!2354410))

(declare-fun b!7860696 () Bool)

(declare-fun e!4645368 () Bool)

(declare-fun e!4645372 () Bool)

(assert (=> b!7860696 (= e!4645368 e!4645372)))

(declare-fun res!3124976 () Bool)

(assert (=> b!7860696 (= res!3124976 (not (nullable!9393 (reg!21452 lt!2680353))))))

(assert (=> b!7860696 (=> (not res!3124976) (not e!4645372))))

(declare-fun b!7860698 () Bool)

(declare-fun res!3124974 () Bool)

(declare-fun e!4645367 () Bool)

(assert (=> b!7860698 (=> (not res!3124974) (not e!4645367))))

(declare-fun call!728761 () Bool)

(assert (=> b!7860698 (= res!3124974 call!728761)))

(declare-fun e!4645373 () Bool)

(assert (=> b!7860698 (= e!4645373 e!4645367)))

(declare-fun d!2354412 () Bool)

(declare-fun res!3124973 () Bool)

(declare-fun e!4645371 () Bool)

(assert (=> d!2354412 (=> res!3124973 e!4645371)))

(assert (=> d!2354412 (= res!3124973 ((_ is ElementMatch!21123) lt!2680353))))

(assert (=> d!2354412 (= (validRegex!11533 lt!2680353) e!4645371)))

(declare-fun bm!728755 () Bool)

(declare-fun call!728762 () Bool)

(declare-fun call!728760 () Bool)

(assert (=> bm!728755 (= call!728762 call!728760)))

(declare-fun b!7860701 () Bool)

(assert (=> b!7860701 (= e!4645372 call!728760)))

(declare-fun b!7860703 () Bool)

(assert (=> b!7860703 (= e!4645368 e!4645373)))

(declare-fun c!1444530 () Bool)

(assert (=> b!7860703 (= c!1444530 ((_ is Union!21123) lt!2680353))))

(declare-fun b!7860704 () Bool)

(assert (=> b!7860704 (= e!4645367 call!728762)))

(declare-fun c!1444531 () Bool)

(declare-fun bm!728756 () Bool)

(assert (=> bm!728756 (= call!728760 (validRegex!11533 (ite c!1444531 (reg!21452 lt!2680353) (ite c!1444530 (regTwo!42759 lt!2680353) (regTwo!42758 lt!2680353)))))))

(declare-fun b!7860705 () Bool)

(declare-fun e!4645370 () Bool)

(assert (=> b!7860705 (= e!4645370 call!728762)))

(declare-fun b!7860706 () Bool)

(assert (=> b!7860706 (= e!4645371 e!4645368)))

(assert (=> b!7860706 (= c!1444531 ((_ is Star!21123) lt!2680353))))

(declare-fun b!7860707 () Bool)

(declare-fun e!4645369 () Bool)

(assert (=> b!7860707 (= e!4645369 e!4645370)))

(declare-fun res!3124972 () Bool)

(assert (=> b!7860707 (=> (not res!3124972) (not e!4645370))))

(assert (=> b!7860707 (= res!3124972 call!728761)))

(declare-fun b!7860708 () Bool)

(declare-fun res!3124975 () Bool)

(assert (=> b!7860708 (=> res!3124975 e!4645369)))

(assert (=> b!7860708 (= res!3124975 (not ((_ is Concat!29968) lt!2680353)))))

(assert (=> b!7860708 (= e!4645373 e!4645369)))

(declare-fun bm!728757 () Bool)

(assert (=> bm!728757 (= call!728761 (validRegex!11533 (ite c!1444530 (regOne!42759 lt!2680353) (regOne!42758 lt!2680353))))))

(assert (= (and d!2354412 (not res!3124973)) b!7860706))

(assert (= (and b!7860706 c!1444531) b!7860696))

(assert (= (and b!7860706 (not c!1444531)) b!7860703))

(assert (= (and b!7860696 res!3124976) b!7860701))

(assert (= (and b!7860703 c!1444530) b!7860698))

(assert (= (and b!7860703 (not c!1444530)) b!7860708))

(assert (= (and b!7860698 res!3124974) b!7860704))

(assert (= (and b!7860708 (not res!3124975)) b!7860707))

(assert (= (and b!7860707 res!3124972) b!7860705))

(assert (= (or b!7860704 b!7860705) bm!728755))

(assert (= (or b!7860698 b!7860707) bm!728757))

(assert (= (or b!7860701 bm!728755) bm!728756))

(declare-fun m!8262308 () Bool)

(assert (=> b!7860696 m!8262308))

(declare-fun m!8262310 () Bool)

(assert (=> bm!728756 m!8262310))

(declare-fun m!8262312 () Bool)

(assert (=> bm!728757 m!8262312))

(assert (=> b!7860231 d!2354412))

(declare-fun d!2354414 () Bool)

(assert (=> d!2354414 (= (nullable!9393 r1!6218) (nullableFct!3705 r1!6218))))

(declare-fun bs!1967194 () Bool)

(assert (= bs!1967194 d!2354414))

(declare-fun m!8262314 () Bool)

(assert (=> bs!1967194 m!8262314))

(assert (=> b!7860246 d!2354414))

(declare-fun b!7860755 () Bool)

(declare-fun e!4645387 () Bool)

(declare-fun tp!2329577 () Bool)

(declare-fun tp!2329576 () Bool)

(assert (=> b!7860755 (= e!4645387 (and tp!2329577 tp!2329576))))

(assert (=> b!7860235 (= tp!2329493 e!4645387)))

(declare-fun b!7860753 () Bool)

(declare-fun tp!2329574 () Bool)

(declare-fun tp!2329578 () Bool)

(assert (=> b!7860753 (= e!4645387 (and tp!2329574 tp!2329578))))

(declare-fun b!7860754 () Bool)

(declare-fun tp!2329575 () Bool)

(assert (=> b!7860754 (= e!4645387 tp!2329575)))

(declare-fun b!7860752 () Bool)

(assert (=> b!7860752 (= e!4645387 tp_is_empty!52645)))

(assert (= (and b!7860235 ((_ is ElementMatch!21123) (reg!21452 r2!6156))) b!7860752))

(assert (= (and b!7860235 ((_ is Concat!29968) (reg!21452 r2!6156))) b!7860753))

(assert (= (and b!7860235 ((_ is Star!21123) (reg!21452 r2!6156))) b!7860754))

(assert (= (and b!7860235 ((_ is Union!21123) (reg!21452 r2!6156))) b!7860755))

(declare-fun b!7860759 () Bool)

(declare-fun e!4645388 () Bool)

(declare-fun tp!2329582 () Bool)

(declare-fun tp!2329581 () Bool)

(assert (=> b!7860759 (= e!4645388 (and tp!2329582 tp!2329581))))

(assert (=> b!7860240 (= tp!2329497 e!4645388)))

(declare-fun b!7860757 () Bool)

(declare-fun tp!2329579 () Bool)

(declare-fun tp!2329583 () Bool)

(assert (=> b!7860757 (= e!4645388 (and tp!2329579 tp!2329583))))

(declare-fun b!7860758 () Bool)

(declare-fun tp!2329580 () Bool)

(assert (=> b!7860758 (= e!4645388 tp!2329580)))

(declare-fun b!7860756 () Bool)

(assert (=> b!7860756 (= e!4645388 tp_is_empty!52645)))

(assert (= (and b!7860240 ((_ is ElementMatch!21123) (regOne!42758 r2!6156))) b!7860756))

(assert (= (and b!7860240 ((_ is Concat!29968) (regOne!42758 r2!6156))) b!7860757))

(assert (= (and b!7860240 ((_ is Star!21123) (regOne!42758 r2!6156))) b!7860758))

(assert (= (and b!7860240 ((_ is Union!21123) (regOne!42758 r2!6156))) b!7860759))

(declare-fun b!7860763 () Bool)

(declare-fun e!4645389 () Bool)

(declare-fun tp!2329587 () Bool)

(declare-fun tp!2329586 () Bool)

(assert (=> b!7860763 (= e!4645389 (and tp!2329587 tp!2329586))))

(assert (=> b!7860240 (= tp!2329495 e!4645389)))

(declare-fun b!7860761 () Bool)

(declare-fun tp!2329584 () Bool)

(declare-fun tp!2329588 () Bool)

(assert (=> b!7860761 (= e!4645389 (and tp!2329584 tp!2329588))))

(declare-fun b!7860762 () Bool)

(declare-fun tp!2329585 () Bool)

(assert (=> b!7860762 (= e!4645389 tp!2329585)))

(declare-fun b!7860760 () Bool)

(assert (=> b!7860760 (= e!4645389 tp_is_empty!52645)))

(assert (= (and b!7860240 ((_ is ElementMatch!21123) (regTwo!42758 r2!6156))) b!7860760))

(assert (= (and b!7860240 ((_ is Concat!29968) (regTwo!42758 r2!6156))) b!7860761))

(assert (= (and b!7860240 ((_ is Star!21123) (regTwo!42758 r2!6156))) b!7860762))

(assert (= (and b!7860240 ((_ is Union!21123) (regTwo!42758 r2!6156))) b!7860763))

(declare-fun b!7860768 () Bool)

(declare-fun e!4645392 () Bool)

(declare-fun tp!2329591 () Bool)

(assert (=> b!7860768 (= e!4645392 (and tp_is_empty!52645 tp!2329591))))

(assert (=> b!7860245 (= tp!2329500 e!4645392)))

(assert (= (and b!7860245 ((_ is Cons!73858) (t!388717 s!14237))) b!7860768))

(declare-fun b!7860772 () Bool)

(declare-fun e!4645393 () Bool)

(declare-fun tp!2329595 () Bool)

(declare-fun tp!2329594 () Bool)

(assert (=> b!7860772 (= e!4645393 (and tp!2329595 tp!2329594))))

(assert (=> b!7860243 (= tp!2329496 e!4645393)))

(declare-fun b!7860770 () Bool)

(declare-fun tp!2329592 () Bool)

(declare-fun tp!2329596 () Bool)

(assert (=> b!7860770 (= e!4645393 (and tp!2329592 tp!2329596))))

(declare-fun b!7860771 () Bool)

(declare-fun tp!2329593 () Bool)

(assert (=> b!7860771 (= e!4645393 tp!2329593)))

(declare-fun b!7860769 () Bool)

(assert (=> b!7860769 (= e!4645393 tp_is_empty!52645)))

(assert (= (and b!7860243 ((_ is ElementMatch!21123) (reg!21452 r1!6218))) b!7860769))

(assert (= (and b!7860243 ((_ is Concat!29968) (reg!21452 r1!6218))) b!7860770))

(assert (= (and b!7860243 ((_ is Star!21123) (reg!21452 r1!6218))) b!7860771))

(assert (= (and b!7860243 ((_ is Union!21123) (reg!21452 r1!6218))) b!7860772))

(declare-fun b!7860776 () Bool)

(declare-fun e!4645394 () Bool)

(declare-fun tp!2329600 () Bool)

(declare-fun tp!2329599 () Bool)

(assert (=> b!7860776 (= e!4645394 (and tp!2329600 tp!2329599))))

(assert (=> b!7860236 (= tp!2329491 e!4645394)))

(declare-fun b!7860774 () Bool)

(declare-fun tp!2329597 () Bool)

(declare-fun tp!2329601 () Bool)

(assert (=> b!7860774 (= e!4645394 (and tp!2329597 tp!2329601))))

(declare-fun b!7860775 () Bool)

(declare-fun tp!2329598 () Bool)

(assert (=> b!7860775 (= e!4645394 tp!2329598)))

(declare-fun b!7860773 () Bool)

(assert (=> b!7860773 (= e!4645394 tp_is_empty!52645)))

(assert (= (and b!7860236 ((_ is ElementMatch!21123) (regOne!42758 r1!6218))) b!7860773))

(assert (= (and b!7860236 ((_ is Concat!29968) (regOne!42758 r1!6218))) b!7860774))

(assert (= (and b!7860236 ((_ is Star!21123) (regOne!42758 r1!6218))) b!7860775))

(assert (= (and b!7860236 ((_ is Union!21123) (regOne!42758 r1!6218))) b!7860776))

(declare-fun b!7860780 () Bool)

(declare-fun e!4645395 () Bool)

(declare-fun tp!2329605 () Bool)

(declare-fun tp!2329604 () Bool)

(assert (=> b!7860780 (= e!4645395 (and tp!2329605 tp!2329604))))

(assert (=> b!7860236 (= tp!2329499 e!4645395)))

(declare-fun b!7860778 () Bool)

(declare-fun tp!2329602 () Bool)

(declare-fun tp!2329606 () Bool)

(assert (=> b!7860778 (= e!4645395 (and tp!2329602 tp!2329606))))

(declare-fun b!7860779 () Bool)

(declare-fun tp!2329603 () Bool)

(assert (=> b!7860779 (= e!4645395 tp!2329603)))

(declare-fun b!7860777 () Bool)

(assert (=> b!7860777 (= e!4645395 tp_is_empty!52645)))

(assert (= (and b!7860236 ((_ is ElementMatch!21123) (regTwo!42758 r1!6218))) b!7860777))

(assert (= (and b!7860236 ((_ is Concat!29968) (regTwo!42758 r1!6218))) b!7860778))

(assert (= (and b!7860236 ((_ is Star!21123) (regTwo!42758 r1!6218))) b!7860779))

(assert (= (and b!7860236 ((_ is Union!21123) (regTwo!42758 r1!6218))) b!7860780))

(declare-fun b!7860784 () Bool)

(declare-fun e!4645396 () Bool)

(declare-fun tp!2329610 () Bool)

(declare-fun tp!2329609 () Bool)

(assert (=> b!7860784 (= e!4645396 (and tp!2329610 tp!2329609))))

(assert (=> b!7860241 (= tp!2329494 e!4645396)))

(declare-fun b!7860782 () Bool)

(declare-fun tp!2329607 () Bool)

(declare-fun tp!2329611 () Bool)

(assert (=> b!7860782 (= e!4645396 (and tp!2329607 tp!2329611))))

(declare-fun b!7860783 () Bool)

(declare-fun tp!2329608 () Bool)

(assert (=> b!7860783 (= e!4645396 tp!2329608)))

(declare-fun b!7860781 () Bool)

(assert (=> b!7860781 (= e!4645396 tp_is_empty!52645)))

(assert (= (and b!7860241 ((_ is ElementMatch!21123) (regOne!42759 r1!6218))) b!7860781))

(assert (= (and b!7860241 ((_ is Concat!29968) (regOne!42759 r1!6218))) b!7860782))

(assert (= (and b!7860241 ((_ is Star!21123) (regOne!42759 r1!6218))) b!7860783))

(assert (= (and b!7860241 ((_ is Union!21123) (regOne!42759 r1!6218))) b!7860784))

(declare-fun b!7860788 () Bool)

(declare-fun e!4645397 () Bool)

(declare-fun tp!2329615 () Bool)

(declare-fun tp!2329614 () Bool)

(assert (=> b!7860788 (= e!4645397 (and tp!2329615 tp!2329614))))

(assert (=> b!7860241 (= tp!2329492 e!4645397)))

(declare-fun b!7860786 () Bool)

(declare-fun tp!2329612 () Bool)

(declare-fun tp!2329616 () Bool)

(assert (=> b!7860786 (= e!4645397 (and tp!2329612 tp!2329616))))

(declare-fun b!7860787 () Bool)

(declare-fun tp!2329613 () Bool)

(assert (=> b!7860787 (= e!4645397 tp!2329613)))

(declare-fun b!7860785 () Bool)

(assert (=> b!7860785 (= e!4645397 tp_is_empty!52645)))

(assert (= (and b!7860241 ((_ is ElementMatch!21123) (regTwo!42759 r1!6218))) b!7860785))

(assert (= (and b!7860241 ((_ is Concat!29968) (regTwo!42759 r1!6218))) b!7860786))

(assert (= (and b!7860241 ((_ is Star!21123) (regTwo!42759 r1!6218))) b!7860787))

(assert (= (and b!7860241 ((_ is Union!21123) (regTwo!42759 r1!6218))) b!7860788))

(declare-fun b!7860792 () Bool)

(declare-fun e!4645398 () Bool)

(declare-fun tp!2329620 () Bool)

(declare-fun tp!2329619 () Bool)

(assert (=> b!7860792 (= e!4645398 (and tp!2329620 tp!2329619))))

(assert (=> b!7860230 (= tp!2329498 e!4645398)))

(declare-fun b!7860790 () Bool)

(declare-fun tp!2329617 () Bool)

(declare-fun tp!2329621 () Bool)

(assert (=> b!7860790 (= e!4645398 (and tp!2329617 tp!2329621))))

(declare-fun b!7860791 () Bool)

(declare-fun tp!2329618 () Bool)

(assert (=> b!7860791 (= e!4645398 tp!2329618)))

(declare-fun b!7860789 () Bool)

(assert (=> b!7860789 (= e!4645398 tp_is_empty!52645)))

(assert (= (and b!7860230 ((_ is ElementMatch!21123) (regOne!42759 r2!6156))) b!7860789))

(assert (= (and b!7860230 ((_ is Concat!29968) (regOne!42759 r2!6156))) b!7860790))

(assert (= (and b!7860230 ((_ is Star!21123) (regOne!42759 r2!6156))) b!7860791))

(assert (= (and b!7860230 ((_ is Union!21123) (regOne!42759 r2!6156))) b!7860792))

(declare-fun b!7860796 () Bool)

(declare-fun e!4645399 () Bool)

(declare-fun tp!2329625 () Bool)

(declare-fun tp!2329624 () Bool)

(assert (=> b!7860796 (= e!4645399 (and tp!2329625 tp!2329624))))

(assert (=> b!7860230 (= tp!2329490 e!4645399)))

(declare-fun b!7860794 () Bool)

(declare-fun tp!2329622 () Bool)

(declare-fun tp!2329626 () Bool)

(assert (=> b!7860794 (= e!4645399 (and tp!2329622 tp!2329626))))

(declare-fun b!7860795 () Bool)

(declare-fun tp!2329623 () Bool)

(assert (=> b!7860795 (= e!4645399 tp!2329623)))

(declare-fun b!7860793 () Bool)

(assert (=> b!7860793 (= e!4645399 tp_is_empty!52645)))

(assert (= (and b!7860230 ((_ is ElementMatch!21123) (regTwo!42759 r2!6156))) b!7860793))

(assert (= (and b!7860230 ((_ is Concat!29968) (regTwo!42759 r2!6156))) b!7860794))

(assert (= (and b!7860230 ((_ is Star!21123) (regTwo!42759 r2!6156))) b!7860795))

(assert (= (and b!7860230 ((_ is Union!21123) (regTwo!42759 r2!6156))) b!7860796))

(check-sat (not b!7860507) (not b!7860796) (not b!7860774) (not d!2354414) (not b!7860651) (not d!2354340) (not b!7860661) (not d!2354344) (not bm!728673) (not b!7860267) (not b!7860680) (not b!7860276) (not d!2354368) (not b!7860778) (not bm!728752) (not bm!728726) (not d!2354396) (not bm!728715) (not b!7860782) (not b!7860511) (not b!7860779) (not b!7860368) (not b!7860512) (not b!7860770) (not bm!728667) (not b!7860580) (not b!7860772) (not b!7860753) (not b!7860460) (not b!7860790) (not b!7860754) (not b!7860788) (not b!7860612) (not b!7860606) (not b!7860771) (not b!7860504) (not b!7860362) (not b!7860453) (not b!7860787) (not b!7860759) (not d!2354398) (not b!7860762) (not bm!728738) (not bm!728697) (not b!7860795) (not d!2354388) tp_is_empty!52645 (not bm!728746) (not b!7860425) (not b!7860451) (not bm!728664) (not bm!728702) (not b!7860786) (not d!2354406) (not b!7860758) (not b!7860757) (not b!7860454) (not b!7860361) (not bm!728757) (not b!7860791) (not bm!728754) (not bm!728695) (not bm!728737) (not b!7860509) (not b!7860794) (not b!7860792) (not bm!728750) (not b!7860539) (not d!2354382) (not b!7860768) (not b!7860359) (not d!2354360) (not b!7860775) (not b!7860780) (not bm!728666) (not b!7860357) (not bm!728725) (not b!7860602) (not b!7860358) (not b!7860776) (not b!7860644) (not b!7860508) (not b!7860579) (not b!7860521) (not b!7860605) (not b!7860761) (not b!7860603) (not d!2354408) (not b!7860449) (not b!7860755) (not b!7860696) (not d!2354410) (not b!7860450) (not bm!728736) (not bm!728663) (not b!7860601) (not bm!728748) (not b!7860763) (not bm!728744) (not b!7860784) (not b!7860783) (not d!2354358) (not bm!728756) (not b!7860590))
(check-sat)
