; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73654 () Bool)

(assert start!73654)

(declare-fun b_free!14541 () Bool)

(declare-fun b_next!14541 () Bool)

(assert (=> start!73654 (= b_free!14541 (not b_next!14541))))

(declare-fun tp!51127 () Bool)

(declare-fun b_and!24079 () Bool)

(assert (=> start!73654 (= tp!51127 b_and!24079)))

(declare-fun b!861647 () Bool)

(declare-fun res!585661 () Bool)

(declare-fun e!480098 () Bool)

(assert (=> b!861647 (=> (not res!585661) (not e!480098))))

(declare-datatypes ((array!49500 0))(
  ( (array!49501 (arr!23777 (Array (_ BitVec 32) (_ BitVec 64))) (size!24218 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49500)

(declare-datatypes ((List!16950 0))(
  ( (Nil!16947) (Cons!16946 (h!18077 (_ BitVec 64)) (t!23765 List!16950)) )
))
(declare-fun arrayNoDuplicates!0 (array!49500 (_ BitVec 32) List!16950) Bool)

(assert (=> b!861647 (= res!585661 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16947))))

(declare-fun res!585669 () Bool)

(assert (=> start!73654 (=> (not res!585669) (not e!480098))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73654 (= res!585669 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24218 _keys!868))))))

(assert (=> start!73654 e!480098))

(declare-fun tp_is_empty!16677 () Bool)

(assert (=> start!73654 tp_is_empty!16677))

(assert (=> start!73654 true))

(assert (=> start!73654 tp!51127))

(declare-fun array_inv!18790 (array!49500) Bool)

(assert (=> start!73654 (array_inv!18790 _keys!868)))

