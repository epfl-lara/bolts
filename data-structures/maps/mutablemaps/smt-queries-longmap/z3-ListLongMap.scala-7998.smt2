; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98866 () Bool)

(assert start!98866)

(declare-fun b_free!24435 () Bool)

(declare-fun b_next!24435 () Bool)

(assert (=> start!98866 (= b_free!24435 (not b_next!24435))))

(declare-fun tp!86016 () Bool)

(declare-fun b_and!39733 () Bool)

(assert (=> start!98866 (= tp!86016 b_and!39733)))

(declare-fun mapIsEmpty!45272 () Bool)

(declare-fun mapRes!45272 () Bool)

(assert (=> mapIsEmpty!45272 mapRes!45272))

(declare-fun e!656879 () Bool)

(declare-datatypes ((V!43747 0))(
  ( (V!43748 (val!14539 Int)) )
))
(declare-datatypes ((tuple2!18558 0))(
  ( (tuple2!18559 (_1!9289 (_ BitVec 64)) (_2!9289 V!43747)) )
))
(declare-datatypes ((List!25341 0))(
  ( (Nil!25338) (Cons!25337 (h!26546 tuple2!18558) (t!36775 List!25341)) )
))
(declare-datatypes ((ListLongMap!16539 0))(
  ( (ListLongMap!16540 (toList!8285 List!25341)) )
))
(declare-fun call!54764 () ListLongMap!16539)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!54767 () ListLongMap!16539)

(declare-fun b!1154958 () Bool)

(declare-fun -!1363 (ListLongMap!16539 (_ BitVec 64)) ListLongMap!16539)

(assert (=> b!1154958 (= e!656879 (= call!54767 (-!1363 call!54764 k0!934)))))

(declare-fun b!1154959 () Bool)

(declare-fun e!656895 () Bool)

(declare-fun e!656881 () Bool)

(assert (=> b!1154959 (= e!656895 e!656881)))

(declare-fun res!767507 () Bool)

(assert (=> b!1154959 (=> res!767507 e!656881)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154959 (= res!767507 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43747)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13773 0))(
  ( (ValueCellFull!13773 (v!17177 V!43747)) (EmptyCell!13773) )
))
(declare-datatypes ((array!74726 0))(
  ( (array!74727 (arr!36010 (Array (_ BitVec 32) ValueCell!13773)) (size!36547 (_ BitVec 32))) )
))
(declare-fun lt!518055 () array!74726)

(declare-fun minValue!944 () V!43747)

(declare-datatypes ((array!74728 0))(
  ( (array!74729 (arr!36011 (Array (_ BitVec 32) (_ BitVec 64))) (size!36548 (_ BitVec 32))) )
))
(declare-fun lt!518054 () array!74728)

(declare-fun lt!518039 () ListLongMap!16539)

(declare-fun getCurrentListMapNoExtraKeys!4724 (array!74728 array!74726 (_ BitVec 32) (_ BitVec 32) V!43747 V!43747 (_ BitVec 32) Int) ListLongMap!16539)

