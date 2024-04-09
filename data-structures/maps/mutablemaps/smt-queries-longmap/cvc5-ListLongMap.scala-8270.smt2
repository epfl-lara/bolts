; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100604 () Bool)

(assert start!100604)

(declare-fun b_free!25891 () Bool)

(declare-fun b_next!25891 () Bool)

(assert (=> start!100604 (= b_free!25891 (not b_next!25891))))

(declare-fun tp!90664 () Bool)

(declare-fun b_and!42683 () Bool)

(assert (=> start!100604 (= tp!90664 b_and!42683)))

(declare-fun b!1202844 () Bool)

(declare-fun e!683068 () Bool)

(declare-datatypes ((V!45921 0))(
  ( (V!45922 (val!15354 Int)) )
))
(declare-datatypes ((tuple2!19816 0))(
  ( (tuple2!19817 (_1!9918 (_ BitVec 64)) (_2!9918 V!45921)) )
))
(declare-datatypes ((List!26644 0))(
  ( (Nil!26641) (Cons!26640 (h!27849 tuple2!19816) (t!39522 List!26644)) )
))
(declare-datatypes ((ListLongMap!17797 0))(
  ( (ListLongMap!17798 (toList!8914 List!26644)) )
))
(declare-fun call!57892 () ListLongMap!17797)

(declare-fun call!57896 () ListLongMap!17797)

(assert (=> b!1202844 (= e!683068 (= call!57892 call!57896))))

(declare-fun b!1202845 () Bool)

(declare-fun e!683069 () Bool)

(declare-fun e!683065 () Bool)

(assert (=> b!1202845 (= e!683069 e!683065)))

(declare-fun res!800623 () Bool)

(assert (=> b!1202845 (=> (not res!800623) (not e!683065))))

(declare-datatypes ((array!77940 0))(
  ( (array!77941 (arr!37611 (Array (_ BitVec 32) (_ BitVec 64))) (size!38148 (_ BitVec 32))) )
))
(declare-fun lt!545212 () array!77940)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77940 (_ BitVec 32)) Bool)

(assert (=> b!1202845 (= res!800623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!545212 mask!1564))))

(declare-fun _keys!1208 () array!77940)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202845 (= lt!545212 (array!77941 (store (arr!37611 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38148 _keys!1208)))))

(declare-fun bm!57888 () Bool)

(declare-datatypes ((Unit!39800 0))(
  ( (Unit!39801) )
))
(declare-fun call!57897 () Unit!39800)

(declare-fun call!57895 () Unit!39800)

(assert (=> bm!57888 (= call!57897 call!57895)))

(declare-fun b!1202846 () Bool)

(declare-fun e!683074 () Bool)

(assert (=> b!1202846 (= e!683065 (not e!683074))))

(declare-fun res!800625 () Bool)

(assert (=> b!1202846 (=> res!800625 e!683074)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1202846 (= res!800625 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202846 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!545208 () Unit!39800)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77940 (_ BitVec 64) (_ BitVec 32)) Unit!39800)

