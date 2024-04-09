; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72484 () Bool)

(assert start!72484)

(declare-fun b_free!13641 () Bool)

(declare-fun b_next!13641 () Bool)

(assert (=> start!72484 (= b_free!13641 (not b_next!13641))))

(declare-fun tp!48023 () Bool)

(declare-fun b_and!22745 () Bool)

(assert (=> start!72484 (= tp!48023 b_and!22745)))

(declare-fun b!840161 () Bool)

(declare-fun e!468832 () Bool)

(declare-datatypes ((V!25723 0))(
  ( (V!25724 (val!7801 Int)) )
))
(declare-datatypes ((tuple2!10354 0))(
  ( (tuple2!10355 (_1!5187 (_ BitVec 64)) (_2!5187 V!25723)) )
))
(declare-datatypes ((List!16183 0))(
  ( (Nil!16180) (Cons!16179 (h!17310 tuple2!10354) (t!22562 List!16183)) )
))
(declare-datatypes ((ListLongMap!9137 0))(
  ( (ListLongMap!9138 (toList!4584 List!16183)) )
))
(declare-fun call!37157 () ListLongMap!9137)

(declare-fun call!37156 () ListLongMap!9137)

(assert (=> b!840161 (= e!468832 (= call!37157 call!37156))))

(declare-fun b!840162 () Bool)

(declare-fun res!571297 () Bool)

(declare-fun e!468831 () Bool)

(assert (=> b!840162 (=> (not res!571297) (not e!468831))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!840162 (= res!571297 (validKeyInArray!0 k0!854))))

(declare-fun b!840163 () Bool)

(declare-fun v!557 () V!25723)

(declare-fun +!1997 (ListLongMap!9137 tuple2!10354) ListLongMap!9137)

(assert (=> b!840163 (= e!468832 (= call!37157 (+!1997 call!37156 (tuple2!10355 k0!854 v!557))))))

(declare-fun res!571299 () Bool)

(assert (=> start!72484 (=> (not res!571299) (not e!468831))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47262 0))(
  ( (array!47263 (arr!22658 (Array (_ BitVec 32) (_ BitVec 64))) (size!23099 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47262)

(assert (=> start!72484 (= res!571299 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23099 _keys!868))))))

(assert (=> start!72484 e!468831))

(declare-fun tp_is_empty!15507 () Bool)

(assert (=> start!72484 tp_is_empty!15507))

(assert (=> start!72484 true))

(assert (=> start!72484 tp!48023))

(declare-fun array_inv!18012 (array!47262) Bool)

(assert (=> start!72484 (array_inv!18012 _keys!868)))

(declare-datatypes ((ValueCell!7314 0))(
  ( (ValueCellFull!7314 (v!10222 V!25723)) (EmptyCell!7314) )
))
(declare-datatypes ((array!47264 0))(
  ( (array!47265 (arr!22659 (Array (_ BitVec 32) ValueCell!7314)) (size!23100 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47264)

(declare-fun e!468833 () Bool)

(declare-fun array_inv!18013 (array!47264) Bool)

(assert (=> start!72484 (and (array_inv!18013 _values!688) e!468833)))

(declare-fun b!840164 () Bool)

(declare-fun res!571302 () Bool)

(assert (=> b!840164 (=> (not res!571302) (not e!468831))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!840164 (= res!571302 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23099 _keys!868))))))

(declare-fun b!840165 () Bool)

(declare-fun e!468834 () Bool)

(declare-fun mapRes!24860 () Bool)

(assert (=> b!840165 (= e!468833 (and e!468834 mapRes!24860))))

(declare-fun condMapEmpty!24860 () Bool)

(declare-fun mapDefault!24860 () ValueCell!7314)

(assert (=> b!840165 (= condMapEmpty!24860 (= (arr!22659 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7314)) mapDefault!24860)))))

(declare-fun mapIsEmpty!24860 () Bool)

(assert (=> mapIsEmpty!24860 mapRes!24860))

(declare-fun b!840166 () Bool)

(declare-fun e!468830 () Bool)

(assert (=> b!840166 (= e!468830 tp_is_empty!15507)))

(declare-fun mapNonEmpty!24860 () Bool)

(declare-fun tp!48022 () Bool)

(assert (=> mapNonEmpty!24860 (= mapRes!24860 (and tp!48022 e!468830))))

(declare-fun mapKey!24860 () (_ BitVec 32))

(declare-fun mapValue!24860 () ValueCell!7314)

(declare-fun mapRest!24860 () (Array (_ BitVec 32) ValueCell!7314))

