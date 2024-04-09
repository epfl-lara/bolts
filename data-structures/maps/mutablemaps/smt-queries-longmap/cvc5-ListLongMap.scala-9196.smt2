; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110560 () Bool)

(assert start!110560)

(declare-fun b_free!29359 () Bool)

(declare-fun b_next!29359 () Bool)

(assert (=> start!110560 (= b_free!29359 (not b_next!29359))))

(declare-fun tp!103399 () Bool)

(declare-fun b_and!47577 () Bool)

(assert (=> start!110560 (= tp!103399 b_and!47577)))

(declare-fun b!1307346 () Bool)

(declare-fun res!867898 () Bool)

(declare-fun e!746030 () Bool)

(assert (=> b!1307346 (=> (not res!867898) (not e!746030))))

(declare-datatypes ((array!87153 0))(
  ( (array!87154 (arr!42052 (Array (_ BitVec 32) (_ BitVec 64))) (size!42603 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87153)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51889 0))(
  ( (V!51890 (val!17619 Int)) )
))
(declare-datatypes ((ValueCell!16646 0))(
  ( (ValueCellFull!16646 (v!20244 V!51889)) (EmptyCell!16646) )
))
(declare-datatypes ((array!87155 0))(
  ( (array!87156 (arr!42053 (Array (_ BitVec 32) ValueCell!16646)) (size!42604 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87155)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307346 (= res!867898 (and (= (size!42604 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42603 _keys!1628) (size!42604 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54262 () Bool)

(declare-fun mapRes!54262 () Bool)

(assert (=> mapIsEmpty!54262 mapRes!54262))

(declare-fun b!1307347 () Bool)

(declare-fun res!867895 () Bool)

(assert (=> b!1307347 (=> (not res!867895) (not e!746030))))

(declare-datatypes ((List!30017 0))(
  ( (Nil!30014) (Cons!30013 (h!31222 (_ BitVec 64)) (t!43630 List!30017)) )
))
(declare-fun arrayNoDuplicates!0 (array!87153 (_ BitVec 32) List!30017) Bool)

(assert (=> b!1307347 (= res!867895 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30014))))

(declare-fun b!1307348 () Bool)

(declare-fun e!746026 () Bool)

(declare-fun e!746028 () Bool)

(assert (=> b!1307348 (= e!746026 (and e!746028 mapRes!54262))))

(declare-fun condMapEmpty!54262 () Bool)

(declare-fun mapDefault!54262 () ValueCell!16646)

