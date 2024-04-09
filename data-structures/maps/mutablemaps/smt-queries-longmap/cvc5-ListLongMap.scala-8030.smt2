; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99056 () Bool)

(assert start!99056)

(declare-fun b_free!24625 () Bool)

(declare-fun b_next!24625 () Bool)

(assert (=> start!99056 (= b_free!24625 (not b_next!24625))))

(declare-fun tp!86587 () Bool)

(declare-fun b_and!40113 () Bool)

(assert (=> start!99056 (= tp!86587 b_and!40113)))

(declare-fun res!771783 () Bool)

(declare-fun e!661724 () Bool)

(assert (=> start!99056 (=> (not res!771783) (not e!661724))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75100 0))(
  ( (array!75101 (arr!36197 (Array (_ BitVec 32) (_ BitVec 64))) (size!36734 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75100)

(assert (=> start!99056 (= res!771783 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36734 _keys!1208))))))

(assert (=> start!99056 e!661724))

(declare-fun tp_is_empty!29155 () Bool)

(assert (=> start!99056 tp_is_empty!29155))

(declare-fun array_inv!27566 (array!75100) Bool)

(assert (=> start!99056 (array_inv!27566 _keys!1208)))

(assert (=> start!99056 true))

(assert (=> start!99056 tp!86587))

