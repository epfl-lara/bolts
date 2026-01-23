; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81924 () Bool)

(assert start!81924)

(declare-fun b!911032 () Bool)

(assert (=> b!911032 true))

(assert (=> b!911032 true))

(declare-fun lambda!29038 () Int)

(declare-fun lambda!29037 () Int)

(assert (=> b!911032 (not (= lambda!29038 lambda!29037))))

(assert (=> b!911032 true))

(assert (=> b!911032 true))

(declare-fun b!911024 () Bool)

(declare-fun e!594315 () Bool)

(declare-fun tp!284876 () Bool)

(declare-fun tp!284877 () Bool)

(assert (=> b!911024 (= e!594315 (and tp!284876 tp!284877))))

(declare-fun b!911025 () Bool)

(declare-fun res!414273 () Bool)

(declare-fun e!594314 () Bool)

(assert (=> b!911025 (=> res!414273 e!594314)))

(declare-datatypes ((C!5426 0))(
  ( (C!5427 (val!2961 Int)) )
))
(declare-datatypes ((List!9658 0))(
  ( (Nil!9642) (Cons!9642 (h!15043 C!5426) (t!100704 List!9658)) )
))
(declare-datatypes ((tuple2!10846 0))(
  ( (tuple2!10847 (_1!6249 List!9658) (_2!6249 List!9658)) )
))
(declare-datatypes ((Option!2065 0))(
  ( (None!2064) (Some!2064 (v!19481 tuple2!10846)) )
))
(declare-fun lt!336618 () Option!2065)

(declare-fun isEmpty!5859 (Option!2065) Bool)

(assert (=> b!911025 (= res!414273 (not (isEmpty!5859 lt!336618)))))

(declare-fun b!911026 () Bool)

(declare-fun tp_is_empty!4499 () Bool)

(assert (=> b!911026 (= e!594315 tp_is_empty!4499)))

(declare-fun b!911027 () Bool)

(declare-fun e!594312 () Bool)

(declare-datatypes ((Regex!2428 0))(
  ( (ElementMatch!2428 (c!147589 C!5426)) (Concat!4261 (regOne!5368 Regex!2428) (regTwo!5368 Regex!2428)) (EmptyExpr!2428) (Star!2428 (reg!2757 Regex!2428)) (EmptyLang!2428) (Union!2428 (regOne!5369 Regex!2428) (regTwo!5369 Regex!2428)) )
))
(declare-fun r!15766 () Regex!2428)

(declare-fun validRegex!897 (Regex!2428) Bool)

(assert (=> b!911027 (= e!594312 (validRegex!897 (regOne!5368 r!15766)))))

(declare-fun b!911028 () Bool)

(declare-fun tp!284875 () Bool)

(assert (=> b!911028 (= e!594315 tp!284875)))

(declare-fun b!911029 () Bool)

(declare-fun tp!284873 () Bool)

(declare-fun tp!284874 () Bool)

(assert (=> b!911029 (= e!594315 (and tp!284873 tp!284874))))

(declare-fun b!911030 () Bool)

(assert (=> b!911030 (= e!594314 e!594312)))

(declare-fun res!414272 () Bool)

(assert (=> b!911030 (=> res!414272 e!594312)))

(declare-fun lt!336621 () Bool)

(assert (=> b!911030 (= res!414272 (not lt!336621))))

(declare-fun lt!336614 () Bool)

(assert (=> b!911030 (= lt!336614 lt!336621)))

(declare-fun lt!336617 () Regex!2428)

(declare-fun s!10566 () List!9658)

(declare-fun matchR!966 (Regex!2428 List!9658) Bool)

(assert (=> b!911030 (= lt!336621 (matchR!966 lt!336617 s!10566))))

(assert (=> b!911030 (= lt!336614 (matchR!966 (regOne!5368 r!15766) s!10566))))

(declare-fun removeUselessConcat!113 (Regex!2428) Regex!2428)

(assert (=> b!911030 (= lt!336617 (removeUselessConcat!113 (regOne!5368 r!15766)))))

(declare-datatypes ((Unit!14475 0))(
  ( (Unit!14476) )
))
(declare-fun lt!336616 () Unit!14475)

(declare-fun lemmaRemoveUselessConcatSound!99 (Regex!2428 List!9658) Unit!14475)

(assert (=> b!911030 (= lt!336616 (lemmaRemoveUselessConcatSound!99 (regOne!5368 r!15766) s!10566))))

(declare-fun b!911031 () Bool)

(declare-fun e!594313 () Bool)

(declare-fun e!594311 () Bool)

(assert (=> b!911031 (= e!594313 (not e!594311))))

(declare-fun res!414275 () Bool)

(assert (=> b!911031 (=> res!414275 e!594311)))

(declare-fun lt!336619 () Bool)

(assert (=> b!911031 (= res!414275 (or lt!336619 (and (is-Concat!4261 r!15766) (is-EmptyExpr!2428 (regOne!5368 r!15766))) (not (is-Concat!4261 r!15766)) (not (is-EmptyExpr!2428 (regTwo!5368 r!15766)))))))

(declare-fun matchRSpec!229 (Regex!2428 List!9658) Bool)

(assert (=> b!911031 (= lt!336619 (matchRSpec!229 r!15766 s!10566))))

(assert (=> b!911031 (= lt!336619 (matchR!966 r!15766 s!10566))))

(declare-fun lt!336622 () Unit!14475)

(declare-fun mainMatchTheorem!229 (Regex!2428 List!9658) Unit!14475)

(assert (=> b!911031 (= lt!336622 (mainMatchTheorem!229 r!15766 s!10566))))

(assert (=> b!911032 (= e!594311 e!594314)))

(declare-fun res!414271 () Bool)

(assert (=> b!911032 (=> res!414271 e!594314)))

(declare-fun isEmpty!5860 (List!9658) Bool)

(assert (=> b!911032 (= res!414271 (isEmpty!5860 s!10566))))

(declare-fun Exists!201 (Int) Bool)

(assert (=> b!911032 (= (Exists!201 lambda!29037) (Exists!201 lambda!29038))))

(declare-fun lt!336620 () Unit!14475)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!115 (Regex!2428 Regex!2428 List!9658) Unit!14475)

(assert (=> b!911032 (= lt!336620 (lemmaExistCutMatchRandMatchRSpecEquivalent!115 (regOne!5368 r!15766) EmptyExpr!2428 s!10566))))

(declare-fun isDefined!1707 (Option!2065) Bool)

(assert (=> b!911032 (= (isDefined!1707 lt!336618) (Exists!201 lambda!29037))))

(declare-fun findConcatSeparation!171 (Regex!2428 Regex!2428 List!9658 List!9658 List!9658) Option!2065)

(assert (=> b!911032 (= lt!336618 (findConcatSeparation!171 (regOne!5368 r!15766) EmptyExpr!2428 Nil!9642 s!10566 s!10566))))

(declare-fun lt!336615 () Unit!14475)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!171 (Regex!2428 Regex!2428 List!9658) Unit!14475)

(assert (=> b!911032 (= lt!336615 (lemmaFindConcatSeparationEquivalentToExists!171 (regOne!5368 r!15766) EmptyExpr!2428 s!10566))))

(declare-fun res!414274 () Bool)

(assert (=> start!81924 (=> (not res!414274) (not e!594313))))

(assert (=> start!81924 (= res!414274 (validRegex!897 r!15766))))

(assert (=> start!81924 e!594313))

(assert (=> start!81924 e!594315))

(declare-fun e!594310 () Bool)

(assert (=> start!81924 e!594310))

(declare-fun b!911033 () Bool)

(declare-fun tp!284878 () Bool)

(assert (=> b!911033 (= e!594310 (and tp_is_empty!4499 tp!284878))))

(assert (= (and start!81924 res!414274) b!911031))

(assert (= (and b!911031 (not res!414275)) b!911032))

(assert (= (and b!911032 (not res!414271)) b!911025))

(assert (= (and b!911025 (not res!414273)) b!911030))

(assert (= (and b!911030 (not res!414272)) b!911027))

(assert (= (and start!81924 (is-ElementMatch!2428 r!15766)) b!911026))

(assert (= (and start!81924 (is-Concat!4261 r!15766)) b!911029))

(assert (= (and start!81924 (is-Star!2428 r!15766)) b!911028))

(assert (= (and start!81924 (is-Union!2428 r!15766)) b!911024))

(assert (= (and start!81924 (is-Cons!9642 s!10566)) b!911033))

(declare-fun m!1143253 () Bool)

(assert (=> b!911032 m!1143253))

(declare-fun m!1143255 () Bool)

(assert (=> b!911032 m!1143255))

(declare-fun m!1143257 () Bool)

(assert (=> b!911032 m!1143257))

(assert (=> b!911032 m!1143257))

(declare-fun m!1143259 () Bool)

(assert (=> b!911032 m!1143259))

(declare-fun m!1143261 () Bool)

(assert (=> b!911032 m!1143261))

(declare-fun m!1143263 () Bool)

(assert (=> b!911032 m!1143263))

