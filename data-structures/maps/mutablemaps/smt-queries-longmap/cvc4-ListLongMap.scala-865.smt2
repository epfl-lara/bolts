; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20302 () Bool)

(assert start!20302)

(declare-fun b_free!4949 () Bool)

(declare-fun b_next!4949 () Bool)

(assert (=> start!20302 (= b_free!4949 (not b_next!4949))))

(declare-fun tp!17878 () Bool)

(declare-fun b_and!11713 () Bool)

(assert (=> start!20302 (= tp!17878 b_and!11713)))

(declare-fun b!199740 () Bool)

(declare-fun e!131079 () Bool)

(declare-fun tp_is_empty!4805 () Bool)

(assert (=> b!199740 (= e!131079 tp_is_empty!4805)))

(declare-fun b!199741 () Bool)

(declare-fun e!131078 () Bool)

(declare-fun mapRes!8276 () Bool)

(assert (=> b!199741 (= e!131078 (and e!131079 mapRes!8276))))

(declare-fun condMapEmpty!8276 () Bool)

(declare-datatypes ((V!6053 0))(
  ( (V!6054 (val!2447 Int)) )
))
(declare-datatypes ((ValueCell!2059 0))(
  ( (ValueCellFull!2059 (v!4413 V!6053)) (EmptyCell!2059) )
))
(declare-datatypes ((array!8848 0))(
  ( (array!8849 (arr!4174 (Array (_ BitVec 32) ValueCell!2059)) (size!4499 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8848)

(declare-fun mapDefault!8276 () ValueCell!2059)

