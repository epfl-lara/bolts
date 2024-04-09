; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72526 () Bool)

(assert start!72526)

(declare-fun b_free!13683 () Bool)

(declare-fun b_next!13683 () Bool)

(assert (=> start!72526 (= b_free!13683 (not b_next!13683))))

(declare-fun tp!48149 () Bool)

(declare-fun b_and!22787 () Bool)

(assert (=> start!72526 (= tp!48149 b_and!22787)))

(declare-datatypes ((V!25779 0))(
  ( (V!25780 (val!7822 Int)) )
))
(declare-fun v!557 () V!25779)

(declare-datatypes ((tuple2!10394 0))(
  ( (tuple2!10395 (_1!5207 (_ BitVec 64)) (_2!5207 V!25779)) )
))
(declare-datatypes ((List!16218 0))(
  ( (Nil!16215) (Cons!16214 (h!17345 tuple2!10394) (t!22597 List!16218)) )
))
(declare-datatypes ((ListLongMap!9177 0))(
  ( (ListLongMap!9178 (toList!4604 List!16218)) )
))
(declare-fun call!37283 () ListLongMap!9177)

(declare-fun e!469207 () Bool)

(declare-fun b!840980 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!37282 () ListLongMap!9177)

(declare-fun +!2010 (ListLongMap!9177 tuple2!10394) ListLongMap!9177)

