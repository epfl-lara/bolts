; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15672 () Bool)

(assert start!15672)

(declare-fun b!155989 () Bool)

(declare-fun b_free!3327 () Bool)

(declare-fun b_next!3327 () Bool)

(assert (=> b!155989 (= b_free!3327 (not b_next!3327))))

(declare-fun tp!12505 () Bool)

(declare-fun b_and!9759 () Bool)

(assert (=> b!155989 (= tp!12505 b_and!9759)))

(declare-fun tp_is_empty!3129 () Bool)

(declare-fun e!102016 () Bool)

(declare-fun e!102020 () Bool)

(declare-datatypes ((V!3819 0))(
  ( (V!3820 (val!1609 Int)) )
))
(declare-datatypes ((ValueCell!1221 0))(
  ( (ValueCellFull!1221 (v!3470 V!3819)) (EmptyCell!1221) )
))
(declare-datatypes ((array!5310 0))(
  ( (array!5311 (arr!2512 (Array (_ BitVec 32) (_ BitVec 64))) (size!2790 (_ BitVec 32))) )
))
(declare-datatypes ((array!5312 0))(
  ( (array!5313 (arr!2513 (Array (_ BitVec 32) ValueCell!1221)) (size!2791 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1350 0))(
  ( (LongMapFixedSize!1351 (defaultEntry!3117 Int) (mask!7558 (_ BitVec 32)) (extraKeys!2858 (_ BitVec 32)) (zeroValue!2960 V!3819) (minValue!2960 V!3819) (_size!724 (_ BitVec 32)) (_keys!4892 array!5310) (_values!3100 array!5312) (_vacant!724 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1350)

(declare-fun array_inv!1577 (array!5310) Bool)

(declare-fun array_inv!1578 (array!5312) Bool)

(assert (=> b!155989 (= e!102020 (and tp!12505 tp_is_empty!3129 (array_inv!1577 (_keys!4892 thiss!1248)) (array_inv!1578 (_values!3100 thiss!1248)) e!102016))))

(declare-fun mapNonEmpty!5336 () Bool)

(declare-fun mapRes!5336 () Bool)

(declare-fun tp!12506 () Bool)

(declare-fun e!102018 () Bool)

(assert (=> mapNonEmpty!5336 (= mapRes!5336 (and tp!12506 e!102018))))

(declare-fun mapKey!5336 () (_ BitVec 32))

(declare-fun mapValue!5336 () ValueCell!1221)

(declare-fun mapRest!5336 () (Array (_ BitVec 32) ValueCell!1221))

(assert (=> mapNonEmpty!5336 (= (arr!2513 (_values!3100 thiss!1248)) (store mapRest!5336 mapKey!5336 mapValue!5336))))

(declare-fun b!155990 () Bool)

(declare-fun e!102017 () Bool)

(assert (=> b!155990 (= e!102017 (not true))))

(declare-fun lt!81523 () Bool)

(declare-fun v!309 () V!3819)

(declare-fun valid!652 (LongMapFixedSize!1350) Bool)

(assert (=> b!155990 (= lt!81523 (valid!652 (LongMapFixedSize!1351 (defaultEntry!3117 thiss!1248) (mask!7558 thiss!1248) (bvor (extraKeys!2858 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2960 thiss!1248) (_size!724 thiss!1248) (_keys!4892 thiss!1248) (_values!3100 thiss!1248) (_vacant!724 thiss!1248))))))

(declare-datatypes ((tuple2!2832 0))(
  ( (tuple2!2833 (_1!1426 (_ BitVec 64)) (_2!1426 V!3819)) )
))
(declare-datatypes ((List!1861 0))(
  ( (Nil!1858) (Cons!1857 (h!2466 tuple2!2832) (t!6671 List!1861)) )
))
(declare-datatypes ((ListLongMap!1841 0))(
  ( (ListLongMap!1842 (toList!936 List!1861)) )
))
(declare-fun +!199 (ListLongMap!1841 tuple2!2832) ListLongMap!1841)

(declare-fun getCurrentListMap!596 (array!5310 array!5312 (_ BitVec 32) (_ BitVec 32) V!3819 V!3819 (_ BitVec 32) Int) ListLongMap!1841)

(assert (=> b!155990 (= (+!199 (getCurrentListMap!596 (_keys!4892 thiss!1248) (_values!3100 thiss!1248) (mask!7558 thiss!1248) (extraKeys!2858 thiss!1248) (zeroValue!2960 thiss!1248) (minValue!2960 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3117 thiss!1248)) (tuple2!2833 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!596 (_keys!4892 thiss!1248) (_values!3100 thiss!1248) (mask!7558 thiss!1248) (bvor (extraKeys!2858 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2960 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3117 thiss!1248)))))

(declare-datatypes ((Unit!4950 0))(
  ( (Unit!4951) )
))
(declare-fun lt!81524 () Unit!4950)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!83 (array!5310 array!5312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3819 V!3819 V!3819 Int) Unit!4950)

(assert (=> b!155990 (= lt!81524 (lemmaChangeZeroKeyThenAddPairToListMap!83 (_keys!4892 thiss!1248) (_values!3100 thiss!1248) (mask!7558 thiss!1248) (extraKeys!2858 thiss!1248) (bvor (extraKeys!2858 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2960 thiss!1248) v!309 (minValue!2960 thiss!1248) (defaultEntry!3117 thiss!1248)))))

(declare-fun b!155991 () Bool)

(declare-fun res!73689 () Bool)

(assert (=> b!155991 (=> (not res!73689) (not e!102017))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155991 (= res!73689 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155992 () Bool)

(declare-fun e!102015 () Bool)

(assert (=> b!155992 (= e!102015 tp_is_empty!3129)))

(declare-fun b!155993 () Bool)

(assert (=> b!155993 (= e!102018 tp_is_empty!3129)))

(declare-fun b!155994 () Bool)

(assert (=> b!155994 (= e!102016 (and e!102015 mapRes!5336))))

(declare-fun condMapEmpty!5336 () Bool)

(declare-fun mapDefault!5336 () ValueCell!1221)

(assert (=> b!155994 (= condMapEmpty!5336 (= (arr!2513 (_values!3100 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1221)) mapDefault!5336)))))

(declare-fun res!73690 () Bool)

(assert (=> start!15672 (=> (not res!73690) (not e!102017))))

(assert (=> start!15672 (= res!73690 (valid!652 thiss!1248))))

(assert (=> start!15672 e!102017))

(assert (=> start!15672 e!102020))

(assert (=> start!15672 true))

(assert (=> start!15672 tp_is_empty!3129))

(declare-fun mapIsEmpty!5336 () Bool)

(assert (=> mapIsEmpty!5336 mapRes!5336))

(assert (= (and start!15672 res!73690) b!155991))

(assert (= (and b!155991 res!73689) b!155990))

(assert (= (and b!155994 condMapEmpty!5336) mapIsEmpty!5336))

(assert (= (and b!155994 (not condMapEmpty!5336)) mapNonEmpty!5336))

(get-info :version)

(assert (= (and mapNonEmpty!5336 ((_ is ValueCellFull!1221) mapValue!5336)) b!155993))

(assert (= (and b!155994 ((_ is ValueCellFull!1221) mapDefault!5336)) b!155992))

(assert (= b!155989 b!155994))

(assert (= start!15672 b!155989))

(declare-fun m!189755 () Bool)

(assert (=> b!155989 m!189755))

(declare-fun m!189757 () Bool)

(assert (=> b!155989 m!189757))

(declare-fun m!189759 () Bool)

(assert (=> mapNonEmpty!5336 m!189759))

(declare-fun m!189761 () Bool)

(assert (=> b!155990 m!189761))

(declare-fun m!189763 () Bool)

(assert (=> b!155990 m!189763))

(assert (=> b!155990 m!189761))

(declare-fun m!189765 () Bool)

(assert (=> b!155990 m!189765))

(declare-fun m!189767 () Bool)

(assert (=> b!155990 m!189767))

(declare-fun m!189769 () Bool)

(assert (=> b!155990 m!189769))

(declare-fun m!189771 () Bool)

(assert (=> start!15672 m!189771))

(check-sat tp_is_empty!3129 (not b_next!3327) (not b!155990) (not b!155989) (not start!15672) b_and!9759 (not mapNonEmpty!5336))
(check-sat b_and!9759 (not b_next!3327))
