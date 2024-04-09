; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83888 () Bool)

(assert start!83888)

(declare-fun b_free!19669 () Bool)

(declare-fun b_next!19669 () Bool)

(assert (=> start!83888 (= b_free!19669 (not b_next!19669))))

(declare-fun tp!68450 () Bool)

(declare-fun b_and!31445 () Bool)

(assert (=> start!83888 (= tp!68450 b_and!31445)))

(declare-fun b!979601 () Bool)

(declare-fun e!552224 () Bool)

(declare-fun e!552223 () Bool)

(declare-fun mapRes!36023 () Bool)

(assert (=> b!979601 (= e!552224 (and e!552223 mapRes!36023))))

(declare-fun condMapEmpty!36023 () Bool)

(declare-datatypes ((V!35201 0))(
  ( (V!35202 (val!11382 Int)) )
))
(declare-datatypes ((ValueCell!10850 0))(
  ( (ValueCellFull!10850 (v!13944 V!35201)) (EmptyCell!10850) )
))
(declare-datatypes ((array!61339 0))(
  ( (array!61340 (arr!29523 (Array (_ BitVec 32) ValueCell!10850)) (size!30003 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61339)

(declare-fun mapDefault!36023 () ValueCell!10850)

