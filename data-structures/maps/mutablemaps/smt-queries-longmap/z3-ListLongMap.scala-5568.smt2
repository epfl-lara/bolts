; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73222 () Bool)

(assert start!73222)

(declare-fun b_free!14109 () Bool)

(declare-fun b_next!14109 () Bool)

(assert (=> start!73222 (= b_free!14109 (not b_next!14109))))

(declare-fun tp!49832 () Bool)

(declare-fun b_and!23395 () Bool)

(assert (=> start!73222 (= tp!49832 b_and!23395)))

(declare-fun res!579177 () Bool)

(declare-fun e!475517 () Bool)

(assert (=> start!73222 (=> (not res!579177) (not e!475517))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48676 0))(
  ( (array!48677 (arr!23365 (Array (_ BitVec 32) (_ BitVec 64))) (size!23806 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48676)

(assert (=> start!73222 (= res!579177 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23806 _keys!868))))))

(assert (=> start!73222 e!475517))

(declare-fun tp_is_empty!16245 () Bool)

(assert (=> start!73222 tp_is_empty!16245))

(assert (=> start!73222 true))

(assert (=> start!73222 tp!49832))

(declare-fun array_inv!18516 (array!48676) Bool)

(assert (=> start!73222 (array_inv!18516 _keys!868)))

