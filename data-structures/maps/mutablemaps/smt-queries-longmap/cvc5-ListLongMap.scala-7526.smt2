; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95454 () Bool)

(assert start!95454)

(declare-fun b!1077634 () Bool)

(declare-fun res!718140 () Bool)

(declare-fun e!616231 () Bool)

(assert (=> b!1077634 (=> (not res!718140) (not e!616231))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!69172 0))(
  ( (array!69173 (arr!33260 (Array (_ BitVec 32) (_ BitVec 64))) (size!33797 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69172)

(assert (=> b!1077634 (= res!718140 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33797 _keys!1070))))))

(declare-fun b!1077635 () Bool)

(declare-fun e!616227 () Bool)

(declare-fun tp_is_empty!26131 () Bool)

(assert (=> b!1077635 (= e!616227 tp_is_empty!26131)))

(declare-fun mapNonEmpty!40939 () Bool)

(declare-fun mapRes!40939 () Bool)

(declare-fun tp!78402 () Bool)

(declare-fun e!616230 () Bool)

(assert (=> mapNonEmpty!40939 (= mapRes!40939 (and tp!78402 e!616230))))

(declare-datatypes ((V!39969 0))(
  ( (V!39970 (val!13122 Int)) )
))
(declare-datatypes ((ValueCell!12356 0))(
  ( (ValueCellFull!12356 (v!15743 V!39969)) (EmptyCell!12356) )
))
(declare-fun mapValue!40939 () ValueCell!12356)

(declare-datatypes ((array!69174 0))(
  ( (array!69175 (arr!33261 (Array (_ BitVec 32) ValueCell!12356)) (size!33798 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69174)

(declare-fun mapRest!40939 () (Array (_ BitVec 32) ValueCell!12356))

(declare-fun mapKey!40939 () (_ BitVec 32))

(assert (=> mapNonEmpty!40939 (= (arr!33261 _values!874) (store mapRest!40939 mapKey!40939 mapValue!40939))))

(declare-fun res!718137 () Bool)

(assert (=> start!95454 (=> (not res!718137) (not e!616231))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95454 (= res!718137 (validMask!0 mask!1414))))

(assert (=> start!95454 e!616231))

(assert (=> start!95454 true))

(declare-fun array_inv!25560 (array!69172) Bool)

(assert (=> start!95454 (array_inv!25560 _keys!1070)))

(declare-fun e!616229 () Bool)

(declare-fun array_inv!25561 (array!69174) Bool)

(assert (=> start!95454 (and (array_inv!25561 _values!874) e!616229)))

(declare-fun b!1077636 () Bool)

(declare-fun res!718134 () Bool)

(assert (=> b!1077636 (=> (not res!718134) (not e!616231))))

(declare-datatypes ((List!23340 0))(
  ( (Nil!23337) (Cons!23336 (h!24545 (_ BitVec 64)) (t!32706 List!23340)) )
))
(declare-fun arrayNoDuplicates!0 (array!69172 (_ BitVec 32) List!23340) Bool)

(assert (=> b!1077636 (= res!718134 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23337))))

(declare-fun b!1077637 () Bool)

(declare-fun res!718139 () Bool)

(assert (=> b!1077637 (=> (not res!718139) (not e!616231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69172 (_ BitVec 32)) Bool)

(assert (=> b!1077637 (= res!718139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077638 () Bool)

(declare-fun res!718138 () Bool)

(assert (=> b!1077638 (=> (not res!718138) (not e!616231))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077638 (= res!718138 (validKeyInArray!0 k!904))))

(declare-fun b!1077639 () Bool)

(assert (=> b!1077639 (= e!616231 (bvsgt #b00000000000000000000000000000000 (size!33797 _keys!1070)))))

(declare-fun b!1077640 () Bool)

(declare-fun res!718136 () Bool)

(assert (=> b!1077640 (=> (not res!718136) (not e!616231))))

(assert (=> b!1077640 (= res!718136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69173 (store (arr!33260 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33797 _keys!1070)) mask!1414))))

(declare-fun b!1077641 () Bool)

(assert (=> b!1077641 (= e!616229 (and e!616227 mapRes!40939))))

(declare-fun condMapEmpty!40939 () Bool)

(declare-fun mapDefault!40939 () ValueCell!12356)

