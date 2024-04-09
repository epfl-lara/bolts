; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2940 () Bool)

(assert start!2940)

(declare-fun b!16775 () Bool)

(declare-fun b_free!579 () Bool)

(declare-fun b_next!579 () Bool)

(assert (=> b!16775 (= b_free!579 (not b_next!579))))

(declare-fun tp!2924 () Bool)

(declare-fun b_and!1223 () Bool)

(assert (=> b!16775 (= tp!2924 b_and!1223)))

(declare-fun mapNonEmpty!695 () Bool)

(declare-fun mapRes!695 () Bool)

(declare-fun tp!2923 () Bool)

(declare-fun e!10420 () Bool)

(assert (=> mapNonEmpty!695 (= mapRes!695 (and tp!2923 e!10420))))

(declare-fun mapKey!695 () (_ BitVec 32))

(declare-datatypes ((V!949 0))(
  ( (V!950 (val!448 Int)) )
))
(declare-datatypes ((ValueCell!222 0))(
  ( (ValueCellFull!222 (v!1396 V!949)) (EmptyCell!222) )
))
(declare-datatypes ((array!881 0))(
  ( (array!882 (arr!423 (Array (_ BitVec 32) ValueCell!222)) (size!512 (_ BitVec 32))) )
))
(declare-datatypes ((array!883 0))(
  ( (array!884 (arr!424 (Array (_ BitVec 32) (_ BitVec 64))) (size!513 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!30 0))(
  ( (LongMapFixedSize!31 (defaultEntry!1625 Int) (mask!4533 (_ BitVec 32)) (extraKeys!1539 (_ BitVec 32)) (zeroValue!1562 V!949) (minValue!1562 V!949) (_size!46 (_ BitVec 32)) (_keys!3050 array!883) (_values!1623 array!881) (_vacant!46 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!30 0))(
  ( (Cell!31 (v!1397 LongMapFixedSize!30)) )
))
(declare-datatypes ((LongMap!30 0))(
  ( (LongMap!31 (underlying!26 Cell!30)) )
))
(declare-fun thiss!848 () LongMap!30)

(declare-fun mapRest!695 () (Array (_ BitVec 32) ValueCell!222))

(declare-fun mapValue!695 () ValueCell!222)

(assert (=> mapNonEmpty!695 (= (arr!423 (_values!1623 (v!1397 (underlying!26 thiss!848)))) (store mapRest!695 mapKey!695 mapValue!695))))

(declare-fun lt!4137 () Bool)

(declare-fun valid!23 (LongMap!30) Bool)

(assert (=> start!2940 (= lt!4137 (valid!23 thiss!848))))

(assert (=> start!2940 false))

(declare-fun e!10419 () Bool)

(assert (=> start!2940 e!10419))

(declare-fun b!16770 () Bool)

(declare-fun e!10414 () Bool)

(declare-fun tp_is_empty!843 () Bool)

(assert (=> b!16770 (= e!10414 tp_is_empty!843)))

(declare-fun mapIsEmpty!695 () Bool)

(assert (=> mapIsEmpty!695 mapRes!695))

(declare-fun b!16771 () Bool)

(declare-fun e!10418 () Bool)

(assert (=> b!16771 (= e!10419 e!10418)))

(declare-fun b!16772 () Bool)

(assert (=> b!16772 (= e!10420 tp_is_empty!843)))

(declare-fun b!16773 () Bool)

(declare-fun e!10417 () Bool)

(assert (=> b!16773 (= e!10417 (and e!10414 mapRes!695))))

(declare-fun condMapEmpty!695 () Bool)

(declare-fun mapDefault!695 () ValueCell!222)

(assert (=> b!16773 (= condMapEmpty!695 (= (arr!423 (_values!1623 (v!1397 (underlying!26 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!222)) mapDefault!695)))))

(declare-fun b!16774 () Bool)

(declare-fun e!10415 () Bool)

(assert (=> b!16774 (= e!10418 e!10415)))

(declare-fun array_inv!301 (array!883) Bool)

(declare-fun array_inv!302 (array!881) Bool)

(assert (=> b!16775 (= e!10415 (and tp!2924 tp_is_empty!843 (array_inv!301 (_keys!3050 (v!1397 (underlying!26 thiss!848)))) (array_inv!302 (_values!1623 (v!1397 (underlying!26 thiss!848)))) e!10417))))

(assert (= (and b!16773 condMapEmpty!695) mapIsEmpty!695))

(assert (= (and b!16773 (not condMapEmpty!695)) mapNonEmpty!695))

(get-info :version)

(assert (= (and mapNonEmpty!695 ((_ is ValueCellFull!222) mapValue!695)) b!16772))

(assert (= (and b!16773 ((_ is ValueCellFull!222) mapDefault!695)) b!16770))

(assert (= b!16775 b!16773))

(assert (= b!16774 b!16775))

(assert (= b!16771 b!16774))

(assert (= start!2940 b!16771))

(declare-fun m!11835 () Bool)

(assert (=> mapNonEmpty!695 m!11835))

(declare-fun m!11837 () Bool)

(assert (=> start!2940 m!11837))

(declare-fun m!11839 () Bool)

(assert (=> b!16775 m!11839))

(declare-fun m!11841 () Bool)

(assert (=> b!16775 m!11841))

(check-sat (not b!16775) b_and!1223 (not mapNonEmpty!695) tp_is_empty!843 (not start!2940) (not b_next!579))
(check-sat b_and!1223 (not b_next!579))
