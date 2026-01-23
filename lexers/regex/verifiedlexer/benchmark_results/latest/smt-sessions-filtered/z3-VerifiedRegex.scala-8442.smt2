; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437520 () Bool)

(assert start!437520)

(declare-fun b!4461523 () Bool)

(declare-fun res!1850263 () Bool)

(declare-fun e!2778166 () Bool)

(assert (=> b!4461523 (=> (not res!1850263) (not e!2778166))))

(declare-datatypes ((K!11615 0))(
  ( (K!11616 (val!17563 Int)) )
))
(declare-datatypes ((V!11861 0))(
  ( (V!11862 (val!17564 Int)) )
))
(declare-datatypes ((tuple2!50394 0))(
  ( (tuple2!50395 (_1!28491 K!11615) (_2!28491 V!11861)) )
))
(declare-datatypes ((List!50323 0))(
  ( (Nil!50199) (Cons!50199 (h!55944 tuple2!50394) (t!357273 List!50323)) )
))
(declare-datatypes ((tuple2!50396 0))(
  ( (tuple2!50397 (_1!28492 (_ BitVec 64)) (_2!28492 List!50323)) )
))
(declare-datatypes ((List!50324 0))(
  ( (Nil!50200) (Cons!50200 (h!55945 tuple2!50396) (t!357274 List!50324)) )
))
(declare-datatypes ((ListLongMap!2619 0))(
  ( (ListLongMap!2620 (toList!3987 List!50324)) )
))
(declare-fun lm!1477 () ListLongMap!2619)

(declare-fun key!3287 () K!11615)

(declare-datatypes ((ListMap!3249 0))(
  ( (ListMap!3250 (toList!3988 List!50323)) )
))
(declare-fun contains!12706 (ListMap!3249 K!11615) Bool)

(declare-fun extractMap!1046 (List!50324) ListMap!3249)

(assert (=> b!4461523 (= res!1850263 (contains!12706 (extractMap!1046 (toList!3987 lm!1477)) key!3287))))

(declare-fun b!4461524 () Bool)

(declare-fun e!2778167 () Bool)

(declare-fun tp!1335826 () Bool)

(assert (=> b!4461524 (= e!2778167 tp!1335826)))

(declare-fun b!4461525 () Bool)

(declare-fun e!2778169 () Bool)

(declare-fun lambda!161883 () Int)

(declare-fun forall!9930 (List!50324 Int) Bool)

(assert (=> b!4461525 (= e!2778169 (not (forall!9930 (toList!3987 lm!1477) lambda!161883)))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun lt!1652561 () List!50323)

(declare-fun contains!12707 (List!50324 tuple2!50396) Bool)

(assert (=> b!4461525 (contains!12707 (toList!3987 lm!1477) (tuple2!50397 hash!344 lt!1652561))))

(declare-datatypes ((Unit!86858 0))(
  ( (Unit!86859) )
))
(declare-fun lt!1652563 () Unit!86858)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!502 (List!50324 (_ BitVec 64) List!50323) Unit!86858)

(assert (=> b!4461525 (= lt!1652563 (lemmaGetValueByKeyImpliesContainsTuple!502 (toList!3987 lm!1477) hash!344 lt!1652561))))

(declare-fun apply!11727 (ListLongMap!2619 (_ BitVec 64)) List!50323)

(assert (=> b!4461525 (= lt!1652561 (apply!11727 lm!1477 hash!344))))

(declare-fun lt!1652564 () (_ BitVec 64))

(declare-fun contains!12708 (ListLongMap!2619 (_ BitVec 64)) Bool)

(assert (=> b!4461525 (contains!12708 lm!1477 lt!1652564)))

(declare-fun lt!1652562 () Unit!86858)

(declare-datatypes ((Hashable!5385 0))(
  ( (HashableExt!5384 (__x!31088 Int)) )
))
(declare-fun hashF!1107 () Hashable!5385)

(declare-fun lemmaInGenMapThenLongMapContainsHash!64 (ListLongMap!2619 K!11615 Hashable!5385) Unit!86858)

