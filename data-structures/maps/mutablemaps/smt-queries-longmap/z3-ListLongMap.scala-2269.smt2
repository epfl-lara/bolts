; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37086 () Bool)

(assert start!37086)

(declare-fun b_free!8205 () Bool)

(declare-fun b_next!8205 () Bool)

(assert (=> start!37086 (= b_free!8205 (not b_next!8205))))

(declare-fun tp!29331 () Bool)

(declare-fun b_and!15465 () Bool)

(assert (=> start!37086 (= tp!29331 b_and!15465)))

(declare-fun b!372857 () Bool)

(declare-fun e!227364 () Bool)

(assert (=> b!372857 (= e!227364 true)))

(declare-fun e!227358 () Bool)

(assert (=> b!372857 e!227358))

(declare-fun res!210001 () Bool)

(assert (=> b!372857 (=> (not res!210001) (not e!227358))))

(declare-datatypes ((V!12909 0))(
  ( (V!12910 (val!4471 Int)) )
))
(declare-datatypes ((tuple2!5910 0))(
  ( (tuple2!5911 (_1!2965 (_ BitVec 64)) (_2!2965 V!12909)) )
))
(declare-datatypes ((List!5785 0))(
  ( (Nil!5782) (Cons!5781 (h!6637 tuple2!5910) (t!10943 List!5785)) )
))
(declare-datatypes ((ListLongMap!4837 0))(
  ( (ListLongMap!4838 (toList!2434 List!5785)) )
))
(declare-fun lt!171052 () ListLongMap!4837)

(declare-fun lt!171057 () tuple2!5910)

(declare-fun lt!171056 () ListLongMap!4837)

(declare-fun lt!171049 () tuple2!5910)

(declare-fun +!775 (ListLongMap!4837 tuple2!5910) ListLongMap!4837)

(assert (=> b!372857 (= res!210001 (= lt!171052 (+!775 (+!775 lt!171056 lt!171057) lt!171049)))))

(declare-fun minValue!472 () V!12909)

