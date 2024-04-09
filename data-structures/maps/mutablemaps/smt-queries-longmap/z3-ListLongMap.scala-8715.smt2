; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105778 () Bool)

(assert start!105778)

(declare-fun b_free!27327 () Bool)

(declare-fun b_next!27327 () Bool)

(assert (=> start!105778 (= b_free!27327 (not b_next!27327))))

(declare-fun tp!95507 () Bool)

(declare-fun b_and!45221 () Bool)

(assert (=> start!105778 (= tp!95507 b_and!45221)))

(declare-fun b!1259542 () Bool)

(declare-fun e!716614 () Bool)

(declare-fun e!716619 () Bool)

(assert (=> b!1259542 (= e!716614 e!716619)))

(declare-fun res!839538 () Bool)

(assert (=> b!1259542 (=> res!839538 e!716619)))

(declare-datatypes ((V!48337 0))(
  ( (V!48338 (val!16177 Int)) )
))
(declare-datatypes ((tuple2!21076 0))(
  ( (tuple2!21077 (_1!10548 (_ BitVec 64)) (_2!10548 V!48337)) )
))
(declare-datatypes ((List!28302 0))(
  ( (Nil!28299) (Cons!28298 (h!29507 tuple2!21076) (t!41804 List!28302)) )
))
(declare-datatypes ((ListLongMap!18961 0))(
  ( (ListLongMap!18962 (toList!9496 List!28302)) )
))
(declare-fun lt!570222 () ListLongMap!18961)

(declare-fun lt!570221 () ListLongMap!18961)

(declare-fun -!2126 (ListLongMap!18961 (_ BitVec 64)) ListLongMap!18961)

