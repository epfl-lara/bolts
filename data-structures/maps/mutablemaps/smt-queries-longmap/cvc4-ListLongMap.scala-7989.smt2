; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98814 () Bool)

(assert start!98814)

(declare-fun b_free!24383 () Bool)

(declare-fun b_next!24383 () Bool)

(assert (=> start!98814 (= b_free!24383 (not b_next!24383))))

(declare-fun tp!85861 () Bool)

(declare-fun b_and!39629 () Bool)

(assert (=> start!98814 (= tp!85861 b_and!39629)))

(declare-fun b!1152566 () Bool)

(declare-fun res!766335 () Bool)

(declare-fun e!655563 () Bool)

(assert (=> b!1152566 (=> (not res!766335) (not e!655563))))

(declare-datatypes ((array!74624 0))(
  ( (array!74625 (arr!35959 (Array (_ BitVec 32) (_ BitVec 64))) (size!36496 (_ BitVec 32))) )
))
(declare-fun lt!516324 () array!74624)

(declare-datatypes ((List!25298 0))(
  ( (Nil!25295) (Cons!25294 (h!26503 (_ BitVec 64)) (t!36680 List!25298)) )
))
(declare-fun arrayNoDuplicates!0 (array!74624 (_ BitVec 32) List!25298) Bool)

