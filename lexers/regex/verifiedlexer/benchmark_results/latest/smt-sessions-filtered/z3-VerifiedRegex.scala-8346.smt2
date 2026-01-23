; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434336 () Bool)

(assert start!434336)

(declare-fun b!4439957 () Bool)

(declare-fun e!2764580 () Bool)

(declare-fun e!2764582 () Bool)

(assert (=> b!4439957 (= e!2764580 e!2764582)))

(declare-fun res!1838158 () Bool)

(assert (=> b!4439957 (=> (not res!1838158) (not e!2764582))))

(declare-fun e!2764576 () Bool)

(assert (=> b!4439957 (= res!1838158 e!2764576)))

(declare-fun res!1838151 () Bool)

(assert (=> b!4439957 (=> res!1838151 e!2764576)))

(declare-fun e!2764581 () Bool)

(assert (=> b!4439957 (= res!1838151 e!2764581)))

(declare-fun res!1838153 () Bool)

(assert (=> b!4439957 (=> (not res!1838153) (not e!2764581))))

(declare-fun lt!1636220 () Bool)

(assert (=> b!4439957 (= res!1838153 lt!1636220)))

(declare-datatypes ((V!11381 0))(
  ( (V!11382 (val!17179 Int)) )
))
(declare-datatypes ((K!11135 0))(
  ( (K!11136 (val!17180 Int)) )
))
(declare-datatypes ((tuple2!49678 0))(
  ( (tuple2!49679 (_1!28133 K!11135) (_2!28133 V!11381)) )
))
(declare-datatypes ((List!49892 0))(
  ( (Nil!49768) (Cons!49768 (h!55489 tuple2!49678) (t!356834 List!49892)) )
))
(declare-datatypes ((tuple2!49680 0))(
  ( (tuple2!49681 (_1!28134 (_ BitVec 64)) (_2!28134 List!49892)) )
))
(declare-datatypes ((List!49893 0))(
  ( (Nil!49769) (Cons!49769 (h!55490 tuple2!49680) (t!356835 List!49893)) )
))
(declare-datatypes ((ListLongMap!2287 0))(
  ( (ListLongMap!2288 (toList!3637 List!49893)) )
))
(declare-fun lm!1616 () ListLongMap!2287)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12334 (ListLongMap!2287 (_ BitVec 64)) Bool)

(assert (=> b!4439957 (= lt!1636220 (contains!12334 lm!1616 hash!366))))

(declare-fun b!4439959 () Bool)

(declare-fun e!2764578 () Bool)

(declare-fun lambda!157092 () Int)

(declare-fun forall!9688 (List!49893 Int) Bool)

(assert (=> b!4439959 (= e!2764578 (forall!9688 (toList!3637 lm!1616) lambda!157092))))

(declare-fun b!4439960 () Bool)

(declare-fun res!1838149 () Bool)

(assert (=> b!4439960 (=> (not res!1838149) (not e!2764580))))

(declare-fun newBucket!194 () List!49892)

(declare-datatypes ((Hashable!5219 0))(
  ( (HashableExt!5218 (__x!30922 Int)) )
))
(declare-fun hashF!1220 () Hashable!5219)

(declare-fun allKeysSameHash!785 (List!49892 (_ BitVec 64) Hashable!5219) Bool)

(assert (=> b!4439960 (= res!1838149 (allKeysSameHash!785 newBucket!194 hash!366 hashF!1220))))

(declare-fun newValue!93 () V!11381)

(declare-fun key!3717 () K!11135)

(declare-fun b!4439961 () Bool)

(declare-fun apply!11677 (ListLongMap!2287 (_ BitVec 64)) List!49892)

(assert (=> b!4439961 (= e!2764581 (= newBucket!194 (Cons!49768 (tuple2!49679 key!3717 newValue!93) (apply!11677 lm!1616 hash!366))))))

(declare-fun b!4439962 () Bool)

(declare-fun res!1838157 () Bool)

(assert (=> b!4439962 (=> (not res!1838157) (not e!2764582))))

(assert (=> b!4439962 (= res!1838157 (forall!9688 (toList!3637 lm!1616) lambda!157092))))

(declare-fun b!4439963 () Bool)

