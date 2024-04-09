; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39766 () Bool)

(assert start!39766)

(declare-fun b_free!10025 () Bool)

(declare-fun b_next!10025 () Bool)

(assert (=> start!39766 (= b_free!10025 (not b_next!10025))))

(declare-fun tp!35603 () Bool)

(declare-fun b_and!17727 () Bool)

(assert (=> start!39766 (= tp!35603 b_and!17727)))

(declare-fun b!427901 () Bool)

(declare-fun res!251193 () Bool)

(declare-fun e!253638 () Bool)

(assert (=> b!427901 (=> (not res!251193) (not e!253638))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427901 (= res!251193 (bvsle from!863 i!563))))

(declare-fun b!427902 () Bool)

(declare-fun e!253642 () Bool)

(declare-fun tp_is_empty!11177 () Bool)

(assert (=> b!427902 (= e!253642 tp_is_empty!11177)))

(declare-fun b!427903 () Bool)

(declare-fun e!253635 () Bool)

(declare-fun e!253640 () Bool)

(declare-fun mapRes!18387 () Bool)

(assert (=> b!427903 (= e!253635 (and e!253640 mapRes!18387))))

(declare-fun condMapEmpty!18387 () Bool)

(declare-datatypes ((V!16007 0))(
  ( (V!16008 (val!5633 Int)) )
))
(declare-datatypes ((ValueCell!5245 0))(
  ( (ValueCellFull!5245 (v!7876 V!16007)) (EmptyCell!5245) )
))
(declare-datatypes ((array!26173 0))(
  ( (array!26174 (arr!12533 (Array (_ BitVec 32) ValueCell!5245)) (size!12885 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26173)

(declare-fun mapDefault!18387 () ValueCell!5245)

