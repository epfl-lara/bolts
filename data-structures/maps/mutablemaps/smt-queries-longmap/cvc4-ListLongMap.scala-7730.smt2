; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97148 () Bool)

(assert start!97148)

(declare-fun b!1104438 () Bool)

(declare-fun res!736948 () Bool)

(declare-fun e!630460 () Bool)

(assert (=> b!1104438 (=> (not res!736948) (not e!630460))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104438 (= res!736948 (validKeyInArray!0 k!934))))

(declare-fun res!736940 () Bool)

(assert (=> start!97148 (=> (not res!736940) (not e!630460))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71596 0))(
  ( (array!71597 (arr!34448 (Array (_ BitVec 32) (_ BitVec 64))) (size!34985 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71596)

(assert (=> start!97148 (= res!736940 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34985 _keys!1208))))))

(assert (=> start!97148 e!630460))

(declare-fun array_inv!26382 (array!71596) Bool)

(assert (=> start!97148 (array_inv!26382 _keys!1208)))

(assert (=> start!97148 true))

(declare-datatypes ((V!41605 0))(
  ( (V!41606 (val!13736 Int)) )
))
(declare-datatypes ((ValueCell!12970 0))(
  ( (ValueCellFull!12970 (v!16370 V!41605)) (EmptyCell!12970) )
))
(declare-datatypes ((array!71598 0))(
  ( (array!71599 (arr!34449 (Array (_ BitVec 32) ValueCell!12970)) (size!34986 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71598)

(declare-fun e!630459 () Bool)

(declare-fun array_inv!26383 (array!71598) Bool)

(assert (=> start!97148 (and (array_inv!26383 _values!996) e!630459)))

(declare-fun b!1104439 () Bool)

(declare-fun res!736944 () Bool)

(assert (=> b!1104439 (=> (not res!736944) (not e!630460))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104439 (= res!736944 (= (select (arr!34448 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!42853 () Bool)

(declare-fun mapRes!42853 () Bool)

(declare-fun tp!81774 () Bool)

(declare-fun e!630463 () Bool)

(assert (=> mapNonEmpty!42853 (= mapRes!42853 (and tp!81774 e!630463))))

(declare-fun mapValue!42853 () ValueCell!12970)

(declare-fun mapKey!42853 () (_ BitVec 32))

(declare-fun mapRest!42853 () (Array (_ BitVec 32) ValueCell!12970))

(assert (=> mapNonEmpty!42853 (= (arr!34449 _values!996) (store mapRest!42853 mapKey!42853 mapValue!42853))))

(declare-fun b!1104440 () Bool)

(declare-fun res!736947 () Bool)

(assert (=> b!1104440 (=> (not res!736947) (not e!630460))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104440 (= res!736947 (validMask!0 mask!1564))))

(declare-fun b!1104441 () Bool)

(declare-fun res!736943 () Bool)

(assert (=> b!1104441 (=> (not res!736943) (not e!630460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71596 (_ BitVec 32)) Bool)

(assert (=> b!1104441 (= res!736943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104442 () Bool)

(declare-fun tp_is_empty!27359 () Bool)

(assert (=> b!1104442 (= e!630463 tp_is_empty!27359)))

(declare-fun b!1104443 () Bool)

(declare-fun e!630461 () Bool)

(assert (=> b!1104443 (= e!630459 (and e!630461 mapRes!42853))))

(declare-fun condMapEmpty!42853 () Bool)

(declare-fun mapDefault!42853 () ValueCell!12970)

