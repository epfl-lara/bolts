; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97602 () Bool)

(assert start!97602)

(declare-fun b!1114249 () Bool)

(declare-fun res!743835 () Bool)

(declare-fun e!635123 () Bool)

(assert (=> b!1114249 (=> (not res!743835) (not e!635123))))

(declare-datatypes ((array!72442 0))(
  ( (array!72443 (arr!34870 (Array (_ BitVec 32) (_ BitVec 64))) (size!35407 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72442)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1114249 (= res!743835 (= (select (arr!34870 _keys!1208) i!673) k!934))))

(declare-fun b!1114250 () Bool)

(declare-fun res!743839 () Bool)

(assert (=> b!1114250 (=> (not res!743839) (not e!635123))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114250 (= res!743839 (validMask!0 mask!1564))))

(declare-fun b!1114251 () Bool)

(declare-fun res!743832 () Bool)

(assert (=> b!1114251 (=> (not res!743832) (not e!635123))))

(assert (=> b!1114251 (= res!743832 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35407 _keys!1208))))))

(declare-fun b!1114252 () Bool)

(declare-fun res!743841 () Bool)

(declare-fun e!635118 () Bool)

(assert (=> b!1114252 (=> (not res!743841) (not e!635118))))

(declare-fun lt!496779 () array!72442)

(declare-datatypes ((List!24432 0))(
  ( (Nil!24429) (Cons!24428 (h!25637 (_ BitVec 64)) (t!34920 List!24432)) )
))
(declare-fun arrayNoDuplicates!0 (array!72442 (_ BitVec 32) List!24432) Bool)

(assert (=> b!1114252 (= res!743841 (arrayNoDuplicates!0 lt!496779 #b00000000000000000000000000000000 Nil!24429))))

(declare-fun b!1114254 () Bool)

(declare-fun e!635122 () Bool)

(declare-fun tp_is_empty!27797 () Bool)

(assert (=> b!1114254 (= e!635122 tp_is_empty!27797)))

(declare-fun b!1114255 () Bool)

(declare-fun res!743838 () Bool)

(assert (=> b!1114255 (=> (not res!743838) (not e!635123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72442 (_ BitVec 32)) Bool)

(assert (=> b!1114255 (= res!743838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1114256 () Bool)

(assert (=> b!1114256 (= e!635123 e!635118)))

(declare-fun res!743834 () Bool)

(assert (=> b!1114256 (=> (not res!743834) (not e!635118))))

(assert (=> b!1114256 (= res!743834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496779 mask!1564))))

(assert (=> b!1114256 (= lt!496779 (array!72443 (store (arr!34870 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35407 _keys!1208)))))

(declare-fun mapNonEmpty!43513 () Bool)

(declare-fun mapRes!43513 () Bool)

(declare-fun tp!82758 () Bool)

(assert (=> mapNonEmpty!43513 (= mapRes!43513 (and tp!82758 e!635122))))

(declare-datatypes ((V!42189 0))(
  ( (V!42190 (val!13955 Int)) )
))
(declare-datatypes ((ValueCell!13189 0))(
  ( (ValueCellFull!13189 (v!16589 V!42189)) (EmptyCell!13189) )
))
(declare-fun mapRest!43513 () (Array (_ BitVec 32) ValueCell!13189))

(declare-fun mapValue!43513 () ValueCell!13189)

(declare-datatypes ((array!72444 0))(
  ( (array!72445 (arr!34871 (Array (_ BitVec 32) ValueCell!13189)) (size!35408 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72444)

(declare-fun mapKey!43513 () (_ BitVec 32))

(assert (=> mapNonEmpty!43513 (= (arr!34871 _values!996) (store mapRest!43513 mapKey!43513 mapValue!43513))))

(declare-fun b!1114253 () Bool)

(declare-fun res!743837 () Bool)

(assert (=> b!1114253 (=> (not res!743837) (not e!635123))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114253 (= res!743837 (validKeyInArray!0 k!934))))

(declare-fun res!743833 () Bool)

(assert (=> start!97602 (=> (not res!743833) (not e!635123))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97602 (= res!743833 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35407 _keys!1208))))))

(assert (=> start!97602 e!635123))

(declare-fun array_inv!26676 (array!72442) Bool)

(assert (=> start!97602 (array_inv!26676 _keys!1208)))

(assert (=> start!97602 true))

(declare-fun e!635119 () Bool)

(declare-fun array_inv!26677 (array!72444) Bool)

(assert (=> start!97602 (and (array_inv!26677 _values!996) e!635119)))

(declare-fun b!1114257 () Bool)

(declare-fun e!635120 () Bool)

(assert (=> b!1114257 (= e!635119 (and e!635120 mapRes!43513))))

(declare-fun condMapEmpty!43513 () Bool)

(declare-fun mapDefault!43513 () ValueCell!13189)

