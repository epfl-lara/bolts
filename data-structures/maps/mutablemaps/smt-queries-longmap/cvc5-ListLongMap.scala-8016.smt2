; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98972 () Bool)

(assert start!98972)

(declare-fun b_free!24541 () Bool)

(declare-fun b_next!24541 () Bool)

(assert (=> start!98972 (= b_free!24541 (not b_next!24541))))

(declare-fun tp!86335 () Bool)

(declare-fun b_and!39945 () Bool)

(assert (=> start!98972 (= tp!86335 b_and!39945)))

(declare-fun b!1159834 () Bool)

(declare-datatypes ((V!43889 0))(
  ( (V!43890 (val!14592 Int)) )
))
(declare-datatypes ((tuple2!18654 0))(
  ( (tuple2!18655 (_1!9337 (_ BitVec 64)) (_2!9337 V!43889)) )
))
(declare-datatypes ((List!25432 0))(
  ( (Nil!25429) (Cons!25428 (h!26637 tuple2!18654) (t!36972 List!25432)) )
))
(declare-datatypes ((ListLongMap!16635 0))(
  ( (ListLongMap!16636 (toList!8333 List!25432)) )
))
(declare-fun lt!521549 () ListLongMap!16635)

(declare-fun minValue!944 () V!43889)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6815 (ListLongMap!16635 (_ BitVec 64)) Bool)

(declare-fun +!3659 (ListLongMap!16635 tuple2!18654) ListLongMap!16635)

