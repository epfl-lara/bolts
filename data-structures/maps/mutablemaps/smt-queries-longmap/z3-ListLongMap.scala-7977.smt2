; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98740 () Bool)

(assert start!98740)

(declare-fun b_free!24309 () Bool)

(declare-fun b_next!24309 () Bool)

(assert (=> start!98740 (= b_free!24309 (not b_next!24309))))

(declare-fun tp!85639 () Bool)

(declare-fun b_and!39481 () Bool)

(assert (=> start!98740 (= tp!85639 b_and!39481)))

(declare-fun b!1149162 () Bool)

(declare-fun res!764669 () Bool)

(declare-fun e!653678 () Bool)

(assert (=> b!1149162 (=> (not res!764669) (not e!653678))))

(declare-datatypes ((array!74482 0))(
  ( (array!74483 (arr!35888 (Array (_ BitVec 32) (_ BitVec 64))) (size!36425 (_ BitVec 32))) )
))
(declare-fun lt!513878 () array!74482)

(declare-datatypes ((List!25237 0))(
  ( (Nil!25234) (Cons!25233 (h!26442 (_ BitVec 64)) (t!36545 List!25237)) )
))
(declare-fun arrayNoDuplicates!0 (array!74482 (_ BitVec 32) List!25237) Bool)

