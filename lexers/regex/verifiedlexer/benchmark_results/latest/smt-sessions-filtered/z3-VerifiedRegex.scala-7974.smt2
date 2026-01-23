; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413922 () Bool)

(assert start!413922)

(declare-fun b!4307567 () Bool)

(declare-fun b_free!128475 () Bool)

(declare-fun b_next!129179 () Bool)

(assert (=> b!4307567 (= b_free!128475 (not b_next!129179))))

(declare-fun tp!1323742 () Bool)

(declare-fun b_and!339885 () Bool)

(assert (=> b!4307567 (= tp!1323742 b_and!339885)))

(declare-fun b!4307569 () Bool)

(declare-fun b_free!128477 () Bool)

(declare-fun b_next!129181 () Bool)

(assert (=> b!4307569 (= b_free!128477 (not b_next!129181))))

(declare-fun tp!1323740 () Bool)

(declare-fun b_and!339887 () Bool)

(assert (=> b!4307569 (= tp!1323740 b_and!339887)))

(declare-fun b!4307563 () Bool)

(declare-fun e!2678591 () Bool)

(declare-fun e!2678596 () Bool)

(assert (=> b!4307563 (= e!2678591 e!2678596)))

(declare-fun b!4307564 () Bool)

(declare-datatypes ((Unit!67178 0))(
  ( (Unit!67179) )
))
(declare-fun e!2678588 () Unit!67178)

(declare-fun Unit!67180 () Unit!67178)

(assert (=> b!4307564 (= e!2678588 Unit!67180)))

(declare-fun b!4307565 () Bool)

(declare-datatypes ((K!9319 0))(
  ( (K!9320 (val!15713 Int)) )
))
(declare-datatypes ((V!9521 0))(
  ( (V!9522 (val!15714 Int)) )
))
(declare-datatypes ((tuple2!46436 0))(
  ( (tuple2!46437 (_1!26497 K!9319) (_2!26497 V!9521)) )
))
(declare-datatypes ((List!48259 0))(
  ( (Nil!48135) (Cons!48135 (h!53567 tuple2!46436) (t!355054 List!48259)) )
))
(declare-fun e!2678592 () List!48259)

(assert (=> b!4307565 (= e!2678592 Nil!48135)))