(assert (=> b!372857 (= lt!171049 (tuple2!5911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun zeroValue!472 () V!12909)

(assert (=> b!372857 (= lt!171057 (tuple2!5911 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!209994 () Bool)

(declare-fun e!227360 () Bool)

(assert (=> start!37086 (=> (not res!209994) (not e!227360))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37086 (= res!209994 (validMask!0 mask!970))))

(assert (=> start!37086 e!227360))

(declare-datatypes ((ValueCell!4083 0))(
  ( (ValueCellFull!4083 (v!6664 V!12909)) (EmptyCell!4083) )
))
(declare-datatypes ((array!21613 0))(
  ( (array!21614 (arr!10272 (Array (_ BitVec 32) ValueCell!4083)) (size!10624 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21613)

(declare-fun e!227363 () Bool)

(declare-fun array_inv!7586 (array!21613) Bool)

(assert (=> start!37086 (and (array_inv!7586 _values!506) e!227363)))

(assert (=> start!37086 tp!29331))

(assert (=> start!37086 true))

(declare-fun tp_is_empty!8853 () Bool)

(assert (=> start!37086 tp_is_empty!8853))

(declare-datatypes ((array!21615 0))(
  ( (array!21616 (arr!10273 (Array (_ BitVec 32) (_ BitVec 64))) (size!10625 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21615)

(declare-fun array_inv!7587 (array!21615) Bool)

(assert (=> start!37086 (array_inv!7587 _keys!658)))

(declare-fun b!372858 () Bool)

(declare-fun res!209996 () Bool)

(assert (=> b!372858 (=> (not res!209996) (not e!227360))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21615 (_ BitVec 32)) Bool)

(assert (=> b!372858 (= res!209996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372859 () Bool)

(declare-fun res!209992 () Bool)

(assert (=> b!372859 (=> (not res!209992) (not e!227358))))

(declare-fun lt!171058 () ListLongMap!4837)

(declare-fun lt!171053 () ListLongMap!4837)

(assert (=> b!372859 (= res!209992 (= lt!171053 (+!775 (+!775 lt!171058 lt!171057) lt!171049)))))

(declare-fun b!372860 () Bool)

(declare-fun e!227359 () Bool)

(assert (=> b!372860 (= e!227360 e!227359)))

(declare-fun res!210002 () Bool)

(assert (=> b!372860 (=> (not res!210002) (not e!227359))))

(declare-fun lt!171051 () array!21615)

(assert (=> b!372860 (= res!210002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171051 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372860 (= lt!171051 (array!21616 (store (arr!10273 _keys!658) i!548 k0!778) (size!10625 _keys!658)))))

(declare-fun b!372861 () Bool)

(assert (=> b!372861 (= e!227359 (not e!227364))))

(declare-fun res!209990 () Bool)

(assert (=> b!372861 (=> res!209990 e!227364)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!372861 (= res!209990 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!1884 (array!21615 array!21613 (_ BitVec 32) (_ BitVec 32) V!12909 V!12909 (_ BitVec 32) Int) ListLongMap!4837)

(assert (=> b!372861 (= lt!171053 (getCurrentListMap!1884 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171054 () array!21613)

(assert (=> b!372861 (= lt!171052 (getCurrentListMap!1884 lt!171051 lt!171054 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171055 () ListLongMap!4837)

(assert (=> b!372861 (and (= lt!171056 lt!171055) (= lt!171055 lt!171056))))

(declare-fun v!373 () V!12909)

(assert (=> b!372861 (= lt!171055 (+!775 lt!171058 (tuple2!5911 k0!778 v!373)))))

(declare-datatypes ((Unit!11455 0))(
  ( (Unit!11456) )
))
(declare-fun lt!171050 () Unit!11455)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!35 (array!21615 array!21613 (_ BitVec 32) (_ BitVec 32) V!12909 V!12909 (_ BitVec 32) (_ BitVec 64) V!12909 (_ BitVec 32) Int) Unit!11455)

(assert (=> b!372861 (= lt!171050 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!35 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!702 (array!21615 array!21613 (_ BitVec 32) (_ BitVec 32) V!12909 V!12909 (_ BitVec 32) Int) ListLongMap!4837)

(assert (=> b!372861 (= lt!171056 (getCurrentListMapNoExtraKeys!702 lt!171051 lt!171054 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372861 (= lt!171054 (array!21614 (store (arr!10272 _values!506) i!548 (ValueCellFull!4083 v!373)) (size!10624 _values!506)))))

(assert (=> b!372861 (= lt!171058 (getCurrentListMapNoExtraKeys!702 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372862 () Bool)

(declare-fun res!209999 () Bool)

(assert (=> b!372862 (=> (not res!209999) (not e!227360))))

(assert (=> b!372862 (= res!209999 (and (= (size!10624 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10625 _keys!658) (size!10624 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!372863 () Bool)

(declare-fun res!209998 () Bool)

(assert (=> b!372863 (=> (not res!209998) (not e!227360))))

(assert (=> b!372863 (= res!209998 (or (= (select (arr!10273 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10273 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14844 () Bool)

(declare-fun mapRes!14844 () Bool)

(declare-fun tp!29330 () Bool)

(declare-fun e!227357 () Bool)

(assert (=> mapNonEmpty!14844 (= mapRes!14844 (and tp!29330 e!227357))))

(declare-fun mapKey!14844 () (_ BitVec 32))

(declare-fun mapValue!14844 () ValueCell!4083)

(declare-fun mapRest!14844 () (Array (_ BitVec 32) ValueCell!4083))

(assert (=> mapNonEmpty!14844 (= (arr!10272 _values!506) (store mapRest!14844 mapKey!14844 mapValue!14844))))

(declare-fun b!372864 () Bool)

(assert (=> b!372864 (= e!227358 (= lt!171052 (+!775 (+!775 lt!171055 lt!171057) lt!171049)))))

(declare-fun b!372865 () Bool)

(declare-fun res!209997 () Bool)

(assert (=> b!372865 (=> (not res!209997) (not e!227360))))

(declare-fun arrayContainsKey!0 (array!21615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372865 (= res!209997 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!372866 () Bool)

(declare-fun e!227361 () Bool)

(assert (=> b!372866 (= e!227363 (and e!227361 mapRes!14844))))

(declare-fun condMapEmpty!14844 () Bool)

(declare-fun mapDefault!14844 () ValueCell!4083)

(assert (=> b!372866 (= condMapEmpty!14844 (= (arr!10272 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4083)) mapDefault!14844)))))

(declare-fun mapIsEmpty!14844 () Bool)

(assert (=> mapIsEmpty!14844 mapRes!14844))

(declare-fun b!372867 () Bool)

(declare-fun res!209991 () Bool)

(assert (=> b!372867 (=> (not res!209991) (not e!227359))))

(declare-datatypes ((List!5786 0))(
  ( (Nil!5783) (Cons!5782 (h!6638 (_ BitVec 64)) (t!10944 List!5786)) )
))
(declare-fun arrayNoDuplicates!0 (array!21615 (_ BitVec 32) List!5786) Bool)

(assert (=> b!372867 (= res!209991 (arrayNoDuplicates!0 lt!171051 #b00000000000000000000000000000000 Nil!5783))))

(declare-fun b!372868 () Bool)

(declare-fun res!209993 () Bool)

(assert (=> b!372868 (=> (not res!209993) (not e!227360))))

(assert (=> b!372868 (= res!209993 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10625 _keys!658))))))

(declare-fun b!372869 () Bool)

(assert (=> b!372869 (= e!227361 tp_is_empty!8853)))

(declare-fun b!372870 () Bool)

(assert (=> b!372870 (= e!227357 tp_is_empty!8853)))

(declare-fun b!372871 () Bool)

(declare-fun res!210000 () Bool)

(assert (=> b!372871 (=> (not res!210000) (not e!227360))))

(assert (=> b!372871 (= res!210000 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5783))))

(declare-fun b!372872 () Bool)

(declare-fun res!209995 () Bool)

(assert (=> b!372872 (=> (not res!209995) (not e!227360))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372872 (= res!209995 (validKeyInArray!0 k0!778))))

(assert (= (and start!37086 res!209994) b!372862))

(assert (= (and b!372862 res!209999) b!372858))

(assert (= (and b!372858 res!209996) b!372871))

(assert (= (and b!372871 res!210000) b!372868))

(assert (= (and b!372868 res!209993) b!372872))

(assert (= (and b!372872 res!209995) b!372863))

(assert (= (and b!372863 res!209998) b!372865))

(assert (= (and b!372865 res!209997) b!372860))

(assert (= (and b!372860 res!210002) b!372867))

(assert (= (and b!372867 res!209991) b!372861))

(assert (= (and b!372861 (not res!209990)) b!372857))

(assert (= (and b!372857 res!210001) b!372859))

(assert (= (and b!372859 res!209992) b!372864))

(assert (= (and b!372866 condMapEmpty!14844) mapIsEmpty!14844))

(assert (= (and b!372866 (not condMapEmpty!14844)) mapNonEmpty!14844))

(get-info :version)

(assert (= (and mapNonEmpty!14844 ((_ is ValueCellFull!4083) mapValue!14844)) b!372870))

(assert (= (and b!372866 ((_ is ValueCellFull!4083) mapDefault!14844)) b!372869))

(assert (= start!37086 b!372866))

(declare-fun m!368719 () Bool)

(assert (=> b!372872 m!368719))

(declare-fun m!368721 () Bool)

(assert (=> mapNonEmpty!14844 m!368721))

(declare-fun m!368723 () Bool)

(assert (=> start!37086 m!368723))

(declare-fun m!368725 () Bool)

(assert (=> start!37086 m!368725))

(declare-fun m!368727 () Bool)

(assert (=> start!37086 m!368727))

(declare-fun m!368729 () Bool)

(assert (=> b!372871 m!368729))

(declare-fun m!368731 () Bool)

(assert (=> b!372858 m!368731))

(declare-fun m!368733 () Bool)

(assert (=> b!372865 m!368733))

(declare-fun m!368735 () Bool)

(assert (=> b!372860 m!368735))

(declare-fun m!368737 () Bool)

(assert (=> b!372860 m!368737))

(declare-fun m!368739 () Bool)

(assert (=> b!372857 m!368739))

(assert (=> b!372857 m!368739))

(declare-fun m!368741 () Bool)

(assert (=> b!372857 m!368741))

(declare-fun m!368743 () Bool)

(assert (=> b!372859 m!368743))

(assert (=> b!372859 m!368743))

(declare-fun m!368745 () Bool)

(assert (=> b!372859 m!368745))

(declare-fun m!368747 () Bool)

(assert (=> b!372867 m!368747))

(declare-fun m!368749 () Bool)

(assert (=> b!372863 m!368749))

(declare-fun m!368751 () Bool)

(assert (=> b!372861 m!368751))

(declare-fun m!368753 () Bool)

(assert (=> b!372861 m!368753))

(declare-fun m!368755 () Bool)

(assert (=> b!372861 m!368755))

(declare-fun m!368757 () Bool)

(assert (=> b!372861 m!368757))

(declare-fun m!368759 () Bool)

(assert (=> b!372861 m!368759))

(declare-fun m!368761 () Bool)

(assert (=> b!372861 m!368761))

(declare-fun m!368763 () Bool)

(assert (=> b!372861 m!368763))

(declare-fun m!368765 () Bool)

(assert (=> b!372864 m!368765))

(assert (=> b!372864 m!368765))

(declare-fun m!368767 () Bool)

(assert (=> b!372864 m!368767))

(check-sat b_and!15465 (not b!372857) (not b!372859) (not b!372858) (not b!372865) (not b!372864) (not b!372860) (not mapNonEmpty!14844) (not b!372872) (not b_next!8205) (not b!372861) (not b!372871) (not b!372867) (not start!37086) tp_is_empty!8853)
(check-sat b_and!15465 (not b_next!8205))
