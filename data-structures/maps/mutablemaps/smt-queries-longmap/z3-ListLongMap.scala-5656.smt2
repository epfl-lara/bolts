; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73750 () Bool)

(assert start!73750)

(declare-fun b_free!14637 () Bool)

(declare-fun b_next!14637 () Bool)

(assert (=> start!73750 (= b_free!14637 (not b_next!14637))))

(declare-fun tp!51416 () Bool)

(declare-fun b_and!24271 () Bool)

(assert (=> start!73750 (= tp!51416 b_and!24271)))

(declare-fun b!864025 () Bool)

(declare-fun res!587223 () Bool)

(declare-fun e!481379 () Bool)

(assert (=> b!864025 (=> (not res!587223) (not e!481379))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49690 0))(
  ( (array!49691 (arr!23872 (Array (_ BitVec 32) (_ BitVec 64))) (size!24313 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49690)

(assert (=> b!864025 (= res!587223 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24313 _keys!868))))))

(declare-fun b!864026 () Bool)

(declare-fun e!481380 () Bool)

(declare-fun tp_is_empty!16773 () Bool)

(assert (=> b!864026 (= e!481380 tp_is_empty!16773)))

(declare-fun b!864027 () Bool)

(declare-fun e!481378 () Bool)

(assert (=> b!864027 (= e!481378 tp_is_empty!16773)))

(declare-fun b!864028 () Bool)

(declare-fun res!587230 () Bool)

(assert (=> b!864028 (=> (not res!587230) (not e!481379))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864028 (= res!587230 (validMask!0 mask!1196))))

(declare-fun b!864029 () Bool)

(declare-fun e!481372 () Bool)

(assert (=> b!864029 (= e!481379 e!481372)))

(declare-fun res!587228 () Bool)

(assert (=> b!864029 (=> (not res!587228) (not e!481372))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864029 (= res!587228 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27411 0))(
  ( (V!27412 (val!8434 Int)) )
))
(declare-datatypes ((tuple2!11168 0))(
  ( (tuple2!11169 (_1!5594 (_ BitVec 64)) (_2!5594 V!27411)) )
))
(declare-datatypes ((List!17035 0))(
  ( (Nil!17032) (Cons!17031 (h!18162 tuple2!11168) (t!23946 List!17035)) )
))
(declare-datatypes ((ListLongMap!9951 0))(
  ( (ListLongMap!9952 (toList!4991 List!17035)) )
))
(declare-fun lt!390893 () ListLongMap!9951)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7947 0))(
  ( (ValueCellFull!7947 (v!10855 V!27411)) (EmptyCell!7947) )
))
(declare-datatypes ((array!49692 0))(
  ( (array!49693 (arr!23873 (Array (_ BitVec 32) ValueCell!7947)) (size!24314 (_ BitVec 32))) )
))
(declare-fun lt!390896 () array!49692)

(declare-fun minValue!654 () V!27411)

(declare-fun zeroValue!654 () V!27411)

(declare-fun getCurrentListMapNoExtraKeys!2964 (array!49690 array!49692 (_ BitVec 32) (_ BitVec 32) V!27411 V!27411 (_ BitVec 32) Int) ListLongMap!9951)

