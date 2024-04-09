; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38950 () Bool)

(assert start!38950)

(declare-fun b!407366 () Bool)

(declare-fun e!244651 () Bool)

(declare-fun e!244650 () Bool)

(assert (=> b!407366 (= e!244651 e!244650)))

(declare-fun res!235596 () Bool)

(assert (=> b!407366 (=> (not res!235596) (not e!244650))))

(declare-datatypes ((array!24577 0))(
  ( (array!24578 (arr!11735 (Array (_ BitVec 32) (_ BitVec 64))) (size!12087 (_ BitVec 32))) )
))
(declare-fun lt!188624 () array!24577)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24577 (_ BitVec 32)) Bool)

(assert (=> b!407366 (= res!235596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188624 mask!1025))))

(declare-fun _keys!709 () array!24577)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407366 (= lt!188624 (array!24578 (store (arr!11735 _keys!709) i!563 k!794) (size!12087 _keys!709)))))

(declare-fun mapNonEmpty!17163 () Bool)

(declare-fun mapRes!17163 () Bool)

(declare-fun tp!33282 () Bool)

(declare-fun e!244647 () Bool)

(assert (=> mapNonEmpty!17163 (= mapRes!17163 (and tp!33282 e!244647))))

(declare-datatypes ((V!14919 0))(
  ( (V!14920 (val!5225 Int)) )
))
(declare-datatypes ((ValueCell!4837 0))(
  ( (ValueCellFull!4837 (v!7468 V!14919)) (EmptyCell!4837) )
))
(declare-fun mapValue!17163 () ValueCell!4837)

(declare-fun mapRest!17163 () (Array (_ BitVec 32) ValueCell!4837))

(declare-fun mapKey!17163 () (_ BitVec 32))

(declare-datatypes ((array!24579 0))(
  ( (array!24580 (arr!11736 (Array (_ BitVec 32) ValueCell!4837)) (size!12088 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24579)

(assert (=> mapNonEmpty!17163 (= (arr!11736 _values!549) (store mapRest!17163 mapKey!17163 mapValue!17163))))

(declare-fun b!407367 () Bool)

(assert (=> b!407367 (= e!244650 false)))

(declare-fun lt!188625 () Bool)

(declare-datatypes ((List!6785 0))(
  ( (Nil!6782) (Cons!6781 (h!7637 (_ BitVec 64)) (t!11967 List!6785)) )
))
(declare-fun arrayNoDuplicates!0 (array!24577 (_ BitVec 32) List!6785) Bool)

(assert (=> b!407367 (= lt!188625 (arrayNoDuplicates!0 lt!188624 #b00000000000000000000000000000000 Nil!6782))))

(declare-fun mapIsEmpty!17163 () Bool)

(assert (=> mapIsEmpty!17163 mapRes!17163))

(declare-fun b!407368 () Bool)

(declare-fun res!235594 () Bool)

(assert (=> b!407368 (=> (not res!235594) (not e!244651))))

(assert (=> b!407368 (= res!235594 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12087 _keys!709))))))

(declare-fun b!407369 () Bool)

(declare-fun e!244646 () Bool)

(declare-fun tp_is_empty!10361 () Bool)

(assert (=> b!407369 (= e!244646 tp_is_empty!10361)))

(declare-fun res!235598 () Bool)

(assert (=> start!38950 (=> (not res!235598) (not e!244651))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38950 (= res!235598 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12087 _keys!709))))))

(assert (=> start!38950 e!244651))

(assert (=> start!38950 true))

(declare-fun e!244648 () Bool)

(declare-fun array_inv!8568 (array!24579) Bool)

(assert (=> start!38950 (and (array_inv!8568 _values!549) e!244648)))

(declare-fun array_inv!8569 (array!24577) Bool)

(assert (=> start!38950 (array_inv!8569 _keys!709)))

(declare-fun b!407370 () Bool)

(declare-fun res!235600 () Bool)

(assert (=> b!407370 (=> (not res!235600) (not e!244651))))

(declare-fun arrayContainsKey!0 (array!24577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407370 (= res!235600 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407371 () Bool)

(assert (=> b!407371 (= e!244647 tp_is_empty!10361)))

(declare-fun b!407372 () Bool)

(declare-fun res!235602 () Bool)

(assert (=> b!407372 (=> (not res!235602) (not e!244651))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!407372 (= res!235602 (validKeyInArray!0 k!794))))

(declare-fun b!407373 () Bool)

(declare-fun res!235599 () Bool)

(assert (=> b!407373 (=> (not res!235599) (not e!244651))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407373 (= res!235599 (and (= (size!12088 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12087 _keys!709) (size!12088 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407374 () Bool)

(declare-fun res!235601 () Bool)

(assert (=> b!407374 (=> (not res!235601) (not e!244651))))

(assert (=> b!407374 (= res!235601 (or (= (select (arr!11735 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11735 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407375 () Bool)

(declare-fun res!235593 () Bool)

(assert (=> b!407375 (=> (not res!235593) (not e!244651))))

(assert (=> b!407375 (= res!235593 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6782))))

(declare-fun b!407376 () Bool)

(declare-fun res!235597 () Bool)

(assert (=> b!407376 (=> (not res!235597) (not e!244651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407376 (= res!235597 (validMask!0 mask!1025))))

(declare-fun b!407377 () Bool)

(assert (=> b!407377 (= e!244648 (and e!244646 mapRes!17163))))

(declare-fun condMapEmpty!17163 () Bool)

(declare-fun mapDefault!17163 () ValueCell!4837)

