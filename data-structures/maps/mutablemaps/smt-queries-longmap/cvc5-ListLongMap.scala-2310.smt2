; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37330 () Bool)

(assert start!37330)

(declare-fun b_free!8449 () Bool)

(declare-fun b_next!8449 () Bool)

(assert (=> start!37330 (= b_free!8449 (not b_next!8449))))

(declare-fun tp!30062 () Bool)

(declare-fun b_and!15709 () Bool)

(assert (=> start!37330 (= tp!30062 b_and!15709)))

(declare-fun b!378360 () Bool)

(declare-fun res!214401 () Bool)

(declare-fun e!230280 () Bool)

(assert (=> b!378360 (=> (not res!214401) (not e!230280))))

(declare-datatypes ((array!22091 0))(
  ( (array!22092 (arr!10511 (Array (_ BitVec 32) (_ BitVec 64))) (size!10863 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22091)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378360 (= res!214401 (or (= (select (arr!10511 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10511 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378361 () Bool)

(declare-fun res!214403 () Bool)

(assert (=> b!378361 (=> (not res!214403) (not e!230280))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378361 (= res!214403 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378362 () Bool)

(declare-fun res!214395 () Bool)

(assert (=> b!378362 (=> (not res!214395) (not e!230280))))

(assert (=> b!378362 (= res!214395 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10863 _keys!658))))))

(declare-fun b!378363 () Bool)

(declare-fun res!214402 () Bool)

(declare-fun e!230276 () Bool)

(assert (=> b!378363 (=> (not res!214402) (not e!230276))))

(declare-fun lt!176381 () array!22091)

(declare-datatypes ((List!5974 0))(
  ( (Nil!5971) (Cons!5970 (h!6826 (_ BitVec 64)) (t!11132 List!5974)) )
))
(declare-fun arrayNoDuplicates!0 (array!22091 (_ BitVec 32) List!5974) Bool)

(assert (=> b!378363 (= res!214402 (arrayNoDuplicates!0 lt!176381 #b00000000000000000000000000000000 Nil!5971))))

(declare-fun b!378364 () Bool)

(declare-fun e!230279 () Bool)

(assert (=> b!378364 (= e!230279 true)))

(declare-datatypes ((V!13235 0))(
  ( (V!13236 (val!4593 Int)) )
))
(declare-datatypes ((tuple2!6102 0))(
  ( (tuple2!6103 (_1!3061 (_ BitVec 64)) (_2!3061 V!13235)) )
))
(declare-datatypes ((List!5975 0))(
  ( (Nil!5972) (Cons!5971 (h!6827 tuple2!6102) (t!11133 List!5975)) )
))
(declare-datatypes ((ListLongMap!5029 0))(
  ( (ListLongMap!5030 (toList!2530 List!5975)) )
))
(declare-fun lt!176386 () ListLongMap!5029)

(declare-fun lt!176388 () ListLongMap!5029)

(declare-fun lt!176385 () tuple2!6102)

(declare-fun +!871 (ListLongMap!5029 tuple2!6102) ListLongMap!5029)

(assert (=> b!378364 (= lt!176386 (+!871 lt!176388 lt!176385))))

(declare-datatypes ((Unit!11639 0))(
  ( (Unit!11640) )
))
(declare-fun lt!176384 () Unit!11639)

(declare-fun v!373 () V!13235)

(declare-fun lt!176391 () ListLongMap!5029)

(declare-fun minValue!472 () V!13235)

(declare-fun addCommutativeForDiffKeys!286 (ListLongMap!5029 (_ BitVec 64) V!13235 (_ BitVec 64) V!13235) Unit!11639)

(assert (=> b!378364 (= lt!176384 (addCommutativeForDiffKeys!286 lt!176391 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378365 () Bool)

(declare-fun e!230282 () Bool)

(declare-fun tp_is_empty!9097 () Bool)

(assert (=> b!378365 (= e!230282 tp_is_empty!9097)))

(declare-fun b!378366 () Bool)

(declare-fun res!214406 () Bool)

(assert (=> b!378366 (=> (not res!214406) (not e!230280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378366 (= res!214406 (validKeyInArray!0 k!778))))

(declare-fun b!378367 () Bool)

(declare-fun res!214400 () Bool)

(assert (=> b!378367 (=> (not res!214400) (not e!230280))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4205 0))(
  ( (ValueCellFull!4205 (v!6786 V!13235)) (EmptyCell!4205) )
))
(declare-datatypes ((array!22093 0))(
  ( (array!22094 (arr!10512 (Array (_ BitVec 32) ValueCell!4205)) (size!10864 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22093)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!378367 (= res!214400 (and (= (size!10864 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10863 _keys!658) (size!10864 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!214405 () Bool)

(assert (=> start!37330 (=> (not res!214405) (not e!230280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37330 (= res!214405 (validMask!0 mask!970))))

(assert (=> start!37330 e!230280))

(declare-fun e!230277 () Bool)

(declare-fun array_inv!7732 (array!22093) Bool)

(assert (=> start!37330 (and (array_inv!7732 _values!506) e!230277)))

(assert (=> start!37330 tp!30062))

(assert (=> start!37330 true))

(assert (=> start!37330 tp_is_empty!9097))

(declare-fun array_inv!7733 (array!22091) Bool)

(assert (=> start!37330 (array_inv!7733 _keys!658)))

(declare-fun mapNonEmpty!15210 () Bool)

(declare-fun mapRes!15210 () Bool)

(declare-fun tp!30063 () Bool)

(assert (=> mapNonEmpty!15210 (= mapRes!15210 (and tp!30063 e!230282))))

(declare-fun mapKey!15210 () (_ BitVec 32))

(declare-fun mapValue!15210 () ValueCell!4205)

(declare-fun mapRest!15210 () (Array (_ BitVec 32) ValueCell!4205))

(assert (=> mapNonEmpty!15210 (= (arr!10512 _values!506) (store mapRest!15210 mapKey!15210 mapValue!15210))))

(declare-fun b!378368 () Bool)

(declare-fun res!214399 () Bool)

(assert (=> b!378368 (=> (not res!214399) (not e!230280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22091 (_ BitVec 32)) Bool)

(assert (=> b!378368 (= res!214399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15210 () Bool)

(assert (=> mapIsEmpty!15210 mapRes!15210))

(declare-fun b!378369 () Bool)

(declare-fun res!214397 () Bool)

(assert (=> b!378369 (=> (not res!214397) (not e!230280))))

(assert (=> b!378369 (= res!214397 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5971))))

(declare-fun b!378370 () Bool)

(declare-fun e!230283 () Bool)

(assert (=> b!378370 (= e!230283 e!230279)))

(declare-fun res!214398 () Bool)

(assert (=> b!378370 (=> res!214398 e!230279)))

(assert (=> b!378370 (= res!214398 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!176382 () ListLongMap!5029)

(assert (=> b!378370 (= lt!176382 lt!176388)))

(declare-fun lt!176390 () tuple2!6102)

(assert (=> b!378370 (= lt!176388 (+!871 lt!176391 lt!176390))))

(declare-fun lt!176392 () ListLongMap!5029)

(assert (=> b!378370 (= lt!176392 lt!176386)))

(declare-fun lt!176383 () ListLongMap!5029)

(assert (=> b!378370 (= lt!176386 (+!871 lt!176383 lt!176390))))

(declare-fun lt!176389 () ListLongMap!5029)

(assert (=> b!378370 (= lt!176392 (+!871 lt!176389 lt!176390))))

(assert (=> b!378370 (= lt!176390 (tuple2!6103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378371 () Bool)

(declare-fun e!230281 () Bool)

(assert (=> b!378371 (= e!230281 tp_is_empty!9097)))

(declare-fun b!378372 () Bool)

(assert (=> b!378372 (= e!230277 (and e!230281 mapRes!15210))))

(declare-fun condMapEmpty!15210 () Bool)

(declare-fun mapDefault!15210 () ValueCell!4205)

