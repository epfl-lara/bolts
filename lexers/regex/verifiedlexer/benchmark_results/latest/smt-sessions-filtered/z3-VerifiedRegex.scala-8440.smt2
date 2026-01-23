; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437512 () Bool)

(assert start!437512)

(declare-fun b!4461439 () Bool)

(declare-fun res!1850204 () Bool)

(declare-fun e!2778118 () Bool)

(assert (=> b!4461439 (=> (not res!1850204) (not e!2778118))))

(declare-datatypes ((K!11605 0))(
  ( (K!11606 (val!17555 Int)) )
))
(declare-datatypes ((V!11851 0))(
  ( (V!11852 (val!17556 Int)) )
))
(declare-datatypes ((tuple2!50378 0))(
  ( (tuple2!50379 (_1!28483 K!11605) (_2!28483 V!11851)) )
))
(declare-datatypes ((List!50315 0))(
  ( (Nil!50191) (Cons!50191 (h!55936 tuple2!50378) (t!357265 List!50315)) )
))
(declare-datatypes ((tuple2!50380 0))(
  ( (tuple2!50381 (_1!28484 (_ BitVec 64)) (_2!28484 List!50315)) )
))
(declare-datatypes ((List!50316 0))(
  ( (Nil!50192) (Cons!50192 (h!55937 tuple2!50380) (t!357266 List!50316)) )
))
(declare-datatypes ((ListLongMap!2611 0))(
  ( (ListLongMap!2612 (toList!3979 List!50316)) )
))
(declare-fun lm!1477 () ListLongMap!2611)

(declare-fun key!3287 () K!11605)

(declare-datatypes ((ListMap!3241 0))(
  ( (ListMap!3242 (toList!3980 List!50315)) )
))
(declare-fun contains!12695 (ListMap!3241 K!11605) Bool)

(declare-fun extractMap!1042 (List!50316) ListMap!3241)

(assert (=> b!4461439 (= res!1850204 (contains!12695 (extractMap!1042 (toList!3979 lm!1477)) key!3287))))

(declare-fun b!4461440 () Bool)

(declare-fun e!2778120 () Bool)

(assert (=> b!4461440 (= e!2778118 e!2778120)))

(declare-fun res!1850207 () Bool)

(assert (=> b!4461440 (=> (not res!1850207) (not e!2778120))))

(declare-fun lt!1652515 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461440 (= res!1850207 (= lt!1652515 hash!344))))

(declare-datatypes ((Hashable!5381 0))(
  ( (HashableExt!5380 (__x!31084 Int)) )
))
(declare-fun hashF!1107 () Hashable!5381)

(declare-fun hash!2368 (Hashable!5381 K!11605) (_ BitVec 64))

(assert (=> b!4461440 (= lt!1652515 (hash!2368 hashF!1107 key!3287))))

(declare-fun b!4461441 () Bool)

(declare-fun res!1850206 () Bool)

(assert (=> b!4461441 (=> (not res!1850206) (not e!2778120))))

(declare-fun newBucket!178 () List!50315)

(declare-fun allKeysSameHash!840 (List!50315 (_ BitVec 64) Hashable!5381) Bool)

(assert (=> b!4461441 (= res!1850206 (allKeysSameHash!840 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1850203 () Bool)

(assert (=> start!437512 (=> (not res!1850203) (not e!2778118))))

(declare-fun lambda!161867 () Int)

(declare-fun forall!9926 (List!50316 Int) Bool)

(assert (=> start!437512 (= res!1850203 (forall!9926 (toList!3979 lm!1477) lambda!161867))))

(assert (=> start!437512 e!2778118))

(assert (=> start!437512 true))

(declare-fun e!2778119 () Bool)

(declare-fun inv!65789 (ListLongMap!2611) Bool)

(assert (=> start!437512 (and (inv!65789 lm!1477) e!2778119)))

(declare-fun tp_is_empty!27221 () Bool)

(assert (=> start!437512 tp_is_empty!27221))

(declare-fun e!2778121 () Bool)

(assert (=> start!437512 e!2778121))

(declare-fun tp_is_empty!27223 () Bool)

(declare-fun tp!1335802 () Bool)

(declare-fun b!4461442 () Bool)

(assert (=> b!4461442 (= e!2778121 (and tp_is_empty!27221 tp_is_empty!27223 tp!1335802))))

(declare-fun b!4461443 () Bool)

(assert (=> b!4461443 (= e!2778120 (not true))))

(declare-fun lt!1652514 () List!50315)

(declare-fun apply!11723 (ListLongMap!2611 (_ BitVec 64)) List!50315)

(assert (=> b!4461443 (= lt!1652514 (apply!11723 lm!1477 hash!344))))

(declare-fun contains!12696 (ListLongMap!2611 (_ BitVec 64)) Bool)

(assert (=> b!4461443 (contains!12696 lm!1477 lt!1652515)))

(declare-datatypes ((Unit!86850 0))(
  ( (Unit!86851) )
))
(declare-fun lt!1652516 () Unit!86850)

(declare-fun lemmaInGenMapThenLongMapContainsHash!60 (ListLongMap!2611 K!11605 Hashable!5381) Unit!86850)

(assert (=> b!4461443 (= lt!1652516 (lemmaInGenMapThenLongMapContainsHash!60 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461444 () Bool)

(declare-fun tp!1335803 () Bool)

(assert (=> b!4461444 (= e!2778119 tp!1335803)))

(declare-fun b!4461445 () Bool)

(declare-fun res!1850205 () Bool)

(assert (=> b!4461445 (=> (not res!1850205) (not e!2778118))))

(declare-fun allKeysSameHashInMap!1093 (ListLongMap!2611 Hashable!5381) Bool)

(assert (=> b!4461445 (= res!1850205 (allKeysSameHashInMap!1093 lm!1477 hashF!1107))))

(assert (= (and start!437512 res!1850203) b!4461445))

(assert (= (and b!4461445 res!1850205) b!4461439))

(assert (= (and b!4461439 res!1850204) b!4461440))

(assert (= (and b!4461440 res!1850207) b!4461441))

(assert (= (and b!4461441 res!1850206) b!4461443))

(assert (= start!437512 b!4461444))

(get-info :version)

(assert (= (and start!437512 ((_ is Cons!50191) newBucket!178)) b!4461442))

(declare-fun m!5164405 () Bool)

(assert (=> start!437512 m!5164405))

(declare-fun m!5164407 () Bool)

(assert (=> start!437512 m!5164407))

(declare-fun m!5164409 () Bool)

(assert (=> b!4461445 m!5164409))

(declare-fun m!5164411 () Bool)

(assert (=> b!4461441 m!5164411))

(declare-fun m!5164413 () Bool)

(assert (=> b!4461440 m!5164413))

(declare-fun m!5164415 () Bool)

(assert (=> b!4461439 m!5164415))

(assert (=> b!4461439 m!5164415))

(declare-fun m!5164417 () Bool)

(assert (=> b!4461439 m!5164417))

(declare-fun m!5164419 () Bool)

(assert (=> b!4461443 m!5164419))

(declare-fun m!5164421 () Bool)

(assert (=> b!4461443 m!5164421))

(declare-fun m!5164423 () Bool)

(assert (=> b!4461443 m!5164423))

(check-sat (not b!4461440) (not b!4461441) (not b!4461445) (not b!4461442) tp_is_empty!27221 (not b!4461443) (not start!437512) (not b!4461439) (not b!4461444) tp_is_empty!27223)
(check-sat)
