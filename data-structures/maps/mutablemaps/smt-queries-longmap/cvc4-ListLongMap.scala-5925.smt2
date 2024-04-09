; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77186 () Bool)

(assert start!77186)

(declare-fun b!900389 () Bool)

(declare-fun b_free!16055 () Bool)

(declare-fun b_next!16055 () Bool)

(assert (=> b!900389 (= b_free!16055 (not b_next!16055))))

(declare-fun tp!56257 () Bool)

(declare-fun b_and!26395 () Bool)

(assert (=> b!900389 (= tp!56257 b_and!26395)))

(declare-fun e!503998 () Bool)

(declare-fun e!504003 () Bool)

(declare-datatypes ((array!52802 0))(
  ( (array!52803 (arr!25368 (Array (_ BitVec 32) (_ BitVec 64))) (size!25828 (_ BitVec 32))) )
))
(declare-datatypes ((V!29475 0))(
  ( (V!29476 (val!9242 Int)) )
))
(declare-datatypes ((ValueCell!8710 0))(
  ( (ValueCellFull!8710 (v!11736 V!29475)) (EmptyCell!8710) )
))
(declare-datatypes ((array!52804 0))(
  ( (array!52805 (arr!25369 (Array (_ BitVec 32) ValueCell!8710)) (size!25829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4436 0))(
  ( (LongMapFixedSize!4437 (defaultEntry!5452 Int) (mask!26232 (_ BitVec 32)) (extraKeys!5178 (_ BitVec 32)) (zeroValue!5282 V!29475) (minValue!5282 V!29475) (_size!2273 (_ BitVec 32)) (_keys!10252 array!52802) (_values!5469 array!52804) (_vacant!2273 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4436)

(declare-fun tp_is_empty!18383 () Bool)

(declare-fun array_inv!19880 (array!52802) Bool)

(declare-fun array_inv!19881 (array!52804) Bool)

(assert (=> b!900389 (= e!504003 (and tp!56257 tp_is_empty!18383 (array_inv!19880 (_keys!10252 thiss!1181)) (array_inv!19881 (_values!5469 thiss!1181)) e!503998))))

(declare-fun b!900390 () Bool)

(declare-fun res!608152 () Bool)

(declare-fun e!504000 () Bool)

(assert (=> b!900390 (=> res!608152 e!504000)))

(assert (=> b!900390 (= res!608152 (or (not (= (size!25829 (_values!5469 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26232 thiss!1181)))) (not (= (size!25828 (_keys!10252 thiss!1181)) (size!25829 (_values!5469 thiss!1181)))) (bvslt (mask!26232 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5178 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!5178 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!900391 () Bool)

(declare-fun e!503999 () Bool)

(assert (=> b!900391 (= e!503999 e!504000)))

(declare-fun res!608150 () Bool)

(assert (=> b!900391 (=> res!608150 e!504000)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900391 (= res!608150 (not (validMask!0 (mask!26232 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8928 0))(
  ( (MissingZero!8928 (index!38082 (_ BitVec 32))) (Found!8928 (index!38083 (_ BitVec 32))) (Intermediate!8928 (undefined!9740 Bool) (index!38084 (_ BitVec 32)) (x!76708 (_ BitVec 32))) (Undefined!8928) (MissingVacant!8928 (index!38085 (_ BitVec 32))) )
))
(declare-fun lt!406852 () SeekEntryResult!8928)

(declare-datatypes ((tuple2!12076 0))(
  ( (tuple2!12077 (_1!6048 (_ BitVec 64)) (_2!6048 V!29475)) )
))
(declare-datatypes ((List!17935 0))(
  ( (Nil!17932) (Cons!17931 (h!19077 tuple2!12076) (t!25296 List!17935)) )
))
(declare-datatypes ((ListLongMap!10787 0))(
  ( (ListLongMap!10788 (toList!5409 List!17935)) )
))
(declare-fun contains!4416 (ListLongMap!10787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2652 (array!52802 array!52804 (_ BitVec 32) (_ BitVec 32) V!29475 V!29475 (_ BitVec 32) Int) ListLongMap!10787)

(assert (=> b!900391 (contains!4416 (getCurrentListMap!2652 (_keys!10252 thiss!1181) (_values!5469 thiss!1181) (mask!26232 thiss!1181) (extraKeys!5178 thiss!1181) (zeroValue!5282 thiss!1181) (minValue!5282 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5452 thiss!1181)) (select (arr!25368 (_keys!10252 thiss!1181)) (index!38083 lt!406852)))))

(declare-datatypes ((Unit!30563 0))(
  ( (Unit!30564) )
))
(declare-fun lt!406850 () Unit!30563)

(declare-fun lemmaValidKeyInArrayIsInListMap!245 (array!52802 array!52804 (_ BitVec 32) (_ BitVec 32) V!29475 V!29475 (_ BitVec 32) Int) Unit!30563)

(assert (=> b!900391 (= lt!406850 (lemmaValidKeyInArrayIsInListMap!245 (_keys!10252 thiss!1181) (_values!5469 thiss!1181) (mask!26232 thiss!1181) (extraKeys!5178 thiss!1181) (zeroValue!5282 thiss!1181) (minValue!5282 thiss!1181) (index!38083 lt!406852) (defaultEntry!5452 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900391 (arrayContainsKey!0 (_keys!10252 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406853 () Unit!30563)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52802 (_ BitVec 64) (_ BitVec 32)) Unit!30563)

(assert (=> b!900391 (= lt!406853 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10252 thiss!1181) key!785 (index!38083 lt!406852)))))

(declare-fun b!900392 () Bool)

(declare-datatypes ((List!17936 0))(
  ( (Nil!17933) (Cons!17932 (h!19078 (_ BitVec 64)) (t!25297 List!17936)) )
))
(declare-fun arrayNoDuplicates!0 (array!52802 (_ BitVec 32) List!17936) Bool)

(assert (=> b!900392 (= e!504000 (arrayNoDuplicates!0 (_keys!10252 thiss!1181) #b00000000000000000000000000000000 Nil!17933))))

(declare-fun b!900394 () Bool)

(declare-fun e!504002 () Bool)

(assert (=> b!900394 (= e!504002 (not e!503999))))

(declare-fun res!608155 () Bool)

(assert (=> b!900394 (=> res!608155 e!503999)))

(assert (=> b!900394 (= res!608155 (not (is-Found!8928 lt!406852)))))

(declare-fun e!504005 () Bool)

(assert (=> b!900394 e!504005))

(declare-fun res!608153 () Bool)

(assert (=> b!900394 (=> res!608153 e!504005)))

(assert (=> b!900394 (= res!608153 (not (is-Found!8928 lt!406852)))))

(declare-fun lt!406851 () Unit!30563)

(declare-fun lemmaSeekEntryGivesInRangeIndex!109 (array!52802 array!52804 (_ BitVec 32) (_ BitVec 32) V!29475 V!29475 (_ BitVec 64)) Unit!30563)

(assert (=> b!900394 (= lt!406851 (lemmaSeekEntryGivesInRangeIndex!109 (_keys!10252 thiss!1181) (_values!5469 thiss!1181) (mask!26232 thiss!1181) (extraKeys!5178 thiss!1181) (zeroValue!5282 thiss!1181) (minValue!5282 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52802 (_ BitVec 32)) SeekEntryResult!8928)

(assert (=> b!900394 (= lt!406852 (seekEntry!0 key!785 (_keys!10252 thiss!1181) (mask!26232 thiss!1181)))))

(declare-fun b!900395 () Bool)

(declare-fun res!608156 () Bool)

(assert (=> b!900395 (=> res!608156 e!504000)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52802 (_ BitVec 32)) Bool)

(assert (=> b!900395 (= res!608156 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10252 thiss!1181) (mask!26232 thiss!1181))))))

(declare-fun b!900396 () Bool)

(declare-fun e!503997 () Bool)

(declare-fun mapRes!29251 () Bool)

(assert (=> b!900396 (= e!503998 (and e!503997 mapRes!29251))))

(declare-fun condMapEmpty!29251 () Bool)

(declare-fun mapDefault!29251 () ValueCell!8710)

