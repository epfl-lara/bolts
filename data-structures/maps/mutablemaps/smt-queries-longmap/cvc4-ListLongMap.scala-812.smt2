; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19776 () Bool)

(assert start!19776)

(declare-fun b!193680 () Bool)

(declare-fun b_free!4715 () Bool)

(declare-fun b_next!4715 () Bool)

(assert (=> b!193680 (= b_free!4715 (not b_next!4715))))

(declare-fun tp!17012 () Bool)

(declare-fun b_and!11443 () Bool)

(assert (=> b!193680 (= tp!17012 b_and!11443)))

(declare-fun b!193667 () Bool)

(declare-datatypes ((Unit!5867 0))(
  ( (Unit!5868) )
))
(declare-fun e!127436 () Unit!5867)

(declare-fun lt!96477 () Unit!5867)

(assert (=> b!193667 (= e!127436 lt!96477)))

(declare-datatypes ((V!5629 0))(
  ( (V!5630 (val!2288 Int)) )
))
(declare-datatypes ((ValueCell!1900 0))(
  ( (ValueCellFull!1900 (v!4243 V!5629)) (EmptyCell!1900) )
))
(declare-datatypes ((array!8222 0))(
  ( (array!8223 (arr!3870 (Array (_ BitVec 32) (_ BitVec 64))) (size!4194 (_ BitVec 32))) )
))
(declare-datatypes ((array!8224 0))(
  ( (array!8225 (arr!3871 (Array (_ BitVec 32) ValueCell!1900)) (size!4195 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2708 0))(
  ( (LongMapFixedSize!2709 (defaultEntry!3954 Int) (mask!9211 (_ BitVec 32)) (extraKeys!3691 (_ BitVec 32)) (zeroValue!3795 V!5629) (minValue!3795 V!5629) (_size!1403 (_ BitVec 32)) (_keys!5946 array!8222) (_values!3937 array!8224) (_vacant!1403 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2708)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!186 (array!8222 array!8224 (_ BitVec 32) (_ BitVec 32) V!5629 V!5629 (_ BitVec 64) Int) Unit!5867)

(assert (=> b!193667 (= lt!96477 (lemmaInListMapThenSeekEntryOrOpenFindsIt!186 (_keys!5946 thiss!1248) (_values!3937 thiss!1248) (mask!9211 thiss!1248) (extraKeys!3691 thiss!1248) (zeroValue!3795 thiss!1248) (minValue!3795 thiss!1248) key!828 (defaultEntry!3954 thiss!1248)))))

(declare-fun res!91552 () Bool)

(declare-datatypes ((SeekEntryResult!702 0))(
  ( (MissingZero!702 (index!4978 (_ BitVec 32))) (Found!702 (index!4979 (_ BitVec 32))) (Intermediate!702 (undefined!1514 Bool) (index!4980 (_ BitVec 32)) (x!20680 (_ BitVec 32))) (Undefined!702) (MissingVacant!702 (index!4981 (_ BitVec 32))) )
))
(declare-fun lt!96480 () SeekEntryResult!702)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!193667 (= res!91552 (inRange!0 (index!4979 lt!96480) (mask!9211 thiss!1248)))))

(declare-fun e!127430 () Bool)

(assert (=> b!193667 (=> (not res!91552) (not e!127430))))

(assert (=> b!193667 e!127430))

(declare-fun b!193668 () Bool)

(declare-fun res!91550 () Bool)

(declare-fun e!127435 () Bool)

(assert (=> b!193668 (=> (not res!91550) (not e!127435))))

(assert (=> b!193668 (= res!91550 (not (= key!828 (bvneg key!828))))))

(declare-fun b!193669 () Bool)

(declare-fun res!91553 () Bool)

(declare-fun e!127437 () Bool)

(assert (=> b!193669 (=> res!91553 e!127437)))

(assert (=> b!193669 (= res!91553 (or (not (= (size!4195 (_values!3937 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9211 thiss!1248)))) (not (= (size!4194 (_keys!5946 thiss!1248)) (size!4195 (_values!3937 thiss!1248)))) (bvslt (mask!9211 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3691 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3691 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!91551 () Bool)

(assert (=> start!19776 (=> (not res!91551) (not e!127435))))

(declare-fun valid!1103 (LongMapFixedSize!2708) Bool)

(assert (=> start!19776 (= res!91551 (valid!1103 thiss!1248))))

(assert (=> start!19776 e!127435))

(declare-fun e!127432 () Bool)

(assert (=> start!19776 e!127432))

(assert (=> start!19776 true))

(declare-fun tp_is_empty!4487 () Bool)

(assert (=> start!19776 tp_is_empty!4487))

(declare-fun b!193670 () Bool)

(assert (=> b!193670 (= e!127430 (= (select (arr!3870 (_keys!5946 thiss!1248)) (index!4979 lt!96480)) key!828))))

(declare-fun mapIsEmpty!7760 () Bool)

(declare-fun mapRes!7760 () Bool)

(assert (=> mapIsEmpty!7760 mapRes!7760))

(declare-fun b!193671 () Bool)

(declare-fun res!91555 () Bool)

(assert (=> b!193671 (=> res!91555 e!127437)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8222 (_ BitVec 32)) Bool)

(assert (=> b!193671 (= res!91555 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5946 thiss!1248) (mask!9211 thiss!1248))))))

(declare-fun mapNonEmpty!7760 () Bool)

(declare-fun tp!17011 () Bool)

(declare-fun e!127434 () Bool)

(assert (=> mapNonEmpty!7760 (= mapRes!7760 (and tp!17011 e!127434))))

(declare-fun mapRest!7760 () (Array (_ BitVec 32) ValueCell!1900))

(declare-fun mapValue!7760 () ValueCell!1900)

(declare-fun mapKey!7760 () (_ BitVec 32))

(assert (=> mapNonEmpty!7760 (= (arr!3871 (_values!3937 thiss!1248)) (store mapRest!7760 mapKey!7760 mapValue!7760))))

(declare-fun b!193672 () Bool)

(declare-fun e!127438 () Bool)

(assert (=> b!193672 (= e!127435 e!127438)))

(declare-fun res!91554 () Bool)

(assert (=> b!193672 (=> (not res!91554) (not e!127438))))

(assert (=> b!193672 (= res!91554 (and (not (is-Undefined!702 lt!96480)) (not (is-MissingVacant!702 lt!96480)) (not (is-MissingZero!702 lt!96480)) (is-Found!702 lt!96480)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8222 (_ BitVec 32)) SeekEntryResult!702)

(assert (=> b!193672 (= lt!96480 (seekEntryOrOpen!0 key!828 (_keys!5946 thiss!1248) (mask!9211 thiss!1248)))))

(declare-fun b!193673 () Bool)

(assert (=> b!193673 (= e!127438 (not e!127437))))

(declare-fun res!91549 () Bool)

(assert (=> b!193673 (=> res!91549 e!127437)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!193673 (= res!91549 (not (validMask!0 (mask!9211 thiss!1248))))))

(declare-datatypes ((tuple2!3552 0))(
  ( (tuple2!3553 (_1!1786 (_ BitVec 64)) (_2!1786 V!5629)) )
))
(declare-datatypes ((List!2467 0))(
  ( (Nil!2464) (Cons!2463 (h!3104 tuple2!3552) (t!7399 List!2467)) )
))
(declare-datatypes ((ListLongMap!2483 0))(
  ( (ListLongMap!2484 (toList!1257 List!2467)) )
))
(declare-fun lt!96476 () ListLongMap!2483)

(declare-fun v!309 () V!5629)

(declare-fun +!315 (ListLongMap!2483 tuple2!3552) ListLongMap!2483)

(declare-fun getCurrentListMap!900 (array!8222 array!8224 (_ BitVec 32) (_ BitVec 32) V!5629 V!5629 (_ BitVec 32) Int) ListLongMap!2483)

(assert (=> b!193673 (= (+!315 lt!96476 (tuple2!3553 key!828 v!309)) (getCurrentListMap!900 (_keys!5946 thiss!1248) (array!8225 (store (arr!3871 (_values!3937 thiss!1248)) (index!4979 lt!96480) (ValueCellFull!1900 v!309)) (size!4195 (_values!3937 thiss!1248))) (mask!9211 thiss!1248) (extraKeys!3691 thiss!1248) (zeroValue!3795 thiss!1248) (minValue!3795 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3954 thiss!1248)))))

(declare-fun lt!96478 () Unit!5867)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!121 (array!8222 array!8224 (_ BitVec 32) (_ BitVec 32) V!5629 V!5629 (_ BitVec 32) (_ BitVec 64) V!5629 Int) Unit!5867)

(assert (=> b!193673 (= lt!96478 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!121 (_keys!5946 thiss!1248) (_values!3937 thiss!1248) (mask!9211 thiss!1248) (extraKeys!3691 thiss!1248) (zeroValue!3795 thiss!1248) (minValue!3795 thiss!1248) (index!4979 lt!96480) key!828 v!309 (defaultEntry!3954 thiss!1248)))))

(declare-fun lt!96479 () Unit!5867)

(assert (=> b!193673 (= lt!96479 e!127436)))

(declare-fun c!34909 () Bool)

(declare-fun contains!1374 (ListLongMap!2483 (_ BitVec 64)) Bool)

(assert (=> b!193673 (= c!34909 (contains!1374 lt!96476 key!828))))

(assert (=> b!193673 (= lt!96476 (getCurrentListMap!900 (_keys!5946 thiss!1248) (_values!3937 thiss!1248) (mask!9211 thiss!1248) (extraKeys!3691 thiss!1248) (zeroValue!3795 thiss!1248) (minValue!3795 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3954 thiss!1248)))))

(declare-fun b!193674 () Bool)

(declare-fun e!127433 () Bool)

(assert (=> b!193674 (= e!127433 tp_is_empty!4487)))

(declare-fun b!193675 () Bool)

(declare-fun res!91548 () Bool)

(assert (=> b!193675 (=> res!91548 e!127437)))

(assert (=> b!193675 (= res!91548 (or (bvslt (index!4979 lt!96480) #b00000000000000000000000000000000) (bvsge (index!4979 lt!96480) (size!4194 (_keys!5946 thiss!1248)))))))

(declare-fun b!193676 () Bool)

(declare-fun e!127439 () Bool)

(assert (=> b!193676 (= e!127439 (and e!127433 mapRes!7760))))

(declare-fun condMapEmpty!7760 () Bool)

(declare-fun mapDefault!7760 () ValueCell!1900)

