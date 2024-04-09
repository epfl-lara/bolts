; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98850 () Bool)

(assert start!98850)

(declare-fun b_free!24419 () Bool)

(declare-fun b_next!24419 () Bool)

(assert (=> start!98850 (= b_free!24419 (not b_next!24419))))

(declare-fun tp!85969 () Bool)

(declare-fun b_and!39701 () Bool)

(assert (=> start!98850 (= tp!85969 b_and!39701)))

(declare-fun b!1154222 () Bool)

(declare-datatypes ((Unit!37898 0))(
  ( (Unit!37899) )
))
(declare-fun e!656478 () Unit!37898)

(declare-fun Unit!37900 () Unit!37898)

(assert (=> b!1154222 (= e!656478 Unit!37900)))

(declare-fun mapIsEmpty!45248 () Bool)

(declare-fun mapRes!45248 () Bool)

(assert (=> mapIsEmpty!45248 mapRes!45248))

(declare-fun bm!54566 () Bool)

(declare-fun call!54571 () Bool)

(declare-fun call!54572 () Bool)

(assert (=> bm!54566 (= call!54571 call!54572)))

(declare-fun b!1154223 () Bool)

(declare-fun e!656482 () Bool)

(assert (=> b!1154223 (= e!656482 true)))

(declare-fun e!656475 () Bool)

(assert (=> b!1154223 e!656475))

(declare-fun res!767150 () Bool)

(assert (=> b!1154223 (=> (not res!767150) (not e!656475))))

(declare-datatypes ((V!43725 0))(
  ( (V!43726 (val!14531 Int)) )
))
(declare-datatypes ((tuple2!18542 0))(
  ( (tuple2!18543 (_1!9281 (_ BitVec 64)) (_2!9281 V!43725)) )
))
(declare-datatypes ((List!25326 0))(
  ( (Nil!25323) (Cons!25322 (h!26531 tuple2!18542) (t!36744 List!25326)) )
))
(declare-datatypes ((ListLongMap!16523 0))(
  ( (ListLongMap!16524 (toList!8277 List!25326)) )
))
(declare-fun lt!517510 () ListLongMap!16523)

(declare-fun lt!517511 () ListLongMap!16523)

(assert (=> b!1154223 (= res!767150 (= lt!517510 lt!517511))))

(declare-fun lt!517522 () ListLongMap!16523)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1357 (ListLongMap!16523 (_ BitVec 64)) ListLongMap!16523)

(assert (=> b!1154223 (= lt!517510 (-!1357 lt!517522 k!934))))

