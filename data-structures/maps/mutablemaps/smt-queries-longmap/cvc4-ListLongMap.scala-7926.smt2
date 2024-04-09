; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98436 () Bool)

(assert start!98436)

(declare-fun b_free!24005 () Bool)

(declare-fun b_next!24005 () Bool)

(assert (=> start!98436 (= b_free!24005 (not b_next!24005))))

(declare-fun tp!84727 () Bool)

(declare-fun b_and!38873 () Bool)

(assert (=> start!98436 (= tp!84727 b_and!38873)))

(declare-fun b!1135393 () Bool)

(declare-fun res!757965 () Bool)

(declare-fun e!646168 () Bool)

(assert (=> b!1135393 (=> res!757965 e!646168)))

(declare-datatypes ((List!24981 0))(
  ( (Nil!24978) (Cons!24977 (h!26186 (_ BitVec 64)) (t!35985 List!24981)) )
))
(declare-fun noDuplicate!1615 (List!24981) Bool)

(assert (=> b!1135393 (= res!757965 (not (noDuplicate!1615 Nil!24978)))))

(declare-fun b!1135394 () Bool)

(declare-datatypes ((Unit!37136 0))(
  ( (Unit!37137) )
))
(declare-fun e!646181 () Unit!37136)

(declare-fun Unit!37138 () Unit!37136)

(assert (=> b!1135394 (= e!646181 Unit!37138)))

(declare-fun b!1135395 () Bool)

(declare-fun e!646174 () Unit!37136)

(declare-fun lt!504712 () Unit!37136)

(assert (=> b!1135395 (= e!646174 lt!504712)))

(declare-datatypes ((V!43173 0))(
  ( (V!43174 (val!14324 Int)) )
))
(declare-fun zeroValue!944 () V!43173)

(declare-datatypes ((tuple2!18170 0))(
  ( (tuple2!18171 (_1!9095 (_ BitVec 64)) (_2!9095 V!43173)) )
))
(declare-datatypes ((List!24982 0))(
  ( (Nil!24979) (Cons!24978 (h!26187 tuple2!18170) (t!35986 List!24982)) )
))
(declare-datatypes ((ListLongMap!16151 0))(
  ( (ListLongMap!16152 (toList!8091 List!24982)) )
))
(declare-fun lt!504710 () ListLongMap!16151)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!504713 () Unit!37136)

(declare-fun addStillContains!746 (ListLongMap!16151 (_ BitVec 64) V!43173 (_ BitVec 64)) Unit!37136)

