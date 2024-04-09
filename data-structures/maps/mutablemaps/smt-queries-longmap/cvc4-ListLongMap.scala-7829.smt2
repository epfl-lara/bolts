; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97758 () Bool)

(assert start!97758)

(declare-fun b!1117291 () Bool)

(declare-fun res!746176 () Bool)

(declare-fun e!636523 () Bool)

(assert (=> b!1117291 (=> (not res!746176) (not e!636523))))

(declare-datatypes ((array!72740 0))(
  ( (array!72741 (arr!35019 (Array (_ BitVec 32) (_ BitVec 64))) (size!35556 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72740)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1117291 (= res!746176 (= (select (arr!35019 _keys!1208) i!673) k!934))))

(declare-fun b!1117292 () Bool)

(declare-fun res!746179 () Bool)

(assert (=> b!1117292 (=> (not res!746179) (not e!636523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117292 (= res!746179 (validKeyInArray!0 k!934))))

(declare-fun b!1117293 () Bool)

(declare-fun e!636525 () Bool)

(declare-fun tp_is_empty!27953 () Bool)

(assert (=> b!1117293 (= e!636525 tp_is_empty!27953)))

(declare-fun b!1117294 () Bool)

(declare-fun e!636527 () Bool)

(assert (=> b!1117294 (= e!636527 (not true))))

(declare-fun arrayContainsKey!0 (array!72740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117294 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36575 0))(
  ( (Unit!36576) )
))
(declare-fun lt!497246 () Unit!36575)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72740 (_ BitVec 64) (_ BitVec 32)) Unit!36575)

(assert (=> b!1117294 (= lt!497246 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!746172 () Bool)

(assert (=> start!97758 (=> (not res!746172) (not e!636523))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97758 (= res!746172 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35556 _keys!1208))))))

(assert (=> start!97758 e!636523))

(declare-fun array_inv!26772 (array!72740) Bool)

(assert (=> start!97758 (array_inv!26772 _keys!1208)))

(assert (=> start!97758 true))

(declare-datatypes ((V!42397 0))(
  ( (V!42398 (val!14033 Int)) )
))
(declare-datatypes ((ValueCell!13267 0))(
  ( (ValueCellFull!13267 (v!16667 V!42397)) (EmptyCell!13267) )
))
(declare-datatypes ((array!72742 0))(
  ( (array!72743 (arr!35020 (Array (_ BitVec 32) ValueCell!13267)) (size!35557 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72742)

(declare-fun e!636526 () Bool)

(declare-fun array_inv!26773 (array!72742) Bool)

(assert (=> start!97758 (and (array_inv!26773 _values!996) e!636526)))

(declare-fun b!1117295 () Bool)

(declare-fun res!746177 () Bool)

(assert (=> b!1117295 (=> (not res!746177) (not e!636523))))

(declare-datatypes ((List!24489 0))(
  ( (Nil!24486) (Cons!24485 (h!25694 (_ BitVec 64)) (t!34977 List!24489)) )
))
(declare-fun arrayNoDuplicates!0 (array!72740 (_ BitVec 32) List!24489) Bool)

(assert (=> b!1117295 (= res!746177 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24486))))

(declare-fun b!1117296 () Bool)

(assert (=> b!1117296 (= e!636523 e!636527)))

(declare-fun res!746180 () Bool)

(assert (=> b!1117296 (=> (not res!746180) (not e!636527))))

(declare-fun lt!497247 () array!72740)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72740 (_ BitVec 32)) Bool)

(assert (=> b!1117296 (= res!746180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497247 mask!1564))))

(assert (=> b!1117296 (= lt!497247 (array!72741 (store (arr!35019 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35556 _keys!1208)))))

(declare-fun b!1117297 () Bool)

(declare-fun res!746174 () Bool)

(assert (=> b!1117297 (=> (not res!746174) (not e!636527))))

(assert (=> b!1117297 (= res!746174 (arrayNoDuplicates!0 lt!497247 #b00000000000000000000000000000000 Nil!24486))))

(declare-fun b!1117298 () Bool)

(declare-fun res!746178 () Bool)

(assert (=> b!1117298 (=> (not res!746178) (not e!636523))))

(assert (=> b!1117298 (= res!746178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43747 () Bool)

(declare-fun mapRes!43747 () Bool)

(assert (=> mapIsEmpty!43747 mapRes!43747))

(declare-fun b!1117299 () Bool)

(declare-fun e!636524 () Bool)

(assert (=> b!1117299 (= e!636526 (and e!636524 mapRes!43747))))

(declare-fun condMapEmpty!43747 () Bool)

(declare-fun mapDefault!43747 () ValueCell!13267)

