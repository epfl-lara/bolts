; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39694 () Bool)

(assert start!39694)

(declare-fun b_free!9953 () Bool)

(declare-fun b_next!9953 () Bool)

(assert (=> start!39694 (= b_free!9953 (not b_next!9953))))

(declare-fun tp!35388 () Bool)

(declare-fun b_and!17627 () Bool)

(assert (=> start!39694 (= tp!35388 b_and!17627)))

(declare-fun b!426092 () Bool)

(declare-fun e!252832 () Bool)

(declare-fun e!252827 () Bool)

(assert (=> b!426092 (= e!252832 e!252827)))

(declare-fun res!249741 () Bool)

(assert (=> b!426092 (=> (not res!249741) (not e!252827))))

(declare-datatypes ((array!26035 0))(
  ( (array!26036 (arr!12464 (Array (_ BitVec 32) (_ BitVec 64))) (size!12816 (_ BitVec 32))) )
))
(declare-fun lt!194877 () array!26035)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26035 (_ BitVec 32)) Bool)

(assert (=> b!426092 (= res!249741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194877 mask!1025))))

(declare-fun _keys!709 () array!26035)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426092 (= lt!194877 (array!26036 (store (arr!12464 _keys!709) i!563 k!794) (size!12816 _keys!709)))))

(declare-fun mapIsEmpty!18279 () Bool)

(declare-fun mapRes!18279 () Bool)

(assert (=> mapIsEmpty!18279 mapRes!18279))

(declare-fun b!426093 () Bool)

(declare-fun res!249735 () Bool)

(assert (=> b!426093 (=> (not res!249735) (not e!252832))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15911 0))(
  ( (V!15912 (val!5597 Int)) )
))
(declare-datatypes ((ValueCell!5209 0))(
  ( (ValueCellFull!5209 (v!7840 V!15911)) (EmptyCell!5209) )
))
(declare-datatypes ((array!26037 0))(
  ( (array!26038 (arr!12465 (Array (_ BitVec 32) ValueCell!5209)) (size!12817 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26037)

(assert (=> b!426093 (= res!249735 (and (= (size!12817 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12816 _keys!709) (size!12817 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426094 () Bool)

(declare-fun res!249733 () Bool)

(assert (=> b!426094 (=> (not res!249733) (not e!252832))))

(assert (=> b!426094 (= res!249733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426095 () Bool)

(declare-fun res!249731 () Bool)

(assert (=> b!426095 (=> (not res!249731) (not e!252827))))

(declare-datatypes ((List!7342 0))(
  ( (Nil!7339) (Cons!7338 (h!8194 (_ BitVec 64)) (t!12794 List!7342)) )
))
(declare-fun arrayNoDuplicates!0 (array!26035 (_ BitVec 32) List!7342) Bool)

(assert (=> b!426095 (= res!249731 (arrayNoDuplicates!0 lt!194877 #b00000000000000000000000000000000 Nil!7339))))

(declare-fun b!426096 () Bool)

(declare-fun e!252828 () Bool)

(declare-fun e!252826 () Bool)

(assert (=> b!426096 (= e!252828 (and e!252826 mapRes!18279))))

(declare-fun condMapEmpty!18279 () Bool)

(declare-fun mapDefault!18279 () ValueCell!5209)

