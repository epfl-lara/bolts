; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37518 () Bool)

(assert start!37518)

(declare-fun b_free!8637 () Bool)

(declare-fun b_next!8637 () Bool)

(assert (=> start!37518 (= b_free!8637 (not b_next!8637))))

(declare-fun tp!30626 () Bool)

(declare-fun b_and!15897 () Bool)

(assert (=> start!37518 (= tp!30626 b_and!15897)))

(declare-fun b!382459 () Bool)

(declare-fun e!232402 () Bool)

(declare-fun e!232407 () Bool)

(assert (=> b!382459 (= e!232402 e!232407)))

(declare-fun res!217655 () Bool)

(assert (=> b!382459 (=> (not res!217655) (not e!232407))))

(declare-datatypes ((array!22461 0))(
  ( (array!22462 (arr!10696 (Array (_ BitVec 32) (_ BitVec 64))) (size!11048 (_ BitVec 32))) )
))
(declare-fun lt!179526 () array!22461)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22461 (_ BitVec 32)) Bool)

(assert (=> b!382459 (= res!217655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179526 mask!970))))

(declare-fun _keys!658 () array!22461)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!382459 (= lt!179526 (array!22462 (store (arr!10696 _keys!658) i!548 k0!778) (size!11048 _keys!658)))))

(declare-fun b!382460 () Bool)

(declare-fun res!217654 () Bool)

(assert (=> b!382460 (=> (not res!217654) (not e!232402))))

