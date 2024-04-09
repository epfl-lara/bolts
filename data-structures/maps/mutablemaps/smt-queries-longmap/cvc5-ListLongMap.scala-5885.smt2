; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75868 () Bool)

(assert start!75868)

(declare-fun b!892191 () Bool)

(declare-fun b_free!15811 () Bool)

(declare-fun b_next!15811 () Bool)

(assert (=> b!892191 (= b_free!15811 (not b_next!15811))))

(declare-fun tp!55402 () Bool)

(declare-fun b_and!26069 () Bool)

(assert (=> b!892191 (= tp!55402 b_and!26069)))

(declare-fun b!892189 () Bool)

(declare-fun e!498060 () Bool)

(assert (=> b!892189 (= e!498060 true)))

(declare-fun lt!403087 () Bool)

(declare-datatypes ((V!29151 0))(
  ( (V!29152 (val!9120 Int)) )
))
(declare-datatypes ((tuple2!12010 0))(
  ( (tuple2!12011 (_1!6015 (_ BitVec 64)) (_2!6015 V!29151)) )
))
(declare-datatypes ((List!17860 0))(
  ( (Nil!17857) (Cons!17856 (h!18987 tuple2!12010) (t!25167 List!17860)) )
))
(declare-datatypes ((ListLongMap!10721 0))(
  ( (ListLongMap!10722 (toList!5376 List!17860)) )
))
(declare-fun lt!403084 () ListLongMap!10721)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4353 (ListLongMap!10721 (_ BitVec 64)) Bool)

(assert (=> b!892189 (= lt!403087 (contains!4353 lt!403084 key!785))))

(declare-fun b!892190 () Bool)

(declare-fun e!498054 () Bool)

(declare-fun tp_is_empty!18139 () Bool)

(assert (=> b!892190 (= e!498054 tp_is_empty!18139)))

