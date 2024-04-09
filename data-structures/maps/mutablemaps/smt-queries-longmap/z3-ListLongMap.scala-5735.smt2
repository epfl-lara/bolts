; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74236 () Bool)

(assert start!74236)

(declare-fun b_free!15015 () Bool)

(declare-fun b_next!15015 () Bool)

(assert (=> start!74236 (= b_free!15015 (not b_next!15015))))

(declare-fun tp!52696 () Bool)

(declare-fun b_and!24785 () Bool)

(assert (=> start!74236 (= tp!52696 b_and!24785)))

(declare-fun b!872902 () Bool)

(declare-fun e!486131 () Bool)

(declare-fun e!486132 () Bool)

(declare-fun mapRes!27473 () Bool)

(assert (=> b!872902 (= e!486131 (and e!486132 mapRes!27473))))

(declare-fun condMapEmpty!27473 () Bool)

(declare-datatypes ((V!28043 0))(
  ( (V!28044 (val!8671 Int)) )
))
(declare-datatypes ((ValueCell!8184 0))(
  ( (ValueCellFull!8184 (v!11092 V!28043)) (EmptyCell!8184) )
))
(declare-datatypes ((array!50610 0))(
  ( (array!50611 (arr!24331 (Array (_ BitVec 32) ValueCell!8184)) (size!24772 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50610)

(declare-fun mapDefault!27473 () ValueCell!8184)

(assert (=> b!872902 (= condMapEmpty!27473 (= (arr!24331 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8184)) mapDefault!27473)))))

(declare-fun b!872903 () Bool)

(declare-fun res!593345 () Bool)

(declare-fun e!486128 () Bool)

(assert (=> b!872903 (=> (not res!593345) (not e!486128))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50612 0))(
  ( (array!50613 (arr!24332 (Array (_ BitVec 32) (_ BitVec 64))) (size!24773 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50612)

(assert (=> b!872903 (= res!593345 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24773 _keys!868))))))

(declare-fun v!557 () V!28043)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11458 0))(
  ( (tuple2!11459 (_1!5739 (_ BitVec 64)) (_2!5739 V!28043)) )
))
(declare-datatypes ((List!17343 0))(
  ( (Nil!17340) (Cons!17339 (h!18470 tuple2!11458) (t!24388 List!17343)) )
))
(declare-datatypes ((ListLongMap!10241 0))(
  ( (ListLongMap!10242 (toList!5136 List!17343)) )
))
(declare-fun call!38513 () ListLongMap!10241)

(declare-fun bm!38509 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28043)

(declare-fun zeroValue!654 () V!28043)

(declare-fun getCurrentListMapNoExtraKeys!3100 (array!50612 array!50610 (_ BitVec 32) (_ BitVec 32) V!28043 V!28043 (_ BitVec 32) Int) ListLongMap!10241)

