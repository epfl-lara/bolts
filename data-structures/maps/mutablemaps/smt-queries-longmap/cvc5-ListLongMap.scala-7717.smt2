; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96994 () Bool)

(assert start!96994)

(declare-fun b!1103028 () Bool)

(declare-fun e!629646 () Bool)

(declare-fun tp_is_empty!27277 () Bool)

(assert (=> b!1103028 (= e!629646 tp_is_empty!27277)))

(declare-fun mapNonEmpty!42712 () Bool)

(declare-fun mapRes!42712 () Bool)

(declare-fun tp!81633 () Bool)

(declare-fun e!629645 () Bool)

(assert (=> mapNonEmpty!42712 (= mapRes!42712 (and tp!81633 e!629645))))

(declare-datatypes ((V!41497 0))(
  ( (V!41498 (val!13695 Int)) )
))
(declare-datatypes ((ValueCell!12929 0))(
  ( (ValueCellFull!12929 (v!16327 V!41497)) (EmptyCell!12929) )
))
(declare-fun mapValue!42712 () ValueCell!12929)

(declare-fun mapKey!42712 () (_ BitVec 32))

(declare-datatypes ((array!71428 0))(
  ( (array!71429 (arr!34370 (Array (_ BitVec 32) ValueCell!12929)) (size!34907 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71428)

(declare-fun mapRest!42712 () (Array (_ BitVec 32) ValueCell!12929))

(assert (=> mapNonEmpty!42712 (= (arr!34370 _values!996) (store mapRest!42712 mapKey!42712 mapValue!42712))))

(declare-fun res!736008 () Bool)

(declare-fun e!629644 () Bool)

(assert (=> start!96994 (=> (not res!736008) (not e!629644))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71430 0))(
  ( (array!71431 (arr!34371 (Array (_ BitVec 32) (_ BitVec 64))) (size!34908 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71430)

(assert (=> start!96994 (= res!736008 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34908 _keys!1208))))))

(assert (=> start!96994 e!629644))

(declare-fun array_inv!26324 (array!71430) Bool)

(assert (=> start!96994 (array_inv!26324 _keys!1208)))

(assert (=> start!96994 true))

(declare-fun e!629642 () Bool)

(declare-fun array_inv!26325 (array!71428) Bool)

(assert (=> start!96994 (and (array_inv!26325 _values!996) e!629642)))

(declare-fun b!1103029 () Bool)

(assert (=> b!1103029 (= e!629642 (and e!629646 mapRes!42712))))

(declare-fun condMapEmpty!42712 () Bool)

(declare-fun mapDefault!42712 () ValueCell!12929)

