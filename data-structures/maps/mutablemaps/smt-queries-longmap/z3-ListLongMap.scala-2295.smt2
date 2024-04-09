; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37242 () Bool)

(assert start!37242)

(declare-fun b_free!8361 () Bool)

(declare-fun b_next!8361 () Bool)

(assert (=> start!37242 (= b_free!8361 (not b_next!8361))))

(declare-fun tp!29798 () Bool)

(declare-fun b_and!15621 () Bool)

(assert (=> start!37242 (= tp!29798 b_and!15621)))

(declare-fun b!376371 () Bool)

(declare-fun e!229224 () Bool)

(declare-fun e!229223 () Bool)

(assert (=> b!376371 (= e!229224 e!229223)))

(declare-fun res!212810 () Bool)

(assert (=> b!376371 (=> (not res!212810) (not e!229223))))

(declare-datatypes ((array!21917 0))(
  ( (array!21918 (arr!10424 (Array (_ BitVec 32) (_ BitVec 64))) (size!10776 (_ BitVec 32))) )
))
(declare-fun lt!174708 () array!21917)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21917 (_ BitVec 32)) Bool)

(assert (=> b!376371 (= res!212810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174708 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21917)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376371 (= lt!174708 (array!21918 (store (arr!10424 _keys!658) i!548 k0!778) (size!10776 _keys!658)))))

(declare-fun b!376372 () Bool)

(declare-fun res!212805 () Bool)

(assert (=> b!376372 (=> (not res!212805) (not e!229224))))

