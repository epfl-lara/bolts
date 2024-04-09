; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40008 () Bool)

(assert start!40008)

(declare-fun b_free!10267 () Bool)

(declare-fun b_next!10267 () Bool)

(assert (=> start!40008 (= b_free!10267 (not b_next!10267))))

(declare-fun tp!36330 () Bool)

(declare-fun b_and!18211 () Bool)

(assert (=> start!40008 (= tp!36330 b_and!18211)))

(declare-fun b!435283 () Bool)

(declare-fun res!256538 () Bool)

(declare-fun e!257164 () Bool)

(assert (=> b!435283 (=> (not res!256538) (not e!257164))))

(declare-datatypes ((array!26641 0))(
  ( (array!26642 (arr!12767 (Array (_ BitVec 32) (_ BitVec 64))) (size!13119 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26641)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435283 (= res!256538 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!435284 () Bool)

(declare-fun e!257162 () Bool)

(assert (=> b!435284 (= e!257164 e!257162)))

(declare-fun res!256543 () Bool)

(assert (=> b!435284 (=> (not res!256543) (not e!257162))))

(declare-fun lt!200482 () array!26641)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26641 (_ BitVec 32)) Bool)

(assert (=> b!435284 (= res!256543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200482 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435284 (= lt!200482 (array!26642 (store (arr!12767 _keys!709) i!563 k!794) (size!13119 _keys!709)))))

(declare-fun b!435285 () Bool)

(declare-datatypes ((Unit!12884 0))(
  ( (Unit!12885) )
))
(declare-fun e!257160 () Unit!12884)

(declare-fun Unit!12886 () Unit!12884)

(assert (=> b!435285 (= e!257160 Unit!12886)))

(declare-fun b!435286 () Bool)

(declare-fun e!257157 () Bool)

(assert (=> b!435286 (= e!257157 true)))

(declare-datatypes ((V!16331 0))(
  ( (V!16332 (val!5754 Int)) )
))
(declare-datatypes ((tuple2!7550 0))(
  ( (tuple2!7551 (_1!3785 (_ BitVec 64)) (_2!3785 V!16331)) )
))
(declare-datatypes ((List!7596 0))(
  ( (Nil!7593) (Cons!7592 (h!8448 tuple2!7550) (t!13320 List!7596)) )
))
(declare-datatypes ((ListLongMap!6477 0))(
  ( (ListLongMap!6478 (toList!3254 List!7596)) )
))
(declare-fun lt!200474 () ListLongMap!6477)

(declare-fun lt!200476 () tuple2!7550)

(declare-fun lt!200478 () ListLongMap!6477)

(declare-fun lt!200484 () tuple2!7550)

(declare-fun +!1399 (ListLongMap!6477 tuple2!7550) ListLongMap!6477)

(assert (=> b!435286 (= lt!200478 (+!1399 (+!1399 lt!200474 lt!200476) lt!200484))))

(declare-fun lt!200479 () Unit!12884)

(declare-fun lt!200473 () V!16331)

(declare-fun v!412 () V!16331)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!404 (ListLongMap!6477 (_ BitVec 64) V!16331 (_ BitVec 64) V!16331) Unit!12884)

(assert (=> b!435286 (= lt!200479 (addCommutativeForDiffKeys!404 lt!200474 k!794 v!412 (select (arr!12767 _keys!709) from!863) lt!200473))))

(declare-fun b!435287 () Bool)

(declare-fun res!256545 () Bool)

(assert (=> b!435287 (=> (not res!256545) (not e!257164))))

(assert (=> b!435287 (= res!256545 (or (= (select (arr!12767 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12767 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435288 () Bool)

(declare-fun e!257156 () Bool)

(declare-fun e!257159 () Bool)

(assert (=> b!435288 (= e!257156 (not e!257159))))

(declare-fun res!256533 () Bool)

(assert (=> b!435288 (=> res!256533 e!257159)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435288 (= res!256533 (not (validKeyInArray!0 (select (arr!12767 _keys!709) from!863))))))

(declare-fun lt!200477 () ListLongMap!6477)

(declare-fun lt!200487 () ListLongMap!6477)

(assert (=> b!435288 (= lt!200477 lt!200487)))

(assert (=> b!435288 (= lt!200487 (+!1399 lt!200474 lt!200484))))

(declare-fun minValue!515 () V!16331)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16331)

(declare-datatypes ((ValueCell!5366 0))(
  ( (ValueCellFull!5366 (v!7997 V!16331)) (EmptyCell!5366) )
))
(declare-datatypes ((array!26643 0))(
  ( (array!26644 (arr!12768 (Array (_ BitVec 32) ValueCell!5366)) (size!13120 (_ BitVec 32))) )
))
(declare-fun lt!200480 () array!26643)

(declare-fun getCurrentListMapNoExtraKeys!1438 (array!26641 array!26643 (_ BitVec 32) (_ BitVec 32) V!16331 V!16331 (_ BitVec 32) Int) ListLongMap!6477)

(assert (=> b!435288 (= lt!200477 (getCurrentListMapNoExtraKeys!1438 lt!200482 lt!200480 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!435288 (= lt!200484 (tuple2!7551 k!794 v!412))))

(declare-fun _values!549 () array!26643)

(assert (=> b!435288 (= lt!200474 (getCurrentListMapNoExtraKeys!1438 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200483 () Unit!12884)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!579 (array!26641 array!26643 (_ BitVec 32) (_ BitVec 32) V!16331 V!16331 (_ BitVec 32) (_ BitVec 64) V!16331 (_ BitVec 32) Int) Unit!12884)

(assert (=> b!435288 (= lt!200483 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!579 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435289 () Bool)

(declare-fun res!256534 () Bool)

(assert (=> b!435289 (=> (not res!256534) (not e!257164))))

(assert (=> b!435289 (= res!256534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435290 () Bool)

(declare-fun res!256544 () Bool)

(assert (=> b!435290 (=> (not res!256544) (not e!257164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435290 (= res!256544 (validMask!0 mask!1025))))

(declare-fun b!435291 () Bool)

(declare-fun res!256532 () Bool)

(assert (=> b!435291 (=> (not res!256532) (not e!257162))))

(assert (=> b!435291 (= res!256532 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18750 () Bool)

(declare-fun mapRes!18750 () Bool)

(assert (=> mapIsEmpty!18750 mapRes!18750))

(declare-fun b!435292 () Bool)

(declare-fun e!257163 () Bool)

(declare-fun e!257158 () Bool)

(assert (=> b!435292 (= e!257163 (and e!257158 mapRes!18750))))

(declare-fun condMapEmpty!18750 () Bool)

(declare-fun mapDefault!18750 () ValueCell!5366)

