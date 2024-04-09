; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110572 () Bool)

(assert start!110572)

(declare-fun b_free!29371 () Bool)

(declare-fun b_next!29371 () Bool)

(assert (=> start!110572 (= b_free!29371 (not b_next!29371))))

(declare-fun tp!103436 () Bool)

(declare-fun b_and!47589 () Bool)

(assert (=> start!110572 (= tp!103436 b_and!47589)))

(declare-fun b!1307490 () Bool)

(declare-fun e!746120 () Bool)

(declare-fun e!746117 () Bool)

(declare-fun mapRes!54280 () Bool)

(assert (=> b!1307490 (= e!746120 (and e!746117 mapRes!54280))))

(declare-fun condMapEmpty!54280 () Bool)

(declare-datatypes ((V!51905 0))(
  ( (V!51906 (val!17625 Int)) )
))
(declare-datatypes ((ValueCell!16652 0))(
  ( (ValueCellFull!16652 (v!20250 V!51905)) (EmptyCell!16652) )
))
(declare-datatypes ((array!87177 0))(
  ( (array!87178 (arr!42064 (Array (_ BitVec 32) ValueCell!16652)) (size!42615 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87177)

(declare-fun mapDefault!54280 () ValueCell!16652)

