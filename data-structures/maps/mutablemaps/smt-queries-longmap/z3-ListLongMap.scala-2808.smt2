; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40768 () Bool)

(assert start!40768)

(declare-fun b_free!10749 () Bool)

(declare-fun b_next!10749 () Bool)

(assert (=> start!40768 (= b_free!10749 (not b_next!10749))))

(declare-fun tp!38070 () Bool)

(declare-fun b_and!18803 () Bool)

(assert (=> start!40768 (= tp!38070 b_and!18803)))

(declare-fun b!451273 () Bool)

(declare-fun e!264363 () Bool)

(declare-fun tp_is_empty!12087 () Bool)

(assert (=> b!451273 (= e!264363 tp_is_empty!12087)))

(declare-fun b!451274 () Bool)

(declare-fun res!268760 () Bool)

(declare-fun e!264360 () Bool)

(assert (=> b!451274 (=> (not res!268760) (not e!264360))))

(declare-datatypes ((array!27943 0))(
  ( (array!27944 (arr!13413 (Array (_ BitVec 32) (_ BitVec 64))) (size!13765 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27943)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451274 (= res!268760 (or (= (select (arr!13413 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13413 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((V!17221 0))(
  ( (V!17222 (val!6088 Int)) )
))
(declare-datatypes ((tuple2!7950 0))(
  ( (tuple2!7951 (_1!3985 (_ BitVec 64)) (_2!3985 V!17221)) )
))
(declare-datatypes ((List!8056 0))(
  ( (Nil!8053) (Cons!8052 (h!8908 tuple2!7950) (t!13836 List!8056)) )
))
(declare-datatypes ((ListLongMap!6877 0))(
  ( (ListLongMap!6878 (toList!3454 List!8056)) )
))
(declare-fun call!29857 () ListLongMap!6877)

(declare-fun minValue!515 () V!17221)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!55997 () Bool)

(declare-datatypes ((ValueCell!5700 0))(
  ( (ValueCellFull!5700 (v!8343 V!17221)) (EmptyCell!5700) )
))
(declare-datatypes ((array!27945 0))(
  ( (array!27946 (arr!13414 (Array (_ BitVec 32) ValueCell!5700)) (size!13766 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27945)

(declare-fun zeroValue!515 () V!17221)

(declare-fun bm!29854 () Bool)

(declare-fun lt!204898 () array!27943)

(declare-fun lt!204900 () array!27945)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1631 (array!27943 array!27945 (_ BitVec 32) (_ BitVec 32) V!17221 V!17221 (_ BitVec 32) Int) ListLongMap!6877)

(assert (=> bm!29854 (= call!29857 (getCurrentListMapNoExtraKeys!1631 (ite c!55997 lt!204898 _keys!709) (ite c!55997 lt!204900 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451275 () Bool)

(declare-fun res!268751 () Bool)

(assert (=> b!451275 (=> (not res!268751) (not e!264360))))

(declare-datatypes ((List!8057 0))(
  ( (Nil!8054) (Cons!8053 (h!8909 (_ BitVec 64)) (t!13837 List!8057)) )
))
(declare-fun arrayNoDuplicates!0 (array!27943 (_ BitVec 32) List!8057) Bool)

(assert (=> b!451275 (= res!268751 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8054))))

(declare-fun b!451276 () Bool)

(declare-fun e!264364 () Bool)

(assert (=> b!451276 (= e!264364 tp_is_empty!12087)))

(declare-fun b!451277 () Bool)

(declare-fun res!268756 () Bool)

(declare-fun e!264358 () Bool)

(assert (=> b!451277 (=> (not res!268756) (not e!264358))))

(assert (=> b!451277 (= res!268756 (bvsle from!863 i!563))))

(declare-fun b!451278 () Bool)

(declare-fun e!264366 () Bool)

(assert (=> b!451278 (= e!264358 e!264366)))

(declare-fun res!268757 () Bool)

(assert (=> b!451278 (=> (not res!268757) (not e!264366))))

(assert (=> b!451278 (= res!268757 (= from!863 i!563))))

(declare-fun lt!204899 () ListLongMap!6877)

(assert (=> b!451278 (= lt!204899 (getCurrentListMapNoExtraKeys!1631 lt!204898 lt!204900 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17221)

(assert (=> b!451278 (= lt!204900 (array!27946 (store (arr!13414 _values!549) i!563 (ValueCellFull!5700 v!412)) (size!13766 _values!549)))))

(declare-fun lt!204896 () ListLongMap!6877)

(assert (=> b!451278 (= lt!204896 (getCurrentListMapNoExtraKeys!1631 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451279 () Bool)

(declare-fun e!264359 () Bool)

(assert (=> b!451279 (= e!264359 (bvslt i!563 (size!13766 _values!549)))))

(declare-fun +!1522 (ListLongMap!6877 tuple2!7950) ListLongMap!6877)

(declare-fun get!6613 (ValueCell!5700 V!17221) V!17221)

(declare-fun dynLambda!846 (Int (_ BitVec 64)) V!17221)

(assert (=> b!451279 (= lt!204899 (+!1522 (getCurrentListMapNoExtraKeys!1631 lt!204898 lt!204900 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7951 (select (arr!13413 lt!204898) from!863) (get!6613 (select (arr!13414 lt!204900) from!863) (dynLambda!846 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451280 () Bool)

(declare-fun res!268749 () Bool)

(assert (=> b!451280 (=> (not res!268749) (not e!264360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27943 (_ BitVec 32)) Bool)

(assert (=> b!451280 (= res!268749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19767 () Bool)

(declare-fun mapRes!19767 () Bool)

(assert (=> mapIsEmpty!19767 mapRes!19767))

(declare-fun b!451282 () Bool)

(declare-fun res!268754 () Bool)

(assert (=> b!451282 (=> (not res!268754) (not e!264358))))

(assert (=> b!451282 (= res!268754 (arrayNoDuplicates!0 lt!204898 #b00000000000000000000000000000000 Nil!8054))))

(declare-fun b!451283 () Bool)

(declare-fun res!268755 () Bool)

(assert (=> b!451283 (=> (not res!268755) (not e!264360))))

(assert (=> b!451283 (= res!268755 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13765 _keys!709))))))

(declare-fun b!451284 () Bool)

(declare-fun e!264362 () Bool)

(declare-fun call!29858 () ListLongMap!6877)

(assert (=> b!451284 (= e!264362 (= call!29858 call!29857))))

(declare-fun b!451285 () Bool)

(declare-fun res!268752 () Bool)

(assert (=> b!451285 (=> (not res!268752) (not e!264360))))

(assert (=> b!451285 (= res!268752 (and (= (size!13766 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13765 _keys!709) (size!13766 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451286 () Bool)

(declare-fun res!268759 () Bool)

(assert (=> b!451286 (=> (not res!268759) (not e!264360))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451286 (= res!268759 (validKeyInArray!0 k0!794))))

(declare-fun bm!29855 () Bool)

(assert (=> bm!29855 (= call!29858 (getCurrentListMapNoExtraKeys!1631 (ite c!55997 _keys!709 lt!204898) (ite c!55997 _values!549 lt!204900) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451287 () Bool)

(declare-fun e!264365 () Bool)

(assert (=> b!451287 (= e!264365 (and e!264364 mapRes!19767))))

(declare-fun condMapEmpty!19767 () Bool)

(declare-fun mapDefault!19767 () ValueCell!5700)

(assert (=> b!451287 (= condMapEmpty!19767 (= (arr!13414 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5700)) mapDefault!19767)))))

(declare-fun b!451288 () Bool)

(assert (=> b!451288 (= e!264360 e!264358)))

(declare-fun res!268758 () Bool)

(assert (=> b!451288 (=> (not res!268758) (not e!264358))))

(assert (=> b!451288 (= res!268758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204898 mask!1025))))

(assert (=> b!451288 (= lt!204898 (array!27944 (store (arr!13413 _keys!709) i!563 k0!794) (size!13765 _keys!709)))))

(declare-fun b!451289 () Bool)

(assert (=> b!451289 (= e!264362 (= call!29857 (+!1522 call!29858 (tuple2!7951 k0!794 v!412))))))

(declare-fun b!451290 () Bool)

(declare-fun res!268748 () Bool)

(assert (=> b!451290 (=> (not res!268748) (not e!264360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451290 (= res!268748 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19767 () Bool)

(declare-fun tp!38069 () Bool)

(assert (=> mapNonEmpty!19767 (= mapRes!19767 (and tp!38069 e!264363))))

(declare-fun mapRest!19767 () (Array (_ BitVec 32) ValueCell!5700))

(declare-fun mapKey!19767 () (_ BitVec 32))

(declare-fun mapValue!19767 () ValueCell!5700)

(assert (=> mapNonEmpty!19767 (= (arr!13414 _values!549) (store mapRest!19767 mapKey!19767 mapValue!19767))))

(declare-fun b!451291 () Bool)

(declare-fun res!268750 () Bool)

(assert (=> b!451291 (=> (not res!268750) (not e!264360))))

(declare-fun arrayContainsKey!0 (array!27943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451291 (= res!268750 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!268753 () Bool)

(assert (=> start!40768 (=> (not res!268753) (not e!264360))))

(assert (=> start!40768 (= res!268753 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13765 _keys!709))))))

(assert (=> start!40768 e!264360))

(assert (=> start!40768 tp_is_empty!12087))

(assert (=> start!40768 tp!38070))

(assert (=> start!40768 true))

(declare-fun array_inv!9708 (array!27945) Bool)

(assert (=> start!40768 (and (array_inv!9708 _values!549) e!264365)))

(declare-fun array_inv!9709 (array!27943) Bool)

(assert (=> start!40768 (array_inv!9709 _keys!709)))

(declare-fun b!451281 () Bool)

(assert (=> b!451281 (= e!264366 (not e!264359))))

(declare-fun res!268747 () Bool)

(assert (=> b!451281 (=> res!268747 e!264359)))

(assert (=> b!451281 (= res!268747 (validKeyInArray!0 (select (arr!13413 _keys!709) from!863)))))

(assert (=> b!451281 e!264362))

(assert (=> b!451281 (= c!55997 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13149 0))(
  ( (Unit!13150) )
))
(declare-fun lt!204897 () Unit!13149)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!693 (array!27943 array!27945 (_ BitVec 32) (_ BitVec 32) V!17221 V!17221 (_ BitVec 32) (_ BitVec 64) V!17221 (_ BitVec 32) Int) Unit!13149)

(assert (=> b!451281 (= lt!204897 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!693 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!40768 res!268753) b!451290))

(assert (= (and b!451290 res!268748) b!451285))

(assert (= (and b!451285 res!268752) b!451280))

(assert (= (and b!451280 res!268749) b!451275))

(assert (= (and b!451275 res!268751) b!451283))

(assert (= (and b!451283 res!268755) b!451286))

(assert (= (and b!451286 res!268759) b!451274))

(assert (= (and b!451274 res!268760) b!451291))

(assert (= (and b!451291 res!268750) b!451288))

(assert (= (and b!451288 res!268758) b!451282))

(assert (= (and b!451282 res!268754) b!451277))

(assert (= (and b!451277 res!268756) b!451278))

(assert (= (and b!451278 res!268757) b!451281))

(assert (= (and b!451281 c!55997) b!451289))

(assert (= (and b!451281 (not c!55997)) b!451284))

(assert (= (or b!451289 b!451284) bm!29854))

(assert (= (or b!451289 b!451284) bm!29855))

(assert (= (and b!451281 (not res!268747)) b!451279))

(assert (= (and b!451287 condMapEmpty!19767) mapIsEmpty!19767))

(assert (= (and b!451287 (not condMapEmpty!19767)) mapNonEmpty!19767))

(get-info :version)

(assert (= (and mapNonEmpty!19767 ((_ is ValueCellFull!5700) mapValue!19767)) b!451273))

(assert (= (and b!451287 ((_ is ValueCellFull!5700) mapDefault!19767)) b!451276))

(assert (= start!40768 b!451287))

(declare-fun b_lambda!9557 () Bool)

(assert (=> (not b_lambda!9557) (not b!451279)))

(declare-fun t!13835 () Bool)

(declare-fun tb!3737 () Bool)

(assert (=> (and start!40768 (= defaultEntry!557 defaultEntry!557) t!13835) tb!3737))

(declare-fun result!7003 () Bool)

(assert (=> tb!3737 (= result!7003 tp_is_empty!12087)))

(assert (=> b!451279 t!13835))

(declare-fun b_and!18805 () Bool)

(assert (= b_and!18803 (and (=> t!13835 result!7003) b_and!18805)))

(declare-fun m!435079 () Bool)

(assert (=> bm!29855 m!435079))

(declare-fun m!435081 () Bool)

(assert (=> b!451288 m!435081))

(declare-fun m!435083 () Bool)

(assert (=> b!451288 m!435083))

(declare-fun m!435085 () Bool)

(assert (=> b!451281 m!435085))

(assert (=> b!451281 m!435085))

(declare-fun m!435087 () Bool)

(assert (=> b!451281 m!435087))

(declare-fun m!435089 () Bool)

(assert (=> b!451281 m!435089))

(declare-fun m!435091 () Bool)

(assert (=> b!451282 m!435091))

(declare-fun m!435093 () Bool)

(assert (=> b!451274 m!435093))

(declare-fun m!435095 () Bool)

(assert (=> b!451289 m!435095))

(declare-fun m!435097 () Bool)

(assert (=> b!451286 m!435097))

(declare-fun m!435099 () Bool)

(assert (=> start!40768 m!435099))

(declare-fun m!435101 () Bool)

(assert (=> start!40768 m!435101))

(declare-fun m!435103 () Bool)

(assert (=> b!451291 m!435103))

(declare-fun m!435105 () Bool)

(assert (=> b!451278 m!435105))

(declare-fun m!435107 () Bool)

(assert (=> b!451278 m!435107))

(declare-fun m!435109 () Bool)

(assert (=> b!451278 m!435109))

(declare-fun m!435111 () Bool)

(assert (=> b!451280 m!435111))

(declare-fun m!435113 () Bool)

(assert (=> mapNonEmpty!19767 m!435113))

(declare-fun m!435115 () Bool)

(assert (=> b!451279 m!435115))

(declare-fun m!435117 () Bool)

(assert (=> b!451279 m!435117))

(assert (=> b!451279 m!435117))

(declare-fun m!435119 () Bool)

(assert (=> b!451279 m!435119))

(declare-fun m!435121 () Bool)

(assert (=> b!451279 m!435121))

(declare-fun m!435123 () Bool)

(assert (=> b!451279 m!435123))

(assert (=> b!451279 m!435121))

(assert (=> b!451279 m!435115))

(declare-fun m!435125 () Bool)

(assert (=> b!451279 m!435125))

(declare-fun m!435127 () Bool)

(assert (=> b!451275 m!435127))

(declare-fun m!435129 () Bool)

(assert (=> bm!29854 m!435129))

(declare-fun m!435131 () Bool)

(assert (=> b!451290 m!435131))

(check-sat (not b!451281) (not b!451288) (not b!451291) (not bm!29855) (not b_next!10749) (not b!451290) (not b!451286) tp_is_empty!12087 (not mapNonEmpty!19767) (not start!40768) (not b!451278) (not b!451280) b_and!18805 (not b!451282) (not b_lambda!9557) (not b!451275) (not bm!29854) (not b!451279) (not b!451289))
(check-sat b_and!18805 (not b_next!10749))
