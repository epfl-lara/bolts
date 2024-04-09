; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40634 () Bool)

(assert start!40634)

(declare-fun b_free!10637 () Bool)

(declare-fun b_next!10637 () Bool)

(assert (=> start!40634 (= b_free!10637 (not b_next!10637))))

(declare-fun tp!37731 () Bool)

(declare-fun b_and!18663 () Bool)

(assert (=> start!40634 (= tp!37731 b_and!18663)))

(declare-fun b!448307 () Bool)

(declare-fun res!266542 () Bool)

(declare-fun e!263049 () Bool)

(assert (=> b!448307 (=> (not res!266542) (not e!263049))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448307 (= res!266542 (validKeyInArray!0 k!794))))

(declare-fun b!448308 () Bool)

(declare-fun e!263044 () Bool)

(declare-fun tp_is_empty!11975 () Bool)

(assert (=> b!448308 (= e!263044 tp_is_empty!11975)))

(declare-fun b!448309 () Bool)

(declare-fun res!266540 () Bool)

(assert (=> b!448309 (=> (not res!266540) (not e!263049))))

(declare-datatypes ((array!27717 0))(
  ( (array!27718 (arr!13301 (Array (_ BitVec 32) (_ BitVec 64))) (size!13653 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27717)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448309 (= res!266540 (or (= (select (arr!13301 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13301 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448310 () Bool)

(declare-fun res!266550 () Bool)

(assert (=> b!448310 (=> (not res!266550) (not e!263049))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27717 (_ BitVec 32)) Bool)

(assert (=> b!448310 (= res!266550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!19596 () Bool)

(declare-fun mapRes!19596 () Bool)

(declare-fun tp!37730 () Bool)

(declare-fun e!263046 () Bool)

(assert (=> mapNonEmpty!19596 (= mapRes!19596 (and tp!37730 e!263046))))

(declare-datatypes ((V!17071 0))(
  ( (V!17072 (val!6032 Int)) )
))
(declare-datatypes ((ValueCell!5644 0))(
  ( (ValueCellFull!5644 (v!8283 V!17071)) (EmptyCell!5644) )
))
(declare-fun mapRest!19596 () (Array (_ BitVec 32) ValueCell!5644))

(declare-datatypes ((array!27719 0))(
  ( (array!27720 (arr!13302 (Array (_ BitVec 32) ValueCell!5644)) (size!13654 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27719)

(declare-fun mapKey!19596 () (_ BitVec 32))

(declare-fun mapValue!19596 () ValueCell!5644)

(assert (=> mapNonEmpty!19596 (= (arr!13302 _values!549) (store mapRest!19596 mapKey!19596 mapValue!19596))))

(declare-fun b!448312 () Bool)

(declare-fun e!263047 () Bool)

(assert (=> b!448312 (= e!263047 (and e!263044 mapRes!19596))))

(declare-fun condMapEmpty!19596 () Bool)

(declare-fun mapDefault!19596 () ValueCell!5644)

