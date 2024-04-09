; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37766 () Bool)

(assert start!37766)

(declare-fun b_free!8861 () Bool)

(declare-fun b_next!8861 () Bool)

(assert (=> start!37766 (= b_free!8861 (not b_next!8861))))

(declare-fun tp!31335 () Bool)

(declare-fun b_and!16121 () Bool)

(assert (=> start!37766 (= tp!31335 b_and!16121)))

(declare-fun b!387299 () Bool)

(declare-fun res!221379 () Bool)

(declare-fun e!234812 () Bool)

(assert (=> b!387299 (=> (not res!221379) (not e!234812))))

(declare-datatypes ((array!22935 0))(
  ( (array!22936 (arr!10933 (Array (_ BitVec 32) (_ BitVec 64))) (size!11285 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22935)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387299 (= res!221379 (or (= (select (arr!10933 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10933 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387300 () Bool)

(declare-fun res!221372 () Bool)

(assert (=> b!387300 (=> (not res!221372) (not e!234812))))

(assert (=> b!387300 (= res!221372 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11285 _keys!658))))))

(declare-fun mapIsEmpty!15864 () Bool)

(declare-fun mapRes!15864 () Bool)

(assert (=> mapIsEmpty!15864 mapRes!15864))

(declare-fun b!387301 () Bool)

(declare-fun res!221375 () Bool)

(assert (=> b!387301 (=> (not res!221375) (not e!234812))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13815 0))(
  ( (V!13816 (val!4811 Int)) )
))
(declare-datatypes ((ValueCell!4423 0))(
  ( (ValueCellFull!4423 (v!7004 V!13815)) (EmptyCell!4423) )
))
(declare-datatypes ((array!22937 0))(
  ( (array!22938 (arr!10934 (Array (_ BitVec 32) ValueCell!4423)) (size!11286 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22937)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!387301 (= res!221375 (and (= (size!11286 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11285 _keys!658) (size!11286 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387302 () Bool)

(declare-fun e!234809 () Bool)

(declare-fun tp_is_empty!9533 () Bool)

(assert (=> b!387302 (= e!234809 tp_is_empty!9533)))

(declare-fun b!387303 () Bool)

(declare-fun res!221374 () Bool)

(assert (=> b!387303 (=> (not res!221374) (not e!234812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22935 (_ BitVec 32)) Bool)

(assert (=> b!387303 (= res!221374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387304 () Bool)

(declare-fun e!234808 () Bool)

(assert (=> b!387304 (= e!234808 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6410 0))(
  ( (tuple2!6411 (_1!3215 (_ BitVec 64)) (_2!3215 V!13815)) )
))
(declare-datatypes ((List!6294 0))(
  ( (Nil!6291) (Cons!6290 (h!7146 tuple2!6410) (t!11452 List!6294)) )
))
(declare-datatypes ((ListLongMap!5337 0))(
  ( (ListLongMap!5338 (toList!2684 List!6294)) )
))
(declare-fun lt!182012 () ListLongMap!5337)

(declare-fun v!373 () V!13815)

(declare-fun lt!182013 () array!22935)

(declare-fun zeroValue!472 () V!13815)

(declare-fun minValue!472 () V!13815)

(declare-fun getCurrentListMapNoExtraKeys!918 (array!22935 array!22937 (_ BitVec 32) (_ BitVec 32) V!13815 V!13815 (_ BitVec 32) Int) ListLongMap!5337)

(assert (=> b!387304 (= lt!182012 (getCurrentListMapNoExtraKeys!918 lt!182013 (array!22938 (store (arr!10934 _values!506) i!548 (ValueCellFull!4423 v!373)) (size!11286 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182014 () ListLongMap!5337)

(assert (=> b!387304 (= lt!182014 (getCurrentListMapNoExtraKeys!918 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387305 () Bool)

(declare-fun res!221380 () Bool)

(assert (=> b!387305 (=> (not res!221380) (not e!234808))))

(declare-datatypes ((List!6295 0))(
  ( (Nil!6292) (Cons!6291 (h!7147 (_ BitVec 64)) (t!11453 List!6295)) )
))
(declare-fun arrayNoDuplicates!0 (array!22935 (_ BitVec 32) List!6295) Bool)

(assert (=> b!387305 (= res!221380 (arrayNoDuplicates!0 lt!182013 #b00000000000000000000000000000000 Nil!6292))))

(declare-fun res!221378 () Bool)

(assert (=> start!37766 (=> (not res!221378) (not e!234812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37766 (= res!221378 (validMask!0 mask!970))))

(assert (=> start!37766 e!234812))

(declare-fun e!234811 () Bool)

(declare-fun array_inv!8020 (array!22937) Bool)

(assert (=> start!37766 (and (array_inv!8020 _values!506) e!234811)))

(assert (=> start!37766 tp!31335))

(assert (=> start!37766 true))

(assert (=> start!37766 tp_is_empty!9533))

(declare-fun array_inv!8021 (array!22935) Bool)

(assert (=> start!37766 (array_inv!8021 _keys!658)))

(declare-fun b!387306 () Bool)

(declare-fun e!234810 () Bool)

(assert (=> b!387306 (= e!234810 tp_is_empty!9533)))

(declare-fun b!387307 () Bool)

(declare-fun res!221373 () Bool)

(assert (=> b!387307 (=> (not res!221373) (not e!234812))))

(assert (=> b!387307 (= res!221373 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6292))))

(declare-fun mapNonEmpty!15864 () Bool)

(declare-fun tp!31334 () Bool)

(assert (=> mapNonEmpty!15864 (= mapRes!15864 (and tp!31334 e!234810))))

(declare-fun mapKey!15864 () (_ BitVec 32))

(declare-fun mapRest!15864 () (Array (_ BitVec 32) ValueCell!4423))

(declare-fun mapValue!15864 () ValueCell!4423)

(assert (=> mapNonEmpty!15864 (= (arr!10934 _values!506) (store mapRest!15864 mapKey!15864 mapValue!15864))))

(declare-fun b!387308 () Bool)

(assert (=> b!387308 (= e!234811 (and e!234809 mapRes!15864))))

(declare-fun condMapEmpty!15864 () Bool)

(declare-fun mapDefault!15864 () ValueCell!4423)

