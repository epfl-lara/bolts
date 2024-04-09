; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113492 () Bool)

(assert start!113492)

(declare-fun b_free!31507 () Bool)

(declare-fun b_next!31507 () Bool)

(assert (=> start!113492 (= b_free!31507 (not b_next!31507))))

(declare-fun tp!110327 () Bool)

(declare-fun b_and!50805 () Bool)

(assert (=> start!113492 (= tp!110327 b_and!50805)))

(declare-fun b!1346796 () Bool)

(declare-fun res!893759 () Bool)

(declare-fun e!766336 () Bool)

(assert (=> b!1346796 (=> (not res!893759) (not e!766336))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91803 0))(
  ( (array!91804 (arr!44353 (Array (_ BitVec 32) (_ BitVec 64))) (size!44904 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91803)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346796 (= res!893759 (not (= (select (arr!44353 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1346797 () Bool)

(declare-fun res!893758 () Bool)

(assert (=> b!1346797 (=> (not res!893758) (not e!766336))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346797 (= res!893758 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57967 () Bool)

(declare-fun mapRes!57967 () Bool)

(declare-fun tp!110326 () Bool)

(declare-fun e!766334 () Bool)

(assert (=> mapNonEmpty!57967 (= mapRes!57967 (and tp!110326 e!766334))))

(declare-datatypes ((V!55113 0))(
  ( (V!55114 (val!18828 Int)) )
))
(declare-datatypes ((ValueCell!17855 0))(
  ( (ValueCellFull!17855 (v!21474 V!55113)) (EmptyCell!17855) )
))
(declare-datatypes ((array!91805 0))(
  ( (array!91806 (arr!44354 (Array (_ BitVec 32) ValueCell!17855)) (size!44905 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91805)

(declare-fun mapRest!57967 () (Array (_ BitVec 32) ValueCell!17855))

(declare-fun mapValue!57967 () ValueCell!17855)

(declare-fun mapKey!57967 () (_ BitVec 32))

(assert (=> mapNonEmpty!57967 (= (arr!44354 _values!1303) (store mapRest!57967 mapKey!57967 mapValue!57967))))

(declare-fun b!1346799 () Bool)

(declare-fun res!893765 () Bool)

(assert (=> b!1346799 (=> (not res!893765) (not e!766336))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91803 (_ BitVec 32)) Bool)

(assert (=> b!1346799 (= res!893765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346800 () Bool)

(declare-fun e!766333 () Bool)

(declare-fun tp_is_empty!37507 () Bool)

(assert (=> b!1346800 (= e!766333 tp_is_empty!37507)))

(declare-fun b!1346801 () Bool)

(declare-fun res!893761 () Bool)

(assert (=> b!1346801 (=> (not res!893761) (not e!766336))))

(assert (=> b!1346801 (= res!893761 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44904 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57967 () Bool)

(assert (=> mapIsEmpty!57967 mapRes!57967))

(declare-fun b!1346802 () Bool)

(assert (=> b!1346802 (= e!766336 (bvsge from!1960 (size!44905 _values!1303)))))

(declare-fun minValue!1245 () V!55113)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55113)

(declare-datatypes ((tuple2!24408 0))(
  ( (tuple2!24409 (_1!12214 (_ BitVec 64)) (_2!12214 V!55113)) )
))
(declare-datatypes ((List!31581 0))(
  ( (Nil!31578) (Cons!31577 (h!32786 tuple2!24408) (t!46178 List!31581)) )
))
(declare-datatypes ((ListLongMap!22077 0))(
  ( (ListLongMap!22078 (toList!11054 List!31581)) )
))
(declare-fun lt!595486 () ListLongMap!22077)

(declare-fun getCurrentListMapNoExtraKeys!6537 (array!91803 array!91805 (_ BitVec 32) (_ BitVec 32) V!55113 V!55113 (_ BitVec 32) Int) ListLongMap!22077)

(assert (=> b!1346802 (= lt!595486 (getCurrentListMapNoExtraKeys!6537 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1346803 () Bool)

(declare-fun res!893760 () Bool)

(assert (=> b!1346803 (=> (not res!893760) (not e!766336))))

(assert (=> b!1346803 (= res!893760 (and (= (size!44905 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44904 _keys!1571) (size!44905 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346798 () Bool)

(declare-fun res!893762 () Bool)

(assert (=> b!1346798 (=> (not res!893762) (not e!766336))))

(declare-fun contains!9165 (ListLongMap!22077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5944 (array!91803 array!91805 (_ BitVec 32) (_ BitVec 32) V!55113 V!55113 (_ BitVec 32) Int) ListLongMap!22077)

(assert (=> b!1346798 (= res!893762 (contains!9165 (getCurrentListMap!5944 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun res!893757 () Bool)

(assert (=> start!113492 (=> (not res!893757) (not e!766336))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113492 (= res!893757 (validMask!0 mask!1977))))

(assert (=> start!113492 e!766336))

(assert (=> start!113492 tp_is_empty!37507))

(assert (=> start!113492 true))

(declare-fun array_inv!33331 (array!91803) Bool)

(assert (=> start!113492 (array_inv!33331 _keys!1571)))

(declare-fun e!766335 () Bool)

(declare-fun array_inv!33332 (array!91805) Bool)

(assert (=> start!113492 (and (array_inv!33332 _values!1303) e!766335)))

(assert (=> start!113492 tp!110327))

(declare-fun b!1346804 () Bool)

(assert (=> b!1346804 (= e!766334 tp_is_empty!37507)))

(declare-fun b!1346805 () Bool)

(assert (=> b!1346805 (= e!766335 (and e!766333 mapRes!57967))))

(declare-fun condMapEmpty!57967 () Bool)

(declare-fun mapDefault!57967 () ValueCell!17855)

