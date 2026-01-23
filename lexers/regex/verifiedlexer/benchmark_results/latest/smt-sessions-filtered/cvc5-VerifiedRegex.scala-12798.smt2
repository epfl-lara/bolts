; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707738 () Bool)

(assert start!707738)

(assert (=> start!707738 true))

(declare-fun b!7261553 () Bool)

(declare-fun res!2944270 () Bool)

(declare-fun e!4354415 () Bool)

(assert (=> b!7261553 (=> (not res!2944270) (not e!4354415))))

(declare-datatypes ((C!37682 0))(
  ( (C!37683 (val!28789 Int)) )
))
(declare-datatypes ((Regex!18704 0))(
  ( (ElementMatch!18704 (c!1350940 C!37682)) (Concat!27549 (regOne!37920 Regex!18704) (regTwo!37920 Regex!18704)) (EmptyExpr!18704) (Star!18704 (reg!19033 Regex!18704)) (EmptyLang!18704) (Union!18704 (regOne!37921 Regex!18704) (regTwo!37921 Regex!18704)) )
))
(declare-datatypes ((List!70691 0))(
  ( (Nil!70567) (Cons!70567 (h!77015 Regex!18704) (t!384757 List!70691)) )
))
(declare-datatypes ((Context!15288 0))(
  ( (Context!15289 (exprs!8144 List!70691)) )
))
(declare-datatypes ((List!70692 0))(
  ( (Nil!70568) (Cons!70568 (h!77016 Context!15288) (t!384758 List!70692)) )
))
(declare-fun zl!1664 () List!70692)

(assert (=> b!7261553 (= res!2944270 (is-Cons!70568 zl!1664))))

(declare-fun e!4354414 () Bool)

(declare-fun e!4354416 () Bool)

(declare-fun b!7261554 () Bool)

(declare-fun tp!2039170 () Bool)

(declare-fun inv!89771 (Context!15288) Bool)

(assert (=> b!7261554 (= e!4354416 (and (inv!89771 (h!77016 zl!1664)) e!4354414 tp!2039170))))

(declare-fun b!7261555 () Bool)

(declare-fun e!4354411 () Bool)

(declare-fun lt!2590936 () (Set Context!15288))

(declare-datatypes ((List!70693 0))(
  ( (Nil!70569) (Cons!70569 (h!77017 C!37682) (t!384759 List!70693)) )
))
(declare-fun s!7912 () List!70693)

(declare-fun matchZipper!3612 ((Set Context!15288) List!70693) Bool)

(assert (=> b!7261555 (= e!4354411 (matchZipper!3612 lt!2590936 s!7912))))

(declare-fun b!7261556 () Bool)

(declare-fun e!4354412 () Bool)

(assert (=> b!7261556 (= e!4354412 true)))

(declare-fun lt!2590935 () Bool)

(declare-fun content!14702 (List!70692) (Set Context!15288))

(assert (=> b!7261556 (= lt!2590935 (matchZipper!3612 (content!14702 zl!1664) s!7912))))

(assert (=> b!7261556 (matchZipper!3612 lt!2590936 s!7912)))

(declare-datatypes ((Unit!164046 0))(
  ( (Unit!164047) )
))
(declare-fun lt!2590933 () Unit!164046)

(declare-fun lemmaExistsMatchingContextThenMatchingString!97 (List!70692 List!70693) Unit!164046)

(assert (=> b!7261556 (= lt!2590933 (lemmaExistsMatchingContextThenMatchingString!97 (t!384758 zl!1664) s!7912))))

(declare-fun res!2944268 () Bool)

(assert (=> start!707738 (=> (not res!2944268) (not e!4354415))))

(declare-fun lambda!446694 () Int)

(declare-fun exists!4470 (List!70692 Int) Bool)

(assert (=> start!707738 (= res!2944268 (exists!4470 zl!1664 lambda!446694))))

(assert (=> start!707738 e!4354415))

