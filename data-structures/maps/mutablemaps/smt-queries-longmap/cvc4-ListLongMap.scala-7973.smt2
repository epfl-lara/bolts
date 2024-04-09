; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98718 () Bool)

(assert start!98718)

(declare-fun b_free!24287 () Bool)

(declare-fun b_next!24287 () Bool)

(assert (=> start!98718 (= b_free!24287 (not b_next!24287))))

(declare-fun tp!85572 () Bool)

(declare-fun b_and!39437 () Bool)

(assert (=> start!98718 (= tp!85572 b_and!39437)))

(declare-datatypes ((array!74438 0))(
  ( (array!74439 (arr!35866 (Array (_ BitVec 32) (_ BitVec 64))) (size!36403 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74438)

(declare-fun e!653105 () Bool)

(declare-fun b!1148150 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148150 (= e!653105 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148151 () Bool)

(declare-fun e!653117 () Bool)

(assert (=> b!1148151 (= e!653117 true)))

(declare-fun e!653115 () Bool)

(assert (=> b!1148151 e!653115))

(declare-fun res!764181 () Bool)

(assert (=> b!1148151 (=> (not res!764181) (not e!653115))))

(declare-datatypes ((V!43549 0))(
  ( (V!43550 (val!14465 Int)) )
))
(declare-fun lt!513184 () V!43549)

(declare-datatypes ((tuple2!18422 0))(
  ( (tuple2!18423 (_1!9221 (_ BitVec 64)) (_2!9221 V!43549)) )
))
(declare-datatypes ((List!25215 0))(
  ( (Nil!25212) (Cons!25211 (h!26420 tuple2!18422) (t!36501 List!25215)) )
))
(declare-datatypes ((ListLongMap!16403 0))(
  ( (ListLongMap!16404 (toList!8217 List!25215)) )
))
(declare-fun lt!513182 () ListLongMap!16403)

(declare-fun -!1306 (ListLongMap!16403 (_ BitVec 64)) ListLongMap!16403)

(declare-fun +!3556 (ListLongMap!16403 tuple2!18422) ListLongMap!16403)

(assert (=> b!1148151 (= res!764181 (= (-!1306 (+!3556 lt!513182 (tuple2!18423 (select (arr!35866 _keys!1208) from!1455) lt!513184)) (select (arr!35866 _keys!1208) from!1455)) lt!513182))))

(declare-datatypes ((Unit!37646 0))(
  ( (Unit!37647) )
))
(declare-fun lt!513185 () Unit!37646)

(declare-fun addThenRemoveForNewKeyIsSame!155 (ListLongMap!16403 (_ BitVec 64) V!43549) Unit!37646)

(assert (=> b!1148151 (= lt!513185 (addThenRemoveForNewKeyIsSame!155 lt!513182 (select (arr!35866 _keys!1208) from!1455) lt!513184))))

(declare-fun lt!513179 () V!43549)

(declare-datatypes ((ValueCell!13699 0))(
  ( (ValueCellFull!13699 (v!17103 V!43549)) (EmptyCell!13699) )
))
(declare-datatypes ((array!74440 0))(
  ( (array!74441 (arr!35867 (Array (_ BitVec 32) ValueCell!13699)) (size!36404 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74440)

(declare-fun get!18271 (ValueCell!13699 V!43549) V!43549)

(assert (=> b!1148151 (= lt!513184 (get!18271 (select (arr!35867 _values!996) from!1455) lt!513179))))

(declare-fun lt!513178 () Unit!37646)

(declare-fun e!653110 () Unit!37646)

(assert (=> b!1148151 (= lt!513178 e!653110)))

(declare-fun c!113390 () Bool)

(declare-fun contains!6713 (ListLongMap!16403 (_ BitVec 64)) Bool)

(assert (=> b!1148151 (= c!113390 (contains!6713 lt!513182 k!934))))

(declare-fun zeroValue!944 () V!43549)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43549)

(declare-fun getCurrentListMapNoExtraKeys!4658 (array!74438 array!74440 (_ BitVec 32) (_ BitVec 32) V!43549 V!43549 (_ BitVec 32) Int) ListLongMap!16403)

(assert (=> b!1148151 (= lt!513182 (getCurrentListMapNoExtraKeys!4658 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148152 () Bool)

(declare-fun res!764178 () Bool)

(declare-fun e!653116 () Bool)

(assert (=> b!1148152 (=> (not res!764178) (not e!653116))))

(assert (=> b!1148152 (= res!764178 (and (= (size!36404 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36403 _keys!1208) (size!36404 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!52982 () Bool)

(declare-fun call!52985 () ListLongMap!16403)

(declare-fun c!113393 () Bool)

(declare-fun c!113392 () Bool)

(declare-fun lt!513195 () ListLongMap!16403)

(assert (=> bm!52982 (= call!52985 (+!3556 (ite c!113393 lt!513195 lt!513182) (ite c!113393 (tuple2!18423 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113392 (tuple2!18423 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18423 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1148153 () Bool)

(declare-fun e!653111 () Bool)

(declare-fun e!653113 () Bool)

(assert (=> b!1148153 (= e!653111 (not e!653113))))

(declare-fun res!764172 () Bool)

(assert (=> b!1148153 (=> res!764172 e!653113)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148153 (= res!764172 (bvsgt from!1455 i!673))))

(assert (=> b!1148153 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513190 () Unit!37646)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74438 (_ BitVec 64) (_ BitVec 32)) Unit!37646)

(assert (=> b!1148153 (= lt!513190 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1148154 () Bool)

(declare-fun e!653109 () Bool)

(assert (=> b!1148154 (= e!653113 e!653109)))

(declare-fun res!764175 () Bool)

(assert (=> b!1148154 (=> res!764175 e!653109)))

(assert (=> b!1148154 (= res!764175 (not (= from!1455 i!673)))))

(declare-fun lt!513188 () array!74440)

(declare-fun lt!513194 () ListLongMap!16403)

(declare-fun lt!513181 () array!74438)

(assert (=> b!1148154 (= lt!513194 (getCurrentListMapNoExtraKeys!4658 lt!513181 lt!513188 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1148154 (= lt!513188 (array!74441 (store (arr!35867 _values!996) i!673 (ValueCellFull!13699 lt!513179)) (size!36404 _values!996)))))

(declare-fun dynLambda!2690 (Int (_ BitVec 64)) V!43549)

(assert (=> b!1148154 (= lt!513179 (dynLambda!2690 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513180 () ListLongMap!16403)

(assert (=> b!1148154 (= lt!513180 (getCurrentListMapNoExtraKeys!4658 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!52983 () Bool)

(declare-fun call!52990 () Unit!37646)

(declare-fun addStillContains!855 (ListLongMap!16403 (_ BitVec 64) V!43549 (_ BitVec 64)) Unit!37646)

(assert (=> bm!52983 (= call!52990 (addStillContains!855 (ite c!113393 lt!513195 lt!513182) (ite c!113393 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113392 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113393 minValue!944 (ite c!113392 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1148155 () Bool)

(declare-fun res!764176 () Bool)

(assert (=> b!1148155 (=> (not res!764176) (not e!653116))))

(assert (=> b!1148155 (= res!764176 (= (select (arr!35866 _keys!1208) i!673) k!934))))

(declare-fun b!1148156 () Bool)

(assert (=> b!1148156 (= e!653115 (= (-!1306 lt!513180 k!934) lt!513182))))

(declare-fun b!1148157 () Bool)

(declare-fun res!764183 () Bool)

(assert (=> b!1148157 (=> (not res!764183) (not e!653116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74438 (_ BitVec 32)) Bool)

(assert (=> b!1148157 (= res!764183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!764169 () Bool)

(assert (=> start!98718 (=> (not res!764169) (not e!653116))))

(assert (=> start!98718 (= res!764169 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36403 _keys!1208))))))

(assert (=> start!98718 e!653116))

(declare-fun tp_is_empty!28817 () Bool)

(assert (=> start!98718 tp_is_empty!28817))

(declare-fun array_inv!27350 (array!74438) Bool)

(assert (=> start!98718 (array_inv!27350 _keys!1208)))

(assert (=> start!98718 true))

(assert (=> start!98718 tp!85572))

(declare-fun e!653107 () Bool)

(declare-fun array_inv!27351 (array!74440) Bool)

(assert (=> start!98718 (and (array_inv!27351 _values!996) e!653107)))

(declare-fun b!1148158 () Bool)

(declare-fun e!653112 () Bool)

(assert (=> b!1148158 (= e!653112 tp_is_empty!28817)))

(declare-fun call!52989 () ListLongMap!16403)

(declare-fun bm!52984 () Bool)

(assert (=> bm!52984 (= call!52989 (getCurrentListMapNoExtraKeys!4658 lt!513181 lt!513188 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45050 () Bool)

(declare-fun mapRes!45050 () Bool)

(assert (=> mapIsEmpty!45050 mapRes!45050))

(declare-fun b!1148159 () Bool)

(declare-fun e!653114 () Bool)

(assert (=> b!1148159 (= e!653114 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148160 () Bool)

(declare-fun e!653106 () Unit!37646)

(declare-fun Unit!37648 () Unit!37646)

(assert (=> b!1148160 (= e!653106 Unit!37648)))

(declare-fun b!1148161 () Bool)

(declare-fun e!653108 () Unit!37646)

(assert (=> b!1148161 (= e!653108 e!653106)))

(declare-fun c!113389 () Bool)

(declare-fun lt!513197 () Bool)

(assert (=> b!1148161 (= c!113389 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513197))))

(declare-fun b!1148162 () Bool)

(declare-fun res!764182 () Bool)

(assert (=> b!1148162 (=> (not res!764182) (not e!653111))))

(declare-datatypes ((List!25216 0))(
  ( (Nil!25213) (Cons!25212 (h!26421 (_ BitVec 64)) (t!36502 List!25216)) )
))
(declare-fun arrayNoDuplicates!0 (array!74438 (_ BitVec 32) List!25216) Bool)

(assert (=> b!1148162 (= res!764182 (arrayNoDuplicates!0 lt!513181 #b00000000000000000000000000000000 Nil!25213))))

(declare-fun call!52988 () ListLongMap!16403)

(declare-fun bm!52985 () Bool)

(assert (=> bm!52985 (= call!52988 (getCurrentListMapNoExtraKeys!4658 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!653121 () Bool)

(declare-fun b!1148163 () Bool)

(assert (=> b!1148163 (= e!653121 (= call!52989 (-!1306 call!52988 k!934)))))

(declare-fun call!52987 () ListLongMap!16403)

(declare-fun call!52991 () Bool)

(declare-fun bm!52986 () Bool)

(assert (=> bm!52986 (= call!52991 (contains!6713 (ite c!113393 lt!513195 call!52987) k!934))))

(declare-fun bm!52987 () Bool)

(declare-fun call!52992 () Bool)

(assert (=> bm!52987 (= call!52992 call!52991)))

(declare-fun b!1148164 () Bool)

(assert (=> b!1148164 call!52992))

(declare-fun lt!513196 () Unit!37646)

(declare-fun call!52986 () Unit!37646)

(assert (=> b!1148164 (= lt!513196 call!52986)))

(assert (=> b!1148164 (= e!653106 lt!513196)))

(declare-fun b!1148165 () Bool)

(assert (=> b!1148165 (contains!6713 call!52985 k!934)))

(declare-fun lt!513187 () Unit!37646)

(assert (=> b!1148165 (= lt!513187 call!52990)))

(assert (=> b!1148165 call!52991))

(assert (=> b!1148165 (= lt!513195 (+!3556 lt!513182 (tuple2!18423 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!513186 () Unit!37646)

(assert (=> b!1148165 (= lt!513186 (addStillContains!855 lt!513182 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!653119 () Unit!37646)

(assert (=> b!1148165 (= e!653119 lt!513187)))

(declare-fun mapNonEmpty!45050 () Bool)

(declare-fun tp!85573 () Bool)

(declare-fun e!653118 () Bool)

(assert (=> mapNonEmpty!45050 (= mapRes!45050 (and tp!85573 e!653118))))

(declare-fun mapRest!45050 () (Array (_ BitVec 32) ValueCell!13699))

(declare-fun mapValue!45050 () ValueCell!13699)

(declare-fun mapKey!45050 () (_ BitVec 32))

(assert (=> mapNonEmpty!45050 (= (arr!35867 _values!996) (store mapRest!45050 mapKey!45050 mapValue!45050))))

(declare-fun b!1148166 () Bool)

(assert (=> b!1148166 (= e!653121 (= call!52989 call!52988))))

(declare-fun b!1148167 () Bool)

(declare-fun Unit!37649 () Unit!37646)

(assert (=> b!1148167 (= e!653110 Unit!37649)))

(assert (=> b!1148167 (= lt!513197 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148167 (= c!113393 (and (not lt!513197) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513198 () Unit!37646)

(assert (=> b!1148167 (= lt!513198 e!653119)))

(declare-fun lt!513192 () Unit!37646)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!442 (array!74438 array!74440 (_ BitVec 32) (_ BitVec 32) V!43549 V!43549 (_ BitVec 64) (_ BitVec 32) Int) Unit!37646)

(assert (=> b!1148167 (= lt!513192 (lemmaListMapContainsThenArrayContainsFrom!442 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113391 () Bool)

(assert (=> b!1148167 (= c!113391 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764171 () Bool)

(assert (=> b!1148167 (= res!764171 e!653114)))

(assert (=> b!1148167 (=> (not res!764171) (not e!653105))))

(assert (=> b!1148167 e!653105))

(declare-fun lt!513183 () Unit!37646)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74438 (_ BitVec 32) (_ BitVec 32)) Unit!37646)

(assert (=> b!1148167 (= lt!513183 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1148167 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25213)))

(declare-fun lt!513189 () Unit!37646)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74438 (_ BitVec 64) (_ BitVec 32) List!25216) Unit!37646)

(assert (=> b!1148167 (= lt!513189 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25213))))

(assert (=> b!1148167 false))

(declare-fun b!1148168 () Bool)

(declare-fun res!764170 () Bool)

(assert (=> b!1148168 (=> (not res!764170) (not e!653116))))

(assert (=> b!1148168 (= res!764170 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25213))))

(declare-fun b!1148169 () Bool)

(declare-fun res!764177 () Bool)

(assert (=> b!1148169 (=> (not res!764177) (not e!653116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148169 (= res!764177 (validMask!0 mask!1564))))

(declare-fun b!1148170 () Bool)

(assert (=> b!1148170 (= e!653107 (and e!653112 mapRes!45050))))

(declare-fun condMapEmpty!45050 () Bool)

(declare-fun mapDefault!45050 () ValueCell!13699)

