; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3870 () Bool)

(assert start!3870)

(declare-fun b_free!795 () Bool)

(declare-fun b_next!795 () Bool)

(assert (=> start!3870 (= b_free!795 (not b_next!795))))

(declare-fun tp!3801 () Bool)

(declare-fun b_and!1605 () Bool)

(assert (=> start!3870 (= tp!3801 b_and!1605)))

(declare-fun b!27238 () Bool)

(declare-fun res!16120 () Bool)

(declare-fun e!17748 () Bool)

(assert (=> b!27238 (=> (not res!16120) (not e!17748))))

(declare-datatypes ((V!1357 0))(
  ( (V!1358 (val!601 Int)) )
))
(declare-datatypes ((ValueCell!375 0))(
  ( (ValueCellFull!375 (v!1689 V!1357)) (EmptyCell!375) )
))
(declare-datatypes ((array!1529 0))(
  ( (array!1530 (arr!719 (Array (_ BitVec 32) ValueCell!375)) (size!820 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1529)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1531 0))(
  ( (array!1532 (arr!720 (Array (_ BitVec 32) (_ BitVec 64))) (size!821 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1531)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!27238 (= res!16120 (and (= (size!820 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!821 _keys!1833) (size!820 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!27239 () Bool)

(declare-fun res!16118 () Bool)

(assert (=> b!27239 (=> (not res!16118) (not e!17748))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27239 (= res!16118 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!27240 () Bool)

(declare-fun res!16117 () Bool)

(assert (=> b!27240 (=> (not res!16117) (not e!17748))))

(declare-datatypes ((List!609 0))(
  ( (Nil!606) (Cons!605 (h!1172 (_ BitVec 64)) (t!3302 List!609)) )
))
(declare-fun arrayNoDuplicates!0 (array!1531 (_ BitVec 32) List!609) Bool)

(assert (=> b!27240 (= res!16117 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!606))))

(declare-fun b!27241 () Bool)

(declare-fun res!16115 () Bool)

(assert (=> b!27241 (=> (not res!16115) (not e!17748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1531 (_ BitVec 32)) Bool)

(assert (=> b!27241 (= res!16115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27243 () Bool)

(assert (=> b!27243 (= e!17748 (or (bvsge #b00000000000000000000000000000000 (size!821 _keys!1833)) (bvsge (size!821 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!27244 () Bool)

(declare-fun e!17752 () Bool)

(declare-fun tp_is_empty!1149 () Bool)

(assert (=> b!27244 (= e!17752 tp_is_empty!1149)))

(declare-fun b!27245 () Bool)

(declare-fun e!17749 () Bool)

(assert (=> b!27245 (= e!17749 tp_is_empty!1149)))

(declare-fun b!27246 () Bool)

(declare-fun res!16114 () Bool)

(assert (=> b!27246 (=> (not res!16114) (not e!17748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27246 (= res!16114 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1249 () Bool)

(declare-fun mapRes!1249 () Bool)

(assert (=> mapIsEmpty!1249 mapRes!1249))

(declare-fun b!27247 () Bool)

(declare-fun res!16119 () Bool)

(assert (=> b!27247 (=> (not res!16119) (not e!17748))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1357)

(declare-fun minValue!1443 () V!1357)

(declare-datatypes ((tuple2!990 0))(
  ( (tuple2!991 (_1!505 (_ BitVec 64)) (_2!505 V!1357)) )
))
(declare-datatypes ((List!610 0))(
  ( (Nil!607) (Cons!606 (h!1173 tuple2!990) (t!3303 List!610)) )
))
(declare-datatypes ((ListLongMap!571 0))(
  ( (ListLongMap!572 (toList!301 List!610)) )
))
(declare-fun contains!237 (ListLongMap!571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!129 (array!1531 array!1529 (_ BitVec 32) (_ BitVec 32) V!1357 V!1357 (_ BitVec 32) Int) ListLongMap!571)

(assert (=> b!27247 (= res!16119 (not (contains!237 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapNonEmpty!1249 () Bool)

(declare-fun tp!3802 () Bool)

(assert (=> mapNonEmpty!1249 (= mapRes!1249 (and tp!3802 e!17752))))

(declare-fun mapKey!1249 () (_ BitVec 32))

(declare-fun mapValue!1249 () ValueCell!375)

(declare-fun mapRest!1249 () (Array (_ BitVec 32) ValueCell!375))

(assert (=> mapNonEmpty!1249 (= (arr!719 _values!1501) (store mapRest!1249 mapKey!1249 mapValue!1249))))

(declare-fun b!27242 () Bool)

(declare-fun e!17751 () Bool)

(assert (=> b!27242 (= e!17751 (and e!17749 mapRes!1249))))

(declare-fun condMapEmpty!1249 () Bool)

(declare-fun mapDefault!1249 () ValueCell!375)

(assert (=> b!27242 (= condMapEmpty!1249 (= (arr!719 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!375)) mapDefault!1249)))))

(declare-fun res!16116 () Bool)

(assert (=> start!3870 (=> (not res!16116) (not e!17748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3870 (= res!16116 (validMask!0 mask!2294))))

(assert (=> start!3870 e!17748))

(assert (=> start!3870 true))

(assert (=> start!3870 tp!3801))

(declare-fun array_inv!493 (array!1529) Bool)

(assert (=> start!3870 (and (array_inv!493 _values!1501) e!17751)))

(declare-fun array_inv!494 (array!1531) Bool)

(assert (=> start!3870 (array_inv!494 _keys!1833)))

(assert (=> start!3870 tp_is_empty!1149))

(assert (= (and start!3870 res!16116) b!27238))

(assert (= (and b!27238 res!16120) b!27241))

(assert (= (and b!27241 res!16115) b!27240))

(assert (= (and b!27240 res!16117) b!27246))

(assert (= (and b!27246 res!16114) b!27247))

(assert (= (and b!27247 res!16119) b!27239))

(assert (= (and b!27239 res!16118) b!27243))

(assert (= (and b!27242 condMapEmpty!1249) mapIsEmpty!1249))

(assert (= (and b!27242 (not condMapEmpty!1249)) mapNonEmpty!1249))

(get-info :version)

(assert (= (and mapNonEmpty!1249 ((_ is ValueCellFull!375) mapValue!1249)) b!27244))

(assert (= (and b!27242 ((_ is ValueCellFull!375) mapDefault!1249)) b!27245))

(assert (= start!3870 b!27242))

(declare-fun m!21763 () Bool)

(assert (=> b!27240 m!21763))

(declare-fun m!21765 () Bool)

(assert (=> mapNonEmpty!1249 m!21765))

(declare-fun m!21767 () Bool)

(assert (=> b!27241 m!21767))

(declare-fun m!21769 () Bool)

(assert (=> b!27239 m!21769))

(declare-fun m!21771 () Bool)

(assert (=> start!3870 m!21771))

(declare-fun m!21773 () Bool)

(assert (=> start!3870 m!21773))

(declare-fun m!21775 () Bool)

(assert (=> start!3870 m!21775))

(declare-fun m!21777 () Bool)

(assert (=> b!27246 m!21777))

(declare-fun m!21779 () Bool)

(assert (=> b!27247 m!21779))

(assert (=> b!27247 m!21779))

(declare-fun m!21781 () Bool)

(assert (=> b!27247 m!21781))

(check-sat (not b!27246) (not b_next!795) tp_is_empty!1149 (not b!27240) (not b!27241) (not b!27239) (not b!27247) b_and!1605 (not mapNonEmpty!1249) (not start!3870))
(check-sat b_and!1605 (not b_next!795))
(get-model)

(declare-fun d!4953 () Bool)

(declare-fun res!16146 () Bool)

(declare-fun e!17772 () Bool)

(assert (=> d!4953 (=> res!16146 e!17772)))

(assert (=> d!4953 (= res!16146 (= (select (arr!720 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!4953 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!17772)))

(declare-fun b!27282 () Bool)

(declare-fun e!17773 () Bool)

(assert (=> b!27282 (= e!17772 e!17773)))

(declare-fun res!16147 () Bool)

(assert (=> b!27282 (=> (not res!16147) (not e!17773))))

(assert (=> b!27282 (= res!16147 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!821 _keys!1833)))))

(declare-fun b!27283 () Bool)

(assert (=> b!27283 (= e!17773 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!4953 (not res!16146)) b!27282))

(assert (= (and b!27282 res!16147) b!27283))

(declare-fun m!21803 () Bool)

(assert (=> d!4953 m!21803))

(declare-fun m!21805 () Bool)

(assert (=> b!27283 m!21805))

(assert (=> b!27239 d!4953))

(declare-fun d!4955 () Bool)

(declare-fun res!16154 () Bool)

(declare-fun e!17782 () Bool)

(assert (=> d!4955 (=> res!16154 e!17782)))

(assert (=> d!4955 (= res!16154 (bvsge #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(assert (=> d!4955 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!606) e!17782)))

(declare-fun bm!2561 () Bool)

(declare-fun call!2564 () Bool)

(declare-fun c!3727 () Bool)

(assert (=> bm!2561 (= call!2564 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3727 (Cons!605 (select (arr!720 _keys!1833) #b00000000000000000000000000000000) Nil!606) Nil!606)))))

(declare-fun b!27294 () Bool)

(declare-fun e!17784 () Bool)

(declare-fun e!17785 () Bool)

(assert (=> b!27294 (= e!17784 e!17785)))

(assert (=> b!27294 (= c!3727 (validKeyInArray!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27295 () Bool)

(assert (=> b!27295 (= e!17782 e!17784)))

(declare-fun res!16155 () Bool)

(assert (=> b!27295 (=> (not res!16155) (not e!17784))))

(declare-fun e!17783 () Bool)

(assert (=> b!27295 (= res!16155 (not e!17783))))

(declare-fun res!16156 () Bool)

(assert (=> b!27295 (=> (not res!16156) (not e!17783))))

(assert (=> b!27295 (= res!16156 (validKeyInArray!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27296 () Bool)

(assert (=> b!27296 (= e!17785 call!2564)))

(declare-fun b!27297 () Bool)

(assert (=> b!27297 (= e!17785 call!2564)))

(declare-fun b!27298 () Bool)

(declare-fun contains!239 (List!609 (_ BitVec 64)) Bool)

(assert (=> b!27298 (= e!17783 (contains!239 Nil!606 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!4955 (not res!16154)) b!27295))

(assert (= (and b!27295 res!16156) b!27298))

(assert (= (and b!27295 res!16155) b!27294))

(assert (= (and b!27294 c!3727) b!27297))

(assert (= (and b!27294 (not c!3727)) b!27296))

(assert (= (or b!27297 b!27296) bm!2561))

(assert (=> bm!2561 m!21803))

(declare-fun m!21807 () Bool)

(assert (=> bm!2561 m!21807))

(assert (=> b!27294 m!21803))

(assert (=> b!27294 m!21803))

(declare-fun m!21809 () Bool)

(assert (=> b!27294 m!21809))

(assert (=> b!27295 m!21803))

(assert (=> b!27295 m!21803))

(assert (=> b!27295 m!21809))

(assert (=> b!27298 m!21803))

(assert (=> b!27298 m!21803))

(declare-fun m!21811 () Bool)

(assert (=> b!27298 m!21811))

(assert (=> b!27240 d!4955))

(declare-fun d!4957 () Bool)

(assert (=> d!4957 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!27246 d!4957))

(declare-fun b!27307 () Bool)

(declare-fun e!17794 () Bool)

(declare-fun e!17792 () Bool)

(assert (=> b!27307 (= e!17794 e!17792)))

(declare-fun c!3730 () Bool)

(assert (=> b!27307 (= c!3730 (validKeyInArray!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2564 () Bool)

(declare-fun call!2567 () Bool)

(assert (=> bm!2564 (= call!2567 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!27308 () Bool)

(declare-fun e!17793 () Bool)

(assert (=> b!27308 (= e!17793 call!2567)))

(declare-fun d!4959 () Bool)

(declare-fun res!16162 () Bool)

(assert (=> d!4959 (=> res!16162 e!17794)))

(assert (=> d!4959 (= res!16162 (bvsge #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(assert (=> d!4959 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!17794)))

(declare-fun b!27309 () Bool)

(assert (=> b!27309 (= e!17792 e!17793)))

(declare-fun lt!10600 () (_ BitVec 64))

(assert (=> b!27309 (= lt!10600 (select (arr!720 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!639 0))(
  ( (Unit!640) )
))
(declare-fun lt!10601 () Unit!639)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1531 (_ BitVec 64) (_ BitVec 32)) Unit!639)

(assert (=> b!27309 (= lt!10601 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10600 #b00000000000000000000000000000000))))

(assert (=> b!27309 (arrayContainsKey!0 _keys!1833 lt!10600 #b00000000000000000000000000000000)))

(declare-fun lt!10602 () Unit!639)

(assert (=> b!27309 (= lt!10602 lt!10601)))

(declare-fun res!16161 () Bool)

(declare-datatypes ((SeekEntryResult!69 0))(
  ( (MissingZero!69 (index!2398 (_ BitVec 32))) (Found!69 (index!2399 (_ BitVec 32))) (Intermediate!69 (undefined!881 Bool) (index!2400 (_ BitVec 32)) (x!6219 (_ BitVec 32))) (Undefined!69) (MissingVacant!69 (index!2401 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1531 (_ BitVec 32)) SeekEntryResult!69)

(assert (=> b!27309 (= res!16161 (= (seekEntryOrOpen!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!69 #b00000000000000000000000000000000)))))

(assert (=> b!27309 (=> (not res!16161) (not e!17793))))

(declare-fun b!27310 () Bool)

(assert (=> b!27310 (= e!17792 call!2567)))

(assert (= (and d!4959 (not res!16162)) b!27307))

(assert (= (and b!27307 c!3730) b!27309))

(assert (= (and b!27307 (not c!3730)) b!27310))

(assert (= (and b!27309 res!16161) b!27308))

(assert (= (or b!27308 b!27310) bm!2564))

(assert (=> b!27307 m!21803))

(assert (=> b!27307 m!21803))

(assert (=> b!27307 m!21809))

(declare-fun m!21813 () Bool)

(assert (=> bm!2564 m!21813))

(assert (=> b!27309 m!21803))

(declare-fun m!21815 () Bool)

(assert (=> b!27309 m!21815))

(declare-fun m!21817 () Bool)

(assert (=> b!27309 m!21817))

(assert (=> b!27309 m!21803))

(declare-fun m!21819 () Bool)

(assert (=> b!27309 m!21819))

(assert (=> b!27241 d!4959))

(declare-fun d!4961 () Bool)

(assert (=> d!4961 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3870 d!4961))

(declare-fun d!4963 () Bool)

(assert (=> d!4963 (= (array_inv!493 _values!1501) (bvsge (size!820 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3870 d!4963))

(declare-fun d!4965 () Bool)

(assert (=> d!4965 (= (array_inv!494 _keys!1833) (bvsge (size!821 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3870 d!4965))

(declare-fun d!4967 () Bool)

(declare-fun e!17800 () Bool)

(assert (=> d!4967 e!17800))

(declare-fun res!16165 () Bool)

(assert (=> d!4967 (=> res!16165 e!17800)))

(declare-fun lt!10611 () Bool)

(assert (=> d!4967 (= res!16165 (not lt!10611))))

(declare-fun lt!10614 () Bool)

(assert (=> d!4967 (= lt!10611 lt!10614)))

(declare-fun lt!10612 () Unit!639)

(declare-fun e!17799 () Unit!639)

(assert (=> d!4967 (= lt!10612 e!17799)))

(declare-fun c!3733 () Bool)

(assert (=> d!4967 (= c!3733 lt!10614)))

(declare-fun containsKey!28 (List!610 (_ BitVec 64)) Bool)

(assert (=> d!4967 (= lt!10614 (containsKey!28 (toList!301 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!4967 (= (contains!237 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!10611)))

(declare-fun b!27317 () Bool)

(declare-fun lt!10613 () Unit!639)

(assert (=> b!27317 (= e!17799 lt!10613)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!25 (List!610 (_ BitVec 64)) Unit!639)

(assert (=> b!27317 (= lt!10613 (lemmaContainsKeyImpliesGetValueByKeyDefined!25 (toList!301 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!70 0))(
  ( (Some!69 (v!1691 V!1357)) (None!68) )
))
(declare-fun isDefined!26 (Option!70) Bool)

(declare-fun getValueByKey!64 (List!610 (_ BitVec 64)) Option!70)

(assert (=> b!27317 (isDefined!26 (getValueByKey!64 (toList!301 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!27318 () Bool)

(declare-fun Unit!641 () Unit!639)

(assert (=> b!27318 (= e!17799 Unit!641)))

(declare-fun b!27319 () Bool)

(assert (=> b!27319 (= e!17800 (isDefined!26 (getValueByKey!64 (toList!301 (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!4967 c!3733) b!27317))

(assert (= (and d!4967 (not c!3733)) b!27318))

(assert (= (and d!4967 (not res!16165)) b!27319))

(declare-fun m!21821 () Bool)

(assert (=> d!4967 m!21821))

(declare-fun m!21823 () Bool)

(assert (=> b!27317 m!21823))

(declare-fun m!21825 () Bool)

(assert (=> b!27317 m!21825))

(assert (=> b!27317 m!21825))

(declare-fun m!21827 () Bool)

(assert (=> b!27317 m!21827))

(assert (=> b!27319 m!21825))

(assert (=> b!27319 m!21825))

(assert (=> b!27319 m!21827))

(assert (=> b!27247 d!4967))

(declare-fun b!27362 () Bool)

(declare-fun e!17828 () ListLongMap!571)

(declare-fun call!2583 () ListLongMap!571)

(assert (=> b!27362 (= e!17828 call!2583)))

(declare-fun b!27363 () Bool)

(declare-fun e!17827 () Bool)

(declare-fun call!2586 () Bool)

(assert (=> b!27363 (= e!17827 (not call!2586))))

(declare-fun bm!2579 () Bool)

(declare-fun lt!10676 () ListLongMap!571)

(assert (=> bm!2579 (= call!2586 (contains!237 lt!10676 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!27364 () Bool)

(declare-fun e!17834 () ListLongMap!571)

(declare-fun e!17833 () ListLongMap!571)

(assert (=> b!27364 (= e!17834 e!17833)))

(declare-fun c!3751 () Bool)

(assert (=> b!27364 (= c!3751 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!27365 () Bool)

(declare-fun call!2582 () ListLongMap!571)

(assert (=> b!27365 (= e!17833 call!2582)))

(declare-fun b!27366 () Bool)

(declare-fun e!17830 () Bool)

(declare-fun apply!32 (ListLongMap!571 (_ BitVec 64)) V!1357)

(declare-fun get!439 (ValueCell!375 V!1357) V!1357)

(declare-fun dynLambda!149 (Int (_ BitVec 64)) V!1357)

(assert (=> b!27366 (= e!17830 (= (apply!32 lt!10676 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)) (get!439 (select (arr!719 _values!1501) #b00000000000000000000000000000000) (dynLambda!149 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!27366 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!820 _values!1501)))))

(assert (=> b!27366 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(declare-fun b!27367 () Bool)

(declare-fun c!3747 () Bool)

(assert (=> b!27367 (= c!3747 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!27367 (= e!17833 e!17828)))

(declare-fun b!27368 () Bool)

(declare-fun e!17837 () Bool)

(declare-fun call!2584 () Bool)

(assert (=> b!27368 (= e!17837 (not call!2584))))

(declare-fun b!27370 () Bool)

(declare-fun e!17839 () Bool)

(assert (=> b!27370 (= e!17839 (= (apply!32 lt!10676 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun bm!2580 () Bool)

(declare-fun call!2587 () ListLongMap!571)

(assert (=> bm!2580 (= call!2583 call!2587)))

(declare-fun c!3749 () Bool)

(declare-fun call!2585 () ListLongMap!571)

(declare-fun call!2588 () ListLongMap!571)

(declare-fun bm!2581 () Bool)

(declare-fun +!50 (ListLongMap!571 tuple2!990) ListLongMap!571)

(assert (=> bm!2581 (= call!2585 (+!50 (ite c!3749 call!2588 (ite c!3751 call!2587 call!2583)) (ite (or c!3749 c!3751) (tuple2!991 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!27371 () Bool)

(declare-fun e!17829 () Bool)

(assert (=> b!27371 (= e!17829 (validKeyInArray!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!27372 () Bool)

(assert (=> b!27372 (= e!17827 e!17839)))

(declare-fun res!16191 () Bool)

(assert (=> b!27372 (= res!16191 call!2586)))

(assert (=> b!27372 (=> (not res!16191) (not e!17839))))

(declare-fun b!27373 () Bool)

(declare-fun res!16185 () Bool)

(declare-fun e!17838 () Bool)

(assert (=> b!27373 (=> (not res!16185) (not e!17838))))

(assert (=> b!27373 (= res!16185 e!17837)))

(declare-fun c!3750 () Bool)

(assert (=> b!27373 (= c!3750 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!2582 () Bool)

(assert (=> bm!2582 (= call!2584 (contains!237 lt!10676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!2583 () Bool)

(assert (=> bm!2583 (= call!2587 call!2588)))

(declare-fun b!27374 () Bool)

(declare-fun e!17832 () Unit!639)

(declare-fun lt!10660 () Unit!639)

(assert (=> b!27374 (= e!17832 lt!10660)))

(declare-fun lt!10679 () ListLongMap!571)

(declare-fun getCurrentListMapNoExtraKeys!19 (array!1531 array!1529 (_ BitVec 32) (_ BitVec 32) V!1357 V!1357 (_ BitVec 32) Int) ListLongMap!571)

(assert (=> b!27374 (= lt!10679 (getCurrentListMapNoExtraKeys!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10674 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10674 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10664 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10664 (select (arr!720 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10669 () Unit!639)

(declare-fun addStillContains!17 (ListLongMap!571 (_ BitVec 64) V!1357 (_ BitVec 64)) Unit!639)

(assert (=> b!27374 (= lt!10669 (addStillContains!17 lt!10679 lt!10674 zeroValue!1443 lt!10664))))

(assert (=> b!27374 (contains!237 (+!50 lt!10679 (tuple2!991 lt!10674 zeroValue!1443)) lt!10664)))

(declare-fun lt!10672 () Unit!639)

(assert (=> b!27374 (= lt!10672 lt!10669)))

(declare-fun lt!10678 () ListLongMap!571)

(assert (=> b!27374 (= lt!10678 (getCurrentListMapNoExtraKeys!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10667 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10667 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10663 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10663 (select (arr!720 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10661 () Unit!639)

(declare-fun addApplyDifferent!17 (ListLongMap!571 (_ BitVec 64) V!1357 (_ BitVec 64)) Unit!639)

(assert (=> b!27374 (= lt!10661 (addApplyDifferent!17 lt!10678 lt!10667 minValue!1443 lt!10663))))

(assert (=> b!27374 (= (apply!32 (+!50 lt!10678 (tuple2!991 lt!10667 minValue!1443)) lt!10663) (apply!32 lt!10678 lt!10663))))

(declare-fun lt!10665 () Unit!639)

(assert (=> b!27374 (= lt!10665 lt!10661)))

(declare-fun lt!10677 () ListLongMap!571)

(assert (=> b!27374 (= lt!10677 (getCurrentListMapNoExtraKeys!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10662 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10662 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10659 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10659 (select (arr!720 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!10666 () Unit!639)

(assert (=> b!27374 (= lt!10666 (addApplyDifferent!17 lt!10677 lt!10662 zeroValue!1443 lt!10659))))

(assert (=> b!27374 (= (apply!32 (+!50 lt!10677 (tuple2!991 lt!10662 zeroValue!1443)) lt!10659) (apply!32 lt!10677 lt!10659))))

(declare-fun lt!10668 () Unit!639)

(assert (=> b!27374 (= lt!10668 lt!10666)))

(declare-fun lt!10680 () ListLongMap!571)

(assert (=> b!27374 (= lt!10680 (getCurrentListMapNoExtraKeys!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!10675 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10675 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!10670 () (_ BitVec 64))

(assert (=> b!27374 (= lt!10670 (select (arr!720 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!27374 (= lt!10660 (addApplyDifferent!17 lt!10680 lt!10675 minValue!1443 lt!10670))))

(assert (=> b!27374 (= (apply!32 (+!50 lt!10680 (tuple2!991 lt!10675 minValue!1443)) lt!10670) (apply!32 lt!10680 lt!10670))))

(declare-fun bm!2584 () Bool)

(assert (=> bm!2584 (= call!2588 (getCurrentListMapNoExtraKeys!19 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!27375 () Bool)

(declare-fun e!17836 () Bool)

(assert (=> b!27375 (= e!17836 (= (apply!32 lt!10676 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!27376 () Bool)

(assert (=> b!27376 (= e!17834 (+!50 call!2585 (tuple2!991 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!27377 () Bool)

(assert (=> b!27377 (= e!17828 call!2582)))

(declare-fun b!27378 () Bool)

(declare-fun res!16188 () Bool)

(assert (=> b!27378 (=> (not res!16188) (not e!17838))))

(declare-fun e!17831 () Bool)

(assert (=> b!27378 (= res!16188 e!17831)))

(declare-fun res!16190 () Bool)

(assert (=> b!27378 (=> res!16190 e!17831)))

(declare-fun e!17835 () Bool)

(assert (=> b!27378 (= res!16190 (not e!17835))))

(declare-fun res!16187 () Bool)

(assert (=> b!27378 (=> (not res!16187) (not e!17835))))

(assert (=> b!27378 (= res!16187 (bvslt #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(declare-fun b!27379 () Bool)

(assert (=> b!27379 (= e!17831 e!17830)))

(declare-fun res!16186 () Bool)

(assert (=> b!27379 (=> (not res!16186) (not e!17830))))

(assert (=> b!27379 (= res!16186 (contains!237 lt!10676 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!27379 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(declare-fun bm!2585 () Bool)

(assert (=> bm!2585 (= call!2582 call!2585)))

(declare-fun b!27380 () Bool)

(assert (=> b!27380 (= e!17837 e!17836)))

(declare-fun res!16184 () Bool)

(assert (=> b!27380 (= res!16184 call!2584)))

(assert (=> b!27380 (=> (not res!16184) (not e!17836))))

(declare-fun b!27381 () Bool)

(assert (=> b!27381 (= e!17838 e!17827)))

(declare-fun c!3746 () Bool)

(assert (=> b!27381 (= c!3746 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!27382 () Bool)

(assert (=> b!27382 (= e!17835 (validKeyInArray!0 (select (arr!720 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!4969 () Bool)

(assert (=> d!4969 e!17838))

(declare-fun res!16189 () Bool)

(assert (=> d!4969 (=> (not res!16189) (not e!17838))))

(assert (=> d!4969 (= res!16189 (or (bvsge #b00000000000000000000000000000000 (size!821 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!821 _keys!1833)))))))

(declare-fun lt!10673 () ListLongMap!571)

(assert (=> d!4969 (= lt!10676 lt!10673)))

(declare-fun lt!10671 () Unit!639)

(assert (=> d!4969 (= lt!10671 e!17832)))

(declare-fun c!3748 () Bool)

(assert (=> d!4969 (= c!3748 e!17829)))

(declare-fun res!16192 () Bool)

(assert (=> d!4969 (=> (not res!16192) (not e!17829))))

(assert (=> d!4969 (= res!16192 (bvslt #b00000000000000000000000000000000 (size!821 _keys!1833)))))

(assert (=> d!4969 (= lt!10673 e!17834)))

(assert (=> d!4969 (= c!3749 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!4969 (validMask!0 mask!2294)))

(assert (=> d!4969 (= (getCurrentListMap!129 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!10676)))

(declare-fun b!27369 () Bool)

(declare-fun Unit!642 () Unit!639)

(assert (=> b!27369 (= e!17832 Unit!642)))

(assert (= (and d!4969 c!3749) b!27376))

(assert (= (and d!4969 (not c!3749)) b!27364))

(assert (= (and b!27364 c!3751) b!27365))

(assert (= (and b!27364 (not c!3751)) b!27367))

(assert (= (and b!27367 c!3747) b!27377))

(assert (= (and b!27367 (not c!3747)) b!27362))

(assert (= (or b!27377 b!27362) bm!2580))

(assert (= (or b!27365 bm!2580) bm!2583))

(assert (= (or b!27365 b!27377) bm!2585))

(assert (= (or b!27376 bm!2583) bm!2584))

(assert (= (or b!27376 bm!2585) bm!2581))

(assert (= (and d!4969 res!16192) b!27371))

(assert (= (and d!4969 c!3748) b!27374))

(assert (= (and d!4969 (not c!3748)) b!27369))

(assert (= (and d!4969 res!16189) b!27378))

(assert (= (and b!27378 res!16187) b!27382))

(assert (= (and b!27378 (not res!16190)) b!27379))

(assert (= (and b!27379 res!16186) b!27366))

(assert (= (and b!27378 res!16188) b!27373))

(assert (= (and b!27373 c!3750) b!27380))

(assert (= (and b!27373 (not c!3750)) b!27368))

(assert (= (and b!27380 res!16184) b!27375))

(assert (= (or b!27380 b!27368) bm!2582))

(assert (= (and b!27373 res!16185) b!27381))

(assert (= (and b!27381 c!3746) b!27372))

(assert (= (and b!27381 (not c!3746)) b!27363))

(assert (= (and b!27372 res!16191) b!27370))

(assert (= (or b!27372 b!27363) bm!2579))

(declare-fun b_lambda!1695 () Bool)

(assert (=> (not b_lambda!1695) (not b!27366)))

(declare-fun t!3307 () Bool)

(declare-fun tb!681 () Bool)

(assert (=> (and start!3870 (= defaultEntry!1504 defaultEntry!1504) t!3307) tb!681))

(declare-fun result!1149 () Bool)

(assert (=> tb!681 (= result!1149 tp_is_empty!1149)))

(assert (=> b!27366 t!3307))

(declare-fun b_and!1609 () Bool)

(assert (= b_and!1605 (and (=> t!3307 result!1149) b_and!1609)))

(declare-fun m!21829 () Bool)

(assert (=> bm!2581 m!21829))

(declare-fun m!21831 () Bool)

(assert (=> bm!2582 m!21831))

(declare-fun m!21833 () Bool)

(assert (=> b!27374 m!21833))

(declare-fun m!21835 () Bool)

(assert (=> b!27374 m!21835))

(declare-fun m!21837 () Bool)

(assert (=> b!27374 m!21837))

(declare-fun m!21839 () Bool)

(assert (=> b!27374 m!21839))

(declare-fun m!21841 () Bool)

(assert (=> b!27374 m!21841))

(declare-fun m!21843 () Bool)

(assert (=> b!27374 m!21843))

(declare-fun m!21845 () Bool)

(assert (=> b!27374 m!21845))

(declare-fun m!21847 () Bool)

(assert (=> b!27374 m!21847))

(declare-fun m!21849 () Bool)

(assert (=> b!27374 m!21849))

(declare-fun m!21851 () Bool)

(assert (=> b!27374 m!21851))

(declare-fun m!21853 () Bool)

(assert (=> b!27374 m!21853))

(declare-fun m!21855 () Bool)

(assert (=> b!27374 m!21855))

(assert (=> b!27374 m!21803))

(assert (=> b!27374 m!21855))

(declare-fun m!21857 () Bool)

(assert (=> b!27374 m!21857))

(assert (=> b!27374 m!21847))

(assert (=> b!27374 m!21833))

(declare-fun m!21859 () Bool)

(assert (=> b!27374 m!21859))

(assert (=> b!27374 m!21839))

(declare-fun m!21861 () Bool)

(assert (=> b!27374 m!21861))

(declare-fun m!21863 () Bool)

(assert (=> b!27374 m!21863))

(assert (=> b!27382 m!21803))

(assert (=> b!27382 m!21803))

(assert (=> b!27382 m!21809))

(assert (=> b!27371 m!21803))

(assert (=> b!27371 m!21803))

(assert (=> b!27371 m!21809))

(declare-fun m!21865 () Bool)

(assert (=> bm!2579 m!21865))

(assert (=> bm!2584 m!21851))

(declare-fun m!21867 () Bool)

(assert (=> b!27366 m!21867))

(declare-fun m!21869 () Bool)

(assert (=> b!27366 m!21869))

(assert (=> b!27366 m!21803))

(declare-fun m!21871 () Bool)

(assert (=> b!27366 m!21871))

(assert (=> b!27366 m!21803))

(assert (=> b!27366 m!21867))

(assert (=> b!27366 m!21869))

(declare-fun m!21873 () Bool)

(assert (=> b!27366 m!21873))

(declare-fun m!21875 () Bool)

(assert (=> b!27376 m!21875))

(assert (=> d!4969 m!21771))

(declare-fun m!21877 () Bool)

(assert (=> b!27375 m!21877))

(assert (=> b!27379 m!21803))

(assert (=> b!27379 m!21803))

(declare-fun m!21879 () Bool)

(assert (=> b!27379 m!21879))

(declare-fun m!21881 () Bool)

(assert (=> b!27370 m!21881))

(assert (=> b!27247 d!4969))

(declare-fun mapIsEmpty!1255 () Bool)

(declare-fun mapRes!1255 () Bool)

(assert (=> mapIsEmpty!1255 mapRes!1255))

(declare-fun mapNonEmpty!1255 () Bool)

(declare-fun tp!3811 () Bool)

(declare-fun e!17844 () Bool)

(assert (=> mapNonEmpty!1255 (= mapRes!1255 (and tp!3811 e!17844))))

(declare-fun mapKey!1255 () (_ BitVec 32))

(declare-fun mapRest!1255 () (Array (_ BitVec 32) ValueCell!375))

(declare-fun mapValue!1255 () ValueCell!375)

(assert (=> mapNonEmpty!1255 (= mapRest!1249 (store mapRest!1255 mapKey!1255 mapValue!1255))))

(declare-fun b!27391 () Bool)

(assert (=> b!27391 (= e!17844 tp_is_empty!1149)))

(declare-fun b!27392 () Bool)

(declare-fun e!17845 () Bool)

(assert (=> b!27392 (= e!17845 tp_is_empty!1149)))

(declare-fun condMapEmpty!1255 () Bool)

(declare-fun mapDefault!1255 () ValueCell!375)

(assert (=> mapNonEmpty!1249 (= condMapEmpty!1255 (= mapRest!1249 ((as const (Array (_ BitVec 32) ValueCell!375)) mapDefault!1255)))))

(assert (=> mapNonEmpty!1249 (= tp!3802 (and e!17845 mapRes!1255))))

(assert (= (and mapNonEmpty!1249 condMapEmpty!1255) mapIsEmpty!1255))

(assert (= (and mapNonEmpty!1249 (not condMapEmpty!1255)) mapNonEmpty!1255))

(assert (= (and mapNonEmpty!1255 ((_ is ValueCellFull!375) mapValue!1255)) b!27391))

(assert (= (and mapNonEmpty!1249 ((_ is ValueCellFull!375) mapDefault!1255)) b!27392))

(declare-fun m!21883 () Bool)

(assert (=> mapNonEmpty!1255 m!21883))

(declare-fun b_lambda!1697 () Bool)

(assert (= b_lambda!1695 (or (and start!3870 b_free!795) b_lambda!1697)))

(check-sat (not b_next!795) tp_is_empty!1149 (not b!27382) (not bm!2579) (not bm!2561) (not b!27309) (not b_lambda!1697) (not b!27294) (not b!27295) b_and!1609 (not b!27376) (not b!27370) (not d!4967) (not b!27379) (not mapNonEmpty!1255) (not b!27319) (not b!27283) (not bm!2564) (not d!4969) (not bm!2584) (not b!27298) (not b!27307) (not bm!2582) (not bm!2581) (not b!27317) (not b!27366) (not b!27371) (not b!27375) (not b!27374))
(check-sat b_and!1609 (not b_next!795))
