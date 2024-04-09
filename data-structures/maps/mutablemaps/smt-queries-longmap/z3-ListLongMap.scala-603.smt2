; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15774 () Bool)

(assert start!15774)

(declare-fun b!157251 () Bool)

(declare-fun b_free!3429 () Bool)

(declare-fun b_next!3429 () Bool)

(assert (=> b!157251 (= b_free!3429 (not b_next!3429))))

(declare-fun tp!12811 () Bool)

(declare-fun b_and!9861 () Bool)

(assert (=> b!157251 (= tp!12811 b_and!9861)))

(declare-fun b!157249 () Bool)

(declare-fun e!102952 () Bool)

(assert (=> b!157249 (= e!102952 (not true))))

(declare-fun lt!81739 () Bool)

(declare-datatypes ((V!3955 0))(
  ( (V!3956 (val!1660 Int)) )
))
(declare-datatypes ((ValueCell!1272 0))(
  ( (ValueCellFull!1272 (v!3521 V!3955)) (EmptyCell!1272) )
))
(declare-datatypes ((array!5514 0))(
  ( (array!5515 (arr!2614 (Array (_ BitVec 32) (_ BitVec 64))) (size!2892 (_ BitVec 32))) )
))
(declare-datatypes ((array!5516 0))(
  ( (array!5517 (arr!2615 (Array (_ BitVec 32) ValueCell!1272)) (size!2893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1452 0))(
  ( (LongMapFixedSize!1453 (defaultEntry!3168 Int) (mask!7643 (_ BitVec 32)) (extraKeys!2909 (_ BitVec 32)) (zeroValue!3011 V!3955) (minValue!3011 V!3955) (_size!775 (_ BitVec 32)) (_keys!4943 array!5514) (_values!3151 array!5516) (_vacant!775 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1452)

(declare-fun v!309 () V!3955)

(declare-fun valid!689 (LongMapFixedSize!1452) Bool)

(assert (=> b!157249 (= lt!81739 (valid!689 (LongMapFixedSize!1453 (defaultEntry!3168 thiss!1248) (mask!7643 thiss!1248) (bvor (extraKeys!2909 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3011 thiss!1248) v!309 (_size!775 thiss!1248) (_keys!4943 thiss!1248) (_values!3151 thiss!1248) (_vacant!775 thiss!1248))))))

(declare-datatypes ((tuple2!2856 0))(
  ( (tuple2!2857 (_1!1438 (_ BitVec 64)) (_2!1438 V!3955)) )
))
(declare-datatypes ((List!1895 0))(
  ( (Nil!1892) (Cons!1891 (h!2500 tuple2!2856) (t!6705 List!1895)) )
))
(declare-datatypes ((ListLongMap!1865 0))(
  ( (ListLongMap!1866 (toList!948 List!1895)) )
))
(declare-fun +!211 (ListLongMap!1865 tuple2!2856) ListLongMap!1865)

(declare-fun getCurrentListMap!608 (array!5514 array!5516 (_ BitVec 32) (_ BitVec 32) V!3955 V!3955 (_ BitVec 32) Int) ListLongMap!1865)

(assert (=> b!157249 (= (+!211 (getCurrentListMap!608 (_keys!4943 thiss!1248) (_values!3151 thiss!1248) (mask!7643 thiss!1248) (extraKeys!2909 thiss!1248) (zeroValue!3011 thiss!1248) (minValue!3011 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3168 thiss!1248)) (tuple2!2857 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!608 (_keys!4943 thiss!1248) (_values!3151 thiss!1248) (mask!7643 thiss!1248) (bvor (extraKeys!2909 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3011 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3168 thiss!1248)))))

(declare-datatypes ((Unit!4974 0))(
  ( (Unit!4975) )
))
(declare-fun lt!81740 () Unit!4974)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!83 (array!5514 array!5516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3955 V!3955 V!3955 Int) Unit!4974)

(assert (=> b!157249 (= lt!81740 (lemmaChangeLongMinValueKeyThenAddPairToListMap!83 (_keys!4943 thiss!1248) (_values!3151 thiss!1248) (mask!7643 thiss!1248) (extraKeys!2909 thiss!1248) (bvor (extraKeys!2909 thiss!1248) #b00000000000000000000000000000010) (zeroValue!3011 thiss!1248) (minValue!3011 thiss!1248) v!309 (defaultEntry!3168 thiss!1248)))))

(declare-fun b!157250 () Bool)

(declare-fun e!102956 () Bool)

(declare-fun tp_is_empty!3231 () Bool)

(assert (=> b!157250 (= e!102956 tp_is_empty!3231)))

(declare-fun mapNonEmpty!5489 () Bool)

(declare-fun mapRes!5489 () Bool)

(declare-fun tp!12812 () Bool)

(declare-fun e!102954 () Bool)

(assert (=> mapNonEmpty!5489 (= mapRes!5489 (and tp!12812 e!102954))))

(declare-fun mapRest!5489 () (Array (_ BitVec 32) ValueCell!1272))

(declare-fun mapKey!5489 () (_ BitVec 32))

(declare-fun mapValue!5489 () ValueCell!1272)

(assert (=> mapNonEmpty!5489 (= (arr!2615 (_values!3151 thiss!1248)) (store mapRest!5489 mapKey!5489 mapValue!5489))))

(declare-fun e!102955 () Bool)

(declare-fun e!102951 () Bool)

(declare-fun array_inv!1653 (array!5514) Bool)

(declare-fun array_inv!1654 (array!5516) Bool)

(assert (=> b!157251 (= e!102955 (and tp!12811 tp_is_empty!3231 (array_inv!1653 (_keys!4943 thiss!1248)) (array_inv!1654 (_values!3151 thiss!1248)) e!102951))))

(declare-fun b!157252 () Bool)

(assert (=> b!157252 (= e!102954 tp_is_empty!3231)))

(declare-fun b!157253 () Bool)

(assert (=> b!157253 (= e!102951 (and e!102956 mapRes!5489))))

(declare-fun condMapEmpty!5489 () Bool)

(declare-fun mapDefault!5489 () ValueCell!1272)

(assert (=> b!157253 (= condMapEmpty!5489 (= (arr!2615 (_values!3151 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1272)) mapDefault!5489)))))

(declare-fun res!74338 () Bool)

(assert (=> start!15774 (=> (not res!74338) (not e!102952))))

(assert (=> start!15774 (= res!74338 (valid!689 thiss!1248))))

(assert (=> start!15774 e!102952))

(assert (=> start!15774 e!102955))

(assert (=> start!15774 true))

(assert (=> start!15774 tp_is_empty!3231))

(declare-fun b!157254 () Bool)

(declare-fun res!74337 () Bool)

(assert (=> b!157254 (=> (not res!74337) (not e!102952))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157254 (= res!74337 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5489 () Bool)

(assert (=> mapIsEmpty!5489 mapRes!5489))

(assert (= (and start!15774 res!74338) b!157254))

(assert (= (and b!157254 res!74337) b!157249))

(assert (= (and b!157253 condMapEmpty!5489) mapIsEmpty!5489))

(assert (= (and b!157253 (not condMapEmpty!5489)) mapNonEmpty!5489))

(get-info :version)

(assert (= (and mapNonEmpty!5489 ((_ is ValueCellFull!1272) mapValue!5489)) b!157252))

(assert (= (and b!157253 ((_ is ValueCellFull!1272) mapDefault!5489)) b!157250))

(assert (= b!157251 b!157253))

(assert (= start!15774 b!157251))

(declare-fun m!190553 () Bool)

(assert (=> b!157249 m!190553))

(declare-fun m!190555 () Bool)

(assert (=> b!157249 m!190555))

(declare-fun m!190557 () Bool)

(assert (=> b!157249 m!190557))

(declare-fun m!190559 () Bool)

(assert (=> b!157249 m!190559))

(assert (=> b!157249 m!190553))

(declare-fun m!190561 () Bool)

(assert (=> b!157249 m!190561))

(declare-fun m!190563 () Bool)

(assert (=> mapNonEmpty!5489 m!190563))

(declare-fun m!190565 () Bool)

(assert (=> b!157251 m!190565))

(declare-fun m!190567 () Bool)

(assert (=> b!157251 m!190567))

(declare-fun m!190569 () Bool)

(assert (=> start!15774 m!190569))

(check-sat (not b_next!3429) tp_is_empty!3231 b_and!9861 (not start!15774) (not mapNonEmpty!5489) (not b!157249) (not b!157251))
(check-sat b_and!9861 (not b_next!3429))
