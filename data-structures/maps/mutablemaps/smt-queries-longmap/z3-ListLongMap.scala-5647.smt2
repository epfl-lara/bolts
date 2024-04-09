; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73696 () Bool)

(assert start!73696)

(declare-fun b_free!14583 () Bool)

(declare-fun b_next!14583 () Bool)

(assert (=> start!73696 (= b_free!14583 (not b_next!14583))))

(declare-fun tp!51254 () Bool)

(declare-fun b_and!24163 () Bool)

(assert (=> start!73696 (= tp!51254 b_and!24163)))

(declare-fun mapNonEmpty!26678 () Bool)

(declare-fun mapRes!26678 () Bool)

(declare-fun tp!51253 () Bool)

(declare-fun e!480648 () Bool)

(assert (=> mapNonEmpty!26678 (= mapRes!26678 (and tp!51253 e!480648))))

(declare-datatypes ((V!27339 0))(
  ( (V!27340 (val!8407 Int)) )
))
(declare-datatypes ((ValueCell!7920 0))(
  ( (ValueCellFull!7920 (v!10828 V!27339)) (EmptyCell!7920) )
))
(declare-fun mapValue!26678 () ValueCell!7920)

(declare-fun mapRest!26678 () (Array (_ BitVec 32) ValueCell!7920))

