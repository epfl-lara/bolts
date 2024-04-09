; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99874 () Bool)

(assert start!99874)

(declare-fun b_free!25417 () Bool)

(declare-fun b_next!25417 () Bool)

(assert (=> start!99874 (= b_free!25417 (not b_next!25417))))

(declare-fun tp!88965 () Bool)

(declare-fun b_and!41715 () Bool)

(assert (=> start!99874 (= tp!88965 b_and!41715)))

(declare-fun b!1187149 () Bool)

(declare-fun e!675042 () Bool)

(declare-fun e!675046 () Bool)

(assert (=> b!1187149 (= e!675042 e!675046)))

(declare-fun res!789341 () Bool)

(assert (=> b!1187149 (=> res!789341 e!675046)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1187149 (= res!789341 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45057 0))(
  ( (V!45058 (val!15030 Int)) )
))
(declare-fun zeroValue!944 () V!45057)

(declare-datatypes ((ValueCell!14264 0))(
  ( (ValueCellFull!14264 (v!17669 V!45057)) (EmptyCell!14264) )
))
(declare-datatypes ((array!76662 0))(
  ( (array!76663 (arr!36977 (Array (_ BitVec 32) ValueCell!14264)) (size!37514 (_ BitVec 32))) )
))
(declare-fun lt!539585 () array!76662)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!76664 0))(
  ( (array!76665 (arr!36978 (Array (_ BitVec 32) (_ BitVec 64))) (size!37515 (_ BitVec 32))) )
))
(declare-fun lt!539588 () array!76664)

(declare-fun minValue!944 () V!45057)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19422 0))(
  ( (tuple2!19423 (_1!9721 (_ BitVec 64)) (_2!9721 V!45057)) )
))
(declare-datatypes ((List!26181 0))(
  ( (Nil!26178) (Cons!26177 (h!27386 tuple2!19422) (t!38597 List!26181)) )
))
(declare-datatypes ((ListLongMap!17403 0))(
  ( (ListLongMap!17404 (toList!8717 List!26181)) )
))
(declare-fun lt!539594 () ListLongMap!17403)

(declare-fun getCurrentListMapNoExtraKeys!5132 (array!76664 array!76662 (_ BitVec 32) (_ BitVec 32) V!45057 V!45057 (_ BitVec 32) Int) ListLongMap!17403)

