; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95452 () Bool)

(assert start!95452)

(declare-fun b!1077603 () Bool)

(declare-fun e!616215 () Bool)

(declare-fun tp_is_empty!26129 () Bool)

(assert (=> b!1077603 (= e!616215 tp_is_empty!26129)))

(declare-fun res!718114 () Bool)

(declare-fun e!616213 () Bool)

(assert (=> start!95452 (=> (not res!718114) (not e!616213))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95452 (= res!718114 (validMask!0 mask!1414))))

(assert (=> start!95452 e!616213))

(assert (=> start!95452 true))

(declare-datatypes ((array!69168 0))(
  ( (array!69169 (arr!33258 (Array (_ BitVec 32) (_ BitVec 64))) (size!33795 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69168)

(declare-fun array_inv!25558 (array!69168) Bool)

(assert (=> start!95452 (array_inv!25558 _keys!1070)))

(declare-datatypes ((V!39965 0))(
  ( (V!39966 (val!13121 Int)) )
))
(declare-datatypes ((ValueCell!12355 0))(
  ( (ValueCellFull!12355 (v!15742 V!39965)) (EmptyCell!12355) )
))
(declare-datatypes ((array!69170 0))(
  ( (array!69171 (arr!33259 (Array (_ BitVec 32) ValueCell!12355)) (size!33796 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69170)

(declare-fun e!616216 () Bool)

(declare-fun array_inv!25559 (array!69170) Bool)

(assert (=> start!95452 (and (array_inv!25559 _values!874) e!616216)))

(declare-fun mapIsEmpty!40936 () Bool)

(declare-fun mapRes!40936 () Bool)

(assert (=> mapIsEmpty!40936 mapRes!40936))

(declare-fun b!1077604 () Bool)

(declare-fun e!616212 () Bool)

(assert (=> b!1077604 (= e!616212 tp_is_empty!26129)))

(declare-fun b!1077605 () Bool)

(declare-fun res!718115 () Bool)

(assert (=> b!1077605 (=> (not res!718115) (not e!616213))))

(declare-datatypes ((List!23339 0))(
  ( (Nil!23336) (Cons!23335 (h!24544 (_ BitVec 64)) (t!32705 List!23339)) )
))
(declare-fun arrayNoDuplicates!0 (array!69168 (_ BitVec 32) List!23339) Bool)

(assert (=> b!1077605 (= res!718115 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23336))))

(declare-fun b!1077606 () Bool)

(assert (=> b!1077606 (= e!616216 (and e!616215 mapRes!40936))))

(declare-fun condMapEmpty!40936 () Bool)

(declare-fun mapDefault!40936 () ValueCell!12355)

