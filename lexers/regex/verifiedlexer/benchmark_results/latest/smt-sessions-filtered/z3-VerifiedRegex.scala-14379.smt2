; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749836 () Bool)

(assert start!749836)

(declare-fun b!7945265 () Bool)

(declare-fun e!4687589 () Bool)

(declare-datatypes ((C!43216 0))(
  ( (C!43217 (val!32156 Int)) )
))
(declare-datatypes ((Regex!21439 0))(
  ( (ElementMatch!21439 (c!1459526 C!43216)) (Concat!30438 (regOne!43390 Regex!21439) (regTwo!43390 Regex!21439)) (EmptyExpr!21439) (Star!21439 (reg!21768 Regex!21439)) (EmptyLang!21439) (Union!21439 (regOne!43391 Regex!21439) (regTwo!43391 Regex!21439)) )
))
(declare-fun r!24602 () Regex!21439)

(declare-fun validRegex!11743 (Regex!21439) Bool)

(assert (=> b!7945265 (= e!4687589 (not (validRegex!11743 r!24602)))))

(declare-fun baseR!116 () Regex!21439)

(declare-datatypes ((List!74668 0))(
  ( (Nil!74544) (Cons!74544 (h!80992 C!43216) (t!390411 List!74668)) )
))
(declare-fun testedP!447 () List!74668)

(declare-fun lt!2697880 () Regex!21439)

(declare-fun matchR!10720 (Regex!21439 List!74668) Bool)

(assert (=> b!7945265 (= (matchR!10720 baseR!116 testedP!447) (matchR!10720 lt!2697880 Nil!74544))))

(declare-datatypes ((Unit!169708 0))(
  ( (Unit!169709) )
))
(declare-fun lt!2697881 () Unit!169708)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!288 (Regex!21439 List!74668) Unit!169708)

(assert (=> b!7945265 (= lt!2697881 (lemmaMatchRIsSameAsWholeDerivativeAndNil!288 baseR!116 testedP!447))))

(declare-fun b!7945266 () Bool)

(declare-fun e!4687588 () Bool)

(declare-fun tp_is_empty!53421 () Bool)

(declare-fun tp!2363363 () Bool)

(assert (=> b!7945266 (= e!4687588 (and tp_is_empty!53421 tp!2363363))))

(declare-fun b!7945267 () Bool)

(declare-fun e!4687590 () Bool)

(declare-fun tp!2363368 () Bool)

(declare-fun tp!2363369 () Bool)

(assert (=> b!7945267 (= e!4687590 (and tp!2363368 tp!2363369))))

(declare-fun b!7945268 () Bool)

(declare-fun e!4687592 () Bool)

(assert (=> b!7945268 (= e!4687592 e!4687589)))

(declare-fun res!3151424 () Bool)

(assert (=> b!7945268 (=> (not res!3151424) (not e!4687589))))

(assert (=> b!7945268 (= res!3151424 (= lt!2697880 r!24602))))

(declare-fun derivative!625 (Regex!21439 List!74668) Regex!21439)

(assert (=> b!7945268 (= lt!2697880 (derivative!625 baseR!116 testedP!447))))

(declare-fun b!7945269 () Bool)

(assert (=> b!7945269 (= e!4687590 tp_is_empty!53421)))

(declare-fun b!7945270 () Bool)

(declare-fun res!3151423 () Bool)

(assert (=> b!7945270 (=> (not res!3151423) (not e!4687589))))

(declare-fun nullable!9550 (Regex!21439) Bool)

(assert (=> b!7945270 (= res!3151423 (nullable!9550 r!24602))))

(declare-fun b!7945271 () Bool)

(declare-fun res!3151420 () Bool)

(assert (=> b!7945271 (=> (not res!3151420) (not e!4687592))))

(declare-fun input!7927 () List!74668)

(declare-fun isPrefix!6539 (List!74668 List!74668) Bool)

(assert (=> b!7945271 (= res!3151420 (isPrefix!6539 testedP!447 input!7927))))

(declare-fun b!7945272 () Bool)

(declare-fun e!4687593 () Bool)

(declare-fun tp!2363371 () Bool)

(declare-fun tp!2363365 () Bool)

(assert (=> b!7945272 (= e!4687593 (and tp!2363371 tp!2363365))))

(declare-fun b!7945274 () Bool)

(declare-fun res!3151421 () Bool)

(assert (=> b!7945274 (=> (not res!3151421) (not e!4687589))))

(declare-fun isEmpty!42843 (List!74668) Bool)

(declare-datatypes ((tuple2!70540 0))(
  ( (tuple2!70541 (_1!38573 List!74668) (_2!38573 List!74668)) )
))
(declare-fun findLongestMatchInner!2220 (Regex!21439 List!74668 Int List!74668 List!74668 Int) tuple2!70540)

(declare-fun size!43375 (List!74668) Int)

(declare-fun getSuffix!3742 (List!74668 List!74668) List!74668)

(assert (=> b!7945274 (= res!3151421 (not (isEmpty!42843 (_1!38573 (findLongestMatchInner!2220 r!24602 testedP!447 (size!43375 testedP!447) (getSuffix!3742 input!7927 testedP!447) input!7927 (size!43375 input!7927))))))))

(declare-fun b!7945275 () Bool)

(declare-fun tp!2363372 () Bool)

(declare-fun tp!2363373 () Bool)

(assert (=> b!7945275 (= e!4687590 (and tp!2363372 tp!2363373))))

(declare-fun b!7945276 () Bool)

(declare-fun tp!2363367 () Bool)

(assert (=> b!7945276 (= e!4687590 tp!2363367)))

(declare-fun b!7945277 () Bool)

(declare-fun res!3151422 () Bool)

(assert (=> b!7945277 (=> (not res!3151422) (not e!4687589))))

(assert (=> b!7945277 (= res!3151422 (= testedP!447 input!7927))))

(declare-fun b!7945278 () Bool)

(declare-fun tp!2363364 () Bool)

(assert (=> b!7945278 (= e!4687593 tp!2363364)))

(declare-fun b!7945279 () Bool)

(declare-fun e!4687591 () Bool)

(declare-fun tp!2363370 () Bool)

(assert (=> b!7945279 (= e!4687591 (and tp_is_empty!53421 tp!2363370))))

(declare-fun b!7945280 () Bool)

(assert (=> b!7945280 (= e!4687593 tp_is_empty!53421)))

(declare-fun b!7945273 () Bool)

(declare-fun tp!2363366 () Bool)

(declare-fun tp!2363374 () Bool)

(assert (=> b!7945273 (= e!4687593 (and tp!2363366 tp!2363374))))

(declare-fun res!3151419 () Bool)

(assert (=> start!749836 (=> (not res!3151419) (not e!4687592))))

(assert (=> start!749836 (= res!3151419 (validRegex!11743 baseR!116))))

(assert (=> start!749836 e!4687592))

(assert (=> start!749836 e!4687590))

(assert (=> start!749836 e!4687588))

(assert (=> start!749836 e!4687591))

(assert (=> start!749836 e!4687593))

(assert (= (and start!749836 res!3151419) b!7945271))

(assert (= (and b!7945271 res!3151420) b!7945268))

(assert (= (and b!7945268 res!3151424) b!7945274))

(assert (= (and b!7945274 res!3151421) b!7945277))

(assert (= (and b!7945277 res!3151422) b!7945270))

(assert (= (and b!7945270 res!3151423) b!7945265))

(get-info :version)

(assert (= (and start!749836 ((_ is ElementMatch!21439) baseR!116)) b!7945269))

(assert (= (and start!749836 ((_ is Concat!30438) baseR!116)) b!7945267))

(assert (= (and start!749836 ((_ is Star!21439) baseR!116)) b!7945276))

(assert (= (and start!749836 ((_ is Union!21439) baseR!116)) b!7945275))

(assert (= (and start!749836 ((_ is Cons!74544) testedP!447)) b!7945266))

(assert (= (and start!749836 ((_ is Cons!74544) input!7927)) b!7945279))

(assert (= (and start!749836 ((_ is ElementMatch!21439) r!24602)) b!7945280))

(assert (= (and start!749836 ((_ is Concat!30438) r!24602)) b!7945273))

(assert (= (and start!749836 ((_ is Star!21439) r!24602)) b!7945278))

(assert (= (and start!749836 ((_ is Union!21439) r!24602)) b!7945272))

(declare-fun m!8331976 () Bool)

(assert (=> b!7945274 m!8331976))

(declare-fun m!8331978 () Bool)

(assert (=> b!7945274 m!8331978))

(declare-fun m!8331980 () Bool)

(assert (=> b!7945274 m!8331980))

(assert (=> b!7945274 m!8331976))

(declare-fun m!8331982 () Bool)

(assert (=> b!7945274 m!8331982))

(assert (=> b!7945274 m!8331978))

(declare-fun m!8331984 () Bool)

(assert (=> b!7945274 m!8331984))

(assert (=> b!7945274 m!8331980))

(declare-fun m!8331986 () Bool)

(assert (=> b!7945268 m!8331986))

(declare-fun m!8331988 () Bool)

(assert (=> b!7945271 m!8331988))

(declare-fun m!8331990 () Bool)

(assert (=> start!749836 m!8331990))

(declare-fun m!8331992 () Bool)

(assert (=> b!7945265 m!8331992))

(declare-fun m!8331994 () Bool)

(assert (=> b!7945265 m!8331994))

(declare-fun m!8331996 () Bool)

(assert (=> b!7945265 m!8331996))

(declare-fun m!8331998 () Bool)

