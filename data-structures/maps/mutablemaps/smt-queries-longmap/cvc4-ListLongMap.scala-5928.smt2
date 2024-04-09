; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77260 () Bool)

(assert start!77260)

(declare-fun b!901049 () Bool)

(declare-fun b_free!16073 () Bool)

(declare-fun b_next!16073 () Bool)

(assert (=> b!901049 (= b_free!16073 (not b_next!16073))))

(declare-fun tp!56316 () Bool)

(declare-fun b_and!26417 () Bool)

(assert (=> b!901049 (= tp!56316 b_and!26417)))

(declare-fun mapIsEmpty!29284 () Bool)

(declare-fun mapRes!29284 () Bool)

(assert (=> mapIsEmpty!29284 mapRes!29284))

(declare-fun b!901036 () Bool)

(declare-fun res!608530 () Bool)

(declare-fun e!504435 () Bool)

(assert (=> b!901036 (=> res!608530 e!504435)))

(declare-datatypes ((array!52842 0))(
  ( (array!52843 (arr!25386 (Array (_ BitVec 32) (_ BitVec 64))) (size!25846 (_ BitVec 32))) )
))
(declare-datatypes ((V!29499 0))(
  ( (V!29500 (val!9251 Int)) )
))
(declare-datatypes ((ValueCell!8719 0))(
  ( (ValueCellFull!8719 (v!11747 V!29499)) (EmptyCell!8719) )
))
(declare-datatypes ((array!52844 0))(
  ( (array!52845 (arr!25387 (Array (_ BitVec 32) ValueCell!8719)) (size!25847 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4454 0))(
  ( (LongMapFixedSize!4455 (defaultEntry!5465 Int) (mask!26261 (_ BitVec 32)) (extraKeys!5193 (_ BitVec 32)) (zeroValue!5297 V!29499) (minValue!5297 V!29499) (_size!2282 (_ BitVec 32)) (_keys!10271 array!52842) (_values!5484 array!52844) (_vacant!2282 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4454)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52842 (_ BitVec 32)) Bool)

(assert (=> b!901036 (= res!608530 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10271 thiss!1181) (mask!26261 thiss!1181))))))

(declare-fun b!901037 () Bool)

(declare-fun res!608531 () Bool)

(declare-fun e!504438 () Bool)

(assert (=> b!901037 (=> (not res!608531) (not e!504438))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!901037 (= res!608531 (not (= key!785 (bvneg key!785))))))

(declare-fun res!608524 () Bool)

(assert (=> start!77260 (=> (not res!608524) (not e!504438))))

(declare-fun valid!1694 (LongMapFixedSize!4454) Bool)

(assert (=> start!77260 (= res!608524 (valid!1694 thiss!1181))))

(assert (=> start!77260 e!504438))

(declare-fun e!504439 () Bool)

(assert (=> start!77260 e!504439))

(assert (=> start!77260 true))

(declare-fun b!901038 () Bool)

(declare-fun res!608532 () Bool)

(assert (=> b!901038 (=> res!608532 e!504435)))

(declare-datatypes ((tuple2!12088 0))(
  ( (tuple2!12089 (_1!6054 (_ BitVec 64)) (_2!6054 V!29499)) )
))
(declare-datatypes ((List!17949 0))(
  ( (Nil!17946) (Cons!17945 (h!19091 tuple2!12088) (t!25314 List!17949)) )
))
(declare-datatypes ((ListLongMap!10799 0))(
  ( (ListLongMap!10800 (toList!5415 List!17949)) )
))
(declare-fun lt!407213 () ListLongMap!10799)

(declare-fun contains!4424 (ListLongMap!10799 (_ BitVec 64)) Bool)

(assert (=> b!901038 (= res!608532 (not (contains!4424 lt!407213 key!785)))))

(declare-fun b!901039 () Bool)

(declare-fun e!504440 () Bool)

(declare-fun e!504442 () Bool)

(assert (=> b!901039 (= e!504440 (and e!504442 mapRes!29284))))

(declare-fun condMapEmpty!29284 () Bool)

(declare-fun mapDefault!29284 () ValueCell!8719)

