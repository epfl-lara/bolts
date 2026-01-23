; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504910 () Bool)

(assert start!504910)

(declare-fun res!2067699 () Bool)

(declare-fun e!3029350 () Bool)

(assert (=> start!504910 (=> (not res!2067699) (not e!3029350))))

(declare-datatypes ((K!17302 0))(
  ( (K!17303 (val!22147 Int)) )
))
(declare-datatypes ((V!17548 0))(
  ( (V!17549 (val!22148 Int)) )
))
(declare-datatypes ((tuple2!59166 0))(
  ( (tuple2!59167 (_1!32877 K!17302) (_2!32877 V!17548)) )
))
(declare-datatypes ((List!55640 0))(
  ( (Nil!55516) (Cons!55516 (h!61953 tuple2!59166) (t!363136 List!55640)) )
))
(declare-datatypes ((tuple2!59168 0))(
  ( (tuple2!59169 (_1!32878 (_ BitVec 64)) (_2!32878 List!55640)) )
))
(declare-datatypes ((List!55641 0))(
  ( (Nil!55517) (Cons!55517 (h!61954 tuple2!59168) (t!363137 List!55641)) )
))
(declare-datatypes ((ListLongMap!6421 0))(
  ( (ListLongMap!6422 (toList!7839 List!55641)) )
))
(declare-fun lm!2646 () ListLongMap!6421)

(declare-fun lambda!242383 () Int)

(declare-fun forall!12932 (List!55641 Int) Bool)

(assert (=> start!504910 (= res!2067699 (forall!12932 (toList!7839 lm!2646) lambda!242383))))

(assert (=> start!504910 e!3029350))

(declare-fun e!3029349 () Bool)

(declare-fun inv!71189 (ListLongMap!6421) Bool)

(assert (=> start!504910 (and (inv!71189 lm!2646) e!3029349)))

(assert (=> start!504910 true))

(declare-fun tp_is_empty!35137 () Bool)

(assert (=> start!504910 tp_is_empty!35137))

(declare-fun b!4846709 () Bool)

(declare-fun e!3029351 () Bool)

(declare-fun e!3029346 () Bool)

(assert (=> b!4846709 (= e!3029351 e!3029346)))

(declare-fun res!2067703 () Bool)

(assert (=> b!4846709 (=> res!2067703 e!3029346)))

(declare-fun lt!1988229 () List!55640)

(declare-fun key!6445 () K!17302)

(declare-datatypes ((Option!13641 0))(
  ( (None!13640) (Some!13640 (v!49390 tuple2!59166)) )
))
(declare-fun isDefined!10733 (Option!13641) Bool)

(declare-fun getPair!1069 (List!55640 K!17302) Option!13641)

(assert (=> b!4846709 (= res!2067703 (not (isDefined!10733 (getPair!1069 lt!1988229 key!6445))))))

(declare-datatypes ((Unit!145641 0))(
  ( (Unit!145642) )
))
(declare-fun lt!1988233 () Unit!145641)

(declare-fun lt!1988228 () tuple2!59168)

(declare-fun lt!1988225 () ListLongMap!6421)

(declare-fun forallContained!4520 (List!55641 Int tuple2!59168) Unit!145641)

(assert (=> b!4846709 (= lt!1988233 (forallContained!4520 (toList!7839 lt!1988225) lambda!242383 lt!1988228))))

(declare-fun contains!19162 (List!55641 tuple2!59168) Bool)

(assert (=> b!4846709 (contains!19162 (toList!7839 lt!1988225) lt!1988228)))

(declare-fun lt!1988231 () (_ BitVec 64))

(assert (=> b!4846709 (= lt!1988228 (tuple2!59169 lt!1988231 lt!1988229))))

(declare-fun lt!1988234 () Unit!145641)

(declare-fun lemmaGetValueImpliesTupleContained!746 (ListLongMap!6421 (_ BitVec 64) List!55640) Unit!145641)

(assert (=> b!4846709 (= lt!1988234 (lemmaGetValueImpliesTupleContained!746 lt!1988225 lt!1988231 lt!1988229))))

(declare-fun apply!13422 (ListLongMap!6421 (_ BitVec 64)) List!55640)

(assert (=> b!4846709 (= lt!1988229 (apply!13422 lt!1988225 lt!1988231))))

(declare-fun b!4846710 () Bool)

(declare-fun res!2067704 () Bool)

(assert (=> b!4846710 (=> res!2067704 e!3029351)))

(declare-fun contains!19163 (ListLongMap!6421 (_ BitVec 64)) Bool)

