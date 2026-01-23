; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457370 () Bool)

(assert start!457370)

(declare-fun b!4591187 () Bool)

(declare-fun res!1919387 () Bool)

(declare-fun e!2863447 () Bool)

(assert (=> b!4591187 (=> res!1919387 e!2863447)))

(declare-datatypes ((K!12378 0))(
  ( (K!12379 (val!18173 Int)) )
))
(declare-datatypes ((V!12624 0))(
  ( (V!12625 (val!18174 Int)) )
))
(declare-datatypes ((tuple2!51614 0))(
  ( (tuple2!51615 (_1!29101 K!12378) (_2!29101 V!12624)) )
))
(declare-datatypes ((List!51132 0))(
  ( (Nil!51008) (Cons!51008 (h!56956 tuple2!51614) (t!358126 List!51132)) )
))
(declare-fun newBucket!178 () List!51132)

(declare-fun noDuplicateKeys!1291 (List!51132) Bool)

(assert (=> b!4591187 (= res!1919387 (not (noDuplicateKeys!1291 newBucket!178)))))

(declare-fun b!4591188 () Bool)

(declare-fun res!1919395 () Bool)

(declare-fun e!2863448 () Bool)

(assert (=> b!4591188 (=> (not res!1919395) (not e!2863448))))

(declare-datatypes ((tuple2!51616 0))(
  ( (tuple2!51617 (_1!29102 (_ BitVec 64)) (_2!29102 List!51132)) )
))
(declare-datatypes ((List!51133 0))(
  ( (Nil!51009) (Cons!51009 (h!56957 tuple2!51616) (t!358127 List!51133)) )
))
(declare-datatypes ((ListLongMap!3229 0))(
  ( (ListLongMap!3230 (toList!4597 List!51133)) )
))
(declare-fun lm!1477 () ListLongMap!3229)

(declare-fun key!3287 () K!12378)

(declare-datatypes ((ListMap!3859 0))(
  ( (ListMap!3860 (toList!4598 List!51132)) )
))
(declare-fun contains!13924 (ListMap!3859 K!12378) Bool)

(declare-fun extractMap!1351 (List!51133) ListMap!3859)

(assert (=> b!4591188 (= res!1919395 (contains!13924 (extractMap!1351 (toList!4597 lm!1477)) key!3287))))

(declare-fun b!4591189 () Bool)

(declare-fun res!1919389 () Bool)

(assert (=> b!4591189 (=> (not res!1919389) (not e!2863448))))

(declare-datatypes ((Hashable!5690 0))(
  ( (HashableExt!5689 (__x!31393 Int)) )
))
(declare-fun hashF!1107 () Hashable!5690)

(declare-fun allKeysSameHashInMap!1402 (ListLongMap!3229 Hashable!5690) Bool)

(assert (=> b!4591189 (= res!1919389 (allKeysSameHashInMap!1402 lm!1477 hashF!1107))))

(declare-fun b!4591190 () Bool)

(declare-fun e!2863449 () Bool)

(assert (=> b!4591190 (= e!2863449 (not e!2863447))))

(declare-fun res!1919393 () Bool)

(assert (=> b!4591190 (=> res!1919393 e!2863447)))

(declare-fun lt!1753359 () List!51132)

(declare-fun removePairForKey!916 (List!51132 K!12378) List!51132)

(assert (=> b!4591190 (= res!1919393 (not (= newBucket!178 (removePairForKey!916 lt!1753359 key!3287))))))

(declare-fun lt!1753356 () tuple2!51616)

(declare-datatypes ((Unit!107442 0))(
  ( (Unit!107443) )
))
(declare-fun lt!1753361 () Unit!107442)

(declare-fun lambda!184825 () Int)

(declare-fun forallContained!2800 (List!51133 Int tuple2!51616) Unit!107442)

(assert (=> b!4591190 (= lt!1753361 (forallContained!2800 (toList!4597 lm!1477) lambda!184825 lt!1753356))))

(declare-fun contains!13925 (List!51133 tuple2!51616) Bool)

(assert (=> b!4591190 (contains!13925 (toList!4597 lm!1477) lt!1753356)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4591190 (= lt!1753356 (tuple2!51617 hash!344 lt!1753359))))

(declare-fun lt!1753358 () Unit!107442)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!801 (List!51133 (_ BitVec 64) List!51132) Unit!107442)

(assert (=> b!4591190 (= lt!1753358 (lemmaGetValueByKeyImpliesContainsTuple!801 (toList!4597 lm!1477) hash!344 lt!1753359))))

(declare-fun apply!12028 (ListLongMap!3229 (_ BitVec 64)) List!51132)

(assert (=> b!4591190 (= lt!1753359 (apply!12028 lm!1477 hash!344))))

(declare-fun lt!1753362 () (_ BitVec 64))

(declare-fun contains!13926 (ListLongMap!3229 (_ BitVec 64)) Bool)

(assert (=> b!4591190 (contains!13926 lm!1477 lt!1753362)))

(declare-fun lt!1753360 () Unit!107442)

(declare-fun lemmaInGenMapThenLongMapContainsHash!365 (ListLongMap!3229 K!12378 Hashable!5690) Unit!107442)

