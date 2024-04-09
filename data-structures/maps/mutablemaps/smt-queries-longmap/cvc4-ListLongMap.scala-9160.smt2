; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109974 () Bool)

(assert start!109974)

(declare-fun b_free!29237 () Bool)

(declare-fun b_next!29237 () Bool)

(assert (=> start!109974 (= b_free!29237 (not b_next!29237))))

(declare-fun tp!102852 () Bool)

(declare-fun b_and!47389 () Bool)

(assert (=> start!109974 (= tp!102852 b_and!47389)))

(declare-fun b!1302260 () Bool)

(declare-fun e!742807 () Bool)

(declare-fun e!742805 () Bool)

(declare-fun mapRes!53898 () Bool)

(assert (=> b!1302260 (= e!742807 (and e!742805 mapRes!53898))))

(declare-fun condMapEmpty!53898 () Bool)

(declare-datatypes ((V!51605 0))(
  ( (V!51606 (val!17513 Int)) )
))
(declare-datatypes ((ValueCell!16540 0))(
  ( (ValueCellFull!16540 (v!20123 V!51605)) (EmptyCell!16540) )
))
(declare-datatypes ((array!86727 0))(
  ( (array!86728 (arr!41853 (Array (_ BitVec 32) ValueCell!16540)) (size!42404 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86727)

(declare-fun mapDefault!53898 () ValueCell!16540)

