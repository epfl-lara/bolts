; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!504908 () Bool)

(assert start!504908)

(declare-fun b!4846676 () Bool)

(declare-fun e!3029326 () Bool)

(declare-fun e!3029329 () Bool)

(assert (=> b!4846676 (= e!3029326 e!3029329)))

(declare-fun res!2067666 () Bool)

(assert (=> b!4846676 (=> (not res!2067666) (not e!3029329))))

(declare-datatypes ((K!17299 0))(
  ( (K!17300 (val!22145 Int)) )
))
(declare-datatypes ((V!17545 0))(
  ( (V!17546 (val!22146 Int)) )
))
(declare-datatypes ((tuple2!59162 0))(
  ( (tuple2!59163 (_1!32875 K!17299) (_2!32875 V!17545)) )
))
(declare-datatypes ((List!55638 0))(
  ( (Nil!55514) (Cons!55514 (h!61951 tuple2!59162) (t!363134 List!55638)) )
))
(declare-datatypes ((tuple2!59164 0))(
  ( (tuple2!59165 (_1!32876 (_ BitVec 64)) (_2!32876 List!55638)) )
))
(declare-datatypes ((List!55639 0))(
  ( (Nil!55515) (Cons!55515 (h!61952 tuple2!59164) (t!363135 List!55639)) )
))
(declare-datatypes ((ListLongMap!6419 0))(
  ( (ListLongMap!6420 (toList!7838 List!55639)) )
))
(declare-fun lm!2646 () ListLongMap!6419)

(declare-fun lt!1988202 () (_ BitVec 64))

(declare-fun contains!19160 (ListLongMap!6419 (_ BitVec 64)) Bool)

(assert (=> b!4846676 (= res!2067666 (contains!19160 lm!2646 lt!1988202))))

(declare-datatypes ((Hashable!7478 0))(
  ( (HashableExt!7477 (__x!33753 Int)) )
))
(declare-fun hashF!1641 () Hashable!7478)

(declare-fun key!6445 () K!17299)

(declare-fun hash!5553 (Hashable!7478 K!17299) (_ BitVec 64))

(assert (=> b!4846676 (= lt!1988202 (hash!5553 hashF!1641 key!6445))))

(declare-fun b!4846677 () Bool)

(declare-fun e!3029328 () Bool)

(declare-fun e!3029327 () Bool)

(assert (=> b!4846677 (= e!3029328 e!3029327)))

(declare-fun res!2067670 () Bool)

(assert (=> b!4846677 (=> res!2067670 e!3029327)))

(declare-fun lt!1988197 () List!55638)

(declare-datatypes ((Option!13640 0))(
  ( (None!13639) (Some!13639 (v!49389 tuple2!59162)) )
))
(declare-fun isDefined!10732 (Option!13640) Bool)

(declare-fun getPair!1068 (List!55638 K!17299) Option!13640)

(assert (=> b!4846677 (= res!2067670 (not (isDefined!10732 (getPair!1068 lt!1988197 key!6445))))))

(declare-fun lt!1988195 () tuple2!59164)

(declare-datatypes ((Unit!145639 0))(
  ( (Unit!145640) )
))
(declare-fun lt!1988198 () Unit!145639)

(declare-fun lt!1988192 () ListLongMap!6419)

(declare-fun lambda!242374 () Int)

(declare-fun forallContained!4519 (List!55639 Int tuple2!59164) Unit!145639)

(assert (=> b!4846677 (= lt!1988198 (forallContained!4519 (toList!7838 lt!1988192) lambda!242374 lt!1988195))))

(declare-fun contains!19161 (List!55639 tuple2!59164) Bool)

(assert (=> b!4846677 (contains!19161 (toList!7838 lt!1988192) lt!1988195)))

(assert (=> b!4846677 (= lt!1988195 (tuple2!59165 lt!1988202 lt!1988197))))

(declare-fun lt!1988194 () Unit!145639)

(declare-fun lemmaGetValueImpliesTupleContained!745 (ListLongMap!6419 (_ BitVec 64) List!55638) Unit!145639)

(assert (=> b!4846677 (= lt!1988194 (lemmaGetValueImpliesTupleContained!745 lt!1988192 lt!1988202 lt!1988197))))

(declare-fun apply!13421 (ListLongMap!6419 (_ BitVec 64)) List!55638)

(assert (=> b!4846677 (= lt!1988197 (apply!13421 lt!1988192 lt!1988202))))

(declare-fun b!4846678 () Bool)

(declare-fun e!3029330 () Bool)

