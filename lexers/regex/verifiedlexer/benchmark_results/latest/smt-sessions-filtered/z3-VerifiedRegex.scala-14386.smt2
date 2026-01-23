; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750016 () Bool)

(assert start!750016)

(declare-fun b!7947556 () Bool)

(declare-fun e!4688693 () Bool)

(declare-fun tp!2364381 () Bool)

(declare-fun tp!2364383 () Bool)

(assert (=> b!7947556 (= e!4688693 (and tp!2364381 tp!2364383))))

(declare-fun b!7947557 () Bool)

(declare-fun e!4688691 () Bool)

(declare-fun tp!2364387 () Bool)

(declare-fun tp!2364380 () Bool)

(assert (=> b!7947557 (= e!4688691 (and tp!2364387 tp!2364380))))

(declare-fun res!3152148 () Bool)

(declare-fun e!4688694 () Bool)

(assert (=> start!750016 (=> (not res!3152148) (not e!4688694))))

(declare-datatypes ((C!43244 0))(
  ( (C!43245 (val!32170 Int)) )
))
(declare-datatypes ((Regex!21453 0))(
  ( (ElementMatch!21453 (c!1459888 C!43244)) (Concat!30452 (regOne!43418 Regex!21453) (regTwo!43418 Regex!21453)) (EmptyExpr!21453) (Star!21453 (reg!21782 Regex!21453)) (EmptyLang!21453) (Union!21453 (regOne!43419 Regex!21453) (regTwo!43419 Regex!21453)) )
))
(declare-fun baseR!116 () Regex!21453)

(declare-fun validRegex!11757 (Regex!21453) Bool)

(assert (=> start!750016 (= res!3152148 (validRegex!11757 baseR!116))))

(assert (=> start!750016 e!4688694))

(assert (=> start!750016 e!4688691))

(declare-fun e!4688695 () Bool)

(assert (=> start!750016 e!4688695))

(declare-fun e!4688692 () Bool)

(assert (=> start!750016 e!4688692))

(assert (=> start!750016 e!4688693))

(declare-fun b!7947558 () Bool)

(declare-fun tp_is_empty!53449 () Bool)

(declare-fun tp!2364384 () Bool)

(assert (=> b!7947558 (= e!4688695 (and tp_is_empty!53449 tp!2364384))))

(declare-fun b!7947559 () Bool)

(declare-fun tp!2364385 () Bool)

(assert (=> b!7947559 (= e!4688692 (and tp_is_empty!53449 tp!2364385))))

(declare-fun b!7947560 () Bool)

(declare-fun res!3152146 () Bool)

(declare-fun e!4688690 () Bool)

(assert (=> b!7947560 (=> (not res!3152146) (not e!4688690))))

(declare-datatypes ((List!74682 0))(
  ( (Nil!74558) (Cons!74558 (h!81006 C!43244) (t!390425 List!74682)) )
))
(declare-fun testedP!447 () List!74682)

(declare-fun input!7927 () List!74682)

(assert (=> b!7947560 (= res!3152146 (not (= testedP!447 input!7927)))))

(declare-fun b!7947561 () Bool)

(assert (=> b!7947561 (= e!4688691 tp_is_empty!53449)))

(declare-fun b!7947562 () Bool)

(declare-fun tp!2364386 () Bool)

(declare-fun tp!2364382 () Bool)

(assert (=> b!7947562 (= e!4688691 (and tp!2364386 tp!2364382))))

(declare-fun b!7947563 () Bool)

(assert (=> b!7947563 (= e!4688693 tp_is_empty!53449)))

(declare-fun b!7947564 () Bool)

(declare-fun tp!2364388 () Bool)

(declare-fun tp!2364379 () Bool)

(assert (=> b!7947564 (= e!4688693 (and tp!2364388 tp!2364379))))

(declare-fun b!7947565 () Bool)

(declare-fun tp!2364390 () Bool)

(assert (=> b!7947565 (= e!4688691 tp!2364390)))

(declare-fun b!7947566 () Bool)

(declare-fun tp!2364389 () Bool)

(assert (=> b!7947566 (= e!4688693 tp!2364389)))

(declare-fun b!7947567 () Bool)

(assert (=> b!7947567 (= e!4688694 e!4688690)))

(declare-fun res!3152150 () Bool)

(assert (=> b!7947567 (=> (not res!3152150) (not e!4688690))))

(declare-fun lt!2698821 () Int)

(declare-fun lt!2698822 () List!74682)

(declare-fun r!24602 () Regex!21453)

(declare-fun lt!2698823 () Int)

(declare-fun isEmpty!42857 (List!74682) Bool)

