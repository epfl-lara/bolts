; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16962 () Bool)

(assert start!16962)

(declare-fun b!170363 () Bool)

(declare-fun b_free!4197 () Bool)

(declare-fun b_next!4197 () Bool)

(assert (=> b!170363 (= b_free!4197 (not b_next!4197))))

(declare-fun tp!15215 () Bool)

(declare-fun b_and!10629 () Bool)

(assert (=> b!170363 (= tp!15215 b_and!10629)))

(declare-fun b!170357 () Bool)

(declare-fun res!81002 () Bool)

(declare-fun e!112410 () Bool)

(assert (=> b!170357 (=> (not res!81002) (not e!112410))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170357 (= res!81002 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170358 () Bool)

(declare-fun e!112415 () Bool)

(declare-fun e!112412 () Bool)

(declare-fun mapRes!6740 () Bool)

(assert (=> b!170358 (= e!112415 (and e!112412 mapRes!6740))))

(declare-fun condMapEmpty!6740 () Bool)

(declare-datatypes ((V!4939 0))(
  ( (V!4940 (val!2029 Int)) )
))
(declare-datatypes ((ValueCell!1641 0))(
  ( (ValueCellFull!1641 (v!3890 V!4939)) (EmptyCell!1641) )
))
(declare-datatypes ((array!7046 0))(
  ( (array!7047 (arr!3352 (Array (_ BitVec 32) (_ BitVec 64))) (size!3645 (_ BitVec 32))) )
))
(declare-datatypes ((array!7048 0))(
  ( (array!7049 (arr!3353 (Array (_ BitVec 32) ValueCell!1641)) (size!3646 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2190 0))(
  ( (LongMapFixedSize!2191 (defaultEntry!3537 Int) (mask!8349 (_ BitVec 32)) (extraKeys!3278 (_ BitVec 32)) (zeroValue!3380 V!4939) (minValue!3380 V!4939) (_size!1144 (_ BitVec 32)) (_keys!5367 array!7046) (_values!3520 array!7048) (_vacant!1144 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2190)

(declare-fun mapDefault!6740 () ValueCell!1641)

(assert (=> b!170358 (= condMapEmpty!6740 (= (arr!3353 (_values!3520 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1641)) mapDefault!6740)))))

(declare-fun b!170359 () Bool)

(declare-fun res!81001 () Bool)

(assert (=> b!170359 (=> (not res!81001) (not e!112410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170359 (= res!81001 (validMask!0 (mask!8349 thiss!1248)))))

(declare-fun res!81003 () Bool)

(assert (=> start!16962 (=> (not res!81003) (not e!112410))))

(declare-fun valid!929 (LongMapFixedSize!2190) Bool)

(assert (=> start!16962 (= res!81003 (valid!929 thiss!1248))))

(assert (=> start!16962 e!112410))

(declare-fun e!112411 () Bool)

(assert (=> start!16962 e!112411))

(assert (=> start!16962 true))

(declare-fun b!170360 () Bool)

(assert (=> b!170360 (= e!112410 (and (= (size!3646 (_values!3520 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8349 thiss!1248))) (= (size!3645 (_keys!5367 thiss!1248)) (size!3646 (_values!3520 thiss!1248))) (bvsge (mask!8349 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3278 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3278 thiss!1248) #b00000000000000000000000000000011) (bvslt (bvor (extraKeys!3278 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!6740 () Bool)

(declare-fun tp!15214 () Bool)

(declare-fun e!112414 () Bool)

(assert (=> mapNonEmpty!6740 (= mapRes!6740 (and tp!15214 e!112414))))

(declare-fun mapValue!6740 () ValueCell!1641)

(declare-fun mapRest!6740 () (Array (_ BitVec 32) ValueCell!1641))

(declare-fun mapKey!6740 () (_ BitVec 32))

(assert (=> mapNonEmpty!6740 (= (arr!3353 (_values!3520 thiss!1248)) (store mapRest!6740 mapKey!6740 mapValue!6740))))

(declare-fun b!170361 () Bool)

(declare-fun tp_is_empty!3969 () Bool)

(assert (=> b!170361 (= e!112414 tp_is_empty!3969)))

(declare-fun b!170362 () Bool)

(assert (=> b!170362 (= e!112412 tp_is_empty!3969)))

(declare-fun mapIsEmpty!6740 () Bool)

(assert (=> mapIsEmpty!6740 mapRes!6740))

(declare-fun array_inv!2135 (array!7046) Bool)

(declare-fun array_inv!2136 (array!7048) Bool)

(assert (=> b!170363 (= e!112411 (and tp!15215 tp_is_empty!3969 (array_inv!2135 (_keys!5367 thiss!1248)) (array_inv!2136 (_values!3520 thiss!1248)) e!112415))))

(assert (= (and start!16962 res!81003) b!170357))

(assert (= (and b!170357 res!81002) b!170359))

(assert (= (and b!170359 res!81001) b!170360))

(assert (= (and b!170358 condMapEmpty!6740) mapIsEmpty!6740))

(assert (= (and b!170358 (not condMapEmpty!6740)) mapNonEmpty!6740))

(get-info :version)

(assert (= (and mapNonEmpty!6740 ((_ is ValueCellFull!1641) mapValue!6740)) b!170361))

(assert (= (and b!170358 ((_ is ValueCellFull!1641) mapDefault!6740)) b!170362))

(assert (= b!170363 b!170358))

(assert (= start!16962 b!170363))

(declare-fun m!198911 () Bool)

(assert (=> b!170359 m!198911))

(declare-fun m!198913 () Bool)

(assert (=> start!16962 m!198913))

(declare-fun m!198915 () Bool)

(assert (=> mapNonEmpty!6740 m!198915))

(declare-fun m!198917 () Bool)

(assert (=> b!170363 m!198917))

(declare-fun m!198919 () Bool)

(assert (=> b!170363 m!198919))

(check-sat (not b_next!4197) (not b!170363) (not start!16962) b_and!10629 (not b!170359) tp_is_empty!3969 (not mapNonEmpty!6740))
(check-sat b_and!10629 (not b_next!4197))
