; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98458 () Bool)

(assert start!98458)

(declare-fun b_free!24027 () Bool)

(declare-fun b_next!24027 () Bool)

(assert (=> start!98458 (= b_free!24027 (not b_next!24027))))

(declare-fun tp!84792 () Bool)

(declare-fun b_and!38917 () Bool)

(assert (=> start!98458 (= tp!84792 b_and!38917)))

(declare-fun b!1136438 () Bool)

(declare-fun res!758575 () Bool)

(declare-fun e!646739 () Bool)

(assert (=> b!1136438 (=> (not res!758575) (not e!646739))))

(declare-datatypes ((array!73934 0))(
  ( (array!73935 (arr!35614 (Array (_ BitVec 32) (_ BitVec 64))) (size!36151 (_ BitVec 32))) )
))
(declare-fun lt!505270 () array!73934)

(declare-datatypes ((List!25000 0))(
  ( (Nil!24997) (Cons!24996 (h!26205 (_ BitVec 64)) (t!36026 List!25000)) )
))
(declare-fun arrayNoDuplicates!0 (array!73934 (_ BitVec 32) List!25000) Bool)

(assert (=> b!1136438 (= res!758575 (arrayNoDuplicates!0 lt!505270 #b00000000000000000000000000000000 Nil!24997))))

(declare-fun b!1136439 () Bool)

(declare-fun e!646728 () Bool)

(declare-fun e!646743 () Bool)

(assert (=> b!1136439 (= e!646728 e!646743)))

(declare-fun res!758572 () Bool)

(assert (=> b!1136439 (=> res!758572 e!646743)))

(declare-fun _keys!1208 () array!73934)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1136439 (= res!758572 (not (= (select (arr!35614 _keys!1208) from!1455) k0!934)))))

(declare-fun e!646729 () Bool)

(assert (=> b!1136439 e!646729))

(declare-fun c!111053 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136439 (= c!111053 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43203 0))(
  ( (V!43204 (val!14335 Int)) )
))
(declare-fun zeroValue!944 () V!43203)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((Unit!37167 0))(
  ( (Unit!37168) )
))
(declare-fun lt!505269 () Unit!37167)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13569 0))(
  ( (ValueCellFull!13569 (v!16973 V!43203)) (EmptyCell!13569) )
))
(declare-datatypes ((array!73936 0))(
  ( (array!73937 (arr!35615 (Array (_ BitVec 32) ValueCell!13569)) (size!36152 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73936)

(declare-fun minValue!944 () V!43203)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!467 (array!73934 array!73936 (_ BitVec 32) (_ BitVec 32) V!43203 V!43203 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37167)

(assert (=> b!1136439 (= lt!505269 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44660 () Bool)

(declare-fun mapRes!44660 () Bool)

(assert (=> mapIsEmpty!44660 mapRes!44660))

(declare-fun b!1136440 () Bool)

(declare-fun c!111055 () Bool)

(declare-fun lt!505274 () Bool)

(assert (=> b!1136440 (= c!111055 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505274))))

(declare-fun e!646731 () Unit!37167)

(declare-fun e!646738 () Unit!37167)

(assert (=> b!1136440 (= e!646731 e!646738)))

(declare-fun b!1136441 () Bool)

(declare-fun e!646735 () Bool)

(declare-fun tp_is_empty!28557 () Bool)

(assert (=> b!1136441 (= e!646735 tp_is_empty!28557)))

(declare-fun b!1136442 () Bool)

(declare-fun call!49868 () Bool)

(assert (=> b!1136442 call!49868))

(declare-fun lt!505276 () Unit!37167)

(declare-fun call!49869 () Unit!37167)

(assert (=> b!1136442 (= lt!505276 call!49869)))

(assert (=> b!1136442 (= e!646731 lt!505276)))

(declare-fun b!1136443 () Bool)

(declare-fun res!758571 () Bool)

(declare-fun e!646727 () Bool)

(assert (=> b!1136443 (=> (not res!758571) (not e!646727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136443 (= res!758571 (validMask!0 mask!1564))))

(declare-fun b!1136444 () Bool)

(declare-fun res!758566 () Bool)

(assert (=> b!1136444 (=> (not res!758566) (not e!646727))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136444 (= res!758566 (validKeyInArray!0 k0!934))))

(declare-fun c!111056 () Bool)

(declare-fun call!49870 () Unit!37167)

(declare-fun c!111054 () Bool)

(declare-datatypes ((tuple2!18190 0))(
  ( (tuple2!18191 (_1!9105 (_ BitVec 64)) (_2!9105 V!43203)) )
))
(declare-datatypes ((List!25001 0))(
  ( (Nil!24998) (Cons!24997 (h!26206 tuple2!18190) (t!36027 List!25001)) )
))
(declare-datatypes ((ListLongMap!16171 0))(
  ( (ListLongMap!16172 (toList!8101 List!25001)) )
))
(declare-fun lt!505277 () ListLongMap!16171)

(declare-fun bm!49862 () Bool)

(declare-fun addStillContains!756 (ListLongMap!16171 (_ BitVec 64) V!43203 (_ BitVec 64)) Unit!37167)

(assert (=> bm!49862 (= call!49870 (addStillContains!756 lt!505277 (ite (or c!111056 c!111054) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111056 c!111054) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1136445 () Bool)

(declare-fun call!49872 () ListLongMap!16171)

(declare-fun call!49866 () ListLongMap!16171)

(declare-fun -!1211 (ListLongMap!16171 (_ BitVec 64)) ListLongMap!16171)

(assert (=> b!1136445 (= e!646729 (= call!49866 (-!1211 call!49872 k0!934)))))

(declare-fun res!758564 () Bool)

(assert (=> start!98458 (=> (not res!758564) (not e!646727))))

(assert (=> start!98458 (= res!758564 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36151 _keys!1208))))))

(assert (=> start!98458 e!646727))

(assert (=> start!98458 tp_is_empty!28557))

(declare-fun array_inv!27180 (array!73934) Bool)

(assert (=> start!98458 (array_inv!27180 _keys!1208)))

(assert (=> start!98458 true))

(assert (=> start!98458 tp!84792))

(declare-fun e!646732 () Bool)

(declare-fun array_inv!27181 (array!73936) Bool)

(assert (=> start!98458 (and (array_inv!27181 _values!996) e!646732)))

(declare-fun b!1136446 () Bool)

(declare-fun res!758574 () Bool)

(assert (=> b!1136446 (=> (not res!758574) (not e!646727))))

(assert (=> b!1136446 (= res!758574 (and (= (size!36152 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36151 _keys!1208) (size!36152 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136447 () Bool)

(declare-fun e!646730 () Unit!37167)

(declare-fun lt!505281 () Unit!37167)

(assert (=> b!1136447 (= e!646730 lt!505281)))

(declare-fun lt!505278 () Unit!37167)

(assert (=> b!1136447 (= lt!505278 call!49870)))

(declare-fun lt!505273 () ListLongMap!16171)

(declare-fun call!49867 () ListLongMap!16171)

(assert (=> b!1136447 (= lt!505273 call!49867)))

(declare-fun call!49865 () Bool)

(assert (=> b!1136447 call!49865))

(assert (=> b!1136447 (= lt!505281 (addStillContains!756 lt!505273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun contains!6610 (ListLongMap!16171 (_ BitVec 64)) Bool)

(declare-fun +!3455 (ListLongMap!16171 tuple2!18190) ListLongMap!16171)

(assert (=> b!1136447 (contains!6610 (+!3455 lt!505273 (tuple2!18191 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1136448 () Bool)

(declare-fun Unit!37169 () Unit!37167)

(assert (=> b!1136448 (= e!646738 Unit!37169)))

(declare-fun b!1136449 () Bool)

(assert (=> b!1136449 (= e!646727 e!646739)))

(declare-fun res!758559 () Bool)

(assert (=> b!1136449 (=> (not res!758559) (not e!646739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73934 (_ BitVec 32)) Bool)

(assert (=> b!1136449 (= res!758559 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505270 mask!1564))))

(assert (=> b!1136449 (= lt!505270 (array!73935 (store (arr!35614 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36151 _keys!1208)))))

(declare-fun b!1136450 () Bool)

(declare-fun e!646733 () Bool)

(assert (=> b!1136450 (= e!646732 (and e!646733 mapRes!44660))))

(declare-fun condMapEmpty!44660 () Bool)

(declare-fun mapDefault!44660 () ValueCell!13569)

(assert (=> b!1136450 (= condMapEmpty!44660 (= (arr!35615 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13569)) mapDefault!44660)))))

(declare-fun b!1136451 () Bool)

(assert (=> b!1136451 (= e!646733 tp_is_empty!28557)))

(declare-fun b!1136452 () Bool)

(declare-fun res!758563 () Bool)

(assert (=> b!1136452 (=> (not res!758563) (not e!646727))))

(assert (=> b!1136452 (= res!758563 (= (select (arr!35614 _keys!1208) i!673) k0!934))))

(declare-fun e!646742 () Bool)

(declare-fun b!1136453 () Bool)

(assert (=> b!1136453 (= e!646742 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505274) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136454 () Bool)

(declare-fun e!646736 () Bool)

(assert (=> b!1136454 (= e!646739 (not e!646736))))

(declare-fun res!758569 () Bool)

(assert (=> b!1136454 (=> res!758569 e!646736)))

(assert (=> b!1136454 (= res!758569 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136454 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!505266 () Unit!37167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73934 (_ BitVec 64) (_ BitVec 32)) Unit!37167)

(assert (=> b!1136454 (= lt!505266 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1136455 () Bool)

(declare-fun res!758562 () Bool)

(declare-fun e!646737 () Bool)

(assert (=> b!1136455 (=> res!758562 e!646737)))

(declare-fun noDuplicate!1622 (List!25000) Bool)

(assert (=> b!1136455 (= res!758562 (not (noDuplicate!1622 Nil!24997)))))

(declare-fun bm!49863 () Bool)

(declare-fun lt!505275 () array!73936)

(declare-fun getCurrentListMapNoExtraKeys!4549 (array!73934 array!73936 (_ BitVec 32) (_ BitVec 32) V!43203 V!43203 (_ BitVec 32) Int) ListLongMap!16171)

(assert (=> bm!49863 (= call!49866 (getCurrentListMapNoExtraKeys!4549 lt!505270 lt!505275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136456 () Bool)

(declare-fun res!758567 () Bool)

(assert (=> b!1136456 (=> (not res!758567) (not e!646727))))

(assert (=> b!1136456 (= res!758567 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36151 _keys!1208))))))

(declare-fun b!1136457 () Bool)

(assert (=> b!1136457 (= e!646729 (= call!49866 call!49872))))

(declare-fun bm!49864 () Bool)

(assert (=> bm!49864 (= call!49872 (getCurrentListMapNoExtraKeys!4549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136458 () Bool)

(declare-fun res!758570 () Bool)

(assert (=> b!1136458 (=> (not res!758570) (not e!646727))))

(assert (=> b!1136458 (= res!758570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!49865 () Bool)

(assert (=> bm!49865 (= call!49867 (+!3455 lt!505277 (ite (or c!111056 c!111054) (tuple2!18191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18191 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!49871 () ListLongMap!16171)

(declare-fun bm!49866 () Bool)

(assert (=> bm!49866 (= call!49865 (contains!6610 (ite c!111056 lt!505273 call!49871) k0!934))))

(declare-fun b!1136459 () Bool)

(declare-fun lt!505272 () Unit!37167)

(assert (=> b!1136459 (= e!646738 lt!505272)))

(assert (=> b!1136459 (= lt!505272 call!49869)))

(assert (=> b!1136459 call!49868))

(declare-fun bm!49867 () Bool)

(assert (=> bm!49867 (= call!49869 call!49870)))

(declare-fun bm!49868 () Bool)

(assert (=> bm!49868 (= call!49871 call!49867)))

(declare-fun b!1136460 () Bool)

(declare-fun e!646741 () Bool)

(assert (=> b!1136460 (= e!646743 e!646741)))

(declare-fun res!758576 () Bool)

(assert (=> b!1136460 (=> res!758576 e!646741)))

(assert (=> b!1136460 (= res!758576 (not (contains!6610 lt!505277 k0!934)))))

(assert (=> b!1136460 (= lt!505277 (getCurrentListMapNoExtraKeys!4549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136461 () Bool)

(declare-fun res!758565 () Bool)

(assert (=> b!1136461 (=> (not res!758565) (not e!646727))))

(assert (=> b!1136461 (= res!758565 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24997))))

(declare-fun bm!49869 () Bool)

(assert (=> bm!49869 (= call!49868 call!49865)))

(declare-fun b!1136462 () Bool)

(assert (=> b!1136462 (= e!646737 true)))

(declare-fun lt!505280 () Bool)

(declare-fun contains!6611 (List!25000 (_ BitVec 64)) Bool)

(assert (=> b!1136462 (= lt!505280 (contains!6611 Nil!24997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1136463 () Bool)

(assert (=> b!1136463 (= e!646736 e!646728)))

(declare-fun res!758573 () Bool)

(assert (=> b!1136463 (=> res!758573 e!646728)))

(assert (=> b!1136463 (= res!758573 (not (= from!1455 i!673)))))

(declare-fun lt!505267 () ListLongMap!16171)

(assert (=> b!1136463 (= lt!505267 (getCurrentListMapNoExtraKeys!4549 lt!505270 lt!505275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2612 (Int (_ BitVec 64)) V!43203)

(assert (=> b!1136463 (= lt!505275 (array!73937 (store (arr!35615 _values!996) i!673 (ValueCellFull!13569 (dynLambda!2612 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36152 _values!996)))))

(declare-fun lt!505268 () ListLongMap!16171)

(assert (=> b!1136463 (= lt!505268 (getCurrentListMapNoExtraKeys!4549 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1136464 () Bool)

(assert (=> b!1136464 (= e!646741 e!646737)))

(declare-fun res!758568 () Bool)

(assert (=> b!1136464 (=> res!758568 e!646737)))

(assert (=> b!1136464 (= res!758568 (or (bvsge (size!36151 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36151 _keys!1208)) (bvsge from!1455 (size!36151 _keys!1208))))))

(assert (=> b!1136464 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24997)))

(declare-fun lt!505265 () Unit!37167)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73934 (_ BitVec 32) (_ BitVec 32)) Unit!37167)

(assert (=> b!1136464 (= lt!505265 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!646734 () Bool)

(assert (=> b!1136464 e!646734))

(declare-fun res!758560 () Bool)

(assert (=> b!1136464 (=> (not res!758560) (not e!646734))))

(assert (=> b!1136464 (= res!758560 e!646742)))

(declare-fun c!111057 () Bool)

(assert (=> b!1136464 (= c!111057 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!505279 () Unit!37167)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!361 (array!73934 array!73936 (_ BitVec 32) (_ BitVec 32) V!43203 V!43203 (_ BitVec 64) (_ BitVec 32) Int) Unit!37167)

(assert (=> b!1136464 (= lt!505279 (lemmaListMapContainsThenArrayContainsFrom!361 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!505271 () Unit!37167)

(assert (=> b!1136464 (= lt!505271 e!646730)))

(assert (=> b!1136464 (= c!111056 (and (not lt!505274) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1136464 (= lt!505274 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1136465 () Bool)

(declare-fun res!758561 () Bool)

(assert (=> b!1136465 (=> res!758561 e!646737)))

(assert (=> b!1136465 (= res!758561 (contains!6611 Nil!24997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1136466 () Bool)

(assert (=> b!1136466 (= e!646734 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136467 () Bool)

(assert (=> b!1136467 (= e!646730 e!646731)))

(assert (=> b!1136467 (= c!111054 (and (not lt!505274) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1136468 () Bool)

(assert (=> b!1136468 (= e!646742 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!44660 () Bool)

(declare-fun tp!84793 () Bool)

(assert (=> mapNonEmpty!44660 (= mapRes!44660 (and tp!84793 e!646735))))

(declare-fun mapValue!44660 () ValueCell!13569)

(declare-fun mapRest!44660 () (Array (_ BitVec 32) ValueCell!13569))

(declare-fun mapKey!44660 () (_ BitVec 32))

(assert (=> mapNonEmpty!44660 (= (arr!35615 _values!996) (store mapRest!44660 mapKey!44660 mapValue!44660))))

(assert (= (and start!98458 res!758564) b!1136443))

(assert (= (and b!1136443 res!758571) b!1136446))

(assert (= (and b!1136446 res!758574) b!1136458))

(assert (= (and b!1136458 res!758570) b!1136461))

(assert (= (and b!1136461 res!758565) b!1136456))

(assert (= (and b!1136456 res!758567) b!1136444))

(assert (= (and b!1136444 res!758566) b!1136452))

(assert (= (and b!1136452 res!758563) b!1136449))

(assert (= (and b!1136449 res!758559) b!1136438))

(assert (= (and b!1136438 res!758575) b!1136454))

(assert (= (and b!1136454 (not res!758569)) b!1136463))

(assert (= (and b!1136463 (not res!758573)) b!1136439))

(assert (= (and b!1136439 c!111053) b!1136445))

(assert (= (and b!1136439 (not c!111053)) b!1136457))

(assert (= (or b!1136445 b!1136457) bm!49863))

(assert (= (or b!1136445 b!1136457) bm!49864))

(assert (= (and b!1136439 (not res!758572)) b!1136460))

(assert (= (and b!1136460 (not res!758576)) b!1136464))

(assert (= (and b!1136464 c!111056) b!1136447))

(assert (= (and b!1136464 (not c!111056)) b!1136467))

(assert (= (and b!1136467 c!111054) b!1136442))

(assert (= (and b!1136467 (not c!111054)) b!1136440))

(assert (= (and b!1136440 c!111055) b!1136459))

(assert (= (and b!1136440 (not c!111055)) b!1136448))

(assert (= (or b!1136442 b!1136459) bm!49867))

(assert (= (or b!1136442 b!1136459) bm!49868))

(assert (= (or b!1136442 b!1136459) bm!49869))

(assert (= (or b!1136447 bm!49869) bm!49866))

(assert (= (or b!1136447 bm!49867) bm!49862))

(assert (= (or b!1136447 bm!49868) bm!49865))

(assert (= (and b!1136464 c!111057) b!1136468))

(assert (= (and b!1136464 (not c!111057)) b!1136453))

(assert (= (and b!1136464 res!758560) b!1136466))

(assert (= (and b!1136464 (not res!758568)) b!1136455))

(assert (= (and b!1136455 (not res!758562)) b!1136465))

(assert (= (and b!1136465 (not res!758561)) b!1136462))

(assert (= (and b!1136450 condMapEmpty!44660) mapIsEmpty!44660))

(assert (= (and b!1136450 (not condMapEmpty!44660)) mapNonEmpty!44660))

(get-info :version)

(assert (= (and mapNonEmpty!44660 ((_ is ValueCellFull!13569) mapValue!44660)) b!1136441))

(assert (= (and b!1136450 ((_ is ValueCellFull!13569) mapDefault!44660)) b!1136451))

(assert (= start!98458 b!1136450))

(declare-fun b_lambda!19151 () Bool)

(assert (=> (not b_lambda!19151) (not b!1136463)))

(declare-fun t!36025 () Bool)

(declare-fun tb!8847 () Bool)

(assert (=> (and start!98458 (= defaultEntry!1004 defaultEntry!1004) t!36025) tb!8847))

(declare-fun result!18251 () Bool)

(assert (=> tb!8847 (= result!18251 tp_is_empty!28557)))

(assert (=> b!1136463 t!36025))

(declare-fun b_and!38919 () Bool)

(assert (= b_and!38917 (and (=> t!36025 result!18251) b_and!38919)))

(declare-fun m!1048803 () Bool)

(assert (=> bm!49862 m!1048803))

(declare-fun m!1048805 () Bool)

(assert (=> bm!49864 m!1048805))

(declare-fun m!1048807 () Bool)

(assert (=> b!1136458 m!1048807))

(declare-fun m!1048809 () Bool)

(assert (=> start!98458 m!1048809))

(declare-fun m!1048811 () Bool)

(assert (=> start!98458 m!1048811))

(declare-fun m!1048813 () Bool)

(assert (=> b!1136460 m!1048813))

(assert (=> b!1136460 m!1048805))

(declare-fun m!1048815 () Bool)

(assert (=> b!1136464 m!1048815))

(declare-fun m!1048817 () Bool)

(assert (=> b!1136464 m!1048817))

(declare-fun m!1048819 () Bool)

(assert (=> b!1136464 m!1048819))

(declare-fun m!1048821 () Bool)

(assert (=> b!1136463 m!1048821))

(declare-fun m!1048823 () Bool)

(assert (=> b!1136463 m!1048823))

(declare-fun m!1048825 () Bool)

(assert (=> b!1136463 m!1048825))

(declare-fun m!1048827 () Bool)

(assert (=> b!1136463 m!1048827))

(declare-fun m!1048829 () Bool)

(assert (=> b!1136462 m!1048829))

(declare-fun m!1048831 () Bool)

(assert (=> b!1136438 m!1048831))

(declare-fun m!1048833 () Bool)

(assert (=> b!1136445 m!1048833))

(declare-fun m!1048835 () Bool)

(assert (=> b!1136461 m!1048835))

(declare-fun m!1048837 () Bool)

(assert (=> bm!49866 m!1048837))

(declare-fun m!1048839 () Bool)

(assert (=> bm!49863 m!1048839))

(declare-fun m!1048841 () Bool)

(assert (=> b!1136447 m!1048841))

(declare-fun m!1048843 () Bool)

(assert (=> b!1136447 m!1048843))

(assert (=> b!1136447 m!1048843))

(declare-fun m!1048845 () Bool)

(assert (=> b!1136447 m!1048845))

(declare-fun m!1048847 () Bool)

(assert (=> bm!49865 m!1048847))

(declare-fun m!1048849 () Bool)

(assert (=> b!1136452 m!1048849))

(declare-fun m!1048851 () Bool)

(assert (=> b!1136439 m!1048851))

(declare-fun m!1048853 () Bool)

(assert (=> b!1136439 m!1048853))

(declare-fun m!1048855 () Bool)

(assert (=> b!1136465 m!1048855))

(declare-fun m!1048857 () Bool)

(assert (=> b!1136449 m!1048857))

(declare-fun m!1048859 () Bool)

(assert (=> b!1136449 m!1048859))

(declare-fun m!1048861 () Bool)

(assert (=> b!1136466 m!1048861))

(declare-fun m!1048863 () Bool)

(assert (=> b!1136443 m!1048863))

(declare-fun m!1048865 () Bool)

(assert (=> b!1136455 m!1048865))

(declare-fun m!1048867 () Bool)

(assert (=> mapNonEmpty!44660 m!1048867))

(declare-fun m!1048869 () Bool)

(assert (=> b!1136454 m!1048869))

(declare-fun m!1048871 () Bool)

(assert (=> b!1136454 m!1048871))

(declare-fun m!1048873 () Bool)

(assert (=> b!1136444 m!1048873))

(assert (=> b!1136468 m!1048861))

(check-sat (not b!1136465) (not mapNonEmpty!44660) (not b!1136445) (not b!1136458) (not b!1136468) (not b_lambda!19151) (not b!1136460) (not start!98458) (not b!1136466) (not b!1136462) (not b!1136461) (not b!1136463) (not bm!49864) (not bm!49866) (not b!1136455) (not b_next!24027) (not b!1136444) (not b!1136464) (not b!1136443) (not b!1136439) (not bm!49865) (not b!1136438) (not b!1136449) (not bm!49863) tp_is_empty!28557 b_and!38919 (not b!1136447) (not b!1136454) (not bm!49862))
(check-sat b_and!38919 (not b_next!24027))