(assert (=> b!376372 (= res!212805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15078 () Bool)

(declare-fun mapRes!15078 () Bool)

(assert (=> mapIsEmpty!15078 mapRes!15078))

(declare-fun mapNonEmpty!15078 () Bool)

(declare-fun tp!29799 () Bool)

(declare-fun e!229225 () Bool)

(assert (=> mapNonEmpty!15078 (= mapRes!15078 (and tp!29799 e!229225))))

(declare-fun mapKey!15078 () (_ BitVec 32))

(declare-datatypes ((V!13117 0))(
  ( (V!13118 (val!4549 Int)) )
))
(declare-datatypes ((ValueCell!4161 0))(
  ( (ValueCellFull!4161 (v!6742 V!13117)) (EmptyCell!4161) )
))
(declare-datatypes ((array!21919 0))(
  ( (array!21920 (arr!10425 (Array (_ BitVec 32) ValueCell!4161)) (size!10777 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21919)

(declare-fun mapRest!15078 () (Array (_ BitVec 32) ValueCell!4161))

(declare-fun mapValue!15078 () ValueCell!4161)

(assert (=> mapNonEmpty!15078 (= (arr!10425 _values!506) (store mapRest!15078 mapKey!15078 mapValue!15078))))

(declare-fun b!376373 () Bool)

(declare-fun res!212802 () Bool)

(assert (=> b!376373 (=> (not res!212802) (not e!229224))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376373 (= res!212802 (and (= (size!10777 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10776 _keys!658) (size!10777 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376374 () Bool)

(declare-fun e!229226 () Bool)

(assert (=> b!376374 (= e!229226 true)))

(declare-datatypes ((tuple2!6032 0))(
  ( (tuple2!6033 (_1!3026 (_ BitVec 64)) (_2!3026 V!13117)) )
))
(declare-datatypes ((List!5903 0))(
  ( (Nil!5900) (Cons!5899 (h!6755 tuple2!6032) (t!11061 List!5903)) )
))
(declare-datatypes ((ListLongMap!4959 0))(
  ( (ListLongMap!4960 (toList!2495 List!5903)) )
))
(declare-fun lt!174700 () ListLongMap!4959)

(declare-fun lt!174706 () ListLongMap!4959)

(declare-fun lt!174710 () tuple2!6032)

(declare-fun +!836 (ListLongMap!4959 tuple2!6032) ListLongMap!4959)

(assert (=> b!376374 (= lt!174700 (+!836 lt!174706 lt!174710))))

(declare-datatypes ((Unit!11575 0))(
  ( (Unit!11576) )
))
(declare-fun lt!174705 () Unit!11575)

(declare-fun v!373 () V!13117)

(declare-fun zeroValue!472 () V!13117)

(declare-fun lt!174703 () ListLongMap!4959)

(declare-fun addCommutativeForDiffKeys!260 (ListLongMap!4959 (_ BitVec 64) V!13117 (_ BitVec 64) V!13117) Unit!11575)

(assert (=> b!376374 (= lt!174705 (addCommutativeForDiffKeys!260 lt!174703 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376375 () Bool)

(declare-fun res!212809 () Bool)

(assert (=> b!376375 (=> (not res!212809) (not e!229224))))

(declare-fun arrayContainsKey!0 (array!21917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376375 (= res!212809 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!212806 () Bool)

(assert (=> start!37242 (=> (not res!212806) (not e!229224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37242 (= res!212806 (validMask!0 mask!970))))

(assert (=> start!37242 e!229224))

(declare-fun e!229227 () Bool)

(declare-fun array_inv!7676 (array!21919) Bool)

(assert (=> start!37242 (and (array_inv!7676 _values!506) e!229227)))

(assert (=> start!37242 tp!29798))

(assert (=> start!37242 true))

(declare-fun tp_is_empty!9009 () Bool)

(assert (=> start!37242 tp_is_empty!9009))

(declare-fun array_inv!7677 (array!21917) Bool)

(assert (=> start!37242 (array_inv!7677 _keys!658)))

(declare-fun b!376376 () Bool)

(declare-fun e!229220 () Bool)

(assert (=> b!376376 (= e!229220 e!229226)))

(declare-fun res!212812 () Bool)

(assert (=> b!376376 (=> res!212812 e!229226)))

(assert (=> b!376376 (= res!212812 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174711 () ListLongMap!4959)

(assert (=> b!376376 (= lt!174711 lt!174700)))

(declare-fun lt!174709 () ListLongMap!4959)

(declare-fun lt!174712 () tuple2!6032)

(assert (=> b!376376 (= lt!174700 (+!836 lt!174709 lt!174712))))

(declare-fun lt!174702 () ListLongMap!4959)

(assert (=> b!376376 (= lt!174702 lt!174706)))

(assert (=> b!376376 (= lt!174706 (+!836 lt!174703 lt!174712))))

(declare-fun lt!174704 () ListLongMap!4959)

(assert (=> b!376376 (= lt!174711 (+!836 lt!174704 lt!174712))))

(assert (=> b!376376 (= lt!174712 (tuple2!6033 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376377 () Bool)

(declare-fun e!229222 () Bool)

(assert (=> b!376377 (= e!229222 tp_is_empty!9009)))

(declare-fun b!376378 () Bool)

(declare-fun res!212811 () Bool)

(assert (=> b!376378 (=> (not res!212811) (not e!229224))))

(assert (=> b!376378 (= res!212811 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10776 _keys!658))))))

(declare-fun b!376379 () Bool)

(assert (=> b!376379 (= e!229225 tp_is_empty!9009)))

(declare-fun b!376380 () Bool)

(declare-fun res!212803 () Bool)

(assert (=> b!376380 (=> (not res!212803) (not e!229223))))

(declare-datatypes ((List!5904 0))(
  ( (Nil!5901) (Cons!5900 (h!6756 (_ BitVec 64)) (t!11062 List!5904)) )
))
(declare-fun arrayNoDuplicates!0 (array!21917 (_ BitVec 32) List!5904) Bool)

(assert (=> b!376380 (= res!212803 (arrayNoDuplicates!0 lt!174708 #b00000000000000000000000000000000 Nil!5901))))

(declare-fun b!376381 () Bool)

(assert (=> b!376381 (= e!229227 (and e!229222 mapRes!15078))))

(declare-fun condMapEmpty!15078 () Bool)

(declare-fun mapDefault!15078 () ValueCell!4161)

(assert (=> b!376381 (= condMapEmpty!15078 (= (arr!10425 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4161)) mapDefault!15078)))))

(declare-fun b!376382 () Bool)

(declare-fun res!212813 () Bool)

(assert (=> b!376382 (=> (not res!212813) (not e!229224))))

(assert (=> b!376382 (= res!212813 (or (= (select (arr!10424 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10424 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376383 () Bool)

(assert (=> b!376383 (= e!229223 (not e!229220))))

(declare-fun res!212808 () Bool)

(assert (=> b!376383 (=> res!212808 e!229220)))

(assert (=> b!376383 (= res!212808 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13117)

(declare-fun getCurrentListMap!1934 (array!21917 array!21919 (_ BitVec 32) (_ BitVec 32) V!13117 V!13117 (_ BitVec 32) Int) ListLongMap!4959)

(assert (=> b!376383 (= lt!174702 (getCurrentListMap!1934 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174707 () array!21919)

(assert (=> b!376383 (= lt!174711 (getCurrentListMap!1934 lt!174708 lt!174707 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376383 (and (= lt!174704 lt!174709) (= lt!174709 lt!174704))))

(assert (=> b!376383 (= lt!174709 (+!836 lt!174703 lt!174710))))

(assert (=> b!376383 (= lt!174710 (tuple2!6033 k0!778 v!373))))

(declare-fun lt!174701 () Unit!11575)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!85 (array!21917 array!21919 (_ BitVec 32) (_ BitVec 32) V!13117 V!13117 (_ BitVec 32) (_ BitVec 64) V!13117 (_ BitVec 32) Int) Unit!11575)

(assert (=> b!376383 (= lt!174701 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!85 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!752 (array!21917 array!21919 (_ BitVec 32) (_ BitVec 32) V!13117 V!13117 (_ BitVec 32) Int) ListLongMap!4959)

(assert (=> b!376383 (= lt!174704 (getCurrentListMapNoExtraKeys!752 lt!174708 lt!174707 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376383 (= lt!174707 (array!21920 (store (arr!10425 _values!506) i!548 (ValueCellFull!4161 v!373)) (size!10777 _values!506)))))

(assert (=> b!376383 (= lt!174703 (getCurrentListMapNoExtraKeys!752 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376384 () Bool)

(declare-fun res!212804 () Bool)

(assert (=> b!376384 (=> (not res!212804) (not e!229224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376384 (= res!212804 (validKeyInArray!0 k0!778))))

(declare-fun b!376385 () Bool)

(declare-fun res!212807 () Bool)

(assert (=> b!376385 (=> (not res!212807) (not e!229224))))

(assert (=> b!376385 (= res!212807 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5901))))

(assert (= (and start!37242 res!212806) b!376373))

(assert (= (and b!376373 res!212802) b!376372))

(assert (= (and b!376372 res!212805) b!376385))

(assert (= (and b!376385 res!212807) b!376378))

(assert (= (and b!376378 res!212811) b!376384))

(assert (= (and b!376384 res!212804) b!376382))

(assert (= (and b!376382 res!212813) b!376375))

(assert (= (and b!376375 res!212809) b!376371))

(assert (= (and b!376371 res!212810) b!376380))

(assert (= (and b!376380 res!212803) b!376383))

(assert (= (and b!376383 (not res!212808)) b!376376))

(assert (= (and b!376376 (not res!212812)) b!376374))

(assert (= (and b!376381 condMapEmpty!15078) mapIsEmpty!15078))

(assert (= (and b!376381 (not condMapEmpty!15078)) mapNonEmpty!15078))

(get-info :version)

(assert (= (and mapNonEmpty!15078 ((_ is ValueCellFull!4161) mapValue!15078)) b!376379))

(assert (= (and b!376381 ((_ is ValueCellFull!4161) mapDefault!15078)) b!376377))

(assert (= start!37242 b!376381))

(declare-fun m!373121 () Bool)

(assert (=> b!376384 m!373121))

(declare-fun m!373123 () Bool)

(assert (=> b!376375 m!373123))

(declare-fun m!373125 () Bool)

(assert (=> b!376382 m!373125))

(declare-fun m!373127 () Bool)

(assert (=> start!37242 m!373127))

(declare-fun m!373129 () Bool)

(assert (=> start!37242 m!373129))

(declare-fun m!373131 () Bool)

(assert (=> start!37242 m!373131))

(declare-fun m!373133 () Bool)

(assert (=> b!376385 m!373133))

(declare-fun m!373135 () Bool)

(assert (=> b!376376 m!373135))

(declare-fun m!373137 () Bool)

(assert (=> b!376376 m!373137))

(declare-fun m!373139 () Bool)

(assert (=> b!376376 m!373139))

(declare-fun m!373141 () Bool)

(assert (=> mapNonEmpty!15078 m!373141))

(declare-fun m!373143 () Bool)

(assert (=> b!376372 m!373143))

(declare-fun m!373145 () Bool)

(assert (=> b!376383 m!373145))

(declare-fun m!373147 () Bool)

(assert (=> b!376383 m!373147))

(declare-fun m!373149 () Bool)

(assert (=> b!376383 m!373149))

(declare-fun m!373151 () Bool)

(assert (=> b!376383 m!373151))

(declare-fun m!373153 () Bool)

(assert (=> b!376383 m!373153))

(declare-fun m!373155 () Bool)

(assert (=> b!376383 m!373155))

(declare-fun m!373157 () Bool)

(assert (=> b!376383 m!373157))

(declare-fun m!373159 () Bool)

(assert (=> b!376371 m!373159))

(declare-fun m!373161 () Bool)

(assert (=> b!376371 m!373161))

(declare-fun m!373163 () Bool)

(assert (=> b!376374 m!373163))

(declare-fun m!373165 () Bool)

(assert (=> b!376374 m!373165))

(declare-fun m!373167 () Bool)

(assert (=> b!376380 m!373167))

(check-sat (not b!376383) tp_is_empty!9009 (not b!376385) (not b!376380) (not b!376371) (not mapNonEmpty!15078) (not b!376375) b_and!15621 (not b!376374) (not b_next!8361) (not b!376384) (not start!37242) (not b!376372) (not b!376376))
(check-sat b_and!15621 (not b_next!8361))
