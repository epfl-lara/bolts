; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433612 () Bool)

(assert start!433612)

(declare-fun b!4435942 () Bool)

(declare-fun e!2762154 () Bool)

(declare-fun tp!1333802 () Bool)

(assert (=> b!4435942 (= e!2762154 tp!1333802)))

(declare-fun b!4435943 () Bool)

(declare-fun res!1835861 () Bool)

(declare-fun e!2762156 () Bool)

(assert (=> b!4435943 (=> (not res!1835861) (not e!2762156))))

(declare-datatypes ((K!11080 0))(
  ( (K!11081 (val!17135 Int)) )
))
(declare-fun key!3717 () K!11080)

(declare-datatypes ((Hashable!5197 0))(
  ( (HashableExt!5196 (__x!30900 Int)) )
))
(declare-fun hashF!1220 () Hashable!5197)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2228 (Hashable!5197 K!11080) (_ BitVec 64))

(assert (=> b!4435943 (= res!1835861 (= (hash!2228 hashF!1220 key!3717) hash!366))))

(declare-fun b!4435944 () Bool)

(declare-fun res!1835862 () Bool)

(assert (=> b!4435944 (=> (not res!1835862) (not e!2762156))))

(declare-datatypes ((V!11326 0))(
  ( (V!11327 (val!17136 Int)) )
))
(declare-datatypes ((tuple2!49590 0))(
  ( (tuple2!49591 (_1!28089 K!11080) (_2!28089 V!11326)) )
))
(declare-datatypes ((List!49837 0))(
  ( (Nil!49713) (Cons!49713 (h!55422 tuple2!49590) (t!356779 List!49837)) )
))
(declare-fun newBucket!194 () List!49837)

(declare-fun allKeysSameHash!763 (List!49837 (_ BitVec 64) Hashable!5197) Bool)

