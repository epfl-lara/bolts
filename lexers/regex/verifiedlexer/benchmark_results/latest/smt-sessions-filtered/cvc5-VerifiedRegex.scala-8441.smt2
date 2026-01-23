; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437514 () Bool)

(assert start!437514)

(declare-fun tp_is_empty!27225 () Bool)

(declare-fun tp_is_empty!27227 () Bool)

(declare-fun tp!1335809 () Bool)

(declare-fun e!2778133 () Bool)

(declare-fun b!4461460 () Bool)

(assert (=> b!4461460 (= e!2778133 (and tp_is_empty!27225 tp_is_empty!27227 tp!1335809))))

(declare-fun res!1850222 () Bool)

(declare-fun e!2778130 () Bool)

(assert (=> start!437514 (=> (not res!1850222) (not e!2778130))))

(declare-datatypes ((K!11608 0))(
  ( (K!11609 (val!17557 Int)) )
))
(declare-datatypes ((V!11854 0))(
  ( (V!11855 (val!17558 Int)) )
))
(declare-datatypes ((tuple2!50382 0))(
  ( (tuple2!50383 (_1!28485 K!11608) (_2!28485 V!11854)) )
))
(declare-datatypes ((List!50317 0))(
  ( (Nil!50193) (Cons!50193 (h!55938 tuple2!50382) (t!357267 List!50317)) )
))
(declare-datatypes ((tuple2!50384 0))(
  ( (tuple2!50385 (_1!28486 (_ BitVec 64)) (_2!28486 List!50317)) )
))
(declare-datatypes ((List!50318 0))(
  ( (Nil!50194) (Cons!50194 (h!55939 tuple2!50384) (t!357268 List!50318)) )
))
(declare-datatypes ((ListLongMap!2613 0))(
  ( (ListLongMap!2614 (toList!3981 List!50318)) )
))
(declare-fun lm!1477 () ListLongMap!2613)

(declare-fun lambda!161870 () Int)

(declare-fun forall!9927 (List!50318 Int) Bool)

(assert (=> start!437514 (= res!1850222 (forall!9927 (toList!3981 lm!1477) lambda!161870))))

(assert (=> start!437514 e!2778130))

(assert (=> start!437514 true))

(declare-fun e!2778131 () Bool)

(declare-fun inv!65793 (ListLongMap!2613) Bool)

(assert (=> start!437514 (and (inv!65793 lm!1477) e!2778131)))

(assert (=> start!437514 tp_is_empty!27225))

(assert (=> start!437514 e!2778133))

(declare-fun b!4461461 () Bool)

(declare-fun res!1850219 () Bool)

(assert (=> b!4461461 (=> (not res!1850219) (not e!2778130))))

(declare-fun key!3287 () K!11608)

(declare-datatypes ((ListMap!3243 0))(
  ( (ListMap!3244 (toList!3982 List!50317)) )
))
(declare-fun contains!12697 (ListMap!3243 K!11608) Bool)

(declare-fun extractMap!1043 (List!50318) ListMap!3243)

(assert (=> b!4461461 (= res!1850219 (contains!12697 (extractMap!1043 (toList!3981 lm!1477)) key!3287))))

(declare-fun b!4461462 () Bool)

(declare-fun res!1850221 () Bool)

(assert (=> b!4461462 (=> (not res!1850221) (not e!2778130))))

(declare-datatypes ((Hashable!5382 0))(
  ( (HashableExt!5381 (__x!31085 Int)) )
))
(declare-fun hashF!1107 () Hashable!5382)

(declare-fun allKeysSameHashInMap!1094 (ListLongMap!2613 Hashable!5382) Bool)

(assert (=> b!4461462 (= res!1850221 (allKeysSameHashInMap!1094 lm!1477 hashF!1107))))

(declare-fun b!4461463 () Bool)

(declare-fun e!2778132 () Bool)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!12698 (ListLongMap!2613 (_ BitVec 64)) Bool)

(assert (=> b!4461463 (= e!2778132 (not (contains!12698 lm!1477 hash!344)))))

(declare-fun lt!1652527 () List!50317)

(declare-fun contains!12699 (List!50318 tuple2!50384) Bool)

(assert (=> b!4461463 (contains!12699 (toList!3981 lm!1477) (tuple2!50385 hash!344 lt!1652527))))

