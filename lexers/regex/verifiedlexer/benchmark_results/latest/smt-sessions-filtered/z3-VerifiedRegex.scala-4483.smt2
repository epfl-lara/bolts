; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238370 () Bool)

(assert start!238370)

(declare-fun b!2434995 () Bool)

(assert (=> b!2434995 true))

(assert (=> b!2434995 true))

(declare-fun lambda!91941 () Int)

(declare-fun lambda!91940 () Int)

(assert (=> b!2434995 (not (= lambda!91941 lambda!91940))))

(assert (=> b!2434995 true))

(assert (=> b!2434995 true))

(declare-fun e!1547747 () Bool)

(declare-fun e!1547749 () Bool)

(assert (=> b!2434995 (= e!1547747 e!1547749)))

(declare-fun res!1033714 () Bool)

(assert (=> b!2434995 (=> res!1033714 e!1547749)))

(declare-fun lt!877338 () Bool)

(declare-fun lt!877340 () Bool)

(assert (=> b!2434995 (= res!1033714 (not (= lt!877338 lt!877340)))))

(declare-fun Exists!1195 (Int) Bool)

(assert (=> b!2434995 (= (Exists!1195 lambda!91940) (Exists!1195 lambda!91941))))

(declare-datatypes ((Unit!41701 0))(
  ( (Unit!41702) )
))
(declare-fun lt!877339 () Unit!41701)

(declare-datatypes ((C!14476 0))(
  ( (C!14477 (val!8480 Int)) )
))
(declare-datatypes ((Regex!7159 0))(
  ( (ElementMatch!7159 (c!388487 C!14476)) (Concat!11795 (regOne!14830 Regex!7159) (regTwo!14830 Regex!7159)) (EmptyExpr!7159) (Star!7159 (reg!7488 Regex!7159)) (EmptyLang!7159) (Union!7159 (regOne!14831 Regex!7159) (regTwo!14831 Regex!7159)) )
))
(declare-fun r!13927 () Regex!7159)

(declare-datatypes ((List!28554 0))(
  ( (Nil!28456) (Cons!28456 (h!33857 C!14476) (t!208531 List!28554)) )
))
(declare-fun s!9460 () List!28554)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!440 (Regex!7159 Regex!7159 List!28554) Unit!41701)

(assert (=> b!2434995 (= lt!877339 (lemmaExistCutMatchRandMatchRSpecEquivalent!440 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460))))

(assert (=> b!2434995 (= lt!877340 (Exists!1195 lambda!91940))))

(declare-datatypes ((tuple2!28074 0))(
  ( (tuple2!28075 (_1!16578 List!28554) (_2!16578 List!28554)) )
))
(declare-datatypes ((Option!5648 0))(
  ( (None!5647) (Some!5647 (v!31055 tuple2!28074)) )
))
(declare-fun isDefined!4474 (Option!5648) Bool)

(declare-fun findConcatSeparation!756 (Regex!7159 Regex!7159 List!28554 List!28554 List!28554) Option!5648)

(assert (=> b!2434995 (= lt!877340 (isDefined!4474 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460)))))

(declare-fun lt!877333 () Unit!41701)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!694 (Regex!7159 Regex!7159 List!28554) Unit!41701)

(assert (=> b!2434995 (= lt!877333 (lemmaFindConcatSeparationEquivalentToExists!694 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460))))

(declare-fun b!2434996 () Bool)

(declare-fun e!1547745 () Bool)

(declare-fun tp_is_empty!11731 () Bool)

(assert (=> b!2434996 (= e!1547745 tp_is_empty!11731)))

(declare-fun b!2434997 () Bool)

(declare-fun res!1033711 () Bool)

(declare-fun e!1547748 () Bool)

(assert (=> b!2434997 (=> res!1033711 e!1547748)))

(assert (=> b!2434997 (= res!1033711 false)))

(declare-fun b!2434998 () Bool)

(declare-fun res!1033705 () Bool)

(assert (=> b!2434998 (=> res!1033705 e!1547749)))

(declare-datatypes ((List!28555 0))(
  ( (Nil!28457) (Cons!28457 (h!33858 Regex!7159) (t!208532 List!28555)) )
))
(declare-fun l!9164 () List!28555)

(declare-fun isEmpty!16494 (List!28555) Bool)

(assert (=> b!2434998 (= res!1033705 (isEmpty!16494 l!9164))))

(declare-fun b!2434999 () Bool)

(declare-fun res!1033708 () Bool)

(declare-fun e!1547746 () Bool)

(assert (=> b!2434999 (=> (not res!1033708) (not e!1547746))))

(declare-fun generalisedConcat!260 (List!28555) Regex!7159)

(assert (=> b!2434999 (= res!1033708 (= r!13927 (generalisedConcat!260 l!9164)))))

(declare-fun b!2435000 () Bool)

(declare-fun tp!773390 () Bool)

(assert (=> b!2435000 (= e!1547745 tp!773390)))

(declare-fun b!2435001 () Bool)

(declare-fun tp!773386 () Bool)

(declare-fun tp!773392 () Bool)

(assert (=> b!2435001 (= e!1547745 (and tp!773386 tp!773392))))

(declare-fun b!2435002 () Bool)

(declare-fun e!1547750 () Bool)

(assert (=> b!2435002 (= e!1547750 e!1547748)))

(declare-fun res!1033709 () Bool)

(assert (=> b!2435002 (=> res!1033709 e!1547748)))

(declare-fun lt!877335 () Regex!7159)

(declare-fun matchR!3274 (Regex!7159 List!28554) Bool)

(assert (=> b!2435002 (= res!1033709 (not (matchR!3274 lt!877335 s!9460)))))

(declare-fun head!5515 (List!28555) Regex!7159)

(assert (=> b!2435002 (= lt!877335 (head!5515 l!9164))))

(declare-fun b!2435003 () Bool)

(assert (=> b!2435003 (= e!1547749 e!1547750)))

(declare-fun res!1033713 () Bool)

(assert (=> b!2435003 (=> res!1033713 e!1547750)))

(declare-fun lt!877337 () List!28555)

(assert (=> b!2435003 (= res!1033713 (not (isEmpty!16494 lt!877337)))))

(declare-fun tail!3788 (List!28555) List!28555)

(assert (=> b!2435003 (= lt!877337 (tail!3788 l!9164))))

(declare-fun res!1033710 () Bool)

(assert (=> start!238370 (=> (not res!1033710) (not e!1547746))))

(declare-fun lambda!91939 () Int)

(declare-fun forall!5793 (List!28555 Int) Bool)

(assert (=> start!238370 (= res!1033710 (forall!5793 l!9164 lambda!91939))))

(assert (=> start!238370 e!1547746))

(declare-fun e!1547752 () Bool)

(assert (=> start!238370 e!1547752))

(assert (=> start!238370 e!1547745))

(declare-fun e!1547751 () Bool)

(assert (=> start!238370 e!1547751))

(declare-fun b!2435004 () Bool)

(assert (=> b!2435004 (= e!1547746 (not e!1547747))))

(declare-fun res!1033712 () Bool)

(assert (=> b!2435004 (=> res!1033712 e!1547747)))

(get-info :version)

(assert (=> b!2435004 (= res!1033712 (not ((_ is Concat!11795) r!13927)))))

(declare-fun lt!877336 () Bool)

(assert (=> b!2435004 (= lt!877336 lt!877338)))

(declare-fun matchRSpec!1006 (Regex!7159 List!28554) Bool)

(assert (=> b!2435004 (= lt!877338 (matchRSpec!1006 r!13927 s!9460))))

(assert (=> b!2435004 (= lt!877336 (matchR!3274 r!13927 s!9460))))

(declare-fun lt!877334 () Unit!41701)

(declare-fun mainMatchTheorem!1006 (Regex!7159 List!28554) Unit!41701)

(assert (=> b!2435004 (= lt!877334 (mainMatchTheorem!1006 r!13927 s!9460))))

(declare-fun b!2435005 () Bool)

(declare-fun tp!773388 () Bool)

(declare-fun tp!773389 () Bool)

(assert (=> b!2435005 (= e!1547745 (and tp!773388 tp!773389))))

(declare-fun b!2435006 () Bool)

(declare-fun res!1033707 () Bool)

(assert (=> b!2435006 (=> res!1033707 e!1547750)))

(assert (=> b!2435006 (= res!1033707 (not (= (generalisedConcat!260 lt!877337) EmptyExpr!7159)))))

(declare-fun b!2435007 () Bool)

(declare-fun tp!773387 () Bool)

(declare-fun tp!773391 () Bool)

(assert (=> b!2435007 (= e!1547752 (and tp!773387 tp!773391))))

(declare-fun b!2435008 () Bool)

(assert (=> b!2435008 (= e!1547748 (matchR!3274 EmptyExpr!7159 Nil!28456))))

(declare-fun b!2435009 () Bool)

(declare-fun res!1033706 () Bool)

(assert (=> b!2435009 (=> res!1033706 e!1547748)))

(declare-fun validRegex!2873 (Regex!7159) Bool)

(assert (=> b!2435009 (= res!1033706 (not (validRegex!2873 lt!877335)))))

(declare-fun b!2435010 () Bool)

(declare-fun tp!773393 () Bool)

(assert (=> b!2435010 (= e!1547751 (and tp_is_empty!11731 tp!773393))))

(assert (= (and start!238370 res!1033710) b!2434999))

(assert (= (and b!2434999 res!1033708) b!2435004))

(assert (= (and b!2435004 (not res!1033712)) b!2434995))

(assert (= (and b!2434995 (not res!1033714)) b!2434998))

(assert (= (and b!2434998 (not res!1033705)) b!2435003))

(assert (= (and b!2435003 (not res!1033713)) b!2435006))

(assert (= (and b!2435006 (not res!1033707)) b!2435002))

(assert (= (and b!2435002 (not res!1033709)) b!2435009))

(assert (= (and b!2435009 (not res!1033706)) b!2434997))

(assert (= (and b!2434997 (not res!1033711)) b!2435008))

(assert (= (and start!238370 ((_ is Cons!28457) l!9164)) b!2435007))

(assert (= (and start!238370 ((_ is ElementMatch!7159) r!13927)) b!2434996))

(assert (= (and start!238370 ((_ is Concat!11795) r!13927)) b!2435001))

(assert (= (and start!238370 ((_ is Star!7159) r!13927)) b!2435000))

(assert (= (and start!238370 ((_ is Union!7159) r!13927)) b!2435005))

(assert (= (and start!238370 ((_ is Cons!28456) s!9460)) b!2435010))

(declare-fun m!2815311 () Bool)

(assert (=> b!2435006 m!2815311))

(declare-fun m!2815313 () Bool)

(assert (=> b!2434999 m!2815313))

(declare-fun m!2815315 () Bool)

(assert (=> b!2434998 m!2815315))

(declare-fun m!2815317 () Bool)

(assert (=> b!2435002 m!2815317))

(declare-fun m!2815319 () Bool)

(assert (=> b!2435002 m!2815319))

(declare-fun m!2815321 () Bool)

(assert (=> b!2435004 m!2815321))

(declare-fun m!2815323 () Bool)

(assert (=> b!2435004 m!2815323))

(declare-fun m!2815325 () Bool)

(assert (=> b!2435004 m!2815325))

(declare-fun m!2815327 () Bool)

(assert (=> b!2435003 m!2815327))

(declare-fun m!2815329 () Bool)

(assert (=> b!2435003 m!2815329))

(declare-fun m!2815331 () Bool)

(assert (=> b!2435009 m!2815331))

(declare-fun m!2815333 () Bool)

(assert (=> b!2434995 m!2815333))

(declare-fun m!2815335 () Bool)

(assert (=> b!2434995 m!2815335))

(declare-fun m!2815337 () Bool)

(assert (=> b!2434995 m!2815337))

(declare-fun m!2815339 () Bool)

(assert (=> b!2434995 m!2815339))

(declare-fun m!2815341 () Bool)

(assert (=> b!2434995 m!2815341))

(declare-fun m!2815343 () Bool)

(assert (=> b!2434995 m!2815343))

(assert (=> b!2434995 m!2815333))

(assert (=> b!2434995 m!2815343))

(declare-fun m!2815345 () Bool)

(assert (=> start!238370 m!2815345))

(declare-fun m!2815347 () Bool)

(assert (=> b!2435008 m!2815347))

(check-sat (not b!2435002) (not b!2435006) (not b!2435007) (not b!2435001) (not start!238370) (not b!2435000) (not b!2435009) (not b!2434998) (not b!2435010) (not b!2434995) (not b!2435008) (not b!2435004) tp_is_empty!11731 (not b!2435003) (not b!2435005) (not b!2434999))
(check-sat)
(get-model)

(declare-fun b!2435090 () Bool)

(declare-fun e!1547811 () Bool)

(declare-fun e!1547808 () Bool)

(assert (=> b!2435090 (= e!1547811 e!1547808)))

(declare-fun c!388511 () Bool)

(assert (=> b!2435090 (= c!388511 ((_ is Union!7159) lt!877335))))

(declare-fun b!2435091 () Bool)

(declare-fun e!1547807 () Bool)

(declare-fun call!149132 () Bool)

(assert (=> b!2435091 (= e!1547807 call!149132)))

(declare-fun b!2435092 () Bool)

(declare-fun e!1547810 () Bool)

(declare-fun e!1547806 () Bool)

(assert (=> b!2435092 (= e!1547810 e!1547806)))

(declare-fun res!1033747 () Bool)

(assert (=> b!2435092 (=> (not res!1033747) (not e!1547806))))

(assert (=> b!2435092 (= res!1033747 call!149132)))

(declare-fun bm!149125 () Bool)

(declare-fun call!149131 () Bool)

(declare-fun call!149130 () Bool)

(assert (=> bm!149125 (= call!149131 call!149130)))

(declare-fun bm!149126 () Bool)

(assert (=> bm!149126 (= call!149132 (validRegex!2873 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))

(declare-fun b!2435093 () Bool)

(declare-fun e!1547809 () Bool)

(assert (=> b!2435093 (= e!1547811 e!1547809)))

(declare-fun res!1033749 () Bool)

(declare-fun nullable!2188 (Regex!7159) Bool)

(assert (=> b!2435093 (= res!1033749 (not (nullable!2188 (reg!7488 lt!877335))))))

(assert (=> b!2435093 (=> (not res!1033749) (not e!1547809))))

(declare-fun b!2435094 () Bool)

(assert (=> b!2435094 (= e!1547806 call!149131)))

(declare-fun d!703738 () Bool)

(declare-fun res!1033746 () Bool)

(declare-fun e!1547812 () Bool)

(assert (=> d!703738 (=> res!1033746 e!1547812)))

(assert (=> d!703738 (= res!1033746 ((_ is ElementMatch!7159) lt!877335))))

(assert (=> d!703738 (= (validRegex!2873 lt!877335) e!1547812)))

(declare-fun b!2435095 () Bool)

(declare-fun res!1033748 () Bool)

(assert (=> b!2435095 (=> res!1033748 e!1547810)))

(assert (=> b!2435095 (= res!1033748 (not ((_ is Concat!11795) lt!877335)))))

(assert (=> b!2435095 (= e!1547808 e!1547810)))

(declare-fun b!2435096 () Bool)

(assert (=> b!2435096 (= e!1547812 e!1547811)))

(declare-fun c!388510 () Bool)

(assert (=> b!2435096 (= c!388510 ((_ is Star!7159) lt!877335))))

(declare-fun b!2435097 () Bool)

(declare-fun res!1033750 () Bool)

(assert (=> b!2435097 (=> (not res!1033750) (not e!1547807))))

(assert (=> b!2435097 (= res!1033750 call!149131)))

(assert (=> b!2435097 (= e!1547808 e!1547807)))

(declare-fun b!2435098 () Bool)

(assert (=> b!2435098 (= e!1547809 call!149130)))

(declare-fun bm!149127 () Bool)

(assert (=> bm!149127 (= call!149130 (validRegex!2873 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))

(assert (= (and d!703738 (not res!1033746)) b!2435096))

(assert (= (and b!2435096 c!388510) b!2435093))

(assert (= (and b!2435096 (not c!388510)) b!2435090))

(assert (= (and b!2435093 res!1033749) b!2435098))

(assert (= (and b!2435090 c!388511) b!2435097))

(assert (= (and b!2435090 (not c!388511)) b!2435095))

(assert (= (and b!2435097 res!1033750) b!2435091))

(assert (= (and b!2435095 (not res!1033748)) b!2435092))

(assert (= (and b!2435092 res!1033747) b!2435094))

(assert (= (or b!2435097 b!2435094) bm!149125))

(assert (= (or b!2435091 b!2435092) bm!149126))

(assert (= (or b!2435098 bm!149125) bm!149127))

(declare-fun m!2815373 () Bool)

(assert (=> bm!149126 m!2815373))

(declare-fun m!2815375 () Bool)

(assert (=> b!2435093 m!2815375))

(declare-fun m!2815377 () Bool)

(assert (=> bm!149127 m!2815377))

(assert (=> b!2435009 d!703738))

(declare-fun bs!464428 () Bool)

(declare-fun b!2435261 () Bool)

(assert (= bs!464428 (and b!2435261 b!2434995)))

(declare-fun lambda!91956 () Int)

(assert (=> bs!464428 (not (= lambda!91956 lambda!91940))))

(assert (=> bs!464428 (not (= lambda!91956 lambda!91941))))

(assert (=> b!2435261 true))

(assert (=> b!2435261 true))

(declare-fun bs!464429 () Bool)

(declare-fun b!2435264 () Bool)

(assert (= bs!464429 (and b!2435264 b!2434995)))

(declare-fun lambda!91957 () Int)

(assert (=> bs!464429 (not (= lambda!91957 lambda!91940))))

(assert (=> bs!464429 (= lambda!91957 lambda!91941)))

(declare-fun bs!464430 () Bool)

(assert (= bs!464430 (and b!2435264 b!2435261)))

(assert (=> bs!464430 (not (= lambda!91957 lambda!91956))))

(assert (=> b!2435264 true))

(assert (=> b!2435264 true))

(declare-fun b!2435260 () Bool)

(declare-fun e!1547908 () Bool)

(declare-fun call!149148 () Bool)

(assert (=> b!2435260 (= e!1547908 call!149148)))

(declare-fun e!1547904 () Bool)

(declare-fun call!149149 () Bool)

(assert (=> b!2435261 (= e!1547904 call!149149)))

(declare-fun b!2435262 () Bool)

(declare-fun e!1547907 () Bool)

(assert (=> b!2435262 (= e!1547907 (= s!9460 (Cons!28456 (c!388487 r!13927) Nil!28456)))))

(declare-fun bm!149143 () Bool)

(declare-fun isEmpty!16497 (List!28554) Bool)

(assert (=> bm!149143 (= call!149148 (isEmpty!16497 s!9460))))

(declare-fun b!2435263 () Bool)

(declare-fun e!1547905 () Bool)

(assert (=> b!2435263 (= e!1547908 e!1547905)))

(declare-fun res!1033836 () Bool)

(assert (=> b!2435263 (= res!1033836 (not ((_ is EmptyLang!7159) r!13927)))))

(assert (=> b!2435263 (=> (not res!1033836) (not e!1547905))))

(declare-fun e!1547906 () Bool)

(assert (=> b!2435264 (= e!1547906 call!149149)))

(declare-fun d!703744 () Bool)

(declare-fun c!388552 () Bool)

(assert (=> d!703744 (= c!388552 ((_ is EmptyExpr!7159) r!13927))))

(assert (=> d!703744 (= (matchRSpec!1006 r!13927 s!9460) e!1547908)))

(declare-fun c!388553 () Bool)

(declare-fun bm!149144 () Bool)

(assert (=> bm!149144 (= call!149149 (Exists!1195 (ite c!388553 lambda!91956 lambda!91957)))))

(declare-fun b!2435265 () Bool)

(declare-fun e!1547903 () Bool)

(assert (=> b!2435265 (= e!1547903 e!1547906)))

(assert (=> b!2435265 (= c!388553 ((_ is Star!7159) r!13927))))

(declare-fun b!2435266 () Bool)

(declare-fun e!1547909 () Bool)

(assert (=> b!2435266 (= e!1547909 (matchRSpec!1006 (regTwo!14831 r!13927) s!9460))))

(declare-fun b!2435267 () Bool)

(declare-fun c!388554 () Bool)

(assert (=> b!2435267 (= c!388554 ((_ is Union!7159) r!13927))))

(assert (=> b!2435267 (= e!1547907 e!1547903)))

(declare-fun b!2435268 () Bool)

(declare-fun res!1033834 () Bool)

(assert (=> b!2435268 (=> res!1033834 e!1547904)))

(assert (=> b!2435268 (= res!1033834 call!149148)))

(assert (=> b!2435268 (= e!1547906 e!1547904)))

(declare-fun b!2435269 () Bool)

(assert (=> b!2435269 (= e!1547903 e!1547909)))

(declare-fun res!1033835 () Bool)

(assert (=> b!2435269 (= res!1033835 (matchRSpec!1006 (regOne!14831 r!13927) s!9460))))

(assert (=> b!2435269 (=> res!1033835 e!1547909)))

(declare-fun b!2435270 () Bool)

(declare-fun c!388551 () Bool)

(assert (=> b!2435270 (= c!388551 ((_ is ElementMatch!7159) r!13927))))

(assert (=> b!2435270 (= e!1547905 e!1547907)))

(assert (= (and d!703744 c!388552) b!2435260))

(assert (= (and d!703744 (not c!388552)) b!2435263))

(assert (= (and b!2435263 res!1033836) b!2435270))

(assert (= (and b!2435270 c!388551) b!2435262))

(assert (= (and b!2435270 (not c!388551)) b!2435267))

(assert (= (and b!2435267 c!388554) b!2435269))

(assert (= (and b!2435267 (not c!388554)) b!2435265))

(assert (= (and b!2435269 (not res!1033835)) b!2435266))

(assert (= (and b!2435265 c!388553) b!2435268))

(assert (= (and b!2435265 (not c!388553)) b!2435264))

(assert (= (and b!2435268 (not res!1033834)) b!2435261))

(assert (= (or b!2435261 b!2435264) bm!149144))

(assert (= (or b!2435260 b!2435268) bm!149143))

(declare-fun m!2815447 () Bool)

(assert (=> bm!149143 m!2815447))

(declare-fun m!2815449 () Bool)

(assert (=> bm!149144 m!2815449))

(declare-fun m!2815451 () Bool)

(assert (=> b!2435266 m!2815451))

(declare-fun m!2815453 () Bool)

(assert (=> b!2435269 m!2815453))

(assert (=> b!2435004 d!703744))

(declare-fun b!2435329 () Bool)

(declare-fun e!1547941 () Bool)

(declare-fun lt!877367 () Bool)

(declare-fun call!149152 () Bool)

(assert (=> b!2435329 (= e!1547941 (= lt!877367 call!149152))))

(declare-fun b!2435330 () Bool)

(declare-fun res!1033879 () Bool)

(declare-fun e!1547946 () Bool)

(assert (=> b!2435330 (=> (not res!1033879) (not e!1547946))))

(declare-fun tail!3790 (List!28554) List!28554)

(assert (=> b!2435330 (= res!1033879 (isEmpty!16497 (tail!3790 s!9460)))))

(declare-fun b!2435331 () Bool)

(declare-fun e!1547943 () Bool)

(declare-fun e!1547945 () Bool)

(assert (=> b!2435331 (= e!1547943 e!1547945)))

(declare-fun res!1033878 () Bool)

(assert (=> b!2435331 (=> res!1033878 e!1547945)))

(assert (=> b!2435331 (= res!1033878 call!149152)))

(declare-fun b!2435332 () Bool)

(declare-fun res!1033875 () Bool)

(declare-fun e!1547940 () Bool)

(assert (=> b!2435332 (=> res!1033875 e!1547940)))

(assert (=> b!2435332 (= res!1033875 (not ((_ is ElementMatch!7159) r!13927)))))

(declare-fun e!1547944 () Bool)

(assert (=> b!2435332 (= e!1547944 e!1547940)))

(declare-fun bm!149147 () Bool)

(assert (=> bm!149147 (= call!149152 (isEmpty!16497 s!9460))))

(declare-fun b!2435333 () Bool)

(assert (=> b!2435333 (= e!1547941 e!1547944)))

(declare-fun c!388565 () Bool)

(assert (=> b!2435333 (= c!388565 ((_ is EmptyLang!7159) r!13927))))

(declare-fun d!703772 () Bool)

(assert (=> d!703772 e!1547941))

(declare-fun c!388566 () Bool)

(assert (=> d!703772 (= c!388566 ((_ is EmptyExpr!7159) r!13927))))

(declare-fun e!1547942 () Bool)

(assert (=> d!703772 (= lt!877367 e!1547942)))

(declare-fun c!388567 () Bool)

(assert (=> d!703772 (= c!388567 (isEmpty!16497 s!9460))))

(assert (=> d!703772 (validRegex!2873 r!13927)))

(assert (=> d!703772 (= (matchR!3274 r!13927 s!9460) lt!877367)))

(declare-fun b!2435334 () Bool)

(assert (=> b!2435334 (= e!1547940 e!1547943)))

(declare-fun res!1033876 () Bool)

(assert (=> b!2435334 (=> (not res!1033876) (not e!1547943))))

(assert (=> b!2435334 (= res!1033876 (not lt!877367))))

(declare-fun b!2435335 () Bool)

(declare-fun head!5517 (List!28554) C!14476)

(assert (=> b!2435335 (= e!1547945 (not (= (head!5517 s!9460) (c!388487 r!13927))))))

(declare-fun b!2435336 () Bool)

(declare-fun res!1033877 () Bool)

(assert (=> b!2435336 (=> (not res!1033877) (not e!1547946))))

(assert (=> b!2435336 (= res!1033877 (not call!149152))))

(declare-fun b!2435337 () Bool)

(declare-fun res!1033881 () Bool)

(assert (=> b!2435337 (=> res!1033881 e!1547945)))

(assert (=> b!2435337 (= res!1033881 (not (isEmpty!16497 (tail!3790 s!9460))))))

(declare-fun b!2435338 () Bool)

(declare-fun res!1033882 () Bool)

(assert (=> b!2435338 (=> res!1033882 e!1547940)))

(assert (=> b!2435338 (= res!1033882 e!1547946)))

(declare-fun res!1033880 () Bool)

(assert (=> b!2435338 (=> (not res!1033880) (not e!1547946))))

(assert (=> b!2435338 (= res!1033880 lt!877367)))

(declare-fun b!2435339 () Bool)

(assert (=> b!2435339 (= e!1547944 (not lt!877367))))

(declare-fun b!2435340 () Bool)

(declare-fun derivativeStep!1842 (Regex!7159 C!14476) Regex!7159)

(assert (=> b!2435340 (= e!1547942 (matchR!3274 (derivativeStep!1842 r!13927 (head!5517 s!9460)) (tail!3790 s!9460)))))

(declare-fun b!2435341 () Bool)

(assert (=> b!2435341 (= e!1547946 (= (head!5517 s!9460) (c!388487 r!13927)))))

(declare-fun b!2435342 () Bool)

(assert (=> b!2435342 (= e!1547942 (nullable!2188 r!13927))))

(assert (= (and d!703772 c!388567) b!2435342))

(assert (= (and d!703772 (not c!388567)) b!2435340))

(assert (= (and d!703772 c!388566) b!2435329))

(assert (= (and d!703772 (not c!388566)) b!2435333))

(assert (= (and b!2435333 c!388565) b!2435339))

(assert (= (and b!2435333 (not c!388565)) b!2435332))

(assert (= (and b!2435332 (not res!1033875)) b!2435338))

(assert (= (and b!2435338 res!1033880) b!2435336))

(assert (= (and b!2435336 res!1033877) b!2435330))

(assert (= (and b!2435330 res!1033879) b!2435341))

(assert (= (and b!2435338 (not res!1033882)) b!2435334))

(assert (= (and b!2435334 res!1033876) b!2435331))

(assert (= (and b!2435331 (not res!1033878)) b!2435337))

(assert (= (and b!2435337 (not res!1033881)) b!2435335))

(assert (= (or b!2435329 b!2435331 b!2435336) bm!149147))

(assert (=> bm!149147 m!2815447))

(declare-fun m!2815467 () Bool)

(assert (=> b!2435341 m!2815467))

(assert (=> d!703772 m!2815447))

(declare-fun m!2815469 () Bool)

(assert (=> d!703772 m!2815469))

(assert (=> b!2435340 m!2815467))

(assert (=> b!2435340 m!2815467))

(declare-fun m!2815471 () Bool)

(assert (=> b!2435340 m!2815471))

(declare-fun m!2815473 () Bool)

(assert (=> b!2435340 m!2815473))

(assert (=> b!2435340 m!2815471))

(assert (=> b!2435340 m!2815473))

(declare-fun m!2815475 () Bool)

(assert (=> b!2435340 m!2815475))

(declare-fun m!2815477 () Bool)

(assert (=> b!2435342 m!2815477))

(assert (=> b!2435330 m!2815473))

(assert (=> b!2435330 m!2815473))

(declare-fun m!2815479 () Bool)

(assert (=> b!2435330 m!2815479))

(assert (=> b!2435335 m!2815467))

(assert (=> b!2435337 m!2815473))

(assert (=> b!2435337 m!2815473))

(assert (=> b!2435337 m!2815479))

(assert (=> b!2435004 d!703772))

(declare-fun d!703778 () Bool)

(assert (=> d!703778 (= (matchR!3274 r!13927 s!9460) (matchRSpec!1006 r!13927 s!9460))))

(declare-fun lt!877373 () Unit!41701)

(declare-fun choose!14439 (Regex!7159 List!28554) Unit!41701)

(assert (=> d!703778 (= lt!877373 (choose!14439 r!13927 s!9460))))

(assert (=> d!703778 (validRegex!2873 r!13927)))

(assert (=> d!703778 (= (mainMatchTheorem!1006 r!13927 s!9460) lt!877373)))

(declare-fun bs!464440 () Bool)

(assert (= bs!464440 d!703778))

(assert (=> bs!464440 m!2815323))

(assert (=> bs!464440 m!2815321))

(declare-fun m!2815493 () Bool)

(assert (=> bs!464440 m!2815493))

(assert (=> bs!464440 m!2815469))

(assert (=> b!2435004 d!703778))

(declare-fun d!703780 () Bool)

(declare-fun res!1033892 () Bool)

(declare-fun e!1547956 () Bool)

(assert (=> d!703780 (=> res!1033892 e!1547956)))

(assert (=> d!703780 (= res!1033892 ((_ is Nil!28457) l!9164))))

(assert (=> d!703780 (= (forall!5793 l!9164 lambda!91939) e!1547956)))

(declare-fun b!2435356 () Bool)

(declare-fun e!1547957 () Bool)

(assert (=> b!2435356 (= e!1547956 e!1547957)))

(declare-fun res!1033893 () Bool)

(assert (=> b!2435356 (=> (not res!1033893) (not e!1547957))))

(declare-fun dynLambda!12246 (Int Regex!7159) Bool)

(assert (=> b!2435356 (= res!1033893 (dynLambda!12246 lambda!91939 (h!33858 l!9164)))))

(declare-fun b!2435357 () Bool)

(assert (=> b!2435357 (= e!1547957 (forall!5793 (t!208532 l!9164) lambda!91939))))

(assert (= (and d!703780 (not res!1033892)) b!2435356))

(assert (= (and b!2435356 res!1033893) b!2435357))

(declare-fun b_lambda!74857 () Bool)

(assert (=> (not b_lambda!74857) (not b!2435356)))

(declare-fun m!2815495 () Bool)

(assert (=> b!2435356 m!2815495))

(declare-fun m!2815497 () Bool)

(assert (=> b!2435357 m!2815497))

(assert (=> start!238370 d!703780))

(declare-fun d!703782 () Bool)

(assert (=> d!703782 (= (isEmpty!16494 lt!877337) ((_ is Nil!28457) lt!877337))))

(assert (=> b!2435003 d!703782))

(declare-fun d!703784 () Bool)

(assert (=> d!703784 (= (tail!3788 l!9164) (t!208532 l!9164))))

(assert (=> b!2435003 d!703784))

(declare-fun d!703786 () Bool)

(assert (=> d!703786 (= (isEmpty!16494 l!9164) ((_ is Nil!28457) l!9164))))

(assert (=> b!2434998 d!703786))

(declare-fun b!2435358 () Bool)

(declare-fun e!1547959 () Bool)

(declare-fun lt!877374 () Bool)

(declare-fun call!149153 () Bool)

(assert (=> b!2435358 (= e!1547959 (= lt!877374 call!149153))))

(declare-fun b!2435359 () Bool)

(declare-fun res!1033898 () Bool)

(declare-fun e!1547964 () Bool)

(assert (=> b!2435359 (=> (not res!1033898) (not e!1547964))))

(assert (=> b!2435359 (= res!1033898 (isEmpty!16497 (tail!3790 Nil!28456)))))

(declare-fun b!2435360 () Bool)

(declare-fun e!1547961 () Bool)

(declare-fun e!1547963 () Bool)

(assert (=> b!2435360 (= e!1547961 e!1547963)))

(declare-fun res!1033897 () Bool)

(assert (=> b!2435360 (=> res!1033897 e!1547963)))

(assert (=> b!2435360 (= res!1033897 call!149153)))

(declare-fun b!2435361 () Bool)

(declare-fun res!1033894 () Bool)

(declare-fun e!1547958 () Bool)

(assert (=> b!2435361 (=> res!1033894 e!1547958)))

(assert (=> b!2435361 (= res!1033894 (not ((_ is ElementMatch!7159) EmptyExpr!7159)))))

(declare-fun e!1547962 () Bool)

(assert (=> b!2435361 (= e!1547962 e!1547958)))

(declare-fun bm!149148 () Bool)

(assert (=> bm!149148 (= call!149153 (isEmpty!16497 Nil!28456))))

(declare-fun b!2435362 () Bool)

(assert (=> b!2435362 (= e!1547959 e!1547962)))

(declare-fun c!388570 () Bool)

(assert (=> b!2435362 (= c!388570 ((_ is EmptyLang!7159) EmptyExpr!7159))))

(declare-fun d!703788 () Bool)

(assert (=> d!703788 e!1547959))

(declare-fun c!388571 () Bool)

(assert (=> d!703788 (= c!388571 ((_ is EmptyExpr!7159) EmptyExpr!7159))))

(declare-fun e!1547960 () Bool)

(assert (=> d!703788 (= lt!877374 e!1547960)))

(declare-fun c!388572 () Bool)

(assert (=> d!703788 (= c!388572 (isEmpty!16497 Nil!28456))))

(assert (=> d!703788 (validRegex!2873 EmptyExpr!7159)))

(assert (=> d!703788 (= (matchR!3274 EmptyExpr!7159 Nil!28456) lt!877374)))

(declare-fun b!2435363 () Bool)

(assert (=> b!2435363 (= e!1547958 e!1547961)))

(declare-fun res!1033895 () Bool)

(assert (=> b!2435363 (=> (not res!1033895) (not e!1547961))))

(assert (=> b!2435363 (= res!1033895 (not lt!877374))))

(declare-fun b!2435364 () Bool)

(assert (=> b!2435364 (= e!1547963 (not (= (head!5517 Nil!28456) (c!388487 EmptyExpr!7159))))))

(declare-fun b!2435365 () Bool)

(declare-fun res!1033896 () Bool)

(assert (=> b!2435365 (=> (not res!1033896) (not e!1547964))))

(assert (=> b!2435365 (= res!1033896 (not call!149153))))

(declare-fun b!2435366 () Bool)

(declare-fun res!1033900 () Bool)

(assert (=> b!2435366 (=> res!1033900 e!1547963)))

(assert (=> b!2435366 (= res!1033900 (not (isEmpty!16497 (tail!3790 Nil!28456))))))

(declare-fun b!2435367 () Bool)

(declare-fun res!1033901 () Bool)

(assert (=> b!2435367 (=> res!1033901 e!1547958)))

(assert (=> b!2435367 (= res!1033901 e!1547964)))

(declare-fun res!1033899 () Bool)

(assert (=> b!2435367 (=> (not res!1033899) (not e!1547964))))

(assert (=> b!2435367 (= res!1033899 lt!877374)))

(declare-fun b!2435368 () Bool)

(assert (=> b!2435368 (= e!1547962 (not lt!877374))))

(declare-fun b!2435369 () Bool)

(assert (=> b!2435369 (= e!1547960 (matchR!3274 (derivativeStep!1842 EmptyExpr!7159 (head!5517 Nil!28456)) (tail!3790 Nil!28456)))))

(declare-fun b!2435370 () Bool)

(assert (=> b!2435370 (= e!1547964 (= (head!5517 Nil!28456) (c!388487 EmptyExpr!7159)))))

(declare-fun b!2435371 () Bool)

(assert (=> b!2435371 (= e!1547960 (nullable!2188 EmptyExpr!7159))))

(assert (= (and d!703788 c!388572) b!2435371))

(assert (= (and d!703788 (not c!388572)) b!2435369))

(assert (= (and d!703788 c!388571) b!2435358))

(assert (= (and d!703788 (not c!388571)) b!2435362))

(assert (= (and b!2435362 c!388570) b!2435368))

(assert (= (and b!2435362 (not c!388570)) b!2435361))

(assert (= (and b!2435361 (not res!1033894)) b!2435367))

(assert (= (and b!2435367 res!1033899) b!2435365))

(assert (= (and b!2435365 res!1033896) b!2435359))

(assert (= (and b!2435359 res!1033898) b!2435370))

(assert (= (and b!2435367 (not res!1033901)) b!2435363))

(assert (= (and b!2435363 res!1033895) b!2435360))

(assert (= (and b!2435360 (not res!1033897)) b!2435366))

(assert (= (and b!2435366 (not res!1033900)) b!2435364))

(assert (= (or b!2435358 b!2435360 b!2435365) bm!149148))

(declare-fun m!2815511 () Bool)

(assert (=> bm!149148 m!2815511))

(declare-fun m!2815513 () Bool)

(assert (=> b!2435370 m!2815513))

(assert (=> d!703788 m!2815511))

(declare-fun m!2815515 () Bool)

(assert (=> d!703788 m!2815515))

(assert (=> b!2435369 m!2815513))

(assert (=> b!2435369 m!2815513))

(declare-fun m!2815517 () Bool)

(assert (=> b!2435369 m!2815517))

(declare-fun m!2815519 () Bool)

(assert (=> b!2435369 m!2815519))

(assert (=> b!2435369 m!2815517))

(assert (=> b!2435369 m!2815519))

(declare-fun m!2815521 () Bool)

(assert (=> b!2435369 m!2815521))

(declare-fun m!2815523 () Bool)

(assert (=> b!2435371 m!2815523))

(assert (=> b!2435359 m!2815519))

(assert (=> b!2435359 m!2815519))

(declare-fun m!2815525 () Bool)

(assert (=> b!2435359 m!2815525))

(assert (=> b!2435364 m!2815513))

(assert (=> b!2435366 m!2815519))

(assert (=> b!2435366 m!2815519))

(assert (=> b!2435366 m!2815525))

(assert (=> b!2435008 d!703788))

(declare-fun b!2435390 () Bool)

(declare-fun e!1547970 () Bool)

(declare-fun lt!877375 () Bool)

(declare-fun call!149154 () Bool)

(assert (=> b!2435390 (= e!1547970 (= lt!877375 call!149154))))

(declare-fun b!2435391 () Bool)

(declare-fun res!1033906 () Bool)

(declare-fun e!1547975 () Bool)

(assert (=> b!2435391 (=> (not res!1033906) (not e!1547975))))

(assert (=> b!2435391 (= res!1033906 (isEmpty!16497 (tail!3790 s!9460)))))

(declare-fun b!2435392 () Bool)

(declare-fun e!1547972 () Bool)

(declare-fun e!1547974 () Bool)

(assert (=> b!2435392 (= e!1547972 e!1547974)))

(declare-fun res!1033905 () Bool)

(assert (=> b!2435392 (=> res!1033905 e!1547974)))

(assert (=> b!2435392 (= res!1033905 call!149154)))

(declare-fun b!2435393 () Bool)

(declare-fun res!1033902 () Bool)

(declare-fun e!1547969 () Bool)

(assert (=> b!2435393 (=> res!1033902 e!1547969)))

(assert (=> b!2435393 (= res!1033902 (not ((_ is ElementMatch!7159) lt!877335)))))

(declare-fun e!1547973 () Bool)

(assert (=> b!2435393 (= e!1547973 e!1547969)))

(declare-fun bm!149149 () Bool)

(assert (=> bm!149149 (= call!149154 (isEmpty!16497 s!9460))))

(declare-fun b!2435394 () Bool)

(assert (=> b!2435394 (= e!1547970 e!1547973)))

(declare-fun c!388573 () Bool)

(assert (=> b!2435394 (= c!388573 ((_ is EmptyLang!7159) lt!877335))))

(declare-fun d!703792 () Bool)

(assert (=> d!703792 e!1547970))

(declare-fun c!388574 () Bool)

(assert (=> d!703792 (= c!388574 ((_ is EmptyExpr!7159) lt!877335))))

(declare-fun e!1547971 () Bool)

(assert (=> d!703792 (= lt!877375 e!1547971)))

(declare-fun c!388575 () Bool)

(assert (=> d!703792 (= c!388575 (isEmpty!16497 s!9460))))

(assert (=> d!703792 (validRegex!2873 lt!877335)))

(assert (=> d!703792 (= (matchR!3274 lt!877335 s!9460) lt!877375)))

(declare-fun b!2435395 () Bool)

(assert (=> b!2435395 (= e!1547969 e!1547972)))

(declare-fun res!1033903 () Bool)

(assert (=> b!2435395 (=> (not res!1033903) (not e!1547972))))

(assert (=> b!2435395 (= res!1033903 (not lt!877375))))

(declare-fun b!2435396 () Bool)

(assert (=> b!2435396 (= e!1547974 (not (= (head!5517 s!9460) (c!388487 lt!877335))))))

(declare-fun b!2435397 () Bool)

(declare-fun res!1033904 () Bool)

(assert (=> b!2435397 (=> (not res!1033904) (not e!1547975))))

(assert (=> b!2435397 (= res!1033904 (not call!149154))))

(declare-fun b!2435398 () Bool)

(declare-fun res!1033908 () Bool)

(assert (=> b!2435398 (=> res!1033908 e!1547974)))

(assert (=> b!2435398 (= res!1033908 (not (isEmpty!16497 (tail!3790 s!9460))))))

(declare-fun b!2435399 () Bool)

(declare-fun res!1033909 () Bool)

(assert (=> b!2435399 (=> res!1033909 e!1547969)))

(assert (=> b!2435399 (= res!1033909 e!1547975)))

(declare-fun res!1033907 () Bool)

(assert (=> b!2435399 (=> (not res!1033907) (not e!1547975))))

(assert (=> b!2435399 (= res!1033907 lt!877375)))

(declare-fun b!2435400 () Bool)

(assert (=> b!2435400 (= e!1547973 (not lt!877375))))

(declare-fun b!2435401 () Bool)

(assert (=> b!2435401 (= e!1547971 (matchR!3274 (derivativeStep!1842 lt!877335 (head!5517 s!9460)) (tail!3790 s!9460)))))

(declare-fun b!2435402 () Bool)

(assert (=> b!2435402 (= e!1547975 (= (head!5517 s!9460) (c!388487 lt!877335)))))

(declare-fun b!2435403 () Bool)

(assert (=> b!2435403 (= e!1547971 (nullable!2188 lt!877335))))

(assert (= (and d!703792 c!388575) b!2435403))

(assert (= (and d!703792 (not c!388575)) b!2435401))

(assert (= (and d!703792 c!388574) b!2435390))

(assert (= (and d!703792 (not c!388574)) b!2435394))

(assert (= (and b!2435394 c!388573) b!2435400))

(assert (= (and b!2435394 (not c!388573)) b!2435393))

(assert (= (and b!2435393 (not res!1033902)) b!2435399))

(assert (= (and b!2435399 res!1033907) b!2435397))

(assert (= (and b!2435397 res!1033904) b!2435391))

(assert (= (and b!2435391 res!1033906) b!2435402))

(assert (= (and b!2435399 (not res!1033909)) b!2435395))

(assert (= (and b!2435395 res!1033903) b!2435392))

(assert (= (and b!2435392 (not res!1033905)) b!2435398))

(assert (= (and b!2435398 (not res!1033908)) b!2435396))

(assert (= (or b!2435390 b!2435392 b!2435397) bm!149149))

(assert (=> bm!149149 m!2815447))

(assert (=> b!2435402 m!2815467))

(assert (=> d!703792 m!2815447))

(assert (=> d!703792 m!2815331))

(assert (=> b!2435401 m!2815467))

(assert (=> b!2435401 m!2815467))

(declare-fun m!2815529 () Bool)

(assert (=> b!2435401 m!2815529))

(assert (=> b!2435401 m!2815473))

(assert (=> b!2435401 m!2815529))

(assert (=> b!2435401 m!2815473))

(declare-fun m!2815531 () Bool)

(assert (=> b!2435401 m!2815531))

(declare-fun m!2815533 () Bool)

(assert (=> b!2435403 m!2815533))

(assert (=> b!2435391 m!2815473))

(assert (=> b!2435391 m!2815473))

(assert (=> b!2435391 m!2815479))

(assert (=> b!2435396 m!2815467))

(assert (=> b!2435398 m!2815473))

(assert (=> b!2435398 m!2815473))

(assert (=> b!2435398 m!2815479))

(assert (=> b!2435002 d!703792))

(declare-fun d!703796 () Bool)

(assert (=> d!703796 (= (head!5515 l!9164) (h!33858 l!9164))))

(assert (=> b!2435002 d!703796))

(declare-fun d!703798 () Bool)

(declare-fun isEmpty!16498 (Option!5648) Bool)

(assert (=> d!703798 (= (isDefined!4474 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460)) (not (isEmpty!16498 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460))))))

(declare-fun bs!464443 () Bool)

(assert (= bs!464443 d!703798))

(assert (=> bs!464443 m!2815333))

(declare-fun m!2815535 () Bool)

(assert (=> bs!464443 m!2815535))

(assert (=> b!2434995 d!703798))

(declare-fun bs!464444 () Bool)

(declare-fun d!703800 () Bool)

(assert (= bs!464444 (and d!703800 b!2434995)))

(declare-fun lambda!91969 () Int)

(assert (=> bs!464444 (= lambda!91969 lambda!91940)))

(assert (=> bs!464444 (not (= lambda!91969 lambda!91941))))

(declare-fun bs!464445 () Bool)

(assert (= bs!464445 (and d!703800 b!2435261)))

(assert (=> bs!464445 (not (= lambda!91969 lambda!91956))))

(declare-fun bs!464446 () Bool)

(assert (= bs!464446 (and d!703800 b!2435264)))

(assert (=> bs!464446 (not (= lambda!91969 lambda!91957))))

(assert (=> d!703800 true))

(assert (=> d!703800 true))

(assert (=> d!703800 true))

(assert (=> d!703800 (= (isDefined!4474 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460)) (Exists!1195 lambda!91969))))

(declare-fun lt!877378 () Unit!41701)

(declare-fun choose!14440 (Regex!7159 Regex!7159 List!28554) Unit!41701)

(assert (=> d!703800 (= lt!877378 (choose!14440 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460))))

(assert (=> d!703800 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!703800 (= (lemmaFindConcatSeparationEquivalentToExists!694 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460) lt!877378)))

(declare-fun bs!464447 () Bool)

(assert (= bs!464447 d!703800))

(assert (=> bs!464447 m!2815333))

(declare-fun m!2815537 () Bool)

(assert (=> bs!464447 m!2815537))

(assert (=> bs!464447 m!2815333))

(assert (=> bs!464447 m!2815335))

(declare-fun m!2815539 () Bool)

(assert (=> bs!464447 m!2815539))

(declare-fun m!2815541 () Bool)

(assert (=> bs!464447 m!2815541))

(assert (=> b!2434995 d!703800))

(declare-fun bs!464448 () Bool)

(declare-fun d!703802 () Bool)

(assert (= bs!464448 (and d!703802 d!703800)))

(declare-fun lambda!91974 () Int)

(assert (=> bs!464448 (= lambda!91974 lambda!91969)))

(declare-fun bs!464449 () Bool)

(assert (= bs!464449 (and d!703802 b!2434995)))

(assert (=> bs!464449 (= lambda!91974 lambda!91940)))

(declare-fun bs!464450 () Bool)

(assert (= bs!464450 (and d!703802 b!2435264)))

(assert (=> bs!464450 (not (= lambda!91974 lambda!91957))))

(assert (=> bs!464449 (not (= lambda!91974 lambda!91941))))

(declare-fun bs!464451 () Bool)

(assert (= bs!464451 (and d!703802 b!2435261)))

(assert (=> bs!464451 (not (= lambda!91974 lambda!91956))))

(assert (=> d!703802 true))

(assert (=> d!703802 true))

(assert (=> d!703802 true))

(declare-fun lambda!91975 () Int)

(assert (=> bs!464448 (not (= lambda!91975 lambda!91969))))

(assert (=> bs!464449 (not (= lambda!91975 lambda!91940))))

(declare-fun bs!464452 () Bool)

(assert (= bs!464452 d!703802))

(assert (=> bs!464452 (not (= lambda!91975 lambda!91974))))

(assert (=> bs!464450 (= lambda!91975 lambda!91957)))

(assert (=> bs!464449 (= lambda!91975 lambda!91941)))

(assert (=> bs!464451 (not (= lambda!91975 lambda!91956))))

(assert (=> d!703802 true))

(assert (=> d!703802 true))

(assert (=> d!703802 true))

(assert (=> d!703802 (= (Exists!1195 lambda!91974) (Exists!1195 lambda!91975))))

(declare-fun lt!877381 () Unit!41701)

(declare-fun choose!14441 (Regex!7159 Regex!7159 List!28554) Unit!41701)

(assert (=> d!703802 (= lt!877381 (choose!14441 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460))))

(assert (=> d!703802 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!703802 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!440 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460) lt!877381)))