(declare-datatypes ((V!44001 0))(
  ( (V!44002 (val!14634 Int)) )
))
(declare-datatypes ((ValueCell!13868 0))(
  ( (ValueCellFull!13868 (v!17272 V!44001)) (EmptyCell!13868) )
))
(declare-datatypes ((array!75102 0))(
  ( (array!75103 (arr!36198 (Array (_ BitVec 32) ValueCell!13868)) (size!36735 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75102)

(declare-fun e!661728 () Bool)

(declare-fun array_inv!27567 (array!75102) Bool)

(assert (=> start!99056 (and (array_inv!27567 _values!996) e!661728)))

(declare-fun b!1163698 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!661726 () Bool)

(declare-fun lt!524324 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1163698 (= e!661726 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!524324) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!45557 () Bool)

(declare-fun mapRes!45557 () Bool)

(declare-fun tp!86586 () Bool)

(declare-fun e!661729 () Bool)

(assert (=> mapNonEmpty!45557 (= mapRes!45557 (and tp!86586 e!661729))))

(declare-fun mapValue!45557 () ValueCell!13868)

(declare-fun mapRest!45557 () (Array (_ BitVec 32) ValueCell!13868))

(declare-fun mapKey!45557 () (_ BitVec 32))

(assert (=> mapNonEmpty!45557 (= (arr!36198 _values!996) (store mapRest!45557 mapKey!45557 mapValue!45557))))

(declare-fun b!1163699 () Bool)

(declare-fun res!771779 () Bool)

(assert (=> b!1163699 (=> (not res!771779) (not e!661724))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75100 (_ BitVec 32)) Bool)

(assert (=> b!1163699 (= res!771779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45557 () Bool)

(assert (=> mapIsEmpty!45557 mapRes!45557))

(declare-fun bm!57038 () Bool)

(declare-fun call!57046 () Bool)

(declare-fun call!57043 () Bool)

(assert (=> bm!57038 (= call!57046 call!57043)))

(declare-fun b!1163700 () Bool)

(assert (=> b!1163700 (= e!661729 tp_is_empty!29155)))

(declare-fun b!1163701 () Bool)

(declare-datatypes ((Unit!38302 0))(
  ( (Unit!38303) )
))
(declare-fun e!661727 () Unit!38302)

(declare-fun Unit!38304 () Unit!38302)

(assert (=> b!1163701 (= e!661727 Unit!38304)))

(declare-fun b!1163702 () Bool)

(declare-fun res!771777 () Bool)

(assert (=> b!1163702 (=> (not res!771777) (not e!661724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163702 (= res!771777 (validKeyInArray!0 k!934))))

(declare-fun zeroValue!944 () V!44001)

(declare-fun lt!524323 () array!75102)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!524325 () array!75100)

(declare-fun minValue!944 () V!44001)

(declare-fun bm!57039 () Bool)

(declare-datatypes ((tuple2!18738 0))(
  ( (tuple2!18739 (_1!9379 (_ BitVec 64)) (_2!9379 V!44001)) )
))
(declare-datatypes ((List!25512 0))(
  ( (Nil!25509) (Cons!25508 (h!26717 tuple2!18738) (t!37136 List!25512)) )
))
(declare-datatypes ((ListLongMap!16719 0))(
  ( (ListLongMap!16720 (toList!8375 List!25512)) )
))
(declare-fun call!57041 () ListLongMap!16719)

(declare-fun getCurrentListMapNoExtraKeys!4809 (array!75100 array!75102 (_ BitVec 32) (_ BitVec 32) V!44001 V!44001 (_ BitVec 32) Int) ListLongMap!16719)

(assert (=> bm!57039 (= call!57041 (getCurrentListMapNoExtraKeys!4809 lt!524325 lt!524323 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163703 () Bool)

(declare-fun e!661732 () Bool)

(assert (=> b!1163703 (= e!661732 tp_is_empty!29155)))

(declare-fun b!1163704 () Bool)

(declare-fun e!661738 () Bool)

(declare-fun e!661733 () Bool)

(assert (=> b!1163704 (= e!661738 (not e!661733))))

(declare-fun res!771780 () Bool)

(assert (=> b!1163704 (=> res!771780 e!661733)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163704 (= res!771780 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163704 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!524311 () Unit!38302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75100 (_ BitVec 64) (_ BitVec 32)) Unit!38302)

(assert (=> b!1163704 (= lt!524311 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!57040 () Bool)

(declare-fun call!57047 () ListLongMap!16719)

(assert (=> bm!57040 (= call!57047 (getCurrentListMapNoExtraKeys!4809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163705 () Bool)

(assert (=> b!1163705 call!57046))

(declare-fun lt!524309 () Unit!38302)

(declare-fun call!57048 () Unit!38302)

(assert (=> b!1163705 (= lt!524309 call!57048)))

(declare-fun e!661737 () Unit!38302)

(assert (=> b!1163705 (= e!661737 lt!524309)))

(declare-fun b!1163706 () Bool)

(declare-fun res!771778 () Bool)

(assert (=> b!1163706 (=> (not res!771778) (not e!661724))))

(assert (=> b!1163706 (= res!771778 (and (= (size!36735 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36734 _keys!1208) (size!36735 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163707 () Bool)

(assert (=> b!1163707 (= e!661724 e!661738)))

(declare-fun res!771787 () Bool)

(assert (=> b!1163707 (=> (not res!771787) (not e!661738))))

(assert (=> b!1163707 (= res!771787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524325 mask!1564))))

(assert (=> b!1163707 (= lt!524325 (array!75101 (store (arr!36197 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36734 _keys!1208)))))

(declare-fun b!1163708 () Bool)

(declare-fun e!661736 () Unit!38302)

(declare-fun lt!524314 () Unit!38302)

(assert (=> b!1163708 (= e!661736 lt!524314)))

(assert (=> b!1163708 (= lt!524314 call!57048)))

(assert (=> b!1163708 call!57046))

(declare-fun b!1163709 () Bool)

(declare-fun e!661725 () Bool)

(assert (=> b!1163709 (= e!661725 (= call!57041 call!57047))))

(declare-fun e!661731 () Bool)

(declare-fun b!1163710 () Bool)

(declare-fun lt!524316 () ListLongMap!16719)

(assert (=> b!1163710 (= e!661731 (= lt!524316 (getCurrentListMapNoExtraKeys!4809 lt!524325 lt!524323 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1163711 () Bool)

(declare-fun res!771782 () Bool)

(assert (=> b!1163711 (=> (not res!771782) (not e!661724))))

(assert (=> b!1163711 (= res!771782 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36734 _keys!1208))))))

(declare-fun b!1163712 () Bool)

(declare-fun res!771786 () Bool)

(assert (=> b!1163712 (=> (not res!771786) (not e!661738))))

(declare-datatypes ((List!25513 0))(
  ( (Nil!25510) (Cons!25509 (h!26718 (_ BitVec 64)) (t!37137 List!25513)) )
))
(declare-fun arrayNoDuplicates!0 (array!75100 (_ BitVec 32) List!25513) Bool)

(assert (=> b!1163712 (= res!771786 (arrayNoDuplicates!0 lt!524325 #b00000000000000000000000000000000 Nil!25510))))

(declare-fun b!1163713 () Bool)

(declare-fun Unit!38305 () Unit!38302)

(assert (=> b!1163713 (= e!661737 Unit!38305)))

(declare-fun b!1163714 () Bool)

(declare-fun e!661740 () Bool)

(assert (=> b!1163714 (= e!661733 e!661740)))

(declare-fun res!771774 () Bool)

(assert (=> b!1163714 (=> res!771774 e!661740)))

(assert (=> b!1163714 (= res!771774 (not (= from!1455 i!673)))))

(declare-fun lt!524305 () ListLongMap!16719)

(assert (=> b!1163714 (= lt!524305 (getCurrentListMapNoExtraKeys!4809 lt!524325 lt!524323 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524308 () V!44001)

(assert (=> b!1163714 (= lt!524323 (array!75103 (store (arr!36198 _values!996) i!673 (ValueCellFull!13868 lt!524308)) (size!36735 _values!996)))))

(declare-fun dynLambda!2806 (Int (_ BitVec 64)) V!44001)

(assert (=> b!1163714 (= lt!524308 (dynLambda!2806 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!524310 () ListLongMap!16719)

(assert (=> b!1163714 (= lt!524310 (getCurrentListMapNoExtraKeys!4809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524307 () ListLongMap!16719)

(declare-fun c!116434 () Bool)

(declare-fun bm!57041 () Bool)

(declare-fun call!57045 () ListLongMap!16719)

(declare-fun contains!6853 (ListLongMap!16719 (_ BitVec 64)) Bool)

(assert (=> bm!57041 (= call!57043 (contains!6853 (ite c!116434 lt!524307 call!57045) k!934))))

(declare-fun bm!57042 () Bool)

(declare-fun lt!524306 () ListLongMap!16719)

(declare-fun c!116431 () Bool)

(declare-fun call!57042 () Unit!38302)

(declare-fun addStillContains!993 (ListLongMap!16719 (_ BitVec 64) V!44001 (_ BitVec 64)) Unit!38302)

(assert (=> bm!57042 (= call!57042 (addStillContains!993 (ite c!116434 lt!524307 lt!524306) (ite c!116434 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!116431 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116434 minValue!944 (ite c!116431 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1163715 () Bool)

(declare-fun e!661739 () Bool)

(assert (=> b!1163715 (= e!661740 e!661739)))

(declare-fun res!771785 () Bool)

(assert (=> b!1163715 (=> res!771785 e!661739)))

(assert (=> b!1163715 (= res!771785 (not (= (select (arr!36197 _keys!1208) from!1455) k!934)))))

(assert (=> b!1163715 e!661725))

(declare-fun c!116432 () Bool)

(assert (=> b!1163715 (= c!116432 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!524321 () Unit!38302)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!664 (array!75100 array!75102 (_ BitVec 32) (_ BitVec 32) V!44001 V!44001 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38302)

(assert (=> b!1163715 (= lt!524321 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!664 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163716 () Bool)

(declare-fun Unit!38306 () Unit!38302)

(assert (=> b!1163716 (= e!661727 Unit!38306)))

(assert (=> b!1163716 (= lt!524324 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1163716 (= c!116434 (and (not lt!524324) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!524322 () Unit!38302)

(declare-fun e!661730 () Unit!38302)

(assert (=> b!1163716 (= lt!524322 e!661730)))

(declare-fun lt!524320 () Unit!38302)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!560 (array!75100 array!75102 (_ BitVec 32) (_ BitVec 32) V!44001 V!44001 (_ BitVec 64) (_ BitVec 32) Int) Unit!38302)

(assert (=> b!1163716 (= lt!524320 (lemmaListMapContainsThenArrayContainsFrom!560 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116433 () Bool)

(assert (=> b!1163716 (= c!116433 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771775 () Bool)

(assert (=> b!1163716 (= res!771775 e!661726)))

(declare-fun e!661734 () Bool)

(assert (=> b!1163716 (=> (not res!771775) (not e!661734))))

(assert (=> b!1163716 e!661734))

(declare-fun lt!524318 () Unit!38302)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75100 (_ BitVec 32) (_ BitVec 32)) Unit!38302)

(assert (=> b!1163716 (= lt!524318 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1163716 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25510)))

(declare-fun lt!524313 () Unit!38302)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75100 (_ BitVec 64) (_ BitVec 32) List!25513) Unit!38302)

(assert (=> b!1163716 (= lt!524313 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25510))))

(assert (=> b!1163716 false))

(declare-fun bm!57043 () Bool)

(declare-fun call!57044 () ListLongMap!16719)

(assert (=> bm!57043 (= call!57045 call!57044)))

(declare-fun b!1163717 () Bool)

(assert (=> b!1163717 (= e!661736 e!661737)))

(declare-fun c!116436 () Bool)

(assert (=> b!1163717 (= c!116436 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!524324))))

(declare-fun b!1163718 () Bool)

(assert (=> b!1163718 (= c!116431 (and (not lt!524324) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1163718 (= e!661730 e!661736)))

(declare-fun bm!57044 () Bool)

(declare-fun +!3696 (ListLongMap!16719 tuple2!18738) ListLongMap!16719)

(assert (=> bm!57044 (= call!57044 (+!3696 (ite c!116434 lt!524307 lt!524306) (ite c!116434 (tuple2!18739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116431 (tuple2!18739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1163719 () Bool)

(declare-fun -!1440 (ListLongMap!16719 (_ BitVec 64)) ListLongMap!16719)

(assert (=> b!1163719 (= e!661725 (= call!57041 (-!1440 call!57047 k!934)))))

(declare-fun b!1163720 () Bool)

(declare-fun res!771788 () Bool)

(assert (=> b!1163720 (=> (not res!771788) (not e!661724))))

(assert (=> b!1163720 (= res!771788 (= (select (arr!36197 _keys!1208) i!673) k!934))))

(declare-fun b!1163721 () Bool)

(assert (=> b!1163721 (= e!661739 true)))

(assert (=> b!1163721 e!661731))

(declare-fun res!771781 () Bool)

(assert (=> b!1163721 (=> (not res!771781) (not e!661731))))

(assert (=> b!1163721 (= res!771781 (= lt!524316 lt!524306))))

(assert (=> b!1163721 (= lt!524316 (-!1440 lt!524310 k!934))))

(declare-fun lt!524319 () V!44001)

(assert (=> b!1163721 (= (-!1440 (+!3696 lt!524306 (tuple2!18739 (select (arr!36197 _keys!1208) from!1455) lt!524319)) (select (arr!36197 _keys!1208) from!1455)) lt!524306)))

(declare-fun lt!524312 () Unit!38302)

(declare-fun addThenRemoveForNewKeyIsSame!273 (ListLongMap!16719 (_ BitVec 64) V!44001) Unit!38302)

(assert (=> b!1163721 (= lt!524312 (addThenRemoveForNewKeyIsSame!273 lt!524306 (select (arr!36197 _keys!1208) from!1455) lt!524319))))

(declare-fun get!18503 (ValueCell!13868 V!44001) V!44001)

(assert (=> b!1163721 (= lt!524319 (get!18503 (select (arr!36198 _values!996) from!1455) lt!524308))))

(declare-fun lt!524317 () Unit!38302)

(assert (=> b!1163721 (= lt!524317 e!661727)))

(declare-fun c!116435 () Bool)

(assert (=> b!1163721 (= c!116435 (contains!6853 lt!524306 k!934))))

(assert (=> b!1163721 (= lt!524306 (getCurrentListMapNoExtraKeys!4809 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163722 () Bool)

(declare-fun res!771776 () Bool)

(assert (=> b!1163722 (=> (not res!771776) (not e!661724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163722 (= res!771776 (validMask!0 mask!1564))))

(declare-fun b!1163723 () Bool)

(assert (=> b!1163723 (contains!6853 call!57044 k!934)))

(declare-fun lt!524315 () Unit!38302)

(assert (=> b!1163723 (= lt!524315 call!57042)))

(assert (=> b!1163723 call!57043))

(assert (=> b!1163723 (= lt!524307 (+!3696 lt!524306 (tuple2!18739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!524304 () Unit!38302)

(assert (=> b!1163723 (= lt!524304 (addStillContains!993 lt!524306 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1163723 (= e!661730 lt!524315)))

(declare-fun b!1163724 () Bool)

(declare-fun res!771784 () Bool)

(assert (=> b!1163724 (=> (not res!771784) (not e!661724))))

(assert (=> b!1163724 (= res!771784 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25510))))

(declare-fun b!1163725 () Bool)

(assert (=> b!1163725 (= e!661728 (and e!661732 mapRes!45557))))

(declare-fun condMapEmpty!45557 () Bool)

(declare-fun mapDefault!45557 () ValueCell!13868)

