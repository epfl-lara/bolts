; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98616 () Bool)

(assert start!98616)

(declare-fun b_free!24185 () Bool)

(declare-fun b_next!24185 () Bool)

(assert (=> start!98616 (= b_free!24185 (not b_next!24185))))

(declare-fun tp!85267 () Bool)

(declare-fun b_and!39233 () Bool)

(assert (=> start!98616 (= tp!85267 b_and!39233)))

(declare-fun b!1143477 () Bool)

(declare-fun e!650534 () Bool)

(declare-fun tp_is_empty!28715 () Bool)

(assert (=> b!1143477 (= e!650534 tp_is_empty!28715)))

(declare-fun bm!51758 () Bool)

(declare-datatypes ((Unit!37453 0))(
  ( (Unit!37454) )
))
(declare-fun call!51762 () Unit!37453)

(declare-fun call!51761 () Unit!37453)

(assert (=> bm!51758 (= call!51762 call!51761)))

(declare-fun b!1143478 () Bool)

(declare-fun e!650531 () Bool)

(declare-fun e!650536 () Bool)

(declare-fun mapRes!44897 () Bool)

(assert (=> b!1143478 (= e!650531 (and e!650536 mapRes!44897))))

(declare-fun condMapEmpty!44897 () Bool)

(declare-datatypes ((V!43413 0))(
  ( (V!43414 (val!14414 Int)) )
))
(declare-datatypes ((ValueCell!13648 0))(
  ( (ValueCellFull!13648 (v!17052 V!43413)) (EmptyCell!13648) )
))
(declare-datatypes ((array!74240 0))(
  ( (array!74241 (arr!35767 (Array (_ BitVec 32) ValueCell!13648)) (size!36304 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74240)

(declare-fun mapDefault!44897 () ValueCell!13648)

