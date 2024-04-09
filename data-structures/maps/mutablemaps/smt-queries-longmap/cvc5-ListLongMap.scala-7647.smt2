; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96238 () Bool)

(assert start!96238)

(declare-fun b_free!22855 () Bool)

(declare-fun b_next!22855 () Bool)

(assert (=> start!96238 (= b_free!22855 (not b_next!22855))))

(declare-fun tp!80414 () Bool)

(declare-fun b_and!36403 () Bool)

(assert (=> start!96238 (= tp!80414 b_and!36403)))

(declare-fun b!1092469 () Bool)

(declare-fun e!623924 () Bool)

(declare-fun e!623926 () Bool)

(declare-fun mapRes!42040 () Bool)

(assert (=> b!1092469 (= e!623924 (and e!623926 mapRes!42040))))

(declare-fun condMapEmpty!42040 () Bool)

(declare-datatypes ((V!40937 0))(
  ( (V!40938 (val!13485 Int)) )
))
(declare-datatypes ((ValueCell!12719 0))(
  ( (ValueCellFull!12719 (v!16107 V!40937)) (EmptyCell!12719) )
))
(declare-datatypes ((array!70594 0))(
  ( (array!70595 (arr!33967 (Array (_ BitVec 32) ValueCell!12719)) (size!34504 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70594)

(declare-fun mapDefault!42040 () ValueCell!12719)