(declare-datatypes ((V!27283 0))(
  ( (V!27284 (val!8386 Int)) )
))
(declare-datatypes ((ValueCell!7899 0))(
  ( (ValueCellFull!7899 (v!10807 V!27283)) (EmptyCell!7899) )
))
(declare-datatypes ((array!49502 0))(
  ( (array!49503 (arr!23778 (Array (_ BitVec 32) ValueCell!7899)) (size!24219 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49502)

(declare-fun e!480105 () Bool)

(declare-fun array_inv!18791 (array!49502) Bool)

(assert (=> start!73654 (and (array_inv!18791 _values!688) e!480105)))

(declare-fun b!861648 () Bool)

(declare-datatypes ((Unit!29367 0))(
  ( (Unit!29368) )
))
(declare-fun e!480099 () Unit!29367)

(declare-fun Unit!29369 () Unit!29367)

(assert (=> b!861648 (= e!480099 Unit!29369)))

(declare-fun b!861649 () Bool)

(declare-fun e!480101 () Bool)

(assert (=> b!861649 (= e!480101 tp_is_empty!16677)))

(declare-fun b!861650 () Bool)

(declare-fun e!480104 () Bool)

(assert (=> b!861650 (= e!480104 true)))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!861650 (not (= (select (arr!23777 _keys!868) from!1053) k0!854))))

(declare-fun lt!388691 () Unit!29367)

(assert (=> b!861650 (= lt!388691 e!480099)))

(declare-fun c!91950 () Bool)

(assert (=> b!861650 (= c!91950 (= (select (arr!23777 _keys!868) from!1053) k0!854))))

(declare-datatypes ((tuple2!11080 0))(
  ( (tuple2!11081 (_1!5550 (_ BitVec 64)) (_2!5550 V!27283)) )
))
(declare-datatypes ((List!16951 0))(
  ( (Nil!16948) (Cons!16947 (h!18078 tuple2!11080) (t!23766 List!16951)) )
))
(declare-datatypes ((ListLongMap!9863 0))(
  ( (ListLongMap!9864 (toList!4947 List!16951)) )
))
(declare-fun lt!388692 () ListLongMap!9863)

(declare-fun lt!388696 () ListLongMap!9863)

(declare-fun defaultEntry!696 () Int)

(declare-fun +!2245 (ListLongMap!9863 tuple2!11080) ListLongMap!9863)

(declare-fun get!12557 (ValueCell!7899 V!27283) V!27283)

(declare-fun dynLambda!1127 (Int (_ BitVec 64)) V!27283)

(assert (=> b!861650 (= lt!388692 (+!2245 lt!388696 (tuple2!11081 (select (arr!23777 _keys!868) from!1053) (get!12557 (select (arr!23778 _values!688) from!1053) (dynLambda!1127 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861651 () Bool)

(declare-fun res!585660 () Bool)

(assert (=> b!861651 (=> (not res!585660) (not e!480098))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!861651 (= res!585660 (and (= (size!24219 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24218 _keys!868) (size!24219 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!861652 () Bool)

(declare-fun res!585662 () Bool)

(assert (=> b!861652 (=> (not res!585662) (not e!480098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861652 (= res!585662 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26615 () Bool)

(declare-fun mapRes!26615 () Bool)

(assert (=> mapIsEmpty!26615 mapRes!26615))

(declare-fun b!861653 () Bool)

(declare-fun res!585664 () Bool)

(assert (=> b!861653 (=> (not res!585664) (not e!480098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861653 (= res!585664 (validMask!0 mask!1196))))

(declare-fun b!861654 () Bool)

(assert (=> b!861654 (= e!480105 (and e!480101 mapRes!26615))))

(declare-fun condMapEmpty!26615 () Bool)

(declare-fun mapDefault!26615 () ValueCell!7899)

(assert (=> b!861654 (= condMapEmpty!26615 (= (arr!23778 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7899)) mapDefault!26615)))))

(declare-fun b!861655 () Bool)

(declare-fun res!585667 () Bool)

(assert (=> b!861655 (=> (not res!585667) (not e!480098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49500 (_ BitVec 32)) Bool)

(assert (=> b!861655 (= res!585667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861656 () Bool)

(declare-fun res!585665 () Bool)

(assert (=> b!861656 (=> (not res!585665) (not e!480098))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861656 (= res!585665 (and (= (select (arr!23777 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!861657 () Bool)

(declare-fun Unit!29370 () Unit!29367)

(assert (=> b!861657 (= e!480099 Unit!29370)))

(declare-fun lt!388689 () Unit!29367)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49500 (_ BitVec 32) (_ BitVec 32)) Unit!29367)

(assert (=> b!861657 (= lt!388689 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861657 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16947)))

(declare-fun lt!388688 () Unit!29367)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29367)

(assert (=> b!861657 (= lt!388688 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861657 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388690 () Unit!29367)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49500 (_ BitVec 64) (_ BitVec 32) List!16950) Unit!29367)

(assert (=> b!861657 (= lt!388690 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16947))))

(assert (=> b!861657 false))

(declare-fun mapNonEmpty!26615 () Bool)

(declare-fun tp!51128 () Bool)

(declare-fun e!480102 () Bool)

(assert (=> mapNonEmpty!26615 (= mapRes!26615 (and tp!51128 e!480102))))

(declare-fun mapValue!26615 () ValueCell!7899)

(declare-fun mapKey!26615 () (_ BitVec 32))

(declare-fun mapRest!26615 () (Array (_ BitVec 32) ValueCell!7899))

(assert (=> mapNonEmpty!26615 (= (arr!23778 _values!688) (store mapRest!26615 mapKey!26615 mapValue!26615))))

(declare-fun b!861658 () Bool)

(declare-fun e!480103 () Bool)

(assert (=> b!861658 (= e!480098 e!480103)))

(declare-fun res!585666 () Bool)

(assert (=> b!861658 (=> (not res!585666) (not e!480103))))

(assert (=> b!861658 (= res!585666 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388698 () array!49502)

(declare-fun minValue!654 () V!27283)

(declare-fun zeroValue!654 () V!27283)

(declare-fun getCurrentListMapNoExtraKeys!2925 (array!49500 array!49502 (_ BitVec 32) (_ BitVec 32) V!27283 V!27283 (_ BitVec 32) Int) ListLongMap!9863)

(assert (=> b!861658 (= lt!388692 (getCurrentListMapNoExtraKeys!2925 _keys!868 lt!388698 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27283)

(assert (=> b!861658 (= lt!388698 (array!49503 (store (arr!23778 _values!688) i!612 (ValueCellFull!7899 v!557)) (size!24219 _values!688)))))

(declare-fun lt!388695 () ListLongMap!9863)

(assert (=> b!861658 (= lt!388695 (getCurrentListMapNoExtraKeys!2925 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861659 () Bool)

(declare-fun res!585668 () Bool)

(assert (=> b!861659 (=> (not res!585668) (not e!480098))))

(assert (=> b!861659 (= res!585668 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24218 _keys!868))))))

(declare-fun b!861660 () Bool)

(assert (=> b!861660 (= e!480102 tp_is_empty!16677)))

(declare-fun b!861661 () Bool)

(assert (=> b!861661 (= e!480103 (not e!480104))))

(declare-fun res!585663 () Bool)

(assert (=> b!861661 (=> res!585663 e!480104)))

(assert (=> b!861661 (= res!585663 (not (validKeyInArray!0 (select (arr!23777 _keys!868) from!1053))))))

(declare-fun lt!388694 () ListLongMap!9863)

(assert (=> b!861661 (= lt!388694 lt!388696)))

(declare-fun lt!388697 () ListLongMap!9863)

(assert (=> b!861661 (= lt!388696 (+!2245 lt!388697 (tuple2!11081 k0!854 v!557)))))

(assert (=> b!861661 (= lt!388694 (getCurrentListMapNoExtraKeys!2925 _keys!868 lt!388698 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!861661 (= lt!388697 (getCurrentListMapNoExtraKeys!2925 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388693 () Unit!29367)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!496 (array!49500 array!49502 (_ BitVec 32) (_ BitVec 32) V!27283 V!27283 (_ BitVec 32) (_ BitVec 64) V!27283 (_ BitVec 32) Int) Unit!29367)

(assert (=> b!861661 (= lt!388693 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!496 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73654 res!585669) b!861653))

(assert (= (and b!861653 res!585664) b!861651))

(assert (= (and b!861651 res!585660) b!861655))

(assert (= (and b!861655 res!585667) b!861647))

(assert (= (and b!861647 res!585661) b!861659))

(assert (= (and b!861659 res!585668) b!861652))

(assert (= (and b!861652 res!585662) b!861656))

(assert (= (and b!861656 res!585665) b!861658))

(assert (= (and b!861658 res!585666) b!861661))

(assert (= (and b!861661 (not res!585663)) b!861650))

(assert (= (and b!861650 c!91950) b!861657))

(assert (= (and b!861650 (not c!91950)) b!861648))

(assert (= (and b!861654 condMapEmpty!26615) mapIsEmpty!26615))

(assert (= (and b!861654 (not condMapEmpty!26615)) mapNonEmpty!26615))

(get-info :version)

(assert (= (and mapNonEmpty!26615 ((_ is ValueCellFull!7899) mapValue!26615)) b!861660))

(assert (= (and b!861654 ((_ is ValueCellFull!7899) mapDefault!26615)) b!861649))

(assert (= start!73654 b!861654))

(declare-fun b_lambda!11923 () Bool)

(assert (=> (not b_lambda!11923) (not b!861650)))

(declare-fun t!23764 () Bool)

(declare-fun tb!4671 () Bool)

(assert (=> (and start!73654 (= defaultEntry!696 defaultEntry!696) t!23764) tb!4671))

(declare-fun result!8945 () Bool)

(assert (=> tb!4671 (= result!8945 tp_is_empty!16677)))

(assert (=> b!861650 t!23764))

(declare-fun b_and!24081 () Bool)

(assert (= b_and!24079 (and (=> t!23764 result!8945) b_and!24081)))

(declare-fun m!802691 () Bool)

(assert (=> b!861656 m!802691))

(declare-fun m!802693 () Bool)

(assert (=> b!861653 m!802693))

(declare-fun m!802695 () Bool)

(assert (=> mapNonEmpty!26615 m!802695))

(declare-fun m!802697 () Bool)

(assert (=> start!73654 m!802697))

(declare-fun m!802699 () Bool)

(assert (=> start!73654 m!802699))

(declare-fun m!802701 () Bool)

(assert (=> b!861652 m!802701))

(declare-fun m!802703 () Bool)

(assert (=> b!861658 m!802703))

(declare-fun m!802705 () Bool)

(assert (=> b!861658 m!802705))

(declare-fun m!802707 () Bool)

(assert (=> b!861658 m!802707))

(declare-fun m!802709 () Bool)

(assert (=> b!861650 m!802709))

(declare-fun m!802711 () Bool)

(assert (=> b!861650 m!802711))

(declare-fun m!802713 () Bool)

(assert (=> b!861650 m!802713))

(declare-fun m!802715 () Bool)

(assert (=> b!861650 m!802715))

(assert (=> b!861650 m!802711))

(declare-fun m!802717 () Bool)

(assert (=> b!861650 m!802717))

(assert (=> b!861650 m!802713))

(declare-fun m!802719 () Bool)

(assert (=> b!861657 m!802719))

(declare-fun m!802721 () Bool)

(assert (=> b!861657 m!802721))

(declare-fun m!802723 () Bool)

(assert (=> b!861657 m!802723))

(declare-fun m!802725 () Bool)

(assert (=> b!861657 m!802725))

(declare-fun m!802727 () Bool)

(assert (=> b!861657 m!802727))

(declare-fun m!802729 () Bool)

(assert (=> b!861655 m!802729))

(declare-fun m!802731 () Bool)

(assert (=> b!861647 m!802731))

(declare-fun m!802733 () Bool)

(assert (=> b!861661 m!802733))

(assert (=> b!861661 m!802717))

(declare-fun m!802735 () Bool)

(assert (=> b!861661 m!802735))

(assert (=> b!861661 m!802717))

(declare-fun m!802737 () Bool)

(assert (=> b!861661 m!802737))

(declare-fun m!802739 () Bool)

(assert (=> b!861661 m!802739))

(declare-fun m!802741 () Bool)

(assert (=> b!861661 m!802741))

(check-sat (not b!861647) b_and!24081 (not b_next!14541) (not b!861652) (not b!861655) (not b!861661) (not b!861658) (not start!73654) tp_is_empty!16677 (not b!861653) (not b!861657) (not b!861650) (not mapNonEmpty!26615) (not b_lambda!11923))
(check-sat b_and!24081 (not b_next!14541))
