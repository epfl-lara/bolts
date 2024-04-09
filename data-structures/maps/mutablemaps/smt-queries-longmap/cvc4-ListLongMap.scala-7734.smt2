; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97172 () Bool)

(assert start!97172)

(declare-fun b!1104878 () Bool)

(declare-fun res!737272 () Bool)

(declare-fun e!630674 () Bool)

(assert (=> b!1104878 (=> (not res!737272) (not e!630674))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104878 (= res!737272 (validKeyInArray!0 k!934))))

(declare-fun b!1104879 () Bool)

(declare-fun res!737278 () Bool)

(assert (=> b!1104879 (=> (not res!737278) (not e!630674))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71640 0))(
  ( (array!71641 (arr!34470 (Array (_ BitVec 32) (_ BitVec 64))) (size!35007 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71640)

(assert (=> b!1104879 (= res!737278 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35007 _keys!1208))))))

(declare-fun mapNonEmpty!42889 () Bool)

(declare-fun mapRes!42889 () Bool)

(declare-fun tp!81810 () Bool)

(declare-fun e!630675 () Bool)

(assert (=> mapNonEmpty!42889 (= mapRes!42889 (and tp!81810 e!630675))))

(declare-fun mapKey!42889 () (_ BitVec 32))

(declare-datatypes ((V!41637 0))(
  ( (V!41638 (val!13748 Int)) )
))
(declare-datatypes ((ValueCell!12982 0))(
  ( (ValueCellFull!12982 (v!16382 V!41637)) (EmptyCell!12982) )
))
(declare-fun mapValue!42889 () ValueCell!12982)

(declare-fun mapRest!42889 () (Array (_ BitVec 32) ValueCell!12982))

(declare-datatypes ((array!71642 0))(
  ( (array!71643 (arr!34471 (Array (_ BitVec 32) ValueCell!12982)) (size!35008 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71642)

(assert (=> mapNonEmpty!42889 (= (arr!34471 _values!996) (store mapRest!42889 mapKey!42889 mapValue!42889))))

(declare-fun b!1104880 () Bool)

(declare-fun res!737274 () Bool)

(assert (=> b!1104880 (=> (not res!737274) (not e!630674))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1104880 (= res!737274 (and (= (size!35008 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35007 _keys!1208) (size!35008 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104882 () Bool)

(declare-fun res!737277 () Bool)

(assert (=> b!1104882 (=> (not res!737277) (not e!630674))))

(assert (=> b!1104882 (= res!737277 (= (select (arr!34470 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!42889 () Bool)

(assert (=> mapIsEmpty!42889 mapRes!42889))

(declare-fun b!1104883 () Bool)

(declare-fun e!630676 () Bool)

(assert (=> b!1104883 (= e!630676 (not true))))

(declare-fun arrayContainsKey!0 (array!71640 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104883 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36189 0))(
  ( (Unit!36190) )
))
(declare-fun lt!495197 () Unit!36189)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71640 (_ BitVec 64) (_ BitVec 32)) Unit!36189)

(assert (=> b!1104883 (= lt!495197 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1104884 () Bool)

(declare-fun e!630678 () Bool)

(declare-fun tp_is_empty!27383 () Bool)

(assert (=> b!1104884 (= e!630678 tp_is_empty!27383)))

(declare-fun b!1104885 () Bool)

(declare-fun e!630679 () Bool)

(assert (=> b!1104885 (= e!630679 (and e!630678 mapRes!42889))))

(declare-fun condMapEmpty!42889 () Bool)

(declare-fun mapDefault!42889 () ValueCell!12982)

