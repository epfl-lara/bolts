; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97764 () Bool)

(assert start!97764)

(declare-fun b!1117408 () Bool)

(declare-fun e!636581 () Bool)

(declare-fun e!636578 () Bool)

(assert (=> b!1117408 (= e!636581 e!636578)))

(declare-fun res!746262 () Bool)

(assert (=> b!1117408 (=> (not res!746262) (not e!636578))))

(declare-datatypes ((array!72752 0))(
  ( (array!72753 (arr!35025 (Array (_ BitVec 32) (_ BitVec 64))) (size!35562 (_ BitVec 32))) )
))
(declare-fun lt!497264 () array!72752)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72752 (_ BitVec 32)) Bool)

(assert (=> b!1117408 (= res!746262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497264 mask!1564))))

(declare-fun _keys!1208 () array!72752)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117408 (= lt!497264 (array!72753 (store (arr!35025 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35562 _keys!1208)))))

(declare-fun b!1117409 () Bool)

(declare-fun res!746271 () Bool)

(assert (=> b!1117409 (=> (not res!746271) (not e!636578))))

(declare-datatypes ((List!24492 0))(
  ( (Nil!24489) (Cons!24488 (h!25697 (_ BitVec 64)) (t!34980 List!24492)) )
))
(declare-fun arrayNoDuplicates!0 (array!72752 (_ BitVec 32) List!24492) Bool)

(assert (=> b!1117409 (= res!746271 (arrayNoDuplicates!0 lt!497264 #b00000000000000000000000000000000 Nil!24489))))

(declare-fun b!1117410 () Bool)

(declare-fun res!746266 () Bool)

(assert (=> b!1117410 (=> (not res!746266) (not e!636581))))

(assert (=> b!1117410 (= res!746266 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35562 _keys!1208))))))

(declare-fun b!1117411 () Bool)

(declare-fun e!636577 () Bool)

(declare-fun tp_is_empty!27959 () Bool)

(assert (=> b!1117411 (= e!636577 tp_is_empty!27959)))

(declare-fun b!1117412 () Bool)

(assert (=> b!1117412 (= e!636578 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117412 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36581 0))(
  ( (Unit!36582) )
))
(declare-fun lt!497265 () Unit!36581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72752 (_ BitVec 64) (_ BitVec 32)) Unit!36581)

(assert (=> b!1117412 (= lt!497265 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!746263 () Bool)

(assert (=> start!97764 (=> (not res!746263) (not e!636581))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97764 (= res!746263 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35562 _keys!1208))))))

(assert (=> start!97764 e!636581))

(declare-fun array_inv!26778 (array!72752) Bool)

(assert (=> start!97764 (array_inv!26778 _keys!1208)))

(assert (=> start!97764 true))

(declare-datatypes ((V!42405 0))(
  ( (V!42406 (val!14036 Int)) )
))
(declare-datatypes ((ValueCell!13270 0))(
  ( (ValueCellFull!13270 (v!16670 V!42405)) (EmptyCell!13270) )
))
(declare-datatypes ((array!72754 0))(
  ( (array!72755 (arr!35026 (Array (_ BitVec 32) ValueCell!13270)) (size!35563 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72754)

(declare-fun e!636580 () Bool)

(declare-fun array_inv!26779 (array!72754) Bool)

(assert (=> start!97764 (and (array_inv!26779 _values!996) e!636580)))

(declare-fun b!1117413 () Bool)

(declare-fun res!746270 () Bool)

(assert (=> b!1117413 (=> (not res!746270) (not e!636581))))

(assert (=> b!1117413 (= res!746270 (= (select (arr!35025 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43756 () Bool)

(declare-fun mapRes!43756 () Bool)

(declare-fun tp!83001 () Bool)

(assert (=> mapNonEmpty!43756 (= mapRes!43756 (and tp!83001 e!636577))))

(declare-fun mapKey!43756 () (_ BitVec 32))

(declare-fun mapValue!43756 () ValueCell!13270)

(declare-fun mapRest!43756 () (Array (_ BitVec 32) ValueCell!13270))

(assert (=> mapNonEmpty!43756 (= (arr!35026 _values!996) (store mapRest!43756 mapKey!43756 mapValue!43756))))

(declare-fun b!1117414 () Bool)

(declare-fun res!746269 () Bool)

(assert (=> b!1117414 (=> (not res!746269) (not e!636581))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1117414 (= res!746269 (and (= (size!35563 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35562 _keys!1208) (size!35563 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117415 () Bool)

(declare-fun res!746265 () Bool)

(assert (=> b!1117415 (=> (not res!746265) (not e!636581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117415 (= res!746265 (validMask!0 mask!1564))))

(declare-fun b!1117416 () Bool)

(declare-fun res!746264 () Bool)

(assert (=> b!1117416 (=> (not res!746264) (not e!636581))))

(assert (=> b!1117416 (= res!746264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117417 () Bool)

(declare-fun e!636576 () Bool)

(assert (=> b!1117417 (= e!636580 (and e!636576 mapRes!43756))))

(declare-fun condMapEmpty!43756 () Bool)

(declare-fun mapDefault!43756 () ValueCell!13270)

