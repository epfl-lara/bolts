; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37224 () Bool)

(assert start!37224)

(declare-fun b_free!8343 () Bool)

(declare-fun b_next!8343 () Bool)

(assert (=> start!37224 (= b_free!8343 (not b_next!8343))))

(declare-fun tp!29744 () Bool)

(declare-fun b_and!15603 () Bool)

(assert (=> start!37224 (= tp!29744 b_and!15603)))

(declare-fun b!375967 () Bool)

(declare-fun e!229009 () Bool)

(declare-fun e!229005 () Bool)

(assert (=> b!375967 (= e!229009 e!229005)))

(declare-fun res!212489 () Bool)

(assert (=> b!375967 (=> res!212489 e!229005)))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!375967 (= res!212489 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13093 0))(
  ( (V!13094 (val!4540 Int)) )
))
(declare-datatypes ((tuple2!6020 0))(
  ( (tuple2!6021 (_1!3020 (_ BitVec 64)) (_2!3020 V!13093)) )
))
(declare-datatypes ((List!5890 0))(
  ( (Nil!5887) (Cons!5886 (h!6742 tuple2!6020) (t!11048 List!5890)) )
))
(declare-datatypes ((ListLongMap!4947 0))(
  ( (ListLongMap!4948 (toList!2489 List!5890)) )
))
(declare-fun lt!174350 () ListLongMap!4947)

(declare-fun lt!174349 () ListLongMap!4947)

(assert (=> b!375967 (= lt!174350 lt!174349)))

(declare-fun lt!174352 () ListLongMap!4947)

(declare-fun lt!174361 () tuple2!6020)

(declare-fun +!830 (ListLongMap!4947 tuple2!6020) ListLongMap!4947)

(assert (=> b!375967 (= lt!174349 (+!830 lt!174352 lt!174361))))

(declare-fun lt!174351 () ListLongMap!4947)

(declare-fun lt!174356 () ListLongMap!4947)

(assert (=> b!375967 (= lt!174351 lt!174356)))

(declare-fun lt!174358 () ListLongMap!4947)

(assert (=> b!375967 (= lt!174356 (+!830 lt!174358 lt!174361))))

(declare-fun lt!174360 () ListLongMap!4947)

(assert (=> b!375967 (= lt!174350 (+!830 lt!174360 lt!174361))))

(declare-fun zeroValue!472 () V!13093)

