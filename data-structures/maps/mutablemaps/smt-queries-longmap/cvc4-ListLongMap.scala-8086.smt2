; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99422 () Bool)

(assert start!99422)

(declare-fun b_free!24965 () Bool)

(declare-fun b_next!24965 () Bool)

(assert (=> start!99422 (= b_free!24965 (not b_next!24965))))

(declare-fun tp!87610 () Bool)

(declare-fun b_and!40811 () Bool)

(assert (=> start!99422 (= tp!87610 b_and!40811)))

(declare-fun b!1172795 () Bool)

(declare-fun e!666657 () Bool)

(declare-fun e!666654 () Bool)

(assert (=> b!1172795 (= e!666657 e!666654)))

(declare-fun res!778825 () Bool)

(assert (=> b!1172795 (=> res!778825 e!666654)))

(declare-datatypes ((array!75766 0))(
  ( (array!75767 (arr!36529 (Array (_ BitVec 32) (_ BitVec 64))) (size!37066 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75766)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172795 (= res!778825 (not (validKeyInArray!0 (select (arr!36529 _keys!1208) from!1455))))))

(declare-datatypes ((V!44453 0))(
  ( (V!44454 (val!14804 Int)) )
))
(declare-datatypes ((tuple2!19014 0))(
  ( (tuple2!19015 (_1!9517 (_ BitVec 64)) (_2!9517 V!44453)) )
))
(declare-datatypes ((List!25787 0))(
  ( (Nil!25784) (Cons!25783 (h!26992 tuple2!19014) (t!37751 List!25787)) )
))
(declare-datatypes ((ListLongMap!16995 0))(
  ( (ListLongMap!16996 (toList!8513 List!25787)) )
))
(declare-fun lt!528482 () ListLongMap!16995)

(declare-fun lt!528481 () ListLongMap!16995)

(assert (=> b!1172795 (= lt!528482 lt!528481)))

(declare-fun lt!528486 () ListLongMap!16995)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1527 (ListLongMap!16995 (_ BitVec 64)) ListLongMap!16995)

(assert (=> b!1172795 (= lt!528481 (-!1527 lt!528486 k!934))))

(declare-fun zeroValue!944 () V!44453)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!528490 () array!75766)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14038 0))(
  ( (ValueCellFull!14038 (v!17443 V!44453)) (EmptyCell!14038) )
))
(declare-datatypes ((array!75768 0))(
  ( (array!75769 (arr!36530 (Array (_ BitVec 32) ValueCell!14038)) (size!37067 (_ BitVec 32))) )
))
(declare-fun lt!528489 () array!75768)

(declare-fun minValue!944 () V!44453)

(declare-fun getCurrentListMapNoExtraKeys!4945 (array!75766 array!75768 (_ BitVec 32) (_ BitVec 32) V!44453 V!44453 (_ BitVec 32) Int) ListLongMap!16995)

