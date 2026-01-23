; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749928 () Bool)

(assert start!749928)

(declare-fun b!7946380 () Bool)

(declare-fun res!3151797 () Bool)

(declare-fun e!4688160 () Bool)

(assert (=> b!7946380 (=> (not res!3151797) (not e!4688160))))

(declare-datatypes ((C!43224 0))(
  ( (C!43225 (val!32160 Int)) )
))
(declare-datatypes ((List!74672 0))(
  ( (Nil!74548) (Cons!74548 (h!80996 C!43224) (t!390415 List!74672)) )
))
(declare-fun testedP!447 () List!74672)

(declare-fun input!7927 () List!74672)

(assert (=> b!7946380 (= res!3151797 (= testedP!447 input!7927))))

(declare-fun b!7946381 () Bool)

(declare-fun res!3151796 () Bool)

(declare-fun e!4688156 () Bool)

(assert (=> b!7946381 (=> (not res!3151796) (not e!4688156))))

(declare-fun isPrefix!6543 (List!74672 List!74672) Bool)

(assert (=> b!7946381 (= res!3151796 (isPrefix!6543 testedP!447 input!7927))))

(declare-fun b!7946382 () Bool)

(declare-fun e!4688157 () Bool)

(declare-fun tp!2363773 () Bool)

(assert (=> b!7946382 (= e!4688157 tp!2363773)))

(declare-fun b!7946383 () Bool)

(declare-fun e!4688154 () Bool)

(declare-fun tp_is_empty!53429 () Bool)

(declare-fun tp!2363774 () Bool)

(assert (=> b!7946383 (= e!4688154 (and tp_is_empty!53429 tp!2363774))))

(declare-fun b!7946384 () Bool)

(declare-fun e!4688159 () Bool)

(assert (=> b!7946384 (= e!4688156 e!4688159)))

(declare-fun res!3151800 () Bool)

(assert (=> b!7946384 (=> (not res!3151800) (not e!4688159))))

(declare-datatypes ((Regex!21443 0))(
  ( (ElementMatch!21443 (c!1459728 C!43224)) (Concat!30442 (regOne!43398 Regex!21443) (regTwo!43398 Regex!21443)) (EmptyExpr!21443) (Star!21443 (reg!21772 Regex!21443)) (EmptyLang!21443) (Union!21443 (regOne!43399 Regex!21443) (regTwo!43399 Regex!21443)) )
))
(declare-fun lt!2698353 () Regex!21443)

(declare-fun r!24602 () Regex!21443)

(assert (=> b!7946384 (= res!3151800 (= lt!2698353 r!24602))))

(declare-fun baseR!116 () Regex!21443)

(declare-fun derivative!629 (Regex!21443 List!74672) Regex!21443)

(assert (=> b!7946384 (= lt!2698353 (derivative!629 baseR!116 testedP!447))))

(declare-fun b!7946385 () Bool)

(assert (=> b!7946385 (= e!4688157 tp_is_empty!53429)))

(declare-fun b!7946386 () Bool)

(declare-fun e!4688158 () Bool)

(assert (=> b!7946386 (= e!4688158 true)))

(declare-fun lt!2698354 () List!74672)

(declare-fun lt!2698357 () List!74672)

(declare-fun ++!18323 (List!74672 List!74672) List!74672)

(assert (=> b!7946386 (= lt!2698354 (++!18323 testedP!447 lt!2698357))))

(declare-fun b!7946387 () Bool)

(declare-fun e!4688161 () Bool)

(declare-fun tp!2363772 () Bool)

(declare-fun tp!2363767 () Bool)

(assert (=> b!7946387 (= e!4688161 (and tp!2363772 tp!2363767))))

(declare-fun b!7946388 () Bool)

(assert (=> b!7946388 (= e!4688159 e!4688160)))

(declare-fun res!3151798 () Bool)

(assert (=> b!7946388 (=> (not res!3151798) (not e!4688160))))

(declare-fun lt!2698356 () Int)

(declare-fun isEmpty!42847 (List!74672) Bool)

(declare-datatypes ((tuple2!70548 0))(
  ( (tuple2!70549 (_1!38577 List!74672) (_2!38577 List!74672)) )
))
(declare-fun findLongestMatchInner!2224 (Regex!21443 List!74672 Int List!74672 List!74672 Int) tuple2!70548)

(declare-fun size!43379 (List!74672) Int)

(assert (=> b!7946388 (= res!3151798 (not (isEmpty!42847 (_1!38577 (findLongestMatchInner!2224 r!24602 testedP!447 lt!2698356 lt!2698357 input!7927 (size!43379 input!7927))))))))

(declare-fun getSuffix!3746 (List!74672 List!74672) List!74672)

(assert (=> b!7946388 (= lt!2698357 (getSuffix!3746 input!7927 testedP!447))))

(assert (=> b!7946388 (= lt!2698356 (size!43379 testedP!447))))

(declare-fun b!7946389 () Bool)

(declare-fun e!4688155 () Bool)

(declare-fun tp!2363766 () Bool)

(assert (=> b!7946389 (= e!4688155 (and tp_is_empty!53429 tp!2363766))))

(declare-fun b!7946390 () Bool)

(declare-fun tp!2363765 () Bool)

(assert (=> b!7946390 (= e!4688161 tp!2363765)))

(declare-fun b!7946391 () Bool)

(declare-fun tp!2363768 () Bool)

(declare-fun tp!2363763 () Bool)

(assert (=> b!7946391 (= e!4688161 (and tp!2363768 tp!2363763))))

