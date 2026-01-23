; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472936 () Bool)

(assert start!472936)

(declare-fun b!4682434 () Bool)

(declare-fun e!2921365 () Bool)

(declare-fun e!2921368 () Bool)

(assert (=> b!4682434 (= e!2921365 e!2921368)))

(declare-fun res!1973637 () Bool)

(assert (=> b!4682434 (=> (not res!1973637) (not e!2921368))))

(declare-datatypes ((K!13670 0))(
  ( (K!13671 (val!19207 Int)) )
))
(declare-datatypes ((V!13916 0))(
  ( (V!13917 (val!19208 Int)) )
))
(declare-datatypes ((tuple2!53626 0))(
  ( (tuple2!53627 (_1!30107 K!13670) (_2!30107 V!13916)) )
))
(declare-datatypes ((List!52415 0))(
  ( (Nil!52291) (Cons!52291 (h!58510 tuple2!53626) (t!359577 List!52415)) )
))
(declare-datatypes ((ListMap!4869 0))(
  ( (ListMap!4870 (toList!5505 List!52415)) )
))
(declare-fun lt!1842274 () ListMap!4869)

(declare-fun key!4653 () K!13670)

(declare-fun contains!15418 (ListMap!4869 K!13670) Bool)

(assert (=> b!4682434 (= res!1973637 (contains!15418 lt!1842274 key!4653))))

(declare-datatypes ((tuple2!53628 0))(
  ( (tuple2!53629 (_1!30108 (_ BitVec 64)) (_2!30108 List!52415)) )
))
(declare-datatypes ((List!52416 0))(
  ( (Nil!52292) (Cons!52292 (h!58511 tuple2!53628) (t!359578 List!52416)) )
))
(declare-datatypes ((ListLongMap!4035 0))(
  ( (ListLongMap!4036 (toList!5506 List!52416)) )
))
(declare-fun lm!2023 () ListLongMap!4035)

(declare-fun extractMap!1834 (List!52416) ListMap!4869)

(assert (=> b!4682434 (= lt!1842274 (extractMap!1834 (toList!5506 lm!2023)))))

(declare-fun e!2921367 () Bool)

(declare-fun tp_is_empty!30527 () Bool)

(declare-fun tp!1345241 () Bool)

(declare-fun b!4682435 () Bool)

(declare-fun tp_is_empty!30525 () Bool)

(assert (=> b!4682435 (= e!2921367 (and tp_is_empty!30525 tp_is_empty!30527 tp!1345241))))

(declare-fun b!4682436 () Bool)

(declare-fun res!1973634 () Bool)

(declare-fun e!2921363 () Bool)

(assert (=> b!4682436 (=> (not res!1973634) (not e!2921363))))

(get-info :version)

(assert (=> b!4682436 (= res!1973634 ((_ is Cons!52292) (toList!5506 lm!2023)))))

(declare-fun b!4682437 () Bool)

(declare-fun res!1973626 () Bool)

(assert (=> b!4682437 (=> (not res!1973626) (not e!2921365))))

(declare-datatypes ((Hashable!6177 0))(
  ( (HashableExt!6176 (__x!31880 Int)) )
))
(declare-fun hashF!1323 () Hashable!6177)

(declare-fun oldBucket!34 () List!52415)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1634 (List!52415 (_ BitVec 64) Hashable!6177) Bool)

