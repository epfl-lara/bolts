; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83808 () Bool)

(assert start!83808)

(declare-fun b_free!19589 () Bool)

(declare-fun b_next!19589 () Bool)

(assert (=> start!83808 (= b_free!19589 (not b_next!19589))))

(declare-fun tp!68209 () Bool)

(declare-fun b_and!31285 () Bool)

(assert (=> start!83808 (= tp!68209 b_and!31285)))

(declare-fun b!978247 () Bool)

(declare-fun e!551549 () Bool)

(declare-fun e!551547 () Bool)

(declare-fun mapRes!35903 () Bool)

(assert (=> b!978247 (= e!551549 (and e!551547 mapRes!35903))))

(declare-fun condMapEmpty!35903 () Bool)

(declare-datatypes ((V!35093 0))(
  ( (V!35094 (val!11342 Int)) )
))
(declare-datatypes ((ValueCell!10810 0))(
  ( (ValueCellFull!10810 (v!13904 V!35093)) (EmptyCell!10810) )
))
(declare-datatypes ((array!61183 0))(
  ( (array!61184 (arr!29445 (Array (_ BitVec 32) ValueCell!10810)) (size!29925 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61183)

(declare-fun mapDefault!35903 () ValueCell!10810)

