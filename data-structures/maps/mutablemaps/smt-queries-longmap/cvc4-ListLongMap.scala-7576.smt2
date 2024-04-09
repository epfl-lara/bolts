; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95816 () Bool)

(assert start!95816)

(declare-fun b_free!22433 () Bool)

(declare-fun b_next!22433 () Bool)

(assert (=> start!95816 (= b_free!22433 (not b_next!22433))))

(declare-fun tp!79149 () Bool)

(declare-fun b_and!35559 () Bool)

(assert (=> start!95816 (= tp!79149 b_and!35559)))

(declare-fun b!1083389 () Bool)

(declare-fun res!722307 () Bool)

(declare-fun e!619090 () Bool)

(assert (=> b!1083389 (=> (not res!722307) (not e!619090))))

(declare-datatypes ((array!69772 0))(
  ( (array!69773 (arr!33556 (Array (_ BitVec 32) (_ BitVec 64))) (size!34093 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69772)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69772 (_ BitVec 32)) Bool)

(assert (=> b!1083389 (= res!722307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083390 () Bool)

(declare-fun e!619092 () Bool)

(declare-fun e!619093 () Bool)

(declare-fun mapRes!41407 () Bool)

(assert (=> b!1083390 (= e!619092 (and e!619093 mapRes!41407))))

(declare-fun condMapEmpty!41407 () Bool)

(declare-datatypes ((V!40373 0))(
  ( (V!40374 (val!13274 Int)) )
))
(declare-datatypes ((ValueCell!12508 0))(
  ( (ValueCellFull!12508 (v!15896 V!40373)) (EmptyCell!12508) )
))
(declare-datatypes ((array!69774 0))(
  ( (array!69775 (arr!33557 (Array (_ BitVec 32) ValueCell!12508)) (size!34094 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69774)

(declare-fun mapDefault!41407 () ValueCell!12508)

