; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20500 () Bool)

(assert start!20500)

(declare-fun b_free!5147 () Bool)

(declare-fun b_next!5147 () Bool)

(assert (=> start!20500 (= b_free!5147 (not b_next!5147))))

(declare-fun tp!18472 () Bool)

(declare-fun b_and!11911 () Bool)

(assert (=> start!20500 (= tp!18472 b_and!11911)))

(declare-fun b!203239 () Bool)

(declare-fun e!133074 () Bool)

(declare-fun e!133073 () Bool)

(declare-fun mapRes!8573 () Bool)

(assert (=> b!203239 (= e!133074 (and e!133073 mapRes!8573))))

(declare-fun condMapEmpty!8573 () Bool)

(declare-datatypes ((V!6317 0))(
  ( (V!6318 (val!2546 Int)) )
))
(declare-datatypes ((ValueCell!2158 0))(
  ( (ValueCellFull!2158 (v!4512 V!6317)) (EmptyCell!2158) )
))
(declare-datatypes ((array!9230 0))(
  ( (array!9231 (arr!4365 (Array (_ BitVec 32) ValueCell!2158)) (size!4690 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9230)

(declare-fun mapDefault!8573 () ValueCell!2158)

