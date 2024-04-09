; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113300 () Bool)

(assert start!113300)

(declare-fun b_free!31315 () Bool)

(declare-fun b_next!31315 () Bool)

(assert (=> start!113300 (= b_free!31315 (not b_next!31315))))

(declare-fun tp!109751 () Bool)

(declare-fun b_and!50547 () Bool)

(assert (=> start!113300 (= tp!109751 b_and!50547)))

(declare-fun res!891661 () Bool)

(declare-fun e!764814 () Bool)

(assert (=> start!113300 (=> (not res!891661) (not e!764814))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113300 (= res!891661 (validMask!0 mask!1977))))

(assert (=> start!113300 e!764814))

(declare-fun tp_is_empty!37315 () Bool)

(assert (=> start!113300 tp_is_empty!37315))

(assert (=> start!113300 true))

(declare-datatypes ((array!91429 0))(
  ( (array!91430 (arr!44166 (Array (_ BitVec 32) (_ BitVec 64))) (size!44717 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91429)

(declare-fun array_inv!33203 (array!91429) Bool)

(assert (=> start!113300 (array_inv!33203 _keys!1571)))

(declare-datatypes ((V!54857 0))(
  ( (V!54858 (val!18732 Int)) )
))
(declare-datatypes ((ValueCell!17759 0))(
  ( (ValueCellFull!17759 (v!21378 V!54857)) (EmptyCell!17759) )
))
(declare-datatypes ((array!91431 0))(
  ( (array!91432 (arr!44167 (Array (_ BitVec 32) ValueCell!17759)) (size!44718 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91431)

(declare-fun e!764813 () Bool)

(declare-fun array_inv!33204 (array!91431) Bool)

(assert (=> start!113300 (and (array_inv!33204 _values!1303) e!764813)))

(assert (=> start!113300 tp!109751))

(declare-fun mapIsEmpty!57679 () Bool)

(declare-fun mapRes!57679 () Bool)

(assert (=> mapIsEmpty!57679 mapRes!57679))

(declare-fun b!1343770 () Bool)

(declare-fun res!891663 () Bool)

(assert (=> b!1343770 (=> (not res!891663) (not e!764814))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343770 (= res!891663 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44717 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343771 () Bool)

(declare-fun res!891662 () Bool)

(assert (=> b!1343771 (=> (not res!891662) (not e!764814))))

(declare-datatypes ((List!31461 0))(
  ( (Nil!31458) (Cons!31457 (h!32666 (_ BitVec 64)) (t!45992 List!31461)) )
))
(declare-fun arrayNoDuplicates!0 (array!91429 (_ BitVec 32) List!31461) Bool)

(assert (=> b!1343771 (= res!891662 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31458))))

(declare-fun b!1343772 () Bool)

(declare-fun e!764812 () Bool)

(assert (=> b!1343772 (= e!764812 tp_is_empty!37315)))

(declare-fun b!1343773 () Bool)

(declare-fun res!891665 () Bool)

(assert (=> b!1343773 (=> (not res!891665) (not e!764814))))

(assert (=> b!1343773 (= res!891665 (and (= (size!44718 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44717 _keys!1571) (size!44718 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343774 () Bool)

(assert (=> b!1343774 (= e!764813 (and e!764812 mapRes!57679))))

(declare-fun condMapEmpty!57679 () Bool)

(declare-fun mapDefault!57679 () ValueCell!17759)

