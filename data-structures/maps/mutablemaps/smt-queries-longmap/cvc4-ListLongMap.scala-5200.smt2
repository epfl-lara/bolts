; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70242 () Bool)

(assert start!70242)

(declare-fun b_free!12611 () Bool)

(declare-fun b_next!12611 () Bool)

(assert (=> start!70242 (= b_free!12611 (not b_next!12611))))

(declare-fun tp!44554 () Bool)

(declare-fun b_and!21417 () Bool)

(assert (=> start!70242 (= tp!44554 b_and!21417)))

(declare-fun b!815616 () Bool)

(declare-fun e!452353 () Bool)

(declare-fun e!452355 () Bool)

(declare-fun mapRes!23068 () Bool)

(assert (=> b!815616 (= e!452353 (and e!452355 mapRes!23068))))

(declare-fun condMapEmpty!23068 () Bool)

(declare-datatypes ((V!24095 0))(
  ( (V!24096 (val!7208 Int)) )
))
(declare-datatypes ((ValueCell!6745 0))(
  ( (ValueCellFull!6745 (v!9631 V!24095)) (EmptyCell!6745) )
))
(declare-datatypes ((array!44830 0))(
  ( (array!44831 (arr!21469 (Array (_ BitVec 32) ValueCell!6745)) (size!21890 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44830)

(declare-fun mapDefault!23068 () ValueCell!6745)

