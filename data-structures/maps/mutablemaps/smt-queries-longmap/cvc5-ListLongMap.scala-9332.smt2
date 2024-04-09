; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111464 () Bool)

(assert start!111464)

(declare-fun b_free!30085 () Bool)

(declare-fun b_next!30085 () Bool)

(assert (=> start!111464 (= b_free!30085 (not b_next!30085))))

(declare-fun tp!105732 () Bool)

(declare-fun b_and!48339 () Bool)

(assert (=> start!111464 (= tp!105732 b_and!48339)))

(declare-fun b!1318604 () Bool)

(declare-fun res!875219 () Bool)

(declare-fun e!752452 () Bool)

(assert (=> b!1318604 (=> (not res!875219) (not e!752452))))

(declare-datatypes ((array!88711 0))(
  ( (array!88712 (arr!42825 (Array (_ BitVec 32) (_ BitVec 64))) (size!43376 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88711)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1318604 (= res!875219 (validKeyInArray!0 (select (arr!42825 _keys!1609) from!2000)))))

(declare-fun b!1318605 () Bool)

(declare-fun e!752450 () Bool)

(declare-fun e!752449 () Bool)

(declare-fun mapRes!55505 () Bool)

(assert (=> b!1318605 (= e!752450 (and e!752449 mapRes!55505))))

(declare-fun condMapEmpty!55505 () Bool)

(declare-datatypes ((V!52977 0))(
  ( (V!52978 (val!18027 Int)) )
))
(declare-datatypes ((ValueCell!17054 0))(
  ( (ValueCellFull!17054 (v!20655 V!52977)) (EmptyCell!17054) )
))
(declare-datatypes ((array!88713 0))(
  ( (array!88714 (arr!42826 (Array (_ BitVec 32) ValueCell!17054)) (size!43377 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88713)

(declare-fun mapDefault!55505 () ValueCell!17054)

