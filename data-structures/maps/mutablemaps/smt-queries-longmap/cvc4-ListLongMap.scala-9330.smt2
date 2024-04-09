; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111456 () Bool)

(assert start!111456)

(declare-fun b_free!30077 () Bool)

(declare-fun b_next!30077 () Bool)

(assert (=> start!111456 (= b_free!30077 (not b_next!30077))))

(declare-fun tp!105707 () Bool)

(declare-fun b_and!48323 () Bool)

(assert (=> start!111456 (= tp!105707 b_and!48323)))

(declare-fun b!1318464 () Bool)

(declare-fun res!875126 () Bool)

(declare-fun e!752392 () Bool)

(assert (=> b!1318464 (=> (not res!875126) (not e!752392))))

(declare-datatypes ((array!88695 0))(
  ( (array!88696 (arr!42817 (Array (_ BitVec 32) (_ BitVec 64))) (size!43368 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88695)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun from!2000 () (_ BitVec 32))

(assert (=> b!1318464 (= res!875126 (not (= (select (arr!42817 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318465 () Bool)

(declare-fun res!875125 () Bool)

(assert (=> b!1318465 (=> (not res!875125) (not e!752392))))

(declare-datatypes ((List!30539 0))(
  ( (Nil!30536) (Cons!30535 (h!31744 (_ BitVec 64)) (t!44172 List!30539)) )
))
(declare-fun arrayNoDuplicates!0 (array!88695 (_ BitVec 32) List!30539) Bool)

(assert (=> b!1318465 (= res!875125 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30536))))

(declare-fun b!1318466 () Bool)

(declare-fun res!875123 () Bool)

(assert (=> b!1318466 (=> (not res!875123) (not e!752392))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1318466 (= res!875123 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43368 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318467 () Bool)

(declare-fun res!875121 () Bool)

(assert (=> b!1318467 (=> (not res!875121) (not e!752392))))

(declare-datatypes ((V!52965 0))(
  ( (V!52966 (val!18023 Int)) )
))
(declare-datatypes ((ValueCell!17050 0))(
  ( (ValueCellFull!17050 (v!20651 V!52965)) (EmptyCell!17050) )
))
(declare-datatypes ((array!88697 0))(
  ( (array!88698 (arr!42818 (Array (_ BitVec 32) ValueCell!17050)) (size!43369 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88697)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1318467 (= res!875121 (and (= (size!43369 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43368 _keys!1609) (size!43369 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318468 () Bool)

(declare-fun e!752388 () Bool)

(declare-fun e!752389 () Bool)

(declare-fun mapRes!55493 () Bool)

(assert (=> b!1318468 (= e!752388 (and e!752389 mapRes!55493))))

(declare-fun condMapEmpty!55493 () Bool)

(declare-fun mapDefault!55493 () ValueCell!17050)

