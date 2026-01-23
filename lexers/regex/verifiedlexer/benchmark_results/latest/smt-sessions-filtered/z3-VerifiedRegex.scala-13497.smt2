; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728136 () Bool)

(assert start!728136)

(declare-fun res!3015236 () Bool)

(declare-fun e!4484144 () Bool)

(assert (=> start!728136 (=> (not res!3015236) (not e!4484144))))

(declare-datatypes ((C!39904 0))(
  ( (C!39905 (val!30392 Int)) )
))
(declare-datatypes ((Regex!19789 0))(
  ( (ElementMatch!19789 (c!1389750 C!39904)) (Concat!28634 (regOne!40090 Regex!19789) (regTwo!40090 Regex!19789)) (EmptyExpr!19789) (Star!19789 (reg!20118 Regex!19789)) (EmptyLang!19789) (Union!19789 (regOne!40091 Regex!19789) (regTwo!40091 Regex!19789)) )
))
(declare-fun expr!41 () Regex!19789)

(declare-fun validRegex!10217 (Regex!19789) Bool)

(assert (=> start!728136 (= res!3015236 (validRegex!10217 expr!41))))

(assert (=> start!728136 e!4484144))

(declare-fun e!4484145 () Bool)

(assert (=> start!728136 e!4484145))

(declare-fun tp_is_empty!49933 () Bool)

(assert (=> start!728136 tp_is_empty!49933))

(declare-fun b!7522358 () Bool)

(declare-fun regexDepth!449 (Regex!19789) Int)

(assert (=> b!7522358 (= e!4484144 (>= (regexDepth!449 (regTwo!40091 expr!41)) (regexDepth!449 expr!41)))))

(declare-fun b!7522359 () Bool)

(declare-fun tp!2185235 () Bool)

(assert (=> b!7522359 (= e!4484145 tp!2185235)))

(declare-fun b!7522360 () Bool)

(declare-fun tp!2185238 () Bool)

(declare-fun tp!2185237 () Bool)

(assert (=> b!7522360 (= e!4484145 (and tp!2185238 tp!2185237))))

(declare-fun b!7522361 () Bool)

(assert (=> b!7522361 (= e!4484145 tp_is_empty!49933)))

(declare-fun b!7522362 () Bool)

(declare-fun res!3015235 () Bool)

(assert (=> b!7522362 (=> (not res!3015235) (not e!4484144))))

(declare-fun a!1106 () C!39904)

(get-info :version)

(assert (=> b!7522362 (= res!3015235 (and (or (not ((_ is ElementMatch!19789) expr!41)) (not (= (c!1389750 expr!41) a!1106))) ((_ is Union!19789) expr!41)))))

(declare-fun b!7522363 () Bool)

(declare-fun tp!2185236 () Bool)

(declare-fun tp!2185239 () Bool)

(assert (=> b!7522363 (= e!4484145 (and tp!2185236 tp!2185239))))

(assert (= (and start!728136 res!3015236) b!7522362))

(assert (= (and b!7522362 res!3015235) b!7522358))

(assert (= (and start!728136 ((_ is ElementMatch!19789) expr!41)) b!7522361))

(assert (= (and start!728136 ((_ is Concat!28634) expr!41)) b!7522360))

(assert (= (and start!728136 ((_ is Star!19789) expr!41)) b!7522359))

(assert (= (and start!728136 ((_ is Union!19789) expr!41)) b!7522363))

(declare-fun m!8100572 () Bool)

(assert (=> start!728136 m!8100572))

(declare-fun m!8100574 () Bool)

(assert (=> b!7522358 m!8100574))

(declare-fun m!8100576 () Bool)

(assert (=> b!7522358 m!8100576))

(check-sat (not b!7522359) tp_is_empty!49933 (not b!7522363) (not b!7522358) (not b!7522360) (not start!728136))
(check-sat)
(get-model)

(declare-fun b!7522441 () Bool)

(declare-fun e!4484202 () Int)

(declare-fun e!4484197 () Int)

(assert (=> b!7522441 (= e!4484202 e!4484197)))

(declare-fun c!1389781 () Bool)

