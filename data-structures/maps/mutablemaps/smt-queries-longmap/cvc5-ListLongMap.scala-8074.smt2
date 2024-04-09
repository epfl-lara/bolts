; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99346 () Bool)

(assert start!99346)

(declare-fun b_free!24889 () Bool)

(declare-fun b_next!24889 () Bool)

(assert (=> start!99346 (= b_free!24889 (not b_next!24889))))

(declare-fun tp!87382 () Bool)

(declare-fun b_and!40659 () Bool)

(assert (=> start!99346 (= tp!87382 b_and!40659)))

(declare-fun b!1170302 () Bool)

(declare-fun res!776760 () Bool)

(declare-fun e!665207 () Bool)

(assert (=> b!1170302 (=> (not res!776760) (not e!665207))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170302 (= res!776760 (validKeyInArray!0 k!934))))

(declare-fun b!1170303 () Bool)

(declare-fun e!665211 () Bool)

(declare-fun tp_is_empty!29419 () Bool)

(assert (=> b!1170303 (= e!665211 tp_is_empty!29419)))

(declare-fun b!1170304 () Bool)

(declare-fun e!665204 () Bool)

(declare-fun e!665205 () Bool)

(assert (=> b!1170304 (= e!665204 e!665205)))

(declare-fun res!776765 () Bool)

(assert (=> b!1170304 (=> res!776765 e!665205)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170304 (= res!776765 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44353 0))(
  ( (V!44354 (val!14766 Int)) )
))
(declare-fun zeroValue!944 () V!44353)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18948 0))(
  ( (tuple2!18949 (_1!9484 (_ BitVec 64)) (_2!9484 V!44353)) )
))
(declare-datatypes ((List!25719 0))(
  ( (Nil!25716) (Cons!25715 (h!26924 tuple2!18948) (t!37607 List!25719)) )
))
(declare-datatypes ((ListLongMap!16929 0))(
  ( (ListLongMap!16930 (toList!8480 List!25719)) )
))
(declare-fun lt!527040 () ListLongMap!16929)

(declare-datatypes ((ValueCell!14000 0))(
  ( (ValueCellFull!14000 (v!17405 V!44353)) (EmptyCell!14000) )
))
(declare-datatypes ((array!75614 0))(
  ( (array!75615 (arr!36453 (Array (_ BitVec 32) ValueCell!14000)) (size!36990 (_ BitVec 32))) )
))
(declare-fun lt!527041 () array!75614)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75616 0))(
  ( (array!75617 (arr!36454 (Array (_ BitVec 32) (_ BitVec 64))) (size!36991 (_ BitVec 32))) )
))
(declare-fun lt!527045 () array!75616)

(declare-fun minValue!944 () V!44353)

(declare-fun getCurrentListMapNoExtraKeys!4912 (array!75616 array!75614 (_ BitVec 32) (_ BitVec 32) V!44353 V!44353 (_ BitVec 32) Int) ListLongMap!16929)