(declare-fun m!1143265 () Bool)

(assert (=> b!911032 m!1143265))

(declare-fun m!1143267 () Bool)

(assert (=> start!81924 m!1143267))

(declare-fun m!1143269 () Bool)

(assert (=> b!911031 m!1143269))

(declare-fun m!1143271 () Bool)

(assert (=> b!911031 m!1143271))

(declare-fun m!1143273 () Bool)

(assert (=> b!911031 m!1143273))

(declare-fun m!1143275 () Bool)

(assert (=> b!911025 m!1143275))

(declare-fun m!1143277 () Bool)

(assert (=> b!911027 m!1143277))

(declare-fun m!1143279 () Bool)

(assert (=> b!911030 m!1143279))

(declare-fun m!1143281 () Bool)

(assert (=> b!911030 m!1143281))

(declare-fun m!1143283 () Bool)

(assert (=> b!911030 m!1143283))

(declare-fun m!1143285 () Bool)

(assert (=> b!911030 m!1143285))

(push 1)

(assert (not start!81924))

(assert (not b!911033))

(assert (not b!911031))

(assert (not b!911032))

(assert (not b!911029))

(assert (not b!911027))

(assert (not b!911028))

(assert (not b!911025))

(assert (not b!911024))

(assert tp_is_empty!4499)