(assert (=> start!707738 e!4354416))

(declare-fun e!4354413 () Bool)

(assert (=> start!707738 e!4354413))

(declare-fun b!7261557 () Bool)

(assert (=> b!7261557 (= e!4354415 (not e!4354412))))

(declare-fun res!2944267 () Bool)

(assert (=> b!7261557 (=> res!2944267 e!4354412)))

(declare-fun lt!2590931 () Bool)

(assert (=> b!7261557 (= res!2944267 lt!2590931)))

(declare-fun lt!2590934 () (Set Context!15288))

(assert (=> b!7261557 (= (matchZipper!3612 (set.union lt!2590934 lt!2590936) s!7912) e!4354411)))

(declare-fun res!2944269 () Bool)

(assert (=> b!7261557 (=> res!2944269 e!4354411)))

(assert (=> b!7261557 (= res!2944269 lt!2590931)))

(assert (=> b!7261557 (= lt!2590931 (matchZipper!3612 lt!2590934 s!7912))))

(declare-fun lt!2590932 () Unit!164046)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1753 ((Set Context!15288) (Set Context!15288) List!70693) Unit!164046)

(assert (=> b!7261557 (= lt!2590932 (lemmaZipperConcatMatchesSameAsBothZippers!1753 lt!2590934 lt!2590936 s!7912))))

(assert (=> b!7261557 (= lt!2590936 (content!14702 (t!384758 zl!1664)))))

(assert (=> b!7261557 (= lt!2590934 (set.insert (h!77016 zl!1664) (as set.empty (Set Context!15288))))))

(declare-fun b!7261558 () Bool)

(declare-fun tp!2039171 () Bool)

(assert (=> b!7261558 (= e!4354414 tp!2039171)))

(declare-fun b!7261559 () Bool)

(declare-fun tp_is_empty!46873 () Bool)

(declare-fun tp!2039169 () Bool)

(assert (=> b!7261559 (= e!4354413 (and tp_is_empty!46873 tp!2039169))))

(assert (= (and start!707738 res!2944268) b!7261553))

(assert (= (and b!7261553 res!2944270) b!7261557))

(assert (= (and b!7261557 (not res!2944269)) b!7261555))

(assert (= (and b!7261557 (not res!2944267)) b!7261556))

(assert (= b!7261554 b!7261558))

(assert (= (and start!707738 (is-Cons!70568 zl!1664)) b!7261554))

(assert (= (and start!707738 (is-Cons!70569 s!7912)) b!7261559))

(declare-fun m!7946262 () Bool)

(assert (=> b!7261557 m!7946262))

(declare-fun m!7946264 () Bool)

(assert (=> b!7261557 m!7946264))

(declare-fun m!7946266 () Bool)

(assert (=> b!7261557 m!7946266))

(declare-fun m!7946268 () Bool)

(assert (=> b!7261557 m!7946268))

(declare-fun m!7946270 () Bool)

(assert (=> b!7261557 m!7946270))

(declare-fun m!7946272 () Bool)

(assert (=> start!707738 m!7946272))

(declare-fun m!7946274 () Bool)

(assert (=> b!7261556 m!7946274))

(assert (=> b!7261556 m!7946274))

(declare-fun m!7946276 () Bool)

(assert (=> b!7261556 m!7946276))

(declare-fun m!7946278 () Bool)

(assert (=> b!7261556 m!7946278))

(declare-fun m!7946280 () Bool)

(assert (=> b!7261556 m!7946280))

(assert (=> b!7261555 m!7946278))

(declare-fun m!7946282 () Bool)

(assert (=> b!7261554 m!7946282))

(push 1)

(assert (not b!7261555))

(assert (not b!7261554))

(assert (not start!707738))

(assert (not b!7261556))

(assert (not b!7261559))

(assert (not b!7261558))

(assert tp_is_empty!46873)

(assert (not b!7261557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