(declare-datatypes ((array!16668 0))(
  ( (array!16669 (arr!7443 (Array (_ BitVec 32) (_ BitVec 64))) (size!35482 (_ BitVec 32))) )
))
(declare-datatypes ((array!16670 0))(
  ( (array!16671 (arr!7444 (Array (_ BitVec 32) List!48259)) (size!35483 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9258 0))(
  ( (LongMapFixedSize!9259 (defaultEntry!5014 Int) (mask!13172 (_ BitVec 32)) (extraKeys!4878 (_ BitVec 32)) (zeroValue!4888 List!48259) (minValue!4888 List!48259) (_size!9301 (_ BitVec 32)) (_keys!4929 array!16668) (_values!4910 array!16670) (_vacant!4690 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18325 0))(
  ( (Cell!18326 (v!42233 LongMapFixedSize!9258)) )
))
(declare-datatypes ((MutLongMap!4629 0))(
  ( (LongMap!4629 (underlying!9487 Cell!18325)) (MutLongMapExt!4628 (__x!29912 Int)) )
))
(declare-datatypes ((tuple2!46438 0))(
  ( (tuple2!46439 (_1!26498 Bool) (_2!26498 MutLongMap!4629)) )
))
(declare-fun lt!1528277 () tuple2!46438)

(declare-fun b!4307566 () Bool)

(declare-datatypes ((ListMap!1633 0))(
  ( (ListMap!1634 (toList!2351 List!48259)) )
))
(declare-fun lt!1528276 () ListMap!1633)

(declare-datatypes ((Hashable!4545 0))(
  ( (HashableExt!4544 (__x!29913 Int)) )
))
(declare-datatypes ((Cell!18327 0))(
  ( (Cell!18328 (v!42234 MutLongMap!4629)) )
))
(declare-datatypes ((MutableMap!4535 0))(
  ( (MutableMapExt!4534 (__x!29914 Int)) (HashMap!4535 (underlying!9488 Cell!18327) (hashF!6649 Hashable!4545) (_size!9302 (_ BitVec 32)) (defaultValue!4706 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4535)

(declare-fun lt!1528278 () tuple2!46436)

(declare-fun e!2678586 () Bool)

(declare-fun eq!131 (ListMap!1633 ListMap!1633) Bool)

(declare-fun map!10115 (MutableMap!4535) ListMap!1633)

(declare-fun +!242 (ListMap!1633 tuple2!46436) ListMap!1633)

(assert (=> b!4307566 (= e!2678586 (eq!131 (map!10115 (HashMap!4535 (Cell!18328 (_2!26498 lt!1528277)) (hashF!6649 thiss!42308) (_size!9302 thiss!42308) (defaultValue!4706 thiss!42308))) (+!242 lt!1528276 lt!1528278)))))

(declare-fun res!1765533 () Bool)

(declare-fun e!2678585 () Bool)

(assert (=> start!413922 (=> (not res!1765533) (not e!2678585))))

(get-info :version)

(assert (=> start!413922 (= res!1765533 ((_ is HashMap!4535) thiss!42308))))

(assert (=> start!413922 e!2678585))

(declare-fun e!2678594 () Bool)

(assert (=> start!413922 e!2678594))

(declare-fun tp_is_empty!23637 () Bool)

(assert (=> start!413922 tp_is_empty!23637))

(declare-fun tp_is_empty!23639 () Bool)

(assert (=> start!413922 tp_is_empty!23639))

(declare-fun tp!1323743 () Bool)

(declare-fun e!2678589 () Bool)

(declare-fun e!2678587 () Bool)

(declare-fun tp!1323737 () Bool)

(declare-fun array_inv!5337 (array!16668) Bool)

(declare-fun array_inv!5338 (array!16670) Bool)

(assert (=> b!4307567 (= e!2678587 (and tp!1323742 tp!1323737 tp!1323743 (array_inv!5337 (_keys!4929 (v!42233 (underlying!9487 (v!42234 (underlying!9488 thiss!42308)))))) (array_inv!5338 (_values!4910 (v!42233 (underlying!9487 (v!42234 (underlying!9488 thiss!42308)))))) e!2678589))))

(declare-fun b!4307568 () Bool)

(declare-fun e!2678595 () Bool)

(assert (=> b!4307568 (= e!2678585 e!2678595)))

(declare-fun res!1765539 () Bool)

(assert (=> b!4307568 (=> (not res!1765539) (not e!2678595))))

(declare-fun key!2048 () K!9319)

(declare-fun contains!10096 (MutableMap!4535 K!9319) Bool)

(assert (=> b!4307568 (= res!1765539 (not (contains!10096 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46440 0))(
  ( (tuple2!46441 (_1!26499 (_ BitVec 64)) (_2!26499 List!48259)) )
))
(declare-datatypes ((List!48260 0))(
  ( (Nil!48136) (Cons!48136 (h!53568 tuple2!46440) (t!355055 List!48260)) )
))
(declare-datatypes ((ListLongMap!963 0))(
  ( (ListLongMap!964 (toList!2352 List!48260)) )
))
(declare-fun lt!1528280 () ListLongMap!963)

(declare-fun map!10116 (MutLongMap!4629) ListLongMap!963)

(assert (=> b!4307568 (= lt!1528280 (map!10116 (v!42234 (underlying!9488 thiss!42308))))))

(assert (=> b!4307568 (= lt!1528276 (map!10115 thiss!42308))))

(declare-fun e!2678593 () Bool)

(assert (=> b!4307569 (= e!2678594 (and e!2678593 tp!1323740))))

(declare-fun b!4307570 () Bool)

(declare-fun res!1765537 () Bool)

(assert (=> b!4307570 (=> (not res!1765537) (not e!2678586))))

(declare-fun lt!1528271 () ListLongMap!963)

(declare-fun allKeysSameHashInMap!322 (ListLongMap!963 Hashable!4545) Bool)

(assert (=> b!4307570 (= res!1765537 (allKeysSameHashInMap!322 lt!1528271 (hashF!6649 thiss!42308)))))

(declare-fun b!4307571 () Bool)

(declare-fun tp!1323739 () Bool)

(declare-fun mapRes!20704 () Bool)

(assert (=> b!4307571 (= e!2678589 (and tp!1323739 mapRes!20704))))

(declare-fun condMapEmpty!20704 () Bool)

(declare-fun mapDefault!20704 () List!48259)

(assert (=> b!4307571 (= condMapEmpty!20704 (= (arr!7444 (_values!4910 (v!42233 (underlying!9487 (v!42234 (underlying!9488 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48259)) mapDefault!20704)))))

(declare-fun b!4307572 () Bool)

(declare-fun lt!1528281 () MutLongMap!4629)

(assert (=> b!4307572 (= e!2678593 (and e!2678591 ((_ is LongMap!4629) lt!1528281)))))

(assert (=> b!4307572 (= lt!1528281 (v!42234 (underlying!9488 thiss!42308)))))

(declare-fun b!4307573 () Bool)

(declare-fun res!1765535 () Bool)

(assert (=> b!4307573 (=> (not res!1765535) (not e!2678585))))

(declare-fun valid!3618 (MutableMap!4535) Bool)

(assert (=> b!4307573 (= res!1765535 (valid!3618 thiss!42308))))

(declare-fun mapIsEmpty!20704 () Bool)

(assert (=> mapIsEmpty!20704 mapRes!20704))

(declare-fun b!4307574 () Bool)

(declare-fun e!2678597 () Bool)

(declare-fun lt!1528273 () ListLongMap!963)

(assert (=> b!4307574 (= e!2678597 (allKeysSameHashInMap!322 lt!1528273 (hashF!6649 thiss!42308)))))

(declare-fun b!4307575 () Bool)

(declare-fun lt!1528279 () Unit!67178)

(assert (=> b!4307575 (= e!2678588 lt!1528279)))

(declare-fun lt!1528275 () Unit!67178)

(declare-fun lt!1528269 () List!48259)

(declare-fun lt!1528282 () (_ BitVec 64))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!161 (List!48260 (_ BitVec 64) List!48259 Hashable!4545) Unit!67178)

(assert (=> b!4307575 (= lt!1528275 (lemmaInLongMapAllKeySameHashThenForTuple!161 (toList!2352 lt!1528280) lt!1528282 lt!1528269 (hashF!6649 thiss!42308)))))

(declare-fun allKeysSameHash!171 (List!48259 (_ BitVec 64) Hashable!4545) Bool)

(assert (=> b!4307575 (allKeysSameHash!171 lt!1528269 lt!1528282 (hashF!6649 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!155 (List!48259 K!9319 (_ BitVec 64) Hashable!4545) Unit!67178)

(assert (=> b!4307575 (= lt!1528279 (lemmaRemovePairForKeyPreservesHash!155 lt!1528269 key!2048 lt!1528282 (hashF!6649 thiss!42308)))))

(declare-fun removePairForKey!195 (List!48259 K!9319) List!48259)

(assert (=> b!4307575 (allKeysSameHash!171 (removePairForKey!195 lt!1528269 key!2048) lt!1528282 (hashF!6649 thiss!42308))))

(declare-fun b!4307576 () Bool)

(declare-fun apply!10984 (MutLongMap!4629 (_ BitVec 64)) List!48259)

(assert (=> b!4307576 (= e!2678592 (apply!10984 (v!42234 (underlying!9488 thiss!42308)) lt!1528282))))

(declare-fun b!4307577 () Bool)

(assert (=> b!4307577 (= e!2678596 e!2678587)))

(declare-fun mapNonEmpty!20704 () Bool)

(declare-fun tp!1323741 () Bool)

(declare-fun tp!1323738 () Bool)

(assert (=> mapNonEmpty!20704 (= mapRes!20704 (and tp!1323741 tp!1323738))))

(declare-fun mapRest!20704 () (Array (_ BitVec 32) List!48259))

(declare-fun mapValue!20704 () List!48259)

(declare-fun mapKey!20704 () (_ BitVec 32))

(assert (=> mapNonEmpty!20704 (= (arr!7444 (_values!4910 (v!42233 (underlying!9487 (v!42234 (underlying!9488 thiss!42308)))))) (store mapRest!20704 mapKey!20704 mapValue!20704))))

(declare-fun b!4307578 () Bool)

(declare-fun e!2678590 () Bool)

(assert (=> b!4307578 (= e!2678595 e!2678590)))

(declare-fun res!1765538 () Bool)

(assert (=> b!4307578 (=> (not res!1765538) (not e!2678590))))

(assert (=> b!4307578 (= res!1765538 (_1!26498 lt!1528277))))

(declare-fun lt!1528272 () List!48259)

(declare-fun update!409 (MutLongMap!4629 (_ BitVec 64) List!48259) tuple2!46438)

(assert (=> b!4307578 (= lt!1528277 (update!409 (v!42234 (underlying!9488 thiss!42308)) lt!1528282 lt!1528272))))

(assert (=> b!4307578 (= lt!1528272 (Cons!48135 lt!1528278 lt!1528269))))

(declare-fun v!9179 () V!9521)

(assert (=> b!4307578 (= lt!1528278 (tuple2!46437 key!2048 v!9179))))

(assert (=> b!4307578 (= lt!1528269 e!2678592)))

(declare-fun c!732370 () Bool)

(declare-fun contains!10097 (MutLongMap!4629 (_ BitVec 64)) Bool)

(assert (=> b!4307578 (= c!732370 (contains!10097 (v!42234 (underlying!9488 thiss!42308)) lt!1528282))))

(declare-fun hash!969 (Hashable!4545 K!9319) (_ BitVec 64))

(assert (=> b!4307578 (= lt!1528282 (hash!969 (hashF!6649 thiss!42308) key!2048))))

(declare-fun b!4307579 () Bool)

(assert (=> b!4307579 (= e!2678590 (not true))))

(assert (=> b!4307579 e!2678586))

(declare-fun res!1765534 () Bool)

(assert (=> b!4307579 (=> (not res!1765534) (not e!2678586))))

(declare-fun lambda!132694 () Int)

(declare-fun forall!8712 (List!48260 Int) Bool)

(assert (=> b!4307579 (= res!1765534 (forall!8712 (toList!2352 lt!1528271) lambda!132694))))

(assert (=> b!4307579 (= lt!1528271 (map!10116 (_2!26498 lt!1528277)))))

(declare-fun extractMap!314 (List!48260) ListMap!1633)

(assert (=> b!4307579 (eq!131 (extractMap!314 (toList!2352 lt!1528273)) (+!242 (extractMap!314 (toList!2352 lt!1528280)) lt!1528278))))

(declare-fun lt!1528274 () Unit!67178)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!48 (ListLongMap!963 (_ BitVec 64) List!48259 K!9319 V!9521 Hashable!4545) Unit!67178)

(assert (=> b!4307579 (= lt!1528274 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!48 lt!1528280 lt!1528282 lt!1528272 key!2048 v!9179 (hashF!6649 thiss!42308)))))

(assert (=> b!4307579 e!2678597))

(declare-fun res!1765536 () Bool)

(assert (=> b!4307579 (=> (not res!1765536) (not e!2678597))))

(assert (=> b!4307579 (= res!1765536 (forall!8712 (toList!2352 lt!1528273) lambda!132694))))

(declare-fun +!243 (ListLongMap!963 tuple2!46440) ListLongMap!963)

(assert (=> b!4307579 (= lt!1528273 (+!243 lt!1528280 (tuple2!46441 lt!1528282 lt!1528272)))))

(declare-fun lt!1528268 () Unit!67178)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!137 (ListLongMap!963 (_ BitVec 64) List!48259 Hashable!4545) Unit!67178)

(assert (=> b!4307579 (= lt!1528268 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!137 lt!1528280 lt!1528282 lt!1528272 (hashF!6649 thiss!42308)))))

(declare-fun lt!1528270 () Unit!67178)

(assert (=> b!4307579 (= lt!1528270 e!2678588)))

(declare-fun c!732369 () Bool)

(declare-fun isEmpty!28074 (List!48259) Bool)

(assert (=> b!4307579 (= c!732369 (not (isEmpty!28074 lt!1528269)))))

(assert (= (and start!413922 res!1765533) b!4307573))

(assert (= (and b!4307573 res!1765535) b!4307568))

(assert (= (and b!4307568 res!1765539) b!4307578))

(assert (= (and b!4307578 c!732370) b!4307576))

(assert (= (and b!4307578 (not c!732370)) b!4307565))

(assert (= (and b!4307578 res!1765538) b!4307579))

(assert (= (and b!4307579 c!732369) b!4307575))

(assert (= (and b!4307579 (not c!732369)) b!4307564))

(assert (= (and b!4307579 res!1765536) b!4307574))

(assert (= (and b!4307579 res!1765534) b!4307570))

(assert (= (and b!4307570 res!1765537) b!4307566))

(assert (= (and b!4307571 condMapEmpty!20704) mapIsEmpty!20704))

(assert (= (and b!4307571 (not condMapEmpty!20704)) mapNonEmpty!20704))

(assert (= b!4307567 b!4307571))

(assert (= b!4307577 b!4307567))

(assert (= b!4307563 b!4307577))

(assert (= (and b!4307572 ((_ is LongMap!4629) (v!42234 (underlying!9488 thiss!42308)))) b!4307563))

(assert (= b!4307569 b!4307572))

(assert (= (and start!413922 ((_ is HashMap!4535) thiss!42308)) b!4307569))

(declare-fun m!4900475 () Bool)

(assert (=> b!4307574 m!4900475))

(declare-fun m!4900477 () Bool)

(assert (=> mapNonEmpty!20704 m!4900477))

(declare-fun m!4900479 () Bool)

(assert (=> b!4307566 m!4900479))

(declare-fun m!4900481 () Bool)

(assert (=> b!4307566 m!4900481))

(assert (=> b!4307566 m!4900479))

(assert (=> b!4307566 m!4900481))

(declare-fun m!4900483 () Bool)

(assert (=> b!4307566 m!4900483))

(declare-fun m!4900485 () Bool)

(assert (=> b!4307568 m!4900485))

(declare-fun m!4900487 () Bool)

(assert (=> b!4307568 m!4900487))

(declare-fun m!4900489 () Bool)

(assert (=> b!4307568 m!4900489))

(declare-fun m!4900491 () Bool)

(assert (=> b!4307567 m!4900491))

(declare-fun m!4900493 () Bool)

(assert (=> b!4307567 m!4900493))

(declare-fun m!4900495 () Bool)

(assert (=> b!4307579 m!4900495))

(declare-fun m!4900497 () Bool)

(assert (=> b!4307579 m!4900497))

(declare-fun m!4900499 () Bool)

(assert (=> b!4307579 m!4900499))

(declare-fun m!4900501 () Bool)

(assert (=> b!4307579 m!4900501))

(declare-fun m!4900503 () Bool)

(assert (=> b!4307579 m!4900503))

(declare-fun m!4900505 () Bool)

(assert (=> b!4307579 m!4900505))

(declare-fun m!4900507 () Bool)

(assert (=> b!4307579 m!4900507))

(assert (=> b!4307579 m!4900501))

(declare-fun m!4900509 () Bool)

(assert (=> b!4307579 m!4900509))

(declare-fun m!4900511 () Bool)

(assert (=> b!4307579 m!4900511))

(assert (=> b!4307579 m!4900507))

(assert (=> b!4307579 m!4900503))

(declare-fun m!4900513 () Bool)

(assert (=> b!4307579 m!4900513))

(declare-fun m!4900515 () Bool)

(assert (=> b!4307579 m!4900515))

(declare-fun m!4900517 () Bool)

(assert (=> b!4307576 m!4900517))

(declare-fun m!4900519 () Bool)

(assert (=> b!4307570 m!4900519))

(declare-fun m!4900521 () Bool)

(assert (=> b!4307575 m!4900521))

(declare-fun m!4900523 () Bool)

(assert (=> b!4307575 m!4900523))

(declare-fun m!4900525 () Bool)

(assert (=> b!4307575 m!4900525))

(assert (=> b!4307575 m!4900521))

(declare-fun m!4900527 () Bool)

(assert (=> b!4307575 m!4900527))

(declare-fun m!4900529 () Bool)

(assert (=> b!4307575 m!4900529))

(declare-fun m!4900531 () Bool)

(assert (=> b!4307578 m!4900531))

(declare-fun m!4900533 () Bool)

(assert (=> b!4307578 m!4900533))

(declare-fun m!4900535 () Bool)

(assert (=> b!4307578 m!4900535))

(declare-fun m!4900537 () Bool)

(assert (=> b!4307573 m!4900537))

(check-sat (not b!4307576) tp_is_empty!23639 (not b!4307574) b_and!339887 b_and!339885 (not b!4307568) (not b!4307570) (not b!4307567) (not b!4307578) (not mapNonEmpty!20704) (not b!4307575) (not b!4307566) tp_is_empty!23637 (not b!4307573) (not b!4307579) (not b!4307571) (not b_next!129181) (not b_next!129179))
(check-sat b_and!339885 b_and!339887 (not b_next!129181) (not b_next!129179))
