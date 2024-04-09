; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98674 () Bool)

(assert start!98674)

(declare-fun b_free!24243 () Bool)

(declare-fun b_next!24243 () Bool)

(assert (=> start!98674 (= b_free!24243 (not b_next!24243))))

(declare-fun tp!85440 () Bool)

(declare-fun b_and!39349 () Bool)

(assert (=> start!98674 (= tp!85440 b_and!39349)))

(declare-datatypes ((V!43491 0))(
  ( (V!43492 (val!14443 Int)) )
))
(declare-fun zeroValue!944 () V!43491)

(declare-datatypes ((ValueCell!13677 0))(
  ( (ValueCellFull!13677 (v!17081 V!43491)) (EmptyCell!13677) )
))
(declare-datatypes ((array!74352 0))(
  ( (array!74353 (arr!35823 (Array (_ BitVec 32) ValueCell!13677)) (size!36360 (_ BitVec 32))) )
))
(declare-fun lt!511808 () array!74352)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!74354 0))(
  ( (array!74355 (arr!35824 (Array (_ BitVec 32) (_ BitVec 64))) (size!36361 (_ BitVec 32))) )
))
(declare-fun lt!511800 () array!74354)

(declare-datatypes ((tuple2!18380 0))(
  ( (tuple2!18381 (_1!9200 (_ BitVec 64)) (_2!9200 V!43491)) )
))
(declare-datatypes ((List!25177 0))(
  ( (Nil!25174) (Cons!25173 (h!26382 tuple2!18380) (t!36419 List!25177)) )
))
(declare-datatypes ((ListLongMap!16361 0))(
  ( (ListLongMap!16362 (toList!8196 List!25177)) )
))
(declare-fun call!52458 () ListLongMap!16361)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!52454 () Bool)

(declare-fun minValue!944 () V!43491)

(declare-fun getCurrentListMapNoExtraKeys!4638 (array!74354 array!74352 (_ BitVec 32) (_ BitVec 32) V!43491 V!43491 (_ BitVec 32) Int) ListLongMap!16361)

