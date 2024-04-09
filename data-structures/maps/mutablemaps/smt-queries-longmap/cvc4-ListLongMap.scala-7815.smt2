; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97674 () Bool)

(assert start!97674)

(declare-fun b!1115653 () Bool)

(declare-fun e!635769 () Bool)

(declare-fun tp_is_empty!27869 () Bool)

(assert (=> b!1115653 (= e!635769 tp_is_empty!27869)))

(declare-fun b!1115654 () Bool)

(declare-fun res!744912 () Bool)

(declare-fun e!635766 () Bool)

(assert (=> b!1115654 (=> (not res!744912) (not e!635766))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115654 (= res!744912 (validKeyInArray!0 k!934))))

(declare-fun b!1115655 () Bool)

(declare-fun e!635768 () Bool)

(assert (=> b!1115655 (= e!635768 tp_is_empty!27869)))

(declare-fun res!744920 () Bool)

(assert (=> start!97674 (=> (not res!744920) (not e!635766))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72578 0))(
  ( (array!72579 (arr!34938 (Array (_ BitVec 32) (_ BitVec 64))) (size!35475 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72578)

(assert (=> start!97674 (= res!744920 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35475 _keys!1208))))))

(assert (=> start!97674 e!635766))

(declare-fun array_inv!26714 (array!72578) Bool)

(assert (=> start!97674 (array_inv!26714 _keys!1208)))

(assert (=> start!97674 true))

(declare-datatypes ((V!42285 0))(
  ( (V!42286 (val!13991 Int)) )
))
(declare-datatypes ((ValueCell!13225 0))(
  ( (ValueCellFull!13225 (v!16625 V!42285)) (EmptyCell!13225) )
))
(declare-datatypes ((array!72580 0))(
  ( (array!72581 (arr!34939 (Array (_ BitVec 32) ValueCell!13225)) (size!35476 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72580)

(declare-fun e!635771 () Bool)

(declare-fun array_inv!26715 (array!72580) Bool)

(assert (=> start!97674 (and (array_inv!26715 _values!996) e!635771)))

(declare-fun b!1115656 () Bool)

(declare-fun e!635770 () Bool)

(assert (=> b!1115656 (= e!635766 e!635770)))

(declare-fun res!744915 () Bool)

(assert (=> b!1115656 (=> (not res!744915) (not e!635770))))

(declare-fun lt!496995 () array!72578)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72578 (_ BitVec 32)) Bool)

(assert (=> b!1115656 (= res!744915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496995 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115656 (= lt!496995 (array!72579 (store (arr!34938 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35475 _keys!1208)))))

(declare-fun mapNonEmpty!43621 () Bool)

(declare-fun mapRes!43621 () Bool)

(declare-fun tp!82866 () Bool)

(assert (=> mapNonEmpty!43621 (= mapRes!43621 (and tp!82866 e!635769))))

(declare-fun mapRest!43621 () (Array (_ BitVec 32) ValueCell!13225))

(declare-fun mapValue!43621 () ValueCell!13225)

(declare-fun mapKey!43621 () (_ BitVec 32))

(assert (=> mapNonEmpty!43621 (= (arr!34939 _values!996) (store mapRest!43621 mapKey!43621 mapValue!43621))))

(declare-fun b!1115657 () Bool)

(declare-fun res!744917 () Bool)

(assert (=> b!1115657 (=> (not res!744917) (not e!635766))))

(declare-datatypes ((List!24458 0))(
  ( (Nil!24455) (Cons!24454 (h!25663 (_ BitVec 64)) (t!34946 List!24458)) )
))
(declare-fun arrayNoDuplicates!0 (array!72578 (_ BitVec 32) List!24458) Bool)

(assert (=> b!1115657 (= res!744917 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24455))))

(declare-fun b!1115658 () Bool)

(declare-fun res!744919 () Bool)

(assert (=> b!1115658 (=> (not res!744919) (not e!635766))))

(assert (=> b!1115658 (= res!744919 (= (select (arr!34938 _keys!1208) i!673) k!934))))

(declare-fun b!1115659 () Bool)

(assert (=> b!1115659 (= e!635771 (and e!635768 mapRes!43621))))

(declare-fun condMapEmpty!43621 () Bool)

(declare-fun mapDefault!43621 () ValueCell!13225)

