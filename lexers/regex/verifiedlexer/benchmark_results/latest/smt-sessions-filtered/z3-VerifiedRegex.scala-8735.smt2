; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466284 () Bool)

(assert start!466284)

(declare-fun b!4638602 () Bool)

(declare-fun e!2893622 () Bool)

(declare-fun e!2893619 () Bool)

(assert (=> b!4638602 (= e!2893622 e!2893619)))

(declare-fun res!1947595 () Bool)

(assert (=> b!4638602 (=> res!1947595 e!2893619)))

(declare-datatypes ((K!13080 0))(
  ( (K!13081 (val!18735 Int)) )
))
(declare-datatypes ((V!13326 0))(
  ( (V!13327 (val!18736 Int)) )
))
(declare-datatypes ((tuple2!52734 0))(
  ( (tuple2!52735 (_1!29661 K!13080) (_2!29661 V!13326)) )
))
(declare-datatypes ((List!51840 0))(
  ( (Nil!51716) (Cons!51716 (h!57816 tuple2!52734) (t!358920 List!51840)) )
))
(declare-fun lt!1801421 () List!51840)

(declare-fun newBucket!224 () List!51840)

(assert (=> b!4638602 (= res!1947595 (not (= lt!1801421 newBucket!224)))))

(declare-fun oldBucket!40 () List!51840)

(declare-fun tail!8199 (List!51840) List!51840)

(assert (=> b!4638602 (= lt!1801421 (tail!8199 oldBucket!40))))

(declare-fun b!4638603 () Bool)

(declare-fun res!1947606 () Bool)

(declare-fun e!2893621 () Bool)

(assert (=> b!4638603 (=> (not res!1947606) (not e!2893621))))

(declare-datatypes ((Hashable!5969 0))(
  ( (HashableExt!5968 (__x!31672 Int)) )
))
(declare-fun hashF!1389 () Hashable!5969)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun key!4968 () K!13080)

(declare-fun hash!3656 (Hashable!5969 K!13080) (_ BitVec 64))

(assert (=> b!4638603 (= res!1947606 (= (hash!3656 hashF!1389 key!4968) hash!414))))

(declare-fun b!4638604 () Bool)

(declare-fun res!1947600 () Bool)

(declare-fun e!2893617 () Bool)

(assert (=> b!4638604 (=> (not res!1947600) (not e!2893617))))

(declare-fun removePairForKey!1195 (List!51840 K!13080) List!51840)

(assert (=> b!4638604 (= res!1947600 (= (removePairForKey!1195 oldBucket!40 key!4968) newBucket!224))))

(declare-fun res!1947599 () Bool)

(assert (=> start!466284 (=> (not res!1947599) (not e!2893617))))

(declare-fun noDuplicateKeys!1572 (List!51840) Bool)

(assert (=> start!466284 (= res!1947599 (noDuplicateKeys!1572 oldBucket!40))))

(assert (=> start!466284 e!2893617))

(assert (=> start!466284 true))

(declare-fun e!2893623 () Bool)

(assert (=> start!466284 e!2893623))

(declare-fun tp_is_empty!29581 () Bool)

(assert (=> start!466284 tp_is_empty!29581))

(declare-fun e!2893615 () Bool)

(assert (=> start!466284 e!2893615))

(declare-fun b!4638605 () Bool)

(declare-fun tp_is_empty!29583 () Bool)

(declare-fun tp!1342702 () Bool)

(assert (=> b!4638605 (= e!2893615 (and tp_is_empty!29581 tp_is_empty!29583 tp!1342702))))

(declare-fun b!4638606 () Bool)

(declare-fun e!2893620 () Bool)

(declare-datatypes ((ListMap!4413 0))(
  ( (ListMap!4414 (toList!5089 List!51840)) )
))
(declare-fun lt!1801420 () ListMap!4413)

(assert (=> b!4638606 (= e!2893620 (= lt!1801420 (ListMap!4414 Nil!51716)))))

(declare-fun b!4638607 () Bool)

