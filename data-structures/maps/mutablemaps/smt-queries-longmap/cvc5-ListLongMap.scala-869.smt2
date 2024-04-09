; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20322 () Bool)

(assert start!20322)

(declare-fun b_free!4969 () Bool)

(declare-fun b_next!4969 () Bool)

(assert (=> start!20322 (= b_free!4969 (not b_next!4969))))

(declare-fun tp!17939 () Bool)

(declare-fun b_and!11733 () Bool)

(assert (=> start!20322 (= tp!17939 b_and!11733)))

(declare-fun b!200040 () Bool)

(declare-fun e!131230 () Bool)

(declare-fun e!131229 () Bool)

(declare-fun mapRes!8306 () Bool)

(assert (=> b!200040 (= e!131230 (and e!131229 mapRes!8306))))

(declare-fun condMapEmpty!8306 () Bool)

(declare-datatypes ((V!6081 0))(
  ( (V!6082 (val!2457 Int)) )
))
(declare-datatypes ((ValueCell!2069 0))(
  ( (ValueCellFull!2069 (v!4423 V!6081)) (EmptyCell!2069) )
))
(declare-datatypes ((array!8886 0))(
  ( (array!8887 (arr!4193 (Array (_ BitVec 32) ValueCell!2069)) (size!4518 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8886)

(declare-fun mapDefault!8306 () ValueCell!2069)

