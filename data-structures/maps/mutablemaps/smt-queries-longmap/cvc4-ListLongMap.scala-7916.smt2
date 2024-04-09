; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98346 () Bool)

(assert start!98346)

(declare-fun b_free!23945 () Bool)

(declare-fun b_next!23945 () Bool)

(assert (=> start!98346 (= b_free!23945 (not b_next!23945))))

(declare-fun tp!84543 () Bool)

(declare-fun b_and!38735 () Bool)

(assert (=> start!98346 (= tp!84543 b_and!38735)))

(declare-fun b!1132519 () Bool)

(declare-fun e!644585 () Bool)

(declare-fun e!644580 () Bool)

(assert (=> b!1132519 (= e!644585 (not e!644580))))

(declare-fun res!756420 () Bool)

(assert (=> b!1132519 (=> res!756420 e!644580)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132519 (= res!756420 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73770 0))(
  ( (array!73771 (arr!35533 (Array (_ BitVec 32) (_ BitVec 64))) (size!36070 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73770)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132519 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37055 0))(
  ( (Unit!37056) )
))
(declare-fun lt!503172 () Unit!37055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73770 (_ BitVec 64) (_ BitVec 32)) Unit!37055)

(assert (=> b!1132519 (= lt!503172 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!44534 () Bool)

(declare-fun mapRes!44534 () Bool)

(assert (=> mapIsEmpty!44534 mapRes!44534))

(declare-fun b!1132520 () Bool)

(declare-fun e!644577 () Bool)

(declare-fun e!644589 () Bool)

(assert (=> b!1132520 (= e!644577 e!644589)))

(declare-fun res!756427 () Bool)

(assert (=> b!1132520 (=> res!756427 e!644589)))

(declare-datatypes ((V!43093 0))(
  ( (V!43094 (val!14294 Int)) )
))
(declare-datatypes ((tuple2!18110 0))(
  ( (tuple2!18111 (_1!9065 (_ BitVec 64)) (_2!9065 V!43093)) )
))
(declare-datatypes ((List!24923 0))(
  ( (Nil!24920) (Cons!24919 (h!26128 tuple2!18110) (t!35867 List!24923)) )
))
(declare-datatypes ((ListLongMap!16091 0))(
  ( (ListLongMap!16092 (toList!8061 List!24923)) )
))
(declare-fun lt!503164 () ListLongMap!16091)

(declare-fun contains!6552 (ListLongMap!16091 (_ BitVec 64)) Bool)

(assert (=> b!1132520 (= res!756427 (not (contains!6552 lt!503164 k!934)))))

(declare-fun zeroValue!944 () V!43093)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13528 0))(
  ( (ValueCellFull!13528 (v!16931 V!43093)) (EmptyCell!13528) )
))
(declare-datatypes ((array!73772 0))(
  ( (array!73773 (arr!35534 (Array (_ BitVec 32) ValueCell!13528)) (size!36071 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73772)

(declare-fun minValue!944 () V!43093)

(declare-fun getCurrentListMapNoExtraKeys!4512 (array!73770 array!73772 (_ BitVec 32) (_ BitVec 32) V!43093 V!43093 (_ BitVec 32) Int) ListLongMap!16091)

(assert (=> b!1132520 (= lt!503164 (getCurrentListMapNoExtraKeys!4512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132521 () Bool)

(declare-fun e!644582 () Bool)

(declare-fun tp_is_empty!28475 () Bool)

(assert (=> b!1132521 (= e!644582 tp_is_empty!28475)))

(declare-fun call!48865 () ListLongMap!16091)

(declare-fun c!110399 () Bool)

(declare-fun call!48864 () Bool)

(declare-fun lt!503174 () ListLongMap!16091)

(declare-fun bm!48858 () Bool)

(assert (=> bm!48858 (= call!48864 (contains!6552 (ite c!110399 lt!503174 call!48865) k!934))))

(declare-fun b!1132522 () Bool)

(declare-fun e!644584 () Bool)

(assert (=> b!1132522 (= e!644580 e!644584)))

(declare-fun res!756428 () Bool)

(assert (=> b!1132522 (=> res!756428 e!644584)))

(assert (=> b!1132522 (= res!756428 (not (= from!1455 i!673)))))

(declare-fun lt!503168 () array!73772)

(declare-fun lt!503166 () ListLongMap!16091)

(declare-fun lt!503171 () array!73770)

(assert (=> b!1132522 (= lt!503166 (getCurrentListMapNoExtraKeys!4512 lt!503171 lt!503168 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2583 (Int (_ BitVec 64)) V!43093)

(assert (=> b!1132522 (= lt!503168 (array!73773 (store (arr!35534 _values!996) i!673 (ValueCellFull!13528 (dynLambda!2583 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36071 _values!996)))))

(declare-fun lt!503162 () ListLongMap!16091)

(assert (=> b!1132522 (= lt!503162 (getCurrentListMapNoExtraKeys!4512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!644588 () Bool)

(declare-fun b!1132523 () Bool)

(assert (=> b!1132523 (= e!644588 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132524 () Bool)

(declare-fun e!644590 () Bool)

(assert (=> b!1132524 (= e!644590 e!644585)))

(declare-fun res!756423 () Bool)

(assert (=> b!1132524 (=> (not res!756423) (not e!644585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73770 (_ BitVec 32)) Bool)

(assert (=> b!1132524 (= res!756423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503171 mask!1564))))

(assert (=> b!1132524 (= lt!503171 (array!73771 (store (arr!35533 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36070 _keys!1208)))))

(declare-fun b!1132525 () Bool)

(declare-fun res!756429 () Bool)

(assert (=> b!1132525 (=> (not res!756429) (not e!644590))))

(assert (=> b!1132525 (= res!756429 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36070 _keys!1208))))))

(declare-fun b!1132526 () Bool)

(declare-fun call!48868 () ListLongMap!16091)

(declare-fun e!644579 () Bool)

(declare-fun call!48867 () ListLongMap!16091)

(declare-fun -!1182 (ListLongMap!16091 (_ BitVec 64)) ListLongMap!16091)

(assert (=> b!1132526 (= e!644579 (= call!48868 (-!1182 call!48867 k!934)))))

(declare-fun b!1132527 () Bool)

(declare-fun res!756419 () Bool)

(assert (=> b!1132527 (=> (not res!756419) (not e!644590))))

(assert (=> b!1132527 (= res!756419 (= (select (arr!35533 _keys!1208) i!673) k!934))))

(declare-fun b!1132528 () Bool)

(declare-fun res!756417 () Bool)

(assert (=> b!1132528 (=> (not res!756417) (not e!644590))))

(assert (=> b!1132528 (= res!756417 (and (= (size!36071 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36070 _keys!1208) (size!36071 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48859 () Bool)

(assert (=> bm!48859 (= call!48867 (getCurrentListMapNoExtraKeys!4512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132529 () Bool)

(declare-fun res!756425 () Bool)

(assert (=> b!1132529 (=> (not res!756425) (not e!644585))))

(declare-datatypes ((List!24924 0))(
  ( (Nil!24921) (Cons!24920 (h!26129 (_ BitVec 64)) (t!35868 List!24924)) )
))
(declare-fun arrayNoDuplicates!0 (array!73770 (_ BitVec 32) List!24924) Bool)

(assert (=> b!1132529 (= res!756425 (arrayNoDuplicates!0 lt!503171 #b00000000000000000000000000000000 Nil!24921))))

(declare-fun b!1132530 () Bool)

(declare-fun lt!503163 () Bool)

(assert (=> b!1132530 (= e!644588 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503163) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1132531 () Bool)

(declare-fun e!644578 () Bool)

(assert (=> b!1132531 (= e!644578 tp_is_empty!28475)))

(declare-fun mapNonEmpty!44534 () Bool)

(declare-fun tp!84544 () Bool)

(assert (=> mapNonEmpty!44534 (= mapRes!44534 (and tp!84544 e!644578))))

(declare-fun mapKey!44534 () (_ BitVec 32))

(declare-fun mapValue!44534 () ValueCell!13528)

(declare-fun mapRest!44534 () (Array (_ BitVec 32) ValueCell!13528))

(assert (=> mapNonEmpty!44534 (= (arr!35534 _values!996) (store mapRest!44534 mapKey!44534 mapValue!44534))))

(declare-fun b!1132532 () Bool)

(declare-fun e!644586 () Unit!37055)

(declare-fun lt!503160 () Unit!37055)

(assert (=> b!1132532 (= e!644586 lt!503160)))

(declare-fun call!48863 () Unit!37055)

(assert (=> b!1132532 (= lt!503160 call!48863)))

(declare-fun call!48862 () Bool)

(assert (=> b!1132532 call!48862))

(declare-fun bm!48860 () Bool)

(declare-fun call!48861 () ListLongMap!16091)

(declare-fun c!110396 () Bool)

(declare-fun +!3423 (ListLongMap!16091 tuple2!18110) ListLongMap!16091)

(assert (=> bm!48860 (= call!48861 (+!3423 (ite c!110399 lt!503174 lt!503164) (ite c!110399 (tuple2!18111 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110396 (tuple2!18111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18111 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1132533 () Bool)

(assert (=> b!1132533 (= e!644584 e!644577)))

(declare-fun res!756422 () Bool)

(assert (=> b!1132533 (=> res!756422 e!644577)))

(assert (=> b!1132533 (= res!756422 (not (= (select (arr!35533 _keys!1208) from!1455) k!934)))))

(assert (=> b!1132533 e!644579))

(declare-fun c!110398 () Bool)

(assert (=> b!1132533 (= c!110398 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503165 () Unit!37055)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!438 (array!73770 array!73772 (_ BitVec 32) (_ BitVec 32) V!43093 V!43093 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37055)

(assert (=> b!1132533 (= lt!503165 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!438 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132534 () Bool)

(declare-fun res!756421 () Bool)

(assert (=> b!1132534 (=> (not res!756421) (not e!644590))))

(assert (=> b!1132534 (= res!756421 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24921))))

(declare-fun b!1132535 () Bool)

(assert (=> b!1132535 call!48862))

(declare-fun lt!503167 () Unit!37055)

(assert (=> b!1132535 (= lt!503167 call!48863)))

(declare-fun e!644576 () Unit!37055)

(assert (=> b!1132535 (= e!644576 lt!503167)))

(declare-fun b!1132536 () Bool)

(assert (=> b!1132536 (= e!644579 (= call!48868 call!48867))))

(declare-fun b!1132537 () Bool)

(declare-fun Unit!37057 () Unit!37055)

(assert (=> b!1132537 (= e!644586 Unit!37057)))

(declare-fun b!1132538 () Bool)

(declare-fun e!644581 () Bool)

(assert (=> b!1132538 (= e!644581 (and e!644582 mapRes!44534))))

(declare-fun condMapEmpty!44534 () Bool)

(declare-fun mapDefault!44534 () ValueCell!13528)

