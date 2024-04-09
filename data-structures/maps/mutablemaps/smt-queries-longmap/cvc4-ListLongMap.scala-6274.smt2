; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80298 () Bool)

(assert start!80298)

(declare-fun b!942727 () Bool)

(declare-fun b_free!17969 () Bool)

(declare-fun b_next!17969 () Bool)

(assert (=> b!942727 (= b_free!17969 (not b_next!17969))))

(declare-fun tp!62414 () Bool)

(declare-fun b_and!29399 () Bool)

(assert (=> b!942727 (= tp!62414 b_and!29399)))

(declare-fun b!942721 () Bool)

(declare-fun e!530080 () Bool)

(declare-fun tp_is_empty!20477 () Bool)

(assert (=> b!942721 (= e!530080 tp_is_empty!20477)))

(declare-fun b!942723 () Bool)

(declare-fun res!633580 () Bool)

(declare-fun e!530079 () Bool)

(assert (=> b!942723 (=> (not res!633580) (not e!530079))))

(declare-datatypes ((V!32267 0))(
  ( (V!32268 (val!10289 Int)) )
))
(declare-datatypes ((ValueCell!9757 0))(
  ( (ValueCellFull!9757 (v!12820 V!32267)) (EmptyCell!9757) )
))
(declare-datatypes ((array!56942 0))(
  ( (array!56943 (arr!27393 (Array (_ BitVec 32) ValueCell!9757)) (size!27859 (_ BitVec 32))) )
))
(declare-datatypes ((array!56944 0))(
  ( (array!56945 (arr!27394 (Array (_ BitVec 32) (_ BitVec 64))) (size!27860 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4664 0))(
  ( (LongMapFixedSize!4665 (defaultEntry!5623 Int) (mask!27232 (_ BitVec 32)) (extraKeys!5355 (_ BitVec 32)) (zeroValue!5459 V!32267) (minValue!5459 V!32267) (_size!2387 (_ BitVec 32)) (_keys!10493 array!56944) (_values!5646 array!56942) (_vacant!2387 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4664)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56944 (_ BitVec 32)) Bool)

(assert (=> b!942723 (= res!633580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10493 thiss!1141) (mask!27232 thiss!1141)))))

(declare-fun mapIsEmpty!32537 () Bool)

(declare-fun mapRes!32537 () Bool)

(assert (=> mapIsEmpty!32537 mapRes!32537))

(declare-fun mapNonEmpty!32537 () Bool)

(declare-fun tp!62413 () Bool)

(declare-fun e!530082 () Bool)

(assert (=> mapNonEmpty!32537 (= mapRes!32537 (and tp!62413 e!530082))))

(declare-fun mapValue!32537 () ValueCell!9757)

(declare-fun mapKey!32537 () (_ BitVec 32))

(declare-fun mapRest!32537 () (Array (_ BitVec 32) ValueCell!9757))

(assert (=> mapNonEmpty!32537 (= (arr!27393 (_values!5646 thiss!1141)) (store mapRest!32537 mapKey!32537 mapValue!32537))))

(declare-fun b!942724 () Bool)

(declare-fun res!633576 () Bool)

(assert (=> b!942724 (=> (not res!633576) (not e!530079))))

(assert (=> b!942724 (= res!633576 (and (= (size!27859 (_values!5646 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27232 thiss!1141))) (= (size!27860 (_keys!10493 thiss!1141)) (size!27859 (_values!5646 thiss!1141))) (bvsge (mask!27232 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5355 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5355 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942725 () Bool)

(declare-fun e!530081 () Bool)

(assert (=> b!942725 (= e!530081 (and e!530080 mapRes!32537))))

(declare-fun condMapEmpty!32537 () Bool)

(declare-fun mapDefault!32537 () ValueCell!9757)

