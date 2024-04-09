; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101032 () Bool)

(assert start!101032)

(declare-fun b_free!25995 () Bool)

(declare-fun b_next!25995 () Bool)

(assert (=> start!101032 (= b_free!25995 (not b_next!25995))))

(declare-fun tp!91001 () Bool)

(declare-fun b_and!43081 () Bool)

(assert (=> start!101032 (= tp!91001 b_and!43081)))

(declare-fun b!1209427 () Bool)

(declare-fun res!803895 () Bool)

(declare-fun e!686934 () Bool)

(assert (=> b!1209427 (=> (not res!803895) (not e!686934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!78158 0))(
  ( (array!78159 (arr!37712 (Array (_ BitVec 32) (_ BitVec 64))) (size!38249 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78158)

(assert (=> b!1209427 (= res!803895 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38249 _keys!1208))))))

(declare-fun bm!59376 () Bool)

(declare-datatypes ((Unit!40007 0))(
  ( (Unit!40008) )
))
(declare-fun call!59379 () Unit!40007)

(declare-fun call!59383 () Unit!40007)

(assert (=> bm!59376 (= call!59379 call!59383)))

(declare-datatypes ((V!46059 0))(
  ( (V!46060 (val!15406 Int)) )
))
(declare-fun zeroValue!944 () V!46059)

(declare-fun lt!548960 () array!78158)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14640 0))(
  ( (ValueCellFull!14640 (v!18058 V!46059)) (EmptyCell!14640) )
))
(declare-datatypes ((array!78160 0))(
  ( (array!78161 (arr!37713 (Array (_ BitVec 32) ValueCell!14640)) (size!38250 (_ BitVec 32))) )
))
(declare-fun lt!548955 () array!78160)

(declare-datatypes ((tuple2!19914 0))(
  ( (tuple2!19915 (_1!9967 (_ BitVec 64)) (_2!9967 V!46059)) )
))
(declare-datatypes ((List!26735 0))(
  ( (Nil!26732) (Cons!26731 (h!27940 tuple2!19914) (t!39717 List!26735)) )
))
(declare-datatypes ((ListLongMap!17895 0))(
  ( (ListLongMap!17896 (toList!8963 List!26735)) )
))
(declare-fun call!59385 () ListLongMap!17895)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!46059)

(declare-fun bm!59377 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5370 (array!78158 array!78160 (_ BitVec 32) (_ BitVec 32) V!46059 V!46059 (_ BitVec 32) Int) ListLongMap!17895)

