; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98428 () Bool)

(assert start!98428)

(declare-fun b_free!23997 () Bool)

(declare-fun b_next!23997 () Bool)

(assert (=> start!98428 (= b_free!23997 (not b_next!23997))))

(declare-fun tp!84702 () Bool)

(declare-fun b_and!38857 () Bool)

(assert (=> start!98428 (= tp!84702 b_and!38857)))

(declare-fun b!1135013 () Bool)

(declare-fun e!645963 () Bool)

(declare-fun e!645974 () Bool)

(assert (=> b!1135013 (= e!645963 e!645974)))

(declare-fun res!757759 () Bool)

(assert (=> b!1135013 (=> res!757759 e!645974)))

(declare-datatypes ((array!73876 0))(
  ( (array!73877 (arr!35585 (Array (_ BitVec 32) (_ BitVec 64))) (size!36122 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73876)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1135013 (= res!757759 (or (bvsge (size!36122 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36122 _keys!1208)) (bvsge from!1455 (size!36122 _keys!1208))))))

(declare-datatypes ((List!24974 0))(
  ( (Nil!24971) (Cons!24970 (h!26179 (_ BitVec 64)) (t!35970 List!24974)) )
))
(declare-fun arrayNoDuplicates!0 (array!73876 (_ BitVec 32) List!24974) Bool)

(assert (=> b!1135013 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24971)))

(declare-datatypes ((Unit!37127 0))(
  ( (Unit!37128) )
))
(declare-fun lt!504514 () Unit!37127)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73876 (_ BitVec 32) (_ BitVec 32)) Unit!37127)