(assert (=> b!4846710 (= res!2067704 (not (contains!19163 lt!1988225 lt!1988231)))))

(declare-fun b!4846711 () Bool)

(declare-fun e!3029345 () Bool)

(declare-fun e!3029347 () Bool)

(assert (=> b!4846711 (= e!3029345 e!3029347)))

(declare-fun res!2067695 () Bool)

(assert (=> b!4846711 (=> res!2067695 e!3029347)))

(declare-fun containsKey!4661 (List!55640 K!17302) Bool)

(assert (=> b!4846711 (= res!2067695 (containsKey!4661 (_2!32878 (h!61954 (toList!7839 lm!2646))) key!6445))))

(assert (=> b!4846711 (not (containsKey!4661 (apply!13422 lm!2646 (_1!32878 (h!61954 (toList!7839 lm!2646)))) key!6445))))

(declare-datatypes ((Hashable!7479 0))(
  ( (HashableExt!7478 (__x!33754 Int)) )
))
(declare-fun hashF!1641 () Hashable!7479)

(declare-fun lt!1988227 () Unit!145641)

(declare-fun lemmaNotSameHashThenCannotContainKey!247 (ListLongMap!6421 K!17302 (_ BitVec 64) Hashable!7479) Unit!145641)

(assert (=> b!4846711 (= lt!1988227 (lemmaNotSameHashThenCannotContainKey!247 lm!2646 key!6445 (_1!32878 (h!61954 (toList!7839 lm!2646))) hashF!1641))))

(declare-fun b!4846712 () Bool)

(assert (=> b!4846712 (= e!3029347 e!3029351)))

(declare-fun res!2067701 () Bool)

(assert (=> b!4846712 (=> res!2067701 e!3029351)))

(assert (=> b!4846712 (= res!2067701 (not (forall!12932 (toList!7839 lt!1988225) lambda!242383)))))

(declare-fun tail!9525 (ListLongMap!6421) ListLongMap!6421)

(assert (=> b!4846712 (= lt!1988225 (tail!9525 lm!2646))))

(declare-fun b!4846713 () Bool)

(declare-fun e!3029348 () Bool)

(assert (=> b!4846713 (= e!3029348 (not e!3029345))))

(declare-fun res!2067702 () Bool)

(assert (=> b!4846713 (=> res!2067702 e!3029345)))

(declare-fun lt!1988230 () List!55640)

(assert (=> b!4846713 (= res!2067702 (not (isDefined!10733 (getPair!1069 lt!1988230 key!6445))))))

(declare-fun lt!1988226 () Unit!145641)

(declare-fun lt!1988232 () tuple2!59168)

(assert (=> b!4846713 (= lt!1988226 (forallContained!4520 (toList!7839 lm!2646) lambda!242383 lt!1988232))))

(assert (=> b!4846713 (contains!19162 (toList!7839 lm!2646) lt!1988232)))

(assert (=> b!4846713 (= lt!1988232 (tuple2!59169 lt!1988231 lt!1988230))))

(declare-fun lt!1988235 () Unit!145641)

(assert (=> b!4846713 (= lt!1988235 (lemmaGetValueImpliesTupleContained!746 lm!2646 lt!1988231 lt!1988230))))

(assert (=> b!4846713 (= lt!1988230 (apply!13422 lm!2646 lt!1988231))))

(declare-fun b!4846714 () Bool)

(assert (=> b!4846714 (= e!3029350 e!3029348)))

(declare-fun res!2067700 () Bool)

(assert (=> b!4846714 (=> (not res!2067700) (not e!3029348))))

(assert (=> b!4846714 (= res!2067700 (contains!19163 lm!2646 lt!1988231))))

(declare-fun hash!5554 (Hashable!7479 K!17302) (_ BitVec 64))

(assert (=> b!4846714 (= lt!1988231 (hash!5554 hashF!1641 key!6445))))

(declare-fun b!4846715 () Bool)

(declare-fun res!2067698 () Bool)

(assert (=> b!4846715 (=> (not res!2067698) (not e!3029350))))

(declare-fun allKeysSameHashInMap!2795 (ListLongMap!6421 Hashable!7479) Bool)

(assert (=> b!4846715 (= res!2067698 (allKeysSameHashInMap!2795 lm!2646 hashF!1641))))

(declare-fun b!4846716 () Bool)

(declare-fun res!2067696 () Bool)

(assert (=> b!4846716 (=> res!2067696 e!3029351)))

