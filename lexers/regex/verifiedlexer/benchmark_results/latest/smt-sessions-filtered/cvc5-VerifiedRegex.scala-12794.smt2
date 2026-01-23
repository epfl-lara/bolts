; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707622 () Bool)

(assert start!707622)

(assert (=> start!707622 true))

(declare-fun e!4354064 () Bool)

(declare-datatypes ((C!37666 0))(
  ( (C!37667 (val!28781 Int)) )
))
(declare-datatypes ((Regex!18696 0))(
  ( (ElementMatch!18696 (c!1350828 C!37666)) (Concat!27541 (regOne!37904 Regex!18696) (regTwo!37904 Regex!18696)) (EmptyExpr!18696) (Star!18696 (reg!19025 Regex!18696)) (EmptyLang!18696) (Union!18696 (regOne!37905 Regex!18696) (regTwo!37905 Regex!18696)) )
))
(declare-datatypes ((List!70667 0))(
  ( (Nil!70543) (Cons!70543 (h!76991 Regex!18696) (t!384733 List!70667)) )
))
(declare-datatypes ((Context!15272 0))(
  ( (Context!15273 (exprs!8136 List!70667)) )
))
(declare-datatypes ((List!70668 0))(
  ( (Nil!70544) (Cons!70544 (h!76992 Context!15272) (t!384734 List!70668)) )
))
(declare-fun zl!1664 () List!70668)

(declare-fun b!7261014 () Bool)

(declare-fun e!4354062 () Bool)

(declare-fun tp!2038965 () Bool)

(declare-fun inv!89751 (Context!15272) Bool)

(assert (=> b!7261014 (= e!4354064 (and (inv!89751 (h!76992 zl!1664)) e!4354062 tp!2038965))))

(declare-fun b!7261015 () Bool)

(declare-fun e!4354063 () Bool)

(assert (=> b!7261015 (= e!4354063 true)))

(declare-fun lt!2590791 () Bool)

(declare-datatypes ((List!70669 0))(
  ( (Nil!70545) (Cons!70545 (h!76993 C!37666) (t!384735 List!70669)) )
))
(declare-fun s!7912 () List!70669)

(declare-fun matchZipper!3604 ((Set Context!15272) List!70669) Bool)

(declare-fun content!14694 (List!70668) (Set Context!15272))

(assert (=> b!7261015 (= lt!2590791 (matchZipper!3604 (content!14694 zl!1664) s!7912))))

(declare-fun b!7261016 () Bool)

(declare-fun res!2944116 () Bool)

(declare-fun e!4354060 () Bool)

(assert (=> b!7261016 (=> (not res!2944116) (not e!4354060))))

(assert (=> b!7261016 (= res!2944116 (is-Cons!70544 zl!1664))))

(declare-fun b!7261017 () Bool)

(declare-fun tp!2038963 () Bool)

(assert (=> b!7261017 (= e!4354062 tp!2038963)))

(declare-fun b!7261018 () Bool)

(declare-fun e!4354059 () Bool)

(declare-fun lt!2590789 () (Set Context!15272))

(assert (=> b!7261018 (= e!4354059 (matchZipper!3604 lt!2590789 s!7912))))

(declare-fun b!7261019 () Bool)

(declare-fun e!4354061 () Bool)

(declare-fun tp_is_empty!46857 () Bool)

(declare-fun tp!2038964 () Bool)

(assert (=> b!7261019 (= e!4354061 (and tp_is_empty!46857 tp!2038964))))

(declare-fun b!7261013 () Bool)

(assert (=> b!7261013 (= e!4354060 (not e!4354063))))

(declare-fun res!2944113 () Bool)

(assert (=> b!7261013 (=> res!2944113 e!4354063)))

(declare-fun lt!2590790 () Bool)

(assert (=> b!7261013 (= res!2944113 (not lt!2590790))))

(declare-fun lt!2590792 () (Set Context!15272))

(assert (=> b!7261013 (= (matchZipper!3604 (set.union lt!2590792 lt!2590789) s!7912) e!4354059)))

(declare-fun res!2944115 () Bool)

(assert (=> b!7261013 (=> res!2944115 e!4354059)))

(assert (=> b!7261013 (= res!2944115 lt!2590790)))

(assert (=> b!7261013 (= lt!2590790 (matchZipper!3604 lt!2590792 s!7912))))

(declare-datatypes ((Unit!164030 0))(
  ( (Unit!164031) )
))
(declare-fun lt!2590793 () Unit!164030)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1745 ((Set Context!15272) (Set Context!15272) List!70669) Unit!164030)

(assert (=> b!7261013 (= lt!2590793 (lemmaZipperConcatMatchesSameAsBothZippers!1745 lt!2590792 lt!2590789 s!7912))))

(assert (=> b!7261013 (= lt!2590789 (content!14694 (t!384734 zl!1664)))))

(assert (=> b!7261013 (= lt!2590792 (set.insert (h!76992 zl!1664) (as set.empty (Set Context!15272))))))

(declare-fun res!2944114 () Bool)

(assert (=> start!707622 (=> (not res!2944114) (not e!4354060))))

(declare-fun lambda!446594 () Int)

(declare-fun exists!4460 (List!70668 Int) Bool)

(assert (=> start!707622 (= res!2944114 (exists!4460 zl!1664 lambda!446594))))

(assert (=> start!707622 e!4354060))

(assert (=> start!707622 e!4354064))

(assert (=> start!707622 e!4354061))

(assert (= (and start!707622 res!2944114) b!7261016))

(assert (= (and b!7261016 res!2944116) b!7261013))

(assert (= (and b!7261013 (not res!2944115)) b!7261018))

(assert (= (and b!7261013 (not res!2944113)) b!7261015))

(assert (= b!7261014 b!7261017))

(assert (= (and start!707622 (is-Cons!70544 zl!1664)) b!7261014))

(assert (= (and start!707622 (is-Cons!70545 s!7912)) b!7261019))

(declare-fun m!7945718 () Bool)

(assert (=> b!7261014 m!7945718))

(declare-fun m!7945720 () Bool)

(assert (=> b!7261018 m!7945720))

(declare-fun m!7945722 () Bool)

(assert (=> b!7261013 m!7945722))

(declare-fun m!7945724 () Bool)

(assert (=> b!7261013 m!7945724))

(declare-fun m!7945726 () Bool)

(assert (=> b!7261013 m!7945726))

(declare-fun m!7945728 () Bool)

(assert (=> b!7261013 m!7945728))

(declare-fun m!7945730 () Bool)

(assert (=> b!7261013 m!7945730))

(declare-fun m!7945732 () Bool)

(assert (=> b!7261015 m!7945732))

(assert (=> b!7261015 m!7945732))

(declare-fun m!7945734 () Bool)

(assert (=> b!7261015 m!7945734))

(declare-fun m!7945736 () Bool)

(assert (=> start!707622 m!7945736))

(push 1)

(assert (not b!7261013))

(assert (not start!707622))

(assert (not b!7261018))

(assert tp_is_empty!46857)

(assert (not b!7261017))

(assert (not b!7261019))

(assert (not b!7261014))

(assert (not b!7261015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

