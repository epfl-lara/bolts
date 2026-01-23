; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429192 () Bool)

(assert start!429192)

(declare-fun b!4411065 () Bool)

(declare-fun e!2746989 () Bool)

(assert (=> b!4411065 (= e!2746989 false)))

(declare-fun lt!1613992 () Bool)

(declare-datatypes ((K!10710 0))(
  ( (K!10711 (val!16839 Int)) )
))
(declare-datatypes ((V!10956 0))(
  ( (V!10957 (val!16840 Int)) )
))
(declare-datatypes ((tuple2!48998 0))(
  ( (tuple2!48999 (_1!27793 K!10710) (_2!27793 V!10956)) )
))
(declare-datatypes ((List!49477 0))(
  ( (Nil!49353) (Cons!49353 (h!54994 tuple2!48998) (t!356415 List!49477)) )
))
(declare-fun newBucket!194 () List!49477)

(declare-fun noDuplicateKeys!655 (List!49477) Bool)

(assert (=> b!4411065 (= lt!1613992 (noDuplicateKeys!655 newBucket!194))))

(declare-fun e!2746992 () Bool)

(declare-fun newValue!93 () V!10956)

(declare-fun key!3717 () K!10710)

(declare-fun b!4411066 () Bool)

(declare-fun lt!1613991 () Bool)

(assert (=> b!4411066 (= e!2746992 (and (not lt!1613991) (= newBucket!194 (Cons!49353 (tuple2!48999 key!3717 newValue!93) Nil!49353))))))

(declare-fun b!4411067 () Bool)

(declare-fun res!1820783 () Bool)

(declare-fun e!2746990 () Bool)

(assert (=> b!4411067 (=> (not res!1820783) (not e!2746990))))

(declare-datatypes ((Hashable!5049 0))(
  ( (HashableExt!5048 (__x!30752 Int)) )
))
(declare-fun hashF!1220 () Hashable!5049)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1952 (Hashable!5049 K!10710) (_ BitVec 64))

(assert (=> b!4411067 (= res!1820783 (= (hash!1952 hashF!1220 key!3717) hash!366))))

(declare-fun b!4411068 () Bool)

(declare-fun res!1820781 () Bool)

(assert (=> b!4411068 (=> (not res!1820781) (not e!2746989))))

(declare-datatypes ((tuple2!49000 0))(
  ( (tuple2!49001 (_1!27794 (_ BitVec 64)) (_2!27794 List!49477)) )
))
(declare-datatypes ((List!49478 0))(
  ( (Nil!49354) (Cons!49354 (h!54995 tuple2!49000) (t!356416 List!49478)) )
))
(declare-datatypes ((ListLongMap!1947 0))(
  ( (ListLongMap!1948 (toList!3297 List!49478)) )
))
(declare-fun lm!1616 () ListLongMap!1947)

(declare-fun lambda!150683 () Int)

(declare-fun forall!9417 (List!49478 Int) Bool)

(assert (=> b!4411068 (= res!1820781 (forall!9417 (toList!3297 lm!1616) lambda!150683))))

(declare-fun b!4411070 () Bool)

(declare-fun res!1820785 () Bool)

(assert (=> b!4411070 (=> (not res!1820785) (not e!2746990))))

(declare-fun allKeysSameHash!615 (List!49477 (_ BitVec 64) Hashable!5049) Bool)

