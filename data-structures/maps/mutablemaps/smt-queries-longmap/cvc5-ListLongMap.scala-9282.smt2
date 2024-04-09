; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111076 () Bool)

(assert start!111076)

(declare-fun b_free!29875 () Bool)

(declare-fun b_next!29875 () Bool)

(assert (=> start!111076 (= b_free!29875 (not b_next!29875))))

(declare-fun tp!104948 () Bool)

(declare-fun b_and!48093 () Bool)

(assert (=> start!111076 (= tp!104948 b_and!48093)))

(declare-fun res!872804 () Bool)

(declare-fun e!749898 () Bool)

(assert (=> start!111076 (=> (not res!872804) (not e!749898))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111076 (= res!872804 (validMask!0 mask!2040))))

(assert (=> start!111076 e!749898))

(assert (=> start!111076 tp!104948))

(declare-datatypes ((array!88143 0))(
  ( (array!88144 (arr!42547 (Array (_ BitVec 32) (_ BitVec 64))) (size!43098 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88143)

(declare-fun array_inv!32111 (array!88143) Bool)

(assert (=> start!111076 (array_inv!32111 _keys!1628)))

(assert (=> start!111076 true))

(declare-fun tp_is_empty!35605 () Bool)

(assert (=> start!111076 tp_is_empty!35605))

(declare-datatypes ((V!52577 0))(
  ( (V!52578 (val!17877 Int)) )
))
(declare-datatypes ((ValueCell!16904 0))(
  ( (ValueCellFull!16904 (v!20502 V!52577)) (EmptyCell!16904) )
))
(declare-datatypes ((array!88145 0))(
  ( (array!88146 (arr!42548 (Array (_ BitVec 32) ValueCell!16904)) (size!43099 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88145)

(declare-fun e!749900 () Bool)

(declare-fun array_inv!32112 (array!88145) Bool)

(assert (=> start!111076 (and (array_inv!32112 _values!1354) e!749900)))

(declare-fun b!1314573 () Bool)

(declare-fun e!749896 () Bool)

(declare-fun mapRes!55036 () Bool)

(assert (=> b!1314573 (= e!749900 (and e!749896 mapRes!55036))))

(declare-fun condMapEmpty!55036 () Bool)

(declare-fun mapDefault!55036 () ValueCell!16904)

