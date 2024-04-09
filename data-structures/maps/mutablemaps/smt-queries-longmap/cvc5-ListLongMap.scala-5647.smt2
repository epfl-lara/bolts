; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73694 () Bool)

(assert start!73694)

(declare-fun b_free!14581 () Bool)

(declare-fun b_next!14581 () Bool)

(assert (=> start!73694 (= b_free!14581 (not b_next!14581))))

(declare-fun tp!51248 () Bool)

(declare-fun b_and!24159 () Bool)

(assert (=> start!73694 (= tp!51248 b_and!24159)))

(declare-fun b!862625 () Bool)

(declare-fun res!586303 () Bool)

(declare-fun e!480623 () Bool)

(assert (=> b!862625 (=> (not res!586303) (not e!480623))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862625 (= res!586303 (validMask!0 mask!1196))))

(declare-fun b!862626 () Bool)

(declare-fun res!586304 () Bool)

(assert (=> b!862626 (=> (not res!586304) (not e!480623))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49580 0))(
  ( (array!49581 (arr!23817 (Array (_ BitVec 32) (_ BitVec 64))) (size!24258 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49580)

(assert (=> b!862626 (= res!586304 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24258 _keys!868))))))

(declare-fun b!862627 () Bool)

(declare-fun e!480622 () Bool)

(declare-fun tp_is_empty!16717 () Bool)

(assert (=> b!862627 (= e!480622 tp_is_empty!16717)))

(declare-fun b!862628 () Bool)

(declare-fun e!480617 () Bool)

(assert (=> b!862628 (= e!480617 tp_is_empty!16717)))

(declare-fun b!862629 () Bool)

(declare-fun e!480620 () Bool)

(declare-fun mapRes!26675 () Bool)

(assert (=> b!862629 (= e!480620 (and e!480617 mapRes!26675))))

(declare-fun condMapEmpty!26675 () Bool)

(declare-datatypes ((V!27337 0))(
  ( (V!27338 (val!8406 Int)) )
))
(declare-datatypes ((ValueCell!7919 0))(
  ( (ValueCellFull!7919 (v!10827 V!27337)) (EmptyCell!7919) )
))
(declare-datatypes ((array!49582 0))(
  ( (array!49583 (arr!23818 (Array (_ BitVec 32) ValueCell!7919)) (size!24259 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49582)

(declare-fun mapDefault!26675 () ValueCell!7919)

