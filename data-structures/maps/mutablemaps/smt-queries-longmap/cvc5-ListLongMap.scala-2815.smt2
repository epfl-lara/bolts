; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40808 () Bool)

(assert start!40808)

(declare-fun b_free!10789 () Bool)

(declare-fun b_next!10789 () Bool)

(assert (=> start!40808 (= b_free!10789 (not b_next!10789))))

(declare-fun tp!38190 () Bool)

(declare-fun b_and!18883 () Bool)

(assert (=> start!40808 (= tp!38190 b_and!18883)))

(declare-fun b!452453 () Bool)

(declare-fun e!264905 () Bool)

(declare-fun tp_is_empty!12127 () Bool)

(assert (=> b!452453 (= e!264905 tp_is_empty!12127)))

(declare-fun b!452454 () Bool)

(declare-datatypes ((V!17275 0))(
  ( (V!17276 (val!6108 Int)) )
))
(declare-datatypes ((tuple2!7988 0))(
  ( (tuple2!7989 (_1!4004 (_ BitVec 64)) (_2!4004 V!17275)) )
))
(declare-datatypes ((List!8091 0))(
  ( (Nil!8088) (Cons!8087 (h!8943 tuple2!7988) (t!13911 List!8091)) )
))
(declare-datatypes ((ListLongMap!6915 0))(
  ( (ListLongMap!6916 (toList!3473 List!8091)) )
))
(declare-fun call!29978 () ListLongMap!6915)

(declare-fun v!412 () V!17275)

(declare-fun call!29977 () ListLongMap!6915)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun e!264903 () Bool)

(declare-fun +!1538 (ListLongMap!6915 tuple2!7988) ListLongMap!6915)

(assert (=> b!452454 (= e!264903 (= call!29977 (+!1538 call!29978 (tuple2!7989 k!794 v!412))))))

(declare-fun b!452455 () Bool)

(declare-fun e!264904 () Bool)

(declare-fun mapRes!19827 () Bool)

(assert (=> b!452455 (= e!264904 (and e!264905 mapRes!19827))))

(declare-fun condMapEmpty!19827 () Bool)

(declare-datatypes ((ValueCell!5720 0))(
  ( (ValueCellFull!5720 (v!8363 V!17275)) (EmptyCell!5720) )
))
(declare-datatypes ((array!28023 0))(
  ( (array!28024 (arr!13453 (Array (_ BitVec 32) ValueCell!5720)) (size!13805 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28023)

(declare-fun mapDefault!19827 () ValueCell!5720)

