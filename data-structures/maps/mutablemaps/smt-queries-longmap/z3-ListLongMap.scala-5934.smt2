; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77412 () Bool)

(assert start!77412)

(declare-fun b!902094 () Bool)

(declare-fun e!505212 () Bool)

(declare-datatypes ((array!52920 0))(
  ( (array!52921 (arr!25420 (Array (_ BitVec 32) (_ BitVec 64))) (size!25880 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52920)

(assert (=> b!902094 (= e!505212 (bvsgt #b00000000000000000000000000000000 (size!25880 _keys!1386)))))

(declare-fun b!902095 () Bool)

(declare-fun e!505211 () Bool)

(declare-fun e!505210 () Bool)

(declare-fun mapRes!29350 () Bool)

(assert (=> b!902095 (= e!505211 (and e!505210 mapRes!29350))))

(declare-fun condMapEmpty!29350 () Bool)

(declare-datatypes ((V!29545 0))(
  ( (V!29546 (val!9268 Int)) )
))
(declare-datatypes ((ValueCell!8736 0))(
  ( (ValueCellFull!8736 (v!11772 V!29545)) (EmptyCell!8736) )
))
(declare-datatypes ((array!52922 0))(
  ( (array!52923 (arr!25421 (Array (_ BitVec 32) ValueCell!8736)) (size!25881 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52922)

(declare-fun mapDefault!29350 () ValueCell!8736)

(assert (=> b!902095 (= condMapEmpty!29350 (= (arr!25421 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8736)) mapDefault!29350)))))

(declare-fun b!902096 () Bool)

(declare-fun tp_is_empty!18435 () Bool)

(assert (=> b!902096 (= e!505210 tp_is_empty!18435)))

(declare-fun mapIsEmpty!29350 () Bool)

(assert (=> mapIsEmpty!29350 mapRes!29350))

(declare-fun res!608920 () Bool)

(assert (=> start!77412 (=> (not res!608920) (not e!505212))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77412 (= res!608920 (validMask!0 mask!1756))))

(assert (=> start!77412 e!505212))

(assert (=> start!77412 true))

(declare-fun array_inv!19910 (array!52922) Bool)

(assert (=> start!77412 (and (array_inv!19910 _values!1152) e!505211)))

(declare-fun array_inv!19911 (array!52920) Bool)

(assert (=> start!77412 (array_inv!19911 _keys!1386)))

(declare-fun b!902097 () Bool)

(declare-fun res!608919 () Bool)

(assert (=> b!902097 (=> (not res!608919) (not e!505212))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52920 (_ BitVec 32)) Bool)

(assert (=> b!902097 (= res!608919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902098 () Bool)

(declare-fun res!608918 () Bool)

(assert (=> b!902098 (=> (not res!608918) (not e!505212))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902098 (= res!608918 (and (= (size!25881 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25880 _keys!1386) (size!25881 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!29350 () Bool)

(declare-fun tp!56410 () Bool)

(declare-fun e!505209 () Bool)

(assert (=> mapNonEmpty!29350 (= mapRes!29350 (and tp!56410 e!505209))))

(declare-fun mapKey!29350 () (_ BitVec 32))

(declare-fun mapValue!29350 () ValueCell!8736)

(declare-fun mapRest!29350 () (Array (_ BitVec 32) ValueCell!8736))

(assert (=> mapNonEmpty!29350 (= (arr!25421 _values!1152) (store mapRest!29350 mapKey!29350 mapValue!29350))))

(declare-fun b!902099 () Bool)

(assert (=> b!902099 (= e!505209 tp_is_empty!18435)))

(assert (= (and start!77412 res!608920) b!902098))

(assert (= (and b!902098 res!608918) b!902097))

(assert (= (and b!902097 res!608919) b!902094))

(assert (= (and b!902095 condMapEmpty!29350) mapIsEmpty!29350))

(assert (= (and b!902095 (not condMapEmpty!29350)) mapNonEmpty!29350))

(get-info :version)

(assert (= (and mapNonEmpty!29350 ((_ is ValueCellFull!8736) mapValue!29350)) b!902099))

(assert (= (and b!902095 ((_ is ValueCellFull!8736) mapDefault!29350)) b!902096))

(assert (= start!77412 b!902095))

(declare-fun m!838279 () Bool)

(assert (=> start!77412 m!838279))

(declare-fun m!838281 () Bool)

(assert (=> start!77412 m!838281))

(declare-fun m!838283 () Bool)

(assert (=> start!77412 m!838283))

(declare-fun m!838285 () Bool)

(assert (=> b!902097 m!838285))

(declare-fun m!838287 () Bool)

(assert (=> mapNonEmpty!29350 m!838287))

(check-sat (not b!902097) (not start!77412) (not mapNonEmpty!29350) tp_is_empty!18435)
(check-sat)
(get-model)

(declare-fun b!902126 () Bool)

(declare-fun e!505235 () Bool)

(declare-fun e!505236 () Bool)

(assert (=> b!902126 (= e!505235 e!505236)))

(declare-fun lt!407789 () (_ BitVec 64))

(assert (=> b!902126 (= lt!407789 (select (arr!25420 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30603 0))(
  ( (Unit!30604) )
))
(declare-fun lt!407791 () Unit!30603)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52920 (_ BitVec 64) (_ BitVec 32)) Unit!30603)

(assert (=> b!902126 (= lt!407791 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!407789 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!902126 (arrayContainsKey!0 _keys!1386 lt!407789 #b00000000000000000000000000000000)))

(declare-fun lt!407790 () Unit!30603)

(assert (=> b!902126 (= lt!407790 lt!407791)))

(declare-fun res!608934 () Bool)

(declare-datatypes ((SeekEntryResult!8945 0))(
  ( (MissingZero!8945 (index!38150 (_ BitVec 32))) (Found!8945 (index!38151 (_ BitVec 32))) (Intermediate!8945 (undefined!9757 Bool) (index!38152 (_ BitVec 32)) (x!76879 (_ BitVec 32))) (Undefined!8945) (MissingVacant!8945 (index!38153 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52920 (_ BitVec 32)) SeekEntryResult!8945)

(assert (=> b!902126 (= res!608934 (= (seekEntryOrOpen!0 (select (arr!25420 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8945 #b00000000000000000000000000000000)))))

(assert (=> b!902126 (=> (not res!608934) (not e!505236))))

(declare-fun bm!40234 () Bool)

(declare-fun call!40237 () Bool)

(assert (=> bm!40234 (= call!40237 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!902127 () Bool)

(assert (=> b!902127 (= e!505236 call!40237)))

(declare-fun b!902129 () Bool)

(declare-fun e!505234 () Bool)

(assert (=> b!902129 (= e!505234 e!505235)))

(declare-fun c!95551 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!902129 (= c!95551 (validKeyInArray!0 (select (arr!25420 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!111851 () Bool)

(declare-fun res!608935 () Bool)

(assert (=> d!111851 (=> res!608935 e!505234)))

(assert (=> d!111851 (= res!608935 (bvsge #b00000000000000000000000000000000 (size!25880 _keys!1386)))))

(assert (=> d!111851 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!505234)))

(declare-fun b!902128 () Bool)

(assert (=> b!902128 (= e!505235 call!40237)))

(assert (= (and d!111851 (not res!608935)) b!902129))

(assert (= (and b!902129 c!95551) b!902126))

(assert (= (and b!902129 (not c!95551)) b!902128))

(assert (= (and b!902126 res!608934) b!902127))

(assert (= (or b!902127 b!902128) bm!40234))

(declare-fun m!838299 () Bool)

(assert (=> b!902126 m!838299))

(declare-fun m!838301 () Bool)

(assert (=> b!902126 m!838301))

(declare-fun m!838303 () Bool)

(assert (=> b!902126 m!838303))

(assert (=> b!902126 m!838299))

(declare-fun m!838305 () Bool)

(assert (=> b!902126 m!838305))

(declare-fun m!838307 () Bool)

(assert (=> bm!40234 m!838307))

(assert (=> b!902129 m!838299))

(assert (=> b!902129 m!838299))

(declare-fun m!838309 () Bool)

(assert (=> b!902129 m!838309))

(assert (=> b!902097 d!111851))

(declare-fun d!111853 () Bool)

(assert (=> d!111853 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77412 d!111853))

(declare-fun d!111855 () Bool)

(assert (=> d!111855 (= (array_inv!19910 _values!1152) (bvsge (size!25881 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77412 d!111855))

(declare-fun d!111857 () Bool)

(assert (=> d!111857 (= (array_inv!19911 _keys!1386) (bvsge (size!25880 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77412 d!111857))

(declare-fun b!902136 () Bool)

(declare-fun e!505241 () Bool)

(assert (=> b!902136 (= e!505241 tp_is_empty!18435)))

(declare-fun condMapEmpty!29356 () Bool)

(declare-fun mapDefault!29356 () ValueCell!8736)

(assert (=> mapNonEmpty!29350 (= condMapEmpty!29356 (= mapRest!29350 ((as const (Array (_ BitVec 32) ValueCell!8736)) mapDefault!29356)))))

(declare-fun e!505242 () Bool)

(declare-fun mapRes!29356 () Bool)

(assert (=> mapNonEmpty!29350 (= tp!56410 (and e!505242 mapRes!29356))))

(declare-fun b!902137 () Bool)

(assert (=> b!902137 (= e!505242 tp_is_empty!18435)))

(declare-fun mapNonEmpty!29356 () Bool)

(declare-fun tp!56416 () Bool)

(assert (=> mapNonEmpty!29356 (= mapRes!29356 (and tp!56416 e!505241))))

(declare-fun mapKey!29356 () (_ BitVec 32))

(declare-fun mapValue!29356 () ValueCell!8736)

(declare-fun mapRest!29356 () (Array (_ BitVec 32) ValueCell!8736))

(assert (=> mapNonEmpty!29356 (= mapRest!29350 (store mapRest!29356 mapKey!29356 mapValue!29356))))

(declare-fun mapIsEmpty!29356 () Bool)

(assert (=> mapIsEmpty!29356 mapRes!29356))

(assert (= (and mapNonEmpty!29350 condMapEmpty!29356) mapIsEmpty!29356))

(assert (= (and mapNonEmpty!29350 (not condMapEmpty!29356)) mapNonEmpty!29356))

(assert (= (and mapNonEmpty!29356 ((_ is ValueCellFull!8736) mapValue!29356)) b!902136))

(assert (= (and mapNonEmpty!29350 ((_ is ValueCellFull!8736) mapDefault!29356)) b!902137))

(declare-fun m!838311 () Bool)

(assert (=> mapNonEmpty!29356 m!838311))

(check-sat (not bm!40234) (not b!902129) tp_is_empty!18435 (not b!902126) (not mapNonEmpty!29356))
(check-sat)
