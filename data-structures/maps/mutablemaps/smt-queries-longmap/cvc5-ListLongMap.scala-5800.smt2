; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74842 () Bool)

(assert start!74842)

(declare-fun b_free!15391 () Bool)

(declare-fun b_next!15391 () Bool)

(assert (=> start!74842 (= b_free!15391 (not b_next!15391))))

(declare-fun tp!53871 () Bool)

(declare-fun b_and!25467 () Bool)

(assert (=> start!74842 (= tp!53871 b_and!25467)))

(declare-fun b!881890 () Bool)

(declare-fun e!490822 () Bool)

(declare-fun e!490828 () Bool)

(declare-fun mapRes!28083 () Bool)

(assert (=> b!881890 (= e!490822 (and e!490828 mapRes!28083))))

(declare-fun condMapEmpty!28083 () Bool)

(declare-datatypes ((V!28561 0))(
  ( (V!28562 (val!8865 Int)) )
))
(declare-datatypes ((ValueCell!8378 0))(
  ( (ValueCellFull!8378 (v!11321 V!28561)) (EmptyCell!8378) )
))
(declare-datatypes ((array!51380 0))(
  ( (array!51381 (arr!24707 (Array (_ BitVec 32) ValueCell!8378)) (size!25148 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51380)

(declare-fun mapDefault!28083 () ValueCell!8378)

