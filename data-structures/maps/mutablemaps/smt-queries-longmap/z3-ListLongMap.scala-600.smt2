; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15756 () Bool)

(assert start!15756)

(declare-fun b!157076 () Bool)

(declare-fun b_free!3411 () Bool)

(declare-fun b_next!3411 () Bool)

(assert (=> b!157076 (= b_free!3411 (not b_next!3411))))

(declare-fun tp!12758 () Bool)

(declare-fun b_and!9843 () Bool)

(assert (=> b!157076 (= tp!12758 b_and!9843)))

(declare-fun b!157074 () Bool)

(declare-fun e!102782 () Bool)

(declare-fun tp_is_empty!3213 () Bool)

(assert (=> b!157074 (= e!102782 tp_is_empty!3213)))

(declare-fun b!157075 () Bool)

(declare-fun e!102780 () Bool)

(assert (=> b!157075 (= e!102780 tp_is_empty!3213)))

(declare-fun e!102779 () Bool)

(declare-fun e!102781 () Bool)

(declare-datatypes ((V!3931 0))(
  ( (V!3932 (val!1651 Int)) )
))
(declare-datatypes ((ValueCell!1263 0))(
  ( (ValueCellFull!1263 (v!3512 V!3931)) (EmptyCell!1263) )
))
(declare-datatypes ((array!5478 0))(
  ( (array!5479 (arr!2596 (Array (_ BitVec 32) (_ BitVec 64))) (size!2874 (_ BitVec 32))) )
))
(declare-datatypes ((array!5480 0))(
  ( (array!5481 (arr!2597 (Array (_ BitVec 32) ValueCell!1263)) (size!2875 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1434 0))(
  ( (LongMapFixedSize!1435 (defaultEntry!3159 Int) (mask!7628 (_ BitVec 32)) (extraKeys!2900 (_ BitVec 32)) (zeroValue!3002 V!3931) (minValue!3002 V!3931) (_size!766 (_ BitVec 32)) (_keys!4934 array!5478) (_values!3142 array!5480) (_vacant!766 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1434)

(declare-fun array_inv!1641 (array!5478) Bool)

(declare-fun array_inv!1642 (array!5480) Bool)

(assert (=> b!157076 (= e!102779 (and tp!12758 tp_is_empty!3213 (array_inv!1641 (_keys!4934 thiss!1248)) (array_inv!1642 (_values!3142 thiss!1248)) e!102781))))

(declare-fun b!157077 () Bool)

(declare-fun mapRes!5462 () Bool)

(assert (=> b!157077 (= e!102781 (and e!102782 mapRes!5462))))

(declare-fun condMapEmpty!5462 () Bool)

(declare-fun mapDefault!5462 () ValueCell!1263)

(assert (=> b!157077 (= condMapEmpty!5462 (= (arr!2597 (_values!3142 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1263)) mapDefault!5462)))))

(declare-fun mapNonEmpty!5462 () Bool)

(declare-fun tp!12757 () Bool)

(assert (=> mapNonEmpty!5462 (= mapRes!5462 (and tp!12757 e!102780))))

(declare-fun mapRest!5462 () (Array (_ BitVec 32) ValueCell!1263))

(declare-fun mapValue!5462 () ValueCell!1263)

(declare-fun mapKey!5462 () (_ BitVec 32))

(assert (=> mapNonEmpty!5462 (= (arr!2597 (_values!3142 thiss!1248)) (store mapRest!5462 mapKey!5462 mapValue!5462))))

(declare-fun b!157078 () Bool)

(declare-fun res!74270 () Bool)

(declare-fun e!102777 () Bool)

(assert (=> b!157078 (=> (not res!74270) (not e!102777))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157078 (= res!74270 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157079 () Bool)

(declare-fun e!102776 () Bool)

(assert (=> b!157079 (= e!102776 true)))

(declare-fun lt!81674 () Bool)

(declare-fun lt!81673 () LongMapFixedSize!1434)

(declare-datatypes ((tuple2!2840 0))(
  ( (tuple2!2841 (_1!1430 (_ BitVec 64)) (_2!1430 V!3931)) )
))
(declare-datatypes ((List!1887 0))(
  ( (Nil!1884) (Cons!1883 (h!2492 tuple2!2840) (t!6697 List!1887)) )
))
(declare-datatypes ((ListLongMap!1849 0))(
  ( (ListLongMap!1850 (toList!940 List!1887)) )
))
(declare-fun contains!968 (ListLongMap!1849 (_ BitVec 64)) Bool)

(declare-fun map!1567 (LongMapFixedSize!1434) ListLongMap!1849)

(assert (=> b!157079 (= lt!81674 (contains!968 (map!1567 lt!81673) key!828))))

(declare-fun b!157080 () Bool)

(assert (=> b!157080 (= e!102777 (not e!102776))))

(declare-fun res!74272 () Bool)

(assert (=> b!157080 (=> res!74272 e!102776)))

(declare-fun valid!681 (LongMapFixedSize!1434) Bool)

(assert (=> b!157080 (= res!74272 (not (valid!681 lt!81673)))))

(declare-fun v!309 () V!3931)

(assert (=> b!157080 (= lt!81673 (LongMapFixedSize!1435 (defaultEntry!3159 thiss!1248) (mask!7628 thiss!1248) (bvor (extraKeys!2900 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3002 thiss!1248) v!309 (_size!766 thiss!1248) (_keys!4934 thiss!1248) (_values!3142 thiss!1248) (_vacant!766 thiss!1248)))))

(declare-fun +!203 (ListLongMap!1849 tuple2!2840) ListLongMap!1849)

(declare-fun getCurrentListMap!600 (array!5478 array!5480 (_ BitVec 32) (_ BitVec 32) V!3931 V!3931 (_ BitVec 32) Int) ListLongMap!1849)

(assert (=> b!157080 (= (+!203 (getCurrentListMap!600 (_keys!4934 thiss!1248) (_values!3142 thiss!1248) (mask!7628 thiss!1248) (extraKeys!2900 thiss!1248) (zeroValue!3002 thiss!1248) (minValue!3002 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3159 thiss!1248)) (tuple2!2841 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!600 (_keys!4934 thiss!1248) (_values!3142 thiss!1248) (mask!7628 thiss!1248) (bvor (extraKeys!2900 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3002 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3159 thiss!1248)))))

(declare-datatypes ((Unit!4958 0))(
  ( (Unit!4959) )
))
(declare-fun lt!81672 () Unit!4958)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!75 (array!5478 array!5480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3931 V!3931 V!3931 Int) Unit!4958)

(assert (=> b!157080 (= lt!81672 (lemmaChangeLongMinValueKeyThenAddPairToListMap!75 (_keys!4934 thiss!1248) (_values!3142 thiss!1248) (mask!7628 thiss!1248) (extraKeys!2900 thiss!1248) (bvor (extraKeys!2900 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3002 thiss!1248) (minValue!3002 thiss!1248) v!309 (defaultEntry!3159 thiss!1248)))))

(declare-fun res!74271 () Bool)

(assert (=> start!15756 (=> (not res!74271) (not e!102777))))

(assert (=> start!15756 (= res!74271 (valid!681 thiss!1248))))

(assert (=> start!15756 e!102777))

(assert (=> start!15756 e!102779))

(assert (=> start!15756 true))

(assert (=> start!15756 tp_is_empty!3213))

(declare-fun mapIsEmpty!5462 () Bool)

(assert (=> mapIsEmpty!5462 mapRes!5462))

(assert (= (and start!15756 res!74271) b!157078))

(assert (= (and b!157078 res!74270) b!157080))

(assert (= (and b!157080 (not res!74272)) b!157079))

(assert (= (and b!157077 condMapEmpty!5462) mapIsEmpty!5462))

(assert (= (and b!157077 (not condMapEmpty!5462)) mapNonEmpty!5462))

(get-info :version)

(assert (= (and mapNonEmpty!5462 ((_ is ValueCellFull!1263) mapValue!5462)) b!157075))

(assert (= (and b!157077 ((_ is ValueCellFull!1263) mapDefault!5462)) b!157074))

(assert (= b!157076 b!157077))

(assert (= start!15756 b!157076))

(declare-fun m!190371 () Bool)

(assert (=> start!15756 m!190371))

(declare-fun m!190373 () Bool)

(assert (=> b!157076 m!190373))

(declare-fun m!190375 () Bool)

(assert (=> b!157076 m!190375))

(declare-fun m!190377 () Bool)

(assert (=> b!157079 m!190377))

(assert (=> b!157079 m!190377))

(declare-fun m!190379 () Bool)

(assert (=> b!157079 m!190379))

(declare-fun m!190381 () Bool)

(assert (=> b!157080 m!190381))

(declare-fun m!190383 () Bool)

(assert (=> b!157080 m!190383))

(declare-fun m!190385 () Bool)

(assert (=> b!157080 m!190385))

(declare-fun m!190387 () Bool)

(assert (=> b!157080 m!190387))

(assert (=> b!157080 m!190381))

(declare-fun m!190389 () Bool)

(assert (=> b!157080 m!190389))

(declare-fun m!190391 () Bool)

(assert (=> mapNonEmpty!5462 m!190391))

(check-sat (not mapNonEmpty!5462) tp_is_empty!3213 (not b!157079) (not b!157076) (not b_next!3411) (not b!157080) b_and!9843 (not start!15756))
(check-sat b_and!9843 (not b_next!3411))
