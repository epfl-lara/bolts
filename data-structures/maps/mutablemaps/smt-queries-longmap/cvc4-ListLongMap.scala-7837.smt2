; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97806 () Bool)

(assert start!97806)

(declare-fun b_free!23471 () Bool)

(declare-fun b_next!23471 () Bool)

(assert (=> start!97806 (= b_free!23471 (not b_next!23471))))

(declare-fun tp!83118 () Bool)

(declare-fun b_and!37767 () Bool)

(assert (=> start!97806 (= tp!83118 b_and!37767)))

(declare-fun b!1118280 () Bool)

(declare-fun res!746946 () Bool)

(declare-fun e!637013 () Bool)

(assert (=> b!1118280 (=> (not res!746946) (not e!637013))))

(declare-datatypes ((array!72832 0))(
  ( (array!72833 (arr!35065 (Array (_ BitVec 32) (_ BitVec 64))) (size!35602 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72832)

(declare-datatypes ((List!24521 0))(
  ( (Nil!24518) (Cons!24517 (h!25726 (_ BitVec 64)) (t!35009 List!24521)) )
))
(declare-fun arrayNoDuplicates!0 (array!72832 (_ BitVec 32) List!24521) Bool)

(assert (=> b!1118280 (= res!746946 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24518))))

(declare-fun b!1118281 () Bool)

(declare-fun e!637008 () Bool)

(declare-fun e!637011 () Bool)

(assert (=> b!1118281 (= e!637008 (not e!637011))))

(declare-fun res!746948 () Bool)

(assert (=> b!1118281 (=> res!746948 e!637011)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118281 (= res!746948 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36613 0))(
  ( (Unit!36614) )
))
(declare-fun lt!497443 () Unit!36613)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72832 (_ BitVec 64) (_ BitVec 32)) Unit!36613)

(assert (=> b!1118281 (= lt!497443 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118282 () Bool)

(declare-fun res!746950 () Bool)

(assert (=> b!1118282 (=> (not res!746950) (not e!637013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118282 (= res!746950 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!43819 () Bool)

(declare-fun mapRes!43819 () Bool)

(assert (=> mapIsEmpty!43819 mapRes!43819))

(declare-fun res!746953 () Bool)

(assert (=> start!97806 (=> (not res!746953) (not e!637013))))

(assert (=> start!97806 (= res!746953 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35602 _keys!1208))))))

(assert (=> start!97806 e!637013))

(declare-fun tp_is_empty!28001 () Bool)

(assert (=> start!97806 tp_is_empty!28001))

(declare-fun array_inv!26806 (array!72832) Bool)

(assert (=> start!97806 (array_inv!26806 _keys!1208)))

(assert (=> start!97806 true))

(assert (=> start!97806 tp!83118))

(declare-datatypes ((V!42461 0))(
  ( (V!42462 (val!14057 Int)) )
))
(declare-datatypes ((ValueCell!13291 0))(
  ( (ValueCellFull!13291 (v!16691 V!42461)) (EmptyCell!13291) )
))
(declare-datatypes ((array!72834 0))(
  ( (array!72835 (arr!35066 (Array (_ BitVec 32) ValueCell!13291)) (size!35603 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72834)

(declare-fun e!637010 () Bool)

(declare-fun array_inv!26807 (array!72834) Bool)

(assert (=> start!97806 (and (array_inv!26807 _values!996) e!637010)))

(declare-fun b!1118283 () Bool)

(declare-fun res!746955 () Bool)

(assert (=> b!1118283 (=> (not res!746955) (not e!637013))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72832 (_ BitVec 32)) Bool)

(assert (=> b!1118283 (= res!746955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118284 () Bool)

(declare-fun e!637012 () Bool)

(assert (=> b!1118284 (= e!637012 tp_is_empty!28001)))

(declare-fun b!1118285 () Bool)

(declare-fun res!746947 () Bool)

(assert (=> b!1118285 (=> (not res!746947) (not e!637013))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1118285 (= res!746947 (and (= (size!35603 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35602 _keys!1208) (size!35603 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43819 () Bool)

(declare-fun tp!83117 () Bool)

(assert (=> mapNonEmpty!43819 (= mapRes!43819 (and tp!83117 e!637012))))

(declare-fun mapKey!43819 () (_ BitVec 32))

(declare-fun mapValue!43819 () ValueCell!13291)

(declare-fun mapRest!43819 () (Array (_ BitVec 32) ValueCell!13291))

(assert (=> mapNonEmpty!43819 (= (arr!35066 _values!996) (store mapRest!43819 mapKey!43819 mapValue!43819))))

(declare-fun b!1118286 () Bool)

(declare-fun res!746949 () Bool)

(assert (=> b!1118286 (=> (not res!746949) (not e!637008))))

(declare-fun lt!497445 () array!72832)

(assert (=> b!1118286 (= res!746949 (arrayNoDuplicates!0 lt!497445 #b00000000000000000000000000000000 Nil!24518))))

(declare-fun b!1118287 () Bool)

(declare-fun e!637007 () Bool)

(assert (=> b!1118287 (= e!637010 (and e!637007 mapRes!43819))))

(declare-fun condMapEmpty!43819 () Bool)

(declare-fun mapDefault!43819 () ValueCell!13291)

