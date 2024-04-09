; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80286 () Bool)

(assert start!80286)

(declare-fun b!942529 () Bool)

(declare-fun b_free!17957 () Bool)

(declare-fun b_next!17957 () Bool)

(assert (=> b!942529 (= b_free!17957 (not b_next!17957))))

(declare-fun tp!62378 () Bool)

(declare-fun b_and!29387 () Bool)

(assert (=> b!942529 (= tp!62378 b_and!29387)))

(declare-fun b!942523 () Bool)

(declare-fun e!529972 () Bool)

(declare-fun tp_is_empty!20465 () Bool)

(assert (=> b!942523 (= e!529972 tp_is_empty!20465)))

(declare-fun mapNonEmpty!32519 () Bool)

(declare-fun mapRes!32519 () Bool)

(declare-fun tp!62377 () Bool)

(declare-fun e!529975 () Bool)

(assert (=> mapNonEmpty!32519 (= mapRes!32519 (and tp!62377 e!529975))))

(declare-datatypes ((V!32251 0))(
  ( (V!32252 (val!10283 Int)) )
))
(declare-datatypes ((ValueCell!9751 0))(
  ( (ValueCellFull!9751 (v!12814 V!32251)) (EmptyCell!9751) )
))
(declare-fun mapValue!32519 () ValueCell!9751)

(declare-fun mapKey!32519 () (_ BitVec 32))

(declare-datatypes ((array!56918 0))(
  ( (array!56919 (arr!27381 (Array (_ BitVec 32) ValueCell!9751)) (size!27847 (_ BitVec 32))) )
))
(declare-datatypes ((array!56920 0))(
  ( (array!56921 (arr!27382 (Array (_ BitVec 32) (_ BitVec 64))) (size!27848 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4652 0))(
  ( (LongMapFixedSize!4653 (defaultEntry!5617 Int) (mask!27222 (_ BitVec 32)) (extraKeys!5349 (_ BitVec 32)) (zeroValue!5453 V!32251) (minValue!5453 V!32251) (_size!2381 (_ BitVec 32)) (_keys!10487 array!56920) (_values!5640 array!56918) (_vacant!2381 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4652)

(declare-fun mapRest!32519 () (Array (_ BitVec 32) ValueCell!9751))

(assert (=> mapNonEmpty!32519 (= (arr!27381 (_values!5640 thiss!1141)) (store mapRest!32519 mapKey!32519 mapValue!32519))))

(declare-fun b!942524 () Bool)

(declare-fun e!529971 () Bool)

(assert (=> b!942524 (= e!529971 (and e!529972 mapRes!32519))))

(declare-fun condMapEmpty!32519 () Bool)

(declare-fun mapDefault!32519 () ValueCell!9751)

