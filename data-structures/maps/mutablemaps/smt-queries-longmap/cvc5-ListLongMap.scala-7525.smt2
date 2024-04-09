; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95448 () Bool)

(assert start!95448)

(declare-fun b!1077549 () Bool)

(declare-fun res!718081 () Bool)

(declare-fun e!616182 () Bool)

(assert (=> b!1077549 (=> (not res!718081) (not e!616182))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69160 0))(
  ( (array!69161 (arr!33254 (Array (_ BitVec 32) (_ BitVec 64))) (size!33791 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69160)

(assert (=> b!1077549 (= res!718081 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33791 _keys!1070))))))

(declare-fun res!718078 () Bool)

(assert (=> start!95448 (=> (not res!718078) (not e!616182))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95448 (= res!718078 (validMask!0 mask!1414))))

(assert (=> start!95448 e!616182))

(assert (=> start!95448 true))

(declare-fun array_inv!25554 (array!69160) Bool)

(assert (=> start!95448 (array_inv!25554 _keys!1070)))

(declare-datatypes ((V!39961 0))(
  ( (V!39962 (val!13119 Int)) )
))
(declare-datatypes ((ValueCell!12353 0))(
  ( (ValueCellFull!12353 (v!15740 V!39961)) (EmptyCell!12353) )
))
(declare-datatypes ((array!69162 0))(
  ( (array!69163 (arr!33255 (Array (_ BitVec 32) ValueCell!12353)) (size!33792 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69162)

(declare-fun e!616184 () Bool)

(declare-fun array_inv!25555 (array!69162) Bool)

(assert (=> start!95448 (and (array_inv!25555 _values!874) e!616184)))

(declare-fun b!1077550 () Bool)

(declare-fun res!718079 () Bool)

(assert (=> b!1077550 (=> (not res!718079) (not e!616182))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077550 (= res!718079 (and (= (size!33792 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33791 _keys!1070) (size!33792 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077551 () Bool)

(declare-fun e!616185 () Bool)

(declare-fun tp_is_empty!26125 () Bool)

(assert (=> b!1077551 (= e!616185 tp_is_empty!26125)))

(declare-fun b!1077552 () Bool)

(declare-fun res!718076 () Bool)

(assert (=> b!1077552 (=> (not res!718076) (not e!616182))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077552 (= res!718076 (validKeyInArray!0 k!904))))

(declare-fun b!1077553 () Bool)

(declare-fun mapRes!40930 () Bool)

(assert (=> b!1077553 (= e!616184 (and e!616185 mapRes!40930))))

(declare-fun condMapEmpty!40930 () Bool)

(declare-fun mapDefault!40930 () ValueCell!12353)