(declare-datatypes ((array!49584 0))(
  ( (array!49585 (arr!23819 (Array (_ BitVec 32) ValueCell!7920)) (size!24260 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49584)

(declare-fun mapKey!26678 () (_ BitVec 32))

(assert (=> mapNonEmpty!26678 (= (arr!23819 _values!688) (store mapRest!26678 mapKey!26678 mapValue!26678))))

(declare-fun b!862675 () Bool)

(declare-fun e!480649 () Bool)

(declare-fun tp_is_empty!16719 () Bool)

(assert (=> b!862675 (= e!480649 tp_is_empty!16719)))

(declare-fun b!862676 () Bool)

(declare-fun res!586337 () Bool)

(declare-fun e!480647 () Bool)

(assert (=> b!862676 (=> (not res!586337) (not e!480647))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49586 0))(
  ( (array!49587 (arr!23820 (Array (_ BitVec 32) (_ BitVec 64))) (size!24261 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49586)

(assert (=> b!862676 (= res!586337 (and (= (size!24260 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24261 _keys!868) (size!24260 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!586339 () Bool)

(assert (=> start!73696 (=> (not res!586339) (not e!480647))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73696 (= res!586339 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24261 _keys!868))))))

(assert (=> start!73696 e!480647))

(assert (=> start!73696 tp_is_empty!16719))

(assert (=> start!73696 true))

(assert (=> start!73696 tp!51254))

(declare-fun array_inv!18822 (array!49586) Bool)

(assert (=> start!73696 (array_inv!18822 _keys!868)))

(declare-fun e!480644 () Bool)

(declare-fun array_inv!18823 (array!49584) Bool)

(assert (=> start!73696 (and (array_inv!18823 _values!688) e!480644)))

(declare-fun b!862677 () Bool)

(declare-fun e!480645 () Bool)

(declare-fun e!480651 () Bool)

(assert (=> b!862677 (= e!480645 (not e!480651))))

(declare-fun res!586338 () Bool)

(assert (=> b!862677 (=> res!586338 e!480651)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862677 (= res!586338 (not (validKeyInArray!0 (select (arr!23820 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11118 0))(
  ( (tuple2!11119 (_1!5569 (_ BitVec 64)) (_2!5569 V!27339)) )
))
(declare-datatypes ((List!16987 0))(
  ( (Nil!16984) (Cons!16983 (h!18114 tuple2!11118) (t!23844 List!16987)) )
))
(declare-datatypes ((ListLongMap!9901 0))(
  ( (ListLongMap!9902 (toList!4966 List!16987)) )
))
(declare-fun lt!389589 () ListLongMap!9901)

(declare-fun lt!389596 () ListLongMap!9901)

(assert (=> b!862677 (= lt!389589 lt!389596)))

(declare-fun lt!389595 () ListLongMap!9901)

(declare-fun lt!389594 () tuple2!11118)

(declare-fun +!2263 (ListLongMap!9901 tuple2!11118) ListLongMap!9901)

(assert (=> b!862677 (= lt!389596 (+!2263 lt!389595 lt!389594))))

(declare-fun lt!389588 () array!49584)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27339)

(declare-fun zeroValue!654 () V!27339)

(declare-fun getCurrentListMapNoExtraKeys!2942 (array!49586 array!49584 (_ BitVec 32) (_ BitVec 32) V!27339 V!27339 (_ BitVec 32) Int) ListLongMap!9901)

(assert (=> b!862677 (= lt!389589 (getCurrentListMapNoExtraKeys!2942 _keys!868 lt!389588 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun v!557 () V!27339)

(assert (=> b!862677 (= lt!389594 (tuple2!11119 k0!854 v!557))))

(assert (=> b!862677 (= lt!389595 (getCurrentListMapNoExtraKeys!2942 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29436 0))(
  ( (Unit!29437) )
))
(declare-fun lt!389601 () Unit!29436)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!511 (array!49586 array!49584 (_ BitVec 32) (_ BitVec 32) V!27339 V!27339 (_ BitVec 32) (_ BitVec 64) V!27339 (_ BitVec 32) Int) Unit!29436)

(assert (=> b!862677 (= lt!389601 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!511 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862678 () Bool)

(declare-fun e!480643 () Bool)

(assert (=> b!862678 (= e!480651 e!480643)))

(declare-fun res!586340 () Bool)

(assert (=> b!862678 (=> res!586340 e!480643)))

(assert (=> b!862678 (= res!586340 (= k0!854 (select (arr!23820 _keys!868) from!1053)))))

(assert (=> b!862678 (not (= (select (arr!23820 _keys!868) from!1053) k0!854))))

(declare-fun lt!389597 () Unit!29436)

(declare-fun e!480646 () Unit!29436)

(assert (=> b!862678 (= lt!389597 e!480646)))

(declare-fun c!92013 () Bool)

(assert (=> b!862678 (= c!92013 (= (select (arr!23820 _keys!868) from!1053) k0!854))))

(declare-fun lt!389600 () ListLongMap!9901)

(declare-fun lt!389593 () ListLongMap!9901)

(assert (=> b!862678 (= lt!389600 lt!389593)))

(declare-fun lt!389590 () tuple2!11118)

(assert (=> b!862678 (= lt!389593 (+!2263 lt!389596 lt!389590))))

(declare-fun lt!389591 () V!27339)

(assert (=> b!862678 (= lt!389590 (tuple2!11119 (select (arr!23820 _keys!868) from!1053) lt!389591))))

(declare-fun get!12584 (ValueCell!7920 V!27339) V!27339)

(declare-fun dynLambda!1140 (Int (_ BitVec 64)) V!27339)

(assert (=> b!862678 (= lt!389591 (get!12584 (select (arr!23819 _values!688) from!1053) (dynLambda!1140 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862679 () Bool)

(declare-fun res!586331 () Bool)

(assert (=> b!862679 (=> (not res!586331) (not e!480647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49586 (_ BitVec 32)) Bool)

(assert (=> b!862679 (= res!586331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862680 () Bool)

(assert (=> b!862680 (= e!480648 tp_is_empty!16719)))

(declare-fun b!862681 () Bool)

(declare-fun Unit!29438 () Unit!29436)

(assert (=> b!862681 (= e!480646 Unit!29438)))

(declare-fun b!862682 () Bool)

(assert (=> b!862682 (= e!480644 (and e!480649 mapRes!26678))))

(declare-fun condMapEmpty!26678 () Bool)

(declare-fun mapDefault!26678 () ValueCell!7920)

(assert (=> b!862682 (= condMapEmpty!26678 (= (arr!23819 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7920)) mapDefault!26678)))))

(declare-fun b!862683 () Bool)

(assert (=> b!862683 (= e!480647 e!480645)))

(declare-fun res!586332 () Bool)

(assert (=> b!862683 (=> (not res!586332) (not e!480645))))

(assert (=> b!862683 (= res!586332 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!862683 (= lt!389600 (getCurrentListMapNoExtraKeys!2942 _keys!868 lt!389588 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862683 (= lt!389588 (array!49585 (store (arr!23819 _values!688) i!612 (ValueCellFull!7920 v!557)) (size!24260 _values!688)))))

(declare-fun lt!389599 () ListLongMap!9901)

(assert (=> b!862683 (= lt!389599 (getCurrentListMapNoExtraKeys!2942 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862684 () Bool)

(declare-fun res!586334 () Bool)

(assert (=> b!862684 (=> (not res!586334) (not e!480647))))

(assert (=> b!862684 (= res!586334 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24261 _keys!868))))))

(declare-fun b!862685 () Bool)

(declare-fun Unit!29439 () Unit!29436)

(assert (=> b!862685 (= e!480646 Unit!29439)))

(declare-fun lt!389592 () Unit!29436)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49586 (_ BitVec 32) (_ BitVec 32)) Unit!29436)

(assert (=> b!862685 (= lt!389592 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16988 0))(
  ( (Nil!16985) (Cons!16984 (h!18115 (_ BitVec 64)) (t!23845 List!16988)) )
))
(declare-fun arrayNoDuplicates!0 (array!49586 (_ BitVec 32) List!16988) Bool)

(assert (=> b!862685 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16985)))

(declare-fun lt!389587 () Unit!29436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49586 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29436)

(assert (=> b!862685 (= lt!389587 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862685 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389598 () Unit!29436)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49586 (_ BitVec 64) (_ BitVec 32) List!16988) Unit!29436)

(assert (=> b!862685 (= lt!389598 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16985))))

(assert (=> b!862685 false))

(declare-fun mapIsEmpty!26678 () Bool)

(assert (=> mapIsEmpty!26678 mapRes!26678))

(declare-fun b!862686 () Bool)

(declare-fun res!586333 () Bool)

(assert (=> b!862686 (=> (not res!586333) (not e!480647))))

(assert (=> b!862686 (= res!586333 (validKeyInArray!0 k0!854))))

(declare-fun b!862687 () Bool)

(declare-fun res!586341 () Bool)

(assert (=> b!862687 (=> (not res!586341) (not e!480647))))

(assert (=> b!862687 (= res!586341 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16985))))

(declare-fun b!862688 () Bool)

(declare-fun res!586336 () Bool)

(assert (=> b!862688 (=> (not res!586336) (not e!480647))))

(assert (=> b!862688 (= res!586336 (and (= (select (arr!23820 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862689 () Bool)

(assert (=> b!862689 (= e!480643 true)))

(assert (=> b!862689 (= lt!389593 (+!2263 (+!2263 lt!389595 lt!389590) lt!389594))))

(declare-fun lt!389586 () Unit!29436)

(declare-fun addCommutativeForDiffKeys!479 (ListLongMap!9901 (_ BitVec 64) V!27339 (_ BitVec 64) V!27339) Unit!29436)

(assert (=> b!862689 (= lt!389586 (addCommutativeForDiffKeys!479 lt!389595 k0!854 v!557 (select (arr!23820 _keys!868) from!1053) lt!389591))))

(declare-fun b!862690 () Bool)

(declare-fun res!586335 () Bool)

(assert (=> b!862690 (=> (not res!586335) (not e!480647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862690 (= res!586335 (validMask!0 mask!1196))))

(assert (= (and start!73696 res!586339) b!862690))

(assert (= (and b!862690 res!586335) b!862676))

(assert (= (and b!862676 res!586337) b!862679))

(assert (= (and b!862679 res!586331) b!862687))

(assert (= (and b!862687 res!586341) b!862684))

(assert (= (and b!862684 res!586334) b!862686))

(assert (= (and b!862686 res!586333) b!862688))

(assert (= (and b!862688 res!586336) b!862683))

(assert (= (and b!862683 res!586332) b!862677))

(assert (= (and b!862677 (not res!586338)) b!862678))

(assert (= (and b!862678 c!92013) b!862685))

(assert (= (and b!862678 (not c!92013)) b!862681))

(assert (= (and b!862678 (not res!586340)) b!862689))

(assert (= (and b!862682 condMapEmpty!26678) mapIsEmpty!26678))

(assert (= (and b!862682 (not condMapEmpty!26678)) mapNonEmpty!26678))

(get-info :version)

(assert (= (and mapNonEmpty!26678 ((_ is ValueCellFull!7920) mapValue!26678)) b!862680))

(assert (= (and b!862682 ((_ is ValueCellFull!7920) mapDefault!26678)) b!862675))

(assert (= start!73696 b!862682))

(declare-fun b_lambda!11965 () Bool)

(assert (=> (not b_lambda!11965) (not b!862678)))

(declare-fun t!23843 () Bool)

(declare-fun tb!4713 () Bool)

(assert (=> (and start!73696 (= defaultEntry!696 defaultEntry!696) t!23843) tb!4713))

(declare-fun result!9029 () Bool)

(assert (=> tb!4713 (= result!9029 tp_is_empty!16719)))

(assert (=> b!862678 t!23843))

(declare-fun b_and!24165 () Bool)

(assert (= b_and!24163 (and (=> t!23843 result!9029) b_and!24165)))

(declare-fun m!803861 () Bool)

(assert (=> b!862683 m!803861))

(declare-fun m!803863 () Bool)

(assert (=> b!862683 m!803863))

(declare-fun m!803865 () Bool)

(assert (=> b!862683 m!803865))

(declare-fun m!803867 () Bool)

(assert (=> b!862678 m!803867))

(declare-fun m!803869 () Bool)

(assert (=> b!862678 m!803869))

(declare-fun m!803871 () Bool)

(assert (=> b!862678 m!803871))

(declare-fun m!803873 () Bool)

(assert (=> b!862678 m!803873))

(assert (=> b!862678 m!803869))

(declare-fun m!803875 () Bool)

(assert (=> b!862678 m!803875))

(assert (=> b!862678 m!803871))

(declare-fun m!803877 () Bool)

(assert (=> start!73696 m!803877))

(declare-fun m!803879 () Bool)

(assert (=> start!73696 m!803879))

(declare-fun m!803881 () Bool)

(assert (=> b!862687 m!803881))

(declare-fun m!803883 () Bool)

(assert (=> b!862685 m!803883))

(declare-fun m!803885 () Bool)

(assert (=> b!862685 m!803885))

(declare-fun m!803887 () Bool)

(assert (=> b!862685 m!803887))

(declare-fun m!803889 () Bool)

(assert (=> b!862685 m!803889))

(declare-fun m!803891 () Bool)

(assert (=> b!862685 m!803891))

(declare-fun m!803893 () Bool)

(assert (=> b!862686 m!803893))

(declare-fun m!803895 () Bool)

(assert (=> b!862688 m!803895))

(declare-fun m!803897 () Bool)

(assert (=> b!862689 m!803897))

(assert (=> b!862689 m!803897))

(declare-fun m!803899 () Bool)

(assert (=> b!862689 m!803899))

(assert (=> b!862689 m!803875))

(assert (=> b!862689 m!803875))

(declare-fun m!803901 () Bool)

(assert (=> b!862689 m!803901))

(declare-fun m!803903 () Bool)

(assert (=> b!862690 m!803903))

(declare-fun m!803905 () Bool)

(assert (=> b!862679 m!803905))

(declare-fun m!803907 () Bool)

(assert (=> mapNonEmpty!26678 m!803907))

(assert (=> b!862677 m!803875))

(declare-fun m!803909 () Bool)

(assert (=> b!862677 m!803909))

(assert (=> b!862677 m!803875))

(declare-fun m!803911 () Bool)

(assert (=> b!862677 m!803911))

(declare-fun m!803913 () Bool)

(assert (=> b!862677 m!803913))

(declare-fun m!803915 () Bool)

(assert (=> b!862677 m!803915))

(declare-fun m!803917 () Bool)

(assert (=> b!862677 m!803917))

(check-sat (not b!862683) (not b_lambda!11965) (not mapNonEmpty!26678) (not b!862690) (not b!862679) (not b!862689) (not b!862685) (not start!73696) b_and!24165 tp_is_empty!16719 (not b!862686) (not b!862678) (not b_next!14583) (not b!862687) (not b!862677))
(check-sat b_and!24165 (not b_next!14583))
