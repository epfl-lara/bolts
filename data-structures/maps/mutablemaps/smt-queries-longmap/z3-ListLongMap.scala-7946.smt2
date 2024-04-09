; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98554 () Bool)

(assert start!98554)

(declare-fun b_free!24123 () Bool)

(declare-fun b_next!24123 () Bool)

(assert (=> start!98554 (= b_free!24123 (not b_next!24123))))

(declare-fun tp!85081 () Bool)

(declare-fun b_and!39109 () Bool)

(assert (=> start!98554 (= tp!85081 b_and!39109)))

(declare-fun b!1140718 () Bool)

(declare-datatypes ((Unit!37332 0))(
  ( (Unit!37333) )
))
(declare-fun e!649037 () Unit!37332)

(declare-fun lt!508032 () Unit!37332)

(assert (=> b!1140718 (= e!649037 lt!508032)))

(declare-fun call!51023 () Unit!37332)

(assert (=> b!1140718 (= lt!508032 call!51023)))

(declare-fun call!51019 () Bool)

(assert (=> b!1140718 call!51019))

(declare-fun b!1140719 () Bool)

(declare-fun e!649044 () Unit!37332)

(declare-fun Unit!37334 () Unit!37332)

(assert (=> b!1140719 (= e!649044 Unit!37334)))