(assert (=> mapNonEmpty!24860 (= (arr!22659 _values!688) (store mapRest!24860 mapKey!24860 mapValue!24860))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37153 () Bool)

(declare-fun minValue!654 () V!25723)

(declare-fun zeroValue!654 () V!25723)

(declare-fun getCurrentListMapNoExtraKeys!2576 (array!47262 array!47264 (_ BitVec 32) (_ BitVec 32) V!25723 V!25723 (_ BitVec 32) Int) ListLongMap!9137)

(assert (=> bm!37153 (= call!37157 (getCurrentListMapNoExtraKeys!2576 _keys!868 (array!47265 (store (arr!22659 _values!688) i!612 (ValueCellFull!7314 v!557)) (size!23100 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37154 () Bool)

(assert (=> bm!37154 (= call!37156 (getCurrentListMapNoExtraKeys!2576 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840167 () Bool)

(assert (=> b!840167 (= e!468834 tp_is_empty!15507)))

(declare-fun b!840168 () Bool)

(declare-fun res!571298 () Bool)

(assert (=> b!840168 (=> (not res!571298) (not e!468831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!840168 (= res!571298 (validMask!0 mask!1196))))

(declare-fun b!840169 () Bool)

(declare-fun res!571301 () Bool)

(assert (=> b!840169 (=> (not res!571301) (not e!468831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47262 (_ BitVec 32)) Bool)

(assert (=> b!840169 (= res!571301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!840170 () Bool)

(declare-fun res!571296 () Bool)

(assert (=> b!840170 (=> (not res!571296) (not e!468831))))

(assert (=> b!840170 (= res!571296 (and (= (size!23100 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23099 _keys!868) (size!23100 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!840171 () Bool)

(declare-fun res!571300 () Bool)

(assert (=> b!840171 (=> (not res!571300) (not e!468831))))

(declare-datatypes ((List!16184 0))(
  ( (Nil!16181) (Cons!16180 (h!17311 (_ BitVec 64)) (t!22563 List!16184)) )
))
(declare-fun arrayNoDuplicates!0 (array!47262 (_ BitVec 32) List!16184) Bool)

(assert (=> b!840171 (= res!571300 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16181))))

(declare-fun b!840172 () Bool)

(assert (=> b!840172 (= e!468831 (not true))))

(assert (=> b!840172 e!468832))

(declare-fun c!91239 () Bool)

(assert (=> b!840172 (= c!91239 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28852 0))(
  ( (Unit!28853) )
))
(declare-fun lt!380772 () Unit!28852)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!275 (array!47262 array!47264 (_ BitVec 32) (_ BitVec 32) V!25723 V!25723 (_ BitVec 32) (_ BitVec 64) V!25723 (_ BitVec 32) Int) Unit!28852)

(assert (=> b!840172 (= lt!380772 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!275 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!840173 () Bool)

(declare-fun res!571295 () Bool)

(assert (=> b!840173 (=> (not res!571295) (not e!468831))))

(assert (=> b!840173 (= res!571295 (and (= (select (arr!22658 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23099 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(assert (= (and start!72484 res!571299) b!840168))

(assert (= (and b!840168 res!571298) b!840170))

(assert (= (and b!840170 res!571296) b!840169))

(assert (= (and b!840169 res!571301) b!840171))

(assert (= (and b!840171 res!571300) b!840164))

(assert (= (and b!840164 res!571302) b!840162))

(assert (= (and b!840162 res!571297) b!840173))

(assert (= (and b!840173 res!571295) b!840172))

(assert (= (and b!840172 c!91239) b!840163))

(assert (= (and b!840172 (not c!91239)) b!840161))

(assert (= (or b!840163 b!840161) bm!37153))

(assert (= (or b!840163 b!840161) bm!37154))

(assert (= (and b!840165 condMapEmpty!24860) mapIsEmpty!24860))

(assert (= (and b!840165 (not condMapEmpty!24860)) mapNonEmpty!24860))

(get-info :version)

(assert (= (and mapNonEmpty!24860 ((_ is ValueCellFull!7314) mapValue!24860)) b!840166))

(assert (= (and b!840165 ((_ is ValueCellFull!7314) mapDefault!24860)) b!840167))

(assert (= start!72484 b!840165))

(declare-fun m!784087 () Bool)

(assert (=> bm!37153 m!784087))

(declare-fun m!784089 () Bool)

(assert (=> bm!37153 m!784089))

(declare-fun m!784091 () Bool)

(assert (=> start!72484 m!784091))

(declare-fun m!784093 () Bool)

(assert (=> start!72484 m!784093))

(declare-fun m!784095 () Bool)

(assert (=> b!840169 m!784095))

(declare-fun m!784097 () Bool)

(assert (=> b!840171 m!784097))

(declare-fun m!784099 () Bool)

(assert (=> mapNonEmpty!24860 m!784099))

(declare-fun m!784101 () Bool)

(assert (=> b!840173 m!784101))

(declare-fun m!784103 () Bool)

(assert (=> b!840162 m!784103))

(declare-fun m!784105 () Bool)

(assert (=> b!840168 m!784105))

(declare-fun m!784107 () Bool)

(assert (=> b!840172 m!784107))

(declare-fun m!784109 () Bool)

(assert (=> bm!37154 m!784109))

(declare-fun m!784111 () Bool)

(assert (=> b!840163 m!784111))

(check-sat (not b!840172) (not bm!37153) b_and!22745 (not bm!37154) (not b!840171) (not b!840163) (not mapNonEmpty!24860) (not b!840162) (not b!840168) tp_is_empty!15507 (not b_next!13641) (not b!840169) (not start!72484))
(check-sat b_and!22745 (not b_next!13641))
