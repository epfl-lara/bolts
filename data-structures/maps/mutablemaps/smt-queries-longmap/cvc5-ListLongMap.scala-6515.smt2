; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82958 () Bool)

(assert start!82958)

(declare-fun b_free!19057 () Bool)

(declare-fun b_next!19057 () Bool)

(assert (=> start!82958 (= b_free!19057 (not b_next!19057))))

(declare-fun tp!66301 () Bool)

(declare-fun b_and!30563 () Bool)

(assert (=> start!82958 (= tp!66301 b_and!30563)))

(declare-fun b!967629 () Bool)

(declare-fun e!545387 () Bool)

(declare-fun e!545386 () Bool)

(declare-fun mapRes!34792 () Bool)

(assert (=> b!967629 (= e!545387 (and e!545386 mapRes!34792))))

(declare-fun condMapEmpty!34792 () Bool)

(declare-datatypes ((V!34137 0))(
  ( (V!34138 (val!10983 Int)) )
))
(declare-datatypes ((ValueCell!10451 0))(
  ( (ValueCellFull!10451 (v!13541 V!34137)) (EmptyCell!10451) )
))
(declare-datatypes ((array!59783 0))(
  ( (array!59784 (arr!28756 (Array (_ BitVec 32) ValueCell!10451)) (size!29236 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59783)

(declare-fun mapDefault!34792 () ValueCell!10451)

