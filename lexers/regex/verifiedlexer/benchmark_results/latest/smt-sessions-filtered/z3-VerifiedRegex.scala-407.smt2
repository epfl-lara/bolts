; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12058 () Bool)

(assert start!12058)

(declare-fun b!119094 () Bool)

(declare-fun b_free!3809 () Bool)

(declare-fun b_next!3809 () Bool)

(assert (=> b!119094 (= b_free!3809 (not b_next!3809))))

(declare-fun tp!65395 () Bool)

(declare-fun b_and!5939 () Bool)

(assert (=> b!119094 (= tp!65395 b_and!5939)))

(declare-fun b!119097 () Bool)

(declare-fun b_free!3811 () Bool)

(declare-fun b_next!3811 () Bool)

(assert (=> b!119097 (= b_free!3811 (not b_next!3811))))

(declare-fun tp!65393 () Bool)

(declare-fun b_and!5941 () Bool)

(assert (=> b!119097 (= tp!65393 b_and!5941)))

(declare-fun b!119082 () Bool)

(declare-fun e!67978 () Bool)

(declare-fun tp!65397 () Bool)

(declare-fun tp!65404 () Bool)

(assert (=> b!119082 (= e!67978 (and tp!65397 tp!65404))))

(declare-fun b!119083 () Bool)

(declare-fun e!67967 () Bool)

(declare-fun e!67972 () Bool)

(assert (=> b!119083 (= e!67967 e!67972)))

(declare-fun res!56093 () Bool)

(assert (=> b!119083 (=> res!56093 e!67972)))

(declare-datatypes ((C!1980 0))(
  ( (C!1981 (val!716 Int)) )
))
(declare-datatypes ((Regex!529 0))(
  ( (ElementMatch!529 (c!26803 C!1980)) (Concat!913 (regOne!1570 Regex!529) (regTwo!1570 Regex!529)) (EmptyExpr!529) (Star!529 (reg!858 Regex!529)) (EmptyLang!529) (Union!529 (regOne!1571 Regex!529) (regTwo!1571 Regex!529)) )
))
(declare-fun r!15532 () Regex!529)

(declare-fun lostCause!55 (Regex!529) Bool)

(assert (=> b!119083 (= res!56093 (not (lostCause!55 r!15532)))))

(declare-datatypes ((List!1971 0))(
  ( (Nil!1965) (Cons!1965 (h!7362 C!1980) (t!22448 List!1971)) )
))
(declare-fun testedSuffix!285 () List!1971)

(declare-fun lt!35233 () List!1971)

(assert (=> b!119083 (and (= testedSuffix!285 lt!35233) (= lt!35233 testedSuffix!285))))

(declare-fun testedP!367 () List!1971)

(declare-fun totalInput!1363 () List!1971)

(declare-datatypes ((Unit!1471 0))(
  ( (Unit!1472) )
))
(declare-fun lt!35235 () Unit!1471)

(declare-fun lemmaSamePrefixThenSameSuffix!46 (List!1971 List!1971 List!1971 List!1971 List!1971) Unit!1471)

(assert (=> b!119083 (= lt!35235 (lemmaSamePrefixThenSameSuffix!46 testedP!367 testedSuffix!285 testedP!367 lt!35233 totalInput!1363))))

(declare-fun getSuffix!50 (List!1971 List!1971) List!1971)

(assert (=> b!119083 (= lt!35233 (getSuffix!50 totalInput!1363 testedP!367))))

(declare-fun b!119084 () Bool)

(declare-fun res!56095 () Bool)

(declare-fun e!67976 () Bool)

(assert (=> b!119084 (=> (not res!56095) (not e!67976))))

(declare-fun testedPSize!285 () Int)

(declare-fun size!1805 (List!1971) Int)

(assert (=> b!119084 (= res!56095 (= testedPSize!285 (size!1805 testedP!367)))))

(declare-fun b!119085 () Bool)

(declare-fun tp!65402 () Bool)

(assert (=> b!119085 (= e!67978 tp!65402)))

(declare-fun b!119086 () Bool)

(declare-fun res!56096 () Bool)

(declare-fun e!67965 () Bool)

(assert (=> b!119086 (=> (not res!56096) (not e!67965))))

