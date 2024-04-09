; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109768 () Bool)

(assert start!109768)

(declare-fun b_free!29165 () Bool)

(declare-fun b_next!29165 () Bool)

(assert (=> start!109768 (= b_free!29165 (not b_next!29165))))

(declare-fun tp!102623 () Bool)

(declare-fun b_and!47277 () Bool)

(assert (=> start!109768 (= tp!102623 b_and!47277)))

(declare-fun b!1299718 () Bool)

(declare-fun e!741469 () Bool)

(declare-fun e!741470 () Bool)

(declare-fun mapRes!53777 () Bool)

(assert (=> b!1299718 (= e!741469 (and e!741470 mapRes!53777))))

(declare-fun condMapEmpty!53777 () Bool)

(declare-datatypes ((V!51509 0))(
  ( (V!51510 (val!17477 Int)) )
))
(declare-datatypes ((ValueCell!16504 0))(
  ( (ValueCellFull!16504 (v!20081 V!51509)) (EmptyCell!16504) )
))
(declare-datatypes ((array!86583 0))(
  ( (array!86584 (arr!41785 (Array (_ BitVec 32) ValueCell!16504)) (size!42336 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86583)

(declare-fun mapDefault!53777 () ValueCell!16504)

