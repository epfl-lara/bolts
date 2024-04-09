; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16788 () Bool)

(assert start!16788)

(declare-fun b!168808 () Bool)

(declare-fun b_free!4081 () Bool)

(declare-fun b_next!4081 () Bool)

(assert (=> b!168808 (= b_free!4081 (not b_next!4081))))

(declare-fun tp!14843 () Bool)

(declare-fun b_and!10513 () Bool)

(assert (=> b!168808 (= tp!14843 b_and!10513)))

(declare-fun b!168798 () Bool)

(declare-fun res!80366 () Bool)

(declare-fun e!111055 () Bool)

(assert (=> b!168798 (=> (not res!80366) (not e!111055))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168798 (= res!80366 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168799 () Bool)

(declare-fun e!111052 () Bool)

(declare-fun tp_is_empty!3883 () Bool)

(assert (=> b!168799 (= e!111052 tp_is_empty!3883)))

(declare-fun b!168800 () Bool)

(declare-fun e!111057 () Bool)

(declare-fun e!111061 () Bool)

(assert (=> b!168800 (= e!111057 (not e!111061))))

(declare-fun res!80370 () Bool)

(assert (=> b!168800 (=> res!80370 e!111061)))

(declare-datatypes ((V!4825 0))(
  ( (V!4826 (val!1986 Int)) )
))
(declare-datatypes ((ValueCell!1598 0))(
  ( (ValueCellFull!1598 (v!3847 V!4825)) (EmptyCell!1598) )
))
(declare-datatypes ((array!6862 0))(
  ( (array!6863 (arr!3266 (Array (_ BitVec 32) (_ BitVec 64))) (size!3554 (_ BitVec 32))) )
))
(declare-datatypes ((array!6864 0))(
  ( (array!6865 (arr!3267 (Array (_ BitVec 32) ValueCell!1598)) (size!3555 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2104 0))(
  ( (LongMapFixedSize!2105 (defaultEntry!3494 Int) (mask!8267 (_ BitVec 32)) (extraKeys!3235 (_ BitVec 32)) (zeroValue!3337 V!4825) (minValue!3337 V!4825) (_size!1101 (_ BitVec 32)) (_keys!5319 array!6862) (_values!3477 array!6864) (_vacant!1101 (_ BitVec 32))) )
))
(declare-fun lt!84587 () LongMapFixedSize!2104)

(declare-fun valid!903 (LongMapFixedSize!2104) Bool)

(assert (=> b!168800 (= res!80370 (not (valid!903 lt!84587)))))

(declare-datatypes ((tuple2!3180 0))(
  ( (tuple2!3181 (_1!1600 (_ BitVec 64)) (_2!1600 V!4825)) )
))
(declare-datatypes ((List!2193 0))(
  ( (Nil!2190) (Cons!2189 (h!2806 tuple2!3180) (t!7003 List!2193)) )
))
(declare-datatypes ((ListLongMap!2149 0))(
  ( (ListLongMap!2150 (toList!1090 List!2193)) )
))
(declare-fun lt!84584 () ListLongMap!2149)

(declare-fun thiss!1248 () LongMapFixedSize!2104)

(declare-datatypes ((SeekEntryResult!521 0))(
  ( (MissingZero!521 (index!4252 (_ BitVec 32))) (Found!521 (index!4253 (_ BitVec 32))) (Intermediate!521 (undefined!1333 Bool) (index!4254 (_ BitVec 32)) (x!18669 (_ BitVec 32))) (Undefined!521) (MissingVacant!521 (index!4255 (_ BitVec 32))) )
))
(declare-fun lt!84590 () SeekEntryResult!521)

(declare-fun contains!1126 (ListLongMap!2149 (_ BitVec 64)) Bool)

(assert (=> b!168800 (contains!1126 lt!84584 (select (arr!3266 (_keys!5319 thiss!1248)) (index!4253 lt!84590)))))

(declare-fun lt!84592 () array!6864)

(declare-datatypes ((Unit!5209 0))(
  ( (Unit!5210) )
))
(declare-fun lt!84582 () Unit!5209)

(declare-fun lemmaValidKeyInArrayIsInListMap!135 (array!6862 array!6864 (_ BitVec 32) (_ BitVec 32) V!4825 V!4825 (_ BitVec 32) Int) Unit!5209)

(assert (=> b!168800 (= lt!84582 (lemmaValidKeyInArrayIsInListMap!135 (_keys!5319 thiss!1248) lt!84592 (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) (index!4253 lt!84590) (defaultEntry!3494 thiss!1248)))))

(assert (=> b!168800 (= lt!84587 (LongMapFixedSize!2105 (defaultEntry!3494 thiss!1248) (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) (_size!1101 thiss!1248) (_keys!5319 thiss!1248) lt!84592 (_vacant!1101 thiss!1248)))))

(declare-fun lt!84583 () ListLongMap!2149)

(assert (=> b!168800 (= lt!84583 lt!84584)))

(declare-fun getCurrentListMap!743 (array!6862 array!6864 (_ BitVec 32) (_ BitVec 32) V!4825 V!4825 (_ BitVec 32) Int) ListLongMap!2149)

(assert (=> b!168800 (= lt!84584 (getCurrentListMap!743 (_keys!5319 thiss!1248) lt!84592 (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3494 thiss!1248)))))

(declare-fun v!309 () V!4825)

(declare-fun lt!84589 () ListLongMap!2149)

(declare-fun +!232 (ListLongMap!2149 tuple2!3180) ListLongMap!2149)

(assert (=> b!168800 (= lt!84583 (+!232 lt!84589 (tuple2!3181 key!828 v!309)))))

(assert (=> b!168800 (= lt!84592 (array!6865 (store (arr!3267 (_values!3477 thiss!1248)) (index!4253 lt!84590) (ValueCellFull!1598 v!309)) (size!3555 (_values!3477 thiss!1248))))))

(declare-fun lt!84586 () Unit!5209)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!92 (array!6862 array!6864 (_ BitVec 32) (_ BitVec 32) V!4825 V!4825 (_ BitVec 32) (_ BitVec 64) V!4825 Int) Unit!5209)

(assert (=> b!168800 (= lt!84586 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!92 (_keys!5319 thiss!1248) (_values!3477 thiss!1248) (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) (index!4253 lt!84590) key!828 v!309 (defaultEntry!3494 thiss!1248)))))

(declare-fun lt!84588 () Unit!5209)

(declare-fun e!111058 () Unit!5209)

(assert (=> b!168800 (= lt!84588 e!111058)))

(declare-fun c!30384 () Bool)

(assert (=> b!168800 (= c!30384 (contains!1126 lt!84589 key!828))))

(assert (=> b!168800 (= lt!84589 (getCurrentListMap!743 (_keys!5319 thiss!1248) (_values!3477 thiss!1248) (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3494 thiss!1248)))))

(declare-fun b!168801 () Bool)

(assert (=> b!168801 (= e!111061 true)))

(declare-fun lt!84591 () Bool)

(declare-fun map!1804 (LongMapFixedSize!2104) ListLongMap!2149)

(assert (=> b!168801 (= lt!84591 (contains!1126 (map!1804 lt!84587) key!828))))

(declare-fun mapNonEmpty!6543 () Bool)

(declare-fun mapRes!6543 () Bool)

(declare-fun tp!14844 () Bool)

(declare-fun e!111060 () Bool)

(assert (=> mapNonEmpty!6543 (= mapRes!6543 (and tp!14844 e!111060))))

(declare-fun mapKey!6543 () (_ BitVec 32))

(declare-fun mapValue!6543 () ValueCell!1598)

(declare-fun mapRest!6543 () (Array (_ BitVec 32) ValueCell!1598))

(assert (=> mapNonEmpty!6543 (= (arr!3267 (_values!3477 thiss!1248)) (store mapRest!6543 mapKey!6543 mapValue!6543))))

(declare-fun b!168802 () Bool)

(declare-fun Unit!5211 () Unit!5209)

(assert (=> b!168802 (= e!111058 Unit!5211)))

(declare-fun lt!84593 () Unit!5209)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!129 (array!6862 array!6864 (_ BitVec 32) (_ BitVec 32) V!4825 V!4825 (_ BitVec 64) Int) Unit!5209)

(assert (=> b!168802 (= lt!84593 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!129 (_keys!5319 thiss!1248) (_values!3477 thiss!1248) (mask!8267 thiss!1248) (extraKeys!3235 thiss!1248) (zeroValue!3337 thiss!1248) (minValue!3337 thiss!1248) key!828 (defaultEntry!3494 thiss!1248)))))

(assert (=> b!168802 false))

(declare-fun b!168804 () Bool)

(assert (=> b!168804 (= e!111060 tp_is_empty!3883)))

(declare-fun b!168805 () Bool)

(assert (=> b!168805 (= e!111055 e!111057)))

(declare-fun res!80369 () Bool)

(assert (=> b!168805 (=> (not res!80369) (not e!111057))))

(assert (=> b!168805 (= res!80369 (and (not (is-Undefined!521 lt!84590)) (not (is-MissingVacant!521 lt!84590)) (not (is-MissingZero!521 lt!84590)) (is-Found!521 lt!84590)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6862 (_ BitVec 32)) SeekEntryResult!521)

(assert (=> b!168805 (= lt!84590 (seekEntryOrOpen!0 key!828 (_keys!5319 thiss!1248) (mask!8267 thiss!1248)))))

(declare-fun b!168806 () Bool)

(declare-fun e!111054 () Bool)

(assert (=> b!168806 (= e!111054 (and e!111052 mapRes!6543))))

(declare-fun condMapEmpty!6543 () Bool)

(declare-fun mapDefault!6543 () ValueCell!1598)

