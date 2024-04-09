; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20572 () Bool)

(assert start!20572)

(declare-fun b_free!5219 () Bool)

(declare-fun b_next!5219 () Bool)

(assert (=> start!20572 (= b_free!5219 (not b_next!5219))))

(declare-fun tp!18688 () Bool)

(declare-fun b_and!11983 () Bool)

(assert (=> start!20572 (= tp!18688 b_and!11983)))

(declare-fun b!204544 () Bool)

(declare-fun res!98614 () Bool)

(declare-fun e!133833 () Bool)

(assert (=> b!204544 (=> (not res!98614) (not e!133833))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9366 0))(
  ( (array!9367 (arr!4433 (Array (_ BitVec 32) (_ BitVec 64))) (size!4758 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9366)

(assert (=> b!204544 (= res!98614 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4758 _keys!825))))))

(declare-fun b!204545 () Bool)

(declare-fun e!133834 () Bool)

(declare-fun e!133830 () Bool)

(declare-fun mapRes!8681 () Bool)

(assert (=> b!204545 (= e!133834 (and e!133830 mapRes!8681))))

(declare-fun condMapEmpty!8681 () Bool)

(declare-datatypes ((V!6413 0))(
  ( (V!6414 (val!2582 Int)) )
))
(declare-datatypes ((ValueCell!2194 0))(
  ( (ValueCellFull!2194 (v!4548 V!6413)) (EmptyCell!2194) )
))
(declare-datatypes ((array!9368 0))(
  ( (array!9369 (arr!4434 (Array (_ BitVec 32) ValueCell!2194)) (size!4759 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9368)

(declare-fun mapDefault!8681 () ValueCell!2194)

