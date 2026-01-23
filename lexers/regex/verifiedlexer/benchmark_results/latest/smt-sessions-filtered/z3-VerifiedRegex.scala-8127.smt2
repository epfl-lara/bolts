; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418368 () Bool)

(assert start!418368)

(declare-fun b!4336725 () Bool)

(declare-fun e!2698470 () Bool)

(declare-fun e!2698467 () Bool)

(assert (=> b!4336725 (= e!2698470 e!2698467)))

(declare-fun res!1778873 () Bool)

(assert (=> b!4336725 (=> res!1778873 e!2698467)))

(declare-datatypes ((V!10286 0))(
  ( (V!10287 (val!16303 Int)) )
))
(declare-datatypes ((K!10040 0))(
  ( (K!10041 (val!16304 Int)) )
))
(declare-datatypes ((tuple2!47926 0))(
  ( (tuple2!47927 (_1!27257 K!10040) (_2!27257 V!10286)) )
))
(declare-datatypes ((List!48809 0))(
  ( (Nil!48685) (Cons!48685 (h!54190 tuple2!47926) (t!355725 List!48809)) )
))
(declare-datatypes ((tuple2!47928 0))(
  ( (tuple2!47929 (_1!27258 (_ BitVec 64)) (_2!27258 List!48809)) )
))
(declare-datatypes ((List!48810 0))(
  ( (Nil!48686) (Cons!48686 (h!54191 tuple2!47928) (t!355726 List!48810)) )
))
(declare-datatypes ((ListLongMap!1411 0))(
  ( (ListLongMap!1412 (toList!2761 List!48810)) )
))
(declare-fun lm!1707 () ListLongMap!1411)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4336725 (= res!1778873 (or (not ((_ is Cons!48686) (toList!2761 lm!1707))) (not (= (_1!27258 (h!54191 (toList!2761 lm!1707))) hash!377))))))

(declare-fun e!2698471 () Bool)

(assert (=> b!4336725 e!2698471))

(declare-fun res!1778870 () Bool)

(assert (=> b!4336725 (=> (not res!1778870) (not e!2698471))))

(declare-fun lt!1550430 () ListLongMap!1411)

(declare-fun lambda!136119 () Int)

(declare-fun forall!8961 (List!48810 Int) Bool)

(assert (=> b!4336725 (= res!1778870 (forall!8961 (toList!2761 lt!1550430) lambda!136119))))

(declare-fun lt!1550436 () tuple2!47928)

(declare-fun +!449 (ListLongMap!1411 tuple2!47928) ListLongMap!1411)

(assert (=> b!4336725 (= lt!1550430 (+!449 lm!1707 lt!1550436))))

(declare-fun newBucket!200 () List!48809)

(assert (=> b!4336725 (= lt!1550436 (tuple2!47929 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68763 0))(
  ( (Unit!68764) )
))
(declare-fun lt!1550427 () Unit!68763)

(declare-fun addValidProp!43 (ListLongMap!1411 Int (_ BitVec 64) List!48809) Unit!68763)

(assert (=> b!4336725 (= lt!1550427 (addValidProp!43 lm!1707 lambda!136119 hash!377 newBucket!200))))

(assert (=> b!4336725 (forall!8961 (toList!2761 lm!1707) lambda!136119)))

(declare-fun b!4336726 () Bool)

(declare-fun e!2698468 () Bool)

(assert (=> b!4336726 (= e!2698468 (not e!2698470))))

(declare-fun res!1778871 () Bool)

(assert (=> b!4336726 (=> res!1778871 e!2698470)))

(declare-fun lt!1550432 () List!48809)

(assert (=> b!4336726 (= res!1778871 (not (= newBucket!200 lt!1550432)))))

(declare-fun lt!1550431 () tuple2!47926)

(declare-fun lt!1550435 () List!48809)

(assert (=> b!4336726 (= lt!1550432 (Cons!48685 lt!1550431 lt!1550435))))

(declare-fun lt!1550434 () List!48809)

(declare-fun key!3918 () K!10040)

(declare-fun removePairForKey!359 (List!48809 K!10040) List!48809)

(assert (=> b!4336726 (= lt!1550435 (removePairForKey!359 lt!1550434 key!3918))))

(declare-fun newValue!99 () V!10286)

(assert (=> b!4336726 (= lt!1550431 (tuple2!47927 key!3918 newValue!99))))

(declare-fun lt!1550437 () Unit!68763)

(declare-fun lt!1550429 () tuple2!47928)

(declare-fun forallContained!1611 (List!48810 Int tuple2!47928) Unit!68763)

(assert (=> b!4336726 (= lt!1550437 (forallContained!1611 (toList!2761 lm!1707) lambda!136119 lt!1550429))))

(declare-fun contains!10752 (List!48810 tuple2!47928) Bool)

(assert (=> b!4336726 (contains!10752 (toList!2761 lm!1707) lt!1550429)))

(assert (=> b!4336726 (= lt!1550429 (tuple2!47929 hash!377 lt!1550434))))

(declare-fun lt!1550426 () Unit!68763)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!236 (List!48810 (_ BitVec 64) List!48809) Unit!68763)

