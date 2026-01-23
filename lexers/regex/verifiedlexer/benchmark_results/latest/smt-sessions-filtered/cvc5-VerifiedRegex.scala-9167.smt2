; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488540 () Bool)

(assert start!488540)

(declare-fun b!4771533 () Bool)

(declare-fun e!2978621 () Bool)

(declare-fun e!2978623 () Bool)

(assert (=> b!4771533 (= e!2978621 e!2978623)))

(declare-fun res!2023835 () Bool)

(assert (=> b!4771533 (=> res!2023835 e!2978623)))

(declare-datatypes ((K!15122 0))(
  ( (K!15123 (val!20403 Int)) )
))
(declare-datatypes ((V!15368 0))(
  ( (V!15369 (val!20404 Int)) )
))
(declare-datatypes ((tuple2!55780 0))(
  ( (tuple2!55781 (_1!31184 K!15122) (_2!31184 V!15368)) )
))
(declare-datatypes ((List!53739 0))(
  ( (Nil!53615) (Cons!53615 (h!60027 tuple2!55780) (t!361189 List!53739)) )
))
(declare-datatypes ((tuple2!55782 0))(
  ( (tuple2!55783 (_1!31185 (_ BitVec 64)) (_2!31185 List!53739)) )
))
(declare-datatypes ((List!53740 0))(
  ( (Nil!53616) (Cons!53616 (h!60028 tuple2!55782) (t!361190 List!53740)) )
))
(declare-datatypes ((ListLongMap!4807 0))(
  ( (ListLongMap!4808 (toList!6393 List!53740)) )
))
(declare-fun lm!1309 () ListLongMap!4807)

(declare-fun lambda!225146 () Int)

(declare-fun forall!11917 (List!53740 Int) Bool)

(assert (=> b!4771533 (= res!2023835 (not (forall!11917 (toList!6393 lm!1309) lambda!225146)))))

(declare-datatypes ((Unit!138510 0))(
  ( (Unit!138511) )
))
(declare-fun lt!1933877 () Unit!138510)

(declare-fun lt!1933882 () tuple2!55782)

(declare-fun forallContained!3898 (List!53740 Int tuple2!55782) Unit!138510)

(assert (=> b!4771533 (= lt!1933877 (forallContained!3898 (toList!6393 lm!1309) lambda!225146 lt!1933882))))

(declare-fun b!4771535 () Bool)

(declare-fun res!2023837 () Bool)

(declare-fun e!2978622 () Bool)

(assert (=> b!4771535 (=> (not res!2023837) (not e!2978622))))

(declare-datatypes ((Hashable!6653 0))(
  ( (HashableExt!6652 (__x!32676 Int)) )
))
(declare-fun hashF!980 () Hashable!6653)

(declare-fun allKeysSameHashInMap!2058 (ListLongMap!4807 Hashable!6653) Bool)

(assert (=> b!4771535 (= res!2023837 (allKeysSameHashInMap!2058 lm!1309 hashF!980))))

(declare-fun b!4771536 () Bool)

(declare-fun e!2978624 () Bool)

(declare-fun tp!1356651 () Bool)

(assert (=> b!4771536 (= e!2978624 tp!1356651)))

(declare-fun b!4771537 () Bool)

(declare-fun res!2023836 () Bool)

(assert (=> b!4771537 (=> res!2023836 e!2978621)))

(assert (=> b!4771537 (= res!2023836 (not (forall!11917 (toList!6393 lm!1309) lambda!225146)))))

(declare-fun b!4771534 () Bool)

(assert (=> b!4771534 (= e!2978623 true)))

(declare-fun lt!1933879 () Unit!138510)

(assert (=> b!4771534 (= lt!1933879 (forallContained!3898 (toList!6393 lm!1309) lambda!225146 lt!1933882))))

(declare-fun res!2023839 () Bool)

(assert (=> start!488540 (=> (not res!2023839) (not e!2978622))))

(assert (=> start!488540 (= res!2023839 (forall!11917 (toList!6393 lm!1309) lambda!225146))))

(assert (=> start!488540 e!2978622))

(declare-fun inv!69149 (ListLongMap!4807) Bool)

(assert (=> start!488540 (and (inv!69149 lm!1309) e!2978624)))

(assert (=> start!488540 true))

(declare-fun tp_is_empty!32609 () Bool)

(assert (=> start!488540 tp_is_empty!32609))

(declare-fun tp_is_empty!32611 () Bool)

(assert (=> start!488540 tp_is_empty!32611))

(declare-fun b!4771538 () Bool)

(declare-fun res!2023838 () Bool)

(assert (=> b!4771538 (=> (not res!2023838) (not e!2978622))))

(declare-fun key!2872 () K!15122)

(declare-datatypes ((ListMap!5873 0))(
  ( (ListMap!5874 (toList!6394 List!53739)) )
))
(declare-fun contains!17007 (ListMap!5873 K!15122) Bool)

(declare-fun extractMap!2188 (List!53740) ListMap!5873)

(assert (=> b!4771538 (= res!2023838 (contains!17007 (extractMap!2188 (toList!6393 lm!1309)) key!2872))))

(declare-fun b!4771539 () Bool)

(assert (=> b!4771539 (= e!2978622 (not e!2978621))))

(declare-fun res!2023840 () Bool)

(assert (=> b!4771539 (=> res!2023840 e!2978621)))

(declare-datatypes ((Option!12748 0))(
  ( (None!12747) (Some!12747 (v!47874 tuple2!55780)) )
))
(declare-fun lt!1933876 () Option!12748)