(assert (=> b!1135013 (= lt!504514 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!645976 () Bool)

(assert (=> b!1135013 e!645976))

(declare-fun res!757754 () Bool)

(assert (=> b!1135013 (=> (not res!757754) (not e!645976))))

(declare-fun e!645966 () Bool)

(assert (=> b!1135013 (= res!757754 e!645966)))

(declare-fun c!110829 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1135013 (= c!110829 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!43163 0))(
  ( (V!43164 (val!14320 Int)) )
))
(declare-fun zeroValue!944 () V!43163)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13554 0))(
  ( (ValueCellFull!13554 (v!16958 V!43163)) (EmptyCell!13554) )
))
(declare-datatypes ((array!73878 0))(
  ( (array!73879 (arr!35586 (Array (_ BitVec 32) ValueCell!13554)) (size!36123 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73878)

(declare-fun minValue!944 () V!43163)

(declare-fun lt!504509 () Unit!37127)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!352 (array!73876 array!73878 (_ BitVec 32) (_ BitVec 32) V!43163 V!43163 (_ BitVec 64) (_ BitVec 32) Int) Unit!37127)

(assert (=> b!1135013 (= lt!504509 (lemmaListMapContainsThenArrayContainsFrom!352 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504500 () Unit!37127)

(declare-fun e!645978 () Unit!37127)

(assert (=> b!1135013 (= lt!504500 e!645978)))

(declare-fun c!110828 () Bool)

(declare-fun lt!504503 () Bool)

(assert (=> b!1135013 (= c!110828 (and (not lt!504503) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1135013 (= lt!504503 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1135014 () Bool)

(assert (=> b!1135014 (= e!645966 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504503) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1135015 () Bool)

(declare-fun res!757756 () Bool)

(declare-fun e!645972 () Bool)

(assert (=> b!1135015 (=> (not res!757756) (not e!645972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135015 (= res!757756 (validMask!0 mask!1564))))

(declare-fun b!1135016 () Bool)

(declare-fun res!757764 () Bool)

(assert (=> b!1135016 (=> (not res!757764) (not e!645972))))

(assert (=> b!1135016 (= res!757764 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24971))))

(declare-fun b!1135017 () Bool)

(declare-fun res!757757 () Bool)

(assert (=> b!1135017 (=> (not res!757757) (not e!645972))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135017 (= res!757757 (= (select (arr!35585 _keys!1208) i!673) k0!934))))

(declare-fun b!1135018 () Bool)

(declare-fun e!645967 () Bool)

(assert (=> b!1135018 (= e!645967 e!645963)))

(declare-fun res!757750 () Bool)

(assert (=> b!1135018 (=> res!757750 e!645963)))

(declare-datatypes ((tuple2!18162 0))(
  ( (tuple2!18163 (_1!9091 (_ BitVec 64)) (_2!9091 V!43163)) )
))
(declare-datatypes ((List!24975 0))(
  ( (Nil!24972) (Cons!24971 (h!26180 tuple2!18162) (t!35971 List!24975)) )
))
(declare-datatypes ((ListLongMap!16143 0))(
  ( (ListLongMap!16144 (toList!8087 List!24975)) )
))
(declare-fun lt!504507 () ListLongMap!16143)

(declare-fun contains!6586 (ListLongMap!16143 (_ BitVec 64)) Bool)

(assert (=> b!1135018 (= res!757750 (not (contains!6586 lt!504507 k0!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4536 (array!73876 array!73878 (_ BitVec 32) (_ BitVec 32) V!43163 V!43163 (_ BitVec 32) Int) ListLongMap!16143)

(assert (=> b!1135018 (= lt!504507 (getCurrentListMapNoExtraKeys!4536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49502 () Bool)

(declare-fun call!49505 () ListLongMap!16143)

(declare-fun call!49512 () ListLongMap!16143)

(assert (=> bm!49502 (= call!49505 call!49512)))

(declare-fun b!1135019 () Bool)

(declare-fun res!757762 () Bool)

(assert (=> b!1135019 (=> (not res!757762) (not e!645972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73876 (_ BitVec 32)) Bool)

(assert (=> b!1135019 (= res!757762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!49511 () ListLongMap!16143)

(declare-fun bm!49503 () Bool)

(assert (=> bm!49503 (= call!49511 (getCurrentListMapNoExtraKeys!4536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135020 () Bool)

(declare-fun arrayContainsKey!0 (array!73876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135020 (= e!645976 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135021 () Bool)

(declare-fun res!757758 () Bool)

(assert (=> b!1135021 (=> res!757758 e!645974)))

(declare-fun contains!6587 (List!24974 (_ BitVec 64)) Bool)

(assert (=> b!1135021 (= res!757758 (contains!6587 Nil!24971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!44615 () Bool)

(declare-fun mapRes!44615 () Bool)

(declare-fun tp!84703 () Bool)

(declare-fun e!645962 () Bool)

(assert (=> mapNonEmpty!44615 (= mapRes!44615 (and tp!84703 e!645962))))

(declare-fun mapKey!44615 () (_ BitVec 32))

(declare-fun mapRest!44615 () (Array (_ BitVec 32) ValueCell!13554))

(declare-fun mapValue!44615 () ValueCell!13554)

(assert (=> mapNonEmpty!44615 (= (arr!35586 _values!996) (store mapRest!44615 mapKey!44615 mapValue!44615))))

(declare-fun c!110830 () Bool)

(declare-fun call!49507 () Unit!37127)

(declare-fun bm!49504 () Bool)

(declare-fun addStillContains!743 (ListLongMap!16143 (_ BitVec 64) V!43163 (_ BitVec 64)) Unit!37127)

(assert (=> bm!49504 (= call!49507 (addStillContains!743 lt!504507 (ite (or c!110828 c!110830) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110828 c!110830) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1135022 () Bool)

(declare-fun e!645969 () Bool)

(declare-fun e!645975 () Bool)

(assert (=> b!1135022 (= e!645969 e!645975)))

(declare-fun res!757752 () Bool)

(assert (=> b!1135022 (=> res!757752 e!645975)))

(assert (=> b!1135022 (= res!757752 (not (= from!1455 i!673)))))

(declare-fun lt!504502 () array!73878)

(declare-fun lt!504513 () ListLongMap!16143)

(declare-fun lt!504511 () array!73876)

(assert (=> b!1135022 (= lt!504513 (getCurrentListMapNoExtraKeys!4536 lt!504511 lt!504502 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2603 (Int (_ BitVec 64)) V!43163)

(assert (=> b!1135022 (= lt!504502 (array!73879 (store (arr!35586 _values!996) i!673 (ValueCellFull!13554 (dynLambda!2603 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36123 _values!996)))))

(declare-fun lt!504501 () ListLongMap!16143)

(assert (=> b!1135022 (= lt!504501 (getCurrentListMapNoExtraKeys!4536 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1135023 () Bool)

(declare-fun e!645965 () Unit!37127)

(assert (=> b!1135023 (= e!645978 e!645965)))

(assert (=> b!1135023 (= c!110830 (and (not lt!504503) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1135024 () Bool)

(assert (=> b!1135024 (= e!645975 e!645967)))

(declare-fun res!757753 () Bool)

(assert (=> b!1135024 (=> res!757753 e!645967)))

(assert (=> b!1135024 (= res!757753 (not (= (select (arr!35585 _keys!1208) from!1455) k0!934)))))

(declare-fun e!645971 () Bool)

(assert (=> b!1135024 e!645971))

(declare-fun c!110831 () Bool)

(assert (=> b!1135024 (= c!110831 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504506 () Unit!37127)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!457 (array!73876 array!73878 (_ BitVec 32) (_ BitVec 32) V!43163 V!43163 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37127)

(assert (=> b!1135024 (= lt!504506 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!457 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135025 () Bool)

(declare-fun res!757763 () Bool)

(assert (=> b!1135025 (=> (not res!757763) (not e!645972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135025 (= res!757763 (validKeyInArray!0 k0!934))))

(declare-fun b!1135026 () Bool)

(declare-fun e!645977 () Unit!37127)

(declare-fun lt!504510 () Unit!37127)

(assert (=> b!1135026 (= e!645977 lt!504510)))

(declare-fun call!49506 () Unit!37127)

(assert (=> b!1135026 (= lt!504510 call!49506)))

(declare-fun call!49508 () Bool)

(assert (=> b!1135026 call!49508))

(declare-fun b!1135027 () Bool)

(assert (=> b!1135027 (= e!645966 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135028 () Bool)

(declare-fun e!645970 () Bool)

(assert (=> b!1135028 (= e!645972 e!645970)))

(declare-fun res!757751 () Bool)

(assert (=> b!1135028 (=> (not res!757751) (not e!645970))))

(assert (=> b!1135028 (= res!757751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504511 mask!1564))))

(assert (=> b!1135028 (= lt!504511 (array!73877 (store (arr!35585 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36122 _keys!1208)))))

(declare-fun b!1135029 () Bool)

(declare-fun res!757766 () Bool)

(assert (=> b!1135029 (=> (not res!757766) (not e!645972))))

(assert (=> b!1135029 (= res!757766 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36122 _keys!1208))))))

(declare-fun bm!49505 () Bool)

(declare-fun lt!504504 () ListLongMap!16143)

(declare-fun call!49509 () Bool)

(assert (=> bm!49505 (= call!49509 (contains!6586 (ite c!110828 lt!504504 call!49505) k0!934))))

(declare-fun b!1135030 () Bool)

(declare-fun e!645964 () Bool)

(declare-fun tp_is_empty!28527 () Bool)

(assert (=> b!1135030 (= e!645964 tp_is_empty!28527)))

(declare-fun call!49510 () ListLongMap!16143)

(declare-fun bm!49506 () Bool)

(assert (=> bm!49506 (= call!49510 (getCurrentListMapNoExtraKeys!4536 lt!504511 lt!504502 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135031 () Bool)

(declare-fun res!757765 () Bool)

(assert (=> b!1135031 (=> res!757765 e!645974)))

(declare-fun noDuplicate!1612 (List!24974) Bool)

(assert (=> b!1135031 (= res!757765 (not (noDuplicate!1612 Nil!24971)))))

(declare-fun bm!49507 () Bool)

(assert (=> bm!49507 (= call!49506 call!49507)))

(declare-fun b!1135032 () Bool)

(assert (=> b!1135032 call!49508))

(declare-fun lt!504515 () Unit!37127)

(assert (=> b!1135032 (= lt!504515 call!49506)))

(assert (=> b!1135032 (= e!645965 lt!504515)))

(declare-fun mapIsEmpty!44615 () Bool)

(assert (=> mapIsEmpty!44615 mapRes!44615))

(declare-fun b!1135033 () Bool)

(declare-fun lt!504508 () Unit!37127)

(assert (=> b!1135033 (= e!645978 lt!504508)))

(declare-fun lt!504505 () Unit!37127)

(assert (=> b!1135033 (= lt!504505 call!49507)))

(assert (=> b!1135033 (= lt!504504 call!49512)))

(assert (=> b!1135033 call!49509))

(assert (=> b!1135033 (= lt!504508 (addStillContains!743 lt!504504 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun +!3444 (ListLongMap!16143 tuple2!18162) ListLongMap!16143)

(assert (=> b!1135033 (contains!6586 (+!3444 lt!504504 (tuple2!18163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1135034 () Bool)

(assert (=> b!1135034 (= e!645971 (= call!49510 call!49511))))

(declare-fun b!1135035 () Bool)

(assert (=> b!1135035 (= e!645962 tp_is_empty!28527)))

(declare-fun b!1135036 () Bool)

(declare-fun res!757760 () Bool)

(assert (=> b!1135036 (=> (not res!757760) (not e!645972))))

(assert (=> b!1135036 (= res!757760 (and (= (size!36123 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36122 _keys!1208) (size!36123 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1135037 () Bool)

(assert (=> b!1135037 (= e!645974 true)))

(declare-fun lt!504512 () Bool)

(assert (=> b!1135037 (= lt!504512 (contains!6587 Nil!24971 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135038 () Bool)

(declare-fun c!110832 () Bool)

(assert (=> b!1135038 (= c!110832 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504503))))

(assert (=> b!1135038 (= e!645965 e!645977)))

(declare-fun bm!49508 () Bool)

(assert (=> bm!49508 (= call!49508 call!49509)))

(declare-fun b!1135039 () Bool)

(declare-fun res!757755 () Bool)

(assert (=> b!1135039 (=> (not res!757755) (not e!645970))))

(assert (=> b!1135039 (= res!757755 (arrayNoDuplicates!0 lt!504511 #b00000000000000000000000000000000 Nil!24971))))

(declare-fun b!1135040 () Bool)

(declare-fun Unit!37129 () Unit!37127)

(assert (=> b!1135040 (= e!645977 Unit!37129)))

(declare-fun b!1135041 () Bool)

(declare-fun e!645968 () Bool)

(assert (=> b!1135041 (= e!645968 (and e!645964 mapRes!44615))))

(declare-fun condMapEmpty!44615 () Bool)

(declare-fun mapDefault!44615 () ValueCell!13554)

(assert (=> b!1135041 (= condMapEmpty!44615 (= (arr!35586 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13554)) mapDefault!44615)))))

(declare-fun res!757749 () Bool)

(assert (=> start!98428 (=> (not res!757749) (not e!645972))))

(assert (=> start!98428 (= res!757749 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36122 _keys!1208))))))

(assert (=> start!98428 e!645972))

(assert (=> start!98428 tp_is_empty!28527))

(declare-fun array_inv!27160 (array!73876) Bool)

(assert (=> start!98428 (array_inv!27160 _keys!1208)))

(assert (=> start!98428 true))

(assert (=> start!98428 tp!84702))

(declare-fun array_inv!27161 (array!73878) Bool)

(assert (=> start!98428 (and (array_inv!27161 _values!996) e!645968)))

(declare-fun bm!49509 () Bool)

(assert (=> bm!49509 (= call!49512 (+!3444 lt!504507 (ite (or c!110828 c!110830) (tuple2!18163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18163 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1135042 () Bool)

(assert (=> b!1135042 (= e!645970 (not e!645969))))

(declare-fun res!757761 () Bool)

(assert (=> b!1135042 (=> res!757761 e!645969)))

(assert (=> b!1135042 (= res!757761 (bvsgt from!1455 i!673))))

(assert (=> b!1135042 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!504516 () Unit!37127)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73876 (_ BitVec 64) (_ BitVec 32)) Unit!37127)

(assert (=> b!1135042 (= lt!504516 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1135043 () Bool)

(declare-fun -!1201 (ListLongMap!16143 (_ BitVec 64)) ListLongMap!16143)

(assert (=> b!1135043 (= e!645971 (= call!49510 (-!1201 call!49511 k0!934)))))

(assert (= (and start!98428 res!757749) b!1135015))

(assert (= (and b!1135015 res!757756) b!1135036))

(assert (= (and b!1135036 res!757760) b!1135019))

(assert (= (and b!1135019 res!757762) b!1135016))

(assert (= (and b!1135016 res!757764) b!1135029))

(assert (= (and b!1135029 res!757766) b!1135025))

(assert (= (and b!1135025 res!757763) b!1135017))

(assert (= (and b!1135017 res!757757) b!1135028))

(assert (= (and b!1135028 res!757751) b!1135039))

(assert (= (and b!1135039 res!757755) b!1135042))

(assert (= (and b!1135042 (not res!757761)) b!1135022))

(assert (= (and b!1135022 (not res!757752)) b!1135024))

(assert (= (and b!1135024 c!110831) b!1135043))

(assert (= (and b!1135024 (not c!110831)) b!1135034))

(assert (= (or b!1135043 b!1135034) bm!49506))

(assert (= (or b!1135043 b!1135034) bm!49503))

(assert (= (and b!1135024 (not res!757753)) b!1135018))

(assert (= (and b!1135018 (not res!757750)) b!1135013))

(assert (= (and b!1135013 c!110828) b!1135033))

(assert (= (and b!1135013 (not c!110828)) b!1135023))

(assert (= (and b!1135023 c!110830) b!1135032))

(assert (= (and b!1135023 (not c!110830)) b!1135038))

(assert (= (and b!1135038 c!110832) b!1135026))

(assert (= (and b!1135038 (not c!110832)) b!1135040))

(assert (= (or b!1135032 b!1135026) bm!49507))

(assert (= (or b!1135032 b!1135026) bm!49502))

(assert (= (or b!1135032 b!1135026) bm!49508))

(assert (= (or b!1135033 bm!49508) bm!49505))

(assert (= (or b!1135033 bm!49507) bm!49504))

(assert (= (or b!1135033 bm!49502) bm!49509))

(assert (= (and b!1135013 c!110829) b!1135027))

(assert (= (and b!1135013 (not c!110829)) b!1135014))

(assert (= (and b!1135013 res!757754) b!1135020))

(assert (= (and b!1135013 (not res!757759)) b!1135031))

(assert (= (and b!1135031 (not res!757765)) b!1135021))

(assert (= (and b!1135021 (not res!757758)) b!1135037))

(assert (= (and b!1135041 condMapEmpty!44615) mapIsEmpty!44615))

(assert (= (and b!1135041 (not condMapEmpty!44615)) mapNonEmpty!44615))

(get-info :version)

(assert (= (and mapNonEmpty!44615 ((_ is ValueCellFull!13554) mapValue!44615)) b!1135035))

(assert (= (and b!1135041 ((_ is ValueCellFull!13554) mapDefault!44615)) b!1135030))

(assert (= start!98428 b!1135041))

(declare-fun b_lambda!19121 () Bool)

(assert (=> (not b_lambda!19121) (not b!1135022)))

(declare-fun t!35969 () Bool)

(declare-fun tb!8817 () Bool)

(assert (=> (and start!98428 (= defaultEntry!1004 defaultEntry!1004) t!35969) tb!8817))

(declare-fun result!18191 () Bool)

(assert (=> tb!8817 (= result!18191 tp_is_empty!28527)))

(assert (=> b!1135022 t!35969))

(declare-fun b_and!38859 () Bool)

(assert (= b_and!38857 (and (=> t!35969 result!18191) b_and!38859)))

(declare-fun m!1047723 () Bool)

(assert (=> b!1135027 m!1047723))

(declare-fun m!1047725 () Bool)

(assert (=> b!1135043 m!1047725))

(declare-fun m!1047727 () Bool)

(assert (=> bm!49504 m!1047727))

(declare-fun m!1047729 () Bool)

(assert (=> b!1135021 m!1047729))

(declare-fun m!1047731 () Bool)

(assert (=> mapNonEmpty!44615 m!1047731))

(declare-fun m!1047733 () Bool)

(assert (=> bm!49503 m!1047733))

(declare-fun m!1047735 () Bool)

(assert (=> b!1135017 m!1047735))

(declare-fun m!1047737 () Bool)

(assert (=> bm!49505 m!1047737))

(declare-fun m!1047739 () Bool)

(assert (=> b!1135015 m!1047739))

(declare-fun m!1047741 () Bool)

(assert (=> start!98428 m!1047741))

(declare-fun m!1047743 () Bool)

(assert (=> start!98428 m!1047743))

(declare-fun m!1047745 () Bool)

(assert (=> bm!49509 m!1047745))

(declare-fun m!1047747 () Bool)

(assert (=> b!1135028 m!1047747))

(declare-fun m!1047749 () Bool)

(assert (=> b!1135028 m!1047749))

(declare-fun m!1047751 () Bool)

(assert (=> b!1135031 m!1047751))

(declare-fun m!1047753 () Bool)

(assert (=> b!1135022 m!1047753))

(declare-fun m!1047755 () Bool)

(assert (=> b!1135022 m!1047755))

(declare-fun m!1047757 () Bool)

(assert (=> b!1135022 m!1047757))

(declare-fun m!1047759 () Bool)

(assert (=> b!1135022 m!1047759))

(declare-fun m!1047761 () Bool)

(assert (=> b!1135018 m!1047761))

(assert (=> b!1135018 m!1047733))

(assert (=> b!1135020 m!1047723))

(declare-fun m!1047763 () Bool)

(assert (=> b!1135042 m!1047763))

(declare-fun m!1047765 () Bool)

(assert (=> b!1135042 m!1047765))

(declare-fun m!1047767 () Bool)

(assert (=> b!1135013 m!1047767))

(declare-fun m!1047769 () Bool)

(assert (=> b!1135013 m!1047769))

(declare-fun m!1047771 () Bool)

(assert (=> b!1135013 m!1047771))

(declare-fun m!1047773 () Bool)

(assert (=> b!1135019 m!1047773))

(declare-fun m!1047775 () Bool)

(assert (=> b!1135033 m!1047775))

(declare-fun m!1047777 () Bool)

(assert (=> b!1135033 m!1047777))

(assert (=> b!1135033 m!1047777))

(declare-fun m!1047779 () Bool)

(assert (=> b!1135033 m!1047779))

(declare-fun m!1047781 () Bool)

(assert (=> b!1135025 m!1047781))

(declare-fun m!1047783 () Bool)

(assert (=> bm!49506 m!1047783))

(declare-fun m!1047785 () Bool)

(assert (=> b!1135037 m!1047785))

(declare-fun m!1047787 () Bool)

(assert (=> b!1135024 m!1047787))

(declare-fun m!1047789 () Bool)

(assert (=> b!1135024 m!1047789))

(declare-fun m!1047791 () Bool)

(assert (=> b!1135016 m!1047791))

(declare-fun m!1047793 () Bool)

(assert (=> b!1135039 m!1047793))

(check-sat (not b!1135019) (not b!1135025) (not b!1135042) (not b_next!23997) (not b!1135037) (not mapNonEmpty!44615) (not bm!49509) (not b!1135016) (not b!1135024) (not bm!49504) b_and!38859 tp_is_empty!28527 (not b!1135021) (not b!1135043) (not b!1135015) (not start!98428) (not b!1135033) (not b!1135013) (not b!1135028) (not b_lambda!19121) (not b!1135027) (not bm!49503) (not bm!49505) (not b!1135039) (not bm!49506) (not b!1135022) (not b!1135018) (not b!1135031) (not b!1135020))
(check-sat b_and!38859 (not b_next!23997))
