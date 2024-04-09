; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95556 () Bool)

(assert start!95556)

(declare-fun res!718984 () Bool)

(declare-fun e!616857 () Bool)

(assert (=> start!95556 (=> (not res!718984) (not e!616857))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95556 (= res!718984 (validMask!0 mask!1414))))

(assert (=> start!95556 e!616857))

(assert (=> start!95556 true))

(declare-datatypes ((array!69292 0))(
  ( (array!69293 (arr!33317 (Array (_ BitVec 32) (_ BitVec 64))) (size!33854 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69292)

(declare-fun array_inv!25598 (array!69292) Bool)

(assert (=> start!95556 (array_inv!25598 _keys!1070)))

(declare-datatypes ((V!40049 0))(
  ( (V!40050 (val!13152 Int)) )
))
(declare-datatypes ((ValueCell!12386 0))(
  ( (ValueCellFull!12386 (v!15774 V!40049)) (EmptyCell!12386) )
))
(declare-datatypes ((array!69294 0))(
  ( (array!69295 (arr!33318 (Array (_ BitVec 32) ValueCell!12386)) (size!33855 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69294)

(declare-fun e!616854 () Bool)

(declare-fun array_inv!25599 (array!69294) Bool)

(assert (=> start!95556 (and (array_inv!25599 _values!874) e!616854)))

(declare-fun b!1078817 () Bool)

(declare-fun res!718985 () Bool)

(assert (=> b!1078817 (=> (not res!718985) (not e!616857))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1078817 (= res!718985 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33854 _keys!1070))))))

(declare-fun b!1078818 () Bool)

(declare-fun e!616856 () Bool)

(declare-fun tp_is_empty!26191 () Bool)

(assert (=> b!1078818 (= e!616856 tp_is_empty!26191)))

(declare-fun b!1078819 () Bool)

(declare-fun e!616853 () Bool)

(declare-fun mapRes!41038 () Bool)

(assert (=> b!1078819 (= e!616854 (and e!616853 mapRes!41038))))

(declare-fun condMapEmpty!41038 () Bool)

(declare-fun mapDefault!41038 () ValueCell!12386)

