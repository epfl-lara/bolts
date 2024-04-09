; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98254 () Bool)

(assert start!98254)

(declare-fun b_free!23919 () Bool)

(declare-fun b_next!23919 () Bool)

(assert (=> start!98254 (= b_free!23919 (not b_next!23919))))

(declare-fun tp!84462 () Bool)

(declare-fun b_and!38643 () Bool)

(assert (=> start!98254 (= tp!84462 b_and!38643)))

(declare-fun b!1130930 () Bool)

(declare-fun e!643660 () Bool)

(declare-fun e!643670 () Bool)

(assert (=> b!1130930 (= e!643660 e!643670)))

(declare-fun res!755663 () Bool)

(assert (=> b!1130930 (=> res!755663 e!643670)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!73716 0))(
  ( (array!73717 (arr!35507 (Array (_ BitVec 32) (_ BitVec 64))) (size!36044 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73716)

(assert (=> b!1130930 (= res!755663 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36044 _keys!1208))))))

(declare-datatypes ((Unit!37002 0))(
  ( (Unit!37003) )
))
(declare-fun lt!502259 () Unit!37002)

(declare-fun e!643659 () Unit!37002)

(assert (=> b!1130930 (= lt!502259 e!643659)))

(declare-fun c!110060 () Bool)

(declare-fun lt!502257 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1130930 (= c!110060 (and (not lt!502257) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130930 (= lt!502257 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130931 () Bool)

(declare-fun res!755655 () Bool)

(declare-fun e!643663 () Bool)

(assert (=> b!1130931 (=> (not res!755655) (not e!643663))))

(declare-fun lt!502260 () array!73716)

(declare-datatypes ((List!24903 0))(
  ( (Nil!24900) (Cons!24899 (h!26108 (_ BitVec 64)) (t!35821 List!24903)) )
))
(declare-fun arrayNoDuplicates!0 (array!73716 (_ BitVec 32) List!24903) Bool)

(assert (=> b!1130931 (= res!755655 (arrayNoDuplicates!0 lt!502260 #b00000000000000000000000000000000 Nil!24900))))

(declare-fun b!1130932 () Bool)

(declare-fun res!755662 () Bool)

(declare-fun e!643667 () Bool)

(assert (=> b!1130932 (=> (not res!755662) (not e!643667))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1130932 (= res!755662 (= (select (arr!35507 _keys!1208) i!673) k0!934))))

(declare-fun b!1130933 () Bool)

(assert (=> b!1130933 (= e!643667 e!643663)))

(declare-fun res!755660 () Bool)

(assert (=> b!1130933 (=> (not res!755660) (not e!643663))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73716 (_ BitVec 32)) Bool)

(assert (=> b!1130933 (= res!755660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502260 mask!1564))))

(assert (=> b!1130933 (= lt!502260 (array!73717 (store (arr!35507 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36044 _keys!1208)))))

(declare-fun b!1130934 () Bool)

(declare-fun res!755653 () Bool)

(assert (=> b!1130934 (=> (not res!755653) (not e!643667))))

(assert (=> b!1130934 (= res!755653 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36044 _keys!1208))))))

(declare-fun bm!48499 () Bool)

(declare-datatypes ((V!43059 0))(
  ( (V!43060 (val!14281 Int)) )
))
(declare-datatypes ((tuple2!18084 0))(
  ( (tuple2!18085 (_1!9052 (_ BitVec 64)) (_2!9052 V!43059)) )
))
(declare-datatypes ((List!24904 0))(
  ( (Nil!24901) (Cons!24900 (h!26109 tuple2!18084) (t!35822 List!24904)) )
))
(declare-datatypes ((ListLongMap!16065 0))(
  ( (ListLongMap!16066 (toList!8048 List!24904)) )
))
(declare-fun lt!502261 () ListLongMap!16065)

(declare-fun call!48505 () Bool)

(declare-fun call!48504 () ListLongMap!16065)

(declare-fun contains!6542 (ListLongMap!16065 (_ BitVec 64)) Bool)

(assert (=> bm!48499 (= call!48505 (contains!6542 (ite c!110060 lt!502261 call!48504) k0!934))))

(declare-fun b!1130935 () Bool)

(declare-fun res!755657 () Bool)

(assert (=> b!1130935 (=> (not res!755657) (not e!643667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130935 (= res!755657 (validMask!0 mask!1564))))

(declare-fun b!1130936 () Bool)

(declare-fun e!643661 () Unit!37002)

(declare-fun Unit!37004 () Unit!37002)

(assert (=> b!1130936 (= e!643661 Unit!37004)))

(declare-fun res!755658 () Bool)

(assert (=> start!98254 (=> (not res!755658) (not e!643667))))

(assert (=> start!98254 (= res!755658 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36044 _keys!1208))))))

(assert (=> start!98254 e!643667))

(declare-fun tp_is_empty!28449 () Bool)

(assert (=> start!98254 tp_is_empty!28449))

(declare-fun array_inv!27108 (array!73716) Bool)

(assert (=> start!98254 (array_inv!27108 _keys!1208)))

(assert (=> start!98254 true))

(assert (=> start!98254 tp!84462))

(declare-datatypes ((ValueCell!13515 0))(
  ( (ValueCellFull!13515 (v!16915 V!43059)) (EmptyCell!13515) )
))
(declare-datatypes ((array!73718 0))(
  ( (array!73719 (arr!35508 (Array (_ BitVec 32) ValueCell!13515)) (size!36045 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73718)

(declare-fun e!643665 () Bool)

(declare-fun array_inv!27109 (array!73718) Bool)

(assert (=> start!98254 (and (array_inv!27109 _values!996) e!643665)))

(declare-fun b!1130937 () Bool)

(declare-fun c!110061 () Bool)

(assert (=> b!1130937 (= c!110061 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502257))))

(declare-fun e!643669 () Unit!37002)

(assert (=> b!1130937 (= e!643669 e!643661)))

(declare-fun call!48507 () ListLongMap!16065)

(declare-fun b!1130938 () Bool)

(declare-fun call!48506 () ListLongMap!16065)

(declare-fun e!643664 () Bool)

(declare-fun -!1176 (ListLongMap!16065 (_ BitVec 64)) ListLongMap!16065)

(assert (=> b!1130938 (= e!643664 (= call!48506 (-!1176 call!48507 k0!934)))))

(declare-fun bm!48500 () Bool)

(declare-fun call!48503 () ListLongMap!16065)

(assert (=> bm!48500 (= call!48504 call!48503)))

(declare-fun b!1130939 () Bool)

(declare-fun res!755665 () Bool)

(assert (=> b!1130939 (=> (not res!755665) (not e!643667))))

(assert (=> b!1130939 (= res!755665 (and (= (size!36045 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36044 _keys!1208) (size!36045 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48501 () Bool)

(declare-fun call!48502 () Bool)

(assert (=> bm!48501 (= call!48502 call!48505)))

(declare-fun b!1130940 () Bool)

(declare-fun e!643671 () Bool)

(assert (=> b!1130940 (= e!643663 (not e!643671))))

(declare-fun res!755654 () Bool)

(assert (=> b!1130940 (=> res!755654 e!643671)))

(assert (=> b!1130940 (= res!755654 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130940 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!502266 () Unit!37002)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73716 (_ BitVec 64) (_ BitVec 32)) Unit!37002)

(assert (=> b!1130940 (= lt!502266 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1130941 () Bool)

(declare-fun e!643668 () Bool)

(declare-fun e!643666 () Bool)

(assert (=> b!1130941 (= e!643668 e!643666)))

(declare-fun res!755661 () Bool)

(assert (=> b!1130941 (=> res!755661 e!643666)))

(assert (=> b!1130941 (= res!755661 (not (= (select (arr!35507 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1130941 e!643664))

(declare-fun c!110062 () Bool)

(assert (=> b!1130941 (= c!110062 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43059)

(declare-fun lt!502258 () Unit!37002)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43059)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!429 (array!73716 array!73718 (_ BitVec 32) (_ BitVec 32) V!43059 V!43059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37002)

(assert (=> b!1130941 (= lt!502258 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!429 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!110063 () Bool)

(declare-fun lt!502263 () ListLongMap!16065)

(declare-fun bm!48502 () Bool)

(declare-fun +!3415 (ListLongMap!16065 tuple2!18084) ListLongMap!16065)

(assert (=> bm!48502 (= call!48503 (+!3415 (ite c!110060 lt!502261 lt!502263) (ite c!110060 (tuple2!18085 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110063 (tuple2!18085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18085 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1130942 () Bool)

(declare-fun res!755656 () Bool)

(assert (=> b!1130942 (=> (not res!755656) (not e!643667))))

(assert (=> b!1130942 (= res!755656 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24900))))

(declare-fun b!1130943 () Bool)

(declare-fun lt!502256 () Unit!37002)

(assert (=> b!1130943 (= e!643661 lt!502256)))

(declare-fun call!48508 () Unit!37002)

(assert (=> b!1130943 (= lt!502256 call!48508)))

(assert (=> b!1130943 call!48502))

(declare-fun b!1130944 () Bool)

(declare-fun lt!502268 () Unit!37002)

(assert (=> b!1130944 (= e!643659 lt!502268)))

(declare-fun lt!502255 () Unit!37002)

(declare-fun addStillContains!715 (ListLongMap!16065 (_ BitVec 64) V!43059 (_ BitVec 64)) Unit!37002)

(assert (=> b!1130944 (= lt!502255 (addStillContains!715 lt!502263 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1130944 (= lt!502261 (+!3415 lt!502263 (tuple2!18085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1130944 call!48505))

(declare-fun call!48509 () Unit!37002)

(assert (=> b!1130944 (= lt!502268 call!48509)))

(assert (=> b!1130944 (contains!6542 call!48503 k0!934)))

(declare-fun b!1130945 () Bool)

(declare-fun res!755664 () Bool)

(assert (=> b!1130945 (=> (not res!755664) (not e!643667))))

(assert (=> b!1130945 (= res!755664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130946 () Bool)

(assert (=> b!1130946 (= e!643664 (= call!48506 call!48507))))

(declare-fun b!1130947 () Bool)

(declare-fun e!643673 () Bool)

(assert (=> b!1130947 (= e!643673 tp_is_empty!28449)))

(declare-fun b!1130948 () Bool)

(declare-fun res!755659 () Bool)

(assert (=> b!1130948 (=> (not res!755659) (not e!643667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130948 (= res!755659 (validKeyInArray!0 k0!934))))

(declare-fun b!1130949 () Bool)

(assert (=> b!1130949 call!48502))

(declare-fun lt!502264 () Unit!37002)

(assert (=> b!1130949 (= lt!502264 call!48508)))

(assert (=> b!1130949 (= e!643669 lt!502264)))

(declare-fun bm!48503 () Bool)

(assert (=> bm!48503 (= call!48509 (addStillContains!715 (ite c!110060 lt!502261 lt!502263) (ite c!110060 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110063 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110060 minValue!944 (ite c!110063 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1130950 () Bool)

(declare-fun mapRes!44491 () Bool)

(assert (=> b!1130950 (= e!643665 (and e!643673 mapRes!44491))))

(declare-fun condMapEmpty!44491 () Bool)

(declare-fun mapDefault!44491 () ValueCell!13515)

(assert (=> b!1130950 (= condMapEmpty!44491 (= (arr!35508 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13515)) mapDefault!44491)))))

(declare-fun mapNonEmpty!44491 () Bool)

(declare-fun tp!84461 () Bool)

(declare-fun e!643672 () Bool)

(assert (=> mapNonEmpty!44491 (= mapRes!44491 (and tp!84461 e!643672))))

(declare-fun mapRest!44491 () (Array (_ BitVec 32) ValueCell!13515))

(declare-fun mapKey!44491 () (_ BitVec 32))

(declare-fun mapValue!44491 () ValueCell!13515)

(assert (=> mapNonEmpty!44491 (= (arr!35508 _values!996) (store mapRest!44491 mapKey!44491 mapValue!44491))))

(declare-fun lt!502262 () array!73718)

(declare-fun bm!48504 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4501 (array!73716 array!73718 (_ BitVec 32) (_ BitVec 32) V!43059 V!43059 (_ BitVec 32) Int) ListLongMap!16065)

(assert (=> bm!48504 (= call!48506 (getCurrentListMapNoExtraKeys!4501 lt!502260 lt!502262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130951 () Bool)

(assert (=> b!1130951 (= e!643670 true)))

(declare-fun lt!502269 () Bool)

(declare-fun getCurrentListMap!4451 (array!73716 array!73718 (_ BitVec 32) (_ BitVec 32) V!43059 V!43059 (_ BitVec 32) Int) ListLongMap!16065)

(assert (=> b!1130951 (= lt!502269 (contains!6542 (getCurrentListMap!4451 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1130952 () Bool)

(assert (=> b!1130952 (= e!643672 tp_is_empty!28449)))

(declare-fun b!1130953 () Bool)

(assert (=> b!1130953 (= e!643659 e!643669)))

(assert (=> b!1130953 (= c!110063 (and (not lt!502257) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48505 () Bool)

(assert (=> bm!48505 (= call!48507 (getCurrentListMapNoExtraKeys!4501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130954 () Bool)

(assert (=> b!1130954 (= e!643671 e!643668)))

(declare-fun res!755666 () Bool)

(assert (=> b!1130954 (=> res!755666 e!643668)))

(assert (=> b!1130954 (= res!755666 (not (= from!1455 i!673)))))

(declare-fun lt!502267 () ListLongMap!16065)

(assert (=> b!1130954 (= lt!502267 (getCurrentListMapNoExtraKeys!4501 lt!502260 lt!502262 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2575 (Int (_ BitVec 64)) V!43059)

(assert (=> b!1130954 (= lt!502262 (array!73719 (store (arr!35508 _values!996) i!673 (ValueCellFull!13515 (dynLambda!2575 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36045 _values!996)))))

(declare-fun lt!502265 () ListLongMap!16065)

(assert (=> b!1130954 (= lt!502265 (getCurrentListMapNoExtraKeys!4501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1130955 () Bool)

(assert (=> b!1130955 (= e!643666 e!643660)))

(declare-fun res!755667 () Bool)

(assert (=> b!1130955 (=> res!755667 e!643660)))

(assert (=> b!1130955 (= res!755667 (not (contains!6542 lt!502263 k0!934)))))

(assert (=> b!1130955 (= lt!502263 (getCurrentListMapNoExtraKeys!4501 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48506 () Bool)

(assert (=> bm!48506 (= call!48508 call!48509)))

(declare-fun mapIsEmpty!44491 () Bool)

(assert (=> mapIsEmpty!44491 mapRes!44491))

(assert (= (and start!98254 res!755658) b!1130935))

(assert (= (and b!1130935 res!755657) b!1130939))

(assert (= (and b!1130939 res!755665) b!1130945))

(assert (= (and b!1130945 res!755664) b!1130942))

(assert (= (and b!1130942 res!755656) b!1130934))

(assert (= (and b!1130934 res!755653) b!1130948))

(assert (= (and b!1130948 res!755659) b!1130932))

(assert (= (and b!1130932 res!755662) b!1130933))

(assert (= (and b!1130933 res!755660) b!1130931))

(assert (= (and b!1130931 res!755655) b!1130940))

(assert (= (and b!1130940 (not res!755654)) b!1130954))

(assert (= (and b!1130954 (not res!755666)) b!1130941))

(assert (= (and b!1130941 c!110062) b!1130938))

(assert (= (and b!1130941 (not c!110062)) b!1130946))

(assert (= (or b!1130938 b!1130946) bm!48504))

(assert (= (or b!1130938 b!1130946) bm!48505))

(assert (= (and b!1130941 (not res!755661)) b!1130955))

(assert (= (and b!1130955 (not res!755667)) b!1130930))

(assert (= (and b!1130930 c!110060) b!1130944))

(assert (= (and b!1130930 (not c!110060)) b!1130953))

(assert (= (and b!1130953 c!110063) b!1130949))

(assert (= (and b!1130953 (not c!110063)) b!1130937))

(assert (= (and b!1130937 c!110061) b!1130943))

(assert (= (and b!1130937 (not c!110061)) b!1130936))

(assert (= (or b!1130949 b!1130943) bm!48506))

(assert (= (or b!1130949 b!1130943) bm!48500))

(assert (= (or b!1130949 b!1130943) bm!48501))

(assert (= (or b!1130944 bm!48501) bm!48499))

(assert (= (or b!1130944 bm!48506) bm!48503))

(assert (= (or b!1130944 bm!48500) bm!48502))

(assert (= (and b!1130930 (not res!755663)) b!1130951))

(assert (= (and b!1130950 condMapEmpty!44491) mapIsEmpty!44491))

(assert (= (and b!1130950 (not condMapEmpty!44491)) mapNonEmpty!44491))

(get-info :version)

(assert (= (and mapNonEmpty!44491 ((_ is ValueCellFull!13515) mapValue!44491)) b!1130952))

(assert (= (and b!1130950 ((_ is ValueCellFull!13515) mapDefault!44491)) b!1130947))

(assert (= start!98254 b!1130950))

(declare-fun b_lambda!18923 () Bool)

(assert (=> (not b_lambda!18923) (not b!1130954)))

(declare-fun t!35820 () Bool)

(declare-fun tb!8739 () Bool)

(assert (=> (and start!98254 (= defaultEntry!1004 defaultEntry!1004) t!35820) tb!8739))

(declare-fun result!18031 () Bool)

(assert (=> tb!8739 (= result!18031 tp_is_empty!28449)))

(assert (=> b!1130954 t!35820))

(declare-fun b_and!38645 () Bool)

(assert (= b_and!38643 (and (=> t!35820 result!18031) b_and!38645)))

(declare-fun m!1044087 () Bool)

(assert (=> bm!48505 m!1044087))

(declare-fun m!1044089 () Bool)

(assert (=> mapNonEmpty!44491 m!1044089))

(declare-fun m!1044091 () Bool)

(assert (=> b!1130942 m!1044091))

(declare-fun m!1044093 () Bool)

(assert (=> b!1130938 m!1044093))

(declare-fun m!1044095 () Bool)

(assert (=> b!1130932 m!1044095))

(declare-fun m!1044097 () Bool)

(assert (=> bm!48502 m!1044097))

(declare-fun m!1044099 () Bool)

(assert (=> b!1130940 m!1044099))

(declare-fun m!1044101 () Bool)

(assert (=> b!1130940 m!1044101))

(declare-fun m!1044103 () Bool)

(assert (=> start!98254 m!1044103))

(declare-fun m!1044105 () Bool)

(assert (=> start!98254 m!1044105))

(declare-fun m!1044107 () Bool)

(assert (=> b!1130933 m!1044107))

(declare-fun m!1044109 () Bool)

(assert (=> b!1130933 m!1044109))

(declare-fun m!1044111 () Bool)

(assert (=> bm!48504 m!1044111))

(declare-fun m!1044113 () Bool)

(assert (=> b!1130954 m!1044113))

(declare-fun m!1044115 () Bool)

(assert (=> b!1130954 m!1044115))

(declare-fun m!1044117 () Bool)

(assert (=> b!1130954 m!1044117))

(declare-fun m!1044119 () Bool)

(assert (=> b!1130954 m!1044119))

(declare-fun m!1044121 () Bool)

(assert (=> b!1130935 m!1044121))

(declare-fun m!1044123 () Bool)

(assert (=> b!1130955 m!1044123))

(assert (=> b!1130955 m!1044087))

(declare-fun m!1044125 () Bool)

(assert (=> b!1130944 m!1044125))

(declare-fun m!1044127 () Bool)

(assert (=> b!1130944 m!1044127))

(declare-fun m!1044129 () Bool)

(assert (=> b!1130944 m!1044129))

(declare-fun m!1044131 () Bool)

(assert (=> bm!48503 m!1044131))

(declare-fun m!1044133 () Bool)

(assert (=> b!1130951 m!1044133))

(assert (=> b!1130951 m!1044133))

(declare-fun m!1044135 () Bool)

(assert (=> b!1130951 m!1044135))

(declare-fun m!1044137 () Bool)

(assert (=> b!1130931 m!1044137))

(declare-fun m!1044139 () Bool)

(assert (=> b!1130941 m!1044139))

(declare-fun m!1044141 () Bool)

(assert (=> b!1130941 m!1044141))

(declare-fun m!1044143 () Bool)

(assert (=> b!1130945 m!1044143))

(declare-fun m!1044145 () Bool)

(assert (=> b!1130948 m!1044145))

(declare-fun m!1044147 () Bool)

(assert (=> bm!48499 m!1044147))

(check-sat (not bm!48505) (not b!1130948) (not b_lambda!18923) (not mapNonEmpty!44491) (not b!1130940) (not b!1130931) (not b!1130938) (not start!98254) (not b!1130945) (not b!1130944) (not bm!48504) tp_is_empty!28449 (not b!1130954) (not bm!48503) (not bm!48499) (not b!1130955) (not b!1130951) (not b!1130942) (not b!1130935) (not b!1130941) (not bm!48502) b_and!38645 (not b!1130933) (not b_next!23919))
(check-sat b_and!38645 (not b_next!23919))
