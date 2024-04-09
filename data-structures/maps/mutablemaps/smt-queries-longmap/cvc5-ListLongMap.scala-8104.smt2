; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99526 () Bool)

(assert start!99526)

(declare-fun b_free!25069 () Bool)

(declare-fun b_next!25069 () Bool)

(assert (=> start!99526 (= b_free!25069 (not b_next!25069))))

(declare-fun tp!87922 () Bool)

(declare-fun b_and!41019 () Bool)

(assert (=> start!99526 (= tp!87922 b_and!41019)))

(declare-fun res!781163 () Bool)

(declare-fun e!668536 () Bool)

(assert (=> start!99526 (=> (not res!781163) (not e!668536))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75974 0))(
  ( (array!75975 (arr!36633 (Array (_ BitVec 32) (_ BitVec 64))) (size!37170 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75974)

(assert (=> start!99526 (= res!781163 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37170 _keys!1208))))))

(assert (=> start!99526 e!668536))

(declare-fun tp_is_empty!29599 () Bool)

(assert (=> start!99526 tp_is_empty!29599))

(declare-fun array_inv!27864 (array!75974) Bool)

(assert (=> start!99526 (array_inv!27864 _keys!1208)))

(assert (=> start!99526 true))

(assert (=> start!99526 tp!87922))

(declare-datatypes ((V!44593 0))(
  ( (V!44594 (val!14856 Int)) )
))
(declare-datatypes ((ValueCell!14090 0))(
  ( (ValueCellFull!14090 (v!17495 V!44593)) (EmptyCell!14090) )
))
(declare-datatypes ((array!75976 0))(
  ( (array!75977 (arr!36634 (Array (_ BitVec 32) ValueCell!14090)) (size!37171 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75976)

(declare-fun e!668530 () Bool)

(declare-fun array_inv!27865 (array!75976) Bool)

(assert (=> start!99526 (and (array_inv!27865 _values!996) e!668530)))

(declare-fun b!1176021 () Bool)

(declare-fun res!781160 () Bool)

(assert (=> b!1176021 (=> (not res!781160) (not e!668536))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176021 (= res!781160 (validMask!0 mask!1564))))

(declare-fun b!1176022 () Bool)

(declare-fun res!781167 () Bool)

(assert (=> b!1176022 (=> (not res!781167) (not e!668536))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176022 (= res!781167 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37170 _keys!1208))))))

(declare-datatypes ((tuple2!19110 0))(
  ( (tuple2!19111 (_1!9565 (_ BitVec 64)) (_2!9565 V!44593)) )
))
(declare-fun lt!530667 () tuple2!19110)

(declare-fun b!1176023 () Bool)

(declare-datatypes ((List!25877 0))(
  ( (Nil!25874) (Cons!25873 (h!27082 tuple2!19110) (t!37945 List!25877)) )
))
(declare-datatypes ((ListLongMap!17091 0))(
  ( (ListLongMap!17092 (toList!8561 List!25877)) )
))
(declare-fun lt!530674 () ListLongMap!17091)

(declare-fun lt!530671 () ListLongMap!17091)

(declare-fun e!668525 () Bool)

(declare-fun +!3784 (ListLongMap!17091 tuple2!19110) ListLongMap!17091)

(assert (=> b!1176023 (= e!668525 (= lt!530674 (+!3784 lt!530671 lt!530667)))))

(declare-fun b!1176024 () Bool)

(declare-fun res!781171 () Bool)

(assert (=> b!1176024 (=> (not res!781171) (not e!668536))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176024 (= res!781171 (validKeyInArray!0 k!934))))

(declare-fun b!1176025 () Bool)

(declare-fun e!668524 () Bool)

(declare-fun e!668526 () Bool)

(assert (=> b!1176025 (= e!668524 e!668526)))

(declare-fun res!781170 () Bool)

(assert (=> b!1176025 (=> res!781170 e!668526)))

(assert (=> b!1176025 (= res!781170 (not (= (select (arr!36633 _keys!1208) from!1455) k!934)))))

(declare-fun b!1176026 () Bool)

(declare-fun e!668532 () Bool)

(declare-fun e!668531 () Bool)

(assert (=> b!1176026 (= e!668532 e!668531)))

(declare-fun res!781159 () Bool)

(assert (=> b!1176026 (=> res!781159 e!668531)))

(assert (=> b!1176026 (= res!781159 (not (validKeyInArray!0 (select (arr!36633 _keys!1208) from!1455))))))

(declare-fun lt!530665 () ListLongMap!17091)

(declare-fun lt!530675 () ListLongMap!17091)

(assert (=> b!1176026 (= lt!530665 lt!530675)))

(declare-fun -!1567 (ListLongMap!17091 (_ BitVec 64)) ListLongMap!17091)

(assert (=> b!1176026 (= lt!530675 (-!1567 lt!530671 k!934))))

(declare-fun zeroValue!944 () V!44593)

(declare-fun lt!530668 () array!75974)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530673 () array!75976)

(declare-fun minValue!944 () V!44593)

(declare-fun getCurrentListMapNoExtraKeys!4992 (array!75974 array!75976 (_ BitVec 32) (_ BitVec 32) V!44593 V!44593 (_ BitVec 32) Int) ListLongMap!17091)

