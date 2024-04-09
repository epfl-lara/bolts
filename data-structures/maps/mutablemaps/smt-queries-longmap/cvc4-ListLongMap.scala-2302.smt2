; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37286 () Bool)

(assert start!37286)

(declare-fun b_free!8405 () Bool)

(declare-fun b_next!8405 () Bool)

(assert (=> start!37286 (= b_free!8405 (not b_next!8405))))

(declare-fun tp!29930 () Bool)

(declare-fun b_and!15665 () Bool)

(assert (=> start!37286 (= tp!29930 b_and!15665)))

(declare-fun b!377361 () Bool)

(declare-fun res!213603 () Bool)

(declare-fun e!229754 () Bool)

(assert (=> b!377361 (=> (not res!213603) (not e!229754))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22005 0))(
  ( (array!22006 (arr!10468 (Array (_ BitVec 32) (_ BitVec 64))) (size!10820 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22005)

(assert (=> b!377361 (= res!213603 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10820 _keys!658))))))

(declare-fun b!377362 () Bool)

(declare-fun e!229752 () Bool)

(assert (=> b!377362 (= e!229752 true)))

(declare-datatypes ((V!13175 0))(
  ( (V!13176 (val!4571 Int)) )
))
(declare-datatypes ((tuple2!6070 0))(
  ( (tuple2!6071 (_1!3045 (_ BitVec 64)) (_2!3045 V!13175)) )
))
(declare-datatypes ((List!5939 0))(
  ( (Nil!5936) (Cons!5935 (h!6791 tuple2!6070) (t!11097 List!5939)) )
))
(declare-datatypes ((ListLongMap!4997 0))(
  ( (ListLongMap!4998 (toList!2514 List!5939)) )
))
(declare-fun lt!175562 () ListLongMap!4997)

(declare-fun lt!175570 () ListLongMap!4997)

(declare-fun lt!175567 () tuple2!6070)

(declare-fun +!855 (ListLongMap!4997 tuple2!6070) ListLongMap!4997)

(assert (=> b!377362 (= lt!175562 (+!855 lt!175570 lt!175567))))

(declare-fun v!373 () V!13175)

(declare-datatypes ((Unit!11609 0))(
  ( (Unit!11610) )
))
(declare-fun lt!175566 () Unit!11609)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13175)

(declare-fun lt!175568 () ListLongMap!4997)

(declare-fun addCommutativeForDiffKeys!275 (ListLongMap!4997 (_ BitVec 64) V!13175 (_ BitVec 64) V!13175) Unit!11609)

(assert (=> b!377362 (= lt!175566 (addCommutativeForDiffKeys!275 lt!175568 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377363 () Bool)

(declare-fun res!213597 () Bool)

(assert (=> b!377363 (=> (not res!213597) (not e!229754))))

(declare-fun arrayContainsKey!0 (array!22005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377363 (= res!213597 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!377364 () Bool)

(declare-fun e!229751 () Bool)

(declare-fun tp_is_empty!9053 () Bool)

(assert (=> b!377364 (= e!229751 tp_is_empty!9053)))

(declare-fun b!377365 () Bool)

(declare-fun e!229750 () Bool)

(assert (=> b!377365 (= e!229754 e!229750)))

(declare-fun res!213604 () Bool)

(assert (=> b!377365 (=> (not res!213604) (not e!229750))))

(declare-fun lt!175558 () array!22005)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22005 (_ BitVec 32)) Bool)

(assert (=> b!377365 (= res!213604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175558 mask!970))))

(assert (=> b!377365 (= lt!175558 (array!22006 (store (arr!10468 _keys!658) i!548 k!778) (size!10820 _keys!658)))))

(declare-fun b!377366 () Bool)

(declare-fun e!229748 () Bool)

(assert (=> b!377366 (= e!229748 tp_is_empty!9053)))

(declare-fun b!377367 () Bool)

(declare-fun res!213600 () Bool)

(assert (=> b!377367 (=> (not res!213600) (not e!229754))))

(assert (=> b!377367 (= res!213600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377368 () Bool)

(declare-fun res!213602 () Bool)

(assert (=> b!377368 (=> (not res!213602) (not e!229750))))

(declare-datatypes ((List!5940 0))(
  ( (Nil!5937) (Cons!5936 (h!6792 (_ BitVec 64)) (t!11098 List!5940)) )
))
(declare-fun arrayNoDuplicates!0 (array!22005 (_ BitVec 32) List!5940) Bool)

(assert (=> b!377368 (= res!213602 (arrayNoDuplicates!0 lt!175558 #b00000000000000000000000000000000 Nil!5937))))

(declare-fun b!377369 () Bool)

(declare-fun e!229755 () Bool)

(assert (=> b!377369 (= e!229755 e!229752)))

(declare-fun res!213596 () Bool)

(assert (=> b!377369 (=> res!213596 e!229752)))

(assert (=> b!377369 (= res!213596 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175565 () ListLongMap!4997)

(assert (=> b!377369 (= lt!175565 lt!175562)))

(declare-fun lt!175560 () ListLongMap!4997)

(declare-fun lt!175569 () tuple2!6070)

(assert (=> b!377369 (= lt!175562 (+!855 lt!175560 lt!175569))))

(declare-fun lt!175559 () ListLongMap!4997)

(assert (=> b!377369 (= lt!175559 lt!175570)))

(assert (=> b!377369 (= lt!175570 (+!855 lt!175568 lt!175569))))

(declare-fun lt!175564 () ListLongMap!4997)

(assert (=> b!377369 (= lt!175565 (+!855 lt!175564 lt!175569))))

(assert (=> b!377369 (= lt!175569 (tuple2!6071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!15144 () Bool)

(declare-fun mapRes!15144 () Bool)

(assert (=> mapIsEmpty!15144 mapRes!15144))

(declare-fun b!377370 () Bool)

(declare-fun e!229749 () Bool)

(assert (=> b!377370 (= e!229749 (and e!229748 mapRes!15144))))

(declare-fun condMapEmpty!15144 () Bool)

(declare-datatypes ((ValueCell!4183 0))(
  ( (ValueCellFull!4183 (v!6764 V!13175)) (EmptyCell!4183) )
))
(declare-datatypes ((array!22007 0))(
  ( (array!22008 (arr!10469 (Array (_ BitVec 32) ValueCell!4183)) (size!10821 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22007)

(declare-fun mapDefault!15144 () ValueCell!4183)