(declare-fun m!2815543 () Bool)

(assert (=> bs!464452 m!2815543))

(declare-fun m!2815545 () Bool)

(assert (=> bs!464452 m!2815545))

(declare-fun m!2815547 () Bool)

(assert (=> bs!464452 m!2815547))

(assert (=> bs!464452 m!2815541))

(assert (=> b!2434995 d!703802))

(declare-fun b!2435460 () Bool)

(declare-fun e!1548005 () Option!5648)

(assert (=> b!2435460 (= e!1548005 None!5647)))

(declare-fun b!2435461 () Bool)

(declare-fun e!1548002 () Bool)

(declare-fun lt!877388 () Option!5648)

(assert (=> b!2435461 (= e!1548002 (not (isDefined!4474 lt!877388)))))

(declare-fun b!2435462 () Bool)

(declare-fun e!1548004 () Option!5648)

(assert (=> b!2435462 (= e!1548004 (Some!5647 (tuple2!28075 Nil!28456 s!9460)))))

(declare-fun b!2435463 () Bool)

(assert (=> b!2435463 (= e!1548004 e!1548005)))

(declare-fun c!388581 () Bool)

(assert (=> b!2435463 (= c!388581 ((_ is Nil!28456) s!9460))))

(declare-fun b!2435464 () Bool)

(declare-fun res!1033936 () Bool)

(declare-fun e!1548003 () Bool)

(assert (=> b!2435464 (=> (not res!1033936) (not e!1548003))))

(declare-fun get!8775 (Option!5648) tuple2!28074)

(assert (=> b!2435464 (= res!1033936 (matchR!3274 (regTwo!14830 r!13927) (_2!16578 (get!8775 lt!877388))))))

(declare-fun d!703804 () Bool)

(assert (=> d!703804 e!1548002))

(declare-fun res!1033933 () Bool)

(assert (=> d!703804 (=> res!1033933 e!1548002)))

(assert (=> d!703804 (= res!1033933 e!1548003)))

(declare-fun res!1033934 () Bool)

(assert (=> d!703804 (=> (not res!1033934) (not e!1548003))))

(assert (=> d!703804 (= res!1033934 (isDefined!4474 lt!877388))))

(assert (=> d!703804 (= lt!877388 e!1548004)))

(declare-fun c!388580 () Bool)

(declare-fun e!1548006 () Bool)

(assert (=> d!703804 (= c!388580 e!1548006)))

(declare-fun res!1033935 () Bool)

(assert (=> d!703804 (=> (not res!1033935) (not e!1548006))))

(assert (=> d!703804 (= res!1033935 (matchR!3274 (regOne!14830 r!13927) Nil!28456))))

(assert (=> d!703804 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!703804 (= (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460) lt!877388)))

(declare-fun b!2435465 () Bool)

(declare-fun ++!7064 (List!28554 List!28554) List!28554)

(assert (=> b!2435465 (= e!1548003 (= (++!7064 (_1!16578 (get!8775 lt!877388)) (_2!16578 (get!8775 lt!877388))) s!9460))))

(declare-fun b!2435466 () Bool)

(assert (=> b!2435466 (= e!1548006 (matchR!3274 (regTwo!14830 r!13927) s!9460))))

(declare-fun b!2435467 () Bool)

(declare-fun res!1033932 () Bool)

(assert (=> b!2435467 (=> (not res!1033932) (not e!1548003))))

(assert (=> b!2435467 (= res!1033932 (matchR!3274 (regOne!14830 r!13927) (_1!16578 (get!8775 lt!877388))))))

(declare-fun b!2435468 () Bool)

(declare-fun lt!877389 () Unit!41701)

(declare-fun lt!877390 () Unit!41701)

(assert (=> b!2435468 (= lt!877389 lt!877390)))

(assert (=> b!2435468 (= (++!7064 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!690 (List!28554 C!14476 List!28554 List!28554) Unit!41701)

(assert (=> b!2435468 (= lt!877390 (lemmaMoveElementToOtherListKeepsConcatEq!690 Nil!28456 (h!33857 s!9460) (t!208531 s!9460) s!9460))))

(assert (=> b!2435468 (= e!1548005 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460) s!9460))))

(assert (= (and d!703804 res!1033935) b!2435466))

(assert (= (and d!703804 c!388580) b!2435462))

(assert (= (and d!703804 (not c!388580)) b!2435463))

(assert (= (and b!2435463 c!388581) b!2435460))

(assert (= (and b!2435463 (not c!388581)) b!2435468))

(assert (= (and d!703804 res!1033934) b!2435467))

(assert (= (and b!2435467 res!1033932) b!2435464))

(assert (= (and b!2435464 res!1033936) b!2435465))

(assert (= (and d!703804 (not res!1033933)) b!2435461))

(declare-fun m!2815549 () Bool)

(assert (=> b!2435465 m!2815549))

(declare-fun m!2815551 () Bool)

(assert (=> b!2435465 m!2815551))

(assert (=> b!2435467 m!2815549))

(declare-fun m!2815553 () Bool)

(assert (=> b!2435467 m!2815553))

(assert (=> b!2435464 m!2815549))

(declare-fun m!2815555 () Bool)

(assert (=> b!2435464 m!2815555))

(declare-fun m!2815557 () Bool)

(assert (=> b!2435468 m!2815557))

(assert (=> b!2435468 m!2815557))

(declare-fun m!2815559 () Bool)

(assert (=> b!2435468 m!2815559))

(declare-fun m!2815561 () Bool)

(assert (=> b!2435468 m!2815561))

(assert (=> b!2435468 m!2815557))

(declare-fun m!2815563 () Bool)

(assert (=> b!2435468 m!2815563))

(declare-fun m!2815565 () Bool)

(assert (=> b!2435466 m!2815565))

(declare-fun m!2815567 () Bool)

(assert (=> d!703804 m!2815567))

(declare-fun m!2815569 () Bool)

(assert (=> d!703804 m!2815569))

(assert (=> d!703804 m!2815541))

(assert (=> b!2435461 m!2815567))

(assert (=> b!2434995 d!703804))

(declare-fun d!703806 () Bool)

(declare-fun choose!14442 (Int) Bool)

(assert (=> d!703806 (= (Exists!1195 lambda!91941) (choose!14442 lambda!91941))))

(declare-fun bs!464453 () Bool)

(assert (= bs!464453 d!703806))

(declare-fun m!2815571 () Bool)

(assert (=> bs!464453 m!2815571))

(assert (=> b!2434995 d!703806))

(declare-fun d!703808 () Bool)

(assert (=> d!703808 (= (Exists!1195 lambda!91940) (choose!14442 lambda!91940))))

(declare-fun bs!464454 () Bool)

(assert (= bs!464454 d!703808))

(declare-fun m!2815573 () Bool)

(assert (=> bs!464454 m!2815573))

(assert (=> b!2434995 d!703808))

(declare-fun bs!464455 () Bool)

(declare-fun d!703810 () Bool)

(assert (= bs!464455 (and d!703810 start!238370)))

(declare-fun lambda!91978 () Int)

(assert (=> bs!464455 (= lambda!91978 lambda!91939)))

(declare-fun b!2435489 () Bool)

(declare-fun e!1548022 () Bool)

(declare-fun e!1548021 () Bool)

(assert (=> b!2435489 (= e!1548022 e!1548021)))

(declare-fun c!388591 () Bool)

(assert (=> b!2435489 (= c!388591 (isEmpty!16494 lt!877337))))

(declare-fun b!2435490 () Bool)

(declare-fun e!1548023 () Regex!7159)

(declare-fun e!1548024 () Regex!7159)

(assert (=> b!2435490 (= e!1548023 e!1548024)))

(declare-fun c!388592 () Bool)

(assert (=> b!2435490 (= c!388592 ((_ is Cons!28457) lt!877337))))

(assert (=> d!703810 e!1548022))

(declare-fun res!1033942 () Bool)

(assert (=> d!703810 (=> (not res!1033942) (not e!1548022))))

(declare-fun lt!877393 () Regex!7159)

(assert (=> d!703810 (= res!1033942 (validRegex!2873 lt!877393))))

(assert (=> d!703810 (= lt!877393 e!1548023)))

(declare-fun c!388593 () Bool)

(declare-fun e!1548020 () Bool)

(assert (=> d!703810 (= c!388593 e!1548020)))

(declare-fun res!1033941 () Bool)

(assert (=> d!703810 (=> (not res!1033941) (not e!1548020))))

(assert (=> d!703810 (= res!1033941 ((_ is Cons!28457) lt!877337))))

(assert (=> d!703810 (forall!5793 lt!877337 lambda!91978)))

(assert (=> d!703810 (= (generalisedConcat!260 lt!877337) lt!877393)))

(declare-fun b!2435491 () Bool)

(assert (=> b!2435491 (= e!1548023 (h!33858 lt!877337))))

(declare-fun b!2435492 () Bool)

(declare-fun e!1548019 () Bool)

(assert (=> b!2435492 (= e!1548021 e!1548019)))

(declare-fun c!388590 () Bool)

(assert (=> b!2435492 (= c!388590 (isEmpty!16494 (tail!3788 lt!877337)))))

(declare-fun b!2435493 () Bool)

(assert (=> b!2435493 (= e!1548024 EmptyExpr!7159)))

(declare-fun b!2435494 () Bool)

(assert (=> b!2435494 (= e!1548024 (Concat!11795 (h!33858 lt!877337) (generalisedConcat!260 (t!208532 lt!877337))))))

(declare-fun b!2435495 () Bool)

(assert (=> b!2435495 (= e!1548020 (isEmpty!16494 (t!208532 lt!877337)))))

(declare-fun b!2435496 () Bool)

(declare-fun isConcat!206 (Regex!7159) Bool)

(assert (=> b!2435496 (= e!1548019 (isConcat!206 lt!877393))))

(declare-fun b!2435497 () Bool)

(assert (=> b!2435497 (= e!1548019 (= lt!877393 (head!5515 lt!877337)))))

(declare-fun b!2435498 () Bool)

(declare-fun isEmptyExpr!206 (Regex!7159) Bool)

(assert (=> b!2435498 (= e!1548021 (isEmptyExpr!206 lt!877393))))

(assert (= (and d!703810 res!1033941) b!2435495))

(assert (= (and d!703810 c!388593) b!2435491))

(assert (= (and d!703810 (not c!388593)) b!2435490))

(assert (= (and b!2435490 c!388592) b!2435494))

(assert (= (and b!2435490 (not c!388592)) b!2435493))

(assert (= (and d!703810 res!1033942) b!2435489))

(assert (= (and b!2435489 c!388591) b!2435498))

(assert (= (and b!2435489 (not c!388591)) b!2435492))

(assert (= (and b!2435492 c!388590) b!2435497))

(assert (= (and b!2435492 (not c!388590)) b!2435496))

(declare-fun m!2815575 () Bool)

(assert (=> b!2435492 m!2815575))

(assert (=> b!2435492 m!2815575))

(declare-fun m!2815577 () Bool)

(assert (=> b!2435492 m!2815577))

(declare-fun m!2815579 () Bool)

(assert (=> b!2435496 m!2815579))

(declare-fun m!2815581 () Bool)

(assert (=> d!703810 m!2815581))

(declare-fun m!2815583 () Bool)

(assert (=> d!703810 m!2815583))

(declare-fun m!2815585 () Bool)

(assert (=> b!2435497 m!2815585))

(declare-fun m!2815587 () Bool)

(assert (=> b!2435498 m!2815587))

(assert (=> b!2435489 m!2815327))

(declare-fun m!2815589 () Bool)

(assert (=> b!2435495 m!2815589))

(declare-fun m!2815591 () Bool)

(assert (=> b!2435494 m!2815591))

(assert (=> b!2435006 d!703810))

(declare-fun bs!464456 () Bool)

(declare-fun d!703812 () Bool)

(assert (= bs!464456 (and d!703812 start!238370)))

(declare-fun lambda!91979 () Int)

(assert (=> bs!464456 (= lambda!91979 lambda!91939)))

(declare-fun bs!464457 () Bool)

(assert (= bs!464457 (and d!703812 d!703810)))

(assert (=> bs!464457 (= lambda!91979 lambda!91978)))

(declare-fun b!2435499 () Bool)

(declare-fun e!1548028 () Bool)

(declare-fun e!1548027 () Bool)

(assert (=> b!2435499 (= e!1548028 e!1548027)))

(declare-fun c!388595 () Bool)

(assert (=> b!2435499 (= c!388595 (isEmpty!16494 l!9164))))

(declare-fun b!2435500 () Bool)

(declare-fun e!1548029 () Regex!7159)

(declare-fun e!1548030 () Regex!7159)

(assert (=> b!2435500 (= e!1548029 e!1548030)))

(declare-fun c!388596 () Bool)

(assert (=> b!2435500 (= c!388596 ((_ is Cons!28457) l!9164))))

(assert (=> d!703812 e!1548028))

(declare-fun res!1033944 () Bool)

(assert (=> d!703812 (=> (not res!1033944) (not e!1548028))))

(declare-fun lt!877394 () Regex!7159)

(assert (=> d!703812 (= res!1033944 (validRegex!2873 lt!877394))))

(assert (=> d!703812 (= lt!877394 e!1548029)))

(declare-fun c!388597 () Bool)

(declare-fun e!1548026 () Bool)

(assert (=> d!703812 (= c!388597 e!1548026)))

(declare-fun res!1033943 () Bool)

(assert (=> d!703812 (=> (not res!1033943) (not e!1548026))))

(assert (=> d!703812 (= res!1033943 ((_ is Cons!28457) l!9164))))

(assert (=> d!703812 (forall!5793 l!9164 lambda!91979)))

(assert (=> d!703812 (= (generalisedConcat!260 l!9164) lt!877394)))

(declare-fun b!2435501 () Bool)

(assert (=> b!2435501 (= e!1548029 (h!33858 l!9164))))

(declare-fun b!2435502 () Bool)

(declare-fun e!1548025 () Bool)

(assert (=> b!2435502 (= e!1548027 e!1548025)))

(declare-fun c!388594 () Bool)

(assert (=> b!2435502 (= c!388594 (isEmpty!16494 (tail!3788 l!9164)))))

(declare-fun b!2435503 () Bool)

(assert (=> b!2435503 (= e!1548030 EmptyExpr!7159)))

(declare-fun b!2435504 () Bool)

(assert (=> b!2435504 (= e!1548030 (Concat!11795 (h!33858 l!9164) (generalisedConcat!260 (t!208532 l!9164))))))

(declare-fun b!2435505 () Bool)

(assert (=> b!2435505 (= e!1548026 (isEmpty!16494 (t!208532 l!9164)))))

(declare-fun b!2435506 () Bool)

(assert (=> b!2435506 (= e!1548025 (isConcat!206 lt!877394))))

(declare-fun b!2435507 () Bool)

(assert (=> b!2435507 (= e!1548025 (= lt!877394 (head!5515 l!9164)))))

(declare-fun b!2435508 () Bool)

(assert (=> b!2435508 (= e!1548027 (isEmptyExpr!206 lt!877394))))

(assert (= (and d!703812 res!1033943) b!2435505))

(assert (= (and d!703812 c!388597) b!2435501))

(assert (= (and d!703812 (not c!388597)) b!2435500))

(assert (= (and b!2435500 c!388596) b!2435504))

(assert (= (and b!2435500 (not c!388596)) b!2435503))

(assert (= (and d!703812 res!1033944) b!2435499))

(assert (= (and b!2435499 c!388595) b!2435508))

(assert (= (and b!2435499 (not c!388595)) b!2435502))

(assert (= (and b!2435502 c!388594) b!2435507))

(assert (= (and b!2435502 (not c!388594)) b!2435506))

(assert (=> b!2435502 m!2815329))

(assert (=> b!2435502 m!2815329))

(declare-fun m!2815593 () Bool)

(assert (=> b!2435502 m!2815593))

(declare-fun m!2815595 () Bool)

(assert (=> b!2435506 m!2815595))

(declare-fun m!2815597 () Bool)

(assert (=> d!703812 m!2815597))

(declare-fun m!2815599 () Bool)

(assert (=> d!703812 m!2815599))

(assert (=> b!2435507 m!2815319))

(declare-fun m!2815601 () Bool)

(assert (=> b!2435508 m!2815601))

(assert (=> b!2435499 m!2815315))

(declare-fun m!2815603 () Bool)

(assert (=> b!2435505 m!2815603))

(declare-fun m!2815605 () Bool)

(assert (=> b!2435504 m!2815605))

(assert (=> b!2434999 d!703812))

(declare-fun b!2435520 () Bool)

(declare-fun e!1548033 () Bool)

(declare-fun tp!773457 () Bool)

(declare-fun tp!773455 () Bool)

(assert (=> b!2435520 (= e!1548033 (and tp!773457 tp!773455))))

(declare-fun b!2435519 () Bool)

(assert (=> b!2435519 (= e!1548033 tp_is_empty!11731)))

(declare-fun b!2435522 () Bool)

(declare-fun tp!773454 () Bool)

(declare-fun tp!773456 () Bool)

(assert (=> b!2435522 (= e!1548033 (and tp!773454 tp!773456))))

(assert (=> b!2435007 (= tp!773387 e!1548033)))

(declare-fun b!2435521 () Bool)

(declare-fun tp!773453 () Bool)

(assert (=> b!2435521 (= e!1548033 tp!773453)))

(assert (= (and b!2435007 ((_ is ElementMatch!7159) (h!33858 l!9164))) b!2435519))

(assert (= (and b!2435007 ((_ is Concat!11795) (h!33858 l!9164))) b!2435520))

(assert (= (and b!2435007 ((_ is Star!7159) (h!33858 l!9164))) b!2435521))

(assert (= (and b!2435007 ((_ is Union!7159) (h!33858 l!9164))) b!2435522))

(declare-fun b!2435527 () Bool)

(declare-fun e!1548036 () Bool)

(declare-fun tp!773462 () Bool)

(declare-fun tp!773463 () Bool)

(assert (=> b!2435527 (= e!1548036 (and tp!773462 tp!773463))))

(assert (=> b!2435007 (= tp!773391 e!1548036)))

(assert (= (and b!2435007 ((_ is Cons!28457) (t!208532 l!9164))) b!2435527))

(declare-fun b!2435529 () Bool)

(declare-fun e!1548037 () Bool)

(declare-fun tp!773468 () Bool)

(declare-fun tp!773466 () Bool)

(assert (=> b!2435529 (= e!1548037 (and tp!773468 tp!773466))))

(declare-fun b!2435528 () Bool)

(assert (=> b!2435528 (= e!1548037 tp_is_empty!11731)))

(declare-fun b!2435531 () Bool)

(declare-fun tp!773465 () Bool)

(declare-fun tp!773467 () Bool)

(assert (=> b!2435531 (= e!1548037 (and tp!773465 tp!773467))))

(assert (=> b!2435001 (= tp!773386 e!1548037)))

(declare-fun b!2435530 () Bool)

(declare-fun tp!773464 () Bool)

(assert (=> b!2435530 (= e!1548037 tp!773464)))

(assert (= (and b!2435001 ((_ is ElementMatch!7159) (regOne!14830 r!13927))) b!2435528))

(assert (= (and b!2435001 ((_ is Concat!11795) (regOne!14830 r!13927))) b!2435529))

(assert (= (and b!2435001 ((_ is Star!7159) (regOne!14830 r!13927))) b!2435530))

(assert (= (and b!2435001 ((_ is Union!7159) (regOne!14830 r!13927))) b!2435531))

(declare-fun b!2435533 () Bool)

(declare-fun e!1548038 () Bool)

(declare-fun tp!773473 () Bool)

(declare-fun tp!773471 () Bool)

(assert (=> b!2435533 (= e!1548038 (and tp!773473 tp!773471))))

(declare-fun b!2435532 () Bool)

(assert (=> b!2435532 (= e!1548038 tp_is_empty!11731)))

(declare-fun b!2435535 () Bool)

(declare-fun tp!773470 () Bool)

(declare-fun tp!773472 () Bool)

(assert (=> b!2435535 (= e!1548038 (and tp!773470 tp!773472))))

(assert (=> b!2435001 (= tp!773392 e!1548038)))

(declare-fun b!2435534 () Bool)

(declare-fun tp!773469 () Bool)

(assert (=> b!2435534 (= e!1548038 tp!773469)))

(assert (= (and b!2435001 ((_ is ElementMatch!7159) (regTwo!14830 r!13927))) b!2435532))

(assert (= (and b!2435001 ((_ is Concat!11795) (regTwo!14830 r!13927))) b!2435533))

(assert (= (and b!2435001 ((_ is Star!7159) (regTwo!14830 r!13927))) b!2435534))

(assert (= (and b!2435001 ((_ is Union!7159) (regTwo!14830 r!13927))) b!2435535))

(declare-fun b!2435537 () Bool)

(declare-fun e!1548039 () Bool)

(declare-fun tp!773478 () Bool)

(declare-fun tp!773476 () Bool)

(assert (=> b!2435537 (= e!1548039 (and tp!773478 tp!773476))))

(declare-fun b!2435536 () Bool)

(assert (=> b!2435536 (= e!1548039 tp_is_empty!11731)))

(declare-fun b!2435539 () Bool)

(declare-fun tp!773475 () Bool)

(declare-fun tp!773477 () Bool)

(assert (=> b!2435539 (= e!1548039 (and tp!773475 tp!773477))))

(assert (=> b!2435005 (= tp!773388 e!1548039)))

(declare-fun b!2435538 () Bool)

(declare-fun tp!773474 () Bool)

(assert (=> b!2435538 (= e!1548039 tp!773474)))

(assert (= (and b!2435005 ((_ is ElementMatch!7159) (regOne!14831 r!13927))) b!2435536))

(assert (= (and b!2435005 ((_ is Concat!11795) (regOne!14831 r!13927))) b!2435537))

(assert (= (and b!2435005 ((_ is Star!7159) (regOne!14831 r!13927))) b!2435538))

(assert (= (and b!2435005 ((_ is Union!7159) (regOne!14831 r!13927))) b!2435539))

(declare-fun b!2435541 () Bool)

(declare-fun e!1548040 () Bool)

(declare-fun tp!773483 () Bool)

(declare-fun tp!773481 () Bool)

(assert (=> b!2435541 (= e!1548040 (and tp!773483 tp!773481))))

(declare-fun b!2435540 () Bool)

(assert (=> b!2435540 (= e!1548040 tp_is_empty!11731)))

(declare-fun b!2435543 () Bool)

(declare-fun tp!773480 () Bool)

(declare-fun tp!773482 () Bool)

(assert (=> b!2435543 (= e!1548040 (and tp!773480 tp!773482))))

(assert (=> b!2435005 (= tp!773389 e!1548040)))

(declare-fun b!2435542 () Bool)

(declare-fun tp!773479 () Bool)

(assert (=> b!2435542 (= e!1548040 tp!773479)))

(assert (= (and b!2435005 ((_ is ElementMatch!7159) (regTwo!14831 r!13927))) b!2435540))

(assert (= (and b!2435005 ((_ is Concat!11795) (regTwo!14831 r!13927))) b!2435541))

(assert (= (and b!2435005 ((_ is Star!7159) (regTwo!14831 r!13927))) b!2435542))

(assert (= (and b!2435005 ((_ is Union!7159) (regTwo!14831 r!13927))) b!2435543))

(declare-fun b!2435545 () Bool)

(declare-fun e!1548041 () Bool)

(declare-fun tp!773488 () Bool)

(declare-fun tp!773486 () Bool)

(assert (=> b!2435545 (= e!1548041 (and tp!773488 tp!773486))))

(declare-fun b!2435544 () Bool)

(assert (=> b!2435544 (= e!1548041 tp_is_empty!11731)))

(declare-fun b!2435547 () Bool)

(declare-fun tp!773485 () Bool)

(declare-fun tp!773487 () Bool)

(assert (=> b!2435547 (= e!1548041 (and tp!773485 tp!773487))))

(assert (=> b!2435000 (= tp!773390 e!1548041)))

(declare-fun b!2435546 () Bool)

(declare-fun tp!773484 () Bool)

(assert (=> b!2435546 (= e!1548041 tp!773484)))

(assert (= (and b!2435000 ((_ is ElementMatch!7159) (reg!7488 r!13927))) b!2435544))

(assert (= (and b!2435000 ((_ is Concat!11795) (reg!7488 r!13927))) b!2435545))

(assert (= (and b!2435000 ((_ is Star!7159) (reg!7488 r!13927))) b!2435546))

(assert (= (and b!2435000 ((_ is Union!7159) (reg!7488 r!13927))) b!2435547))

(declare-fun b!2435552 () Bool)

(declare-fun e!1548044 () Bool)

(declare-fun tp!773491 () Bool)

(assert (=> b!2435552 (= e!1548044 (and tp_is_empty!11731 tp!773491))))

(assert (=> b!2435010 (= tp!773393 e!1548044)))

(assert (= (and b!2435010 ((_ is Cons!28456) (t!208531 s!9460))) b!2435552))

(declare-fun b_lambda!74861 () Bool)

(assert (= b_lambda!74857 (or start!238370 b_lambda!74861)))

(declare-fun bs!464458 () Bool)

(declare-fun d!703814 () Bool)

(assert (= bs!464458 (and d!703814 start!238370)))

(assert (=> bs!464458 (= (dynLambda!12246 lambda!91939 (h!33858 l!9164)) (validRegex!2873 (h!33858 l!9164)))))

(declare-fun m!2815607 () Bool)

(assert (=> bs!464458 m!2815607))

(assert (=> b!2435356 d!703814))

(check-sat (not b!2435465) (not b!2435464) (not b!2435498) (not bm!149143) (not b!2435489) (not b!2435492) (not bm!149148) (not b!2435541) (not bm!149127) (not b!2435466) (not b!2435359) (not b!2435533) (not b!2435391) (not b!2435496) (not b!2435366) (not b!2435537) (not b!2435266) (not b!2435520) (not b!2435468) (not bm!149126) (not b!2435521) (not d!703808) (not b!2435461) (not b!2435398) (not bm!149144) (not b!2435507) (not b!2435269) tp_is_empty!11731 (not b!2435494) (not b!2435530) (not b!2435497) (not d!703804) (not b!2435364) (not b!2435506) (not d!703802) (not b!2435527) (not b!2435531) (not b!2435402) (not b!2435337) (not d!703772) (not b!2435546) (not b!2435093) (not b!2435545) (not b!2435522) (not b!2435529) (not b!2435538) (not b!2435539) (not b!2435341) (not b!2435396) (not b!2435502) (not b!2435330) (not b!2435371) (not d!703792) (not b!2435547) (not d!703812) (not d!703806) (not b!2435508) (not b!2435495) (not b!2435543) (not b!2435403) (not b!2435552) (not b!2435534) (not b!2435401) (not b!2435467) (not b!2435370) (not b!2435342) (not b!2435535) (not bs!464458) (not b!2435369) (not b!2435542) (not bm!149149) (not d!703778) (not b!2435499) (not b!2435505) (not b!2435340) (not bm!149147) (not d!703798) (not b_lambda!74861) (not d!703800) (not d!703788) (not b!2435335) (not b!2435504) (not d!703810) (not b!2435357))
(check-sat)
(get-model)

(declare-fun b!2435699 () Bool)

(declare-fun res!1034006 () Bool)

(declare-fun e!1548128 () Bool)

(assert (=> b!2435699 (=> (not res!1034006) (not e!1548128))))

(declare-fun lt!877414 () List!28554)

(declare-fun size!22255 (List!28554) Int)

(assert (=> b!2435699 (= res!1034006 (= (size!22255 lt!877414) (+ (size!22255 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))) (size!22255 (t!208531 s!9460)))))))

