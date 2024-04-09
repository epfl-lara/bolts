; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112712 () Bool)

(assert start!112712)

(declare-fun b_free!31013 () Bool)

(declare-fun b_next!31013 () Bool)

(assert (=> start!112712 (= b_free!31013 (not b_next!31013))))

(declare-fun tp!108680 () Bool)

(declare-fun b_and!49973 () Bool)

(assert (=> start!112712 (= tp!108680 b_and!49973)))

(declare-fun b!1336456 () Bool)

(declare-fun e!761096 () Bool)

(declare-fun e!761095 () Bool)

(declare-fun mapRes!57062 () Bool)

(assert (=> b!1336456 (= e!761096 (and e!761095 mapRes!57062))))

(declare-fun condMapEmpty!57062 () Bool)

(declare-datatypes ((V!54333 0))(
  ( (V!54334 (val!18536 Int)) )
))
(declare-datatypes ((ValueCell!17563 0))(
  ( (ValueCellFull!17563 (v!21174 V!54333)) (EmptyCell!17563) )
))
(declare-datatypes ((array!90679 0))(
  ( (array!90680 (arr!43800 (Array (_ BitVec 32) ValueCell!17563)) (size!44351 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90679)

(declare-fun mapDefault!57062 () ValueCell!17563)

