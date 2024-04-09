; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75812 () Bool)

(assert start!75812)

(declare-fun b!891189 () Bool)

(declare-fun b_free!15755 () Bool)

(declare-fun b_next!15755 () Bool)

(assert (=> b!891189 (= b_free!15755 (not b_next!15755))))

(declare-fun tp!55234 () Bool)

(declare-fun b_and!26013 () Bool)

(assert (=> b!891189 (= tp!55234 b_and!26013)))

(declare-fun res!603906 () Bool)

(declare-fun e!497305 () Bool)

(assert (=> start!75812 (=> (not res!603906) (not e!497305))))

(declare-datatypes ((array!52132 0))(
  ( (array!52133 (arr!25068 (Array (_ BitVec 32) (_ BitVec 64))) (size!25513 (_ BitVec 32))) )
))
(declare-datatypes ((V!29075 0))(
  ( (V!29076 (val!9092 Int)) )
))
(declare-datatypes ((ValueCell!8560 0))(
  ( (ValueCellFull!8560 (v!11564 V!29075)) (EmptyCell!8560) )
))
(declare-datatypes ((array!52134 0))(
  ( (array!52135 (arr!25069 (Array (_ BitVec 32) ValueCell!8560)) (size!25514 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4136 0))(
  ( (LongMapFixedSize!4137 (defaultEntry!5265 Int) (mask!25749 (_ BitVec 32)) (extraKeys!4959 (_ BitVec 32)) (zeroValue!5063 V!29075) (minValue!5063 V!29075) (_size!2123 (_ BitVec 32)) (_keys!9944 array!52132) (_values!5250 array!52134) (_vacant!2123 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4136)

(declare-fun valid!1592 (LongMapFixedSize!4136) Bool)

(assert (=> start!75812 (= res!603906 (valid!1592 thiss!1181))))

(assert (=> start!75812 e!497305))

(declare-fun e!497299 () Bool)

(assert (=> start!75812 e!497299))

(assert (=> start!75812 true))

(declare-fun b!891181 () Bool)

(declare-fun e!497303 () Bool)

(declare-fun e!497306 () Bool)

(assert (=> b!891181 (= e!497303 e!497306)))

(declare-fun res!603912 () Bool)

(assert (=> b!891181 (=> res!603912 e!497306)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891181 (= res!603912 (not (validMask!0 (mask!25749 thiss!1181))))))

(declare-datatypes ((tuple2!11966 0))(
  ( (tuple2!11967 (_1!5993 (_ BitVec 64)) (_2!5993 V!29075)) )
))
(declare-datatypes ((List!17820 0))(
  ( (Nil!17817) (Cons!17816 (h!18947 tuple2!11966) (t!25127 List!17820)) )
))
(declare-datatypes ((ListLongMap!10677 0))(
  ( (ListLongMap!10678 (toList!5354 List!17820)) )
))
(declare-fun lt!402583 () ListLongMap!10677)

(declare-datatypes ((SeekEntryResult!8816 0))(
  ( (MissingZero!8816 (index!37634 (_ BitVec 32))) (Found!8816 (index!37635 (_ BitVec 32))) (Intermediate!8816 (undefined!9628 Bool) (index!37636 (_ BitVec 32)) (x!75721 (_ BitVec 32))) (Undefined!8816) (MissingVacant!8816 (index!37637 (_ BitVec 32))) )
))
(declare-fun lt!402585 () SeekEntryResult!8816)

(declare-fun contains!4331 (ListLongMap!10677 (_ BitVec 64)) Bool)

(assert (=> b!891181 (contains!4331 lt!402583 (select (arr!25068 (_keys!9944 thiss!1181)) (index!37635 lt!402585)))))

(declare-fun getCurrentListMap!2608 (array!52132 array!52134 (_ BitVec 32) (_ BitVec 32) V!29075 V!29075 (_ BitVec 32) Int) ListLongMap!10677)

(assert (=> b!891181 (= lt!402583 (getCurrentListMap!2608 (_keys!9944 thiss!1181) (_values!5250 thiss!1181) (mask!25749 thiss!1181) (extraKeys!4959 thiss!1181) (zeroValue!5063 thiss!1181) (minValue!5063 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5265 thiss!1181)))))

(declare-datatypes ((Unit!30315 0))(
  ( (Unit!30316) )
))
(declare-fun lt!402584 () Unit!30315)

(declare-fun lemmaValidKeyInArrayIsInListMap!201 (array!52132 array!52134 (_ BitVec 32) (_ BitVec 32) V!29075 V!29075 (_ BitVec 32) Int) Unit!30315)

(assert (=> b!891181 (= lt!402584 (lemmaValidKeyInArrayIsInListMap!201 (_keys!9944 thiss!1181) (_values!5250 thiss!1181) (mask!25749 thiss!1181) (extraKeys!4959 thiss!1181) (zeroValue!5063 thiss!1181) (minValue!5063 thiss!1181) (index!37635 lt!402585) (defaultEntry!5265 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891181 (arrayContainsKey!0 (_keys!9944 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402581 () Unit!30315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52132 (_ BitVec 64) (_ BitVec 32)) Unit!30315)

(assert (=> b!891181 (= lt!402581 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9944 thiss!1181) key!785 (index!37635 lt!402585)))))

(declare-fun b!891182 () Bool)

(declare-fun res!603909 () Bool)

(assert (=> b!891182 (=> res!603909 e!497306)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52132 (_ BitVec 32)) Bool)

(assert (=> b!891182 (= res!603909 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9944 thiss!1181) (mask!25749 thiss!1181))))))

(declare-fun b!891183 () Bool)

(assert (=> b!891183 (= e!497305 (not e!497303))))

(declare-fun res!603907 () Bool)

(assert (=> b!891183 (=> res!603907 e!497303)))

(assert (=> b!891183 (= res!603907 (not (is-Found!8816 lt!402585)))))

(declare-fun e!497302 () Bool)

(assert (=> b!891183 e!497302))

(declare-fun res!603905 () Bool)

(assert (=> b!891183 (=> res!603905 e!497302)))

(assert (=> b!891183 (= res!603905 (not (is-Found!8816 lt!402585)))))

(declare-fun lt!402580 () Unit!30315)

(declare-fun lemmaSeekEntryGivesInRangeIndex!36 (array!52132 array!52134 (_ BitVec 32) (_ BitVec 32) V!29075 V!29075 (_ BitVec 64)) Unit!30315)

(assert (=> b!891183 (= lt!402580 (lemmaSeekEntryGivesInRangeIndex!36 (_keys!9944 thiss!1181) (_values!5250 thiss!1181) (mask!25749 thiss!1181) (extraKeys!4959 thiss!1181) (zeroValue!5063 thiss!1181) (minValue!5063 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52132 (_ BitVec 32)) SeekEntryResult!8816)

(assert (=> b!891183 (= lt!402585 (seekEntry!0 key!785 (_keys!9944 thiss!1181) (mask!25749 thiss!1181)))))

(declare-fun b!891184 () Bool)

(declare-fun res!603910 () Bool)

(assert (=> b!891184 (=> (not res!603910) (not e!497305))))

(assert (=> b!891184 (= res!603910 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891185 () Bool)

(declare-fun e!497298 () Bool)

(declare-fun e!497301 () Bool)

(declare-fun mapRes!28679 () Bool)

(assert (=> b!891185 (= e!497298 (and e!497301 mapRes!28679))))

(declare-fun condMapEmpty!28679 () Bool)

(declare-fun mapDefault!28679 () ValueCell!8560)