(assert (=> b!4439963 (= e!2764582 (not e!2764578))))

(declare-fun res!1838155 () Bool)

(assert (=> b!4439963 (=> res!1838155 e!2764578)))

(declare-fun lt!1636221 () ListLongMap!2287)

(assert (=> b!4439963 (= res!1838155 (not (forall!9688 (toList!3637 lt!1636221) lambda!157092)))))

(assert (=> b!4439963 (forall!9688 (toList!3637 lt!1636221) lambda!157092)))

(declare-fun +!1207 (ListLongMap!2287 tuple2!49680) ListLongMap!2287)

(assert (=> b!4439963 (= lt!1636221 (+!1207 lm!1616 (tuple2!49681 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83850 0))(
  ( (Unit!83851) )
))
(declare-fun lt!1636219 () Unit!83850)

(declare-fun addValidProp!463 (ListLongMap!2287 Int (_ BitVec 64) List!49892) Unit!83850)

(assert (=> b!4439963 (= lt!1636219 (addValidProp!463 lm!1616 lambda!157092 hash!366 newBucket!194))))

(declare-fun e!2764579 () Bool)

(declare-fun tp_is_empty!26547 () Bool)

(declare-fun b!4439964 () Bool)

(declare-fun tp!1334057 () Bool)

(declare-fun tp_is_empty!26545 () Bool)

(assert (=> b!4439964 (= e!2764579 (and tp_is_empty!26547 tp_is_empty!26545 tp!1334057))))

(declare-fun b!4439965 () Bool)

(declare-fun res!1838159 () Bool)

(assert (=> b!4439965 (=> res!1838159 e!2764578)))

(get-info :version)

(assert (=> b!4439965 (= res!1838159 (or (and ((_ is Cons!49769) (toList!3637 lm!1616)) (= (_1!28134 (h!55490 (toList!3637 lm!1616))) hash!366)) (not ((_ is Cons!49769) (toList!3637 lm!1616))) (= (_1!28134 (h!55490 (toList!3637 lm!1616))) hash!366)))))

(declare-fun b!4439966 () Bool)

(assert (=> b!4439966 (= e!2764576 (and (not lt!1636220) (= newBucket!194 (Cons!49768 (tuple2!49679 key!3717 newValue!93) Nil!49768))))))

(declare-fun res!1838148 () Bool)

(assert (=> start!434336 (=> (not res!1838148) (not e!2764580))))

(assert (=> start!434336 (= res!1838148 (forall!9688 (toList!3637 lm!1616) lambda!157092))))

(assert (=> start!434336 e!2764580))

(assert (=> start!434336 tp_is_empty!26545))

(assert (=> start!434336 tp_is_empty!26547))

(assert (=> start!434336 e!2764579))

(declare-fun e!2764577 () Bool)

(declare-fun inv!65321 (ListLongMap!2287) Bool)

(assert (=> start!434336 (and (inv!65321 lm!1616) e!2764577)))

(assert (=> start!434336 true))

(declare-fun b!4439958 () Bool)

(declare-fun tp!1334058 () Bool)

(assert (=> b!4439958 (= e!2764577 tp!1334058)))

(declare-fun b!4439967 () Bool)

(declare-fun res!1838156 () Bool)

(assert (=> b!4439967 (=> (not res!1838156) (not e!2764582))))

(declare-fun noDuplicateKeys!825 (List!49892) Bool)

(assert (=> b!4439967 (= res!1838156 (noDuplicateKeys!825 newBucket!194))))

(declare-fun b!4439968 () Bool)

(declare-fun res!1838147 () Bool)

(assert (=> b!4439968 (=> (not res!1838147) (not e!2764580))))

(declare-datatypes ((ListMap!2881 0))(
  ( (ListMap!2882 (toList!3638 List!49892)) )
))
(declare-fun contains!12335 (ListMap!2881 K!11135) Bool)

(declare-fun extractMap!886 (List!49893) ListMap!2881)

(assert (=> b!4439968 (= res!1838147 (not (contains!12335 (extractMap!886 (toList!3637 lm!1616)) key!3717)))))

(declare-fun b!4439969 () Bool)

(declare-fun res!1838154 () Bool)

(assert (=> b!4439969 (=> (not res!1838154) (not e!2764580))))

(declare-fun allKeysSameHashInMap!931 (ListLongMap!2287 Hashable!5219) Bool)

(assert (=> b!4439969 (= res!1838154 (allKeysSameHashInMap!931 lm!1616 hashF!1220))))

(declare-fun b!4439970 () Bool)

(declare-fun res!1838152 () Bool)

(assert (=> b!4439970 (=> res!1838152 e!2764578)))

(declare-fun tail!7357 (List!49893) List!49893)

(assert (=> b!4439970 (= res!1838152 (not (contains!12335 (extractMap!886 (tail!7357 (toList!3637 lm!1616))) key!3717)))))

(declare-fun b!4439971 () Bool)

(declare-fun res!1838150 () Bool)

(assert (=> b!4439971 (=> (not res!1838150) (not e!2764580))))

(declare-fun hash!2275 (Hashable!5219 K!11135) (_ BitVec 64))

(assert (=> b!4439971 (= res!1838150 (= (hash!2275 hashF!1220 key!3717) hash!366))))

(assert (= (and start!434336 res!1838148) b!4439969))

(assert (= (and b!4439969 res!1838154) b!4439971))

(assert (= (and b!4439971 res!1838150) b!4439960))

(assert (= (and b!4439960 res!1838149) b!4439968))

(assert (= (and b!4439968 res!1838147) b!4439957))

(assert (= (and b!4439957 res!1838153) b!4439961))

(assert (= (and b!4439957 (not res!1838151)) b!4439966))

(assert (= (and b!4439957 res!1838158) b!4439967))

(assert (= (and b!4439967 res!1838156) b!4439962))

(assert (= (and b!4439962 res!1838157) b!4439963))

(assert (= (and b!4439963 (not res!1838155)) b!4439965))

(assert (= (and b!4439965 (not res!1838159)) b!4439970))

(assert (= (and b!4439970 (not res!1838152)) b!4439959))

(assert (= (and start!434336 ((_ is Cons!49768) newBucket!194)) b!4439964))

(assert (= start!434336 b!4439958))

(declare-fun m!5128551 () Bool)

(assert (=> b!4439963 m!5128551))

(assert (=> b!4439963 m!5128551))

(declare-fun m!5128553 () Bool)

(assert (=> b!4439963 m!5128553))

(declare-fun m!5128555 () Bool)

(assert (=> b!4439963 m!5128555))

(declare-fun m!5128557 () Bool)

(assert (=> b!4439961 m!5128557))

(declare-fun m!5128559 () Bool)

(assert (=> b!4439962 m!5128559))

(declare-fun m!5128561 () Bool)

(assert (=> b!4439969 m!5128561))

(declare-fun m!5128563 () Bool)

(assert (=> b!4439971 m!5128563))

(declare-fun m!5128565 () Bool)

(assert (=> b!4439960 m!5128565))

(assert (=> start!434336 m!5128559))

(declare-fun m!5128567 () Bool)

(assert (=> start!434336 m!5128567))

(declare-fun m!5128569 () Bool)

(assert (=> b!4439967 m!5128569))

(declare-fun m!5128571 () Bool)

(assert (=> b!4439970 m!5128571))

(assert (=> b!4439970 m!5128571))

(declare-fun m!5128573 () Bool)

(assert (=> b!4439970 m!5128573))

(assert (=> b!4439970 m!5128573))

(declare-fun m!5128575 () Bool)

(assert (=> b!4439970 m!5128575))

(declare-fun m!5128577 () Bool)

(assert (=> b!4439957 m!5128577))

(declare-fun m!5128579 () Bool)

(assert (=> b!4439968 m!5128579))

(assert (=> b!4439968 m!5128579))

(declare-fun m!5128581 () Bool)

(assert (=> b!4439968 m!5128581))

(assert (=> b!4439959 m!5128559))

(check-sat (not b!4439962) tp_is_empty!26547 (not b!4439959) (not b!4439957) (not start!434336) (not b!4439963) (not b!4439968) (not b!4439970) (not b!4439958) (not b!4439967) tp_is_empty!26545 (not b!4439961) (not b!4439964) (not b!4439971) (not b!4439960) (not b!4439969))
(check-sat)
