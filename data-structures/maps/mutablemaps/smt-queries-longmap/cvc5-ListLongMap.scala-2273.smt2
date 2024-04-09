; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37108 () Bool)

(assert start!37108)

(declare-fun b_free!8227 () Bool)

(declare-fun b_next!8227 () Bool)

(assert (=> start!37108 (= b_free!8227 (not b_next!8227))))

(declare-fun tp!29397 () Bool)

(declare-fun b_and!15487 () Bool)

(assert (=> start!37108 (= tp!29397 b_and!15487)))

(declare-fun b!373347 () Bool)

(declare-fun res!210389 () Bool)

(declare-fun e!227615 () Bool)

(assert (=> b!373347 (=> (not res!210389) (not e!227615))))

(declare-datatypes ((array!21657 0))(
  ( (array!21658 (arr!10294 (Array (_ BitVec 32) (_ BitVec 64))) (size!10646 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21657)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21657 (_ BitVec 32)) Bool)

(assert (=> b!373347 (= res!210389 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373348 () Bool)

(declare-fun e!227613 () Bool)

(assert (=> b!373348 (= e!227613 true)))

(declare-datatypes ((V!12939 0))(
  ( (V!12940 (val!4482 Int)) )
))
(declare-datatypes ((tuple2!5928 0))(
  ( (tuple2!5929 (_1!2974 (_ BitVec 64)) (_2!2974 V!12939)) )
))
(declare-datatypes ((List!5803 0))(
  ( (Nil!5800) (Cons!5799 (h!6655 tuple2!5928) (t!10961 List!5803)) )
))
(declare-datatypes ((ListLongMap!4855 0))(
  ( (ListLongMap!4856 (toList!2443 List!5803)) )
))
(declare-fun lt!171557 () ListLongMap!4855)

(declare-fun lt!171558 () tuple2!5928)

(declare-fun lt!171556 () ListLongMap!4855)

(declare-fun lt!171566 () tuple2!5928)

(declare-fun +!784 (ListLongMap!4855 tuple2!5928) ListLongMap!4855)

(assert (=> b!373348 (= (+!784 lt!171556 lt!171566) (+!784 lt!171557 lt!171558))))

(declare-fun v!373 () V!12939)

(declare-datatypes ((Unit!11471 0))(
  ( (Unit!11472) )
))
(declare-fun lt!171567 () Unit!11471)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!12939)

(declare-fun lt!171564 () ListLongMap!4855)

(declare-fun addCommutativeForDiffKeys!213 (ListLongMap!4855 (_ BitVec 64) V!12939 (_ BitVec 64) V!12939) Unit!11471)

(assert (=> b!373348 (= lt!171567 (addCommutativeForDiffKeys!213 lt!171564 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!14877 () Bool)

(declare-fun mapRes!14877 () Bool)

(assert (=> mapIsEmpty!14877 mapRes!14877))

(declare-fun mapNonEmpty!14877 () Bool)

(declare-fun tp!29396 () Bool)

(declare-fun e!227617 () Bool)

(assert (=> mapNonEmpty!14877 (= mapRes!14877 (and tp!29396 e!227617))))

(declare-datatypes ((ValueCell!4094 0))(
  ( (ValueCellFull!4094 (v!6675 V!12939)) (EmptyCell!4094) )
))
(declare-datatypes ((array!21659 0))(
  ( (array!21660 (arr!10295 (Array (_ BitVec 32) ValueCell!4094)) (size!10647 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21659)

(declare-fun mapRest!14877 () (Array (_ BitVec 32) ValueCell!4094))

(declare-fun mapKey!14877 () (_ BitVec 32))

(declare-fun mapValue!14877 () ValueCell!4094)

(assert (=> mapNonEmpty!14877 (= (arr!10295 _values!506) (store mapRest!14877 mapKey!14877 mapValue!14877))))

(declare-fun b!373349 () Bool)

(declare-fun e!227614 () Bool)

(assert (=> b!373349 (= e!227614 e!227613)))

(declare-fun res!210392 () Bool)

(assert (=> b!373349 (=> res!210392 e!227613)))

(assert (=> b!373349 (= res!210392 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171563 () ListLongMap!4855)

(assert (=> b!373349 (= lt!171563 lt!171556)))

(assert (=> b!373349 (= lt!171556 (+!784 lt!171564 lt!171558))))

(declare-fun lt!171565 () Unit!11471)

(declare-fun lt!171555 () ListLongMap!4855)

(declare-fun zeroValue!472 () V!12939)

(assert (=> b!373349 (= lt!171565 (addCommutativeForDiffKeys!213 lt!171555 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171571 () ListLongMap!4855)

(assert (=> b!373349 (= lt!171571 (+!784 lt!171563 lt!171566))))

(declare-fun lt!171561 () ListLongMap!4855)

(declare-fun lt!171570 () tuple2!5928)

(assert (=> b!373349 (= lt!171563 (+!784 lt!171561 lt!171570))))

(declare-fun lt!171569 () ListLongMap!4855)

(assert (=> b!373349 (= lt!171569 lt!171557)))

(assert (=> b!373349 (= lt!171557 (+!784 lt!171564 lt!171566))))

(assert (=> b!373349 (= lt!171564 (+!784 lt!171555 lt!171570))))

(declare-fun lt!171560 () ListLongMap!4855)

(assert (=> b!373349 (= lt!171571 (+!784 (+!784 lt!171560 lt!171570) lt!171566))))

(assert (=> b!373349 (= lt!171566 (tuple2!5929 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373349 (= lt!171570 (tuple2!5929 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!210382 () Bool)

(assert (=> start!37108 (=> (not res!210382) (not e!227615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37108 (= res!210382 (validMask!0 mask!970))))

(assert (=> start!37108 e!227615))

(declare-fun e!227619 () Bool)

(declare-fun array_inv!7596 (array!21659) Bool)

(assert (=> start!37108 (and (array_inv!7596 _values!506) e!227619)))

(assert (=> start!37108 tp!29397))

(assert (=> start!37108 true))

(declare-fun tp_is_empty!8875 () Bool)

(assert (=> start!37108 tp_is_empty!8875))

(declare-fun array_inv!7597 (array!21657) Bool)

(assert (=> start!37108 (array_inv!7597 _keys!658)))

(declare-fun b!373350 () Bool)

(declare-fun res!210384 () Bool)

(assert (=> b!373350 (=> (not res!210384) (not e!227615))))

(declare-fun arrayContainsKey!0 (array!21657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373350 (= res!210384 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373351 () Bool)

(declare-fun res!210386 () Bool)

(assert (=> b!373351 (=> (not res!210386) (not e!227615))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373351 (= res!210386 (or (= (select (arr!10294 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10294 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373352 () Bool)

(declare-fun e!227616 () Bool)

(assert (=> b!373352 (= e!227619 (and e!227616 mapRes!14877))))

(declare-fun condMapEmpty!14877 () Bool)

(declare-fun mapDefault!14877 () ValueCell!4094)