(assert (=> b!7522441 (= c!1389781 ((_ is Concat!28634) (regTwo!40091 expr!41)))))

(declare-fun call!689899 () Int)

(declare-fun bm!689891 () Bool)

(declare-fun c!1389785 () Bool)

(declare-fun c!1389782 () Bool)

(assert (=> bm!689891 (= call!689899 (regexDepth!449 (ite c!1389785 (regTwo!40091 (regTwo!40091 expr!41)) (ite c!1389782 (regTwo!40090 (regTwo!40091 expr!41)) (reg!20118 (regTwo!40091 expr!41))))))))

(declare-fun b!7522442 () Bool)

(declare-fun e!4484196 () Bool)

(declare-fun e!4484201 () Bool)

(assert (=> b!7522442 (= e!4484196 e!4484201)))

(assert (=> b!7522442 (= c!1389782 ((_ is Concat!28634) (regTwo!40091 expr!41)))))

(declare-fun bm!689892 () Bool)

(declare-fun c!1389783 () Bool)

(declare-fun call!689900 () Int)

(declare-fun c!1389780 () Bool)

(assert (=> bm!689892 (= call!689900 (regexDepth!449 (ite c!1389780 (reg!20118 (regTwo!40091 expr!41)) (ite c!1389783 (regTwo!40091 (regTwo!40091 expr!41)) (regOne!40090 (regTwo!40091 expr!41))))))))

(declare-fun b!7522444 () Bool)

(declare-fun e!4484199 () Int)

(assert (=> b!7522444 (= e!4484199 (+ 1 call!689900))))

(declare-fun b!7522445 () Bool)

(declare-fun res!3015259 () Bool)

(declare-fun e!4484195 () Bool)

(assert (=> b!7522445 (=> (not res!3015259) (not e!4484195))))

(declare-fun lt!2638613 () Int)

(declare-fun call!689897 () Int)

(assert (=> b!7522445 (= res!3015259 (> lt!2638613 call!689897))))

(assert (=> b!7522445 (= e!4484201 e!4484195)))

(declare-fun b!7522446 () Bool)

(declare-fun call!689901 () Int)

(assert (=> b!7522446 (= e!4484202 (+ 1 call!689901))))

(declare-fun b!7522447 () Bool)

(declare-fun e!4484203 () Bool)

(assert (=> b!7522447 (= e!4484203 e!4484196)))

(assert (=> b!7522447 (= c!1389785 ((_ is Union!19789) (regTwo!40091 expr!41)))))

(declare-fun bm!689893 () Bool)

(declare-fun call!689902 () Int)

(assert (=> bm!689893 (= call!689902 call!689900)))

(declare-fun b!7522448 () Bool)

(assert (=> b!7522448 (= e!4484197 1)))

(declare-fun b!7522449 () Bool)

(declare-fun e!4484200 () Bool)

(assert (=> b!7522449 (= e!4484200 (= lt!2638613 1))))

(declare-fun b!7522450 () Bool)

(declare-fun call!689898 () Int)

(assert (=> b!7522450 (= e!4484200 (> lt!2638613 call!689898))))

(declare-fun b!7522451 () Bool)

(declare-fun e!4484204 () Bool)

(assert (=> b!7522451 (= e!4484196 e!4484204)))

(declare-fun res!3015258 () Bool)

(assert (=> b!7522451 (= res!3015258 (> lt!2638613 call!689897))))

(assert (=> b!7522451 (=> (not res!3015258) (not e!4484204))))

(declare-fun b!7522452 () Bool)

(assert (=> b!7522452 (= e!4484195 (> lt!2638613 call!689898))))

(declare-fun b!7522453 () Bool)

(assert (=> b!7522453 (= e!4484204 (> lt!2638613 call!689899))))

(declare-fun bm!689894 () Bool)

(declare-fun call!689896 () Int)

(assert (=> bm!689894 (= call!689896 (regexDepth!449 (ite c!1389783 (regOne!40091 (regTwo!40091 expr!41)) (regTwo!40090 (regTwo!40091 expr!41)))))))

(declare-fun bm!689895 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!689895 (= call!689901 (maxBigInt!0 (ite c!1389783 call!689896 call!689902) (ite c!1389783 call!689902 call!689896)))))

