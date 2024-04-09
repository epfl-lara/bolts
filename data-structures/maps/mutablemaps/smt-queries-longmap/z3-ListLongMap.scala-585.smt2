; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15666 () Bool)

(assert start!15666)

(declare-fun b!155938 () Bool)

(declare-fun b_free!3321 () Bool)

(declare-fun b_next!3321 () Bool)

(assert (=> b!155938 (= b_free!3321 (not b_next!3321))))

(declare-fun tp!12487 () Bool)

(declare-fun b_and!9753 () Bool)

(assert (=> b!155938 (= tp!12487 b_and!9753)))

(declare-fun b!155935 () Bool)

(declare-fun e!101965 () Bool)

(assert (=> b!155935 (= e!101965 (not true))))

(declare-fun lt!81506 () Bool)

(declare-datatypes ((V!3811 0))(
  ( (V!3812 (val!1606 Int)) )
))
(declare-datatypes ((ValueCell!1218 0))(
  ( (ValueCellFull!1218 (v!3467 V!3811)) (EmptyCell!1218) )
))
(declare-datatypes ((array!5298 0))(
  ( (array!5299 (arr!2506 (Array (_ BitVec 32) (_ BitVec 64))) (size!2784 (_ BitVec 32))) )
))
(declare-datatypes ((array!5300 0))(
  ( (array!5301 (arr!2507 (Array (_ BitVec 32) ValueCell!1218)) (size!2785 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1344 0))(
  ( (LongMapFixedSize!1345 (defaultEntry!3114 Int) (mask!7553 (_ BitVec 32)) (extraKeys!2855 (_ BitVec 32)) (zeroValue!2957 V!3811) (minValue!2957 V!3811) (_size!721 (_ BitVec 32)) (_keys!4889 array!5298) (_values!3097 array!5300) (_vacant!721 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1344)

(declare-fun v!309 () V!3811)

(declare-fun valid!649 (LongMapFixedSize!1344) Bool)

(assert (=> b!155935 (= lt!81506 (valid!649 (LongMapFixedSize!1345 (defaultEntry!3114 thiss!1248) (mask!7553 thiss!1248) (bvor (extraKeys!2855 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2957 thiss!1248) (_size!721 thiss!1248) (_keys!4889 thiss!1248) (_values!3097 thiss!1248) (_vacant!721 thiss!1248))))))

(declare-datatypes ((tuple2!2828 0))(
  ( (tuple2!2829 (_1!1424 (_ BitVec 64)) (_2!1424 V!3811)) )
))
(declare-datatypes ((List!1859 0))(
  ( (Nil!1856) (Cons!1855 (h!2464 tuple2!2828) (t!6669 List!1859)) )
))
(declare-datatypes ((ListLongMap!1837 0))(
  ( (ListLongMap!1838 (toList!934 List!1859)) )
))
(declare-fun +!197 (ListLongMap!1837 tuple2!2828) ListLongMap!1837)

(declare-fun getCurrentListMap!594 (array!5298 array!5300 (_ BitVec 32) (_ BitVec 32) V!3811 V!3811 (_ BitVec 32) Int) ListLongMap!1837)

(assert (=> b!155935 (= (+!197 (getCurrentListMap!594 (_keys!4889 thiss!1248) (_values!3097 thiss!1248) (mask!7553 thiss!1248) (extraKeys!2855 thiss!1248) (zeroValue!2957 thiss!1248) (minValue!2957 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3114 thiss!1248)) (tuple2!2829 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!594 (_keys!4889 thiss!1248) (_values!3097 thiss!1248) (mask!7553 thiss!1248) (bvor (extraKeys!2855 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2957 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3114 thiss!1248)))))

(declare-datatypes ((Unit!4946 0))(
  ( (Unit!4947) )
))
(declare-fun lt!81505 () Unit!4946)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!81 (array!5298 array!5300 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3811 V!3811 V!3811 Int) Unit!4946)

(assert (=> b!155935 (= lt!81505 (lemmaChangeZeroKeyThenAddPairToListMap!81 (_keys!4889 thiss!1248) (_values!3097 thiss!1248) (mask!7553 thiss!1248) (extraKeys!2855 thiss!1248) (bvor (extraKeys!2855 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2957 thiss!1248) v!309 (minValue!2957 thiss!1248) (defaultEntry!3114 thiss!1248)))))

(declare-fun b!155936 () Bool)

(declare-fun e!101966 () Bool)

(declare-fun tp_is_empty!3123 () Bool)

(assert (=> b!155936 (= e!101966 tp_is_empty!3123)))

(declare-fun b!155937 () Bool)

(declare-fun e!101963 () Bool)

(declare-fun e!101964 () Bool)

(declare-fun mapRes!5327 () Bool)

(assert (=> b!155937 (= e!101963 (and e!101964 mapRes!5327))))

(declare-fun condMapEmpty!5327 () Bool)

(declare-fun mapDefault!5327 () ValueCell!1218)

(assert (=> b!155937 (= condMapEmpty!5327 (= (arr!2507 (_values!3097 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1218)) mapDefault!5327)))))

(declare-fun res!73671 () Bool)

(assert (=> start!15666 (=> (not res!73671) (not e!101965))))

(assert (=> start!15666 (= res!73671 (valid!649 thiss!1248))))

(assert (=> start!15666 e!101965))

(declare-fun e!101961 () Bool)

(assert (=> start!15666 e!101961))

(assert (=> start!15666 true))

(assert (=> start!15666 tp_is_empty!3123))

(declare-fun array_inv!1575 (array!5298) Bool)

(declare-fun array_inv!1576 (array!5300) Bool)

(assert (=> b!155938 (= e!101961 (and tp!12487 tp_is_empty!3123 (array_inv!1575 (_keys!4889 thiss!1248)) (array_inv!1576 (_values!3097 thiss!1248)) e!101963))))

(declare-fun b!155939 () Bool)

(assert (=> b!155939 (= e!101964 tp_is_empty!3123)))

(declare-fun mapNonEmpty!5327 () Bool)

(declare-fun tp!12488 () Bool)

(assert (=> mapNonEmpty!5327 (= mapRes!5327 (and tp!12488 e!101966))))

(declare-fun mapKey!5327 () (_ BitVec 32))

(declare-fun mapRest!5327 () (Array (_ BitVec 32) ValueCell!1218))

(declare-fun mapValue!5327 () ValueCell!1218)

(assert (=> mapNonEmpty!5327 (= (arr!2507 (_values!3097 thiss!1248)) (store mapRest!5327 mapKey!5327 mapValue!5327))))

(declare-fun mapIsEmpty!5327 () Bool)

(assert (=> mapIsEmpty!5327 mapRes!5327))

(declare-fun b!155940 () Bool)

(declare-fun res!73672 () Bool)

(assert (=> b!155940 (=> (not res!73672) (not e!101965))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155940 (= res!73672 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!15666 res!73671) b!155940))

(assert (= (and b!155940 res!73672) b!155935))

(assert (= (and b!155937 condMapEmpty!5327) mapIsEmpty!5327))

(assert (= (and b!155937 (not condMapEmpty!5327)) mapNonEmpty!5327))

(get-info :version)

(assert (= (and mapNonEmpty!5327 ((_ is ValueCellFull!1218) mapValue!5327)) b!155936))

(assert (= (and b!155937 ((_ is ValueCellFull!1218) mapDefault!5327)) b!155939))

(assert (= b!155938 b!155937))

(assert (= start!15666 b!155938))

(declare-fun m!189701 () Bool)

(assert (=> b!155935 m!189701))

(declare-fun m!189703 () Bool)

(assert (=> b!155935 m!189703))

(assert (=> b!155935 m!189701))

(declare-fun m!189705 () Bool)

(assert (=> b!155935 m!189705))

(declare-fun m!189707 () Bool)

(assert (=> b!155935 m!189707))

(declare-fun m!189709 () Bool)

(assert (=> b!155935 m!189709))

(declare-fun m!189711 () Bool)

(assert (=> start!15666 m!189711))

(declare-fun m!189713 () Bool)

(assert (=> b!155938 m!189713))

(declare-fun m!189715 () Bool)

(assert (=> b!155938 m!189715))

(declare-fun m!189717 () Bool)

(assert (=> mapNonEmpty!5327 m!189717))

(check-sat b_and!9753 tp_is_empty!3123 (not b_next!3321) (not b!155938) (not start!15666) (not b!155935) (not mapNonEmpty!5327))
(check-sat b_and!9753 (not b_next!3321))
