; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77216 () Bool)

(assert start!77216)

(declare-fun b!900580 () Bool)

(declare-fun b_free!16057 () Bool)

(declare-fun b_next!16057 () Bool)

(assert (=> b!900580 (= b_free!16057 (not b_next!16057))))

(declare-fun tp!56265 () Bool)

(declare-fun b_and!26399 () Bool)

(assert (=> b!900580 (= tp!56265 b_and!26399)))

(declare-fun b!900572 () Bool)

(declare-fun e!504128 () Bool)

(declare-datatypes ((V!29479 0))(
  ( (V!29480 (val!9243 Int)) )
))
(declare-datatypes ((tuple2!12078 0))(
  ( (tuple2!12079 (_1!6049 (_ BitVec 64)) (_2!6049 V!29479)) )
))
(declare-datatypes ((List!17937 0))(
  ( (Nil!17934) (Cons!17933 (h!19079 tuple2!12078) (t!25300 List!17937)) )
))
(declare-datatypes ((ListLongMap!10789 0))(
  ( (ListLongMap!10790 (toList!5410 List!17937)) )
))
(declare-fun lt!406978 () ListLongMap!10789)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4418 (ListLongMap!10789 (_ BitVec 64)) Bool)

(assert (=> b!900572 (= e!504128 (contains!4418 lt!406978 key!785))))

(declare-fun b!900573 () Bool)

(declare-fun res!608239 () Bool)

(assert (=> b!900573 (=> res!608239 e!504128)))

(declare-datatypes ((array!52808 0))(
  ( (array!52809 (arr!25370 (Array (_ BitVec 32) (_ BitVec 64))) (size!25830 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8711 0))(
  ( (ValueCellFull!8711 (v!11738 V!29479)) (EmptyCell!8711) )
))
(declare-datatypes ((array!52810 0))(
  ( (array!52811 (arr!25371 (Array (_ BitVec 32) ValueCell!8711)) (size!25831 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4438 0))(
  ( (LongMapFixedSize!4439 (defaultEntry!5455 Int) (mask!26242 (_ BitVec 32)) (extraKeys!5182 (_ BitVec 32)) (zeroValue!5286 V!29479) (minValue!5286 V!29479) (_size!2274 (_ BitVec 32)) (_keys!10258 array!52808) (_values!5473 array!52810) (_vacant!2274 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4438)

(declare-datatypes ((List!17938 0))(
  ( (Nil!17935) (Cons!17934 (h!19080 (_ BitVec 64)) (t!25301 List!17938)) )
))
(declare-fun arrayNoDuplicates!0 (array!52808 (_ BitVec 32) List!17938) Bool)

(assert (=> b!900573 (= res!608239 (not (arrayNoDuplicates!0 (_keys!10258 thiss!1181) #b00000000000000000000000000000000 Nil!17935)))))

(declare-fun b!900574 () Bool)

(declare-fun e!504120 () Bool)

(declare-fun e!504126 () Bool)

(assert (=> b!900574 (= e!504120 (not e!504126))))

(declare-fun res!608242 () Bool)

(assert (=> b!900574 (=> res!608242 e!504126)))

(declare-datatypes ((SeekEntryResult!8929 0))(
  ( (MissingZero!8929 (index!38086 (_ BitVec 32))) (Found!8929 (index!38087 (_ BitVec 32))) (Intermediate!8929 (undefined!9741 Bool) (index!38088 (_ BitVec 32)) (x!76727 (_ BitVec 32))) (Undefined!8929) (MissingVacant!8929 (index!38089 (_ BitVec 32))) )
))
(declare-fun lt!406976 () SeekEntryResult!8929)

(assert (=> b!900574 (= res!608242 (not (is-Found!8929 lt!406976)))))

(declare-fun e!504121 () Bool)

(assert (=> b!900574 e!504121))

(declare-fun res!608240 () Bool)

(assert (=> b!900574 (=> res!608240 e!504121)))

(assert (=> b!900574 (= res!608240 (not (is-Found!8929 lt!406976)))))

(declare-datatypes ((Unit!30567 0))(
  ( (Unit!30568) )
))
(declare-fun lt!406975 () Unit!30567)

(declare-fun lemmaSeekEntryGivesInRangeIndex!110 (array!52808 array!52810 (_ BitVec 32) (_ BitVec 32) V!29479 V!29479 (_ BitVec 64)) Unit!30567)

(assert (=> b!900574 (= lt!406975 (lemmaSeekEntryGivesInRangeIndex!110 (_keys!10258 thiss!1181) (_values!5473 thiss!1181) (mask!26242 thiss!1181) (extraKeys!5182 thiss!1181) (zeroValue!5286 thiss!1181) (minValue!5286 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52808 (_ BitVec 32)) SeekEntryResult!8929)

(assert (=> b!900574 (= lt!406976 (seekEntry!0 key!785 (_keys!10258 thiss!1181) (mask!26242 thiss!1181)))))

(declare-fun b!900575 () Bool)

(assert (=> b!900575 (= e!504126 e!504128)))

(declare-fun res!608245 () Bool)

(assert (=> b!900575 (=> res!608245 e!504128)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!900575 (= res!608245 (not (validMask!0 (mask!26242 thiss!1181))))))

(assert (=> b!900575 (contains!4418 lt!406978 (select (arr!25370 (_keys!10258 thiss!1181)) (index!38087 lt!406976)))))

(declare-fun getCurrentListMap!2653 (array!52808 array!52810 (_ BitVec 32) (_ BitVec 32) V!29479 V!29479 (_ BitVec 32) Int) ListLongMap!10789)

(assert (=> b!900575 (= lt!406978 (getCurrentListMap!2653 (_keys!10258 thiss!1181) (_values!5473 thiss!1181) (mask!26242 thiss!1181) (extraKeys!5182 thiss!1181) (zeroValue!5286 thiss!1181) (minValue!5286 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5455 thiss!1181)))))

(declare-fun lt!406979 () Unit!30567)

(declare-fun lemmaValidKeyInArrayIsInListMap!246 (array!52808 array!52810 (_ BitVec 32) (_ BitVec 32) V!29479 V!29479 (_ BitVec 32) Int) Unit!30567)

(assert (=> b!900575 (= lt!406979 (lemmaValidKeyInArrayIsInListMap!246 (_keys!10258 thiss!1181) (_values!5473 thiss!1181) (mask!26242 thiss!1181) (extraKeys!5182 thiss!1181) (zeroValue!5286 thiss!1181) (minValue!5286 thiss!1181) (index!38087 lt!406976) (defaultEntry!5455 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!900575 (arrayContainsKey!0 (_keys!10258 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406977 () Unit!30567)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52808 (_ BitVec 64) (_ BitVec 32)) Unit!30567)

(assert (=> b!900575 (= lt!406977 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10258 thiss!1181) key!785 (index!38087 lt!406976)))))

(declare-fun b!900576 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900576 (= e!504121 (inRange!0 (index!38087 lt!406976) (mask!26242 thiss!1181)))))

(declare-fun b!900577 () Bool)

(declare-fun e!504122 () Bool)

(declare-fun e!504123 () Bool)

(declare-fun mapRes!29257 () Bool)

(assert (=> b!900577 (= e!504122 (and e!504123 mapRes!29257))))

(declare-fun condMapEmpty!29257 () Bool)

(declare-fun mapDefault!29257 () ValueCell!8711)