(assert (=> b!382460 (= res!217654 (or (= (select (arr!10696 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10696 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!217648 () Bool)

(assert (=> start!37518 (=> (not res!217648) (not e!232402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37518 (= res!217648 (validMask!0 mask!970))))

(assert (=> start!37518 e!232402))

(declare-datatypes ((V!13485 0))(
  ( (V!13486 (val!4687 Int)) )
))
(declare-datatypes ((ValueCell!4299 0))(
  ( (ValueCellFull!4299 (v!6880 V!13485)) (EmptyCell!4299) )
))
(declare-datatypes ((array!22463 0))(
  ( (array!22464 (arr!10697 (Array (_ BitVec 32) ValueCell!4299)) (size!11049 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22463)

(declare-fun e!232401 () Bool)

(declare-fun array_inv!7854 (array!22463) Bool)

(assert (=> start!37518 (and (array_inv!7854 _values!506) e!232401)))

(assert (=> start!37518 tp!30626))

(assert (=> start!37518 true))

(declare-fun tp_is_empty!9285 () Bool)

(assert (=> start!37518 tp_is_empty!9285))

(declare-fun array_inv!7855 (array!22461) Bool)

(assert (=> start!37518 (array_inv!7855 _keys!658)))

(declare-fun mapNonEmpty!15492 () Bool)

(declare-fun mapRes!15492 () Bool)

(declare-fun tp!30627 () Bool)

(declare-fun e!232405 () Bool)

(assert (=> mapNonEmpty!15492 (= mapRes!15492 (and tp!30627 e!232405))))

(declare-fun mapKey!15492 () (_ BitVec 32))

(declare-fun mapRest!15492 () (Array (_ BitVec 32) ValueCell!4299))

(declare-fun mapValue!15492 () ValueCell!4299)

(assert (=> mapNonEmpty!15492 (= (arr!10697 _values!506) (store mapRest!15492 mapKey!15492 mapValue!15492))))

(declare-fun b!382461 () Bool)

(assert (=> b!382461 (= e!232405 tp_is_empty!9285)))

(declare-fun b!382462 () Bool)

(declare-fun res!217658 () Bool)

(assert (=> b!382462 (=> (not res!217658) (not e!232402))))

(declare-datatypes ((List!6120 0))(
  ( (Nil!6117) (Cons!6116 (h!6972 (_ BitVec 64)) (t!11278 List!6120)) )
))
(declare-fun arrayNoDuplicates!0 (array!22461 (_ BitVec 32) List!6120) Bool)

(assert (=> b!382462 (= res!217658 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6117))))

(declare-fun b!382463 () Bool)

(declare-fun res!217653 () Bool)

(assert (=> b!382463 (=> (not res!217653) (not e!232407))))

(assert (=> b!382463 (= res!217653 (arrayNoDuplicates!0 lt!179526 #b00000000000000000000000000000000 Nil!6117))))

(declare-fun mapIsEmpty!15492 () Bool)

(assert (=> mapIsEmpty!15492 mapRes!15492))

(declare-fun b!382464 () Bool)

(declare-fun e!232406 () Bool)

(assert (=> b!382464 (= e!232407 (not e!232406))))

(declare-fun res!217649 () Bool)

(assert (=> b!382464 (=> res!217649 e!232406)))

(declare-fun lt!179524 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382464 (= res!217649 (or (and (not lt!179524) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179524) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179524)))))

(assert (=> b!382464 (= lt!179524 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6252 0))(
  ( (tuple2!6253 (_1!3136 (_ BitVec 64)) (_2!3136 V!13485)) )
))
(declare-datatypes ((List!6121 0))(
  ( (Nil!6118) (Cons!6117 (h!6973 tuple2!6252) (t!11279 List!6121)) )
))
(declare-datatypes ((ListLongMap!5179 0))(
  ( (ListLongMap!5180 (toList!2605 List!6121)) )
))
(declare-fun lt!179530 () ListLongMap!5179)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13485)

(declare-fun minValue!472 () V!13485)

(declare-fun getCurrentListMap!2023 (array!22461 array!22463 (_ BitVec 32) (_ BitVec 32) V!13485 V!13485 (_ BitVec 32) Int) ListLongMap!5179)

(assert (=> b!382464 (= lt!179530 (getCurrentListMap!2023 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179522 () ListLongMap!5179)

(declare-fun lt!179525 () array!22463)

(assert (=> b!382464 (= lt!179522 (getCurrentListMap!2023 lt!179526 lt!179525 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179523 () ListLongMap!5179)

(declare-fun lt!179527 () ListLongMap!5179)

(assert (=> b!382464 (and (= lt!179523 lt!179527) (= lt!179527 lt!179523))))

(declare-fun v!373 () V!13485)

(declare-fun lt!179529 () ListLongMap!5179)

(declare-fun +!941 (ListLongMap!5179 tuple2!6252) ListLongMap!5179)

(assert (=> b!382464 (= lt!179527 (+!941 lt!179529 (tuple2!6253 k0!778 v!373)))))

(declare-datatypes ((Unit!11775 0))(
  ( (Unit!11776) )
))
(declare-fun lt!179528 () Unit!11775)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!174 (array!22461 array!22463 (_ BitVec 32) (_ BitVec 32) V!13485 V!13485 (_ BitVec 32) (_ BitVec 64) V!13485 (_ BitVec 32) Int) Unit!11775)

(assert (=> b!382464 (= lt!179528 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!174 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!841 (array!22461 array!22463 (_ BitVec 32) (_ BitVec 32) V!13485 V!13485 (_ BitVec 32) Int) ListLongMap!5179)

(assert (=> b!382464 (= lt!179523 (getCurrentListMapNoExtraKeys!841 lt!179526 lt!179525 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382464 (= lt!179525 (array!22464 (store (arr!10697 _values!506) i!548 (ValueCellFull!4299 v!373)) (size!11049 _values!506)))))

(assert (=> b!382464 (= lt!179529 (getCurrentListMapNoExtraKeys!841 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382465 () Bool)

(declare-fun res!217650 () Bool)

(assert (=> b!382465 (=> (not res!217650) (not e!232402))))

(assert (=> b!382465 (= res!217650 (and (= (size!11049 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11048 _keys!658) (size!11049 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382466 () Bool)

(declare-fun res!217652 () Bool)

(assert (=> b!382466 (=> (not res!217652) (not e!232402))))

(assert (=> b!382466 (= res!217652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382467 () Bool)

(declare-fun res!217651 () Bool)

(assert (=> b!382467 (=> (not res!217651) (not e!232402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382467 (= res!217651 (validKeyInArray!0 k0!778))))

(declare-fun b!382468 () Bool)

(declare-fun e!232404 () Bool)

(assert (=> b!382468 (= e!232404 tp_is_empty!9285)))

(declare-fun b!382469 () Bool)

(assert (=> b!382469 (= e!232401 (and e!232404 mapRes!15492))))

(declare-fun condMapEmpty!15492 () Bool)

(declare-fun mapDefault!15492 () ValueCell!4299)

(assert (=> b!382469 (= condMapEmpty!15492 (= (arr!10697 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4299)) mapDefault!15492)))))

(declare-fun b!382470 () Bool)

(assert (=> b!382470 (= e!232406 true)))

(assert (=> b!382470 (= lt!179522 lt!179523)))

(declare-fun b!382471 () Bool)

(declare-fun res!217657 () Bool)

(assert (=> b!382471 (=> (not res!217657) (not e!232402))))

(assert (=> b!382471 (= res!217657 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11048 _keys!658))))))

(declare-fun b!382472 () Bool)

(declare-fun res!217656 () Bool)

(assert (=> b!382472 (=> (not res!217656) (not e!232402))))

(declare-fun arrayContainsKey!0 (array!22461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382472 (= res!217656 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37518 res!217648) b!382465))

(assert (= (and b!382465 res!217650) b!382466))

(assert (= (and b!382466 res!217652) b!382462))

(assert (= (and b!382462 res!217658) b!382471))

(assert (= (and b!382471 res!217657) b!382467))

(assert (= (and b!382467 res!217651) b!382460))

(assert (= (and b!382460 res!217654) b!382472))

(assert (= (and b!382472 res!217656) b!382459))

(assert (= (and b!382459 res!217655) b!382463))

(assert (= (and b!382463 res!217653) b!382464))

(assert (= (and b!382464 (not res!217649)) b!382470))

(assert (= (and b!382469 condMapEmpty!15492) mapIsEmpty!15492))

(assert (= (and b!382469 (not condMapEmpty!15492)) mapNonEmpty!15492))

(get-info :version)

(assert (= (and mapNonEmpty!15492 ((_ is ValueCellFull!4299) mapValue!15492)) b!382461))

(assert (= (and b!382469 ((_ is ValueCellFull!4299) mapDefault!15492)) b!382468))

(assert (= start!37518 b!382469))

(declare-fun m!379303 () Bool)

(assert (=> b!382466 m!379303))

(declare-fun m!379305 () Bool)

(assert (=> b!382463 m!379305))

(declare-fun m!379307 () Bool)

(assert (=> start!37518 m!379307))

(declare-fun m!379309 () Bool)

(assert (=> start!37518 m!379309))

(declare-fun m!379311 () Bool)

(assert (=> start!37518 m!379311))

(declare-fun m!379313 () Bool)

(assert (=> mapNonEmpty!15492 m!379313))

(declare-fun m!379315 () Bool)

(assert (=> b!382467 m!379315))

(declare-fun m!379317 () Bool)

(assert (=> b!382460 m!379317))

(declare-fun m!379319 () Bool)

(assert (=> b!382464 m!379319))

(declare-fun m!379321 () Bool)

(assert (=> b!382464 m!379321))

(declare-fun m!379323 () Bool)

(assert (=> b!382464 m!379323))

(declare-fun m!379325 () Bool)

(assert (=> b!382464 m!379325))

(declare-fun m!379327 () Bool)

(assert (=> b!382464 m!379327))

(declare-fun m!379329 () Bool)

(assert (=> b!382464 m!379329))

(declare-fun m!379331 () Bool)

(assert (=> b!382464 m!379331))

(declare-fun m!379333 () Bool)

(assert (=> b!382459 m!379333))

(declare-fun m!379335 () Bool)

(assert (=> b!382459 m!379335))

(declare-fun m!379337 () Bool)

(assert (=> b!382472 m!379337))

(declare-fun m!379339 () Bool)

(assert (=> b!382462 m!379339))

(check-sat (not mapNonEmpty!15492) tp_is_empty!9285 (not b!382467) (not b!382466) b_and!15897 (not b!382472) (not b!382464) (not b_next!8637) (not b!382459) (not b!382463) (not b!382462) (not start!37518))
(check-sat b_and!15897 (not b_next!8637))
