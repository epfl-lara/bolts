; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99168 () Bool)

(assert start!99168)

(declare-fun b_free!24737 () Bool)

(declare-fun b_next!24737 () Bool)

(assert (=> start!99168 (= b_free!24737 (not b_next!24737))))

(declare-fun tp!86922 () Bool)

(declare-fun b_and!40337 () Bool)

(assert (=> start!99168 (= tp!86922 b_and!40337)))

(declare-fun b!1166309 () Bool)

(declare-fun res!773687 () Bool)

(declare-fun e!663006 () Bool)

(assert (=> b!1166309 (=> (not res!773687) (not e!663006))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75312 0))(
  ( (array!75313 (arr!36303 (Array (_ BitVec 32) (_ BitVec 64))) (size!36840 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75312)

(assert (=> b!1166309 (= res!773687 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36840 _keys!1208))))))

(declare-fun b!1166310 () Bool)

(declare-fun e!663008 () Bool)

(declare-fun e!663005 () Bool)

(assert (=> b!1166310 (= e!663008 e!663005)))

(declare-fun res!773691 () Bool)

(assert (=> b!1166310 (=> res!773691 e!663005)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1166310 (= res!773691 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!44149 0))(
  ( (V!44150 (val!14690 Int)) )
))
(declare-datatypes ((ValueCell!13924 0))(
  ( (ValueCellFull!13924 (v!17328 V!44149)) (EmptyCell!13924) )
))
(declare-datatypes ((array!75314 0))(
  ( (array!75315 (arr!36304 (Array (_ BitVec 32) ValueCell!13924)) (size!36841 (_ BitVec 32))) )
))
(declare-fun lt!525174 () array!75314)

(declare-datatypes ((tuple2!18812 0))(
  ( (tuple2!18813 (_1!9416 (_ BitVec 64)) (_2!9416 V!44149)) )
))
(declare-datatypes ((List!25588 0))(
  ( (Nil!25585) (Cons!25584 (h!26793 tuple2!18812) (t!37324 List!25588)) )
))
(declare-datatypes ((ListLongMap!16793 0))(
  ( (ListLongMap!16794 (toList!8412 List!25588)) )
))
(declare-fun lt!525175 () ListLongMap!16793)

(declare-fun zeroValue!944 () V!44149)

(declare-fun lt!525173 () array!75312)

(declare-fun minValue!944 () V!44149)

(declare-fun getCurrentListMapNoExtraKeys!4845 (array!75312 array!75314 (_ BitVec 32) (_ BitVec 32) V!44149 V!44149 (_ BitVec 32) Int) ListLongMap!16793)

