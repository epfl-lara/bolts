; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99270 () Bool)

(assert start!99270)

(declare-fun b_free!24839 () Bool)

(declare-fun b_next!24839 () Bool)

(assert (=> start!99270 (= b_free!24839 (not b_next!24839))))

(declare-fun tp!87228 () Bool)

(declare-fun b_and!40541 () Bool)

(assert (=> start!99270 (= tp!87228 b_and!40541)))

(declare-fun b!1168741 () Bool)

(declare-fun e!664270 () Bool)

(declare-fun e!664272 () Bool)

(assert (=> b!1168741 (= e!664270 e!664272)))

(declare-fun res!775562 () Bool)

(assert (=> b!1168741 (=> (not res!775562) (not e!664272))))

(declare-datatypes ((array!75512 0))(
  ( (array!75513 (arr!36403 (Array (_ BitVec 32) (_ BitVec 64))) (size!36940 (_ BitVec 32))) )
))
(declare-fun lt!526194 () array!75512)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75512 (_ BitVec 32)) Bool)

(assert (=> b!1168741 (= res!775562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526194 mask!1564))))

(declare-fun _keys!1208 () array!75512)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168741 (= lt!526194 (array!75513 (store (arr!36403 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36940 _keys!1208)))))

(declare-fun b!1168742 () Bool)

(declare-fun e!664265 () Bool)

(declare-fun tp_is_empty!29369 () Bool)

(assert (=> b!1168742 (= e!664265 tp_is_empty!29369)))

(declare-fun b!1168743 () Bool)

(declare-fun res!775564 () Bool)

(assert (=> b!1168743 (=> (not res!775564) (not e!664270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168743 (= res!775564 (validMask!0 mask!1564))))

(declare-fun res!775568 () Bool)

(assert (=> start!99270 (=> (not res!775568) (not e!664270))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99270 (= res!775568 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36940 _keys!1208))))))

(assert (=> start!99270 e!664270))

(assert (=> start!99270 tp_is_empty!29369))

(declare-fun array_inv!27702 (array!75512) Bool)

(assert (=> start!99270 (array_inv!27702 _keys!1208)))

(assert (=> start!99270 true))

(assert (=> start!99270 tp!87228))

