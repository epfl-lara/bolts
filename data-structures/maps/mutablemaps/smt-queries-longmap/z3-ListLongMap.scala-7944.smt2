; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98542 () Bool)

(assert start!98542)

(declare-fun b_free!24111 () Bool)

(declare-fun b_next!24111 () Bool)

(assert (=> start!98542 (= b_free!24111 (not b_next!24111))))

(declare-fun tp!85044 () Bool)

(declare-fun b_and!39085 () Bool)

(assert (=> start!98542 (= tp!85044 b_and!39085)))

(declare-fun b!1140184 () Bool)

(declare-fun e!648762 () Bool)

(declare-fun e!648749 () Bool)

(assert (=> b!1140184 (= e!648762 e!648749)))

(declare-fun res!760344 () Bool)

(assert (=> b!1140184 (=> res!760344 e!648749)))

(declare-datatypes ((array!74098 0))(
  ( (array!74099 (arr!35696 (Array (_ BitVec 32) (_ BitVec 64))) (size!36233 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74098)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1140184 (= res!760344 (not (= (select (arr!35696 _keys!1208) from!1455) k0!934)))))

(declare-fun e!648759 () Bool)

(assert (=> b!1140184 e!648759))

(declare-fun c!111805 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140184 (= c!111805 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43315 0))(
  ( (V!43316 (val!14377 Int)) )
))
(declare-fun zeroValue!944 () V!43315)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13611 0))(
  ( (ValueCellFull!13611 (v!17015 V!43315)) (EmptyCell!13611) )
))
(declare-datatypes ((array!74100 0))(
  ( (array!74101 (arr!35697 (Array (_ BitVec 32) ValueCell!13611)) (size!36234 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74100)

(declare-fun minValue!944 () V!43315)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((Unit!37317 0))(
  ( (Unit!37318) )
))
(declare-fun lt!507645 () Unit!37317)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!496 (array!74098 array!74100 (_ BitVec 32) (_ BitVec 32) V!43315 V!43315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37317)

(assert (=> b!1140184 (= lt!507645 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140185 () Bool)

(declare-fun e!648748 () Bool)

(declare-fun e!648753 () Bool)

(assert (=> b!1140185 (= e!648748 e!648753)))

(declare-fun res!760345 () Bool)

(assert (=> b!1140185 (=> (not res!760345) (not e!648753))))

(declare-fun lt!507638 () array!74098)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74098 (_ BitVec 32)) Bool)

(assert (=> b!1140185 (= res!760345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507638 mask!1564))))

(assert (=> b!1140185 (= lt!507638 (array!74099 (store (arr!35696 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36233 _keys!1208)))))

(declare-fun b!1140186 () Bool)

(declare-fun e!648757 () Unit!37317)

(declare-fun Unit!37319 () Unit!37317)

(assert (=> b!1140186 (= e!648757 Unit!37319)))

(declare-datatypes ((tuple2!18266 0))(
  ( (tuple2!18267 (_1!9143 (_ BitVec 64)) (_2!9143 V!43315)) )
))
(declare-datatypes ((List!25068 0))(
  ( (Nil!25065) (Cons!25064 (h!26273 tuple2!18266) (t!36178 List!25068)) )
))
(declare-datatypes ((ListLongMap!16247 0))(
  ( (ListLongMap!16248 (toList!8139 List!25068)) )
))
(declare-fun lt!507647 () ListLongMap!16247)

(declare-fun call!50873 () Unit!37317)

(declare-fun c!111807 () Bool)

(declare-fun bm!50870 () Bool)

(declare-fun lt!507639 () ListLongMap!16247)

(declare-fun c!111809 () Bool)

(declare-fun addStillContains!787 (ListLongMap!16247 (_ BitVec 64) V!43315 (_ BitVec 64)) Unit!37317)

(assert (=> bm!50870 (= call!50873 (addStillContains!787 (ite c!111809 lt!507639 lt!507647) (ite c!111809 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111807 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111809 minValue!944 (ite c!111807 zeroValue!944 minValue!944)) k0!934))))

(declare-fun res!760341 () Bool)

(assert (=> start!98542 (=> (not res!760341) (not e!648748))))

(assert (=> start!98542 (= res!760341 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36233 _keys!1208))))))

