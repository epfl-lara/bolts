; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73702 () Bool)

(assert start!73702)

(declare-fun b_free!14589 () Bool)

(declare-fun b_next!14589 () Bool)

(assert (=> start!73702 (= b_free!14589 (not b_next!14589))))

(declare-fun tp!51272 () Bool)

(declare-fun b_and!24175 () Bool)

(assert (=> start!73702 (= tp!51272 b_and!24175)))

(declare-fun mapNonEmpty!26687 () Bool)

(declare-fun mapRes!26687 () Bool)

(declare-fun tp!51271 () Bool)

(declare-fun e!480724 () Bool)

(assert (=> mapNonEmpty!26687 (= mapRes!26687 (and tp!51271 e!480724))))

(declare-datatypes ((V!27347 0))(
  ( (V!27348 (val!8410 Int)) )
))
(declare-datatypes ((ValueCell!7923 0))(
  ( (ValueCellFull!7923 (v!10831 V!27347)) (EmptyCell!7923) )
))
(declare-fun mapValue!26687 () ValueCell!7923)

(declare-fun mapRest!26687 () (Array (_ BitVec 32) ValueCell!7923))

(declare-fun mapKey!26687 () (_ BitVec 32))

(declare-datatypes ((array!49596 0))(
  ( (array!49597 (arr!23825 (Array (_ BitVec 32) ValueCell!7923)) (size!24266 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49596)

(assert (=> mapNonEmpty!26687 (= (arr!23825 _values!688) (store mapRest!26687 mapKey!26687 mapValue!26687))))

(declare-fun b!862825 () Bool)

(declare-fun res!586430 () Bool)

(declare-fun e!480728 () Bool)

(assert (=> b!862825 (=> (not res!586430) (not e!480728))))

(declare-datatypes ((array!49598 0))(
  ( (array!49599 (arr!23826 (Array (_ BitVec 32) (_ BitVec 64))) (size!24267 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49598)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49598 (_ BitVec 32)) Bool)

(assert (=> b!862825 (= res!586430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862826 () Bool)

(declare-datatypes ((Unit!29446 0))(
  ( (Unit!29447) )
))
(declare-fun e!480731 () Unit!29446)

(declare-fun Unit!29448 () Unit!29446)

(assert (=> b!862826 (= e!480731 Unit!29448)))

(declare-fun lt!389739 () Unit!29446)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49598 (_ BitVec 32) (_ BitVec 32)) Unit!29446)

(assert (=> b!862826 (= lt!389739 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16992 0))(
  ( (Nil!16989) (Cons!16988 (h!18119 (_ BitVec 64)) (t!23855 List!16992)) )
))
(declare-fun arrayNoDuplicates!0 (array!49598 (_ BitVec 32) List!16992) Bool)

(assert (=> b!862826 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16989)))

(declare-fun lt!389740 () Unit!29446)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49598 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29446)

(assert (=> b!862826 (= lt!389740 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862826 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389732 () Unit!29446)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49598 (_ BitVec 64) (_ BitVec 32) List!16992) Unit!29446)

(assert (=> b!862826 (= lt!389732 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16989))))

(assert (=> b!862826 false))

(declare-fun b!862827 () Bool)

(declare-fun e!480732 () Bool)

(assert (=> b!862827 (= e!480732 true)))

(declare-datatypes ((tuple2!11124 0))(
  ( (tuple2!11125 (_1!5572 (_ BitVec 64)) (_2!5572 V!27347)) )
))
(declare-datatypes ((List!16993 0))(
  ( (Nil!16990) (Cons!16989 (h!18120 tuple2!11124) (t!23856 List!16993)) )
))
(declare-datatypes ((ListLongMap!9907 0))(
  ( (ListLongMap!9908 (toList!4969 List!16993)) )
))
(declare-fun lt!389745 () ListLongMap!9907)

(declare-fun lt!389741 () ListLongMap!9907)

(declare-fun lt!389731 () tuple2!11124)

(declare-fun lt!389734 () tuple2!11124)

(declare-fun +!2266 (ListLongMap!9907 tuple2!11124) ListLongMap!9907)

(assert (=> b!862827 (= lt!389745 (+!2266 (+!2266 lt!389741 lt!389734) lt!389731))))

(declare-fun lt!389735 () Unit!29446)

(declare-fun v!557 () V!27347)

(declare-fun lt!389730 () V!27347)

(declare-fun addCommutativeForDiffKeys!481 (ListLongMap!9907 (_ BitVec 64) V!27347 (_ BitVec 64) V!27347) Unit!29446)

(assert (=> b!862827 (= lt!389735 (addCommutativeForDiffKeys!481 lt!389741 k0!854 v!557 (select (arr!23826 _keys!868) from!1053) lt!389730))))

(declare-fun b!862828 () Bool)

(declare-fun tp_is_empty!16725 () Bool)

(assert (=> b!862828 (= e!480724 tp_is_empty!16725)))

(declare-fun b!862829 () Bool)

(declare-fun res!586439 () Bool)

(assert (=> b!862829 (=> (not res!586439) (not e!480728))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!862829 (= res!586439 (and (= (size!24266 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24267 _keys!868) (size!24266 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862830 () Bool)

(declare-fun e!480725 () Bool)

(assert (=> b!862830 (= e!480725 tp_is_empty!16725)))

(declare-fun b!862831 () Bool)

(declare-fun Unit!29449 () Unit!29446)

(assert (=> b!862831 (= e!480731 Unit!29449)))

(declare-fun b!862832 () Bool)

(declare-fun res!586438 () Bool)

(assert (=> b!862832 (=> (not res!586438) (not e!480728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862832 (= res!586438 (validKeyInArray!0 k0!854))))

(declare-fun b!862833 () Bool)

(declare-fun res!586432 () Bool)

(assert (=> b!862833 (=> (not res!586432) (not e!480728))))

(assert (=> b!862833 (= res!586432 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24267 _keys!868))))))

(declare-fun b!862834 () Bool)

(declare-fun e!480729 () Bool)

(assert (=> b!862834 (= e!480729 e!480732)))

(declare-fun res!586434 () Bool)

(assert (=> b!862834 (=> res!586434 e!480732)))

(assert (=> b!862834 (= res!586434 (= k0!854 (select (arr!23826 _keys!868) from!1053)))))

(assert (=> b!862834 (not (= (select (arr!23826 _keys!868) from!1053) k0!854))))

(declare-fun lt!389742 () Unit!29446)

(assert (=> b!862834 (= lt!389742 e!480731)))

(declare-fun c!92022 () Bool)

(assert (=> b!862834 (= c!92022 (= (select (arr!23826 _keys!868) from!1053) k0!854))))

(declare-fun lt!389738 () ListLongMap!9907)

(assert (=> b!862834 (= lt!389738 lt!389745)))

(declare-fun lt!389744 () ListLongMap!9907)

(assert (=> b!862834 (= lt!389745 (+!2266 lt!389744 lt!389734))))

(assert (=> b!862834 (= lt!389734 (tuple2!11125 (select (arr!23826 _keys!868) from!1053) lt!389730))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12589 (ValueCell!7923 V!27347) V!27347)

(declare-fun dynLambda!1143 (Int (_ BitVec 64)) V!27347)

(assert (=> b!862834 (= lt!389730 (get!12589 (select (arr!23825 _values!688) from!1053) (dynLambda!1143 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862836 () Bool)

(declare-fun e!480730 () Bool)

(assert (=> b!862836 (= e!480730 (not e!480729))))

(declare-fun res!586433 () Bool)

(assert (=> b!862836 (=> res!586433 e!480729)))

(assert (=> b!862836 (= res!586433 (not (validKeyInArray!0 (select (arr!23826 _keys!868) from!1053))))))

(declare-fun lt!389743 () ListLongMap!9907)

(assert (=> b!862836 (= lt!389743 lt!389744)))

(assert (=> b!862836 (= lt!389744 (+!2266 lt!389741 lt!389731))))

(declare-fun lt!389736 () array!49596)

(declare-fun minValue!654 () V!27347)

(declare-fun zeroValue!654 () V!27347)

(declare-fun getCurrentListMapNoExtraKeys!2944 (array!49598 array!49596 (_ BitVec 32) (_ BitVec 32) V!27347 V!27347 (_ BitVec 32) Int) ListLongMap!9907)

(assert (=> b!862836 (= lt!389743 (getCurrentListMapNoExtraKeys!2944 _keys!868 lt!389736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862836 (= lt!389731 (tuple2!11125 k0!854 v!557))))

(assert (=> b!862836 (= lt!389741 (getCurrentListMapNoExtraKeys!2944 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389733 () Unit!29446)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!513 (array!49598 array!49596 (_ BitVec 32) (_ BitVec 32) V!27347 V!27347 (_ BitVec 32) (_ BitVec 64) V!27347 (_ BitVec 32) Int) Unit!29446)

(assert (=> b!862836 (= lt!389733 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!513 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862837 () Bool)

(declare-fun e!480726 () Bool)

(assert (=> b!862837 (= e!480726 (and e!480725 mapRes!26687))))

(declare-fun condMapEmpty!26687 () Bool)

(declare-fun mapDefault!26687 () ValueCell!7923)

(assert (=> b!862837 (= condMapEmpty!26687 (= (arr!23825 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7923)) mapDefault!26687)))))

(declare-fun mapIsEmpty!26687 () Bool)

(assert (=> mapIsEmpty!26687 mapRes!26687))

(declare-fun b!862838 () Bool)

(declare-fun res!586435 () Bool)

(assert (=> b!862838 (=> (not res!586435) (not e!480728))))

(assert (=> b!862838 (= res!586435 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16989))))

(declare-fun b!862839 () Bool)

(declare-fun res!586437 () Bool)

(assert (=> b!862839 (=> (not res!586437) (not e!480728))))

(assert (=> b!862839 (= res!586437 (and (= (select (arr!23826 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862840 () Bool)

(declare-fun res!586440 () Bool)

(assert (=> b!862840 (=> (not res!586440) (not e!480728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862840 (= res!586440 (validMask!0 mask!1196))))

(declare-fun b!862835 () Bool)

(assert (=> b!862835 (= e!480728 e!480730)))

(declare-fun res!586436 () Bool)

(assert (=> b!862835 (=> (not res!586436) (not e!480730))))

(assert (=> b!862835 (= res!586436 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!862835 (= lt!389738 (getCurrentListMapNoExtraKeys!2944 _keys!868 lt!389736 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862835 (= lt!389736 (array!49597 (store (arr!23825 _values!688) i!612 (ValueCellFull!7923 v!557)) (size!24266 _values!688)))))

(declare-fun lt!389737 () ListLongMap!9907)

(assert (=> b!862835 (= lt!389737 (getCurrentListMapNoExtraKeys!2944 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!586431 () Bool)

(assert (=> start!73702 (=> (not res!586431) (not e!480728))))

(assert (=> start!73702 (= res!586431 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24267 _keys!868))))))

(assert (=> start!73702 e!480728))

(assert (=> start!73702 tp_is_empty!16725))

(assert (=> start!73702 true))

(assert (=> start!73702 tp!51272))

(declare-fun array_inv!18826 (array!49598) Bool)

(assert (=> start!73702 (array_inv!18826 _keys!868)))

(declare-fun array_inv!18827 (array!49596) Bool)

(assert (=> start!73702 (and (array_inv!18827 _values!688) e!480726)))

(assert (= (and start!73702 res!586431) b!862840))

(assert (= (and b!862840 res!586440) b!862829))

(assert (= (and b!862829 res!586439) b!862825))

(assert (= (and b!862825 res!586430) b!862838))

(assert (= (and b!862838 res!586435) b!862833))

(assert (= (and b!862833 res!586432) b!862832))

(assert (= (and b!862832 res!586438) b!862839))

(assert (= (and b!862839 res!586437) b!862835))

(assert (= (and b!862835 res!586436) b!862836))

(assert (= (and b!862836 (not res!586433)) b!862834))

(assert (= (and b!862834 c!92022) b!862826))

(assert (= (and b!862834 (not c!92022)) b!862831))

(assert (= (and b!862834 (not res!586434)) b!862827))

(assert (= (and b!862837 condMapEmpty!26687) mapIsEmpty!26687))

(assert (= (and b!862837 (not condMapEmpty!26687)) mapNonEmpty!26687))

(get-info :version)

(assert (= (and mapNonEmpty!26687 ((_ is ValueCellFull!7923) mapValue!26687)) b!862828))

(assert (= (and b!862837 ((_ is ValueCellFull!7923) mapDefault!26687)) b!862830))

(assert (= start!73702 b!862837))

(declare-fun b_lambda!11971 () Bool)

(assert (=> (not b_lambda!11971) (not b!862834)))

(declare-fun t!23854 () Bool)

(declare-fun tb!4719 () Bool)

(assert (=> (and start!73702 (= defaultEntry!696 defaultEntry!696) t!23854) tb!4719))

(declare-fun result!9041 () Bool)

(assert (=> tb!4719 (= result!9041 tp_is_empty!16725)))

(assert (=> b!862834 t!23854))

(declare-fun b_and!24177 () Bool)

(assert (= b_and!24175 (and (=> t!23854 result!9041) b_and!24177)))

(declare-fun m!804035 () Bool)

(assert (=> b!862835 m!804035))

(declare-fun m!804037 () Bool)

(assert (=> b!862835 m!804037))

(declare-fun m!804039 () Bool)

(assert (=> b!862835 m!804039))

(declare-fun m!804041 () Bool)

(assert (=> b!862827 m!804041))

(assert (=> b!862827 m!804041))

(declare-fun m!804043 () Bool)

(assert (=> b!862827 m!804043))

(declare-fun m!804045 () Bool)

(assert (=> b!862827 m!804045))

(assert (=> b!862827 m!804045))

(declare-fun m!804047 () Bool)

(assert (=> b!862827 m!804047))

(declare-fun m!804049 () Bool)

(assert (=> b!862840 m!804049))

(declare-fun m!804051 () Bool)

(assert (=> b!862838 m!804051))

(declare-fun m!804053 () Bool)

(assert (=> b!862834 m!804053))

(declare-fun m!804055 () Bool)

(assert (=> b!862834 m!804055))

(declare-fun m!804057 () Bool)

(assert (=> b!862834 m!804057))

(declare-fun m!804059 () Bool)

(assert (=> b!862834 m!804059))

(assert (=> b!862834 m!804055))

(assert (=> b!862834 m!804045))

(assert (=> b!862834 m!804057))

(declare-fun m!804061 () Bool)

(assert (=> b!862836 m!804061))

(assert (=> b!862836 m!804045))

(declare-fun m!804063 () Bool)

(assert (=> b!862836 m!804063))

(assert (=> b!862836 m!804045))

(declare-fun m!804065 () Bool)

(assert (=> b!862836 m!804065))

(declare-fun m!804067 () Bool)

(assert (=> b!862836 m!804067))

(declare-fun m!804069 () Bool)

(assert (=> b!862836 m!804069))

(declare-fun m!804071 () Bool)

(assert (=> start!73702 m!804071))

(declare-fun m!804073 () Bool)

(assert (=> start!73702 m!804073))

(declare-fun m!804075 () Bool)

(assert (=> mapNonEmpty!26687 m!804075))

(declare-fun m!804077 () Bool)

(assert (=> b!862832 m!804077))

(declare-fun m!804079 () Bool)

(assert (=> b!862826 m!804079))

(declare-fun m!804081 () Bool)

(assert (=> b!862826 m!804081))

(declare-fun m!804083 () Bool)

(assert (=> b!862826 m!804083))

(declare-fun m!804085 () Bool)

(assert (=> b!862826 m!804085))

(declare-fun m!804087 () Bool)

(assert (=> b!862826 m!804087))

(declare-fun m!804089 () Bool)

(assert (=> b!862825 m!804089))

(declare-fun m!804091 () Bool)

(assert (=> b!862839 m!804091))

(check-sat (not b!862834) (not mapNonEmpty!26687) (not b!862836) (not b!862825) (not start!73702) (not b!862827) b_and!24177 tp_is_empty!16725 (not b!862838) (not b!862826) (not b!862835) (not b!862832) (not b!862840) (not b_next!14589) (not b_lambda!11971))
(check-sat b_and!24177 (not b_next!14589))
