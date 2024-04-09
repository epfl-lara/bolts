; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80168 () Bool)

(assert start!80168)

(declare-fun b!941649 () Bool)

(declare-fun b_free!17927 () Bool)

(declare-fun b_next!17927 () Bool)

(assert (=> b!941649 (= b_free!17927 (not b_next!17927))))

(declare-fun tp!62271 () Bool)

(declare-fun b_and!29357 () Bool)

(assert (=> b!941649 (= tp!62271 b_and!29357)))

(declare-fun b!941648 () Bool)

(declare-fun res!633040 () Bool)

(declare-fun e!529448 () Bool)

(assert (=> b!941648 (=> (not res!633040) (not e!529448))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941648 (= res!633040 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32457 () Bool)

(declare-fun mapRes!32457 () Bool)

(declare-fun tp!62270 () Bool)

(declare-fun e!529449 () Bool)

(assert (=> mapNonEmpty!32457 (= mapRes!32457 (and tp!62270 e!529449))))

(declare-datatypes ((V!32211 0))(
  ( (V!32212 (val!10268 Int)) )
))
(declare-datatypes ((ValueCell!9736 0))(
  ( (ValueCellFull!9736 (v!12799 V!32211)) (EmptyCell!9736) )
))
(declare-fun mapValue!32457 () ValueCell!9736)

(declare-datatypes ((array!56848 0))(
  ( (array!56849 (arr!27351 (Array (_ BitVec 32) ValueCell!9736)) (size!27815 (_ BitVec 32))) )
))
(declare-datatypes ((array!56850 0))(
  ( (array!56851 (arr!27352 (Array (_ BitVec 32) (_ BitVec 64))) (size!27816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4622 0))(
  ( (LongMapFixedSize!4623 (defaultEntry!5602 Int) (mask!27176 (_ BitVec 32)) (extraKeys!5334 (_ BitVec 32)) (zeroValue!5438 V!32211) (minValue!5438 V!32211) (_size!2366 (_ BitVec 32)) (_keys!10458 array!56850) (_values!5625 array!56848) (_vacant!2366 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4622)

(declare-fun mapKey!32457 () (_ BitVec 32))

(declare-fun mapRest!32457 () (Array (_ BitVec 32) ValueCell!9736))

(assert (=> mapNonEmpty!32457 (= (arr!27351 (_values!5625 thiss!1141)) (store mapRest!32457 mapKey!32457 mapValue!32457))))

(declare-fun tp_is_empty!20435 () Bool)

(declare-fun e!529450 () Bool)

(declare-fun e!529451 () Bool)

(declare-fun array_inv!21210 (array!56850) Bool)

(declare-fun array_inv!21211 (array!56848) Bool)

(assert (=> b!941649 (= e!529451 (and tp!62271 tp_is_empty!20435 (array_inv!21210 (_keys!10458 thiss!1141)) (array_inv!21211 (_values!5625 thiss!1141)) e!529450))))

(declare-fun mapIsEmpty!32457 () Bool)

(assert (=> mapIsEmpty!32457 mapRes!32457))

(declare-fun b!941650 () Bool)

(declare-fun e!529453 () Bool)

(assert (=> b!941650 (= e!529450 (and e!529453 mapRes!32457))))

(declare-fun condMapEmpty!32457 () Bool)

(declare-fun mapDefault!32457 () ValueCell!9736)

