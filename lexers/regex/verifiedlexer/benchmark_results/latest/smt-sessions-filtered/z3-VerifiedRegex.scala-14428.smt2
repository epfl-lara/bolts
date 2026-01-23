; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751804 () Bool)

(assert start!751804)

(declare-fun b!7971295 () Bool)

(declare-fun e!4699991 () Bool)

(declare-fun e!4699992 () Bool)

(assert (=> b!7971295 (= e!4699991 e!4699992)))

(declare-fun res!3158118 () Bool)

(assert (=> b!7971295 (=> (not res!3158118) (not e!4699992))))

(declare-datatypes ((C!43412 0))(
  ( (C!43413 (val!32254 Int)) )
))
(declare-datatypes ((Regex!21537 0))(
  ( (ElementMatch!21537 (c!1463878 C!43412)) (Concat!30536 (regOne!43586 Regex!21537) (regTwo!43586 Regex!21537)) (EmptyExpr!21537) (Star!21537 (reg!21866 Regex!21537)) (EmptyLang!21537) (Union!21537 (regOne!43587 Regex!21537) (regTwo!43587 Regex!21537)) )
))
(declare-fun lt!2708145 () Regex!21537)

(declare-fun r!24602 () Regex!21537)

(assert (=> b!7971295 (= res!3158118 (= lt!2708145 r!24602))))

(declare-fun baseR!116 () Regex!21537)

(declare-datatypes ((List!74766 0))(
  ( (Nil!74642) (Cons!74642 (h!81090 C!43412) (t!390509 List!74766)) )
))
(declare-fun testedP!447 () List!74766)

(declare-fun derivative!723 (Regex!21537 List!74766) Regex!21537)

(assert (=> b!7971295 (= lt!2708145 (derivative!723 baseR!116 testedP!447))))

(declare-fun b!7971296 () Bool)

(declare-fun e!4699993 () Bool)

(declare-fun tp_is_empty!53617 () Bool)

(declare-fun tp!2376501 () Bool)

(assert (=> b!7971296 (= e!4699993 (and tp_is_empty!53617 tp!2376501))))

(declare-fun b!7971297 () Bool)

(declare-fun res!3158121 () Bool)

(assert (=> b!7971297 (=> (not res!3158121) (not e!4699991))))

(declare-fun input!7927 () List!74766)

(declare-fun isPrefix!6637 (List!74766 List!74766) Bool)

(assert (=> b!7971297 (= res!3158121 (isPrefix!6637 testedP!447 input!7927))))

(declare-fun b!7971298 () Bool)

(declare-fun e!4699990 () Bool)

(declare-fun tp!2376505 () Bool)

(assert (=> b!7971298 (= e!4699990 (and tp_is_empty!53617 tp!2376505))))

(declare-fun b!7971299 () Bool)

(declare-fun e!4699987 () Bool)

(declare-fun tp!2376506 () Bool)

(declare-fun tp!2376507 () Bool)

(assert (=> b!7971299 (= e!4699987 (and tp!2376506 tp!2376507))))

(declare-fun b!7971300 () Bool)

(declare-fun res!3158117 () Bool)

(declare-fun e!4699988 () Bool)

(assert (=> b!7971300 (=> (not res!3158117) (not e!4699988))))

(declare-fun nullable!9634 (Regex!21537) Bool)

(assert (=> b!7971300 (= res!3158117 (nullable!9634 r!24602))))

(declare-fun b!7971301 () Bool)

(declare-fun res!3158122 () Bool)

(assert (=> b!7971301 (=> (not res!3158122) (not e!4699988))))

(assert (=> b!7971301 (= res!3158122 (= testedP!447 input!7927))))

(declare-fun b!7971302 () Bool)

(declare-fun e!4699989 () Bool)

(declare-fun tp!2376502 () Bool)

(declare-fun tp!2376503 () Bool)

(assert (=> b!7971302 (= e!4699989 (and tp!2376502 tp!2376503))))

(declare-fun b!7971304 () Bool)

(assert (=> b!7971304 (= e!4699987 tp_is_empty!53617)))

(declare-fun b!7971305 () Bool)

(declare-datatypes ((tuple2!70732 0))(
  ( (tuple2!70733 (_1!38669 List!74766) (_2!38669 List!74766)) )
))
(declare-fun lt!2708144 () tuple2!70732)

(declare-fun matchR!10756 (Regex!21537 List!74766) Bool)

(assert (=> b!7971305 (= e!4699988 (not (matchR!10756 baseR!116 (_1!38669 lt!2708144))))))

(assert (=> b!7971305 (= (matchR!10756 baseR!116 testedP!447) (matchR!10756 lt!2708145 Nil!74642))))

(declare-datatypes ((Unit!170318 0))(
  ( (Unit!170319) )
))
(declare-fun lt!2708143 () Unit!170318)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!304 (Regex!21537 List!74766) Unit!170318)

(assert (=> b!7971305 (= lt!2708143 (lemmaMatchRIsSameAsWholeDerivativeAndNil!304 baseR!116 testedP!447))))

(declare-fun b!7971306 () Bool)

(assert (=> b!7971306 (= e!4699989 tp_is_empty!53617)))

(declare-fun b!7971307 () Bool)

(assert (=> b!7971307 (= e!4699992 e!4699988)))

(declare-fun res!3158120 () Bool)

(assert (=> b!7971307 (=> (not res!3158120) (not e!4699988))))

(declare-fun isEmpty!42941 (List!74766) Bool)

(assert (=> b!7971307 (= res!3158120 (not (isEmpty!42941 (_1!38669 lt!2708144))))))

(declare-fun findLongestMatchInner!2316 (Regex!21537 List!74766 Int List!74766 List!74766 Int) tuple2!70732)

(declare-fun size!43473 (List!74766) Int)

(declare-fun getSuffix!3838 (List!74766 List!74766) List!74766)

(assert (=> b!7971307 (= lt!2708144 (findLongestMatchInner!2316 r!24602 testedP!447 (size!43473 testedP!447) (getSuffix!3838 input!7927 testedP!447) input!7927 (size!43473 input!7927)))))

(declare-fun b!7971308 () Bool)

(declare-fun tp!2376500 () Bool)

(assert (=> b!7971308 (= e!4699987 tp!2376500)))

(declare-fun b!7971309 () Bool)

(declare-fun tp!2376499 () Bool)

(declare-fun tp!2376504 () Bool)

(assert (=> b!7971309 (= e!4699987 (and tp!2376499 tp!2376504))))

(declare-fun b!7971310 () Bool)

(declare-fun tp!2376508 () Bool)

(assert (=> b!7971310 (= e!4699989 tp!2376508)))

(declare-fun res!3158119 () Bool)

(assert (=> start!751804 (=> (not res!3158119) (not e!4699991))))

(declare-fun validRegex!11841 (Regex!21537) Bool)

(assert (=> start!751804 (= res!3158119 (validRegex!11841 baseR!116))))

(assert (=> start!751804 e!4699991))

(assert (=> start!751804 e!4699989))

(assert (=> start!751804 e!4699993))

(assert (=> start!751804 e!4699990))

(assert (=> start!751804 e!4699987))

(declare-fun b!7971303 () Bool)

(declare-fun tp!2376510 () Bool)

(declare-fun tp!2376509 () Bool)

(assert (=> b!7971303 (= e!4699989 (and tp!2376510 tp!2376509))))

(assert (= (and start!751804 res!3158119) b!7971297))

(assert (= (and b!7971297 res!3158121) b!7971295))

(assert (= (and b!7971295 res!3158118) b!7971307))

(assert (= (and b!7971307 res!3158120) b!7971301))

(assert (= (and b!7971301 res!3158122) b!7971300))

(assert (= (and b!7971300 res!3158117) b!7971305))

(get-info :version)

(assert (= (and start!751804 ((_ is ElementMatch!21537) baseR!116)) b!7971306))

(assert (= (and start!751804 ((_ is Concat!30536) baseR!116)) b!7971303))

(assert (= (and start!751804 ((_ is Star!21537) baseR!116)) b!7971310))

(assert (= (and start!751804 ((_ is Union!21537) baseR!116)) b!7971302))

(assert (= (and start!751804 ((_ is Cons!74642) testedP!447)) b!7971296))

(assert (= (and start!751804 ((_ is Cons!74642) input!7927)) b!7971298))

(assert (= (and start!751804 ((_ is ElementMatch!21537) r!24602)) b!7971304))

(assert (= (and start!751804 ((_ is Concat!30536) r!24602)) b!7971309))

(assert (= (and start!751804 ((_ is Star!21537) r!24602)) b!7971308))

(assert (= (and start!751804 ((_ is Union!21537) r!24602)) b!7971299))

(declare-fun m!8349216 () Bool)

(assert (=> b!7971297 m!8349216))

(declare-fun m!8349218 () Bool)

(assert (=> b!7971295 m!8349218))

(declare-fun m!8349220 () Bool)

(assert (=> b!7971300 m!8349220))

(declare-fun m!8349222 () Bool)

(assert (=> b!7971307 m!8349222))

(declare-fun m!8349224 () Bool)

(assert (=> b!7971307 m!8349224))

(declare-fun m!8349226 () Bool)

(assert (=> b!7971307 m!8349226))

(declare-fun m!8349228 () Bool)

(assert (=> b!7971307 m!8349228))

(assert (=> b!7971307 m!8349226))

(assert (=> b!7971307 m!8349222))

(declare-fun m!8349230 () Bool)

(assert (=> b!7971307 m!8349230))

(assert (=> b!7971307 m!8349228))

(declare-fun m!8349232 () Bool)

(assert (=> start!751804 m!8349232))

(declare-fun m!8349234 () Bool)

(assert (=> b!7971305 m!8349234))

(declare-fun m!8349236 () Bool)

(assert (=> b!7971305 m!8349236))

(declare-fun m!8349238 () Bool)

(assert (=> b!7971305 m!8349238))

(declare-fun m!8349240 () Bool)

(assert (=> b!7971305 m!8349240))

(check-sat (not b!7971302) (not b!7971299) (not b!7971295) (not b!7971305) (not b!7971303) (not b!7971298) (not b!7971300) tp_is_empty!53617 (not b!7971307) (not b!7971310) (not start!751804) (not b!7971297) (not b!7971308) (not b!7971296) (not b!7971309))
(check-sat)
(get-model)

(declare-fun d!2379903 () Bool)

(declare-fun lt!2708148 () Int)

(assert (=> d!2379903 (>= lt!2708148 0)))

(declare-fun e!4700010 () Int)

(assert (=> d!2379903 (= lt!2708148 e!4700010)))

(declare-fun c!1463885 () Bool)

(assert (=> d!2379903 (= c!1463885 ((_ is Nil!74642) input!7927))))

(assert (=> d!2379903 (= (size!43473 input!7927) lt!2708148)))

(declare-fun b!7971333 () Bool)

(assert (=> b!7971333 (= e!4700010 0)))

(declare-fun b!7971334 () Bool)

(assert (=> b!7971334 (= e!4700010 (+ 1 (size!43473 (t!390509 input!7927))))))

(assert (= (and d!2379903 c!1463885) b!7971333))

(assert (= (and d!2379903 (not c!1463885)) b!7971334))

(declare-fun m!8349242 () Bool)

(assert (=> b!7971334 m!8349242))

(assert (=> b!7971307 d!2379903))

(declare-fun d!2379905 () Bool)

(declare-fun lt!2708151 () List!74766)

(declare-fun ++!18402 (List!74766 List!74766) List!74766)

(assert (=> d!2379905 (= (++!18402 testedP!447 lt!2708151) input!7927)))

(declare-fun e!4700020 () List!74766)

(assert (=> d!2379905 (= lt!2708151 e!4700020)))

(declare-fun c!1463890 () Bool)

(assert (=> d!2379905 (= c!1463890 ((_ is Cons!74642) testedP!447))))

(assert (=> d!2379905 (>= (size!43473 input!7927) (size!43473 testedP!447))))

(assert (=> d!2379905 (= (getSuffix!3838 input!7927 testedP!447) lt!2708151)))

(declare-fun b!7971348 () Bool)

(declare-fun tail!15814 (List!74766) List!74766)

(assert (=> b!7971348 (= e!4700020 (getSuffix!3838 (tail!15814 input!7927) (t!390509 testedP!447)))))

(declare-fun b!7971349 () Bool)

(assert (=> b!7971349 (= e!4700020 input!7927)))

(assert (= (and d!2379905 c!1463890) b!7971348))

(assert (= (and d!2379905 (not c!1463890)) b!7971349))

(declare-fun m!8349252 () Bool)

(assert (=> d!2379905 m!8349252))

(assert (=> d!2379905 m!8349222))

(assert (=> d!2379905 m!8349228))

(declare-fun m!8349254 () Bool)

(assert (=> b!7971348 m!8349254))

(assert (=> b!7971348 m!8349254))

(declare-fun m!8349256 () Bool)

(assert (=> b!7971348 m!8349256))

(assert (=> b!7971307 d!2379905))

(declare-fun d!2379911 () Bool)

(declare-fun lt!2708152 () Int)

(assert (=> d!2379911 (>= lt!2708152 0)))

(declare-fun e!4700021 () Int)

(assert (=> d!2379911 (= lt!2708152 e!4700021)))

(declare-fun c!1463891 () Bool)

