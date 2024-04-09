; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98386 () Bool)

(assert start!98386)

(declare-fun b_free!23955 () Bool)

(declare-fun b_next!23955 () Bool)

(assert (=> start!98386 (= b_free!23955 (not b_next!23955))))

(declare-fun tp!84577 () Bool)

(declare-fun b_and!38773 () Bool)

(assert (=> start!98386 (= tp!84577 b_and!38773)))

(declare-fun b!1133111 () Bool)

(declare-fun e!644926 () Bool)

(declare-fun tp_is_empty!28485 () Bool)

(assert (=> b!1133111 (= e!644926 tp_is_empty!28485)))

(declare-fun b!1133112 () Bool)

(declare-datatypes ((Unit!37072 0))(
  ( (Unit!37073) )
))
(declare-fun e!644927 () Unit!37072)

(declare-fun Unit!37074 () Unit!37072)

(assert (=> b!1133112 (= e!644927 Unit!37074)))

(declare-fun b!1133113 () Bool)

(declare-fun res!756716 () Bool)

(declare-fun e!644929 () Bool)

(assert (=> b!1133113 (=> (not res!756716) (not e!644929))))

(declare-datatypes ((array!73792 0))(
  ( (array!73793 (arr!35543 (Array (_ BitVec 32) (_ BitVec 64))) (size!36080 (_ BitVec 32))) )
))
(declare-fun lt!503496 () array!73792)

(declare-datatypes ((List!24933 0))(
  ( (Nil!24930) (Cons!24929 (h!26138 (_ BitVec 64)) (t!35887 List!24933)) )
))
(declare-fun arrayNoDuplicates!0 (array!73792 (_ BitVec 32) List!24933) Bool)

