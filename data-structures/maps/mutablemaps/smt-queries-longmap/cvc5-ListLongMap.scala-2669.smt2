; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39840 () Bool)

(assert start!39840)

(declare-fun b_free!10099 () Bool)

(declare-fun b_next!10099 () Bool)

(assert (=> start!39840 (= b_free!10099 (not b_next!10099))))

(declare-fun tp!35825 () Bool)

(declare-fun b_and!17875 () Bool)

(assert (=> start!39840 (= tp!35825 b_and!17875)))

(declare-fun b!430075 () Bool)

(declare-fun e!254643 () Bool)

(declare-fun e!254636 () Bool)

(declare-fun mapRes!18498 () Bool)

(assert (=> b!430075 (= e!254643 (and e!254636 mapRes!18498))))

(declare-fun condMapEmpty!18498 () Bool)

(declare-datatypes ((V!16107 0))(
  ( (V!16108 (val!5670 Int)) )
))
(declare-datatypes ((ValueCell!5282 0))(
  ( (ValueCellFull!5282 (v!7913 V!16107)) (EmptyCell!5282) )
))
(declare-datatypes ((array!26317 0))(
  ( (array!26318 (arr!12605 (Array (_ BitVec 32) ValueCell!5282)) (size!12957 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26317)

(declare-fun mapDefault!18498 () ValueCell!5282)