(declare-fun v!9615 () V!15368)

(declare-fun get!18115 (Option!12748) tuple2!55780)

(assert (=> b!4771539 (= res!2023840 (not (= (_2!31184 (get!18115 lt!1933876)) v!9615)))))

(declare-fun isDefined!9894 (Option!12748) Bool)

(assert (=> b!4771539 (isDefined!9894 lt!1933876)))

(declare-fun lt!1933874 () List!53739)

(declare-fun getPair!673 (List!53739 K!15122) Option!12748)

(assert (=> b!4771539 (= lt!1933876 (getPair!673 lt!1933874 key!2872))))

(declare-fun lt!1933878 () Unit!138510)

(assert (=> b!4771539 (= lt!1933878 (forallContained!3898 (toList!6393 lm!1309) lambda!225146 lt!1933882))))

(declare-fun lt!1933884 () Unit!138510)

(declare-fun lemmaInGenMapThenGetPairDefined!447 (ListLongMap!4807 K!15122 Hashable!6653) Unit!138510)

(assert (=> b!4771539 (= lt!1933884 (lemmaInGenMapThenGetPairDefined!447 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933880 () Unit!138510)

(assert (=> b!4771539 (= lt!1933880 (forallContained!3898 (toList!6393 lm!1309) lambda!225146 lt!1933882))))

(declare-fun contains!17008 (List!53740 tuple2!55782) Bool)

(assert (=> b!4771539 (contains!17008 (toList!6393 lm!1309) lt!1933882)))

(declare-fun lt!1933881 () (_ BitVec 64))

(assert (=> b!4771539 (= lt!1933882 (tuple2!55783 lt!1933881 lt!1933874))))

(declare-fun lt!1933875 () Unit!138510)

(declare-fun lemmaGetValueImpliesTupleContained!464 (ListLongMap!4807 (_ BitVec 64) List!53739) Unit!138510)

(assert (=> b!4771539 (= lt!1933875 (lemmaGetValueImpliesTupleContained!464 lm!1309 lt!1933881 lt!1933874))))

(declare-fun apply!12698 (ListLongMap!4807 (_ BitVec 64)) List!53739)

(assert (=> b!4771539 (= lt!1933874 (apply!12698 lm!1309 lt!1933881))))

(declare-fun contains!17009 (ListLongMap!4807 (_ BitVec 64)) Bool)

(assert (=> b!4771539 (contains!17009 lm!1309 lt!1933881)))

(declare-fun hash!4628 (Hashable!6653 K!15122) (_ BitVec 64))

(assert (=> b!4771539 (= lt!1933881 (hash!4628 hashF!980 key!2872))))

(declare-fun lt!1933883 () Unit!138510)

(declare-fun lemmaInGenMapThenLongMapContainsHash!869 (ListLongMap!4807 K!15122 Hashable!6653) Unit!138510)

(assert (=> b!4771539 (= lt!1933883 (lemmaInGenMapThenLongMapContainsHash!869 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488540 res!2023839) b!4771535))

(assert (= (and b!4771535 res!2023837) b!4771538))

(assert (= (and b!4771538 res!2023838) b!4771539))

(assert (= (and b!4771539 (not res!2023840)) b!4771537))

(assert (= (and b!4771537 (not res!2023836)) b!4771533))

(assert (= (and b!4771533 (not res!2023835)) b!4771534))

(assert (= start!488540 b!4771536))

(declare-fun m!5743536 () Bool)

(assert (=> b!4771537 m!5743536))

(declare-fun m!5743538 () Bool)

(assert (=> b!4771534 m!5743538))

(assert (=> start!488540 m!5743536))

(declare-fun m!5743540 () Bool)

(assert (=> start!488540 m!5743540))

(declare-fun m!5743542 () Bool)

(assert (=> b!4771539 m!5743542))

(declare-fun m!5743544 () Bool)

(assert (=> b!4771539 m!5743544))

(declare-fun m!5743546 () Bool)

(assert (=> b!4771539 m!5743546))

(declare-fun m!5743548 () Bool)

(assert (=> b!4771539 m!5743548))

(declare-fun m!5743550 () Bool)

(assert (=> b!4771539 m!5743550))

(declare-fun m!5743552 () Bool)

(assert (=> b!4771539 m!5743552))

(declare-fun m!5743554 () Bool)

(assert (=> b!4771539 m!5743554))

(declare-fun m!5743556 () Bool)

(assert (=> b!4771539 m!5743556))

(assert (=> b!4771539 m!5743538))

(declare-fun m!5743558 () Bool)

(assert (=> b!4771539 m!5743558))

(assert (=> b!4771539 m!5743538))

(declare-fun m!5743560 () Bool)

(assert (=> b!4771539 m!5743560))

(declare-fun m!5743562 () Bool)

(assert (=> b!4771535 m!5743562))

(declare-fun m!5743564 () Bool)

(assert (=> b!4771538 m!5743564))

(assert (=> b!4771538 m!5743564))

(declare-fun m!5743566 () Bool)

(assert (=> b!4771538 m!5743566))

(assert (=> b!4771533 m!5743536))

(assert (=> b!4771533 m!5743538))

(push 1)

(assert (not b!4771536))

(assert (not b!4771533))

(assert (not b!4771538))

(assert (not b!4771537))

(assert (not b!4771534))

(assert tp_is_empty!32609)

(assert (not start!488540))

(assert tp_is_empty!32611)

(assert (not b!4771535))

(assert (not b!4771539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

