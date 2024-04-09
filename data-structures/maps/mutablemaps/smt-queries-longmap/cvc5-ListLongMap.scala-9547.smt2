; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113180 () Bool)

(assert start!113180)

(declare-fun b_free!31195 () Bool)

(declare-fun b_next!31195 () Bool)

(assert (=> start!113180 (= b_free!31195 (not b_next!31195))))

(declare-fun tp!109390 () Bool)

(declare-fun b_and!50307 () Bool)

(assert (=> start!113180 (= tp!109390 b_and!50307)))

(declare-fun b!1341498 () Bool)

(declare-fun res!890052 () Bool)

(declare-fun e!763915 () Bool)

(assert (=> b!1341498 (=> (not res!890052) (not e!763915))))

(declare-datatypes ((array!91199 0))(
  ( (array!91200 (arr!44051 (Array (_ BitVec 32) (_ BitVec 64))) (size!44602 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91199)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91199 (_ BitVec 32)) Bool)

(assert (=> b!1341498 (= res!890052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341499 () Bool)

(declare-fun e!763912 () Bool)

(declare-fun tp_is_empty!37195 () Bool)

(assert (=> b!1341499 (= e!763912 tp_is_empty!37195)))

(declare-fun b!1341500 () Bool)

(declare-fun e!763916 () Bool)

(declare-fun e!763913 () Bool)

(declare-fun mapRes!57499 () Bool)

(assert (=> b!1341500 (= e!763916 (and e!763913 mapRes!57499))))

(declare-fun condMapEmpty!57499 () Bool)

(declare-datatypes ((V!54697 0))(
  ( (V!54698 (val!18672 Int)) )
))
(declare-datatypes ((ValueCell!17699 0))(
  ( (ValueCellFull!17699 (v!21318 V!54697)) (EmptyCell!17699) )
))
(declare-datatypes ((array!91201 0))(
  ( (array!91202 (arr!44052 (Array (_ BitVec 32) ValueCell!17699)) (size!44603 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91201)

(declare-fun mapDefault!57499 () ValueCell!17699)

