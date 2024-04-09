; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76458 () Bool)

(assert start!76458)

(declare-fun b!896187 () Bool)

(declare-fun b_free!15947 () Bool)

(declare-fun b_next!15947 () Bool)

(assert (=> b!896187 (= b_free!15947 (not b_next!15947))))

(declare-fun tp!55871 () Bool)

(declare-fun b_and!26257 () Bool)

(assert (=> b!896187 (= tp!55871 b_and!26257)))

(declare-fun b!896183 () Bool)

(declare-datatypes ((array!52550 0))(
  ( (array!52551 (arr!25260 (Array (_ BitVec 32) (_ BitVec 64))) (size!25712 (_ BitVec 32))) )
))
(declare-datatypes ((V!29331 0))(
  ( (V!29332 (val!9188 Int)) )
))
(declare-datatypes ((ValueCell!8656 0))(
  ( (ValueCellFull!8656 (v!11675 V!29331)) (EmptyCell!8656) )
))
(declare-datatypes ((array!52552 0))(
  ( (array!52553 (arr!25261 (Array (_ BitVec 32) ValueCell!8656)) (size!25713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4328 0))(
  ( (LongMapFixedSize!4329 (defaultEntry!5376 Int) (mask!26004 (_ BitVec 32)) (extraKeys!5076 (_ BitVec 32)) (zeroValue!5180 V!29331) (minValue!5180 V!29331) (_size!2219 (_ BitVec 32)) (_keys!10103 array!52550) (_values!5367 array!52552) (_vacant!2219 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4328)

(declare-fun key!785 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8883 0))(
  ( (MissingZero!8883 (index!37902 (_ BitVec 32))) (Found!8883 (index!37903 (_ BitVec 32))) (Intermediate!8883 (undefined!9695 Bool) (index!37904 (_ BitVec 32)) (x!76293 (_ BitVec 32))) (Undefined!8883) (MissingVacant!8883 (index!37905 (_ BitVec 32))) )
))
(declare-fun lt!404724 () SeekEntryResult!8883)

(declare-fun e!500933 () Bool)

(declare-fun arrayContainsKey!0 (array!52550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!896183 (= e!500933 (arrayContainsKey!0 (_keys!10103 thiss!1181) key!785 (index!37903 lt!404724)))))

(declare-fun b!896185 () Bool)

(declare-fun res!606113 () Bool)

(declare-fun e!500932 () Bool)

(assert (=> b!896185 (=> (not res!606113) (not e!500932))))

(assert (=> b!896185 (= res!606113 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!29027 () Bool)

(declare-fun mapRes!29027 () Bool)

(assert (=> mapIsEmpty!29027 mapRes!29027))

(declare-fun mapNonEmpty!29027 () Bool)

(declare-fun tp!55870 () Bool)

(declare-fun e!500934 () Bool)

(assert (=> mapNonEmpty!29027 (= mapRes!29027 (and tp!55870 e!500934))))

(declare-fun mapRest!29027 () (Array (_ BitVec 32) ValueCell!8656))

(declare-fun mapValue!29027 () ValueCell!8656)

(declare-fun mapKey!29027 () (_ BitVec 32))

(assert (=> mapNonEmpty!29027 (= (arr!25261 (_values!5367 thiss!1181)) (store mapRest!29027 mapKey!29027 mapValue!29027))))

(declare-fun b!896186 () Bool)

(declare-fun e!500927 () Bool)

(declare-fun e!500930 () Bool)

(assert (=> b!896186 (= e!500927 (and e!500930 mapRes!29027))))

(declare-fun condMapEmpty!29027 () Bool)

(declare-fun mapDefault!29027 () ValueCell!8656)

