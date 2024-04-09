; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80282 () Bool)

(assert start!80282)

(declare-fun b!942462 () Bool)

(declare-fun b_free!17953 () Bool)

(declare-fun b_next!17953 () Bool)

(assert (=> b!942462 (= b_free!17953 (not b_next!17953))))

(declare-fun tp!62365 () Bool)

(declare-fun b_and!29383 () Bool)

(assert (=> b!942462 (= tp!62365 b_and!29383)))

(declare-fun mapIsEmpty!32513 () Bool)

(declare-fun mapRes!32513 () Bool)

(assert (=> mapIsEmpty!32513 mapRes!32513))

(declare-fun mapNonEmpty!32513 () Bool)

(declare-fun tp!62366 () Bool)

(declare-fun e!529937 () Bool)

(assert (=> mapNonEmpty!32513 (= mapRes!32513 (and tp!62366 e!529937))))

(declare-datatypes ((V!32247 0))(
  ( (V!32248 (val!10281 Int)) )
))
(declare-datatypes ((ValueCell!9749 0))(
  ( (ValueCellFull!9749 (v!12812 V!32247)) (EmptyCell!9749) )
))
(declare-fun mapRest!32513 () (Array (_ BitVec 32) ValueCell!9749))

(declare-datatypes ((array!56910 0))(
  ( (array!56911 (arr!27377 (Array (_ BitVec 32) ValueCell!9749)) (size!27843 (_ BitVec 32))) )
))
(declare-datatypes ((array!56912 0))(
  ( (array!56913 (arr!27378 (Array (_ BitVec 32) (_ BitVec 64))) (size!27844 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4648 0))(
  ( (LongMapFixedSize!4649 (defaultEntry!5615 Int) (mask!27220 (_ BitVec 32)) (extraKeys!5347 (_ BitVec 32)) (zeroValue!5451 V!32247) (minValue!5451 V!32247) (_size!2379 (_ BitVec 32)) (_keys!10485 array!56912) (_values!5638 array!56910) (_vacant!2379 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4648)

(declare-fun mapKey!32513 () (_ BitVec 32))

(declare-fun mapValue!32513 () ValueCell!9749)

(assert (=> mapNonEmpty!32513 (= (arr!27377 (_values!5638 thiss!1141)) (store mapRest!32513 mapKey!32513 mapValue!32513))))

(declare-fun b!942457 () Bool)

(declare-fun res!633413 () Bool)

(declare-fun e!529938 () Bool)

(assert (=> b!942457 (=> (not res!633413) (not e!529938))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9026 0))(
  ( (MissingZero!9026 (index!38474 (_ BitVec 32))) (Found!9026 (index!38475 (_ BitVec 32))) (Intermediate!9026 (undefined!9838 Bool) (index!38476 (_ BitVec 32)) (x!80924 (_ BitVec 32))) (Undefined!9026) (MissingVacant!9026 (index!38477 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56912 (_ BitVec 32)) SeekEntryResult!9026)

(assert (=> b!942457 (= res!633413 (not (is-Found!9026 (seekEntry!0 key!756 (_keys!10485 thiss!1141) (mask!27220 thiss!1141)))))))

(declare-fun res!633411 () Bool)

(assert (=> start!80282 (=> (not res!633411) (not e!529938))))

(declare-fun valid!1761 (LongMapFixedSize!4648) Bool)

(assert (=> start!80282 (= res!633411 (valid!1761 thiss!1141))))

(assert (=> start!80282 e!529938))

(declare-fun e!529936 () Bool)

(assert (=> start!80282 e!529936))

(assert (=> start!80282 true))

(declare-fun b!942458 () Bool)

(declare-fun res!633409 () Bool)

(assert (=> b!942458 (=> (not res!633409) (not e!529938))))

(declare-datatypes ((tuple2!13510 0))(
  ( (tuple2!13511 (_1!6765 (_ BitVec 64)) (_2!6765 V!32247)) )
))
(declare-datatypes ((List!19350 0))(
  ( (Nil!19347) (Cons!19346 (h!20496 tuple2!13510) (t!27673 List!19350)) )
))
(declare-datatypes ((ListLongMap!12221 0))(
  ( (ListLongMap!12222 (toList!6126 List!19350)) )
))
(declare-fun contains!5147 (ListLongMap!12221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3314 (array!56912 array!56910 (_ BitVec 32) (_ BitVec 32) V!32247 V!32247 (_ BitVec 32) Int) ListLongMap!12221)

(assert (=> b!942458 (= res!633409 (contains!5147 (getCurrentListMap!3314 (_keys!10485 thiss!1141) (_values!5638 thiss!1141) (mask!27220 thiss!1141) (extraKeys!5347 thiss!1141) (zeroValue!5451 thiss!1141) (minValue!5451 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5615 thiss!1141)) key!756))))

(declare-fun b!942459 () Bool)

(declare-fun e!529935 () Bool)

(declare-fun e!529939 () Bool)

(assert (=> b!942459 (= e!529935 (and e!529939 mapRes!32513))))

(declare-fun condMapEmpty!32513 () Bool)

(declare-fun mapDefault!32513 () ValueCell!9749)