(declare-fun b!2435697 () Bool)

(declare-fun e!1548127 () List!28554)

(assert (=> b!2435697 (= e!1548127 (t!208531 s!9460))))

(declare-fun d!703864 () Bool)

(assert (=> d!703864 e!1548128))

(declare-fun res!1034005 () Bool)

(assert (=> d!703864 (=> (not res!1034005) (not e!1548128))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3917 (List!28554) (InoxSet C!14476))

(assert (=> d!703864 (= res!1034005 (= (content!3917 lt!877414) ((_ map or) (content!3917 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))) (content!3917 (t!208531 s!9460)))))))

(assert (=> d!703864 (= lt!877414 e!1548127)))

(declare-fun c!388640 () Bool)

(assert (=> d!703864 (= c!388640 ((_ is Nil!28456) (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))))))

(assert (=> d!703864 (= (++!7064 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460)) lt!877414)))

(declare-fun b!2435698 () Bool)

(assert (=> b!2435698 (= e!1548127 (Cons!28456 (h!33857 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))) (++!7064 (t!208531 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))) (t!208531 s!9460))))))

(declare-fun b!2435700 () Bool)

(assert (=> b!2435700 (= e!1548128 (or (not (= (t!208531 s!9460) Nil!28456)) (= lt!877414 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)))))))

(assert (= (and d!703864 c!388640) b!2435697))

(assert (= (and d!703864 (not c!388640)) b!2435698))

(assert (= (and d!703864 res!1034005) b!2435699))

(assert (= (and b!2435699 res!1034006) b!2435700))

(declare-fun m!2815741 () Bool)

(assert (=> b!2435699 m!2815741))

(assert (=> b!2435699 m!2815557))

(declare-fun m!2815745 () Bool)

(assert (=> b!2435699 m!2815745))

(declare-fun m!2815747 () Bool)

(assert (=> b!2435699 m!2815747))

(declare-fun m!2815749 () Bool)

(assert (=> d!703864 m!2815749))

(assert (=> d!703864 m!2815557))

(declare-fun m!2815751 () Bool)

(assert (=> d!703864 m!2815751))

(declare-fun m!2815753 () Bool)

(assert (=> d!703864 m!2815753))

(declare-fun m!2815755 () Bool)

(assert (=> b!2435698 m!2815755))

(assert (=> b!2435468 d!703864))

(declare-fun b!2435705 () Bool)

(declare-fun res!1034010 () Bool)

(declare-fun e!1548132 () Bool)

(assert (=> b!2435705 (=> (not res!1034010) (not e!1548132))))

(declare-fun lt!877415 () List!28554)

(assert (=> b!2435705 (= res!1034010 (= (size!22255 lt!877415) (+ (size!22255 Nil!28456) (size!22255 (Cons!28456 (h!33857 s!9460) Nil!28456)))))))

(declare-fun b!2435703 () Bool)

(declare-fun e!1548131 () List!28554)

(assert (=> b!2435703 (= e!1548131 (Cons!28456 (h!33857 s!9460) Nil!28456))))

(declare-fun d!703874 () Bool)

(assert (=> d!703874 e!1548132))

(declare-fun res!1034009 () Bool)

(assert (=> d!703874 (=> (not res!1034009) (not e!1548132))))

(assert (=> d!703874 (= res!1034009 (= (content!3917 lt!877415) ((_ map or) (content!3917 Nil!28456) (content!3917 (Cons!28456 (h!33857 s!9460) Nil!28456)))))))

(assert (=> d!703874 (= lt!877415 e!1548131)))

(declare-fun c!388641 () Bool)

(assert (=> d!703874 (= c!388641 ((_ is Nil!28456) Nil!28456))))

(assert (=> d!703874 (= (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) lt!877415)))

(declare-fun b!2435704 () Bool)

(assert (=> b!2435704 (= e!1548131 (Cons!28456 (h!33857 Nil!28456) (++!7064 (t!208531 Nil!28456) (Cons!28456 (h!33857 s!9460) Nil!28456))))))

(declare-fun b!2435706 () Bool)

(assert (=> b!2435706 (= e!1548132 (or (not (= (Cons!28456 (h!33857 s!9460) Nil!28456) Nil!28456)) (= lt!877415 Nil!28456)))))

(assert (= (and d!703874 c!388641) b!2435703))

(assert (= (and d!703874 (not c!388641)) b!2435704))

(assert (= (and d!703874 res!1034009) b!2435705))

(assert (= (and b!2435705 res!1034010) b!2435706))

(declare-fun m!2815761 () Bool)

(assert (=> b!2435705 m!2815761))

(declare-fun m!2815763 () Bool)

(assert (=> b!2435705 m!2815763))

(declare-fun m!2815765 () Bool)

(assert (=> b!2435705 m!2815765))

(declare-fun m!2815767 () Bool)

(assert (=> d!703874 m!2815767))

(declare-fun m!2815769 () Bool)

(assert (=> d!703874 m!2815769))

(declare-fun m!2815771 () Bool)

(assert (=> d!703874 m!2815771))

(declare-fun m!2815773 () Bool)

(assert (=> b!2435704 m!2815773))

(assert (=> b!2435468 d!703874))

(declare-fun d!703878 () Bool)

(assert (=> d!703878 (= (++!7064 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460)) s!9460)))

(declare-fun lt!877418 () Unit!41701)

(declare-fun choose!14443 (List!28554 C!14476 List!28554 List!28554) Unit!41701)

(assert (=> d!703878 (= lt!877418 (choose!14443 Nil!28456 (h!33857 s!9460) (t!208531 s!9460) s!9460))))

(assert (=> d!703878 (= (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) (t!208531 s!9460))) s!9460)))

(assert (=> d!703878 (= (lemmaMoveElementToOtherListKeepsConcatEq!690 Nil!28456 (h!33857 s!9460) (t!208531 s!9460) s!9460) lt!877418)))

(declare-fun bs!464470 () Bool)

(assert (= bs!464470 d!703878))

(assert (=> bs!464470 m!2815557))

(assert (=> bs!464470 m!2815557))

(assert (=> bs!464470 m!2815559))

(declare-fun m!2815775 () Bool)

(assert (=> bs!464470 m!2815775))

(declare-fun m!2815777 () Bool)

(assert (=> bs!464470 m!2815777))

(assert (=> b!2435468 d!703878))

(declare-fun b!2435718 () Bool)

(declare-fun e!1548143 () Option!5648)

(assert (=> b!2435718 (= e!1548143 None!5647)))

(declare-fun b!2435719 () Bool)

(declare-fun e!1548140 () Bool)

(declare-fun lt!877419 () Option!5648)

(assert (=> b!2435719 (= e!1548140 (not (isDefined!4474 lt!877419)))))

(declare-fun b!2435720 () Bool)

(declare-fun e!1548142 () Option!5648)

(assert (=> b!2435720 (= e!1548142 (Some!5647 (tuple2!28075 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460))))))

(declare-fun b!2435721 () Bool)

(assert (=> b!2435721 (= e!1548142 e!1548143)))

(declare-fun c!388647 () Bool)

(assert (=> b!2435721 (= c!388647 ((_ is Nil!28456) (t!208531 s!9460)))))

(declare-fun b!2435722 () Bool)

(declare-fun res!1034018 () Bool)

(declare-fun e!1548141 () Bool)

(assert (=> b!2435722 (=> (not res!1034018) (not e!1548141))))

(assert (=> b!2435722 (= res!1034018 (matchR!3274 (regTwo!14830 r!13927) (_2!16578 (get!8775 lt!877419))))))

(declare-fun d!703886 () Bool)

(assert (=> d!703886 e!1548140))

(declare-fun res!1034015 () Bool)

(assert (=> d!703886 (=> res!1034015 e!1548140)))

(assert (=> d!703886 (= res!1034015 e!1548141)))

(declare-fun res!1034016 () Bool)

(assert (=> d!703886 (=> (not res!1034016) (not e!1548141))))

(assert (=> d!703886 (= res!1034016 (isDefined!4474 lt!877419))))

(assert (=> d!703886 (= lt!877419 e!1548142)))

(declare-fun c!388646 () Bool)

(declare-fun e!1548144 () Bool)

(assert (=> d!703886 (= c!388646 e!1548144)))

(declare-fun res!1034017 () Bool)

(assert (=> d!703886 (=> (not res!1034017) (not e!1548144))))

(assert (=> d!703886 (= res!1034017 (matchR!3274 (regOne!14830 r!13927) (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456))))))

(assert (=> d!703886 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!703886 (= (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (t!208531 s!9460) s!9460) lt!877419)))

(declare-fun b!2435723 () Bool)

(assert (=> b!2435723 (= e!1548141 (= (++!7064 (_1!16578 (get!8775 lt!877419)) (_2!16578 (get!8775 lt!877419))) s!9460))))

(declare-fun b!2435724 () Bool)

(assert (=> b!2435724 (= e!1548144 (matchR!3274 (regTwo!14830 r!13927) (t!208531 s!9460)))))

(declare-fun b!2435725 () Bool)

(declare-fun res!1034014 () Bool)

(assert (=> b!2435725 (=> (not res!1034014) (not e!1548141))))

(assert (=> b!2435725 (= res!1034014 (matchR!3274 (regOne!14830 r!13927) (_1!16578 (get!8775 lt!877419))))))

(declare-fun b!2435726 () Bool)

(declare-fun lt!877420 () Unit!41701)

(declare-fun lt!877421 () Unit!41701)

(assert (=> b!2435726 (= lt!877420 lt!877421)))

(assert (=> b!2435726 (= (++!7064 (++!7064 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (Cons!28456 (h!33857 (t!208531 s!9460)) Nil!28456)) (t!208531 (t!208531 s!9460))) s!9460)))

(assert (=> b!2435726 (= lt!877421 (lemmaMoveElementToOtherListKeepsConcatEq!690 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (h!33857 (t!208531 s!9460)) (t!208531 (t!208531 s!9460)) s!9460))))

(assert (=> b!2435726 (= e!1548143 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) (++!7064 (++!7064 Nil!28456 (Cons!28456 (h!33857 s!9460) Nil!28456)) (Cons!28456 (h!33857 (t!208531 s!9460)) Nil!28456)) (t!208531 (t!208531 s!9460)) s!9460))))

(assert (= (and d!703886 res!1034017) b!2435724))

(assert (= (and d!703886 c!388646) b!2435720))

(assert (= (and d!703886 (not c!388646)) b!2435721))

(assert (= (and b!2435721 c!388647) b!2435718))

(assert (= (and b!2435721 (not c!388647)) b!2435726))

(assert (= (and d!703886 res!1034016) b!2435725))

(assert (= (and b!2435725 res!1034014) b!2435722))

(assert (= (and b!2435722 res!1034018) b!2435723))

(assert (= (and d!703886 (not res!1034015)) b!2435719))

(declare-fun m!2815779 () Bool)

(assert (=> b!2435723 m!2815779))

(declare-fun m!2815781 () Bool)

(assert (=> b!2435723 m!2815781))

(assert (=> b!2435725 m!2815779))

(declare-fun m!2815789 () Bool)

(assert (=> b!2435725 m!2815789))

(assert (=> b!2435722 m!2815779))

(declare-fun m!2815791 () Bool)

(assert (=> b!2435722 m!2815791))

(assert (=> b!2435726 m!2815557))

(declare-fun m!2815793 () Bool)

(assert (=> b!2435726 m!2815793))

(assert (=> b!2435726 m!2815793))

(declare-fun m!2815795 () Bool)

(assert (=> b!2435726 m!2815795))

(assert (=> b!2435726 m!2815557))

(declare-fun m!2815797 () Bool)

(assert (=> b!2435726 m!2815797))

(assert (=> b!2435726 m!2815793))

(declare-fun m!2815799 () Bool)

(assert (=> b!2435726 m!2815799))

(declare-fun m!2815801 () Bool)

(assert (=> b!2435724 m!2815801))

(declare-fun m!2815803 () Bool)

(assert (=> d!703886 m!2815803))

(assert (=> d!703886 m!2815557))

(declare-fun m!2815805 () Bool)

(assert (=> d!703886 m!2815805))

(assert (=> d!703886 m!2815541))

(assert (=> b!2435719 m!2815803))

(assert (=> b!2435468 d!703886))

(declare-fun d!703890 () Bool)

(assert (=> d!703890 (= (isEmpty!16494 (tail!3788 lt!877337)) ((_ is Nil!28457) (tail!3788 lt!877337)))))

(assert (=> b!2435492 d!703890))

(declare-fun d!703892 () Bool)

(assert (=> d!703892 (= (tail!3788 lt!877337) (t!208532 lt!877337))))

(assert (=> b!2435492 d!703892))

(declare-fun d!703894 () Bool)

(assert (=> d!703894 (= (isEmpty!16497 Nil!28456) true)))

(assert (=> bm!149148 d!703894))

(declare-fun b!2435727 () Bool)

(declare-fun e!1548150 () Bool)

(declare-fun e!1548147 () Bool)

(assert (=> b!2435727 (= e!1548150 e!1548147)))

(declare-fun c!388649 () Bool)

(assert (=> b!2435727 (= c!388649 ((_ is Union!7159) (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))

(declare-fun b!2435728 () Bool)

(declare-fun e!1548146 () Bool)

(declare-fun call!149183 () Bool)

(assert (=> b!2435728 (= e!1548146 call!149183)))

(declare-fun b!2435729 () Bool)

(declare-fun e!1548149 () Bool)

(declare-fun e!1548145 () Bool)

(assert (=> b!2435729 (= e!1548149 e!1548145)))

(declare-fun res!1034020 () Bool)

(assert (=> b!2435729 (=> (not res!1034020) (not e!1548145))))

(assert (=> b!2435729 (= res!1034020 call!149183)))

(declare-fun bm!149176 () Bool)

(declare-fun call!149182 () Bool)

(declare-fun call!149181 () Bool)

(assert (=> bm!149176 (= call!149182 call!149181)))

(declare-fun bm!149177 () Bool)

(assert (=> bm!149177 (= call!149183 (validRegex!2873 (ite c!388649 (regTwo!14831 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))) (regOne!14830 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))))

(declare-fun b!2435730 () Bool)

(declare-fun e!1548148 () Bool)

(assert (=> b!2435730 (= e!1548150 e!1548148)))

(declare-fun res!1034022 () Bool)

(assert (=> b!2435730 (= res!1034022 (not (nullable!2188 (reg!7488 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))))

(assert (=> b!2435730 (=> (not res!1034022) (not e!1548148))))

(declare-fun b!2435731 () Bool)

(assert (=> b!2435731 (= e!1548145 call!149182)))

(declare-fun d!703896 () Bool)

(declare-fun res!1034019 () Bool)

(declare-fun e!1548151 () Bool)

(assert (=> d!703896 (=> res!1034019 e!1548151)))

(assert (=> d!703896 (= res!1034019 ((_ is ElementMatch!7159) (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))

(assert (=> d!703896 (= (validRegex!2873 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))) e!1548151)))

(declare-fun b!2435732 () Bool)

(declare-fun res!1034021 () Bool)

(assert (=> b!2435732 (=> res!1034021 e!1548149)))

(assert (=> b!2435732 (= res!1034021 (not ((_ is Concat!11795) (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335))))))))

(assert (=> b!2435732 (= e!1548147 e!1548149)))

(declare-fun b!2435733 () Bool)

(assert (=> b!2435733 (= e!1548151 e!1548150)))

(declare-fun c!388648 () Bool)

(assert (=> b!2435733 (= c!388648 ((_ is Star!7159) (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))))))

(declare-fun b!2435734 () Bool)

(declare-fun res!1034023 () Bool)

(assert (=> b!2435734 (=> (not res!1034023) (not e!1548146))))

(assert (=> b!2435734 (= res!1034023 call!149182)))

(assert (=> b!2435734 (= e!1548147 e!1548146)))

(declare-fun b!2435735 () Bool)

(assert (=> b!2435735 (= e!1548148 call!149181)))

(declare-fun bm!149178 () Bool)

(assert (=> bm!149178 (= call!149181 (validRegex!2873 (ite c!388648 (reg!7488 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))) (ite c!388649 (regOne!14831 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335)))) (regTwo!14830 (ite c!388510 (reg!7488 lt!877335) (ite c!388511 (regOne!14831 lt!877335) (regTwo!14830 lt!877335))))))))))

(assert (= (and d!703896 (not res!1034019)) b!2435733))

(assert (= (and b!2435733 c!388648) b!2435730))

(assert (= (and b!2435733 (not c!388648)) b!2435727))

(assert (= (and b!2435730 res!1034022) b!2435735))

(assert (= (and b!2435727 c!388649) b!2435734))

(assert (= (and b!2435727 (not c!388649)) b!2435732))

(assert (= (and b!2435734 res!1034023) b!2435728))

(assert (= (and b!2435732 (not res!1034021)) b!2435729))

(assert (= (and b!2435729 res!1034020) b!2435731))

(assert (= (or b!2435734 b!2435731) bm!149176))

(assert (= (or b!2435728 b!2435729) bm!149177))

(assert (= (or b!2435735 bm!149176) bm!149178))

(declare-fun m!2815807 () Bool)

(assert (=> bm!149177 m!2815807))

(declare-fun m!2815809 () Bool)

(assert (=> b!2435730 m!2815809))

(declare-fun m!2815811 () Bool)

(assert (=> bm!149178 m!2815811))

(assert (=> bm!149127 d!703896))

(declare-fun b!2435736 () Bool)

(declare-fun e!1548153 () Bool)

(declare-fun lt!877422 () Bool)

(declare-fun call!149184 () Bool)

(assert (=> b!2435736 (= e!1548153 (= lt!877422 call!149184))))

(declare-fun b!2435737 () Bool)

(declare-fun res!1034028 () Bool)

(declare-fun e!1548158 () Bool)

(assert (=> b!2435737 (=> (not res!1034028) (not e!1548158))))

(assert (=> b!2435737 (= res!1034028 (isEmpty!16497 (tail!3790 s!9460)))))

(declare-fun b!2435738 () Bool)

(declare-fun e!1548155 () Bool)

(declare-fun e!1548157 () Bool)

(assert (=> b!2435738 (= e!1548155 e!1548157)))

(declare-fun res!1034027 () Bool)

(assert (=> b!2435738 (=> res!1034027 e!1548157)))

(assert (=> b!2435738 (= res!1034027 call!149184)))

(declare-fun b!2435739 () Bool)

(declare-fun res!1034024 () Bool)

(declare-fun e!1548152 () Bool)

(assert (=> b!2435739 (=> res!1034024 e!1548152)))

(assert (=> b!2435739 (= res!1034024 (not ((_ is ElementMatch!7159) (regTwo!14830 r!13927))))))

(declare-fun e!1548156 () Bool)

(assert (=> b!2435739 (= e!1548156 e!1548152)))

(declare-fun bm!149179 () Bool)

(assert (=> bm!149179 (= call!149184 (isEmpty!16497 s!9460))))

(declare-fun b!2435740 () Bool)

(assert (=> b!2435740 (= e!1548153 e!1548156)))

(declare-fun c!388650 () Bool)

(assert (=> b!2435740 (= c!388650 ((_ is EmptyLang!7159) (regTwo!14830 r!13927)))))

(declare-fun d!703898 () Bool)

(assert (=> d!703898 e!1548153))

(declare-fun c!388651 () Bool)

(assert (=> d!703898 (= c!388651 ((_ is EmptyExpr!7159) (regTwo!14830 r!13927)))))

(declare-fun e!1548154 () Bool)

(assert (=> d!703898 (= lt!877422 e!1548154)))

(declare-fun c!388652 () Bool)

(assert (=> d!703898 (= c!388652 (isEmpty!16497 s!9460))))

(assert (=> d!703898 (validRegex!2873 (regTwo!14830 r!13927))))

(assert (=> d!703898 (= (matchR!3274 (regTwo!14830 r!13927) s!9460) lt!877422)))

(declare-fun b!2435741 () Bool)

(assert (=> b!2435741 (= e!1548152 e!1548155)))

(declare-fun res!1034025 () Bool)

(assert (=> b!2435741 (=> (not res!1034025) (not e!1548155))))

(assert (=> b!2435741 (= res!1034025 (not lt!877422))))

(declare-fun b!2435742 () Bool)

(assert (=> b!2435742 (= e!1548157 (not (= (head!5517 s!9460) (c!388487 (regTwo!14830 r!13927)))))))

(declare-fun b!2435743 () Bool)

(declare-fun res!1034026 () Bool)

(assert (=> b!2435743 (=> (not res!1034026) (not e!1548158))))

(assert (=> b!2435743 (= res!1034026 (not call!149184))))

(declare-fun b!2435744 () Bool)

(declare-fun res!1034030 () Bool)

(assert (=> b!2435744 (=> res!1034030 e!1548157)))

(assert (=> b!2435744 (= res!1034030 (not (isEmpty!16497 (tail!3790 s!9460))))))

(declare-fun b!2435745 () Bool)

(declare-fun res!1034031 () Bool)

(assert (=> b!2435745 (=> res!1034031 e!1548152)))

(assert (=> b!2435745 (= res!1034031 e!1548158)))

(declare-fun res!1034029 () Bool)

(assert (=> b!2435745 (=> (not res!1034029) (not e!1548158))))

(assert (=> b!2435745 (= res!1034029 lt!877422)))

(declare-fun b!2435746 () Bool)

(assert (=> b!2435746 (= e!1548156 (not lt!877422))))

(declare-fun b!2435747 () Bool)

(assert (=> b!2435747 (= e!1548154 (matchR!3274 (derivativeStep!1842 (regTwo!14830 r!13927) (head!5517 s!9460)) (tail!3790 s!9460)))))

(declare-fun b!2435748 () Bool)

(assert (=> b!2435748 (= e!1548158 (= (head!5517 s!9460) (c!388487 (regTwo!14830 r!13927))))))

(declare-fun b!2435749 () Bool)

(assert (=> b!2435749 (= e!1548154 (nullable!2188 (regTwo!14830 r!13927)))))

(assert (= (and d!703898 c!388652) b!2435749))

(assert (= (and d!703898 (not c!388652)) b!2435747))

(assert (= (and d!703898 c!388651) b!2435736))

(assert (= (and d!703898 (not c!388651)) b!2435740))

(assert (= (and b!2435740 c!388650) b!2435746))

(assert (= (and b!2435740 (not c!388650)) b!2435739))

(assert (= (and b!2435739 (not res!1034024)) b!2435745))

(assert (= (and b!2435745 res!1034029) b!2435743))

(assert (= (and b!2435743 res!1034026) b!2435737))

(assert (= (and b!2435737 res!1034028) b!2435748))

(assert (= (and b!2435745 (not res!1034031)) b!2435741))

(assert (= (and b!2435741 res!1034025) b!2435738))

(assert (= (and b!2435738 (not res!1034027)) b!2435744))

(assert (= (and b!2435744 (not res!1034030)) b!2435742))

(assert (= (or b!2435736 b!2435738 b!2435743) bm!149179))

(assert (=> bm!149179 m!2815447))

(assert (=> b!2435748 m!2815467))

(assert (=> d!703898 m!2815447))

(declare-fun m!2815819 () Bool)

(assert (=> d!703898 m!2815819))

(assert (=> b!2435747 m!2815467))

(assert (=> b!2435747 m!2815467))

(declare-fun m!2815821 () Bool)

(assert (=> b!2435747 m!2815821))

(assert (=> b!2435747 m!2815473))

(assert (=> b!2435747 m!2815821))

(assert (=> b!2435747 m!2815473))

(declare-fun m!2815823 () Bool)

(assert (=> b!2435747 m!2815823))

(declare-fun m!2815825 () Bool)

(assert (=> b!2435749 m!2815825))

(assert (=> b!2435737 m!2815473))

(assert (=> b!2435737 m!2815473))

(assert (=> b!2435737 m!2815479))

(assert (=> b!2435742 m!2815467))

(assert (=> b!2435744 m!2815473))

(assert (=> b!2435744 m!2815473))

(assert (=> b!2435744 m!2815479))

(assert (=> b!2435466 d!703898))

(declare-fun b!2435759 () Bool)

(declare-fun e!1548167 () Bool)

(declare-fun lt!877423 () Bool)

(declare-fun call!149188 () Bool)

(assert (=> b!2435759 (= e!1548167 (= lt!877423 call!149188))))

(declare-fun b!2435760 () Bool)

(declare-fun res!1034041 () Bool)

(declare-fun e!1548172 () Bool)

(assert (=> b!2435760 (=> (not res!1034041) (not e!1548172))))

(assert (=> b!2435760 (= res!1034041 (isEmpty!16497 (tail!3790 (_2!16578 (get!8775 lt!877388)))))))

(declare-fun b!2435761 () Bool)

(declare-fun e!1548169 () Bool)

(declare-fun e!1548171 () Bool)

(assert (=> b!2435761 (= e!1548169 e!1548171)))

(declare-fun res!1034040 () Bool)

(assert (=> b!2435761 (=> res!1034040 e!1548171)))

(assert (=> b!2435761 (= res!1034040 call!149188)))

(declare-fun b!2435762 () Bool)

(declare-fun res!1034037 () Bool)

(declare-fun e!1548166 () Bool)

(assert (=> b!2435762 (=> res!1034037 e!1548166)))

(assert (=> b!2435762 (= res!1034037 (not ((_ is ElementMatch!7159) (regTwo!14830 r!13927))))))

(declare-fun e!1548170 () Bool)

(assert (=> b!2435762 (= e!1548170 e!1548166)))

(declare-fun bm!149183 () Bool)

(assert (=> bm!149183 (= call!149188 (isEmpty!16497 (_2!16578 (get!8775 lt!877388))))))

(declare-fun b!2435763 () Bool)

(assert (=> b!2435763 (= e!1548167 e!1548170)))

(declare-fun c!388655 () Bool)

(assert (=> b!2435763 (= c!388655 ((_ is EmptyLang!7159) (regTwo!14830 r!13927)))))

(declare-fun d!703904 () Bool)

(assert (=> d!703904 e!1548167))

(declare-fun c!388656 () Bool)

(assert (=> d!703904 (= c!388656 ((_ is EmptyExpr!7159) (regTwo!14830 r!13927)))))

