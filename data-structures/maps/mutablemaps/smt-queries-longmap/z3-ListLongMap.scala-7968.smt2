; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98686 () Bool)

(assert start!98686)

(declare-fun b_free!24255 () Bool)

(declare-fun b_next!24255 () Bool)

(assert (=> start!98686 (= b_free!24255 (not b_next!24255))))

(declare-fun tp!85476 () Bool)

(declare-fun b_and!39373 () Bool)

(assert (=> start!98686 (= tp!85476 b_and!39373)))

(declare-fun b!1146678 () Bool)

(declare-datatypes ((Unit!37581 0))(
  ( (Unit!37582) )
))
(declare-fun e!652301 () Unit!37581)

(declare-fun Unit!37583 () Unit!37581)

(assert (=> b!1146678 (= e!652301 Unit!37583)))

(declare-fun bm!52598 () Bool)

(declare-fun call!52605 () Bool)

(declare-fun call!52601 () Bool)

(assert (=> bm!52598 (= call!52605 call!52601)))

(declare-datatypes ((V!43507 0))(
  ( (V!43508 (val!14449 Int)) )
))
(declare-datatypes ((tuple2!18390 0))(
  ( (tuple2!18391 (_1!9205 (_ BitVec 64)) (_2!9205 V!43507)) )
))
(declare-datatypes ((List!25187 0))(
  ( (Nil!25184) (Cons!25183 (h!26392 tuple2!18390) (t!36441 List!25187)) )
))
(declare-datatypes ((ListLongMap!16371 0))(
  ( (ListLongMap!16372 (toList!8201 List!25187)) )
))
(declare-fun lt!512173 () ListLongMap!16371)

(declare-fun call!52607 () ListLongMap!16371)

(declare-fun bm!52599 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun c!113101 () Bool)

(declare-fun contains!6700 (ListLongMap!16371 (_ BitVec 64)) Bool)

(assert (=> bm!52599 (= call!52601 (contains!6700 (ite c!113101 lt!512173 call!52607) k0!934))))

(declare-fun b!1146680 () Bool)

(declare-fun e!652292 () Unit!37581)

(declare-fun Unit!37584 () Unit!37581)

(assert (=> b!1146680 (= e!652292 Unit!37584)))