(assert (=> b!375967 (= lt!174361 (tuple2!6021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375968 () Bool)

(declare-fun e!229008 () Bool)

(declare-fun tp_is_empty!8991 () Bool)

(assert (=> b!375968 (= e!229008 tp_is_empty!8991)))

(declare-fun b!375969 () Bool)

(assert (=> b!375969 (= e!229005 true)))

(declare-fun lt!174359 () tuple2!6020)

(assert (=> b!375969 (= lt!174349 (+!830 lt!174356 lt!174359))))

(declare-fun v!373 () V!13093)

(declare-datatypes ((Unit!11563 0))(
  ( (Unit!11564) )
))
(declare-fun lt!174354 () Unit!11563)

(declare-fun addCommutativeForDiffKeys!255 (ListLongMap!4947 (_ BitVec 64) V!13093 (_ BitVec 64) V!13093) Unit!11563)

(assert (=> b!375969 (= lt!174354 (addCommutativeForDiffKeys!255 lt!174358 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375970 () Bool)

(declare-fun res!212486 () Bool)

(declare-fun e!229010 () Bool)

(assert (=> b!375970 (=> (not res!212486) (not e!229010))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21881 0))(
  ( (array!21882 (arr!10406 (Array (_ BitVec 32) (_ BitVec 64))) (size!10758 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21881)

(assert (=> b!375970 (= res!212486 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10758 _keys!658))))))

(declare-fun mapNonEmpty!15051 () Bool)

(declare-fun mapRes!15051 () Bool)

(declare-fun tp!29745 () Bool)

(declare-fun e!229011 () Bool)

(assert (=> mapNonEmpty!15051 (= mapRes!15051 (and tp!29745 e!229011))))

(declare-fun mapKey!15051 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4152 0))(
  ( (ValueCellFull!4152 (v!6733 V!13093)) (EmptyCell!4152) )
))
(declare-fun mapRest!15051 () (Array (_ BitVec 32) ValueCell!4152))

(declare-datatypes ((array!21883 0))(
  ( (array!21884 (arr!10407 (Array (_ BitVec 32) ValueCell!4152)) (size!10759 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21883)

(declare-fun mapValue!15051 () ValueCell!4152)

(assert (=> mapNonEmpty!15051 (= (arr!10407 _values!506) (store mapRest!15051 mapKey!15051 mapValue!15051))))

(declare-fun b!375971 () Bool)

(declare-fun res!212488 () Bool)

(assert (=> b!375971 (=> (not res!212488) (not e!229010))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21881 (_ BitVec 32)) Bool)

(assert (=> b!375971 (= res!212488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375972 () Bool)

(declare-fun res!212481 () Bool)

(assert (=> b!375972 (=> (not res!212481) (not e!229010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375972 (= res!212481 (validKeyInArray!0 k0!778))))

(declare-fun b!375973 () Bool)

(declare-fun e!229004 () Bool)

(assert (=> b!375973 (= e!229010 e!229004)))

(declare-fun res!212478 () Bool)

(assert (=> b!375973 (=> (not res!212478) (not e!229004))))

(declare-fun lt!174357 () array!21881)

(assert (=> b!375973 (= res!212478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174357 mask!970))))

(assert (=> b!375973 (= lt!174357 (array!21882 (store (arr!10406 _keys!658) i!548 k0!778) (size!10758 _keys!658)))))

(declare-fun b!375974 () Bool)

(declare-fun res!212487 () Bool)

(assert (=> b!375974 (=> (not res!212487) (not e!229010))))

(declare-fun arrayContainsKey!0 (array!21881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375974 (= res!212487 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375975 () Bool)

(declare-fun res!212482 () Bool)

(assert (=> b!375975 (=> (not res!212482) (not e!229010))))

(assert (=> b!375975 (= res!212482 (or (= (select (arr!10406 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10406 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375976 () Bool)

(declare-fun e!229007 () Bool)

(assert (=> b!375976 (= e!229007 (and e!229008 mapRes!15051))))

(declare-fun condMapEmpty!15051 () Bool)

(declare-fun mapDefault!15051 () ValueCell!4152)

(assert (=> b!375976 (= condMapEmpty!15051 (= (arr!10407 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4152)) mapDefault!15051)))))

(declare-fun res!212485 () Bool)

(assert (=> start!37224 (=> (not res!212485) (not e!229010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37224 (= res!212485 (validMask!0 mask!970))))

(assert (=> start!37224 e!229010))

(declare-fun array_inv!7666 (array!21883) Bool)

(assert (=> start!37224 (and (array_inv!7666 _values!506) e!229007)))

(assert (=> start!37224 tp!29744))

(assert (=> start!37224 true))

(assert (=> start!37224 tp_is_empty!8991))

(declare-fun array_inv!7667 (array!21881) Bool)

(assert (=> start!37224 (array_inv!7667 _keys!658)))

(declare-fun b!375966 () Bool)

(assert (=> b!375966 (= e!229004 (not e!229009))))

(declare-fun res!212483 () Bool)

(assert (=> b!375966 (=> res!212483 e!229009)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375966 (= res!212483 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13093)

(declare-fun getCurrentListMap!1928 (array!21881 array!21883 (_ BitVec 32) (_ BitVec 32) V!13093 V!13093 (_ BitVec 32) Int) ListLongMap!4947)

(assert (=> b!375966 (= lt!174351 (getCurrentListMap!1928 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174355 () array!21883)

(assert (=> b!375966 (= lt!174350 (getCurrentListMap!1928 lt!174357 lt!174355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375966 (and (= lt!174360 lt!174352) (= lt!174352 lt!174360))))

(assert (=> b!375966 (= lt!174352 (+!830 lt!174358 lt!174359))))

(assert (=> b!375966 (= lt!174359 (tuple2!6021 k0!778 v!373))))

(declare-fun lt!174353 () Unit!11563)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!79 (array!21881 array!21883 (_ BitVec 32) (_ BitVec 32) V!13093 V!13093 (_ BitVec 32) (_ BitVec 64) V!13093 (_ BitVec 32) Int) Unit!11563)

(assert (=> b!375966 (= lt!174353 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!79 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!746 (array!21881 array!21883 (_ BitVec 32) (_ BitVec 32) V!13093 V!13093 (_ BitVec 32) Int) ListLongMap!4947)

(assert (=> b!375966 (= lt!174360 (getCurrentListMapNoExtraKeys!746 lt!174357 lt!174355 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375966 (= lt!174355 (array!21884 (store (arr!10407 _values!506) i!548 (ValueCellFull!4152 v!373)) (size!10759 _values!506)))))

(assert (=> b!375966 (= lt!174358 (getCurrentListMapNoExtraKeys!746 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15051 () Bool)

(assert (=> mapIsEmpty!15051 mapRes!15051))

(declare-fun b!375977 () Bool)

(assert (=> b!375977 (= e!229011 tp_is_empty!8991)))

(declare-fun b!375978 () Bool)

(declare-fun res!212479 () Bool)

(assert (=> b!375978 (=> (not res!212479) (not e!229010))))

(declare-datatypes ((List!5891 0))(
  ( (Nil!5888) (Cons!5887 (h!6743 (_ BitVec 64)) (t!11049 List!5891)) )
))
(declare-fun arrayNoDuplicates!0 (array!21881 (_ BitVec 32) List!5891) Bool)

(assert (=> b!375978 (= res!212479 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5888))))

(declare-fun b!375979 () Bool)

(declare-fun res!212484 () Bool)

(assert (=> b!375979 (=> (not res!212484) (not e!229004))))

(assert (=> b!375979 (= res!212484 (arrayNoDuplicates!0 lt!174357 #b00000000000000000000000000000000 Nil!5888))))

(declare-fun b!375980 () Bool)

(declare-fun res!212480 () Bool)

(assert (=> b!375980 (=> (not res!212480) (not e!229010))))

(assert (=> b!375980 (= res!212480 (and (= (size!10759 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10758 _keys!658) (size!10759 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!37224 res!212485) b!375980))

(assert (= (and b!375980 res!212480) b!375971))

(assert (= (and b!375971 res!212488) b!375978))

(assert (= (and b!375978 res!212479) b!375970))

(assert (= (and b!375970 res!212486) b!375972))

(assert (= (and b!375972 res!212481) b!375975))

(assert (= (and b!375975 res!212482) b!375974))

(assert (= (and b!375974 res!212487) b!375973))

(assert (= (and b!375973 res!212478) b!375979))

(assert (= (and b!375979 res!212484) b!375966))

(assert (= (and b!375966 (not res!212483)) b!375967))

(assert (= (and b!375967 (not res!212489)) b!375969))

(assert (= (and b!375976 condMapEmpty!15051) mapIsEmpty!15051))

(assert (= (and b!375976 (not condMapEmpty!15051)) mapNonEmpty!15051))

(get-info :version)

(assert (= (and mapNonEmpty!15051 ((_ is ValueCellFull!4152) mapValue!15051)) b!375977))

(assert (= (and b!375976 ((_ is ValueCellFull!4152) mapDefault!15051)) b!375968))

(assert (= start!37224 b!375976))

(declare-fun m!372689 () Bool)

(assert (=> b!375966 m!372689))

(declare-fun m!372691 () Bool)

(assert (=> b!375966 m!372691))

(declare-fun m!372693 () Bool)

(assert (=> b!375966 m!372693))

(declare-fun m!372695 () Bool)

(assert (=> b!375966 m!372695))

(declare-fun m!372697 () Bool)

(assert (=> b!375966 m!372697))

(declare-fun m!372699 () Bool)

(assert (=> b!375966 m!372699))

(declare-fun m!372701 () Bool)

(assert (=> b!375966 m!372701))

(declare-fun m!372703 () Bool)

(assert (=> mapNonEmpty!15051 m!372703))

(declare-fun m!372705 () Bool)

(assert (=> b!375973 m!372705))

(declare-fun m!372707 () Bool)

(assert (=> b!375973 m!372707))

(declare-fun m!372709 () Bool)

(assert (=> b!375971 m!372709))

(declare-fun m!372711 () Bool)

(assert (=> b!375972 m!372711))

(declare-fun m!372713 () Bool)

(assert (=> start!37224 m!372713))

(declare-fun m!372715 () Bool)

(assert (=> start!37224 m!372715))

(declare-fun m!372717 () Bool)

(assert (=> start!37224 m!372717))

(declare-fun m!372719 () Bool)

(assert (=> b!375978 m!372719))

(declare-fun m!372721 () Bool)

(assert (=> b!375969 m!372721))

(declare-fun m!372723 () Bool)

(assert (=> b!375969 m!372723))

(declare-fun m!372725 () Bool)

(assert (=> b!375974 m!372725))

(declare-fun m!372727 () Bool)

(assert (=> b!375979 m!372727))

(declare-fun m!372729 () Bool)

(assert (=> b!375975 m!372729))

(declare-fun m!372731 () Bool)

(assert (=> b!375967 m!372731))

(declare-fun m!372733 () Bool)

(assert (=> b!375967 m!372733))

(declare-fun m!372735 () Bool)

(assert (=> b!375967 m!372735))

(check-sat (not b!375972) (not b!375971) (not mapNonEmpty!15051) (not b!375973) (not b!375978) (not b!375966) (not start!37224) (not b!375969) (not b_next!8343) (not b!375967) (not b!375979) tp_is_empty!8991 b_and!15603 (not b!375974))
(check-sat b_and!15603 (not b_next!8343))
