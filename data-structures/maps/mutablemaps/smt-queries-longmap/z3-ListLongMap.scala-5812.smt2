; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74974 () Bool)

(assert start!74974)

(declare-fun b_free!15465 () Bool)

(declare-fun b_next!15465 () Bool)

(assert (=> start!74974 (= b_free!15465 (not b_next!15465))))

(declare-fun tp!54098 () Bool)

(declare-fun b_and!25647 () Bool)

(assert (=> start!74974 (= tp!54098 b_and!25647)))

(declare-fun mapNonEmpty!28200 () Bool)

(declare-fun mapRes!28200 () Bool)

(declare-fun tp!54099 () Bool)

(declare-fun e!491976 () Bool)

(assert (=> mapNonEmpty!28200 (= mapRes!28200 (and tp!54099 e!491976))))

(declare-datatypes ((V!28659 0))(
  ( (V!28660 (val!8902 Int)) )
))
(declare-datatypes ((ValueCell!8415 0))(
  ( (ValueCellFull!8415 (v!11367 V!28659)) (EmptyCell!8415) )
))
(declare-fun mapRest!28200 () (Array (_ BitVec 32) ValueCell!8415))

(declare-fun mapKey!28200 () (_ BitVec 32))

(declare-datatypes ((array!51528 0))(
  ( (array!51529 (arr!24779 (Array (_ BitVec 32) ValueCell!8415)) (size!25220 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51528)

(declare-fun mapValue!28200 () ValueCell!8415)

(assert (=> mapNonEmpty!28200 (= (arr!24779 _values!688) (store mapRest!28200 mapKey!28200 mapValue!28200))))

(declare-fun b!883984 () Bool)

(declare-datatypes ((Unit!30157 0))(
  ( (Unit!30158) )
))
(declare-fun e!491977 () Unit!30157)

(declare-fun Unit!30159 () Unit!30157)

(assert (=> b!883984 (= e!491977 Unit!30159)))

(declare-fun lt!400345 () Unit!30157)

(declare-datatypes ((array!51530 0))(
  ( (array!51531 (arr!24780 (Array (_ BitVec 32) (_ BitVec 64))) (size!25221 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51530)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51530 (_ BitVec 32) (_ BitVec 32)) Unit!30157)

(assert (=> b!883984 (= lt!400345 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17696 0))(
  ( (Nil!17693) (Cons!17692 (h!18823 (_ BitVec 64)) (t!24971 List!17696)) )
))
(declare-fun arrayNoDuplicates!0 (array!51530 (_ BitVec 32) List!17696) Bool)

(assert (=> b!883984 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17693)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!400350 () Unit!30157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51530 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30157)

(assert (=> b!883984 (= lt!400350 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883984 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400339 () Unit!30157)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51530 (_ BitVec 64) (_ BitVec 32) List!17696) Unit!30157)

(assert (=> b!883984 (= lt!400339 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17693))))

(assert (=> b!883984 false))

(declare-fun b!883985 () Bool)

(declare-fun res!600660 () Bool)

(declare-fun e!491973 () Bool)

(assert (=> b!883985 (=> (not res!600660) (not e!491973))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!883985 (= res!600660 (and (= (size!25220 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25221 _keys!868) (size!25220 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28200 () Bool)

(assert (=> mapIsEmpty!28200 mapRes!28200))

(declare-fun b!883986 () Bool)

(declare-fun res!600658 () Bool)

(assert (=> b!883986 (=> (not res!600658) (not e!491973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883986 (= res!600658 (validMask!0 mask!1196))))

(declare-fun b!883987 () Bool)

(declare-fun e!491978 () Bool)

(assert (=> b!883987 (= e!491978 true)))

(declare-datatypes ((tuple2!11832 0))(
  ( (tuple2!11833 (_1!5926 (_ BitVec 64)) (_2!5926 V!28659)) )
))
(declare-datatypes ((List!17697 0))(
  ( (Nil!17694) (Cons!17693 (h!18824 tuple2!11832) (t!24972 List!17697)) )
))
(declare-datatypes ((ListLongMap!10615 0))(
  ( (ListLongMap!10616 (toList!5323 List!17697)) )
))
(declare-fun lt!400349 () ListLongMap!10615)

(declare-fun lt!400340 () tuple2!11832)

(declare-fun lt!400351 () tuple2!11832)

(declare-fun lt!400347 () ListLongMap!10615)

(declare-fun +!2526 (ListLongMap!10615 tuple2!11832) ListLongMap!10615)

(assert (=> b!883987 (= lt!400349 (+!2526 (+!2526 lt!400347 lt!400340) lt!400351))))

(declare-fun lt!400346 () V!28659)

(declare-fun lt!400344 () Unit!30157)

(declare-fun v!557 () V!28659)

(declare-fun addCommutativeForDiffKeys!548 (ListLongMap!10615 (_ BitVec 64) V!28659 (_ BitVec 64) V!28659) Unit!30157)

(assert (=> b!883987 (= lt!400344 (addCommutativeForDiffKeys!548 lt!400347 k0!854 v!557 (select (arr!24780 _keys!868) from!1053) lt!400346))))

(declare-fun b!883988 () Bool)

(declare-fun res!600651 () Bool)

(assert (=> b!883988 (=> (not res!600651) (not e!491973))))

(assert (=> b!883988 (= res!600651 (and (= (select (arr!24780 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!883989 () Bool)

(declare-fun Unit!30160 () Unit!30157)

(assert (=> b!883989 (= e!491977 Unit!30160)))

(declare-fun b!883990 () Bool)

(declare-fun res!600654 () Bool)

(assert (=> b!883990 (=> (not res!600654) (not e!491973))))

(assert (=> b!883990 (= res!600654 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25221 _keys!868))))))

(declare-fun b!883991 () Bool)

(declare-fun e!491980 () Bool)

(declare-fun e!491974 () Bool)

(assert (=> b!883991 (= e!491980 (and e!491974 mapRes!28200))))

(declare-fun condMapEmpty!28200 () Bool)

(declare-fun mapDefault!28200 () ValueCell!8415)

(assert (=> b!883991 (= condMapEmpty!28200 (= (arr!24779 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8415)) mapDefault!28200)))))

(declare-fun b!883992 () Bool)

(declare-fun e!491981 () Bool)

(assert (=> b!883992 (= e!491973 e!491981)))

(declare-fun res!600659 () Bool)

(assert (=> b!883992 (=> (not res!600659) (not e!491981))))

(assert (=> b!883992 (= res!600659 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400348 () ListLongMap!10615)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!400342 () array!51528)

(declare-fun minValue!654 () V!28659)

(declare-fun zeroValue!654 () V!28659)

(declare-fun getCurrentListMapNoExtraKeys!3277 (array!51530 array!51528 (_ BitVec 32) (_ BitVec 32) V!28659 V!28659 (_ BitVec 32) Int) ListLongMap!10615)

(assert (=> b!883992 (= lt!400348 (getCurrentListMapNoExtraKeys!3277 _keys!868 lt!400342 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883992 (= lt!400342 (array!51529 (store (arr!24779 _values!688) i!612 (ValueCellFull!8415 v!557)) (size!25220 _values!688)))))

(declare-fun lt!400338 () ListLongMap!10615)

(assert (=> b!883992 (= lt!400338 (getCurrentListMapNoExtraKeys!3277 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883993 () Bool)

(declare-fun res!600653 () Bool)

(assert (=> b!883993 (=> (not res!600653) (not e!491973))))

(assert (=> b!883993 (= res!600653 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17693))))

(declare-fun b!883994 () Bool)

(declare-fun res!600656 () Bool)

(assert (=> b!883994 (=> (not res!600656) (not e!491973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883994 (= res!600656 (validKeyInArray!0 k0!854))))

(declare-fun b!883995 () Bool)

(declare-fun tp_is_empty!17709 () Bool)

(assert (=> b!883995 (= e!491974 tp_is_empty!17709)))

(declare-fun b!883996 () Bool)

(declare-fun e!491979 () Bool)

(assert (=> b!883996 (= e!491979 e!491978)))

(declare-fun res!600655 () Bool)

(assert (=> b!883996 (=> res!600655 e!491978)))

(assert (=> b!883996 (= res!600655 (= k0!854 (select (arr!24780 _keys!868) from!1053)))))

(assert (=> b!883996 (not (= (select (arr!24780 _keys!868) from!1053) k0!854))))

(declare-fun lt!400343 () Unit!30157)

(assert (=> b!883996 (= lt!400343 e!491977)))

(declare-fun c!93021 () Bool)

(assert (=> b!883996 (= c!93021 (= (select (arr!24780 _keys!868) from!1053) k0!854))))

(assert (=> b!883996 (= lt!400348 lt!400349)))

(declare-fun lt!400337 () ListLongMap!10615)

(assert (=> b!883996 (= lt!400349 (+!2526 lt!400337 lt!400340))))

(assert (=> b!883996 (= lt!400340 (tuple2!11833 (select (arr!24780 _keys!868) from!1053) lt!400346))))

(declare-fun get!13072 (ValueCell!8415 V!28659) V!28659)

(declare-fun dynLambda!1279 (Int (_ BitVec 64)) V!28659)

(assert (=> b!883996 (= lt!400346 (get!13072 (select (arr!24779 _values!688) from!1053) (dynLambda!1279 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!883983 () Bool)

(declare-fun res!600661 () Bool)

(assert (=> b!883983 (=> (not res!600661) (not e!491973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51530 (_ BitVec 32)) Bool)

(assert (=> b!883983 (= res!600661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!600652 () Bool)

(assert (=> start!74974 (=> (not res!600652) (not e!491973))))

(assert (=> start!74974 (= res!600652 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25221 _keys!868))))))

(assert (=> start!74974 e!491973))

(assert (=> start!74974 tp_is_empty!17709))

(assert (=> start!74974 true))

(assert (=> start!74974 tp!54098))

(declare-fun array_inv!19486 (array!51530) Bool)

(assert (=> start!74974 (array_inv!19486 _keys!868)))

(declare-fun array_inv!19487 (array!51528) Bool)

(assert (=> start!74974 (and (array_inv!19487 _values!688) e!491980)))

(declare-fun b!883997 () Bool)

(assert (=> b!883997 (= e!491976 tp_is_empty!17709)))

(declare-fun b!883998 () Bool)

(assert (=> b!883998 (= e!491981 (not e!491979))))

(declare-fun res!600657 () Bool)

(assert (=> b!883998 (=> res!600657 e!491979)))

(assert (=> b!883998 (= res!600657 (not (validKeyInArray!0 (select (arr!24780 _keys!868) from!1053))))))

(declare-fun lt!400336 () ListLongMap!10615)

(assert (=> b!883998 (= lt!400336 lt!400337)))

(assert (=> b!883998 (= lt!400337 (+!2526 lt!400347 lt!400351))))

(assert (=> b!883998 (= lt!400336 (getCurrentListMapNoExtraKeys!3277 _keys!868 lt!400342 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883998 (= lt!400351 (tuple2!11833 k0!854 v!557))))

(assert (=> b!883998 (= lt!400347 (getCurrentListMapNoExtraKeys!3277 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!400341 () Unit!30157)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!747 (array!51530 array!51528 (_ BitVec 32) (_ BitVec 32) V!28659 V!28659 (_ BitVec 32) (_ BitVec 64) V!28659 (_ BitVec 32) Int) Unit!30157)

(assert (=> b!883998 (= lt!400341 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!747 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74974 res!600652) b!883986))

(assert (= (and b!883986 res!600658) b!883985))

(assert (= (and b!883985 res!600660) b!883983))

(assert (= (and b!883983 res!600661) b!883993))

(assert (= (and b!883993 res!600653) b!883990))

(assert (= (and b!883990 res!600654) b!883994))

(assert (= (and b!883994 res!600656) b!883988))

(assert (= (and b!883988 res!600651) b!883992))

(assert (= (and b!883992 res!600659) b!883998))

(assert (= (and b!883998 (not res!600657)) b!883996))

(assert (= (and b!883996 c!93021) b!883984))

(assert (= (and b!883996 (not c!93021)) b!883989))

(assert (= (and b!883996 (not res!600655)) b!883987))

(assert (= (and b!883991 condMapEmpty!28200) mapIsEmpty!28200))

(assert (= (and b!883991 (not condMapEmpty!28200)) mapNonEmpty!28200))

(get-info :version)

(assert (= (and mapNonEmpty!28200 ((_ is ValueCellFull!8415) mapValue!28200)) b!883997))

(assert (= (and b!883991 ((_ is ValueCellFull!8415) mapDefault!28200)) b!883995))

(assert (= start!74974 b!883991))

(declare-fun b_lambda!12773 () Bool)

(assert (=> (not b_lambda!12773) (not b!883996)))

(declare-fun t!24970 () Bool)

(declare-fun tb!5131 () Bool)

(assert (=> (and start!74974 (= defaultEntry!696 defaultEntry!696) t!24970) tb!5131))

(declare-fun result!9889 () Bool)

(assert (=> tb!5131 (= result!9889 tp_is_empty!17709)))

(assert (=> b!883996 t!24970))

(declare-fun b_and!25649 () Bool)

(assert (= b_and!25647 (and (=> t!24970 result!9889) b_and!25649)))

(declare-fun m!824233 () Bool)

(assert (=> b!883986 m!824233))

(declare-fun m!824235 () Bool)

(assert (=> b!883984 m!824235))

(declare-fun m!824237 () Bool)

(assert (=> b!883984 m!824237))

(declare-fun m!824239 () Bool)

(assert (=> b!883984 m!824239))

(declare-fun m!824241 () Bool)

(assert (=> b!883984 m!824241))

(declare-fun m!824243 () Bool)

(assert (=> b!883984 m!824243))

(declare-fun m!824245 () Bool)

(assert (=> b!883992 m!824245))

(declare-fun m!824247 () Bool)

(assert (=> b!883992 m!824247))

(declare-fun m!824249 () Bool)

(assert (=> b!883992 m!824249))

(declare-fun m!824251 () Bool)

(assert (=> b!883988 m!824251))

(declare-fun m!824253 () Bool)

(assert (=> b!883983 m!824253))

(declare-fun m!824255 () Bool)

(assert (=> start!74974 m!824255))

(declare-fun m!824257 () Bool)

(assert (=> start!74974 m!824257))

(declare-fun m!824259 () Bool)

(assert (=> b!883993 m!824259))

(declare-fun m!824261 () Bool)

(assert (=> b!883998 m!824261))

(declare-fun m!824263 () Bool)

(assert (=> b!883998 m!824263))

(declare-fun m!824265 () Bool)

(assert (=> b!883998 m!824265))

(assert (=> b!883998 m!824263))

(declare-fun m!824267 () Bool)

(assert (=> b!883998 m!824267))

(declare-fun m!824269 () Bool)

(assert (=> b!883998 m!824269))

(declare-fun m!824271 () Bool)

(assert (=> b!883998 m!824271))

(declare-fun m!824273 () Bool)

(assert (=> b!883987 m!824273))

(assert (=> b!883987 m!824273))

(declare-fun m!824275 () Bool)

(assert (=> b!883987 m!824275))

(assert (=> b!883987 m!824263))

(assert (=> b!883987 m!824263))

(declare-fun m!824277 () Bool)

(assert (=> b!883987 m!824277))

(declare-fun m!824279 () Bool)

(assert (=> mapNonEmpty!28200 m!824279))

(declare-fun m!824281 () Bool)

(assert (=> b!883996 m!824281))

(declare-fun m!824283 () Bool)

(assert (=> b!883996 m!824283))

(declare-fun m!824285 () Bool)

(assert (=> b!883996 m!824285))

(declare-fun m!824287 () Bool)

(assert (=> b!883996 m!824287))

(assert (=> b!883996 m!824283))

(assert (=> b!883996 m!824263))

(assert (=> b!883996 m!824285))

(declare-fun m!824289 () Bool)

(assert (=> b!883994 m!824289))

(check-sat (not start!74974) b_and!25649 (not b!883996) (not b!883987) (not mapNonEmpty!28200) (not b!883992) (not b!883994) (not b!883983) (not b_next!15465) tp_is_empty!17709 (not b!883986) (not b!883993) (not b!883998) (not b_lambda!12773) (not b!883984))
(check-sat b_and!25649 (not b_next!15465))
