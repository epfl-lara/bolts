; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38196 () Bool)

(assert start!38196)

(declare-fun b_free!9047 () Bool)

(declare-fun b_next!9047 () Bool)

(assert (=> start!38196 (= b_free!9047 (not b_next!9047))))

(declare-fun tp!31925 () Bool)

(declare-fun b_and!16439 () Bool)

(assert (=> start!38196 (= tp!31925 b_and!16439)))

(declare-fun b!393547 () Bool)

(declare-fun res!225560 () Bool)

(declare-fun e!238278 () Bool)

(assert (=> b!393547 (=> (not res!225560) (not e!238278))))

(declare-datatypes ((array!23321 0))(
  ( (array!23322 (arr!11115 (Array (_ BitVec 32) (_ BitVec 64))) (size!11467 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23321)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393547 (= res!225560 (or (= (select (arr!11115 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11115 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393548 () Bool)

(declare-fun e!238275 () Bool)

(declare-fun e!238274 () Bool)

(declare-fun mapRes!16176 () Bool)

(assert (=> b!393548 (= e!238275 (and e!238274 mapRes!16176))))

(declare-fun condMapEmpty!16176 () Bool)

(declare-datatypes ((V!14063 0))(
  ( (V!14064 (val!4904 Int)) )
))
(declare-datatypes ((ValueCell!4516 0))(
  ( (ValueCellFull!4516 (v!7141 V!14063)) (EmptyCell!4516) )
))
(declare-datatypes ((array!23323 0))(
  ( (array!23324 (arr!11116 (Array (_ BitVec 32) ValueCell!4516)) (size!11468 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23323)

(declare-fun mapDefault!16176 () ValueCell!4516)

