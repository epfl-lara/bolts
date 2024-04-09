; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39960 () Bool)

(assert start!39960)

(declare-fun b_free!10219 () Bool)

(declare-fun b_next!10219 () Bool)

(assert (=> start!39960 (= b_free!10219 (not b_next!10219))))

(declare-fun tp!36185 () Bool)

(declare-fun b_and!18115 () Bool)

(assert (=> start!39960 (= tp!36185 b_and!18115)))

(declare-fun b!433795 () Bool)

(declare-fun e!256442 () Bool)

(declare-fun e!256444 () Bool)

(declare-fun mapRes!18678 () Bool)

(assert (=> b!433795 (= e!256442 (and e!256444 mapRes!18678))))

(declare-fun condMapEmpty!18678 () Bool)

(declare-datatypes ((V!16267 0))(
  ( (V!16268 (val!5730 Int)) )
))
(declare-datatypes ((ValueCell!5342 0))(
  ( (ValueCellFull!5342 (v!7973 V!16267)) (EmptyCell!5342) )
))
(declare-datatypes ((array!26551 0))(
  ( (array!26552 (arr!12722 (Array (_ BitVec 32) ValueCell!5342)) (size!13074 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26551)

(declare-fun mapDefault!18678 () ValueCell!5342)

