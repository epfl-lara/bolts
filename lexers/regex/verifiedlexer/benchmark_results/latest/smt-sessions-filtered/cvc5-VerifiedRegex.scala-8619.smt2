; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!459678 () Bool)

(assert start!459678)

(declare-fun b!4603349 () Bool)

(declare-fun res!1925983 () Bool)

(declare-fun e!2871377 () Bool)

(assert (=> b!4603349 (=> (not res!1925983) (not e!2871377))))

(declare-datatypes ((Hashable!5738 0))(
  ( (HashableExt!5737 (__x!31441 Int)) )
))
(declare-fun hashF!1107 () Hashable!5738)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12498 0))(
  ( (K!12499 (val!18269 Int)) )
))
(declare-datatypes ((V!12744 0))(
  ( (V!12745 (val!18270 Int)) )
))
(declare-datatypes ((tuple2!51806 0))(
  ( (tuple2!51807 (_1!29197 K!12498) (_2!29197 V!12744)) )
))
(declare-datatypes ((List!51254 0))(
  ( (Nil!51130) (Cons!51130 (h!57104 tuple2!51806) (t!358248 List!51254)) )
))
(declare-fun newBucket!178 () List!51254)

(declare-fun allKeysSameHash!1195 (List!51254 (_ BitVec 64) Hashable!5738) Bool)

(assert (=> b!4603349 (= res!1925983 (allKeysSameHash!1195 newBucket!178 hash!344 hashF!1107))))

(declare-fun e!2871378 () Bool)

(declare-fun b!4603350 () Bool)

(declare-datatypes ((tuple2!51808 0))(
  ( (tuple2!51809 (_1!29198 (_ BitVec 64)) (_2!29198 List!51254)) )
))
(declare-datatypes ((List!51255 0))(
  ( (Nil!51131) (Cons!51131 (h!57105 tuple2!51808) (t!358249 List!51255)) )
))
(declare-datatypes ((ListLongMap!3325 0))(
  ( (ListLongMap!3326 (toList!4693 List!51255)) )
))
(declare-fun lm!1477 () ListLongMap!3325)

(declare-fun key!3287 () K!12498)

(declare-fun lt!1761931 () (_ BitVec 64))

(declare-fun containsKey!2195 (List!51254 K!12498) Bool)

(declare-fun apply!12076 (ListLongMap!3325 (_ BitVec 64)) List!51254)

(assert (=> b!4603350 (= e!2871378 (not (containsKey!2195 (apply!12076 lm!1477 lt!1761931) key!3287)))))

(declare-fun b!4603351 () Bool)

(declare-fun res!1925985 () Bool)

(assert (=> b!4603351 (=> res!1925985 e!2871378)))

(declare-fun lt!1761933 () List!51254)

(declare-fun lt!1761928 () ListLongMap!3325)

(assert (=> b!4603351 (= res!1925985 (not (= (apply!12076 lt!1761928 hash!344) lt!1761933)))))

(declare-fun tp_is_empty!28651 () Bool)

(declare-fun tp_is_empty!28649 () Bool)

(declare-fun b!4603352 () Bool)

(declare-fun tp!1340657 () Bool)

(declare-fun e!2871376 () Bool)

(assert (=> b!4603352 (= e!2871376 (and tp_is_empty!28649 tp_is_empty!28651 tp!1340657))))

(declare-fun b!4603353 () Bool)

(declare-fun res!1925979 () Bool)

(assert (=> b!4603353 (=> res!1925979 e!2871378)))

(declare-fun lt!1761929 () tuple2!51808)

(declare-fun contains!14104 (List!51255 tuple2!51808) Bool)

(assert (=> b!4603353 (= res!1925979 (not (contains!14104 (t!358249 (toList!4693 lm!1477)) lt!1761929)))))

(declare-fun res!1925977 () Bool)

(declare-fun e!2871375 () Bool)

(assert (=> start!459678 (=> (not res!1925977) (not e!2871375))))

(declare-fun lambda!187023 () Int)

(declare-fun forall!10635 (List!51255 Int) Bool)

(assert (=> start!459678 (= res!1925977 (forall!10635 (toList!4693 lm!1477) lambda!187023))))

(assert (=> start!459678 e!2871375))

(assert (=> start!459678 true))

(declare-fun e!2871379 () Bool)

(declare-fun inv!66683 (ListLongMap!3325) Bool)

(assert (=> start!459678 (and (inv!66683 lm!1477) e!2871379)))

(assert (=> start!459678 tp_is_empty!28649))

(assert (=> start!459678 e!2871376))

(declare-fun b!4603354 () Bool)