(declare-datatypes ((V!44285 0))(
  ( (V!44286 (val!14741 Int)) )
))
(declare-datatypes ((ValueCell!13975 0))(
  ( (ValueCellFull!13975 (v!17379 V!44285)) (EmptyCell!13975) )
))
(declare-datatypes ((array!75514 0))(
  ( (array!75515 (arr!36404 (Array (_ BitVec 32) ValueCell!13975)) (size!36941 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75514)

(declare-fun e!664268 () Bool)

(declare-fun array_inv!27703 (array!75514) Bool)

(assert (=> start!99270 (and (array_inv!27703 _values!996) e!664268)))

(declare-fun e!664271 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1168744 () Bool)

(assert (=> b!1168744 (= e!664271 (or (not (= (select (arr!36403 _keys!1208) from!1455) k!934)) (bvslt (size!36940 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun lt!526195 () V!44285)

(declare-datatypes ((tuple2!18900 0))(
  ( (tuple2!18901 (_1!9460 (_ BitVec 64)) (_2!9460 V!44285)) )
))
(declare-datatypes ((List!25672 0))(
  ( (Nil!25669) (Cons!25668 (h!26877 tuple2!18900) (t!37510 List!25672)) )
))
(declare-datatypes ((ListLongMap!16881 0))(
  ( (ListLongMap!16882 (toList!8456 List!25672)) )
))
(declare-fun lt!526203 () ListLongMap!16881)

(declare-fun lt!526197 () ListLongMap!16881)

(declare-fun +!3706 (ListLongMap!16881 tuple2!18900) ListLongMap!16881)

(declare-fun get!18583 (ValueCell!13975 V!44285) V!44285)

(assert (=> b!1168744 (= lt!526197 (+!3706 lt!526203 (tuple2!18901 (select (arr!36403 _keys!1208) from!1455) (get!18583 (select (arr!36404 _values!996) from!1455) lt!526195))))))

(declare-fun b!1168745 () Bool)

(declare-fun e!664269 () Bool)

(assert (=> b!1168745 (= e!664269 tp_is_empty!29369)))

(declare-fun b!1168746 () Bool)

(declare-fun res!775557 () Bool)

(assert (=> b!1168746 (=> (not res!775557) (not e!664270))))

(assert (=> b!1168746 (= res!775557 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36940 _keys!1208))))))

(declare-fun b!1168747 () Bool)

(declare-fun res!775556 () Bool)

(assert (=> b!1168747 (=> (not res!775556) (not e!664270))))

(declare-datatypes ((List!25673 0))(
  ( (Nil!25670) (Cons!25669 (h!26878 (_ BitVec 64)) (t!37511 List!25673)) )
))
(declare-fun arrayNoDuplicates!0 (array!75512 (_ BitVec 32) List!25673) Bool)

(assert (=> b!1168747 (= res!775556 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25670))))

(declare-fun mapNonEmpty!45878 () Bool)

(declare-fun mapRes!45878 () Bool)

(declare-fun tp!87229 () Bool)

(assert (=> mapNonEmpty!45878 (= mapRes!45878 (and tp!87229 e!664269))))

(declare-fun mapRest!45878 () (Array (_ BitVec 32) ValueCell!13975))

(declare-fun mapValue!45878 () ValueCell!13975)

(declare-fun mapKey!45878 () (_ BitVec 32))

(assert (=> mapNonEmpty!45878 (= (arr!36404 _values!996) (store mapRest!45878 mapKey!45878 mapValue!45878))))

(declare-fun b!1168748 () Bool)

(declare-fun res!775559 () Bool)

(assert (=> b!1168748 (=> (not res!775559) (not e!664270))))

(assert (=> b!1168748 (= res!775559 (= (select (arr!36403 _keys!1208) i!673) k!934))))

(declare-fun b!1168749 () Bool)

(declare-fun res!775563 () Bool)

(assert (=> b!1168749 (=> (not res!775563) (not e!664270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168749 (= res!775563 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45878 () Bool)

(assert (=> mapIsEmpty!45878 mapRes!45878))

(declare-fun b!1168750 () Bool)

(declare-fun e!664267 () Bool)

(assert (=> b!1168750 (= e!664267 e!664271)))

(declare-fun res!775561 () Bool)

(assert (=> b!1168750 (=> res!775561 e!664271)))

(assert (=> b!1168750 (= res!775561 (not (validKeyInArray!0 (select (arr!36403 _keys!1208) from!1455))))))

(declare-fun lt!526198 () ListLongMap!16881)

(assert (=> b!1168750 (= lt!526198 lt!526203)))

(declare-fun lt!526196 () ListLongMap!16881)

(declare-fun -!1483 (ListLongMap!16881 (_ BitVec 64)) ListLongMap!16881)

(assert (=> b!1168750 (= lt!526203 (-!1483 lt!526196 k!934))))

(declare-fun zeroValue!944 () V!44285)

(declare-fun lt!526202 () array!75514)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44285)

(declare-fun getCurrentListMapNoExtraKeys!4889 (array!75512 array!75514 (_ BitVec 32) (_ BitVec 32) V!44285 V!44285 (_ BitVec 32) Int) ListLongMap!16881)

(assert (=> b!1168750 (= lt!526198 (getCurrentListMapNoExtraKeys!4889 lt!526194 lt!526202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1168750 (= lt!526196 (getCurrentListMapNoExtraKeys!4889 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38460 0))(
  ( (Unit!38461) )
))
(declare-fun lt!526199 () Unit!38460)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!707 (array!75512 array!75514 (_ BitVec 32) (_ BitVec 32) V!44285 V!44285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38460)

(assert (=> b!1168750 (= lt!526199 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!707 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168751 () Bool)

(declare-fun e!664264 () Bool)

(assert (=> b!1168751 (= e!664272 (not e!664264))))

(declare-fun res!775567 () Bool)

(assert (=> b!1168751 (=> res!775567 e!664264)))

(assert (=> b!1168751 (= res!775567 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168751 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!526201 () Unit!38460)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75512 (_ BitVec 64) (_ BitVec 32)) Unit!38460)

(assert (=> b!1168751 (= lt!526201 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168752 () Bool)

(declare-fun res!775566 () Bool)

(assert (=> b!1168752 (=> (not res!775566) (not e!664270))))

(assert (=> b!1168752 (= res!775566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168753 () Bool)

(assert (=> b!1168753 (= e!664264 e!664267)))

(declare-fun res!775560 () Bool)

(assert (=> b!1168753 (=> res!775560 e!664267)))

(assert (=> b!1168753 (= res!775560 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1168753 (= lt!526197 (getCurrentListMapNoExtraKeys!4889 lt!526194 lt!526202 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168753 (= lt!526202 (array!75515 (store (arr!36404 _values!996) i!673 (ValueCellFull!13975 lt!526195)) (size!36941 _values!996)))))

(declare-fun dynLambda!2881 (Int (_ BitVec 64)) V!44285)

(assert (=> b!1168753 (= lt!526195 (dynLambda!2881 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526200 () ListLongMap!16881)

(assert (=> b!1168753 (= lt!526200 (getCurrentListMapNoExtraKeys!4889 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168754 () Bool)

(assert (=> b!1168754 (= e!664268 (and e!664265 mapRes!45878))))

(declare-fun condMapEmpty!45878 () Bool)

(declare-fun mapDefault!45878 () ValueCell!13975)

