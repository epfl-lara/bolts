; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471768 () Bool)

(assert start!471768)

(declare-fun b!4674414 () Bool)

(declare-fun res!1968368 () Bool)

(declare-fun e!2916835 () Bool)

(assert (=> b!4674414 (=> (not res!1968368) (not e!2916835))))

(declare-datatypes ((Hashable!6111 0))(
  ( (HashableExt!6110 (__x!31814 Int)) )
))
(declare-fun hashF!1323 () Hashable!6111)

(declare-datatypes ((K!13505 0))(
  ( (K!13506 (val!19075 Int)) )
))
(declare-datatypes ((V!13751 0))(
  ( (V!13752 (val!19076 Int)) )
))
(declare-datatypes ((tuple2!53362 0))(
  ( (tuple2!53363 (_1!29975 K!13505) (_2!29975 V!13751)) )
))
(declare-datatypes ((List!52257 0))(
  ( (Nil!52133) (Cons!52133 (h!58326 tuple2!53362) (t!359395 List!52257)) )
))
(declare-fun oldBucket!34 () List!52257)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1568 (List!52257 (_ BitVec 64) Hashable!6111) Bool)

(assert (=> b!4674414 (= res!1968368 (allKeysSameHash!1568 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4674415 () Bool)

(declare-fun res!1968369 () Bool)

(assert (=> b!4674415 (=> (not res!1968369) (not e!2916835))))

(declare-fun noDuplicateKeys!1742 (List!52257) Bool)

(assert (=> b!4674415 (= res!1968369 (noDuplicateKeys!1742 oldBucket!34))))

(declare-fun b!4674416 () Bool)

(declare-fun e!2916836 () Bool)

(declare-datatypes ((ListMap!4737 0))(
  ( (ListMap!4738 (toList!5373 List!52257)) )
))
(declare-fun lt!1834870 () ListMap!4737)

(declare-datatypes ((tuple2!53364 0))(
  ( (tuple2!53365 (_1!29976 (_ BitVec 64)) (_2!29976 List!52257)) )
))
(declare-datatypes ((List!52258 0))(
  ( (Nil!52134) (Cons!52134 (h!58327 tuple2!53364) (t!359396 List!52258)) )
))
(declare-datatypes ((ListLongMap!3903 0))(
  ( (ListLongMap!3904 (toList!5374 List!52258)) )
))
(declare-fun lm!2023 () ListLongMap!3903)

(declare-fun addToMapMapFromBucket!1174 (List!52257 ListMap!4737) ListMap!4737)

(declare-fun extractMap!1768 (List!52258) ListMap!4737)

(assert (=> b!4674416 (= e!2916836 (= lt!1834870 (addToMapMapFromBucket!1174 (_2!29976 (h!58327 (toList!5374 lm!2023))) (extractMap!1768 (t!359396 (toList!5374 lm!2023))))))))

(declare-fun b!4674417 () Bool)

(declare-fun res!1968367 () Bool)

(declare-fun e!2916842 () Bool)

(assert (=> b!4674417 (=> (not res!1968367) (not e!2916842))))

(declare-fun key!4653 () K!13505)

(declare-fun hash!3902 (Hashable!6111 K!13505) (_ BitVec 64))

(assert (=> b!4674417 (= res!1968367 (= (hash!3902 hashF!1323 key!4653) hash!405))))

(declare-fun e!2916840 () Bool)

(declare-fun tp_is_empty!30263 () Bool)

(declare-fun b!4674418 () Bool)

(declare-fun tp_is_empty!30261 () Bool)

(declare-fun tp!1344388 () Bool)

(assert (=> b!4674418 (= e!2916840 (and tp_is_empty!30261 tp_is_empty!30263 tp!1344388))))

(declare-fun b!4674419 () Bool)

(declare-fun e!2916838 () Bool)

(declare-fun e!2916839 () Bool)

(assert (=> b!4674419 (= e!2916838 e!2916839)))

(declare-fun res!1968362 () Bool)

(assert (=> b!4674419 (=> res!1968362 e!2916839)))

(declare-fun lt!1834869 () List!52257)

(declare-fun newBucket!218 () List!52257)

(assert (=> b!4674419 (= res!1968362 (not (= lt!1834869 newBucket!218)))))

(declare-fun tail!8324 (List!52257) List!52257)

(assert (=> b!4674419 (= lt!1834869 (tail!8324 oldBucket!34))))

(declare-fun e!2916837 () Bool)

(declare-fun b!4674420 () Bool)

(declare-fun tp!1344389 () Bool)

(assert (=> b!4674420 (= e!2916837 (and tp_is_empty!30261 tp_is_empty!30263 tp!1344389))))

(declare-fun b!4674421 () Bool)

(declare-fun res!1968363 () Bool)

(assert (=> b!4674421 (=> (not res!1968363) (not e!2916842))))

(declare-fun head!9782 (List!52258) tuple2!53364)

(assert (=> b!4674421 (= res!1968363 (= (head!9782 (toList!5374 lm!2023)) (tuple2!53365 hash!405 oldBucket!34)))))

(declare-fun b!4674422 () Bool)

(assert (=> b!4674422 (= e!2916835 e!2916842)))

(declare-fun res!1968370 () Bool)

(assert (=> b!4674422 (=> (not res!1968370) (not e!2916842))))

(declare-fun contains!15296 (ListMap!4737 K!13505) Bool)

(assert (=> b!4674422 (= res!1968370 (contains!15296 lt!1834870 key!4653))))

(assert (=> b!4674422 (= lt!1834870 (extractMap!1768 (toList!5374 lm!2023)))))

(declare-fun b!4674423 () Bool)

(declare-fun e!2916841 () Bool)

(declare-fun tp!1344387 () Bool)

(assert (=> b!4674423 (= e!2916841 tp!1344387)))

(declare-fun b!4674424 () Bool)

(declare-fun res!1968366 () Bool)

(assert (=> b!4674424 (=> (not res!1968366) (not e!2916835))))

(declare-fun removePairForKey!1337 (List!52257 K!13505) List!52257)

(assert (=> b!4674424 (= res!1968366 (= (removePairForKey!1337 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4674425 () Bool)

(declare-fun res!1968358 () Bool)

(assert (=> b!4674425 (=> (not res!1968358) (not e!2916842))))

(declare-fun allKeysSameHashInMap!1656 (ListLongMap!3903 Hashable!6111) Bool)

(assert (=> b!4674425 (= res!1968358 (allKeysSameHashInMap!1656 lm!2023 hashF!1323))))

(declare-fun b!4674426 () Bool)

(declare-fun res!1968359 () Bool)

(assert (=> b!4674426 (=> (not res!1968359) (not e!2916835))))

(assert (=> b!4674426 (= res!1968359 (noDuplicateKeys!1742 newBucket!218))))

(declare-fun b!4674427 () Bool)

(assert (=> b!4674427 (= e!2916839 (noDuplicateKeys!1742 lt!1834869))))

(declare-fun b!4674428 () Bool)

(declare-fun res!1968361 () Bool)

(assert (=> b!4674428 (=> (not res!1968361) (not e!2916842))))

(get-info :version)

(assert (=> b!4674428 (= res!1968361 ((_ is Cons!52134) (toList!5374 lm!2023)))))

(declare-fun b!4674429 () Bool)

(declare-fun res!1968360 () Bool)

(assert (=> b!4674429 (=> res!1968360 e!2916839)))

(assert (=> b!4674429 (= res!1968360 (not (= (extractMap!1768 (Cons!52134 (tuple2!53365 hash!405 lt!1834869) (t!359396 (toList!5374 lm!2023)))) (extractMap!1768 (Cons!52134 (tuple2!53365 hash!405 newBucket!218) (t!359396 (toList!5374 lm!2023)))))))))

(declare-fun b!4674430 () Bool)

(assert (=> b!4674430 (= e!2916842 (not e!2916838))))

(declare-fun res!1968364 () Bool)

(assert (=> b!4674430 (=> res!1968364 e!2916838)))

(assert (=> b!4674430 (= res!1968364 (or (not ((_ is Cons!52133) oldBucket!34)) (not (= (_1!29975 (h!58326 oldBucket!34)) key!4653))))))

(assert (=> b!4674430 e!2916836))

(declare-fun res!1968365 () Bool)

(assert (=> b!4674430 (=> (not res!1968365) (not e!2916836))))

(declare-fun tail!8325 (ListLongMap!3903) ListLongMap!3903)

(assert (=> b!4674430 (= res!1968365 (= (t!359396 (toList!5374 lm!2023)) (toList!5374 (tail!8325 lm!2023))))))

(declare-fun res!1968371 () Bool)

(assert (=> start!471768 (=> (not res!1968371) (not e!2916835))))

(declare-fun lambda!203285 () Int)

(declare-fun forall!11157 (List!52258 Int) Bool)

(assert (=> start!471768 (= res!1968371 (forall!11157 (toList!5374 lm!2023) lambda!203285))))

(assert (=> start!471768 e!2916835))

(declare-fun inv!67379 (ListLongMap!3903) Bool)

(assert (=> start!471768 (and (inv!67379 lm!2023) e!2916841)))

(assert (=> start!471768 tp_is_empty!30261))

(assert (=> start!471768 e!2916840))

(assert (=> start!471768 true))

(assert (=> start!471768 e!2916837))

(declare-fun b!4674431 () Bool)

(declare-fun res!1968357 () Bool)

(assert (=> b!4674431 (=> (not res!1968357) (not e!2916842))))

(assert (=> b!4674431 (= res!1968357 (allKeysSameHash!1568 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!471768 res!1968371) b!4674415))

(assert (= (and b!4674415 res!1968369) b!4674426))

(assert (= (and b!4674426 res!1968359) b!4674424))

(assert (= (and b!4674424 res!1968366) b!4674414))

(assert (= (and b!4674414 res!1968368) b!4674422))

(assert (= (and b!4674422 res!1968370) b!4674417))

(assert (= (and b!4674417 res!1968367) b!4674431))

(assert (= (and b!4674431 res!1968357) b!4674425))

(assert (= (and b!4674425 res!1968358) b!4674421))

(assert (= (and b!4674421 res!1968363) b!4674428))

(assert (= (and b!4674428 res!1968361) b!4674430))

(assert (= (and b!4674430 res!1968365) b!4674416))

(assert (= (and b!4674430 (not res!1968364)) b!4674419))

(assert (= (and b!4674419 (not res!1968362)) b!4674429))

(assert (= (and b!4674429 (not res!1968360)) b!4674427))

(assert (= start!471768 b!4674423))

(assert (= (and start!471768 ((_ is Cons!52133) oldBucket!34)) b!4674418))

(assert (= (and start!471768 ((_ is Cons!52133) newBucket!218)) b!4674420))

(declare-fun m!5567831 () Bool)

(assert (=> b!4674429 m!5567831))

(declare-fun m!5567833 () Bool)

(assert (=> b!4674429 m!5567833))

(declare-fun m!5567835 () Bool)

(assert (=> b!4674416 m!5567835))

(assert (=> b!4674416 m!5567835))

(declare-fun m!5567837 () Bool)

(assert (=> b!4674416 m!5567837))

(declare-fun m!5567839 () Bool)

(assert (=> b!4674424 m!5567839))

(declare-fun m!5567841 () Bool)

(assert (=> b!4674422 m!5567841))

(declare-fun m!5567843 () Bool)

(assert (=> b!4674422 m!5567843))

(declare-fun m!5567845 () Bool)

(assert (=> b!4674427 m!5567845))

(declare-fun m!5567847 () Bool)

(assert (=> start!471768 m!5567847))

(declare-fun m!5567849 () Bool)

(assert (=> start!471768 m!5567849))

(declare-fun m!5567851 () Bool)

(assert (=> b!4674415 m!5567851))

(declare-fun m!5567853 () Bool)

(assert (=> b!4674414 m!5567853))

(declare-fun m!5567855 () Bool)

(assert (=> b!4674419 m!5567855))

(declare-fun m!5567857 () Bool)

(assert (=> b!4674426 m!5567857))

(declare-fun m!5567859 () Bool)

(assert (=> b!4674425 m!5567859))

(declare-fun m!5567861 () Bool)

(assert (=> b!4674421 m!5567861))

(declare-fun m!5567863 () Bool)

(assert (=> b!4674430 m!5567863))

(declare-fun m!5567865 () Bool)

(assert (=> b!4674417 m!5567865))

(declare-fun m!5567867 () Bool)

(assert (=> b!4674431 m!5567867))

(check-sat (not b!4674417) (not b!4674420) (not b!4674426) (not b!4674415) tp_is_empty!30263 (not b!4674427) (not b!4674422) (not b!4674419) (not b!4674424) (not b!4674429) (not b!4674431) (not b!4674414) (not b!4674430) tp_is_empty!30261 (not b!4674423) (not start!471768) (not b!4674416) (not b!4674425) (not b!4674418) (not b!4674421))
(check-sat)
