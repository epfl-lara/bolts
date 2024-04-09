; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113202 () Bool)

(assert start!113202)

(declare-fun b_free!31217 () Bool)

(declare-fun b_next!31217 () Bool)

(assert (=> start!113202 (= b_free!31217 (not b_next!31217))))

(declare-fun tp!109457 () Bool)

(declare-fun b_and!50351 () Bool)

(assert (=> start!113202 (= tp!109457 b_and!50351)))

(declare-fun b!1341916 () Bool)

(declare-fun e!764079 () Bool)

(declare-fun tp_is_empty!37217 () Bool)

(assert (=> b!1341916 (= e!764079 tp_is_empty!37217)))

(declare-fun mapNonEmpty!57532 () Bool)

(declare-fun mapRes!57532 () Bool)

(declare-fun tp!109456 () Bool)

(assert (=> mapNonEmpty!57532 (= mapRes!57532 (and tp!109456 e!764079))))

(declare-fun mapKey!57532 () (_ BitVec 32))

(declare-datatypes ((V!54725 0))(
  ( (V!54726 (val!18683 Int)) )
))
(declare-datatypes ((ValueCell!17710 0))(
  ( (ValueCellFull!17710 (v!21329 V!54725)) (EmptyCell!17710) )
))
(declare-fun mapRest!57532 () (Array (_ BitVec 32) ValueCell!17710))

(declare-datatypes ((array!91243 0))(
  ( (array!91244 (arr!44073 (Array (_ BitVec 32) ValueCell!17710)) (size!44624 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91243)

(declare-fun mapValue!57532 () ValueCell!17710)

(assert (=> mapNonEmpty!57532 (= (arr!44073 _values!1303) (store mapRest!57532 mapKey!57532 mapValue!57532))))

(declare-fun b!1341917 () Bool)

(declare-fun res!890353 () Bool)

(declare-fun e!764078 () Bool)

(assert (=> b!1341917 (=> (not res!890353) (not e!764078))))

(declare-datatypes ((array!91245 0))(
  ( (array!91246 (arr!44074 (Array (_ BitVec 32) (_ BitVec 64))) (size!44625 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91245)

(declare-datatypes ((List!31390 0))(
  ( (Nil!31387) (Cons!31386 (h!32595 (_ BitVec 64)) (t!45825 List!31390)) )
))
(declare-fun arrayNoDuplicates!0 (array!91245 (_ BitVec 32) List!31390) Bool)

(assert (=> b!1341917 (= res!890353 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31387))))

(declare-fun b!1341918 () Bool)

(declare-fun e!764080 () Bool)

(declare-fun e!764081 () Bool)

(assert (=> b!1341918 (= e!764080 (and e!764081 mapRes!57532))))

(declare-fun condMapEmpty!57532 () Bool)

(declare-fun mapDefault!57532 () ValueCell!17710)