(declare-datatypes ((array!74374 0))(
  ( (array!74375 (arr!35834 (Array (_ BitVec 32) (_ BitVec 64))) (size!36371 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74374)

(declare-fun e!652293 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1146681 () Bool)

(declare-fun arrayContainsKey!0 (array!74374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1146681 (= e!652293 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146682 () Bool)

(declare-fun lt!512176 () ListLongMap!16371)

(declare-fun e!652305 () Bool)

(declare-fun lt!512175 () ListLongMap!16371)

(declare-fun -!1291 (ListLongMap!16371 (_ BitVec 64)) ListLongMap!16371)

(assert (=> b!1146682 (= e!652305 (= (-!1291 lt!512176 k0!934) lt!512175))))

(declare-fun b!1146683 () Bool)

(declare-fun e!652290 () Bool)

(declare-fun e!652295 () Bool)

(declare-fun mapRes!45002 () Bool)

(assert (=> b!1146683 (= e!652290 (and e!652295 mapRes!45002))))

(declare-fun condMapEmpty!45002 () Bool)

(declare-datatypes ((ValueCell!13683 0))(
  ( (ValueCellFull!13683 (v!17087 V!43507)) (EmptyCell!13683) )
))
(declare-datatypes ((array!74376 0))(
  ( (array!74377 (arr!35835 (Array (_ BitVec 32) ValueCell!13683)) (size!36372 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74376)

(declare-fun mapDefault!45002 () ValueCell!13683)

(assert (=> b!1146683 (= condMapEmpty!45002 (= (arr!35835 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13683)) mapDefault!45002)))))

(declare-fun mapNonEmpty!45002 () Bool)

(declare-fun tp!85477 () Bool)

(declare-fun e!652291 () Bool)

(assert (=> mapNonEmpty!45002 (= mapRes!45002 (and tp!85477 e!652291))))

(declare-fun mapRest!45002 () (Array (_ BitVec 32) ValueCell!13683))

(declare-fun mapValue!45002 () ValueCell!13683)

(declare-fun mapKey!45002 () (_ BitVec 32))

(assert (=> mapNonEmpty!45002 (= (arr!35835 _values!996) (store mapRest!45002 mapKey!45002 mapValue!45002))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1146684 () Bool)

(declare-fun e!652297 () Bool)

(declare-fun lt!512170 () Bool)

(assert (=> b!1146684 (= e!652297 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512170) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!763453 () Bool)

(declare-fun e!652302 () Bool)

(assert (=> start!98686 (=> (not res!763453) (not e!652302))))

(assert (=> start!98686 (= res!763453 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36371 _keys!1208))))))

(assert (=> start!98686 e!652302))

(declare-fun tp_is_empty!28785 () Bool)

(assert (=> start!98686 tp_is_empty!28785))

(declare-fun array_inv!27332 (array!74374) Bool)

(assert (=> start!98686 (array_inv!27332 _keys!1208)))

(assert (=> start!98686 true))

(assert (=> start!98686 tp!85476))

(declare-fun array_inv!27333 (array!74376) Bool)

(assert (=> start!98686 (and (array_inv!27333 _values!996) e!652290)))

(declare-fun b!1146679 () Bool)

(declare-fun res!763449 () Bool)

(assert (=> b!1146679 (=> (not res!763449) (not e!652302))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1146679 (= res!763449 (= (select (arr!35834 _keys!1208) i!673) k0!934))))

(declare-fun b!1146685 () Bool)

(assert (=> b!1146685 (= e!652291 tp_is_empty!28785)))

(declare-fun b!1146686 () Bool)

(declare-fun e!652303 () Bool)

(declare-fun e!652294 () Bool)

(assert (=> b!1146686 (= e!652303 (not e!652294))))

(declare-fun res!763460 () Bool)

(assert (=> b!1146686 (=> res!763460 e!652294)))

(assert (=> b!1146686 (= res!763460 (bvsgt from!1455 i!673))))

(assert (=> b!1146686 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!512181 () Unit!37581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74374 (_ BitVec 64) (_ BitVec 32)) Unit!37581)

(assert (=> b!1146686 (= lt!512181 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1146687 () Bool)

(assert (=> b!1146687 (= e!652295 tp_is_empty!28785)))

(declare-fun b!1146688 () Bool)

(declare-fun e!652299 () Bool)

(assert (=> b!1146688 (= e!652294 e!652299)))

(declare-fun res!763461 () Bool)

(assert (=> b!1146688 (=> res!763461 e!652299)))

(assert (=> b!1146688 (= res!763461 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!43507)

(declare-fun lt!512183 () array!74376)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!512180 () ListLongMap!16371)

(declare-fun minValue!944 () V!43507)

(declare-fun lt!512174 () array!74374)

(declare-fun getCurrentListMapNoExtraKeys!4643 (array!74374 array!74376 (_ BitVec 32) (_ BitVec 32) V!43507 V!43507 (_ BitVec 32) Int) ListLongMap!16371)

(assert (=> b!1146688 (= lt!512180 (getCurrentListMapNoExtraKeys!4643 lt!512174 lt!512183 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512185 () V!43507)

(assert (=> b!1146688 (= lt!512183 (array!74377 (store (arr!35835 _values!996) i!673 (ValueCellFull!13683 lt!512185)) (size!36372 _values!996)))))

(declare-fun dynLambda!2681 (Int (_ BitVec 64)) V!43507)

(assert (=> b!1146688 (= lt!512185 (dynLambda!2681 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1146688 (= lt!512176 (getCurrentListMapNoExtraKeys!4643 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1146689 () Bool)

(declare-fun e!652296 () Bool)

(declare-fun call!52606 () ListLongMap!16371)

(declare-fun call!52603 () ListLongMap!16371)

(assert (=> b!1146689 (= e!652296 (= call!52606 call!52603))))

(declare-fun mapIsEmpty!45002 () Bool)

(assert (=> mapIsEmpty!45002 mapRes!45002))

(declare-fun b!1146690 () Bool)

(declare-fun res!763459 () Bool)

(assert (=> b!1146690 (=> (not res!763459) (not e!652303))))

(declare-datatypes ((List!25188 0))(
  ( (Nil!25185) (Cons!25184 (h!26393 (_ BitVec 64)) (t!36442 List!25188)) )
))
(declare-fun arrayNoDuplicates!0 (array!74374 (_ BitVec 32) List!25188) Bool)

(assert (=> b!1146690 (= res!763459 (arrayNoDuplicates!0 lt!512174 #b00000000000000000000000000000000 Nil!25185))))

(declare-fun b!1146691 () Bool)

(assert (=> b!1146691 (= e!652297 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1146692 () Bool)

(assert (=> b!1146692 (= e!652296 (= call!52606 (-!1291 call!52603 k0!934)))))

(declare-fun bm!52600 () Bool)

(assert (=> bm!52600 (= call!52603 (getCurrentListMapNoExtraKeys!4643 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146693 () Bool)

(declare-fun e!652289 () Bool)

(assert (=> b!1146693 (= e!652299 e!652289)))

(declare-fun res!763462 () Bool)

(assert (=> b!1146693 (=> res!763462 e!652289)))

(assert (=> b!1146693 (= res!763462 (not (= (select (arr!35834 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1146693 e!652296))

(declare-fun c!113106 () Bool)

(assert (=> b!1146693 (= c!113106 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512171 () Unit!37581)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!541 (array!74374 array!74376 (_ BitVec 32) (_ BitVec 32) V!43507 V!43507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37581)

(assert (=> b!1146693 (= lt!512171 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!541 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146694 () Bool)

(declare-fun res!763450 () Bool)

(assert (=> b!1146694 (=> (not res!763450) (not e!652302))))

(assert (=> b!1146694 (= res!763450 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25185))))

(declare-fun b!1146695 () Bool)

(declare-fun e!652304 () Unit!37581)

(assert (=> b!1146695 (= e!652304 e!652292)))

(declare-fun c!113105 () Bool)

(assert (=> b!1146695 (= c!113105 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!512170))))

(declare-fun call!52608 () Unit!37581)

(declare-fun c!113102 () Bool)

(declare-fun bm!52601 () Bool)

(declare-fun addStillContains!840 (ListLongMap!16371 (_ BitVec 64) V!43507 (_ BitVec 64)) Unit!37581)

(assert (=> bm!52601 (= call!52608 (addStillContains!840 (ite c!113101 lt!512173 lt!512175) (ite c!113101 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113102 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113101 minValue!944 (ite c!113102 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1146696 () Bool)

(assert (=> b!1146696 (= e!652289 true)))

(assert (=> b!1146696 e!652305))

(declare-fun res!763452 () Bool)

(assert (=> b!1146696 (=> (not res!763452) (not e!652305))))

(declare-fun lt!512190 () V!43507)

(declare-fun +!3543 (ListLongMap!16371 tuple2!18390) ListLongMap!16371)

(assert (=> b!1146696 (= res!763452 (= (-!1291 (+!3543 lt!512175 (tuple2!18391 (select (arr!35834 _keys!1208) from!1455) lt!512190)) (select (arr!35834 _keys!1208) from!1455)) lt!512175))))

(declare-fun lt!512187 () Unit!37581)

(declare-fun addThenRemoveForNewKeyIsSame!143 (ListLongMap!16371 (_ BitVec 64) V!43507) Unit!37581)

(assert (=> b!1146696 (= lt!512187 (addThenRemoveForNewKeyIsSame!143 lt!512175 (select (arr!35834 _keys!1208) from!1455) lt!512190))))

(declare-fun get!18249 (ValueCell!13683 V!43507) V!43507)

(assert (=> b!1146696 (= lt!512190 (get!18249 (select (arr!35835 _values!996) from!1455) lt!512185))))

(declare-fun lt!512177 () Unit!37581)

(assert (=> b!1146696 (= lt!512177 e!652301)))

(declare-fun c!113104 () Bool)

(assert (=> b!1146696 (= c!113104 (contains!6700 lt!512175 k0!934))))

(assert (=> b!1146696 (= lt!512175 (getCurrentListMapNoExtraKeys!4643 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146697 () Bool)

(declare-fun res!763458 () Bool)

(assert (=> b!1146697 (=> (not res!763458) (not e!652302))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1146697 (= res!763458 (validMask!0 mask!1564))))

(declare-fun b!1146698 () Bool)

(declare-fun Unit!37585 () Unit!37581)

(assert (=> b!1146698 (= e!652301 Unit!37585)))

(assert (=> b!1146698 (= lt!512170 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1146698 (= c!113101 (and (not lt!512170) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512188 () Unit!37581)

(declare-fun e!652300 () Unit!37581)

(assert (=> b!1146698 (= lt!512188 e!652300)))

(declare-fun lt!512172 () Unit!37581)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!431 (array!74374 array!74376 (_ BitVec 32) (_ BitVec 32) V!43507 V!43507 (_ BitVec 64) (_ BitVec 32) Int) Unit!37581)

(assert (=> b!1146698 (= lt!512172 (lemmaListMapContainsThenArrayContainsFrom!431 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113103 () Bool)

(assert (=> b!1146698 (= c!113103 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763457 () Bool)

(assert (=> b!1146698 (= res!763457 e!652297)))

(assert (=> b!1146698 (=> (not res!763457) (not e!652293))))

(assert (=> b!1146698 e!652293))

(declare-fun lt!512184 () Unit!37581)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74374 (_ BitVec 32) (_ BitVec 32)) Unit!37581)

(assert (=> b!1146698 (= lt!512184 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1146698 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25185)))

(declare-fun lt!512186 () Unit!37581)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74374 (_ BitVec 64) (_ BitVec 32) List!25188) Unit!37581)

(assert (=> b!1146698 (= lt!512186 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25185))))

(assert (=> b!1146698 false))

(declare-fun b!1146699 () Bool)

(assert (=> b!1146699 (= c!113102 (and (not lt!512170) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1146699 (= e!652300 e!652304)))

(declare-fun bm!52602 () Bool)

(declare-fun call!52604 () Unit!37581)

(assert (=> bm!52602 (= call!52604 call!52608)))

(declare-fun bm!52603 () Bool)

(declare-fun call!52602 () ListLongMap!16371)

(assert (=> bm!52603 (= call!52607 call!52602)))

(declare-fun b!1146700 () Bool)

(declare-fun res!763463 () Bool)

(assert (=> b!1146700 (=> (not res!763463) (not e!652302))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74374 (_ BitVec 32)) Bool)

(assert (=> b!1146700 (= res!763463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!52604 () Bool)

(assert (=> bm!52604 (= call!52606 (getCurrentListMapNoExtraKeys!4643 lt!512174 lt!512183 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1146701 () Bool)

(assert (=> b!1146701 (contains!6700 call!52602 k0!934)))

(declare-fun lt!512178 () Unit!37581)

(assert (=> b!1146701 (= lt!512178 call!52608)))

(assert (=> b!1146701 call!52601))

(assert (=> b!1146701 (= lt!512173 (+!3543 lt!512175 (tuple2!18391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!512179 () Unit!37581)

(assert (=> b!1146701 (= lt!512179 (addStillContains!840 lt!512175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1146701 (= e!652300 lt!512178)))

(declare-fun b!1146702 () Bool)

(declare-fun res!763451 () Bool)

(assert (=> b!1146702 (=> (not res!763451) (not e!652302))))

(assert (=> b!1146702 (= res!763451 (and (= (size!36372 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36371 _keys!1208) (size!36372 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1146703 () Bool)

(declare-fun res!763456 () Bool)

(assert (=> b!1146703 (=> (not res!763456) (not e!652302))))

(assert (=> b!1146703 (= res!763456 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36371 _keys!1208))))))

(declare-fun bm!52605 () Bool)

(assert (=> bm!52605 (= call!52602 (+!3543 (ite c!113101 lt!512173 lt!512175) (ite c!113101 (tuple2!18391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113102 (tuple2!18391 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18391 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1146704 () Bool)

(assert (=> b!1146704 (= e!652302 e!652303)))

(declare-fun res!763454 () Bool)

(assert (=> b!1146704 (=> (not res!763454) (not e!652303))))

(assert (=> b!1146704 (= res!763454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512174 mask!1564))))

(assert (=> b!1146704 (= lt!512174 (array!74375 (store (arr!35834 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36371 _keys!1208)))))

(declare-fun b!1146705 () Bool)

(declare-fun lt!512182 () Unit!37581)

(assert (=> b!1146705 (= e!652304 lt!512182)))

(assert (=> b!1146705 (= lt!512182 call!52604)))

(assert (=> b!1146705 call!52605))

(declare-fun b!1146706 () Bool)

(assert (=> b!1146706 call!52605))

(declare-fun lt!512189 () Unit!37581)

(assert (=> b!1146706 (= lt!512189 call!52604)))

(assert (=> b!1146706 (= e!652292 lt!512189)))

(declare-fun b!1146707 () Bool)

(declare-fun res!763455 () Bool)

(assert (=> b!1146707 (=> (not res!763455) (not e!652302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1146707 (= res!763455 (validKeyInArray!0 k0!934))))

(assert (= (and start!98686 res!763453) b!1146697))

(assert (= (and b!1146697 res!763458) b!1146702))

(assert (= (and b!1146702 res!763451) b!1146700))

(assert (= (and b!1146700 res!763463) b!1146694))

(assert (= (and b!1146694 res!763450) b!1146703))

(assert (= (and b!1146703 res!763456) b!1146707))

(assert (= (and b!1146707 res!763455) b!1146679))

(assert (= (and b!1146679 res!763449) b!1146704))

(assert (= (and b!1146704 res!763454) b!1146690))

(assert (= (and b!1146690 res!763459) b!1146686))

(assert (= (and b!1146686 (not res!763460)) b!1146688))

(assert (= (and b!1146688 (not res!763461)) b!1146693))

(assert (= (and b!1146693 c!113106) b!1146692))

(assert (= (and b!1146693 (not c!113106)) b!1146689))

(assert (= (or b!1146692 b!1146689) bm!52604))

(assert (= (or b!1146692 b!1146689) bm!52600))

(assert (= (and b!1146693 (not res!763462)) b!1146696))

(assert (= (and b!1146696 c!113104) b!1146698))

(assert (= (and b!1146696 (not c!113104)) b!1146678))

(assert (= (and b!1146698 c!113101) b!1146701))

(assert (= (and b!1146698 (not c!113101)) b!1146699))

(assert (= (and b!1146699 c!113102) b!1146705))

(assert (= (and b!1146699 (not c!113102)) b!1146695))

(assert (= (and b!1146695 c!113105) b!1146706))

(assert (= (and b!1146695 (not c!113105)) b!1146680))

(assert (= (or b!1146705 b!1146706) bm!52602))

(assert (= (or b!1146705 b!1146706) bm!52603))

(assert (= (or b!1146705 b!1146706) bm!52598))

(assert (= (or b!1146701 bm!52598) bm!52599))

(assert (= (or b!1146701 bm!52602) bm!52601))

(assert (= (or b!1146701 bm!52603) bm!52605))

(assert (= (and b!1146698 c!113103) b!1146691))

(assert (= (and b!1146698 (not c!113103)) b!1146684))

(assert (= (and b!1146698 res!763457) b!1146681))

(assert (= (and b!1146696 res!763452) b!1146682))

(assert (= (and b!1146683 condMapEmpty!45002) mapIsEmpty!45002))

(assert (= (and b!1146683 (not condMapEmpty!45002)) mapNonEmpty!45002))

(get-info :version)

(assert (= (and mapNonEmpty!45002 ((_ is ValueCellFull!13683) mapValue!45002)) b!1146685))

(assert (= (and b!1146683 ((_ is ValueCellFull!13683) mapDefault!45002)) b!1146687))

(assert (= start!98686 b!1146683))

(declare-fun b_lambda!19379 () Bool)

(assert (=> (not b_lambda!19379) (not b!1146688)))

(declare-fun t!36440 () Bool)

(declare-fun tb!9075 () Bool)

(assert (=> (and start!98686 (= defaultEntry!1004 defaultEntry!1004) t!36440) tb!9075))

(declare-fun result!18707 () Bool)

(assert (=> tb!9075 (= result!18707 tp_is_empty!28785)))

(assert (=> b!1146688 t!36440))

(declare-fun b_and!39375 () Bool)

(assert (= b_and!39373 (and (=> t!36440 result!18707) b_and!39375)))

(declare-fun m!1057451 () Bool)

(assert (=> b!1146686 m!1057451))

(declare-fun m!1057453 () Bool)

(assert (=> b!1146686 m!1057453))

(declare-fun m!1057455 () Bool)

(assert (=> bm!52599 m!1057455))

(declare-fun m!1057457 () Bool)

(assert (=> start!98686 m!1057457))

(declare-fun m!1057459 () Bool)

(assert (=> start!98686 m!1057459))

(declare-fun m!1057461 () Bool)

(assert (=> bm!52600 m!1057461))

(declare-fun m!1057463 () Bool)

(assert (=> bm!52601 m!1057463))

(declare-fun m!1057465 () Bool)

(assert (=> b!1146694 m!1057465))

(declare-fun m!1057467 () Bool)

(assert (=> b!1146707 m!1057467))

(declare-fun m!1057469 () Bool)

(assert (=> b!1146693 m!1057469))

(declare-fun m!1057471 () Bool)

(assert (=> b!1146693 m!1057471))

(assert (=> b!1146696 m!1057461))

(declare-fun m!1057473 () Bool)

(assert (=> b!1146696 m!1057473))

(declare-fun m!1057475 () Bool)

(assert (=> b!1146696 m!1057475))

(assert (=> b!1146696 m!1057469))

(declare-fun m!1057477 () Bool)

(assert (=> b!1146696 m!1057477))

(assert (=> b!1146696 m!1057473))

(declare-fun m!1057479 () Bool)

(assert (=> b!1146696 m!1057479))

(assert (=> b!1146696 m!1057475))

(assert (=> b!1146696 m!1057469))

(declare-fun m!1057481 () Bool)

(assert (=> b!1146696 m!1057481))

(assert (=> b!1146696 m!1057469))

(declare-fun m!1057483 () Bool)

(assert (=> b!1146696 m!1057483))

(declare-fun m!1057485 () Bool)

(assert (=> b!1146701 m!1057485))

(declare-fun m!1057487 () Bool)

(assert (=> b!1146701 m!1057487))

(declare-fun m!1057489 () Bool)

(assert (=> b!1146701 m!1057489))

(declare-fun m!1057491 () Bool)

(assert (=> bm!52604 m!1057491))

(declare-fun m!1057493 () Bool)

(assert (=> bm!52605 m!1057493))

(declare-fun m!1057495 () Bool)

(assert (=> mapNonEmpty!45002 m!1057495))

(declare-fun m!1057497 () Bool)

(assert (=> b!1146682 m!1057497))

(declare-fun m!1057499 () Bool)

(assert (=> b!1146692 m!1057499))

(declare-fun m!1057501 () Bool)

(assert (=> b!1146700 m!1057501))

(declare-fun m!1057503 () Bool)

(assert (=> b!1146681 m!1057503))

(declare-fun m!1057505 () Bool)

(assert (=> b!1146704 m!1057505))

(declare-fun m!1057507 () Bool)

(assert (=> b!1146704 m!1057507))

(assert (=> b!1146691 m!1057503))

(declare-fun m!1057509 () Bool)

(assert (=> b!1146698 m!1057509))

(declare-fun m!1057511 () Bool)

(assert (=> b!1146698 m!1057511))

(declare-fun m!1057513 () Bool)

(assert (=> b!1146698 m!1057513))

(declare-fun m!1057515 () Bool)

(assert (=> b!1146698 m!1057515))

(declare-fun m!1057517 () Bool)

(assert (=> b!1146688 m!1057517))

(declare-fun m!1057519 () Bool)

(assert (=> b!1146688 m!1057519))

(declare-fun m!1057521 () Bool)

(assert (=> b!1146688 m!1057521))

(declare-fun m!1057523 () Bool)

(assert (=> b!1146688 m!1057523))

(declare-fun m!1057525 () Bool)

(assert (=> b!1146697 m!1057525))

(declare-fun m!1057527 () Bool)

(assert (=> b!1146679 m!1057527))

(declare-fun m!1057529 () Bool)

(assert (=> b!1146690 m!1057529))

(check-sat (not bm!52600) (not start!98686) (not bm!52599) (not bm!52604) (not b!1146696) (not b_lambda!19379) (not b!1146707) (not b!1146692) (not b!1146688) (not b!1146682) (not b_next!24255) (not b!1146693) (not b!1146681) (not b!1146690) (not mapNonEmpty!45002) (not b!1146686) tp_is_empty!28785 (not bm!52601) (not b!1146701) (not b!1146704) (not b!1146700) (not b!1146691) b_and!39375 (not bm!52605) (not b!1146694) (not b!1146697) (not b!1146698))
(check-sat b_and!39375 (not b_next!24255))