(assert (=> d!2379911 (= c!1463891 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2379911 (= (size!43473 testedP!447) lt!2708152)))

(declare-fun b!7971350 () Bool)

(assert (=> b!7971350 (= e!4700021 0)))

(declare-fun b!7971351 () Bool)

(assert (=> b!7971351 (= e!4700021 (+ 1 (size!43473 (t!390509 testedP!447))))))

(assert (= (and d!2379911 c!1463891) b!7971350))

(assert (= (and d!2379911 (not c!1463891)) b!7971351))

(declare-fun m!8349258 () Bool)

(assert (=> b!7971351 m!8349258))

(assert (=> b!7971307 d!2379911))

(declare-fun bm!739674 () Bool)

(declare-fun call!739686 () Regex!21537)

(declare-fun call!739679 () C!43412)

(declare-fun derivativeStep!6561 (Regex!21537 C!43412) Regex!21537)

(assert (=> bm!739674 (= call!739686 (derivativeStep!6561 r!24602 call!739679))))

(declare-fun b!7971524 () Bool)

(declare-fun e!4700119 () Unit!170318)

(declare-fun Unit!170320 () Unit!170318)

(assert (=> b!7971524 (= e!4700119 Unit!170320)))

(declare-fun lt!2708319 () Unit!170318)

(declare-fun call!739683 () Unit!170318)

(assert (=> b!7971524 (= lt!2708319 call!739683)))

(declare-fun call!739684 () Bool)

(assert (=> b!7971524 call!739684))

(declare-fun lt!2708340 () Unit!170318)

(assert (=> b!7971524 (= lt!2708340 lt!2708319)))

(declare-fun lt!2708326 () Unit!170318)

(declare-fun call!739685 () Unit!170318)

(assert (=> b!7971524 (= lt!2708326 call!739685)))

(assert (=> b!7971524 (= input!7927 testedP!447)))

(declare-fun lt!2708336 () Unit!170318)

(assert (=> b!7971524 (= lt!2708336 lt!2708326)))

(assert (=> b!7971524 false))

(declare-fun b!7971525 () Bool)

(declare-fun e!4700122 () tuple2!70732)

(declare-fun e!4700121 () tuple2!70732)

(assert (=> b!7971525 (= e!4700122 e!4700121)))

(declare-fun lt!2708321 () tuple2!70732)

(declare-fun call!739682 () tuple2!70732)

(assert (=> b!7971525 (= lt!2708321 call!739682)))

(declare-fun c!1463949 () Bool)

(assert (=> b!7971525 (= c!1463949 (isEmpty!42941 (_1!38669 lt!2708321)))))

(declare-fun bm!739675 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1682 (List!74766 List!74766 List!74766) Unit!170318)

(assert (=> bm!739675 (= call!739685 (lemmaIsPrefixSameLengthThenSameList!1682 input!7927 testedP!447 input!7927))))

(declare-fun b!7971526 () Bool)

(declare-fun e!4700116 () tuple2!70732)

(assert (=> b!7971526 (= e!4700116 (tuple2!70733 testedP!447 Nil!74642))))

(declare-fun bm!739676 () Bool)

(declare-fun call!739680 () List!74766)

(assert (=> bm!739676 (= call!739680 (tail!15814 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun b!7971527 () Bool)

(declare-fun e!4700120 () tuple2!70732)

(assert (=> b!7971527 (= e!4700120 (tuple2!70733 Nil!74642 input!7927))))

(declare-fun b!7971528 () Bool)

(declare-fun e!4700123 () tuple2!70732)

(assert (=> b!7971528 (= e!4700120 e!4700123)))

(declare-fun c!1463947 () Bool)

(assert (=> b!7971528 (= c!1463947 (= (size!43473 testedP!447) (size!43473 input!7927)))))

(declare-fun b!7971529 () Bool)

(assert (=> b!7971529 (= e!4700121 lt!2708321)))

(declare-fun b!7971530 () Bool)

(declare-fun e!4700117 () Bool)

(declare-fun lt!2708341 () tuple2!70732)

(assert (=> b!7971530 (= e!4700117 (>= (size!43473 (_1!38669 lt!2708341)) (size!43473 testedP!447)))))

(declare-fun bm!739678 () Bool)

(declare-fun lt!2708337 () List!74766)

(assert (=> bm!739678 (= call!739682 (findLongestMatchInner!2316 call!739686 lt!2708337 (+ (size!43473 testedP!447) 1) call!739680 input!7927 (size!43473 input!7927)))))

(declare-fun b!7971531 () Bool)

(declare-fun e!4700118 () Bool)

(assert (=> b!7971531 (= e!4700118 e!4700117)))

(declare-fun res!3158201 () Bool)

(assert (=> b!7971531 (=> res!3158201 e!4700117)))

(assert (=> b!7971531 (= res!3158201 (isEmpty!42941 (_1!38669 lt!2708341)))))

(declare-fun b!7971532 () Bool)

(declare-fun c!1463950 () Bool)

(declare-fun call!739681 () Bool)

(assert (=> b!7971532 (= c!1463950 call!739681)))

(declare-fun lt!2708331 () Unit!170318)

(declare-fun lt!2708338 () Unit!170318)

(assert (=> b!7971532 (= lt!2708331 lt!2708338)))

(assert (=> b!7971532 (= input!7927 testedP!447)))

(assert (=> b!7971532 (= lt!2708338 call!739685)))

(declare-fun lt!2708325 () Unit!170318)

(declare-fun lt!2708318 () Unit!170318)

(assert (=> b!7971532 (= lt!2708325 lt!2708318)))

(assert (=> b!7971532 call!739684))

(assert (=> b!7971532 (= lt!2708318 call!739683)))

(assert (=> b!7971532 (= e!4700123 e!4700116)))

(declare-fun b!7971533 () Bool)

(declare-fun Unit!170321 () Unit!170318)

(assert (=> b!7971533 (= e!4700119 Unit!170321)))

(declare-fun b!7971534 () Bool)

(assert (=> b!7971534 (= e!4700122 call!739682)))

(declare-fun b!7971535 () Bool)

(assert (=> b!7971535 (= e!4700116 (tuple2!70733 Nil!74642 input!7927))))

(declare-fun b!7971536 () Bool)

(declare-fun c!1463951 () Bool)

(assert (=> b!7971536 (= c!1463951 call!739681)))

(declare-fun lt!2708323 () Unit!170318)

(declare-fun lt!2708335 () Unit!170318)

(assert (=> b!7971536 (= lt!2708323 lt!2708335)))

(declare-fun lt!2708329 () List!74766)

(declare-fun lt!2708317 () C!43412)

(assert (=> b!7971536 (= (++!18402 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642)) lt!2708329) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3549 (List!74766 C!43412 List!74766 List!74766) Unit!170318)

(assert (=> b!7971536 (= lt!2708335 (lemmaMoveElementToOtherListKeepsConcatEq!3549 testedP!447 lt!2708317 lt!2708329 input!7927))))

(assert (=> b!7971536 (= lt!2708329 (tail!15814 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun head!16287 (List!74766) C!43412)

(assert (=> b!7971536 (= lt!2708317 (head!16287 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun lt!2708315 () Unit!170318)

(declare-fun lt!2708333 () Unit!170318)

(assert (=> b!7971536 (= lt!2708315 lt!2708333)))

(assert (=> b!7971536 (isPrefix!6637 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1359 (List!74766 List!74766) Unit!170318)

(assert (=> b!7971536 (= lt!2708333 (lemmaAddHeadSuffixToPrefixStillPrefix!1359 testedP!447 input!7927))))

(declare-fun lt!2708330 () Unit!170318)

(declare-fun lt!2708314 () Unit!170318)

(assert (=> b!7971536 (= lt!2708330 lt!2708314)))

(assert (=> b!7971536 (= lt!2708314 (lemmaAddHeadSuffixToPrefixStillPrefix!1359 testedP!447 input!7927))))

(assert (=> b!7971536 (= lt!2708337 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)))))

(declare-fun lt!2708334 () Unit!170318)

(assert (=> b!7971536 (= lt!2708334 e!4700119)))

(declare-fun c!1463952 () Bool)

(assert (=> b!7971536 (= c!1463952 (= (size!43473 testedP!447) (size!43473 input!7927)))))

(declare-fun lt!2708327 () Unit!170318)

(declare-fun lt!2708328 () Unit!170318)

(assert (=> b!7971536 (= lt!2708327 lt!2708328)))

(assert (=> b!7971536 (<= (size!43473 testedP!447) (size!43473 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1151 (List!74766 List!74766) Unit!170318)

(assert (=> b!7971536 (= lt!2708328 (lemmaIsPrefixThenSmallerEqSize!1151 testedP!447 input!7927))))

(assert (=> b!7971536 (= e!4700123 e!4700122)))

(declare-fun b!7971537 () Bool)

(assert (=> b!7971537 (= e!4700121 (tuple2!70733 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun bm!739679 () Bool)

(declare-fun lemmaIsPrefixRefl!4102 (List!74766 List!74766) Unit!170318)

(assert (=> bm!739679 (= call!739683 (lemmaIsPrefixRefl!4102 input!7927 input!7927))))

(declare-fun bm!739680 () Bool)

(assert (=> bm!739680 (= call!739681 (nullable!9634 r!24602))))

(declare-fun bm!739681 () Bool)

(assert (=> bm!739681 (= call!739679 (head!16287 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun d!2379913 () Bool)

(assert (=> d!2379913 e!4700118))

(declare-fun res!3158200 () Bool)

(assert (=> d!2379913 (=> (not res!3158200) (not e!4700118))))

(assert (=> d!2379913 (= res!3158200 (= (++!18402 (_1!38669 lt!2708341) (_2!38669 lt!2708341)) input!7927))))

(assert (=> d!2379913 (= lt!2708341 e!4700120)))

(declare-fun c!1463948 () Bool)

(declare-fun lostCause!1993 (Regex!21537) Bool)

(assert (=> d!2379913 (= c!1463948 (lostCause!1993 r!24602))))

(declare-fun lt!2708320 () Unit!170318)

(declare-fun Unit!170322 () Unit!170318)

(assert (=> d!2379913 (= lt!2708320 Unit!170322)))

(assert (=> d!2379913 (= (getSuffix!3838 input!7927 testedP!447) (getSuffix!3838 input!7927 testedP!447))))

(declare-fun lt!2708324 () Unit!170318)

(declare-fun lt!2708339 () Unit!170318)

(assert (=> d!2379913 (= lt!2708324 lt!2708339)))

(declare-fun lt!2708316 () List!74766)

(assert (=> d!2379913 (= (getSuffix!3838 input!7927 testedP!447) lt!2708316)))

(declare-fun lemmaSamePrefixThenSameSuffix!3009 (List!74766 List!74766 List!74766 List!74766 List!74766) Unit!170318)

(assert (=> d!2379913 (= lt!2708339 (lemmaSamePrefixThenSameSuffix!3009 testedP!447 (getSuffix!3838 input!7927 testedP!447) testedP!447 lt!2708316 input!7927))))

(assert (=> d!2379913 (= lt!2708316 (getSuffix!3838 input!7927 testedP!447))))

(declare-fun lt!2708322 () Unit!170318)

(declare-fun lt!2708332 () Unit!170318)

(assert (=> d!2379913 (= lt!2708322 lt!2708332)))

(assert (=> d!2379913 (isPrefix!6637 testedP!447 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3871 (List!74766 List!74766) Unit!170318)

(assert (=> d!2379913 (= lt!2708332 (lemmaConcatTwoListThenFirstIsPrefix!3871 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))

(assert (=> d!2379913 (validRegex!11841 r!24602)))

(assert (=> d!2379913 (= (findLongestMatchInner!2316 r!24602 testedP!447 (size!43473 testedP!447) (getSuffix!3838 input!7927 testedP!447) input!7927 (size!43473 input!7927)) lt!2708341)))

(declare-fun bm!739677 () Bool)

(assert (=> bm!739677 (= call!739684 (isPrefix!6637 input!7927 input!7927))))

(assert (= (and d!2379913 c!1463948) b!7971527))

(assert (= (and d!2379913 (not c!1463948)) b!7971528))

(assert (= (and b!7971528 c!1463947) b!7971532))

(assert (= (and b!7971528 (not c!1463947)) b!7971536))

(assert (= (and b!7971532 c!1463950) b!7971526))

(assert (= (and b!7971532 (not c!1463950)) b!7971535))

(assert (= (and b!7971536 c!1463952) b!7971524))

(assert (= (and b!7971536 (not c!1463952)) b!7971533))

(assert (= (and b!7971536 c!1463951) b!7971525))

(assert (= (and b!7971536 (not c!1463951)) b!7971534))

(assert (= (and b!7971525 c!1463949) b!7971537))

(assert (= (and b!7971525 (not c!1463949)) b!7971529))

(assert (= (or b!7971525 b!7971534) bm!739681))

(assert (= (or b!7971525 b!7971534) bm!739676))

(assert (= (or b!7971525 b!7971534) bm!739674))

(assert (= (or b!7971525 b!7971534) bm!739678))

(assert (= (or b!7971532 b!7971536) bm!739680))

(assert (= (or b!7971532 b!7971524) bm!739675))

(assert (= (or b!7971532 b!7971524) bm!739679))

(assert (= (or b!7971532 b!7971524) bm!739677))

(assert (= (and d!2379913 res!3158200) b!7971531))

(assert (= (and b!7971531 (not res!3158201)) b!7971530))

(declare-fun m!8349372 () Bool)

(assert (=> bm!739679 m!8349372))

(declare-fun m!8349374 () Bool)

(assert (=> b!7971530 m!8349374))

(assert (=> b!7971530 m!8349228))

(declare-fun m!8349376 () Bool)

(assert (=> bm!739677 m!8349376))

(declare-fun m!8349378 () Bool)

(assert (=> d!2379913 m!8349378))

(assert (=> d!2379913 m!8349226))

(declare-fun m!8349380 () Bool)

(assert (=> d!2379913 m!8349380))

(declare-fun m!8349382 () Bool)

(assert (=> d!2379913 m!8349382))

(assert (=> d!2379913 m!8349226))

(declare-fun m!8349384 () Bool)

(assert (=> d!2379913 m!8349384))

(assert (=> d!2379913 m!8349380))

(declare-fun m!8349386 () Bool)

(assert (=> d!2379913 m!8349386))

(declare-fun m!8349388 () Bool)

(assert (=> d!2379913 m!8349388))

(assert (=> d!2379913 m!8349226))

(declare-fun m!8349390 () Bool)

(assert (=> d!2379913 m!8349390))

(assert (=> d!2379913 m!8349226))

(declare-fun m!8349392 () Bool)

(assert (=> b!7971536 m!8349392))

(declare-fun m!8349394 () Bool)

(assert (=> b!7971536 m!8349394))

(assert (=> b!7971536 m!8349228))

(declare-fun m!8349396 () Bool)

(assert (=> b!7971536 m!8349396))

(assert (=> b!7971536 m!8349226))

(declare-fun m!8349398 () Bool)

(assert (=> b!7971536 m!8349398))

(assert (=> b!7971536 m!8349226))

(declare-fun m!8349400 () Bool)

(assert (=> b!7971536 m!8349400))

(declare-fun m!8349402 () Bool)

(assert (=> b!7971536 m!8349402))

(declare-fun m!8349404 () Bool)

(assert (=> b!7971536 m!8349404))

(assert (=> b!7971536 m!8349226))

(declare-fun m!8349406 () Bool)

(assert (=> b!7971536 m!8349406))

(assert (=> b!7971536 m!8349392))

(assert (=> b!7971536 m!8349226))

(assert (=> b!7971536 m!8349400))

(assert (=> b!7971536 m!8349404))

(assert (=> b!7971536 m!8349222))

(assert (=> b!7971536 m!8349404))

(declare-fun m!8349408 () Bool)

(assert (=> b!7971536 m!8349408))

(assert (=> bm!739676 m!8349226))

(assert (=> bm!739676 m!8349406))

(declare-fun m!8349410 () Bool)

(assert (=> bm!739674 m!8349410))

(declare-fun m!8349412 () Bool)

(assert (=> b!7971531 m!8349412))

(assert (=> bm!739678 m!8349222))

(declare-fun m!8349414 () Bool)

(assert (=> bm!739678 m!8349414))

(assert (=> bm!739680 m!8349220))

(declare-fun m!8349416 () Bool)

(assert (=> b!7971525 m!8349416))

(declare-fun m!8349418 () Bool)

(assert (=> bm!739675 m!8349418))

(assert (=> bm!739681 m!8349226))

(assert (=> bm!739681 m!8349400))

(assert (=> b!7971307 d!2379913))

(declare-fun d!2379935 () Bool)

(assert (=> d!2379935 (= (isEmpty!42941 (_1!38669 lt!2708144)) ((_ is Nil!74642) (_1!38669 lt!2708144)))))

(assert (=> b!7971307 d!2379935))

(declare-fun d!2379937 () Bool)

(declare-fun e!4700146 () Bool)

(assert (=> d!2379937 e!4700146))

(declare-fun res!3158210 () Bool)

(assert (=> d!2379937 (=> res!3158210 e!4700146)))

(declare-fun lt!2708344 () Bool)

(assert (=> d!2379937 (= res!3158210 (not lt!2708344))))

(declare-fun e!4700148 () Bool)

(assert (=> d!2379937 (= lt!2708344 e!4700148)))

(declare-fun res!3158212 () Bool)

(assert (=> d!2379937 (=> res!3158212 e!4700148)))

(assert (=> d!2379937 (= res!3158212 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2379937 (= (isPrefix!6637 testedP!447 input!7927) lt!2708344)))

(declare-fun b!7971604 () Bool)

(declare-fun e!4700147 () Bool)

(assert (=> b!7971604 (= e!4700147 (isPrefix!6637 (tail!15814 testedP!447) (tail!15814 input!7927)))))

(declare-fun b!7971603 () Bool)

(declare-fun res!3158213 () Bool)

(assert (=> b!7971603 (=> (not res!3158213) (not e!4700147))))

(assert (=> b!7971603 (= res!3158213 (= (head!16287 testedP!447) (head!16287 input!7927)))))

(declare-fun b!7971605 () Bool)

(assert (=> b!7971605 (= e!4700146 (>= (size!43473 input!7927) (size!43473 testedP!447)))))

(declare-fun b!7971602 () Bool)

(assert (=> b!7971602 (= e!4700148 e!4700147)))

(declare-fun res!3158211 () Bool)

(assert (=> b!7971602 (=> (not res!3158211) (not e!4700147))))

(assert (=> b!7971602 (= res!3158211 (not ((_ is Nil!74642) input!7927)))))

(assert (= (and d!2379937 (not res!3158212)) b!7971602))

(assert (= (and b!7971602 res!3158211) b!7971603))

(assert (= (and b!7971603 res!3158213) b!7971604))

(assert (= (and d!2379937 (not res!3158210)) b!7971605))

(declare-fun m!8349420 () Bool)

(assert (=> b!7971604 m!8349420))

(assert (=> b!7971604 m!8349254))

(assert (=> b!7971604 m!8349420))

(assert (=> b!7971604 m!8349254))

(declare-fun m!8349422 () Bool)

(assert (=> b!7971604 m!8349422))

(declare-fun m!8349424 () Bool)

(assert (=> b!7971603 m!8349424))

(declare-fun m!8349426 () Bool)

(assert (=> b!7971603 m!8349426))

(assert (=> b!7971605 m!8349222))

(assert (=> b!7971605 m!8349228))

(assert (=> b!7971297 d!2379937))

(declare-fun d!2379939 () Bool)

(declare-fun lt!2708347 () Regex!21537)

(assert (=> d!2379939 (validRegex!11841 lt!2708347)))

(declare-fun e!4700151 () Regex!21537)

(assert (=> d!2379939 (= lt!2708347 e!4700151)))

(declare-fun c!1463955 () Bool)

(assert (=> d!2379939 (= c!1463955 ((_ is Cons!74642) testedP!447))))

(assert (=> d!2379939 (validRegex!11841 baseR!116)))

(assert (=> d!2379939 (= (derivative!723 baseR!116 testedP!447) lt!2708347)))

(declare-fun b!7971610 () Bool)

(assert (=> b!7971610 (= e!4700151 (derivative!723 (derivativeStep!6561 baseR!116 (h!81090 testedP!447)) (t!390509 testedP!447)))))

(declare-fun b!7971611 () Bool)

(assert (=> b!7971611 (= e!4700151 baseR!116)))

(assert (= (and d!2379939 c!1463955) b!7971610))

(assert (= (and d!2379939 (not c!1463955)) b!7971611))

(declare-fun m!8349428 () Bool)

(assert (=> d!2379939 m!8349428))

(assert (=> d!2379939 m!8349232))

(declare-fun m!8349430 () Bool)

(assert (=> b!7971610 m!8349430))

(assert (=> b!7971610 m!8349430))

(declare-fun m!8349432 () Bool)

(assert (=> b!7971610 m!8349432))

(assert (=> b!7971295 d!2379939))

(declare-fun d!2379941 () Bool)

(declare-fun nullableFct!3804 (Regex!21537) Bool)

(assert (=> d!2379941 (= (nullable!9634 r!24602) (nullableFct!3804 r!24602))))

(declare-fun bs!1969979 () Bool)

(assert (= bs!1969979 d!2379941))

(declare-fun m!8349434 () Bool)

(assert (=> bs!1969979 m!8349434))

(assert (=> b!7971300 d!2379941))

(declare-fun b!7971641 () Bool)

(declare-fun res!3158236 () Bool)

(declare-fun e!4700167 () Bool)

(assert (=> b!7971641 (=> res!3158236 e!4700167)))

(assert (=> b!7971641 (= res!3158236 (not (isEmpty!42941 (tail!15814 (_1!38669 lt!2708144)))))))

(declare-fun bm!739684 () Bool)

(declare-fun call!739689 () Bool)

(assert (=> bm!739684 (= call!739689 (isEmpty!42941 (_1!38669 lt!2708144)))))

(declare-fun b!7971642 () Bool)

(declare-fun e!4700170 () Bool)

(assert (=> b!7971642 (= e!4700170 (= (head!16287 (_1!38669 lt!2708144)) (c!1463878 baseR!116)))))

(declare-fun b!7971643 () Bool)

(declare-fun e!4700172 () Bool)

(declare-fun lt!2708350 () Bool)

(assert (=> b!7971643 (= e!4700172 (not lt!2708350))))

(declare-fun b!7971644 () Bool)

(declare-fun res!3158234 () Bool)

(assert (=> b!7971644 (=> (not res!3158234) (not e!4700170))))

(assert (=> b!7971644 (= res!3158234 (isEmpty!42941 (tail!15814 (_1!38669 lt!2708144))))))

(declare-fun b!7971645 () Bool)

(declare-fun e!4700169 () Bool)

(assert (=> b!7971645 (= e!4700169 e!4700167)))

(declare-fun res!3158233 () Bool)

(assert (=> b!7971645 (=> res!3158233 e!4700167)))

(assert (=> b!7971645 (= res!3158233 call!739689)))

(declare-fun b!7971640 () Bool)

(declare-fun e!4700168 () Bool)

(assert (=> b!7971640 (= e!4700168 (matchR!10756 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))) (tail!15814 (_1!38669 lt!2708144))))))

(declare-fun d!2379943 () Bool)

(declare-fun e!4700171 () Bool)

(assert (=> d!2379943 e!4700171))

(declare-fun c!1463963 () Bool)

(assert (=> d!2379943 (= c!1463963 ((_ is EmptyExpr!21537) baseR!116))))

(assert (=> d!2379943 (= lt!2708350 e!4700168)))

(declare-fun c!1463962 () Bool)

(assert (=> d!2379943 (= c!1463962 (isEmpty!42941 (_1!38669 lt!2708144)))))

(assert (=> d!2379943 (validRegex!11841 baseR!116)))

(assert (=> d!2379943 (= (matchR!10756 baseR!116 (_1!38669 lt!2708144)) lt!2708350)))

(declare-fun b!7971646 () Bool)

(assert (=> b!7971646 (= e!4700168 (nullable!9634 baseR!116))))

(declare-fun b!7971647 () Bool)

(declare-fun res!3158231 () Bool)

(declare-fun e!4700166 () Bool)

(assert (=> b!7971647 (=> res!3158231 e!4700166)))

(assert (=> b!7971647 (= res!3158231 (not ((_ is ElementMatch!21537) baseR!116)))))

(assert (=> b!7971647 (= e!4700172 e!4700166)))

(declare-fun b!7971648 () Bool)

(declare-fun res!3158232 () Bool)

(assert (=> b!7971648 (=> (not res!3158232) (not e!4700170))))

(assert (=> b!7971648 (= res!3158232 (not call!739689))))

(declare-fun b!7971649 () Bool)

(assert (=> b!7971649 (= e!4700171 (= lt!2708350 call!739689))))

(declare-fun b!7971650 () Bool)

(assert (=> b!7971650 (= e!4700167 (not (= (head!16287 (_1!38669 lt!2708144)) (c!1463878 baseR!116))))))

(declare-fun b!7971651 () Bool)

(assert (=> b!7971651 (= e!4700166 e!4700169)))

(declare-fun res!3158230 () Bool)

(assert (=> b!7971651 (=> (not res!3158230) (not e!4700169))))

(assert (=> b!7971651 (= res!3158230 (not lt!2708350))))

(declare-fun b!7971652 () Bool)

(assert (=> b!7971652 (= e!4700171 e!4700172)))

(declare-fun c!1463964 () Bool)

(assert (=> b!7971652 (= c!1463964 ((_ is EmptyLang!21537) baseR!116))))

(declare-fun b!7971653 () Bool)

(declare-fun res!3158235 () Bool)

(assert (=> b!7971653 (=> res!3158235 e!4700166)))

(assert (=> b!7971653 (= res!3158235 e!4700170)))

(declare-fun res!3158237 () Bool)

(assert (=> b!7971653 (=> (not res!3158237) (not e!4700170))))

(assert (=> b!7971653 (= res!3158237 lt!2708350)))

(assert (= (and d!2379943 c!1463962) b!7971646))

(assert (= (and d!2379943 (not c!1463962)) b!7971640))

(assert (= (and d!2379943 c!1463963) b!7971649))

(assert (= (and d!2379943 (not c!1463963)) b!7971652))

(assert (= (and b!7971652 c!1463964) b!7971643))

(assert (= (and b!7971652 (not c!1463964)) b!7971647))

(assert (= (and b!7971647 (not res!3158231)) b!7971653))

(assert (= (and b!7971653 res!3158237) b!7971648))

(assert (= (and b!7971648 res!3158232) b!7971644))

(assert (= (and b!7971644 res!3158234) b!7971642))

(assert (= (and b!7971653 (not res!3158235)) b!7971651))

(assert (= (and b!7971651 res!3158230) b!7971645))

(assert (= (and b!7971645 (not res!3158233)) b!7971641))

(assert (= (and b!7971641 (not res!3158236)) b!7971650))

(assert (= (or b!7971649 b!7971648 b!7971645) bm!739684))

(assert (=> bm!739684 m!8349224))

(declare-fun m!8349436 () Bool)

(assert (=> b!7971644 m!8349436))

(assert (=> b!7971644 m!8349436))

(declare-fun m!8349438 () Bool)

(assert (=> b!7971644 m!8349438))

(declare-fun m!8349440 () Bool)

(assert (=> b!7971640 m!8349440))

(assert (=> b!7971640 m!8349440))

(declare-fun m!8349442 () Bool)

(assert (=> b!7971640 m!8349442))

(assert (=> b!7971640 m!8349436))

(assert (=> b!7971640 m!8349442))

(assert (=> b!7971640 m!8349436))

(declare-fun m!8349444 () Bool)

(assert (=> b!7971640 m!8349444))

(declare-fun m!8349446 () Bool)

(assert (=> b!7971646 m!8349446))

(assert (=> b!7971641 m!8349436))

(assert (=> b!7971641 m!8349436))

(assert (=> b!7971641 m!8349438))

(assert (=> b!7971650 m!8349440))

(assert (=> b!7971642 m!8349440))

(assert (=> d!2379943 m!8349224))

(assert (=> d!2379943 m!8349232))

(assert (=> b!7971305 d!2379943))

(declare-fun b!7971655 () Bool)

(declare-fun res!3158244 () Bool)

(declare-fun e!4700174 () Bool)

(assert (=> b!7971655 (=> res!3158244 e!4700174)))

(assert (=> b!7971655 (= res!3158244 (not (isEmpty!42941 (tail!15814 testedP!447))))))

(declare-fun bm!739685 () Bool)

(declare-fun call!739690 () Bool)

(assert (=> bm!739685 (= call!739690 (isEmpty!42941 testedP!447))))

(declare-fun b!7971656 () Bool)

(declare-fun e!4700177 () Bool)

(assert (=> b!7971656 (= e!4700177 (= (head!16287 testedP!447) (c!1463878 baseR!116)))))

(declare-fun b!7971657 () Bool)

(declare-fun e!4700179 () Bool)

(declare-fun lt!2708351 () Bool)

(assert (=> b!7971657 (= e!4700179 (not lt!2708351))))

(declare-fun b!7971658 () Bool)

(declare-fun res!3158242 () Bool)

(assert (=> b!7971658 (=> (not res!3158242) (not e!4700177))))

(assert (=> b!7971658 (= res!3158242 (isEmpty!42941 (tail!15814 testedP!447)))))

(declare-fun b!7971659 () Bool)

(declare-fun e!4700176 () Bool)

(assert (=> b!7971659 (= e!4700176 e!4700174)))

(declare-fun res!3158241 () Bool)

(assert (=> b!7971659 (=> res!3158241 e!4700174)))

(assert (=> b!7971659 (= res!3158241 call!739690)))

(declare-fun b!7971654 () Bool)

(declare-fun e!4700175 () Bool)

(assert (=> b!7971654 (= e!4700175 (matchR!10756 (derivativeStep!6561 baseR!116 (head!16287 testedP!447)) (tail!15814 testedP!447)))))

(declare-fun d!2379945 () Bool)

(declare-fun e!4700178 () Bool)

(assert (=> d!2379945 e!4700178))

(declare-fun c!1463966 () Bool)

(assert (=> d!2379945 (= c!1463966 ((_ is EmptyExpr!21537) baseR!116))))

(assert (=> d!2379945 (= lt!2708351 e!4700175)))

(declare-fun c!1463965 () Bool)

(assert (=> d!2379945 (= c!1463965 (isEmpty!42941 testedP!447))))

(assert (=> d!2379945 (validRegex!11841 baseR!116)))

(assert (=> d!2379945 (= (matchR!10756 baseR!116 testedP!447) lt!2708351)))

(declare-fun b!7971660 () Bool)

(assert (=> b!7971660 (= e!4700175 (nullable!9634 baseR!116))))

(declare-fun b!7971661 () Bool)

(declare-fun res!3158239 () Bool)

(declare-fun e!4700173 () Bool)

(assert (=> b!7971661 (=> res!3158239 e!4700173)))

(assert (=> b!7971661 (= res!3158239 (not ((_ is ElementMatch!21537) baseR!116)))))

(assert (=> b!7971661 (= e!4700179 e!4700173)))

(declare-fun b!7971662 () Bool)

(declare-fun res!3158240 () Bool)

(assert (=> b!7971662 (=> (not res!3158240) (not e!4700177))))

(assert (=> b!7971662 (= res!3158240 (not call!739690))))

(declare-fun b!7971663 () Bool)

(assert (=> b!7971663 (= e!4700178 (= lt!2708351 call!739690))))

(declare-fun b!7971664 () Bool)

(assert (=> b!7971664 (= e!4700174 (not (= (head!16287 testedP!447) (c!1463878 baseR!116))))))

(declare-fun b!7971665 () Bool)

(assert (=> b!7971665 (= e!4700173 e!4700176)))

(declare-fun res!3158238 () Bool)

(assert (=> b!7971665 (=> (not res!3158238) (not e!4700176))))

(assert (=> b!7971665 (= res!3158238 (not lt!2708351))))

(declare-fun b!7971666 () Bool)

(assert (=> b!7971666 (= e!4700178 e!4700179)))

(declare-fun c!1463967 () Bool)

(assert (=> b!7971666 (= c!1463967 ((_ is EmptyLang!21537) baseR!116))))

(declare-fun b!7971667 () Bool)

(declare-fun res!3158243 () Bool)

(assert (=> b!7971667 (=> res!3158243 e!4700173)))

(assert (=> b!7971667 (= res!3158243 e!4700177)))

(declare-fun res!3158245 () Bool)

(assert (=> b!7971667 (=> (not res!3158245) (not e!4700177))))

(assert (=> b!7971667 (= res!3158245 lt!2708351)))

(assert (= (and d!2379945 c!1463965) b!7971660))

(assert (= (and d!2379945 (not c!1463965)) b!7971654))

(assert (= (and d!2379945 c!1463966) b!7971663))

(assert (= (and d!2379945 (not c!1463966)) b!7971666))

(assert (= (and b!7971666 c!1463967) b!7971657))

(assert (= (and b!7971666 (not c!1463967)) b!7971661))

(assert (= (and b!7971661 (not res!3158239)) b!7971667))

(assert (= (and b!7971667 res!3158245) b!7971662))

(assert (= (and b!7971662 res!3158240) b!7971658))

(assert (= (and b!7971658 res!3158242) b!7971656))

(assert (= (and b!7971667 (not res!3158243)) b!7971665))

(assert (= (and b!7971665 res!3158238) b!7971659))

(assert (= (and b!7971659 (not res!3158241)) b!7971655))

(assert (= (and b!7971655 (not res!3158244)) b!7971664))

(assert (= (or b!7971663 b!7971662 b!7971659) bm!739685))

(declare-fun m!8349448 () Bool)

(assert (=> bm!739685 m!8349448))

(assert (=> b!7971658 m!8349420))

(assert (=> b!7971658 m!8349420))

(declare-fun m!8349450 () Bool)

(assert (=> b!7971658 m!8349450))

(assert (=> b!7971654 m!8349424))

(assert (=> b!7971654 m!8349424))

(declare-fun m!8349452 () Bool)

(assert (=> b!7971654 m!8349452))

(assert (=> b!7971654 m!8349420))

(assert (=> b!7971654 m!8349452))

(assert (=> b!7971654 m!8349420))

(declare-fun m!8349454 () Bool)

(assert (=> b!7971654 m!8349454))

(assert (=> b!7971660 m!8349446))

(assert (=> b!7971655 m!8349420))

(assert (=> b!7971655 m!8349420))

(assert (=> b!7971655 m!8349450))

(assert (=> b!7971664 m!8349424))

(assert (=> b!7971656 m!8349424))

(assert (=> d!2379945 m!8349448))

(assert (=> d!2379945 m!8349232))

(assert (=> b!7971305 d!2379945))

(declare-fun b!7971669 () Bool)

(declare-fun res!3158252 () Bool)

(declare-fun e!4700181 () Bool)

(assert (=> b!7971669 (=> res!3158252 e!4700181)))

(assert (=> b!7971669 (= res!3158252 (not (isEmpty!42941 (tail!15814 Nil!74642))))))

(declare-fun bm!739686 () Bool)

(declare-fun call!739691 () Bool)

(assert (=> bm!739686 (= call!739691 (isEmpty!42941 Nil!74642))))

(declare-fun b!7971670 () Bool)

(declare-fun e!4700184 () Bool)

(assert (=> b!7971670 (= e!4700184 (= (head!16287 Nil!74642) (c!1463878 lt!2708145)))))

(declare-fun b!7971671 () Bool)

(declare-fun e!4700186 () Bool)

(declare-fun lt!2708352 () Bool)

(assert (=> b!7971671 (= e!4700186 (not lt!2708352))))

(declare-fun b!7971672 () Bool)

(declare-fun res!3158250 () Bool)

(assert (=> b!7971672 (=> (not res!3158250) (not e!4700184))))

(assert (=> b!7971672 (= res!3158250 (isEmpty!42941 (tail!15814 Nil!74642)))))

(declare-fun b!7971673 () Bool)

(declare-fun e!4700183 () Bool)

(assert (=> b!7971673 (= e!4700183 e!4700181)))

(declare-fun res!3158249 () Bool)

(assert (=> b!7971673 (=> res!3158249 e!4700181)))

(assert (=> b!7971673 (= res!3158249 call!739691)))

(declare-fun b!7971668 () Bool)

(declare-fun e!4700182 () Bool)

(assert (=> b!7971668 (= e!4700182 (matchR!10756 (derivativeStep!6561 lt!2708145 (head!16287 Nil!74642)) (tail!15814 Nil!74642)))))

(declare-fun d!2379947 () Bool)

(declare-fun e!4700185 () Bool)

(assert (=> d!2379947 e!4700185))

(declare-fun c!1463969 () Bool)

(assert (=> d!2379947 (= c!1463969 ((_ is EmptyExpr!21537) lt!2708145))))

(assert (=> d!2379947 (= lt!2708352 e!4700182)))

(declare-fun c!1463968 () Bool)

(assert (=> d!2379947 (= c!1463968 (isEmpty!42941 Nil!74642))))

(assert (=> d!2379947 (validRegex!11841 lt!2708145)))

(assert (=> d!2379947 (= (matchR!10756 lt!2708145 Nil!74642) lt!2708352)))

(declare-fun b!7971674 () Bool)

(assert (=> b!7971674 (= e!4700182 (nullable!9634 lt!2708145))))

(declare-fun b!7971675 () Bool)

(declare-fun res!3158247 () Bool)

(declare-fun e!4700180 () Bool)

(assert (=> b!7971675 (=> res!3158247 e!4700180)))

(assert (=> b!7971675 (= res!3158247 (not ((_ is ElementMatch!21537) lt!2708145)))))

(assert (=> b!7971675 (= e!4700186 e!4700180)))

(declare-fun b!7971676 () Bool)

(declare-fun res!3158248 () Bool)

(assert (=> b!7971676 (=> (not res!3158248) (not e!4700184))))

(assert (=> b!7971676 (= res!3158248 (not call!739691))))

(declare-fun b!7971677 () Bool)

(assert (=> b!7971677 (= e!4700185 (= lt!2708352 call!739691))))

(declare-fun b!7971678 () Bool)

(assert (=> b!7971678 (= e!4700181 (not (= (head!16287 Nil!74642) (c!1463878 lt!2708145))))))

(declare-fun b!7971679 () Bool)

(assert (=> b!7971679 (= e!4700180 e!4700183)))

(declare-fun res!3158246 () Bool)

(assert (=> b!7971679 (=> (not res!3158246) (not e!4700183))))

(assert (=> b!7971679 (= res!3158246 (not lt!2708352))))

(declare-fun b!7971680 () Bool)

(assert (=> b!7971680 (= e!4700185 e!4700186)))

(declare-fun c!1463970 () Bool)

(assert (=> b!7971680 (= c!1463970 ((_ is EmptyLang!21537) lt!2708145))))

(declare-fun b!7971681 () Bool)

(declare-fun res!3158251 () Bool)

(assert (=> b!7971681 (=> res!3158251 e!4700180)))

(assert (=> b!7971681 (= res!3158251 e!4700184)))

(declare-fun res!3158253 () Bool)

(assert (=> b!7971681 (=> (not res!3158253) (not e!4700184))))

(assert (=> b!7971681 (= res!3158253 lt!2708352)))

(assert (= (and d!2379947 c!1463968) b!7971674))

(assert (= (and d!2379947 (not c!1463968)) b!7971668))

(assert (= (and d!2379947 c!1463969) b!7971677))

(assert (= (and d!2379947 (not c!1463969)) b!7971680))

(assert (= (and b!7971680 c!1463970) b!7971671))

(assert (= (and b!7971680 (not c!1463970)) b!7971675))

(assert (= (and b!7971675 (not res!3158247)) b!7971681))

(assert (= (and b!7971681 res!3158253) b!7971676))

(assert (= (and b!7971676 res!3158248) b!7971672))

(assert (= (and b!7971672 res!3158250) b!7971670))

(assert (= (and b!7971681 (not res!3158251)) b!7971679))

(assert (= (and b!7971679 res!3158246) b!7971673))

(assert (= (and b!7971673 (not res!3158249)) b!7971669))

(assert (= (and b!7971669 (not res!3158252)) b!7971678))

(assert (= (or b!7971677 b!7971676 b!7971673) bm!739686))

(declare-fun m!8349456 () Bool)

(assert (=> bm!739686 m!8349456))

(declare-fun m!8349458 () Bool)

(assert (=> b!7971672 m!8349458))

(assert (=> b!7971672 m!8349458))

(declare-fun m!8349460 () Bool)

(assert (=> b!7971672 m!8349460))

(declare-fun m!8349462 () Bool)

(assert (=> b!7971668 m!8349462))

(assert (=> b!7971668 m!8349462))

(declare-fun m!8349464 () Bool)

(assert (=> b!7971668 m!8349464))

(assert (=> b!7971668 m!8349458))

(assert (=> b!7971668 m!8349464))

(assert (=> b!7971668 m!8349458))

(declare-fun m!8349466 () Bool)

(assert (=> b!7971668 m!8349466))

(declare-fun m!8349468 () Bool)

(assert (=> b!7971674 m!8349468))

(assert (=> b!7971669 m!8349458))

(assert (=> b!7971669 m!8349458))

(assert (=> b!7971669 m!8349460))

(assert (=> b!7971678 m!8349462))

(assert (=> b!7971670 m!8349462))

(assert (=> d!2379947 m!8349456))

(declare-fun m!8349470 () Bool)

(assert (=> d!2379947 m!8349470))

(assert (=> b!7971305 d!2379947))

(declare-fun d!2379949 () Bool)

(assert (=> d!2379949 (= (matchR!10756 baseR!116 testedP!447) (matchR!10756 (derivative!723 baseR!116 testedP!447) Nil!74642))))

(declare-fun lt!2708355 () Unit!170318)

(declare-fun choose!60109 (Regex!21537 List!74766) Unit!170318)

(assert (=> d!2379949 (= lt!2708355 (choose!60109 baseR!116 testedP!447))))

(assert (=> d!2379949 (validRegex!11841 baseR!116)))

(assert (=> d!2379949 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!304 baseR!116 testedP!447) lt!2708355)))

(declare-fun bs!1969980 () Bool)

(assert (= bs!1969980 d!2379949))

(assert (=> bs!1969980 m!8349236))

(assert (=> bs!1969980 m!8349218))

(declare-fun m!8349472 () Bool)

(assert (=> bs!1969980 m!8349472))

(assert (=> bs!1969980 m!8349232))

(assert (=> bs!1969980 m!8349218))

(declare-fun m!8349474 () Bool)

(assert (=> bs!1969980 m!8349474))

(assert (=> b!7971305 d!2379949))

(declare-fun d!2379951 () Bool)

(declare-fun res!3158266 () Bool)

(declare-fun e!4700205 () Bool)

(assert (=> d!2379951 (=> res!3158266 e!4700205)))

(assert (=> d!2379951 (= res!3158266 ((_ is ElementMatch!21537) baseR!116))))

(assert (=> d!2379951 (= (validRegex!11841 baseR!116) e!4700205)))

(declare-fun b!7971700 () Bool)

(declare-fun res!3158264 () Bool)

(declare-fun e!4700201 () Bool)

(assert (=> b!7971700 (=> res!3158264 e!4700201)))

(assert (=> b!7971700 (= res!3158264 (not ((_ is Concat!30536) baseR!116)))))

(declare-fun e!4700204 () Bool)

(assert (=> b!7971700 (= e!4700204 e!4700201)))

(declare-fun b!7971701 () Bool)

(declare-fun e!4700202 () Bool)

(declare-fun e!4700206 () Bool)

(assert (=> b!7971701 (= e!4700202 e!4700206)))

(declare-fun res!3158265 () Bool)

(assert (=> b!7971701 (= res!3158265 (not (nullable!9634 (reg!21866 baseR!116))))))

(assert (=> b!7971701 (=> (not res!3158265) (not e!4700206))))

(declare-fun b!7971702 () Bool)

(declare-fun res!3158267 () Bool)

(declare-fun e!4700207 () Bool)

(assert (=> b!7971702 (=> (not res!3158267) (not e!4700207))))

(declare-fun call!739699 () Bool)

(assert (=> b!7971702 (= res!3158267 call!739699)))

(assert (=> b!7971702 (= e!4700204 e!4700207)))

(declare-fun b!7971703 () Bool)

(declare-fun e!4700203 () Bool)

(declare-fun call!739700 () Bool)

(assert (=> b!7971703 (= e!4700203 call!739700)))

(declare-fun b!7971704 () Bool)

(declare-fun call!739698 () Bool)

(assert (=> b!7971704 (= e!4700206 call!739698)))

(declare-fun b!7971705 () Bool)

(assert (=> b!7971705 (= e!4700207 call!739700)))

(declare-fun bm!739693 () Bool)

(declare-fun c!1463976 () Bool)

(declare-fun c!1463975 () Bool)

(assert (=> bm!739693 (= call!739698 (validRegex!11841 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))

(declare-fun b!7971706 () Bool)

(assert (=> b!7971706 (= e!4700201 e!4700203)))

(declare-fun res!3158268 () Bool)

(assert (=> b!7971706 (=> (not res!3158268) (not e!4700203))))

(assert (=> b!7971706 (= res!3158268 call!739699)))

(declare-fun bm!739694 () Bool)

(assert (=> bm!739694 (= call!739699 (validRegex!11841 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))

(declare-fun bm!739695 () Bool)

(assert (=> bm!739695 (= call!739700 call!739698)))

(declare-fun b!7971707 () Bool)

(assert (=> b!7971707 (= e!4700205 e!4700202)))

(assert (=> b!7971707 (= c!1463975 ((_ is Star!21537) baseR!116))))

(declare-fun b!7971708 () Bool)

(assert (=> b!7971708 (= e!4700202 e!4700204)))

(assert (=> b!7971708 (= c!1463976 ((_ is Union!21537) baseR!116))))

(assert (= (and d!2379951 (not res!3158266)) b!7971707))

(assert (= (and b!7971707 c!1463975) b!7971701))

(assert (= (and b!7971707 (not c!1463975)) b!7971708))

(assert (= (and b!7971701 res!3158265) b!7971704))

(assert (= (and b!7971708 c!1463976) b!7971702))

(assert (= (and b!7971708 (not c!1463976)) b!7971700))

(assert (= (and b!7971702 res!3158267) b!7971705))

(assert (= (and b!7971700 (not res!3158264)) b!7971706))

(assert (= (and b!7971706 res!3158268) b!7971703))

(assert (= (or b!7971705 b!7971703) bm!739695))

(assert (= (or b!7971702 b!7971706) bm!739694))

(assert (= (or b!7971704 bm!739695) bm!739693))

(declare-fun m!8349476 () Bool)

(assert (=> b!7971701 m!8349476))

(declare-fun m!8349478 () Bool)

(assert (=> bm!739693 m!8349478))

(declare-fun m!8349480 () Bool)

(assert (=> bm!739694 m!8349480))

(assert (=> start!751804 d!2379951))

(declare-fun b!7971721 () Bool)

(declare-fun e!4700210 () Bool)

(declare-fun tp!2376586 () Bool)

(assert (=> b!7971721 (= e!4700210 tp!2376586)))

(declare-fun b!7971719 () Bool)

(assert (=> b!7971719 (= e!4700210 tp_is_empty!53617)))

(declare-fun b!7971722 () Bool)

(declare-fun tp!2376588 () Bool)

(declare-fun tp!2376589 () Bool)

(assert (=> b!7971722 (= e!4700210 (and tp!2376588 tp!2376589))))

(declare-fun b!7971720 () Bool)

(declare-fun tp!2376585 () Bool)

(declare-fun tp!2376587 () Bool)

(assert (=> b!7971720 (= e!4700210 (and tp!2376585 tp!2376587))))

(assert (=> b!7971302 (= tp!2376502 e!4700210)))

(assert (= (and b!7971302 ((_ is ElementMatch!21537) (regOne!43587 baseR!116))) b!7971719))

(assert (= (and b!7971302 ((_ is Concat!30536) (regOne!43587 baseR!116))) b!7971720))

(assert (= (and b!7971302 ((_ is Star!21537) (regOne!43587 baseR!116))) b!7971721))

(assert (= (and b!7971302 ((_ is Union!21537) (regOne!43587 baseR!116))) b!7971722))

(declare-fun b!7971725 () Bool)

(declare-fun e!4700211 () Bool)

(declare-fun tp!2376591 () Bool)

(assert (=> b!7971725 (= e!4700211 tp!2376591)))

(declare-fun b!7971723 () Bool)

(assert (=> b!7971723 (= e!4700211 tp_is_empty!53617)))

(declare-fun b!7971726 () Bool)

(declare-fun tp!2376593 () Bool)

(declare-fun tp!2376594 () Bool)

(assert (=> b!7971726 (= e!4700211 (and tp!2376593 tp!2376594))))

(declare-fun b!7971724 () Bool)

(declare-fun tp!2376590 () Bool)

(declare-fun tp!2376592 () Bool)

(assert (=> b!7971724 (= e!4700211 (and tp!2376590 tp!2376592))))

(assert (=> b!7971302 (= tp!2376503 e!4700211)))

(assert (= (and b!7971302 ((_ is ElementMatch!21537) (regTwo!43587 baseR!116))) b!7971723))

(assert (= (and b!7971302 ((_ is Concat!30536) (regTwo!43587 baseR!116))) b!7971724))

(assert (= (and b!7971302 ((_ is Star!21537) (regTwo!43587 baseR!116))) b!7971725))

(assert (= (and b!7971302 ((_ is Union!21537) (regTwo!43587 baseR!116))) b!7971726))

(declare-fun b!7971729 () Bool)

(declare-fun e!4700212 () Bool)

(declare-fun tp!2376596 () Bool)

(assert (=> b!7971729 (= e!4700212 tp!2376596)))

(declare-fun b!7971727 () Bool)

(assert (=> b!7971727 (= e!4700212 tp_is_empty!53617)))

(declare-fun b!7971730 () Bool)

(declare-fun tp!2376598 () Bool)

(declare-fun tp!2376599 () Bool)

(assert (=> b!7971730 (= e!4700212 (and tp!2376598 tp!2376599))))

(declare-fun b!7971728 () Bool)

(declare-fun tp!2376595 () Bool)

(declare-fun tp!2376597 () Bool)

(assert (=> b!7971728 (= e!4700212 (and tp!2376595 tp!2376597))))

(assert (=> b!7971308 (= tp!2376500 e!4700212)))

(assert (= (and b!7971308 ((_ is ElementMatch!21537) (reg!21866 r!24602))) b!7971727))

(assert (= (and b!7971308 ((_ is Concat!30536) (reg!21866 r!24602))) b!7971728))

(assert (= (and b!7971308 ((_ is Star!21537) (reg!21866 r!24602))) b!7971729))

(assert (= (and b!7971308 ((_ is Union!21537) (reg!21866 r!24602))) b!7971730))

(declare-fun b!7971735 () Bool)

(declare-fun e!4700215 () Bool)

(declare-fun tp!2376602 () Bool)

(assert (=> b!7971735 (= e!4700215 (and tp_is_empty!53617 tp!2376602))))

(assert (=> b!7971296 (= tp!2376501 e!4700215)))

(assert (= (and b!7971296 ((_ is Cons!74642) (t!390509 testedP!447))) b!7971735))

(declare-fun b!7971738 () Bool)

(declare-fun e!4700216 () Bool)

(declare-fun tp!2376604 () Bool)

(assert (=> b!7971738 (= e!4700216 tp!2376604)))

(declare-fun b!7971736 () Bool)

(assert (=> b!7971736 (= e!4700216 tp_is_empty!53617)))

(declare-fun b!7971739 () Bool)

(declare-fun tp!2376606 () Bool)

(declare-fun tp!2376607 () Bool)

(assert (=> b!7971739 (= e!4700216 (and tp!2376606 tp!2376607))))

(declare-fun b!7971737 () Bool)

(declare-fun tp!2376603 () Bool)

(declare-fun tp!2376605 () Bool)

(assert (=> b!7971737 (= e!4700216 (and tp!2376603 tp!2376605))))

(assert (=> b!7971310 (= tp!2376508 e!4700216)))

(assert (= (and b!7971310 ((_ is ElementMatch!21537) (reg!21866 baseR!116))) b!7971736))

(assert (= (and b!7971310 ((_ is Concat!30536) (reg!21866 baseR!116))) b!7971737))

(assert (= (and b!7971310 ((_ is Star!21537) (reg!21866 baseR!116))) b!7971738))

(assert (= (and b!7971310 ((_ is Union!21537) (reg!21866 baseR!116))) b!7971739))

(declare-fun b!7971742 () Bool)

(declare-fun e!4700217 () Bool)

(declare-fun tp!2376609 () Bool)

(assert (=> b!7971742 (= e!4700217 tp!2376609)))

(declare-fun b!7971740 () Bool)

(assert (=> b!7971740 (= e!4700217 tp_is_empty!53617)))

(declare-fun b!7971743 () Bool)

(declare-fun tp!2376611 () Bool)

(declare-fun tp!2376612 () Bool)

(assert (=> b!7971743 (= e!4700217 (and tp!2376611 tp!2376612))))

(declare-fun b!7971741 () Bool)

(declare-fun tp!2376608 () Bool)

(declare-fun tp!2376610 () Bool)

(assert (=> b!7971741 (= e!4700217 (and tp!2376608 tp!2376610))))

(assert (=> b!7971299 (= tp!2376506 e!4700217)))

(assert (= (and b!7971299 ((_ is ElementMatch!21537) (regOne!43587 r!24602))) b!7971740))

(assert (= (and b!7971299 ((_ is Concat!30536) (regOne!43587 r!24602))) b!7971741))

(assert (= (and b!7971299 ((_ is Star!21537) (regOne!43587 r!24602))) b!7971742))

(assert (= (and b!7971299 ((_ is Union!21537) (regOne!43587 r!24602))) b!7971743))

(declare-fun b!7971746 () Bool)

(declare-fun e!4700218 () Bool)

(declare-fun tp!2376614 () Bool)

(assert (=> b!7971746 (= e!4700218 tp!2376614)))

(declare-fun b!7971744 () Bool)

(assert (=> b!7971744 (= e!4700218 tp_is_empty!53617)))

(declare-fun b!7971747 () Bool)

(declare-fun tp!2376616 () Bool)

(declare-fun tp!2376617 () Bool)

(assert (=> b!7971747 (= e!4700218 (and tp!2376616 tp!2376617))))

(declare-fun b!7971745 () Bool)

(declare-fun tp!2376613 () Bool)

(declare-fun tp!2376615 () Bool)

(assert (=> b!7971745 (= e!4700218 (and tp!2376613 tp!2376615))))

(assert (=> b!7971299 (= tp!2376507 e!4700218)))

(assert (= (and b!7971299 ((_ is ElementMatch!21537) (regTwo!43587 r!24602))) b!7971744))

(assert (= (and b!7971299 ((_ is Concat!30536) (regTwo!43587 r!24602))) b!7971745))

(assert (= (and b!7971299 ((_ is Star!21537) (regTwo!43587 r!24602))) b!7971746))

(assert (= (and b!7971299 ((_ is Union!21537) (regTwo!43587 r!24602))) b!7971747))

(declare-fun b!7971748 () Bool)

(declare-fun e!4700219 () Bool)

(declare-fun tp!2376618 () Bool)

(assert (=> b!7971748 (= e!4700219 (and tp_is_empty!53617 tp!2376618))))

(assert (=> b!7971298 (= tp!2376505 e!4700219)))

(assert (= (and b!7971298 ((_ is Cons!74642) (t!390509 input!7927))) b!7971748))

(declare-fun b!7971751 () Bool)

(declare-fun e!4700220 () Bool)

(declare-fun tp!2376620 () Bool)

(assert (=> b!7971751 (= e!4700220 tp!2376620)))

(declare-fun b!7971749 () Bool)

(assert (=> b!7971749 (= e!4700220 tp_is_empty!53617)))

(declare-fun b!7971752 () Bool)

(declare-fun tp!2376622 () Bool)

(declare-fun tp!2376623 () Bool)

(assert (=> b!7971752 (= e!4700220 (and tp!2376622 tp!2376623))))

(declare-fun b!7971750 () Bool)

(declare-fun tp!2376619 () Bool)

(declare-fun tp!2376621 () Bool)

(assert (=> b!7971750 (= e!4700220 (and tp!2376619 tp!2376621))))

(assert (=> b!7971303 (= tp!2376510 e!4700220)))

(assert (= (and b!7971303 ((_ is ElementMatch!21537) (regOne!43586 baseR!116))) b!7971749))

(assert (= (and b!7971303 ((_ is Concat!30536) (regOne!43586 baseR!116))) b!7971750))

(assert (= (and b!7971303 ((_ is Star!21537) (regOne!43586 baseR!116))) b!7971751))

(assert (= (and b!7971303 ((_ is Union!21537) (regOne!43586 baseR!116))) b!7971752))

(declare-fun b!7971755 () Bool)

(declare-fun e!4700221 () Bool)

(declare-fun tp!2376625 () Bool)

(assert (=> b!7971755 (= e!4700221 tp!2376625)))

(declare-fun b!7971753 () Bool)

(assert (=> b!7971753 (= e!4700221 tp_is_empty!53617)))

(declare-fun b!7971756 () Bool)

(declare-fun tp!2376627 () Bool)

(declare-fun tp!2376628 () Bool)

(assert (=> b!7971756 (= e!4700221 (and tp!2376627 tp!2376628))))

(declare-fun b!7971754 () Bool)

(declare-fun tp!2376624 () Bool)

(declare-fun tp!2376626 () Bool)

(assert (=> b!7971754 (= e!4700221 (and tp!2376624 tp!2376626))))

(assert (=> b!7971303 (= tp!2376509 e!4700221)))

(assert (= (and b!7971303 ((_ is ElementMatch!21537) (regTwo!43586 baseR!116))) b!7971753))

(assert (= (and b!7971303 ((_ is Concat!30536) (regTwo!43586 baseR!116))) b!7971754))

(assert (= (and b!7971303 ((_ is Star!21537) (regTwo!43586 baseR!116))) b!7971755))

(assert (= (and b!7971303 ((_ is Union!21537) (regTwo!43586 baseR!116))) b!7971756))

(declare-fun b!7971759 () Bool)

(declare-fun e!4700222 () Bool)

(declare-fun tp!2376630 () Bool)

(assert (=> b!7971759 (= e!4700222 tp!2376630)))

(declare-fun b!7971757 () Bool)

(assert (=> b!7971757 (= e!4700222 tp_is_empty!53617)))

(declare-fun b!7971760 () Bool)

(declare-fun tp!2376632 () Bool)

(declare-fun tp!2376633 () Bool)

(assert (=> b!7971760 (= e!4700222 (and tp!2376632 tp!2376633))))

(declare-fun b!7971758 () Bool)

(declare-fun tp!2376629 () Bool)

(declare-fun tp!2376631 () Bool)

(assert (=> b!7971758 (= e!4700222 (and tp!2376629 tp!2376631))))

(assert (=> b!7971309 (= tp!2376499 e!4700222)))

(assert (= (and b!7971309 ((_ is ElementMatch!21537) (regOne!43586 r!24602))) b!7971757))

(assert (= (and b!7971309 ((_ is Concat!30536) (regOne!43586 r!24602))) b!7971758))

(assert (= (and b!7971309 ((_ is Star!21537) (regOne!43586 r!24602))) b!7971759))

(assert (= (and b!7971309 ((_ is Union!21537) (regOne!43586 r!24602))) b!7971760))

(declare-fun b!7971763 () Bool)

(declare-fun e!4700223 () Bool)

(declare-fun tp!2376635 () Bool)

(assert (=> b!7971763 (= e!4700223 tp!2376635)))

(declare-fun b!7971761 () Bool)

(assert (=> b!7971761 (= e!4700223 tp_is_empty!53617)))

(declare-fun b!7971764 () Bool)

(declare-fun tp!2376637 () Bool)

(declare-fun tp!2376638 () Bool)

(assert (=> b!7971764 (= e!4700223 (and tp!2376637 tp!2376638))))

(declare-fun b!7971762 () Bool)

(declare-fun tp!2376634 () Bool)

(declare-fun tp!2376636 () Bool)

(assert (=> b!7971762 (= e!4700223 (and tp!2376634 tp!2376636))))

(assert (=> b!7971309 (= tp!2376504 e!4700223)))

(assert (= (and b!7971309 ((_ is ElementMatch!21537) (regTwo!43586 r!24602))) b!7971761))

(assert (= (and b!7971309 ((_ is Concat!30536) (regTwo!43586 r!24602))) b!7971762))

(assert (= (and b!7971309 ((_ is Star!21537) (regTwo!43586 r!24602))) b!7971763))

(assert (= (and b!7971309 ((_ is Union!21537) (regTwo!43586 r!24602))) b!7971764))

(check-sat (not b!7971644) (not bm!739685) (not b!7971756) (not b!7971604) (not d!2379913) (not b!7971674) (not d!2379945) (not b!7971603) (not b!7971641) (not b!7971745) (not b!7971655) (not b!7971668) (not b!7971730) (not b!7971348) (not b!7971764) (not b!7971642) (not b!7971646) (not b!7971746) (not b!7971701) (not b!7971658) (not b!7971664) (not b!7971654) (not b!7971525) (not b!7971742) (not b!7971760) (not bm!739684) (not b!7971660) (not b!7971670) (not b!7971751) (not bm!739681) (not b!7971743) (not d!2379949) (not b!7971669) (not bm!739677) (not b!7971750) (not b!7971738) (not b!7971747) (not b!7971726) (not b!7971763) (not b!7971720) (not bm!739674) (not b!7971721) (not b!7971737) (not d!2379941) (not b!7971530) (not d!2379943) (not bm!739678) (not d!2379947) (not b!7971656) (not b!7971754) (not b!7971725) (not bm!739686) (not b!7971724) (not b!7971334) (not b!7971605) (not b!7971741) (not bm!739693) (not b!7971536) (not b!7971722) (not bm!739680) (not b!7971728) (not b!7971678) (not b!7971739) (not b!7971758) (not d!2379939) (not b!7971762) (not d!2379905) (not b!7971729) (not b!7971759) (not b!7971351) (not b!7971755) (not b!7971748) (not b!7971640) (not bm!739679) (not b!7971531) (not b!7971672) (not b!7971752) (not b!7971735) (not bm!739694) (not b!7971650) (not bm!739676) (not b!7971610) tp_is_empty!53617 (not bm!739675))
(check-sat)
(get-model)

(declare-fun d!2379953 () Bool)

(declare-fun res!3158271 () Bool)

(declare-fun e!4700228 () Bool)

(assert (=> d!2379953 (=> res!3158271 e!4700228)))

(assert (=> d!2379953 (= res!3158271 ((_ is ElementMatch!21537) lt!2708347))))

(assert (=> d!2379953 (= (validRegex!11841 lt!2708347) e!4700228)))

(declare-fun b!7971765 () Bool)

(declare-fun res!3158269 () Bool)

(declare-fun e!4700224 () Bool)

(assert (=> b!7971765 (=> res!3158269 e!4700224)))

(assert (=> b!7971765 (= res!3158269 (not ((_ is Concat!30536) lt!2708347)))))

(declare-fun e!4700227 () Bool)

(assert (=> b!7971765 (= e!4700227 e!4700224)))

(declare-fun b!7971766 () Bool)

(declare-fun e!4700225 () Bool)

(declare-fun e!4700229 () Bool)

(assert (=> b!7971766 (= e!4700225 e!4700229)))

(declare-fun res!3158270 () Bool)

(assert (=> b!7971766 (= res!3158270 (not (nullable!9634 (reg!21866 lt!2708347))))))

(assert (=> b!7971766 (=> (not res!3158270) (not e!4700229))))

(declare-fun b!7971767 () Bool)

(declare-fun res!3158272 () Bool)

(declare-fun e!4700230 () Bool)

(assert (=> b!7971767 (=> (not res!3158272) (not e!4700230))))

(declare-fun call!739702 () Bool)

(assert (=> b!7971767 (= res!3158272 call!739702)))

(assert (=> b!7971767 (= e!4700227 e!4700230)))

(declare-fun b!7971768 () Bool)

(declare-fun e!4700226 () Bool)

(declare-fun call!739703 () Bool)

(assert (=> b!7971768 (= e!4700226 call!739703)))

(declare-fun b!7971769 () Bool)

(declare-fun call!739701 () Bool)

(assert (=> b!7971769 (= e!4700229 call!739701)))

(declare-fun b!7971770 () Bool)

(assert (=> b!7971770 (= e!4700230 call!739703)))

(declare-fun c!1463978 () Bool)

(declare-fun bm!739696 () Bool)

(declare-fun c!1463977 () Bool)

(assert (=> bm!739696 (= call!739701 (validRegex!11841 (ite c!1463977 (reg!21866 lt!2708347) (ite c!1463978 (regTwo!43587 lt!2708347) (regTwo!43586 lt!2708347)))))))

(declare-fun b!7971771 () Bool)

(assert (=> b!7971771 (= e!4700224 e!4700226)))

(declare-fun res!3158273 () Bool)

(assert (=> b!7971771 (=> (not res!3158273) (not e!4700226))))

(assert (=> b!7971771 (= res!3158273 call!739702)))

(declare-fun bm!739697 () Bool)

(assert (=> bm!739697 (= call!739702 (validRegex!11841 (ite c!1463978 (regOne!43587 lt!2708347) (regOne!43586 lt!2708347))))))

(declare-fun bm!739698 () Bool)

(assert (=> bm!739698 (= call!739703 call!739701)))

(declare-fun b!7971772 () Bool)

(assert (=> b!7971772 (= e!4700228 e!4700225)))

(assert (=> b!7971772 (= c!1463977 ((_ is Star!21537) lt!2708347))))

(declare-fun b!7971773 () Bool)

(assert (=> b!7971773 (= e!4700225 e!4700227)))

(assert (=> b!7971773 (= c!1463978 ((_ is Union!21537) lt!2708347))))

(assert (= (and d!2379953 (not res!3158271)) b!7971772))

(assert (= (and b!7971772 c!1463977) b!7971766))

(assert (= (and b!7971772 (not c!1463977)) b!7971773))

(assert (= (and b!7971766 res!3158270) b!7971769))

(assert (= (and b!7971773 c!1463978) b!7971767))

(assert (= (and b!7971773 (not c!1463978)) b!7971765))

(assert (= (and b!7971767 res!3158272) b!7971770))

(assert (= (and b!7971765 (not res!3158269)) b!7971771))

(assert (= (and b!7971771 res!3158273) b!7971768))

(assert (= (or b!7971770 b!7971768) bm!739698))

(assert (= (or b!7971767 b!7971771) bm!739697))

(assert (= (or b!7971769 bm!739698) bm!739696))

(declare-fun m!8349482 () Bool)

(assert (=> b!7971766 m!8349482))

(declare-fun m!8349484 () Bool)

(assert (=> bm!739696 m!8349484))

(declare-fun m!8349486 () Bool)

(assert (=> bm!739697 m!8349486))

(assert (=> d!2379939 d!2379953))

(assert (=> d!2379939 d!2379951))

(declare-fun d!2379955 () Bool)

(assert (=> d!2379955 (= (nullable!9634 lt!2708145) (nullableFct!3804 lt!2708145))))

(declare-fun bs!1969981 () Bool)

(assert (= bs!1969981 d!2379955))

(declare-fun m!8349488 () Bool)

(assert (=> bs!1969981 m!8349488))

(assert (=> b!7971674 d!2379955))

(declare-fun d!2379957 () Bool)

(assert (not d!2379957))

(assert (=> b!7971672 d!2379957))

(declare-fun d!2379959 () Bool)

(assert (not d!2379959))

(assert (=> b!7971672 d!2379959))

(declare-fun d!2379961 () Bool)

(declare-fun res!3158276 () Bool)

(declare-fun e!4700235 () Bool)

(assert (=> d!2379961 (=> res!3158276 e!4700235)))

(assert (=> d!2379961 (= res!3158276 ((_ is ElementMatch!21537) (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))

(assert (=> d!2379961 (= (validRegex!11841 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))) e!4700235)))

(declare-fun b!7971774 () Bool)

(declare-fun res!3158274 () Bool)

(declare-fun e!4700231 () Bool)

(assert (=> b!7971774 (=> res!3158274 e!4700231)))

(assert (=> b!7971774 (= res!3158274 (not ((_ is Concat!30536) (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116)))))))

(declare-fun e!4700234 () Bool)

(assert (=> b!7971774 (= e!4700234 e!4700231)))

(declare-fun b!7971775 () Bool)

(declare-fun e!4700232 () Bool)

(declare-fun e!4700236 () Bool)

(assert (=> b!7971775 (= e!4700232 e!4700236)))

(declare-fun res!3158275 () Bool)

(assert (=> b!7971775 (= res!3158275 (not (nullable!9634 (reg!21866 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))))

(assert (=> b!7971775 (=> (not res!3158275) (not e!4700236))))

(declare-fun b!7971776 () Bool)

(declare-fun res!3158277 () Bool)

(declare-fun e!4700237 () Bool)

(assert (=> b!7971776 (=> (not res!3158277) (not e!4700237))))

(declare-fun call!739705 () Bool)

(assert (=> b!7971776 (= res!3158277 call!739705)))

(assert (=> b!7971776 (= e!4700234 e!4700237)))

(declare-fun b!7971777 () Bool)

(declare-fun e!4700233 () Bool)

(declare-fun call!739706 () Bool)

(assert (=> b!7971777 (= e!4700233 call!739706)))

(declare-fun b!7971778 () Bool)

(declare-fun call!739704 () Bool)

(assert (=> b!7971778 (= e!4700236 call!739704)))

(declare-fun b!7971779 () Bool)

(assert (=> b!7971779 (= e!4700237 call!739706)))

(declare-fun bm!739699 () Bool)

(declare-fun c!1463979 () Bool)

(declare-fun c!1463980 () Bool)

(assert (=> bm!739699 (= call!739704 (validRegex!11841 (ite c!1463979 (reg!21866 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))) (ite c!1463980 (regTwo!43587 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))) (regTwo!43586 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116)))))))))

(declare-fun b!7971780 () Bool)

(assert (=> b!7971780 (= e!4700231 e!4700233)))

(declare-fun res!3158278 () Bool)

(assert (=> b!7971780 (=> (not res!3158278) (not e!4700233))))

(assert (=> b!7971780 (= res!3158278 call!739705)))

(declare-fun bm!739700 () Bool)

(assert (=> bm!739700 (= call!739705 (validRegex!11841 (ite c!1463980 (regOne!43587 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))) (regOne!43586 (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))))

(declare-fun bm!739701 () Bool)

(assert (=> bm!739701 (= call!739706 call!739704)))

(declare-fun b!7971781 () Bool)

(assert (=> b!7971781 (= e!4700235 e!4700232)))

(assert (=> b!7971781 (= c!1463979 ((_ is Star!21537) (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))

(declare-fun b!7971782 () Bool)

(assert (=> b!7971782 (= e!4700232 e!4700234)))

(assert (=> b!7971782 (= c!1463980 ((_ is Union!21537) (ite c!1463976 (regOne!43587 baseR!116) (regOne!43586 baseR!116))))))

(assert (= (and d!2379961 (not res!3158276)) b!7971781))

(assert (= (and b!7971781 c!1463979) b!7971775))

(assert (= (and b!7971781 (not c!1463979)) b!7971782))

(assert (= (and b!7971775 res!3158275) b!7971778))

(assert (= (and b!7971782 c!1463980) b!7971776))

(assert (= (and b!7971782 (not c!1463980)) b!7971774))

(assert (= (and b!7971776 res!3158277) b!7971779))

(assert (= (and b!7971774 (not res!3158274)) b!7971780))

(assert (= (and b!7971780 res!3158278) b!7971777))

(assert (= (or b!7971779 b!7971777) bm!739701))

(assert (= (or b!7971776 b!7971780) bm!739700))

(assert (= (or b!7971778 bm!739701) bm!739699))

(declare-fun m!8349490 () Bool)

(assert (=> b!7971775 m!8349490))

(declare-fun m!8349492 () Bool)

(assert (=> bm!739699 m!8349492))

(declare-fun m!8349494 () Bool)

(assert (=> bm!739700 m!8349494))

(assert (=> bm!739694 d!2379961))

(declare-fun d!2379963 () Bool)

(declare-fun lt!2708356 () Int)

(assert (=> d!2379963 (>= lt!2708356 0)))

(declare-fun e!4700238 () Int)

(assert (=> d!2379963 (= lt!2708356 e!4700238)))

(declare-fun c!1463981 () Bool)

(assert (=> d!2379963 (= c!1463981 ((_ is Nil!74642) (t!390509 input!7927)))))

(assert (=> d!2379963 (= (size!43473 (t!390509 input!7927)) lt!2708356)))

(declare-fun b!7971783 () Bool)

(assert (=> b!7971783 (= e!4700238 0)))

(declare-fun b!7971784 () Bool)

(assert (=> b!7971784 (= e!4700238 (+ 1 (size!43473 (t!390509 (t!390509 input!7927)))))))

(assert (= (and d!2379963 c!1463981) b!7971783))

(assert (= (and d!2379963 (not c!1463981)) b!7971784))

(declare-fun m!8349496 () Bool)

(assert (=> b!7971784 m!8349496))

(assert (=> b!7971334 d!2379963))

(declare-fun d!2379965 () Bool)

(assert (=> d!2379965 (= (head!16287 (_1!38669 lt!2708144)) (h!81090 (_1!38669 lt!2708144)))))

(assert (=> b!7971650 d!2379965))

(declare-fun d!2379967 () Bool)

(assert (not d!2379967))

(assert (=> b!7971670 d!2379967))

(declare-fun d!2379969 () Bool)

(declare-fun res!3158281 () Bool)

(declare-fun e!4700243 () Bool)

(assert (=> d!2379969 (=> res!3158281 e!4700243)))

(assert (=> d!2379969 (= res!3158281 ((_ is ElementMatch!21537) (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))

(assert (=> d!2379969 (= (validRegex!11841 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))) e!4700243)))

(declare-fun b!7971785 () Bool)

(declare-fun res!3158279 () Bool)

(declare-fun e!4700239 () Bool)

(assert (=> b!7971785 (=> res!3158279 e!4700239)))

(assert (=> b!7971785 (= res!3158279 (not ((_ is Concat!30536) (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116))))))))

(declare-fun e!4700242 () Bool)

(assert (=> b!7971785 (= e!4700242 e!4700239)))

(declare-fun b!7971786 () Bool)

(declare-fun e!4700240 () Bool)

(declare-fun e!4700244 () Bool)

(assert (=> b!7971786 (= e!4700240 e!4700244)))

(declare-fun res!3158280 () Bool)

(assert (=> b!7971786 (= res!3158280 (not (nullable!9634 (reg!21866 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))))

(assert (=> b!7971786 (=> (not res!3158280) (not e!4700244))))

(declare-fun b!7971787 () Bool)

(declare-fun res!3158282 () Bool)

(declare-fun e!4700245 () Bool)

(assert (=> b!7971787 (=> (not res!3158282) (not e!4700245))))

(declare-fun call!739708 () Bool)

(assert (=> b!7971787 (= res!3158282 call!739708)))

(assert (=> b!7971787 (= e!4700242 e!4700245)))

(declare-fun b!7971788 () Bool)

(declare-fun e!4700241 () Bool)

(declare-fun call!739709 () Bool)

(assert (=> b!7971788 (= e!4700241 call!739709)))

(declare-fun b!7971789 () Bool)

(declare-fun call!739707 () Bool)

(assert (=> b!7971789 (= e!4700244 call!739707)))

(declare-fun b!7971790 () Bool)

(assert (=> b!7971790 (= e!4700245 call!739709)))

(declare-fun c!1463983 () Bool)

(declare-fun c!1463982 () Bool)

(declare-fun bm!739702 () Bool)

(assert (=> bm!739702 (= call!739707 (validRegex!11841 (ite c!1463982 (reg!21866 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))) (ite c!1463983 (regTwo!43587 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))) (regTwo!43586 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116))))))))))

(declare-fun b!7971791 () Bool)

(assert (=> b!7971791 (= e!4700239 e!4700241)))

(declare-fun res!3158283 () Bool)

(assert (=> b!7971791 (=> (not res!3158283) (not e!4700241))))

(assert (=> b!7971791 (= res!3158283 call!739708)))

(declare-fun bm!739703 () Bool)

(assert (=> bm!739703 (= call!739708 (validRegex!11841 (ite c!1463983 (regOne!43587 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))) (regOne!43586 (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))))

(declare-fun bm!739704 () Bool)

(assert (=> bm!739704 (= call!739709 call!739707)))

(declare-fun b!7971792 () Bool)

(assert (=> b!7971792 (= e!4700243 e!4700240)))

(assert (=> b!7971792 (= c!1463982 ((_ is Star!21537) (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))

(declare-fun b!7971793 () Bool)

(assert (=> b!7971793 (= e!4700240 e!4700242)))

(assert (=> b!7971793 (= c!1463983 ((_ is Union!21537) (ite c!1463975 (reg!21866 baseR!116) (ite c!1463976 (regTwo!43587 baseR!116) (regTwo!43586 baseR!116)))))))

(assert (= (and d!2379969 (not res!3158281)) b!7971792))

(assert (= (and b!7971792 c!1463982) b!7971786))

(assert (= (and b!7971792 (not c!1463982)) b!7971793))

(assert (= (and b!7971786 res!3158280) b!7971789))

(assert (= (and b!7971793 c!1463983) b!7971787))

(assert (= (and b!7971793 (not c!1463983)) b!7971785))

(assert (= (and b!7971787 res!3158282) b!7971790))

(assert (= (and b!7971785 (not res!3158279)) b!7971791))

(assert (= (and b!7971791 res!3158283) b!7971788))

(assert (= (or b!7971790 b!7971788) bm!739704))

(assert (= (or b!7971787 b!7971791) bm!739703))

(assert (= (or b!7971789 bm!739704) bm!739702))

(declare-fun m!8349498 () Bool)

(assert (=> b!7971786 m!8349498))

(declare-fun m!8349500 () Bool)

(assert (=> bm!739702 m!8349500))

(declare-fun m!8349502 () Bool)

(assert (=> bm!739703 m!8349502))

(assert (=> bm!739693 d!2379969))

(assert (=> b!7971669 d!2379957))

(assert (=> b!7971669 d!2379959))

(declare-fun d!2379971 () Bool)

(assert (=> d!2379971 (= (isEmpty!42941 (_1!38669 lt!2708341)) ((_ is Nil!74642) (_1!38669 lt!2708341)))))

(assert (=> b!7971531 d!2379971))

(declare-fun d!2379973 () Bool)

(assert (=> d!2379973 (= (isEmpty!42941 testedP!447) ((_ is Nil!74642) testedP!447))))

(assert (=> bm!739685 d!2379973))

(assert (=> d!2379945 d!2379973))

(assert (=> d!2379945 d!2379951))

(declare-fun d!2379975 () Bool)

(assert (=> d!2379975 (= (nullable!9634 baseR!116) (nullableFct!3804 baseR!116))))

(declare-fun bs!1969982 () Bool)

(assert (= bs!1969982 d!2379975))

(declare-fun m!8349504 () Bool)

(assert (=> bs!1969982 m!8349504))

(assert (=> b!7971646 d!2379975))

(assert (=> b!7971605 d!2379903))

(assert (=> b!7971605 d!2379911))

(declare-fun d!2379977 () Bool)

(declare-fun lt!2708357 () Int)

(assert (=> d!2379977 (>= lt!2708357 0)))

(declare-fun e!4700246 () Int)

(assert (=> d!2379977 (= lt!2708357 e!4700246)))

(declare-fun c!1463984 () Bool)

(assert (=> d!2379977 (= c!1463984 ((_ is Nil!74642) (_1!38669 lt!2708341)))))

(assert (=> d!2379977 (= (size!43473 (_1!38669 lt!2708341)) lt!2708357)))

(declare-fun b!7971794 () Bool)

(assert (=> b!7971794 (= e!4700246 0)))

(declare-fun b!7971795 () Bool)

(assert (=> b!7971795 (= e!4700246 (+ 1 (size!43473 (t!390509 (_1!38669 lt!2708341)))))))

(assert (= (and d!2379977 c!1463984) b!7971794))

(assert (= (and d!2379977 (not c!1463984)) b!7971795))

(declare-fun m!8349506 () Bool)

(assert (=> b!7971795 m!8349506))

(assert (=> b!7971530 d!2379977))

(assert (=> b!7971530 d!2379911))

(declare-fun b!7971797 () Bool)

(declare-fun res!3158290 () Bool)

(declare-fun e!4700248 () Bool)

(assert (=> b!7971797 (=> res!3158290 e!4700248)))

(assert (=> b!7971797 (= res!3158290 (not (isEmpty!42941 (tail!15814 (tail!15814 testedP!447)))))))

(declare-fun bm!739705 () Bool)

(declare-fun call!739710 () Bool)

(assert (=> bm!739705 (= call!739710 (isEmpty!42941 (tail!15814 testedP!447)))))

(declare-fun b!7971798 () Bool)

(declare-fun e!4700251 () Bool)

(assert (=> b!7971798 (= e!4700251 (= (head!16287 (tail!15814 testedP!447)) (c!1463878 (derivativeStep!6561 baseR!116 (head!16287 testedP!447)))))))

(declare-fun b!7971799 () Bool)

(declare-fun e!4700253 () Bool)

(declare-fun lt!2708358 () Bool)

(assert (=> b!7971799 (= e!4700253 (not lt!2708358))))

(declare-fun b!7971800 () Bool)

(declare-fun res!3158288 () Bool)

(assert (=> b!7971800 (=> (not res!3158288) (not e!4700251))))

(assert (=> b!7971800 (= res!3158288 (isEmpty!42941 (tail!15814 (tail!15814 testedP!447))))))

(declare-fun b!7971801 () Bool)

(declare-fun e!4700250 () Bool)

(assert (=> b!7971801 (= e!4700250 e!4700248)))

(declare-fun res!3158287 () Bool)

(assert (=> b!7971801 (=> res!3158287 e!4700248)))

(assert (=> b!7971801 (= res!3158287 call!739710)))

(declare-fun b!7971796 () Bool)

(declare-fun e!4700249 () Bool)

(assert (=> b!7971796 (= e!4700249 (matchR!10756 (derivativeStep!6561 (derivativeStep!6561 baseR!116 (head!16287 testedP!447)) (head!16287 (tail!15814 testedP!447))) (tail!15814 (tail!15814 testedP!447))))))

(declare-fun d!2379979 () Bool)

(declare-fun e!4700252 () Bool)

(assert (=> d!2379979 e!4700252))

(declare-fun c!1463986 () Bool)

(assert (=> d!2379979 (= c!1463986 ((_ is EmptyExpr!21537) (derivativeStep!6561 baseR!116 (head!16287 testedP!447))))))

(assert (=> d!2379979 (= lt!2708358 e!4700249)))

(declare-fun c!1463985 () Bool)

(assert (=> d!2379979 (= c!1463985 (isEmpty!42941 (tail!15814 testedP!447)))))

(assert (=> d!2379979 (validRegex!11841 (derivativeStep!6561 baseR!116 (head!16287 testedP!447)))))

(assert (=> d!2379979 (= (matchR!10756 (derivativeStep!6561 baseR!116 (head!16287 testedP!447)) (tail!15814 testedP!447)) lt!2708358)))

(declare-fun b!7971802 () Bool)

(assert (=> b!7971802 (= e!4700249 (nullable!9634 (derivativeStep!6561 baseR!116 (head!16287 testedP!447))))))

(declare-fun b!7971803 () Bool)

(declare-fun res!3158285 () Bool)

(declare-fun e!4700247 () Bool)

(assert (=> b!7971803 (=> res!3158285 e!4700247)))

(assert (=> b!7971803 (= res!3158285 (not ((_ is ElementMatch!21537) (derivativeStep!6561 baseR!116 (head!16287 testedP!447)))))))

(assert (=> b!7971803 (= e!4700253 e!4700247)))

(declare-fun b!7971804 () Bool)

(declare-fun res!3158286 () Bool)

(assert (=> b!7971804 (=> (not res!3158286) (not e!4700251))))

(assert (=> b!7971804 (= res!3158286 (not call!739710))))

(declare-fun b!7971805 () Bool)

(assert (=> b!7971805 (= e!4700252 (= lt!2708358 call!739710))))

(declare-fun b!7971806 () Bool)

(assert (=> b!7971806 (= e!4700248 (not (= (head!16287 (tail!15814 testedP!447)) (c!1463878 (derivativeStep!6561 baseR!116 (head!16287 testedP!447))))))))

(declare-fun b!7971807 () Bool)

(assert (=> b!7971807 (= e!4700247 e!4700250)))

(declare-fun res!3158284 () Bool)

(assert (=> b!7971807 (=> (not res!3158284) (not e!4700250))))

(assert (=> b!7971807 (= res!3158284 (not lt!2708358))))

(declare-fun b!7971808 () Bool)

(assert (=> b!7971808 (= e!4700252 e!4700253)))

(declare-fun c!1463987 () Bool)

(assert (=> b!7971808 (= c!1463987 ((_ is EmptyLang!21537) (derivativeStep!6561 baseR!116 (head!16287 testedP!447))))))

(declare-fun b!7971809 () Bool)

(declare-fun res!3158289 () Bool)

(assert (=> b!7971809 (=> res!3158289 e!4700247)))

(assert (=> b!7971809 (= res!3158289 e!4700251)))

(declare-fun res!3158291 () Bool)

(assert (=> b!7971809 (=> (not res!3158291) (not e!4700251))))

(assert (=> b!7971809 (= res!3158291 lt!2708358)))

(assert (= (and d!2379979 c!1463985) b!7971802))

(assert (= (and d!2379979 (not c!1463985)) b!7971796))

(assert (= (and d!2379979 c!1463986) b!7971805))

(assert (= (and d!2379979 (not c!1463986)) b!7971808))

(assert (= (and b!7971808 c!1463987) b!7971799))

(assert (= (and b!7971808 (not c!1463987)) b!7971803))

(assert (= (and b!7971803 (not res!3158285)) b!7971809))

(assert (= (and b!7971809 res!3158291) b!7971804))

(assert (= (and b!7971804 res!3158286) b!7971800))

(assert (= (and b!7971800 res!3158288) b!7971798))

(assert (= (and b!7971809 (not res!3158289)) b!7971807))

(assert (= (and b!7971807 res!3158284) b!7971801))

(assert (= (and b!7971801 (not res!3158287)) b!7971797))

(assert (= (and b!7971797 (not res!3158290)) b!7971806))

(assert (= (or b!7971805 b!7971804 b!7971801) bm!739705))

(assert (=> bm!739705 m!8349420))

(assert (=> bm!739705 m!8349450))

(assert (=> b!7971800 m!8349420))

(declare-fun m!8349508 () Bool)

(assert (=> b!7971800 m!8349508))

(assert (=> b!7971800 m!8349508))

(declare-fun m!8349510 () Bool)

(assert (=> b!7971800 m!8349510))

(assert (=> b!7971796 m!8349420))

(declare-fun m!8349512 () Bool)

(assert (=> b!7971796 m!8349512))

(assert (=> b!7971796 m!8349452))

(assert (=> b!7971796 m!8349512))

(declare-fun m!8349514 () Bool)

(assert (=> b!7971796 m!8349514))

(assert (=> b!7971796 m!8349420))

(assert (=> b!7971796 m!8349508))

(assert (=> b!7971796 m!8349514))

(assert (=> b!7971796 m!8349508))

(declare-fun m!8349516 () Bool)

(assert (=> b!7971796 m!8349516))

(assert (=> b!7971802 m!8349452))

(declare-fun m!8349518 () Bool)

(assert (=> b!7971802 m!8349518))

(assert (=> b!7971797 m!8349420))

(assert (=> b!7971797 m!8349508))

(assert (=> b!7971797 m!8349508))

(assert (=> b!7971797 m!8349510))

(assert (=> b!7971806 m!8349420))

(assert (=> b!7971806 m!8349512))

(assert (=> b!7971798 m!8349420))

(assert (=> b!7971798 m!8349512))

(assert (=> d!2379979 m!8349420))

(assert (=> d!2379979 m!8349450))

(assert (=> d!2379979 m!8349452))

(declare-fun m!8349520 () Bool)

(assert (=> d!2379979 m!8349520))

(assert (=> b!7971654 d!2379979))

(declare-fun b!7971830 () Bool)

(declare-fun c!1464001 () Bool)

(assert (=> b!7971830 (= c!1464001 (nullable!9634 (regOne!43586 baseR!116)))))

(declare-fun e!4700268 () Regex!21537)

(declare-fun e!4700264 () Regex!21537)

(assert (=> b!7971830 (= e!4700268 e!4700264)))

(declare-fun b!7971831 () Bool)

(declare-fun e!4700266 () Regex!21537)

(assert (=> b!7971831 (= e!4700266 EmptyLang!21537)))

(declare-fun b!7971832 () Bool)

(declare-fun e!4700267 () Regex!21537)

(assert (=> b!7971832 (= e!4700267 (ite (= (head!16287 testedP!447) (c!1463878 baseR!116)) EmptyExpr!21537 EmptyLang!21537))))

(declare-fun b!7971833 () Bool)

(declare-fun call!739720 () Regex!21537)

(assert (=> b!7971833 (= e!4700264 (Union!21537 (Concat!30536 call!739720 (regTwo!43586 baseR!116)) EmptyLang!21537))))

(declare-fun b!7971834 () Bool)

(declare-fun call!739722 () Regex!21537)

(assert (=> b!7971834 (= e!4700268 (Concat!30536 call!739722 baseR!116))))

(declare-fun bm!739714 () Bool)

(assert (=> bm!739714 (= call!739720 call!739722)))

(declare-fun b!7971835 () Bool)

(assert (=> b!7971835 (= e!4700266 e!4700267)))

(declare-fun c!1464002 () Bool)

(assert (=> b!7971835 (= c!1464002 ((_ is ElementMatch!21537) baseR!116))))

(declare-fun bm!739715 () Bool)

(declare-fun call!739719 () Regex!21537)

(assert (=> bm!739715 (= call!739722 call!739719)))

(declare-fun b!7971836 () Bool)

(declare-fun c!1464000 () Bool)

(assert (=> b!7971836 (= c!1464000 ((_ is Union!21537) baseR!116))))

(declare-fun e!4700265 () Regex!21537)

(assert (=> b!7971836 (= e!4700267 e!4700265)))

(declare-fun call!739721 () Regex!21537)

(declare-fun bm!739716 () Bool)

(assert (=> bm!739716 (= call!739721 (derivativeStep!6561 (ite c!1464000 (regOne!43587 baseR!116) (regOne!43586 baseR!116)) (head!16287 testedP!447)))))

(declare-fun b!7971837 () Bool)

(assert (=> b!7971837 (= e!4700265 (Union!21537 call!739721 call!739719))))

(declare-fun b!7971838 () Bool)

(assert (=> b!7971838 (= e!4700265 e!4700268)))

(declare-fun c!1463999 () Bool)

(assert (=> b!7971838 (= c!1463999 ((_ is Star!21537) baseR!116))))

(declare-fun bm!739717 () Bool)

(assert (=> bm!739717 (= call!739719 (derivativeStep!6561 (ite c!1464000 (regTwo!43587 baseR!116) (ite c!1463999 (reg!21866 baseR!116) (ite c!1464001 (regTwo!43586 baseR!116) (regOne!43586 baseR!116)))) (head!16287 testedP!447)))))

(declare-fun b!7971839 () Bool)

(assert (=> b!7971839 (= e!4700264 (Union!21537 (Concat!30536 call!739721 (regTwo!43586 baseR!116)) call!739720))))

(declare-fun d!2379981 () Bool)

(declare-fun lt!2708361 () Regex!21537)

(assert (=> d!2379981 (validRegex!11841 lt!2708361)))

(assert (=> d!2379981 (= lt!2708361 e!4700266)))

(declare-fun c!1463998 () Bool)

(assert (=> d!2379981 (= c!1463998 (or ((_ is EmptyExpr!21537) baseR!116) ((_ is EmptyLang!21537) baseR!116)))))

(assert (=> d!2379981 (validRegex!11841 baseR!116)))

(assert (=> d!2379981 (= (derivativeStep!6561 baseR!116 (head!16287 testedP!447)) lt!2708361)))

(assert (= (and d!2379981 c!1463998) b!7971831))

(assert (= (and d!2379981 (not c!1463998)) b!7971835))

(assert (= (and b!7971835 c!1464002) b!7971832))

(assert (= (and b!7971835 (not c!1464002)) b!7971836))

(assert (= (and b!7971836 c!1464000) b!7971837))

(assert (= (and b!7971836 (not c!1464000)) b!7971838))

(assert (= (and b!7971838 c!1463999) b!7971834))

(assert (= (and b!7971838 (not c!1463999)) b!7971830))

(assert (= (and b!7971830 c!1464001) b!7971839))

(assert (= (and b!7971830 (not c!1464001)) b!7971833))

(assert (= (or b!7971839 b!7971833) bm!739714))

(assert (= (or b!7971834 bm!739714) bm!739715))

(assert (= (or b!7971837 bm!739715) bm!739717))

(assert (= (or b!7971837 b!7971839) bm!739716))

(declare-fun m!8349522 () Bool)

(assert (=> b!7971830 m!8349522))

(assert (=> bm!739716 m!8349424))

(declare-fun m!8349524 () Bool)

(assert (=> bm!739716 m!8349524))

(assert (=> bm!739717 m!8349424))

(declare-fun m!8349526 () Bool)

(assert (=> bm!739717 m!8349526))

(declare-fun m!8349528 () Bool)

(assert (=> d!2379981 m!8349528))

(assert (=> d!2379981 m!8349232))

(assert (=> b!7971654 d!2379981))

(declare-fun d!2379983 () Bool)

(assert (=> d!2379983 (= (head!16287 testedP!447) (h!81090 testedP!447))))

(assert (=> b!7971654 d!2379983))

(declare-fun d!2379985 () Bool)

(assert (=> d!2379985 (= (tail!15814 testedP!447) (t!390509 testedP!447))))

(assert (=> b!7971654 d!2379985))

(declare-fun d!2379987 () Bool)

(declare-fun e!4700269 () Bool)

(assert (=> d!2379987 e!4700269))

(declare-fun res!3158292 () Bool)

(assert (=> d!2379987 (=> res!3158292 e!4700269)))

(declare-fun lt!2708362 () Bool)

(assert (=> d!2379987 (= res!3158292 (not lt!2708362))))

(declare-fun e!4700271 () Bool)

(assert (=> d!2379987 (= lt!2708362 e!4700271)))

(declare-fun res!3158294 () Bool)

(assert (=> d!2379987 (=> res!3158294 e!4700271)))

(assert (=> d!2379987 (= res!3158294 ((_ is Nil!74642) (tail!15814 testedP!447)))))

(assert (=> d!2379987 (= (isPrefix!6637 (tail!15814 testedP!447) (tail!15814 input!7927)) lt!2708362)))

(declare-fun b!7971842 () Bool)

(declare-fun e!4700270 () Bool)

(assert (=> b!7971842 (= e!4700270 (isPrefix!6637 (tail!15814 (tail!15814 testedP!447)) (tail!15814 (tail!15814 input!7927))))))

(declare-fun b!7971841 () Bool)

(declare-fun res!3158295 () Bool)

(assert (=> b!7971841 (=> (not res!3158295) (not e!4700270))))

(assert (=> b!7971841 (= res!3158295 (= (head!16287 (tail!15814 testedP!447)) (head!16287 (tail!15814 input!7927))))))

(declare-fun b!7971843 () Bool)

(assert (=> b!7971843 (= e!4700269 (>= (size!43473 (tail!15814 input!7927)) (size!43473 (tail!15814 testedP!447))))))

(declare-fun b!7971840 () Bool)

(assert (=> b!7971840 (= e!4700271 e!4700270)))

(declare-fun res!3158293 () Bool)

(assert (=> b!7971840 (=> (not res!3158293) (not e!4700270))))

(assert (=> b!7971840 (= res!3158293 (not ((_ is Nil!74642) (tail!15814 input!7927))))))

(assert (= (and d!2379987 (not res!3158294)) b!7971840))

(assert (= (and b!7971840 res!3158293) b!7971841))

(assert (= (and b!7971841 res!3158295) b!7971842))

(assert (= (and d!2379987 (not res!3158292)) b!7971843))

(assert (=> b!7971842 m!8349420))

(assert (=> b!7971842 m!8349508))

(assert (=> b!7971842 m!8349254))

(declare-fun m!8349530 () Bool)

(assert (=> b!7971842 m!8349530))

(assert (=> b!7971842 m!8349508))

(assert (=> b!7971842 m!8349530))

(declare-fun m!8349532 () Bool)

(assert (=> b!7971842 m!8349532))

(assert (=> b!7971841 m!8349420))

(assert (=> b!7971841 m!8349512))

(assert (=> b!7971841 m!8349254))

(declare-fun m!8349534 () Bool)

(assert (=> b!7971841 m!8349534))

(assert (=> b!7971843 m!8349254))

(declare-fun m!8349536 () Bool)

(assert (=> b!7971843 m!8349536))

(assert (=> b!7971843 m!8349420))

(declare-fun m!8349538 () Bool)

(assert (=> b!7971843 m!8349538))

(assert (=> b!7971604 d!2379987))

(assert (=> b!7971604 d!2379985))

(declare-fun d!2379989 () Bool)

(assert (=> d!2379989 (= (tail!15814 input!7927) (t!390509 input!7927))))

(assert (=> b!7971604 d!2379989))

(assert (=> bm!739684 d!2379935))

(declare-fun b!7971845 () Bool)

(declare-fun res!3158302 () Bool)

(declare-fun e!4700273 () Bool)

(assert (=> b!7971845 (=> res!3158302 e!4700273)))

(assert (=> b!7971845 (= res!3158302 (not (isEmpty!42941 (tail!15814 (tail!15814 (_1!38669 lt!2708144))))))))

(declare-fun bm!739718 () Bool)

(declare-fun call!739723 () Bool)

(assert (=> bm!739718 (= call!739723 (isEmpty!42941 (tail!15814 (_1!38669 lt!2708144))))))

(declare-fun b!7971846 () Bool)

(declare-fun e!4700276 () Bool)

(assert (=> b!7971846 (= e!4700276 (= (head!16287 (tail!15814 (_1!38669 lt!2708144))) (c!1463878 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))))))))

(declare-fun b!7971847 () Bool)

(declare-fun e!4700278 () Bool)

(declare-fun lt!2708363 () Bool)

(assert (=> b!7971847 (= e!4700278 (not lt!2708363))))

(declare-fun b!7971848 () Bool)

(declare-fun res!3158300 () Bool)

(assert (=> b!7971848 (=> (not res!3158300) (not e!4700276))))

(assert (=> b!7971848 (= res!3158300 (isEmpty!42941 (tail!15814 (tail!15814 (_1!38669 lt!2708144)))))))

(declare-fun b!7971849 () Bool)

(declare-fun e!4700275 () Bool)

(assert (=> b!7971849 (= e!4700275 e!4700273)))

(declare-fun res!3158299 () Bool)

(assert (=> b!7971849 (=> res!3158299 e!4700273)))

(assert (=> b!7971849 (= res!3158299 call!739723)))

(declare-fun b!7971844 () Bool)

(declare-fun e!4700274 () Bool)

(assert (=> b!7971844 (= e!4700274 (matchR!10756 (derivativeStep!6561 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))) (head!16287 (tail!15814 (_1!38669 lt!2708144)))) (tail!15814 (tail!15814 (_1!38669 lt!2708144)))))))

(declare-fun d!2379991 () Bool)

(declare-fun e!4700277 () Bool)

(assert (=> d!2379991 e!4700277))

(declare-fun c!1464004 () Bool)

(assert (=> d!2379991 (= c!1464004 ((_ is EmptyExpr!21537) (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144)))))))

(assert (=> d!2379991 (= lt!2708363 e!4700274)))

(declare-fun c!1464003 () Bool)

(assert (=> d!2379991 (= c!1464003 (isEmpty!42941 (tail!15814 (_1!38669 lt!2708144))))))

(assert (=> d!2379991 (validRegex!11841 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))))))

(assert (=> d!2379991 (= (matchR!10756 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))) (tail!15814 (_1!38669 lt!2708144))) lt!2708363)))

(declare-fun b!7971850 () Bool)

(assert (=> b!7971850 (= e!4700274 (nullable!9634 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144)))))))

(declare-fun b!7971851 () Bool)

(declare-fun res!3158297 () Bool)

(declare-fun e!4700272 () Bool)

(assert (=> b!7971851 (=> res!3158297 e!4700272)))

(assert (=> b!7971851 (= res!3158297 (not ((_ is ElementMatch!21537) (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))))))))

(assert (=> b!7971851 (= e!4700278 e!4700272)))

(declare-fun b!7971852 () Bool)

(declare-fun res!3158298 () Bool)

(assert (=> b!7971852 (=> (not res!3158298) (not e!4700276))))

(assert (=> b!7971852 (= res!3158298 (not call!739723))))

(declare-fun b!7971853 () Bool)

(assert (=> b!7971853 (= e!4700277 (= lt!2708363 call!739723))))

(declare-fun b!7971854 () Bool)

(assert (=> b!7971854 (= e!4700273 (not (= (head!16287 (tail!15814 (_1!38669 lt!2708144))) (c!1463878 (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144)))))))))