(assert (=> b!1152566 (= res!766335 (arrayNoDuplicates!0 lt!516324 #b00000000000000000000000000000000 Nil!25295))))

(declare-fun b!1152567 () Bool)

(declare-datatypes ((Unit!37835 0))(
  ( (Unit!37836) )
))
(declare-fun e!655569 () Unit!37835)

(declare-fun lt!516326 () Unit!37835)

(assert (=> b!1152567 (= e!655569 lt!516326)))

(declare-fun call!54141 () Unit!37835)

(assert (=> b!1152567 (= lt!516326 call!54141)))

(declare-fun call!54139 () Bool)

(assert (=> b!1152567 call!54139))

(declare-fun b!1152568 () Bool)

(declare-fun e!655561 () Bool)

(assert (=> b!1152568 (= e!655561 e!655563)))

(declare-fun res!766332 () Bool)

(assert (=> b!1152568 (=> (not res!766332) (not e!655563))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74624 (_ BitVec 32)) Bool)

(assert (=> b!1152568 (= res!766332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!516324 mask!1564))))

(declare-fun _keys!1208 () array!74624)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1152568 (= lt!516324 (array!74625 (store (arr!35959 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36496 _keys!1208)))))

(declare-fun b!1152569 () Bool)

(declare-fun e!655568 () Bool)

(assert (=> b!1152569 (= e!655568 true)))

(declare-fun e!655562 () Bool)

(assert (=> b!1152569 e!655562))

(declare-fun res!766342 () Bool)

(assert (=> b!1152569 (=> (not res!766342) (not e!655562))))

(declare-datatypes ((V!43677 0))(
  ( (V!43678 (val!14513 Int)) )
))
(declare-datatypes ((tuple2!18508 0))(
  ( (tuple2!18509 (_1!9264 (_ BitVec 64)) (_2!9264 V!43677)) )
))
(declare-datatypes ((List!25299 0))(
  ( (Nil!25296) (Cons!25295 (h!26504 tuple2!18508) (t!36681 List!25299)) )
))
(declare-datatypes ((ListLongMap!16489 0))(
  ( (ListLongMap!16490 (toList!8260 List!25299)) )
))
(declare-fun lt!516337 () ListLongMap!16489)

(declare-fun lt!516332 () ListLongMap!16489)

(assert (=> b!1152569 (= res!766342 (= lt!516337 lt!516332))))

(declare-fun lt!516335 () ListLongMap!16489)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1344 (ListLongMap!16489 (_ BitVec 64)) ListLongMap!16489)

(assert (=> b!1152569 (= lt!516337 (-!1344 lt!516335 k!934))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!516329 () V!43677)

(declare-fun +!3595 (ListLongMap!16489 tuple2!18508) ListLongMap!16489)

(assert (=> b!1152569 (= (-!1344 (+!3595 lt!516332 (tuple2!18509 (select (arr!35959 _keys!1208) from!1455) lt!516329)) (select (arr!35959 _keys!1208) from!1455)) lt!516332)))

(declare-fun lt!516338 () Unit!37835)

(declare-fun addThenRemoveForNewKeyIsSame!190 (ListLongMap!16489 (_ BitVec 64) V!43677) Unit!37835)

(assert (=> b!1152569 (= lt!516338 (addThenRemoveForNewKeyIsSame!190 lt!516332 (select (arr!35959 _keys!1208) from!1455) lt!516329))))

(declare-datatypes ((ValueCell!13747 0))(
  ( (ValueCellFull!13747 (v!17151 V!43677)) (EmptyCell!13747) )
))
(declare-datatypes ((array!74626 0))(
  ( (array!74627 (arr!35960 (Array (_ BitVec 32) ValueCell!13747)) (size!36497 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74626)

(declare-fun lt!516330 () V!43677)

(declare-fun get!18338 (ValueCell!13747 V!43677) V!43677)

(assert (=> b!1152569 (= lt!516329 (get!18338 (select (arr!35960 _values!996) from!1455) lt!516330))))

(declare-fun lt!516318 () Unit!37835)

(declare-fun e!655565 () Unit!37835)

(assert (=> b!1152569 (= lt!516318 e!655565)))

(declare-fun c!114256 () Bool)

(declare-fun contains!6753 (ListLongMap!16489 (_ BitVec 64)) Bool)

(assert (=> b!1152569 (= c!114256 (contains!6753 lt!516332 k!934))))

(declare-fun zeroValue!944 () V!43677)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43677)

(declare-fun getCurrentListMapNoExtraKeys!4700 (array!74624 array!74626 (_ BitVec 32) (_ BitVec 32) V!43677 V!43677 (_ BitVec 32) Int) ListLongMap!16489)

(assert (=> b!1152569 (= lt!516332 (getCurrentListMapNoExtraKeys!4700 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152570 () Bool)

(declare-fun res!766336 () Bool)

(assert (=> b!1152570 (=> (not res!766336) (not e!655561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1152570 (= res!766336 (validMask!0 mask!1564))))

(declare-fun b!1152572 () Bool)

(declare-fun res!766343 () Bool)

(assert (=> b!1152572 (=> (not res!766343) (not e!655561))))

(assert (=> b!1152572 (= res!766343 (= (select (arr!35959 _keys!1208) i!673) k!934))))

(declare-fun b!1152573 () Bool)

(declare-fun e!655555 () Bool)

(assert (=> b!1152573 (= e!655555 e!655568)))

(declare-fun res!766341 () Bool)

(assert (=> b!1152573 (=> res!766341 e!655568)))

(assert (=> b!1152573 (= res!766341 (not (= (select (arr!35959 _keys!1208) from!1455) k!934)))))

(declare-fun e!655567 () Bool)

(assert (=> b!1152573 e!655567))

(declare-fun c!114254 () Bool)

(assert (=> b!1152573 (= c!114254 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!516336 () Unit!37835)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!579 (array!74624 array!74626 (_ BitVec 32) (_ BitVec 32) V!43677 V!43677 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37835)

(assert (=> b!1152573 (= lt!516336 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!579 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1152574 () Bool)

(declare-fun res!766334 () Bool)

(assert (=> b!1152574 (=> (not res!766334) (not e!655561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1152574 (= res!766334 (validKeyInArray!0 k!934))))

(declare-fun b!1152575 () Bool)

(declare-fun e!655564 () Bool)

(declare-fun e!655558 () Bool)

(declare-fun mapRes!45194 () Bool)

(assert (=> b!1152575 (= e!655564 (and e!655558 mapRes!45194))))

(declare-fun condMapEmpty!45194 () Bool)

(declare-fun mapDefault!45194 () ValueCell!13747)