(assert (=> b!1133113 (= res!756716 (arrayNoDuplicates!0 lt!503496 #b00000000000000000000000000000000 Nil!24930))))

(declare-fun bm!48998 () Bool)

(declare-datatypes ((V!43107 0))(
  ( (V!43108 (val!14299 Int)) )
))
(declare-datatypes ((tuple2!18120 0))(
  ( (tuple2!18121 (_1!9070 (_ BitVec 64)) (_2!9070 V!43107)) )
))
(declare-datatypes ((List!24934 0))(
  ( (Nil!24931) (Cons!24930 (h!26139 tuple2!18120) (t!35888 List!24934)) )
))
(declare-datatypes ((ListLongMap!16101 0))(
  ( (ListLongMap!16102 (toList!8066 List!24934)) )
))
(declare-fun call!49004 () ListLongMap!16101)

(declare-fun call!49002 () ListLongMap!16101)

(assert (=> bm!48998 (= call!49004 call!49002)))

(declare-fun bm!48999 () Bool)

(declare-fun call!49001 () Unit!37072)

(declare-fun call!49007 () Unit!37072)

(assert (=> bm!48999 (= call!49001 call!49007)))

(declare-fun b!1133114 () Bool)

(declare-fun e!644937 () Bool)

(declare-fun e!644930 () Bool)

(assert (=> b!1133114 (= e!644937 e!644930)))

(declare-fun res!756720 () Bool)

(assert (=> b!1133114 (=> res!756720 e!644930)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133114 (= res!756720 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43107)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!503495 () ListLongMap!16101)

(declare-datatypes ((ValueCell!13533 0))(
  ( (ValueCellFull!13533 (v!16937 V!43107)) (EmptyCell!13533) )
))
(declare-datatypes ((array!73794 0))(
  ( (array!73795 (arr!35544 (Array (_ BitVec 32) ValueCell!13533)) (size!36081 (_ BitVec 32))) )
))
(declare-fun lt!503499 () array!73794)

(declare-fun minValue!944 () V!43107)

(declare-fun getCurrentListMapNoExtraKeys!4517 (array!73792 array!73794 (_ BitVec 32) (_ BitVec 32) V!43107 V!43107 (_ BitVec 32) Int) ListLongMap!16101)

(assert (=> b!1133114 (= lt!503495 (getCurrentListMapNoExtraKeys!4517 lt!503496 lt!503499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73794)

(declare-fun dynLambda!2586 (Int (_ BitVec 64)) V!43107)

(assert (=> b!1133114 (= lt!503499 (array!73795 (store (arr!35544 _values!996) i!673 (ValueCellFull!13533 (dynLambda!2586 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36081 _values!996)))))

(declare-fun lt!503505 () ListLongMap!16101)

(declare-fun _keys!1208 () array!73792)

(assert (=> b!1133114 (= lt!503505 (getCurrentListMapNoExtraKeys!4517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1133115 () Bool)

(declare-fun e!644933 () Bool)

(assert (=> b!1133115 (= e!644930 e!644933)))

(declare-fun res!756712 () Bool)

(assert (=> b!1133115 (=> res!756712 e!644933)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1133115 (= res!756712 (not (= (select (arr!35543 _keys!1208) from!1455) k0!934)))))

(declare-fun e!644925 () Bool)

(assert (=> b!1133115 e!644925))

(declare-fun c!110515 () Bool)

(assert (=> b!1133115 (= c!110515 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503504 () Unit!37072)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!442 (array!73792 array!73794 (_ BitVec 32) (_ BitVec 32) V!43107 V!43107 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37072)

(assert (=> b!1133115 (= lt!503504 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133116 () Bool)

(declare-fun e!644936 () Bool)

(assert (=> b!1133116 (= e!644933 e!644936)))

(declare-fun res!756713 () Bool)

(assert (=> b!1133116 (=> res!756713 e!644936)))

(declare-fun lt!503498 () ListLongMap!16101)

(declare-fun contains!6559 (ListLongMap!16101 (_ BitVec 64)) Bool)

(assert (=> b!1133116 (= res!756713 (not (contains!6559 lt!503498 k0!934)))))

(assert (=> b!1133116 (= lt!503498 (getCurrentListMapNoExtraKeys!4517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133117 () Bool)

(declare-fun call!49005 () Bool)

(assert (=> b!1133117 call!49005))

(declare-fun lt!503503 () Unit!37072)

(assert (=> b!1133117 (= lt!503503 call!49001)))

(declare-fun e!644932 () Unit!37072)

(assert (=> b!1133117 (= e!644932 lt!503503)))

(declare-fun b!1133118 () Bool)

(declare-fun e!644924 () Bool)

(declare-fun lt!503492 () Bool)

(assert (=> b!1133118 (= e!644924 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503492) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133119 () Bool)

(declare-fun e!644935 () Unit!37072)

(declare-fun lt!503491 () Unit!37072)

(assert (=> b!1133119 (= e!644935 lt!503491)))

(declare-fun lt!503497 () Unit!37072)

(declare-fun addStillContains!726 (ListLongMap!16101 (_ BitVec 64) V!43107 (_ BitVec 64)) Unit!37072)

(assert (=> b!1133119 (= lt!503497 (addStillContains!726 lt!503498 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!503502 () ListLongMap!16101)

(assert (=> b!1133119 (= lt!503502 call!49002)))

(declare-fun call!49003 () Bool)

(assert (=> b!1133119 call!49003))

(assert (=> b!1133119 (= lt!503491 call!49007)))

(declare-fun +!3428 (ListLongMap!16101 tuple2!18120) ListLongMap!16101)

(assert (=> b!1133119 (contains!6559 (+!3428 lt!503502 (tuple2!18121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1133120 () Bool)

(declare-fun c!110514 () Bool)

(assert (=> b!1133120 (= c!110514 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503492))))

(assert (=> b!1133120 (= e!644932 e!644927)))

(declare-fun b!1133121 () Bool)

(declare-fun res!756721 () Bool)

(declare-fun e!644934 () Bool)

(assert (=> b!1133121 (=> (not res!756721) (not e!644934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73792 (_ BitVec 32)) Bool)

(assert (=> b!1133121 (= res!756721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun c!110516 () Bool)

(declare-fun c!110513 () Bool)

(declare-fun bm!49000 () Bool)

(assert (=> bm!49000 (= call!49002 (+!3428 lt!503498 (ite (or c!110516 c!110513) (tuple2!18121 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18121 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133122 () Bool)

(declare-fun res!756722 () Bool)

(assert (=> b!1133122 (=> (not res!756722) (not e!644934))))

(assert (=> b!1133122 (= res!756722 (= (select (arr!35543 _keys!1208) i!673) k0!934))))

(declare-fun bm!49001 () Bool)

(assert (=> bm!49001 (= call!49007 (addStillContains!726 (ite c!110516 lt!503502 lt!503498) (ite c!110516 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110513 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110516 minValue!944 (ite c!110513 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1133123 () Bool)

(declare-fun arrayContainsKey!0 (array!73792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133123 (= e!644924 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133124 () Bool)

(declare-fun e!644922 () Bool)

(assert (=> b!1133124 (= e!644922 tp_is_empty!28485)))

(declare-fun call!49006 () ListLongMap!16101)

(declare-fun call!49008 () ListLongMap!16101)

(declare-fun b!1133125 () Bool)

(declare-fun -!1186 (ListLongMap!16101 (_ BitVec 64)) ListLongMap!16101)

(assert (=> b!1133125 (= e!644925 (= call!49008 (-!1186 call!49006 k0!934)))))

(declare-fun b!1133126 () Bool)

(assert (=> b!1133126 (= e!644925 (= call!49008 call!49006))))

(declare-fun bm!49002 () Bool)

(assert (=> bm!49002 (= call!49008 (getCurrentListMapNoExtraKeys!4517 lt!503496 lt!503499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49003 () Bool)

(assert (=> bm!49003 (= call!49006 (getCurrentListMapNoExtraKeys!4517 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!644923 () Bool)

(declare-fun b!1133127 () Bool)

(assert (=> b!1133127 (= e!644923 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133128 () Bool)

(declare-fun lt!503500 () Unit!37072)

(assert (=> b!1133128 (= e!644927 lt!503500)))

(assert (=> b!1133128 (= lt!503500 call!49001)))

(assert (=> b!1133128 call!49005))

(declare-fun res!756710 () Bool)

(assert (=> start!98386 (=> (not res!756710) (not e!644934))))

(assert (=> start!98386 (= res!756710 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36080 _keys!1208))))))

(assert (=> start!98386 e!644934))

(assert (=> start!98386 tp_is_empty!28485))

(declare-fun array_inv!27130 (array!73792) Bool)

(assert (=> start!98386 (array_inv!27130 _keys!1208)))

(assert (=> start!98386 true))

(assert (=> start!98386 tp!84577))

(declare-fun e!644931 () Bool)

(declare-fun array_inv!27131 (array!73794) Bool)

(assert (=> start!98386 (and (array_inv!27131 _values!996) e!644931)))

(declare-fun b!1133129 () Bool)

(assert (=> b!1133129 (= e!644929 (not e!644937))))

(declare-fun res!756711 () Bool)

(assert (=> b!1133129 (=> res!756711 e!644937)))

(assert (=> b!1133129 (= res!756711 (bvsgt from!1455 i!673))))

(assert (=> b!1133129 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503493 () Unit!37072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73792 (_ BitVec 64) (_ BitVec 32)) Unit!37072)

(assert (=> b!1133129 (= lt!503493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1133130 () Bool)

(assert (=> b!1133130 (= e!644934 e!644929)))

(declare-fun res!756709 () Bool)

(assert (=> b!1133130 (=> (not res!756709) (not e!644929))))

(assert (=> b!1133130 (= res!756709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503496 mask!1564))))

(assert (=> b!1133130 (= lt!503496 (array!73793 (store (arr!35543 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36080 _keys!1208)))))

(declare-fun bm!49004 () Bool)

(assert (=> bm!49004 (= call!49005 call!49003)))

(declare-fun b!1133131 () Bool)

(declare-fun res!756717 () Bool)

(assert (=> b!1133131 (=> (not res!756717) (not e!644934))))

(assert (=> b!1133131 (= res!756717 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24930))))

(declare-fun b!1133132 () Bool)

(declare-fun res!756708 () Bool)

(assert (=> b!1133132 (=> (not res!756708) (not e!644934))))

(assert (=> b!1133132 (= res!756708 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36080 _keys!1208))))))

(declare-fun mapNonEmpty!44552 () Bool)

(declare-fun mapRes!44552 () Bool)

(declare-fun tp!84576 () Bool)

(assert (=> mapNonEmpty!44552 (= mapRes!44552 (and tp!84576 e!644926))))

(declare-fun mapValue!44552 () ValueCell!13533)

(declare-fun mapKey!44552 () (_ BitVec 32))

(declare-fun mapRest!44552 () (Array (_ BitVec 32) ValueCell!13533))

(assert (=> mapNonEmpty!44552 (= (arr!35544 _values!996) (store mapRest!44552 mapKey!44552 mapValue!44552))))

(declare-fun b!1133133 () Bool)

(assert (=> b!1133133 (= e!644935 e!644932)))

(assert (=> b!1133133 (= c!110513 (and (not lt!503492) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133134 () Bool)

(declare-fun res!756719 () Bool)

(assert (=> b!1133134 (=> (not res!756719) (not e!644934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133134 (= res!756719 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!44552 () Bool)

(assert (=> mapIsEmpty!44552 mapRes!44552))

(declare-fun b!1133135 () Bool)

(assert (=> b!1133135 (= e!644931 (and e!644922 mapRes!44552))))

(declare-fun condMapEmpty!44552 () Bool)

(declare-fun mapDefault!44552 () ValueCell!13533)

(assert (=> b!1133135 (= condMapEmpty!44552 (= (arr!35544 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13533)) mapDefault!44552)))))

(declare-fun b!1133136 () Bool)

(assert (=> b!1133136 (= e!644936 true)))

(assert (=> b!1133136 e!644923))

(declare-fun res!756715 () Bool)

(assert (=> b!1133136 (=> (not res!756715) (not e!644923))))

(assert (=> b!1133136 (= res!756715 e!644924)))

(declare-fun c!110517 () Bool)

(assert (=> b!1133136 (= c!110517 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503501 () Unit!37072)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!336 (array!73792 array!73794 (_ BitVec 32) (_ BitVec 32) V!43107 V!43107 (_ BitVec 64) (_ BitVec 32) Int) Unit!37072)

(assert (=> b!1133136 (= lt!503501 (lemmaListMapContainsThenArrayContainsFrom!336 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503494 () Unit!37072)

(assert (=> b!1133136 (= lt!503494 e!644935)))

(assert (=> b!1133136 (= c!110516 (and (not lt!503492) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133136 (= lt!503492 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1133137 () Bool)

(declare-fun res!756718 () Bool)

(assert (=> b!1133137 (=> (not res!756718) (not e!644934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133137 (= res!756718 (validMask!0 mask!1564))))

(declare-fun bm!49005 () Bool)

(assert (=> bm!49005 (= call!49003 (contains!6559 (ite c!110516 lt!503502 call!49004) k0!934))))

(declare-fun b!1133138 () Bool)

(declare-fun res!756714 () Bool)

(assert (=> b!1133138 (=> (not res!756714) (not e!644934))))

(assert (=> b!1133138 (= res!756714 (and (= (size!36081 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36080 _keys!1208) (size!36081 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!98386 res!756710) b!1133137))

(assert (= (and b!1133137 res!756718) b!1133138))

(assert (= (and b!1133138 res!756714) b!1133121))

(assert (= (and b!1133121 res!756721) b!1133131))

(assert (= (and b!1133131 res!756717) b!1133132))

(assert (= (and b!1133132 res!756708) b!1133134))

(assert (= (and b!1133134 res!756719) b!1133122))

(assert (= (and b!1133122 res!756722) b!1133130))

(assert (= (and b!1133130 res!756709) b!1133113))

(assert (= (and b!1133113 res!756716) b!1133129))

(assert (= (and b!1133129 (not res!756711)) b!1133114))

(assert (= (and b!1133114 (not res!756720)) b!1133115))

(assert (= (and b!1133115 c!110515) b!1133125))

(assert (= (and b!1133115 (not c!110515)) b!1133126))

(assert (= (or b!1133125 b!1133126) bm!49002))

(assert (= (or b!1133125 b!1133126) bm!49003))

(assert (= (and b!1133115 (not res!756712)) b!1133116))

(assert (= (and b!1133116 (not res!756713)) b!1133136))

(assert (= (and b!1133136 c!110516) b!1133119))

(assert (= (and b!1133136 (not c!110516)) b!1133133))

(assert (= (and b!1133133 c!110513) b!1133117))

(assert (= (and b!1133133 (not c!110513)) b!1133120))

(assert (= (and b!1133120 c!110514) b!1133128))

(assert (= (and b!1133120 (not c!110514)) b!1133112))

(assert (= (or b!1133117 b!1133128) bm!48999))

(assert (= (or b!1133117 b!1133128) bm!48998))

(assert (= (or b!1133117 b!1133128) bm!49004))

(assert (= (or b!1133119 bm!49004) bm!49005))

(assert (= (or b!1133119 bm!48999) bm!49001))

(assert (= (or b!1133119 bm!48998) bm!49000))

(assert (= (and b!1133136 c!110517) b!1133123))

(assert (= (and b!1133136 (not c!110517)) b!1133118))

(assert (= (and b!1133136 res!756715) b!1133127))

(assert (= (and b!1133135 condMapEmpty!44552) mapIsEmpty!44552))

(assert (= (and b!1133135 (not condMapEmpty!44552)) mapNonEmpty!44552))

(get-info :version)

(assert (= (and mapNonEmpty!44552 ((_ is ValueCellFull!13533) mapValue!44552)) b!1133111))

(assert (= (and b!1133135 ((_ is ValueCellFull!13533) mapDefault!44552)) b!1133124))

(assert (= start!98386 b!1133135))

(declare-fun b_lambda!19079 () Bool)

(assert (=> (not b_lambda!19079) (not b!1133114)))

(declare-fun t!35886 () Bool)

(declare-fun tb!8775 () Bool)

(assert (=> (and start!98386 (= defaultEntry!1004 defaultEntry!1004) t!35886) tb!8775))

(declare-fun result!18107 () Bool)

(assert (=> tb!8775 (= result!18107 tp_is_empty!28485)))

(assert (=> b!1133114 t!35886))

(declare-fun b_and!38775 () Bool)

(assert (= b_and!38773 (and (=> t!35886 result!18107) b_and!38775)))

(declare-fun m!1046317 () Bool)

(assert (=> b!1133127 m!1046317))

(declare-fun m!1046319 () Bool)

(assert (=> b!1133134 m!1046319))

(declare-fun m!1046321 () Bool)

(assert (=> b!1133130 m!1046321))

(declare-fun m!1046323 () Bool)

(assert (=> b!1133130 m!1046323))

(declare-fun m!1046325 () Bool)

(assert (=> bm!49003 m!1046325))

(declare-fun m!1046327 () Bool)

(assert (=> b!1133137 m!1046327))

(declare-fun m!1046329 () Bool)

(assert (=> b!1133136 m!1046329))

(declare-fun m!1046331 () Bool)

(assert (=> b!1133113 m!1046331))

(declare-fun m!1046333 () Bool)

(assert (=> b!1133131 m!1046333))

(declare-fun m!1046335 () Bool)

(assert (=> b!1133121 m!1046335))

(declare-fun m!1046337 () Bool)

(assert (=> b!1133116 m!1046337))

(assert (=> b!1133116 m!1046325))

(declare-fun m!1046339 () Bool)

(assert (=> b!1133125 m!1046339))

(assert (=> b!1133123 m!1046317))

(declare-fun m!1046341 () Bool)

(assert (=> b!1133129 m!1046341))

(declare-fun m!1046343 () Bool)

(assert (=> b!1133129 m!1046343))

(declare-fun m!1046345 () Bool)

(assert (=> bm!49001 m!1046345))

(declare-fun m!1046347 () Bool)

(assert (=> mapNonEmpty!44552 m!1046347))

(declare-fun m!1046349 () Bool)

(assert (=> b!1133115 m!1046349))

(declare-fun m!1046351 () Bool)

(assert (=> b!1133115 m!1046351))

(declare-fun m!1046353 () Bool)

(assert (=> bm!49000 m!1046353))

(declare-fun m!1046355 () Bool)

(assert (=> b!1133119 m!1046355))

(declare-fun m!1046357 () Bool)

(assert (=> b!1133119 m!1046357))

(assert (=> b!1133119 m!1046357))

(declare-fun m!1046359 () Bool)

(assert (=> b!1133119 m!1046359))

(declare-fun m!1046361 () Bool)

(assert (=> b!1133122 m!1046361))

(declare-fun m!1046363 () Bool)

(assert (=> start!98386 m!1046363))

(declare-fun m!1046365 () Bool)

(assert (=> start!98386 m!1046365))

(declare-fun m!1046367 () Bool)

(assert (=> bm!49002 m!1046367))

(declare-fun m!1046369 () Bool)

(assert (=> bm!49005 m!1046369))

(declare-fun m!1046371 () Bool)

(assert (=> b!1133114 m!1046371))

(declare-fun m!1046373 () Bool)

(assert (=> b!1133114 m!1046373))

(declare-fun m!1046375 () Bool)

(assert (=> b!1133114 m!1046375))

(declare-fun m!1046377 () Bool)

(assert (=> b!1133114 m!1046377))

(check-sat (not b!1133129) (not bm!49001) (not start!98386) (not b!1133115) (not b!1133114) (not b!1133116) (not b!1133123) (not b!1133113) (not mapNonEmpty!44552) (not b!1133119) (not b!1133121) (not bm!49000) (not b!1133136) (not b_next!23955) (not bm!49005) (not b_lambda!19079) tp_is_empty!28485 (not b!1133125) (not b!1133127) (not b!1133134) (not b!1133130) b_and!38775 (not b!1133131) (not bm!49002) (not bm!49003) (not b!1133137))
(check-sat b_and!38775 (not b_next!23955))
