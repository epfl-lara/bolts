; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11830 () Bool)

(assert start!11830)

(declare-fun b!115946 () Bool)

(declare-fun b_free!3681 () Bool)

(declare-fun b_next!3681 () Bool)

(assert (=> b!115946 (= b_free!3681 (not b_next!3681))))

(declare-fun tp!63354 () Bool)

(declare-fun b_and!5811 () Bool)

(assert (=> b!115946 (= tp!63354 b_and!5811)))

(declare-fun b!115931 () Bool)

(declare-fun b_free!3683 () Bool)

(declare-fun b_next!3683 () Bool)

(assert (=> b!115931 (= b_free!3683 (not b_next!3683))))

(declare-fun tp!63356 () Bool)

(declare-fun b_and!5813 () Bool)

(assert (=> b!115931 (= tp!63356 b_and!5813)))

(declare-fun b!115924 () Bool)

(declare-fun e!65753 () Bool)

(declare-fun e!65743 () Bool)

(declare-datatypes ((C!1916 0))(
  ( (C!1917 (val!684 Int)) )
))
(declare-datatypes ((Regex!497 0))(
  ( (ElementMatch!497 (c!26592 C!1916)) (Concat!881 (regOne!1506 Regex!497) (regTwo!1506 Regex!497)) (EmptyExpr!497) (Star!497 (reg!826 Regex!497)) (EmptyLang!497) (Union!497 (regOne!1507 Regex!497) (regTwo!1507 Regex!497)) )
))
(declare-datatypes ((tuple2!2108 0))(
  ( (tuple2!2109 (_1!1264 Regex!497) (_2!1264 C!1916)) )
))
(declare-datatypes ((tuple2!2110 0))(
  ( (tuple2!2111 (_1!1265 tuple2!2108) (_2!1265 Regex!497)) )
))
(declare-datatypes ((List!1908 0))(
  ( (Nil!1902) (Cons!1902 (h!7299 tuple2!2110) (t!22385 List!1908)) )
))
(declare-datatypes ((array!1307 0))(
  ( (array!1308 (arr!610 (Array (_ BitVec 32) (_ BitVec 64))) (size!1712 (_ BitVec 32))) )
))
(declare-datatypes ((array!1309 0))(
  ( (array!1310 (arr!611 (Array (_ BitVec 32) List!1908)) (size!1713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!726 0))(
  ( (LongMapFixedSize!727 (defaultEntry!702 Int) (mask!1279 (_ BitVec 32)) (extraKeys!609 (_ BitVec 32)) (zeroValue!619 List!1908) (minValue!619 List!1908) (_size!859 (_ BitVec 32)) (_keys!654 array!1307) (_values!641 array!1309) (_vacant!424 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1441 0))(
  ( (Cell!1442 (v!13257 LongMapFixedSize!726)) )
))
(declare-datatypes ((MutLongMap!363 0))(
  ( (LongMap!363 (underlying!925 Cell!1441)) (MutLongMapExt!362 (__x!2014 Int)) )
))
(declare-fun lt!34089 () MutLongMap!363)

(get-info :version)

(assert (=> b!115924 (= e!65753 (and e!65743 ((_ is LongMap!363) lt!34089)))))

(declare-datatypes ((Hashable!359 0))(
  ( (HashableExt!358 (__x!2015 Int)) )
))
(declare-datatypes ((Cell!1443 0))(
  ( (Cell!1444 (v!13258 MutLongMap!363)) )
))
(declare-datatypes ((MutableMap!359 0))(
  ( (MutableMapExt!358 (__x!2016 Int)) (HashMap!359 (underlying!926 Cell!1443) (hashF!2235 Hashable!359) (_size!860 (_ BitVec 32)) (defaultValue!508 Int)) )
))
(declare-datatypes ((Cache!154 0))(
  ( (Cache!155 (cache!811 MutableMap!359)) )
))
(declare-fun cache!470 () Cache!154)

(assert (=> b!115924 (= lt!34089 (v!13258 (underlying!926 (cache!811 cache!470))))))

(declare-fun b!115925 () Bool)

(declare-fun e!65756 () Bool)

(declare-fun e!65751 () Bool)

(assert (=> b!115925 (= e!65756 e!65751)))

(declare-fun res!55065 () Bool)

(assert (=> b!115925 (=> res!55065 e!65751)))

(declare-fun lt!34081 () Int)

(declare-fun lt!34086 () Int)

(assert (=> b!115925 (= res!55065 (>= lt!34081 lt!34086))))

(declare-datatypes ((Unit!1388 0))(
  ( (Unit!1389) )
))
(declare-fun lt!34083 () Unit!1388)

(declare-fun e!65741 () Unit!1388)

(assert (=> b!115925 (= lt!34083 e!65741)))

(declare-fun c!26591 () Bool)

(assert (=> b!115925 (= c!26591 (= lt!34081 lt!34086))))

(assert (=> b!115925 (<= lt!34081 lt!34086)))

(declare-fun lt!34084 () Unit!1388)

(declare-datatypes ((List!1909 0))(
  ( (Nil!1903) (Cons!1903 (h!7300 C!1916) (t!22386 List!1909)) )
))
(declare-fun testedP!367 () List!1909)

(declare-fun totalInput!1363 () List!1909)

(declare-fun lemmaIsPrefixThenSmallerEqSize!13 (List!1909 List!1909) Unit!1388)

(assert (=> b!115925 (= lt!34084 (lemmaIsPrefixThenSmallerEqSize!13 testedP!367 totalInput!1363))))

(declare-fun b!115926 () Bool)

(declare-fun Unit!1390 () Unit!1388)

(assert (=> b!115926 (= e!65741 Unit!1390)))

(declare-fun b!115927 () Bool)

(declare-fun e!65750 () Bool)

(declare-fun e!65752 () Bool)

(assert (=> b!115927 (= e!65750 e!65752)))

(declare-fun res!55063 () Bool)

(assert (=> b!115927 (=> (not res!55063) (not e!65752))))

(declare-fun lt!34088 () List!1909)

(assert (=> b!115927 (= res!55063 (= lt!34088 totalInput!1363))))

(declare-fun testedSuffix!285 () List!1909)

(declare-fun ++!337 (List!1909 List!1909) List!1909)

(assert (=> b!115927 (= lt!34088 (++!337 testedP!367 testedSuffix!285))))

(declare-fun res!55068 () Bool)

(assert (=> start!11830 (=> (not res!55068) (not e!65750))))

(declare-fun r!15532 () Regex!497)

(declare-fun validRegex!105 (Regex!497) Bool)

(assert (=> start!11830 (= res!55068 (validRegex!105 r!15532))))

(assert (=> start!11830 e!65750))

(assert (=> start!11830 true))

(declare-fun e!65749 () Bool)

(assert (=> start!11830 e!65749))

(declare-fun e!65760 () Bool)

(assert (=> start!11830 e!65760))

(declare-fun e!65744 () Bool)

(assert (=> start!11830 e!65744))

(declare-fun e!65758 () Bool)

(assert (=> start!11830 e!65758))

(declare-fun e!65757 () Bool)

(declare-fun inv!2415 (Cache!154) Bool)

(assert (=> start!11830 (and (inv!2415 cache!470) e!65757)))

(declare-fun b!115928 () Bool)

(declare-fun Unit!1391 () Unit!1388)

(assert (=> b!115928 (= e!65741 Unit!1391)))

(declare-fun lt!34091 () Unit!1388)

(declare-fun lemmaIsPrefixRefl!67 (List!1909 List!1909) Unit!1388)

(assert (=> b!115928 (= lt!34091 (lemmaIsPrefixRefl!67 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!84 (List!1909 List!1909) Bool)

(assert (=> b!115928 (isPrefix!84 totalInput!1363 totalInput!1363)))

(declare-fun lt!34085 () Unit!1388)

(declare-fun lemmaIsPrefixSameLengthThenSameList!13 (List!1909 List!1909 List!1909) Unit!1388)

(assert (=> b!115928 (= lt!34085 (lemmaIsPrefixSameLengthThenSameList!13 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!115928 false))

(declare-fun b!115929 () Bool)

(declare-fun e!65742 () Bool)

(assert (=> b!115929 (= e!65742 e!65756)))

(declare-fun res!55061 () Bool)

(assert (=> b!115929 (=> res!55061 e!65756)))

(declare-fun lostCause!40 (Regex!497) Bool)

(assert (=> b!115929 (= res!55061 (lostCause!40 r!15532))))

(declare-fun lt!34082 () List!1909)

(assert (=> b!115929 (and (= testedSuffix!285 lt!34082) (= lt!34082 testedSuffix!285))))

(declare-fun lt!34090 () Unit!1388)

(declare-fun lemmaSamePrefixThenSameSuffix!28 (List!1909 List!1909 List!1909 List!1909 List!1909) Unit!1388)

(assert (=> b!115929 (= lt!34090 (lemmaSamePrefixThenSameSuffix!28 testedP!367 testedSuffix!285 testedP!367 lt!34082 totalInput!1363))))

(declare-fun getSuffix!29 (List!1909 List!1909) List!1909)

(assert (=> b!115929 (= lt!34082 (getSuffix!29 totalInput!1363 testedP!367))))

(declare-fun b!115930 () Bool)

(declare-fun tp_is_empty!1049 () Bool)

(declare-fun tp!63346 () Bool)

(assert (=> b!115930 (= e!65758 (and tp_is_empty!1049 tp!63346))))

(declare-fun e!65759 () Bool)

(assert (=> b!115931 (= e!65759 (and e!65753 tp!63356))))

(declare-fun b!115932 () Bool)

(declare-fun res!55066 () Bool)

(assert (=> b!115932 (=> res!55066 e!65756)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!115932 (= res!55066 (= testedPSize!285 totalInputSize!643))))

(declare-fun mapIsEmpty!1414 () Bool)

(declare-fun mapRes!1414 () Bool)

(assert (=> mapIsEmpty!1414 mapRes!1414))

(declare-fun b!115933 () Bool)

(declare-fun e!65754 () Bool)

(assert (=> b!115933 (= e!65743 e!65754)))

(declare-fun b!115934 () Bool)

(declare-fun res!55062 () Bool)

(assert (=> b!115934 (=> (not res!55062) (not e!65750))))

(declare-fun valid!330 (Cache!154) Bool)

(assert (=> b!115934 (= res!55062 (valid!330 cache!470))))

(declare-fun b!115935 () Bool)

(declare-fun e!65746 () Bool)

(declare-fun tp!63355 () Bool)

(assert (=> b!115935 (= e!65746 (and tp!63355 mapRes!1414))))

(declare-fun condMapEmpty!1414 () Bool)

(declare-fun mapDefault!1414 () List!1908)

(assert (=> b!115935 (= condMapEmpty!1414 (= (arr!611 (_values!641 (v!13257 (underlying!925 (v!13258 (underlying!926 (cache!811 cache!470))))))) ((as const (Array (_ BitVec 32) List!1908)) mapDefault!1414)))))

(declare-fun mapNonEmpty!1414 () Bool)

(declare-fun tp!63342 () Bool)

(declare-fun tp!63353 () Bool)

(assert (=> mapNonEmpty!1414 (= mapRes!1414 (and tp!63342 tp!63353))))

(declare-fun mapRest!1414 () (Array (_ BitVec 32) List!1908))

(declare-fun mapKey!1414 () (_ BitVec 32))

(declare-fun mapValue!1414 () List!1908)

(assert (=> mapNonEmpty!1414 (= (arr!611 (_values!641 (v!13257 (underlying!925 (v!13258 (underlying!926 (cache!811 cache!470))))))) (store mapRest!1414 mapKey!1414 mapValue!1414))))

(declare-fun b!115936 () Bool)

(assert (=> b!115936 (= e!65751 true)))

(declare-fun lt!34092 () List!1909)

(declare-fun lt!34096 () List!1909)

(assert (=> b!115936 (= (++!337 lt!34092 lt!34096) totalInput!1363)))

(declare-fun lt!34087 () C!1916)

(declare-fun lt!34095 () Unit!1388)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!4 (List!1909 C!1916 List!1909 List!1909) Unit!1388)

(assert (=> b!115936 (= lt!34095 (lemmaMoveElementToOtherListKeepsConcatEq!4 testedP!367 lt!34087 lt!34096 totalInput!1363))))

(declare-fun tail!214 (List!1909) List!1909)

(assert (=> b!115936 (= lt!34096 (tail!214 testedSuffix!285))))

(declare-fun head!478 (List!1909) C!1916)

(assert (=> b!115936 (isPrefix!84 (++!337 testedP!367 (Cons!1903 (head!478 lt!34082) Nil!1903)) totalInput!1363)))

(declare-fun lt!34094 () Unit!1388)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!8 (List!1909 List!1909) Unit!1388)

(assert (=> b!115936 (= lt!34094 (lemmaAddHeadSuffixToPrefixStillPrefix!8 testedP!367 totalInput!1363))))

(assert (=> b!115936 (= lt!34092 (++!337 testedP!367 (Cons!1903 lt!34087 Nil!1903)))))

(assert (=> b!115936 (= lt!34087 (head!478 testedSuffix!285))))

(declare-fun b!115937 () Bool)

(assert (=> b!115937 (= e!65757 e!65759)))

(declare-fun b!115938 () Bool)

(assert (=> b!115938 (= e!65749 tp_is_empty!1049)))

(declare-fun b!115939 () Bool)

(declare-fun e!65755 () Bool)

(assert (=> b!115939 (= e!65752 e!65755)))

(declare-fun res!55067 () Bool)

(assert (=> b!115939 (=> (not res!55067) (not e!65755))))

(assert (=> b!115939 (= res!55067 (= testedPSize!285 lt!34081))))

(declare-fun size!1714 (List!1909) Int)

(assert (=> b!115939 (= lt!34081 (size!1714 testedP!367))))

(declare-fun b!115940 () Bool)

(declare-fun tp!63352 () Bool)

(assert (=> b!115940 (= e!65744 (and tp_is_empty!1049 tp!63352))))

(declare-fun b!115941 () Bool)

(declare-fun e!65747 () Bool)

(assert (=> b!115941 (= e!65747 (not e!65742))))

(declare-fun res!55064 () Bool)

(assert (=> b!115941 (=> res!55064 e!65742)))

(assert (=> b!115941 (= res!55064 (not (isPrefix!84 testedP!367 totalInput!1363)))))

(assert (=> b!115941 (isPrefix!84 testedP!367 lt!34088)))

(declare-fun lt!34093 () Unit!1388)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!31 (List!1909 List!1909) Unit!1388)

(assert (=> b!115941 (= lt!34093 (lemmaConcatTwoListThenFirstIsPrefix!31 testedP!367 testedSuffix!285))))

(declare-fun b!115942 () Bool)

(assert (=> b!115942 (= e!65755 e!65747)))

(declare-fun res!55069 () Bool)

(assert (=> b!115942 (=> (not res!55069) (not e!65747))))

(assert (=> b!115942 (= res!55069 (= totalInputSize!643 lt!34086))))

(assert (=> b!115942 (= lt!34086 (size!1714 totalInput!1363))))

(declare-fun b!115943 () Bool)

(declare-fun tp!63348 () Bool)

(assert (=> b!115943 (= e!65760 (and tp_is_empty!1049 tp!63348))))

(declare-fun b!115944 () Bool)

(declare-fun e!65748 () Bool)

(assert (=> b!115944 (= e!65754 e!65748)))

(declare-fun b!115945 () Bool)

(declare-fun tp!63344 () Bool)

(declare-fun tp!63345 () Bool)

(assert (=> b!115945 (= e!65749 (and tp!63344 tp!63345))))

(declare-fun tp!63349 () Bool)

(declare-fun tp!63351 () Bool)

(declare-fun array_inv!433 (array!1307) Bool)

(declare-fun array_inv!434 (array!1309) Bool)

(assert (=> b!115946 (= e!65748 (and tp!63354 tp!63349 tp!63351 (array_inv!433 (_keys!654 (v!13257 (underlying!925 (v!13258 (underlying!926 (cache!811 cache!470))))))) (array_inv!434 (_values!641 (v!13257 (underlying!925 (v!13258 (underlying!926 (cache!811 cache!470))))))) e!65746))))

(declare-fun b!115947 () Bool)

(declare-fun tp!63343 () Bool)

(declare-fun tp!63350 () Bool)

(assert (=> b!115947 (= e!65749 (and tp!63343 tp!63350))))

(declare-fun b!115948 () Bool)

(declare-fun tp!63347 () Bool)

(assert (=> b!115948 (= e!65749 tp!63347)))

(assert (= (and start!11830 res!55068) b!115934))

(assert (= (and b!115934 res!55062) b!115927))

(assert (= (and b!115927 res!55063) b!115939))

(assert (= (and b!115939 res!55067) b!115942))

(assert (= (and b!115942 res!55069) b!115941))

(assert (= (and b!115941 (not res!55064)) b!115929))

(assert (= (and b!115929 (not res!55061)) b!115932))

(assert (= (and b!115932 (not res!55066)) b!115925))

(assert (= (and b!115925 c!26591) b!115928))

(assert (= (and b!115925 (not c!26591)) b!115926))

(assert (= (and b!115925 (not res!55065)) b!115936))

(assert (= (and start!11830 ((_ is ElementMatch!497) r!15532)) b!115938))

(assert (= (and start!11830 ((_ is Concat!881) r!15532)) b!115947))

(assert (= (and start!11830 ((_ is Star!497) r!15532)) b!115948))

(assert (= (and start!11830 ((_ is Union!497) r!15532)) b!115945))

(assert (= (and start!11830 ((_ is Cons!1903) totalInput!1363)) b!115943))

(assert (= (and start!11830 ((_ is Cons!1903) testedSuffix!285)) b!115940))

(assert (= (and start!11830 ((_ is Cons!1903) testedP!367)) b!115930))

(assert (= (and b!115935 condMapEmpty!1414) mapIsEmpty!1414))

(assert (= (and b!115935 (not condMapEmpty!1414)) mapNonEmpty!1414))

(assert (= b!115946 b!115935))

(assert (= b!115944 b!115946))

(assert (= b!115933 b!115944))

(assert (= (and b!115924 ((_ is LongMap!363) (v!13258 (underlying!926 (cache!811 cache!470))))) b!115933))

(assert (= b!115931 b!115924))

(assert (= (and b!115937 ((_ is HashMap!359) (cache!811 cache!470))) b!115931))

(assert (= start!11830 b!115937))

(declare-fun m!104224 () Bool)

(assert (=> b!115946 m!104224))

(declare-fun m!104226 () Bool)

(assert (=> b!115946 m!104226))

(declare-fun m!104228 () Bool)

(assert (=> b!115942 m!104228))

(declare-fun m!104230 () Bool)

(assert (=> b!115925 m!104230))

(declare-fun m!104232 () Bool)

(assert (=> b!115928 m!104232))

(declare-fun m!104234 () Bool)

(assert (=> b!115928 m!104234))

(declare-fun m!104236 () Bool)

(assert (=> b!115928 m!104236))

(declare-fun m!104238 () Bool)

(assert (=> b!115934 m!104238))

(declare-fun m!104240 () Bool)

(assert (=> b!115929 m!104240))

(declare-fun m!104242 () Bool)

(assert (=> b!115929 m!104242))

(declare-fun m!104244 () Bool)

(assert (=> b!115929 m!104244))

(declare-fun m!104246 () Bool)

(assert (=> start!11830 m!104246))

(declare-fun m!104248 () Bool)

(assert (=> start!11830 m!104248))

(declare-fun m!104250 () Bool)

(assert (=> b!115927 m!104250))

(declare-fun m!104252 () Bool)

(assert (=> mapNonEmpty!1414 m!104252))

(declare-fun m!104254 () Bool)

(assert (=> b!115939 m!104254))

(declare-fun m!104256 () Bool)

(assert (=> b!115941 m!104256))

(declare-fun m!104258 () Bool)

(assert (=> b!115941 m!104258))

(declare-fun m!104260 () Bool)

(assert (=> b!115941 m!104260))

(declare-fun m!104262 () Bool)

(assert (=> b!115936 m!104262))

(declare-fun m!104264 () Bool)

(assert (=> b!115936 m!104264))

(declare-fun m!104266 () Bool)

(assert (=> b!115936 m!104266))

(declare-fun m!104268 () Bool)

(assert (=> b!115936 m!104268))

(declare-fun m!104270 () Bool)

(assert (=> b!115936 m!104270))

(declare-fun m!104272 () Bool)

(assert (=> b!115936 m!104272))

(declare-fun m!104274 () Bool)

(assert (=> b!115936 m!104274))

(declare-fun m!104276 () Bool)

(assert (=> b!115936 m!104276))

(assert (=> b!115936 m!104268))

(declare-fun m!104278 () Bool)

(assert (=> b!115936 m!104278))

(check-sat (not b!115948) tp_is_empty!1049 (not b!115947) (not b!115927) (not b!115925) b_and!5811 (not b!115940) (not b!115943) (not b!115941) (not b!115942) (not b!115934) (not b_next!3681) (not start!11830) (not mapNonEmpty!1414) (not b!115935) (not b!115928) (not b!115946) b_and!5813 (not b!115945) (not b!115939) (not b_next!3683) (not b!115936) (not b!115929) (not b!115930))
(check-sat b_and!5813 b_and!5811 (not b_next!3683) (not b_next!3681))
