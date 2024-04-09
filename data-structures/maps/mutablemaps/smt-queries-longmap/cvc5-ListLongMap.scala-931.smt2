; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20694 () Bool)

(assert start!20694)

(declare-fun b_free!5341 () Bool)

(declare-fun b_next!5341 () Bool)

(assert (=> start!20694 (= b_free!5341 (not b_next!5341))))

(declare-fun tp!19054 () Bool)

(declare-fun b_and!12105 () Bool)

(assert (=> start!20694 (= tp!19054 b_and!12105)))

(declare-fun b!206682 () Bool)

(declare-fun e!135054 () Bool)

(declare-fun tp_is_empty!5197 () Bool)

(assert (=> b!206682 (= e!135054 tp_is_empty!5197)))

(declare-fun b!206683 () Bool)

(declare-fun e!135055 () Bool)

(assert (=> b!206683 (= e!135055 tp_is_empty!5197)))

(declare-fun b!206684 () Bool)

(declare-fun e!135052 () Bool)

(declare-fun mapRes!8864 () Bool)

(assert (=> b!206684 (= e!135052 (and e!135054 mapRes!8864))))

(declare-fun condMapEmpty!8864 () Bool)

(declare-datatypes ((V!6577 0))(
  ( (V!6578 (val!2643 Int)) )
))
(declare-datatypes ((ValueCell!2255 0))(
  ( (ValueCellFull!2255 (v!4609 V!6577)) (EmptyCell!2255) )
))
(declare-datatypes ((array!9604 0))(
  ( (array!9605 (arr!4552 (Array (_ BitVec 32) ValueCell!2255)) (size!4877 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9604)

(declare-fun mapDefault!8864 () ValueCell!2255)