(assert (=> b!4846716 (= res!2067696 (not (allKeysSameHashInMap!2795 lt!1988225 hashF!1641)))))

(declare-fun b!4846717 () Bool)

(declare-fun tp!1364503 () Bool)

(assert (=> b!4846717 (= e!3029349 tp!1364503)))

(declare-fun b!4846718 () Bool)

(assert (=> b!4846718 (= e!3029346 true)))

(declare-fun b!4846719 () Bool)

(declare-fun res!2067697 () Bool)

(assert (=> b!4846719 (=> res!2067697 e!3029345)))

(assert (=> b!4846719 (= res!2067697 (or (and (is-Cons!55517 (toList!7839 lm!2646)) (= (_1!32878 (h!61954 (toList!7839 lm!2646))) lt!1988231)) (not (is-Cons!55517 (toList!7839 lm!2646))) (= lt!1988231 (_1!32878 (h!61954 (toList!7839 lm!2646))))))))

(assert (= (and start!504910 res!2067699) b!4846715))

(assert (= (and b!4846715 res!2067698) b!4846714))

(assert (= (and b!4846714 res!2067700) b!4846713))

(assert (= (and b!4846713 (not res!2067702)) b!4846719))

(assert (= (and b!4846719 (not res!2067697)) b!4846711))

(assert (= (and b!4846711 (not res!2067695)) b!4846712))

(assert (= (and b!4846712 (not res!2067701)) b!4846716))

(assert (= (and b!4846716 (not res!2067696)) b!4846710))

(assert (= (and b!4846710 (not res!2067704)) b!4846709))

(assert (= (and b!4846709 (not res!2067703)) b!4846718))

(assert (= start!504910 b!4846717))

(declare-fun m!5844658 () Bool)

(assert (=> b!4846713 m!5844658))

(declare-fun m!5844660 () Bool)

(assert (=> b!4846713 m!5844660))

(declare-fun m!5844662 () Bool)

(assert (=> b!4846713 m!5844662))

(declare-fun m!5844664 () Bool)

(assert (=> b!4846713 m!5844664))

(declare-fun m!5844666 () Bool)

(assert (=> b!4846713 m!5844666))

(assert (=> b!4846713 m!5844662))

(declare-fun m!5844668 () Bool)

(assert (=> b!4846713 m!5844668))

(declare-fun m!5844670 () Bool)

(assert (=> b!4846712 m!5844670))

(declare-fun m!5844672 () Bool)

(assert (=> b!4846712 m!5844672))

(declare-fun m!5844674 () Bool)

(assert (=> b!4846714 m!5844674))

(declare-fun m!5844676 () Bool)

(assert (=> b!4846714 m!5844676))

(declare-fun m!5844678 () Bool)

(assert (=> b!4846710 m!5844678))

(declare-fun m!5844680 () Bool)

(assert (=> b!4846715 m!5844680))

(declare-fun m!5844682 () Bool)

(assert (=> b!4846711 m!5844682))

(declare-fun m!5844684 () Bool)

(assert (=> b!4846711 m!5844684))

(assert (=> b!4846711 m!5844684))

(declare-fun m!5844686 () Bool)

(assert (=> b!4846711 m!5844686))

(declare-fun m!5844688 () Bool)

(assert (=> b!4846711 m!5844688))

(declare-fun m!5844690 () Bool)

(assert (=> b!4846709 m!5844690))

(declare-fun m!5844692 () Bool)

(assert (=> b!4846709 m!5844692))

(declare-fun m!5844694 () Bool)

(assert (=> b!4846709 m!5844694))

(declare-fun m!5844696 () Bool)

(assert (=> b!4846709 m!5844696))

(declare-fun m!5844698 () Bool)

(assert (=> b!4846709 m!5844698))

(assert (=> b!4846709 m!5844698))

(declare-fun m!5844700 () Bool)

(assert (=> b!4846709 m!5844700))

(declare-fun m!5844702 () Bool)

(assert (=> b!4846716 m!5844702))

(declare-fun m!5844704 () Bool)

(assert (=> start!504910 m!5844704))

(declare-fun m!5844706 () Bool)

(assert (=> start!504910 m!5844706))

(push 1)

(assert (not start!504910))

(assert (not b!4846710))

(assert (not b!4846712))

(assert (not b!4846716))

(assert tp_is_empty!35137)

(assert (not b!4846717))

(assert (not b!4846711))

(assert (not b!4846714))

(assert (not b!4846715))

(assert (not b!4846713))

(assert (not b!4846709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

