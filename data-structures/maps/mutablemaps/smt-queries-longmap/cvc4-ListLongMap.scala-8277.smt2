; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100802 () Bool)

(assert start!100802)

(declare-fun b_free!25937 () Bool)

(declare-fun b_next!25937 () Bool)

(assert (=> start!100802 (= b_free!25937 (not b_next!25937))))

(declare-fun tp!90814 () Bool)

(declare-fun b_and!42871 () Bool)

(assert (=> start!100802 (= tp!90814 b_and!42871)))

(declare-fun b!1205801 () Bool)

(declare-fun res!802068 () Bool)

(declare-fun e!684795 () Bool)

(assert (=> b!1205801 (=> (not res!802068) (not e!684795))))

(declare-datatypes ((array!78038 0))(
  ( (array!78039 (arr!37656 (Array (_ BitVec 32) (_ BitVec 64))) (size!38193 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78038)

(declare-datatypes ((List!26685 0))(
  ( (Nil!26682) (Cons!26681 (h!27890 (_ BitVec 64)) (t!39609 List!26685)) )
))
(declare-fun arrayNoDuplicates!0 (array!78038 (_ BitVec 32) List!26685) Bool)

(assert (=> b!1205801 (= res!802068 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26682))))

(declare-fun b!1205802 () Bool)

(declare-fun e!684798 () Bool)

(declare-fun e!684802 () Bool)

(assert (=> b!1205802 (= e!684798 e!684802)))

(declare-fun res!802064 () Bool)

(assert (=> b!1205802 (=> res!802064 e!684802)))

(declare-datatypes ((V!45981 0))(
  ( (V!45982 (val!15377 Int)) )
))
(declare-datatypes ((tuple2!19860 0))(
  ( (tuple2!19861 (_1!9940 (_ BitVec 64)) (_2!9940 V!45981)) )
))
(declare-datatypes ((List!26686 0))(
  ( (Nil!26683) (Cons!26682 (h!27891 tuple2!19860) (t!39610 List!26686)) )
))
(declare-datatypes ((ListLongMap!17841 0))(
  ( (ListLongMap!17842 (toList!8936 List!26686)) )
))
(declare-fun lt!546922 () ListLongMap!17841)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6940 (ListLongMap!17841 (_ BitVec 64)) Bool)

(assert (=> b!1205802 (= res!802064 (not (contains!6940 lt!546922 k!934)))))

(declare-fun zeroValue!944 () V!45981)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14611 0))(
  ( (ValueCellFull!14611 (v!18022 V!45981)) (EmptyCell!14611) )
))
(declare-datatypes ((array!78040 0))(
  ( (array!78041 (arr!37657 (Array (_ BitVec 32) ValueCell!14611)) (size!38194 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78040)

(declare-fun minValue!944 () V!45981)

(declare-fun getCurrentListMapNoExtraKeys!5344 (array!78038 array!78040 (_ BitVec 32) (_ BitVec 32) V!45981 V!45981 (_ BitVec 32) Int) ListLongMap!17841)

(assert (=> b!1205802 (= lt!546922 (getCurrentListMapNoExtraKeys!5344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205803 () Bool)

(declare-datatypes ((Unit!39898 0))(
  ( (Unit!39899) )
))
(declare-fun e!684806 () Unit!39898)

(declare-fun lt!546924 () Unit!39898)

(assert (=> b!1205803 (= e!684806 lt!546924)))

(declare-fun call!58577 () Unit!39898)

(assert (=> b!1205803 (= lt!546924 call!58577)))

(declare-fun call!58573 () Bool)

(assert (=> b!1205803 call!58573))

(declare-fun b!1205804 () Bool)

(declare-fun e!684803 () Bool)

(assert (=> b!1205804 (= e!684803 e!684798)))

(declare-fun res!802063 () Bool)

(assert (=> b!1205804 (=> res!802063 e!684798)))

(assert (=> b!1205804 (= res!802063 (not (= (select (arr!37656 _keys!1208) from!1455) k!934)))))

(declare-fun e!684808 () Bool)

(assert (=> b!1205804 e!684808))

(declare-fun c!118305 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205804 (= c!118305 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546925 () Unit!39898)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1052 (array!78038 array!78040 (_ BitVec 32) (_ BitVec 32) V!45981 V!45981 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39898)

(assert (=> b!1205804 (= lt!546925 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1052 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!118307 () Bool)

(declare-fun call!58578 () Unit!39898)

(declare-fun lt!546915 () ListLongMap!17841)

(declare-fun bm!58568 () Bool)

(declare-fun c!118306 () Bool)

(declare-fun addStillContains!1031 (ListLongMap!17841 (_ BitVec 64) V!45981 (_ BitVec 64)) Unit!39898)

(assert (=> bm!58568 (= call!58578 (addStillContains!1031 (ite c!118306 lt!546915 lt!546922) (ite c!118306 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118307 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118306 minValue!944 (ite c!118307 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1205805 () Bool)

(declare-fun e!684809 () Bool)

(declare-fun tp_is_empty!30641 () Bool)

(assert (=> b!1205805 (= e!684809 tp_is_empty!30641)))

(declare-fun bm!58569 () Bool)

(declare-fun call!58576 () ListLongMap!17841)

(assert (=> bm!58569 (= call!58576 (getCurrentListMapNoExtraKeys!5344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58570 () Bool)

(assert (=> bm!58570 (= call!58577 call!58578)))

(declare-fun b!1205806 () Bool)

(declare-fun Unit!39900 () Unit!39898)

(assert (=> b!1205806 (= e!684806 Unit!39900)))

(declare-fun b!1205807 () Bool)

(declare-fun e!684797 () Unit!39898)

(declare-fun lt!546918 () Unit!39898)

(assert (=> b!1205807 (= e!684797 lt!546918)))

(declare-fun lt!546919 () Unit!39898)

(assert (=> b!1205807 (= lt!546919 (addStillContains!1031 lt!546922 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun +!3966 (ListLongMap!17841 tuple2!19860) ListLongMap!17841)

(assert (=> b!1205807 (= lt!546915 (+!3966 lt!546922 (tuple2!19861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun call!58575 () Bool)

(assert (=> b!1205807 call!58575))

(assert (=> b!1205807 (= lt!546918 call!58578)))

(declare-fun call!58572 () ListLongMap!17841)

(assert (=> b!1205807 (contains!6940 call!58572 k!934)))

(declare-fun b!1205808 () Bool)

(declare-fun c!118304 () Bool)

(declare-fun lt!546920 () Bool)

(assert (=> b!1205808 (= c!118304 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546920))))

(declare-fun e!684801 () Unit!39898)

(assert (=> b!1205808 (= e!684801 e!684806)))

(declare-fun b!1205809 () Bool)

(assert (=> b!1205809 (= e!684797 e!684801)))

(assert (=> b!1205809 (= c!118307 (and (not lt!546920) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1205810 () Bool)

(declare-fun res!802071 () Bool)

(assert (=> b!1205810 (=> (not res!802071) (not e!684795))))

(assert (=> b!1205810 (= res!802071 (= (select (arr!37656 _keys!1208) i!673) k!934))))

(declare-fun b!1205811 () Bool)

(declare-fun res!802070 () Bool)

(assert (=> b!1205811 (=> (not res!802070) (not e!684795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205811 (= res!802070 (validMask!0 mask!1564))))

(declare-fun call!58574 () ListLongMap!17841)

(declare-fun bm!58571 () Bool)

(assert (=> bm!58571 (= call!58575 (contains!6940 (ite c!118306 lt!546915 call!58574) k!934))))

(declare-fun b!1205812 () Bool)

(declare-fun call!58571 () ListLongMap!17841)

(assert (=> b!1205812 (= e!684808 (= call!58571 call!58576))))

(declare-fun b!1205813 () Bool)

(declare-fun res!802061 () Bool)

(assert (=> b!1205813 (=> (not res!802061) (not e!684795))))

(assert (=> b!1205813 (= res!802061 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38193 _keys!1208))))))

(declare-fun mapIsEmpty!47817 () Bool)

(declare-fun mapRes!47817 () Bool)

(assert (=> mapIsEmpty!47817 mapRes!47817))

(declare-fun b!1205814 () Bool)

(assert (=> b!1205814 (= e!684802 true)))

(declare-fun e!684800 () Bool)

(assert (=> b!1205814 e!684800))

(declare-fun res!802060 () Bool)

(assert (=> b!1205814 (=> (not res!802060) (not e!684800))))

(declare-fun e!684796 () Bool)

(assert (=> b!1205814 (= res!802060 e!684796)))

(declare-fun c!118303 () Bool)

(assert (=> b!1205814 (= c!118303 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!546917 () Unit!39898)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!572 (array!78038 array!78040 (_ BitVec 32) (_ BitVec 32) V!45981 V!45981 (_ BitVec 64) (_ BitVec 32) Int) Unit!39898)

(assert (=> b!1205814 (= lt!546917 (lemmaListMapContainsThenArrayContainsFrom!572 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546916 () Unit!39898)

(assert (=> b!1205814 (= lt!546916 e!684797)))

(assert (=> b!1205814 (= c!118306 (and (not lt!546920) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205814 (= lt!546920 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205815 () Bool)

(declare-fun e!684805 () Bool)

(assert (=> b!1205815 (= e!684805 tp_is_empty!30641)))

(declare-fun lt!546911 () array!78040)

(declare-fun lt!546912 () array!78038)

(declare-fun bm!58572 () Bool)

(assert (=> bm!58572 (= call!58571 (getCurrentListMapNoExtraKeys!5344 lt!546912 lt!546911 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205816 () Bool)

(assert (=> b!1205816 (= e!684796 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546920) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!58573 () Bool)

(assert (=> bm!58573 (= call!58574 call!58572)))

(declare-fun b!1205817 () Bool)

(declare-fun arrayContainsKey!0 (array!78038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205817 (= e!684800 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205818 () Bool)

(declare-fun res!802059 () Bool)

(declare-fun e!684804 () Bool)

(assert (=> b!1205818 (=> (not res!802059) (not e!684804))))

(assert (=> b!1205818 (= res!802059 (arrayNoDuplicates!0 lt!546912 #b00000000000000000000000000000000 Nil!26682))))

(declare-fun b!1205819 () Bool)

(declare-fun e!684794 () Bool)

(assert (=> b!1205819 (= e!684804 (not e!684794))))

(declare-fun res!802065 () Bool)

(assert (=> b!1205819 (=> res!802065 e!684794)))

(assert (=> b!1205819 (= res!802065 (bvsgt from!1455 i!673))))

(assert (=> b!1205819 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!546921 () Unit!39898)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78038 (_ BitVec 64) (_ BitVec 32)) Unit!39898)

(assert (=> b!1205819 (= lt!546921 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1205820 () Bool)

(assert (=> b!1205820 (= e!684794 e!684803)))

(declare-fun res!802066 () Bool)

(assert (=> b!1205820 (=> res!802066 e!684803)))

(assert (=> b!1205820 (= res!802066 (not (= from!1455 i!673)))))

(declare-fun lt!546923 () ListLongMap!17841)

(assert (=> b!1205820 (= lt!546923 (getCurrentListMapNoExtraKeys!5344 lt!546912 lt!546911 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3265 (Int (_ BitVec 64)) V!45981)

(assert (=> b!1205820 (= lt!546911 (array!78041 (store (arr!37657 _values!996) i!673 (ValueCellFull!14611 (dynLambda!3265 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38194 _values!996)))))

(declare-fun lt!546914 () ListLongMap!17841)

(assert (=> b!1205820 (= lt!546914 (getCurrentListMapNoExtraKeys!5344 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!802069 () Bool)

(assert (=> start!100802 (=> (not res!802069) (not e!684795))))

(assert (=> start!100802 (= res!802069 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38193 _keys!1208))))))

(assert (=> start!100802 e!684795))

(assert (=> start!100802 tp_is_empty!30641))

(declare-fun array_inv!28586 (array!78038) Bool)

(assert (=> start!100802 (array_inv!28586 _keys!1208)))

(assert (=> start!100802 true))

(assert (=> start!100802 tp!90814))

(declare-fun e!684799 () Bool)

(declare-fun array_inv!28587 (array!78040) Bool)

(assert (=> start!100802 (and (array_inv!28587 _values!996) e!684799)))

(declare-fun b!1205821 () Bool)

(assert (=> b!1205821 call!58573))

(declare-fun lt!546913 () Unit!39898)

(assert (=> b!1205821 (= lt!546913 call!58577)))

(assert (=> b!1205821 (= e!684801 lt!546913)))

(declare-fun b!1205822 () Bool)

(declare-fun res!802067 () Bool)

(assert (=> b!1205822 (=> (not res!802067) (not e!684795))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205822 (= res!802067 (validKeyInArray!0 k!934))))

(declare-fun bm!58574 () Bool)

(assert (=> bm!58574 (= call!58573 call!58575)))

(declare-fun b!1205823 () Bool)

(declare-fun -!1848 (ListLongMap!17841 (_ BitVec 64)) ListLongMap!17841)

(assert (=> b!1205823 (= e!684808 (= call!58571 (-!1848 call!58576 k!934)))))

(declare-fun mapNonEmpty!47817 () Bool)

(declare-fun tp!90815 () Bool)

(assert (=> mapNonEmpty!47817 (= mapRes!47817 (and tp!90815 e!684809))))

(declare-fun mapValue!47817 () ValueCell!14611)

(declare-fun mapKey!47817 () (_ BitVec 32))

(declare-fun mapRest!47817 () (Array (_ BitVec 32) ValueCell!14611))

(assert (=> mapNonEmpty!47817 (= (arr!37657 _values!996) (store mapRest!47817 mapKey!47817 mapValue!47817))))

(declare-fun b!1205824 () Bool)

(declare-fun res!802058 () Bool)

(assert (=> b!1205824 (=> (not res!802058) (not e!684795))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78038 (_ BitVec 32)) Bool)

(assert (=> b!1205824 (= res!802058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205825 () Bool)

(assert (=> b!1205825 (= e!684796 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205826 () Bool)

(assert (=> b!1205826 (= e!684795 e!684804)))

(declare-fun res!802072 () Bool)

(assert (=> b!1205826 (=> (not res!802072) (not e!684804))))

(assert (=> b!1205826 (= res!802072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546912 mask!1564))))

(assert (=> b!1205826 (= lt!546912 (array!78039 (store (arr!37656 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38193 _keys!1208)))))

(declare-fun b!1205827 () Bool)

(assert (=> b!1205827 (= e!684799 (and e!684805 mapRes!47817))))

(declare-fun condMapEmpty!47817 () Bool)

(declare-fun mapDefault!47817 () ValueCell!14611)

