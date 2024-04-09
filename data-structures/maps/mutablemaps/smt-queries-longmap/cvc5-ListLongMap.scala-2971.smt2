; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42090 () Bool)

(assert start!42090)

(declare-fun b_free!11635 () Bool)

(declare-fun b_next!11635 () Bool)

(assert (=> start!42090 (= b_free!11635 (not b_next!11635))))

(declare-fun tp!40924 () Bool)

(declare-fun b_and!20063 () Bool)

(assert (=> start!42090 (= tp!40924 b_and!20063)))

(declare-fun b!469658 () Bool)

(declare-fun e!275082 () Bool)

(declare-fun e!275085 () Bool)

(declare-fun mapRes!21292 () Bool)

(assert (=> b!469658 (= e!275082 (and e!275085 mapRes!21292))))

(declare-fun condMapEmpty!21292 () Bool)

(declare-datatypes ((V!18523 0))(
  ( (V!18524 (val!6576 Int)) )
))
(declare-datatypes ((ValueCell!6188 0))(
  ( (ValueCellFull!6188 (v!8862 V!18523)) (EmptyCell!6188) )
))
(declare-datatypes ((array!29861 0))(
  ( (array!29862 (arr!14352 (Array (_ BitVec 32) ValueCell!6188)) (size!14704 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29861)

(declare-fun mapDefault!21292 () ValueCell!6188)

