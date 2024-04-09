; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75814 () Bool)

(assert start!75814)

(declare-fun b!891225 () Bool)

(declare-fun b_free!15757 () Bool)

(declare-fun b_next!15757 () Bool)

(assert (=> b!891225 (= b_free!15757 (not b_next!15757))))

(declare-fun tp!55240 () Bool)

(declare-fun b_and!26015 () Bool)

(assert (=> b!891225 (= tp!55240 b_and!26015)))

(declare-fun b!891217 () Bool)

(declare-fun e!497330 () Bool)

(assert (=> b!891217 (= e!497330 true)))

(declare-fun lt!402603 () Bool)

(declare-datatypes ((V!29079 0))(
  ( (V!29080 (val!9093 Int)) )
))
(declare-datatypes ((tuple2!11968 0))(
  ( (tuple2!11969 (_1!5994 (_ BitVec 64)) (_2!5994 V!29079)) )
))
(declare-datatypes ((List!17821 0))(
  ( (Nil!17818) (Cons!17817 (h!18948 tuple2!11968) (t!25128 List!17821)) )
))
(declare-datatypes ((ListLongMap!10679 0))(
  ( (ListLongMap!10680 (toList!5355 List!17821)) )
))
(declare-fun lt!402598 () ListLongMap!10679)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4332 (ListLongMap!10679 (_ BitVec 64)) Bool)

(assert (=> b!891217 (= lt!402603 (contains!4332 lt!402598 key!785))))

(declare-fun b!891218 () Bool)

(declare-fun e!497329 () Bool)

(assert (=> b!891218 (= e!497329 e!497330)))

(declare-fun res!603932 () Bool)

(assert (=> b!891218 (=> res!603932 e!497330)))

