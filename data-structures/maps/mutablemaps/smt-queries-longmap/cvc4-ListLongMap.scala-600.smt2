; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15758 () Bool)

(assert start!15758)

(declare-fun b!157099 () Bool)

(declare-fun b_free!3413 () Bool)

(declare-fun b_next!3413 () Bool)

(assert (=> b!157099 (= b_free!3413 (not b_next!3413))))

(declare-fun tp!12763 () Bool)

(declare-fun b_and!9845 () Bool)

(assert (=> b!157099 (= tp!12763 b_and!9845)))

(declare-fun b!157095 () Bool)

(declare-fun e!102797 () Bool)

(declare-fun tp_is_empty!3215 () Bool)

(assert (=> b!157095 (= e!102797 tp_is_empty!3215)))

(declare-fun b!157097 () Bool)

(declare-fun e!102801 () Bool)

(declare-fun e!102800 () Bool)

(assert (=> b!157097 (= e!102801 (not e!102800))))

(declare-fun res!74280 () Bool)

(assert (=> b!157097 (=> res!74280 e!102800)))

(declare-datatypes ((V!3933 0))(
  ( (V!3934 (val!1652 Int)) )
))
(declare-datatypes ((ValueCell!1264 0))(
  ( (ValueCellFull!1264 (v!3513 V!3933)) (EmptyCell!1264) )
))
(declare-datatypes ((array!5482 0))(
  ( (array!5483 (arr!2598 (Array (_ BitVec 32) (_ BitVec 64))) (size!2876 (_ BitVec 32))) )
))
(declare-datatypes ((array!5484 0))(
  ( (array!5485 (arr!2599 (Array (_ BitVec 32) ValueCell!1264)) (size!2877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1436 0))(
  ( (LongMapFixedSize!1437 (defaultEntry!3160 Int) (mask!7629 (_ BitVec 32)) (extraKeys!2901 (_ BitVec 32)) (zeroValue!3003 V!3933) (minValue!3003 V!3933) (_size!767 (_ BitVec 32)) (_keys!4935 array!5482) (_values!3143 array!5484) (_vacant!767 (_ BitVec 32))) )
))
(declare-fun lt!81681 () LongMapFixedSize!1436)

(declare-fun valid!682 (LongMapFixedSize!1436) Bool)

(assert (=> b!157097 (= res!74280 (not (valid!682 lt!81681)))))

(declare-fun thiss!1248 () LongMapFixedSize!1436)

(declare-fun v!309 () V!3933)

(assert (=> b!157097 (= lt!81681 (LongMapFixedSize!1437 (defaultEntry!3160 thiss!1248) (mask!7629 thiss!1248) (bvor (extraKeys!2901 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3003 thiss!1248) v!309 (_size!767 thiss!1248) (_keys!4935 thiss!1248) (_values!3143 thiss!1248) (_vacant!767 thiss!1248)))))

(declare-datatypes ((tuple2!2842 0))(
  ( (tuple2!2843 (_1!1431 (_ BitVec 64)) (_2!1431 V!3933)) )
))
(declare-datatypes ((List!1888 0))(
  ( (Nil!1885) (Cons!1884 (h!2493 tuple2!2842) (t!6698 List!1888)) )
))
(declare-datatypes ((ListLongMap!1851 0))(
  ( (ListLongMap!1852 (toList!941 List!1888)) )
))
(declare-fun +!204 (ListLongMap!1851 tuple2!2842) ListLongMap!1851)

(declare-fun getCurrentListMap!601 (array!5482 array!5484 (_ BitVec 32) (_ BitVec 32) V!3933 V!3933 (_ BitVec 32) Int) ListLongMap!1851)

(assert (=> b!157097 (= (+!204 (getCurrentListMap!601 (_keys!4935 thiss!1248) (_values!3143 thiss!1248) (mask!7629 thiss!1248) (extraKeys!2901 thiss!1248) (zeroValue!3003 thiss!1248) (minValue!3003 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3160 thiss!1248)) (tuple2!2843 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!601 (_keys!4935 thiss!1248) (_values!3143 thiss!1248) (mask!7629 thiss!1248) (bvor (extraKeys!2901 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3003 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3160 thiss!1248)))))

(declare-datatypes ((Unit!4960 0))(
  ( (Unit!4961) )
))
(declare-fun lt!81683 () Unit!4960)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!76 (array!5482 array!5484 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3933 V!3933 V!3933 Int) Unit!4960)

(assert (=> b!157097 (= lt!81683 (lemmaChangeLongMinValueKeyThenAddPairToListMap!76 (_keys!4935 thiss!1248) (_values!3143 thiss!1248) (mask!7629 thiss!1248) (extraKeys!2901 thiss!1248) (bvor (extraKeys!2901 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3003 thiss!1248) (minValue!3003 thiss!1248) v!309 (defaultEntry!3160 thiss!1248)))))

(declare-fun b!157098 () Bool)

(declare-fun e!102798 () Bool)

(assert (=> b!157098 (= e!102798 tp_is_empty!3215)))

(declare-fun mapIsEmpty!5465 () Bool)

(declare-fun mapRes!5465 () Bool)

(assert (=> mapIsEmpty!5465 mapRes!5465))

(declare-fun b!157096 () Bool)

(declare-fun res!74279 () Bool)

(assert (=> b!157096 (=> (not res!74279) (not e!102801))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157096 (= res!74279 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!74281 () Bool)

(assert (=> start!15758 (=> (not res!74281) (not e!102801))))

(assert (=> start!15758 (= res!74281 (valid!682 thiss!1248))))

(assert (=> start!15758 e!102801))

(declare-fun e!102802 () Bool)

(assert (=> start!15758 e!102802))

(assert (=> start!15758 true))

(assert (=> start!15758 tp_is_empty!3215))

(declare-fun mapNonEmpty!5465 () Bool)

(declare-fun tp!12764 () Bool)

(assert (=> mapNonEmpty!5465 (= mapRes!5465 (and tp!12764 e!102797))))

(declare-fun mapValue!5465 () ValueCell!1264)

(declare-fun mapRest!5465 () (Array (_ BitVec 32) ValueCell!1264))

(declare-fun mapKey!5465 () (_ BitVec 32))

(assert (=> mapNonEmpty!5465 (= (arr!2599 (_values!3143 thiss!1248)) (store mapRest!5465 mapKey!5465 mapValue!5465))))

(declare-fun e!102799 () Bool)

(declare-fun array_inv!1643 (array!5482) Bool)

(declare-fun array_inv!1644 (array!5484) Bool)

(assert (=> b!157099 (= e!102802 (and tp!12763 tp_is_empty!3215 (array_inv!1643 (_keys!4935 thiss!1248)) (array_inv!1644 (_values!3143 thiss!1248)) e!102799))))

(declare-fun b!157100 () Bool)

(assert (=> b!157100 (= e!102799 (and e!102798 mapRes!5465))))

(declare-fun condMapEmpty!5465 () Bool)

(declare-fun mapDefault!5465 () ValueCell!1264)