(declare-fun b!7522454 () Bool)

(assert (=> b!7522454 (= e!4484197 (+ 1 call!689901))))

(declare-fun b!7522455 () Bool)

(assert (=> b!7522455 (= c!1389783 ((_ is Union!19789) (regTwo!40091 expr!41)))))

(assert (=> b!7522455 (= e!4484199 e!4484202)))

(declare-fun b!7522456 () Bool)

(declare-fun e!4484198 () Int)

(assert (=> b!7522456 (= e!4484198 e!4484199)))

(assert (=> b!7522456 (= c!1389780 ((_ is Star!19789) (regTwo!40091 expr!41)))))

(declare-fun b!7522457 () Bool)

(assert (=> b!7522457 (= e!4484198 1)))

(declare-fun d!2309102 () Bool)

(assert (=> d!2309102 e!4484203))

(declare-fun res!3015260 () Bool)

(assert (=> d!2309102 (=> (not res!3015260) (not e!4484203))))

(assert (=> d!2309102 (= res!3015260 (> lt!2638613 0))))

(assert (=> d!2309102 (= lt!2638613 e!4484198)))

(declare-fun c!1389779 () Bool)

(assert (=> d!2309102 (= c!1389779 ((_ is ElementMatch!19789) (regTwo!40091 expr!41)))))

(assert (=> d!2309102 (= (regexDepth!449 (regTwo!40091 expr!41)) lt!2638613)))

(declare-fun b!7522443 () Bool)

(declare-fun c!1389784 () Bool)

(assert (=> b!7522443 (= c!1389784 ((_ is Star!19789) (regTwo!40091 expr!41)))))

(assert (=> b!7522443 (= e!4484201 e!4484200)))

(declare-fun bm!689896 () Bool)

(assert (=> bm!689896 (= call!689898 call!689899)))

(declare-fun bm!689897 () Bool)

(assert (=> bm!689897 (= call!689897 (regexDepth!449 (ite c!1389785 (regOne!40091 (regTwo!40091 expr!41)) (regOne!40090 (regTwo!40091 expr!41)))))))

(assert (= (and d!2309102 c!1389779) b!7522457))

(assert (= (and d!2309102 (not c!1389779)) b!7522456))

(assert (= (and b!7522456 c!1389780) b!7522444))

(assert (= (and b!7522456 (not c!1389780)) b!7522455))

(assert (= (and b!7522455 c!1389783) b!7522446))

(assert (= (and b!7522455 (not c!1389783)) b!7522441))

(assert (= (and b!7522441 c!1389781) b!7522454))

(assert (= (and b!7522441 (not c!1389781)) b!7522448))

(assert (= (or b!7522446 b!7522454) bm!689894))

(assert (= (or b!7522446 b!7522454) bm!689893))

(assert (= (or b!7522446 b!7522454) bm!689895))

(assert (= (or b!7522444 bm!689893) bm!689892))

(assert (= (and d!2309102 res!3015260) b!7522447))

(assert (= (and b!7522447 c!1389785) b!7522451))

(assert (= (and b!7522447 (not c!1389785)) b!7522442))

(assert (= (and b!7522451 res!3015258) b!7522453))

(assert (= (and b!7522442 c!1389782) b!7522445))

(assert (= (and b!7522442 (not c!1389782)) b!7522443))

(assert (= (and b!7522445 res!3015259) b!7522452))

(assert (= (and b!7522443 c!1389784) b!7522450))

(assert (= (and b!7522443 (not c!1389784)) b!7522449))

(assert (= (or b!7522452 b!7522450) bm!689896))

(assert (= (or b!7522451 b!7522445) bm!689897))

(assert (= (or b!7522453 bm!689896) bm!689891))

(declare-fun m!8100584 () Bool)

(assert (=> bm!689891 m!8100584))

(declare-fun m!8100586 () Bool)

(assert (=> bm!689897 m!8100586))

(declare-fun m!8100588 () Bool)

(assert (=> bm!689894 m!8100588))

(declare-fun m!8100590 () Bool)

