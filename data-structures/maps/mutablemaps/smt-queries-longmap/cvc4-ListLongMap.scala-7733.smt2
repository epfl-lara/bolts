; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97166 () Bool)

(assert start!97166)

(declare-fun b!1104762 () Bool)

(declare-fun res!737186 () Bool)

(declare-fun e!630622 () Bool)

(assert (=> b!1104762 (=> (not res!737186) (not e!630622))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104762 (= res!737186 (validKeyInArray!0 k!934))))

(declare-fun b!1104763 () Bool)

(declare-fun e!630620 () Bool)

(declare-fun tp_is_empty!27377 () Bool)

(assert (=> b!1104763 (= e!630620 tp_is_empty!27377)))

(declare-fun b!1104764 () Bool)

(declare-fun e!630625 () Bool)

(declare-fun e!630623 () Bool)

(declare-fun mapRes!42880 () Bool)

(assert (=> b!1104764 (= e!630625 (and e!630623 mapRes!42880))))

(declare-fun condMapEmpty!42880 () Bool)

(declare-datatypes ((V!41629 0))(
  ( (V!41630 (val!13745 Int)) )
))
(declare-datatypes ((ValueCell!12979 0))(
  ( (ValueCellFull!12979 (v!16379 V!41629)) (EmptyCell!12979) )
))
(declare-datatypes ((array!71630 0))(
  ( (array!71631 (arr!34465 (Array (_ BitVec 32) ValueCell!12979)) (size!35002 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71630)

(declare-fun mapDefault!42880 () ValueCell!12979)

