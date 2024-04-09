; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98750 () Bool)

(assert start!98750)

(declare-fun b_free!24319 () Bool)

(declare-fun b_next!24319 () Bool)

(assert (=> start!98750 (= b_free!24319 (not b_next!24319))))

(declare-fun tp!85668 () Bool)

(declare-fun b_and!39501 () Bool)

(assert (=> start!98750 (= tp!85668 b_and!39501)))

(declare-fun b!1149622 () Bool)

(declare-fun e!653922 () Bool)

(declare-fun e!653937 () Bool)

(assert (=> b!1149622 (= e!653922 e!653937)))

(declare-fun res!764892 () Bool)

(assert (=> b!1149622 (=> res!764892 e!653937)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149622 (= res!764892 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43593 0))(
  ( (V!43594 (val!14481 Int)) )
))
(declare-fun zeroValue!944 () V!43593)

(declare-datatypes ((ValueCell!13715 0))(
  ( (ValueCellFull!13715 (v!17119 V!43593)) (EmptyCell!13715) )
))
(declare-datatypes ((array!74502 0))(
  ( (array!74503 (arr!35898 (Array (_ BitVec 32) ValueCell!13715)) (size!36435 (_ BitVec 32))) )
))
(declare-fun lt!514213 () array!74502)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74504 0))(
  ( (array!74505 (arr!35899 (Array (_ BitVec 32) (_ BitVec 64))) (size!36436 (_ BitVec 32))) )
))
(declare-fun lt!514206 () array!74504)

(declare-datatypes ((tuple2!18454 0))(
  ( (tuple2!18455 (_1!9237 (_ BitVec 64)) (_2!9237 V!43593)) )
))
(declare-datatypes ((List!25247 0))(
  ( (Nil!25244) (Cons!25243 (h!26452 tuple2!18454) (t!36565 List!25247)) )
))
(declare-datatypes ((ListLongMap!16435 0))(
  ( (ListLongMap!16436 (toList!8233 List!25247)) )
))
(declare-fun lt!514220 () ListLongMap!16435)

(declare-fun minValue!944 () V!43593)

(declare-fun getCurrentListMapNoExtraKeys!4674 (array!74504 array!74502 (_ BitVec 32) (_ BitVec 32) V!43593 V!43593 (_ BitVec 32) Int) ListLongMap!16435)