(assert (=> b!1259542 (= res!839538 (not (= (-!2126 lt!570222 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570221)))))

(declare-fun lt!570219 () ListLongMap!18961)

(declare-fun lt!570223 () ListLongMap!18961)

(assert (=> b!1259542 (= (-!2126 lt!570219 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570223)))

(declare-datatypes ((Unit!41959 0))(
  ( (Unit!41960) )
))
(declare-fun lt!570225 () Unit!41959)

(declare-fun minValueBefore!43 () V!48337)

(declare-fun addThenRemoveForNewKeyIsSame!351 (ListLongMap!18961 (_ BitVec 64) V!48337) Unit!41959)

(assert (=> b!1259542 (= lt!570225 (addThenRemoveForNewKeyIsSame!351 lt!570223 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716621 () Bool)

(assert (=> b!1259542 e!716621))

(declare-fun res!839543 () Bool)

(assert (=> b!1259542 (=> (not res!839543) (not e!716621))))

(assert (=> b!1259542 (= res!839543 (= lt!570222 lt!570219))))

(declare-fun +!4193 (ListLongMap!18961 tuple2!21076) ListLongMap!18961)

(assert (=> b!1259542 (= lt!570219 (+!4193 lt!570223 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570224 () ListLongMap!18961)

(declare-fun lt!570220 () tuple2!21076)

(assert (=> b!1259542 (= lt!570223 (+!4193 lt!570224 lt!570220))))

(declare-fun zeroValue!871 () V!48337)

(assert (=> b!1259542 (= lt!570220 (tuple2!21077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48337)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82071 0))(
  ( (array!82072 (arr!39586 (Array (_ BitVec 32) (_ BitVec 64))) (size!40123 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82071)

(declare-datatypes ((ValueCell!15351 0))(
  ( (ValueCellFull!15351 (v!18879 V!48337)) (EmptyCell!15351) )
))
(declare-datatypes ((array!82073 0))(
  ( (array!82074 (arr!39587 (Array (_ BitVec 32) ValueCell!15351)) (size!40124 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82073)

(declare-fun getCurrentListMap!4630 (array!82071 array!82073 (_ BitVec 32) (_ BitVec 32) V!48337 V!48337 (_ BitVec 32) Int) ListLongMap!18961)

(assert (=> b!1259542 (= lt!570221 (getCurrentListMap!4630 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259542 (= lt!570222 (getCurrentListMap!4630 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259543 () Bool)

(declare-fun e!716617 () Bool)

(assert (=> b!1259543 (= e!716617 (not e!716614))))

(declare-fun res!839539 () Bool)

(assert (=> b!1259543 (=> res!839539 e!716614)))

(assert (=> b!1259543 (= res!839539 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!570226 () ListLongMap!18961)

(assert (=> b!1259543 (= lt!570224 lt!570226)))

(declare-fun lt!570218 () Unit!41959)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1160 (array!82071 array!82073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48337 V!48337 V!48337 V!48337 (_ BitVec 32) Int) Unit!41959)

(assert (=> b!1259543 (= lt!570218 (lemmaNoChangeToArrayThenSameMapNoExtras!1160 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5842 (array!82071 array!82073 (_ BitVec 32) (_ BitVec 32) V!48337 V!48337 (_ BitVec 32) Int) ListLongMap!18961)

(assert (=> b!1259543 (= lt!570226 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259543 (= lt!570224 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259544 () Bool)

(declare-fun res!839540 () Bool)

(assert (=> b!1259544 (=> (not res!839540) (not e!716617))))

(declare-datatypes ((List!28303 0))(
  ( (Nil!28300) (Cons!28299 (h!29508 (_ BitVec 64)) (t!41805 List!28303)) )
))
(declare-fun arrayNoDuplicates!0 (array!82071 (_ BitVec 32) List!28303) Bool)

(assert (=> b!1259544 (= res!839540 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28300))))

(declare-fun b!1259545 () Bool)

(declare-fun res!839544 () Bool)

(assert (=> b!1259545 (=> (not res!839544) (not e!716617))))

(assert (=> b!1259545 (= res!839544 (and (= (size!40124 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40123 _keys!1118) (size!40124 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259546 () Bool)

(assert (=> b!1259546 (= e!716621 (= lt!570221 (+!4193 lt!570226 lt!570220)))))

(declare-fun b!1259547 () Bool)

(declare-fun res!839542 () Bool)

(assert (=> b!1259547 (=> (not res!839542) (not e!716617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82071 (_ BitVec 32)) Bool)

(assert (=> b!1259547 (= res!839542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!50140 () Bool)

(declare-fun mapRes!50140 () Bool)

(assert (=> mapIsEmpty!50140 mapRes!50140))

(declare-fun res!839541 () Bool)

(assert (=> start!105778 (=> (not res!839541) (not e!716617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105778 (= res!839541 (validMask!0 mask!1466))))

(assert (=> start!105778 e!716617))

(assert (=> start!105778 true))

(assert (=> start!105778 tp!95507))

(declare-fun tp_is_empty!32229 () Bool)

(assert (=> start!105778 tp_is_empty!32229))

(declare-fun array_inv!30093 (array!82071) Bool)

(assert (=> start!105778 (array_inv!30093 _keys!1118)))

(declare-fun e!716616 () Bool)

(declare-fun array_inv!30094 (array!82073) Bool)

(assert (=> start!105778 (and (array_inv!30094 _values!914) e!716616)))

(declare-fun mapNonEmpty!50140 () Bool)

(declare-fun tp!95508 () Bool)

(declare-fun e!716615 () Bool)

(assert (=> mapNonEmpty!50140 (= mapRes!50140 (and tp!95508 e!716615))))

(declare-fun mapKey!50140 () (_ BitVec 32))

(declare-fun mapRest!50140 () (Array (_ BitVec 32) ValueCell!15351))

(declare-fun mapValue!50140 () ValueCell!15351)

(assert (=> mapNonEmpty!50140 (= (arr!39587 _values!914) (store mapRest!50140 mapKey!50140 mapValue!50140))))

(declare-fun b!1259548 () Bool)

(assert (=> b!1259548 (= e!716615 tp_is_empty!32229)))

(declare-fun b!1259549 () Bool)

(assert (=> b!1259549 (= e!716619 (bvsle #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259550 () Bool)

(declare-fun e!716620 () Bool)

(assert (=> b!1259550 (= e!716620 tp_is_empty!32229)))

(declare-fun b!1259551 () Bool)

(assert (=> b!1259551 (= e!716616 (and e!716620 mapRes!50140))))

(declare-fun condMapEmpty!50140 () Bool)

(declare-fun mapDefault!50140 () ValueCell!15351)

(assert (=> b!1259551 (= condMapEmpty!50140 (= (arr!39587 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15351)) mapDefault!50140)))))

(assert (= (and start!105778 res!839541) b!1259545))

(assert (= (and b!1259545 res!839544) b!1259547))

(assert (= (and b!1259547 res!839542) b!1259544))

(assert (= (and b!1259544 res!839540) b!1259543))

(assert (= (and b!1259543 (not res!839539)) b!1259542))

(assert (= (and b!1259542 res!839543) b!1259546))

(assert (= (and b!1259542 (not res!839538)) b!1259549))

(assert (= (and b!1259551 condMapEmpty!50140) mapIsEmpty!50140))

(assert (= (and b!1259551 (not condMapEmpty!50140)) mapNonEmpty!50140))

(get-info :version)

(assert (= (and mapNonEmpty!50140 ((_ is ValueCellFull!15351) mapValue!50140)) b!1259548))

(assert (= (and b!1259551 ((_ is ValueCellFull!15351) mapDefault!50140)) b!1259550))

(assert (= start!105778 b!1259551))

(declare-fun m!1160107 () Bool)

(assert (=> b!1259544 m!1160107))

(declare-fun m!1160109 () Bool)

(assert (=> b!1259542 m!1160109))

(declare-fun m!1160111 () Bool)

(assert (=> b!1259542 m!1160111))

(declare-fun m!1160113 () Bool)

(assert (=> b!1259542 m!1160113))

(declare-fun m!1160115 () Bool)

(assert (=> b!1259542 m!1160115))

(declare-fun m!1160117 () Bool)

(assert (=> b!1259542 m!1160117))

(declare-fun m!1160119 () Bool)

(assert (=> b!1259542 m!1160119))

(declare-fun m!1160121 () Bool)

(assert (=> b!1259542 m!1160121))

(declare-fun m!1160123 () Bool)

(assert (=> b!1259547 m!1160123))

(declare-fun m!1160125 () Bool)

(assert (=> b!1259543 m!1160125))

(declare-fun m!1160127 () Bool)

(assert (=> b!1259543 m!1160127))

(declare-fun m!1160129 () Bool)

(assert (=> b!1259543 m!1160129))

(declare-fun m!1160131 () Bool)

(assert (=> mapNonEmpty!50140 m!1160131))

(declare-fun m!1160133 () Bool)

(assert (=> b!1259546 m!1160133))

(declare-fun m!1160135 () Bool)

(assert (=> start!105778 m!1160135))

(declare-fun m!1160137 () Bool)

(assert (=> start!105778 m!1160137))

(declare-fun m!1160139 () Bool)

(assert (=> start!105778 m!1160139))

(check-sat (not mapNonEmpty!50140) b_and!45221 tp_is_empty!32229 (not b!1259547) (not b!1259546) (not b_next!27327) (not b!1259544) (not b!1259543) (not b!1259542) (not start!105778))
(check-sat b_and!45221 (not b_next!27327))
(get-model)

(declare-fun b!1259592 () Bool)

(declare-fun e!716656 () Bool)

(declare-fun call!61879 () Bool)

(assert (=> b!1259592 (= e!716656 call!61879)))

(declare-fun b!1259593 () Bool)

(declare-fun e!716655 () Bool)

(declare-fun contains!7596 (List!28303 (_ BitVec 64)) Bool)

(assert (=> b!1259593 (= e!716655 (contains!7596 Nil!28300 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259594 () Bool)

(assert (=> b!1259594 (= e!716656 call!61879)))

(declare-fun b!1259595 () Bool)

(declare-fun e!716657 () Bool)

(assert (=> b!1259595 (= e!716657 e!716656)))

(declare-fun c!122502 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1259595 (= c!122502 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138259 () Bool)

(declare-fun res!839573 () Bool)

(declare-fun e!716654 () Bool)

(assert (=> d!138259 (=> res!839573 e!716654)))

(assert (=> d!138259 (= res!839573 (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138259 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28300) e!716654)))

(declare-fun b!1259596 () Bool)

(assert (=> b!1259596 (= e!716654 e!716657)))

(declare-fun res!839572 () Bool)

(assert (=> b!1259596 (=> (not res!839572) (not e!716657))))

(assert (=> b!1259596 (= res!839572 (not e!716655))))

(declare-fun res!839574 () Bool)

(assert (=> b!1259596 (=> (not res!839574) (not e!716655))))

(assert (=> b!1259596 (= res!839574 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun bm!61876 () Bool)

(assert (=> bm!61876 (= call!61879 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122502 (Cons!28299 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000) Nil!28300) Nil!28300)))))

(assert (= (and d!138259 (not res!839573)) b!1259596))

(assert (= (and b!1259596 res!839574) b!1259593))

(assert (= (and b!1259596 res!839572) b!1259595))

(assert (= (and b!1259595 c!122502) b!1259594))

(assert (= (and b!1259595 (not c!122502)) b!1259592))

(assert (= (or b!1259594 b!1259592) bm!61876))

(declare-fun m!1160175 () Bool)

(assert (=> b!1259593 m!1160175))

(assert (=> b!1259593 m!1160175))

(declare-fun m!1160177 () Bool)

(assert (=> b!1259593 m!1160177))

(assert (=> b!1259595 m!1160175))

(assert (=> b!1259595 m!1160175))

(declare-fun m!1160179 () Bool)

(assert (=> b!1259595 m!1160179))

(assert (=> b!1259596 m!1160175))

(assert (=> b!1259596 m!1160175))

(assert (=> b!1259596 m!1160179))

(assert (=> bm!61876 m!1160175))

(declare-fun m!1160181 () Bool)

(assert (=> bm!61876 m!1160181))

(assert (=> b!1259544 d!138259))

(declare-fun d!138261 () Bool)

(declare-fun e!716660 () Bool)

(assert (=> d!138261 e!716660))

(declare-fun res!839579 () Bool)

(assert (=> d!138261 (=> (not res!839579) (not e!716660))))

(declare-fun lt!570263 () ListLongMap!18961)

(declare-fun contains!7597 (ListLongMap!18961 (_ BitVec 64)) Bool)

(assert (=> d!138261 (= res!839579 (contains!7597 lt!570263 (_1!10548 lt!570220)))))

(declare-fun lt!570265 () List!28302)

(assert (=> d!138261 (= lt!570263 (ListLongMap!18962 lt!570265))))

(declare-fun lt!570264 () Unit!41959)

(declare-fun lt!570262 () Unit!41959)

(assert (=> d!138261 (= lt!570264 lt!570262)))

(declare-datatypes ((Option!712 0))(
  ( (Some!711 (v!18881 V!48337)) (None!710) )
))
(declare-fun getValueByKey!661 (List!28302 (_ BitVec 64)) Option!712)

(assert (=> d!138261 (= (getValueByKey!661 lt!570265 (_1!10548 lt!570220)) (Some!711 (_2!10548 lt!570220)))))

(declare-fun lemmaContainsTupThenGetReturnValue!332 (List!28302 (_ BitVec 64) V!48337) Unit!41959)

(assert (=> d!138261 (= lt!570262 (lemmaContainsTupThenGetReturnValue!332 lt!570265 (_1!10548 lt!570220) (_2!10548 lt!570220)))))

(declare-fun insertStrictlySorted!445 (List!28302 (_ BitVec 64) V!48337) List!28302)

(assert (=> d!138261 (= lt!570265 (insertStrictlySorted!445 (toList!9496 lt!570226) (_1!10548 lt!570220) (_2!10548 lt!570220)))))

(assert (=> d!138261 (= (+!4193 lt!570226 lt!570220) lt!570263)))

(declare-fun b!1259601 () Bool)

(declare-fun res!839580 () Bool)

(assert (=> b!1259601 (=> (not res!839580) (not e!716660))))

(assert (=> b!1259601 (= res!839580 (= (getValueByKey!661 (toList!9496 lt!570263) (_1!10548 lt!570220)) (Some!711 (_2!10548 lt!570220))))))

(declare-fun b!1259602 () Bool)

(declare-fun contains!7598 (List!28302 tuple2!21076) Bool)

(assert (=> b!1259602 (= e!716660 (contains!7598 (toList!9496 lt!570263) lt!570220))))

(assert (= (and d!138261 res!839579) b!1259601))

(assert (= (and b!1259601 res!839580) b!1259602))

(declare-fun m!1160183 () Bool)

(assert (=> d!138261 m!1160183))

(declare-fun m!1160185 () Bool)

(assert (=> d!138261 m!1160185))

(declare-fun m!1160187 () Bool)

(assert (=> d!138261 m!1160187))

(declare-fun m!1160189 () Bool)

(assert (=> d!138261 m!1160189))

(declare-fun m!1160191 () Bool)

(assert (=> b!1259601 m!1160191))

(declare-fun m!1160193 () Bool)

(assert (=> b!1259602 m!1160193))

(assert (=> b!1259546 d!138261))

(declare-fun d!138263 () Bool)

(assert (=> d!138263 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!105778 d!138263))

(declare-fun d!138265 () Bool)

(assert (=> d!138265 (= (array_inv!30093 _keys!1118) (bvsge (size!40123 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!105778 d!138265))

(declare-fun d!138267 () Bool)

(assert (=> d!138267 (= (array_inv!30094 _values!914) (bvsge (size!40124 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!105778 d!138267))

(declare-fun b!1259611 () Bool)

(declare-fun e!716667 () Bool)

(declare-fun e!716668 () Bool)

(assert (=> b!1259611 (= e!716667 e!716668)))

(declare-fun lt!570274 () (_ BitVec 64))

(assert (=> b!1259611 (= lt!570274 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570273 () Unit!41959)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82071 (_ BitVec 64) (_ BitVec 32)) Unit!41959)

(assert (=> b!1259611 (= lt!570273 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!570274 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1259611 (arrayContainsKey!0 _keys!1118 lt!570274 #b00000000000000000000000000000000)))

(declare-fun lt!570272 () Unit!41959)

(assert (=> b!1259611 (= lt!570272 lt!570273)))

(declare-fun res!839586 () Bool)

(declare-datatypes ((SeekEntryResult!9967 0))(
  ( (MissingZero!9967 (index!42238 (_ BitVec 32))) (Found!9967 (index!42239 (_ BitVec 32))) (Intermediate!9967 (undefined!10779 Bool) (index!42240 (_ BitVec 32)) (x!110969 (_ BitVec 32))) (Undefined!9967) (MissingVacant!9967 (index!42241 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82071 (_ BitVec 32)) SeekEntryResult!9967)

(assert (=> b!1259611 (= res!839586 (= (seekEntryOrOpen!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9967 #b00000000000000000000000000000000)))))

(assert (=> b!1259611 (=> (not res!839586) (not e!716668))))

(declare-fun bm!61879 () Bool)

(declare-fun call!61882 () Bool)

(assert (=> bm!61879 (= call!61882 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1259613 () Bool)

(assert (=> b!1259613 (= e!716668 call!61882)))

(declare-fun b!1259614 () Bool)

(assert (=> b!1259614 (= e!716667 call!61882)))

(declare-fun b!1259612 () Bool)

(declare-fun e!716669 () Bool)

(assert (=> b!1259612 (= e!716669 e!716667)))

(declare-fun c!122505 () Bool)

(assert (=> b!1259612 (= c!122505 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun d!138269 () Bool)

(declare-fun res!839585 () Bool)

(assert (=> d!138269 (=> res!839585 e!716669)))

(assert (=> d!138269 (= res!839585 (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138269 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!716669)))

(assert (= (and d!138269 (not res!839585)) b!1259612))

(assert (= (and b!1259612 c!122505) b!1259611))

(assert (= (and b!1259612 (not c!122505)) b!1259614))

(assert (= (and b!1259611 res!839586) b!1259613))

(assert (= (or b!1259613 b!1259614) bm!61879))

(assert (=> b!1259611 m!1160175))

(declare-fun m!1160195 () Bool)

(assert (=> b!1259611 m!1160195))

(declare-fun m!1160197 () Bool)

(assert (=> b!1259611 m!1160197))

(assert (=> b!1259611 m!1160175))

(declare-fun m!1160199 () Bool)

(assert (=> b!1259611 m!1160199))

(declare-fun m!1160201 () Bool)

(assert (=> bm!61879 m!1160201))

(assert (=> b!1259612 m!1160175))

(assert (=> b!1259612 m!1160175))

(assert (=> b!1259612 m!1160179))

(assert (=> b!1259547 d!138269))

(declare-fun d!138271 () Bool)

(declare-fun lt!570277 () ListLongMap!18961)

(assert (=> d!138271 (not (contains!7597 lt!570277 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!143 (List!28302 (_ BitVec 64)) List!28302)

(assert (=> d!138271 (= lt!570277 (ListLongMap!18962 (removeStrictlySorted!143 (toList!9496 lt!570219) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138271 (= (-!2126 lt!570219 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570277)))

(declare-fun bs!35631 () Bool)

(assert (= bs!35631 d!138271))

(declare-fun m!1160203 () Bool)

(assert (=> bs!35631 m!1160203))

(declare-fun m!1160205 () Bool)

(assert (=> bs!35631 m!1160205))

(assert (=> b!1259542 d!138271))

(declare-fun bm!61894 () Bool)

(declare-fun call!61897 () ListLongMap!18961)

(declare-fun call!61903 () ListLongMap!18961)

(assert (=> bm!61894 (= call!61897 call!61903)))

(declare-fun b!1259657 () Bool)

(declare-fun e!716708 () ListLongMap!18961)

(assert (=> b!1259657 (= e!716708 (+!4193 call!61903 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43)))))

(declare-fun bm!61896 () Bool)

(declare-fun call!61900 () Bool)

(declare-fun lt!570335 () ListLongMap!18961)

(assert (=> bm!61896 (= call!61900 (contains!7597 lt!570335 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1259658 () Bool)

(declare-fun e!716704 () Unit!41959)

(declare-fun Unit!41963 () Unit!41959)

(assert (=> b!1259658 (= e!716704 Unit!41963)))

(declare-fun bm!61897 () Bool)

(declare-fun call!61901 () ListLongMap!18961)

(declare-fun call!61898 () ListLongMap!18961)

(assert (=> bm!61897 (= call!61901 call!61898)))

(declare-fun b!1259659 () Bool)

(declare-fun e!716698 () Bool)

(declare-fun e!716699 () Bool)

(assert (=> b!1259659 (= e!716698 e!716699)))

(declare-fun res!839609 () Bool)

(declare-fun call!61902 () Bool)

(assert (=> b!1259659 (= res!839609 call!61902)))

(assert (=> b!1259659 (=> (not res!839609) (not e!716699))))

(declare-fun b!1259660 () Bool)

(declare-fun e!716706 () Bool)

(assert (=> b!1259660 (= e!716706 (not call!61900))))

(declare-fun bm!61898 () Bool)

(declare-fun c!122521 () Bool)

(declare-fun c!122519 () Bool)

(declare-fun call!61899 () ListLongMap!18961)

(assert (=> bm!61898 (= call!61903 (+!4193 (ite c!122521 call!61898 (ite c!122519 call!61901 call!61899)) (ite (or c!122521 c!122519) (tuple2!21077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!43))))))

(declare-fun bm!61899 () Bool)

(assert (=> bm!61899 (= call!61899 call!61901)))

(declare-fun b!1259661 () Bool)

(assert (=> b!1259661 (= e!716698 (not call!61902))))

(declare-fun b!1259662 () Bool)

(declare-fun c!122518 () Bool)

(assert (=> b!1259662 (= c!122518 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!716702 () ListLongMap!18961)

(declare-fun e!716701 () ListLongMap!18961)

(assert (=> b!1259662 (= e!716702 e!716701)))

(declare-fun b!1259663 () Bool)

(declare-fun e!716697 () Bool)

(assert (=> b!1259663 (= e!716697 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259664 () Bool)

(assert (=> b!1259664 (= e!716701 call!61897)))

(declare-fun b!1259665 () Bool)

(declare-fun apply!1027 (ListLongMap!18961 (_ BitVec 64)) V!48337)

(assert (=> b!1259665 (= e!716699 (= (apply!1027 lt!570335 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!61895 () Bool)

(assert (=> bm!61895 (= call!61898 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun d!138273 () Bool)

(declare-fun e!716700 () Bool)

(assert (=> d!138273 e!716700))

(declare-fun res!839605 () Bool)

(assert (=> d!138273 (=> (not res!839605) (not e!716700))))

(assert (=> d!138273 (= res!839605 (or (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))))

(declare-fun lt!570339 () ListLongMap!18961)

(assert (=> d!138273 (= lt!570335 lt!570339)))

(declare-fun lt!570323 () Unit!41959)

(assert (=> d!138273 (= lt!570323 e!716704)))

(declare-fun c!122522 () Bool)

(declare-fun e!716707 () Bool)

(assert (=> d!138273 (= c!122522 e!716707)))

(declare-fun res!839606 () Bool)

(assert (=> d!138273 (=> (not res!839606) (not e!716707))))

(assert (=> d!138273 (= res!839606 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138273 (= lt!570339 e!716708)))

(assert (=> d!138273 (= c!122521 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138273 (validMask!0 mask!1466)))

(assert (=> d!138273 (= (getCurrentListMap!4630 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!570335)))

(declare-fun b!1259666 () Bool)

(declare-fun e!716703 () Bool)

(assert (=> b!1259666 (= e!716703 (= (apply!1027 lt!570335 #b1000000000000000000000000000000000000000000000000000000000000000) minValueAfter!43))))

(declare-fun b!1259667 () Bool)

(assert (=> b!1259667 (= e!716707 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259668 () Bool)

(assert (=> b!1259668 (= e!716702 call!61897)))

(declare-fun b!1259669 () Bool)

(declare-fun res!839607 () Bool)

(assert (=> b!1259669 (=> (not res!839607) (not e!716700))))

(declare-fun e!716696 () Bool)

(assert (=> b!1259669 (= res!839607 e!716696)))

(declare-fun res!839612 () Bool)

(assert (=> b!1259669 (=> res!839612 e!716696)))

(assert (=> b!1259669 (= res!839612 (not e!716697))))

(declare-fun res!839610 () Bool)

(assert (=> b!1259669 (=> (not res!839610) (not e!716697))))

(assert (=> b!1259669 (= res!839610 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259670 () Bool)

(assert (=> b!1259670 (= e!716706 e!716703)))

(declare-fun res!839611 () Bool)

(assert (=> b!1259670 (= res!839611 call!61900)))

(assert (=> b!1259670 (=> (not res!839611) (not e!716703))))

(declare-fun b!1259671 () Bool)

(declare-fun res!839608 () Bool)

(assert (=> b!1259671 (=> (not res!839608) (not e!716700))))

(assert (=> b!1259671 (= res!839608 e!716698)))

(declare-fun c!122523 () Bool)

(assert (=> b!1259671 (= c!122523 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1259672 () Bool)

(assert (=> b!1259672 (= e!716700 e!716706)))

(declare-fun c!122520 () Bool)

(assert (=> b!1259672 (= c!122520 (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259673 () Bool)

(assert (=> b!1259673 (= e!716701 call!61899)))

(declare-fun b!1259674 () Bool)

(declare-fun e!716705 () Bool)

(assert (=> b!1259674 (= e!716696 e!716705)))

(declare-fun res!839613 () Bool)

(assert (=> b!1259674 (=> (not res!839613) (not e!716705))))

(assert (=> b!1259674 (= res!839613 (contains!7597 lt!570335 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259674 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun bm!61900 () Bool)

(assert (=> bm!61900 (= call!61902 (contains!7597 lt!570335 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1259675 () Bool)

(declare-fun lt!570333 () Unit!41959)

(assert (=> b!1259675 (= e!716704 lt!570333)))

(declare-fun lt!570341 () ListLongMap!18961)

(assert (=> b!1259675 (= lt!570341 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570334 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570334 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570322 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570322 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570342 () Unit!41959)

(declare-fun addStillContains!1099 (ListLongMap!18961 (_ BitVec 64) V!48337 (_ BitVec 64)) Unit!41959)

(assert (=> b!1259675 (= lt!570342 (addStillContains!1099 lt!570341 lt!570334 zeroValue!871 lt!570322))))

(assert (=> b!1259675 (contains!7597 (+!4193 lt!570341 (tuple2!21077 lt!570334 zeroValue!871)) lt!570322)))

(declare-fun lt!570332 () Unit!41959)

(assert (=> b!1259675 (= lt!570332 lt!570342)))

(declare-fun lt!570337 () ListLongMap!18961)

(assert (=> b!1259675 (= lt!570337 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570340 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570340 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570343 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570343 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570329 () Unit!41959)

(declare-fun addApplyDifferent!533 (ListLongMap!18961 (_ BitVec 64) V!48337 (_ BitVec 64)) Unit!41959)

(assert (=> b!1259675 (= lt!570329 (addApplyDifferent!533 lt!570337 lt!570340 minValueAfter!43 lt!570343))))

(assert (=> b!1259675 (= (apply!1027 (+!4193 lt!570337 (tuple2!21077 lt!570340 minValueAfter!43)) lt!570343) (apply!1027 lt!570337 lt!570343))))

(declare-fun lt!570325 () Unit!41959)

(assert (=> b!1259675 (= lt!570325 lt!570329)))

(declare-fun lt!570326 () ListLongMap!18961)

(assert (=> b!1259675 (= lt!570326 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570330 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570330 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570324 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570324 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570328 () Unit!41959)

(assert (=> b!1259675 (= lt!570328 (addApplyDifferent!533 lt!570326 lt!570330 zeroValue!871 lt!570324))))

(assert (=> b!1259675 (= (apply!1027 (+!4193 lt!570326 (tuple2!21077 lt!570330 zeroValue!871)) lt!570324) (apply!1027 lt!570326 lt!570324))))

(declare-fun lt!570338 () Unit!41959)

(assert (=> b!1259675 (= lt!570338 lt!570328)))

(declare-fun lt!570327 () ListLongMap!18961)

(assert (=> b!1259675 (= lt!570327 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570331 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570331 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570336 () (_ BitVec 64))

(assert (=> b!1259675 (= lt!570336 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1259675 (= lt!570333 (addApplyDifferent!533 lt!570327 lt!570331 minValueAfter!43 lt!570336))))

(assert (=> b!1259675 (= (apply!1027 (+!4193 lt!570327 (tuple2!21077 lt!570331 minValueAfter!43)) lt!570336) (apply!1027 lt!570327 lt!570336))))

(declare-fun b!1259676 () Bool)

(assert (=> b!1259676 (= e!716708 e!716702)))

(assert (=> b!1259676 (= c!122519 (and (not (= (bvand extraKeysAfter!63 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259677 () Bool)

(declare-fun get!20259 (ValueCell!15351 V!48337) V!48337)

(declare-fun dynLambda!3472 (Int (_ BitVec 64)) V!48337)

(assert (=> b!1259677 (= e!716705 (= (apply!1027 lt!570335 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1259677 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40124 _values!914)))))

(assert (=> b!1259677 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (= (and d!138273 c!122521) b!1259657))

(assert (= (and d!138273 (not c!122521)) b!1259676))

(assert (= (and b!1259676 c!122519) b!1259668))

(assert (= (and b!1259676 (not c!122519)) b!1259662))

(assert (= (and b!1259662 c!122518) b!1259664))

(assert (= (and b!1259662 (not c!122518)) b!1259673))

(assert (= (or b!1259664 b!1259673) bm!61899))

(assert (= (or b!1259668 bm!61899) bm!61897))

(assert (= (or b!1259668 b!1259664) bm!61894))

(assert (= (or b!1259657 bm!61897) bm!61895))

(assert (= (or b!1259657 bm!61894) bm!61898))

(assert (= (and d!138273 res!839606) b!1259667))

(assert (= (and d!138273 c!122522) b!1259675))

(assert (= (and d!138273 (not c!122522)) b!1259658))

(assert (= (and d!138273 res!839605) b!1259669))

(assert (= (and b!1259669 res!839610) b!1259663))

(assert (= (and b!1259669 (not res!839612)) b!1259674))

(assert (= (and b!1259674 res!839613) b!1259677))

(assert (= (and b!1259669 res!839607) b!1259671))

(assert (= (and b!1259671 c!122523) b!1259659))

(assert (= (and b!1259671 (not c!122523)) b!1259661))

(assert (= (and b!1259659 res!839609) b!1259665))

(assert (= (or b!1259659 b!1259661) bm!61900))

(assert (= (and b!1259671 res!839608) b!1259672))

(assert (= (and b!1259672 c!122520) b!1259670))

(assert (= (and b!1259672 (not c!122520)) b!1259660))

(assert (= (and b!1259670 res!839611) b!1259666))

(assert (= (or b!1259670 b!1259660) bm!61896))

(declare-fun b_lambda!22753 () Bool)

(assert (=> (not b_lambda!22753) (not b!1259677)))

(declare-fun t!41808 () Bool)

(declare-fun tb!11319 () Bool)

(assert (=> (and start!105778 (= defaultEntry!922 defaultEntry!922) t!41808) tb!11319))

(declare-fun result!23349 () Bool)

(assert (=> tb!11319 (= result!23349 tp_is_empty!32229)))

(assert (=> b!1259677 t!41808))

(declare-fun b_and!45225 () Bool)

(assert (= b_and!45221 (and (=> t!41808 result!23349) b_and!45225)))

(assert (=> b!1259674 m!1160175))

(assert (=> b!1259674 m!1160175))

(declare-fun m!1160207 () Bool)

(assert (=> b!1259674 m!1160207))

(declare-fun m!1160209 () Bool)

(assert (=> b!1259657 m!1160209))

(declare-fun m!1160211 () Bool)

(assert (=> b!1259675 m!1160211))

(declare-fun m!1160213 () Bool)

(assert (=> b!1259675 m!1160213))

(assert (=> b!1259675 m!1160175))

(declare-fun m!1160215 () Bool)

(assert (=> b!1259675 m!1160215))

(declare-fun m!1160217 () Bool)

(assert (=> b!1259675 m!1160217))

(declare-fun m!1160219 () Bool)

(assert (=> b!1259675 m!1160219))

(declare-fun m!1160221 () Bool)

(assert (=> b!1259675 m!1160221))

(assert (=> b!1259675 m!1160127))

(declare-fun m!1160223 () Bool)

(assert (=> b!1259675 m!1160223))

(declare-fun m!1160225 () Bool)

(assert (=> b!1259675 m!1160225))

(assert (=> b!1259675 m!1160211))

(assert (=> b!1259675 m!1160221))

(declare-fun m!1160227 () Bool)

(assert (=> b!1259675 m!1160227))

(declare-fun m!1160229 () Bool)

(assert (=> b!1259675 m!1160229))

(declare-fun m!1160231 () Bool)

(assert (=> b!1259675 m!1160231))

(declare-fun m!1160233 () Bool)

(assert (=> b!1259675 m!1160233))

(declare-fun m!1160235 () Bool)

(assert (=> b!1259675 m!1160235))

(assert (=> b!1259675 m!1160215))

(declare-fun m!1160237 () Bool)

(assert (=> b!1259675 m!1160237))

(assert (=> b!1259675 m!1160217))

(declare-fun m!1160239 () Bool)

(assert (=> b!1259675 m!1160239))

(declare-fun m!1160241 () Bool)

(assert (=> bm!61898 m!1160241))

(assert (=> b!1259667 m!1160175))

(assert (=> b!1259667 m!1160175))

(assert (=> b!1259667 m!1160179))

(assert (=> b!1259677 m!1160175))

(declare-fun m!1160243 () Bool)

(assert (=> b!1259677 m!1160243))

(declare-fun m!1160245 () Bool)

(assert (=> b!1259677 m!1160245))

(assert (=> b!1259677 m!1160243))

(assert (=> b!1259677 m!1160245))

(declare-fun m!1160247 () Bool)

(assert (=> b!1259677 m!1160247))

(assert (=> b!1259677 m!1160175))

(declare-fun m!1160249 () Bool)

(assert (=> b!1259677 m!1160249))

(declare-fun m!1160251 () Bool)

(assert (=> b!1259665 m!1160251))

(declare-fun m!1160253 () Bool)

(assert (=> bm!61900 m!1160253))

(assert (=> b!1259663 m!1160175))

(assert (=> b!1259663 m!1160175))

(assert (=> b!1259663 m!1160179))

(assert (=> bm!61895 m!1160127))

(declare-fun m!1160255 () Bool)

(assert (=> bm!61896 m!1160255))

(declare-fun m!1160257 () Bool)

(assert (=> b!1259666 m!1160257))

(assert (=> d!138273 m!1160135))

(assert (=> b!1259542 d!138273))

(declare-fun d!138275 () Bool)

(declare-fun e!716709 () Bool)

(assert (=> d!138275 e!716709))

(declare-fun res!839614 () Bool)

(assert (=> d!138275 (=> (not res!839614) (not e!716709))))

(declare-fun lt!570345 () ListLongMap!18961)

(assert (=> d!138275 (= res!839614 (contains!7597 lt!570345 (_1!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!570347 () List!28302)

(assert (=> d!138275 (= lt!570345 (ListLongMap!18962 lt!570347))))

(declare-fun lt!570346 () Unit!41959)

(declare-fun lt!570344 () Unit!41959)

(assert (=> d!138275 (= lt!570346 lt!570344)))

(assert (=> d!138275 (= (getValueByKey!661 lt!570347 (_1!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!711 (_2!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138275 (= lt!570344 (lemmaContainsTupThenGetReturnValue!332 lt!570347 (_1!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138275 (= lt!570347 (insertStrictlySorted!445 (toList!9496 lt!570223) (_1!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) (_2!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> d!138275 (= (+!4193 lt!570223 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) lt!570345)))

(declare-fun b!1259680 () Bool)

(declare-fun res!839615 () Bool)

(assert (=> b!1259680 (=> (not res!839615) (not e!716709))))

(assert (=> b!1259680 (= res!839615 (= (getValueByKey!661 (toList!9496 lt!570345) (_1!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))) (Some!711 (_2!10548 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))))

(declare-fun b!1259681 () Bool)

(assert (=> b!1259681 (= e!716709 (contains!7598 (toList!9496 lt!570345) (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (= (and d!138275 res!839614) b!1259680))

(assert (= (and b!1259680 res!839615) b!1259681))

(declare-fun m!1160259 () Bool)

(assert (=> d!138275 m!1160259))

(declare-fun m!1160261 () Bool)

(assert (=> d!138275 m!1160261))

(declare-fun m!1160263 () Bool)

(assert (=> d!138275 m!1160263))

(declare-fun m!1160265 () Bool)

(assert (=> d!138275 m!1160265))

(declare-fun m!1160267 () Bool)

(assert (=> b!1259680 m!1160267))

(declare-fun m!1160269 () Bool)

(assert (=> b!1259681 m!1160269))

(assert (=> b!1259542 d!138275))

(declare-fun d!138277 () Bool)

(declare-fun e!716710 () Bool)

(assert (=> d!138277 e!716710))

(declare-fun res!839616 () Bool)

(assert (=> d!138277 (=> (not res!839616) (not e!716710))))

(declare-fun lt!570349 () ListLongMap!18961)

(assert (=> d!138277 (= res!839616 (contains!7597 lt!570349 (_1!10548 lt!570220)))))

(declare-fun lt!570351 () List!28302)

(assert (=> d!138277 (= lt!570349 (ListLongMap!18962 lt!570351))))

(declare-fun lt!570350 () Unit!41959)

(declare-fun lt!570348 () Unit!41959)

(assert (=> d!138277 (= lt!570350 lt!570348)))

(assert (=> d!138277 (= (getValueByKey!661 lt!570351 (_1!10548 lt!570220)) (Some!711 (_2!10548 lt!570220)))))

(assert (=> d!138277 (= lt!570348 (lemmaContainsTupThenGetReturnValue!332 lt!570351 (_1!10548 lt!570220) (_2!10548 lt!570220)))))

(assert (=> d!138277 (= lt!570351 (insertStrictlySorted!445 (toList!9496 lt!570224) (_1!10548 lt!570220) (_2!10548 lt!570220)))))

(assert (=> d!138277 (= (+!4193 lt!570224 lt!570220) lt!570349)))

(declare-fun b!1259682 () Bool)

(declare-fun res!839617 () Bool)

(assert (=> b!1259682 (=> (not res!839617) (not e!716710))))

(assert (=> b!1259682 (= res!839617 (= (getValueByKey!661 (toList!9496 lt!570349) (_1!10548 lt!570220)) (Some!711 (_2!10548 lt!570220))))))

(declare-fun b!1259683 () Bool)

(assert (=> b!1259683 (= e!716710 (contains!7598 (toList!9496 lt!570349) lt!570220))))

(assert (= (and d!138277 res!839616) b!1259682))

(assert (= (and b!1259682 res!839617) b!1259683))

(declare-fun m!1160271 () Bool)

(assert (=> d!138277 m!1160271))

(declare-fun m!1160273 () Bool)

(assert (=> d!138277 m!1160273))

(declare-fun m!1160275 () Bool)

(assert (=> d!138277 m!1160275))

(declare-fun m!1160277 () Bool)

(assert (=> d!138277 m!1160277))

(declare-fun m!1160279 () Bool)

(assert (=> b!1259682 m!1160279))

(declare-fun m!1160281 () Bool)

(assert (=> b!1259683 m!1160281))

(assert (=> b!1259542 d!138277))

(declare-fun bm!61901 () Bool)

(declare-fun call!61904 () ListLongMap!18961)

(declare-fun call!61910 () ListLongMap!18961)

(assert (=> bm!61901 (= call!61904 call!61910)))

(declare-fun b!1259684 () Bool)

(declare-fun e!716723 () ListLongMap!18961)

(assert (=> b!1259684 (= e!716723 (+!4193 call!61910 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun bm!61903 () Bool)

(declare-fun call!61907 () Bool)

(declare-fun lt!570365 () ListLongMap!18961)

(assert (=> bm!61903 (= call!61907 (contains!7597 lt!570365 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1259685 () Bool)

(declare-fun e!716719 () Unit!41959)

(declare-fun Unit!41964 () Unit!41959)

(assert (=> b!1259685 (= e!716719 Unit!41964)))

(declare-fun bm!61904 () Bool)

(declare-fun call!61908 () ListLongMap!18961)

(declare-fun call!61905 () ListLongMap!18961)

(assert (=> bm!61904 (= call!61908 call!61905)))

(declare-fun b!1259686 () Bool)

(declare-fun e!716713 () Bool)

(declare-fun e!716714 () Bool)

(assert (=> b!1259686 (= e!716713 e!716714)))

(declare-fun res!839622 () Bool)

(declare-fun call!61909 () Bool)

(assert (=> b!1259686 (= res!839622 call!61909)))

(assert (=> b!1259686 (=> (not res!839622) (not e!716714))))

(declare-fun b!1259687 () Bool)

(declare-fun e!716721 () Bool)

(assert (=> b!1259687 (= e!716721 (not call!61907))))

(declare-fun call!61906 () ListLongMap!18961)

(declare-fun bm!61905 () Bool)

(declare-fun c!122527 () Bool)

(declare-fun c!122525 () Bool)

(assert (=> bm!61905 (= call!61910 (+!4193 (ite c!122527 call!61905 (ite c!122525 call!61908 call!61906)) (ite (or c!122527 c!122525) (tuple2!21077 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871) (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun bm!61906 () Bool)

(assert (=> bm!61906 (= call!61906 call!61908)))

(declare-fun b!1259688 () Bool)

(assert (=> b!1259688 (= e!716713 (not call!61909))))

(declare-fun b!1259689 () Bool)

(declare-fun c!122524 () Bool)

(assert (=> b!1259689 (= c!122524 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!716717 () ListLongMap!18961)

(declare-fun e!716716 () ListLongMap!18961)

(assert (=> b!1259689 (= e!716717 e!716716)))

(declare-fun b!1259690 () Bool)

(declare-fun e!716712 () Bool)

(assert (=> b!1259690 (= e!716712 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259691 () Bool)

(assert (=> b!1259691 (= e!716716 call!61904)))

(declare-fun b!1259692 () Bool)

(assert (=> b!1259692 (= e!716714 (= (apply!1027 lt!570365 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!871))))

(declare-fun bm!61902 () Bool)

(assert (=> bm!61902 (= call!61905 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun d!138279 () Bool)

(declare-fun e!716715 () Bool)

(assert (=> d!138279 e!716715))

(declare-fun res!839618 () Bool)

(assert (=> d!138279 (=> (not res!839618) (not e!716715))))

(assert (=> d!138279 (= res!839618 (or (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))))

(declare-fun lt!570369 () ListLongMap!18961)

(assert (=> d!138279 (= lt!570365 lt!570369)))

(declare-fun lt!570353 () Unit!41959)

(assert (=> d!138279 (= lt!570353 e!716719)))

(declare-fun c!122528 () Bool)

(declare-fun e!716722 () Bool)

(assert (=> d!138279 (= c!122528 e!716722)))

(declare-fun res!839619 () Bool)

(assert (=> d!138279 (=> (not res!839619) (not e!716722))))

(assert (=> d!138279 (= res!839619 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138279 (= lt!570369 e!716723)))

(assert (=> d!138279 (= c!122527 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!138279 (validMask!0 mask!1466)))

(assert (=> d!138279 (= (getCurrentListMap!4630 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!570365)))

(declare-fun b!1259693 () Bool)

(declare-fun e!716718 () Bool)

(assert (=> b!1259693 (= e!716718 (= (apply!1027 lt!570365 #b1000000000000000000000000000000000000000000000000000000000000000) minValueBefore!43))))

(declare-fun b!1259694 () Bool)

(assert (=> b!1259694 (= e!716722 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259695 () Bool)

(assert (=> b!1259695 (= e!716717 call!61904)))

(declare-fun b!1259696 () Bool)

(declare-fun res!839620 () Bool)

(assert (=> b!1259696 (=> (not res!839620) (not e!716715))))

(declare-fun e!716711 () Bool)

(assert (=> b!1259696 (= res!839620 e!716711)))

(declare-fun res!839625 () Bool)

(assert (=> b!1259696 (=> res!839625 e!716711)))

(assert (=> b!1259696 (= res!839625 (not e!716712))))

(declare-fun res!839623 () Bool)

(assert (=> b!1259696 (=> (not res!839623) (not e!716712))))

(assert (=> b!1259696 (= res!839623 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259697 () Bool)

(assert (=> b!1259697 (= e!716721 e!716718)))

(declare-fun res!839624 () Bool)

(assert (=> b!1259697 (= res!839624 call!61907)))

(assert (=> b!1259697 (=> (not res!839624) (not e!716718))))

(declare-fun b!1259698 () Bool)

(declare-fun res!839621 () Bool)

(assert (=> b!1259698 (=> (not res!839621) (not e!716715))))

(assert (=> b!1259698 (= res!839621 e!716713)))

(declare-fun c!122529 () Bool)

(assert (=> b!1259698 (= c!122529 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1259699 () Bool)

(assert (=> b!1259699 (= e!716715 e!716721)))

(declare-fun c!122526 () Bool)

(assert (=> b!1259699 (= c!122526 (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259700 () Bool)

(assert (=> b!1259700 (= e!716716 call!61906)))

(declare-fun b!1259701 () Bool)

(declare-fun e!716720 () Bool)

(assert (=> b!1259701 (= e!716711 e!716720)))

(declare-fun res!839626 () Bool)

(assert (=> b!1259701 (=> (not res!839626) (not e!716720))))

(assert (=> b!1259701 (= res!839626 (contains!7597 lt!570365 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259701 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun bm!61907 () Bool)

(assert (=> bm!61907 (= call!61909 (contains!7597 lt!570365 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1259702 () Bool)

(declare-fun lt!570363 () Unit!41959)

(assert (=> b!1259702 (= e!716719 lt!570363)))

(declare-fun lt!570371 () ListLongMap!18961)

(assert (=> b!1259702 (= lt!570371 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570364 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570364 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570352 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570352 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570372 () Unit!41959)

(assert (=> b!1259702 (= lt!570372 (addStillContains!1099 lt!570371 lt!570364 zeroValue!871 lt!570352))))

(assert (=> b!1259702 (contains!7597 (+!4193 lt!570371 (tuple2!21077 lt!570364 zeroValue!871)) lt!570352)))

(declare-fun lt!570362 () Unit!41959)

(assert (=> b!1259702 (= lt!570362 lt!570372)))

(declare-fun lt!570367 () ListLongMap!18961)

(assert (=> b!1259702 (= lt!570367 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570370 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570370 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570373 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570373 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570359 () Unit!41959)

(assert (=> b!1259702 (= lt!570359 (addApplyDifferent!533 lt!570367 lt!570370 minValueBefore!43 lt!570373))))

(assert (=> b!1259702 (= (apply!1027 (+!4193 lt!570367 (tuple2!21077 lt!570370 minValueBefore!43)) lt!570373) (apply!1027 lt!570367 lt!570373))))

(declare-fun lt!570355 () Unit!41959)

(assert (=> b!1259702 (= lt!570355 lt!570359)))

(declare-fun lt!570356 () ListLongMap!18961)

(assert (=> b!1259702 (= lt!570356 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570360 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570360 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570354 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570354 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(declare-fun lt!570358 () Unit!41959)

(assert (=> b!1259702 (= lt!570358 (addApplyDifferent!533 lt!570356 lt!570360 zeroValue!871 lt!570354))))

(assert (=> b!1259702 (= (apply!1027 (+!4193 lt!570356 (tuple2!21077 lt!570360 zeroValue!871)) lt!570354) (apply!1027 lt!570356 lt!570354))))

(declare-fun lt!570368 () Unit!41959)

(assert (=> b!1259702 (= lt!570368 lt!570358)))

(declare-fun lt!570357 () ListLongMap!18961)

(assert (=> b!1259702 (= lt!570357 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570361 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570361 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!570366 () (_ BitVec 64))

(assert (=> b!1259702 (= lt!570366 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1259702 (= lt!570363 (addApplyDifferent!533 lt!570357 lt!570361 minValueBefore!43 lt!570366))))

(assert (=> b!1259702 (= (apply!1027 (+!4193 lt!570357 (tuple2!21077 lt!570361 minValueBefore!43)) lt!570366) (apply!1027 lt!570357 lt!570366))))

(declare-fun b!1259703 () Bool)

(assert (=> b!1259703 (= e!716723 e!716717)))

(assert (=> b!1259703 (= c!122525 (and (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259704 () Bool)

(assert (=> b!1259704 (= e!716720 (= (apply!1027 lt!570365 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1259704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40124 _values!914)))))

(assert (=> b!1259704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (= (and d!138279 c!122527) b!1259684))

(assert (= (and d!138279 (not c!122527)) b!1259703))

(assert (= (and b!1259703 c!122525) b!1259695))

(assert (= (and b!1259703 (not c!122525)) b!1259689))

(assert (= (and b!1259689 c!122524) b!1259691))

(assert (= (and b!1259689 (not c!122524)) b!1259700))

(assert (= (or b!1259691 b!1259700) bm!61906))

(assert (= (or b!1259695 bm!61906) bm!61904))

(assert (= (or b!1259695 b!1259691) bm!61901))

(assert (= (or b!1259684 bm!61904) bm!61902))

(assert (= (or b!1259684 bm!61901) bm!61905))

(assert (= (and d!138279 res!839619) b!1259694))

(assert (= (and d!138279 c!122528) b!1259702))

(assert (= (and d!138279 (not c!122528)) b!1259685))

(assert (= (and d!138279 res!839618) b!1259696))

(assert (= (and b!1259696 res!839623) b!1259690))

(assert (= (and b!1259696 (not res!839625)) b!1259701))

(assert (= (and b!1259701 res!839626) b!1259704))

(assert (= (and b!1259696 res!839620) b!1259698))

(assert (= (and b!1259698 c!122529) b!1259686))

(assert (= (and b!1259698 (not c!122529)) b!1259688))

(assert (= (and b!1259686 res!839622) b!1259692))

(assert (= (or b!1259686 b!1259688) bm!61907))

(assert (= (and b!1259698 res!839621) b!1259699))

(assert (= (and b!1259699 c!122526) b!1259697))

(assert (= (and b!1259699 (not c!122526)) b!1259687))

(assert (= (and b!1259697 res!839624) b!1259693))

(assert (= (or b!1259697 b!1259687) bm!61903))

(declare-fun b_lambda!22755 () Bool)

(assert (=> (not b_lambda!22755) (not b!1259704)))

(assert (=> b!1259704 t!41808))

(declare-fun b_and!45227 () Bool)

(assert (= b_and!45225 (and (=> t!41808 result!23349) b_and!45227)))

(assert (=> b!1259701 m!1160175))

(assert (=> b!1259701 m!1160175))

(declare-fun m!1160283 () Bool)

(assert (=> b!1259701 m!1160283))

(declare-fun m!1160285 () Bool)

(assert (=> b!1259684 m!1160285))

(declare-fun m!1160287 () Bool)

(assert (=> b!1259702 m!1160287))

(declare-fun m!1160289 () Bool)

(assert (=> b!1259702 m!1160289))

(assert (=> b!1259702 m!1160175))

(declare-fun m!1160291 () Bool)

(assert (=> b!1259702 m!1160291))

(declare-fun m!1160293 () Bool)

(assert (=> b!1259702 m!1160293))

(declare-fun m!1160295 () Bool)

(assert (=> b!1259702 m!1160295))

(declare-fun m!1160297 () Bool)

(assert (=> b!1259702 m!1160297))

(assert (=> b!1259702 m!1160129))

(declare-fun m!1160299 () Bool)

(assert (=> b!1259702 m!1160299))

(declare-fun m!1160301 () Bool)

(assert (=> b!1259702 m!1160301))

(assert (=> b!1259702 m!1160287))

(assert (=> b!1259702 m!1160297))

(declare-fun m!1160303 () Bool)

(assert (=> b!1259702 m!1160303))

(declare-fun m!1160305 () Bool)

(assert (=> b!1259702 m!1160305))

(declare-fun m!1160307 () Bool)

(assert (=> b!1259702 m!1160307))

(declare-fun m!1160309 () Bool)

(assert (=> b!1259702 m!1160309))

(declare-fun m!1160311 () Bool)

(assert (=> b!1259702 m!1160311))

(assert (=> b!1259702 m!1160291))

(declare-fun m!1160313 () Bool)

(assert (=> b!1259702 m!1160313))

(assert (=> b!1259702 m!1160293))

(declare-fun m!1160315 () Bool)

(assert (=> b!1259702 m!1160315))

(declare-fun m!1160317 () Bool)

(assert (=> bm!61905 m!1160317))

(assert (=> b!1259694 m!1160175))

(assert (=> b!1259694 m!1160175))

(assert (=> b!1259694 m!1160179))

(assert (=> b!1259704 m!1160175))

(assert (=> b!1259704 m!1160243))

(assert (=> b!1259704 m!1160245))

(assert (=> b!1259704 m!1160243))

(assert (=> b!1259704 m!1160245))

(assert (=> b!1259704 m!1160247))

(assert (=> b!1259704 m!1160175))

(declare-fun m!1160319 () Bool)

(assert (=> b!1259704 m!1160319))

(declare-fun m!1160321 () Bool)

(assert (=> b!1259692 m!1160321))

(declare-fun m!1160323 () Bool)

(assert (=> bm!61907 m!1160323))

(assert (=> b!1259690 m!1160175))

(assert (=> b!1259690 m!1160175))

(assert (=> b!1259690 m!1160179))

(assert (=> bm!61902 m!1160129))

(declare-fun m!1160325 () Bool)

(assert (=> bm!61903 m!1160325))

(declare-fun m!1160327 () Bool)

(assert (=> b!1259693 m!1160327))

(assert (=> d!138279 m!1160135))

(assert (=> b!1259542 d!138279))

(declare-fun d!138281 () Bool)

(assert (=> d!138281 (= (-!2126 (+!4193 lt!570223 (tuple2!21077 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)) #b1000000000000000000000000000000000000000000000000000000000000000) lt!570223)))

(declare-fun lt!570376 () Unit!41959)

(declare-fun choose!1873 (ListLongMap!18961 (_ BitVec 64) V!48337) Unit!41959)

(assert (=> d!138281 (= lt!570376 (choose!1873 lt!570223 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> d!138281 (not (contains!7597 lt!570223 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138281 (= (addThenRemoveForNewKeyIsSame!351 lt!570223 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43) lt!570376)))

(declare-fun bs!35632 () Bool)

(assert (= bs!35632 d!138281))

(assert (=> bs!35632 m!1160109))

(assert (=> bs!35632 m!1160109))

(declare-fun m!1160329 () Bool)

(assert (=> bs!35632 m!1160329))

(declare-fun m!1160331 () Bool)

(assert (=> bs!35632 m!1160331))

(declare-fun m!1160333 () Bool)

(assert (=> bs!35632 m!1160333))

(assert (=> b!1259542 d!138281))

(declare-fun d!138283 () Bool)

(declare-fun lt!570377 () ListLongMap!18961)

(assert (=> d!138283 (not (contains!7597 lt!570377 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!138283 (= lt!570377 (ListLongMap!18962 (removeStrictlySorted!143 (toList!9496 lt!570222) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138283 (= (-!2126 lt!570222 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570377)))

(declare-fun bs!35633 () Bool)

(assert (= bs!35633 d!138283))

(declare-fun m!1160335 () Bool)

(assert (=> bs!35633 m!1160335))

(declare-fun m!1160337 () Bool)

(assert (=> bs!35633 m!1160337))

(assert (=> b!1259542 d!138283))

(declare-fun d!138285 () Bool)

(assert (=> d!138285 (= (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!570380 () Unit!41959)

(declare-fun choose!1874 (array!82071 array!82073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48337 V!48337 V!48337 V!48337 (_ BitVec 32) Int) Unit!41959)

(assert (=> d!138285 (= lt!570380 (choose!1874 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> d!138285 (validMask!0 mask!1466)))

(assert (=> d!138285 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1160 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!570380)))

(declare-fun bs!35634 () Bool)

(assert (= bs!35634 d!138285))

(assert (=> bs!35634 m!1160129))

(assert (=> bs!35634 m!1160127))

(declare-fun m!1160339 () Bool)

(assert (=> bs!35634 m!1160339))

(assert (=> bs!35634 m!1160135))

(assert (=> b!1259543 d!138285))

(declare-fun bm!61910 () Bool)

(declare-fun call!61913 () ListLongMap!18961)

(assert (=> bm!61910 (= call!61913 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1259729 () Bool)

(declare-fun e!716742 () ListLongMap!18961)

(declare-fun e!716743 () ListLongMap!18961)

(assert (=> b!1259729 (= e!716742 e!716743)))

(declare-fun c!122538 () Bool)

(assert (=> b!1259729 (= c!122538 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259730 () Bool)

(assert (=> b!1259730 (= e!716742 (ListLongMap!18962 Nil!28299))))

(declare-fun b!1259731 () Bool)

(assert (=> b!1259731 (= e!716743 call!61913)))

(declare-fun b!1259732 () Bool)

(declare-fun e!716741 () Bool)

(declare-fun e!716744 () Bool)

(assert (=> b!1259732 (= e!716741 e!716744)))

(assert (=> b!1259732 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun res!839637 () Bool)

(declare-fun lt!570396 () ListLongMap!18961)

(assert (=> b!1259732 (= res!839637 (contains!7597 lt!570396 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259732 (=> (not res!839637) (not e!716744))))

(declare-fun d!138287 () Bool)

(declare-fun e!716740 () Bool)

(assert (=> d!138287 e!716740))

(declare-fun res!839636 () Bool)

(assert (=> d!138287 (=> (not res!839636) (not e!716740))))

(assert (=> d!138287 (= res!839636 (not (contains!7597 lt!570396 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138287 (= lt!570396 e!716742)))

(declare-fun c!122541 () Bool)

(assert (=> d!138287 (= c!122541 (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138287 (validMask!0 mask!1466)))

(assert (=> d!138287 (= (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) lt!570396)))

(declare-fun b!1259733 () Bool)

(assert (=> b!1259733 (= e!716740 e!716741)))

(declare-fun c!122539 () Bool)

(declare-fun e!716739 () Bool)

(assert (=> b!1259733 (= c!122539 e!716739)))

(declare-fun res!839635 () Bool)

(assert (=> b!1259733 (=> (not res!839635) (not e!716739))))

(assert (=> b!1259733 (= res!839635 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259734 () Bool)

(declare-fun e!716738 () Bool)

(assert (=> b!1259734 (= e!716741 e!716738)))

(declare-fun c!122540 () Bool)

(assert (=> b!1259734 (= c!122540 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259735 () Bool)

(assert (=> b!1259735 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> b!1259735 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40124 _values!914)))))

(assert (=> b!1259735 (= e!716744 (= (apply!1027 lt!570396 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1259736 () Bool)

(declare-fun isEmpty!1037 (ListLongMap!18961) Bool)

(assert (=> b!1259736 (= e!716738 (isEmpty!1037 lt!570396))))

(declare-fun b!1259737 () Bool)

(assert (=> b!1259737 (= e!716738 (= lt!570396 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1259738 () Bool)

(declare-fun res!839638 () Bool)

(assert (=> b!1259738 (=> (not res!839638) (not e!716740))))

(assert (=> b!1259738 (= res!839638 (not (contains!7597 lt!570396 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1259739 () Bool)

(declare-fun lt!570395 () Unit!41959)

(declare-fun lt!570397 () Unit!41959)

(assert (=> b!1259739 (= lt!570395 lt!570397)))

(declare-fun lt!570398 () (_ BitVec 64))

(declare-fun lt!570400 () (_ BitVec 64))

(declare-fun lt!570401 () ListLongMap!18961)

(declare-fun lt!570399 () V!48337)

(assert (=> b!1259739 (not (contains!7597 (+!4193 lt!570401 (tuple2!21077 lt!570400 lt!570399)) lt!570398))))

(declare-fun addStillNotContains!322 (ListLongMap!18961 (_ BitVec 64) V!48337 (_ BitVec 64)) Unit!41959)

(assert (=> b!1259739 (= lt!570397 (addStillNotContains!322 lt!570401 lt!570400 lt!570399 lt!570398))))

(assert (=> b!1259739 (= lt!570398 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1259739 (= lt!570399 (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1259739 (= lt!570400 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1259739 (= lt!570401 call!61913)))

(assert (=> b!1259739 (= e!716743 (+!4193 call!61913 (tuple2!21077 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1259740 () Bool)

(assert (=> b!1259740 (= e!716739 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259740 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138287 c!122541) b!1259730))

(assert (= (and d!138287 (not c!122541)) b!1259729))

(assert (= (and b!1259729 c!122538) b!1259739))

(assert (= (and b!1259729 (not c!122538)) b!1259731))

(assert (= (or b!1259739 b!1259731) bm!61910))

(assert (= (and d!138287 res!839636) b!1259738))

(assert (= (and b!1259738 res!839638) b!1259733))

(assert (= (and b!1259733 res!839635) b!1259740))

(assert (= (and b!1259733 c!122539) b!1259732))

(assert (= (and b!1259733 (not c!122539)) b!1259734))

(assert (= (and b!1259732 res!839637) b!1259735))

(assert (= (and b!1259734 c!122540) b!1259737))

(assert (= (and b!1259734 (not c!122540)) b!1259736))

(declare-fun b_lambda!22757 () Bool)

(assert (=> (not b_lambda!22757) (not b!1259735)))

(assert (=> b!1259735 t!41808))

(declare-fun b_and!45229 () Bool)

(assert (= b_and!45227 (and (=> t!41808 result!23349) b_and!45229)))

(declare-fun b_lambda!22759 () Bool)

(assert (=> (not b_lambda!22759) (not b!1259739)))

(assert (=> b!1259739 t!41808))

(declare-fun b_and!45231 () Bool)

(assert (= b_and!45229 (and (=> t!41808 result!23349) b_and!45231)))

(assert (=> b!1259732 m!1160175))

(assert (=> b!1259732 m!1160175))

(declare-fun m!1160341 () Bool)

(assert (=> b!1259732 m!1160341))

(declare-fun m!1160343 () Bool)

(assert (=> b!1259737 m!1160343))

(assert (=> b!1259735 m!1160175))

(declare-fun m!1160345 () Bool)

(assert (=> b!1259735 m!1160345))

(assert (=> b!1259735 m!1160243))

(assert (=> b!1259735 m!1160245))

(assert (=> b!1259735 m!1160247))

(assert (=> b!1259735 m!1160245))

(assert (=> b!1259735 m!1160243))

(assert (=> b!1259735 m!1160175))

(assert (=> b!1259740 m!1160175))

(assert (=> b!1259740 m!1160175))

(assert (=> b!1259740 m!1160179))

(declare-fun m!1160347 () Bool)

(assert (=> b!1259738 m!1160347))

(declare-fun m!1160349 () Bool)

(assert (=> b!1259736 m!1160349))

(assert (=> bm!61910 m!1160343))

(declare-fun m!1160351 () Bool)

(assert (=> d!138287 m!1160351))

(assert (=> d!138287 m!1160135))

(assert (=> b!1259729 m!1160175))

(assert (=> b!1259729 m!1160175))

(assert (=> b!1259729 m!1160179))

(assert (=> b!1259739 m!1160245))

(assert (=> b!1259739 m!1160243))

(assert (=> b!1259739 m!1160175))

(declare-fun m!1160353 () Bool)

(assert (=> b!1259739 m!1160353))

(declare-fun m!1160355 () Bool)

(assert (=> b!1259739 m!1160355))

(assert (=> b!1259739 m!1160353))

(declare-fun m!1160357 () Bool)

(assert (=> b!1259739 m!1160357))

(assert (=> b!1259739 m!1160243))

(assert (=> b!1259739 m!1160245))

(assert (=> b!1259739 m!1160247))

(declare-fun m!1160359 () Bool)

(assert (=> b!1259739 m!1160359))

(assert (=> b!1259543 d!138287))

(declare-fun bm!61911 () Bool)

(declare-fun call!61914 () ListLongMap!18961)

(assert (=> bm!61911 (= call!61914 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922))))

(declare-fun b!1259741 () Bool)

(declare-fun e!716749 () ListLongMap!18961)

(declare-fun e!716750 () ListLongMap!18961)

(assert (=> b!1259741 (= e!716749 e!716750)))

(declare-fun c!122542 () Bool)

(assert (=> b!1259741 (= c!122542 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1259742 () Bool)

(assert (=> b!1259742 (= e!716749 (ListLongMap!18962 Nil!28299))))

(declare-fun b!1259743 () Bool)

(assert (=> b!1259743 (= e!716750 call!61914)))

(declare-fun b!1259744 () Bool)

(declare-fun e!716748 () Bool)

(declare-fun e!716751 () Bool)

(assert (=> b!1259744 (= e!716748 e!716751)))

(assert (=> b!1259744 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun res!839641 () Bool)

(declare-fun lt!570403 () ListLongMap!18961)

(assert (=> b!1259744 (= res!839641 (contains!7597 lt!570403 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259744 (=> (not res!839641) (not e!716751))))

(declare-fun d!138289 () Bool)

(declare-fun e!716747 () Bool)

(assert (=> d!138289 e!716747))

(declare-fun res!839640 () Bool)

(assert (=> d!138289 (=> (not res!839640) (not e!716747))))

(assert (=> d!138289 (= res!839640 (not (contains!7597 lt!570403 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!138289 (= lt!570403 e!716749)))

(declare-fun c!122545 () Bool)

(assert (=> d!138289 (= c!122545 (bvsge #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> d!138289 (validMask!0 mask!1466)))

(assert (=> d!138289 (= (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) lt!570403)))

(declare-fun b!1259745 () Bool)

(assert (=> b!1259745 (= e!716747 e!716748)))

(declare-fun c!122543 () Bool)

(declare-fun e!716746 () Bool)

(assert (=> b!1259745 (= c!122543 e!716746)))

(declare-fun res!839639 () Bool)

(assert (=> b!1259745 (=> (not res!839639) (not e!716746))))

(assert (=> b!1259745 (= res!839639 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259746 () Bool)

(declare-fun e!716745 () Bool)

(assert (=> b!1259746 (= e!716748 e!716745)))

(declare-fun c!122544 () Bool)

(assert (=> b!1259746 (= c!122544 (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(declare-fun b!1259747 () Bool)

(assert (=> b!1259747 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40123 _keys!1118)))))

(assert (=> b!1259747 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!40124 _values!914)))))

(assert (=> b!1259747 (= e!716751 (= (apply!1027 lt!570403 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1259748 () Bool)

(assert (=> b!1259748 (= e!716745 (isEmpty!1037 lt!570403))))

(declare-fun b!1259749 () Bool)

(assert (=> b!1259749 (= e!716745 (= lt!570403 (getCurrentListMapNoExtraKeys!5842 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!922)))))

(declare-fun b!1259750 () Bool)

(declare-fun res!839642 () Bool)

(assert (=> b!1259750 (=> (not res!839642) (not e!716747))))

(assert (=> b!1259750 (= res!839642 (not (contains!7597 lt!570403 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1259751 () Bool)

(declare-fun lt!570402 () Unit!41959)

(declare-fun lt!570404 () Unit!41959)

(assert (=> b!1259751 (= lt!570402 lt!570404)))

(declare-fun lt!570407 () (_ BitVec 64))

(declare-fun lt!570405 () (_ BitVec 64))

(declare-fun lt!570408 () ListLongMap!18961)

(declare-fun lt!570406 () V!48337)

(assert (=> b!1259751 (not (contains!7597 (+!4193 lt!570408 (tuple2!21077 lt!570407 lt!570406)) lt!570405))))

(assert (=> b!1259751 (= lt!570404 (addStillNotContains!322 lt!570408 lt!570407 lt!570406 lt!570405))))

(assert (=> b!1259751 (= lt!570405 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1259751 (= lt!570406 (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1259751 (= lt!570407 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> b!1259751 (= lt!570408 call!61914)))

(assert (=> b!1259751 (= e!716750 (+!4193 call!61914 (tuple2!21077 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000) (get!20259 (select (arr!39587 _values!914) #b00000000000000000000000000000000) (dynLambda!3472 defaultEntry!922 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1259752 () Bool)

(assert (=> b!1259752 (= e!716746 (validKeyInArray!0 (select (arr!39586 _keys!1118) #b00000000000000000000000000000000)))))

(assert (=> b!1259752 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (= (and d!138289 c!122545) b!1259742))

(assert (= (and d!138289 (not c!122545)) b!1259741))

(assert (= (and b!1259741 c!122542) b!1259751))

(assert (= (and b!1259741 (not c!122542)) b!1259743))

(assert (= (or b!1259751 b!1259743) bm!61911))

(assert (= (and d!138289 res!839640) b!1259750))

(assert (= (and b!1259750 res!839642) b!1259745))

(assert (= (and b!1259745 res!839639) b!1259752))

(assert (= (and b!1259745 c!122543) b!1259744))

(assert (= (and b!1259745 (not c!122543)) b!1259746))

(assert (= (and b!1259744 res!839641) b!1259747))

(assert (= (and b!1259746 c!122544) b!1259749))

(assert (= (and b!1259746 (not c!122544)) b!1259748))

(declare-fun b_lambda!22761 () Bool)

(assert (=> (not b_lambda!22761) (not b!1259747)))

(assert (=> b!1259747 t!41808))

(declare-fun b_and!45233 () Bool)

(assert (= b_and!45231 (and (=> t!41808 result!23349) b_and!45233)))

(declare-fun b_lambda!22763 () Bool)

(assert (=> (not b_lambda!22763) (not b!1259751)))

(assert (=> b!1259751 t!41808))

(declare-fun b_and!45235 () Bool)

(assert (= b_and!45233 (and (=> t!41808 result!23349) b_and!45235)))

(assert (=> b!1259744 m!1160175))

(assert (=> b!1259744 m!1160175))

(declare-fun m!1160361 () Bool)

(assert (=> b!1259744 m!1160361))

(declare-fun m!1160363 () Bool)

(assert (=> b!1259749 m!1160363))

(assert (=> b!1259747 m!1160175))

(declare-fun m!1160365 () Bool)

(assert (=> b!1259747 m!1160365))

(assert (=> b!1259747 m!1160243))

(assert (=> b!1259747 m!1160245))

(assert (=> b!1259747 m!1160247))

(assert (=> b!1259747 m!1160245))

(assert (=> b!1259747 m!1160243))

(assert (=> b!1259747 m!1160175))

(assert (=> b!1259752 m!1160175))

(assert (=> b!1259752 m!1160175))

(assert (=> b!1259752 m!1160179))

(declare-fun m!1160367 () Bool)

(assert (=> b!1259750 m!1160367))

(declare-fun m!1160369 () Bool)

(assert (=> b!1259748 m!1160369))

(assert (=> bm!61911 m!1160363))

(declare-fun m!1160371 () Bool)

(assert (=> d!138289 m!1160371))

(assert (=> d!138289 m!1160135))

(assert (=> b!1259741 m!1160175))

(assert (=> b!1259741 m!1160175))

(assert (=> b!1259741 m!1160179))

(assert (=> b!1259751 m!1160245))

(assert (=> b!1259751 m!1160243))

(assert (=> b!1259751 m!1160175))

(declare-fun m!1160373 () Bool)

(assert (=> b!1259751 m!1160373))

(declare-fun m!1160375 () Bool)

(assert (=> b!1259751 m!1160375))

(assert (=> b!1259751 m!1160373))

(declare-fun m!1160377 () Bool)

(assert (=> b!1259751 m!1160377))

(assert (=> b!1259751 m!1160243))

(assert (=> b!1259751 m!1160245))

(assert (=> b!1259751 m!1160247))

(declare-fun m!1160379 () Bool)

(assert (=> b!1259751 m!1160379))

(assert (=> b!1259543 d!138289))

(declare-fun b!1259759 () Bool)

(declare-fun e!716756 () Bool)

(assert (=> b!1259759 (= e!716756 tp_is_empty!32229)))

(declare-fun condMapEmpty!50146 () Bool)

(declare-fun mapDefault!50146 () ValueCell!15351)

(assert (=> mapNonEmpty!50140 (= condMapEmpty!50146 (= mapRest!50140 ((as const (Array (_ BitVec 32) ValueCell!15351)) mapDefault!50146)))))

(declare-fun e!716757 () Bool)

(declare-fun mapRes!50146 () Bool)

(assert (=> mapNonEmpty!50140 (= tp!95508 (and e!716757 mapRes!50146))))

(declare-fun mapNonEmpty!50146 () Bool)

(declare-fun tp!95517 () Bool)

(assert (=> mapNonEmpty!50146 (= mapRes!50146 (and tp!95517 e!716756))))

(declare-fun mapValue!50146 () ValueCell!15351)

(declare-fun mapRest!50146 () (Array (_ BitVec 32) ValueCell!15351))

(declare-fun mapKey!50146 () (_ BitVec 32))

(assert (=> mapNonEmpty!50146 (= mapRest!50140 (store mapRest!50146 mapKey!50146 mapValue!50146))))

(declare-fun b!1259760 () Bool)

(assert (=> b!1259760 (= e!716757 tp_is_empty!32229)))

(declare-fun mapIsEmpty!50146 () Bool)

(assert (=> mapIsEmpty!50146 mapRes!50146))

(assert (= (and mapNonEmpty!50140 condMapEmpty!50146) mapIsEmpty!50146))

(assert (= (and mapNonEmpty!50140 (not condMapEmpty!50146)) mapNonEmpty!50146))

(assert (= (and mapNonEmpty!50146 ((_ is ValueCellFull!15351) mapValue!50146)) b!1259759))

(assert (= (and mapNonEmpty!50140 ((_ is ValueCellFull!15351) mapDefault!50146)) b!1259760))

(declare-fun m!1160381 () Bool)

(assert (=> mapNonEmpty!50146 m!1160381))

(declare-fun b_lambda!22765 () Bool)

(assert (= b_lambda!22759 (or (and start!105778 b_free!27327) b_lambda!22765)))

(declare-fun b_lambda!22767 () Bool)

(assert (= b_lambda!22757 (or (and start!105778 b_free!27327) b_lambda!22767)))

(declare-fun b_lambda!22769 () Bool)

(assert (= b_lambda!22761 (or (and start!105778 b_free!27327) b_lambda!22769)))

(declare-fun b_lambda!22771 () Bool)

(assert (= b_lambda!22755 (or (and start!105778 b_free!27327) b_lambda!22771)))

(declare-fun b_lambda!22773 () Bool)

(assert (= b_lambda!22753 (or (and start!105778 b_free!27327) b_lambda!22773)))

(declare-fun b_lambda!22775 () Bool)

(assert (= b_lambda!22763 (or (and start!105778 b_free!27327) b_lambda!22775)))

(check-sat (not b!1259739) (not b_lambda!22771) (not b!1259738) (not bm!61879) (not b_next!27327) (not bm!61903) (not b!1259593) (not bm!61900) (not b!1259704) (not b!1259665) (not bm!61905) (not d!138281) (not bm!61876) (not b!1259692) (not bm!61910) (not d!138261) (not b!1259741) (not d!138287) (not b!1259601) (not b!1259666) (not b_lambda!22765) (not bm!61902) (not b!1259747) (not b!1259690) (not b!1259612) (not b!1259750) (not b!1259684) b_and!45235 (not b!1259674) (not d!138277) (not b!1259667) (not b!1259675) (not b!1259596) (not d!138273) (not b!1259680) (not bm!61898) (not b!1259683) (not d!138289) (not b!1259663) (not b!1259736) (not b!1259749) (not b!1259677) tp_is_empty!32229 (not b!1259737) (not b!1259693) (not b_lambda!22767) (not b_lambda!22773) (not b!1259740) (not b!1259602) (not mapNonEmpty!50146) (not b!1259611) (not b!1259744) (not bm!61907) (not b!1259702) (not b!1259735) (not b!1259694) (not d!138275) (not b!1259657) (not b!1259729) (not d!138279) (not d!138271) (not b!1259751) (not bm!61895) (not b!1259595) (not bm!61896) (not b!1259681) (not b!1259682) (not b!1259748) (not d!138283) (not b_lambda!22775) (not b!1259752) (not bm!61911) (not b_lambda!22769) (not b!1259732) (not b!1259701) (not d!138285))
(check-sat b_and!45235 (not b_next!27327))
