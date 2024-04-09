; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96184 () Bool)

(assert start!96184)

(declare-fun b_free!22801 () Bool)

(declare-fun b_next!22801 () Bool)

(assert (=> start!96184 (= b_free!22801 (not b_next!22801))))

(declare-fun tp!80253 () Bool)

(declare-fun b_and!36295 () Bool)

(assert (=> start!96184 (= tp!80253 b_and!36295)))

(declare-fun b!1091321 () Bool)

(declare-fun e!623313 () Bool)

(declare-fun e!623317 () Bool)

(declare-fun mapRes!41959 () Bool)

(assert (=> b!1091321 (= e!623313 (and e!623317 mapRes!41959))))

(declare-fun condMapEmpty!41959 () Bool)

(declare-datatypes ((V!40865 0))(
  ( (V!40866 (val!13458 Int)) )
))
(declare-datatypes ((ValueCell!12692 0))(
  ( (ValueCellFull!12692 (v!16080 V!40865)) (EmptyCell!12692) )
))
(declare-datatypes ((array!70492 0))(
  ( (array!70493 (arr!33916 (Array (_ BitVec 32) ValueCell!12692)) (size!34453 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70492)

(declare-fun mapDefault!41959 () ValueCell!12692)

