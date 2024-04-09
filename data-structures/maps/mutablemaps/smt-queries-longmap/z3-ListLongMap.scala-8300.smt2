; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101186 () Bool)

(assert start!101186)

(declare-fun b_free!26073 () Bool)

(declare-fun b_next!26073 () Bool)

(assert (=> start!101186 (= b_free!26073 (not b_next!26073))))

(declare-fun tp!91241 () Bool)

(declare-fun b_and!43273 () Bool)

(assert (=> start!101186 (= tp!91241 b_and!43273)))

(declare-fun b!1213308 () Bool)

(declare-fun res!805756 () Bool)

(declare-fun e!689084 () Bool)

(assert (=> b!1213308 (=> (not res!805756) (not e!689084))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213308 (= res!805756 (validKeyInArray!0 k0!934))))

(declare-fun b!1213309 () Bool)

(declare-fun e!689085 () Bool)

(declare-fun e!689092 () Bool)

(assert (=> b!1213309 (= e!689085 e!689092)))

(declare-fun res!805754 () Bool)

(assert (=> b!1213309 (=> res!805754 e!689092)))

(declare-datatypes ((array!78314 0))(
  ( (array!78315 (arr!37788 (Array (_ BitVec 32) (_ BitVec 64))) (size!38325 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78314)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1213309 (= res!805754 (not (= (select (arr!37788 _keys!1208) from!1455) k0!934)))))

(declare-fun e!689097 () Bool)

(assert (=> b!1213309 e!689097))

(declare-fun c!119808 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213309 (= c!119808 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!46163 0))(
  ( (V!46164 (val!15445 Int)) )
))
(declare-fun zeroValue!944 () V!46163)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14679 0))(
  ( (ValueCellFull!14679 (v!18099 V!46163)) (EmptyCell!14679) )
))
(declare-datatypes ((array!78316 0))(
  ( (array!78317 (arr!37789 (Array (_ BitVec 32) ValueCell!14679)) (size!38326 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78316)

(declare-fun minValue!944 () V!46163)

(declare-datatypes ((Unit!40160 0))(
  ( (Unit!40161) )
))
(declare-fun lt!551576 () Unit!40160)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1098 (array!78314 array!78316 (_ BitVec 32) (_ BitVec 32) V!46163 V!46163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40160)

(assert (=> b!1213309 (= lt!551576 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1098 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213310 () Bool)

(declare-fun res!805765 () Bool)

(assert (=> b!1213310 (=> (not res!805765) (not e!689084))))

(assert (=> b!1213310 (= res!805765 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38325 _keys!1208))))))

(declare-fun b!1213311 () Bool)

(declare-fun e!689093 () Bool)

(assert (=> b!1213311 (= e!689093 e!689085)))

(declare-fun res!805763 () Bool)

(assert (=> b!1213311 (=> res!805763 e!689085)))

(assert (=> b!1213311 (= res!805763 (not (= from!1455 i!673)))))

(declare-fun lt!551585 () array!78314)

(declare-datatypes ((tuple2!19984 0))(
  ( (tuple2!19985 (_1!10002 (_ BitVec 64)) (_2!10002 V!46163)) )
))
(declare-datatypes ((List!26804 0))(
  ( (Nil!26801) (Cons!26800 (h!28009 tuple2!19984) (t!39864 List!26804)) )
))
(declare-datatypes ((ListLongMap!17965 0))(
  ( (ListLongMap!17966 (toList!8998 List!26804)) )
))
(declare-fun lt!551571 () ListLongMap!17965)

(declare-fun lt!551587 () array!78316)

(declare-fun getCurrentListMapNoExtraKeys!5403 (array!78314 array!78316 (_ BitVec 32) (_ BitVec 32) V!46163 V!46163 (_ BitVec 32) Int) ListLongMap!17965)

(assert (=> b!1213311 (= lt!551571 (getCurrentListMapNoExtraKeys!5403 lt!551585 lt!551587 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!551586 () V!46163)

(assert (=> b!1213311 (= lt!551587 (array!78317 (store (arr!37789 _values!996) i!673 (ValueCellFull!14679 lt!551586)) (size!38326 _values!996)))))

(declare-fun dynLambda!3313 (Int (_ BitVec 64)) V!46163)

(assert (=> b!1213311 (= lt!551586 (dynLambda!3313 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!551579 () ListLongMap!17965)

(assert (=> b!1213311 (= lt!551579 (getCurrentListMapNoExtraKeys!5403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213312 () Bool)

(declare-fun e!689091 () Unit!40160)

(declare-fun e!689096 () Unit!40160)

(assert (=> b!1213312 (= e!689091 e!689096)))

(declare-fun c!119809 () Bool)

(declare-fun lt!551570 () Bool)

(assert (=> b!1213312 (= c!119809 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551570))))

(declare-fun b!1213313 () Bool)

(declare-fun res!805764 () Bool)

(assert (=> b!1213313 (=> (not res!805764) (not e!689084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78314 (_ BitVec 32)) Bool)

(assert (=> b!1213313 (= res!805764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1213314 () Bool)

(declare-fun e!689094 () Unit!40160)

(declare-fun Unit!40162 () Unit!40160)

(assert (=> b!1213314 (= e!689094 Unit!40162)))

(assert (=> b!1213314 (= lt!551570 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119807 () Bool)

(assert (=> b!1213314 (= c!119807 (and (not lt!551570) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551580 () Unit!40160)

(declare-fun e!689088 () Unit!40160)

(assert (=> b!1213314 (= lt!551580 e!689088)))

(declare-fun lt!551577 () Unit!40160)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!617 (array!78314 array!78316 (_ BitVec 32) (_ BitVec 32) V!46163 V!46163 (_ BitVec 64) (_ BitVec 32) Int) Unit!40160)

(assert (=> b!1213314 (= lt!551577 (lemmaListMapContainsThenArrayContainsFrom!617 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119810 () Bool)

(assert (=> b!1213314 (= c!119810 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805759 () Bool)

(declare-fun e!689099 () Bool)

(assert (=> b!1213314 (= res!805759 e!689099)))

(declare-fun e!689087 () Bool)

(assert (=> b!1213314 (=> (not res!805759) (not e!689087))))

(assert (=> b!1213314 e!689087))

(declare-fun lt!551572 () Unit!40160)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78314 (_ BitVec 32) (_ BitVec 32)) Unit!40160)

(assert (=> b!1213314 (= lt!551572 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26805 0))(
  ( (Nil!26802) (Cons!26801 (h!28010 (_ BitVec 64)) (t!39865 List!26805)) )
))
(declare-fun arrayNoDuplicates!0 (array!78314 (_ BitVec 32) List!26805) Bool)

(assert (=> b!1213314 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26802)))

(declare-fun lt!551573 () Unit!40160)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78314 (_ BitVec 64) (_ BitVec 32) List!26805) Unit!40160)

(assert (=> b!1213314 (= lt!551573 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26802))))

(assert (=> b!1213314 false))

(declare-fun b!1213315 () Bool)

(declare-fun Unit!40163 () Unit!40160)

(assert (=> b!1213315 (= e!689094 Unit!40163)))

(declare-fun mapNonEmpty!48040 () Bool)

(declare-fun mapRes!48040 () Bool)

(declare-fun tp!91242 () Bool)

(declare-fun e!689086 () Bool)

(assert (=> mapNonEmpty!48040 (= mapRes!48040 (and tp!91242 e!689086))))

(declare-fun mapRest!48040 () (Array (_ BitVec 32) ValueCell!14679))

(declare-fun mapValue!48040 () ValueCell!14679)

(declare-fun mapKey!48040 () (_ BitVec 32))

(assert (=> mapNonEmpty!48040 (= (arr!37789 _values!996) (store mapRest!48040 mapKey!48040 mapValue!48040))))

(declare-fun b!1213316 () Bool)

(declare-fun res!805753 () Bool)

(assert (=> b!1213316 (=> (not res!805753) (not e!689084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1213316 (= res!805753 (validMask!0 mask!1564))))

(declare-fun b!1213317 () Bool)

(declare-fun Unit!40164 () Unit!40160)

(assert (=> b!1213317 (= e!689096 Unit!40164)))

(declare-fun b!1213318 () Bool)

(declare-fun call!60362 () Bool)

(assert (=> b!1213318 call!60362))

(declare-fun lt!551581 () Unit!40160)

(declare-fun call!60361 () Unit!40160)

(assert (=> b!1213318 (= lt!551581 call!60361)))

(assert (=> b!1213318 (= e!689096 lt!551581)))

(declare-fun b!1213319 () Bool)

(declare-fun res!805760 () Bool)

(declare-fun e!689095 () Bool)

(assert (=> b!1213319 (=> (not res!805760) (not e!689095))))

(assert (=> b!1213319 (= res!805760 (arrayNoDuplicates!0 lt!551585 #b00000000000000000000000000000000 Nil!26802))))

(declare-fun b!1213320 () Bool)

(declare-fun e!689090 () Bool)

(declare-fun e!689098 () Bool)

(assert (=> b!1213320 (= e!689090 (and e!689098 mapRes!48040))))

(declare-fun condMapEmpty!48040 () Bool)

(declare-fun mapDefault!48040 () ValueCell!14679)

(assert (=> b!1213320 (= condMapEmpty!48040 (= (arr!37789 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14679)) mapDefault!48040)))))

(declare-fun b!1213321 () Bool)

(declare-fun arrayContainsKey!0 (array!78314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213321 (= e!689087 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1213322 () Bool)

(assert (=> b!1213322 (= e!689084 e!689095)))

(declare-fun res!805761 () Bool)

(assert (=> b!1213322 (=> (not res!805761) (not e!689095))))

(assert (=> b!1213322 (= res!805761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551585 mask!1564))))

(assert (=> b!1213322 (= lt!551585 (array!78315 (store (arr!37788 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38325 _keys!1208)))))

(declare-fun b!1213323 () Bool)

(declare-fun res!805758 () Bool)

(assert (=> b!1213323 (=> (not res!805758) (not e!689084))))

(assert (=> b!1213323 (= res!805758 (and (= (size!38326 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38325 _keys!1208) (size!38326 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213324 () Bool)

(assert (=> b!1213324 (= e!689099 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!551570) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!60354 () Bool)

(declare-fun call!60357 () ListLongMap!17965)

(declare-fun call!60359 () ListLongMap!17965)

(assert (=> bm!60354 (= call!60357 call!60359)))

(declare-fun bm!60355 () Bool)

(declare-fun call!60360 () ListLongMap!17965)

(assert (=> bm!60355 (= call!60360 (getCurrentListMapNoExtraKeys!5403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213325 () Bool)

(declare-fun res!805762 () Bool)

(assert (=> b!1213325 (=> (not res!805762) (not e!689084))))

(assert (=> b!1213325 (= res!805762 (= (select (arr!37788 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48040 () Bool)

(assert (=> mapIsEmpty!48040 mapRes!48040))

(declare-fun bm!60356 () Bool)

(declare-fun call!60363 () Bool)

(declare-fun lt!551584 () ListLongMap!17965)

(declare-fun contains!7013 (ListLongMap!17965 (_ BitVec 64)) Bool)

(assert (=> bm!60356 (= call!60363 (contains!7013 (ite c!119807 lt!551584 call!60357) k0!934))))

(declare-fun e!689100 () Bool)

(declare-fun lt!551578 () ListLongMap!17965)

(declare-fun b!1213326 () Bool)

(assert (=> b!1213326 (= e!689100 (= lt!551578 (getCurrentListMapNoExtraKeys!5403 lt!551585 lt!551587 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213327 () Bool)

(declare-fun tp_is_empty!30777 () Bool)

(assert (=> b!1213327 (= e!689086 tp_is_empty!30777)))

(declare-fun b!1213328 () Bool)

(assert (=> b!1213328 (= e!689098 tp_is_empty!30777)))

(declare-fun lt!551583 () ListLongMap!17965)

(declare-fun c!119811 () Bool)

(declare-fun bm!60357 () Bool)

(declare-fun +!4024 (ListLongMap!17965 tuple2!19984) ListLongMap!17965)

(assert (=> bm!60357 (= call!60359 (+!4024 lt!551583 (ite (or c!119807 c!119811) (tuple2!19985 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!60358 () Bool)

(declare-fun call!60358 () Unit!40160)

(declare-fun addStillContains!1082 (ListLongMap!17965 (_ BitVec 64) V!46163 (_ BitVec 64)) Unit!40160)

(assert (=> bm!60358 (= call!60358 (addStillContains!1082 lt!551583 (ite (or c!119807 c!119811) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119807 c!119811) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1213329 () Bool)

(assert (=> b!1213329 (= e!689092 (or (not (= lt!551578 lt!551571)) (bvslt i!673 (size!38326 _values!996))))))

(assert (=> b!1213329 e!689100))

(declare-fun res!805751 () Bool)

(assert (=> b!1213329 (=> (not res!805751) (not e!689100))))

(assert (=> b!1213329 (= res!805751 (= lt!551578 lt!551583))))

(declare-fun -!1893 (ListLongMap!17965 (_ BitVec 64)) ListLongMap!17965)

(assert (=> b!1213329 (= lt!551578 (-!1893 lt!551579 k0!934))))

(declare-fun lt!551575 () V!46163)

(assert (=> b!1213329 (= (-!1893 (+!4024 lt!551583 (tuple2!19985 (select (arr!37788 _keys!1208) from!1455) lt!551575)) (select (arr!37788 _keys!1208) from!1455)) lt!551583)))

(declare-fun lt!551591 () Unit!40160)

(declare-fun addThenRemoveForNewKeyIsSame!292 (ListLongMap!17965 (_ BitVec 64) V!46163) Unit!40160)

(assert (=> b!1213329 (= lt!551591 (addThenRemoveForNewKeyIsSame!292 lt!551583 (select (arr!37788 _keys!1208) from!1455) lt!551575))))

(declare-fun get!19308 (ValueCell!14679 V!46163) V!46163)

(assert (=> b!1213329 (= lt!551575 (get!19308 (select (arr!37789 _values!996) from!1455) lt!551586))))

(declare-fun lt!551574 () Unit!40160)

(assert (=> b!1213329 (= lt!551574 e!689094)))

(declare-fun c!119812 () Bool)

(assert (=> b!1213329 (= c!119812 (contains!7013 lt!551583 k0!934))))

(assert (=> b!1213329 (= lt!551583 (getCurrentListMapNoExtraKeys!5403 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213330 () Bool)

(declare-fun call!60364 () ListLongMap!17965)

(assert (=> b!1213330 (= e!689097 (= call!60364 call!60360))))

(declare-fun b!1213331 () Bool)

(assert (=> b!1213331 (= c!119811 (and (not lt!551570) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1213331 (= e!689088 e!689091)))

(declare-fun b!1213332 () Bool)

(declare-fun lt!551582 () Unit!40160)

(assert (=> b!1213332 (= e!689091 lt!551582)))

(assert (=> b!1213332 (= lt!551582 call!60361)))

(assert (=> b!1213332 call!60362))

(declare-fun b!1213333 () Bool)

(assert (=> b!1213333 (= e!689097 (= call!60364 (-!1893 call!60360 k0!934)))))

(declare-fun b!1213334 () Bool)

(declare-fun res!805757 () Bool)

(assert (=> b!1213334 (=> (not res!805757) (not e!689084))))

(assert (=> b!1213334 (= res!805757 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26802))))

(declare-fun b!1213335 () Bool)

(assert (=> b!1213335 (contains!7013 (+!4024 lt!551584 (tuple2!19985 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!551589 () Unit!40160)

(assert (=> b!1213335 (= lt!551589 (addStillContains!1082 lt!551584 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1213335 call!60363))

(assert (=> b!1213335 (= lt!551584 call!60359)))

(declare-fun lt!551590 () Unit!40160)

(assert (=> b!1213335 (= lt!551590 call!60358)))

(assert (=> b!1213335 (= e!689088 lt!551589)))

(declare-fun bm!60359 () Bool)

(assert (=> bm!60359 (= call!60362 call!60363)))

(declare-fun b!1213336 () Bool)

(assert (=> b!1213336 (= e!689095 (not e!689093))))

(declare-fun res!805752 () Bool)

(assert (=> b!1213336 (=> res!805752 e!689093)))

(assert (=> b!1213336 (= res!805752 (bvsgt from!1455 i!673))))

(assert (=> b!1213336 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!551588 () Unit!40160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78314 (_ BitVec 64) (_ BitVec 32)) Unit!40160)

(assert (=> b!1213336 (= lt!551588 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!60360 () Bool)

(assert (=> bm!60360 (= call!60361 call!60358)))

(declare-fun bm!60361 () Bool)

(assert (=> bm!60361 (= call!60364 (getCurrentListMapNoExtraKeys!5403 lt!551585 lt!551587 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213337 () Bool)

(assert (=> b!1213337 (= e!689099 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!805755 () Bool)

(assert (=> start!101186 (=> (not res!805755) (not e!689084))))

(assert (=> start!101186 (= res!805755 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38325 _keys!1208))))))

(assert (=> start!101186 e!689084))

(assert (=> start!101186 tp_is_empty!30777))

(declare-fun array_inv!28682 (array!78314) Bool)

(assert (=> start!101186 (array_inv!28682 _keys!1208)))

(assert (=> start!101186 true))

(assert (=> start!101186 tp!91241))

(declare-fun array_inv!28683 (array!78316) Bool)

(assert (=> start!101186 (and (array_inv!28683 _values!996) e!689090)))

(assert (= (and start!101186 res!805755) b!1213316))

(assert (= (and b!1213316 res!805753) b!1213323))

(assert (= (and b!1213323 res!805758) b!1213313))

(assert (= (and b!1213313 res!805764) b!1213334))

(assert (= (and b!1213334 res!805757) b!1213310))

(assert (= (and b!1213310 res!805765) b!1213308))

(assert (= (and b!1213308 res!805756) b!1213325))

(assert (= (and b!1213325 res!805762) b!1213322))

(assert (= (and b!1213322 res!805761) b!1213319))

(assert (= (and b!1213319 res!805760) b!1213336))

(assert (= (and b!1213336 (not res!805752)) b!1213311))

(assert (= (and b!1213311 (not res!805763)) b!1213309))

(assert (= (and b!1213309 c!119808) b!1213333))

(assert (= (and b!1213309 (not c!119808)) b!1213330))

(assert (= (or b!1213333 b!1213330) bm!60361))

(assert (= (or b!1213333 b!1213330) bm!60355))

(assert (= (and b!1213309 (not res!805754)) b!1213329))

(assert (= (and b!1213329 c!119812) b!1213314))

(assert (= (and b!1213329 (not c!119812)) b!1213315))

(assert (= (and b!1213314 c!119807) b!1213335))

(assert (= (and b!1213314 (not c!119807)) b!1213331))

(assert (= (and b!1213331 c!119811) b!1213332))

(assert (= (and b!1213331 (not c!119811)) b!1213312))

(assert (= (and b!1213312 c!119809) b!1213318))

(assert (= (and b!1213312 (not c!119809)) b!1213317))

(assert (= (or b!1213332 b!1213318) bm!60360))

(assert (= (or b!1213332 b!1213318) bm!60354))

(assert (= (or b!1213332 b!1213318) bm!60359))

(assert (= (or b!1213335 bm!60359) bm!60356))

(assert (= (or b!1213335 bm!60360) bm!60358))

(assert (= (or b!1213335 bm!60354) bm!60357))

(assert (= (and b!1213314 c!119810) b!1213337))

(assert (= (and b!1213314 (not c!119810)) b!1213324))

(assert (= (and b!1213314 res!805759) b!1213321))

(assert (= (and b!1213329 res!805751) b!1213326))

(assert (= (and b!1213320 condMapEmpty!48040) mapIsEmpty!48040))

(assert (= (and b!1213320 (not condMapEmpty!48040)) mapNonEmpty!48040))

(get-info :version)

(assert (= (and mapNonEmpty!48040 ((_ is ValueCellFull!14679) mapValue!48040)) b!1213327))

(assert (= (and b!1213320 ((_ is ValueCellFull!14679) mapDefault!48040)) b!1213328))

(assert (= start!101186 b!1213320))

(declare-fun b_lambda!21759 () Bool)

(assert (=> (not b_lambda!21759) (not b!1213311)))

(declare-fun t!39863 () Bool)

(declare-fun tb!10881 () Bool)

(assert (=> (and start!101186 (= defaultEntry!1004 defaultEntry!1004) t!39863) tb!10881))

(declare-fun result!22351 () Bool)

(assert (=> tb!10881 (= result!22351 tp_is_empty!30777)))

(assert (=> b!1213311 t!39863))

(declare-fun b_and!43275 () Bool)

(assert (= b_and!43273 (and (=> t!39863 result!22351) b_and!43275)))

(declare-fun m!1118665 () Bool)

(assert (=> b!1213309 m!1118665))

(declare-fun m!1118667 () Bool)

(assert (=> b!1213309 m!1118667))

(declare-fun m!1118669 () Bool)

(assert (=> b!1213319 m!1118669))

(declare-fun m!1118671 () Bool)

(assert (=> b!1213308 m!1118671))

(declare-fun m!1118673 () Bool)

(assert (=> b!1213333 m!1118673))

(declare-fun m!1118675 () Bool)

(assert (=> bm!60356 m!1118675))

(declare-fun m!1118677 () Bool)

(assert (=> b!1213337 m!1118677))

(declare-fun m!1118679 () Bool)

(assert (=> b!1213314 m!1118679))

(declare-fun m!1118681 () Bool)

(assert (=> b!1213314 m!1118681))

(declare-fun m!1118683 () Bool)

(assert (=> b!1213314 m!1118683))

(declare-fun m!1118685 () Bool)

(assert (=> b!1213314 m!1118685))

(declare-fun m!1118687 () Bool)

(assert (=> b!1213335 m!1118687))

(assert (=> b!1213335 m!1118687))

(declare-fun m!1118689 () Bool)

(assert (=> b!1213335 m!1118689))

(declare-fun m!1118691 () Bool)

(assert (=> b!1213335 m!1118691))

(declare-fun m!1118693 () Bool)

(assert (=> bm!60361 m!1118693))

(assert (=> b!1213321 m!1118677))

(declare-fun m!1118695 () Bool)

(assert (=> b!1213311 m!1118695))

(declare-fun m!1118697 () Bool)

(assert (=> b!1213311 m!1118697))

(declare-fun m!1118699 () Bool)

(assert (=> b!1213311 m!1118699))

(declare-fun m!1118701 () Bool)

(assert (=> b!1213311 m!1118701))

(declare-fun m!1118703 () Bool)

(assert (=> b!1213316 m!1118703))

(assert (=> b!1213326 m!1118693))

(declare-fun m!1118705 () Bool)

(assert (=> b!1213334 m!1118705))

(declare-fun m!1118707 () Bool)

(assert (=> b!1213322 m!1118707))

(declare-fun m!1118709 () Bool)

(assert (=> b!1213322 m!1118709))

(declare-fun m!1118711 () Bool)

(assert (=> bm!60355 m!1118711))

(declare-fun m!1118713 () Bool)

(assert (=> start!101186 m!1118713))

(declare-fun m!1118715 () Bool)

(assert (=> start!101186 m!1118715))

(declare-fun m!1118717 () Bool)

(assert (=> b!1213325 m!1118717))

(declare-fun m!1118719 () Bool)

(assert (=> b!1213313 m!1118719))

(declare-fun m!1118721 () Bool)

(assert (=> bm!60358 m!1118721))

(declare-fun m!1118723 () Bool)

(assert (=> mapNonEmpty!48040 m!1118723))

(declare-fun m!1118725 () Bool)

(assert (=> b!1213336 m!1118725))

(declare-fun m!1118727 () Bool)

(assert (=> b!1213336 m!1118727))

(declare-fun m!1118729 () Bool)

(assert (=> b!1213329 m!1118729))

(declare-fun m!1118731 () Bool)

(assert (=> b!1213329 m!1118731))

(declare-fun m!1118733 () Bool)

(assert (=> b!1213329 m!1118733))

(declare-fun m!1118735 () Bool)

(assert (=> b!1213329 m!1118735))

(assert (=> b!1213329 m!1118711))

(declare-fun m!1118737 () Bool)

(assert (=> b!1213329 m!1118737))

(assert (=> b!1213329 m!1118733))

(assert (=> b!1213329 m!1118665))

(declare-fun m!1118739 () Bool)

(assert (=> b!1213329 m!1118739))

(assert (=> b!1213329 m!1118665))

(assert (=> b!1213329 m!1118731))

(assert (=> b!1213329 m!1118665))

(declare-fun m!1118741 () Bool)

(assert (=> b!1213329 m!1118741))

(declare-fun m!1118743 () Bool)

(assert (=> bm!60357 m!1118743))

(check-sat (not bm!60355) (not bm!60357) (not bm!60361) (not b_lambda!21759) (not b!1213334) (not start!101186) (not b!1213337) tp_is_empty!30777 (not b!1213311) (not b!1213335) (not b!1213321) (not b!1213309) (not bm!60358) (not b_next!26073) (not b!1213316) (not b!1213329) (not mapNonEmpty!48040) b_and!43275 (not b!1213322) (not b!1213308) (not b!1213336) (not b!1213314) (not b!1213313) (not b!1213319) (not b!1213326) (not bm!60356) (not b!1213333))
(check-sat b_and!43275 (not b_next!26073))