(declare-fun b!7971855 () Bool)

(assert (=> b!7971855 (= e!4700272 e!4700275)))

(declare-fun res!3158296 () Bool)

(assert (=> b!7971855 (=> (not res!3158296) (not e!4700275))))

(assert (=> b!7971855 (= res!3158296 (not lt!2708363))))

(declare-fun b!7971856 () Bool)

(assert (=> b!7971856 (= e!4700277 e!4700278)))

(declare-fun c!1464005 () Bool)

(assert (=> b!7971856 (= c!1464005 ((_ is EmptyLang!21537) (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144)))))))

(declare-fun b!7971857 () Bool)

(declare-fun res!3158301 () Bool)

(assert (=> b!7971857 (=> res!3158301 e!4700272)))

(assert (=> b!7971857 (= res!3158301 e!4700276)))

(declare-fun res!3158303 () Bool)

(assert (=> b!7971857 (=> (not res!3158303) (not e!4700276))))

(assert (=> b!7971857 (= res!3158303 lt!2708363)))

(assert (= (and d!2379991 c!1464003) b!7971850))

(assert (= (and d!2379991 (not c!1464003)) b!7971844))

(assert (= (and d!2379991 c!1464004) b!7971853))

(assert (= (and d!2379991 (not c!1464004)) b!7971856))

