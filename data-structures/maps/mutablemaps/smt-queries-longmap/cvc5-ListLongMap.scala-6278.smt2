; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80318 () Bool)

(assert start!80318)

(declare-fun b!943052 () Bool)

(declare-fun b_free!17989 () Bool)

(declare-fun b_next!17989 () Bool)

(assert (=> b!943052 (= b_free!17989 (not b_next!17989))))

(declare-fun tp!62473 () Bool)

(declare-fun b_and!29419 () Bool)

(assert (=> b!943052 (= tp!62473 b_and!29419)))

(declare-fun b!943051 () Bool)

(declare-fun res!633786 () Bool)

(declare-fun e!530260 () Bool)

(assert (=> b!943051 (=> (not res!633786) (not e!530260))))

(declare-datatypes ((V!32295 0))(
  ( (V!32296 (val!10299 Int)) )
))
(declare-datatypes ((ValueCell!9767 0))(
  ( (ValueCellFull!9767 (v!12830 V!32295)) (EmptyCell!9767) )
))
(declare-datatypes ((array!56982 0))(
  ( (array!56983 (arr!27413 (Array (_ BitVec 32) ValueCell!9767)) (size!27879 (_ BitVec 32))) )
))
(declare-datatypes ((array!56984 0))(
  ( (array!56985 (arr!27414 (Array (_ BitVec 32) (_ BitVec 64))) (size!27880 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4684 0))(
  ( (LongMapFixedSize!4685 (defaultEntry!5633 Int) (mask!27250 (_ BitVec 32)) (extraKeys!5365 (_ BitVec 32)) (zeroValue!5469 V!32295) (minValue!5469 V!32295) (_size!2397 (_ BitVec 32)) (_keys!10503 array!56984) (_values!5656 array!56982) (_vacant!2397 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4684)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943051 (= res!633786 (validMask!0 (mask!27250 thiss!1141)))))

(declare-fun tp_is_empty!20497 () Bool)

(declare-fun e!530259 () Bool)

(declare-fun e!530264 () Bool)

(declare-fun array_inv!21252 (array!56984) Bool)

(declare-fun array_inv!21253 (array!56982) Bool)

(assert (=> b!943052 (= e!530259 (and tp!62473 tp_is_empty!20497 (array_inv!21252 (_keys!10503 thiss!1141)) (array_inv!21253 (_values!5656 thiss!1141)) e!530264))))

(declare-fun b!943053 () Bool)

(declare-fun res!633790 () Bool)

(assert (=> b!943053 (=> (not res!633790) (not e!530260))))

(assert (=> b!943053 (= res!633790 (and (= (size!27879 (_values!5656 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27250 thiss!1141))) (= (size!27880 (_keys!10503 thiss!1141)) (size!27879 (_values!5656 thiss!1141))) (bvsge (mask!27250 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5365 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5365 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!633792 () Bool)

(assert (=> start!80318 (=> (not res!633792) (not e!530260))))

(declare-fun valid!1771 (LongMapFixedSize!4684) Bool)

(assert (=> start!80318 (= res!633792 (valid!1771 thiss!1141))))

(assert (=> start!80318 e!530260))

(assert (=> start!80318 e!530259))

(assert (=> start!80318 true))

(declare-fun b!943054 () Bool)

(declare-fun res!633791 () Bool)

(assert (=> b!943054 (=> (not res!633791) (not e!530260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56984 (_ BitVec 32)) Bool)

(assert (=> b!943054 (= res!633791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10503 thiss!1141) (mask!27250 thiss!1141)))))

(declare-fun b!943055 () Bool)

(declare-fun res!633787 () Bool)

(assert (=> b!943055 (=> (not res!633787) (not e!530260))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!943055 (= res!633787 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943056 () Bool)

(declare-fun e!530261 () Bool)

(assert (=> b!943056 (= e!530261 tp_is_empty!20497)))

(declare-fun mapIsEmpty!32567 () Bool)

(declare-fun mapRes!32567 () Bool)

(assert (=> mapIsEmpty!32567 mapRes!32567))

(declare-fun mapNonEmpty!32567 () Bool)

(declare-fun tp!62474 () Bool)

(assert (=> mapNonEmpty!32567 (= mapRes!32567 (and tp!62474 e!530261))))

(declare-fun mapKey!32567 () (_ BitVec 32))

(declare-fun mapValue!32567 () ValueCell!9767)

(declare-fun mapRest!32567 () (Array (_ BitVec 32) ValueCell!9767))

(assert (=> mapNonEmpty!32567 (= (arr!27413 (_values!5656 thiss!1141)) (store mapRest!32567 mapKey!32567 mapValue!32567))))

(declare-fun b!943057 () Bool)

(declare-fun res!633789 () Bool)

(assert (=> b!943057 (=> (not res!633789) (not e!530260))))

(declare-datatypes ((SeekEntryResult!9036 0))(
  ( (MissingZero!9036 (index!38514 (_ BitVec 32))) (Found!9036 (index!38515 (_ BitVec 32))) (Intermediate!9036 (undefined!9848 Bool) (index!38516 (_ BitVec 32)) (x!80982 (_ BitVec 32))) (Undefined!9036) (MissingVacant!9036 (index!38517 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56984 (_ BitVec 32)) SeekEntryResult!9036)

(assert (=> b!943057 (= res!633789 (not (is-Found!9036 (seekEntry!0 key!756 (_keys!10503 thiss!1141) (mask!27250 thiss!1141)))))))

(declare-fun b!943058 () Bool)

(declare-fun res!633788 () Bool)

(assert (=> b!943058 (=> (not res!633788) (not e!530260))))

(declare-datatypes ((tuple2!13536 0))(
  ( (tuple2!13537 (_1!6778 (_ BitVec 64)) (_2!6778 V!32295)) )
))
(declare-datatypes ((List!19373 0))(
  ( (Nil!19370) (Cons!19369 (h!20519 tuple2!13536) (t!27696 List!19373)) )
))
(declare-datatypes ((ListLongMap!12247 0))(
  ( (ListLongMap!12248 (toList!6139 List!19373)) )
))
(declare-fun contains!5160 (ListLongMap!12247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3327 (array!56984 array!56982 (_ BitVec 32) (_ BitVec 32) V!32295 V!32295 (_ BitVec 32) Int) ListLongMap!12247)

(assert (=> b!943058 (= res!633788 (contains!5160 (getCurrentListMap!3327 (_keys!10503 thiss!1141) (_values!5656 thiss!1141) (mask!27250 thiss!1141) (extraKeys!5365 thiss!1141) (zeroValue!5469 thiss!1141) (minValue!5469 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5633 thiss!1141)) key!756))))

(declare-fun b!943059 () Bool)

(assert (=> b!943059 (= e!530260 false)))

(declare-fun lt!425178 () Bool)

(declare-datatypes ((List!19374 0))(
  ( (Nil!19371) (Cons!19370 (h!20520 (_ BitVec 64)) (t!27697 List!19374)) )
))
(declare-fun arrayNoDuplicates!0 (array!56984 (_ BitVec 32) List!19374) Bool)

(assert (=> b!943059 (= lt!425178 (arrayNoDuplicates!0 (_keys!10503 thiss!1141) #b00000000000000000000000000000000 Nil!19371))))

(declare-fun b!943060 () Bool)

(declare-fun e!530263 () Bool)

(assert (=> b!943060 (= e!530264 (and e!530263 mapRes!32567))))

(declare-fun condMapEmpty!32567 () Bool)

(declare-fun mapDefault!32567 () ValueCell!9767)