(assert (=> b!1159834 (contains!6815 (+!3659 lt!521549 (tuple2!18655 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38126 0))(
  ( (Unit!38127) )
))
(declare-fun lt!521548 () Unit!38126)

(declare-fun call!56036 () Unit!38126)

(assert (=> b!1159834 (= lt!521548 call!56036)))

(declare-fun call!56038 () Bool)

(assert (=> b!1159834 call!56038))

(declare-fun call!56034 () ListLongMap!16635)

(assert (=> b!1159834 (= lt!521549 call!56034)))

(declare-fun zeroValue!944 () V!43889)

(declare-fun lt!521534 () Unit!38126)

(declare-fun lt!521535 () ListLongMap!16635)

(declare-fun addStillContains!956 (ListLongMap!16635 (_ BitVec 64) V!43889 (_ BitVec 64)) Unit!38126)

(assert (=> b!1159834 (= lt!521534 (addStillContains!956 lt!521535 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!659591 () Unit!38126)

(assert (=> b!1159834 (= e!659591 lt!521548)))

(declare-fun b!1159835 () Bool)

(declare-fun res!769886 () Bool)

(declare-fun e!659595 () Bool)

(assert (=> b!1159835 (=> (not res!769886) (not e!659595))))

(declare-datatypes ((array!74932 0))(
  ( (array!74933 (arr!36113 (Array (_ BitVec 32) (_ BitVec 64))) (size!36650 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74932)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13826 0))(
  ( (ValueCellFull!13826 (v!17230 V!43889)) (EmptyCell!13826) )
))
(declare-datatypes ((array!74934 0))(
  ( (array!74935 (arr!36114 (Array (_ BitVec 32) ValueCell!13826)) (size!36651 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74934)

(assert (=> b!1159835 (= res!769886 (and (= (size!36651 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36650 _keys!1208) (size!36651 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1159836 () Bool)

(declare-fun res!769890 () Bool)

(assert (=> b!1159836 (=> (not res!769890) (not e!659595))))

(declare-datatypes ((List!25433 0))(
  ( (Nil!25430) (Cons!25429 (h!26638 (_ BitVec 64)) (t!36973 List!25433)) )
))
(declare-fun arrayNoDuplicates!0 (array!74932 (_ BitVec 32) List!25433) Bool)

(assert (=> b!1159836 (= res!769890 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25430))))

(declare-fun b!1159837 () Bool)

(declare-fun e!659594 () Unit!38126)

(declare-fun lt!521539 () Unit!38126)

(assert (=> b!1159837 (= e!659594 lt!521539)))

(declare-fun call!56040 () Unit!38126)

(assert (=> b!1159837 (= lt!521539 call!56040)))

(declare-fun call!56033 () Bool)

(assert (=> b!1159837 call!56033))

(declare-fun b!1159838 () Bool)

(declare-fun e!659584 () Bool)

(declare-fun e!659597 () Bool)

(assert (=> b!1159838 (= e!659584 e!659597)))

(declare-fun res!769893 () Bool)

(assert (=> b!1159838 (=> res!769893 e!659597)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159838 (= res!769893 (not (= from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!521552 () array!74934)

(declare-fun lt!521537 () ListLongMap!16635)

(declare-fun lt!521542 () array!74932)

(declare-fun getCurrentListMapNoExtraKeys!4769 (array!74932 array!74934 (_ BitVec 32) (_ BitVec 32) V!43889 V!43889 (_ BitVec 32) Int) ListLongMap!16635)

(assert (=> b!1159838 (= lt!521537 (getCurrentListMapNoExtraKeys!4769 lt!521542 lt!521552 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!521541 () V!43889)

(assert (=> b!1159838 (= lt!521552 (array!74935 (store (arr!36114 _values!996) i!673 (ValueCellFull!13826 lt!521541)) (size!36651 _values!996)))))

(declare-fun dynLambda!2771 (Int (_ BitVec 64)) V!43889)

(assert (=> b!1159838 (= lt!521541 (dynLambda!2771 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!521540 () ListLongMap!16635)

(assert (=> b!1159838 (= lt!521540 (getCurrentListMapNoExtraKeys!4769 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1159839 () Bool)

(declare-fun e!659593 () Bool)

(declare-fun call!56035 () ListLongMap!16635)

(declare-fun call!56039 () ListLongMap!16635)

(assert (=> b!1159839 (= e!659593 (= call!56035 call!56039))))

(declare-fun call!56037 () ListLongMap!16635)

(declare-fun bm!56030 () Bool)

(declare-fun c!115675 () Bool)

(assert (=> bm!56030 (= call!56038 (contains!6815 (ite c!115675 lt!521549 call!56037) k!934))))

(declare-fun b!1159840 () Bool)

(declare-fun e!659598 () Bool)

(declare-fun arrayContainsKey!0 (array!74932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1159840 (= e!659598 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159841 () Bool)

(declare-fun res!769894 () Bool)

(assert (=> b!1159841 (=> (not res!769894) (not e!659595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1159841 (= res!769894 (validMask!0 mask!1564))))

(declare-fun b!1159842 () Bool)

(declare-fun e!659589 () Bool)

(declare-fun tp_is_empty!29071 () Bool)

(assert (=> b!1159842 (= e!659589 tp_is_empty!29071)))

(declare-fun mapIsEmpty!45431 () Bool)

(declare-fun mapRes!45431 () Bool)

(assert (=> mapIsEmpty!45431 mapRes!45431))

(declare-fun b!1159844 () Bool)

(declare-fun res!769898 () Bool)

(assert (=> b!1159844 (=> (not res!769898) (not e!659595))))

(assert (=> b!1159844 (= res!769898 (= (select (arr!36113 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!45431 () Bool)

(declare-fun tp!86334 () Bool)

(declare-fun e!659586 () Bool)

(assert (=> mapNonEmpty!45431 (= mapRes!45431 (and tp!86334 e!659586))))

(declare-fun mapKey!45431 () (_ BitVec 32))

(declare-fun mapValue!45431 () ValueCell!13826)

(declare-fun mapRest!45431 () (Array (_ BitVec 32) ValueCell!13826))

(assert (=> mapNonEmpty!45431 (= (arr!36114 _values!996) (store mapRest!45431 mapKey!45431 mapValue!45431))))

(declare-fun e!659582 () Bool)

(declare-fun lt!521543 () Bool)

(declare-fun b!1159845 () Bool)

(assert (=> b!1159845 (= e!659582 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521543) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1159846 () Bool)

(declare-fun res!769885 () Bool)

(assert (=> b!1159846 (=> (not res!769885) (not e!659595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74932 (_ BitVec 32)) Bool)

(assert (=> b!1159846 (= res!769885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun c!115676 () Bool)

(declare-fun bm!56031 () Bool)

(assert (=> bm!56031 (= call!56036 (addStillContains!956 (ite c!115675 lt!521549 lt!521535) (ite c!115675 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115676 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115675 minValue!944 (ite c!115676 zeroValue!944 minValue!944)) k!934))))

(declare-fun bm!56032 () Bool)

(assert (=> bm!56032 (= call!56034 (+!3659 lt!521535 (ite (or c!115675 c!115676) (tuple2!18655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18655 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1159847 () Bool)

(assert (=> b!1159847 call!56033))

(declare-fun lt!521533 () Unit!38126)

(assert (=> b!1159847 (= lt!521533 call!56040)))

(declare-fun e!659590 () Unit!38126)

(assert (=> b!1159847 (= e!659590 lt!521533)))

(declare-fun b!1159848 () Bool)

(declare-fun e!659583 () Bool)

(assert (=> b!1159848 (= e!659597 e!659583)))

(declare-fun res!769895 () Bool)

(assert (=> b!1159848 (=> res!769895 e!659583)))

(assert (=> b!1159848 (= res!769895 (not (= (select (arr!36113 _keys!1208) from!1455) k!934)))))

(assert (=> b!1159848 e!659593))

(declare-fun c!115678 () Bool)

(assert (=> b!1159848 (= c!115678 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!521538 () Unit!38126)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!629 (array!74932 array!74934 (_ BitVec 32) (_ BitVec 32) V!43889 V!43889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38126)

(assert (=> b!1159848 (= lt!521538 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!629 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56033 () Bool)

(assert (=> bm!56033 (= call!56035 (getCurrentListMapNoExtraKeys!4769 lt!521542 lt!521552 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159849 () Bool)

(declare-fun e!659588 () Bool)

(assert (=> b!1159849 (= e!659588 (not e!659584))))

(declare-fun res!769896 () Bool)

(assert (=> b!1159849 (=> res!769896 e!659584)))

(assert (=> b!1159849 (= res!769896 (bvsgt from!1455 i!673))))

(assert (=> b!1159849 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!521546 () Unit!38126)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74932 (_ BitVec 64) (_ BitVec 32)) Unit!38126)

(assert (=> b!1159849 (= lt!521546 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1159850 () Bool)

(assert (=> b!1159850 (= e!659583 true)))

(declare-fun e!659592 () Bool)

(assert (=> b!1159850 e!659592))

(declare-fun res!769892 () Bool)

(assert (=> b!1159850 (=> (not res!769892) (not e!659592))))

(declare-fun lt!521544 () ListLongMap!16635)

(assert (=> b!1159850 (= res!769892 (= lt!521544 lt!521535))))

(declare-fun -!1405 (ListLongMap!16635 (_ BitVec 64)) ListLongMap!16635)

(assert (=> b!1159850 (= lt!521544 (-!1405 lt!521540 k!934))))

(declare-fun lt!521553 () V!43889)

(assert (=> b!1159850 (= (-!1405 (+!3659 lt!521535 (tuple2!18655 (select (arr!36113 _keys!1208) from!1455) lt!521553)) (select (arr!36113 _keys!1208) from!1455)) lt!521535)))

(declare-fun lt!521545 () Unit!38126)

(declare-fun addThenRemoveForNewKeyIsSame!243 (ListLongMap!16635 (_ BitVec 64) V!43889) Unit!38126)

(assert (=> b!1159850 (= lt!521545 (addThenRemoveForNewKeyIsSame!243 lt!521535 (select (arr!36113 _keys!1208) from!1455) lt!521553))))

(declare-fun get!18445 (ValueCell!13826 V!43889) V!43889)

(assert (=> b!1159850 (= lt!521553 (get!18445 (select (arr!36114 _values!996) from!1455) lt!521541))))

(declare-fun lt!521547 () Unit!38126)

(declare-fun e!659587 () Unit!38126)

(assert (=> b!1159850 (= lt!521547 e!659587)))

(declare-fun c!115679 () Bool)

(assert (=> b!1159850 (= c!115679 (contains!6815 lt!521535 k!934))))

(assert (=> b!1159850 (= lt!521535 (getCurrentListMapNoExtraKeys!4769 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56034 () Bool)

(assert (=> bm!56034 (= call!56039 (getCurrentListMapNoExtraKeys!4769 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1159851 () Bool)

(assert (=> b!1159851 (= c!115676 (and (not lt!521543) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1159851 (= e!659591 e!659594)))

(declare-fun b!1159852 () Bool)

(assert (=> b!1159852 (= e!659595 e!659588)))

(declare-fun res!769887 () Bool)

(assert (=> b!1159852 (=> (not res!769887) (not e!659588))))

(assert (=> b!1159852 (= res!769887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!521542 mask!1564))))

(assert (=> b!1159852 (= lt!521542 (array!74933 (store (arr!36113 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36650 _keys!1208)))))

(declare-fun b!1159853 () Bool)

(declare-fun Unit!38128 () Unit!38126)

(assert (=> b!1159853 (= e!659587 Unit!38128)))

(assert (=> b!1159853 (= lt!521543 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159853 (= c!115675 (and (not lt!521543) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521532 () Unit!38126)

(assert (=> b!1159853 (= lt!521532 e!659591)))

(declare-fun lt!521536 () Unit!38126)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!530 (array!74932 array!74934 (_ BitVec 32) (_ BitVec 32) V!43889 V!43889 (_ BitVec 64) (_ BitVec 32) Int) Unit!38126)

(assert (=> b!1159853 (= lt!521536 (lemmaListMapContainsThenArrayContainsFrom!530 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115677 () Bool)

(assert (=> b!1159853 (= c!115677 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769891 () Bool)

(assert (=> b!1159853 (= res!769891 e!659582)))

(assert (=> b!1159853 (=> (not res!769891) (not e!659598))))

(assert (=> b!1159853 e!659598))

(declare-fun lt!521551 () Unit!38126)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74932 (_ BitVec 32) (_ BitVec 32)) Unit!38126)

(assert (=> b!1159853 (= lt!521551 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1159853 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25430)))

(declare-fun lt!521550 () Unit!38126)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74932 (_ BitVec 64) (_ BitVec 32) List!25433) Unit!38126)

(assert (=> b!1159853 (= lt!521550 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25430))))

(assert (=> b!1159853 false))

(declare-fun b!1159854 () Bool)

(declare-fun res!769897 () Bool)

(assert (=> b!1159854 (=> (not res!769897) (not e!659595))))

(assert (=> b!1159854 (= res!769897 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36650 _keys!1208))))))

(declare-fun bm!56035 () Bool)

(assert (=> bm!56035 (= call!56033 call!56038)))

(declare-fun b!1159855 () Bool)

(assert (=> b!1159855 (= e!659593 (= call!56035 (-!1405 call!56039 k!934)))))

(declare-fun bm!56036 () Bool)

(assert (=> bm!56036 (= call!56037 call!56034)))

(declare-fun b!1159856 () Bool)

(assert (=> b!1159856 (= e!659594 e!659590)))

(declare-fun c!115680 () Bool)

(assert (=> b!1159856 (= c!115680 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!521543))))

(declare-fun b!1159857 () Bool)

(assert (=> b!1159857 (= e!659582 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1159858 () Bool)

(assert (=> b!1159858 (= e!659592 (= lt!521544 (getCurrentListMapNoExtraKeys!4769 lt!521542 lt!521552 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159859 () Bool)

(declare-fun Unit!38129 () Unit!38126)

(assert (=> b!1159859 (= e!659590 Unit!38129)))

(declare-fun b!1159860 () Bool)

(declare-fun e!659596 () Bool)

(assert (=> b!1159860 (= e!659596 (and e!659589 mapRes!45431))))

(declare-fun condMapEmpty!45431 () Bool)

(declare-fun mapDefault!45431 () ValueCell!13826)

