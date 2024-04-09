; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95732 () Bool)

(assert start!95732)

(declare-fun b_free!22349 () Bool)

(declare-fun b_next!22349 () Bool)

(assert (=> start!95732 (= b_free!22349 (not b_next!22349))))

(declare-fun tp!78896 () Bool)

(declare-fun b_and!35391 () Bool)

(assert (=> start!95732 (= tp!78896 b_and!35391)))

(declare-fun b!1081793 () Bool)

(declare-fun e!618334 () Bool)

(declare-fun e!618335 () Bool)

(assert (=> b!1081793 (= e!618334 e!618335)))

(declare-fun res!721172 () Bool)

(assert (=> b!1081793 (=> (not res!721172) (not e!618335))))

(declare-datatypes ((array!69606 0))(
  ( (array!69607 (arr!33473 (Array (_ BitVec 32) (_ BitVec 64))) (size!34010 (_ BitVec 32))) )
))
(declare-fun lt!479406 () array!69606)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69606 (_ BitVec 32)) Bool)

(assert (=> b!1081793 (= res!721172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479406 mask!1414))))

(declare-fun _keys!1070 () array!69606)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081793 (= lt!479406 (array!69607 (store (arr!33473 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34010 _keys!1070)))))

(declare-fun b!1081794 () Bool)

(declare-fun res!721173 () Bool)

(assert (=> b!1081794 (=> (not res!721173) (not e!618334))))

(assert (=> b!1081794 (= res!721173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081795 () Bool)

(declare-fun e!618336 () Bool)

(declare-fun e!618337 () Bool)

(declare-fun mapRes!41281 () Bool)

(assert (=> b!1081795 (= e!618336 (and e!618337 mapRes!41281))))

(declare-fun condMapEmpty!41281 () Bool)

(declare-datatypes ((V!40261 0))(
  ( (V!40262 (val!13232 Int)) )
))
(declare-datatypes ((ValueCell!12466 0))(
  ( (ValueCellFull!12466 (v!15854 V!40261)) (EmptyCell!12466) )
))
(declare-datatypes ((array!69608 0))(
  ( (array!69609 (arr!33474 (Array (_ BitVec 32) ValueCell!12466)) (size!34011 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69608)

(declare-fun mapDefault!41281 () ValueCell!12466)