(declare-fun e!1548168 () Bool)

(assert (=> d!703904 (= lt!877423 e!1548168)))

(declare-fun c!388657 () Bool)

(assert (=> d!703904 (= c!388657 (isEmpty!16497 (_2!16578 (get!8775 lt!877388))))))

(assert (=> d!703904 (validRegex!2873 (regTwo!14830 r!13927))))

(assert (=> d!703904 (= (matchR!3274 (regTwo!14830 r!13927) (_2!16578 (get!8775 lt!877388))) lt!877423)))

(declare-fun b!2435764 () Bool)

(assert (=> b!2435764 (= e!1548166 e!1548169)))

(declare-fun res!1034038 () Bool)

(assert (=> b!2435764 (=> (not res!1034038) (not e!1548169))))

(assert (=> b!2435764 (= res!1034038 (not lt!877423))))

(declare-fun b!2435765 () Bool)

(assert (=> b!2435765 (= e!1548171 (not (= (head!5517 (_2!16578 (get!8775 lt!877388))) (c!388487 (regTwo!14830 r!13927)))))))

(declare-fun b!2435766 () Bool)

(declare-fun res!1034039 () Bool)

(assert (=> b!2435766 (=> (not res!1034039) (not e!1548172))))

(assert (=> b!2435766 (= res!1034039 (not call!149188))))

(declare-fun b!2435767 () Bool)

(declare-fun res!1034043 () Bool)

(assert (=> b!2435767 (=> res!1034043 e!1548171)))

(assert (=> b!2435767 (= res!1034043 (not (isEmpty!16497 (tail!3790 (_2!16578 (get!8775 lt!877388))))))))

(declare-fun b!2435768 () Bool)

(declare-fun res!1034044 () Bool)

(assert (=> b!2435768 (=> res!1034044 e!1548166)))

(assert (=> b!2435768 (= res!1034044 e!1548172)))

(declare-fun res!1034042 () Bool)

(assert (=> b!2435768 (=> (not res!1034042) (not e!1548172))))

(assert (=> b!2435768 (= res!1034042 lt!877423)))

(declare-fun b!2435769 () Bool)

(assert (=> b!2435769 (= e!1548170 (not lt!877423))))

(declare-fun b!2435770 () Bool)

(assert (=> b!2435770 (= e!1548168 (matchR!3274 (derivativeStep!1842 (regTwo!14830 r!13927) (head!5517 (_2!16578 (get!8775 lt!877388)))) (tail!3790 (_2!16578 (get!8775 lt!877388)))))))

(declare-fun b!2435771 () Bool)

(assert (=> b!2435771 (= e!1548172 (= (head!5517 (_2!16578 (get!8775 lt!877388))) (c!388487 (regTwo!14830 r!13927))))))

(declare-fun b!2435772 () Bool)

(assert (=> b!2435772 (= e!1548168 (nullable!2188 (regTwo!14830 r!13927)))))

(assert (= (and d!703904 c!388657) b!2435772))

(assert (= (and d!703904 (not c!388657)) b!2435770))

(assert (= (and d!703904 c!388656) b!2435759))

(assert (= (and d!703904 (not c!388656)) b!2435763))

(assert (= (and b!2435763 c!388655) b!2435769))

(assert (= (and b!2435763 (not c!388655)) b!2435762))

(assert (= (and b!2435762 (not res!1034037)) b!2435768))

(assert (= (and b!2435768 res!1034042) b!2435766))

(assert (= (and b!2435766 res!1034039) b!2435760))

(assert (= (and b!2435760 res!1034041) b!2435771))

(assert (= (and b!2435768 (not res!1034044)) b!2435764))

(assert (= (and b!2435764 res!1034038) b!2435761))

(assert (= (and b!2435761 (not res!1034040)) b!2435767))

(assert (= (and b!2435767 (not res!1034043)) b!2435765))

(assert (= (or b!2435759 b!2435761 b!2435766) bm!149183))

(declare-fun m!2815831 () Bool)

(assert (=> bm!149183 m!2815831))

(declare-fun m!2815833 () Bool)

(assert (=> b!2435771 m!2815833))

(assert (=> d!703904 m!2815831))

(assert (=> d!703904 m!2815819))

(assert (=> b!2435770 m!2815833))

(assert (=> b!2435770 m!2815833))

(declare-fun m!2815835 () Bool)

(assert (=> b!2435770 m!2815835))

(declare-fun m!2815837 () Bool)

(assert (=> b!2435770 m!2815837))

(assert (=> b!2435770 m!2815835))

(assert (=> b!2435770 m!2815837))

(declare-fun m!2815839 () Bool)

(assert (=> b!2435770 m!2815839))

(assert (=> b!2435772 m!2815825))

(assert (=> b!2435760 m!2815837))

(assert (=> b!2435760 m!2815837))

(declare-fun m!2815841 () Bool)

(assert (=> b!2435760 m!2815841))

(assert (=> b!2435765 m!2815833))

(assert (=> b!2435767 m!2815837))

(assert (=> b!2435767 m!2815837))

(assert (=> b!2435767 m!2815841))

(assert (=> b!2435464 d!703904))

(declare-fun d!703910 () Bool)

(assert (=> d!703910 (= (get!8775 lt!877388) (v!31055 lt!877388))))

(assert (=> b!2435464 d!703910))

(declare-fun bs!464484 () Bool)

(declare-fun b!2435784 () Bool)

(assert (= bs!464484 (and b!2435784 d!703800)))

(declare-fun lambda!91984 () Int)

(assert (=> bs!464484 (not (= lambda!91984 lambda!91969))))

(declare-fun bs!464485 () Bool)

(assert (= bs!464485 (and b!2435784 b!2434995)))

(assert (=> bs!464485 (not (= lambda!91984 lambda!91940))))

(declare-fun bs!464486 () Bool)

(assert (= bs!464486 (and b!2435784 d!703802)))

(assert (=> bs!464486 (not (= lambda!91984 lambda!91974))))

(declare-fun bs!464487 () Bool)

(assert (= bs!464487 (and b!2435784 b!2435264)))

(assert (=> bs!464487 (not (= lambda!91984 lambda!91957))))

(assert (=> bs!464485 (not (= lambda!91984 lambda!91941))))

(declare-fun bs!464488 () Bool)

(assert (= bs!464488 (and b!2435784 b!2435261)))

(assert (=> bs!464488 (= (and (= (reg!7488 (regTwo!14831 r!13927)) (reg!7488 r!13927)) (= (regTwo!14831 r!13927) r!13927)) (= lambda!91984 lambda!91956))))

(assert (=> bs!464486 (not (= lambda!91984 lambda!91975))))

(assert (=> b!2435784 true))

(assert (=> b!2435784 true))

(declare-fun bs!464489 () Bool)

(declare-fun b!2435787 () Bool)

(assert (= bs!464489 (and b!2435787 d!703800)))

(declare-fun lambda!91985 () Int)

(assert (=> bs!464489 (not (= lambda!91985 lambda!91969))))

(declare-fun bs!464490 () Bool)

(assert (= bs!464490 (and b!2435787 b!2434995)))

(assert (=> bs!464490 (not (= lambda!91985 lambda!91940))))

(declare-fun bs!464491 () Bool)

(assert (= bs!464491 (and b!2435787 d!703802)))

(assert (=> bs!464491 (not (= lambda!91985 lambda!91974))))

(declare-fun bs!464492 () Bool)

(assert (= bs!464492 (and b!2435787 b!2435784)))

(assert (=> bs!464492 (not (= lambda!91985 lambda!91984))))

(declare-fun bs!464493 () Bool)

(assert (= bs!464493 (and b!2435787 b!2435264)))