(declare-datatypes ((Unit!86852 0))(
  ( (Unit!86853) )
))
(declare-fun lt!1652526 () Unit!86852)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!499 (List!50318 (_ BitVec 64) List!50317) Unit!86852)

(assert (=> b!4461463 (= lt!1652526 (lemmaGetValueByKeyImpliesContainsTuple!499 (toList!3981 lm!1477) hash!344 lt!1652527))))

(declare-fun apply!11724 (ListLongMap!2613 (_ BitVec 64)) List!50317)

(assert (=> b!4461463 (= lt!1652527 (apply!11724 lm!1477 hash!344))))

(declare-fun lt!1652525 () (_ BitVec 64))

(assert (=> b!4461463 (contains!12698 lm!1477 lt!1652525)))

(declare-fun lt!1652528 () Unit!86852)

(declare-fun lemmaInGenMapThenLongMapContainsHash!61 (ListLongMap!2613 K!11608 Hashable!5382) Unit!86852)

(assert (=> b!4461463 (= lt!1652528 (lemmaInGenMapThenLongMapContainsHash!61 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461464 () Bool)

(declare-fun tp!1335808 () Bool)

(assert (=> b!4461464 (= e!2778131 tp!1335808)))

(declare-fun b!4461465 () Bool)

(declare-fun res!1850218 () Bool)

(assert (=> b!4461465 (=> (not res!1850218) (not e!2778132))))

(declare-fun newBucket!178 () List!50317)

(declare-fun allKeysSameHash!841 (List!50317 (_ BitVec 64) Hashable!5382) Bool)

(assert (=> b!4461465 (= res!1850218 (allKeysSameHash!841 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4461466 () Bool)

(assert (=> b!4461466 (= e!2778130 e!2778132)))

(declare-fun res!1850220 () Bool)

(assert (=> b!4461466 (=> (not res!1850220) (not e!2778132))))

(assert (=> b!4461466 (= res!1850220 (= lt!1652525 hash!344))))

(declare-fun hash!2369 (Hashable!5382 K!11608) (_ BitVec 64))

(assert (=> b!4461466 (= lt!1652525 (hash!2369 hashF!1107 key!3287))))

(assert (= (and start!437514 res!1850222) b!4461462))

(assert (= (and b!4461462 res!1850221) b!4461461))

(assert (= (and b!4461461 res!1850219) b!4461466))

(assert (= (and b!4461466 res!1850220) b!4461465))

(assert (= (and b!4461465 res!1850218) b!4461463))

(assert (= start!437514 b!4461464))

(assert (= (and start!437514 (is-Cons!50193 newBucket!178)) b!4461460))

(declare-fun m!5164425 () Bool)

(assert (=> b!4461466 m!5164425))

(declare-fun m!5164427 () Bool)

(assert (=> b!4461462 m!5164427))

(declare-fun m!5164429 () Bool)

(assert (=> b!4461463 m!5164429))

(declare-fun m!5164431 () Bool)

(assert (=> b!4461463 m!5164431))

(declare-fun m!5164433 () Bool)

(assert (=> b!4461463 m!5164433))

(declare-fun m!5164435 () Bool)

(assert (=> b!4461463 m!5164435))

(declare-fun m!5164437 () Bool)

(assert (=> b!4461463 m!5164437))

(declare-fun m!5164439 () Bool)

(assert (=> b!4461463 m!5164439))

(declare-fun m!5164441 () Bool)

(assert (=> b!4461465 m!5164441))

(declare-fun m!5164443 () Bool)

(assert (=> start!437514 m!5164443))

(declare-fun m!5164445 () Bool)

(assert (=> start!437514 m!5164445))

(declare-fun m!5164447 () Bool)

(assert (=> b!4461461 m!5164447))

(assert (=> b!4461461 m!5164447))

(declare-fun m!5164449 () Bool)

(assert (=> b!4461461 m!5164449))

(push 1)

(assert tp_is_empty!27225)

(assert tp_is_empty!27227)

(assert (not b!4461460))

(assert (not b!4461461))

(assert (not b!4461463))

(assert (not b!4461465))

(assert (not b!4461466))

(assert (not start!437514))

(assert (not b!4461462))

(assert (not b!4461464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