(assert (=> b!1166310 (= lt!525175 (getCurrentListMapNoExtraKeys!4845 lt!525173 lt!525174 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75314)

(declare-fun dynLambda!2840 (Int (_ BitVec 64)) V!44149)

(assert (=> b!1166310 (= lt!525174 (array!75315 (store (arr!36304 _values!996) i!673 (ValueCellFull!13924 (dynLambda!2840 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36841 _values!996)))))

(declare-fun lt!525172 () ListLongMap!16793)

(assert (=> b!1166310 (= lt!525172 (getCurrentListMapNoExtraKeys!4845 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1166311 () Bool)

(declare-fun res!773689 () Bool)

(assert (=> b!1166311 (=> (not res!773689) (not e!663006))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1166311 (= res!773689 (= (select (arr!36303 _keys!1208) i!673) k!934))))

(declare-fun b!1166312 () Bool)

(assert (=> b!1166312 (= e!663005 true)))

(declare-fun -!1449 (ListLongMap!16793 (_ BitVec 64)) ListLongMap!16793)

(assert (=> b!1166312 (= (getCurrentListMapNoExtraKeys!4845 lt!525173 lt!525174 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1449 (getCurrentListMapNoExtraKeys!4845 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!38378 0))(
  ( (Unit!38379) )
))
(declare-fun lt!525176 () Unit!38378)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!673 (array!75312 array!75314 (_ BitVec 32) (_ BitVec 32) V!44149 V!44149 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38378)

(assert (=> b!1166312 (= lt!525176 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!673 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1166313 () Bool)

(declare-fun res!773693 () Bool)

(declare-fun e!663012 () Bool)

(assert (=> b!1166313 (=> (not res!773693) (not e!663012))))

(declare-datatypes ((List!25589 0))(
  ( (Nil!25586) (Cons!25585 (h!26794 (_ BitVec 64)) (t!37325 List!25589)) )
))
(declare-fun arrayNoDuplicates!0 (array!75312 (_ BitVec 32) List!25589) Bool)

(assert (=> b!1166313 (= res!773693 (arrayNoDuplicates!0 lt!525173 #b00000000000000000000000000000000 Nil!25586))))

(declare-fun b!1166314 () Bool)

(declare-fun res!773692 () Bool)

(assert (=> b!1166314 (=> (not res!773692) (not e!663006))))

(assert (=> b!1166314 (= res!773692 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25586))))

(declare-fun b!1166315 () Bool)

(declare-fun res!773690 () Bool)

(assert (=> b!1166315 (=> (not res!773690) (not e!663006))))

(assert (=> b!1166315 (= res!773690 (and (= (size!36841 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36840 _keys!1208) (size!36841 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1166316 () Bool)

(assert (=> b!1166316 (= e!663006 e!663012)))

(declare-fun res!773696 () Bool)

(assert (=> b!1166316 (=> (not res!773696) (not e!663012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75312 (_ BitVec 32)) Bool)

(assert (=> b!1166316 (= res!773696 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525173 mask!1564))))

(assert (=> b!1166316 (= lt!525173 (array!75313 (store (arr!36303 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36840 _keys!1208)))))

(declare-fun res!773688 () Bool)

(assert (=> start!99168 (=> (not res!773688) (not e!663006))))

(assert (=> start!99168 (= res!773688 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36840 _keys!1208))))))

(assert (=> start!99168 e!663006))

(declare-fun tp_is_empty!29267 () Bool)

(assert (=> start!99168 tp_is_empty!29267))

(declare-fun array_inv!27636 (array!75312) Bool)

(assert (=> start!99168 (array_inv!27636 _keys!1208)))

(assert (=> start!99168 true))

(assert (=> start!99168 tp!86922))

(declare-fun e!663010 () Bool)

(declare-fun array_inv!27637 (array!75314) Bool)

(assert (=> start!99168 (and (array_inv!27637 _values!996) e!663010)))

(declare-fun b!1166317 () Bool)

(declare-fun res!773694 () Bool)

(assert (=> b!1166317 (=> (not res!773694) (not e!663006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1166317 (= res!773694 (validKeyInArray!0 k!934))))

(declare-fun b!1166318 () Bool)

(declare-fun res!773695 () Bool)

(assert (=> b!1166318 (=> (not res!773695) (not e!663006))))

(assert (=> b!1166318 (= res!773695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!45725 () Bool)

(declare-fun mapRes!45725 () Bool)

(assert (=> mapIsEmpty!45725 mapRes!45725))

(declare-fun b!1166319 () Bool)

(assert (=> b!1166319 (= e!663012 (not e!663008))))

(declare-fun res!773686 () Bool)

(assert (=> b!1166319 (=> res!773686 e!663008)))

(assert (=> b!1166319 (= res!773686 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1166319 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525177 () Unit!38378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75312 (_ BitVec 64) (_ BitVec 32)) Unit!38378)

(assert (=> b!1166319 (= lt!525177 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1166320 () Bool)

(declare-fun e!663011 () Bool)

(assert (=> b!1166320 (= e!663011 tp_is_empty!29267)))

(declare-fun b!1166321 () Bool)

(declare-fun e!663009 () Bool)

(assert (=> b!1166321 (= e!663010 (and e!663009 mapRes!45725))))

(declare-fun condMapEmpty!45725 () Bool)

(declare-fun mapDefault!45725 () ValueCell!13924)

