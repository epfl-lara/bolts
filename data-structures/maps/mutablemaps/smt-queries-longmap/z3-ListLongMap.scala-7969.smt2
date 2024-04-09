; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98692 () Bool)

(assert start!98692)

(declare-fun b_free!24261 () Bool)

(declare-fun b_next!24261 () Bool)

(assert (=> start!98692 (= b_free!24261 (not b_next!24261))))

(declare-fun tp!85495 () Bool)

(declare-fun b_and!39385 () Bool)

(assert (=> start!98692 (= tp!85495 b_and!39385)))

(declare-fun b!1146954 () Bool)

(declare-fun e!652453 () Bool)

(declare-fun e!652446 () Bool)

(assert (=> b!1146954 (= e!652453 e!652446)))

(declare-fun res!763587 () Bool)

(assert (=> b!1146954 (=> res!763587 e!652446)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!74386 0))(
  ( (array!74387 (arr!35840 (Array (_ BitVec 32) (_ BitVec 64))) (size!36377 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74386)

(assert (=> b!1146954 (= res!763587 (not (= (select (arr!35840 _keys!1208) from!1455) k0!934)))))

(declare-fun e!652444 () Bool)

(assert (=> b!1146954 e!652444))

(declare-fun c!113155 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146954 (= c!113155 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43515 0))(
  ( (V!43516 (val!14452 Int)) )
))
(declare-fun zeroValue!944 () V!43515)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((Unit!37594 0))(
  ( (Unit!37595) )
))
(declare-fun lt!512367 () Unit!37594)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13686 0))(
  ( (ValueCellFull!13686 (v!17090 V!43515)) (EmptyCell!13686) )
))
(declare-datatypes ((array!74388 0))(
  ( (array!74389 (arr!35841 (Array (_ BitVec 32) ValueCell!13686)) (size!36378 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74388)

(declare-fun minValue!944 () V!43515)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!543 (array!74386 array!74388 (_ BitVec 32) (_ BitVec 32) V!43515 V!43515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37594)

(assert (=> b!1146954 (= lt!512367 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146955 () Bool)

(declare-fun e!652445 () Bool)

(assert (=> b!1146955 (= e!652445 e!652453)))

(declare-fun res!763592 () Bool)

(assert (=> b!1146955 (=> res!763592 e!652453)))

(assert (=> b!1146955 (= res!763592 (not (= from!1455 i!673)))))

(declare-fun lt!512365 () array!74388)

(declare-datatypes ((tuple2!18396 0))(
  ( (tuple2!18397 (_1!9208 (_ BitVec 64)) (_2!9208 V!43515)) )
))
(declare-datatypes ((List!25192 0))(
  ( (Nil!25189) (Cons!25188 (h!26397 tuple2!18396) (t!36452 List!25192)) )
))
(declare-datatypes ((ListLongMap!16377 0))(
  ( (ListLongMap!16378 (toList!8204 List!25192)) )
))
(declare-fun lt!512362 () ListLongMap!16377)

(declare-fun lt!512375 () array!74386)

(declare-fun getCurrentListMapNoExtraKeys!4646 (array!74386 array!74388 (_ BitVec 32) (_ BitVec 32) V!43515 V!43515 (_ BitVec 32) Int) ListLongMap!16377)

(assert (=> b!1146955 (= lt!512362 (getCurrentListMapNoExtraKeys!4646 lt!512375 lt!512365 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512379 () V!43515)

(assert (=> b!1146955 (= lt!512365 (array!74389 (store (arr!35841 _values!996) i!673 (ValueCellFull!13686 lt!512379)) (size!36378 _values!996)))))

(declare-fun dynLambda!2683 (Int (_ BitVec 64)) V!43515)

(assert (=> b!1146955 (= lt!512379 (dynLambda!2683 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!512372 () ListLongMap!16377)

(assert (=> b!1146955 (= lt!512372 (getCurrentListMapNoExtraKeys!4646 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1146956 () Bool)

(declare-fun e!652458 () Unit!37594)

(declare-fun Unit!37596 () Unit!37594)

(assert (=> b!1146956 (= e!652458 Unit!37596)))

(declare-fun lt!512374 () Bool)

(assert (=> b!1146956 (= lt!512374 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113156 () Bool)

(assert (=> b!1146956 (= c!113156 (and (not lt!512374) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512368 () Unit!37594)

(declare-fun e!652443 () Unit!37594)

(assert (=> b!1146956 (= lt!512368 e!652443)))

(declare-fun lt!512378 () Unit!37594)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!433 (array!74386 array!74388 (_ BitVec 32) (_ BitVec 32) V!43515 V!43515 (_ BitVec 64) (_ BitVec 32) Int) Unit!37594)

(assert (=> b!1146956 (= lt!512378 (lemmaListMapContainsThenArrayContainsFrom!433 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113157 () Bool)

(assert (=> b!1146956 (= c!113157 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763598 () Bool)

(declare-fun e!652447 () Bool)

(assert (=> b!1146956 (= res!763598 e!652447)))

(declare-fun e!652449 () Bool)

(assert (=> b!1146956 (=> (not res!763598) (not e!652449))))

(assert (=> b!1146956 e!652449))

(declare-fun lt!512376 () Unit!37594)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74386 (_ BitVec 32) (_ BitVec 32)) Unit!37594)

(assert (=> b!1146956 (= lt!512376 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25193 0))(
  ( (Nil!25190) (Cons!25189 (h!26398 (_ BitVec 64)) (t!36453 List!25193)) )
))
(declare-fun arrayNoDuplicates!0 (array!74386 (_ BitVec 32) List!25193) Bool)

(assert (=> b!1146956 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25190)))

(declare-fun lt!512370 () Unit!37594)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74386 (_ BitVec 64) (_ BitVec 32) List!25193) Unit!37594)

(assert (=> b!1146956 (= lt!512370 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25190))))

(assert (=> b!1146956 false))

(declare-fun b!1146957 () Bool)

(declare-fun res!763586 () Bool)

(declare-fun e!652448 () Bool)

(assert (=> b!1146957 (=> (not res!763586) (not e!652448))))

(assert (=> b!1146957 (= res!763586 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25190))))

(declare-fun b!1146958 () Bool)

(declare-fun res!763585 () Bool)

(assert (=> b!1146958 (=> (not res!763585) (not e!652448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1146958 (= res!763585 (validKeyInArray!0 k0!934))))

(declare-fun b!1146959 () Bool)

(declare-fun arrayContainsKey!0 (array!74386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146959 (= e!652449 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!512377 () ListLongMap!16377)

(declare-fun c!113158 () Bool)

(declare-fun call!52676 () ListLongMap!16377)

(declare-fun bm!52670 () Bool)

(declare-fun +!3545 (ListLongMap!16377 tuple2!18396) ListLongMap!16377)

(assert (=> bm!52670 (= call!52676 (+!3545 lt!512377 (ite (or c!113156 c!113158) (tuple2!18397 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18397 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1146960 () Bool)

(declare-fun e!652456 () Unit!37594)

(declare-fun Unit!37597 () Unit!37594)

(assert (=> b!1146960 (= e!652456 Unit!37597)))

(declare-fun bm!52671 () Bool)

(declare-fun call!52679 () ListLongMap!16377)

(assert (=> bm!52671 (= call!52679 call!52676)))

(declare-fun bm!52672 () Bool)

(declare-fun call!52680 () Bool)

(declare-fun call!52677 () Bool)

(assert (=> bm!52672 (= call!52680 call!52677)))

(declare-fun b!1146961 () Bool)

(assert (=> b!1146961 (= e!652446 true)))

(declare-fun e!652450 () Bool)

(assert (=> b!1146961 e!652450))

(declare-fun res!763597 () Bool)

(assert (=> b!1146961 (=> (not res!763597) (not e!652450))))

(declare-fun lt!512371 () V!43515)

(declare-fun -!1294 (ListLongMap!16377 (_ BitVec 64)) ListLongMap!16377)

(assert (=> b!1146961 (= res!763597 (= (-!1294 (+!3545 lt!512377 (tuple2!18397 (select (arr!35840 _keys!1208) from!1455) lt!512371)) (select (arr!35840 _keys!1208) from!1455)) lt!512377))))

(declare-fun lt!512363 () Unit!37594)

(declare-fun addThenRemoveForNewKeyIsSame!145 (ListLongMap!16377 (_ BitVec 64) V!43515) Unit!37594)

(assert (=> b!1146961 (= lt!512363 (addThenRemoveForNewKeyIsSame!145 lt!512377 (select (arr!35840 _keys!1208) from!1455) lt!512371))))

(declare-fun get!18253 (ValueCell!13686 V!43515) V!43515)

(assert (=> b!1146961 (= lt!512371 (get!18253 (select (arr!35841 _values!996) from!1455) lt!512379))))

(declare-fun lt!512359 () Unit!37594)

(assert (=> b!1146961 (= lt!512359 e!652458)))

(declare-fun c!113160 () Bool)

(declare-fun contains!6702 (ListLongMap!16377 (_ BitVec 64)) Bool)

(assert (=> b!1146961 (= c!113160 (contains!6702 lt!512377 k0!934))))

(assert (=> b!1146961 (= lt!512377 (getCurrentListMapNoExtraKeys!4646 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146962 () Bool)

(declare-fun res!763588 () Bool)

(assert (=> b!1146962 (=> (not res!763588) (not e!652448))))

(assert (=> b!1146962 (= res!763588 (= (select (arr!35840 _keys!1208) i!673) k0!934))))

(declare-fun b!1146963 () Bool)

(declare-fun e!652457 () Unit!37594)

(assert (=> b!1146963 (= e!652457 e!652456)))

(declare-fun c!113159 () Bool)

(assert (=> b!1146963 (= c!113159 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!512374))))

(declare-fun b!1146964 () Bool)

(declare-fun lt!512364 () Unit!37594)

(assert (=> b!1146964 (= e!652457 lt!512364)))

(declare-fun call!52678 () Unit!37594)

(assert (=> b!1146964 (= lt!512364 call!52678)))

(assert (=> b!1146964 call!52680))

(declare-fun b!1146965 () Bool)

(assert (=> b!1146965 (= e!652447 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512374) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1146966 () Bool)

(declare-fun Unit!37598 () Unit!37594)

(assert (=> b!1146966 (= e!652458 Unit!37598)))

(declare-fun b!1146967 () Bool)

(declare-fun e!652455 () Bool)

(assert (=> b!1146967 (= e!652455 (not e!652445))))

(declare-fun res!763589 () Bool)

(assert (=> b!1146967 (=> res!763589 e!652445)))

(assert (=> b!1146967 (= res!763589 (bvsgt from!1455 i!673))))

(assert (=> b!1146967 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!512373 () Unit!37594)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74386 (_ BitVec 64) (_ BitVec 32)) Unit!37594)

(assert (=> b!1146967 (= lt!512373 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!52673 () Bool)

(declare-fun call!52675 () ListLongMap!16377)

(assert (=> bm!52673 (= call!52675 (getCurrentListMapNoExtraKeys!4646 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45011 () Bool)

(declare-fun mapRes!45011 () Bool)

(assert (=> mapIsEmpty!45011 mapRes!45011))

(declare-fun call!52674 () Unit!37594)

(declare-fun bm!52674 () Bool)

(declare-fun addStillContains!843 (ListLongMap!16377 (_ BitVec 64) V!43515 (_ BitVec 64)) Unit!37594)

(assert (=> bm!52674 (= call!52674 (addStillContains!843 lt!512377 (ite (or c!113156 c!113158) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113156 c!113158) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!52675 () Bool)

(declare-fun call!52673 () ListLongMap!16377)

(assert (=> bm!52675 (= call!52673 (getCurrentListMapNoExtraKeys!4646 lt!512375 lt!512365 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146968 () Bool)

(declare-fun e!652442 () Bool)

(declare-fun tp_is_empty!28791 () Bool)

(assert (=> b!1146968 (= e!652442 tp_is_empty!28791)))

(declare-fun b!1146969 () Bool)

(declare-fun lt!512361 () ListLongMap!16377)

(assert (=> b!1146969 (contains!6702 (+!3545 lt!512361 (tuple2!18397 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!512366 () Unit!37594)

(assert (=> b!1146969 (= lt!512366 (addStillContains!843 lt!512361 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1146969 call!52677))

(assert (=> b!1146969 (= lt!512361 call!52676)))

(declare-fun lt!512360 () Unit!37594)

(assert (=> b!1146969 (= lt!512360 call!52674)))

(assert (=> b!1146969 (= e!652443 lt!512366)))

(declare-fun b!1146970 () Bool)

(declare-fun res!763590 () Bool)

(assert (=> b!1146970 (=> (not res!763590) (not e!652448))))

(assert (=> b!1146970 (= res!763590 (and (= (size!36378 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36377 _keys!1208) (size!36378 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1146971 () Bool)

(declare-fun res!763594 () Bool)

(assert (=> b!1146971 (=> (not res!763594) (not e!652455))))

(assert (=> b!1146971 (= res!763594 (arrayNoDuplicates!0 lt!512375 #b00000000000000000000000000000000 Nil!25190))))

(declare-fun b!1146972 () Bool)

(declare-fun res!763584 () Bool)

(assert (=> b!1146972 (=> (not res!763584) (not e!652448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74386 (_ BitVec 32)) Bool)

(assert (=> b!1146972 (= res!763584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1146973 () Bool)

(assert (=> b!1146973 (= e!652448 e!652455)))

(declare-fun res!763593 () Bool)

(assert (=> b!1146973 (=> (not res!763593) (not e!652455))))

(assert (=> b!1146973 (= res!763593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512375 mask!1564))))

(assert (=> b!1146973 (= lt!512375 (array!74387 (store (arr!35840 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36377 _keys!1208)))))

(declare-fun b!1146974 () Bool)

(declare-fun res!763591 () Bool)

(assert (=> b!1146974 (=> (not res!763591) (not e!652448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146974 (= res!763591 (validMask!0 mask!1564))))

(declare-fun b!1146975 () Bool)

(assert (=> b!1146975 (= e!652444 (= call!52673 call!52675))))

(declare-fun mapNonEmpty!45011 () Bool)

(declare-fun tp!85494 () Bool)

(assert (=> mapNonEmpty!45011 (= mapRes!45011 (and tp!85494 e!652442))))

(declare-fun mapValue!45011 () ValueCell!13686)

(declare-fun mapRest!45011 () (Array (_ BitVec 32) ValueCell!13686))

(declare-fun mapKey!45011 () (_ BitVec 32))

(assert (=> mapNonEmpty!45011 (= (arr!35841 _values!996) (store mapRest!45011 mapKey!45011 mapValue!45011))))

(declare-fun b!1146976 () Bool)

(assert (=> b!1146976 call!52680))

(declare-fun lt!512369 () Unit!37594)

(assert (=> b!1146976 (= lt!512369 call!52678)))

(assert (=> b!1146976 (= e!652456 lt!512369)))

(declare-fun bm!52676 () Bool)

(assert (=> bm!52676 (= call!52677 (contains!6702 (ite c!113156 lt!512361 call!52679) k0!934))))

(declare-fun b!1146977 () Bool)

(declare-fun res!763596 () Bool)

(assert (=> b!1146977 (=> (not res!763596) (not e!652448))))

(assert (=> b!1146977 (= res!763596 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36377 _keys!1208))))))

(declare-fun res!763595 () Bool)

(assert (=> start!98692 (=> (not res!763595) (not e!652448))))

(assert (=> start!98692 (= res!763595 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36377 _keys!1208))))))

(assert (=> start!98692 e!652448))

(assert (=> start!98692 tp_is_empty!28791))

(declare-fun array_inv!27336 (array!74386) Bool)

(assert (=> start!98692 (array_inv!27336 _keys!1208)))

(assert (=> start!98692 true))

(assert (=> start!98692 tp!85495))

(declare-fun e!652454 () Bool)

(declare-fun array_inv!27337 (array!74388) Bool)

(assert (=> start!98692 (and (array_inv!27337 _values!996) e!652454)))

(declare-fun b!1146978 () Bool)

(assert (=> b!1146978 (= e!652444 (= call!52673 (-!1294 call!52675 k0!934)))))

(declare-fun b!1146979 () Bool)

(declare-fun e!652452 () Bool)

(assert (=> b!1146979 (= e!652454 (and e!652452 mapRes!45011))))

(declare-fun condMapEmpty!45011 () Bool)

(declare-fun mapDefault!45011 () ValueCell!13686)

(assert (=> b!1146979 (= condMapEmpty!45011 (= (arr!35841 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13686)) mapDefault!45011)))))

(declare-fun b!1146980 () Bool)

(assert (=> b!1146980 (= e!652452 tp_is_empty!28791)))

(declare-fun b!1146981 () Bool)

(assert (=> b!1146981 (= e!652450 (= (-!1294 lt!512372 k0!934) lt!512377))))

(declare-fun b!1146982 () Bool)

(assert (=> b!1146982 (= e!652447 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52677 () Bool)

(assert (=> bm!52677 (= call!52678 call!52674)))

(declare-fun b!1146983 () Bool)

(assert (=> b!1146983 (= c!113158 (and (not lt!512374) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1146983 (= e!652443 e!652457)))

(assert (= (and start!98692 res!763595) b!1146974))

(assert (= (and b!1146974 res!763591) b!1146970))

(assert (= (and b!1146970 res!763590) b!1146972))

(assert (= (and b!1146972 res!763584) b!1146957))

(assert (= (and b!1146957 res!763586) b!1146977))

(assert (= (and b!1146977 res!763596) b!1146958))

(assert (= (and b!1146958 res!763585) b!1146962))

(assert (= (and b!1146962 res!763588) b!1146973))

(assert (= (and b!1146973 res!763593) b!1146971))

(assert (= (and b!1146971 res!763594) b!1146967))

(assert (= (and b!1146967 (not res!763589)) b!1146955))

(assert (= (and b!1146955 (not res!763592)) b!1146954))

(assert (= (and b!1146954 c!113155) b!1146978))

(assert (= (and b!1146954 (not c!113155)) b!1146975))

(assert (= (or b!1146978 b!1146975) bm!52675))

(assert (= (or b!1146978 b!1146975) bm!52673))

(assert (= (and b!1146954 (not res!763587)) b!1146961))

(assert (= (and b!1146961 c!113160) b!1146956))

(assert (= (and b!1146961 (not c!113160)) b!1146966))

(assert (= (and b!1146956 c!113156) b!1146969))

(assert (= (and b!1146956 (not c!113156)) b!1146983))

(assert (= (and b!1146983 c!113158) b!1146964))

(assert (= (and b!1146983 (not c!113158)) b!1146963))

(assert (= (and b!1146963 c!113159) b!1146976))

(assert (= (and b!1146963 (not c!113159)) b!1146960))

(assert (= (or b!1146964 b!1146976) bm!52677))

(assert (= (or b!1146964 b!1146976) bm!52671))

(assert (= (or b!1146964 b!1146976) bm!52672))

(assert (= (or b!1146969 bm!52672) bm!52676))

(assert (= (or b!1146969 bm!52677) bm!52674))

(assert (= (or b!1146969 bm!52671) bm!52670))

(assert (= (and b!1146956 c!113157) b!1146982))

(assert (= (and b!1146956 (not c!113157)) b!1146965))

(assert (= (and b!1146956 res!763598) b!1146959))

(assert (= (and b!1146961 res!763597) b!1146981))

(assert (= (and b!1146979 condMapEmpty!45011) mapIsEmpty!45011))

(assert (= (and b!1146979 (not condMapEmpty!45011)) mapNonEmpty!45011))

(get-info :version)

(assert (= (and mapNonEmpty!45011 ((_ is ValueCellFull!13686) mapValue!45011)) b!1146968))

(assert (= (and b!1146979 ((_ is ValueCellFull!13686) mapDefault!45011)) b!1146980))

(assert (= start!98692 b!1146979))

(declare-fun b_lambda!19385 () Bool)

(assert (=> (not b_lambda!19385) (not b!1146955)))

(declare-fun t!36451 () Bool)

(declare-fun tb!9081 () Bool)

(assert (=> (and start!98692 (= defaultEntry!1004 defaultEntry!1004) t!36451) tb!9081))

(declare-fun result!18719 () Bool)

(assert (=> tb!9081 (= result!18719 tp_is_empty!28791)))

(assert (=> b!1146955 t!36451))

(declare-fun b_and!39387 () Bool)

(assert (= b_and!39385 (and (=> t!36451 result!18719) b_and!39387)))

(declare-fun m!1057693 () Bool)

(assert (=> bm!52675 m!1057693))

(declare-fun m!1057695 () Bool)

(assert (=> b!1146978 m!1057695))

(declare-fun m!1057697 () Bool)

(assert (=> b!1146956 m!1057697))

(declare-fun m!1057699 () Bool)

(assert (=> b!1146956 m!1057699))

(declare-fun m!1057701 () Bool)

(assert (=> b!1146956 m!1057701))

(declare-fun m!1057703 () Bool)

(assert (=> b!1146956 m!1057703))

(declare-fun m!1057705 () Bool)

(assert (=> bm!52674 m!1057705))

(declare-fun m!1057707 () Bool)

(assert (=> b!1146974 m!1057707))

(declare-fun m!1057709 () Bool)

(assert (=> b!1146982 m!1057709))

(declare-fun m!1057711 () Bool)

(assert (=> bm!52670 m!1057711))

(declare-fun m!1057713 () Bool)

(assert (=> b!1146957 m!1057713))

(declare-fun m!1057715 () Bool)

(assert (=> bm!52673 m!1057715))

(assert (=> b!1146959 m!1057709))

(declare-fun m!1057717 () Bool)

(assert (=> b!1146967 m!1057717))

(declare-fun m!1057719 () Bool)

(assert (=> b!1146967 m!1057719))

(declare-fun m!1057721 () Bool)

(assert (=> b!1146971 m!1057721))

(declare-fun m!1057723 () Bool)

(assert (=> b!1146954 m!1057723))

(declare-fun m!1057725 () Bool)

(assert (=> b!1146954 m!1057725))

(assert (=> b!1146961 m!1057715))

(declare-fun m!1057727 () Bool)

(assert (=> b!1146961 m!1057727))

(declare-fun m!1057729 () Bool)

(assert (=> b!1146961 m!1057729))

(declare-fun m!1057731 () Bool)

(assert (=> b!1146961 m!1057731))

(assert (=> b!1146961 m!1057731))

(assert (=> b!1146961 m!1057723))

(declare-fun m!1057733 () Bool)

(assert (=> b!1146961 m!1057733))

(assert (=> b!1146961 m!1057727))

(declare-fun m!1057735 () Bool)

(assert (=> b!1146961 m!1057735))

(assert (=> b!1146961 m!1057723))

(declare-fun m!1057737 () Bool)

(assert (=> b!1146961 m!1057737))

(assert (=> b!1146961 m!1057723))

(declare-fun m!1057739 () Bool)

(assert (=> b!1146981 m!1057739))

(declare-fun m!1057741 () Bool)

(assert (=> mapNonEmpty!45011 m!1057741))

(declare-fun m!1057743 () Bool)

(assert (=> b!1146969 m!1057743))

(assert (=> b!1146969 m!1057743))

(declare-fun m!1057745 () Bool)

(assert (=> b!1146969 m!1057745))

(declare-fun m!1057747 () Bool)

(assert (=> b!1146969 m!1057747))

(declare-fun m!1057749 () Bool)

(assert (=> b!1146962 m!1057749))

(declare-fun m!1057751 () Bool)

(assert (=> b!1146973 m!1057751))

(declare-fun m!1057753 () Bool)

(assert (=> b!1146973 m!1057753))

(declare-fun m!1057755 () Bool)

(assert (=> start!98692 m!1057755))

(declare-fun m!1057757 () Bool)

(assert (=> start!98692 m!1057757))

(declare-fun m!1057759 () Bool)

(assert (=> b!1146958 m!1057759))

(declare-fun m!1057761 () Bool)

(assert (=> b!1146972 m!1057761))

(declare-fun m!1057763 () Bool)

(assert (=> bm!52676 m!1057763))

(declare-fun m!1057765 () Bool)

(assert (=> b!1146955 m!1057765))

(declare-fun m!1057767 () Bool)

(assert (=> b!1146955 m!1057767))

(declare-fun m!1057769 () Bool)

(assert (=> b!1146955 m!1057769))

(declare-fun m!1057771 () Bool)

(assert (=> b!1146955 m!1057771))

(check-sat (not b!1146972) (not bm!52674) (not b!1146981) b_and!39387 (not b!1146955) (not b!1146961) (not bm!52670) (not mapNonEmpty!45011) (not b!1146978) (not b!1146958) (not bm!52673) (not b!1146954) (not b!1146956) (not b!1146969) (not bm!52676) (not b!1146959) tp_is_empty!28791 (not b!1146982) (not b!1146973) (not b_next!24261) (not b!1146971) (not b!1146974) (not b!1146967) (not b!1146957) (not bm!52675) (not b_lambda!19385) (not start!98692))
(check-sat b_and!39387 (not b_next!24261))
