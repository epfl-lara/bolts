; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71130 () Bool)

(assert start!71130)

(declare-fun b_free!13293 () Bool)

(declare-fun b_next!13293 () Bool)

(assert (=> start!71130 (= b_free!13293 (not b_next!13293))))

(declare-fun tp!46636 () Bool)

(declare-fun b_and!22225 () Bool)

(assert (=> start!71130 (= tp!46636 b_and!22225)))

(declare-fun b!825704 () Bool)

(declare-fun e!459724 () Bool)

(declare-datatypes ((array!46148 0))(
  ( (array!46149 (arr!22116 (Array (_ BitVec 32) (_ BitVec 64))) (size!22537 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46148)

(assert (=> b!825704 (= e!459724 (bvsle #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825705 () Bool)

(declare-fun e!459717 () Bool)

(declare-datatypes ((V!25005 0))(
  ( (V!25006 (val!7549 Int)) )
))
(declare-datatypes ((tuple2!10000 0))(
  ( (tuple2!10001 (_1!5010 (_ BitVec 64)) (_2!5010 V!25005)) )
))
(declare-datatypes ((List!15842 0))(
  ( (Nil!15839) (Cons!15838 (h!16967 tuple2!10000) (t!22195 List!15842)) )
))
(declare-datatypes ((ListLongMap!8837 0))(
  ( (ListLongMap!8838 (toList!4434 List!15842)) )
))
(declare-fun lt!373204 () ListLongMap!8837)

(declare-fun lt!373205 () ListLongMap!8837)

(declare-fun zeroValueAfter!34 () V!25005)

(declare-fun lt!373201 () tuple2!10000)

(declare-fun +!1895 (ListLongMap!8837 tuple2!10000) ListLongMap!8837)

(assert (=> b!825705 (= e!459717 (= lt!373205 (+!1895 (+!1895 lt!373204 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373201)))))

(declare-fun mapIsEmpty!24127 () Bool)

(declare-fun mapRes!24127 () Bool)

(assert (=> mapIsEmpty!24127 mapRes!24127))

(declare-fun b!825706 () Bool)

(declare-fun lt!373209 () tuple2!10000)

(declare-fun e!459725 () Bool)

(assert (=> b!825706 (= e!459725 (= lt!373205 (+!1895 (+!1895 lt!373204 lt!373201) lt!373209)))))

(declare-fun b!825707 () Bool)

(declare-fun e!459721 () Bool)

(declare-fun e!459723 () Bool)

(assert (=> b!825707 (= e!459721 (not e!459723))))

(declare-fun res!563012 () Bool)

(assert (=> b!825707 (=> res!563012 e!459723)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825707 (= res!563012 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!373200 () ListLongMap!8837)

(assert (=> b!825707 (= lt!373200 lt!373204)))

(declare-fun zeroValueBefore!34 () V!25005)

(declare-fun minValue!754 () V!25005)

(declare-datatypes ((Unit!28307 0))(
  ( (Unit!28308) )
))
(declare-fun lt!373206 () Unit!28307)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!7086 0))(
  ( (ValueCellFull!7086 (v!9978 V!25005)) (EmptyCell!7086) )
))
(declare-datatypes ((array!46150 0))(
  ( (array!46151 (arr!22117 (Array (_ BitVec 32) ValueCell!7086)) (size!22538 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46150)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!564 (array!46148 array!46150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25005 V!25005 V!25005 V!25005 (_ BitVec 32) Int) Unit!28307)

(assert (=> b!825707 (= lt!373206 (lemmaNoChangeToArrayThenSameMapNoExtras!564 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2448 (array!46148 array!46150 (_ BitVec 32) (_ BitVec 32) V!25005 V!25005 (_ BitVec 32) Int) ListLongMap!8837)

(assert (=> b!825707 (= lt!373204 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825707 (= lt!373200 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825708 () Bool)

(declare-fun e!459718 () Bool)

(declare-fun tp_is_empty!15003 () Bool)

(assert (=> b!825708 (= e!459718 tp_is_empty!15003)))

(declare-fun b!825709 () Bool)

(declare-fun e!459719 () Bool)

(declare-fun e!459722 () Bool)

(assert (=> b!825709 (= e!459719 (and e!459722 mapRes!24127))))

(declare-fun condMapEmpty!24127 () Bool)

(declare-fun mapDefault!24127 () ValueCell!7086)

(assert (=> b!825709 (= condMapEmpty!24127 (= (arr!22117 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7086)) mapDefault!24127)))))

(declare-fun b!825710 () Bool)

(assert (=> b!825710 (= e!459723 e!459724)))

(declare-fun res!563007 () Bool)

(assert (=> b!825710 (=> res!563007 e!459724)))

(assert (=> b!825710 (= res!563007 (not (= lt!373205 (+!1895 (+!1895 lt!373200 lt!373209) lt!373201))))))

(declare-fun lt!373203 () ListLongMap!8837)

(declare-fun lt!373202 () ListLongMap!8837)

(assert (=> b!825710 (and (= lt!373203 lt!373202) (= lt!373205 lt!373202) (= lt!373205 lt!373203))))

(declare-fun lt!373210 () ListLongMap!8837)

(assert (=> b!825710 (= lt!373202 (+!1895 lt!373210 lt!373209))))

(declare-fun lt!373211 () ListLongMap!8837)

(assert (=> b!825710 (= lt!373203 (+!1895 lt!373211 lt!373209))))

(declare-fun lt!373207 () Unit!28307)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!222 (ListLongMap!8837 (_ BitVec 64) V!25005 V!25005) Unit!28307)

(assert (=> b!825710 (= lt!373207 (addSameAsAddTwiceSameKeyDiffValues!222 lt!373211 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825710 e!459725))

(declare-fun res!563009 () Bool)

(assert (=> b!825710 (=> (not res!563009) (not e!459725))))

(declare-fun lt!373199 () ListLongMap!8837)

(assert (=> b!825710 (= res!563009 (= lt!373199 lt!373210))))

(declare-fun lt!373208 () tuple2!10000)

(assert (=> b!825710 (= lt!373210 (+!1895 lt!373211 lt!373208))))

(assert (=> b!825710 (= lt!373211 (+!1895 lt!373200 lt!373201))))

(assert (=> b!825710 (= lt!373209 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825710 e!459717))

(declare-fun res!563013 () Bool)

(assert (=> b!825710 (=> (not res!563013) (not e!459717))))

(assert (=> b!825710 (= res!563013 (= lt!373199 (+!1895 (+!1895 lt!373200 lt!373208) lt!373201)))))

(assert (=> b!825710 (= lt!373201 (tuple2!10001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825710 (= lt!373208 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2544 (array!46148 array!46150 (_ BitVec 32) (_ BitVec 32) V!25005 V!25005 (_ BitVec 32) Int) ListLongMap!8837)

(assert (=> b!825710 (= lt!373205 (getCurrentListMap!2544 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825710 (= lt!373199 (getCurrentListMap!2544 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825711 () Bool)

(declare-fun res!563010 () Bool)

(assert (=> b!825711 (=> (not res!563010) (not e!459721))))

(declare-datatypes ((List!15843 0))(
  ( (Nil!15840) (Cons!15839 (h!16968 (_ BitVec 64)) (t!22196 List!15843)) )
))
(declare-fun arrayNoDuplicates!0 (array!46148 (_ BitVec 32) List!15843) Bool)

(assert (=> b!825711 (= res!563010 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15840))))

(declare-fun b!825712 () Bool)

(declare-fun res!563008 () Bool)

(assert (=> b!825712 (=> (not res!563008) (not e!459721))))

(assert (=> b!825712 (= res!563008 (and (= (size!22538 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22537 _keys!976) (size!22538 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825713 () Bool)

(assert (=> b!825713 (= e!459722 tp_is_empty!15003)))

(declare-fun res!563011 () Bool)

(assert (=> start!71130 (=> (not res!563011) (not e!459721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71130 (= res!563011 (validMask!0 mask!1312))))

(assert (=> start!71130 e!459721))

(assert (=> start!71130 tp_is_empty!15003))

(declare-fun array_inv!17619 (array!46148) Bool)

(assert (=> start!71130 (array_inv!17619 _keys!976)))

(assert (=> start!71130 true))

(declare-fun array_inv!17620 (array!46150) Bool)

(assert (=> start!71130 (and (array_inv!17620 _values!788) e!459719)))

(assert (=> start!71130 tp!46636))

(declare-fun mapNonEmpty!24127 () Bool)

(declare-fun tp!46635 () Bool)

(assert (=> mapNonEmpty!24127 (= mapRes!24127 (and tp!46635 e!459718))))

(declare-fun mapValue!24127 () ValueCell!7086)

(declare-fun mapRest!24127 () (Array (_ BitVec 32) ValueCell!7086))

(declare-fun mapKey!24127 () (_ BitVec 32))

(assert (=> mapNonEmpty!24127 (= (arr!22117 _values!788) (store mapRest!24127 mapKey!24127 mapValue!24127))))

(declare-fun b!825714 () Bool)

(declare-fun res!563006 () Bool)

(assert (=> b!825714 (=> (not res!563006) (not e!459721))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46148 (_ BitVec 32)) Bool)

(assert (=> b!825714 (= res!563006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71130 res!563011) b!825712))

(assert (= (and b!825712 res!563008) b!825714))

(assert (= (and b!825714 res!563006) b!825711))

(assert (= (and b!825711 res!563010) b!825707))

(assert (= (and b!825707 (not res!563012)) b!825710))

(assert (= (and b!825710 res!563013) b!825705))

(assert (= (and b!825710 res!563009) b!825706))

(assert (= (and b!825710 (not res!563007)) b!825704))

(assert (= (and b!825709 condMapEmpty!24127) mapIsEmpty!24127))

(assert (= (and b!825709 (not condMapEmpty!24127)) mapNonEmpty!24127))

(get-info :version)

(assert (= (and mapNonEmpty!24127 ((_ is ValueCellFull!7086) mapValue!24127)) b!825708))

(assert (= (and b!825709 ((_ is ValueCellFull!7086) mapDefault!24127)) b!825713))

(assert (= start!71130 b!825709))

(declare-fun m!768203 () Bool)

(assert (=> b!825705 m!768203))

(assert (=> b!825705 m!768203))

(declare-fun m!768205 () Bool)

(assert (=> b!825705 m!768205))

(declare-fun m!768207 () Bool)

(assert (=> start!71130 m!768207))

(declare-fun m!768209 () Bool)

(assert (=> start!71130 m!768209))

(declare-fun m!768211 () Bool)

(assert (=> start!71130 m!768211))

(declare-fun m!768213 () Bool)

(assert (=> b!825707 m!768213))

(declare-fun m!768215 () Bool)

(assert (=> b!825707 m!768215))

(declare-fun m!768217 () Bool)

(assert (=> b!825707 m!768217))

(declare-fun m!768219 () Bool)

(assert (=> b!825711 m!768219))

(declare-fun m!768221 () Bool)

(assert (=> b!825714 m!768221))

(declare-fun m!768223 () Bool)

(assert (=> mapNonEmpty!24127 m!768223))

(declare-fun m!768225 () Bool)

(assert (=> b!825710 m!768225))

(declare-fun m!768227 () Bool)

(assert (=> b!825710 m!768227))

(declare-fun m!768229 () Bool)

(assert (=> b!825710 m!768229))

(declare-fun m!768231 () Bool)

(assert (=> b!825710 m!768231))

(assert (=> b!825710 m!768225))

(declare-fun m!768233 () Bool)

(assert (=> b!825710 m!768233))

(assert (=> b!825710 m!768231))

(declare-fun m!768235 () Bool)

(assert (=> b!825710 m!768235))

(declare-fun m!768237 () Bool)

(assert (=> b!825710 m!768237))

(declare-fun m!768239 () Bool)

(assert (=> b!825710 m!768239))

(declare-fun m!768241 () Bool)

(assert (=> b!825710 m!768241))

(declare-fun m!768243 () Bool)

(assert (=> b!825710 m!768243))

(declare-fun m!768245 () Bool)

(assert (=> b!825710 m!768245))

(declare-fun m!768247 () Bool)

(assert (=> b!825706 m!768247))

(assert (=> b!825706 m!768247))

(declare-fun m!768249 () Bool)

(assert (=> b!825706 m!768249))

(check-sat (not b!825706) (not b!825710) (not b!825707) (not b!825714) (not start!71130) tp_is_empty!15003 (not b!825711) (not b!825705) (not mapNonEmpty!24127) (not b_next!13293) b_and!22225)
(check-sat b_and!22225 (not b_next!13293))
(get-model)

(declare-fun d!104917 () Bool)

(declare-fun e!459755 () Bool)

(assert (=> d!104917 e!459755))

(declare-fun res!563042 () Bool)

(assert (=> d!104917 (=> (not res!563042) (not e!459755))))

(declare-fun lt!373261 () ListLongMap!8837)

(declare-fun contains!4179 (ListLongMap!8837 (_ BitVec 64)) Bool)

(assert (=> d!104917 (= res!563042 (contains!4179 lt!373261 (_1!5010 lt!373209)))))

(declare-fun lt!373259 () List!15842)

(assert (=> d!104917 (= lt!373261 (ListLongMap!8838 lt!373259))))

(declare-fun lt!373260 () Unit!28307)

(declare-fun lt!373262 () Unit!28307)

(assert (=> d!104917 (= lt!373260 lt!373262)))

(declare-datatypes ((Option!411 0))(
  ( (Some!410 (v!9980 V!25005)) (None!409) )
))
(declare-fun getValueByKey!405 (List!15842 (_ BitVec 64)) Option!411)

(assert (=> d!104917 (= (getValueByKey!405 lt!373259 (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209)))))

(declare-fun lemmaContainsTupThenGetReturnValue!221 (List!15842 (_ BitVec 64) V!25005) Unit!28307)

(assert (=> d!104917 (= lt!373262 (lemmaContainsTupThenGetReturnValue!221 lt!373259 (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(declare-fun insertStrictlySorted!259 (List!15842 (_ BitVec 64) V!25005) List!15842)

(assert (=> d!104917 (= lt!373259 (insertStrictlySorted!259 (toList!4434 (+!1895 lt!373204 lt!373201)) (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104917 (= (+!1895 (+!1895 lt!373204 lt!373201) lt!373209) lt!373261)))

(declare-fun b!825752 () Bool)

(declare-fun res!563043 () Bool)

(assert (=> b!825752 (=> (not res!563043) (not e!459755))))

(assert (=> b!825752 (= res!563043 (= (getValueByKey!405 (toList!4434 lt!373261) (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209))))))

(declare-fun b!825753 () Bool)

(declare-fun contains!4180 (List!15842 tuple2!10000) Bool)

(assert (=> b!825753 (= e!459755 (contains!4180 (toList!4434 lt!373261) lt!373209))))

(assert (= (and d!104917 res!563042) b!825752))

(assert (= (and b!825752 res!563043) b!825753))

(declare-fun m!768299 () Bool)

(assert (=> d!104917 m!768299))

(declare-fun m!768301 () Bool)

(assert (=> d!104917 m!768301))

(declare-fun m!768303 () Bool)

(assert (=> d!104917 m!768303))

(declare-fun m!768305 () Bool)

(assert (=> d!104917 m!768305))

(declare-fun m!768307 () Bool)

(assert (=> b!825752 m!768307))

(declare-fun m!768309 () Bool)

(assert (=> b!825753 m!768309))

(assert (=> b!825706 d!104917))

(declare-fun d!104919 () Bool)

(declare-fun e!459756 () Bool)

(assert (=> d!104919 e!459756))

(declare-fun res!563044 () Bool)

(assert (=> d!104919 (=> (not res!563044) (not e!459756))))

(declare-fun lt!373265 () ListLongMap!8837)

(assert (=> d!104919 (= res!563044 (contains!4179 lt!373265 (_1!5010 lt!373201)))))

(declare-fun lt!373263 () List!15842)

(assert (=> d!104919 (= lt!373265 (ListLongMap!8838 lt!373263))))

(declare-fun lt!373264 () Unit!28307)

(declare-fun lt!373266 () Unit!28307)

(assert (=> d!104919 (= lt!373264 lt!373266)))

(assert (=> d!104919 (= (getValueByKey!405 lt!373263 (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201)))))

(assert (=> d!104919 (= lt!373266 (lemmaContainsTupThenGetReturnValue!221 lt!373263 (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104919 (= lt!373263 (insertStrictlySorted!259 (toList!4434 lt!373204) (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104919 (= (+!1895 lt!373204 lt!373201) lt!373265)))

(declare-fun b!825754 () Bool)

(declare-fun res!563045 () Bool)

(assert (=> b!825754 (=> (not res!563045) (not e!459756))))

(assert (=> b!825754 (= res!563045 (= (getValueByKey!405 (toList!4434 lt!373265) (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201))))))

(declare-fun b!825755 () Bool)

(assert (=> b!825755 (= e!459756 (contains!4180 (toList!4434 lt!373265) lt!373201))))

(assert (= (and d!104919 res!563044) b!825754))

(assert (= (and b!825754 res!563045) b!825755))

(declare-fun m!768311 () Bool)

(assert (=> d!104919 m!768311))

(declare-fun m!768313 () Bool)

(assert (=> d!104919 m!768313))

(declare-fun m!768315 () Bool)

(assert (=> d!104919 m!768315))

(declare-fun m!768317 () Bool)

(assert (=> d!104919 m!768317))

(declare-fun m!768319 () Bool)

(assert (=> b!825754 m!768319))

(declare-fun m!768321 () Bool)

(assert (=> b!825755 m!768321))

(assert (=> b!825706 d!104919))

(declare-fun bm!35870 () Bool)

(declare-fun call!35873 () Bool)

(declare-fun c!89348 () Bool)

(assert (=> bm!35870 (= call!35873 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89348 (Cons!15839 (select (arr!22116 _keys!976) #b00000000000000000000000000000000) Nil!15840) Nil!15840)))))

(declare-fun b!825766 () Bool)

(declare-fun e!459768 () Bool)

(assert (=> b!825766 (= e!459768 call!35873)))

(declare-fun b!825767 () Bool)

(declare-fun e!459767 () Bool)

(declare-fun contains!4181 (List!15843 (_ BitVec 64)) Bool)

(assert (=> b!825767 (= e!459767 (contains!4181 Nil!15840 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104921 () Bool)

(declare-fun res!563053 () Bool)

(declare-fun e!459766 () Bool)

(assert (=> d!104921 (=> res!563053 e!459766)))

(assert (=> d!104921 (= res!563053 (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> d!104921 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15840) e!459766)))

(declare-fun b!825768 () Bool)

(declare-fun e!459765 () Bool)

(assert (=> b!825768 (= e!459766 e!459765)))

(declare-fun res!563054 () Bool)

(assert (=> b!825768 (=> (not res!563054) (not e!459765))))

(assert (=> b!825768 (= res!563054 (not e!459767))))

(declare-fun res!563052 () Bool)

(assert (=> b!825768 (=> (not res!563052) (not e!459767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!825768 (= res!563052 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825769 () Bool)

(assert (=> b!825769 (= e!459765 e!459768)))

(assert (=> b!825769 (= c!89348 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825770 () Bool)

(assert (=> b!825770 (= e!459768 call!35873)))

(assert (= (and d!104921 (not res!563053)) b!825768))

(assert (= (and b!825768 res!563052) b!825767))

(assert (= (and b!825768 res!563054) b!825769))

(assert (= (and b!825769 c!89348) b!825766))

(assert (= (and b!825769 (not c!89348)) b!825770))

(assert (= (or b!825766 b!825770) bm!35870))

(declare-fun m!768323 () Bool)

(assert (=> bm!35870 m!768323))

(declare-fun m!768325 () Bool)

(assert (=> bm!35870 m!768325))

(assert (=> b!825767 m!768323))

(assert (=> b!825767 m!768323))

(declare-fun m!768327 () Bool)

(assert (=> b!825767 m!768327))

(assert (=> b!825768 m!768323))

(assert (=> b!825768 m!768323))

(declare-fun m!768329 () Bool)

(assert (=> b!825768 m!768329))

(assert (=> b!825769 m!768323))

(assert (=> b!825769 m!768323))

(assert (=> b!825769 m!768329))

(assert (=> b!825711 d!104921))

(declare-fun d!104923 () Bool)

(assert (=> d!104923 (= (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373269 () Unit!28307)

(declare-fun choose!1413 (array!46148 array!46150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25005 V!25005 V!25005 V!25005 (_ BitVec 32) Int) Unit!28307)

(assert (=> d!104923 (= lt!373269 (choose!1413 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104923 (validMask!0 mask!1312)))

(assert (=> d!104923 (= (lemmaNoChangeToArrayThenSameMapNoExtras!564 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!373269)))

(declare-fun bs!23062 () Bool)

(assert (= bs!23062 d!104923))

(assert (=> bs!23062 m!768217))

(assert (=> bs!23062 m!768215))

(declare-fun m!768331 () Bool)

(assert (=> bs!23062 m!768331))

(assert (=> bs!23062 m!768207))

(assert (=> b!825707 d!104923))

(declare-fun bm!35873 () Bool)

(declare-fun call!35876 () ListLongMap!8837)

(assert (=> bm!35873 (= call!35876 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!825795 () Bool)

(declare-fun res!563066 () Bool)

(declare-fun e!459783 () Bool)

(assert (=> b!825795 (=> (not res!563066) (not e!459783))))

(declare-fun lt!373286 () ListLongMap!8837)

(assert (=> b!825795 (= res!563066 (not (contains!4179 lt!373286 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!825797 () Bool)

(declare-fun e!459787 () ListLongMap!8837)

(assert (=> b!825797 (= e!459787 (ListLongMap!8838 Nil!15839))))

(declare-fun b!825798 () Bool)

(declare-fun e!459784 () Bool)

(assert (=> b!825798 (= e!459783 e!459784)))

(declare-fun c!89359 () Bool)

(declare-fun e!459789 () Bool)

(assert (=> b!825798 (= c!89359 e!459789)))

(declare-fun res!563063 () Bool)

(assert (=> b!825798 (=> (not res!563063) (not e!459789))))

(assert (=> b!825798 (= res!563063 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825799 () Bool)

(declare-fun lt!373288 () Unit!28307)

(declare-fun lt!373287 () Unit!28307)

(assert (=> b!825799 (= lt!373288 lt!373287)))

(declare-fun lt!373284 () (_ BitVec 64))

(declare-fun lt!373289 () V!25005)

(declare-fun lt!373290 () (_ BitVec 64))

(declare-fun lt!373285 () ListLongMap!8837)

(assert (=> b!825799 (not (contains!4179 (+!1895 lt!373285 (tuple2!10001 lt!373290 lt!373289)) lt!373284))))

(declare-fun addStillNotContains!189 (ListLongMap!8837 (_ BitVec 64) V!25005 (_ BitVec 64)) Unit!28307)

(assert (=> b!825799 (= lt!373287 (addStillNotContains!189 lt!373285 lt!373290 lt!373289 lt!373284))))

(assert (=> b!825799 (= lt!373284 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11744 (ValueCell!7086 V!25005) V!25005)

(declare-fun dynLambda!972 (Int (_ BitVec 64)) V!25005)

(assert (=> b!825799 (= lt!373289 (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!825799 (= lt!373290 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!825799 (= lt!373285 call!35876)))

(declare-fun e!459788 () ListLongMap!8837)

(assert (=> b!825799 (= e!459788 (+!1895 call!35876 (tuple2!10001 (select (arr!22116 _keys!976) #b00000000000000000000000000000000) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!825800 () Bool)

(declare-fun e!459785 () Bool)

(assert (=> b!825800 (= e!459784 e!459785)))

(assert (=> b!825800 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun res!563064 () Bool)

(assert (=> b!825800 (= res!563064 (contains!4179 lt!373286 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825800 (=> (not res!563064) (not e!459785))))

(declare-fun b!825801 () Bool)

(declare-fun e!459786 () Bool)

(assert (=> b!825801 (= e!459784 e!459786)))

(declare-fun c!89358 () Bool)

(assert (=> b!825801 (= c!89358 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825802 () Bool)

(assert (=> b!825802 (= e!459787 e!459788)))

(declare-fun c!89360 () Bool)

(assert (=> b!825802 (= c!89360 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825803 () Bool)

(assert (=> b!825803 (= e!459786 (= lt!373286 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!825804 () Bool)

(assert (=> b!825804 (= e!459789 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825804 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!825796 () Bool)

(assert (=> b!825796 (= e!459788 call!35876)))

(declare-fun d!104925 () Bool)

(assert (=> d!104925 e!459783))

(declare-fun res!563065 () Bool)

(assert (=> d!104925 (=> (not res!563065) (not e!459783))))

(assert (=> d!104925 (= res!563065 (not (contains!4179 lt!373286 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104925 (= lt!373286 e!459787)))

(declare-fun c!89357 () Bool)

(assert (=> d!104925 (= c!89357 (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> d!104925 (validMask!0 mask!1312)))

(assert (=> d!104925 (= (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!373286)))

(declare-fun b!825805 () Bool)

(assert (=> b!825805 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> b!825805 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22538 _values!788)))))

(declare-fun apply!362 (ListLongMap!8837 (_ BitVec 64)) V!25005)

(assert (=> b!825805 (= e!459785 (= (apply!362 lt!373286 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!825806 () Bool)

(declare-fun isEmpty!649 (ListLongMap!8837) Bool)

(assert (=> b!825806 (= e!459786 (isEmpty!649 lt!373286))))

(assert (= (and d!104925 c!89357) b!825797))

(assert (= (and d!104925 (not c!89357)) b!825802))

(assert (= (and b!825802 c!89360) b!825799))

(assert (= (and b!825802 (not c!89360)) b!825796))

(assert (= (or b!825799 b!825796) bm!35873))

(assert (= (and d!104925 res!563065) b!825795))

(assert (= (and b!825795 res!563066) b!825798))

(assert (= (and b!825798 res!563063) b!825804))

(assert (= (and b!825798 c!89359) b!825800))

(assert (= (and b!825798 (not c!89359)) b!825801))

(assert (= (and b!825800 res!563064) b!825805))

(assert (= (and b!825801 c!89358) b!825803))

(assert (= (and b!825801 (not c!89358)) b!825806))

(declare-fun b_lambda!11145 () Bool)

(assert (=> (not b_lambda!11145) (not b!825799)))

(declare-fun t!22199 () Bool)

(declare-fun tb!4213 () Bool)

(assert (=> (and start!71130 (= defaultEntry!796 defaultEntry!796) t!22199) tb!4213))

(declare-fun result!7963 () Bool)

(assert (=> tb!4213 (= result!7963 tp_is_empty!15003)))

(assert (=> b!825799 t!22199))

(declare-fun b_and!22229 () Bool)

(assert (= b_and!22225 (and (=> t!22199 result!7963) b_and!22229)))

(declare-fun b_lambda!11147 () Bool)

(assert (=> (not b_lambda!11147) (not b!825805)))

(assert (=> b!825805 t!22199))

(declare-fun b_and!22231 () Bool)

(assert (= b_and!22229 (and (=> t!22199 result!7963) b_and!22231)))

(declare-fun m!768333 () Bool)

(assert (=> b!825806 m!768333))

(assert (=> b!825802 m!768323))

(assert (=> b!825802 m!768323))

(assert (=> b!825802 m!768329))

(declare-fun m!768335 () Bool)

(assert (=> b!825805 m!768335))

(declare-fun m!768337 () Bool)

(assert (=> b!825805 m!768337))

(declare-fun m!768339 () Bool)

(assert (=> b!825805 m!768339))

(assert (=> b!825805 m!768323))

(assert (=> b!825805 m!768335))

(assert (=> b!825805 m!768323))

(declare-fun m!768341 () Bool)

(assert (=> b!825805 m!768341))

(assert (=> b!825805 m!768337))

(declare-fun m!768343 () Bool)

(assert (=> d!104925 m!768343))

(assert (=> d!104925 m!768207))

(declare-fun m!768345 () Bool)

(assert (=> b!825803 m!768345))

(assert (=> b!825800 m!768323))

(assert (=> b!825800 m!768323))

(declare-fun m!768347 () Bool)

(assert (=> b!825800 m!768347))

(assert (=> bm!35873 m!768345))

(declare-fun m!768349 () Bool)

(assert (=> b!825795 m!768349))

(assert (=> b!825804 m!768323))

(assert (=> b!825804 m!768323))

(assert (=> b!825804 m!768329))

(assert (=> b!825799 m!768335))

(assert (=> b!825799 m!768337))

(assert (=> b!825799 m!768339))

(assert (=> b!825799 m!768323))

(assert (=> b!825799 m!768335))

(declare-fun m!768351 () Bool)

(assert (=> b!825799 m!768351))

(declare-fun m!768353 () Bool)

(assert (=> b!825799 m!768353))

(declare-fun m!768355 () Bool)

(assert (=> b!825799 m!768355))

(assert (=> b!825799 m!768337))

(declare-fun m!768357 () Bool)

(assert (=> b!825799 m!768357))

(assert (=> b!825799 m!768351))

(assert (=> b!825707 d!104925))

(declare-fun call!35877 () ListLongMap!8837)

(declare-fun bm!35874 () Bool)

(assert (=> bm!35874 (= call!35877 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!825809 () Bool)

(declare-fun res!563070 () Bool)

(declare-fun e!459790 () Bool)

(assert (=> b!825809 (=> (not res!563070) (not e!459790))))

(declare-fun lt!373293 () ListLongMap!8837)

(assert (=> b!825809 (= res!563070 (not (contains!4179 lt!373293 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!825811 () Bool)

(declare-fun e!459794 () ListLongMap!8837)

(assert (=> b!825811 (= e!459794 (ListLongMap!8838 Nil!15839))))

(declare-fun b!825812 () Bool)

(declare-fun e!459791 () Bool)

(assert (=> b!825812 (= e!459790 e!459791)))

(declare-fun c!89363 () Bool)

(declare-fun e!459796 () Bool)

(assert (=> b!825812 (= c!89363 e!459796)))

(declare-fun res!563067 () Bool)

(assert (=> b!825812 (=> (not res!563067) (not e!459796))))

(assert (=> b!825812 (= res!563067 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825813 () Bool)

(declare-fun lt!373295 () Unit!28307)

(declare-fun lt!373294 () Unit!28307)

(assert (=> b!825813 (= lt!373295 lt!373294)))

(declare-fun lt!373291 () (_ BitVec 64))

(declare-fun lt!373292 () ListLongMap!8837)

(declare-fun lt!373297 () (_ BitVec 64))

(declare-fun lt!373296 () V!25005)

(assert (=> b!825813 (not (contains!4179 (+!1895 lt!373292 (tuple2!10001 lt!373297 lt!373296)) lt!373291))))

(assert (=> b!825813 (= lt!373294 (addStillNotContains!189 lt!373292 lt!373297 lt!373296 lt!373291))))

(assert (=> b!825813 (= lt!373291 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!825813 (= lt!373296 (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!825813 (= lt!373297 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!825813 (= lt!373292 call!35877)))

(declare-fun e!459795 () ListLongMap!8837)

(assert (=> b!825813 (= e!459795 (+!1895 call!35877 (tuple2!10001 (select (arr!22116 _keys!976) #b00000000000000000000000000000000) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!825814 () Bool)

(declare-fun e!459792 () Bool)

(assert (=> b!825814 (= e!459791 e!459792)))

(assert (=> b!825814 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun res!563068 () Bool)

(assert (=> b!825814 (= res!563068 (contains!4179 lt!373293 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825814 (=> (not res!563068) (not e!459792))))

(declare-fun b!825815 () Bool)

(declare-fun e!459793 () Bool)

(assert (=> b!825815 (= e!459791 e!459793)))

(declare-fun c!89362 () Bool)

(assert (=> b!825815 (= c!89362 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825816 () Bool)

(assert (=> b!825816 (= e!459794 e!459795)))

(declare-fun c!89364 () Bool)

(assert (=> b!825816 (= c!89364 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825817 () Bool)

(assert (=> b!825817 (= e!459793 (= lt!373293 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!825818 () Bool)

(assert (=> b!825818 (= e!459796 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825818 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!825810 () Bool)

(assert (=> b!825810 (= e!459795 call!35877)))

(declare-fun d!104927 () Bool)

(assert (=> d!104927 e!459790))

(declare-fun res!563069 () Bool)

(assert (=> d!104927 (=> (not res!563069) (not e!459790))))

(assert (=> d!104927 (= res!563069 (not (contains!4179 lt!373293 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104927 (= lt!373293 e!459794)))

(declare-fun c!89361 () Bool)

(assert (=> d!104927 (= c!89361 (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> d!104927 (validMask!0 mask!1312)))

(assert (=> d!104927 (= (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!373293)))

(declare-fun b!825819 () Bool)

(assert (=> b!825819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> b!825819 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22538 _values!788)))))

(assert (=> b!825819 (= e!459792 (= (apply!362 lt!373293 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!825820 () Bool)

(assert (=> b!825820 (= e!459793 (isEmpty!649 lt!373293))))

(assert (= (and d!104927 c!89361) b!825811))

(assert (= (and d!104927 (not c!89361)) b!825816))

(assert (= (and b!825816 c!89364) b!825813))

(assert (= (and b!825816 (not c!89364)) b!825810))

(assert (= (or b!825813 b!825810) bm!35874))

(assert (= (and d!104927 res!563069) b!825809))

(assert (= (and b!825809 res!563070) b!825812))

(assert (= (and b!825812 res!563067) b!825818))

(assert (= (and b!825812 c!89363) b!825814))

(assert (= (and b!825812 (not c!89363)) b!825815))

(assert (= (and b!825814 res!563068) b!825819))

(assert (= (and b!825815 c!89362) b!825817))

(assert (= (and b!825815 (not c!89362)) b!825820))

(declare-fun b_lambda!11149 () Bool)

(assert (=> (not b_lambda!11149) (not b!825813)))

(assert (=> b!825813 t!22199))

(declare-fun b_and!22233 () Bool)

(assert (= b_and!22231 (and (=> t!22199 result!7963) b_and!22233)))

(declare-fun b_lambda!11151 () Bool)

(assert (=> (not b_lambda!11151) (not b!825819)))

(assert (=> b!825819 t!22199))

(declare-fun b_and!22235 () Bool)

(assert (= b_and!22233 (and (=> t!22199 result!7963) b_and!22235)))

(declare-fun m!768359 () Bool)

(assert (=> b!825820 m!768359))

(assert (=> b!825816 m!768323))

(assert (=> b!825816 m!768323))

(assert (=> b!825816 m!768329))

(assert (=> b!825819 m!768335))

(assert (=> b!825819 m!768337))

(assert (=> b!825819 m!768339))

(assert (=> b!825819 m!768323))

(assert (=> b!825819 m!768335))

(assert (=> b!825819 m!768323))

(declare-fun m!768361 () Bool)

(assert (=> b!825819 m!768361))

(assert (=> b!825819 m!768337))

(declare-fun m!768363 () Bool)

(assert (=> d!104927 m!768363))

(assert (=> d!104927 m!768207))

(declare-fun m!768365 () Bool)

(assert (=> b!825817 m!768365))

(assert (=> b!825814 m!768323))

(assert (=> b!825814 m!768323))

(declare-fun m!768367 () Bool)

(assert (=> b!825814 m!768367))

(assert (=> bm!35874 m!768365))

(declare-fun m!768369 () Bool)

(assert (=> b!825809 m!768369))

(assert (=> b!825818 m!768323))

(assert (=> b!825818 m!768323))

(assert (=> b!825818 m!768329))

(assert (=> b!825813 m!768335))

(assert (=> b!825813 m!768337))

(assert (=> b!825813 m!768339))

(assert (=> b!825813 m!768323))

(assert (=> b!825813 m!768335))

(declare-fun m!768371 () Bool)

(assert (=> b!825813 m!768371))

(declare-fun m!768373 () Bool)

(assert (=> b!825813 m!768373))

(declare-fun m!768375 () Bool)

(assert (=> b!825813 m!768375))

(assert (=> b!825813 m!768337))

(declare-fun m!768377 () Bool)

(assert (=> b!825813 m!768377))

(assert (=> b!825813 m!768371))

(assert (=> b!825707 d!104927))

(declare-fun d!104929 () Bool)

(assert (=> d!104929 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71130 d!104929))

(declare-fun d!104931 () Bool)

(assert (=> d!104931 (= (array_inv!17619 _keys!976) (bvsge (size!22537 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71130 d!104931))

(declare-fun d!104933 () Bool)

(assert (=> d!104933 (= (array_inv!17620 _values!788) (bvsge (size!22538 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71130 d!104933))

(declare-fun d!104935 () Bool)

(declare-fun e!459797 () Bool)

(assert (=> d!104935 e!459797))

(declare-fun res!563071 () Bool)

(assert (=> d!104935 (=> (not res!563071) (not e!459797))))

(declare-fun lt!373300 () ListLongMap!8837)

(assert (=> d!104935 (= res!563071 (contains!4179 lt!373300 (_1!5010 lt!373201)))))

(declare-fun lt!373298 () List!15842)

(assert (=> d!104935 (= lt!373300 (ListLongMap!8838 lt!373298))))

(declare-fun lt!373299 () Unit!28307)

(declare-fun lt!373301 () Unit!28307)

(assert (=> d!104935 (= lt!373299 lt!373301)))

(assert (=> d!104935 (= (getValueByKey!405 lt!373298 (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201)))))

(assert (=> d!104935 (= lt!373301 (lemmaContainsTupThenGetReturnValue!221 lt!373298 (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104935 (= lt!373298 (insertStrictlySorted!259 (toList!4434 lt!373200) (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104935 (= (+!1895 lt!373200 lt!373201) lt!373300)))

(declare-fun b!825821 () Bool)

(declare-fun res!563072 () Bool)

(assert (=> b!825821 (=> (not res!563072) (not e!459797))))

(assert (=> b!825821 (= res!563072 (= (getValueByKey!405 (toList!4434 lt!373300) (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201))))))

(declare-fun b!825822 () Bool)

(assert (=> b!825822 (= e!459797 (contains!4180 (toList!4434 lt!373300) lt!373201))))

(assert (= (and d!104935 res!563071) b!825821))

(assert (= (and b!825821 res!563072) b!825822))

(declare-fun m!768379 () Bool)

(assert (=> d!104935 m!768379))

(declare-fun m!768381 () Bool)

(assert (=> d!104935 m!768381))

(declare-fun m!768383 () Bool)

(assert (=> d!104935 m!768383))

(declare-fun m!768385 () Bool)

(assert (=> d!104935 m!768385))

(declare-fun m!768387 () Bool)

(assert (=> b!825821 m!768387))

(declare-fun m!768389 () Bool)

(assert (=> b!825822 m!768389))

(assert (=> b!825710 d!104935))

(declare-fun bm!35889 () Bool)

(declare-fun call!35897 () ListLongMap!8837)

(declare-fun call!35896 () ListLongMap!8837)

(assert (=> bm!35889 (= call!35897 call!35896)))

(declare-fun b!825865 () Bool)

(declare-fun e!459834 () ListLongMap!8837)

(assert (=> b!825865 (= e!459834 call!35897)))

(declare-fun d!104937 () Bool)

(declare-fun e!459830 () Bool)

(assert (=> d!104937 e!459830))

(declare-fun res!563099 () Bool)

(assert (=> d!104937 (=> (not res!563099) (not e!459830))))

(assert (=> d!104937 (= res!563099 (or (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))))

(declare-fun lt!373360 () ListLongMap!8837)

(declare-fun lt!373346 () ListLongMap!8837)

(assert (=> d!104937 (= lt!373360 lt!373346)))

(declare-fun lt!373350 () Unit!28307)

(declare-fun e!459833 () Unit!28307)

(assert (=> d!104937 (= lt!373350 e!459833)))

(declare-fun c!89380 () Bool)

(declare-fun e!459828 () Bool)

(assert (=> d!104937 (= c!89380 e!459828)))

(declare-fun res!563095 () Bool)

(assert (=> d!104937 (=> (not res!563095) (not e!459828))))

(assert (=> d!104937 (= res!563095 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun e!459835 () ListLongMap!8837)

(assert (=> d!104937 (= lt!373346 e!459835)))

(declare-fun c!89377 () Bool)

(assert (=> d!104937 (= c!89377 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104937 (validMask!0 mask!1312)))

(assert (=> d!104937 (= (getCurrentListMap!2544 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!373360)))

(declare-fun b!825866 () Bool)

(assert (=> b!825866 (= e!459835 (+!1895 call!35896 (tuple2!10001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!825867 () Bool)

(declare-fun e!459832 () ListLongMap!8837)

(assert (=> b!825867 (= e!459832 call!35897)))

(declare-fun b!825868 () Bool)

(declare-fun call!35894 () ListLongMap!8837)

(assert (=> b!825868 (= e!459834 call!35894)))

(declare-fun b!825869 () Bool)

(declare-fun res!563098 () Bool)

(assert (=> b!825869 (=> (not res!563098) (not e!459830))))

(declare-fun e!459831 () Bool)

(assert (=> b!825869 (= res!563098 e!459831)))

(declare-fun res!563092 () Bool)

(assert (=> b!825869 (=> res!563092 e!459831)))

(declare-fun e!459829 () Bool)

(assert (=> b!825869 (= res!563092 (not e!459829))))

(declare-fun res!563093 () Bool)

(assert (=> b!825869 (=> (not res!563093) (not e!459829))))

(assert (=> b!825869 (= res!563093 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825870 () Bool)

(assert (=> b!825870 (= e!459828 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825871 () Bool)

(assert (=> b!825871 (= e!459835 e!459832)))

(declare-fun c!89381 () Bool)

(assert (=> b!825871 (= c!89381 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!459827 () Bool)

(declare-fun b!825872 () Bool)

(assert (=> b!825872 (= e!459827 (= (apply!362 lt!373360 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!825872 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22538 _values!788)))))

(assert (=> b!825872 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825873 () Bool)

(declare-fun e!459836 () Bool)

(declare-fun e!459824 () Bool)

(assert (=> b!825873 (= e!459836 e!459824)))

(declare-fun res!563097 () Bool)

(declare-fun call!35895 () Bool)

(assert (=> b!825873 (= res!563097 call!35895)))

(assert (=> b!825873 (=> (not res!563097) (not e!459824))))

(declare-fun b!825874 () Bool)

(assert (=> b!825874 (= e!459836 (not call!35895))))

(declare-fun b!825875 () Bool)

(declare-fun e!459826 () Bool)

(assert (=> b!825875 (= e!459826 (= (apply!362 lt!373360 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35890 () Bool)

(declare-fun call!35892 () ListLongMap!8837)

(declare-fun call!35893 () ListLongMap!8837)

(assert (=> bm!35890 (= call!35892 call!35893)))

(declare-fun b!825876 () Bool)

(declare-fun c!89378 () Bool)

(assert (=> b!825876 (= c!89378 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825876 (= e!459832 e!459834)))

(declare-fun b!825877 () Bool)

(declare-fun res!563094 () Bool)

(assert (=> b!825877 (=> (not res!563094) (not e!459830))))

(assert (=> b!825877 (= res!563094 e!459836)))

(declare-fun c!89379 () Bool)

(assert (=> b!825877 (= c!89379 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!825878 () Bool)

(declare-fun e!459825 () Bool)

(declare-fun call!35898 () Bool)

(assert (=> b!825878 (= e!459825 (not call!35898))))

(declare-fun b!825879 () Bool)

(assert (=> b!825879 (= e!459830 e!459825)))

(declare-fun c!89382 () Bool)

(assert (=> b!825879 (= c!89382 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!825880 () Bool)

(assert (=> b!825880 (= e!459825 e!459826)))

(declare-fun res!563096 () Bool)

(assert (=> b!825880 (= res!563096 call!35898)))

(assert (=> b!825880 (=> (not res!563096) (not e!459826))))

(declare-fun bm!35891 () Bool)

(assert (=> bm!35891 (= call!35898 (contains!4179 lt!373360 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35892 () Bool)

(assert (=> bm!35892 (= call!35896 (+!1895 (ite c!89377 call!35893 (ite c!89381 call!35892 call!35894)) (ite (or c!89377 c!89381) (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35893 () Bool)

(assert (=> bm!35893 (= call!35893 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825881 () Bool)

(assert (=> b!825881 (= e!459831 e!459827)))

(declare-fun res!563091 () Bool)

(assert (=> b!825881 (=> (not res!563091) (not e!459827))))

(assert (=> b!825881 (= res!563091 (contains!4179 lt!373360 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825881 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825882 () Bool)

(declare-fun lt!373351 () Unit!28307)

(assert (=> b!825882 (= e!459833 lt!373351)))

(declare-fun lt!373348 () ListLongMap!8837)

(assert (=> b!825882 (= lt!373348 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373354 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373354 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373363 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373363 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373365 () Unit!28307)

(declare-fun addStillContains!314 (ListLongMap!8837 (_ BitVec 64) V!25005 (_ BitVec 64)) Unit!28307)

(assert (=> b!825882 (= lt!373365 (addStillContains!314 lt!373348 lt!373354 zeroValueBefore!34 lt!373363))))

(assert (=> b!825882 (contains!4179 (+!1895 lt!373348 (tuple2!10001 lt!373354 zeroValueBefore!34)) lt!373363)))

(declare-fun lt!373349 () Unit!28307)

(assert (=> b!825882 (= lt!373349 lt!373365)))

(declare-fun lt!373366 () ListLongMap!8837)

(assert (=> b!825882 (= lt!373366 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373359 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373359 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373357 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373357 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373358 () Unit!28307)

(declare-fun addApplyDifferent!314 (ListLongMap!8837 (_ BitVec 64) V!25005 (_ BitVec 64)) Unit!28307)

(assert (=> b!825882 (= lt!373358 (addApplyDifferent!314 lt!373366 lt!373359 minValue!754 lt!373357))))

(assert (=> b!825882 (= (apply!362 (+!1895 lt!373366 (tuple2!10001 lt!373359 minValue!754)) lt!373357) (apply!362 lt!373366 lt!373357))))

(declare-fun lt!373356 () Unit!28307)

(assert (=> b!825882 (= lt!373356 lt!373358)))

(declare-fun lt!373361 () ListLongMap!8837)

(assert (=> b!825882 (= lt!373361 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373367 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373367 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373347 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373347 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373355 () Unit!28307)

(assert (=> b!825882 (= lt!373355 (addApplyDifferent!314 lt!373361 lt!373367 zeroValueBefore!34 lt!373347))))

(assert (=> b!825882 (= (apply!362 (+!1895 lt!373361 (tuple2!10001 lt!373367 zeroValueBefore!34)) lt!373347) (apply!362 lt!373361 lt!373347))))

(declare-fun lt!373364 () Unit!28307)

(assert (=> b!825882 (= lt!373364 lt!373355)))

(declare-fun lt!373353 () ListLongMap!8837)

(assert (=> b!825882 (= lt!373353 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373362 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373362 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373352 () (_ BitVec 64))

(assert (=> b!825882 (= lt!373352 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!825882 (= lt!373351 (addApplyDifferent!314 lt!373353 lt!373362 minValue!754 lt!373352))))

(assert (=> b!825882 (= (apply!362 (+!1895 lt!373353 (tuple2!10001 lt!373362 minValue!754)) lt!373352) (apply!362 lt!373353 lt!373352))))

(declare-fun b!825883 () Bool)

(assert (=> b!825883 (= e!459829 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825884 () Bool)

(assert (=> b!825884 (= e!459824 (= (apply!362 lt!373360 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun bm!35894 () Bool)

(assert (=> bm!35894 (= call!35894 call!35892)))

(declare-fun bm!35895 () Bool)

(assert (=> bm!35895 (= call!35895 (contains!4179 lt!373360 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!825885 () Bool)

(declare-fun Unit!28309 () Unit!28307)

(assert (=> b!825885 (= e!459833 Unit!28309)))

(assert (= (and d!104937 c!89377) b!825866))

(assert (= (and d!104937 (not c!89377)) b!825871))

(assert (= (and b!825871 c!89381) b!825867))

(assert (= (and b!825871 (not c!89381)) b!825876))

(assert (= (and b!825876 c!89378) b!825865))

(assert (= (and b!825876 (not c!89378)) b!825868))

(assert (= (or b!825865 b!825868) bm!35894))

(assert (= (or b!825867 bm!35894) bm!35890))

(assert (= (or b!825867 b!825865) bm!35889))

(assert (= (or b!825866 bm!35890) bm!35893))

(assert (= (or b!825866 bm!35889) bm!35892))

(assert (= (and d!104937 res!563095) b!825870))

(assert (= (and d!104937 c!89380) b!825882))

(assert (= (and d!104937 (not c!89380)) b!825885))

(assert (= (and d!104937 res!563099) b!825869))

(assert (= (and b!825869 res!563093) b!825883))

(assert (= (and b!825869 (not res!563092)) b!825881))

(assert (= (and b!825881 res!563091) b!825872))

(assert (= (and b!825869 res!563098) b!825877))

(assert (= (and b!825877 c!89379) b!825873))

(assert (= (and b!825877 (not c!89379)) b!825874))

(assert (= (and b!825873 res!563097) b!825884))

(assert (= (or b!825873 b!825874) bm!35895))

(assert (= (and b!825877 res!563094) b!825879))

(assert (= (and b!825879 c!89382) b!825880))

(assert (= (and b!825879 (not c!89382)) b!825878))

(assert (= (and b!825880 res!563096) b!825875))

(assert (= (or b!825880 b!825878) bm!35891))

(declare-fun b_lambda!11153 () Bool)

(assert (=> (not b_lambda!11153) (not b!825872)))

(assert (=> b!825872 t!22199))

(declare-fun b_and!22237 () Bool)

(assert (= b_and!22235 (and (=> t!22199 result!7963) b_and!22237)))

(declare-fun m!768391 () Bool)

(assert (=> bm!35891 m!768391))

(declare-fun m!768393 () Bool)

(assert (=> b!825882 m!768393))

(declare-fun m!768395 () Bool)

(assert (=> b!825882 m!768395))

(declare-fun m!768397 () Bool)

(assert (=> b!825882 m!768397))

(declare-fun m!768399 () Bool)

(assert (=> b!825882 m!768399))

(assert (=> b!825882 m!768323))

(declare-fun m!768401 () Bool)

(assert (=> b!825882 m!768401))

(declare-fun m!768403 () Bool)

(assert (=> b!825882 m!768403))

(declare-fun m!768405 () Bool)

(assert (=> b!825882 m!768405))

(declare-fun m!768407 () Bool)

(assert (=> b!825882 m!768407))

(declare-fun m!768409 () Bool)

(assert (=> b!825882 m!768409))

(declare-fun m!768411 () Bool)

(assert (=> b!825882 m!768411))

(assert (=> b!825882 m!768217))

(declare-fun m!768413 () Bool)

(assert (=> b!825882 m!768413))

(declare-fun m!768415 () Bool)

(assert (=> b!825882 m!768415))

(assert (=> b!825882 m!768401))

(declare-fun m!768417 () Bool)

(assert (=> b!825882 m!768417))

(assert (=> b!825882 m!768403))

(declare-fun m!768419 () Bool)

(assert (=> b!825882 m!768419))

(assert (=> b!825882 m!768413))

(assert (=> b!825882 m!768419))

(declare-fun m!768421 () Bool)

(assert (=> b!825882 m!768421))

(assert (=> b!825883 m!768323))

(assert (=> b!825883 m!768323))

(assert (=> b!825883 m!768329))

(declare-fun m!768423 () Bool)

(assert (=> bm!35892 m!768423))

(assert (=> b!825872 m!768323))

(assert (=> b!825872 m!768337))

(assert (=> b!825872 m!768335))

(assert (=> b!825872 m!768323))

(declare-fun m!768425 () Bool)

(assert (=> b!825872 m!768425))

(assert (=> b!825872 m!768335))

(assert (=> b!825872 m!768337))

(assert (=> b!825872 m!768339))

(assert (=> b!825881 m!768323))

(assert (=> b!825881 m!768323))

(declare-fun m!768427 () Bool)

(assert (=> b!825881 m!768427))

(assert (=> bm!35893 m!768217))

(declare-fun m!768429 () Bool)

(assert (=> b!825875 m!768429))

(declare-fun m!768431 () Bool)

(assert (=> bm!35895 m!768431))

(assert (=> b!825870 m!768323))

(assert (=> b!825870 m!768323))

(assert (=> b!825870 m!768329))

(declare-fun m!768433 () Bool)

(assert (=> b!825866 m!768433))

(declare-fun m!768435 () Bool)

(assert (=> b!825884 m!768435))

(assert (=> d!104937 m!768207))

(assert (=> b!825710 d!104937))

(declare-fun bm!35896 () Bool)

(declare-fun call!35904 () ListLongMap!8837)

(declare-fun call!35903 () ListLongMap!8837)

(assert (=> bm!35896 (= call!35904 call!35903)))

(declare-fun b!825886 () Bool)

(declare-fun e!459847 () ListLongMap!8837)

(assert (=> b!825886 (= e!459847 call!35904)))

(declare-fun d!104939 () Bool)

(declare-fun e!459843 () Bool)

(assert (=> d!104939 e!459843))

(declare-fun res!563108 () Bool)

(assert (=> d!104939 (=> (not res!563108) (not e!459843))))

(assert (=> d!104939 (= res!563108 (or (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))))

(declare-fun lt!373382 () ListLongMap!8837)

(declare-fun lt!373368 () ListLongMap!8837)

(assert (=> d!104939 (= lt!373382 lt!373368)))

(declare-fun lt!373372 () Unit!28307)

(declare-fun e!459846 () Unit!28307)

(assert (=> d!104939 (= lt!373372 e!459846)))

(declare-fun c!89386 () Bool)

(declare-fun e!459841 () Bool)

(assert (=> d!104939 (= c!89386 e!459841)))

(declare-fun res!563104 () Bool)

(assert (=> d!104939 (=> (not res!563104) (not e!459841))))

(assert (=> d!104939 (= res!563104 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun e!459848 () ListLongMap!8837)

(assert (=> d!104939 (= lt!373368 e!459848)))

(declare-fun c!89383 () Bool)

(assert (=> d!104939 (= c!89383 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104939 (validMask!0 mask!1312)))

(assert (=> d!104939 (= (getCurrentListMap!2544 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!373382)))

(declare-fun b!825887 () Bool)

(assert (=> b!825887 (= e!459848 (+!1895 call!35903 (tuple2!10001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!825888 () Bool)

(declare-fun e!459845 () ListLongMap!8837)

(assert (=> b!825888 (= e!459845 call!35904)))

(declare-fun b!825889 () Bool)

(declare-fun call!35901 () ListLongMap!8837)

(assert (=> b!825889 (= e!459847 call!35901)))

(declare-fun b!825890 () Bool)

(declare-fun res!563107 () Bool)

(assert (=> b!825890 (=> (not res!563107) (not e!459843))))

(declare-fun e!459844 () Bool)

(assert (=> b!825890 (= res!563107 e!459844)))

(declare-fun res!563101 () Bool)

(assert (=> b!825890 (=> res!563101 e!459844)))

(declare-fun e!459842 () Bool)

(assert (=> b!825890 (= res!563101 (not e!459842))))

(declare-fun res!563102 () Bool)

(assert (=> b!825890 (=> (not res!563102) (not e!459842))))

(assert (=> b!825890 (= res!563102 (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825891 () Bool)

(assert (=> b!825891 (= e!459841 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825892 () Bool)

(assert (=> b!825892 (= e!459848 e!459845)))

(declare-fun c!89387 () Bool)

(assert (=> b!825892 (= c!89387 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!825893 () Bool)

(declare-fun e!459840 () Bool)

(assert (=> b!825893 (= e!459840 (= (apply!362 lt!373382 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)) (get!11744 (select (arr!22117 _values!788) #b00000000000000000000000000000000) (dynLambda!972 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!825893 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22538 _values!788)))))

(assert (=> b!825893 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825894 () Bool)

(declare-fun e!459849 () Bool)

(declare-fun e!459837 () Bool)

(assert (=> b!825894 (= e!459849 e!459837)))

(declare-fun res!563106 () Bool)

(declare-fun call!35902 () Bool)

(assert (=> b!825894 (= res!563106 call!35902)))

(assert (=> b!825894 (=> (not res!563106) (not e!459837))))

(declare-fun b!825895 () Bool)

(assert (=> b!825895 (= e!459849 (not call!35902))))

(declare-fun b!825896 () Bool)

(declare-fun e!459839 () Bool)

(assert (=> b!825896 (= e!459839 (= (apply!362 lt!373382 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35897 () Bool)

(declare-fun call!35899 () ListLongMap!8837)

(declare-fun call!35900 () ListLongMap!8837)

(assert (=> bm!35897 (= call!35899 call!35900)))

(declare-fun b!825897 () Bool)

(declare-fun c!89384 () Bool)

(assert (=> b!825897 (= c!89384 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825897 (= e!459845 e!459847)))

(declare-fun b!825898 () Bool)

(declare-fun res!563103 () Bool)

(assert (=> b!825898 (=> (not res!563103) (not e!459843))))

(assert (=> b!825898 (= res!563103 e!459849)))

(declare-fun c!89385 () Bool)

(assert (=> b!825898 (= c!89385 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!825899 () Bool)

(declare-fun e!459838 () Bool)

(declare-fun call!35905 () Bool)

(assert (=> b!825899 (= e!459838 (not call!35905))))

(declare-fun b!825900 () Bool)

(assert (=> b!825900 (= e!459843 e!459838)))

(declare-fun c!89388 () Bool)

(assert (=> b!825900 (= c!89388 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!825901 () Bool)

(assert (=> b!825901 (= e!459838 e!459839)))

(declare-fun res!563105 () Bool)

(assert (=> b!825901 (= res!563105 call!35905)))

(assert (=> b!825901 (=> (not res!563105) (not e!459839))))

(declare-fun bm!35898 () Bool)

(assert (=> bm!35898 (= call!35905 (contains!4179 lt!373382 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!35899 () Bool)

(assert (=> bm!35899 (= call!35903 (+!1895 (ite c!89383 call!35900 (ite c!89387 call!35899 call!35901)) (ite (or c!89383 c!89387) (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35900 () Bool)

(assert (=> bm!35900 (= call!35900 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825902 () Bool)

(assert (=> b!825902 (= e!459844 e!459840)))

(declare-fun res!563100 () Bool)

(assert (=> b!825902 (=> (not res!563100) (not e!459840))))

(assert (=> b!825902 (= res!563100 (contains!4179 lt!373382 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!825902 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(declare-fun b!825903 () Bool)

(declare-fun lt!373373 () Unit!28307)

(assert (=> b!825903 (= e!459846 lt!373373)))

(declare-fun lt!373370 () ListLongMap!8837)

(assert (=> b!825903 (= lt!373370 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373376 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373376 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373385 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373385 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373387 () Unit!28307)

(assert (=> b!825903 (= lt!373387 (addStillContains!314 lt!373370 lt!373376 zeroValueAfter!34 lt!373385))))

(assert (=> b!825903 (contains!4179 (+!1895 lt!373370 (tuple2!10001 lt!373376 zeroValueAfter!34)) lt!373385)))

(declare-fun lt!373371 () Unit!28307)

(assert (=> b!825903 (= lt!373371 lt!373387)))

(declare-fun lt!373388 () ListLongMap!8837)

(assert (=> b!825903 (= lt!373388 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373381 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373381 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373379 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373379 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373380 () Unit!28307)

(assert (=> b!825903 (= lt!373380 (addApplyDifferent!314 lt!373388 lt!373381 minValue!754 lt!373379))))

(assert (=> b!825903 (= (apply!362 (+!1895 lt!373388 (tuple2!10001 lt!373381 minValue!754)) lt!373379) (apply!362 lt!373388 lt!373379))))

(declare-fun lt!373378 () Unit!28307)

(assert (=> b!825903 (= lt!373378 lt!373380)))

(declare-fun lt!373383 () ListLongMap!8837)

(assert (=> b!825903 (= lt!373383 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373389 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373389 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373369 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373369 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373377 () Unit!28307)

(assert (=> b!825903 (= lt!373377 (addApplyDifferent!314 lt!373383 lt!373389 zeroValueAfter!34 lt!373369))))

(assert (=> b!825903 (= (apply!362 (+!1895 lt!373383 (tuple2!10001 lt!373389 zeroValueAfter!34)) lt!373369) (apply!362 lt!373383 lt!373369))))

(declare-fun lt!373386 () Unit!28307)

(assert (=> b!825903 (= lt!373386 lt!373377)))

(declare-fun lt!373375 () ListLongMap!8837)

(assert (=> b!825903 (= lt!373375 (getCurrentListMapNoExtraKeys!2448 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!373384 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373384 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!373374 () (_ BitVec 64))

(assert (=> b!825903 (= lt!373374 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!825903 (= lt!373373 (addApplyDifferent!314 lt!373375 lt!373384 minValue!754 lt!373374))))

(assert (=> b!825903 (= (apply!362 (+!1895 lt!373375 (tuple2!10001 lt!373384 minValue!754)) lt!373374) (apply!362 lt!373375 lt!373374))))

(declare-fun b!825904 () Bool)

(assert (=> b!825904 (= e!459842 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!825905 () Bool)

(assert (=> b!825905 (= e!459837 (= (apply!362 lt!373382 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun bm!35901 () Bool)

(assert (=> bm!35901 (= call!35901 call!35899)))

(declare-fun bm!35902 () Bool)

(assert (=> bm!35902 (= call!35902 (contains!4179 lt!373382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!825906 () Bool)

(declare-fun Unit!28310 () Unit!28307)

(assert (=> b!825906 (= e!459846 Unit!28310)))

(assert (= (and d!104939 c!89383) b!825887))

(assert (= (and d!104939 (not c!89383)) b!825892))

(assert (= (and b!825892 c!89387) b!825888))

(assert (= (and b!825892 (not c!89387)) b!825897))

(assert (= (and b!825897 c!89384) b!825886))

(assert (= (and b!825897 (not c!89384)) b!825889))

(assert (= (or b!825886 b!825889) bm!35901))

(assert (= (or b!825888 bm!35901) bm!35897))

(assert (= (or b!825888 b!825886) bm!35896))

(assert (= (or b!825887 bm!35897) bm!35900))

(assert (= (or b!825887 bm!35896) bm!35899))

(assert (= (and d!104939 res!563104) b!825891))

(assert (= (and d!104939 c!89386) b!825903))

(assert (= (and d!104939 (not c!89386)) b!825906))

(assert (= (and d!104939 res!563108) b!825890))

(assert (= (and b!825890 res!563102) b!825904))

(assert (= (and b!825890 (not res!563101)) b!825902))

(assert (= (and b!825902 res!563100) b!825893))

(assert (= (and b!825890 res!563107) b!825898))

(assert (= (and b!825898 c!89385) b!825894))

(assert (= (and b!825898 (not c!89385)) b!825895))

(assert (= (and b!825894 res!563106) b!825905))

(assert (= (or b!825894 b!825895) bm!35902))

(assert (= (and b!825898 res!563103) b!825900))

(assert (= (and b!825900 c!89388) b!825901))

(assert (= (and b!825900 (not c!89388)) b!825899))

(assert (= (and b!825901 res!563105) b!825896))

(assert (= (or b!825901 b!825899) bm!35898))

(declare-fun b_lambda!11155 () Bool)

(assert (=> (not b_lambda!11155) (not b!825893)))

(assert (=> b!825893 t!22199))

(declare-fun b_and!22239 () Bool)

(assert (= b_and!22237 (and (=> t!22199 result!7963) b_and!22239)))

(declare-fun m!768437 () Bool)

(assert (=> bm!35898 m!768437))

(declare-fun m!768439 () Bool)

(assert (=> b!825903 m!768439))

(declare-fun m!768441 () Bool)

(assert (=> b!825903 m!768441))

(declare-fun m!768443 () Bool)

(assert (=> b!825903 m!768443))

(declare-fun m!768445 () Bool)

(assert (=> b!825903 m!768445))

(assert (=> b!825903 m!768323))

(declare-fun m!768447 () Bool)

(assert (=> b!825903 m!768447))

(declare-fun m!768449 () Bool)

(assert (=> b!825903 m!768449))

(declare-fun m!768451 () Bool)

(assert (=> b!825903 m!768451))

(declare-fun m!768453 () Bool)

(assert (=> b!825903 m!768453))

(declare-fun m!768455 () Bool)

(assert (=> b!825903 m!768455))

(declare-fun m!768457 () Bool)

(assert (=> b!825903 m!768457))

(assert (=> b!825903 m!768215))

(declare-fun m!768459 () Bool)

(assert (=> b!825903 m!768459))

(declare-fun m!768461 () Bool)

(assert (=> b!825903 m!768461))

(assert (=> b!825903 m!768447))

(declare-fun m!768463 () Bool)

(assert (=> b!825903 m!768463))

(assert (=> b!825903 m!768449))

(declare-fun m!768465 () Bool)

(assert (=> b!825903 m!768465))

(assert (=> b!825903 m!768459))

(assert (=> b!825903 m!768465))

(declare-fun m!768467 () Bool)

(assert (=> b!825903 m!768467))

(assert (=> b!825904 m!768323))

(assert (=> b!825904 m!768323))

(assert (=> b!825904 m!768329))

(declare-fun m!768469 () Bool)

(assert (=> bm!35899 m!768469))

(assert (=> b!825893 m!768323))

(assert (=> b!825893 m!768337))

(assert (=> b!825893 m!768335))

(assert (=> b!825893 m!768323))

(declare-fun m!768471 () Bool)

(assert (=> b!825893 m!768471))

(assert (=> b!825893 m!768335))

(assert (=> b!825893 m!768337))

(assert (=> b!825893 m!768339))

(assert (=> b!825902 m!768323))

(assert (=> b!825902 m!768323))

(declare-fun m!768473 () Bool)

(assert (=> b!825902 m!768473))

(assert (=> bm!35900 m!768215))

(declare-fun m!768475 () Bool)

(assert (=> b!825896 m!768475))

(declare-fun m!768477 () Bool)

(assert (=> bm!35902 m!768477))

(assert (=> b!825891 m!768323))

(assert (=> b!825891 m!768323))

(assert (=> b!825891 m!768329))

(declare-fun m!768479 () Bool)

(assert (=> b!825887 m!768479))

(declare-fun m!768481 () Bool)

(assert (=> b!825905 m!768481))

(assert (=> d!104939 m!768207))

(assert (=> b!825710 d!104939))

(declare-fun d!104941 () Bool)

(assert (=> d!104941 (= (+!1895 lt!373211 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (+!1895 (+!1895 lt!373211 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!373392 () Unit!28307)

(declare-fun choose!1414 (ListLongMap!8837 (_ BitVec 64) V!25005 V!25005) Unit!28307)

(assert (=> d!104941 (= lt!373392 (choose!1414 lt!373211 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> d!104941 (= (addSameAsAddTwiceSameKeyDiffValues!222 lt!373211 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34) lt!373392)))

(declare-fun bs!23063 () Bool)

(assert (= bs!23063 d!104941))

(declare-fun m!768483 () Bool)

(assert (=> bs!23063 m!768483))

(declare-fun m!768485 () Bool)

(assert (=> bs!23063 m!768485))

(assert (=> bs!23063 m!768485))

(declare-fun m!768487 () Bool)

(assert (=> bs!23063 m!768487))

(declare-fun m!768489 () Bool)

(assert (=> bs!23063 m!768489))

(assert (=> b!825710 d!104941))

(declare-fun d!104943 () Bool)

(declare-fun e!459850 () Bool)

(assert (=> d!104943 e!459850))

(declare-fun res!563109 () Bool)

(assert (=> d!104943 (=> (not res!563109) (not e!459850))))

(declare-fun lt!373395 () ListLongMap!8837)

(assert (=> d!104943 (= res!563109 (contains!4179 lt!373395 (_1!5010 lt!373201)))))

(declare-fun lt!373393 () List!15842)

(assert (=> d!104943 (= lt!373395 (ListLongMap!8838 lt!373393))))

(declare-fun lt!373394 () Unit!28307)

(declare-fun lt!373396 () Unit!28307)

(assert (=> d!104943 (= lt!373394 lt!373396)))

(assert (=> d!104943 (= (getValueByKey!405 lt!373393 (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201)))))

(assert (=> d!104943 (= lt!373396 (lemmaContainsTupThenGetReturnValue!221 lt!373393 (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104943 (= lt!373393 (insertStrictlySorted!259 (toList!4434 (+!1895 lt!373200 lt!373209)) (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104943 (= (+!1895 (+!1895 lt!373200 lt!373209) lt!373201) lt!373395)))

(declare-fun b!825907 () Bool)

(declare-fun res!563110 () Bool)

(assert (=> b!825907 (=> (not res!563110) (not e!459850))))

(assert (=> b!825907 (= res!563110 (= (getValueByKey!405 (toList!4434 lt!373395) (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201))))))

(declare-fun b!825908 () Bool)

(assert (=> b!825908 (= e!459850 (contains!4180 (toList!4434 lt!373395) lt!373201))))

(assert (= (and d!104943 res!563109) b!825907))

(assert (= (and b!825907 res!563110) b!825908))

(declare-fun m!768491 () Bool)

(assert (=> d!104943 m!768491))

(declare-fun m!768493 () Bool)

(assert (=> d!104943 m!768493))

(declare-fun m!768495 () Bool)

(assert (=> d!104943 m!768495))

(declare-fun m!768497 () Bool)

(assert (=> d!104943 m!768497))

(declare-fun m!768499 () Bool)

(assert (=> b!825907 m!768499))

(declare-fun m!768501 () Bool)

(assert (=> b!825908 m!768501))

(assert (=> b!825710 d!104943))

(declare-fun d!104945 () Bool)

(declare-fun e!459851 () Bool)

(assert (=> d!104945 e!459851))

(declare-fun res!563111 () Bool)

(assert (=> d!104945 (=> (not res!563111) (not e!459851))))

(declare-fun lt!373399 () ListLongMap!8837)

(assert (=> d!104945 (= res!563111 (contains!4179 lt!373399 (_1!5010 lt!373209)))))

(declare-fun lt!373397 () List!15842)

(assert (=> d!104945 (= lt!373399 (ListLongMap!8838 lt!373397))))

(declare-fun lt!373398 () Unit!28307)

(declare-fun lt!373400 () Unit!28307)

(assert (=> d!104945 (= lt!373398 lt!373400)))

(assert (=> d!104945 (= (getValueByKey!405 lt!373397 (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209)))))

(assert (=> d!104945 (= lt!373400 (lemmaContainsTupThenGetReturnValue!221 lt!373397 (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104945 (= lt!373397 (insertStrictlySorted!259 (toList!4434 lt!373200) (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104945 (= (+!1895 lt!373200 lt!373209) lt!373399)))

(declare-fun b!825909 () Bool)

(declare-fun res!563112 () Bool)

(assert (=> b!825909 (=> (not res!563112) (not e!459851))))

(assert (=> b!825909 (= res!563112 (= (getValueByKey!405 (toList!4434 lt!373399) (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209))))))

(declare-fun b!825910 () Bool)

(assert (=> b!825910 (= e!459851 (contains!4180 (toList!4434 lt!373399) lt!373209))))

(assert (= (and d!104945 res!563111) b!825909))

(assert (= (and b!825909 res!563112) b!825910))

(declare-fun m!768503 () Bool)

(assert (=> d!104945 m!768503))

(declare-fun m!768505 () Bool)

(assert (=> d!104945 m!768505))

(declare-fun m!768507 () Bool)

(assert (=> d!104945 m!768507))

(declare-fun m!768509 () Bool)

(assert (=> d!104945 m!768509))

(declare-fun m!768511 () Bool)

(assert (=> b!825909 m!768511))

(declare-fun m!768513 () Bool)

(assert (=> b!825910 m!768513))

(assert (=> b!825710 d!104945))

(declare-fun d!104947 () Bool)

(declare-fun e!459852 () Bool)

(assert (=> d!104947 e!459852))

(declare-fun res!563113 () Bool)

(assert (=> d!104947 (=> (not res!563113) (not e!459852))))

(declare-fun lt!373403 () ListLongMap!8837)

(assert (=> d!104947 (= res!563113 (contains!4179 lt!373403 (_1!5010 lt!373209)))))

(declare-fun lt!373401 () List!15842)

(assert (=> d!104947 (= lt!373403 (ListLongMap!8838 lt!373401))))

(declare-fun lt!373402 () Unit!28307)

(declare-fun lt!373404 () Unit!28307)

(assert (=> d!104947 (= lt!373402 lt!373404)))

(assert (=> d!104947 (= (getValueByKey!405 lt!373401 (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209)))))

(assert (=> d!104947 (= lt!373404 (lemmaContainsTupThenGetReturnValue!221 lt!373401 (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104947 (= lt!373401 (insertStrictlySorted!259 (toList!4434 lt!373210) (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104947 (= (+!1895 lt!373210 lt!373209) lt!373403)))

(declare-fun b!825911 () Bool)

(declare-fun res!563114 () Bool)

(assert (=> b!825911 (=> (not res!563114) (not e!459852))))

(assert (=> b!825911 (= res!563114 (= (getValueByKey!405 (toList!4434 lt!373403) (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209))))))

(declare-fun b!825912 () Bool)

(assert (=> b!825912 (= e!459852 (contains!4180 (toList!4434 lt!373403) lt!373209))))

(assert (= (and d!104947 res!563113) b!825911))

(assert (= (and b!825911 res!563114) b!825912))

(declare-fun m!768515 () Bool)

(assert (=> d!104947 m!768515))

(declare-fun m!768517 () Bool)

(assert (=> d!104947 m!768517))

(declare-fun m!768519 () Bool)

(assert (=> d!104947 m!768519))

(declare-fun m!768521 () Bool)

(assert (=> d!104947 m!768521))

(declare-fun m!768523 () Bool)

(assert (=> b!825911 m!768523))

(declare-fun m!768525 () Bool)

(assert (=> b!825912 m!768525))

(assert (=> b!825710 d!104947))

(declare-fun d!104949 () Bool)

(declare-fun e!459853 () Bool)

(assert (=> d!104949 e!459853))

(declare-fun res!563115 () Bool)

(assert (=> d!104949 (=> (not res!563115) (not e!459853))))

(declare-fun lt!373407 () ListLongMap!8837)

(assert (=> d!104949 (= res!563115 (contains!4179 lt!373407 (_1!5010 lt!373208)))))

(declare-fun lt!373405 () List!15842)

(assert (=> d!104949 (= lt!373407 (ListLongMap!8838 lt!373405))))

(declare-fun lt!373406 () Unit!28307)

(declare-fun lt!373408 () Unit!28307)

(assert (=> d!104949 (= lt!373406 lt!373408)))

(assert (=> d!104949 (= (getValueByKey!405 lt!373405 (_1!5010 lt!373208)) (Some!410 (_2!5010 lt!373208)))))

(assert (=> d!104949 (= lt!373408 (lemmaContainsTupThenGetReturnValue!221 lt!373405 (_1!5010 lt!373208) (_2!5010 lt!373208)))))

(assert (=> d!104949 (= lt!373405 (insertStrictlySorted!259 (toList!4434 lt!373211) (_1!5010 lt!373208) (_2!5010 lt!373208)))))

(assert (=> d!104949 (= (+!1895 lt!373211 lt!373208) lt!373407)))

(declare-fun b!825913 () Bool)

(declare-fun res!563116 () Bool)

(assert (=> b!825913 (=> (not res!563116) (not e!459853))))

(assert (=> b!825913 (= res!563116 (= (getValueByKey!405 (toList!4434 lt!373407) (_1!5010 lt!373208)) (Some!410 (_2!5010 lt!373208))))))

(declare-fun b!825914 () Bool)

(assert (=> b!825914 (= e!459853 (contains!4180 (toList!4434 lt!373407) lt!373208))))

(assert (= (and d!104949 res!563115) b!825913))

(assert (= (and b!825913 res!563116) b!825914))

(declare-fun m!768527 () Bool)

(assert (=> d!104949 m!768527))

(declare-fun m!768529 () Bool)

(assert (=> d!104949 m!768529))

(declare-fun m!768531 () Bool)

(assert (=> d!104949 m!768531))

(declare-fun m!768533 () Bool)

(assert (=> d!104949 m!768533))

(declare-fun m!768535 () Bool)

(assert (=> b!825913 m!768535))

(declare-fun m!768537 () Bool)

(assert (=> b!825914 m!768537))

(assert (=> b!825710 d!104949))

(declare-fun d!104951 () Bool)

(declare-fun e!459854 () Bool)

(assert (=> d!104951 e!459854))

(declare-fun res!563117 () Bool)

(assert (=> d!104951 (=> (not res!563117) (not e!459854))))

(declare-fun lt!373411 () ListLongMap!8837)

(assert (=> d!104951 (= res!563117 (contains!4179 lt!373411 (_1!5010 lt!373201)))))

(declare-fun lt!373409 () List!15842)

(assert (=> d!104951 (= lt!373411 (ListLongMap!8838 lt!373409))))

(declare-fun lt!373410 () Unit!28307)

(declare-fun lt!373412 () Unit!28307)

(assert (=> d!104951 (= lt!373410 lt!373412)))

(assert (=> d!104951 (= (getValueByKey!405 lt!373409 (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201)))))

(assert (=> d!104951 (= lt!373412 (lemmaContainsTupThenGetReturnValue!221 lt!373409 (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104951 (= lt!373409 (insertStrictlySorted!259 (toList!4434 (+!1895 lt!373200 lt!373208)) (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104951 (= (+!1895 (+!1895 lt!373200 lt!373208) lt!373201) lt!373411)))

(declare-fun b!825915 () Bool)

(declare-fun res!563118 () Bool)

(assert (=> b!825915 (=> (not res!563118) (not e!459854))))

(assert (=> b!825915 (= res!563118 (= (getValueByKey!405 (toList!4434 lt!373411) (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201))))))

(declare-fun b!825916 () Bool)

(assert (=> b!825916 (= e!459854 (contains!4180 (toList!4434 lt!373411) lt!373201))))

(assert (= (and d!104951 res!563117) b!825915))

(assert (= (and b!825915 res!563118) b!825916))

(declare-fun m!768539 () Bool)

(assert (=> d!104951 m!768539))

(declare-fun m!768541 () Bool)

(assert (=> d!104951 m!768541))

(declare-fun m!768543 () Bool)

(assert (=> d!104951 m!768543))

(declare-fun m!768545 () Bool)

(assert (=> d!104951 m!768545))

(declare-fun m!768547 () Bool)

(assert (=> b!825915 m!768547))

(declare-fun m!768549 () Bool)

(assert (=> b!825916 m!768549))

(assert (=> b!825710 d!104951))

(declare-fun d!104953 () Bool)

(declare-fun e!459855 () Bool)

(assert (=> d!104953 e!459855))

(declare-fun res!563119 () Bool)

(assert (=> d!104953 (=> (not res!563119) (not e!459855))))

(declare-fun lt!373415 () ListLongMap!8837)

(assert (=> d!104953 (= res!563119 (contains!4179 lt!373415 (_1!5010 lt!373208)))))

(declare-fun lt!373413 () List!15842)

(assert (=> d!104953 (= lt!373415 (ListLongMap!8838 lt!373413))))

(declare-fun lt!373414 () Unit!28307)

(declare-fun lt!373416 () Unit!28307)

(assert (=> d!104953 (= lt!373414 lt!373416)))

(assert (=> d!104953 (= (getValueByKey!405 lt!373413 (_1!5010 lt!373208)) (Some!410 (_2!5010 lt!373208)))))

(assert (=> d!104953 (= lt!373416 (lemmaContainsTupThenGetReturnValue!221 lt!373413 (_1!5010 lt!373208) (_2!5010 lt!373208)))))

(assert (=> d!104953 (= lt!373413 (insertStrictlySorted!259 (toList!4434 lt!373200) (_1!5010 lt!373208) (_2!5010 lt!373208)))))

(assert (=> d!104953 (= (+!1895 lt!373200 lt!373208) lt!373415)))

(declare-fun b!825917 () Bool)

(declare-fun res!563120 () Bool)

(assert (=> b!825917 (=> (not res!563120) (not e!459855))))

(assert (=> b!825917 (= res!563120 (= (getValueByKey!405 (toList!4434 lt!373415) (_1!5010 lt!373208)) (Some!410 (_2!5010 lt!373208))))))

(declare-fun b!825918 () Bool)

(assert (=> b!825918 (= e!459855 (contains!4180 (toList!4434 lt!373415) lt!373208))))

(assert (= (and d!104953 res!563119) b!825917))

(assert (= (and b!825917 res!563120) b!825918))

(declare-fun m!768551 () Bool)

(assert (=> d!104953 m!768551))

(declare-fun m!768553 () Bool)

(assert (=> d!104953 m!768553))

(declare-fun m!768555 () Bool)

(assert (=> d!104953 m!768555))

(declare-fun m!768557 () Bool)

(assert (=> d!104953 m!768557))

(declare-fun m!768559 () Bool)

(assert (=> b!825917 m!768559))

(declare-fun m!768561 () Bool)

(assert (=> b!825918 m!768561))

(assert (=> b!825710 d!104953))

(declare-fun d!104955 () Bool)

(declare-fun e!459856 () Bool)

(assert (=> d!104955 e!459856))

(declare-fun res!563121 () Bool)

(assert (=> d!104955 (=> (not res!563121) (not e!459856))))

(declare-fun lt!373419 () ListLongMap!8837)

(assert (=> d!104955 (= res!563121 (contains!4179 lt!373419 (_1!5010 lt!373209)))))

(declare-fun lt!373417 () List!15842)

(assert (=> d!104955 (= lt!373419 (ListLongMap!8838 lt!373417))))

(declare-fun lt!373418 () Unit!28307)

(declare-fun lt!373420 () Unit!28307)

(assert (=> d!104955 (= lt!373418 lt!373420)))

(assert (=> d!104955 (= (getValueByKey!405 lt!373417 (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209)))))

(assert (=> d!104955 (= lt!373420 (lemmaContainsTupThenGetReturnValue!221 lt!373417 (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104955 (= lt!373417 (insertStrictlySorted!259 (toList!4434 lt!373211) (_1!5010 lt!373209) (_2!5010 lt!373209)))))

(assert (=> d!104955 (= (+!1895 lt!373211 lt!373209) lt!373419)))

(declare-fun b!825919 () Bool)

(declare-fun res!563122 () Bool)

(assert (=> b!825919 (=> (not res!563122) (not e!459856))))

(assert (=> b!825919 (= res!563122 (= (getValueByKey!405 (toList!4434 lt!373419) (_1!5010 lt!373209)) (Some!410 (_2!5010 lt!373209))))))

(declare-fun b!825920 () Bool)

(assert (=> b!825920 (= e!459856 (contains!4180 (toList!4434 lt!373419) lt!373209))))

(assert (= (and d!104955 res!563121) b!825919))

(assert (= (and b!825919 res!563122) b!825920))

(declare-fun m!768563 () Bool)

(assert (=> d!104955 m!768563))

(declare-fun m!768565 () Bool)

(assert (=> d!104955 m!768565))

(declare-fun m!768567 () Bool)

(assert (=> d!104955 m!768567))

(declare-fun m!768569 () Bool)

(assert (=> d!104955 m!768569))

(declare-fun m!768571 () Bool)

(assert (=> b!825919 m!768571))

(declare-fun m!768573 () Bool)

(assert (=> b!825920 m!768573))

(assert (=> b!825710 d!104955))

(declare-fun b!825929 () Bool)

(declare-fun e!459863 () Bool)

(declare-fun call!35908 () Bool)

(assert (=> b!825929 (= e!459863 call!35908)))

(declare-fun bm!35905 () Bool)

(assert (=> bm!35905 (= call!35908 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!104957 () Bool)

(declare-fun res!563128 () Bool)

(declare-fun e!459864 () Bool)

(assert (=> d!104957 (=> res!563128 e!459864)))

(assert (=> d!104957 (= res!563128 (bvsge #b00000000000000000000000000000000 (size!22537 _keys!976)))))

(assert (=> d!104957 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!459864)))

(declare-fun b!825930 () Bool)

(declare-fun e!459865 () Bool)

(assert (=> b!825930 (= e!459863 e!459865)))

(declare-fun lt!373427 () (_ BitVec 64))

(assert (=> b!825930 (= lt!373427 (select (arr!22116 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!373428 () Unit!28307)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46148 (_ BitVec 64) (_ BitVec 32)) Unit!28307)

(assert (=> b!825930 (= lt!373428 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!373427 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!825930 (arrayContainsKey!0 _keys!976 lt!373427 #b00000000000000000000000000000000)))

(declare-fun lt!373429 () Unit!28307)

(assert (=> b!825930 (= lt!373429 lt!373428)))

(declare-fun res!563127 () Bool)

(declare-datatypes ((SeekEntryResult!8723 0))(
  ( (MissingZero!8723 (index!37262 (_ BitVec 32))) (Found!8723 (index!37263 (_ BitVec 32))) (Intermediate!8723 (undefined!9535 Bool) (index!37264 (_ BitVec 32)) (x!69699 (_ BitVec 32))) (Undefined!8723) (MissingVacant!8723 (index!37265 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46148 (_ BitVec 32)) SeekEntryResult!8723)

(assert (=> b!825930 (= res!563127 (= (seekEntryOrOpen!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8723 #b00000000000000000000000000000000)))))

(assert (=> b!825930 (=> (not res!563127) (not e!459865))))

(declare-fun b!825931 () Bool)

(assert (=> b!825931 (= e!459865 call!35908)))

(declare-fun b!825932 () Bool)

(assert (=> b!825932 (= e!459864 e!459863)))

(declare-fun c!89391 () Bool)

(assert (=> b!825932 (= c!89391 (validKeyInArray!0 (select (arr!22116 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104957 (not res!563128)) b!825932))

(assert (= (and b!825932 c!89391) b!825930))

(assert (= (and b!825932 (not c!89391)) b!825929))

(assert (= (and b!825930 res!563127) b!825931))

(assert (= (or b!825931 b!825929) bm!35905))

(declare-fun m!768575 () Bool)

(assert (=> bm!35905 m!768575))

(assert (=> b!825930 m!768323))

(declare-fun m!768577 () Bool)

(assert (=> b!825930 m!768577))

(declare-fun m!768579 () Bool)

(assert (=> b!825930 m!768579))

(assert (=> b!825930 m!768323))

(declare-fun m!768581 () Bool)

(assert (=> b!825930 m!768581))

(assert (=> b!825932 m!768323))

(assert (=> b!825932 m!768323))

(assert (=> b!825932 m!768329))

(assert (=> b!825714 d!104957))

(declare-fun d!104959 () Bool)

(declare-fun e!459866 () Bool)

(assert (=> d!104959 e!459866))

(declare-fun res!563129 () Bool)

(assert (=> d!104959 (=> (not res!563129) (not e!459866))))

(declare-fun lt!373432 () ListLongMap!8837)

(assert (=> d!104959 (= res!563129 (contains!4179 lt!373432 (_1!5010 lt!373201)))))

(declare-fun lt!373430 () List!15842)

(assert (=> d!104959 (= lt!373432 (ListLongMap!8838 lt!373430))))

(declare-fun lt!373431 () Unit!28307)

(declare-fun lt!373433 () Unit!28307)

(assert (=> d!104959 (= lt!373431 lt!373433)))

(assert (=> d!104959 (= (getValueByKey!405 lt!373430 (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201)))))

(assert (=> d!104959 (= lt!373433 (lemmaContainsTupThenGetReturnValue!221 lt!373430 (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104959 (= lt!373430 (insertStrictlySorted!259 (toList!4434 (+!1895 lt!373204 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5010 lt!373201) (_2!5010 lt!373201)))))

(assert (=> d!104959 (= (+!1895 (+!1895 lt!373204 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373201) lt!373432)))

(declare-fun b!825933 () Bool)

(declare-fun res!563130 () Bool)

(assert (=> b!825933 (=> (not res!563130) (not e!459866))))

(assert (=> b!825933 (= res!563130 (= (getValueByKey!405 (toList!4434 lt!373432) (_1!5010 lt!373201)) (Some!410 (_2!5010 lt!373201))))))

(declare-fun b!825934 () Bool)

(assert (=> b!825934 (= e!459866 (contains!4180 (toList!4434 lt!373432) lt!373201))))

(assert (= (and d!104959 res!563129) b!825933))

(assert (= (and b!825933 res!563130) b!825934))

(declare-fun m!768583 () Bool)

(assert (=> d!104959 m!768583))

(declare-fun m!768585 () Bool)

(assert (=> d!104959 m!768585))

(declare-fun m!768587 () Bool)

(assert (=> d!104959 m!768587))

(declare-fun m!768589 () Bool)

(assert (=> d!104959 m!768589))

(declare-fun m!768591 () Bool)

(assert (=> b!825933 m!768591))

(declare-fun m!768593 () Bool)

(assert (=> b!825934 m!768593))

(assert (=> b!825705 d!104959))

(declare-fun d!104961 () Bool)

(declare-fun e!459867 () Bool)

(assert (=> d!104961 e!459867))

(declare-fun res!563131 () Bool)

(assert (=> d!104961 (=> (not res!563131) (not e!459867))))

(declare-fun lt!373436 () ListLongMap!8837)

(assert (=> d!104961 (= res!563131 (contains!4179 lt!373436 (_1!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!373434 () List!15842)

(assert (=> d!104961 (= lt!373436 (ListLongMap!8838 lt!373434))))

(declare-fun lt!373435 () Unit!28307)

(declare-fun lt!373437 () Unit!28307)

(assert (=> d!104961 (= lt!373435 lt!373437)))

(assert (=> d!104961 (= (getValueByKey!405 lt!373434 (_1!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!410 (_2!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104961 (= lt!373437 (lemmaContainsTupThenGetReturnValue!221 lt!373434 (_1!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104961 (= lt!373434 (insertStrictlySorted!259 (toList!4434 lt!373204) (_1!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104961 (= (+!1895 lt!373204 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373436)))

(declare-fun b!825935 () Bool)

(declare-fun res!563132 () Bool)

(assert (=> b!825935 (=> (not res!563132) (not e!459867))))

(assert (=> b!825935 (= res!563132 (= (getValueByKey!405 (toList!4434 lt!373436) (_1!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!410 (_2!5010 (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!825936 () Bool)

(assert (=> b!825936 (= e!459867 (contains!4180 (toList!4434 lt!373436) (tuple2!10001 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!104961 res!563131) b!825935))

(assert (= (and b!825935 res!563132) b!825936))

(declare-fun m!768595 () Bool)

(assert (=> d!104961 m!768595))

(declare-fun m!768597 () Bool)

(assert (=> d!104961 m!768597))

(declare-fun m!768599 () Bool)

(assert (=> d!104961 m!768599))

(declare-fun m!768601 () Bool)

(assert (=> d!104961 m!768601))

(declare-fun m!768603 () Bool)

(assert (=> b!825935 m!768603))

(declare-fun m!768605 () Bool)

(assert (=> b!825936 m!768605))

(assert (=> b!825705 d!104961))

(declare-fun condMapEmpty!24133 () Bool)

(declare-fun mapDefault!24133 () ValueCell!7086)

(assert (=> mapNonEmpty!24127 (= condMapEmpty!24133 (= mapRest!24127 ((as const (Array (_ BitVec 32) ValueCell!7086)) mapDefault!24133)))))

(declare-fun e!459873 () Bool)

(declare-fun mapRes!24133 () Bool)

(assert (=> mapNonEmpty!24127 (= tp!46635 (and e!459873 mapRes!24133))))

(declare-fun mapNonEmpty!24133 () Bool)

(declare-fun tp!46645 () Bool)

(declare-fun e!459872 () Bool)

(assert (=> mapNonEmpty!24133 (= mapRes!24133 (and tp!46645 e!459872))))

(declare-fun mapKey!24133 () (_ BitVec 32))

(declare-fun mapValue!24133 () ValueCell!7086)

(declare-fun mapRest!24133 () (Array (_ BitVec 32) ValueCell!7086))

(assert (=> mapNonEmpty!24133 (= mapRest!24127 (store mapRest!24133 mapKey!24133 mapValue!24133))))

(declare-fun b!825943 () Bool)

(assert (=> b!825943 (= e!459872 tp_is_empty!15003)))

(declare-fun b!825944 () Bool)

(assert (=> b!825944 (= e!459873 tp_is_empty!15003)))

(declare-fun mapIsEmpty!24133 () Bool)

(assert (=> mapIsEmpty!24133 mapRes!24133))

(assert (= (and mapNonEmpty!24127 condMapEmpty!24133) mapIsEmpty!24133))

(assert (= (and mapNonEmpty!24127 (not condMapEmpty!24133)) mapNonEmpty!24133))

(assert (= (and mapNonEmpty!24133 ((_ is ValueCellFull!7086) mapValue!24133)) b!825943))

(assert (= (and mapNonEmpty!24127 ((_ is ValueCellFull!7086) mapDefault!24133)) b!825944))

(declare-fun m!768607 () Bool)

(assert (=> mapNonEmpty!24133 m!768607))

(declare-fun b_lambda!11157 () Bool)

(assert (= b_lambda!11149 (or (and start!71130 b_free!13293) b_lambda!11157)))

(declare-fun b_lambda!11159 () Bool)

(assert (= b_lambda!11147 (or (and start!71130 b_free!13293) b_lambda!11159)))

(declare-fun b_lambda!11161 () Bool)

(assert (= b_lambda!11153 (or (and start!71130 b_free!13293) b_lambda!11161)))

(declare-fun b_lambda!11163 () Bool)

(assert (= b_lambda!11145 (or (and start!71130 b_free!13293) b_lambda!11163)))

(declare-fun b_lambda!11165 () Bool)

(assert (= b_lambda!11155 (or (and start!71130 b_free!13293) b_lambda!11165)))

(declare-fun b_lambda!11167 () Bool)

(assert (= b_lambda!11151 (or (and start!71130 b_free!13293) b_lambda!11167)))

(check-sat (not b!825913) (not b!825805) (not b!825936) (not b!825935) (not b!825870) (not b!825914) (not b!825813) (not d!104941) (not b!825809) (not b!825816) (not bm!35905) (not d!104917) (not b_lambda!11161) (not mapNonEmpty!24133) (not b!825752) (not d!104961) (not b!825872) (not bm!35900) (not b!825909) (not b_lambda!11163) (not b!825814) (not b!825932) (not b!825904) (not b!825907) (not b!825882) (not b!825795) (not b!825916) (not b!825902) (not b!825821) (not d!104927) (not b!825934) (not d!104947) (not b!825911) (not d!104937) (not bm!35899) (not b!825918) (not b!825769) b_and!22239 (not b!825881) (not bm!35873) (not b!825915) (not bm!35870) (not b!825893) (not b!825875) (not b!825933) (not b!825887) (not d!104943) (not d!104953) (not b!825919) (not b!825753) (not b!825908) (not b!825799) (not b!825917) (not bm!35891) (not bm!35874) (not d!104919) (not bm!35892) (not b!825903) (not d!104923) (not b!825905) (not b_lambda!11165) (not d!104959) (not b!825818) (not b!825910) (not b!825891) (not b_lambda!11157) (not b!825802) (not b!825803) (not b!825930) (not d!104949) (not b!825884) (not b!825822) (not b!825883) (not bm!35893) (not d!104935) (not b!825754) (not b!825819) (not b!825817) (not b_next!13293) (not b!825896) (not bm!35895) (not b!825800) (not b_lambda!11159) (not b!825912) (not d!104925) (not b!825806) (not b!825804) (not b!825820) (not b!825768) (not b_lambda!11167) (not d!104945) (not b!825755) (not bm!35898) (not bm!35902) (not b!825920) (not b!825866) (not d!104955) (not d!104951) tp_is_empty!15003 (not d!104939) (not b!825767))
(check-sat b_and!22239 (not b_next!13293))
