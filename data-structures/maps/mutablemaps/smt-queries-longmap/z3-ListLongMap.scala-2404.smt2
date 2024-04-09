; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38052 () Bool)

(assert start!38052)

(declare-fun b_free!8991 () Bool)

(declare-fun b_next!8991 () Bool)

(assert (=> start!38052 (= b_free!8991 (not b_next!8991))))

(declare-fun tp!31746 () Bool)

(declare-fun b_and!16335 () Bool)

(assert (=> start!38052 (= tp!31746 b_and!16335)))

(declare-fun b!391512 () Bool)

(declare-fun e!237125 () Bool)

(declare-fun e!237130 () Bool)

(assert (=> b!391512 (= e!237125 e!237130)))

(declare-fun res!224226 () Bool)

(assert (=> b!391512 (=> (not res!224226) (not e!237130))))

(declare-datatypes ((array!23203 0))(
  ( (array!23204 (arr!11060 (Array (_ BitVec 32) (_ BitVec 64))) (size!11412 (_ BitVec 32))) )
))
(declare-fun lt!184909 () array!23203)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23203 (_ BitVec 32)) Bool)

(assert (=> b!391512 (= res!224226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184909 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23203)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!391512 (= lt!184909 (array!23204 (store (arr!11060 _keys!658) i!548 k0!778) (size!11412 _keys!658)))))

(declare-fun b!391514 () Bool)

(declare-fun res!224218 () Bool)

(assert (=> b!391514 (=> (not res!224218) (not e!237125))))

(assert (=> b!391514 (= res!224218 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11412 _keys!658))))))

(declare-fun b!391515 () Bool)

(declare-fun e!237127 () Bool)

(declare-fun tp_is_empty!9663 () Bool)

(assert (=> b!391515 (= e!237127 tp_is_empty!9663)))

(declare-fun b!391516 () Bool)

(declare-fun res!224216 () Bool)

(assert (=> b!391516 (=> (not res!224216) (not e!237125))))

