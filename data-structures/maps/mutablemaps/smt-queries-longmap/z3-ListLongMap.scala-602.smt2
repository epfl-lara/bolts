; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15768 () Bool)

(assert start!15768)

(declare-fun b!157199 () Bool)

(declare-fun b_free!3423 () Bool)

(declare-fun b_next!3423 () Bool)

(assert (=> b!157199 (= b_free!3423 (not b_next!3423))))

(declare-fun tp!12793 () Bool)

(declare-fun b_and!9855 () Bool)

(assert (=> b!157199 (= tp!12793 b_and!9855)))

(declare-fun b!157195 () Bool)

(declare-fun res!74320 () Bool)

(declare-fun e!102902 () Bool)

(assert (=> b!157195 (=> (not res!74320) (not e!102902))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157195 (= res!74320 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!157196 () Bool)

(declare-fun e!102901 () Bool)

(declare-fun tp_is_empty!3225 () Bool)

(assert (=> b!157196 (= e!102901 tp_is_empty!3225)))

(declare-fun b!157197 () Bool)

(declare-fun e!102898 () Bool)

(assert (=> b!157197 (= e!102898 tp_is_empty!3225)))

(declare-fun b!157198 () Bool)

(assert (=> b!157198 (= e!102902 (not true))))

(declare-fun lt!81722 () Bool)

(declare-datatypes ((V!3947 0))(
  ( (V!3948 (val!1657 Int)) )
))
(declare-datatypes ((ValueCell!1269 0))(
  ( (ValueCellFull!1269 (v!3518 V!3947)) (EmptyCell!1269) )
))
(declare-datatypes ((array!5502 0))(
  ( (array!5503 (arr!2608 (Array (_ BitVec 32) (_ BitVec 64))) (size!2886 (_ BitVec 32))) )
))
(declare-datatypes ((array!5504 0))(
  ( (array!5505 (arr!2609 (Array (_ BitVec 32) ValueCell!1269)) (size!2887 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1446 0))(
  ( (LongMapFixedSize!1447 (defaultEntry!3165 Int) (mask!7638 (_ BitVec 32)) (extraKeys!2906 (_ BitVec 32)) (zeroValue!3008 V!3947) (minValue!3008 V!3947) (_size!772 (_ BitVec 32)) (_keys!4940 array!5502) (_values!3148 array!5504) (_vacant!772 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1446)

(declare-fun v!309 () V!3947)

(declare-fun valid!686 (LongMapFixedSize!1446) Bool)

(assert (=> b!157198 (= lt!81722 (valid!686 (LongMapFixedSize!1447 (defaultEntry!3165 thiss!1248) (mask!7638 thiss!1248) (bvor (extraKeys!2906 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3008 thiss!1248) v!309 (_size!772 thiss!1248) (_keys!4940 thiss!1248) (_values!3148 thiss!1248) (_vacant!772 thiss!1248))))))

(declare-datatypes ((tuple2!2850 0))(
  ( (tuple2!2851 (_1!1435 (_ BitVec 64)) (_2!1435 V!3947)) )
))
(declare-datatypes ((List!1892 0))(
  ( (Nil!1889) (Cons!1888 (h!2497 tuple2!2850) (t!6702 List!1892)) )
))
(declare-datatypes ((ListLongMap!1859 0))(
  ( (ListLongMap!1860 (toList!945 List!1892)) )
))
(declare-fun +!208 (ListLongMap!1859 tuple2!2850) ListLongMap!1859)

(declare-fun getCurrentListMap!605 (array!5502 array!5504 (_ BitVec 32) (_ BitVec 32) V!3947 V!3947 (_ BitVec 32) Int) ListLongMap!1859)

(assert (=> b!157198 (= (+!208 (getCurrentListMap!605 (_keys!4940 thiss!1248) (_values!3148 thiss!1248) (mask!7638 thiss!1248) (extraKeys!2906 thiss!1248) (zeroValue!3008 thiss!1248) (minValue!3008 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3165 thiss!1248)) (tuple2!2851 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!605 (_keys!4940 thiss!1248) (_values!3148 thiss!1248) (mask!7638 thiss!1248) (bvor (extraKeys!2906 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3008 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3165 thiss!1248)))))

(declare-datatypes ((Unit!4968 0))(
  ( (Unit!4969) )
))
(declare-fun lt!81721 () Unit!4968)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!80 (array!5502 array!5504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3947 V!3947 V!3947 Int) Unit!4968)

(assert (=> b!157198 (= lt!81721 (lemmaChangeLongMinValueKeyThenAddPairToListMap!80 (_keys!4940 thiss!1248) (_values!3148 thiss!1248) (mask!7638 thiss!1248) (extraKeys!2906 thiss!1248) (bvor (extraKeys!2906 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3008 thiss!1248) (minValue!3008 thiss!1248) v!309 (defaultEntry!3165 thiss!1248)))))

(declare-fun mapIsEmpty!5480 () Bool)

(declare-fun mapRes!5480 () Bool)

(assert (=> mapIsEmpty!5480 mapRes!5480))

(declare-fun b!157200 () Bool)

(declare-fun e!102897 () Bool)

(assert (=> b!157200 (= e!102897 (and e!102898 mapRes!5480))))

(declare-fun condMapEmpty!5480 () Bool)

(declare-fun mapDefault!5480 () ValueCell!1269)

(assert (=> b!157200 (= condMapEmpty!5480 (= (arr!2609 (_values!3148 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1269)) mapDefault!5480)))))

(declare-fun mapNonEmpty!5480 () Bool)

(declare-fun tp!12794 () Bool)

(assert (=> mapNonEmpty!5480 (= mapRes!5480 (and tp!12794 e!102901))))

(declare-fun mapKey!5480 () (_ BitVec 32))

(declare-fun mapValue!5480 () ValueCell!1269)

(declare-fun mapRest!5480 () (Array (_ BitVec 32) ValueCell!1269))

(assert (=> mapNonEmpty!5480 (= (arr!2609 (_values!3148 thiss!1248)) (store mapRest!5480 mapKey!5480 mapValue!5480))))

(declare-fun res!74319 () Bool)

(assert (=> start!15768 (=> (not res!74319) (not e!102902))))

(assert (=> start!15768 (= res!74319 (valid!686 thiss!1248))))

(assert (=> start!15768 e!102902))

(declare-fun e!102900 () Bool)

(assert (=> start!15768 e!102900))

(assert (=> start!15768 true))

(assert (=> start!15768 tp_is_empty!3225))

(declare-fun array_inv!1649 (array!5502) Bool)

(declare-fun array_inv!1650 (array!5504) Bool)

(assert (=> b!157199 (= e!102900 (and tp!12793 tp_is_empty!3225 (array_inv!1649 (_keys!4940 thiss!1248)) (array_inv!1650 (_values!3148 thiss!1248)) e!102897))))

(assert (= (and start!15768 res!74319) b!157195))

(assert (= (and b!157195 res!74320) b!157198))

(assert (= (and b!157200 condMapEmpty!5480) mapIsEmpty!5480))

(assert (= (and b!157200 (not condMapEmpty!5480)) mapNonEmpty!5480))

(get-info :version)

(assert (= (and mapNonEmpty!5480 ((_ is ValueCellFull!1269) mapValue!5480)) b!157196))

(assert (= (and b!157200 ((_ is ValueCellFull!1269) mapDefault!5480)) b!157197))

(assert (= b!157199 b!157200))

(assert (= start!15768 b!157199))

(declare-fun m!190499 () Bool)

(assert (=> b!157198 m!190499))

(declare-fun m!190501 () Bool)

(assert (=> b!157198 m!190501))

(declare-fun m!190503 () Bool)

(assert (=> b!157198 m!190503))

(declare-fun m!190505 () Bool)

(assert (=> b!157198 m!190505))

(assert (=> b!157198 m!190499))

(declare-fun m!190507 () Bool)

(assert (=> b!157198 m!190507))

(declare-fun m!190509 () Bool)

(assert (=> mapNonEmpty!5480 m!190509))

(declare-fun m!190511 () Bool)

(assert (=> start!15768 m!190511))

(declare-fun m!190513 () Bool)

(assert (=> b!157199 m!190513))

(declare-fun m!190515 () Bool)

(assert (=> b!157199 m!190515))

(check-sat (not b!157199) (not b_next!3423) b_and!9855 (not mapNonEmpty!5480) (not b!157198) (not start!15768) tp_is_empty!3225)
(check-sat b_and!9855 (not b_next!3423))
