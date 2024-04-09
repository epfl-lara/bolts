; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113454 () Bool)

(assert start!113454)

(declare-fun b_free!31469 () Bool)

(declare-fun b_next!31469 () Bool)

(assert (=> start!113454 (= b_free!31469 (not b_next!31469))))

(declare-fun tp!110213 () Bool)

(declare-fun b_and!50767 () Bool)

(assert (=> start!113454 (= tp!110213 b_and!50767)))

(declare-fun b!1346269 () Bool)

(declare-fun res!893405 () Bool)

(declare-fun e!766049 () Bool)

(assert (=> b!1346269 (=> (not res!893405) (not e!766049))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91731 0))(
  ( (array!91732 (arr!44317 (Array (_ BitVec 32) (_ BitVec 64))) (size!44868 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91731)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346269 (= res!893405 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44868 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57910 () Bool)

(declare-fun mapRes!57910 () Bool)

(assert (=> mapIsEmpty!57910 mapRes!57910))

(declare-fun b!1346270 () Bool)

(declare-fun res!893404 () Bool)

(assert (=> b!1346270 (=> (not res!893404) (not e!766049))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((V!55061 0))(
  ( (V!55062 (val!18809 Int)) )
))
(declare-datatypes ((ValueCell!17836 0))(
  ( (ValueCellFull!17836 (v!21455 V!55061)) (EmptyCell!17836) )
))
(declare-datatypes ((array!91733 0))(
  ( (array!91734 (arr!44318 (Array (_ BitVec 32) ValueCell!17836)) (size!44869 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91733)

(assert (=> b!1346270 (= res!893404 (and (= (size!44869 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44868 _keys!1571) (size!44869 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346271 () Bool)

(declare-fun res!893402 () Bool)

(assert (=> b!1346271 (=> (not res!893402) (not e!766049))))

(declare-datatypes ((List!31559 0))(
  ( (Nil!31556) (Cons!31555 (h!32764 (_ BitVec 64)) (t!46156 List!31559)) )
))
(declare-fun arrayNoDuplicates!0 (array!91731 (_ BitVec 32) List!31559) Bool)

(assert (=> b!1346271 (= res!893402 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31556))))

(declare-fun res!893403 () Bool)

(assert (=> start!113454 (=> (not res!893403) (not e!766049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113454 (= res!893403 (validMask!0 mask!1977))))

(assert (=> start!113454 e!766049))

(declare-fun tp_is_empty!37469 () Bool)

(assert (=> start!113454 tp_is_empty!37469))

(assert (=> start!113454 true))

(declare-fun array_inv!33309 (array!91731) Bool)

(assert (=> start!113454 (array_inv!33309 _keys!1571)))

(declare-fun e!766048 () Bool)

(declare-fun array_inv!33310 (array!91733) Bool)

(assert (=> start!113454 (and (array_inv!33310 _values!1303) e!766048)))

(assert (=> start!113454 tp!110213))

(declare-fun b!1346272 () Bool)

(declare-fun e!766050 () Bool)

(assert (=> b!1346272 (= e!766048 (and e!766050 mapRes!57910))))

(declare-fun condMapEmpty!57910 () Bool)

(declare-fun mapDefault!57910 () ValueCell!17836)

