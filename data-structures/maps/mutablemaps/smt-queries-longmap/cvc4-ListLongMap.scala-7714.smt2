; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96956 () Bool)

(assert start!96956)

(declare-fun b_free!23213 () Bool)

(declare-fun b_next!23213 () Bool)

(assert (=> start!96956 (= b_free!23213 (not b_next!23213))))

(declare-fun tp!81599 () Bool)

(declare-fun b_and!37261 () Bool)

(assert (=> start!96956 (= tp!81599 b_and!37261)))

(declare-fun mapIsEmpty!42688 () Bool)

(declare-fun mapRes!42688 () Bool)

(assert (=> mapIsEmpty!42688 mapRes!42688))

(declare-fun b!1102645 () Bool)

(declare-fun res!735807 () Bool)

(declare-fun e!629393 () Bool)

(assert (=> b!1102645 (=> (not res!735807) (not e!629393))))

(declare-datatypes ((array!71402 0))(
  ( (array!71403 (arr!34358 (Array (_ BitVec 32) (_ BitVec 64))) (size!34895 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71402)

(declare-datatypes ((List!24154 0))(
  ( (Nil!24151) (Cons!24150 (h!25359 (_ BitVec 64)) (t!34420 List!24154)) )
))
(declare-fun arrayNoDuplicates!0 (array!71402 (_ BitVec 32) List!24154) Bool)

(assert (=> b!1102645 (= res!735807 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24151))))

(declare-fun b!1102646 () Bool)

(declare-fun e!629394 () Bool)

(declare-fun e!629397 () Bool)

(assert (=> b!1102646 (= e!629394 (and e!629397 mapRes!42688))))

(declare-fun condMapEmpty!42688 () Bool)

(declare-datatypes ((V!41477 0))(
  ( (V!41478 (val!13688 Int)) )
))
(declare-datatypes ((ValueCell!12922 0))(
  ( (ValueCellFull!12922 (v!16320 V!41477)) (EmptyCell!12922) )
))
(declare-datatypes ((array!71404 0))(
  ( (array!71405 (arr!34359 (Array (_ BitVec 32) ValueCell!12922)) (size!34896 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71404)

(declare-fun mapDefault!42688 () ValueCell!12922)

