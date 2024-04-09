; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37444 () Bool)

(assert start!37444)

(declare-fun b_free!8563 () Bool)

(declare-fun b_next!8563 () Bool)

(assert (=> start!37444 (= b_free!8563 (not b_next!8563))))

(declare-fun tp!30405 () Bool)

(declare-fun b_and!15823 () Bool)

(assert (=> start!37444 (= tp!30405 b_and!15823)))

(declare-fun b!380905 () Bool)

(declare-fun res!216428 () Bool)

(declare-fun e!231630 () Bool)

(assert (=> b!380905 (=> (not res!216428) (not e!231630))))

(declare-datatypes ((array!22315 0))(
  ( (array!22316 (arr!10623 (Array (_ BitVec 32) (_ BitVec 64))) (size!10975 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22315)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22315 (_ BitVec 32)) Bool)

(assert (=> b!380905 (= res!216428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380906 () Bool)

(declare-fun e!231629 () Bool)

(assert (=> b!380906 (= e!231630 e!231629)))

(declare-fun res!216431 () Bool)

(assert (=> b!380906 (=> (not res!216431) (not e!231629))))

(declare-fun lt!178529 () array!22315)

(assert (=> b!380906 (= res!216431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178529 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380906 (= lt!178529 (array!22316 (store (arr!10623 _keys!658) i!548 k!778) (size!10975 _keys!658)))))

(declare-fun mapIsEmpty!15381 () Bool)

(declare-fun mapRes!15381 () Bool)

(assert (=> mapIsEmpty!15381 mapRes!15381))

(declare-fun b!380907 () Bool)

(declare-fun res!216435 () Bool)

(assert (=> b!380907 (=> (not res!216435) (not e!231629))))

(declare-datatypes ((List!6068 0))(
  ( (Nil!6065) (Cons!6064 (h!6920 (_ BitVec 64)) (t!11226 List!6068)) )
))
(declare-fun arrayNoDuplicates!0 (array!22315 (_ BitVec 32) List!6068) Bool)

(assert (=> b!380907 (= res!216435 (arrayNoDuplicates!0 lt!178529 #b00000000000000000000000000000000 Nil!6065))))

(declare-fun b!380909 () Bool)

(declare-fun res!216437 () Bool)

(assert (=> b!380909 (=> (not res!216437) (not e!231630))))

(assert (=> b!380909 (= res!216437 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6065))))

(declare-fun b!380910 () Bool)

(declare-fun res!216430 () Bool)

(assert (=> b!380910 (=> (not res!216430) (not e!231630))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13387 0))(
  ( (V!13388 (val!4650 Int)) )
))
(declare-datatypes ((ValueCell!4262 0))(
  ( (ValueCellFull!4262 (v!6843 V!13387)) (EmptyCell!4262) )
))
(declare-datatypes ((array!22317 0))(
  ( (array!22318 (arr!10624 (Array (_ BitVec 32) ValueCell!4262)) (size!10976 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22317)

(assert (=> b!380910 (= res!216430 (and (= (size!10976 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10975 _keys!658) (size!10976 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380911 () Bool)

(declare-fun e!231626 () Bool)

(declare-fun tp_is_empty!9211 () Bool)

(assert (=> b!380911 (= e!231626 tp_is_empty!9211)))

(declare-fun b!380912 () Bool)

(declare-fun res!216433 () Bool)

(assert (=> b!380912 (=> (not res!216433) (not e!231630))))

(assert (=> b!380912 (= res!216433 (or (= (select (arr!10623 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10623 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15381 () Bool)

(declare-fun tp!30404 () Bool)

(assert (=> mapNonEmpty!15381 (= mapRes!15381 (and tp!30404 e!231626))))

(declare-fun mapRest!15381 () (Array (_ BitVec 32) ValueCell!4262))

(declare-fun mapValue!15381 () ValueCell!4262)

(declare-fun mapKey!15381 () (_ BitVec 32))

(assert (=> mapNonEmpty!15381 (= (arr!10624 _values!506) (store mapRest!15381 mapKey!15381 mapValue!15381))))

(declare-fun b!380913 () Bool)

(declare-fun e!231627 () Bool)

(assert (=> b!380913 (= e!231627 true)))

(declare-datatypes ((tuple2!6196 0))(
  ( (tuple2!6197 (_1!3108 (_ BitVec 64)) (_2!3108 V!13387)) )
))
(declare-datatypes ((List!6069 0))(
  ( (Nil!6066) (Cons!6065 (h!6921 tuple2!6196) (t!11227 List!6069)) )
))
(declare-datatypes ((ListLongMap!5123 0))(
  ( (ListLongMap!5124 (toList!2577 List!6069)) )
))
(declare-fun lt!178526 () ListLongMap!5123)

(declare-fun lt!178525 () ListLongMap!5123)

(assert (=> b!380913 (= lt!178526 lt!178525)))

(declare-fun b!380914 () Bool)

(declare-fun e!231625 () Bool)

(assert (=> b!380914 (= e!231625 tp_is_empty!9211)))

(declare-fun b!380915 () Bool)

(declare-fun res!216427 () Bool)

(assert (=> b!380915 (=> (not res!216427) (not e!231630))))

(declare-fun arrayContainsKey!0 (array!22315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380915 (= res!216427 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!380916 () Bool)

(declare-fun e!231624 () Bool)

(assert (=> b!380916 (= e!231624 (and e!231625 mapRes!15381))))

(declare-fun condMapEmpty!15381 () Bool)

(declare-fun mapDefault!15381 () ValueCell!4262)

