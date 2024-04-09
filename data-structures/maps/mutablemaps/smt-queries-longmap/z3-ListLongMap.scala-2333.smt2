; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37470 () Bool)

(assert start!37470)

(declare-fun b_free!8589 () Bool)

(declare-fun b_next!8589 () Bool)

(assert (=> start!37470 (= b_free!8589 (not b_next!8589))))

(declare-fun tp!30483 () Bool)

(declare-fun b_and!15849 () Bool)

(assert (=> start!37470 (= tp!30483 b_and!15849)))

(declare-fun b!381451 () Bool)

(declare-fun res!216860 () Bool)

(declare-fun e!231901 () Bool)

(assert (=> b!381451 (=> (not res!216860) (not e!231901))))

(declare-datatypes ((array!22365 0))(
  ( (array!22366 (arr!10648 (Array (_ BitVec 32) (_ BitVec 64))) (size!11000 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22365)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381451 (= res!216860 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!381452 () Bool)

(declare-fun res!216859 () Bool)

(assert (=> b!381452 (=> (not res!216859) (not e!231901))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13421 0))(
  ( (V!13422 (val!4663 Int)) )
))
(declare-datatypes ((ValueCell!4275 0))(
  ( (ValueCellFull!4275 (v!6856 V!13421)) (EmptyCell!4275) )
))
(declare-datatypes ((array!22367 0))(
  ( (array!22368 (arr!10649 (Array (_ BitVec 32) ValueCell!4275)) (size!11001 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22367)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!381452 (= res!216859 (and (= (size!11001 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11000 _keys!658) (size!11001 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381453 () Bool)

(declare-fun res!216863 () Bool)

(assert (=> b!381453 (=> (not res!216863) (not e!231901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381453 (= res!216863 (validKeyInArray!0 k0!778))))

(declare-fun b!381454 () Bool)

(declare-fun e!231900 () Bool)

(declare-fun tp_is_empty!9237 () Bool)

(assert (=> b!381454 (= e!231900 tp_is_empty!9237)))

(declare-fun b!381455 () Bool)

(declare-fun res!216866 () Bool)

(declare-fun e!231902 () Bool)

(assert (=> b!381455 (=> (not res!216866) (not e!231902))))

(declare-fun lt!178875 () array!22365)

(declare-datatypes ((List!6086 0))(
  ( (Nil!6083) (Cons!6082 (h!6938 (_ BitVec 64)) (t!11244 List!6086)) )
))
(declare-fun arrayNoDuplicates!0 (array!22365 (_ BitVec 32) List!6086) Bool)

(assert (=> b!381455 (= res!216866 (arrayNoDuplicates!0 lt!178875 #b00000000000000000000000000000000 Nil!6083))))

(declare-fun b!381456 () Bool)

(declare-fun res!216857 () Bool)

(assert (=> b!381456 (=> (not res!216857) (not e!231901))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381456 (= res!216857 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11000 _keys!658))))))

(declare-fun b!381457 () Bool)

(declare-fun res!216856 () Bool)

(assert (=> b!381457 (=> (not res!216856) (not e!231901))))

(assert (=> b!381457 (= res!216856 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6083))))

(declare-fun mapIsEmpty!15420 () Bool)

(declare-fun mapRes!15420 () Bool)

(assert (=> mapIsEmpty!15420 mapRes!15420))

(declare-fun b!381458 () Bool)

(declare-fun res!216858 () Bool)

(assert (=> b!381458 (=> (not res!216858) (not e!231901))))

(assert (=> b!381458 (= res!216858 (or (= (select (arr!10648 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10648 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381459 () Bool)

(declare-fun e!231899 () Bool)

(assert (=> b!381459 (= e!231899 tp_is_empty!9237)))

(declare-fun res!216862 () Bool)

(assert (=> start!37470 (=> (not res!216862) (not e!231901))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37470 (= res!216862 (validMask!0 mask!970))))

(assert (=> start!37470 e!231901))

(declare-fun e!231903 () Bool)

(declare-fun array_inv!7824 (array!22367) Bool)

(assert (=> start!37470 (and (array_inv!7824 _values!506) e!231903)))

(assert (=> start!37470 tp!30483))

(assert (=> start!37470 true))

(assert (=> start!37470 tp_is_empty!9237))

(declare-fun array_inv!7825 (array!22365) Bool)

(assert (=> start!37470 (array_inv!7825 _keys!658)))

(declare-fun b!381460 () Bool)

(declare-fun e!231898 () Bool)

(assert (=> b!381460 (= e!231902 (not e!231898))))

(declare-fun res!216861 () Bool)

(assert (=> b!381460 (=> res!216861 e!231898)))

(declare-fun lt!178874 () Bool)

(assert (=> b!381460 (= res!216861 (or (and (not lt!178874) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178874) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178874)))))

(assert (=> b!381460 (= lt!178874 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6216 0))(
  ( (tuple2!6217 (_1!3118 (_ BitVec 64)) (_2!3118 V!13421)) )
))
(declare-datatypes ((List!6087 0))(
  ( (Nil!6084) (Cons!6083 (h!6939 tuple2!6216) (t!11245 List!6087)) )
))
(declare-datatypes ((ListLongMap!5143 0))(
  ( (ListLongMap!5144 (toList!2587 List!6087)) )
))
(declare-fun lt!178882 () ListLongMap!5143)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13421)

(declare-fun minValue!472 () V!13421)

(declare-fun getCurrentListMap!2007 (array!22365 array!22367 (_ BitVec 32) (_ BitVec 32) V!13421 V!13421 (_ BitVec 32) Int) ListLongMap!5143)

(assert (=> b!381460 (= lt!178882 (getCurrentListMap!2007 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178878 () array!22367)

(declare-fun lt!178881 () ListLongMap!5143)

(assert (=> b!381460 (= lt!178881 (getCurrentListMap!2007 lt!178875 lt!178878 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178879 () ListLongMap!5143)

(declare-fun lt!178877 () ListLongMap!5143)

(assert (=> b!381460 (and (= lt!178879 lt!178877) (= lt!178877 lt!178879))))

(declare-fun lt!178876 () ListLongMap!5143)

(declare-fun v!373 () V!13421)

(declare-fun +!925 (ListLongMap!5143 tuple2!6216) ListLongMap!5143)

(assert (=> b!381460 (= lt!178877 (+!925 lt!178876 (tuple2!6217 k0!778 v!373)))))

(declare-datatypes ((Unit!11743 0))(
  ( (Unit!11744) )
))
(declare-fun lt!178880 () Unit!11743)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!158 (array!22365 array!22367 (_ BitVec 32) (_ BitVec 32) V!13421 V!13421 (_ BitVec 32) (_ BitVec 64) V!13421 (_ BitVec 32) Int) Unit!11743)

(assert (=> b!381460 (= lt!178880 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!158 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!825 (array!22365 array!22367 (_ BitVec 32) (_ BitVec 32) V!13421 V!13421 (_ BitVec 32) Int) ListLongMap!5143)

(assert (=> b!381460 (= lt!178879 (getCurrentListMapNoExtraKeys!825 lt!178875 lt!178878 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381460 (= lt!178878 (array!22368 (store (arr!10649 _values!506) i!548 (ValueCellFull!4275 v!373)) (size!11001 _values!506)))))

(assert (=> b!381460 (= lt!178876 (getCurrentListMapNoExtraKeys!825 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381461 () Bool)

(assert (=> b!381461 (= e!231898 true)))

(assert (=> b!381461 (= lt!178881 lt!178879)))

(declare-fun b!381462 () Bool)

(assert (=> b!381462 (= e!231903 (and e!231900 mapRes!15420))))

(declare-fun condMapEmpty!15420 () Bool)

(declare-fun mapDefault!15420 () ValueCell!4275)

(assert (=> b!381462 (= condMapEmpty!15420 (= (arr!10649 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4275)) mapDefault!15420)))))

(declare-fun b!381463 () Bool)

(declare-fun res!216865 () Bool)

(assert (=> b!381463 (=> (not res!216865) (not e!231901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22365 (_ BitVec 32)) Bool)

(assert (=> b!381463 (= res!216865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15420 () Bool)

(declare-fun tp!30482 () Bool)

(assert (=> mapNonEmpty!15420 (= mapRes!15420 (and tp!30482 e!231899))))

(declare-fun mapKey!15420 () (_ BitVec 32))

(declare-fun mapValue!15420 () ValueCell!4275)

(declare-fun mapRest!15420 () (Array (_ BitVec 32) ValueCell!4275))

(assert (=> mapNonEmpty!15420 (= (arr!10649 _values!506) (store mapRest!15420 mapKey!15420 mapValue!15420))))

(declare-fun b!381464 () Bool)

(assert (=> b!381464 (= e!231901 e!231902)))

(declare-fun res!216864 () Bool)

(assert (=> b!381464 (=> (not res!216864) (not e!231902))))

(assert (=> b!381464 (= res!216864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178875 mask!970))))

(assert (=> b!381464 (= lt!178875 (array!22366 (store (arr!10648 _keys!658) i!548 k0!778) (size!11000 _keys!658)))))

(assert (= (and start!37470 res!216862) b!381452))

(assert (= (and b!381452 res!216859) b!381463))

(assert (= (and b!381463 res!216865) b!381457))

(assert (= (and b!381457 res!216856) b!381456))

(assert (= (and b!381456 res!216857) b!381453))

(assert (= (and b!381453 res!216863) b!381458))

(assert (= (and b!381458 res!216858) b!381451))

(assert (= (and b!381451 res!216860) b!381464))

(assert (= (and b!381464 res!216864) b!381455))

(assert (= (and b!381455 res!216866) b!381460))

(assert (= (and b!381460 (not res!216861)) b!381461))

(assert (= (and b!381462 condMapEmpty!15420) mapIsEmpty!15420))

(assert (= (and b!381462 (not condMapEmpty!15420)) mapNonEmpty!15420))

(get-info :version)

(assert (= (and mapNonEmpty!15420 ((_ is ValueCellFull!4275) mapValue!15420)) b!381459))

(assert (= (and b!381462 ((_ is ValueCellFull!4275) mapDefault!15420)) b!381454))

(assert (= start!37470 b!381462))

(declare-fun m!378391 () Bool)

(assert (=> b!381463 m!378391))

(declare-fun m!378393 () Bool)

(assert (=> b!381458 m!378393))

(declare-fun m!378395 () Bool)

(assert (=> b!381451 m!378395))

(declare-fun m!378397 () Bool)

(assert (=> b!381455 m!378397))

(declare-fun m!378399 () Bool)

(assert (=> start!37470 m!378399))

(declare-fun m!378401 () Bool)

(assert (=> start!37470 m!378401))

(declare-fun m!378403 () Bool)

(assert (=> start!37470 m!378403))

(declare-fun m!378405 () Bool)

(assert (=> b!381457 m!378405))

(declare-fun m!378407 () Bool)

(assert (=> b!381453 m!378407))

(declare-fun m!378409 () Bool)

(assert (=> b!381464 m!378409))

(declare-fun m!378411 () Bool)

(assert (=> b!381464 m!378411))

(declare-fun m!378413 () Bool)

(assert (=> mapNonEmpty!15420 m!378413))

(declare-fun m!378415 () Bool)

(assert (=> b!381460 m!378415))

(declare-fun m!378417 () Bool)

(assert (=> b!381460 m!378417))

(declare-fun m!378419 () Bool)

(assert (=> b!381460 m!378419))

(declare-fun m!378421 () Bool)

(assert (=> b!381460 m!378421))

(declare-fun m!378423 () Bool)

(assert (=> b!381460 m!378423))

(declare-fun m!378425 () Bool)

(assert (=> b!381460 m!378425))

(declare-fun m!378427 () Bool)

(assert (=> b!381460 m!378427))

(check-sat (not b!381453) (not b!381457) (not b!381451) (not b_next!8589) (not b!381464) (not b!381455) (not b!381463) (not start!37470) b_and!15849 (not mapNonEmpty!15420) tp_is_empty!9237 (not b!381460))
(check-sat b_and!15849 (not b_next!8589))
