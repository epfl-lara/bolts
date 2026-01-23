; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!527356 () Bool)

(assert start!527356)

(declare-fun b!4988793 () Bool)

(declare-fun e!3117876 () Bool)

(declare-datatypes ((C!27682 0))(
  ( (C!27683 (val!23207 Int)) )
))
(declare-datatypes ((List!57762 0))(
  ( (Nil!57638) (Cons!57638 (h!64086 C!27682) (t!370088 List!57762)) )
))
(declare-datatypes ((IArray!30531 0))(
  ( (IArray!30532 (innerList!15323 List!57762)) )
))
(declare-datatypes ((Conc!15235 0))(
  ( (Node!15235 (left!42183 Conc!15235) (right!42513 Conc!15235) (csize!30700 Int) (cheight!15446 Int)) (Leaf!25302 (xs!18561 IArray!30531) (csize!30701 Int)) (Empty!15235) )
))
(declare-datatypes ((BalanceConc!29900 0))(
  ( (BalanceConc!29901 (c!851277 Conc!15235)) )
))
(declare-fun input!6528 () BalanceConc!29900)

(declare-fun tp!1397989 () Bool)

(declare-fun inv!75617 (Conc!15235) Bool)

(assert (=> b!4988793 (= e!3117876 (and (inv!75617 (c!851277 input!6528)) tp!1397989))))

(declare-fun res!2129710 () Bool)

(declare-fun e!3117877 () Bool)

(assert (=> start!527356 (=> (not res!2129710) (not e!3117877))))

(declare-datatypes ((Regex!13716 0))(
  ( (ElementMatch!13716 (c!851278 C!27682)) (Concat!22509 (regOne!27944 Regex!13716) (regTwo!27944 Regex!13716)) (EmptyExpr!13716) (Star!13716 (reg!14045 Regex!13716)) (EmptyLang!13716) (Union!13716 (regOne!27945 Regex!13716) (regTwo!27945 Regex!13716)) )
))
(declare-fun r!15264 () Regex!13716)

(declare-fun validRegex!6013 (Regex!13716) Bool)

(assert (=> start!527356 (= res!2129710 (validRegex!6013 r!15264))))

(assert (=> start!527356 e!3117877))

(declare-fun e!3117875 () Bool)

(assert (=> start!527356 e!3117875))

(declare-fun inv!75618 (BalanceConc!29900) Bool)

(assert (=> start!527356 (and (inv!75618 input!6528) e!3117876)))

(declare-fun totalInput!1177 () BalanceConc!29900)

(declare-fun e!3117874 () Bool)

(assert (=> start!527356 (and (inv!75618 totalInput!1177) e!3117874)))

(declare-fun b!4988794 () Bool)

(declare-fun tp_is_empty!36429 () Bool)

(assert (=> b!4988794 (= e!3117875 tp_is_empty!36429)))

(declare-fun b!4988795 () Bool)

(assert (=> b!4988795 (= e!3117877 false)))

(declare-fun lt!2062439 () Bool)

(declare-fun isSuffix!1282 (List!57762 List!57762) Bool)

(declare-fun list!18517 (BalanceConc!29900) List!57762)

(assert (=> b!4988795 (= lt!2062439 (isSuffix!1282 (list!18517 input!6528) (list!18517 totalInput!1177)))))

(declare-fun b!4988796 () Bool)

(declare-fun tp!1397991 () Bool)

(assert (=> b!4988796 (= e!3117874 (and (inv!75617 (c!851277 totalInput!1177)) tp!1397991))))

(declare-fun b!4988797 () Bool)

(declare-fun tp!1397990 () Bool)

(declare-fun tp!1397993 () Bool)

(assert (=> b!4988797 (= e!3117875 (and tp!1397990 tp!1397993))))

(declare-fun b!4988798 () Bool)

(declare-fun tp!1397988 () Bool)

(declare-fun tp!1397992 () Bool)

(assert (=> b!4988798 (= e!3117875 (and tp!1397988 tp!1397992))))

(declare-fun b!4988799 () Bool)

(declare-fun tp!1397987 () Bool)

(assert (=> b!4988799 (= e!3117875 tp!1397987)))

(assert (= (and start!527356 res!2129710) b!4988795))

(assert (= (and start!527356 (is-ElementMatch!13716 r!15264)) b!4988794))

(assert (= (and start!527356 (is-Concat!22509 r!15264)) b!4988798))

(assert (= (and start!527356 (is-Star!13716 r!15264)) b!4988799))

(assert (= (and start!527356 (is-Union!13716 r!15264)) b!4988797))

(assert (= start!527356 b!4988793))

(assert (= start!527356 b!4988796))

(declare-fun m!6020770 () Bool)

(assert (=> b!4988793 m!6020770))

(declare-fun m!6020772 () Bool)

(assert (=> start!527356 m!6020772))

(declare-fun m!6020774 () Bool)

(assert (=> start!527356 m!6020774))

(declare-fun m!6020776 () Bool)

(assert (=> start!527356 m!6020776))

(declare-fun m!6020778 () Bool)

(assert (=> b!4988795 m!6020778))

(declare-fun m!6020780 () Bool)

(assert (=> b!4988795 m!6020780))

(assert (=> b!4988795 m!6020778))

(assert (=> b!4988795 m!6020780))

(declare-fun m!6020782 () Bool)

(assert (=> b!4988795 m!6020782))

(declare-fun m!6020784 () Bool)

(assert (=> b!4988796 m!6020784))

(push 1)

(assert (not b!4988793))

(assert (not start!527356))

(assert (not b!4988799))

(assert (not b!4988795))

(assert (not b!4988798))

(assert tp_is_empty!36429)

(assert (not b!4988797))

(assert (not b!4988796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