(assert (=> b!4336726 (= lt!1550426 (lemmaGetValueByKeyImpliesContainsTuple!236 (toList!2761 lm!1707) hash!377 lt!1550434))))

(declare-fun apply!11241 (ListLongMap!1411 (_ BitVec 64)) List!48809)

(assert (=> b!4336726 (= lt!1550434 (apply!11241 lm!1707 hash!377))))

(declare-fun b!4336727 () Bool)

(declare-fun res!1778865 () Bool)

(assert (=> b!4336727 (=> (not res!1778865) (not e!2698468))))

(declare-datatypes ((Hashable!4781 0))(
  ( (HashableExt!4780 (__x!30484 Int)) )
))
(declare-fun hashF!1247 () Hashable!4781)

(declare-fun hash!1340 (Hashable!4781 K!10040) (_ BitVec 64))

(assert (=> b!4336727 (= res!1778865 (= (hash!1340 hashF!1247 key!3918) hash!377))))

(declare-fun b!4336728 () Bool)

(declare-fun noDuplicateKeys!389 (List!48809) Bool)

(assert (=> b!4336728 (= e!2698467 (noDuplicateKeys!389 lt!1550432))))

(declare-datatypes ((ListMap!2005 0))(
  ( (ListMap!2006 (toList!2762 List!48809)) )
))
(declare-fun lt!1550428 () ListMap!2005)

(declare-fun lt!1550425 () ListMap!2005)

(declare-fun eq!179 (ListMap!2005 ListMap!2005) Bool)

(declare-fun +!450 (ListMap!2005 tuple2!47926) ListMap!2005)

(declare-fun addToMapMapFromBucket!97 (List!48809 ListMap!2005) ListMap!2005)

(assert (=> b!4336728 (eq!179 lt!1550425 (+!450 (addToMapMapFromBucket!97 lt!1550435 lt!1550428) lt!1550431))))

(declare-fun lt!1550424 () Unit!68763)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!8 (ListMap!2005 K!10040 V!10286 List!48809) Unit!68763)

(assert (=> b!4336728 (= lt!1550424 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!8 lt!1550428 key!3918 newValue!99 lt!1550435))))

(declare-fun lt!1550438 () ListMap!2005)

(assert (=> b!4336728 (= lt!1550438 lt!1550425)))

(assert (=> b!4336728 (= lt!1550425 (addToMapMapFromBucket!97 lt!1550435 (+!450 lt!1550428 lt!1550431)))))

(declare-fun lt!1550433 () ListMap!2005)

(assert (=> b!4336728 (= lt!1550433 lt!1550438)))

(assert (=> b!4336728 (= lt!1550438 (addToMapMapFromBucket!97 lt!1550432 lt!1550428))))

(assert (=> b!4336728 (= lt!1550433 (addToMapMapFromBucket!97 newBucket!200 lt!1550428))))

(declare-fun extractMap!448 (List!48810) ListMap!2005)

