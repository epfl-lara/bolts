; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98870 () Bool)

(assert start!98870)

(declare-fun b_free!24439 () Bool)

(declare-fun b_next!24439 () Bool)

(assert (=> start!98870 (= b_free!24439 (not b_next!24439))))

(declare-fun tp!86028 () Bool)

(declare-fun b_and!39741 () Bool)

(assert (=> start!98870 (= tp!86028 b_and!39741)))

(declare-datatypes ((V!43753 0))(
  ( (V!43754 (val!14541 Int)) )
))
(declare-fun zeroValue!944 () V!43753)

(declare-datatypes ((tuple2!18560 0))(
  ( (tuple2!18561 (_1!9290 (_ BitVec 64)) (_2!9290 V!43753)) )
))
(declare-datatypes ((List!25344 0))(
  ( (Nil!25341) (Cons!25340 (h!26549 tuple2!18560) (t!36782 List!25344)) )
))
(declare-datatypes ((ListLongMap!16541 0))(
  ( (ListLongMap!16542 (toList!8286 List!25344)) )
))
(declare-fun call!54810 () ListLongMap!16541)

(declare-fun lt!518179 () ListLongMap!16541)

(declare-fun c!114762 () Bool)

(declare-fun c!114759 () Bool)

(declare-fun lt!518175 () ListLongMap!16541)

(declare-fun minValue!944 () V!43753)

(declare-fun bm!54806 () Bool)

(declare-fun +!3617 (ListLongMap!16541 tuple2!18560) ListLongMap!16541)