(assert (=> b!391516 (= res!224216 (or (= (select (arr!11060 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11060 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16080 () Bool)

(declare-fun mapRes!16080 () Bool)

(assert (=> mapIsEmpty!16080 mapRes!16080))

(declare-fun b!391517 () Bool)

(declare-fun e!237126 () Bool)

(declare-fun e!237129 () Bool)

(assert (=> b!391517 (= e!237126 e!237129)))

(declare-fun res!224223 () Bool)

(assert (=> b!391517 (=> res!224223 e!237129)))

(assert (=> b!391517 (= res!224223 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13989 0))(
  ( (V!13990 (val!4876 Int)) )
))
(declare-datatypes ((tuple2!6506 0))(
  ( (tuple2!6507 (_1!3263 (_ BitVec 64)) (_2!3263 V!13989)) )
))
(declare-datatypes ((List!6389 0))(
  ( (Nil!6386) (Cons!6385 (h!7241 tuple2!6506) (t!11561 List!6389)) )
))
(declare-datatypes ((ListLongMap!5433 0))(
  ( (ListLongMap!5434 (toList!2732 List!6389)) )
))
(declare-fun lt!184904 () ListLongMap!5433)

(declare-fun lt!184910 () ListLongMap!5433)

(assert (=> b!391517 (= lt!184904 lt!184910)))

(declare-fun lt!184907 () ListLongMap!5433)

(declare-fun lt!184911 () tuple2!6506)

(declare-fun +!1030 (ListLongMap!5433 tuple2!6506) ListLongMap!5433)

(assert (=> b!391517 (= lt!184910 (+!1030 lt!184907 lt!184911))))

(declare-fun lt!184913 () ListLongMap!5433)

(declare-fun lt!184906 () ListLongMap!5433)

(assert (=> b!391517 (= lt!184913 lt!184906)))

(declare-fun lt!184915 () ListLongMap!5433)

(assert (=> b!391517 (= lt!184906 (+!1030 lt!184915 lt!184911))))

(declare-fun lt!184903 () ListLongMap!5433)

(assert (=> b!391517 (= lt!184904 (+!1030 lt!184903 lt!184911))))

(declare-fun zeroValue!472 () V!13989)

(assert (=> b!391517 (= lt!184911 (tuple2!6507 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391518 () Bool)

(assert (=> b!391518 (= e!237130 (not e!237126))))

(declare-fun res!224222 () Bool)

(assert (=> b!391518 (=> res!224222 e!237126)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391518 (= res!224222 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4488 0))(
  ( (ValueCellFull!4488 (v!7097 V!13989)) (EmptyCell!4488) )
))
(declare-datatypes ((array!23205 0))(
  ( (array!23206 (arr!11061 (Array (_ BitVec 32) ValueCell!4488)) (size!11413 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23205)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13989)

(declare-fun getCurrentListMap!2098 (array!23203 array!23205 (_ BitVec 32) (_ BitVec 32) V!13989 V!13989 (_ BitVec 32) Int) ListLongMap!5433)

(assert (=> b!391518 (= lt!184913 (getCurrentListMap!2098 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184914 () array!23205)

(assert (=> b!391518 (= lt!184904 (getCurrentListMap!2098 lt!184909 lt!184914 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391518 (and (= lt!184903 lt!184907) (= lt!184907 lt!184903))))

(declare-fun lt!184908 () tuple2!6506)

(assert (=> b!391518 (= lt!184907 (+!1030 lt!184915 lt!184908))))

(declare-fun v!373 () V!13989)

(assert (=> b!391518 (= lt!184908 (tuple2!6507 k0!778 v!373))))

(declare-datatypes ((Unit!11953 0))(
  ( (Unit!11954) )
))
(declare-fun lt!184912 () Unit!11953)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!255 (array!23203 array!23205 (_ BitVec 32) (_ BitVec 32) V!13989 V!13989 (_ BitVec 32) (_ BitVec 64) V!13989 (_ BitVec 32) Int) Unit!11953)

(assert (=> b!391518 (= lt!184912 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!255 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!960 (array!23203 array!23205 (_ BitVec 32) (_ BitVec 32) V!13989 V!13989 (_ BitVec 32) Int) ListLongMap!5433)

(assert (=> b!391518 (= lt!184903 (getCurrentListMapNoExtraKeys!960 lt!184909 lt!184914 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391518 (= lt!184914 (array!23206 (store (arr!11061 _values!506) i!548 (ValueCellFull!4488 v!373)) (size!11413 _values!506)))))

(assert (=> b!391518 (= lt!184915 (getCurrentListMapNoExtraKeys!960 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391519 () Bool)

(assert (=> b!391519 (= e!237129 (= (+!1030 lt!184913 lt!184908) lt!184904))))

(assert (=> b!391519 (= lt!184910 (+!1030 lt!184906 lt!184908))))

(declare-fun lt!184905 () Unit!11953)

(declare-fun addCommutativeForDiffKeys!337 (ListLongMap!5433 (_ BitVec 64) V!13989 (_ BitVec 64) V!13989) Unit!11953)

(assert (=> b!391519 (= lt!184905 (addCommutativeForDiffKeys!337 lt!184915 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391520 () Bool)

(declare-fun res!224221 () Bool)

(assert (=> b!391520 (=> (not res!224221) (not e!237125))))

(assert (=> b!391520 (= res!224221 (and (= (size!11413 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11412 _keys!658) (size!11413 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!391521 () Bool)

(declare-fun res!224219 () Bool)

(assert (=> b!391521 (=> (not res!224219) (not e!237125))))

(declare-datatypes ((List!6390 0))(
  ( (Nil!6387) (Cons!6386 (h!7242 (_ BitVec 64)) (t!11562 List!6390)) )
))
(declare-fun arrayNoDuplicates!0 (array!23203 (_ BitVec 32) List!6390) Bool)

(assert (=> b!391521 (= res!224219 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6387))))

(declare-fun b!391522 () Bool)

(declare-fun e!237128 () Bool)

(assert (=> b!391522 (= e!237128 (and e!237127 mapRes!16080))))

(declare-fun condMapEmpty!16080 () Bool)

(declare-fun mapDefault!16080 () ValueCell!4488)

(assert (=> b!391522 (= condMapEmpty!16080 (= (arr!11061 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4488)) mapDefault!16080)))))

(declare-fun b!391523 () Bool)

(declare-fun res!224227 () Bool)

(assert (=> b!391523 (=> (not res!224227) (not e!237125))))

(assert (=> b!391523 (= res!224227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391513 () Bool)

(declare-fun res!224217 () Bool)

(assert (=> b!391513 (=> (not res!224217) (not e!237130))))

(assert (=> b!391513 (= res!224217 (arrayNoDuplicates!0 lt!184909 #b00000000000000000000000000000000 Nil!6387))))

(declare-fun res!224220 () Bool)

(assert (=> start!38052 (=> (not res!224220) (not e!237125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38052 (= res!224220 (validMask!0 mask!970))))

(assert (=> start!38052 e!237125))

(declare-fun array_inv!8108 (array!23205) Bool)

(assert (=> start!38052 (and (array_inv!8108 _values!506) e!237128)))

(assert (=> start!38052 tp!31746))

(assert (=> start!38052 true))

(assert (=> start!38052 tp_is_empty!9663))

(declare-fun array_inv!8109 (array!23203) Bool)

(assert (=> start!38052 (array_inv!8109 _keys!658)))

(declare-fun b!391524 () Bool)

(declare-fun e!237123 () Bool)

(assert (=> b!391524 (= e!237123 tp_is_empty!9663)))

(declare-fun mapNonEmpty!16080 () Bool)

(declare-fun tp!31745 () Bool)

(assert (=> mapNonEmpty!16080 (= mapRes!16080 (and tp!31745 e!237123))))

(declare-fun mapRest!16080 () (Array (_ BitVec 32) ValueCell!4488))

(declare-fun mapValue!16080 () ValueCell!4488)

(declare-fun mapKey!16080 () (_ BitVec 32))

(assert (=> mapNonEmpty!16080 (= (arr!11061 _values!506) (store mapRest!16080 mapKey!16080 mapValue!16080))))

(declare-fun b!391525 () Bool)

(declare-fun res!224224 () Bool)

(assert (=> b!391525 (=> (not res!224224) (not e!237125))))

(declare-fun arrayContainsKey!0 (array!23203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391525 (= res!224224 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!391526 () Bool)

(declare-fun res!224225 () Bool)

(assert (=> b!391526 (=> (not res!224225) (not e!237125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391526 (= res!224225 (validKeyInArray!0 k0!778))))

(assert (= (and start!38052 res!224220) b!391520))

(assert (= (and b!391520 res!224221) b!391523))

(assert (= (and b!391523 res!224227) b!391521))

(assert (= (and b!391521 res!224219) b!391514))

(assert (= (and b!391514 res!224218) b!391526))

(assert (= (and b!391526 res!224225) b!391516))

(assert (= (and b!391516 res!224216) b!391525))

(assert (= (and b!391525 res!224224) b!391512))

(assert (= (and b!391512 res!224226) b!391513))

(assert (= (and b!391513 res!224217) b!391518))

(assert (= (and b!391518 (not res!224222)) b!391517))

(assert (= (and b!391517 (not res!224223)) b!391519))

(assert (= (and b!391522 condMapEmpty!16080) mapIsEmpty!16080))

(assert (= (and b!391522 (not condMapEmpty!16080)) mapNonEmpty!16080))

(get-info :version)

(assert (= (and mapNonEmpty!16080 ((_ is ValueCellFull!4488) mapValue!16080)) b!391524))

(assert (= (and b!391522 ((_ is ValueCellFull!4488) mapDefault!16080)) b!391515))

(assert (= start!38052 b!391522))

(declare-fun m!387939 () Bool)

(assert (=> b!391523 m!387939))

(declare-fun m!387941 () Bool)

(assert (=> b!391518 m!387941))

(declare-fun m!387943 () Bool)

(assert (=> b!391518 m!387943))

(declare-fun m!387945 () Bool)

(assert (=> b!391518 m!387945))

(declare-fun m!387947 () Bool)

(assert (=> b!391518 m!387947))

(declare-fun m!387949 () Bool)

(assert (=> b!391518 m!387949))

(declare-fun m!387951 () Bool)

(assert (=> b!391518 m!387951))

(declare-fun m!387953 () Bool)

(assert (=> b!391518 m!387953))

(declare-fun m!387955 () Bool)

(assert (=> b!391512 m!387955))

(declare-fun m!387957 () Bool)

(assert (=> b!391512 m!387957))

(declare-fun m!387959 () Bool)

(assert (=> mapNonEmpty!16080 m!387959))

(declare-fun m!387961 () Bool)

(assert (=> b!391525 m!387961))

(declare-fun m!387963 () Bool)

(assert (=> b!391519 m!387963))

(declare-fun m!387965 () Bool)

(assert (=> b!391519 m!387965))

(declare-fun m!387967 () Bool)

(assert (=> b!391519 m!387967))

(declare-fun m!387969 () Bool)

(assert (=> b!391513 m!387969))

(declare-fun m!387971 () Bool)

(assert (=> b!391516 m!387971))

(declare-fun m!387973 () Bool)

(assert (=> b!391517 m!387973))

(declare-fun m!387975 () Bool)

(assert (=> b!391517 m!387975))

(declare-fun m!387977 () Bool)

(assert (=> b!391517 m!387977))

(declare-fun m!387979 () Bool)

(assert (=> start!38052 m!387979))

(declare-fun m!387981 () Bool)

(assert (=> start!38052 m!387981))

(declare-fun m!387983 () Bool)

(assert (=> start!38052 m!387983))

(declare-fun m!387985 () Bool)

(assert (=> b!391526 m!387985))

(declare-fun m!387987 () Bool)

(assert (=> b!391521 m!387987))

(check-sat (not b!391513) (not b!391523) tp_is_empty!9663 b_and!16335 (not b_next!8991) (not b!391512) (not mapNonEmpty!16080) (not b!391526) (not b!391521) (not start!38052) (not b!391517) (not b!391519) (not b!391518) (not b!391525))
(check-sat b_and!16335 (not b_next!8991))
