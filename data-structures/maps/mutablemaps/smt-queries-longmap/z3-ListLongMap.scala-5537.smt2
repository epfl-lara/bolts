; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73036 () Bool)

(assert start!73036)

(declare-fun b_free!13923 () Bool)

(declare-fun b_next!13923 () Bool)

(assert (=> start!73036 (= b_free!13923 (not b_next!13923))))

(declare-fun tp!49273 () Bool)

(declare-fun b_and!23027 () Bool)

(assert (=> start!73036 (= tp!49273 b_and!23027)))

(declare-fun b!848199 () Bool)

(declare-fun res!576387 () Bool)

(declare-fun e!473291 () Bool)

(assert (=> b!848199 (=> (not res!576387) (not e!473291))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848199 (= res!576387 (validKeyInArray!0 k0!854))))

(declare-fun b!848200 () Bool)

(declare-fun res!576383 () Bool)

(assert (=> b!848200 (=> (not res!576383) (not e!473291))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48310 0))(
  ( (array!48311 (arr!23182 (Array (_ BitVec 32) (_ BitVec 64))) (size!23623 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48310)

(declare-datatypes ((V!26459 0))(
  ( (V!26460 (val!8077 Int)) )
))
(declare-datatypes ((ValueCell!7590 0))(
  ( (ValueCellFull!7590 (v!10498 V!26459)) (EmptyCell!7590) )
))
(declare-datatypes ((array!48312 0))(
  ( (array!48313 (arr!23183 (Array (_ BitVec 32) ValueCell!7590)) (size!23624 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48312)

(assert (=> b!848200 (= res!576383 (and (= (size!23624 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23623 _keys!868) (size!23624 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!848201 () Bool)

(declare-fun e!473292 () Bool)

(declare-fun tp_is_empty!16059 () Bool)

(assert (=> b!848201 (= e!473292 tp_is_empty!16059)))

(declare-fun mapNonEmpty!25688 () Bool)

(declare-fun mapRes!25688 () Bool)

(declare-fun tp!49274 () Bool)

(declare-fun e!473286 () Bool)

(assert (=> mapNonEmpty!25688 (= mapRes!25688 (and tp!49274 e!473286))))

(declare-fun mapValue!25688 () ValueCell!7590)

(declare-fun mapRest!25688 () (Array (_ BitVec 32) ValueCell!7590))

(declare-fun mapKey!25688 () (_ BitVec 32))

(assert (=> mapNonEmpty!25688 (= (arr!23183 _values!688) (store mapRest!25688 mapKey!25688 mapValue!25688))))

(declare-fun b!848202 () Bool)

(declare-fun res!576382 () Bool)

(assert (=> b!848202 (=> (not res!576382) (not e!473291))))

(declare-datatypes ((List!16481 0))(
  ( (Nil!16478) (Cons!16477 (h!17608 (_ BitVec 64)) (t!22860 List!16481)) )
))
(declare-fun arrayNoDuplicates!0 (array!48310 (_ BitVec 32) List!16481) Bool)

(assert (=> b!848202 (= res!576382 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16478))))

(declare-fun b!848203 () Bool)

(declare-fun res!576385 () Bool)

(assert (=> b!848203 (=> (not res!576385) (not e!473291))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848203 (= res!576385 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23623 _keys!868))))))

(declare-fun mapIsEmpty!25688 () Bool)

(assert (=> mapIsEmpty!25688 mapRes!25688))

(declare-datatypes ((tuple2!10574 0))(
  ( (tuple2!10575 (_1!5297 (_ BitVec 64)) (_2!5297 V!26459)) )
))
(declare-datatypes ((List!16482 0))(
  ( (Nil!16479) (Cons!16478 (h!17609 tuple2!10574) (t!22861 List!16482)) )
))
(declare-datatypes ((ListLongMap!9357 0))(
  ( (ListLongMap!9358 (toList!4694 List!16482)) )
))
(declare-fun call!37624 () ListLongMap!9357)

(declare-fun b!848205 () Bool)

(declare-fun call!37625 () ListLongMap!9357)

(declare-fun v!557 () V!26459)

(declare-fun e!473288 () Bool)

(declare-fun +!2045 (ListLongMap!9357 tuple2!10574) ListLongMap!9357)

(assert (=> b!848205 (= e!473288 (= call!37625 (+!2045 call!37624 (tuple2!10575 k0!854 v!557))))))

(declare-fun b!848206 () Bool)

(assert (=> b!848206 (= e!473286 tp_is_empty!16059)))

(declare-fun b!848207 () Bool)

(declare-fun res!576381 () Bool)

(assert (=> b!848207 (=> (not res!576381) (not e!473291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48310 (_ BitVec 32)) Bool)

(assert (=> b!848207 (= res!576381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!848208 () Bool)

(declare-fun res!576384 () Bool)

(assert (=> b!848208 (=> (not res!576384) (not e!473291))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!848208 (= res!576384 (and (= (select (arr!23182 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!576389 () Bool)

(assert (=> start!73036 (=> (not res!576389) (not e!473291))))

(assert (=> start!73036 (= res!576389 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23623 _keys!868))))))

(assert (=> start!73036 e!473291))

(assert (=> start!73036 tp_is_empty!16059))

(assert (=> start!73036 true))

(assert (=> start!73036 tp!49273))

(declare-fun array_inv!18384 (array!48310) Bool)

(assert (=> start!73036 (array_inv!18384 _keys!868)))

(declare-fun e!473290 () Bool)

(declare-fun array_inv!18385 (array!48312) Bool)

(assert (=> start!73036 (and (array_inv!18385 _values!688) e!473290)))

(declare-fun b!848204 () Bool)

(assert (=> b!848204 (= e!473290 (and e!473292 mapRes!25688))))

(declare-fun condMapEmpty!25688 () Bool)

(declare-fun mapDefault!25688 () ValueCell!7590)

(assert (=> b!848204 (= condMapEmpty!25688 (= (arr!23183 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7590)) mapDefault!25688)))))

(declare-fun lt!381939 () array!48312)

(declare-fun bm!37621 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26459)

(declare-fun zeroValue!654 () V!26459)

(declare-fun getCurrentListMapNoExtraKeys!2683 (array!48310 array!48312 (_ BitVec 32) (_ BitVec 32) V!26459 V!26459 (_ BitVec 32) Int) ListLongMap!9357)

(assert (=> bm!37621 (= call!37625 (getCurrentListMapNoExtraKeys!2683 _keys!868 lt!381939 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848209 () Bool)

(declare-fun e!473289 () Bool)

(declare-fun e!473285 () Bool)

(assert (=> b!848209 (= e!473289 (not e!473285))))

(declare-fun res!576388 () Bool)

(assert (=> b!848209 (=> res!576388 e!473285)))

(assert (=> b!848209 (= res!576388 (not (validKeyInArray!0 (select (arr!23182 _keys!868) from!1053))))))

(assert (=> b!848209 e!473288))

(declare-fun c!91473 () Bool)

(assert (=> b!848209 (= c!91473 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28950 0))(
  ( (Unit!28951) )
))
(declare-fun lt!381942 () Unit!28950)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!324 (array!48310 array!48312 (_ BitVec 32) (_ BitVec 32) V!26459 V!26459 (_ BitVec 32) (_ BitVec 64) V!26459 (_ BitVec 32) Int) Unit!28950)

(assert (=> b!848209 (= lt!381942 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!324 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848210 () Bool)

(assert (=> b!848210 (= e!473285 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23623 _keys!868))))))

(declare-fun b!848211 () Bool)

(assert (=> b!848211 (= e!473288 (= call!37625 call!37624))))

(declare-fun b!848212 () Bool)

(declare-fun res!576386 () Bool)

(assert (=> b!848212 (=> (not res!576386) (not e!473291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848212 (= res!576386 (validMask!0 mask!1196))))

(declare-fun b!848213 () Bool)

(assert (=> b!848213 (= e!473291 e!473289)))

(declare-fun res!576390 () Bool)

(assert (=> b!848213 (=> (not res!576390) (not e!473289))))

(assert (=> b!848213 (= res!576390 (= from!1053 i!612))))

(declare-fun lt!381940 () ListLongMap!9357)

(assert (=> b!848213 (= lt!381940 (getCurrentListMapNoExtraKeys!2683 _keys!868 lt!381939 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848213 (= lt!381939 (array!48313 (store (arr!23183 _values!688) i!612 (ValueCellFull!7590 v!557)) (size!23624 _values!688)))))

(declare-fun lt!381941 () ListLongMap!9357)

(assert (=> b!848213 (= lt!381941 (getCurrentListMapNoExtraKeys!2683 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37622 () Bool)

(assert (=> bm!37622 (= call!37624 (getCurrentListMapNoExtraKeys!2683 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73036 res!576389) b!848212))

(assert (= (and b!848212 res!576386) b!848200))

(assert (= (and b!848200 res!576383) b!848207))

(assert (= (and b!848207 res!576381) b!848202))

(assert (= (and b!848202 res!576382) b!848203))

(assert (= (and b!848203 res!576385) b!848199))

(assert (= (and b!848199 res!576387) b!848208))

(assert (= (and b!848208 res!576384) b!848213))

(assert (= (and b!848213 res!576390) b!848209))

(assert (= (and b!848209 c!91473) b!848205))

(assert (= (and b!848209 (not c!91473)) b!848211))

(assert (= (or b!848205 b!848211) bm!37621))

(assert (= (or b!848205 b!848211) bm!37622))

(assert (= (and b!848209 (not res!576388)) b!848210))

(assert (= (and b!848204 condMapEmpty!25688) mapIsEmpty!25688))

(assert (= (and b!848204 (not condMapEmpty!25688)) mapNonEmpty!25688))

(get-info :version)

(assert (= (and mapNonEmpty!25688 ((_ is ValueCellFull!7590) mapValue!25688)) b!848206))

(assert (= (and b!848204 ((_ is ValueCellFull!7590) mapDefault!25688)) b!848201))

(assert (= start!73036 b!848204))

(declare-fun m!789117 () Bool)

(assert (=> b!848212 m!789117))

(declare-fun m!789119 () Bool)

(assert (=> b!848199 m!789119))

(declare-fun m!789121 () Bool)

(assert (=> b!848209 m!789121))

(assert (=> b!848209 m!789121))

(declare-fun m!789123 () Bool)

(assert (=> b!848209 m!789123))

(declare-fun m!789125 () Bool)

(assert (=> b!848209 m!789125))

(declare-fun m!789127 () Bool)

(assert (=> b!848208 m!789127))

(declare-fun m!789129 () Bool)

(assert (=> b!848202 m!789129))

(declare-fun m!789131 () Bool)

(assert (=> bm!37621 m!789131))

(declare-fun m!789133 () Bool)

(assert (=> start!73036 m!789133))

(declare-fun m!789135 () Bool)

(assert (=> start!73036 m!789135))

(declare-fun m!789137 () Bool)

(assert (=> mapNonEmpty!25688 m!789137))

(declare-fun m!789139 () Bool)

(assert (=> b!848213 m!789139))

(declare-fun m!789141 () Bool)

(assert (=> b!848213 m!789141))

(declare-fun m!789143 () Bool)

(assert (=> b!848213 m!789143))

(declare-fun m!789145 () Bool)

(assert (=> bm!37622 m!789145))

(declare-fun m!789147 () Bool)

(assert (=> b!848205 m!789147))

(declare-fun m!789149 () Bool)

(assert (=> b!848207 m!789149))

(check-sat (not bm!37622) (not b!848212) (not bm!37621) (not b_next!13923) (not b!848207) (not b!848199) b_and!23027 tp_is_empty!16059 (not b!848213) (not b!848209) (not b!848202) (not mapNonEmpty!25688) (not start!73036) (not b!848205))
(check-sat b_and!23027 (not b_next!13923))
