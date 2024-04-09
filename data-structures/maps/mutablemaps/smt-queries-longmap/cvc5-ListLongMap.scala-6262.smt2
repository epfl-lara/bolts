; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80066 () Bool)

(assert start!80066)

(declare-fun b!940921 () Bool)

(declare-fun b_free!17893 () Bool)

(declare-fun b_next!17893 () Bool)

(assert (=> b!940921 (= b_free!17893 (not b_next!17893))))

(declare-fun tp!62154 () Bool)

(declare-fun b_and!29323 () Bool)

(assert (=> b!940921 (= tp!62154 b_and!29323)))

(declare-fun b!940920 () Bool)

(declare-fun e!528957 () Bool)

(declare-fun tp_is_empty!20401 () Bool)

(assert (=> b!940920 (= e!528957 tp_is_empty!20401)))

(declare-fun mapNonEmpty!32392 () Bool)

(declare-fun mapRes!32392 () Bool)

(declare-fun tp!62155 () Bool)

(declare-fun e!528953 () Bool)

(assert (=> mapNonEmpty!32392 (= mapRes!32392 (and tp!62155 e!528953))))

(declare-datatypes ((V!32167 0))(
  ( (V!32168 (val!10251 Int)) )
))
(declare-datatypes ((ValueCell!9719 0))(
  ( (ValueCellFull!9719 (v!12782 V!32167)) (EmptyCell!9719) )
))
(declare-fun mapValue!32392 () ValueCell!9719)

(declare-fun mapKey!32392 () (_ BitVec 32))

(declare-datatypes ((array!56772 0))(
  ( (array!56773 (arr!27317 (Array (_ BitVec 32) ValueCell!9719)) (size!27779 (_ BitVec 32))) )
))
(declare-datatypes ((array!56774 0))(
  ( (array!56775 (arr!27318 (Array (_ BitVec 32) (_ BitVec 64))) (size!27780 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4588 0))(
  ( (LongMapFixedSize!4589 (defaultEntry!5585 Int) (mask!27133 (_ BitVec 32)) (extraKeys!5317 (_ BitVec 32)) (zeroValue!5421 V!32167) (minValue!5421 V!32167) (_size!2349 (_ BitVec 32)) (_keys!10431 array!56774) (_values!5608 array!56772) (_vacant!2349 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4588)

(declare-fun mapRest!32392 () (Array (_ BitVec 32) ValueCell!9719))

(assert (=> mapNonEmpty!32392 (= (arr!27317 (_values!5608 thiss!1141)) (store mapRest!32392 mapKey!32392 mapValue!32392))))

(declare-fun res!632739 () Bool)

(declare-fun e!528951 () Bool)

(assert (=> start!80066 (=> (not res!632739) (not e!528951))))

(declare-fun valid!1740 (LongMapFixedSize!4588) Bool)

(assert (=> start!80066 (= res!632739 (valid!1740 thiss!1141))))

(assert (=> start!80066 e!528951))

(declare-fun e!528955 () Bool)

(assert (=> start!80066 e!528955))

(assert (=> start!80066 true))

(declare-fun mapIsEmpty!32392 () Bool)

(assert (=> mapIsEmpty!32392 mapRes!32392))

(declare-fun e!528952 () Bool)

(declare-fun array_inv!21184 (array!56774) Bool)

(declare-fun array_inv!21185 (array!56772) Bool)

(assert (=> b!940921 (= e!528955 (and tp!62154 tp_is_empty!20401 (array_inv!21184 (_keys!10431 thiss!1141)) (array_inv!21185 (_values!5608 thiss!1141)) e!528952))))

(declare-fun b!940922 () Bool)

(assert (=> b!940922 (= e!528953 tp_is_empty!20401)))

(declare-fun b!940923 () Bool)

(declare-fun e!528956 () Bool)

(assert (=> b!940923 (= e!528956 (not true))))

(declare-datatypes ((SeekEntryResult!9006 0))(
  ( (MissingZero!9006 (index!38394 (_ BitVec 32))) (Found!9006 (index!38395 (_ BitVec 32))) (Intermediate!9006 (undefined!9818 Bool) (index!38396 (_ BitVec 32)) (x!80716 (_ BitVec 32))) (Undefined!9006) (MissingVacant!9006 (index!38397 (_ BitVec 32))) )
))
(declare-fun lt!424848 () SeekEntryResult!9006)

(declare-datatypes ((tuple2!13504 0))(
  ( (tuple2!13505 (_1!6762 (_ BitVec 64)) (_2!6762 V!32167)) )
))
(declare-datatypes ((List!19336 0))(
  ( (Nil!19333) (Cons!19332 (h!20478 tuple2!13504) (t!27659 List!19336)) )
))
(declare-datatypes ((ListLongMap!12215 0))(
  ( (ListLongMap!12216 (toList!6123 List!19336)) )
))
(declare-fun contains!5138 (ListLongMap!12215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3311 (array!56774 array!56772 (_ BitVec 32) (_ BitVec 32) V!32167 V!32167 (_ BitVec 32) Int) ListLongMap!12215)

(assert (=> b!940923 (contains!5138 (getCurrentListMap!3311 (_keys!10431 thiss!1141) (_values!5608 thiss!1141) (mask!27133 thiss!1141) (extraKeys!5317 thiss!1141) (zeroValue!5421 thiss!1141) (minValue!5421 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5585 thiss!1141)) (select (arr!27318 (_keys!10431 thiss!1141)) (index!38395 lt!424848)))))

(declare-datatypes ((Unit!31799 0))(
  ( (Unit!31800) )
))
(declare-fun lt!424847 () Unit!31799)

(declare-fun lemmaValidKeyInArrayIsInListMap!254 (array!56774 array!56772 (_ BitVec 32) (_ BitVec 32) V!32167 V!32167 (_ BitVec 32) Int) Unit!31799)

(assert (=> b!940923 (= lt!424847 (lemmaValidKeyInArrayIsInListMap!254 (_keys!10431 thiss!1141) (_values!5608 thiss!1141) (mask!27133 thiss!1141) (extraKeys!5317 thiss!1141) (zeroValue!5421 thiss!1141) (minValue!5421 thiss!1141) (index!38395 lt!424848) (defaultEntry!5585 thiss!1141)))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940923 (arrayContainsKey!0 (_keys!10431 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!424846 () Unit!31799)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56774 (_ BitVec 64) (_ BitVec 32)) Unit!31799)

(assert (=> b!940923 (= lt!424846 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10431 thiss!1141) key!756 (index!38395 lt!424848)))))

(declare-fun b!940924 () Bool)

(assert (=> b!940924 (= e!528952 (and e!528957 mapRes!32392))))

(declare-fun condMapEmpty!32392 () Bool)

(declare-fun mapDefault!32392 () ValueCell!9719)

