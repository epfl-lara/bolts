; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99442 () Bool)

(assert start!99442)

(declare-fun b_free!24985 () Bool)

(declare-fun b_next!24985 () Bool)

(assert (=> start!99442 (= b_free!24985 (not b_next!24985))))

(declare-fun tp!87669 () Bool)

(declare-fun b_and!40851 () Bool)

(assert (=> start!99442 (= tp!87669 b_and!40851)))

(declare-fun b!1173415 () Bool)

(declare-fun res!779274 () Bool)

(declare-fun e!667021 () Bool)

(assert (=> b!1173415 (=> (not res!779274) (not e!667021))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75806 0))(
  ( (array!75807 (arr!36549 (Array (_ BitVec 32) (_ BitVec 64))) (size!37086 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75806)

(assert (=> b!1173415 (= res!779274 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37086 _keys!1208))))))

(declare-fun b!1173416 () Bool)

(declare-fun e!667015 () Bool)

(declare-fun e!667020 () Bool)

(assert (=> b!1173416 (= e!667015 e!667020)))

(declare-fun res!779270 () Bool)

(assert (=> b!1173416 (=> res!779270 e!667020)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1173416 (= res!779270 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44481 0))(
  ( (V!44482 (val!14814 Int)) )
))
(declare-fun zeroValue!944 () V!44481)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14048 0))(
  ( (ValueCellFull!14048 (v!17453 V!44481)) (EmptyCell!14048) )
))
(declare-datatypes ((array!75808 0))(
  ( (array!75809 (arr!36550 (Array (_ BitVec 32) ValueCell!14048)) (size!37087 (_ BitVec 32))) )
))
(declare-fun lt!528906 () array!75808)

(declare-datatypes ((tuple2!19030 0))(
  ( (tuple2!19031 (_1!9525 (_ BitVec 64)) (_2!9525 V!44481)) )
))
(declare-datatypes ((List!25803 0))(
  ( (Nil!25800) (Cons!25799 (h!27008 tuple2!19030) (t!37787 List!25803)) )
))
(declare-datatypes ((ListLongMap!17011 0))(
  ( (ListLongMap!17012 (toList!8521 List!25803)) )
))
(declare-fun lt!528903 () ListLongMap!17011)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528911 () array!75806)

(declare-fun minValue!944 () V!44481)

(declare-fun getCurrentListMapNoExtraKeys!4953 (array!75806 array!75808 (_ BitVec 32) (_ BitVec 32) V!44481 V!44481 (_ BitVec 32) Int) ListLongMap!17011)

