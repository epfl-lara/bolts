; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80246 () Bool)

(assert start!80246)

(declare-fun b!942211 () Bool)

(declare-fun b_free!17945 () Bool)

(declare-fun b_next!17945 () Bool)

(assert (=> b!942211 (= b_free!17945 (not b_next!17945))))

(declare-fun tp!62335 () Bool)

(declare-fun b_and!29375 () Bool)

(assert (=> b!942211 (= tp!62335 b_and!29375)))

(declare-fun b!942202 () Bool)

(declare-fun res!633282 () Bool)

(declare-fun e!529789 () Bool)

(assert (=> b!942202 (=> (not res!633282) (not e!529789))))

(declare-datatypes ((V!32235 0))(
  ( (V!32236 (val!10277 Int)) )
))
(declare-datatypes ((ValueCell!9745 0))(
  ( (ValueCellFull!9745 (v!12808 V!32235)) (EmptyCell!9745) )
))
(declare-datatypes ((array!56890 0))(
  ( (array!56891 (arr!27369 (Array (_ BitVec 32) ValueCell!9745)) (size!27835 (_ BitVec 32))) )
))
(declare-datatypes ((array!56892 0))(
  ( (array!56893 (arr!27370 (Array (_ BitVec 32) (_ BitVec 64))) (size!27836 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4640 0))(
  ( (LongMapFixedSize!4641 (defaultEntry!5611 Int) (mask!27206 (_ BitVec 32)) (extraKeys!5343 (_ BitVec 32)) (zeroValue!5447 V!32235) (minValue!5447 V!32235) (_size!2375 (_ BitVec 32)) (_keys!10477 array!56892) (_values!5634 array!56890) (_vacant!2375 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4640)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56892 (_ BitVec 32)) Bool)

(assert (=> b!942202 (= res!633282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10477 thiss!1141) (mask!27206 thiss!1141)))))

(declare-fun res!633279 () Bool)

(assert (=> start!80246 (=> (not res!633279) (not e!529789))))

(declare-fun valid!1757 (LongMapFixedSize!4640) Bool)

(assert (=> start!80246 (= res!633279 (valid!1757 thiss!1141))))

(assert (=> start!80246 e!529789))

(declare-fun e!529788 () Bool)

(assert (=> start!80246 e!529788))

(assert (=> start!80246 true))

(declare-fun b!942203 () Bool)

(declare-fun res!633280 () Bool)

(assert (=> b!942203 (=> (not res!633280) (not e!529789))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942203 (= res!633280 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942204 () Bool)

(declare-fun e!529790 () Bool)

(declare-fun tp_is_empty!20453 () Bool)

(assert (=> b!942204 (= e!529790 tp_is_empty!20453)))

(declare-fun b!942205 () Bool)

(declare-datatypes ((List!19347 0))(
  ( (Nil!19344) (Cons!19343 (h!20493 (_ BitVec 64)) (t!27670 List!19347)) )
))
(declare-fun arrayNoDuplicates!0 (array!56892 (_ BitVec 32) List!19347) Bool)

(assert (=> b!942205 (= e!529789 (not (arrayNoDuplicates!0 (_keys!10477 thiss!1141) #b00000000000000000000000000000000 Nil!19344)))))

(declare-fun b!942206 () Bool)

(declare-fun e!529787 () Bool)

(assert (=> b!942206 (= e!529787 tp_is_empty!20453)))

(declare-fun mapIsEmpty!32495 () Bool)

(declare-fun mapRes!32495 () Bool)

(assert (=> mapIsEmpty!32495 mapRes!32495))

(declare-fun b!942207 () Bool)

(declare-fun res!633278 () Bool)

(assert (=> b!942207 (=> (not res!633278) (not e!529789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942207 (= res!633278 (validMask!0 (mask!27206 thiss!1141)))))

(declare-fun mapNonEmpty!32495 () Bool)

(declare-fun tp!62336 () Bool)

(assert (=> mapNonEmpty!32495 (= mapRes!32495 (and tp!62336 e!529790))))

(declare-fun mapKey!32495 () (_ BitVec 32))

(declare-fun mapRest!32495 () (Array (_ BitVec 32) ValueCell!9745))

(declare-fun mapValue!32495 () ValueCell!9745)

(assert (=> mapNonEmpty!32495 (= (arr!27369 (_values!5634 thiss!1141)) (store mapRest!32495 mapKey!32495 mapValue!32495))))

(declare-fun b!942208 () Bool)

(declare-fun e!529786 () Bool)

(assert (=> b!942208 (= e!529786 (and e!529787 mapRes!32495))))

(declare-fun condMapEmpty!32495 () Bool)

(declare-fun mapDefault!32495 () ValueCell!9745)