(declare-fun e!2893618 () Bool)

(declare-fun lt!1801419 () ListMap!4413)

(declare-fun contains!14831 (ListMap!4413 K!13080) Bool)

(assert (=> b!4638607 (= e!2893618 (not (contains!14831 lt!1801419 key!4968)))))

(declare-fun lt!1801426 () ListMap!4413)

(assert (=> b!4638607 (not (contains!14831 lt!1801426 key!4968))))

(declare-datatypes ((tuple2!52736 0))(
  ( (tuple2!52737 (_1!29662 (_ BitVec 64)) (_2!29662 List!51840)) )
))
(declare-datatypes ((List!51841 0))(
  ( (Nil!51717) (Cons!51717 (h!57817 tuple2!52736) (t!358921 List!51841)) )
))
(declare-fun lt!1801425 () List!51841)

(declare-datatypes ((Unit!115007 0))(
  ( (Unit!115008) )
))
(declare-fun lt!1801422 () Unit!115007)

(declare-datatypes ((ListLongMap!3659 0))(
  ( (ListLongMap!3660 (toList!5090 List!51841)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!364 (ListLongMap!3659 K!13080 Hashable!5969) Unit!115007)

(assert (=> b!4638607 (= lt!1801422 (lemmaNotInItsHashBucketThenNotInMap!364 (ListLongMap!3660 lt!1801425) key!4968 hashF!1389))))

(declare-fun tp!1342703 () Bool)

(declare-fun b!4638608 () Bool)

(assert (=> b!4638608 (= e!2893623 (and tp_is_empty!29581 tp_is_empty!29583 tp!1342703))))

(declare-fun b!4638609 () Bool)

(declare-fun res!1947603 () Bool)

(assert (=> b!4638609 (=> (not res!1947603) (not e!2893617))))

(assert (=> b!4638609 (= res!1947603 (noDuplicateKeys!1572 newBucket!224))))

(declare-fun b!4638610 () Bool)

(assert (=> b!4638610 (= e!2893621 (not e!2893622))))

(declare-fun res!1947594 () Bool)

(assert (=> b!4638610 (=> res!1947594 e!2893622)))

(get-info :version)

(assert (=> b!4638610 (= res!1947594 (or (not ((_ is Cons!51716) oldBucket!40)) (not (= (_1!29661 (h!57816 oldBucket!40)) key!4968))))))

(assert (=> b!4638610 e!2893620))

(declare-fun res!1947601 () Bool)

(assert (=> b!4638610 (=> (not res!1947601) (not e!2893620))))

(declare-fun lt!1801427 () ListMap!4413)

(declare-fun addToMapMapFromBucket!1031 (List!51840 ListMap!4413) ListMap!4413)

(assert (=> b!4638610 (= res!1947601 (= lt!1801427 (addToMapMapFromBucket!1031 oldBucket!40 lt!1801420)))))

(declare-fun extractMap!1628 (List!51841) ListMap!4413)

(assert (=> b!4638610 (= lt!1801420 (extractMap!1628 Nil!51717))))

(assert (=> b!4638610 true))

(declare-fun b!4638611 () Bool)

(declare-fun res!1947597 () Bool)

(assert (=> b!4638611 (=> res!1947597 e!2893618)))

(declare-fun containsKey!2592 (List!51840 K!13080) Bool)

(assert (=> b!4638611 (= res!1947597 (containsKey!2592 lt!1801421 key!4968))))

(declare-fun b!4638612 () Bool)

(assert (=> b!4638612 (= e!2893617 e!2893621)))

(declare-fun res!1947598 () Bool)

(assert (=> b!4638612 (=> (not res!1947598) (not e!2893621))))

(assert (=> b!4638612 (= res!1947598 (contains!14831 lt!1801427 key!4968))))

(assert (=> b!4638612 (= lt!1801427 (extractMap!1628 (Cons!51717 (tuple2!52737 hash!414 oldBucket!40) Nil!51717)))))

(declare-fun b!4638613 () Bool)

(declare-fun e!2893624 () Bool)

(assert (=> b!4638613 (= e!2893619 e!2893624)))

(declare-fun res!1947596 () Bool)

(assert (=> b!4638613 (=> res!1947596 e!2893624)))

(assert (=> b!4638613 (= res!1947596 (not (= lt!1801426 (extractMap!1628 (Cons!51717 (tuple2!52737 hash!414 newBucket!224) Nil!51717)))))))

(assert (=> b!4638613 (= lt!1801426 (extractMap!1628 lt!1801425))))

(assert (=> b!4638613 (= lt!1801425 (Cons!51717 (tuple2!52737 hash!414 lt!1801421) Nil!51717))))

(declare-fun b!4638614 () Bool)

(declare-fun res!1947605 () Bool)

(assert (=> b!4638614 (=> (not res!1947605) (not e!2893621))))

(declare-fun allKeysSameHash!1426 (List!51840 (_ BitVec 64) Hashable!5969) Bool)

(assert (=> b!4638614 (= res!1947605 (allKeysSameHash!1426 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4638615 () Bool)

(declare-fun res!1947604 () Bool)

(assert (=> b!4638615 (=> res!1947604 e!2893618)))

(assert (=> b!4638615 (= res!1947604 (not (= lt!1801419 lt!1801426)))))

(declare-fun b!4638616 () Bool)

(declare-fun e!2893616 () Bool)

(assert (=> b!4638616 (= e!2893616 e!2893618)))

(declare-fun res!1947602 () Bool)

(assert (=> b!4638616 (=> res!1947602 e!2893618)))

(declare-fun eq!873 (ListMap!4413 ListMap!4413) Bool)

(declare-fun +!1926 (ListMap!4413 tuple2!52734) ListMap!4413)

(assert (=> b!4638616 (= res!1947602 (not (eq!873 (+!1926 lt!1801419 (h!57816 oldBucket!40)) (addToMapMapFromBucket!1031 oldBucket!40 (ListMap!4414 Nil!51716)))))))

(declare-fun lt!1801424 () tuple2!52734)

(assert (=> b!4638616 (eq!873 (addToMapMapFromBucket!1031 (Cons!51716 lt!1801424 lt!1801421) (ListMap!4414 Nil!51716)) (+!1926 lt!1801419 lt!1801424))))

(declare-fun lt!1801423 () Unit!115007)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!124 (tuple2!52734 List!51840 ListMap!4413) Unit!115007)

(assert (=> b!4638616 (= lt!1801423 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!124 lt!1801424 lt!1801421 (ListMap!4414 Nil!51716)))))

(declare-fun head!9692 (List!51840) tuple2!52734)

(assert (=> b!4638616 (= lt!1801424 (head!9692 oldBucket!40))))

(declare-fun b!4638617 () Bool)

(assert (=> b!4638617 (= e!2893624 e!2893616)))

(declare-fun res!1947608 () Bool)

(assert (=> b!4638617 (=> res!1947608 e!2893616)))

(assert (=> b!4638617 (= res!1947608 (not (= lt!1801419 (addToMapMapFromBucket!1031 newBucket!224 (ListMap!4414 Nil!51716)))))))

(assert (=> b!4638617 (= lt!1801419 (addToMapMapFromBucket!1031 lt!1801421 (ListMap!4414 Nil!51716)))))

(declare-fun b!4638618 () Bool)

(declare-fun res!1947607 () Bool)

(assert (=> b!4638618 (=> (not res!1947607) (not e!2893617))))

(assert (=> b!4638618 (= res!1947607 (allKeysSameHash!1426 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!466284 res!1947599) b!4638609))

(assert (= (and b!4638609 res!1947603) b!4638604))

(assert (= (and b!4638604 res!1947600) b!4638618))

(assert (= (and b!4638618 res!1947607) b!4638612))

(assert (= (and b!4638612 res!1947598) b!4638603))

(assert (= (and b!4638603 res!1947606) b!4638614))

(assert (= (and b!4638614 res!1947605) b!4638610))

(assert (= (and b!4638610 res!1947601) b!4638606))

(assert (= (and b!4638610 (not res!1947594)) b!4638602))

(assert (= (and b!4638602 (not res!1947595)) b!4638613))

(assert (= (and b!4638613 (not res!1947596)) b!4638617))

(assert (= (and b!4638617 (not res!1947608)) b!4638616))

(assert (= (and b!4638616 (not res!1947602)) b!4638611))

(assert (= (and b!4638611 (not res!1947597)) b!4638615))

(assert (= (and b!4638615 (not res!1947604)) b!4638607))

(assert (= (and start!466284 ((_ is Cons!51716) oldBucket!40)) b!4638608))

(assert (= (and start!466284 ((_ is Cons!51716) newBucket!224)) b!4638605))

(declare-fun m!5497431 () Bool)

(assert (=> b!4638613 m!5497431))

(declare-fun m!5497433 () Bool)

(assert (=> b!4638613 m!5497433))

(declare-fun m!5497435 () Bool)

(assert (=> b!4638611 m!5497435))

(declare-fun m!5497437 () Bool)

(assert (=> b!4638602 m!5497437))

(declare-fun m!5497439 () Bool)

(assert (=> b!4638614 m!5497439))

(declare-fun m!5497441 () Bool)

(assert (=> b!4638616 m!5497441))

(declare-fun m!5497443 () Bool)

(assert (=> b!4638616 m!5497443))

(declare-fun m!5497445 () Bool)

(assert (=> b!4638616 m!5497445))

(declare-fun m!5497447 () Bool)

(assert (=> b!4638616 m!5497447))

(assert (=> b!4638616 m!5497447))

(assert (=> b!4638616 m!5497443))

(declare-fun m!5497449 () Bool)

(assert (=> b!4638616 m!5497449))

(declare-fun m!5497451 () Bool)

(assert (=> b!4638616 m!5497451))

(declare-fun m!5497453 () Bool)

(assert (=> b!4638616 m!5497453))

(assert (=> b!4638616 m!5497441))

(declare-fun m!5497455 () Bool)

(assert (=> b!4638616 m!5497455))

(assert (=> b!4638616 m!5497453))

(declare-fun m!5497457 () Bool)

(assert (=> b!4638607 m!5497457))

(declare-fun m!5497459 () Bool)

(assert (=> b!4638607 m!5497459))

(declare-fun m!5497461 () Bool)

(assert (=> b!4638607 m!5497461))

(declare-fun m!5497463 () Bool)

(assert (=> b!4638604 m!5497463))

(declare-fun m!5497465 () Bool)

(assert (=> b!4638609 m!5497465))

(declare-fun m!5497467 () Bool)

(assert (=> b!4638612 m!5497467))

(declare-fun m!5497469 () Bool)

(assert (=> b!4638612 m!5497469))

(declare-fun m!5497471 () Bool)

(assert (=> b!4638617 m!5497471))

(declare-fun m!5497473 () Bool)

(assert (=> b!4638617 m!5497473))

(declare-fun m!5497475 () Bool)

(assert (=> b!4638603 m!5497475))

(declare-fun m!5497477 () Bool)

(assert (=> b!4638618 m!5497477))

(declare-fun m!5497479 () Bool)

(assert (=> start!466284 m!5497479))

(declare-fun m!5497481 () Bool)

(assert (=> b!4638610 m!5497481))

(declare-fun m!5497483 () Bool)

(assert (=> b!4638610 m!5497483))

(check-sat (not b!4638607) (not b!4638610) (not b!4638617) (not b!4638616) (not b!4638604) (not b!4638612) (not b!4638602) (not b!4638605) (not b!4638603) (not start!466284) (not b!4638611) (not b!4638613) (not b!4638618) (not b!4638609) tp_is_empty!29583 (not b!4638608) (not b!4638614) tp_is_empty!29581)
(check-sat)