(declare-fun lt!508019 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1140719 (= lt!508019 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111913 () Bool)

(assert (=> b!1140719 (= c!111913 (and (not lt!508019) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508031 () Unit!37332)

(declare-fun e!649049 () Unit!37332)

(assert (=> b!1140719 (= lt!508031 e!649049)))

(declare-datatypes ((V!43331 0))(
  ( (V!43332 (val!14383 Int)) )
))
(declare-fun zeroValue!944 () V!43331)

(declare-datatypes ((array!74118 0))(
  ( (array!74119 (arr!35706 (Array (_ BitVec 32) (_ BitVec 64))) (size!36243 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74118)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13617 0))(
  ( (ValueCellFull!13617 (v!17021 V!43331)) (EmptyCell!13617) )
))
(declare-datatypes ((array!74120 0))(
  ( (array!74121 (arr!35707 (Array (_ BitVec 32) ValueCell!13617)) (size!36244 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74120)

(declare-fun minValue!944 () V!43331)

(declare-fun lt!508025 () Unit!37332)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!390 (array!74118 array!74120 (_ BitVec 32) (_ BitVec 32) V!43331 V!43331 (_ BitVec 64) (_ BitVec 32) Int) Unit!37332)

(assert (=> b!1140719 (= lt!508025 (lemmaListMapContainsThenArrayContainsFrom!390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111914 () Bool)

(assert (=> b!1140719 (= c!111914 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760602 () Bool)

(declare-fun e!649042 () Bool)

(assert (=> b!1140719 (= res!760602 e!649042)))

(declare-fun e!649048 () Bool)

(assert (=> b!1140719 (=> (not res!760602) (not e!649048))))

(assert (=> b!1140719 e!649048))

(declare-fun lt!508022 () Unit!37332)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74118 (_ BitVec 32) (_ BitVec 32)) Unit!37332)

(assert (=> b!1140719 (= lt!508022 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25076 0))(
  ( (Nil!25073) (Cons!25072 (h!26281 (_ BitVec 64)) (t!36198 List!25076)) )
))
(declare-fun arrayNoDuplicates!0 (array!74118 (_ BitVec 32) List!25076) Bool)

(assert (=> b!1140719 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25073)))

(declare-fun lt!508013 () Unit!37332)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74118 (_ BitVec 64) (_ BitVec 32) List!25076) Unit!37332)

(assert (=> b!1140719 (= lt!508013 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25073))))

(assert (=> b!1140719 false))

(declare-fun b!1140720 () Bool)

(declare-fun res!760596 () Bool)

(declare-fun e!649045 () Bool)

(assert (=> b!1140720 (=> (not res!760596) (not e!649045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74118 (_ BitVec 32)) Bool)

(assert (=> b!1140720 (= res!760596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1140721 () Bool)

(declare-fun e!649047 () Bool)

(declare-datatypes ((tuple2!18274 0))(
  ( (tuple2!18275 (_1!9147 (_ BitVec 64)) (_2!9147 V!43331)) )
))
(declare-datatypes ((List!25077 0))(
  ( (Nil!25074) (Cons!25073 (h!26282 tuple2!18274) (t!36199 List!25077)) )
))
(declare-datatypes ((ListLongMap!16255 0))(
  ( (ListLongMap!16256 (toList!8143 List!25077)) )
))
(declare-fun call!51018 () ListLongMap!16255)

(declare-fun call!51020 () ListLongMap!16255)

(assert (=> b!1140721 (= e!649047 (= call!51018 call!51020))))

(declare-fun b!1140722 () Bool)

(declare-fun e!649050 () Bool)

(declare-fun e!649041 () Bool)

(assert (=> b!1140722 (= e!649050 (not e!649041))))

(declare-fun res!760598 () Bool)

(assert (=> b!1140722 (=> res!760598 e!649041)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1140722 (= res!760598 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140722 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!508020 () Unit!37332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74118 (_ BitVec 64) (_ BitVec 32)) Unit!37332)

(assert (=> b!1140722 (= lt!508020 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!44804 () Bool)

(declare-fun mapRes!44804 () Bool)

(declare-fun tp!85080 () Bool)

(declare-fun e!649040 () Bool)

(assert (=> mapNonEmpty!44804 (= mapRes!44804 (and tp!85080 e!649040))))

(declare-fun mapRest!44804 () (Array (_ BitVec 32) ValueCell!13617))

(declare-fun mapKey!44804 () (_ BitVec 32))

(declare-fun mapValue!44804 () ValueCell!13617)

(assert (=> mapNonEmpty!44804 (= (arr!35707 _values!996) (store mapRest!44804 mapKey!44804 mapValue!44804))))

(declare-fun b!1140723 () Bool)

(declare-fun res!760592 () Bool)

(assert (=> b!1140723 (=> (not res!760592) (not e!649045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1140723 (= res!760592 (validKeyInArray!0 k0!934))))

(declare-fun b!1140724 () Bool)

(declare-fun e!649043 () Bool)

(declare-fun e!649046 () Bool)

(assert (=> b!1140724 (= e!649043 (and e!649046 mapRes!44804))))

(declare-fun condMapEmpty!44804 () Bool)

(declare-fun mapDefault!44804 () ValueCell!13617)

(assert (=> b!1140724 (= condMapEmpty!44804 (= (arr!35707 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13617)) mapDefault!44804)))))

(declare-fun bm!51014 () Bool)

(declare-fun call!51017 () ListLongMap!16255)

(declare-fun call!51022 () ListLongMap!16255)

(assert (=> bm!51014 (= call!51017 call!51022)))

(declare-fun b!1140725 () Bool)

(declare-fun res!760595 () Bool)

(assert (=> b!1140725 (=> (not res!760595) (not e!649045))))

(assert (=> b!1140725 (= res!760595 (= (select (arr!35706 _keys!1208) i!673) k0!934))))

(declare-fun bm!51015 () Bool)

(declare-fun call!51021 () Bool)

(declare-fun lt!508026 () ListLongMap!16255)

(declare-fun contains!6649 (ListLongMap!16255 (_ BitVec 64)) Bool)

(assert (=> bm!51015 (= call!51021 (contains!6649 (ite c!111913 lt!508026 call!51017) k0!934))))

(declare-fun b!1140726 () Bool)

(declare-fun c!111916 () Bool)

(assert (=> b!1140726 (= c!111916 (and (not lt!508019) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1140726 (= e!649049 e!649037)))

(declare-fun b!1140727 () Bool)

(assert (=> b!1140727 (= e!649042 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!508017 () array!74120)

(declare-fun lt!508024 () array!74118)

(declare-fun bm!51016 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4587 (array!74118 array!74120 (_ BitVec 32) (_ BitVec 32) V!43331 V!43331 (_ BitVec 32) Int) ListLongMap!16255)

(assert (=> bm!51016 (= call!51018 (getCurrentListMapNoExtraKeys!4587 lt!508024 lt!508017 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51017 () Bool)

(declare-fun call!51024 () Unit!37332)

(assert (=> bm!51017 (= call!51023 call!51024)))

(declare-fun bm!51018 () Bool)

(assert (=> bm!51018 (= call!51019 call!51021)))

(declare-fun b!1140728 () Bool)

(declare-fun res!760597 () Bool)

(assert (=> b!1140728 (=> (not res!760597) (not e!649045))))

(assert (=> b!1140728 (= res!760597 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25073))))

(declare-fun mapIsEmpty!44804 () Bool)

(assert (=> mapIsEmpty!44804 mapRes!44804))

(declare-fun b!1140729 () Bool)

(declare-fun tp_is_empty!28653 () Bool)

(assert (=> b!1140729 (= e!649040 tp_is_empty!28653)))

(declare-fun b!1140730 () Bool)

(declare-fun e!649035 () Bool)

(declare-fun e!649038 () Bool)

(assert (=> b!1140730 (= e!649035 e!649038)))

(declare-fun res!760591 () Bool)

(assert (=> b!1140730 (=> res!760591 e!649038)))

(assert (=> b!1140730 (= res!760591 (not (= (select (arr!35706 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1140730 e!649047))

(declare-fun c!111917 () Bool)

(assert (=> b!1140730 (= c!111917 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!508018 () Unit!37332)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!498 (array!74118 array!74120 (_ BitVec 32) (_ BitVec 32) V!43331 V!43331 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37332)

(assert (=> b!1140730 (= lt!508018 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!508023 () ListLongMap!16255)

(declare-fun bm!51019 () Bool)

(declare-fun addStillContains!790 (ListLongMap!16255 (_ BitVec 64) V!43331 (_ BitVec 64)) Unit!37332)

(assert (=> bm!51019 (= call!51024 (addStillContains!790 (ite c!111913 lt!508026 lt!508023) (ite c!111913 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111916 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111913 minValue!944 (ite c!111916 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1140731 () Bool)

(declare-fun res!760603 () Bool)

(assert (=> b!1140731 (=> (not res!760603) (not e!649045))))

(assert (=> b!1140731 (= res!760603 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36243 _keys!1208))))))

(declare-fun bm!51020 () Bool)

(assert (=> bm!51020 (= call!51020 (getCurrentListMapNoExtraKeys!4587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140732 () Bool)

(declare-fun Unit!37335 () Unit!37332)

(assert (=> b!1140732 (= e!649044 Unit!37335)))

(declare-fun b!1140733 () Bool)

(declare-fun e!649036 () Unit!37332)

(declare-fun Unit!37336 () Unit!37332)

(assert (=> b!1140733 (= e!649036 Unit!37336)))

(declare-fun res!760600 () Bool)

(assert (=> start!98554 (=> (not res!760600) (not e!649045))))

(assert (=> start!98554 (= res!760600 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36243 _keys!1208))))))

(assert (=> start!98554 e!649045))

(assert (=> start!98554 tp_is_empty!28653))

(declare-fun array_inv!27240 (array!74118) Bool)

(assert (=> start!98554 (array_inv!27240 _keys!1208)))

(assert (=> start!98554 true))

(assert (=> start!98554 tp!85081))

(declare-fun array_inv!27241 (array!74120) Bool)

(assert (=> start!98554 (and (array_inv!27241 _values!996) e!649043)))

(declare-fun bm!51021 () Bool)

(declare-fun +!3489 (ListLongMap!16255 tuple2!18274) ListLongMap!16255)

(assert (=> bm!51021 (= call!51022 (+!3489 lt!508023 (ite (or c!111913 c!111916) (tuple2!18275 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18275 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1140734 () Bool)

(assert (=> b!1140734 call!51019))

(declare-fun lt!508029 () Unit!37332)

(assert (=> b!1140734 (= lt!508029 call!51023)))

(assert (=> b!1140734 (= e!649036 lt!508029)))

(declare-fun b!1140735 () Bool)

(assert (=> b!1140735 (= e!649037 e!649036)))

(declare-fun c!111915 () Bool)

(assert (=> b!1140735 (= c!111915 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508019))))

(declare-fun b!1140736 () Bool)

(declare-fun res!760604 () Bool)

(assert (=> b!1140736 (=> (not res!760604) (not e!649045))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1140736 (= res!760604 (validMask!0 mask!1564))))

(declare-fun b!1140737 () Bool)

(assert (=> b!1140737 (= e!649038 true)))

(declare-fun lt!508016 () V!43331)

(declare-fun -!1242 (ListLongMap!16255 (_ BitVec 64)) ListLongMap!16255)

(assert (=> b!1140737 (= (-!1242 (+!3489 lt!508023 (tuple2!18275 (select (arr!35706 _keys!1208) from!1455) lt!508016)) (select (arr!35706 _keys!1208) from!1455)) lt!508023)))

(declare-fun lt!508027 () Unit!37332)

(declare-fun addThenRemoveForNewKeyIsSame!97 (ListLongMap!16255 (_ BitVec 64) V!43331) Unit!37332)

(assert (=> b!1140737 (= lt!508027 (addThenRemoveForNewKeyIsSame!97 lt!508023 (select (arr!35706 _keys!1208) from!1455) lt!508016))))

(declare-fun lt!508012 () V!43331)

(declare-fun get!18159 (ValueCell!13617 V!43331) V!43331)

(assert (=> b!1140737 (= lt!508016 (get!18159 (select (arr!35707 _values!996) from!1455) lt!508012))))

(declare-fun lt!508015 () Unit!37332)

(assert (=> b!1140737 (= lt!508015 e!649044)))

(declare-fun c!111918 () Bool)

(assert (=> b!1140737 (= c!111918 (contains!6649 lt!508023 k0!934))))

(assert (=> b!1140737 (= lt!508023 (getCurrentListMapNoExtraKeys!4587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1140738 () Bool)

(assert (=> b!1140738 (= e!649046 tp_is_empty!28653)))

(declare-fun b!1140739 () Bool)

(assert (=> b!1140739 (= e!649041 e!649035)))

(declare-fun res!760593 () Bool)

(assert (=> b!1140739 (=> res!760593 e!649035)))

(assert (=> b!1140739 (= res!760593 (not (= from!1455 i!673)))))

(declare-fun lt!508030 () ListLongMap!16255)

(assert (=> b!1140739 (= lt!508030 (getCurrentListMapNoExtraKeys!4587 lt!508024 lt!508017 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1140739 (= lt!508017 (array!74121 (store (arr!35707 _values!996) i!673 (ValueCellFull!13617 lt!508012)) (size!36244 _values!996)))))

(declare-fun dynLambda!2642 (Int (_ BitVec 64)) V!43331)

(assert (=> b!1140739 (= lt!508012 (dynLambda!2642 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508028 () ListLongMap!16255)

(assert (=> b!1140739 (= lt!508028 (getCurrentListMapNoExtraKeys!4587 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1140740 () Bool)

(declare-fun res!760599 () Bool)

(assert (=> b!1140740 (=> (not res!760599) (not e!649050))))

(assert (=> b!1140740 (= res!760599 (arrayNoDuplicates!0 lt!508024 #b00000000000000000000000000000000 Nil!25073))))

(declare-fun b!1140741 () Bool)

(assert (=> b!1140741 (= e!649042 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508019) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1140742 () Bool)

(assert (=> b!1140742 (= e!649045 e!649050)))

(declare-fun res!760594 () Bool)

(assert (=> b!1140742 (=> (not res!760594) (not e!649050))))

(assert (=> b!1140742 (= res!760594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508024 mask!1564))))

(assert (=> b!1140742 (= lt!508024 (array!74119 (store (arr!35706 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36243 _keys!1208)))))

(declare-fun b!1140743 () Bool)

(assert (=> b!1140743 (= e!649047 (= call!51018 (-!1242 call!51020 k0!934)))))

(declare-fun b!1140744 () Bool)

(assert (=> b!1140744 (contains!6649 (+!3489 lt!508026 (tuple2!18275 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!508021 () Unit!37332)

(assert (=> b!1140744 (= lt!508021 call!51024)))

(assert (=> b!1140744 call!51021))

(assert (=> b!1140744 (= lt!508026 call!51022)))

(declare-fun lt!508014 () Unit!37332)

(assert (=> b!1140744 (= lt!508014 (addStillContains!790 lt!508023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1140744 (= e!649049 lt!508021)))

(declare-fun b!1140745 () Bool)

(declare-fun res!760601 () Bool)

(assert (=> b!1140745 (=> (not res!760601) (not e!649045))))

(assert (=> b!1140745 (= res!760601 (and (= (size!36244 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36243 _keys!1208) (size!36244 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1140746 () Bool)

(assert (=> b!1140746 (= e!649048 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98554 res!760600) b!1140736))

(assert (= (and b!1140736 res!760604) b!1140745))

(assert (= (and b!1140745 res!760601) b!1140720))

(assert (= (and b!1140720 res!760596) b!1140728))

(assert (= (and b!1140728 res!760597) b!1140731))

(assert (= (and b!1140731 res!760603) b!1140723))

(assert (= (and b!1140723 res!760592) b!1140725))

(assert (= (and b!1140725 res!760595) b!1140742))

(assert (= (and b!1140742 res!760594) b!1140740))

(assert (= (and b!1140740 res!760599) b!1140722))

(assert (= (and b!1140722 (not res!760598)) b!1140739))

(assert (= (and b!1140739 (not res!760593)) b!1140730))

(assert (= (and b!1140730 c!111917) b!1140743))

(assert (= (and b!1140730 (not c!111917)) b!1140721))

(assert (= (or b!1140743 b!1140721) bm!51016))

(assert (= (or b!1140743 b!1140721) bm!51020))

(assert (= (and b!1140730 (not res!760591)) b!1140737))

(assert (= (and b!1140737 c!111918) b!1140719))

(assert (= (and b!1140737 (not c!111918)) b!1140732))

(assert (= (and b!1140719 c!111913) b!1140744))

(assert (= (and b!1140719 (not c!111913)) b!1140726))

(assert (= (and b!1140726 c!111916) b!1140718))

(assert (= (and b!1140726 (not c!111916)) b!1140735))

(assert (= (and b!1140735 c!111915) b!1140734))

(assert (= (and b!1140735 (not c!111915)) b!1140733))

(assert (= (or b!1140718 b!1140734) bm!51017))

(assert (= (or b!1140718 b!1140734) bm!51014))

(assert (= (or b!1140718 b!1140734) bm!51018))

(assert (= (or b!1140744 bm!51018) bm!51015))

(assert (= (or b!1140744 bm!51017) bm!51019))

(assert (= (or b!1140744 bm!51014) bm!51021))

(assert (= (and b!1140719 c!111914) b!1140727))

(assert (= (and b!1140719 (not c!111914)) b!1140741))

(assert (= (and b!1140719 res!760602) b!1140746))

(assert (= (and b!1140724 condMapEmpty!44804) mapIsEmpty!44804))

(assert (= (and b!1140724 (not condMapEmpty!44804)) mapNonEmpty!44804))

(get-info :version)

(assert (= (and mapNonEmpty!44804 ((_ is ValueCellFull!13617) mapValue!44804)) b!1140729))

(assert (= (and b!1140724 ((_ is ValueCellFull!13617) mapDefault!44804)) b!1140738))

(assert (= start!98554 b!1140724))

(declare-fun b_lambda!19247 () Bool)

(assert (=> (not b_lambda!19247) (not b!1140739)))

(declare-fun t!36197 () Bool)

(declare-fun tb!8943 () Bool)

(assert (=> (and start!98554 (= defaultEntry!1004 defaultEntry!1004) t!36197) tb!8943))

(declare-fun result!18443 () Bool)

(assert (=> tb!8943 (= result!18443 tp_is_empty!28653)))

(assert (=> b!1140739 t!36197))

(declare-fun b_and!39111 () Bool)

(assert (= b_and!39109 (and (=> t!36197 result!18443) b_and!39111)))

(declare-fun m!1052241 () Bool)

(assert (=> b!1140722 m!1052241))

(declare-fun m!1052243 () Bool)

(assert (=> b!1140722 m!1052243))

(declare-fun m!1052245 () Bool)

(assert (=> b!1140746 m!1052245))

(declare-fun m!1052247 () Bool)

(assert (=> b!1140744 m!1052247))

(assert (=> b!1140744 m!1052247))

(declare-fun m!1052249 () Bool)

(assert (=> b!1140744 m!1052249))

(declare-fun m!1052251 () Bool)

(assert (=> b!1140744 m!1052251))

(declare-fun m!1052253 () Bool)

(assert (=> bm!51020 m!1052253))

(declare-fun m!1052255 () Bool)

(assert (=> b!1140730 m!1052255))

(declare-fun m!1052257 () Bool)

(assert (=> b!1140730 m!1052257))

(declare-fun m!1052259 () Bool)

(assert (=> bm!51021 m!1052259))

(declare-fun m!1052261 () Bool)

(assert (=> b!1140728 m!1052261))

(declare-fun m!1052263 () Bool)

(assert (=> b!1140742 m!1052263))

(declare-fun m!1052265 () Bool)

(assert (=> b!1140742 m!1052265))

(declare-fun m!1052267 () Bool)

(assert (=> b!1140743 m!1052267))

(declare-fun m!1052269 () Bool)

(assert (=> b!1140719 m!1052269))

(declare-fun m!1052271 () Bool)

(assert (=> b!1140719 m!1052271))

(declare-fun m!1052273 () Bool)

(assert (=> b!1140719 m!1052273))

(declare-fun m!1052275 () Bool)

(assert (=> b!1140719 m!1052275))

(declare-fun m!1052277 () Bool)

(assert (=> start!98554 m!1052277))

(declare-fun m!1052279 () Bool)

(assert (=> start!98554 m!1052279))

(assert (=> b!1140737 m!1052253))

(declare-fun m!1052281 () Bool)

(assert (=> b!1140737 m!1052281))

(declare-fun m!1052283 () Bool)

(assert (=> b!1140737 m!1052283))

(assert (=> b!1140737 m!1052255))

(declare-fun m!1052285 () Bool)

(assert (=> b!1140737 m!1052285))

(assert (=> b!1140737 m!1052281))

(declare-fun m!1052287 () Bool)

(assert (=> b!1140737 m!1052287))

(declare-fun m!1052289 () Bool)

(assert (=> b!1140737 m!1052289))

(assert (=> b!1140737 m!1052283))

(assert (=> b!1140737 m!1052255))

(declare-fun m!1052291 () Bool)

(assert (=> b!1140737 m!1052291))

(assert (=> b!1140737 m!1052255))

(assert (=> b!1140727 m!1052245))

(declare-fun m!1052293 () Bool)

(assert (=> mapNonEmpty!44804 m!1052293))

(declare-fun m!1052295 () Bool)

(assert (=> bm!51019 m!1052295))

(declare-fun m!1052297 () Bool)

(assert (=> b!1140725 m!1052297))

(declare-fun m!1052299 () Bool)

(assert (=> b!1140723 m!1052299))

(declare-fun m!1052301 () Bool)

(assert (=> b!1140740 m!1052301))

(declare-fun m!1052303 () Bool)

(assert (=> b!1140736 m!1052303))

(declare-fun m!1052305 () Bool)

(assert (=> bm!51015 m!1052305))

(declare-fun m!1052307 () Bool)

(assert (=> b!1140739 m!1052307))

(declare-fun m!1052309 () Bool)

(assert (=> b!1140739 m!1052309))

(declare-fun m!1052311 () Bool)

(assert (=> b!1140739 m!1052311))

(declare-fun m!1052313 () Bool)

(assert (=> b!1140739 m!1052313))

(declare-fun m!1052315 () Bool)

(assert (=> bm!51016 m!1052315))

(declare-fun m!1052317 () Bool)

(assert (=> b!1140720 m!1052317))

(check-sat (not b!1140723) (not b!1140730) tp_is_empty!28653 (not bm!51021) (not b_next!24123) (not b!1140739) (not b!1140737) (not bm!51019) (not b!1140744) (not b!1140719) (not mapNonEmpty!44804) (not b!1140746) (not bm!51020) (not bm!51015) (not start!98554) (not b!1140740) (not b!1140722) (not b!1140743) (not b!1140728) (not b!1140720) (not b_lambda!19247) b_and!39111 (not b!1140736) (not b!1140742) (not bm!51016) (not b!1140727))
(check-sat b_and!39111 (not b_next!24123))
