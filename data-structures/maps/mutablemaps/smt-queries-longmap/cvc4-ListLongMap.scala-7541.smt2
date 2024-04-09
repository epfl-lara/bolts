; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95606 () Bool)

(assert start!95606)

(declare-fun b!1079479 () Bool)

(declare-fun res!719472 () Bool)

(declare-fun e!617202 () Bool)

(assert (=> b!1079479 (=> (not res!719472) (not e!617202))))

(declare-datatypes ((array!69360 0))(
  ( (array!69361 (arr!33350 (Array (_ BitVec 32) (_ BitVec 64))) (size!33887 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69360)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69360 (_ BitVec 32)) Bool)

(assert (=> b!1079479 (= res!719472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41092 () Bool)

(declare-fun mapRes!41092 () Bool)

(assert (=> mapIsEmpty!41092 mapRes!41092))

(declare-fun b!1079480 () Bool)

(declare-fun e!617200 () Bool)

(declare-fun e!617203 () Bool)

(assert (=> b!1079480 (= e!617200 (and e!617203 mapRes!41092))))

(declare-fun condMapEmpty!41092 () Bool)

(declare-datatypes ((V!40093 0))(
  ( (V!40094 (val!13169 Int)) )
))
(declare-datatypes ((ValueCell!12403 0))(
  ( (ValueCellFull!12403 (v!15791 V!40093)) (EmptyCell!12403) )
))
(declare-datatypes ((array!69362 0))(
  ( (array!69363 (arr!33351 (Array (_ BitVec 32) ValueCell!12403)) (size!33888 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69362)

(declare-fun mapDefault!41092 () ValueCell!12403)

