; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!758052 () Bool)

(assert start!758052)

(declare-fun b!8049471 () Bool)

(declare-fun e!4742877 () Bool)

(assert (=> b!8049471 (= e!4742877 (not true))))

(declare-fun lt!2723637 () Bool)

(declare-datatypes ((K!22731 0))(
  ( (K!22732 (val!32857 Int)) )
))
(declare-datatypes ((V!22985 0))(
  ( (V!22986 (val!32858 Int)) )
))
(declare-datatypes ((tuple2!70822 0))(
  ( (tuple2!70823 (_1!38714 K!22731) (_2!38714 V!22985)) )
))
(declare-datatypes ((List!75620 0))(
  ( (Nil!75494) (Cons!75494 (h!81942 tuple2!70822) (t!391392 List!75620)) )
))
(declare-fun l!14636 () List!75620)

(declare-fun key!6222 () K!22731)

(declare-fun containsKey!4801 (List!75620 K!22731) Bool)

(assert (=> b!8049471 (= lt!2723637 (containsKey!4801 l!14636 key!6222))))

(declare-datatypes ((ListMap!7225 0))(
  ( (ListMap!7226 (toList!11887 List!75620)) )
))
(declare-fun lt!2723634 () ListMap!7225)

(declare-fun acc!1298 () ListMap!7225)

(declare-fun apply!14400 (ListMap!7225 K!22731) V!22985)

(assert (=> b!8049471 (= (apply!14400 lt!2723634 key!6222) (apply!14400 acc!1298 key!6222))))

(declare-datatypes ((Unit!171270 0))(
  ( (Unit!171271) )
))
(declare-fun lt!2723636 () Unit!171270)

(declare-fun addApplyDifferent!8 (ListMap!7225 K!22731 V!22985 K!22731) Unit!171270)

(assert (=> b!8049471 (= lt!2723636 (addApplyDifferent!8 acc!1298 (_1!38714 (h!81942 l!14636)) (_2!38714 (h!81942 l!14636)) key!6222))))

(declare-fun contains!21124 (ListMap!7225 K!22731) Bool)

(assert (=> b!8049471 (contains!21124 lt!2723634 key!6222)))

(declare-fun lt!2723633 () Unit!171270)

(declare-fun addStillContains!32 (ListMap!7225 K!22731 V!22985 K!22731) Unit!171270)

(assert (=> b!8049471 (= lt!2723633 (addStillContains!32 acc!1298 (_1!38714 (h!81942 l!14636)) (_2!38714 (h!81942 l!14636)) key!6222))))

(declare-fun b!8049472 () Bool)

(declare-fun e!4742884 () Bool)

(assert (=> b!8049472 (= e!4742884 e!4742877)))

(declare-fun res!3182227 () Bool)

(assert (=> b!8049472 (=> (not res!3182227) (not e!4742877))))

(declare-fun lt!2723632 () Bool)

(assert (=> b!8049472 (= res!3182227 (and (not (= (_1!38714 (h!81942 l!14636)) key!6222)) (not lt!2723632)))))

(declare-fun lt!2723635 () ListMap!7225)

(declare-fun addToMapMapFromBucket!1954 (List!75620 ListMap!7225) ListMap!7225)

(assert (=> b!8049472 (= lt!2723635 (addToMapMapFromBucket!1954 (t!391392 l!14636) lt!2723634))))

(declare-fun +!2639 (ListMap!7225 tuple2!70822) ListMap!7225)

(assert (=> b!8049472 (= lt!2723634 (+!2639 acc!1298 (h!81942 l!14636)))))

(declare-fun b!8049473 () Bool)

(declare-fun res!3182224 () Bool)

(declare-fun e!4742882 () Bool)

(assert (=> b!8049473 (=> (not res!3182224) (not e!4742882))))

(declare-fun value!3131 () V!22985)

(declare-fun contains!21125 (List!75620 tuple2!70822) Bool)

(assert (=> b!8049473 (= res!3182224 (contains!21125 l!14636 (tuple2!70823 key!6222 value!3131)))))

(declare-fun b!8049474 () Bool)

(declare-fun res!3182223 () Bool)

(declare-fun e!4742880 () Bool)

(assert (=> b!8049474 (=> (not res!3182223) (not e!4742880))))

(assert (=> b!8049474 (= res!3182223 (= (apply!14400 acc!1298 key!6222) value!3131))))

(declare-fun b!8049475 () Bool)

(declare-fun res!3182220 () Bool)

(assert (=> b!8049475 (=> (not res!3182220) (not e!4742884))))

(assert (=> b!8049475 (= res!3182220 (not (is-Nil!75494 l!14636)))))

(declare-fun b!8049476 () Bool)

(declare-fun lt!2723631 () Bool)

(assert (=> b!8049476 (= e!4742882 (not lt!2723631))))

(declare-fun e!4742878 () Bool)

(declare-fun tp!2413462 () Bool)

(declare-fun tp_is_empty!54767 () Bool)

(declare-fun tp_is_empty!54769 () Bool)

(declare-fun b!8049477 () Bool)

(assert (=> b!8049477 (= e!4742878 (and tp_is_empty!54767 tp_is_empty!54769 tp!2413462))))

(declare-fun b!8049478 () Bool)

(declare-fun e!4742881 () Bool)