(declare-datatypes ((array!52136 0))(
  ( (array!52137 (arr!25070 (Array (_ BitVec 32) (_ BitVec 64))) (size!25515 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8561 0))(
  ( (ValueCellFull!8561 (v!11565 V!29079)) (EmptyCell!8561) )
))
(declare-datatypes ((array!52138 0))(
  ( (array!52139 (arr!25071 (Array (_ BitVec 32) ValueCell!8561)) (size!25516 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4138 0))(
  ( (LongMapFixedSize!4139 (defaultEntry!5266 Int) (mask!25752 (_ BitVec 32)) (extraKeys!4960 (_ BitVec 32)) (zeroValue!5064 V!29079) (minValue!5064 V!29079) (_size!2124 (_ BitVec 32)) (_keys!9945 array!52136) (_values!5251 array!52138) (_vacant!2124 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4138)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891218 (= res!603932 (not (validMask!0 (mask!25752 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8817 0))(
  ( (MissingZero!8817 (index!37638 (_ BitVec 32))) (Found!8817 (index!37639 (_ BitVec 32))) (Intermediate!8817 (undefined!9629 Bool) (index!37640 (_ BitVec 32)) (x!75730 (_ BitVec 32))) (Undefined!8817) (MissingVacant!8817 (index!37641 (_ BitVec 32))) )
))
(declare-fun lt!402602 () SeekEntryResult!8817)

(assert (=> b!891218 (contains!4332 lt!402598 (select (arr!25070 (_keys!9945 thiss!1181)) (index!37639 lt!402602)))))

(declare-fun getCurrentListMap!2609 (array!52136 array!52138 (_ BitVec 32) (_ BitVec 32) V!29079 V!29079 (_ BitVec 32) Int) ListLongMap!10679)

(assert (=> b!891218 (= lt!402598 (getCurrentListMap!2609 (_keys!9945 thiss!1181) (_values!5251 thiss!1181) (mask!25752 thiss!1181) (extraKeys!4960 thiss!1181) (zeroValue!5064 thiss!1181) (minValue!5064 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5266 thiss!1181)))))

(declare-datatypes ((Unit!30317 0))(
  ( (Unit!30318) )
))
(declare-fun lt!402599 () Unit!30317)

(declare-fun lemmaValidKeyInArrayIsInListMap!202 (array!52136 array!52138 (_ BitVec 32) (_ BitVec 32) V!29079 V!29079 (_ BitVec 32) Int) Unit!30317)

(assert (=> b!891218 (= lt!402599 (lemmaValidKeyInArrayIsInListMap!202 (_keys!9945 thiss!1181) (_values!5251 thiss!1181) (mask!25752 thiss!1181) (extraKeys!4960 thiss!1181) (zeroValue!5064 thiss!1181) (minValue!5064 thiss!1181) (index!37639 lt!402602) (defaultEntry!5266 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891218 (arrayContainsKey!0 (_keys!9945 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402600 () Unit!30317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52136 (_ BitVec 64) (_ BitVec 32)) Unit!30317)

(assert (=> b!891218 (= lt!402600 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9945 thiss!1181) key!785 (index!37639 lt!402602)))))

(declare-fun mapNonEmpty!28682 () Bool)

(declare-fun mapRes!28682 () Bool)

(declare-fun tp!55241 () Bool)

(declare-fun e!497331 () Bool)

(assert (=> mapNonEmpty!28682 (= mapRes!28682 (and tp!55241 e!497331))))

(declare-fun mapKey!28682 () (_ BitVec 32))

(declare-fun mapRest!28682 () (Array (_ BitVec 32) ValueCell!8561))

(declare-fun mapValue!28682 () ValueCell!8561)

(assert (=> mapNonEmpty!28682 (= (arr!25071 (_values!5251 thiss!1181)) (store mapRest!28682 mapKey!28682 mapValue!28682))))

(declare-fun b!891219 () Bool)

(declare-fun res!603933 () Bool)

(declare-fun e!497326 () Bool)

(assert (=> b!891219 (=> (not res!603933) (not e!497326))))

(assert (=> b!891219 (= res!603933 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891220 () Bool)

(declare-fun res!603930 () Bool)

(assert (=> b!891220 (=> res!603930 e!497330)))

(declare-datatypes ((List!17822 0))(
  ( (Nil!17819) (Cons!17818 (h!18949 (_ BitVec 64)) (t!25129 List!17822)) )
))
(declare-fun arrayNoDuplicates!0 (array!52136 (_ BitVec 32) List!17822) Bool)

(assert (=> b!891220 (= res!603930 (not (arrayNoDuplicates!0 (_keys!9945 thiss!1181) #b00000000000000000000000000000000 Nil!17819)))))

(declare-fun b!891221 () Bool)

(declare-fun res!603934 () Bool)

(assert (=> b!891221 (=> res!603934 e!497330)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52136 (_ BitVec 32)) Bool)

(assert (=> b!891221 (= res!603934 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9945 thiss!1181) (mask!25752 thiss!1181))))))

(declare-fun b!891222 () Bool)

(declare-fun res!603931 () Bool)

(assert (=> b!891222 (=> res!603931 e!497330)))

(assert (=> b!891222 (= res!603931 (or (not (= (size!25516 (_values!5251 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25752 thiss!1181)))) (not (= (size!25515 (_keys!9945 thiss!1181)) (size!25516 (_values!5251 thiss!1181)))) (bvslt (mask!25752 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4960 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4960 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28682 () Bool)

(assert (=> mapIsEmpty!28682 mapRes!28682))

(declare-fun b!891223 () Bool)

(declare-fun e!497332 () Bool)

(declare-fun tp_is_empty!18085 () Bool)

(assert (=> b!891223 (= e!497332 tp_is_empty!18085)))

(declare-fun b!891224 () Bool)

(declare-fun e!497333 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891224 (= e!497333 (inRange!0 (index!37639 lt!402602) (mask!25752 thiss!1181)))))

(declare-fun e!497325 () Bool)

(declare-fun e!497328 () Bool)

(declare-fun array_inv!19672 (array!52136) Bool)

(declare-fun array_inv!19673 (array!52138) Bool)

(assert (=> b!891225 (= e!497325 (and tp!55240 tp_is_empty!18085 (array_inv!19672 (_keys!9945 thiss!1181)) (array_inv!19673 (_values!5251 thiss!1181)) e!497328))))

(declare-fun res!603929 () Bool)

(assert (=> start!75814 (=> (not res!603929) (not e!497326))))

(declare-fun valid!1593 (LongMapFixedSize!4138) Bool)

(assert (=> start!75814 (= res!603929 (valid!1593 thiss!1181))))

(assert (=> start!75814 e!497326))

(assert (=> start!75814 e!497325))

(assert (=> start!75814 true))

(declare-fun b!891226 () Bool)

(assert (=> b!891226 (= e!497326 (not e!497329))))

(declare-fun res!603935 () Bool)

(assert (=> b!891226 (=> res!603935 e!497329)))

(assert (=> b!891226 (= res!603935 (not (is-Found!8817 lt!402602)))))

(assert (=> b!891226 e!497333))

(declare-fun res!603936 () Bool)

(assert (=> b!891226 (=> res!603936 e!497333)))

(assert (=> b!891226 (= res!603936 (not (is-Found!8817 lt!402602)))))

(declare-fun lt!402601 () Unit!30317)

(declare-fun lemmaSeekEntryGivesInRangeIndex!37 (array!52136 array!52138 (_ BitVec 32) (_ BitVec 32) V!29079 V!29079 (_ BitVec 64)) Unit!30317)

(assert (=> b!891226 (= lt!402601 (lemmaSeekEntryGivesInRangeIndex!37 (_keys!9945 thiss!1181) (_values!5251 thiss!1181) (mask!25752 thiss!1181) (extraKeys!4960 thiss!1181) (zeroValue!5064 thiss!1181) (minValue!5064 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52136 (_ BitVec 32)) SeekEntryResult!8817)

(assert (=> b!891226 (= lt!402602 (seekEntry!0 key!785 (_keys!9945 thiss!1181) (mask!25752 thiss!1181)))))

(declare-fun b!891227 () Bool)

(assert (=> b!891227 (= e!497328 (and e!497332 mapRes!28682))))

(declare-fun condMapEmpty!28682 () Bool)

(declare-fun mapDefault!28682 () ValueCell!8561)

