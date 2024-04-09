; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95356 () Bool)

(assert start!95356)

(declare-fun res!717761 () Bool)

(declare-fun e!615729 () Bool)

(assert (=> start!95356 (=> (not res!717761) (not e!615729))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95356 (= res!717761 (validMask!0 mask!1414))))

(assert (=> start!95356 e!615729))

(assert (=> start!95356 true))

(declare-datatypes ((V!39897 0))(
  ( (V!39898 (val!13095 Int)) )
))
(declare-datatypes ((ValueCell!12329 0))(
  ( (ValueCellFull!12329 (v!15715 V!39897)) (EmptyCell!12329) )
))
(declare-datatypes ((array!69068 0))(
  ( (array!69069 (arr!33213 (Array (_ BitVec 32) ValueCell!12329)) (size!33750 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69068)

(declare-fun e!615727 () Bool)

(declare-fun array_inv!25522 (array!69068) Bool)

(assert (=> start!95356 (and (array_inv!25522 _values!874) e!615727)))

(declare-datatypes ((array!69070 0))(
  ( (array!69071 (arr!33214 (Array (_ BitVec 32) (_ BitVec 64))) (size!33751 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69070)

(declare-fun array_inv!25523 (array!69070) Bool)

(assert (=> start!95356 (array_inv!25523 _keys!1070)))

(declare-fun mapIsEmpty!40843 () Bool)

(declare-fun mapRes!40843 () Bool)

(assert (=> mapIsEmpty!40843 mapRes!40843))

(declare-fun b!1076954 () Bool)

(declare-fun e!615731 () Bool)

(assert (=> b!1076954 (= e!615727 (and e!615731 mapRes!40843))))

(declare-fun condMapEmpty!40843 () Bool)

(declare-fun mapDefault!40843 () ValueCell!12329)

