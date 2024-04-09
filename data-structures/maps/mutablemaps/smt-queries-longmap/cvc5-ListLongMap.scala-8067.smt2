; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99304 () Bool)

(assert start!99304)

(declare-fun b_free!24847 () Bool)

(declare-fun b_next!24847 () Bool)

(assert (=> start!99304 (= b_free!24847 (not b_next!24847))))

(declare-fun tp!87255 () Bool)

(declare-fun b_and!40575 () Bool)

(assert (=> start!99304 (= tp!87255 b_and!40575)))

(declare-fun b!1169106 () Bool)

(declare-fun res!775798 () Bool)

(declare-fun e!664497 () Bool)

(assert (=> b!1169106 (=> (not res!775798) (not e!664497))))

(declare-datatypes ((array!75530 0))(
  ( (array!75531 (arr!36411 (Array (_ BitVec 32) (_ BitVec 64))) (size!36948 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75530)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75530 (_ BitVec 32)) Bool)

(assert (=> b!1169106 (= res!775798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169107 () Bool)

(declare-fun e!664498 () Bool)

(declare-fun e!664494 () Bool)

(assert (=> b!1169107 (= e!664498 e!664494)))

(declare-fun res!775805 () Bool)

(assert (=> b!1169107 (=> res!775805 e!664494)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169107 (= res!775805 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44297 0))(
  ( (V!44298 (val!14745 Int)) )
))
(declare-fun zeroValue!944 () V!44297)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13979 0))(
  ( (ValueCellFull!13979 (v!17384 V!44297)) (EmptyCell!13979) )
))
(declare-datatypes ((array!75532 0))(
  ( (array!75533 (arr!36412 (Array (_ BitVec 32) ValueCell!13979)) (size!36949 (_ BitVec 32))) )
))
(declare-fun lt!526392 () array!75532)

(declare-datatypes ((tuple2!18908 0))(
  ( (tuple2!18909 (_1!9464 (_ BitVec 64)) (_2!9464 V!44297)) )
))
(declare-datatypes ((List!25680 0))(
  ( (Nil!25677) (Cons!25676 (h!26885 tuple2!18908) (t!37526 List!25680)) )
))
(declare-datatypes ((ListLongMap!16889 0))(
  ( (ListLongMap!16890 (toList!8460 List!25680)) )
))
(declare-fun lt!526396 () ListLongMap!16889)

(declare-fun lt!526393 () array!75530)

(declare-fun minValue!944 () V!44297)

(declare-fun getCurrentListMapNoExtraKeys!4893 (array!75530 array!75532 (_ BitVec 32) (_ BitVec 32) V!44297 V!44297 (_ BitVec 32) Int) ListLongMap!16889)

(assert (=> b!1169107 (= lt!526396 (getCurrentListMapNoExtraKeys!4893 lt!526393 lt!526392 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!526395 () V!44297)

(declare-fun _values!996 () array!75532)

(assert (=> b!1169107 (= lt!526392 (array!75533 (store (arr!36412 _values!996) i!673 (ValueCellFull!13979 lt!526395)) (size!36949 _values!996)))))

(declare-fun dynLambda!2885 (Int (_ BitVec 64)) V!44297)

(assert (=> b!1169107 (= lt!526395 (dynLambda!2885 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526394 () ListLongMap!16889)

(assert (=> b!1169107 (= lt!526394 (getCurrentListMapNoExtraKeys!4893 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169108 () Bool)

(declare-fun res!775804 () Bool)

(assert (=> b!1169108 (=> (not res!775804) (not e!664497))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169108 (= res!775804 (validKeyInArray!0 k!934))))

(declare-fun b!1169109 () Bool)

(declare-fun e!664493 () Bool)

(assert (=> b!1169109 (= e!664497 e!664493)))

(declare-fun res!775802 () Bool)

(assert (=> b!1169109 (=> (not res!775802) (not e!664493))))

(assert (=> b!1169109 (= res!775802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526393 mask!1564))))

(assert (=> b!1169109 (= lt!526393 (array!75531 (store (arr!36411 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36948 _keys!1208)))))

(declare-fun b!1169110 () Bool)

(declare-fun res!775796 () Bool)

(assert (=> b!1169110 (=> (not res!775796) (not e!664497))))

(assert (=> b!1169110 (= res!775796 (= (select (arr!36411 _keys!1208) i!673) k!934))))

(declare-fun res!775803 () Bool)

(assert (=> start!99304 (=> (not res!775803) (not e!664497))))

(assert (=> start!99304 (= res!775803 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36948 _keys!1208))))))

(assert (=> start!99304 e!664497))

(declare-fun tp_is_empty!29377 () Bool)

(assert (=> start!99304 tp_is_empty!29377))

(declare-fun array_inv!27708 (array!75530) Bool)

(assert (=> start!99304 (array_inv!27708 _keys!1208)))

(assert (=> start!99304 true))

(assert (=> start!99304 tp!87255))

(declare-fun e!664495 () Bool)

(declare-fun array_inv!27709 (array!75532) Bool)

(assert (=> start!99304 (and (array_inv!27709 _values!996) e!664495)))

(declare-fun b!1169111 () Bool)

(declare-fun res!775807 () Bool)

(assert (=> b!1169111 (=> (not res!775807) (not e!664497))))

(declare-datatypes ((List!25681 0))(
  ( (Nil!25678) (Cons!25677 (h!26886 (_ BitVec 64)) (t!37527 List!25681)) )
))
(declare-fun arrayNoDuplicates!0 (array!75530 (_ BitVec 32) List!25681) Bool)

(assert (=> b!1169111 (= res!775807 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25678))))

(declare-fun b!1169112 () Bool)

(declare-fun e!664496 () Bool)

(declare-fun mapRes!45893 () Bool)

(assert (=> b!1169112 (= e!664495 (and e!664496 mapRes!45893))))

(declare-fun condMapEmpty!45893 () Bool)

(declare-fun mapDefault!45893 () ValueCell!13979)

