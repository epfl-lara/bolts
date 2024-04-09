; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37034 () Bool)

(assert start!37034)

(declare-fun b_free!8153 () Bool)

(declare-fun b_next!8153 () Bool)

(assert (=> start!37034 (= b_free!8153 (not b_next!8153))))

(declare-fun tp!29174 () Bool)

(declare-fun b_and!15413 () Bool)

(assert (=> start!37034 (= tp!29174 b_and!15413)))

(declare-fun b!371828 () Bool)

(declare-fun e!226880 () Bool)

(declare-fun e!226881 () Bool)

(declare-fun mapRes!14766 () Bool)

(assert (=> b!371828 (= e!226880 (and e!226881 mapRes!14766))))

(declare-fun condMapEmpty!14766 () Bool)

(declare-datatypes ((V!12839 0))(
  ( (V!12840 (val!4445 Int)) )
))
(declare-datatypes ((ValueCell!4057 0))(
  ( (ValueCellFull!4057 (v!6638 V!12839)) (EmptyCell!4057) )
))
(declare-datatypes ((array!21513 0))(
  ( (array!21514 (arr!10222 (Array (_ BitVec 32) ValueCell!4057)) (size!10574 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21513)

(declare-fun mapDefault!14766 () ValueCell!4057)

