; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277098 () Bool)

(assert start!277098)

(declare-fun b!2845940 () Bool)

(declare-fun e!1803169 () Bool)

(assert (=> b!2845940 (= e!1803169 (not true))))

(declare-datatypes ((C!17130 0))(
  ( (C!17131 (val!10599 Int)) )
))
(declare-datatypes ((List!33883 0))(
  ( (Nil!33759) (Cons!33759 (h!39179 C!17130) (t!232906 List!33883)) )
))
(declare-fun lt!1012621 () List!33883)

(declare-datatypes ((IArray!20943 0))(
  ( (IArray!20944 (innerList!10529 List!33883)) )
))
(declare-datatypes ((Conc!10469 0))(
  ( (Node!10469 (left!25423 Conc!10469) (right!25753 Conc!10469) (csize!21168 Int) (cheight!10680 Int)) (Leaf!15930 (xs!13587 IArray!20943) (csize!21169 Int)) (Empty!10469) )
))
(declare-datatypes ((BalanceConc!20576 0))(
  ( (BalanceConc!20577 (c!459253 Conc!10469)) )
))
(declare-fun prefix!1325 () BalanceConc!20576)

(declare-fun list!12576 (BalanceConc!20576) List!33883)

(assert (=> b!2845940 (= lt!1012621 (list!12576 prefix!1325))))

(declare-datatypes ((Regex!8474 0))(
  ( (ElementMatch!8474 (c!459254 C!17130)) (Concat!13777 (regOne!17460 Regex!8474) (regTwo!17460 Regex!8474)) (EmptyExpr!8474) (Star!8474 (reg!8803 Regex!8474)) (EmptyLang!8474) (Union!8474 (regOne!17461 Regex!8474) (regTwo!17461 Regex!8474)) )
))
(declare-datatypes ((List!33884 0))(
  ( (Nil!33760) (Cons!33760 (h!39180 Regex!8474) (t!232907 List!33884)) )
))
(declare-datatypes ((Context!5004 0))(
  ( (Context!5005 (exprs!3002 List!33884)) )
))
(declare-datatypes ((List!33885 0))(
  ( (Nil!33761) (Cons!33761 (h!39181 Context!5004) (t!232908 List!33885)) )
))
(declare-fun lt!1012622 () List!33885)

(declare-fun lt!1012624 () (Set Context!5004))

(declare-fun toList!1910 ((Set Context!5004)) List!33885)

(assert (=> b!2845940 (= lt!1012622 (toList!1910 lt!1012624))))

(declare-fun prefixMatchZipper!235 ((Set Context!5004) List!33883) Bool)

(declare-fun dropList!1020 (BalanceConc!20576 Int) List!33883)

(declare-fun prefixMatchZipperSequence!756 ((Set Context!5004) BalanceConc!20576 Int) Bool)

(assert (=> b!2845940 (= (prefixMatchZipper!235 lt!1012624 (dropList!1020 prefix!1325 0)) (prefixMatchZipperSequence!756 lt!1012624 prefix!1325 0))))

(declare-datatypes ((Unit!47541 0))(
  ( (Unit!47542) )
))
(declare-fun lt!1012623 () Unit!47541)

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!235 ((Set Context!5004) BalanceConc!20576 Int) Unit!47541)

(assert (=> b!2845940 (= lt!1012623 (lemmaprefixMatchZipperSequenceEquivalent!235 lt!1012624 prefix!1325 0))))

(declare-fun r!13354 () Regex!8474)

(declare-fun focus!305 (Regex!8474) (Set Context!5004))

(assert (=> b!2845940 (= lt!1012624 (focus!305 r!13354))))

(declare-fun b!2845941 () Bool)

(declare-fun e!1803171 () Bool)

(declare-fun tp!912619 () Bool)

(assert (=> b!2845941 (= e!1803171 tp!912619)))

(declare-fun b!2845942 () Bool)

(declare-fun tp!912615 () Bool)

(declare-fun tp!912614 () Bool)

(assert (=> b!2845942 (= e!1803171 (and tp!912615 tp!912614))))

(declare-fun res!1183576 () Bool)

(assert (=> start!277098 (=> (not res!1183576) (not e!1803169))))

(declare-fun validRegex!3366 (Regex!8474) Bool)

(assert (=> start!277098 (= res!1183576 (validRegex!3366 r!13354))))

(assert (=> start!277098 e!1803169))

(assert (=> start!277098 e!1803171))

(declare-fun e!1803170 () Bool)

(declare-fun inv!45775 (BalanceConc!20576) Bool)

(assert (=> start!277098 (and (inv!45775 prefix!1325) e!1803170)))

(declare-fun b!2845943 () Bool)

(declare-fun tp!912618 () Bool)

(declare-fun inv!45776 (Conc!10469) Bool)

(assert (=> b!2845943 (= e!1803170 (and (inv!45776 (c!459253 prefix!1325)) tp!912618))))

(declare-fun b!2845944 () Bool)

(declare-fun tp!912617 () Bool)

(declare-fun tp!912616 () Bool)

(assert (=> b!2845944 (= e!1803171 (and tp!912617 tp!912616))))

(declare-fun b!2845945 () Bool)

(declare-fun tp_is_empty!14711 () Bool)

(assert (=> b!2845945 (= e!1803171 tp_is_empty!14711)))

(assert (= (and start!277098 res!1183576) b!2845940))

(assert (= (and start!277098 (is-ElementMatch!8474 r!13354)) b!2845945))

(assert (= (and start!277098 (is-Concat!13777 r!13354)) b!2845942))

(assert (= (and start!277098 (is-Star!8474 r!13354)) b!2845941))

(assert (= (and start!277098 (is-Union!8474 r!13354)) b!2845944))

(assert (= start!277098 b!2845943))

(declare-fun m!3273809 () Bool)

(assert (=> b!2845940 m!3273809))

(declare-fun m!3273811 () Bool)

(assert (=> b!2845940 m!3273811))

(declare-fun m!3273813 () Bool)

(assert (=> b!2845940 m!3273813))

(declare-fun m!3273815 () Bool)

(assert (=> b!2845940 m!3273815))

(assert (=> b!2845940 m!3273815))

(declare-fun m!3273817 () Bool)

(assert (=> b!2845940 m!3273817))

(declare-fun m!3273819 () Bool)

(assert (=> b!2845940 m!3273819))

(declare-fun m!3273821 () Bool)

(assert (=> b!2845940 m!3273821))

(declare-fun m!3273823 () Bool)

(assert (=> start!277098 m!3273823))

(declare-fun m!3273825 () Bool)

(assert (=> start!277098 m!3273825))

(declare-fun m!3273827 () Bool)

(assert (=> b!2845943 m!3273827))

(push 1)

(assert (not b!2845944))

(assert tp_is_empty!14711)

(assert (not b!2845943))

(assert (not start!277098))

(assert (not b!2845942))

(assert (not b!2845941))

(assert (not b!2845940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

