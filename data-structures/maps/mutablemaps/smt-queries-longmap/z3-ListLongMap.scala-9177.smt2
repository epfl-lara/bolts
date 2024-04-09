; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110410 () Bool)

(assert start!110410)

(declare-fun mapIsEmpty!54082 () Bool)

(declare-fun mapRes!54082 () Bool)

(assert (=> mapIsEmpty!54082 mapRes!54082))

(declare-fun b!1306081 () Bool)

(declare-fun e!745099 () Bool)

(declare-fun tp_is_empty!34977 () Bool)

(assert (=> b!1306081 (= e!745099 tp_is_empty!34977)))

(declare-fun res!867192 () Bool)

(declare-fun e!745101 () Bool)

(assert (=> start!110410 (=> (not res!867192) (not e!745101))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110410 (= res!867192 (validMask!0 mask!2040))))

(assert (=> start!110410 e!745101))

(assert (=> start!110410 true))

(declare-datatypes ((V!51739 0))(
  ( (V!51740 (val!17563 Int)) )
))
(declare-datatypes ((ValueCell!16590 0))(
  ( (ValueCellFull!16590 (v!20187 V!51739)) (EmptyCell!16590) )
))
(declare-datatypes ((array!86939 0))(
  ( (array!86940 (arr!41949 (Array (_ BitVec 32) ValueCell!16590)) (size!42500 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86939)

(declare-fun e!745100 () Bool)

(declare-fun array_inv!31723 (array!86939) Bool)

(assert (=> start!110410 (and (array_inv!31723 _values!1354) e!745100)))

(declare-datatypes ((array!86941 0))(
  ( (array!86942 (arr!41950 (Array (_ BitVec 32) (_ BitVec 64))) (size!42501 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86941)

(declare-fun array_inv!31724 (array!86941) Bool)

(assert (=> start!110410 (array_inv!31724 _keys!1628)))

(declare-fun b!1306082 () Bool)

(declare-fun res!867191 () Bool)

(assert (=> b!1306082 (=> (not res!867191) (not e!745101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86941 (_ BitVec 32)) Bool)

(assert (=> b!1306082 (= res!867191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306083 () Bool)

(declare-fun res!867190 () Bool)

(assert (=> b!1306083 (=> (not res!867190) (not e!745101))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306083 (= res!867190 (and (= (size!42500 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42501 _keys!1628) (size!42500 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306084 () Bool)

(assert (=> b!1306084 (= e!745101 (bvsgt #b00000000000000000000000000000000 (size!42501 _keys!1628)))))

(declare-fun b!1306085 () Bool)

(declare-fun e!745097 () Bool)

(assert (=> b!1306085 (= e!745097 tp_is_empty!34977)))

(declare-fun mapNonEmpty!54082 () Bool)

(declare-fun tp!103163 () Bool)

(assert (=> mapNonEmpty!54082 (= mapRes!54082 (and tp!103163 e!745099))))

(declare-fun mapKey!54082 () (_ BitVec 32))

(declare-fun mapRest!54082 () (Array (_ BitVec 32) ValueCell!16590))

(declare-fun mapValue!54082 () ValueCell!16590)

(assert (=> mapNonEmpty!54082 (= (arr!41949 _values!1354) (store mapRest!54082 mapKey!54082 mapValue!54082))))

(declare-fun b!1306086 () Bool)

(assert (=> b!1306086 (= e!745100 (and e!745097 mapRes!54082))))

(declare-fun condMapEmpty!54082 () Bool)

(declare-fun mapDefault!54082 () ValueCell!16590)

(assert (=> b!1306086 (= condMapEmpty!54082 (= (arr!41949 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16590)) mapDefault!54082)))))

(assert (= (and start!110410 res!867192) b!1306083))

(assert (= (and b!1306083 res!867190) b!1306082))

(assert (= (and b!1306082 res!867191) b!1306084))

(assert (= (and b!1306086 condMapEmpty!54082) mapIsEmpty!54082))

(assert (= (and b!1306086 (not condMapEmpty!54082)) mapNonEmpty!54082))

(get-info :version)

(assert (= (and mapNonEmpty!54082 ((_ is ValueCellFull!16590) mapValue!54082)) b!1306081))

(assert (= (and b!1306086 ((_ is ValueCellFull!16590) mapDefault!54082)) b!1306085))

(assert (= start!110410 b!1306086))

(declare-fun m!1197257 () Bool)

(assert (=> start!110410 m!1197257))

(declare-fun m!1197259 () Bool)

(assert (=> start!110410 m!1197259))

(declare-fun m!1197261 () Bool)

(assert (=> start!110410 m!1197261))

(declare-fun m!1197263 () Bool)

(assert (=> b!1306082 m!1197263))

(declare-fun m!1197265 () Bool)

(assert (=> mapNonEmpty!54082 m!1197265))

(check-sat (not b!1306082) (not start!110410) (not mapNonEmpty!54082) tp_is_empty!34977)
(check-sat)
(get-model)

(declare-fun b!1306113 () Bool)

(declare-fun e!745123 () Bool)

(declare-fun call!64619 () Bool)

(assert (=> b!1306113 (= e!745123 call!64619)))

(declare-fun bm!64616 () Bool)

(assert (=> bm!64616 (= call!64619 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(declare-fun b!1306114 () Bool)

(declare-fun e!745125 () Bool)

(assert (=> b!1306114 (= e!745125 e!745123)))

(declare-fun c!125480 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1306114 (= c!125480 (validKeyInArray!0 (select (arr!41950 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1306115 () Bool)

(declare-fun e!745124 () Bool)

(assert (=> b!1306115 (= e!745123 e!745124)))

(declare-fun lt!584827 () (_ BitVec 64))

(assert (=> b!1306115 (= lt!584827 (select (arr!41950 _keys!1628) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43214 0))(
  ( (Unit!43215) )
))
(declare-fun lt!584828 () Unit!43214)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86941 (_ BitVec 64) (_ BitVec 32)) Unit!43214)

(assert (=> b!1306115 (= lt!584828 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!584827 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1306115 (arrayContainsKey!0 _keys!1628 lt!584827 #b00000000000000000000000000000000)))

(declare-fun lt!584829 () Unit!43214)

(assert (=> b!1306115 (= lt!584829 lt!584828)))

(declare-fun res!867207 () Bool)

(declare-datatypes ((SeekEntryResult!10028 0))(
  ( (MissingZero!10028 (index!42482 (_ BitVec 32))) (Found!10028 (index!42483 (_ BitVec 32))) (Intermediate!10028 (undefined!10840 Bool) (index!42484 (_ BitVec 32)) (x!115989 (_ BitVec 32))) (Undefined!10028) (MissingVacant!10028 (index!42485 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86941 (_ BitVec 32)) SeekEntryResult!10028)

(assert (=> b!1306115 (= res!867207 (= (seekEntryOrOpen!0 (select (arr!41950 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) (Found!10028 #b00000000000000000000000000000000)))))

(assert (=> b!1306115 (=> (not res!867207) (not e!745124))))

(declare-fun b!1306116 () Bool)

(assert (=> b!1306116 (= e!745124 call!64619)))

(declare-fun d!142139 () Bool)

(declare-fun res!867206 () Bool)

(assert (=> d!142139 (=> res!867206 e!745125)))

(assert (=> d!142139 (= res!867206 (bvsge #b00000000000000000000000000000000 (size!42501 _keys!1628)))))

(assert (=> d!142139 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040) e!745125)))

(assert (= (and d!142139 (not res!867206)) b!1306114))

(assert (= (and b!1306114 c!125480) b!1306115))

(assert (= (and b!1306114 (not c!125480)) b!1306113))

(assert (= (and b!1306115 res!867207) b!1306116))

(assert (= (or b!1306116 b!1306113) bm!64616))

(declare-fun m!1197277 () Bool)

(assert (=> bm!64616 m!1197277))

(declare-fun m!1197279 () Bool)

(assert (=> b!1306114 m!1197279))

(assert (=> b!1306114 m!1197279))

(declare-fun m!1197281 () Bool)

(assert (=> b!1306114 m!1197281))

(assert (=> b!1306115 m!1197279))

(declare-fun m!1197283 () Bool)

(assert (=> b!1306115 m!1197283))

(declare-fun m!1197285 () Bool)

(assert (=> b!1306115 m!1197285))

(assert (=> b!1306115 m!1197279))

(declare-fun m!1197287 () Bool)

(assert (=> b!1306115 m!1197287))

(assert (=> b!1306082 d!142139))

(declare-fun d!142141 () Bool)

(assert (=> d!142141 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!110410 d!142141))

(declare-fun d!142143 () Bool)

(assert (=> d!142143 (= (array_inv!31723 _values!1354) (bvsge (size!42500 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!110410 d!142143))

(declare-fun d!142145 () Bool)

(assert (=> d!142145 (= (array_inv!31724 _keys!1628) (bvsge (size!42501 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!110410 d!142145))

(declare-fun condMapEmpty!54088 () Bool)

(declare-fun mapDefault!54088 () ValueCell!16590)

(assert (=> mapNonEmpty!54082 (= condMapEmpty!54088 (= mapRest!54082 ((as const (Array (_ BitVec 32) ValueCell!16590)) mapDefault!54088)))))

(declare-fun e!745130 () Bool)

(declare-fun mapRes!54088 () Bool)

(assert (=> mapNonEmpty!54082 (= tp!103163 (and e!745130 mapRes!54088))))

(declare-fun b!1306124 () Bool)

(assert (=> b!1306124 (= e!745130 tp_is_empty!34977)))

(declare-fun mapNonEmpty!54088 () Bool)

(declare-fun tp!103169 () Bool)

(declare-fun e!745131 () Bool)

(assert (=> mapNonEmpty!54088 (= mapRes!54088 (and tp!103169 e!745131))))

(declare-fun mapKey!54088 () (_ BitVec 32))

(declare-fun mapValue!54088 () ValueCell!16590)

(declare-fun mapRest!54088 () (Array (_ BitVec 32) ValueCell!16590))

(assert (=> mapNonEmpty!54088 (= mapRest!54082 (store mapRest!54088 mapKey!54088 mapValue!54088))))

(declare-fun b!1306123 () Bool)

(assert (=> b!1306123 (= e!745131 tp_is_empty!34977)))

(declare-fun mapIsEmpty!54088 () Bool)

(assert (=> mapIsEmpty!54088 mapRes!54088))

(assert (= (and mapNonEmpty!54082 condMapEmpty!54088) mapIsEmpty!54088))

(assert (= (and mapNonEmpty!54082 (not condMapEmpty!54088)) mapNonEmpty!54088))

(assert (= (and mapNonEmpty!54088 ((_ is ValueCellFull!16590) mapValue!54088)) b!1306123))

(assert (= (and mapNonEmpty!54082 ((_ is ValueCellFull!16590) mapDefault!54088)) b!1306124))

(declare-fun m!1197289 () Bool)

(assert (=> mapNonEmpty!54088 m!1197289))

(check-sat (not mapNonEmpty!54088) (not bm!64616) tp_is_empty!34977 (not b!1306115) (not b!1306114))
(check-sat)