(assert (= (and b!7971856 c!1464005) b!7971847))

(assert (= (and b!7971856 (not c!1464005)) b!7971851))

(assert (= (and b!7971851 (not res!3158297)) b!7971857))

(assert (= (and b!7971857 res!3158303) b!7971852))

(assert (= (and b!7971852 res!3158298) b!7971848))

(assert (= (and b!7971848 res!3158300) b!7971846))

(assert (= (and b!7971857 (not res!3158301)) b!7971855))

(assert (= (and b!7971855 res!3158296) b!7971849))

(assert (= (and b!7971849 (not res!3158299)) b!7971845))

(assert (= (and b!7971845 (not res!3158302)) b!7971854))

(assert (= (or b!7971853 b!7971852 b!7971849) bm!739718))

(assert (=> bm!739718 m!8349436))

(assert (=> bm!739718 m!8349438))

(assert (=> b!7971848 m!8349436))

(declare-fun m!8349540 () Bool)

(assert (=> b!7971848 m!8349540))

(assert (=> b!7971848 m!8349540))

(declare-fun m!8349542 () Bool)

(assert (=> b!7971848 m!8349542))

(assert (=> b!7971844 m!8349436))

(declare-fun m!8349544 () Bool)

(assert (=> b!7971844 m!8349544))

(assert (=> b!7971844 m!8349442))

(assert (=> b!7971844 m!8349544))

(declare-fun m!8349546 () Bool)

(assert (=> b!7971844 m!8349546))

(assert (=> b!7971844 m!8349436))

(assert (=> b!7971844 m!8349540))

(assert (=> b!7971844 m!8349546))

(assert (=> b!7971844 m!8349540))

(declare-fun m!8349548 () Bool)

(assert (=> b!7971844 m!8349548))

(assert (=> b!7971850 m!8349442))

(declare-fun m!8349550 () Bool)

(assert (=> b!7971850 m!8349550))

(assert (=> b!7971845 m!8349436))

(assert (=> b!7971845 m!8349540))

(assert (=> b!7971845 m!8349540))

(assert (=> b!7971845 m!8349542))

(assert (=> b!7971854 m!8349436))

(assert (=> b!7971854 m!8349544))

(assert (=> b!7971846 m!8349436))

(assert (=> b!7971846 m!8349544))

(assert (=> d!2379991 m!8349436))

(assert (=> d!2379991 m!8349438))

(assert (=> d!2379991 m!8349442))

(declare-fun m!8349552 () Bool)

(assert (=> d!2379991 m!8349552))

(assert (=> b!7971640 d!2379991))

(declare-fun b!7971858 () Bool)

(declare-fun c!1464009 () Bool)

(assert (=> b!7971858 (= c!1464009 (nullable!9634 (regOne!43586 baseR!116)))))

(declare-fun e!4700283 () Regex!21537)

(declare-fun e!4700279 () Regex!21537)

(assert (=> b!7971858 (= e!4700283 e!4700279)))

(declare-fun b!7971859 () Bool)

(declare-fun e!4700281 () Regex!21537)

(assert (=> b!7971859 (= e!4700281 EmptyLang!21537)))

(declare-fun b!7971860 () Bool)

(declare-fun e!4700282 () Regex!21537)

(assert (=> b!7971860 (= e!4700282 (ite (= (head!16287 (_1!38669 lt!2708144)) (c!1463878 baseR!116)) EmptyExpr!21537 EmptyLang!21537))))

(declare-fun b!7971861 () Bool)

(declare-fun call!739725 () Regex!21537)

(assert (=> b!7971861 (= e!4700279 (Union!21537 (Concat!30536 call!739725 (regTwo!43586 baseR!116)) EmptyLang!21537))))

(declare-fun b!7971862 () Bool)

(declare-fun call!739727 () Regex!21537)

(assert (=> b!7971862 (= e!4700283 (Concat!30536 call!739727 baseR!116))))

(declare-fun bm!739719 () Bool)

(assert (=> bm!739719 (= call!739725 call!739727)))

(declare-fun b!7971863 () Bool)

(assert (=> b!7971863 (= e!4700281 e!4700282)))

(declare-fun c!1464010 () Bool)

(assert (=> b!7971863 (= c!1464010 ((_ is ElementMatch!21537) baseR!116))))

(declare-fun bm!739720 () Bool)

(declare-fun call!739724 () Regex!21537)

(assert (=> bm!739720 (= call!739727 call!739724)))

(declare-fun b!7971864 () Bool)

(declare-fun c!1464008 () Bool)

(assert (=> b!7971864 (= c!1464008 ((_ is Union!21537) baseR!116))))

(declare-fun e!4700280 () Regex!21537)

(assert (=> b!7971864 (= e!4700282 e!4700280)))

(declare-fun call!739726 () Regex!21537)

(declare-fun bm!739721 () Bool)

(assert (=> bm!739721 (= call!739726 (derivativeStep!6561 (ite c!1464008 (regOne!43587 baseR!116) (regOne!43586 baseR!116)) (head!16287 (_1!38669 lt!2708144))))))

(declare-fun b!7971865 () Bool)

(assert (=> b!7971865 (= e!4700280 (Union!21537 call!739726 call!739724))))

(declare-fun b!7971866 () Bool)

(assert (=> b!7971866 (= e!4700280 e!4700283)))

(declare-fun c!1464007 () Bool)

(assert (=> b!7971866 (= c!1464007 ((_ is Star!21537) baseR!116))))

(declare-fun bm!739722 () Bool)

(assert (=> bm!739722 (= call!739724 (derivativeStep!6561 (ite c!1464008 (regTwo!43587 baseR!116) (ite c!1464007 (reg!21866 baseR!116) (ite c!1464009 (regTwo!43586 baseR!116) (regOne!43586 baseR!116)))) (head!16287 (_1!38669 lt!2708144))))))

(declare-fun b!7971867 () Bool)

(assert (=> b!7971867 (= e!4700279 (Union!21537 (Concat!30536 call!739726 (regTwo!43586 baseR!116)) call!739725))))

(declare-fun d!2379993 () Bool)

(declare-fun lt!2708364 () Regex!21537)

(assert (=> d!2379993 (validRegex!11841 lt!2708364)))

(assert (=> d!2379993 (= lt!2708364 e!4700281)))

(declare-fun c!1464006 () Bool)

(assert (=> d!2379993 (= c!1464006 (or ((_ is EmptyExpr!21537) baseR!116) ((_ is EmptyLang!21537) baseR!116)))))

(assert (=> d!2379993 (validRegex!11841 baseR!116)))

(assert (=> d!2379993 (= (derivativeStep!6561 baseR!116 (head!16287 (_1!38669 lt!2708144))) lt!2708364)))

(assert (= (and d!2379993 c!1464006) b!7971859))

(assert (= (and d!2379993 (not c!1464006)) b!7971863))

(assert (= (and b!7971863 c!1464010) b!7971860))

(assert (= (and b!7971863 (not c!1464010)) b!7971864))

(assert (= (and b!7971864 c!1464008) b!7971865))

(assert (= (and b!7971864 (not c!1464008)) b!7971866))

(assert (= (and b!7971866 c!1464007) b!7971862))

(assert (= (and b!7971866 (not c!1464007)) b!7971858))

(assert (= (and b!7971858 c!1464009) b!7971867))

(assert (= (and b!7971858 (not c!1464009)) b!7971861))

(assert (= (or b!7971867 b!7971861) bm!739719))

(assert (= (or b!7971862 bm!739719) bm!739720))

(assert (= (or b!7971865 bm!739720) bm!739722))

(assert (= (or b!7971865 b!7971867) bm!739721))

(assert (=> b!7971858 m!8349522))

(assert (=> bm!739721 m!8349440))

(declare-fun m!8349554 () Bool)

(assert (=> bm!739721 m!8349554))

(assert (=> bm!739722 m!8349440))

(declare-fun m!8349556 () Bool)

(assert (=> bm!739722 m!8349556))

(declare-fun m!8349558 () Bool)

(assert (=> d!2379993 m!8349558))

(assert (=> d!2379993 m!8349232))

(assert (=> b!7971640 d!2379993))

(assert (=> b!7971640 d!2379965))

(declare-fun d!2379995 () Bool)

(assert (=> d!2379995 (= (tail!15814 (_1!38669 lt!2708144)) (t!390509 (_1!38669 lt!2708144)))))

(assert (=> b!7971640 d!2379995))

(declare-fun d!2379997 () Bool)

(assert (=> d!2379997 (= (tail!15814 (getSuffix!3838 input!7927 testedP!447)) (t!390509 (getSuffix!3838 input!7927 testedP!447)))))

(assert (=> bm!739676 d!2379997))

(declare-fun d!2379999 () Bool)

(assert (=> d!2379999 (= input!7927 testedP!447)))

(declare-fun lt!2708367 () Unit!170318)

(declare-fun choose!60112 (List!74766 List!74766 List!74766) Unit!170318)

(assert (=> d!2379999 (= lt!2708367 (choose!60112 input!7927 testedP!447 input!7927))))

(assert (=> d!2379999 (isPrefix!6637 input!7927 input!7927)))

(assert (=> d!2379999 (= (lemmaIsPrefixSameLengthThenSameList!1682 input!7927 testedP!447 input!7927) lt!2708367)))

(declare-fun bs!1969984 () Bool)

(assert (= bs!1969984 d!2379999))

(declare-fun m!8349562 () Bool)

(assert (=> bs!1969984 m!8349562))

(assert (=> bs!1969984 m!8349376))

(assert (=> bm!739675 d!2379999))

(declare-fun b!7971896 () Bool)

(declare-fun e!4700305 () Bool)

(declare-fun e!4700308 () Bool)

(assert (=> b!7971896 (= e!4700305 e!4700308)))

(declare-fun c!1464016 () Bool)

(assert (=> b!7971896 (= c!1464016 ((_ is Union!21537) r!24602))))

(declare-fun b!7971897 () Bool)

(declare-fun e!4700307 () Bool)

(assert (=> b!7971897 (= e!4700308 e!4700307)))

(declare-fun res!3158325 () Bool)

(declare-fun call!739734 () Bool)

(assert (=> b!7971897 (= res!3158325 call!739734)))

(assert (=> b!7971897 (=> res!3158325 e!4700307)))

(declare-fun b!7971898 () Bool)

(declare-fun e!4700304 () Bool)

(declare-fun e!4700303 () Bool)

(assert (=> b!7971898 (= e!4700304 e!4700303)))

(declare-fun res!3158324 () Bool)

(assert (=> b!7971898 (=> (not res!3158324) (not e!4700303))))

(assert (=> b!7971898 (= res!3158324 (and (not ((_ is EmptyLang!21537) r!24602)) (not ((_ is ElementMatch!21537) r!24602))))))

(declare-fun bm!739728 () Bool)

(declare-fun call!739733 () Bool)

(assert (=> bm!739728 (= call!739733 (nullable!9634 (ite c!1464016 (regTwo!43587 r!24602) (regOne!43586 r!24602))))))

(declare-fun b!7971899 () Bool)

(declare-fun e!4700306 () Bool)

(assert (=> b!7971899 (= e!4700308 e!4700306)))

(declare-fun res!3158323 () Bool)

(assert (=> b!7971899 (= res!3158323 call!739733)))

(assert (=> b!7971899 (=> (not res!3158323) (not e!4700306))))

(declare-fun b!7971900 () Bool)

(assert (=> b!7971900 (= e!4700306 call!739734)))

(declare-fun d!2380005 () Bool)

(declare-fun res!3158322 () Bool)

(assert (=> d!2380005 (=> res!3158322 e!4700304)))

(assert (=> d!2380005 (= res!3158322 ((_ is EmptyExpr!21537) r!24602))))

(assert (=> d!2380005 (= (nullableFct!3804 r!24602) e!4700304)))

(declare-fun b!7971901 () Bool)

(assert (=> b!7971901 (= e!4700303 e!4700305)))

(declare-fun res!3158326 () Bool)

(assert (=> b!7971901 (=> res!3158326 e!4700305)))

(assert (=> b!7971901 (= res!3158326 ((_ is Star!21537) r!24602))))

(declare-fun bm!739729 () Bool)

(assert (=> bm!739729 (= call!739734 (nullable!9634 (ite c!1464016 (regOne!43587 r!24602) (regTwo!43586 r!24602))))))

(declare-fun b!7971902 () Bool)

(assert (=> b!7971902 (= e!4700307 call!739733)))

(assert (= (and d!2380005 (not res!3158322)) b!7971898))

(assert (= (and b!7971898 res!3158324) b!7971901))

(assert (= (and b!7971901 (not res!3158326)) b!7971896))

(assert (= (and b!7971896 c!1464016) b!7971897))

(assert (= (and b!7971896 (not c!1464016)) b!7971899))

(assert (= (and b!7971897 (not res!3158325)) b!7971902))

(assert (= (and b!7971899 res!3158323) b!7971900))

(assert (= (or b!7971897 b!7971900) bm!739729))

(assert (= (or b!7971902 b!7971899) bm!739728))

(declare-fun m!8349566 () Bool)

(assert (=> bm!739728 m!8349566))

(declare-fun m!8349568 () Bool)

(assert (=> bm!739729 m!8349568))

(assert (=> d!2379941 d!2380005))

(declare-fun d!2380011 () Bool)

(assert (=> d!2380011 (= (matchR!10756 baseR!116 testedP!447) (matchR!10756 (derivative!723 baseR!116 testedP!447) Nil!74642))))

(assert (=> d!2380011 true))

(declare-fun _$108!454 () Unit!170318)

(assert (=> d!2380011 (= (choose!60109 baseR!116 testedP!447) _$108!454)))

(declare-fun bs!1969986 () Bool)

(assert (= bs!1969986 d!2380011))

(assert (=> bs!1969986 m!8349236))

(assert (=> bs!1969986 m!8349218))

(assert (=> bs!1969986 m!8349218))

(assert (=> bs!1969986 m!8349472))

(assert (=> d!2379949 d!2380011))

(declare-fun b!7971904 () Bool)

(declare-fun res!3158333 () Bool)

(declare-fun e!4700310 () Bool)

(assert (=> b!7971904 (=> res!3158333 e!4700310)))

(assert (=> b!7971904 (= res!3158333 (not (isEmpty!42941 (tail!15814 Nil!74642))))))

(declare-fun bm!739730 () Bool)

(declare-fun call!739735 () Bool)

(assert (=> bm!739730 (= call!739735 (isEmpty!42941 Nil!74642))))

(declare-fun b!7971905 () Bool)

(declare-fun e!4700313 () Bool)

(assert (=> b!7971905 (= e!4700313 (= (head!16287 Nil!74642) (c!1463878 (derivative!723 baseR!116 testedP!447))))))

(declare-fun b!7971906 () Bool)

(declare-fun e!4700315 () Bool)

(declare-fun lt!2708372 () Bool)

(assert (=> b!7971906 (= e!4700315 (not lt!2708372))))

(declare-fun b!7971907 () Bool)

(declare-fun res!3158331 () Bool)

(assert (=> b!7971907 (=> (not res!3158331) (not e!4700313))))

(assert (=> b!7971907 (= res!3158331 (isEmpty!42941 (tail!15814 Nil!74642)))))

(declare-fun b!7971908 () Bool)

(declare-fun e!4700312 () Bool)

(assert (=> b!7971908 (= e!4700312 e!4700310)))

(declare-fun res!3158330 () Bool)

(assert (=> b!7971908 (=> res!3158330 e!4700310)))

(assert (=> b!7971908 (= res!3158330 call!739735)))

(declare-fun b!7971903 () Bool)

(declare-fun e!4700311 () Bool)

(assert (=> b!7971903 (= e!4700311 (matchR!10756 (derivativeStep!6561 (derivative!723 baseR!116 testedP!447) (head!16287 Nil!74642)) (tail!15814 Nil!74642)))))

(declare-fun d!2380015 () Bool)

(declare-fun e!4700314 () Bool)

(assert (=> d!2380015 e!4700314))

(declare-fun c!1464018 () Bool)

(assert (=> d!2380015 (= c!1464018 ((_ is EmptyExpr!21537) (derivative!723 baseR!116 testedP!447)))))

(assert (=> d!2380015 (= lt!2708372 e!4700311)))

(declare-fun c!1464017 () Bool)

(assert (=> d!2380015 (= c!1464017 (isEmpty!42941 Nil!74642))))

(assert (=> d!2380015 (validRegex!11841 (derivative!723 baseR!116 testedP!447))))

(assert (=> d!2380015 (= (matchR!10756 (derivative!723 baseR!116 testedP!447) Nil!74642) lt!2708372)))

(declare-fun b!7971909 () Bool)

(assert (=> b!7971909 (= e!4700311 (nullable!9634 (derivative!723 baseR!116 testedP!447)))))

(declare-fun b!7971910 () Bool)

(declare-fun res!3158328 () Bool)

(declare-fun e!4700309 () Bool)

(assert (=> b!7971910 (=> res!3158328 e!4700309)))

(assert (=> b!7971910 (= res!3158328 (not ((_ is ElementMatch!21537) (derivative!723 baseR!116 testedP!447))))))

(assert (=> b!7971910 (= e!4700315 e!4700309)))

(declare-fun b!7971911 () Bool)

(declare-fun res!3158329 () Bool)

(assert (=> b!7971911 (=> (not res!3158329) (not e!4700313))))

(assert (=> b!7971911 (= res!3158329 (not call!739735))))

(declare-fun b!7971912 () Bool)

(assert (=> b!7971912 (= e!4700314 (= lt!2708372 call!739735))))

(declare-fun b!7971913 () Bool)

(assert (=> b!7971913 (= e!4700310 (not (= (head!16287 Nil!74642) (c!1463878 (derivative!723 baseR!116 testedP!447)))))))

(declare-fun b!7971914 () Bool)

(assert (=> b!7971914 (= e!4700309 e!4700312)))

(declare-fun res!3158327 () Bool)

(assert (=> b!7971914 (=> (not res!3158327) (not e!4700312))))

(assert (=> b!7971914 (= res!3158327 (not lt!2708372))))

(declare-fun b!7971915 () Bool)

(assert (=> b!7971915 (= e!4700314 e!4700315)))

(declare-fun c!1464019 () Bool)

(assert (=> b!7971915 (= c!1464019 ((_ is EmptyLang!21537) (derivative!723 baseR!116 testedP!447)))))

(declare-fun b!7971916 () Bool)

(declare-fun res!3158332 () Bool)

(assert (=> b!7971916 (=> res!3158332 e!4700309)))

(assert (=> b!7971916 (= res!3158332 e!4700313)))

(declare-fun res!3158334 () Bool)

(assert (=> b!7971916 (=> (not res!3158334) (not e!4700313))))

(assert (=> b!7971916 (= res!3158334 lt!2708372)))

(assert (= (and d!2380015 c!1464017) b!7971909))

(assert (= (and d!2380015 (not c!1464017)) b!7971903))

(assert (= (and d!2380015 c!1464018) b!7971912))

(assert (= (and d!2380015 (not c!1464018)) b!7971915))

(assert (= (and b!7971915 c!1464019) b!7971906))

(assert (= (and b!7971915 (not c!1464019)) b!7971910))

(assert (= (and b!7971910 (not res!3158328)) b!7971916))

(assert (= (and b!7971916 res!3158334) b!7971911))

(assert (= (and b!7971911 res!3158329) b!7971907))

(assert (= (and b!7971907 res!3158331) b!7971905))

(assert (= (and b!7971916 (not res!3158332)) b!7971914))

(assert (= (and b!7971914 res!3158327) b!7971908))

(assert (= (and b!7971908 (not res!3158330)) b!7971904))

(assert (= (and b!7971904 (not res!3158333)) b!7971913))

(assert (= (or b!7971912 b!7971911 b!7971908) bm!739730))

(assert (=> bm!739730 m!8349456))

(assert (=> b!7971907 m!8349458))

(assert (=> b!7971907 m!8349458))

(assert (=> b!7971907 m!8349460))

(assert (=> b!7971903 m!8349462))

(assert (=> b!7971903 m!8349218))

(assert (=> b!7971903 m!8349462))

(declare-fun m!8349584 () Bool)

(assert (=> b!7971903 m!8349584))

(assert (=> b!7971903 m!8349458))

(assert (=> b!7971903 m!8349584))

(assert (=> b!7971903 m!8349458))

(declare-fun m!8349586 () Bool)

(assert (=> b!7971903 m!8349586))

(assert (=> b!7971909 m!8349218))

(declare-fun m!8349588 () Bool)

(assert (=> b!7971909 m!8349588))

(assert (=> b!7971904 m!8349458))

(assert (=> b!7971904 m!8349458))

(assert (=> b!7971904 m!8349460))

(assert (=> b!7971913 m!8349462))

(assert (=> b!7971905 m!8349462))

(assert (=> d!2380015 m!8349456))

(assert (=> d!2380015 m!8349218))

(declare-fun m!8349590 () Bool)

(assert (=> d!2380015 m!8349590))

(assert (=> d!2379949 d!2380015))

(assert (=> d!2379949 d!2379951))

(assert (=> d!2379949 d!2379939))

(assert (=> d!2379949 d!2379945))

(assert (=> b!7971678 d!2379967))

(declare-fun d!2380017 () Bool)

(declare-fun lt!2708373 () List!74766)

(assert (=> d!2380017 (= (++!18402 (t!390509 testedP!447) lt!2708373) (tail!15814 input!7927))))

(declare-fun e!4700316 () List!74766)

(assert (=> d!2380017 (= lt!2708373 e!4700316)))

(declare-fun c!1464020 () Bool)

(assert (=> d!2380017 (= c!1464020 ((_ is Cons!74642) (t!390509 testedP!447)))))

(assert (=> d!2380017 (>= (size!43473 (tail!15814 input!7927)) (size!43473 (t!390509 testedP!447)))))

(assert (=> d!2380017 (= (getSuffix!3838 (tail!15814 input!7927) (t!390509 testedP!447)) lt!2708373)))

(declare-fun b!7971917 () Bool)

(assert (=> b!7971917 (= e!4700316 (getSuffix!3838 (tail!15814 (tail!15814 input!7927)) (t!390509 (t!390509 testedP!447))))))

(declare-fun b!7971918 () Bool)

(assert (=> b!7971918 (= e!4700316 (tail!15814 input!7927))))

(assert (= (and d!2380017 c!1464020) b!7971917))

(assert (= (and d!2380017 (not c!1464020)) b!7971918))

(declare-fun m!8349592 () Bool)

(assert (=> d!2380017 m!8349592))

(assert (=> d!2380017 m!8349254))

(assert (=> d!2380017 m!8349536))

(assert (=> d!2380017 m!8349258))

(assert (=> b!7971917 m!8349254))

(assert (=> b!7971917 m!8349530))

(assert (=> b!7971917 m!8349530))

(declare-fun m!8349594 () Bool)

(assert (=> b!7971917 m!8349594))

(assert (=> b!7971348 d!2380017))

(assert (=> b!7971348 d!2379989))

(declare-fun b!7971928 () Bool)

(declare-fun e!4700322 () List!74766)

(assert (=> b!7971928 (= e!4700322 (Cons!74642 (h!81090 testedP!447) (++!18402 (t!390509 testedP!447) lt!2708151)))))

(declare-fun b!7971927 () Bool)

(assert (=> b!7971927 (= e!4700322 lt!2708151)))

(declare-fun e!4700321 () Bool)

(declare-fun lt!2708376 () List!74766)

(declare-fun b!7971930 () Bool)

(assert (=> b!7971930 (= e!4700321 (or (not (= lt!2708151 Nil!74642)) (= lt!2708376 testedP!447)))))

(declare-fun b!7971929 () Bool)

(declare-fun res!3158340 () Bool)

(assert (=> b!7971929 (=> (not res!3158340) (not e!4700321))))

(assert (=> b!7971929 (= res!3158340 (= (size!43473 lt!2708376) (+ (size!43473 testedP!447) (size!43473 lt!2708151))))))

(declare-fun d!2380019 () Bool)

(assert (=> d!2380019 e!4700321))

(declare-fun res!3158339 () Bool)