(declare-datatypes ((V!26707 0))(
  ( (V!26708 (val!8170 Int)) )
))
(declare-datatypes ((ValueCell!7683 0))(
  ( (ValueCellFull!7683 (v!10591 V!26707)) (EmptyCell!7683) )
))
(declare-datatypes ((array!48678 0))(
  ( (array!48679 (arr!23366 (Array (_ BitVec 32) ValueCell!7683)) (size!23807 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48678)

(declare-fun e!475522 () Bool)

(declare-fun array_inv!18517 (array!48678) Bool)

(assert (=> start!73222 (and (array_inv!18517 _values!688) e!475522)))

(declare-fun b!852566 () Bool)

(declare-fun e!475524 () Bool)

(assert (=> b!852566 (= e!475517 e!475524)))

(declare-fun res!579175 () Bool)

(assert (=> b!852566 (=> (not res!579175) (not e!475524))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852566 (= res!579175 (= from!1053 i!612))))

(declare-datatypes ((tuple2!10744 0))(
  ( (tuple2!10745 (_1!5382 (_ BitVec 64)) (_2!5382 V!26707)) )
))
(declare-datatypes ((List!16626 0))(
  ( (Nil!16623) (Cons!16622 (h!17753 tuple2!10744) (t!23189 List!16626)) )
))
(declare-datatypes ((ListLongMap!9527 0))(
  ( (ListLongMap!9528 (toList!4779 List!16626)) )
))
(declare-fun lt!384227 () ListLongMap!9527)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26707)

(declare-fun zeroValue!654 () V!26707)

(declare-fun lt!384220 () array!48678)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2763 (array!48676 array!48678 (_ BitVec 32) (_ BitVec 32) V!26707 V!26707 (_ BitVec 32) Int) ListLongMap!9527)

(assert (=> b!852566 (= lt!384227 (getCurrentListMapNoExtraKeys!2763 _keys!868 lt!384220 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26707)

(assert (=> b!852566 (= lt!384220 (array!48679 (store (arr!23366 _values!688) i!612 (ValueCellFull!7683 v!557)) (size!23807 _values!688)))))

(declare-fun lt!384226 () ListLongMap!9527)

(assert (=> b!852566 (= lt!384226 (getCurrentListMapNoExtraKeys!2763 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!25967 () Bool)

(declare-fun mapRes!25967 () Bool)

(assert (=> mapIsEmpty!25967 mapRes!25967))

(declare-fun b!852567 () Bool)

(declare-fun e!475520 () Bool)

(assert (=> b!852567 (= e!475522 (and e!475520 mapRes!25967))))

(declare-fun condMapEmpty!25967 () Bool)

(declare-fun mapDefault!25967 () ValueCell!7683)

(assert (=> b!852567 (= condMapEmpty!25967 (= (arr!23366 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7683)) mapDefault!25967)))))

(declare-fun b!852568 () Bool)

(declare-fun res!579174 () Bool)

(assert (=> b!852568 (=> (not res!579174) (not e!475517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852568 (= res!579174 (validMask!0 mask!1196))))

(declare-fun call!38183 () ListLongMap!9527)

(declare-fun bm!38179 () Bool)

(assert (=> bm!38179 (= call!38183 (getCurrentListMapNoExtraKeys!2763 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852569 () Bool)

(declare-fun res!579180 () Bool)

(assert (=> b!852569 (=> (not res!579180) (not e!475517))))

(declare-datatypes ((List!16627 0))(
  ( (Nil!16624) (Cons!16623 (h!17754 (_ BitVec 64)) (t!23190 List!16627)) )
))
(declare-fun arrayNoDuplicates!0 (array!48676 (_ BitVec 32) List!16627) Bool)

(assert (=> b!852569 (= res!579180 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16624))))

(declare-fun b!852570 () Bool)

(declare-fun res!579178 () Bool)

(assert (=> b!852570 (=> (not res!579178) (not e!475517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48676 (_ BitVec 32)) Bool)

(assert (=> b!852570 (= res!579178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25967 () Bool)

(declare-fun tp!49831 () Bool)

(declare-fun e!475518 () Bool)

(assert (=> mapNonEmpty!25967 (= mapRes!25967 (and tp!49831 e!475518))))

(declare-fun mapKey!25967 () (_ BitVec 32))

(declare-fun mapValue!25967 () ValueCell!7683)

(declare-fun mapRest!25967 () (Array (_ BitVec 32) ValueCell!7683))

(assert (=> mapNonEmpty!25967 (= (arr!23366 _values!688) (store mapRest!25967 mapKey!25967 mapValue!25967))))

(declare-fun b!852571 () Bool)

(declare-fun e!475521 () Bool)

(assert (=> b!852571 (= e!475524 (not e!475521))))

(declare-fun res!579172 () Bool)

(assert (=> b!852571 (=> res!579172 e!475521)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852571 (= res!579172 (not (validKeyInArray!0 (select (arr!23365 _keys!868) from!1053))))))

(declare-fun e!475523 () Bool)

(assert (=> b!852571 e!475523))

(declare-fun c!91752 () Bool)

(assert (=> b!852571 (= c!91752 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((Unit!29086 0))(
  ( (Unit!29087) )
))
(declare-fun lt!384222 () Unit!29086)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!385 (array!48676 array!48678 (_ BitVec 32) (_ BitVec 32) V!26707 V!26707 (_ BitVec 32) (_ BitVec 64) V!26707 (_ BitVec 32) Int) Unit!29086)

(assert (=> b!852571 (= lt!384222 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!385 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852572 () Bool)

(assert (=> b!852572 (= e!475518 tp_is_empty!16245)))

(declare-fun b!852573 () Bool)

(declare-fun res!579176 () Bool)

(assert (=> b!852573 (=> (not res!579176) (not e!475517))))

(assert (=> b!852573 (= res!579176 (and (= (select (arr!23365 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852574 () Bool)

(declare-fun res!579179 () Bool)

(assert (=> b!852574 (=> (not res!579179) (not e!475517))))

(assert (=> b!852574 (= res!579179 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23806 _keys!868))))))

(declare-fun b!852575 () Bool)

(assert (=> b!852575 (= e!475521 true)))

(declare-fun lt!384219 () ListLongMap!9527)

(declare-fun lt!384225 () tuple2!10744)

(declare-fun lt!384224 () V!26707)

(declare-fun +!2119 (ListLongMap!9527 tuple2!10744) ListLongMap!9527)

(assert (=> b!852575 (= (+!2119 lt!384219 lt!384225) (+!2119 (+!2119 lt!384219 (tuple2!10745 k0!854 lt!384224)) lt!384225))))

(declare-fun lt!384223 () V!26707)

(assert (=> b!852575 (= lt!384225 (tuple2!10745 k0!854 lt!384223))))

(declare-fun lt!384228 () Unit!29086)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!300 (ListLongMap!9527 (_ BitVec 64) V!26707 V!26707) Unit!29086)

(assert (=> b!852575 (= lt!384228 (addSameAsAddTwiceSameKeyDiffValues!300 lt!384219 k0!854 lt!384224 lt!384223))))

(declare-fun lt!384221 () V!26707)

(declare-fun get!12334 (ValueCell!7683 V!26707) V!26707)

(assert (=> b!852575 (= lt!384224 (get!12334 (select (arr!23366 _values!688) from!1053) lt!384221))))

(assert (=> b!852575 (= lt!384227 (+!2119 lt!384219 (tuple2!10745 (select (arr!23365 _keys!868) from!1053) lt!384223)))))

(assert (=> b!852575 (= lt!384223 (get!12334 (select (store (arr!23366 _values!688) i!612 (ValueCellFull!7683 v!557)) from!1053) lt!384221))))

(declare-fun dynLambda!1048 (Int (_ BitVec 64)) V!26707)

(assert (=> b!852575 (= lt!384221 (dynLambda!1048 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852575 (= lt!384219 (getCurrentListMapNoExtraKeys!2763 _keys!868 lt!384220 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38180 () Bool)

(declare-fun call!38182 () ListLongMap!9527)

(assert (=> bm!38180 (= call!38182 (getCurrentListMapNoExtraKeys!2763 _keys!868 lt!384220 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852576 () Bool)

(declare-fun res!579171 () Bool)

(assert (=> b!852576 (=> (not res!579171) (not e!475517))))

(assert (=> b!852576 (= res!579171 (and (= (size!23807 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23806 _keys!868) (size!23807 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852577 () Bool)

(declare-fun res!579173 () Bool)

(assert (=> b!852577 (=> (not res!579173) (not e!475517))))

(assert (=> b!852577 (= res!579173 (validKeyInArray!0 k0!854))))

(declare-fun b!852578 () Bool)

(assert (=> b!852578 (= e!475520 tp_is_empty!16245)))

(declare-fun b!852579 () Bool)

(assert (=> b!852579 (= e!475523 (= call!38182 (+!2119 call!38183 (tuple2!10745 k0!854 v!557))))))

(declare-fun b!852580 () Bool)

(assert (=> b!852580 (= e!475523 (= call!38182 call!38183))))

(assert (= (and start!73222 res!579177) b!852568))

(assert (= (and b!852568 res!579174) b!852576))

(assert (= (and b!852576 res!579171) b!852570))

(assert (= (and b!852570 res!579178) b!852569))

(assert (= (and b!852569 res!579180) b!852574))

(assert (= (and b!852574 res!579179) b!852577))

(assert (= (and b!852577 res!579173) b!852573))

(assert (= (and b!852573 res!579176) b!852566))

(assert (= (and b!852566 res!579175) b!852571))

(assert (= (and b!852571 c!91752) b!852579))

(assert (= (and b!852571 (not c!91752)) b!852580))

(assert (= (or b!852579 b!852580) bm!38179))

(assert (= (or b!852579 b!852580) bm!38180))

(assert (= (and b!852571 (not res!579172)) b!852575))

(assert (= (and b!852567 condMapEmpty!25967) mapIsEmpty!25967))

(assert (= (and b!852567 (not condMapEmpty!25967)) mapNonEmpty!25967))

(get-info :version)

(assert (= (and mapNonEmpty!25967 ((_ is ValueCellFull!7683) mapValue!25967)) b!852572))

(assert (= (and b!852567 ((_ is ValueCellFull!7683) mapDefault!25967)) b!852578))

(assert (= start!73222 b!852567))

(declare-fun b_lambda!11671 () Bool)

(assert (=> (not b_lambda!11671) (not b!852575)))

(declare-fun t!23188 () Bool)

(declare-fun tb!4419 () Bool)

(assert (=> (and start!73222 (= defaultEntry!696 defaultEntry!696) t!23188) tb!4419))

(declare-fun result!8441 () Bool)

(assert (=> tb!4419 (= result!8441 tp_is_empty!16245)))

(assert (=> b!852575 t!23188))

(declare-fun b_and!23397 () Bool)

(assert (= b_and!23395 (and (=> t!23188 result!8441) b_and!23397)))

(declare-fun m!793775 () Bool)

(assert (=> b!852575 m!793775))

(declare-fun m!793777 () Bool)

(assert (=> b!852575 m!793777))

(declare-fun m!793779 () Bool)

(assert (=> b!852575 m!793779))

(declare-fun m!793781 () Bool)

(assert (=> b!852575 m!793781))

(assert (=> b!852575 m!793777))

(declare-fun m!793783 () Bool)

(assert (=> b!852575 m!793783))

(declare-fun m!793785 () Bool)

(assert (=> b!852575 m!793785))

(declare-fun m!793787 () Bool)

(assert (=> b!852575 m!793787))

(declare-fun m!793789 () Bool)

(assert (=> b!852575 m!793789))

(assert (=> b!852575 m!793775))

(declare-fun m!793791 () Bool)

(assert (=> b!852575 m!793791))

(declare-fun m!793793 () Bool)

(assert (=> b!852575 m!793793))

(assert (=> b!852575 m!793783))

(declare-fun m!793795 () Bool)

(assert (=> b!852575 m!793795))

(declare-fun m!793797 () Bool)

(assert (=> b!852575 m!793797))

(declare-fun m!793799 () Bool)

(assert (=> b!852575 m!793799))

(declare-fun m!793801 () Bool)

(assert (=> bm!38179 m!793801))

(declare-fun m!793803 () Bool)

(assert (=> start!73222 m!793803))

(declare-fun m!793805 () Bool)

(assert (=> start!73222 m!793805))

(declare-fun m!793807 () Bool)

(assert (=> b!852579 m!793807))

(assert (=> bm!38180 m!793789))

(declare-fun m!793809 () Bool)

(assert (=> b!852570 m!793809))

(declare-fun m!793811 () Bool)

(assert (=> b!852566 m!793811))

(assert (=> b!852566 m!793795))

(declare-fun m!793813 () Bool)

(assert (=> b!852566 m!793813))

(declare-fun m!793815 () Bool)

(assert (=> mapNonEmpty!25967 m!793815))

(declare-fun m!793817 () Bool)

(assert (=> b!852573 m!793817))

(declare-fun m!793819 () Bool)

(assert (=> b!852568 m!793819))

(declare-fun m!793821 () Bool)

(assert (=> b!852577 m!793821))

(assert (=> b!852571 m!793797))

(assert (=> b!852571 m!793797))

(declare-fun m!793823 () Bool)

(assert (=> b!852571 m!793823))

(declare-fun m!793825 () Bool)

(assert (=> b!852571 m!793825))

(declare-fun m!793827 () Bool)

(assert (=> b!852569 m!793827))

(check-sat (not mapNonEmpty!25967) (not b!852570) (not bm!38179) (not b_next!14109) b_and!23397 (not b!852569) (not b!852575) (not b_lambda!11671) (not b!852579) (not bm!38180) (not b!852571) (not start!73222) (not b!852577) (not b!852568) (not b!852566) tp_is_empty!16245)
(check-sat b_and!23397 (not b_next!14109))
