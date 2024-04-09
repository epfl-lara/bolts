; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80076 () Bool)

(assert start!80076)

(declare-fun b!941031 () Bool)

(declare-fun b_free!17903 () Bool)

(declare-fun b_next!17903 () Bool)

(assert (=> b!941031 (= b_free!17903 (not b_next!17903))))

(declare-fun tp!62185 () Bool)

(declare-fun b_and!29333 () Bool)

(assert (=> b!941031 (= tp!62185 b_and!29333)))

(declare-fun mapIsEmpty!32407 () Bool)

(declare-fun mapRes!32407 () Bool)

(assert (=> mapIsEmpty!32407 mapRes!32407))

(declare-fun b!941025 () Bool)

(declare-fun e!529053 () Bool)

(declare-fun tp_is_empty!20411 () Bool)

(assert (=> b!941025 (= e!529053 tp_is_empty!20411)))

(declare-fun b!941026 () Bool)

(declare-fun res!632786 () Bool)

(declare-fun e!529048 () Bool)

(assert (=> b!941026 (=> (not res!632786) (not e!529048))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32179 0))(
  ( (V!32180 (val!10256 Int)) )
))
(declare-datatypes ((ValueCell!9724 0))(
  ( (ValueCellFull!9724 (v!12787 V!32179)) (EmptyCell!9724) )
))
(declare-datatypes ((array!56792 0))(
  ( (array!56793 (arr!27327 (Array (_ BitVec 32) ValueCell!9724)) (size!27789 (_ BitVec 32))) )
))
(declare-datatypes ((array!56794 0))(
  ( (array!56795 (arr!27328 (Array (_ BitVec 32) (_ BitVec 64))) (size!27790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4598 0))(
  ( (LongMapFixedSize!4599 (defaultEntry!5590 Int) (mask!27140 (_ BitVec 32)) (extraKeys!5322 (_ BitVec 32)) (zeroValue!5426 V!32179) (minValue!5426 V!32179) (_size!2354 (_ BitVec 32)) (_keys!10436 array!56794) (_values!5613 array!56792) (_vacant!2354 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4598)

(declare-datatypes ((SeekEntryResult!9010 0))(
  ( (MissingZero!9010 (index!38410 (_ BitVec 32))) (Found!9010 (index!38411 (_ BitVec 32))) (Intermediate!9010 (undefined!9822 Bool) (index!38412 (_ BitVec 32)) (x!80728 (_ BitVec 32))) (Undefined!9010) (MissingVacant!9010 (index!38413 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56794 (_ BitVec 32)) SeekEntryResult!9010)

(assert (=> b!941026 (= res!632786 (not (is-Found!9010 (seekEntry!0 key!756 (_keys!10436 thiss!1141) (mask!27140 thiss!1141)))))))

(declare-fun mapNonEmpty!32407 () Bool)

(declare-fun tp!62184 () Bool)

(declare-fun e!529052 () Bool)

(assert (=> mapNonEmpty!32407 (= mapRes!32407 (and tp!62184 e!529052))))

(declare-fun mapValue!32407 () ValueCell!9724)

(declare-fun mapRest!32407 () (Array (_ BitVec 32) ValueCell!9724))

(declare-fun mapKey!32407 () (_ BitVec 32))

(assert (=> mapNonEmpty!32407 (= (arr!27327 (_values!5613 thiss!1141)) (store mapRest!32407 mapKey!32407 mapValue!32407))))

(declare-fun b!941028 () Bool)

(declare-fun e!529049 () Bool)

(assert (=> b!941028 (= e!529049 (and e!529053 mapRes!32407))))

(declare-fun condMapEmpty!32407 () Bool)

(declare-fun mapDefault!32407 () ValueCell!9724)

