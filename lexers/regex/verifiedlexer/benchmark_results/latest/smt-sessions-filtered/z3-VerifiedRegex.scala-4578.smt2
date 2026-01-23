; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241642 () Bool)

(assert start!241642)

(declare-fun b!2477232 () Bool)

(declare-fun b_free!71961 () Bool)

(declare-fun b_next!72665 () Bool)

(assert (=> b!2477232 (= b_free!71961 (not b_next!72665))))

(declare-fun tp!792425 () Bool)

(declare-fun b_and!188187 () Bool)

(assert (=> b!2477232 (= tp!792425 b_and!188187)))

(declare-fun b!2477231 () Bool)

(declare-fun b_free!71963 () Bool)

(declare-fun b_next!72667 () Bool)

(assert (=> b!2477231 (= b_free!71963 (not b_next!72667))))

(declare-fun tp!792430 () Bool)

(declare-fun b_and!188189 () Bool)

(assert (=> b!2477231 (= tp!792430 b_and!188189)))

(declare-fun b!2477225 () Bool)

(declare-fun e!1571814 () Bool)

(declare-fun e!1571815 () Bool)

(assert (=> b!2477225 (= e!1571814 e!1571815)))

(declare-fun b!2477226 () Bool)

(declare-fun res!1048695 () Bool)

(declare-fun e!1571809 () Bool)

(assert (=> b!2477226 (=> (not res!1048695) (not e!1571809))))