(assert (=> b!1176026 (= lt!530665 (getCurrentListMapNoExtraKeys!4992 lt!530668 lt!530673 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176026 (= lt!530671 (getCurrentListMapNoExtraKeys!4992 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38744 0))(
  ( (Unit!38745) )
))
(declare-fun lt!530666 () Unit!38744)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!791 (array!75974 array!75976 (_ BitVec 32) (_ BitVec 32) V!44593 V!44593 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38744)

(assert (=> b!1176026 (= lt!530666 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!791 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176027 () Bool)

(declare-fun res!781162 () Bool)

(declare-fun e!668529 () Bool)

(assert (=> b!1176027 (=> (not res!781162) (not e!668529))))

(declare-datatypes ((List!25878 0))(
  ( (Nil!25875) (Cons!25874 (h!27083 (_ BitVec 64)) (t!37946 List!25878)) )
))
(declare-fun arrayNoDuplicates!0 (array!75974 (_ BitVec 32) List!25878) Bool)

(assert (=> b!1176027 (= res!781162 (arrayNoDuplicates!0 lt!530668 #b00000000000000000000000000000000 Nil!25875))))

(declare-fun b!1176028 () Bool)

(declare-fun arrayContainsKey!0 (array!75974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176028 (= e!668526 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176029 () Bool)

(declare-fun e!668527 () Unit!38744)

(declare-fun Unit!38746 () Unit!38744)

(assert (=> b!1176029 (= e!668527 Unit!38746)))

(declare-fun b!1176030 () Bool)

(declare-fun res!781172 () Bool)

(assert (=> b!1176030 (=> (not res!781172) (not e!668536))))

(assert (=> b!1176030 (= res!781172 (= (select (arr!36633 _keys!1208) i!673) k!934))))

(declare-fun b!1176031 () Bool)

(declare-fun e!668533 () Bool)

(assert (=> b!1176031 (= e!668533 e!668532)))

(declare-fun res!781174 () Bool)

(assert (=> b!1176031 (=> res!781174 e!668532)))

(assert (=> b!1176031 (= res!781174 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!530669 () ListLongMap!17091)

(assert (=> b!1176031 (= lt!530669 (getCurrentListMapNoExtraKeys!4992 lt!530668 lt!530673 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530679 () V!44593)

(assert (=> b!1176031 (= lt!530673 (array!75977 (store (arr!36634 _values!996) i!673 (ValueCellFull!14090 lt!530679)) (size!37171 _values!996)))))

(declare-fun dynLambda!2969 (Int (_ BitVec 64)) V!44593)

(assert (=> b!1176031 (= lt!530679 (dynLambda!2969 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1176031 (= lt!530674 (getCurrentListMapNoExtraKeys!4992 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176032 () Bool)

(declare-fun res!781161 () Bool)

(assert (=> b!1176032 (=> (not res!781161) (not e!668536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75974 (_ BitVec 32)) Bool)

(assert (=> b!1176032 (= res!781161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176033 () Bool)

(assert (=> b!1176033 (= e!668531 true)))

(assert (=> b!1176033 e!668525))

(declare-fun res!781166 () Bool)

(assert (=> b!1176033 (=> (not res!781166) (not e!668525))))

(assert (=> b!1176033 (= res!781166 (not (= (select (arr!36633 _keys!1208) from!1455) k!934)))))

(declare-fun lt!530678 () Unit!38744)

(assert (=> b!1176033 (= lt!530678 e!668527)))

(declare-fun c!116675 () Bool)

(assert (=> b!1176033 (= c!116675 (= (select (arr!36633 _keys!1208) from!1455) k!934))))

(assert (=> b!1176033 e!668524))

(declare-fun res!781169 () Bool)

(assert (=> b!1176033 (=> (not res!781169) (not e!668524))))

(assert (=> b!1176033 (= res!781169 (= lt!530669 (+!3784 lt!530675 lt!530667)))))

(declare-fun get!18741 (ValueCell!14090 V!44593) V!44593)

(assert (=> b!1176033 (= lt!530667 (tuple2!19111 (select (arr!36633 _keys!1208) from!1455) (get!18741 (select (arr!36634 _values!996) from!1455) lt!530679)))))

(declare-fun b!1176034 () Bool)

(assert (=> b!1176034 (= e!668529 (not e!668533))))

(declare-fun res!781173 () Bool)

(assert (=> b!1176034 (=> res!781173 e!668533)))

(assert (=> b!1176034 (= res!781173 (bvsgt from!1455 i!673))))

(assert (=> b!1176034 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!530672 () Unit!38744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75974 (_ BitVec 64) (_ BitVec 32)) Unit!38744)

(assert (=> b!1176034 (= lt!530672 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176035 () Bool)

(declare-fun res!781168 () Bool)

(assert (=> b!1176035 (=> (not res!781168) (not e!668536))))

(assert (=> b!1176035 (= res!781168 (and (= (size!37171 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37170 _keys!1208) (size!37171 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46226 () Bool)

(declare-fun mapRes!46226 () Bool)

(declare-fun tp!87921 () Bool)

(declare-fun e!668528 () Bool)

(assert (=> mapNonEmpty!46226 (= mapRes!46226 (and tp!87921 e!668528))))

(declare-fun mapKey!46226 () (_ BitVec 32))

(declare-fun mapRest!46226 () (Array (_ BitVec 32) ValueCell!14090))

(declare-fun mapValue!46226 () ValueCell!14090)

(assert (=> mapNonEmpty!46226 (= (arr!36634 _values!996) (store mapRest!46226 mapKey!46226 mapValue!46226))))

(declare-fun b!1176036 () Bool)

(declare-fun e!668534 () Bool)

(assert (=> b!1176036 (= e!668530 (and e!668534 mapRes!46226))))

(declare-fun condMapEmpty!46226 () Bool)

(declare-fun mapDefault!46226 () ValueCell!14090)

