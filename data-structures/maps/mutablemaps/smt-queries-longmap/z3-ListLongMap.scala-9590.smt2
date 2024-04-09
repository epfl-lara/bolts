; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113440 () Bool)

(assert start!113440)

(declare-fun b_free!31455 () Bool)

(declare-fun b_next!31455 () Bool)

(assert (=> start!113440 (= b_free!31455 (not b_next!31455))))

(declare-fun tp!110170 () Bool)

(declare-fun b_and!50753 () Bool)

(assert (=> start!113440 (= tp!110170 b_and!50753)))

(declare-fun mapNonEmpty!57889 () Bool)

(declare-fun mapRes!57889 () Bool)

(declare-fun tp!110171 () Bool)

(declare-fun e!765943 () Bool)

(assert (=> mapNonEmpty!57889 (= mapRes!57889 (and tp!110171 e!765943))))

(declare-datatypes ((V!55043 0))(
  ( (V!55044 (val!18802 Int)) )
))
(declare-datatypes ((ValueCell!17829 0))(
  ( (ValueCellFull!17829 (v!21448 V!55043)) (EmptyCell!17829) )
))
(declare-fun mapRest!57889 () (Array (_ BitVec 32) ValueCell!17829))

(declare-fun mapKey!57889 () (_ BitVec 32))

(declare-fun mapValue!57889 () ValueCell!17829)

(declare-datatypes ((array!91705 0))(
  ( (array!91706 (arr!44304 (Array (_ BitVec 32) ValueCell!17829)) (size!44855 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91705)

(assert (=> mapNonEmpty!57889 (= (arr!44304 _values!1303) (store mapRest!57889 mapKey!57889 mapValue!57889))))

(declare-fun b!1346101 () Bool)

(declare-fun res!893297 () Bool)

(declare-fun e!765944 () Bool)

(assert (=> b!1346101 (=> (not res!893297) (not e!765944))))

(declare-datatypes ((array!91707 0))(
  ( (array!91708 (arr!44305 (Array (_ BitVec 32) (_ BitVec 64))) (size!44856 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91707)

(declare-datatypes ((List!31549 0))(
  ( (Nil!31546) (Cons!31545 (h!32754 (_ BitVec 64)) (t!46146 List!31549)) )
))
(declare-fun arrayNoDuplicates!0 (array!91707 (_ BitVec 32) List!31549) Bool)

(assert (=> b!1346101 (= res!893297 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31546))))

(declare-fun b!1346102 () Bool)

(declare-fun res!893299 () Bool)

(assert (=> b!1346102 (=> (not res!893299) (not e!765944))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91707 (_ BitVec 32)) Bool)

(assert (=> b!1346102 (= res!893299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57889 () Bool)

(assert (=> mapIsEmpty!57889 mapRes!57889))

(declare-fun res!893300 () Bool)

(assert (=> start!113440 (=> (not res!893300) (not e!765944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113440 (= res!893300 (validMask!0 mask!1977))))

(assert (=> start!113440 e!765944))

(declare-fun tp_is_empty!37455 () Bool)

(assert (=> start!113440 tp_is_empty!37455))

(assert (=> start!113440 true))

(declare-fun array_inv!33299 (array!91707) Bool)

(assert (=> start!113440 (array_inv!33299 _keys!1571)))

(declare-fun e!765946 () Bool)

(declare-fun array_inv!33300 (array!91705) Bool)

(assert (=> start!113440 (and (array_inv!33300 _values!1303) e!765946)))

(assert (=> start!113440 tp!110170))

(declare-fun b!1346103 () Bool)

(assert (=> b!1346103 (= e!765944 false)))

(declare-fun minValue!1245 () V!55043)

(declare-fun lt!595417 () Bool)

(declare-fun zeroValue!1245 () V!55043)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24376 0))(
  ( (tuple2!24377 (_1!12198 (_ BitVec 64)) (_2!12198 V!55043)) )
))
(declare-datatypes ((List!31550 0))(
  ( (Nil!31547) (Cons!31546 (h!32755 tuple2!24376) (t!46147 List!31550)) )
))
(declare-datatypes ((ListLongMap!22045 0))(
  ( (ListLongMap!22046 (toList!11038 List!31550)) )
))
(declare-fun contains!9150 (ListLongMap!22045 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5929 (array!91707 array!91705 (_ BitVec 32) (_ BitVec 32) V!55043 V!55043 (_ BitVec 32) Int) ListLongMap!22045)

(assert (=> b!1346103 (= lt!595417 (contains!9150 (getCurrentListMap!5929 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346104 () Bool)

(declare-fun e!765947 () Bool)

(assert (=> b!1346104 (= e!765946 (and e!765947 mapRes!57889))))

(declare-fun condMapEmpty!57889 () Bool)

(declare-fun mapDefault!57889 () ValueCell!17829)

(assert (=> b!1346104 (= condMapEmpty!57889 (= (arr!44304 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17829)) mapDefault!57889)))))

(declare-fun b!1346105 () Bool)

(declare-fun res!893296 () Bool)

(assert (=> b!1346105 (=> (not res!893296) (not e!765944))))

(assert (=> b!1346105 (= res!893296 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44856 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346106 () Bool)

(declare-fun res!893298 () Bool)

(assert (=> b!1346106 (=> (not res!893298) (not e!765944))))

(assert (=> b!1346106 (= res!893298 (and (= (size!44855 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44856 _keys!1571) (size!44855 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346107 () Bool)

(assert (=> b!1346107 (= e!765943 tp_is_empty!37455)))

(declare-fun b!1346108 () Bool)

(assert (=> b!1346108 (= e!765947 tp_is_empty!37455)))

(assert (= (and start!113440 res!893300) b!1346106))

(assert (= (and b!1346106 res!893298) b!1346102))

(assert (= (and b!1346102 res!893299) b!1346101))

(assert (= (and b!1346101 res!893297) b!1346105))

(assert (= (and b!1346105 res!893296) b!1346103))

(assert (= (and b!1346104 condMapEmpty!57889) mapIsEmpty!57889))

(assert (= (and b!1346104 (not condMapEmpty!57889)) mapNonEmpty!57889))

(get-info :version)

(assert (= (and mapNonEmpty!57889 ((_ is ValueCellFull!17829) mapValue!57889)) b!1346107))

(assert (= (and b!1346104 ((_ is ValueCellFull!17829) mapDefault!57889)) b!1346108))

(assert (= start!113440 b!1346104))

(declare-fun m!1233371 () Bool)

(assert (=> mapNonEmpty!57889 m!1233371))

(declare-fun m!1233373 () Bool)

(assert (=> start!113440 m!1233373))

(declare-fun m!1233375 () Bool)

(assert (=> start!113440 m!1233375))

(declare-fun m!1233377 () Bool)

(assert (=> start!113440 m!1233377))

(declare-fun m!1233379 () Bool)

(assert (=> b!1346102 m!1233379))

(declare-fun m!1233381 () Bool)

(assert (=> b!1346101 m!1233381))

(declare-fun m!1233383 () Bool)

(assert (=> b!1346103 m!1233383))

(assert (=> b!1346103 m!1233383))

(declare-fun m!1233385 () Bool)

(assert (=> b!1346103 m!1233385))

(check-sat (not b_next!31455) tp_is_empty!37455 (not mapNonEmpty!57889) (not start!113440) (not b!1346101) b_and!50753 (not b!1346102) (not b!1346103))
(check-sat b_and!50753 (not b_next!31455))
