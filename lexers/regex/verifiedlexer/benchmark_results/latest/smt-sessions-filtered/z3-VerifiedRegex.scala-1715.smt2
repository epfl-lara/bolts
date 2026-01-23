; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86054 () Bool)

(assert start!86054)

(declare-fun b!967544 () Bool)

(assert (=> b!967544 true))

(assert (=> b!967544 true))

(assert (=> b!967544 true))

(declare-fun lambda!34100 () Int)

(declare-fun lambda!34099 () Int)

(assert (=> b!967544 (not (= lambda!34100 lambda!34099))))

(assert (=> b!967544 true))

(assert (=> b!967544 true))

(assert (=> b!967544 true))

(declare-fun bs!242051 () Bool)

(declare-fun b!967557 () Bool)

(assert (= bs!242051 (and b!967557 b!967544)))

(declare-datatypes ((C!5948 0))(
  ( (C!5949 (val!3222 Int)) )
))
(declare-datatypes ((Regex!2689 0))(
  ( (ElementMatch!2689 (c!157720 C!5948)) (Concat!4522 (regOne!5890 Regex!2689) (regTwo!5890 Regex!2689)) (EmptyExpr!2689) (Star!2689 (reg!3018 Regex!2689)) (EmptyLang!2689) (Union!2689 (regOne!5891 Regex!2689) (regTwo!5891 Regex!2689)) )
))
(declare-fun lt!348194 () Regex!2689)

(declare-fun lt!348186 () Regex!2689)

(declare-fun lt!348192 () Regex!2689)

(declare-fun r!15766 () Regex!2689)

(declare-fun lambda!34101 () Int)

(assert (=> bs!242051 (= (and (= lt!348192 (reg!3018 r!15766)) (= lt!348186 lt!348194)) (= lambda!34101 lambda!34099))))

(assert (=> bs!242051 (not (= lambda!34101 lambda!34100))))

(assert (=> b!967557 true))

(assert (=> b!967557 true))

(assert (=> b!967557 true))

(declare-fun lambda!34102 () Int)

(assert (=> bs!242051 (not (= lambda!34102 lambda!34099))))

(assert (=> bs!242051 (= (and (= lt!348192 (reg!3018 r!15766)) (= lt!348186 lt!348194)) (= lambda!34102 lambda!34100))))

(assert (=> b!967557 (not (= lambda!34102 lambda!34101))))

(assert (=> b!967557 true))

(assert (=> b!967557 true))

(assert (=> b!967557 true))

(declare-fun e!624123 () Bool)

(declare-fun e!624128 () Bool)

(assert (=> b!967544 (= e!624123 e!624128)))

(declare-fun res!439844 () Bool)

(assert (=> b!967544 (=> res!439844 e!624128)))

(declare-datatypes ((List!9919 0))(
  ( (Nil!9903) (Cons!9903 (h!15304 C!5948) (t!100965 List!9919)) )
))
(declare-fun s!10566 () List!9919)

(declare-fun matchR!1227 (Regex!2689 List!9919) Bool)

(assert (=> b!967544 (= res!439844 (not (matchR!1227 lt!348186 s!10566)))))

(assert (=> b!967544 (= lt!348186 (Star!2689 lt!348192))))

(declare-fun removeUselessConcat!336 (Regex!2689) Regex!2689)

(assert (=> b!967544 (= lt!348192 (removeUselessConcat!336 (reg!3018 r!15766)))))

(declare-fun Exists!432 (Int) Bool)

(assert (=> b!967544 (= (Exists!432 lambda!34099) (Exists!432 lambda!34100))))

(declare-datatypes ((Unit!15033 0))(
  ( (Unit!15034) )
))
(declare-fun lt!348185 () Unit!15033)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!150 (Regex!2689 List!9919) Unit!15033)

(assert (=> b!967544 (= lt!348185 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!150 (reg!3018 r!15766) s!10566))))