(declare-fun e!2871380 () Bool)

(assert (=> b!4603354 (= e!2871380 e!2871378)))

(declare-fun res!1925978 () Bool)

(assert (=> b!4603354 (=> res!1925978 e!2871378)))

(declare-fun contains!14105 (ListLongMap!3325 (_ BitVec 64)) Bool)

(assert (=> b!4603354 (= res!1925978 (not (contains!14105 lt!1761928 hash!344)))))

(declare-fun tail!7982 (ListLongMap!3325) ListLongMap!3325)

(assert (=> b!4603354 (= lt!1761928 (tail!7982 lm!1477))))

(declare-fun b!4603355 () Bool)

(assert (=> b!4603355 (= e!2871377 (not e!2871380))))

(declare-fun res!1925986 () Bool)

(assert (=> b!4603355 (=> res!1925986 e!2871380)))

(declare-fun removePairForKey!964 (List!51254 K!12498) List!51254)

(assert (=> b!4603355 (= res!1925986 (not (= newBucket!178 (removePairForKey!964 lt!1761933 key!3287))))))

(declare-datatypes ((Unit!108813 0))(
  ( (Unit!108814) )
))
(declare-fun lt!1761930 () Unit!108813)

(declare-fun forallContained!2884 (List!51255 Int tuple2!51808) Unit!108813)

(assert (=> b!4603355 (= lt!1761930 (forallContained!2884 (toList!4693 lm!1477) lambda!187023 lt!1761929))))

(assert (=> b!4603355 (contains!14104 (toList!4693 lm!1477) lt!1761929)))

(assert (=> b!4603355 (= lt!1761929 (tuple2!51809 hash!344 lt!1761933))))

(declare-fun lt!1761934 () Unit!108813)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!849 (List!51255 (_ BitVec 64) List!51254) Unit!108813)

(assert (=> b!4603355 (= lt!1761934 (lemmaGetValueByKeyImpliesContainsTuple!849 (toList!4693 lm!1477) hash!344 lt!1761933))))

(assert (=> b!4603355 (= lt!1761933 (apply!12076 lm!1477 hash!344))))

(assert (=> b!4603355 (contains!14105 lm!1477 lt!1761931)))

(declare-fun lt!1761932 () Unit!108813)

(declare-fun lemmaInGenMapThenLongMapContainsHash!413 (ListLongMap!3325 K!12498 Hashable!5738) Unit!108813)

