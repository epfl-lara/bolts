; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109806 () Bool)

(assert start!109806)

(declare-fun b_free!29183 () Bool)

(declare-fun b_next!29183 () Bool)

(assert (=> start!109806 (= b_free!29183 (not b_next!29183))))

(declare-fun tp!102680 () Bool)

(declare-fun b_and!47301 () Bool)

(assert (=> start!109806 (= tp!102680 b_and!47301)))

(declare-fun b!1300196 () Bool)

(declare-fun e!741704 () Bool)

(declare-fun tp_is_empty!34823 () Bool)

(assert (=> b!1300196 (= e!741704 tp_is_empty!34823)))

(declare-fun b!1300197 () Bool)

(declare-fun e!741703 () Bool)

(assert (=> b!1300197 (= e!741703 tp_is_empty!34823)))

(declare-fun b!1300198 () Bool)

(declare-fun e!741702 () Bool)

(declare-fun mapRes!53807 () Bool)

(assert (=> b!1300198 (= e!741702 (and e!741703 mapRes!53807))))

(declare-fun condMapEmpty!53807 () Bool)

(declare-datatypes ((V!51533 0))(
  ( (V!51534 (val!17486 Int)) )
))
(declare-datatypes ((ValueCell!16513 0))(
  ( (ValueCellFull!16513 (v!20091 V!51533)) (EmptyCell!16513) )
))
(declare-datatypes ((array!86619 0))(
  ( (array!86620 (arr!41802 (Array (_ BitVec 32) ValueCell!16513)) (size!42353 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86619)

(declare-fun mapDefault!53807 () ValueCell!16513)

