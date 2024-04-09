; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113240 () Bool)

(assert start!113240)

(declare-fun b_free!31255 () Bool)

(declare-fun b_next!31255 () Bool)

(assert (=> start!113240 (= b_free!31255 (not b_next!31255))))

(declare-fun tp!109570 () Bool)

(declare-fun b_and!50427 () Bool)

(assert (=> start!113240 (= tp!109570 b_and!50427)))

(declare-fun b!1342638 () Bool)

(declare-fun e!764365 () Bool)

(declare-fun e!764366 () Bool)

(declare-fun mapRes!57589 () Bool)

(assert (=> b!1342638 (= e!764365 (and e!764366 mapRes!57589))))

(declare-fun condMapEmpty!57589 () Bool)

(declare-datatypes ((V!54777 0))(
  ( (V!54778 (val!18702 Int)) )
))
(declare-datatypes ((ValueCell!17729 0))(
  ( (ValueCellFull!17729 (v!21348 V!54777)) (EmptyCell!17729) )
))
(declare-datatypes ((array!91313 0))(
  ( (array!91314 (arr!44108 (Array (_ BitVec 32) ValueCell!17729)) (size!44659 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91313)

(declare-fun mapDefault!57589 () ValueCell!17729)

