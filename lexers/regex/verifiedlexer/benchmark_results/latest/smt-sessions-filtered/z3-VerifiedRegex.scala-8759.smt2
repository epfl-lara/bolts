; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467520 () Bool)

(assert start!467520)

(declare-fun b!4645409 () Bool)

(declare-fun res!1951689 () Bool)

(declare-fun e!2897866 () Bool)

(assert (=> b!4645409 (=> (not res!1951689) (not e!2897866))))

(declare-datatypes ((Hashable!6017 0))(
  ( (HashableExt!6016 (__x!31720 Int)) )
))
(declare-fun hashF!1389 () Hashable!6017)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13200 0))(
  ( (K!13201 (val!18831 Int)) )
))
(declare-datatypes ((V!13446 0))(
  ( (V!13447 (val!18832 Int)) )
))
(declare-datatypes ((tuple2!52926 0))(
  ( (tuple2!52927 (_1!29757 K!13200) (_2!29757 V!13446)) )
))
(declare-datatypes ((List!51964 0))(
  ( (Nil!51840) (Cons!51840 (h!57968 tuple2!52926) (t!359060 List!51964)) )
))
(declare-fun newBucket!224 () List!51964)

(declare-fun allKeysSameHash!1474 (List!51964 (_ BitVec 64) Hashable!6017) Bool)

