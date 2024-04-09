; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37778 () Bool)

(assert start!37778)

(declare-fun b_free!8873 () Bool)

(declare-fun b_next!8873 () Bool)

(assert (=> start!37778 (= b_free!8873 (not b_next!8873))))

(declare-fun tp!31371 () Bool)

(declare-fun b_and!16133 () Bool)

(assert (=> start!37778 (= tp!31371 b_and!16133)))

(declare-fun b!387533 () Bool)

(declare-fun e!234917 () Bool)

(declare-fun e!234921 () Bool)

(assert (=> b!387533 (= e!234917 e!234921)))

(declare-fun res!221561 () Bool)

(assert (=> b!387533 (=> (not res!221561) (not e!234921))))

(declare-datatypes ((array!22959 0))(
  ( (array!22960 (arr!10945 (Array (_ BitVec 32) (_ BitVec 64))) (size!11297 (_ BitVec 32))) )
))
(declare-fun lt!182066 () array!22959)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22959 (_ BitVec 32)) Bool)

(assert (=> b!387533 (= res!221561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182066 mask!970))))

(declare-fun _keys!658 () array!22959)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!387533 (= lt!182066 (array!22960 (store (arr!10945 _keys!658) i!548 k!778) (size!11297 _keys!658)))))

(declare-fun b!387534 () Bool)

(declare-fun e!234920 () Bool)

(declare-fun tp_is_empty!9545 () Bool)

(assert (=> b!387534 (= e!234920 tp_is_empty!9545)))

(declare-fun b!387535 () Bool)

(assert (=> b!387535 (= e!234921 false)))

(declare-datatypes ((V!13831 0))(
  ( (V!13832 (val!4817 Int)) )
))
(declare-datatypes ((tuple2!6418 0))(
  ( (tuple2!6419 (_1!3219 (_ BitVec 64)) (_2!3219 V!13831)) )
))
(declare-datatypes ((List!6301 0))(
  ( (Nil!6298) (Cons!6297 (h!7153 tuple2!6418) (t!11459 List!6301)) )
))
(declare-datatypes ((ListLongMap!5345 0))(
  ( (ListLongMap!5346 (toList!2688 List!6301)) )
))
(declare-fun lt!182068 () ListLongMap!5345)

(declare-datatypes ((ValueCell!4429 0))(
  ( (ValueCellFull!4429 (v!7010 V!13831)) (EmptyCell!4429) )
))
(declare-datatypes ((array!22961 0))(
  ( (array!22962 (arr!10946 (Array (_ BitVec 32) ValueCell!4429)) (size!11298 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22961)

(declare-fun zeroValue!472 () V!13831)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13831)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13831)

(declare-fun getCurrentListMapNoExtraKeys!922 (array!22959 array!22961 (_ BitVec 32) (_ BitVec 32) V!13831 V!13831 (_ BitVec 32) Int) ListLongMap!5345)

(assert (=> b!387535 (= lt!182068 (getCurrentListMapNoExtraKeys!922 lt!182066 (array!22962 (store (arr!10946 _values!506) i!548 (ValueCellFull!4429 v!373)) (size!11298 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182067 () ListLongMap!5345)

(assert (=> b!387535 (= lt!182067 (getCurrentListMapNoExtraKeys!922 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387536 () Bool)

(declare-fun res!221559 () Bool)

(assert (=> b!387536 (=> (not res!221559) (not e!234917))))

(assert (=> b!387536 (= res!221559 (or (= (select (arr!10945 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10945 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387537 () Bool)

(declare-fun res!221558 () Bool)

(assert (=> b!387537 (=> (not res!221558) (not e!234917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387537 (= res!221558 (validKeyInArray!0 k!778))))

(declare-fun b!387538 () Bool)

(declare-fun res!221557 () Bool)

(assert (=> b!387538 (=> (not res!221557) (not e!234921))))

(declare-datatypes ((List!6302 0))(
  ( (Nil!6299) (Cons!6298 (h!7154 (_ BitVec 64)) (t!11460 List!6302)) )
))
(declare-fun arrayNoDuplicates!0 (array!22959 (_ BitVec 32) List!6302) Bool)

(assert (=> b!387538 (= res!221557 (arrayNoDuplicates!0 lt!182066 #b00000000000000000000000000000000 Nil!6299))))

(declare-fun b!387539 () Bool)

(declare-fun e!234919 () Bool)

(assert (=> b!387539 (= e!234919 tp_is_empty!9545)))

(declare-fun mapNonEmpty!15882 () Bool)

(declare-fun mapRes!15882 () Bool)

(declare-fun tp!31370 () Bool)

(assert (=> mapNonEmpty!15882 (= mapRes!15882 (and tp!31370 e!234920))))

(declare-fun mapKey!15882 () (_ BitVec 32))

(declare-fun mapValue!15882 () ValueCell!4429)

(declare-fun mapRest!15882 () (Array (_ BitVec 32) ValueCell!4429))

(assert (=> mapNonEmpty!15882 (= (arr!10946 _values!506) (store mapRest!15882 mapKey!15882 mapValue!15882))))

(declare-fun b!387540 () Bool)

(declare-fun res!221560 () Bool)

(assert (=> b!387540 (=> (not res!221560) (not e!234917))))

(assert (=> b!387540 (= res!221560 (and (= (size!11298 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11297 _keys!658) (size!11298 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387541 () Bool)

(declare-fun res!221554 () Bool)

(assert (=> b!387541 (=> (not res!221554) (not e!234917))))

(assert (=> b!387541 (= res!221554 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11297 _keys!658))))))

(declare-fun b!387542 () Bool)

(declare-fun e!234918 () Bool)

(assert (=> b!387542 (= e!234918 (and e!234919 mapRes!15882))))

(declare-fun condMapEmpty!15882 () Bool)

(declare-fun mapDefault!15882 () ValueCell!4429)

