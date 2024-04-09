; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95600 () Bool)

(assert start!95600)

(declare-fun b!1079371 () Bool)

(declare-fun res!719390 () Bool)

(declare-fun e!617148 () Bool)

(assert (=> b!1079371 (=> (not res!719390) (not e!617148))))

(declare-datatypes ((array!69350 0))(
  ( (array!69351 (arr!33345 (Array (_ BitVec 32) (_ BitVec 64))) (size!33882 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69350)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69350 (_ BitVec 32)) Bool)

(assert (=> b!1079371 (= res!719390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1079372 () Bool)

(declare-fun e!617146 () Bool)

(declare-fun tp_is_empty!26219 () Bool)

(assert (=> b!1079372 (= e!617146 tp_is_empty!26219)))

(declare-fun b!1079373 () Bool)

(declare-fun res!719386 () Bool)

(assert (=> b!1079373 (=> (not res!719386) (not e!617148))))

(declare-datatypes ((List!23376 0))(
  ( (Nil!23373) (Cons!23372 (h!24581 (_ BitVec 64)) (t!32742 List!23376)) )
))
(declare-fun arrayNoDuplicates!0 (array!69350 (_ BitVec 32) List!23376) Bool)

(assert (=> b!1079373 (= res!719386 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23373))))

(declare-fun b!1079374 () Bool)

(declare-fun e!617149 () Bool)

(declare-fun e!617145 () Bool)

(declare-fun mapRes!41083 () Bool)

(assert (=> b!1079374 (= e!617149 (and e!617145 mapRes!41083))))

(declare-fun condMapEmpty!41083 () Bool)

(declare-datatypes ((V!40085 0))(
  ( (V!40086 (val!13166 Int)) )
))
(declare-datatypes ((ValueCell!12400 0))(
  ( (ValueCellFull!12400 (v!15788 V!40085)) (EmptyCell!12400) )
))
(declare-datatypes ((array!69352 0))(
  ( (array!69353 (arr!33346 (Array (_ BitVec 32) ValueCell!12400)) (size!33883 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69352)

(declare-fun mapDefault!41083 () ValueCell!12400)

