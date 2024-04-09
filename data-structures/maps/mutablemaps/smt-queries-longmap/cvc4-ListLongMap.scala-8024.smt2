; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99024 () Bool)

(assert start!99024)

(declare-fun b_free!24593 () Bool)

(declare-fun b_next!24593 () Bool)

(assert (=> start!99024 (= b_free!24593 (not b_next!24593))))

(declare-fun tp!86490 () Bool)

(declare-fun b_and!40049 () Bool)

(assert (=> start!99024 (= tp!86490 b_and!40049)))

(declare-fun res!771065 () Bool)

(declare-fun e!660919 () Bool)

(assert (=> start!99024 (=> (not res!771065) (not e!660919))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75036 0))(
  ( (array!75037 (arr!36165 (Array (_ BitVec 32) (_ BitVec 64))) (size!36702 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75036)

(assert (=> start!99024 (= res!771065 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36702 _keys!1208))))))

(assert (=> start!99024 e!660919))

(declare-fun tp_is_empty!29123 () Bool)

(assert (=> start!99024 tp_is_empty!29123))

(declare-fun array_inv!27544 (array!75036) Bool)

(assert (=> start!99024 (array_inv!27544 _keys!1208)))

(assert (=> start!99024 true))

(assert (=> start!99024 tp!86490))