(assert (=> bs!464493 (= (and (= (regOne!14830 (regTwo!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regTwo!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!91985 lambda!91957))))

(assert (=> bs!464490 (= (and (= (regOne!14830 (regTwo!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regTwo!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!91985 lambda!91941))))

(declare-fun bs!464494 () Bool)

(assert (= bs!464494 (and b!2435787 b!2435261)))

(assert (=> bs!464494 (not (= lambda!91985 lambda!91956))))

(assert (=> bs!464491 (= (and (= (regOne!14830 (regTwo!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regTwo!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!91985 lambda!91975))))

(assert (=> b!2435787 true))

(assert (=> b!2435787 true))

(declare-fun b!2435783 () Bool)

(declare-fun e!1548184 () Bool)

(declare-fun call!149189 () Bool)

(assert (=> b!2435783 (= e!1548184 call!149189)))

(declare-fun e!1548180 () Bool)

(declare-fun call!149190 () Bool)

(assert (=> b!2435784 (= e!1548180 call!149190)))

(declare-fun b!2435785 () Bool)

(declare-fun e!1548183 () Bool)

(assert (=> b!2435785 (= e!1548183 (= s!9460 (Cons!28456 (c!388487 (regTwo!14831 r!13927)) Nil!28456)))))

(declare-fun bm!149184 () Bool)

(assert (=> bm!149184 (= call!149189 (isEmpty!16497 s!9460))))

(declare-fun b!2435786 () Bool)

(declare-fun e!1548181 () Bool)

(assert (=> b!2435786 (= e!1548184 e!1548181)))

(declare-fun res!1034049 () Bool)

(assert (=> b!2435786 (= res!1034049 (not ((_ is EmptyLang!7159) (regTwo!14831 r!13927))))))

(assert (=> b!2435786 (=> (not res!1034049) (not e!1548181))))

(declare-fun e!1548182 () Bool)

(assert (=> b!2435787 (= e!1548182 call!149190)))

(declare-fun d!703912 () Bool)

(declare-fun c!388663 () Bool)

(assert (=> d!703912 (= c!388663 ((_ is EmptyExpr!7159) (regTwo!14831 r!13927)))))

(assert (=> d!703912 (= (matchRSpec!1006 (regTwo!14831 r!13927) s!9460) e!1548184)))

(declare-fun bm!149185 () Bool)

(declare-fun c!388664 () Bool)

(assert (=> bm!149185 (= call!149190 (Exists!1195 (ite c!388664 lambda!91984 lambda!91985)))))

(declare-fun b!2435788 () Bool)

(declare-fun e!1548179 () Bool)

(assert (=> b!2435788 (= e!1548179 e!1548182)))

(assert (=> b!2435788 (= c!388664 ((_ is Star!7159) (regTwo!14831 r!13927)))))

(declare-fun b!2435789 () Bool)

(declare-fun e!1548185 () Bool)

(assert (=> b!2435789 (= e!1548185 (matchRSpec!1006 (regTwo!14831 (regTwo!14831 r!13927)) s!9460))))

(declare-fun b!2435790 () Bool)

(declare-fun c!388665 () Bool)

(assert (=> b!2435790 (= c!388665 ((_ is Union!7159) (regTwo!14831 r!13927)))))

(assert (=> b!2435790 (= e!1548183 e!1548179)))

(declare-fun b!2435791 () Bool)

(declare-fun res!1034047 () Bool)

(assert (=> b!2435791 (=> res!1034047 e!1548180)))

(assert (=> b!2435791 (= res!1034047 call!149189)))

(assert (=> b!2435791 (= e!1548182 e!1548180)))

(declare-fun b!2435792 () Bool)

(assert (=> b!2435792 (= e!1548179 e!1548185)))

(declare-fun res!1034048 () Bool)

(assert (=> b!2435792 (= res!1034048 (matchRSpec!1006 (regOne!14831 (regTwo!14831 r!13927)) s!9460))))

(assert (=> b!2435792 (=> res!1034048 e!1548185)))

(declare-fun b!2435793 () Bool)

(declare-fun c!388662 () Bool)

(assert (=> b!2435793 (= c!388662 ((_ is ElementMatch!7159) (regTwo!14831 r!13927)))))

(assert (=> b!2435793 (= e!1548181 e!1548183)))

(assert (= (and d!703912 c!388663) b!2435783))

(assert (= (and d!703912 (not c!388663)) b!2435786))

(assert (= (and b!2435786 res!1034049) b!2435793))

(assert (= (and b!2435793 c!388662) b!2435785))

(assert (= (and b!2435793 (not c!388662)) b!2435790))

(assert (= (and b!2435790 c!388665) b!2435792))

(assert (= (and b!2435790 (not c!388665)) b!2435788))

(assert (= (and b!2435792 (not res!1034048)) b!2435789))

(assert (= (and b!2435788 c!388664) b!2435791))

(assert (= (and b!2435788 (not c!388664)) b!2435787))

(assert (= (and b!2435791 (not res!1034047)) b!2435784))

(assert (= (or b!2435784 b!2435787) bm!149185))

(assert (= (or b!2435783 b!2435791) bm!149184))

(assert (=> bm!149184 m!2815447))

(declare-fun m!2815871 () Bool)

(assert (=> bm!149185 m!2815871))

(declare-fun m!2815873 () Bool)

(assert (=> b!2435789 m!2815873))

(declare-fun m!2815875 () Bool)

(assert (=> b!2435792 m!2815875))

(assert (=> b!2435266 d!703912))

(assert (=> d!703788 d!703894))

(declare-fun d!703934 () Bool)

(assert (=> d!703934 (= (validRegex!2873 EmptyExpr!7159) true)))

(assert (=> d!703788 d!703934))

(declare-fun d!703938 () Bool)

(assert (=> d!703938 (= (head!5517 s!9460) (h!33857 s!9460))))

(assert (=> b!2435341 d!703938))

(declare-fun d!703942 () Bool)

(declare-fun nullableFct!532 (Regex!7159) Bool)

(assert (=> d!703942 (= (nullable!2188 lt!877335) (nullableFct!532 lt!877335))))

(declare-fun bs!464495 () Bool)

(assert (= bs!464495 d!703942))

(declare-fun m!2815897 () Bool)

(assert (=> bs!464495 m!2815897))

(assert (=> b!2435403 d!703942))

(declare-fun d!703944 () Bool)

(assert (=> d!703944 (= (nullable!2188 (reg!7488 lt!877335)) (nullableFct!532 (reg!7488 lt!877335)))))

(declare-fun bs!464496 () Bool)

(assert (= bs!464496 d!703944))

(declare-fun m!2815905 () Bool)

(assert (=> bs!464496 m!2815905))

(assert (=> b!2435093 d!703944))

(declare-fun d!703950 () Bool)

(assert (=> d!703950 (= (Exists!1195 (ite c!388553 lambda!91956 lambda!91957)) (choose!14442 (ite c!388553 lambda!91956 lambda!91957)))))

(declare-fun bs!464497 () Bool)

(assert (= bs!464497 d!703950))

(declare-fun m!2815907 () Bool)

(assert (=> bs!464497 m!2815907))

(assert (=> bm!149144 d!703950))

(declare-fun b!2435823 () Bool)

(declare-fun e!1548205 () Bool)

(declare-fun lt!877427 () Bool)

(declare-fun call!149195 () Bool)

(assert (=> b!2435823 (= e!1548205 (= lt!877427 call!149195))))

(declare-fun b!2435824 () Bool)

(declare-fun res!1034074 () Bool)

(declare-fun e!1548210 () Bool)

(assert (=> b!2435824 (=> (not res!1034074) (not e!1548210))))

(assert (=> b!2435824 (= res!1034074 (isEmpty!16497 (tail!3790 (tail!3790 s!9460))))))

(declare-fun b!2435825 () Bool)

(declare-fun e!1548207 () Bool)

(declare-fun e!1548209 () Bool)

(assert (=> b!2435825 (= e!1548207 e!1548209)))

(declare-fun res!1034073 () Bool)

(assert (=> b!2435825 (=> res!1034073 e!1548209)))

(assert (=> b!2435825 (= res!1034073 call!149195)))

(declare-fun b!2435826 () Bool)

(declare-fun res!1034070 () Bool)

(declare-fun e!1548204 () Bool)

(assert (=> b!2435826 (=> res!1034070 e!1548204)))

(assert (=> b!2435826 (= res!1034070 (not ((_ is ElementMatch!7159) (derivativeStep!1842 lt!877335 (head!5517 s!9460)))))))

(declare-fun e!1548208 () Bool)

(assert (=> b!2435826 (= e!1548208 e!1548204)))

(declare-fun bm!149190 () Bool)

(assert (=> bm!149190 (= call!149195 (isEmpty!16497 (tail!3790 s!9460)))))

(declare-fun b!2435827 () Bool)

(assert (=> b!2435827 (= e!1548205 e!1548208)))

(declare-fun c!388672 () Bool)

(assert (=> b!2435827 (= c!388672 ((_ is EmptyLang!7159) (derivativeStep!1842 lt!877335 (head!5517 s!9460))))))

(declare-fun d!703952 () Bool)

(assert (=> d!703952 e!1548205))

(declare-fun c!388673 () Bool)

(assert (=> d!703952 (= c!388673 ((_ is EmptyExpr!7159) (derivativeStep!1842 lt!877335 (head!5517 s!9460))))))

(declare-fun e!1548206 () Bool)

(assert (=> d!703952 (= lt!877427 e!1548206)))

(declare-fun c!388674 () Bool)

(assert (=> d!703952 (= c!388674 (isEmpty!16497 (tail!3790 s!9460)))))

(assert (=> d!703952 (validRegex!2873 (derivativeStep!1842 lt!877335 (head!5517 s!9460)))))

(assert (=> d!703952 (= (matchR!3274 (derivativeStep!1842 lt!877335 (head!5517 s!9460)) (tail!3790 s!9460)) lt!877427)))

(declare-fun b!2435828 () Bool)

(assert (=> b!2435828 (= e!1548204 e!1548207)))

(declare-fun res!1034071 () Bool)

(assert (=> b!2435828 (=> (not res!1034071) (not e!1548207))))

(assert (=> b!2435828 (= res!1034071 (not lt!877427))))

(declare-fun b!2435829 () Bool)

(assert (=> b!2435829 (= e!1548209 (not (= (head!5517 (tail!3790 s!9460)) (c!388487 (derivativeStep!1842 lt!877335 (head!5517 s!9460))))))))

(declare-fun b!2435830 () Bool)

(declare-fun res!1034072 () Bool)

(assert (=> b!2435830 (=> (not res!1034072) (not e!1548210))))

(assert (=> b!2435830 (= res!1034072 (not call!149195))))

(declare-fun b!2435831 () Bool)

(declare-fun res!1034076 () Bool)

(assert (=> b!2435831 (=> res!1034076 e!1548209)))

(assert (=> b!2435831 (= res!1034076 (not (isEmpty!16497 (tail!3790 (tail!3790 s!9460)))))))

(declare-fun b!2435832 () Bool)

(declare-fun res!1034077 () Bool)

(assert (=> b!2435832 (=> res!1034077 e!1548204)))

(assert (=> b!2435832 (= res!1034077 e!1548210)))

(declare-fun res!1034075 () Bool)

(assert (=> b!2435832 (=> (not res!1034075) (not e!1548210))))

(assert (=> b!2435832 (= res!1034075 lt!877427)))

(declare-fun b!2435833 () Bool)

(assert (=> b!2435833 (= e!1548208 (not lt!877427))))

(declare-fun b!2435834 () Bool)

(assert (=> b!2435834 (= e!1548206 (matchR!3274 (derivativeStep!1842 (derivativeStep!1842 lt!877335 (head!5517 s!9460)) (head!5517 (tail!3790 s!9460))) (tail!3790 (tail!3790 s!9460))))))

(declare-fun b!2435835 () Bool)

(assert (=> b!2435835 (= e!1548210 (= (head!5517 (tail!3790 s!9460)) (c!388487 (derivativeStep!1842 lt!877335 (head!5517 s!9460)))))))

(declare-fun b!2435836 () Bool)

(assert (=> b!2435836 (= e!1548206 (nullable!2188 (derivativeStep!1842 lt!877335 (head!5517 s!9460))))))

(assert (= (and d!703952 c!388674) b!2435836))

(assert (= (and d!703952 (not c!388674)) b!2435834))

(assert (= (and d!703952 c!388673) b!2435823))

(assert (= (and d!703952 (not c!388673)) b!2435827))

(assert (= (and b!2435827 c!388672) b!2435833))

(assert (= (and b!2435827 (not c!388672)) b!2435826))

(assert (= (and b!2435826 (not res!1034070)) b!2435832))

(assert (= (and b!2435832 res!1034075) b!2435830))

(assert (= (and b!2435830 res!1034072) b!2435824))

(assert (= (and b!2435824 res!1034074) b!2435835))

(assert (= (and b!2435832 (not res!1034077)) b!2435828))

(assert (= (and b!2435828 res!1034071) b!2435825))

(assert (= (and b!2435825 (not res!1034073)) b!2435831))

(assert (= (and b!2435831 (not res!1034076)) b!2435829))

(assert (= (or b!2435823 b!2435825 b!2435830) bm!149190))

(assert (=> bm!149190 m!2815473))

(assert (=> bm!149190 m!2815479))

(assert (=> b!2435835 m!2815473))

(declare-fun m!2815911 () Bool)

(assert (=> b!2435835 m!2815911))

(assert (=> d!703952 m!2815473))

(assert (=> d!703952 m!2815479))

(assert (=> d!703952 m!2815529))

(declare-fun m!2815913 () Bool)

(assert (=> d!703952 m!2815913))

(assert (=> b!2435834 m!2815473))

(assert (=> b!2435834 m!2815911))

(assert (=> b!2435834 m!2815529))

(assert (=> b!2435834 m!2815911))

(declare-fun m!2815915 () Bool)

(assert (=> b!2435834 m!2815915))

(assert (=> b!2435834 m!2815473))

(declare-fun m!2815917 () Bool)

(assert (=> b!2435834 m!2815917))

(assert (=> b!2435834 m!2815915))

(assert (=> b!2435834 m!2815917))

(declare-fun m!2815919 () Bool)

(assert (=> b!2435834 m!2815919))

(assert (=> b!2435836 m!2815529))

(declare-fun m!2815921 () Bool)

(assert (=> b!2435836 m!2815921))

(assert (=> b!2435824 m!2815473))

(assert (=> b!2435824 m!2815917))

(assert (=> b!2435824 m!2815917))

(declare-fun m!2815923 () Bool)

(assert (=> b!2435824 m!2815923))

(assert (=> b!2435829 m!2815473))

(assert (=> b!2435829 m!2815911))

(assert (=> b!2435831 m!2815473))

(assert (=> b!2435831 m!2815917))

(assert (=> b!2435831 m!2815917))

(assert (=> b!2435831 m!2815923))

(assert (=> b!2435401 d!703952))

(declare-fun b!2435875 () Bool)

(declare-fun e!1548230 () Regex!7159)

(assert (=> b!2435875 (= e!1548230 (ite (= (head!5517 s!9460) (c!388487 lt!877335)) EmptyExpr!7159 EmptyLang!7159))))

(declare-fun d!703958 () Bool)

(declare-fun lt!877431 () Regex!7159)

(assert (=> d!703958 (validRegex!2873 lt!877431)))

(declare-fun e!1548234 () Regex!7159)

(assert (=> d!703958 (= lt!877431 e!1548234)))

(declare-fun c!388688 () Bool)

(assert (=> d!703958 (= c!388688 (or ((_ is EmptyExpr!7159) lt!877335) ((_ is EmptyLang!7159) lt!877335)))))

(assert (=> d!703958 (validRegex!2873 lt!877335)))

(assert (=> d!703958 (= (derivativeStep!1842 lt!877335 (head!5517 s!9460)) lt!877431)))

(declare-fun b!2435876 () Bool)

(declare-fun e!1548231 () Regex!7159)

(declare-fun call!149207 () Regex!7159)

(assert (=> b!2435876 (= e!1548231 (Union!7159 (Concat!11795 call!149207 (regTwo!14830 lt!877335)) EmptyLang!7159))))

(declare-fun b!2435877 () Bool)

(assert (=> b!2435877 (= e!1548234 EmptyLang!7159)))

(declare-fun call!149208 () Regex!7159)

(declare-fun b!2435878 () Bool)

(assert (=> b!2435878 (= e!1548231 (Union!7159 (Concat!11795 call!149208 (regTwo!14830 lt!877335)) call!149207))))

(declare-fun b!2435879 () Bool)

(declare-fun c!388691 () Bool)

(assert (=> b!2435879 (= c!388691 (nullable!2188 (regOne!14830 lt!877335)))))

(declare-fun e!1548232 () Regex!7159)

(assert (=> b!2435879 (= e!1548232 e!1548231)))

(declare-fun b!2435880 () Bool)

(declare-fun call!149205 () Regex!7159)

(assert (=> b!2435880 (= e!1548232 (Concat!11795 call!149205 lt!877335))))

(declare-fun call!149206 () Regex!7159)

(declare-fun c!388692 () Bool)

(declare-fun c!388689 () Bool)

(declare-fun bm!149200 () Bool)

(assert (=> bm!149200 (= call!149206 (derivativeStep!1842 (ite c!388689 (regOne!14831 lt!877335) (ite c!388692 (reg!7488 lt!877335) (ite c!388691 (regTwo!14830 lt!877335) (regOne!14830 lt!877335)))) (head!5517 s!9460)))))

(declare-fun b!2435881 () Bool)

(assert (=> b!2435881 (= e!1548234 e!1548230)))

(declare-fun c!388690 () Bool)

(assert (=> b!2435881 (= c!388690 ((_ is ElementMatch!7159) lt!877335))))

(declare-fun b!2435882 () Bool)

(declare-fun e!1548233 () Regex!7159)

(assert (=> b!2435882 (= e!1548233 (Union!7159 call!149206 call!149208))))

(declare-fun bm!149201 () Bool)

(assert (=> bm!149201 (= call!149208 (derivativeStep!1842 (ite c!388689 (regTwo!14831 lt!877335) (regOne!14830 lt!877335)) (head!5517 s!9460)))))

(declare-fun b!2435883 () Bool)

(assert (=> b!2435883 (= c!388689 ((_ is Union!7159) lt!877335))))

(assert (=> b!2435883 (= e!1548230 e!1548233)))

(declare-fun bm!149202 () Bool)

(assert (=> bm!149202 (= call!149207 call!149205)))

(declare-fun bm!149203 () Bool)

(assert (=> bm!149203 (= call!149205 call!149206)))

(declare-fun b!2435884 () Bool)

(assert (=> b!2435884 (= e!1548233 e!1548232)))

(assert (=> b!2435884 (= c!388692 ((_ is Star!7159) lt!877335))))

(assert (= (and d!703958 c!388688) b!2435877))

(assert (= (and d!703958 (not c!388688)) b!2435881))

(assert (= (and b!2435881 c!388690) b!2435875))

(assert (= (and b!2435881 (not c!388690)) b!2435883))

(assert (= (and b!2435883 c!388689) b!2435882))

(assert (= (and b!2435883 (not c!388689)) b!2435884))

(assert (= (and b!2435884 c!388692) b!2435880))

(assert (= (and b!2435884 (not c!388692)) b!2435879))

(assert (= (and b!2435879 c!388691) b!2435878))

(assert (= (and b!2435879 (not c!388691)) b!2435876))

(assert (= (or b!2435878 b!2435876) bm!149202))

(assert (= (or b!2435880 bm!149202) bm!149203))

(assert (= (or b!2435882 bm!149203) bm!149200))

(assert (= (or b!2435882 b!2435878) bm!149201))

(declare-fun m!2815945 () Bool)

(assert (=> d!703958 m!2815945))

(assert (=> d!703958 m!2815331))

(declare-fun m!2815947 () Bool)

(assert (=> b!2435879 m!2815947))

(assert (=> bm!149200 m!2815467))

(declare-fun m!2815949 () Bool)

(assert (=> bm!149200 m!2815949))

(assert (=> bm!149201 m!2815467))

(declare-fun m!2815951 () Bool)

(assert (=> bm!149201 m!2815951))

(assert (=> b!2435401 d!703958))

(assert (=> b!2435401 d!703938))

(declare-fun d!703970 () Bool)

(assert (=> d!703970 (= (tail!3790 s!9460) (t!208531 s!9460))))

(assert (=> b!2435401 d!703970))

(declare-fun b!2435885 () Bool)

(declare-fun e!1548240 () Bool)

(declare-fun e!1548237 () Bool)

(assert (=> b!2435885 (= e!1548240 e!1548237)))

(declare-fun c!388694 () Bool)

(assert (=> b!2435885 (= c!388694 ((_ is Union!7159) (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))

(declare-fun b!2435886 () Bool)

(declare-fun e!1548236 () Bool)

(declare-fun call!149211 () Bool)

(assert (=> b!2435886 (= e!1548236 call!149211)))

(declare-fun b!2435887 () Bool)

(declare-fun e!1548239 () Bool)

(declare-fun e!1548235 () Bool)

(assert (=> b!2435887 (= e!1548239 e!1548235)))

(declare-fun res!1034091 () Bool)

(assert (=> b!2435887 (=> (not res!1034091) (not e!1548235))))

(assert (=> b!2435887 (= res!1034091 call!149211)))

(declare-fun bm!149204 () Bool)

(declare-fun call!149210 () Bool)

(declare-fun call!149209 () Bool)

(assert (=> bm!149204 (= call!149210 call!149209)))

(declare-fun bm!149205 () Bool)

(assert (=> bm!149205 (= call!149211 (validRegex!2873 (ite c!388694 (regTwo!14831 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))) (regOne!14830 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))))

(declare-fun b!2435888 () Bool)

(declare-fun e!1548238 () Bool)

(assert (=> b!2435888 (= e!1548240 e!1548238)))

(declare-fun res!1034093 () Bool)

(assert (=> b!2435888 (= res!1034093 (not (nullable!2188 (reg!7488 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))))

(assert (=> b!2435888 (=> (not res!1034093) (not e!1548238))))

(declare-fun b!2435889 () Bool)

(assert (=> b!2435889 (= e!1548235 call!149210)))

(declare-fun d!703972 () Bool)

(declare-fun res!1034090 () Bool)

(declare-fun e!1548241 () Bool)

(assert (=> d!703972 (=> res!1034090 e!1548241)))

(assert (=> d!703972 (= res!1034090 ((_ is ElementMatch!7159) (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))

(assert (=> d!703972 (= (validRegex!2873 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))) e!1548241)))

(declare-fun b!2435890 () Bool)

(declare-fun res!1034092 () Bool)

(assert (=> b!2435890 (=> res!1034092 e!1548239)))

(assert (=> b!2435890 (= res!1034092 (not ((_ is Concat!11795) (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335)))))))

(assert (=> b!2435890 (= e!1548237 e!1548239)))

(declare-fun b!2435891 () Bool)

(assert (=> b!2435891 (= e!1548241 e!1548240)))

(declare-fun c!388693 () Bool)

(assert (=> b!2435891 (= c!388693 ((_ is Star!7159) (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))))))

(declare-fun b!2435892 () Bool)

(declare-fun res!1034094 () Bool)

(assert (=> b!2435892 (=> (not res!1034094) (not e!1548236))))

(assert (=> b!2435892 (= res!1034094 call!149210)))

(assert (=> b!2435892 (= e!1548237 e!1548236)))

(declare-fun b!2435893 () Bool)

(assert (=> b!2435893 (= e!1548238 call!149209)))

(declare-fun bm!149206 () Bool)

(assert (=> bm!149206 (= call!149209 (validRegex!2873 (ite c!388693 (reg!7488 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))) (ite c!388694 (regOne!14831 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335))) (regTwo!14830 (ite c!388511 (regTwo!14831 lt!877335) (regOne!14830 lt!877335)))))))))

(assert (= (and d!703972 (not res!1034090)) b!2435891))

(assert (= (and b!2435891 c!388693) b!2435888))

(assert (= (and b!2435891 (not c!388693)) b!2435885))

(assert (= (and b!2435888 res!1034093) b!2435893))

(assert (= (and b!2435885 c!388694) b!2435892))

(assert (= (and b!2435885 (not c!388694)) b!2435890))

(assert (= (and b!2435892 res!1034094) b!2435886))

(assert (= (and b!2435890 (not res!1034092)) b!2435887))

(assert (= (and b!2435887 res!1034091) b!2435889))

(assert (= (or b!2435892 b!2435889) bm!149204))

(assert (= (or b!2435886 b!2435887) bm!149205))

(assert (= (or b!2435893 bm!149204) bm!149206))

(declare-fun m!2815953 () Bool)

(assert (=> bm!149205 m!2815953))

(declare-fun m!2815955 () Bool)

(assert (=> b!2435888 m!2815955))

(declare-fun m!2815957 () Bool)

(assert (=> bm!149206 m!2815957))

(assert (=> bm!149126 d!703972))

(declare-fun d!703974 () Bool)

(assert (=> d!703974 (= (isEmpty!16497 (tail!3790 s!9460)) ((_ is Nil!28456) (tail!3790 s!9460)))))

(assert (=> b!2435398 d!703974))

(assert (=> b!2435398 d!703970))

(assert (=> d!703800 d!703798))

(declare-fun d!703976 () Bool)

(assert (=> d!703976 (= (Exists!1195 lambda!91969) (choose!14442 lambda!91969))))

(declare-fun bs!464510 () Bool)

(assert (= bs!464510 d!703976))

(declare-fun m!2815959 () Bool)

(assert (=> bs!464510 m!2815959))

(assert (=> d!703800 d!703976))

(declare-fun bs!464520 () Bool)

(declare-fun d!703978 () Bool)

(assert (= bs!464520 (and d!703978 d!703800)))

(declare-fun lambda!91997 () Int)

(assert (=> bs!464520 (= lambda!91997 lambda!91969)))

(declare-fun bs!464521 () Bool)

(assert (= bs!464521 (and d!703978 b!2435787)))

(assert (=> bs!464521 (not (= lambda!91997 lambda!91985))))

(declare-fun bs!464522 () Bool)

(assert (= bs!464522 (and d!703978 b!2434995)))

(assert (=> bs!464522 (= lambda!91997 lambda!91940)))

(declare-fun bs!464523 () Bool)

(assert (= bs!464523 (and d!703978 d!703802)))

(assert (=> bs!464523 (= lambda!91997 lambda!91974)))

(declare-fun bs!464524 () Bool)

(assert (= bs!464524 (and d!703978 b!2435784)))

(assert (=> bs!464524 (not (= lambda!91997 lambda!91984))))

(declare-fun bs!464525 () Bool)

(assert (= bs!464525 (and d!703978 b!2435264)))

(assert (=> bs!464525 (not (= lambda!91997 lambda!91957))))

(assert (=> bs!464522 (not (= lambda!91997 lambda!91941))))

(declare-fun bs!464527 () Bool)

(assert (= bs!464527 (and d!703978 b!2435261)))

(assert (=> bs!464527 (not (= lambda!91997 lambda!91956))))

(assert (=> bs!464523 (not (= lambda!91997 lambda!91975))))

(assert (=> d!703978 true))

(assert (=> d!703978 true))

(assert (=> d!703978 true))

(assert (=> d!703978 (= (isDefined!4474 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460)) (Exists!1195 lambda!91997))))

(assert (=> d!703978 true))

(declare-fun _$89!1256 () Unit!41701)

(assert (=> d!703978 (= (choose!14440 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460) _$89!1256)))

(declare-fun bs!464531 () Bool)

(assert (= bs!464531 d!703978))

(assert (=> bs!464531 m!2815333))

(assert (=> bs!464531 m!2815333))

(assert (=> bs!464531 m!2815335))

(declare-fun m!2815965 () Bool)

(assert (=> bs!464531 m!2815965))

(assert (=> d!703800 d!703978))

(declare-fun b!2435917 () Bool)

(declare-fun e!1548260 () Bool)

(declare-fun e!1548257 () Bool)

(assert (=> b!2435917 (= e!1548260 e!1548257)))

(declare-fun c!388700 () Bool)

(assert (=> b!2435917 (= c!388700 ((_ is Union!7159) (regOne!14830 r!13927)))))

(declare-fun b!2435918 () Bool)

(declare-fun e!1548256 () Bool)

(declare-fun call!149216 () Bool)

(assert (=> b!2435918 (= e!1548256 call!149216)))

(declare-fun b!2435919 () Bool)

(declare-fun e!1548259 () Bool)

(declare-fun e!1548255 () Bool)

(assert (=> b!2435919 (= e!1548259 e!1548255)))

(declare-fun res!1034111 () Bool)

(assert (=> b!2435919 (=> (not res!1034111) (not e!1548255))))

(assert (=> b!2435919 (= res!1034111 call!149216)))

(declare-fun bm!149209 () Bool)

(declare-fun call!149215 () Bool)

(declare-fun call!149214 () Bool)

(assert (=> bm!149209 (= call!149215 call!149214)))

(declare-fun bm!149210 () Bool)

(assert (=> bm!149210 (= call!149216 (validRegex!2873 (ite c!388700 (regTwo!14831 (regOne!14830 r!13927)) (regOne!14830 (regOne!14830 r!13927)))))))

(declare-fun b!2435920 () Bool)

(declare-fun e!1548258 () Bool)

(assert (=> b!2435920 (= e!1548260 e!1548258)))

(declare-fun res!1034113 () Bool)

(assert (=> b!2435920 (= res!1034113 (not (nullable!2188 (reg!7488 (regOne!14830 r!13927)))))))

(assert (=> b!2435920 (=> (not res!1034113) (not e!1548258))))

(declare-fun b!2435921 () Bool)

(assert (=> b!2435921 (= e!1548255 call!149215)))

(declare-fun d!703982 () Bool)

(declare-fun res!1034110 () Bool)

(declare-fun e!1548261 () Bool)

(assert (=> d!703982 (=> res!1034110 e!1548261)))

(assert (=> d!703982 (= res!1034110 ((_ is ElementMatch!7159) (regOne!14830 r!13927)))))

(assert (=> d!703982 (= (validRegex!2873 (regOne!14830 r!13927)) e!1548261)))

(declare-fun b!2435922 () Bool)

(declare-fun res!1034112 () Bool)

(assert (=> b!2435922 (=> res!1034112 e!1548259)))

(assert (=> b!2435922 (= res!1034112 (not ((_ is Concat!11795) (regOne!14830 r!13927))))))

(assert (=> b!2435922 (= e!1548257 e!1548259)))

(declare-fun b!2435923 () Bool)

(assert (=> b!2435923 (= e!1548261 e!1548260)))

(declare-fun c!388699 () Bool)

(assert (=> b!2435923 (= c!388699 ((_ is Star!7159) (regOne!14830 r!13927)))))

(declare-fun b!2435924 () Bool)

(declare-fun res!1034114 () Bool)

(assert (=> b!2435924 (=> (not res!1034114) (not e!1548256))))

(assert (=> b!2435924 (= res!1034114 call!149215)))

(assert (=> b!2435924 (= e!1548257 e!1548256)))

(declare-fun b!2435925 () Bool)

(assert (=> b!2435925 (= e!1548258 call!149214)))

(declare-fun bm!149211 () Bool)

(assert (=> bm!149211 (= call!149214 (validRegex!2873 (ite c!388699 (reg!7488 (regOne!14830 r!13927)) (ite c!388700 (regOne!14831 (regOne!14830 r!13927)) (regTwo!14830 (regOne!14830 r!13927))))))))

(assert (= (and d!703982 (not res!1034110)) b!2435923))

(assert (= (and b!2435923 c!388699) b!2435920))

(assert (= (and b!2435923 (not c!388699)) b!2435917))

(assert (= (and b!2435920 res!1034113) b!2435925))

(assert (= (and b!2435917 c!388700) b!2435924))

(assert (= (and b!2435917 (not c!388700)) b!2435922))

(assert (= (and b!2435924 res!1034114) b!2435918))

(assert (= (and b!2435922 (not res!1034112)) b!2435919))

(assert (= (and b!2435919 res!1034111) b!2435921))

(assert (= (or b!2435924 b!2435921) bm!149209))

(assert (= (or b!2435918 b!2435919) bm!149210))

(assert (= (or b!2435925 bm!149209) bm!149211))

(declare-fun m!2815967 () Bool)

(assert (=> bm!149210 m!2815967))

(declare-fun m!2815969 () Bool)

(assert (=> b!2435920 m!2815969))

(declare-fun m!2815971 () Bool)

(assert (=> bm!149211 m!2815971))

(assert (=> d!703800 d!703982))

(assert (=> d!703800 d!703804))

(declare-fun d!703984 () Bool)

(assert (=> d!703984 (= (isEmpty!16497 s!9460) ((_ is Nil!28456) s!9460))))

(assert (=> bm!149143 d!703984))

(declare-fun d!703986 () Bool)

(assert (=> d!703986 (= (isEmptyExpr!206 lt!877394) ((_ is EmptyExpr!7159) lt!877394))))

(assert (=> b!2435508 d!703986))

(declare-fun d!703988 () Bool)

(assert (=> d!703988 (= (isConcat!206 lt!877394) ((_ is Concat!11795) lt!877394))))

(assert (=> b!2435506 d!703988))

(declare-fun b!2435926 () Bool)

(declare-fun e!1548267 () Bool)

(declare-fun e!1548264 () Bool)

(assert (=> b!2435926 (= e!1548267 e!1548264)))

(declare-fun c!388702 () Bool)

(assert (=> b!2435926 (= c!388702 ((_ is Union!7159) lt!877394))))

(declare-fun b!2435927 () Bool)

(declare-fun e!1548263 () Bool)

(declare-fun call!149219 () Bool)

(assert (=> b!2435927 (= e!1548263 call!149219)))

(declare-fun b!2435928 () Bool)

(declare-fun e!1548266 () Bool)

(declare-fun e!1548262 () Bool)

(assert (=> b!2435928 (= e!1548266 e!1548262)))

(declare-fun res!1034116 () Bool)

(assert (=> b!2435928 (=> (not res!1034116) (not e!1548262))))

(assert (=> b!2435928 (= res!1034116 call!149219)))

(declare-fun bm!149212 () Bool)

(declare-fun call!149218 () Bool)

(declare-fun call!149217 () Bool)

(assert (=> bm!149212 (= call!149218 call!149217)))

(declare-fun bm!149213 () Bool)

(assert (=> bm!149213 (= call!149219 (validRegex!2873 (ite c!388702 (regTwo!14831 lt!877394) (regOne!14830 lt!877394))))))

(declare-fun b!2435929 () Bool)

(declare-fun e!1548265 () Bool)

(assert (=> b!2435929 (= e!1548267 e!1548265)))

(declare-fun res!1034118 () Bool)

(assert (=> b!2435929 (= res!1034118 (not (nullable!2188 (reg!7488 lt!877394))))))

(assert (=> b!2435929 (=> (not res!1034118) (not e!1548265))))

(declare-fun b!2435930 () Bool)

(assert (=> b!2435930 (= e!1548262 call!149218)))

(declare-fun d!703990 () Bool)

(declare-fun res!1034115 () Bool)

(declare-fun e!1548268 () Bool)

(assert (=> d!703990 (=> res!1034115 e!1548268)))

(assert (=> d!703990 (= res!1034115 ((_ is ElementMatch!7159) lt!877394))))

(assert (=> d!703990 (= (validRegex!2873 lt!877394) e!1548268)))

(declare-fun b!2435931 () Bool)

(declare-fun res!1034117 () Bool)

(assert (=> b!2435931 (=> res!1034117 e!1548266)))

(assert (=> b!2435931 (= res!1034117 (not ((_ is Concat!11795) lt!877394)))))

(assert (=> b!2435931 (= e!1548264 e!1548266)))

(declare-fun b!2435932 () Bool)

(assert (=> b!2435932 (= e!1548268 e!1548267)))

(declare-fun c!388701 () Bool)

(assert (=> b!2435932 (= c!388701 ((_ is Star!7159) lt!877394))))

(declare-fun b!2435933 () Bool)

(declare-fun res!1034119 () Bool)

(assert (=> b!2435933 (=> (not res!1034119) (not e!1548263))))

(assert (=> b!2435933 (= res!1034119 call!149218)))

(assert (=> b!2435933 (= e!1548264 e!1548263)))

(declare-fun b!2435934 () Bool)

(assert (=> b!2435934 (= e!1548265 call!149217)))

(declare-fun bm!149214 () Bool)

(assert (=> bm!149214 (= call!149217 (validRegex!2873 (ite c!388701 (reg!7488 lt!877394) (ite c!388702 (regOne!14831 lt!877394) (regTwo!14830 lt!877394)))))))

(assert (= (and d!703990 (not res!1034115)) b!2435932))

(assert (= (and b!2435932 c!388701) b!2435929))

(assert (= (and b!2435932 (not c!388701)) b!2435926))

(assert (= (and b!2435929 res!1034118) b!2435934))

(assert (= (and b!2435926 c!388702) b!2435933))

(assert (= (and b!2435926 (not c!388702)) b!2435931))

(assert (= (and b!2435933 res!1034119) b!2435927))

(assert (= (and b!2435931 (not res!1034117)) b!2435928))

(assert (= (and b!2435928 res!1034116) b!2435930))

(assert (= (or b!2435933 b!2435930) bm!149212))

(assert (= (or b!2435927 b!2435928) bm!149213))

(assert (= (or b!2435934 bm!149212) bm!149214))

(declare-fun m!2815973 () Bool)

(assert (=> bm!149213 m!2815973))

(declare-fun m!2815975 () Bool)

(assert (=> b!2435929 m!2815975))

(declare-fun m!2815977 () Bool)

(assert (=> bm!149214 m!2815977))

(assert (=> d!703812 d!703990))

(declare-fun d!703992 () Bool)

(declare-fun res!1034120 () Bool)

(declare-fun e!1548269 () Bool)

(assert (=> d!703992 (=> res!1034120 e!1548269)))

(assert (=> d!703992 (= res!1034120 ((_ is Nil!28457) l!9164))))

(assert (=> d!703992 (= (forall!5793 l!9164 lambda!91979) e!1548269)))

(declare-fun b!2435935 () Bool)

(declare-fun e!1548270 () Bool)

(assert (=> b!2435935 (= e!1548269 e!1548270)))

(declare-fun res!1034121 () Bool)

(assert (=> b!2435935 (=> (not res!1034121) (not e!1548270))))

(assert (=> b!2435935 (= res!1034121 (dynLambda!12246 lambda!91979 (h!33858 l!9164)))))

(declare-fun b!2435936 () Bool)

(assert (=> b!2435936 (= e!1548270 (forall!5793 (t!208532 l!9164) lambda!91979))))

(assert (= (and d!703992 (not res!1034120)) b!2435935))

(assert (= (and b!2435935 res!1034121) b!2435936))

(declare-fun b_lambda!74869 () Bool)

(assert (=> (not b_lambda!74869) (not b!2435935)))

(declare-fun m!2815979 () Bool)

(assert (=> b!2435935 m!2815979))

(declare-fun m!2815981 () Bool)

(assert (=> b!2435936 m!2815981))

(assert (=> d!703812 d!703992))

(assert (=> b!2435396 d!703938))

(declare-fun d!703994 () Bool)

(assert (=> d!703994 (= (nullable!2188 EmptyExpr!7159) true)))

(assert (=> b!2435371 d!703994))

(assert (=> bm!149147 d!703984))

(declare-fun d!703996 () Bool)

(assert (=> d!703996 (= (isEmptyExpr!206 lt!877393) ((_ is EmptyExpr!7159) lt!877393))))

(assert (=> b!2435498 d!703996))

(declare-fun d!704000 () Bool)

(assert (not d!704000))

(assert (=> b!2435369 d!704000))

(declare-fun d!704002 () Bool)

(assert (not d!704002))

(assert (=> b!2435369 d!704002))

(declare-fun d!704004 () Bool)

(assert (not d!704004))

(assert (=> b!2435369 d!704004))

(declare-fun d!704006 () Bool)

(assert (not d!704006))

(assert (=> b!2435369 d!704006))

(declare-fun d!704010 () Bool)

(assert (=> d!704010 (= (isDefined!4474 lt!877388) (not (isEmpty!16498 lt!877388)))))

(declare-fun bs!464547 () Bool)

(assert (= bs!464547 d!704010))

(declare-fun m!2815995 () Bool)

(assert (=> bs!464547 m!2815995))

(assert (=> d!703804 d!704010))

(declare-fun b!2435960 () Bool)

(declare-fun e!1548286 () Bool)

(declare-fun lt!877433 () Bool)

(declare-fun call!149224 () Bool)

(assert (=> b!2435960 (= e!1548286 (= lt!877433 call!149224))))

(declare-fun b!2435961 () Bool)

(declare-fun res!1034139 () Bool)

(declare-fun e!1548291 () Bool)

(assert (=> b!2435961 (=> (not res!1034139) (not e!1548291))))

(assert (=> b!2435961 (= res!1034139 (isEmpty!16497 (tail!3790 Nil!28456)))))

(declare-fun b!2435962 () Bool)

(declare-fun e!1548288 () Bool)

(declare-fun e!1548290 () Bool)

(assert (=> b!2435962 (= e!1548288 e!1548290)))

(declare-fun res!1034138 () Bool)

(assert (=> b!2435962 (=> res!1034138 e!1548290)))

(assert (=> b!2435962 (= res!1034138 call!149224)))

(declare-fun b!2435963 () Bool)

(declare-fun res!1034135 () Bool)

(declare-fun e!1548285 () Bool)

(assert (=> b!2435963 (=> res!1034135 e!1548285)))

(assert (=> b!2435963 (= res!1034135 (not ((_ is ElementMatch!7159) (regOne!14830 r!13927))))))

(declare-fun e!1548289 () Bool)

(assert (=> b!2435963 (= e!1548289 e!1548285)))

(declare-fun bm!149219 () Bool)

(assert (=> bm!149219 (= call!149224 (isEmpty!16497 Nil!28456))))

(declare-fun b!2435964 () Bool)

(assert (=> b!2435964 (= e!1548286 e!1548289)))

(declare-fun c!388708 () Bool)

(assert (=> b!2435964 (= c!388708 ((_ is EmptyLang!7159) (regOne!14830 r!13927)))))

(declare-fun d!704012 () Bool)

(assert (=> d!704012 e!1548286))

(declare-fun c!388709 () Bool)

(assert (=> d!704012 (= c!388709 ((_ is EmptyExpr!7159) (regOne!14830 r!13927)))))

(declare-fun e!1548287 () Bool)

(assert (=> d!704012 (= lt!877433 e!1548287)))

(declare-fun c!388710 () Bool)

(assert (=> d!704012 (= c!388710 (isEmpty!16497 Nil!28456))))

(assert (=> d!704012 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!704012 (= (matchR!3274 (regOne!14830 r!13927) Nil!28456) lt!877433)))

(declare-fun b!2435965 () Bool)

(assert (=> b!2435965 (= e!1548285 e!1548288)))

(declare-fun res!1034136 () Bool)

(assert (=> b!2435965 (=> (not res!1034136) (not e!1548288))))

(assert (=> b!2435965 (= res!1034136 (not lt!877433))))

(declare-fun b!2435966 () Bool)

(assert (=> b!2435966 (= e!1548290 (not (= (head!5517 Nil!28456) (c!388487 (regOne!14830 r!13927)))))))

(declare-fun b!2435967 () Bool)

(declare-fun res!1034137 () Bool)

(assert (=> b!2435967 (=> (not res!1034137) (not e!1548291))))

(assert (=> b!2435967 (= res!1034137 (not call!149224))))

(declare-fun b!2435968 () Bool)

(declare-fun res!1034141 () Bool)

(assert (=> b!2435968 (=> res!1034141 e!1548290)))

(assert (=> b!2435968 (= res!1034141 (not (isEmpty!16497 (tail!3790 Nil!28456))))))

(declare-fun b!2435969 () Bool)

(declare-fun res!1034142 () Bool)

(assert (=> b!2435969 (=> res!1034142 e!1548285)))

(assert (=> b!2435969 (= res!1034142 e!1548291)))

(declare-fun res!1034140 () Bool)

(assert (=> b!2435969 (=> (not res!1034140) (not e!1548291))))

(assert (=> b!2435969 (= res!1034140 lt!877433)))

(declare-fun b!2435970 () Bool)

(assert (=> b!2435970 (= e!1548289 (not lt!877433))))

(declare-fun b!2435971 () Bool)

(assert (=> b!2435971 (= e!1548287 (matchR!3274 (derivativeStep!1842 (regOne!14830 r!13927) (head!5517 Nil!28456)) (tail!3790 Nil!28456)))))

(declare-fun b!2435972 () Bool)

(assert (=> b!2435972 (= e!1548291 (= (head!5517 Nil!28456) (c!388487 (regOne!14830 r!13927))))))

(declare-fun b!2435973 () Bool)

(assert (=> b!2435973 (= e!1548287 (nullable!2188 (regOne!14830 r!13927)))))

(assert (= (and d!704012 c!388710) b!2435973))

(assert (= (and d!704012 (not c!388710)) b!2435971))

(assert (= (and d!704012 c!388709) b!2435960))

(assert (= (and d!704012 (not c!388709)) b!2435964))

(assert (= (and b!2435964 c!388708) b!2435970))

(assert (= (and b!2435964 (not c!388708)) b!2435963))

(assert (= (and b!2435963 (not res!1034135)) b!2435969))

(assert (= (and b!2435969 res!1034140) b!2435967))

(assert (= (and b!2435967 res!1034137) b!2435961))

(assert (= (and b!2435961 res!1034139) b!2435972))

(assert (= (and b!2435969 (not res!1034142)) b!2435965))

(assert (= (and b!2435965 res!1034136) b!2435962))

(assert (= (and b!2435962 (not res!1034138)) b!2435968))

(assert (= (and b!2435968 (not res!1034141)) b!2435966))

(assert (= (or b!2435960 b!2435962 b!2435967) bm!149219))

(assert (=> bm!149219 m!2815511))

(assert (=> b!2435972 m!2815513))

(assert (=> d!704012 m!2815511))

(assert (=> d!704012 m!2815541))

(assert (=> b!2435971 m!2815513))

(assert (=> b!2435971 m!2815513))

(declare-fun m!2816001 () Bool)

(assert (=> b!2435971 m!2816001))

(assert (=> b!2435971 m!2815519))

(assert (=> b!2435971 m!2816001))

(assert (=> b!2435971 m!2815519))

(declare-fun m!2816005 () Bool)

(assert (=> b!2435971 m!2816005))

(declare-fun m!2816007 () Bool)

(assert (=> b!2435973 m!2816007))

(assert (=> b!2435961 m!2815519))

(assert (=> b!2435961 m!2815519))

(assert (=> b!2435961 m!2815525))

(assert (=> b!2435966 m!2815513))

(assert (=> b!2435968 m!2815519))

(assert (=> b!2435968 m!2815519))

(assert (=> b!2435968 m!2815525))

(assert (=> d!703804 d!704012))

(assert (=> d!703804 d!703982))

(declare-fun bs!464548 () Bool)

(declare-fun d!704016 () Bool)

(assert (= bs!464548 (and d!704016 start!238370)))

(declare-fun lambda!92000 () Int)

(assert (=> bs!464548 (= lambda!92000 lambda!91939)))

(declare-fun bs!464549 () Bool)

(assert (= bs!464549 (and d!704016 d!703810)))

(assert (=> bs!464549 (= lambda!92000 lambda!91978)))

(declare-fun bs!464550 () Bool)

(assert (= bs!464550 (and d!704016 d!703812)))

(assert (=> bs!464550 (= lambda!92000 lambda!91979)))

(declare-fun b!2435984 () Bool)

(declare-fun e!1548300 () Bool)

(declare-fun e!1548299 () Bool)

(assert (=> b!2435984 (= e!1548300 e!1548299)))

(declare-fun c!388717 () Bool)

(assert (=> b!2435984 (= c!388717 (isEmpty!16494 (t!208532 l!9164)))))

(declare-fun b!2435985 () Bool)

(declare-fun e!1548301 () Regex!7159)

(declare-fun e!1548302 () Regex!7159)

(assert (=> b!2435985 (= e!1548301 e!1548302)))

(declare-fun c!388718 () Bool)

(assert (=> b!2435985 (= c!388718 ((_ is Cons!28457) (t!208532 l!9164)))))

(assert (=> d!704016 e!1548300))

(declare-fun res!1034144 () Bool)

(assert (=> d!704016 (=> (not res!1034144) (not e!1548300))))

(declare-fun lt!877435 () Regex!7159)

(assert (=> d!704016 (= res!1034144 (validRegex!2873 lt!877435))))

(assert (=> d!704016 (= lt!877435 e!1548301)))

(declare-fun c!388719 () Bool)

(declare-fun e!1548298 () Bool)

(assert (=> d!704016 (= c!388719 e!1548298)))

(declare-fun res!1034143 () Bool)

(assert (=> d!704016 (=> (not res!1034143) (not e!1548298))))

(assert (=> d!704016 (= res!1034143 ((_ is Cons!28457) (t!208532 l!9164)))))

(assert (=> d!704016 (forall!5793 (t!208532 l!9164) lambda!92000)))

(assert (=> d!704016 (= (generalisedConcat!260 (t!208532 l!9164)) lt!877435)))

(declare-fun b!2435986 () Bool)

(assert (=> b!2435986 (= e!1548301 (h!33858 (t!208532 l!9164)))))

(declare-fun b!2435987 () Bool)

(declare-fun e!1548297 () Bool)

(assert (=> b!2435987 (= e!1548299 e!1548297)))

(declare-fun c!388716 () Bool)

(assert (=> b!2435987 (= c!388716 (isEmpty!16494 (tail!3788 (t!208532 l!9164))))))

(declare-fun b!2435988 () Bool)

(assert (=> b!2435988 (= e!1548302 EmptyExpr!7159)))

(declare-fun b!2435989 () Bool)

(assert (=> b!2435989 (= e!1548302 (Concat!11795 (h!33858 (t!208532 l!9164)) (generalisedConcat!260 (t!208532 (t!208532 l!9164)))))))

(declare-fun b!2435990 () Bool)

(assert (=> b!2435990 (= e!1548298 (isEmpty!16494 (t!208532 (t!208532 l!9164))))))

(declare-fun b!2435991 () Bool)

(assert (=> b!2435991 (= e!1548297 (isConcat!206 lt!877435))))

(declare-fun b!2435992 () Bool)

(assert (=> b!2435992 (= e!1548297 (= lt!877435 (head!5515 (t!208532 l!9164))))))

(declare-fun b!2435993 () Bool)

(assert (=> b!2435993 (= e!1548299 (isEmptyExpr!206 lt!877435))))

(assert (= (and d!704016 res!1034143) b!2435990))

(assert (= (and d!704016 c!388719) b!2435986))

(assert (= (and d!704016 (not c!388719)) b!2435985))

(assert (= (and b!2435985 c!388718) b!2435989))

(assert (= (and b!2435985 (not c!388718)) b!2435988))

(assert (= (and d!704016 res!1034144) b!2435984))

(assert (= (and b!2435984 c!388717) b!2435993))

(assert (= (and b!2435984 (not c!388717)) b!2435987))

(assert (= (and b!2435987 c!388716) b!2435992))

(assert (= (and b!2435987 (not c!388716)) b!2435991))

(declare-fun m!2816017 () Bool)

(assert (=> b!2435987 m!2816017))

(assert (=> b!2435987 m!2816017))

(declare-fun m!2816019 () Bool)

(assert (=> b!2435987 m!2816019))

(declare-fun m!2816021 () Bool)

(assert (=> b!2435991 m!2816021))

(declare-fun m!2816023 () Bool)

(assert (=> d!704016 m!2816023))

(declare-fun m!2816025 () Bool)

(assert (=> d!704016 m!2816025))

(declare-fun m!2816027 () Bool)

(assert (=> b!2435992 m!2816027))

(declare-fun m!2816029 () Bool)

(assert (=> b!2435993 m!2816029))

(assert (=> b!2435984 m!2815603))

(declare-fun m!2816031 () Bool)

(assert (=> b!2435990 m!2816031))

(declare-fun m!2816033 () Bool)

(assert (=> b!2435989 m!2816033))

(assert (=> b!2435504 d!704016))

(declare-fun d!704020 () Bool)

(assert (=> d!704020 (= (isEmpty!16494 (tail!3788 l!9164)) ((_ is Nil!28457) (tail!3788 l!9164)))))

(assert (=> b!2435502 d!704020))

(assert (=> b!2435502 d!703784))

(declare-fun d!704022 () Bool)

(assert (=> d!704022 (= (isConcat!206 lt!877393) ((_ is Concat!11795) lt!877393))))

(assert (=> b!2435496 d!704022))

(assert (=> b!2435391 d!703974))

(assert (=> b!2435391 d!703970))

(declare-fun bs!464551 () Bool)

(declare-fun d!704024 () Bool)

(assert (= bs!464551 (and d!704024 start!238370)))

(declare-fun lambda!92001 () Int)

(assert (=> bs!464551 (= lambda!92001 lambda!91939)))

(declare-fun bs!464552 () Bool)

(assert (= bs!464552 (and d!704024 d!703810)))

(assert (=> bs!464552 (= lambda!92001 lambda!91978)))

(declare-fun bs!464553 () Bool)

(assert (= bs!464553 (and d!704024 d!703812)))

(assert (=> bs!464553 (= lambda!92001 lambda!91979)))

(declare-fun bs!464554 () Bool)

(assert (= bs!464554 (and d!704024 d!704016)))

(assert (=> bs!464554 (= lambda!92001 lambda!92000)))

(declare-fun b!2436003 () Bool)

(declare-fun e!1548313 () Bool)

(declare-fun e!1548312 () Bool)

(assert (=> b!2436003 (= e!1548313 e!1548312)))

(declare-fun c!388723 () Bool)

(assert (=> b!2436003 (= c!388723 (isEmpty!16494 (t!208532 lt!877337)))))

(declare-fun b!2436004 () Bool)

(declare-fun e!1548314 () Regex!7159)

(declare-fun e!1548315 () Regex!7159)

(assert (=> b!2436004 (= e!1548314 e!1548315)))

(declare-fun c!388724 () Bool)

(assert (=> b!2436004 (= c!388724 ((_ is Cons!28457) (t!208532 lt!877337)))))

(assert (=> d!704024 e!1548313))

(declare-fun res!1034151 () Bool)

(assert (=> d!704024 (=> (not res!1034151) (not e!1548313))))

(declare-fun lt!877436 () Regex!7159)

(assert (=> d!704024 (= res!1034151 (validRegex!2873 lt!877436))))

(assert (=> d!704024 (= lt!877436 e!1548314)))

(declare-fun c!388725 () Bool)

(declare-fun e!1548311 () Bool)

(assert (=> d!704024 (= c!388725 e!1548311)))

(declare-fun res!1034150 () Bool)

(assert (=> d!704024 (=> (not res!1034150) (not e!1548311))))

(assert (=> d!704024 (= res!1034150 ((_ is Cons!28457) (t!208532 lt!877337)))))

(assert (=> d!704024 (forall!5793 (t!208532 lt!877337) lambda!92001)))

(assert (=> d!704024 (= (generalisedConcat!260 (t!208532 lt!877337)) lt!877436)))

(declare-fun b!2436005 () Bool)

(assert (=> b!2436005 (= e!1548314 (h!33858 (t!208532 lt!877337)))))

(declare-fun b!2436006 () Bool)

(declare-fun e!1548310 () Bool)

(assert (=> b!2436006 (= e!1548312 e!1548310)))

(declare-fun c!388722 () Bool)

(assert (=> b!2436006 (= c!388722 (isEmpty!16494 (tail!3788 (t!208532 lt!877337))))))

(declare-fun b!2436007 () Bool)

(assert (=> b!2436007 (= e!1548315 EmptyExpr!7159)))

(declare-fun b!2436008 () Bool)

(assert (=> b!2436008 (= e!1548315 (Concat!11795 (h!33858 (t!208532 lt!877337)) (generalisedConcat!260 (t!208532 (t!208532 lt!877337)))))))

(declare-fun b!2436009 () Bool)

(assert (=> b!2436009 (= e!1548311 (isEmpty!16494 (t!208532 (t!208532 lt!877337))))))

(declare-fun b!2436010 () Bool)

(assert (=> b!2436010 (= e!1548310 (isConcat!206 lt!877436))))

(declare-fun b!2436011 () Bool)

(assert (=> b!2436011 (= e!1548310 (= lt!877436 (head!5515 (t!208532 lt!877337))))))

(declare-fun b!2436012 () Bool)

(assert (=> b!2436012 (= e!1548312 (isEmptyExpr!206 lt!877436))))

(assert (= (and d!704024 res!1034150) b!2436009))

(assert (= (and d!704024 c!388725) b!2436005))

(assert (= (and d!704024 (not c!388725)) b!2436004))

(assert (= (and b!2436004 c!388724) b!2436008))

(assert (= (and b!2436004 (not c!388724)) b!2436007))

(assert (= (and d!704024 res!1034151) b!2436003))

(assert (= (and b!2436003 c!388723) b!2436012))

(assert (= (and b!2436003 (not c!388723)) b!2436006))

(assert (= (and b!2436006 c!388722) b!2436011))

(assert (= (and b!2436006 (not c!388722)) b!2436010))

(declare-fun m!2816041 () Bool)

(assert (=> b!2436006 m!2816041))

(assert (=> b!2436006 m!2816041))

(declare-fun m!2816043 () Bool)

(assert (=> b!2436006 m!2816043))

(declare-fun m!2816045 () Bool)

(assert (=> b!2436010 m!2816045))

(declare-fun m!2816047 () Bool)

(assert (=> d!704024 m!2816047))

(declare-fun m!2816049 () Bool)

(assert (=> d!704024 m!2816049))

(declare-fun m!2816051 () Bool)

(assert (=> b!2436011 m!2816051))

(declare-fun m!2816053 () Bool)

(assert (=> b!2436012 m!2816053))

(assert (=> b!2436003 m!2815589))

(declare-fun m!2816055 () Bool)

(assert (=> b!2436009 m!2816055))

(declare-fun m!2816057 () Bool)

(assert (=> b!2436008 m!2816057))

(assert (=> b!2435494 d!704024))

(assert (=> b!2435364 d!704004))

(declare-fun d!704028 () Bool)

(assert (=> d!704028 (= (isEmpty!16498 (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460)) (not ((_ is Some!5647) (findConcatSeparation!756 (regOne!14830 r!13927) (regTwo!14830 r!13927) Nil!28456 s!9460 s!9460))))))

(assert (=> d!703798 d!704028))

(assert (=> d!703778 d!703772))

(assert (=> d!703778 d!703744))

(declare-fun d!704030 () Bool)

(assert (=> d!704030 (= (matchR!3274 r!13927 s!9460) (matchRSpec!1006 r!13927 s!9460))))

(assert (=> d!704030 true))

(declare-fun _$88!3280 () Unit!41701)

(assert (=> d!704030 (= (choose!14439 r!13927 s!9460) _$88!3280)))

(declare-fun bs!464555 () Bool)

(assert (= bs!464555 d!704030))

(assert (=> bs!464555 m!2815323))

(assert (=> bs!464555 m!2815321))

(assert (=> d!703778 d!704030))

(declare-fun b!2436099 () Bool)

(declare-fun e!1548345 () Bool)

(declare-fun e!1548341 () Bool)

(assert (=> b!2436099 (= e!1548345 e!1548341)))

(declare-fun c!388727 () Bool)

(assert (=> b!2436099 (= c!388727 ((_ is Union!7159) r!13927))))

(declare-fun b!2436101 () Bool)

(declare-fun e!1548340 () Bool)

(declare-fun call!149234 () Bool)

(assert (=> b!2436101 (= e!1548340 call!149234)))

(declare-fun b!2436103 () Bool)

(declare-fun e!1548343 () Bool)

(declare-fun e!1548339 () Bool)

(assert (=> b!2436103 (= e!1548343 e!1548339)))

(declare-fun res!1034154 () Bool)

(assert (=> b!2436103 (=> (not res!1034154) (not e!1548339))))

(assert (=> b!2436103 (= res!1034154 call!149234)))

(declare-fun bm!149227 () Bool)

(declare-fun call!149233 () Bool)

(declare-fun call!149232 () Bool)

(assert (=> bm!149227 (= call!149233 call!149232)))

(declare-fun bm!149228 () Bool)

(assert (=> bm!149228 (= call!149234 (validRegex!2873 (ite c!388727 (regTwo!14831 r!13927) (regOne!14830 r!13927))))))

(declare-fun b!2436106 () Bool)

(declare-fun e!1548342 () Bool)

(assert (=> b!2436106 (= e!1548345 e!1548342)))

(declare-fun res!1034156 () Bool)

(assert (=> b!2436106 (= res!1034156 (not (nullable!2188 (reg!7488 r!13927))))))

(assert (=> b!2436106 (=> (not res!1034156) (not e!1548342))))

(declare-fun b!2436107 () Bool)

(assert (=> b!2436107 (= e!1548339 call!149233)))

(declare-fun d!704032 () Bool)

(declare-fun res!1034153 () Bool)

(declare-fun e!1548346 () Bool)

(assert (=> d!704032 (=> res!1034153 e!1548346)))

(assert (=> d!704032 (= res!1034153 ((_ is ElementMatch!7159) r!13927))))

(assert (=> d!704032 (= (validRegex!2873 r!13927) e!1548346)))

(declare-fun b!2436108 () Bool)

(declare-fun res!1034155 () Bool)

(assert (=> b!2436108 (=> res!1034155 e!1548343)))

(assert (=> b!2436108 (= res!1034155 (not ((_ is Concat!11795) r!13927)))))

(assert (=> b!2436108 (= e!1548341 e!1548343)))

(declare-fun b!2436109 () Bool)

(assert (=> b!2436109 (= e!1548346 e!1548345)))

(declare-fun c!388726 () Bool)

(assert (=> b!2436109 (= c!388726 ((_ is Star!7159) r!13927))))

(declare-fun b!2436110 () Bool)

(declare-fun res!1034157 () Bool)

(assert (=> b!2436110 (=> (not res!1034157) (not e!1548340))))

(assert (=> b!2436110 (= res!1034157 call!149233)))

(assert (=> b!2436110 (= e!1548341 e!1548340)))

(declare-fun b!2436111 () Bool)

(assert (=> b!2436111 (= e!1548342 call!149232)))

(declare-fun bm!149229 () Bool)

(assert (=> bm!149229 (= call!149232 (validRegex!2873 (ite c!388726 (reg!7488 r!13927) (ite c!388727 (regOne!14831 r!13927) (regTwo!14830 r!13927)))))))

(assert (= (and d!704032 (not res!1034153)) b!2436109))

(assert (= (and b!2436109 c!388726) b!2436106))

(assert (= (and b!2436109 (not c!388726)) b!2436099))

(assert (= (and b!2436106 res!1034156) b!2436111))

(assert (= (and b!2436099 c!388727) b!2436110))

(assert (= (and b!2436099 (not c!388727)) b!2436108))

(assert (= (and b!2436110 res!1034157) b!2436101))

(assert (= (and b!2436108 (not res!1034155)) b!2436103))

(assert (= (and b!2436103 res!1034154) b!2436107))

(assert (= (or b!2436110 b!2436107) bm!149227))

(assert (= (or b!2436101 b!2436103) bm!149228))

(assert (= (or b!2436111 bm!149227) bm!149229))

(declare-fun m!2816059 () Bool)

(assert (=> bm!149228 m!2816059))

(declare-fun m!2816061 () Bool)

(assert (=> b!2436106 m!2816061))

(declare-fun m!2816063 () Bool)

(assert (=> bm!149229 m!2816063))

(assert (=> d!703778 d!704032))

(assert (=> b!2435499 d!703786))

(declare-fun b!2436128 () Bool)

(declare-fun e!1548352 () Bool)

(declare-fun lt!877437 () Bool)

(declare-fun call!149235 () Bool)

(assert (=> b!2436128 (= e!1548352 (= lt!877437 call!149235))))

(declare-fun b!2436129 () Bool)

(declare-fun res!1034162 () Bool)

(declare-fun e!1548357 () Bool)

(assert (=> b!2436129 (=> (not res!1034162) (not e!1548357))))

(assert (=> b!2436129 (= res!1034162 (isEmpty!16497 (tail!3790 (_1!16578 (get!8775 lt!877388)))))))

(declare-fun b!2436130 () Bool)

(declare-fun e!1548354 () Bool)

(declare-fun e!1548356 () Bool)

(assert (=> b!2436130 (= e!1548354 e!1548356)))

(declare-fun res!1034161 () Bool)

(assert (=> b!2436130 (=> res!1034161 e!1548356)))

(assert (=> b!2436130 (= res!1034161 call!149235)))

(declare-fun b!2436131 () Bool)

(declare-fun res!1034158 () Bool)

(declare-fun e!1548351 () Bool)

(assert (=> b!2436131 (=> res!1034158 e!1548351)))

(assert (=> b!2436131 (= res!1034158 (not ((_ is ElementMatch!7159) (regOne!14830 r!13927))))))

(declare-fun e!1548355 () Bool)

(assert (=> b!2436131 (= e!1548355 e!1548351)))

(declare-fun bm!149230 () Bool)

(assert (=> bm!149230 (= call!149235 (isEmpty!16497 (_1!16578 (get!8775 lt!877388))))))

(declare-fun b!2436132 () Bool)

(assert (=> b!2436132 (= e!1548352 e!1548355)))

(declare-fun c!388728 () Bool)

(assert (=> b!2436132 (= c!388728 ((_ is EmptyLang!7159) (regOne!14830 r!13927)))))

(declare-fun d!704034 () Bool)

(assert (=> d!704034 e!1548352))

(declare-fun c!388729 () Bool)

(assert (=> d!704034 (= c!388729 ((_ is EmptyExpr!7159) (regOne!14830 r!13927)))))

(declare-fun e!1548353 () Bool)

(assert (=> d!704034 (= lt!877437 e!1548353)))

(declare-fun c!388730 () Bool)

(assert (=> d!704034 (= c!388730 (isEmpty!16497 (_1!16578 (get!8775 lt!877388))))))

(assert (=> d!704034 (validRegex!2873 (regOne!14830 r!13927))))

(assert (=> d!704034 (= (matchR!3274 (regOne!14830 r!13927) (_1!16578 (get!8775 lt!877388))) lt!877437)))

(declare-fun b!2436133 () Bool)

(assert (=> b!2436133 (= e!1548351 e!1548354)))

(declare-fun res!1034159 () Bool)

(assert (=> b!2436133 (=> (not res!1034159) (not e!1548354))))

(assert (=> b!2436133 (= res!1034159 (not lt!877437))))

(declare-fun b!2436134 () Bool)

(assert (=> b!2436134 (= e!1548356 (not (= (head!5517 (_1!16578 (get!8775 lt!877388))) (c!388487 (regOne!14830 r!13927)))))))

(declare-fun b!2436135 () Bool)

(declare-fun res!1034160 () Bool)

(assert (=> b!2436135 (=> (not res!1034160) (not e!1548357))))

(assert (=> b!2436135 (= res!1034160 (not call!149235))))

(declare-fun b!2436136 () Bool)

(declare-fun res!1034164 () Bool)

(assert (=> b!2436136 (=> res!1034164 e!1548356)))

(assert (=> b!2436136 (= res!1034164 (not (isEmpty!16497 (tail!3790 (_1!16578 (get!8775 lt!877388))))))))

(declare-fun b!2436137 () Bool)

(declare-fun res!1034165 () Bool)

(assert (=> b!2436137 (=> res!1034165 e!1548351)))

(assert (=> b!2436137 (= res!1034165 e!1548357)))

(declare-fun res!1034163 () Bool)

(assert (=> b!2436137 (=> (not res!1034163) (not e!1548357))))

(assert (=> b!2436137 (= res!1034163 lt!877437)))

(declare-fun b!2436138 () Bool)

(assert (=> b!2436138 (= e!1548355 (not lt!877437))))

(declare-fun b!2436139 () Bool)

(assert (=> b!2436139 (= e!1548353 (matchR!3274 (derivativeStep!1842 (regOne!14830 r!13927) (head!5517 (_1!16578 (get!8775 lt!877388)))) (tail!3790 (_1!16578 (get!8775 lt!877388)))))))

(declare-fun b!2436140 () Bool)

(assert (=> b!2436140 (= e!1548357 (= (head!5517 (_1!16578 (get!8775 lt!877388))) (c!388487 (regOne!14830 r!13927))))))

(declare-fun b!2436141 () Bool)

(assert (=> b!2436141 (= e!1548353 (nullable!2188 (regOne!14830 r!13927)))))

(assert (= (and d!704034 c!388730) b!2436141))

(assert (= (and d!704034 (not c!388730)) b!2436139))

(assert (= (and d!704034 c!388729) b!2436128))

(assert (= (and d!704034 (not c!388729)) b!2436132))

(assert (= (and b!2436132 c!388728) b!2436138))

(assert (= (and b!2436132 (not c!388728)) b!2436131))

(assert (= (and b!2436131 (not res!1034158)) b!2436137))

(assert (= (and b!2436137 res!1034163) b!2436135))

(assert (= (and b!2436135 res!1034160) b!2436129))

(assert (= (and b!2436129 res!1034162) b!2436140))

(assert (= (and b!2436137 (not res!1034165)) b!2436133))

(assert (= (and b!2436133 res!1034159) b!2436130))

(assert (= (and b!2436130 (not res!1034161)) b!2436136))

(assert (= (and b!2436136 (not res!1034164)) b!2436134))

(assert (= (or b!2436128 b!2436130 b!2436135) bm!149230))

(declare-fun m!2816065 () Bool)

(assert (=> bm!149230 m!2816065))

(declare-fun m!2816067 () Bool)

(assert (=> b!2436140 m!2816067))

(assert (=> d!704034 m!2816065))

(assert (=> d!704034 m!2815541))

(assert (=> b!2436139 m!2816067))

(assert (=> b!2436139 m!2816067))

(declare-fun m!2816069 () Bool)

(assert (=> b!2436139 m!2816069))

(declare-fun m!2816071 () Bool)

(assert (=> b!2436139 m!2816071))

(assert (=> b!2436139 m!2816069))

(assert (=> b!2436139 m!2816071))

(declare-fun m!2816073 () Bool)

(assert (=> b!2436139 m!2816073))

(assert (=> b!2436141 m!2816007))

(assert (=> b!2436129 m!2816071))

(assert (=> b!2436129 m!2816071))

(declare-fun m!2816075 () Bool)

(assert (=> b!2436129 m!2816075))

(assert (=> b!2436134 m!2816067))

(assert (=> b!2436136 m!2816071))

(assert (=> b!2436136 m!2816071))

(assert (=> b!2436136 m!2816075))

(assert (=> b!2435467 d!704034))

(assert (=> b!2435467 d!703910))

(declare-fun b!2436164 () Bool)

(declare-fun res!1034167 () Bool)

(declare-fun e!1548364 () Bool)

(assert (=> b!2436164 (=> (not res!1034167) (not e!1548364))))

(declare-fun lt!877438 () List!28554)

(assert (=> b!2436164 (= res!1034167 (= (size!22255 lt!877438) (+ (size!22255 (_1!16578 (get!8775 lt!877388))) (size!22255 (_2!16578 (get!8775 lt!877388))))))))

(declare-fun b!2436162 () Bool)

(declare-fun e!1548363 () List!28554)

(assert (=> b!2436162 (= e!1548363 (_2!16578 (get!8775 lt!877388)))))

(declare-fun d!704040 () Bool)

(assert (=> d!704040 e!1548364))

(declare-fun res!1034166 () Bool)

(assert (=> d!704040 (=> (not res!1034166) (not e!1548364))))

(assert (=> d!704040 (= res!1034166 (= (content!3917 lt!877438) ((_ map or) (content!3917 (_1!16578 (get!8775 lt!877388))) (content!3917 (_2!16578 (get!8775 lt!877388))))))))

(assert (=> d!704040 (= lt!877438 e!1548363)))

(declare-fun c!388731 () Bool)

(assert (=> d!704040 (= c!388731 ((_ is Nil!28456) (_1!16578 (get!8775 lt!877388))))))

(assert (=> d!704040 (= (++!7064 (_1!16578 (get!8775 lt!877388)) (_2!16578 (get!8775 lt!877388))) lt!877438)))

(declare-fun b!2436163 () Bool)

(assert (=> b!2436163 (= e!1548363 (Cons!28456 (h!33857 (_1!16578 (get!8775 lt!877388))) (++!7064 (t!208531 (_1!16578 (get!8775 lt!877388))) (_2!16578 (get!8775 lt!877388)))))))

(declare-fun b!2436165 () Bool)

(assert (=> b!2436165 (= e!1548364 (or (not (= (_2!16578 (get!8775 lt!877388)) Nil!28456)) (= lt!877438 (_1!16578 (get!8775 lt!877388)))))))

(assert (= (and d!704040 c!388731) b!2436162))

(assert (= (and d!704040 (not c!388731)) b!2436163))

(assert (= (and d!704040 res!1034166) b!2436164))

(assert (= (and b!2436164 res!1034167) b!2436165))

(declare-fun m!2816081 () Bool)

(assert (=> b!2436164 m!2816081))

(declare-fun m!2816083 () Bool)

(assert (=> b!2436164 m!2816083))

(declare-fun m!2816085 () Bool)

(assert (=> b!2436164 m!2816085))

(declare-fun m!2816087 () Bool)

(assert (=> d!704040 m!2816087))

(declare-fun m!2816089 () Bool)

(assert (=> d!704040 m!2816089))

(declare-fun m!2816091 () Bool)

(assert (=> d!704040 m!2816091))

(declare-fun m!2816093 () Bool)

(assert (=> b!2436163 m!2816093))

(assert (=> b!2435465 d!704040))

(assert (=> b!2435465 d!703910))

(assert (=> d!703772 d!703984))

(assert (=> d!703772 d!704032))

(assert (=> b!2435489 d!703782))

(declare-fun bs!464559 () Bool)

(declare-fun b!2436167 () Bool)

(assert (= bs!464559 (and b!2436167 d!703800)))

(declare-fun lambda!92002 () Int)

(assert (=> bs!464559 (not (= lambda!92002 lambda!91969))))

(declare-fun bs!464560 () Bool)

(assert (= bs!464560 (and b!2436167 b!2435787)))

(assert (=> bs!464560 (not (= lambda!92002 lambda!91985))))

(declare-fun bs!464561 () Bool)

(assert (= bs!464561 (and b!2436167 b!2434995)))

(assert (=> bs!464561 (not (= lambda!92002 lambda!91940))))

(declare-fun bs!464562 () Bool)

(assert (= bs!464562 (and b!2436167 d!703802)))

(assert (=> bs!464562 (not (= lambda!92002 lambda!91974))))

(declare-fun bs!464563 () Bool)

(assert (= bs!464563 (and b!2436167 b!2435784)))

(assert (=> bs!464563 (= (and (= (reg!7488 (regOne!14831 r!13927)) (reg!7488 (regTwo!14831 r!13927))) (= (regOne!14831 r!13927) (regTwo!14831 r!13927))) (= lambda!92002 lambda!91984))))

(declare-fun bs!464564 () Bool)

(assert (= bs!464564 (and b!2436167 b!2435264)))

(assert (=> bs!464564 (not (= lambda!92002 lambda!91957))))

(declare-fun bs!464565 () Bool)

(assert (= bs!464565 (and b!2436167 d!703978)))

(assert (=> bs!464565 (not (= lambda!92002 lambda!91997))))

(assert (=> bs!464561 (not (= lambda!92002 lambda!91941))))

(declare-fun bs!464566 () Bool)

(assert (= bs!464566 (and b!2436167 b!2435261)))

(assert (=> bs!464566 (= (and (= (reg!7488 (regOne!14831 r!13927)) (reg!7488 r!13927)) (= (regOne!14831 r!13927) r!13927)) (= lambda!92002 lambda!91956))))

(assert (=> bs!464562 (not (= lambda!92002 lambda!91975))))

(assert (=> b!2436167 true))

(assert (=> b!2436167 true))

(declare-fun bs!464567 () Bool)

(declare-fun b!2436170 () Bool)

(assert (= bs!464567 (and b!2436170 d!703800)))

(declare-fun lambda!92003 () Int)

(assert (=> bs!464567 (not (= lambda!92003 lambda!91969))))

(declare-fun bs!464568 () Bool)

(assert (= bs!464568 (and b!2436170 b!2435787)))

(assert (=> bs!464568 (= (and (= (regOne!14830 (regOne!14831 r!13927)) (regOne!14830 (regTwo!14831 r!13927))) (= (regTwo!14830 (regOne!14831 r!13927)) (regTwo!14830 (regTwo!14831 r!13927)))) (= lambda!92003 lambda!91985))))

(declare-fun bs!464569 () Bool)

(assert (= bs!464569 (and b!2436170 b!2434995)))

(assert (=> bs!464569 (not (= lambda!92003 lambda!91940))))

(declare-fun bs!464570 () Bool)

(assert (= bs!464570 (and b!2436170 d!703802)))

(assert (=> bs!464570 (not (= lambda!92003 lambda!91974))))

(declare-fun bs!464571 () Bool)

(assert (= bs!464571 (and b!2436170 b!2435264)))

(assert (=> bs!464571 (= (and (= (regOne!14830 (regOne!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regOne!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!92003 lambda!91957))))

(declare-fun bs!464572 () Bool)

(assert (= bs!464572 (and b!2436170 d!703978)))

(assert (=> bs!464572 (not (= lambda!92003 lambda!91997))))

(assert (=> bs!464569 (= (and (= (regOne!14830 (regOne!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regOne!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!92003 lambda!91941))))

(declare-fun bs!464573 () Bool)

(assert (= bs!464573 (and b!2436170 b!2435261)))

(assert (=> bs!464573 (not (= lambda!92003 lambda!91956))))

(assert (=> bs!464570 (= (and (= (regOne!14830 (regOne!14831 r!13927)) (regOne!14830 r!13927)) (= (regTwo!14830 (regOne!14831 r!13927)) (regTwo!14830 r!13927))) (= lambda!92003 lambda!91975))))

(declare-fun bs!464574 () Bool)

(assert (= bs!464574 (and b!2436170 b!2436167)))

(assert (=> bs!464574 (not (= lambda!92003 lambda!92002))))

(declare-fun bs!464575 () Bool)

(assert (= bs!464575 (and b!2436170 b!2435784)))

(assert (=> bs!464575 (not (= lambda!92003 lambda!91984))))

(assert (=> b!2436170 true))

(assert (=> b!2436170 true))

(declare-fun b!2436166 () Bool)

(declare-fun e!1548370 () Bool)

(declare-fun call!149236 () Bool)

(assert (=> b!2436166 (= e!1548370 call!149236)))

(declare-fun e!1548366 () Bool)

(declare-fun call!149237 () Bool)

(assert (=> b!2436167 (= e!1548366 call!149237)))

(declare-fun b!2436168 () Bool)

(declare-fun e!1548369 () Bool)

(assert (=> b!2436168 (= e!1548369 (= s!9460 (Cons!28456 (c!388487 (regOne!14831 r!13927)) Nil!28456)))))

(declare-fun bm!149231 () Bool)

(assert (=> bm!149231 (= call!149236 (isEmpty!16497 s!9460))))

(declare-fun b!2436169 () Bool)

(declare-fun e!1548367 () Bool)

(assert (=> b!2436169 (= e!1548370 e!1548367)))

(declare-fun res!1034170 () Bool)

(assert (=> b!2436169 (= res!1034170 (not ((_ is EmptyLang!7159) (regOne!14831 r!13927))))))

(assert (=> b!2436169 (=> (not res!1034170) (not e!1548367))))

(declare-fun e!1548368 () Bool)

(assert (=> b!2436170 (= e!1548368 call!149237)))

(declare-fun d!704044 () Bool)

(declare-fun c!388733 () Bool)

(assert (=> d!704044 (= c!388733 ((_ is EmptyExpr!7159) (regOne!14831 r!13927)))))

(assert (=> d!704044 (= (matchRSpec!1006 (regOne!14831 r!13927) s!9460) e!1548370)))

(declare-fun c!388734 () Bool)

(declare-fun bm!149232 () Bool)

(assert (=> bm!149232 (= call!149237 (Exists!1195 (ite c!388734 lambda!92002 lambda!92003)))))

(declare-fun b!2436171 () Bool)

(declare-fun e!1548365 () Bool)

(assert (=> b!2436171 (= e!1548365 e!1548368)))

(assert (=> b!2436171 (= c!388734 ((_ is Star!7159) (regOne!14831 r!13927)))))

(declare-fun b!2436172 () Bool)

(declare-fun e!1548371 () Bool)

(assert (=> b!2436172 (= e!1548371 (matchRSpec!1006 (regTwo!14831 (regOne!14831 r!13927)) s!9460))))

(declare-fun b!2436173 () Bool)

(declare-fun c!388735 () Bool)

(assert (=> b!2436173 (= c!388735 ((_ is Union!7159) (regOne!14831 r!13927)))))

(assert (=> b!2436173 (= e!1548369 e!1548365)))

(declare-fun b!2436174 () Bool)

(declare-fun res!1034168 () Bool)

(assert (=> b!2436174 (=> res!1034168 e!1548366)))

(assert (=> b!2436174 (= res!1034168 call!149236)))

(assert (=> b!2436174 (= e!1548368 e!1548366)))

(declare-fun b!2436175 () Bool)

(assert (=> b!2436175 (= e!1548365 e!1548371)))

(declare-fun res!1034169 () Bool)

(assert (=> b!2436175 (= res!1034169 (matchRSpec!1006 (regOne!14831 (regOne!14831 r!13927)) s!9460))))

(assert (=> b!2436175 (=> res!1034169 e!1548371)))

(declare-fun b!2436176 () Bool)

(declare-fun c!388732 () Bool)

(assert (=> b!2436176 (= c!388732 ((_ is ElementMatch!7159) (regOne!14831 r!13927)))))

(assert (=> b!2436176 (= e!1548367 e!1548369)))

(assert (= (and d!704044 c!388733) b!2436166))

(assert (= (and d!704044 (not c!388733)) b!2436169))

(assert (= (and b!2436169 res!1034170) b!2436176))

(assert (= (and b!2436176 c!388732) b!2436168))

(assert (= (and b!2436176 (not c!388732)) b!2436173))

(assert (= (and b!2436173 c!388735) b!2436175))

(assert (= (and b!2436173 (not c!388735)) b!2436171))

(assert (= (and b!2436175 (not res!1034169)) b!2436172))

(assert (= (and b!2436171 c!388734) b!2436174))

(assert (= (and b!2436171 (not c!388734)) b!2436170))

(assert (= (and b!2436174 (not res!1034168)) b!2436167))

(assert (= (or b!2436167 b!2436170) bm!149232))

(assert (= (or b!2436166 b!2436174) bm!149231))

(assert (=> bm!149231 m!2815447))

(declare-fun m!2816095 () Bool)

(assert (=> bm!149232 m!2816095))

(declare-fun m!2816097 () Bool)

(assert (=> b!2436172 m!2816097))

(declare-fun m!2816099 () Bool)

(assert (=> b!2436175 m!2816099))

(assert (=> b!2435269 d!704044))

(declare-fun d!704046 () Bool)

(declare-fun res!1034171 () Bool)

(declare-fun e!1548372 () Bool)

(assert (=> d!704046 (=> res!1034171 e!1548372)))

(assert (=> d!704046 (= res!1034171 ((_ is Nil!28457) (t!208532 l!9164)))))

(assert (=> d!704046 (= (forall!5793 (t!208532 l!9164) lambda!91939) e!1548372)))

(declare-fun b!2436177 () Bool)

(declare-fun e!1548373 () Bool)

(assert (=> b!2436177 (= e!1548372 e!1548373)))

(declare-fun res!1034172 () Bool)

(assert (=> b!2436177 (=> (not res!1034172) (not e!1548373))))

(assert (=> b!2436177 (= res!1034172 (dynLambda!12246 lambda!91939 (h!33858 (t!208532 l!9164))))))

(declare-fun b!2436178 () Bool)

(assert (=> b!2436178 (= e!1548373 (forall!5793 (t!208532 (t!208532 l!9164)) lambda!91939))))

(assert (= (and d!704046 (not res!1034171)) b!2436177))

(assert (= (and b!2436177 res!1034172) b!2436178))

(declare-fun b_lambda!74877 () Bool)

(assert (=> (not b_lambda!74877) (not b!2436177)))

(declare-fun m!2816101 () Bool)

(assert (=> b!2436177 m!2816101))

(declare-fun m!2816103 () Bool)

(assert (=> b!2436178 m!2816103))

(assert (=> b!2435357 d!704046))

(declare-fun b!2436179 () Bool)

(declare-fun e!1548379 () Bool)

(declare-fun e!1548376 () Bool)

(assert (=> b!2436179 (= e!1548379 e!1548376)))

(declare-fun c!388737 () Bool)

(assert (=> b!2436179 (= c!388737 ((_ is Union!7159) lt!877393))))

(declare-fun b!2436180 () Bool)

(declare-fun e!1548375 () Bool)

(declare-fun call!149240 () Bool)

(assert (=> b!2436180 (= e!1548375 call!149240)))

(declare-fun b!2436181 () Bool)

(declare-fun e!1548378 () Bool)

(declare-fun e!1548374 () Bool)

(assert (=> b!2436181 (= e!1548378 e!1548374)))

(declare-fun res!1034174 () Bool)

(assert (=> b!2436181 (=> (not res!1034174) (not e!1548374))))

(assert (=> b!2436181 (= res!1034174 call!149240)))

(declare-fun bm!149233 () Bool)

(declare-fun call!149239 () Bool)

(declare-fun call!149238 () Bool)

(assert (=> bm!149233 (= call!149239 call!149238)))

(declare-fun bm!149234 () Bool)

(assert (=> bm!149234 (= call!149240 (validRegex!2873 (ite c!388737 (regTwo!14831 lt!877393) (regOne!14830 lt!877393))))))

(declare-fun b!2436182 () Bool)

(declare-fun e!1548377 () Bool)

(assert (=> b!2436182 (= e!1548379 e!1548377)))

(declare-fun res!1034176 () Bool)

(assert (=> b!2436182 (= res!1034176 (not (nullable!2188 (reg!7488 lt!877393))))))

(assert (=> b!2436182 (=> (not res!1034176) (not e!1548377))))

(declare-fun b!2436183 () Bool)

(assert (=> b!2436183 (= e!1548374 call!149239)))

(declare-fun d!704048 () Bool)

(declare-fun res!1034173 () Bool)

(declare-fun e!1548380 () Bool)

(assert (=> d!704048 (=> res!1034173 e!1548380)))

(assert (=> d!704048 (= res!1034173 ((_ is ElementMatch!7159) lt!877393))))

(assert (=> d!704048 (= (validRegex!2873 lt!877393) e!1548380)))

(declare-fun b!2436184 () Bool)

(declare-fun res!1034175 () Bool)

(assert (=> b!2436184 (=> res!1034175 e!1548378)))

(assert (=> b!2436184 (= res!1034175 (not ((_ is Concat!11795) lt!877393)))))

(assert (=> b!2436184 (= e!1548376 e!1548378)))

(declare-fun b!2436185 () Bool)

(assert (=> b!2436185 (= e!1548380 e!1548379)))

(declare-fun c!388736 () Bool)

(assert (=> b!2436185 (= c!388736 ((_ is Star!7159) lt!877393))))

(declare-fun b!2436186 () Bool)

(declare-fun res!1034177 () Bool)

(assert (=> b!2436186 (=> (not res!1034177) (not e!1548375))))

(assert (=> b!2436186 (= res!1034177 call!149239)))

(assert (=> b!2436186 (= e!1548376 e!1548375)))

(declare-fun b!2436187 () Bool)

(assert (=> b!2436187 (= e!1548377 call!149238)))

(declare-fun bm!149235 () Bool)

(assert (=> bm!149235 (= call!149238 (validRegex!2873 (ite c!388736 (reg!7488 lt!877393) (ite c!388737 (regOne!14831 lt!877393) (regTwo!14830 lt!877393)))))))

(assert (= (and d!704048 (not res!1034173)) b!2436185))

(assert (= (and b!2436185 c!388736) b!2436182))

(assert (= (and b!2436185 (not c!388736)) b!2436179))

(assert (= (and b!2436182 res!1034176) b!2436187))

(assert (= (and b!2436179 c!388737) b!2436186))

(assert (= (and b!2436179 (not c!388737)) b!2436184))

(assert (= (and b!2436186 res!1034177) b!2436180))

(assert (= (and b!2436184 (not res!1034175)) b!2436181))

(assert (= (and b!2436181 res!1034174) b!2436183))

(assert (= (or b!2436186 b!2436183) bm!149233))

(assert (= (or b!2436180 b!2436181) bm!149234))

(assert (= (or b!2436187 bm!149233) bm!149235))

(declare-fun m!2816105 () Bool)

(assert (=> bm!149234 m!2816105))

(declare-fun m!2816107 () Bool)

(assert (=> b!2436182 m!2816107))

(declare-fun m!2816109 () Bool)

(assert (=> bm!149235 m!2816109))

(assert (=> d!703810 d!704048))

(declare-fun d!704050 () Bool)

(declare-fun res!1034178 () Bool)

(declare-fun e!1548381 () Bool)

(assert (=> d!704050 (=> res!1034178 e!1548381)))

(assert (=> d!704050 (= res!1034178 ((_ is Nil!28457) lt!877337))))

(assert (=> d!704050 (= (forall!5793 lt!877337 lambda!91978) e!1548381)))

(declare-fun b!2436188 () Bool)

(declare-fun e!1548382 () Bool)

(assert (=> b!2436188 (= e!1548381 e!1548382)))

(declare-fun res!1034179 () Bool)

(assert (=> b!2436188 (=> (not res!1034179) (not e!1548382))))

(assert (=> b!2436188 (= res!1034179 (dynLambda!12246 lambda!91978 (h!33858 lt!877337)))))

(declare-fun b!2436189 () Bool)

(assert (=> b!2436189 (= e!1548382 (forall!5793 (t!208532 lt!877337) lambda!91978))))

(assert (= (and d!704050 (not res!1034178)) b!2436188))

(assert (= (and b!2436188 res!1034179) b!2436189))

(declare-fun b_lambda!74879 () Bool)

(assert (=> (not b_lambda!74879) (not b!2436188)))

(declare-fun m!2816111 () Bool)

(assert (=> b!2436188 m!2816111))

(declare-fun m!2816113 () Bool)

(assert (=> b!2436189 m!2816113))

(assert (=> d!703810 d!704050))

(declare-fun d!704052 () Bool)

(assert (=> d!704052 (= (nullable!2188 r!13927) (nullableFct!532 r!13927))))

(declare-fun bs!464576 () Bool)

(assert (= bs!464576 d!704052))

(declare-fun m!2816115 () Bool)

(assert (=> bs!464576 m!2816115))

(assert (=> b!2435342 d!704052))

(declare-fun d!704054 () Bool)

(assert (not d!704054))

(assert (=> b!2435359 d!704054))

(assert (=> b!2435359 d!704006))

(declare-fun b!2436190 () Bool)

(declare-fun e!1548384 () Bool)

(declare-fun lt!877439 () Bool)

(declare-fun call!149241 () Bool)

(assert (=> b!2436190 (= e!1548384 (= lt!877439 call!149241))))

(declare-fun b!2436191 () Bool)

(declare-fun res!1034184 () Bool)

(declare-fun e!1548389 () Bool)

(assert (=> b!2436191 (=> (not res!1034184) (not e!1548389))))

(assert (=> b!2436191 (= res!1034184 (isEmpty!16497 (tail!3790 (tail!3790 s!9460))))))

(declare-fun b!2436192 () Bool)

(declare-fun e!1548386 () Bool)

(declare-fun e!1548388 () Bool)

(assert (=> b!2436192 (= e!1548386 e!1548388)))

(declare-fun res!1034183 () Bool)

(assert (=> b!2436192 (=> res!1034183 e!1548388)))

(assert (=> b!2436192 (= res!1034183 call!149241)))

(declare-fun b!2436193 () Bool)

(declare-fun res!1034180 () Bool)

(declare-fun e!1548383 () Bool)

(assert (=> b!2436193 (=> res!1034180 e!1548383)))

(assert (=> b!2436193 (= res!1034180 (not ((_ is ElementMatch!7159) (derivativeStep!1842 r!13927 (head!5517 s!9460)))))))

(declare-fun e!1548387 () Bool)

(assert (=> b!2436193 (= e!1548387 e!1548383)))

(declare-fun bm!149236 () Bool)

(assert (=> bm!149236 (= call!149241 (isEmpty!16497 (tail!3790 s!9460)))))

(declare-fun b!2436194 () Bool)

(assert (=> b!2436194 (= e!1548384 e!1548387)))

(declare-fun c!388738 () Bool)

(assert (=> b!2436194 (= c!388738 ((_ is EmptyLang!7159) (derivativeStep!1842 r!13927 (head!5517 s!9460))))))

(declare-fun d!704056 () Bool)

(assert (=> d!704056 e!1548384))

(declare-fun c!388739 () Bool)

(assert (=> d!704056 (= c!388739 ((_ is EmptyExpr!7159) (derivativeStep!1842 r!13927 (head!5517 s!9460))))))

(declare-fun e!1548385 () Bool)

(assert (=> d!704056 (= lt!877439 e!1548385)))

(declare-fun c!388740 () Bool)

(assert (=> d!704056 (= c!388740 (isEmpty!16497 (tail!3790 s!9460)))))

(assert (=> d!704056 (validRegex!2873 (derivativeStep!1842 r!13927 (head!5517 s!9460)))))

(assert (=> d!704056 (= (matchR!3274 (derivativeStep!1842 r!13927 (head!5517 s!9460)) (tail!3790 s!9460)) lt!877439)))

(declare-fun b!2436195 () Bool)

(assert (=> b!2436195 (= e!1548383 e!1548386)))

(declare-fun res!1034181 () Bool)

(assert (=> b!2436195 (=> (not res!1034181) (not e!1548386))))

(assert (=> b!2436195 (= res!1034181 (not lt!877439))))

(declare-fun b!2436196 () Bool)

(assert (=> b!2436196 (= e!1548388 (not (= (head!5517 (tail!3790 s!9460)) (c!388487 (derivativeStep!1842 r!13927 (head!5517 s!9460))))))))

(declare-fun b!2436197 () Bool)

(declare-fun res!1034182 () Bool)

(assert (=> b!2436197 (=> (not res!1034182) (not e!1548389))))

(assert (=> b!2436197 (= res!1034182 (not call!149241))))

(declare-fun b!2436198 () Bool)

(declare-fun res!1034186 () Bool)

(assert (=> b!2436198 (=> res!1034186 e!1548388)))

(assert (=> b!2436198 (= res!1034186 (not (isEmpty!16497 (tail!3790 (tail!3790 s!9460)))))))

(declare-fun b!2436199 () Bool)

(declare-fun res!1034187 () Bool)

(assert (=> b!2436199 (=> res!1034187 e!1548383)))

(assert (=> b!2436199 (= res!1034187 e!1548389)))

(declare-fun res!1034185 () Bool)

(assert (=> b!2436199 (=> (not res!1034185) (not e!1548389))))

(assert (=> b!2436199 (= res!1034185 lt!877439)))

(declare-fun b!2436200 () Bool)

(assert (=> b!2436200 (= e!1548387 (not lt!877439))))

(declare-fun b!2436201 () Bool)

(assert (=> b!2436201 (= e!1548385 (matchR!3274 (derivativeStep!1842 (derivativeStep!1842 r!13927 (head!5517 s!9460)) (head!5517 (tail!3790 s!9460))) (tail!3790 (tail!3790 s!9460))))))

(declare-fun b!2436202 () Bool)

(assert (=> b!2436202 (= e!1548389 (= (head!5517 (tail!3790 s!9460)) (c!388487 (derivativeStep!1842 r!13927 (head!5517 s!9460)))))))

(declare-fun b!2436203 () Bool)

(assert (=> b!2436203 (= e!1548385 (nullable!2188 (derivativeStep!1842 r!13927 (head!5517 s!9460))))))

(assert (= (and d!704056 c!388740) b!2436203))

(assert (= (and d!704056 (not c!388740)) b!2436201))

(assert (= (and d!704056 c!388739) b!2436190))

(assert (= (and d!704056 (not c!388739)) b!2436194))

(assert (= (and b!2436194 c!388738) b!2436200))

(assert (= (and b!2436194 (not c!388738)) b!2436193))

(assert (= (and b!2436193 (not res!1034180)) b!2436199))

(assert (= (and b!2436199 res!1034185) b!2436197))

(assert (= (and b!2436197 res!1034182) b!2436191))

(assert (= (and b!2436191 res!1034184) b!2436202))

(assert (= (and b!2436199 (not res!1034187)) b!2436195))

(assert (= (and b!2436195 res!1034181) b!2436192))

(assert (= (and b!2436192 (not res!1034183)) b!2436198))

(assert (= (and b!2436198 (not res!1034186)) b!2436196))

(assert (= (or b!2436190 b!2436192 b!2436197) bm!149236))

(assert (=> bm!149236 m!2815473))

(assert (=> bm!149236 m!2815479))

(assert (=> b!2436202 m!2815473))

(assert (=> b!2436202 m!2815911))

(assert (=> d!704056 m!2815473))

(assert (=> d!704056 m!2815479))

(assert (=> d!704056 m!2815471))

(declare-fun m!2816117 () Bool)

(assert (=> d!704056 m!2816117))

(assert (=> b!2436201 m!2815473))

(assert (=> b!2436201 m!2815911))

(assert (=> b!2436201 m!2815471))

(assert (=> b!2436201 m!2815911))

(declare-fun m!2816119 () Bool)

(assert (=> b!2436201 m!2816119))

(assert (=> b!2436201 m!2815473))

(assert (=> b!2436201 m!2815917))

(assert (=> b!2436201 m!2816119))

(assert (=> b!2436201 m!2815917))

(declare-fun m!2816121 () Bool)

(assert (=> b!2436201 m!2816121))

(assert (=> b!2436203 m!2815471))

(declare-fun m!2816123 () Bool)

(assert (=> b!2436203 m!2816123))

(assert (=> b!2436191 m!2815473))

(assert (=> b!2436191 m!2815917))

(assert (=> b!2436191 m!2815917))

(assert (=> b!2436191 m!2815923))

(assert (=> b!2436196 m!2815473))

(assert (=> b!2436196 m!2815911))

(assert (=> b!2436198 m!2815473))

(assert (=> b!2436198 m!2815917))

(assert (=> b!2436198 m!2815917))

(assert (=> b!2436198 m!2815923))

(assert (=> b!2435340 d!704056))

(declare-fun b!2436204 () Bool)

(declare-fun e!1548390 () Regex!7159)

(assert (=> b!2436204 (= e!1548390 (ite (= (head!5517 s!9460) (c!388487 r!13927)) EmptyExpr!7159 EmptyLang!7159))))

(declare-fun d!704058 () Bool)

(declare-fun lt!877440 () Regex!7159)

(assert (=> d!704058 (validRegex!2873 lt!877440)))

(declare-fun e!1548394 () Regex!7159)

(assert (=> d!704058 (= lt!877440 e!1548394)))

(declare-fun c!388741 () Bool)

(assert (=> d!704058 (= c!388741 (or ((_ is EmptyExpr!7159) r!13927) ((_ is EmptyLang!7159) r!13927)))))

(assert (=> d!704058 (validRegex!2873 r!13927)))

(assert (=> d!704058 (= (derivativeStep!1842 r!13927 (head!5517 s!9460)) lt!877440)))

(declare-fun b!2436205 () Bool)

(declare-fun e!1548391 () Regex!7159)

(declare-fun call!149244 () Regex!7159)

(assert (=> b!2436205 (= e!1548391 (Union!7159 (Concat!11795 call!149244 (regTwo!14830 r!13927)) EmptyLang!7159))))

(declare-fun b!2436206 () Bool)

(assert (=> b!2436206 (= e!1548394 EmptyLang!7159)))

(declare-fun b!2436207 () Bool)

(declare-fun call!149245 () Regex!7159)

(assert (=> b!2436207 (= e!1548391 (Union!7159 (Concat!11795 call!149245 (regTwo!14830 r!13927)) call!149244))))

(declare-fun b!2436208 () Bool)

(declare-fun c!388744 () Bool)

(assert (=> b!2436208 (= c!388744 (nullable!2188 (regOne!14830 r!13927)))))

(declare-fun e!1548392 () Regex!7159)

(assert (=> b!2436208 (= e!1548392 e!1548391)))

(declare-fun b!2436209 () Bool)

(declare-fun call!149242 () Regex!7159)

(assert (=> b!2436209 (= e!1548392 (Concat!11795 call!149242 r!13927))))

(declare-fun c!388742 () Bool)

(declare-fun c!388745 () Bool)

(declare-fun bm!149237 () Bool)

(declare-fun call!149243 () Regex!7159)

(assert (=> bm!149237 (= call!149243 (derivativeStep!1842 (ite c!388742 (regOne!14831 r!13927) (ite c!388745 (reg!7488 r!13927) (ite c!388744 (regTwo!14830 r!13927) (regOne!14830 r!13927)))) (head!5517 s!9460)))))

(declare-fun b!2436210 () Bool)

(assert (=> b!2436210 (= e!1548394 e!1548390)))

(declare-fun c!388743 () Bool)

(assert (=> b!2436210 (= c!388743 ((_ is ElementMatch!7159) r!13927))))

(declare-fun b!2436211 () Bool)

(declare-fun e!1548393 () Regex!7159)

(assert (=> b!2436211 (= e!1548393 (Union!7159 call!149243 call!149245))))

(declare-fun bm!149238 () Bool)

(assert (=> bm!149238 (= call!149245 (derivativeStep!1842 (ite c!388742 (regTwo!14831 r!13927) (regOne!14830 r!13927)) (head!5517 s!9460)))))

(declare-fun b!2436212 () Bool)

(assert (=> b!2436212 (= c!388742 ((_ is Union!7159) r!13927))))

(assert (=> b!2436212 (= e!1548390 e!1548393)))

(declare-fun bm!149239 () Bool)

(assert (=> bm!149239 (= call!149244 call!149242)))

(declare-fun bm!149240 () Bool)

(assert (=> bm!149240 (= call!149242 call!149243)))

(declare-fun b!2436213 () Bool)

(assert (=> b!2436213 (= e!1548393 e!1548392)))

(assert (=> b!2436213 (= c!388745 ((_ is Star!7159) r!13927))))

(assert (= (and d!704058 c!388741) b!2436206))

(assert (= (and d!704058 (not c!388741)) b!2436210))

(assert (= (and b!2436210 c!388743) b!2436204))

(assert (= (and b!2436210 (not c!388743)) b!2436212))

(assert (= (and b!2436212 c!388742) b!2436211))

(assert (= (and b!2436212 (not c!388742)) b!2436213))

(assert (= (and b!2436213 c!388745) b!2436209))

(assert (= (and b!2436213 (not c!388745)) b!2436208))

(assert (= (and b!2436208 c!388744) b!2436207))

(assert (= (and b!2436208 (not c!388744)) b!2436205))

(assert (= (or b!2436207 b!2436205) bm!149239))

(assert (= (or b!2436209 bm!149239) bm!149240))

(assert (= (or b!2436211 bm!149240) bm!149237))

(assert (= (or b!2436211 b!2436207) bm!149238))

(declare-fun m!2816125 () Bool)

(assert (=> d!704058 m!2816125))

(assert (=> d!704058 m!2815469))

(assert (=> b!2436208 m!2816007))

(assert (=> bm!149237 m!2815467))

(declare-fun m!2816127 () Bool)

(assert (=> bm!149237 m!2816127))

(assert (=> bm!149238 m!2815467))

(declare-fun m!2816129 () Bool)

(assert (=> bm!149238 m!2816129))

(assert (=> b!2435340 d!704058))

(assert (=> b!2435340 d!703938))

(assert (=> b!2435340 d!703970))

(assert (=> b!2435402 d!703938))

(assert (=> b!2435461 d!704010))

(assert (=> d!703792 d!703984))

(assert (=> d!703792 d!703738))

(assert (=> b!2435337 d!703974))

(assert (=> b!2435337 d!703970))

(declare-fun d!704060 () Bool)

(assert (=> d!704060 true))

(assert (=> d!704060 true))

(declare-fun res!1034190 () Bool)

(assert (=> d!704060 (= (choose!14442 lambda!91940) res!1034190)))

(assert (=> d!703808 d!704060))

(declare-fun d!704062 () Bool)

(assert (=> d!704062 (= (Exists!1195 lambda!91974) (choose!14442 lambda!91974))))

(declare-fun bs!464577 () Bool)

(assert (= bs!464577 d!704062))

(declare-fun m!2816131 () Bool)

(assert (=> bs!464577 m!2816131))

(assert (=> d!703802 d!704062))

(declare-fun d!704064 () Bool)

(assert (=> d!704064 (= (Exists!1195 lambda!91975) (choose!14442 lambda!91975))))

(declare-fun bs!464578 () Bool)

(assert (= bs!464578 d!704064))

(declare-fun m!2816133 () Bool)

(assert (=> bs!464578 m!2816133))

(assert (=> d!703802 d!704064))

(declare-fun bs!464579 () Bool)

(declare-fun d!704066 () Bool)

(assert (= bs!464579 (and d!704066 b!2436170)))

(declare-fun lambda!92008 () Int)

(assert (=> bs!464579 (not (= lambda!92008 lambda!92003))))

(declare-fun bs!464580 () Bool)

(assert (= bs!464580 (and d!704066 d!703800)))

(assert (=> bs!464580 (= lambda!92008 lambda!91969)))

(declare-fun bs!464581 () Bool)

(assert (= bs!464581 (and d!704066 b!2435787)))

(assert (=> bs!464581 (not (= lambda!92008 lambda!91985))))

(declare-fun bs!464582 () Bool)

(assert (= bs!464582 (and d!704066 b!2434995)))

(assert (=> bs!464582 (= lambda!92008 lambda!91940)))

(declare-fun bs!464583 () Bool)

(assert (= bs!464583 (and d!704066 d!703802)))

(assert (=> bs!464583 (= lambda!92008 lambda!91974)))

(declare-fun bs!464584 () Bool)

(assert (= bs!464584 (and d!704066 b!2435264)))

(assert (=> bs!464584 (not (= lambda!92008 lambda!91957))))

(declare-fun bs!464585 () Bool)

(assert (= bs!464585 (and d!704066 d!703978)))

(assert (=> bs!464585 (= lambda!92008 lambda!91997)))

(assert (=> bs!464582 (not (= lambda!92008 lambda!91941))))

(declare-fun bs!464586 () Bool)

(assert (= bs!464586 (and d!704066 b!2435261)))

(assert (=> bs!464586 (not (= lambda!92008 lambda!91956))))

(assert (=> bs!464583 (not (= lambda!92008 lambda!91975))))

(declare-fun bs!464587 () Bool)

(assert (= bs!464587 (and d!704066 b!2436167)))

(assert (=> bs!464587 (not (= lambda!92008 lambda!92002))))

(declare-fun bs!464588 () Bool)

(assert (= bs!464588 (and d!704066 b!2435784)))

(assert (=> bs!464588 (not (= lambda!92008 lambda!91984))))

(assert (=> d!704066 true))

(assert (=> d!704066 true))

(assert (=> d!704066 true))

(declare-fun lambda!92009 () Int)

(assert (=> bs!464579 (= (and (= (regOne!14830 r!13927) (regOne!14830 (regOne!14831 r!13927))) (= (regTwo!14830 r!13927) (regTwo!14830 (regOne!14831 r!13927)))) (= lambda!92009 lambda!92003))))

(assert (=> bs!464580 (not (= lambda!92009 lambda!91969))))

(declare-fun bs!464589 () Bool)

(assert (= bs!464589 d!704066))

(assert (=> bs!464589 (not (= lambda!92009 lambda!92008))))

(assert (=> bs!464581 (= (and (= (regOne!14830 r!13927) (regOne!14830 (regTwo!14831 r!13927))) (= (regTwo!14830 r!13927) (regTwo!14830 (regTwo!14831 r!13927)))) (= lambda!92009 lambda!91985))))

(assert (=> bs!464582 (not (= lambda!92009 lambda!91940))))

(assert (=> bs!464583 (not (= lambda!92009 lambda!91974))))

(assert (=> bs!464584 (= lambda!92009 lambda!91957)))

(assert (=> bs!464585 (not (= lambda!92009 lambda!91997))))

(assert (=> bs!464582 (= lambda!92009 lambda!91941)))

(assert (=> bs!464586 (not (= lambda!92009 lambda!91956))))

(assert (=> bs!464583 (= lambda!92009 lambda!91975)))

(assert (=> bs!464587 (not (= lambda!92009 lambda!92002))))

(assert (=> bs!464588 (not (= lambda!92009 lambda!91984))))

(assert (=> d!704066 true))

(assert (=> d!704066 true))

(assert (=> d!704066 true))

(assert (=> d!704066 (= (Exists!1195 lambda!92008) (Exists!1195 lambda!92009))))

(assert (=> d!704066 true))

(declare-fun _$90!922 () Unit!41701)

(assert (=> d!704066 (= (choose!14441 (regOne!14830 r!13927) (regTwo!14830 r!13927) s!9460) _$90!922)))

(declare-fun m!2816135 () Bool)

(assert (=> bs!464589 m!2816135))

(declare-fun m!2816137 () Bool)

(assert (=> bs!464589 m!2816137))

(assert (=> d!703802 d!704066))

(assert (=> d!703802 d!703982))

(assert (=> b!2435335 d!703938))

(assert (=> b!2435507 d!703796))

(declare-fun d!704068 () Bool)

(assert (=> d!704068 (= (isEmpty!16494 (t!208532 l!9164)) ((_ is Nil!28457) (t!208532 l!9164)))))

(assert (=> b!2435505 d!704068))

(assert (=> b!2435370 d!704004))

(declare-fun d!704070 () Bool)

(assert (=> d!704070 (= (head!5515 lt!877337) (h!33858 lt!877337))))

(assert (=> b!2435497 d!704070))

(assert (=> bm!149149 d!703984))

(assert (=> b!2435330 d!703974))

(assert (=> b!2435330 d!703970))

(declare-fun b!2436222 () Bool)

(declare-fun e!1548404 () Bool)

(declare-fun e!1548401 () Bool)

(assert (=> b!2436222 (= e!1548404 e!1548401)))

(declare-fun c!388747 () Bool)

(assert (=> b!2436222 (= c!388747 ((_ is Union!7159) (h!33858 l!9164)))))

(declare-fun b!2436223 () Bool)

(declare-fun e!1548400 () Bool)

(declare-fun call!149248 () Bool)

(assert (=> b!2436223 (= e!1548400 call!149248)))

(declare-fun b!2436224 () Bool)

(declare-fun e!1548403 () Bool)

(declare-fun e!1548399 () Bool)

(assert (=> b!2436224 (= e!1548403 e!1548399)))

(declare-fun res!1034200 () Bool)

(assert (=> b!2436224 (=> (not res!1034200) (not e!1548399))))

(assert (=> b!2436224 (= res!1034200 call!149248)))

(declare-fun bm!149241 () Bool)

(declare-fun call!149247 () Bool)

(declare-fun call!149246 () Bool)

(assert (=> bm!149241 (= call!149247 call!149246)))

(declare-fun bm!149242 () Bool)

(assert (=> bm!149242 (= call!149248 (validRegex!2873 (ite c!388747 (regTwo!14831 (h!33858 l!9164)) (regOne!14830 (h!33858 l!9164)))))))

(declare-fun b!2436225 () Bool)

(declare-fun e!1548402 () Bool)

(assert (=> b!2436225 (= e!1548404 e!1548402)))

(declare-fun res!1034202 () Bool)

(assert (=> b!2436225 (= res!1034202 (not (nullable!2188 (reg!7488 (h!33858 l!9164)))))))

(assert (=> b!2436225 (=> (not res!1034202) (not e!1548402))))

(declare-fun b!2436226 () Bool)

(assert (=> b!2436226 (= e!1548399 call!149247)))

(declare-fun d!704072 () Bool)

(declare-fun res!1034199 () Bool)

(declare-fun e!1548405 () Bool)

(assert (=> d!704072 (=> res!1034199 e!1548405)))

(assert (=> d!704072 (= res!1034199 ((_ is ElementMatch!7159) (h!33858 l!9164)))))

(assert (=> d!704072 (= (validRegex!2873 (h!33858 l!9164)) e!1548405)))

(declare-fun b!2436227 () Bool)

(declare-fun res!1034201 () Bool)

(assert (=> b!2436227 (=> res!1034201 e!1548403)))

(assert (=> b!2436227 (= res!1034201 (not ((_ is Concat!11795) (h!33858 l!9164))))))

(assert (=> b!2436227 (= e!1548401 e!1548403)))

(declare-fun b!2436228 () Bool)

(assert (=> b!2436228 (= e!1548405 e!1548404)))

(declare-fun c!388746 () Bool)

(assert (=> b!2436228 (= c!388746 ((_ is Star!7159) (h!33858 l!9164)))))

(declare-fun b!2436229 () Bool)

(declare-fun res!1034203 () Bool)

(assert (=> b!2436229 (=> (not res!1034203) (not e!1548400))))

(assert (=> b!2436229 (= res!1034203 call!149247)))

(assert (=> b!2436229 (= e!1548401 e!1548400)))

(declare-fun b!2436230 () Bool)

(assert (=> b!2436230 (= e!1548402 call!149246)))

(declare-fun bm!149243 () Bool)

(assert (=> bm!149243 (= call!149246 (validRegex!2873 (ite c!388746 (reg!7488 (h!33858 l!9164)) (ite c!388747 (regOne!14831 (h!33858 l!9164)) (regTwo!14830 (h!33858 l!9164))))))))

(assert (= (and d!704072 (not res!1034199)) b!2436228))

(assert (= (and b!2436228 c!388746) b!2436225))

(assert (= (and b!2436228 (not c!388746)) b!2436222))

(assert (= (and b!2436225 res!1034202) b!2436230))

(assert (= (and b!2436222 c!388747) b!2436229))

(assert (= (and b!2436222 (not c!388747)) b!2436227))

(assert (= (and b!2436229 res!1034203) b!2436223))

(assert (= (and b!2436227 (not res!1034201)) b!2436224))

(assert (= (and b!2436224 res!1034200) b!2436226))

(assert (= (or b!2436229 b!2436226) bm!149241))

(assert (= (or b!2436223 b!2436224) bm!149242))

(assert (= (or b!2436230 bm!149241) bm!149243))

(declare-fun m!2816139 () Bool)

(assert (=> bm!149242 m!2816139))

(declare-fun m!2816141 () Bool)

(assert (=> b!2436225 m!2816141))

(declare-fun m!2816143 () Bool)

(assert (=> bm!149243 m!2816143))

(assert (=> bs!464458 d!704072))

(declare-fun d!704074 () Bool)

(assert (=> d!704074 true))

(assert (=> d!704074 true))

(declare-fun res!1034204 () Bool)

(assert (=> d!704074 (= (choose!14442 lambda!91941) res!1034204)))

(assert (=> d!703806 d!704074))

(assert (=> b!2435366 d!704054))

(assert (=> b!2435366 d!704006))

(declare-fun d!704076 () Bool)

(assert (=> d!704076 (= (isEmpty!16494 (t!208532 lt!877337)) ((_ is Nil!28457) (t!208532 lt!877337)))))

(assert (=> b!2435495 d!704076))

(declare-fun b!2436232 () Bool)

(declare-fun e!1548406 () Bool)

(declare-fun tp!773654 () Bool)

(declare-fun tp!773652 () Bool)

(assert (=> b!2436232 (= e!1548406 (and tp!773654 tp!773652))))

(declare-fun b!2436231 () Bool)

(assert (=> b!2436231 (= e!1548406 tp_is_empty!11731)))

(declare-fun b!2436234 () Bool)

(declare-fun tp!773651 () Bool)

(declare-fun tp!773653 () Bool)

(assert (=> b!2436234 (= e!1548406 (and tp!773651 tp!773653))))

(assert (=> b!2435521 (= tp!773453 e!1548406)))

(declare-fun b!2436233 () Bool)

(declare-fun tp!773650 () Bool)

(assert (=> b!2436233 (= e!1548406 tp!773650)))

(assert (= (and b!2435521 ((_ is ElementMatch!7159) (reg!7488 (h!33858 l!9164)))) b!2436231))

(assert (= (and b!2435521 ((_ is Concat!11795) (reg!7488 (h!33858 l!9164)))) b!2436232))

(assert (= (and b!2435521 ((_ is Star!7159) (reg!7488 (h!33858 l!9164)))) b!2436233))

(assert (= (and b!2435521 ((_ is Union!7159) (reg!7488 (h!33858 l!9164)))) b!2436234))

(declare-fun b!2436236 () Bool)

(declare-fun e!1548407 () Bool)

(declare-fun tp!773659 () Bool)

(declare-fun tp!773657 () Bool)

(assert (=> b!2436236 (= e!1548407 (and tp!773659 tp!773657))))

(declare-fun b!2436235 () Bool)

(assert (=> b!2436235 (= e!1548407 tp_is_empty!11731)))

(declare-fun b!2436238 () Bool)

(declare-fun tp!773656 () Bool)

(declare-fun tp!773658 () Bool)

(assert (=> b!2436238 (= e!1548407 (and tp!773656 tp!773658))))

(assert (=> b!2435522 (= tp!773454 e!1548407)))

(declare-fun b!2436237 () Bool)

(declare-fun tp!773655 () Bool)

(assert (=> b!2436237 (= e!1548407 tp!773655)))

(assert (= (and b!2435522 ((_ is ElementMatch!7159) (regOne!14831 (h!33858 l!9164)))) b!2436235))

(assert (= (and b!2435522 ((_ is Concat!11795) (regOne!14831 (h!33858 l!9164)))) b!2436236))

(assert (= (and b!2435522 ((_ is Star!7159) (regOne!14831 (h!33858 l!9164)))) b!2436237))

(assert (= (and b!2435522 ((_ is Union!7159) (regOne!14831 (h!33858 l!9164)))) b!2436238))

(declare-fun b!2436240 () Bool)

(declare-fun e!1548408 () Bool)

(declare-fun tp!773664 () Bool)

(declare-fun tp!773662 () Bool)

(assert (=> b!2436240 (= e!1548408 (and tp!773664 tp!773662))))

(declare-fun b!2436239 () Bool)

(assert (=> b!2436239 (= e!1548408 tp_is_empty!11731)))

(declare-fun b!2436242 () Bool)

(declare-fun tp!773661 () Bool)

(declare-fun tp!773663 () Bool)

(assert (=> b!2436242 (= e!1548408 (and tp!773661 tp!773663))))

(assert (=> b!2435522 (= tp!773456 e!1548408)))

(declare-fun b!2436241 () Bool)

(declare-fun tp!773660 () Bool)

(assert (=> b!2436241 (= e!1548408 tp!773660)))

(assert (= (and b!2435522 ((_ is ElementMatch!7159) (regTwo!14831 (h!33858 l!9164)))) b!2436239))

(assert (= (and b!2435522 ((_ is Concat!11795) (regTwo!14831 (h!33858 l!9164)))) b!2436240))

(assert (= (and b!2435522 ((_ is Star!7159) (regTwo!14831 (h!33858 l!9164)))) b!2436241))

(assert (= (and b!2435522 ((_ is Union!7159) (regTwo!14831 (h!33858 l!9164)))) b!2436242))

(declare-fun b!2436244 () Bool)

(declare-fun e!1548409 () Bool)

(declare-fun tp!773669 () Bool)

(declare-fun tp!773667 () Bool)

(assert (=> b!2436244 (= e!1548409 (and tp!773669 tp!773667))))

(declare-fun b!2436243 () Bool)

(assert (=> b!2436243 (= e!1548409 tp_is_empty!11731)))

(declare-fun b!2436246 () Bool)

(declare-fun tp!773666 () Bool)

(declare-fun tp!773668 () Bool)

(assert (=> b!2436246 (= e!1548409 (and tp!773666 tp!773668))))

(assert (=> b!2435520 (= tp!773457 e!1548409)))

(declare-fun b!2436245 () Bool)

(declare-fun tp!773665 () Bool)

(assert (=> b!2436245 (= e!1548409 tp!773665)))

(assert (= (and b!2435520 ((_ is ElementMatch!7159) (regOne!14830 (h!33858 l!9164)))) b!2436243))

(assert (= (and b!2435520 ((_ is Concat!11795) (regOne!14830 (h!33858 l!9164)))) b!2436244))

(assert (= (and b!2435520 ((_ is Star!7159) (regOne!14830 (h!33858 l!9164)))) b!2436245))

(assert (= (and b!2435520 ((_ is Union!7159) (regOne!14830 (h!33858 l!9164)))) b!2436246))

(declare-fun b!2436248 () Bool)

(declare-fun e!1548410 () Bool)

(declare-fun tp!773674 () Bool)

(declare-fun tp!773672 () Bool)

(assert (=> b!2436248 (= e!1548410 (and tp!773674 tp!773672))))

(declare-fun b!2436247 () Bool)

(assert (=> b!2436247 (= e!1548410 tp_is_empty!11731)))

(declare-fun b!2436250 () Bool)

(declare-fun tp!773671 () Bool)

(declare-fun tp!773673 () Bool)

(assert (=> b!2436250 (= e!1548410 (and tp!773671 tp!773673))))

(assert (=> b!2435520 (= tp!773455 e!1548410)))

(declare-fun b!2436249 () Bool)

(declare-fun tp!773670 () Bool)

(assert (=> b!2436249 (= e!1548410 tp!773670)))

(assert (= (and b!2435520 ((_ is ElementMatch!7159) (regTwo!14830 (h!33858 l!9164)))) b!2436247))

(assert (= (and b!2435520 ((_ is Concat!11795) (regTwo!14830 (h!33858 l!9164)))) b!2436248))

(assert (= (and b!2435520 ((_ is Star!7159) (regTwo!14830 (h!33858 l!9164)))) b!2436249))

(assert (= (and b!2435520 ((_ is Union!7159) (regTwo!14830 (h!33858 l!9164)))) b!2436250))

(declare-fun b!2436251 () Bool)

(declare-fun e!1548411 () Bool)

(declare-fun tp!773675 () Bool)

(assert (=> b!2436251 (= e!1548411 (and tp_is_empty!11731 tp!773675))))

(assert (=> b!2435552 (= tp!773491 e!1548411)))

(assert (= (and b!2435552 ((_ is Cons!28456) (t!208531 (t!208531 s!9460)))) b!2436251))

(declare-fun b!2436253 () Bool)

(declare-fun e!1548412 () Bool)

(declare-fun tp!773680 () Bool)

(declare-fun tp!773678 () Bool)

(assert (=> b!2436253 (= e!1548412 (and tp!773680 tp!773678))))

(declare-fun b!2436252 () Bool)

(assert (=> b!2436252 (= e!1548412 tp_is_empty!11731)))

(declare-fun b!2436255 () Bool)

(declare-fun tp!773677 () Bool)

(declare-fun tp!773679 () Bool)

(assert (=> b!2436255 (= e!1548412 (and tp!773677 tp!773679))))

(assert (=> b!2435527 (= tp!773462 e!1548412)))

(declare-fun b!2436254 () Bool)

(declare-fun tp!773676 () Bool)

(assert (=> b!2436254 (= e!1548412 tp!773676)))

(assert (= (and b!2435527 ((_ is ElementMatch!7159) (h!33858 (t!208532 l!9164)))) b!2436252))

(assert (= (and b!2435527 ((_ is Concat!11795) (h!33858 (t!208532 l!9164)))) b!2436253))

(assert (= (and b!2435527 ((_ is Star!7159) (h!33858 (t!208532 l!9164)))) b!2436254))

(assert (= (and b!2435527 ((_ is Union!7159) (h!33858 (t!208532 l!9164)))) b!2436255))

(declare-fun b!2436256 () Bool)

(declare-fun e!1548413 () Bool)

(declare-fun tp!773681 () Bool)

(declare-fun tp!773682 () Bool)

(assert (=> b!2436256 (= e!1548413 (and tp!773681 tp!773682))))

(assert (=> b!2435527 (= tp!773463 e!1548413)))

(assert (= (and b!2435527 ((_ is Cons!28457) (t!208532 (t!208532 l!9164)))) b!2436256))

(declare-fun b!2436258 () Bool)

(declare-fun e!1548414 () Bool)

(declare-fun tp!773687 () Bool)

(declare-fun tp!773685 () Bool)

(assert (=> b!2436258 (= e!1548414 (and tp!773687 tp!773685))))

(declare-fun b!2436257 () Bool)

(assert (=> b!2436257 (= e!1548414 tp_is_empty!11731)))

(declare-fun b!2436260 () Bool)

(declare-fun tp!773684 () Bool)

(declare-fun tp!773686 () Bool)

(assert (=> b!2436260 (= e!1548414 (and tp!773684 tp!773686))))

(assert (=> b!2435530 (= tp!773464 e!1548414)))

(declare-fun b!2436259 () Bool)

(declare-fun tp!773683 () Bool)

(assert (=> b!2436259 (= e!1548414 tp!773683)))

(assert (= (and b!2435530 ((_ is ElementMatch!7159) (reg!7488 (regOne!14830 r!13927)))) b!2436257))

(assert (= (and b!2435530 ((_ is Concat!11795) (reg!7488 (regOne!14830 r!13927)))) b!2436258))

(assert (= (and b!2435530 ((_ is Star!7159) (reg!7488 (regOne!14830 r!13927)))) b!2436259))

(assert (= (and b!2435530 ((_ is Union!7159) (reg!7488 (regOne!14830 r!13927)))) b!2436260))

(declare-fun b!2436262 () Bool)

(declare-fun e!1548415 () Bool)

(declare-fun tp!773692 () Bool)

(declare-fun tp!773690 () Bool)

(assert (=> b!2436262 (= e!1548415 (and tp!773692 tp!773690))))

(declare-fun b!2436261 () Bool)

(assert (=> b!2436261 (= e!1548415 tp_is_empty!11731)))

(declare-fun b!2436264 () Bool)

(declare-fun tp!773689 () Bool)

(declare-fun tp!773691 () Bool)

(assert (=> b!2436264 (= e!1548415 (and tp!773689 tp!773691))))

(assert (=> b!2435543 (= tp!773480 e!1548415)))

(declare-fun b!2436263 () Bool)

(declare-fun tp!773688 () Bool)

(assert (=> b!2436263 (= e!1548415 tp!773688)))

(assert (= (and b!2435543 ((_ is ElementMatch!7159) (regOne!14831 (regTwo!14831 r!13927)))) b!2436261))

(assert (= (and b!2435543 ((_ is Concat!11795) (regOne!14831 (regTwo!14831 r!13927)))) b!2436262))

(assert (= (and b!2435543 ((_ is Star!7159) (regOne!14831 (regTwo!14831 r!13927)))) b!2436263))

(assert (= (and b!2435543 ((_ is Union!7159) (regOne!14831 (regTwo!14831 r!13927)))) b!2436264))

(declare-fun b!2436266 () Bool)

(declare-fun e!1548416 () Bool)

(declare-fun tp!773697 () Bool)

(declare-fun tp!773695 () Bool)

(assert (=> b!2436266 (= e!1548416 (and tp!773697 tp!773695))))

(declare-fun b!2436265 () Bool)

(assert (=> b!2436265 (= e!1548416 tp_is_empty!11731)))

(declare-fun b!2436268 () Bool)

(declare-fun tp!773694 () Bool)

(declare-fun tp!773696 () Bool)

(assert (=> b!2436268 (= e!1548416 (and tp!773694 tp!773696))))

(assert (=> b!2435543 (= tp!773482 e!1548416)))

(declare-fun b!2436267 () Bool)

(declare-fun tp!773693 () Bool)

(assert (=> b!2436267 (= e!1548416 tp!773693)))

(assert (= (and b!2435543 ((_ is ElementMatch!7159) (regTwo!14831 (regTwo!14831 r!13927)))) b!2436265))

(assert (= (and b!2435543 ((_ is Concat!11795) (regTwo!14831 (regTwo!14831 r!13927)))) b!2436266))

(assert (= (and b!2435543 ((_ is Star!7159) (regTwo!14831 (regTwo!14831 r!13927)))) b!2436267))

(assert (= (and b!2435543 ((_ is Union!7159) (regTwo!14831 (regTwo!14831 r!13927)))) b!2436268))

(declare-fun b!2436270 () Bool)

(declare-fun e!1548417 () Bool)

(declare-fun tp!773702 () Bool)

(declare-fun tp!773700 () Bool)

(assert (=> b!2436270 (= e!1548417 (and tp!773702 tp!773700))))

(declare-fun b!2436269 () Bool)

(assert (=> b!2436269 (= e!1548417 tp_is_empty!11731)))

(declare-fun b!2436272 () Bool)

(declare-fun tp!773699 () Bool)

(declare-fun tp!773701 () Bool)

(assert (=> b!2436272 (= e!1548417 (and tp!773699 tp!773701))))

(assert (=> b!2435535 (= tp!773470 e!1548417)))

(declare-fun b!2436271 () Bool)

(declare-fun tp!773698 () Bool)

(assert (=> b!2436271 (= e!1548417 tp!773698)))

(assert (= (and b!2435535 ((_ is ElementMatch!7159) (regOne!14831 (regTwo!14830 r!13927)))) b!2436269))

(assert (= (and b!2435535 ((_ is Concat!11795) (regOne!14831 (regTwo!14830 r!13927)))) b!2436270))

(assert (= (and b!2435535 ((_ is Star!7159) (regOne!14831 (regTwo!14830 r!13927)))) b!2436271))

(assert (= (and b!2435535 ((_ is Union!7159) (regOne!14831 (regTwo!14830 r!13927)))) b!2436272))

(declare-fun b!2436274 () Bool)

(declare-fun e!1548418 () Bool)

(declare-fun tp!773707 () Bool)

(declare-fun tp!773705 () Bool)

(assert (=> b!2436274 (= e!1548418 (and tp!773707 tp!773705))))

(declare-fun b!2436273 () Bool)

(assert (=> b!2436273 (= e!1548418 tp_is_empty!11731)))

(declare-fun b!2436276 () Bool)

(declare-fun tp!773704 () Bool)

(declare-fun tp!773706 () Bool)

(assert (=> b!2436276 (= e!1548418 (and tp!773704 tp!773706))))

(assert (=> b!2435535 (= tp!773472 e!1548418)))

(declare-fun b!2436275 () Bool)

(declare-fun tp!773703 () Bool)

(assert (=> b!2436275 (= e!1548418 tp!773703)))

(assert (= (and b!2435535 ((_ is ElementMatch!7159) (regTwo!14831 (regTwo!14830 r!13927)))) b!2436273))

(assert (= (and b!2435535 ((_ is Concat!11795) (regTwo!14831 (regTwo!14830 r!13927)))) b!2436274))

(assert (= (and b!2435535 ((_ is Star!7159) (regTwo!14831 (regTwo!14830 r!13927)))) b!2436275))

(assert (= (and b!2435535 ((_ is Union!7159) (regTwo!14831 (regTwo!14830 r!13927)))) b!2436276))

(declare-fun b!2436278 () Bool)

(declare-fun e!1548419 () Bool)

(declare-fun tp!773712 () Bool)

(declare-fun tp!773710 () Bool)

(assert (=> b!2436278 (= e!1548419 (and tp!773712 tp!773710))))

(declare-fun b!2436277 () Bool)

(assert (=> b!2436277 (= e!1548419 tp_is_empty!11731)))

(declare-fun b!2436280 () Bool)

(declare-fun tp!773709 () Bool)

(declare-fun tp!773711 () Bool)

(assert (=> b!2436280 (= e!1548419 (and tp!773709 tp!773711))))

(assert (=> b!2435531 (= tp!773465 e!1548419)))

(declare-fun b!2436279 () Bool)

(declare-fun tp!773708 () Bool)

(assert (=> b!2436279 (= e!1548419 tp!773708)))

(assert (= (and b!2435531 ((_ is ElementMatch!7159) (regOne!14831 (regOne!14830 r!13927)))) b!2436277))

(assert (= (and b!2435531 ((_ is Concat!11795) (regOne!14831 (regOne!14830 r!13927)))) b!2436278))

(assert (= (and b!2435531 ((_ is Star!7159) (regOne!14831 (regOne!14830 r!13927)))) b!2436279))

(assert (= (and b!2435531 ((_ is Union!7159) (regOne!14831 (regOne!14830 r!13927)))) b!2436280))

(declare-fun b!2436282 () Bool)

(declare-fun e!1548420 () Bool)

(declare-fun tp!773717 () Bool)

(declare-fun tp!773715 () Bool)

(assert (=> b!2436282 (= e!1548420 (and tp!773717 tp!773715))))

(declare-fun b!2436281 () Bool)

(assert (=> b!2436281 (= e!1548420 tp_is_empty!11731)))

(declare-fun b!2436284 () Bool)

(declare-fun tp!773714 () Bool)

(declare-fun tp!773716 () Bool)

(assert (=> b!2436284 (= e!1548420 (and tp!773714 tp!773716))))

(assert (=> b!2435531 (= tp!773467 e!1548420)))

(declare-fun b!2436283 () Bool)

(declare-fun tp!773713 () Bool)

(assert (=> b!2436283 (= e!1548420 tp!773713)))

(assert (= (and b!2435531 ((_ is ElementMatch!7159) (regTwo!14831 (regOne!14830 r!13927)))) b!2436281))

(assert (= (and b!2435531 ((_ is Concat!11795) (regTwo!14831 (regOne!14830 r!13927)))) b!2436282))

(assert (= (and b!2435531 ((_ is Star!7159) (regTwo!14831 (regOne!14830 r!13927)))) b!2436283))

(assert (= (and b!2435531 ((_ is Union!7159) (regTwo!14831 (regOne!14830 r!13927)))) b!2436284))

(declare-fun b!2436286 () Bool)

(declare-fun e!1548421 () Bool)

(declare-fun tp!773722 () Bool)

(declare-fun tp!773720 () Bool)

(assert (=> b!2436286 (= e!1548421 (and tp!773722 tp!773720))))

(declare-fun b!2436285 () Bool)

(assert (=> b!2436285 (= e!1548421 tp_is_empty!11731)))

(declare-fun b!2436288 () Bool)

(declare-fun tp!773719 () Bool)

(declare-fun tp!773721 () Bool)

(assert (=> b!2436288 (= e!1548421 (and tp!773719 tp!773721))))

(assert (=> b!2435538 (= tp!773474 e!1548421)))

(declare-fun b!2436287 () Bool)

(declare-fun tp!773718 () Bool)

(assert (=> b!2436287 (= e!1548421 tp!773718)))

(assert (= (and b!2435538 ((_ is ElementMatch!7159) (reg!7488 (regOne!14831 r!13927)))) b!2436285))

(assert (= (and b!2435538 ((_ is Concat!11795) (reg!7488 (regOne!14831 r!13927)))) b!2436286))

(assert (= (and b!2435538 ((_ is Star!7159) (reg!7488 (regOne!14831 r!13927)))) b!2436287))

(assert (= (and b!2435538 ((_ is Union!7159) (reg!7488 (regOne!14831 r!13927)))) b!2436288))

(declare-fun b!2436290 () Bool)

(declare-fun e!1548422 () Bool)

(declare-fun tp!773727 () Bool)

(declare-fun tp!773725 () Bool)

(assert (=> b!2436290 (= e!1548422 (and tp!773727 tp!773725))))

(declare-fun b!2436289 () Bool)

(assert (=> b!2436289 (= e!1548422 tp_is_empty!11731)))

(declare-fun b!2436292 () Bool)

(declare-fun tp!773724 () Bool)

(declare-fun tp!773726 () Bool)

(assert (=> b!2436292 (= e!1548422 (and tp!773724 tp!773726))))

(assert (=> b!2435529 (= tp!773468 e!1548422)))

(declare-fun b!2436291 () Bool)

(declare-fun tp!773723 () Bool)

(assert (=> b!2436291 (= e!1548422 tp!773723)))

(assert (= (and b!2435529 ((_ is ElementMatch!7159) (regOne!14830 (regOne!14830 r!13927)))) b!2436289))

(assert (= (and b!2435529 ((_ is Concat!11795) (regOne!14830 (regOne!14830 r!13927)))) b!2436290))

(assert (= (and b!2435529 ((_ is Star!7159) (regOne!14830 (regOne!14830 r!13927)))) b!2436291))

(assert (= (and b!2435529 ((_ is Union!7159) (regOne!14830 (regOne!14830 r!13927)))) b!2436292))

(declare-fun b!2436294 () Bool)

(declare-fun e!1548423 () Bool)

(declare-fun tp!773732 () Bool)

(declare-fun tp!773730 () Bool)

(assert (=> b!2436294 (= e!1548423 (and tp!773732 tp!773730))))

(declare-fun b!2436293 () Bool)

(assert (=> b!2436293 (= e!1548423 tp_is_empty!11731)))

(declare-fun b!2436296 () Bool)

(declare-fun tp!773729 () Bool)

(declare-fun tp!773731 () Bool)

(assert (=> b!2436296 (= e!1548423 (and tp!773729 tp!773731))))

(assert (=> b!2435529 (= tp!773466 e!1548423)))

(declare-fun b!2436295 () Bool)

(declare-fun tp!773728 () Bool)

(assert (=> b!2436295 (= e!1548423 tp!773728)))

(assert (= (and b!2435529 ((_ is ElementMatch!7159) (regTwo!14830 (regOne!14830 r!13927)))) b!2436293))

(assert (= (and b!2435529 ((_ is Concat!11795) (regTwo!14830 (regOne!14830 r!13927)))) b!2436294))

(assert (= (and b!2435529 ((_ is Star!7159) (regTwo!14830 (regOne!14830 r!13927)))) b!2436295))

(assert (= (and b!2435529 ((_ is Union!7159) (regTwo!14830 (regOne!14830 r!13927)))) b!2436296))

(declare-fun b!2436298 () Bool)

(declare-fun e!1548424 () Bool)

(declare-fun tp!773737 () Bool)

(declare-fun tp!773735 () Bool)

(assert (=> b!2436298 (= e!1548424 (and tp!773737 tp!773735))))

(declare-fun b!2436297 () Bool)

(assert (=> b!2436297 (= e!1548424 tp_is_empty!11731)))

(declare-fun b!2436300 () Bool)

(declare-fun tp!773734 () Bool)

(declare-fun tp!773736 () Bool)

(assert (=> b!2436300 (= e!1548424 (and tp!773734 tp!773736))))

(assert (=> b!2435542 (= tp!773479 e!1548424)))

(declare-fun b!2436299 () Bool)

(declare-fun tp!773733 () Bool)

(assert (=> b!2436299 (= e!1548424 tp!773733)))

(assert (= (and b!2435542 ((_ is ElementMatch!7159) (reg!7488 (regTwo!14831 r!13927)))) b!2436297))

(assert (= (and b!2435542 ((_ is Concat!11795) (reg!7488 (regTwo!14831 r!13927)))) b!2436298))

(assert (= (and b!2435542 ((_ is Star!7159) (reg!7488 (regTwo!14831 r!13927)))) b!2436299))

(assert (= (and b!2435542 ((_ is Union!7159) (reg!7488 (regTwo!14831 r!13927)))) b!2436300))

(declare-fun b!2436302 () Bool)

(declare-fun e!1548425 () Bool)

(declare-fun tp!773742 () Bool)

(declare-fun tp!773740 () Bool)

(assert (=> b!2436302 (= e!1548425 (and tp!773742 tp!773740))))

(declare-fun b!2436301 () Bool)

(assert (=> b!2436301 (= e!1548425 tp_is_empty!11731)))

(declare-fun b!2436304 () Bool)

(declare-fun tp!773739 () Bool)

(declare-fun tp!773741 () Bool)

(assert (=> b!2436304 (= e!1548425 (and tp!773739 tp!773741))))

(assert (=> b!2435547 (= tp!773485 e!1548425)))

(declare-fun b!2436303 () Bool)

(declare-fun tp!773738 () Bool)

(assert (=> b!2436303 (= e!1548425 tp!773738)))

(assert (= (and b!2435547 ((_ is ElementMatch!7159) (regOne!14831 (reg!7488 r!13927)))) b!2436301))

(assert (= (and b!2435547 ((_ is Concat!11795) (regOne!14831 (reg!7488 r!13927)))) b!2436302))

(assert (= (and b!2435547 ((_ is Star!7159) (regOne!14831 (reg!7488 r!13927)))) b!2436303))

(assert (= (and b!2435547 ((_ is Union!7159) (regOne!14831 (reg!7488 r!13927)))) b!2436304))

(declare-fun b!2436306 () Bool)

(declare-fun e!1548426 () Bool)

(declare-fun tp!773747 () Bool)

(declare-fun tp!773745 () Bool)

(assert (=> b!2436306 (= e!1548426 (and tp!773747 tp!773745))))

(declare-fun b!2436305 () Bool)

(assert (=> b!2436305 (= e!1548426 tp_is_empty!11731)))

(declare-fun b!2436308 () Bool)

(declare-fun tp!773744 () Bool)

(declare-fun tp!773746 () Bool)

(assert (=> b!2436308 (= e!1548426 (and tp!773744 tp!773746))))

(assert (=> b!2435547 (= tp!773487 e!1548426)))

(declare-fun b!2436307 () Bool)

(declare-fun tp!773743 () Bool)

(assert (=> b!2436307 (= e!1548426 tp!773743)))

(assert (= (and b!2435547 ((_ is ElementMatch!7159) (regTwo!14831 (reg!7488 r!13927)))) b!2436305))

(assert (= (and b!2435547 ((_ is Concat!11795) (regTwo!14831 (reg!7488 r!13927)))) b!2436306))

(assert (= (and b!2435547 ((_ is Star!7159) (regTwo!14831 (reg!7488 r!13927)))) b!2436307))

(assert (= (and b!2435547 ((_ is Union!7159) (regTwo!14831 (reg!7488 r!13927)))) b!2436308))

(declare-fun b!2436310 () Bool)

(declare-fun e!1548427 () Bool)

(declare-fun tp!773752 () Bool)

(declare-fun tp!773750 () Bool)

(assert (=> b!2436310 (= e!1548427 (and tp!773752 tp!773750))))

(declare-fun b!2436309 () Bool)

(assert (=> b!2436309 (= e!1548427 tp_is_empty!11731)))

(declare-fun b!2436312 () Bool)

(declare-fun tp!773749 () Bool)

(declare-fun tp!773751 () Bool)

(assert (=> b!2436312 (= e!1548427 (and tp!773749 tp!773751))))

(assert (=> b!2435534 (= tp!773469 e!1548427)))

(declare-fun b!2436311 () Bool)

(declare-fun tp!773748 () Bool)

(assert (=> b!2436311 (= e!1548427 tp!773748)))

(assert (= (and b!2435534 ((_ is ElementMatch!7159) (reg!7488 (regTwo!14830 r!13927)))) b!2436309))

(assert (= (and b!2435534 ((_ is Concat!11795) (reg!7488 (regTwo!14830 r!13927)))) b!2436310))

(assert (= (and b!2435534 ((_ is Star!7159) (reg!7488 (regTwo!14830 r!13927)))) b!2436311))

(assert (= (and b!2435534 ((_ is Union!7159) (reg!7488 (regTwo!14830 r!13927)))) b!2436312))

(declare-fun b!2436314 () Bool)

(declare-fun e!1548428 () Bool)

(declare-fun tp!773757 () Bool)

(declare-fun tp!773755 () Bool)

(assert (=> b!2436314 (= e!1548428 (and tp!773757 tp!773755))))

(declare-fun b!2436313 () Bool)

(assert (=> b!2436313 (= e!1548428 tp_is_empty!11731)))

(declare-fun b!2436316 () Bool)

(declare-fun tp!773754 () Bool)

(declare-fun tp!773756 () Bool)

(assert (=> b!2436316 (= e!1548428 (and tp!773754 tp!773756))))

(assert (=> b!2435539 (= tp!773475 e!1548428)))

(declare-fun b!2436315 () Bool)

(declare-fun tp!773753 () Bool)

(assert (=> b!2436315 (= e!1548428 tp!773753)))

(assert (= (and b!2435539 ((_ is ElementMatch!7159) (regOne!14831 (regOne!14831 r!13927)))) b!2436313))

(assert (= (and b!2435539 ((_ is Concat!11795) (regOne!14831 (regOne!14831 r!13927)))) b!2436314))

(assert (= (and b!2435539 ((_ is Star!7159) (regOne!14831 (regOne!14831 r!13927)))) b!2436315))

(assert (= (and b!2435539 ((_ is Union!7159) (regOne!14831 (regOne!14831 r!13927)))) b!2436316))

(declare-fun b!2436318 () Bool)

(declare-fun e!1548429 () Bool)

(declare-fun tp!773762 () Bool)

(declare-fun tp!773760 () Bool)

(assert (=> b!2436318 (= e!1548429 (and tp!773762 tp!773760))))

(declare-fun b!2436317 () Bool)

(assert (=> b!2436317 (= e!1548429 tp_is_empty!11731)))

(declare-fun b!2436320 () Bool)

(declare-fun tp!773759 () Bool)

(declare-fun tp!773761 () Bool)

(assert (=> b!2436320 (= e!1548429 (and tp!773759 tp!773761))))

(assert (=> b!2435539 (= tp!773477 e!1548429)))

(declare-fun b!2436319 () Bool)

(declare-fun tp!773758 () Bool)

(assert (=> b!2436319 (= e!1548429 tp!773758)))

(assert (= (and b!2435539 ((_ is ElementMatch!7159) (regTwo!14831 (regOne!14831 r!13927)))) b!2436317))

(assert (= (and b!2435539 ((_ is Concat!11795) (regTwo!14831 (regOne!14831 r!13927)))) b!2436318))

(assert (= (and b!2435539 ((_ is Star!7159) (regTwo!14831 (regOne!14831 r!13927)))) b!2436319))

(assert (= (and b!2435539 ((_ is Union!7159) (regTwo!14831 (regOne!14831 r!13927)))) b!2436320))

(declare-fun b!2436322 () Bool)

(declare-fun e!1548430 () Bool)

(declare-fun tp!773767 () Bool)

(declare-fun tp!773765 () Bool)

(assert (=> b!2436322 (= e!1548430 (and tp!773767 tp!773765))))

(declare-fun b!2436321 () Bool)

(assert (=> b!2436321 (= e!1548430 tp_is_empty!11731)))

(declare-fun b!2436324 () Bool)

(declare-fun tp!773764 () Bool)

(declare-fun tp!773766 () Bool)

(assert (=> b!2436324 (= e!1548430 (and tp!773764 tp!773766))))

(assert (=> b!2435545 (= tp!773488 e!1548430)))

(declare-fun b!2436323 () Bool)

(declare-fun tp!773763 () Bool)

(assert (=> b!2436323 (= e!1548430 tp!773763)))

(assert (= (and b!2435545 ((_ is ElementMatch!7159) (regOne!14830 (reg!7488 r!13927)))) b!2436321))

(assert (= (and b!2435545 ((_ is Concat!11795) (regOne!14830 (reg!7488 r!13927)))) b!2436322))

(assert (= (and b!2435545 ((_ is Star!7159) (regOne!14830 (reg!7488 r!13927)))) b!2436323))

(assert (= (and b!2435545 ((_ is Union!7159) (regOne!14830 (reg!7488 r!13927)))) b!2436324))

(declare-fun b!2436326 () Bool)

(declare-fun e!1548431 () Bool)

(declare-fun tp!773772 () Bool)

(declare-fun tp!773770 () Bool)

(assert (=> b!2436326 (= e!1548431 (and tp!773772 tp!773770))))

(declare-fun b!2436325 () Bool)

(assert (=> b!2436325 (= e!1548431 tp_is_empty!11731)))

(declare-fun b!2436328 () Bool)

(declare-fun tp!773769 () Bool)

(declare-fun tp!773771 () Bool)

(assert (=> b!2436328 (= e!1548431 (and tp!773769 tp!773771))))

(assert (=> b!2435545 (= tp!773486 e!1548431)))

(declare-fun b!2436327 () Bool)

(declare-fun tp!773768 () Bool)

(assert (=> b!2436327 (= e!1548431 tp!773768)))

(assert (= (and b!2435545 ((_ is ElementMatch!7159) (regTwo!14830 (reg!7488 r!13927)))) b!2436325))

(assert (= (and b!2435545 ((_ is Concat!11795) (regTwo!14830 (reg!7488 r!13927)))) b!2436326))

(assert (= (and b!2435545 ((_ is Star!7159) (regTwo!14830 (reg!7488 r!13927)))) b!2436327))

(assert (= (and b!2435545 ((_ is Union!7159) (regTwo!14830 (reg!7488 r!13927)))) b!2436328))

(declare-fun b!2436330 () Bool)

(declare-fun e!1548432 () Bool)

(declare-fun tp!773777 () Bool)

(declare-fun tp!773775 () Bool)

(assert (=> b!2436330 (= e!1548432 (and tp!773777 tp!773775))))

(declare-fun b!2436329 () Bool)

(assert (=> b!2436329 (= e!1548432 tp_is_empty!11731)))

(declare-fun b!2436332 () Bool)

(declare-fun tp!773774 () Bool)

(declare-fun tp!773776 () Bool)

(assert (=> b!2436332 (= e!1548432 (and tp!773774 tp!773776))))

(assert (=> b!2435537 (= tp!773478 e!1548432)))

(declare-fun b!2436331 () Bool)

(declare-fun tp!773773 () Bool)

(assert (=> b!2436331 (= e!1548432 tp!773773)))

(assert (= (and b!2435537 ((_ is ElementMatch!7159) (regOne!14830 (regOne!14831 r!13927)))) b!2436329))

(assert (= (and b!2435537 ((_ is Concat!11795) (regOne!14830 (regOne!14831 r!13927)))) b!2436330))

(assert (= (and b!2435537 ((_ is Star!7159) (regOne!14830 (regOne!14831 r!13927)))) b!2436331))

(assert (= (and b!2435537 ((_ is Union!7159) (regOne!14830 (regOne!14831 r!13927)))) b!2436332))

(declare-fun b!2436334 () Bool)

(declare-fun e!1548433 () Bool)

(declare-fun tp!773782 () Bool)

(declare-fun tp!773780 () Bool)

(assert (=> b!2436334 (= e!1548433 (and tp!773782 tp!773780))))

(declare-fun b!2436333 () Bool)

(assert (=> b!2436333 (= e!1548433 tp_is_empty!11731)))

(declare-fun b!2436336 () Bool)

(declare-fun tp!773779 () Bool)

(declare-fun tp!773781 () Bool)

(assert (=> b!2436336 (= e!1548433 (and tp!773779 tp!773781))))

(assert (=> b!2435537 (= tp!773476 e!1548433)))

(declare-fun b!2436335 () Bool)

(declare-fun tp!773778 () Bool)

(assert (=> b!2436335 (= e!1548433 tp!773778)))

(assert (= (and b!2435537 ((_ is ElementMatch!7159) (regTwo!14830 (regOne!14831 r!13927)))) b!2436333))

(assert (= (and b!2435537 ((_ is Concat!11795) (regTwo!14830 (regOne!14831 r!13927)))) b!2436334))

(assert (= (and b!2435537 ((_ is Star!7159) (regTwo!14830 (regOne!14831 r!13927)))) b!2436335))

(assert (= (and b!2435537 ((_ is Union!7159) (regTwo!14830 (regOne!14831 r!13927)))) b!2436336))

(declare-fun b!2436338 () Bool)

(declare-fun e!1548434 () Bool)

(declare-fun tp!773787 () Bool)

(declare-fun tp!773785 () Bool)

(assert (=> b!2436338 (= e!1548434 (and tp!773787 tp!773785))))

(declare-fun b!2436337 () Bool)

(assert (=> b!2436337 (= e!1548434 tp_is_empty!11731)))

(declare-fun b!2436340 () Bool)

(declare-fun tp!773784 () Bool)

(declare-fun tp!773786 () Bool)

(assert (=> b!2436340 (= e!1548434 (and tp!773784 tp!773786))))

(assert (=> b!2435541 (= tp!773483 e!1548434)))

(declare-fun b!2436339 () Bool)

(declare-fun tp!773783 () Bool)

(assert (=> b!2436339 (= e!1548434 tp!773783)))

(assert (= (and b!2435541 ((_ is ElementMatch!7159) (regOne!14830 (regTwo!14831 r!13927)))) b!2436337))

(assert (= (and b!2435541 ((_ is Concat!11795) (regOne!14830 (regTwo!14831 r!13927)))) b!2436338))

(assert (= (and b!2435541 ((_ is Star!7159) (regOne!14830 (regTwo!14831 r!13927)))) b!2436339))

(assert (= (and b!2435541 ((_ is Union!7159) (regOne!14830 (regTwo!14831 r!13927)))) b!2436340))

(declare-fun b!2436342 () Bool)

(declare-fun e!1548435 () Bool)

(declare-fun tp!773792 () Bool)

(declare-fun tp!773790 () Bool)

(assert (=> b!2436342 (= e!1548435 (and tp!773792 tp!773790))))

(declare-fun b!2436341 () Bool)

(assert (=> b!2436341 (= e!1548435 tp_is_empty!11731)))

(declare-fun b!2436344 () Bool)

(declare-fun tp!773789 () Bool)

(declare-fun tp!773791 () Bool)

(assert (=> b!2436344 (= e!1548435 (and tp!773789 tp!773791))))

(assert (=> b!2435541 (= tp!773481 e!1548435)))

(declare-fun b!2436343 () Bool)

(declare-fun tp!773788 () Bool)

(assert (=> b!2436343 (= e!1548435 tp!773788)))

(assert (= (and b!2435541 ((_ is ElementMatch!7159) (regTwo!14830 (regTwo!14831 r!13927)))) b!2436341))

(assert (= (and b!2435541 ((_ is Concat!11795) (regTwo!14830 (regTwo!14831 r!13927)))) b!2436342))

(assert (= (and b!2435541 ((_ is Star!7159) (regTwo!14830 (regTwo!14831 r!13927)))) b!2436343))

(assert (= (and b!2435541 ((_ is Union!7159) (regTwo!14830 (regTwo!14831 r!13927)))) b!2436344))

(declare-fun b!2436346 () Bool)

(declare-fun e!1548436 () Bool)

(declare-fun tp!773797 () Bool)

(declare-fun tp!773795 () Bool)

(assert (=> b!2436346 (= e!1548436 (and tp!773797 tp!773795))))

(declare-fun b!2436345 () Bool)

(assert (=> b!2436345 (= e!1548436 tp_is_empty!11731)))

(declare-fun b!2436348 () Bool)

(declare-fun tp!773794 () Bool)

(declare-fun tp!773796 () Bool)

(assert (=> b!2436348 (= e!1548436 (and tp!773794 tp!773796))))

(assert (=> b!2435533 (= tp!773473 e!1548436)))

(declare-fun b!2436347 () Bool)

(declare-fun tp!773793 () Bool)

(assert (=> b!2436347 (= e!1548436 tp!773793)))

(assert (= (and b!2435533 ((_ is ElementMatch!7159) (regOne!14830 (regTwo!14830 r!13927)))) b!2436345))

(assert (= (and b!2435533 ((_ is Concat!11795) (regOne!14830 (regTwo!14830 r!13927)))) b!2436346))

(assert (= (and b!2435533 ((_ is Star!7159) (regOne!14830 (regTwo!14830 r!13927)))) b!2436347))

(assert (= (and b!2435533 ((_ is Union!7159) (regOne!14830 (regTwo!14830 r!13927)))) b!2436348))

(declare-fun b!2436350 () Bool)

(declare-fun e!1548437 () Bool)

(declare-fun tp!773802 () Bool)

(declare-fun tp!773800 () Bool)

(assert (=> b!2436350 (= e!1548437 (and tp!773802 tp!773800))))

(declare-fun b!2436349 () Bool)

(assert (=> b!2436349 (= e!1548437 tp_is_empty!11731)))

(declare-fun b!2436352 () Bool)

(declare-fun tp!773799 () Bool)

(declare-fun tp!773801 () Bool)

(assert (=> b!2436352 (= e!1548437 (and tp!773799 tp!773801))))

(assert (=> b!2435533 (= tp!773471 e!1548437)))

(declare-fun b!2436351 () Bool)

(declare-fun tp!773798 () Bool)

(assert (=> b!2436351 (= e!1548437 tp!773798)))

(assert (= (and b!2435533 ((_ is ElementMatch!7159) (regTwo!14830 (regTwo!14830 r!13927)))) b!2436349))

(assert (= (and b!2435533 ((_ is Concat!11795) (regTwo!14830 (regTwo!14830 r!13927)))) b!2436350))

(assert (= (and b!2435533 ((_ is Star!7159) (regTwo!14830 (regTwo!14830 r!13927)))) b!2436351))

(assert (= (and b!2435533 ((_ is Union!7159) (regTwo!14830 (regTwo!14830 r!13927)))) b!2436352))

(declare-fun b!2436354 () Bool)

(declare-fun e!1548438 () Bool)

(declare-fun tp!773807 () Bool)

(declare-fun tp!773805 () Bool)

(assert (=> b!2436354 (= e!1548438 (and tp!773807 tp!773805))))

(declare-fun b!2436353 () Bool)

(assert (=> b!2436353 (= e!1548438 tp_is_empty!11731)))

(declare-fun b!2436356 () Bool)

(declare-fun tp!773804 () Bool)

(declare-fun tp!773806 () Bool)

(assert (=> b!2436356 (= e!1548438 (and tp!773804 tp!773806))))

(assert (=> b!2435546 (= tp!773484 e!1548438)))

(declare-fun b!2436355 () Bool)

(declare-fun tp!773803 () Bool)

(assert (=> b!2436355 (= e!1548438 tp!773803)))

(assert (= (and b!2435546 ((_ is ElementMatch!7159) (reg!7488 (reg!7488 r!13927)))) b!2436353))

(assert (= (and b!2435546 ((_ is Concat!11795) (reg!7488 (reg!7488 r!13927)))) b!2436354))

(assert (= (and b!2435546 ((_ is Star!7159) (reg!7488 (reg!7488 r!13927)))) b!2436355))

(assert (= (and b!2435546 ((_ is Union!7159) (reg!7488 (reg!7488 r!13927)))) b!2436356))

(declare-fun b_lambda!74881 () Bool)

(assert (= b_lambda!74877 (or start!238370 b_lambda!74881)))

(declare-fun bs!464590 () Bool)

(declare-fun d!704078 () Bool)

(assert (= bs!464590 (and d!704078 start!238370)))

(assert (=> bs!464590 (= (dynLambda!12246 lambda!91939 (h!33858 (t!208532 l!9164))) (validRegex!2873 (h!33858 (t!208532 l!9164))))))

(declare-fun m!2816145 () Bool)

(assert (=> bs!464590 m!2816145))

(assert (=> b!2436177 d!704078))

(declare-fun b_lambda!74883 () Bool)

(assert (= b_lambda!74879 (or d!703810 b_lambda!74883)))

(declare-fun bs!464591 () Bool)

(declare-fun d!704080 () Bool)

(assert (= bs!464591 (and d!704080 d!703810)))

(assert (=> bs!464591 (= (dynLambda!12246 lambda!91978 (h!33858 lt!877337)) (validRegex!2873 (h!33858 lt!877337)))))

(declare-fun m!2816147 () Bool)

(assert (=> bs!464591 m!2816147))

(assert (=> b!2436188 d!704080))

(declare-fun b_lambda!74885 () Bool)

(assert (= b_lambda!74869 (or d!703812 b_lambda!74885)))

(declare-fun bs!464592 () Bool)

(declare-fun d!704082 () Bool)

(assert (= bs!464592 (and d!704082 d!703812)))

(assert (=> bs!464592 (= (dynLambda!12246 lambda!91979 (h!33858 l!9164)) (validRegex!2873 (h!33858 l!9164)))))

(assert (=> bs!464592 m!2815607))

(assert (=> b!2435935 d!704082))

(check-sat (not b!2436347) (not b!2435747) (not b!2435765) (not b!2436272) (not b!2436323) (not b!2436202) (not b!2436346) (not b!2435987) (not b!2436262) (not bm!149213) (not b!2436256) (not b!2436354) (not b!2435984) (not b!2435789) (not d!704034) (not b!2436315) (not b!2436249) (not d!703952) (not b!2436303) (not d!704056) (not b!2435719) (not b!2435704) (not b!2436350) (not b!2436006) (not d!703898) (not b!2436191) (not b!2435992) (not b!2435961) (not bs!464590) (not b!2436009) (not b!2436324) (not bs!464591) (not b!2436008) (not d!703958) (not b!2436292) (not bm!149190) (not b!2436139) (not b_lambda!74883) (not b!2436307) (not b!2435742) (not b!2436294) (not b!2435760) (not b!2435966) (not b!2436264) (not b!2435749) (not b!2436327) (not d!703976) (not b!2435835) (not b!2436284) (not d!703950) (not bm!149234) (not b!2435929) (not b!2436244) (not b!2436189) (not b!2436106) (not b!2435730) (not b!2435834) (not b!2436236) (not b!2436344) (not b!2436136) (not b!2435879) (not b!2436134) (not b!2435699) (not b!2435971) (not b!2436276) (not b!2436172) (not b!2436234) (not bm!149200) (not b!2436233) (not d!704024) (not b!2436328) (not b!2436295) (not b!2436275) (not d!703904) (not d!704040) (not b!2436331) (not bm!149237) (not b!2435824) (not b!2436242) (not b!2436182) (not b!2436260) (not b!2436237) (not b!2436342) (not b!2436263) tp_is_empty!11731 (not d!704030) (not b!2436312) (not bm!149228) (not d!704010) (not b!2436238) (not b!2436254) (not b!2436196) (not b!2436178) (not b!2436248) (not bm!149230) (not bm!149238) (not b!2436355) (not b!2436271) (not b!2436320) (not bm!149243) (not b!2436286) (not b!2436310) (not bm!149206) (not b!2435829) (not d!703942) (not bm!149235) (not b!2436253) (not bs!464592) (not b!2436308) (not b!2436274) (not b!2436250) (not b!2435770) (not bm!149231) (not b!2435836) (not b!2435698) (not b!2436267) (not b!2436012) (not d!704064) (not b!2436298) (not d!704058) (not b!2435723) (not d!704016) (not b!2436129) (not b!2436255) (not b!2436175) (not bm!149184) (not b!2436304) (not b!2436270) (not b!2436163) (not b!2435991) (not bm!149214) (not bm!149242) (not b_lambda!74881) (not d!704052) (not b!2436278) (not b!2436201) (not bm!149232) (not b!2436336) (not b!2436198) (not b!2435990) (not b!2436279) (not b!2436241) (not bm!149201) (not b!2436268) (not b!2436283) (not b!2435771) (not b!2436208) (not bm!149229) (not b!2436318) (not b!2435888) (not d!704066) (not d!704012) (not b!2436316) (not b!2436335) (not bm!149211) (not b!2436291) (not b!2436259) (not b!2436351) (not b!2436296) (not d!703878) (not b!2436282) (not b!2436251) (not b!2435722) (not b!2436343) (not b!2436280) (not b!2436356) (not bm!149210) (not b!2436314) (not b!2436340) (not b!2436332) (not b!2435989) (not b!2436246) (not bm!149205) (not b!2435737) (not b!2436299) (not b!2436225) (not b!2436306) (not bm!149185) (not b!2435972) (not bm!149236) (not b!2436339) (not b!2436330) (not b!2436319) (not b!2436003) (not b!2435831) (not b!2435993) (not b!2435973) (not b!2436300) (not b!2436164) (not b!2436287) (not d!703944) (not b!2435772) (not b!2435936) (not b!2436141) (not b!2436311) (not b!2435920) (not b!2436326) (not b!2436232) (not b!2435792) (not d!703886) (not b!2435705) (not bm!149178) (not d!704062) (not b!2436334) (not b!2435725) (not b!2436290) (not b!2435767) (not b!2435724) (not b!2436352) (not b!2436322) (not bm!149177) (not bm!149183) (not d!703864) (not b!2436338) (not b!2435748) (not b!2435968) (not b_lambda!74885) (not d!703874) (not b_lambda!74861) (not b!2435726) (not b!2436348) (not b!2436240) (not b!2436010) (not b!2436203) (not b!2436266) (not b!2436258) (not b!2436288) (not b!2435744) (not b!2436302) (not bm!149219) (not bm!149179) (not b!2436011) (not b!2436140) (not d!703978) (not b!2436245))
(check-sat)