(assert (=> b!1154959 (= lt!518039 (getCurrentListMapNoExtraKeys!4724 lt!518054 lt!518055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!518050 () V!43747)

(declare-fun _values!996 () array!74726)

(assert (=> b!1154959 (= lt!518055 (array!74727 (store (arr!36010 _values!996) i!673 (ValueCellFull!13773 lt!518050)) (size!36547 _values!996)))))

(declare-fun dynLambda!2740 (Int (_ BitVec 64)) V!43747)

(assert (=> b!1154959 (= lt!518050 (dynLambda!2740 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74728)

(declare-fun lt!518048 () ListLongMap!16539)

(assert (=> b!1154959 (= lt!518048 (getCurrentListMapNoExtraKeys!4724 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!54766 () ListLongMap!16539)

(declare-fun bm!54758 () Bool)

(declare-fun lt!518045 () ListLongMap!16539)

(declare-fun c!114726 () Bool)

(declare-fun call!54765 () Bool)

(declare-fun contains!6773 (ListLongMap!16539 (_ BitVec 64)) Bool)

(assert (=> bm!54758 (= call!54765 (contains!6773 (ite c!114726 lt!518045 call!54766) k0!934))))

(declare-fun bm!54759 () Bool)

(declare-fun call!54761 () ListLongMap!16539)

(assert (=> bm!54759 (= call!54766 call!54761)))

(declare-fun bm!54760 () Bool)

(declare-fun lt!518052 () ListLongMap!16539)

(declare-fun c!114723 () Bool)

(declare-fun +!3616 (ListLongMap!16539 tuple2!18558) ListLongMap!16539)

(assert (=> bm!54760 (= call!54761 (+!3616 lt!518052 (ite (or c!114726 c!114723) (tuple2!18559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1154961 () Bool)

(declare-fun call!54763 () Bool)

(assert (=> b!1154961 call!54763))

(declare-datatypes ((Unit!37926 0))(
  ( (Unit!37927) )
))
(declare-fun lt!518041 () Unit!37926)

(declare-fun call!54768 () Unit!37926)

(assert (=> b!1154961 (= lt!518041 call!54768)))

(declare-fun e!656887 () Unit!37926)

(assert (=> b!1154961 (= e!656887 lt!518041)))

(declare-fun b!1154962 () Bool)

(declare-fun e!656882 () Bool)

(declare-fun arrayContainsKey!0 (array!74728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154962 (= e!656882 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154963 () Bool)

(declare-fun e!656890 () Bool)

(declare-fun tp_is_empty!28965 () Bool)

(assert (=> b!1154963 (= e!656890 tp_is_empty!28965)))

(declare-fun b!1154964 () Bool)

(declare-fun e!656885 () Unit!37926)

(declare-fun Unit!37928 () Unit!37926)

(assert (=> b!1154964 (= e!656885 Unit!37928)))

(declare-fun b!1154965 () Bool)

(declare-fun e!656893 () Unit!37926)

(assert (=> b!1154965 (= e!656893 e!656887)))

(declare-fun c!114724 () Bool)

(declare-fun lt!518037 () Bool)

(assert (=> b!1154965 (= c!114724 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518037))))

(declare-fun b!1154966 () Bool)

(declare-fun e!656894 () Bool)

(assert (=> b!1154966 (= e!656894 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518037) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1154967 () Bool)

(declare-fun res!767500 () Bool)

(declare-fun e!656886 () Bool)

(assert (=> b!1154967 (=> (not res!767500) (not e!656886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1154967 (= res!767500 (validMask!0 mask!1564))))

(declare-fun b!1154968 () Bool)

(declare-fun res!767513 () Bool)

(assert (=> b!1154968 (=> (not res!767513) (not e!656886))))

(assert (=> b!1154968 (= res!767513 (= (select (arr!36011 _keys!1208) i!673) k0!934))))

(declare-fun b!1154969 () Bool)

(declare-fun res!767506 () Bool)

(assert (=> b!1154969 (=> (not res!767506) (not e!656886))))

(assert (=> b!1154969 (= res!767506 (and (= (size!36547 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36548 _keys!1208) (size!36547 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1154970 () Bool)

(declare-fun e!656888 () Bool)

(assert (=> b!1154970 (= e!656888 tp_is_empty!28965)))

(declare-fun b!1154971 () Bool)

(declare-fun lt!518043 () Unit!37926)

(assert (=> b!1154971 (= e!656893 lt!518043)))

(assert (=> b!1154971 (= lt!518043 call!54768)))

(assert (=> b!1154971 call!54763))

(declare-fun bm!54761 () Bool)

(declare-fun call!54762 () Unit!37926)

(assert (=> bm!54761 (= call!54768 call!54762)))

(declare-fun b!1154972 () Bool)

(assert (=> b!1154972 (= c!114723 (and (not lt!518037) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656889 () Unit!37926)

(assert (=> b!1154972 (= e!656889 e!656893)))

(declare-fun b!1154973 () Bool)

(declare-fun res!767499 () Bool)

(assert (=> b!1154973 (=> (not res!767499) (not e!656886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74728 (_ BitVec 32)) Bool)

(assert (=> b!1154973 (= res!767499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!54762 () Bool)

(assert (=> bm!54762 (= call!54763 call!54765)))

(declare-fun b!1154974 () Bool)

(assert (=> b!1154974 (= e!656894 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154975 () Bool)

(declare-fun res!767501 () Bool)

(declare-fun e!656884 () Bool)

(assert (=> b!1154975 (=> (not res!767501) (not e!656884))))

(declare-datatypes ((List!25342 0))(
  ( (Nil!25339) (Cons!25338 (h!26547 (_ BitVec 64)) (t!36776 List!25342)) )
))
(declare-fun arrayNoDuplicates!0 (array!74728 (_ BitVec 32) List!25342) Bool)

(assert (=> b!1154975 (= res!767501 (arrayNoDuplicates!0 lt!518054 #b00000000000000000000000000000000 Nil!25339))))

(declare-fun bm!54763 () Bool)

(declare-fun addStillContains!913 (ListLongMap!16539 (_ BitVec 64) V!43747 (_ BitVec 64)) Unit!37926)

(assert (=> bm!54763 (= call!54762 (addStillContains!913 lt!518052 (ite (or c!114726 c!114723) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!114726 c!114723) zeroValue!944 minValue!944) k0!934))))

(declare-fun mapNonEmpty!45272 () Bool)

(declare-fun tp!86017 () Bool)

(assert (=> mapNonEmpty!45272 (= mapRes!45272 (and tp!86017 e!656890))))

(declare-fun mapKey!45272 () (_ BitVec 32))

(declare-fun mapRest!45272 () (Array (_ BitVec 32) ValueCell!13773))

(declare-fun mapValue!45272 () ValueCell!13773)

(assert (=> mapNonEmpty!45272 (= (arr!36010 _values!996) (store mapRest!45272 mapKey!45272 mapValue!45272))))

(declare-fun b!1154960 () Bool)

(declare-fun Unit!37929 () Unit!37926)

(assert (=> b!1154960 (= e!656885 Unit!37929)))

(assert (=> b!1154960 (= lt!518037 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1154960 (= c!114726 (and (not lt!518037) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518036 () Unit!37926)

(assert (=> b!1154960 (= lt!518036 e!656889)))

(declare-fun lt!518053 () Unit!37926)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!493 (array!74728 array!74726 (_ BitVec 32) (_ BitVec 32) V!43747 V!43747 (_ BitVec 64) (_ BitVec 32) Int) Unit!37926)

(assert (=> b!1154960 (= lt!518053 (lemmaListMapContainsThenArrayContainsFrom!493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114725 () Bool)

(assert (=> b!1154960 (= c!114725 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767512 () Bool)

(assert (=> b!1154960 (= res!767512 e!656894)))

(assert (=> b!1154960 (=> (not res!767512) (not e!656882))))

(assert (=> b!1154960 e!656882))

(declare-fun lt!518047 () Unit!37926)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74728 (_ BitVec 32) (_ BitVec 32)) Unit!37926)

(assert (=> b!1154960 (= lt!518047 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1154960 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25339)))

(declare-fun lt!518046 () Unit!37926)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74728 (_ BitVec 64) (_ BitVec 32) List!25342) Unit!37926)

(assert (=> b!1154960 (= lt!518046 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25339))))

(assert (=> b!1154960 false))

(declare-fun res!767504 () Bool)

(assert (=> start!98866 (=> (not res!767504) (not e!656886))))

(assert (=> start!98866 (= res!767504 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36548 _keys!1208))))))

(assert (=> start!98866 e!656886))

(assert (=> start!98866 tp_is_empty!28965))

(declare-fun array_inv!27438 (array!74728) Bool)

(assert (=> start!98866 (array_inv!27438 _keys!1208)))

(assert (=> start!98866 true))

(assert (=> start!98866 tp!86016))

(declare-fun e!656883 () Bool)

(declare-fun array_inv!27439 (array!74726) Bool)

(assert (=> start!98866 (and (array_inv!27439 _values!996) e!656883)))

(declare-fun b!1154976 () Bool)

(declare-fun res!767511 () Bool)

(assert (=> b!1154976 (=> (not res!767511) (not e!656886))))

(assert (=> b!1154976 (= res!767511 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36548 _keys!1208))))))

(declare-fun b!1154977 () Bool)

(declare-fun e!656892 () Bool)

(assert (=> b!1154977 (= e!656881 e!656892)))

(declare-fun res!767510 () Bool)

(assert (=> b!1154977 (=> res!767510 e!656892)))

(assert (=> b!1154977 (= res!767510 (not (= (select (arr!36011 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1154977 e!656879))

(declare-fun c!114722 () Bool)

(assert (=> b!1154977 (= c!114722 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!518051 () Unit!37926)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!594 (array!74728 array!74726 (_ BitVec 32) (_ BitVec 32) V!43747 V!43747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37926)

(assert (=> b!1154977 (= lt!518051 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!594 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154978 () Bool)

(assert (=> b!1154978 (= e!656884 (not e!656895))))

(declare-fun res!767509 () Bool)

(assert (=> b!1154978 (=> res!767509 e!656895)))

(assert (=> b!1154978 (= res!767509 (bvsgt from!1455 i!673))))

(assert (=> b!1154978 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!518042 () Unit!37926)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74728 (_ BitVec 64) (_ BitVec 32)) Unit!37926)

(assert (=> b!1154978 (= lt!518042 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1154979 () Bool)

(assert (=> b!1154979 (= e!656879 (= call!54767 call!54764))))

(declare-fun bm!54764 () Bool)

(assert (=> bm!54764 (= call!54764 (getCurrentListMapNoExtraKeys!4724 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154980 () Bool)

(assert (=> b!1154980 (= e!656883 (and e!656888 mapRes!45272))))

(declare-fun condMapEmpty!45272 () Bool)

(declare-fun mapDefault!45272 () ValueCell!13773)

(assert (=> b!1154980 (= condMapEmpty!45272 (= (arr!36010 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13773)) mapDefault!45272)))))

(declare-fun b!1154981 () Bool)

(declare-fun res!767503 () Bool)

(assert (=> b!1154981 (=> (not res!767503) (not e!656886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154981 (= res!767503 (validKeyInArray!0 k0!934))))

(declare-fun b!1154982 () Bool)

(assert (=> b!1154982 (= e!656892 true)))

(declare-fun e!656891 () Bool)

(assert (=> b!1154982 e!656891))

(declare-fun res!767505 () Bool)

(assert (=> b!1154982 (=> (not res!767505) (not e!656891))))

(declare-fun lt!518034 () ListLongMap!16539)

(assert (=> b!1154982 (= res!767505 (= lt!518034 lt!518052))))

(assert (=> b!1154982 (= lt!518034 (-!1363 lt!518048 k0!934))))

(declare-fun lt!518038 () V!43747)

(assert (=> b!1154982 (= (-!1363 (+!3616 lt!518052 (tuple2!18559 (select (arr!36011 _keys!1208) from!1455) lt!518038)) (select (arr!36011 _keys!1208) from!1455)) lt!518052)))

(declare-fun lt!518040 () Unit!37926)

(declare-fun addThenRemoveForNewKeyIsSame!206 (ListLongMap!16539 (_ BitVec 64) V!43747) Unit!37926)

(assert (=> b!1154982 (= lt!518040 (addThenRemoveForNewKeyIsSame!206 lt!518052 (select (arr!36011 _keys!1208) from!1455) lt!518038))))

(declare-fun get!18372 (ValueCell!13773 V!43747) V!43747)

(assert (=> b!1154982 (= lt!518038 (get!18372 (select (arr!36010 _values!996) from!1455) lt!518050))))

(declare-fun lt!518035 () Unit!37926)

(assert (=> b!1154982 (= lt!518035 e!656885)))

(declare-fun c!114721 () Bool)

(assert (=> b!1154982 (= c!114721 (contains!6773 lt!518052 k0!934))))

(assert (=> b!1154982 (= lt!518052 (getCurrentListMapNoExtraKeys!4724 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154983 () Bool)

(declare-fun Unit!37930 () Unit!37926)

(assert (=> b!1154983 (= e!656887 Unit!37930)))

(declare-fun bm!54765 () Bool)

(assert (=> bm!54765 (= call!54767 (getCurrentListMapNoExtraKeys!4724 lt!518054 lt!518055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154984 () Bool)

(assert (=> b!1154984 (contains!6773 (+!3616 lt!518045 (tuple2!18559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!518044 () Unit!37926)

(assert (=> b!1154984 (= lt!518044 (addStillContains!913 lt!518045 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1154984 call!54765))

(assert (=> b!1154984 (= lt!518045 call!54761)))

(declare-fun lt!518049 () Unit!37926)

(assert (=> b!1154984 (= lt!518049 call!54762)))

(assert (=> b!1154984 (= e!656889 lt!518044)))

(declare-fun b!1154985 () Bool)

(assert (=> b!1154985 (= e!656891 (= lt!518034 (getCurrentListMapNoExtraKeys!4724 lt!518054 lt!518055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1154986 () Bool)

(declare-fun res!767508 () Bool)

(assert (=> b!1154986 (=> (not res!767508) (not e!656886))))

(assert (=> b!1154986 (= res!767508 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25339))))

(declare-fun b!1154987 () Bool)

(assert (=> b!1154987 (= e!656886 e!656884)))

(declare-fun res!767502 () Bool)

(assert (=> b!1154987 (=> (not res!767502) (not e!656884))))

(assert (=> b!1154987 (= res!767502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518054 mask!1564))))

(assert (=> b!1154987 (= lt!518054 (array!74729 (store (arr!36011 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36548 _keys!1208)))))

(assert (= (and start!98866 res!767504) b!1154967))

(assert (= (and b!1154967 res!767500) b!1154969))

(assert (= (and b!1154969 res!767506) b!1154973))

(assert (= (and b!1154973 res!767499) b!1154986))

(assert (= (and b!1154986 res!767508) b!1154976))

(assert (= (and b!1154976 res!767511) b!1154981))

(assert (= (and b!1154981 res!767503) b!1154968))

(assert (= (and b!1154968 res!767513) b!1154987))

(assert (= (and b!1154987 res!767502) b!1154975))

(assert (= (and b!1154975 res!767501) b!1154978))

(assert (= (and b!1154978 (not res!767509)) b!1154959))

(assert (= (and b!1154959 (not res!767507)) b!1154977))

(assert (= (and b!1154977 c!114722) b!1154958))

(assert (= (and b!1154977 (not c!114722)) b!1154979))

(assert (= (or b!1154958 b!1154979) bm!54765))

(assert (= (or b!1154958 b!1154979) bm!54764))

(assert (= (and b!1154977 (not res!767510)) b!1154982))

(assert (= (and b!1154982 c!114721) b!1154960))

(assert (= (and b!1154982 (not c!114721)) b!1154964))

(assert (= (and b!1154960 c!114726) b!1154984))

(assert (= (and b!1154960 (not c!114726)) b!1154972))

(assert (= (and b!1154972 c!114723) b!1154971))

(assert (= (and b!1154972 (not c!114723)) b!1154965))

(assert (= (and b!1154965 c!114724) b!1154961))

(assert (= (and b!1154965 (not c!114724)) b!1154983))

(assert (= (or b!1154971 b!1154961) bm!54761))

(assert (= (or b!1154971 b!1154961) bm!54759))

(assert (= (or b!1154971 b!1154961) bm!54762))

(assert (= (or b!1154984 bm!54762) bm!54758))

(assert (= (or b!1154984 bm!54761) bm!54763))

(assert (= (or b!1154984 bm!54759) bm!54760))

(assert (= (and b!1154960 c!114725) b!1154974))

(assert (= (and b!1154960 (not c!114725)) b!1154966))

(assert (= (and b!1154960 res!767512) b!1154962))

(assert (= (and b!1154982 res!767505) b!1154985))

(assert (= (and b!1154980 condMapEmpty!45272) mapIsEmpty!45272))

(assert (= (and b!1154980 (not condMapEmpty!45272)) mapNonEmpty!45272))

(get-info :version)

(assert (= (and mapNonEmpty!45272 ((_ is ValueCellFull!13773) mapValue!45272)) b!1154963))

(assert (= (and b!1154980 ((_ is ValueCellFull!13773) mapDefault!45272)) b!1154970))

(assert (= start!98866 b!1154980))

(declare-fun b_lambda!19559 () Bool)

(assert (=> (not b_lambda!19559) (not b!1154959)))

(declare-fun t!36774 () Bool)

(declare-fun tb!9255 () Bool)

(assert (=> (and start!98866 (= defaultEntry!1004 defaultEntry!1004) t!36774) tb!9255))

(declare-fun result!19067 () Bool)

(assert (=> tb!9255 (= result!19067 tp_is_empty!28965)))

(assert (=> b!1154959 t!36774))

(declare-fun b_and!39735 () Bool)

(assert (= b_and!39733 (and (=> t!36774 result!19067) b_and!39735)))

(declare-fun m!1064663 () Bool)

(assert (=> b!1154986 m!1064663))

(declare-fun m!1064665 () Bool)

(assert (=> b!1154959 m!1064665))

(declare-fun m!1064667 () Bool)

(assert (=> b!1154959 m!1064667))

(declare-fun m!1064669 () Bool)

(assert (=> b!1154959 m!1064669))

(declare-fun m!1064671 () Bool)

(assert (=> b!1154959 m!1064671))

(declare-fun m!1064673 () Bool)

(assert (=> b!1154974 m!1064673))

(declare-fun m!1064675 () Bool)

(assert (=> b!1154982 m!1064675))

(declare-fun m!1064677 () Bool)

(assert (=> b!1154982 m!1064677))

(declare-fun m!1064679 () Bool)

(assert (=> b!1154982 m!1064679))

(declare-fun m!1064681 () Bool)

(assert (=> b!1154982 m!1064681))

(declare-fun m!1064683 () Bool)

(assert (=> b!1154982 m!1064683))

(declare-fun m!1064685 () Bool)

(assert (=> b!1154982 m!1064685))

(assert (=> b!1154982 m!1064677))

(declare-fun m!1064687 () Bool)

(assert (=> b!1154982 m!1064687))

(declare-fun m!1064689 () Bool)

(assert (=> b!1154982 m!1064689))

(assert (=> b!1154982 m!1064689))

(assert (=> b!1154982 m!1064679))

(declare-fun m!1064691 () Bool)

(assert (=> b!1154982 m!1064691))

(assert (=> b!1154982 m!1064679))

(declare-fun m!1064693 () Bool)

(assert (=> b!1154975 m!1064693))

(assert (=> b!1154962 m!1064673))

(assert (=> b!1154977 m!1064679))

(declare-fun m!1064695 () Bool)

(assert (=> b!1154977 m!1064695))

(declare-fun m!1064697 () Bool)

(assert (=> bm!54760 m!1064697))

(declare-fun m!1064699 () Bool)

(assert (=> b!1154958 m!1064699))

(declare-fun m!1064701 () Bool)

(assert (=> b!1154985 m!1064701))

(declare-fun m!1064703 () Bool)

(assert (=> start!98866 m!1064703))

(declare-fun m!1064705 () Bool)

(assert (=> start!98866 m!1064705))

(declare-fun m!1064707 () Bool)

(assert (=> bm!54758 m!1064707))

(assert (=> bm!54765 m!1064701))

(declare-fun m!1064709 () Bool)

(assert (=> b!1154968 m!1064709))

(declare-fun m!1064711 () Bool)

(assert (=> b!1154960 m!1064711))

(declare-fun m!1064713 () Bool)

(assert (=> b!1154960 m!1064713))

(declare-fun m!1064715 () Bool)

(assert (=> b!1154960 m!1064715))

(declare-fun m!1064717 () Bool)

(assert (=> b!1154960 m!1064717))

(declare-fun m!1064719 () Bool)

(assert (=> b!1154984 m!1064719))

(assert (=> b!1154984 m!1064719))

(declare-fun m!1064721 () Bool)

(assert (=> b!1154984 m!1064721))

(declare-fun m!1064723 () Bool)

(assert (=> b!1154984 m!1064723))

(declare-fun m!1064725 () Bool)

(assert (=> mapNonEmpty!45272 m!1064725))

(declare-fun m!1064727 () Bool)

(assert (=> b!1154987 m!1064727))

(declare-fun m!1064729 () Bool)

(assert (=> b!1154987 m!1064729))

(declare-fun m!1064731 () Bool)

(assert (=> bm!54763 m!1064731))

(declare-fun m!1064733 () Bool)

(assert (=> b!1154973 m!1064733))

(declare-fun m!1064735 () Bool)

(assert (=> b!1154978 m!1064735))

(declare-fun m!1064737 () Bool)

(assert (=> b!1154978 m!1064737))

(declare-fun m!1064739 () Bool)

(assert (=> b!1154967 m!1064739))

(assert (=> bm!54764 m!1064675))

(declare-fun m!1064741 () Bool)

(assert (=> b!1154981 m!1064741))

(check-sat (not b_lambda!19559) (not b!1154978) (not bm!54765) (not b!1154982) (not b!1154959) (not b!1154985) (not start!98866) (not b!1154973) (not b!1154967) b_and!39735 (not b!1154987) (not b_next!24435) (not b!1154962) (not b!1154984) (not b!1154975) (not b!1154974) (not bm!54764) (not b!1154981) tp_is_empty!28965 (not bm!54760) (not b!1154960) (not bm!54758) (not bm!54763) (not mapNonEmpty!45272) (not b!1154977) (not b!1154986) (not b!1154958))
(check-sat b_and!39735 (not b_next!24435))
