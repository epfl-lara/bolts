; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1692 () Bool)

(assert start!1692)

(declare-fun b!34037 () Bool)

(declare-fun b_free!311 () Bool)

(declare-fun b_next!311 () Bool)

(assert (=> b!34037 (= b_free!311 (not b_next!311))))

(declare-fun tp!23366 () Bool)

(declare-fun b_and!311 () Bool)

(assert (=> b!34037 (= tp!23366 b_and!311)))

(declare-fun b!34033 () Bool)

(declare-fun e!15636 () Bool)

(declare-fun tp_is_empty!307 () Bool)

(declare-fun mapRes!194 () Bool)

(assert (=> b!34033 (= e!15636 (and tp_is_empty!307 mapRes!194))))

(declare-fun condMapEmpty!194 () Bool)

(declare-datatypes ((V!525 0))(
  ( (V!526 (val!177 Int)) )
))
(declare-datatypes ((array!177 0))(
  ( (array!178 (arr!109 (Array (_ BitVec 32) V!525)) (size!352 (_ BitVec 32))) )
))
(declare-datatypes ((array!179 0))(
  ( (array!180 (arr!110 (Array (_ BitVec 32) (_ BitVec 64))) (size!353 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!100 0))(
  ( (LongMapFixedSize!101 (defaultEntry!388 Int) (mask!712 (_ BitVec 32)) (extraKeys!296 (_ BitVec 32)) (zeroValue!306 V!525) (minValue!306 V!525) (_size!233 (_ BitVec 32)) (_keys!341 array!179) (_values!328 array!177) (_vacant!110 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!191 0))(
  ( (Cell!192 (v!12060 LongMapFixedSize!100)) )
))
(declare-datatypes ((MutLongMap!50 0))(
  ( (LongMap!50 (underlying!296 Cell!191)) (MutLongMapExt!49 (__x!558 Int)) )
))
(declare-fun thiss!47397 () MutLongMap!50)

(declare-fun mapDefault!194 () V!525)

(assert (=> b!34033 (= condMapEmpty!194 (= (arr!109 (_values!328 (v!12060 (underlying!296 thiss!47397)))) ((as const (Array (_ BitVec 32) V!525)) mapDefault!194)))))

(declare-fun mapNonEmpty!194 () Bool)

(declare-fun tp!23367 () Bool)

(assert (=> mapNonEmpty!194 (= mapRes!194 (and tp!23367 tp_is_empty!307))))

(declare-fun mapRest!194 () (Array (_ BitVec 32) V!525))

(declare-fun mapKey!194 () (_ BitVec 32))

(declare-fun mapValue!194 () V!525)

(assert (=> mapNonEmpty!194 (= (arr!109 (_values!328 (v!12060 (underlying!296 thiss!47397)))) (store mapRest!194 mapKey!194 mapValue!194))))

(declare-fun b!34034 () Bool)

(declare-fun e!15638 () Bool)

(declare-fun e!15637 () Bool)

(assert (=> b!34034 (= e!15638 e!15637)))

(declare-fun mapIsEmpty!194 () Bool)

(assert (=> mapIsEmpty!194 mapRes!194))

(declare-fun b!34035 () Bool)

(declare-fun e!15639 () Bool)

(declare-fun valid!65 (MutLongMap!50) Bool)

(assert (=> b!34035 (= e!15639 (not (valid!65 thiss!47397)))))

(declare-fun b!34036 () Bool)

(declare-fun e!15635 () Bool)

(assert (=> b!34036 (= e!15635 e!15638)))

(declare-fun res!27442 () Bool)

(assert (=> start!1692 (=> (not res!27442) (not e!15639))))

(declare-fun valid!66 (MutLongMap!50) Bool)

(assert (=> start!1692 (= res!27442 (valid!66 thiss!47397))))

(assert (=> start!1692 e!15639))

(assert (=> start!1692 e!15635))

(declare-fun array_inv!58 (array!179) Bool)

(declare-fun array_inv!59 (array!177) Bool)

(assert (=> b!34037 (= e!15637 (and tp!23366 tp_is_empty!307 (array_inv!58 (_keys!341 (v!12060 (underlying!296 thiss!47397)))) (array_inv!59 (_values!328 (v!12060 (underlying!296 thiss!47397)))) e!15636))))

(declare-fun b!34038 () Bool)

(declare-fun res!27441 () Bool)

(assert (=> b!34038 (=> (not res!27441) (not e!15639))))

(get-info :version)

(assert (=> b!34038 (= res!27441 ((_ is LongMap!50) thiss!47397))))

(assert (= (and start!1692 res!27442) b!34038))

(assert (= (and b!34038 res!27441) b!34035))

(assert (= (and b!34033 condMapEmpty!194) mapIsEmpty!194))

(assert (= (and b!34033 (not condMapEmpty!194)) mapNonEmpty!194))

(assert (= b!34037 b!34033))

(assert (= b!34034 b!34037))

(assert (= b!34036 b!34034))

(assert (= (and start!1692 ((_ is LongMap!50) thiss!47397)) b!34036))

(declare-fun m!9955 () Bool)

(assert (=> mapNonEmpty!194 m!9955))

(declare-fun m!9957 () Bool)

(assert (=> b!34035 m!9957))

(declare-fun m!9959 () Bool)

(assert (=> start!1692 m!9959))

(declare-fun m!9961 () Bool)

(assert (=> b!34037 m!9961))

(declare-fun m!9963 () Bool)

(assert (=> b!34037 m!9963))

(check-sat (not mapNonEmpty!194) b_and!311 (not start!1692) (not b!34035) (not b_next!311) tp_is_empty!307 (not b!34037))
(check-sat b_and!311 (not b_next!311))
(get-model)

(declare-fun d!3555 () Bool)

(assert (=> d!3555 (= (array_inv!58 (_keys!341 (v!12060 (underlying!296 thiss!47397)))) (bvsge (size!353 (_keys!341 (v!12060 (underlying!296 thiss!47397)))) #b00000000000000000000000000000000))))

(assert (=> b!34037 d!3555))

(declare-fun d!3557 () Bool)

(assert (=> d!3557 (= (array_inv!59 (_values!328 (v!12060 (underlying!296 thiss!47397)))) (bvsge (size!352 (_values!328 (v!12060 (underlying!296 thiss!47397)))) #b00000000000000000000000000000000))))

(assert (=> b!34037 d!3557))

(declare-fun d!3559 () Bool)

(declare-fun c!15376 () Bool)

(assert (=> d!3559 (= c!15376 ((_ is LongMap!50) thiss!47397))))

(declare-fun e!15642 () Bool)

(assert (=> d!3559 (= (valid!66 thiss!47397) e!15642)))

(declare-fun b!34043 () Bool)

(assert (=> b!34043 (= e!15642 (valid!65 thiss!47397))))

(declare-fun b!34044 () Bool)

(declare-fun valid!67 (MutLongMap!50) Bool)

(assert (=> b!34044 (= e!15642 (valid!67 thiss!47397))))

(assert (= (and d!3559 c!15376) b!34043))

(assert (= (and d!3559 (not c!15376)) b!34044))

(assert (=> b!34043 m!9957))

(declare-fun m!9965 () Bool)

(assert (=> b!34044 m!9965))

(assert (=> start!1692 d!3559))

(declare-fun d!3561 () Bool)

(declare-fun valid!68 (LongMapFixedSize!100) Bool)

(assert (=> d!3561 (= (valid!65 thiss!47397) (valid!68 (v!12060 (underlying!296 thiss!47397))))))

(declare-fun bs!4548 () Bool)

(assert (= bs!4548 d!3561))

(declare-fun m!9967 () Bool)

(assert (=> bs!4548 m!9967))

(assert (=> b!34035 d!3561))

(declare-fun condMapEmpty!197 () Bool)

(declare-fun mapDefault!197 () V!525)

(assert (=> mapNonEmpty!194 (= condMapEmpty!197 (= mapRest!194 ((as const (Array (_ BitVec 32) V!525)) mapDefault!197)))))

(declare-fun mapRes!197 () Bool)

(assert (=> mapNonEmpty!194 (= tp!23367 (and tp_is_empty!307 mapRes!197))))

(declare-fun mapIsEmpty!197 () Bool)

(assert (=> mapIsEmpty!197 mapRes!197))

(declare-fun mapNonEmpty!197 () Bool)

(declare-fun tp!23370 () Bool)

(assert (=> mapNonEmpty!197 (= mapRes!197 (and tp!23370 tp_is_empty!307))))

(declare-fun mapValue!197 () V!525)

(declare-fun mapRest!197 () (Array (_ BitVec 32) V!525))

(declare-fun mapKey!197 () (_ BitVec 32))

(assert (=> mapNonEmpty!197 (= mapRest!194 (store mapRest!197 mapKey!197 mapValue!197))))

(assert (= (and mapNonEmpty!194 condMapEmpty!197) mapIsEmpty!197))

(assert (= (and mapNonEmpty!194 (not condMapEmpty!197)) mapNonEmpty!197))

(declare-fun m!9969 () Bool)

(assert (=> mapNonEmpty!197 m!9969))

(check-sat (not mapNonEmpty!197) b_and!311 (not d!3561) (not b!34044) tp_is_empty!307 (not b!34043) (not b_next!311))
(check-sat b_and!311 (not b_next!311))
