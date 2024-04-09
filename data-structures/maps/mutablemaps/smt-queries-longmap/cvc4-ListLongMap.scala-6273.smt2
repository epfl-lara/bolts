; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80292 () Bool)

(assert start!80292)

(declare-fun b!942625 () Bool)

(declare-fun b_free!17963 () Bool)

(declare-fun b_next!17963 () Bool)

(assert (=> b!942625 (= b_free!17963 (not b_next!17963))))

(declare-fun tp!62395 () Bool)

(declare-fun b_and!29393 () Bool)

(assert (=> b!942625 (= tp!62395 b_and!29393)))

(declare-fun b!942622 () Bool)

(declare-fun res!633519 () Bool)

(declare-fun e!530028 () Bool)

(assert (=> b!942622 (=> (not res!633519) (not e!530028))))

(declare-datatypes ((V!32259 0))(
  ( (V!32260 (val!10286 Int)) )
))
(declare-datatypes ((ValueCell!9754 0))(
  ( (ValueCellFull!9754 (v!12817 V!32259)) (EmptyCell!9754) )
))
(declare-datatypes ((array!56930 0))(
  ( (array!56931 (arr!27387 (Array (_ BitVec 32) ValueCell!9754)) (size!27853 (_ BitVec 32))) )
))
(declare-datatypes ((array!56932 0))(
  ( (array!56933 (arr!27388 (Array (_ BitVec 32) (_ BitVec 64))) (size!27854 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4658 0))(
  ( (LongMapFixedSize!4659 (defaultEntry!5620 Int) (mask!27227 (_ BitVec 32)) (extraKeys!5352 (_ BitVec 32)) (zeroValue!5456 V!32259) (minValue!5456 V!32259) (_size!2384 (_ BitVec 32)) (_keys!10490 array!56932) (_values!5643 array!56930) (_vacant!2384 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4658)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13518 0))(
  ( (tuple2!13519 (_1!6769 (_ BitVec 64)) (_2!6769 V!32259)) )
))
(declare-datatypes ((List!19356 0))(
  ( (Nil!19353) (Cons!19352 (h!20502 tuple2!13518) (t!27679 List!19356)) )
))
(declare-datatypes ((ListLongMap!12229 0))(
  ( (ListLongMap!12230 (toList!6130 List!19356)) )
))
(declare-fun contains!5151 (ListLongMap!12229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3318 (array!56932 array!56930 (_ BitVec 32) (_ BitVec 32) V!32259 V!32259 (_ BitVec 32) Int) ListLongMap!12229)

(assert (=> b!942622 (= res!633519 (contains!5151 (getCurrentListMap!3318 (_keys!10490 thiss!1141) (_values!5643 thiss!1141) (mask!27227 thiss!1141) (extraKeys!5352 thiss!1141) (zeroValue!5456 thiss!1141) (minValue!5456 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5620 thiss!1141)) key!756))))

(declare-fun res!633513 () Bool)

(assert (=> start!80292 (=> (not res!633513) (not e!530028))))

(declare-fun valid!1764 (LongMapFixedSize!4658) Bool)

(assert (=> start!80292 (= res!633513 (valid!1764 thiss!1141))))

(assert (=> start!80292 e!530028))

(declare-fun e!530030 () Bool)

(assert (=> start!80292 e!530030))

(assert (=> start!80292 true))

(declare-fun b!942623 () Bool)

(assert (=> b!942623 (= e!530028 false)))

(declare-fun lt!425139 () Bool)

(declare-datatypes ((List!19357 0))(
  ( (Nil!19354) (Cons!19353 (h!20503 (_ BitVec 64)) (t!27680 List!19357)) )
))
(declare-fun arrayNoDuplicates!0 (array!56932 (_ BitVec 32) List!19357) Bool)

(assert (=> b!942623 (= lt!425139 (arrayNoDuplicates!0 (_keys!10490 thiss!1141) #b00000000000000000000000000000000 Nil!19354))))

(declare-fun b!942624 () Bool)

(declare-fun e!530026 () Bool)

(declare-fun tp_is_empty!20471 () Bool)

(assert (=> b!942624 (= e!530026 tp_is_empty!20471)))

(declare-fun e!530029 () Bool)

(declare-fun array_inv!21232 (array!56932) Bool)

(declare-fun array_inv!21233 (array!56930) Bool)

(assert (=> b!942625 (= e!530030 (and tp!62395 tp_is_empty!20471 (array_inv!21232 (_keys!10490 thiss!1141)) (array_inv!21233 (_values!5643 thiss!1141)) e!530029))))

(declare-fun b!942626 () Bool)

(declare-fun res!633515 () Bool)

(assert (=> b!942626 (=> (not res!633515) (not e!530028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942626 (= res!633515 (validMask!0 (mask!27227 thiss!1141)))))

(declare-fun b!942627 () Bool)

(declare-fun res!633516 () Bool)

(assert (=> b!942627 (=> (not res!633516) (not e!530028))))

(assert (=> b!942627 (= res!633516 (and (= (size!27853 (_values!5643 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27227 thiss!1141))) (= (size!27854 (_keys!10490 thiss!1141)) (size!27853 (_values!5643 thiss!1141))) (bvsge (mask!27227 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5352 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5352 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!32528 () Bool)

(declare-fun mapRes!32528 () Bool)

(declare-fun tp!62396 () Bool)

(declare-fun e!530025 () Bool)

(assert (=> mapNonEmpty!32528 (= mapRes!32528 (and tp!62396 e!530025))))

(declare-fun mapRest!32528 () (Array (_ BitVec 32) ValueCell!9754))

(declare-fun mapValue!32528 () ValueCell!9754)

(declare-fun mapKey!32528 () (_ BitVec 32))

(assert (=> mapNonEmpty!32528 (= (arr!27387 (_values!5643 thiss!1141)) (store mapRest!32528 mapKey!32528 mapValue!32528))))

(declare-fun b!942628 () Bool)

(declare-fun res!633517 () Bool)

(assert (=> b!942628 (=> (not res!633517) (not e!530028))))

(assert (=> b!942628 (= res!633517 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!32528 () Bool)

(assert (=> mapIsEmpty!32528 mapRes!32528))

(declare-fun b!942629 () Bool)

(assert (=> b!942629 (= e!530029 (and e!530026 mapRes!32528))))

(declare-fun condMapEmpty!32528 () Bool)

(declare-fun mapDefault!32528 () ValueCell!9754)