(assert (=> d!2380019 (=> (not res!3158339) (not e!4700321))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15861 (List!74766) (InoxSet C!43412))

(assert (=> d!2380019 (= res!3158339 (= (content!15861 lt!2708376) ((_ map or) (content!15861 testedP!447) (content!15861 lt!2708151))))))

(assert (=> d!2380019 (= lt!2708376 e!4700322)))

(declare-fun c!1464023 () Bool)

(assert (=> d!2380019 (= c!1464023 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2380019 (= (++!18402 testedP!447 lt!2708151) lt!2708376)))

(assert (= (and d!2380019 c!1464023) b!7971927))

(assert (= (and d!2380019 (not c!1464023)) b!7971928))

(assert (= (and d!2380019 res!3158339) b!7971929))

(assert (= (and b!7971929 res!3158340) b!7971930))

(declare-fun m!8349596 () Bool)

(assert (=> b!7971928 m!8349596))

(declare-fun m!8349598 () Bool)

(assert (=> b!7971929 m!8349598))

(assert (=> b!7971929 m!8349228))

(declare-fun m!8349600 () Bool)

(assert (=> b!7971929 m!8349600))

(declare-fun m!8349602 () Bool)

(assert (=> d!2380019 m!8349602))

(declare-fun m!8349604 () Bool)

(assert (=> d!2380019 m!8349604))

(declare-fun m!8349606 () Bool)

(assert (=> d!2380019 m!8349606))

(assert (=> d!2379905 d!2380019))

(assert (=> d!2379905 d!2379903))

(assert (=> d!2379905 d!2379911))

(assert (=> bm!739680 d!2379941))

(declare-fun d!2380021 () Bool)

(assert (=> d!2380021 (isPrefix!6637 input!7927 input!7927)))

(declare-fun lt!2708379 () Unit!170318)

(declare-fun choose!60113 (List!74766 List!74766) Unit!170318)

(assert (=> d!2380021 (= lt!2708379 (choose!60113 input!7927 input!7927))))

(assert (=> d!2380021 (= (lemmaIsPrefixRefl!4102 input!7927 input!7927) lt!2708379)))

(declare-fun bs!1969987 () Bool)

(assert (= bs!1969987 d!2380021))

(assert (=> bs!1969987 m!8349376))

(declare-fun m!8349608 () Bool)

(assert (=> bs!1969987 m!8349608))

(assert (=> bm!739679 d!2380021))

(assert (=> b!7971660 d!2379975))

(declare-fun d!2380023 () Bool)

(declare-fun lt!2708382 () Regex!21537)

(assert (=> d!2380023 (validRegex!11841 lt!2708382)))

(declare-fun e!4700323 () Regex!21537)

(assert (=> d!2380023 (= lt!2708382 e!4700323)))

(declare-fun c!1464024 () Bool)

(assert (=> d!2380023 (= c!1464024 ((_ is Cons!74642) (t!390509 testedP!447)))))

(assert (=> d!2380023 (validRegex!11841 (derivativeStep!6561 baseR!116 (h!81090 testedP!447)))))

(assert (=> d!2380023 (= (derivative!723 (derivativeStep!6561 baseR!116 (h!81090 testedP!447)) (t!390509 testedP!447)) lt!2708382)))

(declare-fun b!7971931 () Bool)

(assert (=> b!7971931 (= e!4700323 (derivative!723 (derivativeStep!6561 (derivativeStep!6561 baseR!116 (h!81090 testedP!447)) (h!81090 (t!390509 testedP!447))) (t!390509 (t!390509 testedP!447))))))

(declare-fun b!7971932 () Bool)

(assert (=> b!7971932 (= e!4700323 (derivativeStep!6561 baseR!116 (h!81090 testedP!447)))))

(assert (= (and d!2380023 c!1464024) b!7971931))

(assert (= (and d!2380023 (not c!1464024)) b!7971932))

(declare-fun m!8349610 () Bool)

(assert (=> d!2380023 m!8349610))

(assert (=> d!2380023 m!8349430))

(declare-fun m!8349612 () Bool)

(assert (=> d!2380023 m!8349612))

(assert (=> b!7971931 m!8349430))

(declare-fun m!8349614 () Bool)

(assert (=> b!7971931 m!8349614))

(assert (=> b!7971931 m!8349614))

(declare-fun m!8349616 () Bool)

(assert (=> b!7971931 m!8349616))

(assert (=> b!7971610 d!2380023))

(declare-fun b!7971941 () Bool)

(declare-fun c!1464032 () Bool)

(assert (=> b!7971941 (= c!1464032 (nullable!9634 (regOne!43586 baseR!116)))))

(declare-fun e!4700332 () Regex!21537)

(declare-fun e!4700328 () Regex!21537)

(assert (=> b!7971941 (= e!4700332 e!4700328)))

(declare-fun b!7971942 () Bool)

(declare-fun e!4700330 () Regex!21537)

(assert (=> b!7971942 (= e!4700330 EmptyLang!21537)))

(declare-fun b!7971943 () Bool)

(declare-fun e!4700331 () Regex!21537)

(assert (=> b!7971943 (= e!4700331 (ite (= (h!81090 testedP!447) (c!1463878 baseR!116)) EmptyExpr!21537 EmptyLang!21537))))

(declare-fun b!7971944 () Bool)

(declare-fun call!739737 () Regex!21537)

(assert (=> b!7971944 (= e!4700328 (Union!21537 (Concat!30536 call!739737 (regTwo!43586 baseR!116)) EmptyLang!21537))))

(declare-fun b!7971945 () Bool)

(declare-fun call!739739 () Regex!21537)

(assert (=> b!7971945 (= e!4700332 (Concat!30536 call!739739 baseR!116))))

(declare-fun bm!739731 () Bool)

(assert (=> bm!739731 (= call!739737 call!739739)))

(declare-fun b!7971946 () Bool)

(assert (=> b!7971946 (= e!4700330 e!4700331)))

(declare-fun c!1464033 () Bool)

(assert (=> b!7971946 (= c!1464033 ((_ is ElementMatch!21537) baseR!116))))

(declare-fun bm!739732 () Bool)

(declare-fun call!739736 () Regex!21537)

(assert (=> bm!739732 (= call!739739 call!739736)))

(declare-fun b!7971947 () Bool)

(declare-fun c!1464031 () Bool)

(assert (=> b!7971947 (= c!1464031 ((_ is Union!21537) baseR!116))))

(declare-fun e!4700329 () Regex!21537)

(assert (=> b!7971947 (= e!4700331 e!4700329)))

(declare-fun bm!739733 () Bool)

(declare-fun call!739738 () Regex!21537)

(assert (=> bm!739733 (= call!739738 (derivativeStep!6561 (ite c!1464031 (regOne!43587 baseR!116) (regOne!43586 baseR!116)) (h!81090 testedP!447)))))

(declare-fun b!7971948 () Bool)

(assert (=> b!7971948 (= e!4700329 (Union!21537 call!739738 call!739736))))

(declare-fun b!7971949 () Bool)

(assert (=> b!7971949 (= e!4700329 e!4700332)))

(declare-fun c!1464030 () Bool)

(assert (=> b!7971949 (= c!1464030 ((_ is Star!21537) baseR!116))))

(declare-fun bm!739734 () Bool)

(assert (=> bm!739734 (= call!739736 (derivativeStep!6561 (ite c!1464031 (regTwo!43587 baseR!116) (ite c!1464030 (reg!21866 baseR!116) (ite c!1464032 (regTwo!43586 baseR!116) (regOne!43586 baseR!116)))) (h!81090 testedP!447)))))

(declare-fun b!7971950 () Bool)

(assert (=> b!7971950 (= e!4700328 (Union!21537 (Concat!30536 call!739738 (regTwo!43586 baseR!116)) call!739737))))

(declare-fun d!2380025 () Bool)

(declare-fun lt!2708383 () Regex!21537)

(assert (=> d!2380025 (validRegex!11841 lt!2708383)))

(assert (=> d!2380025 (= lt!2708383 e!4700330)))

(declare-fun c!1464029 () Bool)

(assert (=> d!2380025 (= c!1464029 (or ((_ is EmptyExpr!21537) baseR!116) ((_ is EmptyLang!21537) baseR!116)))))

(assert (=> d!2380025 (validRegex!11841 baseR!116)))

(assert (=> d!2380025 (= (derivativeStep!6561 baseR!116 (h!81090 testedP!447)) lt!2708383)))

(assert (= (and d!2380025 c!1464029) b!7971942))

(assert (= (and d!2380025 (not c!1464029)) b!7971946))

(assert (= (and b!7971946 c!1464033) b!7971943))

(assert (= (and b!7971946 (not c!1464033)) b!7971947))

(assert (= (and b!7971947 c!1464031) b!7971948))

(assert (= (and b!7971947 (not c!1464031)) b!7971949))

(assert (= (and b!7971949 c!1464030) b!7971945))

(assert (= (and b!7971949 (not c!1464030)) b!7971941))

(assert (= (and b!7971941 c!1464032) b!7971950))

(assert (= (and b!7971941 (not c!1464032)) b!7971944))

(assert (= (or b!7971950 b!7971944) bm!739731))

(assert (= (or b!7971945 bm!739731) bm!739732))

(assert (= (or b!7971948 bm!739732) bm!739734))

(assert (= (or b!7971948 b!7971950) bm!739733))

(assert (=> b!7971941 m!8349522))

(declare-fun m!8349618 () Bool)

(assert (=> bm!739733 m!8349618))

(declare-fun m!8349620 () Bool)

(assert (=> bm!739734 m!8349620))

(declare-fun m!8349622 () Bool)

(assert (=> d!2380025 m!8349622))

(assert (=> d!2380025 m!8349232))

(assert (=> b!7971610 d!2380025))

(assert (=> b!7971536 d!2379903))

(declare-fun d!2380027 () Bool)

(assert (=> d!2380027 (isPrefix!6637 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)) input!7927)))

(declare-fun lt!2708386 () Unit!170318)

(declare-fun choose!60114 (List!74766 List!74766) Unit!170318)

(assert (=> d!2380027 (= lt!2708386 (choose!60114 testedP!447 input!7927))))

(assert (=> d!2380027 (isPrefix!6637 testedP!447 input!7927)))

(assert (=> d!2380027 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1359 testedP!447 input!7927) lt!2708386)))

(declare-fun bs!1969988 () Bool)

(assert (= bs!1969988 d!2380027))

(assert (=> bs!1969988 m!8349226))

(assert (=> bs!1969988 m!8349400))

(assert (=> bs!1969988 m!8349404))

(declare-fun m!8349624 () Bool)

(assert (=> bs!1969988 m!8349624))

(assert (=> bs!1969988 m!8349226))

(assert (=> bs!1969988 m!8349404))

(assert (=> bs!1969988 m!8349408))

(assert (=> bs!1969988 m!8349216))

(assert (=> b!7971536 d!2380027))

(declare-fun d!2380029 () Bool)

(assert (=> d!2380029 (= (head!16287 (getSuffix!3838 input!7927 testedP!447)) (h!81090 (getSuffix!3838 input!7927 testedP!447)))))

(assert (=> b!7971536 d!2380029))

(declare-fun e!4700340 () List!74766)

(declare-fun b!7971964 () Bool)

(assert (=> b!7971964 (= e!4700340 (Cons!74642 (h!81090 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642))) (++!18402 (t!390509 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642))) lt!2708329)))))

(declare-fun b!7971963 () Bool)

(assert (=> b!7971963 (= e!4700340 lt!2708329)))

(declare-fun b!7971966 () Bool)

(declare-fun e!4700339 () Bool)

(declare-fun lt!2708387 () List!74766)

(assert (=> b!7971966 (= e!4700339 (or (not (= lt!2708329 Nil!74642)) (= lt!2708387 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642)))))))

(declare-fun b!7971965 () Bool)

(declare-fun res!3158342 () Bool)

(assert (=> b!7971965 (=> (not res!3158342) (not e!4700339))))

(assert (=> b!7971965 (= res!3158342 (= (size!43473 lt!2708387) (+ (size!43473 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642))) (size!43473 lt!2708329))))))

(declare-fun d!2380031 () Bool)

(assert (=> d!2380031 e!4700339))

(declare-fun res!3158341 () Bool)

(assert (=> d!2380031 (=> (not res!3158341) (not e!4700339))))

(assert (=> d!2380031 (= res!3158341 (= (content!15861 lt!2708387) ((_ map or) (content!15861 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642))) (content!15861 lt!2708329))))))

(assert (=> d!2380031 (= lt!2708387 e!4700340)))

(declare-fun c!1464040 () Bool)

(assert (=> d!2380031 (= c!1464040 ((_ is Nil!74642) (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642))))))

(assert (=> d!2380031 (= (++!18402 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642)) lt!2708329) lt!2708387)))

(assert (= (and d!2380031 c!1464040) b!7971963))

(assert (= (and d!2380031 (not c!1464040)) b!7971964))

(assert (= (and d!2380031 res!3158341) b!7971965))

(assert (= (and b!7971965 res!3158342) b!7971966))

(declare-fun m!8349626 () Bool)

(assert (=> b!7971964 m!8349626))

(declare-fun m!8349628 () Bool)

(assert (=> b!7971965 m!8349628))

(assert (=> b!7971965 m!8349392))

(declare-fun m!8349630 () Bool)

(assert (=> b!7971965 m!8349630))

(declare-fun m!8349632 () Bool)

(assert (=> b!7971965 m!8349632))

(declare-fun m!8349634 () Bool)

(assert (=> d!2380031 m!8349634))

(assert (=> d!2380031 m!8349392))

(declare-fun m!8349636 () Bool)

(assert (=> d!2380031 m!8349636))

(declare-fun m!8349638 () Bool)

(assert (=> d!2380031 m!8349638))

(assert (=> b!7971536 d!2380031))

(declare-fun d!2380033 () Bool)

(assert (=> d!2380033 (= (++!18402 (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642)) lt!2708329) input!7927)))

(declare-fun lt!2708390 () Unit!170318)

(declare-fun choose!60115 (List!74766 C!43412 List!74766 List!74766) Unit!170318)

(assert (=> d!2380033 (= lt!2708390 (choose!60115 testedP!447 lt!2708317 lt!2708329 input!7927))))

(assert (=> d!2380033 (= (++!18402 testedP!447 (Cons!74642 lt!2708317 lt!2708329)) input!7927)))

(assert (=> d!2380033 (= (lemmaMoveElementToOtherListKeepsConcatEq!3549 testedP!447 lt!2708317 lt!2708329 input!7927) lt!2708390)))

(declare-fun bs!1969989 () Bool)

(assert (= bs!1969989 d!2380033))

(assert (=> bs!1969989 m!8349392))

(assert (=> bs!1969989 m!8349392))

(assert (=> bs!1969989 m!8349394))

(declare-fun m!8349640 () Bool)

(assert (=> bs!1969989 m!8349640))

(declare-fun m!8349642 () Bool)

(assert (=> bs!1969989 m!8349642))

(assert (=> b!7971536 d!2380033))

(declare-fun d!2380035 () Bool)

(declare-fun e!4700341 () Bool)

(assert (=> d!2380035 e!4700341))

(declare-fun res!3158343 () Bool)

(assert (=> d!2380035 (=> res!3158343 e!4700341)))

(declare-fun lt!2708391 () Bool)

(assert (=> d!2380035 (= res!3158343 (not lt!2708391))))

(declare-fun e!4700343 () Bool)

(assert (=> d!2380035 (= lt!2708391 e!4700343)))

(declare-fun res!3158345 () Bool)

(assert (=> d!2380035 (=> res!3158345 e!4700343)))

(assert (=> d!2380035 (= res!3158345 ((_ is Nil!74642) (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642))))))

(assert (=> d!2380035 (= (isPrefix!6637 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)) input!7927) lt!2708391)))

(declare-fun b!7971969 () Bool)

(declare-fun e!4700342 () Bool)

(assert (=> b!7971969 (= e!4700342 (isPrefix!6637 (tail!15814 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642))) (tail!15814 input!7927)))))

(declare-fun b!7971968 () Bool)

(declare-fun res!3158346 () Bool)

(assert (=> b!7971968 (=> (not res!3158346) (not e!4700342))))

(assert (=> b!7971968 (= res!3158346 (= (head!16287 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642))) (head!16287 input!7927)))))

(declare-fun b!7971970 () Bool)

(assert (=> b!7971970 (= e!4700341 (>= (size!43473 input!7927) (size!43473 (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)))))))

(declare-fun b!7971967 () Bool)

(assert (=> b!7971967 (= e!4700343 e!4700342)))

(declare-fun res!3158344 () Bool)

(assert (=> b!7971967 (=> (not res!3158344) (not e!4700342))))

(assert (=> b!7971967 (= res!3158344 (not ((_ is Nil!74642) input!7927)))))

(assert (= (and d!2380035 (not res!3158345)) b!7971967))

(assert (= (and b!7971967 res!3158344) b!7971968))

(assert (= (and b!7971968 res!3158346) b!7971969))

(assert (= (and d!2380035 (not res!3158343)) b!7971970))

(assert (=> b!7971969 m!8349404))

(declare-fun m!8349644 () Bool)

(assert (=> b!7971969 m!8349644))

(assert (=> b!7971969 m!8349254))

(assert (=> b!7971969 m!8349644))

(assert (=> b!7971969 m!8349254))

(declare-fun m!8349646 () Bool)

(assert (=> b!7971969 m!8349646))

(assert (=> b!7971968 m!8349404))

(declare-fun m!8349648 () Bool)

(assert (=> b!7971968 m!8349648))

(assert (=> b!7971968 m!8349426))

(assert (=> b!7971970 m!8349222))

(assert (=> b!7971970 m!8349404))

(declare-fun m!8349650 () Bool)

(assert (=> b!7971970 m!8349650))

(assert (=> b!7971536 d!2380035))

(declare-fun d!2380037 () Bool)

(assert (=> d!2380037 (<= (size!43473 testedP!447) (size!43473 input!7927))))

(declare-fun lt!2708395 () Unit!170318)

(declare-fun choose!60116 (List!74766 List!74766) Unit!170318)

(assert (=> d!2380037 (= lt!2708395 (choose!60116 testedP!447 input!7927))))

(assert (=> d!2380037 (isPrefix!6637 testedP!447 input!7927)))

(assert (=> d!2380037 (= (lemmaIsPrefixThenSmallerEqSize!1151 testedP!447 input!7927) lt!2708395)))

(declare-fun bs!1969990 () Bool)

(assert (= bs!1969990 d!2380037))

(assert (=> bs!1969990 m!8349228))

(assert (=> bs!1969990 m!8349222))

(declare-fun m!8349654 () Bool)

(assert (=> bs!1969990 m!8349654))

(assert (=> bs!1969990 m!8349216))

(assert (=> b!7971536 d!2380037))

(assert (=> b!7971536 d!2379911))

(assert (=> b!7971536 d!2379997))

(declare-fun b!7971982 () Bool)

(declare-fun e!4700350 () List!74766)

(assert (=> b!7971982 (= e!4700350 (Cons!74642 (h!81090 testedP!447) (++!18402 (t!390509 testedP!447) (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642))))))

(declare-fun b!7971981 () Bool)

(assert (=> b!7971981 (= e!4700350 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642))))

(declare-fun b!7971984 () Bool)

(declare-fun lt!2708396 () List!74766)

(declare-fun e!4700349 () Bool)

(assert (=> b!7971984 (= e!4700349 (or (not (= (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642) Nil!74642)) (= lt!2708396 testedP!447)))))

(declare-fun b!7971983 () Bool)

(declare-fun res!3158348 () Bool)

(assert (=> b!7971983 (=> (not res!3158348) (not e!4700349))))

(assert (=> b!7971983 (= res!3158348 (= (size!43473 lt!2708396) (+ (size!43473 testedP!447) (size!43473 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)))))))

(declare-fun d!2380039 () Bool)

(assert (=> d!2380039 e!4700349))

(declare-fun res!3158347 () Bool)

(assert (=> d!2380039 (=> (not res!3158347) (not e!4700349))))

(assert (=> d!2380039 (= res!3158347 (= (content!15861 lt!2708396) ((_ map or) (content!15861 testedP!447) (content!15861 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)))))))

(assert (=> d!2380039 (= lt!2708396 e!4700350)))

(declare-fun c!1464046 () Bool)

(assert (=> d!2380039 (= c!1464046 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2380039 (= (++!18402 testedP!447 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 testedP!447)) Nil!74642)) lt!2708396)))

(assert (= (and d!2380039 c!1464046) b!7971981))

(assert (= (and d!2380039 (not c!1464046)) b!7971982))

(assert (= (and d!2380039 res!3158347) b!7971983))

(assert (= (and b!7971983 res!3158348) b!7971984))

(declare-fun m!8349662 () Bool)

(assert (=> b!7971982 m!8349662))

(declare-fun m!8349664 () Bool)

(assert (=> b!7971983 m!8349664))

(assert (=> b!7971983 m!8349228))

(declare-fun m!8349666 () Bool)

(assert (=> b!7971983 m!8349666))

(declare-fun m!8349668 () Bool)

(assert (=> d!2380039 m!8349668))

(assert (=> d!2380039 m!8349604))

(declare-fun m!8349670 () Bool)

(assert (=> d!2380039 m!8349670))

(assert (=> b!7971536 d!2380039))

(declare-fun b!7971986 () Bool)

(declare-fun e!4700352 () List!74766)

(assert (=> b!7971986 (= e!4700352 (Cons!74642 (h!81090 testedP!447) (++!18402 (t!390509 testedP!447) (Cons!74642 lt!2708317 Nil!74642))))))

(declare-fun b!7971985 () Bool)

(assert (=> b!7971985 (= e!4700352 (Cons!74642 lt!2708317 Nil!74642))))

(declare-fun lt!2708397 () List!74766)

(declare-fun b!7971988 () Bool)

(declare-fun e!4700351 () Bool)

(assert (=> b!7971988 (= e!4700351 (or (not (= (Cons!74642 lt!2708317 Nil!74642) Nil!74642)) (= lt!2708397 testedP!447)))))

(declare-fun b!7971987 () Bool)

(declare-fun res!3158350 () Bool)

(assert (=> b!7971987 (=> (not res!3158350) (not e!4700351))))

(assert (=> b!7971987 (= res!3158350 (= (size!43473 lt!2708397) (+ (size!43473 testedP!447) (size!43473 (Cons!74642 lt!2708317 Nil!74642)))))))

(declare-fun d!2380043 () Bool)

(assert (=> d!2380043 e!4700351))

(declare-fun res!3158349 () Bool)

(assert (=> d!2380043 (=> (not res!3158349) (not e!4700351))))

(assert (=> d!2380043 (= res!3158349 (= (content!15861 lt!2708397) ((_ map or) (content!15861 testedP!447) (content!15861 (Cons!74642 lt!2708317 Nil!74642)))))))

(assert (=> d!2380043 (= lt!2708397 e!4700352)))

(declare-fun c!1464047 () Bool)

(assert (=> d!2380043 (= c!1464047 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2380043 (= (++!18402 testedP!447 (Cons!74642 lt!2708317 Nil!74642)) lt!2708397)))

(assert (= (and d!2380043 c!1464047) b!7971985))

(assert (= (and d!2380043 (not c!1464047)) b!7971986))

(assert (= (and d!2380043 res!3158349) b!7971987))

(assert (= (and b!7971987 res!3158350) b!7971988))

(declare-fun m!8349672 () Bool)

(assert (=> b!7971986 m!8349672))

(declare-fun m!8349674 () Bool)

(assert (=> b!7971987 m!8349674))

(assert (=> b!7971987 m!8349228))

(declare-fun m!8349676 () Bool)

(assert (=> b!7971987 m!8349676))

(declare-fun m!8349678 () Bool)

(assert (=> d!2380043 m!8349678))

(assert (=> d!2380043 m!8349604))

(declare-fun m!8349680 () Bool)

(assert (=> d!2380043 m!8349680))

(assert (=> b!7971536 d!2380043))

(assert (=> b!7971536 d!2379905))

(declare-fun d!2380047 () Bool)

(assert (=> d!2380047 (= (isEmpty!42941 Nil!74642) true)))

(assert (=> bm!739686 d!2380047))

(declare-fun d!2380057 () Bool)

(assert (=> d!2380057 (= (isEmpty!42941 (tail!15814 testedP!447)) ((_ is Nil!74642) (tail!15814 testedP!447)))))

(assert (=> b!7971658 d!2380057))

(assert (=> b!7971658 d!2379985))

(assert (=> b!7971656 d!2379983))

(declare-fun d!2380061 () Bool)

(declare-fun lt!2708398 () Int)

(assert (=> d!2380061 (>= lt!2708398 0)))

(declare-fun e!4700353 () Int)

(assert (=> d!2380061 (= lt!2708398 e!4700353)))

(declare-fun c!1464048 () Bool)

(assert (=> d!2380061 (= c!1464048 ((_ is Nil!74642) (t!390509 testedP!447)))))

(assert (=> d!2380061 (= (size!43473 (t!390509 testedP!447)) lt!2708398)))

(declare-fun b!7971989 () Bool)

(assert (=> b!7971989 (= e!4700353 0)))

(declare-fun b!7971990 () Bool)

(assert (=> b!7971990 (= e!4700353 (+ 1 (size!43473 (t!390509 (t!390509 testedP!447)))))))

(assert (= (and d!2380061 c!1464048) b!7971989))

(assert (= (and d!2380061 (not c!1464048)) b!7971990))

(declare-fun m!8349682 () Bool)

(assert (=> b!7971990 m!8349682))

(assert (=> b!7971351 d!2380061))

(declare-fun d!2380063 () Bool)

(assert (not d!2380063))

(assert (=> b!7971668 d!2380063))

(declare-fun d!2380065 () Bool)

(assert (not d!2380065))

(assert (=> b!7971668 d!2380065))

(assert (=> b!7971668 d!2379967))

(assert (=> b!7971668 d!2379959))

(assert (=> d!2379947 d!2380047))

(declare-fun d!2380067 () Bool)

(declare-fun res!3158357 () Bool)

(declare-fun e!4700361 () Bool)

(assert (=> d!2380067 (=> res!3158357 e!4700361)))

(assert (=> d!2380067 (= res!3158357 ((_ is ElementMatch!21537) lt!2708145))))

(assert (=> d!2380067 (= (validRegex!11841 lt!2708145) e!4700361)))

(declare-fun b!7971995 () Bool)

(declare-fun res!3158355 () Bool)

(declare-fun e!4700357 () Bool)

(assert (=> b!7971995 (=> res!3158355 e!4700357)))

(assert (=> b!7971995 (= res!3158355 (not ((_ is Concat!30536) lt!2708145)))))

(declare-fun e!4700360 () Bool)

(assert (=> b!7971995 (= e!4700360 e!4700357)))

(declare-fun b!7971996 () Bool)

(declare-fun e!4700358 () Bool)

(declare-fun e!4700362 () Bool)

(assert (=> b!7971996 (= e!4700358 e!4700362)))

(declare-fun res!3158356 () Bool)

(assert (=> b!7971996 (= res!3158356 (not (nullable!9634 (reg!21866 lt!2708145))))))

(assert (=> b!7971996 (=> (not res!3158356) (not e!4700362))))

(declare-fun b!7971997 () Bool)

(declare-fun res!3158358 () Bool)

(declare-fun e!4700363 () Bool)

(assert (=> b!7971997 (=> (not res!3158358) (not e!4700363))))

(declare-fun call!739753 () Bool)

(assert (=> b!7971997 (= res!3158358 call!739753)))

(assert (=> b!7971997 (= e!4700360 e!4700363)))

(declare-fun b!7971998 () Bool)

(declare-fun e!4700359 () Bool)

(declare-fun call!739754 () Bool)

(assert (=> b!7971998 (= e!4700359 call!739754)))

(declare-fun b!7971999 () Bool)

(declare-fun call!739752 () Bool)

(assert (=> b!7971999 (= e!4700362 call!739752)))

(declare-fun b!7972000 () Bool)

(assert (=> b!7972000 (= e!4700363 call!739754)))

(declare-fun bm!739747 () Bool)

(declare-fun c!1464049 () Bool)

(declare-fun c!1464050 () Bool)

(assert (=> bm!739747 (= call!739752 (validRegex!11841 (ite c!1464049 (reg!21866 lt!2708145) (ite c!1464050 (regTwo!43587 lt!2708145) (regTwo!43586 lt!2708145)))))))

(declare-fun b!7972001 () Bool)

(assert (=> b!7972001 (= e!4700357 e!4700359)))

(declare-fun res!3158359 () Bool)

(assert (=> b!7972001 (=> (not res!3158359) (not e!4700359))))

(assert (=> b!7972001 (= res!3158359 call!739753)))

(declare-fun bm!739748 () Bool)

(assert (=> bm!739748 (= call!739753 (validRegex!11841 (ite c!1464050 (regOne!43587 lt!2708145) (regOne!43586 lt!2708145))))))

(declare-fun bm!739749 () Bool)

(assert (=> bm!739749 (= call!739754 call!739752)))

(declare-fun b!7972002 () Bool)

(assert (=> b!7972002 (= e!4700361 e!4700358)))

(assert (=> b!7972002 (= c!1464049 ((_ is Star!21537) lt!2708145))))

(declare-fun b!7972003 () Bool)

(assert (=> b!7972003 (= e!4700358 e!4700360)))

(assert (=> b!7972003 (= c!1464050 ((_ is Union!21537) lt!2708145))))

(assert (= (and d!2380067 (not res!3158357)) b!7972002))

(assert (= (and b!7972002 c!1464049) b!7971996))

(assert (= (and b!7972002 (not c!1464049)) b!7972003))

(assert (= (and b!7971996 res!3158356) b!7971999))

(assert (= (and b!7972003 c!1464050) b!7971997))

(assert (= (and b!7972003 (not c!1464050)) b!7971995))

(assert (= (and b!7971997 res!3158358) b!7972000))

(assert (= (and b!7971995 (not res!3158355)) b!7972001))

(assert (= (and b!7972001 res!3158359) b!7971998))

(assert (= (or b!7972000 b!7971998) bm!739749))

(assert (= (or b!7971997 b!7972001) bm!739748))

(assert (= (or b!7971999 bm!739749) bm!739747))

(declare-fun m!8349698 () Bool)

(assert (=> b!7971996 m!8349698))

(declare-fun m!8349700 () Bool)

(assert (=> bm!739747 m!8349700))

(declare-fun m!8349702 () Bool)

(assert (=> bm!739748 m!8349702))

(assert (=> d!2379947 d!2380067))

(declare-fun d!2380073 () Bool)

(assert (=> d!2380073 (= (nullable!9634 (reg!21866 baseR!116)) (nullableFct!3804 (reg!21866 baseR!116)))))

(declare-fun bs!1969991 () Bool)

(assert (= bs!1969991 d!2380073))

(declare-fun m!8349704 () Bool)

(assert (=> bs!1969991 m!8349704))

(assert (=> b!7971701 d!2380073))

(declare-fun bm!739750 () Bool)

(declare-fun call!739762 () Regex!21537)

(declare-fun call!739755 () C!43412)

(assert (=> bm!739750 (= call!739762 (derivativeStep!6561 call!739686 call!739755))))

(declare-fun b!7972006 () Bool)

(declare-fun e!4700368 () Unit!170318)

(declare-fun Unit!170329 () Unit!170318)

(assert (=> b!7972006 (= e!4700368 Unit!170329)))

(declare-fun lt!2708406 () Unit!170318)

(declare-fun call!739759 () Unit!170318)

(assert (=> b!7972006 (= lt!2708406 call!739759)))

(declare-fun call!739760 () Bool)

(assert (=> b!7972006 call!739760))

(declare-fun lt!2708427 () Unit!170318)

(assert (=> b!7972006 (= lt!2708427 lt!2708406)))

(declare-fun lt!2708413 () Unit!170318)

(declare-fun call!739761 () Unit!170318)

(assert (=> b!7972006 (= lt!2708413 call!739761)))

(assert (=> b!7972006 (= input!7927 lt!2708337)))

(declare-fun lt!2708423 () Unit!170318)

(assert (=> b!7972006 (= lt!2708423 lt!2708413)))

(assert (=> b!7972006 false))

(declare-fun b!7972007 () Bool)

(declare-fun e!4700371 () tuple2!70732)

(declare-fun e!4700370 () tuple2!70732)

(assert (=> b!7972007 (= e!4700371 e!4700370)))

(declare-fun lt!2708408 () tuple2!70732)

(declare-fun call!739758 () tuple2!70732)

(assert (=> b!7972007 (= lt!2708408 call!739758)))

(declare-fun c!1464054 () Bool)

(assert (=> b!7972007 (= c!1464054 (isEmpty!42941 (_1!38669 lt!2708408)))))

(declare-fun bm!739751 () Bool)

(assert (=> bm!739751 (= call!739761 (lemmaIsPrefixSameLengthThenSameList!1682 input!7927 lt!2708337 input!7927))))

(declare-fun b!7972008 () Bool)

(declare-fun e!4700365 () tuple2!70732)

(assert (=> b!7972008 (= e!4700365 (tuple2!70733 lt!2708337 Nil!74642))))

(declare-fun bm!739752 () Bool)

(declare-fun call!739756 () List!74766)

(assert (=> bm!739752 (= call!739756 (tail!15814 call!739680))))

(declare-fun b!7972009 () Bool)

(declare-fun e!4700369 () tuple2!70732)

(assert (=> b!7972009 (= e!4700369 (tuple2!70733 Nil!74642 input!7927))))

(declare-fun b!7972010 () Bool)

(declare-fun e!4700372 () tuple2!70732)

(assert (=> b!7972010 (= e!4700369 e!4700372)))

(declare-fun c!1464052 () Bool)

(assert (=> b!7972010 (= c!1464052 (= (+ (size!43473 testedP!447) 1) (size!43473 input!7927)))))

(declare-fun b!7972011 () Bool)

(assert (=> b!7972011 (= e!4700370 lt!2708408)))

(declare-fun b!7972012 () Bool)

(declare-fun e!4700366 () Bool)

(declare-fun lt!2708428 () tuple2!70732)

(assert (=> b!7972012 (= e!4700366 (>= (size!43473 (_1!38669 lt!2708428)) (size!43473 lt!2708337)))))

(declare-fun bm!739754 () Bool)

(declare-fun lt!2708424 () List!74766)

(assert (=> bm!739754 (= call!739758 (findLongestMatchInner!2316 call!739762 lt!2708424 (+ (size!43473 testedP!447) 1 1) call!739756 input!7927 (size!43473 input!7927)))))

(declare-fun b!7972013 () Bool)

(declare-fun e!4700367 () Bool)

(assert (=> b!7972013 (= e!4700367 e!4700366)))

(declare-fun res!3158361 () Bool)

(assert (=> b!7972013 (=> res!3158361 e!4700366)))

(assert (=> b!7972013 (= res!3158361 (isEmpty!42941 (_1!38669 lt!2708428)))))

(declare-fun b!7972014 () Bool)

(declare-fun c!1464055 () Bool)

(declare-fun call!739757 () Bool)

(assert (=> b!7972014 (= c!1464055 call!739757)))

(declare-fun lt!2708418 () Unit!170318)

(declare-fun lt!2708425 () Unit!170318)

(assert (=> b!7972014 (= lt!2708418 lt!2708425)))

(assert (=> b!7972014 (= input!7927 lt!2708337)))

(assert (=> b!7972014 (= lt!2708425 call!739761)))

(declare-fun lt!2708412 () Unit!170318)

(declare-fun lt!2708405 () Unit!170318)

(assert (=> b!7972014 (= lt!2708412 lt!2708405)))

(assert (=> b!7972014 call!739760))

(assert (=> b!7972014 (= lt!2708405 call!739759)))

(assert (=> b!7972014 (= e!4700372 e!4700365)))

(declare-fun b!7972015 () Bool)

(declare-fun Unit!170330 () Unit!170318)

(assert (=> b!7972015 (= e!4700368 Unit!170330)))

(declare-fun b!7972016 () Bool)

(assert (=> b!7972016 (= e!4700371 call!739758)))

(declare-fun b!7972017 () Bool)

(assert (=> b!7972017 (= e!4700365 (tuple2!70733 Nil!74642 input!7927))))

(declare-fun b!7972018 () Bool)

(declare-fun c!1464056 () Bool)

(assert (=> b!7972018 (= c!1464056 call!739757)))

(declare-fun lt!2708410 () Unit!170318)

(declare-fun lt!2708422 () Unit!170318)

(assert (=> b!7972018 (= lt!2708410 lt!2708422)))

(declare-fun lt!2708404 () C!43412)

(declare-fun lt!2708416 () List!74766)

(assert (=> b!7972018 (= (++!18402 (++!18402 lt!2708337 (Cons!74642 lt!2708404 Nil!74642)) lt!2708416) input!7927)))

(assert (=> b!7972018 (= lt!2708422 (lemmaMoveElementToOtherListKeepsConcatEq!3549 lt!2708337 lt!2708404 lt!2708416 input!7927))))

(assert (=> b!7972018 (= lt!2708416 (tail!15814 call!739680))))

(assert (=> b!7972018 (= lt!2708404 (head!16287 call!739680))))

(declare-fun lt!2708402 () Unit!170318)

(declare-fun lt!2708420 () Unit!170318)

(assert (=> b!7972018 (= lt!2708402 lt!2708420)))

(assert (=> b!7972018 (isPrefix!6637 (++!18402 lt!2708337 (Cons!74642 (head!16287 (getSuffix!3838 input!7927 lt!2708337)) Nil!74642)) input!7927)))

(assert (=> b!7972018 (= lt!2708420 (lemmaAddHeadSuffixToPrefixStillPrefix!1359 lt!2708337 input!7927))))

(declare-fun lt!2708417 () Unit!170318)

(declare-fun lt!2708401 () Unit!170318)

(assert (=> b!7972018 (= lt!2708417 lt!2708401)))

(assert (=> b!7972018 (= lt!2708401 (lemmaAddHeadSuffixToPrefixStillPrefix!1359 lt!2708337 input!7927))))

(assert (=> b!7972018 (= lt!2708424 (++!18402 lt!2708337 (Cons!74642 (head!16287 call!739680) Nil!74642)))))

(declare-fun lt!2708421 () Unit!170318)

(assert (=> b!7972018 (= lt!2708421 e!4700368)))

(declare-fun c!1464057 () Bool)

(assert (=> b!7972018 (= c!1464057 (= (size!43473 lt!2708337) (size!43473 input!7927)))))

(declare-fun lt!2708414 () Unit!170318)

(declare-fun lt!2708415 () Unit!170318)

(assert (=> b!7972018 (= lt!2708414 lt!2708415)))

(assert (=> b!7972018 (<= (size!43473 lt!2708337) (size!43473 input!7927))))

(assert (=> b!7972018 (= lt!2708415 (lemmaIsPrefixThenSmallerEqSize!1151 lt!2708337 input!7927))))

(assert (=> b!7972018 (= e!4700372 e!4700371)))

(declare-fun b!7972019 () Bool)

(assert (=> b!7972019 (= e!4700370 (tuple2!70733 lt!2708337 call!739680))))

(declare-fun bm!739755 () Bool)

(assert (=> bm!739755 (= call!739759 (lemmaIsPrefixRefl!4102 input!7927 input!7927))))

(declare-fun bm!739756 () Bool)

(assert (=> bm!739756 (= call!739757 (nullable!9634 call!739686))))

(declare-fun bm!739757 () Bool)

(assert (=> bm!739757 (= call!739755 (head!16287 call!739680))))

(declare-fun d!2380075 () Bool)

(assert (=> d!2380075 e!4700367))

(declare-fun res!3158360 () Bool)

(assert (=> d!2380075 (=> (not res!3158360) (not e!4700367))))

(assert (=> d!2380075 (= res!3158360 (= (++!18402 (_1!38669 lt!2708428) (_2!38669 lt!2708428)) input!7927))))

(assert (=> d!2380075 (= lt!2708428 e!4700369)))

(declare-fun c!1464053 () Bool)

(assert (=> d!2380075 (= c!1464053 (lostCause!1993 call!739686))))

(declare-fun lt!2708407 () Unit!170318)

(declare-fun Unit!170331 () Unit!170318)

(assert (=> d!2380075 (= lt!2708407 Unit!170331)))

(assert (=> d!2380075 (= (getSuffix!3838 input!7927 lt!2708337) call!739680)))

(declare-fun lt!2708411 () Unit!170318)

(declare-fun lt!2708426 () Unit!170318)

(assert (=> d!2380075 (= lt!2708411 lt!2708426)))

(declare-fun lt!2708403 () List!74766)

(assert (=> d!2380075 (= call!739680 lt!2708403)))

(assert (=> d!2380075 (= lt!2708426 (lemmaSamePrefixThenSameSuffix!3009 lt!2708337 call!739680 lt!2708337 lt!2708403 input!7927))))

(assert (=> d!2380075 (= lt!2708403 (getSuffix!3838 input!7927 lt!2708337))))

(declare-fun lt!2708409 () Unit!170318)

(declare-fun lt!2708419 () Unit!170318)

(assert (=> d!2380075 (= lt!2708409 lt!2708419)))

(assert (=> d!2380075 (isPrefix!6637 lt!2708337 (++!18402 lt!2708337 call!739680))))

(assert (=> d!2380075 (= lt!2708419 (lemmaConcatTwoListThenFirstIsPrefix!3871 lt!2708337 call!739680))))

(assert (=> d!2380075 (validRegex!11841 call!739686)))

(assert (=> d!2380075 (= (findLongestMatchInner!2316 call!739686 lt!2708337 (+ (size!43473 testedP!447) 1) call!739680 input!7927 (size!43473 input!7927)) lt!2708428)))

(declare-fun bm!739753 () Bool)

(assert (=> bm!739753 (= call!739760 (isPrefix!6637 input!7927 input!7927))))

(assert (= (and d!2380075 c!1464053) b!7972009))

(assert (= (and d!2380075 (not c!1464053)) b!7972010))

(assert (= (and b!7972010 c!1464052) b!7972014))

(assert (= (and b!7972010 (not c!1464052)) b!7972018))

(assert (= (and b!7972014 c!1464055) b!7972008))

(assert (= (and b!7972014 (not c!1464055)) b!7972017))

(assert (= (and b!7972018 c!1464057) b!7972006))

(assert (= (and b!7972018 (not c!1464057)) b!7972015))

(assert (= (and b!7972018 c!1464056) b!7972007))

(assert (= (and b!7972018 (not c!1464056)) b!7972016))

(assert (= (and b!7972007 c!1464054) b!7972019))

(assert (= (and b!7972007 (not c!1464054)) b!7972011))

(assert (= (or b!7972007 b!7972016) bm!739757))

(assert (= (or b!7972007 b!7972016) bm!739752))

(assert (= (or b!7972007 b!7972016) bm!739750))

(assert (= (or b!7972007 b!7972016) bm!739754))

(assert (= (or b!7972014 b!7972018) bm!739756))

(assert (= (or b!7972014 b!7972006) bm!739751))

(assert (= (or b!7972014 b!7972006) bm!739755))

(assert (= (or b!7972014 b!7972006) bm!739753))

(assert (= (and d!2380075 res!3158360) b!7972013))

(assert (= (and b!7972013 (not res!3158361)) b!7972012))

(assert (=> bm!739755 m!8349372))

(declare-fun m!8349710 () Bool)

(assert (=> b!7972012 m!8349710))

(declare-fun m!8349712 () Bool)

(assert (=> b!7972012 m!8349712))

(assert (=> bm!739753 m!8349376))

(declare-fun m!8349714 () Bool)

(assert (=> d!2380075 m!8349714))

(declare-fun m!8349716 () Bool)

(assert (=> d!2380075 m!8349716))

(declare-fun m!8349718 () Bool)

(assert (=> d!2380075 m!8349718))

(declare-fun m!8349720 () Bool)

(assert (=> d!2380075 m!8349720))

(assert (=> d!2380075 m!8349716))

(declare-fun m!8349722 () Bool)

(assert (=> d!2380075 m!8349722))

(declare-fun m!8349724 () Bool)

(assert (=> d!2380075 m!8349724))

(declare-fun m!8349726 () Bool)

(assert (=> d!2380075 m!8349726))

(declare-fun m!8349730 () Bool)

(assert (=> d!2380075 m!8349730))

(declare-fun m!8349732 () Bool)

(assert (=> b!7972018 m!8349732))

(declare-fun m!8349734 () Bool)

(assert (=> b!7972018 m!8349734))

(assert (=> b!7972018 m!8349712))

(declare-fun m!8349736 () Bool)

(assert (=> b!7972018 m!8349736))

(assert (=> b!7972018 m!8349730))

(declare-fun m!8349738 () Bool)

(assert (=> b!7972018 m!8349738))

(declare-fun m!8349740 () Bool)

(assert (=> b!7972018 m!8349740))

(declare-fun m!8349742 () Bool)

(assert (=> b!7972018 m!8349742))

(declare-fun m!8349744 () Bool)

(assert (=> b!7972018 m!8349744))

(declare-fun m!8349746 () Bool)

(assert (=> b!7972018 m!8349746))

(assert (=> b!7972018 m!8349732))

(assert (=> b!7972018 m!8349730))

(declare-fun m!8349748 () Bool)

(assert (=> b!7972018 m!8349748))

(declare-fun m!8349750 () Bool)

(assert (=> b!7972018 m!8349750))

(assert (=> b!7972018 m!8349222))

(assert (=> b!7972018 m!8349750))

(declare-fun m!8349754 () Bool)

(assert (=> b!7972018 m!8349754))

(assert (=> bm!739752 m!8349746))

(declare-fun m!8349756 () Bool)

(assert (=> bm!739750 m!8349756))

(declare-fun m!8349758 () Bool)

(assert (=> b!7972013 m!8349758))

(assert (=> bm!739754 m!8349222))

(declare-fun m!8349760 () Bool)

(assert (=> bm!739754 m!8349760))

(declare-fun m!8349762 () Bool)

(assert (=> bm!739756 m!8349762))

(declare-fun m!8349764 () Bool)

(assert (=> b!7972007 m!8349764))

(declare-fun m!8349766 () Bool)

(assert (=> bm!739751 m!8349766))

(assert (=> bm!739757 m!8349740))

(assert (=> bm!739678 d!2380075))

(assert (=> b!7971655 d!2380057))

(assert (=> b!7971655 d!2379985))

(assert (=> d!2379943 d!2379935))

(assert (=> d!2379943 d!2379951))

(declare-fun d!2380087 () Bool)

(declare-fun e!4700374 () Bool)

(assert (=> d!2380087 e!4700374))

(declare-fun res!3158362 () Bool)

(assert (=> d!2380087 (=> res!3158362 e!4700374)))

(declare-fun lt!2708433 () Bool)

(assert (=> d!2380087 (= res!3158362 (not lt!2708433))))

(declare-fun e!4700376 () Bool)

(assert (=> d!2380087 (= lt!2708433 e!4700376)))

(declare-fun res!3158364 () Bool)

(assert (=> d!2380087 (=> res!3158364 e!4700376)))

(assert (=> d!2380087 (= res!3158364 ((_ is Nil!74642) input!7927))))

(assert (=> d!2380087 (= (isPrefix!6637 input!7927 input!7927) lt!2708433)))

(declare-fun b!7972024 () Bool)

(declare-fun e!4700375 () Bool)

(assert (=> b!7972024 (= e!4700375 (isPrefix!6637 (tail!15814 input!7927) (tail!15814 input!7927)))))

(declare-fun b!7972023 () Bool)

(declare-fun res!3158365 () Bool)

(assert (=> b!7972023 (=> (not res!3158365) (not e!4700375))))

(assert (=> b!7972023 (= res!3158365 (= (head!16287 input!7927) (head!16287 input!7927)))))

(declare-fun b!7972025 () Bool)

(assert (=> b!7972025 (= e!4700374 (>= (size!43473 input!7927) (size!43473 input!7927)))))

(declare-fun b!7972022 () Bool)

(assert (=> b!7972022 (= e!4700376 e!4700375)))

(declare-fun res!3158363 () Bool)

(assert (=> b!7972022 (=> (not res!3158363) (not e!4700375))))

(assert (=> b!7972022 (= res!3158363 (not ((_ is Nil!74642) input!7927)))))

(assert (= (and d!2380087 (not res!3158364)) b!7972022))

(assert (= (and b!7972022 res!3158363) b!7972023))

(assert (= (and b!7972023 res!3158365) b!7972024))

(assert (= (and d!2380087 (not res!3158362)) b!7972025))

(assert (=> b!7972024 m!8349254))

(assert (=> b!7972024 m!8349254))

(assert (=> b!7972024 m!8349254))

(assert (=> b!7972024 m!8349254))

(declare-fun m!8349770 () Bool)

(assert (=> b!7972024 m!8349770))

(assert (=> b!7972023 m!8349426))

(assert (=> b!7972023 m!8349426))

(assert (=> b!7972025 m!8349222))

(assert (=> b!7972025 m!8349222))

(assert (=> bm!739677 d!2380087))

(declare-fun d!2380093 () Bool)

(assert (=> d!2380093 (= (isEmpty!42941 (tail!15814 (_1!38669 lt!2708144))) ((_ is Nil!74642) (tail!15814 (_1!38669 lt!2708144))))))

(assert (=> b!7971644 d!2380093))

(assert (=> b!7971644 d!2379995))

(assert (=> b!7971642 d!2379965))

(assert (=> b!7971603 d!2379983))

(declare-fun d!2380095 () Bool)

(assert (=> d!2380095 (= (head!16287 input!7927) (h!81090 input!7927))))

(assert (=> b!7971603 d!2380095))

(assert (=> b!7971641 d!2380093))

(assert (=> b!7971641 d!2379995))

(declare-fun d!2380099 () Bool)

(assert (=> d!2380099 (= (getSuffix!3838 input!7927 testedP!447) lt!2708316)))

(declare-fun lt!2708438 () Unit!170318)

(declare-fun choose!60119 (List!74766 List!74766 List!74766 List!74766 List!74766) Unit!170318)

(assert (=> d!2380099 (= lt!2708438 (choose!60119 testedP!447 (getSuffix!3838 input!7927 testedP!447) testedP!447 lt!2708316 input!7927))))

(assert (=> d!2380099 (isPrefix!6637 testedP!447 input!7927)))

(assert (=> d!2380099 (= (lemmaSamePrefixThenSameSuffix!3009 testedP!447 (getSuffix!3838 input!7927 testedP!447) testedP!447 lt!2708316 input!7927) lt!2708438)))

(declare-fun bs!1969994 () Bool)

(assert (= bs!1969994 d!2380099))

(assert (=> bs!1969994 m!8349226))

(declare-fun m!8349780 () Bool)

(assert (=> bs!1969994 m!8349780))

(assert (=> bs!1969994 m!8349216))

(assert (=> d!2379913 d!2380099))

(declare-fun d!2380107 () Bool)

(declare-fun e!4700383 () Bool)

(assert (=> d!2380107 e!4700383))

(declare-fun res!3158366 () Bool)

(assert (=> d!2380107 (=> res!3158366 e!4700383)))

(declare-fun lt!2708439 () Bool)

(assert (=> d!2380107 (= res!3158366 (not lt!2708439))))

(declare-fun e!4700385 () Bool)

(assert (=> d!2380107 (= lt!2708439 e!4700385)))

(declare-fun res!3158368 () Bool)

(assert (=> d!2380107 (=> res!3158368 e!4700385)))

(assert (=> d!2380107 (= res!3158368 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2380107 (= (isPrefix!6637 testedP!447 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447))) lt!2708439)))