(assert (not b!911030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!911130 () Bool)

(declare-fun res!414333 () Bool)

(declare-fun e!594369 () Bool)

(assert (=> b!911130 (=> (not res!414333) (not e!594369))))

(declare-fun tail!1183 (List!9658) List!9658)

(assert (=> b!911130 (= res!414333 (isEmpty!5860 (tail!1183 s!10566)))))

(declare-fun b!911131 () Bool)

(declare-fun e!594373 () Bool)

(declare-fun derivativeStep!468 (Regex!2428 C!5426) Regex!2428)

(declare-fun head!1621 (List!9658) C!5426)

(assert (=> b!911131 (= e!594373 (matchR!966 (derivativeStep!468 lt!336617 (head!1621 s!10566)) (tail!1183 s!10566)))))

(declare-fun b!911132 () Bool)

(assert (=> b!911132 (= e!594369 (= (head!1621 s!10566) (c!147589 lt!336617)))))

(declare-fun b!911133 () Bool)

(declare-fun e!594371 () Bool)

(declare-fun e!594374 () Bool)

(assert (=> b!911133 (= e!594371 e!594374)))

(declare-fun c!147602 () Bool)

(assert (=> b!911133 (= c!147602 (is-EmptyLang!2428 lt!336617))))

(declare-fun b!911134 () Bool)

(declare-fun res!414334 () Bool)

(declare-fun e!594372 () Bool)

(assert (=> b!911134 (=> res!414334 e!594372)))

(assert (=> b!911134 (= res!414334 e!594369)))

(declare-fun res!414331 () Bool)

(assert (=> b!911134 (=> (not res!414331) (not e!594369))))

(declare-fun lt!336652 () Bool)

(assert (=> b!911134 (= res!414331 lt!336652)))

(declare-fun d!279318 () Bool)

(assert (=> d!279318 e!594371))

(declare-fun c!147603 () Bool)

(assert (=> d!279318 (= c!147603 (is-EmptyExpr!2428 lt!336617))))

(assert (=> d!279318 (= lt!336652 e!594373)))

(declare-fun c!147601 () Bool)

(assert (=> d!279318 (= c!147601 (isEmpty!5860 s!10566))))

(assert (=> d!279318 (validRegex!897 lt!336617)))

(assert (=> d!279318 (= (matchR!966 lt!336617 s!10566) lt!336652)))

(declare-fun b!911135 () Bool)

(declare-fun call!54770 () Bool)

(assert (=> b!911135 (= e!594371 (= lt!336652 call!54770))))

(declare-fun b!911136 () Bool)

(declare-fun nullable!658 (Regex!2428) Bool)

(assert (=> b!911136 (= e!594373 (nullable!658 lt!336617))))

(declare-fun b!911137 () Bool)

(declare-fun e!594368 () Bool)

(assert (=> b!911137 (= e!594372 e!594368)))

(declare-fun res!414330 () Bool)

(assert (=> b!911137 (=> (not res!414330) (not e!594368))))

(assert (=> b!911137 (= res!414330 (not lt!336652))))

(declare-fun b!911138 () Bool)

(declare-fun e!594370 () Bool)

(assert (=> b!911138 (= e!594370 (not (= (head!1621 s!10566) (c!147589 lt!336617))))))

(declare-fun b!911139 () Bool)

(assert (=> b!911139 (= e!594368 e!594370)))

(declare-fun res!414329 () Bool)

(assert (=> b!911139 (=> res!414329 e!594370)))

(assert (=> b!911139 (= res!414329 call!54770)))

(declare-fun bm!54765 () Bool)

(assert (=> bm!54765 (= call!54770 (isEmpty!5860 s!10566))))

(declare-fun b!911140 () Bool)

(declare-fun res!414336 () Bool)

(assert (=> b!911140 (=> res!414336 e!594372)))

(assert (=> b!911140 (= res!414336 (not (is-ElementMatch!2428 lt!336617)))))

(assert (=> b!911140 (= e!594374 e!594372)))

(declare-fun b!911141 () Bool)

(assert (=> b!911141 (= e!594374 (not lt!336652))))

(declare-fun b!911142 () Bool)

(declare-fun res!414332 () Bool)

(assert (=> b!911142 (=> res!414332 e!594370)))

(assert (=> b!911142 (= res!414332 (not (isEmpty!5860 (tail!1183 s!10566))))))

(declare-fun b!911143 () Bool)

(declare-fun res!414335 () Bool)

(assert (=> b!911143 (=> (not res!414335) (not e!594369))))

(assert (=> b!911143 (= res!414335 (not call!54770))))

(assert (= (and d!279318 c!147601) b!911136))

(assert (= (and d!279318 (not c!147601)) b!911131))

(assert (= (and d!279318 c!147603) b!911135))

(assert (= (and d!279318 (not c!147603)) b!911133))

(assert (= (and b!911133 c!147602) b!911141))

(assert (= (and b!911133 (not c!147602)) b!911140))

(assert (= (and b!911140 (not res!414336)) b!911134))

(assert (= (and b!911134 res!414331) b!911143))

(assert (= (and b!911143 res!414335) b!911130))

(assert (= (and b!911130 res!414333) b!911132))

(assert (= (and b!911134 (not res!414334)) b!911137))

(assert (= (and b!911137 res!414330) b!911139))

(assert (= (and b!911139 (not res!414329)) b!911142))

(assert (= (and b!911142 (not res!414332)) b!911138))

(assert (= (or b!911135 b!911139 b!911143) bm!54765))

(assert (=> d!279318 m!1143263))

(declare-fun m!1143321 () Bool)

(assert (=> d!279318 m!1143321))

(declare-fun m!1143323 () Bool)

(assert (=> b!911130 m!1143323))

(assert (=> b!911130 m!1143323))

(declare-fun m!1143325 () Bool)

(assert (=> b!911130 m!1143325))

(assert (=> b!911142 m!1143323))

(assert (=> b!911142 m!1143323))

(assert (=> b!911142 m!1143325))

(declare-fun m!1143327 () Bool)

(assert (=> b!911131 m!1143327))

(assert (=> b!911131 m!1143327))

(declare-fun m!1143329 () Bool)

(assert (=> b!911131 m!1143329))

(assert (=> b!911131 m!1143323))

(assert (=> b!911131 m!1143329))

(assert (=> b!911131 m!1143323))

(declare-fun m!1143331 () Bool)

(assert (=> b!911131 m!1143331))

(assert (=> bm!54765 m!1143263))

(declare-fun m!1143333 () Bool)

(assert (=> b!911136 m!1143333))

(assert (=> b!911138 m!1143327))

(assert (=> b!911132 m!1143327))

(assert (=> b!911030 d!279318))

(declare-fun b!911144 () Bool)

(declare-fun res!414341 () Bool)

(declare-fun e!594376 () Bool)

(assert (=> b!911144 (=> (not res!414341) (not e!594376))))

(assert (=> b!911144 (= res!414341 (isEmpty!5860 (tail!1183 s!10566)))))

(declare-fun b!911145 () Bool)

(declare-fun e!594380 () Bool)

(assert (=> b!911145 (= e!594380 (matchR!966 (derivativeStep!468 (regOne!5368 r!15766) (head!1621 s!10566)) (tail!1183 s!10566)))))

(declare-fun b!911146 () Bool)

(assert (=> b!911146 (= e!594376 (= (head!1621 s!10566) (c!147589 (regOne!5368 r!15766))))))

(declare-fun b!911147 () Bool)

(declare-fun e!594378 () Bool)

(declare-fun e!594381 () Bool)

(assert (=> b!911147 (= e!594378 e!594381)))

(declare-fun c!147605 () Bool)

(assert (=> b!911147 (= c!147605 (is-EmptyLang!2428 (regOne!5368 r!15766)))))

(declare-fun b!911148 () Bool)

(declare-fun res!414342 () Bool)

(declare-fun e!594379 () Bool)

(assert (=> b!911148 (=> res!414342 e!594379)))

(assert (=> b!911148 (= res!414342 e!594376)))

(declare-fun res!414339 () Bool)

(assert (=> b!911148 (=> (not res!414339) (not e!594376))))

(declare-fun lt!336653 () Bool)

(assert (=> b!911148 (= res!414339 lt!336653)))

(declare-fun d!279322 () Bool)

(assert (=> d!279322 e!594378))

(declare-fun c!147606 () Bool)

(assert (=> d!279322 (= c!147606 (is-EmptyExpr!2428 (regOne!5368 r!15766)))))

(assert (=> d!279322 (= lt!336653 e!594380)))

(declare-fun c!147604 () Bool)

(assert (=> d!279322 (= c!147604 (isEmpty!5860 s!10566))))

(assert (=> d!279322 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279322 (= (matchR!966 (regOne!5368 r!15766) s!10566) lt!336653)))

(declare-fun b!911149 () Bool)

(declare-fun call!54773 () Bool)

(assert (=> b!911149 (= e!594378 (= lt!336653 call!54773))))

(declare-fun b!911150 () Bool)

(assert (=> b!911150 (= e!594380 (nullable!658 (regOne!5368 r!15766)))))

(declare-fun b!911151 () Bool)

(declare-fun e!594375 () Bool)

(assert (=> b!911151 (= e!594379 e!594375)))

(declare-fun res!414338 () Bool)

(assert (=> b!911151 (=> (not res!414338) (not e!594375))))

(assert (=> b!911151 (= res!414338 (not lt!336653))))

(declare-fun b!911152 () Bool)

(declare-fun e!594377 () Bool)

(assert (=> b!911152 (= e!594377 (not (= (head!1621 s!10566) (c!147589 (regOne!5368 r!15766)))))))

(declare-fun b!911153 () Bool)

(assert (=> b!911153 (= e!594375 e!594377)))

(declare-fun res!414337 () Bool)

(assert (=> b!911153 (=> res!414337 e!594377)))

(assert (=> b!911153 (= res!414337 call!54773)))

(declare-fun bm!54768 () Bool)

(assert (=> bm!54768 (= call!54773 (isEmpty!5860 s!10566))))

(declare-fun b!911154 () Bool)

(declare-fun res!414344 () Bool)

(assert (=> b!911154 (=> res!414344 e!594379)))

(assert (=> b!911154 (= res!414344 (not (is-ElementMatch!2428 (regOne!5368 r!15766))))))

(assert (=> b!911154 (= e!594381 e!594379)))

(declare-fun b!911155 () Bool)

(assert (=> b!911155 (= e!594381 (not lt!336653))))

(declare-fun b!911156 () Bool)

(declare-fun res!414340 () Bool)

(assert (=> b!911156 (=> res!414340 e!594377)))

(assert (=> b!911156 (= res!414340 (not (isEmpty!5860 (tail!1183 s!10566))))))

(declare-fun b!911157 () Bool)

(declare-fun res!414343 () Bool)

(assert (=> b!911157 (=> (not res!414343) (not e!594376))))

(assert (=> b!911157 (= res!414343 (not call!54773))))

(assert (= (and d!279322 c!147604) b!911150))

(assert (= (and d!279322 (not c!147604)) b!911145))

(assert (= (and d!279322 c!147606) b!911149))

(assert (= (and d!279322 (not c!147606)) b!911147))

(assert (= (and b!911147 c!147605) b!911155))

(assert (= (and b!911147 (not c!147605)) b!911154))

(assert (= (and b!911154 (not res!414344)) b!911148))

(assert (= (and b!911148 res!414339) b!911157))

(assert (= (and b!911157 res!414343) b!911144))

(assert (= (and b!911144 res!414341) b!911146))

(assert (= (and b!911148 (not res!414342)) b!911151))

(assert (= (and b!911151 res!414338) b!911153))

(assert (= (and b!911153 (not res!414337)) b!911156))

(assert (= (and b!911156 (not res!414340)) b!911152))

(assert (= (or b!911149 b!911153 b!911157) bm!54768))

(assert (=> d!279322 m!1143263))

(assert (=> d!279322 m!1143277))

(assert (=> b!911144 m!1143323))

(assert (=> b!911144 m!1143323))

(assert (=> b!911144 m!1143325))

(assert (=> b!911156 m!1143323))

(assert (=> b!911156 m!1143323))

(assert (=> b!911156 m!1143325))

(assert (=> b!911145 m!1143327))

(assert (=> b!911145 m!1143327))

(declare-fun m!1143335 () Bool)

(assert (=> b!911145 m!1143335))

(assert (=> b!911145 m!1143323))

(assert (=> b!911145 m!1143335))

(assert (=> b!911145 m!1143323))

(declare-fun m!1143337 () Bool)

(assert (=> b!911145 m!1143337))

(assert (=> bm!54768 m!1143263))

(declare-fun m!1143339 () Bool)

(assert (=> b!911150 m!1143339))

(assert (=> b!911152 m!1143327))

(assert (=> b!911146 m!1143327))

(assert (=> b!911030 d!279322))

(declare-fun b!911189 () Bool)

(declare-fun c!147621 () Bool)

(assert (=> b!911189 (= c!147621 (is-Concat!4261 (regOne!5368 r!15766)))))

(declare-fun e!594401 () Regex!2428)

(declare-fun e!594402 () Regex!2428)

(assert (=> b!911189 (= e!594401 e!594402)))

(declare-fun b!911190 () Bool)

(declare-fun e!594406 () Regex!2428)

(assert (=> b!911190 (= e!594406 (regOne!5368 r!15766))))

(declare-fun b!911191 () Bool)

(declare-fun e!594405 () Regex!2428)

(assert (=> b!911191 (= e!594405 e!594401)))

(declare-fun c!147622 () Bool)

(assert (=> b!911191 (= c!147622 (and (is-Concat!4261 (regOne!5368 r!15766)) (is-EmptyExpr!2428 (regTwo!5368 (regOne!5368 r!15766)))))))

(declare-fun bm!54782 () Bool)

(declare-fun call!54791 () Regex!2428)

(declare-fun call!54789 () Regex!2428)

(assert (=> bm!54782 (= call!54791 call!54789)))

(declare-fun b!911192 () Bool)

(declare-fun e!594403 () Regex!2428)

(assert (=> b!911192 (= e!594402 e!594403)))

(declare-fun c!147620 () Bool)

(assert (=> b!911192 (= c!147620 (is-Union!2428 (regOne!5368 r!15766)))))

(declare-fun d!279324 () Bool)

(declare-fun e!594404 () Bool)

(assert (=> d!279324 e!594404))

(declare-fun res!414352 () Bool)

(assert (=> d!279324 (=> (not res!414352) (not e!594404))))

(declare-fun lt!336656 () Regex!2428)

(assert (=> d!279324 (= res!414352 (validRegex!897 lt!336656))))

(assert (=> d!279324 (= lt!336656 e!594405)))

(declare-fun c!147619 () Bool)

(assert (=> d!279324 (= c!147619 (and (is-Concat!4261 (regOne!5368 r!15766)) (is-EmptyExpr!2428 (regOne!5368 (regOne!5368 r!15766)))))))

(assert (=> d!279324 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279324 (= (removeUselessConcat!113 (regOne!5368 r!15766)) lt!336656)))

(declare-fun b!911193 () Bool)

(assert (=> b!911193 (= e!594405 call!54789)))

(declare-fun b!911194 () Bool)

(assert (=> b!911194 (= e!594404 (= (nullable!658 lt!336656) (nullable!658 (regOne!5368 r!15766))))))

(declare-fun b!911195 () Bool)

(declare-fun call!54787 () Regex!2428)

(assert (=> b!911195 (= e!594402 (Concat!4261 call!54787 call!54791))))

(declare-fun call!54788 () Regex!2428)

(declare-fun bm!54783 () Bool)

(assert (=> bm!54783 (= call!54788 (removeUselessConcat!113 (ite (or c!147622 c!147621) (regOne!5368 (regOne!5368 r!15766)) (regOne!5369 (regOne!5368 r!15766)))))))

(declare-fun b!911196 () Bool)

(declare-fun call!54790 () Regex!2428)

(assert (=> b!911196 (= e!594403 (Union!2428 call!54787 call!54790))))

(declare-fun b!911197 () Bool)

(assert (=> b!911197 (= e!594406 (Star!2428 call!54790))))

(declare-fun b!911198 () Bool)

(declare-fun c!147623 () Bool)

(assert (=> b!911198 (= c!147623 (is-Star!2428 (regOne!5368 r!15766)))))

(assert (=> b!911198 (= e!594403 e!594406)))

(declare-fun b!911199 () Bool)

(assert (=> b!911199 (= e!594401 call!54788)))

(declare-fun bm!54784 () Bool)

(assert (=> bm!54784 (= call!54789 (removeUselessConcat!113 (ite (or c!147619 c!147621) (regTwo!5368 (regOne!5368 r!15766)) (ite c!147620 (regTwo!5369 (regOne!5368 r!15766)) (reg!2757 (regOne!5368 r!15766))))))))

(declare-fun bm!54785 () Bool)

(assert (=> bm!54785 (= call!54790 call!54791)))

(declare-fun bm!54786 () Bool)

(assert (=> bm!54786 (= call!54787 call!54788)))

(assert (= (and d!279324 c!147619) b!911193))

(assert (= (and d!279324 (not c!147619)) b!911191))

(assert (= (and b!911191 c!147622) b!911199))

(assert (= (and b!911191 (not c!147622)) b!911189))

(assert (= (and b!911189 c!147621) b!911195))

(assert (= (and b!911189 (not c!147621)) b!911192))

(assert (= (and b!911192 c!147620) b!911196))

(assert (= (and b!911192 (not c!147620)) b!911198))

(assert (= (and b!911198 c!147623) b!911197))

(assert (= (and b!911198 (not c!147623)) b!911190))

(assert (= (or b!911196 b!911197) bm!54785))

(assert (= (or b!911195 bm!54785) bm!54782))

(assert (= (or b!911195 b!911196) bm!54786))

(assert (= (or b!911199 bm!54786) bm!54783))

(assert (= (or b!911193 bm!54782) bm!54784))

(assert (= (and d!279324 res!414352) b!911194))

(declare-fun m!1143347 () Bool)

(assert (=> d!279324 m!1143347))

(assert (=> d!279324 m!1143277))

(declare-fun m!1143349 () Bool)

(assert (=> b!911194 m!1143349))

(assert (=> b!911194 m!1143339))

(declare-fun m!1143351 () Bool)

(assert (=> bm!54783 m!1143351))

(declare-fun m!1143353 () Bool)

(assert (=> bm!54784 m!1143353))

(assert (=> b!911030 d!279324))

(declare-fun d!279328 () Bool)

(assert (=> d!279328 (= (matchR!966 (regOne!5368 r!15766) s!10566) (matchR!966 (removeUselessConcat!113 (regOne!5368 r!15766)) s!10566))))

(declare-fun lt!336659 () Unit!14475)

(declare-fun choose!5537 (Regex!2428 List!9658) Unit!14475)

(assert (=> d!279328 (= lt!336659 (choose!5537 (regOne!5368 r!15766) s!10566))))

(assert (=> d!279328 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279328 (= (lemmaRemoveUselessConcatSound!99 (regOne!5368 r!15766) s!10566) lt!336659)))

(declare-fun bs!235772 () Bool)

(assert (= bs!235772 d!279328))

(assert (=> bs!235772 m!1143283))

(declare-fun m!1143355 () Bool)

(assert (=> bs!235772 m!1143355))

(declare-fun m!1143357 () Bool)

(assert (=> bs!235772 m!1143357))

(assert (=> bs!235772 m!1143283))

(assert (=> bs!235772 m!1143277))

(assert (=> bs!235772 m!1143281))

(assert (=> b!911030 d!279328))

(declare-fun d!279330 () Bool)

(assert (=> d!279330 (= (isEmpty!5859 lt!336618) (not (is-Some!2064 lt!336618)))))

(assert (=> b!911025 d!279330))

(declare-fun bs!235773 () Bool)

(declare-fun b!911262 () Bool)

(assert (= bs!235773 (and b!911262 b!911032)))

(declare-fun lambda!29051 () Int)

(assert (=> bs!235773 (not (= lambda!29051 lambda!29037))))

(assert (=> bs!235773 (not (= lambda!29051 lambda!29038))))

(assert (=> b!911262 true))

(assert (=> b!911262 true))

(declare-fun bs!235774 () Bool)

(declare-fun b!911264 () Bool)

(assert (= bs!235774 (and b!911264 b!911032)))

(declare-fun lambda!29052 () Int)

(assert (=> bs!235774 (not (= lambda!29052 lambda!29037))))

(assert (=> bs!235774 (= (= (regTwo!5368 r!15766) EmptyExpr!2428) (= lambda!29052 lambda!29038))))

(declare-fun bs!235775 () Bool)

(assert (= bs!235775 (and b!911264 b!911262)))

(assert (=> bs!235775 (not (= lambda!29052 lambda!29051))))

(assert (=> b!911264 true))

(assert (=> b!911264 true))

(declare-fun b!911260 () Bool)

(declare-fun c!147639 () Bool)

(assert (=> b!911260 (= c!147639 (is-Union!2428 r!15766))))

(declare-fun e!594444 () Bool)

(declare-fun e!594443 () Bool)

(assert (=> b!911260 (= e!594444 e!594443)))

(declare-fun b!911261 () Bool)

(declare-fun c!147641 () Bool)

(assert (=> b!911261 (= c!147641 (is-ElementMatch!2428 r!15766))))

(declare-fun e!594440 () Bool)

(assert (=> b!911261 (= e!594440 e!594444)))

(declare-fun d!279332 () Bool)

(declare-fun c!147640 () Bool)

(assert (=> d!279332 (= c!147640 (is-EmptyExpr!2428 r!15766))))

(declare-fun e!594439 () Bool)

(assert (=> d!279332 (= (matchRSpec!229 r!15766 s!10566) e!594439)))

(declare-fun e!594442 () Bool)

(declare-fun call!54798 () Bool)

(assert (=> b!911262 (= e!594442 call!54798)))

(declare-fun bm!54793 () Bool)

(declare-fun call!54799 () Bool)

(assert (=> bm!54793 (= call!54799 (isEmpty!5860 s!10566))))

(declare-fun b!911263 () Bool)

(declare-fun e!594441 () Bool)

(assert (=> b!911263 (= e!594443 e!594441)))

(declare-fun res!414386 () Bool)

(assert (=> b!911263 (= res!414386 (matchRSpec!229 (regOne!5369 r!15766) s!10566))))

(assert (=> b!911263 (=> res!414386 e!594441)))

(declare-fun e!594445 () Bool)

(assert (=> b!911264 (= e!594445 call!54798)))

(declare-fun b!911265 () Bool)

(assert (=> b!911265 (= e!594439 e!594440)))

(declare-fun res!414387 () Bool)

(assert (=> b!911265 (= res!414387 (not (is-EmptyLang!2428 r!15766)))))

(assert (=> b!911265 (=> (not res!414387) (not e!594440))))

(declare-fun b!911266 () Bool)

(assert (=> b!911266 (= e!594441 (matchRSpec!229 (regTwo!5369 r!15766) s!10566))))

(declare-fun b!911267 () Bool)

(assert (=> b!911267 (= e!594444 (= s!10566 (Cons!9642 (c!147589 r!15766) Nil!9642)))))

(declare-fun c!147638 () Bool)

(declare-fun bm!54794 () Bool)

(assert (=> bm!54794 (= call!54798 (Exists!201 (ite c!147638 lambda!29051 lambda!29052)))))

(declare-fun b!911268 () Bool)

(declare-fun res!414385 () Bool)

(assert (=> b!911268 (=> res!414385 e!594442)))

(assert (=> b!911268 (= res!414385 call!54799)))

(assert (=> b!911268 (= e!594445 e!594442)))

(declare-fun b!911269 () Bool)

(assert (=> b!911269 (= e!594443 e!594445)))

(assert (=> b!911269 (= c!147638 (is-Star!2428 r!15766))))

(declare-fun b!911270 () Bool)

(assert (=> b!911270 (= e!594439 call!54799)))

(assert (= (and d!279332 c!147640) b!911270))

(assert (= (and d!279332 (not c!147640)) b!911265))

(assert (= (and b!911265 res!414387) b!911261))

(assert (= (and b!911261 c!147641) b!911267))

(assert (= (and b!911261 (not c!147641)) b!911260))

(assert (= (and b!911260 c!147639) b!911263))

(assert (= (and b!911260 (not c!147639)) b!911269))

(assert (= (and b!911263 (not res!414386)) b!911266))

(assert (= (and b!911269 c!147638) b!911268))

(assert (= (and b!911269 (not c!147638)) b!911264))

(assert (= (and b!911268 (not res!414385)) b!911262))

(assert (= (or b!911262 b!911264) bm!54794))

(assert (= (or b!911270 b!911268) bm!54793))

(assert (=> bm!54793 m!1143263))

(declare-fun m!1143359 () Bool)

(assert (=> b!911263 m!1143359))

(declare-fun m!1143361 () Bool)

(assert (=> b!911266 m!1143361))

(declare-fun m!1143363 () Bool)

(assert (=> bm!54794 m!1143363))

(assert (=> b!911031 d!279332))

(declare-fun b!911285 () Bool)

(declare-fun res!414400 () Bool)

(declare-fun e!594454 () Bool)

(assert (=> b!911285 (=> (not res!414400) (not e!594454))))

(assert (=> b!911285 (= res!414400 (isEmpty!5860 (tail!1183 s!10566)))))

(declare-fun b!911286 () Bool)

(declare-fun e!594458 () Bool)

(assert (=> b!911286 (= e!594458 (matchR!966 (derivativeStep!468 r!15766 (head!1621 s!10566)) (tail!1183 s!10566)))))

(declare-fun b!911287 () Bool)

(assert (=> b!911287 (= e!594454 (= (head!1621 s!10566) (c!147589 r!15766)))))

(declare-fun b!911288 () Bool)

(declare-fun e!594456 () Bool)

(declare-fun e!594459 () Bool)

(assert (=> b!911288 (= e!594456 e!594459)))

(declare-fun c!147646 () Bool)

(assert (=> b!911288 (= c!147646 (is-EmptyLang!2428 r!15766))))

(declare-fun b!911289 () Bool)

(declare-fun res!414401 () Bool)

(declare-fun e!594457 () Bool)

(assert (=> b!911289 (=> res!414401 e!594457)))

(assert (=> b!911289 (= res!414401 e!594454)))

(declare-fun res!414398 () Bool)

(assert (=> b!911289 (=> (not res!414398) (not e!594454))))

(declare-fun lt!336663 () Bool)

(assert (=> b!911289 (= res!414398 lt!336663)))

(declare-fun d!279334 () Bool)

(assert (=> d!279334 e!594456))

(declare-fun c!147647 () Bool)

(assert (=> d!279334 (= c!147647 (is-EmptyExpr!2428 r!15766))))

(assert (=> d!279334 (= lt!336663 e!594458)))

(declare-fun c!147645 () Bool)

(assert (=> d!279334 (= c!147645 (isEmpty!5860 s!10566))))

(assert (=> d!279334 (validRegex!897 r!15766)))

(assert (=> d!279334 (= (matchR!966 r!15766 s!10566) lt!336663)))

(declare-fun b!911290 () Bool)

(declare-fun call!54801 () Bool)

(assert (=> b!911290 (= e!594456 (= lt!336663 call!54801))))

(declare-fun b!911291 () Bool)

(assert (=> b!911291 (= e!594458 (nullable!658 r!15766))))

(declare-fun b!911292 () Bool)

(declare-fun e!594453 () Bool)

(assert (=> b!911292 (= e!594457 e!594453)))

(declare-fun res!414397 () Bool)

(assert (=> b!911292 (=> (not res!414397) (not e!594453))))

(assert (=> b!911292 (= res!414397 (not lt!336663))))

(declare-fun b!911293 () Bool)

(declare-fun e!594455 () Bool)

(assert (=> b!911293 (= e!594455 (not (= (head!1621 s!10566) (c!147589 r!15766))))))

(declare-fun b!911294 () Bool)

(assert (=> b!911294 (= e!594453 e!594455)))

(declare-fun res!414396 () Bool)

(assert (=> b!911294 (=> res!414396 e!594455)))

(assert (=> b!911294 (= res!414396 call!54801)))

(declare-fun bm!54796 () Bool)

(assert (=> bm!54796 (= call!54801 (isEmpty!5860 s!10566))))

(declare-fun b!911295 () Bool)

(declare-fun res!414403 () Bool)

(assert (=> b!911295 (=> res!414403 e!594457)))

(assert (=> b!911295 (= res!414403 (not (is-ElementMatch!2428 r!15766)))))

(assert (=> b!911295 (= e!594459 e!594457)))

(declare-fun b!911296 () Bool)

(assert (=> b!911296 (= e!594459 (not lt!336663))))

(declare-fun b!911297 () Bool)

(declare-fun res!414399 () Bool)

(assert (=> b!911297 (=> res!414399 e!594455)))

(assert (=> b!911297 (= res!414399 (not (isEmpty!5860 (tail!1183 s!10566))))))

(declare-fun b!911298 () Bool)

(declare-fun res!414402 () Bool)

(assert (=> b!911298 (=> (not res!414402) (not e!594454))))

(assert (=> b!911298 (= res!414402 (not call!54801))))

(assert (= (and d!279334 c!147645) b!911291))

(assert (= (and d!279334 (not c!147645)) b!911286))

(assert (= (and d!279334 c!147647) b!911290))

(assert (= (and d!279334 (not c!147647)) b!911288))

(assert (= (and b!911288 c!147646) b!911296))

(assert (= (and b!911288 (not c!147646)) b!911295))

(assert (= (and b!911295 (not res!414403)) b!911289))

(assert (= (and b!911289 res!414398) b!911298))

(assert (= (and b!911298 res!414402) b!911285))

(assert (= (and b!911285 res!414400) b!911287))

(assert (= (and b!911289 (not res!414401)) b!911292))

(assert (= (and b!911292 res!414397) b!911294))

(assert (= (and b!911294 (not res!414396)) b!911297))

(assert (= (and b!911297 (not res!414399)) b!911293))

(assert (= (or b!911290 b!911294 b!911298) bm!54796))

(assert (=> d!279334 m!1143263))

(assert (=> d!279334 m!1143267))

(assert (=> b!911285 m!1143323))

(assert (=> b!911285 m!1143323))

(assert (=> b!911285 m!1143325))

(assert (=> b!911297 m!1143323))

(assert (=> b!911297 m!1143323))

(assert (=> b!911297 m!1143325))

(assert (=> b!911286 m!1143327))

(assert (=> b!911286 m!1143327))

(declare-fun m!1143365 () Bool)

(assert (=> b!911286 m!1143365))

(assert (=> b!911286 m!1143323))

(assert (=> b!911286 m!1143365))

(assert (=> b!911286 m!1143323))

(declare-fun m!1143367 () Bool)

(assert (=> b!911286 m!1143367))

(assert (=> bm!54796 m!1143263))

(declare-fun m!1143369 () Bool)

(assert (=> b!911291 m!1143369))

(assert (=> b!911293 m!1143327))

(assert (=> b!911287 m!1143327))

(assert (=> b!911031 d!279334))

(declare-fun d!279336 () Bool)

(assert (=> d!279336 (= (matchR!966 r!15766 s!10566) (matchRSpec!229 r!15766 s!10566))))

(declare-fun lt!336667 () Unit!14475)

(declare-fun choose!5538 (Regex!2428 List!9658) Unit!14475)

(assert (=> d!279336 (= lt!336667 (choose!5538 r!15766 s!10566))))

(assert (=> d!279336 (validRegex!897 r!15766)))

(assert (=> d!279336 (= (mainMatchTheorem!229 r!15766 s!10566) lt!336667)))

(declare-fun bs!235776 () Bool)

(assert (= bs!235776 d!279336))

(assert (=> bs!235776 m!1143271))

(assert (=> bs!235776 m!1143269))

(declare-fun m!1143389 () Bool)

(assert (=> bs!235776 m!1143389))

(assert (=> bs!235776 m!1143267))

(assert (=> b!911031 d!279336))

(declare-fun b!911351 () Bool)

(declare-fun res!414423 () Bool)

(declare-fun e!594487 () Bool)

(assert (=> b!911351 (=> (not res!414423) (not e!594487))))

(declare-fun lt!336676 () Option!2065)

(declare-fun get!3108 (Option!2065) tuple2!10846)

(assert (=> b!911351 (= res!414423 (matchR!966 EmptyExpr!2428 (_2!6249 (get!3108 lt!336676))))))

(declare-fun b!911352 () Bool)

(declare-fun lt!336678 () Unit!14475)

(declare-fun lt!336677 () Unit!14475)

(assert (=> b!911352 (= lt!336678 lt!336677)))

(declare-fun ++!2536 (List!9658 List!9658) List!9658)

(assert (=> b!911352 (= (++!2536 (++!2536 Nil!9642 (Cons!9642 (h!15043 s!10566) Nil!9642)) (t!100704 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!153 (List!9658 C!5426 List!9658 List!9658) Unit!14475)

(assert (=> b!911352 (= lt!336677 (lemmaMoveElementToOtherListKeepsConcatEq!153 Nil!9642 (h!15043 s!10566) (t!100704 s!10566) s!10566))))

(declare-fun e!594490 () Option!2065)

(assert (=> b!911352 (= e!594490 (findConcatSeparation!171 (regOne!5368 r!15766) EmptyExpr!2428 (++!2536 Nil!9642 (Cons!9642 (h!15043 s!10566) Nil!9642)) (t!100704 s!10566) s!10566))))

(declare-fun b!911353 () Bool)

(declare-fun e!594489 () Bool)

(assert (=> b!911353 (= e!594489 (matchR!966 EmptyExpr!2428 s!10566))))

(declare-fun d!279340 () Bool)

(declare-fun e!594491 () Bool)

(assert (=> d!279340 e!594491))

(declare-fun res!414426 () Bool)

(assert (=> d!279340 (=> res!414426 e!594491)))

(assert (=> d!279340 (= res!414426 e!594487)))

(declare-fun res!414422 () Bool)

(assert (=> d!279340 (=> (not res!414422) (not e!594487))))

(assert (=> d!279340 (= res!414422 (isDefined!1707 lt!336676))))

(declare-fun e!594488 () Option!2065)

(assert (=> d!279340 (= lt!336676 e!594488)))

(declare-fun c!147666 () Bool)

(assert (=> d!279340 (= c!147666 e!594489)))

(declare-fun res!414424 () Bool)

(assert (=> d!279340 (=> (not res!414424) (not e!594489))))

(assert (=> d!279340 (= res!414424 (matchR!966 (regOne!5368 r!15766) Nil!9642))))

(assert (=> d!279340 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279340 (= (findConcatSeparation!171 (regOne!5368 r!15766) EmptyExpr!2428 Nil!9642 s!10566 s!10566) lt!336676)))

(declare-fun b!911354 () Bool)

(assert (=> b!911354 (= e!594487 (= (++!2536 (_1!6249 (get!3108 lt!336676)) (_2!6249 (get!3108 lt!336676))) s!10566))))

(declare-fun b!911355 () Bool)

(assert (=> b!911355 (= e!594491 (not (isDefined!1707 lt!336676)))))

(declare-fun b!911356 () Bool)

(assert (=> b!911356 (= e!594488 (Some!2064 (tuple2!10847 Nil!9642 s!10566)))))

(declare-fun b!911357 () Bool)

(assert (=> b!911357 (= e!594488 e!594490)))

(declare-fun c!147665 () Bool)

(assert (=> b!911357 (= c!147665 (is-Nil!9642 s!10566))))

(declare-fun b!911358 () Bool)

(declare-fun res!414425 () Bool)

(assert (=> b!911358 (=> (not res!414425) (not e!594487))))

(assert (=> b!911358 (= res!414425 (matchR!966 (regOne!5368 r!15766) (_1!6249 (get!3108 lt!336676))))))

(declare-fun b!911359 () Bool)

(assert (=> b!911359 (= e!594490 None!2064)))

(assert (= (and d!279340 res!414424) b!911353))

(assert (= (and d!279340 c!147666) b!911356))

(assert (= (and d!279340 (not c!147666)) b!911357))

(assert (= (and b!911357 c!147665) b!911359))

(assert (= (and b!911357 (not c!147665)) b!911352))

(assert (= (and d!279340 res!414422) b!911358))

(assert (= (and b!911358 res!414425) b!911351))

(assert (= (and b!911351 res!414423) b!911354))

(assert (= (and d!279340 (not res!414426)) b!911355))

(declare-fun m!1143393 () Bool)

(assert (=> b!911355 m!1143393))

(assert (=> d!279340 m!1143393))

(declare-fun m!1143395 () Bool)

(assert (=> d!279340 m!1143395))

(assert (=> d!279340 m!1143277))

(declare-fun m!1143397 () Bool)

(assert (=> b!911351 m!1143397))

(declare-fun m!1143399 () Bool)

(assert (=> b!911351 m!1143399))

(declare-fun m!1143401 () Bool)

(assert (=> b!911352 m!1143401))

(assert (=> b!911352 m!1143401))

(declare-fun m!1143403 () Bool)

(assert (=> b!911352 m!1143403))

(declare-fun m!1143405 () Bool)

(assert (=> b!911352 m!1143405))

(assert (=> b!911352 m!1143401))

(declare-fun m!1143407 () Bool)

(assert (=> b!911352 m!1143407))

(assert (=> b!911354 m!1143397))

(declare-fun m!1143409 () Bool)

(assert (=> b!911354 m!1143409))

(assert (=> b!911358 m!1143397))

(declare-fun m!1143411 () Bool)

(assert (=> b!911358 m!1143411))

(declare-fun m!1143413 () Bool)

(assert (=> b!911353 m!1143413))

(assert (=> b!911032 d!279340))

(declare-fun d!279344 () Bool)

(declare-fun choose!5539 (Int) Bool)

(assert (=> d!279344 (= (Exists!201 lambda!29037) (choose!5539 lambda!29037))))

(declare-fun bs!235777 () Bool)

(assert (= bs!235777 d!279344))

(declare-fun m!1143415 () Bool)

(assert (=> bs!235777 m!1143415))

(assert (=> b!911032 d!279344))

(declare-fun bs!235778 () Bool)

(declare-fun d!279346 () Bool)

(assert (= bs!235778 (and d!279346 b!911032)))

(declare-fun lambda!29055 () Int)

(assert (=> bs!235778 (= lambda!29055 lambda!29037)))

(assert (=> bs!235778 (not (= lambda!29055 lambda!29038))))

(declare-fun bs!235779 () Bool)

(assert (= bs!235779 (and d!279346 b!911262)))

(assert (=> bs!235779 (not (= lambda!29055 lambda!29051))))

(declare-fun bs!235780 () Bool)

(assert (= bs!235780 (and d!279346 b!911264)))

(assert (=> bs!235780 (not (= lambda!29055 lambda!29052))))

(assert (=> d!279346 true))

(assert (=> d!279346 true))

(assert (=> d!279346 true))

(assert (=> d!279346 (= (isDefined!1707 (findConcatSeparation!171 (regOne!5368 r!15766) EmptyExpr!2428 Nil!9642 s!10566 s!10566)) (Exists!201 lambda!29055))))

(declare-fun lt!336682 () Unit!14475)

(declare-fun choose!5540 (Regex!2428 Regex!2428 List!9658) Unit!14475)

(assert (=> d!279346 (= lt!336682 (choose!5540 (regOne!5368 r!15766) EmptyExpr!2428 s!10566))))

(assert (=> d!279346 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279346 (= (lemmaFindConcatSeparationEquivalentToExists!171 (regOne!5368 r!15766) EmptyExpr!2428 s!10566) lt!336682)))

(declare-fun bs!235781 () Bool)

(assert (= bs!235781 d!279346))

(assert (=> bs!235781 m!1143255))

(declare-fun m!1143425 () Bool)

(assert (=> bs!235781 m!1143425))

(assert (=> bs!235781 m!1143255))

(declare-fun m!1143427 () Bool)

(assert (=> bs!235781 m!1143427))

(assert (=> bs!235781 m!1143277))

(declare-fun m!1143429 () Bool)

(assert (=> bs!235781 m!1143429))

(assert (=> b!911032 d!279346))

(declare-fun d!279350 () Bool)

(assert (=> d!279350 (= (Exists!201 lambda!29038) (choose!5539 lambda!29038))))

(declare-fun bs!235782 () Bool)

(assert (= bs!235782 d!279350))

(declare-fun m!1143431 () Bool)

(assert (=> bs!235782 m!1143431))

(assert (=> b!911032 d!279350))

(declare-fun bs!235784 () Bool)

(declare-fun d!279352 () Bool)

(assert (= bs!235784 (and d!279352 b!911262)))

(declare-fun lambda!29060 () Int)

(assert (=> bs!235784 (not (= lambda!29060 lambda!29051))))

(declare-fun bs!235785 () Bool)

(assert (= bs!235785 (and d!279352 b!911032)))

(assert (=> bs!235785 (= lambda!29060 lambda!29037)))

(assert (=> bs!235785 (not (= lambda!29060 lambda!29038))))

(declare-fun bs!235786 () Bool)

(assert (= bs!235786 (and d!279352 b!911264)))

(assert (=> bs!235786 (not (= lambda!29060 lambda!29052))))

(declare-fun bs!235787 () Bool)

(assert (= bs!235787 (and d!279352 d!279346)))

(assert (=> bs!235787 (= lambda!29060 lambda!29055)))

(assert (=> d!279352 true))

(assert (=> d!279352 true))

(assert (=> d!279352 true))

(declare-fun lambda!29061 () Int)

(assert (=> bs!235784 (not (= lambda!29061 lambda!29051))))

(declare-fun bs!235788 () Bool)

(assert (= bs!235788 d!279352))

(assert (=> bs!235788 (not (= lambda!29061 lambda!29060))))

(assert (=> bs!235785 (not (= lambda!29061 lambda!29037))))

(assert (=> bs!235785 (= lambda!29061 lambda!29038)))

(assert (=> bs!235786 (= (= EmptyExpr!2428 (regTwo!5368 r!15766)) (= lambda!29061 lambda!29052))))

(assert (=> bs!235787 (not (= lambda!29061 lambda!29055))))

(assert (=> d!279352 true))

(assert (=> d!279352 true))

(assert (=> d!279352 true))

(assert (=> d!279352 (= (Exists!201 lambda!29060) (Exists!201 lambda!29061))))

(declare-fun lt!336688 () Unit!14475)

(declare-fun choose!5541 (Regex!2428 Regex!2428 List!9658) Unit!14475)

(assert (=> d!279352 (= lt!336688 (choose!5541 (regOne!5368 r!15766) EmptyExpr!2428 s!10566))))

(assert (=> d!279352 (validRegex!897 (regOne!5368 r!15766))))

(assert (=> d!279352 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!115 (regOne!5368 r!15766) EmptyExpr!2428 s!10566) lt!336688)))

(declare-fun m!1143443 () Bool)

(assert (=> bs!235788 m!1143443))

(declare-fun m!1143445 () Bool)

(assert (=> bs!235788 m!1143445))

(declare-fun m!1143447 () Bool)

(assert (=> bs!235788 m!1143447))

(assert (=> bs!235788 m!1143277))

(assert (=> b!911032 d!279352))

(declare-fun d!279360 () Bool)

(assert (=> d!279360 (= (isDefined!1707 lt!336618) (not (isEmpty!5859 lt!336618)))))

(declare-fun bs!235789 () Bool)

(assert (= bs!235789 d!279360))

(assert (=> bs!235789 m!1143275))

(assert (=> b!911032 d!279360))

(declare-fun d!279362 () Bool)

(assert (=> d!279362 (= (isEmpty!5860 s!10566) (is-Nil!9642 s!10566))))

(assert (=> b!911032 d!279362))

(declare-fun call!54828 () Bool)

(declare-fun c!147679 () Bool)

(declare-fun c!147678 () Bool)

(declare-fun bm!54822 () Bool)

(assert (=> bm!54822 (= call!54828 (validRegex!897 (ite c!147678 (reg!2757 (regOne!5368 r!15766)) (ite c!147679 (regOne!5369 (regOne!5368 r!15766)) (regOne!5368 (regOne!5368 r!15766))))))))

(declare-fun d!279364 () Bool)

(declare-fun res!414458 () Bool)

(declare-fun e!594530 () Bool)

(assert (=> d!279364 (=> res!414458 e!594530)))

(assert (=> d!279364 (= res!414458 (is-ElementMatch!2428 (regOne!5368 r!15766)))))

(assert (=> d!279364 (= (validRegex!897 (regOne!5368 r!15766)) e!594530)))

(declare-fun b!911412 () Bool)

(declare-fun e!594527 () Bool)

(declare-fun e!594528 () Bool)

(assert (=> b!911412 (= e!594527 e!594528)))

(declare-fun res!414457 () Bool)

(assert (=> b!911412 (=> (not res!414457) (not e!594528))))

(declare-fun call!54829 () Bool)

(assert (=> b!911412 (= res!414457 call!54829)))

(declare-fun b!911413 () Bool)

(declare-fun e!594533 () Bool)

(assert (=> b!911413 (= e!594533 call!54828)))

(declare-fun b!911414 () Bool)

(declare-fun e!594531 () Bool)

(declare-fun e!594532 () Bool)

(assert (=> b!911414 (= e!594531 e!594532)))

(assert (=> b!911414 (= c!147679 (is-Union!2428 (regOne!5368 r!15766)))))

(declare-fun b!911415 () Bool)

(declare-fun e!594529 () Bool)

(declare-fun call!54827 () Bool)

(assert (=> b!911415 (= e!594529 call!54827)))

(declare-fun bm!54823 () Bool)

(assert (=> bm!54823 (= call!54829 call!54828)))

(declare-fun b!911416 () Bool)

(declare-fun res!414459 () Bool)

(assert (=> b!911416 (=> (not res!414459) (not e!594529))))

(assert (=> b!911416 (= res!414459 call!54829)))

(assert (=> b!911416 (= e!594532 e!594529)))

(declare-fun b!911417 () Bool)

(declare-fun res!414461 () Bool)

(assert (=> b!911417 (=> res!414461 e!594527)))

(assert (=> b!911417 (= res!414461 (not (is-Concat!4261 (regOne!5368 r!15766))))))

(assert (=> b!911417 (= e!594532 e!594527)))

(declare-fun b!911418 () Bool)

(assert (=> b!911418 (= e!594531 e!594533)))

(declare-fun res!414460 () Bool)

(assert (=> b!911418 (= res!414460 (not (nullable!658 (reg!2757 (regOne!5368 r!15766)))))))

(assert (=> b!911418 (=> (not res!414460) (not e!594533))))

(declare-fun bm!54824 () Bool)

(assert (=> bm!54824 (= call!54827 (validRegex!897 (ite c!147679 (regTwo!5369 (regOne!5368 r!15766)) (regTwo!5368 (regOne!5368 r!15766)))))))

(declare-fun b!911419 () Bool)

(assert (=> b!911419 (= e!594530 e!594531)))

(assert (=> b!911419 (= c!147678 (is-Star!2428 (regOne!5368 r!15766)))))

(declare-fun b!911420 () Bool)

(assert (=> b!911420 (= e!594528 call!54827)))

(assert (= (and d!279364 (not res!414458)) b!911419))

(assert (= (and b!911419 c!147678) b!911418))

(assert (= (and b!911419 (not c!147678)) b!911414))

(assert (= (and b!911418 res!414460) b!911413))

(assert (= (and b!911414 c!147679) b!911416))

(assert (= (and b!911414 (not c!147679)) b!911417))

(assert (= (and b!911416 res!414459) b!911415))

(assert (= (and b!911417 (not res!414461)) b!911412))

(assert (= (and b!911412 res!414457) b!911420))

(assert (= (or b!911415 b!911420) bm!54824))

(assert (= (or b!911416 b!911412) bm!54823))

(assert (= (or b!911413 bm!54823) bm!54822))

(declare-fun m!1143449 () Bool)

(assert (=> bm!54822 m!1143449))

(declare-fun m!1143451 () Bool)

(assert (=> b!911418 m!1143451))

(declare-fun m!1143453 () Bool)

(assert (=> bm!54824 m!1143453))

(assert (=> b!911027 d!279364))

(declare-fun bm!54825 () Bool)

(declare-fun call!54831 () Bool)

(declare-fun c!147680 () Bool)

(declare-fun c!147681 () Bool)

(assert (=> bm!54825 (= call!54831 (validRegex!897 (ite c!147680 (reg!2757 r!15766) (ite c!147681 (regOne!5369 r!15766) (regOne!5368 r!15766)))))))

(declare-fun d!279366 () Bool)

(declare-fun res!414463 () Bool)

(declare-fun e!594537 () Bool)

(assert (=> d!279366 (=> res!414463 e!594537)))

(assert (=> d!279366 (= res!414463 (is-ElementMatch!2428 r!15766))))

(assert (=> d!279366 (= (validRegex!897 r!15766) e!594537)))

(declare-fun b!911423 () Bool)

(declare-fun e!594534 () Bool)

(declare-fun e!594535 () Bool)

(assert (=> b!911423 (= e!594534 e!594535)))

(declare-fun res!414462 () Bool)

(assert (=> b!911423 (=> (not res!414462) (not e!594535))))

(declare-fun call!54832 () Bool)

(assert (=> b!911423 (= res!414462 call!54832)))

(declare-fun b!911424 () Bool)

(declare-fun e!594540 () Bool)

(assert (=> b!911424 (= e!594540 call!54831)))

(declare-fun b!911425 () Bool)

(declare-fun e!594538 () Bool)

(declare-fun e!594539 () Bool)

(assert (=> b!911425 (= e!594538 e!594539)))

(assert (=> b!911425 (= c!147681 (is-Union!2428 r!15766))))

(declare-fun b!911426 () Bool)

(declare-fun e!594536 () Bool)

(declare-fun call!54830 () Bool)

(assert (=> b!911426 (= e!594536 call!54830)))

(declare-fun bm!54826 () Bool)

(assert (=> bm!54826 (= call!54832 call!54831)))

(declare-fun b!911427 () Bool)

(declare-fun res!414464 () Bool)

(assert (=> b!911427 (=> (not res!414464) (not e!594536))))

(assert (=> b!911427 (= res!414464 call!54832)))

(assert (=> b!911427 (= e!594539 e!594536)))

(declare-fun b!911428 () Bool)

(declare-fun res!414466 () Bool)

(assert (=> b!911428 (=> res!414466 e!594534)))

(assert (=> b!911428 (= res!414466 (not (is-Concat!4261 r!15766)))))

(assert (=> b!911428 (= e!594539 e!594534)))

(declare-fun b!911429 () Bool)

(assert (=> b!911429 (= e!594538 e!594540)))

(declare-fun res!414465 () Bool)

(assert (=> b!911429 (= res!414465 (not (nullable!658 (reg!2757 r!15766))))))

(assert (=> b!911429 (=> (not res!414465) (not e!594540))))

(declare-fun bm!54827 () Bool)

(assert (=> bm!54827 (= call!54830 (validRegex!897 (ite c!147681 (regTwo!5369 r!15766) (regTwo!5368 r!15766))))))

(declare-fun b!911430 () Bool)

(assert (=> b!911430 (= e!594537 e!594538)))

(assert (=> b!911430 (= c!147680 (is-Star!2428 r!15766))))

(declare-fun b!911431 () Bool)

(assert (=> b!911431 (= e!594535 call!54830)))

(assert (= (and d!279366 (not res!414463)) b!911430))

(assert (= (and b!911430 c!147680) b!911429))

(assert (= (and b!911430 (not c!147680)) b!911425))

(assert (= (and b!911429 res!414465) b!911424))

(assert (= (and b!911425 c!147681) b!911427))

(assert (= (and b!911425 (not c!147681)) b!911428))

(assert (= (and b!911427 res!414464) b!911426))

(assert (= (and b!911428 (not res!414466)) b!911423))

(assert (= (and b!911423 res!414462) b!911431))

(assert (= (or b!911426 b!911431) bm!54827))

(assert (= (or b!911427 b!911423) bm!54826))

(assert (= (or b!911424 bm!54826) bm!54825))

(declare-fun m!1143455 () Bool)

(assert (=> bm!54825 m!1143455))

(declare-fun m!1143457 () Bool)

(assert (=> b!911429 m!1143457))

(declare-fun m!1143459 () Bool)

(assert (=> bm!54827 m!1143459))

(assert (=> start!81924 d!279366))

(declare-fun b!911463 () Bool)

(declare-fun e!594557 () Bool)

(declare-fun tp!284908 () Bool)

(declare-fun tp!284909 () Bool)

(assert (=> b!911463 (= e!594557 (and tp!284908 tp!284909))))

(assert (=> b!911024 (= tp!284876 e!594557)))

(declare-fun b!911465 () Bool)

(declare-fun tp!284907 () Bool)

(declare-fun tp!284911 () Bool)

(assert (=> b!911465 (= e!594557 (and tp!284907 tp!284911))))

(declare-fun b!911464 () Bool)

(declare-fun tp!284910 () Bool)

(assert (=> b!911464 (= e!594557 tp!284910)))

(declare-fun b!911462 () Bool)

(assert (=> b!911462 (= e!594557 tp_is_empty!4499)))

(assert (= (and b!911024 (is-ElementMatch!2428 (regOne!5369 r!15766))) b!911462))

(assert (= (and b!911024 (is-Concat!4261 (regOne!5369 r!15766))) b!911463))

(assert (= (and b!911024 (is-Star!2428 (regOne!5369 r!15766))) b!911464))

(assert (= (and b!911024 (is-Union!2428 (regOne!5369 r!15766))) b!911465))

(declare-fun b!911467 () Bool)

(declare-fun e!594558 () Bool)

(declare-fun tp!284913 () Bool)

(declare-fun tp!284914 () Bool)

(assert (=> b!911467 (= e!594558 (and tp!284913 tp!284914))))

(assert (=> b!911024 (= tp!284877 e!594558)))

(declare-fun b!911469 () Bool)

(declare-fun tp!284912 () Bool)

(declare-fun tp!284916 () Bool)

(assert (=> b!911469 (= e!594558 (and tp!284912 tp!284916))))

(declare-fun b!911468 () Bool)

(declare-fun tp!284915 () Bool)

(assert (=> b!911468 (= e!594558 tp!284915)))

(declare-fun b!911466 () Bool)

(assert (=> b!911466 (= e!594558 tp_is_empty!4499)))

(assert (= (and b!911024 (is-ElementMatch!2428 (regTwo!5369 r!15766))) b!911466))

(assert (= (and b!911024 (is-Concat!4261 (regTwo!5369 r!15766))) b!911467))

(assert (= (and b!911024 (is-Star!2428 (regTwo!5369 r!15766))) b!911468))

(assert (= (and b!911024 (is-Union!2428 (regTwo!5369 r!15766))) b!911469))

(declare-fun b!911471 () Bool)

(declare-fun e!594559 () Bool)

(declare-fun tp!284918 () Bool)

(declare-fun tp!284919 () Bool)

(assert (=> b!911471 (= e!594559 (and tp!284918 tp!284919))))

(assert (=> b!911029 (= tp!284873 e!594559)))

(declare-fun b!911473 () Bool)

(declare-fun tp!284917 () Bool)

(declare-fun tp!284921 () Bool)

(assert (=> b!911473 (= e!594559 (and tp!284917 tp!284921))))

(declare-fun b!911472 () Bool)

(declare-fun tp!284920 () Bool)

(assert (=> b!911472 (= e!594559 tp!284920)))

(declare-fun b!911470 () Bool)

(assert (=> b!911470 (= e!594559 tp_is_empty!4499)))

(assert (= (and b!911029 (is-ElementMatch!2428 (regOne!5368 r!15766))) b!911470))

(assert (= (and b!911029 (is-Concat!4261 (regOne!5368 r!15766))) b!911471))

(assert (= (and b!911029 (is-Star!2428 (regOne!5368 r!15766))) b!911472))

(assert (= (and b!911029 (is-Union!2428 (regOne!5368 r!15766))) b!911473))

(declare-fun b!911475 () Bool)

(declare-fun e!594560 () Bool)

(declare-fun tp!284923 () Bool)

(declare-fun tp!284924 () Bool)

(assert (=> b!911475 (= e!594560 (and tp!284923 tp!284924))))

(assert (=> b!911029 (= tp!284874 e!594560)))

(declare-fun b!911477 () Bool)

(declare-fun tp!284922 () Bool)

(declare-fun tp!284926 () Bool)

(assert (=> b!911477 (= e!594560 (and tp!284922 tp!284926))))

(declare-fun b!911476 () Bool)

(declare-fun tp!284925 () Bool)

(assert (=> b!911476 (= e!594560 tp!284925)))

(declare-fun b!911474 () Bool)

(assert (=> b!911474 (= e!594560 tp_is_empty!4499)))

(assert (= (and b!911029 (is-ElementMatch!2428 (regTwo!5368 r!15766))) b!911474))

(assert (= (and b!911029 (is-Concat!4261 (regTwo!5368 r!15766))) b!911475))

(assert (= (and b!911029 (is-Star!2428 (regTwo!5368 r!15766))) b!911476))

(assert (= (and b!911029 (is-Union!2428 (regTwo!5368 r!15766))) b!911477))

(declare-fun b!911479 () Bool)

(declare-fun e!594561 () Bool)

(declare-fun tp!284928 () Bool)

(declare-fun tp!284929 () Bool)

(assert (=> b!911479 (= e!594561 (and tp!284928 tp!284929))))

(assert (=> b!911028 (= tp!284875 e!594561)))

(declare-fun b!911481 () Bool)

(declare-fun tp!284927 () Bool)

(declare-fun tp!284931 () Bool)

(assert (=> b!911481 (= e!594561 (and tp!284927 tp!284931))))

(declare-fun b!911480 () Bool)

(declare-fun tp!284930 () Bool)

(assert (=> b!911480 (= e!594561 tp!284930)))

(declare-fun b!911478 () Bool)

(assert (=> b!911478 (= e!594561 tp_is_empty!4499)))

(assert (= (and b!911028 (is-ElementMatch!2428 (reg!2757 r!15766))) b!911478))

(assert (= (and b!911028 (is-Concat!4261 (reg!2757 r!15766))) b!911479))

(assert (= (and b!911028 (is-Star!2428 (reg!2757 r!15766))) b!911480))

(assert (= (and b!911028 (is-Union!2428 (reg!2757 r!15766))) b!911481))

(declare-fun b!911486 () Bool)

(declare-fun e!594564 () Bool)

(declare-fun tp!284934 () Bool)

(assert (=> b!911486 (= e!594564 (and tp_is_empty!4499 tp!284934))))

(assert (=> b!911033 (= tp!284878 e!594564)))

(assert (= (and b!911033 (is-Cons!9642 (t!100704 s!10566))) b!911486))

(push 1)

(assert (not bm!54765))

(assert (not b!911472))

(assert (not d!279328))

(assert (not b!911145))

(assert (not b!911476))

(assert (not b!911475))

(assert (not d!279322))

(assert (not b!911286))

(assert (not b!911465))

(assert (not b!911352))

(assert (not b!911468))

(assert (not d!279350))

(assert (not b!911463))

(assert (not b!911291))

(assert (not b!911473))

(assert (not bm!54822))

(assert (not b!911354))

(assert (not b!911464))

(assert (not b!911266))

(assert (not b!911287))

(assert (not d!279336))

(assert (not b!911150))

(assert (not b!911144))

(assert (not b!911297))

(assert (not d!279340))

(assert (not bm!54794))

(assert (not d!279360))

(assert (not b!911471))

(assert (not b!911353))

(assert (not b!911358))

(assert (not b!911156))

(assert (not b!911136))

(assert (not bm!54784))

(assert (not b!911418))

(assert (not bm!54827))

(assert (not b!911355))

(assert (not b!911480))

(assert (not bm!54825))

(assert (not b!911429))

(assert (not bm!54824))

(assert (not b!911130))

(assert (not b!911263))

(assert (not b!911131))

(assert (not d!279318))

(assert (not b!911479))

(assert (not bm!54783))

(assert (not b!911142))

(assert (not b!911293))

(assert (not b!911351))

(assert (not bm!54796))

(assert (not d!279352))

(assert (not bm!54768))

(assert (not b!911486))

(assert (not b!911467))

(assert (not b!911194))

(assert (not d!279334))

(assert tp_is_empty!4499)

(assert (not b!911138))

(assert (not d!279324))

(assert (not d!279346))

(assert (not d!279344))

(assert (not bm!54793))

(assert (not b!911132))

(assert (not b!911285))

(assert (not b!911469))

(assert (not b!911481))

(assert (not b!911152))

(assert (not b!911477))

(assert (not b!911146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