(assert (=> bm!59377 (= call!59385 (getCurrentListMapNoExtraKeys!5370 lt!548960 lt!548955 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209429 () Bool)

(declare-fun e!686925 () Bool)

(declare-fun tp_is_empty!30699 () Bool)

(assert (=> b!1209429 (= e!686925 tp_is_empty!30699)))

(declare-fun call!59386 () ListLongMap!17895)

(declare-fun lt!548969 () ListLongMap!17895)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun c!119025 () Bool)

(declare-fun bm!59378 () Bool)

(declare-fun call!59380 () Bool)

(declare-fun contains!6976 (ListLongMap!17895 (_ BitVec 64)) Bool)

(assert (=> bm!59378 (= call!59380 (contains!6976 (ite c!119025 lt!548969 call!59386) k0!934))))

(declare-fun b!1209430 () Bool)

(declare-fun e!686935 () Bool)

(declare-fun e!686927 () Bool)

(assert (=> b!1209430 (= e!686935 e!686927)))

(declare-fun res!803889 () Bool)

(assert (=> b!1209430 (=> res!803889 e!686927)))

(assert (=> b!1209430 (= res!803889 (not (= from!1455 i!673)))))

(declare-fun lt!548954 () ListLongMap!17895)

(assert (=> b!1209430 (= lt!548954 (getCurrentListMapNoExtraKeys!5370 lt!548960 lt!548955 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78160)

(declare-fun dynLambda!3287 (Int (_ BitVec 64)) V!46059)

(assert (=> b!1209430 (= lt!548955 (array!78161 (store (arr!37713 _values!996) i!673 (ValueCellFull!14640 (dynLambda!3287 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38250 _values!996)))))

(declare-fun lt!548964 () ListLongMap!17895)

(assert (=> b!1209430 (= lt!548964 (getCurrentListMapNoExtraKeys!5370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1209431 () Bool)

(declare-fun e!686920 () Unit!40007)

(declare-fun lt!548970 () Unit!40007)

(assert (=> b!1209431 (= e!686920 lt!548970)))

(declare-fun lt!548963 () ListLongMap!17895)

(declare-fun lt!548958 () Unit!40007)

(declare-fun addStillContains!1055 (ListLongMap!17895 (_ BitVec 64) V!46059 (_ BitVec 64)) Unit!40007)

(assert (=> b!1209431 (= lt!548958 (addStillContains!1055 lt!548963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun call!59382 () ListLongMap!17895)

(assert (=> b!1209431 (= lt!548969 call!59382)))

(assert (=> b!1209431 call!59380))

(assert (=> b!1209431 (= lt!548970 call!59383)))

(declare-fun +!3990 (ListLongMap!17895 tuple2!19914) ListLongMap!17895)

(assert (=> b!1209431 (contains!6976 (+!3990 lt!548969 (tuple2!19915 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1209432 () Bool)

(declare-fun res!803897 () Bool)

(declare-fun e!686931 () Bool)

(assert (=> b!1209432 (=> res!803897 e!686931)))

(declare-datatypes ((List!26736 0))(
  ( (Nil!26733) (Cons!26732 (h!27941 (_ BitVec 64)) (t!39718 List!26736)) )
))
(declare-fun noDuplicate!1652 (List!26736) Bool)

(assert (=> b!1209432 (= res!803897 (not (noDuplicate!1652 Nil!26733)))))

(declare-fun b!1209433 () Bool)

(declare-fun c!119024 () Bool)

(declare-fun lt!548962 () Bool)

(assert (=> b!1209433 (= c!119024 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548962))))

(declare-fun e!686923 () Unit!40007)

(declare-fun e!686930 () Unit!40007)

(assert (=> b!1209433 (= e!686923 e!686930)))

(declare-fun b!1209434 () Bool)

(declare-fun e!686921 () Bool)

(assert (=> b!1209434 (= e!686921 e!686931)))

(declare-fun res!803885 () Bool)

(assert (=> b!1209434 (=> res!803885 e!686931)))

(assert (=> b!1209434 (= res!803885 (or (bvsge (size!38249 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38249 _keys!1208)) (bvsge from!1455 (size!38249 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!78158 (_ BitVec 32) List!26736) Bool)

(assert (=> b!1209434 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26733)))

(declare-fun lt!548967 () Unit!40007)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78158 (_ BitVec 32) (_ BitVec 32)) Unit!40007)

(assert (=> b!1209434 (= lt!548967 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!686929 () Bool)

(assert (=> b!1209434 e!686929))

(declare-fun res!803891 () Bool)

(assert (=> b!1209434 (=> (not res!803891) (not e!686929))))

(declare-fun e!686924 () Bool)

(assert (=> b!1209434 (= res!803891 e!686924)))

(declare-fun c!119027 () Bool)

(assert (=> b!1209434 (= c!119027 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548966 () Unit!40007)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!592 (array!78158 array!78160 (_ BitVec 32) (_ BitVec 32) V!46059 V!46059 (_ BitVec 64) (_ BitVec 32) Int) Unit!40007)

(assert (=> b!1209434 (= lt!548966 (lemmaListMapContainsThenArrayContainsFrom!592 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548965 () Unit!40007)

(assert (=> b!1209434 (= lt!548965 e!686920)))

(assert (=> b!1209434 (= c!119025 (and (not lt!548962) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1209434 (= lt!548962 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!59379 () Bool)

(declare-fun c!119028 () Bool)

(assert (=> bm!59379 (= call!59382 (+!3990 lt!548963 (ite (or c!119025 c!119028) (tuple2!19915 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19915 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1209435 () Bool)

(declare-fun call!59384 () Bool)

(assert (=> b!1209435 call!59384))

(declare-fun lt!548956 () Unit!40007)

(assert (=> b!1209435 (= lt!548956 call!59379)))

(assert (=> b!1209435 (= e!686923 lt!548956)))

(declare-fun b!1209436 () Bool)

(declare-fun arrayContainsKey!0 (array!78158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209436 (= e!686929 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209437 () Bool)

(declare-fun e!686933 () Bool)

(declare-fun call!59381 () ListLongMap!17895)

(assert (=> b!1209437 (= e!686933 (= call!59385 call!59381))))

(declare-fun b!1209438 () Bool)

(declare-fun res!803899 () Bool)

(assert (=> b!1209438 (=> (not res!803899) (not e!686934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209438 (= res!803899 (validKeyInArray!0 k0!934))))

(declare-fun b!1209439 () Bool)

(declare-fun res!803886 () Bool)

(assert (=> b!1209439 (=> res!803886 e!686931)))

(declare-fun contains!6977 (List!26736 (_ BitVec 64)) Bool)

(assert (=> b!1209439 (= res!803886 (contains!6977 Nil!26733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1209440 () Bool)

(declare-fun res!803890 () Bool)

(assert (=> b!1209440 (=> (not res!803890) (not e!686934))))

(assert (=> b!1209440 (= res!803890 (= (select (arr!37712 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!47917 () Bool)

(declare-fun mapRes!47917 () Bool)

(assert (=> mapIsEmpty!47917 mapRes!47917))

(declare-fun b!1209441 () Bool)

(assert (=> b!1209441 (= e!686924 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548962) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209442 () Bool)

(declare-fun e!686928 () Bool)

(assert (=> b!1209442 (= e!686928 e!686921)))

(declare-fun res!803893 () Bool)

(assert (=> b!1209442 (=> res!803893 e!686921)))

(assert (=> b!1209442 (= res!803893 (not (contains!6976 lt!548963 k0!934)))))

(assert (=> b!1209442 (= lt!548963 (getCurrentListMapNoExtraKeys!5370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59380 () Bool)

(assert (=> bm!59380 (= call!59386 call!59382)))

(declare-fun b!1209443 () Bool)

(declare-fun res!803883 () Bool)

(assert (=> b!1209443 (=> (not res!803883) (not e!686934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209443 (= res!803883 (validMask!0 mask!1564))))

(declare-fun b!1209444 () Bool)

(declare-fun Unit!40009 () Unit!40007)

(assert (=> b!1209444 (= e!686930 Unit!40009)))

(declare-fun b!1209445 () Bool)

(declare-fun e!686919 () Bool)

(declare-fun e!686926 () Bool)

(assert (=> b!1209445 (= e!686919 (and e!686926 mapRes!47917))))

(declare-fun condMapEmpty!47917 () Bool)

(declare-fun mapDefault!47917 () ValueCell!14640)

(assert (=> b!1209445 (= condMapEmpty!47917 (= (arr!37713 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14640)) mapDefault!47917)))))

(declare-fun b!1209446 () Bool)

(declare-fun res!803888 () Bool)

(assert (=> b!1209446 (=> (not res!803888) (not e!686934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78158 (_ BitVec 32)) Bool)

(assert (=> b!1209446 (= res!803888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59381 () Bool)

(assert (=> bm!59381 (= call!59384 call!59380)))

(declare-fun b!1209428 () Bool)

(assert (=> b!1209428 (= e!686927 e!686928)))

(declare-fun res!803896 () Bool)

(assert (=> b!1209428 (=> res!803896 e!686928)))

(assert (=> b!1209428 (= res!803896 (not (= (select (arr!37712 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1209428 e!686933))

(declare-fun c!119026 () Bool)

(assert (=> b!1209428 (= c!119026 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548959 () Unit!40007)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1072 (array!78158 array!78160 (_ BitVec 32) (_ BitVec 32) V!46059 V!46059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40007)

(assert (=> b!1209428 (= lt!548959 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1072 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!803884 () Bool)

(assert (=> start!101032 (=> (not res!803884) (not e!686934))))

(assert (=> start!101032 (= res!803884 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38249 _keys!1208))))))

(assert (=> start!101032 e!686934))

(assert (=> start!101032 tp_is_empty!30699))

(declare-fun array_inv!28632 (array!78158) Bool)

(assert (=> start!101032 (array_inv!28632 _keys!1208)))

(assert (=> start!101032 true))

(assert (=> start!101032 tp!91001))

(declare-fun array_inv!28633 (array!78160) Bool)

(assert (=> start!101032 (and (array_inv!28633 _values!996) e!686919)))

(declare-fun b!1209447 () Bool)

(declare-fun res!803887 () Bool)

(assert (=> b!1209447 (=> (not res!803887) (not e!686934))))

(assert (=> b!1209447 (= res!803887 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26733))))

(declare-fun b!1209448 () Bool)

(declare-fun -!1867 (ListLongMap!17895 (_ BitVec 64)) ListLongMap!17895)

(assert (=> b!1209448 (= e!686933 (= call!59385 (-!1867 call!59381 k0!934)))))

(declare-fun b!1209449 () Bool)

(declare-fun lt!548957 () Unit!40007)

(assert (=> b!1209449 (= e!686930 lt!548957)))

(assert (=> b!1209449 (= lt!548957 call!59379)))

(assert (=> b!1209449 call!59384))

(declare-fun b!1209450 () Bool)

(declare-fun res!803894 () Bool)

(assert (=> b!1209450 (=> (not res!803894) (not e!686934))))

(assert (=> b!1209450 (= res!803894 (and (= (size!38250 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38249 _keys!1208) (size!38250 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209451 () Bool)

(assert (=> b!1209451 (= e!686924 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59382 () Bool)

(assert (=> bm!59382 (= call!59383 (addStillContains!1055 (ite c!119025 lt!548969 lt!548963) (ite c!119025 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119028 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119025 minValue!944 (ite c!119028 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1209452 () Bool)

(declare-fun res!803892 () Bool)

(declare-fun e!686922 () Bool)

(assert (=> b!1209452 (=> (not res!803892) (not e!686922))))

(assert (=> b!1209452 (= res!803892 (arrayNoDuplicates!0 lt!548960 #b00000000000000000000000000000000 Nil!26733))))

(declare-fun b!1209453 () Bool)

(assert (=> b!1209453 (= e!686926 tp_is_empty!30699)))

(declare-fun b!1209454 () Bool)

(assert (=> b!1209454 (= e!686920 e!686923)))

(assert (=> b!1209454 (= c!119028 (and (not lt!548962) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1209455 () Bool)

(assert (=> b!1209455 (= e!686931 true)))

(declare-fun lt!548961 () Bool)

(assert (=> b!1209455 (= lt!548961 (contains!6977 Nil!26733 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!47917 () Bool)

(declare-fun tp!91002 () Bool)

(assert (=> mapNonEmpty!47917 (= mapRes!47917 (and tp!91002 e!686925))))

(declare-fun mapKey!47917 () (_ BitVec 32))

(declare-fun mapValue!47917 () ValueCell!14640)

(declare-fun mapRest!47917 () (Array (_ BitVec 32) ValueCell!14640))

(assert (=> mapNonEmpty!47917 (= (arr!37713 _values!996) (store mapRest!47917 mapKey!47917 mapValue!47917))))

(declare-fun b!1209456 () Bool)

(assert (=> b!1209456 (= e!686934 e!686922)))

(declare-fun res!803900 () Bool)

(assert (=> b!1209456 (=> (not res!803900) (not e!686922))))

(assert (=> b!1209456 (= res!803900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548960 mask!1564))))

(assert (=> b!1209456 (= lt!548960 (array!78159 (store (arr!37712 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38249 _keys!1208)))))

(declare-fun b!1209457 () Bool)

(assert (=> b!1209457 (= e!686922 (not e!686935))))

(declare-fun res!803898 () Bool)

(assert (=> b!1209457 (=> res!803898 e!686935)))

(assert (=> b!1209457 (= res!803898 (bvsgt from!1455 i!673))))

(assert (=> b!1209457 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!548968 () Unit!40007)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78158 (_ BitVec 64) (_ BitVec 32)) Unit!40007)

(assert (=> b!1209457 (= lt!548968 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!59383 () Bool)

(assert (=> bm!59383 (= call!59381 (getCurrentListMapNoExtraKeys!5370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!101032 res!803884) b!1209443))

(assert (= (and b!1209443 res!803883) b!1209450))

(assert (= (and b!1209450 res!803894) b!1209446))

(assert (= (and b!1209446 res!803888) b!1209447))

(assert (= (and b!1209447 res!803887) b!1209427))

(assert (= (and b!1209427 res!803895) b!1209438))

(assert (= (and b!1209438 res!803899) b!1209440))

(assert (= (and b!1209440 res!803890) b!1209456))

(assert (= (and b!1209456 res!803900) b!1209452))

(assert (= (and b!1209452 res!803892) b!1209457))

(assert (= (and b!1209457 (not res!803898)) b!1209430))

(assert (= (and b!1209430 (not res!803889)) b!1209428))

(assert (= (and b!1209428 c!119026) b!1209448))

(assert (= (and b!1209428 (not c!119026)) b!1209437))

(assert (= (or b!1209448 b!1209437) bm!59377))

(assert (= (or b!1209448 b!1209437) bm!59383))

(assert (= (and b!1209428 (not res!803896)) b!1209442))

(assert (= (and b!1209442 (not res!803893)) b!1209434))

(assert (= (and b!1209434 c!119025) b!1209431))

(assert (= (and b!1209434 (not c!119025)) b!1209454))

(assert (= (and b!1209454 c!119028) b!1209435))

(assert (= (and b!1209454 (not c!119028)) b!1209433))

(assert (= (and b!1209433 c!119024) b!1209449))

(assert (= (and b!1209433 (not c!119024)) b!1209444))

(assert (= (or b!1209435 b!1209449) bm!59376))

(assert (= (or b!1209435 b!1209449) bm!59380))

(assert (= (or b!1209435 b!1209449) bm!59381))

(assert (= (or b!1209431 bm!59381) bm!59378))

(assert (= (or b!1209431 bm!59376) bm!59382))

(assert (= (or b!1209431 bm!59380) bm!59379))

(assert (= (and b!1209434 c!119027) b!1209451))

(assert (= (and b!1209434 (not c!119027)) b!1209441))

(assert (= (and b!1209434 res!803891) b!1209436))

(assert (= (and b!1209434 (not res!803885)) b!1209432))

(assert (= (and b!1209432 (not res!803897)) b!1209439))

(assert (= (and b!1209439 (not res!803886)) b!1209455))

(assert (= (and b!1209445 condMapEmpty!47917) mapIsEmpty!47917))

(assert (= (and b!1209445 (not condMapEmpty!47917)) mapNonEmpty!47917))

(get-info :version)

(assert (= (and mapNonEmpty!47917 ((_ is ValueCellFull!14640) mapValue!47917)) b!1209429))

(assert (= (and b!1209445 ((_ is ValueCellFull!14640) mapDefault!47917)) b!1209453))

(assert (= start!101032 b!1209445))

(declare-fun b_lambda!21605 () Bool)

(assert (=> (not b_lambda!21605) (not b!1209430)))

(declare-fun t!39716 () Bool)

(declare-fun tb!10803 () Bool)

(assert (=> (and start!101032 (= defaultEntry!1004 defaultEntry!1004) t!39716) tb!10803))

(declare-fun result!22191 () Bool)

(assert (=> tb!10803 (= result!22191 tp_is_empty!30699)))

(assert (=> b!1209430 t!39716))

(declare-fun b_and!43083 () Bool)

(assert (= b_and!43081 (and (=> t!39716 result!22191) b_and!43083)))

(declare-fun m!1115181 () Bool)

(assert (=> b!1209456 m!1115181))

(declare-fun m!1115183 () Bool)

(assert (=> b!1209456 m!1115183))

(declare-fun m!1115185 () Bool)

(assert (=> b!1209452 m!1115185))

(declare-fun m!1115187 () Bool)

(assert (=> start!101032 m!1115187))

(declare-fun m!1115189 () Bool)

(assert (=> start!101032 m!1115189))

(declare-fun m!1115191 () Bool)

(assert (=> b!1209442 m!1115191))

(declare-fun m!1115193 () Bool)

(assert (=> b!1209442 m!1115193))

(declare-fun m!1115195 () Bool)

(assert (=> bm!59377 m!1115195))

(declare-fun m!1115197 () Bool)

(assert (=> b!1209431 m!1115197))

(declare-fun m!1115199 () Bool)

(assert (=> b!1209431 m!1115199))

(assert (=> b!1209431 m!1115199))

(declare-fun m!1115201 () Bool)

(assert (=> b!1209431 m!1115201))

(declare-fun m!1115203 () Bool)

(assert (=> b!1209457 m!1115203))

(declare-fun m!1115205 () Bool)

(assert (=> b!1209457 m!1115205))

(declare-fun m!1115207 () Bool)

(assert (=> b!1209428 m!1115207))

(declare-fun m!1115209 () Bool)

(assert (=> b!1209428 m!1115209))

(declare-fun m!1115211 () Bool)

(assert (=> b!1209448 m!1115211))

(declare-fun m!1115213 () Bool)

(assert (=> mapNonEmpty!47917 m!1115213))

(declare-fun m!1115215 () Bool)

(assert (=> b!1209443 m!1115215))

(declare-fun m!1115217 () Bool)

(assert (=> bm!59378 m!1115217))

(assert (=> bm!59383 m!1115193))

(declare-fun m!1115219 () Bool)

(assert (=> b!1209451 m!1115219))

(declare-fun m!1115221 () Bool)

(assert (=> bm!59379 m!1115221))

(declare-fun m!1115223 () Bool)

(assert (=> b!1209446 m!1115223))

(declare-fun m!1115225 () Bool)

(assert (=> b!1209447 m!1115225))

(declare-fun m!1115227 () Bool)

(assert (=> bm!59382 m!1115227))

(declare-fun m!1115229 () Bool)

(assert (=> b!1209434 m!1115229))

(declare-fun m!1115231 () Bool)

(assert (=> b!1209434 m!1115231))

(declare-fun m!1115233 () Bool)

(assert (=> b!1209434 m!1115233))

(declare-fun m!1115235 () Bool)

(assert (=> b!1209430 m!1115235))

(declare-fun m!1115237 () Bool)

(assert (=> b!1209430 m!1115237))

(declare-fun m!1115239 () Bool)

(assert (=> b!1209430 m!1115239))

(declare-fun m!1115241 () Bool)

(assert (=> b!1209430 m!1115241))

(declare-fun m!1115243 () Bool)

(assert (=> b!1209455 m!1115243))

(declare-fun m!1115245 () Bool)

(assert (=> b!1209438 m!1115245))

(declare-fun m!1115247 () Bool)

(assert (=> b!1209432 m!1115247))

(assert (=> b!1209436 m!1115219))

(declare-fun m!1115249 () Bool)

(assert (=> b!1209440 m!1115249))

(declare-fun m!1115251 () Bool)

(assert (=> b!1209439 m!1115251))

(check-sat (not b!1209436) (not b!1209457) (not b_lambda!21605) (not b!1209438) tp_is_empty!30699 (not b!1209439) (not b!1209446) (not b_next!25995) (not mapNonEmpty!47917) (not start!101032) (not b!1209451) (not b!1209452) (not b!1209447) (not b!1209443) (not bm!59378) (not b!1209455) (not b!1209432) (not b!1209442) (not b!1209430) (not bm!59377) (not bm!59382) (not b!1209431) (not b!1209456) (not bm!59379) (not b!1209428) (not bm!59383) b_and!43083 (not b!1209448) (not b!1209434))
(check-sat b_and!43083 (not b_next!25995))