(assert (=> b!1173416 (= lt!528903 (getCurrentListMapNoExtraKeys!4953 lt!528911 lt!528906 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75808)

(declare-fun lt!528899 () V!44481)

(assert (=> b!1173416 (= lt!528906 (array!75809 (store (arr!36550 _values!996) i!673 (ValueCellFull!14048 lt!528899)) (size!37087 _values!996)))))

(declare-fun dynLambda!2937 (Int (_ BitVec 64)) V!44481)

(assert (=> b!1173416 (= lt!528899 (dynLambda!2937 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528909 () ListLongMap!17011)

(assert (=> b!1173416 (= lt!528909 (getCurrentListMapNoExtraKeys!4953 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46100 () Bool)

(declare-fun mapRes!46100 () Bool)

(declare-fun tp!87670 () Bool)

(declare-fun e!667017 () Bool)

(assert (=> mapNonEmpty!46100 (= mapRes!46100 (and tp!87670 e!667017))))

(declare-fun mapKey!46100 () (_ BitVec 32))

(declare-fun mapRest!46100 () (Array (_ BitVec 32) ValueCell!14048))

(declare-fun mapValue!46100 () ValueCell!14048)

(assert (=> mapNonEmpty!46100 (= (arr!36550 _values!996) (store mapRest!46100 mapKey!46100 mapValue!46100))))

(declare-fun b!1173417 () Bool)

(declare-datatypes ((Unit!38605 0))(
  ( (Unit!38606) )
))
(declare-fun e!667013 () Unit!38605)

(declare-fun Unit!38607 () Unit!38605)

(assert (=> b!1173417 (= e!667013 Unit!38607)))

(declare-fun b!1173418 () Bool)

(declare-fun e!667011 () Bool)

(assert (=> b!1173418 (= e!667011 true)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1173418 (not (= (select (arr!36549 _keys!1208) from!1455) k!934))))

(declare-fun lt!528908 () Unit!38605)

(assert (=> b!1173418 (= lt!528908 e!667013)))

(declare-fun c!116549 () Bool)

(assert (=> b!1173418 (= c!116549 (= (select (arr!36549 _keys!1208) from!1455) k!934))))

(declare-fun e!667014 () Bool)

(assert (=> b!1173418 e!667014))

(declare-fun res!779277 () Bool)

(assert (=> b!1173418 (=> (not res!779277) (not e!667014))))

(declare-fun lt!528900 () ListLongMap!17011)

(declare-fun +!3755 (ListLongMap!17011 tuple2!19030) ListLongMap!17011)

(declare-fun get!18684 (ValueCell!14048 V!44481) V!44481)

(assert (=> b!1173418 (= res!779277 (= lt!528903 (+!3755 lt!528900 (tuple2!19031 (select (arr!36549 _keys!1208) from!1455) (get!18684 (select (arr!36550 _values!996) from!1455) lt!528899)))))))

(declare-fun b!1173419 () Bool)

(declare-fun res!779268 () Bool)

(assert (=> b!1173419 (=> (not res!779268) (not e!667021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173419 (= res!779268 (validMask!0 mask!1564))))

(declare-fun b!1173420 () Bool)

(declare-fun e!667018 () Bool)

(assert (=> b!1173420 (= e!667014 e!667018)))

(declare-fun res!779281 () Bool)

(assert (=> b!1173420 (=> res!779281 e!667018)))

(assert (=> b!1173420 (= res!779281 (not (= (select (arr!36549 _keys!1208) from!1455) k!934)))))

(declare-fun b!1173421 () Bool)

(declare-fun res!779276 () Bool)

(assert (=> b!1173421 (=> (not res!779276) (not e!667021))))

(declare-datatypes ((List!25804 0))(
  ( (Nil!25801) (Cons!25800 (h!27009 (_ BitVec 64)) (t!37788 List!25804)) )
))
(declare-fun arrayNoDuplicates!0 (array!75806 (_ BitVec 32) List!25804) Bool)

(assert (=> b!1173421 (= res!779276 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25801))))

(declare-fun b!1173422 () Bool)

(declare-fun tp_is_empty!29515 () Bool)

(assert (=> b!1173422 (= e!667017 tp_is_empty!29515)))

(declare-fun b!1173424 () Bool)

(declare-fun e!667010 () Bool)

(assert (=> b!1173424 (= e!667010 (not e!667015))))

(declare-fun res!779272 () Bool)

(assert (=> b!1173424 (=> res!779272 e!667015)))

(assert (=> b!1173424 (= res!779272 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173424 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528901 () Unit!38605)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75806 (_ BitVec 64) (_ BitVec 32)) Unit!38605)

(assert (=> b!1173424 (= lt!528901 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173425 () Bool)

(assert (=> b!1173425 (= e!667021 e!667010)))

(declare-fun res!779273 () Bool)

(assert (=> b!1173425 (=> (not res!779273) (not e!667010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75806 (_ BitVec 32)) Bool)

(assert (=> b!1173425 (= res!779273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528911 mask!1564))))

(assert (=> b!1173425 (= lt!528911 (array!75807 (store (arr!36549 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37086 _keys!1208)))))

(declare-fun mapIsEmpty!46100 () Bool)

(assert (=> mapIsEmpty!46100 mapRes!46100))

(declare-fun b!1173426 () Bool)

(declare-fun res!779267 () Bool)

(assert (=> b!1173426 (=> (not res!779267) (not e!667021))))

(assert (=> b!1173426 (= res!779267 (and (= (size!37087 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37086 _keys!1208) (size!37087 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173427 () Bool)

(declare-fun e!667019 () Bool)

(declare-fun e!667012 () Bool)

(assert (=> b!1173427 (= e!667019 (and e!667012 mapRes!46100))))

(declare-fun condMapEmpty!46100 () Bool)

(declare-fun mapDefault!46100 () ValueCell!14048)

