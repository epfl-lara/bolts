; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99230 () Bool)

(assert start!99230)

(declare-fun b_free!24799 () Bool)

(declare-fun b_next!24799 () Bool)

(assert (=> start!99230 (= b_free!24799 (not b_next!24799))))

(declare-fun tp!87108 () Bool)

(declare-fun b_and!40461 () Bool)

(assert (=> start!99230 (= tp!87108 b_and!40461)))

(declare-fun b!1167766 () Bool)

(declare-fun res!774811 () Bool)

(declare-fun e!663754 () Bool)

(assert (=> b!1167766 (=> (not res!774811) (not e!663754))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167766 (= res!774811 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45818 () Bool)

(declare-fun mapRes!45818 () Bool)

(assert (=> mapIsEmpty!45818 mapRes!45818))

(declare-fun b!1167767 () Bool)

(declare-fun e!663750 () Bool)

(declare-fun tp_is_empty!29329 () Bool)

(assert (=> b!1167767 (= e!663750 tp_is_empty!29329)))

(declare-fun b!1167768 () Bool)

(declare-fun e!663752 () Bool)

(declare-fun e!663749 () Bool)

(assert (=> b!1167768 (= e!663752 e!663749)))

(declare-fun res!774808 () Bool)

(assert (=> b!1167768 (=> res!774808 e!663749)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167768 (= res!774808 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44233 0))(
  ( (V!44234 (val!14721 Int)) )
))
(declare-datatypes ((ValueCell!13955 0))(
  ( (ValueCellFull!13955 (v!17359 V!44233)) (EmptyCell!13955) )
))
(declare-datatypes ((array!75436 0))(
  ( (array!75437 (arr!36365 (Array (_ BitVec 32) ValueCell!13955)) (size!36902 (_ BitVec 32))) )
))
(declare-fun lt!525732 () array!75436)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18866 0))(
  ( (tuple2!18867 (_1!9443 (_ BitVec 64)) (_2!9443 V!44233)) )
))
(declare-datatypes ((List!25642 0))(
  ( (Nil!25639) (Cons!25638 (h!26847 tuple2!18866) (t!37440 List!25642)) )
))
(declare-datatypes ((ListLongMap!16847 0))(
  ( (ListLongMap!16848 (toList!8439 List!25642)) )
))
(declare-fun lt!525735 () ListLongMap!16847)

(declare-fun minValue!944 () V!44233)

(declare-fun zeroValue!944 () V!44233)

(declare-datatypes ((array!75438 0))(
  ( (array!75439 (arr!36366 (Array (_ BitVec 32) (_ BitVec 64))) (size!36903 (_ BitVec 32))) )
))
(declare-fun lt!525734 () array!75438)

(declare-fun getCurrentListMapNoExtraKeys!4872 (array!75438 array!75436 (_ BitVec 32) (_ BitVec 32) V!44233 V!44233 (_ BitVec 32) Int) ListLongMap!16847)

(assert (=> b!1167768 (= lt!525735 (getCurrentListMapNoExtraKeys!4872 lt!525734 lt!525732 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!75436)

(declare-fun dynLambda!2864 (Int (_ BitVec 64)) V!44233)

(assert (=> b!1167768 (= lt!525732 (array!75437 (store (arr!36365 _values!996) i!673 (ValueCellFull!13955 (dynLambda!2864 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36902 _values!996)))))

(declare-fun lt!525730 () ListLongMap!16847)

(declare-fun _keys!1208 () array!75438)

(assert (=> b!1167768 (= lt!525730 (getCurrentListMapNoExtraKeys!4872 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!774809 () Bool)

(assert (=> start!99230 (=> (not res!774809) (not e!663754))))

(assert (=> start!99230 (= res!774809 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36903 _keys!1208))))))

(assert (=> start!99230 e!663754))

(assert (=> start!99230 tp_is_empty!29329))

(declare-fun array_inv!27678 (array!75438) Bool)

(assert (=> start!99230 (array_inv!27678 _keys!1208)))

(assert (=> start!99230 true))

(assert (=> start!99230 tp!87108))

(declare-fun e!663753 () Bool)

(declare-fun array_inv!27679 (array!75436) Bool)

(assert (=> start!99230 (and (array_inv!27679 _values!996) e!663753)))

(declare-fun b!1167769 () Bool)

(assert (=> b!1167769 (= e!663753 (and e!663750 mapRes!45818))))

(declare-fun condMapEmpty!45818 () Bool)

(declare-fun mapDefault!45818 () ValueCell!13955)

