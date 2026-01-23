; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!432494 () Bool)

(assert start!432494)

(declare-fun b!4429634 () Bool)

(declare-fun res!1832060 () Bool)

(declare-fun e!2758159 () Bool)

(assert (=> b!4429634 (=> (not res!1832060) (not e!2758159))))

(declare-datatypes ((V!11249 0))(
  ( (V!11250 (val!17073 Int)) )
))
(declare-datatypes ((K!11003 0))(
  ( (K!11004 (val!17074 Int)) )
))
(declare-datatypes ((tuple2!49466 0))(
  ( (tuple2!49467 (_1!28027 K!11003) (_2!28027 V!11249)) )
))
(declare-datatypes ((List!49763 0))(
  ( (Nil!49639) (Cons!49639 (h!55336 tuple2!49466) (t!356701 List!49763)) )
))
(declare-datatypes ((tuple2!49468 0))(
  ( (tuple2!49469 (_1!28028 (_ BitVec 64)) (_2!28028 List!49763)) )
))
(declare-datatypes ((List!49764 0))(
  ( (Nil!49640) (Cons!49640 (h!55337 tuple2!49468) (t!356702 List!49764)) )
))
(declare-datatypes ((ListLongMap!2181 0))(
  ( (ListLongMap!2182 (toList!3531 List!49764)) )
))
(declare-fun lm!1616 () ListLongMap!2181)

(declare-datatypes ((Hashable!5166 0))(
  ( (HashableExt!5165 (__x!30869 Int)) )
))
(declare-fun hashF!1220 () Hashable!5166)

(declare-fun allKeysSameHashInMap!878 (ListLongMap!2181 Hashable!5166) Bool)

(assert (=> b!4429634 (= res!1832060 (allKeysSameHashInMap!878 lm!1616 hashF!1220))))

(declare-fun b!4429635 () Bool)

(declare-fun res!1832058 () Bool)

(declare-fun e!2758157 () Bool)

(assert (=> b!4429635 (=> (not res!1832058) (not e!2758157))))

(declare-fun lambda!154969 () Int)

(declare-fun forall!9599 (List!49764 Int) Bool)

(assert (=> b!4429635 (= res!1832058 (forall!9599 (toList!3531 lm!1616) lambda!154969))))

(declare-fun b!4429636 () Bool)

(assert (=> b!4429636 (= e!2758159 e!2758157)))

(declare-fun res!1832055 () Bool)

(assert (=> b!4429636 (=> (not res!1832055) (not e!2758157))))

(declare-fun e!2758162 () Bool)

(assert (=> b!4429636 (= res!1832055 e!2758162)))

(declare-fun res!1832065 () Bool)

(assert (=> b!4429636 (=> res!1832065 e!2758162)))

(declare-fun e!2758161 () Bool)

(assert (=> b!4429636 (= res!1832065 e!2758161)))

(declare-fun res!1832059 () Bool)

(assert (=> b!4429636 (=> (not res!1832059) (not e!2758161))))

(declare-fun lt!1629018 () Bool)

