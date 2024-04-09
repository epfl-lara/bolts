; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99326 () Bool)

(assert start!99326)

(declare-fun b_free!24869 () Bool)

(declare-fun b_next!24869 () Bool)

(assert (=> start!99326 (= b_free!24869 (not b_next!24869))))

(declare-fun tp!87321 () Bool)

(declare-fun b_and!40619 () Bool)

(assert (=> start!99326 (= tp!87321 b_and!40619)))

(declare-fun mapNonEmpty!45926 () Bool)

(declare-fun mapRes!45926 () Bool)

(declare-fun tp!87322 () Bool)

(declare-fun e!664858 () Bool)

(assert (=> mapNonEmpty!45926 (= mapRes!45926 (and tp!87322 e!664858))))

(declare-datatypes ((V!44325 0))(
  ( (V!44326 (val!14756 Int)) )
))
(declare-datatypes ((ValueCell!13990 0))(
  ( (ValueCellFull!13990 (v!17395 V!44325)) (EmptyCell!13990) )
))
(declare-fun mapRest!45926 () (Array (_ BitVec 32) ValueCell!13990))

(declare-fun mapKey!45926 () (_ BitVec 32))

(declare-fun mapValue!45926 () ValueCell!13990)

(declare-datatypes ((array!75574 0))(
  ( (array!75575 (arr!36433 (Array (_ BitVec 32) ValueCell!13990)) (size!36970 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75574)

(assert (=> mapNonEmpty!45926 (= (arr!36433 _values!996) (store mapRest!45926 mapKey!45926 mapValue!45926))))

(declare-fun b!1169722 () Bool)

(declare-fun res!776295 () Bool)

(declare-fun e!664861 () Bool)

(assert (=> b!1169722 (=> (not res!776295) (not e!664861))))

(declare-datatypes ((array!75576 0))(
  ( (array!75577 (arr!36434 (Array (_ BitVec 32) (_ BitVec 64))) (size!36971 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75576)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1169722 (= res!776295 (= (select (arr!36434 _keys!1208) i!673) k!934))))

(declare-fun b!1169723 () Bool)

(declare-fun e!664854 () Bool)

(declare-fun e!664851 () Bool)

(assert (=> b!1169723 (= e!664854 e!664851)))

(declare-fun res!776288 () Bool)

(assert (=> b!1169723 (=> res!776288 e!664851)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169723 (= res!776288 (not (validKeyInArray!0 (select (arr!36434 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18928 0))(
  ( (tuple2!18929 (_1!9474 (_ BitVec 64)) (_2!9474 V!44325)) )
))
(declare-datatypes ((List!25700 0))(
  ( (Nil!25697) (Cons!25696 (h!26905 tuple2!18928) (t!37568 List!25700)) )
))
(declare-datatypes ((ListLongMap!16909 0))(
  ( (ListLongMap!16910 (toList!8470 List!25700)) )
))
(declare-fun lt!526728 () ListLongMap!16909)

(declare-fun lt!526726 () ListLongMap!16909)

(assert (=> b!1169723 (= lt!526728 lt!526726)))

(declare-fun lt!526724 () ListLongMap!16909)

(declare-fun -!1493 (ListLongMap!16909 (_ BitVec 64)) ListLongMap!16909)

(assert (=> b!1169723 (= lt!526726 (-!1493 lt!526724 k!934))))

(declare-fun zeroValue!944 () V!44325)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!526719 () array!75576)

(declare-fun lt!526720 () array!75574)

(declare-fun minValue!944 () V!44325)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4903 (array!75576 array!75574 (_ BitVec 32) (_ BitVec 32) V!44325 V!44325 (_ BitVec 32) Int) ListLongMap!16909)

(assert (=> b!1169723 (= lt!526728 (getCurrentListMapNoExtraKeys!4903 lt!526719 lt!526720 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169723 (= lt!526724 (getCurrentListMapNoExtraKeys!4903 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38484 0))(
  ( (Unit!38485) )
))
(declare-fun lt!526725 () Unit!38484)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!717 (array!75576 array!75574 (_ BitVec 32) (_ BitVec 32) V!44325 V!44325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38484)

(assert (=> b!1169723 (= lt!526725 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!717 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169724 () Bool)

(declare-fun res!776297 () Bool)

(assert (=> b!1169724 (=> (not res!776297) (not e!664861))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75576 (_ BitVec 32)) Bool)

(assert (=> b!1169724 (= res!776297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169725 () Bool)

(declare-fun e!664853 () Bool)

(declare-fun e!664855 () Bool)

(assert (=> b!1169725 (= e!664853 e!664855)))

(declare-fun res!776294 () Bool)

(assert (=> b!1169725 (=> res!776294 e!664855)))

(assert (=> b!1169725 (= res!776294 (not (= (select (arr!36434 _keys!1208) from!1455) k!934)))))

(declare-fun b!1169726 () Bool)

(declare-fun e!664860 () Bool)

(assert (=> b!1169726 (= e!664860 e!664854)))

(declare-fun res!776302 () Bool)

(assert (=> b!1169726 (=> res!776302 e!664854)))

(assert (=> b!1169726 (= res!776302 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!526721 () ListLongMap!16909)

(assert (=> b!1169726 (= lt!526721 (getCurrentListMapNoExtraKeys!4903 lt!526719 lt!526720 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526723 () V!44325)

(assert (=> b!1169726 (= lt!526720 (array!75575 (store (arr!36433 _values!996) i!673 (ValueCellFull!13990 lt!526723)) (size!36970 _values!996)))))

(declare-fun dynLambda!2893 (Int (_ BitVec 64)) V!44325)

(assert (=> b!1169726 (= lt!526723 (dynLambda!2893 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526722 () ListLongMap!16909)

(assert (=> b!1169726 (= lt!526722 (getCurrentListMapNoExtraKeys!4903 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169727 () Bool)

(declare-fun res!776296 () Bool)

(assert (=> b!1169727 (=> (not res!776296) (not e!664861))))

(assert (=> b!1169727 (= res!776296 (validKeyInArray!0 k!934))))

(declare-fun b!1169728 () Bool)

(declare-fun res!776301 () Bool)

(assert (=> b!1169728 (=> (not res!776301) (not e!664861))))

(declare-datatypes ((List!25701 0))(
  ( (Nil!25698) (Cons!25697 (h!26906 (_ BitVec 64)) (t!37569 List!25701)) )
))
(declare-fun arrayNoDuplicates!0 (array!75576 (_ BitVec 32) List!25701) Bool)

(assert (=> b!1169728 (= res!776301 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25698))))

(declare-fun b!1169729 () Bool)

(declare-fun e!664857 () Bool)

(assert (=> b!1169729 (= e!664861 e!664857)))

(declare-fun res!776299 () Bool)

(assert (=> b!1169729 (=> (not res!776299) (not e!664857))))

(assert (=> b!1169729 (= res!776299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526719 mask!1564))))

(assert (=> b!1169729 (= lt!526719 (array!75577 (store (arr!36434 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36971 _keys!1208)))))

(declare-fun b!1169730 () Bool)

(declare-fun tp_is_empty!29399 () Bool)

(assert (=> b!1169730 (= e!664858 tp_is_empty!29399)))

(declare-fun b!1169731 () Bool)

(declare-fun res!776292 () Bool)

(assert (=> b!1169731 (=> (not res!776292) (not e!664861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1169731 (= res!776292 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45926 () Bool)

(assert (=> mapIsEmpty!45926 mapRes!45926))

(declare-fun b!1169732 () Bool)

(declare-fun arrayContainsKey!0 (array!75576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169732 (= e!664855 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169733 () Bool)

(assert (=> b!1169733 (= e!664857 (not e!664860))))

(declare-fun res!776293 () Bool)

(assert (=> b!1169733 (=> res!776293 e!664860)))

(assert (=> b!1169733 (= res!776293 (bvsgt from!1455 i!673))))

(assert (=> b!1169733 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526727 () Unit!38484)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75576 (_ BitVec 64) (_ BitVec 32)) Unit!38484)

(assert (=> b!1169733 (= lt!526727 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!776291 () Bool)

(assert (=> start!99326 (=> (not res!776291) (not e!664861))))

(assert (=> start!99326 (= res!776291 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36971 _keys!1208))))))

(assert (=> start!99326 e!664861))

(assert (=> start!99326 tp_is_empty!29399))

(declare-fun array_inv!27728 (array!75576) Bool)

(assert (=> start!99326 (array_inv!27728 _keys!1208)))

(assert (=> start!99326 true))

(assert (=> start!99326 tp!87321))

(declare-fun e!664852 () Bool)

(declare-fun array_inv!27729 (array!75574) Bool)

(assert (=> start!99326 (and (array_inv!27729 _values!996) e!664852)))

(declare-fun b!1169734 () Bool)

(declare-fun res!776300 () Bool)

(assert (=> b!1169734 (=> (not res!776300) (not e!664861))))

(assert (=> b!1169734 (= res!776300 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36971 _keys!1208))))))

(declare-fun b!1169735 () Bool)

(declare-fun e!664856 () Bool)

(assert (=> b!1169735 (= e!664856 tp_is_empty!29399)))

(declare-fun b!1169736 () Bool)

(declare-fun res!776290 () Bool)

(assert (=> b!1169736 (=> (not res!776290) (not e!664861))))

(assert (=> b!1169736 (= res!776290 (and (= (size!36970 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36971 _keys!1208) (size!36970 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169737 () Bool)

(assert (=> b!1169737 (= e!664852 (and e!664856 mapRes!45926))))

(declare-fun condMapEmpty!45926 () Bool)

(declare-fun mapDefault!45926 () ValueCell!13990)

