; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419712 () Bool)

(assert start!419712)

(declare-fun b!4347421 () Bool)

(declare-fun res!1785499 () Bool)

(declare-fun e!2705321 () Bool)

(assert (=> b!4347421 (=> res!1785499 e!2705321)))

(declare-datatypes ((V!10446 0))(
  ( (V!10447 (val!16431 Int)) )
))
(declare-datatypes ((K!10200 0))(
  ( (K!10201 (val!16432 Int)) )
))
(declare-datatypes ((tuple2!48182 0))(
  ( (tuple2!48183 (_1!27385 K!10200) (_2!27385 V!10446)) )
))
(declare-datatypes ((List!48959 0))(
  ( (Nil!48835) (Cons!48835 (h!54362 tuple2!48182) (t!355879 List!48959)) )
))
(declare-datatypes ((tuple2!48184 0))(
  ( (tuple2!48185 (_1!27386 (_ BitVec 64)) (_2!27386 List!48959)) )
))
(declare-datatypes ((List!48960 0))(
  ( (Nil!48836) (Cons!48836 (h!54363 tuple2!48184) (t!355880 List!48960)) )
))
(declare-datatypes ((ListLongMap!1539 0))(
  ( (ListLongMap!1540 (toList!2889 List!48960)) )
))
(declare-fun lm!1707 () ListLongMap!1539)

(declare-fun contains!10988 (ListLongMap!1539 (_ BitVec 64)) Bool)

(assert (=> b!4347421 (= res!1785499 (not (contains!10988 lm!1707 (_1!27386 (h!54363 (toList!2889 lm!1707))))))))

(declare-fun b!4347422 () Bool)

(assert (=> b!4347422 (= e!2705321 true)))

(declare-fun b!4347423 () Bool)

(declare-fun e!2705323 () Bool)

(declare-fun lt!1562288 () ListLongMap!1539)

(declare-fun lambda!138653 () Int)

(declare-fun forall!9049 (List!48960 Int) Bool)

(assert (=> b!4347423 (= e!2705323 (forall!9049 (toList!2889 lt!1562288) lambda!138653))))

(declare-fun b!4347424 () Bool)

(declare-fun e!2705322 () Bool)

(declare-fun tp!1329652 () Bool)

(assert (=> b!4347424 (= e!2705322 tp!1329652)))

(declare-fun b!4347425 () Bool)

(declare-fun res!1785504 () Bool)

(assert (=> b!4347425 (=> res!1785504 e!2705321)))

(assert (=> b!4347425 (= res!1785504 (not (forall!9049 (toList!2889 lm!1707) lambda!138653)))))

(declare-fun b!4347426 () Bool)

(declare-fun e!2705326 () Bool)

(assert (=> b!4347426 (= e!2705326 e!2705321)))

(declare-fun res!1785501 () Bool)

(assert (=> b!4347426 (=> res!1785501 e!2705321)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4347426 (= res!1785501 (or (and ((_ is Cons!48836) (toList!2889 lm!1707)) (= (_1!27386 (h!54363 (toList!2889 lm!1707))) hash!377)) (not ((_ is Cons!48836) (toList!2889 lm!1707))) (= (_1!27386 (h!54363 (toList!2889 lm!1707))) hash!377)))))

(assert (=> b!4347426 e!2705323))

(declare-fun res!1785495 () Bool)

(assert (=> b!4347426 (=> (not res!1785495) (not e!2705323))))

(assert (=> b!4347426 (= res!1785495 (forall!9049 (toList!2889 lt!1562288) lambda!138653))))

(declare-fun newBucket!200 () List!48959)

(declare-fun +!574 (ListLongMap!1539 tuple2!48184) ListLongMap!1539)