(assert (=> b!4461525 (= lt!1652562 (lemmaInGenMapThenLongMapContainsHash!64 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1850266 () Bool)

(assert (=> start!437520 (=> (not res!1850266) (not e!2778166))))

(assert (=> start!437520 (= res!1850266 (forall!9930 (toList!3987 lm!1477) lambda!161883))))

(assert (=> start!437520 e!2778166))

(assert (=> start!437520 true))

(declare-fun inv!65799 (ListLongMap!2619) Bool)

(assert (=> start!437520 (and (inv!65799 lm!1477) e!2778167)))

(declare-fun tp_is_empty!27237 () Bool)

(assert (=> start!437520 tp_is_empty!27237))

(declare-fun e!2778168 () Bool)

(assert (=> start!437520 e!2778168))

(declare-fun b!4461526 () Bool)

(assert (=> b!4461526 (= e!2778166 e!2778169)))

(declare-fun res!1850265 () Bool)

(assert (=> b!4461526 (=> (not res!1850265) (not e!2778169))))

(assert (=> b!4461526 (= res!1850265 (= lt!1652564 hash!344))))

(declare-fun hash!2372 (Hashable!5385 K!11615) (_ BitVec 64))

(assert (=> b!4461526 (= lt!1652564 (hash!2372 hashF!1107 key!3287))))

(declare-fun b!4461527 () Bool)

(declare-fun res!1850264 () Bool)

(assert (=> b!4461527 (=> (not res!1850264) (not e!2778166))))

(declare-fun allKeysSameHashInMap!1097 (ListLongMap!2619 Hashable!5385) Bool)

(assert (=> b!4461527 (= res!1850264 (allKeysSameHashInMap!1097 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!27239 () Bool)

(declare-fun tp!1335827 () Bool)

(declare-fun b!4461528 () Bool)

(assert (=> b!4461528 (= e!2778168 (and tp_is_empty!27237 tp_is_empty!27239 tp!1335827))))

(declare-fun b!4461529 () Bool)

(declare-fun res!1850267 () Bool)

(assert (=> b!4461529 (=> (not res!1850267) (not e!2778169))))

(declare-fun newBucket!178 () List!50323)

(declare-fun allKeysSameHash!844 (List!50323 (_ BitVec 64) Hashable!5385) Bool)

(assert (=> b!4461529 (= res!1850267 (allKeysSameHash!844 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!437520 res!1850266) b!4461527))

(assert (= (and b!4461527 res!1850264) b!4461523))

(assert (= (and b!4461523 res!1850263) b!4461526))

(assert (= (and b!4461526 res!1850265) b!4461529))

(assert (= (and b!4461529 res!1850267) b!4461525))

(assert (= start!437520 b!4461524))

(get-info :version)

(assert (= (and start!437520 ((_ is Cons!50199) newBucket!178)) b!4461528))

(declare-fun m!5164501 () Bool)

(assert (=> b!4461527 m!5164501))

(declare-fun m!5164503 () Bool)

(assert (=> b!4461525 m!5164503))

(declare-fun m!5164505 () Bool)

(assert (=> b!4461525 m!5164505))

(declare-fun m!5164507 () Bool)

(assert (=> b!4461525 m!5164507))

(declare-fun m!5164509 () Bool)

(assert (=> b!4461525 m!5164509))

(declare-fun m!5164511 () Bool)

(assert (=> b!4461525 m!5164511))

(declare-fun m!5164513 () Bool)

(assert (=> b!4461525 m!5164513))

(declare-fun m!5164515 () Bool)

(assert (=> b!4461523 m!5164515))

(assert (=> b!4461523 m!5164515))

(declare-fun m!5164517 () Bool)

(assert (=> b!4461523 m!5164517))

(assert (=> start!437520 m!5164509))

(declare-fun m!5164519 () Bool)

(assert (=> start!437520 m!5164519))

(declare-fun m!5164521 () Bool)

(assert (=> b!4461526 m!5164521))

(declare-fun m!5164523 () Bool)

(assert (=> b!4461529 m!5164523))

(check-sat (not b!4461526) tp_is_empty!27239 tp_is_empty!27237 (not b!4461528) (not b!4461529) (not b!4461527) (not b!4461524) (not start!437520) (not b!4461525) (not b!4461523))
(check-sat)
