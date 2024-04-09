; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34746 () Bool)

(assert start!34746)

(declare-fun b_free!7545 () Bool)

(declare-fun b_next!7545 () Bool)

(assert (=> start!34746 (= b_free!7545 (not b_next!7545))))

(declare-fun tp!26199 () Bool)

(declare-fun b_and!14783 () Bool)

(assert (=> start!34746 (= tp!26199 b_and!14783)))

(declare-fun b!347205 () Bool)

(declare-fun e!212756 () Bool)

(declare-fun tp_is_empty!7497 () Bool)

(assert (=> b!347205 (= e!212756 tp_is_empty!7497)))

(declare-fun b!347206 () Bool)

(declare-fun res!192267 () Bool)

(declare-fun e!212755 () Bool)

(assert (=> b!347206 (=> (not res!192267) (not e!212755))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347206 (= res!192267 (validKeyInArray!0 k0!1348))))

(declare-fun b!347207 () Bool)

(declare-fun res!192265 () Bool)

(declare-fun e!212752 () Bool)

(assert (=> b!347207 (=> (not res!192265) (not e!212752))))

(declare-datatypes ((SeekEntryResult!3383 0))(
  ( (MissingZero!3383 (index!15711 (_ BitVec 32))) (Found!3383 (index!15712 (_ BitVec 32))) (Intermediate!3383 (undefined!4195 Bool) (index!15713 (_ BitVec 32)) (x!34592 (_ BitVec 32))) (Undefined!3383) (MissingVacant!3383 (index!15714 (_ BitVec 32))) )
))
(declare-fun lt!163506 () SeekEntryResult!3383)

