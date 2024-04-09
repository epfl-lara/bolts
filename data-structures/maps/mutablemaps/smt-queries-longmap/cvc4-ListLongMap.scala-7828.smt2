; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97752 () Bool)

(assert start!97752)

(declare-fun b!1117174 () Bool)

(declare-fun e!636468 () Bool)

(assert (=> b!1117174 (= e!636468 (not true))))

(declare-datatypes ((array!72728 0))(
  ( (array!72729 (arr!35013 (Array (_ BitVec 32) (_ BitVec 64))) (size!35550 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72728)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117174 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36571 0))(
  ( (Unit!36572) )
))
(declare-fun lt!497228 () Unit!36571)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72728 (_ BitVec 64) (_ BitVec 32)) Unit!36571)

(assert (=> b!1117174 (= lt!497228 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1117175 () Bool)

(declare-fun e!636473 () Bool)

(declare-fun tp_is_empty!27947 () Bool)

(assert (=> b!1117175 (= e!636473 tp_is_empty!27947)))

(declare-fun b!1117176 () Bool)

(declare-fun e!636472 () Bool)

(assert (=> b!1117176 (= e!636472 tp_is_empty!27947)))

(declare-fun mapNonEmpty!43738 () Bool)

(declare-fun mapRes!43738 () Bool)

(declare-fun tp!82983 () Bool)

(assert (=> mapNonEmpty!43738 (= mapRes!43738 (and tp!82983 e!636473))))

(declare-datatypes ((V!42389 0))(
  ( (V!42390 (val!14030 Int)) )
))
(declare-datatypes ((ValueCell!13264 0))(
  ( (ValueCellFull!13264 (v!16664 V!42389)) (EmptyCell!13264) )
))
(declare-fun mapValue!43738 () ValueCell!13264)

(declare-fun mapRest!43738 () (Array (_ BitVec 32) ValueCell!13264))

(declare-fun mapKey!43738 () (_ BitVec 32))

(declare-datatypes ((array!72730 0))(
  ( (array!72731 (arr!35014 (Array (_ BitVec 32) ValueCell!13264)) (size!35551 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72730)

(assert (=> mapNonEmpty!43738 (= (arr!35014 _values!996) (store mapRest!43738 mapKey!43738 mapValue!43738))))

(declare-fun b!1117177 () Bool)

(declare-fun res!746085 () Bool)

(declare-fun e!636469 () Bool)

(assert (=> b!1117177 (=> (not res!746085) (not e!636469))))

(assert (=> b!1117177 (= res!746085 (= (select (arr!35013 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43738 () Bool)

(assert (=> mapIsEmpty!43738 mapRes!43738))

(declare-fun res!746088 () Bool)

(assert (=> start!97752 (=> (not res!746088) (not e!636469))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97752 (= res!746088 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35550 _keys!1208))))))

(assert (=> start!97752 e!636469))

(declare-fun array_inv!26768 (array!72728) Bool)

(assert (=> start!97752 (array_inv!26768 _keys!1208)))

(assert (=> start!97752 true))

(declare-fun e!636471 () Bool)

(declare-fun array_inv!26769 (array!72730) Bool)

(assert (=> start!97752 (and (array_inv!26769 _values!996) e!636471)))

(declare-fun b!1117178 () Bool)

(declare-fun res!746082 () Bool)

(assert (=> b!1117178 (=> (not res!746082) (not e!636469))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117178 (= res!746082 (validMask!0 mask!1564))))

(declare-fun b!1117179 () Bool)

(assert (=> b!1117179 (= e!636471 (and e!636472 mapRes!43738))))

(declare-fun condMapEmpty!43738 () Bool)

(declare-fun mapDefault!43738 () ValueCell!13264)