(declare-datatypes ((V!43957 0))(
  ( (V!43958 (val!14618 Int)) )
))
(declare-datatypes ((ValueCell!13852 0))(
  ( (ValueCellFull!13852 (v!17256 V!43957)) (EmptyCell!13852) )
))
(declare-datatypes ((array!75038 0))(
  ( (array!75039 (arr!36166 (Array (_ BitVec 32) ValueCell!13852)) (size!36703 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75038)

(declare-fun e!660918 () Bool)

(declare-fun array_inv!27545 (array!75038) Bool)

(assert (=> start!99024 (and (array_inv!27545 _values!996) e!660918)))

(declare-fun b!1162226 () Bool)

(declare-fun e!660912 () Bool)

(declare-fun e!660915 () Bool)

(assert (=> b!1162226 (= e!660912 (not e!660915))))

(declare-fun res!771062 () Bool)

(assert (=> b!1162226 (=> res!771062 e!660915)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162226 (= res!771062 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162226 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38238 0))(
  ( (Unit!38239) )
))
(declare-fun lt!523249 () Unit!38238)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75036 (_ BitVec 64) (_ BitVec 32)) Unit!38238)

(assert (=> b!1162226 (= lt!523249 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1162227 () Bool)

(declare-fun e!660913 () Unit!38238)

(declare-fun e!660910 () Unit!38238)

(assert (=> b!1162227 (= e!660913 e!660910)))

(declare-fun c!116143 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!523256 () Bool)

(assert (=> b!1162227 (= c!116143 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523256))))

(declare-fun b!1162228 () Bool)

(declare-fun res!771063 () Bool)

(assert (=> b!1162228 (=> (not res!771063) (not e!660919))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75036 (_ BitVec 32)) Bool)

(assert (=> b!1162228 (= res!771063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun zeroValue!944 () V!43957)

(declare-fun b!1162229 () Bool)

(declare-fun lt!523257 () array!75036)

(declare-fun e!660923 () Bool)

(declare-datatypes ((tuple2!18706 0))(
  ( (tuple2!18707 (_1!9363 (_ BitVec 64)) (_2!9363 V!43957)) )
))
(declare-datatypes ((List!25482 0))(
  ( (Nil!25479) (Cons!25478 (h!26687 tuple2!18706) (t!37074 List!25482)) )
))
(declare-datatypes ((ListLongMap!16687 0))(
  ( (ListLongMap!16688 (toList!8359 List!25482)) )
))
(declare-fun lt!523248 () ListLongMap!16687)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!523259 () array!75038)

(declare-fun minValue!944 () V!43957)

(declare-fun getCurrentListMapNoExtraKeys!4793 (array!75036 array!75038 (_ BitVec 32) (_ BitVec 32) V!43957 V!43957 (_ BitVec 32) Int) ListLongMap!16687)

(assert (=> b!1162229 (= e!660923 (= lt!523248 (getCurrentListMapNoExtraKeys!4793 lt!523257 lt!523259 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162230 () Bool)

(declare-fun res!771064 () Bool)

(assert (=> b!1162230 (=> (not res!771064) (not e!660919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162230 (= res!771064 (validMask!0 mask!1564))))

(declare-fun b!1162231 () Bool)

(declare-fun res!771055 () Bool)

(assert (=> b!1162231 (=> (not res!771055) (not e!660919))))

(declare-datatypes ((List!25483 0))(
  ( (Nil!25480) (Cons!25479 (h!26688 (_ BitVec 64)) (t!37075 List!25483)) )
))
(declare-fun arrayNoDuplicates!0 (array!75036 (_ BitVec 32) List!25483) Bool)

(assert (=> b!1162231 (= res!771055 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25480))))

(declare-fun b!1162232 () Bool)

(declare-fun lt!523253 () ListLongMap!16687)

(declare-fun contains!6837 (ListLongMap!16687 (_ BitVec 64)) Bool)

(declare-fun +!3680 (ListLongMap!16687 tuple2!18706) ListLongMap!16687)

(assert (=> b!1162232 (contains!6837 (+!3680 lt!523253 (tuple2!18707 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!523260 () Unit!38238)

(declare-fun addStillContains!978 (ListLongMap!16687 (_ BitVec 64) V!43957 (_ BitVec 64)) Unit!38238)

(assert (=> b!1162232 (= lt!523260 (addStillContains!978 lt!523253 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!56664 () Bool)

(assert (=> b!1162232 call!56664))

(declare-fun call!56657 () ListLongMap!16687)

(assert (=> b!1162232 (= lt!523253 call!56657)))

(declare-fun lt!523264 () Unit!38238)

(declare-fun call!56661 () Unit!38238)

(assert (=> b!1162232 (= lt!523264 call!56661)))

(declare-fun e!660916 () Unit!38238)

(assert (=> b!1162232 (= e!660916 lt!523260)))

(declare-fun b!1162233 () Bool)

(declare-fun res!771057 () Bool)

(assert (=> b!1162233 (=> (not res!771057) (not e!660919))))

(assert (=> b!1162233 (= res!771057 (and (= (size!36703 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36702 _keys!1208) (size!36703 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162234 () Bool)

(declare-fun e!660917 () Bool)

(assert (=> b!1162234 (= e!660917 tp_is_empty!29123)))

(declare-fun b!1162235 () Bool)

(declare-fun e!660911 () Bool)

(assert (=> b!1162235 (= e!660911 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162236 () Bool)

(declare-fun e!660921 () Unit!38238)

(declare-fun Unit!38240 () Unit!38238)

(assert (=> b!1162236 (= e!660921 Unit!38240)))

(declare-fun bm!56654 () Bool)

(declare-fun call!56662 () ListLongMap!16687)

(assert (=> bm!56654 (= call!56662 call!56657)))

(declare-fun b!1162237 () Bool)

(declare-fun e!660908 () Bool)

(declare-fun e!660920 () Bool)

(assert (=> b!1162237 (= e!660908 e!660920)))

(declare-fun res!771066 () Bool)

(assert (=> b!1162237 (=> res!771066 e!660920)))

(assert (=> b!1162237 (= res!771066 (not (= (select (arr!36165 _keys!1208) from!1455) k!934)))))

(declare-fun e!660914 () Bool)

(assert (=> b!1162237 e!660914))

(declare-fun c!116145 () Bool)

(assert (=> b!1162237 (= c!116145 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523258 () Unit!38238)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!649 (array!75036 array!75038 (_ BitVec 32) (_ BitVec 32) V!43957 V!43957 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38238)

(assert (=> b!1162237 (= lt!523258 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!649 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162238 () Bool)

(declare-fun call!56659 () Bool)

(assert (=> b!1162238 call!56659))

(declare-fun lt!523255 () Unit!38238)

(declare-fun call!56660 () Unit!38238)

(assert (=> b!1162238 (= lt!523255 call!56660)))

(assert (=> b!1162238 (= e!660910 lt!523255)))

(declare-fun b!1162239 () Bool)

(assert (=> b!1162239 (= e!660919 e!660912)))

(declare-fun res!771058 () Bool)

(assert (=> b!1162239 (=> (not res!771058) (not e!660912))))

(assert (=> b!1162239 (= res!771058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523257 mask!1564))))

(assert (=> b!1162239 (= lt!523257 (array!75037 (store (arr!36165 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36702 _keys!1208)))))

(declare-fun b!1162240 () Bool)

(declare-fun e!660924 () Bool)

(declare-fun mapRes!45509 () Bool)

(assert (=> b!1162240 (= e!660918 (and e!660924 mapRes!45509))))

(declare-fun condMapEmpty!45509 () Bool)

(declare-fun mapDefault!45509 () ValueCell!13852)