(declare-datatypes ((array!52244 0))(
  ( (array!52245 (arr!25124 (Array (_ BitVec 32) (_ BitVec 64))) (size!25569 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8588 0))(
  ( (ValueCellFull!8588 (v!11592 V!29151)) (EmptyCell!8588) )
))
(declare-datatypes ((array!52246 0))(
  ( (array!52247 (arr!25125 (Array (_ BitVec 32) ValueCell!8588)) (size!25570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4192 0))(
  ( (LongMapFixedSize!4193 (defaultEntry!5293 Int) (mask!25797 (_ BitVec 32)) (extraKeys!4987 (_ BitVec 32)) (zeroValue!5091 V!29151) (minValue!5091 V!29151) (_size!2151 (_ BitVec 32)) (_keys!9972 array!52244) (_values!5278 array!52246) (_vacant!2151 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4192)

(declare-fun e!498056 () Bool)

(declare-fun e!498058 () Bool)

(declare-fun array_inv!19708 (array!52244) Bool)

(declare-fun array_inv!19709 (array!52246) Bool)

(assert (=> b!892191 (= e!498058 (and tp!55402 tp_is_empty!18139 (array_inv!19708 (_keys!9972 thiss!1181)) (array_inv!19709 (_values!5278 thiss!1181)) e!498056))))

(declare-fun b!892192 () Bool)

(declare-fun e!498061 () Bool)

(assert (=> b!892192 (= e!498061 e!498060)))

(declare-fun res!604582 () Bool)

(assert (=> b!892192 (=> res!604582 e!498060)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892192 (= res!604582 (not (validMask!0 (mask!25797 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8837 0))(
  ( (MissingZero!8837 (index!37718 (_ BitVec 32))) (Found!8837 (index!37719 (_ BitVec 32))) (Intermediate!8837 (undefined!9649 Bool) (index!37720 (_ BitVec 32)) (x!75822 (_ BitVec 32))) (Undefined!8837) (MissingVacant!8837 (index!37721 (_ BitVec 32))) )
))
(declare-fun lt!403085 () SeekEntryResult!8837)

(assert (=> b!892192 (contains!4353 lt!403084 (select (arr!25124 (_keys!9972 thiss!1181)) (index!37719 lt!403085)))))

(declare-fun getCurrentListMap!2627 (array!52244 array!52246 (_ BitVec 32) (_ BitVec 32) V!29151 V!29151 (_ BitVec 32) Int) ListLongMap!10721)

(assert (=> b!892192 (= lt!403084 (getCurrentListMap!2627 (_keys!9972 thiss!1181) (_values!5278 thiss!1181) (mask!25797 thiss!1181) (extraKeys!4987 thiss!1181) (zeroValue!5091 thiss!1181) (minValue!5091 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5293 thiss!1181)))))

(declare-datatypes ((Unit!30355 0))(
  ( (Unit!30356) )
))
(declare-fun lt!403086 () Unit!30355)

(declare-fun lemmaValidKeyInArrayIsInListMap!220 (array!52244 array!52246 (_ BitVec 32) (_ BitVec 32) V!29151 V!29151 (_ BitVec 32) Int) Unit!30355)

(assert (=> b!892192 (= lt!403086 (lemmaValidKeyInArrayIsInListMap!220 (_keys!9972 thiss!1181) (_values!5278 thiss!1181) (mask!25797 thiss!1181) (extraKeys!4987 thiss!1181) (zeroValue!5091 thiss!1181) (minValue!5091 thiss!1181) (index!37719 lt!403085) (defaultEntry!5293 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52244 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892192 (arrayContainsKey!0 (_keys!9972 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403089 () Unit!30355)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52244 (_ BitVec 64) (_ BitVec 32)) Unit!30355)

(assert (=> b!892192 (= lt!403089 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9972 thiss!1181) key!785 (index!37719 lt!403085)))))

(declare-fun b!892193 () Bool)

(declare-fun e!498055 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892193 (= e!498055 (inRange!0 (index!37719 lt!403085) (mask!25797 thiss!1181)))))

(declare-fun mapNonEmpty!28763 () Bool)

(declare-fun mapRes!28763 () Bool)

(declare-fun tp!55403 () Bool)

(declare-fun e!498059 () Bool)

(assert (=> mapNonEmpty!28763 (= mapRes!28763 (and tp!55403 e!498059))))

(declare-fun mapValue!28763 () ValueCell!8588)

(declare-fun mapKey!28763 () (_ BitVec 32))

(declare-fun mapRest!28763 () (Array (_ BitVec 32) ValueCell!8588))

(assert (=> mapNonEmpty!28763 (= (arr!25125 (_values!5278 thiss!1181)) (store mapRest!28763 mapKey!28763 mapValue!28763))))

(declare-fun res!604577 () Bool)

(declare-fun e!498057 () Bool)

(assert (=> start!75868 (=> (not res!604577) (not e!498057))))

(declare-fun valid!1608 (LongMapFixedSize!4192) Bool)

(assert (=> start!75868 (= res!604577 (valid!1608 thiss!1181))))

(assert (=> start!75868 e!498057))

(assert (=> start!75868 e!498058))

(assert (=> start!75868 true))

(declare-fun b!892194 () Bool)

(assert (=> b!892194 (= e!498059 tp_is_empty!18139)))

(declare-fun b!892195 () Bool)

(declare-fun res!604578 () Bool)

(assert (=> b!892195 (=> res!604578 e!498060)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52244 (_ BitVec 32)) Bool)

(assert (=> b!892195 (= res!604578 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9972 thiss!1181) (mask!25797 thiss!1181))))))

(declare-fun b!892196 () Bool)

(assert (=> b!892196 (= e!498057 (not e!498061))))

(declare-fun res!604579 () Bool)

(assert (=> b!892196 (=> res!604579 e!498061)))

(assert (=> b!892196 (= res!604579 (not (is-Found!8837 lt!403085)))))

(assert (=> b!892196 e!498055))

(declare-fun res!604580 () Bool)

(assert (=> b!892196 (=> res!604580 e!498055)))

(assert (=> b!892196 (= res!604580 (not (is-Found!8837 lt!403085)))))

(declare-fun lt!403088 () Unit!30355)

(declare-fun lemmaSeekEntryGivesInRangeIndex!52 (array!52244 array!52246 (_ BitVec 32) (_ BitVec 32) V!29151 V!29151 (_ BitVec 64)) Unit!30355)

(assert (=> b!892196 (= lt!403088 (lemmaSeekEntryGivesInRangeIndex!52 (_keys!9972 thiss!1181) (_values!5278 thiss!1181) (mask!25797 thiss!1181) (extraKeys!4987 thiss!1181) (zeroValue!5091 thiss!1181) (minValue!5091 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52244 (_ BitVec 32)) SeekEntryResult!8837)

(assert (=> b!892196 (= lt!403085 (seekEntry!0 key!785 (_keys!9972 thiss!1181) (mask!25797 thiss!1181)))))

(declare-fun b!892197 () Bool)

(declare-fun res!604583 () Bool)

(assert (=> b!892197 (=> res!604583 e!498060)))

(assert (=> b!892197 (= res!604583 (or (not (= (size!25570 (_values!5278 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25797 thiss!1181)))) (not (= (size!25569 (_keys!9972 thiss!1181)) (size!25570 (_values!5278 thiss!1181)))) (bvslt (mask!25797 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4987 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4987 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!892198 () Bool)

(assert (=> b!892198 (= e!498056 (and e!498054 mapRes!28763))))

(declare-fun condMapEmpty!28763 () Bool)

(declare-fun mapDefault!28763 () ValueCell!8588)

