; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113106 () Bool)

(assert start!113106)

(declare-fun b_free!31121 () Bool)

(declare-fun b_next!31121 () Bool)

(assert (=> start!113106 (= b_free!31121 (not b_next!31121))))

(declare-fun tp!109168 () Bool)

(declare-fun b_and!50161 () Bool)

(assert (=> start!113106 (= tp!109168 b_and!50161)))

(declare-fun b!1340095 () Bool)

(declare-fun e!763360 () Bool)

(declare-fun e!763358 () Bool)

(declare-fun mapRes!57388 () Bool)

(assert (=> b!1340095 (= e!763360 (and e!763358 mapRes!57388))))

(declare-fun condMapEmpty!57388 () Bool)

(declare-datatypes ((V!54597 0))(
  ( (V!54598 (val!18635 Int)) )
))
(declare-datatypes ((ValueCell!17662 0))(
  ( (ValueCellFull!17662 (v!21281 V!54597)) (EmptyCell!17662) )
))
(declare-datatypes ((array!91055 0))(
  ( (array!91056 (arr!43979 (Array (_ BitVec 32) ValueCell!17662)) (size!44530 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91055)

(declare-fun mapDefault!57388 () ValueCell!17662)