(declare-datatypes ((tuple2!11256 0))(
  ( (tuple2!11257 (_1!6454 List!9919) (_2!6454 List!9919)) )
))
(declare-datatypes ((Option!2270 0))(
  ( (None!2269) (Some!2269 (v!19686 tuple2!11256)) )
))
(declare-fun isDefined!1912 (Option!2270) Bool)

(declare-fun findConcatSeparation!376 (Regex!2689 Regex!2689 List!9919 List!9919 List!9919) Option!2270)

(assert (=> b!967544 (= (isDefined!1912 (findConcatSeparation!376 (reg!3018 r!15766) lt!348194 Nil!9903 s!10566 s!10566)) (Exists!432 lambda!34099))))

(declare-fun lt!348187 () Unit!15033)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!376 (Regex!2689 Regex!2689 List!9919) Unit!15033)

(assert (=> b!967544 (= lt!348187 (lemmaFindConcatSeparationEquivalentToExists!376 (reg!3018 r!15766) lt!348194 s!10566))))

(assert (=> b!967544 (= lt!348194 (Star!2689 (reg!3018 r!15766)))))

(declare-fun b!967545 () Bool)

(declare-fun e!624129 () Bool)

(declare-fun tp_is_empty!5021 () Bool)

(declare-fun tp!296663 () Bool)

(assert (=> b!967545 (= e!624129 (and tp_is_empty!5021 tp!296663))))

(declare-fun b!967546 () Bool)

(declare-fun e!624122 () Bool)

(declare-fun tp!296659 () Bool)

(declare-fun tp!296664 () Bool)

(assert (=> b!967546 (= e!624122 (and tp!296659 tp!296664))))

(declare-fun b!967547 () Bool)

(declare-fun e!624126 () Bool)

(assert (=> b!967547 (= e!624126 (not e!624123))))

(declare-fun res!439843 () Bool)

(assert (=> b!967547 (=> res!439843 e!624123)))

(declare-fun lt!348197 () Bool)

(get-info :version)

(assert (=> b!967547 (= res!439843 (or lt!348197 (and ((_ is Concat!4522) r!15766) ((_ is EmptyExpr!2689) (regOne!5890 r!15766))) (and ((_ is Concat!4522) r!15766) ((_ is EmptyExpr!2689) (regTwo!5890 r!15766))) ((_ is Concat!4522) r!15766) ((_ is Union!2689) r!15766) (not ((_ is Star!2689) r!15766))))))

(declare-fun matchRSpec!490 (Regex!2689 List!9919) Bool)

(assert (=> b!967547 (= lt!348197 (matchRSpec!490 r!15766 s!10566))))

(assert (=> b!967547 (= lt!348197 (matchR!1227 r!15766 s!10566))))

(declare-fun lt!348195 () Unit!15033)

(declare-fun mainMatchTheorem!490 (Regex!2689 List!9919) Unit!15033)

(assert (=> b!967547 (= lt!348195 (mainMatchTheorem!490 r!15766 s!10566))))

(declare-fun b!967548 () Bool)

(declare-fun res!439848 () Bool)

(declare-fun e!624124 () Bool)

(assert (=> b!967548 (=> res!439848 e!624124)))

(declare-fun lt!348193 () tuple2!11256)

(declare-fun ++!2677 (List!9919 List!9919) List!9919)

(assert (=> b!967548 (= res!439848 (not (= (++!2677 (_1!6454 lt!348193) (_2!6454 lt!348193)) s!10566)))))

(declare-fun b!967549 () Bool)

(declare-fun res!439846 () Bool)

(declare-fun e!624125 () Bool)

(assert (=> b!967549 (=> res!439846 e!624125)))

(assert (=> b!967549 (= res!439846 (not (matchR!1227 lt!348186 (_2!6454 lt!348193))))))

(declare-fun b!967550 () Bool)

(assert (=> b!967550 (= e!624124 true)))

(declare-fun lt!348196 () Int)

(declare-fun size!7939 (List!9919) Int)

(assert (=> b!967550 (= lt!348196 (size!7939 (_1!6454 lt!348193)))))

(declare-fun b!967551 () Bool)

