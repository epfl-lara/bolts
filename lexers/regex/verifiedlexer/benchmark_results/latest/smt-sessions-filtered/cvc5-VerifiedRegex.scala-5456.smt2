; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277030 () Bool)

(assert start!277030)

(declare-fun b!2845494 () Bool)

(declare-fun e!1802877 () Bool)

(declare-fun tp!912303 () Bool)

(assert (=> b!2845494 (= e!1802877 tp!912303)))

(declare-fun b!2845495 () Bool)

(declare-fun tp!912298 () Bool)

(declare-fun tp!912302 () Bool)

(assert (=> b!2845495 (= e!1802877 (and tp!912298 tp!912302))))

(declare-fun b!2845496 () Bool)

(declare-fun tp!912301 () Bool)

(declare-fun tp!912300 () Bool)

(assert (=> b!2845496 (= e!1802877 (and tp!912301 tp!912300))))

(declare-fun b!2845497 () Bool)

(declare-fun tp_is_empty!14695 () Bool)

(assert (=> b!2845497 (= e!1802877 tp_is_empty!14695)))

(declare-fun b!2845498 () Bool)

(declare-fun e!1802878 () Bool)

(declare-datatypes ((C!17114 0))(
  ( (C!17115 (val!10591 Int)) )
))
(declare-datatypes ((List!33857 0))(
  ( (Nil!33733) (Cons!33733 (h!39153 C!17114) (t!232880 List!33857)) )
))
(declare-datatypes ((IArray!20929 0))(
  ( (IArray!20930 (innerList!10522 List!33857)) )
))
(declare-datatypes ((Conc!10462 0))(
  ( (Node!10462 (left!25412 Conc!10462) (right!25742 Conc!10462) (csize!21154 Int) (cheight!10673 Int)) (Leaf!15919 (xs!13580 IArray!20929) (csize!21155 Int)) (Empty!10462) )
))
(declare-datatypes ((BalanceConc!20562 0))(
  ( (BalanceConc!20563 (c!459200 Conc!10462)) )
))
(declare-fun prefix!1325 () BalanceConc!20562)

(declare-fun tp!912299 () Bool)

(declare-fun inv!45742 (Conc!10462) Bool)

(assert (=> b!2845498 (= e!1802878 (and (inv!45742 (c!459200 prefix!1325)) tp!912299))))

(declare-fun res!1183490 () Bool)

(declare-fun e!1802879 () Bool)

(assert (=> start!277030 (=> (not res!1183490) (not e!1802879))))

(declare-datatypes ((Regex!8466 0))(
  ( (ElementMatch!8466 (c!459201 C!17114)) (Concat!13769 (regOne!17444 Regex!8466) (regTwo!17444 Regex!8466)) (EmptyExpr!8466) (Star!8466 (reg!8795 Regex!8466)) (EmptyLang!8466) (Union!8466 (regOne!17445 Regex!8466) (regTwo!17445 Regex!8466)) )
))
(declare-fun r!13354 () Regex!8466)

(declare-fun validRegex!3359 (Regex!8466) Bool)

(assert (=> start!277030 (= res!1183490 (validRegex!3359 r!13354))))

(assert (=> start!277030 e!1802879))

(assert (=> start!277030 e!1802877))

(declare-fun inv!45743 (BalanceConc!20562) Bool)

(assert (=> start!277030 (and (inv!45743 prefix!1325) e!1802878)))

(declare-fun b!2845499 () Bool)

(assert (=> b!2845499 (= e!1802879 (not true))))

(declare-fun lt!1012465 () Regex!8466)

(declare-datatypes ((List!33858 0))(
  ( (Nil!33734) (Cons!33734 (h!39154 Regex!8466) (t!232881 List!33858)) )
))
(declare-datatypes ((Context!4988 0))(
  ( (Context!4989 (exprs!2994 List!33858)) )
))
(declare-datatypes ((List!33859 0))(
  ( (Nil!33735) (Cons!33735 (h!39155 Context!4988) (t!232882 List!33859)) )
))
(declare-fun lt!1012461 () List!33859)

(declare-fun unfocusZipper!173 (List!33859) Regex!8466)

(assert (=> b!2845499 (= lt!1012465 (unfocusZipper!173 lt!1012461))))

(declare-fun lt!1012462 () List!33857)

(declare-fun list!12567 (BalanceConc!20562) List!33857)

(assert (=> b!2845499 (= lt!1012462 (list!12567 prefix!1325))))

(declare-fun lt!1012464 () (Set Context!4988))

(declare-fun toList!1903 ((Set Context!4988)) List!33859)

(assert (=> b!2845499 (= lt!1012461 (toList!1903 lt!1012464))))

(declare-fun prefixMatchZipper!228 ((Set Context!4988) List!33857) Bool)

(declare-fun dropList!1013 (BalanceConc!20562 Int) List!33857)

(declare-fun prefixMatchZipperSequence!749 ((Set Context!4988) BalanceConc!20562 Int) Bool)

(assert (=> b!2845499 (= (prefixMatchZipper!228 lt!1012464 (dropList!1013 prefix!1325 0)) (prefixMatchZipperSequence!749 lt!1012464 prefix!1325 0))))

(declare-datatypes ((Unit!47527 0))(
  ( (Unit!47528) )
))
(declare-fun lt!1012463 () Unit!47527)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!228 ((Set Context!4988) BalanceConc!20562 Int) Unit!47527)

(assert (=> b!2845499 (= lt!1012463 (lemmaprefixMatchZipperSequenceEquivalent!228 lt!1012464 prefix!1325 0))))

(declare-fun focus!298 (Regex!8466) (Set Context!4988))

(assert (=> b!2845499 (= lt!1012464 (focus!298 r!13354))))

(assert (= (and start!277030 res!1183490) b!2845499))

(assert (= (and start!277030 (is-ElementMatch!8466 r!13354)) b!2845497))

(assert (= (and start!277030 (is-Concat!13769 r!13354)) b!2845495))

(assert (= (and start!277030 (is-Star!8466 r!13354)) b!2845494))

(assert (= (and start!277030 (is-Union!8466 r!13354)) b!2845496))

(assert (= start!277030 b!2845498))

(declare-fun m!3273417 () Bool)

(assert (=> b!2845498 m!3273417))

(declare-fun m!3273419 () Bool)

(assert (=> start!277030 m!3273419))

(declare-fun m!3273421 () Bool)

(assert (=> start!277030 m!3273421))

(declare-fun m!3273423 () Bool)

(assert (=> b!2845499 m!3273423))

(declare-fun m!3273425 () Bool)

(assert (=> b!2845499 m!3273425))

(assert (=> b!2845499 m!3273423))

(declare-fun m!3273427 () Bool)

(assert (=> b!2845499 m!3273427))

(declare-fun m!3273429 () Bool)

(assert (=> b!2845499 m!3273429))

(declare-fun m!3273431 () Bool)

(assert (=> b!2845499 m!3273431))

(declare-fun m!3273433 () Bool)

(assert (=> b!2845499 m!3273433))

(declare-fun m!3273435 () Bool)

(assert (=> b!2845499 m!3273435))

(declare-fun m!3273437 () Bool)

(assert (=> b!2845499 m!3273437))

(push 1)

(assert (not b!2845496))

(assert (not b!2845499))

(assert (not b!2845494))

(assert tp_is_empty!14695)

(assert (not b!2845495))

(assert (not b!2845498))

(assert (not start!277030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

