; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111644 () Bool)

(assert start!111644)

(declare-fun b_free!30265 () Bool)

(declare-fun b_next!30265 () Bool)

(assert (=> start!111644 (= b_free!30265 (not b_next!30265))))

(declare-fun tp!106272 () Bool)

(declare-fun b_and!48699 () Bool)

(assert (=> start!111644 (= tp!106272 b_and!48699)))

(declare-fun b!1321754 () Bool)

(declare-fun res!877382 () Bool)

(declare-fun e!753799 () Bool)

(assert (=> b!1321754 (=> (not res!877382) (not e!753799))))

(declare-datatypes ((array!89053 0))(
  ( (array!89054 (arr!42996 (Array (_ BitVec 32) (_ BitVec 64))) (size!43547 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89053)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321754 (= res!877382 (not (= (select (arr!42996 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321755 () Bool)

(declare-fun e!753802 () Bool)

(declare-fun tp_is_empty!36085 () Bool)

(assert (=> b!1321755 (= e!753802 tp_is_empty!36085)))

(declare-fun b!1321756 () Bool)

(declare-fun e!753798 () Bool)

(declare-fun e!753801 () Bool)

(declare-fun mapRes!55775 () Bool)

(assert (=> b!1321756 (= e!753798 (and e!753801 mapRes!55775))))

(declare-fun condMapEmpty!55775 () Bool)

(declare-datatypes ((V!53217 0))(
  ( (V!53218 (val!18117 Int)) )
))
(declare-datatypes ((ValueCell!17144 0))(
  ( (ValueCellFull!17144 (v!20745 V!53217)) (EmptyCell!17144) )
))
(declare-datatypes ((array!89055 0))(
  ( (array!89056 (arr!42997 (Array (_ BitVec 32) ValueCell!17144)) (size!43548 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89055)

(declare-fun mapDefault!55775 () ValueCell!17144)