(assert (=> b!1170304 (= lt!527040 (getCurrentListMapNoExtraKeys!4912 lt!527045 lt!527041 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527049 () V!44353)

(declare-fun _values!996 () array!75614)

(assert (=> b!1170304 (= lt!527041 (array!75615 (store (arr!36453 _values!996) i!673 (ValueCellFull!14000 lt!527049)) (size!36990 _values!996)))))

(declare-fun dynLambda!2901 (Int (_ BitVec 64)) V!44353)

(assert (=> b!1170304 (= lt!527049 (dynLambda!2901 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75616)

(declare-fun lt!527044 () ListLongMap!16929)

(assert (=> b!1170304 (= lt!527044 (getCurrentListMapNoExtraKeys!4912 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45956 () Bool)

(declare-fun mapRes!45956 () Bool)

(declare-fun tp!87381 () Bool)

(assert (=> mapNonEmpty!45956 (= mapRes!45956 (and tp!87381 e!665211))))

(declare-fun mapKey!45956 () (_ BitVec 32))

(declare-fun mapValue!45956 () ValueCell!14000)

(declare-fun mapRest!45956 () (Array (_ BitVec 32) ValueCell!14000))

(assert (=> mapNonEmpty!45956 (= (arr!36453 _values!996) (store mapRest!45956 mapKey!45956 mapValue!45956))))

(declare-fun mapIsEmpty!45956 () Bool)

(assert (=> mapIsEmpty!45956 mapRes!45956))

(declare-fun b!1170305 () Bool)

(declare-fun res!776768 () Bool)

(assert (=> b!1170305 (=> (not res!776768) (not e!665207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170305 (= res!776768 (validMask!0 mask!1564))))

(declare-fun b!1170306 () Bool)

(declare-fun e!665203 () Bool)

(assert (=> b!1170306 (= e!665203 true)))

(declare-fun arrayContainsKey!0 (array!75616 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170306 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-datatypes ((Unit!38502 0))(
  ( (Unit!38503) )
))
(declare-fun lt!527048 () Unit!38502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75616 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38502)

(assert (=> b!1170306 (= lt!527048 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170307 () Bool)

(declare-fun e!665201 () Bool)

(assert (=> b!1170307 (= e!665201 (not e!665204))))

(declare-fun res!776761 () Bool)

(assert (=> b!1170307 (=> res!776761 e!665204)))

(assert (=> b!1170307 (= res!776761 (bvsgt from!1455 i!673))))

(assert (=> b!1170307 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527047 () Unit!38502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75616 (_ BitVec 64) (_ BitVec 32)) Unit!38502)

(assert (=> b!1170307 (= lt!527047 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170308 () Bool)

(declare-fun res!776763 () Bool)

(assert (=> b!1170308 (=> (not res!776763) (not e!665207))))

(assert (=> b!1170308 (= res!776763 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36991 _keys!1208))))))

(declare-fun b!1170309 () Bool)

(declare-fun e!665208 () Bool)

(assert (=> b!1170309 (= e!665205 e!665208)))

(declare-fun res!776773 () Bool)

(assert (=> b!1170309 (=> res!776773 e!665208)))

(assert (=> b!1170309 (= res!776773 (not (validKeyInArray!0 (select (arr!36454 _keys!1208) from!1455))))))

(declare-fun lt!527039 () ListLongMap!16929)

(declare-fun lt!527042 () ListLongMap!16929)

(assert (=> b!1170309 (= lt!527039 lt!527042)))

(declare-fun lt!527043 () ListLongMap!16929)

(declare-fun -!1500 (ListLongMap!16929 (_ BitVec 64)) ListLongMap!16929)

(assert (=> b!1170309 (= lt!527042 (-!1500 lt!527043 k!934))))

(assert (=> b!1170309 (= lt!527039 (getCurrentListMapNoExtraKeys!4912 lt!527045 lt!527041 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170309 (= lt!527043 (getCurrentListMapNoExtraKeys!4912 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527046 () Unit!38502)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!724 (array!75616 array!75614 (_ BitVec 32) (_ BitVec 32) V!44353 V!44353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38502)

(assert (=> b!1170309 (= lt!527046 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!724 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170310 () Bool)

(declare-fun res!776764 () Bool)

(assert (=> b!1170310 (=> (not res!776764) (not e!665207))))

(assert (=> b!1170310 (= res!776764 (and (= (size!36990 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36991 _keys!1208) (size!36990 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170311 () Bool)

(declare-fun res!776771 () Bool)

(assert (=> b!1170311 (=> (not res!776771) (not e!665207))))

(declare-datatypes ((List!25720 0))(
  ( (Nil!25717) (Cons!25716 (h!26925 (_ BitVec 64)) (t!37608 List!25720)) )
))
(declare-fun arrayNoDuplicates!0 (array!75616 (_ BitVec 32) List!25720) Bool)

(assert (=> b!1170311 (= res!776771 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25717))))

(declare-fun b!1170312 () Bool)

(declare-fun res!776772 () Bool)

(assert (=> b!1170312 (=> (not res!776772) (not e!665207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75616 (_ BitVec 32)) Bool)

(assert (=> b!1170312 (= res!776772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170313 () Bool)

(declare-fun e!665209 () Bool)

(assert (=> b!1170313 (= e!665209 tp_is_empty!29419)))

(declare-fun res!776758 () Bool)

(assert (=> start!99346 (=> (not res!776758) (not e!665207))))

(assert (=> start!99346 (= res!776758 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36991 _keys!1208))))))

(assert (=> start!99346 e!665207))

(assert (=> start!99346 tp_is_empty!29419))

(declare-fun array_inv!27740 (array!75616) Bool)

(assert (=> start!99346 (array_inv!27740 _keys!1208)))

(assert (=> start!99346 true))

(assert (=> start!99346 tp!87382))

(declare-fun e!665206 () Bool)

(declare-fun array_inv!27741 (array!75614) Bool)

(assert (=> start!99346 (and (array_inv!27741 _values!996) e!665206)))

(declare-fun b!1170314 () Bool)

(assert (=> b!1170314 (= e!665207 e!665201)))

(declare-fun res!776766 () Bool)

(assert (=> b!1170314 (=> (not res!776766) (not e!665201))))

(assert (=> b!1170314 (= res!776766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527045 mask!1564))))

(assert (=> b!1170314 (= lt!527045 (array!75617 (store (arr!36454 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36991 _keys!1208)))))

(declare-fun b!1170315 () Bool)

(declare-fun res!776770 () Bool)

(assert (=> b!1170315 (=> (not res!776770) (not e!665201))))

(assert (=> b!1170315 (= res!776770 (arrayNoDuplicates!0 lt!527045 #b00000000000000000000000000000000 Nil!25717))))

(declare-fun b!1170316 () Bool)

(assert (=> b!1170316 (= e!665208 e!665203)))

(declare-fun res!776762 () Bool)

(assert (=> b!1170316 (=> res!776762 e!665203)))

(assert (=> b!1170316 (= res!776762 (not (= (select (arr!36454 _keys!1208) from!1455) k!934)))))

(declare-fun e!665210 () Bool)

(assert (=> b!1170316 e!665210))

(declare-fun res!776767 () Bool)

(assert (=> b!1170316 (=> (not res!776767) (not e!665210))))

(declare-fun +!3724 (ListLongMap!16929 tuple2!18948) ListLongMap!16929)

(declare-fun get!18621 (ValueCell!14000 V!44353) V!44353)

(assert (=> b!1170316 (= res!776767 (= lt!527040 (+!3724 lt!527042 (tuple2!18949 (select (arr!36454 _keys!1208) from!1455) (get!18621 (select (arr!36453 _values!996) from!1455) lt!527049)))))))

(declare-fun b!1170317 () Bool)

(declare-fun e!665202 () Bool)

(assert (=> b!1170317 (= e!665202 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170318 () Bool)

(assert (=> b!1170318 (= e!665206 (and e!665209 mapRes!45956))))

(declare-fun condMapEmpty!45956 () Bool)

(declare-fun mapDefault!45956 () ValueCell!14000)

