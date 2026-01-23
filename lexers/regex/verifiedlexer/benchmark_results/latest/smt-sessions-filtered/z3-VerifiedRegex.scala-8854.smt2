; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472940 () Bool)

(assert start!472940)

(declare-fun tp_is_empty!30535 () Bool)

(declare-fun tp_is_empty!30533 () Bool)

(declare-fun e!2921413 () Bool)

(declare-fun tp!1345261 () Bool)

(declare-fun b!4682530 () Bool)

(assert (=> b!4682530 (= e!2921413 (and tp_is_empty!30533 tp_is_empty!30535 tp!1345261))))

(declare-fun e!2921415 () Bool)

(declare-fun b!4682531 () Bool)

(declare-fun tp!1345259 () Bool)

(assert (=> b!4682531 (= e!2921415 (and tp_is_empty!30533 tp_is_empty!30535 tp!1345259))))

(declare-fun b!4682532 () Bool)

(declare-fun res!1973711 () Bool)

(declare-fun e!2921412 () Bool)

(assert (=> b!4682532 (=> (not res!1973711) (not e!2921412))))

(declare-datatypes ((K!13675 0))(
  ( (K!13676 (val!19211 Int)) )
))
(declare-datatypes ((V!13921 0))(
  ( (V!13922 (val!19212 Int)) )
))
(declare-datatypes ((tuple2!53634 0))(
  ( (tuple2!53635 (_1!30111 K!13675) (_2!30111 V!13921)) )
))
(declare-datatypes ((List!52419 0))(
  ( (Nil!52295) (Cons!52295 (h!58514 tuple2!53634) (t!359581 List!52419)) )
))
(declare-datatypes ((tuple2!53636 0))(
  ( (tuple2!53637 (_1!30112 (_ BitVec 64)) (_2!30112 List!52419)) )
))
(declare-datatypes ((List!52420 0))(
  ( (Nil!52296) (Cons!52296 (h!58515 tuple2!53636) (t!359582 List!52420)) )
))
(declare-datatypes ((ListLongMap!4039 0))(
  ( (ListLongMap!4040 (toList!5509 List!52420)) )
))
(declare-fun lm!2023 () ListLongMap!4039)

(get-info :version)

(assert (=> b!4682532 (= res!1973711 ((_ is Cons!52296) (toList!5509 lm!2023)))))

(declare-fun b!4682533 () Bool)

(declare-fun e!2921416 () Bool)

(assert (=> b!4682533 (= e!2921416 true)))

(declare-fun lt!1842328 () Bool)

(declare-fun oldBucket!34 () List!52419)

(declare-fun key!4653 () K!13675)

(declare-fun containsKey!2957 (List!52419 K!13675) Bool)

(assert (=> b!4682533 (= lt!1842328 (containsKey!2957 (t!359581 oldBucket!34) key!4653))))

(assert (=> b!4682533 (containsKey!2957 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6179 0))(
  ( (HashableExt!6178 (__x!31882 Int)) )
))
(declare-fun hashF!1323 () Hashable!6179)

(declare-datatypes ((Unit!123009 0))(
  ( (Unit!123010) )
))
(declare-fun lt!1842331 () Unit!123009)

(declare-fun lemmaGetPairDefinedThenContainsKey!162 (List!52419 K!13675 Hashable!6179) Unit!123009)

