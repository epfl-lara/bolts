; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75872 () Bool)

(assert start!75872)

(declare-fun b!892265 () Bool)

(declare-fun b_free!15815 () Bool)

(declare-fun b_next!15815 () Bool)

(assert (=> b!892265 (= b_free!15815 (not b_next!15815))))

(declare-fun tp!55415 () Bool)

(declare-fun b_and!26073 () Bool)

(assert (=> b!892265 (= tp!55415 b_and!26073)))

(declare-fun b!892261 () Bool)

(declare-fun res!604631 () Bool)

(declare-fun e!498109 () Bool)

(assert (=> b!892261 (=> (not res!604631) (not e!498109))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892261 (= res!604631 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892262 () Bool)

(declare-fun res!604630 () Bool)

(declare-fun e!498113 () Bool)

(assert (=> b!892262 (=> res!604630 e!498113)))

(declare-datatypes ((array!52252 0))(
  ( (array!52253 (arr!25128 (Array (_ BitVec 32) (_ BitVec 64))) (size!25573 (_ BitVec 32))) )
))
(declare-datatypes ((V!29155 0))(
  ( (V!29156 (val!9122 Int)) )
))
(declare-datatypes ((ValueCell!8590 0))(
  ( (ValueCellFull!8590 (v!11594 V!29155)) (EmptyCell!8590) )
))
(declare-datatypes ((array!52254 0))(
  ( (array!52255 (arr!25129 (Array (_ BitVec 32) ValueCell!8590)) (size!25574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4196 0))(
  ( (LongMapFixedSize!4197 (defaultEntry!5295 Int) (mask!25799 (_ BitVec 32)) (extraKeys!4989 (_ BitVec 32)) (zeroValue!5093 V!29155) (minValue!5093 V!29155) (_size!2153 (_ BitVec 32)) (_keys!9974 array!52252) (_values!5280 array!52254) (_vacant!2153 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4196)

(assert (=> b!892262 (= res!604630 (or (not (= (size!25574 (_values!5280 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25799 thiss!1181)))) (not (= (size!25573 (_keys!9974 thiss!1181)) (size!25574 (_values!5280 thiss!1181)))) (bvslt (mask!25799 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4989 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4989 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!892263 () Bool)

(assert (=> b!892263 (= e!498113 true)))

(declare-fun lt!403125 () Bool)

(declare-datatypes ((tuple2!12014 0))(
  ( (tuple2!12015 (_1!6017 (_ BitVec 64)) (_2!6017 V!29155)) )
))
(declare-datatypes ((List!17863 0))(
  ( (Nil!17860) (Cons!17859 (h!18990 tuple2!12014) (t!25170 List!17863)) )
))
(declare-datatypes ((ListLongMap!10725 0))(
  ( (ListLongMap!10726 (toList!5378 List!17863)) )
))
(declare-fun lt!403120 () ListLongMap!10725)

(declare-fun contains!4355 (ListLongMap!10725 (_ BitVec 64)) Bool)

(assert (=> b!892263 (= lt!403125 (contains!4355 lt!403120 key!785))))

(declare-fun res!604626 () Bool)

(assert (=> start!75872 (=> (not res!604626) (not e!498109))))

(declare-fun valid!1610 (LongMapFixedSize!4196) Bool)

(assert (=> start!75872 (= res!604626 (valid!1610 thiss!1181))))

(assert (=> start!75872 e!498109))

(declare-fun e!498115 () Bool)

(assert (=> start!75872 e!498115))

(assert (=> start!75872 true))

(declare-fun b!892264 () Bool)

(declare-fun e!498111 () Bool)

(assert (=> b!892264 (= e!498111 e!498113)))

(declare-fun res!604632 () Bool)

(assert (=> b!892264 (=> res!604632 e!498113)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892264 (= res!604632 (not (validMask!0 (mask!25799 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8839 0))(
  ( (MissingZero!8839 (index!37726 (_ BitVec 32))) (Found!8839 (index!37727 (_ BitVec 32))) (Intermediate!8839 (undefined!9651 Bool) (index!37728 (_ BitVec 32)) (x!75824 (_ BitVec 32))) (Undefined!8839) (MissingVacant!8839 (index!37729 (_ BitVec 32))) )
))
(declare-fun lt!403121 () SeekEntryResult!8839)

(assert (=> b!892264 (contains!4355 lt!403120 (select (arr!25128 (_keys!9974 thiss!1181)) (index!37727 lt!403121)))))

(declare-fun getCurrentListMap!2629 (array!52252 array!52254 (_ BitVec 32) (_ BitVec 32) V!29155 V!29155 (_ BitVec 32) Int) ListLongMap!10725)

(assert (=> b!892264 (= lt!403120 (getCurrentListMap!2629 (_keys!9974 thiss!1181) (_values!5280 thiss!1181) (mask!25799 thiss!1181) (extraKeys!4989 thiss!1181) (zeroValue!5093 thiss!1181) (minValue!5093 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5295 thiss!1181)))))

(declare-datatypes ((Unit!30359 0))(
  ( (Unit!30360) )
))
(declare-fun lt!403122 () Unit!30359)

(declare-fun lemmaValidKeyInArrayIsInListMap!222 (array!52252 array!52254 (_ BitVec 32) (_ BitVec 32) V!29155 V!29155 (_ BitVec 32) Int) Unit!30359)

(assert (=> b!892264 (= lt!403122 (lemmaValidKeyInArrayIsInListMap!222 (_keys!9974 thiss!1181) (_values!5280 thiss!1181) (mask!25799 thiss!1181) (extraKeys!4989 thiss!1181) (zeroValue!5093 thiss!1181) (minValue!5093 thiss!1181) (index!37727 lt!403121) (defaultEntry!5295 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892264 (arrayContainsKey!0 (_keys!9974 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403124 () Unit!30359)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52252 (_ BitVec 64) (_ BitVec 32)) Unit!30359)

(assert (=> b!892264 (= lt!403124 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9974 thiss!1181) key!785 (index!37727 lt!403121)))))

(declare-fun tp_is_empty!18143 () Bool)

(declare-fun e!498116 () Bool)

(declare-fun array_inv!19712 (array!52252) Bool)

(declare-fun array_inv!19713 (array!52254) Bool)

(assert (=> b!892265 (= e!498115 (and tp!55415 tp_is_empty!18143 (array_inv!19712 (_keys!9974 thiss!1181)) (array_inv!19713 (_values!5280 thiss!1181)) e!498116))))

(declare-fun b!892266 () Bool)

(declare-fun e!498110 () Bool)

(assert (=> b!892266 (= e!498110 tp_is_empty!18143)))

(declare-fun b!892267 () Bool)

(assert (=> b!892267 (= e!498109 (not e!498111))))

(declare-fun res!604628 () Bool)

(assert (=> b!892267 (=> res!604628 e!498111)))

(assert (=> b!892267 (= res!604628 (not (is-Found!8839 lt!403121)))))

(declare-fun e!498108 () Bool)

(assert (=> b!892267 e!498108))

(declare-fun res!604627 () Bool)

(assert (=> b!892267 (=> res!604627 e!498108)))

(assert (=> b!892267 (= res!604627 (not (is-Found!8839 lt!403121)))))

(declare-fun lt!403123 () Unit!30359)

(declare-fun lemmaSeekEntryGivesInRangeIndex!54 (array!52252 array!52254 (_ BitVec 32) (_ BitVec 32) V!29155 V!29155 (_ BitVec 64)) Unit!30359)

(assert (=> b!892267 (= lt!403123 (lemmaSeekEntryGivesInRangeIndex!54 (_keys!9974 thiss!1181) (_values!5280 thiss!1181) (mask!25799 thiss!1181) (extraKeys!4989 thiss!1181) (zeroValue!5093 thiss!1181) (minValue!5093 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52252 (_ BitVec 32)) SeekEntryResult!8839)

(assert (=> b!892267 (= lt!403121 (seekEntry!0 key!785 (_keys!9974 thiss!1181) (mask!25799 thiss!1181)))))

(declare-fun b!892268 () Bool)

(declare-fun e!498112 () Bool)

(declare-fun mapRes!28769 () Bool)

(assert (=> b!892268 (= e!498116 (and e!498112 mapRes!28769))))

(declare-fun condMapEmpty!28769 () Bool)

(declare-fun mapDefault!28769 () ValueCell!8590)