(assert (=> b!4846678 (= e!3029329 (not e!3029330))))

(declare-fun res!2067668 () Bool)

(assert (=> b!4846678 (=> res!2067668 e!3029330)))

(declare-fun lt!1988193 () List!55638)

(assert (=> b!4846678 (= res!2067668 (not (isDefined!10732 (getPair!1068 lt!1988193 key!6445))))))

(declare-fun lt!1988196 () Unit!145639)

(declare-fun lt!1988201 () tuple2!59164)

(assert (=> b!4846678 (= lt!1988196 (forallContained!4519 (toList!7838 lm!2646) lambda!242374 lt!1988201))))

(assert (=> b!4846678 (contains!19161 (toList!7838 lm!2646) lt!1988201)))

(assert (=> b!4846678 (= lt!1988201 (tuple2!59165 lt!1988202 lt!1988193))))

(declare-fun lt!1988200 () Unit!145639)

(assert (=> b!4846678 (= lt!1988200 (lemmaGetValueImpliesTupleContained!745 lm!2646 lt!1988202 lt!1988193))))

(assert (=> b!4846678 (= lt!1988193 (apply!13421 lm!2646 lt!1988202))))

(declare-fun b!4846679 () Bool)

(declare-fun e!3029324 () Bool)

(declare-fun tp!1364500 () Bool)

(assert (=> b!4846679 (= e!3029324 tp!1364500)))

(declare-fun b!4846680 () Bool)

(declare-fun e!3029325 () Bool)

(assert (=> b!4846680 (= e!3029330 e!3029325)))

(declare-fun res!2067674 () Bool)

(assert (=> b!4846680 (=> res!2067674 e!3029325)))

(declare-fun containsKey!4660 (List!55638 K!17299) Bool)

(assert (=> b!4846680 (= res!2067674 (containsKey!4660 (_2!32876 (h!61952 (toList!7838 lm!2646))) key!6445))))

(assert (=> b!4846680 (not (containsKey!4660 (apply!13421 lm!2646 (_1!32876 (h!61952 (toList!7838 lm!2646)))) key!6445))))

(declare-fun lt!1988199 () Unit!145639)

(declare-fun lemmaNotSameHashThenCannotContainKey!246 (ListLongMap!6419 K!17299 (_ BitVec 64) Hashable!7478) Unit!145639)

(assert (=> b!4846680 (= lt!1988199 (lemmaNotSameHashThenCannotContainKey!246 lm!2646 key!6445 (_1!32876 (h!61952 (toList!7838 lm!2646))) hashF!1641))))

(declare-fun b!4846681 () Bool)

(declare-fun forall!12931 (List!55639 Int) Bool)

(assert (=> b!4846681 (= e!3029327 (forall!12931 (toList!7838 lt!1988192) lambda!242374))))

(declare-fun b!4846682 () Bool)

(declare-fun res!2067671 () Bool)

(assert (=> b!4846682 (=> res!2067671 e!3029328)))

(assert (=> b!4846682 (= res!2067671 (not (contains!19160 lt!1988192 lt!1988202)))))

(declare-fun b!4846683 () Bool)

(declare-fun res!2067672 () Bool)

(assert (=> b!4846683 (=> (not res!2067672) (not e!3029326))))

(declare-fun allKeysSameHashInMap!2794 (ListLongMap!6419 Hashable!7478) Bool)

(assert (=> b!4846683 (= res!2067672 (allKeysSameHashInMap!2794 lm!2646 hashF!1641))))

(declare-fun b!4846684 () Bool)

(declare-fun res!2067669 () Bool)

(assert (=> b!4846684 (=> res!2067669 e!3029330)))

(get-info :version)

(assert (=> b!4846684 (= res!2067669 (or (and ((_ is Cons!55515) (toList!7838 lm!2646)) (= (_1!32876 (h!61952 (toList!7838 lm!2646))) lt!1988202)) (not ((_ is Cons!55515) (toList!7838 lm!2646))) (= lt!1988202 (_1!32876 (h!61952 (toList!7838 lm!2646))))))))

(declare-fun b!4846685 () Bool)

(declare-fun res!2067673 () Bool)

(assert (=> b!4846685 (=> res!2067673 e!3029328)))

(assert (=> b!4846685 (= res!2067673 (not (allKeysSameHashInMap!2794 lt!1988192 hashF!1641)))))

(declare-fun b!4846686 () Bool)

(assert (=> b!4846686 (= e!3029325 e!3029328)))

(declare-fun res!2067667 () Bool)

