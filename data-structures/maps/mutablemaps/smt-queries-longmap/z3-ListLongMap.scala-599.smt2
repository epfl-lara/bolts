; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15750 () Bool)

(assert start!15750)

(declare-fun b!157020 () Bool)

(declare-fun b_free!3405 () Bool)

(declare-fun b_next!3405 () Bool)

(assert (=> b!157020 (= b_free!3405 (not b_next!3405))))

(declare-fun tp!12739 () Bool)

(declare-fun b_and!9837 () Bool)

(assert (=> b!157020 (= tp!12739 b_and!9837)))

(declare-fun res!74248 () Bool)

(declare-fun e!102722 () Bool)

(assert (=> start!15750 (=> (not res!74248) (not e!102722))))

(declare-datatypes ((V!3923 0))(
  ( (V!3924 (val!1648 Int)) )
))
(declare-datatypes ((ValueCell!1260 0))(
  ( (ValueCellFull!1260 (v!3509 V!3923)) (EmptyCell!1260) )
))
(declare-datatypes ((array!5466 0))(
  ( (array!5467 (arr!2590 (Array (_ BitVec 32) (_ BitVec 64))) (size!2868 (_ BitVec 32))) )
))
(declare-datatypes ((array!5468 0))(
  ( (array!5469 (arr!2591 (Array (_ BitVec 32) ValueCell!1260)) (size!2869 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1428 0))(
  ( (LongMapFixedSize!1429 (defaultEntry!3156 Int) (mask!7623 (_ BitVec 32)) (extraKeys!2897 (_ BitVec 32)) (zeroValue!2999 V!3923) (minValue!2999 V!3923) (_size!763 (_ BitVec 32)) (_keys!4931 array!5466) (_values!3139 array!5468) (_vacant!763 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1428)

(declare-fun valid!678 (LongMapFixedSize!1428) Bool)

(assert (=> start!15750 (= res!74248 (valid!678 thiss!1248))))

(assert (=> start!15750 e!102722))

(declare-fun e!102718 () Bool)

(assert (=> start!15750 e!102718))

(assert (=> start!15750 true))

(declare-fun tp_is_empty!3207 () Bool)

(assert (=> start!15750 tp_is_empty!3207))

(declare-fun b!157015 () Bool)

(assert (=> b!157015 (= e!102722 (not true))))

(declare-fun lt!81650 () Bool)

(declare-fun v!309 () V!3923)

(assert (=> b!157015 (= lt!81650 (valid!678 (LongMapFixedSize!1429 (defaultEntry!3156 thiss!1248) (mask!7623 thiss!1248) (bvor (extraKeys!2897 thiss!1248) #b00000000000000000000000000000010) (zeroValue!2999 thiss!1248) v!309 (_size!763 thiss!1248) (_keys!4931 thiss!1248) (_values!3139 thiss!1248) (_vacant!763 thiss!1248))))))

(declare-datatypes ((tuple2!2834 0))(
  ( (tuple2!2835 (_1!1427 (_ BitVec 64)) (_2!1427 V!3923)) )
))
(declare-datatypes ((List!1884 0))(
  ( (Nil!1881) (Cons!1880 (h!2489 tuple2!2834) (t!6694 List!1884)) )
))
(declare-datatypes ((ListLongMap!1843 0))(
  ( (ListLongMap!1844 (toList!937 List!1884)) )
))
(declare-fun +!200 (ListLongMap!1843 tuple2!2834) ListLongMap!1843)

(declare-fun getCurrentListMap!597 (array!5466 array!5468 (_ BitVec 32) (_ BitVec 32) V!3923 V!3923 (_ BitVec 32) Int) ListLongMap!1843)

(assert (=> b!157015 (= (+!200 (getCurrentListMap!597 (_keys!4931 thiss!1248) (_values!3139 thiss!1248) (mask!7623 thiss!1248) (extraKeys!2897 thiss!1248) (zeroValue!2999 thiss!1248) (minValue!2999 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3156 thiss!1248)) (tuple2!2835 #b1000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!597 (_keys!4931 thiss!1248) (_values!3139 thiss!1248) (mask!7623 thiss!1248) (bvor (extraKeys!2897 thiss!1248) #b00000000000000000000000000000010) (zeroValue!2999 thiss!1248) v!309 #b00000000000000000000000000000000 (defaultEntry!3156 thiss!1248)))))

(declare-datatypes ((Unit!4952 0))(
  ( (Unit!4953) )
))
(declare-fun lt!81649 () Unit!4952)

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!72 (array!5466 array!5468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3923 V!3923 V!3923 Int) Unit!4952)

(assert (=> b!157015 (= lt!81649 (lemmaChangeLongMinValueKeyThenAddPairToListMap!72 (_keys!4931 thiss!1248) (_values!3139 thiss!1248) (mask!7623 thiss!1248) (extraKeys!2897 thiss!1248) (bvor (extraKeys!2897 thiss!1248) #b00000000000000000000000000000010) (zeroValue!2999 thiss!1248) (minValue!2999 thiss!1248) v!309 (defaultEntry!3156 thiss!1248)))))

(declare-fun b!157016 () Bool)

(declare-fun e!102717 () Bool)

(assert (=> b!157016 (= e!102717 tp_is_empty!3207)))

(declare-fun mapIsEmpty!5453 () Bool)

(declare-fun mapRes!5453 () Bool)

(assert (=> mapIsEmpty!5453 mapRes!5453))

(declare-fun b!157017 () Bool)

(declare-fun e!102719 () Bool)

(assert (=> b!157017 (= e!102719 tp_is_empty!3207)))

(declare-fun b!157018 () Bool)

(declare-fun e!102721 () Bool)

(assert (=> b!157018 (= e!102721 (and e!102719 mapRes!5453))))

(declare-fun condMapEmpty!5453 () Bool)

(declare-fun mapDefault!5453 () ValueCell!1260)

(assert (=> b!157018 (= condMapEmpty!5453 (= (arr!2591 (_values!3139 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1260)) mapDefault!5453)))))

(declare-fun mapNonEmpty!5453 () Bool)

(declare-fun tp!12740 () Bool)

(assert (=> mapNonEmpty!5453 (= mapRes!5453 (and tp!12740 e!102717))))

(declare-fun mapRest!5453 () (Array (_ BitVec 32) ValueCell!1260))

(declare-fun mapKey!5453 () (_ BitVec 32))

(declare-fun mapValue!5453 () ValueCell!1260)

(assert (=> mapNonEmpty!5453 (= (arr!2591 (_values!3139 thiss!1248)) (store mapRest!5453 mapKey!5453 mapValue!5453))))

(declare-fun b!157019 () Bool)

(declare-fun res!74247 () Bool)

(assert (=> b!157019 (=> (not res!74247) (not e!102722))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157019 (= res!74247 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun array_inv!1635 (array!5466) Bool)

(declare-fun array_inv!1636 (array!5468) Bool)

(assert (=> b!157020 (= e!102718 (and tp!12739 tp_is_empty!3207 (array_inv!1635 (_keys!4931 thiss!1248)) (array_inv!1636 (_values!3139 thiss!1248)) e!102721))))

(assert (= (and start!15750 res!74248) b!157019))

(assert (= (and b!157019 res!74247) b!157015))

(assert (= (and b!157018 condMapEmpty!5453) mapIsEmpty!5453))

(assert (= (and b!157018 (not condMapEmpty!5453)) mapNonEmpty!5453))

(get-info :version)

(assert (= (and mapNonEmpty!5453 ((_ is ValueCellFull!1260) mapValue!5453)) b!157016))

(assert (= (and b!157018 ((_ is ValueCellFull!1260) mapDefault!5453)) b!157017))

(assert (= b!157020 b!157018))

(assert (= start!15750 b!157020))

(declare-fun m!190313 () Bool)

(assert (=> start!15750 m!190313))

(declare-fun m!190315 () Bool)

(assert (=> b!157015 m!190315))

(declare-fun m!190317 () Bool)

(assert (=> b!157015 m!190317))

(declare-fun m!190319 () Bool)

(assert (=> b!157015 m!190319))

(declare-fun m!190321 () Bool)

(assert (=> b!157015 m!190321))

(assert (=> b!157015 m!190315))

(declare-fun m!190323 () Bool)

(assert (=> b!157015 m!190323))

(declare-fun m!190325 () Bool)

(assert (=> mapNonEmpty!5453 m!190325))

(declare-fun m!190327 () Bool)

(assert (=> b!157020 m!190327))

(declare-fun m!190329 () Bool)

(assert (=> b!157020 m!190329))

(check-sat b_and!9837 (not b_next!3405) (not b!157015) (not start!15750) (not b!157020) tp_is_empty!3207 (not mapNonEmpty!5453))
(check-sat b_and!9837 (not b_next!3405))
