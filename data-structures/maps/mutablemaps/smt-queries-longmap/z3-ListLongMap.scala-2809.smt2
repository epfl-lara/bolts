; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40774 () Bool)

(assert start!40774)

(declare-fun b_free!10755 () Bool)

(declare-fun b_next!10755 () Bool)

(assert (=> start!40774 (= b_free!10755 (not b_next!10755))))

(declare-fun tp!38087 () Bool)

(declare-fun b_and!18815 () Bool)

(assert (=> start!40774 (= tp!38087 b_and!18815)))

(declare-fun c!56006 () Bool)

(declare-datatypes ((V!17229 0))(
  ( (V!17230 (val!6091 Int)) )
))
(declare-fun minValue!515 () V!17229)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!29872 () Bool)

(declare-datatypes ((ValueCell!5703 0))(
  ( (ValueCellFull!5703 (v!8346 V!17229)) (EmptyCell!5703) )
))
(declare-datatypes ((array!27955 0))(
  ( (array!27956 (arr!13419 (Array (_ BitVec 32) ValueCell!5703)) (size!13771 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27955)

(declare-datatypes ((array!27957 0))(
  ( (array!27958 (arr!13420 (Array (_ BitVec 32) (_ BitVec 64))) (size!13772 (_ BitVec 32))) )
))
(declare-fun lt!204942 () array!27957)

(declare-fun zeroValue!515 () V!17229)

(declare-fun lt!204945 () array!27955)

(declare-datatypes ((tuple2!7956 0))(
  ( (tuple2!7957 (_1!3988 (_ BitVec 64)) (_2!3988 V!17229)) )
))
(declare-datatypes ((List!8062 0))(
  ( (Nil!8059) (Cons!8058 (h!8914 tuple2!7956) (t!13848 List!8062)) )
))
(declare-datatypes ((ListLongMap!6883 0))(
  ( (ListLongMap!6884 (toList!3457 List!8062)) )
))
(declare-fun call!29875 () ListLongMap!6883)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27957)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1634 (array!27957 array!27955 (_ BitVec 32) (_ BitVec 32) V!17229 V!17229 (_ BitVec 32) Int) ListLongMap!6883)

(assert (=> bm!29872 (= call!29875 (getCurrentListMapNoExtraKeys!1634 (ite c!56006 lt!204942 _keys!709) (ite c!56006 lt!204945 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451450 () Bool)

(declare-fun res!268873 () Bool)

(declare-fun e!264443 () Bool)

(assert (=> b!451450 (=> (not res!268873) (not e!264443))))

(assert (=> b!451450 (= res!268873 (and (= (size!13771 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13772 _keys!709) (size!13771 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19776 () Bool)

(declare-fun mapRes!19776 () Bool)

(assert (=> mapIsEmpty!19776 mapRes!19776))

(declare-fun b!451451 () Bool)

(declare-fun res!268883 () Bool)

(assert (=> b!451451 (=> (not res!268883) (not e!264443))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27957 (_ BitVec 32)) Bool)

(assert (=> b!451451 (= res!268883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!451452 () Bool)

(declare-fun res!268875 () Bool)

(declare-fun e!264439 () Bool)

(assert (=> b!451452 (=> (not res!268875) (not e!264439))))

(declare-datatypes ((List!8063 0))(
  ( (Nil!8060) (Cons!8059 (h!8915 (_ BitVec 64)) (t!13849 List!8063)) )
))
(declare-fun arrayNoDuplicates!0 (array!27957 (_ BitVec 32) List!8063) Bool)

(assert (=> b!451452 (= res!268875 (arrayNoDuplicates!0 lt!204942 #b00000000000000000000000000000000 Nil!8060))))

(declare-fun b!451453 () Bool)

(declare-fun res!268885 () Bool)

(assert (=> b!451453 (=> (not res!268885) (not e!264443))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451453 (= res!268885 (validKeyInArray!0 k0!794))))

(declare-fun b!451454 () Bool)

(declare-fun res!268881 () Bool)

(assert (=> b!451454 (=> (not res!268881) (not e!264443))))

(declare-fun arrayContainsKey!0 (array!27957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451454 (= res!268881 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!268878 () Bool)

(assert (=> start!40774 (=> (not res!268878) (not e!264443))))

(assert (=> start!40774 (= res!268878 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13772 _keys!709))))))

(assert (=> start!40774 e!264443))

(declare-fun tp_is_empty!12093 () Bool)

(assert (=> start!40774 tp_is_empty!12093))

(assert (=> start!40774 tp!38087))

(assert (=> start!40774 true))

(declare-fun e!264444 () Bool)

(declare-fun array_inv!9714 (array!27955) Bool)

(assert (=> start!40774 (and (array_inv!9714 _values!549) e!264444)))

(declare-fun array_inv!9715 (array!27957) Bool)

(assert (=> start!40774 (array_inv!9715 _keys!709)))

(declare-fun b!451455 () Bool)

(declare-fun e!264447 () Bool)

(assert (=> b!451455 (= e!264444 (and e!264447 mapRes!19776))))

(declare-fun condMapEmpty!19776 () Bool)

(declare-fun mapDefault!19776 () ValueCell!5703)

(assert (=> b!451455 (= condMapEmpty!19776 (= (arr!13419 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5703)) mapDefault!19776)))))

(declare-fun bm!29873 () Bool)

(declare-fun call!29876 () ListLongMap!6883)

(assert (=> bm!29873 (= call!29876 (getCurrentListMapNoExtraKeys!1634 (ite c!56006 _keys!709 lt!204942) (ite c!56006 _values!549 lt!204945) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451456 () Bool)

(declare-fun res!268882 () Bool)

(assert (=> b!451456 (=> (not res!268882) (not e!264439))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451456 (= res!268882 (bvsle from!863 i!563))))

(declare-fun b!451457 () Bool)

(declare-fun e!264441 () Bool)

(assert (=> b!451457 (= e!264439 e!264441)))

(declare-fun res!268880 () Bool)

(assert (=> b!451457 (=> (not res!268880) (not e!264441))))

(assert (=> b!451457 (= res!268880 (= from!863 i!563))))

(declare-fun lt!204943 () ListLongMap!6883)

(assert (=> b!451457 (= lt!204943 (getCurrentListMapNoExtraKeys!1634 lt!204942 lt!204945 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17229)

(assert (=> b!451457 (= lt!204945 (array!27956 (store (arr!13419 _values!549) i!563 (ValueCellFull!5703 v!412)) (size!13771 _values!549)))))

(declare-fun lt!204944 () ListLongMap!6883)

(assert (=> b!451457 (= lt!204944 (getCurrentListMapNoExtraKeys!1634 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19776 () Bool)

(declare-fun tp!38088 () Bool)

(declare-fun e!264442 () Bool)

(assert (=> mapNonEmpty!19776 (= mapRes!19776 (and tp!38088 e!264442))))

(declare-fun mapKey!19776 () (_ BitVec 32))

(declare-fun mapValue!19776 () ValueCell!5703)

(declare-fun mapRest!19776 () (Array (_ BitVec 32) ValueCell!5703))

(assert (=> mapNonEmpty!19776 (= (arr!13419 _values!549) (store mapRest!19776 mapKey!19776 mapValue!19776))))

(declare-fun b!451458 () Bool)

(assert (=> b!451458 (= e!264447 tp_is_empty!12093)))

(declare-fun b!451459 () Bool)

(assert (=> b!451459 (= e!264442 tp_is_empty!12093)))

(declare-fun b!451460 () Bool)

(declare-fun res!268879 () Bool)

(assert (=> b!451460 (=> (not res!268879) (not e!264443))))

(assert (=> b!451460 (= res!268879 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13772 _keys!709))))))

(declare-fun b!451461 () Bool)

(declare-fun res!268877 () Bool)

(assert (=> b!451461 (=> (not res!268877) (not e!264443))))

(assert (=> b!451461 (= res!268877 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8060))))

(declare-fun b!451462 () Bool)

(declare-fun res!268886 () Bool)

(assert (=> b!451462 (=> (not res!268886) (not e!264443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451462 (= res!268886 (validMask!0 mask!1025))))

(declare-fun b!451463 () Bool)

(declare-fun e!264446 () Bool)

(declare-fun +!1525 (ListLongMap!6883 tuple2!7956) ListLongMap!6883)

(assert (=> b!451463 (= e!264446 (= call!29875 (+!1525 call!29876 (tuple2!7957 k0!794 v!412))))))

(declare-fun b!451464 () Bool)

(declare-fun res!268876 () Bool)

(assert (=> b!451464 (=> (not res!268876) (not e!264443))))

(assert (=> b!451464 (= res!268876 (or (= (select (arr!13420 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13420 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451465 () Bool)

(declare-fun e!264445 () Bool)

(assert (=> b!451465 (= e!264441 (not e!264445))))

(declare-fun res!268884 () Bool)

(assert (=> b!451465 (=> res!268884 e!264445)))

(assert (=> b!451465 (= res!268884 (validKeyInArray!0 (select (arr!13420 _keys!709) from!863)))))

(assert (=> b!451465 e!264446))

(assert (=> b!451465 (= c!56006 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13155 0))(
  ( (Unit!13156) )
))
(declare-fun lt!204941 () Unit!13155)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!696 (array!27957 array!27955 (_ BitVec 32) (_ BitVec 32) V!17229 V!17229 (_ BitVec 32) (_ BitVec 64) V!17229 (_ BitVec 32) Int) Unit!13155)

(assert (=> b!451465 (= lt!204941 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!696 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451466 () Bool)

(assert (=> b!451466 (= e!264443 e!264439)))

(declare-fun res!268874 () Bool)

(assert (=> b!451466 (=> (not res!268874) (not e!264439))))

(assert (=> b!451466 (= res!268874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204942 mask!1025))))

(assert (=> b!451466 (= lt!204942 (array!27958 (store (arr!13420 _keys!709) i!563 k0!794) (size!13772 _keys!709)))))

(declare-fun b!451467 () Bool)

(assert (=> b!451467 (= e!264445 true)))

(declare-fun get!6618 (ValueCell!5703 V!17229) V!17229)

(declare-fun dynLambda!849 (Int (_ BitVec 64)) V!17229)

(assert (=> b!451467 (= lt!204943 (+!1525 (getCurrentListMapNoExtraKeys!1634 lt!204942 lt!204945 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7957 (select (arr!13420 lt!204942) from!863) (get!6618 (select (arr!13419 lt!204945) from!863) (dynLambda!849 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451468 () Bool)

(assert (=> b!451468 (= e!264446 (= call!29876 call!29875))))

(assert (= (and start!40774 res!268878) b!451462))

(assert (= (and b!451462 res!268886) b!451450))

(assert (= (and b!451450 res!268873) b!451451))

(assert (= (and b!451451 res!268883) b!451461))

(assert (= (and b!451461 res!268877) b!451460))

(assert (= (and b!451460 res!268879) b!451453))

(assert (= (and b!451453 res!268885) b!451464))

(assert (= (and b!451464 res!268876) b!451454))

(assert (= (and b!451454 res!268881) b!451466))

(assert (= (and b!451466 res!268874) b!451452))

(assert (= (and b!451452 res!268875) b!451456))

(assert (= (and b!451456 res!268882) b!451457))

(assert (= (and b!451457 res!268880) b!451465))

(assert (= (and b!451465 c!56006) b!451463))

(assert (= (and b!451465 (not c!56006)) b!451468))

(assert (= (or b!451463 b!451468) bm!29872))

(assert (= (or b!451463 b!451468) bm!29873))

(assert (= (and b!451465 (not res!268884)) b!451467))

(assert (= (and b!451455 condMapEmpty!19776) mapIsEmpty!19776))

(assert (= (and b!451455 (not condMapEmpty!19776)) mapNonEmpty!19776))

(get-info :version)

(assert (= (and mapNonEmpty!19776 ((_ is ValueCellFull!5703) mapValue!19776)) b!451459))

(assert (= (and b!451455 ((_ is ValueCellFull!5703) mapDefault!19776)) b!451458))

(assert (= start!40774 b!451455))

(declare-fun b_lambda!9563 () Bool)

(assert (=> (not b_lambda!9563) (not b!451467)))

(declare-fun t!13847 () Bool)

(declare-fun tb!3743 () Bool)

(assert (=> (and start!40774 (= defaultEntry!557 defaultEntry!557) t!13847) tb!3743))

(declare-fun result!7015 () Bool)

(assert (=> tb!3743 (= result!7015 tp_is_empty!12093)))

(assert (=> b!451467 t!13847))

(declare-fun b_and!18817 () Bool)

(assert (= b_and!18815 (and (=> t!13847 result!7015) b_and!18817)))

(declare-fun m!435241 () Bool)

(assert (=> b!451463 m!435241))

(declare-fun m!435243 () Bool)

(assert (=> b!451457 m!435243))

(declare-fun m!435245 () Bool)

(assert (=> b!451457 m!435245))

(declare-fun m!435247 () Bool)

(assert (=> b!451457 m!435247))

(declare-fun m!435249 () Bool)

(assert (=> b!451454 m!435249))

(declare-fun m!435251 () Bool)

(assert (=> b!451461 m!435251))

(declare-fun m!435253 () Bool)

(assert (=> b!451451 m!435253))

(declare-fun m!435255 () Bool)

(assert (=> b!451467 m!435255))

(declare-fun m!435257 () Bool)

(assert (=> b!451467 m!435257))

(declare-fun m!435259 () Bool)

(assert (=> b!451467 m!435259))

(declare-fun m!435261 () Bool)

(assert (=> b!451467 m!435261))

(assert (=> b!451467 m!435255))

(assert (=> b!451467 m!435257))

(declare-fun m!435263 () Bool)

(assert (=> b!451467 m!435263))

(assert (=> b!451467 m!435261))

(declare-fun m!435265 () Bool)

(assert (=> b!451467 m!435265))

(declare-fun m!435267 () Bool)

(assert (=> bm!29872 m!435267))

(declare-fun m!435269 () Bool)

(assert (=> b!451464 m!435269))

(declare-fun m!435271 () Bool)

(assert (=> mapNonEmpty!19776 m!435271))

(declare-fun m!435273 () Bool)

(assert (=> b!451462 m!435273))

(declare-fun m!435275 () Bool)

(assert (=> b!451452 m!435275))

(declare-fun m!435277 () Bool)

(assert (=> b!451453 m!435277))

(declare-fun m!435279 () Bool)

(assert (=> b!451466 m!435279))

(declare-fun m!435281 () Bool)

(assert (=> b!451466 m!435281))

(declare-fun m!435283 () Bool)

(assert (=> bm!29873 m!435283))

(declare-fun m!435285 () Bool)

(assert (=> b!451465 m!435285))

(assert (=> b!451465 m!435285))

(declare-fun m!435287 () Bool)

(assert (=> b!451465 m!435287))

(declare-fun m!435289 () Bool)

(assert (=> b!451465 m!435289))

(declare-fun m!435291 () Bool)

(assert (=> start!40774 m!435291))

(declare-fun m!435293 () Bool)

(assert (=> start!40774 m!435293))

(check-sat (not mapNonEmpty!19776) tp_is_empty!12093 (not start!40774) (not b!451462) b_and!18817 (not b!451453) (not bm!29872) (not b_next!10755) (not b_lambda!9563) (not b!451451) (not b!451454) (not b!451463) (not b!451461) (not b!451465) (not b!451467) (not bm!29873) (not b!451457) (not b!451452) (not b!451466))
(check-sat b_and!18817 (not b_next!10755))