(assert (=> bm!689895 m!8100590))

(declare-fun m!8100592 () Bool)

(assert (=> bm!689892 m!8100592))

(assert (=> b!7522358 d!2309102))

(declare-fun b!7522466 () Bool)

(declare-fun e!4484218 () Int)

(declare-fun e!4484213 () Int)

(assert (=> b!7522466 (= e!4484218 e!4484213)))

(declare-fun c!1389790 () Bool)

(assert (=> b!7522466 (= c!1389790 ((_ is Concat!28634) expr!41))))

(declare-fun c!1389791 () Bool)

(declare-fun call!689908 () Int)

(declare-fun c!1389794 () Bool)

(declare-fun bm!689900 () Bool)

(assert (=> bm!689900 (= call!689908 (regexDepth!449 (ite c!1389794 (regTwo!40091 expr!41) (ite c!1389791 (regTwo!40090 expr!41) (reg!20118 expr!41)))))))

(declare-fun b!7522467 () Bool)

(declare-fun e!4484212 () Bool)

(declare-fun e!4484217 () Bool)

(assert (=> b!7522467 (= e!4484212 e!4484217)))

(assert (=> b!7522467 (= c!1389791 ((_ is Concat!28634) expr!41))))

(declare-fun bm!689901 () Bool)

(declare-fun c!1389792 () Bool)

(declare-fun c!1389789 () Bool)

(declare-fun call!689909 () Int)

(assert (=> bm!689901 (= call!689909 (regexDepth!449 (ite c!1389789 (reg!20118 expr!41) (ite c!1389792 (regTwo!40091 expr!41) (regOne!40090 expr!41)))))))

(declare-fun b!7522469 () Bool)

(declare-fun e!4484215 () Int)

(assert (=> b!7522469 (= e!4484215 (+ 1 call!689909))))

(declare-fun b!7522472 () Bool)

(declare-fun res!3015266 () Bool)

(declare-fun e!4484211 () Bool)

(assert (=> b!7522472 (=> (not res!3015266) (not e!4484211))))

(declare-fun lt!2638614 () Int)

(declare-fun call!689906 () Int)

(assert (=> b!7522472 (= res!3015266 (> lt!2638614 call!689906))))

(assert (=> b!7522472 (= e!4484217 e!4484211)))

(declare-fun b!7522473 () Bool)

(declare-fun call!689910 () Int)

(assert (=> b!7522473 (= e!4484218 (+ 1 call!689910))))

(declare-fun b!7522474 () Bool)

(declare-fun e!4484219 () Bool)

(assert (=> b!7522474 (= e!4484219 e!4484212)))

(assert (=> b!7522474 (= c!1389794 ((_ is Union!19789) expr!41))))

(declare-fun bm!689902 () Bool)

(declare-fun call!689911 () Int)

(assert (=> bm!689902 (= call!689911 call!689909)))

(declare-fun b!7522477 () Bool)

(assert (=> b!7522477 (= e!4484213 1)))

(declare-fun b!7522478 () Bool)

(declare-fun e!4484216 () Bool)

(assert (=> b!7522478 (= e!4484216 (= lt!2638614 1))))

(declare-fun b!7522479 () Bool)

(declare-fun call!689907 () Int)

(assert (=> b!7522479 (= e!4484216 (> lt!2638614 call!689907))))

(declare-fun b!7522480 () Bool)

(declare-fun e!4484220 () Bool)

(assert (=> b!7522480 (= e!4484212 e!4484220)))

(declare-fun res!3015265 () Bool)

(assert (=> b!7522480 (= res!3015265 (> lt!2638614 call!689906))))

(assert (=> b!7522480 (=> (not res!3015265) (not e!4484220))))

(declare-fun b!7522481 () Bool)

(assert (=> b!7522481 (= e!4484211 (> lt!2638614 call!689907))))

(declare-fun b!7522482 () Bool)

(assert (=> b!7522482 (= e!4484220 (> lt!2638614 call!689908))))

(declare-fun bm!689903 () Bool)

(declare-fun call!689905 () Int)

(assert (=> bm!689903 (= call!689905 (regexDepth!449 (ite c!1389792 (regOne!40091 expr!41) (regTwo!40090 expr!41))))))

