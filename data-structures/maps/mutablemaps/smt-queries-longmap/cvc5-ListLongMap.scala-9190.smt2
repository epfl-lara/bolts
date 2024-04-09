; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110524 () Bool)

(assert start!110524)

(declare-fun b_free!29323 () Bool)

(declare-fun b_next!29323 () Bool)

(assert (=> start!110524 (= b_free!29323 (not b_next!29323))))

(declare-fun tp!103292 () Bool)

(declare-fun b_and!47541 () Bool)

(assert (=> start!110524 (= tp!103292 b_and!47541)))

(declare-fun b!1306914 () Bool)

(declare-fun e!745758 () Bool)

(declare-fun e!745759 () Bool)

(declare-fun mapRes!54208 () Bool)

(assert (=> b!1306914 (= e!745758 (and e!745759 mapRes!54208))))

(declare-fun condMapEmpty!54208 () Bool)

(declare-datatypes ((V!51841 0))(
  ( (V!51842 (val!17601 Int)) )
))
(declare-datatypes ((ValueCell!16628 0))(
  ( (ValueCellFull!16628 (v!20226 V!51841)) (EmptyCell!16628) )
))
(declare-datatypes ((array!87089 0))(
  ( (array!87090 (arr!42020 (Array (_ BitVec 32) ValueCell!16628)) (size!42571 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87089)

(declare-fun mapDefault!54208 () ValueCell!16628)

