; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111404 () Bool)

(assert start!111404)

(declare-fun b_free!30025 () Bool)

(declare-fun b_next!30025 () Bool)

(assert (=> start!111404 (= b_free!30025 (not b_next!30025))))

(declare-fun tp!105552 () Bool)

(declare-fun b_and!48255 () Bool)

(assert (=> start!111404 (= tp!105552 b_and!48255)))

(declare-fun b!1317719 () Bool)

(declare-fun res!874627 () Bool)

(declare-fun e!751999 () Bool)

(assert (=> b!1317719 (=> (not res!874627) (not e!751999))))

(declare-datatypes ((array!88595 0))(
  ( (array!88596 (arr!42767 (Array (_ BitVec 32) (_ BitVec 64))) (size!43318 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88595)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1317719 (= res!874627 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43318 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317720 () Bool)

(declare-fun res!874628 () Bool)

(assert (=> b!1317720 (=> (not res!874628) (not e!751999))))

(declare-datatypes ((V!52897 0))(
  ( (V!52898 (val!17997 Int)) )
))
(declare-datatypes ((ValueCell!17024 0))(
  ( (ValueCellFull!17024 (v!20625 V!52897)) (EmptyCell!17024) )
))
(declare-datatypes ((array!88597 0))(
  ( (array!88598 (arr!42768 (Array (_ BitVec 32) ValueCell!17024)) (size!43319 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88597)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317720 (= res!874628 (and (= (size!43319 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43318 _keys!1609) (size!43319 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317721 () Bool)

(declare-fun e!751998 () Bool)

(declare-fun tp_is_empty!35845 () Bool)

(assert (=> b!1317721 (= e!751998 tp_is_empty!35845)))

(declare-fun mapIsEmpty!55415 () Bool)

(declare-fun mapRes!55415 () Bool)

(assert (=> mapIsEmpty!55415 mapRes!55415))

(declare-fun b!1317722 () Bool)

(declare-fun e!752002 () Bool)

(assert (=> b!1317722 (= e!752002 (and e!751998 mapRes!55415))))

(declare-fun condMapEmpty!55415 () Bool)

(declare-fun mapDefault!55415 () ValueCell!17024)