(assert (=> bm!54806 (= call!54810 (+!3617 (ite c!114759 lt!518175 lt!518179) (ite c!114759 (tuple2!18561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!114762 (tuple2!18561 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18561 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1155142 () Bool)

(declare-fun e!656986 () Bool)

(declare-fun e!656987 () Bool)

(assert (=> b!1155142 (= e!656986 e!656987)))

(declare-fun res!767596 () Bool)

(assert (=> b!1155142 (=> (not res!767596) (not e!656987))))

(declare-datatypes ((array!74734 0))(
  ( (array!74735 (arr!36014 (Array (_ BitVec 32) (_ BitVec 64))) (size!36551 (_ BitVec 32))) )
))
(declare-fun lt!518174 () array!74734)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74734 (_ BitVec 32)) Bool)

(assert (=> b!1155142 (= res!767596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518174 mask!1564))))

(declare-fun _keys!1208 () array!74734)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155142 (= lt!518174 (array!74735 (store (arr!36014 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36551 _keys!1208)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!518187 () ListLongMap!16541)

(declare-datatypes ((ValueCell!13775 0))(
  ( (ValueCellFull!13775 (v!17179 V!43753)) (EmptyCell!13775) )
))
(declare-datatypes ((array!74736 0))(
  ( (array!74737 (arr!36015 (Array (_ BitVec 32) ValueCell!13775)) (size!36552 (_ BitVec 32))) )
))
(declare-fun lt!518182 () array!74736)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1155143 () Bool)

(declare-fun e!656993 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4725 (array!74734 array!74736 (_ BitVec 32) (_ BitVec 32) V!43753 V!43753 (_ BitVec 32) Int) ListLongMap!16541)

(assert (=> b!1155143 (= e!656993 (= lt!518187 (getCurrentListMapNoExtraKeys!4725 lt!518174 lt!518182 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1155144 () Bool)

(declare-fun e!656995 () Bool)

(declare-fun e!656981 () Bool)

(assert (=> b!1155144 (= e!656995 e!656981)))

(declare-fun res!767589 () Bool)

(assert (=> b!1155144 (=> res!767589 e!656981)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1155144 (= res!767589 (not (= (select (arr!36014 _keys!1208) from!1455) k!934)))))

(declare-fun e!656989 () Bool)

(assert (=> b!1155144 e!656989))

(declare-fun c!114761 () Bool)

(assert (=> b!1155144 (= c!114761 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun _values!996 () array!74736)

(declare-datatypes ((Unit!37934 0))(
  ( (Unit!37935) )
))
(declare-fun lt!518172 () Unit!37934)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!595 (array!74734 array!74736 (_ BitVec 32) (_ BitVec 32) V!43753 V!43753 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37934)

(assert (=> b!1155144 (= lt!518172 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!595 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155145 () Bool)

(declare-fun res!767600 () Bool)

(assert (=> b!1155145 (=> (not res!767600) (not e!656986))))

(assert (=> b!1155145 (= res!767600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1155146 () Bool)

(declare-fun e!656982 () Unit!37934)

(declare-fun Unit!37936 () Unit!37934)

(assert (=> b!1155146 (= e!656982 Unit!37936)))

(declare-fun b!1155147 () Bool)

(declare-fun res!767603 () Bool)

(assert (=> b!1155147 (=> (not res!767603) (not e!656986))))

(assert (=> b!1155147 (= res!767603 (and (= (size!36552 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36551 _keys!1208) (size!36552 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!45278 () Bool)

(declare-fun mapRes!45278 () Bool)

(assert (=> mapIsEmpty!45278 mapRes!45278))

(declare-fun b!1155148 () Bool)

(declare-fun e!656997 () Bool)

(declare-fun tp_is_empty!28969 () Bool)

(assert (=> b!1155148 (= e!656997 tp_is_empty!28969)))

(declare-fun b!1155149 () Bool)

(assert (=> b!1155149 (= e!656981 true)))

(assert (=> b!1155149 e!656993))

(declare-fun res!767597 () Bool)

(assert (=> b!1155149 (=> (not res!767597) (not e!656993))))

(assert (=> b!1155149 (= res!767597 (= lt!518187 lt!518179))))

(declare-fun lt!518169 () ListLongMap!16541)

(declare-fun -!1364 (ListLongMap!16541 (_ BitVec 64)) ListLongMap!16541)

(assert (=> b!1155149 (= lt!518187 (-!1364 lt!518169 k!934))))

(declare-fun lt!518185 () V!43753)

(assert (=> b!1155149 (= (-!1364 (+!3617 lt!518179 (tuple2!18561 (select (arr!36014 _keys!1208) from!1455) lt!518185)) (select (arr!36014 _keys!1208) from!1455)) lt!518179)))

(declare-fun lt!518181 () Unit!37934)

(declare-fun addThenRemoveForNewKeyIsSame!207 (ListLongMap!16541 (_ BitVec 64) V!43753) Unit!37934)

(assert (=> b!1155149 (= lt!518181 (addThenRemoveForNewKeyIsSame!207 lt!518179 (select (arr!36014 _keys!1208) from!1455) lt!518185))))

(declare-fun lt!518166 () V!43753)

(declare-fun get!18375 (ValueCell!13775 V!43753) V!43753)

(assert (=> b!1155149 (= lt!518185 (get!18375 (select (arr!36015 _values!996) from!1455) lt!518166))))

(declare-fun lt!518170 () Unit!37934)

(declare-fun e!656988 () Unit!37934)

(assert (=> b!1155149 (= lt!518170 e!656988)))

(declare-fun c!114757 () Bool)

(declare-fun contains!6774 (ListLongMap!16541 (_ BitVec 64)) Bool)

(assert (=> b!1155149 (= c!114757 (contains!6774 lt!518179 k!934))))

(assert (=> b!1155149 (= lt!518179 (getCurrentListMapNoExtraKeys!4725 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54807 () Bool)

(declare-fun call!54812 () ListLongMap!16541)

(assert (=> bm!54807 (= call!54812 (getCurrentListMapNoExtraKeys!4725 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155150 () Bool)

(declare-fun call!54811 () ListLongMap!16541)

(assert (=> b!1155150 (= e!656989 (= call!54811 call!54812))))

(declare-fun b!1155151 () Bool)

(declare-fun call!54813 () Bool)

(assert (=> b!1155151 call!54813))

(declare-fun lt!518168 () Unit!37934)

(declare-fun call!54816 () Unit!37934)

(assert (=> b!1155151 (= lt!518168 call!54816)))

(assert (=> b!1155151 (= e!656982 lt!518168)))

(declare-fun b!1155152 () Bool)

(declare-fun res!767599 () Bool)

(assert (=> b!1155152 (=> (not res!767599) (not e!656986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1155152 (= res!767599 (validKeyInArray!0 k!934))))

(declare-fun b!1155153 () Bool)

(declare-fun Unit!37937 () Unit!37934)

(assert (=> b!1155153 (= e!656988 Unit!37937)))

(declare-fun lt!518173 () Bool)

(assert (=> b!1155153 (= lt!518173 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1155153 (= c!114759 (and (not lt!518173) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!518178 () Unit!37934)

(declare-fun e!656994 () Unit!37934)

(assert (=> b!1155153 (= lt!518178 e!656994)))

(declare-fun lt!518167 () Unit!37934)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!495 (array!74734 array!74736 (_ BitVec 32) (_ BitVec 32) V!43753 V!43753 (_ BitVec 64) (_ BitVec 32) Int) Unit!37934)

(assert (=> b!1155153 (= lt!518167 (lemmaListMapContainsThenArrayContainsFrom!495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114760 () Bool)

(assert (=> b!1155153 (= c!114760 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!767602 () Bool)

(declare-fun e!656992 () Bool)

(assert (=> b!1155153 (= res!767602 e!656992)))

(declare-fun e!656996 () Bool)

(assert (=> b!1155153 (=> (not res!767602) (not e!656996))))

(assert (=> b!1155153 e!656996))

(declare-fun lt!518186 () Unit!37934)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74734 (_ BitVec 32) (_ BitVec 32)) Unit!37934)

(assert (=> b!1155153 (= lt!518186 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25345 0))(
  ( (Nil!25342) (Cons!25341 (h!26550 (_ BitVec 64)) (t!36783 List!25345)) )
))
(declare-fun arrayNoDuplicates!0 (array!74734 (_ BitVec 32) List!25345) Bool)

(assert (=> b!1155153 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25342)))

(declare-fun lt!518183 () Unit!37934)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74734 (_ BitVec 64) (_ BitVec 32) List!25345) Unit!37934)

(assert (=> b!1155153 (= lt!518183 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25342))))

(assert (=> b!1155153 false))

(declare-fun b!1155154 () Bool)

(declare-fun res!767594 () Bool)

(assert (=> b!1155154 (=> (not res!767594) (not e!656986))))

(assert (=> b!1155154 (= res!767594 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36551 _keys!1208))))))

(declare-fun b!1155155 () Bool)

(assert (=> b!1155155 (= e!656992 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!518173) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!54809 () Bool)

(declare-fun call!54814 () ListLongMap!16541)

(declare-fun bm!54808 () Bool)

(assert (=> bm!54808 (= call!54809 (contains!6774 (ite c!114759 lt!518175 call!54814) k!934))))

(declare-fun b!1155156 () Bool)

(declare-fun res!767598 () Bool)

(assert (=> b!1155156 (=> (not res!767598) (not e!656986))))

(assert (=> b!1155156 (= res!767598 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25342))))

(declare-fun res!767593 () Bool)

(assert (=> start!98870 (=> (not res!767593) (not e!656986))))

(assert (=> start!98870 (= res!767593 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36551 _keys!1208))))))

(assert (=> start!98870 e!656986))

(assert (=> start!98870 tp_is_empty!28969))

(declare-fun array_inv!27440 (array!74734) Bool)

(assert (=> start!98870 (array_inv!27440 _keys!1208)))

(assert (=> start!98870 true))

(assert (=> start!98870 tp!86028))

(declare-fun e!656991 () Bool)

(declare-fun array_inv!27441 (array!74736) Bool)

(assert (=> start!98870 (and (array_inv!27441 _values!996) e!656991)))

(declare-fun b!1155157 () Bool)

(declare-fun e!656985 () Unit!37934)

(assert (=> b!1155157 (= e!656985 e!656982)))

(declare-fun c!114758 () Bool)

(assert (=> b!1155157 (= c!114758 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!518173))))

(declare-fun b!1155158 () Bool)

(declare-fun Unit!37938 () Unit!37934)

(assert (=> b!1155158 (= e!656988 Unit!37938)))

(declare-fun b!1155159 () Bool)

(declare-fun res!767591 () Bool)

(assert (=> b!1155159 (=> (not res!767591) (not e!656986))))

(assert (=> b!1155159 (= res!767591 (= (select (arr!36014 _keys!1208) i!673) k!934))))

(declare-fun b!1155160 () Bool)

(declare-fun arrayContainsKey!0 (array!74734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1155160 (= e!656996 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1155161 () Bool)

(assert (=> b!1155161 (= e!656989 (= call!54811 (-!1364 call!54812 k!934)))))

(declare-fun bm!54809 () Bool)

(declare-fun call!54815 () Unit!37934)

(assert (=> bm!54809 (= call!54816 call!54815)))

(declare-fun b!1155162 () Bool)

(declare-fun res!767595 () Bool)

(assert (=> b!1155162 (=> (not res!767595) (not e!656986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1155162 (= res!767595 (validMask!0 mask!1564))))

(declare-fun bm!54810 () Bool)

(assert (=> bm!54810 (= call!54813 call!54809)))

(declare-fun b!1155163 () Bool)

(declare-fun res!767601 () Bool)

(assert (=> b!1155163 (=> (not res!767601) (not e!656987))))

(assert (=> b!1155163 (= res!767601 (arrayNoDuplicates!0 lt!518174 #b00000000000000000000000000000000 Nil!25342))))

(declare-fun b!1155164 () Bool)

(assert (=> b!1155164 (contains!6774 call!54810 k!934)))

(declare-fun lt!518184 () Unit!37934)

(assert (=> b!1155164 (= lt!518184 call!54815)))

(assert (=> b!1155164 call!54809))

(assert (=> b!1155164 (= lt!518175 (+!3617 lt!518179 (tuple2!18561 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!518176 () Unit!37934)

(declare-fun addStillContains!914 (ListLongMap!16541 (_ BitVec 64) V!43753 (_ BitVec 64)) Unit!37934)

(assert (=> b!1155164 (= lt!518176 (addStillContains!914 lt!518179 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1155164 (= e!656994 lt!518184)))

(declare-fun b!1155165 () Bool)

(declare-fun e!656983 () Bool)

(assert (=> b!1155165 (= e!656983 tp_is_empty!28969)))

(declare-fun b!1155166 () Bool)

(declare-fun e!656990 () Bool)

(assert (=> b!1155166 (= e!656987 (not e!656990))))

(declare-fun res!767590 () Bool)

(assert (=> b!1155166 (=> res!767590 e!656990)))

(assert (=> b!1155166 (= res!767590 (bvsgt from!1455 i!673))))

(assert (=> b!1155166 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!518180 () Unit!37934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74734 (_ BitVec 64) (_ BitVec 32)) Unit!37934)

(assert (=> b!1155166 (= lt!518180 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1155167 () Bool)

(assert (=> b!1155167 (= c!114762 (and (not lt!518173) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1155167 (= e!656994 e!656985)))

(declare-fun bm!54811 () Bool)

(assert (=> bm!54811 (= call!54815 (addStillContains!914 (ite c!114759 lt!518175 lt!518179) (ite c!114759 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114762 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114759 minValue!944 (ite c!114762 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1155168 () Bool)

(assert (=> b!1155168 (= e!656992 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!45278 () Bool)

(declare-fun tp!86029 () Bool)

(assert (=> mapNonEmpty!45278 (= mapRes!45278 (and tp!86029 e!656997))))

(declare-fun mapRest!45278 () (Array (_ BitVec 32) ValueCell!13775))

(declare-fun mapKey!45278 () (_ BitVec 32))

(declare-fun mapValue!45278 () ValueCell!13775)

(assert (=> mapNonEmpty!45278 (= (arr!36015 _values!996) (store mapRest!45278 mapKey!45278 mapValue!45278))))

(declare-fun bm!54812 () Bool)

(assert (=> bm!54812 (= call!54814 call!54810)))

(declare-fun bm!54813 () Bool)

(assert (=> bm!54813 (= call!54811 (getCurrentListMapNoExtraKeys!4725 lt!518174 lt!518182 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1155169 () Bool)

(declare-fun lt!518171 () Unit!37934)

(assert (=> b!1155169 (= e!656985 lt!518171)))

(assert (=> b!1155169 (= lt!518171 call!54816)))

(assert (=> b!1155169 call!54813))

(declare-fun b!1155170 () Bool)

(assert (=> b!1155170 (= e!656991 (and e!656983 mapRes!45278))))

(declare-fun condMapEmpty!45278 () Bool)

(declare-fun mapDefault!45278 () ValueCell!13775)

