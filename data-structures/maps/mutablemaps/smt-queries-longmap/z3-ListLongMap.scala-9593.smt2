; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113458 () Bool)

(assert start!113458)

(declare-fun b_free!31473 () Bool)

(declare-fun b_next!31473 () Bool)

(assert (=> start!113458 (= b_free!31473 (not b_next!31473))))

(declare-fun tp!110225 () Bool)

(declare-fun b_and!50771 () Bool)

(assert (=> start!113458 (= tp!110225 b_and!50771)))

(declare-fun mapIsEmpty!57916 () Bool)

(declare-fun mapRes!57916 () Bool)

(assert (=> mapIsEmpty!57916 mapRes!57916))

(declare-fun res!893434 () Bool)

(declare-fun e!766079 () Bool)

(assert (=> start!113458 (=> (not res!893434) (not e!766079))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113458 (= res!893434 (validMask!0 mask!1977))))

(assert (=> start!113458 e!766079))

(declare-fun tp_is_empty!37473 () Bool)

(assert (=> start!113458 tp_is_empty!37473))

(assert (=> start!113458 true))

(declare-datatypes ((array!91739 0))(
  ( (array!91740 (arr!44321 (Array (_ BitVec 32) (_ BitVec 64))) (size!44872 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91739)

(declare-fun array_inv!33311 (array!91739) Bool)

(assert (=> start!113458 (array_inv!33311 _keys!1571)))

(declare-datatypes ((V!55067 0))(
  ( (V!55068 (val!18811 Int)) )
))
(declare-datatypes ((ValueCell!17838 0))(
  ( (ValueCellFull!17838 (v!21457 V!55067)) (EmptyCell!17838) )
))
(declare-datatypes ((array!91741 0))(
  ( (array!91742 (arr!44322 (Array (_ BitVec 32) ValueCell!17838)) (size!44873 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91741)

(declare-fun e!766082 () Bool)

(declare-fun array_inv!33312 (array!91741) Bool)

(assert (=> start!113458 (and (array_inv!33312 _values!1303) e!766082)))

(assert (=> start!113458 tp!110225))

(declare-fun b!1346317 () Bool)

(declare-fun e!766081 () Bool)

(assert (=> b!1346317 (= e!766081 tp_is_empty!37473)))

(declare-fun b!1346318 () Bool)

(assert (=> b!1346318 (= e!766082 (and e!766081 mapRes!57916))))

(declare-fun condMapEmpty!57916 () Bool)

(declare-fun mapDefault!57916 () ValueCell!17838)

(assert (=> b!1346318 (= condMapEmpty!57916 (= (arr!44322 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17838)) mapDefault!57916)))))

(declare-fun b!1346319 () Bool)

(declare-fun res!893433 () Bool)

(assert (=> b!1346319 (=> (not res!893433) (not e!766079))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346319 (= res!893433 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44872 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346320 () Bool)

(assert (=> b!1346320 (= e!766079 false)))

(declare-fun minValue!1245 () V!55067)

(declare-fun lt!595444 () Bool)

(declare-fun zeroValue!1245 () V!55067)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24386 0))(
  ( (tuple2!24387 (_1!12203 (_ BitVec 64)) (_2!12203 V!55067)) )
))
(declare-datatypes ((List!31561 0))(
  ( (Nil!31558) (Cons!31557 (h!32766 tuple2!24386) (t!46158 List!31561)) )
))
(declare-datatypes ((ListLongMap!22055 0))(
  ( (ListLongMap!22056 (toList!11043 List!31561)) )
))
(declare-fun contains!9155 (ListLongMap!22055 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5934 (array!91739 array!91741 (_ BitVec 32) (_ BitVec 32) V!55067 V!55067 (_ BitVec 32) Int) ListLongMap!22055)

(assert (=> b!1346320 (= lt!595444 (contains!9155 (getCurrentListMap!5934 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346321 () Bool)

(declare-fun res!893432 () Bool)

(assert (=> b!1346321 (=> (not res!893432) (not e!766079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91739 (_ BitVec 32)) Bool)

(assert (=> b!1346321 (= res!893432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57916 () Bool)

(declare-fun tp!110224 () Bool)

(declare-fun e!766080 () Bool)

(assert (=> mapNonEmpty!57916 (= mapRes!57916 (and tp!110224 e!766080))))

(declare-fun mapValue!57916 () ValueCell!17838)

(declare-fun mapRest!57916 () (Array (_ BitVec 32) ValueCell!17838))

(declare-fun mapKey!57916 () (_ BitVec 32))

(assert (=> mapNonEmpty!57916 (= (arr!44322 _values!1303) (store mapRest!57916 mapKey!57916 mapValue!57916))))

(declare-fun b!1346322 () Bool)

(assert (=> b!1346322 (= e!766080 tp_is_empty!37473)))

(declare-fun b!1346323 () Bool)

(declare-fun res!893431 () Bool)

(assert (=> b!1346323 (=> (not res!893431) (not e!766079))))

(assert (=> b!1346323 (= res!893431 (and (= (size!44873 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44872 _keys!1571) (size!44873 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346324 () Bool)

(declare-fun res!893435 () Bool)

(assert (=> b!1346324 (=> (not res!893435) (not e!766079))))

(declare-datatypes ((List!31562 0))(
  ( (Nil!31559) (Cons!31558 (h!32767 (_ BitVec 64)) (t!46159 List!31562)) )
))
(declare-fun arrayNoDuplicates!0 (array!91739 (_ BitVec 32) List!31562) Bool)

(assert (=> b!1346324 (= res!893435 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31559))))

(assert (= (and start!113458 res!893434) b!1346323))

(assert (= (and b!1346323 res!893431) b!1346321))

(assert (= (and b!1346321 res!893432) b!1346324))

(assert (= (and b!1346324 res!893435) b!1346319))

(assert (= (and b!1346319 res!893433) b!1346320))

(assert (= (and b!1346318 condMapEmpty!57916) mapIsEmpty!57916))

(assert (= (and b!1346318 (not condMapEmpty!57916)) mapNonEmpty!57916))

(get-info :version)

(assert (= (and mapNonEmpty!57916 ((_ is ValueCellFull!17838) mapValue!57916)) b!1346322))

(assert (= (and b!1346318 ((_ is ValueCellFull!17838) mapDefault!57916)) b!1346317))

(assert (= start!113458 b!1346318))

(declare-fun m!1233515 () Bool)

(assert (=> start!113458 m!1233515))

(declare-fun m!1233517 () Bool)

(assert (=> start!113458 m!1233517))

(declare-fun m!1233519 () Bool)

(assert (=> start!113458 m!1233519))

(declare-fun m!1233521 () Bool)

(assert (=> b!1346324 m!1233521))

(declare-fun m!1233523 () Bool)

(assert (=> b!1346321 m!1233523))

(declare-fun m!1233525 () Bool)

(assert (=> mapNonEmpty!57916 m!1233525))

(declare-fun m!1233527 () Bool)

(assert (=> b!1346320 m!1233527))

(assert (=> b!1346320 m!1233527))

(declare-fun m!1233529 () Bool)

(assert (=> b!1346320 m!1233529))

(check-sat (not mapNonEmpty!57916) (not start!113458) (not b!1346324) (not b!1346320) (not b_next!31473) (not b!1346321) tp_is_empty!37473 b_and!50771)
(check-sat b_and!50771 (not b_next!31473))
