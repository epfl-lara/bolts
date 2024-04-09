; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101572 () Bool)

(assert start!101572)

(declare-fun b_free!26323 () Bool)

(declare-fun b_next!26323 () Bool)

(assert (=> start!101572 (= b_free!26323 (not b_next!26323))))

(declare-fun tp!92007 () Bool)

(declare-fun b_and!43863 () Bool)

(assert (=> start!101572 (= tp!92007 b_and!43863)))

(declare-fun b!1220802 () Bool)

(declare-fun e!693276 () Bool)

(declare-fun tp_is_empty!31027 () Bool)

(assert (=> b!1220802 (= e!693276 tp_is_empty!31027)))

(declare-fun b!1220803 () Bool)

(declare-fun e!693272 () Bool)

(declare-fun e!693271 () Bool)

(assert (=> b!1220803 (= e!693272 e!693271)))

(declare-fun res!811089 () Bool)

(assert (=> b!1220803 (=> res!811089 e!693271)))

(declare-datatypes ((array!78808 0))(
  ( (array!78809 (arr!38030 (Array (_ BitVec 32) (_ BitVec 64))) (size!38567 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78808)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220803 (= res!811089 (not (validKeyInArray!0 (select (arr!38030 _keys!1208) from!1455))))))

(declare-datatypes ((V!46497 0))(
  ( (V!46498 (val!15570 Int)) )
))
(declare-datatypes ((tuple2!20184 0))(
  ( (tuple2!20185 (_1!10102 (_ BitVec 64)) (_2!10102 V!46497)) )
))
(declare-datatypes ((List!27000 0))(
  ( (Nil!26997) (Cons!26996 (h!28205 tuple2!20184) (t!40310 List!27000)) )
))
(declare-datatypes ((ListLongMap!18165 0))(
  ( (ListLongMap!18166 (toList!9098 List!27000)) )
))
(declare-fun lt!555218 () ListLongMap!18165)

(declare-fun lt!555215 () ListLongMap!18165)

(assert (=> b!1220803 (= lt!555218 lt!555215)))

(declare-fun lt!555210 () ListLongMap!18165)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1943 (ListLongMap!18165 (_ BitVec 64)) ListLongMap!18165)

(assert (=> b!1220803 (= lt!555215 (-!1943 lt!555210 k!934))))

(declare-fun zeroValue!944 () V!46497)

(declare-fun lt!555212 () array!78808)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14804 0))(
  ( (ValueCellFull!14804 (v!18229 V!46497)) (EmptyCell!14804) )
))
(declare-datatypes ((array!78810 0))(
  ( (array!78811 (arr!38031 (Array (_ BitVec 32) ValueCell!14804)) (size!38568 (_ BitVec 32))) )
))
(declare-fun lt!555214 () array!78810)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46497)

(declare-fun getCurrentListMapNoExtraKeys!5496 (array!78808 array!78810 (_ BitVec 32) (_ BitVec 32) V!46497 V!46497 (_ BitVec 32) Int) ListLongMap!18165)

(assert (=> b!1220803 (= lt!555218 (getCurrentListMapNoExtraKeys!5496 lt!555212 lt!555214 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!78810)

(assert (=> b!1220803 (= lt!555210 (getCurrentListMapNoExtraKeys!5496 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40364 0))(
  ( (Unit!40365) )
))
(declare-fun lt!555213 () Unit!40364)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1145 (array!78808 array!78810 (_ BitVec 32) (_ BitVec 32) V!46497 V!46497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40364)

(assert (=> b!1220803 (= lt!555213 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1145 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!48430 () Bool)

(declare-fun mapRes!48430 () Bool)

(assert (=> mapIsEmpty!48430 mapRes!48430))

(declare-fun b!1220804 () Bool)

(declare-fun e!693279 () Bool)

(assert (=> b!1220804 (= e!693271 e!693279)))

(declare-fun res!811083 () Bool)

(assert (=> b!1220804 (=> res!811083 e!693279)))

(assert (=> b!1220804 (= res!811083 (not (= (select (arr!38030 _keys!1208) from!1455) k!934)))))

(declare-fun e!693277 () Bool)

(assert (=> b!1220804 e!693277))

(declare-fun res!811076 () Bool)

(assert (=> b!1220804 (=> (not res!811076) (not e!693277))))

(declare-fun lt!555211 () ListLongMap!18165)

(declare-fun lt!555217 () V!46497)

(declare-fun +!4071 (ListLongMap!18165 tuple2!20184) ListLongMap!18165)

(declare-fun get!19447 (ValueCell!14804 V!46497) V!46497)

(assert (=> b!1220804 (= res!811076 (= lt!555211 (+!4071 lt!555215 (tuple2!20185 (select (arr!38030 _keys!1208) from!1455) (get!19447 (select (arr!38031 _values!996) from!1455) lt!555217)))))))

(declare-fun mapNonEmpty!48430 () Bool)

(declare-fun tp!92006 () Bool)

(declare-fun e!693280 () Bool)

(assert (=> mapNonEmpty!48430 (= mapRes!48430 (and tp!92006 e!693280))))

(declare-fun mapKey!48430 () (_ BitVec 32))

(declare-fun mapRest!48430 () (Array (_ BitVec 32) ValueCell!14804))

(declare-fun mapValue!48430 () ValueCell!14804)

(assert (=> mapNonEmpty!48430 (= (arr!38031 _values!996) (store mapRest!48430 mapKey!48430 mapValue!48430))))

(declare-fun b!1220805 () Bool)

(declare-fun e!693275 () Bool)

(assert (=> b!1220805 (= e!693275 (and e!693276 mapRes!48430))))

(declare-fun condMapEmpty!48430 () Bool)

(declare-fun mapDefault!48430 () ValueCell!14804)