(assert (=> b!8049478 (= e!4742881 e!4742882)))

(declare-fun res!3182221 () Bool)

(assert (=> b!8049478 (=> (not res!3182221) (not e!4742882))))

(assert (=> b!8049478 (= res!3182221 (containsKey!4801 l!14636 key!6222))))

(declare-fun res!3182226 () Bool)

(declare-fun e!4742883 () Bool)

(assert (=> start!758052 (=> (not res!3182226) (not e!4742883))))

(declare-fun noDuplicateKeys!2673 (List!75620) Bool)

(assert (=> start!758052 (= res!3182226 (noDuplicateKeys!2673 l!14636))))

(assert (=> start!758052 e!4742883))

(assert (=> start!758052 e!4742878))

(declare-fun e!4742879 () Bool)

(declare-fun inv!97221 (ListMap!7225) Bool)

(assert (=> start!758052 (and (inv!97221 acc!1298) e!4742879)))

(assert (=> start!758052 tp_is_empty!54767))

(assert (=> start!758052 tp_is_empty!54769))

(declare-fun b!8049479 () Bool)

(assert (=> b!8049479 (= e!4742883 e!4742884)))

(declare-fun res!3182222 () Bool)

(assert (=> b!8049479 (=> (not res!3182222) (not e!4742884))))

(assert (=> b!8049479 (= res!3182222 e!4742881)))

(declare-fun res!3182228 () Bool)

(assert (=> b!8049479 (=> res!3182228 e!4742881)))

(assert (=> b!8049479 (= res!3182228 e!4742880)))

(declare-fun res!3182219 () Bool)

(assert (=> b!8049479 (=> (not res!3182219) (not e!4742880))))

(assert (=> b!8049479 (= res!3182219 (not lt!2723632))))

(assert (=> b!8049479 (= lt!2723632 (not lt!2723631))))

(assert (=> b!8049479 (= lt!2723631 (contains!21124 acc!1298 key!6222))))

(declare-fun b!8049480 () Bool)

(declare-fun tp!2413463 () Bool)

(assert (=> b!8049480 (= e!4742879 tp!2413463)))

(declare-fun b!8049481 () Bool)

(declare-fun res!3182225 () Bool)

(assert (=> b!8049481 (=> (not res!3182225) (not e!4742883))))

(assert (=> b!8049481 (= res!3182225 (contains!21124 (addToMapMapFromBucket!1954 l!14636 acc!1298) key!6222))))

(declare-fun b!8049482 () Bool)

(assert (=> b!8049482 (= e!4742880 (not (containsKey!4801 l!14636 key!6222)))))

(assert (= (and start!758052 res!3182226) b!8049481))

(assert (= (and b!8049481 res!3182225) b!8049479))

(assert (= (and b!8049479 res!3182219) b!8049474))

(assert (= (and b!8049474 res!3182223) b!8049482))

(assert (= (and b!8049479 (not res!3182228)) b!8049478))

(assert (= (and b!8049478 res!3182221) b!8049473))

(assert (= (and b!8049473 res!3182224) b!8049476))

(assert (= (and b!8049479 res!3182222) b!8049475))

(assert (= (and b!8049475 res!3182220) b!8049472))

(assert (= (and b!8049472 res!3182227) b!8049471))

(assert (= (and start!758052 (is-Cons!75494 l!14636)) b!8049477))

(assert (= start!758052 b!8049480))

(declare-fun m!8400484 () Bool)

(assert (=> b!8049481 m!8400484))

(assert (=> b!8049481 m!8400484))

(declare-fun m!8400486 () Bool)

(assert (=> b!8049481 m!8400486))

(declare-fun m!8400488 () Bool)

(assert (=> b!8049471 m!8400488))

(declare-fun m!8400490 () Bool)

(assert (=> b!8049471 m!8400490))

(declare-fun m!8400492 () Bool)

(assert (=> b!8049471 m!8400492))

(declare-fun m!8400494 () Bool)

(assert (=> b!8049471 m!8400494))

(declare-fun m!8400496 () Bool)

(assert (=> b!8049471 m!8400496))

(declare-fun m!8400498 () Bool)

(assert (=> b!8049471 m!8400498))

(declare-fun m!8400500 () Bool)

(assert (=> start!758052 m!8400500))

(declare-fun m!8400502 () Bool)

(assert (=> start!758052 m!8400502))

(declare-fun m!8400504 () Bool)

(assert (=> b!8049479 m!8400504))

(assert (=> b!8049478 m!8400492))

(declare-fun m!8400506 () Bool)

(assert (=> b!8049473 m!8400506))

(assert (=> b!8049482 m!8400492))

(declare-fun m!8400508 () Bool)

(assert (=> b!8049472 m!8400508))

(declare-fun m!8400510 () Bool)

(assert (=> b!8049472 m!8400510))

(assert (=> b!8049474 m!8400494))

(push 1)

(assert (not b!8049481))

(assert (not b!8049472))

(assert (not b!8049477))

(assert tp_is_empty!54767)

(assert (not b!8049473))

(assert (not b!8049474))

(assert (not b!8049482))

(assert tp_is_empty!54769)

(assert (not b!8049471))

(assert (not b!8049479))

(assert (not b!8049480))

(assert (not b!8049478))

(assert (not start!758052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

