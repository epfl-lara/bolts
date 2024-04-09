; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96450 () Bool)

(assert start!96450)

(declare-fun b_free!22993 () Bool)

(declare-fun b_next!22993 () Bool)

(assert (=> start!96450 (= b_free!22993 (not b_next!22993))))

(declare-fun tp!80907 () Bool)

(declare-fun b_and!36667 () Bool)

(assert (=> start!96450 (= tp!80907 b_and!36667)))

(declare-fun b!1095902 () Bool)

(declare-fun e!625647 () Bool)

(declare-fun e!625642 () Bool)

(declare-fun mapRes!42325 () Bool)

(assert (=> b!1095902 (= e!625647 (and e!625642 mapRes!42325))))

(declare-fun condMapEmpty!42325 () Bool)

(declare-datatypes ((V!41185 0))(
  ( (V!41186 (val!13578 Int)) )
))
(declare-datatypes ((ValueCell!12812 0))(
  ( (ValueCellFull!12812 (v!16200 V!41185)) (EmptyCell!12812) )
))
(declare-datatypes ((array!70952 0))(
  ( (array!70953 (arr!34144 (Array (_ BitVec 32) ValueCell!12812)) (size!34681 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70952)

(declare-fun mapDefault!42325 () ValueCell!12812)

