; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39868 () Bool)

(assert start!39868)

(declare-fun b_free!10127 () Bool)

(declare-fun b_next!10127 () Bool)

(assert (=> start!39868 (= b_free!10127 (not b_next!10127))))

(declare-fun tp!35909 () Bool)

(declare-fun b_and!17931 () Bool)

(assert (=> start!39868 (= tp!35909 b_and!17931)))

(declare-fun b!430943 () Bool)

(declare-fun e!255058 () Bool)

(declare-fun e!255057 () Bool)

(assert (=> b!430943 (= e!255058 (not e!255057))))

(declare-fun res!253387 () Bool)

(assert (=> b!430943 (=> res!253387 e!255057)))

(declare-datatypes ((array!26371 0))(
  ( (array!26372 (arr!12632 (Array (_ BitVec 32) (_ BitVec 64))) (size!12984 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26371)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430943 (= res!253387 (not (validKeyInArray!0 (select (arr!12632 _keys!709) from!863))))))

(declare-datatypes ((V!16143 0))(
  ( (V!16144 (val!5684 Int)) )
))
(declare-datatypes ((tuple2!7426 0))(
  ( (tuple2!7427 (_1!3723 (_ BitVec 64)) (_2!3723 V!16143)) )
))
(declare-datatypes ((List!7480 0))(
  ( (Nil!7477) (Cons!7476 (h!8332 tuple2!7426) (t!13064 List!7480)) )
))
(declare-datatypes ((ListLongMap!6353 0))(
  ( (ListLongMap!6354 (toList!3192 List!7480)) )
))
(declare-fun lt!197330 () ListLongMap!6353)

(declare-fun lt!197326 () ListLongMap!6353)

(assert (=> b!430943 (= lt!197330 lt!197326)))

(declare-fun lt!197335 () ListLongMap!6353)

(declare-fun lt!197323 () tuple2!7426)

(declare-fun +!1340 (ListLongMap!6353 tuple2!7426) ListLongMap!6353)

(assert (=> b!430943 (= lt!197326 (+!1340 lt!197335 lt!197323))))

(declare-fun minValue!515 () V!16143)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!197332 () array!26371)

(declare-fun zeroValue!515 () V!16143)

(declare-datatypes ((ValueCell!5296 0))(
  ( (ValueCellFull!5296 (v!7927 V!16143)) (EmptyCell!5296) )
))
(declare-datatypes ((array!26373 0))(
  ( (array!26374 (arr!12633 (Array (_ BitVec 32) ValueCell!5296)) (size!12985 (_ BitVec 32))) )
))
(declare-fun lt!197324 () array!26373)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1387 (array!26371 array!26373 (_ BitVec 32) (_ BitVec 32) V!16143 V!16143 (_ BitVec 32) Int) ListLongMap!6353)

(assert (=> b!430943 (= lt!197330 (getCurrentListMapNoExtraKeys!1387 lt!197332 lt!197324 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16143)

(assert (=> b!430943 (= lt!197323 (tuple2!7427 k!794 v!412))))

(declare-fun _values!549 () array!26373)

(assert (=> b!430943 (= lt!197335 (getCurrentListMapNoExtraKeys!1387 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12665 0))(
  ( (Unit!12666) )
))
(declare-fun lt!197325 () Unit!12665)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!534 (array!26371 array!26373 (_ BitVec 32) (_ BitVec 32) V!16143 V!16143 (_ BitVec 32) (_ BitVec 64) V!16143 (_ BitVec 32) Int) Unit!12665)

(assert (=> b!430943 (= lt!197325 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!534 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430944 () Bool)

(declare-fun e!255061 () Bool)

(assert (=> b!430944 (= e!255061 true)))

(declare-fun lt!197328 () tuple2!7426)

(declare-fun lt!197334 () ListLongMap!6353)

(assert (=> b!430944 (= lt!197334 (+!1340 (+!1340 lt!197335 lt!197328) lt!197323))))

(declare-fun lt!197331 () Unit!12665)

(declare-fun lt!197329 () V!16143)

(declare-fun addCommutativeForDiffKeys!357 (ListLongMap!6353 (_ BitVec 64) V!16143 (_ BitVec 64) V!16143) Unit!12665)

(assert (=> b!430944 (= lt!197331 (addCommutativeForDiffKeys!357 lt!197335 k!794 v!412 (select (arr!12632 _keys!709) from!863) lt!197329))))

(declare-fun b!430945 () Bool)

(declare-fun res!253389 () Bool)

(declare-fun e!255056 () Bool)

(assert (=> b!430945 (=> (not res!253389) (not e!255056))))

(assert (=> b!430945 (= res!253389 (or (= (select (arr!12632 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12632 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430946 () Bool)

(declare-fun res!253392 () Bool)

(assert (=> b!430946 (=> (not res!253392) (not e!255056))))

(assert (=> b!430946 (= res!253392 (validKeyInArray!0 k!794))))

(declare-fun b!430947 () Bool)

(declare-fun res!253385 () Bool)

(assert (=> b!430947 (=> (not res!253385) (not e!255056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26371 (_ BitVec 32)) Bool)

(assert (=> b!430947 (= res!253385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430948 () Bool)

(declare-fun res!253395 () Bool)

(assert (=> b!430948 (=> (not res!253395) (not e!255056))))

(assert (=> b!430948 (= res!253395 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12984 _keys!709))))))

(declare-fun b!430949 () Bool)

(declare-fun e!255060 () Bool)

(declare-fun tp_is_empty!11279 () Bool)

(assert (=> b!430949 (= e!255060 tp_is_empty!11279)))

(declare-fun b!430950 () Bool)

(declare-fun res!253390 () Bool)

(declare-fun e!255059 () Bool)

(assert (=> b!430950 (=> (not res!253390) (not e!255059))))

(assert (=> b!430950 (= res!253390 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18540 () Bool)

(declare-fun mapRes!18540 () Bool)

(assert (=> mapIsEmpty!18540 mapRes!18540))

(declare-fun b!430951 () Bool)

(declare-fun e!255063 () Bool)

(declare-fun e!255064 () Bool)

(assert (=> b!430951 (= e!255063 (and e!255064 mapRes!18540))))

(declare-fun condMapEmpty!18540 () Bool)

(declare-fun mapDefault!18540 () ValueCell!5296)