(declare-fun bm!689904 () Bool)

(assert (=> bm!689904 (= call!689910 (maxBigInt!0 (ite c!1389792 call!689905 call!689911) (ite c!1389792 call!689911 call!689905)))))

(declare-fun b!7522483 () Bool)

(assert (=> b!7522483 (= e!4484213 (+ 1 call!689910))))

(declare-fun b!7522484 () Bool)

(assert (=> b!7522484 (= c!1389792 ((_ is Union!19789) expr!41))))

(assert (=> b!7522484 (= e!4484215 e!4484218)))

(declare-fun b!7522485 () Bool)

(declare-fun e!4484214 () Int)

(assert (=> b!7522485 (= e!4484214 e!4484215)))

(assert (=> b!7522485 (= c!1389789 ((_ is Star!19789) expr!41))))

(declare-fun b!7522486 () Bool)

(assert (=> b!7522486 (= e!4484214 1)))

(declare-fun d!2309108 () Bool)

(assert (=> d!2309108 e!4484219))

(declare-fun res!3015267 () Bool)

(assert (=> d!2309108 (=> (not res!3015267) (not e!4484219))))

(assert (=> d!2309108 (= res!3015267 (> lt!2638614 0))))

(assert (=> d!2309108 (= lt!2638614 e!4484214)))

(declare-fun c!1389788 () Bool)

(assert (=> d!2309108 (= c!1389788 ((_ is ElementMatch!19789) expr!41))))

(assert (=> d!2309108 (= (regexDepth!449 expr!41) lt!2638614)))

(declare-fun b!7522468 () Bool)

(declare-fun c!1389793 () Bool)

(assert (=> b!7522468 (= c!1389793 ((_ is Star!19789) expr!41))))

(assert (=> b!7522468 (= e!4484217 e!4484216)))

(declare-fun bm!689905 () Bool)

(assert (=> bm!689905 (= call!689907 call!689908)))

(declare-fun bm!689906 () Bool)

(assert (=> bm!689906 (= call!689906 (regexDepth!449 (ite c!1389794 (regOne!40091 expr!41) (regOne!40090 expr!41))))))

(assert (= (and d!2309108 c!1389788) b!7522486))

(assert (= (and d!2309108 (not c!1389788)) b!7522485))

(assert (= (and b!7522485 c!1389789) b!7522469))

(assert (= (and b!7522485 (not c!1389789)) b!7522484))

(assert (= (and b!7522484 c!1389792) b!7522473))

(assert (= (and b!7522484 (not c!1389792)) b!7522466))

(assert (= (and b!7522466 c!1389790) b!7522483))

(assert (= (and b!7522466 (not c!1389790)) b!7522477))

(assert (= (or b!7522473 b!7522483) bm!689903))

(assert (= (or b!7522473 b!7522483) bm!689902))

(assert (= (or b!7522473 b!7522483) bm!689904))

(assert (= (or b!7522469 bm!689902) bm!689901))

(assert (= (and d!2309108 res!3015267) b!7522474))

(assert (= (and b!7522474 c!1389794) b!7522480))

(assert (= (and b!7522474 (not c!1389794)) b!7522467))

(assert (= (and b!7522480 res!3015265) b!7522482))

(assert (= (and b!7522467 c!1389791) b!7522472))

(assert (= (and b!7522467 (not c!1389791)) b!7522468))

(assert (= (and b!7522472 res!3015266) b!7522481))

(assert (= (and b!7522468 c!1389793) b!7522479))

(assert (= (and b!7522468 (not c!1389793)) b!7522478))

(assert (= (or b!7522481 b!7522479) bm!689905))

(assert (= (or b!7522480 b!7522472) bm!689906))

(assert (= (or b!7522482 bm!689905) bm!689900))

(declare-fun m!8100594 () Bool)

(assert (=> bm!689900 m!8100594))

(declare-fun m!8100596 () Bool)

(assert (=> bm!689906 m!8100596))

(declare-fun m!8100598 () Bool)

(assert (=> bm!689903 m!8100598))

(declare-fun m!8100600 () Bool)

