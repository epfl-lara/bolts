; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98988 () Bool)

(assert start!98988)

(declare-fun b_free!24557 () Bool)

(declare-fun b_next!24557 () Bool)

(assert (=> start!98988 (= b_free!24557 (not b_next!24557))))

(declare-fun tp!86383 () Bool)

(declare-fun b_and!39977 () Bool)

(assert (=> start!98988 (= tp!86383 b_and!39977)))

(declare-fun b!1160570 () Bool)

(declare-datatypes ((Unit!38164 0))(
  ( (Unit!38165) )
))
(declare-fun e!660003 () Unit!38164)

(declare-fun e!659994 () Unit!38164)

(assert (=> b!1160570 (= e!660003 e!659994)))

(declare-fun c!115822 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!522060 () Bool)

(assert (=> b!1160570 (= c!115822 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522060))))

(declare-fun b!1160571 () Bool)

(declare-fun res!770249 () Bool)

(declare-fun e!659996 () Bool)

(assert (=> b!1160571 (=> (not res!770249) (not e!659996))))

(declare-datatypes ((array!74964 0))(
  ( (array!74965 (arr!36129 (Array (_ BitVec 32) (_ BitVec 64))) (size!36666 (_ BitVec 32))) )
))
(declare-fun lt!522061 () array!74964)

(declare-datatypes ((List!25448 0))(
  ( (Nil!25445) (Cons!25444 (h!26653 (_ BitVec 64)) (t!37004 List!25448)) )
))
(declare-fun arrayNoDuplicates!0 (array!74964 (_ BitVec 32) List!25448) Bool)

