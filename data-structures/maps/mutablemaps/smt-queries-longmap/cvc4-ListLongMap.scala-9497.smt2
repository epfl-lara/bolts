; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112630 () Bool)

(assert start!112630)

(declare-fun b_free!30989 () Bool)

(declare-fun b_next!30989 () Bool)

(assert (=> start!112630 (= b_free!30989 (not b_next!30989))))

(declare-fun tp!108605 () Bool)

(declare-fun b_and!49911 () Bool)

(assert (=> start!112630 (= tp!108605 b_and!49911)))

(declare-fun mapNonEmpty!57022 () Bool)

(declare-fun mapRes!57022 () Bool)

(declare-fun tp!108604 () Bool)

(declare-fun e!760675 () Bool)

(assert (=> mapNonEmpty!57022 (= mapRes!57022 (and tp!108604 e!760675))))

(declare-datatypes ((V!54301 0))(
  ( (V!54302 (val!18524 Int)) )
))
(declare-datatypes ((ValueCell!17551 0))(
  ( (ValueCellFull!17551 (v!21159 V!54301)) (EmptyCell!17551) )
))
(declare-datatypes ((array!90633 0))(
  ( (array!90634 (arr!43778 (Array (_ BitVec 32) ValueCell!17551)) (size!44329 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90633)

(declare-fun mapValue!57022 () ValueCell!17551)

(declare-fun mapKey!57022 () (_ BitVec 32))

(declare-fun mapRest!57022 () (Array (_ BitVec 32) ValueCell!17551))

(assert (=> mapNonEmpty!57022 (= (arr!43778 _values!1320) (store mapRest!57022 mapKey!57022 mapValue!57022))))

(declare-fun b!1335616 () Bool)

(declare-fun res!886525 () Bool)

(declare-fun e!760671 () Bool)

(assert (=> b!1335616 (=> (not res!886525) (not e!760671))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335616 (= res!886525 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57022 () Bool)

(assert (=> mapIsEmpty!57022 mapRes!57022))

(declare-fun b!1335617 () Bool)

(declare-fun e!760672 () Bool)

(declare-fun e!760674 () Bool)

(assert (=> b!1335617 (= e!760672 (and e!760674 mapRes!57022))))

(declare-fun condMapEmpty!57022 () Bool)

(declare-fun mapDefault!57022 () ValueCell!17551)

