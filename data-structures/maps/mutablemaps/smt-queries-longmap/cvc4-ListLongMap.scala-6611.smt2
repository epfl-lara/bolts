; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83582 () Bool)

(assert start!83582)

(declare-fun b_free!19541 () Bool)

(declare-fun b_next!19541 () Bool)

(assert (=> start!83582 (= b_free!19541 (not b_next!19541))))

(declare-fun tp!67911 () Bool)

(declare-fun b_and!31195 () Bool)

(assert (=> start!83582 (= tp!67911 b_and!31195)))

(declare-fun b!976213 () Bool)

(declare-fun e!550189 () Bool)

(declare-fun e!550192 () Bool)

(declare-fun mapRes!35677 () Bool)

(assert (=> b!976213 (= e!550189 (and e!550192 mapRes!35677))))

(declare-fun condMapEmpty!35677 () Bool)

(declare-datatypes ((V!34909 0))(
  ( (V!34910 (val!11273 Int)) )
))
(declare-datatypes ((ValueCell!10741 0))(
  ( (ValueCellFull!10741 (v!13832 V!34909)) (EmptyCell!10741) )
))
(declare-datatypes ((array!60905 0))(
  ( (array!60906 (arr!29312 (Array (_ BitVec 32) ValueCell!10741)) (size!29792 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60905)

(declare-fun mapDefault!35677 () ValueCell!10741)

