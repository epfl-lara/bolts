; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110536 () Bool)

(assert start!110536)

(declare-fun b_free!29335 () Bool)

(declare-fun b_next!29335 () Bool)

(assert (=> start!110536 (= b_free!29335 (not b_next!29335))))

(declare-fun tp!103327 () Bool)

(declare-fun b_and!47553 () Bool)

(assert (=> start!110536 (= tp!103327 b_and!47553)))

(declare-fun b!1307058 () Bool)

(declare-fun e!745850 () Bool)

(declare-fun e!745849 () Bool)

(declare-fun mapRes!54226 () Bool)

(assert (=> b!1307058 (= e!745850 (and e!745849 mapRes!54226))))

(declare-fun condMapEmpty!54226 () Bool)

(declare-datatypes ((V!51857 0))(
  ( (V!51858 (val!17607 Int)) )
))
(declare-datatypes ((ValueCell!16634 0))(
  ( (ValueCellFull!16634 (v!20232 V!51857)) (EmptyCell!16634) )
))
(declare-datatypes ((array!87109 0))(
  ( (array!87110 (arr!42030 (Array (_ BitVec 32) ValueCell!16634)) (size!42581 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87109)

(declare-fun mapDefault!54226 () ValueCell!16634)