(assert (=> b!1202846 (= lt!545208 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1202847 () Bool)

(declare-fun e!683071 () Bool)

(declare-fun tp_is_empty!30595 () Bool)

(assert (=> b!1202847 (= e!683071 tp_is_empty!30595)))

(declare-fun b!1202848 () Bool)

(declare-fun e!683070 () Unit!39800)

(declare-fun e!683072 () Unit!39800)

(assert (=> b!1202848 (= e!683070 e!683072)))

(declare-fun c!117693 () Bool)

(declare-fun lt!545202 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1202848 (= c!117693 (and (not lt!545202) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!800631 () Bool)

(assert (=> start!100604 (=> (not res!800631) (not e!683069))))

(assert (=> start!100604 (= res!800631 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38148 _keys!1208))))))

(assert (=> start!100604 e!683069))

(assert (=> start!100604 tp_is_empty!30595))

(declare-fun array_inv!28552 (array!77940) Bool)

(assert (=> start!100604 (array_inv!28552 _keys!1208)))

(assert (=> start!100604 true))

(assert (=> start!100604 tp!90664))

(declare-datatypes ((ValueCell!14588 0))(
  ( (ValueCellFull!14588 (v!17993 V!45921)) (EmptyCell!14588) )
))
(declare-datatypes ((array!77942 0))(
  ( (array!77943 (arr!37612 (Array (_ BitVec 32) ValueCell!14588)) (size!38149 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77942)

(declare-fun e!683066 () Bool)

(declare-fun array_inv!28553 (array!77942) Bool)

(assert (=> start!100604 (and (array_inv!28553 _values!996) e!683066)))

(declare-fun b!1202849 () Bool)

(declare-fun res!800620 () Bool)

(assert (=> b!1202849 (=> (not res!800620) (not e!683065))))

(declare-datatypes ((List!26645 0))(
  ( (Nil!26642) (Cons!26641 (h!27850 (_ BitVec 64)) (t!39523 List!26645)) )
))
(declare-fun arrayNoDuplicates!0 (array!77940 (_ BitVec 32) List!26645) Bool)

(assert (=> b!1202849 (= res!800620 (arrayNoDuplicates!0 lt!545212 #b00000000000000000000000000000000 Nil!26642))))

(declare-fun b!1202850 () Bool)

(declare-fun c!117692 () Bool)

(assert (=> b!1202850 (= c!117692 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!545202))))

(declare-fun e!683067 () Unit!39800)

(assert (=> b!1202850 (= e!683072 e!683067)))

(declare-fun b!1202851 () Bool)

(declare-fun res!800619 () Bool)

(assert (=> b!1202851 (=> (not res!800619) (not e!683069))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202851 (= res!800619 (validKeyInArray!0 k!934))))

(declare-fun b!1202852 () Bool)

(declare-fun e!683061 () Bool)

(assert (=> b!1202852 (= e!683074 e!683061)))

(declare-fun res!800627 () Bool)

(assert (=> b!1202852 (=> res!800627 e!683061)))

(assert (=> b!1202852 (= res!800627 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45921)

(declare-fun lt!545201 () ListLongMap!17797)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!545204 () array!77942)

(declare-fun minValue!944 () V!45921)

(declare-fun getCurrentListMapNoExtraKeys!5325 (array!77940 array!77942 (_ BitVec 32) (_ BitVec 32) V!45921 V!45921 (_ BitVec 32) Int) ListLongMap!17797)

(assert (=> b!1202852 (= lt!545201 (getCurrentListMapNoExtraKeys!5325 lt!545212 lt!545204 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3248 (Int (_ BitVec 64)) V!45921)

(assert (=> b!1202852 (= lt!545204 (array!77943 (store (arr!37612 _values!996) i!673 (ValueCellFull!14588 (dynLambda!3248 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38149 _values!996)))))

(declare-fun lt!545209 () ListLongMap!17797)

(assert (=> b!1202852 (= lt!545209 (getCurrentListMapNoExtraKeys!5325 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun c!117691 () Bool)

(declare-fun call!57898 () ListLongMap!17797)

(declare-fun call!57893 () Bool)

(declare-fun lt!545199 () ListLongMap!17797)

(declare-fun bm!57889 () Bool)

(declare-fun contains!6912 (ListLongMap!17797 (_ BitVec 64)) Bool)

(assert (=> bm!57889 (= call!57893 (contains!6912 (ite c!117691 lt!545199 call!57898) k!934))))

(declare-fun bm!57890 () Bool)

(declare-fun call!57891 () ListLongMap!17797)

(assert (=> bm!57890 (= call!57898 call!57891)))

(declare-fun b!1202853 () Bool)

(declare-fun lt!545200 () Unit!39800)

(assert (=> b!1202853 (= e!683067 lt!545200)))

(assert (=> b!1202853 (= lt!545200 call!57897)))

(declare-fun call!57894 () Bool)

(assert (=> b!1202853 call!57894))

(declare-fun bm!57891 () Bool)

(assert (=> bm!57891 (= call!57896 (getCurrentListMapNoExtraKeys!5325 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202854 () Bool)

(declare-fun res!800629 () Bool)

(assert (=> b!1202854 (=> (not res!800629) (not e!683069))))

(assert (=> b!1202854 (= res!800629 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38148 _keys!1208))))))

(declare-fun b!1202855 () Bool)

(declare-fun res!800630 () Bool)

(assert (=> b!1202855 (=> (not res!800630) (not e!683069))))

(assert (=> b!1202855 (= res!800630 (= (select (arr!37611 _keys!1208) i!673) k!934))))

(declare-fun b!1202856 () Bool)

(declare-fun res!800626 () Bool)

(assert (=> b!1202856 (=> (not res!800626) (not e!683069))))

(assert (=> b!1202856 (= res!800626 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26642))))

(declare-fun b!1202857 () Bool)

(declare-fun e!683062 () Bool)

(assert (=> b!1202857 (= e!683062 tp_is_empty!30595)))

(declare-fun b!1202858 () Bool)

(declare-fun e!683073 () Bool)

(assert (=> b!1202858 (= e!683073 true)))

(declare-fun lt!545211 () Unit!39800)

(assert (=> b!1202858 (= lt!545211 e!683070)))

(assert (=> b!1202858 (= c!117691 (and (not lt!545202) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202858 (= lt!545202 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!57892 () Bool)

(assert (=> bm!57892 (= call!57894 call!57893)))

(declare-fun bm!57893 () Bool)

(declare-fun lt!545210 () ListLongMap!17797)

(declare-fun addStillContains!1013 (ListLongMap!17797 (_ BitVec 64) V!45921 (_ BitVec 64)) Unit!39800)

(assert (=> bm!57893 (= call!57895 (addStillContains!1013 lt!545210 (ite (or c!117691 c!117693) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117691 c!117693) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1202859 () Bool)

(declare-fun -!1830 (ListLongMap!17797 (_ BitVec 64)) ListLongMap!17797)

(assert (=> b!1202859 (= e!683068 (= call!57892 (-!1830 call!57896 k!934)))))

(declare-fun b!1202860 () Bool)

(declare-fun e!683064 () Bool)

(assert (=> b!1202860 (= e!683061 e!683064)))

(declare-fun res!800621 () Bool)

(assert (=> b!1202860 (=> res!800621 e!683064)))

(assert (=> b!1202860 (= res!800621 (not (= (select (arr!37611 _keys!1208) from!1455) k!934)))))

(assert (=> b!1202860 e!683068))

(declare-fun c!117694 () Bool)

(assert (=> b!1202860 (= c!117694 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!545207 () Unit!39800)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1035 (array!77940 array!77942 (_ BitVec 32) (_ BitVec 32) V!45921 V!45921 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39800)

(assert (=> b!1202860 (= lt!545207 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1035 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202861 () Bool)

(declare-fun res!800622 () Bool)

(assert (=> b!1202861 (=> (not res!800622) (not e!683069))))

(assert (=> b!1202861 (= res!800622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!57894 () Bool)

(assert (=> bm!57894 (= call!57892 (getCurrentListMapNoExtraKeys!5325 lt!545212 lt!545204 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202862 () Bool)

(declare-fun res!800624 () Bool)

(assert (=> b!1202862 (=> (not res!800624) (not e!683069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202862 (= res!800624 (validMask!0 mask!1564))))

(declare-fun b!1202863 () Bool)

(declare-fun res!800618 () Bool)

(assert (=> b!1202863 (=> (not res!800618) (not e!683069))))

(assert (=> b!1202863 (= res!800618 (and (= (size!38149 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38148 _keys!1208) (size!38149 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47735 () Bool)

(declare-fun mapRes!47735 () Bool)

(assert (=> mapIsEmpty!47735 mapRes!47735))

(declare-fun b!1202864 () Bool)

(declare-fun lt!545203 () Unit!39800)

(assert (=> b!1202864 (= e!683070 lt!545203)))

(declare-fun lt!545205 () Unit!39800)

(assert (=> b!1202864 (= lt!545205 call!57895)))

(declare-fun +!3949 (ListLongMap!17797 tuple2!19816) ListLongMap!17797)

(assert (=> b!1202864 (= lt!545199 (+!3949 lt!545210 (tuple2!19817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1202864 call!57893))

(assert (=> b!1202864 (= lt!545203 (addStillContains!1013 lt!545199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1202864 (contains!6912 call!57891 k!934)))

(declare-fun b!1202865 () Bool)

(assert (=> b!1202865 (= e!683064 e!683073)))

(declare-fun res!800628 () Bool)

(assert (=> b!1202865 (=> res!800628 e!683073)))

(assert (=> b!1202865 (= res!800628 (not (contains!6912 lt!545210 k!934)))))

(assert (=> b!1202865 (= lt!545210 (getCurrentListMapNoExtraKeys!5325 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202866 () Bool)

(declare-fun Unit!39802 () Unit!39800)

(assert (=> b!1202866 (= e!683067 Unit!39802)))

(declare-fun b!1202867 () Bool)

(assert (=> b!1202867 (= e!683066 (and e!683071 mapRes!47735))))

(declare-fun condMapEmpty!47735 () Bool)

(declare-fun mapDefault!47735 () ValueCell!14588)

