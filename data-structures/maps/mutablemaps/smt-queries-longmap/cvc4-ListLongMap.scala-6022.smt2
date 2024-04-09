; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78048 () Bool)

(assert start!78048)

(declare-fun b_free!16547 () Bool)

(declare-fun b_next!16547 () Bool)

(assert (=> start!78048 (= b_free!16547 (not b_next!16547))))

(declare-fun tp!57913 () Bool)

(declare-fun b_and!27137 () Bool)

(assert (=> start!78048 (= tp!57913 b_and!27137)))

(declare-fun b!910608 () Bool)

(declare-fun e!510638 () Bool)

(declare-fun tp_is_empty!18965 () Bool)

(assert (=> b!910608 (= e!510638 tp_is_empty!18965)))

(declare-fun b!910609 () Bool)

(declare-fun e!510634 () Bool)

(declare-fun e!510635 () Bool)

(declare-fun mapRes!30169 () Bool)

(assert (=> b!910609 (= e!510634 (and e!510635 mapRes!30169))))

(declare-fun condMapEmpty!30169 () Bool)

(declare-datatypes ((V!30251 0))(
  ( (V!30252 (val!9533 Int)) )
))
(declare-datatypes ((ValueCell!9001 0))(
  ( (ValueCellFull!9001 (v!12042 V!30251)) (EmptyCell!9001) )
))
(declare-datatypes ((array!53942 0))(
  ( (array!53943 (arr!25923 (Array (_ BitVec 32) ValueCell!9001)) (size!26383 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53942)

(declare-fun mapDefault!30169 () ValueCell!9001)