(assert (=> b!1135395 (= lt!504713 (addStillContains!746 lt!504710 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!504709 () ListLongMap!16151)

(declare-fun call!49605 () ListLongMap!16151)

(assert (=> b!1135395 (= lt!504709 call!49605)))

(declare-fun call!49603 () Bool)

(assert (=> b!1135395 call!49603))

(declare-fun call!49607 () Unit!37136)

(assert (=> b!1135395 (= lt!504712 call!49607)))

(declare-fun minValue!944 () V!43173)

(declare-fun contains!6592 (ListLongMap!16151 (_ BitVec 64)) Bool)

(declare-fun +!3447 (ListLongMap!16151 tuple2!18170) ListLongMap!16151)

(assert (=> b!1135395 (contains!6592 (+!3447 lt!504709 (tuple2!18171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1135396 () Bool)

(declare-fun e!646179 () Bool)

(declare-fun e!646166 () Bool)

(assert (=> b!1135396 (= e!646179 (not e!646166))))

(declare-fun res!757972 () Bool)

(assert (=> b!1135396 (=> res!757972 e!646166)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135396 (= res!757972 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73892 0))(
  ( (array!73893 (arr!35593 (Array (_ BitVec 32) (_ BitVec 64))) (size!36130 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73892)

(declare-fun arrayContainsKey!0 (array!73892 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1135396 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504706 () Unit!37136)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73892 (_ BitVec 64) (_ BitVec 32)) Unit!37136)

(assert (=> b!1135396 (= lt!504706 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1135397 () Bool)

(declare-fun res!757979 () Bool)

(assert (=> b!1135397 (=> res!757979 e!646168)))

(declare-fun contains!6593 (List!24981 (_ BitVec 64)) Bool)

(assert (=> b!1135397 (= res!757979 (contains!6593 Nil!24978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1135398 () Bool)

(declare-fun e!646172 () Bool)

(assert (=> b!1135398 (= e!646172 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49598 () Bool)

(declare-fun call!49602 () Unit!37136)

(assert (=> bm!49598 (= call!49602 call!49607)))

(declare-fun b!1135399 () Bool)

(declare-fun e!646171 () Bool)

(assert (=> b!1135399 (= e!646171 e!646179)))

(declare-fun res!757981 () Bool)

(assert (=> b!1135399 (=> (not res!757981) (not e!646179))))

(declare-fun lt!504707 () array!73892)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73892 (_ BitVec 32)) Bool)

(assert (=> b!1135399 (= res!757981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504707 mask!1564))))

(assert (=> b!1135399 (= lt!504707 (array!73893 (store (arr!35593 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36130 _keys!1208)))))

(declare-fun e!646170 () Bool)

(declare-fun b!1135400 () Bool)

(declare-fun call!49606 () ListLongMap!16151)

(declare-fun call!49601 () ListLongMap!16151)

(declare-fun -!1204 (ListLongMap!16151 (_ BitVec 64)) ListLongMap!16151)

(assert (=> b!1135400 (= e!646170 (= call!49606 (-!1204 call!49601 k!934)))))

(declare-fun mapNonEmpty!44627 () Bool)

(declare-fun mapRes!44627 () Bool)

(declare-fun tp!84726 () Bool)

(declare-fun e!646180 () Bool)

(assert (=> mapNonEmpty!44627 (= mapRes!44627 (and tp!84726 e!646180))))

(declare-datatypes ((ValueCell!13558 0))(
  ( (ValueCellFull!13558 (v!16962 V!43173)) (EmptyCell!13558) )
))
(declare-fun mapValue!44627 () ValueCell!13558)

(declare-fun mapRest!44627 () (Array (_ BitVec 32) ValueCell!13558))

(declare-fun mapKey!44627 () (_ BitVec 32))

(declare-datatypes ((array!73894 0))(
  ( (array!73895 (arr!35594 (Array (_ BitVec 32) ValueCell!13558)) (size!36131 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73894)

(assert (=> mapNonEmpty!44627 (= (arr!35594 _values!996) (store mapRest!44627 mapKey!44627 mapValue!44627))))

(declare-fun b!1135401 () Bool)

(declare-fun e!646169 () Bool)

(declare-fun e!646175 () Bool)

(assert (=> b!1135401 (= e!646169 e!646175)))

(declare-fun res!757969 () Bool)

(assert (=> b!1135401 (=> res!757969 e!646175)))

(assert (=> b!1135401 (= res!757969 (not (contains!6592 lt!504710 k!934)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4539 (array!73892 array!73894 (_ BitVec 32) (_ BitVec 32) V!43173 V!43173 (_ BitVec 32) Int) ListLongMap!16151)

(assert (=> b!1135401 (= lt!504710 (getCurrentListMapNoExtraKeys!4539 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135402 () Bool)

(declare-fun lt!504704 () Bool)

(assert (=> b!1135402 (= e!646172 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504704) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!49599 () Bool)

(declare-fun c!110892 () Bool)

(declare-fun c!110890 () Bool)

(assert (=> bm!49599 (= call!49605 (+!3447 lt!504710 (ite (or c!110890 c!110892) (tuple2!18171 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!49600 () Bool)

(assert (=> bm!49600 (= call!49601 (getCurrentListMapNoExtraKeys!4539 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44627 () Bool)

(assert (=> mapIsEmpty!44627 mapRes!44627))

(declare-fun b!1135403 () Bool)

(declare-fun res!757978 () Bool)

(assert (=> b!1135403 (=> (not res!757978) (not e!646171))))

(assert (=> b!1135403 (= res!757978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1135404 () Bool)

(assert (=> b!1135404 (= e!646170 (= call!49606 call!49601))))

(declare-fun b!1135405 () Bool)

(declare-fun tp_is_empty!28535 () Bool)

(assert (=> b!1135405 (= e!646180 tp_is_empty!28535)))

(declare-fun b!1135406 () Bool)

(declare-fun res!757980 () Bool)

(assert (=> b!1135406 (=> (not res!757980) (not e!646171))))

(declare-fun arrayNoDuplicates!0 (array!73892 (_ BitVec 32) List!24981) Bool)

(assert (=> b!1135406 (= res!757980 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24978))))

(declare-fun b!1135407 () Bool)

(declare-fun res!757976 () Bool)

(assert (=> b!1135407 (=> (not res!757976) (not e!646171))))

(assert (=> b!1135407 (= res!757976 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36130 _keys!1208))))))

(declare-fun b!1135408 () Bool)

(declare-fun e!646177 () Bool)

(assert (=> b!1135408 (= e!646177 tp_is_empty!28535)))

(declare-fun call!49604 () ListLongMap!16151)

(declare-fun bm!49601 () Bool)

(assert (=> bm!49601 (= call!49603 (contains!6592 (ite c!110890 lt!504709 call!49604) k!934))))

(declare-fun b!1135409 () Bool)

(declare-fun res!757982 () Bool)

(assert (=> b!1135409 (=> (not res!757982) (not e!646171))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1135409 (= res!757982 (validKeyInArray!0 k!934))))

(declare-fun b!1135410 () Bool)

(declare-fun e!646167 () Bool)

(assert (=> b!1135410 (= e!646167 e!646169)))

(declare-fun res!757970 () Bool)

(assert (=> b!1135410 (=> res!757970 e!646169)))

(assert (=> b!1135410 (= res!757970 (not (= (select (arr!35593 _keys!1208) from!1455) k!934)))))

(assert (=> b!1135410 e!646170))

(declare-fun c!110888 () Bool)

(assert (=> b!1135410 (= c!110888 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504714 () Unit!37136)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!460 (array!73892 array!73894 (_ BitVec 32) (_ BitVec 32) V!43173 V!43173 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37136)

(assert (=> b!1135410 (= lt!504714 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!460 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1135411 () Bool)

(declare-fun lt!504705 () Unit!37136)

(assert (=> b!1135411 (= e!646181 lt!504705)))

(assert (=> b!1135411 (= lt!504705 call!49602)))

(declare-fun call!49608 () Bool)

(assert (=> b!1135411 call!49608))

(declare-fun b!1135412 () Bool)

(declare-fun res!757968 () Bool)

(assert (=> b!1135412 (=> (not res!757968) (not e!646171))))

(assert (=> b!1135412 (= res!757968 (and (= (size!36131 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36130 _keys!1208) (size!36131 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1135413 () Bool)

(declare-fun e!646176 () Bool)

(assert (=> b!1135413 (= e!646176 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1135414 () Bool)

(declare-fun res!757971 () Bool)

(assert (=> b!1135414 (=> (not res!757971) (not e!646171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1135414 (= res!757971 (validMask!0 mask!1564))))

(declare-fun b!1135415 () Bool)

(assert (=> b!1135415 call!49608))

(declare-fun lt!504718 () Unit!37136)

(assert (=> b!1135415 (= lt!504718 call!49602)))

(declare-fun e!646182 () Unit!37136)

(assert (=> b!1135415 (= e!646182 lt!504718)))

(declare-fun b!1135416 () Bool)

(declare-fun res!757975 () Bool)

(assert (=> b!1135416 (=> (not res!757975) (not e!646179))))

(assert (=> b!1135416 (= res!757975 (arrayNoDuplicates!0 lt!504707 #b00000000000000000000000000000000 Nil!24978))))

(declare-fun bm!49602 () Bool)

(assert (=> bm!49602 (= call!49608 call!49603)))

(declare-fun b!1135417 () Bool)

(declare-fun e!646178 () Bool)

(assert (=> b!1135417 (= e!646178 (and e!646177 mapRes!44627))))

(declare-fun condMapEmpty!44627 () Bool)

(declare-fun mapDefault!44627 () ValueCell!13558)

