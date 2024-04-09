; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98914 () Bool)

(assert start!98914)

(declare-fun b_free!24483 () Bool)

(declare-fun b_next!24483 () Bool)

(assert (=> start!98914 (= b_free!24483 (not b_next!24483))))

(declare-fun tp!86161 () Bool)

(declare-fun b_and!39829 () Bool)

(assert (=> start!98914 (= tp!86161 b_and!39829)))

(declare-fun b!1157166 () Bool)

(declare-datatypes ((Unit!38008 0))(
  ( (Unit!38009) )
))
(declare-fun e!658114 () Unit!38008)

(declare-fun lt!519628 () Unit!38008)

(assert (=> b!1157166 (= e!658114 lt!519628)))

(declare-fun call!55340 () Unit!38008)

(assert (=> b!1157166 (= lt!519628 call!55340)))

(declare-fun call!55342 () Bool)

(assert (=> b!1157166 call!55342))

(declare-fun b!1157167 () Bool)

(declare-fun res!768592 () Bool)

(declare-fun e!658116 () Bool)

(assert (=> b!1157167 (=> (not res!768592) (not e!658116))))

(declare-datatypes ((array!74816 0))(
  ( (array!74817 (arr!36055 (Array (_ BitVec 32) (_ BitVec 64))) (size!36592 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74816)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74816 (_ BitVec 32)) Bool)

(assert (=> b!1157167 (= res!768592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1157168 () Bool)

(declare-fun e!658103 () Bool)

(declare-fun e!658109 () Bool)

(assert (=> b!1157168 (= e!658103 (not e!658109))))

(declare-fun res!768590 () Bool)

(assert (=> b!1157168 (=> res!768590 e!658109)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157168 (= res!768590 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157168 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!519638 () Unit!38008)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74816 (_ BitVec 64) (_ BitVec 32)) Unit!38008)

(assert (=> b!1157168 (= lt!519638 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1157169 () Bool)

(declare-fun res!768587 () Bool)

(assert (=> b!1157169 (=> (not res!768587) (not e!658116))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!43811 0))(
  ( (V!43812 (val!14563 Int)) )
))
(declare-datatypes ((ValueCell!13797 0))(
  ( (ValueCellFull!13797 (v!17201 V!43811)) (EmptyCell!13797) )
))
(declare-datatypes ((array!74818 0))(
  ( (array!74819 (arr!36056 (Array (_ BitVec 32) ValueCell!13797)) (size!36593 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74818)

(assert (=> b!1157169 (= res!768587 (and (= (size!36593 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36592 _keys!1208) (size!36593 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun zeroValue!944 () V!43811)

(declare-datatypes ((tuple2!18596 0))(
  ( (tuple2!18597 (_1!9308 (_ BitVec 64)) (_2!9308 V!43811)) )
))
(declare-datatypes ((List!25376 0))(
  ( (Nil!25373) (Cons!25372 (h!26581 tuple2!18596) (t!36858 List!25376)) )
))
(declare-datatypes ((ListLongMap!16577 0))(
  ( (ListLongMap!16578 (toList!8304 List!25376)) )
))
(declare-fun call!55343 () ListLongMap!16577)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!519629 () array!74816)

(declare-fun minValue!944 () V!43811)

(declare-fun lt!519630 () array!74818)

(declare-fun bm!55334 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4741 (array!74816 array!74818 (_ BitVec 32) (_ BitVec 32) V!43811 V!43811 (_ BitVec 32) Int) ListLongMap!16577)

(assert (=> bm!55334 (= call!55343 (getCurrentListMapNoExtraKeys!4741 lt!519629 lt!519630 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55335 () Bool)

(declare-fun call!55338 () Unit!38008)

(assert (=> bm!55335 (= call!55340 call!55338)))

(declare-fun b!1157171 () Bool)

(declare-fun res!768584 () Bool)

(assert (=> b!1157171 (=> (not res!768584) (not e!658116))))

(assert (=> b!1157171 (= res!768584 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36592 _keys!1208))))))

(declare-fun lt!519620 () ListLongMap!16577)

(declare-fun call!55337 () ListLongMap!16577)

(declare-fun call!55339 () Bool)

(declare-fun c!115155 () Bool)

(declare-fun bm!55336 () Bool)

(declare-fun contains!6790 (ListLongMap!16577 (_ BitVec 64)) Bool)

(assert (=> bm!55336 (= call!55339 (contains!6790 (ite c!115155 lt!519620 call!55337) k0!934))))

(declare-fun b!1157172 () Bool)

(assert (=> b!1157172 call!55342))

(declare-fun lt!519627 () Unit!38008)

(assert (=> b!1157172 (= lt!519627 call!55340)))

(declare-fun e!658115 () Unit!38008)

(assert (=> b!1157172 (= e!658115 lt!519627)))

(declare-fun e!658104 () Bool)

(declare-fun b!1157173 () Bool)

(assert (=> b!1157173 (= e!658104 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!55341 () ListLongMap!16577)

(declare-fun b!1157174 () Bool)

(declare-fun e!658107 () Bool)

(declare-fun -!1380 (ListLongMap!16577 (_ BitVec 64)) ListLongMap!16577)

(assert (=> b!1157174 (= e!658107 (= call!55343 (-!1380 call!55341 k0!934)))))

(declare-fun b!1157175 () Bool)

(declare-fun e!658110 () Unit!38008)

(declare-fun Unit!38010 () Unit!38008)

(assert (=> b!1157175 (= e!658110 Unit!38010)))

(declare-fun lt!519624 () Bool)

(assert (=> b!1157175 (= lt!519624 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1157175 (= c!115155 (and (not lt!519624) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519635 () Unit!38008)

(declare-fun e!658112 () Unit!38008)

(assert (=> b!1157175 (= lt!519635 e!658112)))

(declare-fun lt!519637 () Unit!38008)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!507 (array!74816 array!74818 (_ BitVec 32) (_ BitVec 32) V!43811 V!43811 (_ BitVec 64) (_ BitVec 32) Int) Unit!38008)

(assert (=> b!1157175 (= lt!519637 (lemmaListMapContainsThenArrayContainsFrom!507 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115157 () Bool)

(assert (=> b!1157175 (= c!115157 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768588 () Bool)

(declare-fun e!658118 () Bool)

(assert (=> b!1157175 (= res!768588 e!658118)))

(assert (=> b!1157175 (=> (not res!768588) (not e!658104))))

(assert (=> b!1157175 e!658104))

(declare-fun lt!519639 () Unit!38008)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74816 (_ BitVec 32) (_ BitVec 32)) Unit!38008)

(assert (=> b!1157175 (= lt!519639 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25377 0))(
  ( (Nil!25374) (Cons!25373 (h!26582 (_ BitVec 64)) (t!36859 List!25377)) )
))
(declare-fun arrayNoDuplicates!0 (array!74816 (_ BitVec 32) List!25377) Bool)

(assert (=> b!1157175 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25374)))

(declare-fun lt!519621 () Unit!38008)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74816 (_ BitVec 64) (_ BitVec 32) List!25377) Unit!38008)

(assert (=> b!1157175 (= lt!519621 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25374))))

(assert (=> b!1157175 false))

(declare-fun b!1157176 () Bool)

(declare-fun res!768586 () Bool)

(assert (=> b!1157176 (=> (not res!768586) (not e!658116))))

(assert (=> b!1157176 (= res!768586 (= (select (arr!36055 _keys!1208) i!673) k0!934))))

(declare-fun b!1157177 () Bool)

(assert (=> b!1157177 (= e!658118 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519624) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519626 () ListLongMap!16577)

(declare-fun b!1157178 () Bool)

(declare-fun e!658106 () Bool)

(assert (=> b!1157178 (= e!658106 (= lt!519626 (getCurrentListMapNoExtraKeys!4741 lt!519629 lt!519630 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157179 () Bool)

(declare-fun e!658111 () Bool)

(assert (=> b!1157179 (= e!658111 true)))

(assert (=> b!1157179 e!658106))

(declare-fun res!768583 () Bool)

(assert (=> b!1157179 (=> (not res!768583) (not e!658106))))

(declare-fun lt!519622 () ListLongMap!16577)

(assert (=> b!1157179 (= res!768583 (= lt!519626 lt!519622))))

(declare-fun lt!519623 () ListLongMap!16577)

(assert (=> b!1157179 (= lt!519626 (-!1380 lt!519623 k0!934))))

(declare-fun lt!519618 () V!43811)

(declare-fun +!3634 (ListLongMap!16577 tuple2!18596) ListLongMap!16577)

(assert (=> b!1157179 (= (-!1380 (+!3634 lt!519622 (tuple2!18597 (select (arr!36055 _keys!1208) from!1455) lt!519618)) (select (arr!36055 _keys!1208) from!1455)) lt!519622)))

(declare-fun lt!519634 () Unit!38008)

(declare-fun addThenRemoveForNewKeyIsSame!221 (ListLongMap!16577 (_ BitVec 64) V!43811) Unit!38008)

(assert (=> b!1157179 (= lt!519634 (addThenRemoveForNewKeyIsSame!221 lt!519622 (select (arr!36055 _keys!1208) from!1455) lt!519618))))

(declare-fun lt!519633 () V!43811)

(declare-fun get!18403 (ValueCell!13797 V!43811) V!43811)

(assert (=> b!1157179 (= lt!519618 (get!18403 (select (arr!36056 _values!996) from!1455) lt!519633))))

(declare-fun lt!519636 () Unit!38008)

(assert (=> b!1157179 (= lt!519636 e!658110)))

(declare-fun c!115154 () Bool)

(assert (=> b!1157179 (= c!115154 (contains!6790 lt!519622 k0!934))))

(assert (=> b!1157179 (= lt!519622 (getCurrentListMapNoExtraKeys!4741 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157180 () Bool)

(assert (=> b!1157180 (= e!658114 e!658115)))

(declare-fun c!115158 () Bool)

(assert (=> b!1157180 (= c!115158 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519624))))

(declare-fun mapNonEmpty!45344 () Bool)

(declare-fun mapRes!45344 () Bool)

(declare-fun tp!86160 () Bool)

(declare-fun e!658113 () Bool)

(assert (=> mapNonEmpty!45344 (= mapRes!45344 (and tp!86160 e!658113))))

(declare-fun mapRest!45344 () (Array (_ BitVec 32) ValueCell!13797))

(declare-fun mapKey!45344 () (_ BitVec 32))

(declare-fun mapValue!45344 () ValueCell!13797)

(assert (=> mapNonEmpty!45344 (= (arr!36056 _values!996) (store mapRest!45344 mapKey!45344 mapValue!45344))))

(declare-fun b!1157181 () Bool)

(declare-fun e!658108 () Bool)

(assert (=> b!1157181 (= e!658108 e!658111)))

(declare-fun res!768581 () Bool)

(assert (=> b!1157181 (=> res!768581 e!658111)))

(assert (=> b!1157181 (= res!768581 (not (= (select (arr!36055 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1157181 e!658107))

(declare-fun c!115156 () Bool)

(assert (=> b!1157181 (= c!115156 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519625 () Unit!38008)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!607 (array!74816 array!74818 (_ BitVec 32) (_ BitVec 32) V!43811 V!43811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38008)

(assert (=> b!1157181 (= lt!519625 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!607 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55337 () Bool)

(declare-fun call!55344 () ListLongMap!16577)

(declare-fun c!115153 () Bool)

(assert (=> bm!55337 (= call!55344 (+!3634 lt!519622 (ite (or c!115155 c!115153) (tuple2!18597 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18597 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!55338 () Bool)

(assert (=> bm!55338 (= call!55341 (getCurrentListMapNoExtraKeys!4741 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157182 () Bool)

(declare-fun tp_is_empty!29013 () Bool)

(assert (=> b!1157182 (= e!658113 tp_is_empty!29013)))

(declare-fun b!1157183 () Bool)

(declare-fun e!658105 () Bool)

(declare-fun e!658119 () Bool)

(assert (=> b!1157183 (= e!658105 (and e!658119 mapRes!45344))))

(declare-fun condMapEmpty!45344 () Bool)

(declare-fun mapDefault!45344 () ValueCell!13797)

(assert (=> b!1157183 (= condMapEmpty!45344 (= (arr!36056 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13797)) mapDefault!45344)))))

(declare-fun b!1157184 () Bool)

(assert (=> b!1157184 (contains!6790 (+!3634 lt!519620 (tuple2!18597 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!519619 () Unit!38008)

(declare-fun addStillContains!930 (ListLongMap!16577 (_ BitVec 64) V!43811 (_ BitVec 64)) Unit!38008)

(assert (=> b!1157184 (= lt!519619 (addStillContains!930 lt!519620 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1157184 call!55339))

(assert (=> b!1157184 (= lt!519620 call!55344)))

(declare-fun lt!519632 () Unit!38008)

(assert (=> b!1157184 (= lt!519632 call!55338)))

(assert (=> b!1157184 (= e!658112 lt!519619)))

(declare-fun bm!55339 () Bool)

(assert (=> bm!55339 (= call!55337 call!55344)))

(declare-fun bm!55340 () Bool)

(assert (=> bm!55340 (= call!55342 call!55339)))

(declare-fun b!1157185 () Bool)

(declare-fun Unit!38011 () Unit!38008)

(assert (=> b!1157185 (= e!658115 Unit!38011)))

(declare-fun b!1157186 () Bool)

(declare-fun res!768579 () Bool)

(assert (=> b!1157186 (=> (not res!768579) (not e!658116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1157186 (= res!768579 (validMask!0 mask!1564))))

(declare-fun b!1157187 () Bool)

(declare-fun res!768580 () Bool)

(assert (=> b!1157187 (=> (not res!768580) (not e!658103))))

(assert (=> b!1157187 (= res!768580 (arrayNoDuplicates!0 lt!519629 #b00000000000000000000000000000000 Nil!25374))))

(declare-fun b!1157188 () Bool)

(declare-fun res!768585 () Bool)

(assert (=> b!1157188 (=> (not res!768585) (not e!658116))))

(assert (=> b!1157188 (= res!768585 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25374))))

(declare-fun b!1157189 () Bool)

(declare-fun res!768582 () Bool)

(assert (=> b!1157189 (=> (not res!768582) (not e!658116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1157189 (= res!768582 (validKeyInArray!0 k0!934))))

(declare-fun b!1157190 () Bool)

(assert (=> b!1157190 (= e!658119 tp_is_empty!29013)))

(declare-fun b!1157170 () Bool)

(assert (=> b!1157170 (= e!658116 e!658103)))

(declare-fun res!768593 () Bool)

(assert (=> b!1157170 (=> (not res!768593) (not e!658103))))

(assert (=> b!1157170 (= res!768593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519629 mask!1564))))

(assert (=> b!1157170 (= lt!519629 (array!74817 (store (arr!36055 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36592 _keys!1208)))))

(declare-fun res!768591 () Bool)

(assert (=> start!98914 (=> (not res!768591) (not e!658116))))

(assert (=> start!98914 (= res!768591 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36592 _keys!1208))))))

(assert (=> start!98914 e!658116))

(assert (=> start!98914 tp_is_empty!29013))

(declare-fun array_inv!27464 (array!74816) Bool)

(assert (=> start!98914 (array_inv!27464 _keys!1208)))

(assert (=> start!98914 true))

(assert (=> start!98914 tp!86161))

(declare-fun array_inv!27465 (array!74818) Bool)

(assert (=> start!98914 (and (array_inv!27465 _values!996) e!658105)))

(declare-fun b!1157191 () Bool)

(assert (=> b!1157191 (= e!658107 (= call!55343 call!55341))))

(declare-fun b!1157192 () Bool)

(declare-fun Unit!38012 () Unit!38008)

(assert (=> b!1157192 (= e!658110 Unit!38012)))

(declare-fun b!1157193 () Bool)

(assert (=> b!1157193 (= c!115153 (and (not lt!519624) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1157193 (= e!658112 e!658114)))

(declare-fun mapIsEmpty!45344 () Bool)

(assert (=> mapIsEmpty!45344 mapRes!45344))

(declare-fun b!1157194 () Bool)

(assert (=> b!1157194 (= e!658109 e!658108)))

(declare-fun res!768589 () Bool)

(assert (=> b!1157194 (=> res!768589 e!658108)))

(assert (=> b!1157194 (= res!768589 (not (= from!1455 i!673)))))

(declare-fun lt!519631 () ListLongMap!16577)

(assert (=> b!1157194 (= lt!519631 (getCurrentListMapNoExtraKeys!4741 lt!519629 lt!519630 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1157194 (= lt!519630 (array!74819 (store (arr!36056 _values!996) i!673 (ValueCellFull!13797 lt!519633)) (size!36593 _values!996)))))

(declare-fun dynLambda!2752 (Int (_ BitVec 64)) V!43811)

(assert (=> b!1157194 (= lt!519633 (dynLambda!2752 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1157194 (= lt!519623 (getCurrentListMapNoExtraKeys!4741 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!55341 () Bool)

(assert (=> bm!55341 (= call!55338 (addStillContains!930 lt!519622 (ite (or c!115155 c!115153) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115155 c!115153) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1157195 () Bool)

(assert (=> b!1157195 (= e!658118 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98914 res!768591) b!1157186))

(assert (= (and b!1157186 res!768579) b!1157169))

(assert (= (and b!1157169 res!768587) b!1157167))

(assert (= (and b!1157167 res!768592) b!1157188))

(assert (= (and b!1157188 res!768585) b!1157171))

(assert (= (and b!1157171 res!768584) b!1157189))

(assert (= (and b!1157189 res!768582) b!1157176))

(assert (= (and b!1157176 res!768586) b!1157170))

(assert (= (and b!1157170 res!768593) b!1157187))

(assert (= (and b!1157187 res!768580) b!1157168))

(assert (= (and b!1157168 (not res!768590)) b!1157194))

(assert (= (and b!1157194 (not res!768589)) b!1157181))

(assert (= (and b!1157181 c!115156) b!1157174))

(assert (= (and b!1157181 (not c!115156)) b!1157191))

(assert (= (or b!1157174 b!1157191) bm!55334))

(assert (= (or b!1157174 b!1157191) bm!55338))

(assert (= (and b!1157181 (not res!768581)) b!1157179))

(assert (= (and b!1157179 c!115154) b!1157175))

(assert (= (and b!1157179 (not c!115154)) b!1157192))

(assert (= (and b!1157175 c!115155) b!1157184))

(assert (= (and b!1157175 (not c!115155)) b!1157193))

(assert (= (and b!1157193 c!115153) b!1157166))

(assert (= (and b!1157193 (not c!115153)) b!1157180))

(assert (= (and b!1157180 c!115158) b!1157172))

(assert (= (and b!1157180 (not c!115158)) b!1157185))

(assert (= (or b!1157166 b!1157172) bm!55335))

(assert (= (or b!1157166 b!1157172) bm!55339))

(assert (= (or b!1157166 b!1157172) bm!55340))

(assert (= (or b!1157184 bm!55340) bm!55336))

(assert (= (or b!1157184 bm!55335) bm!55341))

(assert (= (or b!1157184 bm!55339) bm!55337))

(assert (= (and b!1157175 c!115157) b!1157195))

(assert (= (and b!1157175 (not c!115157)) b!1157177))

(assert (= (and b!1157175 res!768588) b!1157173))

(assert (= (and b!1157179 res!768583) b!1157178))

(assert (= (and b!1157183 condMapEmpty!45344) mapIsEmpty!45344))

(assert (= (and b!1157183 (not condMapEmpty!45344)) mapNonEmpty!45344))

(get-info :version)

(assert (= (and mapNonEmpty!45344 ((_ is ValueCellFull!13797) mapValue!45344)) b!1157182))

(assert (= (and b!1157183 ((_ is ValueCellFull!13797) mapDefault!45344)) b!1157190))

(assert (= start!98914 b!1157183))

(declare-fun b_lambda!19607 () Bool)

(assert (=> (not b_lambda!19607) (not b!1157194)))

(declare-fun t!36857 () Bool)

(declare-fun tb!9303 () Bool)

(assert (=> (and start!98914 (= defaultEntry!1004 defaultEntry!1004) t!36857) tb!9303))

(declare-fun result!19163 () Bool)

(assert (=> tb!9303 (= result!19163 tp_is_empty!29013)))

(assert (=> b!1157194 t!36857))

(declare-fun b_and!39831 () Bool)

(assert (= b_and!39829 (and (=> t!36857 result!19163) b_and!39831)))

(declare-fun m!1066583 () Bool)

(assert (=> bm!55341 m!1066583))

(declare-fun m!1066585 () Bool)

(assert (=> mapNonEmpty!45344 m!1066585))

(declare-fun m!1066587 () Bool)

(assert (=> b!1157187 m!1066587))

(declare-fun m!1066589 () Bool)

(assert (=> b!1157184 m!1066589))

(assert (=> b!1157184 m!1066589))

(declare-fun m!1066591 () Bool)

(assert (=> b!1157184 m!1066591))

(declare-fun m!1066593 () Bool)

(assert (=> b!1157184 m!1066593))

(declare-fun m!1066595 () Bool)

(assert (=> b!1157178 m!1066595))

(declare-fun m!1066597 () Bool)

(assert (=> bm!55336 m!1066597))

(declare-fun m!1066599 () Bool)

(assert (=> b!1157186 m!1066599))

(declare-fun m!1066601 () Bool)

(assert (=> b!1157170 m!1066601))

(declare-fun m!1066603 () Bool)

(assert (=> b!1157170 m!1066603))

(declare-fun m!1066605 () Bool)

(assert (=> start!98914 m!1066605))

(declare-fun m!1066607 () Bool)

(assert (=> start!98914 m!1066607))

(declare-fun m!1066609 () Bool)

(assert (=> bm!55337 m!1066609))

(assert (=> bm!55334 m!1066595))

(declare-fun m!1066611 () Bool)

(assert (=> b!1157195 m!1066611))

(declare-fun m!1066613 () Bool)

(assert (=> b!1157181 m!1066613))

(declare-fun m!1066615 () Bool)

(assert (=> b!1157181 m!1066615))

(declare-fun m!1066617 () Bool)

(assert (=> b!1157167 m!1066617))

(declare-fun m!1066619 () Bool)

(assert (=> b!1157189 m!1066619))

(declare-fun m!1066621 () Bool)

(assert (=> b!1157179 m!1066621))

(declare-fun m!1066623 () Bool)

(assert (=> b!1157179 m!1066623))

(declare-fun m!1066625 () Bool)

(assert (=> b!1157179 m!1066625))

(declare-fun m!1066627 () Bool)

(assert (=> b!1157179 m!1066627))

(assert (=> b!1157179 m!1066613))

(declare-fun m!1066629 () Bool)

(assert (=> b!1157179 m!1066629))

(assert (=> b!1157179 m!1066625))

(assert (=> b!1157179 m!1066613))

(declare-fun m!1066631 () Bool)

(assert (=> b!1157179 m!1066631))

(assert (=> b!1157179 m!1066613))

(declare-fun m!1066633 () Bool)

(assert (=> b!1157179 m!1066633))

(assert (=> b!1157179 m!1066629))

(declare-fun m!1066635 () Bool)

(assert (=> b!1157179 m!1066635))

(declare-fun m!1066637 () Bool)

(assert (=> b!1157174 m!1066637))

(declare-fun m!1066639 () Bool)

(assert (=> b!1157176 m!1066639))

(assert (=> bm!55338 m!1066621))

(declare-fun m!1066641 () Bool)

(assert (=> b!1157175 m!1066641))

(declare-fun m!1066643 () Bool)

(assert (=> b!1157175 m!1066643))

(declare-fun m!1066645 () Bool)

(assert (=> b!1157175 m!1066645))

(declare-fun m!1066647 () Bool)

(assert (=> b!1157175 m!1066647))

(declare-fun m!1066649 () Bool)

(assert (=> b!1157168 m!1066649))

(declare-fun m!1066651 () Bool)

(assert (=> b!1157168 m!1066651))

(declare-fun m!1066653 () Bool)

(assert (=> b!1157194 m!1066653))

(declare-fun m!1066655 () Bool)

(assert (=> b!1157194 m!1066655))

(declare-fun m!1066657 () Bool)

(assert (=> b!1157194 m!1066657))

(declare-fun m!1066659 () Bool)

(assert (=> b!1157194 m!1066659))

(declare-fun m!1066661 () Bool)

(assert (=> b!1157188 m!1066661))

(assert (=> b!1157173 m!1066611))

(check-sat (not b!1157178) (not b!1157186) (not b!1157184) b_and!39831 (not bm!55338) (not b!1157168) (not b!1157170) (not b!1157189) (not b!1157175) (not start!98914) tp_is_empty!29013 (not bm!55336) (not b!1157181) (not b_lambda!19607) (not bm!55334) (not mapNonEmpty!45344) (not b!1157174) (not b!1157167) (not bm!55337) (not b!1157173) (not b!1157194) (not b!1157187) (not b!1157195) (not bm!55341) (not b!1157188) (not b!1157179) (not b_next!24483))
(check-sat b_and!39831 (not b_next!24483))
