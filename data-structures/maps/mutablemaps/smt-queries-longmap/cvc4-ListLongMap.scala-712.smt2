; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16792 () Bool)

(assert start!16792)

(declare-fun b!168865 () Bool)

(declare-fun b_free!4085 () Bool)

(declare-fun b_next!4085 () Bool)

(assert (=> b!168865 (= b_free!4085 (not b_next!4085))))

(declare-fun tp!14856 () Bool)

(declare-fun b_and!10517 () Bool)

(assert (=> b!168865 (= tp!14856 b_and!10517)))

(declare-fun b!168864 () Bool)

(declare-fun res!80400 () Bool)

(declare-fun e!111119 () Bool)

(assert (=> b!168864 (=> (not res!80400) (not e!111119))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168864 (= res!80400 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3887 () Bool)

(declare-datatypes ((V!4829 0))(
  ( (V!4830 (val!1988 Int)) )
))
(declare-datatypes ((ValueCell!1600 0))(
  ( (ValueCellFull!1600 (v!3849 V!4829)) (EmptyCell!1600) )
))
(declare-datatypes ((array!6870 0))(
  ( (array!6871 (arr!3270 (Array (_ BitVec 32) (_ BitVec 64))) (size!3558 (_ BitVec 32))) )
))
(declare-datatypes ((array!6872 0))(
  ( (array!6873 (arr!3271 (Array (_ BitVec 32) ValueCell!1600)) (size!3559 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2108 0))(
  ( (LongMapFixedSize!2109 (defaultEntry!3496 Int) (mask!8269 (_ BitVec 32)) (extraKeys!3237 (_ BitVec 32)) (zeroValue!3339 V!4829) (minValue!3339 V!4829) (_size!1103 (_ BitVec 32)) (_keys!5321 array!6870) (_values!3479 array!6872) (_vacant!1103 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2108)

(declare-fun e!111121 () Bool)

(declare-fun e!111115 () Bool)

(declare-fun array_inv!2095 (array!6870) Bool)

(declare-fun array_inv!2096 (array!6872) Bool)

(assert (=> b!168865 (= e!111121 (and tp!14856 tp_is_empty!3887 (array_inv!2095 (_keys!5321 thiss!1248)) (array_inv!2096 (_values!3479 thiss!1248)) e!111115))))

(declare-fun b!168866 () Bool)

(declare-fun e!111118 () Bool)

(assert (=> b!168866 (= e!111118 true)))

(declare-fun lt!84657 () Bool)

(declare-fun lt!84655 () LongMapFixedSize!2108)

(declare-datatypes ((tuple2!3184 0))(
  ( (tuple2!3185 (_1!1602 (_ BitVec 64)) (_2!1602 V!4829)) )
))
(declare-datatypes ((List!2195 0))(
  ( (Nil!2192) (Cons!2191 (h!2808 tuple2!3184) (t!7005 List!2195)) )
))
(declare-datatypes ((ListLongMap!2153 0))(
  ( (ListLongMap!2154 (toList!1092 List!2195)) )
))
(declare-fun contains!1128 (ListLongMap!2153 (_ BitVec 64)) Bool)

(declare-fun map!1806 (LongMapFixedSize!2108) ListLongMap!2153)

(assert (=> b!168866 (= lt!84657 (contains!1128 (map!1806 lt!84655) key!828))))

(declare-fun b!168867 () Bool)

(declare-datatypes ((Unit!5215 0))(
  ( (Unit!5216) )
))
(declare-fun e!111114 () Unit!5215)

(declare-fun Unit!5217 () Unit!5215)

(assert (=> b!168867 (= e!111114 Unit!5217)))

(declare-fun lt!84664 () Unit!5215)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!131 (array!6870 array!6872 (_ BitVec 32) (_ BitVec 32) V!4829 V!4829 (_ BitVec 64) Int) Unit!5215)

(assert (=> b!168867 (= lt!84664 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!131 (_keys!5321 thiss!1248) (_values!3479 thiss!1248) (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) key!828 (defaultEntry!3496 thiss!1248)))))

(assert (=> b!168867 false))

(declare-fun res!80396 () Bool)

(assert (=> start!16792 (=> (not res!80396) (not e!111119))))

(declare-fun valid!905 (LongMapFixedSize!2108) Bool)

(assert (=> start!16792 (= res!80396 (valid!905 thiss!1248))))

(assert (=> start!16792 e!111119))

(assert (=> start!16792 e!111121))

(assert (=> start!16792 true))

(assert (=> start!16792 tp_is_empty!3887))

(declare-fun mapIsEmpty!6549 () Bool)

(declare-fun mapRes!6549 () Bool)

(assert (=> mapIsEmpty!6549 mapRes!6549))

(declare-fun b!168868 () Bool)

(declare-fun e!111116 () Bool)

(assert (=> b!168868 (= e!111116 (not e!111118))))

(declare-fun res!80399 () Bool)

(assert (=> b!168868 (=> res!80399 e!111118)))

(assert (=> b!168868 (= res!80399 (not (valid!905 lt!84655)))))

(declare-fun lt!84665 () ListLongMap!2153)

(declare-datatypes ((SeekEntryResult!523 0))(
  ( (MissingZero!523 (index!4260 (_ BitVec 32))) (Found!523 (index!4261 (_ BitVec 32))) (Intermediate!523 (undefined!1335 Bool) (index!4262 (_ BitVec 32)) (x!18671 (_ BitVec 32))) (Undefined!523) (MissingVacant!523 (index!4263 (_ BitVec 32))) )
))
(declare-fun lt!84663 () SeekEntryResult!523)

(assert (=> b!168868 (contains!1128 lt!84665 (select (arr!3270 (_keys!5321 thiss!1248)) (index!4261 lt!84663)))))

(declare-fun lt!84658 () array!6872)

(declare-fun lt!84660 () Unit!5215)

(declare-fun lemmaValidKeyInArrayIsInListMap!137 (array!6870 array!6872 (_ BitVec 32) (_ BitVec 32) V!4829 V!4829 (_ BitVec 32) Int) Unit!5215)

(assert (=> b!168868 (= lt!84660 (lemmaValidKeyInArrayIsInListMap!137 (_keys!5321 thiss!1248) lt!84658 (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) (index!4261 lt!84663) (defaultEntry!3496 thiss!1248)))))

(assert (=> b!168868 (= lt!84655 (LongMapFixedSize!2109 (defaultEntry!3496 thiss!1248) (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) (_size!1103 thiss!1248) (_keys!5321 thiss!1248) lt!84658 (_vacant!1103 thiss!1248)))))

(declare-fun lt!84662 () ListLongMap!2153)

(assert (=> b!168868 (= lt!84662 lt!84665)))

(declare-fun getCurrentListMap!745 (array!6870 array!6872 (_ BitVec 32) (_ BitVec 32) V!4829 V!4829 (_ BitVec 32) Int) ListLongMap!2153)

(assert (=> b!168868 (= lt!84665 (getCurrentListMap!745 (_keys!5321 thiss!1248) lt!84658 (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3496 thiss!1248)))))

(declare-fun lt!84654 () ListLongMap!2153)

(declare-fun v!309 () V!4829)

(declare-fun +!234 (ListLongMap!2153 tuple2!3184) ListLongMap!2153)

(assert (=> b!168868 (= lt!84662 (+!234 lt!84654 (tuple2!3185 key!828 v!309)))))

(assert (=> b!168868 (= lt!84658 (array!6873 (store (arr!3271 (_values!3479 thiss!1248)) (index!4261 lt!84663) (ValueCellFull!1600 v!309)) (size!3559 (_values!3479 thiss!1248))))))

(declare-fun lt!84661 () Unit!5215)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!94 (array!6870 array!6872 (_ BitVec 32) (_ BitVec 32) V!4829 V!4829 (_ BitVec 32) (_ BitVec 64) V!4829 Int) Unit!5215)

(assert (=> b!168868 (= lt!84661 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!94 (_keys!5321 thiss!1248) (_values!3479 thiss!1248) (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) (index!4261 lt!84663) key!828 v!309 (defaultEntry!3496 thiss!1248)))))

(declare-fun lt!84659 () Unit!5215)

(assert (=> b!168868 (= lt!84659 e!111114)))

(declare-fun c!30390 () Bool)

(assert (=> b!168868 (= c!30390 (contains!1128 lt!84654 key!828))))

(assert (=> b!168868 (= lt!84654 (getCurrentListMap!745 (_keys!5321 thiss!1248) (_values!3479 thiss!1248) (mask!8269 thiss!1248) (extraKeys!3237 thiss!1248) (zeroValue!3339 thiss!1248) (minValue!3339 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3496 thiss!1248)))))

(declare-fun b!168869 () Bool)

(declare-fun e!111112 () Bool)

(assert (=> b!168869 (= e!111115 (and e!111112 mapRes!6549))))

(declare-fun condMapEmpty!6549 () Bool)

(declare-fun mapDefault!6549 () ValueCell!1600)