(assert (=> b!7945265 m!8331998))

(declare-fun m!8332000 () Bool)

(assert (=> b!7945270 m!8332000))

(check-sat (not b!7945271) (not b!7945279) (not b!7945275) (not b!7945272) (not b!7945278) (not b!7945270) (not b!7945265) (not b!7945273) (not b!7945267) (not b!7945274) (not start!749836) tp_is_empty!53421 (not b!7945268) (not b!7945266) (not b!7945276))
(check-sat)
(get-model)

(declare-fun d!2375384 () Bool)

(declare-fun lt!2697884 () Regex!21439)

(assert (=> d!2375384 (validRegex!11743 lt!2697884)))

(declare-fun e!4687596 () Regex!21439)

(assert (=> d!2375384 (= lt!2697884 e!4687596)))

(declare-fun c!1459529 () Bool)

(assert (=> d!2375384 (= c!1459529 ((_ is Cons!74544) testedP!447))))

(assert (=> d!2375384 (validRegex!11743 baseR!116)))

(assert (=> d!2375384 (= (derivative!625 baseR!116 testedP!447) lt!2697884)))

(declare-fun b!7945285 () Bool)

(declare-fun derivativeStep!6482 (Regex!21439 C!43216) Regex!21439)

(assert (=> b!7945285 (= e!4687596 (derivative!625 (derivativeStep!6482 baseR!116 (h!80992 testedP!447)) (t!390411 testedP!447)))))

(declare-fun b!7945286 () Bool)

(assert (=> b!7945286 (= e!4687596 baseR!116)))

(assert (= (and d!2375384 c!1459529) b!7945285))

(assert (= (and d!2375384 (not c!1459529)) b!7945286))

(declare-fun m!8332002 () Bool)

(assert (=> d!2375384 m!8332002))

(assert (=> d!2375384 m!8331990))

(declare-fun m!8332004 () Bool)

(assert (=> b!7945285 m!8332004))

(assert (=> b!7945285 m!8332004))

(declare-fun m!8332006 () Bool)

(assert (=> b!7945285 m!8332006))

(assert (=> b!7945268 d!2375384))

(declare-fun d!2375386 () Bool)

(declare-fun lt!2697887 () Int)

(assert (=> d!2375386 (>= lt!2697887 0)))

(declare-fun e!4687599 () Int)

(assert (=> d!2375386 (= lt!2697887 e!4687599)))

(declare-fun c!1459532 () Bool)

(assert (=> d!2375386 (= c!1459532 ((_ is Nil!74544) input!7927))))

(assert (=> d!2375386 (= (size!43375 input!7927) lt!2697887)))

(declare-fun b!7945291 () Bool)

(assert (=> b!7945291 (= e!4687599 0)))

(declare-fun b!7945292 () Bool)

(assert (=> b!7945292 (= e!4687599 (+ 1 (size!43375 (t!390411 input!7927))))))

(assert (= (and d!2375386 c!1459532) b!7945291))

(assert (= (and d!2375386 (not c!1459532)) b!7945292))

(declare-fun m!8332008 () Bool)

(assert (=> b!7945292 m!8332008))

(assert (=> b!7945274 d!2375386))

(declare-fun d!2375388 () Bool)

(declare-fun lt!2697890 () List!74668)

(declare-fun ++!18318 (List!74668 List!74668) List!74668)

(assert (=> d!2375388 (= (++!18318 testedP!447 lt!2697890) input!7927)))

(declare-fun e!4687602 () List!74668)

(assert (=> d!2375388 (= lt!2697890 e!4687602)))

(declare-fun c!1459535 () Bool)

(assert (=> d!2375388 (= c!1459535 ((_ is Cons!74544) testedP!447))))

(assert (=> d!2375388 (>= (size!43375 input!7927) (size!43375 testedP!447))))

(assert (=> d!2375388 (= (getSuffix!3742 input!7927 testedP!447) lt!2697890)))

(declare-fun b!7945297 () Bool)

(declare-fun tail!15747 (List!74668) List!74668)

(assert (=> b!7945297 (= e!4687602 (getSuffix!3742 (tail!15747 input!7927) (t!390411 testedP!447)))))

(declare-fun b!7945298 () Bool)

(assert (=> b!7945298 (= e!4687602 input!7927)))

(assert (= (and d!2375388 c!1459535) b!7945297))

(assert (= (and d!2375388 (not c!1459535)) b!7945298))

(declare-fun m!8332010 () Bool)

(assert (=> d!2375388 m!8332010))

(assert (=> d!2375388 m!8331976))

(assert (=> d!2375388 m!8331978))

(declare-fun m!8332012 () Bool)

(assert (=> b!7945297 m!8332012))

(assert (=> b!7945297 m!8332012))

(declare-fun m!8332014 () Bool)

(assert (=> b!7945297 m!8332014))

(assert (=> b!7945274 d!2375388))

(declare-fun d!2375390 () Bool)

(assert (=> d!2375390 (= (isEmpty!42843 (_1!38573 (findLongestMatchInner!2220 r!24602 testedP!447 (size!43375 testedP!447) (getSuffix!3742 input!7927 testedP!447) input!7927 (size!43375 input!7927)))) ((_ is Nil!74544) (_1!38573 (findLongestMatchInner!2220 r!24602 testedP!447 (size!43375 testedP!447) (getSuffix!3742 input!7927 testedP!447) input!7927 (size!43375 input!7927)))))))

(assert (=> b!7945274 d!2375390))

(declare-fun d!2375394 () Bool)

(declare-fun lt!2697891 () Int)

(assert (=> d!2375394 (>= lt!2697891 0)))

(declare-fun e!4687603 () Int)

(assert (=> d!2375394 (= lt!2697891 e!4687603)))

(declare-fun c!1459536 () Bool)

(assert (=> d!2375394 (= c!1459536 ((_ is Nil!74544) testedP!447))))

(assert (=> d!2375394 (= (size!43375 testedP!447) lt!2697891)))

(declare-fun b!7945299 () Bool)

(assert (=> b!7945299 (= e!4687603 0)))

(declare-fun b!7945300 () Bool)

(assert (=> b!7945300 (= e!4687603 (+ 1 (size!43375 (t!390411 testedP!447))))))

(assert (= (and d!2375394 c!1459536) b!7945299))

(assert (= (and d!2375394 (not c!1459536)) b!7945300))

(declare-fun m!8332016 () Bool)

(assert (=> b!7945300 m!8332016))

(assert (=> b!7945274 d!2375394))

(declare-fun b!7945435 () Bool)

(declare-fun e!4687689 () Bool)

(declare-fun lt!2697982 () tuple2!70540)

(assert (=> b!7945435 (= e!4687689 (>= (size!43375 (_1!38573 lt!2697982)) (size!43375 testedP!447)))))

(declare-fun b!7945436 () Bool)

(declare-fun c!1459578 () Bool)

(declare-fun call!736386 () Bool)

(assert (=> b!7945436 (= c!1459578 call!736386)))

(declare-fun lt!2697974 () Unit!169708)

(declare-fun lt!2697978 () Unit!169708)

(assert (=> b!7945436 (= lt!2697974 lt!2697978)))

(assert (=> b!7945436 (= input!7927 testedP!447)))

(declare-fun call!736391 () Unit!169708)

(assert (=> b!7945436 (= lt!2697978 call!736391)))

(declare-fun lt!2697965 () Unit!169708)

(declare-fun lt!2697984 () Unit!169708)

(assert (=> b!7945436 (= lt!2697965 lt!2697984)))

(declare-fun call!736389 () Bool)

(assert (=> b!7945436 call!736389))

(declare-fun call!736390 () Unit!169708)

(assert (=> b!7945436 (= lt!2697984 call!736390)))

(declare-fun e!4687687 () tuple2!70540)

(declare-fun e!4687684 () tuple2!70540)

(assert (=> b!7945436 (= e!4687687 e!4687684)))

(declare-fun b!7945437 () Bool)

(declare-fun e!4687688 () Bool)

(assert (=> b!7945437 (= e!4687688 e!4687689)))

(declare-fun res!3151482 () Bool)

(assert (=> b!7945437 (=> res!3151482 e!4687689)))

(assert (=> b!7945437 (= res!3151482 (isEmpty!42843 (_1!38573 lt!2697982)))))

(declare-fun b!7945438 () Bool)

(declare-fun e!4687683 () Unit!169708)

(declare-fun Unit!169710 () Unit!169708)

(assert (=> b!7945438 (= e!4687683 Unit!169710)))

(declare-fun b!7945439 () Bool)

(declare-fun e!4687686 () tuple2!70540)

(declare-fun e!4687690 () tuple2!70540)

(assert (=> b!7945439 (= e!4687686 e!4687690)))

(declare-fun lt!2697979 () tuple2!70540)

(declare-fun call!736387 () tuple2!70540)

(assert (=> b!7945439 (= lt!2697979 call!736387)))

(declare-fun c!1459581 () Bool)

(assert (=> b!7945439 (= c!1459581 (isEmpty!42843 (_1!38573 lt!2697979)))))

(declare-fun bm!736380 () Bool)

(assert (=> bm!736380 (= call!736389 (isPrefix!6539 input!7927 input!7927))))

(declare-fun bm!736381 () Bool)

(declare-fun call!736388 () C!43216)

(declare-fun head!16204 (List!74668) C!43216)

(assert (=> bm!736381 (= call!736388 (head!16204 (getSuffix!3742 input!7927 testedP!447)))))

(declare-fun bm!736382 () Bool)