(assert (=> bm!38509 (= call!38513 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872905 () Bool)

(declare-fun res!593349 () Bool)

(assert (=> b!872905 (=> (not res!593349) (not e!486128))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872905 (= res!593349 (validKeyInArray!0 k0!854))))

(declare-fun b!872906 () Bool)

(declare-fun tp_is_empty!17247 () Bool)

(assert (=> b!872906 (= e!486132 tp_is_empty!17247)))

(declare-fun mapIsEmpty!27473 () Bool)

(assert (=> mapIsEmpty!27473 mapRes!27473))

(declare-fun b!872907 () Bool)

(declare-fun e!486127 () Bool)

(declare-fun call!38512 () ListLongMap!10241)

(assert (=> b!872907 (= e!486127 (= call!38513 call!38512))))

(declare-fun b!872908 () Bool)

(declare-fun res!593344 () Bool)

(assert (=> b!872908 (=> (not res!593344) (not e!486128))))

(assert (=> b!872908 (= res!593344 (and (= (size!24772 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24773 _keys!868) (size!24772 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38510 () Bool)

(assert (=> bm!38510 (= call!38512 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872909 () Bool)

(declare-fun res!593346 () Bool)

(assert (=> b!872909 (=> (not res!593346) (not e!486128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872909 (= res!593346 (validMask!0 mask!1196))))

(declare-fun b!872910 () Bool)

(declare-fun +!2414 (ListLongMap!10241 tuple2!11458) ListLongMap!10241)

(assert (=> b!872910 (= e!486127 (= call!38513 (+!2414 call!38512 (tuple2!11459 k0!854 v!557))))))

(declare-fun b!872904 () Bool)

(declare-fun res!593347 () Bool)

(assert (=> b!872904 (=> (not res!593347) (not e!486128))))

(declare-datatypes ((List!17344 0))(
  ( (Nil!17341) (Cons!17340 (h!18471 (_ BitVec 64)) (t!24389 List!17344)) )
))
(declare-fun arrayNoDuplicates!0 (array!50612 (_ BitVec 32) List!17344) Bool)

(assert (=> b!872904 (= res!593347 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17341))))

(declare-fun res!593343 () Bool)

(assert (=> start!74236 (=> (not res!593343) (not e!486128))))

(assert (=> start!74236 (= res!593343 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24773 _keys!868))))))

(assert (=> start!74236 e!486128))

(assert (=> start!74236 tp_is_empty!17247))

(assert (=> start!74236 true))

(assert (=> start!74236 tp!52696))

(declare-fun array_inv!19178 (array!50612) Bool)

(assert (=> start!74236 (array_inv!19178 _keys!868)))

(declare-fun array_inv!19179 (array!50610) Bool)

(assert (=> start!74236 (and (array_inv!19179 _values!688) e!486131)))

(declare-fun b!872911 () Bool)

(declare-fun res!593342 () Bool)

(assert (=> b!872911 (=> (not res!593342) (not e!486128))))

(assert (=> b!872911 (= res!593342 (and (= (select (arr!24332 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!872912 () Bool)

(declare-fun e!486130 () Bool)

(assert (=> b!872912 (= e!486130 tp_is_empty!17247)))

(declare-fun b!872913 () Bool)

(assert (=> b!872913 (= e!486128 (not (= (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))))

(assert (=> b!872913 e!486127))

(declare-fun c!92334 () Bool)

(assert (=> b!872913 (= c!92334 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29882 0))(
  ( (Unit!29883) )
))
(declare-fun lt!395622 () Unit!29882)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!646 (array!50612 array!50610 (_ BitVec 32) (_ BitVec 32) V!28043 V!28043 (_ BitVec 32) (_ BitVec 64) V!28043 (_ BitVec 32) Int) Unit!29882)

(assert (=> b!872913 (= lt!395622 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!646 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27473 () Bool)

(declare-fun tp!52697 () Bool)

(assert (=> mapNonEmpty!27473 (= mapRes!27473 (and tp!52697 e!486130))))

(declare-fun mapKey!27473 () (_ BitVec 32))

(declare-fun mapValue!27473 () ValueCell!8184)

(declare-fun mapRest!27473 () (Array (_ BitVec 32) ValueCell!8184))

(assert (=> mapNonEmpty!27473 (= (arr!24331 _values!688) (store mapRest!27473 mapKey!27473 mapValue!27473))))

(declare-fun b!872914 () Bool)

(declare-fun res!593348 () Bool)

(assert (=> b!872914 (=> (not res!593348) (not e!486128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50612 (_ BitVec 32)) Bool)

(assert (=> b!872914 (= res!593348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74236 res!593343) b!872909))

(assert (= (and b!872909 res!593346) b!872908))

(assert (= (and b!872908 res!593344) b!872914))

(assert (= (and b!872914 res!593348) b!872904))

(assert (= (and b!872904 res!593347) b!872903))

(assert (= (and b!872903 res!593345) b!872905))

(assert (= (and b!872905 res!593349) b!872911))

(assert (= (and b!872911 res!593342) b!872913))

(assert (= (and b!872913 c!92334) b!872910))

(assert (= (and b!872913 (not c!92334)) b!872907))

(assert (= (or b!872910 b!872907) bm!38509))

(assert (= (or b!872910 b!872907) bm!38510))

(assert (= (and b!872902 condMapEmpty!27473) mapIsEmpty!27473))

(assert (= (and b!872902 (not condMapEmpty!27473)) mapNonEmpty!27473))

(get-info :version)

(assert (= (and mapNonEmpty!27473 ((_ is ValueCellFull!8184) mapValue!27473)) b!872912))

(assert (= (and b!872902 ((_ is ValueCellFull!8184) mapDefault!27473)) b!872906))

(assert (= start!74236 b!872902))

(declare-fun m!813583 () Bool)

(assert (=> b!872904 m!813583))

(declare-fun m!813585 () Bool)

(assert (=> b!872913 m!813585))

(declare-fun m!813587 () Bool)

(assert (=> b!872913 m!813587))

(declare-fun m!813589 () Bool)

(assert (=> b!872913 m!813589))

(declare-fun m!813591 () Bool)

(assert (=> b!872913 m!813591))

(declare-fun m!813593 () Bool)

(assert (=> b!872905 m!813593))

(declare-fun m!813595 () Bool)

(assert (=> b!872911 m!813595))

(declare-fun m!813597 () Bool)

(assert (=> start!74236 m!813597))

(declare-fun m!813599 () Bool)

(assert (=> start!74236 m!813599))

(assert (=> bm!38509 m!813585))

(declare-fun m!813601 () Bool)

(assert (=> bm!38509 m!813601))

(declare-fun m!813603 () Bool)

(assert (=> mapNonEmpty!27473 m!813603))

(declare-fun m!813605 () Bool)

(assert (=> b!872910 m!813605))

(declare-fun m!813607 () Bool)

(assert (=> bm!38510 m!813607))

(declare-fun m!813609 () Bool)

(assert (=> b!872914 m!813609))

(declare-fun m!813611 () Bool)

(assert (=> b!872909 m!813611))

(check-sat (not b!872913) (not b!872914) (not b!872904) (not bm!38510) (not bm!38509) tp_is_empty!17247 (not mapNonEmpty!27473) b_and!24785 (not b!872910) (not b!872905) (not b_next!15015) (not b!872909) (not start!74236))
(check-sat b_and!24785 (not b_next!15015))
(get-model)

(declare-fun b!872978 () Bool)

(declare-fun e!486168 () ListLongMap!10241)

(declare-fun call!38522 () ListLongMap!10241)

(assert (=> b!872978 (= e!486168 call!38522)))

(declare-fun b!872980 () Bool)

(declare-fun e!486169 () Bool)

(assert (=> b!872980 (= e!486169 (validKeyInArray!0 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!872980 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun lt!395646 () ListLongMap!10241)

(declare-fun b!872981 () Bool)

(declare-fun e!486166 () Bool)

(assert (=> b!872981 (= e!486166 (= lt!395646 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!872982 () Bool)

(declare-fun lt!395641 () Unit!29882)

(declare-fun lt!395644 () Unit!29882)

(assert (=> b!872982 (= lt!395641 lt!395644)))

(declare-fun lt!395642 () ListLongMap!10241)

(declare-fun lt!395643 () (_ BitVec 64))

(declare-fun lt!395640 () (_ BitVec 64))

(declare-fun lt!395645 () V!28043)

(declare-fun contains!4236 (ListLongMap!10241 (_ BitVec 64)) Bool)

(assert (=> b!872982 (not (contains!4236 (+!2414 lt!395642 (tuple2!11459 lt!395640 lt!395645)) lt!395643))))

(declare-fun addStillNotContains!201 (ListLongMap!10241 (_ BitVec 64) V!28043 (_ BitVec 64)) Unit!29882)

(assert (=> b!872982 (= lt!395644 (addStillNotContains!201 lt!395642 lt!395640 lt!395645 lt!395643))))

(assert (=> b!872982 (= lt!395643 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!12827 (ValueCell!8184 V!28043) V!28043)

(declare-fun dynLambda!1207 (Int (_ BitVec 64)) V!28043)

(assert (=> b!872982 (= lt!395645 (get!12827 (select (arr!24331 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!872982 (= lt!395640 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!872982 (= lt!395642 call!38522)))

(assert (=> b!872982 (= e!486168 (+!2414 call!38522 (tuple2!11459 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12827 (select (arr!24331 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!872983 () Bool)

(assert (=> b!872983 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (=> b!872983 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24772 _values!688)))))

(declare-fun e!486170 () Bool)

(declare-fun apply!374 (ListLongMap!10241 (_ BitVec 64)) V!28043)

(assert (=> b!872983 (= e!486170 (= (apply!374 lt!395646 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12827 (select (arr!24331 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!108413 () Bool)

(declare-fun e!486171 () Bool)

(assert (=> d!108413 e!486171))

(declare-fun res!593384 () Bool)

(assert (=> d!108413 (=> (not res!593384) (not e!486171))))

(assert (=> d!108413 (= res!593384 (not (contains!4236 lt!395646 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!486165 () ListLongMap!10241)

(assert (=> d!108413 (= lt!395646 e!486165)))

(declare-fun c!92346 () Bool)

(assert (=> d!108413 (= c!92346 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (=> d!108413 (validMask!0 mask!1196)))

(assert (=> d!108413 (= (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!395646)))

(declare-fun b!872979 () Bool)

(assert (=> b!872979 (= e!486165 e!486168)))

(declare-fun c!92347 () Bool)

(assert (=> b!872979 (= c!92347 (validKeyInArray!0 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!872984 () Bool)

(declare-fun e!486167 () Bool)

(assert (=> b!872984 (= e!486167 e!486170)))

(assert (=> b!872984 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(declare-fun res!593383 () Bool)

(assert (=> b!872984 (= res!593383 (contains!4236 lt!395646 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!872984 (=> (not res!593383) (not e!486170))))

(declare-fun b!872985 () Bool)

(declare-fun isEmpty!665 (ListLongMap!10241) Bool)

(assert (=> b!872985 (= e!486166 (isEmpty!665 lt!395646))))

(declare-fun b!872986 () Bool)

(assert (=> b!872986 (= e!486165 (ListLongMap!10242 Nil!17340))))

(declare-fun b!872987 () Bool)

(declare-fun res!593382 () Bool)

(assert (=> b!872987 (=> (not res!593382) (not e!486171))))

(assert (=> b!872987 (= res!593382 (not (contains!4236 lt!395646 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!872988 () Bool)

(assert (=> b!872988 (= e!486171 e!486167)))

(declare-fun c!92348 () Bool)

(assert (=> b!872988 (= c!92348 e!486169)))

(declare-fun res!593385 () Bool)

(assert (=> b!872988 (=> (not res!593385) (not e!486169))))

(assert (=> b!872988 (= res!593385 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(declare-fun bm!38519 () Bool)

(assert (=> bm!38519 (= call!38522 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!872989 () Bool)

(assert (=> b!872989 (= e!486167 e!486166)))

(declare-fun c!92349 () Bool)

(assert (=> b!872989 (= c!92349 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (= (and d!108413 c!92346) b!872986))

(assert (= (and d!108413 (not c!92346)) b!872979))

(assert (= (and b!872979 c!92347) b!872982))

(assert (= (and b!872979 (not c!92347)) b!872978))

(assert (= (or b!872982 b!872978) bm!38519))

(assert (= (and d!108413 res!593384) b!872987))

(assert (= (and b!872987 res!593382) b!872988))

(assert (= (and b!872988 res!593385) b!872980))

(assert (= (and b!872988 c!92348) b!872984))

(assert (= (and b!872988 (not c!92348)) b!872989))

(assert (= (and b!872984 res!593383) b!872983))

(assert (= (and b!872989 c!92349) b!872981))

(assert (= (and b!872989 (not c!92349)) b!872985))

(declare-fun b_lambda!12155 () Bool)

(assert (=> (not b_lambda!12155) (not b!872982)))

(declare-fun t!24392 () Bool)

(declare-fun tb!4903 () Bool)

(assert (=> (and start!74236 (= defaultEntry!696 defaultEntry!696) t!24392) tb!4903))

(declare-fun result!9411 () Bool)

(assert (=> tb!4903 (= result!9411 tp_is_empty!17247)))

(assert (=> b!872982 t!24392))

(declare-fun b_and!24789 () Bool)

(assert (= b_and!24785 (and (=> t!24392 result!9411) b_and!24789)))

(declare-fun b_lambda!12157 () Bool)

(assert (=> (not b_lambda!12157) (not b!872983)))

(assert (=> b!872983 t!24392))

(declare-fun b_and!24791 () Bool)

(assert (= b_and!24789 (and (=> t!24392 result!9411) b_and!24791)))

(declare-fun m!813643 () Bool)

(assert (=> b!872983 m!813643))

(declare-fun m!813645 () Bool)

(assert (=> b!872983 m!813645))

(declare-fun m!813647 () Bool)

(assert (=> b!872983 m!813647))

(assert (=> b!872983 m!813645))

(declare-fun m!813649 () Bool)

(assert (=> b!872983 m!813649))

(assert (=> b!872983 m!813649))

(assert (=> b!872983 m!813643))

(declare-fun m!813651 () Bool)

(assert (=> b!872983 m!813651))

(assert (=> b!872980 m!813645))

(assert (=> b!872980 m!813645))

(declare-fun m!813653 () Bool)

(assert (=> b!872980 m!813653))

(assert (=> b!872984 m!813645))

(assert (=> b!872984 m!813645))

(declare-fun m!813655 () Bool)

(assert (=> b!872984 m!813655))

(declare-fun m!813657 () Bool)

(assert (=> b!872985 m!813657))

(declare-fun m!813659 () Bool)

(assert (=> d!108413 m!813659))

(assert (=> d!108413 m!813611))

(declare-fun m!813661 () Bool)

(assert (=> b!872982 m!813661))

(declare-fun m!813663 () Bool)

(assert (=> b!872982 m!813663))

(assert (=> b!872982 m!813645))

(assert (=> b!872982 m!813661))

(declare-fun m!813665 () Bool)

(assert (=> b!872982 m!813665))

(assert (=> b!872982 m!813649))

(assert (=> b!872982 m!813649))

(assert (=> b!872982 m!813643))

(assert (=> b!872982 m!813651))

(declare-fun m!813667 () Bool)

(assert (=> b!872982 m!813667))

(assert (=> b!872982 m!813643))

(declare-fun m!813669 () Bool)

(assert (=> bm!38519 m!813669))

(assert (=> b!872979 m!813645))

(assert (=> b!872979 m!813645))

(assert (=> b!872979 m!813653))

(assert (=> b!872981 m!813669))

(declare-fun m!813671 () Bool)

(assert (=> b!872987 m!813671))

(assert (=> bm!38510 d!108413))

(declare-fun b!872992 () Bool)

(declare-fun e!486175 () ListLongMap!10241)

(declare-fun call!38523 () ListLongMap!10241)

(assert (=> b!872992 (= e!486175 call!38523)))

(declare-fun b!872994 () Bool)

(declare-fun e!486176 () Bool)

(assert (=> b!872994 (= e!486176 (validKeyInArray!0 (select (arr!24332 _keys!868) from!1053)))))

(assert (=> b!872994 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun lt!395653 () ListLongMap!10241)

(declare-fun b!872995 () Bool)

(declare-fun e!486173 () Bool)

(assert (=> b!872995 (= e!486173 (= lt!395653 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!872996 () Bool)

(declare-fun lt!395648 () Unit!29882)

(declare-fun lt!395651 () Unit!29882)

(assert (=> b!872996 (= lt!395648 lt!395651)))

(declare-fun lt!395652 () V!28043)

(declare-fun lt!395647 () (_ BitVec 64))

(declare-fun lt!395649 () ListLongMap!10241)

(declare-fun lt!395650 () (_ BitVec 64))

(assert (=> b!872996 (not (contains!4236 (+!2414 lt!395649 (tuple2!11459 lt!395647 lt!395652)) lt!395650))))

(assert (=> b!872996 (= lt!395651 (addStillNotContains!201 lt!395649 lt!395647 lt!395652 lt!395650))))

(assert (=> b!872996 (= lt!395650 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!872996 (= lt!395652 (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!872996 (= lt!395647 (select (arr!24332 _keys!868) from!1053))))

(assert (=> b!872996 (= lt!395649 call!38523)))

(assert (=> b!872996 (= e!486175 (+!2414 call!38523 (tuple2!11459 (select (arr!24332 _keys!868) from!1053) (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!872997 () Bool)

(assert (=> b!872997 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24773 _keys!868)))))

(assert (=> b!872997 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24772 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)))))))

(declare-fun e!486177 () Bool)

(assert (=> b!872997 (= e!486177 (= (apply!374 lt!395653 (select (arr!24332 _keys!868) from!1053)) (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!108415 () Bool)

(declare-fun e!486178 () Bool)

(assert (=> d!108415 e!486178))

(declare-fun res!593388 () Bool)

(assert (=> d!108415 (=> (not res!593388) (not e!486178))))

(assert (=> d!108415 (= res!593388 (not (contains!4236 lt!395653 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!486172 () ListLongMap!10241)

(assert (=> d!108415 (= lt!395653 e!486172)))

(declare-fun c!92350 () Bool)

(assert (=> d!108415 (= c!92350 (bvsge from!1053 (size!24773 _keys!868)))))

(assert (=> d!108415 (validMask!0 mask!1196)))

(assert (=> d!108415 (= (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!395653)))

(declare-fun b!872993 () Bool)

(assert (=> b!872993 (= e!486172 e!486175)))

(declare-fun c!92351 () Bool)

(assert (=> b!872993 (= c!92351 (validKeyInArray!0 (select (arr!24332 _keys!868) from!1053)))))

(declare-fun b!872998 () Bool)

(declare-fun e!486174 () Bool)

(assert (=> b!872998 (= e!486174 e!486177)))

(assert (=> b!872998 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24773 _keys!868)))))

(declare-fun res!593387 () Bool)

(assert (=> b!872998 (= res!593387 (contains!4236 lt!395653 (select (arr!24332 _keys!868) from!1053)))))

(assert (=> b!872998 (=> (not res!593387) (not e!486177))))

(declare-fun b!872999 () Bool)

(assert (=> b!872999 (= e!486173 (isEmpty!665 lt!395653))))

(declare-fun b!873000 () Bool)

(assert (=> b!873000 (= e!486172 (ListLongMap!10242 Nil!17340))))

(declare-fun b!873001 () Bool)

(declare-fun res!593386 () Bool)

(assert (=> b!873001 (=> (not res!593386) (not e!486178))))

(assert (=> b!873001 (= res!593386 (not (contains!4236 lt!395653 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!873002 () Bool)

(assert (=> b!873002 (= e!486178 e!486174)))

(declare-fun c!92352 () Bool)

(assert (=> b!873002 (= c!92352 e!486176)))

(declare-fun res!593389 () Bool)

(assert (=> b!873002 (=> (not res!593389) (not e!486176))))

(assert (=> b!873002 (= res!593389 (bvslt from!1053 (size!24773 _keys!868)))))

(declare-fun bm!38520 () Bool)

(assert (=> bm!38520 (= call!38523 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!873003 () Bool)

(assert (=> b!873003 (= e!486174 e!486173)))

(declare-fun c!92353 () Bool)

(assert (=> b!873003 (= c!92353 (bvslt from!1053 (size!24773 _keys!868)))))

(assert (= (and d!108415 c!92350) b!873000))

(assert (= (and d!108415 (not c!92350)) b!872993))

(assert (= (and b!872993 c!92351) b!872996))

(assert (= (and b!872993 (not c!92351)) b!872992))

(assert (= (or b!872996 b!872992) bm!38520))

(assert (= (and d!108415 res!593388) b!873001))

(assert (= (and b!873001 res!593386) b!873002))

(assert (= (and b!873002 res!593389) b!872994))

(assert (= (and b!873002 c!92352) b!872998))

(assert (= (and b!873002 (not c!92352)) b!873003))

(assert (= (and b!872998 res!593387) b!872997))

(assert (= (and b!873003 c!92353) b!872995))

(assert (= (and b!873003 (not c!92353)) b!872999))

(declare-fun b_lambda!12159 () Bool)

(assert (=> (not b_lambda!12159) (not b!872996)))

(assert (=> b!872996 t!24392))

(declare-fun b_and!24793 () Bool)

(assert (= b_and!24791 (and (=> t!24392 result!9411) b_and!24793)))

(declare-fun b_lambda!12161 () Bool)

(assert (=> (not b_lambda!12161) (not b!872997)))

(assert (=> b!872997 t!24392))

(declare-fun b_and!24795 () Bool)

(assert (= b_and!24793 (and (=> t!24392 result!9411) b_and!24795)))

(assert (=> b!872997 m!813643))

(declare-fun m!813673 () Bool)

(assert (=> b!872997 m!813673))

(declare-fun m!813675 () Bool)

(assert (=> b!872997 m!813675))

(assert (=> b!872997 m!813673))

(declare-fun m!813677 () Bool)

(assert (=> b!872997 m!813677))

(assert (=> b!872997 m!813677))

(assert (=> b!872997 m!813643))

(declare-fun m!813679 () Bool)

(assert (=> b!872997 m!813679))

(assert (=> b!872994 m!813673))

(assert (=> b!872994 m!813673))

(declare-fun m!813681 () Bool)

(assert (=> b!872994 m!813681))

(assert (=> b!872998 m!813673))

(assert (=> b!872998 m!813673))

(declare-fun m!813683 () Bool)

(assert (=> b!872998 m!813683))

(declare-fun m!813685 () Bool)

(assert (=> b!872999 m!813685))

(declare-fun m!813687 () Bool)

(assert (=> d!108415 m!813687))

(assert (=> d!108415 m!813611))

(declare-fun m!813689 () Bool)

(assert (=> b!872996 m!813689))

(declare-fun m!813691 () Bool)

(assert (=> b!872996 m!813691))

(assert (=> b!872996 m!813673))

(assert (=> b!872996 m!813689))

(declare-fun m!813693 () Bool)

(assert (=> b!872996 m!813693))

(assert (=> b!872996 m!813677))

(assert (=> b!872996 m!813677))

(assert (=> b!872996 m!813643))

(assert (=> b!872996 m!813679))

(declare-fun m!813695 () Bool)

(assert (=> b!872996 m!813695))

(assert (=> b!872996 m!813643))

(declare-fun m!813697 () Bool)

(assert (=> bm!38520 m!813697))

(assert (=> b!872993 m!813673))

(assert (=> b!872993 m!813673))

(assert (=> b!872993 m!813681))

(assert (=> b!872995 m!813697))

(declare-fun m!813699 () Bool)

(assert (=> b!873001 m!813699))

(assert (=> b!872913 d!108415))

(declare-fun b!873004 () Bool)

(declare-fun e!486182 () ListLongMap!10241)

(declare-fun call!38524 () ListLongMap!10241)

(assert (=> b!873004 (= e!486182 call!38524)))

(declare-fun b!873006 () Bool)

(declare-fun e!486183 () Bool)

(assert (=> b!873006 (= e!486183 (validKeyInArray!0 (select (arr!24332 _keys!868) from!1053)))))

(assert (=> b!873006 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!873007 () Bool)

(declare-fun lt!395660 () ListLongMap!10241)

(declare-fun e!486180 () Bool)

(assert (=> b!873007 (= e!486180 (= lt!395660 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!873008 () Bool)

(declare-fun lt!395655 () Unit!29882)

(declare-fun lt!395658 () Unit!29882)

(assert (=> b!873008 (= lt!395655 lt!395658)))

(declare-fun lt!395659 () V!28043)

(declare-fun lt!395654 () (_ BitVec 64))

(declare-fun lt!395656 () ListLongMap!10241)

(declare-fun lt!395657 () (_ BitVec 64))

(assert (=> b!873008 (not (contains!4236 (+!2414 lt!395656 (tuple2!11459 lt!395654 lt!395659)) lt!395657))))

(assert (=> b!873008 (= lt!395658 (addStillNotContains!201 lt!395656 lt!395654 lt!395659 lt!395657))))

(assert (=> b!873008 (= lt!395657 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!873008 (= lt!395659 (get!12827 (select (arr!24331 _values!688) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!873008 (= lt!395654 (select (arr!24332 _keys!868) from!1053))))

(assert (=> b!873008 (= lt!395656 call!38524)))

(assert (=> b!873008 (= e!486182 (+!2414 call!38524 (tuple2!11459 (select (arr!24332 _keys!868) from!1053) (get!12827 (select (arr!24331 _values!688) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!873009 () Bool)

(assert (=> b!873009 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24773 _keys!868)))))

(assert (=> b!873009 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24772 _values!688)))))

(declare-fun e!486184 () Bool)

(assert (=> b!873009 (= e!486184 (= (apply!374 lt!395660 (select (arr!24332 _keys!868) from!1053)) (get!12827 (select (arr!24331 _values!688) from!1053) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!108417 () Bool)

(declare-fun e!486185 () Bool)

(assert (=> d!108417 e!486185))

(declare-fun res!593392 () Bool)

(assert (=> d!108417 (=> (not res!593392) (not e!486185))))

(assert (=> d!108417 (= res!593392 (not (contains!4236 lt!395660 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!486179 () ListLongMap!10241)

(assert (=> d!108417 (= lt!395660 e!486179)))

(declare-fun c!92354 () Bool)

(assert (=> d!108417 (= c!92354 (bvsge from!1053 (size!24773 _keys!868)))))

(assert (=> d!108417 (validMask!0 mask!1196)))

(assert (=> d!108417 (= (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!395660)))

(declare-fun b!873005 () Bool)

(assert (=> b!873005 (= e!486179 e!486182)))

(declare-fun c!92355 () Bool)

(assert (=> b!873005 (= c!92355 (validKeyInArray!0 (select (arr!24332 _keys!868) from!1053)))))

(declare-fun b!873010 () Bool)

(declare-fun e!486181 () Bool)

(assert (=> b!873010 (= e!486181 e!486184)))

(assert (=> b!873010 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24773 _keys!868)))))

(declare-fun res!593391 () Bool)

(assert (=> b!873010 (= res!593391 (contains!4236 lt!395660 (select (arr!24332 _keys!868) from!1053)))))

(assert (=> b!873010 (=> (not res!593391) (not e!486184))))

(declare-fun b!873011 () Bool)

(assert (=> b!873011 (= e!486180 (isEmpty!665 lt!395660))))

(declare-fun b!873012 () Bool)

(assert (=> b!873012 (= e!486179 (ListLongMap!10242 Nil!17340))))

(declare-fun b!873013 () Bool)

(declare-fun res!593390 () Bool)

(assert (=> b!873013 (=> (not res!593390) (not e!486185))))

(assert (=> b!873013 (= res!593390 (not (contains!4236 lt!395660 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!873014 () Bool)

(assert (=> b!873014 (= e!486185 e!486181)))

(declare-fun c!92356 () Bool)

(assert (=> b!873014 (= c!92356 e!486183)))

(declare-fun res!593393 () Bool)

(assert (=> b!873014 (=> (not res!593393) (not e!486183))))

(assert (=> b!873014 (= res!593393 (bvslt from!1053 (size!24773 _keys!868)))))

(declare-fun bm!38521 () Bool)

(assert (=> bm!38521 (= call!38524 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!873015 () Bool)

(assert (=> b!873015 (= e!486181 e!486180)))

(declare-fun c!92357 () Bool)

(assert (=> b!873015 (= c!92357 (bvslt from!1053 (size!24773 _keys!868)))))

(assert (= (and d!108417 c!92354) b!873012))

(assert (= (and d!108417 (not c!92354)) b!873005))

(assert (= (and b!873005 c!92355) b!873008))

(assert (= (and b!873005 (not c!92355)) b!873004))

(assert (= (or b!873008 b!873004) bm!38521))

(assert (= (and d!108417 res!593392) b!873013))

(assert (= (and b!873013 res!593390) b!873014))

(assert (= (and b!873014 res!593393) b!873006))

(assert (= (and b!873014 c!92356) b!873010))

(assert (= (and b!873014 (not c!92356)) b!873015))

(assert (= (and b!873010 res!593391) b!873009))

(assert (= (and b!873015 c!92357) b!873007))

(assert (= (and b!873015 (not c!92357)) b!873011))

(declare-fun b_lambda!12163 () Bool)

(assert (=> (not b_lambda!12163) (not b!873008)))

(assert (=> b!873008 t!24392))

(declare-fun b_and!24797 () Bool)

(assert (= b_and!24795 (and (=> t!24392 result!9411) b_and!24797)))

(declare-fun b_lambda!12165 () Bool)

(assert (=> (not b_lambda!12165) (not b!873009)))

(assert (=> b!873009 t!24392))

(declare-fun b_and!24799 () Bool)

(assert (= b_and!24797 (and (=> t!24392 result!9411) b_and!24799)))

(assert (=> b!873009 m!813643))

(assert (=> b!873009 m!813673))

(declare-fun m!813701 () Bool)

(assert (=> b!873009 m!813701))

(assert (=> b!873009 m!813673))

(declare-fun m!813703 () Bool)

(assert (=> b!873009 m!813703))

(assert (=> b!873009 m!813703))

(assert (=> b!873009 m!813643))

(declare-fun m!813705 () Bool)

(assert (=> b!873009 m!813705))

(assert (=> b!873006 m!813673))

(assert (=> b!873006 m!813673))

(assert (=> b!873006 m!813681))

(assert (=> b!873010 m!813673))

(assert (=> b!873010 m!813673))

(declare-fun m!813707 () Bool)

(assert (=> b!873010 m!813707))

(declare-fun m!813709 () Bool)

(assert (=> b!873011 m!813709))

(declare-fun m!813711 () Bool)

(assert (=> d!108417 m!813711))

(assert (=> d!108417 m!813611))

(declare-fun m!813713 () Bool)

(assert (=> b!873008 m!813713))

(declare-fun m!813715 () Bool)

(assert (=> b!873008 m!813715))

(assert (=> b!873008 m!813673))

(assert (=> b!873008 m!813713))

(declare-fun m!813717 () Bool)

(assert (=> b!873008 m!813717))

(assert (=> b!873008 m!813703))

(assert (=> b!873008 m!813703))

(assert (=> b!873008 m!813643))

(assert (=> b!873008 m!813705))

(declare-fun m!813719 () Bool)

(assert (=> b!873008 m!813719))

(assert (=> b!873008 m!813643))

(declare-fun m!813721 () Bool)

(assert (=> bm!38521 m!813721))

(assert (=> b!873005 m!813673))

(assert (=> b!873005 m!813673))

(assert (=> b!873005 m!813681))

(assert (=> b!873007 m!813721))

(declare-fun m!813723 () Bool)

(assert (=> b!873013 m!813723))

(assert (=> b!872913 d!108417))

(declare-fun b!873022 () Bool)

(declare-fun call!38529 () ListLongMap!10241)

(declare-fun call!38530 () ListLongMap!10241)

(declare-fun e!486191 () Bool)

(assert (=> b!873022 (= e!486191 (= call!38529 (+!2414 call!38530 (tuple2!11459 k0!854 v!557))))))

(declare-fun d!108419 () Bool)

(declare-fun e!486190 () Bool)

(assert (=> d!108419 e!486190))

(declare-fun res!593396 () Bool)

(assert (=> d!108419 (=> (not res!593396) (not e!486190))))

(assert (=> d!108419 (= res!593396 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24772 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24772 _values!688))))))))

(declare-fun lt!395663 () Unit!29882)

(declare-fun choose!1436 (array!50612 array!50610 (_ BitVec 32) (_ BitVec 32) V!28043 V!28043 (_ BitVec 32) (_ BitVec 64) V!28043 (_ BitVec 32) Int) Unit!29882)

(assert (=> d!108419 (= lt!395663 (choose!1436 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108419 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (=> d!108419 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!646 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!395663)))

(declare-fun b!873023 () Bool)

(assert (=> b!873023 (= e!486190 e!486191)))

(declare-fun c!92360 () Bool)

(assert (=> b!873023 (= c!92360 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38526 () Bool)

(assert (=> bm!38526 (= call!38529 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38527 () Bool)

(assert (=> bm!38527 (= call!38530 (getCurrentListMapNoExtraKeys!3100 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!873024 () Bool)

(assert (=> b!873024 (= e!486191 (= call!38529 call!38530))))

(assert (= (and d!108419 res!593396) b!873023))

(assert (= (and b!873023 c!92360) b!873022))

(assert (= (and b!873023 (not c!92360)) b!873024))

(assert (= (or b!873022 b!873024) bm!38527))

(assert (= (or b!873022 b!873024) bm!38526))

(declare-fun m!813725 () Bool)

(assert (=> b!873022 m!813725))

(declare-fun m!813727 () Bool)

(assert (=> d!108419 m!813727))

(assert (=> bm!38526 m!813585))

(assert (=> bm!38526 m!813601))

(assert (=> bm!38527 m!813607))

(assert (=> b!872913 d!108419))

(declare-fun d!108421 () Bool)

(assert (=> d!108421 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!872905 d!108421))

(declare-fun d!108423 () Bool)

(assert (=> d!108423 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!872909 d!108423))

(declare-fun d!108425 () Bool)

(declare-fun e!486194 () Bool)

(assert (=> d!108425 e!486194))

(declare-fun res!593402 () Bool)

(assert (=> d!108425 (=> (not res!593402) (not e!486194))))

(declare-fun lt!395674 () ListLongMap!10241)

(assert (=> d!108425 (= res!593402 (contains!4236 lt!395674 (_1!5739 (tuple2!11459 k0!854 v!557))))))

(declare-fun lt!395672 () List!17343)

(assert (=> d!108425 (= lt!395674 (ListLongMap!10242 lt!395672))))

(declare-fun lt!395675 () Unit!29882)

(declare-fun lt!395673 () Unit!29882)

(assert (=> d!108425 (= lt!395675 lt!395673)))

(declare-datatypes ((Option!422 0))(
  ( (Some!421 (v!11097 V!28043)) (None!420) )
))
(declare-fun getValueByKey!416 (List!17343 (_ BitVec 64)) Option!422)

(assert (=> d!108425 (= (getValueByKey!416 lt!395672 (_1!5739 (tuple2!11459 k0!854 v!557))) (Some!421 (_2!5739 (tuple2!11459 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!232 (List!17343 (_ BitVec 64) V!28043) Unit!29882)

(assert (=> d!108425 (= lt!395673 (lemmaContainsTupThenGetReturnValue!232 lt!395672 (_1!5739 (tuple2!11459 k0!854 v!557)) (_2!5739 (tuple2!11459 k0!854 v!557))))))

(declare-fun insertStrictlySorted!270 (List!17343 (_ BitVec 64) V!28043) List!17343)

(assert (=> d!108425 (= lt!395672 (insertStrictlySorted!270 (toList!5136 call!38512) (_1!5739 (tuple2!11459 k0!854 v!557)) (_2!5739 (tuple2!11459 k0!854 v!557))))))

(assert (=> d!108425 (= (+!2414 call!38512 (tuple2!11459 k0!854 v!557)) lt!395674)))

(declare-fun b!873029 () Bool)

(declare-fun res!593401 () Bool)

(assert (=> b!873029 (=> (not res!593401) (not e!486194))))

(assert (=> b!873029 (= res!593401 (= (getValueByKey!416 (toList!5136 lt!395674) (_1!5739 (tuple2!11459 k0!854 v!557))) (Some!421 (_2!5739 (tuple2!11459 k0!854 v!557)))))))

(declare-fun b!873030 () Bool)

(declare-fun contains!4237 (List!17343 tuple2!11458) Bool)

(assert (=> b!873030 (= e!486194 (contains!4237 (toList!5136 lt!395674) (tuple2!11459 k0!854 v!557)))))

(assert (= (and d!108425 res!593402) b!873029))

(assert (= (and b!873029 res!593401) b!873030))

(declare-fun m!813729 () Bool)

(assert (=> d!108425 m!813729))

(declare-fun m!813731 () Bool)

(assert (=> d!108425 m!813731))

(declare-fun m!813733 () Bool)

(assert (=> d!108425 m!813733))

(declare-fun m!813735 () Bool)

(assert (=> d!108425 m!813735))

(declare-fun m!813737 () Bool)

(assert (=> b!873029 m!813737))

(declare-fun m!813739 () Bool)

(assert (=> b!873030 m!813739))

(assert (=> b!872910 d!108425))

(declare-fun d!108427 () Bool)

(declare-fun res!593408 () Bool)

(declare-fun e!486202 () Bool)

(assert (=> d!108427 (=> res!593408 e!486202)))

(assert (=> d!108427 (= res!593408 (bvsge #b00000000000000000000000000000000 (size!24773 _keys!868)))))

(assert (=> d!108427 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!486202)))

(declare-fun b!873039 () Bool)

(declare-fun e!486203 () Bool)

(declare-fun e!486201 () Bool)

(assert (=> b!873039 (= e!486203 e!486201)))

(declare-fun lt!395682 () (_ BitVec 64))

(assert (=> b!873039 (= lt!395682 (select (arr!24332 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!395684 () Unit!29882)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!50612 (_ BitVec 64) (_ BitVec 32)) Unit!29882)

(assert (=> b!873039 (= lt!395684 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!395682 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!50612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!873039 (arrayContainsKey!0 _keys!868 lt!395682 #b00000000000000000000000000000000)))

(declare-fun lt!395683 () Unit!29882)

(assert (=> b!873039 (= lt!395683 lt!395684)))

(declare-fun res!593407 () Bool)

(declare-datatypes ((SeekEntryResult!8739 0))(
  ( (MissingZero!8739 (index!37326 (_ BitVec 32))) (Found!8739 (index!37327 (_ BitVec 32))) (Intermediate!8739 (undefined!9551 Bool) (index!37328 (_ BitVec 32)) (x!73964 (_ BitVec 32))) (Undefined!8739) (MissingVacant!8739 (index!37329 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!50612 (_ BitVec 32)) SeekEntryResult!8739)

(assert (=> b!873039 (= res!593407 (= (seekEntryOrOpen!0 (select (arr!24332 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8739 #b00000000000000000000000000000000)))))

(assert (=> b!873039 (=> (not res!593407) (not e!486201))))

(declare-fun bm!38530 () Bool)

(declare-fun call!38533 () Bool)

(assert (=> bm!38530 (= call!38533 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!873040 () Bool)

(assert (=> b!873040 (= e!486202 e!486203)))

(declare-fun c!92363 () Bool)

(assert (=> b!873040 (= c!92363 (validKeyInArray!0 (select (arr!24332 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!873041 () Bool)

(assert (=> b!873041 (= e!486203 call!38533)))

(declare-fun b!873042 () Bool)

(assert (=> b!873042 (= e!486201 call!38533)))

(assert (= (and d!108427 (not res!593408)) b!873040))

(assert (= (and b!873040 c!92363) b!873039))

(assert (= (and b!873040 (not c!92363)) b!873041))

(assert (= (and b!873039 res!593407) b!873042))

(assert (= (or b!873042 b!873041) bm!38530))

(declare-fun m!813741 () Bool)

(assert (=> b!873039 m!813741))

(declare-fun m!813743 () Bool)

(assert (=> b!873039 m!813743))

(declare-fun m!813745 () Bool)

(assert (=> b!873039 m!813745))

(assert (=> b!873039 m!813741))

(declare-fun m!813747 () Bool)

(assert (=> b!873039 m!813747))

(declare-fun m!813749 () Bool)

(assert (=> bm!38530 m!813749))

(assert (=> b!873040 m!813741))

(assert (=> b!873040 m!813741))

(declare-fun m!813751 () Bool)

(assert (=> b!873040 m!813751))

(assert (=> b!872914 d!108427))

(declare-fun b!873043 () Bool)

(declare-fun e!486207 () ListLongMap!10241)

(declare-fun call!38534 () ListLongMap!10241)

(assert (=> b!873043 (= e!486207 call!38534)))

(declare-fun b!873045 () Bool)

(declare-fun e!486208 () Bool)

(assert (=> b!873045 (= e!486208 (validKeyInArray!0 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!873045 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!873046 () Bool)

(declare-fun e!486205 () Bool)

(declare-fun lt!395691 () ListLongMap!10241)

(assert (=> b!873046 (= e!486205 (= lt!395691 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!873047 () Bool)

(declare-fun lt!395686 () Unit!29882)

(declare-fun lt!395689 () Unit!29882)

(assert (=> b!873047 (= lt!395686 lt!395689)))

(declare-fun lt!395685 () (_ BitVec 64))

(declare-fun lt!395690 () V!28043)

(declare-fun lt!395688 () (_ BitVec 64))

(declare-fun lt!395687 () ListLongMap!10241)

(assert (=> b!873047 (not (contains!4236 (+!2414 lt!395687 (tuple2!11459 lt!395685 lt!395690)) lt!395688))))

(assert (=> b!873047 (= lt!395689 (addStillNotContains!201 lt!395687 lt!395685 lt!395690 lt!395688))))

(assert (=> b!873047 (= lt!395688 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!873047 (= lt!395690 (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!873047 (= lt!395685 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!873047 (= lt!395687 call!38534)))

(assert (=> b!873047 (= e!486207 (+!2414 call!38534 (tuple2!11459 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!873048 () Bool)

(assert (=> b!873048 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (=> b!873048 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24772 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)))))))

(declare-fun e!486209 () Bool)

(assert (=> b!873048 (= e!486209 (= (apply!374 lt!395691 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12827 (select (arr!24331 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688))) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1207 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!108429 () Bool)

(declare-fun e!486210 () Bool)

(assert (=> d!108429 e!486210))

(declare-fun res!593411 () Bool)

(assert (=> d!108429 (=> (not res!593411) (not e!486210))))

(assert (=> d!108429 (= res!593411 (not (contains!4236 lt!395691 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!486204 () ListLongMap!10241)

(assert (=> d!108429 (= lt!395691 e!486204)))

(declare-fun c!92364 () Bool)

(assert (=> d!108429 (= c!92364 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (=> d!108429 (validMask!0 mask!1196)))

(assert (=> d!108429 (= (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!395691)))

(declare-fun b!873044 () Bool)

(assert (=> b!873044 (= e!486204 e!486207)))

(declare-fun c!92365 () Bool)

(assert (=> b!873044 (= c!92365 (validKeyInArray!0 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!873049 () Bool)

(declare-fun e!486206 () Bool)

(assert (=> b!873049 (= e!486206 e!486209)))

(assert (=> b!873049 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(declare-fun res!593410 () Bool)

(assert (=> b!873049 (= res!593410 (contains!4236 lt!395691 (select (arr!24332 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!873049 (=> (not res!593410) (not e!486209))))

(declare-fun b!873050 () Bool)

(assert (=> b!873050 (= e!486205 (isEmpty!665 lt!395691))))

(declare-fun b!873051 () Bool)

(assert (=> b!873051 (= e!486204 (ListLongMap!10242 Nil!17340))))

(declare-fun b!873052 () Bool)

(declare-fun res!593409 () Bool)

(assert (=> b!873052 (=> (not res!593409) (not e!486210))))

(assert (=> b!873052 (= res!593409 (not (contains!4236 lt!395691 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!873053 () Bool)

(assert (=> b!873053 (= e!486210 e!486206)))

(declare-fun c!92366 () Bool)

(assert (=> b!873053 (= c!92366 e!486208)))

(declare-fun res!593412 () Bool)

(assert (=> b!873053 (=> (not res!593412) (not e!486208))))

(assert (=> b!873053 (= res!593412 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(declare-fun bm!38531 () Bool)

(assert (=> bm!38531 (= call!38534 (getCurrentListMapNoExtraKeys!3100 _keys!868 (array!50611 (store (arr!24331 _values!688) i!612 (ValueCellFull!8184 v!557)) (size!24772 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!873054 () Bool)

(assert (=> b!873054 (= e!486206 e!486205)))

(declare-fun c!92367 () Bool)

(assert (=> b!873054 (= c!92367 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24773 _keys!868)))))

(assert (= (and d!108429 c!92364) b!873051))

(assert (= (and d!108429 (not c!92364)) b!873044))

(assert (= (and b!873044 c!92365) b!873047))

(assert (= (and b!873044 (not c!92365)) b!873043))

(assert (= (or b!873047 b!873043) bm!38531))

(assert (= (and d!108429 res!593411) b!873052))

(assert (= (and b!873052 res!593409) b!873053))

(assert (= (and b!873053 res!593412) b!873045))

(assert (= (and b!873053 c!92366) b!873049))

(assert (= (and b!873053 (not c!92366)) b!873054))

(assert (= (and b!873049 res!593410) b!873048))

(assert (= (and b!873054 c!92367) b!873046))

(assert (= (and b!873054 (not c!92367)) b!873050))

(declare-fun b_lambda!12167 () Bool)

(assert (=> (not b_lambda!12167) (not b!873047)))

(assert (=> b!873047 t!24392))

(declare-fun b_and!24801 () Bool)

(assert (= b_and!24799 (and (=> t!24392 result!9411) b_and!24801)))

(declare-fun b_lambda!12169 () Bool)

(assert (=> (not b_lambda!12169) (not b!873048)))

(assert (=> b!873048 t!24392))

(declare-fun b_and!24803 () Bool)

(assert (= b_and!24801 (and (=> t!24392 result!9411) b_and!24803)))

(assert (=> b!873048 m!813643))

(assert (=> b!873048 m!813645))

(declare-fun m!813753 () Bool)

(assert (=> b!873048 m!813753))

(assert (=> b!873048 m!813645))

(declare-fun m!813755 () Bool)

(assert (=> b!873048 m!813755))

(assert (=> b!873048 m!813755))

(assert (=> b!873048 m!813643))

(declare-fun m!813757 () Bool)

(assert (=> b!873048 m!813757))

(assert (=> b!873045 m!813645))

(assert (=> b!873045 m!813645))

(assert (=> b!873045 m!813653))

(assert (=> b!873049 m!813645))

(assert (=> b!873049 m!813645))

(declare-fun m!813759 () Bool)

(assert (=> b!873049 m!813759))

(declare-fun m!813761 () Bool)

(assert (=> b!873050 m!813761))

(declare-fun m!813763 () Bool)

(assert (=> d!108429 m!813763))

(assert (=> d!108429 m!813611))

(declare-fun m!813765 () Bool)

(assert (=> b!873047 m!813765))

(declare-fun m!813767 () Bool)

(assert (=> b!873047 m!813767))

(assert (=> b!873047 m!813645))

(assert (=> b!873047 m!813765))

(declare-fun m!813769 () Bool)

(assert (=> b!873047 m!813769))

(assert (=> b!873047 m!813755))

(assert (=> b!873047 m!813755))

(assert (=> b!873047 m!813643))

(assert (=> b!873047 m!813757))

(declare-fun m!813771 () Bool)

(assert (=> b!873047 m!813771))

(assert (=> b!873047 m!813643))

(declare-fun m!813773 () Bool)

(assert (=> bm!38531 m!813773))

(assert (=> b!873044 m!813645))

(assert (=> b!873044 m!813645))

(assert (=> b!873044 m!813653))

(assert (=> b!873046 m!813773))

(declare-fun m!813775 () Bool)

(assert (=> b!873052 m!813775))

(assert (=> bm!38509 d!108429))

(declare-fun b!873065 () Bool)

(declare-fun e!486220 () Bool)

(declare-fun contains!4238 (List!17344 (_ BitVec 64)) Bool)

(assert (=> b!873065 (= e!486220 (contains!4238 Nil!17341 (select (arr!24332 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108431 () Bool)

(declare-fun res!593419 () Bool)

(declare-fun e!486221 () Bool)

(assert (=> d!108431 (=> res!593419 e!486221)))

(assert (=> d!108431 (= res!593419 (bvsge #b00000000000000000000000000000000 (size!24773 _keys!868)))))

(assert (=> d!108431 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17341) e!486221)))

(declare-fun b!873066 () Bool)

(declare-fun e!486219 () Bool)

(assert (=> b!873066 (= e!486221 e!486219)))

(declare-fun res!593421 () Bool)

(assert (=> b!873066 (=> (not res!593421) (not e!486219))))

(assert (=> b!873066 (= res!593421 (not e!486220))))

(declare-fun res!593420 () Bool)

(assert (=> b!873066 (=> (not res!593420) (not e!486220))))

(assert (=> b!873066 (= res!593420 (validKeyInArray!0 (select (arr!24332 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!873067 () Bool)

(declare-fun e!486222 () Bool)

(declare-fun call!38537 () Bool)

(assert (=> b!873067 (= e!486222 call!38537)))

(declare-fun b!873068 () Bool)

(assert (=> b!873068 (= e!486219 e!486222)))

(declare-fun c!92370 () Bool)

(assert (=> b!873068 (= c!92370 (validKeyInArray!0 (select (arr!24332 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!873069 () Bool)

(assert (=> b!873069 (= e!486222 call!38537)))

(declare-fun bm!38534 () Bool)

(assert (=> bm!38534 (= call!38537 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92370 (Cons!17340 (select (arr!24332 _keys!868) #b00000000000000000000000000000000) Nil!17341) Nil!17341)))))

(assert (= (and d!108431 (not res!593419)) b!873066))

(assert (= (and b!873066 res!593420) b!873065))

(assert (= (and b!873066 res!593421) b!873068))

(assert (= (and b!873068 c!92370) b!873069))

(assert (= (and b!873068 (not c!92370)) b!873067))

(assert (= (or b!873069 b!873067) bm!38534))

(assert (=> b!873065 m!813741))

(assert (=> b!873065 m!813741))

(declare-fun m!813777 () Bool)

(assert (=> b!873065 m!813777))

(assert (=> b!873066 m!813741))

(assert (=> b!873066 m!813741))

(assert (=> b!873066 m!813751))

(assert (=> b!873068 m!813741))

(assert (=> b!873068 m!813741))

(assert (=> b!873068 m!813751))

(assert (=> bm!38534 m!813741))

(declare-fun m!813779 () Bool)

(assert (=> bm!38534 m!813779))

(assert (=> b!872904 d!108431))

(declare-fun d!108433 () Bool)

(assert (=> d!108433 (= (array_inv!19178 _keys!868) (bvsge (size!24773 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74236 d!108433))

(declare-fun d!108435 () Bool)

(assert (=> d!108435 (= (array_inv!19179 _values!688) (bvsge (size!24772 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74236 d!108435))

(declare-fun condMapEmpty!27479 () Bool)

(declare-fun mapDefault!27479 () ValueCell!8184)

(assert (=> mapNonEmpty!27473 (= condMapEmpty!27479 (= mapRest!27473 ((as const (Array (_ BitVec 32) ValueCell!8184)) mapDefault!27479)))))

(declare-fun e!486228 () Bool)

(declare-fun mapRes!27479 () Bool)

(assert (=> mapNonEmpty!27473 (= tp!52697 (and e!486228 mapRes!27479))))

(declare-fun mapIsEmpty!27479 () Bool)

(assert (=> mapIsEmpty!27479 mapRes!27479))

(declare-fun b!873076 () Bool)

(declare-fun e!486227 () Bool)

(assert (=> b!873076 (= e!486227 tp_is_empty!17247)))

(declare-fun mapNonEmpty!27479 () Bool)

(declare-fun tp!52706 () Bool)

(assert (=> mapNonEmpty!27479 (= mapRes!27479 (and tp!52706 e!486227))))

(declare-fun mapValue!27479 () ValueCell!8184)

(declare-fun mapKey!27479 () (_ BitVec 32))

(declare-fun mapRest!27479 () (Array (_ BitVec 32) ValueCell!8184))

(assert (=> mapNonEmpty!27479 (= mapRest!27473 (store mapRest!27479 mapKey!27479 mapValue!27479))))

(declare-fun b!873077 () Bool)

(assert (=> b!873077 (= e!486228 tp_is_empty!17247)))

(assert (= (and mapNonEmpty!27473 condMapEmpty!27479) mapIsEmpty!27479))

(assert (= (and mapNonEmpty!27473 (not condMapEmpty!27479)) mapNonEmpty!27479))

(assert (= (and mapNonEmpty!27479 ((_ is ValueCellFull!8184) mapValue!27479)) b!873076))

(assert (= (and mapNonEmpty!27473 ((_ is ValueCellFull!8184) mapDefault!27479)) b!873077))

(declare-fun m!813781 () Bool)

(assert (=> mapNonEmpty!27479 m!813781))

(declare-fun b_lambda!12171 () Bool)

(assert (= b_lambda!12157 (or (and start!74236 b_free!15015) b_lambda!12171)))

(declare-fun b_lambda!12173 () Bool)

(assert (= b_lambda!12163 (or (and start!74236 b_free!15015) b_lambda!12173)))

(declare-fun b_lambda!12175 () Bool)

(assert (= b_lambda!12169 (or (and start!74236 b_free!15015) b_lambda!12175)))

(declare-fun b_lambda!12177 () Bool)

(assert (= b_lambda!12165 (or (and start!74236 b_free!15015) b_lambda!12177)))

(declare-fun b_lambda!12179 () Bool)

(assert (= b_lambda!12155 (or (and start!74236 b_free!15015) b_lambda!12179)))

(declare-fun b_lambda!12181 () Bool)

(assert (= b_lambda!12161 (or (and start!74236 b_free!15015) b_lambda!12181)))

(declare-fun b_lambda!12183 () Bool)

(assert (= b_lambda!12167 (or (and start!74236 b_free!15015) b_lambda!12183)))

(declare-fun b_lambda!12185 () Bool)

(assert (= b_lambda!12159 (or (and start!74236 b_free!15015) b_lambda!12185)))

(check-sat (not b_lambda!12179) (not b!872984) (not bm!38526) (not b!873005) (not b_lambda!12185) (not d!108413) (not b_lambda!12177) (not b!873007) (not d!108417) (not bm!38521) (not b!872995) (not b!872982) (not b_lambda!12173) (not d!108415) (not b!873030) (not b!872985) (not b!873013) (not b!873049) (not b!872993) (not b!872998) (not b!872997) (not b!873044) (not b!873068) (not b!873009) (not b!872996) (not mapNonEmpty!27479) (not b!873006) (not b!873048) (not d!108425) (not b_next!15015) (not bm!38527) (not b!872981) (not b!873050) (not b!873040) (not b!873011) (not b!873010) (not b!873045) (not b!873029) (not b!872999) (not bm!38520) (not bm!38531) (not b!873065) (not b!873001) (not b!873039) (not b_lambda!12171) (not b_lambda!12183) (not bm!38534) (not b_lambda!12175) (not bm!38519) tp_is_empty!17247 (not b!873047) (not b!873022) (not b!873052) (not b!873008) (not b!872983) (not b!873066) (not d!108429) (not b_lambda!12181) (not b!873046) (not b!872987) (not d!108419) (not b!872994) (not bm!38530) (not b!872979) b_and!24803 (not b!872980))
(check-sat b_and!24803 (not b_next!15015))