(declare-datatypes ((Hashable!391 0))(
  ( (HashableExt!390 (__x!2110 Int)) )
))
(declare-datatypes ((tuple2!2240 0))(
  ( (tuple2!2241 (_1!1330 Regex!529) (_2!1330 C!1980)) )
))
(declare-datatypes ((tuple2!2242 0))(
  ( (tuple2!2243 (_1!1331 tuple2!2240) (_2!1331 Regex!529)) )
))
(declare-datatypes ((List!1972 0))(
  ( (Nil!1966) (Cons!1966 (h!7363 tuple2!2242) (t!22449 List!1972)) )
))
(declare-datatypes ((array!1445 0))(
  ( (array!1446 (arr!674 (Array (_ BitVec 32) (_ BitVec 64))) (size!1806 (_ BitVec 32))) )
))
(declare-datatypes ((array!1447 0))(
  ( (array!1448 (arr!675 (Array (_ BitVec 32) List!1972)) (size!1807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!790 0))(
  ( (LongMapFixedSize!791 (defaultEntry!734 Int) (mask!1327 (_ BitVec 32)) (extraKeys!641 (_ BitVec 32)) (zeroValue!651 List!1972) (minValue!651 List!1972) (_size!923 (_ BitVec 32)) (_keys!686 array!1445) (_values!673 array!1447) (_vacant!456 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1569 0))(
  ( (Cell!1570 (v!13321 LongMapFixedSize!790)) )
))
(declare-datatypes ((MutLongMap!395 0))(
  ( (LongMap!395 (underlying!989 Cell!1569)) (MutLongMapExt!394 (__x!2111 Int)) )
))
(declare-datatypes ((Cell!1571 0))(
  ( (Cell!1572 (v!13322 MutLongMap!395)) )
))
(declare-datatypes ((MutableMap!391 0))(
  ( (MutableMapExt!390 (__x!2112 Int)) (HashMap!391 (underlying!990 Cell!1571) (hashF!2267 Hashable!391) (_size!924 (_ BitVec 32)) (defaultValue!540 Int)) )
))
(declare-datatypes ((Cache!218 0))(
  ( (Cache!219 (cache!843 MutableMap!391)) )
))
(declare-fun cache!470 () Cache!218)

(declare-fun valid!357 (Cache!218) Bool)

(assert (=> b!119086 (= res!56096 (valid!357 cache!470))))

(declare-fun b!119087 () Bool)

(declare-fun e!67971 () Bool)

(declare-fun e!67964 () Bool)

(assert (=> b!119087 (= e!67971 e!67964)))

(declare-fun b!119089 () Bool)

(declare-fun tp_is_empty!1113 () Bool)

(assert (=> b!119089 (= e!67978 tp_is_empty!1113)))

(declare-fun b!119090 () Bool)

(declare-fun e!67966 () Bool)

(declare-fun tp!65394 () Bool)

(assert (=> b!119090 (= e!67966 (and tp_is_empty!1113 tp!65394))))

(declare-fun b!119091 () Bool)

(declare-fun e!67969 () Bool)

(declare-fun e!67975 () Bool)

(assert (=> b!119091 (= e!67969 e!67975)))

(declare-fun b!119092 () Bool)

(declare-fun e!67968 () Bool)

(declare-fun tp!65403 () Bool)

(declare-fun mapRes!1526 () Bool)

(assert (=> b!119092 (= e!67968 (and tp!65403 mapRes!1526))))

(declare-fun condMapEmpty!1526 () Bool)

(declare-fun mapDefault!1526 () List!1972)

(assert (=> b!119092 (= condMapEmpty!1526 (= (arr!675 (_values!673 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) ((as const (Array (_ BitVec 32) List!1972)) mapDefault!1526)))))

(declare-fun b!119093 () Bool)

(assert (=> b!119093 (= e!67976 (not e!67967))))

(declare-fun res!56097 () Bool)

(assert (=> b!119093 (=> res!56097 e!67967)))

(declare-fun isPrefix!111 (List!1971 List!1971) Bool)

(assert (=> b!119093 (= res!56097 (not (isPrefix!111 testedP!367 totalInput!1363)))))

(declare-fun lt!35232 () List!1971)

(assert (=> b!119093 (isPrefix!111 testedP!367 lt!35232)))

(declare-fun lt!35234 () Unit!1471)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!57 (List!1971 List!1971) Unit!1471)

(assert (=> b!119093 (= lt!35234 (lemmaConcatTwoListThenFirstIsPrefix!57 testedP!367 testedSuffix!285))))

(declare-fun tp!65398 () Bool)

(declare-fun tp!65391 () Bool)

(declare-fun array_inv!483 (array!1445) Bool)

(declare-fun array_inv!484 (array!1447) Bool)

(assert (=> b!119094 (= e!67964 (and tp!65395 tp!65391 tp!65398 (array_inv!483 (_keys!686 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) (array_inv!484 (_values!673 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) e!67968))))

(declare-fun b!119095 () Bool)

(declare-fun e!67970 () Bool)

(declare-fun tp!65400 () Bool)

(assert (=> b!119095 (= e!67970 (and tp_is_empty!1113 tp!65400))))

(declare-fun totalInputSize!643 () Int)

(declare-fun b!119096 () Bool)

(declare-datatypes ((tuple2!2244 0))(
  ( (tuple2!2245 (_1!1332 List!1971) (_2!1332 List!1971)) )
))
(declare-fun findLongestMatchInner!40 (Regex!529 List!1971 Int List!1971 List!1971 Int) tuple2!2244)

(assert (=> b!119096 (= e!67972 (= (tuple2!2245 Nil!1965 totalInput!1363) (findLongestMatchInner!40 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(declare-fun mapIsEmpty!1526 () Bool)

(assert (=> mapIsEmpty!1526 mapRes!1526))

(declare-fun e!67963 () Bool)

(assert (=> b!119097 (= e!67975 (and e!67963 tp!65393))))

(declare-fun b!119098 () Bool)

(declare-fun tp!65399 () Bool)

(declare-fun tp!65392 () Bool)

(assert (=> b!119098 (= e!67978 (and tp!65399 tp!65392))))

(declare-fun b!119099 () Bool)

(declare-fun res!56092 () Bool)

(assert (=> b!119099 (=> (not res!56092) (not e!67976))))

(assert (=> b!119099 (= res!56092 (= totalInputSize!643 (size!1805 totalInput!1363)))))

(declare-fun res!56094 () Bool)

(assert (=> start!12058 (=> (not res!56094) (not e!67965))))

(declare-fun validRegex!131 (Regex!529) Bool)

(assert (=> start!12058 (= res!56094 (validRegex!131 r!15532))))

(assert (=> start!12058 e!67965))

(assert (=> start!12058 true))

(assert (=> start!12058 e!67978))

(assert (=> start!12058 e!67970))

(declare-fun e!67974 () Bool)

(assert (=> start!12058 e!67974))

(assert (=> start!12058 e!67966))

(declare-fun inv!2488 (Cache!218) Bool)

(assert (=> start!12058 (and (inv!2488 cache!470) e!67969)))

(declare-fun b!119088 () Bool)

(assert (=> b!119088 (= e!67965 e!67976)))

(declare-fun res!56091 () Bool)

(assert (=> b!119088 (=> (not res!56091) (not e!67976))))

(assert (=> b!119088 (= res!56091 (= lt!35232 totalInput!1363))))

(declare-fun ++!363 (List!1971 List!1971) List!1971)

(assert (=> b!119088 (= lt!35232 (++!363 testedP!367 testedSuffix!285))))

(declare-fun b!119100 () Bool)

(declare-fun e!67977 () Bool)

(declare-fun lt!35236 () MutLongMap!395)

(get-info :version)

(assert (=> b!119100 (= e!67963 (and e!67977 ((_ is LongMap!395) lt!35236)))))

(assert (=> b!119100 (= lt!35236 (v!13322 (underlying!990 (cache!843 cache!470))))))

(declare-fun b!119101 () Bool)

(assert (=> b!119101 (= e!67977 e!67971)))

(declare-fun b!119102 () Bool)

(declare-fun tp!65401 () Bool)

(assert (=> b!119102 (= e!67974 (and tp_is_empty!1113 tp!65401))))

(declare-fun mapNonEmpty!1526 () Bool)

(declare-fun tp!65396 () Bool)

(declare-fun tp!65390 () Bool)

(assert (=> mapNonEmpty!1526 (= mapRes!1526 (and tp!65396 tp!65390))))

(declare-fun mapValue!1526 () List!1972)

(declare-fun mapKey!1526 () (_ BitVec 32))

(declare-fun mapRest!1526 () (Array (_ BitVec 32) List!1972))

(assert (=> mapNonEmpty!1526 (= (arr!675 (_values!673 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) (store mapRest!1526 mapKey!1526 mapValue!1526))))

(assert (= (and start!12058 res!56094) b!119086))

(assert (= (and b!119086 res!56096) b!119088))

(assert (= (and b!119088 res!56091) b!119084))

(assert (= (and b!119084 res!56095) b!119099))

(assert (= (and b!119099 res!56092) b!119093))

(assert (= (and b!119093 (not res!56097)) b!119083))

(assert (= (and b!119083 (not res!56093)) b!119096))

(assert (= (and start!12058 ((_ is ElementMatch!529) r!15532)) b!119089))

(assert (= (and start!12058 ((_ is Concat!913) r!15532)) b!119098))

(assert (= (and start!12058 ((_ is Star!529) r!15532)) b!119085))

(assert (= (and start!12058 ((_ is Union!529) r!15532)) b!119082))

(assert (= (and start!12058 ((_ is Cons!1965) totalInput!1363)) b!119095))

(assert (= (and start!12058 ((_ is Cons!1965) testedSuffix!285)) b!119102))

(assert (= (and start!12058 ((_ is Cons!1965) testedP!367)) b!119090))

(assert (= (and b!119092 condMapEmpty!1526) mapIsEmpty!1526))

(assert (= (and b!119092 (not condMapEmpty!1526)) mapNonEmpty!1526))

(assert (= b!119094 b!119092))

(assert (= b!119087 b!119094))

(assert (= b!119101 b!119087))

(assert (= (and b!119100 ((_ is LongMap!395) (v!13322 (underlying!990 (cache!843 cache!470))))) b!119101))

(assert (= b!119097 b!119100))

(assert (= (and b!119091 ((_ is HashMap!391) (cache!843 cache!470))) b!119097))

(assert (= start!12058 b!119091))

(declare-fun m!106165 () Bool)

(assert (=> b!119094 m!106165))

(declare-fun m!106167 () Bool)

(assert (=> b!119094 m!106167))

(declare-fun m!106169 () Bool)

(assert (=> b!119086 m!106169))

(declare-fun m!106171 () Bool)

(assert (=> b!119083 m!106171))

(declare-fun m!106173 () Bool)

(assert (=> b!119083 m!106173))

(declare-fun m!106175 () Bool)

(assert (=> b!119083 m!106175))

(declare-fun m!106177 () Bool)

(assert (=> start!12058 m!106177))

(declare-fun m!106179 () Bool)

(assert (=> start!12058 m!106179))

(declare-fun m!106181 () Bool)

(assert (=> b!119084 m!106181))

(declare-fun m!106183 () Bool)

(assert (=> b!119088 m!106183))

(declare-fun m!106185 () Bool)

(assert (=> b!119093 m!106185))

(declare-fun m!106187 () Bool)

(assert (=> b!119093 m!106187))

(declare-fun m!106189 () Bool)

(assert (=> b!119093 m!106189))

(declare-fun m!106191 () Bool)

(assert (=> b!119096 m!106191))

(declare-fun m!106193 () Bool)

(assert (=> b!119099 m!106193))

(declare-fun m!106195 () Bool)

(assert (=> mapNonEmpty!1526 m!106195))

(check-sat (not b!119090) (not b!119092) tp_is_empty!1113 (not b!119094) (not b!119086) (not b!119093) (not start!12058) (not b!119083) (not b!119095) (not b!119099) (not b_next!3809) b_and!5939 (not b!119084) (not b!119085) b_and!5941 (not b!119102) (not b!119082) (not b!119098) (not mapNonEmpty!1526) (not b!119088) (not b_next!3811) (not b!119096))
(check-sat b_and!5941 b_and!5939 (not b_next!3811) (not b_next!3809))
(get-model)

(declare-fun bm!4983 () Bool)

(declare-fun call!4989 () Bool)

(assert (=> bm!4983 (= call!4989 (isPrefix!111 totalInput!1363 totalInput!1363))))

(declare-fun lt!35308 () List!1971)

(declare-fun call!4993 () tuple2!2244)

(declare-fun bm!4984 () Bool)

(declare-fun call!4995 () Regex!529)

(declare-fun call!4992 () List!1971)

(assert (=> bm!4984 (= call!4993 (findLongestMatchInner!40 call!4995 lt!35308 (+ testedPSize!285 1) call!4992 totalInput!1363 totalInputSize!643))))

(declare-fun bm!4985 () Bool)

(declare-fun call!4988 () Bool)

(declare-fun nullable!77 (Regex!529) Bool)

(assert (=> bm!4985 (= call!4988 (nullable!77 r!15532))))

(declare-fun bm!4986 () Bool)

(declare-fun call!4991 () C!1980)

(declare-fun head!491 (List!1971) C!1980)

(assert (=> bm!4986 (= call!4991 (head!491 testedSuffix!285))))

(declare-fun b!119131 () Bool)

(declare-fun e!68001 () tuple2!2244)

(assert (=> b!119131 (= e!68001 (tuple2!2245 testedP!367 testedSuffix!285))))

(declare-fun b!119132 () Bool)

(declare-fun e!67997 () tuple2!2244)

(declare-fun e!68000 () tuple2!2244)

(assert (=> b!119132 (= e!67997 e!68000)))

(declare-fun c!26816 () Bool)

(assert (=> b!119132 (= c!26816 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!119133 () Bool)

(declare-fun e!67998 () Unit!1471)

(declare-fun Unit!1473 () Unit!1471)

(assert (=> b!119133 (= e!67998 Unit!1473)))

(declare-fun lt!35301 () Unit!1471)

(declare-fun call!4994 () Unit!1471)

(assert (=> b!119133 (= lt!35301 call!4994)))

(assert (=> b!119133 call!4989))

(declare-fun lt!35306 () Unit!1471)

(assert (=> b!119133 (= lt!35306 lt!35301)))

(declare-fun lt!35300 () Unit!1471)

(declare-fun call!4990 () Unit!1471)

(assert (=> b!119133 (= lt!35300 call!4990)))

(assert (=> b!119133 (= totalInput!1363 testedP!367)))

(declare-fun lt!35293 () Unit!1471)

(assert (=> b!119133 (= lt!35293 lt!35300)))

(assert (=> b!119133 false))

(declare-fun b!119135 () Bool)

(declare-fun e!67995 () tuple2!2244)

(assert (=> b!119135 (= e!67995 (tuple2!2245 testedP!367 Nil!1965))))

(declare-fun b!119136 () Bool)

(assert (=> b!119136 (= e!67995 (tuple2!2245 Nil!1965 totalInput!1363))))

(declare-fun b!119137 () Bool)

(declare-fun e!67999 () Bool)

(declare-fun lt!35320 () tuple2!2244)

(assert (=> b!119137 (= e!67999 (>= (size!1805 (_1!1332 lt!35320)) (size!1805 testedP!367)))))

(declare-fun bm!4987 () Bool)

(declare-fun tail!227 (List!1971) List!1971)

(assert (=> bm!4987 (= call!4992 (tail!227 testedSuffix!285))))

(declare-fun b!119138 () Bool)

(declare-fun e!68002 () tuple2!2244)

(assert (=> b!119138 (= e!68002 call!4993)))

(declare-fun b!119139 () Bool)

(assert (=> b!119139 (= e!68002 e!68001)))

(declare-fun lt!35309 () tuple2!2244)

(assert (=> b!119139 (= lt!35309 call!4993)))

(declare-fun c!26819 () Bool)

(declare-fun isEmpty!810 (List!1971) Bool)

(assert (=> b!119139 (= c!26819 (isEmpty!810 (_1!1332 lt!35309)))))

(declare-fun bm!4988 () Bool)

(declare-fun derivativeStep!48 (Regex!529 C!1980) Regex!529)

(assert (=> bm!4988 (= call!4995 (derivativeStep!48 r!15532 call!4991))))

(declare-fun b!119140 () Bool)

(declare-fun Unit!1474 () Unit!1471)

(assert (=> b!119140 (= e!67998 Unit!1474)))

(declare-fun bm!4989 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!29 (List!1971 List!1971 List!1971) Unit!1471)

(assert (=> bm!4989 (= call!4990 (lemmaIsPrefixSameLengthThenSameList!29 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun b!119141 () Bool)

(declare-fun c!26817 () Bool)

(assert (=> b!119141 (= c!26817 call!4988)))

(declare-fun lt!35298 () Unit!1471)

(declare-fun lt!35319 () Unit!1471)

(assert (=> b!119141 (= lt!35298 lt!35319)))

(assert (=> b!119141 (= totalInput!1363 testedP!367)))

(assert (=> b!119141 (= lt!35319 call!4990)))

(declare-fun lt!35297 () Unit!1471)

(declare-fun lt!35296 () Unit!1471)

(assert (=> b!119141 (= lt!35297 lt!35296)))

(assert (=> b!119141 call!4989))

(assert (=> b!119141 (= lt!35296 call!4994)))

(assert (=> b!119141 (= e!68000 e!67995)))

(declare-fun b!119142 () Bool)

(declare-fun c!26821 () Bool)

(assert (=> b!119142 (= c!26821 call!4988)))

(declare-fun lt!35294 () Unit!1471)

(declare-fun lt!35313 () Unit!1471)

(assert (=> b!119142 (= lt!35294 lt!35313)))

(declare-fun lt!35305 () List!1971)

(declare-fun lt!35317 () C!1980)

(assert (=> b!119142 (= (++!363 (++!363 testedP!367 (Cons!1965 lt!35317 Nil!1965)) lt!35305) totalInput!1363)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!16 (List!1971 C!1980 List!1971 List!1971) Unit!1471)

(assert (=> b!119142 (= lt!35313 (lemmaMoveElementToOtherListKeepsConcatEq!16 testedP!367 lt!35317 lt!35305 totalInput!1363))))

(assert (=> b!119142 (= lt!35305 (tail!227 testedSuffix!285))))

(assert (=> b!119142 (= lt!35317 (head!491 testedSuffix!285))))

(declare-fun lt!35307 () Unit!1471)

(declare-fun lt!35303 () Unit!1471)

(assert (=> b!119142 (= lt!35307 lt!35303)))

(assert (=> b!119142 (isPrefix!111 (++!363 testedP!367 (Cons!1965 (head!491 (getSuffix!50 totalInput!1363 testedP!367)) Nil!1965)) totalInput!1363)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!20 (List!1971 List!1971) Unit!1471)

(assert (=> b!119142 (= lt!35303 (lemmaAddHeadSuffixToPrefixStillPrefix!20 testedP!367 totalInput!1363))))

(declare-fun lt!35315 () Unit!1471)

(declare-fun lt!35310 () Unit!1471)

(assert (=> b!119142 (= lt!35315 lt!35310)))

(assert (=> b!119142 (= lt!35310 (lemmaAddHeadSuffixToPrefixStillPrefix!20 testedP!367 totalInput!1363))))

(assert (=> b!119142 (= lt!35308 (++!363 testedP!367 (Cons!1965 (head!491 testedSuffix!285) Nil!1965)))))

(declare-fun lt!35304 () Unit!1471)

(assert (=> b!119142 (= lt!35304 e!67998)))

(declare-fun c!26820 () Bool)

(assert (=> b!119142 (= c!26820 (= (size!1805 testedP!367) (size!1805 totalInput!1363)))))

(declare-fun lt!35295 () Unit!1471)

(declare-fun lt!35302 () Unit!1471)

(assert (=> b!119142 (= lt!35295 lt!35302)))

(assert (=> b!119142 (<= (size!1805 testedP!367) (size!1805 totalInput!1363))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!27 (List!1971 List!1971) Unit!1471)

(assert (=> b!119142 (= lt!35302 (lemmaIsPrefixThenSmallerEqSize!27 testedP!367 totalInput!1363))))

(assert (=> b!119142 (= e!68000 e!68002)))

(declare-fun b!119143 () Bool)

(declare-fun e!67996 () Bool)

(assert (=> b!119143 (= e!67996 e!67999)))

(declare-fun res!56102 () Bool)

(assert (=> b!119143 (=> res!56102 e!67999)))

(assert (=> b!119143 (= res!56102 (isEmpty!810 (_1!1332 lt!35320)))))

(declare-fun b!119144 () Bool)

(assert (=> b!119144 (= e!68001 lt!35309)))

(declare-fun bm!4990 () Bool)

(declare-fun lemmaIsPrefixRefl!83 (List!1971 List!1971) Unit!1471)

(assert (=> bm!4990 (= call!4994 (lemmaIsPrefixRefl!83 totalInput!1363 totalInput!1363))))

(declare-fun d!28600 () Bool)

(assert (=> d!28600 e!67996))

(declare-fun res!56103 () Bool)

(assert (=> d!28600 (=> (not res!56103) (not e!67996))))

(assert (=> d!28600 (= res!56103 (= (++!363 (_1!1332 lt!35320) (_2!1332 lt!35320)) totalInput!1363))))

(assert (=> d!28600 (= lt!35320 e!67997)))

(declare-fun c!26818 () Bool)

(assert (=> d!28600 (= c!26818 (lostCause!55 r!15532))))

(declare-fun lt!35311 () Unit!1471)

(declare-fun Unit!1475 () Unit!1471)

(assert (=> d!28600 (= lt!35311 Unit!1475)))

(assert (=> d!28600 (= (getSuffix!50 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!35312 () Unit!1471)

(declare-fun lt!35314 () Unit!1471)

(assert (=> d!28600 (= lt!35312 lt!35314)))

(declare-fun lt!35299 () List!1971)

(assert (=> d!28600 (= testedSuffix!285 lt!35299)))

(assert (=> d!28600 (= lt!35314 (lemmaSamePrefixThenSameSuffix!46 testedP!367 testedSuffix!285 testedP!367 lt!35299 totalInput!1363))))

(assert (=> d!28600 (= lt!35299 (getSuffix!50 totalInput!1363 testedP!367))))

(declare-fun lt!35316 () Unit!1471)

(declare-fun lt!35318 () Unit!1471)

(assert (=> d!28600 (= lt!35316 lt!35318)))

(assert (=> d!28600 (isPrefix!111 testedP!367 (++!363 testedP!367 testedSuffix!285))))

(assert (=> d!28600 (= lt!35318 (lemmaConcatTwoListThenFirstIsPrefix!57 testedP!367 testedSuffix!285))))

(assert (=> d!28600 (validRegex!131 r!15532)))

(assert (=> d!28600 (= (findLongestMatchInner!40 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!35320)))

(declare-fun b!119134 () Bool)

(assert (=> b!119134 (= e!67997 (tuple2!2245 Nil!1965 totalInput!1363))))

(assert (= (and d!28600 c!26818) b!119134))

(assert (= (and d!28600 (not c!26818)) b!119132))

(assert (= (and b!119132 c!26816) b!119141))

(assert (= (and b!119132 (not c!26816)) b!119142))

(assert (= (and b!119141 c!26817) b!119135))

(assert (= (and b!119141 (not c!26817)) b!119136))

(assert (= (and b!119142 c!26820) b!119133))

(assert (= (and b!119142 (not c!26820)) b!119140))

(assert (= (and b!119142 c!26821) b!119139))

(assert (= (and b!119142 (not c!26821)) b!119138))

(assert (= (and b!119139 c!26819) b!119131))

(assert (= (and b!119139 (not c!26819)) b!119144))

(assert (= (or b!119139 b!119138) bm!4987))

(assert (= (or b!119139 b!119138) bm!4986))

(assert (= (or b!119139 b!119138) bm!4988))

(assert (= (or b!119139 b!119138) bm!4984))

(assert (= (or b!119141 b!119133) bm!4990))

(assert (= (or b!119141 b!119133) bm!4983))

(assert (= (or b!119141 b!119142) bm!4985))

(assert (= (or b!119141 b!119133) bm!4989))

(assert (= (and d!28600 res!56103) b!119143))

(assert (= (and b!119143 (not res!56102)) b!119137))

(declare-fun m!106197 () Bool)

(assert (=> b!119137 m!106197))

(assert (=> b!119137 m!106181))

(declare-fun m!106199 () Bool)

(assert (=> b!119139 m!106199))

(assert (=> d!28600 m!106177))

(assert (=> d!28600 m!106171))

(assert (=> d!28600 m!106183))

(declare-fun m!106201 () Bool)

(assert (=> d!28600 m!106201))

(assert (=> d!28600 m!106175))

(assert (=> d!28600 m!106183))

(declare-fun m!106203 () Bool)

(assert (=> d!28600 m!106203))

(declare-fun m!106205 () Bool)

(assert (=> d!28600 m!106205))

(assert (=> d!28600 m!106189))

(declare-fun m!106207 () Bool)

(assert (=> bm!4989 m!106207))

(declare-fun m!106209 () Bool)

(assert (=> bm!4988 m!106209))

(declare-fun m!106211 () Bool)

(assert (=> bm!4986 m!106211))

(declare-fun m!106213 () Bool)

(assert (=> bm!4990 m!106213))

(declare-fun m!106215 () Bool)

(assert (=> bm!4983 m!106215))

(declare-fun m!106217 () Bool)

(assert (=> b!119143 m!106217))

(declare-fun m!106219 () Bool)

(assert (=> bm!4987 m!106219))

(declare-fun m!106221 () Bool)

(assert (=> bm!4984 m!106221))

(declare-fun m!106223 () Bool)

(assert (=> bm!4985 m!106223))

(assert (=> b!119142 m!106181))

(declare-fun m!106225 () Bool)

(assert (=> b!119142 m!106225))

(assert (=> b!119142 m!106211))

(assert (=> b!119142 m!106193))

(declare-fun m!106227 () Bool)

(assert (=> b!119142 m!106227))

(declare-fun m!106229 () Bool)

(assert (=> b!119142 m!106229))

(declare-fun m!106231 () Bool)

(assert (=> b!119142 m!106231))

(assert (=> b!119142 m!106175))

(declare-fun m!106233 () Bool)

(assert (=> b!119142 m!106233))

(assert (=> b!119142 m!106227))

(declare-fun m!106235 () Bool)

(assert (=> b!119142 m!106235))

(assert (=> b!119142 m!106175))

(declare-fun m!106237 () Bool)

(assert (=> b!119142 m!106237))

(declare-fun m!106239 () Bool)

(assert (=> b!119142 m!106239))

(assert (=> b!119142 m!106237))

(declare-fun m!106241 () Bool)

(assert (=> b!119142 m!106241))

(assert (=> b!119142 m!106219))

(assert (=> b!119096 d!28600))

(declare-fun d!28602 () Bool)

(declare-fun lostCauseFct!25 (Regex!529) Bool)

(assert (=> d!28602 (= (lostCause!55 r!15532) (lostCauseFct!25 r!15532))))

(declare-fun bs!11901 () Bool)

(assert (= bs!11901 d!28602))

(declare-fun m!106243 () Bool)

(assert (=> bs!11901 m!106243))

(assert (=> b!119083 d!28602))

(declare-fun d!28604 () Bool)

(assert (=> d!28604 (= testedSuffix!285 lt!35233)))

(declare-fun lt!35323 () Unit!1471)

(declare-fun choose!1550 (List!1971 List!1971 List!1971 List!1971 List!1971) Unit!1471)

(assert (=> d!28604 (= lt!35323 (choose!1550 testedP!367 testedSuffix!285 testedP!367 lt!35233 totalInput!1363))))

(assert (=> d!28604 (isPrefix!111 testedP!367 totalInput!1363)))

(assert (=> d!28604 (= (lemmaSamePrefixThenSameSuffix!46 testedP!367 testedSuffix!285 testedP!367 lt!35233 totalInput!1363) lt!35323)))

(declare-fun bs!11902 () Bool)

(assert (= bs!11902 d!28604))

(declare-fun m!106245 () Bool)

(assert (=> bs!11902 m!106245))

(assert (=> bs!11902 m!106185))

(assert (=> b!119083 d!28604))

(declare-fun d!28606 () Bool)

(declare-fun lt!35326 () List!1971)

(assert (=> d!28606 (= (++!363 testedP!367 lt!35326) totalInput!1363)))

(declare-fun e!68005 () List!1971)

(assert (=> d!28606 (= lt!35326 e!68005)))

(declare-fun c!26824 () Bool)

(assert (=> d!28606 (= c!26824 ((_ is Cons!1965) testedP!367))))

(assert (=> d!28606 (>= (size!1805 totalInput!1363) (size!1805 testedP!367))))

(assert (=> d!28606 (= (getSuffix!50 totalInput!1363 testedP!367) lt!35326)))

(declare-fun b!119149 () Bool)

(assert (=> b!119149 (= e!68005 (getSuffix!50 (tail!227 totalInput!1363) (t!22448 testedP!367)))))

(declare-fun b!119150 () Bool)

(assert (=> b!119150 (= e!68005 totalInput!1363)))

(assert (= (and d!28606 c!26824) b!119149))

(assert (= (and d!28606 (not c!26824)) b!119150))

(declare-fun m!106247 () Bool)

(assert (=> d!28606 m!106247))

(assert (=> d!28606 m!106193))

(assert (=> d!28606 m!106181))

(declare-fun m!106249 () Bool)

(assert (=> b!119149 m!106249))

(assert (=> b!119149 m!106249))

(declare-fun m!106251 () Bool)

(assert (=> b!119149 m!106251))

(assert (=> b!119083 d!28606))

(declare-fun d!28608 () Bool)

(assert (=> d!28608 (= (array_inv!483 (_keys!686 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) (bvsge (size!1806 (_keys!686 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119094 d!28608))

(declare-fun d!28610 () Bool)

(assert (=> d!28610 (= (array_inv!484 (_values!673 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) (bvsge (size!1807 (_values!673 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119094 d!28610))

(declare-fun b!119169 () Bool)

(declare-fun e!68021 () Bool)

(declare-fun e!68024 () Bool)

(assert (=> b!119169 (= e!68021 e!68024)))

(declare-fun c!26830 () Bool)

(assert (=> b!119169 (= c!26830 ((_ is Union!529) r!15532))))

(declare-fun call!5003 () Bool)

(declare-fun c!26829 () Bool)

(declare-fun bm!4997 () Bool)

(assert (=> bm!4997 (= call!5003 (validRegex!131 (ite c!26829 (reg!858 r!15532) (ite c!26830 (regTwo!1571 r!15532) (regOne!1570 r!15532)))))))

(declare-fun bm!4998 () Bool)

(declare-fun call!5004 () Bool)

(assert (=> bm!4998 (= call!5004 call!5003)))

(declare-fun b!119170 () Bool)

(declare-fun e!68022 () Bool)

(declare-fun e!68025 () Bool)

(assert (=> b!119170 (= e!68022 e!68025)))

(declare-fun res!56115 () Bool)

(assert (=> b!119170 (=> (not res!56115) (not e!68025))))

(assert (=> b!119170 (= res!56115 call!5004)))

(declare-fun bm!4999 () Bool)

(declare-fun call!5002 () Bool)

(assert (=> bm!4999 (= call!5002 (validRegex!131 (ite c!26830 (regOne!1571 r!15532) (regTwo!1570 r!15532))))))

(declare-fun b!119171 () Bool)

(declare-fun e!68026 () Bool)

(assert (=> b!119171 (= e!68026 call!5003)))

(declare-fun b!119172 () Bool)

(declare-fun e!68023 () Bool)

(assert (=> b!119172 (= e!68023 call!5004)))

(declare-fun b!119173 () Bool)

(assert (=> b!119173 (= e!68021 e!68026)))

(declare-fun res!56116 () Bool)

(assert (=> b!119173 (= res!56116 (not (nullable!77 (reg!858 r!15532))))))

(assert (=> b!119173 (=> (not res!56116) (not e!68026))))

(declare-fun b!119174 () Bool)

(assert (=> b!119174 (= e!68025 call!5002)))

(declare-fun b!119176 () Bool)

(declare-fun res!56118 () Bool)

(assert (=> b!119176 (=> res!56118 e!68022)))

(assert (=> b!119176 (= res!56118 (not ((_ is Concat!913) r!15532)))))

(assert (=> b!119176 (= e!68024 e!68022)))

(declare-fun b!119177 () Bool)

(declare-fun e!68020 () Bool)

(assert (=> b!119177 (= e!68020 e!68021)))

(assert (=> b!119177 (= c!26829 ((_ is Star!529) r!15532))))

(declare-fun b!119175 () Bool)

(declare-fun res!56114 () Bool)

(assert (=> b!119175 (=> (not res!56114) (not e!68023))))

(assert (=> b!119175 (= res!56114 call!5002)))

(assert (=> b!119175 (= e!68024 e!68023)))

(declare-fun d!28612 () Bool)

(declare-fun res!56117 () Bool)

(assert (=> d!28612 (=> res!56117 e!68020)))

(assert (=> d!28612 (= res!56117 ((_ is ElementMatch!529) r!15532))))

(assert (=> d!28612 (= (validRegex!131 r!15532) e!68020)))

(assert (= (and d!28612 (not res!56117)) b!119177))

(assert (= (and b!119177 c!26829) b!119173))

(assert (= (and b!119177 (not c!26829)) b!119169))

(assert (= (and b!119173 res!56116) b!119171))

(assert (= (and b!119169 c!26830) b!119175))

(assert (= (and b!119169 (not c!26830)) b!119176))

(assert (= (and b!119175 res!56114) b!119172))

(assert (= (and b!119176 (not res!56118)) b!119170))

(assert (= (and b!119170 res!56115) b!119174))

(assert (= (or b!119172 b!119170) bm!4998))

(assert (= (or b!119175 b!119174) bm!4999))

(assert (= (or b!119171 bm!4998) bm!4997))

(declare-fun m!106253 () Bool)

(assert (=> bm!4997 m!106253))

(declare-fun m!106255 () Bool)

(assert (=> bm!4999 m!106255))

(declare-fun m!106257 () Bool)

(assert (=> b!119173 m!106257))

(assert (=> start!12058 d!28612))

(declare-fun d!28614 () Bool)

(declare-fun res!56121 () Bool)

(declare-fun e!68029 () Bool)

(assert (=> d!28614 (=> (not res!56121) (not e!68029))))

(assert (=> d!28614 (= res!56121 ((_ is HashMap!391) (cache!843 cache!470)))))

(assert (=> d!28614 (= (inv!2488 cache!470) e!68029)))

(declare-fun b!119180 () Bool)

(declare-fun validCacheMap!22 (MutableMap!391) Bool)

(assert (=> b!119180 (= e!68029 (validCacheMap!22 (cache!843 cache!470)))))

(assert (= (and d!28614 res!56121) b!119180))

(declare-fun m!106259 () Bool)

(assert (=> b!119180 m!106259))

(assert (=> start!12058 d!28614))

(declare-fun d!28616 () Bool)

(declare-fun lt!35329 () Int)

(assert (=> d!28616 (>= lt!35329 0)))

(declare-fun e!68032 () Int)

(assert (=> d!28616 (= lt!35329 e!68032)))

(declare-fun c!26833 () Bool)

(assert (=> d!28616 (= c!26833 ((_ is Nil!1965) totalInput!1363))))

(assert (=> d!28616 (= (size!1805 totalInput!1363) lt!35329)))

(declare-fun b!119185 () Bool)

(assert (=> b!119185 (= e!68032 0)))

(declare-fun b!119186 () Bool)

(assert (=> b!119186 (= e!68032 (+ 1 (size!1805 (t!22448 totalInput!1363))))))

(assert (= (and d!28616 c!26833) b!119185))

(assert (= (and d!28616 (not c!26833)) b!119186))

(declare-fun m!106261 () Bool)

(assert (=> b!119186 m!106261))

(assert (=> b!119099 d!28616))

(declare-fun d!28618 () Bool)

(declare-fun lt!35330 () Int)

(assert (=> d!28618 (>= lt!35330 0)))

(declare-fun e!68033 () Int)

(assert (=> d!28618 (= lt!35330 e!68033)))

(declare-fun c!26834 () Bool)

(assert (=> d!28618 (= c!26834 ((_ is Nil!1965) testedP!367))))

(assert (=> d!28618 (= (size!1805 testedP!367) lt!35330)))

(declare-fun b!119187 () Bool)

(assert (=> b!119187 (= e!68033 0)))

(declare-fun b!119188 () Bool)

(assert (=> b!119188 (= e!68033 (+ 1 (size!1805 (t!22448 testedP!367))))))

(assert (= (and d!28618 c!26834) b!119187))

(assert (= (and d!28618 (not c!26834)) b!119188))

(declare-fun m!106263 () Bool)

(assert (=> b!119188 m!106263))

(assert (=> b!119084 d!28618))

(declare-fun b!119199 () Bool)

(declare-fun e!68041 () Bool)

(assert (=> b!119199 (= e!68041 (isPrefix!111 (tail!227 testedP!367) (tail!227 totalInput!1363)))))

(declare-fun d!28620 () Bool)

(declare-fun e!68042 () Bool)

(assert (=> d!28620 e!68042))

(declare-fun res!56133 () Bool)

(assert (=> d!28620 (=> res!56133 e!68042)))

(declare-fun lt!35333 () Bool)

(assert (=> d!28620 (= res!56133 (not lt!35333))))

(declare-fun e!68040 () Bool)

(assert (=> d!28620 (= lt!35333 e!68040)))

(declare-fun res!56131 () Bool)

(assert (=> d!28620 (=> res!56131 e!68040)))

(assert (=> d!28620 (= res!56131 ((_ is Nil!1965) testedP!367))))

(assert (=> d!28620 (= (isPrefix!111 testedP!367 totalInput!1363) lt!35333)))

(declare-fun b!119200 () Bool)

(assert (=> b!119200 (= e!68042 (>= (size!1805 totalInput!1363) (size!1805 testedP!367)))))

(declare-fun b!119198 () Bool)

(declare-fun res!56130 () Bool)

(assert (=> b!119198 (=> (not res!56130) (not e!68041))))

(assert (=> b!119198 (= res!56130 (= (head!491 testedP!367) (head!491 totalInput!1363)))))

(declare-fun b!119197 () Bool)

(assert (=> b!119197 (= e!68040 e!68041)))

(declare-fun res!56132 () Bool)

(assert (=> b!119197 (=> (not res!56132) (not e!68041))))

(assert (=> b!119197 (= res!56132 (not ((_ is Nil!1965) totalInput!1363)))))

(assert (= (and d!28620 (not res!56131)) b!119197))

(assert (= (and b!119197 res!56132) b!119198))

(assert (= (and b!119198 res!56130) b!119199))

(assert (= (and d!28620 (not res!56133)) b!119200))

(declare-fun m!106265 () Bool)

(assert (=> b!119199 m!106265))

(assert (=> b!119199 m!106249))

(assert (=> b!119199 m!106265))

(assert (=> b!119199 m!106249))

(declare-fun m!106267 () Bool)

(assert (=> b!119199 m!106267))

(assert (=> b!119200 m!106193))

(assert (=> b!119200 m!106181))

(declare-fun m!106269 () Bool)

(assert (=> b!119198 m!106269))

(declare-fun m!106271 () Bool)

(assert (=> b!119198 m!106271))

(assert (=> b!119093 d!28620))

(declare-fun b!119203 () Bool)

(declare-fun e!68044 () Bool)

(assert (=> b!119203 (= e!68044 (isPrefix!111 (tail!227 testedP!367) (tail!227 lt!35232)))))

(declare-fun d!28622 () Bool)

(declare-fun e!68045 () Bool)

(assert (=> d!28622 e!68045))

(declare-fun res!56137 () Bool)

(assert (=> d!28622 (=> res!56137 e!68045)))

(declare-fun lt!35334 () Bool)

(assert (=> d!28622 (= res!56137 (not lt!35334))))

(declare-fun e!68043 () Bool)

(assert (=> d!28622 (= lt!35334 e!68043)))

(declare-fun res!56135 () Bool)

(assert (=> d!28622 (=> res!56135 e!68043)))

(assert (=> d!28622 (= res!56135 ((_ is Nil!1965) testedP!367))))

(assert (=> d!28622 (= (isPrefix!111 testedP!367 lt!35232) lt!35334)))

(declare-fun b!119204 () Bool)

(assert (=> b!119204 (= e!68045 (>= (size!1805 lt!35232) (size!1805 testedP!367)))))

(declare-fun b!119202 () Bool)

(declare-fun res!56134 () Bool)

(assert (=> b!119202 (=> (not res!56134) (not e!68044))))

(assert (=> b!119202 (= res!56134 (= (head!491 testedP!367) (head!491 lt!35232)))))

(declare-fun b!119201 () Bool)

(assert (=> b!119201 (= e!68043 e!68044)))

(declare-fun res!56136 () Bool)

(assert (=> b!119201 (=> (not res!56136) (not e!68044))))

(assert (=> b!119201 (= res!56136 (not ((_ is Nil!1965) lt!35232)))))

(assert (= (and d!28622 (not res!56135)) b!119201))

(assert (= (and b!119201 res!56136) b!119202))

(assert (= (and b!119202 res!56134) b!119203))

(assert (= (and d!28622 (not res!56137)) b!119204))

(assert (=> b!119203 m!106265))

(declare-fun m!106273 () Bool)

(assert (=> b!119203 m!106273))

(assert (=> b!119203 m!106265))

(assert (=> b!119203 m!106273))

(declare-fun m!106275 () Bool)

(assert (=> b!119203 m!106275))

(declare-fun m!106277 () Bool)

(assert (=> b!119204 m!106277))

(assert (=> b!119204 m!106181))

(assert (=> b!119202 m!106269))

(declare-fun m!106279 () Bool)

(assert (=> b!119202 m!106279))

(assert (=> b!119093 d!28622))

(declare-fun d!28624 () Bool)

(assert (=> d!28624 (isPrefix!111 testedP!367 (++!363 testedP!367 testedSuffix!285))))

(declare-fun lt!35337 () Unit!1471)

(declare-fun choose!1551 (List!1971 List!1971) Unit!1471)

(assert (=> d!28624 (= lt!35337 (choose!1551 testedP!367 testedSuffix!285))))

(assert (=> d!28624 (= (lemmaConcatTwoListThenFirstIsPrefix!57 testedP!367 testedSuffix!285) lt!35337)))

(declare-fun bs!11903 () Bool)

(assert (= bs!11903 d!28624))

(assert (=> bs!11903 m!106183))

(assert (=> bs!11903 m!106183))

(assert (=> bs!11903 m!106203))

(declare-fun m!106281 () Bool)

(assert (=> bs!11903 m!106281))

(assert (=> b!119093 d!28624))

(declare-fun b!119215 () Bool)

(declare-fun res!56143 () Bool)

(declare-fun e!68050 () Bool)

(assert (=> b!119215 (=> (not res!56143) (not e!68050))))

(declare-fun lt!35340 () List!1971)

(assert (=> b!119215 (= res!56143 (= (size!1805 lt!35340) (+ (size!1805 testedP!367) (size!1805 testedSuffix!285))))))

(declare-fun b!119216 () Bool)

(assert (=> b!119216 (= e!68050 (or (not (= testedSuffix!285 Nil!1965)) (= lt!35340 testedP!367)))))

(declare-fun b!119213 () Bool)

(declare-fun e!68051 () List!1971)

(assert (=> b!119213 (= e!68051 testedSuffix!285)))

(declare-fun d!28626 () Bool)

(assert (=> d!28626 e!68050))

(declare-fun res!56142 () Bool)

(assert (=> d!28626 (=> (not res!56142) (not e!68050))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!220 (List!1971) (InoxSet C!1980))

(assert (=> d!28626 (= res!56142 (= (content!220 lt!35340) ((_ map or) (content!220 testedP!367) (content!220 testedSuffix!285))))))

(assert (=> d!28626 (= lt!35340 e!68051)))

(declare-fun c!26837 () Bool)

(assert (=> d!28626 (= c!26837 ((_ is Nil!1965) testedP!367))))

(assert (=> d!28626 (= (++!363 testedP!367 testedSuffix!285) lt!35340)))

(declare-fun b!119214 () Bool)

(assert (=> b!119214 (= e!68051 (Cons!1965 (h!7362 testedP!367) (++!363 (t!22448 testedP!367) testedSuffix!285)))))

(assert (= (and d!28626 c!26837) b!119213))

(assert (= (and d!28626 (not c!26837)) b!119214))

(assert (= (and d!28626 res!56142) b!119215))

(assert (= (and b!119215 res!56143) b!119216))

(declare-fun m!106283 () Bool)

(assert (=> b!119215 m!106283))

(assert (=> b!119215 m!106181))

(declare-fun m!106285 () Bool)

(assert (=> b!119215 m!106285))

(declare-fun m!106287 () Bool)

(assert (=> d!28626 m!106287))

(declare-fun m!106289 () Bool)

(assert (=> d!28626 m!106289))

(declare-fun m!106291 () Bool)

(assert (=> d!28626 m!106291))

(declare-fun m!106293 () Bool)

(assert (=> b!119214 m!106293))

(assert (=> b!119088 d!28626))

(declare-fun d!28628 () Bool)

(assert (=> d!28628 (= (valid!357 cache!470) (validCacheMap!22 (cache!843 cache!470)))))

(declare-fun bs!11904 () Bool)

(assert (= bs!11904 d!28628))

(assert (=> bs!11904 m!106259))

(assert (=> b!119086 d!28628))

(declare-fun b!119221 () Bool)

(declare-fun e!68054 () Bool)

(declare-fun tp!65407 () Bool)

(assert (=> b!119221 (= e!68054 (and tp_is_empty!1113 tp!65407))))

(assert (=> b!119095 (= tp!65400 e!68054)))

(assert (= (and b!119095 ((_ is Cons!1965) (t!22448 totalInput!1363))) b!119221))

(declare-fun b!119222 () Bool)

(declare-fun e!68055 () Bool)

(declare-fun tp!65408 () Bool)

(assert (=> b!119222 (= e!68055 (and tp_is_empty!1113 tp!65408))))

(assert (=> b!119090 (= tp!65394 e!68055)))

(assert (= (and b!119090 ((_ is Cons!1965) (t!22448 testedP!367))) b!119222))

(declare-fun b!119234 () Bool)

(declare-fun e!68058 () Bool)

(declare-fun tp!65423 () Bool)

(declare-fun tp!65422 () Bool)

(assert (=> b!119234 (= e!68058 (and tp!65423 tp!65422))))

(declare-fun b!119233 () Bool)

(assert (=> b!119233 (= e!68058 tp_is_empty!1113)))

(declare-fun b!119235 () Bool)

(declare-fun tp!65419 () Bool)

(assert (=> b!119235 (= e!68058 tp!65419)))

(assert (=> b!119085 (= tp!65402 e!68058)))

(declare-fun b!119236 () Bool)

(declare-fun tp!65420 () Bool)

(declare-fun tp!65421 () Bool)

(assert (=> b!119236 (= e!68058 (and tp!65420 tp!65421))))

(assert (= (and b!119085 ((_ is ElementMatch!529) (reg!858 r!15532))) b!119233))

(assert (= (and b!119085 ((_ is Concat!913) (reg!858 r!15532))) b!119234))

(assert (= (and b!119085 ((_ is Star!529) (reg!858 r!15532))) b!119235))

(assert (= (and b!119085 ((_ is Union!529) (reg!858 r!15532))) b!119236))

(declare-fun b!119238 () Bool)

(declare-fun e!68059 () Bool)

(declare-fun tp!65428 () Bool)

(declare-fun tp!65427 () Bool)

(assert (=> b!119238 (= e!68059 (and tp!65428 tp!65427))))

(declare-fun b!119237 () Bool)

(assert (=> b!119237 (= e!68059 tp_is_empty!1113)))

(declare-fun b!119239 () Bool)

(declare-fun tp!65424 () Bool)

(assert (=> b!119239 (= e!68059 tp!65424)))

(assert (=> b!119098 (= tp!65399 e!68059)))

(declare-fun b!119240 () Bool)

(declare-fun tp!65425 () Bool)

(declare-fun tp!65426 () Bool)

(assert (=> b!119240 (= e!68059 (and tp!65425 tp!65426))))

(assert (= (and b!119098 ((_ is ElementMatch!529) (regOne!1570 r!15532))) b!119237))

(assert (= (and b!119098 ((_ is Concat!913) (regOne!1570 r!15532))) b!119238))

(assert (= (and b!119098 ((_ is Star!529) (regOne!1570 r!15532))) b!119239))

(assert (= (and b!119098 ((_ is Union!529) (regOne!1570 r!15532))) b!119240))

(declare-fun b!119242 () Bool)

(declare-fun e!68060 () Bool)

(declare-fun tp!65433 () Bool)

(declare-fun tp!65432 () Bool)

(assert (=> b!119242 (= e!68060 (and tp!65433 tp!65432))))

(declare-fun b!119241 () Bool)

(assert (=> b!119241 (= e!68060 tp_is_empty!1113)))

(declare-fun b!119243 () Bool)

(declare-fun tp!65429 () Bool)

(assert (=> b!119243 (= e!68060 tp!65429)))

(assert (=> b!119098 (= tp!65392 e!68060)))

(declare-fun b!119244 () Bool)

(declare-fun tp!65430 () Bool)

(declare-fun tp!65431 () Bool)

(assert (=> b!119244 (= e!68060 (and tp!65430 tp!65431))))

(assert (= (and b!119098 ((_ is ElementMatch!529) (regTwo!1570 r!15532))) b!119241))

(assert (= (and b!119098 ((_ is Concat!913) (regTwo!1570 r!15532))) b!119242))

(assert (= (and b!119098 ((_ is Star!529) (regTwo!1570 r!15532))) b!119243))

(assert (= (and b!119098 ((_ is Union!529) (regTwo!1570 r!15532))) b!119244))

(declare-fun tp!65440 () Bool)

(declare-fun b!119249 () Bool)

(declare-fun e!68063 () Bool)

(declare-fun tp!65441 () Bool)

(declare-fun tp!65442 () Bool)

(assert (=> b!119249 (= e!68063 (and tp!65440 tp_is_empty!1113 tp!65441 tp!65442))))

(assert (=> b!119094 (= tp!65391 e!68063)))

(assert (= (and b!119094 ((_ is Cons!1966) (zeroValue!651 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470)))))))) b!119249))

(declare-fun b!119250 () Bool)

(declare-fun tp!65445 () Bool)

(declare-fun tp!65443 () Bool)

(declare-fun tp!65444 () Bool)

(declare-fun e!68064 () Bool)

(assert (=> b!119250 (= e!68064 (and tp!65443 tp_is_empty!1113 tp!65444 tp!65445))))

(assert (=> b!119094 (= tp!65398 e!68064)))

(assert (= (and b!119094 ((_ is Cons!1966) (minValue!651 (v!13321 (underlying!989 (v!13322 (underlying!990 (cache!843 cache!470)))))))) b!119250))

(declare-fun b!119251 () Bool)

(declare-fun e!68065 () Bool)

(declare-fun tp!65446 () Bool)

(assert (=> b!119251 (= e!68065 (and tp_is_empty!1113 tp!65446))))

(assert (=> b!119102 (= tp!65401 e!68065)))

(assert (= (and b!119102 ((_ is Cons!1965) (t!22448 testedSuffix!285))) b!119251))

(declare-fun b!119253 () Bool)

(declare-fun e!68066 () Bool)

(declare-fun tp!65451 () Bool)

(declare-fun tp!65450 () Bool)

(assert (=> b!119253 (= e!68066 (and tp!65451 tp!65450))))

(declare-fun b!119252 () Bool)

(assert (=> b!119252 (= e!68066 tp_is_empty!1113)))

(declare-fun b!119254 () Bool)

(declare-fun tp!65447 () Bool)

(assert (=> b!119254 (= e!68066 tp!65447)))

(assert (=> b!119082 (= tp!65397 e!68066)))

(declare-fun b!119255 () Bool)

(declare-fun tp!65448 () Bool)

(declare-fun tp!65449 () Bool)

(assert (=> b!119255 (= e!68066 (and tp!65448 tp!65449))))

(assert (= (and b!119082 ((_ is ElementMatch!529) (regOne!1571 r!15532))) b!119252))

(assert (= (and b!119082 ((_ is Concat!913) (regOne!1571 r!15532))) b!119253))

(assert (= (and b!119082 ((_ is Star!529) (regOne!1571 r!15532))) b!119254))

(assert (= (and b!119082 ((_ is Union!529) (regOne!1571 r!15532))) b!119255))

(declare-fun b!119257 () Bool)

(declare-fun e!68067 () Bool)

(declare-fun tp!65456 () Bool)

(declare-fun tp!65455 () Bool)

(assert (=> b!119257 (= e!68067 (and tp!65456 tp!65455))))

(declare-fun b!119256 () Bool)

(assert (=> b!119256 (= e!68067 tp_is_empty!1113)))

(declare-fun b!119258 () Bool)

(declare-fun tp!65452 () Bool)

(assert (=> b!119258 (= e!68067 tp!65452)))

(assert (=> b!119082 (= tp!65404 e!68067)))

(declare-fun b!119259 () Bool)

(declare-fun tp!65453 () Bool)

(declare-fun tp!65454 () Bool)

(assert (=> b!119259 (= e!68067 (and tp!65453 tp!65454))))

(assert (= (and b!119082 ((_ is ElementMatch!529) (regTwo!1571 r!15532))) b!119256))

(assert (= (and b!119082 ((_ is Concat!913) (regTwo!1571 r!15532))) b!119257))

(assert (= (and b!119082 ((_ is Star!529) (regTwo!1571 r!15532))) b!119258))

(assert (= (and b!119082 ((_ is Union!529) (regTwo!1571 r!15532))) b!119259))

(declare-fun tp!65477 () Bool)

(declare-fun tp!65476 () Bool)

(declare-fun tp!65475 () Bool)

(declare-fun b!119266 () Bool)

(declare-fun e!68072 () Bool)

(assert (=> b!119266 (= e!68072 (and tp!65475 tp_is_empty!1113 tp!65476 tp!65477))))

(declare-fun mapIsEmpty!1529 () Bool)

(declare-fun mapRes!1529 () Bool)

(assert (=> mapIsEmpty!1529 mapRes!1529))

(declare-fun mapNonEmpty!1529 () Bool)

(declare-fun tp!65474 () Bool)

(assert (=> mapNonEmpty!1529 (= mapRes!1529 (and tp!65474 e!68072))))

(declare-fun mapRest!1529 () (Array (_ BitVec 32) List!1972))

(declare-fun mapKey!1529 () (_ BitVec 32))

(declare-fun mapValue!1529 () List!1972)

(assert (=> mapNonEmpty!1529 (= mapRest!1526 (store mapRest!1529 mapKey!1529 mapValue!1529))))

(declare-fun tp!65472 () Bool)

(declare-fun tp!65473 () Bool)

(declare-fun tp!65471 () Bool)

(declare-fun b!119267 () Bool)

(declare-fun e!68073 () Bool)

(assert (=> b!119267 (= e!68073 (and tp!65471 tp_is_empty!1113 tp!65472 tp!65473))))

(declare-fun condMapEmpty!1529 () Bool)

(declare-fun mapDefault!1529 () List!1972)

(assert (=> mapNonEmpty!1526 (= condMapEmpty!1529 (= mapRest!1526 ((as const (Array (_ BitVec 32) List!1972)) mapDefault!1529)))))

(assert (=> mapNonEmpty!1526 (= tp!65396 (and e!68073 mapRes!1529))))

(assert (= (and mapNonEmpty!1526 condMapEmpty!1529) mapIsEmpty!1529))

(assert (= (and mapNonEmpty!1526 (not condMapEmpty!1529)) mapNonEmpty!1529))

(assert (= (and mapNonEmpty!1529 ((_ is Cons!1966) mapValue!1529)) b!119266))

(assert (= (and mapNonEmpty!1526 ((_ is Cons!1966) mapDefault!1529)) b!119267))

(declare-fun m!106295 () Bool)

(assert (=> mapNonEmpty!1529 m!106295))

(declare-fun b!119268 () Bool)

(declare-fun tp!65480 () Bool)

(declare-fun tp!65479 () Bool)

(declare-fun tp!65478 () Bool)

(declare-fun e!68074 () Bool)

(assert (=> b!119268 (= e!68074 (and tp!65478 tp_is_empty!1113 tp!65479 tp!65480))))

(assert (=> mapNonEmpty!1526 (= tp!65390 e!68074)))

(assert (= (and mapNonEmpty!1526 ((_ is Cons!1966) mapValue!1526)) b!119268))

(declare-fun tp!65482 () Bool)

(declare-fun tp!65483 () Bool)

(declare-fun tp!65481 () Bool)

(declare-fun e!68075 () Bool)

(declare-fun b!119269 () Bool)

(assert (=> b!119269 (= e!68075 (and tp!65481 tp_is_empty!1113 tp!65482 tp!65483))))

(assert (=> b!119092 (= tp!65403 e!68075)))

(assert (= (and b!119092 ((_ is Cons!1966) mapDefault!1526)) b!119269))

(check-sat (not b!119234) (not b!119251) (not d!28624) (not b!119202) (not b!119254) (not b!119139) (not b!119203) (not b!119244) b_and!5939 (not b_next!3809) (not b!119236) (not d!28628) (not b!119240) b_and!5941 (not b!119198) (not b!119267) (not d!28604) (not b!119142) (not bm!4985) (not bm!4984) (not b!119180) (not b!119188) (not b!119257) (not b!119199) (not b!119235) (not bm!4986) (not b!119200) (not b!119253) (not b!119238) (not bm!4999) (not b!119242) (not b!119173) (not d!28626) (not b!119250) (not b!119143) (not b!119259) (not bm!4987) (not b!119149) (not b!119268) (not b!119222) tp_is_empty!1113 (not b!119204) (not d!28600) (not b!119255) (not b!119137) (not b_next!3811) (not b!119214) (not mapNonEmpty!1529) (not b!119186) (not b!119269) (not bm!4989) (not b!119221) (not bm!4990) (not d!28606) (not b!119249) (not b!119215) (not b!119243) (not d!28602) (not bm!4983) (not b!119239) (not b!119258) (not b!119266) (not bm!4988) (not bm!4997))
(check-sat b_and!5941 b_and!5939 (not b_next!3811) (not b_next!3809))
