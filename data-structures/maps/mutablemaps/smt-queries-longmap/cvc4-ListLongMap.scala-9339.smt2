; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111510 () Bool)

(assert start!111510)

(declare-fun b_free!30131 () Bool)

(declare-fun b_next!30131 () Bool)

(assert (=> start!111510 (= b_free!30131 (not b_next!30131))))

(declare-fun tp!105870 () Bool)

(declare-fun b_and!48431 () Bool)

(assert (=> start!111510 (= tp!105870 b_and!48431)))

(declare-fun b!1319409 () Bool)

(declare-fun res!875771 () Bool)

(declare-fun e!752795 () Bool)

(assert (=> b!1319409 (=> (not res!875771) (not e!752795))))

(declare-datatypes ((array!88801 0))(
  ( (array!88802 (arr!42870 (Array (_ BitVec 32) (_ BitVec 64))) (size!43421 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88801)

(declare-datatypes ((List!30580 0))(
  ( (Nil!30577) (Cons!30576 (h!31785 (_ BitVec 64)) (t!44267 List!30580)) )
))
(declare-fun arrayNoDuplicates!0 (array!88801 (_ BitVec 32) List!30580) Bool)

(assert (=> b!1319409 (= res!875771 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30577))))

(declare-fun b!1319410 () Bool)

(declare-fun res!875776 () Bool)

(assert (=> b!1319410 (=> (not res!875776) (not e!752795))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88801 (_ BitVec 32)) Bool)

(assert (=> b!1319410 (= res!875776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319411 () Bool)

(declare-fun res!875773 () Bool)

(assert (=> b!1319411 (=> (not res!875773) (not e!752795))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319411 (= res!875773 (validKeyInArray!0 (select (arr!42870 _keys!1609) from!2000)))))

(declare-fun b!1319412 () Bool)

(declare-fun res!875774 () Bool)

(assert (=> b!1319412 (=> (not res!875774) (not e!752795))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53037 0))(
  ( (V!53038 (val!18050 Int)) )
))
(declare-datatypes ((ValueCell!17077 0))(
  ( (ValueCellFull!17077 (v!20678 V!53037)) (EmptyCell!17077) )
))
(declare-datatypes ((array!88803 0))(
  ( (array!88804 (arr!42871 (Array (_ BitVec 32) ValueCell!17077)) (size!43422 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88803)

(assert (=> b!1319412 (= res!875774 (and (= (size!43422 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43421 _keys!1609) (size!43422 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319413 () Bool)

(declare-fun e!752794 () Bool)

(declare-fun tp_is_empty!35951 () Bool)

(assert (=> b!1319413 (= e!752794 tp_is_empty!35951)))

(declare-fun b!1319414 () Bool)

(declare-fun e!752793 () Bool)

(assert (=> b!1319414 (= e!752793 tp_is_empty!35951)))

(declare-fun b!1319415 () Bool)

(declare-fun res!875769 () Bool)

(assert (=> b!1319415 (=> (not res!875769) (not e!752795))))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319415 (= res!875769 (not (= (select (arr!42870 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319417 () Bool)

(declare-fun res!875770 () Bool)

(assert (=> b!1319417 (=> (not res!875770) (not e!752795))))

(assert (=> b!1319417 (= res!875770 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43421 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55574 () Bool)

(declare-fun mapRes!55574 () Bool)

(declare-fun tp!105869 () Bool)

(assert (=> mapNonEmpty!55574 (= mapRes!55574 (and tp!105869 e!752794))))

(declare-fun mapRest!55574 () (Array (_ BitVec 32) ValueCell!17077))

(declare-fun mapKey!55574 () (_ BitVec 32))

(declare-fun mapValue!55574 () ValueCell!17077)

(assert (=> mapNonEmpty!55574 (= (arr!42871 _values!1337) (store mapRest!55574 mapKey!55574 mapValue!55574))))

(declare-fun b!1319418 () Bool)

(declare-fun e!752797 () Bool)

(assert (=> b!1319418 (= e!752797 (and e!752793 mapRes!55574))))

(declare-fun condMapEmpty!55574 () Bool)

(declare-fun mapDefault!55574 () ValueCell!17077)

