; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110204 () Bool)

(assert start!110204)

(declare-fun b_free!29291 () Bool)

(declare-fun b_next!29291 () Bool)

(assert (=> start!110204 (= b_free!29291 (not b_next!29291))))

(declare-fun tp!103031 () Bool)

(declare-fun b_and!47481 () Bool)

(assert (=> start!110204 (= tp!103031 b_and!47481)))

(declare-fun b!1304356 () Bool)

(declare-fun e!744031 () Bool)

(declare-fun e!744033 () Bool)

(declare-fun mapRes!53996 () Bool)

(assert (=> b!1304356 (= e!744031 (and e!744033 mapRes!53996))))

(declare-fun condMapEmpty!53996 () Bool)

(declare-datatypes ((V!51677 0))(
  ( (V!51678 (val!17540 Int)) )
))
(declare-datatypes ((ValueCell!16567 0))(
  ( (ValueCellFull!16567 (v!20157 V!51677)) (EmptyCell!16567) )
))
(declare-datatypes ((array!86843 0))(
  ( (array!86844 (arr!41906 (Array (_ BitVec 32) ValueCell!16567)) (size!42457 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86843)

(declare-fun mapDefault!53996 () ValueCell!16567)

