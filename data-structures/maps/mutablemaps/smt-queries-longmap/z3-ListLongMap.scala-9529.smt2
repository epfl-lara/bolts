; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113074 () Bool)

(assert start!113074)

(declare-fun b_free!31089 () Bool)

(declare-fun b_next!31089 () Bool)

(assert (=> start!113074 (= b_free!31089 (not b_next!31089))))

(declare-fun tp!109073 () Bool)

(declare-fun b_and!50129 () Bool)

(assert (=> start!113074 (= tp!109073 b_and!50129)))

(declare-fun b!1339687 () Bool)

(declare-fun res!888791 () Bool)

(declare-fun e!763119 () Bool)

(assert (=> b!1339687 (=> (not res!888791) (not e!763119))))

(declare-datatypes ((array!90995 0))(
  ( (array!90996 (arr!43949 (Array (_ BitVec 32) (_ BitVec 64))) (size!44500 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90995)

(declare-datatypes ((List!31297 0))(
  ( (Nil!31294) (Cons!31293 (h!32502 (_ BitVec 64)) (t!45636 List!31297)) )
))
(declare-fun arrayNoDuplicates!0 (array!90995 (_ BitVec 32) List!31297) Bool)

(assert (=> b!1339687 (= res!888791 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31294))))

(declare-fun b!1339688 () Bool)

(declare-fun res!888790 () Bool)

(assert (=> b!1339688 (=> (not res!888790) (not e!763119))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90995 (_ BitVec 32)) Bool)

(assert (=> b!1339688 (= res!888790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!888789 () Bool)

(assert (=> start!113074 (=> (not res!888789) (not e!763119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113074 (= res!888789 (validMask!0 mask!1977))))

(assert (=> start!113074 e!763119))

(declare-fun tp_is_empty!37089 () Bool)

(assert (=> start!113074 tp_is_empty!37089))

(assert (=> start!113074 true))

(declare-fun array_inv!33063 (array!90995) Bool)

(assert (=> start!113074 (array_inv!33063 _keys!1571)))

(declare-datatypes ((V!54555 0))(
  ( (V!54556 (val!18619 Int)) )
))
(declare-datatypes ((ValueCell!17646 0))(
  ( (ValueCellFull!17646 (v!21265 V!54555)) (EmptyCell!17646) )
))
(declare-datatypes ((array!90997 0))(
  ( (array!90998 (arr!43950 (Array (_ BitVec 32) ValueCell!17646)) (size!44501 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90997)

(declare-fun e!763120 () Bool)

(declare-fun array_inv!33064 (array!90997) Bool)

(assert (=> start!113074 (and (array_inv!33064 _values!1303) e!763120)))

(assert (=> start!113074 tp!109073))

(declare-fun mapIsEmpty!57340 () Bool)

(declare-fun mapRes!57340 () Bool)

(assert (=> mapIsEmpty!57340 mapRes!57340))

(declare-fun b!1339689 () Bool)

(declare-fun res!888787 () Bool)

(assert (=> b!1339689 (=> (not res!888787) (not e!763119))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339689 (= res!888787 (and (= (size!44501 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44500 _keys!1571) (size!44501 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339690 () Bool)

(declare-fun e!763118 () Bool)

(assert (=> b!1339690 (= e!763120 (and e!763118 mapRes!57340))))

(declare-fun condMapEmpty!57340 () Bool)

(declare-fun mapDefault!57340 () ValueCell!17646)

(assert (=> b!1339690 (= condMapEmpty!57340 (= (arr!43950 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17646)) mapDefault!57340)))))

(declare-fun b!1339691 () Bool)

(assert (=> b!1339691 (= e!763118 tp_is_empty!37089)))

(declare-fun b!1339692 () Bool)

(declare-fun res!888788 () Bool)

(assert (=> b!1339692 (=> (not res!888788) (not e!763119))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339692 (= res!888788 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44500 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339693 () Bool)

(declare-fun e!763121 () Bool)

(assert (=> b!1339693 (= e!763121 tp_is_empty!37089)))

(declare-fun mapNonEmpty!57340 () Bool)

(declare-fun tp!109072 () Bool)

(assert (=> mapNonEmpty!57340 (= mapRes!57340 (and tp!109072 e!763121))))

(declare-fun mapRest!57340 () (Array (_ BitVec 32) ValueCell!17646))

(declare-fun mapKey!57340 () (_ BitVec 32))

(declare-fun mapValue!57340 () ValueCell!17646)

(assert (=> mapNonEmpty!57340 (= (arr!43950 _values!1303) (store mapRest!57340 mapKey!57340 mapValue!57340))))

(declare-fun b!1339694 () Bool)

(assert (=> b!1339694 (= e!763119 false)))

(declare-fun minValue!1245 () V!54555)

(declare-fun lt!593860 () Bool)

(declare-fun zeroValue!1245 () V!54555)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24110 0))(
  ( (tuple2!24111 (_1!12065 (_ BitVec 64)) (_2!12065 V!54555)) )
))
(declare-datatypes ((List!31298 0))(
  ( (Nil!31295) (Cons!31294 (h!32503 tuple2!24110) (t!45637 List!31298)) )
))
(declare-datatypes ((ListLongMap!21779 0))(
  ( (ListLongMap!21780 (toList!10905 List!31298)) )
))
(declare-fun contains!9017 (ListLongMap!21779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5809 (array!90995 array!90997 (_ BitVec 32) (_ BitVec 32) V!54555 V!54555 (_ BitVec 32) Int) ListLongMap!21779)

(assert (=> b!1339694 (= lt!593860 (contains!9017 (getCurrentListMap!5809 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(assert (= (and start!113074 res!888789) b!1339689))

(assert (= (and b!1339689 res!888787) b!1339688))

(assert (= (and b!1339688 res!888790) b!1339687))

(assert (= (and b!1339687 res!888791) b!1339692))

(assert (= (and b!1339692 res!888788) b!1339694))

(assert (= (and b!1339690 condMapEmpty!57340) mapIsEmpty!57340))

(assert (= (and b!1339690 (not condMapEmpty!57340)) mapNonEmpty!57340))

(get-info :version)

(assert (= (and mapNonEmpty!57340 ((_ is ValueCellFull!17646) mapValue!57340)) b!1339693))

(assert (= (and b!1339690 ((_ is ValueCellFull!17646) mapDefault!57340)) b!1339691))

(assert (= start!113074 b!1339690))

(declare-fun m!1227665 () Bool)

(assert (=> start!113074 m!1227665))

(declare-fun m!1227667 () Bool)

(assert (=> start!113074 m!1227667))

(declare-fun m!1227669 () Bool)

(assert (=> start!113074 m!1227669))

(declare-fun m!1227671 () Bool)

(assert (=> b!1339687 m!1227671))

(declare-fun m!1227673 () Bool)

(assert (=> b!1339688 m!1227673))

(declare-fun m!1227675 () Bool)

(assert (=> b!1339694 m!1227675))

(assert (=> b!1339694 m!1227675))

(declare-fun m!1227677 () Bool)

(assert (=> b!1339694 m!1227677))

(declare-fun m!1227679 () Bool)

(assert (=> mapNonEmpty!57340 m!1227679))

(check-sat (not start!113074) (not b!1339688) tp_is_empty!37089 (not mapNonEmpty!57340) (not b_next!31089) (not b!1339687) (not b!1339694) b_and!50129)
(check-sat b_and!50129 (not b_next!31089))