(assert (=> b!1149162 (= res!764669 (arrayNoDuplicates!0 lt!513878 #b00000000000000000000000000000000 Nil!25234))))

(declare-fun b!1149163 () Bool)

(declare-fun call!53251 () Bool)

(assert (=> b!1149163 call!53251))

(declare-datatypes ((Unit!37695 0))(
  ( (Unit!37696) )
))
(declare-fun lt!513896 () Unit!37695)

(declare-fun call!53256 () Unit!37695)

(assert (=> b!1149163 (= lt!513896 call!53256)))

(declare-fun e!653682 () Unit!37695)

(assert (=> b!1149163 (= e!653682 lt!513896)))

(declare-fun b!1149164 () Bool)

(declare-fun res!764666 () Bool)

(declare-fun e!653667 () Bool)

(assert (=> b!1149164 (=> (not res!764666) (not e!653667))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149164 (= res!764666 (validMask!0 mask!1564))))

(declare-fun bm!53246 () Bool)

(declare-fun call!53252 () Bool)

(assert (=> bm!53246 (= call!53251 call!53252)))

(declare-datatypes ((V!43579 0))(
  ( (V!43580 (val!14476 Int)) )
))
(declare-fun zeroValue!944 () V!43579)

(declare-fun c!113588 () Bool)

(declare-datatypes ((tuple2!18444 0))(
  ( (tuple2!18445 (_1!9232 (_ BitVec 64)) (_2!9232 V!43579)) )
))
(declare-datatypes ((List!25238 0))(
  ( (Nil!25235) (Cons!25234 (h!26443 tuple2!18444) (t!36546 List!25238)) )
))
(declare-datatypes ((ListLongMap!16425 0))(
  ( (ListLongMap!16426 (toList!8228 List!25238)) )
))
(declare-fun lt!513897 () ListLongMap!16425)

(declare-fun call!53250 () ListLongMap!16425)

(declare-fun c!113591 () Bool)

(declare-fun bm!53247 () Bool)

(declare-fun minValue!944 () V!43579)

(declare-fun +!3566 (ListLongMap!16425 tuple2!18444) ListLongMap!16425)

(assert (=> bm!53247 (= call!53250 (+!3566 lt!513897 (ite (or c!113588 c!113591) (tuple2!18445 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!53248 () Bool)

(declare-fun call!53253 () Unit!37695)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun addStillContains!866 (ListLongMap!16425 (_ BitVec 64) V!43579 (_ BitVec 64)) Unit!37695)

(assert (=> bm!53248 (= call!53253 (addStillContains!866 lt!513897 (ite (or c!113588 c!113591) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113588 c!113591) zeroValue!944 minValue!944) k0!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!53249 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13710 0))(
  ( (ValueCellFull!13710 (v!17114 V!43579)) (EmptyCell!13710) )
))
(declare-datatypes ((array!74484 0))(
  ( (array!74485 (arr!35889 (Array (_ BitVec 32) ValueCell!13710)) (size!36426 (_ BitVec 32))) )
))
(declare-fun lt!513883 () array!74484)

(declare-fun call!53255 () ListLongMap!16425)

(declare-fun getCurrentListMapNoExtraKeys!4669 (array!74482 array!74484 (_ BitVec 32) (_ BitVec 32) V!43579 V!43579 (_ BitVec 32) Int) ListLongMap!16425)

(assert (=> bm!53249 (= call!53255 (getCurrentListMapNoExtraKeys!4669 lt!513878 lt!513883 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149165 () Bool)

(declare-fun lt!513885 () ListLongMap!16425)

(declare-fun contains!6723 (ListLongMap!16425 (_ BitVec 64)) Bool)

(assert (=> b!1149165 (contains!6723 (+!3566 lt!513885 (tuple2!18445 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!513882 () Unit!37695)

(assert (=> b!1149165 (= lt!513882 (addStillContains!866 lt!513885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1149165 call!53252))

(assert (=> b!1149165 (= lt!513885 call!53250)))

(declare-fun lt!513891 () Unit!37695)

(assert (=> b!1149165 (= lt!513891 call!53253)))

(declare-fun e!653671 () Unit!37695)

(assert (=> b!1149165 (= e!653671 lt!513882)))

(declare-fun b!1149166 () Bool)

(declare-fun call!53249 () ListLongMap!16425)

(declare-fun e!653675 () Bool)

(declare-fun -!1316 (ListLongMap!16425 (_ BitVec 64)) ListLongMap!16425)

(assert (=> b!1149166 (= e!653675 (= call!53255 (-!1316 call!53249 k0!934)))))

(declare-fun b!1149167 () Bool)

(declare-fun e!653679 () Unit!37695)

(declare-fun Unit!37697 () Unit!37695)

(assert (=> b!1149167 (= e!653679 Unit!37697)))

(declare-fun lt!513880 () Bool)

(assert (=> b!1149167 (= lt!513880 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149167 (= c!113588 (and (not lt!513880) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513887 () Unit!37695)

(assert (=> b!1149167 (= lt!513887 e!653671)))

(declare-fun _keys!1208 () array!74482)

(declare-fun lt!513895 () Unit!37695)

(declare-fun _values!996 () array!74484)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!452 (array!74482 array!74484 (_ BitVec 32) (_ BitVec 32) V!43579 V!43579 (_ BitVec 64) (_ BitVec 32) Int) Unit!37695)

(assert (=> b!1149167 (= lt!513895 (lemmaListMapContainsThenArrayContainsFrom!452 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113589 () Bool)

(assert (=> b!1149167 (= c!113589 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764673 () Bool)

(declare-fun e!653669 () Bool)

(assert (=> b!1149167 (= res!764673 e!653669)))

(declare-fun e!653674 () Bool)

(assert (=> b!1149167 (=> (not res!764673) (not e!653674))))

(assert (=> b!1149167 e!653674))

(declare-fun lt!513894 () Unit!37695)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74482 (_ BitVec 32) (_ BitVec 32)) Unit!37695)

(assert (=> b!1149167 (= lt!513894 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1149167 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25234)))

(declare-fun lt!513888 () Unit!37695)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74482 (_ BitVec 64) (_ BitVec 32) List!25237) Unit!37695)

(assert (=> b!1149167 (= lt!513888 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25234))))

(assert (=> b!1149167 false))

(declare-fun bm!53250 () Bool)

(declare-fun call!53254 () ListLongMap!16425)

(assert (=> bm!53250 (= call!53254 call!53250)))

(declare-fun mapNonEmpty!45083 () Bool)

(declare-fun mapRes!45083 () Bool)

(declare-fun tp!85638 () Bool)

(declare-fun e!653670 () Bool)

(assert (=> mapNonEmpty!45083 (= mapRes!45083 (and tp!85638 e!653670))))

(declare-fun mapRest!45083 () (Array (_ BitVec 32) ValueCell!13710))

(declare-fun mapKey!45083 () (_ BitVec 32))

(declare-fun mapValue!45083 () ValueCell!13710)

(assert (=> mapNonEmpty!45083 (= (arr!35889 _values!996) (store mapRest!45083 mapKey!45083 mapValue!45083))))

(declare-fun b!1149168 () Bool)

(declare-fun res!764664 () Bool)

(assert (=> b!1149168 (=> (not res!764664) (not e!653667))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149168 (= res!764664 (= (select (arr!35888 _keys!1208) i!673) k0!934))))

(declare-fun b!1149169 () Bool)

(declare-fun e!653677 () Unit!37695)

(declare-fun lt!513890 () Unit!37695)

(assert (=> b!1149169 (= e!653677 lt!513890)))

(assert (=> b!1149169 (= lt!513890 call!53256)))

(assert (=> b!1149169 call!53251))

(declare-fun bm!53251 () Bool)

(assert (=> bm!53251 (= call!53252 (contains!6723 (ite c!113588 lt!513885 call!53254) k0!934))))

(declare-fun b!1149170 () Bool)

(assert (=> b!1149170 (= e!653667 e!653678)))

(declare-fun res!764675 () Bool)

(assert (=> b!1149170 (=> (not res!764675) (not e!653678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74482 (_ BitVec 32)) Bool)

(assert (=> b!1149170 (= res!764675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513878 mask!1564))))

(assert (=> b!1149170 (= lt!513878 (array!74483 (store (arr!35888 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36425 _keys!1208)))))

(declare-fun b!1149171 () Bool)

(declare-fun res!764670 () Bool)

(assert (=> b!1149171 (=> (not res!764670) (not e!653667))))

(assert (=> b!1149171 (= res!764670 (and (= (size!36426 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36425 _keys!1208) (size!36426 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149172 () Bool)

(declare-fun e!653672 () Bool)

(declare-fun e!653666 () Bool)

(assert (=> b!1149172 (= e!653672 e!653666)))

(declare-fun res!764671 () Bool)

(assert (=> b!1149172 (=> res!764671 e!653666)))

(assert (=> b!1149172 (= res!764671 (not (= (select (arr!35888 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1149172 e!653675))

(declare-fun c!113590 () Bool)

(assert (=> b!1149172 (= c!113590 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513881 () Unit!37695)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!559 (array!74482 array!74484 (_ BitVec 32) (_ BitVec 32) V!43579 V!43579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37695)

(assert (=> b!1149172 (= lt!513881 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!53252 () Bool)

(assert (=> bm!53252 (= call!53256 call!53253)))

(declare-fun b!1149173 () Bool)

(declare-fun arrayContainsKey!0 (array!74482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149173 (= e!653674 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149174 () Bool)

(declare-fun res!764674 () Bool)

(assert (=> b!1149174 (=> (not res!764674) (not e!653667))))

(assert (=> b!1149174 (= res!764674 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25234))))

(declare-fun b!1149175 () Bool)

(assert (=> b!1149175 (= e!653669 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149176 () Bool)

(declare-fun Unit!37698 () Unit!37695)

(assert (=> b!1149176 (= e!653682 Unit!37698)))

(declare-fun b!1149177 () Bool)

(declare-fun e!653673 () Bool)

(declare-fun e!653680 () Bool)

(assert (=> b!1149177 (= e!653673 (and e!653680 mapRes!45083))))

(declare-fun condMapEmpty!45083 () Bool)

(declare-fun mapDefault!45083 () ValueCell!13710)

(assert (=> b!1149177 (= condMapEmpty!45083 (= (arr!35889 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13710)) mapDefault!45083)))))

(declare-fun b!1149178 () Bool)

(assert (=> b!1149178 (= e!653669 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513880) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1149179 () Bool)

(declare-fun lt!513876 () ListLongMap!16425)

(declare-fun e!653681 () Bool)

(assert (=> b!1149179 (= e!653681 (= lt!513876 (getCurrentListMapNoExtraKeys!4669 lt!513878 lt!513883 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1149180 () Bool)

(assert (=> b!1149180 (= c!113591 (and (not lt!513880) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1149180 (= e!653671 e!653677)))

(declare-fun res!764668 () Bool)

(assert (=> start!98740 (=> (not res!764668) (not e!653667))))

(assert (=> start!98740 (= res!764668 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36425 _keys!1208))))))

(assert (=> start!98740 e!653667))

(declare-fun tp_is_empty!28839 () Bool)

(assert (=> start!98740 tp_is_empty!28839))

(declare-fun array_inv!27366 (array!74482) Bool)

(assert (=> start!98740 (array_inv!27366 _keys!1208)))

(assert (=> start!98740 true))

(assert (=> start!98740 tp!85639))

(declare-fun array_inv!27367 (array!74484) Bool)

(assert (=> start!98740 (and (array_inv!27367 _values!996) e!653673)))

(declare-fun b!1149181 () Bool)

(declare-fun res!764677 () Bool)

(assert (=> b!1149181 (=> (not res!764677) (not e!653667))))

(assert (=> b!1149181 (= res!764677 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36425 _keys!1208))))))

(declare-fun b!1149182 () Bool)

(declare-fun res!764665 () Bool)

(assert (=> b!1149182 (=> (not res!764665) (not e!653667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149182 (= res!764665 (validKeyInArray!0 k0!934))))

(declare-fun b!1149183 () Bool)

(declare-fun Unit!37699 () Unit!37695)

(assert (=> b!1149183 (= e!653679 Unit!37699)))

(declare-fun mapIsEmpty!45083 () Bool)

(assert (=> mapIsEmpty!45083 mapRes!45083))

(declare-fun b!1149184 () Bool)

(assert (=> b!1149184 (= e!653666 true)))

(assert (=> b!1149184 e!653681))

(declare-fun res!764678 () Bool)

(assert (=> b!1149184 (=> (not res!764678) (not e!653681))))

(assert (=> b!1149184 (= res!764678 (= lt!513876 lt!513897))))

(declare-fun lt!513889 () ListLongMap!16425)

(assert (=> b!1149184 (= lt!513876 (-!1316 lt!513889 k0!934))))

(declare-fun lt!513877 () V!43579)

(assert (=> b!1149184 (= (-!1316 (+!3566 lt!513897 (tuple2!18445 (select (arr!35888 _keys!1208) from!1455) lt!513877)) (select (arr!35888 _keys!1208) from!1455)) lt!513897)))

(declare-fun lt!513886 () Unit!37695)

(declare-fun addThenRemoveForNewKeyIsSame!165 (ListLongMap!16425 (_ BitVec 64) V!43579) Unit!37695)

(assert (=> b!1149184 (= lt!513886 (addThenRemoveForNewKeyIsSame!165 lt!513897 (select (arr!35888 _keys!1208) from!1455) lt!513877))))

(declare-fun lt!513884 () V!43579)

(declare-fun get!18289 (ValueCell!13710 V!43579) V!43579)

(assert (=> b!1149184 (= lt!513877 (get!18289 (select (arr!35889 _values!996) from!1455) lt!513884))))

(declare-fun lt!513892 () Unit!37695)

(assert (=> b!1149184 (= lt!513892 e!653679)))

(declare-fun c!113592 () Bool)

(assert (=> b!1149184 (= c!113592 (contains!6723 lt!513897 k0!934))))

(assert (=> b!1149184 (= lt!513897 (getCurrentListMapNoExtraKeys!4669 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149185 () Bool)

(assert (=> b!1149185 (= e!653675 (= call!53255 call!53249))))

(declare-fun b!1149186 () Bool)

(assert (=> b!1149186 (= e!653677 e!653682)))

(declare-fun c!113587 () Bool)

(assert (=> b!1149186 (= c!113587 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513880))))

(declare-fun b!1149187 () Bool)

(assert (=> b!1149187 (= e!653670 tp_is_empty!28839)))

(declare-fun b!1149188 () Bool)

(declare-fun res!764672 () Bool)

(assert (=> b!1149188 (=> (not res!764672) (not e!653667))))

(assert (=> b!1149188 (= res!764672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1149189 () Bool)

(declare-fun e!653676 () Bool)

(assert (=> b!1149189 (= e!653678 (not e!653676))))

(declare-fun res!764676 () Bool)

(assert (=> b!1149189 (=> res!764676 e!653676)))

(assert (=> b!1149189 (= res!764676 (bvsgt from!1455 i!673))))

(assert (=> b!1149189 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!513893 () Unit!37695)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74482 (_ BitVec 64) (_ BitVec 32)) Unit!37695)

(assert (=> b!1149189 (= lt!513893 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1149190 () Bool)

(assert (=> b!1149190 (= e!653676 e!653672)))

(declare-fun res!764667 () Bool)

(assert (=> b!1149190 (=> res!764667 e!653672)))

(assert (=> b!1149190 (= res!764667 (not (= from!1455 i!673)))))

(declare-fun lt!513879 () ListLongMap!16425)

(assert (=> b!1149190 (= lt!513879 (getCurrentListMapNoExtraKeys!4669 lt!513878 lt!513883 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1149190 (= lt!513883 (array!74485 (store (arr!35889 _values!996) i!673 (ValueCellFull!13710 lt!513884)) (size!36426 _values!996)))))

(declare-fun dynLambda!2700 (Int (_ BitVec 64)) V!43579)

(assert (=> b!1149190 (= lt!513884 (dynLambda!2700 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1149190 (= lt!513889 (getCurrentListMapNoExtraKeys!4669 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1149191 () Bool)

(assert (=> b!1149191 (= e!653680 tp_is_empty!28839)))

(declare-fun bm!53253 () Bool)

(assert (=> bm!53253 (= call!53249 (getCurrentListMapNoExtraKeys!4669 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98740 res!764668) b!1149164))

(assert (= (and b!1149164 res!764666) b!1149171))

(assert (= (and b!1149171 res!764670) b!1149188))

(assert (= (and b!1149188 res!764672) b!1149174))

(assert (= (and b!1149174 res!764674) b!1149181))

(assert (= (and b!1149181 res!764677) b!1149182))

(assert (= (and b!1149182 res!764665) b!1149168))

(assert (= (and b!1149168 res!764664) b!1149170))

(assert (= (and b!1149170 res!764675) b!1149162))

(assert (= (and b!1149162 res!764669) b!1149189))

(assert (= (and b!1149189 (not res!764676)) b!1149190))

(assert (= (and b!1149190 (not res!764667)) b!1149172))

(assert (= (and b!1149172 c!113590) b!1149166))

(assert (= (and b!1149172 (not c!113590)) b!1149185))

(assert (= (or b!1149166 b!1149185) bm!53249))

(assert (= (or b!1149166 b!1149185) bm!53253))

(assert (= (and b!1149172 (not res!764671)) b!1149184))

(assert (= (and b!1149184 c!113592) b!1149167))

(assert (= (and b!1149184 (not c!113592)) b!1149183))

(assert (= (and b!1149167 c!113588) b!1149165))

(assert (= (and b!1149167 (not c!113588)) b!1149180))

(assert (= (and b!1149180 c!113591) b!1149169))

(assert (= (and b!1149180 (not c!113591)) b!1149186))

(assert (= (and b!1149186 c!113587) b!1149163))

(assert (= (and b!1149186 (not c!113587)) b!1149176))

(assert (= (or b!1149169 b!1149163) bm!53252))

(assert (= (or b!1149169 b!1149163) bm!53250))

(assert (= (or b!1149169 b!1149163) bm!53246))

(assert (= (or b!1149165 bm!53246) bm!53251))

(assert (= (or b!1149165 bm!53252) bm!53248))

(assert (= (or b!1149165 bm!53250) bm!53247))

(assert (= (and b!1149167 c!113589) b!1149175))

(assert (= (and b!1149167 (not c!113589)) b!1149178))

(assert (= (and b!1149167 res!764673) b!1149173))

(assert (= (and b!1149184 res!764678) b!1149179))

(assert (= (and b!1149177 condMapEmpty!45083) mapIsEmpty!45083))

(assert (= (and b!1149177 (not condMapEmpty!45083)) mapNonEmpty!45083))

(get-info :version)

(assert (= (and mapNonEmpty!45083 ((_ is ValueCellFull!13710) mapValue!45083)) b!1149187))

(assert (= (and b!1149177 ((_ is ValueCellFull!13710) mapDefault!45083)) b!1149191))

(assert (= start!98740 b!1149177))

(declare-fun b_lambda!19433 () Bool)

(assert (=> (not b_lambda!19433) (not b!1149190)))

(declare-fun t!36544 () Bool)

(declare-fun tb!9129 () Bool)

(assert (=> (and start!98740 (= defaultEntry!1004 defaultEntry!1004) t!36544) tb!9129))

(declare-fun result!18815 () Bool)

(assert (=> tb!9129 (= result!18815 tp_is_empty!28839)))

(assert (=> b!1149190 t!36544))

(declare-fun b_and!39483 () Bool)

(assert (= b_and!39481 (and (=> t!36544 result!18815) b_and!39483)))

(declare-fun m!1059615 () Bool)

(assert (=> bm!53248 m!1059615))

(declare-fun m!1059617 () Bool)

(assert (=> b!1149166 m!1059617))

(declare-fun m!1059619 () Bool)

(assert (=> start!98740 m!1059619))

(declare-fun m!1059621 () Bool)

(assert (=> start!98740 m!1059621))

(declare-fun m!1059623 () Bool)

(assert (=> b!1149167 m!1059623))

(declare-fun m!1059625 () Bool)

(assert (=> b!1149167 m!1059625))

(declare-fun m!1059627 () Bool)

(assert (=> b!1149167 m!1059627))

(declare-fun m!1059629 () Bool)

(assert (=> b!1149167 m!1059629))

(declare-fun m!1059631 () Bool)

(assert (=> b!1149184 m!1059631))

(declare-fun m!1059633 () Bool)

(assert (=> b!1149184 m!1059633))

(declare-fun m!1059635 () Bool)

(assert (=> b!1149184 m!1059635))

(declare-fun m!1059637 () Bool)

(assert (=> b!1149184 m!1059637))

(declare-fun m!1059639 () Bool)

(assert (=> b!1149184 m!1059639))

(declare-fun m!1059641 () Bool)

(assert (=> b!1149184 m!1059641))

(assert (=> b!1149184 m!1059637))

(declare-fun m!1059643 () Bool)

(assert (=> b!1149184 m!1059643))

(assert (=> b!1149184 m!1059641))

(assert (=> b!1149184 m!1059633))

(declare-fun m!1059645 () Bool)

(assert (=> b!1149184 m!1059645))

(declare-fun m!1059647 () Bool)

(assert (=> b!1149184 m!1059647))

(assert (=> b!1149184 m!1059637))

(assert (=> bm!53253 m!1059631))

(declare-fun m!1059649 () Bool)

(assert (=> b!1149170 m!1059649))

(declare-fun m!1059651 () Bool)

(assert (=> b!1149170 m!1059651))

(declare-fun m!1059653 () Bool)

(assert (=> bm!53249 m!1059653))

(declare-fun m!1059655 () Bool)

(assert (=> b!1149189 m!1059655))

(declare-fun m!1059657 () Bool)

(assert (=> b!1149189 m!1059657))

(declare-fun m!1059659 () Bool)

(assert (=> b!1149168 m!1059659))

(declare-fun m!1059661 () Bool)

(assert (=> b!1149165 m!1059661))

(assert (=> b!1149165 m!1059661))

(declare-fun m!1059663 () Bool)

(assert (=> b!1149165 m!1059663))

(declare-fun m!1059665 () Bool)

(assert (=> b!1149165 m!1059665))

(declare-fun m!1059667 () Bool)

(assert (=> b!1149175 m!1059667))

(assert (=> b!1149173 m!1059667))

(declare-fun m!1059669 () Bool)

(assert (=> b!1149164 m!1059669))

(declare-fun m!1059671 () Bool)

(assert (=> mapNonEmpty!45083 m!1059671))

(assert (=> b!1149172 m!1059637))

(declare-fun m!1059673 () Bool)

(assert (=> b!1149172 m!1059673))

(declare-fun m!1059675 () Bool)

(assert (=> b!1149174 m!1059675))

(assert (=> b!1149179 m!1059653))

(declare-fun m!1059677 () Bool)

(assert (=> b!1149190 m!1059677))

(declare-fun m!1059679 () Bool)

(assert (=> b!1149190 m!1059679))

(declare-fun m!1059681 () Bool)

(assert (=> b!1149190 m!1059681))

(declare-fun m!1059683 () Bool)

(assert (=> b!1149190 m!1059683))

(declare-fun m!1059685 () Bool)

(assert (=> b!1149162 m!1059685))

(declare-fun m!1059687 () Bool)

(assert (=> b!1149182 m!1059687))

(declare-fun m!1059689 () Bool)

(assert (=> bm!53251 m!1059689))

(declare-fun m!1059691 () Bool)

(assert (=> b!1149188 m!1059691))

(declare-fun m!1059693 () Bool)

(assert (=> bm!53247 m!1059693))

(check-sat (not b!1149172) (not bm!53247) (not bm!53253) (not start!98740) (not bm!53248) (not b!1149162) (not mapNonEmpty!45083) (not bm!53251) (not b!1149174) (not bm!53249) (not b!1149170) (not b!1149165) (not b!1149189) tp_is_empty!28839 (not b!1149190) (not b!1149179) (not b!1149166) (not b!1149188) (not b!1149175) (not b!1149173) (not b!1149182) (not b_lambda!19433) (not b!1149164) (not b!1149167) b_and!39483 (not b_next!24309) (not b!1149184))
(check-sat b_and!39483 (not b_next!24309))