(declare-fun b!7946393 () Bool)

(assert (=> b!7946393 (= e!4688160 (not e!4688158))))

(declare-fun res!3151799 () Bool)

(assert (=> b!7946393 (=> res!3151799 e!4688158)))

(declare-fun validRegex!11747 (Regex!21443) Bool)

(assert (=> b!7946393 (= res!3151799 (not (validRegex!11747 r!24602)))))

(declare-fun matchR!10724 (Regex!21443 List!74672) Bool)

(assert (=> b!7946393 (= (matchR!10724 baseR!116 testedP!447) (matchR!10724 lt!2698353 Nil!74548))))

(declare-datatypes ((Unit!169728 0))(
  ( (Unit!169729) )
))
(declare-fun lt!2698355 () Unit!169728)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!292 (Regex!21443 List!74672) Unit!169728)

(assert (=> b!7946393 (= lt!2698355 (lemmaMatchRIsSameAsWholeDerivativeAndNil!292 baseR!116 testedP!447))))

(declare-fun b!7946394 () Bool)

(declare-fun res!3151794 () Bool)

(assert (=> b!7946394 (=> (not res!3151794) (not e!4688160))))

(declare-fun nullable!9554 (Regex!21443) Bool)

(assert (=> b!7946394 (= res!3151794 (nullable!9554 r!24602))))

(declare-fun b!7946392 () Bool)

(assert (=> b!7946392 (= e!4688161 tp_is_empty!53429)))

(declare-fun res!3151795 () Bool)

(assert (=> start!749928 (=> (not res!3151795) (not e!4688156))))

(assert (=> start!749928 (= res!3151795 (validRegex!11747 baseR!116))))

(assert (=> start!749928 e!4688156))

(assert (=> start!749928 e!4688161))

(assert (=> start!749928 e!4688155))

(assert (=> start!749928 e!4688154))

(assert (=> start!749928 e!4688157))

(declare-fun b!7946395 () Bool)

(declare-fun tp!2363770 () Bool)

(declare-fun tp!2363771 () Bool)

(assert (=> b!7946395 (= e!4688157 (and tp!2363770 tp!2363771))))

(declare-fun b!7946396 () Bool)

(declare-fun tp!2363764 () Bool)

(declare-fun tp!2363769 () Bool)

(assert (=> b!7946396 (= e!4688157 (and tp!2363764 tp!2363769))))

(assert (= (and start!749928 res!3151795) b!7946381))

(assert (= (and b!7946381 res!3151796) b!7946384))

(assert (= (and b!7946384 res!3151800) b!7946388))

(assert (= (and b!7946388 res!3151798) b!7946380))

(assert (= (and b!7946380 res!3151797) b!7946394))

(assert (= (and b!7946394 res!3151794) b!7946393))

(assert (= (and b!7946393 (not res!3151799)) b!7946386))

(get-info :version)

(assert (= (and start!749928 ((_ is ElementMatch!21443) baseR!116)) b!7946392))

(assert (= (and start!749928 ((_ is Concat!30442) baseR!116)) b!7946387))

(assert (= (and start!749928 ((_ is Star!21443) baseR!116)) b!7946390))

(assert (= (and start!749928 ((_ is Union!21443) baseR!116)) b!7946391))

(assert (= (and start!749928 ((_ is Cons!74548) testedP!447)) b!7946389))

(assert (= (and start!749928 ((_ is Cons!74548) input!7927)) b!7946383))

(assert (= (and start!749928 ((_ is ElementMatch!21443) r!24602)) b!7946385))

(assert (= (and start!749928 ((_ is Concat!30442) r!24602)) b!7946396))

(assert (= (and start!749928 ((_ is Star!21443) r!24602)) b!7946382))

(assert (= (and start!749928 ((_ is Union!21443) r!24602)) b!7946395))

(declare-fun m!8332570 () Bool)

(assert (=> b!7946386 m!8332570))

(declare-fun m!8332572 () Bool)

(assert (=> b!7946384 m!8332572))

(declare-fun m!8332574 () Bool)

(assert (=> b!7946394 m!8332574))

(declare-fun m!8332576 () Bool)

(assert (=> start!749928 m!8332576))

(declare-fun m!8332578 () Bool)

(assert (=> b!7946388 m!8332578))

(declare-fun m!8332580 () Bool)

(assert (=> b!7946388 m!8332580))

(declare-fun m!8332582 () Bool)

(assert (=> b!7946388 m!8332582))

(declare-fun m!8332584 () Bool)

(assert (=> b!7946388 m!8332584))

(assert (=> b!7946388 m!8332578))

(declare-fun m!8332586 () Bool)

(assert (=> b!7946388 m!8332586))

(declare-fun m!8332588 () Bool)

(assert (=> b!7946393 m!8332588))

(declare-fun m!8332590 () Bool)

(assert (=> b!7946393 m!8332590))

(declare-fun m!8332592 () Bool)

(assert (=> b!7946393 m!8332592))

(declare-fun m!8332594 () Bool)

(assert (=> b!7946393 m!8332594))

(declare-fun m!8332596 () Bool)

(assert (=> b!7946381 m!8332596))

(check-sat (not start!749928) (not b!7946389) (not b!7946395) (not b!7946388) (not b!7946391) (not b!7946394) (not b!7946384) (not b!7946393) (not b!7946386) (not b!7946381) (not b!7946396) (not b!7946383) tp_is_empty!53429 (not b!7946382) (not b!7946387) (not b!7946390))
(check-sat)