(assert (=> b!1187149 (= lt!539594 (getCurrentListMapNoExtraKeys!5132 lt!539588 lt!539585 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539598 () V!45057)

(declare-fun _values!996 () array!76662)

(assert (=> b!1187149 (= lt!539585 (array!76663 (store (arr!36977 _values!996) i!673 (ValueCellFull!14264 lt!539598)) (size!37514 _values!996)))))

(declare-fun dynLambda!3089 (Int (_ BitVec 64)) V!45057)

(assert (=> b!1187149 (= lt!539598 (dynLambda!3089 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76664)

(declare-fun lt!539599 () ListLongMap!17403)

(assert (=> b!1187149 (= lt!539599 (getCurrentListMapNoExtraKeys!5132 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187150 () Bool)

(declare-fun res!789334 () Bool)

(declare-fun e!675040 () Bool)

(assert (=> b!1187150 (=> (not res!789334) (not e!675040))))

(assert (=> b!1187150 (= res!789334 (and (= (size!37514 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37515 _keys!1208) (size!37514 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187151 () Bool)

(declare-fun e!675039 () Bool)

(assert (=> b!1187151 (= e!675046 e!675039)))

(declare-fun res!789332 () Bool)

(assert (=> b!1187151 (=> res!789332 e!675039)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187151 (= res!789332 (not (validKeyInArray!0 (select (arr!36978 _keys!1208) from!1455))))))

(declare-fun lt!539583 () ListLongMap!17403)

(declare-fun lt!539593 () ListLongMap!17403)

(assert (=> b!1187151 (= lt!539583 lt!539593)))

(declare-fun lt!539587 () ListLongMap!17403)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1702 (ListLongMap!17403 (_ BitVec 64)) ListLongMap!17403)

(assert (=> b!1187151 (= lt!539593 (-!1702 lt!539587 k!934))))

(assert (=> b!1187151 (= lt!539583 (getCurrentListMapNoExtraKeys!5132 lt!539588 lt!539585 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1187151 (= lt!539587 (getCurrentListMapNoExtraKeys!5132 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39291 0))(
  ( (Unit!39292) )
))
(declare-fun lt!539591 () Unit!39291)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!911 (array!76664 array!76662 (_ BitVec 32) (_ BitVec 32) V!45057 V!45057 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39291)

(assert (=> b!1187151 (= lt!539591 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!911 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187152 () Bool)

(declare-fun e!675041 () Unit!39291)

(declare-fun Unit!39293 () Unit!39291)

(assert (=> b!1187152 (= e!675041 Unit!39293)))

(declare-fun b!1187153 () Bool)

(declare-fun res!789331 () Bool)

(assert (=> b!1187153 (=> (not res!789331) (not e!675040))))

(assert (=> b!1187153 (= res!789331 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37515 _keys!1208))))))

(declare-fun b!1187154 () Bool)

(declare-fun res!789329 () Bool)

(assert (=> b!1187154 (=> (not res!789329) (not e!675040))))

(assert (=> b!1187154 (= res!789329 (= (select (arr!36978 _keys!1208) i!673) k!934))))

(declare-fun b!1187155 () Bool)

(assert (=> b!1187155 (= e!675039 true)))

(declare-fun lt!539589 () ListLongMap!17403)

(declare-fun lt!539596 () ListLongMap!17403)

(assert (=> b!1187155 (= (-!1702 lt!539589 k!934) lt!539596)))

(declare-fun lt!539600 () Unit!39291)

(declare-fun lt!539590 () V!45057)

(declare-fun addRemoveCommutativeForDiffKeys!209 (ListLongMap!17403 (_ BitVec 64) V!45057 (_ BitVec 64)) Unit!39291)

(assert (=> b!1187155 (= lt!539600 (addRemoveCommutativeForDiffKeys!209 lt!539587 (select (arr!36978 _keys!1208) from!1455) lt!539590 k!934))))

(assert (=> b!1187155 (and (= lt!539599 lt!539589) (= lt!539593 lt!539583))))

(declare-fun lt!539597 () tuple2!19422)

(declare-fun +!3919 (ListLongMap!17403 tuple2!19422) ListLongMap!17403)

(assert (=> b!1187155 (= lt!539589 (+!3919 lt!539587 lt!539597))))

(assert (=> b!1187155 (not (= (select (arr!36978 _keys!1208) from!1455) k!934))))

(declare-fun lt!539595 () Unit!39291)

(assert (=> b!1187155 (= lt!539595 e!675041)))

(declare-fun c!117197 () Bool)

(assert (=> b!1187155 (= c!117197 (= (select (arr!36978 _keys!1208) from!1455) k!934))))

(declare-fun e!675049 () Bool)

(assert (=> b!1187155 e!675049))

(declare-fun res!789330 () Bool)

(assert (=> b!1187155 (=> (not res!789330) (not e!675049))))

(assert (=> b!1187155 (= res!789330 (= lt!539594 lt!539596))))

(assert (=> b!1187155 (= lt!539596 (+!3919 lt!539593 lt!539597))))

(assert (=> b!1187155 (= lt!539597 (tuple2!19423 (select (arr!36978 _keys!1208) from!1455) lt!539590))))

(declare-fun get!18981 (ValueCell!14264 V!45057) V!45057)

(assert (=> b!1187155 (= lt!539590 (get!18981 (select (arr!36977 _values!996) from!1455) lt!539598))))

(declare-fun mapNonEmpty!46748 () Bool)

(declare-fun mapRes!46748 () Bool)

(declare-fun tp!88966 () Bool)

(declare-fun e!675048 () Bool)

(assert (=> mapNonEmpty!46748 (= mapRes!46748 (and tp!88966 e!675048))))

(declare-fun mapValue!46748 () ValueCell!14264)

(declare-fun mapKey!46748 () (_ BitVec 32))

(declare-fun mapRest!46748 () (Array (_ BitVec 32) ValueCell!14264))

(assert (=> mapNonEmpty!46748 (= (arr!36977 _values!996) (store mapRest!46748 mapKey!46748 mapValue!46748))))

(declare-fun mapIsEmpty!46748 () Bool)

(assert (=> mapIsEmpty!46748 mapRes!46748))

(declare-fun res!789337 () Bool)

(assert (=> start!99874 (=> (not res!789337) (not e!675040))))

(assert (=> start!99874 (= res!789337 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37515 _keys!1208))))))

(assert (=> start!99874 e!675040))

(declare-fun tp_is_empty!29947 () Bool)

(assert (=> start!99874 tp_is_empty!29947))

(declare-fun array_inv!28098 (array!76664) Bool)

(assert (=> start!99874 (array_inv!28098 _keys!1208)))

(assert (=> start!99874 true))

(assert (=> start!99874 tp!88965))

(declare-fun e!675043 () Bool)

(declare-fun array_inv!28099 (array!76662) Bool)

(assert (=> start!99874 (and (array_inv!28099 _values!996) e!675043)))

(declare-fun b!1187156 () Bool)

(declare-fun e!675044 () Bool)

(assert (=> b!1187156 (= e!675040 e!675044)))

(declare-fun res!789333 () Bool)

(assert (=> b!1187156 (=> (not res!789333) (not e!675044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76664 (_ BitVec 32)) Bool)

(assert (=> b!1187156 (= res!789333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539588 mask!1564))))

(assert (=> b!1187156 (= lt!539588 (array!76665 (store (arr!36978 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37515 _keys!1208)))))

(declare-fun b!1187157 () Bool)

(assert (=> b!1187157 (= e!675044 (not e!675042))))

(declare-fun res!789336 () Bool)

(assert (=> b!1187157 (=> res!789336 e!675042)))

(assert (=> b!1187157 (= res!789336 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187157 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539601 () Unit!39291)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76664 (_ BitVec 64) (_ BitVec 32)) Unit!39291)

(assert (=> b!1187157 (= lt!539601 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187158 () Bool)

(declare-fun e!675038 () Bool)

(assert (=> b!1187158 (= e!675043 (and e!675038 mapRes!46748))))

(declare-fun condMapEmpty!46748 () Bool)

(declare-fun mapDefault!46748 () ValueCell!14264)