(assert (=> b!4682437 (= res!1973626 (allKeysSameHash!1634 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1973632 () Bool)

(assert (=> start!472936 (=> (not res!1973632) (not e!2921365))))

(declare-fun lambda!205177 () Int)

(declare-fun forall!11249 (List!52416 Int) Bool)

(assert (=> start!472936 (= res!1973632 (forall!11249 (toList!5506 lm!2023) lambda!205177))))

(assert (=> start!472936 e!2921365))

(declare-fun e!2921364 () Bool)

(declare-fun inv!67544 (ListLongMap!4035) Bool)

(assert (=> start!472936 (and (inv!67544 lm!2023) e!2921364)))

(assert (=> start!472936 tp_is_empty!30525))

(assert (=> start!472936 e!2921367))

(assert (=> start!472936 true))

(declare-fun e!2921366 () Bool)

(assert (=> start!472936 e!2921366))

(declare-fun b!4682438 () Bool)

(declare-fun e!2921362 () Bool)

(assert (=> b!4682438 (= e!2921363 (not e!2921362))))

(declare-fun res!1973629 () Bool)

(assert (=> b!4682438 (=> res!1973629 e!2921362)))

(assert (=> b!4682438 (= res!1973629 (or (and ((_ is Cons!52291) oldBucket!34) (= (_1!30107 (h!58510 oldBucket!34)) key!4653)) (not ((_ is Cons!52291) oldBucket!34)) (= (_1!30107 (h!58510 oldBucket!34)) key!4653)))))

(declare-fun e!2921361 () Bool)

(assert (=> b!4682438 e!2921361))

(declare-fun res!1973631 () Bool)

(assert (=> b!4682438 (=> (not res!1973631) (not e!2921361))))

(declare-fun tail!8479 (ListLongMap!4035) ListLongMap!4035)

(assert (=> b!4682438 (= res!1973631 (= (t!359578 (toList!5506 lm!2023)) (toList!5506 (tail!8479 lm!2023))))))

(declare-fun b!4682439 () Bool)

(declare-fun tp!1345242 () Bool)

(assert (=> b!4682439 (= e!2921366 (and tp_is_empty!30525 tp_is_empty!30527 tp!1345242))))

(declare-fun b!4682440 () Bool)

(declare-fun res!1973633 () Bool)

(assert (=> b!4682440 (=> (not res!1973633) (not e!2921365))))

(declare-fun newBucket!218 () List!52415)

(declare-fun removePairForKey!1403 (List!52415 K!13670) List!52415)

(assert (=> b!4682440 (= res!1973633 (= (removePairForKey!1403 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682441 () Bool)

(declare-fun res!1973636 () Bool)

(assert (=> b!4682441 (=> (not res!1973636) (not e!2921363))))

(assert (=> b!4682441 (= res!1973636 (allKeysSameHash!1634 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4682442 () Bool)

(declare-fun addToMapMapFromBucket!1240 (List!52415 ListMap!4869) ListMap!4869)

(assert (=> b!4682442 (= e!2921361 (= lt!1842274 (addToMapMapFromBucket!1240 (_2!30108 (h!58511 (toList!5506 lm!2023))) (extractMap!1834 (t!359578 (toList!5506 lm!2023))))))))

(declare-fun b!4682443 () Bool)

(assert (=> b!4682443 (= e!2921368 e!2921363)))

(declare-fun res!1973630 () Bool)

(assert (=> b!4682443 (=> (not res!1973630) (not e!2921363))))

(declare-fun lt!1842272 () (_ BitVec 64))

(assert (=> b!4682443 (= res!1973630 (= lt!1842272 hash!405))))

(declare-fun hash!3994 (Hashable!6177 K!13670) (_ BitVec 64))

(assert (=> b!4682443 (= lt!1842272 (hash!3994 hashF!1323 key!4653))))

(declare-fun b!4682444 () Bool)

(declare-fun tp!1345243 () Bool)

(assert (=> b!4682444 (= e!2921364 tp!1345243)))

(declare-fun b!4682445 () Bool)

(declare-fun res!1973627 () Bool)

(assert (=> b!4682445 (=> (not res!1973627) (not e!2921363))))

(declare-fun allKeysSameHashInMap!1722 (ListLongMap!4035 Hashable!6177) Bool)

(assert (=> b!4682445 (= res!1973627 (allKeysSameHashInMap!1722 lm!2023 hashF!1323))))

(declare-fun b!4682446 () Bool)

(declare-fun res!1973628 () Bool)

(assert (=> b!4682446 (=> (not res!1973628) (not e!2921365))))

(declare-fun noDuplicateKeys!1808 (List!52415) Bool)

(assert (=> b!4682446 (= res!1973628 (noDuplicateKeys!1808 newBucket!218))))

(declare-fun b!4682447 () Bool)

(declare-fun res!1973625 () Bool)

(assert (=> b!4682447 (=> (not res!1973625) (not e!2921363))))

(declare-fun head!9902 (List!52416) tuple2!53628)

(assert (=> b!4682447 (= res!1973625 (= (head!9902 (toList!5506 lm!2023)) (tuple2!53629 hash!405 oldBucket!34)))))

(declare-fun b!4682448 () Bool)

(declare-fun res!1973635 () Bool)

(assert (=> b!4682448 (=> (not res!1973635) (not e!2921365))))

(assert (=> b!4682448 (= res!1973635 (noDuplicateKeys!1808 oldBucket!34))))

(declare-fun b!4682449 () Bool)

(assert (=> b!4682449 (= e!2921362 true)))

(declare-datatypes ((Option!11979 0))(
  ( (None!11978) (Some!11978 (v!46341 tuple2!53626)) )
))
(declare-fun lt!1842273 () Option!11979)

(declare-fun getPair!412 (List!52415 K!13670) Option!11979)

(assert (=> b!4682449 (= lt!1842273 (getPair!412 oldBucket!34 key!4653))))

(declare-fun lt!1842270 () List!52415)

(declare-fun isDefined!9234 (Option!11979) Bool)

(assert (=> b!4682449 (isDefined!9234 (getPair!412 lt!1842270 key!4653))))

(declare-fun lt!1842271 () tuple2!53628)

(declare-datatypes ((Unit!123005 0))(
  ( (Unit!123006) )
))
(declare-fun lt!1842275 () Unit!123005)

(declare-fun forallContained!3356 (List!52416 Int tuple2!53628) Unit!123005)

(assert (=> b!4682449 (= lt!1842275 (forallContained!3356 (toList!5506 lm!2023) lambda!205177 lt!1842271))))

(declare-fun contains!15419 (List!52416 tuple2!53628) Bool)

(assert (=> b!4682449 (contains!15419 (toList!5506 lm!2023) lt!1842271)))

(assert (=> b!4682449 (= lt!1842271 (tuple2!53629 lt!1842272 lt!1842270))))

(declare-fun lt!1842269 () Unit!123005)

(declare-fun lemmaGetValueImpliesTupleContained!217 (ListLongMap!4035 (_ BitVec 64) List!52415) Unit!123005)

(assert (=> b!4682449 (= lt!1842269 (lemmaGetValueImpliesTupleContained!217 lm!2023 lt!1842272 lt!1842270))))

(declare-fun apply!12291 (ListLongMap!4035 (_ BitVec 64)) List!52415)

(assert (=> b!4682449 (= lt!1842270 (apply!12291 lm!2023 lt!1842272))))

(declare-fun contains!15420 (ListLongMap!4035 (_ BitVec 64)) Bool)

(assert (=> b!4682449 (contains!15420 lm!2023 lt!1842272)))

(declare-fun lt!1842268 () Unit!123005)

(declare-fun lemmaInGenMapThenLongMapContainsHash!618 (ListLongMap!4035 K!13670 Hashable!6177) Unit!123005)

(assert (=> b!4682449 (= lt!1842268 (lemmaInGenMapThenLongMapContainsHash!618 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1842276 () Unit!123005)

(declare-fun lemmaInGenMapThenGetPairDefined!208 (ListLongMap!4035 K!13670 Hashable!6177) Unit!123005)

(assert (=> b!4682449 (= lt!1842276 (lemmaInGenMapThenGetPairDefined!208 lm!2023 key!4653 hashF!1323))))

(assert (= (and start!472936 res!1973632) b!4682448))

(assert (= (and b!4682448 res!1973635) b!4682446))

(assert (= (and b!4682446 res!1973628) b!4682440))

(assert (= (and b!4682440 res!1973633) b!4682437))

(assert (= (and b!4682437 res!1973626) b!4682434))

(assert (= (and b!4682434 res!1973637) b!4682443))

(assert (= (and b!4682443 res!1973630) b!4682441))

(assert (= (and b!4682441 res!1973636) b!4682445))

(assert (= (and b!4682445 res!1973627) b!4682447))

(assert (= (and b!4682447 res!1973625) b!4682436))

(assert (= (and b!4682436 res!1973634) b!4682438))

(assert (= (and b!4682438 res!1973631) b!4682442))

(assert (= (and b!4682438 (not res!1973629)) b!4682449))

(assert (= start!472936 b!4682444))

(assert (= (and start!472936 ((_ is Cons!52291) oldBucket!34)) b!4682435))

(assert (= (and start!472936 ((_ is Cons!52291) newBucket!218)) b!4682439))

(declare-fun m!5580875 () Bool)

(assert (=> b!4682442 m!5580875))

(assert (=> b!4682442 m!5580875))

(declare-fun m!5580877 () Bool)

(assert (=> b!4682442 m!5580877))

(declare-fun m!5580879 () Bool)

(assert (=> b!4682438 m!5580879))

(declare-fun m!5580881 () Bool)

(assert (=> b!4682434 m!5580881))

(declare-fun m!5580883 () Bool)

(assert (=> b!4682434 m!5580883))

(declare-fun m!5580885 () Bool)

(assert (=> b!4682446 m!5580885))

(declare-fun m!5580887 () Bool)

(assert (=> b!4682447 m!5580887))

(declare-fun m!5580889 () Bool)

(assert (=> b!4682437 m!5580889))

(declare-fun m!5580891 () Bool)

(assert (=> b!4682440 m!5580891))

(declare-fun m!5580893 () Bool)

(assert (=> b!4682448 m!5580893))

(declare-fun m!5580895 () Bool)

(assert (=> b!4682449 m!5580895))

(declare-fun m!5580897 () Bool)

(assert (=> b!4682449 m!5580897))

(declare-fun m!5580899 () Bool)

(assert (=> b!4682449 m!5580899))

(declare-fun m!5580901 () Bool)

(assert (=> b!4682449 m!5580901))

(declare-fun m!5580903 () Bool)

(assert (=> b!4682449 m!5580903))

(assert (=> b!4682449 m!5580899))

(declare-fun m!5580905 () Bool)

(assert (=> b!4682449 m!5580905))

(declare-fun m!5580907 () Bool)

(assert (=> b!4682449 m!5580907))

(declare-fun m!5580909 () Bool)

(assert (=> b!4682449 m!5580909))

(declare-fun m!5580911 () Bool)

(assert (=> b!4682449 m!5580911))

(declare-fun m!5580913 () Bool)

(assert (=> b!4682449 m!5580913))

(declare-fun m!5580915 () Bool)

(assert (=> b!4682443 m!5580915))

(declare-fun m!5580917 () Bool)

(assert (=> b!4682441 m!5580917))

(declare-fun m!5580919 () Bool)

(assert (=> b!4682445 m!5580919))

(declare-fun m!5580921 () Bool)

(assert (=> start!472936 m!5580921))

(declare-fun m!5580923 () Bool)

(assert (=> start!472936 m!5580923))

(check-sat (not b!4682449) (not b!4682444) (not b!4682439) (not start!472936) tp_is_empty!30527 (not b!4682434) (not b!4682438) (not b!4682435) (not b!4682443) (not b!4682445) (not b!4682442) (not b!4682440) (not b!4682447) (not b!4682437) (not b!4682441) (not b!4682446) (not b!4682448) tp_is_empty!30525)
(check-sat)
