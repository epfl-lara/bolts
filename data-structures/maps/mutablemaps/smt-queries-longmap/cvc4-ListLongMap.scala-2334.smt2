; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37478 () Bool)

(assert start!37478)

(declare-fun b_free!8597 () Bool)

(declare-fun b_next!8597 () Bool)

(assert (=> start!37478 (= b_free!8597 (not b_next!8597))))

(declare-fun tp!30507 () Bool)

(declare-fun b_and!15857 () Bool)

(assert (=> start!37478 (= tp!30507 b_and!15857)))

(declare-fun b!381619 () Bool)

(declare-fun res!216997 () Bool)

(declare-fun e!231986 () Bool)

(assert (=> b!381619 (=> (not res!216997) (not e!231986))))

(declare-datatypes ((array!22381 0))(
  ( (array!22382 (arr!10656 (Array (_ BitVec 32) (_ BitVec 64))) (size!11008 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22381)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381619 (= res!216997 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381620 () Bool)

(declare-fun res!216991 () Bool)

(assert (=> b!381620 (=> (not res!216991) (not e!231986))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381620 (= res!216991 (or (= (select (arr!10656 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10656 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!216998 () Bool)

(assert (=> start!37478 (=> (not res!216998) (not e!231986))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37478 (= res!216998 (validMask!0 mask!970))))

(assert (=> start!37478 e!231986))

(declare-datatypes ((V!13431 0))(
  ( (V!13432 (val!4667 Int)) )
))
(declare-datatypes ((ValueCell!4279 0))(
  ( (ValueCellFull!4279 (v!6860 V!13431)) (EmptyCell!4279) )
))
(declare-datatypes ((array!22383 0))(
  ( (array!22384 (arr!10657 (Array (_ BitVec 32) ValueCell!4279)) (size!11009 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22383)

(declare-fun e!231983 () Bool)

(declare-fun array_inv!7828 (array!22383) Bool)

(assert (=> start!37478 (and (array_inv!7828 _values!506) e!231983)))

(assert (=> start!37478 tp!30507))

(assert (=> start!37478 true))

(declare-fun tp_is_empty!9245 () Bool)

(assert (=> start!37478 tp_is_empty!9245))

(declare-fun array_inv!7829 (array!22381) Bool)

(assert (=> start!37478 (array_inv!7829 _keys!658)))

(declare-fun b!381621 () Bool)

(declare-fun e!231981 () Bool)

(assert (=> b!381621 (= e!231981 tp_is_empty!9245)))

(declare-fun b!381622 () Bool)

(declare-fun e!231987 () Bool)

(declare-fun e!231984 () Bool)

(assert (=> b!381622 (= e!231987 (not e!231984))))

(declare-fun res!216995 () Bool)

(assert (=> b!381622 (=> res!216995 e!231984)))

(declare-fun lt!178986 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381622 (= res!216995 (or (and (not lt!178986) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178986) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178986)))))

(assert (=> b!381622 (= lt!178986 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6222 0))(
  ( (tuple2!6223 (_1!3121 (_ BitVec 64)) (_2!3121 V!13431)) )
))
(declare-datatypes ((List!6091 0))(
  ( (Nil!6088) (Cons!6087 (h!6943 tuple2!6222) (t!11249 List!6091)) )
))
(declare-datatypes ((ListLongMap!5149 0))(
  ( (ListLongMap!5150 (toList!2590 List!6091)) )
))
(declare-fun lt!178984 () ListLongMap!5149)

(declare-fun zeroValue!472 () V!13431)

(declare-fun minValue!472 () V!13431)

(declare-fun getCurrentListMap!2009 (array!22381 array!22383 (_ BitVec 32) (_ BitVec 32) V!13431 V!13431 (_ BitVec 32) Int) ListLongMap!5149)

(assert (=> b!381622 (= lt!178984 (getCurrentListMap!2009 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178989 () array!22381)

(declare-fun lt!178987 () ListLongMap!5149)

(declare-fun lt!178988 () array!22383)

(assert (=> b!381622 (= lt!178987 (getCurrentListMap!2009 lt!178989 lt!178988 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178983 () ListLongMap!5149)

(declare-fun lt!178990 () ListLongMap!5149)

(assert (=> b!381622 (and (= lt!178983 lt!178990) (= lt!178990 lt!178983))))

(declare-fun lt!178985 () ListLongMap!5149)

(declare-fun v!373 () V!13431)

(declare-fun +!927 (ListLongMap!5149 tuple2!6222) ListLongMap!5149)

(assert (=> b!381622 (= lt!178990 (+!927 lt!178985 (tuple2!6223 k!778 v!373)))))

(declare-datatypes ((Unit!11747 0))(
  ( (Unit!11748) )
))
(declare-fun lt!178982 () Unit!11747)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!160 (array!22381 array!22383 (_ BitVec 32) (_ BitVec 32) V!13431 V!13431 (_ BitVec 32) (_ BitVec 64) V!13431 (_ BitVec 32) Int) Unit!11747)

(assert (=> b!381622 (= lt!178982 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!160 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!827 (array!22381 array!22383 (_ BitVec 32) (_ BitVec 32) V!13431 V!13431 (_ BitVec 32) Int) ListLongMap!5149)

(assert (=> b!381622 (= lt!178983 (getCurrentListMapNoExtraKeys!827 lt!178989 lt!178988 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381622 (= lt!178988 (array!22384 (store (arr!10657 _values!506) i!548 (ValueCellFull!4279 v!373)) (size!11009 _values!506)))))

(assert (=> b!381622 (= lt!178985 (getCurrentListMapNoExtraKeys!827 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381623 () Bool)

(declare-fun res!216992 () Bool)

(assert (=> b!381623 (=> (not res!216992) (not e!231986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22381 (_ BitVec 32)) Bool)

(assert (=> b!381623 (= res!216992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381624 () Bool)

(assert (=> b!381624 (= e!231984 true)))

(assert (=> b!381624 (= lt!178987 lt!178983)))

(declare-fun b!381625 () Bool)

(assert (=> b!381625 (= e!231986 e!231987)))

(declare-fun res!216996 () Bool)

(assert (=> b!381625 (=> (not res!216996) (not e!231987))))

(assert (=> b!381625 (= res!216996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178989 mask!970))))

(assert (=> b!381625 (= lt!178989 (array!22382 (store (arr!10656 _keys!658) i!548 k!778) (size!11008 _keys!658)))))

(declare-fun b!381626 () Bool)

(declare-fun res!216989 () Bool)

(assert (=> b!381626 (=> (not res!216989) (not e!231986))))

(assert (=> b!381626 (= res!216989 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11008 _keys!658))))))

(declare-fun mapIsEmpty!15432 () Bool)

(declare-fun mapRes!15432 () Bool)

(assert (=> mapIsEmpty!15432 mapRes!15432))

(declare-fun b!381627 () Bool)

(declare-fun res!216993 () Bool)

(assert (=> b!381627 (=> (not res!216993) (not e!231986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381627 (= res!216993 (validKeyInArray!0 k!778))))

(declare-fun b!381628 () Bool)

(declare-fun res!216990 () Bool)

(assert (=> b!381628 (=> (not res!216990) (not e!231986))))

(assert (=> b!381628 (= res!216990 (and (= (size!11009 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11008 _keys!658) (size!11009 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15432 () Bool)

(declare-fun tp!30506 () Bool)

(assert (=> mapNonEmpty!15432 (= mapRes!15432 (and tp!30506 e!231981))))

(declare-fun mapRest!15432 () (Array (_ BitVec 32) ValueCell!4279))

(declare-fun mapKey!15432 () (_ BitVec 32))

(declare-fun mapValue!15432 () ValueCell!4279)

(assert (=> mapNonEmpty!15432 (= (arr!10657 _values!506) (store mapRest!15432 mapKey!15432 mapValue!15432))))

(declare-fun b!381629 () Bool)

(declare-fun e!231982 () Bool)

(assert (=> b!381629 (= e!231982 tp_is_empty!9245)))

(declare-fun b!381630 () Bool)

(declare-fun res!216994 () Bool)

(assert (=> b!381630 (=> (not res!216994) (not e!231987))))

(declare-datatypes ((List!6092 0))(
  ( (Nil!6089) (Cons!6088 (h!6944 (_ BitVec 64)) (t!11250 List!6092)) )
))
(declare-fun arrayNoDuplicates!0 (array!22381 (_ BitVec 32) List!6092) Bool)

(assert (=> b!381630 (= res!216994 (arrayNoDuplicates!0 lt!178989 #b00000000000000000000000000000000 Nil!6089))))

(declare-fun b!381631 () Bool)

(assert (=> b!381631 (= e!231983 (and e!231982 mapRes!15432))))

(declare-fun condMapEmpty!15432 () Bool)

(declare-fun mapDefault!15432 () ValueCell!4279)