(assert (=> b!4645409 (= res!1951689 (allKeysSameHash!1474 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4645410 () Bool)

(declare-fun res!1951696 () Bool)

(assert (=> b!4645410 (=> (not res!1951696) (not e!2897866))))

(declare-fun key!4968 () K!13200)

(declare-fun hash!3741 (Hashable!6017 K!13200) (_ BitVec 64))

(assert (=> b!4645410 (= res!1951696 (= (hash!3741 hashF!1389 key!4968) hash!414))))

(declare-fun b!4645411 () Bool)

(declare-fun res!1951694 () Bool)

(declare-fun e!2897860 () Bool)

(assert (=> b!4645411 (=> (not res!1951694) (not e!2897860))))

(declare-fun oldBucket!40 () List!51964)

(assert (=> b!4645411 (= res!1951694 (allKeysSameHash!1474 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4645412 () Bool)

(declare-fun e!2897861 () Bool)

(assert (=> b!4645412 (= e!2897866 (not e!2897861))))

(declare-fun res!1951699 () Bool)

(assert (=> b!4645412 (=> res!1951699 e!2897861)))

(get-info :version)

(assert (=> b!4645412 (= res!1951699 (or (not ((_ is Cons!51840) oldBucket!40)) (not (= (_1!29757 (h!57968 oldBucket!40)) key!4968))))))

(declare-fun e!2897863 () Bool)

(assert (=> b!4645412 e!2897863))

(declare-fun res!1951693 () Bool)

(assert (=> b!4645412 (=> (not res!1951693) (not e!2897863))))

(declare-datatypes ((ListMap!4509 0))(
  ( (ListMap!4510 (toList!5176 List!51964)) )
))
(declare-fun lt!1809748 () ListMap!4509)

(declare-fun lt!1809747 () ListMap!4509)

(declare-fun addToMapMapFromBucket!1077 (List!51964 ListMap!4509) ListMap!4509)

(assert (=> b!4645412 (= res!1951693 (= lt!1809748 (addToMapMapFromBucket!1077 oldBucket!40 lt!1809747)))))

(declare-datatypes ((tuple2!52928 0))(
  ( (tuple2!52929 (_1!29758 (_ BitVec 64)) (_2!29758 List!51964)) )
))
(declare-datatypes ((List!51965 0))(
  ( (Nil!51841) (Cons!51841 (h!57969 tuple2!52928) (t!359061 List!51965)) )
))
(declare-fun extractMap!1676 (List!51965) ListMap!4509)

(assert (=> b!4645412 (= lt!1809747 (extractMap!1676 Nil!51841))))

(assert (=> b!4645412 true))

(declare-fun b!4645413 () Bool)

(declare-fun res!1951690 () Bool)

(declare-fun e!2897862 () Bool)

(assert (=> b!4645413 (=> res!1951690 e!2897862)))

(declare-fun lt!1809749 () List!51964)

(assert (=> b!4645413 (= res!1951690 (not (= (addToMapMapFromBucket!1077 lt!1809749 (ListMap!4510 Nil!51840)) (addToMapMapFromBucket!1077 newBucket!224 (ListMap!4510 Nil!51840)))))))

(declare-fun b!4645415 () Bool)

(assert (=> b!4645415 (= e!2897863 (= lt!1809747 (ListMap!4510 Nil!51840)))))

(declare-fun b!4645416 () Bool)

(declare-fun res!1951698 () Bool)

(assert (=> b!4645416 (=> (not res!1951698) (not e!2897860))))

(declare-fun noDuplicateKeys!1620 (List!51964) Bool)

(assert (=> b!4645416 (= res!1951698 (noDuplicateKeys!1620 newBucket!224))))

(declare-fun tp_is_empty!29773 () Bool)

(declare-fun tp_is_empty!29775 () Bool)

(declare-fun tp!1343103 () Bool)

(declare-fun b!4645417 () Bool)

(declare-fun e!2897864 () Bool)

(assert (=> b!4645417 (= e!2897864 (and tp_is_empty!29773 tp_is_empty!29775 tp!1343103))))

(declare-fun res!1951700 () Bool)

(assert (=> start!467520 (=> (not res!1951700) (not e!2897860))))

(assert (=> start!467520 (= res!1951700 (noDuplicateKeys!1620 oldBucket!40))))

(assert (=> start!467520 e!2897860))

(assert (=> start!467520 true))

(declare-fun e!2897865 () Bool)

(assert (=> start!467520 e!2897865))

(assert (=> start!467520 tp_is_empty!29773))

(assert (=> start!467520 e!2897864))

(declare-fun tp!1343102 () Bool)

(declare-fun b!4645414 () Bool)

(assert (=> b!4645414 (= e!2897865 (and tp_is_empty!29773 tp_is_empty!29775 tp!1343102))))

(declare-fun b!4645418 () Bool)

(declare-fun res!1951697 () Bool)

(assert (=> b!4645418 (=> res!1951697 e!2897862)))

(assert (=> b!4645418 (= res!1951697 (not (= (extractMap!1676 (Cons!51841 (tuple2!52929 hash!414 lt!1809749) Nil!51841)) (extractMap!1676 (Cons!51841 (tuple2!52929 hash!414 newBucket!224) Nil!51841)))))))

(declare-fun b!4645419 () Bool)

(declare-fun res!1951692 () Bool)

(assert (=> b!4645419 (=> (not res!1951692) (not e!2897860))))

(declare-fun removePairForKey!1243 (List!51964 K!13200) List!51964)

(assert (=> b!4645419 (= res!1951692 (= (removePairForKey!1243 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4645420 () Bool)

(assert (=> b!4645420 (= e!2897861 e!2897862)))

(declare-fun res!1951691 () Bool)

(assert (=> b!4645420 (=> res!1951691 e!2897862)))

(assert (=> b!4645420 (= res!1951691 (not (= lt!1809749 newBucket!224)))))

(declare-fun tail!8235 (List!51964) List!51964)

(assert (=> b!4645420 (= lt!1809749 (tail!8235 oldBucket!40))))

(declare-fun b!4645421 () Bool)

(assert (=> b!4645421 (= e!2897862 (noDuplicateKeys!1620 lt!1809749))))

(declare-fun b!4645422 () Bool)

(assert (=> b!4645422 (= e!2897860 e!2897866)))

(declare-fun res!1951695 () Bool)

(assert (=> b!4645422 (=> (not res!1951695) (not e!2897866))))

(declare-fun contains!14985 (ListMap!4509 K!13200) Bool)

(assert (=> b!4645422 (= res!1951695 (contains!14985 lt!1809748 key!4968))))

(assert (=> b!4645422 (= lt!1809748 (extractMap!1676 (Cons!51841 (tuple2!52929 hash!414 oldBucket!40) Nil!51841)))))

(assert (= (and start!467520 res!1951700) b!4645416))

(assert (= (and b!4645416 res!1951698) b!4645419))

(assert (= (and b!4645419 res!1951692) b!4645411))

(assert (= (and b!4645411 res!1951694) b!4645422))

(assert (= (and b!4645422 res!1951695) b!4645410))

(assert (= (and b!4645410 res!1951696) b!4645409))

(assert (= (and b!4645409 res!1951689) b!4645412))

(assert (= (and b!4645412 res!1951693) b!4645415))

(assert (= (and b!4645412 (not res!1951699)) b!4645420))

(assert (= (and b!4645420 (not res!1951691)) b!4645418))

(assert (= (and b!4645418 (not res!1951697)) b!4645413))

(assert (= (and b!4645413 (not res!1951690)) b!4645421))

(assert (= (and start!467520 ((_ is Cons!51840) oldBucket!40)) b!4645414))

(assert (= (and start!467520 ((_ is Cons!51840) newBucket!224)) b!4645417))

(declare-fun m!5510343 () Bool)

(assert (=> b!4645422 m!5510343))

(declare-fun m!5510345 () Bool)

(assert (=> b!4645422 m!5510345))

(declare-fun m!5510347 () Bool)

(assert (=> b!4645410 m!5510347))

(declare-fun m!5510349 () Bool)

(assert (=> b!4645409 m!5510349))

(declare-fun m!5510351 () Bool)

(assert (=> b!4645420 m!5510351))

(declare-fun m!5510353 () Bool)

(assert (=> b!4645411 m!5510353))

(declare-fun m!5510355 () Bool)

(assert (=> start!467520 m!5510355))

(declare-fun m!5510357 () Bool)

(assert (=> b!4645418 m!5510357))

(declare-fun m!5510359 () Bool)

(assert (=> b!4645418 m!5510359))

(declare-fun m!5510361 () Bool)

(assert (=> b!4645421 m!5510361))

(declare-fun m!5510363 () Bool)

(assert (=> b!4645416 m!5510363))

(declare-fun m!5510365 () Bool)

(assert (=> b!4645413 m!5510365))

(declare-fun m!5510367 () Bool)

(assert (=> b!4645413 m!5510367))

(declare-fun m!5510369 () Bool)

(assert (=> b!4645419 m!5510369))

(declare-fun m!5510371 () Bool)

(assert (=> b!4645412 m!5510371))

(declare-fun m!5510373 () Bool)

(assert (=> b!4645412 m!5510373))

(check-sat (not b!4645420) (not start!467520) (not b!4645409) (not b!4645413) (not b!4645410) (not b!4645412) (not b!4645414) (not b!4645421) (not b!4645411) (not b!4645419) tp_is_empty!29773 (not b!4645416) tp_is_empty!29775 (not b!4645417) (not b!4645418) (not b!4645422))
(check-sat)