(assert (=> bm!52454 (= call!52458 (getCurrentListMapNoExtraKeys!4638 lt!511800 lt!511808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44984 () Bool)

(declare-fun mapRes!44984 () Bool)

(declare-fun tp!85441 () Bool)

(declare-fun e!651991 () Bool)

(assert (=> mapNonEmpty!44984 (= mapRes!44984 (and tp!85441 e!651991))))

(declare-fun mapRest!44984 () (Array (_ BitVec 32) ValueCell!13677))

(declare-fun _values!996 () array!74352)

(declare-fun mapValue!44984 () ValueCell!13677)

(declare-fun mapKey!44984 () (_ BitVec 32))

(assert (=> mapNonEmpty!44984 (= (arr!35823 _values!996) (store mapRest!44984 mapKey!44984 mapValue!44984))))

(declare-fun b!1146126 () Bool)

(declare-fun e!651992 () Bool)

(declare-fun e!651983 () Bool)

(assert (=> b!1146126 (= e!651992 (and e!651983 mapRes!44984))))

(declare-fun condMapEmpty!44984 () Bool)

(declare-fun mapDefault!44984 () ValueCell!13677)

(assert (=> b!1146126 (= condMapEmpty!44984 (= (arr!35823 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13677)) mapDefault!44984)))))

(declare-fun bm!52455 () Bool)

(declare-fun call!52459 () ListLongMap!16361)

(declare-fun lt!511811 () ListLongMap!16361)

(declare-fun lt!511806 () ListLongMap!16361)

(declare-fun c!112994 () Bool)

(declare-fun c!112995 () Bool)

(declare-fun +!3538 (ListLongMap!16361 tuple2!18380) ListLongMap!16361)

(assert (=> bm!52455 (= call!52459 (+!3538 (ite c!112994 lt!511806 lt!511811) (ite c!112994 (tuple2!18381 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112995 (tuple2!18381 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18381 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146127 () Bool)

(declare-fun e!651999 () Bool)

(declare-fun e!651996 () Bool)

(assert (=> b!1146127 (= e!651999 (not e!651996))))

(declare-fun res!763182 () Bool)

(assert (=> b!1146127 (=> res!763182 e!651996)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146127 (= res!763182 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!74354)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146127 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37560 0))(
  ( (Unit!37561) )
))
(declare-fun lt!511810 () Unit!37560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74354 (_ BitVec 64) (_ BitVec 32)) Unit!37560)

(assert (=> b!1146127 (= lt!511810 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1146128 () Bool)

(declare-fun e!651998 () Bool)

(assert (=> b!1146128 (= e!651998 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146129 () Bool)

(declare-fun lt!511807 () Bool)

(assert (=> b!1146129 (= e!651998 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511807) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!52456 () Bool)

(declare-fun call!52461 () Unit!37560)

(declare-fun call!52463 () Unit!37560)

(assert (=> bm!52456 (= call!52461 call!52463)))

(declare-fun res!763179 () Bool)

(declare-fun e!651995 () Bool)

(assert (=> start!98674 (=> (not res!763179) (not e!651995))))

(assert (=> start!98674 (= res!763179 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36361 _keys!1208))))))

(assert (=> start!98674 e!651995))

(declare-fun tp_is_empty!28773 () Bool)

(assert (=> start!98674 tp_is_empty!28773))

(declare-fun array_inv!27322 (array!74354) Bool)

(assert (=> start!98674 (array_inv!27322 _keys!1208)))

(assert (=> start!98674 true))

(assert (=> start!98674 tp!85440))

(declare-fun array_inv!27323 (array!74352) Bool)

(assert (=> start!98674 (and (array_inv!27323 _values!996) e!651992)))

(declare-fun mapIsEmpty!44984 () Bool)

(assert (=> mapIsEmpty!44984 mapRes!44984))

(declare-fun b!1146130 () Bool)

(declare-fun res!763192 () Bool)

(assert (=> b!1146130 (=> (not res!763192) (not e!651999))))

(declare-datatypes ((List!25178 0))(
  ( (Nil!25175) (Cons!25174 (h!26383 (_ BitVec 64)) (t!36420 List!25178)) )
))
(declare-fun arrayNoDuplicates!0 (array!74354 (_ BitVec 32) List!25178) Bool)

(assert (=> b!1146130 (= res!763192 (arrayNoDuplicates!0 lt!511800 #b00000000000000000000000000000000 Nil!25175))))

(declare-fun b!1146131 () Bool)

(declare-fun e!651987 () Unit!37560)

(declare-fun lt!511799 () Unit!37560)

(assert (=> b!1146131 (= e!651987 lt!511799)))

(assert (=> b!1146131 (= lt!511799 call!52461)))

(declare-fun call!52457 () Bool)

(assert (=> b!1146131 call!52457))

(declare-fun b!1146132 () Bool)

(declare-fun e!651984 () Unit!37560)

(declare-fun Unit!37562 () Unit!37560)

(assert (=> b!1146132 (= e!651984 Unit!37562)))

(declare-fun b!1146133 () Bool)

(declare-fun res!763180 () Bool)

(assert (=> b!1146133 (=> (not res!763180) (not e!651995))))

(assert (=> b!1146133 (= res!763180 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36361 _keys!1208))))))

(declare-fun b!1146134 () Bool)

(assert (=> b!1146134 (= e!651987 e!651984)))

(declare-fun c!112993 () Bool)

(assert (=> b!1146134 (= c!112993 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511807))))

(declare-fun b!1146135 () Bool)

(declare-fun res!763189 () Bool)

(assert (=> b!1146135 (=> (not res!763189) (not e!651995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1146135 (= res!763189 (validKeyInArray!0 k0!934))))

(declare-fun b!1146136 () Bool)

(declare-fun e!651993 () Bool)

(assert (=> b!1146136 (= e!651996 e!651993)))

(declare-fun res!763186 () Bool)

(assert (=> b!1146136 (=> res!763186 e!651993)))

(assert (=> b!1146136 (= res!763186 (not (= from!1455 i!673)))))

(declare-fun lt!511804 () ListLongMap!16361)

(assert (=> b!1146136 (= lt!511804 (getCurrentListMapNoExtraKeys!4638 lt!511800 lt!511808 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511812 () V!43491)

(assert (=> b!1146136 (= lt!511808 (array!74353 (store (arr!35823 _values!996) i!673 (ValueCellFull!13677 lt!511812)) (size!36360 _values!996)))))

(declare-fun dynLambda!2679 (Int (_ BitVec 64)) V!43491)

(assert (=> b!1146136 (= lt!511812 (dynLambda!2679 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!511803 () ListLongMap!16361)

(assert (=> b!1146136 (= lt!511803 (getCurrentListMapNoExtraKeys!4638 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1146137 () Bool)

(assert (=> b!1146137 (= e!651983 tp_is_empty!28773)))

(declare-fun b!1146138 () Bool)

(declare-fun e!651986 () Unit!37560)

(declare-fun Unit!37563 () Unit!37560)

(assert (=> b!1146138 (= e!651986 Unit!37563)))

(declare-fun b!1146139 () Bool)

(assert (=> b!1146139 call!52457))

(declare-fun lt!511798 () Unit!37560)

(assert (=> b!1146139 (= lt!511798 call!52461)))

(assert (=> b!1146139 (= e!651984 lt!511798)))

(declare-fun b!1146140 () Bool)

(declare-fun res!763193 () Bool)

(assert (=> b!1146140 (=> (not res!763193) (not e!651995))))

(assert (=> b!1146140 (= res!763193 (= (select (arr!35824 _keys!1208) i!673) k0!934))))

(declare-fun b!1146141 () Bool)

(assert (=> b!1146141 (= e!651991 tp_is_empty!28773)))

(declare-fun call!52460 () ListLongMap!16361)

(declare-fun b!1146142 () Bool)

(declare-fun e!651990 () Bool)

(declare-fun -!1286 (ListLongMap!16361 (_ BitVec 64)) ListLongMap!16361)

(assert (=> b!1146142 (= e!651990 (= call!52458 (-!1286 call!52460 k0!934)))))

(declare-fun b!1146143 () Bool)

(assert (=> b!1146143 (= e!651990 (= call!52458 call!52460))))

(declare-fun b!1146144 () Bool)

(assert (=> b!1146144 (= c!112995 (and (not lt!511807) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651985 () Unit!37560)

(assert (=> b!1146144 (= e!651985 e!651987)))

(declare-fun b!1146145 () Bool)

(declare-fun Unit!37564 () Unit!37560)

(assert (=> b!1146145 (= e!651986 Unit!37564)))

(assert (=> b!1146145 (= lt!511807 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1146145 (= c!112994 (and (not lt!511807) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511809 () Unit!37560)

(assert (=> b!1146145 (= lt!511809 e!651985)))

(declare-fun lt!511796 () Unit!37560)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!428 (array!74354 array!74352 (_ BitVec 32) (_ BitVec 32) V!43491 V!43491 (_ BitVec 64) (_ BitVec 32) Int) Unit!37560)

(assert (=> b!1146145 (= lt!511796 (lemmaListMapContainsThenArrayContainsFrom!428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112997 () Bool)

(assert (=> b!1146145 (= c!112997 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763190 () Bool)

(assert (=> b!1146145 (= res!763190 e!651998)))

(declare-fun e!651997 () Bool)

(assert (=> b!1146145 (=> (not res!763190) (not e!651997))))

(assert (=> b!1146145 e!651997))

(declare-fun lt!511801 () Unit!37560)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74354 (_ BitVec 32) (_ BitVec 32)) Unit!37560)

(assert (=> b!1146145 (= lt!511801 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1146145 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25175)))

(declare-fun lt!511797 () Unit!37560)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74354 (_ BitVec 64) (_ BitVec 32) List!25178) Unit!37560)

(assert (=> b!1146145 (= lt!511797 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25175))))

(assert (=> b!1146145 false))

(declare-fun bm!52457 () Bool)

(declare-fun addStillContains!835 (ListLongMap!16361 (_ BitVec 64) V!43491 (_ BitVec 64)) Unit!37560)

(assert (=> bm!52457 (= call!52463 (addStillContains!835 (ite c!112994 lt!511806 lt!511811) (ite c!112994 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112995 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112994 minValue!944 (ite c!112995 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1146146 () Bool)

(declare-fun res!763181 () Bool)

(assert (=> b!1146146 (=> (not res!763181) (not e!651995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74354 (_ BitVec 32)) Bool)

(assert (=> b!1146146 (= res!763181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1146147 () Bool)

(assert (=> b!1146147 (= e!651997 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146148 () Bool)

(declare-fun e!651994 () Bool)

(assert (=> b!1146148 (= e!651994 (= (-!1286 lt!511803 k0!934) lt!511811))))

(declare-fun b!1146149 () Bool)

(declare-fun e!651989 () Bool)

(assert (=> b!1146149 (= e!651989 true)))

(assert (=> b!1146149 e!651994))

(declare-fun res!763187 () Bool)

(assert (=> b!1146149 (=> (not res!763187) (not e!651994))))

(declare-fun lt!511793 () V!43491)

(assert (=> b!1146149 (= res!763187 (= (-!1286 (+!3538 lt!511811 (tuple2!18381 (select (arr!35824 _keys!1208) from!1455) lt!511793)) (select (arr!35824 _keys!1208) from!1455)) lt!511811))))

(declare-fun lt!511792 () Unit!37560)

(declare-fun addThenRemoveForNewKeyIsSame!139 (ListLongMap!16361 (_ BitVec 64) V!43491) Unit!37560)

(assert (=> b!1146149 (= lt!511792 (addThenRemoveForNewKeyIsSame!139 lt!511811 (select (arr!35824 _keys!1208) from!1455) lt!511793))))

(declare-fun get!18241 (ValueCell!13677 V!43491) V!43491)

(assert (=> b!1146149 (= lt!511793 (get!18241 (select (arr!35823 _values!996) from!1455) lt!511812))))

(declare-fun lt!511795 () Unit!37560)

(assert (=> b!1146149 (= lt!511795 e!651986)))

(declare-fun c!112996 () Bool)

(declare-fun contains!6695 (ListLongMap!16361 (_ BitVec 64)) Bool)

(assert (=> b!1146149 (= c!112996 (contains!6695 lt!511811 k0!934))))

(assert (=> b!1146149 (= lt!511811 (getCurrentListMapNoExtraKeys!4638 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52458 () Bool)

(declare-fun call!52462 () ListLongMap!16361)

(assert (=> bm!52458 (= call!52462 call!52459)))

(declare-fun call!52464 () Bool)

(declare-fun bm!52459 () Bool)

(assert (=> bm!52459 (= call!52464 (contains!6695 (ite c!112994 lt!511806 call!52462) k0!934))))

(declare-fun bm!52460 () Bool)

(assert (=> bm!52460 (= call!52460 (getCurrentListMapNoExtraKeys!4638 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146150 () Bool)

(declare-fun res!763188 () Bool)

(assert (=> b!1146150 (=> (not res!763188) (not e!651995))))

(assert (=> b!1146150 (= res!763188 (and (= (size!36360 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36361 _keys!1208) (size!36360 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!52461 () Bool)

(assert (=> bm!52461 (= call!52457 call!52464)))

(declare-fun b!1146151 () Bool)

(assert (=> b!1146151 (= e!651993 e!651989)))

(declare-fun res!763184 () Bool)

(assert (=> b!1146151 (=> res!763184 e!651989)))

(assert (=> b!1146151 (= res!763184 (not (= (select (arr!35824 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1146151 e!651990))

(declare-fun c!112998 () Bool)

(assert (=> b!1146151 (= c!112998 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511805 () Unit!37560)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!539 (array!74354 array!74352 (_ BitVec 32) (_ BitVec 32) V!43491 V!43491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37560)

(assert (=> b!1146151 (= lt!511805 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!539 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146152 () Bool)

(declare-fun res!763183 () Bool)

(assert (=> b!1146152 (=> (not res!763183) (not e!651995))))

(assert (=> b!1146152 (= res!763183 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25175))))

(declare-fun b!1146153 () Bool)

(declare-fun res!763191 () Bool)

(assert (=> b!1146153 (=> (not res!763191) (not e!651995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146153 (= res!763191 (validMask!0 mask!1564))))

(declare-fun b!1146154 () Bool)

(assert (=> b!1146154 (= e!651995 e!651999)))

(declare-fun res!763185 () Bool)

(assert (=> b!1146154 (=> (not res!763185) (not e!651999))))

(assert (=> b!1146154 (= res!763185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511800 mask!1564))))

(assert (=> b!1146154 (= lt!511800 (array!74355 (store (arr!35824 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36361 _keys!1208)))))

(declare-fun b!1146155 () Bool)

(assert (=> b!1146155 (contains!6695 call!52459 k0!934)))

(declare-fun lt!511794 () Unit!37560)

(assert (=> b!1146155 (= lt!511794 call!52463)))

(assert (=> b!1146155 call!52464))

(assert (=> b!1146155 (= lt!511806 (+!3538 lt!511811 (tuple2!18381 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511802 () Unit!37560)

(assert (=> b!1146155 (= lt!511802 (addStillContains!835 lt!511811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1146155 (= e!651985 lt!511794)))

(assert (= (and start!98674 res!763179) b!1146153))

(assert (= (and b!1146153 res!763191) b!1146150))

(assert (= (and b!1146150 res!763188) b!1146146))

(assert (= (and b!1146146 res!763181) b!1146152))

(assert (= (and b!1146152 res!763183) b!1146133))

(assert (= (and b!1146133 res!763180) b!1146135))

(assert (= (and b!1146135 res!763189) b!1146140))

(assert (= (and b!1146140 res!763193) b!1146154))

(assert (= (and b!1146154 res!763185) b!1146130))

(assert (= (and b!1146130 res!763192) b!1146127))

(assert (= (and b!1146127 (not res!763182)) b!1146136))

(assert (= (and b!1146136 (not res!763186)) b!1146151))

(assert (= (and b!1146151 c!112998) b!1146142))

(assert (= (and b!1146151 (not c!112998)) b!1146143))

(assert (= (or b!1146142 b!1146143) bm!52454))

(assert (= (or b!1146142 b!1146143) bm!52460))

(assert (= (and b!1146151 (not res!763184)) b!1146149))

(assert (= (and b!1146149 c!112996) b!1146145))

(assert (= (and b!1146149 (not c!112996)) b!1146138))

(assert (= (and b!1146145 c!112994) b!1146155))

(assert (= (and b!1146145 (not c!112994)) b!1146144))

(assert (= (and b!1146144 c!112995) b!1146131))

(assert (= (and b!1146144 (not c!112995)) b!1146134))

(assert (= (and b!1146134 c!112993) b!1146139))

(assert (= (and b!1146134 (not c!112993)) b!1146132))

(assert (= (or b!1146131 b!1146139) bm!52456))

(assert (= (or b!1146131 b!1146139) bm!52458))

(assert (= (or b!1146131 b!1146139) bm!52461))

(assert (= (or b!1146155 bm!52461) bm!52459))

(assert (= (or b!1146155 bm!52456) bm!52457))

(assert (= (or b!1146155 bm!52458) bm!52455))

(assert (= (and b!1146145 c!112997) b!1146128))

(assert (= (and b!1146145 (not c!112997)) b!1146129))

(assert (= (and b!1146145 res!763190) b!1146147))

(assert (= (and b!1146149 res!763187) b!1146148))

(assert (= (and b!1146126 condMapEmpty!44984) mapIsEmpty!44984))

(assert (= (and b!1146126 (not condMapEmpty!44984)) mapNonEmpty!44984))

(get-info :version)

(assert (= (and mapNonEmpty!44984 ((_ is ValueCellFull!13677) mapValue!44984)) b!1146141))

(assert (= (and b!1146126 ((_ is ValueCellFull!13677) mapDefault!44984)) b!1146137))

(assert (= start!98674 b!1146126))

(declare-fun b_lambda!19367 () Bool)

(assert (=> (not b_lambda!19367) (not b!1146136)))

(declare-fun t!36418 () Bool)

(declare-fun tb!9063 () Bool)

(assert (=> (and start!98674 (= defaultEntry!1004 defaultEntry!1004) t!36418) tb!9063))

(declare-fun result!18683 () Bool)

(assert (=> tb!9063 (= result!18683 tp_is_empty!28773)))

(assert (=> b!1146136 t!36418))

(declare-fun b_and!39351 () Bool)

(assert (= b_and!39349 (and (=> t!36418 result!18683) b_and!39351)))

(declare-fun m!1056971 () Bool)

(assert (=> b!1146140 m!1056971))

(declare-fun m!1056973 () Bool)

(assert (=> mapNonEmpty!44984 m!1056973))

(declare-fun m!1056975 () Bool)

(assert (=> b!1146149 m!1056975))

(declare-fun m!1056977 () Bool)

(assert (=> b!1146149 m!1056977))

(declare-fun m!1056979 () Bool)

(assert (=> b!1146149 m!1056979))

(declare-fun m!1056981 () Bool)

(assert (=> b!1146149 m!1056981))

(declare-fun m!1056983 () Bool)

(assert (=> b!1146149 m!1056983))

(declare-fun m!1056985 () Bool)

(assert (=> b!1146149 m!1056985))

(assert (=> b!1146149 m!1056979))

(assert (=> b!1146149 m!1056981))

(declare-fun m!1056987 () Bool)

(assert (=> b!1146149 m!1056987))

(assert (=> b!1146149 m!1056981))

(assert (=> b!1146149 m!1056977))

(declare-fun m!1056989 () Bool)

(assert (=> b!1146149 m!1056989))

(assert (=> bm!52460 m!1056975))

(declare-fun m!1056991 () Bool)

(assert (=> b!1146147 m!1056991))

(declare-fun m!1056993 () Bool)

(assert (=> b!1146155 m!1056993))

(declare-fun m!1056995 () Bool)

(assert (=> b!1146155 m!1056995))

(declare-fun m!1056997 () Bool)

(assert (=> b!1146155 m!1056997))

(declare-fun m!1056999 () Bool)

(assert (=> b!1146152 m!1056999))

(declare-fun m!1057001 () Bool)

(assert (=> bm!52455 m!1057001))

(declare-fun m!1057003 () Bool)

(assert (=> b!1146145 m!1057003))

(declare-fun m!1057005 () Bool)

(assert (=> b!1146145 m!1057005))

(declare-fun m!1057007 () Bool)

(assert (=> b!1146145 m!1057007))

(declare-fun m!1057009 () Bool)

(assert (=> b!1146145 m!1057009))

(declare-fun m!1057011 () Bool)

(assert (=> b!1146153 m!1057011))

(declare-fun m!1057013 () Bool)

(assert (=> b!1146146 m!1057013))

(assert (=> b!1146128 m!1056991))

(declare-fun m!1057015 () Bool)

(assert (=> bm!52459 m!1057015))

(declare-fun m!1057017 () Bool)

(assert (=> b!1146130 m!1057017))

(declare-fun m!1057019 () Bool)

(assert (=> bm!52454 m!1057019))

(assert (=> b!1146151 m!1056981))

(declare-fun m!1057021 () Bool)

(assert (=> b!1146151 m!1057021))

(declare-fun m!1057023 () Bool)

(assert (=> b!1146135 m!1057023))

(declare-fun m!1057025 () Bool)

(assert (=> b!1146148 m!1057025))

(declare-fun m!1057027 () Bool)

(assert (=> start!98674 m!1057027))

(declare-fun m!1057029 () Bool)

(assert (=> start!98674 m!1057029))

(declare-fun m!1057031 () Bool)

(assert (=> b!1146127 m!1057031))

(declare-fun m!1057033 () Bool)

(assert (=> b!1146127 m!1057033))

(declare-fun m!1057035 () Bool)

(assert (=> b!1146142 m!1057035))

(declare-fun m!1057037 () Bool)

(assert (=> b!1146136 m!1057037))

(declare-fun m!1057039 () Bool)

(assert (=> b!1146136 m!1057039))

(declare-fun m!1057041 () Bool)

(assert (=> b!1146136 m!1057041))

(declare-fun m!1057043 () Bool)

(assert (=> b!1146136 m!1057043))

(declare-fun m!1057045 () Bool)

(assert (=> b!1146154 m!1057045))

(declare-fun m!1057047 () Bool)

(assert (=> b!1146154 m!1057047))

(declare-fun m!1057049 () Bool)

(assert (=> bm!52457 m!1057049))

(check-sat b_and!39351 (not b!1146135) (not bm!52455) (not b!1146155) (not b!1146148) (not bm!52457) (not b!1146154) (not b!1146130) (not b!1146128) (not b!1146151) tp_is_empty!28773 (not b!1146145) (not b_next!24243) (not start!98674) (not b!1146149) (not b!1146152) (not bm!52460) (not b_lambda!19367) (not mapNonEmpty!44984) (not b!1146142) (not b!1146127) (not b!1146136) (not b!1146153) (not bm!52459) (not b!1146147) (not b!1146146) (not bm!52454))
(check-sat b_and!39351 (not b_next!24243))
