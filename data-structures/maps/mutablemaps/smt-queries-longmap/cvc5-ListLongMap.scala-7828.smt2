; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97748 () Bool)

(assert start!97748)

(declare-fun b!1117096 () Bool)

(declare-fun e!636433 () Bool)

(assert (=> b!1117096 (= e!636433 (not true))))

(declare-datatypes ((array!72720 0))(
  ( (array!72721 (arr!35009 (Array (_ BitVec 32) (_ BitVec 64))) (size!35546 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72720)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117096 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36567 0))(
  ( (Unit!36568) )
))
(declare-fun lt!497216 () Unit!36567)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72720 (_ BitVec 64) (_ BitVec 32)) Unit!36567)

(assert (=> b!1117096 (= lt!497216 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1117097 () Bool)

(declare-fun res!746028 () Bool)

(declare-fun e!636434 () Bool)

(assert (=> b!1117097 (=> (not res!746028) (not e!636434))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117097 (= res!746028 (validMask!0 mask!1564))))

(declare-fun b!1117098 () Bool)

(declare-fun res!746031 () Bool)

(assert (=> b!1117098 (=> (not res!746031) (not e!636434))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!42385 0))(
  ( (V!42386 (val!14028 Int)) )
))
(declare-datatypes ((ValueCell!13262 0))(
  ( (ValueCellFull!13262 (v!16662 V!42385)) (EmptyCell!13262) )
))
(declare-datatypes ((array!72722 0))(
  ( (array!72723 (arr!35010 (Array (_ BitVec 32) ValueCell!13262)) (size!35547 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72722)

(assert (=> b!1117098 (= res!746031 (and (= (size!35547 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35546 _keys!1208) (size!35547 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!43732 () Bool)

(declare-fun mapRes!43732 () Bool)

(assert (=> mapIsEmpty!43732 mapRes!43732))

(declare-fun b!1117099 () Bool)

(declare-fun res!746029 () Bool)

(assert (=> b!1117099 (=> (not res!746029) (not e!636434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72720 (_ BitVec 32)) Bool)

(assert (=> b!1117099 (= res!746029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117100 () Bool)

(declare-fun res!746027 () Bool)

(assert (=> b!1117100 (=> (not res!746027) (not e!636434))))

(assert (=> b!1117100 (= res!746027 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35546 _keys!1208))))))

(declare-fun b!1117101 () Bool)

(assert (=> b!1117101 (= e!636434 e!636433)))

(declare-fun res!746025 () Bool)

(assert (=> b!1117101 (=> (not res!746025) (not e!636433))))

(declare-fun lt!497217 () array!72720)

(assert (=> b!1117101 (= res!746025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497217 mask!1564))))

(assert (=> b!1117101 (= lt!497217 (array!72721 (store (arr!35009 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35546 _keys!1208)))))

(declare-fun b!1117102 () Bool)

(declare-fun e!636435 () Bool)

(declare-fun tp_is_empty!27943 () Bool)

(assert (=> b!1117102 (= e!636435 tp_is_empty!27943)))

(declare-fun b!1117103 () Bool)

(declare-fun res!746023 () Bool)

(assert (=> b!1117103 (=> (not res!746023) (not e!636434))))

(declare-datatypes ((List!24486 0))(
  ( (Nil!24483) (Cons!24482 (h!25691 (_ BitVec 64)) (t!34974 List!24486)) )
))
(declare-fun arrayNoDuplicates!0 (array!72720 (_ BitVec 32) List!24486) Bool)

(assert (=> b!1117103 (= res!746023 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24483))))

(declare-fun b!1117105 () Bool)

(declare-fun res!746030 () Bool)

(assert (=> b!1117105 (=> (not res!746030) (not e!636433))))

(assert (=> b!1117105 (= res!746030 (arrayNoDuplicates!0 lt!497217 #b00000000000000000000000000000000 Nil!24483))))

(declare-fun b!1117106 () Bool)

(declare-fun res!746024 () Bool)

(assert (=> b!1117106 (=> (not res!746024) (not e!636434))))

(assert (=> b!1117106 (= res!746024 (= (select (arr!35009 _keys!1208) i!673) k!934))))

(declare-fun b!1117107 () Bool)

(declare-fun e!636436 () Bool)

(assert (=> b!1117107 (= e!636436 (and e!636435 mapRes!43732))))

(declare-fun condMapEmpty!43732 () Bool)

(declare-fun mapDefault!43732 () ValueCell!13262)

