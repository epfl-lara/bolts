; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80672 () Bool)

(assert start!80672)

(declare-fun b!946160 () Bool)

(declare-fun b_free!18137 () Bool)

(declare-fun b_next!18137 () Bool)

(assert (=> b!946160 (= b_free!18137 (not b_next!18137))))

(declare-fun tp!62949 () Bool)

(declare-fun b_and!29577 () Bool)

(assert (=> b!946160 (= tp!62949 b_and!29577)))

(declare-fun mapIsEmpty!32821 () Bool)

(declare-fun mapRes!32821 () Bool)

(assert (=> mapIsEmpty!32821 mapRes!32821))

(declare-fun res!635331 () Bool)

(declare-fun e!532384 () Bool)

(assert (=> start!80672 (=> (not res!635331) (not e!532384))))

(declare-datatypes ((V!32491 0))(
  ( (V!32492 (val!10373 Int)) )
))
(declare-datatypes ((ValueCell!9841 0))(
  ( (ValueCellFull!9841 (v!12907 V!32491)) (EmptyCell!9841) )
))
(declare-datatypes ((array!57296 0))(
  ( (array!57297 (arr!27561 (Array (_ BitVec 32) ValueCell!9841)) (size!28032 (_ BitVec 32))) )
))
(declare-datatypes ((array!57298 0))(
  ( (array!57299 (arr!27562 (Array (_ BitVec 32) (_ BitVec 64))) (size!28033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4832 0))(
  ( (LongMapFixedSize!4833 (defaultEntry!5713 Int) (mask!27403 (_ BitVec 32)) (extraKeys!5445 (_ BitVec 32)) (zeroValue!5549 V!32491) (minValue!5549 V!32491) (_size!2471 (_ BitVec 32)) (_keys!10601 array!57298) (_values!5736 array!57296) (_vacant!2471 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4832)

(declare-fun valid!1821 (LongMapFixedSize!4832) Bool)

(assert (=> start!80672 (= res!635331 (valid!1821 thiss!1141))))

(assert (=> start!80672 e!532384))

(declare-fun e!532383 () Bool)

(assert (=> start!80672 e!532383))

(assert (=> start!80672 true))

(declare-fun b!946154 () Bool)

(declare-fun res!635332 () Bool)

(assert (=> b!946154 (=> (not res!635332) (not e!532384))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!946154 (= res!635332 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!32821 () Bool)

(declare-fun tp!62950 () Bool)

(declare-fun e!532378 () Bool)

(assert (=> mapNonEmpty!32821 (= mapRes!32821 (and tp!62950 e!532378))))

(declare-fun mapValue!32821 () ValueCell!9841)

(declare-fun mapRest!32821 () (Array (_ BitVec 32) ValueCell!9841))

(declare-fun mapKey!32821 () (_ BitVec 32))

(assert (=> mapNonEmpty!32821 (= (arr!27561 (_values!5736 thiss!1141)) (store mapRest!32821 mapKey!32821 mapValue!32821))))

(declare-fun b!946155 () Bool)

(declare-fun e!532379 () Bool)

(declare-fun tp_is_empty!20645 () Bool)

(assert (=> b!946155 (= e!532379 tp_is_empty!20645)))

(declare-fun b!946156 () Bool)

(declare-fun e!532380 () Bool)

(assert (=> b!946156 (= e!532380 (or (not (= (size!28032 (_values!5736 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27403 thiss!1141)))) (= (size!28033 (_keys!10601 thiss!1141)) (size!28032 (_values!5736 thiss!1141)))))))

(declare-fun b!946157 () Bool)

(declare-fun e!532381 () Bool)

(assert (=> b!946157 (= e!532381 (and e!532379 mapRes!32821))))

(declare-fun condMapEmpty!32821 () Bool)

(declare-fun mapDefault!32821 () ValueCell!9841)