(assert (=> bm!689904 m!8100600))

(declare-fun m!8100602 () Bool)

(assert (=> bm!689901 m!8100602))

(assert (=> b!7522358 d!2309108))

(declare-fun bm!689933 () Bool)

(declare-fun call!689940 () Bool)

(declare-fun c!1389818 () Bool)

(assert (=> bm!689933 (= call!689940 (validRegex!10217 (ite c!1389818 (regTwo!40091 expr!41) (regOne!40090 expr!41))))))

(declare-fun b!7522545 () Bool)

(declare-fun e!4484263 () Bool)

(declare-fun call!689939 () Bool)

(assert (=> b!7522545 (= e!4484263 call!689939)))

(declare-fun b!7522546 () Bool)

(declare-fun e!4484261 () Bool)

(declare-fun e!4484262 () Bool)

(assert (=> b!7522546 (= e!4484261 e!4484262)))

(declare-fun res!3015289 () Bool)

(declare-fun nullable!8623 (Regex!19789) Bool)

(assert (=> b!7522546 (= res!3015289 (not (nullable!8623 (reg!20118 expr!41))))))

(assert (=> b!7522546 (=> (not res!3015289) (not e!4484262))))

(declare-fun bm!689934 () Bool)

(declare-fun c!1389817 () Bool)

(declare-fun call!689938 () Bool)

(assert (=> bm!689934 (= call!689938 (validRegex!10217 (ite c!1389817 (reg!20118 expr!41) (ite c!1389818 (regOne!40091 expr!41) (regTwo!40090 expr!41)))))))

(declare-fun b!7522547 () Bool)

(declare-fun e!4484265 () Bool)

(assert (=> b!7522547 (= e!4484265 e!4484261)))

(assert (=> b!7522547 (= c!1389817 ((_ is Star!19789) expr!41))))

(declare-fun b!7522548 () Bool)

(declare-fun e!4484264 () Bool)

(assert (=> b!7522548 (= e!4484261 e!4484264)))

(assert (=> b!7522548 (= c!1389818 ((_ is Union!19789) expr!41))))

(declare-fun b!7522550 () Bool)

(declare-fun e!4484267 () Bool)

(assert (=> b!7522550 (= e!4484267 call!689940)))

(declare-fun bm!689935 () Bool)

(assert (=> bm!689935 (= call!689939 call!689938)))

(declare-fun b!7522551 () Bool)

(declare-fun e!4484266 () Bool)

(assert (=> b!7522551 (= e!4484266 e!4484263)))

(declare-fun res!3015286 () Bool)

(assert (=> b!7522551 (=> (not res!3015286) (not e!4484263))))

(assert (=> b!7522551 (= res!3015286 call!689940)))

(declare-fun b!7522552 () Bool)

(declare-fun res!3015290 () Bool)

(assert (=> b!7522552 (=> (not res!3015290) (not e!4484267))))

(assert (=> b!7522552 (= res!3015290 call!689939)))

(assert (=> b!7522552 (= e!4484264 e!4484267)))

(declare-fun b!7522553 () Bool)

(assert (=> b!7522553 (= e!4484262 call!689938)))

(declare-fun b!7522549 () Bool)

(declare-fun res!3015287 () Bool)

(assert (=> b!7522549 (=> res!3015287 e!4484266)))

(assert (=> b!7522549 (= res!3015287 (not ((_ is Concat!28634) expr!41)))))

(assert (=> b!7522549 (= e!4484264 e!4484266)))

(declare-fun d!2309110 () Bool)

(declare-fun res!3015288 () Bool)

(assert (=> d!2309110 (=> res!3015288 e!4484265)))

(assert (=> d!2309110 (= res!3015288 ((_ is ElementMatch!19789) expr!41))))

(assert (=> d!2309110 (= (validRegex!10217 expr!41) e!4484265)))

(assert (= (and d!2309110 (not res!3015288)) b!7522547))

(assert (= (and b!7522547 c!1389817) b!7522546))

(assert (= (and b!7522547 (not c!1389817)) b!7522548))

(assert (= (and b!7522546 res!3015289) b!7522553))