(assert (=> b!4411070 (= res!1820785 (allKeysSameHash!615 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4411071 () Bool)

(declare-fun e!2746993 () Bool)

(declare-fun tp!1332177 () Bool)

(assert (=> b!4411071 (= e!2746993 tp!1332177)))

(declare-fun b!4411072 () Bool)

(assert (=> b!4411072 (= e!2746990 e!2746989)))

(declare-fun res!1820787 () Bool)

(assert (=> b!4411072 (=> (not res!1820787) (not e!2746989))))

(assert (=> b!4411072 (= res!1820787 e!2746992)))

(declare-fun res!1820782 () Bool)

(assert (=> b!4411072 (=> res!1820782 e!2746992)))

(declare-fun e!2746991 () Bool)

(assert (=> b!4411072 (= res!1820782 e!2746991)))

(declare-fun res!1820779 () Bool)

(assert (=> b!4411072 (=> (not res!1820779) (not e!2746991))))

(assert (=> b!4411072 (= res!1820779 lt!1613991)))

(declare-fun contains!11782 (ListLongMap!1947 (_ BitVec 64)) Bool)

(assert (=> b!4411072 (= lt!1613991 (contains!11782 lm!1616 hash!366))))

(declare-fun b!4411073 () Bool)

(declare-fun res!1820780 () Bool)

(assert (=> b!4411073 (=> (not res!1820780) (not e!2746989))))

(assert (=> b!4411073 (= res!1820780 (noDuplicateKeys!655 newBucket!194))))

(declare-fun b!4411074 () Bool)

(declare-fun apply!11507 (ListLongMap!1947 (_ BitVec 64)) List!49477)

(assert (=> b!4411074 (= e!2746991 (= newBucket!194 (Cons!49353 (tuple2!48999 key!3717 newValue!93) (apply!11507 lm!1616 hash!366))))))

(declare-fun b!4411075 () Bool)

(declare-fun res!1820784 () Bool)

(assert (=> b!4411075 (=> (not res!1820784) (not e!2746990))))

(declare-fun allKeysSameHashInMap!761 (ListLongMap!1947 Hashable!5049) Bool)

(assert (=> b!4411075 (= res!1820784 (allKeysSameHashInMap!761 lm!1616 hashF!1220))))

(declare-fun e!2746994 () Bool)

(declare-fun b!4411076 () Bool)

(declare-fun tp_is_empty!25867 () Bool)

(declare-fun tp_is_empty!25865 () Bool)

(declare-fun tp!1332178 () Bool)

(assert (=> b!4411076 (= e!2746994 (and tp_is_empty!25867 tp_is_empty!25865 tp!1332178))))

(declare-fun b!4411077 () Bool)

(declare-fun res!1820778 () Bool)

(assert (=> b!4411077 (=> (not res!1820778) (not e!2746990))))

(declare-datatypes ((ListMap!2541 0))(
  ( (ListMap!2542 (toList!3298 List!49477)) )
))
(declare-fun contains!11783 (ListMap!2541 K!10710) Bool)

(declare-fun extractMap!716 (List!49478) ListMap!2541)

(assert (=> b!4411077 (= res!1820778 (not (contains!11783 (extractMap!716 (toList!3297 lm!1616)) key!3717)))))

(declare-fun b!4411069 () Bool)

(declare-fun res!1820788 () Bool)

(assert (=> b!4411069 (=> (not res!1820788) (not e!2746989))))

(assert (=> b!4411069 (= res!1820788 (forall!9417 (toList!3297 lm!1616) lambda!150683))))

(declare-fun res!1820786 () Bool)

(assert (=> start!429192 (=> (not res!1820786) (not e!2746990))))

(assert (=> start!429192 (= res!1820786 (forall!9417 (toList!3297 lm!1616) lambda!150683))))

(assert (=> start!429192 e!2746990))

(assert (=> start!429192 tp_is_empty!25865))

(assert (=> start!429192 tp_is_empty!25867))

(assert (=> start!429192 e!2746994))

(declare-fun inv!64896 (ListLongMap!1947) Bool)

(assert (=> start!429192 (and (inv!64896 lm!1616) e!2746993)))

(assert (=> start!429192 true))

(assert (= (and start!429192 res!1820786) b!4411075))

(assert (= (and b!4411075 res!1820784) b!4411067))

(assert (= (and b!4411067 res!1820783) b!4411070))

(assert (= (and b!4411070 res!1820785) b!4411077))

(assert (= (and b!4411077 res!1820778) b!4411072))

(assert (= (and b!4411072 res!1820779) b!4411074))

(assert (= (and b!4411072 (not res!1820782)) b!4411066))

(assert (= (and b!4411072 res!1820787) b!4411073))

(assert (= (and b!4411073 res!1820780) b!4411069))

(assert (= (and b!4411069 res!1820788) b!4411068))

(assert (= (and b!4411068 res!1820781) b!4411065))

(get-info :version)

(assert (= (and start!429192 ((_ is Cons!49353) newBucket!194)) b!4411076))

(assert (= start!429192 b!4411071))

(declare-fun m!5086795 () Bool)

(assert (=> b!4411077 m!5086795))

(assert (=> b!4411077 m!5086795))

(declare-fun m!5086797 () Bool)

(assert (=> b!4411077 m!5086797))

(declare-fun m!5086799 () Bool)

(assert (=> b!4411072 m!5086799))

(declare-fun m!5086801 () Bool)

(assert (=> start!429192 m!5086801))

(declare-fun m!5086803 () Bool)

(assert (=> start!429192 m!5086803))

(declare-fun m!5086805 () Bool)

(assert (=> b!4411067 m!5086805))

(declare-fun m!5086807 () Bool)

(assert (=> b!4411073 m!5086807))

(declare-fun m!5086809 () Bool)

(assert (=> b!4411074 m!5086809))

(declare-fun m!5086811 () Bool)

(assert (=> b!4411075 m!5086811))

(assert (=> b!4411069 m!5086801))

(assert (=> b!4411068 m!5086801))

(assert (=> b!4411065 m!5086807))

(declare-fun m!5086813 () Bool)

(assert (=> b!4411070 m!5086813))

(check-sat (not b!4411075) (not b!4411076) tp_is_empty!25865 (not start!429192) (not b!4411077) (not b!4411068) (not b!4411073) (not b!4411071) (not b!4411074) (not b!4411072) tp_is_empty!25867 (not b!4411070) (not b!4411065) (not b!4411069) (not b!4411067))
(check-sat)
