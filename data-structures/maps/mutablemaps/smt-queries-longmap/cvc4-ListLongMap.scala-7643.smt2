; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96218 () Bool)

(assert start!96218)

(declare-fun b_free!22835 () Bool)

(declare-fun b_next!22835 () Bool)

(assert (=> start!96218 (= b_free!22835 (not b_next!22835))))

(declare-fun tp!80354 () Bool)

(declare-fun b_and!36363 () Bool)

(assert (=> start!96218 (= tp!80354 b_and!36363)))

(declare-fun b!1092069 () Bool)

(declare-fun e!623724 () Bool)

(declare-fun e!623727 () Bool)

(declare-fun mapRes!42010 () Bool)

(assert (=> b!1092069 (= e!623724 (and e!623727 mapRes!42010))))

(declare-fun condMapEmpty!42010 () Bool)

(declare-datatypes ((V!40909 0))(
  ( (V!40910 (val!13475 Int)) )
))
(declare-datatypes ((ValueCell!12709 0))(
  ( (ValueCellFull!12709 (v!16097 V!40909)) (EmptyCell!12709) )
))
(declare-datatypes ((array!70558 0))(
  ( (array!70559 (arr!33949 (Array (_ BitVec 32) ValueCell!12709)) (size!34486 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70558)

(declare-fun mapDefault!42010 () ValueCell!12709)