(assert (=> start!98542 e!648748))

(declare-fun tp_is_empty!28641 () Bool)

(assert (=> start!98542 tp_is_empty!28641))

(declare-fun array_inv!27236 (array!74098) Bool)

(assert (=> start!98542 (array_inv!27236 _keys!1208)))

(assert (=> start!98542 true))

(assert (=> start!98542 tp!85044))

(declare-fun e!648752 () Bool)

(declare-fun array_inv!27237 (array!74100) Bool)

(assert (=> start!98542 (and (array_inv!27237 _values!996) e!648752)))

(declare-fun call!50875 () ListLongMap!16247)

(declare-fun b!1140187 () Bool)

(declare-fun call!50879 () ListLongMap!16247)

(declare-fun -!1238 (ListLongMap!16247 (_ BitVec 64)) ListLongMap!16247)

(assert (=> b!1140187 (= e!648759 (= call!50879 (-!1238 call!50875 k0!934)))))

(declare-fun b!1140188 () Bool)

(declare-fun res!760343 () Bool)

(assert (=> b!1140188 (=> (not res!760343) (not e!648748))))

(assert (=> b!1140188 (= res!760343 (= (select (arr!35696 _keys!1208) i!673) k0!934))))

(declare-fun b!1140189 () Bool)

(declare-fun e!648761 () Bool)

(assert (=> b!1140189 (= e!648753 (not e!648761))))

(declare-fun res!760349 () Bool)

(assert (=> b!1140189 (=> res!760349 e!648761)))

(assert (=> b!1140189 (= res!760349 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140189 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!507651 () Unit!37317)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74098 (_ BitVec 64) (_ BitVec 32)) Unit!37317)

