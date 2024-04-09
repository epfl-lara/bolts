; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72394 () Bool)

(assert start!72394)

(declare-fun b_free!13551 () Bool)

(declare-fun b_next!13551 () Bool)

(assert (=> start!72394 (= b_free!13551 (not b_next!13551))))

(declare-fun tp!47753 () Bool)

(declare-fun b_and!22655 () Bool)

(assert (=> start!72394 (= tp!47753 b_and!22655)))

(declare-fun b!838406 () Bool)

(declare-fun res!570222 () Bool)

(declare-fun e!468024 () Bool)

(assert (=> b!838406 (=> (not res!570222) (not e!468024))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47086 0))(
  ( (array!47087 (arr!22570 (Array (_ BitVec 32) (_ BitVec 64))) (size!23011 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47086)

(declare-datatypes ((V!25603 0))(
  ( (V!25604 (val!7756 Int)) )
))
(declare-datatypes ((ValueCell!7269 0))(
  ( (ValueCellFull!7269 (v!10177 V!25603)) (EmptyCell!7269) )
))
(declare-datatypes ((array!47088 0))(
  ( (array!47089 (arr!22571 (Array (_ BitVec 32) ValueCell!7269)) (size!23012 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47088)

(assert (=> b!838406 (= res!570222 (and (= (size!23012 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23011 _keys!868) (size!23012 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838407 () Bool)

(assert (=> b!838407 (= e!468024 (not true))))

(declare-fun e!468019 () Bool)

(assert (=> b!838407 e!468019))

(declare-fun c!91104 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838407 (= c!91104 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28788 0))(
  ( (Unit!28789) )
))
(declare-fun lt!380637 () Unit!28788)

(declare-fun v!557 () V!25603)

(declare-fun defaultEntry!696 () Int)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!25603)

(declare-fun zeroValue!654 () V!25603)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!243 (array!47086 array!47088 (_ BitVec 32) (_ BitVec 32) V!25603 V!25603 (_ BitVec 32) (_ BitVec 64) V!25603 (_ BitVec 32) Int) Unit!28788)

(assert (=> b!838407 (= lt!380637 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!243 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24725 () Bool)

(declare-fun mapRes!24725 () Bool)

(assert (=> mapIsEmpty!24725 mapRes!24725))

(declare-fun b!838408 () Bool)

(declare-fun res!570221 () Bool)

(assert (=> b!838408 (=> (not res!570221) (not e!468024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838408 (= res!570221 (validKeyInArray!0 k0!854))))

(declare-fun b!838409 () Bool)

(declare-fun e!468022 () Bool)

(declare-fun tp_is_empty!15417 () Bool)

(assert (=> b!838409 (= e!468022 tp_is_empty!15417)))

(declare-fun b!838410 () Bool)

(declare-fun res!570220 () Bool)

(assert (=> b!838410 (=> (not res!570220) (not e!468024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47086 (_ BitVec 32)) Bool)

(assert (=> b!838410 (= res!570220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838411 () Bool)

(declare-fun res!570215 () Bool)

(assert (=> b!838411 (=> (not res!570215) (not e!468024))))

(declare-datatypes ((List!16117 0))(
  ( (Nil!16114) (Cons!16113 (h!17244 (_ BitVec 64)) (t!22496 List!16117)) )
))
(declare-fun arrayNoDuplicates!0 (array!47086 (_ BitVec 32) List!16117) Bool)

(assert (=> b!838411 (= res!570215 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16114))))

(declare-fun b!838412 () Bool)

(declare-datatypes ((tuple2!10280 0))(
  ( (tuple2!10281 (_1!5150 (_ BitVec 64)) (_2!5150 V!25603)) )
))
(declare-datatypes ((List!16118 0))(
  ( (Nil!16115) (Cons!16114 (h!17245 tuple2!10280) (t!22497 List!16118)) )
))
(declare-datatypes ((ListLongMap!9063 0))(
  ( (ListLongMap!9064 (toList!4547 List!16118)) )
))
(declare-fun call!36887 () ListLongMap!9063)

(declare-fun call!36886 () ListLongMap!9063)

(assert (=> b!838412 (= e!468019 (= call!36887 call!36886))))

(declare-fun b!838413 () Bool)

(declare-fun res!570219 () Bool)

(assert (=> b!838413 (=> (not res!570219) (not e!468024))))

(assert (=> b!838413 (= res!570219 (and (= (select (arr!22570 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23011 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun res!570216 () Bool)

(assert (=> start!72394 (=> (not res!570216) (not e!468024))))

(assert (=> start!72394 (= res!570216 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23011 _keys!868))))))

(assert (=> start!72394 e!468024))

(assert (=> start!72394 tp_is_empty!15417))

(assert (=> start!72394 true))

(assert (=> start!72394 tp!47753))

(declare-fun array_inv!17956 (array!47086) Bool)

(assert (=> start!72394 (array_inv!17956 _keys!868)))

(declare-fun e!468020 () Bool)

(declare-fun array_inv!17957 (array!47088) Bool)

(assert (=> start!72394 (and (array_inv!17957 _values!688) e!468020)))

(declare-fun b!838414 () Bool)

(declare-fun e!468023 () Bool)

(assert (=> b!838414 (= e!468023 tp_is_empty!15417)))

(declare-fun b!838415 () Bool)

(declare-fun +!1970 (ListLongMap!9063 tuple2!10280) ListLongMap!9063)

(assert (=> b!838415 (= e!468019 (= call!36887 (+!1970 call!36886 (tuple2!10281 k0!854 v!557))))))

(declare-fun mapNonEmpty!24725 () Bool)

(declare-fun tp!47752 () Bool)

(assert (=> mapNonEmpty!24725 (= mapRes!24725 (and tp!47752 e!468023))))

(declare-fun mapRest!24725 () (Array (_ BitVec 32) ValueCell!7269))

(declare-fun mapKey!24725 () (_ BitVec 32))

(declare-fun mapValue!24725 () ValueCell!7269)

(assert (=> mapNonEmpty!24725 (= (arr!22571 _values!688) (store mapRest!24725 mapKey!24725 mapValue!24725))))

(declare-fun b!838416 () Bool)

(declare-fun res!570217 () Bool)

(assert (=> b!838416 (=> (not res!570217) (not e!468024))))

(assert (=> b!838416 (= res!570217 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23011 _keys!868))))))

(declare-fun b!838417 () Bool)

(assert (=> b!838417 (= e!468020 (and e!468022 mapRes!24725))))

(declare-fun condMapEmpty!24725 () Bool)

(declare-fun mapDefault!24725 () ValueCell!7269)

(assert (=> b!838417 (= condMapEmpty!24725 (= (arr!22571 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7269)) mapDefault!24725)))))

(declare-fun bm!36883 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2542 (array!47086 array!47088 (_ BitVec 32) (_ BitVec 32) V!25603 V!25603 (_ BitVec 32) Int) ListLongMap!9063)

(assert (=> bm!36883 (= call!36886 (getCurrentListMapNoExtraKeys!2542 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!36884 () Bool)

(assert (=> bm!36884 (= call!36887 (getCurrentListMapNoExtraKeys!2542 _keys!868 (array!47089 (store (arr!22571 _values!688) i!612 (ValueCellFull!7269 v!557)) (size!23012 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838418 () Bool)

(declare-fun res!570218 () Bool)

(assert (=> b!838418 (=> (not res!570218) (not e!468024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838418 (= res!570218 (validMask!0 mask!1196))))

(assert (= (and start!72394 res!570216) b!838418))

(assert (= (and b!838418 res!570218) b!838406))

(assert (= (and b!838406 res!570222) b!838410))

(assert (= (and b!838410 res!570220) b!838411))

(assert (= (and b!838411 res!570215) b!838416))

(assert (= (and b!838416 res!570217) b!838408))

(assert (= (and b!838408 res!570221) b!838413))

(assert (= (and b!838413 res!570219) b!838407))

(assert (= (and b!838407 c!91104) b!838415))

(assert (= (and b!838407 (not c!91104)) b!838412))

(assert (= (or b!838415 b!838412) bm!36884))

(assert (= (or b!838415 b!838412) bm!36883))

(assert (= (and b!838417 condMapEmpty!24725) mapIsEmpty!24725))

(assert (= (and b!838417 (not condMapEmpty!24725)) mapNonEmpty!24725))

(get-info :version)

(assert (= (and mapNonEmpty!24725 ((_ is ValueCellFull!7269) mapValue!24725)) b!838414))

(assert (= (and b!838417 ((_ is ValueCellFull!7269) mapDefault!24725)) b!838409))

(assert (= start!72394 b!838417))

(declare-fun m!782917 () Bool)

(assert (=> b!838415 m!782917))

(declare-fun m!782919 () Bool)

(assert (=> mapNonEmpty!24725 m!782919))

(declare-fun m!782921 () Bool)

(assert (=> start!72394 m!782921))

(declare-fun m!782923 () Bool)

(assert (=> start!72394 m!782923))

(declare-fun m!782925 () Bool)

(assert (=> bm!36883 m!782925))

(declare-fun m!782927 () Bool)

(assert (=> b!838411 m!782927))

(declare-fun m!782929 () Bool)

(assert (=> b!838418 m!782929))

(declare-fun m!782931 () Bool)

(assert (=> b!838408 m!782931))

(declare-fun m!782933 () Bool)

(assert (=> bm!36884 m!782933))

(declare-fun m!782935 () Bool)

(assert (=> bm!36884 m!782935))

(declare-fun m!782937 () Bool)

(assert (=> b!838407 m!782937))

(declare-fun m!782939 () Bool)

(assert (=> b!838413 m!782939))

(declare-fun m!782941 () Bool)

(assert (=> b!838410 m!782941))

(check-sat (not b!838408) (not b!838411) (not bm!36883) (not mapNonEmpty!24725) (not b!838407) (not b_next!13551) (not b!838410) (not bm!36884) (not start!72394) tp_is_empty!15417 (not b!838415) (not b!838418) b_and!22655)
(check-sat b_and!22655 (not b_next!13551))