(assert (=> b!864029 (= lt!390893 (getCurrentListMapNoExtraKeys!2964 _keys!868 lt!390896 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27411)

(declare-fun _values!688 () array!49692)

(assert (=> b!864029 (= lt!390896 (array!49693 (store (arr!23873 _values!688) i!612 (ValueCellFull!7947 v!557)) (size!24314 _values!688)))))

(declare-fun lt!390882 () ListLongMap!9951)

(assert (=> b!864029 (= lt!390882 (getCurrentListMapNoExtraKeys!2964 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!587222 () Bool)

(assert (=> start!73750 (=> (not res!587222) (not e!481379))))

(assert (=> start!73750 (= res!587222 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24313 _keys!868))))))

(assert (=> start!73750 e!481379))

(assert (=> start!73750 tp_is_empty!16773))

(assert (=> start!73750 true))

(assert (=> start!73750 tp!51416))

(declare-fun array_inv!18856 (array!49690) Bool)

(assert (=> start!73750 (array_inv!18856 _keys!868)))

(declare-fun e!481377 () Bool)

(declare-fun array_inv!18857 (array!49692) Bool)

(assert (=> start!73750 (and (array_inv!18857 _values!688) e!481377)))

(declare-fun b!864030 () Bool)

(declare-fun res!587226 () Bool)

(assert (=> b!864030 (=> (not res!587226) (not e!481379))))

(assert (=> b!864030 (= res!587226 (and (= (size!24314 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24313 _keys!868) (size!24314 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864031 () Bool)

(declare-fun res!587225 () Bool)

(assert (=> b!864031 (=> (not res!587225) (not e!481379))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864031 (= res!587225 (validKeyInArray!0 k0!854))))

(declare-fun b!864032 () Bool)

(declare-fun res!587231 () Bool)

(assert (=> b!864032 (=> (not res!587231) (not e!481379))))

(assert (=> b!864032 (= res!587231 (and (= (select (arr!23872 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864033 () Bool)

(declare-fun mapRes!26759 () Bool)

(assert (=> b!864033 (= e!481377 (and e!481380 mapRes!26759))))

(declare-fun condMapEmpty!26759 () Bool)

(declare-fun mapDefault!26759 () ValueCell!7947)

(assert (=> b!864033 (= condMapEmpty!26759 (= (arr!23873 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7947)) mapDefault!26759)))))

(declare-fun b!864034 () Bool)

(declare-fun e!481376 () Bool)

(assert (=> b!864034 (= e!481376 true)))

(declare-fun lt!390894 () ListLongMap!9951)

(declare-fun lt!390884 () tuple2!11168)

(declare-fun lt!390892 () tuple2!11168)

(declare-fun lt!390885 () ListLongMap!9951)

(declare-fun +!2288 (ListLongMap!9951 tuple2!11168) ListLongMap!9951)

(assert (=> b!864034 (= lt!390894 (+!2288 (+!2288 lt!390885 lt!390892) lt!390884))))

(declare-fun lt!390891 () V!27411)

(declare-datatypes ((Unit!29525 0))(
  ( (Unit!29526) )
))
(declare-fun lt!390895 () Unit!29525)

(declare-fun addCommutativeForDiffKeys!498 (ListLongMap!9951 (_ BitVec 64) V!27411 (_ BitVec 64) V!27411) Unit!29525)

(assert (=> b!864034 (= lt!390895 (addCommutativeForDiffKeys!498 lt!390885 k0!854 v!557 (select (arr!23872 _keys!868) from!1053) lt!390891))))

(declare-fun mapNonEmpty!26759 () Bool)

(declare-fun tp!51415 () Bool)

(assert (=> mapNonEmpty!26759 (= mapRes!26759 (and tp!51415 e!481378))))

(declare-fun mapKey!26759 () (_ BitVec 32))

(declare-fun mapRest!26759 () (Array (_ BitVec 32) ValueCell!7947))

(declare-fun mapValue!26759 () ValueCell!7947)

(assert (=> mapNonEmpty!26759 (= (arr!23873 _values!688) (store mapRest!26759 mapKey!26759 mapValue!26759))))

(declare-fun mapIsEmpty!26759 () Bool)

(assert (=> mapIsEmpty!26759 mapRes!26759))

(declare-fun b!864035 () Bool)

(declare-fun e!481373 () Unit!29525)

(declare-fun Unit!29527 () Unit!29525)

(assert (=> b!864035 (= e!481373 Unit!29527)))

(declare-fun lt!390887 () Unit!29525)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49690 (_ BitVec 32) (_ BitVec 32)) Unit!29525)

(assert (=> b!864035 (= lt!390887 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17036 0))(
  ( (Nil!17033) (Cons!17032 (h!18163 (_ BitVec 64)) (t!23947 List!17036)) )
))
(declare-fun arrayNoDuplicates!0 (array!49690 (_ BitVec 32) List!17036) Bool)

(assert (=> b!864035 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17033)))

(declare-fun lt!390889 () Unit!29525)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49690 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29525)

(assert (=> b!864035 (= lt!390889 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864035 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390886 () Unit!29525)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49690 (_ BitVec 64) (_ BitVec 32) List!17036) Unit!29525)

(assert (=> b!864035 (= lt!390886 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17033))))

(assert (=> b!864035 false))

(declare-fun b!864036 () Bool)

(declare-fun e!481374 () Bool)

(assert (=> b!864036 (= e!481372 (not e!481374))))

(declare-fun res!587232 () Bool)

(assert (=> b!864036 (=> res!587232 e!481374)))

(assert (=> b!864036 (= res!587232 (not (validKeyInArray!0 (select (arr!23872 _keys!868) from!1053))))))

(declare-fun lt!390897 () ListLongMap!9951)

(declare-fun lt!390883 () ListLongMap!9951)

(assert (=> b!864036 (= lt!390897 lt!390883)))

(assert (=> b!864036 (= lt!390883 (+!2288 lt!390885 lt!390884))))

(assert (=> b!864036 (= lt!390897 (getCurrentListMapNoExtraKeys!2964 _keys!868 lt!390896 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864036 (= lt!390884 (tuple2!11169 k0!854 v!557))))

(assert (=> b!864036 (= lt!390885 (getCurrentListMapNoExtraKeys!2964 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390888 () Unit!29525)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!533 (array!49690 array!49692 (_ BitVec 32) (_ BitVec 32) V!27411 V!27411 (_ BitVec 32) (_ BitVec 64) V!27411 (_ BitVec 32) Int) Unit!29525)

(assert (=> b!864036 (= lt!390888 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!533 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864037 () Bool)

(declare-fun res!587227 () Bool)

(assert (=> b!864037 (=> (not res!587227) (not e!481379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49690 (_ BitVec 32)) Bool)

(assert (=> b!864037 (= res!587227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864038 () Bool)

(declare-fun res!587229 () Bool)

(assert (=> b!864038 (=> (not res!587229) (not e!481379))))

(assert (=> b!864038 (= res!587229 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17033))))

(declare-fun b!864039 () Bool)

(declare-fun Unit!29528 () Unit!29525)

(assert (=> b!864039 (= e!481373 Unit!29528)))

(declare-fun b!864040 () Bool)

(assert (=> b!864040 (= e!481374 e!481376)))

(declare-fun res!587224 () Bool)

(assert (=> b!864040 (=> res!587224 e!481376)))

(assert (=> b!864040 (= res!587224 (= k0!854 (select (arr!23872 _keys!868) from!1053)))))

(assert (=> b!864040 (not (= (select (arr!23872 _keys!868) from!1053) k0!854))))

(declare-fun lt!390890 () Unit!29525)

(assert (=> b!864040 (= lt!390890 e!481373)))

(declare-fun c!92094 () Bool)

(assert (=> b!864040 (= c!92094 (= (select (arr!23872 _keys!868) from!1053) k0!854))))

(assert (=> b!864040 (= lt!390893 lt!390894)))

(assert (=> b!864040 (= lt!390894 (+!2288 lt!390883 lt!390892))))

(assert (=> b!864040 (= lt!390892 (tuple2!11169 (select (arr!23872 _keys!868) from!1053) lt!390891))))

(declare-fun get!12622 (ValueCell!7947 V!27411) V!27411)

(declare-fun dynLambda!1160 (Int (_ BitVec 64)) V!27411)

(assert (=> b!864040 (= lt!390891 (get!12622 (select (arr!23873 _values!688) from!1053) (dynLambda!1160 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!73750 res!587222) b!864028))

(assert (= (and b!864028 res!587230) b!864030))

(assert (= (and b!864030 res!587226) b!864037))

(assert (= (and b!864037 res!587227) b!864038))

(assert (= (and b!864038 res!587229) b!864025))

(assert (= (and b!864025 res!587223) b!864031))

(assert (= (and b!864031 res!587225) b!864032))

(assert (= (and b!864032 res!587231) b!864029))

(assert (= (and b!864029 res!587228) b!864036))

(assert (= (and b!864036 (not res!587232)) b!864040))

(assert (= (and b!864040 c!92094) b!864035))

(assert (= (and b!864040 (not c!92094)) b!864039))

(assert (= (and b!864040 (not res!587224)) b!864034))

(assert (= (and b!864033 condMapEmpty!26759) mapIsEmpty!26759))

(assert (= (and b!864033 (not condMapEmpty!26759)) mapNonEmpty!26759))

(get-info :version)

(assert (= (and mapNonEmpty!26759 ((_ is ValueCellFull!7947) mapValue!26759)) b!864027))

(assert (= (and b!864033 ((_ is ValueCellFull!7947) mapDefault!26759)) b!864026))

(assert (= start!73750 b!864033))

(declare-fun b_lambda!12019 () Bool)

(assert (=> (not b_lambda!12019) (not b!864040)))

(declare-fun t!23945 () Bool)

(declare-fun tb!4767 () Bool)

(assert (=> (and start!73750 (= defaultEntry!696 defaultEntry!696) t!23945) tb!4767))

(declare-fun result!9137 () Bool)

(assert (=> tb!4767 (= result!9137 tp_is_empty!16773)))

(assert (=> b!864040 t!23945))

(declare-fun b_and!24273 () Bool)

(assert (= b_and!24271 (and (=> t!23945 result!9137) b_and!24273)))

(declare-fun m!805427 () Bool)

(assert (=> b!864031 m!805427))

(declare-fun m!805429 () Bool)

(assert (=> b!864036 m!805429))

(declare-fun m!805431 () Bool)

(assert (=> b!864036 m!805431))

(declare-fun m!805433 () Bool)

(assert (=> b!864036 m!805433))

(declare-fun m!805435 () Bool)

(assert (=> b!864036 m!805435))

(assert (=> b!864036 m!805431))

(declare-fun m!805437 () Bool)

(assert (=> b!864036 m!805437))

(declare-fun m!805439 () Bool)

(assert (=> b!864036 m!805439))

(declare-fun m!805441 () Bool)

(assert (=> b!864029 m!805441))

(declare-fun m!805443 () Bool)

(assert (=> b!864029 m!805443))

(declare-fun m!805445 () Bool)

(assert (=> b!864029 m!805445))

(declare-fun m!805447 () Bool)

(assert (=> mapNonEmpty!26759 m!805447))

(declare-fun m!805449 () Bool)

(assert (=> start!73750 m!805449))

(declare-fun m!805451 () Bool)

(assert (=> start!73750 m!805451))

(declare-fun m!805453 () Bool)

(assert (=> b!864034 m!805453))

(assert (=> b!864034 m!805453))

(declare-fun m!805455 () Bool)

(assert (=> b!864034 m!805455))

(assert (=> b!864034 m!805431))

(assert (=> b!864034 m!805431))

(declare-fun m!805457 () Bool)

(assert (=> b!864034 m!805457))

(declare-fun m!805459 () Bool)

(assert (=> b!864038 m!805459))

(declare-fun m!805461 () Bool)

(assert (=> b!864032 m!805461))

(declare-fun m!805463 () Bool)

(assert (=> b!864040 m!805463))

(declare-fun m!805465 () Bool)

(assert (=> b!864040 m!805465))

(declare-fun m!805467 () Bool)

(assert (=> b!864040 m!805467))

(declare-fun m!805469 () Bool)

(assert (=> b!864040 m!805469))

(assert (=> b!864040 m!805465))

(assert (=> b!864040 m!805431))

(assert (=> b!864040 m!805467))

(declare-fun m!805471 () Bool)

(assert (=> b!864037 m!805471))

(declare-fun m!805473 () Bool)

(assert (=> b!864028 m!805473))

(declare-fun m!805475 () Bool)

(assert (=> b!864035 m!805475))

(declare-fun m!805477 () Bool)

(assert (=> b!864035 m!805477))

(declare-fun m!805479 () Bool)

(assert (=> b!864035 m!805479))

(declare-fun m!805481 () Bool)

(assert (=> b!864035 m!805481))

(declare-fun m!805483 () Bool)

(assert (=> b!864035 m!805483))

(check-sat (not b!864035) (not b!864037) (not b!864029) (not mapNonEmpty!26759) (not b_lambda!12019) (not b!864028) (not b!864036) (not b!864031) tp_is_empty!16773 (not b!864034) (not b_next!14637) (not b!864040) (not start!73750) (not b!864038) b_and!24273)
(check-sat b_and!24273 (not b_next!14637))
