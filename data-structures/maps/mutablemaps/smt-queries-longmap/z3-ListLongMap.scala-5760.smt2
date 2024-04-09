; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74438 () Bool)

(assert start!74438)

(declare-fun b_free!15153 () Bool)

(declare-fun b_next!15153 () Bool)

(assert (=> start!74438 (= b_free!15153 (not b_next!15153))))

(declare-fun tp!53138 () Bool)

(declare-fun b_and!24977 () Bool)

(assert (=> start!74438 (= tp!53138 b_and!24977)))

(declare-fun b!875956 () Bool)

(declare-fun e!487670 () Bool)

(declare-fun tp_is_empty!17397 () Bool)

(assert (=> b!875956 (= e!487670 tp_is_empty!17397)))

(declare-fun b!875957 () Bool)

(declare-fun e!487672 () Bool)

(declare-fun e!487671 () Bool)

(assert (=> b!875957 (= e!487672 (not e!487671))))

(declare-fun res!595353 () Bool)

(assert (=> b!875957 (=> res!595353 e!487671)))

(declare-datatypes ((array!50902 0))(
  ( (array!50903 (arr!24474 (Array (_ BitVec 32) (_ BitVec 64))) (size!24915 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50902)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875957 (= res!595353 (not (validKeyInArray!0 (select (arr!24474 _keys!868) from!1053))))))

(declare-fun e!487668 () Bool)

(assert (=> b!875957 e!487668))

(declare-fun c!92497 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875957 (= c!92497 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!28243 0))(
  ( (V!28244 (val!8746 Int)) )
))
(declare-fun v!557 () V!28243)

(declare-datatypes ((Unit!29916 0))(
  ( (Unit!29917) )
))
(declare-fun lt!396344 () Unit!29916)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8259 0))(
  ( (ValueCellFull!8259 (v!11175 V!28243)) (EmptyCell!8259) )
))
(declare-datatypes ((array!50904 0))(
  ( (array!50905 (arr!24475 (Array (_ BitVec 32) ValueCell!8259)) (size!24916 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50904)

(declare-fun minValue!654 () V!28243)

(declare-fun zeroValue!654 () V!28243)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!662 (array!50902 array!50904 (_ BitVec 32) (_ BitVec 32) V!28243 V!28243 (_ BitVec 32) (_ BitVec 64) V!28243 (_ BitVec 32) Int) Unit!29916)

(assert (=> b!875957 (= lt!396344 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!662 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875958 () Bool)

(declare-fun res!595356 () Bool)

(declare-fun e!487667 () Bool)

(assert (=> b!875958 (=> (not res!595356) (not e!487667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875958 (= res!595356 (validMask!0 mask!1196))))

(declare-fun bm!38699 () Bool)

(declare-datatypes ((tuple2!11566 0))(
  ( (tuple2!11567 (_1!5793 (_ BitVec 64)) (_2!5793 V!28243)) )
))
(declare-datatypes ((List!17451 0))(
  ( (Nil!17448) (Cons!17447 (h!18578 tuple2!11566) (t!24516 List!17451)) )
))
(declare-datatypes ((ListLongMap!10349 0))(
  ( (ListLongMap!10350 (toList!5190 List!17451)) )
))
(declare-fun call!38702 () ListLongMap!10349)

(declare-fun getCurrentListMapNoExtraKeys!3153 (array!50902 array!50904 (_ BitVec 32) (_ BitVec 32) V!28243 V!28243 (_ BitVec 32) Int) ListLongMap!10349)

(assert (=> bm!38699 (= call!38702 (getCurrentListMapNoExtraKeys!3153 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875959 () Bool)

(declare-fun res!595361 () Bool)

(assert (=> b!875959 (=> (not res!595361) (not e!487667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50902 (_ BitVec 32)) Bool)

(assert (=> b!875959 (= res!595361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875960 () Bool)

(assert (=> b!875960 (= e!487667 e!487672)))

(declare-fun res!595357 () Bool)

(assert (=> b!875960 (=> (not res!595357) (not e!487672))))

(assert (=> b!875960 (= res!595357 (= from!1053 i!612))))

(declare-fun lt!396342 () ListLongMap!10349)

(declare-fun lt!396343 () array!50904)

(assert (=> b!875960 (= lt!396342 (getCurrentListMapNoExtraKeys!3153 _keys!868 lt!396343 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875960 (= lt!396343 (array!50905 (store (arr!24475 _values!688) i!612 (ValueCellFull!8259 v!557)) (size!24916 _values!688)))))

(declare-fun lt!396341 () ListLongMap!10349)

(assert (=> b!875960 (= lt!396341 (getCurrentListMapNoExtraKeys!3153 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875961 () Bool)

(declare-fun call!38703 () ListLongMap!10349)

(assert (=> b!875961 (= e!487668 (= call!38703 call!38702))))

(declare-fun bm!38700 () Bool)

(assert (=> bm!38700 (= call!38703 (getCurrentListMapNoExtraKeys!3153 _keys!868 lt!396343 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27707 () Bool)

(declare-fun mapRes!27707 () Bool)

(declare-fun tp!53137 () Bool)

(assert (=> mapNonEmpty!27707 (= mapRes!27707 (and tp!53137 e!487670))))

(declare-fun mapKey!27707 () (_ BitVec 32))

(declare-fun mapValue!27707 () ValueCell!8259)

(declare-fun mapRest!27707 () (Array (_ BitVec 32) ValueCell!8259))

(assert (=> mapNonEmpty!27707 (= (arr!24475 _values!688) (store mapRest!27707 mapKey!27707 mapValue!27707))))

(declare-fun b!875962 () Bool)

(declare-fun e!487673 () Bool)

(assert (=> b!875962 (= e!487673 tp_is_empty!17397)))

(declare-fun res!595358 () Bool)

(assert (=> start!74438 (=> (not res!595358) (not e!487667))))

(assert (=> start!74438 (= res!595358 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24915 _keys!868))))))

(assert (=> start!74438 e!487667))

(assert (=> start!74438 tp_is_empty!17397))

(assert (=> start!74438 true))

(assert (=> start!74438 tp!53138))

(declare-fun array_inv!19276 (array!50902) Bool)

(assert (=> start!74438 (array_inv!19276 _keys!868)))

(declare-fun e!487669 () Bool)

(declare-fun array_inv!19277 (array!50904) Bool)

(assert (=> start!74438 (and (array_inv!19277 _values!688) e!487669)))

(declare-fun mapIsEmpty!27707 () Bool)

(assert (=> mapIsEmpty!27707 mapRes!27707))

(declare-fun b!875963 () Bool)

(declare-fun res!595355 () Bool)

(assert (=> b!875963 (=> (not res!595355) (not e!487667))))

(assert (=> b!875963 (= res!595355 (validKeyInArray!0 k0!854))))

(declare-fun b!875964 () Bool)

(assert (=> b!875964 (= e!487671 (bvslt i!612 (size!24916 _values!688)))))

(declare-fun +!2429 (ListLongMap!10349 tuple2!11566) ListLongMap!10349)

(declare-fun get!12884 (ValueCell!8259 V!28243) V!28243)

(declare-fun dynLambda!1212 (Int (_ BitVec 64)) V!28243)

(assert (=> b!875964 (= lt!396342 (+!2429 (getCurrentListMapNoExtraKeys!3153 _keys!868 lt!396343 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11567 (select (arr!24474 _keys!868) from!1053) (get!12884 (select (arr!24475 lt!396343) from!1053) (dynLambda!1212 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875965 () Bool)

(declare-fun res!595359 () Bool)

(assert (=> b!875965 (=> (not res!595359) (not e!487667))))

(assert (=> b!875965 (= res!595359 (and (= (select (arr!24474 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!875966 () Bool)

(declare-fun res!595362 () Bool)

(assert (=> b!875966 (=> (not res!595362) (not e!487667))))

(assert (=> b!875966 (= res!595362 (and (= (size!24916 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24915 _keys!868) (size!24916 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875967 () Bool)

(declare-fun res!595360 () Bool)

(assert (=> b!875967 (=> (not res!595360) (not e!487667))))

(declare-datatypes ((List!17452 0))(
  ( (Nil!17449) (Cons!17448 (h!18579 (_ BitVec 64)) (t!24517 List!17452)) )
))
(declare-fun arrayNoDuplicates!0 (array!50902 (_ BitVec 32) List!17452) Bool)

(assert (=> b!875967 (= res!595360 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17449))))

(declare-fun b!875968 () Bool)

(declare-fun res!595354 () Bool)

(assert (=> b!875968 (=> (not res!595354) (not e!487667))))

(assert (=> b!875968 (= res!595354 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24915 _keys!868))))))

(declare-fun b!875969 () Bool)

(assert (=> b!875969 (= e!487668 (= call!38703 (+!2429 call!38702 (tuple2!11567 k0!854 v!557))))))

(declare-fun b!875970 () Bool)

(assert (=> b!875970 (= e!487669 (and e!487673 mapRes!27707))))

(declare-fun condMapEmpty!27707 () Bool)

(declare-fun mapDefault!27707 () ValueCell!8259)

(assert (=> b!875970 (= condMapEmpty!27707 (= (arr!24475 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8259)) mapDefault!27707)))))

(assert (= (and start!74438 res!595358) b!875958))

(assert (= (and b!875958 res!595356) b!875966))

(assert (= (and b!875966 res!595362) b!875959))

(assert (= (and b!875959 res!595361) b!875967))

(assert (= (and b!875967 res!595360) b!875968))

(assert (= (and b!875968 res!595354) b!875963))

(assert (= (and b!875963 res!595355) b!875965))

(assert (= (and b!875965 res!595359) b!875960))

(assert (= (and b!875960 res!595357) b!875957))

(assert (= (and b!875957 c!92497) b!875969))

(assert (= (and b!875957 (not c!92497)) b!875961))

(assert (= (or b!875969 b!875961) bm!38700))

(assert (= (or b!875969 b!875961) bm!38699))

(assert (= (and b!875957 (not res!595353)) b!875964))

(assert (= (and b!875970 condMapEmpty!27707) mapIsEmpty!27707))

(assert (= (and b!875970 (not condMapEmpty!27707)) mapNonEmpty!27707))

(get-info :version)

(assert (= (and mapNonEmpty!27707 ((_ is ValueCellFull!8259) mapValue!27707)) b!875956))

(assert (= (and b!875970 ((_ is ValueCellFull!8259) mapDefault!27707)) b!875962))

(assert (= start!74438 b!875970))

(declare-fun b_lambda!12251 () Bool)

(assert (=> (not b_lambda!12251) (not b!875964)))

(declare-fun t!24515 () Bool)

(declare-fun tb!4921 () Bool)

(assert (=> (and start!74438 (= defaultEntry!696 defaultEntry!696) t!24515) tb!4921))

(declare-fun result!9453 () Bool)

(assert (=> tb!4921 (= result!9453 tp_is_empty!17397)))

(assert (=> b!875964 t!24515))

(declare-fun b_and!24979 () Bool)

(assert (= b_and!24977 (and (=> t!24515 result!9453) b_and!24979)))

(declare-fun m!815857 () Bool)

(assert (=> bm!38700 m!815857))

(declare-fun m!815859 () Bool)

(assert (=> b!875958 m!815859))

(declare-fun m!815861 () Bool)

(assert (=> bm!38699 m!815861))

(declare-fun m!815863 () Bool)

(assert (=> mapNonEmpty!27707 m!815863))

(declare-fun m!815865 () Bool)

(assert (=> b!875969 m!815865))

(declare-fun m!815867 () Bool)

(assert (=> b!875959 m!815867))

(declare-fun m!815869 () Bool)

(assert (=> start!74438 m!815869))

(declare-fun m!815871 () Bool)

(assert (=> start!74438 m!815871))

(declare-fun m!815873 () Bool)

(assert (=> b!875963 m!815873))

(declare-fun m!815875 () Bool)

(assert (=> b!875957 m!815875))

(assert (=> b!875957 m!815875))

(declare-fun m!815877 () Bool)

(assert (=> b!875957 m!815877))

(declare-fun m!815879 () Bool)

(assert (=> b!875957 m!815879))

(declare-fun m!815881 () Bool)

(assert (=> b!875960 m!815881))

(declare-fun m!815883 () Bool)

(assert (=> b!875960 m!815883))

(declare-fun m!815885 () Bool)

(assert (=> b!875960 m!815885))

(declare-fun m!815887 () Bool)

(assert (=> b!875967 m!815887))

(declare-fun m!815889 () Bool)

(assert (=> b!875965 m!815889))

(declare-fun m!815891 () Bool)

(assert (=> b!875964 m!815891))

(declare-fun m!815893 () Bool)

(assert (=> b!875964 m!815893))

(declare-fun m!815895 () Bool)

(assert (=> b!875964 m!815895))

(assert (=> b!875964 m!815891))

(assert (=> b!875964 m!815857))

(declare-fun m!815897 () Bool)

(assert (=> b!875964 m!815897))

(assert (=> b!875964 m!815857))

(assert (=> b!875964 m!815875))

(assert (=> b!875964 m!815893))

(check-sat (not b!875963) (not b!875959) (not bm!38700) (not b!875958) (not b_lambda!12251) (not b!875964) (not b_next!15153) (not b!875957) (not b!875960) tp_is_empty!17397 (not b!875967) b_and!24979 (not mapNonEmpty!27707) (not start!74438) (not b!875969) (not bm!38699))
(check-sat b_and!24979 (not b_next!15153))
