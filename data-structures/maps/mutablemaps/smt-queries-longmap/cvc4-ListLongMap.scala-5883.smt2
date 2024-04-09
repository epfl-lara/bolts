; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75860 () Bool)

(assert start!75860)

(declare-fun b!892045 () Bool)

(declare-fun b_free!15803 () Bool)

(declare-fun b_next!15803 () Bool)

(assert (=> b!892045 (= b_free!15803 (not b_next!15803))))

(declare-fun tp!55378 () Bool)

(declare-fun b_and!26061 () Bool)

(assert (=> b!892045 (= tp!55378 b_and!26061)))

(declare-fun e!497949 () Bool)

(declare-datatypes ((array!52228 0))(
  ( (array!52229 (arr!25116 (Array (_ BitVec 32) (_ BitVec 64))) (size!25561 (_ BitVec 32))) )
))
(declare-datatypes ((V!29139 0))(
  ( (V!29140 (val!9116 Int)) )
))
(declare-datatypes ((ValueCell!8584 0))(
  ( (ValueCellFull!8584 (v!11588 V!29139)) (EmptyCell!8584) )
))
(declare-datatypes ((array!52230 0))(
  ( (array!52231 (arr!25117 (Array (_ BitVec 32) ValueCell!8584)) (size!25562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4184 0))(
  ( (LongMapFixedSize!4185 (defaultEntry!5289 Int) (mask!25789 (_ BitVec 32)) (extraKeys!4983 (_ BitVec 32)) (zeroValue!5087 V!29139) (minValue!5087 V!29139) (_size!2147 (_ BitVec 32)) (_keys!9968 array!52228) (_values!5274 array!52230) (_vacant!2147 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4184)

(declare-fun tp_is_empty!18131 () Bool)

(declare-fun e!497954 () Bool)

(declare-fun array_inv!19704 (array!52228) Bool)

(declare-fun array_inv!19705 (array!52230) Bool)

(assert (=> b!892045 (= e!497954 (and tp!55378 tp_is_empty!18131 (array_inv!19704 (_keys!9968 thiss!1181)) (array_inv!19705 (_values!5274 thiss!1181)) e!497949))))

(declare-fun b!892046 () Bool)

(declare-fun res!604487 () Bool)

(declare-fun e!497950 () Bool)

(assert (=> b!892046 (=> res!604487 e!497950)))

(declare-datatypes ((List!17854 0))(
  ( (Nil!17851) (Cons!17850 (h!18981 (_ BitVec 64)) (t!25161 List!17854)) )
))
(declare-fun arrayNoDuplicates!0 (array!52228 (_ BitVec 32) List!17854) Bool)

(assert (=> b!892046 (= res!604487 (not (arrayNoDuplicates!0 (_keys!9968 thiss!1181) #b00000000000000000000000000000000 Nil!17851)))))

(declare-fun mapNonEmpty!28751 () Bool)

(declare-fun mapRes!28751 () Bool)

(declare-fun tp!55379 () Bool)

(declare-fun e!497946 () Bool)

(assert (=> mapNonEmpty!28751 (= mapRes!28751 (and tp!55379 e!497946))))

(declare-fun mapRest!28751 () (Array (_ BitVec 32) ValueCell!8584))

(declare-fun mapValue!28751 () ValueCell!8584)

(declare-fun mapKey!28751 () (_ BitVec 32))

(assert (=> mapNonEmpty!28751 (= (arr!25117 (_values!5274 thiss!1181)) (store mapRest!28751 mapKey!28751 mapValue!28751))))

(declare-fun res!604481 () Bool)

(declare-fun e!497951 () Bool)

(assert (=> start!75860 (=> (not res!604481) (not e!497951))))

(declare-fun valid!1606 (LongMapFixedSize!4184) Bool)

(assert (=> start!75860 (= res!604481 (valid!1606 thiss!1181))))

(assert (=> start!75860 e!497951))

(assert (=> start!75860 e!497954))

(assert (=> start!75860 true))

(declare-fun b!892047 () Bool)

(declare-fun e!497948 () Bool)

(declare-datatypes ((SeekEntryResult!8834 0))(
  ( (MissingZero!8834 (index!37706 (_ BitVec 32))) (Found!8834 (index!37707 (_ BitVec 32))) (Intermediate!8834 (undefined!9646 Bool) (index!37708 (_ BitVec 32)) (x!75803 (_ BitVec 32))) (Undefined!8834) (MissingVacant!8834 (index!37709 (_ BitVec 32))) )
))
(declare-fun lt!403017 () SeekEntryResult!8834)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892047 (= e!497948 (inRange!0 (index!37707 lt!403017) (mask!25789 thiss!1181)))))

(declare-fun b!892048 () Bool)

(assert (=> b!892048 (= e!497950 true)))

(declare-fun lt!403012 () Bool)

(declare-datatypes ((tuple2!12004 0))(
  ( (tuple2!12005 (_1!6012 (_ BitVec 64)) (_2!6012 V!29139)) )
))
(declare-datatypes ((List!17855 0))(
  ( (Nil!17852) (Cons!17851 (h!18982 tuple2!12004) (t!25162 List!17855)) )
))
(declare-datatypes ((ListLongMap!10715 0))(
  ( (ListLongMap!10716 (toList!5373 List!17855)) )
))
(declare-fun lt!403013 () ListLongMap!10715)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4350 (ListLongMap!10715 (_ BitVec 64)) Bool)

(assert (=> b!892048 (= lt!403012 (contains!4350 lt!403013 key!785))))

(declare-fun b!892049 () Bool)

(declare-fun e!497953 () Bool)

(assert (=> b!892049 (= e!497953 e!497950)))

(declare-fun res!604486 () Bool)

(assert (=> b!892049 (=> res!604486 e!497950)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892049 (= res!604486 (not (validMask!0 (mask!25789 thiss!1181))))))

(assert (=> b!892049 (contains!4350 lt!403013 (select (arr!25116 (_keys!9968 thiss!1181)) (index!37707 lt!403017)))))

(declare-fun getCurrentListMap!2625 (array!52228 array!52230 (_ BitVec 32) (_ BitVec 32) V!29139 V!29139 (_ BitVec 32) Int) ListLongMap!10715)

(assert (=> b!892049 (= lt!403013 (getCurrentListMap!2625 (_keys!9968 thiss!1181) (_values!5274 thiss!1181) (mask!25789 thiss!1181) (extraKeys!4983 thiss!1181) (zeroValue!5087 thiss!1181) (minValue!5087 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5289 thiss!1181)))))

(declare-datatypes ((Unit!30351 0))(
  ( (Unit!30352) )
))
(declare-fun lt!403014 () Unit!30351)

(declare-fun lemmaValidKeyInArrayIsInListMap!218 (array!52228 array!52230 (_ BitVec 32) (_ BitVec 32) V!29139 V!29139 (_ BitVec 32) Int) Unit!30351)

(assert (=> b!892049 (= lt!403014 (lemmaValidKeyInArrayIsInListMap!218 (_keys!9968 thiss!1181) (_values!5274 thiss!1181) (mask!25789 thiss!1181) (extraKeys!4983 thiss!1181) (zeroValue!5087 thiss!1181) (minValue!5087 thiss!1181) (index!37707 lt!403017) (defaultEntry!5289 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892049 (arrayContainsKey!0 (_keys!9968 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403015 () Unit!30351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52228 (_ BitVec 64) (_ BitVec 32)) Unit!30351)

(assert (=> b!892049 (= lt!403015 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9968 thiss!1181) key!785 (index!37707 lt!403017)))))

(declare-fun b!892050 () Bool)

(declare-fun e!497952 () Bool)

(assert (=> b!892050 (= e!497949 (and e!497952 mapRes!28751))))

(declare-fun condMapEmpty!28751 () Bool)

(declare-fun mapDefault!28751 () ValueCell!8584)

