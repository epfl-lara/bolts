; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98762 () Bool)

(assert start!98762)

(declare-fun b_free!24331 () Bool)

(declare-fun b_next!24331 () Bool)

(assert (=> start!98762 (= b_free!24331 (not b_next!24331))))

(declare-fun tp!85704 () Bool)

(declare-fun b_and!39525 () Bool)

(assert (=> start!98762 (= tp!85704 b_and!39525)))

(declare-fun b!1150174 () Bool)

(declare-datatypes ((Unit!37739 0))(
  ( (Unit!37740) )
))
(declare-fun e!654240 () Unit!37739)

(declare-fun lt!514614 () Unit!37739)

(assert (=> b!1150174 (= e!654240 lt!514614)))

(declare-fun call!53516 () Unit!37739)

(assert (=> b!1150174 (= lt!514614 call!53516)))

(declare-fun call!53520 () Bool)

(assert (=> b!1150174 call!53520))

(declare-fun b!1150175 () Bool)

(declare-fun res!765160 () Bool)

(declare-fun e!654234 () Bool)

(assert (=> b!1150175 (=> (not res!765160) (not e!654234))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1150175 (= res!765160 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45116 () Bool)

(declare-fun mapRes!45116 () Bool)

(assert (=> mapIsEmpty!45116 mapRes!45116))

(declare-fun bm!53510 () Bool)

(declare-datatypes ((V!43609 0))(
  ( (V!43610 (val!14487 Int)) )
))
(declare-datatypes ((tuple2!18464 0))(
  ( (tuple2!18465 (_1!9242 (_ BitVec 64)) (_2!9242 V!43609)) )
))
(declare-datatypes ((List!25256 0))(
  ( (Nil!25253) (Cons!25252 (h!26461 tuple2!18464) (t!36586 List!25256)) )
))
(declare-datatypes ((ListLongMap!16445 0))(
  ( (ListLongMap!16446 (toList!8238 List!25256)) )
))
(declare-fun call!53517 () ListLongMap!16445)

(declare-fun call!53519 () ListLongMap!16445)

(assert (=> bm!53510 (= call!53517 call!53519)))

(declare-fun zeroValue!944 () V!43609)

(declare-datatypes ((array!74526 0))(
  ( (array!74527 (arr!35910 (Array (_ BitVec 32) (_ BitVec 64))) (size!36447 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74526)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!53511 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun call!53513 () ListLongMap!16445)

(declare-datatypes ((ValueCell!13721 0))(
  ( (ValueCellFull!13721 (v!17125 V!43609)) (EmptyCell!13721) )
))
(declare-datatypes ((array!74528 0))(
  ( (array!74529 (arr!35911 (Array (_ BitVec 32) ValueCell!13721)) (size!36448 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74528)

(declare-fun minValue!944 () V!43609)

(declare-fun getCurrentListMapNoExtraKeys!4679 (array!74526 array!74528 (_ BitVec 32) (_ BitVec 32) V!43609 V!43609 (_ BitVec 32) Int) ListLongMap!16445)

(assert (=> bm!53511 (= call!53513 (getCurrentListMapNoExtraKeys!4679 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150176 () Bool)

(declare-fun lt!514618 () ListLongMap!16445)

(declare-fun e!654241 () Bool)

(declare-fun lt!514615 () array!74528)

(declare-fun lt!514607 () array!74526)

(assert (=> b!1150176 (= e!654241 (= lt!514618 (getCurrentListMapNoExtraKeys!4679 lt!514607 lt!514615 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun bm!53512 () Bool)

(declare-fun call!53514 () ListLongMap!16445)

(assert (=> bm!53512 (= call!53514 (getCurrentListMapNoExtraKeys!4679 lt!514607 lt!514615 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150177 () Bool)

(declare-fun res!765172 () Bool)

(assert (=> b!1150177 (=> (not res!765172) (not e!654234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74526 (_ BitVec 32)) Bool)

(assert (=> b!1150177 (= res!765172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!765162 () Bool)

(assert (=> start!98762 (=> (not res!765162) (not e!654234))))

(assert (=> start!98762 (= res!765162 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36447 _keys!1208))))))

(assert (=> start!98762 e!654234))

(declare-fun tp_is_empty!28861 () Bool)

(assert (=> start!98762 tp_is_empty!28861))

(declare-fun array_inv!27382 (array!74526) Bool)

(assert (=> start!98762 (array_inv!27382 _keys!1208)))

(assert (=> start!98762 true))

(assert (=> start!98762 tp!85704))

(declare-fun e!654228 () Bool)

(declare-fun array_inv!27383 (array!74528) Bool)

(assert (=> start!98762 (and (array_inv!27383 _values!996) e!654228)))

(declare-fun b!1150178 () Bool)

(declare-fun e!654235 () Bool)

(assert (=> b!1150178 (= e!654234 e!654235)))

(declare-fun res!765166 () Bool)

(assert (=> b!1150178 (=> (not res!765166) (not e!654235))))

(assert (=> b!1150178 (= res!765166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514607 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1150178 (= lt!514607 (array!74527 (store (arr!35910 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36447 _keys!1208)))))

(declare-fun b!1150179 () Bool)

(assert (=> b!1150179 call!53520))

(declare-fun lt!514622 () Unit!37739)

(assert (=> b!1150179 (= lt!514622 call!53516)))

(declare-fun e!654238 () Unit!37739)

(assert (=> b!1150179 (= e!654238 lt!514622)))

(declare-fun e!654239 () Bool)

(declare-fun b!1150180 () Bool)

(declare-fun arrayContainsKey!0 (array!74526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150180 (= e!654239 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150181 () Bool)

(declare-fun e!654233 () Unit!37739)

(declare-fun Unit!37741 () Unit!37739)

(assert (=> b!1150181 (= e!654233 Unit!37741)))

(declare-fun lt!514610 () Bool)

(assert (=> b!1150181 (= lt!514610 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113787 () Bool)

(assert (=> b!1150181 (= c!113787 (and (not lt!514610) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514612 () Unit!37739)

(declare-fun e!654227 () Unit!37739)

(assert (=> b!1150181 (= lt!514612 e!654227)))

(declare-fun lt!514623 () Unit!37739)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!460 (array!74526 array!74528 (_ BitVec 32) (_ BitVec 32) V!43609 V!43609 (_ BitVec 64) (_ BitVec 32) Int) Unit!37739)

(assert (=> b!1150181 (= lt!514623 (lemmaListMapContainsThenArrayContainsFrom!460 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113788 () Bool)

(assert (=> b!1150181 (= c!113788 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765173 () Bool)

(assert (=> b!1150181 (= res!765173 e!654239)))

(declare-fun e!654236 () Bool)

(assert (=> b!1150181 (=> (not res!765173) (not e!654236))))

(assert (=> b!1150181 e!654236))

(declare-fun lt!514621 () Unit!37739)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74526 (_ BitVec 32) (_ BitVec 32)) Unit!37739)

(assert (=> b!1150181 (= lt!514621 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25257 0))(
  ( (Nil!25254) (Cons!25253 (h!26462 (_ BitVec 64)) (t!36587 List!25257)) )
))
(declare-fun arrayNoDuplicates!0 (array!74526 (_ BitVec 32) List!25257) Bool)

(assert (=> b!1150181 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25254)))

(declare-fun lt!514611 () Unit!37739)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74526 (_ BitVec 64) (_ BitVec 32) List!25257) Unit!37739)

(assert (=> b!1150181 (= lt!514611 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25254))))

(assert (=> b!1150181 false))

(declare-fun b!1150182 () Bool)

(declare-fun res!765171 () Bool)

(assert (=> b!1150182 (=> (not res!765171) (not e!654234))))

(assert (=> b!1150182 (= res!765171 (= (select (arr!35910 _keys!1208) i!673) k!934))))

(declare-fun b!1150183 () Bool)

(declare-fun e!654243 () Bool)

(assert (=> b!1150183 (= e!654243 tp_is_empty!28861)))

(declare-fun b!1150184 () Bool)

(declare-fun e!654237 () Bool)

(assert (=> b!1150184 (= e!654235 (not e!654237))))

(declare-fun res!765169 () Bool)

(assert (=> b!1150184 (=> res!765169 e!654237)))

(assert (=> b!1150184 (= res!765169 (bvsgt from!1455 i!673))))

(assert (=> b!1150184 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!514617 () Unit!37739)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74526 (_ BitVec 64) (_ BitVec 32)) Unit!37739)

(assert (=> b!1150184 (= lt!514617 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1150185 () Bool)

(declare-fun e!654230 () Bool)

(assert (=> b!1150185 (= e!654230 (= call!53514 call!53513))))

(declare-fun b!1150186 () Bool)

(declare-fun Unit!37742 () Unit!37739)

(assert (=> b!1150186 (= e!654233 Unit!37742)))

(declare-fun b!1150187 () Bool)

(assert (=> b!1150187 (= e!654236 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1150188 () Bool)

(declare-fun e!654242 () Bool)

(assert (=> b!1150188 (= e!654237 e!654242)))

(declare-fun res!765164 () Bool)

(assert (=> b!1150188 (=> res!765164 e!654242)))

(assert (=> b!1150188 (= res!765164 (not (= from!1455 i!673)))))

(declare-fun lt!514619 () ListLongMap!16445)

(assert (=> b!1150188 (= lt!514619 (getCurrentListMapNoExtraKeys!4679 lt!514607 lt!514615 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!514608 () V!43609)

(assert (=> b!1150188 (= lt!514615 (array!74529 (store (arr!35911 _values!996) i!673 (ValueCellFull!13721 lt!514608)) (size!36448 _values!996)))))

(declare-fun dynLambda!2708 (Int (_ BitVec 64)) V!43609)

(assert (=> b!1150188 (= lt!514608 (dynLambda!2708 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!514620 () ListLongMap!16445)

(assert (=> b!1150188 (= lt!514620 (getCurrentListMapNoExtraKeys!4679 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1150189 () Bool)

(declare-fun e!654229 () Bool)

(assert (=> b!1150189 (= e!654229 tp_is_empty!28861)))

(declare-fun b!1150190 () Bool)

(declare-fun -!1325 (ListLongMap!16445 (_ BitVec 64)) ListLongMap!16445)

(assert (=> b!1150190 (= e!654230 (= call!53514 (-!1325 call!53513 k!934)))))

(declare-fun mapNonEmpty!45116 () Bool)

(declare-fun tp!85705 () Bool)

(assert (=> mapNonEmpty!45116 (= mapRes!45116 (and tp!85705 e!654243))))

(declare-fun mapKey!45116 () (_ BitVec 32))

(declare-fun mapRest!45116 () (Array (_ BitVec 32) ValueCell!13721))

(declare-fun mapValue!45116 () ValueCell!13721)

(assert (=> mapNonEmpty!45116 (= (arr!35911 _values!996) (store mapRest!45116 mapKey!45116 mapValue!45116))))

(declare-fun b!1150191 () Bool)

(declare-fun res!765163 () Bool)

(assert (=> b!1150191 (=> (not res!765163) (not e!654234))))

(assert (=> b!1150191 (= res!765163 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25254))))

(declare-fun b!1150192 () Bool)

(declare-fun e!654232 () Bool)

(assert (=> b!1150192 (= e!654232 true)))

(assert (=> b!1150192 e!654241))

(declare-fun res!765167 () Bool)

(assert (=> b!1150192 (=> (not res!765167) (not e!654241))))

(declare-fun lt!514609 () ListLongMap!16445)

(assert (=> b!1150192 (= res!765167 (= lt!514618 lt!514609))))

(assert (=> b!1150192 (= lt!514618 (-!1325 lt!514620 k!934))))

(declare-fun lt!514613 () V!43609)

(declare-fun +!3575 (ListLongMap!16445 tuple2!18464) ListLongMap!16445)

(assert (=> b!1150192 (= (-!1325 (+!3575 lt!514609 (tuple2!18465 (select (arr!35910 _keys!1208) from!1455) lt!514613)) (select (arr!35910 _keys!1208) from!1455)) lt!514609)))

(declare-fun lt!514616 () Unit!37739)

(declare-fun addThenRemoveForNewKeyIsSame!174 (ListLongMap!16445 (_ BitVec 64) V!43609) Unit!37739)

(assert (=> b!1150192 (= lt!514616 (addThenRemoveForNewKeyIsSame!174 lt!514609 (select (arr!35910 _keys!1208) from!1455) lt!514613))))

(declare-fun get!18306 (ValueCell!13721 V!43609) V!43609)

(assert (=> b!1150192 (= lt!514613 (get!18306 (select (arr!35911 _values!996) from!1455) lt!514608))))

(declare-fun lt!514602 () Unit!37739)

(assert (=> b!1150192 (= lt!514602 e!654233)))

(declare-fun c!113789 () Bool)

(declare-fun contains!6733 (ListLongMap!16445 (_ BitVec 64)) Bool)

(assert (=> b!1150192 (= c!113789 (contains!6733 lt!514609 k!934))))

(assert (=> b!1150192 (= lt!514609 (getCurrentListMapNoExtraKeys!4679 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150193 () Bool)

(assert (=> b!1150193 (= e!654242 e!654232)))

(declare-fun res!765165 () Bool)

(assert (=> b!1150193 (=> res!765165 e!654232)))

(assert (=> b!1150193 (= res!765165 (not (= (select (arr!35910 _keys!1208) from!1455) k!934)))))

(assert (=> b!1150193 e!654230))

(declare-fun c!113786 () Bool)

(assert (=> b!1150193 (= c!113786 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!514605 () Unit!37739)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!564 (array!74526 array!74528 (_ BitVec 32) (_ BitVec 32) V!43609 V!43609 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37739)

(assert (=> b!1150193 (= lt!514605 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150194 () Bool)

(declare-fun res!765161 () Bool)

(assert (=> b!1150194 (=> (not res!765161) (not e!654235))))

(assert (=> b!1150194 (= res!765161 (arrayNoDuplicates!0 lt!514607 #b00000000000000000000000000000000 Nil!25254))))

(declare-fun lt!514603 () ListLongMap!16445)

(declare-fun bm!53513 () Bool)

(declare-fun c!113785 () Bool)

(declare-fun call!53518 () Unit!37739)

(declare-fun addStillContains!875 (ListLongMap!16445 (_ BitVec 64) V!43609 (_ BitVec 64)) Unit!37739)

(assert (=> bm!53513 (= call!53518 (addStillContains!875 (ite c!113787 lt!514603 lt!514609) (ite c!113787 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113785 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113787 minValue!944 (ite c!113785 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1150195 () Bool)

(assert (=> b!1150195 (contains!6733 call!53519 k!934)))

(declare-fun lt!514606 () Unit!37739)

(assert (=> b!1150195 (= lt!514606 call!53518)))

(declare-fun call!53515 () Bool)

(assert (=> b!1150195 call!53515))

(assert (=> b!1150195 (= lt!514603 (+!3575 lt!514609 (tuple2!18465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514604 () Unit!37739)

(assert (=> b!1150195 (= lt!514604 (addStillContains!875 lt!514609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1150195 (= e!654227 lt!514606)))

(declare-fun bm!53514 () Bool)

(assert (=> bm!53514 (= call!53519 (+!3575 (ite c!113787 lt!514603 lt!514609) (ite c!113787 (tuple2!18465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113785 (tuple2!18465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!53515 () Bool)

(assert (=> bm!53515 (= call!53520 call!53515)))

(declare-fun b!1150196 () Bool)

(declare-fun res!765170 () Bool)

(assert (=> b!1150196 (=> (not res!765170) (not e!654234))))

(assert (=> b!1150196 (= res!765170 (and (= (size!36448 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36447 _keys!1208) (size!36448 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1150197 () Bool)

(declare-fun res!765168 () Bool)

(assert (=> b!1150197 (=> (not res!765168) (not e!654234))))

(assert (=> b!1150197 (= res!765168 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36447 _keys!1208))))))

(declare-fun b!1150198 () Bool)

(assert (=> b!1150198 (= c!113785 (and (not lt!514610) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1150198 (= e!654227 e!654240)))

(declare-fun bm!53516 () Bool)

(assert (=> bm!53516 (= call!53515 (contains!6733 (ite c!113787 lt!514603 call!53517) k!934))))

(declare-fun b!1150199 () Bool)

(assert (=> b!1150199 (= e!654228 (and e!654229 mapRes!45116))))

(declare-fun condMapEmpty!45116 () Bool)

(declare-fun mapDefault!45116 () ValueCell!13721)

