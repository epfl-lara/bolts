; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22028 () Bool)

(assert start!22028)

(declare-fun b!226737 () Bool)

(declare-fun b_free!6083 () Bool)

(declare-fun b_next!6083 () Bool)

(assert (=> b!226737 (= b_free!6083 (not b_next!6083))))

(declare-fun tp!21391 () Bool)

(declare-fun b_and!12999 () Bool)

(assert (=> b!226737 (= tp!21391 b_and!12999)))

(declare-fun b!226733 () Bool)

(declare-fun res!111640 () Bool)

(declare-fun e!147113 () Bool)

(assert (=> b!226733 (=> res!111640 e!147113)))

(declare-datatypes ((V!7573 0))(
  ( (V!7574 (val!3017 Int)) )
))
(declare-datatypes ((ValueCell!2629 0))(
  ( (ValueCellFull!2629 (v!5033 V!7573)) (EmptyCell!2629) )
))
(declare-datatypes ((array!11132 0))(
  ( (array!11133 (arr!5285 (Array (_ BitVec 32) ValueCell!2629)) (size!5618 (_ BitVec 32))) )
))
(declare-datatypes ((array!11134 0))(
  ( (array!11135 (arr!5286 (Array (_ BitVec 32) (_ BitVec 64))) (size!5619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3158 0))(
  ( (LongMapFixedSize!3159 (defaultEntry!4238 Int) (mask!10092 (_ BitVec 32)) (extraKeys!3975 (_ BitVec 32)) (zeroValue!4079 V!7573) (minValue!4079 V!7573) (_size!1628 (_ BitVec 32)) (_keys!6292 array!11134) (_values!4221 array!11132) (_vacant!1628 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3158)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11134 (_ BitVec 32)) Bool)

(assert (=> b!226733 (= res!111640 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6292 thiss!1504) (mask!10092 thiss!1504))))))

(declare-fun b!226734 () Bool)

(declare-fun e!147109 () Bool)

(declare-fun e!147106 () Bool)

(assert (=> b!226734 (= e!147109 e!147106)))

(declare-fun res!111648 () Bool)

(assert (=> b!226734 (=> (not res!111648) (not e!147106))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!226734 (= res!111648 (inRange!0 index!297 (mask!10092 thiss!1504)))))

(declare-datatypes ((Unit!6863 0))(
  ( (Unit!6864) )
))
(declare-fun lt!114155 () Unit!6863)

(declare-fun e!147107 () Unit!6863)

(assert (=> b!226734 (= lt!114155 e!147107)))

(declare-fun c!37575 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4458 0))(
  ( (tuple2!4459 (_1!2239 (_ BitVec 64)) (_2!2239 V!7573)) )
))
(declare-datatypes ((List!3400 0))(
  ( (Nil!3397) (Cons!3396 (h!4044 tuple2!4458) (t!8367 List!3400)) )
))
(declare-datatypes ((ListLongMap!3385 0))(
  ( (ListLongMap!3386 (toList!1708 List!3400)) )
))
(declare-fun contains!1576 (ListLongMap!3385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1231 (array!11134 array!11132 (_ BitVec 32) (_ BitVec 32) V!7573 V!7573 (_ BitVec 32) Int) ListLongMap!3385)

(assert (=> b!226734 (= c!37575 (contains!1576 (getCurrentListMap!1231 (_keys!6292 thiss!1504) (_values!4221 thiss!1504) (mask!10092 thiss!1504) (extraKeys!3975 thiss!1504) (zeroValue!4079 thiss!1504) (minValue!4079 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4238 thiss!1504)) key!932))))

(declare-fun b!226735 () Bool)

(declare-fun e!147103 () Bool)

(declare-fun tp_is_empty!5945 () Bool)

(assert (=> b!226735 (= e!147103 tp_is_empty!5945)))

(declare-fun b!226736 () Bool)

(declare-fun e!147101 () Unit!6863)

(declare-fun Unit!6865 () Unit!6863)

(assert (=> b!226736 (= e!147101 Unit!6865)))

(declare-fun lt!114157 () Unit!6863)

(declare-fun lemmaArrayContainsKeyThenInListMap!98 (array!11134 array!11132 (_ BitVec 32) (_ BitVec 32) V!7573 V!7573 (_ BitVec 64) (_ BitVec 32) Int) Unit!6863)

(assert (=> b!226736 (= lt!114157 (lemmaArrayContainsKeyThenInListMap!98 (_keys!6292 thiss!1504) (_values!4221 thiss!1504) (mask!10092 thiss!1504) (extraKeys!3975 thiss!1504) (zeroValue!4079 thiss!1504) (minValue!4079 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4238 thiss!1504)))))

(assert (=> b!226736 false))

(declare-fun e!147111 () Bool)

(declare-fun e!147108 () Bool)

(declare-fun array_inv!3485 (array!11134) Bool)

(declare-fun array_inv!3486 (array!11132) Bool)

(assert (=> b!226737 (= e!147108 (and tp!21391 tp_is_empty!5945 (array_inv!3485 (_keys!6292 thiss!1504)) (array_inv!3486 (_values!4221 thiss!1504)) e!147111))))

(declare-fun b!226739 () Bool)

(declare-fun e!147112 () Bool)

(declare-fun call!21081 () Bool)

(assert (=> b!226739 (= e!147112 (not call!21081))))

(declare-fun c!37574 () Bool)

(declare-fun bm!21078 () Bool)

(declare-datatypes ((SeekEntryResult!897 0))(
  ( (MissingZero!897 (index!5758 (_ BitVec 32))) (Found!897 (index!5759 (_ BitVec 32))) (Intermediate!897 (undefined!1709 Bool) (index!5760 (_ BitVec 32)) (x!23253 (_ BitVec 32))) (Undefined!897) (MissingVacant!897 (index!5761 (_ BitVec 32))) )
))
(declare-fun lt!114158 () SeekEntryResult!897)

(declare-fun call!21082 () Bool)

(assert (=> bm!21078 (= call!21082 (inRange!0 (ite c!37574 (index!5758 lt!114158) (index!5761 lt!114158)) (mask!10092 thiss!1504)))))

(declare-fun mapIsEmpty!10087 () Bool)

(declare-fun mapRes!10087 () Bool)

(assert (=> mapIsEmpty!10087 mapRes!10087))

(declare-fun bm!21079 () Bool)

(declare-fun arrayContainsKey!0 (array!11134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21079 (= call!21081 (arrayContainsKey!0 (_keys!6292 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226740 () Bool)

(declare-fun c!37576 () Bool)

(assert (=> b!226740 (= c!37576 (is-MissingVacant!897 lt!114158))))

(declare-fun e!147102 () Bool)

(declare-fun e!147115 () Bool)

(assert (=> b!226740 (= e!147102 e!147115)))

(declare-fun b!226741 () Bool)

(declare-fun e!147105 () Bool)

(assert (=> b!226741 (= e!147105 e!147109)))

(declare-fun res!111645 () Bool)

(assert (=> b!226741 (=> (not res!111645) (not e!147109))))

(assert (=> b!226741 (= res!111645 (or (= lt!114158 (MissingZero!897 index!297)) (= lt!114158 (MissingVacant!897 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11134 (_ BitVec 32)) SeekEntryResult!897)

(assert (=> b!226741 (= lt!114158 (seekEntryOrOpen!0 key!932 (_keys!6292 thiss!1504) (mask!10092 thiss!1504)))))

(declare-fun b!226742 () Bool)

(declare-fun res!111649 () Bool)

(assert (=> b!226742 (=> res!111649 e!147113)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226742 (= res!111649 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226743 () Bool)

(declare-fun e!147104 () Bool)

(assert (=> b!226743 (= e!147104 tp_is_empty!5945)))

(declare-fun b!226744 () Bool)

(assert (=> b!226744 (= e!147106 (not e!147113))))

(declare-fun res!111644 () Bool)

(assert (=> b!226744 (=> res!111644 e!147113)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226744 (= res!111644 (not (validMask!0 (mask!10092 thiss!1504))))))

(declare-fun lt!114163 () array!11134)

(declare-fun arrayCountValidKeys!0 (array!11134 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226744 (= (arrayCountValidKeys!0 lt!114163 #b00000000000000000000000000000000 (size!5619 (_keys!6292 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6292 thiss!1504) #b00000000000000000000000000000000 (size!5619 (_keys!6292 thiss!1504)))))))

(declare-fun lt!114156 () Unit!6863)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11134 (_ BitVec 32) (_ BitVec 64)) Unit!6863)

(assert (=> b!226744 (= lt!114156 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6292 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3401 0))(
  ( (Nil!3398) (Cons!3397 (h!4045 (_ BitVec 64)) (t!8368 List!3401)) )
))
(declare-fun arrayNoDuplicates!0 (array!11134 (_ BitVec 32) List!3401) Bool)

(assert (=> b!226744 (arrayNoDuplicates!0 lt!114163 #b00000000000000000000000000000000 Nil!3398)))

(assert (=> b!226744 (= lt!114163 (array!11135 (store (arr!5286 (_keys!6292 thiss!1504)) index!297 key!932) (size!5619 (_keys!6292 thiss!1504))))))

(declare-fun lt!114159 () Unit!6863)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11134 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3401) Unit!6863)

(assert (=> b!226744 (= lt!114159 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6292 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3398))))

(declare-fun lt!114161 () Unit!6863)

(assert (=> b!226744 (= lt!114161 e!147101)))

(declare-fun c!37577 () Bool)

(declare-fun lt!114164 () Bool)

(assert (=> b!226744 (= c!37577 lt!114164)))

(assert (=> b!226744 (= lt!114164 (arrayContainsKey!0 (_keys!6292 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226745 () Bool)

(declare-fun Unit!6866 () Unit!6863)

(assert (=> b!226745 (= e!147101 Unit!6866)))

(declare-fun b!226746 () Bool)

(assert (=> b!226746 (= e!147111 (and e!147104 mapRes!10087))))

(declare-fun condMapEmpty!10087 () Bool)

(declare-fun mapDefault!10087 () ValueCell!2629)

