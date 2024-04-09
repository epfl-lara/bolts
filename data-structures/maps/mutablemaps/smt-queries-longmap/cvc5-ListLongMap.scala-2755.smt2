; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40390 () Bool)

(assert start!40390)

(declare-fun mapIsEmpty!19278 () Bool)

(declare-fun mapRes!19278 () Bool)

(assert (=> mapIsEmpty!19278 mapRes!19278))

(declare-fun b!443601 () Bool)

(declare-fun e!260970 () Bool)

(declare-fun tp_is_empty!11767 () Bool)

(assert (=> b!443601 (= e!260970 tp_is_empty!11767)))

(declare-fun b!443602 () Bool)

(declare-fun e!260968 () Bool)

(declare-fun e!260969 () Bool)

(assert (=> b!443602 (= e!260968 e!260969)))

(declare-fun res!263003 () Bool)

(assert (=> b!443602 (=> (not res!263003) (not e!260969))))

(declare-datatypes ((array!27313 0))(
  ( (array!27314 (arr!13101 (Array (_ BitVec 32) (_ BitVec 64))) (size!13453 (_ BitVec 32))) )
))
(declare-fun lt!203355 () array!27313)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27313 (_ BitVec 32)) Bool)

(assert (=> b!443602 (= res!263003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203355 mask!1025))))

(declare-fun _keys!709 () array!27313)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443602 (= lt!203355 (array!27314 (store (arr!13101 _keys!709) i!563 k!794) (size!13453 _keys!709)))))

(declare-fun b!443603 () Bool)

(declare-fun res!263004 () Bool)

(assert (=> b!443603 (=> (not res!263004) (not e!260968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443603 (= res!263004 (validMask!0 mask!1025))))

(declare-fun b!443604 () Bool)

(declare-fun res!263001 () Bool)

(assert (=> b!443604 (=> (not res!263001) (not e!260968))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16795 0))(
  ( (V!16796 (val!5928 Int)) )
))
(declare-datatypes ((ValueCell!5540 0))(
  ( (ValueCellFull!5540 (v!8175 V!16795)) (EmptyCell!5540) )
))
(declare-datatypes ((array!27315 0))(
  ( (array!27316 (arr!13102 (Array (_ BitVec 32) ValueCell!5540)) (size!13454 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27315)

(assert (=> b!443604 (= res!263001 (and (= (size!13454 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13453 _keys!709) (size!13454 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19278 () Bool)

(declare-fun tp!37260 () Bool)

(assert (=> mapNonEmpty!19278 (= mapRes!19278 (and tp!37260 e!260970))))

(declare-fun mapRest!19278 () (Array (_ BitVec 32) ValueCell!5540))

(declare-fun mapValue!19278 () ValueCell!5540)

(declare-fun mapKey!19278 () (_ BitVec 32))

(assert (=> mapNonEmpty!19278 (= (arr!13102 _values!549) (store mapRest!19278 mapKey!19278 mapValue!19278))))

(declare-fun b!443605 () Bool)

(declare-fun res!262997 () Bool)

(assert (=> b!443605 (=> (not res!262997) (not e!260968))))

(assert (=> b!443605 (= res!262997 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13453 _keys!709))))))

(declare-fun b!443606 () Bool)

(declare-fun e!260973 () Bool)

(declare-fun e!260971 () Bool)

(assert (=> b!443606 (= e!260973 (and e!260971 mapRes!19278))))

(declare-fun condMapEmpty!19278 () Bool)

(declare-fun mapDefault!19278 () ValueCell!5540)