(assert (=> b!4682533 (= lt!1842331 (lemmaGetPairDefinedThenContainsKey!162 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1842335 () List!52419)

(declare-datatypes ((Option!11981 0))(
  ( (None!11980) (Some!11980 (v!46343 tuple2!53634)) )
))
(declare-fun isDefined!9236 (Option!11981) Bool)

(declare-fun getPair!414 (List!52419 K!13675) Option!11981)

(assert (=> b!4682533 (isDefined!9236 (getPair!414 lt!1842335 key!4653))))

(declare-fun lt!1842332 () tuple2!53636)

(declare-fun lt!1842329 () Unit!123009)

(declare-fun lambda!205187 () Int)

(declare-fun forallContained!3358 (List!52420 Int tuple2!53636) Unit!123009)

(assert (=> b!4682533 (= lt!1842329 (forallContained!3358 (toList!5509 lm!2023) lambda!205187 lt!1842332))))

(declare-fun contains!15424 (List!52420 tuple2!53636) Bool)

(assert (=> b!4682533 (contains!15424 (toList!5509 lm!2023) lt!1842332)))

(declare-fun lt!1842336 () (_ BitVec 64))

(assert (=> b!4682533 (= lt!1842332 (tuple2!53637 lt!1842336 lt!1842335))))

(declare-fun lt!1842330 () Unit!123009)

(declare-fun lemmaGetValueImpliesTupleContained!219 (ListLongMap!4039 (_ BitVec 64) List!52419) Unit!123009)

(assert (=> b!4682533 (= lt!1842330 (lemmaGetValueImpliesTupleContained!219 lm!2023 lt!1842336 lt!1842335))))

(declare-fun apply!12293 (ListLongMap!4039 (_ BitVec 64)) List!52419)

(assert (=> b!4682533 (= lt!1842335 (apply!12293 lm!2023 lt!1842336))))

(declare-fun contains!15425 (ListLongMap!4039 (_ BitVec 64)) Bool)

(assert (=> b!4682533 (contains!15425 lm!2023 lt!1842336)))

(declare-fun lt!1842334 () Unit!123009)

(declare-fun lemmaInGenMapThenLongMapContainsHash!620 (ListLongMap!4039 K!13675 Hashable!6179) Unit!123009)

(assert (=> b!4682533 (= lt!1842334 (lemmaInGenMapThenLongMapContainsHash!620 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1842327 () Unit!123009)

(declare-fun lemmaInGenMapThenGetPairDefined!210 (ListLongMap!4039 K!13675 Hashable!6179) Unit!123009)

(assert (=> b!4682533 (= lt!1842327 (lemmaInGenMapThenGetPairDefined!210 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4682534 () Bool)

(declare-fun res!1973708 () Bool)

(declare-fun e!2921411 () Bool)

(assert (=> b!4682534 (=> (not res!1973708) (not e!2921411))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1636 (List!52419 (_ BitVec 64) Hashable!6179) Bool)

(assert (=> b!4682534 (= res!1973708 (allKeysSameHash!1636 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4682535 () Bool)

(declare-fun e!2921409 () Bool)

(declare-fun tp!1345260 () Bool)

(assert (=> b!4682535 (= e!2921409 tp!1345260)))

(declare-fun b!4682536 () Bool)

(declare-fun res!1973709 () Bool)

(assert (=> b!4682536 (=> (not res!1973709) (not e!2921411))))

(declare-fun noDuplicateKeys!1810 (List!52419) Bool)

(assert (=> b!4682536 (= res!1973709 (noDuplicateKeys!1810 oldBucket!34))))

(declare-fun res!1973714 () Bool)

(assert (=> start!472940 (=> (not res!1973714) (not e!2921411))))

(declare-fun forall!11251 (List!52420 Int) Bool)

(assert (=> start!472940 (= res!1973714 (forall!11251 (toList!5509 lm!2023) lambda!205187))))

(assert (=> start!472940 e!2921411))

(declare-fun inv!67549 (ListLongMap!4039) Bool)

(assert (=> start!472940 (and (inv!67549 lm!2023) e!2921409)))

(assert (=> start!472940 tp_is_empty!30533))

(assert (=> start!472940 e!2921415))

(assert (=> start!472940 true))

(assert (=> start!472940 e!2921413))

(declare-fun b!4682537 () Bool)

(declare-fun res!1973712 () Bool)

(assert (=> b!4682537 (=> (not res!1973712) (not e!2921412))))

(declare-fun newBucket!218 () List!52419)

(assert (=> b!4682537 (= res!1973712 (allKeysSameHash!1636 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4682538 () Bool)

(declare-fun e!2921414 () Bool)

(declare-datatypes ((ListMap!4873 0))(
  ( (ListMap!4874 (toList!5510 List!52419)) )
))
(declare-fun lt!1842333 () ListMap!4873)

(declare-fun addToMapMapFromBucket!1242 (List!52419 ListMap!4873) ListMap!4873)

(declare-fun extractMap!1836 (List!52420) ListMap!4873)

(assert (=> b!4682538 (= e!2921414 (= lt!1842333 (addToMapMapFromBucket!1242 (_2!30112 (h!58515 (toList!5509 lm!2023))) (extractMap!1836 (t!359582 (toList!5509 lm!2023))))))))

(declare-fun b!4682539 () Bool)

(declare-fun res!1973706 () Bool)

(assert (=> b!4682539 (=> (not res!1973706) (not e!2921411))))

(assert (=> b!4682539 (= res!1973706 (noDuplicateKeys!1810 newBucket!218))))

(declare-fun b!4682540 () Bool)

(declare-fun e!2921410 () Bool)

(assert (=> b!4682540 (= e!2921410 e!2921412)))

(declare-fun res!1973715 () Bool)

(assert (=> b!4682540 (=> (not res!1973715) (not e!2921412))))

(assert (=> b!4682540 (= res!1973715 (= lt!1842336 hash!405))))

(declare-fun hash!3996 (Hashable!6179 K!13675) (_ BitVec 64))

(assert (=> b!4682540 (= lt!1842336 (hash!3996 hashF!1323 key!4653))))

(declare-fun b!4682541 () Bool)

(declare-fun res!1973707 () Bool)

(assert (=> b!4682541 (=> (not res!1973707) (not e!2921412))))

(declare-fun allKeysSameHashInMap!1724 (ListLongMap!4039 Hashable!6179) Bool)

(assert (=> b!4682541 (= res!1973707 (allKeysSameHashInMap!1724 lm!2023 hashF!1323))))

(declare-fun b!4682542 () Bool)

(assert (=> b!4682542 (= e!2921411 e!2921410)))

(declare-fun res!1973704 () Bool)

(assert (=> b!4682542 (=> (not res!1973704) (not e!2921410))))

(declare-fun contains!15426 (ListMap!4873 K!13675) Bool)

(assert (=> b!4682542 (= res!1973704 (contains!15426 lt!1842333 key!4653))))

(assert (=> b!4682542 (= lt!1842333 (extractMap!1836 (toList!5509 lm!2023)))))

(declare-fun b!4682543 () Bool)

(declare-fun res!1973710 () Bool)

(assert (=> b!4682543 (=> (not res!1973710) (not e!2921412))))

(declare-fun head!9904 (List!52420) tuple2!53636)

(assert (=> b!4682543 (= res!1973710 (= (head!9904 (toList!5509 lm!2023)) (tuple2!53637 hash!405 oldBucket!34)))))

(declare-fun b!4682544 () Bool)

(declare-fun res!1973705 () Bool)

(assert (=> b!4682544 (=> (not res!1973705) (not e!2921411))))

(declare-fun removePairForKey!1405 (List!52419 K!13675) List!52419)

(assert (=> b!4682544 (= res!1973705 (= (removePairForKey!1405 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682545 () Bool)

(assert (=> b!4682545 (= e!2921412 (not e!2921416))))

(declare-fun res!1973703 () Bool)

(assert (=> b!4682545 (=> res!1973703 e!2921416)))

(assert (=> b!4682545 (= res!1973703 (or (and ((_ is Cons!52295) oldBucket!34) (= (_1!30111 (h!58514 oldBucket!34)) key!4653)) (not ((_ is Cons!52295) oldBucket!34)) (= (_1!30111 (h!58514 oldBucket!34)) key!4653)))))

(assert (=> b!4682545 e!2921414))

(declare-fun res!1973713 () Bool)

(assert (=> b!4682545 (=> (not res!1973713) (not e!2921414))))

(declare-fun tail!8481 (ListLongMap!4039) ListLongMap!4039)

(assert (=> b!4682545 (= res!1973713 (= (t!359582 (toList!5509 lm!2023)) (toList!5509 (tail!8481 lm!2023))))))

(assert (= (and start!472940 res!1973714) b!4682536))

(assert (= (and b!4682536 res!1973709) b!4682539))

(assert (= (and b!4682539 res!1973706) b!4682544))

(assert (= (and b!4682544 res!1973705) b!4682534))

(assert (= (and b!4682534 res!1973708) b!4682542))

(assert (= (and b!4682542 res!1973704) b!4682540))

(assert (= (and b!4682540 res!1973715) b!4682537))

(assert (= (and b!4682537 res!1973712) b!4682541))

(assert (= (and b!4682541 res!1973707) b!4682543))

(assert (= (and b!4682543 res!1973710) b!4682532))

(assert (= (and b!4682532 res!1973711) b!4682545))

(assert (= (and b!4682545 res!1973713) b!4682538))

(assert (= (and b!4682545 (not res!1973703)) b!4682533))

(assert (= start!472940 b!4682535))

(assert (= (and start!472940 ((_ is Cons!52295) oldBucket!34)) b!4682531))

(assert (= (and start!472940 ((_ is Cons!52295) newBucket!218)) b!4682530))

(declare-fun m!5580979 () Bool)

(assert (=> b!4682540 m!5580979))

(declare-fun m!5580981 () Bool)

(assert (=> b!4682541 m!5580981))

(declare-fun m!5580983 () Bool)

(assert (=> b!4682536 m!5580983))

(declare-fun m!5580985 () Bool)

(assert (=> b!4682542 m!5580985))

(declare-fun m!5580987 () Bool)

(assert (=> b!4682542 m!5580987))

(declare-fun m!5580989 () Bool)

(assert (=> start!472940 m!5580989))

(declare-fun m!5580991 () Bool)

(assert (=> start!472940 m!5580991))

(declare-fun m!5580993 () Bool)

(assert (=> b!4682543 m!5580993))

(declare-fun m!5580995 () Bool)

(assert (=> b!4682533 m!5580995))

(declare-fun m!5580997 () Bool)

(assert (=> b!4682533 m!5580997))

(declare-fun m!5580999 () Bool)

(assert (=> b!4682533 m!5580999))

(declare-fun m!5581001 () Bool)

(assert (=> b!4682533 m!5581001))

(assert (=> b!4682533 m!5580999))

(declare-fun m!5581003 () Bool)

(assert (=> b!4682533 m!5581003))

(declare-fun m!5581005 () Bool)

(assert (=> b!4682533 m!5581005))

(declare-fun m!5581007 () Bool)

(assert (=> b!4682533 m!5581007))

(declare-fun m!5581009 () Bool)

(assert (=> b!4682533 m!5581009))

(declare-fun m!5581011 () Bool)

(assert (=> b!4682533 m!5581011))

(declare-fun m!5581013 () Bool)

(assert (=> b!4682533 m!5581013))

(declare-fun m!5581015 () Bool)

(assert (=> b!4682533 m!5581015))

(declare-fun m!5581017 () Bool)

(assert (=> b!4682533 m!5581017))

(declare-fun m!5581019 () Bool)

(assert (=> b!4682538 m!5581019))

(assert (=> b!4682538 m!5581019))

(declare-fun m!5581021 () Bool)

(assert (=> b!4682538 m!5581021))

(declare-fun m!5581023 () Bool)

(assert (=> b!4682537 m!5581023))

(declare-fun m!5581025 () Bool)

(assert (=> b!4682539 m!5581025))

(declare-fun m!5581027 () Bool)

(assert (=> b!4682544 m!5581027))

(declare-fun m!5581029 () Bool)

(assert (=> b!4682534 m!5581029))

(declare-fun m!5581031 () Bool)

(assert (=> b!4682545 m!5581031))

(check-sat (not b!4682534) (not b!4682536) (not b!4682537) (not b!4682544) tp_is_empty!30535 (not b!4682541) (not b!4682530) (not b!4682542) (not b!4682531) (not b!4682535) (not b!4682539) tp_is_empty!30533 (not b!4682543) (not b!4682540) (not b!4682538) (not b!4682545) (not start!472940) (not b!4682533))
(check-sat)
