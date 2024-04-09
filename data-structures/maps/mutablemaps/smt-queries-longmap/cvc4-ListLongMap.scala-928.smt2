; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20680 () Bool)

(assert start!20680)

(declare-fun b_free!5327 () Bool)

(declare-fun b_next!5327 () Bool)

(assert (=> start!20680 (= b_free!5327 (not b_next!5327))))

(declare-fun tp!19013 () Bool)

(declare-fun b_and!12091 () Bool)

(assert (=> start!20680 (= tp!19013 b_and!12091)))

(declare-fun b!206472 () Bool)

(declare-fun res!100057 () Bool)

(declare-fun e!134948 () Bool)

(assert (=> b!206472 (=> (not res!100057) (not e!134948))))

(declare-datatypes ((array!9576 0))(
  ( (array!9577 (arr!4538 (Array (_ BitVec 32) (_ BitVec 64))) (size!4863 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9576)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!206472 (= res!100057 (= (select (arr!4538 _keys!825) i!601) k!843))))

(declare-fun b!206473 () Bool)

(declare-fun res!100058 () Bool)

(assert (=> b!206473 (=> (not res!100058) (not e!134948))))

(assert (=> b!206473 (= res!100058 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4863 _keys!825))))))

(declare-fun b!206474 () Bool)

(declare-fun e!134947 () Bool)

(declare-fun e!134949 () Bool)

(declare-fun mapRes!8843 () Bool)

(assert (=> b!206474 (= e!134947 (and e!134949 mapRes!8843))))

(declare-fun condMapEmpty!8843 () Bool)

(declare-datatypes ((V!6557 0))(
  ( (V!6558 (val!2636 Int)) )
))
(declare-datatypes ((ValueCell!2248 0))(
  ( (ValueCellFull!2248 (v!4602 V!6557)) (EmptyCell!2248) )
))
(declare-datatypes ((array!9578 0))(
  ( (array!9579 (arr!4539 (Array (_ BitVec 32) ValueCell!2248)) (size!4864 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9578)

(declare-fun mapDefault!8843 () ValueCell!2248)