(declare-fun b!7972040 () Bool)

(declare-fun e!4700384 () Bool)

(assert (=> b!7972040 (= e!4700384 (isPrefix!6637 (tail!15814 testedP!447) (tail!15814 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))))

(declare-fun b!7972039 () Bool)

(declare-fun res!3158369 () Bool)

(assert (=> b!7972039 (=> (not res!3158369) (not e!4700384))))

(assert (=> b!7972039 (= res!3158369 (= (head!16287 testedP!447) (head!16287 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))))

(declare-fun b!7972041 () Bool)

(assert (=> b!7972041 (= e!4700383 (>= (size!43473 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447))) (size!43473 testedP!447)))))

(declare-fun b!7972038 () Bool)

(assert (=> b!7972038 (= e!4700385 e!4700384)))

(declare-fun res!3158367 () Bool)

(assert (=> b!7972038 (=> (not res!3158367) (not e!4700384))))

(assert (=> b!7972038 (= res!3158367 (not ((_ is Nil!74642) (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))))

(assert (= (and d!2380107 (not res!3158368)) b!7972038))

(assert (= (and b!7972038 res!3158367) b!7972039))

(assert (= (and b!7972039 res!3158369) b!7972040))

(assert (= (and d!2380107 (not res!3158366)) b!7972041))

(assert (=> b!7972040 m!8349420))

(assert (=> b!7972040 m!8349380))

(declare-fun m!8349788 () Bool)

(assert (=> b!7972040 m!8349788))

(assert (=> b!7972040 m!8349420))

(assert (=> b!7972040 m!8349788))

(declare-fun m!8349790 () Bool)

(assert (=> b!7972040 m!8349790))

(assert (=> b!7972039 m!8349424))

(assert (=> b!7972039 m!8349380))

(declare-fun m!8349792 () Bool)

(assert (=> b!7972039 m!8349792))

(assert (=> b!7972041 m!8349380))

(declare-fun m!8349794 () Bool)

(assert (=> b!7972041 m!8349794))

(assert (=> b!7972041 m!8349228))

(assert (=> d!2379913 d!2380107))

(assert (=> d!2379913 d!2379905))

(declare-fun d!2380111 () Bool)

(declare-fun res!3158377 () Bool)

(declare-fun e!4700397 () Bool)

(assert (=> d!2380111 (=> res!3158377 e!4700397)))

(assert (=> d!2380111 (= res!3158377 ((_ is ElementMatch!21537) r!24602))))

(assert (=> d!2380111 (= (validRegex!11841 r!24602) e!4700397)))

(declare-fun b!7972051 () Bool)

(declare-fun res!3158375 () Bool)

(declare-fun e!4700393 () Bool)

(assert (=> b!7972051 (=> res!3158375 e!4700393)))

(assert (=> b!7972051 (= res!3158375 (not ((_ is Concat!30536) r!24602)))))

(declare-fun e!4700396 () Bool)

(assert (=> b!7972051 (= e!4700396 e!4700393)))

(declare-fun b!7972052 () Bool)

(declare-fun e!4700394 () Bool)

(declare-fun e!4700398 () Bool)

(assert (=> b!7972052 (= e!4700394 e!4700398)))

(declare-fun res!3158376 () Bool)

(assert (=> b!7972052 (= res!3158376 (not (nullable!9634 (reg!21866 r!24602))))))

(assert (=> b!7972052 (=> (not res!3158376) (not e!4700398))))

(declare-fun b!7972053 () Bool)

(declare-fun res!3158378 () Bool)

(declare-fun e!4700399 () Bool)

(assert (=> b!7972053 (=> (not res!3158378) (not e!4700399))))

(declare-fun call!739771 () Bool)

(assert (=> b!7972053 (= res!3158378 call!739771)))

(assert (=> b!7972053 (= e!4700396 e!4700399)))

(declare-fun b!7972054 () Bool)

(declare-fun e!4700395 () Bool)

(declare-fun call!739772 () Bool)

(assert (=> b!7972054 (= e!4700395 call!739772)))

(declare-fun b!7972055 () Bool)

(declare-fun call!739770 () Bool)

(assert (=> b!7972055 (= e!4700398 call!739770)))

(declare-fun b!7972056 () Bool)

(assert (=> b!7972056 (= e!4700399 call!739772)))

(declare-fun c!1464068 () Bool)

(declare-fun c!1464067 () Bool)

(declare-fun bm!739765 () Bool)

(assert (=> bm!739765 (= call!739770 (validRegex!11841 (ite c!1464067 (reg!21866 r!24602) (ite c!1464068 (regTwo!43587 r!24602) (regTwo!43586 r!24602)))))))

(declare-fun b!7972057 () Bool)

(assert (=> b!7972057 (= e!4700393 e!4700395)))

(declare-fun res!3158379 () Bool)

(assert (=> b!7972057 (=> (not res!3158379) (not e!4700395))))

(assert (=> b!7972057 (= res!3158379 call!739771)))

(declare-fun bm!739766 () Bool)

(assert (=> bm!739766 (= call!739771 (validRegex!11841 (ite c!1464068 (regOne!43587 r!24602) (regOne!43586 r!24602))))))

(declare-fun bm!739767 () Bool)

(assert (=> bm!739767 (= call!739772 call!739770)))

(declare-fun b!7972058 () Bool)

(assert (=> b!7972058 (= e!4700397 e!4700394)))

(assert (=> b!7972058 (= c!1464067 ((_ is Star!21537) r!24602))))

(declare-fun b!7972059 () Bool)

(assert (=> b!7972059 (= e!4700394 e!4700396)))

(assert (=> b!7972059 (= c!1464068 ((_ is Union!21537) r!24602))))

(assert (= (and d!2380111 (not res!3158377)) b!7972058))

(assert (= (and b!7972058 c!1464067) b!7972052))

(assert (= (and b!7972058 (not c!1464067)) b!7972059))

(assert (= (and b!7972052 res!3158376) b!7972055))

(assert (= (and b!7972059 c!1464068) b!7972053))

(assert (= (and b!7972059 (not c!1464068)) b!7972051))

(assert (= (and b!7972053 res!3158378) b!7972056))

(assert (= (and b!7972051 (not res!3158375)) b!7972057))

(assert (= (and b!7972057 res!3158379) b!7972054))

(assert (= (or b!7972056 b!7972054) bm!739767))

(assert (= (or b!7972053 b!7972057) bm!739766))

(assert (= (or b!7972055 bm!739767) bm!739765))

(declare-fun m!8349796 () Bool)

(assert (=> b!7972052 m!8349796))

(declare-fun m!8349798 () Bool)

(assert (=> bm!739765 m!8349798))

(declare-fun m!8349800 () Bool)

(assert (=> bm!739766 m!8349800))

(assert (=> d!2379913 d!2380111))

(declare-fun b!7972061 () Bool)

(declare-fun e!4700401 () List!74766)

(assert (=> b!7972061 (= e!4700401 (Cons!74642 (h!81090 testedP!447) (++!18402 (t!390509 testedP!447) (getSuffix!3838 input!7927 testedP!447))))))

(declare-fun b!7972060 () Bool)

(assert (=> b!7972060 (= e!4700401 (getSuffix!3838 input!7927 testedP!447))))

(declare-fun e!4700400 () Bool)

(declare-fun lt!2708440 () List!74766)

(declare-fun b!7972063 () Bool)

(assert (=> b!7972063 (= e!4700400 (or (not (= (getSuffix!3838 input!7927 testedP!447) Nil!74642)) (= lt!2708440 testedP!447)))))

(declare-fun b!7972062 () Bool)

(declare-fun res!3158381 () Bool)

(assert (=> b!7972062 (=> (not res!3158381) (not e!4700400))))

(assert (=> b!7972062 (= res!3158381 (= (size!43473 lt!2708440) (+ (size!43473 testedP!447) (size!43473 (getSuffix!3838 input!7927 testedP!447)))))))

(declare-fun d!2380113 () Bool)

(assert (=> d!2380113 e!4700400))

(declare-fun res!3158380 () Bool)

(assert (=> d!2380113 (=> (not res!3158380) (not e!4700400))))

(assert (=> d!2380113 (= res!3158380 (= (content!15861 lt!2708440) ((_ map or) (content!15861 testedP!447) (content!15861 (getSuffix!3838 input!7927 testedP!447)))))))

(assert (=> d!2380113 (= lt!2708440 e!4700401)))

(declare-fun c!1464069 () Bool)

(assert (=> d!2380113 (= c!1464069 ((_ is Nil!74642) testedP!447))))

(assert (=> d!2380113 (= (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)) lt!2708440)))

(assert (= (and d!2380113 c!1464069) b!7972060))

(assert (= (and d!2380113 (not c!1464069)) b!7972061))

(assert (= (and d!2380113 res!3158380) b!7972062))

(assert (= (and b!7972062 res!3158381) b!7972063))

(assert (=> b!7972061 m!8349226))

(declare-fun m!8349806 () Bool)

(assert (=> b!7972061 m!8349806))

(declare-fun m!8349810 () Bool)

(assert (=> b!7972062 m!8349810))

(assert (=> b!7972062 m!8349228))

(assert (=> b!7972062 m!8349226))

(declare-fun m!8349812 () Bool)

(assert (=> b!7972062 m!8349812))

(declare-fun m!8349814 () Bool)

(assert (=> d!2380113 m!8349814))

(assert (=> d!2380113 m!8349604))

(assert (=> d!2380113 m!8349226))

(declare-fun m!8349816 () Bool)

(assert (=> d!2380113 m!8349816))

(assert (=> d!2379913 d!2380113))

(declare-fun d!2380117 () Bool)

(declare-fun lostCauseFct!578 (Regex!21537) Bool)

(assert (=> d!2380117 (= (lostCause!1993 r!24602) (lostCauseFct!578 r!24602))))

(declare-fun bs!1969995 () Bool)

(assert (= bs!1969995 d!2380117))

(declare-fun m!8349818 () Bool)

(assert (=> bs!1969995 m!8349818))

(assert (=> d!2379913 d!2380117))

(declare-fun b!7972079 () Bool)

(declare-fun e!4700411 () List!74766)

(assert (=> b!7972079 (= e!4700411 (Cons!74642 (h!81090 (_1!38669 lt!2708341)) (++!18402 (t!390509 (_1!38669 lt!2708341)) (_2!38669 lt!2708341))))))

(declare-fun b!7972078 () Bool)

(assert (=> b!7972078 (= e!4700411 (_2!38669 lt!2708341))))

(declare-fun b!7972081 () Bool)

(declare-fun e!4700410 () Bool)

(declare-fun lt!2708469 () List!74766)

(assert (=> b!7972081 (= e!4700410 (or (not (= (_2!38669 lt!2708341) Nil!74642)) (= lt!2708469 (_1!38669 lt!2708341))))))

(declare-fun b!7972080 () Bool)

(declare-fun res!3158385 () Bool)

(assert (=> b!7972080 (=> (not res!3158385) (not e!4700410))))

(assert (=> b!7972080 (= res!3158385 (= (size!43473 lt!2708469) (+ (size!43473 (_1!38669 lt!2708341)) (size!43473 (_2!38669 lt!2708341)))))))

(declare-fun d!2380121 () Bool)

(assert (=> d!2380121 e!4700410))

(declare-fun res!3158384 () Bool)

(assert (=> d!2380121 (=> (not res!3158384) (not e!4700410))))

(assert (=> d!2380121 (= res!3158384 (= (content!15861 lt!2708469) ((_ map or) (content!15861 (_1!38669 lt!2708341)) (content!15861 (_2!38669 lt!2708341)))))))

(assert (=> d!2380121 (= lt!2708469 e!4700411)))

(declare-fun c!1464076 () Bool)

(assert (=> d!2380121 (= c!1464076 ((_ is Nil!74642) (_1!38669 lt!2708341)))))

(assert (=> d!2380121 (= (++!18402 (_1!38669 lt!2708341) (_2!38669 lt!2708341)) lt!2708469)))

(assert (= (and d!2380121 c!1464076) b!7972078))

(assert (= (and d!2380121 (not c!1464076)) b!7972079))

(assert (= (and d!2380121 res!3158384) b!7972080))

(assert (= (and b!7972080 res!3158385) b!7972081))

(declare-fun m!8349820 () Bool)

(assert (=> b!7972079 m!8349820))

(declare-fun m!8349822 () Bool)

(assert (=> b!7972080 m!8349822))

(assert (=> b!7972080 m!8349374))

(declare-fun m!8349824 () Bool)

(assert (=> b!7972080 m!8349824))

(declare-fun m!8349826 () Bool)

(assert (=> d!2380121 m!8349826))

(declare-fun m!8349828 () Bool)

(assert (=> d!2380121 m!8349828))

(declare-fun m!8349830 () Bool)

(assert (=> d!2380121 m!8349830))

(assert (=> d!2379913 d!2380121))

(declare-fun d!2380123 () Bool)

(assert (=> d!2380123 (isPrefix!6637 testedP!447 (++!18402 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))

(declare-fun lt!2708472 () Unit!170318)

(declare-fun choose!60120 (List!74766 List!74766) Unit!170318)

(assert (=> d!2380123 (= lt!2708472 (choose!60120 testedP!447 (getSuffix!3838 input!7927 testedP!447)))))

(assert (=> d!2380123 (= (lemmaConcatTwoListThenFirstIsPrefix!3871 testedP!447 (getSuffix!3838 input!7927 testedP!447)) lt!2708472)))

(declare-fun bs!1969996 () Bool)

(assert (= bs!1969996 d!2380123))

(assert (=> bs!1969996 m!8349226))

(assert (=> bs!1969996 m!8349380))

(assert (=> bs!1969996 m!8349380))

(assert (=> bs!1969996 m!8349386))

(assert (=> bs!1969996 m!8349226))

(declare-fun m!8349864 () Bool)

(assert (=> bs!1969996 m!8349864))

(assert (=> d!2379913 d!2380123))

(declare-fun d!2380125 () Bool)

(assert (=> d!2380125 (= (isEmpty!42941 (_1!38669 lt!2708321)) ((_ is Nil!74642) (_1!38669 lt!2708321)))))

(assert (=> b!7971525 d!2380125))

(declare-fun b!7972082 () Bool)

(declare-fun c!1464080 () Bool)

(assert (=> b!7972082 (= c!1464080 (nullable!9634 (regOne!43586 r!24602)))))

(declare-fun e!4700416 () Regex!21537)

(declare-fun e!4700412 () Regex!21537)

(assert (=> b!7972082 (= e!4700416 e!4700412)))

(declare-fun b!7972083 () Bool)

(declare-fun e!4700414 () Regex!21537)

(assert (=> b!7972083 (= e!4700414 EmptyLang!21537)))

(declare-fun b!7972084 () Bool)

(declare-fun e!4700415 () Regex!21537)

(assert (=> b!7972084 (= e!4700415 (ite (= call!739679 (c!1463878 r!24602)) EmptyExpr!21537 EmptyLang!21537))))

(declare-fun b!7972085 () Bool)

(declare-fun call!739782 () Regex!21537)

(assert (=> b!7972085 (= e!4700412 (Union!21537 (Concat!30536 call!739782 (regTwo!43586 r!24602)) EmptyLang!21537))))

(declare-fun b!7972086 () Bool)

(declare-fun call!739784 () Regex!21537)

(assert (=> b!7972086 (= e!4700416 (Concat!30536 call!739784 r!24602))))

(declare-fun bm!739776 () Bool)

(assert (=> bm!739776 (= call!739782 call!739784)))

(declare-fun b!7972087 () Bool)

(assert (=> b!7972087 (= e!4700414 e!4700415)))

(declare-fun c!1464081 () Bool)

(assert (=> b!7972087 (= c!1464081 ((_ is ElementMatch!21537) r!24602))))

(declare-fun bm!739777 () Bool)

(declare-fun call!739781 () Regex!21537)

(assert (=> bm!739777 (= call!739784 call!739781)))

(declare-fun b!7972088 () Bool)

(declare-fun c!1464079 () Bool)

(assert (=> b!7972088 (= c!1464079 ((_ is Union!21537) r!24602))))

(declare-fun e!4700413 () Regex!21537)

(assert (=> b!7972088 (= e!4700415 e!4700413)))

(declare-fun bm!739778 () Bool)

(declare-fun call!739783 () Regex!21537)

(assert (=> bm!739778 (= call!739783 (derivativeStep!6561 (ite c!1464079 (regOne!43587 r!24602) (regOne!43586 r!24602)) call!739679))))

(declare-fun b!7972089 () Bool)

(assert (=> b!7972089 (= e!4700413 (Union!21537 call!739783 call!739781))))

(declare-fun b!7972090 () Bool)

(assert (=> b!7972090 (= e!4700413 e!4700416)))

(declare-fun c!1464078 () Bool)

(assert (=> b!7972090 (= c!1464078 ((_ is Star!21537) r!24602))))

(declare-fun bm!739779 () Bool)

(assert (=> bm!739779 (= call!739781 (derivativeStep!6561 (ite c!1464079 (regTwo!43587 r!24602) (ite c!1464078 (reg!21866 r!24602) (ite c!1464080 (regTwo!43586 r!24602) (regOne!43586 r!24602)))) call!739679))))

(declare-fun b!7972091 () Bool)

(assert (=> b!7972091 (= e!4700412 (Union!21537 (Concat!30536 call!739783 (regTwo!43586 r!24602)) call!739782))))

(declare-fun d!2380127 () Bool)

(declare-fun lt!2708473 () Regex!21537)

(assert (=> d!2380127 (validRegex!11841 lt!2708473)))

(assert (=> d!2380127 (= lt!2708473 e!4700414)))

(declare-fun c!1464077 () Bool)

(assert (=> d!2380127 (= c!1464077 (or ((_ is EmptyExpr!21537) r!24602) ((_ is EmptyLang!21537) r!24602)))))

(assert (=> d!2380127 (validRegex!11841 r!24602)))

(assert (=> d!2380127 (= (derivativeStep!6561 r!24602 call!739679) lt!2708473)))

(assert (= (and d!2380127 c!1464077) b!7972083))

(assert (= (and d!2380127 (not c!1464077)) b!7972087))

(assert (= (and b!7972087 c!1464081) b!7972084))

(assert (= (and b!7972087 (not c!1464081)) b!7972088))

(assert (= (and b!7972088 c!1464079) b!7972089))

(assert (= (and b!7972088 (not c!1464079)) b!7972090))

(assert (= (and b!7972090 c!1464078) b!7972086))

(assert (= (and b!7972090 (not c!1464078)) b!7972082))

(assert (= (and b!7972082 c!1464080) b!7972091))

(assert (= (and b!7972082 (not c!1464080)) b!7972085))

(assert (= (or b!7972091 b!7972085) bm!739776))

(assert (= (or b!7972086 bm!739776) bm!739777))

(assert (= (or b!7972089 bm!739777) bm!739779))

(assert (= (or b!7972089 b!7972091) bm!739778))

(declare-fun m!8349888 () Bool)

(assert (=> b!7972082 m!8349888))

(declare-fun m!8349890 () Bool)

(assert (=> bm!739778 m!8349890))

(declare-fun m!8349892 () Bool)

(assert (=> bm!739779 m!8349892))

(declare-fun m!8349894 () Bool)

(assert (=> d!2380127 m!8349894))

(assert (=> d!2380127 m!8349378))

(assert (=> bm!739674 d!2380127))

(assert (=> b!7971664 d!2379983))

(assert (=> bm!739681 d!2380029))

(declare-fun b!7972094 () Bool)

(declare-fun e!4700417 () Bool)

(declare-fun tp!2376640 () Bool)

(assert (=> b!7972094 (= e!4700417 tp!2376640)))

(declare-fun b!7972092 () Bool)

(assert (=> b!7972092 (= e!4700417 tp_is_empty!53617)))

(declare-fun b!7972095 () Bool)

(declare-fun tp!2376642 () Bool)

(declare-fun tp!2376643 () Bool)

(assert (=> b!7972095 (= e!4700417 (and tp!2376642 tp!2376643))))

(declare-fun b!7972093 () Bool)

(declare-fun tp!2376639 () Bool)

(declare-fun tp!2376641 () Bool)

(assert (=> b!7972093 (= e!4700417 (and tp!2376639 tp!2376641))))

(assert (=> b!7971730 (= tp!2376598 e!4700417)))

(assert (= (and b!7971730 ((_ is ElementMatch!21537) (regOne!43587 (reg!21866 r!24602)))) b!7972092))

(assert (= (and b!7971730 ((_ is Concat!30536) (regOne!43587 (reg!21866 r!24602)))) b!7972093))

(assert (= (and b!7971730 ((_ is Star!21537) (regOne!43587 (reg!21866 r!24602)))) b!7972094))

(assert (= (and b!7971730 ((_ is Union!21537) (regOne!43587 (reg!21866 r!24602)))) b!7972095))

(declare-fun b!7972098 () Bool)

(declare-fun e!4700418 () Bool)

(declare-fun tp!2376645 () Bool)

(assert (=> b!7972098 (= e!4700418 tp!2376645)))

(declare-fun b!7972096 () Bool)

(assert (=> b!7972096 (= e!4700418 tp_is_empty!53617)))

(declare-fun b!7972099 () Bool)

(declare-fun tp!2376647 () Bool)

(declare-fun tp!2376648 () Bool)

(assert (=> b!7972099 (= e!4700418 (and tp!2376647 tp!2376648))))

(declare-fun b!7972097 () Bool)

(declare-fun tp!2376644 () Bool)

(declare-fun tp!2376646 () Bool)

(assert (=> b!7972097 (= e!4700418 (and tp!2376644 tp!2376646))))

(assert (=> b!7971730 (= tp!2376599 e!4700418)))

(assert (= (and b!7971730 ((_ is ElementMatch!21537) (regTwo!43587 (reg!21866 r!24602)))) b!7972096))

(assert (= (and b!7971730 ((_ is Concat!30536) (regTwo!43587 (reg!21866 r!24602)))) b!7972097))

(assert (= (and b!7971730 ((_ is Star!21537) (regTwo!43587 (reg!21866 r!24602)))) b!7972098))

(assert (= (and b!7971730 ((_ is Union!21537) (regTwo!43587 (reg!21866 r!24602)))) b!7972099))

(declare-fun b!7972102 () Bool)

(declare-fun e!4700419 () Bool)

(declare-fun tp!2376650 () Bool)

(assert (=> b!7972102 (= e!4700419 tp!2376650)))

(declare-fun b!7972100 () Bool)

(assert (=> b!7972100 (= e!4700419 tp_is_empty!53617)))

(declare-fun b!7972103 () Bool)

(declare-fun tp!2376652 () Bool)

(declare-fun tp!2376653 () Bool)

(assert (=> b!7972103 (= e!4700419 (and tp!2376652 tp!2376653))))

(declare-fun b!7972101 () Bool)

(declare-fun tp!2376649 () Bool)

(declare-fun tp!2376651 () Bool)

(assert (=> b!7972101 (= e!4700419 (and tp!2376649 tp!2376651))))

(assert (=> b!7971745 (= tp!2376613 e!4700419)))

(assert (= (and b!7971745 ((_ is ElementMatch!21537) (regOne!43586 (regTwo!43587 r!24602)))) b!7972100))

(assert (= (and b!7971745 ((_ is Concat!30536) (regOne!43586 (regTwo!43587 r!24602)))) b!7972101))

(assert (= (and b!7971745 ((_ is Star!21537) (regOne!43586 (regTwo!43587 r!24602)))) b!7972102))

(assert (= (and b!7971745 ((_ is Union!21537) (regOne!43586 (regTwo!43587 r!24602)))) b!7972103))

(declare-fun b!7972106 () Bool)

(declare-fun e!4700420 () Bool)

(declare-fun tp!2376655 () Bool)

(assert (=> b!7972106 (= e!4700420 tp!2376655)))

(declare-fun b!7972104 () Bool)

(assert (=> b!7972104 (= e!4700420 tp_is_empty!53617)))

(declare-fun b!7972107 () Bool)

(declare-fun tp!2376657 () Bool)

(declare-fun tp!2376658 () Bool)

(assert (=> b!7972107 (= e!4700420 (and tp!2376657 tp!2376658))))

(declare-fun b!7972105 () Bool)

(declare-fun tp!2376654 () Bool)

(declare-fun tp!2376656 () Bool)

(assert (=> b!7972105 (= e!4700420 (and tp!2376654 tp!2376656))))

(assert (=> b!7971745 (= tp!2376615 e!4700420)))

(assert (= (and b!7971745 ((_ is ElementMatch!21537) (regTwo!43586 (regTwo!43587 r!24602)))) b!7972104))

(assert (= (and b!7971745 ((_ is Concat!30536) (regTwo!43586 (regTwo!43587 r!24602)))) b!7972105))

(assert (= (and b!7971745 ((_ is Star!21537) (regTwo!43586 (regTwo!43587 r!24602)))) b!7972106))

(assert (= (and b!7971745 ((_ is Union!21537) (regTwo!43586 (regTwo!43587 r!24602)))) b!7972107))

(declare-fun b!7972110 () Bool)

(declare-fun e!4700421 () Bool)

(declare-fun tp!2376660 () Bool)

(assert (=> b!7972110 (= e!4700421 tp!2376660)))

(declare-fun b!7972108 () Bool)

(assert (=> b!7972108 (= e!4700421 tp_is_empty!53617)))

(declare-fun b!7972111 () Bool)

(declare-fun tp!2376662 () Bool)

(declare-fun tp!2376663 () Bool)

(assert (=> b!7972111 (= e!4700421 (and tp!2376662 tp!2376663))))

(declare-fun b!7972109 () Bool)

(declare-fun tp!2376659 () Bool)

(declare-fun tp!2376661 () Bool)

(assert (=> b!7972109 (= e!4700421 (and tp!2376659 tp!2376661))))

(assert (=> b!7971721 (= tp!2376586 e!4700421)))

(assert (= (and b!7971721 ((_ is ElementMatch!21537) (reg!21866 (regOne!43587 baseR!116)))) b!7972108))

(assert (= (and b!7971721 ((_ is Concat!30536) (reg!21866 (regOne!43587 baseR!116)))) b!7972109))

(assert (= (and b!7971721 ((_ is Star!21537) (reg!21866 (regOne!43587 baseR!116)))) b!7972110))

(assert (= (and b!7971721 ((_ is Union!21537) (reg!21866 (regOne!43587 baseR!116)))) b!7972111))

(declare-fun b!7972114 () Bool)

(declare-fun e!4700422 () Bool)

(declare-fun tp!2376665 () Bool)

(assert (=> b!7972114 (= e!4700422 tp!2376665)))

(declare-fun b!7972112 () Bool)

(assert (=> b!7972112 (= e!4700422 tp_is_empty!53617)))

(declare-fun b!7972115 () Bool)

(declare-fun tp!2376667 () Bool)

(declare-fun tp!2376668 () Bool)

(assert (=> b!7972115 (= e!4700422 (and tp!2376667 tp!2376668))))

(declare-fun b!7972113 () Bool)

(declare-fun tp!2376664 () Bool)

(declare-fun tp!2376666 () Bool)

(assert (=> b!7972113 (= e!4700422 (and tp!2376664 tp!2376666))))

(assert (=> b!7971762 (= tp!2376634 e!4700422)))

(assert (= (and b!7971762 ((_ is ElementMatch!21537) (regOne!43586 (regTwo!43586 r!24602)))) b!7972112))

(assert (= (and b!7971762 ((_ is Concat!30536) (regOne!43586 (regTwo!43586 r!24602)))) b!7972113))

(assert (= (and b!7971762 ((_ is Star!21537) (regOne!43586 (regTwo!43586 r!24602)))) b!7972114))

(assert (= (and b!7971762 ((_ is Union!21537) (regOne!43586 (regTwo!43586 r!24602)))) b!7972115))

(declare-fun b!7972122 () Bool)

(declare-fun e!4700427 () Bool)

(declare-fun tp!2376670 () Bool)

(assert (=> b!7972122 (= e!4700427 tp!2376670)))

(declare-fun b!7972120 () Bool)

(assert (=> b!7972120 (= e!4700427 tp_is_empty!53617)))

(declare-fun b!7972123 () Bool)

(declare-fun tp!2376672 () Bool)

(declare-fun tp!2376673 () Bool)

(assert (=> b!7972123 (= e!4700427 (and tp!2376672 tp!2376673))))

(declare-fun b!7972121 () Bool)

(declare-fun tp!2376669 () Bool)

(declare-fun tp!2376671 () Bool)

(assert (=> b!7972121 (= e!4700427 (and tp!2376669 tp!2376671))))

(assert (=> b!7971762 (= tp!2376636 e!4700427)))

(assert (= (and b!7971762 ((_ is ElementMatch!21537) (regTwo!43586 (regTwo!43586 r!24602)))) b!7972120))

(assert (= (and b!7971762 ((_ is Concat!30536) (regTwo!43586 (regTwo!43586 r!24602)))) b!7972121))

(assert (= (and b!7971762 ((_ is Star!21537) (regTwo!43586 (regTwo!43586 r!24602)))) b!7972122))

(assert (= (and b!7971762 ((_ is Union!21537) (regTwo!43586 (regTwo!43586 r!24602)))) b!7972123))

(declare-fun b!7972134 () Bool)

(declare-fun e!4700434 () Bool)

(declare-fun tp!2376675 () Bool)

(assert (=> b!7972134 (= e!4700434 tp!2376675)))

(declare-fun b!7972132 () Bool)

(assert (=> b!7972132 (= e!4700434 tp_is_empty!53617)))

(declare-fun b!7972135 () Bool)

(declare-fun tp!2376677 () Bool)

(declare-fun tp!2376678 () Bool)

(assert (=> b!7972135 (= e!4700434 (and tp!2376677 tp!2376678))))

(declare-fun b!7972133 () Bool)

(declare-fun tp!2376674 () Bool)

(declare-fun tp!2376676 () Bool)

(assert (=> b!7972133 (= e!4700434 (and tp!2376674 tp!2376676))))

(assert (=> b!7971729 (= tp!2376596 e!4700434)))

(assert (= (and b!7971729 ((_ is ElementMatch!21537) (reg!21866 (reg!21866 r!24602)))) b!7972132))

(assert (= (and b!7971729 ((_ is Concat!30536) (reg!21866 (reg!21866 r!24602)))) b!7972133))

(assert (= (and b!7971729 ((_ is Star!21537) (reg!21866 (reg!21866 r!24602)))) b!7972134))

(assert (= (and b!7971729 ((_ is Union!21537) (reg!21866 (reg!21866 r!24602)))) b!7972135))

(declare-fun b!7972140 () Bool)

(declare-fun e!4700437 () Bool)

(declare-fun tp!2376680 () Bool)

(assert (=> b!7972140 (= e!4700437 tp!2376680)))

(declare-fun b!7972138 () Bool)

(assert (=> b!7972138 (= e!4700437 tp_is_empty!53617)))

(declare-fun b!7972141 () Bool)

(declare-fun tp!2376682 () Bool)

(declare-fun tp!2376683 () Bool)

(assert (=> b!7972141 (= e!4700437 (and tp!2376682 tp!2376683))))

(declare-fun b!7972139 () Bool)

(declare-fun tp!2376679 () Bool)

(declare-fun tp!2376681 () Bool)

(assert (=> b!7972139 (= e!4700437 (and tp!2376679 tp!2376681))))

(assert (=> b!7971720 (= tp!2376585 e!4700437)))

(assert (= (and b!7971720 ((_ is ElementMatch!21537) (regOne!43586 (regOne!43587 baseR!116)))) b!7972138))

(assert (= (and b!7971720 ((_ is Concat!30536) (regOne!43586 (regOne!43587 baseR!116)))) b!7972139))

(assert (= (and b!7971720 ((_ is Star!21537) (regOne!43586 (regOne!43587 baseR!116)))) b!7972140))

(assert (= (and b!7971720 ((_ is Union!21537) (regOne!43586 (regOne!43587 baseR!116)))) b!7972141))

(declare-fun b!7972144 () Bool)

(declare-fun e!4700438 () Bool)

(declare-fun tp!2376685 () Bool)

(assert (=> b!7972144 (= e!4700438 tp!2376685)))

(declare-fun b!7972142 () Bool)

(assert (=> b!7972142 (= e!4700438 tp_is_empty!53617)))

(declare-fun b!7972145 () Bool)

(declare-fun tp!2376687 () Bool)

(declare-fun tp!2376688 () Bool)

(assert (=> b!7972145 (= e!4700438 (and tp!2376687 tp!2376688))))

(declare-fun b!7972143 () Bool)

(declare-fun tp!2376684 () Bool)

(declare-fun tp!2376686 () Bool)

(assert (=> b!7972143 (= e!4700438 (and tp!2376684 tp!2376686))))

(assert (=> b!7971720 (= tp!2376587 e!4700438)))

(assert (= (and b!7971720 ((_ is ElementMatch!21537) (regTwo!43586 (regOne!43587 baseR!116)))) b!7972142))

(assert (= (and b!7971720 ((_ is Concat!30536) (regTwo!43586 (regOne!43587 baseR!116)))) b!7972143))

(assert (= (and b!7971720 ((_ is Star!21537) (regTwo!43586 (regOne!43587 baseR!116)))) b!7972144))

(assert (= (and b!7971720 ((_ is Union!21537) (regTwo!43586 (regOne!43587 baseR!116)))) b!7972145))

(declare-fun b!7972148 () Bool)

(declare-fun e!4700439 () Bool)

(declare-fun tp!2376690 () Bool)

(assert (=> b!7972148 (= e!4700439 tp!2376690)))

(declare-fun b!7972146 () Bool)

(assert (=> b!7972146 (= e!4700439 tp_is_empty!53617)))

(declare-fun b!7972149 () Bool)

(declare-fun tp!2376692 () Bool)

(declare-fun tp!2376693 () Bool)

(assert (=> b!7972149 (= e!4700439 (and tp!2376692 tp!2376693))))

(declare-fun b!7972147 () Bool)

(declare-fun tp!2376689 () Bool)

(declare-fun tp!2376691 () Bool)

(assert (=> b!7972147 (= e!4700439 (and tp!2376689 tp!2376691))))

(assert (=> b!7971728 (= tp!2376595 e!4700439)))

(assert (= (and b!7971728 ((_ is ElementMatch!21537) (regOne!43586 (reg!21866 r!24602)))) b!7972146))

(assert (= (and b!7971728 ((_ is Concat!30536) (regOne!43586 (reg!21866 r!24602)))) b!7972147))

(assert (= (and b!7971728 ((_ is Star!21537) (regOne!43586 (reg!21866 r!24602)))) b!7972148))

(assert (= (and b!7971728 ((_ is Union!21537) (regOne!43586 (reg!21866 r!24602)))) b!7972149))

(declare-fun b!7972152 () Bool)

(declare-fun e!4700440 () Bool)

(declare-fun tp!2376695 () Bool)

(assert (=> b!7972152 (= e!4700440 tp!2376695)))

(declare-fun b!7972150 () Bool)

(assert (=> b!7972150 (= e!4700440 tp_is_empty!53617)))

(declare-fun b!7972153 () Bool)

(declare-fun tp!2376697 () Bool)

(declare-fun tp!2376698 () Bool)

(assert (=> b!7972153 (= e!4700440 (and tp!2376697 tp!2376698))))

(declare-fun b!7972151 () Bool)

(declare-fun tp!2376694 () Bool)

(declare-fun tp!2376696 () Bool)

(assert (=> b!7972151 (= e!4700440 (and tp!2376694 tp!2376696))))

(assert (=> b!7971728 (= tp!2376597 e!4700440)))

(assert (= (and b!7971728 ((_ is ElementMatch!21537) (regTwo!43586 (reg!21866 r!24602)))) b!7972150))

(assert (= (and b!7971728 ((_ is Concat!30536) (regTwo!43586 (reg!21866 r!24602)))) b!7972151))

(assert (= (and b!7971728 ((_ is Star!21537) (regTwo!43586 (reg!21866 r!24602)))) b!7972152))

(assert (= (and b!7971728 ((_ is Union!21537) (regTwo!43586 (reg!21866 r!24602)))) b!7972153))

(declare-fun b!7972154 () Bool)

(declare-fun e!4700441 () Bool)

(declare-fun tp!2376699 () Bool)

(assert (=> b!7972154 (= e!4700441 (and tp_is_empty!53617 tp!2376699))))

(assert (=> b!7971735 (= tp!2376602 e!4700441)))

(assert (= (and b!7971735 ((_ is Cons!74642) (t!390509 (t!390509 testedP!447)))) b!7972154))

(declare-fun b!7972157 () Bool)

(declare-fun e!4700442 () Bool)

(declare-fun tp!2376701 () Bool)

(assert (=> b!7972157 (= e!4700442 tp!2376701)))

(declare-fun b!7972155 () Bool)

(assert (=> b!7972155 (= e!4700442 tp_is_empty!53617)))

(declare-fun b!7972158 () Bool)

(declare-fun tp!2376703 () Bool)

(declare-fun tp!2376704 () Bool)

(assert (=> b!7972158 (= e!4700442 (and tp!2376703 tp!2376704))))

(declare-fun b!7972156 () Bool)

(declare-fun tp!2376700 () Bool)

(declare-fun tp!2376702 () Bool)

(assert (=> b!7972156 (= e!4700442 (and tp!2376700 tp!2376702))))

(assert (=> b!7971752 (= tp!2376622 e!4700442)))

(assert (= (and b!7971752 ((_ is ElementMatch!21537) (regOne!43587 (regOne!43586 baseR!116)))) b!7972155))

(assert (= (and b!7971752 ((_ is Concat!30536) (regOne!43587 (regOne!43586 baseR!116)))) b!7972156))

(assert (= (and b!7971752 ((_ is Star!21537) (regOne!43587 (regOne!43586 baseR!116)))) b!7972157))

(assert (= (and b!7971752 ((_ is Union!21537) (regOne!43587 (regOne!43586 baseR!116)))) b!7972158))

(declare-fun b!7972161 () Bool)

(declare-fun e!4700443 () Bool)

(declare-fun tp!2376706 () Bool)

(assert (=> b!7972161 (= e!4700443 tp!2376706)))

(declare-fun b!7972159 () Bool)

(assert (=> b!7972159 (= e!4700443 tp_is_empty!53617)))

(declare-fun b!7972162 () Bool)

(declare-fun tp!2376708 () Bool)

(declare-fun tp!2376709 () Bool)

(assert (=> b!7972162 (= e!4700443 (and tp!2376708 tp!2376709))))

(declare-fun b!7972160 () Bool)

(declare-fun tp!2376705 () Bool)

(declare-fun tp!2376707 () Bool)

(assert (=> b!7972160 (= e!4700443 (and tp!2376705 tp!2376707))))

(assert (=> b!7971752 (= tp!2376623 e!4700443)))

(assert (= (and b!7971752 ((_ is ElementMatch!21537) (regTwo!43587 (regOne!43586 baseR!116)))) b!7972159))

(assert (= (and b!7971752 ((_ is Concat!30536) (regTwo!43587 (regOne!43586 baseR!116)))) b!7972160))

(assert (= (and b!7971752 ((_ is Star!21537) (regTwo!43587 (regOne!43586 baseR!116)))) b!7972161))

(assert (= (and b!7971752 ((_ is Union!21537) (regTwo!43587 (regOne!43586 baseR!116)))) b!7972162))

(declare-fun b!7972165 () Bool)

(declare-fun e!4700444 () Bool)

(declare-fun tp!2376711 () Bool)

(assert (=> b!7972165 (= e!4700444 tp!2376711)))

(declare-fun b!7972163 () Bool)

(assert (=> b!7972163 (= e!4700444 tp_is_empty!53617)))

(declare-fun b!7972166 () Bool)

(declare-fun tp!2376713 () Bool)

(declare-fun tp!2376714 () Bool)

(assert (=> b!7972166 (= e!4700444 (and tp!2376713 tp!2376714))))

(declare-fun b!7972164 () Bool)

(declare-fun tp!2376710 () Bool)

(declare-fun tp!2376712 () Bool)

(assert (=> b!7972164 (= e!4700444 (and tp!2376710 tp!2376712))))

(assert (=> b!7971750 (= tp!2376619 e!4700444)))

(assert (= (and b!7971750 ((_ is ElementMatch!21537) (regOne!43586 (regOne!43586 baseR!116)))) b!7972163))

(assert (= (and b!7971750 ((_ is Concat!30536) (regOne!43586 (regOne!43586 baseR!116)))) b!7972164))

(assert (= (and b!7971750 ((_ is Star!21537) (regOne!43586 (regOne!43586 baseR!116)))) b!7972165))

(assert (= (and b!7971750 ((_ is Union!21537) (regOne!43586 (regOne!43586 baseR!116)))) b!7972166))

(declare-fun b!7972169 () Bool)

(declare-fun e!4700445 () Bool)

(declare-fun tp!2376716 () Bool)

(assert (=> b!7972169 (= e!4700445 tp!2376716)))

(declare-fun b!7972167 () Bool)

(assert (=> b!7972167 (= e!4700445 tp_is_empty!53617)))

(declare-fun b!7972170 () Bool)

(declare-fun tp!2376718 () Bool)

(declare-fun tp!2376719 () Bool)

(assert (=> b!7972170 (= e!4700445 (and tp!2376718 tp!2376719))))

(declare-fun b!7972168 () Bool)

(declare-fun tp!2376715 () Bool)

(declare-fun tp!2376717 () Bool)

(assert (=> b!7972168 (= e!4700445 (and tp!2376715 tp!2376717))))

(assert (=> b!7971750 (= tp!2376621 e!4700445)))

(assert (= (and b!7971750 ((_ is ElementMatch!21537) (regTwo!43586 (regOne!43586 baseR!116)))) b!7972167))

(assert (= (and b!7971750 ((_ is Concat!30536) (regTwo!43586 (regOne!43586 baseR!116)))) b!7972168))

(assert (= (and b!7971750 ((_ is Star!21537) (regTwo!43586 (regOne!43586 baseR!116)))) b!7972169))

(assert (= (and b!7971750 ((_ is Union!21537) (regTwo!43586 (regOne!43586 baseR!116)))) b!7972170))

(declare-fun b!7972173 () Bool)

(declare-fun e!4700446 () Bool)

(declare-fun tp!2376721 () Bool)

(assert (=> b!7972173 (= e!4700446 tp!2376721)))

(declare-fun b!7972171 () Bool)

(assert (=> b!7972171 (= e!4700446 tp_is_empty!53617)))

(declare-fun b!7972174 () Bool)

(declare-fun tp!2376723 () Bool)

(declare-fun tp!2376724 () Bool)

(assert (=> b!7972174 (= e!4700446 (and tp!2376723 tp!2376724))))

(declare-fun b!7972172 () Bool)

(declare-fun tp!2376720 () Bool)

(declare-fun tp!2376722 () Bool)

(assert (=> b!7972172 (= e!4700446 (and tp!2376720 tp!2376722))))

(assert (=> b!7971743 (= tp!2376611 e!4700446)))

(assert (= (and b!7971743 ((_ is ElementMatch!21537) (regOne!43587 (regOne!43587 r!24602)))) b!7972171))

(assert (= (and b!7971743 ((_ is Concat!30536) (regOne!43587 (regOne!43587 r!24602)))) b!7972172))

(assert (= (and b!7971743 ((_ is Star!21537) (regOne!43587 (regOne!43587 r!24602)))) b!7972173))

(assert (= (and b!7971743 ((_ is Union!21537) (regOne!43587 (regOne!43587 r!24602)))) b!7972174))

(declare-fun b!7972177 () Bool)

(declare-fun e!4700447 () Bool)

(declare-fun tp!2376726 () Bool)

(assert (=> b!7972177 (= e!4700447 tp!2376726)))

(declare-fun b!7972175 () Bool)

(assert (=> b!7972175 (= e!4700447 tp_is_empty!53617)))

(declare-fun b!7972178 () Bool)

(declare-fun tp!2376728 () Bool)

(declare-fun tp!2376729 () Bool)

(assert (=> b!7972178 (= e!4700447 (and tp!2376728 tp!2376729))))

(declare-fun b!7972176 () Bool)

(declare-fun tp!2376725 () Bool)

(declare-fun tp!2376727 () Bool)

(assert (=> b!7972176 (= e!4700447 (and tp!2376725 tp!2376727))))

(assert (=> b!7971743 (= tp!2376612 e!4700447)))

(assert (= (and b!7971743 ((_ is ElementMatch!21537) (regTwo!43587 (regOne!43587 r!24602)))) b!7972175))

(assert (= (and b!7971743 ((_ is Concat!30536) (regTwo!43587 (regOne!43587 r!24602)))) b!7972176))

(assert (= (and b!7971743 ((_ is Star!21537) (regTwo!43587 (regOne!43587 r!24602)))) b!7972177))

(assert (= (and b!7971743 ((_ is Union!21537) (regTwo!43587 (regOne!43587 r!24602)))) b!7972178))

(declare-fun b!7972181 () Bool)

(declare-fun e!4700448 () Bool)

(declare-fun tp!2376731 () Bool)

(assert (=> b!7972181 (= e!4700448 tp!2376731)))

(declare-fun b!7972179 () Bool)

(assert (=> b!7972179 (= e!4700448 tp_is_empty!53617)))

(declare-fun b!7972182 () Bool)

(declare-fun tp!2376733 () Bool)

(declare-fun tp!2376734 () Bool)

(assert (=> b!7972182 (= e!4700448 (and tp!2376733 tp!2376734))))

(declare-fun b!7972180 () Bool)

(declare-fun tp!2376730 () Bool)

(declare-fun tp!2376732 () Bool)

(assert (=> b!7972180 (= e!4700448 (and tp!2376730 tp!2376732))))

(assert (=> b!7971760 (= tp!2376632 e!4700448)))

(assert (= (and b!7971760 ((_ is ElementMatch!21537) (regOne!43587 (regOne!43586 r!24602)))) b!7972179))

(assert (= (and b!7971760 ((_ is Concat!30536) (regOne!43587 (regOne!43586 r!24602)))) b!7972180))

(assert (= (and b!7971760 ((_ is Star!21537) (regOne!43587 (regOne!43586 r!24602)))) b!7972181))

(assert (= (and b!7971760 ((_ is Union!21537) (regOne!43587 (regOne!43586 r!24602)))) b!7972182))

(declare-fun b!7972185 () Bool)

(declare-fun e!4700449 () Bool)

(declare-fun tp!2376736 () Bool)

(assert (=> b!7972185 (= e!4700449 tp!2376736)))

(declare-fun b!7972183 () Bool)

(assert (=> b!7972183 (= e!4700449 tp_is_empty!53617)))

(declare-fun b!7972186 () Bool)

(declare-fun tp!2376738 () Bool)

(declare-fun tp!2376739 () Bool)

(assert (=> b!7972186 (= e!4700449 (and tp!2376738 tp!2376739))))

(declare-fun b!7972184 () Bool)

(declare-fun tp!2376735 () Bool)

(declare-fun tp!2376737 () Bool)

(assert (=> b!7972184 (= e!4700449 (and tp!2376735 tp!2376737))))

(assert (=> b!7971760 (= tp!2376633 e!4700449)))

(assert (= (and b!7971760 ((_ is ElementMatch!21537) (regTwo!43587 (regOne!43586 r!24602)))) b!7972183))

(assert (= (and b!7971760 ((_ is Concat!30536) (regTwo!43587 (regOne!43586 r!24602)))) b!7972184))

(assert (= (and b!7971760 ((_ is Star!21537) (regTwo!43587 (regOne!43586 r!24602)))) b!7972185))

(assert (= (and b!7971760 ((_ is Union!21537) (regTwo!43587 (regOne!43586 r!24602)))) b!7972186))

(declare-fun b!7972196 () Bool)

(declare-fun e!4700456 () Bool)

(declare-fun tp!2376741 () Bool)

(assert (=> b!7972196 (= e!4700456 tp!2376741)))

(declare-fun b!7972194 () Bool)

(assert (=> b!7972194 (= e!4700456 tp_is_empty!53617)))

(declare-fun b!7972197 () Bool)

(declare-fun tp!2376743 () Bool)

(declare-fun tp!2376744 () Bool)

(assert (=> b!7972197 (= e!4700456 (and tp!2376743 tp!2376744))))

(declare-fun b!7972195 () Bool)

(declare-fun tp!2376740 () Bool)

(declare-fun tp!2376742 () Bool)

(assert (=> b!7972195 (= e!4700456 (and tp!2376740 tp!2376742))))

(assert (=> b!7971751 (= tp!2376620 e!4700456)))

(assert (= (and b!7971751 ((_ is ElementMatch!21537) (reg!21866 (regOne!43586 baseR!116)))) b!7972194))

(assert (= (and b!7971751 ((_ is Concat!30536) (reg!21866 (regOne!43586 baseR!116)))) b!7972195))

(assert (= (and b!7971751 ((_ is Star!21537) (reg!21866 (regOne!43586 baseR!116)))) b!7972196))

(assert (= (and b!7971751 ((_ is Union!21537) (reg!21866 (regOne!43586 baseR!116)))) b!7972197))

(declare-fun b!7972200 () Bool)

(declare-fun e!4700457 () Bool)

(declare-fun tp!2376746 () Bool)

(assert (=> b!7972200 (= e!4700457 tp!2376746)))

(declare-fun b!7972198 () Bool)

(assert (=> b!7972198 (= e!4700457 tp_is_empty!53617)))

(declare-fun b!7972201 () Bool)

(declare-fun tp!2376748 () Bool)

(declare-fun tp!2376749 () Bool)

(assert (=> b!7972201 (= e!4700457 (and tp!2376748 tp!2376749))))

(declare-fun b!7972199 () Bool)

(declare-fun tp!2376745 () Bool)

(declare-fun tp!2376747 () Bool)

(assert (=> b!7972199 (= e!4700457 (and tp!2376745 tp!2376747))))

(assert (=> b!7971758 (= tp!2376629 e!4700457)))

(assert (= (and b!7971758 ((_ is ElementMatch!21537) (regOne!43586 (regOne!43586 r!24602)))) b!7972198))

(assert (= (and b!7971758 ((_ is Concat!30536) (regOne!43586 (regOne!43586 r!24602)))) b!7972199))

(assert (= (and b!7971758 ((_ is Star!21537) (regOne!43586 (regOne!43586 r!24602)))) b!7972200))

(assert (= (and b!7971758 ((_ is Union!21537) (regOne!43586 (regOne!43586 r!24602)))) b!7972201))

(declare-fun b!7972204 () Bool)

(declare-fun e!4700458 () Bool)

(declare-fun tp!2376751 () Bool)

(assert (=> b!7972204 (= e!4700458 tp!2376751)))

(declare-fun b!7972202 () Bool)

(assert (=> b!7972202 (= e!4700458 tp_is_empty!53617)))

(declare-fun b!7972205 () Bool)

(declare-fun tp!2376753 () Bool)

(declare-fun tp!2376754 () Bool)

(assert (=> b!7972205 (= e!4700458 (and tp!2376753 tp!2376754))))

(declare-fun b!7972203 () Bool)

(declare-fun tp!2376750 () Bool)

(declare-fun tp!2376752 () Bool)

(assert (=> b!7972203 (= e!4700458 (and tp!2376750 tp!2376752))))

(assert (=> b!7971758 (= tp!2376631 e!4700458)))

(assert (= (and b!7971758 ((_ is ElementMatch!21537) (regTwo!43586 (regOne!43586 r!24602)))) b!7972202))

(assert (= (and b!7971758 ((_ is Concat!30536) (regTwo!43586 (regOne!43586 r!24602)))) b!7972203))

(assert (= (and b!7971758 ((_ is Star!21537) (regTwo!43586 (regOne!43586 r!24602)))) b!7972204))

(assert (= (and b!7971758 ((_ is Union!21537) (regTwo!43586 (regOne!43586 r!24602)))) b!7972205))

(declare-fun b!7972208 () Bool)

(declare-fun e!4700459 () Bool)

(declare-fun tp!2376756 () Bool)

(assert (=> b!7972208 (= e!4700459 tp!2376756)))

(declare-fun b!7972206 () Bool)

(assert (=> b!7972206 (= e!4700459 tp_is_empty!53617)))

(declare-fun b!7972209 () Bool)

(declare-fun tp!2376758 () Bool)

(declare-fun tp!2376759 () Bool)

(assert (=> b!7972209 (= e!4700459 (and tp!2376758 tp!2376759))))

(declare-fun b!7972207 () Bool)

(declare-fun tp!2376755 () Bool)

(declare-fun tp!2376757 () Bool)

(assert (=> b!7972207 (= e!4700459 (and tp!2376755 tp!2376757))))

(assert (=> b!7971742 (= tp!2376609 e!4700459)))

(assert (= (and b!7971742 ((_ is ElementMatch!21537) (reg!21866 (regOne!43587 r!24602)))) b!7972206))

(assert (= (and b!7971742 ((_ is Concat!30536) (reg!21866 (regOne!43587 r!24602)))) b!7972207))

(assert (= (and b!7971742 ((_ is Star!21537) (reg!21866 (regOne!43587 r!24602)))) b!7972208))

(assert (= (and b!7971742 ((_ is Union!21537) (reg!21866 (regOne!43587 r!24602)))) b!7972209))

(declare-fun b!7972212 () Bool)

(declare-fun e!4700460 () Bool)

(declare-fun tp!2376761 () Bool)

(assert (=> b!7972212 (= e!4700460 tp!2376761)))

(declare-fun b!7972210 () Bool)

(assert (=> b!7972210 (= e!4700460 tp_is_empty!53617)))

(declare-fun b!7972213 () Bool)

(declare-fun tp!2376763 () Bool)

(declare-fun tp!2376764 () Bool)

(assert (=> b!7972213 (= e!4700460 (and tp!2376763 tp!2376764))))

(declare-fun b!7972211 () Bool)

(declare-fun tp!2376760 () Bool)

(declare-fun tp!2376762 () Bool)

(assert (=> b!7972211 (= e!4700460 (and tp!2376760 tp!2376762))))

(assert (=> b!7971759 (= tp!2376630 e!4700460)))

(assert (= (and b!7971759 ((_ is ElementMatch!21537) (reg!21866 (regOne!43586 r!24602)))) b!7972210))

(assert (= (and b!7971759 ((_ is Concat!30536) (reg!21866 (regOne!43586 r!24602)))) b!7972211))

(assert (= (and b!7971759 ((_ is Star!21537) (reg!21866 (regOne!43586 r!24602)))) b!7972212))

(assert (= (and b!7971759 ((_ is Union!21537) (reg!21866 (regOne!43586 r!24602)))) b!7972213))

(declare-fun b!7972216 () Bool)

(declare-fun e!4700461 () Bool)

(declare-fun tp!2376766 () Bool)

(assert (=> b!7972216 (= e!4700461 tp!2376766)))

(declare-fun b!7972214 () Bool)

(assert (=> b!7972214 (= e!4700461 tp_is_empty!53617)))

(declare-fun b!7972217 () Bool)

(declare-fun tp!2376768 () Bool)

(declare-fun tp!2376769 () Bool)

(assert (=> b!7972217 (= e!4700461 (and tp!2376768 tp!2376769))))

(declare-fun b!7972215 () Bool)

(declare-fun tp!2376765 () Bool)

(declare-fun tp!2376767 () Bool)

(assert (=> b!7972215 (= e!4700461 (and tp!2376765 tp!2376767))))

(assert (=> b!7971726 (= tp!2376593 e!4700461)))

(assert (= (and b!7971726 ((_ is ElementMatch!21537) (regOne!43587 (regTwo!43587 baseR!116)))) b!7972214))

(assert (= (and b!7971726 ((_ is Concat!30536) (regOne!43587 (regTwo!43587 baseR!116)))) b!7972215))

(assert (= (and b!7971726 ((_ is Star!21537) (regOne!43587 (regTwo!43587 baseR!116)))) b!7972216))

(assert (= (and b!7971726 ((_ is Union!21537) (regOne!43587 (regTwo!43587 baseR!116)))) b!7972217))

(declare-fun b!7972220 () Bool)

(declare-fun e!4700462 () Bool)

(declare-fun tp!2376771 () Bool)

(assert (=> b!7972220 (= e!4700462 tp!2376771)))

(declare-fun b!7972218 () Bool)

(assert (=> b!7972218 (= e!4700462 tp_is_empty!53617)))

(declare-fun b!7972221 () Bool)

(declare-fun tp!2376773 () Bool)

(declare-fun tp!2376774 () Bool)

(assert (=> b!7972221 (= e!4700462 (and tp!2376773 tp!2376774))))

(declare-fun b!7972219 () Bool)

(declare-fun tp!2376770 () Bool)

(declare-fun tp!2376772 () Bool)

(assert (=> b!7972219 (= e!4700462 (and tp!2376770 tp!2376772))))

(assert (=> b!7971726 (= tp!2376594 e!4700462)))

(assert (= (and b!7971726 ((_ is ElementMatch!21537) (regTwo!43587 (regTwo!43587 baseR!116)))) b!7972218))

(assert (= (and b!7971726 ((_ is Concat!30536) (regTwo!43587 (regTwo!43587 baseR!116)))) b!7972219))

(assert (= (and b!7971726 ((_ is Star!21537) (regTwo!43587 (regTwo!43587 baseR!116)))) b!7972220))

(assert (= (and b!7971726 ((_ is Union!21537) (regTwo!43587 (regTwo!43587 baseR!116)))) b!7972221))

(declare-fun b!7972224 () Bool)

(declare-fun e!4700463 () Bool)

(declare-fun tp!2376776 () Bool)

(assert (=> b!7972224 (= e!4700463 tp!2376776)))

(declare-fun b!7972222 () Bool)

(assert (=> b!7972222 (= e!4700463 tp_is_empty!53617)))

(declare-fun b!7972225 () Bool)

(declare-fun tp!2376778 () Bool)

(declare-fun tp!2376779 () Bool)

(assert (=> b!7972225 (= e!4700463 (and tp!2376778 tp!2376779))))

(declare-fun b!7972223 () Bool)

(declare-fun tp!2376775 () Bool)

(declare-fun tp!2376777 () Bool)

(assert (=> b!7972223 (= e!4700463 (and tp!2376775 tp!2376777))))

(assert (=> b!7971741 (= tp!2376608 e!4700463)))

(assert (= (and b!7971741 ((_ is ElementMatch!21537) (regOne!43586 (regOne!43587 r!24602)))) b!7972222))

(assert (= (and b!7971741 ((_ is Concat!30536) (regOne!43586 (regOne!43587 r!24602)))) b!7972223))

(assert (= (and b!7971741 ((_ is Star!21537) (regOne!43586 (regOne!43587 r!24602)))) b!7972224))

(assert (= (and b!7971741 ((_ is Union!21537) (regOne!43586 (regOne!43587 r!24602)))) b!7972225))

(declare-fun b!7972228 () Bool)

(declare-fun e!4700464 () Bool)

(declare-fun tp!2376781 () Bool)

(assert (=> b!7972228 (= e!4700464 tp!2376781)))

(declare-fun b!7972226 () Bool)

(assert (=> b!7972226 (= e!4700464 tp_is_empty!53617)))

(declare-fun b!7972229 () Bool)

(declare-fun tp!2376783 () Bool)

(declare-fun tp!2376784 () Bool)

(assert (=> b!7972229 (= e!4700464 (and tp!2376783 tp!2376784))))

(declare-fun b!7972227 () Bool)

(declare-fun tp!2376780 () Bool)

(declare-fun tp!2376782 () Bool)

(assert (=> b!7972227 (= e!4700464 (and tp!2376780 tp!2376782))))

(assert (=> b!7971741 (= tp!2376610 e!4700464)))

(assert (= (and b!7971741 ((_ is ElementMatch!21537) (regTwo!43586 (regOne!43587 r!24602)))) b!7972226))

(assert (= (and b!7971741 ((_ is Concat!30536) (regTwo!43586 (regOne!43587 r!24602)))) b!7972227))

(assert (= (and b!7971741 ((_ is Star!21537) (regTwo!43586 (regOne!43587 r!24602)))) b!7972228))

(assert (= (and b!7971741 ((_ is Union!21537) (regTwo!43586 (regOne!43587 r!24602)))) b!7972229))

(declare-fun b!7972232 () Bool)

(declare-fun e!4700465 () Bool)

(declare-fun tp!2376786 () Bool)

(assert (=> b!7972232 (= e!4700465 tp!2376786)))

(declare-fun b!7972230 () Bool)

(assert (=> b!7972230 (= e!4700465 tp_is_empty!53617)))

(declare-fun b!7972233 () Bool)

(declare-fun tp!2376788 () Bool)

(declare-fun tp!2376789 () Bool)

(assert (=> b!7972233 (= e!4700465 (and tp!2376788 tp!2376789))))

(declare-fun b!7972231 () Bool)

(declare-fun tp!2376785 () Bool)

(declare-fun tp!2376787 () Bool)

(assert (=> b!7972231 (= e!4700465 (and tp!2376785 tp!2376787))))

(assert (=> b!7971724 (= tp!2376590 e!4700465)))

(assert (= (and b!7971724 ((_ is ElementMatch!21537) (regOne!43586 (regTwo!43587 baseR!116)))) b!7972230))

(assert (= (and b!7971724 ((_ is Concat!30536) (regOne!43586 (regTwo!43587 baseR!116)))) b!7972231))

(assert (= (and b!7971724 ((_ is Star!21537) (regOne!43586 (regTwo!43587 baseR!116)))) b!7972232))

(assert (= (and b!7971724 ((_ is Union!21537) (regOne!43586 (regTwo!43587 baseR!116)))) b!7972233))

(declare-fun b!7972236 () Bool)

(declare-fun e!4700466 () Bool)

(declare-fun tp!2376791 () Bool)

(assert (=> b!7972236 (= e!4700466 tp!2376791)))

(declare-fun b!7972234 () Bool)

(assert (=> b!7972234 (= e!4700466 tp_is_empty!53617)))

(declare-fun b!7972237 () Bool)

(declare-fun tp!2376793 () Bool)

(declare-fun tp!2376794 () Bool)

(assert (=> b!7972237 (= e!4700466 (and tp!2376793 tp!2376794))))

(declare-fun b!7972235 () Bool)

(declare-fun tp!2376790 () Bool)

(declare-fun tp!2376792 () Bool)

(assert (=> b!7972235 (= e!4700466 (and tp!2376790 tp!2376792))))

(assert (=> b!7971724 (= tp!2376592 e!4700466)))

(assert (= (and b!7971724 ((_ is ElementMatch!21537) (regTwo!43586 (regTwo!43587 baseR!116)))) b!7972234))

(assert (= (and b!7971724 ((_ is Concat!30536) (regTwo!43586 (regTwo!43587 baseR!116)))) b!7972235))

(assert (= (and b!7971724 ((_ is Star!21537) (regTwo!43586 (regTwo!43587 baseR!116)))) b!7972236))

(assert (= (and b!7971724 ((_ is Union!21537) (regTwo!43586 (regTwo!43587 baseR!116)))) b!7972237))

(declare-fun b!7972240 () Bool)

(declare-fun e!4700467 () Bool)

(declare-fun tp!2376796 () Bool)

(assert (=> b!7972240 (= e!4700467 tp!2376796)))

(declare-fun b!7972238 () Bool)

(assert (=> b!7972238 (= e!4700467 tp_is_empty!53617)))

(declare-fun b!7972241 () Bool)

(declare-fun tp!2376798 () Bool)

(declare-fun tp!2376799 () Bool)

(assert (=> b!7972241 (= e!4700467 (and tp!2376798 tp!2376799))))

(declare-fun b!7972239 () Bool)

(declare-fun tp!2376795 () Bool)

(declare-fun tp!2376797 () Bool)

(assert (=> b!7972239 (= e!4700467 (and tp!2376795 tp!2376797))))

(assert (=> b!7971725 (= tp!2376591 e!4700467)))

(assert (= (and b!7971725 ((_ is ElementMatch!21537) (reg!21866 (regTwo!43587 baseR!116)))) b!7972238))

(assert (= (and b!7971725 ((_ is Concat!30536) (reg!21866 (regTwo!43587 baseR!116)))) b!7972239))

(assert (= (and b!7971725 ((_ is Star!21537) (reg!21866 (regTwo!43587 baseR!116)))) b!7972240))

(assert (= (and b!7971725 ((_ is Union!21537) (reg!21866 (regTwo!43587 baseR!116)))) b!7972241))

(declare-fun b!7972242 () Bool)

(declare-fun e!4700468 () Bool)

(declare-fun tp!2376800 () Bool)

(assert (=> b!7972242 (= e!4700468 (and tp_is_empty!53617 tp!2376800))))

(assert (=> b!7971748 (= tp!2376618 e!4700468)))

(assert (= (and b!7971748 ((_ is Cons!74642) (t!390509 (t!390509 input!7927)))) b!7972242))

(declare-fun b!7972245 () Bool)

(declare-fun e!4700469 () Bool)

(declare-fun tp!2376802 () Bool)

(assert (=> b!7972245 (= e!4700469 tp!2376802)))

(declare-fun b!7972243 () Bool)

(assert (=> b!7972243 (= e!4700469 tp_is_empty!53617)))

(declare-fun b!7972246 () Bool)

(declare-fun tp!2376804 () Bool)

(declare-fun tp!2376805 () Bool)

(assert (=> b!7972246 (= e!4700469 (and tp!2376804 tp!2376805))))

(declare-fun b!7972244 () Bool)

(declare-fun tp!2376801 () Bool)

(declare-fun tp!2376803 () Bool)

(assert (=> b!7972244 (= e!4700469 (and tp!2376801 tp!2376803))))

(assert (=> b!7971756 (= tp!2376627 e!4700469)))

(assert (= (and b!7971756 ((_ is ElementMatch!21537) (regOne!43587 (regTwo!43586 baseR!116)))) b!7972243))

(assert (= (and b!7971756 ((_ is Concat!30536) (regOne!43587 (regTwo!43586 baseR!116)))) b!7972244))

(assert (= (and b!7971756 ((_ is Star!21537) (regOne!43587 (regTwo!43586 baseR!116)))) b!7972245))

(assert (= (and b!7971756 ((_ is Union!21537) (regOne!43587 (regTwo!43586 baseR!116)))) b!7972246))

(declare-fun b!7972249 () Bool)

(declare-fun e!4700470 () Bool)

(declare-fun tp!2376807 () Bool)

(assert (=> b!7972249 (= e!4700470 tp!2376807)))

(declare-fun b!7972247 () Bool)

(assert (=> b!7972247 (= e!4700470 tp_is_empty!53617)))

(declare-fun b!7972250 () Bool)

(declare-fun tp!2376809 () Bool)

(declare-fun tp!2376810 () Bool)

(assert (=> b!7972250 (= e!4700470 (and tp!2376809 tp!2376810))))

(declare-fun b!7972248 () Bool)

(declare-fun tp!2376806 () Bool)

(declare-fun tp!2376808 () Bool)

(assert (=> b!7972248 (= e!4700470 (and tp!2376806 tp!2376808))))

(assert (=> b!7971756 (= tp!2376628 e!4700470)))

(assert (= (and b!7971756 ((_ is ElementMatch!21537) (regTwo!43587 (regTwo!43586 baseR!116)))) b!7972247))

(assert (= (and b!7971756 ((_ is Concat!30536) (regTwo!43587 (regTwo!43586 baseR!116)))) b!7972248))

(assert (= (and b!7971756 ((_ is Star!21537) (regTwo!43587 (regTwo!43586 baseR!116)))) b!7972249))

(assert (= (and b!7971756 ((_ is Union!21537) (regTwo!43587 (regTwo!43586 baseR!116)))) b!7972250))

(declare-fun b!7972267 () Bool)

(declare-fun e!4700478 () Bool)

(declare-fun tp!2376812 () Bool)

(assert (=> b!7972267 (= e!4700478 tp!2376812)))

(declare-fun b!7972265 () Bool)

(assert (=> b!7972265 (= e!4700478 tp_is_empty!53617)))

(declare-fun b!7972268 () Bool)

(declare-fun tp!2376814 () Bool)

(declare-fun tp!2376815 () Bool)

(assert (=> b!7972268 (= e!4700478 (and tp!2376814 tp!2376815))))

(declare-fun b!7972266 () Bool)

(declare-fun tp!2376811 () Bool)

(declare-fun tp!2376813 () Bool)

(assert (=> b!7972266 (= e!4700478 (and tp!2376811 tp!2376813))))

(assert (=> b!7971738 (= tp!2376604 e!4700478)))

(assert (= (and b!7971738 ((_ is ElementMatch!21537) (reg!21866 (reg!21866 baseR!116)))) b!7972265))

(assert (= (and b!7971738 ((_ is Concat!30536) (reg!21866 (reg!21866 baseR!116)))) b!7972266))

(assert (= (and b!7971738 ((_ is Star!21537) (reg!21866 (reg!21866 baseR!116)))) b!7972267))

(assert (= (and b!7971738 ((_ is Union!21537) (reg!21866 (reg!21866 baseR!116)))) b!7972268))

(declare-fun b!7972271 () Bool)

(declare-fun e!4700479 () Bool)

(declare-fun tp!2376817 () Bool)

(assert (=> b!7972271 (= e!4700479 tp!2376817)))

(declare-fun b!7972269 () Bool)

(assert (=> b!7972269 (= e!4700479 tp_is_empty!53617)))

(declare-fun b!7972272 () Bool)

(declare-fun tp!2376819 () Bool)

(declare-fun tp!2376820 () Bool)

(assert (=> b!7972272 (= e!4700479 (and tp!2376819 tp!2376820))))

(declare-fun b!7972270 () Bool)

(declare-fun tp!2376816 () Bool)

(declare-fun tp!2376818 () Bool)

(assert (=> b!7972270 (= e!4700479 (and tp!2376816 tp!2376818))))

(assert (=> b!7971764 (= tp!2376637 e!4700479)))

(assert (= (and b!7971764 ((_ is ElementMatch!21537) (regOne!43587 (regTwo!43586 r!24602)))) b!7972269))

(assert (= (and b!7971764 ((_ is Concat!30536) (regOne!43587 (regTwo!43586 r!24602)))) b!7972270))

(assert (= (and b!7971764 ((_ is Star!21537) (regOne!43587 (regTwo!43586 r!24602)))) b!7972271))

(assert (= (and b!7971764 ((_ is Union!21537) (regOne!43587 (regTwo!43586 r!24602)))) b!7972272))

(declare-fun b!7972275 () Bool)

(declare-fun e!4700480 () Bool)

(declare-fun tp!2376822 () Bool)

(assert (=> b!7972275 (= e!4700480 tp!2376822)))

(declare-fun b!7972273 () Bool)

(assert (=> b!7972273 (= e!4700480 tp_is_empty!53617)))

(declare-fun b!7972276 () Bool)

(declare-fun tp!2376824 () Bool)

(declare-fun tp!2376825 () Bool)

(assert (=> b!7972276 (= e!4700480 (and tp!2376824 tp!2376825))))

(declare-fun b!7972274 () Bool)

(declare-fun tp!2376821 () Bool)

(declare-fun tp!2376823 () Bool)

(assert (=> b!7972274 (= e!4700480 (and tp!2376821 tp!2376823))))

(assert (=> b!7971764 (= tp!2376638 e!4700480)))

(assert (= (and b!7971764 ((_ is ElementMatch!21537) (regTwo!43587 (regTwo!43586 r!24602)))) b!7972273))

(assert (= (and b!7971764 ((_ is Concat!30536) (regTwo!43587 (regTwo!43586 r!24602)))) b!7972274))

(assert (= (and b!7971764 ((_ is Star!21537) (regTwo!43587 (regTwo!43586 r!24602)))) b!7972275))

(assert (= (and b!7971764 ((_ is Union!21537) (regTwo!43587 (regTwo!43586 r!24602)))) b!7972276))

(declare-fun b!7972279 () Bool)

(declare-fun e!4700481 () Bool)

(declare-fun tp!2376827 () Bool)

(assert (=> b!7972279 (= e!4700481 tp!2376827)))

(declare-fun b!7972277 () Bool)

(assert (=> b!7972277 (= e!4700481 tp_is_empty!53617)))

(declare-fun b!7972280 () Bool)

(declare-fun tp!2376829 () Bool)

(declare-fun tp!2376830 () Bool)

(assert (=> b!7972280 (= e!4700481 (and tp!2376829 tp!2376830))))

(declare-fun b!7972278 () Bool)

(declare-fun tp!2376826 () Bool)

(declare-fun tp!2376828 () Bool)

(assert (=> b!7972278 (= e!4700481 (and tp!2376826 tp!2376828))))

(assert (=> b!7971755 (= tp!2376625 e!4700481)))

(assert (= (and b!7971755 ((_ is ElementMatch!21537) (reg!21866 (regTwo!43586 baseR!116)))) b!7972277))

(assert (= (and b!7971755 ((_ is Concat!30536) (reg!21866 (regTwo!43586 baseR!116)))) b!7972278))

(assert (= (and b!7971755 ((_ is Star!21537) (reg!21866 (regTwo!43586 baseR!116)))) b!7972279))

(assert (= (and b!7971755 ((_ is Union!21537) (reg!21866 (regTwo!43586 baseR!116)))) b!7972280))

(declare-fun b!7972283 () Bool)

(declare-fun e!4700482 () Bool)

(declare-fun tp!2376832 () Bool)

(assert (=> b!7972283 (= e!4700482 tp!2376832)))

(declare-fun b!7972281 () Bool)

(assert (=> b!7972281 (= e!4700482 tp_is_empty!53617)))

(declare-fun b!7972284 () Bool)

(declare-fun tp!2376834 () Bool)

(declare-fun tp!2376835 () Bool)

(assert (=> b!7972284 (= e!4700482 (and tp!2376834 tp!2376835))))

(declare-fun b!7972282 () Bool)

(declare-fun tp!2376831 () Bool)

(declare-fun tp!2376833 () Bool)

(assert (=> b!7972282 (= e!4700482 (and tp!2376831 tp!2376833))))

(assert (=> b!7971739 (= tp!2376606 e!4700482)))

(assert (= (and b!7971739 ((_ is ElementMatch!21537) (regOne!43587 (reg!21866 baseR!116)))) b!7972281))

(assert (= (and b!7971739 ((_ is Concat!30536) (regOne!43587 (reg!21866 baseR!116)))) b!7972282))

(assert (= (and b!7971739 ((_ is Star!21537) (regOne!43587 (reg!21866 baseR!116)))) b!7972283))

(assert (= (and b!7971739 ((_ is Union!21537) (regOne!43587 (reg!21866 baseR!116)))) b!7972284))

(declare-fun b!7972287 () Bool)

(declare-fun e!4700483 () Bool)

(declare-fun tp!2376837 () Bool)

(assert (=> b!7972287 (= e!4700483 tp!2376837)))

(declare-fun b!7972285 () Bool)

(assert (=> b!7972285 (= e!4700483 tp_is_empty!53617)))

(declare-fun b!7972288 () Bool)

(declare-fun tp!2376839 () Bool)

(declare-fun tp!2376840 () Bool)

(assert (=> b!7972288 (= e!4700483 (and tp!2376839 tp!2376840))))

(declare-fun b!7972286 () Bool)

(declare-fun tp!2376836 () Bool)

(declare-fun tp!2376838 () Bool)

(assert (=> b!7972286 (= e!4700483 (and tp!2376836 tp!2376838))))

(assert (=> b!7971739 (= tp!2376607 e!4700483)))

(assert (= (and b!7971739 ((_ is ElementMatch!21537) (regTwo!43587 (reg!21866 baseR!116)))) b!7972285))

(assert (= (and b!7971739 ((_ is Concat!30536) (regTwo!43587 (reg!21866 baseR!116)))) b!7972286))

(assert (= (and b!7971739 ((_ is Star!21537) (regTwo!43587 (reg!21866 baseR!116)))) b!7972287))

(assert (= (and b!7971739 ((_ is Union!21537) (regTwo!43587 (reg!21866 baseR!116)))) b!7972288))

(declare-fun b!7972291 () Bool)

(declare-fun e!4700484 () Bool)

(declare-fun tp!2376842 () Bool)

(assert (=> b!7972291 (= e!4700484 tp!2376842)))

(declare-fun b!7972289 () Bool)

(assert (=> b!7972289 (= e!4700484 tp_is_empty!53617)))

(declare-fun b!7972292 () Bool)

(declare-fun tp!2376844 () Bool)

(declare-fun tp!2376845 () Bool)

(assert (=> b!7972292 (= e!4700484 (and tp!2376844 tp!2376845))))

(declare-fun b!7972290 () Bool)

(declare-fun tp!2376841 () Bool)

(declare-fun tp!2376843 () Bool)

(assert (=> b!7972290 (= e!4700484 (and tp!2376841 tp!2376843))))

(assert (=> b!7971746 (= tp!2376614 e!4700484)))

(assert (= (and b!7971746 ((_ is ElementMatch!21537) (reg!21866 (regTwo!43587 r!24602)))) b!7972289))

(assert (= (and b!7971746 ((_ is Concat!30536) (reg!21866 (regTwo!43587 r!24602)))) b!7972290))

(assert (= (and b!7971746 ((_ is Star!21537) (reg!21866 (regTwo!43587 r!24602)))) b!7972291))

(assert (= (and b!7971746 ((_ is Union!21537) (reg!21866 (regTwo!43587 r!24602)))) b!7972292))

(declare-fun b!7972295 () Bool)

(declare-fun e!4700485 () Bool)

(declare-fun tp!2376847 () Bool)

(assert (=> b!7972295 (= e!4700485 tp!2376847)))

(declare-fun b!7972293 () Bool)

(assert (=> b!7972293 (= e!4700485 tp_is_empty!53617)))

(declare-fun b!7972296 () Bool)

(declare-fun tp!2376849 () Bool)

(declare-fun tp!2376850 () Bool)

(assert (=> b!7972296 (= e!4700485 (and tp!2376849 tp!2376850))))

(declare-fun b!7972294 () Bool)

(declare-fun tp!2376846 () Bool)

(declare-fun tp!2376848 () Bool)

(assert (=> b!7972294 (= e!4700485 (and tp!2376846 tp!2376848))))

(assert (=> b!7971722 (= tp!2376588 e!4700485)))

(assert (= (and b!7971722 ((_ is ElementMatch!21537) (regOne!43587 (regOne!43587 baseR!116)))) b!7972293))

(assert (= (and b!7971722 ((_ is Concat!30536) (regOne!43587 (regOne!43587 baseR!116)))) b!7972294))

(assert (= (and b!7971722 ((_ is Star!21537) (regOne!43587 (regOne!43587 baseR!116)))) b!7972295))

(assert (= (and b!7971722 ((_ is Union!21537) (regOne!43587 (regOne!43587 baseR!116)))) b!7972296))

(declare-fun b!7972299 () Bool)

(declare-fun e!4700486 () Bool)

(declare-fun tp!2376852 () Bool)

(assert (=> b!7972299 (= e!4700486 tp!2376852)))

(declare-fun b!7972297 () Bool)

(assert (=> b!7972297 (= e!4700486 tp_is_empty!53617)))

(declare-fun b!7972300 () Bool)

(declare-fun tp!2376854 () Bool)

(declare-fun tp!2376855 () Bool)

(assert (=> b!7972300 (= e!4700486 (and tp!2376854 tp!2376855))))

(declare-fun b!7972298 () Bool)

(declare-fun tp!2376851 () Bool)

(declare-fun tp!2376853 () Bool)

(assert (=> b!7972298 (= e!4700486 (and tp!2376851 tp!2376853))))

(assert (=> b!7971722 (= tp!2376589 e!4700486)))

(assert (= (and b!7971722 ((_ is ElementMatch!21537) (regTwo!43587 (regOne!43587 baseR!116)))) b!7972297))

(assert (= (and b!7971722 ((_ is Concat!30536) (regTwo!43587 (regOne!43587 baseR!116)))) b!7972298))

(assert (= (and b!7971722 ((_ is Star!21537) (regTwo!43587 (regOne!43587 baseR!116)))) b!7972299))

(assert (= (and b!7971722 ((_ is Union!21537) (regTwo!43587 (regOne!43587 baseR!116)))) b!7972300))

(declare-fun b!7972303 () Bool)

(declare-fun e!4700487 () Bool)

(declare-fun tp!2376857 () Bool)

(assert (=> b!7972303 (= e!4700487 tp!2376857)))

(declare-fun b!7972301 () Bool)

(assert (=> b!7972301 (= e!4700487 tp_is_empty!53617)))

(declare-fun b!7972304 () Bool)

(declare-fun tp!2376859 () Bool)

(declare-fun tp!2376860 () Bool)

(assert (=> b!7972304 (= e!4700487 (and tp!2376859 tp!2376860))))

(declare-fun b!7972302 () Bool)

(declare-fun tp!2376856 () Bool)

(declare-fun tp!2376858 () Bool)

(assert (=> b!7972302 (= e!4700487 (and tp!2376856 tp!2376858))))

(assert (=> b!7971737 (= tp!2376603 e!4700487)))

(assert (= (and b!7971737 ((_ is ElementMatch!21537) (regOne!43586 (reg!21866 baseR!116)))) b!7972301))

(assert (= (and b!7971737 ((_ is Concat!30536) (regOne!43586 (reg!21866 baseR!116)))) b!7972302))

(assert (= (and b!7971737 ((_ is Star!21537) (regOne!43586 (reg!21866 baseR!116)))) b!7972303))

(assert (= (and b!7971737 ((_ is Union!21537) (regOne!43586 (reg!21866 baseR!116)))) b!7972304))

(declare-fun b!7972307 () Bool)

(declare-fun e!4700488 () Bool)

(declare-fun tp!2376862 () Bool)

(assert (=> b!7972307 (= e!4700488 tp!2376862)))

(declare-fun b!7972305 () Bool)

(assert (=> b!7972305 (= e!4700488 tp_is_empty!53617)))

(declare-fun b!7972308 () Bool)

(declare-fun tp!2376864 () Bool)

(declare-fun tp!2376865 () Bool)

(assert (=> b!7972308 (= e!4700488 (and tp!2376864 tp!2376865))))

(declare-fun b!7972306 () Bool)

(declare-fun tp!2376861 () Bool)

(declare-fun tp!2376863 () Bool)

(assert (=> b!7972306 (= e!4700488 (and tp!2376861 tp!2376863))))

(assert (=> b!7971737 (= tp!2376605 e!4700488)))

(assert (= (and b!7971737 ((_ is ElementMatch!21537) (regTwo!43586 (reg!21866 baseR!116)))) b!7972305))

(assert (= (and b!7971737 ((_ is Concat!30536) (regTwo!43586 (reg!21866 baseR!116)))) b!7972306))

(assert (= (and b!7971737 ((_ is Star!21537) (regTwo!43586 (reg!21866 baseR!116)))) b!7972307))

(assert (= (and b!7971737 ((_ is Union!21537) (regTwo!43586 (reg!21866 baseR!116)))) b!7972308))

(declare-fun b!7972311 () Bool)

(declare-fun e!4700489 () Bool)

(declare-fun tp!2376867 () Bool)

(assert (=> b!7972311 (= e!4700489 tp!2376867)))

(declare-fun b!7972309 () Bool)

(assert (=> b!7972309 (= e!4700489 tp_is_empty!53617)))

(declare-fun b!7972312 () Bool)

(declare-fun tp!2376869 () Bool)

(declare-fun tp!2376870 () Bool)

(assert (=> b!7972312 (= e!4700489 (and tp!2376869 tp!2376870))))

(declare-fun b!7972310 () Bool)

(declare-fun tp!2376866 () Bool)

(declare-fun tp!2376868 () Bool)

(assert (=> b!7972310 (= e!4700489 (and tp!2376866 tp!2376868))))

(assert (=> b!7971763 (= tp!2376635 e!4700489)))

(assert (= (and b!7971763 ((_ is ElementMatch!21537) (reg!21866 (regTwo!43586 r!24602)))) b!7972309))

(assert (= (and b!7971763 ((_ is Concat!30536) (reg!21866 (regTwo!43586 r!24602)))) b!7972310))

(assert (= (and b!7971763 ((_ is Star!21537) (reg!21866 (regTwo!43586 r!24602)))) b!7972311))

(assert (= (and b!7971763 ((_ is Union!21537) (reg!21866 (regTwo!43586 r!24602)))) b!7972312))

(declare-fun b!7972315 () Bool)

(declare-fun e!4700490 () Bool)

(declare-fun tp!2376872 () Bool)

(assert (=> b!7972315 (= e!4700490 tp!2376872)))

(declare-fun b!7972313 () Bool)

(assert (=> b!7972313 (= e!4700490 tp_is_empty!53617)))

(declare-fun b!7972316 () Bool)

(declare-fun tp!2376874 () Bool)

(declare-fun tp!2376875 () Bool)

(assert (=> b!7972316 (= e!4700490 (and tp!2376874 tp!2376875))))

(declare-fun b!7972314 () Bool)

(declare-fun tp!2376871 () Bool)

(declare-fun tp!2376873 () Bool)

(assert (=> b!7972314 (= e!4700490 (and tp!2376871 tp!2376873))))

(assert (=> b!7971754 (= tp!2376624 e!4700490)))

(assert (= (and b!7971754 ((_ is ElementMatch!21537) (regOne!43586 (regTwo!43586 baseR!116)))) b!7972313))

(assert (= (and b!7971754 ((_ is Concat!30536) (regOne!43586 (regTwo!43586 baseR!116)))) b!7972314))

(assert (= (and b!7971754 ((_ is Star!21537) (regOne!43586 (regTwo!43586 baseR!116)))) b!7972315))

(assert (= (and b!7971754 ((_ is Union!21537) (regOne!43586 (regTwo!43586 baseR!116)))) b!7972316))

(declare-fun b!7972319 () Bool)

(declare-fun e!4700491 () Bool)

(declare-fun tp!2376877 () Bool)

(assert (=> b!7972319 (= e!4700491 tp!2376877)))

(declare-fun b!7972317 () Bool)

(assert (=> b!7972317 (= e!4700491 tp_is_empty!53617)))

(declare-fun b!7972320 () Bool)

(declare-fun tp!2376879 () Bool)

(declare-fun tp!2376880 () Bool)

(assert (=> b!7972320 (= e!4700491 (and tp!2376879 tp!2376880))))

(declare-fun b!7972318 () Bool)

(declare-fun tp!2376876 () Bool)

(declare-fun tp!2376878 () Bool)

(assert (=> b!7972318 (= e!4700491 (and tp!2376876 tp!2376878))))

(assert (=> b!7971754 (= tp!2376626 e!4700491)))

(assert (= (and b!7971754 ((_ is ElementMatch!21537) (regTwo!43586 (regTwo!43586 baseR!116)))) b!7972317))

(assert (= (and b!7971754 ((_ is Concat!30536) (regTwo!43586 (regTwo!43586 baseR!116)))) b!7972318))

(assert (= (and b!7971754 ((_ is Star!21537) (regTwo!43586 (regTwo!43586 baseR!116)))) b!7972319))

(assert (= (and b!7971754 ((_ is Union!21537) (regTwo!43586 (regTwo!43586 baseR!116)))) b!7972320))

(declare-fun b!7972323 () Bool)

(declare-fun e!4700492 () Bool)

(declare-fun tp!2376882 () Bool)

(assert (=> b!7972323 (= e!4700492 tp!2376882)))

(declare-fun b!7972321 () Bool)

(assert (=> b!7972321 (= e!4700492 tp_is_empty!53617)))

(declare-fun b!7972324 () Bool)

(declare-fun tp!2376884 () Bool)

(declare-fun tp!2376885 () Bool)

(assert (=> b!7972324 (= e!4700492 (and tp!2376884 tp!2376885))))

(declare-fun b!7972322 () Bool)

(declare-fun tp!2376881 () Bool)

(declare-fun tp!2376883 () Bool)

(assert (=> b!7972322 (= e!4700492 (and tp!2376881 tp!2376883))))

(assert (=> b!7971747 (= tp!2376616 e!4700492)))

(assert (= (and b!7971747 ((_ is ElementMatch!21537) (regOne!43587 (regTwo!43587 r!24602)))) b!7972321))

(assert (= (and b!7971747 ((_ is Concat!30536) (regOne!43587 (regTwo!43587 r!24602)))) b!7972322))

(assert (= (and b!7971747 ((_ is Star!21537) (regOne!43587 (regTwo!43587 r!24602)))) b!7972323))

(assert (= (and b!7971747 ((_ is Union!21537) (regOne!43587 (regTwo!43587 r!24602)))) b!7972324))

(declare-fun b!7972327 () Bool)

(declare-fun e!4700493 () Bool)

(declare-fun tp!2376887 () Bool)

(assert (=> b!7972327 (= e!4700493 tp!2376887)))

(declare-fun b!7972325 () Bool)

(assert (=> b!7972325 (= e!4700493 tp_is_empty!53617)))

(declare-fun b!7972328 () Bool)

(declare-fun tp!2376889 () Bool)

(declare-fun tp!2376890 () Bool)

(assert (=> b!7972328 (= e!4700493 (and tp!2376889 tp!2376890))))

(declare-fun b!7972326 () Bool)

(declare-fun tp!2376886 () Bool)

(declare-fun tp!2376888 () Bool)

(assert (=> b!7972326 (= e!4700493 (and tp!2376886 tp!2376888))))

(assert (=> b!7971747 (= tp!2376617 e!4700493)))

(assert (= (and b!7971747 ((_ is ElementMatch!21537) (regTwo!43587 (regTwo!43587 r!24602)))) b!7972325))

(assert (= (and b!7971747 ((_ is Concat!30536) (regTwo!43587 (regTwo!43587 r!24602)))) b!7972326))

(assert (= (and b!7971747 ((_ is Star!21537) (regTwo!43587 (regTwo!43587 r!24602)))) b!7972327))

(assert (= (and b!7971747 ((_ is Union!21537) (regTwo!43587 (regTwo!43587 r!24602)))) b!7972328))

(check-sat (not b!7972151) (not b!7972182) (not b!7972250) (not b!7972184) (not d!2380123) (not b!7971850) (not b!7972279) (not bm!739748) (not bm!739766) (not b!7972308) (not bm!739747) (not b!7972102) (not bm!739754) (not b!7972275) (not b!7971905) (not d!2379993) (not b!7972242) (not b!7972298) (not b!7972323) (not b!7972322) (not bm!739705) (not b!7972324) (not d!2380011) (not d!2379979) (not b!7972237) (not b!7972114) (not b!7972278) (not b!7972144) (not b!7972300) (not b!7971983) (not b!7971846) (not bm!739697) (not b!7972299) (not bm!739730) (not b!7972271) (not b!7971800) (not b!7972145) (not b!7971931) (not b!7972209) (not b!7972093) (not b!7972215) (not d!2380073) (not b!7972219) (not b!7972245) (not bm!739703) (not b!7972201) (not bm!739718) (not b!7972211) (not b!7972307) (not b!7972141) (not d!2380113) (not d!2379999) (not b!7972180) (not b!7972097) (not b!7971917) (not b!7972282) (not b!7972223) (not b!7972294) (not b!7971904) (not b!7972290) (not b!7972040) (not b!7972169) (not d!2380025) (not b!7972178) (not b!7972302) (not b!7972082) (not b!7971784) (not b!7972107) (not b!7972195) (not b!7971830) (not b!7972233) (not d!2380117) (not b!7972115) (not b!7972166) (not b!7972079) (not bm!739733) (not b!7972225) (not b!7972186) (not b!7972024) (not b!7972094) (not b!7972314) (not b!7972156) (not bm!739753) (not d!2380015) (not b!7972157) (not b!7972212) (not b!7972121) (not b!7972161) (not b!7972181) (not b!7972041) (not b!7972176) (not b!7972304) (not b!7972228) (not b!7972168) (not b!7972312) (not b!7972326) (not b!7971858) (not b!7972052) (not bm!739702) (not b!7972240) (not b!7972319) (not b!7971796) (not d!2380033) (not bm!739728) (not d!2380017) (not b!7971848) (not b!7972133) (not b!7972291) (not b!7972123) (not b!7972310) (not b!7972328) (not b!7972229) (not b!7972311) (not b!7971903) (not b!7972101) (not bm!739752) (not b!7972080) (not b!7971841) (not d!2380031) (not b!7972221) (not b!7972122) (not bm!739755) (not b!7972208) (not b!7972106) (not b!7972149) (not b!7972267) (not b!7971928) (not d!2380099) (not d!2380023) (not d!2380039) (not b!7972266) (not b!7971982) (not bm!739750) (not b!7971970) (not b!7972272) (not b!7971766) (not b!7972099) (not b!7972105) (not b!7972295) (not b!7972224) (not d!2379991) (not b!7972196) (not d!2380043) (not d!2380121) (not b!7971968) (not b!7972098) (not b!7972270) (not b!7972274) (not b!7972207) (not bm!739751) (not b!7972280) (not b!7972007) (not b!7971798) (not b!7972288) (not b!7972174) (not b!7972268) (not b!7972199) (not b!7972283) (not d!2380027) (not b!7972246) (not b!7971843) (not b!7972306) (not b!7971965) (not b!7971844) (not bm!739700) (not b!7971842) (not b!7972013) (not b!7972241) (not b!7972139) (not b!7971964) (not b!7971806) (not b!7971990) (not b!7972303) (not b!7972135) (not b!7971941) (not b!7972227) (not b!7971986) (not d!2380127) (not b!7971802) (not b!7972239) (not b!7971969) (not bm!739721) (not b!7972185) (not d!2380037) (not d!2380019) (not bm!739729) (not b!7972140) (not b!7972235) (not b!7972292) (not b!7972205) (not b!7972103) (not b!7972286) (not b!7971786) (not b!7972216) (not b!7972249) (not bm!739765) (not b!7971797) (not b!7972152) (not b!7972170) (not b!7971845) (not bm!739717) (not b!7972018) (not d!2379975) (not b!7972160) (not b!7972197) (not bm!739757) (not b!7971907) (not b!7972158) (not d!2379981) (not b!7972315) (not b!7972284) (not b!7972220) (not b!7972110) (not b!7972232) (not b!7971996) (not bm!739722) (not b!7972296) (not b!7971854) (not b!7971987) (not b!7972217) (not b!7972162) (not b!7972095) (not b!7972062) (not b!7972287) (not b!7972248) (not b!7972164) (not b!7971775) (not b!7972061) (not b!7972200) (not b!7972213) (not b!7972318) (not b!7972111) (not b!7972039) (not b!7972203) (not b!7971909) (not b!7972025) (not b!7972113) (not b!7972244) (not b!7971795) (not bm!739699) (not bm!739779) (not b!7971929) (not d!2380021) (not b!7972109) (not bm!739734) (not b!7972204) (not b!7972148) (not b!7972153) (not b!7972320) (not b!7972276) (not b!7972012) (not b!7972173) (not b!7972327) (not b!7972236) (not b!7972172) (not b!7972143) (not b!7972147) (not bm!739696) (not bm!739756) (not b!7972154) (not b!7972023) (not b!7971913) (not b!7972177) (not b!7972134) (not d!2380075) (not b!7972316) tp_is_empty!53617 (not bm!739716) (not b!7972165) (not d!2379955) (not b!7972231) (not bm!739778))
(check-sat)
