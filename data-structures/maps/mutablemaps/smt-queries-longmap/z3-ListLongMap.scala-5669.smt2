; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73828 () Bool)

(assert start!73828)

(declare-fun b_free!14715 () Bool)

(declare-fun b_next!14715 () Bool)

(assert (=> start!73828 (= b_free!14715 (not b_next!14715))))

(declare-fun tp!51649 () Bool)

(declare-fun b_and!24427 () Bool)

(assert (=> start!73828 (= tp!51649 b_and!24427)))

(declare-fun b!865975 () Bool)

(declare-datatypes ((Unit!29653 0))(
  ( (Unit!29654) )
))
(declare-fun e!482425 () Unit!29653)

(declare-fun Unit!29655 () Unit!29653)

(assert (=> b!865975 (= e!482425 Unit!29655)))

(declare-fun b!865976 () Bool)

(declare-fun res!588516 () Bool)

(declare-fun e!482429 () Bool)

(assert (=> b!865976 (=> (not res!588516) (not e!482429))))

(declare-datatypes ((array!49844 0))(
  ( (array!49845 (arr!23949 (Array (_ BitVec 32) (_ BitVec 64))) (size!24390 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49844)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49844 (_ BitVec 32)) Bool)

(assert (=> b!865976 (= res!588516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865977 () Bool)

(declare-fun res!588513 () Bool)

(assert (=> b!865977 (=> (not res!588513) (not e!482429))))

(declare-datatypes ((List!17100 0))(
  ( (Nil!17097) (Cons!17096 (h!18227 (_ BitVec 64)) (t!24089 List!17100)) )
))
(declare-fun arrayNoDuplicates!0 (array!49844 (_ BitVec 32) List!17100) Bool)

(assert (=> b!865977 (= res!588513 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17097))))

(declare-fun mapNonEmpty!26876 () Bool)

(declare-fun mapRes!26876 () Bool)

(declare-fun tp!51650 () Bool)

(declare-fun e!482427 () Bool)

(assert (=> mapNonEmpty!26876 (= mapRes!26876 (and tp!51650 e!482427))))

(declare-fun mapKey!26876 () (_ BitVec 32))

(declare-datatypes ((V!27515 0))(
  ( (V!27516 (val!8473 Int)) )
))
(declare-datatypes ((ValueCell!7986 0))(
  ( (ValueCellFull!7986 (v!10894 V!27515)) (EmptyCell!7986) )
))
(declare-fun mapValue!26876 () ValueCell!7986)

(declare-datatypes ((array!49846 0))(
  ( (array!49847 (arr!23950 (Array (_ BitVec 32) ValueCell!7986)) (size!24391 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49846)

(declare-fun mapRest!26876 () (Array (_ BitVec 32) ValueCell!7986))

(assert (=> mapNonEmpty!26876 (= (arr!23950 _values!688) (store mapRest!26876 mapKey!26876 mapValue!26876))))

(declare-fun b!865978 () Bool)

(declare-fun res!588517 () Bool)

(assert (=> b!865978 (=> (not res!588517) (not e!482429))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865978 (= res!588517 (validKeyInArray!0 k0!854))))

(declare-fun res!588511 () Bool)

(assert (=> start!73828 (=> (not res!588511) (not e!482429))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73828 (= res!588511 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24390 _keys!868))))))

(assert (=> start!73828 e!482429))

(declare-fun tp_is_empty!16851 () Bool)

(assert (=> start!73828 tp_is_empty!16851))

(assert (=> start!73828 true))

(assert (=> start!73828 tp!51649))

(declare-fun array_inv!18914 (array!49844) Bool)

(assert (=> start!73828 (array_inv!18914 _keys!868)))

(declare-fun e!482428 () Bool)

(declare-fun array_inv!18915 (array!49846) Bool)

(assert (=> start!73828 (and (array_inv!18915 _values!688) e!482428)))

(declare-fun b!865979 () Bool)

(declare-fun e!482426 () Bool)

(declare-fun e!482430 () Bool)

(assert (=> b!865979 (= e!482426 (not e!482430))))

(declare-fun res!588518 () Bool)

(assert (=> b!865979 (=> res!588518 e!482430)))

(assert (=> b!865979 (= res!588518 (not (validKeyInArray!0 (select (arr!23949 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11236 0))(
  ( (tuple2!11237 (_1!5628 (_ BitVec 64)) (_2!5628 V!27515)) )
))
(declare-datatypes ((List!17101 0))(
  ( (Nil!17098) (Cons!17097 (h!18228 tuple2!11236) (t!24090 List!17101)) )
))
(declare-datatypes ((ListLongMap!10019 0))(
  ( (ListLongMap!10020 (toList!5025 List!17101)) )
))
(declare-fun lt!392757 () ListLongMap!10019)

(declare-fun lt!392765 () ListLongMap!10019)

(assert (=> b!865979 (= lt!392757 lt!392765)))

(declare-fun lt!392754 () ListLongMap!10019)

(declare-fun lt!392760 () tuple2!11236)

(declare-fun +!2321 (ListLongMap!10019 tuple2!11236) ListLongMap!10019)

(assert (=> b!865979 (= lt!392765 (+!2321 lt!392754 lt!392760))))

(declare-fun lt!392761 () array!49846)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27515)

(declare-fun zeroValue!654 () V!27515)

(declare-fun getCurrentListMapNoExtraKeys!2993 (array!49844 array!49846 (_ BitVec 32) (_ BitVec 32) V!27515 V!27515 (_ BitVec 32) Int) ListLongMap!10019)

(assert (=> b!865979 (= lt!392757 (getCurrentListMapNoExtraKeys!2993 _keys!868 lt!392761 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27515)

(assert (=> b!865979 (= lt!392760 (tuple2!11237 k0!854 v!557))))

(assert (=> b!865979 (= lt!392754 (getCurrentListMapNoExtraKeys!2993 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!392762 () Unit!29653)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!558 (array!49844 array!49846 (_ BitVec 32) (_ BitVec 32) V!27515 V!27515 (_ BitVec 32) (_ BitVec 64) V!27515 (_ BitVec 32) Int) Unit!29653)

(assert (=> b!865979 (= lt!392762 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!558 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865980 () Bool)

(assert (=> b!865980 (= e!482429 e!482426)))

(declare-fun res!588515 () Bool)

(assert (=> b!865980 (=> (not res!588515) (not e!482426))))

(assert (=> b!865980 (= res!588515 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!392758 () ListLongMap!10019)

(assert (=> b!865980 (= lt!392758 (getCurrentListMapNoExtraKeys!2993 _keys!868 lt!392761 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865980 (= lt!392761 (array!49847 (store (arr!23950 _values!688) i!612 (ValueCellFull!7986 v!557)) (size!24391 _values!688)))))

(declare-fun lt!392768 () ListLongMap!10019)

(assert (=> b!865980 (= lt!392768 (getCurrentListMapNoExtraKeys!2993 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865981 () Bool)

(declare-fun e!482432 () Bool)

(assert (=> b!865981 (= e!482432 tp_is_empty!16851)))

(declare-fun b!865982 () Bool)

(declare-fun e!482431 () Bool)

(assert (=> b!865982 (= e!482431 true)))

(declare-fun lt!392767 () ListLongMap!10019)

(declare-fun lt!392756 () tuple2!11236)

(assert (=> b!865982 (= lt!392767 (+!2321 (+!2321 lt!392754 lt!392756) lt!392760))))

(declare-fun lt!392755 () Unit!29653)

(declare-fun lt!392764 () V!27515)

(declare-fun addCommutativeForDiffKeys!527 (ListLongMap!10019 (_ BitVec 64) V!27515 (_ BitVec 64) V!27515) Unit!29653)

(assert (=> b!865982 (= lt!392755 (addCommutativeForDiffKeys!527 lt!392754 k0!854 v!557 (select (arr!23949 _keys!868) from!1053) lt!392764))))

(declare-fun b!865983 () Bool)

(declare-fun res!588514 () Bool)

(assert (=> b!865983 (=> (not res!588514) (not e!482429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865983 (= res!588514 (validMask!0 mask!1196))))

(declare-fun b!865984 () Bool)

(declare-fun res!588509 () Bool)

(assert (=> b!865984 (=> (not res!588509) (not e!482429))))

(assert (=> b!865984 (= res!588509 (and (= (select (arr!23949 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!865985 () Bool)

(declare-fun res!588519 () Bool)

(assert (=> b!865985 (=> (not res!588519) (not e!482429))))

(assert (=> b!865985 (= res!588519 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24390 _keys!868))))))

(declare-fun mapIsEmpty!26876 () Bool)

(assert (=> mapIsEmpty!26876 mapRes!26876))

(declare-fun b!865986 () Bool)

(declare-fun Unit!29656 () Unit!29653)

(assert (=> b!865986 (= e!482425 Unit!29656)))

(declare-fun lt!392763 () Unit!29653)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49844 (_ BitVec 32) (_ BitVec 32)) Unit!29653)

(assert (=> b!865986 (= lt!392763 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865986 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17097)))

(declare-fun lt!392769 () Unit!29653)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49844 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29653)

(assert (=> b!865986 (= lt!392769 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49844 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865986 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392766 () Unit!29653)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49844 (_ BitVec 64) (_ BitVec 32) List!17100) Unit!29653)

(assert (=> b!865986 (= lt!392766 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17097))))

(assert (=> b!865986 false))

(declare-fun b!865987 () Bool)

(declare-fun res!588510 () Bool)

(assert (=> b!865987 (=> (not res!588510) (not e!482429))))

(assert (=> b!865987 (= res!588510 (and (= (size!24391 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24390 _keys!868) (size!24391 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865988 () Bool)

(assert (=> b!865988 (= e!482430 e!482431)))

(declare-fun res!588512 () Bool)

(assert (=> b!865988 (=> res!588512 e!482431)))

(assert (=> b!865988 (= res!588512 (= k0!854 (select (arr!23949 _keys!868) from!1053)))))

(assert (=> b!865988 (not (= (select (arr!23949 _keys!868) from!1053) k0!854))))

(declare-fun lt!392759 () Unit!29653)

(assert (=> b!865988 (= lt!392759 e!482425)))

(declare-fun c!92211 () Bool)

(assert (=> b!865988 (= c!92211 (= (select (arr!23949 _keys!868) from!1053) k0!854))))

(assert (=> b!865988 (= lt!392758 lt!392767)))

(assert (=> b!865988 (= lt!392767 (+!2321 lt!392765 lt!392756))))

(assert (=> b!865988 (= lt!392756 (tuple2!11237 (select (arr!23949 _keys!868) from!1053) lt!392764))))

(declare-fun get!12676 (ValueCell!7986 V!27515) V!27515)

(declare-fun dynLambda!1188 (Int (_ BitVec 64)) V!27515)

(assert (=> b!865988 (= lt!392764 (get!12676 (select (arr!23950 _values!688) from!1053) (dynLambda!1188 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865989 () Bool)

(assert (=> b!865989 (= e!482428 (and e!482432 mapRes!26876))))

(declare-fun condMapEmpty!26876 () Bool)

(declare-fun mapDefault!26876 () ValueCell!7986)

(assert (=> b!865989 (= condMapEmpty!26876 (= (arr!23950 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7986)) mapDefault!26876)))))

(declare-fun b!865990 () Bool)

(assert (=> b!865990 (= e!482427 tp_is_empty!16851)))

(assert (= (and start!73828 res!588511) b!865983))

(assert (= (and b!865983 res!588514) b!865987))

(assert (= (and b!865987 res!588510) b!865976))

(assert (= (and b!865976 res!588516) b!865977))

(assert (= (and b!865977 res!588513) b!865985))

(assert (= (and b!865985 res!588519) b!865978))

(assert (= (and b!865978 res!588517) b!865984))

(assert (= (and b!865984 res!588509) b!865980))

(assert (= (and b!865980 res!588515) b!865979))

(assert (= (and b!865979 (not res!588518)) b!865988))

(assert (= (and b!865988 c!92211) b!865986))

(assert (= (and b!865988 (not c!92211)) b!865975))

(assert (= (and b!865988 (not res!588512)) b!865982))

(assert (= (and b!865989 condMapEmpty!26876) mapIsEmpty!26876))

(assert (= (and b!865989 (not condMapEmpty!26876)) mapNonEmpty!26876))

(get-info :version)

(assert (= (and mapNonEmpty!26876 ((_ is ValueCellFull!7986) mapValue!26876)) b!865990))

(assert (= (and b!865989 ((_ is ValueCellFull!7986) mapDefault!26876)) b!865981))

(assert (= start!73828 b!865989))

(declare-fun b_lambda!12097 () Bool)

(assert (=> (not b_lambda!12097) (not b!865988)))

(declare-fun t!24088 () Bool)

(declare-fun tb!4845 () Bool)

(assert (=> (and start!73828 (= defaultEntry!696 defaultEntry!696) t!24088) tb!4845))

(declare-fun result!9293 () Bool)

(assert (=> tb!4845 (= result!9293 tp_is_empty!16851)))

(assert (=> b!865988 t!24088))

(declare-fun b_and!24429 () Bool)

(assert (= b_and!24427 (and (=> t!24088 result!9293) b_and!24429)))

(declare-fun m!807689 () Bool)

(assert (=> b!865979 m!807689))

(declare-fun m!807691 () Bool)

(assert (=> b!865979 m!807691))

(declare-fun m!807693 () Bool)

(assert (=> b!865979 m!807693))

(declare-fun m!807695 () Bool)

(assert (=> b!865979 m!807695))

(assert (=> b!865979 m!807693))

(declare-fun m!807697 () Bool)

(assert (=> b!865979 m!807697))

(declare-fun m!807699 () Bool)

(assert (=> b!865979 m!807699))

(declare-fun m!807701 () Bool)

(assert (=> b!865988 m!807701))

(declare-fun m!807703 () Bool)

(assert (=> b!865988 m!807703))

(declare-fun m!807705 () Bool)

(assert (=> b!865988 m!807705))

(declare-fun m!807707 () Bool)

(assert (=> b!865988 m!807707))

(assert (=> b!865988 m!807703))

(assert (=> b!865988 m!807693))

(assert (=> b!865988 m!807705))

(declare-fun m!807709 () Bool)

(assert (=> b!865978 m!807709))

(declare-fun m!807711 () Bool)

(assert (=> b!865983 m!807711))

(declare-fun m!807713 () Bool)

(assert (=> b!865976 m!807713))

(declare-fun m!807715 () Bool)

(assert (=> b!865980 m!807715))

(declare-fun m!807717 () Bool)

(assert (=> b!865980 m!807717))

(declare-fun m!807719 () Bool)

(assert (=> b!865980 m!807719))

(declare-fun m!807721 () Bool)

(assert (=> b!865982 m!807721))

(assert (=> b!865982 m!807721))

(declare-fun m!807723 () Bool)

(assert (=> b!865982 m!807723))

(assert (=> b!865982 m!807693))

(assert (=> b!865982 m!807693))

(declare-fun m!807725 () Bool)

(assert (=> b!865982 m!807725))

(declare-fun m!807727 () Bool)

(assert (=> b!865977 m!807727))

(declare-fun m!807729 () Bool)

(assert (=> b!865986 m!807729))

(declare-fun m!807731 () Bool)

(assert (=> b!865986 m!807731))

(declare-fun m!807733 () Bool)

(assert (=> b!865986 m!807733))

(declare-fun m!807735 () Bool)

(assert (=> b!865986 m!807735))

(declare-fun m!807737 () Bool)

(assert (=> b!865986 m!807737))

(declare-fun m!807739 () Bool)

(assert (=> start!73828 m!807739))

(declare-fun m!807741 () Bool)

(assert (=> start!73828 m!807741))

(declare-fun m!807743 () Bool)

(assert (=> mapNonEmpty!26876 m!807743))

(declare-fun m!807745 () Bool)

(assert (=> b!865984 m!807745))

(check-sat (not b!865982) (not b_lambda!12097) (not b!865986) (not start!73828) (not b!865988) (not b!865976) tp_is_empty!16851 (not mapNonEmpty!26876) (not b!865977) (not b!865980) (not b_next!14715) b_and!24429 (not b!865978) (not b!865983) (not b!865979))
(check-sat b_and!24429 (not b_next!14715))
