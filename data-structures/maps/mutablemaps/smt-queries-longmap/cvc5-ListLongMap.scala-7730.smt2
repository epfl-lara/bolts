; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97144 () Bool)

(assert start!97144)

(declare-fun b!1104366 () Bool)

(declare-fun res!736887 () Bool)

(declare-fun e!630425 () Bool)

(assert (=> b!1104366 (=> (not res!736887) (not e!630425))))

(declare-datatypes ((array!71588 0))(
  ( (array!71589 (arr!34444 (Array (_ BitVec 32) (_ BitVec 64))) (size!34981 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71588)

(declare-datatypes ((List!24177 0))(
  ( (Nil!24174) (Cons!24173 (h!25382 (_ BitVec 64)) (t!34449 List!24177)) )
))
(declare-fun arrayNoDuplicates!0 (array!71588 (_ BitVec 32) List!24177) Bool)

(assert (=> b!1104366 (= res!736887 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24174))))

(declare-fun b!1104367 () Bool)

(declare-fun e!630423 () Bool)

(assert (=> b!1104367 (= e!630423 false)))

(declare-fun lt!495113 () Bool)

(declare-fun lt!495114 () array!71588)

(assert (=> b!1104367 (= lt!495113 (arrayNoDuplicates!0 lt!495114 #b00000000000000000000000000000000 Nil!24174))))

(declare-fun res!736886 () Bool)

(assert (=> start!97144 (=> (not res!736886) (not e!630425))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97144 (= res!736886 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34981 _keys!1208))))))

(assert (=> start!97144 e!630425))

(declare-fun array_inv!26378 (array!71588) Bool)

(assert (=> start!97144 (array_inv!26378 _keys!1208)))

(assert (=> start!97144 true))

(declare-datatypes ((V!41601 0))(
  ( (V!41602 (val!13734 Int)) )
))
(declare-datatypes ((ValueCell!12968 0))(
  ( (ValueCellFull!12968 (v!16368 V!41601)) (EmptyCell!12968) )
))
(declare-datatypes ((array!71590 0))(
  ( (array!71591 (arr!34445 (Array (_ BitVec 32) ValueCell!12968)) (size!34982 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71590)

(declare-fun e!630427 () Bool)

(declare-fun array_inv!26379 (array!71590) Bool)

(assert (=> start!97144 (and (array_inv!26379 _values!996) e!630427)))

(declare-fun b!1104368 () Bool)

(declare-fun res!736889 () Bool)

(assert (=> b!1104368 (=> (not res!736889) (not e!630425))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1104368 (= res!736889 (= (select (arr!34444 _keys!1208) i!673) k!934))))

(declare-fun b!1104369 () Bool)

(declare-fun res!736888 () Bool)

(assert (=> b!1104369 (=> (not res!736888) (not e!630425))))

(assert (=> b!1104369 (= res!736888 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34981 _keys!1208))))))

(declare-fun mapNonEmpty!42847 () Bool)

(declare-fun mapRes!42847 () Bool)

(declare-fun tp!81768 () Bool)

(declare-fun e!630426 () Bool)

(assert (=> mapNonEmpty!42847 (= mapRes!42847 (and tp!81768 e!630426))))

(declare-fun mapRest!42847 () (Array (_ BitVec 32) ValueCell!12968))

(declare-fun mapKey!42847 () (_ BitVec 32))

(declare-fun mapValue!42847 () ValueCell!12968)

(assert (=> mapNonEmpty!42847 (= (arr!34445 _values!996) (store mapRest!42847 mapKey!42847 mapValue!42847))))

(declare-fun mapIsEmpty!42847 () Bool)

(assert (=> mapIsEmpty!42847 mapRes!42847))

(declare-fun b!1104370 () Bool)

(declare-fun res!736893 () Bool)

(assert (=> b!1104370 (=> (not res!736893) (not e!630425))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104370 (= res!736893 (validKeyInArray!0 k!934))))

(declare-fun b!1104371 () Bool)

(declare-fun res!736892 () Bool)

(assert (=> b!1104371 (=> (not res!736892) (not e!630425))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71588 (_ BitVec 32)) Bool)

(assert (=> b!1104371 (= res!736892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104372 () Bool)

(declare-fun tp_is_empty!27355 () Bool)

(assert (=> b!1104372 (= e!630426 tp_is_empty!27355)))

(declare-fun b!1104373 () Bool)

(assert (=> b!1104373 (= e!630425 e!630423)))

(declare-fun res!736894 () Bool)

(assert (=> b!1104373 (=> (not res!736894) (not e!630423))))

(assert (=> b!1104373 (= res!736894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495114 mask!1564))))

(assert (=> b!1104373 (= lt!495114 (array!71589 (store (arr!34444 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34981 _keys!1208)))))

(declare-fun b!1104374 () Bool)

(declare-fun res!736891 () Bool)

(assert (=> b!1104374 (=> (not res!736891) (not e!630425))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104374 (= res!736891 (and (= (size!34982 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34981 _keys!1208) (size!34982 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104375 () Bool)

(declare-fun e!630422 () Bool)

(assert (=> b!1104375 (= e!630422 tp_is_empty!27355)))

(declare-fun b!1104376 () Bool)

(declare-fun res!736890 () Bool)

(assert (=> b!1104376 (=> (not res!736890) (not e!630425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104376 (= res!736890 (validMask!0 mask!1564))))

(declare-fun b!1104377 () Bool)

(assert (=> b!1104377 (= e!630427 (and e!630422 mapRes!42847))))

(declare-fun condMapEmpty!42847 () Bool)

(declare-fun mapDefault!42847 () ValueCell!12968)

