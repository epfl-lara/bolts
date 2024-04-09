; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37564 () Bool)

(assert start!37564)

(declare-fun b_free!8683 () Bool)

(declare-fun b_next!8683 () Bool)

(assert (=> start!37564 (= b_free!8683 (not b_next!8683))))

(declare-fun tp!30764 () Bool)

(declare-fun b_and!15943 () Bool)

(assert (=> start!37564 (= tp!30764 b_and!15943)))

(declare-fun b!383425 () Bool)

(declare-fun res!218415 () Bool)

(declare-fun e!232886 () Bool)

(assert (=> b!383425 (=> (not res!218415) (not e!232886))))

(declare-datatypes ((array!22553 0))(
  ( (array!22554 (arr!10742 (Array (_ BitVec 32) (_ BitVec 64))) (size!11094 (_ BitVec 32))) )
))
(declare-fun lt!180227 () array!22553)

(declare-datatypes ((List!6160 0))(
  ( (Nil!6157) (Cons!6156 (h!7012 (_ BitVec 64)) (t!11318 List!6160)) )
))
(declare-fun arrayNoDuplicates!0 (array!22553 (_ BitVec 32) List!6160) Bool)

(assert (=> b!383425 (= res!218415 (arrayNoDuplicates!0 lt!180227 #b00000000000000000000000000000000 Nil!6157))))

(declare-fun b!383426 () Bool)

(declare-fun res!218411 () Bool)

(declare-fun e!232887 () Bool)

(assert (=> b!383426 (=> (not res!218411) (not e!232887))))

(declare-fun _keys!658 () array!22553)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383426 (= res!218411 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383427 () Bool)

(declare-fun res!218409 () Bool)

(assert (=> b!383427 (=> (not res!218409) (not e!232887))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383427 (= res!218409 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11094 _keys!658))))))

(declare-fun res!218407 () Bool)

(assert (=> start!37564 (=> (not res!218407) (not e!232887))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37564 (= res!218407 (validMask!0 mask!970))))

(assert (=> start!37564 e!232887))

(declare-datatypes ((V!13547 0))(
  ( (V!13548 (val!4710 Int)) )
))
(declare-datatypes ((ValueCell!4322 0))(
  ( (ValueCellFull!4322 (v!6903 V!13547)) (EmptyCell!4322) )
))
(declare-datatypes ((array!22555 0))(
  ( (array!22556 (arr!10743 (Array (_ BitVec 32) ValueCell!4322)) (size!11095 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22555)

(declare-fun e!232884 () Bool)

(declare-fun array_inv!7890 (array!22555) Bool)

(assert (=> start!37564 (and (array_inv!7890 _values!506) e!232884)))

(assert (=> start!37564 tp!30764))

(assert (=> start!37564 true))

(declare-fun tp_is_empty!9331 () Bool)

(assert (=> start!37564 tp_is_empty!9331))

(declare-fun array_inv!7891 (array!22553) Bool)

(assert (=> start!37564 (array_inv!7891 _keys!658)))

(declare-fun b!383428 () Bool)

(declare-fun e!232889 () Bool)

(assert (=> b!383428 (= e!232889 tp_is_empty!9331)))

(declare-fun b!383429 () Bool)

(assert (=> b!383429 (= e!232887 e!232886)))

(declare-fun res!218416 () Bool)

(assert (=> b!383429 (=> (not res!218416) (not e!232886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22553 (_ BitVec 32)) Bool)

(assert (=> b!383429 (= res!218416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180227 mask!970))))

(assert (=> b!383429 (= lt!180227 (array!22554 (store (arr!10742 _keys!658) i!548 k!778) (size!11094 _keys!658)))))

(declare-fun b!383430 () Bool)

(declare-fun e!232888 () Bool)

(assert (=> b!383430 (= e!232886 (not e!232888))))

(declare-fun res!218417 () Bool)

(assert (=> b!383430 (=> res!218417 e!232888)))

(declare-fun lt!180220 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383430 (= res!218417 (or (and (not lt!180220) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180220) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180220)))))

(assert (=> b!383430 (= lt!180220 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13547)

(declare-fun minValue!472 () V!13547)

(declare-datatypes ((tuple2!6292 0))(
  ( (tuple2!6293 (_1!3156 (_ BitVec 64)) (_2!3156 V!13547)) )
))
(declare-datatypes ((List!6161 0))(
  ( (Nil!6158) (Cons!6157 (h!7013 tuple2!6292) (t!11319 List!6161)) )
))
(declare-datatypes ((ListLongMap!5219 0))(
  ( (ListLongMap!5220 (toList!2625 List!6161)) )
))
(declare-fun lt!180223 () ListLongMap!5219)

(declare-fun getCurrentListMap!2042 (array!22553 array!22555 (_ BitVec 32) (_ BitVec 32) V!13547 V!13547 (_ BitVec 32) Int) ListLongMap!5219)

(assert (=> b!383430 (= lt!180223 (getCurrentListMap!2042 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180221 () ListLongMap!5219)

(declare-fun lt!180224 () array!22555)

(assert (=> b!383430 (= lt!180221 (getCurrentListMap!2042 lt!180227 lt!180224 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180219 () ListLongMap!5219)

(declare-fun lt!180229 () ListLongMap!5219)

(assert (=> b!383430 (and (= lt!180219 lt!180229) (= lt!180229 lt!180219))))

(declare-fun lt!180225 () ListLongMap!5219)

(declare-fun lt!180228 () tuple2!6292)

(declare-fun +!961 (ListLongMap!5219 tuple2!6292) ListLongMap!5219)

(assert (=> b!383430 (= lt!180229 (+!961 lt!180225 lt!180228))))

(declare-fun v!373 () V!13547)

(assert (=> b!383430 (= lt!180228 (tuple2!6293 k!778 v!373))))

(declare-datatypes ((Unit!11813 0))(
  ( (Unit!11814) )
))
(declare-fun lt!180226 () Unit!11813)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!193 (array!22553 array!22555 (_ BitVec 32) (_ BitVec 32) V!13547 V!13547 (_ BitVec 32) (_ BitVec 64) V!13547 (_ BitVec 32) Int) Unit!11813)

(assert (=> b!383430 (= lt!180226 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!193 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!860 (array!22553 array!22555 (_ BitVec 32) (_ BitVec 32) V!13547 V!13547 (_ BitVec 32) Int) ListLongMap!5219)

(assert (=> b!383430 (= lt!180219 (getCurrentListMapNoExtraKeys!860 lt!180227 lt!180224 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383430 (= lt!180224 (array!22556 (store (arr!10743 _values!506) i!548 (ValueCellFull!4322 v!373)) (size!11095 _values!506)))))

(assert (=> b!383430 (= lt!180225 (getCurrentListMapNoExtraKeys!860 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15561 () Bool)

(declare-fun mapRes!15561 () Bool)

(declare-fun tp!30765 () Bool)

(declare-fun e!232890 () Bool)

(assert (=> mapNonEmpty!15561 (= mapRes!15561 (and tp!30765 e!232890))))

(declare-fun mapRest!15561 () (Array (_ BitVec 32) ValueCell!4322))

(declare-fun mapValue!15561 () ValueCell!4322)

(declare-fun mapKey!15561 () (_ BitVec 32))

(assert (=> mapNonEmpty!15561 (= (arr!10743 _values!506) (store mapRest!15561 mapKey!15561 mapValue!15561))))

(declare-fun b!383431 () Bool)

(declare-fun res!218413 () Bool)

(assert (=> b!383431 (=> (not res!218413) (not e!232887))))

(assert (=> b!383431 (= res!218413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383432 () Bool)

(assert (=> b!383432 (= e!232884 (and e!232889 mapRes!15561))))

(declare-fun condMapEmpty!15561 () Bool)

(declare-fun mapDefault!15561 () ValueCell!4322)