(assert (= (and b!7522548 c!1389818) b!7522552))

(assert (= (and b!7522548 (not c!1389818)) b!7522549))

(assert (= (and b!7522552 res!3015290) b!7522550))

(assert (= (and b!7522549 (not res!3015287)) b!7522551))

(assert (= (and b!7522551 res!3015286) b!7522545))

(assert (= (or b!7522550 b!7522551) bm!689933))

(assert (= (or b!7522552 b!7522545) bm!689935))

(assert (= (or b!7522553 bm!689935) bm!689934))

(declare-fun m!8100614 () Bool)

(assert (=> bm!689933 m!8100614))

(declare-fun m!8100616 () Bool)

(assert (=> b!7522546 m!8100616))

(declare-fun m!8100618 () Bool)

(assert (=> bm!689934 m!8100618))

(assert (=> start!728136 d!2309110))

(declare-fun b!7522576 () Bool)

(declare-fun e!4484272 () Bool)

(declare-fun tp!2185264 () Bool)

(assert (=> b!7522576 (= e!4484272 tp!2185264)))

(assert (=> b!7522360 (= tp!2185238 e!4484272)))

(declare-fun b!7522575 () Bool)

(declare-fun tp!2185263 () Bool)

(declare-fun tp!2185260 () Bool)

(assert (=> b!7522575 (= e!4484272 (and tp!2185263 tp!2185260))))

(declare-fun b!7522574 () Bool)

(assert (=> b!7522574 (= e!4484272 tp_is_empty!49933)))

(declare-fun b!7522577 () Bool)

(declare-fun tp!2185261 () Bool)

(declare-fun tp!2185262 () Bool)

(assert (=> b!7522577 (= e!4484272 (and tp!2185261 tp!2185262))))

(assert (= (and b!7522360 ((_ is ElementMatch!19789) (regOne!40090 expr!41))) b!7522574))

(assert (= (and b!7522360 ((_ is Concat!28634) (regOne!40090 expr!41))) b!7522575))

(assert (= (and b!7522360 ((_ is Star!19789) (regOne!40090 expr!41))) b!7522576))

(assert (= (and b!7522360 ((_ is Union!19789) (regOne!40090 expr!41))) b!7522577))

(declare-fun b!7522580 () Bool)

(declare-fun e!4484273 () Bool)

(declare-fun tp!2185269 () Bool)

(assert (=> b!7522580 (= e!4484273 tp!2185269)))

(assert (=> b!7522360 (= tp!2185237 e!4484273)))

(declare-fun b!7522579 () Bool)

(declare-fun tp!2185268 () Bool)

(declare-fun tp!2185265 () Bool)

(assert (=> b!7522579 (= e!4484273 (and tp!2185268 tp!2185265))))

(declare-fun b!7522578 () Bool)

(assert (=> b!7522578 (= e!4484273 tp_is_empty!49933)))

(declare-fun b!7522581 () Bool)

(declare-fun tp!2185266 () Bool)

(declare-fun tp!2185267 () Bool)

(assert (=> b!7522581 (= e!4484273 (and tp!2185266 tp!2185267))))

(assert (= (and b!7522360 ((_ is ElementMatch!19789) (regTwo!40090 expr!41))) b!7522578))

(assert (= (and b!7522360 ((_ is Concat!28634) (regTwo!40090 expr!41))) b!7522579))

(assert (= (and b!7522360 ((_ is Star!19789) (regTwo!40090 expr!41))) b!7522580))

(assert (= (and b!7522360 ((_ is Union!19789) (regTwo!40090 expr!41))) b!7522581))

(declare-fun b!7522588 () Bool)

(declare-fun e!4484275 () Bool)

(declare-fun tp!2185279 () Bool)

(assert (=> b!7522588 (= e!4484275 tp!2185279)))

(assert (=> b!7522363 (= tp!2185236 e!4484275)))

(declare-fun b!7522587 () Bool)

(declare-fun tp!2185278 () Bool)

(declare-fun tp!2185275 () Bool)

(assert (=> b!7522587 (= e!4484275 (and tp!2185278 tp!2185275))))

(declare-fun b!7522586 () Bool)