(assert (=> b!4591190 (= lt!1753360 (lemmaInGenMapThenLongMapContainsHash!365 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4591191 () Bool)

(assert (=> b!4591191 (= e!2863448 e!2863449)))

(declare-fun res!1919390 () Bool)

(assert (=> b!4591191 (=> (not res!1919390) (not e!2863449))))

(assert (=> b!4591191 (= res!1919390 (= lt!1753362 hash!344))))

(declare-fun hash!3164 (Hashable!5690 K!12378) (_ BitVec 64))

(assert (=> b!4591191 (= lt!1753362 (hash!3164 hashF!1107 key!3287))))

(declare-fun e!2863451 () Bool)

(declare-fun b!4591192 () Bool)

(declare-fun tp!1340052 () Bool)

(declare-fun tp_is_empty!28459 () Bool)

(declare-fun tp_is_empty!28457 () Bool)

(assert (=> b!4591192 (= e!2863451 (and tp_is_empty!28457 tp_is_empty!28459 tp!1340052))))

(declare-fun b!4591193 () Bool)

(declare-fun res!1919394 () Bool)

(assert (=> b!4591193 (=> (not res!1919394) (not e!2863449))))

(declare-fun allKeysSameHash!1147 (List!51132 (_ BitVec 64) Hashable!5690) Bool)

(assert (=> b!4591193 (= res!1919394 (allKeysSameHash!1147 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4591195 () Bool)

(declare-fun res!1919392 () Bool)

(assert (=> b!4591195 (=> res!1919392 e!2863447)))

(assert (=> b!4591195 (= res!1919392 (or (is-Nil!51009 (toList!4597 lm!1477)) (not (= (_1!29102 (h!56957 (toList!4597 lm!1477))) hash!344))))))

(declare-fun b!4591196 () Bool)

(assert (=> b!4591196 (= e!2863447 true)))

(assert (=> b!4591196 false))

(declare-fun lt!1753357 () Unit!107442)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!261 (ListLongMap!3229 K!12378 Hashable!5690) Unit!107442)

(assert (=> b!4591196 (= lt!1753357 (lemmaNotInItsHashBucketThenNotInMap!261 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4591197 () Bool)

(declare-fun res!1919391 () Bool)

(assert (=> b!4591197 (=> res!1919391 e!2863447)))

(declare-fun containsKey!2095 (List!51132 K!12378) Bool)

(assert (=> b!4591197 (= res!1919391 (containsKey!2095 (_2!29102 (h!56957 (toList!4597 lm!1477))) key!3287))))

(declare-fun b!4591194 () Bool)

(declare-fun e!2863450 () Bool)

(declare-fun tp!1340053 () Bool)

(assert (=> b!4591194 (= e!2863450 tp!1340053)))

(declare-fun res!1919388 () Bool)

(assert (=> start!457370 (=> (not res!1919388) (not e!2863448))))

(declare-fun forall!10543 (List!51133 Int) Bool)

(assert (=> start!457370 (= res!1919388 (forall!10543 (toList!4597 lm!1477) lambda!184825))))

(assert (=> start!457370 e!2863448))

(assert (=> start!457370 true))

(declare-fun inv!66563 (ListLongMap!3229) Bool)

(assert (=> start!457370 (and (inv!66563 lm!1477) e!2863450)))

(assert (=> start!457370 tp_is_empty!28457))

(assert (=> start!457370 e!2863451))

(assert (= (and start!457370 res!1919388) b!4591189))

(assert (= (and b!4591189 res!1919389) b!4591188))

(assert (= (and b!4591188 res!1919395) b!4591191))

(assert (= (and b!4591191 res!1919390) b!4591193))

(assert (= (and b!4591193 res!1919394) b!4591190))

(assert (= (and b!4591190 (not res!1919393)) b!4591187))

(assert (= (and b!4591187 (not res!1919387)) b!4591195))

(assert (= (and b!4591195 (not res!1919392)) b!4591197))

(assert (= (and b!4591197 (not res!1919391)) b!4591196))

(assert (= start!457370 b!4591194))

(assert (= (and start!457370 (is-Cons!51008 newBucket!178)) b!4591192))

(declare-fun m!5414487 () Bool)

(assert (=> b!4591193 m!5414487))

(declare-fun m!5414489 () Bool)

(assert (=> start!457370 m!5414489))

(declare-fun m!5414491 () Bool)

(assert (=> start!457370 m!5414491))

(declare-fun m!5414493 () Bool)

(assert (=> b!4591187 m!5414493))

(declare-fun m!5414495 () Bool)

(assert (=> b!4591189 m!5414495))

(declare-fun m!5414497 () Bool)

(assert (=> b!4591188 m!5414497))

(assert (=> b!4591188 m!5414497))

(declare-fun m!5414499 () Bool)

(assert (=> b!4591188 m!5414499))

(declare-fun m!5414501 () Bool)

(assert (=> b!4591190 m!5414501))

(declare-fun m!5414503 () Bool)

(assert (=> b!4591190 m!5414503))

(declare-fun m!5414505 () Bool)

(assert (=> b!4591190 m!5414505))

(declare-fun m!5414507 () Bool)

(assert (=> b!4591190 m!5414507))

(declare-fun m!5414509 () Bool)

(assert (=> b!4591190 m!5414509))

(declare-fun m!5414511 () Bool)

(assert (=> b!4591190 m!5414511))

(declare-fun m!5414513 () Bool)

(assert (=> b!4591190 m!5414513))

(declare-fun m!5414515 () Bool)

(assert (=> b!4591191 m!5414515))

(declare-fun m!5414517 () Bool)

(assert (=> b!4591197 m!5414517))

(declare-fun m!5414519 () Bool)

(assert (=> b!4591196 m!5414519))

(push 1)

(assert (not b!4591192))

(assert (not b!4591188))

(assert (not b!4591197))

(assert (not b!4591194))

(assert (not b!4591190))

(assert (not b!4591189))

(assert (not start!457370))

(assert (not b!4591193))

(assert tp_is_empty!28459)

(assert (not b!4591187))

(assert (not b!4591196))

(assert tp_is_empty!28457)

(assert (not b!4591191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

