; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77256 () Bool)

(assert start!77256)

(declare-fun b!900961 () Bool)

(declare-fun b_free!16069 () Bool)

(declare-fun b_next!16069 () Bool)

(assert (=> b!900961 (= b_free!16069 (not b_next!16069))))

(declare-fun tp!56305 () Bool)

(declare-fun b_and!26413 () Bool)

(assert (=> b!900961 (= tp!56305 b_and!26413)))

(declare-fun b!900952 () Bool)

(declare-fun e!504387 () Bool)

(declare-fun tp_is_empty!18397 () Bool)

(assert (=> b!900952 (= e!504387 tp_is_empty!18397)))

(declare-datatypes ((SeekEntryResult!8934 0))(
  ( (MissingZero!8934 (index!38106 (_ BitVec 32))) (Found!8934 (index!38107 (_ BitVec 32))) (Intermediate!8934 (undefined!9746 Bool) (index!38108 (_ BitVec 32)) (x!76758 (_ BitVec 32))) (Undefined!8934) (MissingVacant!8934 (index!38109 (_ BitVec 32))) )
))
(declare-fun lt!407180 () SeekEntryResult!8934)

(declare-datatypes ((array!52834 0))(
  ( (array!52835 (arr!25382 (Array (_ BitVec 32) (_ BitVec 64))) (size!25842 (_ BitVec 32))) )
))
(declare-datatypes ((V!29495 0))(
  ( (V!29496 (val!9249 Int)) )
))
(declare-datatypes ((ValueCell!8717 0))(
  ( (ValueCellFull!8717 (v!11745 V!29495)) (EmptyCell!8717) )
))
(declare-datatypes ((array!52836 0))(
  ( (array!52837 (arr!25383 (Array (_ BitVec 32) ValueCell!8717)) (size!25843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4450 0))(
  ( (LongMapFixedSize!4451 (defaultEntry!5463 Int) (mask!26259 (_ BitVec 32)) (extraKeys!5191 (_ BitVec 32)) (zeroValue!5295 V!29495) (minValue!5295 V!29495) (_size!2280 (_ BitVec 32)) (_keys!10269 array!52834) (_values!5482 array!52836) (_vacant!2280 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4450)

(declare-fun e!504386 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun b!900953 () Bool)

(assert (=> b!900953 (= e!504386 (= (select (arr!25382 (_keys!10269 thiss!1181)) (index!38107 lt!407180)) key!785))))

(declare-fun b!900954 () Bool)

(declare-fun e!504381 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!900954 (= e!504381 (inRange!0 (index!38107 lt!407180) (mask!26259 thiss!1181)))))

(declare-fun b!900955 () Bool)

(declare-fun e!504385 () Bool)

(assert (=> b!900955 (= e!504385 tp_is_empty!18397)))

(declare-fun b!900956 () Bool)

(declare-fun res!608468 () Bool)

(assert (=> b!900956 (=> res!608468 e!504386)))

(declare-datatypes ((List!17946 0))(
  ( (Nil!17943) (Cons!17942 (h!19088 (_ BitVec 64)) (t!25311 List!17946)) )
))
(declare-fun arrayNoDuplicates!0 (array!52834 (_ BitVec 32) List!17946) Bool)

(assert (=> b!900956 (= res!608468 (not (arrayNoDuplicates!0 (_keys!10269 thiss!1181) #b00000000000000000000000000000000 Nil!17943)))))

(declare-fun b!900957 () Bool)

(declare-fun e!504380 () Bool)

(declare-fun mapRes!29278 () Bool)

(assert (=> b!900957 (= e!504380 (and e!504385 mapRes!29278))))

(declare-fun condMapEmpty!29278 () Bool)

(declare-fun mapDefault!29278 () ValueCell!8717)