(assert (=> b!1172795 (= lt!528482 (getCurrentListMapNoExtraKeys!4945 lt!528490 lt!528489 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75768)

(assert (=> b!1172795 (= lt!528486 (getCurrentListMapNoExtraKeys!4945 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38576 0))(
  ( (Unit!38577) )
))
(declare-fun lt!528487 () Unit!38576)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!751 (array!75766 array!75768 (_ BitVec 32) (_ BitVec 32) V!44453 V!44453 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38576)

(assert (=> b!1172795 (= lt!528487 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!751 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!778831 () Bool)

(declare-fun e!666659 () Bool)

(assert (=> start!99422 (=> (not res!778831) (not e!666659))))

(assert (=> start!99422 (= res!778831 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37066 _keys!1208))))))

(assert (=> start!99422 e!666659))

(declare-fun tp_is_empty!29495 () Bool)

(assert (=> start!99422 tp_is_empty!29495))

(declare-fun array_inv!27798 (array!75766) Bool)

(assert (=> start!99422 (array_inv!27798 _keys!1208)))

(assert (=> start!99422 true))

(assert (=> start!99422 tp!87610))

(declare-fun e!666658 () Bool)

(declare-fun array_inv!27799 (array!75768) Bool)

(assert (=> start!99422 (and (array_inv!27799 _values!996) e!666658)))

(declare-fun b!1172796 () Bool)

(declare-fun res!778828 () Bool)

(assert (=> b!1172796 (=> (not res!778828) (not e!666659))))

(assert (=> b!1172796 (= res!778828 (= (select (arr!36529 _keys!1208) i!673) k!934))))

(declare-fun b!1172797 () Bool)

(declare-fun res!778820 () Bool)

(declare-fun e!666660 () Bool)

(assert (=> b!1172797 (=> (not res!778820) (not e!666660))))

(declare-datatypes ((List!25788 0))(
  ( (Nil!25785) (Cons!25784 (h!26993 (_ BitVec 64)) (t!37752 List!25788)) )
))
(declare-fun arrayNoDuplicates!0 (array!75766 (_ BitVec 32) List!25788) Bool)

(assert (=> b!1172797 (= res!778820 (arrayNoDuplicates!0 lt!528490 #b00000000000000000000000000000000 Nil!25785))))

(declare-fun b!1172798 () Bool)

(declare-fun res!778827 () Bool)

(assert (=> b!1172798 (=> (not res!778827) (not e!666659))))

(assert (=> b!1172798 (= res!778827 (validKeyInArray!0 k!934))))

(declare-fun b!1172799 () Bool)

(declare-fun e!666650 () Bool)

(assert (=> b!1172799 (= e!666650 e!666657)))

(declare-fun res!778826 () Bool)

(assert (=> b!1172799 (=> res!778826 e!666657)))

(assert (=> b!1172799 (= res!778826 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!528485 () ListLongMap!16995)

(assert (=> b!1172799 (= lt!528485 (getCurrentListMapNoExtraKeys!4945 lt!528490 lt!528489 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528488 () V!44453)

(assert (=> b!1172799 (= lt!528489 (array!75769 (store (arr!36530 _values!996) i!673 (ValueCellFull!14038 lt!528488)) (size!37067 _values!996)))))

(declare-fun dynLambda!2932 (Int (_ BitVec 64)) V!44453)

(assert (=> b!1172799 (= lt!528488 (dynLambda!2932 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528480 () ListLongMap!16995)

(assert (=> b!1172799 (= lt!528480 (getCurrentListMapNoExtraKeys!4945 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172800 () Bool)

(declare-fun res!778824 () Bool)

(assert (=> b!1172800 (=> (not res!778824) (not e!666659))))

(assert (=> b!1172800 (= res!778824 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25785))))

(declare-fun b!1172801 () Bool)

(assert (=> b!1172801 (= e!666660 (not e!666650))))

(declare-fun res!778819 () Bool)

(assert (=> b!1172801 (=> res!778819 e!666650)))

(assert (=> b!1172801 (= res!778819 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172801 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528491 () Unit!38576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75766 (_ BitVec 64) (_ BitVec 32)) Unit!38576)

(assert (=> b!1172801 (= lt!528491 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172802 () Bool)

(declare-fun res!778829 () Bool)

(assert (=> b!1172802 (=> (not res!778829) (not e!666659))))

(assert (=> b!1172802 (= res!778829 (and (= (size!37067 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37066 _keys!1208) (size!37067 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172803 () Bool)

(declare-fun res!778818 () Bool)

(assert (=> b!1172803 (=> (not res!778818) (not e!666659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75766 (_ BitVec 32)) Bool)

(assert (=> b!1172803 (= res!778818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46070 () Bool)

(declare-fun mapRes!46070 () Bool)

(assert (=> mapIsEmpty!46070 mapRes!46070))

(declare-fun b!1172804 () Bool)

(declare-fun e!666655 () Bool)

(assert (=> b!1172804 (= e!666658 (and e!666655 mapRes!46070))))

(declare-fun condMapEmpty!46070 () Bool)

(declare-fun mapDefault!46070 () ValueCell!14038)

