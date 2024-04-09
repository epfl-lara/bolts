; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99754 () Bool)

(assert start!99754)

(declare-fun b_free!25297 () Bool)

(declare-fun b_next!25297 () Bool)

(assert (=> start!99754 (= b_free!25297 (not b_next!25297))))

(declare-fun tp!88606 () Bool)

(declare-fun b_and!41475 () Bool)

(assert (=> start!99754 (= tp!88606 b_and!41475)))

(declare-fun b!1183429 () Bool)

(declare-fun e!672889 () Bool)

(declare-fun e!672879 () Bool)

(assert (=> b!1183429 (= e!672889 e!672879)))

(declare-fun res!786634 () Bool)

(assert (=> b!1183429 (=> res!786634 e!672879)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183429 (= res!786634 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44897 0))(
  ( (V!44898 (val!14970 Int)) )
))
(declare-fun zeroValue!944 () V!44897)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14204 0))(
  ( (ValueCellFull!14204 (v!17609 V!44897)) (EmptyCell!14204) )
))
(declare-datatypes ((array!76422 0))(
  ( (array!76423 (arr!36857 (Array (_ BitVec 32) ValueCell!14204)) (size!37394 (_ BitVec 32))) )
))
(declare-fun lt!536176 () array!76422)

(declare-datatypes ((tuple2!19308 0))(
  ( (tuple2!19309 (_1!9664 (_ BitVec 64)) (_2!9664 V!44897)) )
))
(declare-datatypes ((List!26071 0))(
  ( (Nil!26068) (Cons!26067 (h!27276 tuple2!19308) (t!38367 List!26071)) )
))
(declare-datatypes ((ListLongMap!17289 0))(
  ( (ListLongMap!17290 (toList!8660 List!26071)) )
))
(declare-fun lt!536171 () ListLongMap!17289)

(declare-datatypes ((array!76424 0))(
  ( (array!76425 (arr!36858 (Array (_ BitVec 32) (_ BitVec 64))) (size!37395 (_ BitVec 32))) )
))
(declare-fun lt!536166 () array!76424)

(declare-fun minValue!944 () V!44897)

(declare-fun getCurrentListMapNoExtraKeys!5082 (array!76424 array!76422 (_ BitVec 32) (_ BitVec 32) V!44897 V!44897 (_ BitVec 32) Int) ListLongMap!17289)