(assert (=> b!4846686 (=> res!2067667 e!3029328)))

(assert (=> b!4846686 (= res!2067667 (not (forall!12931 (toList!7838 lt!1988192) lambda!242374)))))

(declare-fun tail!9524 (ListLongMap!6419) ListLongMap!6419)

(assert (=> b!4846686 (= lt!1988192 (tail!9524 lm!2646))))

(declare-fun res!2067665 () Bool)

(assert (=> start!504908 (=> (not res!2067665) (not e!3029326))))

(assert (=> start!504908 (= res!2067665 (forall!12931 (toList!7838 lm!2646) lambda!242374))))

(assert (=> start!504908 e!3029326))

(declare-fun inv!71185 (ListLongMap!6419) Bool)

(assert (=> start!504908 (and (inv!71185 lm!2646) e!3029324)))

(assert (=> start!504908 true))

(declare-fun tp_is_empty!35135 () Bool)

(assert (=> start!504908 tp_is_empty!35135))

(assert (= (and start!504908 res!2067665) b!4846683))

(assert (= (and b!4846683 res!2067672) b!4846676))

(assert (= (and b!4846676 res!2067666) b!4846678))

(assert (= (and b!4846678 (not res!2067668)) b!4846684))

(assert (= (and b!4846684 (not res!2067669)) b!4846680))

(assert (= (and b!4846680 (not res!2067674)) b!4846686))

(assert (= (and b!4846686 (not res!2067667)) b!4846685))

(assert (= (and b!4846685 (not res!2067673)) b!4846682))

(assert (= (and b!4846682 (not res!2067671)) b!4846677))

(assert (= (and b!4846677 (not res!2067670)) b!4846681))

(assert (= start!504908 b!4846679))

(declare-fun m!5844608 () Bool)

(assert (=> b!4846683 m!5844608))

(declare-fun m!5844610 () Bool)

(assert (=> b!4846676 m!5844610))

(declare-fun m!5844612 () Bool)

(assert (=> b!4846676 m!5844612))

(declare-fun m!5844614 () Bool)

(assert (=> b!4846681 m!5844614))

(declare-fun m!5844616 () Bool)

(assert (=> b!4846677 m!5844616))

(declare-fun m!5844618 () Bool)

(assert (=> b!4846677 m!5844618))

(declare-fun m!5844620 () Bool)

(assert (=> b!4846677 m!5844620))

(assert (=> b!4846677 m!5844616))

(declare-fun m!5844622 () Bool)

(assert (=> b!4846677 m!5844622))

(declare-fun m!5844624 () Bool)

(assert (=> b!4846677 m!5844624))

(declare-fun m!5844626 () Bool)

(assert (=> b!4846677 m!5844626))

(assert (=> b!4846686 m!5844614))

(declare-fun m!5844628 () Bool)

(assert (=> b!4846686 m!5844628))

(declare-fun m!5844630 () Bool)

(assert (=> b!4846678 m!5844630))

(declare-fun m!5844632 () Bool)

(assert (=> b!4846678 m!5844632))

(declare-fun m!5844634 () Bool)

(assert (=> b!4846678 m!5844634))

(declare-fun m!5844636 () Bool)

(assert (=> b!4846678 m!5844636))

(declare-fun m!5844638 () Bool)

(assert (=> b!4846678 m!5844638))

(declare-fun m!5844640 () Bool)

(assert (=> b!4846678 m!5844640))

(assert (=> b!4846678 m!5844638))

(declare-fun m!5844642 () Bool)

(assert (=> b!4846680 m!5844642))

(declare-fun m!5844644 () Bool)

(assert (=> b!4846680 m!5844644))

(assert (=> b!4846680 m!5844644))

(declare-fun m!5844646 () Bool)

(assert (=> b!4846680 m!5844646))

(declare-fun m!5844648 () Bool)

(assert (=> b!4846680 m!5844648))

(declare-fun m!5844650 () Bool)

(assert (=> b!4846682 m!5844650))

(declare-fun m!5844652 () Bool)

(assert (=> start!504908 m!5844652))

(declare-fun m!5844654 () Bool)

(assert (=> start!504908 m!5844654))

(declare-fun m!5844656 () Bool)

(assert (=> b!4846685 m!5844656))

(check-sat (not b!4846678) (not b!4846676) tp_is_empty!35135 (not b!4846681) (not b!4846683) (not b!4846682) (not start!504908) (not b!4846685) (not b!4846686) (not b!4846679) (not b!4846680) (not b!4846677))
(check-sat)