(assert (=> b!4336728 (= lt!1550433 (extractMap!448 (toList!2761 lt!1550430)))))

(assert (=> b!4336728 (= lt!1550428 (extractMap!448 (t!355726 (toList!2761 lm!1707))))))

(declare-fun b!4336729 () Bool)

(declare-fun res!1778868 () Bool)

(assert (=> b!4336729 (=> res!1778868 e!2698470)))

(assert (=> b!4336729 (= res!1778868 (not (noDuplicateKeys!389 newBucket!200)))))

(declare-fun b!4336730 () Bool)

(declare-fun res!1778874 () Bool)

(assert (=> b!4336730 (=> (not res!1778874) (not e!2698468))))

(declare-fun contains!10753 (ListMap!2005 K!10040) Bool)

(assert (=> b!4336730 (= res!1778874 (contains!10753 (extractMap!448 (toList!2761 lm!1707)) key!3918))))

(declare-fun b!4336731 () Bool)

(declare-fun res!1778866 () Bool)

(assert (=> b!4336731 (=> (not res!1778866) (not e!2698468))))

(declare-fun allKeysSameHash!347 (List!48809 (_ BitVec 64) Hashable!4781) Bool)

(assert (=> b!4336731 (= res!1778866 (allKeysSameHash!347 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4336732 () Bool)

(declare-fun res!1778872 () Bool)

(assert (=> b!4336732 (=> (not res!1778872) (not e!2698471))))

(assert (=> b!4336732 (= res!1778872 (forall!8961 (toList!2761 lt!1550430) lambda!136119))))

(declare-fun tp_is_empty!24793 () Bool)

(declare-fun b!4336724 () Bool)

(declare-fun tp!1329051 () Bool)

(declare-fun tp_is_empty!24795 () Bool)

(declare-fun e!2698472 () Bool)

(assert (=> b!4336724 (= e!2698472 (and tp_is_empty!24793 tp_is_empty!24795 tp!1329051))))

(declare-fun res!1778867 () Bool)

(assert (=> start!418368 (=> (not res!1778867) (not e!2698468))))

(assert (=> start!418368 (= res!1778867 (forall!8961 (toList!2761 lm!1707) lambda!136119))))

(assert (=> start!418368 e!2698468))

(assert (=> start!418368 e!2698472))

(assert (=> start!418368 true))

(declare-fun e!2698469 () Bool)

(declare-fun inv!64226 (ListLongMap!1411) Bool)

(assert (=> start!418368 (and (inv!64226 lm!1707) e!2698469)))

(assert (=> start!418368 tp_is_empty!24793))

(assert (=> start!418368 tp_is_empty!24795))

(declare-fun b!4336733 () Bool)

(declare-fun res!1778869 () Bool)

(assert (=> b!4336733 (=> (not res!1778869) (not e!2698468))))

(declare-fun contains!10754 (ListLongMap!1411 (_ BitVec 64)) Bool)

(assert (=> b!4336733 (= res!1778869 (contains!10754 lm!1707 hash!377))))

(declare-fun b!4336734 () Bool)

(assert (=> b!4336734 (= e!2698471 (or (not ((_ is Cons!48686) (toList!2761 lm!1707))) (not (= (_1!27258 (h!54191 (toList!2761 lm!1707))) hash!377)) (= lt!1550430 (ListLongMap!1412 (Cons!48686 lt!1550436 (t!355726 (toList!2761 lm!1707)))))))))

(declare-fun b!4336735 () Bool)

(declare-fun res!1778875 () Bool)

(assert (=> b!4336735 (=> (not res!1778875) (not e!2698468))))

(declare-fun allKeysSameHashInMap!493 (ListLongMap!1411 Hashable!4781) Bool)

(assert (=> b!4336735 (= res!1778875 (allKeysSameHashInMap!493 lm!1707 hashF!1247))))

(declare-fun b!4336736 () Bool)

(declare-fun tp!1329052 () Bool)

(assert (=> b!4336736 (= e!2698469 tp!1329052)))

(assert (= (and start!418368 res!1778867) b!4336735))

(assert (= (and b!4336735 res!1778875) b!4336727))

(assert (= (and b!4336727 res!1778865) b!4336731))

(assert (= (and b!4336731 res!1778866) b!4336730))

(assert (= (and b!4336730 res!1778874) b!4336733))

(assert (= (and b!4336733 res!1778869) b!4336726))

(assert (= (and b!4336726 (not res!1778871)) b!4336729))

(assert (= (and b!4336729 (not res!1778868)) b!4336725))

(assert (= (and b!4336725 res!1778870) b!4336732))

(assert (= (and b!4336732 res!1778872) b!4336734))

(assert (= (and b!4336725 (not res!1778873)) b!4336728))

(assert (= (and start!418368 ((_ is Cons!48685) newBucket!200)) b!4336724))

(assert (= start!418368 b!4336736))

(declare-fun m!4932443 () Bool)

(assert (=> b!4336728 m!4932443))

(declare-fun m!4932445 () Bool)

(assert (=> b!4336728 m!4932445))

(declare-fun m!4932447 () Bool)

(assert (=> b!4336728 m!4932447))

(declare-fun m!4932449 () Bool)

(assert (=> b!4336728 m!4932449))

(assert (=> b!4336728 m!4932445))

(declare-fun m!4932451 () Bool)

(assert (=> b!4336728 m!4932451))

(declare-fun m!4932453 () Bool)

(assert (=> b!4336728 m!4932453))

(declare-fun m!4932455 () Bool)

(assert (=> b!4336728 m!4932455))

(assert (=> b!4336728 m!4932447))

(declare-fun m!4932457 () Bool)

(assert (=> b!4336728 m!4932457))

(assert (=> b!4336728 m!4932443))

(declare-fun m!4932459 () Bool)

(assert (=> b!4336728 m!4932459))

(declare-fun m!4932461 () Bool)

(assert (=> b!4336728 m!4932461))

(declare-fun m!4932463 () Bool)

(assert (=> b!4336728 m!4932463))

(declare-fun m!4932465 () Bool)

(assert (=> b!4336729 m!4932465))

(declare-fun m!4932467 () Bool)

(assert (=> b!4336726 m!4932467))

(declare-fun m!4932469 () Bool)

(assert (=> b!4336726 m!4932469))

(declare-fun m!4932471 () Bool)

(assert (=> b!4336726 m!4932471))

(declare-fun m!4932473 () Bool)

(assert (=> b!4336726 m!4932473))

(declare-fun m!4932475 () Bool)

(assert (=> b!4336726 m!4932475))

(declare-fun m!4932477 () Bool)

(assert (=> b!4336725 m!4932477))

(declare-fun m!4932479 () Bool)

(assert (=> b!4336725 m!4932479))

(declare-fun m!4932481 () Bool)

(assert (=> b!4336725 m!4932481))

(declare-fun m!4932483 () Bool)

(assert (=> b!4336725 m!4932483))

(declare-fun m!4932485 () Bool)

(assert (=> b!4336735 m!4932485))

(declare-fun m!4932487 () Bool)

(assert (=> b!4336733 m!4932487))

(declare-fun m!4932489 () Bool)

(assert (=> b!4336727 m!4932489))

(declare-fun m!4932491 () Bool)

(assert (=> b!4336731 m!4932491))

(assert (=> b!4336732 m!4932477))

(assert (=> start!418368 m!4932483))

(declare-fun m!4932493 () Bool)

(assert (=> start!418368 m!4932493))

(declare-fun m!4932495 () Bool)

(assert (=> b!4336730 m!4932495))

(assert (=> b!4336730 m!4932495))

(declare-fun m!4932497 () Bool)

(assert (=> b!4336730 m!4932497))

(check-sat (not b!4336730) (not b!4336735) (not b!4336731) (not b!4336733) (not b!4336732) (not b!4336724) (not start!418368) (not b!4336725) (not b!4336728) (not b!4336726) tp_is_empty!24793 tp_is_empty!24795 (not b!4336736) (not b!4336727) (not b!4336729))
(check-sat)
