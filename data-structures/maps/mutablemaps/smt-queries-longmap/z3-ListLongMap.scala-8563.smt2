; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104594 () Bool)

(assert start!104594)

(declare-fun b!1247019 () Bool)

(declare-fun e!707397 () Bool)

(declare-datatypes ((array!80309 0))(
  ( (array!80310 (arr!38722 (Array (_ BitVec 32) (_ BitVec 64))) (size!39259 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80309)

(assert (=> b!1247019 (= e!707397 (and (bvsle #b00000000000000000000000000000000 (size!39259 _keys!1118)) (bvsge (size!39259 _keys!1118) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!48721 () Bool)

(declare-fun mapRes!48721 () Bool)

(assert (=> mapIsEmpty!48721 mapRes!48721))

(declare-fun b!1247020 () Bool)

(declare-fun res!832212 () Bool)

(assert (=> b!1247020 (=> (not res!832212) (not e!707397))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47121 0))(
  ( (V!47122 (val!15721 Int)) )
))
(declare-datatypes ((ValueCell!14895 0))(
  ( (ValueCellFull!14895 (v!18416 V!47121)) (EmptyCell!14895) )
))
(declare-datatypes ((array!80311 0))(
  ( (array!80312 (arr!38723 (Array (_ BitVec 32) ValueCell!14895)) (size!39260 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80311)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1247020 (= res!832212 (and (= (size!39260 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39259 _keys!1118) (size!39260 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247021 () Bool)

(declare-fun e!707396 () Bool)

(declare-fun e!707398 () Bool)

(assert (=> b!1247021 (= e!707396 (and e!707398 mapRes!48721))))

(declare-fun condMapEmpty!48721 () Bool)

(declare-fun mapDefault!48721 () ValueCell!14895)

(assert (=> b!1247021 (= condMapEmpty!48721 (= (arr!38723 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14895)) mapDefault!48721)))))

(declare-fun b!1247022 () Bool)

(declare-fun res!832211 () Bool)

(assert (=> b!1247022 (=> (not res!832211) (not e!707397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80309 (_ BitVec 32)) Bool)

(assert (=> b!1247022 (= res!832211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!832213 () Bool)

(assert (=> start!104594 (=> (not res!832213) (not e!707397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104594 (= res!832213 (validMask!0 mask!1466))))

(assert (=> start!104594 e!707397))

(assert (=> start!104594 true))

(declare-fun array_inv!29493 (array!80309) Bool)

(assert (=> start!104594 (array_inv!29493 _keys!1118)))

(declare-fun array_inv!29494 (array!80311) Bool)

(assert (=> start!104594 (and (array_inv!29494 _values!914) e!707396)))

(declare-fun b!1247023 () Bool)

(declare-fun e!707395 () Bool)

(declare-fun tp_is_empty!31317 () Bool)

(assert (=> b!1247023 (= e!707395 tp_is_empty!31317)))

(declare-fun b!1247024 () Bool)

(assert (=> b!1247024 (= e!707398 tp_is_empty!31317)))

(declare-fun mapNonEmpty!48721 () Bool)

(declare-fun tp!92823 () Bool)

(assert (=> mapNonEmpty!48721 (= mapRes!48721 (and tp!92823 e!707395))))

(declare-fun mapRest!48721 () (Array (_ BitVec 32) ValueCell!14895))

(declare-fun mapKey!48721 () (_ BitVec 32))

(declare-fun mapValue!48721 () ValueCell!14895)

(assert (=> mapNonEmpty!48721 (= (arr!38723 _values!914) (store mapRest!48721 mapKey!48721 mapValue!48721))))

(assert (= (and start!104594 res!832213) b!1247020))

(assert (= (and b!1247020 res!832212) b!1247022))

(assert (= (and b!1247022 res!832211) b!1247019))

(assert (= (and b!1247021 condMapEmpty!48721) mapIsEmpty!48721))

(assert (= (and b!1247021 (not condMapEmpty!48721)) mapNonEmpty!48721))

(get-info :version)

(assert (= (and mapNonEmpty!48721 ((_ is ValueCellFull!14895) mapValue!48721)) b!1247023))

(assert (= (and b!1247021 ((_ is ValueCellFull!14895) mapDefault!48721)) b!1247024))

(assert (= start!104594 b!1247021))

(declare-fun m!1148689 () Bool)

(assert (=> b!1247022 m!1148689))

(declare-fun m!1148691 () Bool)

(assert (=> start!104594 m!1148691))

(declare-fun m!1148693 () Bool)

(assert (=> start!104594 m!1148693))

(declare-fun m!1148695 () Bool)

(assert (=> start!104594 m!1148695))

(declare-fun m!1148697 () Bool)

(assert (=> mapNonEmpty!48721 m!1148697))

(check-sat (not b!1247022) (not start!104594) (not mapNonEmpty!48721) tp_is_empty!31317)
(check-sat)
(get-model)

(declare-fun bm!61550 () Bool)

(declare-fun call!61553 () Bool)

(assert (=> bm!61550 (= call!61553 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1247051 () Bool)

(declare-fun e!707422 () Bool)

(assert (=> b!1247051 (= e!707422 call!61553)))

(declare-fun b!1247052 () Bool)

(declare-fun e!707420 () Bool)

(assert (=> b!1247052 (= e!707420 e!707422)))

(declare-fun c!122037 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1247052 (= c!122037 (validKeyInArray!0 (select (arr!38722 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247053 () Bool)

(declare-fun e!707421 () Bool)

(assert (=> b!1247053 (= e!707421 call!61553)))

(declare-fun d!137649 () Bool)

(declare-fun res!832227 () Bool)

(assert (=> d!137649 (=> res!832227 e!707420)))

(assert (=> d!137649 (= res!832227 (bvsge #b00000000000000000000000000000000 (size!39259 _keys!1118)))))

(assert (=> d!137649 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!707420)))

(declare-fun b!1247054 () Bool)

(assert (=> b!1247054 (= e!707422 e!707421)))

(declare-fun lt!563160 () (_ BitVec 64))

(assert (=> b!1247054 (= lt!563160 (select (arr!38722 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41409 0))(
  ( (Unit!41410) )
))
(declare-fun lt!563162 () Unit!41409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80309 (_ BitVec 64) (_ BitVec 32)) Unit!41409)

(assert (=> b!1247054 (= lt!563162 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563160 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1247054 (arrayContainsKey!0 _keys!1118 lt!563160 #b00000000000000000000000000000000)))

(declare-fun lt!563161 () Unit!41409)

(assert (=> b!1247054 (= lt!563161 lt!563162)))

(declare-fun res!832228 () Bool)

(declare-datatypes ((SeekEntryResult!9950 0))(
  ( (MissingZero!9950 (index!42170 (_ BitVec 32))) (Found!9950 (index!42171 (_ BitVec 32))) (Intermediate!9950 (undefined!10762 Bool) (index!42172 (_ BitVec 32)) (x!109576 (_ BitVec 32))) (Undefined!9950) (MissingVacant!9950 (index!42173 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80309 (_ BitVec 32)) SeekEntryResult!9950)

(assert (=> b!1247054 (= res!832228 (= (seekEntryOrOpen!0 (select (arr!38722 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9950 #b00000000000000000000000000000000)))))

(assert (=> b!1247054 (=> (not res!832228) (not e!707421))))

(assert (= (and d!137649 (not res!832227)) b!1247052))

(assert (= (and b!1247052 c!122037) b!1247054))

(assert (= (and b!1247052 (not c!122037)) b!1247051))

(assert (= (and b!1247054 res!832228) b!1247053))

(assert (= (or b!1247053 b!1247051) bm!61550))

(declare-fun m!1148709 () Bool)

(assert (=> bm!61550 m!1148709))

(declare-fun m!1148711 () Bool)

(assert (=> b!1247052 m!1148711))

(assert (=> b!1247052 m!1148711))

(declare-fun m!1148713 () Bool)

(assert (=> b!1247052 m!1148713))

(assert (=> b!1247054 m!1148711))

(declare-fun m!1148715 () Bool)

(assert (=> b!1247054 m!1148715))

(declare-fun m!1148717 () Bool)

(assert (=> b!1247054 m!1148717))

(assert (=> b!1247054 m!1148711))

(declare-fun m!1148719 () Bool)

(assert (=> b!1247054 m!1148719))

(assert (=> b!1247022 d!137649))

(declare-fun d!137651 () Bool)

(assert (=> d!137651 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104594 d!137651))

(declare-fun d!137653 () Bool)

(assert (=> d!137653 (= (array_inv!29493 _keys!1118) (bvsge (size!39259 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104594 d!137653))

(declare-fun d!137655 () Bool)

(assert (=> d!137655 (= (array_inv!29494 _values!914) (bvsge (size!39260 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104594 d!137655))

(declare-fun b!1247061 () Bool)

(declare-fun e!707427 () Bool)

(assert (=> b!1247061 (= e!707427 tp_is_empty!31317)))

(declare-fun condMapEmpty!48727 () Bool)

(declare-fun mapDefault!48727 () ValueCell!14895)

(assert (=> mapNonEmpty!48721 (= condMapEmpty!48727 (= mapRest!48721 ((as const (Array (_ BitVec 32) ValueCell!14895)) mapDefault!48727)))))

(declare-fun e!707428 () Bool)

(declare-fun mapRes!48727 () Bool)

(assert (=> mapNonEmpty!48721 (= tp!92823 (and e!707428 mapRes!48727))))

(declare-fun mapNonEmpty!48727 () Bool)

(declare-fun tp!92829 () Bool)

(assert (=> mapNonEmpty!48727 (= mapRes!48727 (and tp!92829 e!707427))))

(declare-fun mapKey!48727 () (_ BitVec 32))

(declare-fun mapValue!48727 () ValueCell!14895)

(declare-fun mapRest!48727 () (Array (_ BitVec 32) ValueCell!14895))

(assert (=> mapNonEmpty!48727 (= mapRest!48721 (store mapRest!48727 mapKey!48727 mapValue!48727))))

(declare-fun b!1247062 () Bool)

(assert (=> b!1247062 (= e!707428 tp_is_empty!31317)))

(declare-fun mapIsEmpty!48727 () Bool)

(assert (=> mapIsEmpty!48727 mapRes!48727))

(assert (= (and mapNonEmpty!48721 condMapEmpty!48727) mapIsEmpty!48727))

(assert (= (and mapNonEmpty!48721 (not condMapEmpty!48727)) mapNonEmpty!48727))

(assert (= (and mapNonEmpty!48727 ((_ is ValueCellFull!14895) mapValue!48727)) b!1247061))

(assert (= (and mapNonEmpty!48721 ((_ is ValueCellFull!14895) mapDefault!48727)) b!1247062))

(declare-fun m!1148721 () Bool)

(assert (=> mapNonEmpty!48727 m!1148721))

(check-sat (not b!1247054) (not b!1247052) (not mapNonEmpty!48727) (not bm!61550) tp_is_empty!31317)
(check-sat)
