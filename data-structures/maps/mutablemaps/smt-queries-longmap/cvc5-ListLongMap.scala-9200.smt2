; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110584 () Bool)

(assert start!110584)

(declare-fun b_free!29383 () Bool)

(declare-fun b_next!29383 () Bool)

(assert (=> start!110584 (= b_free!29383 (not b_next!29383))))

(declare-fun tp!103471 () Bool)

(declare-fun b_and!47601 () Bool)

(assert (=> start!110584 (= tp!103471 b_and!47601)))

(declare-fun res!868076 () Bool)

(declare-fun e!746208 () Bool)

(assert (=> start!110584 (=> (not res!868076) (not e!746208))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110584 (= res!868076 (validMask!0 mask!2040))))

(assert (=> start!110584 e!746208))

(assert (=> start!110584 tp!103471))

(declare-datatypes ((array!87199 0))(
  ( (array!87200 (arr!42075 (Array (_ BitVec 32) (_ BitVec 64))) (size!42626 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87199)

(declare-fun array_inv!31803 (array!87199) Bool)

(assert (=> start!110584 (array_inv!31803 _keys!1628)))

(assert (=> start!110584 true))

(declare-fun tp_is_empty!35113 () Bool)

(assert (=> start!110584 tp_is_empty!35113))

(declare-datatypes ((V!51921 0))(
  ( (V!51922 (val!17631 Int)) )
))
(declare-datatypes ((ValueCell!16658 0))(
  ( (ValueCellFull!16658 (v!20256 V!51921)) (EmptyCell!16658) )
))
(declare-datatypes ((array!87201 0))(
  ( (array!87202 (arr!42076 (Array (_ BitVec 32) ValueCell!16658)) (size!42627 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87201)

(declare-fun e!746207 () Bool)

(declare-fun array_inv!31804 (array!87201) Bool)

(assert (=> start!110584 (and (array_inv!31804 _values!1354) e!746207)))

(declare-fun b!1307634 () Bool)

(declare-fun e!746206 () Bool)

(declare-fun mapRes!54298 () Bool)

(assert (=> b!1307634 (= e!746207 (and e!746206 mapRes!54298))))

(declare-fun condMapEmpty!54298 () Bool)

(declare-fun mapDefault!54298 () ValueCell!16658)

