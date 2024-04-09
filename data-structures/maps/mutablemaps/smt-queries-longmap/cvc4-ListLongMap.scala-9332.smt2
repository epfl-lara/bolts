; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111468 () Bool)

(assert start!111468)

(declare-fun b_free!30089 () Bool)

(declare-fun b_next!30089 () Bool)

(assert (=> start!111468 (= b_free!30089 (not b_next!30089))))

(declare-fun tp!105743 () Bool)

(declare-fun b_and!48347 () Bool)

(assert (=> start!111468 (= tp!105743 b_and!48347)))

(declare-fun b!1318674 () Bool)

(declare-fun e!752480 () Bool)

(declare-fun e!752478 () Bool)

(declare-fun mapRes!55511 () Bool)

(assert (=> b!1318674 (= e!752480 (and e!752478 mapRes!55511))))

(declare-fun condMapEmpty!55511 () Bool)

(declare-datatypes ((V!52981 0))(
  ( (V!52982 (val!18029 Int)) )
))
(declare-datatypes ((ValueCell!17056 0))(
  ( (ValueCellFull!17056 (v!20657 V!52981)) (EmptyCell!17056) )
))
(declare-datatypes ((array!88719 0))(
  ( (array!88720 (arr!42829 (Array (_ BitVec 32) ValueCell!17056)) (size!43380 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88719)

(declare-fun mapDefault!55511 () ValueCell!17056)