(declare-datatypes ((Hashable!3186 0))(
  ( (HashableExt!3185 (__x!18734 Int)) )
))
(declare-datatypes ((K!5275 0))(
  ( (K!5276 (val!8695 Int)) )
))
(declare-datatypes ((V!5477 0))(
  ( (V!5478 (val!8696 Int)) )
))
(declare-datatypes ((tuple2!28376 0))(
  ( (tuple2!28377 (_1!16729 K!5275) (_2!16729 V!5477)) )
))
(declare-datatypes ((List!29053 0))(
  ( (Nil!28953) (Cons!28953 (h!34355 tuple2!28376) (t!210690 List!29053)) )
))
(declare-datatypes ((array!11539 0))(
  ( (array!11540 (arr!5142 (Array (_ BitVec 32) List!29053)) (size!22561 (_ BitVec 32))) )
))
(declare-datatypes ((array!11541 0))(
  ( (array!11542 (arr!5143 (Array (_ BitVec 32) (_ BitVec 64))) (size!22562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6552 0))(
  ( (LongMapFixedSize!6553 (defaultEntry!3650 Int) (mask!8403 (_ BitVec 32)) (extraKeys!3524 (_ BitVec 32)) (zeroValue!3534 List!29053) (minValue!3534 List!29053) (_size!6599 (_ BitVec 32)) (_keys!3573 array!11541) (_values!3556 array!11539) (_vacant!3337 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12921 0))(
  ( (Cell!12922 (v!31225 LongMapFixedSize!6552)) )
))
(declare-datatypes ((MutLongMap!3276 0))(
  ( (LongMap!3276 (underlying!6759 Cell!12921)) (MutLongMapExt!3275 (__x!18735 Int)) )
))
(declare-datatypes ((Cell!12923 0))(
  ( (Cell!12924 (v!31226 MutLongMap!3276)) )
))
(declare-datatypes ((MutableMap!3186 0))(
  ( (MutableMapExt!3185 (__x!18736 Int)) (HashMap!3186 (underlying!6760 Cell!12923) (hashF!5124 Hashable!3186) (_size!6600 (_ BitVec 32)) (defaultValue!3348 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3186)

(declare-fun key!2246 () K!5275)

(declare-fun contains!4957 (MutableMap!3186 K!5275) Bool)

(assert (=> b!2477226 (= res!1048695 (not (contains!4957 thiss!42540 key!2246)))))

(declare-fun b!2477227 () Bool)

(declare-fun e!1571816 () Bool)

(declare-fun tp!792427 () Bool)

(declare-fun mapRes!15253 () Bool)

(assert (=> b!2477227 (= e!1571816 (and tp!792427 mapRes!15253))))

(declare-fun condMapEmpty!15253 () Bool)

(declare-fun mapDefault!15253 () List!29053)

(assert (=> b!2477227 (= condMapEmpty!15253 (= (arr!5142 (_values!3556 (v!31225 (underlying!6759 (v!31226 (underlying!6760 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29053)) mapDefault!15253)))))

(declare-fun b!2477228 () Bool)

(declare-fun e!1571811 () Bool)

(assert (=> b!2477228 (= e!1571811 e!1571814)))

(declare-fun res!1048694 () Bool)

(assert (=> start!241642 (=> (not res!1048694) (not e!1571809))))

(get-info :version)

(assert (=> start!241642 (= res!1048694 ((_ is HashMap!3186) thiss!42540))))

(assert (=> start!241642 e!1571809))

(declare-fun e!1571812 () Bool)

(assert (=> start!241642 e!1571812))

(declare-fun tp_is_empty!12053 () Bool)

(assert (=> start!241642 tp_is_empty!12053))

(declare-fun b!2477229 () Bool)

(declare-fun res!1048696 () Bool)

(assert (=> b!2477229 (=> (not res!1048696) (not e!1571809))))

(declare-fun valid!2480 (MutableMap!3186) Bool)

(assert (=> b!2477229 (= res!1048696 (valid!2480 thiss!42540))))

(declare-fun b!2477230 () Bool)

(declare-fun e!1571813 () Bool)

(declare-fun lt!884806 () MutLongMap!3276)

(assert (=> b!2477230 (= e!1571813 (and e!1571811 ((_ is LongMap!3276) lt!884806)))))

(assert (=> b!2477230 (= lt!884806 (v!31226 (underlying!6760 thiss!42540)))))

(assert (=> b!2477231 (= e!1571812 (and e!1571813 tp!792430))))

(declare-fun mapNonEmpty!15253 () Bool)

(declare-fun tp!792428 () Bool)

(declare-fun tp!792426 () Bool)

(assert (=> mapNonEmpty!15253 (= mapRes!15253 (and tp!792428 tp!792426))))

(declare-fun mapKey!15253 () (_ BitVec 32))

(declare-fun mapRest!15253 () (Array (_ BitVec 32) List!29053))

(declare-fun mapValue!15253 () List!29053)

(assert (=> mapNonEmpty!15253 (= (arr!5142 (_values!3556 (v!31225 (underlying!6759 (v!31226 (underlying!6760 thiss!42540)))))) (store mapRest!15253 mapKey!15253 mapValue!15253))))

(declare-fun mapIsEmpty!15253 () Bool)

(assert (=> mapIsEmpty!15253 mapRes!15253))

(declare-fun tp!792431 () Bool)

(declare-fun tp!792429 () Bool)

(declare-fun array_inv!3689 (array!11541) Bool)

(declare-fun array_inv!3690 (array!11539) Bool)

(assert (=> b!2477232 (= e!1571815 (and tp!792425 tp!792429 tp!792431 (array_inv!3689 (_keys!3573 (v!31225 (underlying!6759 (v!31226 (underlying!6760 thiss!42540)))))) (array_inv!3690 (_values!3556 (v!31225 (underlying!6759 (v!31226 (underlying!6760 thiss!42540)))))) e!1571816))))

(declare-fun b!2477233 () Bool)

(assert (=> b!2477233 (= e!1571809 (not true))))

(declare-datatypes ((ListMap!949 0))(
  ( (ListMap!950 (toList!1458 List!29053)) )
))
(declare-fun lt!884808 () ListMap!949)

(declare-fun -!113 (ListMap!949 K!5275) ListMap!949)

(assert (=> b!2477233 (= lt!884808 (-!113 lt!884808 key!2246))))

(declare-datatypes ((tuple2!28378 0))(
  ( (tuple2!28379 (_1!16730 (_ BitVec 64)) (_2!16730 List!29053)) )
))
(declare-datatypes ((List!29054 0))(
  ( (Nil!28954) (Cons!28954 (h!34356 tuple2!28378) (t!210691 List!29054)) )
))
(declare-datatypes ((ListLongMap!397 0))(
  ( (ListLongMap!398 (toList!1459 List!29054)) )
))
(declare-fun lt!884807 () ListLongMap!397)

(declare-fun extractMap!141 (List!29054) ListMap!949)

(assert (=> b!2477233 (= lt!884808 (extractMap!141 (toList!1459 lt!884807)))))

(declare-datatypes ((Unit!42338 0))(
  ( (Unit!42339) )
))
(declare-fun lt!884805 () Unit!42338)

(declare-fun lemmaRemoveNotContainedDoesNotChange!23 (ListLongMap!397 K!5275 Hashable!3186) Unit!42338)

(assert (=> b!2477233 (= lt!884805 (lemmaRemoveNotContainedDoesNotChange!23 lt!884807 key!2246 (hashF!5124 thiss!42540)))))

(declare-fun map!6030 (MutLongMap!3276) ListLongMap!397)

(assert (=> b!2477233 (= lt!884807 (map!6030 (v!31226 (underlying!6760 thiss!42540))))))

(assert (= (and start!241642 res!1048694) b!2477229))

(assert (= (and b!2477229 res!1048696) b!2477226))

(assert (= (and b!2477226 res!1048695) b!2477233))

(assert (= (and b!2477227 condMapEmpty!15253) mapIsEmpty!15253))

(assert (= (and b!2477227 (not condMapEmpty!15253)) mapNonEmpty!15253))

(assert (= b!2477232 b!2477227))

(assert (= b!2477225 b!2477232))

(assert (= b!2477228 b!2477225))

(assert (= (and b!2477230 ((_ is LongMap!3276) (v!31226 (underlying!6760 thiss!42540)))) b!2477228))

(assert (= b!2477231 b!2477230))

(assert (= (and start!241642 ((_ is HashMap!3186) thiss!42540)) b!2477231))

(declare-fun m!2845177 () Bool)

(assert (=> b!2477232 m!2845177))

(declare-fun m!2845179 () Bool)

(assert (=> b!2477232 m!2845179))

(declare-fun m!2845181 () Bool)

(assert (=> b!2477229 m!2845181))

(declare-fun m!2845183 () Bool)

(assert (=> b!2477233 m!2845183))

(declare-fun m!2845185 () Bool)

(assert (=> b!2477233 m!2845185))

(declare-fun m!2845187 () Bool)

(assert (=> b!2477233 m!2845187))

(declare-fun m!2845189 () Bool)

(assert (=> b!2477233 m!2845189))

(declare-fun m!2845191 () Bool)

(assert (=> mapNonEmpty!15253 m!2845191))

(declare-fun m!2845193 () Bool)

(assert (=> b!2477226 m!2845193))

(check-sat (not b!2477229) b_and!188189 (not b_next!72665) (not b_next!72667) tp_is_empty!12053 (not mapNonEmpty!15253) (not b!2477232) (not b!2477233) b_and!188187 (not b!2477226) (not b!2477227))
(check-sat b_and!188189 b_and!188187 (not b_next!72665) (not b_next!72667))