(declare-fun tp!296660 () Bool)

(declare-fun tp!296662 () Bool)

(assert (=> b!967551 (= e!624122 (and tp!296660 tp!296662))))

(declare-fun b!967552 () Bool)

(declare-fun tp!296661 () Bool)

(assert (=> b!967552 (= e!624122 tp!296661)))

(declare-fun b!967553 () Bool)

(assert (=> b!967553 (= e!624125 e!624124)))

(declare-fun res!439845 () Bool)

(assert (=> b!967553 (=> res!439845 e!624124)))

(assert (=> b!967553 (= res!439845 (not (= (size!7939 (_2!6454 lt!348193)) (size!7939 s!10566))))))

(assert (=> b!967553 (matchR!1227 (reg!3018 r!15766) (_1!6454 lt!348193))))

(declare-fun lt!348199 () Unit!15033)

(declare-fun lemmaRemoveUselessConcatSound!188 (Regex!2689 List!9919) Unit!15033)

(assert (=> b!967553 (= lt!348199 (lemmaRemoveUselessConcatSound!188 (reg!3018 r!15766) (_1!6454 lt!348193)))))

(declare-fun b!967554 () Bool)

(declare-fun e!624127 () Bool)

(assert (=> b!967554 (= e!624127 e!624125)))

(declare-fun res!439847 () Bool)

(assert (=> b!967554 (=> res!439847 e!624125)))

(assert (=> b!967554 (= res!439847 (not (matchR!1227 lt!348192 (_1!6454 lt!348193))))))

(declare-fun lt!348191 () Option!2270)

(declare-fun get!3398 (Option!2270) tuple2!11256)

(assert (=> b!967554 (= lt!348193 (get!3398 lt!348191))))

(declare-fun b!967555 () Bool)

(declare-fun res!439841 () Bool)

(assert (=> b!967555 (=> res!439841 e!624127)))

(declare-fun lt!348190 () Bool)

(assert (=> b!967555 (= res!439841 (not lt!348190))))

(declare-fun b!967556 () Bool)

(assert (=> b!967556 (= e!624122 tp_is_empty!5021)))

(assert (=> b!967557 (= e!624128 e!624127)))

(declare-fun res!439842 () Bool)

(assert (=> b!967557 (=> res!439842 e!624127)))

(declare-fun isEmpty!6209 (List!9919) Bool)

(assert (=> b!967557 (= res!439842 (isEmpty!6209 s!10566))))

(assert (=> b!967557 (= (Exists!432 lambda!34101) (Exists!432 lambda!34102))))

(declare-fun lt!348189 () Unit!15033)

(assert (=> b!967557 (= lt!348189 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!150 lt!348192 s!10566))))

(assert (=> b!967557 (= lt!348190 (Exists!432 lambda!34101))))

(assert (=> b!967557 (= lt!348190 (isDefined!1912 lt!348191))))

(assert (=> b!967557 (= lt!348191 (findConcatSeparation!376 lt!348192 lt!348186 Nil!9903 s!10566 s!10566))))

(declare-fun lt!348188 () Unit!15033)

(assert (=> b!967557 (= lt!348188 (lemmaFindConcatSeparationEquivalentToExists!376 lt!348192 lt!348186 s!10566))))

(assert (=> b!967557 (matchRSpec!490 lt!348186 s!10566)))

(declare-fun lt!348198 () Unit!15033)

(assert (=> b!967557 (= lt!348198 (mainMatchTheorem!490 lt!348186 s!10566))))

(declare-fun res!439840 () Bool)

(assert (=> start!86054 (=> (not res!439840) (not e!624126))))

(declare-fun validRegex!1158 (Regex!2689) Bool)

(assert (=> start!86054 (= res!439840 (validRegex!1158 r!15766))))

(assert (=> start!86054 e!624126))

(assert (=> start!86054 e!624122))

(assert (=> start!86054 e!624129))

(assert (= (and start!86054 res!439840) b!967547))

(assert (= (and b!967547 (not res!439843)) b!967544))

(assert (= (and b!967544 (not res!439844)) b!967557))

