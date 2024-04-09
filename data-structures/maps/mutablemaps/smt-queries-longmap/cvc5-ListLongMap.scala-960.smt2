; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20868 () Bool)

(assert start!20868)

(declare-fun b_free!5509 () Bool)

(declare-fun b_next!5509 () Bool)

(assert (=> start!20868 (= b_free!5509 (not b_next!5509))))

(declare-fun tp!19568 () Bool)

(declare-fun b_and!12273 () Bool)

(assert (=> start!20868 (= tp!19568 b_and!12273)))

(declare-fun b!209256 () Bool)

(declare-fun e!136360 () Bool)

(declare-fun tp_is_empty!5371 () Bool)

(assert (=> b!209256 (= e!136360 tp_is_empty!5371)))

(declare-fun b!209257 () Bool)

(declare-fun e!136356 () Bool)

(declare-fun e!136357 () Bool)

(declare-fun mapRes!9125 () Bool)

(assert (=> b!209257 (= e!136356 (and e!136357 mapRes!9125))))

(declare-fun condMapEmpty!9125 () Bool)

(declare-datatypes ((V!6809 0))(
  ( (V!6810 (val!2730 Int)) )
))
(declare-datatypes ((ValueCell!2342 0))(
  ( (ValueCellFull!2342 (v!4696 V!6809)) (EmptyCell!2342) )
))
(declare-datatypes ((array!9940 0))(
  ( (array!9941 (arr!4720 (Array (_ BitVec 32) ValueCell!2342)) (size!5045 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9940)

(declare-fun mapDefault!9125 () ValueCell!2342)

