; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16076 () Bool)

(assert start!16076)

(declare-fun b!159421 () Bool)

(declare-fun b_free!3525 () Bool)

(declare-fun b_next!3525 () Bool)

(assert (=> b!159421 (= b_free!3525 (not b_next!3525))))

(declare-fun tp!13144 () Bool)

(declare-fun b_and!9957 () Bool)

(assert (=> b!159421 (= tp!13144 b_and!9957)))

(declare-fun b!159418 () Bool)

(declare-fun res!75338 () Bool)

(declare-fun e!104354 () Bool)

(assert (=> b!159418 (=> (not res!75338) (not e!104354))))

(declare-datatypes ((V!4083 0))(
  ( (V!4084 (val!1708 Int)) )
))
(declare-datatypes ((ValueCell!1320 0))(
  ( (ValueCellFull!1320 (v!3569 V!4083)) (EmptyCell!1320) )
))
(declare-datatypes ((array!5732 0))(
  ( (array!5733 (arr!2710 (Array (_ BitVec 32) (_ BitVec 64))) (size!2994 (_ BitVec 32))) )
))
(declare-datatypes ((array!5734 0))(
  ( (array!5735 (arr!2711 (Array (_ BitVec 32) ValueCell!1320)) (size!2995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1548 0))(
  ( (LongMapFixedSize!1549 (defaultEntry!3216 Int) (mask!7766 (_ BitVec 32)) (extraKeys!2957 (_ BitVec 32)) (zeroValue!3059 V!4083) (minValue!3059 V!4083) (_size!823 (_ BitVec 32)) (_keys!5017 array!5732) (_values!3199 array!5734) (_vacant!823 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1548)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5732 (_ BitVec 32)) Bool)

(assert (=> b!159418 (= res!75338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5017 thiss!1248) (mask!7766 thiss!1248)))))

(declare-fun b!159419 () Bool)

(declare-fun res!75341 () Bool)

(assert (=> b!159419 (=> (not res!75341) (not e!104354))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2868 0))(
  ( (tuple2!2869 (_1!1444 (_ BitVec 64)) (_2!1444 V!4083)) )
))
(declare-datatypes ((List!1922 0))(
  ( (Nil!1919) (Cons!1918 (h!2531 tuple2!2868) (t!6732 List!1922)) )
))
(declare-datatypes ((ListLongMap!1877 0))(
  ( (ListLongMap!1878 (toList!954 List!1922)) )
))
(declare-fun contains!984 (ListLongMap!1877 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!614 (array!5732 array!5734 (_ BitVec 32) (_ BitVec 32) V!4083 V!4083 (_ BitVec 32) Int) ListLongMap!1877)

(assert (=> b!159419 (= res!75341 (contains!984 (getCurrentListMap!614 (_keys!5017 thiss!1248) (_values!3199 thiss!1248) (mask!7766 thiss!1248) (extraKeys!2957 thiss!1248) (zeroValue!3059 thiss!1248) (minValue!3059 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3216 thiss!1248)) key!828))))

(declare-fun b!159420 () Bool)

(declare-fun res!75339 () Bool)

(assert (=> b!159420 (=> (not res!75339) (not e!104354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159420 (= res!75339 (validMask!0 (mask!7766 thiss!1248)))))

(declare-fun mapNonEmpty!5678 () Bool)

(declare-fun mapRes!5678 () Bool)

(declare-fun tp!13145 () Bool)

(declare-fun e!104356 () Bool)

(assert (=> mapNonEmpty!5678 (= mapRes!5678 (and tp!13145 e!104356))))

(declare-fun mapRest!5678 () (Array (_ BitVec 32) ValueCell!1320))

(declare-fun mapKey!5678 () (_ BitVec 32))

(declare-fun mapValue!5678 () ValueCell!1320)

(assert (=> mapNonEmpty!5678 (= (arr!2711 (_values!3199 thiss!1248)) (store mapRest!5678 mapKey!5678 mapValue!5678))))

(declare-fun e!104357 () Bool)

(declare-fun tp_is_empty!3327 () Bool)

(declare-fun e!104352 () Bool)

(declare-fun array_inv!1717 (array!5732) Bool)

(declare-fun array_inv!1718 (array!5734) Bool)

(assert (=> b!159421 (= e!104357 (and tp!13144 tp_is_empty!3327 (array_inv!1717 (_keys!5017 thiss!1248)) (array_inv!1718 (_values!3199 thiss!1248)) e!104352))))

(declare-fun b!159423 () Bool)

(declare-fun res!75342 () Bool)

(assert (=> b!159423 (=> (not res!75342) (not e!104354))))

(assert (=> b!159423 (= res!75342 (not (= key!828 (bvneg key!828))))))

(declare-fun b!159424 () Bool)

(assert (=> b!159424 (= e!104356 tp_is_empty!3327)))

(declare-fun b!159425 () Bool)

(declare-fun res!75340 () Bool)

(assert (=> b!159425 (=> (not res!75340) (not e!104354))))

(assert (=> b!159425 (= res!75340 (and (= (size!2995 (_values!3199 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7766 thiss!1248))) (= (size!2994 (_keys!5017 thiss!1248)) (size!2995 (_values!3199 thiss!1248))) (bvsge (mask!7766 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2957 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2957 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!5678 () Bool)

(assert (=> mapIsEmpty!5678 mapRes!5678))

(declare-fun b!159426 () Bool)

(assert (=> b!159426 (= e!104354 false)))

(declare-fun lt!82022 () Bool)

(declare-datatypes ((List!1923 0))(
  ( (Nil!1920) (Cons!1919 (h!2532 (_ BitVec 64)) (t!6733 List!1923)) )
))
(declare-fun arrayNoDuplicates!0 (array!5732 (_ BitVec 32) List!1923) Bool)

(assert (=> b!159426 (= lt!82022 (arrayNoDuplicates!0 (_keys!5017 thiss!1248) #b00000000000000000000000000000000 Nil!1920))))

(declare-fun b!159427 () Bool)

(declare-fun res!75344 () Bool)

(assert (=> b!159427 (=> (not res!75344) (not e!104354))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!323 0))(
  ( (MissingZero!323 (index!3460 (_ BitVec 32))) (Found!323 (index!3461 (_ BitVec 32))) (Intermediate!323 (undefined!1135 Bool) (index!3462 (_ BitVec 32)) (x!17619 (_ BitVec 32))) (Undefined!323) (MissingVacant!323 (index!3463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5732 (_ BitVec 32)) SeekEntryResult!323)

(assert (=> b!159427 (= res!75344 ((_ is Undefined!323) (seekEntryOrOpen!0 key!828 (_keys!5017 thiss!1248) (mask!7766 thiss!1248))))))

(declare-fun b!159428 () Bool)

(declare-fun e!104355 () Bool)

(assert (=> b!159428 (= e!104352 (and e!104355 mapRes!5678))))

(declare-fun condMapEmpty!5678 () Bool)

(declare-fun mapDefault!5678 () ValueCell!1320)

(assert (=> b!159428 (= condMapEmpty!5678 (= (arr!2711 (_values!3199 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1320)) mapDefault!5678)))))

(declare-fun res!75343 () Bool)

(assert (=> start!16076 (=> (not res!75343) (not e!104354))))

(declare-fun valid!720 (LongMapFixedSize!1548) Bool)

(assert (=> start!16076 (= res!75343 (valid!720 thiss!1248))))

(assert (=> start!16076 e!104354))

(assert (=> start!16076 e!104357))

(assert (=> start!16076 true))

(declare-fun b!159422 () Bool)

(assert (=> b!159422 (= e!104355 tp_is_empty!3327)))

(assert (= (and start!16076 res!75343) b!159423))

(assert (= (and b!159423 res!75342) b!159427))

(assert (= (and b!159427 res!75344) b!159419))

(assert (= (and b!159419 res!75341) b!159420))

(assert (= (and b!159420 res!75339) b!159425))

(assert (= (and b!159425 res!75340) b!159418))

(assert (= (and b!159418 res!75338) b!159426))

(assert (= (and b!159428 condMapEmpty!5678) mapIsEmpty!5678))

(assert (= (and b!159428 (not condMapEmpty!5678)) mapNonEmpty!5678))

(assert (= (and mapNonEmpty!5678 ((_ is ValueCellFull!1320) mapValue!5678)) b!159424))

(assert (= (and b!159428 ((_ is ValueCellFull!1320) mapDefault!5678)) b!159422))

(assert (= b!159421 b!159428))

(assert (= start!16076 b!159421))

(declare-fun m!191695 () Bool)

(assert (=> mapNonEmpty!5678 m!191695))

(declare-fun m!191697 () Bool)

(assert (=> b!159426 m!191697))

(declare-fun m!191699 () Bool)

(assert (=> b!159421 m!191699))

(declare-fun m!191701 () Bool)

(assert (=> b!159421 m!191701))

(declare-fun m!191703 () Bool)

(assert (=> b!159419 m!191703))

(assert (=> b!159419 m!191703))

(declare-fun m!191705 () Bool)

(assert (=> b!159419 m!191705))

(declare-fun m!191707 () Bool)

(assert (=> start!16076 m!191707))

(declare-fun m!191709 () Bool)

(assert (=> b!159418 m!191709))

(declare-fun m!191711 () Bool)

(assert (=> b!159420 m!191711))

(declare-fun m!191713 () Bool)

(assert (=> b!159427 m!191713))

(check-sat (not b_next!3525) (not start!16076) tp_is_empty!3327 (not mapNonEmpty!5678) (not b!159418) (not b!159426) (not b!159427) (not b!159419) (not b!159420) b_and!9957 (not b!159421))
(check-sat b_and!9957 (not b_next!3525))