(assert (=> b!1149622 (= lt!514220 (getCurrentListMapNoExtraKeys!4674 lt!514206 lt!514213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514211 () V!43593)

(declare-fun _values!996 () array!74502)

(assert (=> b!1149622 (= lt!514213 (array!74503 (store (arr!35898 _values!996) i!673 (ValueCellFull!13715 lt!514211)) (size!36435 _values!996)))))

(declare-fun dynLambda!2704 (Int (_ BitVec 64)) V!43593)

(assert (=> b!1149622 (= lt!514211 (dynLambda!2704 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74504)

(declare-fun lt!514226 () ListLongMap!16435)

(assert (=> b!1149622 (= lt!514226 (getCurrentListMapNoExtraKeys!4674 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53366 () Bool)

(declare-fun call!53375 () ListLongMap!16435)

(declare-fun call!53372 () ListLongMap!16435)

(assert (=> bm!53366 (= call!53375 call!53372)))

(declare-fun b!1149623 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6728 (ListLongMap!16435 (_ BitVec 64)) Bool)

(assert (=> b!1149623 (contains!6728 call!53372 k!934)))

(declare-datatypes ((Unit!37716 0))(
  ( (Unit!37717) )
))
(declare-fun lt!514210 () Unit!37716)

(declare-fun call!53369 () Unit!37716)

(assert (=> b!1149623 (= lt!514210 call!53369)))

(declare-fun call!53373 () Bool)

(assert (=> b!1149623 call!53373))

(declare-fun lt!514217 () ListLongMap!16435)

(declare-fun lt!514223 () ListLongMap!16435)

(declare-fun +!3570 (ListLongMap!16435 tuple2!18454) ListLongMap!16435)

(assert (=> b!1149623 (= lt!514217 (+!3570 lt!514223 (tuple2!18455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514207 () Unit!37716)

(declare-fun addStillContains!871 (ListLongMap!16435 (_ BitVec 64) V!43593 (_ BitVec 64)) Unit!37716)

(assert (=> b!1149623 (= lt!514207 (addStillContains!871 lt!514223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!653925 () Unit!37716)

(assert (=> b!1149623 (= e!653925 lt!514210)))

(declare-fun b!1149625 () Bool)

(declare-fun res!764899 () Bool)

(declare-fun e!653923 () Bool)

(assert (=> b!1149625 (=> (not res!764899) (not e!653923))))

(assert (=> b!1149625 (= res!764899 (= (select (arr!35899 _keys!1208) i!673) k!934))))

(declare-fun b!1149626 () Bool)

(declare-fun lt!514219 () Bool)

(declare-fun e!653924 () Bool)

(assert (=> b!1149626 (= e!653924 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!514219) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149627 () Bool)

(declare-fun arrayContainsKey!0 (array!74504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149627 (= e!653924 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45098 () Bool)

(declare-fun mapRes!45098 () Bool)

(declare-fun tp!85669 () Bool)

(declare-fun e!653927 () Bool)

(assert (=> mapNonEmpty!45098 (= mapRes!45098 (and tp!85669 e!653927))))

(declare-fun mapValue!45098 () ValueCell!13715)

(declare-fun mapRest!45098 () (Array (_ BitVec 32) ValueCell!13715))

(declare-fun mapKey!45098 () (_ BitVec 32))

(assert (=> mapNonEmpty!45098 (= (arr!35898 _values!996) (store mapRest!45098 mapKey!45098 mapValue!45098))))

(declare-fun c!113681 () Bool)

(declare-fun c!113680 () Bool)

(declare-fun bm!53367 () Bool)

(assert (=> bm!53367 (= call!53372 (+!3570 (ite c!113681 lt!514217 lt!514223) (ite c!113681 (tuple2!18455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113680 (tuple2!18455 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1149628 () Bool)

(declare-fun res!764902 () Bool)

(assert (=> b!1149628 (=> (not res!764902) (not e!653923))))

(assert (=> b!1149628 (= res!764902 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36436 _keys!1208))))))

(declare-fun b!1149629 () Bool)

(declare-fun tp_is_empty!28849 () Bool)

(assert (=> b!1149629 (= e!653927 tp_is_empty!28849)))

(declare-fun bm!53368 () Bool)

(declare-fun call!53374 () Bool)

(assert (=> bm!53368 (= call!53374 call!53373)))

(declare-fun b!1149630 () Bool)

(declare-fun e!653936 () Bool)

(assert (=> b!1149630 (= e!653936 true)))

(declare-fun e!653930 () Bool)

(assert (=> b!1149630 e!653930))

(declare-fun res!764903 () Bool)

(assert (=> b!1149630 (=> (not res!764903) (not e!653930))))

(declare-fun lt!514212 () ListLongMap!16435)

(assert (=> b!1149630 (= res!764903 (= lt!514212 lt!514223))))

(declare-fun -!1320 (ListLongMap!16435 (_ BitVec 64)) ListLongMap!16435)

(assert (=> b!1149630 (= lt!514212 (-!1320 lt!514226 k!934))))

(declare-fun lt!514227 () V!43593)

(assert (=> b!1149630 (= (-!1320 (+!3570 lt!514223 (tuple2!18455 (select (arr!35899 _keys!1208) from!1455) lt!514227)) (select (arr!35899 _keys!1208) from!1455)) lt!514223)))

(declare-fun lt!514218 () Unit!37716)

(declare-fun addThenRemoveForNewKeyIsSame!169 (ListLongMap!16435 (_ BitVec 64) V!43593) Unit!37716)

(assert (=> b!1149630 (= lt!514218 (addThenRemoveForNewKeyIsSame!169 lt!514223 (select (arr!35899 _keys!1208) from!1455) lt!514227))))

(declare-fun get!18297 (ValueCell!13715 V!43593) V!43593)

(assert (=> b!1149630 (= lt!514227 (get!18297 (select (arr!35898 _values!996) from!1455) lt!514211))))

(declare-fun lt!514214 () Unit!37716)

(declare-fun e!653926 () Unit!37716)

(assert (=> b!1149630 (= lt!514214 e!653926)))

(declare-fun c!113677 () Bool)

(assert (=> b!1149630 (= c!113677 (contains!6728 lt!514223 k!934))))

(assert (=> b!1149630 (= lt!514223 (getCurrentListMapNoExtraKeys!4674 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!53371 () ListLongMap!16435)

(declare-fun bm!53369 () Bool)

(assert (=> bm!53369 (= call!53371 (getCurrentListMapNoExtraKeys!4674 lt!514206 lt!514213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149631 () Bool)

(declare-fun res!764900 () Bool)

(assert (=> b!1149631 (=> (not res!764900) (not e!653923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149631 (= res!764900 (validMask!0 mask!1564))))

(declare-fun bm!53370 () Bool)

(assert (=> bm!53370 (= call!53373 (contains!6728 (ite c!113681 lt!514217 call!53375) k!934))))

(declare-fun b!1149632 () Bool)

(assert (=> b!1149632 (= e!653930 (= lt!514212 (getCurrentListMapNoExtraKeys!4674 lt!514206 lt!514213 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149633 () Bool)

(declare-fun e!653934 () Bool)

(assert (=> b!1149633 (= e!653934 (not e!653922))))

(declare-fun res!764893 () Bool)

(assert (=> b!1149633 (=> res!764893 e!653922)))

(assert (=> b!1149633 (= res!764893 (bvsgt from!1455 i!673))))

(assert (=> b!1149633 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!514225 () Unit!37716)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74504 (_ BitVec 64) (_ BitVec 32)) Unit!37716)

(assert (=> b!1149633 (= lt!514225 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1149634 () Bool)

(declare-fun Unit!37718 () Unit!37716)

(assert (=> b!1149634 (= e!653926 Unit!37718)))

(declare-fun b!1149635 () Bool)

(declare-fun res!764901 () Bool)

(assert (=> b!1149635 (=> (not res!764901) (not e!653923))))

(declare-datatypes ((List!25248 0))(
  ( (Nil!25245) (Cons!25244 (h!26453 (_ BitVec 64)) (t!36566 List!25248)) )
))
(declare-fun arrayNoDuplicates!0 (array!74504 (_ BitVec 32) List!25248) Bool)

(assert (=> b!1149635 (= res!764901 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25245))))

(declare-fun b!1149636 () Bool)

(assert (=> b!1149636 (= e!653923 e!653934)))

(declare-fun res!764891 () Bool)

(assert (=> b!1149636 (=> (not res!764891) (not e!653934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74504 (_ BitVec 32)) Bool)

(assert (=> b!1149636 (= res!764891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514206 mask!1564))))

(assert (=> b!1149636 (= lt!514206 (array!74505 (store (arr!35899 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36436 _keys!1208)))))

(declare-fun b!1149637 () Bool)

(declare-fun e!653935 () Unit!37716)

(declare-fun lt!514216 () Unit!37716)

(assert (=> b!1149637 (= e!653935 lt!514216)))

(declare-fun call!53376 () Unit!37716)

(assert (=> b!1149637 (= lt!514216 call!53376)))

(assert (=> b!1149637 call!53374))

(declare-fun b!1149638 () Bool)

(declare-fun e!653931 () Unit!37716)

(declare-fun Unit!37719 () Unit!37716)

(assert (=> b!1149638 (= e!653931 Unit!37719)))

(declare-fun b!1149639 () Bool)

(declare-fun res!764897 () Bool)

(assert (=> b!1149639 (=> (not res!764897) (not e!653923))))

(assert (=> b!1149639 (= res!764897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1149640 () Bool)

(declare-fun e!653921 () Bool)

(declare-fun e!653933 () Bool)

(assert (=> b!1149640 (= e!653921 (and e!653933 mapRes!45098))))

(declare-fun condMapEmpty!45098 () Bool)

(declare-fun mapDefault!45098 () ValueCell!13715)