(assert (=> b!4347426 (= lt!1562288 (+!574 lm!1707 (tuple2!48185 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!70753 0))(
  ( (Unit!70754) )
))
(declare-fun lt!1562285 () Unit!70753)

(declare-fun addValidProp!107 (ListLongMap!1539 Int (_ BitVec 64) List!48959) Unit!70753)

(assert (=> b!4347426 (= lt!1562285 (addValidProp!107 lm!1707 lambda!138653 hash!377 newBucket!200))))

(assert (=> b!4347426 (forall!9049 (toList!2889 lm!1707) lambda!138653)))

(declare-fun tp_is_empty!25049 () Bool)

(declare-fun tp!1329651 () Bool)

(declare-fun b!4347427 () Bool)

(declare-fun e!2705325 () Bool)

(declare-fun tp_is_empty!25051 () Bool)

(assert (=> b!4347427 (= e!2705325 (and tp_is_empty!25049 tp_is_empty!25051 tp!1329651))))

(declare-fun b!4347428 () Bool)

(declare-fun res!1785494 () Bool)

(declare-fun e!2705324 () Bool)

(assert (=> b!4347428 (=> (not res!1785494) (not e!2705324))))

(assert (=> b!4347428 (= res!1785494 (contains!10988 lm!1707 hash!377))))

(declare-fun res!1785500 () Bool)

(assert (=> start!419712 (=> (not res!1785500) (not e!2705324))))

(assert (=> start!419712 (= res!1785500 (forall!9049 (toList!2889 lm!1707) lambda!138653))))

(assert (=> start!419712 e!2705324))

(assert (=> start!419712 e!2705325))

(assert (=> start!419712 true))

(declare-fun inv!64386 (ListLongMap!1539) Bool)

(assert (=> start!419712 (and (inv!64386 lm!1707) e!2705322)))

(assert (=> start!419712 tp_is_empty!25049))

(assert (=> start!419712 tp_is_empty!25051))

(declare-fun b!4347429 () Bool)

(declare-fun res!1785505 () Bool)

(assert (=> b!4347429 (=> (not res!1785505) (not e!2705324))))

(declare-fun key!3918 () K!10200)

(declare-datatypes ((ListMap!2133 0))(
  ( (ListMap!2134 (toList!2890 List!48959)) )
))
(declare-fun contains!10989 (ListMap!2133 K!10200) Bool)

(declare-fun extractMap!512 (List!48960) ListMap!2133)

(assert (=> b!4347429 (= res!1785505 (contains!10989 (extractMap!512 (toList!2889 lm!1707)) key!3918))))

(declare-fun b!4347430 () Bool)

(declare-fun res!1785498 () Bool)

(assert (=> b!4347430 (=> (not res!1785498) (not e!2705324))))

(declare-datatypes ((Hashable!4845 0))(
  ( (HashableExt!4844 (__x!30548 Int)) )
))
(declare-fun hashF!1247 () Hashable!4845)

(declare-fun hash!1440 (Hashable!4845 K!10200) (_ BitVec 64))

(assert (=> b!4347430 (= res!1785498 (= (hash!1440 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347431 () Bool)

(declare-fun res!1785497 () Bool)

(assert (=> b!4347431 (=> (not res!1785497) (not e!2705324))))

(declare-fun allKeysSameHashInMap!557 (ListLongMap!1539 Hashable!4845) Bool)

(assert (=> b!4347431 (= res!1785497 (allKeysSameHashInMap!557 lm!1707 hashF!1247))))

(declare-fun b!4347432 () Bool)

(assert (=> b!4347432 (= e!2705324 (not e!2705326))))

(declare-fun res!1785496 () Bool)

(assert (=> b!4347432 (=> res!1785496 e!2705326)))

(declare-fun lt!1562284 () List!48959)

(declare-fun newValue!99 () V!10446)

(declare-fun removePairForKey!423 (List!48959 K!10200) List!48959)

(assert (=> b!4347432 (= res!1785496 (not (= newBucket!200 (Cons!48835 (tuple2!48183 key!3918 newValue!99) (removePairForKey!423 lt!1562284 key!3918)))))))

(declare-fun lt!1562283 () Unit!70753)

(declare-fun lt!1562287 () tuple2!48184)

(declare-fun forallContained!1699 (List!48960 Int tuple2!48184) Unit!70753)

(assert (=> b!4347432 (= lt!1562283 (forallContained!1699 (toList!2889 lm!1707) lambda!138653 lt!1562287))))

(declare-fun contains!10990 (List!48960 tuple2!48184) Bool)

(assert (=> b!4347432 (contains!10990 (toList!2889 lm!1707) lt!1562287)))

(assert (=> b!4347432 (= lt!1562287 (tuple2!48185 hash!377 lt!1562284))))

(declare-fun lt!1562286 () Unit!70753)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!300 (List!48960 (_ BitVec 64) List!48959) Unit!70753)

(assert (=> b!4347432 (= lt!1562286 (lemmaGetValueByKeyImpliesContainsTuple!300 (toList!2889 lm!1707) hash!377 lt!1562284))))

(declare-fun apply!11305 (ListLongMap!1539 (_ BitVec 64)) List!48959)

(assert (=> b!4347432 (= lt!1562284 (apply!11305 lm!1707 hash!377))))

(declare-fun b!4347433 () Bool)

(declare-fun res!1785502 () Bool)

(assert (=> b!4347433 (=> (not res!1785502) (not e!2705324))))

(declare-fun allKeysSameHash!411 (List!48959 (_ BitVec 64) Hashable!4845) Bool)

(assert (=> b!4347433 (= res!1785502 (allKeysSameHash!411 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347434 () Bool)

(declare-fun res!1785503 () Bool)

(assert (=> b!4347434 (=> res!1785503 e!2705326)))

(declare-fun noDuplicateKeys!453 (List!48959) Bool)

(assert (=> b!4347434 (= res!1785503 (not (noDuplicateKeys!453 newBucket!200)))))

(assert (= (and start!419712 res!1785500) b!4347431))

(assert (= (and b!4347431 res!1785497) b!4347430))

(assert (= (and b!4347430 res!1785498) b!4347433))

(assert (= (and b!4347433 res!1785502) b!4347429))

(assert (= (and b!4347429 res!1785505) b!4347428))

(assert (= (and b!4347428 res!1785494) b!4347432))

(assert (= (and b!4347432 (not res!1785496)) b!4347434))

(assert (= (and b!4347434 (not res!1785503)) b!4347426))

(assert (= (and b!4347426 res!1785495) b!4347423))

(assert (= (and b!4347426 (not res!1785501)) b!4347425))

(assert (= (and b!4347425 (not res!1785504)) b!4347421))

(assert (= (and b!4347421 (not res!1785499)) b!4347422))

(assert (= (and start!419712 ((_ is Cons!48835) newBucket!200)) b!4347427))

(assert (= start!419712 b!4347424))

(declare-fun m!4956479 () Bool)

(assert (=> b!4347434 m!4956479))

(declare-fun m!4956481 () Bool)

(assert (=> b!4347432 m!4956481))

(declare-fun m!4956483 () Bool)

(assert (=> b!4347432 m!4956483))

(declare-fun m!4956485 () Bool)

(assert (=> b!4347432 m!4956485))

(declare-fun m!4956487 () Bool)

(assert (=> b!4347432 m!4956487))

(declare-fun m!4956489 () Bool)

(assert (=> b!4347432 m!4956489))

(declare-fun m!4956491 () Bool)

(assert (=> b!4347426 m!4956491))

(declare-fun m!4956493 () Bool)

(assert (=> b!4347426 m!4956493))

(declare-fun m!4956495 () Bool)

(assert (=> b!4347426 m!4956495))

(declare-fun m!4956497 () Bool)

(assert (=> b!4347426 m!4956497))

(assert (=> b!4347423 m!4956491))

(assert (=> b!4347425 m!4956497))

(declare-fun m!4956499 () Bool)

(assert (=> b!4347431 m!4956499))

(assert (=> start!419712 m!4956497))

(declare-fun m!4956501 () Bool)

(assert (=> start!419712 m!4956501))

(declare-fun m!4956503 () Bool)

(assert (=> b!4347421 m!4956503))

(declare-fun m!4956505 () Bool)

(assert (=> b!4347430 m!4956505))

(declare-fun m!4956507 () Bool)

(assert (=> b!4347428 m!4956507))

(declare-fun m!4956509 () Bool)

(assert (=> b!4347429 m!4956509))

(assert (=> b!4347429 m!4956509))

(declare-fun m!4956511 () Bool)

(assert (=> b!4347429 m!4956511))

(declare-fun m!4956513 () Bool)

(assert (=> b!4347433 m!4956513))

(check-sat (not b!4347431) (not b!4347421) (not b!4347425) tp_is_empty!25049 (not b!4347423) (not b!4347433) (not b!4347430) (not start!419712) (not b!4347434) (not b!4347429) (not b!4347427) (not b!4347426) (not b!4347428) (not b!4347432) (not b!4347424) tp_is_empty!25051)
(check-sat)
