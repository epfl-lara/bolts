; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111462 () Bool)

(assert start!111462)

(declare-fun b_free!30083 () Bool)

(declare-fun b_next!30083 () Bool)

(assert (=> start!111462 (= b_free!30083 (not b_next!30083))))

(declare-fun tp!105725 () Bool)

(declare-fun b_and!48335 () Bool)

(assert (=> start!111462 (= tp!105725 b_and!48335)))

(declare-fun b!1318569 () Bool)

(declare-fun res!875197 () Bool)

(declare-fun e!752436 () Bool)

(assert (=> b!1318569 (=> (not res!875197) (not e!752436))))

(declare-datatypes ((array!88707 0))(
  ( (array!88708 (arr!42823 (Array (_ BitVec 32) (_ BitVec 64))) (size!43374 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88707)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318569 (= res!875197 (not (= (select (arr!42823 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1318570 () Bool)

(declare-fun res!875198 () Bool)

(assert (=> b!1318570 (=> (not res!875198) (not e!752436))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1318570 (= res!875198 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43374 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318571 () Bool)

(declare-fun e!752435 () Bool)

(declare-fun tp_is_empty!35903 () Bool)

(assert (=> b!1318571 (= e!752435 tp_is_empty!35903)))

(declare-fun mapIsEmpty!55502 () Bool)

(declare-fun mapRes!55502 () Bool)

(assert (=> mapIsEmpty!55502 mapRes!55502))

(declare-fun b!1318572 () Bool)

(declare-fun e!752433 () Bool)

(declare-fun e!752434 () Bool)

(assert (=> b!1318572 (= e!752433 (and e!752434 mapRes!55502))))

(declare-fun condMapEmpty!55502 () Bool)

(declare-datatypes ((V!52973 0))(
  ( (V!52974 (val!18026 Int)) )
))
(declare-datatypes ((ValueCell!17053 0))(
  ( (ValueCellFull!17053 (v!20654 V!52973)) (EmptyCell!17053) )
))
(declare-datatypes ((array!88709 0))(
  ( (array!88710 (arr!42824 (Array (_ BitVec 32) ValueCell!17053)) (size!43375 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88709)

(declare-fun mapDefault!55502 () ValueCell!17053)

