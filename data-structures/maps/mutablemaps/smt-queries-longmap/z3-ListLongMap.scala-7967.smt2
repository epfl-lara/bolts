; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98680 () Bool)

(assert start!98680)

(declare-fun b_free!24249 () Bool)

(declare-fun b_next!24249 () Bool)

(assert (=> start!98680 (= b_free!24249 (not b_next!24249))))

(declare-fun tp!85459 () Bool)

(declare-fun b_and!39361 () Bool)

(assert (=> start!98680 (= tp!85459 b_and!39361)))

(declare-fun b!1146402 () Bool)

(declare-fun res!763326 () Bool)

(declare-fun e!652150 () Bool)

(assert (=> b!1146402 (=> (not res!763326) (not e!652150))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1146402 (= res!763326 (validKeyInArray!0 k0!934))))

(declare-fun b!1146403 () Bool)

(declare-fun e!652146 () Bool)

(declare-fun e!652136 () Bool)

(assert (=> b!1146403 (= e!652146 (not e!652136))))

(declare-fun res!763325 () Bool)

(assert (=> b!1146403 (=> res!763325 e!652136)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146403 (= res!763325 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74364 0))(
  ( (array!74365 (arr!35829 (Array (_ BitVec 32) (_ BitVec 64))) (size!36366 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74364)

(declare-fun arrayContainsKey!0 (array!74364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146403 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37573 0))(
  ( (Unit!37574) )
))
(declare-fun lt!511982 () Unit!37573)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74364 (_ BitVec 64) (_ BitVec 32)) Unit!37573)

(assert (=> b!1146403 (= lt!511982 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!43499 0))(
  ( (V!43500 (val!14446 Int)) )
))
(declare-datatypes ((tuple2!18386 0))(
  ( (tuple2!18387 (_1!9203 (_ BitVec 64)) (_2!9203 V!43499)) )
))
(declare-datatypes ((List!25183 0))(
  ( (Nil!25180) (Cons!25179 (h!26388 tuple2!18386) (t!36431 List!25183)) )
))
(declare-datatypes ((ListLongMap!16367 0))(
  ( (ListLongMap!16368 (toList!8199 List!25183)) )
))
(declare-fun call!52529 () ListLongMap!16367)

(declare-fun call!52534 () Bool)

(declare-fun bm!52526 () Bool)

(declare-fun lt!511999 () ListLongMap!16367)

(declare-fun c!113051 () Bool)

(declare-fun contains!6698 (ListLongMap!16367 (_ BitVec 64)) Bool)

(assert (=> bm!52526 (= call!52534 (contains!6698 (ite c!113051 lt!511999 call!52529) k0!934))))

(declare-fun mapIsEmpty!44993 () Bool)

(declare-fun mapRes!44993 () Bool)

(assert (=> mapIsEmpty!44993 mapRes!44993))

(declare-fun b!1146404 () Bool)

(declare-fun res!763324 () Bool)

(assert (=> b!1146404 (=> (not res!763324) (not e!652150))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13680 0))(
  ( (ValueCellFull!13680 (v!17084 V!43499)) (EmptyCell!13680) )
))
(declare-datatypes ((array!74366 0))(
  ( (array!74367 (arr!35830 (Array (_ BitVec 32) ValueCell!13680)) (size!36367 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74366)

(assert (=> b!1146404 (= res!763324 (and (= (size!36367 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36366 _keys!1208) (size!36367 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1146405 () Bool)

(declare-fun res!763322 () Bool)

(assert (=> b!1146405 (=> (not res!763322) (not e!652150))))

(assert (=> b!1146405 (= res!763322 (= (select (arr!35829 _keys!1208) i!673) k0!934))))

(declare-fun b!1146406 () Bool)

(declare-fun res!763320 () Bool)

(assert (=> b!1146406 (=> (not res!763320) (not e!652150))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74364 (_ BitVec 32)) Bool)

(assert (=> b!1146406 (= res!763320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!44993 () Bool)

(declare-fun tp!85458 () Bool)

(declare-fun e!652137 () Bool)

(assert (=> mapNonEmpty!44993 (= mapRes!44993 (and tp!85458 e!652137))))

(declare-fun mapValue!44993 () ValueCell!13680)

(declare-fun mapKey!44993 () (_ BitVec 32))

(declare-fun mapRest!44993 () (Array (_ BitVec 32) ValueCell!13680))

(assert (=> mapNonEmpty!44993 (= (arr!35830 _values!996) (store mapRest!44993 mapKey!44993 mapValue!44993))))

(declare-fun b!1146407 () Bool)

(declare-fun e!652138 () Bool)

(declare-fun call!52535 () ListLongMap!16367)

(declare-fun call!52536 () ListLongMap!16367)

(assert (=> b!1146407 (= e!652138 (= call!52535 call!52536))))

(declare-fun b!1146409 () Bool)

(declare-fun e!652149 () Unit!37573)

(declare-fun lt!511993 () Unit!37573)

(assert (=> b!1146409 (= e!652149 lt!511993)))

(declare-fun call!52533 () Unit!37573)

(assert (=> b!1146409 (= lt!511993 call!52533)))

(declare-fun call!52530 () Bool)

(assert (=> b!1146409 call!52530))

(declare-fun b!1146410 () Bool)

(declare-fun e!652151 () Bool)

(assert (=> b!1146410 (= e!652151 true)))

(declare-fun e!652139 () Bool)

(assert (=> b!1146410 e!652139))

(declare-fun res!763314 () Bool)

(assert (=> b!1146410 (=> (not res!763314) (not e!652139))))

(declare-fun lt!511998 () ListLongMap!16367)

(declare-fun lt!511989 () V!43499)

(declare-fun -!1289 (ListLongMap!16367 (_ BitVec 64)) ListLongMap!16367)

(declare-fun +!3541 (ListLongMap!16367 tuple2!18386) ListLongMap!16367)

(assert (=> b!1146410 (= res!763314 (= (-!1289 (+!3541 lt!511998 (tuple2!18387 (select (arr!35829 _keys!1208) from!1455) lt!511989)) (select (arr!35829 _keys!1208) from!1455)) lt!511998))))

(declare-fun lt!511997 () Unit!37573)

(declare-fun addThenRemoveForNewKeyIsSame!142 (ListLongMap!16367 (_ BitVec 64) V!43499) Unit!37573)

(assert (=> b!1146410 (= lt!511997 (addThenRemoveForNewKeyIsSame!142 lt!511998 (select (arr!35829 _keys!1208) from!1455) lt!511989))))

(declare-fun lt!511990 () V!43499)

(declare-fun get!18246 (ValueCell!13680 V!43499) V!43499)

(assert (=> b!1146410 (= lt!511989 (get!18246 (select (arr!35830 _values!996) from!1455) lt!511990))))

(declare-fun lt!511987 () Unit!37573)

(declare-fun e!652141 () Unit!37573)

(assert (=> b!1146410 (= lt!511987 e!652141)))

(declare-fun c!113047 () Bool)

(assert (=> b!1146410 (= c!113047 (contains!6698 lt!511998 k0!934))))

(declare-fun zeroValue!944 () V!43499)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43499)

(declare-fun getCurrentListMapNoExtraKeys!4641 (array!74364 array!74366 (_ BitVec 32) (_ BitVec 32) V!43499 V!43499 (_ BitVec 32) Int) ListLongMap!16367)

(assert (=> b!1146410 (= lt!511998 (getCurrentListMapNoExtraKeys!4641 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52527 () Bool)

(declare-fun call!52532 () Unit!37573)

(assert (=> bm!52527 (= call!52533 call!52532)))

(declare-fun b!1146411 () Bool)

(declare-fun e!652148 () Bool)

(assert (=> b!1146411 (= e!652136 e!652148)))

(declare-fun res!763328 () Bool)

(assert (=> b!1146411 (=> res!763328 e!652148)))

(assert (=> b!1146411 (= res!763328 (not (= from!1455 i!673)))))

(declare-fun lt!511985 () ListLongMap!16367)

(declare-fun lt!511996 () array!74364)

(declare-fun lt!511991 () array!74366)

(assert (=> b!1146411 (= lt!511985 (getCurrentListMapNoExtraKeys!4641 lt!511996 lt!511991 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1146411 (= lt!511991 (array!74367 (store (arr!35830 _values!996) i!673 (ValueCellFull!13680 lt!511990)) (size!36367 _values!996)))))

(declare-fun dynLambda!2680 (Int (_ BitVec 64)) V!43499)

(assert (=> b!1146411 (= lt!511990 (dynLambda!2680 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!511988 () ListLongMap!16367)

(assert (=> b!1146411 (= lt!511988 (getCurrentListMapNoExtraKeys!4641 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511984 () Bool)

(declare-fun b!1146412 () Bool)

(declare-fun e!652143 () Bool)

(assert (=> b!1146412 (= e!652143 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511984) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1146413 () Bool)

(assert (=> b!1146413 (= e!652150 e!652146)))

(declare-fun res!763327 () Bool)

(assert (=> b!1146413 (=> (not res!763327) (not e!652146))))

(assert (=> b!1146413 (= res!763327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511996 mask!1564))))

(assert (=> b!1146413 (= lt!511996 (array!74365 (store (arr!35829 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36366 _keys!1208)))))

(declare-fun b!1146414 () Bool)

(declare-fun c!113052 () Bool)

(assert (=> b!1146414 (= c!113052 (and (not lt!511984) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652144 () Unit!37573)

(assert (=> b!1146414 (= e!652144 e!652149)))

(declare-fun b!1146415 () Bool)

(declare-fun res!763323 () Bool)

(assert (=> b!1146415 (=> (not res!763323) (not e!652150))))

(declare-datatypes ((List!25184 0))(
  ( (Nil!25181) (Cons!25180 (h!26389 (_ BitVec 64)) (t!36432 List!25184)) )
))
(declare-fun arrayNoDuplicates!0 (array!74364 (_ BitVec 32) List!25184) Bool)

(assert (=> b!1146415 (= res!763323 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25181))))

(declare-fun bm!52528 () Bool)

(assert (=> bm!52528 (= call!52535 (getCurrentListMapNoExtraKeys!4641 lt!511996 lt!511991 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146416 () Bool)

(declare-fun e!652152 () Bool)

(declare-fun tp_is_empty!28779 () Bool)

(assert (=> b!1146416 (= e!652152 tp_is_empty!28779)))

(declare-fun b!1146417 () Bool)

(declare-fun e!652142 () Unit!37573)

(assert (=> b!1146417 (= e!652149 e!652142)))

(declare-fun c!113050 () Bool)

(assert (=> b!1146417 (= c!113050 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511984))))

(declare-fun b!1146418 () Bool)

(declare-fun res!763318 () Bool)

(assert (=> b!1146418 (=> (not res!763318) (not e!652150))))

(assert (=> b!1146418 (= res!763318 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36366 _keys!1208))))))

(declare-fun b!1146419 () Bool)

(declare-fun Unit!37575 () Unit!37573)

(assert (=> b!1146419 (= e!652141 Unit!37575)))

(declare-fun bm!52529 () Bool)

(declare-fun addStillContains!838 (ListLongMap!16367 (_ BitVec 64) V!43499 (_ BitVec 64)) Unit!37573)

(assert (=> bm!52529 (= call!52532 (addStillContains!838 lt!511998 (ite (or c!113051 c!113052) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113051 c!113052) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!52530 () Bool)

(declare-fun call!52531 () ListLongMap!16367)

(assert (=> bm!52530 (= call!52529 call!52531)))

(declare-fun b!1146420 () Bool)

(declare-fun res!763315 () Bool)

(assert (=> b!1146420 (=> (not res!763315) (not e!652146))))

(assert (=> b!1146420 (= res!763315 (arrayNoDuplicates!0 lt!511996 #b00000000000000000000000000000000 Nil!25181))))

(declare-fun b!1146421 () Bool)

(assert (=> b!1146421 (= e!652148 e!652151)))

(declare-fun res!763317 () Bool)

(assert (=> b!1146421 (=> res!763317 e!652151)))

(assert (=> b!1146421 (= res!763317 (not (= (select (arr!35829 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1146421 e!652138))

(declare-fun c!113048 () Bool)

(assert (=> b!1146421 (= c!113048 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512001 () Unit!37573)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!540 (array!74364 array!74366 (_ BitVec 32) (_ BitVec 32) V!43499 V!43499 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37573)

(assert (=> b!1146421 (= lt!512001 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!540 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146422 () Bool)

(assert (=> b!1146422 call!52530))

(declare-fun lt!511994 () Unit!37573)

(assert (=> b!1146422 (= lt!511994 call!52533)))

(assert (=> b!1146422 (= e!652142 lt!511994)))

(declare-fun b!1146423 () Bool)

(declare-fun e!652147 () Bool)

(assert (=> b!1146423 (= e!652147 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52531 () Bool)

(assert (=> bm!52531 (= call!52531 (+!3541 (ite c!113051 lt!511999 lt!511998) (ite c!113051 (tuple2!18387 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113052 (tuple2!18387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18387 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146424 () Bool)

(assert (=> b!1146424 (contains!6698 call!52531 k0!934)))

(declare-fun lt!511995 () Unit!37573)

(assert (=> b!1146424 (= lt!511995 (addStillContains!838 lt!511999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1146424 call!52534))

(assert (=> b!1146424 (= lt!511999 (+!3541 lt!511998 (tuple2!18387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511992 () Unit!37573)

(assert (=> b!1146424 (= lt!511992 call!52532)))

(assert (=> b!1146424 (= e!652144 lt!511995)))

(declare-fun b!1146425 () Bool)

(declare-fun res!763321 () Bool)

(assert (=> b!1146425 (=> (not res!763321) (not e!652150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146425 (= res!763321 (validMask!0 mask!1564))))

(declare-fun b!1146426 () Bool)

(assert (=> b!1146426 (= e!652139 (= (-!1289 lt!511988 k0!934) lt!511998))))

(declare-fun b!1146427 () Bool)

(assert (=> b!1146427 (= e!652137 tp_is_empty!28779)))

(declare-fun bm!52532 () Bool)

(assert (=> bm!52532 (= call!52536 (getCurrentListMapNoExtraKeys!4641 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52533 () Bool)

(assert (=> bm!52533 (= call!52530 call!52534)))

(declare-fun b!1146428 () Bool)

(assert (=> b!1146428 (= e!652138 (= call!52535 (-!1289 call!52536 k0!934)))))

(declare-fun b!1146429 () Bool)

(declare-fun Unit!37576 () Unit!37573)

(assert (=> b!1146429 (= e!652142 Unit!37576)))

(declare-fun b!1146408 () Bool)

(assert (=> b!1146408 (= e!652143 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!763316 () Bool)

(assert (=> start!98680 (=> (not res!763316) (not e!652150))))

(assert (=> start!98680 (= res!763316 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36366 _keys!1208))))))

(assert (=> start!98680 e!652150))

(assert (=> start!98680 tp_is_empty!28779))

(declare-fun array_inv!27328 (array!74364) Bool)

(assert (=> start!98680 (array_inv!27328 _keys!1208)))

(assert (=> start!98680 true))

(assert (=> start!98680 tp!85459))

(declare-fun e!652140 () Bool)

(declare-fun array_inv!27329 (array!74366) Bool)

(assert (=> start!98680 (and (array_inv!27329 _values!996) e!652140)))

(declare-fun b!1146430 () Bool)

(assert (=> b!1146430 (= e!652140 (and e!652152 mapRes!44993))))

(declare-fun condMapEmpty!44993 () Bool)

(declare-fun mapDefault!44993 () ValueCell!13680)

(assert (=> b!1146430 (= condMapEmpty!44993 (= (arr!35830 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13680)) mapDefault!44993)))))

(declare-fun b!1146431 () Bool)

(declare-fun Unit!37577 () Unit!37573)

(assert (=> b!1146431 (= e!652141 Unit!37577)))

(assert (=> b!1146431 (= lt!511984 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1146431 (= c!113051 (and (not lt!511984) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512000 () Unit!37573)

(assert (=> b!1146431 (= lt!512000 e!652144)))

(declare-fun lt!511986 () Unit!37573)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!430 (array!74364 array!74366 (_ BitVec 32) (_ BitVec 32) V!43499 V!43499 (_ BitVec 64) (_ BitVec 32) Int) Unit!37573)

(assert (=> b!1146431 (= lt!511986 (lemmaListMapContainsThenArrayContainsFrom!430 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113049 () Bool)

(assert (=> b!1146431 (= c!113049 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763319 () Bool)

(assert (=> b!1146431 (= res!763319 e!652143)))

(assert (=> b!1146431 (=> (not res!763319) (not e!652147))))

(assert (=> b!1146431 e!652147))

(declare-fun lt!511983 () Unit!37573)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74364 (_ BitVec 32) (_ BitVec 32)) Unit!37573)

(assert (=> b!1146431 (= lt!511983 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1146431 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25181)))

(declare-fun lt!511981 () Unit!37573)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74364 (_ BitVec 64) (_ BitVec 32) List!25184) Unit!37573)

(assert (=> b!1146431 (= lt!511981 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25181))))

(assert (=> b!1146431 false))

(assert (= (and start!98680 res!763316) b!1146425))

(assert (= (and b!1146425 res!763321) b!1146404))

(assert (= (and b!1146404 res!763324) b!1146406))

(assert (= (and b!1146406 res!763320) b!1146415))

(assert (= (and b!1146415 res!763323) b!1146418))

(assert (= (and b!1146418 res!763318) b!1146402))

(assert (= (and b!1146402 res!763326) b!1146405))

(assert (= (and b!1146405 res!763322) b!1146413))

(assert (= (and b!1146413 res!763327) b!1146420))

(assert (= (and b!1146420 res!763315) b!1146403))

(assert (= (and b!1146403 (not res!763325)) b!1146411))

(assert (= (and b!1146411 (not res!763328)) b!1146421))

(assert (= (and b!1146421 c!113048) b!1146428))

(assert (= (and b!1146421 (not c!113048)) b!1146407))

(assert (= (or b!1146428 b!1146407) bm!52528))

(assert (= (or b!1146428 b!1146407) bm!52532))

(assert (= (and b!1146421 (not res!763317)) b!1146410))

(assert (= (and b!1146410 c!113047) b!1146431))

(assert (= (and b!1146410 (not c!113047)) b!1146419))

(assert (= (and b!1146431 c!113051) b!1146424))

(assert (= (and b!1146431 (not c!113051)) b!1146414))

(assert (= (and b!1146414 c!113052) b!1146409))

(assert (= (and b!1146414 (not c!113052)) b!1146417))

(assert (= (and b!1146417 c!113050) b!1146422))

(assert (= (and b!1146417 (not c!113050)) b!1146429))

(assert (= (or b!1146409 b!1146422) bm!52527))

(assert (= (or b!1146409 b!1146422) bm!52530))

(assert (= (or b!1146409 b!1146422) bm!52533))

(assert (= (or b!1146424 bm!52533) bm!52526))

(assert (= (or b!1146424 bm!52527) bm!52529))

(assert (= (or b!1146424 bm!52530) bm!52531))

(assert (= (and b!1146431 c!113049) b!1146408))

(assert (= (and b!1146431 (not c!113049)) b!1146412))

(assert (= (and b!1146431 res!763319) b!1146423))

(assert (= (and b!1146410 res!763314) b!1146426))

(assert (= (and b!1146430 condMapEmpty!44993) mapIsEmpty!44993))

(assert (= (and b!1146430 (not condMapEmpty!44993)) mapNonEmpty!44993))

(get-info :version)

(assert (= (and mapNonEmpty!44993 ((_ is ValueCellFull!13680) mapValue!44993)) b!1146427))

(assert (= (and b!1146430 ((_ is ValueCellFull!13680) mapDefault!44993)) b!1146416))

(assert (= start!98680 b!1146430))

(declare-fun b_lambda!19373 () Bool)

(assert (=> (not b_lambda!19373) (not b!1146411)))

(declare-fun t!36430 () Bool)

(declare-fun tb!9069 () Bool)

(assert (=> (and start!98680 (= defaultEntry!1004 defaultEntry!1004) t!36430) tb!9069))

(declare-fun result!18695 () Bool)

(assert (=> tb!9069 (= result!18695 tp_is_empty!28779)))

(assert (=> b!1146411 t!36430))

(declare-fun b_and!39363 () Bool)

(assert (= b_and!39361 (and (=> t!36430 result!18695) b_and!39363)))

(declare-fun m!1057211 () Bool)

(assert (=> b!1146428 m!1057211))

(declare-fun m!1057213 () Bool)

(assert (=> bm!52531 m!1057213))

(declare-fun m!1057215 () Bool)

(assert (=> start!98680 m!1057215))

(declare-fun m!1057217 () Bool)

(assert (=> start!98680 m!1057217))

(declare-fun m!1057219 () Bool)

(assert (=> b!1146431 m!1057219))

(declare-fun m!1057221 () Bool)

(assert (=> b!1146431 m!1057221))

(declare-fun m!1057223 () Bool)

(assert (=> b!1146431 m!1057223))

(declare-fun m!1057225 () Bool)

(assert (=> b!1146431 m!1057225))

(declare-fun m!1057227 () Bool)

(assert (=> b!1146403 m!1057227))

(declare-fun m!1057229 () Bool)

(assert (=> b!1146403 m!1057229))

(declare-fun m!1057231 () Bool)

(assert (=> b!1146415 m!1057231))

(declare-fun m!1057233 () Bool)

(assert (=> b!1146402 m!1057233))

(declare-fun m!1057235 () Bool)

(assert (=> bm!52529 m!1057235))

(declare-fun m!1057237 () Bool)

(assert (=> b!1146413 m!1057237))

(declare-fun m!1057239 () Bool)

(assert (=> b!1146413 m!1057239))

(declare-fun m!1057241 () Bool)

(assert (=> b!1146410 m!1057241))

(declare-fun m!1057243 () Bool)

(assert (=> b!1146410 m!1057243))

(declare-fun m!1057245 () Bool)

(assert (=> b!1146410 m!1057245))

(declare-fun m!1057247 () Bool)

(assert (=> b!1146410 m!1057247))

(declare-fun m!1057249 () Bool)

(assert (=> b!1146410 m!1057249))

(declare-fun m!1057251 () Bool)

(assert (=> b!1146410 m!1057251))

(assert (=> b!1146410 m!1057247))

(declare-fun m!1057253 () Bool)

(assert (=> b!1146410 m!1057253))

(assert (=> b!1146410 m!1057245))

(assert (=> b!1146410 m!1057243))

(declare-fun m!1057255 () Bool)

(assert (=> b!1146410 m!1057255))

(assert (=> b!1146410 m!1057247))

(declare-fun m!1057257 () Bool)

(assert (=> b!1146411 m!1057257))

(declare-fun m!1057259 () Bool)

(assert (=> b!1146411 m!1057259))

(declare-fun m!1057261 () Bool)

(assert (=> b!1146411 m!1057261))

(declare-fun m!1057263 () Bool)

(assert (=> b!1146411 m!1057263))

(declare-fun m!1057265 () Bool)

(assert (=> b!1146408 m!1057265))

(declare-fun m!1057267 () Bool)

(assert (=> mapNonEmpty!44993 m!1057267))

(declare-fun m!1057269 () Bool)

(assert (=> b!1146426 m!1057269))

(assert (=> bm!52532 m!1057241))

(declare-fun m!1057271 () Bool)

(assert (=> b!1146425 m!1057271))

(assert (=> b!1146423 m!1057265))

(declare-fun m!1057273 () Bool)

(assert (=> b!1146420 m!1057273))

(declare-fun m!1057275 () Bool)

(assert (=> b!1146405 m!1057275))

(declare-fun m!1057277 () Bool)

(assert (=> bm!52528 m!1057277))

(declare-fun m!1057279 () Bool)

(assert (=> b!1146406 m!1057279))

(assert (=> b!1146421 m!1057247))

(declare-fun m!1057281 () Bool)

(assert (=> b!1146421 m!1057281))

(declare-fun m!1057283 () Bool)

(assert (=> bm!52526 m!1057283))

(declare-fun m!1057285 () Bool)

(assert (=> b!1146424 m!1057285))

(declare-fun m!1057287 () Bool)

(assert (=> b!1146424 m!1057287))

(declare-fun m!1057289 () Bool)

(assert (=> b!1146424 m!1057289))

(check-sat (not bm!52529) (not b!1146410) (not b_lambda!19373) (not b!1146424) (not b!1146406) (not bm!52532) (not start!98680) (not b!1146425) (not b!1146408) (not b!1146403) (not bm!52531) (not bm!52526) (not b!1146420) (not b!1146411) (not b!1146423) (not b!1146415) (not b!1146421) (not b!1146413) (not b!1146426) (not b_next!24249) (not b!1146431) (not b!1146428) b_and!39363 (not bm!52528) (not mapNonEmpty!44993) tp_is_empty!28779 (not b!1146402))
(check-sat b_and!39363 (not b_next!24249))