(assert (=> b!4429636 (= res!1832059 lt!1629018)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12164 (ListLongMap!2181 (_ BitVec 64)) Bool)

(assert (=> b!4429636 (= lt!1629018 (contains!12164 lm!1616 hash!366))))

(declare-fun res!1832057 () Bool)

(assert (=> start!432494 (=> (not res!1832057) (not e!2758159))))

(assert (=> start!432494 (= res!1832057 (forall!9599 (toList!3531 lm!1616) lambda!154969))))

(assert (=> start!432494 e!2758159))

(declare-fun tp_is_empty!26333 () Bool)

(assert (=> start!432494 tp_is_empty!26333))

(declare-fun tp_is_empty!26335 () Bool)

(assert (=> start!432494 tp_is_empty!26335))

(declare-fun e!2758158 () Bool)

(assert (=> start!432494 e!2758158))

(declare-fun e!2758160 () Bool)

(declare-fun inv!65190 (ListLongMap!2181) Bool)

(assert (=> start!432494 (and (inv!65190 lm!1616) e!2758160)))

(assert (=> start!432494 true))

(declare-fun b!4429637 () Bool)

(declare-fun res!1832063 () Bool)

(assert (=> b!4429637 (=> (not res!1832063) (not e!2758159))))

(declare-fun key!3717 () K!11003)

(declare-datatypes ((ListMap!2775 0))(
  ( (ListMap!2776 (toList!3532 List!49763)) )
))
(declare-fun contains!12165 (ListMap!2775 K!11003) Bool)

(declare-fun extractMap!833 (List!49764) ListMap!2775)

(assert (=> b!4429637 (= res!1832063 (not (contains!12165 (extractMap!833 (toList!3531 lm!1616)) key!3717)))))

(declare-fun b!4429638 () Bool)

(declare-fun res!1832064 () Bool)

(assert (=> b!4429638 (=> (not res!1832064) (not e!2758159))))

(declare-fun newBucket!194 () List!49763)

(declare-fun allKeysSameHash!732 (List!49763 (_ BitVec 64) Hashable!5166) Bool)

(assert (=> b!4429638 (= res!1832064 (allKeysSameHash!732 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429639 () Bool)

(declare-fun res!1832062 () Bool)

(assert (=> b!4429639 (=> (not res!1832062) (not e!2758159))))

(declare-fun hash!2185 (Hashable!5166 K!11003) (_ BitVec 64))

(assert (=> b!4429639 (= res!1832062 (= (hash!2185 hashF!1220 key!3717) hash!366))))

(declare-fun newValue!93 () V!11249)

(declare-fun b!4429640 () Bool)

(assert (=> b!4429640 (= e!2758162 (and (not lt!1629018) (= newBucket!194 (Cons!49639 (tuple2!49467 key!3717 newValue!93) Nil!49639))))))

(declare-fun b!4429641 () Bool)

(declare-fun apply!11624 (ListLongMap!2181 (_ BitVec 64)) List!49763)

(assert (=> b!4429641 (= e!2758161 (= newBucket!194 (Cons!49639 (tuple2!49467 key!3717 newValue!93) (apply!11624 lm!1616 hash!366))))))

(declare-fun b!4429642 () Bool)

(declare-fun res!1832054 () Bool)

(assert (=> b!4429642 (=> (not res!1832054) (not e!2758157))))

(declare-fun noDuplicateKeys!772 (List!49763) Bool)

(assert (=> b!4429642 (= res!1832054 (noDuplicateKeys!772 newBucket!194))))

(declare-fun b!4429643 () Bool)

(declare-fun e!2758163 () Bool)

(declare-fun lt!1629016 () ListLongMap!2181)

(assert (=> b!4429643 (= e!2758163 (forall!9599 (toList!3531 lt!1629016) lambda!154969))))

(declare-fun b!4429644 () Bool)

(declare-fun tp!1333447 () Bool)

(assert (=> b!4429644 (= e!2758160 tp!1333447)))

(declare-fun b!4429645 () Bool)

(declare-fun res!1832061 () Bool)

(assert (=> b!4429645 (=> res!1832061 e!2758163)))

(assert (=> b!4429645 (= res!1832061 (or (and (is-Cons!49640 (toList!3531 lm!1616)) (= (_1!28028 (h!55337 (toList!3531 lm!1616))) hash!366)) (and (is-Cons!49640 (toList!3531 lm!1616)) (not (= (_1!28028 (h!55337 (toList!3531 lm!1616))) hash!366))) (not (is-Nil!49640 (toList!3531 lm!1616)))))))

(declare-fun tp!1333448 () Bool)

(declare-fun b!4429646 () Bool)

(assert (=> b!4429646 (= e!2758158 (and tp_is_empty!26335 tp_is_empty!26333 tp!1333448))))

(declare-fun b!4429647 () Bool)

(assert (=> b!4429647 (= e!2758157 (not e!2758163))))

(declare-fun res!1832056 () Bool)

(assert (=> b!4429647 (=> res!1832056 e!2758163)))

(assert (=> b!4429647 (= res!1832056 (not (forall!9599 (toList!3531 lt!1629016) lambda!154969)))))

(assert (=> b!4429647 (forall!9599 (toList!3531 lt!1629016) lambda!154969)))

(declare-fun +!1128 (ListLongMap!2181 tuple2!49468) ListLongMap!2181)

(assert (=> b!4429647 (= lt!1629016 (+!1128 lm!1616 (tuple2!49469 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82609 0))(
  ( (Unit!82610) )
))
(declare-fun lt!1629017 () Unit!82609)

(declare-fun addValidProp!416 (ListLongMap!2181 Int (_ BitVec 64) List!49763) Unit!82609)

(assert (=> b!4429647 (= lt!1629017 (addValidProp!416 lm!1616 lambda!154969 hash!366 newBucket!194))))

(assert (= (and start!432494 res!1832057) b!4429634))

(assert (= (and b!4429634 res!1832060) b!4429639))

(assert (= (and b!4429639 res!1832062) b!4429638))

(assert (= (and b!4429638 res!1832064) b!4429637))

(assert (= (and b!4429637 res!1832063) b!4429636))

(assert (= (and b!4429636 res!1832059) b!4429641))

(assert (= (and b!4429636 (not res!1832065)) b!4429640))

(assert (= (and b!4429636 res!1832055) b!4429642))

(assert (= (and b!4429642 res!1832054) b!4429635))

(assert (= (and b!4429635 res!1832058) b!4429647))

(assert (= (and b!4429647 (not res!1832056)) b!4429645))

(assert (= (and b!4429645 (not res!1832061)) b!4429643))

(assert (= (and start!432494 (is-Cons!49639 newBucket!194)) b!4429646))

(assert (= start!432494 b!4429644))

(declare-fun m!5113899 () Bool)

(assert (=> b!4429637 m!5113899))

(assert (=> b!4429637 m!5113899))

(declare-fun m!5113901 () Bool)

(assert (=> b!4429637 m!5113901))

(declare-fun m!5113903 () Bool)

(assert (=> b!4429638 m!5113903))

(declare-fun m!5113905 () Bool)

(assert (=> b!4429639 m!5113905))

(declare-fun m!5113907 () Bool)

(assert (=> b!4429642 m!5113907))

(declare-fun m!5113909 () Bool)

(assert (=> b!4429647 m!5113909))

(assert (=> b!4429647 m!5113909))

(declare-fun m!5113911 () Bool)

(assert (=> b!4429647 m!5113911))

(declare-fun m!5113913 () Bool)

(assert (=> b!4429647 m!5113913))

(declare-fun m!5113915 () Bool)

(assert (=> b!4429641 m!5113915))

(declare-fun m!5113917 () Bool)

(assert (=> b!4429635 m!5113917))

(declare-fun m!5113919 () Bool)

(assert (=> b!4429636 m!5113919))

(assert (=> b!4429643 m!5113909))

(assert (=> start!432494 m!5113917))

(declare-fun m!5113921 () Bool)

(assert (=> start!432494 m!5113921))

(declare-fun m!5113923 () Bool)

(assert (=> b!4429634 m!5113923))

(push 1)

(assert (not b!4429634))

(assert (not b!4429636))

(assert (not b!4429642))

(assert (not b!4429637))

(assert (not b!4429639))

(assert (not start!432494))

(assert (not b!4429635))

(assert tp_is_empty!26333)

(assert (not b!4429638))

(assert tp_is_empty!26335)

(assert (not b!4429643))

(assert (not b!4429644))

(assert (not b!4429641))

(assert (not b!4429647))

(assert (not b!4429646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

