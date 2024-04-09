; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37628 () Bool)

(assert start!37628)

(declare-fun b_free!8747 () Bool)

(declare-fun b_next!8747 () Bool)

(assert (=> start!37628 (= b_free!8747 (not b_next!8747))))

(declare-fun tp!30956 () Bool)

(declare-fun b_and!16007 () Bool)

(assert (=> start!37628 (= tp!30956 b_and!16007)))

(declare-fun b!384778 () Bool)

(declare-fun res!219477 () Bool)

(declare-fun e!233569 () Bool)

(assert (=> b!384778 (=> (not res!219477) (not e!233569))))

(declare-datatypes ((array!22675 0))(
  ( (array!22676 (arr!10803 (Array (_ BitVec 32) (_ BitVec 64))) (size!11155 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22675)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384778 (= res!219477 (or (= (select (arr!10803 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10803 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384779 () Bool)

(declare-fun res!219480 () Bool)

(assert (=> b!384779 (=> (not res!219480) (not e!233569))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22675 (_ BitVec 32)) Bool)

(assert (=> b!384779 (= res!219480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384780 () Bool)

(declare-fun e!233566 () Bool)

(assert (=> b!384780 (= e!233569 e!233566)))

(declare-fun res!219479 () Bool)

(assert (=> b!384780 (=> (not res!219479) (not e!233566))))

(declare-fun lt!181270 () array!22675)

(assert (=> b!384780 (= res!219479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181270 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!384780 (= lt!181270 (array!22676 (store (arr!10803 _keys!658) i!548 k!778) (size!11155 _keys!658)))))

(declare-fun res!219475 () Bool)

(assert (=> start!37628 (=> (not res!219475) (not e!233569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37628 (= res!219475 (validMask!0 mask!970))))

(assert (=> start!37628 e!233569))

(declare-datatypes ((V!13631 0))(
  ( (V!13632 (val!4742 Int)) )
))
(declare-datatypes ((ValueCell!4354 0))(
  ( (ValueCellFull!4354 (v!6935 V!13631)) (EmptyCell!4354) )
))
(declare-datatypes ((array!22677 0))(
  ( (array!22678 (arr!10804 (Array (_ BitVec 32) ValueCell!4354)) (size!11156 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22677)

(declare-fun e!233568 () Bool)

(declare-fun array_inv!7934 (array!22677) Bool)

(assert (=> start!37628 (and (array_inv!7934 _values!506) e!233568)))

(assert (=> start!37628 tp!30956))

(assert (=> start!37628 true))

(declare-fun tp_is_empty!9395 () Bool)

(assert (=> start!37628 tp_is_empty!9395))

(declare-fun array_inv!7935 (array!22675) Bool)

(assert (=> start!37628 (array_inv!7935 _keys!658)))

(declare-fun b!384781 () Bool)

(declare-fun res!219482 () Bool)

(assert (=> b!384781 (=> (not res!219482) (not e!233566))))

(declare-datatypes ((List!6204 0))(
  ( (Nil!6201) (Cons!6200 (h!7056 (_ BitVec 64)) (t!11362 List!6204)) )
))
(declare-fun arrayNoDuplicates!0 (array!22675 (_ BitVec 32) List!6204) Bool)

(assert (=> b!384781 (= res!219482 (arrayNoDuplicates!0 lt!181270 #b00000000000000000000000000000000 Nil!6201))))

(declare-fun b!384782 () Bool)

(declare-fun e!233567 () Bool)

(assert (=> b!384782 (= e!233566 (not e!233567))))

(declare-fun res!219472 () Bool)

(assert (=> b!384782 (=> res!219472 e!233567)))

(declare-fun lt!181276 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384782 (= res!219472 (or (and (not lt!181276) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181276) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181276)))))

(assert (=> b!384782 (= lt!181276 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6338 0))(
  ( (tuple2!6339 (_1!3179 (_ BitVec 64)) (_2!3179 V!13631)) )
))
(declare-datatypes ((List!6205 0))(
  ( (Nil!6202) (Cons!6201 (h!7057 tuple2!6338) (t!11363 List!6205)) )
))
(declare-datatypes ((ListLongMap!5265 0))(
  ( (ListLongMap!5266 (toList!2648 List!6205)) )
))
(declare-fun lt!181266 () ListLongMap!5265)

(declare-fun zeroValue!472 () V!13631)

(declare-fun minValue!472 () V!13631)

(declare-fun getCurrentListMap!2064 (array!22675 array!22677 (_ BitVec 32) (_ BitVec 32) V!13631 V!13631 (_ BitVec 32) Int) ListLongMap!5265)

(assert (=> b!384782 (= lt!181266 (getCurrentListMap!2064 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181274 () array!22677)

(declare-fun lt!181268 () ListLongMap!5265)

(assert (=> b!384782 (= lt!181268 (getCurrentListMap!2064 lt!181270 lt!181274 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181267 () ListLongMap!5265)

(declare-fun lt!181272 () ListLongMap!5265)

(assert (=> b!384782 (and (= lt!181267 lt!181272) (= lt!181272 lt!181267))))

(declare-fun lt!181273 () ListLongMap!5265)

(declare-fun lt!181271 () tuple2!6338)

(declare-fun +!984 (ListLongMap!5265 tuple2!6338) ListLongMap!5265)

(assert (=> b!384782 (= lt!181272 (+!984 lt!181273 lt!181271))))

(declare-fun v!373 () V!13631)

(assert (=> b!384782 (= lt!181271 (tuple2!6339 k!778 v!373))))

(declare-datatypes ((Unit!11857 0))(
  ( (Unit!11858) )
))
(declare-fun lt!181269 () Unit!11857)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!215 (array!22675 array!22677 (_ BitVec 32) (_ BitVec 32) V!13631 V!13631 (_ BitVec 32) (_ BitVec 64) V!13631 (_ BitVec 32) Int) Unit!11857)

(assert (=> b!384782 (= lt!181269 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!215 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!882 (array!22675 array!22677 (_ BitVec 32) (_ BitVec 32) V!13631 V!13631 (_ BitVec 32) Int) ListLongMap!5265)

(assert (=> b!384782 (= lt!181267 (getCurrentListMapNoExtraKeys!882 lt!181270 lt!181274 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384782 (= lt!181274 (array!22678 (store (arr!10804 _values!506) i!548 (ValueCellFull!4354 v!373)) (size!11156 _values!506)))))

(assert (=> b!384782 (= lt!181273 (getCurrentListMapNoExtraKeys!882 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15657 () Bool)

(declare-fun mapRes!15657 () Bool)

(assert (=> mapIsEmpty!15657 mapRes!15657))

(declare-fun mapNonEmpty!15657 () Bool)

(declare-fun tp!30957 () Bool)

(declare-fun e!233570 () Bool)

(assert (=> mapNonEmpty!15657 (= mapRes!15657 (and tp!30957 e!233570))))

(declare-fun mapKey!15657 () (_ BitVec 32))

(declare-fun mapRest!15657 () (Array (_ BitVec 32) ValueCell!4354))

(declare-fun mapValue!15657 () ValueCell!4354)

(assert (=> mapNonEmpty!15657 (= (arr!10804 _values!506) (store mapRest!15657 mapKey!15657 mapValue!15657))))

(declare-fun b!384783 () Bool)

(declare-fun res!219476 () Bool)

(assert (=> b!384783 (=> (not res!219476) (not e!233569))))

(declare-fun arrayContainsKey!0 (array!22675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384783 (= res!219476 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384784 () Bool)

(declare-fun res!219473 () Bool)

(assert (=> b!384784 (=> (not res!219473) (not e!233569))))

(assert (=> b!384784 (= res!219473 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11155 _keys!658))))))

(declare-fun b!384785 () Bool)

(declare-fun res!219481 () Bool)

(assert (=> b!384785 (=> (not res!219481) (not e!233569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384785 (= res!219481 (validKeyInArray!0 k!778))))

(declare-fun b!384786 () Bool)

(declare-fun e!233565 () Bool)

(assert (=> b!384786 (= e!233568 (and e!233565 mapRes!15657))))

(declare-fun condMapEmpty!15657 () Bool)

(declare-fun mapDefault!15657 () ValueCell!4354)