(assert (=> b!4603355 (= lt!1761932 (lemmaInGenMapThenLongMapContainsHash!413 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4603356 () Bool)

(declare-fun res!1925987 () Bool)

(assert (=> b!4603356 (=> (not res!1925987) (not e!2871375))))

(declare-fun allKeysSameHashInMap!1450 (ListLongMap!3325 Hashable!5738) Bool)

(assert (=> b!4603356 (= res!1925987 (allKeysSameHashInMap!1450 lm!1477 hashF!1107))))

(declare-fun b!4603357 () Bool)

(declare-fun tp!1340656 () Bool)

(assert (=> b!4603357 (= e!2871379 tp!1340656)))

(declare-fun b!4603358 () Bool)

(assert (=> b!4603358 (= e!2871375 e!2871377)))

(declare-fun res!1925980 () Bool)

(assert (=> b!4603358 (=> (not res!1925980) (not e!2871377))))

(assert (=> b!4603358 (= res!1925980 (= lt!1761931 hash!344))))

(declare-fun hash!3260 (Hashable!5738 K!12498) (_ BitVec 64))

(assert (=> b!4603358 (= lt!1761931 (hash!3260 hashF!1107 key!3287))))

(declare-fun b!4603359 () Bool)

(declare-fun res!1925975 () Bool)

(assert (=> b!4603359 (=> res!1925975 e!2871380)))

(declare-fun noDuplicateKeys!1339 (List!51254) Bool)

(assert (=> b!4603359 (= res!1925975 (not (noDuplicateKeys!1339 newBucket!178)))))

(declare-fun b!4603360 () Bool)

(declare-fun res!1925976 () Bool)

(assert (=> b!4603360 (=> res!1925976 e!2871380)))

(assert (=> b!4603360 (= res!1925976 (or (is-Nil!51131 (toList!4693 lm!1477)) (= (_1!29198 (h!57105 (toList!4693 lm!1477))) hash!344)))))

(declare-fun b!4603361 () Bool)

(declare-fun res!1925982 () Bool)

(assert (=> b!4603361 (=> res!1925982 e!2871378)))

(assert (=> b!4603361 (= res!1925982 (not (forall!10635 (toList!4693 lm!1477) lambda!187023)))))

(declare-fun b!4603362 () Bool)

(declare-fun res!1925984 () Bool)

(assert (=> b!4603362 (=> res!1925984 e!2871378)))

(assert (=> b!4603362 (= res!1925984 (containsKey!2195 lt!1761933 key!3287))))

(declare-fun b!4603363 () Bool)

(declare-fun res!1925981 () Bool)

(assert (=> b!4603363 (=> (not res!1925981) (not e!2871375))))

(declare-datatypes ((ListMap!3955 0))(
  ( (ListMap!3956 (toList!4694 List!51254)) )
))
(declare-fun contains!14106 (ListMap!3955 K!12498) Bool)

(declare-fun extractMap!1399 (List!51255) ListMap!3955)

(assert (=> b!4603363 (= res!1925981 (contains!14106 (extractMap!1399 (toList!4693 lm!1477)) key!3287))))

(assert (= (and start!459678 res!1925977) b!4603356))

(assert (= (and b!4603356 res!1925987) b!4603363))

(assert (= (and b!4603363 res!1925981) b!4603358))

(assert (= (and b!4603358 res!1925980) b!4603349))

(assert (= (and b!4603349 res!1925983) b!4603355))

(assert (= (and b!4603355 (not res!1925986)) b!4603359))

(assert (= (and b!4603359 (not res!1925975)) b!4603360))

(assert (= (and b!4603360 (not res!1925976)) b!4603354))

(assert (= (and b!4603354 (not res!1925978)) b!4603351))

(assert (= (and b!4603351 (not res!1925985)) b!4603353))

(assert (= (and b!4603353 (not res!1925979)) b!4603362))

(assert (= (and b!4603362 (not res!1925984)) b!4603361))

(assert (= (and b!4603361 (not res!1925982)) b!4603350))

(assert (= start!459678 b!4603357))

(assert (= (and start!459678 (is-Cons!51130 newBucket!178)) b!4603352))

(declare-fun m!5432457 () Bool)

(assert (=> b!4603351 m!5432457))

(declare-fun m!5432459 () Bool)

(assert (=> b!4603350 m!5432459))

(assert (=> b!4603350 m!5432459))

(declare-fun m!5432461 () Bool)

(assert (=> b!4603350 m!5432461))

(declare-fun m!5432463 () Bool)

(assert (=> b!4603356 m!5432463))

(declare-fun m!5432465 () Bool)

(assert (=> b!4603354 m!5432465))

(declare-fun m!5432467 () Bool)

(assert (=> b!4603354 m!5432467))

(declare-fun m!5432469 () Bool)

(assert (=> b!4603349 m!5432469))

(declare-fun m!5432471 () Bool)

(assert (=> b!4603362 m!5432471))

(declare-fun m!5432473 () Bool)

(assert (=> b!4603361 m!5432473))

(declare-fun m!5432475 () Bool)

(assert (=> b!4603363 m!5432475))

(assert (=> b!4603363 m!5432475))

(declare-fun m!5432477 () Bool)

(assert (=> b!4603363 m!5432477))

(declare-fun m!5432479 () Bool)

(assert (=> b!4603358 m!5432479))

(declare-fun m!5432481 () Bool)

(assert (=> b!4603353 m!5432481))

(declare-fun m!5432483 () Bool)

(assert (=> b!4603355 m!5432483))

(declare-fun m!5432485 () Bool)

(assert (=> b!4603355 m!5432485))

(declare-fun m!5432487 () Bool)

(assert (=> b!4603355 m!5432487))

(declare-fun m!5432489 () Bool)

(assert (=> b!4603355 m!5432489))

(declare-fun m!5432491 () Bool)

(assert (=> b!4603355 m!5432491))

(declare-fun m!5432493 () Bool)

(assert (=> b!4603355 m!5432493))

(declare-fun m!5432495 () Bool)

(assert (=> b!4603355 m!5432495))

(assert (=> start!459678 m!5432473))

(declare-fun m!5432497 () Bool)

(assert (=> start!459678 m!5432497))

(declare-fun m!5432499 () Bool)

(assert (=> b!4603359 m!5432499))

(push 1)

(assert (not b!4603358))

(assert (not b!4603361))

(assert (not b!4603362))

(assert (not b!4603353))

(assert (not b!4603357))

(assert (not b!4603352))

(assert (not start!459678))

(assert (not b!4603351))

(assert (not b!4603356))

(assert (not b!4603363))

(assert tp_is_empty!28651)

(assert (not b!4603349))

(assert tp_is_empty!28649)

(assert (not b!4603354))

(assert (not b!4603359))

(assert (not b!4603355))

(assert (not b!4603350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