(declare-fun call!736392 () Regex!21439)

(assert (=> bm!736382 (= call!736392 (derivativeStep!6482 r!24602 call!736388))))

(declare-fun b!7945440 () Bool)

(assert (=> b!7945440 (= e!4687686 call!736387)))

(declare-fun b!7945441 () Bool)

(assert (=> b!7945441 (= e!4687690 (tuple2!70541 testedP!447 (getSuffix!3742 input!7927 testedP!447)))))

(declare-fun b!7945442 () Bool)

(assert (=> b!7945442 (= e!4687684 (tuple2!70541 Nil!74544 input!7927))))

(declare-fun b!7945443 () Bool)

(declare-fun e!4687685 () tuple2!70540)

(assert (=> b!7945443 (= e!4687685 (tuple2!70541 Nil!74544 input!7927))))

(declare-fun b!7945444 () Bool)

(assert (=> b!7945444 (= e!4687684 (tuple2!70541 testedP!447 Nil!74544))))

(declare-fun b!7945445 () Bool)

(declare-fun c!1459576 () Bool)

(assert (=> b!7945445 (= c!1459576 call!736386)))

(declare-fun lt!2697970 () Unit!169708)

(declare-fun lt!2697972 () Unit!169708)

(assert (=> b!7945445 (= lt!2697970 lt!2697972)))

(declare-fun lt!2697973 () C!43216)

(declare-fun lt!2697963 () List!74668)