(assert (=> b!7522586 (= e!4484275 tp_is_empty!49933)))

(declare-fun b!7522589 () Bool)

(declare-fun tp!2185276 () Bool)

(declare-fun tp!2185277 () Bool)

(assert (=> b!7522589 (= e!4484275 (and tp!2185276 tp!2185277))))

(assert (= (and b!7522363 ((_ is ElementMatch!19789) (regOne!40091 expr!41))) b!7522586))

(assert (= (and b!7522363 ((_ is Concat!28634) (regOne!40091 expr!41))) b!7522587))

(assert (= (and b!7522363 ((_ is Star!19789) (regOne!40091 expr!41))) b!7522588))

(assert (= (and b!7522363 ((_ is Union!19789) (regOne!40091 expr!41))) b!7522589))

(declare-fun b!7522596 () Bool)

(declare-fun e!4484277 () Bool)

(declare-fun tp!2185289 () Bool)

(assert (=> b!7522596 (= e!4484277 tp!2185289)))

(assert (=> b!7522363 (= tp!2185239 e!4484277)))

(declare-fun b!7522595 () Bool)

(declare-fun tp!2185288 () Bool)

(declare-fun tp!2185285 () Bool)

(assert (=> b!7522595 (= e!4484277 (and tp!2185288 tp!2185285))))

(declare-fun b!7522594 () Bool)

(assert (=> b!7522594 (= e!4484277 tp_is_empty!49933)))

(declare-fun b!7522597 () Bool)

(declare-fun tp!2185286 () Bool)

(declare-fun tp!2185287 () Bool)

(assert (=> b!7522597 (= e!4484277 (and tp!2185286 tp!2185287))))

(assert (= (and b!7522363 ((_ is ElementMatch!19789) (regTwo!40091 expr!41))) b!7522594))

(assert (= (and b!7522363 ((_ is Concat!28634) (regTwo!40091 expr!41))) b!7522595))

(assert (= (and b!7522363 ((_ is Star!19789) (regTwo!40091 expr!41))) b!7522596))

(assert (= (and b!7522363 ((_ is Union!19789) (regTwo!40091 expr!41))) b!7522597))

(declare-fun b!7522604 () Bool)

(declare-fun e!4484279 () Bool)

(declare-fun tp!2185299 () Bool)

(assert (=> b!7522604 (= e!4484279 tp!2185299)))

(assert (=> b!7522359 (= tp!2185235 e!4484279)))

(declare-fun b!7522603 () Bool)

(declare-fun tp!2185298 () Bool)

(declare-fun tp!2185295 () Bool)

(assert (=> b!7522603 (= e!4484279 (and tp!2185298 tp!2185295))))

(declare-fun b!7522602 () Bool)

(assert (=> b!7522602 (= e!4484279 tp_is_empty!49933)))

(declare-fun b!7522605 () Bool)

(declare-fun tp!2185296 () Bool)

(declare-fun tp!2185297 () Bool)

(assert (=> b!7522605 (= e!4484279 (and tp!2185296 tp!2185297))))

(assert (= (and b!7522359 ((_ is ElementMatch!19789) (reg!20118 expr!41))) b!7522602))

(assert (= (and b!7522359 ((_ is Concat!28634) (reg!20118 expr!41))) b!7522603))

(assert (= (and b!7522359 ((_ is Star!19789) (reg!20118 expr!41))) b!7522604))

(assert (= (and b!7522359 ((_ is Union!19789) (reg!20118 expr!41))) b!7522605))

(check-sat (not bm!689900) (not b!7522580) (not b!7522575) (not b!7522605) (not bm!689933) (not b!7522596) (not b!7522576) (not b!7522603) (not bm!689892) (not b!7522604) (not bm!689906) (not bm!689903) (not bm!689894) (not b!7522546) (not b!7522579) (not bm!689891) (not b!7522577) (not b!7522595) (not bm!689901) (not bm!689934) (not bm!689895) (not b!7522581) tp_is_empty!49933 (not b!7522597) (not bm!689904) (not bm!689897) (not b!7522588) (not b!7522587) (not b!7522589))
(check-sat)