(assert (= (and b!967557 (not res!439842)) b!967555))

(assert (= (and b!967555 (not res!439841)) b!967554))

(assert (= (and b!967554 (not res!439847)) b!967549))

(assert (= (and b!967549 (not res!439846)) b!967553))

(assert (= (and b!967553 (not res!439845)) b!967548))

(assert (= (and b!967548 (not res!439848)) b!967550))

(assert (= (and start!86054 ((_ is ElementMatch!2689) r!15766)) b!967556))

(assert (= (and start!86054 ((_ is Concat!4522) r!15766)) b!967551))

(assert (= (and start!86054 ((_ is Star!2689) r!15766)) b!967552))

(assert (= (and start!86054 ((_ is Union!2689) r!15766)) b!967546))

(assert (= (and start!86054 ((_ is Cons!9903) s!10566)) b!967545))

(declare-fun m!1173209 () Bool)

(assert (=> b!967553 m!1173209))

(declare-fun m!1173211 () Bool)

(assert (=> b!967553 m!1173211))

(declare-fun m!1173213 () Bool)

(assert (=> b!967553 m!1173213))

(declare-fun m!1173215 () Bool)

(assert (=> b!967553 m!1173215))

(declare-fun m!1173217 () Bool)

(assert (=> b!967550 m!1173217))

(declare-fun m!1173219 () Bool)

(assert (=> b!967554 m!1173219))

(declare-fun m!1173221 () Bool)

(assert (=> b!967554 m!1173221))

(declare-fun m!1173223 () Bool)

(assert (=> b!967557 m!1173223))

(declare-fun m!1173225 () Bool)

(assert (=> b!967557 m!1173225))

(declare-fun m!1173227 () Bool)

(assert (=> b!967557 m!1173227))

(declare-fun m!1173229 () Bool)

(assert (=> b!967557 m!1173229))

(declare-fun m!1173231 () Bool)

(assert (=> b!967557 m!1173231))

(assert (=> b!967557 m!1173223))

(declare-fun m!1173233 () Bool)

(assert (=> b!967557 m!1173233))

(declare-fun m!1173235 () Bool)

(assert (=> b!967557 m!1173235))

(declare-fun m!1173237 () Bool)

(assert (=> b!967557 m!1173237))

(declare-fun m!1173239 () Bool)

(assert (=> b!967557 m!1173239))

(declare-fun m!1173241 () Bool)

(assert (=> b!967544 m!1173241))

(declare-fun m!1173243 () Bool)

(assert (=> b!967544 m!1173243))

(declare-fun m!1173245 () Bool)

(assert (=> b!967544 m!1173245))

(declare-fun m!1173247 () Bool)

(assert (=> b!967544 m!1173247))

(declare-fun m!1173249 () Bool)

(assert (=> b!967544 m!1173249))

(assert (=> b!967544 m!1173245))

(declare-fun m!1173251 () Bool)

(assert (=> b!967544 m!1173251))

(declare-fun m!1173253 () Bool)

(assert (=> b!967544 m!1173253))

(assert (=> b!967544 m!1173253))

(declare-fun m!1173255 () Bool)

(assert (=> b!967544 m!1173255))

(declare-fun m!1173257 () Bool)

(assert (=> b!967549 m!1173257))

(declare-fun m!1173259 () Bool)

(assert (=> b!967548 m!1173259))

(declare-fun m!1173261 () Bool)

(assert (=> start!86054 m!1173261))

(declare-fun m!1173263 () Bool)

(assert (=> b!967547 m!1173263))

(declare-fun m!1173265 () Bool)

(assert (=> b!967547 m!1173265))

(declare-fun m!1173267 () Bool)

(assert (=> b!967547 m!1173267))

(check-sat (not b!967551) (not b!967554) (not b!967550) (not b!967557) (not b!967547) tp_is_empty!5021 (not start!86054) (not b!967552) (not b!967553) (not b!967545) (not b!967544) (not b!967546) (not b!967549) (not b!967548))
(check-sat)