(declare-datatypes ((array!18549 0))(
  ( (array!18550 (arr!8782 (Array (_ BitVec 32) (_ BitVec 64))) (size!9134 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18549)

(declare-fun arrayContainsKey!0 (array!18549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347207 (= res!192265 (arrayContainsKey!0 _keys!1895 k0!1348 (index!15712 lt!163506)))))

(declare-fun b!347208 () Bool)

(declare-fun res!192266 () Bool)

(assert (=> b!347208 (=> (not res!192266) (not e!212755))))

(declare-datatypes ((List!5118 0))(
  ( (Nil!5115) (Cons!5114 (h!5970 (_ BitVec 64)) (t!10254 List!5118)) )
))
(declare-fun arrayNoDuplicates!0 (array!18549 (_ BitVec 32) List!5118) Bool)

(assert (=> b!347208 (= res!192266 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5115))))

(declare-fun mapIsEmpty!12702 () Bool)

(declare-fun mapRes!12702 () Bool)

(assert (=> mapIsEmpty!12702 mapRes!12702))

(declare-fun b!347209 () Bool)

(declare-fun res!192264 () Bool)

(assert (=> b!347209 (=> (not res!192264) (not e!212755))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10973 0))(
  ( (V!10974 (val!3793 Int)) )
))
(declare-datatypes ((ValueCell!3405 0))(
  ( (ValueCellFull!3405 (v!5971 V!10973)) (EmptyCell!3405) )
))
(declare-datatypes ((array!18551 0))(
  ( (array!18552 (arr!8783 (Array (_ BitVec 32) ValueCell!3405)) (size!9135 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18551)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347209 (= res!192264 (and (= (size!9135 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9134 _keys!1895) (size!9135 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347210 () Bool)

(assert (=> b!347210 (= e!212752 (not (and (bvsge (index!15712 lt!163506) #b00000000000000000000000000000000) (bvslt (index!15712 lt!163506) (size!9134 _keys!1895)))))))

(assert (=> b!347210 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10778 0))(
  ( (Unit!10779) )
))
(declare-fun lt!163505 () Unit!10778)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18549 (_ BitVec 64) (_ BitVec 32)) Unit!10778)

(assert (=> b!347210 (= lt!163505 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15712 lt!163506)))))

(declare-fun b!347211 () Bool)

(declare-fun res!192263 () Bool)

(assert (=> b!347211 (=> (not res!192263) (not e!212755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18549 (_ BitVec 32)) Bool)

(assert (=> b!347211 (= res!192263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347212 () Bool)

(declare-fun e!212754 () Bool)

(declare-fun e!212753 () Bool)

(assert (=> b!347212 (= e!212754 (and e!212753 mapRes!12702))))

(declare-fun condMapEmpty!12702 () Bool)

(declare-fun mapDefault!12702 () ValueCell!3405)

(assert (=> b!347212 (= condMapEmpty!12702 (= (arr!8783 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3405)) mapDefault!12702)))))

(declare-fun b!347213 () Bool)

(assert (=> b!347213 (= e!212755 e!212752)))

(declare-fun res!192269 () Bool)

(assert (=> b!347213 (=> (not res!192269) (not e!212752))))

(get-info :version)

(assert (=> b!347213 (= res!192269 (and ((_ is Found!3383) lt!163506) (= (select (arr!8782 _keys!1895) (index!15712 lt!163506)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18549 (_ BitVec 32)) SeekEntryResult!3383)

(assert (=> b!347213 (= lt!163506 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12702 () Bool)

(declare-fun tp!26198 () Bool)

(assert (=> mapNonEmpty!12702 (= mapRes!12702 (and tp!26198 e!212756))))

(declare-fun mapKey!12702 () (_ BitVec 32))

(declare-fun mapRest!12702 () (Array (_ BitVec 32) ValueCell!3405))

(declare-fun mapValue!12702 () ValueCell!3405)

(assert (=> mapNonEmpty!12702 (= (arr!8783 _values!1525) (store mapRest!12702 mapKey!12702 mapValue!12702))))

(declare-fun res!192268 () Bool)

(assert (=> start!34746 (=> (not res!192268) (not e!212755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34746 (= res!192268 (validMask!0 mask!2385))))

(assert (=> start!34746 e!212755))

(assert (=> start!34746 true))

(assert (=> start!34746 tp_is_empty!7497))

(assert (=> start!34746 tp!26199))

(declare-fun array_inv!6490 (array!18551) Bool)

(assert (=> start!34746 (and (array_inv!6490 _values!1525) e!212754)))

(declare-fun array_inv!6491 (array!18549) Bool)

(assert (=> start!34746 (array_inv!6491 _keys!1895)))

(declare-fun b!347214 () Bool)

(assert (=> b!347214 (= e!212753 tp_is_empty!7497)))

(declare-fun b!347215 () Bool)

(declare-fun res!192262 () Bool)

(assert (=> b!347215 (=> (not res!192262) (not e!212755))))

(declare-fun zeroValue!1467 () V!10973)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10973)

(declare-datatypes ((tuple2!5474 0))(
  ( (tuple2!5475 (_1!2747 (_ BitVec 64)) (_2!2747 V!10973)) )
))
(declare-datatypes ((List!5119 0))(
  ( (Nil!5116) (Cons!5115 (h!5971 tuple2!5474) (t!10255 List!5119)) )
))
(declare-datatypes ((ListLongMap!4401 0))(
  ( (ListLongMap!4402 (toList!2216 List!5119)) )
))
(declare-fun contains!2276 (ListLongMap!4401 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1736 (array!18549 array!18551 (_ BitVec 32) (_ BitVec 32) V!10973 V!10973 (_ BitVec 32) Int) ListLongMap!4401)

(assert (=> b!347215 (= res!192262 (not (contains!2276 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(assert (= (and start!34746 res!192268) b!347209))

(assert (= (and b!347209 res!192264) b!347211))

(assert (= (and b!347211 res!192263) b!347208))

(assert (= (and b!347208 res!192266) b!347206))

(assert (= (and b!347206 res!192267) b!347215))

(assert (= (and b!347215 res!192262) b!347213))

(assert (= (and b!347213 res!192269) b!347207))

(assert (= (and b!347207 res!192265) b!347210))

(assert (= (and b!347212 condMapEmpty!12702) mapIsEmpty!12702))

(assert (= (and b!347212 (not condMapEmpty!12702)) mapNonEmpty!12702))

(assert (= (and mapNonEmpty!12702 ((_ is ValueCellFull!3405) mapValue!12702)) b!347205))

(assert (= (and b!347212 ((_ is ValueCellFull!3405) mapDefault!12702)) b!347214))

(assert (= start!34746 b!347212))

(declare-fun m!348183 () Bool)

(assert (=> b!347207 m!348183))

(declare-fun m!348185 () Bool)

(assert (=> b!347215 m!348185))

(assert (=> b!347215 m!348185))

(declare-fun m!348187 () Bool)

(assert (=> b!347215 m!348187))

(declare-fun m!348189 () Bool)

(assert (=> b!347208 m!348189))

(declare-fun m!348191 () Bool)

(assert (=> b!347210 m!348191))

(declare-fun m!348193 () Bool)

(assert (=> b!347210 m!348193))

(declare-fun m!348195 () Bool)

(assert (=> b!347211 m!348195))

(declare-fun m!348197 () Bool)

(assert (=> mapNonEmpty!12702 m!348197))

(declare-fun m!348199 () Bool)

(assert (=> b!347213 m!348199))

(declare-fun m!348201 () Bool)

(assert (=> b!347213 m!348201))

(declare-fun m!348203 () Bool)

(assert (=> b!347206 m!348203))

(declare-fun m!348205 () Bool)

(assert (=> start!34746 m!348205))

(declare-fun m!348207 () Bool)

(assert (=> start!34746 m!348207))

(declare-fun m!348209 () Bool)

(assert (=> start!34746 m!348209))

(check-sat (not start!34746) (not b_next!7545) (not b!347208) tp_is_empty!7497 (not mapNonEmpty!12702) (not b!347210) (not b!347211) (not b!347206) b_and!14783 (not b!347215) (not b!347213) (not b!347207))
(check-sat b_and!14783 (not b_next!7545))
(get-model)

(declare-fun d!71133 () Bool)

(declare-fun lt!163521 () SeekEntryResult!3383)

(assert (=> d!71133 (and (or ((_ is Undefined!3383) lt!163521) (not ((_ is Found!3383) lt!163521)) (and (bvsge (index!15712 lt!163521) #b00000000000000000000000000000000) (bvslt (index!15712 lt!163521) (size!9134 _keys!1895)))) (or ((_ is Undefined!3383) lt!163521) ((_ is Found!3383) lt!163521) (not ((_ is MissingZero!3383) lt!163521)) (and (bvsge (index!15711 lt!163521) #b00000000000000000000000000000000) (bvslt (index!15711 lt!163521) (size!9134 _keys!1895)))) (or ((_ is Undefined!3383) lt!163521) ((_ is Found!3383) lt!163521) ((_ is MissingZero!3383) lt!163521) (not ((_ is MissingVacant!3383) lt!163521)) (and (bvsge (index!15714 lt!163521) #b00000000000000000000000000000000) (bvslt (index!15714 lt!163521) (size!9134 _keys!1895)))) (or ((_ is Undefined!3383) lt!163521) (ite ((_ is Found!3383) lt!163521) (= (select (arr!8782 _keys!1895) (index!15712 lt!163521)) k0!1348) (ite ((_ is MissingZero!3383) lt!163521) (= (select (arr!8782 _keys!1895) (index!15711 lt!163521)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3383) lt!163521) (= (select (arr!8782 _keys!1895) (index!15714 lt!163521)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!212783 () SeekEntryResult!3383)

(assert (=> d!71133 (= lt!163521 e!212783)))

(declare-fun c!53101 () Bool)

(declare-fun lt!163520 () SeekEntryResult!3383)

(assert (=> d!71133 (= c!53101 (and ((_ is Intermediate!3383) lt!163520) (undefined!4195 lt!163520)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18549 (_ BitVec 32)) SeekEntryResult!3383)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71133 (= lt!163520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71133 (validMask!0 mask!2385)))

(assert (=> d!71133 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!163521)))

(declare-fun b!347261 () Bool)

(declare-fun c!53102 () Bool)

(declare-fun lt!163519 () (_ BitVec 64))

(assert (=> b!347261 (= c!53102 (= lt!163519 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!212782 () SeekEntryResult!3383)

(declare-fun e!212784 () SeekEntryResult!3383)

(assert (=> b!347261 (= e!212782 e!212784)))

(declare-fun b!347262 () Bool)

(assert (=> b!347262 (= e!212782 (Found!3383 (index!15713 lt!163520)))))

(declare-fun b!347263 () Bool)

(assert (=> b!347263 (= e!212783 Undefined!3383)))

(declare-fun b!347264 () Bool)

(assert (=> b!347264 (= e!212783 e!212782)))

(assert (=> b!347264 (= lt!163519 (select (arr!8782 _keys!1895) (index!15713 lt!163520)))))

(declare-fun c!53100 () Bool)

(assert (=> b!347264 (= c!53100 (= lt!163519 k0!1348))))

(declare-fun b!347265 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18549 (_ BitVec 32)) SeekEntryResult!3383)

(assert (=> b!347265 (= e!212784 (seekKeyOrZeroReturnVacant!0 (x!34592 lt!163520) (index!15713 lt!163520) (index!15713 lt!163520) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!347266 () Bool)

(assert (=> b!347266 (= e!212784 (MissingZero!3383 (index!15713 lt!163520)))))

(assert (= (and d!71133 c!53101) b!347263))

(assert (= (and d!71133 (not c!53101)) b!347264))

(assert (= (and b!347264 c!53100) b!347262))

(assert (= (and b!347264 (not c!53100)) b!347261))

(assert (= (and b!347261 c!53102) b!347266))

(assert (= (and b!347261 (not c!53102)) b!347265))

(declare-fun m!348239 () Bool)

(assert (=> d!71133 m!348239))

(declare-fun m!348241 () Bool)

(assert (=> d!71133 m!348241))

(declare-fun m!348243 () Bool)

(assert (=> d!71133 m!348243))

(declare-fun m!348245 () Bool)

(assert (=> d!71133 m!348245))

(assert (=> d!71133 m!348205))

(declare-fun m!348247 () Bool)

(assert (=> d!71133 m!348247))

(assert (=> d!71133 m!348241))

(declare-fun m!348249 () Bool)

(assert (=> b!347264 m!348249))

(declare-fun m!348251 () Bool)

(assert (=> b!347265 m!348251))

(assert (=> b!347213 d!71133))

(declare-fun b!347277 () Bool)

(declare-fun e!212794 () Bool)

(declare-fun call!26834 () Bool)

(assert (=> b!347277 (= e!212794 call!26834)))

(declare-fun bm!26831 () Bool)

(declare-fun c!53105 () Bool)

(assert (=> bm!26831 (= call!26834 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53105 (Cons!5114 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000) Nil!5115) Nil!5115)))))

(declare-fun b!347278 () Bool)

(declare-fun e!212796 () Bool)

(declare-fun contains!2278 (List!5118 (_ BitVec 64)) Bool)

(assert (=> b!347278 (= e!212796 (contains!2278 Nil!5115 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71135 () Bool)

(declare-fun res!192301 () Bool)

(declare-fun e!212793 () Bool)

(assert (=> d!71135 (=> res!192301 e!212793)))

(assert (=> d!71135 (= res!192301 (bvsge #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(assert (=> d!71135 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5115) e!212793)))

(declare-fun b!347279 () Bool)

(assert (=> b!347279 (= e!212794 call!26834)))

(declare-fun b!347280 () Bool)

(declare-fun e!212795 () Bool)

(assert (=> b!347280 (= e!212793 e!212795)))

(declare-fun res!192302 () Bool)

(assert (=> b!347280 (=> (not res!192302) (not e!212795))))

(assert (=> b!347280 (= res!192302 (not e!212796))))

(declare-fun res!192300 () Bool)

(assert (=> b!347280 (=> (not res!192300) (not e!212796))))

(assert (=> b!347280 (= res!192300 (validKeyInArray!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!347281 () Bool)

(assert (=> b!347281 (= e!212795 e!212794)))

(assert (=> b!347281 (= c!53105 (validKeyInArray!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71135 (not res!192301)) b!347280))

(assert (= (and b!347280 res!192300) b!347278))

(assert (= (and b!347280 res!192302) b!347281))

(assert (= (and b!347281 c!53105) b!347277))

(assert (= (and b!347281 (not c!53105)) b!347279))

(assert (= (or b!347277 b!347279) bm!26831))

(declare-fun m!348253 () Bool)

(assert (=> bm!26831 m!348253))

(declare-fun m!348255 () Bool)

(assert (=> bm!26831 m!348255))

(assert (=> b!347278 m!348253))

(assert (=> b!347278 m!348253))

(declare-fun m!348257 () Bool)

(assert (=> b!347278 m!348257))

(assert (=> b!347280 m!348253))

(assert (=> b!347280 m!348253))

(declare-fun m!348259 () Bool)

(assert (=> b!347280 m!348259))

(assert (=> b!347281 m!348253))

(assert (=> b!347281 m!348253))

(assert (=> b!347281 m!348259))

(assert (=> b!347208 d!71135))

(declare-fun d!71137 () Bool)

(declare-fun res!192307 () Bool)

(declare-fun e!212801 () Bool)

(assert (=> d!71137 (=> res!192307 e!212801)))

(assert (=> d!71137 (= res!192307 (= (select (arr!8782 _keys!1895) (index!15712 lt!163506)) k0!1348))))

(assert (=> d!71137 (= (arrayContainsKey!0 _keys!1895 k0!1348 (index!15712 lt!163506)) e!212801)))

(declare-fun b!347286 () Bool)

(declare-fun e!212802 () Bool)

(assert (=> b!347286 (= e!212801 e!212802)))

(declare-fun res!192308 () Bool)

(assert (=> b!347286 (=> (not res!192308) (not e!212802))))

(assert (=> b!347286 (= res!192308 (bvslt (bvadd (index!15712 lt!163506) #b00000000000000000000000000000001) (size!9134 _keys!1895)))))

(declare-fun b!347287 () Bool)

(assert (=> b!347287 (= e!212802 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd (index!15712 lt!163506) #b00000000000000000000000000000001)))))

(assert (= (and d!71137 (not res!192307)) b!347286))

(assert (= (and b!347286 res!192308) b!347287))

(assert (=> d!71137 m!348199))

(declare-fun m!348261 () Bool)

(assert (=> b!347287 m!348261))

(assert (=> b!347207 d!71137))

(declare-fun d!71139 () Bool)

(declare-fun e!212808 () Bool)

(assert (=> d!71139 e!212808))

(declare-fun res!192311 () Bool)

(assert (=> d!71139 (=> res!192311 e!212808)))

(declare-fun lt!163531 () Bool)

(assert (=> d!71139 (= res!192311 (not lt!163531))))

(declare-fun lt!163533 () Bool)

(assert (=> d!71139 (= lt!163531 lt!163533)))

(declare-fun lt!163530 () Unit!10778)

(declare-fun e!212807 () Unit!10778)

(assert (=> d!71139 (= lt!163530 e!212807)))

(declare-fun c!53108 () Bool)

(assert (=> d!71139 (= c!53108 lt!163533)))

(declare-fun containsKey!335 (List!5119 (_ BitVec 64)) Bool)

(assert (=> d!71139 (= lt!163533 (containsKey!335 (toList!2216 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71139 (= (contains!2276 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!163531)))

(declare-fun b!347294 () Bool)

(declare-fun lt!163532 () Unit!10778)

(assert (=> b!347294 (= e!212807 lt!163532)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!284 (List!5119 (_ BitVec 64)) Unit!10778)

(assert (=> b!347294 (= lt!163532 (lemmaContainsKeyImpliesGetValueByKeyDefined!284 (toList!2216 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!349 0))(
  ( (Some!348 (v!5973 V!10973)) (None!347) )
))
(declare-fun isDefined!285 (Option!349) Bool)

(declare-fun getValueByKey!343 (List!5119 (_ BitVec 64)) Option!349)

(assert (=> b!347294 (isDefined!285 (getValueByKey!343 (toList!2216 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!347295 () Bool)

(declare-fun Unit!10782 () Unit!10778)

(assert (=> b!347295 (= e!212807 Unit!10782)))

(declare-fun b!347296 () Bool)

(assert (=> b!347296 (= e!212808 (isDefined!285 (getValueByKey!343 (toList!2216 (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71139 c!53108) b!347294))

(assert (= (and d!71139 (not c!53108)) b!347295))

(assert (= (and d!71139 (not res!192311)) b!347296))

(declare-fun m!348263 () Bool)

(assert (=> d!71139 m!348263))

(declare-fun m!348265 () Bool)

(assert (=> b!347294 m!348265))

(declare-fun m!348267 () Bool)

(assert (=> b!347294 m!348267))

(assert (=> b!347294 m!348267))

(declare-fun m!348269 () Bool)

(assert (=> b!347294 m!348269))

(assert (=> b!347296 m!348267))

(assert (=> b!347296 m!348267))

(assert (=> b!347296 m!348269))

(assert (=> b!347215 d!71139))

(declare-fun b!347339 () Bool)

(declare-fun e!212839 () ListLongMap!4401)

(declare-fun call!26853 () ListLongMap!4401)

(assert (=> b!347339 (= e!212839 call!26853)))

(declare-fun b!347340 () Bool)

(declare-fun e!212846 () Bool)

(declare-fun e!212847 () Bool)

(assert (=> b!347340 (= e!212846 e!212847)))

(declare-fun res!192334 () Bool)

(declare-fun call!26850 () Bool)

(assert (=> b!347340 (= res!192334 call!26850)))

(assert (=> b!347340 (=> (not res!192334) (not e!212847))))

(declare-fun b!347341 () Bool)

(declare-fun e!212836 () Unit!10778)

(declare-fun lt!163580 () Unit!10778)

(assert (=> b!347341 (= e!212836 lt!163580)))

(declare-fun lt!163586 () ListLongMap!4401)

(declare-fun getCurrentListMapNoExtraKeys!605 (array!18549 array!18551 (_ BitVec 32) (_ BitVec 32) V!10973 V!10973 (_ BitVec 32) Int) ListLongMap!4401)

(assert (=> b!347341 (= lt!163586 (getCurrentListMapNoExtraKeys!605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163579 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163579 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163582 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163582 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163585 () Unit!10778)

(declare-fun addStillContains!262 (ListLongMap!4401 (_ BitVec 64) V!10973 (_ BitVec 64)) Unit!10778)

(assert (=> b!347341 (= lt!163585 (addStillContains!262 lt!163586 lt!163579 zeroValue!1467 lt!163582))))

(declare-fun +!730 (ListLongMap!4401 tuple2!5474) ListLongMap!4401)

(assert (=> b!347341 (contains!2276 (+!730 lt!163586 (tuple2!5475 lt!163579 zeroValue!1467)) lt!163582)))

(declare-fun lt!163588 () Unit!10778)

(assert (=> b!347341 (= lt!163588 lt!163585)))

(declare-fun lt!163598 () ListLongMap!4401)

(assert (=> b!347341 (= lt!163598 (getCurrentListMapNoExtraKeys!605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163594 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163594 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163599 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163599 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163597 () Unit!10778)

(declare-fun addApplyDifferent!262 (ListLongMap!4401 (_ BitVec 64) V!10973 (_ BitVec 64)) Unit!10778)

(assert (=> b!347341 (= lt!163597 (addApplyDifferent!262 lt!163598 lt!163594 minValue!1467 lt!163599))))

(declare-fun apply!286 (ListLongMap!4401 (_ BitVec 64)) V!10973)

(assert (=> b!347341 (= (apply!286 (+!730 lt!163598 (tuple2!5475 lt!163594 minValue!1467)) lt!163599) (apply!286 lt!163598 lt!163599))))

(declare-fun lt!163591 () Unit!10778)

(assert (=> b!347341 (= lt!163591 lt!163597)))

(declare-fun lt!163587 () ListLongMap!4401)

(assert (=> b!347341 (= lt!163587 (getCurrentListMapNoExtraKeys!605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163581 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163581 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163595 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163595 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163584 () Unit!10778)

(assert (=> b!347341 (= lt!163584 (addApplyDifferent!262 lt!163587 lt!163581 zeroValue!1467 lt!163595))))

(assert (=> b!347341 (= (apply!286 (+!730 lt!163587 (tuple2!5475 lt!163581 zeroValue!1467)) lt!163595) (apply!286 lt!163587 lt!163595))))

(declare-fun lt!163593 () Unit!10778)

(assert (=> b!347341 (= lt!163593 lt!163584)))

(declare-fun lt!163589 () ListLongMap!4401)

(assert (=> b!347341 (= lt!163589 (getCurrentListMapNoExtraKeys!605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!163592 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!163583 () (_ BitVec 64))

(assert (=> b!347341 (= lt!163583 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!347341 (= lt!163580 (addApplyDifferent!262 lt!163589 lt!163592 minValue!1467 lt!163583))))

(assert (=> b!347341 (= (apply!286 (+!730 lt!163589 (tuple2!5475 lt!163592 minValue!1467)) lt!163583) (apply!286 lt!163589 lt!163583))))

(declare-fun b!347342 () Bool)

(declare-fun Unit!10783 () Unit!10778)

(assert (=> b!347342 (= e!212836 Unit!10783)))

(declare-fun bm!26846 () Bool)

(declare-fun lt!163590 () ListLongMap!4401)

(assert (=> bm!26846 (= call!26850 (contains!2276 lt!163590 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!347344 () Bool)

(declare-fun e!212845 () Bool)

(declare-fun call!26851 () Bool)

(assert (=> b!347344 (= e!212845 (not call!26851))))

(declare-fun b!347345 () Bool)

(declare-fun res!192338 () Bool)

(declare-fun e!212843 () Bool)

(assert (=> b!347345 (=> (not res!192338) (not e!212843))))

(assert (=> b!347345 (= res!192338 e!212845)))

(declare-fun c!53122 () Bool)

(assert (=> b!347345 (= c!53122 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!347346 () Bool)

(declare-fun e!212841 () ListLongMap!4401)

(assert (=> b!347346 (= e!212841 call!26853)))

(declare-fun b!347347 () Bool)

(assert (=> b!347347 (= e!212846 (not call!26850))))

(declare-fun bm!26847 () Bool)

(declare-fun call!26849 () ListLongMap!4401)

(assert (=> bm!26847 (= call!26849 (getCurrentListMapNoExtraKeys!605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347348 () Bool)

(declare-fun e!212835 () Bool)

(declare-fun get!4731 (ValueCell!3405 V!10973) V!10973)

(declare-fun dynLambda!624 (Int (_ BitVec 64)) V!10973)

(assert (=> b!347348 (= e!212835 (= (apply!286 lt!163590 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)) (get!4731 (select (arr!8783 _values!1525) #b00000000000000000000000000000000) (dynLambda!624 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!347348 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9135 _values!1525)))))

(assert (=> b!347348 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(declare-fun b!347349 () Bool)

(declare-fun res!192335 () Bool)

(assert (=> b!347349 (=> (not res!192335) (not e!212843))))

(declare-fun e!212844 () Bool)

(assert (=> b!347349 (= res!192335 e!212844)))

(declare-fun res!192331 () Bool)

(assert (=> b!347349 (=> res!192331 e!212844)))

(declare-fun e!212842 () Bool)

(assert (=> b!347349 (= res!192331 (not e!212842))))

(declare-fun res!192332 () Bool)

(assert (=> b!347349 (=> (not res!192332) (not e!212842))))

(assert (=> b!347349 (= res!192332 (bvslt #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(declare-fun b!347350 () Bool)

(declare-fun c!53126 () Bool)

(assert (=> b!347350 (= c!53126 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!347350 (= e!212841 e!212839)))

(declare-fun bm!26848 () Bool)

(assert (=> bm!26848 (= call!26851 (contains!2276 lt!163590 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!347351 () Bool)

(assert (=> b!347351 (= e!212843 e!212846)))

(declare-fun c!53121 () Bool)

(assert (=> b!347351 (= c!53121 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!26854 () ListLongMap!4401)

(declare-fun bm!26849 () Bool)

(declare-fun c!53125 () Bool)

(declare-fun c!53123 () Bool)

(declare-fun call!26855 () ListLongMap!4401)

(declare-fun call!26852 () ListLongMap!4401)

(assert (=> bm!26849 (= call!26854 (+!730 (ite c!53123 call!26849 (ite c!53125 call!26855 call!26852)) (ite (or c!53123 c!53125) (tuple2!5475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5475 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!347352 () Bool)

(declare-fun e!212838 () ListLongMap!4401)

(assert (=> b!347352 (= e!212838 e!212841)))

(assert (=> b!347352 (= c!53125 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!347353 () Bool)

(declare-fun e!212840 () Bool)

(assert (=> b!347353 (= e!212840 (= (apply!286 lt!163590 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun b!347354 () Bool)

(declare-fun e!212837 () Bool)

(assert (=> b!347354 (= e!212837 (validKeyInArray!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!347355 () Bool)

(assert (=> b!347355 (= e!212842 (validKeyInArray!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!347356 () Bool)

(assert (=> b!347356 (= e!212847 (= (apply!286 lt!163590 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!347357 () Bool)

(assert (=> b!347357 (= e!212845 e!212840)))

(declare-fun res!192337 () Bool)

(assert (=> b!347357 (= res!192337 call!26851)))

(assert (=> b!347357 (=> (not res!192337) (not e!212840))))

(declare-fun bm!26850 () Bool)

(assert (=> bm!26850 (= call!26853 call!26854)))

(declare-fun d!71141 () Bool)

(assert (=> d!71141 e!212843))

(declare-fun res!192336 () Bool)

(assert (=> d!71141 (=> (not res!192336) (not e!212843))))

(assert (=> d!71141 (= res!192336 (or (bvsge #b00000000000000000000000000000000 (size!9134 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9134 _keys!1895)))))))

(declare-fun lt!163578 () ListLongMap!4401)

(assert (=> d!71141 (= lt!163590 lt!163578)))

(declare-fun lt!163596 () Unit!10778)

(assert (=> d!71141 (= lt!163596 e!212836)))

(declare-fun c!53124 () Bool)

(assert (=> d!71141 (= c!53124 e!212837)))

(declare-fun res!192333 () Bool)

(assert (=> d!71141 (=> (not res!192333) (not e!212837))))

(assert (=> d!71141 (= res!192333 (bvslt #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(assert (=> d!71141 (= lt!163578 e!212838)))

(assert (=> d!71141 (= c!53123 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71141 (validMask!0 mask!2385)))

(assert (=> d!71141 (= (getCurrentListMap!1736 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!163590)))

(declare-fun b!347343 () Bool)

(assert (=> b!347343 (= e!212844 e!212835)))

(declare-fun res!192330 () Bool)

(assert (=> b!347343 (=> (not res!192330) (not e!212835))))

(assert (=> b!347343 (= res!192330 (contains!2276 lt!163590 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!347343 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(declare-fun bm!26851 () Bool)

(assert (=> bm!26851 (= call!26852 call!26855)))

(declare-fun b!347358 () Bool)

(assert (=> b!347358 (= e!212839 call!26852)))

(declare-fun bm!26852 () Bool)

(assert (=> bm!26852 (= call!26855 call!26849)))

(declare-fun b!347359 () Bool)

(assert (=> b!347359 (= e!212838 (+!730 call!26854 (tuple2!5475 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(assert (= (and d!71141 c!53123) b!347359))

(assert (= (and d!71141 (not c!53123)) b!347352))

(assert (= (and b!347352 c!53125) b!347346))

(assert (= (and b!347352 (not c!53125)) b!347350))

(assert (= (and b!347350 c!53126) b!347339))

(assert (= (and b!347350 (not c!53126)) b!347358))

(assert (= (or b!347339 b!347358) bm!26851))

(assert (= (or b!347346 bm!26851) bm!26852))

(assert (= (or b!347346 b!347339) bm!26850))

(assert (= (or b!347359 bm!26852) bm!26847))

(assert (= (or b!347359 bm!26850) bm!26849))

(assert (= (and d!71141 res!192333) b!347354))

(assert (= (and d!71141 c!53124) b!347341))

(assert (= (and d!71141 (not c!53124)) b!347342))

(assert (= (and d!71141 res!192336) b!347349))

(assert (= (and b!347349 res!192332) b!347355))

(assert (= (and b!347349 (not res!192331)) b!347343))

(assert (= (and b!347343 res!192330) b!347348))

(assert (= (and b!347349 res!192335) b!347345))

(assert (= (and b!347345 c!53122) b!347357))

(assert (= (and b!347345 (not c!53122)) b!347344))

(assert (= (and b!347357 res!192337) b!347353))

(assert (= (or b!347357 b!347344) bm!26848))

(assert (= (and b!347345 res!192338) b!347351))

(assert (= (and b!347351 c!53121) b!347340))

(assert (= (and b!347351 (not c!53121)) b!347347))

(assert (= (and b!347340 res!192334) b!347356))

(assert (= (or b!347340 b!347347) bm!26846))

(declare-fun b_lambda!8513 () Bool)

(assert (=> (not b_lambda!8513) (not b!347348)))

(declare-fun t!10259 () Bool)

(declare-fun tb!3095 () Bool)

(assert (=> (and start!34746 (= defaultEntry!1528 defaultEntry!1528) t!10259) tb!3095))

(declare-fun result!5599 () Bool)

(assert (=> tb!3095 (= result!5599 tp_is_empty!7497)))

(assert (=> b!347348 t!10259))

(declare-fun b_and!14787 () Bool)

(assert (= b_and!14783 (and (=> t!10259 result!5599) b_and!14787)))

(declare-fun m!348271 () Bool)

(assert (=> b!347348 m!348271))

(assert (=> b!347348 m!348253))

(declare-fun m!348273 () Bool)

(assert (=> b!347348 m!348273))

(assert (=> b!347348 m!348253))

(assert (=> b!347348 m!348271))

(declare-fun m!348275 () Bool)

(assert (=> b!347348 m!348275))

(declare-fun m!348277 () Bool)

(assert (=> b!347348 m!348277))

(assert (=> b!347348 m!348275))

(declare-fun m!348279 () Bool)

(assert (=> bm!26847 m!348279))

(declare-fun m!348281 () Bool)

(assert (=> b!347359 m!348281))

(declare-fun m!348283 () Bool)

(assert (=> b!347341 m!348283))

(declare-fun m!348285 () Bool)

(assert (=> b!347341 m!348285))

(declare-fun m!348287 () Bool)

(assert (=> b!347341 m!348287))

(declare-fun m!348289 () Bool)

(assert (=> b!347341 m!348289))

(declare-fun m!348291 () Bool)

(assert (=> b!347341 m!348291))

(assert (=> b!347341 m!348285))

(declare-fun m!348293 () Bool)

(assert (=> b!347341 m!348293))

(declare-fun m!348295 () Bool)

(assert (=> b!347341 m!348295))

(assert (=> b!347341 m!348289))

(declare-fun m!348297 () Bool)

(assert (=> b!347341 m!348297))

(declare-fun m!348299 () Bool)

(assert (=> b!347341 m!348299))

(declare-fun m!348301 () Bool)

(assert (=> b!347341 m!348301))

(declare-fun m!348303 () Bool)

(assert (=> b!347341 m!348303))

(assert (=> b!347341 m!348303))

(declare-fun m!348305 () Bool)

(assert (=> b!347341 m!348305))

(declare-fun m!348307 () Bool)

(assert (=> b!347341 m!348307))

(assert (=> b!347341 m!348253))

(assert (=> b!347341 m!348297))

(declare-fun m!348309 () Bool)

(assert (=> b!347341 m!348309))

(declare-fun m!348311 () Bool)

(assert (=> b!347341 m!348311))

(assert (=> b!347341 m!348279))

(assert (=> b!347354 m!348253))

(assert (=> b!347354 m!348253))

(assert (=> b!347354 m!348259))

(declare-fun m!348313 () Bool)

(assert (=> b!347353 m!348313))

(assert (=> b!347355 m!348253))

(assert (=> b!347355 m!348253))

(assert (=> b!347355 m!348259))

(assert (=> b!347343 m!348253))

(assert (=> b!347343 m!348253))

(declare-fun m!348315 () Bool)

(assert (=> b!347343 m!348315))

(declare-fun m!348317 () Bool)

(assert (=> bm!26848 m!348317))

(declare-fun m!348319 () Bool)

(assert (=> b!347356 m!348319))

(assert (=> d!71141 m!348205))

(declare-fun m!348321 () Bool)

(assert (=> bm!26849 m!348321))

(declare-fun m!348323 () Bool)

(assert (=> bm!26846 m!348323))

(assert (=> b!347215 d!71141))

(declare-fun b!347370 () Bool)

(declare-fun e!212854 () Bool)

(declare-fun call!26858 () Bool)

(assert (=> b!347370 (= e!212854 call!26858)))

(declare-fun bm!26855 () Bool)

(assert (=> bm!26855 (= call!26858 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!347371 () Bool)

(declare-fun e!212856 () Bool)

(assert (=> b!347371 (= e!212854 e!212856)))

(declare-fun lt!163606 () (_ BitVec 64))

(assert (=> b!347371 (= lt!163606 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!163608 () Unit!10778)

(assert (=> b!347371 (= lt!163608 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!163606 #b00000000000000000000000000000000))))

(assert (=> b!347371 (arrayContainsKey!0 _keys!1895 lt!163606 #b00000000000000000000000000000000)))

(declare-fun lt!163607 () Unit!10778)

(assert (=> b!347371 (= lt!163607 lt!163608)))

(declare-fun res!192343 () Bool)

(assert (=> b!347371 (= res!192343 (= (seekEntryOrOpen!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3383 #b00000000000000000000000000000000)))))

(assert (=> b!347371 (=> (not res!192343) (not e!212856))))

(declare-fun b!347372 () Bool)

(declare-fun e!212855 () Bool)

(assert (=> b!347372 (= e!212855 e!212854)))

(declare-fun c!53129 () Bool)

(assert (=> b!347372 (= c!53129 (validKeyInArray!0 (select (arr!8782 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!347373 () Bool)

(assert (=> b!347373 (= e!212856 call!26858)))

(declare-fun d!71143 () Bool)

(declare-fun res!192344 () Bool)

(assert (=> d!71143 (=> res!192344 e!212855)))

(assert (=> d!71143 (= res!192344 (bvsge #b00000000000000000000000000000000 (size!9134 _keys!1895)))))

(assert (=> d!71143 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!212855)))

(assert (= (and d!71143 (not res!192344)) b!347372))

(assert (= (and b!347372 c!53129) b!347371))

(assert (= (and b!347372 (not c!53129)) b!347370))

(assert (= (and b!347371 res!192343) b!347373))

(assert (= (or b!347373 b!347370) bm!26855))

(declare-fun m!348325 () Bool)

(assert (=> bm!26855 m!348325))

(assert (=> b!347371 m!348253))

(declare-fun m!348327 () Bool)

(assert (=> b!347371 m!348327))

(declare-fun m!348329 () Bool)

(assert (=> b!347371 m!348329))

(assert (=> b!347371 m!348253))

(declare-fun m!348331 () Bool)

(assert (=> b!347371 m!348331))

(assert (=> b!347372 m!348253))

(assert (=> b!347372 m!348253))

(assert (=> b!347372 m!348259))

(assert (=> b!347211 d!71143))

(declare-fun d!71145 () Bool)

(declare-fun res!192345 () Bool)

(declare-fun e!212857 () Bool)

(assert (=> d!71145 (=> res!192345 e!212857)))

(assert (=> d!71145 (= res!192345 (= (select (arr!8782 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71145 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!212857)))

(declare-fun b!347374 () Bool)

(declare-fun e!212858 () Bool)

(assert (=> b!347374 (= e!212857 e!212858)))

(declare-fun res!192346 () Bool)

(assert (=> b!347374 (=> (not res!192346) (not e!212858))))

(assert (=> b!347374 (= res!192346 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9134 _keys!1895)))))

(declare-fun b!347375 () Bool)

(assert (=> b!347375 (= e!212858 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71145 (not res!192345)) b!347374))

(assert (= (and b!347374 res!192346) b!347375))

(assert (=> d!71145 m!348253))

(declare-fun m!348333 () Bool)

(assert (=> b!347375 m!348333))

(assert (=> b!347210 d!71145))

(declare-fun d!71147 () Bool)

(assert (=> d!71147 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163611 () Unit!10778)

(declare-fun choose!13 (array!18549 (_ BitVec 64) (_ BitVec 32)) Unit!10778)

(assert (=> d!71147 (= lt!163611 (choose!13 _keys!1895 k0!1348 (index!15712 lt!163506)))))

(assert (=> d!71147 (bvsge (index!15712 lt!163506) #b00000000000000000000000000000000)))

(assert (=> d!71147 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!15712 lt!163506)) lt!163611)))

(declare-fun bs!11871 () Bool)

(assert (= bs!11871 d!71147))

(assert (=> bs!11871 m!348191))

(declare-fun m!348335 () Bool)

(assert (=> bs!11871 m!348335))

(assert (=> b!347210 d!71147))

(declare-fun d!71149 () Bool)

(assert (=> d!71149 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!347206 d!71149))

(declare-fun d!71151 () Bool)

(assert (=> d!71151 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34746 d!71151))

(declare-fun d!71153 () Bool)

(assert (=> d!71153 (= (array_inv!6490 _values!1525) (bvsge (size!9135 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34746 d!71153))

(declare-fun d!71155 () Bool)

(assert (=> d!71155 (= (array_inv!6491 _keys!1895) (bvsge (size!9134 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34746 d!71155))

(declare-fun mapNonEmpty!12708 () Bool)

(declare-fun mapRes!12708 () Bool)

(declare-fun tp!26208 () Bool)

(declare-fun e!212863 () Bool)

(assert (=> mapNonEmpty!12708 (= mapRes!12708 (and tp!26208 e!212863))))

(declare-fun mapKey!12708 () (_ BitVec 32))

(declare-fun mapValue!12708 () ValueCell!3405)

(declare-fun mapRest!12708 () (Array (_ BitVec 32) ValueCell!3405))

(assert (=> mapNonEmpty!12708 (= mapRest!12702 (store mapRest!12708 mapKey!12708 mapValue!12708))))

(declare-fun mapIsEmpty!12708 () Bool)

(assert (=> mapIsEmpty!12708 mapRes!12708))

(declare-fun b!347382 () Bool)

(assert (=> b!347382 (= e!212863 tp_is_empty!7497)))

(declare-fun b!347383 () Bool)

(declare-fun e!212864 () Bool)

(assert (=> b!347383 (= e!212864 tp_is_empty!7497)))

(declare-fun condMapEmpty!12708 () Bool)

(declare-fun mapDefault!12708 () ValueCell!3405)

(assert (=> mapNonEmpty!12702 (= condMapEmpty!12708 (= mapRest!12702 ((as const (Array (_ BitVec 32) ValueCell!3405)) mapDefault!12708)))))

(assert (=> mapNonEmpty!12702 (= tp!26198 (and e!212864 mapRes!12708))))

(assert (= (and mapNonEmpty!12702 condMapEmpty!12708) mapIsEmpty!12708))

(assert (= (and mapNonEmpty!12702 (not condMapEmpty!12708)) mapNonEmpty!12708))

(assert (= (and mapNonEmpty!12708 ((_ is ValueCellFull!3405) mapValue!12708)) b!347382))

(assert (= (and mapNonEmpty!12702 ((_ is ValueCellFull!3405) mapDefault!12708)) b!347383))

(declare-fun m!348337 () Bool)

(assert (=> mapNonEmpty!12708 m!348337))

(declare-fun b_lambda!8515 () Bool)

(assert (= b_lambda!8513 (or (and start!34746 b_free!7545) b_lambda!8515)))

(check-sat (not b_next!7545) (not b!347296) (not b!347359) (not bm!26848) (not d!71133) (not d!71147) (not b!347372) (not mapNonEmpty!12708) (not bm!26831) (not b!347355) (not bm!26855) (not b!347265) (not bm!26847) (not b!347280) (not b_lambda!8515) (not b!347281) (not b!347371) (not b!347353) (not d!71141) (not d!71139) tp_is_empty!7497 (not b!347354) (not bm!26849) (not b!347341) (not b!347287) (not b!347278) (not b!347343) (not b!347294) (not b!347375) (not b!347356) b_and!14787 (not b!347348) (not bm!26846))
(check-sat b_and!14787 (not b_next!7545))