(assert (=> b!1140189 (= lt!507651 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!44786 () Bool)

(declare-fun mapRes!44786 () Bool)

(declare-fun tp!85045 () Bool)

(declare-fun e!648756 () Bool)

(assert (=> mapNonEmpty!44786 (= mapRes!44786 (and tp!85045 e!648756))))

(declare-fun mapKey!44786 () (_ BitVec 32))

(declare-fun mapRest!44786 () (Array (_ BitVec 32) ValueCell!13611))

(declare-fun mapValue!44786 () ValueCell!13611)

(assert (=> mapNonEmpty!44786 (= (arr!35697 _values!996) (store mapRest!44786 mapKey!44786 mapValue!44786))))

(declare-fun call!50874 () ListLongMap!16247)

(declare-fun bm!50871 () Bool)

(declare-fun +!3486 (ListLongMap!16247 tuple2!18266) ListLongMap!16247)

(assert (=> bm!50871 (= call!50874 (+!3486 (ite c!111809 lt!507639 lt!507647) (ite c!111809 (tuple2!18267 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111807 (tuple2!18267 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18267 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1140190 () Bool)

(declare-fun res!760342 () Bool)

(assert (=> b!1140190 (=> (not res!760342) (not e!648748))))

(assert (=> b!1140190 (= res!760342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1140191 () Bool)

(declare-fun e!648750 () Unit!37317)

(declare-fun Unit!37320 () Unit!37317)

(assert (=> b!1140191 (= e!648750 Unit!37320)))

(declare-fun lt!507635 () Bool)

(assert (=> b!1140191 (= lt!507635 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1140191 (= c!111809 (and (not lt!507635) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507636 () Unit!37317)

(declare-fun e!648751 () Unit!37317)

(assert (=> b!1140191 (= lt!507636 e!648751)))

(declare-fun lt!507637 () Unit!37317)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!388 (array!74098 array!74100 (_ BitVec 32) (_ BitVec 32) V!43315 V!43315 (_ BitVec 64) (_ BitVec 32) Int) Unit!37317)

(assert (=> b!1140191 (= lt!507637 (lemmaListMapContainsThenArrayContainsFrom!388 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111808 () Bool)

(assert (=> b!1140191 (= c!111808 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760348 () Bool)

(declare-fun e!648760 () Bool)

(assert (=> b!1140191 (= res!760348 e!648760)))

(declare-fun e!648747 () Bool)

(assert (=> b!1140191 (=> (not res!760348) (not e!648747))))

(assert (=> b!1140191 e!648747))

(declare-fun lt!507648 () Unit!37317)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74098 (_ BitVec 32) (_ BitVec 32)) Unit!37317)

(assert (=> b!1140191 (= lt!507648 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25069 0))(
  ( (Nil!25066) (Cons!25065 (h!26274 (_ BitVec 64)) (t!36179 List!25069)) )
))
(declare-fun arrayNoDuplicates!0 (array!74098 (_ BitVec 32) List!25069) Bool)

(assert (=> b!1140191 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25066)))

(declare-fun lt!507634 () Unit!37317)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74098 (_ BitVec 64) (_ BitVec 32) List!25069) Unit!37317)

(assert (=> b!1140191 (= lt!507634 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25066))))

(assert (=> b!1140191 false))

(declare-fun bm!50872 () Bool)

(declare-fun call!50878 () Bool)

(declare-fun call!50880 () Bool)

(assert (=> bm!50872 (= call!50878 call!50880)))

(declare-fun b!1140192 () Bool)

(declare-fun e!648755 () Bool)

(assert (=> b!1140192 (= e!648755 tp_is_empty!28641)))

(declare-fun b!1140193 () Bool)

(declare-fun res!760346 () Bool)

(assert (=> b!1140193 (=> (not res!760346) (not e!648748))))

(assert (=> b!1140193 (= res!760346 (and (= (size!36234 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36233 _keys!1208) (size!36234 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!50873 () Bool)

(declare-fun call!50876 () ListLongMap!16247)

(assert (=> bm!50873 (= call!50876 call!50874)))

(declare-fun bm!50874 () Bool)

(declare-fun contains!6646 (ListLongMap!16247 (_ BitVec 64)) Bool)

(assert (=> bm!50874 (= call!50880 (contains!6646 (ite c!111809 lt!507639 call!50876) k0!934))))

(declare-fun b!1140194 () Bool)

(declare-fun res!760340 () Bool)

(assert (=> b!1140194 (=> (not res!760340) (not e!648748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140194 (= res!760340 (validMask!0 mask!1564))))

(declare-fun b!1140195 () Bool)

(assert (=> b!1140195 (= e!648760 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507635) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1140196 () Bool)

(declare-fun res!760350 () Bool)

(assert (=> b!1140196 (=> (not res!760350) (not e!648748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1140196 (= res!760350 (validKeyInArray!0 k0!934))))

(declare-fun b!1140197 () Bool)

(assert (=> b!1140197 (= e!648760 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140198 () Bool)

(assert (=> b!1140198 call!50878))

(declare-fun lt!507642 () Unit!37317)

(declare-fun call!50877 () Unit!37317)

(assert (=> b!1140198 (= lt!507642 call!50877)))

(assert (=> b!1140198 (= e!648757 lt!507642)))

(declare-fun b!1140199 () Bool)

(assert (=> b!1140199 (= e!648756 tp_is_empty!28641)))

(declare-fun b!1140200 () Bool)

(assert (=> b!1140200 (= e!648761 e!648762)))

(declare-fun res!760352 () Bool)

(assert (=> b!1140200 (=> res!760352 e!648762)))

(assert (=> b!1140200 (= res!760352 (not (= from!1455 i!673)))))

(declare-fun lt!507641 () ListLongMap!16247)

(declare-fun lt!507652 () array!74100)

(declare-fun getCurrentListMapNoExtraKeys!4584 (array!74098 array!74100 (_ BitVec 32) (_ BitVec 32) V!43315 V!43315 (_ BitVec 32) Int) ListLongMap!16247)

(assert (=> b!1140200 (= lt!507641 (getCurrentListMapNoExtraKeys!4584 lt!507638 lt!507652 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!507643 () V!43315)

(assert (=> b!1140200 (= lt!507652 (array!74101 (store (arr!35697 _values!996) i!673 (ValueCellFull!13611 lt!507643)) (size!36234 _values!996)))))

(declare-fun dynLambda!2639 (Int (_ BitVec 64)) V!43315)

(assert (=> b!1140200 (= lt!507643 (dynLambda!2639 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507654 () ListLongMap!16247)

(assert (=> b!1140200 (= lt!507654 (getCurrentListMapNoExtraKeys!4584 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!50875 () Bool)

(assert (=> bm!50875 (= call!50877 call!50873)))

(declare-fun bm!50876 () Bool)

(assert (=> bm!50876 (= call!50875 (getCurrentListMapNoExtraKeys!4584 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44786 () Bool)

(assert (=> mapIsEmpty!44786 mapRes!44786))

(declare-fun b!1140201 () Bool)

(assert (=> b!1140201 (= e!648747 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140202 () Bool)

(declare-fun e!648754 () Unit!37317)

(assert (=> b!1140202 (= e!648754 e!648757)))

(declare-fun c!111810 () Bool)

(assert (=> b!1140202 (= c!111810 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507635))))

(declare-fun bm!50877 () Bool)

(assert (=> bm!50877 (= call!50879 (getCurrentListMapNoExtraKeys!4584 lt!507638 lt!507652 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140203 () Bool)

(assert (=> b!1140203 (= e!648749 true)))

(declare-fun lt!507640 () V!43315)

(assert (=> b!1140203 (= (-!1238 (+!3486 lt!507647 (tuple2!18267 (select (arr!35696 _keys!1208) from!1455) lt!507640)) (select (arr!35696 _keys!1208) from!1455)) lt!507647)))

(declare-fun lt!507646 () Unit!37317)

(declare-fun addThenRemoveForNewKeyIsSame!94 (ListLongMap!16247 (_ BitVec 64) V!43315) Unit!37317)

(assert (=> b!1140203 (= lt!507646 (addThenRemoveForNewKeyIsSame!94 lt!507647 (select (arr!35696 _keys!1208) from!1455) lt!507640))))

(declare-fun get!18152 (ValueCell!13611 V!43315) V!43315)

(assert (=> b!1140203 (= lt!507640 (get!18152 (select (arr!35697 _values!996) from!1455) lt!507643))))

(declare-fun lt!507650 () Unit!37317)

(assert (=> b!1140203 (= lt!507650 e!648750)))

(declare-fun c!111806 () Bool)

(assert (=> b!1140203 (= c!111806 (contains!6646 lt!507647 k0!934))))

(assert (=> b!1140203 (= lt!507647 (getCurrentListMapNoExtraKeys!4584 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140204 () Bool)

(declare-fun res!760339 () Bool)

(assert (=> b!1140204 (=> (not res!760339) (not e!648753))))

(assert (=> b!1140204 (= res!760339 (arrayNoDuplicates!0 lt!507638 #b00000000000000000000000000000000 Nil!25066))))

(declare-fun b!1140205 () Bool)

(assert (=> b!1140205 (= c!111807 (and (not lt!507635) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1140205 (= e!648751 e!648754)))

(declare-fun b!1140206 () Bool)

(assert (=> b!1140206 (= e!648752 (and e!648755 mapRes!44786))))

(declare-fun condMapEmpty!44786 () Bool)

(declare-fun mapDefault!44786 () ValueCell!13611)

(assert (=> b!1140206 (= condMapEmpty!44786 (= (arr!35697 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13611)) mapDefault!44786)))))

(declare-fun b!1140207 () Bool)

(assert (=> b!1140207 (contains!6646 call!50874 k0!934)))

(declare-fun lt!507644 () Unit!37317)

(assert (=> b!1140207 (= lt!507644 call!50873)))

(assert (=> b!1140207 call!50880))

(assert (=> b!1140207 (= lt!507639 (+!3486 lt!507647 (tuple2!18267 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!507649 () Unit!37317)

(assert (=> b!1140207 (= lt!507649 (addStillContains!787 lt!507647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1140207 (= e!648751 lt!507644)))

(declare-fun b!1140208 () Bool)

(declare-fun lt!507653 () Unit!37317)

(assert (=> b!1140208 (= e!648754 lt!507653)))

(assert (=> b!1140208 (= lt!507653 call!50877)))

(assert (=> b!1140208 call!50878))

(declare-fun b!1140209 () Bool)

(declare-fun Unit!37321 () Unit!37317)

(assert (=> b!1140209 (= e!648750 Unit!37321)))

(declare-fun b!1140210 () Bool)

(declare-fun res!760347 () Bool)

(assert (=> b!1140210 (=> (not res!760347) (not e!648748))))

(assert (=> b!1140210 (= res!760347 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25066))))

(declare-fun b!1140211 () Bool)

(assert (=> b!1140211 (= e!648759 (= call!50879 call!50875))))

(declare-fun b!1140212 () Bool)

(declare-fun res!760351 () Bool)

(assert (=> b!1140212 (=> (not res!760351) (not e!648748))))

(assert (=> b!1140212 (= res!760351 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36233 _keys!1208))))))

(assert (= (and start!98542 res!760341) b!1140194))

(assert (= (and b!1140194 res!760340) b!1140193))

(assert (= (and b!1140193 res!760346) b!1140190))

(assert (= (and b!1140190 res!760342) b!1140210))

(assert (= (and b!1140210 res!760347) b!1140212))

(assert (= (and b!1140212 res!760351) b!1140196))

(assert (= (and b!1140196 res!760350) b!1140188))

(assert (= (and b!1140188 res!760343) b!1140185))

(assert (= (and b!1140185 res!760345) b!1140204))

(assert (= (and b!1140204 res!760339) b!1140189))

(assert (= (and b!1140189 (not res!760349)) b!1140200))

(assert (= (and b!1140200 (not res!760352)) b!1140184))

(assert (= (and b!1140184 c!111805) b!1140187))

(assert (= (and b!1140184 (not c!111805)) b!1140211))

(assert (= (or b!1140187 b!1140211) bm!50877))

(assert (= (or b!1140187 b!1140211) bm!50876))

(assert (= (and b!1140184 (not res!760344)) b!1140203))

(assert (= (and b!1140203 c!111806) b!1140191))

(assert (= (and b!1140203 (not c!111806)) b!1140209))

(assert (= (and b!1140191 c!111809) b!1140207))

(assert (= (and b!1140191 (not c!111809)) b!1140205))

(assert (= (and b!1140205 c!111807) b!1140208))

(assert (= (and b!1140205 (not c!111807)) b!1140202))

(assert (= (and b!1140202 c!111810) b!1140198))

(assert (= (and b!1140202 (not c!111810)) b!1140186))

(assert (= (or b!1140208 b!1140198) bm!50875))

(assert (= (or b!1140208 b!1140198) bm!50873))

(assert (= (or b!1140208 b!1140198) bm!50872))

(assert (= (or b!1140207 bm!50872) bm!50874))

(assert (= (or b!1140207 bm!50875) bm!50870))

(assert (= (or b!1140207 bm!50873) bm!50871))

(assert (= (and b!1140191 c!111808) b!1140197))

(assert (= (and b!1140191 (not c!111808)) b!1140195))

(assert (= (and b!1140191 res!760348) b!1140201))

(assert (= (and b!1140206 condMapEmpty!44786) mapIsEmpty!44786))

(assert (= (and b!1140206 (not condMapEmpty!44786)) mapNonEmpty!44786))

(get-info :version)

(assert (= (and mapNonEmpty!44786 ((_ is ValueCellFull!13611) mapValue!44786)) b!1140199))

(assert (= (and b!1140206 ((_ is ValueCellFull!13611) mapDefault!44786)) b!1140192))

(assert (= start!98542 b!1140206))

(declare-fun b_lambda!19235 () Bool)

(assert (=> (not b_lambda!19235) (not b!1140200)))

(declare-fun t!36177 () Bool)

(declare-fun tb!8931 () Bool)

(assert (=> (and start!98542 (= defaultEntry!1004 defaultEntry!1004) t!36177) tb!8931))

(declare-fun result!18419 () Bool)

(assert (=> tb!8931 (= result!18419 tp_is_empty!28641)))

(assert (=> b!1140200 t!36177))

(declare-fun b_and!39087 () Bool)

(assert (= b_and!39085 (and (=> t!36177 result!18419) b_and!39087)))

(declare-fun m!1051773 () Bool)

(assert (=> b!1140210 m!1051773))

(declare-fun m!1051775 () Bool)

(assert (=> b!1140187 m!1051775))

(declare-fun m!1051777 () Bool)

(assert (=> start!98542 m!1051777))

(declare-fun m!1051779 () Bool)

(assert (=> start!98542 m!1051779))

(declare-fun m!1051781 () Bool)

(assert (=> b!1140201 m!1051781))

(declare-fun m!1051783 () Bool)

(assert (=> b!1140190 m!1051783))

(declare-fun m!1051785 () Bool)

(assert (=> b!1140188 m!1051785))

(declare-fun m!1051787 () Bool)

(assert (=> bm!50874 m!1051787))

(declare-fun m!1051789 () Bool)

(assert (=> b!1140203 m!1051789))

(declare-fun m!1051791 () Bool)

(assert (=> b!1140203 m!1051791))

(declare-fun m!1051793 () Bool)

(assert (=> b!1140203 m!1051793))

(declare-fun m!1051795 () Bool)

(assert (=> b!1140203 m!1051795))

(declare-fun m!1051797 () Bool)

(assert (=> b!1140203 m!1051797))

(declare-fun m!1051799 () Bool)

(assert (=> b!1140203 m!1051799))

(assert (=> b!1140203 m!1051791))

(declare-fun m!1051801 () Bool)

(assert (=> b!1140203 m!1051801))

(assert (=> b!1140203 m!1051795))

(assert (=> b!1140203 m!1051797))

(declare-fun m!1051803 () Bool)

(assert (=> b!1140203 m!1051803))

(assert (=> b!1140203 m!1051797))

(declare-fun m!1051805 () Bool)

(assert (=> mapNonEmpty!44786 m!1051805))

(declare-fun m!1051807 () Bool)

(assert (=> b!1140185 m!1051807))

(declare-fun m!1051809 () Bool)

(assert (=> b!1140185 m!1051809))

(assert (=> bm!50876 m!1051789))

(declare-fun m!1051811 () Bool)

(assert (=> bm!50871 m!1051811))

(declare-fun m!1051813 () Bool)

(assert (=> b!1140204 m!1051813))

(declare-fun m!1051815 () Bool)

(assert (=> b!1140200 m!1051815))

(declare-fun m!1051817 () Bool)

(assert (=> b!1140200 m!1051817))

(declare-fun m!1051819 () Bool)

(assert (=> b!1140200 m!1051819))

(declare-fun m!1051821 () Bool)

(assert (=> b!1140200 m!1051821))

(declare-fun m!1051823 () Bool)

(assert (=> b!1140191 m!1051823))

(declare-fun m!1051825 () Bool)

(assert (=> b!1140191 m!1051825))

(declare-fun m!1051827 () Bool)

(assert (=> b!1140191 m!1051827))

(declare-fun m!1051829 () Bool)

(assert (=> b!1140191 m!1051829))

(declare-fun m!1051831 () Bool)

(assert (=> b!1140194 m!1051831))

(assert (=> b!1140197 m!1051781))

(declare-fun m!1051833 () Bool)

(assert (=> b!1140196 m!1051833))

(assert (=> b!1140184 m!1051797))

(declare-fun m!1051835 () Bool)

(assert (=> b!1140184 m!1051835))

(declare-fun m!1051837 () Bool)

(assert (=> bm!50877 m!1051837))

(declare-fun m!1051839 () Bool)

(assert (=> bm!50870 m!1051839))

(declare-fun m!1051841 () Bool)

(assert (=> b!1140189 m!1051841))

(declare-fun m!1051843 () Bool)

(assert (=> b!1140189 m!1051843))

(declare-fun m!1051845 () Bool)

(assert (=> b!1140207 m!1051845))

(declare-fun m!1051847 () Bool)

(assert (=> b!1140207 m!1051847))

(declare-fun m!1051849 () Bool)

(assert (=> b!1140207 m!1051849))

(check-sat b_and!39087 (not b!1140196) (not b_lambda!19235) (not bm!50876) (not b_next!24111) (not b!1140189) (not b!1140207) (not mapNonEmpty!44786) (not b!1140187) (not b!1140194) tp_is_empty!28641 (not bm!50877) (not b!1140185) (not b!1140203) (not bm!50874) (not b!1140210) (not b!1140200) (not b!1140191) (not bm!50871) (not b!1140197) (not b!1140190) (not b!1140201) (not bm!50870) (not b!1140184) (not b!1140204) (not start!98542))
(check-sat b_and!39087 (not b_next!24111))