(declare-datatypes ((tuple2!70568 0))(
  ( (tuple2!70569 (_1!38587 List!74682) (_2!38587 List!74682)) )
))
(declare-fun findLongestMatchInner!2234 (Regex!21453 List!74682 Int List!74682 List!74682 Int) tuple2!70568)

(assert (=> b!7947567 (= res!3152150 (not (isEmpty!42857 (_1!38587 (findLongestMatchInner!2234 r!24602 testedP!447 lt!2698823 lt!2698822 input!7927 lt!2698821)))))))

(declare-fun size!43389 (List!74682) Int)

(assert (=> b!7947567 (= lt!2698821 (size!43389 input!7927))))

(declare-fun getSuffix!3756 (List!74682 List!74682) List!74682)

(assert (=> b!7947567 (= lt!2698822 (getSuffix!3756 input!7927 testedP!447))))

(assert (=> b!7947567 (= lt!2698823 (size!43389 testedP!447))))

(declare-fun b!7947568 () Bool)

(declare-fun res!3152147 () Bool)

(assert (=> b!7947568 (=> (not res!3152147) (not e!4688694))))

(declare-fun isPrefix!6553 (List!74682 List!74682) Bool)

(assert (=> b!7947568 (= res!3152147 (isPrefix!6553 testedP!447 input!7927))))

(declare-fun b!7947569 () Bool)

(declare-fun res!3152149 () Bool)

(assert (=> b!7947569 (=> (not res!3152149) (not e!4688694))))

(declare-fun derivative!639 (Regex!21453 List!74682) Regex!21453)

(assert (=> b!7947569 (= res!3152149 (= (derivative!639 baseR!116 testedP!447) r!24602))))

(declare-fun b!7947570 () Bool)

(assert (=> b!7947570 (= e!4688690 (not true))))

(assert (=> b!7947570 (<= lt!2698823 lt!2698821)))

(declare-datatypes ((Unit!169752 0))(
  ( (Unit!169753) )
))
(declare-fun lt!2698820 () Unit!169752)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1070 (List!74682 List!74682) Unit!169752)

(assert (=> b!7947570 (= lt!2698820 (lemmaIsPrefixThenSmallerEqSize!1070 testedP!447 input!7927))))

(assert (= (and start!750016 res!3152148) b!7947568))

(assert (= (and b!7947568 res!3152147) b!7947569))

(assert (= (and b!7947569 res!3152149) b!7947567))

(assert (= (and b!7947567 res!3152150) b!7947560))

(assert (= (and b!7947560 res!3152146) b!7947570))

(get-info :version)

(assert (= (and start!750016 ((_ is ElementMatch!21453) baseR!116)) b!7947561))

(assert (= (and start!750016 ((_ is Concat!30452) baseR!116)) b!7947557))

(assert (= (and start!750016 ((_ is Star!21453) baseR!116)) b!7947565))

(assert (= (and start!750016 ((_ is Union!21453) baseR!116)) b!7947562))

(assert (= (and start!750016 ((_ is Cons!74558) testedP!447)) b!7947558))

(assert (= (and start!750016 ((_ is Cons!74558) input!7927)) b!7947559))

(assert (= (and start!750016 ((_ is ElementMatch!21453) r!24602)) b!7947563))

(assert (= (and start!750016 ((_ is Concat!30452) r!24602)) b!7947556))

(assert (= (and start!750016 ((_ is Star!21453) r!24602)) b!7947566))

(assert (= (and start!750016 ((_ is Union!21453) r!24602)) b!7947564))

(declare-fun m!8333144 () Bool)

(assert (=> b!7947569 m!8333144))

(declare-fun m!8333146 () Bool)

(assert (=> b!7947567 m!8333146))

(declare-fun m!8333148 () Bool)

(assert (=> b!7947567 m!8333148))

(declare-fun m!8333150 () Bool)

(assert (=> b!7947567 m!8333150))

(declare-fun m!8333152 () Bool)

(assert (=> b!7947567 m!8333152))

(declare-fun m!8333154 () Bool)

(assert (=> b!7947567 m!8333154))

(declare-fun m!8333156 () Bool)

(assert (=> start!750016 m!8333156))

(declare-fun m!8333158 () Bool)

(assert (=> b!7947570 m!8333158))

(declare-fun m!8333160 () Bool)

(assert (=> b!7947568 m!8333160))

(check-sat (not b!7947568) (not b!7947570) (not b!7947566) (not b!7947567) (not b!7947558) (not b!7947556) (not b!7947559) (not b!7947569) (not start!750016) (not b!7947562) (not b!7947557) (not b!7947565) (not b!7947564) tp_is_empty!53449)
(check-sat)
