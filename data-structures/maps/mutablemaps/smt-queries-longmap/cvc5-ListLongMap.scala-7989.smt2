; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98810 () Bool)

(assert start!98810)

(declare-fun b_free!24379 () Bool)

(declare-fun b_next!24379 () Bool)

(assert (=> start!98810 (= b_free!24379 (not b_next!24379))))

(declare-fun tp!85848 () Bool)

(declare-fun b_and!39621 () Bool)

(assert (=> start!98810 (= tp!85848 b_and!39621)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!655458 () Bool)

(declare-fun b!1152382 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!516188 () Bool)

(assert (=> b!1152382 (= e!655458 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!516188) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1152383 () Bool)

(declare-fun res!766248 () Bool)

(declare-fun e!655455 () Bool)

(assert (=> b!1152383 (=> (not res!766248) (not e!655455))))

(declare-datatypes ((array!74616 0))(
  ( (array!74617 (arr!35955 (Array (_ BitVec 32) (_ BitVec 64))) (size!36492 (_ BitVec 32))) )
))
(declare-fun lt!516189 () array!74616)

(declare-datatypes ((List!25294 0))(
  ( (Nil!25291) (Cons!25290 (h!26499 (_ BitVec 64)) (t!36672 List!25294)) )
))
(declare-fun arrayNoDuplicates!0 (array!74616 (_ BitVec 32) List!25294) Bool)

(assert (=> b!1152383 (= res!766248 (arrayNoDuplicates!0 lt!516189 #b00000000000000000000000000000000 Nil!25291))))

(declare-fun mapNonEmpty!45188 () Bool)

(declare-fun mapRes!45188 () Bool)

(declare-fun tp!85849 () Bool)

(declare-fun e!655464 () Bool)

(assert (=> mapNonEmpty!45188 (= mapRes!45188 (and tp!85849 e!655464))))

(declare-datatypes ((V!43673 0))(
  ( (V!43674 (val!14511 Int)) )
))
(declare-datatypes ((ValueCell!13745 0))(
  ( (ValueCellFull!13745 (v!17149 V!43673)) (EmptyCell!13745) )
))
(declare-fun mapValue!45188 () ValueCell!13745)

(declare-fun mapRest!45188 () (Array (_ BitVec 32) ValueCell!13745))

(declare-datatypes ((array!74618 0))(
  ( (array!74619 (arr!35956 (Array (_ BitVec 32) ValueCell!13745)) (size!36493 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74618)

(declare-fun mapKey!45188 () (_ BitVec 32))

(assert (=> mapNonEmpty!45188 (= (arr!35956 _values!996) (store mapRest!45188 mapKey!45188 mapValue!45188))))

(declare-fun b!1152384 () Bool)

(declare-fun res!766245 () Bool)

(declare-fun e!655462 () Bool)

(assert (=> b!1152384 (=> (not res!766245) (not e!655462))))

(declare-fun _keys!1208 () array!74616)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152384 (= res!766245 (= (select (arr!35955 _keys!1208) i!673) k!934))))

(declare-fun b!1152385 () Bool)

(declare-fun e!655451 () Bool)

(assert (=> b!1152385 (= e!655455 (not e!655451))))

(declare-fun res!766243 () Bool)

(assert (=> b!1152385 (=> res!766243 e!655451)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1152385 (= res!766243 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1152385 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37825 0))(
  ( (Unit!37826) )
))
(declare-fun lt!516199 () Unit!37825)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74616 (_ BitVec 64) (_ BitVec 32)) Unit!37825)

(assert (=> b!1152385 (= lt!516199 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1152386 () Bool)

(assert (=> b!1152386 (= e!655462 e!655455)))

(declare-fun res!766251 () Bool)

(assert (=> b!1152386 (=> (not res!766251) (not e!655455))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74616 (_ BitVec 32)) Bool)

(assert (=> b!1152386 (= res!766251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516189 mask!1564))))

(assert (=> b!1152386 (= lt!516189 (array!74617 (store (arr!35955 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36492 _keys!1208)))))

(declare-fun b!1152387 () Bool)

(declare-fun res!766250 () Bool)

(assert (=> b!1152387 (=> (not res!766250) (not e!655462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152387 (= res!766250 (validMask!0 mask!1564))))

(declare-fun b!1152388 () Bool)

(declare-fun e!655463 () Bool)

(declare-fun e!655452 () Bool)

(assert (=> b!1152388 (= e!655463 e!655452)))

(declare-fun res!766239 () Bool)

(assert (=> b!1152388 (=> res!766239 e!655452)))

(assert (=> b!1152388 (= res!766239 (not (= (select (arr!35955 _keys!1208) from!1455) k!934)))))

(declare-fun e!655454 () Bool)

(assert (=> b!1152388 e!655454))

(declare-fun c!114217 () Bool)

(assert (=> b!1152388 (= c!114217 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43673)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!516195 () Unit!37825)

(declare-fun minValue!944 () V!43673)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!577 (array!74616 array!74618 (_ BitVec 32) (_ BitVec 32) V!43673 V!43673 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37825)

(assert (=> b!1152388 (= lt!516195 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!577 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((tuple2!18504 0))(
  ( (tuple2!18505 (_1!9262 (_ BitVec 64)) (_2!9262 V!43673)) )
))
(declare-datatypes ((List!25295 0))(
  ( (Nil!25292) (Cons!25291 (h!26500 tuple2!18504) (t!36673 List!25295)) )
))
(declare-datatypes ((ListLongMap!16485 0))(
  ( (ListLongMap!16486 (toList!8258 List!25295)) )
))
(declare-fun call!54094 () ListLongMap!16485)

(declare-fun bm!54086 () Bool)

(declare-fun call!54092 () Bool)

(declare-fun c!114221 () Bool)

(declare-fun lt!516207 () ListLongMap!16485)

(declare-fun contains!6751 (ListLongMap!16485 (_ BitVec 64)) Bool)

(assert (=> bm!54086 (= call!54092 (contains!6751 (ite c!114221 lt!516207 call!54094) k!934))))

(declare-fun mapIsEmpty!45188 () Bool)

(assert (=> mapIsEmpty!45188 mapRes!45188))

(declare-fun b!1152389 () Bool)

(declare-fun res!766244 () Bool)

(assert (=> b!1152389 (=> (not res!766244) (not e!655462))))

(assert (=> b!1152389 (= res!766244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!54090 () ListLongMap!16485)

(declare-fun c!114219 () Bool)

(declare-fun bm!54087 () Bool)

(declare-fun lt!516202 () ListLongMap!16485)

(declare-fun +!3593 (ListLongMap!16485 tuple2!18504) ListLongMap!16485)

(assert (=> bm!54087 (= call!54090 (+!3593 (ite c!114221 lt!516207 lt!516202) (ite c!114221 (tuple2!18505 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114219 (tuple2!18505 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18505 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1152390 () Bool)

(assert (=> b!1152390 (= e!655451 e!655463)))

(declare-fun res!766241 () Bool)

(assert (=> b!1152390 (=> res!766241 e!655463)))

(assert (=> b!1152390 (= res!766241 (not (= from!1455 i!673)))))

(declare-fun lt!516201 () ListLongMap!16485)

(declare-fun lt!516192 () array!74618)

(declare-fun getCurrentListMapNoExtraKeys!4698 (array!74616 array!74618 (_ BitVec 32) (_ BitVec 32) V!43673 V!43673 (_ BitVec 32) Int) ListLongMap!16485)

(assert (=> b!1152390 (= lt!516201 (getCurrentListMapNoExtraKeys!4698 lt!516189 lt!516192 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!516205 () V!43673)

(assert (=> b!1152390 (= lt!516192 (array!74619 (store (arr!35956 _values!996) i!673 (ValueCellFull!13745 lt!516205)) (size!36493 _values!996)))))

(declare-fun dynLambda!2723 (Int (_ BitVec 64)) V!43673)

(assert (=> b!1152390 (= lt!516205 (dynLambda!2723 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!516200 () ListLongMap!16485)

(assert (=> b!1152390 (= lt!516200 (getCurrentListMapNoExtraKeys!4698 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1152391 () Bool)

(declare-fun e!655459 () Unit!37825)

(declare-fun Unit!37827 () Unit!37825)

(assert (=> b!1152391 (= e!655459 Unit!37827)))

(declare-fun b!1152392 () Bool)

(declare-fun tp_is_empty!28909 () Bool)

(assert (=> b!1152392 (= e!655464 tp_is_empty!28909)))

(declare-fun call!54089 () Unit!37825)

(declare-fun bm!54088 () Bool)

(declare-fun addStillContains!892 (ListLongMap!16485 (_ BitVec 64) V!43673 (_ BitVec 64)) Unit!37825)

(assert (=> bm!54088 (= call!54089 (addStillContains!892 (ite c!114221 lt!516207 lt!516202) (ite c!114221 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114219 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114221 minValue!944 (ite c!114219 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1152393 () Bool)

(declare-fun e!655461 () Unit!37825)

(declare-fun Unit!37828 () Unit!37825)

(assert (=> b!1152393 (= e!655461 Unit!37828)))

(assert (=> b!1152393 (= lt!516188 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1152393 (= c!114221 (and (not lt!516188) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!516196 () Unit!37825)

(declare-fun e!655466 () Unit!37825)

(assert (=> b!1152393 (= lt!516196 e!655466)))

(declare-fun lt!516187 () Unit!37825)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!476 (array!74616 array!74618 (_ BitVec 32) (_ BitVec 32) V!43673 V!43673 (_ BitVec 64) (_ BitVec 32) Int) Unit!37825)

(assert (=> b!1152393 (= lt!516187 (lemmaListMapContainsThenArrayContainsFrom!476 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114222 () Bool)

(assert (=> b!1152393 (= c!114222 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766247 () Bool)

(assert (=> b!1152393 (= res!766247 e!655458)))

(declare-fun e!655465 () Bool)

(assert (=> b!1152393 (=> (not res!766247) (not e!655465))))

(assert (=> b!1152393 e!655465))

(declare-fun lt!516204 () Unit!37825)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74616 (_ BitVec 32) (_ BitVec 32)) Unit!37825)

(assert (=> b!1152393 (= lt!516204 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1152393 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25291)))

(declare-fun lt!516194 () Unit!37825)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74616 (_ BitVec 64) (_ BitVec 32) List!25294) Unit!37825)

(assert (=> b!1152393 (= lt!516194 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25291))))

(assert (=> b!1152393 false))

(declare-fun b!1152394 () Bool)

(declare-fun res!766249 () Bool)

(assert (=> b!1152394 (=> (not res!766249) (not e!655462))))

(assert (=> b!1152394 (= res!766249 (and (= (size!36493 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36492 _keys!1208) (size!36493 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1152395 () Bool)

(declare-fun Unit!37829 () Unit!37825)

(assert (=> b!1152395 (= e!655461 Unit!37829)))

(declare-fun b!1152396 () Bool)

(assert (=> b!1152396 (= c!114219 (and (not lt!516188) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!655467 () Unit!37825)

(assert (=> b!1152396 (= e!655466 e!655467)))

(declare-fun b!1152397 () Bool)

(declare-fun res!766253 () Bool)

(assert (=> b!1152397 (=> (not res!766253) (not e!655462))))

(assert (=> b!1152397 (= res!766253 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25291))))

(declare-fun b!1152398 () Bool)

(declare-fun e!655453 () Bool)

(declare-fun e!655460 () Bool)

(assert (=> b!1152398 (= e!655453 (and e!655460 mapRes!45188))))

(declare-fun condMapEmpty!45188 () Bool)

(declare-fun mapDefault!45188 () ValueCell!13745)