(assert (=> b!1183429 (= lt!536171 (getCurrentListMapNoExtraKeys!5082 lt!536166 lt!536176 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76422)

(declare-fun lt!536169 () V!44897)

(assert (=> b!1183429 (= lt!536176 (array!76423 (store (arr!36857 _values!996) i!673 (ValueCellFull!14204 lt!536169)) (size!37394 _values!996)))))

(declare-fun dynLambda!3049 (Int (_ BitVec 64)) V!44897)

(assert (=> b!1183429 (= lt!536169 (dynLambda!3049 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76424)

(declare-fun lt!536170 () ListLongMap!17289)

(assert (=> b!1183429 (= lt!536170 (getCurrentListMapNoExtraKeys!5082 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183430 () Bool)

(declare-fun e!672878 () Bool)

(assert (=> b!1183430 (= e!672878 (not e!672889))))

(declare-fun res!786640 () Bool)

(assert (=> b!1183430 (=> res!786640 e!672889)))

(assert (=> b!1183430 (= res!786640 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183430 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39093 0))(
  ( (Unit!39094) )
))
(declare-fun lt!536178 () Unit!39093)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76424 (_ BitVec 64) (_ BitVec 32)) Unit!39093)

(assert (=> b!1183430 (= lt!536178 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183431 () Bool)

(declare-fun e!672883 () Bool)

(assert (=> b!1183431 (= e!672883 true)))

(declare-fun lt!536179 () ListLongMap!17289)

(declare-fun lt!536175 () ListLongMap!17289)

(declare-fun -!1648 (ListLongMap!17289 (_ BitVec 64)) ListLongMap!17289)

(assert (=> b!1183431 (= (-!1648 lt!536179 k!934) lt!536175)))

(declare-fun lt!536163 () V!44897)

(declare-fun lt!536172 () Unit!39093)

(declare-fun lt!536167 () ListLongMap!17289)

(declare-fun addRemoveCommutativeForDiffKeys!166 (ListLongMap!17289 (_ BitVec 64) V!44897 (_ BitVec 64)) Unit!39093)

(assert (=> b!1183431 (= lt!536172 (addRemoveCommutativeForDiffKeys!166 lt!536167 (select (arr!36858 _keys!1208) from!1455) lt!536163 k!934))))

(declare-fun lt!536177 () ListLongMap!17289)

(declare-fun lt!536181 () ListLongMap!17289)

(assert (=> b!1183431 (and (= lt!536170 lt!536179) (= lt!536177 lt!536181))))

(declare-fun lt!536173 () tuple2!19308)

(declare-fun +!3876 (ListLongMap!17289 tuple2!19308) ListLongMap!17289)

(assert (=> b!1183431 (= lt!536179 (+!3876 lt!536167 lt!536173))))

(assert (=> b!1183431 (not (= (select (arr!36858 _keys!1208) from!1455) k!934))))

(declare-fun lt!536164 () Unit!39093)

(declare-fun e!672886 () Unit!39093)

(assert (=> b!1183431 (= lt!536164 e!672886)))

(declare-fun c!117017 () Bool)

(assert (=> b!1183431 (= c!117017 (= (select (arr!36858 _keys!1208) from!1455) k!934))))

(declare-fun e!672882 () Bool)

(assert (=> b!1183431 e!672882))

(declare-fun res!786639 () Bool)

(assert (=> b!1183431 (=> (not res!786639) (not e!672882))))

(assert (=> b!1183431 (= res!786639 (= lt!536171 lt!536175))))

(assert (=> b!1183431 (= lt!536175 (+!3876 lt!536177 lt!536173))))

(assert (=> b!1183431 (= lt!536173 (tuple2!19309 (select (arr!36858 _keys!1208) from!1455) lt!536163))))

(declare-fun get!18898 (ValueCell!14204 V!44897) V!44897)

(assert (=> b!1183431 (= lt!536163 (get!18898 (select (arr!36857 _values!996) from!1455) lt!536169))))

(declare-fun b!1183432 () Bool)

(declare-fun e!672881 () Bool)

(assert (=> b!1183432 (= e!672881 e!672878)))

(declare-fun res!786633 () Bool)

(assert (=> b!1183432 (=> (not res!786633) (not e!672878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76424 (_ BitVec 32)) Bool)

(assert (=> b!1183432 (= res!786633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536166 mask!1564))))

(assert (=> b!1183432 (= lt!536166 (array!76425 (store (arr!36858 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37395 _keys!1208)))))

(declare-fun b!1183433 () Bool)

(declare-fun e!672885 () Bool)

(declare-fun tp_is_empty!29827 () Bool)

(assert (=> b!1183433 (= e!672885 tp_is_empty!29827)))

(declare-fun b!1183434 () Bool)

(declare-fun res!786638 () Bool)

(assert (=> b!1183434 (=> (not res!786638) (not e!672881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183434 (= res!786638 (validKeyInArray!0 k!934))))

(declare-fun b!1183435 () Bool)

(declare-fun Unit!39095 () Unit!39093)

(assert (=> b!1183435 (= e!672886 Unit!39095)))

(declare-fun e!672888 () Bool)

(declare-fun b!1183436 () Bool)

(assert (=> b!1183436 (= e!672888 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183437 () Bool)

(declare-fun Unit!39096 () Unit!39093)

(assert (=> b!1183437 (= e!672886 Unit!39096)))

(declare-fun lt!536174 () Unit!39093)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76424 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39093)

(assert (=> b!1183437 (= lt!536174 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183437 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536165 () Unit!39093)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76424 (_ BitVec 32) (_ BitVec 32)) Unit!39093)

(assert (=> b!1183437 (= lt!536165 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26072 0))(
  ( (Nil!26069) (Cons!26068 (h!27277 (_ BitVec 64)) (t!38368 List!26072)) )
))
(declare-fun arrayNoDuplicates!0 (array!76424 (_ BitVec 32) List!26072) Bool)

(assert (=> b!1183437 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26069)))

(declare-fun lt!536180 () Unit!39093)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76424 (_ BitVec 64) (_ BitVec 32) List!26072) Unit!39093)

(assert (=> b!1183437 (= lt!536180 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26069))))

(assert (=> b!1183437 false))

(declare-fun res!786642 () Bool)

(assert (=> start!99754 (=> (not res!786642) (not e!672881))))

(assert (=> start!99754 (= res!786642 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37395 _keys!1208))))))

(assert (=> start!99754 e!672881))

(assert (=> start!99754 tp_is_empty!29827))

(declare-fun array_inv!28014 (array!76424) Bool)

(assert (=> start!99754 (array_inv!28014 _keys!1208)))

(assert (=> start!99754 true))

(assert (=> start!99754 tp!88606))

(declare-fun e!672880 () Bool)

(declare-fun array_inv!28015 (array!76422) Bool)

(assert (=> start!99754 (and (array_inv!28015 _values!996) e!672880)))

(declare-fun b!1183438 () Bool)

(declare-fun res!786629 () Bool)

(assert (=> b!1183438 (=> (not res!786629) (not e!672881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183438 (= res!786629 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46568 () Bool)

(declare-fun mapRes!46568 () Bool)

(assert (=> mapIsEmpty!46568 mapRes!46568))

(declare-fun b!1183439 () Bool)

(declare-fun res!786643 () Bool)

(assert (=> b!1183439 (=> (not res!786643) (not e!672881))))

(assert (=> b!1183439 (= res!786643 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26069))))

(declare-fun b!1183440 () Bool)

(declare-fun res!786637 () Bool)

(assert (=> b!1183440 (=> (not res!786637) (not e!672881))))

(assert (=> b!1183440 (= res!786637 (and (= (size!37394 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37395 _keys!1208) (size!37394 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183441 () Bool)

(assert (=> b!1183441 (= e!672880 (and e!672885 mapRes!46568))))

(declare-fun condMapEmpty!46568 () Bool)

(declare-fun mapDefault!46568 () ValueCell!14204)

