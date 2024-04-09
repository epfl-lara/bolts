; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99556 () Bool)

(assert start!99556)

(declare-fun b_free!25099 () Bool)

(declare-fun b_next!25099 () Bool)

(assert (=> start!99556 (= b_free!25099 (not b_next!25099))))

(declare-fun tp!88012 () Bool)

(declare-fun b_and!41079 () Bool)

(assert (=> start!99556 (= tp!88012 b_and!41079)))

(declare-fun b!1176996 () Bool)

(declare-fun e!669120 () Bool)

(declare-fun e!669113 () Bool)

(assert (=> b!1176996 (= e!669120 (not e!669113))))

(declare-fun res!781885 () Bool)

(assert (=> b!1176996 (=> res!781885 e!669113)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176996 (= res!781885 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76034 0))(
  ( (array!76035 (arr!36663 (Array (_ BitVec 32) (_ BitVec 64))) (size!37200 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76034)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176996 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38798 0))(
  ( (Unit!38799) )
))
(declare-fun lt!531348 () Unit!38798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76034 (_ BitVec 64) (_ BitVec 32)) Unit!38798)

(assert (=> b!1176996 (= lt!531348 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176997 () Bool)

(declare-fun e!669112 () Bool)

(declare-fun tp_is_empty!29629 () Bool)

(assert (=> b!1176997 (= e!669112 tp_is_empty!29629)))

(declare-fun b!1176998 () Bool)

(declare-fun e!669110 () Bool)

(declare-fun e!669121 () Bool)

(assert (=> b!1176998 (= e!669110 e!669121)))

(declare-fun res!781890 () Bool)

(assert (=> b!1176998 (=> res!781890 e!669121)))

(assert (=> b!1176998 (= res!781890 (not (= (select (arr!36663 _keys!1208) from!1455) k!934)))))

(declare-fun b!1176999 () Bool)

(declare-fun res!781886 () Bool)

(declare-fun e!669116 () Bool)

(assert (=> b!1176999 (=> (not res!781886) (not e!669116))))

(assert (=> b!1176999 (= res!781886 (= (select (arr!36663 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!44633 0))(
  ( (V!44634 (val!14871 Int)) )
))
(declare-datatypes ((tuple2!19140 0))(
  ( (tuple2!19141 (_1!9580 (_ BitVec 64)) (_2!9580 V!44633)) )
))
(declare-fun lt!531345 () tuple2!19140)

(declare-fun b!1177000 () Bool)

(declare-fun e!669109 () Bool)

(declare-datatypes ((List!25907 0))(
  ( (Nil!25904) (Cons!25903 (h!27112 tuple2!19140) (t!38005 List!25907)) )
))
(declare-datatypes ((ListLongMap!17121 0))(
  ( (ListLongMap!17122 (toList!8576 List!25907)) )
))
(declare-fun lt!531347 () ListLongMap!17121)

(declare-fun lt!531354 () ListLongMap!17121)

(declare-fun +!3799 (ListLongMap!17121 tuple2!19140) ListLongMap!17121)

(assert (=> b!1177000 (= e!669109 (= lt!531347 (+!3799 lt!531354 lt!531345)))))

(declare-fun b!1177001 () Bool)

(declare-fun e!669119 () Bool)

(assert (=> b!1177001 (= e!669113 e!669119)))

(declare-fun res!781888 () Bool)

(assert (=> b!1177001 (=> res!781888 e!669119)))

(assert (=> b!1177001 (= res!781888 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44633)

(declare-fun lt!531353 () ListLongMap!17121)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14105 0))(
  ( (ValueCellFull!14105 (v!17510 V!44633)) (EmptyCell!14105) )
))
(declare-datatypes ((array!76036 0))(
  ( (array!76037 (arr!36664 (Array (_ BitVec 32) ValueCell!14105)) (size!37201 (_ BitVec 32))) )
))
(declare-fun lt!531341 () array!76036)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44633)

(declare-fun lt!531344 () array!76034)

(declare-fun getCurrentListMapNoExtraKeys!5007 (array!76034 array!76036 (_ BitVec 32) (_ BitVec 32) V!44633 V!44633 (_ BitVec 32) Int) ListLongMap!17121)

(assert (=> b!1177001 (= lt!531353 (getCurrentListMapNoExtraKeys!5007 lt!531344 lt!531341 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531352 () V!44633)

(declare-fun _values!996 () array!76036)

(assert (=> b!1177001 (= lt!531341 (array!76037 (store (arr!36664 _values!996) i!673 (ValueCellFull!14105 lt!531352)) (size!37201 _values!996)))))

(declare-fun dynLambda!2983 (Int (_ BitVec 64)) V!44633)

(assert (=> b!1177001 (= lt!531352 (dynLambda!2983 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1177001 (= lt!531347 (getCurrentListMapNoExtraKeys!5007 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46271 () Bool)

(declare-fun mapRes!46271 () Bool)

(declare-fun tp!88011 () Bool)

(declare-fun e!669118 () Bool)

(assert (=> mapNonEmpty!46271 (= mapRes!46271 (and tp!88011 e!669118))))

(declare-fun mapKey!46271 () (_ BitVec 32))

(declare-fun mapRest!46271 () (Array (_ BitVec 32) ValueCell!14105))

(declare-fun mapValue!46271 () ValueCell!14105)

(assert (=> mapNonEmpty!46271 (= (arr!36664 _values!996) (store mapRest!46271 mapKey!46271 mapValue!46271))))

(declare-fun b!1177002 () Bool)

(declare-fun res!781891 () Bool)

(assert (=> b!1177002 (=> (not res!781891) (not e!669116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76034 (_ BitVec 32)) Bool)

(assert (=> b!1177002 (= res!781891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177003 () Bool)

(assert (=> b!1177003 (= e!669118 tp_is_empty!29629)))

(declare-fun b!1177004 () Bool)

(declare-fun res!781881 () Bool)

(assert (=> b!1177004 (=> (not res!781881) (not e!669116))))

(assert (=> b!1177004 (= res!781881 (and (= (size!37201 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37200 _keys!1208) (size!37201 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177005 () Bool)

(assert (=> b!1177005 (= e!669116 e!669120)))

(declare-fun res!781893 () Bool)

(assert (=> b!1177005 (=> (not res!781893) (not e!669120))))

(assert (=> b!1177005 (= res!781893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531344 mask!1564))))

(assert (=> b!1177005 (= lt!531344 (array!76035 (store (arr!36663 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37200 _keys!1208)))))

(declare-fun b!1177006 () Bool)

(declare-fun e!669111 () Bool)

(assert (=> b!1177006 (= e!669119 e!669111)))

(declare-fun res!781894 () Bool)

(assert (=> b!1177006 (=> res!781894 e!669111)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177006 (= res!781894 (not (validKeyInArray!0 (select (arr!36663 _keys!1208) from!1455))))))

(declare-fun lt!531349 () ListLongMap!17121)

(declare-fun lt!531350 () ListLongMap!17121)

(assert (=> b!1177006 (= lt!531349 lt!531350)))

(declare-fun -!1579 (ListLongMap!17121 (_ BitVec 64)) ListLongMap!17121)

(assert (=> b!1177006 (= lt!531350 (-!1579 lt!531354 k!934))))

(assert (=> b!1177006 (= lt!531349 (getCurrentListMapNoExtraKeys!5007 lt!531344 lt!531341 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177006 (= lt!531354 (getCurrentListMapNoExtraKeys!5007 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531340 () Unit!38798)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!803 (array!76034 array!76036 (_ BitVec 32) (_ BitVec 32) V!44633 V!44633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38798)

(assert (=> b!1177006 (= lt!531340 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!803 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177007 () Bool)

(declare-fun e!669114 () Unit!38798)

(declare-fun Unit!38800 () Unit!38798)

(assert (=> b!1177007 (= e!669114 Unit!38800)))

(declare-fun b!1177008 () Bool)

(declare-fun res!781884 () Bool)

(assert (=> b!1177008 (=> (not res!781884) (not e!669116))))

(declare-datatypes ((List!25908 0))(
  ( (Nil!25905) (Cons!25904 (h!27113 (_ BitVec 64)) (t!38006 List!25908)) )
))
(declare-fun arrayNoDuplicates!0 (array!76034 (_ BitVec 32) List!25908) Bool)

(assert (=> b!1177008 (= res!781884 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25905))))

(declare-fun mapIsEmpty!46271 () Bool)

(assert (=> mapIsEmpty!46271 mapRes!46271))

(declare-fun b!1177009 () Bool)

(declare-fun Unit!38801 () Unit!38798)

(assert (=> b!1177009 (= e!669114 Unit!38801)))

(declare-fun lt!531343 () Unit!38798)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76034 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38798)

(assert (=> b!1177009 (= lt!531343 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177009 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531342 () Unit!38798)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76034 (_ BitVec 32) (_ BitVec 32)) Unit!38798)

(assert (=> b!1177009 (= lt!531342 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177009 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25905)))

(declare-fun lt!531351 () Unit!38798)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76034 (_ BitVec 64) (_ BitVec 32) List!25908) Unit!38798)

(assert (=> b!1177009 (= lt!531351 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25905))))

(assert (=> b!1177009 false))

(declare-fun b!1177010 () Bool)

(declare-fun res!781882 () Bool)

(assert (=> b!1177010 (=> (not res!781882) (not e!669120))))

(assert (=> b!1177010 (= res!781882 (arrayNoDuplicates!0 lt!531344 #b00000000000000000000000000000000 Nil!25905))))

(declare-fun b!1177011 () Bool)

(assert (=> b!1177011 (= e!669111 true)))

(assert (=> b!1177011 e!669109))

(declare-fun res!781887 () Bool)

(assert (=> b!1177011 (=> (not res!781887) (not e!669109))))

(assert (=> b!1177011 (= res!781887 (not (= (select (arr!36663 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531346 () Unit!38798)

(assert (=> b!1177011 (= lt!531346 e!669114)))

(declare-fun c!116720 () Bool)

(assert (=> b!1177011 (= c!116720 (= (select (arr!36663 _keys!1208) from!1455) k!934))))

(assert (=> b!1177011 e!669110))

(declare-fun res!781880 () Bool)

(assert (=> b!1177011 (=> (not res!781880) (not e!669110))))

(assert (=> b!1177011 (= res!781880 (= lt!531353 (+!3799 lt!531350 lt!531345)))))

(declare-fun get!18765 (ValueCell!14105 V!44633) V!44633)

(assert (=> b!1177011 (= lt!531345 (tuple2!19141 (select (arr!36663 _keys!1208) from!1455) (get!18765 (select (arr!36664 _values!996) from!1455) lt!531352)))))

(declare-fun b!1177012 () Bool)

(assert (=> b!1177012 (= e!669121 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177013 () Bool)

(declare-fun res!781889 () Bool)

(assert (=> b!1177013 (=> (not res!781889) (not e!669116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177013 (= res!781889 (validMask!0 mask!1564))))

(declare-fun b!1177014 () Bool)

(declare-fun res!781883 () Bool)

(assert (=> b!1177014 (=> (not res!781883) (not e!669116))))

(assert (=> b!1177014 (= res!781883 (validKeyInArray!0 k!934))))

(declare-fun res!781892 () Bool)

(assert (=> start!99556 (=> (not res!781892) (not e!669116))))

(assert (=> start!99556 (= res!781892 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37200 _keys!1208))))))

(assert (=> start!99556 e!669116))

(assert (=> start!99556 tp_is_empty!29629))

(declare-fun array_inv!27888 (array!76034) Bool)

(assert (=> start!99556 (array_inv!27888 _keys!1208)))

(assert (=> start!99556 true))

(assert (=> start!99556 tp!88012))

(declare-fun e!669115 () Bool)

(declare-fun array_inv!27889 (array!76036) Bool)

(assert (=> start!99556 (and (array_inv!27889 _values!996) e!669115)))

(declare-fun b!1177015 () Bool)

(declare-fun res!781879 () Bool)

(assert (=> b!1177015 (=> (not res!781879) (not e!669116))))

(assert (=> b!1177015 (= res!781879 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37200 _keys!1208))))))

(declare-fun b!1177016 () Bool)

(assert (=> b!1177016 (= e!669115 (and e!669112 mapRes!46271))))

(declare-fun condMapEmpty!46271 () Bool)

(declare-fun mapDefault!46271 () ValueCell!14105)

