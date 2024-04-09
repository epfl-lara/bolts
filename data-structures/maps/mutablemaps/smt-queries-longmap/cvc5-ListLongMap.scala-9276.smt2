; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111040 () Bool)

(assert start!111040)

(declare-fun b_free!29839 () Bool)

(declare-fun b_next!29839 () Bool)

(assert (=> start!111040 (= b_free!29839 (not b_next!29839))))

(declare-fun tp!104839 () Bool)

(declare-fun b_and!48057 () Bool)

(assert (=> start!111040 (= tp!104839 b_and!48057)))

(declare-fun res!872503 () Bool)

(declare-fun e!749626 () Bool)

(assert (=> start!111040 (=> (not res!872503) (not e!749626))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111040 (= res!872503 (validMask!0 mask!2040))))

(assert (=> start!111040 e!749626))

(assert (=> start!111040 tp!104839))

(declare-datatypes ((array!88075 0))(
  ( (array!88076 (arr!42513 (Array (_ BitVec 32) (_ BitVec 64))) (size!43064 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88075)

(declare-fun array_inv!32091 (array!88075) Bool)

(assert (=> start!111040 (array_inv!32091 _keys!1628)))

(assert (=> start!111040 true))

(declare-fun tp_is_empty!35569 () Bool)

(assert (=> start!111040 tp_is_empty!35569))

(declare-datatypes ((V!52529 0))(
  ( (V!52530 (val!17859 Int)) )
))
(declare-datatypes ((ValueCell!16886 0))(
  ( (ValueCellFull!16886 (v!20484 V!52529)) (EmptyCell!16886) )
))
(declare-datatypes ((array!88077 0))(
  ( (array!88078 (arr!42514 (Array (_ BitVec 32) ValueCell!16886)) (size!43065 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88077)

(declare-fun e!749627 () Bool)

(declare-fun array_inv!32092 (array!88077) Bool)

(assert (=> start!111040 (and (array_inv!32092 _values!1354) e!749627)))

(declare-fun b!1314113 () Bool)

(declare-fun e!749628 () Bool)

(declare-fun mapRes!54982 () Bool)

(assert (=> b!1314113 (= e!749627 (and e!749628 mapRes!54982))))

(declare-fun condMapEmpty!54982 () Bool)

(declare-fun mapDefault!54982 () ValueCell!16886)