(assert (=> b!1160571 (= res!770249 (arrayNoDuplicates!0 lt!522061 #b00000000000000000000000000000000 Nil!25445))))

(declare-fun b!1160572 () Bool)

(declare-fun c!115820 () Bool)

(assert (=> b!1160572 (= c!115820 (and (not lt!522060) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!659993 () Unit!38164)

(assert (=> b!1160572 (= e!659993 e!660003)))

(declare-fun b!1160573 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!659998 () Bool)

(assert (=> b!1160573 (= e!659998 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522060) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1160574 () Bool)

(declare-fun e!659990 () Bool)

(declare-fun e!659997 () Bool)

(assert (=> b!1160574 (= e!659990 e!659997)))

(declare-fun res!770245 () Bool)

(assert (=> b!1160574 (=> res!770245 e!659997)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160574 (= res!770245 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43909 0))(
  ( (V!43910 (val!14600 Int)) )
))
(declare-fun zeroValue!944 () V!43909)

(declare-datatypes ((ValueCell!13834 0))(
  ( (ValueCellFull!13834 (v!17238 V!43909)) (EmptyCell!13834) )
))
(declare-datatypes ((array!74966 0))(
  ( (array!74967 (arr!36130 (Array (_ BitVec 32) ValueCell!13834)) (size!36667 (_ BitVec 32))) )
))
(declare-fun lt!522065 () array!74966)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43909)

(declare-datatypes ((tuple2!18670 0))(
  ( (tuple2!18671 (_1!9345 (_ BitVec 64)) (_2!9345 V!43909)) )
))
(declare-datatypes ((List!25449 0))(
  ( (Nil!25446) (Cons!25445 (h!26654 tuple2!18670) (t!37005 List!25449)) )
))
(declare-datatypes ((ListLongMap!16651 0))(
  ( (ListLongMap!16652 (toList!8341 List!25449)) )
))
(declare-fun lt!522078 () ListLongMap!16651)

(declare-fun getCurrentListMapNoExtraKeys!4777 (array!74964 array!74966 (_ BitVec 32) (_ BitVec 32) V!43909 V!43909 (_ BitVec 32) Int) ListLongMap!16651)

(assert (=> b!1160574 (= lt!522078 (getCurrentListMapNoExtraKeys!4777 lt!522061 lt!522065 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74966)

(declare-fun lt!522073 () V!43909)

(assert (=> b!1160574 (= lt!522065 (array!74967 (store (arr!36130 _values!996) i!673 (ValueCellFull!13834 lt!522073)) (size!36667 _values!996)))))

(declare-fun dynLambda!2779 (Int (_ BitVec 64)) V!43909)

(assert (=> b!1160574 (= lt!522073 (dynLambda!2779 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!74964)

(declare-fun lt!522070 () ListLongMap!16651)

(assert (=> b!1160574 (= lt!522070 (getCurrentListMapNoExtraKeys!4777 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1160575 () Bool)

(declare-fun res!770247 () Bool)

(declare-fun e!660000 () Bool)

(assert (=> b!1160575 (=> (not res!770247) (not e!660000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160575 (= res!770247 (validMask!0 mask!1564))))

(declare-fun b!1160576 () Bool)

(declare-fun e!659999 () Bool)

(assert (=> b!1160576 (= e!659997 e!659999)))

(declare-fun res!770255 () Bool)

(assert (=> b!1160576 (=> res!770255 e!659999)))

(assert (=> b!1160576 (= res!770255 (not (= (select (arr!36129 _keys!1208) from!1455) k!934)))))

(declare-fun e!659992 () Bool)

(assert (=> b!1160576 e!659992))

(declare-fun c!115819 () Bool)

(assert (=> b!1160576 (= c!115819 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522063 () Unit!38164)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!636 (array!74964 array!74966 (_ BitVec 32) (_ BitVec 32) V!43909 V!43909 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38164)

(assert (=> b!1160576 (= lt!522063 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!636 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56222 () Bool)

(declare-fun call!56228 () Bool)

(declare-fun call!56225 () Bool)

(assert (=> bm!56222 (= call!56228 call!56225)))

(declare-fun bm!56223 () Bool)

(declare-fun call!56229 () ListLongMap!16651)

(assert (=> bm!56223 (= call!56229 (getCurrentListMapNoExtraKeys!4777 lt!522061 lt!522065 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160577 () Bool)

(declare-fun call!56230 () ListLongMap!16651)

(declare-fun contains!6822 (ListLongMap!16651 (_ BitVec 64)) Bool)

(assert (=> b!1160577 (contains!6822 call!56230 k!934)))

(declare-fun lt!522074 () Unit!38164)

(declare-fun call!56226 () Unit!38164)

(assert (=> b!1160577 (= lt!522074 call!56226)))

(assert (=> b!1160577 call!56225))

(declare-fun lt!522076 () ListLongMap!16651)

(declare-fun lt!522081 () ListLongMap!16651)

(declare-fun +!3666 (ListLongMap!16651 tuple2!18670) ListLongMap!16651)

(assert (=> b!1160577 (= lt!522076 (+!3666 lt!522081 (tuple2!18671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522062 () Unit!38164)

(declare-fun addStillContains!963 (ListLongMap!16651 (_ BitVec 64) V!43909 (_ BitVec 64)) Unit!38164)

(assert (=> b!1160577 (= lt!522062 (addStillContains!963 lt!522081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1160577 (= e!659993 lt!522074)))

(declare-fun mapIsEmpty!45455 () Bool)

(declare-fun mapRes!45455 () Bool)

(assert (=> mapIsEmpty!45455 mapRes!45455))

(declare-fun b!1160578 () Bool)

(declare-fun e!660002 () Unit!38164)

(declare-fun Unit!38166 () Unit!38164)

(assert (=> b!1160578 (= e!660002 Unit!38166)))

(declare-fun b!1160579 () Bool)

(declare-fun lt!522069 () Unit!38164)

(assert (=> b!1160579 (= e!660003 lt!522069)))

(declare-fun call!56231 () Unit!38164)

(assert (=> b!1160579 (= lt!522069 call!56231)))

(assert (=> b!1160579 call!56228))

(declare-fun b!1160580 () Bool)

(assert (=> b!1160580 call!56228))

(declare-fun lt!522075 () Unit!38164)

(assert (=> b!1160580 (= lt!522075 call!56231)))

(assert (=> b!1160580 (= e!659994 lt!522075)))

(declare-fun b!1160581 () Bool)

(declare-fun res!770246 () Bool)

(assert (=> b!1160581 (=> (not res!770246) (not e!660000))))

(assert (=> b!1160581 (= res!770246 (= (select (arr!36129 _keys!1208) i!673) k!934))))

(declare-fun b!1160582 () Bool)

(declare-fun call!56227 () ListLongMap!16651)

(assert (=> b!1160582 (= e!659992 (= call!56229 call!56227))))

(declare-fun b!1160583 () Bool)

(declare-fun res!770252 () Bool)

(assert (=> b!1160583 (=> (not res!770252) (not e!660000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160583 (= res!770252 (validKeyInArray!0 k!934))))

(declare-fun b!1160584 () Bool)

(declare-fun Unit!38167 () Unit!38164)

(assert (=> b!1160584 (= e!660002 Unit!38167)))

(assert (=> b!1160584 (= lt!522060 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115824 () Bool)

(assert (=> b!1160584 (= c!115824 (and (not lt!522060) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522067 () Unit!38164)

(assert (=> b!1160584 (= lt!522067 e!659993)))

(declare-fun lt!522077 () Unit!38164)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!537 (array!74964 array!74966 (_ BitVec 32) (_ BitVec 32) V!43909 V!43909 (_ BitVec 64) (_ BitVec 32) Int) Unit!38164)

(assert (=> b!1160584 (= lt!522077 (lemmaListMapContainsThenArrayContainsFrom!537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115821 () Bool)

(assert (=> b!1160584 (= c!115821 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770251 () Bool)

(assert (=> b!1160584 (= res!770251 e!659998)))

(declare-fun e!660005 () Bool)

(assert (=> b!1160584 (=> (not res!770251) (not e!660005))))

(assert (=> b!1160584 e!660005))

(declare-fun lt!522066 () Unit!38164)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74964 (_ BitVec 32) (_ BitVec 32)) Unit!38164)

(assert (=> b!1160584 (= lt!522066 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1160584 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25445)))

(declare-fun lt!522080 () Unit!38164)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74964 (_ BitVec 64) (_ BitVec 32) List!25448) Unit!38164)

(assert (=> b!1160584 (= lt!522080 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25445))))

(assert (=> b!1160584 false))

(declare-fun b!1160585 () Bool)

(declare-fun res!770253 () Bool)

(assert (=> b!1160585 (=> (not res!770253) (not e!660000))))

(assert (=> b!1160585 (= res!770253 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36666 _keys!1208))))))

(declare-fun call!56232 () ListLongMap!16651)

(declare-fun bm!56224 () Bool)

(assert (=> bm!56224 (= call!56225 (contains!6822 (ite c!115824 lt!522076 call!56232) k!934))))

(declare-fun b!1160586 () Bool)

(assert (=> b!1160586 (= e!660000 e!659996)))

(declare-fun res!770254 () Bool)

(assert (=> b!1160586 (=> (not res!770254) (not e!659996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74964 (_ BitVec 32)) Bool)

(assert (=> b!1160586 (= res!770254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522061 mask!1564))))

(assert (=> b!1160586 (= lt!522061 (array!74965 (store (arr!36129 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36666 _keys!1208)))))

(declare-fun res!770257 () Bool)

(assert (=> start!98988 (=> (not res!770257) (not e!660000))))

(assert (=> start!98988 (= res!770257 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36666 _keys!1208))))))

(assert (=> start!98988 e!660000))

(declare-fun tp_is_empty!29087 () Bool)

(assert (=> start!98988 tp_is_empty!29087))

(declare-fun array_inv!27516 (array!74964) Bool)

(assert (=> start!98988 (array_inv!27516 _keys!1208)))

(assert (=> start!98988 true))

(assert (=> start!98988 tp!86383))

(declare-fun e!660001 () Bool)

(declare-fun array_inv!27517 (array!74966) Bool)

(assert (=> start!98988 (and (array_inv!27517 _values!996) e!660001)))

(declare-fun b!1160587 () Bool)

(assert (=> b!1160587 (= e!659999 true)))

(declare-fun e!659991 () Bool)

(assert (=> b!1160587 e!659991))

(declare-fun res!770256 () Bool)

(assert (=> b!1160587 (=> (not res!770256) (not e!659991))))

(declare-fun lt!522072 () ListLongMap!16651)

(assert (=> b!1160587 (= res!770256 (= lt!522072 lt!522081))))

(declare-fun -!1413 (ListLongMap!16651 (_ BitVec 64)) ListLongMap!16651)

(assert (=> b!1160587 (= lt!522072 (-!1413 lt!522070 k!934))))

(declare-fun lt!522079 () V!43909)

(assert (=> b!1160587 (= (-!1413 (+!3666 lt!522081 (tuple2!18671 (select (arr!36129 _keys!1208) from!1455) lt!522079)) (select (arr!36129 _keys!1208) from!1455)) lt!522081)))

(declare-fun lt!522064 () Unit!38164)

(declare-fun addThenRemoveForNewKeyIsSame!250 (ListLongMap!16651 (_ BitVec 64) V!43909) Unit!38164)

(assert (=> b!1160587 (= lt!522064 (addThenRemoveForNewKeyIsSame!250 lt!522081 (select (arr!36129 _keys!1208) from!1455) lt!522079))))

(declare-fun get!18456 (ValueCell!13834 V!43909) V!43909)

(assert (=> b!1160587 (= lt!522079 (get!18456 (select (arr!36130 _values!996) from!1455) lt!522073))))

(declare-fun lt!522071 () Unit!38164)

(assert (=> b!1160587 (= lt!522071 e!660002)))

(declare-fun c!115823 () Bool)

(assert (=> b!1160587 (= c!115823 (contains!6822 lt!522081 k!934))))

(assert (=> b!1160587 (= lt!522081 (getCurrentListMapNoExtraKeys!4777 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160588 () Bool)

(declare-fun res!770250 () Bool)

(assert (=> b!1160588 (=> (not res!770250) (not e!660000))))

(assert (=> b!1160588 (= res!770250 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25445))))

(declare-fun b!1160589 () Bool)

(declare-fun e!660004 () Bool)

(assert (=> b!1160589 (= e!660004 tp_is_empty!29087)))

(declare-fun b!1160590 () Bool)

(declare-fun arrayContainsKey!0 (array!74964 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160590 (= e!660005 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160591 () Bool)

(assert (=> b!1160591 (= e!659991 (= lt!522072 (getCurrentListMapNoExtraKeys!4777 lt!522061 lt!522065 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!56225 () Bool)

(assert (=> bm!56225 (= call!56226 (addStillContains!963 (ite c!115824 lt!522076 lt!522081) (ite c!115824 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115820 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115824 minValue!944 (ite c!115820 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1160592 () Bool)

(assert (=> b!1160592 (= e!659996 (not e!659990))))

(declare-fun res!770248 () Bool)

(assert (=> b!1160592 (=> res!770248 e!659990)))

(assert (=> b!1160592 (= res!770248 (bvsgt from!1455 i!673))))

(assert (=> b!1160592 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!522068 () Unit!38164)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74964 (_ BitVec 64) (_ BitVec 32)) Unit!38164)

(assert (=> b!1160592 (= lt!522068 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!56226 () Bool)

(assert (=> bm!56226 (= call!56230 (+!3666 (ite c!115824 lt!522076 lt!522081) (ite c!115824 (tuple2!18671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115820 (tuple2!18671 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18671 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1160593 () Bool)

(declare-fun res!770244 () Bool)

(assert (=> b!1160593 (=> (not res!770244) (not e!660000))))

(assert (=> b!1160593 (= res!770244 (and (= (size!36667 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36666 _keys!1208) (size!36667 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160594 () Bool)

(declare-fun e!659995 () Bool)

(assert (=> b!1160594 (= e!659995 tp_is_empty!29087)))

(declare-fun b!1160595 () Bool)

(declare-fun Unit!38168 () Unit!38164)

(assert (=> b!1160595 (= e!659994 Unit!38168)))

(declare-fun mapNonEmpty!45455 () Bool)

(declare-fun tp!86382 () Bool)

(assert (=> mapNonEmpty!45455 (= mapRes!45455 (and tp!86382 e!660004))))

(declare-fun mapRest!45455 () (Array (_ BitVec 32) ValueCell!13834))

(declare-fun mapValue!45455 () ValueCell!13834)

(declare-fun mapKey!45455 () (_ BitVec 32))

(assert (=> mapNonEmpty!45455 (= (arr!36130 _values!996) (store mapRest!45455 mapKey!45455 mapValue!45455))))

(declare-fun bm!56227 () Bool)

(assert (=> bm!56227 (= call!56231 call!56226)))

(declare-fun b!1160596 () Bool)

(assert (=> b!1160596 (= e!660001 (and e!659995 mapRes!45455))))

(declare-fun condMapEmpty!45455 () Bool)

(declare-fun mapDefault!45455 () ValueCell!13834)

