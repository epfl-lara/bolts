; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95354 () Bool)

(assert start!95354)

(declare-fun mapNonEmpty!40840 () Bool)

(declare-fun mapRes!40840 () Bool)

(declare-fun tp!78303 () Bool)

(declare-fun e!615715 () Bool)

(assert (=> mapNonEmpty!40840 (= mapRes!40840 (and tp!78303 e!615715))))

(declare-datatypes ((V!39893 0))(
  ( (V!39894 (val!13094 Int)) )
))
(declare-datatypes ((ValueCell!12328 0))(
  ( (ValueCellFull!12328 (v!15714 V!39893)) (EmptyCell!12328) )
))
(declare-datatypes ((array!69064 0))(
  ( (array!69065 (arr!33211 (Array (_ BitVec 32) ValueCell!12328)) (size!33748 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69064)

(declare-fun mapKey!40840 () (_ BitVec 32))

(declare-fun mapValue!40840 () ValueCell!12328)

(declare-fun mapRest!40840 () (Array (_ BitVec 32) ValueCell!12328))

(assert (=> mapNonEmpty!40840 (= (arr!33211 _values!874) (store mapRest!40840 mapKey!40840 mapValue!40840))))

(declare-fun res!717758 () Bool)

(declare-fun e!615713 () Bool)

(assert (=> start!95354 (=> (not res!717758) (not e!615713))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95354 (= res!717758 (validMask!0 mask!1414))))

(assert (=> start!95354 e!615713))

(assert (=> start!95354 true))

(declare-fun e!615712 () Bool)

(declare-fun array_inv!25520 (array!69064) Bool)

(assert (=> start!95354 (and (array_inv!25520 _values!874) e!615712)))

(declare-datatypes ((array!69066 0))(
  ( (array!69067 (arr!33212 (Array (_ BitVec 32) (_ BitVec 64))) (size!33749 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69066)

(declare-fun array_inv!25521 (array!69066) Bool)

(assert (=> start!95354 (array_inv!25521 _keys!1070)))

(declare-fun mapIsEmpty!40840 () Bool)

(assert (=> mapIsEmpty!40840 mapRes!40840))

(declare-fun b!1076942 () Bool)

(declare-fun e!615714 () Bool)

(assert (=> b!1076942 (= e!615712 (and e!615714 mapRes!40840))))

(declare-fun condMapEmpty!40840 () Bool)

(declare-fun mapDefault!40840 () ValueCell!12328)