(declare-datatypes ((array!74694 0))(
  ( (array!74695 (arr!35994 (Array (_ BitVec 32) (_ BitVec 64))) (size!36531 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74694)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!517519 () V!43725)

(declare-fun +!3610 (ListLongMap!16523 tuple2!18542) ListLongMap!16523)

(assert (=> b!1154223 (= (-!1357 (+!3610 lt!517511 (tuple2!18543 (select (arr!35994 _keys!1208) from!1455) lt!517519)) (select (arr!35994 _keys!1208) from!1455)) lt!517511)))

(declare-fun lt!517521 () Unit!37898)

(declare-fun addThenRemoveForNewKeyIsSame!201 (ListLongMap!16523 (_ BitVec 64) V!43725) Unit!37898)

(assert (=> b!1154223 (= lt!517521 (addThenRemoveForNewKeyIsSame!201 lt!517511 (select (arr!35994 _keys!1208) from!1455) lt!517519))))

(declare-fun lt!517523 () V!43725)

(declare-datatypes ((ValueCell!13765 0))(
  ( (ValueCellFull!13765 (v!17169 V!43725)) (EmptyCell!13765) )
))
(declare-datatypes ((array!74696 0))(
  ( (array!74697 (arr!35995 (Array (_ BitVec 32) ValueCell!13765)) (size!36532 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74696)

(declare-fun get!18361 (ValueCell!13765 V!43725) V!43725)

(assert (=> b!1154223 (= lt!517519 (get!18361 (select (arr!35995 _values!996) from!1455) lt!517523))))

(declare-fun lt!517512 () Unit!37898)

(assert (=> b!1154223 (= lt!517512 e!656478)))

(declare-fun c!114580 () Bool)

(declare-fun contains!6766 (ListLongMap!16523 (_ BitVec 64)) Bool)

(assert (=> b!1154223 (= c!114580 (contains!6766 lt!517511 k!934))))

(declare-fun zeroValue!944 () V!43725)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43725)

(declare-fun getCurrentListMapNoExtraKeys!4717 (array!74694 array!74696 (_ BitVec 32) (_ BitVec 32) V!43725 V!43725 (_ BitVec 32) Int) ListLongMap!16523)

(assert (=> b!1154223 (= lt!517511 (getCurrentListMapNoExtraKeys!4717 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114577 () Bool)

(declare-fun lt!517515 () ListLongMap!16523)

(declare-fun bm!54567 () Bool)

(declare-fun call!54575 () Unit!37898)

(declare-fun c!114579 () Bool)

(declare-fun addStillContains!907 (ListLongMap!16523 (_ BitVec 64) V!43725 (_ BitVec 64)) Unit!37898)

(assert (=> bm!54567 (= call!54575 (addStillContains!907 (ite c!114577 lt!517515 lt!517511) (ite c!114577 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114579 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114577 minValue!944 (ite c!114579 zeroValue!944 minValue!944)) k!934))))

(declare-fun call!54574 () ListLongMap!16523)

(declare-fun bm!54568 () Bool)

(assert (=> bm!54568 (= call!54572 (contains!6766 (ite c!114577 lt!517515 call!54574) k!934))))

(declare-fun b!1154224 () Bool)

(declare-fun res!767142 () Bool)

(declare-fun e!656487 () Bool)

(assert (=> b!1154224 (=> (not res!767142) (not e!656487))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1154224 (= res!767142 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36531 _keys!1208))))))

(declare-fun b!1154225 () Bool)

(declare-fun lt!517517 () array!74696)

(declare-fun lt!517506 () array!74694)

(assert (=> b!1154225 (= e!656475 (= lt!517510 (getCurrentListMapNoExtraKeys!4717 lt!517506 lt!517517 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1154226 () Bool)

(declare-fun res!767147 () Bool)

(assert (=> b!1154226 (=> (not res!767147) (not e!656487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154226 (= res!767147 (validKeyInArray!0 k!934))))

(declare-fun res!767140 () Bool)

(assert (=> start!98850 (=> (not res!767140) (not e!656487))))

(assert (=> start!98850 (= res!767140 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36531 _keys!1208))))))

(assert (=> start!98850 e!656487))

(declare-fun tp_is_empty!28949 () Bool)

(assert (=> start!98850 tp_is_empty!28949))

(declare-fun array_inv!27428 (array!74694) Bool)

(assert (=> start!98850 (array_inv!27428 _keys!1208)))

(assert (=> start!98850 true))

(assert (=> start!98850 tp!85969))

(declare-fun e!656471 () Bool)

(declare-fun array_inv!27429 (array!74696) Bool)

(assert (=> start!98850 (and (array_inv!27429 _values!996) e!656471)))

(declare-fun b!1154227 () Bool)

(declare-fun e!656472 () Bool)

(assert (=> b!1154227 (= e!656487 e!656472)))

(declare-fun res!767139 () Bool)

(assert (=> b!1154227 (=> (not res!767139) (not e!656472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74694 (_ BitVec 32)) Bool)

(assert (=> b!1154227 (= res!767139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!517506 mask!1564))))

(assert (=> b!1154227 (= lt!517506 (array!74695 (store (arr!35994 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36531 _keys!1208)))))

(declare-fun b!1154228 () Bool)

(declare-fun lt!517524 () Bool)

(assert (=> b!1154228 (= c!114579 (and (not lt!517524) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!656485 () Unit!37898)

(declare-fun e!656477 () Unit!37898)

(assert (=> b!1154228 (= e!656485 e!656477)))

(declare-fun b!1154229 () Bool)

(declare-fun e!656480 () Bool)

(assert (=> b!1154229 (= e!656480 tp_is_empty!28949)))

(declare-fun b!1154230 () Bool)

(declare-fun e!656484 () Bool)

(declare-fun arrayContainsKey!0 (array!74694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154230 (= e!656484 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154231 () Bool)

(declare-fun e!656473 () Bool)

(assert (=> b!1154231 (= e!656472 (not e!656473))))

(declare-fun res!767141 () Bool)

(assert (=> b!1154231 (=> res!767141 e!656473)))

(assert (=> b!1154231 (= res!767141 (bvsgt from!1455 i!673))))

(assert (=> b!1154231 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!517516 () Unit!37898)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74694 (_ BitVec 64) (_ BitVec 32)) Unit!37898)

(assert (=> b!1154231 (= lt!517516 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun call!54569 () ListLongMap!16523)

(declare-fun b!1154232 () Bool)

(declare-fun e!656486 () Bool)

(declare-fun call!54576 () ListLongMap!16523)

(assert (=> b!1154232 (= e!656486 (= call!54576 (-!1357 call!54569 k!934)))))

(declare-fun bm!54569 () Bool)

(assert (=> bm!54569 (= call!54576 (getCurrentListMapNoExtraKeys!4717 lt!517506 lt!517517 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1154233 () Bool)

(declare-fun e!656474 () Unit!37898)

(assert (=> b!1154233 (= e!656477 e!656474)))

(declare-fun c!114582 () Bool)

(assert (=> b!1154233 (= c!114582 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!517524))))

(declare-fun b!1154234 () Bool)

(declare-fun e!656483 () Bool)

(assert (=> b!1154234 (= e!656473 e!656483)))

(declare-fun res!767152 () Bool)

(assert (=> b!1154234 (=> res!767152 e!656483)))

(assert (=> b!1154234 (= res!767152 (not (= from!1455 i!673)))))

(declare-fun lt!517525 () ListLongMap!16523)

(assert (=> b!1154234 (= lt!517525 (getCurrentListMapNoExtraKeys!4717 lt!517506 lt!517517 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1154234 (= lt!517517 (array!74697 (store (arr!35995 _values!996) i!673 (ValueCellFull!13765 lt!517523)) (size!36532 _values!996)))))

(declare-fun dynLambda!2735 (Int (_ BitVec 64)) V!43725)

(assert (=> b!1154234 (= lt!517523 (dynLambda!2735 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1154234 (= lt!517522 (getCurrentListMapNoExtraKeys!4717 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1154235 () Bool)

(assert (=> b!1154235 (contains!6766 (+!3610 lt!517515 (tuple2!18543 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!517518 () Unit!37898)

(assert (=> b!1154235 (= lt!517518 call!54575)))

(assert (=> b!1154235 call!54572))

(declare-fun call!54570 () ListLongMap!16523)

(assert (=> b!1154235 (= lt!517515 call!54570)))

(declare-fun lt!517520 () Unit!37898)

(assert (=> b!1154235 (= lt!517520 (addStillContains!907 lt!517511 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1154235 (= e!656485 lt!517518)))

(declare-fun b!1154236 () Bool)

(declare-fun res!767145 () Bool)

(assert (=> b!1154236 (=> (not res!767145) (not e!656472))))

(declare-datatypes ((List!25327 0))(
  ( (Nil!25324) (Cons!25323 (h!26532 (_ BitVec 64)) (t!36745 List!25327)) )
))
(declare-fun arrayNoDuplicates!0 (array!74694 (_ BitVec 32) List!25327) Bool)

(assert (=> b!1154236 (= res!767145 (arrayNoDuplicates!0 lt!517506 #b00000000000000000000000000000000 Nil!25324))))

(declare-fun b!1154237 () Bool)

(declare-fun res!767153 () Bool)

(assert (=> b!1154237 (=> (not res!767153) (not e!656487))))

(assert (=> b!1154237 (= res!767153 (= (select (arr!35994 _keys!1208) i!673) k!934))))

(declare-fun b!1154238 () Bool)

(declare-fun lt!517513 () Unit!37898)

(assert (=> b!1154238 (= e!656477 lt!517513)))

(declare-fun call!54573 () Unit!37898)

(assert (=> b!1154238 (= lt!517513 call!54573)))

(assert (=> b!1154238 call!54571))

(declare-fun b!1154239 () Bool)

(declare-fun e!656476 () Bool)

(assert (=> b!1154239 (= e!656471 (and e!656476 mapRes!45248))))

(declare-fun condMapEmpty!45248 () Bool)

(declare-fun mapDefault!45248 () ValueCell!13765)

