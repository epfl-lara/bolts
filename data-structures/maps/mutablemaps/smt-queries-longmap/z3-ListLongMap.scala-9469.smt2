; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112460 () Bool)

(assert start!112460)

(declare-fun b_free!30819 () Bool)

(declare-fun b_next!30819 () Bool)

(assert (=> start!112460 (= b_free!30819 (not b_next!30819))))

(declare-fun tp!108094 () Bool)

(declare-fun b_and!49671 () Bool)

(assert (=> start!112460 (= tp!108094 b_and!49671)))

(declare-fun b!1332790 () Bool)

(declare-fun e!759317 () Bool)

(assert (=> b!1332790 (= e!759317 false)))

(declare-datatypes ((V!54075 0))(
  ( (V!54076 (val!18439 Int)) )
))
(declare-datatypes ((ValueCell!17466 0))(
  ( (ValueCellFull!17466 (v!21074 V!54075)) (EmptyCell!17466) )
))
(declare-datatypes ((array!90305 0))(
  ( (array!90306 (arr!43614 (Array (_ BitVec 32) ValueCell!17466)) (size!44165 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90305)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90307 0))(
  ( (array!90308 (arr!43615 (Array (_ BitVec 32) (_ BitVec 64))) (size!44166 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90307)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!592013 () Bool)

(declare-fun zeroValue!1262 () V!54075)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!54075)

(declare-datatypes ((tuple2!23916 0))(
  ( (tuple2!23917 (_1!11968 (_ BitVec 64)) (_2!11968 V!54075)) )
))
(declare-datatypes ((List!31095 0))(
  ( (Nil!31092) (Cons!31091 (h!32300 tuple2!23916) (t!45300 List!31095)) )
))
(declare-datatypes ((ListLongMap!21585 0))(
  ( (ListLongMap!21586 (toList!10808 List!31095)) )
))
(declare-fun contains!8908 (ListLongMap!21585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5729 (array!90307 array!90305 (_ BitVec 32) (_ BitVec 32) V!54075 V!54075 (_ BitVec 32) Int) ListLongMap!21585)

(assert (=> b!1332790 (= lt!592013 (contains!8908 (getCurrentListMap!5729 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332791 () Bool)

(declare-fun res!884537 () Bool)

(assert (=> b!1332791 (=> (not res!884537) (not e!759317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90307 (_ BitVec 32)) Bool)

(assert (=> b!1332791 (= res!884537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332792 () Bool)

(declare-fun res!884533 () Bool)

(assert (=> b!1332792 (=> (not res!884533) (not e!759317))))

(assert (=> b!1332792 (= res!884533 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44166 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332793 () Bool)

(declare-fun e!759315 () Bool)

(declare-fun e!759316 () Bool)

(declare-fun mapRes!56767 () Bool)

(assert (=> b!1332793 (= e!759315 (and e!759316 mapRes!56767))))

(declare-fun condMapEmpty!56767 () Bool)

(declare-fun mapDefault!56767 () ValueCell!17466)

(assert (=> b!1332793 (= condMapEmpty!56767 (= (arr!43614 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17466)) mapDefault!56767)))))

(declare-fun b!1332794 () Bool)

(declare-fun tp_is_empty!36729 () Bool)

(assert (=> b!1332794 (= e!759316 tp_is_empty!36729)))

(declare-fun res!884536 () Bool)

(assert (=> start!112460 (=> (not res!884536) (not e!759317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112460 (= res!884536 (validMask!0 mask!1998))))

(assert (=> start!112460 e!759317))

(declare-fun array_inv!32841 (array!90305) Bool)

(assert (=> start!112460 (and (array_inv!32841 _values!1320) e!759315)))

(assert (=> start!112460 true))

(declare-fun array_inv!32842 (array!90307) Bool)

(assert (=> start!112460 (array_inv!32842 _keys!1590)))

(assert (=> start!112460 tp!108094))

(assert (=> start!112460 tp_is_empty!36729))

(declare-fun b!1332795 () Bool)

(declare-fun res!884534 () Bool)

(assert (=> b!1332795 (=> (not res!884534) (not e!759317))))

(declare-datatypes ((List!31096 0))(
  ( (Nil!31093) (Cons!31092 (h!32301 (_ BitVec 64)) (t!45301 List!31096)) )
))
(declare-fun arrayNoDuplicates!0 (array!90307 (_ BitVec 32) List!31096) Bool)

(assert (=> b!1332795 (= res!884534 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31093))))

(declare-fun mapNonEmpty!56767 () Bool)

(declare-fun tp!108095 () Bool)

(declare-fun e!759318 () Bool)

(assert (=> mapNonEmpty!56767 (= mapRes!56767 (and tp!108095 e!759318))))

(declare-fun mapValue!56767 () ValueCell!17466)

(declare-fun mapRest!56767 () (Array (_ BitVec 32) ValueCell!17466))

(declare-fun mapKey!56767 () (_ BitVec 32))

(assert (=> mapNonEmpty!56767 (= (arr!43614 _values!1320) (store mapRest!56767 mapKey!56767 mapValue!56767))))

(declare-fun b!1332796 () Bool)

(declare-fun res!884535 () Bool)

(assert (=> b!1332796 (=> (not res!884535) (not e!759317))))

(assert (=> b!1332796 (= res!884535 (and (= (size!44165 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44166 _keys!1590) (size!44165 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56767 () Bool)

(assert (=> mapIsEmpty!56767 mapRes!56767))

(declare-fun b!1332797 () Bool)

(assert (=> b!1332797 (= e!759318 tp_is_empty!36729)))

(assert (= (and start!112460 res!884536) b!1332796))

(assert (= (and b!1332796 res!884535) b!1332791))

(assert (= (and b!1332791 res!884537) b!1332795))

(assert (= (and b!1332795 res!884534) b!1332792))

(assert (= (and b!1332792 res!884533) b!1332790))

(assert (= (and b!1332793 condMapEmpty!56767) mapIsEmpty!56767))

(assert (= (and b!1332793 (not condMapEmpty!56767)) mapNonEmpty!56767))

(get-info :version)

(assert (= (and mapNonEmpty!56767 ((_ is ValueCellFull!17466) mapValue!56767)) b!1332797))

(assert (= (and b!1332793 ((_ is ValueCellFull!17466) mapDefault!56767)) b!1332794))

(assert (= start!112460 b!1332793))

(declare-fun m!1221535 () Bool)

(assert (=> b!1332790 m!1221535))

(assert (=> b!1332790 m!1221535))

(declare-fun m!1221537 () Bool)

(assert (=> b!1332790 m!1221537))

(declare-fun m!1221539 () Bool)

(assert (=> b!1332791 m!1221539))

(declare-fun m!1221541 () Bool)

(assert (=> start!112460 m!1221541))

(declare-fun m!1221543 () Bool)

(assert (=> start!112460 m!1221543))

(declare-fun m!1221545 () Bool)

(assert (=> start!112460 m!1221545))

(declare-fun m!1221547 () Bool)

(assert (=> mapNonEmpty!56767 m!1221547))

(declare-fun m!1221549 () Bool)

(assert (=> b!1332795 m!1221549))

(check-sat tp_is_empty!36729 (not b_next!30819) (not b!1332795) (not b!1332790) (not mapNonEmpty!56767) (not start!112460) b_and!49671 (not b!1332791))
(check-sat b_and!49671 (not b_next!30819))
