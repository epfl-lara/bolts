; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37774 () Bool)

(assert start!37774)

(declare-fun b_free!8869 () Bool)

(declare-fun b_next!8869 () Bool)

(assert (=> start!37774 (= b_free!8869 (not b_next!8869))))

(declare-fun tp!31358 () Bool)

(declare-fun b_and!16129 () Bool)

(assert (=> start!37774 (= tp!31358 b_and!16129)))

(declare-fun b!387455 () Bool)

(declare-fun res!221494 () Bool)

(declare-fun e!234884 () Bool)

(assert (=> b!387455 (=> (not res!221494) (not e!234884))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13827 0))(
  ( (V!13828 (val!4815 Int)) )
))
(declare-datatypes ((ValueCell!4427 0))(
  ( (ValueCellFull!4427 (v!7008 V!13827)) (EmptyCell!4427) )
))
(declare-datatypes ((array!22951 0))(
  ( (array!22952 (arr!10941 (Array (_ BitVec 32) ValueCell!4427)) (size!11293 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22951)

(declare-datatypes ((array!22953 0))(
  ( (array!22954 (arr!10942 (Array (_ BitVec 32) (_ BitVec 64))) (size!11294 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22953)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!387455 (= res!221494 (and (= (size!11293 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11294 _keys!658) (size!11293 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387456 () Bool)

(declare-fun e!234881 () Bool)

(assert (=> b!387456 (= e!234881 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!182050 () array!22953)

(declare-datatypes ((tuple2!6414 0))(
  ( (tuple2!6415 (_1!3217 (_ BitVec 64)) (_2!3217 V!13827)) )
))
(declare-datatypes ((List!6298 0))(
  ( (Nil!6295) (Cons!6294 (h!7150 tuple2!6414) (t!11456 List!6298)) )
))
(declare-datatypes ((ListLongMap!5341 0))(
  ( (ListLongMap!5342 (toList!2686 List!6298)) )
))
(declare-fun lt!182049 () ListLongMap!5341)

(declare-fun zeroValue!472 () V!13827)

(declare-fun v!373 () V!13827)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13827)

(declare-fun getCurrentListMapNoExtraKeys!920 (array!22953 array!22951 (_ BitVec 32) (_ BitVec 32) V!13827 V!13827 (_ BitVec 32) Int) ListLongMap!5341)

(assert (=> b!387456 (= lt!182049 (getCurrentListMapNoExtraKeys!920 lt!182050 (array!22952 (store (arr!10941 _values!506) i!548 (ValueCellFull!4427 v!373)) (size!11293 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182048 () ListLongMap!5341)

(assert (=> b!387456 (= lt!182048 (getCurrentListMapNoExtraKeys!920 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387457 () Bool)

(declare-fun e!234885 () Bool)

(declare-fun e!234883 () Bool)

(declare-fun mapRes!15876 () Bool)

(assert (=> b!387457 (= e!234885 (and e!234883 mapRes!15876))))

(declare-fun condMapEmpty!15876 () Bool)

(declare-fun mapDefault!15876 () ValueCell!4427)