(assert (=> b!840980 (= e!469207 (= call!37283 (+!2010 call!37282 (tuple2!10395 k0!854 v!557))))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47344 0))(
  ( (array!47345 (arr!22699 (Array (_ BitVec 32) (_ BitVec 64))) (size!23140 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47344)

(declare-fun bm!37279 () Bool)

(declare-datatypes ((ValueCell!7335 0))(
  ( (ValueCellFull!7335 (v!10243 V!25779)) (EmptyCell!7335) )
))
(declare-datatypes ((array!47346 0))(
  ( (array!47347 (arr!22700 (Array (_ BitVec 32) ValueCell!7335)) (size!23141 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47346)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25779)

(declare-fun zeroValue!654 () V!25779)

(declare-fun getCurrentListMapNoExtraKeys!2595 (array!47344 array!47346 (_ BitVec 32) (_ BitVec 32) V!25779 V!25779 (_ BitVec 32) Int) ListLongMap!9177)

(assert (=> bm!37279 (= call!37283 (getCurrentListMapNoExtraKeys!2595 _keys!868 (array!47347 (store (arr!22700 _values!688) i!612 (ValueCellFull!7335 v!557)) (size!23141 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840981 () Bool)

(declare-fun res!571806 () Bool)

(declare-fun e!469211 () Bool)

(assert (=> b!840981 (=> (not res!571806) (not e!469211))))

(assert (=> b!840981 (= res!571806 (and (= (size!23141 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23140 _keys!868) (size!23141 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840982 () Bool)

(declare-fun res!571802 () Bool)

(assert (=> b!840982 (=> (not res!571802) (not e!469211))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840982 (= res!571802 (validMask!0 mask!1196))))

(declare-fun b!840983 () Bool)

(assert (=> b!840983 (= e!469207 (= call!37283 call!37282))))

(declare-fun mapIsEmpty!24923 () Bool)

(declare-fun mapRes!24923 () Bool)

(assert (=> mapIsEmpty!24923 mapRes!24923))

(declare-fun b!840984 () Bool)

(declare-fun e!469210 () Bool)

(declare-fun tp_is_empty!15549 () Bool)

(assert (=> b!840984 (= e!469210 tp_is_empty!15549)))

(declare-fun b!840985 () Bool)

(declare-fun res!571803 () Bool)

(assert (=> b!840985 (=> (not res!571803) (not e!469211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840985 (= res!571803 (validKeyInArray!0 k0!854))))

(declare-fun bm!37280 () Bool)

(assert (=> bm!37280 (= call!37282 (getCurrentListMapNoExtraKeys!2595 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!571804 () Bool)

(assert (=> start!72526 (=> (not res!571804) (not e!469211))))

(assert (=> start!72526 (= res!571804 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23140 _keys!868))))))

(assert (=> start!72526 e!469211))

(assert (=> start!72526 tp_is_empty!15549))

(assert (=> start!72526 true))

(assert (=> start!72526 tp!48149))

(declare-fun array_inv!18046 (array!47344) Bool)

(assert (=> start!72526 (array_inv!18046 _keys!868)))

(declare-fun e!469212 () Bool)

(declare-fun array_inv!18047 (array!47346) Bool)

(assert (=> start!72526 (and (array_inv!18047 _values!688) e!469212)))

(declare-fun b!840986 () Bool)

(declare-fun res!571800 () Bool)

(assert (=> b!840986 (=> (not res!571800) (not e!469211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47344 (_ BitVec 32)) Bool)

(assert (=> b!840986 (= res!571800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840987 () Bool)

(assert (=> b!840987 (= e!469211 (not true))))

(assert (=> b!840987 e!469207))

(declare-fun c!91302 () Bool)

(assert (=> b!840987 (= c!91302 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28884 0))(
  ( (Unit!28885) )
))
(declare-fun lt!380835 () Unit!28884)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!291 (array!47344 array!47346 (_ BitVec 32) (_ BitVec 32) V!25779 V!25779 (_ BitVec 32) (_ BitVec 64) V!25779 (_ BitVec 32) Int) Unit!28884)

(assert (=> b!840987 (= lt!380835 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!291 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840988 () Bool)

(declare-fun res!571799 () Bool)

(assert (=> b!840988 (=> (not res!571799) (not e!469211))))

(assert (=> b!840988 (= res!571799 (and (= (select (arr!22699 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23140 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!840989 () Bool)

(declare-fun res!571801 () Bool)

(assert (=> b!840989 (=> (not res!571801) (not e!469211))))

(declare-datatypes ((List!16219 0))(
  ( (Nil!16216) (Cons!16215 (h!17346 (_ BitVec 64)) (t!22598 List!16219)) )
))
(declare-fun arrayNoDuplicates!0 (array!47344 (_ BitVec 32) List!16219) Bool)

(assert (=> b!840989 (= res!571801 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16216))))

(declare-fun b!840990 () Bool)

(declare-fun e!469208 () Bool)

(assert (=> b!840990 (= e!469208 tp_is_empty!15549)))

(declare-fun mapNonEmpty!24923 () Bool)

(declare-fun tp!48148 () Bool)

(assert (=> mapNonEmpty!24923 (= mapRes!24923 (and tp!48148 e!469210))))

(declare-fun mapValue!24923 () ValueCell!7335)

(declare-fun mapKey!24923 () (_ BitVec 32))

(declare-fun mapRest!24923 () (Array (_ BitVec 32) ValueCell!7335))

(assert (=> mapNonEmpty!24923 (= (arr!22700 _values!688) (store mapRest!24923 mapKey!24923 mapValue!24923))))

(declare-fun b!840991 () Bool)

(assert (=> b!840991 (= e!469212 (and e!469208 mapRes!24923))))

(declare-fun condMapEmpty!24923 () Bool)

(declare-fun mapDefault!24923 () ValueCell!7335)

(assert (=> b!840991 (= condMapEmpty!24923 (= (arr!22700 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7335)) mapDefault!24923)))))

(declare-fun b!840992 () Bool)

(declare-fun res!571805 () Bool)

(assert (=> b!840992 (=> (not res!571805) (not e!469211))))

(assert (=> b!840992 (= res!571805 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23140 _keys!868))))))

(assert (= (and start!72526 res!571804) b!840982))

(assert (= (and b!840982 res!571802) b!840981))

(assert (= (and b!840981 res!571806) b!840986))

(assert (= (and b!840986 res!571800) b!840989))

(assert (= (and b!840989 res!571801) b!840992))

(assert (= (and b!840992 res!571805) b!840985))

(assert (= (and b!840985 res!571803) b!840988))

(assert (= (and b!840988 res!571799) b!840987))

(assert (= (and b!840987 c!91302) b!840980))

(assert (= (and b!840987 (not c!91302)) b!840983))

(assert (= (or b!840980 b!840983) bm!37279))

(assert (= (or b!840980 b!840983) bm!37280))

(assert (= (and b!840991 condMapEmpty!24923) mapIsEmpty!24923))

(assert (= (and b!840991 (not condMapEmpty!24923)) mapNonEmpty!24923))

(get-info :version)

(assert (= (and mapNonEmpty!24923 ((_ is ValueCellFull!7335) mapValue!24923)) b!840984))

(assert (= (and b!840991 ((_ is ValueCellFull!7335) mapDefault!24923)) b!840990))

(assert (= start!72526 b!840991))

(declare-fun m!784633 () Bool)

(assert (=> bm!37279 m!784633))

(declare-fun m!784635 () Bool)

(assert (=> bm!37279 m!784635))

(declare-fun m!784637 () Bool)

(assert (=> b!840985 m!784637))

(declare-fun m!784639 () Bool)

(assert (=> b!840986 m!784639))

(declare-fun m!784641 () Bool)

(assert (=> b!840989 m!784641))

(declare-fun m!784643 () Bool)

(assert (=> bm!37280 m!784643))

(declare-fun m!784645 () Bool)

(assert (=> b!840982 m!784645))

(declare-fun m!784647 () Bool)

(assert (=> b!840988 m!784647))

(declare-fun m!784649 () Bool)

(assert (=> start!72526 m!784649))

(declare-fun m!784651 () Bool)

(assert (=> start!72526 m!784651))

(declare-fun m!784653 () Bool)

(assert (=> b!840980 m!784653))

(declare-fun m!784655 () Bool)

(assert (=> b!840987 m!784655))

(declare-fun m!784657 () Bool)

(assert (=> mapNonEmpty!24923 m!784657))

(check-sat b_and!22787 (not b!840985) (not b_next!13683) (not b!840982) (not bm!37279) (not b!840989) (not start!72526) (not b!840987) (not b!840986) (not bm!37280) (not b!840980) (not mapNonEmpty!24923) tp_is_empty!15549)
(check-sat b_and!22787 (not b_next!13683))
