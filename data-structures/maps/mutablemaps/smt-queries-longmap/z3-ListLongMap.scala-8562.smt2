; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104580 () Bool)

(assert start!104580)

(declare-fun mapIsEmpty!48709 () Bool)

(declare-fun mapRes!48709 () Bool)

(assert (=> mapIsEmpty!48709 mapRes!48709))

(declare-fun res!832178 () Bool)

(declare-fun e!707334 () Bool)

(assert (=> start!104580 (=> (not res!832178) (not e!707334))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104580 (= res!832178 (validMask!0 mask!1466))))

(assert (=> start!104580 e!707334))

(assert (=> start!104580 true))

(declare-datatypes ((array!80295 0))(
  ( (array!80296 (arr!38716 (Array (_ BitVec 32) (_ BitVec 64))) (size!39253 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80295)

(declare-fun array_inv!29489 (array!80295) Bool)

(assert (=> start!104580 (array_inv!29489 _keys!1118)))

(declare-datatypes ((V!47113 0))(
  ( (V!47114 (val!15718 Int)) )
))
(declare-datatypes ((ValueCell!14892 0))(
  ( (ValueCellFull!14892 (v!18413 V!47113)) (EmptyCell!14892) )
))
(declare-datatypes ((array!80297 0))(
  ( (array!80298 (arr!38717 (Array (_ BitVec 32) ValueCell!14892)) (size!39254 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80297)

(declare-fun e!707336 () Bool)

(declare-fun array_inv!29490 (array!80297) Bool)

(assert (=> start!104580 (and (array_inv!29490 _values!914) e!707336)))

(declare-fun b!1246945 () Bool)

(assert (=> b!1246945 (= e!707334 (bvsgt #b00000000000000000000000000000000 (size!39253 _keys!1118)))))

(declare-fun b!1246946 () Bool)

(declare-fun res!832179 () Bool)

(assert (=> b!1246946 (=> (not res!832179) (not e!707334))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1246946 (= res!832179 (and (= (size!39254 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39253 _keys!1118) (size!39254 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1246947 () Bool)

(declare-fun res!832180 () Bool)

(assert (=> b!1246947 (=> (not res!832180) (not e!707334))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80295 (_ BitVec 32)) Bool)

(assert (=> b!1246947 (= res!832180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1246948 () Bool)

(declare-fun e!707338 () Bool)

(declare-fun tp_is_empty!31311 () Bool)

(assert (=> b!1246948 (= e!707338 tp_is_empty!31311)))

(declare-fun b!1246949 () Bool)

(declare-fun e!707335 () Bool)

(assert (=> b!1246949 (= e!707335 tp_is_empty!31311)))

(declare-fun mapNonEmpty!48709 () Bool)

(declare-fun tp!92811 () Bool)

(assert (=> mapNonEmpty!48709 (= mapRes!48709 (and tp!92811 e!707335))))

(declare-fun mapValue!48709 () ValueCell!14892)

(declare-fun mapRest!48709 () (Array (_ BitVec 32) ValueCell!14892))

(declare-fun mapKey!48709 () (_ BitVec 32))

(assert (=> mapNonEmpty!48709 (= (arr!38717 _values!914) (store mapRest!48709 mapKey!48709 mapValue!48709))))

(declare-fun b!1246950 () Bool)

(assert (=> b!1246950 (= e!707336 (and e!707338 mapRes!48709))))

(declare-fun condMapEmpty!48709 () Bool)

(declare-fun mapDefault!48709 () ValueCell!14892)

(assert (=> b!1246950 (= condMapEmpty!48709 (= (arr!38717 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14892)) mapDefault!48709)))))

(assert (= (and start!104580 res!832178) b!1246946))

(assert (= (and b!1246946 res!832179) b!1246947))

(assert (= (and b!1246947 res!832180) b!1246945))

(assert (= (and b!1246950 condMapEmpty!48709) mapIsEmpty!48709))

(assert (= (and b!1246950 (not condMapEmpty!48709)) mapNonEmpty!48709))

(get-info :version)

(assert (= (and mapNonEmpty!48709 ((_ is ValueCellFull!14892) mapValue!48709)) b!1246949))

(assert (= (and b!1246950 ((_ is ValueCellFull!14892) mapDefault!48709)) b!1246948))

(assert (= start!104580 b!1246950))

(declare-fun m!1148645 () Bool)

(assert (=> start!104580 m!1148645))

(declare-fun m!1148647 () Bool)

(assert (=> start!104580 m!1148647))

(declare-fun m!1148649 () Bool)

(assert (=> start!104580 m!1148649))

(declare-fun m!1148651 () Bool)

(assert (=> b!1246947 m!1148651))

(declare-fun m!1148653 () Bool)

(assert (=> mapNonEmpty!48709 m!1148653))

(check-sat (not b!1246947) (not start!104580) (not mapNonEmpty!48709) tp_is_empty!31311)
(check-sat)
(get-model)

(declare-fun b!1246977 () Bool)

(declare-fun e!707362 () Bool)

(declare-fun e!707360 () Bool)

(assert (=> b!1246977 (= e!707362 e!707360)))

(declare-fun c!122034 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246977 (= c!122034 (validKeyInArray!0 (select (arr!38716 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1246978 () Bool)

(declare-fun call!61550 () Bool)

(assert (=> b!1246978 (= e!707360 call!61550)))

(declare-fun bm!61547 () Bool)

(assert (=> bm!61547 (= call!61550 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1246979 () Bool)

(declare-fun e!707361 () Bool)

(assert (=> b!1246979 (= e!707360 e!707361)))

(declare-fun lt!563151 () (_ BitVec 64))

(assert (=> b!1246979 (= lt!563151 (select (arr!38716 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41407 0))(
  ( (Unit!41408) )
))
(declare-fun lt!563153 () Unit!41407)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80295 (_ BitVec 64) (_ BitVec 32)) Unit!41407)

(assert (=> b!1246979 (= lt!563153 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563151 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1246979 (arrayContainsKey!0 _keys!1118 lt!563151 #b00000000000000000000000000000000)))

(declare-fun lt!563152 () Unit!41407)

(assert (=> b!1246979 (= lt!563152 lt!563153)))

(declare-fun res!832194 () Bool)

(declare-datatypes ((SeekEntryResult!9949 0))(
  ( (MissingZero!9949 (index!42166 (_ BitVec 32))) (Found!9949 (index!42167 (_ BitVec 32))) (Intermediate!9949 (undefined!10761 Bool) (index!42168 (_ BitVec 32)) (x!109565 (_ BitVec 32))) (Undefined!9949) (MissingVacant!9949 (index!42169 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80295 (_ BitVec 32)) SeekEntryResult!9949)

(assert (=> b!1246979 (= res!832194 (= (seekEntryOrOpen!0 (select (arr!38716 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9949 #b00000000000000000000000000000000)))))

(assert (=> b!1246979 (=> (not res!832194) (not e!707361))))

(declare-fun b!1246980 () Bool)

(assert (=> b!1246980 (= e!707361 call!61550)))

(declare-fun d!137639 () Bool)

(declare-fun res!832195 () Bool)

(assert (=> d!137639 (=> res!832195 e!707362)))

(assert (=> d!137639 (= res!832195 (bvsge #b00000000000000000000000000000000 (size!39253 _keys!1118)))))

(assert (=> d!137639 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!707362)))

(assert (= (and d!137639 (not res!832195)) b!1246977))

(assert (= (and b!1246977 c!122034) b!1246979))

(assert (= (and b!1246977 (not c!122034)) b!1246978))

(assert (= (and b!1246979 res!832194) b!1246980))

(assert (= (or b!1246980 b!1246978) bm!61547))

(declare-fun m!1148665 () Bool)

(assert (=> b!1246977 m!1148665))

(assert (=> b!1246977 m!1148665))

(declare-fun m!1148667 () Bool)

(assert (=> b!1246977 m!1148667))

(declare-fun m!1148669 () Bool)

(assert (=> bm!61547 m!1148669))

(assert (=> b!1246979 m!1148665))

(declare-fun m!1148671 () Bool)

(assert (=> b!1246979 m!1148671))

(declare-fun m!1148673 () Bool)

(assert (=> b!1246979 m!1148673))

(assert (=> b!1246979 m!1148665))

(declare-fun m!1148675 () Bool)

(assert (=> b!1246979 m!1148675))

(assert (=> b!1246947 d!137639))

(declare-fun d!137641 () Bool)

(assert (=> d!137641 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104580 d!137641))

(declare-fun d!137643 () Bool)

(assert (=> d!137643 (= (array_inv!29489 _keys!1118) (bvsge (size!39253 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104580 d!137643))

(declare-fun d!137645 () Bool)

(assert (=> d!137645 (= (array_inv!29490 _values!914) (bvsge (size!39254 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104580 d!137645))

(declare-fun mapIsEmpty!48715 () Bool)

(declare-fun mapRes!48715 () Bool)

(assert (=> mapIsEmpty!48715 mapRes!48715))

(declare-fun condMapEmpty!48715 () Bool)

(declare-fun mapDefault!48715 () ValueCell!14892)

(assert (=> mapNonEmpty!48709 (= condMapEmpty!48715 (= mapRest!48709 ((as const (Array (_ BitVec 32) ValueCell!14892)) mapDefault!48715)))))

(declare-fun e!707367 () Bool)

(assert (=> mapNonEmpty!48709 (= tp!92811 (and e!707367 mapRes!48715))))

(declare-fun b!1246988 () Bool)

(assert (=> b!1246988 (= e!707367 tp_is_empty!31311)))

(declare-fun mapNonEmpty!48715 () Bool)

(declare-fun tp!92817 () Bool)

(declare-fun e!707368 () Bool)

(assert (=> mapNonEmpty!48715 (= mapRes!48715 (and tp!92817 e!707368))))

(declare-fun mapKey!48715 () (_ BitVec 32))

(declare-fun mapRest!48715 () (Array (_ BitVec 32) ValueCell!14892))

(declare-fun mapValue!48715 () ValueCell!14892)

(assert (=> mapNonEmpty!48715 (= mapRest!48709 (store mapRest!48715 mapKey!48715 mapValue!48715))))

(declare-fun b!1246987 () Bool)

(assert (=> b!1246987 (= e!707368 tp_is_empty!31311)))

(assert (= (and mapNonEmpty!48709 condMapEmpty!48715) mapIsEmpty!48715))

(assert (= (and mapNonEmpty!48709 (not condMapEmpty!48715)) mapNonEmpty!48715))

(assert (= (and mapNonEmpty!48715 ((_ is ValueCellFull!14892) mapValue!48715)) b!1246987))

(assert (= (and mapNonEmpty!48709 ((_ is ValueCellFull!14892) mapDefault!48715)) b!1246988))

(declare-fun m!1148677 () Bool)

(assert (=> mapNonEmpty!48715 m!1148677))

(check-sat (not b!1246977) (not b!1246979) (not mapNonEmpty!48715) (not bm!61547) tp_is_empty!31311)
(check-sat)
