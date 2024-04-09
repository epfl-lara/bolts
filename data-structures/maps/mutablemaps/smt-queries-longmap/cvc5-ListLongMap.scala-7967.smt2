; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98678 () Bool)

(assert start!98678)

(declare-fun b_free!24247 () Bool)

(declare-fun b_next!24247 () Bool)

(assert (=> start!98678 (= b_free!24247 (not b_next!24247))))

(declare-fun tp!85452 () Bool)

(declare-fun b_and!39357 () Bool)

(assert (=> start!98678 (= tp!85452 b_and!39357)))

(declare-fun bm!52502 () Bool)

(declare-fun call!52507 () Bool)

(declare-fun call!52511 () Bool)

(assert (=> bm!52502 (= call!52507 call!52511)))

(declare-datatypes ((array!74360 0))(
  ( (array!74361 (arr!35827 (Array (_ BitVec 32) (_ BitVec 64))) (size!36364 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74360)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1146310 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!652091 () Bool)

(declare-fun arrayContainsKey!0 (array!74360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146310 (= e!652091 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146311 () Bool)

(declare-fun res!763275 () Bool)

(declare-fun e!652096 () Bool)

(assert (=> b!1146311 (=> (not res!763275) (not e!652096))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146311 (= res!763275 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36364 _keys!1208))))))

(declare-fun b!1146312 () Bool)

(declare-datatypes ((V!43497 0))(
  ( (V!43498 (val!14445 Int)) )
))
(declare-datatypes ((tuple2!18384 0))(
  ( (tuple2!18385 (_1!9202 (_ BitVec 64)) (_2!9202 V!43497)) )
))
(declare-datatypes ((List!25181 0))(
  ( (Nil!25178) (Cons!25177 (h!26386 tuple2!18384) (t!36427 List!25181)) )
))
(declare-datatypes ((ListLongMap!16365 0))(
  ( (ListLongMap!16366 (toList!8198 List!25181)) )
))
(declare-fun call!52510 () ListLongMap!16365)

(declare-fun contains!6697 (ListLongMap!16365 (_ BitVec 64)) Bool)

(assert (=> b!1146312 (contains!6697 call!52510 k!934)))

(declare-datatypes ((Unit!37569 0))(
  ( (Unit!37570) )
))
(declare-fun lt!511933 () Unit!37569)

(declare-fun call!52509 () Unit!37569)

(assert (=> b!1146312 (= lt!511933 call!52509)))

(assert (=> b!1146312 call!52511))

(declare-fun lt!511934 () ListLongMap!16365)

(declare-fun lt!511921 () ListLongMap!16365)

(declare-fun zeroValue!944 () V!43497)

(declare-fun +!3540 (ListLongMap!16365 tuple2!18384) ListLongMap!16365)

(assert (=> b!1146312 (= lt!511934 (+!3540 lt!511921 (tuple2!18385 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511924 () Unit!37569)

(declare-fun addStillContains!837 (ListLongMap!16365 (_ BitVec 64) V!43497 (_ BitVec 64)) Unit!37569)

(assert (=> b!1146312 (= lt!511924 (addStillContains!837 lt!511921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!652087 () Unit!37569)

(assert (=> b!1146312 (= e!652087 lt!511933)))

(declare-fun b!1146313 () Bool)

(declare-fun e!652095 () Unit!37569)

(declare-fun Unit!37571 () Unit!37569)

(assert (=> b!1146313 (= e!652095 Unit!37571)))

(declare-fun b!1146314 () Bool)

(declare-fun Unit!37572 () Unit!37569)

(assert (=> b!1146314 (= e!652095 Unit!37572)))

(declare-fun lt!511920 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1146314 (= lt!511920 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113033 () Bool)

(assert (=> b!1146314 (= c!113033 (and (not lt!511920) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511927 () Unit!37569)

(assert (=> b!1146314 (= lt!511927 e!652087)))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13679 0))(
  ( (ValueCellFull!13679 (v!17083 V!43497)) (EmptyCell!13679) )
))
(declare-datatypes ((array!74362 0))(
  ( (array!74363 (arr!35828 (Array (_ BitVec 32) ValueCell!13679)) (size!36365 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74362)

(declare-fun minValue!944 () V!43497)

(declare-fun lt!511928 () Unit!37569)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!429 (array!74360 array!74362 (_ BitVec 32) (_ BitVec 32) V!43497 V!43497 (_ BitVec 64) (_ BitVec 32) Int) Unit!37569)

(assert (=> b!1146314 (= lt!511928 (lemmaListMapContainsThenArrayContainsFrom!429 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113031 () Bool)

(assert (=> b!1146314 (= c!113031 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763280 () Bool)

(declare-fun e!652088 () Bool)

(assert (=> b!1146314 (= res!763280 e!652088)))

(assert (=> b!1146314 (=> (not res!763280) (not e!652091))))

(assert (=> b!1146314 e!652091))

(declare-fun lt!511919 () Unit!37569)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74360 (_ BitVec 32) (_ BitVec 32)) Unit!37569)

(assert (=> b!1146314 (= lt!511919 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25182 0))(
  ( (Nil!25179) (Cons!25178 (h!26387 (_ BitVec 64)) (t!36428 List!25182)) )
))
(declare-fun arrayNoDuplicates!0 (array!74360 (_ BitVec 32) List!25182) Bool)

(assert (=> b!1146314 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25179)))

(declare-fun lt!511937 () Unit!37569)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74360 (_ BitVec 64) (_ BitVec 32) List!25182) Unit!37569)

(assert (=> b!1146314 (= lt!511937 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25179))))

(assert (=> b!1146314 false))

(declare-fun mapNonEmpty!44990 () Bool)

(declare-fun mapRes!44990 () Bool)

(declare-fun tp!85453 () Bool)

(declare-fun e!652098 () Bool)

(assert (=> mapNonEmpty!44990 (= mapRes!44990 (and tp!85453 e!652098))))

(declare-fun mapKey!44990 () (_ BitVec 32))

(declare-fun mapRest!44990 () (Array (_ BitVec 32) ValueCell!13679))

(declare-fun mapValue!44990 () ValueCell!13679)

(assert (=> mapNonEmpty!44990 (= (arr!35828 _values!996) (store mapRest!44990 mapKey!44990 mapValue!44990))))

(declare-fun e!652101 () Bool)

(declare-fun b!1146315 () Bool)

(declare-fun call!52512 () ListLongMap!16365)

(declare-fun call!52506 () ListLongMap!16365)

(declare-fun -!1288 (ListLongMap!16365 (_ BitVec 64)) ListLongMap!16365)

(assert (=> b!1146315 (= e!652101 (= call!52506 (-!1288 call!52512 k!934)))))

(declare-fun b!1146316 () Bool)

(declare-fun res!763276 () Bool)

(assert (=> b!1146316 (=> (not res!763276) (not e!652096))))

(assert (=> b!1146316 (= res!763276 (= (select (arr!35827 _keys!1208) i!673) k!934))))

(declare-fun res!763270 () Bool)

(assert (=> start!98678 (=> (not res!763270) (not e!652096))))

(assert (=> start!98678 (= res!763270 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36364 _keys!1208))))))

(assert (=> start!98678 e!652096))

(declare-fun tp_is_empty!28777 () Bool)

(assert (=> start!98678 tp_is_empty!28777))

(declare-fun array_inv!27326 (array!74360) Bool)

(assert (=> start!98678 (array_inv!27326 _keys!1208)))

(assert (=> start!98678 true))

(assert (=> start!98678 tp!85452))

(declare-fun e!652100 () Bool)

(declare-fun array_inv!27327 (array!74362) Bool)

(assert (=> start!98678 (and (array_inv!27327 _values!996) e!652100)))

(declare-fun b!1146317 () Bool)

(assert (=> b!1146317 call!52507))

(declare-fun lt!511926 () Unit!37569)

(declare-fun call!52508 () Unit!37569)

(assert (=> b!1146317 (= lt!511926 call!52508)))

(declare-fun e!652093 () Unit!37569)

(assert (=> b!1146317 (= e!652093 lt!511926)))

(declare-fun b!1146318 () Bool)

(assert (=> b!1146318 (= e!652101 (= call!52506 call!52512))))

(declare-fun b!1146319 () Bool)

(declare-fun e!652085 () Bool)

(assert (=> b!1146319 (= e!652085 true)))

(declare-fun e!652097 () Bool)

(assert (=> b!1146319 e!652097))

(declare-fun res!763283 () Bool)

(assert (=> b!1146319 (=> (not res!763283) (not e!652097))))

(declare-fun lt!511932 () V!43497)

(assert (=> b!1146319 (= res!763283 (= (-!1288 (+!3540 lt!511921 (tuple2!18385 (select (arr!35827 _keys!1208) from!1455) lt!511932)) (select (arr!35827 _keys!1208) from!1455)) lt!511921))))

(declare-fun lt!511929 () Unit!37569)

(declare-fun addThenRemoveForNewKeyIsSame!141 (ListLongMap!16365 (_ BitVec 64) V!43497) Unit!37569)

(assert (=> b!1146319 (= lt!511929 (addThenRemoveForNewKeyIsSame!141 lt!511921 (select (arr!35827 _keys!1208) from!1455) lt!511932))))

(declare-fun lt!511935 () V!43497)

(declare-fun get!18245 (ValueCell!13679 V!43497) V!43497)

(assert (=> b!1146319 (= lt!511932 (get!18245 (select (arr!35828 _values!996) from!1455) lt!511935))))

(declare-fun lt!511930 () Unit!37569)

(assert (=> b!1146319 (= lt!511930 e!652095)))

(declare-fun c!113032 () Bool)

(assert (=> b!1146319 (= c!113032 (contains!6697 lt!511921 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4640 (array!74360 array!74362 (_ BitVec 32) (_ BitVec 32) V!43497 V!43497 (_ BitVec 32) Int) ListLongMap!16365)

(assert (=> b!1146319 (= lt!511921 (getCurrentListMapNoExtraKeys!4640 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146320 () Bool)

(declare-fun res!763274 () Bool)

(assert (=> b!1146320 (=> (not res!763274) (not e!652096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74360 (_ BitVec 32)) Bool)

(assert (=> b!1146320 (= res!763274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!52505 () ListLongMap!16365)

(declare-fun bm!52503 () Bool)

(assert (=> bm!52503 (= call!52511 (contains!6697 (ite c!113033 lt!511934 call!52505) k!934))))

(declare-fun bm!52504 () Bool)

(declare-fun lt!511922 () array!74360)

(declare-fun lt!511936 () array!74362)

(assert (=> bm!52504 (= call!52506 (getCurrentListMapNoExtraKeys!4640 lt!511922 lt!511936 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146321 () Bool)

(declare-fun res!763272 () Bool)

(assert (=> b!1146321 (=> (not res!763272) (not e!652096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146321 (= res!763272 (validMask!0 mask!1564))))

(declare-fun b!1146322 () Bool)

(assert (=> b!1146322 (= e!652088 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146323 () Bool)

(declare-fun e!652099 () Bool)

(assert (=> b!1146323 (= e!652099 tp_is_empty!28777)))

(declare-fun b!1146324 () Bool)

(assert (=> b!1146324 (= e!652100 (and e!652099 mapRes!44990))))

(declare-fun condMapEmpty!44990 () Bool)

(declare-fun mapDefault!44990 () ValueCell!13679)