(assert (=> b!7945445 (= (++!18318 (++!18318 testedP!447 (Cons!74544 lt!2697973 Nil!74544)) lt!2697963) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3503 (List!74668 C!43216 List!74668 List!74668) Unit!169708)

(assert (=> b!7945445 (= lt!2697972 (lemmaMoveElementToOtherListKeepsConcatEq!3503 testedP!447 lt!2697973 lt!2697963 input!7927))))

(assert (=> b!7945445 (= lt!2697963 (tail!15747 (getSuffix!3742 input!7927 testedP!447)))))

(assert (=> b!7945445 (= lt!2697973 (head!16204 (getSuffix!3742 input!7927 testedP!447)))))

(declare-fun lt!2697980 () Unit!169708)

(declare-fun lt!2697985 () Unit!169708)

(assert (=> b!7945445 (= lt!2697980 lt!2697985)))

(assert (=> b!7945445 (isPrefix!6539 (++!18318 testedP!447 (Cons!74544 (head!16204 (getSuffix!3742 input!7927 testedP!447)) Nil!74544)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1281 (List!74668 List!74668) Unit!169708)

(assert (=> b!7945445 (= lt!2697985 (lemmaAddHeadSuffixToPrefixStillPrefix!1281 testedP!447 input!7927))))

(declare-fun lt!2697981 () Unit!169708)

(declare-fun lt!2697986 () Unit!169708)

(assert (=> b!7945445 (= lt!2697981 lt!2697986)))

(assert (=> b!7945445 (= lt!2697986 (lemmaAddHeadSuffixToPrefixStillPrefix!1281 testedP!447 input!7927))))

(declare-fun lt!2697988 () List!74668)

(assert (=> b!7945445 (= lt!2697988 (++!18318 testedP!447 (Cons!74544 (head!16204 (getSuffix!3742 input!7927 testedP!447)) Nil!74544)))))

(declare-fun lt!2697976 () Unit!169708)

(assert (=> b!7945445 (= lt!2697976 e!4687683)))

(declare-fun c!1459580 () Bool)

(assert (=> b!7945445 (= c!1459580 (= (size!43375 testedP!447) (size!43375 input!7927)))))

(declare-fun lt!2697966 () Unit!169708)

(declare-fun lt!2697983 () Unit!169708)

(assert (=> b!7945445 (= lt!2697966 lt!2697983)))

(assert (=> b!7945445 (<= (size!43375 testedP!447) (size!43375 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1061 (List!74668 List!74668) Unit!169708)

(assert (=> b!7945445 (= lt!2697983 (lemmaIsPrefixThenSmallerEqSize!1061 testedP!447 input!7927))))

(assert (=> b!7945445 (= e!4687687 e!4687686)))

(declare-fun d!2375396 () Bool)

(assert (=> d!2375396 e!4687688))

(declare-fun res!3151481 () Bool)

(assert (=> d!2375396 (=> (not res!3151481) (not e!4687688))))

(assert (=> d!2375396 (= res!3151481 (= (++!18318 (_1!38573 lt!2697982) (_2!38573 lt!2697982)) input!7927))))

(assert (=> d!2375396 (= lt!2697982 e!4687685)))

(declare-fun c!1459579 () Bool)

(declare-fun lostCause!1947 (Regex!21439) Bool)

(assert (=> d!2375396 (= c!1459579 (lostCause!1947 r!24602))))

(declare-fun lt!2697967 () Unit!169708)

(declare-fun Unit!169711 () Unit!169708)

(assert (=> d!2375396 (= lt!2697967 Unit!169711)))

(assert (=> d!2375396 (= (getSuffix!3742 input!7927 testedP!447) (getSuffix!3742 input!7927 testedP!447))))

(declare-fun lt!2697971 () Unit!169708)

(declare-fun lt!2697987 () Unit!169708)

(assert (=> d!2375396 (= lt!2697971 lt!2697987)))

(declare-fun lt!2697964 () List!74668)

(assert (=> d!2375396 (= (getSuffix!3742 input!7927 testedP!447) lt!2697964)))

(declare-fun lemmaSamePrefixThenSameSuffix!2963 (List!74668 List!74668 List!74668 List!74668 List!74668) Unit!169708)

(assert (=> d!2375396 (= lt!2697987 (lemmaSamePrefixThenSameSuffix!2963 testedP!447 (getSuffix!3742 input!7927 testedP!447) testedP!447 lt!2697964 input!7927))))

(assert (=> d!2375396 (= lt!2697964 (getSuffix!3742 input!7927 testedP!447))))

(declare-fun lt!2697989 () Unit!169708)

(declare-fun lt!2697968 () Unit!169708)

(assert (=> d!2375396 (= lt!2697989 lt!2697968)))

(assert (=> d!2375396 (isPrefix!6539 testedP!447 (++!18318 testedP!447 (getSuffix!3742 input!7927 testedP!447)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3825 (List!74668 List!74668) Unit!169708)

(assert (=> d!2375396 (= lt!2697968 (lemmaConcatTwoListThenFirstIsPrefix!3825 testedP!447 (getSuffix!3742 input!7927 testedP!447)))))

(assert (=> d!2375396 (validRegex!11743 r!24602)))

(assert (=> d!2375396 (= (findLongestMatchInner!2220 r!24602 testedP!447 (size!43375 testedP!447) (getSuffix!3742 input!7927 testedP!447) input!7927 (size!43375 input!7927)) lt!2697982)))

(declare-fun bm!736383 () Bool)

(declare-fun call!736385 () List!74668)

(assert (=> bm!736383 (= call!736385 (tail!15747 (getSuffix!3742 input!7927 testedP!447)))))

(declare-fun bm!736384 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1596 (List!74668 List!74668 List!74668) Unit!169708)

(assert (=> bm!736384 (= call!736391 (lemmaIsPrefixSameLengthThenSameList!1596 input!7927 testedP!447 input!7927))))

(declare-fun bm!736385 () Bool)

(assert (=> bm!736385 (= call!736386 (nullable!9550 r!24602))))

(declare-fun b!7945446 () Bool)

(declare-fun Unit!169712 () Unit!169708)

(assert (=> b!7945446 (= e!4687683 Unit!169712)))

(declare-fun lt!2697969 () Unit!169708)

(assert (=> b!7945446 (= lt!2697969 call!736390)))

(assert (=> b!7945446 call!736389))

(declare-fun lt!2697962 () Unit!169708)

(assert (=> b!7945446 (= lt!2697962 lt!2697969)))

(declare-fun lt!2697977 () Unit!169708)

(assert (=> b!7945446 (= lt!2697977 call!736391)))

(assert (=> b!7945446 (= input!7927 testedP!447)))

(declare-fun lt!2697975 () Unit!169708)

(assert (=> b!7945446 (= lt!2697975 lt!2697977)))

(assert (=> b!7945446 false))

(declare-fun bm!736386 () Bool)

(assert (=> bm!736386 (= call!736387 (findLongestMatchInner!2220 call!736392 lt!2697988 (+ (size!43375 testedP!447) 1) call!736385 input!7927 (size!43375 input!7927)))))

(declare-fun b!7945447 () Bool)

(assert (=> b!7945447 (= e!4687685 e!4687687)))

(declare-fun c!1459577 () Bool)

(assert (=> b!7945447 (= c!1459577 (= (size!43375 testedP!447) (size!43375 input!7927)))))

(declare-fun bm!736387 () Bool)

(declare-fun lemmaIsPrefixRefl!4014 (List!74668 List!74668) Unit!169708)

(assert (=> bm!736387 (= call!736390 (lemmaIsPrefixRefl!4014 input!7927 input!7927))))

(declare-fun b!7945448 () Bool)

(assert (=> b!7945448 (= e!4687690 lt!2697979)))

(assert (= (and d!2375396 c!1459579) b!7945443))

(assert (= (and d!2375396 (not c!1459579)) b!7945447))

(assert (= (and b!7945447 c!1459577) b!7945436))

(assert (= (and b!7945447 (not c!1459577)) b!7945445))

(assert (= (and b!7945436 c!1459578) b!7945444))

(assert (= (and b!7945436 (not c!1459578)) b!7945442))

(assert (= (and b!7945445 c!1459580) b!7945446))

(assert (= (and b!7945445 (not c!1459580)) b!7945438))

(assert (= (and b!7945445 c!1459576) b!7945439))

(assert (= (and b!7945445 (not c!1459576)) b!7945440))

(assert (= (and b!7945439 c!1459581) b!7945441))

(assert (= (and b!7945439 (not c!1459581)) b!7945448))

(assert (= (or b!7945439 b!7945440) bm!736381))

(assert (= (or b!7945439 b!7945440) bm!736383))

(assert (= (or b!7945439 b!7945440) bm!736382))

(assert (= (or b!7945439 b!7945440) bm!736386))

(assert (= (or b!7945436 b!7945445) bm!736385))

(assert (= (or b!7945436 b!7945446) bm!736384))

(assert (= (or b!7945436 b!7945446) bm!736387))

(assert (= (or b!7945436 b!7945446) bm!736380))

(assert (= (and d!2375396 res!3151481) b!7945437))

(assert (= (and b!7945437 (not res!3151482)) b!7945435))

(declare-fun m!8332076 () Bool)

(assert (=> b!7945437 m!8332076))

(declare-fun m!8332078 () Bool)

(assert (=> bm!736380 m!8332078))

(declare-fun m!8332080 () Bool)

(assert (=> bm!736387 m!8332080))

(assert (=> bm!736383 m!8331980))

(declare-fun m!8332082 () Bool)

(assert (=> bm!736383 m!8332082))

(declare-fun m!8332084 () Bool)

(assert (=> b!7945445 m!8332084))

(declare-fun m!8332086 () Bool)

(assert (=> b!7945445 m!8332086))

(assert (=> b!7945445 m!8331976))

(declare-fun m!8332088 () Bool)

(assert (=> b!7945445 m!8332088))

(assert (=> b!7945445 m!8331978))

(assert (=> b!7945445 m!8331980))

(assert (=> b!7945445 m!8331980))

(declare-fun m!8332090 () Bool)

(assert (=> b!7945445 m!8332090))

(assert (=> b!7945445 m!8331980))

(assert (=> b!7945445 m!8332090))

(assert (=> b!7945445 m!8332084))

(assert (=> b!7945445 m!8331980))

(assert (=> b!7945445 m!8332082))

(assert (=> b!7945445 m!8332084))

(declare-fun m!8332092 () Bool)

(assert (=> b!7945445 m!8332092))

(assert (=> b!7945445 m!8332092))

(declare-fun m!8332094 () Bool)

(assert (=> b!7945445 m!8332094))

(declare-fun m!8332096 () Bool)

(assert (=> b!7945445 m!8332096))

(declare-fun m!8332098 () Bool)

(assert (=> b!7945445 m!8332098))

(declare-fun m!8332100 () Bool)

(assert (=> bm!736382 m!8332100))

(assert (=> bm!736381 m!8331980))

(assert (=> bm!736381 m!8332090))

(assert (=> bm!736386 m!8331976))

(declare-fun m!8332102 () Bool)

(assert (=> bm!736386 m!8332102))

(declare-fun m!8332104 () Bool)

(assert (=> b!7945435 m!8332104))

(assert (=> b!7945435 m!8331978))

(declare-fun m!8332106 () Bool)

(assert (=> d!2375396 m!8332106))

(assert (=> d!2375396 m!8331980))

(assert (=> d!2375396 m!8331980))

(declare-fun m!8332108 () Bool)

(assert (=> d!2375396 m!8332108))

(assert (=> d!2375396 m!8331980))

(declare-fun m!8332110 () Bool)

(assert (=> d!2375396 m!8332110))

(declare-fun m!8332112 () Bool)

(assert (=> d!2375396 m!8332112))

(assert (=> d!2375396 m!8331992))

(assert (=> d!2375396 m!8332108))

(declare-fun m!8332114 () Bool)

(assert (=> d!2375396 m!8332114))

(assert (=> d!2375396 m!8331980))

(declare-fun m!8332116 () Bool)

(assert (=> d!2375396 m!8332116))

(assert (=> bm!736385 m!8332000))

(declare-fun m!8332118 () Bool)

(assert (=> bm!736384 m!8332118))

(declare-fun m!8332120 () Bool)

(assert (=> b!7945439 m!8332120))

(assert (=> b!7945274 d!2375396))

(declare-fun b!7945467 () Bool)

(declare-fun e!4687710 () Bool)

(declare-fun e!4687705 () Bool)

(assert (=> b!7945467 (= e!4687710 e!4687705)))

(declare-fun res!3151496 () Bool)

(assert (=> b!7945467 (= res!3151496 (not (nullable!9550 (reg!21768 baseR!116))))))

(assert (=> b!7945467 (=> (not res!3151496) (not e!4687705))))

(declare-fun b!7945468 () Bool)

(declare-fun e!4687709 () Bool)

(declare-fun call!736399 () Bool)

(assert (=> b!7945468 (= e!4687709 call!736399)))

(declare-fun bm!736394 () Bool)

(declare-fun call!736401 () Bool)

(declare-fun c!1459587 () Bool)

(declare-fun c!1459586 () Bool)

(assert (=> bm!736394 (= call!736401 (validRegex!11743 (ite c!1459586 (reg!21768 baseR!116) (ite c!1459587 (regOne!43391 baseR!116) (regOne!43390 baseR!116)))))))

(declare-fun b!7945469 () Bool)

(declare-fun e!4687711 () Bool)

(assert (=> b!7945469 (= e!4687710 e!4687711)))

(assert (=> b!7945469 (= c!1459587 ((_ is Union!21439) baseR!116))))

(declare-fun b!7945470 () Bool)

(declare-fun e!4687708 () Bool)

(assert (=> b!7945470 (= e!4687708 call!736399)))

(declare-fun bm!736395 () Bool)

(assert (=> bm!736395 (= call!736399 (validRegex!11743 (ite c!1459587 (regTwo!43391 baseR!116) (regTwo!43390 baseR!116))))))

(declare-fun b!7945471 () Bool)

(declare-fun res!3151497 () Bool)

(assert (=> b!7945471 (=> (not res!3151497) (not e!4687708))))

(declare-fun call!736400 () Bool)

(assert (=> b!7945471 (= res!3151497 call!736400)))

(assert (=> b!7945471 (= e!4687711 e!4687708)))

(declare-fun b!7945472 () Bool)

(declare-fun e!4687706 () Bool)

(assert (=> b!7945472 (= e!4687706 e!4687709)))

(declare-fun res!3151495 () Bool)

(assert (=> b!7945472 (=> (not res!3151495) (not e!4687709))))

(assert (=> b!7945472 (= res!3151495 call!736400)))

(declare-fun b!7945473 () Bool)

(declare-fun e!4687707 () Bool)

(assert (=> b!7945473 (= e!4687707 e!4687710)))

(assert (=> b!7945473 (= c!1459586 ((_ is Star!21439) baseR!116))))

(declare-fun bm!736396 () Bool)

(assert (=> bm!736396 (= call!736400 call!736401)))

(declare-fun b!7945474 () Bool)

(declare-fun res!3151494 () Bool)

(assert (=> b!7945474 (=> res!3151494 e!4687706)))

(assert (=> b!7945474 (= res!3151494 (not ((_ is Concat!30438) baseR!116)))))

(assert (=> b!7945474 (= e!4687711 e!4687706)))

(declare-fun d!2375418 () Bool)

(declare-fun res!3151493 () Bool)

(assert (=> d!2375418 (=> res!3151493 e!4687707)))

(assert (=> d!2375418 (= res!3151493 ((_ is ElementMatch!21439) baseR!116))))

(assert (=> d!2375418 (= (validRegex!11743 baseR!116) e!4687707)))

(declare-fun b!7945475 () Bool)

(assert (=> b!7945475 (= e!4687705 call!736401)))

(assert (= (and d!2375418 (not res!3151493)) b!7945473))

(assert (= (and b!7945473 c!1459586) b!7945467))

(assert (= (and b!7945473 (not c!1459586)) b!7945469))

(assert (= (and b!7945467 res!3151496) b!7945475))

(assert (= (and b!7945469 c!1459587) b!7945471))

(assert (= (and b!7945469 (not c!1459587)) b!7945474))

(assert (= (and b!7945471 res!3151497) b!7945470))

(assert (= (and b!7945474 (not res!3151494)) b!7945472))

(assert (= (and b!7945472 res!3151495) b!7945468))

(assert (= (or b!7945470 b!7945468) bm!736395))

(assert (= (or b!7945471 b!7945472) bm!736396))

(assert (= (or b!7945475 bm!736396) bm!736394))

(declare-fun m!8332122 () Bool)

(assert (=> b!7945467 m!8332122))

(declare-fun m!8332124 () Bool)

(assert (=> bm!736394 m!8332124))

(declare-fun m!8332126 () Bool)

(assert (=> bm!736395 m!8332126))

(assert (=> start!749836 d!2375418))

(declare-fun b!7945476 () Bool)

(declare-fun e!4687717 () Bool)

(declare-fun e!4687712 () Bool)

(assert (=> b!7945476 (= e!4687717 e!4687712)))

(declare-fun res!3151501 () Bool)

(assert (=> b!7945476 (= res!3151501 (not (nullable!9550 (reg!21768 r!24602))))))

(assert (=> b!7945476 (=> (not res!3151501) (not e!4687712))))

(declare-fun b!7945477 () Bool)

(declare-fun e!4687716 () Bool)

(declare-fun call!736402 () Bool)

(assert (=> b!7945477 (= e!4687716 call!736402)))

(declare-fun c!1459589 () Bool)

(declare-fun bm!736397 () Bool)

(declare-fun c!1459588 () Bool)

(declare-fun call!736404 () Bool)

(assert (=> bm!736397 (= call!736404 (validRegex!11743 (ite c!1459588 (reg!21768 r!24602) (ite c!1459589 (regOne!43391 r!24602) (regOne!43390 r!24602)))))))

(declare-fun b!7945478 () Bool)

(declare-fun e!4687718 () Bool)

(assert (=> b!7945478 (= e!4687717 e!4687718)))

(assert (=> b!7945478 (= c!1459589 ((_ is Union!21439) r!24602))))

(declare-fun b!7945479 () Bool)

(declare-fun e!4687715 () Bool)

(assert (=> b!7945479 (= e!4687715 call!736402)))

(declare-fun bm!736398 () Bool)

(assert (=> bm!736398 (= call!736402 (validRegex!11743 (ite c!1459589 (regTwo!43391 r!24602) (regTwo!43390 r!24602))))))

(declare-fun b!7945480 () Bool)

(declare-fun res!3151502 () Bool)

(assert (=> b!7945480 (=> (not res!3151502) (not e!4687715))))

(declare-fun call!736403 () Bool)

(assert (=> b!7945480 (= res!3151502 call!736403)))

(assert (=> b!7945480 (= e!4687718 e!4687715)))

(declare-fun b!7945481 () Bool)

(declare-fun e!4687713 () Bool)

(assert (=> b!7945481 (= e!4687713 e!4687716)))

(declare-fun res!3151500 () Bool)

(assert (=> b!7945481 (=> (not res!3151500) (not e!4687716))))

(assert (=> b!7945481 (= res!3151500 call!736403)))

(declare-fun b!7945482 () Bool)

(declare-fun e!4687714 () Bool)

(assert (=> b!7945482 (= e!4687714 e!4687717)))

(assert (=> b!7945482 (= c!1459588 ((_ is Star!21439) r!24602))))

(declare-fun bm!736399 () Bool)

(assert (=> bm!736399 (= call!736403 call!736404)))

(declare-fun b!7945483 () Bool)

(declare-fun res!3151499 () Bool)

(assert (=> b!7945483 (=> res!3151499 e!4687713)))

(assert (=> b!7945483 (= res!3151499 (not ((_ is Concat!30438) r!24602)))))

(assert (=> b!7945483 (= e!4687718 e!4687713)))

(declare-fun d!2375420 () Bool)

(declare-fun res!3151498 () Bool)

(assert (=> d!2375420 (=> res!3151498 e!4687714)))

(assert (=> d!2375420 (= res!3151498 ((_ is ElementMatch!21439) r!24602))))

(assert (=> d!2375420 (= (validRegex!11743 r!24602) e!4687714)))

(declare-fun b!7945484 () Bool)

(assert (=> b!7945484 (= e!4687712 call!736404)))

(assert (= (and d!2375420 (not res!3151498)) b!7945482))

(assert (= (and b!7945482 c!1459588) b!7945476))

(assert (= (and b!7945482 (not c!1459588)) b!7945478))

(assert (= (and b!7945476 res!3151501) b!7945484))

(assert (= (and b!7945478 c!1459589) b!7945480))

(assert (= (and b!7945478 (not c!1459589)) b!7945483))

(assert (= (and b!7945480 res!3151502) b!7945479))

(assert (= (and b!7945483 (not res!3151499)) b!7945481))

(assert (= (and b!7945481 res!3151500) b!7945477))

(assert (= (or b!7945479 b!7945477) bm!736398))

(assert (= (or b!7945480 b!7945481) bm!736399))

(assert (= (or b!7945484 bm!736399) bm!736397))

(declare-fun m!8332128 () Bool)

(assert (=> b!7945476 m!8332128))

(declare-fun m!8332130 () Bool)

(assert (=> bm!736397 m!8332130))

(declare-fun m!8332132 () Bool)

(assert (=> bm!736398 m!8332132))

(assert (=> b!7945265 d!2375420))

(declare-fun b!7945537 () Bool)

(declare-fun res!3151524 () Bool)

(declare-fun e!4687747 () Bool)

(assert (=> b!7945537 (=> (not res!3151524) (not e!4687747))))

(declare-fun call!736423 () Bool)

(assert (=> b!7945537 (= res!3151524 (not call!736423))))

(declare-fun b!7945538 () Bool)

(declare-fun e!4687750 () Bool)

(declare-fun e!4687749 () Bool)

(assert (=> b!7945538 (= e!4687750 e!4687749)))

(declare-fun res!3151525 () Bool)

(assert (=> b!7945538 (=> (not res!3151525) (not e!4687749))))

(declare-fun lt!2698048 () Bool)

(assert (=> b!7945538 (= res!3151525 (not lt!2698048))))

(declare-fun d!2375422 () Bool)

(declare-fun e!4687748 () Bool)

(assert (=> d!2375422 e!4687748))

(declare-fun c!1459609 () Bool)

(assert (=> d!2375422 (= c!1459609 ((_ is EmptyExpr!21439) baseR!116))))

(declare-fun e!4687751 () Bool)

(assert (=> d!2375422 (= lt!2698048 e!4687751)))

(declare-fun c!1459608 () Bool)

(assert (=> d!2375422 (= c!1459608 (isEmpty!42843 testedP!447))))

(assert (=> d!2375422 (validRegex!11743 baseR!116)))

(assert (=> d!2375422 (= (matchR!10720 baseR!116 testedP!447) lt!2698048)))

(declare-fun b!7945539 () Bool)

(assert (=> b!7945539 (= e!4687751 (nullable!9550 baseR!116))))

(declare-fun bm!736418 () Bool)

(assert (=> bm!736418 (= call!736423 (isEmpty!42843 testedP!447))))

(declare-fun b!7945540 () Bool)

(assert (=> b!7945540 (= e!4687751 (matchR!10720 (derivativeStep!6482 baseR!116 (head!16204 testedP!447)) (tail!15747 testedP!447)))))

(declare-fun b!7945541 () Bool)

(assert (=> b!7945541 (= e!4687748 (= lt!2698048 call!736423))))

(declare-fun b!7945542 () Bool)

(declare-fun res!3151519 () Bool)

(assert (=> b!7945542 (=> res!3151519 e!4687750)))

(assert (=> b!7945542 (= res!3151519 (not ((_ is ElementMatch!21439) baseR!116)))))

(declare-fun e!4687745 () Bool)

(assert (=> b!7945542 (= e!4687745 e!4687750)))

(declare-fun b!7945543 () Bool)

(declare-fun e!4687746 () Bool)

(assert (=> b!7945543 (= e!4687749 e!4687746)))

(declare-fun res!3151526 () Bool)

(assert (=> b!7945543 (=> res!3151526 e!4687746)))

(assert (=> b!7945543 (= res!3151526 call!736423)))

(declare-fun b!7945544 () Bool)

(assert (=> b!7945544 (= e!4687745 (not lt!2698048))))

(declare-fun b!7945545 () Bool)

(assert (=> b!7945545 (= e!4687748 e!4687745)))

(declare-fun c!1459610 () Bool)

(assert (=> b!7945545 (= c!1459610 ((_ is EmptyLang!21439) baseR!116))))

(declare-fun b!7945546 () Bool)

(assert (=> b!7945546 (= e!4687746 (not (= (head!16204 testedP!447) (c!1459526 baseR!116))))))

(declare-fun b!7945547 () Bool)

(declare-fun res!3151522 () Bool)

(assert (=> b!7945547 (=> (not res!3151522) (not e!4687747))))

(assert (=> b!7945547 (= res!3151522 (isEmpty!42843 (tail!15747 testedP!447)))))

(declare-fun b!7945548 () Bool)

(declare-fun res!3151523 () Bool)

(assert (=> b!7945548 (=> res!3151523 e!4687750)))

(assert (=> b!7945548 (= res!3151523 e!4687747)))

(declare-fun res!3151521 () Bool)

(assert (=> b!7945548 (=> (not res!3151521) (not e!4687747))))

(assert (=> b!7945548 (= res!3151521 lt!2698048)))

(declare-fun b!7945549 () Bool)

(assert (=> b!7945549 (= e!4687747 (= (head!16204 testedP!447) (c!1459526 baseR!116)))))

(declare-fun b!7945550 () Bool)

(declare-fun res!3151520 () Bool)

(assert (=> b!7945550 (=> res!3151520 e!4687746)))

(assert (=> b!7945550 (= res!3151520 (not (isEmpty!42843 (tail!15747 testedP!447))))))

(assert (= (and d!2375422 c!1459608) b!7945539))

(assert (= (and d!2375422 (not c!1459608)) b!7945540))

(assert (= (and d!2375422 c!1459609) b!7945541))

(assert (= (and d!2375422 (not c!1459609)) b!7945545))

(assert (= (and b!7945545 c!1459610) b!7945544))

(assert (= (and b!7945545 (not c!1459610)) b!7945542))

(assert (= (and b!7945542 (not res!3151519)) b!7945548))

(assert (= (and b!7945548 res!3151521) b!7945537))

(assert (= (and b!7945537 res!3151524) b!7945547))

(assert (= (and b!7945547 res!3151522) b!7945549))

(assert (= (and b!7945548 (not res!3151523)) b!7945538))

(assert (= (and b!7945538 res!3151525) b!7945543))

(assert (= (and b!7945543 (not res!3151526)) b!7945550))

(assert (= (and b!7945550 (not res!3151520)) b!7945546))

(assert (= (or b!7945541 b!7945537 b!7945543) bm!736418))

(declare-fun m!8332134 () Bool)

(assert (=> d!2375422 m!8332134))

(assert (=> d!2375422 m!8331990))

(assert (=> bm!736418 m!8332134))

(declare-fun m!8332136 () Bool)

(assert (=> b!7945550 m!8332136))

(assert (=> b!7945550 m!8332136))

(declare-fun m!8332138 () Bool)

(assert (=> b!7945550 m!8332138))

(assert (=> b!7945547 m!8332136))

(assert (=> b!7945547 m!8332136))

(assert (=> b!7945547 m!8332138))

(declare-fun m!8332140 () Bool)

(assert (=> b!7945540 m!8332140))

(assert (=> b!7945540 m!8332140))

(declare-fun m!8332142 () Bool)

(assert (=> b!7945540 m!8332142))

(assert (=> b!7945540 m!8332136))

(assert (=> b!7945540 m!8332142))

(assert (=> b!7945540 m!8332136))

(declare-fun m!8332144 () Bool)

(assert (=> b!7945540 m!8332144))

(assert (=> b!7945546 m!8332140))

(declare-fun m!8332146 () Bool)

(assert (=> b!7945539 m!8332146))

(assert (=> b!7945549 m!8332140))

(assert (=> b!7945265 d!2375422))

(declare-fun b!7945555 () Bool)

(declare-fun res!3151536 () Bool)

(declare-fun e!4687758 () Bool)

(assert (=> b!7945555 (=> (not res!3151536) (not e!4687758))))

(declare-fun call!736424 () Bool)

(assert (=> b!7945555 (= res!3151536 (not call!736424))))

(declare-fun b!7945556 () Bool)

(declare-fun e!4687761 () Bool)

(declare-fun e!4687760 () Bool)

(assert (=> b!7945556 (= e!4687761 e!4687760)))

(declare-fun res!3151537 () Bool)

(assert (=> b!7945556 (=> (not res!3151537) (not e!4687760))))

(declare-fun lt!2698049 () Bool)

(assert (=> b!7945556 (= res!3151537 (not lt!2698049))))

(declare-fun d!2375424 () Bool)

(declare-fun e!4687759 () Bool)

(assert (=> d!2375424 e!4687759))

(declare-fun c!1459612 () Bool)

(assert (=> d!2375424 (= c!1459612 ((_ is EmptyExpr!21439) lt!2697880))))

(declare-fun e!4687762 () Bool)

(assert (=> d!2375424 (= lt!2698049 e!4687762)))

(declare-fun c!1459611 () Bool)

(assert (=> d!2375424 (= c!1459611 (isEmpty!42843 Nil!74544))))

(assert (=> d!2375424 (validRegex!11743 lt!2697880)))

(assert (=> d!2375424 (= (matchR!10720 lt!2697880 Nil!74544) lt!2698049)))

(declare-fun b!7945557 () Bool)

(assert (=> b!7945557 (= e!4687762 (nullable!9550 lt!2697880))))

(declare-fun bm!736419 () Bool)

(assert (=> bm!736419 (= call!736424 (isEmpty!42843 Nil!74544))))

(declare-fun b!7945558 () Bool)

(assert (=> b!7945558 (= e!4687762 (matchR!10720 (derivativeStep!6482 lt!2697880 (head!16204 Nil!74544)) (tail!15747 Nil!74544)))))

(declare-fun b!7945559 () Bool)

(assert (=> b!7945559 (= e!4687759 (= lt!2698049 call!736424))))

(declare-fun b!7945560 () Bool)

(declare-fun res!3151531 () Bool)

(assert (=> b!7945560 (=> res!3151531 e!4687761)))

(assert (=> b!7945560 (= res!3151531 (not ((_ is ElementMatch!21439) lt!2697880)))))

(declare-fun e!4687756 () Bool)

(assert (=> b!7945560 (= e!4687756 e!4687761)))

(declare-fun b!7945561 () Bool)

(declare-fun e!4687757 () Bool)

(assert (=> b!7945561 (= e!4687760 e!4687757)))

(declare-fun res!3151538 () Bool)

(assert (=> b!7945561 (=> res!3151538 e!4687757)))

(assert (=> b!7945561 (= res!3151538 call!736424)))

(declare-fun b!7945562 () Bool)

(assert (=> b!7945562 (= e!4687756 (not lt!2698049))))

(declare-fun b!7945563 () Bool)

(assert (=> b!7945563 (= e!4687759 e!4687756)))

(declare-fun c!1459613 () Bool)

(assert (=> b!7945563 (= c!1459613 ((_ is EmptyLang!21439) lt!2697880))))

(declare-fun b!7945564 () Bool)

(assert (=> b!7945564 (= e!4687757 (not (= (head!16204 Nil!74544) (c!1459526 lt!2697880))))))

(declare-fun b!7945565 () Bool)

(declare-fun res!3151534 () Bool)

(assert (=> b!7945565 (=> (not res!3151534) (not e!4687758))))

(assert (=> b!7945565 (= res!3151534 (isEmpty!42843 (tail!15747 Nil!74544)))))

(declare-fun b!7945566 () Bool)

(declare-fun res!3151535 () Bool)

(assert (=> b!7945566 (=> res!3151535 e!4687761)))

(assert (=> b!7945566 (= res!3151535 e!4687758)))

(declare-fun res!3151533 () Bool)

(assert (=> b!7945566 (=> (not res!3151533) (not e!4687758))))

(assert (=> b!7945566 (= res!3151533 lt!2698049)))

(declare-fun b!7945567 () Bool)

(assert (=> b!7945567 (= e!4687758 (= (head!16204 Nil!74544) (c!1459526 lt!2697880)))))

(declare-fun b!7945568 () Bool)

(declare-fun res!3151532 () Bool)

(assert (=> b!7945568 (=> res!3151532 e!4687757)))

(assert (=> b!7945568 (= res!3151532 (not (isEmpty!42843 (tail!15747 Nil!74544))))))

(assert (= (and d!2375424 c!1459611) b!7945557))

(assert (= (and d!2375424 (not c!1459611)) b!7945558))

(assert (= (and d!2375424 c!1459612) b!7945559))

(assert (= (and d!2375424 (not c!1459612)) b!7945563))

(assert (= (and b!7945563 c!1459613) b!7945562))

(assert (= (and b!7945563 (not c!1459613)) b!7945560))

(assert (= (and b!7945560 (not res!3151531)) b!7945566))

(assert (= (and b!7945566 res!3151533) b!7945555))

(assert (= (and b!7945555 res!3151536) b!7945565))

(assert (= (and b!7945565 res!3151534) b!7945567))

(assert (= (and b!7945566 (not res!3151535)) b!7945556))

(assert (= (and b!7945556 res!3151537) b!7945561))

(assert (= (and b!7945561 (not res!3151538)) b!7945568))

(assert (= (and b!7945568 (not res!3151532)) b!7945564))

(assert (= (or b!7945559 b!7945555 b!7945561) bm!736419))

(declare-fun m!8332148 () Bool)

(assert (=> d!2375424 m!8332148))

(declare-fun m!8332150 () Bool)

(assert (=> d!2375424 m!8332150))

(assert (=> bm!736419 m!8332148))

(declare-fun m!8332152 () Bool)

(assert (=> b!7945568 m!8332152))

(assert (=> b!7945568 m!8332152))

(declare-fun m!8332154 () Bool)

(assert (=> b!7945568 m!8332154))

(assert (=> b!7945565 m!8332152))

(assert (=> b!7945565 m!8332152))

(assert (=> b!7945565 m!8332154))

(declare-fun m!8332156 () Bool)

(assert (=> b!7945558 m!8332156))

(assert (=> b!7945558 m!8332156))

(declare-fun m!8332158 () Bool)

(assert (=> b!7945558 m!8332158))

(assert (=> b!7945558 m!8332152))

(assert (=> b!7945558 m!8332158))

(assert (=> b!7945558 m!8332152))

(declare-fun m!8332160 () Bool)

(assert (=> b!7945558 m!8332160))

(assert (=> b!7945564 m!8332156))

(declare-fun m!8332162 () Bool)

(assert (=> b!7945557 m!8332162))

(assert (=> b!7945567 m!8332156))

(assert (=> b!7945265 d!2375424))

(declare-fun d!2375426 () Bool)

(assert (=> d!2375426 (= (matchR!10720 baseR!116 testedP!447) (matchR!10720 (derivative!625 baseR!116 testedP!447) Nil!74544))))

(declare-fun lt!2698052 () Unit!169708)

(declare-fun choose!59878 (Regex!21439 List!74668) Unit!169708)

(assert (=> d!2375426 (= lt!2698052 (choose!59878 baseR!116 testedP!447))))

(assert (=> d!2375426 (validRegex!11743 baseR!116)))

(assert (=> d!2375426 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!288 baseR!116 testedP!447) lt!2698052)))

(declare-fun bs!1969441 () Bool)

(assert (= bs!1969441 d!2375426))

(declare-fun m!8332164 () Bool)

(assert (=> bs!1969441 m!8332164))

(assert (=> bs!1969441 m!8331994))

(assert (=> bs!1969441 m!8331986))

(declare-fun m!8332166 () Bool)

(assert (=> bs!1969441 m!8332166))

(assert (=> bs!1969441 m!8331986))

(assert (=> bs!1969441 m!8331990))

(assert (=> b!7945265 d!2375426))

(declare-fun d!2375428 () Bool)

(declare-fun nullableFct!3759 (Regex!21439) Bool)

(assert (=> d!2375428 (= (nullable!9550 r!24602) (nullableFct!3759 r!24602))))

(declare-fun bs!1969442 () Bool)

(assert (= bs!1969442 d!2375428))

(declare-fun m!8332168 () Bool)

(assert (=> bs!1969442 m!8332168))

(assert (=> b!7945270 d!2375428))

(declare-fun b!7945591 () Bool)

(declare-fun e!4687779 () Bool)

(declare-fun e!4687778 () Bool)

(assert (=> b!7945591 (= e!4687779 e!4687778)))

(declare-fun res!3151549 () Bool)

(assert (=> b!7945591 (=> (not res!3151549) (not e!4687778))))

(assert (=> b!7945591 (= res!3151549 (not ((_ is Nil!74544) input!7927)))))

(declare-fun b!7945592 () Bool)

(declare-fun res!3151550 () Bool)

(assert (=> b!7945592 (=> (not res!3151550) (not e!4687778))))

(assert (=> b!7945592 (= res!3151550 (= (head!16204 testedP!447) (head!16204 input!7927)))))

(declare-fun d!2375430 () Bool)

(declare-fun e!4687777 () Bool)

(assert (=> d!2375430 e!4687777))

(declare-fun res!3151551 () Bool)

(assert (=> d!2375430 (=> res!3151551 e!4687777)))

(declare-fun lt!2698083 () Bool)

(assert (=> d!2375430 (= res!3151551 (not lt!2698083))))

(assert (=> d!2375430 (= lt!2698083 e!4687779)))

(declare-fun res!3151552 () Bool)

(assert (=> d!2375430 (=> res!3151552 e!4687779)))

(assert (=> d!2375430 (= res!3151552 ((_ is Nil!74544) testedP!447))))

(assert (=> d!2375430 (= (isPrefix!6539 testedP!447 input!7927) lt!2698083)))

(declare-fun b!7945594 () Bool)

(assert (=> b!7945594 (= e!4687777 (>= (size!43375 input!7927) (size!43375 testedP!447)))))

(declare-fun b!7945593 () Bool)

(assert (=> b!7945593 (= e!4687778 (isPrefix!6539 (tail!15747 testedP!447) (tail!15747 input!7927)))))

(assert (= (and d!2375430 (not res!3151552)) b!7945591))

(assert (= (and b!7945591 res!3151549) b!7945592))

(assert (= (and b!7945592 res!3151550) b!7945593))

(assert (= (and d!2375430 (not res!3151551)) b!7945594))

(assert (=> b!7945592 m!8332140))

(declare-fun m!8332208 () Bool)

(assert (=> b!7945592 m!8332208))

(assert (=> b!7945594 m!8331976))

(assert (=> b!7945594 m!8331978))

(assert (=> b!7945593 m!8332136))

(assert (=> b!7945593 m!8332012))

(assert (=> b!7945593 m!8332136))

(assert (=> b!7945593 m!8332012))

(declare-fun m!8332214 () Bool)

(assert (=> b!7945593 m!8332214))

(assert (=> b!7945271 d!2375430))

(declare-fun b!7945607 () Bool)

(declare-fun e!4687782 () Bool)

(declare-fun tp!2363387 () Bool)

(assert (=> b!7945607 (= e!4687782 tp!2363387)))

(declare-fun b!7945606 () Bool)

(declare-fun tp!2363388 () Bool)

(declare-fun tp!2363389 () Bool)

(assert (=> b!7945606 (= e!4687782 (and tp!2363388 tp!2363389))))

(assert (=> b!7945273 (= tp!2363366 e!4687782)))

(declare-fun b!7945605 () Bool)

(assert (=> b!7945605 (= e!4687782 tp_is_empty!53421)))

(declare-fun b!7945608 () Bool)

(declare-fun tp!2363386 () Bool)

(declare-fun tp!2363385 () Bool)

(assert (=> b!7945608 (= e!4687782 (and tp!2363386 tp!2363385))))

(assert (= (and b!7945273 ((_ is ElementMatch!21439) (regOne!43390 r!24602))) b!7945605))

(assert (= (and b!7945273 ((_ is Concat!30438) (regOne!43390 r!24602))) b!7945606))

(assert (= (and b!7945273 ((_ is Star!21439) (regOne!43390 r!24602))) b!7945607))

(assert (= (and b!7945273 ((_ is Union!21439) (regOne!43390 r!24602))) b!7945608))

(declare-fun b!7945611 () Bool)

(declare-fun e!4687783 () Bool)

(declare-fun tp!2363392 () Bool)

(assert (=> b!7945611 (= e!4687783 tp!2363392)))

(declare-fun b!7945610 () Bool)

(declare-fun tp!2363393 () Bool)

(declare-fun tp!2363394 () Bool)

(assert (=> b!7945610 (= e!4687783 (and tp!2363393 tp!2363394))))

(assert (=> b!7945273 (= tp!2363374 e!4687783)))

(declare-fun b!7945609 () Bool)

(assert (=> b!7945609 (= e!4687783 tp_is_empty!53421)))

(declare-fun b!7945612 () Bool)

(declare-fun tp!2363391 () Bool)

(declare-fun tp!2363390 () Bool)

(assert (=> b!7945612 (= e!4687783 (and tp!2363391 tp!2363390))))

(assert (= (and b!7945273 ((_ is ElementMatch!21439) (regTwo!43390 r!24602))) b!7945609))

(assert (= (and b!7945273 ((_ is Concat!30438) (regTwo!43390 r!24602))) b!7945610))

(assert (= (and b!7945273 ((_ is Star!21439) (regTwo!43390 r!24602))) b!7945611))

(assert (= (and b!7945273 ((_ is Union!21439) (regTwo!43390 r!24602))) b!7945612))

(declare-fun b!7945615 () Bool)

(declare-fun e!4687784 () Bool)

(declare-fun tp!2363397 () Bool)

(assert (=> b!7945615 (= e!4687784 tp!2363397)))

(declare-fun b!7945614 () Bool)

(declare-fun tp!2363398 () Bool)

(declare-fun tp!2363399 () Bool)

(assert (=> b!7945614 (= e!4687784 (and tp!2363398 tp!2363399))))

(assert (=> b!7945278 (= tp!2363364 e!4687784)))

(declare-fun b!7945613 () Bool)

(assert (=> b!7945613 (= e!4687784 tp_is_empty!53421)))

(declare-fun b!7945616 () Bool)

(declare-fun tp!2363396 () Bool)

(declare-fun tp!2363395 () Bool)

(assert (=> b!7945616 (= e!4687784 (and tp!2363396 tp!2363395))))

(assert (= (and b!7945278 ((_ is ElementMatch!21439) (reg!21768 r!24602))) b!7945613))

(assert (= (and b!7945278 ((_ is Concat!30438) (reg!21768 r!24602))) b!7945614))

(assert (= (and b!7945278 ((_ is Star!21439) (reg!21768 r!24602))) b!7945615))

(assert (= (and b!7945278 ((_ is Union!21439) (reg!21768 r!24602))) b!7945616))

(declare-fun b!7945621 () Bool)

(declare-fun e!4687787 () Bool)

(declare-fun tp!2363402 () Bool)

(assert (=> b!7945621 (= e!4687787 (and tp_is_empty!53421 tp!2363402))))

(assert (=> b!7945279 (= tp!2363370 e!4687787)))

(assert (= (and b!7945279 ((_ is Cons!74544) (t!390411 input!7927))) b!7945621))

(declare-fun b!7945628 () Bool)

(declare-fun e!4687790 () Bool)

(declare-fun tp!2363405 () Bool)

(assert (=> b!7945628 (= e!4687790 tp!2363405)))

(declare-fun b!7945627 () Bool)

(declare-fun tp!2363406 () Bool)

(declare-fun tp!2363407 () Bool)

(assert (=> b!7945627 (= e!4687790 (and tp!2363406 tp!2363407))))

(assert (=> b!7945275 (= tp!2363372 e!4687790)))

(declare-fun b!7945626 () Bool)

(assert (=> b!7945626 (= e!4687790 tp_is_empty!53421)))

(declare-fun b!7945629 () Bool)

(declare-fun tp!2363404 () Bool)

(declare-fun tp!2363403 () Bool)

(assert (=> b!7945629 (= e!4687790 (and tp!2363404 tp!2363403))))

(assert (= (and b!7945275 ((_ is ElementMatch!21439) (regOne!43391 baseR!116))) b!7945626))

(assert (= (and b!7945275 ((_ is Concat!30438) (regOne!43391 baseR!116))) b!7945627))

(assert (= (and b!7945275 ((_ is Star!21439) (regOne!43391 baseR!116))) b!7945628))

(assert (= (and b!7945275 ((_ is Union!21439) (regOne!43391 baseR!116))) b!7945629))

(declare-fun b!7945632 () Bool)

(declare-fun e!4687791 () Bool)

(declare-fun tp!2363410 () Bool)

(assert (=> b!7945632 (= e!4687791 tp!2363410)))

(declare-fun b!7945631 () Bool)

(declare-fun tp!2363411 () Bool)

(declare-fun tp!2363412 () Bool)

(assert (=> b!7945631 (= e!4687791 (and tp!2363411 tp!2363412))))

(assert (=> b!7945275 (= tp!2363373 e!4687791)))

(declare-fun b!7945630 () Bool)

(assert (=> b!7945630 (= e!4687791 tp_is_empty!53421)))

(declare-fun b!7945633 () Bool)

(declare-fun tp!2363409 () Bool)

(declare-fun tp!2363408 () Bool)

(assert (=> b!7945633 (= e!4687791 (and tp!2363409 tp!2363408))))

(assert (= (and b!7945275 ((_ is ElementMatch!21439) (regTwo!43391 baseR!116))) b!7945630))

(assert (= (and b!7945275 ((_ is Concat!30438) (regTwo!43391 baseR!116))) b!7945631))

(assert (= (and b!7945275 ((_ is Star!21439) (regTwo!43391 baseR!116))) b!7945632))

(assert (= (and b!7945275 ((_ is Union!21439) (regTwo!43391 baseR!116))) b!7945633))

(declare-fun b!7945636 () Bool)

(declare-fun e!4687792 () Bool)

(declare-fun tp!2363415 () Bool)

(assert (=> b!7945636 (= e!4687792 tp!2363415)))

(declare-fun b!7945635 () Bool)

(declare-fun tp!2363416 () Bool)

(declare-fun tp!2363417 () Bool)

(assert (=> b!7945635 (= e!4687792 (and tp!2363416 tp!2363417))))

(assert (=> b!7945276 (= tp!2363367 e!4687792)))

(declare-fun b!7945634 () Bool)

(assert (=> b!7945634 (= e!4687792 tp_is_empty!53421)))

(declare-fun b!7945637 () Bool)

(declare-fun tp!2363414 () Bool)

(declare-fun tp!2363413 () Bool)

(assert (=> b!7945637 (= e!4687792 (and tp!2363414 tp!2363413))))

(assert (= (and b!7945276 ((_ is ElementMatch!21439) (reg!21768 baseR!116))) b!7945634))

(assert (= (and b!7945276 ((_ is Concat!30438) (reg!21768 baseR!116))) b!7945635))

(assert (= (and b!7945276 ((_ is Star!21439) (reg!21768 baseR!116))) b!7945636))

(assert (= (and b!7945276 ((_ is Union!21439) (reg!21768 baseR!116))) b!7945637))

(declare-fun b!7945638 () Bool)

(declare-fun e!4687793 () Bool)

(declare-fun tp!2363418 () Bool)

(assert (=> b!7945638 (= e!4687793 (and tp_is_empty!53421 tp!2363418))))

(assert (=> b!7945266 (= tp!2363363 e!4687793)))

(assert (= (and b!7945266 ((_ is Cons!74544) (t!390411 testedP!447))) b!7945638))

(declare-fun b!7945641 () Bool)

(declare-fun e!4687794 () Bool)

(declare-fun tp!2363421 () Bool)

(assert (=> b!7945641 (= e!4687794 tp!2363421)))

(declare-fun b!7945640 () Bool)

(declare-fun tp!2363422 () Bool)

(declare-fun tp!2363423 () Bool)

(assert (=> b!7945640 (= e!4687794 (and tp!2363422 tp!2363423))))

(assert (=> b!7945267 (= tp!2363368 e!4687794)))

(declare-fun b!7945639 () Bool)

(assert (=> b!7945639 (= e!4687794 tp_is_empty!53421)))

(declare-fun b!7945642 () Bool)

(declare-fun tp!2363420 () Bool)

(declare-fun tp!2363419 () Bool)

(assert (=> b!7945642 (= e!4687794 (and tp!2363420 tp!2363419))))

(assert (= (and b!7945267 ((_ is ElementMatch!21439) (regOne!43390 baseR!116))) b!7945639))

(assert (= (and b!7945267 ((_ is Concat!30438) (regOne!43390 baseR!116))) b!7945640))

(assert (= (and b!7945267 ((_ is Star!21439) (regOne!43390 baseR!116))) b!7945641))

(assert (= (and b!7945267 ((_ is Union!21439) (regOne!43390 baseR!116))) b!7945642))

(declare-fun b!7945645 () Bool)

(declare-fun e!4687795 () Bool)

(declare-fun tp!2363426 () Bool)

(assert (=> b!7945645 (= e!4687795 tp!2363426)))

(declare-fun b!7945644 () Bool)

(declare-fun tp!2363427 () Bool)

(declare-fun tp!2363428 () Bool)

(assert (=> b!7945644 (= e!4687795 (and tp!2363427 tp!2363428))))

(assert (=> b!7945267 (= tp!2363369 e!4687795)))

(declare-fun b!7945643 () Bool)

(assert (=> b!7945643 (= e!4687795 tp_is_empty!53421)))

(declare-fun b!7945646 () Bool)

(declare-fun tp!2363425 () Bool)

(declare-fun tp!2363424 () Bool)

(assert (=> b!7945646 (= e!4687795 (and tp!2363425 tp!2363424))))

(assert (= (and b!7945267 ((_ is ElementMatch!21439) (regTwo!43390 baseR!116))) b!7945643))

(assert (= (and b!7945267 ((_ is Concat!30438) (regTwo!43390 baseR!116))) b!7945644))

(assert (= (and b!7945267 ((_ is Star!21439) (regTwo!43390 baseR!116))) b!7945645))

(assert (= (and b!7945267 ((_ is Union!21439) (regTwo!43390 baseR!116))) b!7945646))

(declare-fun b!7945649 () Bool)

(declare-fun e!4687796 () Bool)

(declare-fun tp!2363431 () Bool)

(assert (=> b!7945649 (= e!4687796 tp!2363431)))

(declare-fun b!7945648 () Bool)

(declare-fun tp!2363432 () Bool)

(declare-fun tp!2363433 () Bool)

(assert (=> b!7945648 (= e!4687796 (and tp!2363432 tp!2363433))))

(assert (=> b!7945272 (= tp!2363371 e!4687796)))

(declare-fun b!7945647 () Bool)

(assert (=> b!7945647 (= e!4687796 tp_is_empty!53421)))

(declare-fun b!7945650 () Bool)

(declare-fun tp!2363430 () Bool)

(declare-fun tp!2363429 () Bool)

(assert (=> b!7945650 (= e!4687796 (and tp!2363430 tp!2363429))))

(assert (= (and b!7945272 ((_ is ElementMatch!21439) (regOne!43391 r!24602))) b!7945647))

(assert (= (and b!7945272 ((_ is Concat!30438) (regOne!43391 r!24602))) b!7945648))

(assert (= (and b!7945272 ((_ is Star!21439) (regOne!43391 r!24602))) b!7945649))

(assert (= (and b!7945272 ((_ is Union!21439) (regOne!43391 r!24602))) b!7945650))

(declare-fun b!7945655 () Bool)

(declare-fun e!4687798 () Bool)

(declare-fun tp!2363436 () Bool)

(assert (=> b!7945655 (= e!4687798 tp!2363436)))

(declare-fun b!7945654 () Bool)

(declare-fun tp!2363437 () Bool)

(declare-fun tp!2363438 () Bool)

(assert (=> b!7945654 (= e!4687798 (and tp!2363437 tp!2363438))))

(assert (=> b!7945272 (= tp!2363365 e!4687798)))

(declare-fun b!7945653 () Bool)

(assert (=> b!7945653 (= e!4687798 tp_is_empty!53421)))

(declare-fun b!7945656 () Bool)

(declare-fun tp!2363435 () Bool)

(declare-fun tp!2363434 () Bool)

(assert (=> b!7945656 (= e!4687798 (and tp!2363435 tp!2363434))))

(assert (= (and b!7945272 ((_ is ElementMatch!21439) (regTwo!43391 r!24602))) b!7945653))

(assert (= (and b!7945272 ((_ is Concat!30438) (regTwo!43391 r!24602))) b!7945654))

(assert (= (and b!7945272 ((_ is Star!21439) (regTwo!43391 r!24602))) b!7945655))

(assert (= (and b!7945272 ((_ is Union!21439) (regTwo!43391 r!24602))) b!7945656))

(check-sat (not b!7945285) (not b!7945656) (not b!7945633) (not bm!736395) (not b!7945637) (not d!2375384) (not b!7945635) tp_is_empty!53421 (not b!7945655) (not bm!736397) (not b!7945654) (not b!7945539) (not b!7945593) (not d!2375428) (not bm!736419) (not b!7945606) (not b!7945649) (not d!2375388) (not bm!736418) (not bm!736383) (not b!7945640) (not b!7945607) (not b!7945594) (not b!7945616) (not b!7945476) (not b!7945592) (not b!7945642) (not b!7945292) (not b!7945300) (not b!7945568) (not bm!736387) (not b!7945612) (not b!7945628) (not b!7945638) (not b!7945610) (not bm!736382) (not bm!736386) (not b!7945650) (not bm!736384) (not bm!736394) (not d!2375396) (not bm!736398) (not b!7945614) (not b!7945648) (not b!7945467) (not b!7945565) (not b!7945558) (not b!7945645) (not b!7945567) (not b!7945550) (not b!7945435) (not d!2375426) (not b!7945627) (not b!7945546) (not b!7945445) (not bm!736385) (not b!7945297) (not d!2375424) (not b!7945631) (not b!7945547) (not b!7945621) (not b!7945549) (not b!7945629) (not b!7945615) (not bm!736381) (not b!7945611) (not b!7945646) (not b!7945632) (not b!7945636) (not b!7945437) (not d!2375422) (not b!7945540) (not b!7945564) (not b!7945641) (not b!7945439) (not bm!736380) (not b!7945644) (not b!7945608) (not b!7945557))
(check-sat)
