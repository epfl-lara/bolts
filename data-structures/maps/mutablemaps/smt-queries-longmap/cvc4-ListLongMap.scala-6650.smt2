; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83904 () Bool)

(assert start!83904)

(declare-fun b_free!19685 () Bool)

(declare-fun b_next!19685 () Bool)

(assert (=> start!83904 (= b_free!19685 (not b_next!19685))))

(declare-fun tp!68497 () Bool)

(declare-fun b_and!31477 () Bool)

(assert (=> start!83904 (= tp!68497 b_and!31477)))

(declare-fun b!979881 () Bool)

(declare-fun e!552365 () Bool)

(declare-fun e!552364 () Bool)

(declare-fun mapRes!36047 () Bool)

(assert (=> b!979881 (= e!552365 (and e!552364 mapRes!36047))))

(declare-fun condMapEmpty!36047 () Bool)

(declare-datatypes ((V!35221 0))(
  ( (V!35222 (val!11390 Int)) )
))
(declare-datatypes ((ValueCell!10858 0))(
  ( (ValueCellFull!10858 (v!13952 V!35221)) (EmptyCell!10858) )
))
(declare-datatypes ((array!61369 0))(
  ( (array!61370 (arr!29538 (Array (_ BitVec 32) ValueCell!10858)) (size!30018 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61369)

(declare-fun mapDefault!36047 () ValueCell!10858)