(assert (=> b!4435944 (= res!1835862 (allKeysSameHash!763 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4435945 () Bool)

(declare-fun res!1835863 () Bool)

(declare-fun e!2762151 () Bool)

(assert (=> b!4435945 (=> (not res!1835863) (not e!2762151))))

(declare-datatypes ((tuple2!49592 0))(
  ( (tuple2!49593 (_1!28090 (_ BitVec 64)) (_2!28090 List!49837)) )
))
(declare-datatypes ((List!49838 0))(
  ( (Nil!49714) (Cons!49714 (h!55423 tuple2!49592) (t!356780 List!49838)) )
))
(declare-datatypes ((ListLongMap!2243 0))(
  ( (ListLongMap!2244 (toList!3593 List!49838)) )
))
(declare-fun lm!1616 () ListLongMap!2243)

(declare-fun lambda!156198 () Int)

(declare-fun forall!9652 (List!49838 Int) Bool)

(assert (=> b!4435945 (= res!1835863 (forall!9652 (toList!3593 lm!1616) lambda!156198))))

(declare-fun newValue!93 () V!11326)

(declare-fun b!4435946 () Bool)

(declare-fun e!2762155 () Bool)

(declare-fun apply!11655 (ListLongMap!2243 (_ BitVec 64)) List!49837)

(assert (=> b!4435946 (= e!2762155 (= newBucket!194 (Cons!49713 (tuple2!49591 key!3717 newValue!93) (apply!11655 lm!1616 hash!366))))))

(declare-fun b!4435947 () Bool)

(declare-fun e!2762152 () Bool)

(declare-fun lt!1633084 () Bool)

(assert (=> b!4435947 (= e!2762152 (and (not lt!1633084) (= newBucket!194 (Cons!49713 (tuple2!49591 key!3717 newValue!93) Nil!49713))))))

(declare-fun b!4435948 () Bool)

(assert (=> b!4435948 (= e!2762156 e!2762151)))

(declare-fun res!1835864 () Bool)

(assert (=> b!4435948 (=> (not res!1835864) (not e!2762151))))

(assert (=> b!4435948 (= res!1835864 e!2762152)))

(declare-fun res!1835857 () Bool)

(assert (=> b!4435948 (=> res!1835857 e!2762152)))

(assert (=> b!4435948 (= res!1835857 e!2762155)))

(declare-fun res!1835859 () Bool)

(assert (=> b!4435948 (=> (not res!1835859) (not e!2762155))))

(assert (=> b!4435948 (= res!1835859 lt!1633084)))

(declare-fun contains!12260 (ListLongMap!2243 (_ BitVec 64)) Bool)

(assert (=> b!4435948 (= lt!1633084 (contains!12260 lm!1616 hash!366))))

(declare-fun b!4435949 () Bool)

(declare-fun res!1835860 () Bool)

(assert (=> b!4435949 (=> (not res!1835860) (not e!2762151))))

(declare-fun noDuplicateKeys!803 (List!49837) Bool)

(assert (=> b!4435949 (= res!1835860 (noDuplicateKeys!803 newBucket!194))))

(declare-fun res!1835856 () Bool)

(assert (=> start!433612 (=> (not res!1835856) (not e!2762156))))

(assert (=> start!433612 (= res!1835856 (forall!9652 (toList!3593 lm!1616) lambda!156198))))

(assert (=> start!433612 e!2762156))

(declare-fun tp_is_empty!26457 () Bool)

(assert (=> start!433612 tp_is_empty!26457))

(declare-fun tp_is_empty!26459 () Bool)

(assert (=> start!433612 tp_is_empty!26459))

(declare-fun e!2762153 () Bool)

(assert (=> start!433612 e!2762153))

(declare-fun inv!65266 (ListLongMap!2243) Bool)

(assert (=> start!433612 (and (inv!65266 lm!1616) e!2762154)))

(assert (=> start!433612 true))

(declare-fun b!4435950 () Bool)

(declare-fun tp!1333801 () Bool)

(assert (=> b!4435950 (= e!2762153 (and tp_is_empty!26459 tp_is_empty!26457 tp!1333801))))

(declare-fun b!4435951 () Bool)

(declare-fun res!1835865 () Bool)

(assert (=> b!4435951 (=> (not res!1835865) (not e!2762156))))

(declare-fun allKeysSameHashInMap!909 (ListLongMap!2243 Hashable!5197) Bool)

(assert (=> b!4435951 (= res!1835865 (allKeysSameHashInMap!909 lm!1616 hashF!1220))))

(declare-fun b!4435952 () Bool)

(assert (=> b!4435952 (= e!2762151 (not true))))

(declare-fun +!1173 (ListLongMap!2243 tuple2!49592) ListLongMap!2243)

(assert (=> b!4435952 (forall!9652 (toList!3593 (+!1173 lm!1616 (tuple2!49593 hash!366 newBucket!194))) lambda!156198)))

(declare-datatypes ((Unit!83373 0))(
  ( (Unit!83374) )
))
(declare-fun lt!1633085 () Unit!83373)

(declare-fun addValidProp!445 (ListLongMap!2243 Int (_ BitVec 64) List!49837) Unit!83373)

(assert (=> b!4435952 (= lt!1633085 (addValidProp!445 lm!1616 lambda!156198 hash!366 newBucket!194))))

(declare-fun b!4435953 () Bool)

(declare-fun res!1835858 () Bool)

(assert (=> b!4435953 (=> (not res!1835858) (not e!2762156))))

(declare-datatypes ((ListMap!2837 0))(
  ( (ListMap!2838 (toList!3594 List!49837)) )
))
(declare-fun contains!12261 (ListMap!2837 K!11080) Bool)

(declare-fun extractMap!864 (List!49838) ListMap!2837)

(assert (=> b!4435953 (= res!1835858 (not (contains!12261 (extractMap!864 (toList!3593 lm!1616)) key!3717)))))

(assert (= (and start!433612 res!1835856) b!4435951))

(assert (= (and b!4435951 res!1835865) b!4435943))

(assert (= (and b!4435943 res!1835861) b!4435944))

(assert (= (and b!4435944 res!1835862) b!4435953))

(assert (= (and b!4435953 res!1835858) b!4435948))

(assert (= (and b!4435948 res!1835859) b!4435946))

(assert (= (and b!4435948 (not res!1835857)) b!4435947))

(assert (= (and b!4435948 res!1835864) b!4435949))

(assert (= (and b!4435949 res!1835860) b!4435945))

(assert (= (and b!4435945 res!1835863) b!4435952))

(get-info :version)

(assert (= (and start!433612 ((_ is Cons!49713) newBucket!194)) b!4435950))

(assert (= start!433612 b!4435942))

(declare-fun m!5122785 () Bool)

(assert (=> b!4435948 m!5122785))

(declare-fun m!5122787 () Bool)

(assert (=> b!4435946 m!5122787))

(declare-fun m!5122789 () Bool)

(assert (=> start!433612 m!5122789))

(declare-fun m!5122791 () Bool)

(assert (=> start!433612 m!5122791))

(assert (=> b!4435945 m!5122789))

(declare-fun m!5122793 () Bool)

(assert (=> b!4435943 m!5122793))

(declare-fun m!5122795 () Bool)

(assert (=> b!4435949 m!5122795))

(declare-fun m!5122797 () Bool)

(assert (=> b!4435953 m!5122797))

(assert (=> b!4435953 m!5122797))

(declare-fun m!5122799 () Bool)

(assert (=> b!4435953 m!5122799))

(declare-fun m!5122801 () Bool)

(assert (=> b!4435944 m!5122801))

(declare-fun m!5122803 () Bool)

(assert (=> b!4435952 m!5122803))

(declare-fun m!5122805 () Bool)

(assert (=> b!4435952 m!5122805))

(declare-fun m!5122807 () Bool)

(assert (=> b!4435952 m!5122807))

(declare-fun m!5122809 () Bool)

(assert (=> b!4435951 m!5122809))

(check-sat (not b!4435948) (not b!4435945) (not b!4435950) (not b!4435944) tp_is_empty!26459 (not b!4435953) (not b!4435952) (not b!4435949) (not b!4435943) tp_is_empty!26457 (not b!4435946) (not b!4435942) (not start!433612) (not b!4435951))
(check-sat)
