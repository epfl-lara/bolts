; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104690 () Bool)

(assert start!104690)

(declare-fun b!1247734 () Bool)

(declare-fun res!832588 () Bool)

(declare-fun e!707963 () Bool)

(assert (=> b!1247734 (=> (not res!832588) (not e!707963))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80435 0))(
  ( (array!80436 (arr!38782 (Array (_ BitVec 32) (_ BitVec 64))) (size!39319 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80435)

(declare-datatypes ((V!47209 0))(
  ( (V!47210 (val!15754 Int)) )
))
(declare-datatypes ((ValueCell!14928 0))(
  ( (ValueCellFull!14928 (v!18450 V!47209)) (EmptyCell!14928) )
))
(declare-datatypes ((array!80437 0))(
  ( (array!80438 (arr!38783 (Array (_ BitVec 32) ValueCell!14928)) (size!39320 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80437)

(assert (=> b!1247734 (= res!832588 (and (= (size!39320 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39319 _keys!1118) (size!39320 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247735 () Bool)

(declare-fun e!707966 () Bool)

(declare-fun e!707964 () Bool)

(declare-fun mapRes!48829 () Bool)

(assert (=> b!1247735 (= e!707966 (and e!707964 mapRes!48829))))

(declare-fun condMapEmpty!48829 () Bool)

(declare-fun mapDefault!48829 () ValueCell!14928)

(assert (=> b!1247735 (= condMapEmpty!48829 (= (arr!38783 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14928)) mapDefault!48829)))))

(declare-fun b!1247736 () Bool)

(declare-fun res!832589 () Bool)

(assert (=> b!1247736 (=> (not res!832589) (not e!707963))))

(declare-datatypes ((List!27706 0))(
  ( (Nil!27703) (Cons!27702 (h!28911 (_ BitVec 64)) (t!41182 List!27706)) )
))
(declare-fun arrayNoDuplicates!0 (array!80435 (_ BitVec 32) List!27706) Bool)

(assert (=> b!1247736 (= res!832589 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27703))))

(declare-fun b!1247737 () Bool)

(declare-fun tp_is_empty!31383 () Bool)

(assert (=> b!1247737 (= e!707964 tp_is_empty!31383)))

(declare-fun b!1247738 () Bool)

(declare-fun e!707967 () Bool)

(assert (=> b!1247738 (= e!707967 tp_is_empty!31383)))

(declare-fun b!1247739 () Bool)

(assert (=> b!1247739 (= e!707963 (bvsgt #b00000000000000000000000000000000 (size!39319 _keys!1118)))))

(declare-fun res!832590 () Bool)

(assert (=> start!104690 (=> (not res!832590) (not e!707963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104690 (= res!832590 (validMask!0 mask!1466))))

(assert (=> start!104690 e!707963))

(assert (=> start!104690 true))

(declare-fun array_inv!29533 (array!80435) Bool)

(assert (=> start!104690 (array_inv!29533 _keys!1118)))

(declare-fun array_inv!29534 (array!80437) Bool)

(assert (=> start!104690 (and (array_inv!29534 _values!914) e!707966)))

(declare-fun mapIsEmpty!48829 () Bool)

(assert (=> mapIsEmpty!48829 mapRes!48829))

(declare-fun b!1247740 () Bool)

(declare-fun res!832587 () Bool)

(assert (=> b!1247740 (=> (not res!832587) (not e!707963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80435 (_ BitVec 32)) Bool)

(assert (=> b!1247740 (= res!832587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48829 () Bool)

(declare-fun tp!92931 () Bool)

(assert (=> mapNonEmpty!48829 (= mapRes!48829 (and tp!92931 e!707967))))

(declare-fun mapValue!48829 () ValueCell!14928)

(declare-fun mapRest!48829 () (Array (_ BitVec 32) ValueCell!14928))

(declare-fun mapKey!48829 () (_ BitVec 32))

(assert (=> mapNonEmpty!48829 (= (arr!38783 _values!914) (store mapRest!48829 mapKey!48829 mapValue!48829))))

(assert (= (and start!104690 res!832590) b!1247734))

(assert (= (and b!1247734 res!832588) b!1247740))

(assert (= (and b!1247740 res!832587) b!1247736))

(assert (= (and b!1247736 res!832589) b!1247739))

(assert (= (and b!1247735 condMapEmpty!48829) mapIsEmpty!48829))

(assert (= (and b!1247735 (not condMapEmpty!48829)) mapNonEmpty!48829))

(get-info :version)

(assert (= (and mapNonEmpty!48829 ((_ is ValueCellFull!14928) mapValue!48829)) b!1247738))

(assert (= (and b!1247735 ((_ is ValueCellFull!14928) mapDefault!48829)) b!1247737))

(assert (= start!104690 b!1247735))

(declare-fun m!1149153 () Bool)

(assert (=> b!1247736 m!1149153))

(declare-fun m!1149155 () Bool)

(assert (=> start!104690 m!1149155))

(declare-fun m!1149157 () Bool)

(assert (=> start!104690 m!1149157))

(declare-fun m!1149159 () Bool)

(assert (=> start!104690 m!1149159))

(declare-fun m!1149161 () Bool)

(assert (=> b!1247740 m!1149161))

(declare-fun m!1149163 () Bool)

(assert (=> mapNonEmpty!48829 m!1149163))

(check-sat tp_is_empty!31383 (not b!1247736) (not mapNonEmpty!48829) (not start!104690) (not b!1247740))
(check-sat)
(get-model)

(declare-fun b!1247771 () Bool)

(declare-fun e!707991 () Bool)

(declare-fun call!61562 () Bool)

(assert (=> b!1247771 (= e!707991 call!61562)))

(declare-fun b!1247772 () Bool)

(declare-fun e!707989 () Bool)

(assert (=> b!1247772 (= e!707989 e!707991)))

(declare-fun c!122046 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1247772 (= c!122046 (validKeyInArray!0 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247773 () Bool)

(declare-fun e!707990 () Bool)

(assert (=> b!1247773 (= e!707990 call!61562)))

(declare-fun bm!61559 () Bool)

(assert (=> bm!61559 (= call!61562 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1118 mask!1466))))

(declare-fun b!1247770 () Bool)

(assert (=> b!1247770 (= e!707991 e!707990)))

(declare-fun lt!563264 () (_ BitVec 64))

(assert (=> b!1247770 (= lt!563264 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!41415 0))(
  ( (Unit!41416) )
))
(declare-fun lt!563265 () Unit!41415)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!80435 (_ BitVec 64) (_ BitVec 32)) Unit!41415)

(assert (=> b!1247770 (= lt!563265 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1118 lt!563264 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!80435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1247770 (arrayContainsKey!0 _keys!1118 lt!563264 #b00000000000000000000000000000000)))

(declare-fun lt!563263 () Unit!41415)

(assert (=> b!1247770 (= lt!563263 lt!563265)))

(declare-fun res!832608 () Bool)

(declare-datatypes ((SeekEntryResult!9953 0))(
  ( (MissingZero!9953 (index!42182 (_ BitVec 32))) (Found!9953 (index!42183 (_ BitVec 32))) (Intermediate!9953 (undefined!10765 Bool) (index!42184 (_ BitVec 32)) (x!109673 (_ BitVec 32))) (Undefined!9953) (MissingVacant!9953 (index!42185 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!80435 (_ BitVec 32)) SeekEntryResult!9953)

(assert (=> b!1247770 (= res!832608 (= (seekEntryOrOpen!0 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000) _keys!1118 mask!1466) (Found!9953 #b00000000000000000000000000000000)))))

(assert (=> b!1247770 (=> (not res!832608) (not e!707990))))

(declare-fun d!137703 () Bool)

(declare-fun res!832607 () Bool)

(assert (=> d!137703 (=> res!832607 e!707989)))

(assert (=> d!137703 (= res!832607 (bvsge #b00000000000000000000000000000000 (size!39319 _keys!1118)))))

(assert (=> d!137703 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466) e!707989)))

(assert (= (and d!137703 (not res!832607)) b!1247772))

(assert (= (and b!1247772 c!122046) b!1247770))

(assert (= (and b!1247772 (not c!122046)) b!1247771))

(assert (= (and b!1247770 res!832608) b!1247773))

(assert (= (or b!1247773 b!1247771) bm!61559))

(declare-fun m!1149177 () Bool)

(assert (=> b!1247772 m!1149177))

(assert (=> b!1247772 m!1149177))

(declare-fun m!1149179 () Bool)

(assert (=> b!1247772 m!1149179))

(declare-fun m!1149181 () Bool)

(assert (=> bm!61559 m!1149181))

(assert (=> b!1247770 m!1149177))

(declare-fun m!1149183 () Bool)

(assert (=> b!1247770 m!1149183))

(declare-fun m!1149185 () Bool)

(assert (=> b!1247770 m!1149185))

(assert (=> b!1247770 m!1149177))

(declare-fun m!1149187 () Bool)

(assert (=> b!1247770 m!1149187))

(assert (=> b!1247740 d!137703))

(declare-fun d!137705 () Bool)

(assert (=> d!137705 (= (validMask!0 mask!1466) (and (or (= mask!1466 #b00000000000000000000000000000111) (= mask!1466 #b00000000000000000000000000001111) (= mask!1466 #b00000000000000000000000000011111) (= mask!1466 #b00000000000000000000000000111111) (= mask!1466 #b00000000000000000000000001111111) (= mask!1466 #b00000000000000000000000011111111) (= mask!1466 #b00000000000000000000000111111111) (= mask!1466 #b00000000000000000000001111111111) (= mask!1466 #b00000000000000000000011111111111) (= mask!1466 #b00000000000000000000111111111111) (= mask!1466 #b00000000000000000001111111111111) (= mask!1466 #b00000000000000000011111111111111) (= mask!1466 #b00000000000000000111111111111111) (= mask!1466 #b00000000000000001111111111111111) (= mask!1466 #b00000000000000011111111111111111) (= mask!1466 #b00000000000000111111111111111111) (= mask!1466 #b00000000000001111111111111111111) (= mask!1466 #b00000000000011111111111111111111) (= mask!1466 #b00000000000111111111111111111111) (= mask!1466 #b00000000001111111111111111111111) (= mask!1466 #b00000000011111111111111111111111) (= mask!1466 #b00000000111111111111111111111111) (= mask!1466 #b00000001111111111111111111111111) (= mask!1466 #b00000011111111111111111111111111) (= mask!1466 #b00000111111111111111111111111111) (= mask!1466 #b00001111111111111111111111111111) (= mask!1466 #b00011111111111111111111111111111) (= mask!1466 #b00111111111111111111111111111111)) (bvsle mask!1466 #b00111111111111111111111111111111)))))

(assert (=> start!104690 d!137705))

(declare-fun d!137707 () Bool)

(assert (=> d!137707 (= (array_inv!29533 _keys!1118) (bvsge (size!39319 _keys!1118) #b00000000000000000000000000000000))))

(assert (=> start!104690 d!137707))

(declare-fun d!137709 () Bool)

(assert (=> d!137709 (= (array_inv!29534 _values!914) (bvsge (size!39320 _values!914) #b00000000000000000000000000000000))))

(assert (=> start!104690 d!137709))

(declare-fun b!1247784 () Bool)

(declare-fun e!708001 () Bool)

(declare-fun call!61565 () Bool)

(assert (=> b!1247784 (= e!708001 call!61565)))

(declare-fun d!137711 () Bool)

(declare-fun res!832615 () Bool)

(declare-fun e!708003 () Bool)

(assert (=> d!137711 (=> res!832615 e!708003)))

(assert (=> d!137711 (= res!832615 (bvsge #b00000000000000000000000000000000 (size!39319 _keys!1118)))))

(assert (=> d!137711 (= (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27703) e!708003)))

(declare-fun bm!61562 () Bool)

(declare-fun c!122049 () Bool)

(assert (=> bm!61562 (= call!61565 (arrayNoDuplicates!0 _keys!1118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!122049 (Cons!27702 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000) Nil!27703) Nil!27703)))))

(declare-fun b!1247785 () Bool)

(declare-fun e!708000 () Bool)

(assert (=> b!1247785 (= e!708000 e!708001)))

(assert (=> b!1247785 (= c!122049 (validKeyInArray!0 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247786 () Bool)

(declare-fun e!708002 () Bool)

(declare-fun contains!7485 (List!27706 (_ BitVec 64)) Bool)

(assert (=> b!1247786 (= e!708002 (contains!7485 Nil!27703 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247787 () Bool)

(assert (=> b!1247787 (= e!708003 e!708000)))

(declare-fun res!832616 () Bool)

(assert (=> b!1247787 (=> (not res!832616) (not e!708000))))

(assert (=> b!1247787 (= res!832616 (not e!708002))))

(declare-fun res!832617 () Bool)

(assert (=> b!1247787 (=> (not res!832617) (not e!708002))))

(assert (=> b!1247787 (= res!832617 (validKeyInArray!0 (select (arr!38782 _keys!1118) #b00000000000000000000000000000000)))))

(declare-fun b!1247788 () Bool)

(assert (=> b!1247788 (= e!708001 call!61565)))

(assert (= (and d!137711 (not res!832615)) b!1247787))

(assert (= (and b!1247787 res!832617) b!1247786))

(assert (= (and b!1247787 res!832616) b!1247785))

(assert (= (and b!1247785 c!122049) b!1247784))

(assert (= (and b!1247785 (not c!122049)) b!1247788))

(assert (= (or b!1247784 b!1247788) bm!61562))

(assert (=> bm!61562 m!1149177))

(declare-fun m!1149189 () Bool)

(assert (=> bm!61562 m!1149189))

(assert (=> b!1247785 m!1149177))

(assert (=> b!1247785 m!1149177))

(assert (=> b!1247785 m!1149179))

(assert (=> b!1247786 m!1149177))

(assert (=> b!1247786 m!1149177))

(declare-fun m!1149191 () Bool)

(assert (=> b!1247786 m!1149191))

(assert (=> b!1247787 m!1149177))

(assert (=> b!1247787 m!1149177))

(assert (=> b!1247787 m!1149179))

(assert (=> b!1247736 d!137711))

(declare-fun mapIsEmpty!48835 () Bool)

(declare-fun mapRes!48835 () Bool)

(assert (=> mapIsEmpty!48835 mapRes!48835))

(declare-fun condMapEmpty!48835 () Bool)

(declare-fun mapDefault!48835 () ValueCell!14928)

(assert (=> mapNonEmpty!48829 (= condMapEmpty!48835 (= mapRest!48829 ((as const (Array (_ BitVec 32) ValueCell!14928)) mapDefault!48835)))))

(declare-fun e!708009 () Bool)

(assert (=> mapNonEmpty!48829 (= tp!92931 (and e!708009 mapRes!48835))))

(declare-fun b!1247796 () Bool)

(assert (=> b!1247796 (= e!708009 tp_is_empty!31383)))

(declare-fun mapNonEmpty!48835 () Bool)

(declare-fun tp!92937 () Bool)

(declare-fun e!708008 () Bool)

(assert (=> mapNonEmpty!48835 (= mapRes!48835 (and tp!92937 e!708008))))

(declare-fun mapValue!48835 () ValueCell!14928)

(declare-fun mapRest!48835 () (Array (_ BitVec 32) ValueCell!14928))

(declare-fun mapKey!48835 () (_ BitVec 32))

(assert (=> mapNonEmpty!48835 (= mapRest!48829 (store mapRest!48835 mapKey!48835 mapValue!48835))))

(declare-fun b!1247795 () Bool)

(assert (=> b!1247795 (= e!708008 tp_is_empty!31383)))

(assert (= (and mapNonEmpty!48829 condMapEmpty!48835) mapIsEmpty!48835))

(assert (= (and mapNonEmpty!48829 (not condMapEmpty!48835)) mapNonEmpty!48835))

(assert (= (and mapNonEmpty!48835 ((_ is ValueCellFull!14928) mapValue!48835)) b!1247795))

(assert (= (and mapNonEmpty!48829 ((_ is ValueCellFull!14928) mapDefault!48835)) b!1247796))

(declare-fun m!1149193 () Bool)

(assert (=> mapNonEmpty!48835 m!1149193))

(check-sat tp_is_empty!31383 (not bm!61562) (not b!1247770) (not b!1247772) (not b!1247785) (not b!1247787) (not bm!61559) (not mapNonEmpty!48835) (not b!1247786))
(check-sat)
