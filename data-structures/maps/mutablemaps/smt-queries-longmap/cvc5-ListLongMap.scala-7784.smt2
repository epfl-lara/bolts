; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97484 () Bool)

(assert start!97484)

(declare-fun b_free!23419 () Bool)

(declare-fun b_next!23419 () Bool)

(assert (=> start!97484 (= b_free!23419 (not b_next!23419))))

(declare-fun tp!82557 () Bool)

(declare-fun b_and!37695 () Bool)

(assert (=> start!97484 (= tp!82557 b_and!37695)))

(declare-fun b!1111843 () Bool)

(declare-fun e!634003 () Bool)

(declare-fun e!634004 () Bool)

(assert (=> b!1111843 (= e!634003 e!634004)))

(declare-fun res!742045 () Bool)

(assert (=> b!1111843 (=> (not res!742045) (not e!634004))))

(declare-datatypes ((array!72218 0))(
  ( (array!72219 (arr!34758 (Array (_ BitVec 32) (_ BitVec 64))) (size!35295 (_ BitVec 32))) )
))
(declare-fun lt!496399 () array!72218)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72218 (_ BitVec 32)) Bool)

(assert (=> b!1111843 (= res!742045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496399 mask!1564))))

(declare-fun _keys!1208 () array!72218)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1111843 (= lt!496399 (array!72219 (store (arr!34758 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35295 _keys!1208)))))

(declare-fun b!1111844 () Bool)

(declare-fun res!742041 () Bool)

(assert (=> b!1111844 (=> (not res!742041) (not e!634003))))

(assert (=> b!1111844 (= res!742041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1111845 () Bool)

(declare-fun res!742044 () Bool)

(assert (=> b!1111845 (=> (not res!742044) (not e!634003))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42033 0))(
  ( (V!42034 (val!13896 Int)) )
))
(declare-datatypes ((ValueCell!13130 0))(
  ( (ValueCellFull!13130 (v!16530 V!42033)) (EmptyCell!13130) )
))
(declare-datatypes ((array!72220 0))(
  ( (array!72221 (arr!34759 (Array (_ BitVec 32) ValueCell!13130)) (size!35296 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72220)

(assert (=> b!1111845 (= res!742044 (and (= (size!35296 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35295 _keys!1208) (size!35296 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1111846 () Bool)

(declare-fun res!742040 () Bool)

(assert (=> b!1111846 (=> (not res!742040) (not e!634003))))

(assert (=> b!1111846 (= res!742040 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35295 _keys!1208))))))

(declare-fun b!1111847 () Bool)

(declare-fun e!634006 () Bool)

(assert (=> b!1111847 (= e!634006 true)))

(declare-fun e!634000 () Bool)

(assert (=> b!1111847 e!634000))

(declare-fun c!109280 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1111847 (= c!109280 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!42033)

(declare-datatypes ((Unit!36399 0))(
  ( (Unit!36400) )
))
(declare-fun lt!496401 () Unit!36399)

(declare-fun zeroValue!944 () V!42033)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!305 (array!72218 array!72220 (_ BitVec 32) (_ BitVec 32) V!42033 V!42033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36399)

(assert (=> b!1111847 (= lt!496401 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!305 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1111848 () Bool)

(declare-fun res!742039 () Bool)

(assert (=> b!1111848 (=> (not res!742039) (not e!634004))))

(declare-datatypes ((List!24384 0))(
  ( (Nil!24381) (Cons!24380 (h!25589 (_ BitVec 64)) (t!34856 List!24384)) )
))
(declare-fun arrayNoDuplicates!0 (array!72218 (_ BitVec 32) List!24384) Bool)

(assert (=> b!1111848 (= res!742039 (arrayNoDuplicates!0 lt!496399 #b00000000000000000000000000000000 Nil!24381))))

(declare-fun b!1111849 () Bool)

(assert (=> b!1111849 (= e!634004 (not e!634006))))

(declare-fun res!742047 () Bool)

(assert (=> b!1111849 (=> res!742047 e!634006)))

(assert (=> b!1111849 (= res!742047 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35295 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72218 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1111849 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!496400 () Unit!36399)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72218 (_ BitVec 64) (_ BitVec 32)) Unit!36399)

(assert (=> b!1111849 (= lt!496400 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!742038 () Bool)

(assert (=> start!97484 (=> (not res!742038) (not e!634003))))

(assert (=> start!97484 (= res!742038 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35295 _keys!1208))))))

(assert (=> start!97484 e!634003))

(declare-fun tp_is_empty!27679 () Bool)

(assert (=> start!97484 tp_is_empty!27679))

(declare-fun array_inv!26600 (array!72218) Bool)

(assert (=> start!97484 (array_inv!26600 _keys!1208)))

(assert (=> start!97484 true))

(assert (=> start!97484 tp!82557))

(declare-fun e!634001 () Bool)

(declare-fun array_inv!26601 (array!72220) Bool)

(assert (=> start!97484 (and (array_inv!26601 _values!996) e!634001)))

(declare-fun mapNonEmpty!43336 () Bool)

(declare-fun mapRes!43336 () Bool)

(declare-fun tp!82556 () Bool)

(declare-fun e!634002 () Bool)

(assert (=> mapNonEmpty!43336 (= mapRes!43336 (and tp!82556 e!634002))))

(declare-fun mapKey!43336 () (_ BitVec 32))

(declare-fun mapRest!43336 () (Array (_ BitVec 32) ValueCell!13130))

(declare-fun mapValue!43336 () ValueCell!13130)

(assert (=> mapNonEmpty!43336 (= (arr!34759 _values!996) (store mapRest!43336 mapKey!43336 mapValue!43336))))

(declare-fun b!1111850 () Bool)

(declare-fun e!634005 () Bool)

(assert (=> b!1111850 (= e!634001 (and e!634005 mapRes!43336))))

(declare-fun condMapEmpty!43336 () Bool)

(declare-fun mapDefault!43336 () ValueCell!13130)

