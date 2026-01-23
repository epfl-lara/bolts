; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11786 () Bool)

(assert start!11786)

(declare-fun b!115649 () Bool)

(declare-fun b_free!3673 () Bool)

(declare-fun b_next!3673 () Bool)

(assert (=> b!115649 (= b_free!3673 (not b_next!3673))))

(declare-fun tp!63174 () Bool)

(declare-fun b_and!5803 () Bool)

(assert (=> b!115649 (= tp!63174 b_and!5803)))

(declare-fun b!115629 () Bool)

(declare-fun b_free!3675 () Bool)

(declare-fun b_next!3675 () Bool)

(assert (=> b!115629 (= b_free!3675 (not b_next!3675))))

(declare-fun tp!63173 () Bool)

(declare-fun b_and!5805 () Bool)

(assert (=> b!115629 (= tp!63173 b_and!5805)))

(declare-fun b!115628 () Bool)

(declare-fun e!65548 () Bool)

(declare-fun tp!63178 () Bool)

(declare-fun tp!63175 () Bool)

(assert (=> b!115628 (= e!65548 (and tp!63178 tp!63175))))

(declare-fun e!65547 () Bool)

(declare-fun tp!63176 () Bool)

(declare-datatypes ((C!1912 0))(
  ( (C!1913 (val!682 Int)) )
))
(declare-datatypes ((Regex!495 0))(
  ( (ElementMatch!495 (c!26565 C!1912)) (Concat!879 (regOne!1502 Regex!495) (regTwo!1502 Regex!495)) (EmptyExpr!495) (Star!495 (reg!824 Regex!495)) (EmptyLang!495) (Union!495 (regOne!1503 Regex!495) (regTwo!1503 Regex!495)) )
))
(declare-datatypes ((Hashable!357 0))(
  ( (HashableExt!356 (__x!2008 Int)) )
))
(declare-datatypes ((tuple2!2100 0))(
  ( (tuple2!2101 (_1!1260 Regex!495) (_2!1260 C!1912)) )
))
(declare-datatypes ((tuple2!2102 0))(
  ( (tuple2!2103 (_1!1261 tuple2!2100) (_2!1261 Regex!495)) )
))
(declare-datatypes ((List!1904 0))(
  ( (Nil!1898) (Cons!1898 (h!7295 tuple2!2102) (t!22381 List!1904)) )
))
(declare-datatypes ((array!1297 0))(
  ( (array!1298 (arr!606 (Array (_ BitVec 32) (_ BitVec 64))) (size!1706 (_ BitVec 32))) )
))
(declare-datatypes ((array!1299 0))(
  ( (array!1300 (arr!607 (Array (_ BitVec 32) List!1904)) (size!1707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!722 0))(
  ( (LongMapFixedSize!723 (defaultEntry!700 Int) (mask!1276 (_ BitVec 32)) (extraKeys!607 (_ BitVec 32)) (zeroValue!617 List!1904) (minValue!617 List!1904) (_size!855 (_ BitVec 32)) (_keys!652 array!1297) (_values!639 array!1299) (_vacant!422 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1433 0))(
  ( (Cell!1434 (v!13253 LongMapFixedSize!722)) )
))
(declare-datatypes ((MutLongMap!361 0))(
  ( (LongMap!361 (underlying!921 Cell!1433)) (MutLongMapExt!360 (__x!2009 Int)) )
))
(declare-datatypes ((Cell!1435 0))(
  ( (Cell!1436 (v!13254 MutLongMap!361)) )
))
(declare-datatypes ((MutableMap!357 0))(
  ( (MutableMapExt!356 (__x!2010 Int)) (HashMap!357 (underlying!922 Cell!1435) (hashF!2233 Hashable!357) (_size!856 (_ BitVec 32)) (defaultValue!506 Int)) )
))
(declare-datatypes ((Cache!150 0))(
  ( (Cache!151 (cache!809 MutableMap!357)) )
))
(declare-fun cache!470 () Cache!150)

(declare-fun tp!63177 () Bool)

(declare-fun e!65541 () Bool)

(declare-fun array_inv!429 (array!1297) Bool)

(declare-fun array_inv!430 (array!1299) Bool)

(assert (=> b!115629 (= e!65547 (and tp!63173 tp!63176 tp!63177 (array_inv!429 (_keys!652 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) (array_inv!430 (_values!639 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) e!65541))))

(declare-fun b!115630 () Bool)

(declare-fun e!65553 () Bool)

(declare-fun e!65540 () Bool)

(assert (=> b!115630 (= e!65553 e!65540)))

(declare-fun b!115631 () Bool)

(declare-fun e!65554 () Bool)

(declare-fun e!65545 () Bool)

(assert (=> b!115631 (= e!65554 e!65545)))

(declare-fun res!54953 () Bool)

(assert (=> b!115631 (=> res!54953 e!65545)))

(declare-fun r!15532 () Regex!495)

(declare-fun lostCause!38 (Regex!495) Bool)

(assert (=> b!115631 (= res!54953 (lostCause!38 r!15532))))

(declare-datatypes ((List!1905 0))(
  ( (Nil!1899) (Cons!1899 (h!7296 C!1912) (t!22382 List!1905)) )
))
(declare-fun testedSuffix!285 () List!1905)

(declare-fun lt!33958 () List!1905)

(assert (=> b!115631 (and (= testedSuffix!285 lt!33958) (= lt!33958 testedSuffix!285))))

(declare-fun testedP!367 () List!1905)

(declare-fun totalInput!1363 () List!1905)

(declare-datatypes ((Unit!1380 0))(
  ( (Unit!1381) )
))
(declare-fun lt!33953 () Unit!1380)

(declare-fun lemmaSamePrefixThenSameSuffix!26 (List!1905 List!1905 List!1905 List!1905 List!1905) Unit!1380)

(assert (=> b!115631 (= lt!33953 (lemmaSamePrefixThenSameSuffix!26 testedP!367 testedSuffix!285 testedP!367 lt!33958 totalInput!1363))))

(declare-fun getSuffix!27 (List!1905 List!1905) List!1905)

(assert (=> b!115631 (= lt!33958 (getSuffix!27 totalInput!1363 testedP!367))))

(declare-fun b!115632 () Bool)

(declare-fun e!65539 () Bool)

(declare-fun e!65537 () Bool)

(assert (=> b!115632 (= e!65539 e!65537)))

(declare-fun res!54954 () Bool)

(assert (=> b!115632 (=> (not res!54954) (not e!65537))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!33955 () Int)

(assert (=> b!115632 (= res!54954 (= totalInputSize!643 lt!33955))))

(declare-fun size!1708 (List!1905) Int)

(assert (=> b!115632 (= lt!33955 (size!1708 totalInput!1363))))

(declare-fun b!115633 () Bool)

(declare-fun e!65544 () Unit!1380)

(declare-fun Unit!1382 () Unit!1380)

(assert (=> b!115633 (= e!65544 Unit!1382)))

(declare-fun lt!33954 () Unit!1380)

(declare-fun lemmaIsPrefixRefl!65 (List!1905 List!1905) Unit!1380)

(assert (=> b!115633 (= lt!33954 (lemmaIsPrefixRefl!65 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!82 (List!1905 List!1905) Bool)

(assert (=> b!115633 (isPrefix!82 totalInput!1363 totalInput!1363)))

(declare-fun lt!33947 () Unit!1380)

(declare-fun lemmaIsPrefixSameLengthThenSameList!11 (List!1905 List!1905 List!1905) Unit!1380)

(assert (=> b!115633 (= lt!33947 (lemmaIsPrefixSameLengthThenSameList!11 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!115633 false))

(declare-fun b!115634 () Bool)

(assert (=> b!115634 (= e!65540 e!65547)))

(declare-fun b!115635 () Bool)

(declare-fun e!65549 () Bool)

(assert (=> b!115635 (= e!65549 e!65539)))

(declare-fun res!54960 () Bool)

(assert (=> b!115635 (=> (not res!54960) (not e!65539))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!33948 () Int)

(assert (=> b!115635 (= res!54960 (= testedPSize!285 lt!33948))))

(assert (=> b!115635 (= lt!33948 (size!1708 testedP!367))))

(declare-fun b!115636 () Bool)

(declare-fun e!65538 () Bool)

(declare-fun tp_is_empty!1045 () Bool)

(declare-fun tp!63182 () Bool)

(assert (=> b!115636 (= e!65538 (and tp_is_empty!1045 tp!63182))))

(declare-fun b!115637 () Bool)

(declare-fun e!65551 () Bool)

(declare-fun e!65543 () Bool)

(assert (=> b!115637 (= e!65551 e!65543)))

(declare-fun b!115638 () Bool)

(declare-fun tp!63186 () Bool)

(declare-fun mapRes!1405 () Bool)

(assert (=> b!115638 (= e!65541 (and tp!63186 mapRes!1405))))

(declare-fun condMapEmpty!1405 () Bool)

(declare-fun mapDefault!1405 () List!1904)

(assert (=> b!115638 (= condMapEmpty!1405 (= (arr!607 (_values!639 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) ((as const (Array (_ BitVec 32) List!1904)) mapDefault!1405)))))

(declare-fun b!115639 () Bool)

(assert (=> b!115639 (= e!65548 tp_is_empty!1045)))

(declare-fun b!115640 () Bool)

(declare-fun e!65542 () Bool)

(declare-fun e!65546 () Bool)

(assert (=> b!115640 (= e!65542 e!65546)))

(declare-fun res!54952 () Bool)

(assert (=> b!115640 (=> res!54952 e!65546)))

(declare-fun nullable!63 (Regex!495) Bool)

(assert (=> b!115640 (= res!54952 (not (nullable!63 r!15532)))))

(declare-fun lt!33951 () List!1905)

(declare-fun lt!33956 () List!1905)

(declare-fun ++!335 (List!1905 List!1905) List!1905)

(assert (=> b!115640 (= (++!335 lt!33951 lt!33956) totalInput!1363)))

(declare-fun lt!33960 () C!1912)

(declare-fun lt!33949 () Unit!1380)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3 (List!1905 C!1912 List!1905 List!1905) Unit!1380)

(assert (=> b!115640 (= lt!33949 (lemmaMoveElementToOtherListKeepsConcatEq!3 testedP!367 lt!33960 lt!33956 totalInput!1363))))

(declare-fun tail!213 (List!1905) List!1905)

(assert (=> b!115640 (= lt!33956 (tail!213 testedSuffix!285))))

(declare-fun head!477 (List!1905) C!1912)

(assert (=> b!115640 (isPrefix!82 (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899)) totalInput!1363)))

(declare-fun lt!33959 () Unit!1380)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!7 (List!1905 List!1905) Unit!1380)

(assert (=> b!115640 (= lt!33959 (lemmaAddHeadSuffixToPrefixStillPrefix!7 testedP!367 totalInput!1363))))

(assert (=> b!115640 (= lt!33951 (++!335 testedP!367 (Cons!1899 lt!33960 Nil!1899)))))

(assert (=> b!115640 (= lt!33960 (head!477 testedSuffix!285))))

(declare-fun b!115641 () Bool)

(declare-fun tp!63184 () Bool)

(declare-fun tp!63187 () Bool)

(assert (=> b!115641 (= e!65548 (and tp!63184 tp!63187))))

(declare-fun b!115642 () Bool)

(declare-fun e!65550 () Bool)

(assert (=> b!115642 (= e!65550 e!65549)))

(declare-fun res!54955 () Bool)

(assert (=> b!115642 (=> (not res!54955) (not e!65549))))

(declare-fun lt!33950 () List!1905)

(assert (=> b!115642 (= res!54955 (= lt!33950 totalInput!1363))))

(assert (=> b!115642 (= lt!33950 (++!335 testedP!367 testedSuffix!285))))

(declare-fun res!54957 () Bool)

(assert (=> start!11786 (=> (not res!54957) (not e!65550))))

(declare-fun validRegex!103 (Regex!495) Bool)

(assert (=> start!11786 (= res!54957 (validRegex!103 r!15532))))

(assert (=> start!11786 e!65550))

(assert (=> start!11786 true))

(assert (=> start!11786 e!65548))

(assert (=> start!11786 e!65538))

(declare-fun e!65535 () Bool)

(assert (=> start!11786 e!65535))

(declare-fun e!65552 () Bool)

(assert (=> start!11786 e!65552))

(declare-fun inv!2410 (Cache!150) Bool)

(assert (=> start!11786 (and (inv!2410 cache!470) e!65551)))

(declare-fun b!115643 () Bool)

(assert (=> b!115643 (= e!65537 (not e!65554))))

(declare-fun res!54959 () Bool)

(assert (=> b!115643 (=> res!54959 e!65554)))

(assert (=> b!115643 (= res!54959 (not (isPrefix!82 testedP!367 totalInput!1363)))))

(assert (=> b!115643 (isPrefix!82 testedP!367 lt!33950)))

(declare-fun lt!33945 () Unit!1380)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!30 (List!1905 List!1905) Unit!1380)

(assert (=> b!115643 (= lt!33945 (lemmaConcatTwoListThenFirstIsPrefix!30 testedP!367 testedSuffix!285))))

(declare-fun b!115644 () Bool)

(declare-fun res!54956 () Bool)

(assert (=> b!115644 (=> res!54956 e!65545)))

(assert (=> b!115644 (= res!54956 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!115645 () Bool)

(declare-fun e!65555 () Bool)

(declare-fun lt!33952 () MutLongMap!361)

(get-info :version)

(assert (=> b!115645 (= e!65555 (and e!65553 ((_ is LongMap!361) lt!33952)))))

(assert (=> b!115645 (= lt!33952 (v!13254 (underlying!922 (cache!809 cache!470))))))

(declare-fun mapNonEmpty!1405 () Bool)

(declare-fun tp!63181 () Bool)

(declare-fun tp!63180 () Bool)

(assert (=> mapNonEmpty!1405 (= mapRes!1405 (and tp!63181 tp!63180))))

(declare-fun mapRest!1405 () (Array (_ BitVec 32) List!1904))

(declare-fun mapKey!1405 () (_ BitVec 32))

(declare-fun mapValue!1405 () List!1904)

(assert (=> mapNonEmpty!1405 (= (arr!607 (_values!639 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) (store mapRest!1405 mapKey!1405 mapValue!1405))))

(declare-fun mapIsEmpty!1405 () Bool)

(assert (=> mapIsEmpty!1405 mapRes!1405))

(declare-fun b!115646 () Bool)

(assert (=> b!115646 (= e!65546 (not (= testedSuffix!285 Nil!1899)))))

(declare-fun b!115647 () Bool)

(declare-fun tp!63185 () Bool)

(assert (=> b!115647 (= e!65548 tp!63185)))

(declare-fun b!115648 () Bool)

(declare-fun Unit!1383 () Unit!1380)

(assert (=> b!115648 (= e!65544 Unit!1383)))

(assert (=> b!115649 (= e!65543 (and e!65555 tp!63174))))

(declare-fun b!115650 () Bool)

(declare-fun tp!63179 () Bool)

(assert (=> b!115650 (= e!65535 (and tp_is_empty!1045 tp!63179))))

(declare-fun b!115651 () Bool)

(assert (=> b!115651 (= e!65545 e!65542)))

(declare-fun res!54961 () Bool)

(assert (=> b!115651 (=> res!54961 e!65542)))

(assert (=> b!115651 (= res!54961 (>= lt!33948 lt!33955))))

(declare-fun lt!33946 () Unit!1380)

(assert (=> b!115651 (= lt!33946 e!65544)))

(declare-fun c!26564 () Bool)

(assert (=> b!115651 (= c!26564 (= lt!33948 lt!33955))))

(assert (=> b!115651 (<= lt!33948 lt!33955)))

(declare-fun lt!33957 () Unit!1380)

(declare-fun lemmaIsPrefixThenSmallerEqSize!11 (List!1905 List!1905) Unit!1380)

(assert (=> b!115651 (= lt!33957 (lemmaIsPrefixThenSmallerEqSize!11 testedP!367 totalInput!1363))))

(declare-fun b!115652 () Bool)

(declare-fun tp!63183 () Bool)

(assert (=> b!115652 (= e!65552 (and tp_is_empty!1045 tp!63183))))

(declare-fun b!115653 () Bool)

(declare-fun res!54958 () Bool)

(assert (=> b!115653 (=> (not res!54958) (not e!65550))))

(declare-fun valid!328 (Cache!150) Bool)

(assert (=> b!115653 (= res!54958 (valid!328 cache!470))))

(assert (= (and start!11786 res!54957) b!115653))

(assert (= (and b!115653 res!54958) b!115642))

(assert (= (and b!115642 res!54955) b!115635))

(assert (= (and b!115635 res!54960) b!115632))

(assert (= (and b!115632 res!54954) b!115643))

(assert (= (and b!115643 (not res!54959)) b!115631))

(assert (= (and b!115631 (not res!54953)) b!115644))

(assert (= (and b!115644 (not res!54956)) b!115651))

(assert (= (and b!115651 c!26564) b!115633))

(assert (= (and b!115651 (not c!26564)) b!115648))

(assert (= (and b!115651 (not res!54961)) b!115640))

(assert (= (and b!115640 (not res!54952)) b!115646))

(assert (= (and start!11786 ((_ is ElementMatch!495) r!15532)) b!115639))

(assert (= (and start!11786 ((_ is Concat!879) r!15532)) b!115641))

(assert (= (and start!11786 ((_ is Star!495) r!15532)) b!115647))

(assert (= (and start!11786 ((_ is Union!495) r!15532)) b!115628))

(assert (= (and start!11786 ((_ is Cons!1899) totalInput!1363)) b!115636))

(assert (= (and start!11786 ((_ is Cons!1899) testedSuffix!285)) b!115650))

(assert (= (and start!11786 ((_ is Cons!1899) testedP!367)) b!115652))

(assert (= (and b!115638 condMapEmpty!1405) mapIsEmpty!1405))

(assert (= (and b!115638 (not condMapEmpty!1405)) mapNonEmpty!1405))

(assert (= b!115629 b!115638))

(assert (= b!115634 b!115629))

(assert (= b!115630 b!115634))

(assert (= (and b!115645 ((_ is LongMap!361) (v!13254 (underlying!922 (cache!809 cache!470))))) b!115630))

(assert (= b!115649 b!115645))

(assert (= (and b!115637 ((_ is HashMap!357) (cache!809 cache!470))) b!115649))

(assert (= start!11786 b!115637))

(declare-fun m!103988 () Bool)

(assert (=> b!115632 m!103988))

(declare-fun m!103990 () Bool)

(assert (=> start!11786 m!103990))

(declare-fun m!103992 () Bool)

(assert (=> start!11786 m!103992))

(declare-fun m!103994 () Bool)

(assert (=> b!115633 m!103994))

(declare-fun m!103996 () Bool)

(assert (=> b!115633 m!103996))

(declare-fun m!103998 () Bool)

(assert (=> b!115633 m!103998))

(declare-fun m!104000 () Bool)

(assert (=> b!115631 m!104000))

(declare-fun m!104002 () Bool)

(assert (=> b!115631 m!104002))

(declare-fun m!104004 () Bool)

(assert (=> b!115631 m!104004))

(declare-fun m!104006 () Bool)

(assert (=> b!115653 m!104006))

(declare-fun m!104008 () Bool)

(assert (=> b!115629 m!104008))

(declare-fun m!104010 () Bool)

(assert (=> b!115629 m!104010))

(declare-fun m!104012 () Bool)

(assert (=> b!115651 m!104012))

(declare-fun m!104014 () Bool)

(assert (=> mapNonEmpty!1405 m!104014))

(declare-fun m!104016 () Bool)

(assert (=> b!115642 m!104016))

(declare-fun m!104018 () Bool)

(assert (=> b!115635 m!104018))

(declare-fun m!104020 () Bool)

(assert (=> b!115640 m!104020))

(declare-fun m!104022 () Bool)

(assert (=> b!115640 m!104022))

(declare-fun m!104024 () Bool)

(assert (=> b!115640 m!104024))

(declare-fun m!104026 () Bool)

(assert (=> b!115640 m!104026))

(declare-fun m!104028 () Bool)

(assert (=> b!115640 m!104028))

(declare-fun m!104030 () Bool)

(assert (=> b!115640 m!104030))

(declare-fun m!104032 () Bool)

(assert (=> b!115640 m!104032))

(declare-fun m!104034 () Bool)

(assert (=> b!115640 m!104034))

(assert (=> b!115640 m!104030))

(declare-fun m!104036 () Bool)

(assert (=> b!115640 m!104036))

(declare-fun m!104038 () Bool)

(assert (=> b!115640 m!104038))

(declare-fun m!104040 () Bool)

(assert (=> b!115643 m!104040))

(declare-fun m!104042 () Bool)

(assert (=> b!115643 m!104042))

(declare-fun m!104044 () Bool)

(assert (=> b!115643 m!104044))

(check-sat (not b!115650) (not b!115640) b_and!5805 (not b!115628) (not b!115651) tp_is_empty!1045 (not b!115641) (not b!115643) (not start!11786) (not b!115647) (not b!115632) (not b!115633) (not b!115638) (not b!115636) (not b!115631) b_and!5803 (not b_next!3675) (not b!115652) (not b!115629) (not b_next!3673) (not b!115653) (not mapNonEmpty!1405) (not b!115635) (not b!115642))
(check-sat b_and!5803 b_and!5805 (not b_next!3673) (not b_next!3675))
(get-model)

(declare-fun d!28289 () Bool)

(declare-fun validCacheMap!16 (MutableMap!357) Bool)

(assert (=> d!28289 (= (valid!328 cache!470) (validCacheMap!16 (cache!809 cache!470)))))

(declare-fun bs!11823 () Bool)

(assert (= bs!11823 d!28289))

(declare-fun m!104046 () Bool)

(assert (=> bs!11823 m!104046))

(assert (=> b!115653 d!28289))

(declare-fun d!28291 () Bool)

(assert (=> d!28291 (isPrefix!82 totalInput!1363 totalInput!1363)))

(declare-fun lt!33963 () Unit!1380)

(declare-fun choose!1521 (List!1905 List!1905) Unit!1380)

(assert (=> d!28291 (= lt!33963 (choose!1521 totalInput!1363 totalInput!1363))))

(assert (=> d!28291 (= (lemmaIsPrefixRefl!65 totalInput!1363 totalInput!1363) lt!33963)))

(declare-fun bs!11824 () Bool)

(assert (= bs!11824 d!28291))

(assert (=> bs!11824 m!103996))

(declare-fun m!104048 () Bool)

(assert (=> bs!11824 m!104048))

(assert (=> b!115633 d!28291))

(declare-fun d!28293 () Bool)

(declare-fun e!65563 () Bool)

(assert (=> d!28293 e!65563))

(declare-fun res!54970 () Bool)

(assert (=> d!28293 (=> res!54970 e!65563)))

(declare-fun lt!33966 () Bool)

(assert (=> d!28293 (= res!54970 (not lt!33966))))

(declare-fun e!65562 () Bool)

(assert (=> d!28293 (= lt!33966 e!65562)))

(declare-fun res!54972 () Bool)

(assert (=> d!28293 (=> res!54972 e!65562)))

(assert (=> d!28293 (= res!54972 ((_ is Nil!1899) totalInput!1363))))

(assert (=> d!28293 (= (isPrefix!82 totalInput!1363 totalInput!1363) lt!33966)))

(declare-fun b!115665 () Bool)

(assert (=> b!115665 (= e!65563 (>= (size!1708 totalInput!1363) (size!1708 totalInput!1363)))))

(declare-fun b!115662 () Bool)

(declare-fun e!65564 () Bool)

(assert (=> b!115662 (= e!65562 e!65564)))

(declare-fun res!54973 () Bool)

(assert (=> b!115662 (=> (not res!54973) (not e!65564))))

(assert (=> b!115662 (= res!54973 (not ((_ is Nil!1899) totalInput!1363)))))

(declare-fun b!115663 () Bool)

(declare-fun res!54971 () Bool)

(assert (=> b!115663 (=> (not res!54971) (not e!65564))))

(assert (=> b!115663 (= res!54971 (= (head!477 totalInput!1363) (head!477 totalInput!1363)))))

(declare-fun b!115664 () Bool)

(assert (=> b!115664 (= e!65564 (isPrefix!82 (tail!213 totalInput!1363) (tail!213 totalInput!1363)))))

(assert (= (and d!28293 (not res!54972)) b!115662))

(assert (= (and b!115662 res!54973) b!115663))

(assert (= (and b!115663 res!54971) b!115664))

(assert (= (and d!28293 (not res!54970)) b!115665))

(assert (=> b!115665 m!103988))

(assert (=> b!115665 m!103988))

(declare-fun m!104050 () Bool)

(assert (=> b!115663 m!104050))

(assert (=> b!115663 m!104050))

(declare-fun m!104052 () Bool)

(assert (=> b!115664 m!104052))

(assert (=> b!115664 m!104052))

(assert (=> b!115664 m!104052))

(assert (=> b!115664 m!104052))

(declare-fun m!104054 () Bool)

(assert (=> b!115664 m!104054))

(assert (=> b!115633 d!28293))

(declare-fun d!28295 () Bool)

(assert (=> d!28295 (= totalInput!1363 testedP!367)))

(declare-fun lt!33969 () Unit!1380)

(declare-fun choose!1522 (List!1905 List!1905 List!1905) Unit!1380)

(assert (=> d!28295 (= lt!33969 (choose!1522 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28295 (isPrefix!82 totalInput!1363 totalInput!1363)))

(assert (=> d!28295 (= (lemmaIsPrefixSameLengthThenSameList!11 totalInput!1363 testedP!367 totalInput!1363) lt!33969)))

(declare-fun bs!11825 () Bool)

(assert (= bs!11825 d!28295))

(declare-fun m!104056 () Bool)

(assert (=> bs!11825 m!104056))

(assert (=> bs!11825 m!103996))

(assert (=> b!115633 d!28295))

(declare-fun d!28297 () Bool)

(declare-fun e!65566 () Bool)

(assert (=> d!28297 e!65566))

(declare-fun res!54974 () Bool)

(assert (=> d!28297 (=> res!54974 e!65566)))

(declare-fun lt!33970 () Bool)

(assert (=> d!28297 (= res!54974 (not lt!33970))))

(declare-fun e!65565 () Bool)

(assert (=> d!28297 (= lt!33970 e!65565)))

(declare-fun res!54976 () Bool)

(assert (=> d!28297 (=> res!54976 e!65565)))

(assert (=> d!28297 (= res!54976 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28297 (= (isPrefix!82 testedP!367 totalInput!1363) lt!33970)))

(declare-fun b!115669 () Bool)

(assert (=> b!115669 (= e!65566 (>= (size!1708 totalInput!1363) (size!1708 testedP!367)))))

(declare-fun b!115666 () Bool)

(declare-fun e!65567 () Bool)

(assert (=> b!115666 (= e!65565 e!65567)))

(declare-fun res!54977 () Bool)

(assert (=> b!115666 (=> (not res!54977) (not e!65567))))

(assert (=> b!115666 (= res!54977 (not ((_ is Nil!1899) totalInput!1363)))))

(declare-fun b!115667 () Bool)

(declare-fun res!54975 () Bool)

(assert (=> b!115667 (=> (not res!54975) (not e!65567))))

(assert (=> b!115667 (= res!54975 (= (head!477 testedP!367) (head!477 totalInput!1363)))))

(declare-fun b!115668 () Bool)

(assert (=> b!115668 (= e!65567 (isPrefix!82 (tail!213 testedP!367) (tail!213 totalInput!1363)))))

(assert (= (and d!28297 (not res!54976)) b!115666))

(assert (= (and b!115666 res!54977) b!115667))

(assert (= (and b!115667 res!54975) b!115668))

(assert (= (and d!28297 (not res!54974)) b!115669))

(assert (=> b!115669 m!103988))

(assert (=> b!115669 m!104018))

(declare-fun m!104058 () Bool)

(assert (=> b!115667 m!104058))

(assert (=> b!115667 m!104050))

(declare-fun m!104060 () Bool)

(assert (=> b!115668 m!104060))

(assert (=> b!115668 m!104052))

(assert (=> b!115668 m!104060))

(assert (=> b!115668 m!104052))

(declare-fun m!104062 () Bool)

(assert (=> b!115668 m!104062))

(assert (=> b!115643 d!28297))

(declare-fun d!28299 () Bool)

(declare-fun e!65569 () Bool)

(assert (=> d!28299 e!65569))

(declare-fun res!54978 () Bool)

(assert (=> d!28299 (=> res!54978 e!65569)))

(declare-fun lt!33971 () Bool)

(assert (=> d!28299 (= res!54978 (not lt!33971))))

(declare-fun e!65568 () Bool)

(assert (=> d!28299 (= lt!33971 e!65568)))

(declare-fun res!54980 () Bool)

(assert (=> d!28299 (=> res!54980 e!65568)))

(assert (=> d!28299 (= res!54980 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28299 (= (isPrefix!82 testedP!367 lt!33950) lt!33971)))

(declare-fun b!115673 () Bool)

(assert (=> b!115673 (= e!65569 (>= (size!1708 lt!33950) (size!1708 testedP!367)))))

(declare-fun b!115670 () Bool)

(declare-fun e!65570 () Bool)

(assert (=> b!115670 (= e!65568 e!65570)))

(declare-fun res!54981 () Bool)

(assert (=> b!115670 (=> (not res!54981) (not e!65570))))

(assert (=> b!115670 (= res!54981 (not ((_ is Nil!1899) lt!33950)))))

(declare-fun b!115671 () Bool)

(declare-fun res!54979 () Bool)

(assert (=> b!115671 (=> (not res!54979) (not e!65570))))

(assert (=> b!115671 (= res!54979 (= (head!477 testedP!367) (head!477 lt!33950)))))

(declare-fun b!115672 () Bool)

(assert (=> b!115672 (= e!65570 (isPrefix!82 (tail!213 testedP!367) (tail!213 lt!33950)))))

(assert (= (and d!28299 (not res!54980)) b!115670))

(assert (= (and b!115670 res!54981) b!115671))

(assert (= (and b!115671 res!54979) b!115672))

(assert (= (and d!28299 (not res!54978)) b!115673))

(declare-fun m!104064 () Bool)

(assert (=> b!115673 m!104064))

(assert (=> b!115673 m!104018))

(assert (=> b!115671 m!104058))

(declare-fun m!104066 () Bool)

(assert (=> b!115671 m!104066))

(assert (=> b!115672 m!104060))

(declare-fun m!104068 () Bool)

(assert (=> b!115672 m!104068))

(assert (=> b!115672 m!104060))

(assert (=> b!115672 m!104068))

(declare-fun m!104070 () Bool)

(assert (=> b!115672 m!104070))

(assert (=> b!115643 d!28299))

(declare-fun d!28301 () Bool)

(assert (=> d!28301 (isPrefix!82 testedP!367 (++!335 testedP!367 testedSuffix!285))))

(declare-fun lt!33974 () Unit!1380)

(declare-fun choose!1523 (List!1905 List!1905) Unit!1380)

(assert (=> d!28301 (= lt!33974 (choose!1523 testedP!367 testedSuffix!285))))

(assert (=> d!28301 (= (lemmaConcatTwoListThenFirstIsPrefix!30 testedP!367 testedSuffix!285) lt!33974)))

(declare-fun bs!11826 () Bool)

(assert (= bs!11826 d!28301))

(assert (=> bs!11826 m!104016))

(assert (=> bs!11826 m!104016))

(declare-fun m!104072 () Bool)

(assert (=> bs!11826 m!104072))

(declare-fun m!104074 () Bool)

(assert (=> bs!11826 m!104074))

(assert (=> b!115643 d!28301))

(declare-fun d!28303 () Bool)

(declare-fun lt!33977 () Int)

(assert (=> d!28303 (>= lt!33977 0)))

(declare-fun e!65573 () Int)

(assert (=> d!28303 (= lt!33977 e!65573)))

(declare-fun c!26568 () Bool)

(assert (=> d!28303 (= c!26568 ((_ is Nil!1899) totalInput!1363))))

(assert (=> d!28303 (= (size!1708 totalInput!1363) lt!33977)))

(declare-fun b!115678 () Bool)

(assert (=> b!115678 (= e!65573 0)))

(declare-fun b!115679 () Bool)

(assert (=> b!115679 (= e!65573 (+ 1 (size!1708 (t!22382 totalInput!1363))))))

(assert (= (and d!28303 c!26568) b!115678))

(assert (= (and d!28303 (not c!26568)) b!115679))

(declare-fun m!104076 () Bool)

(assert (=> b!115679 m!104076))

(assert (=> b!115632 d!28303))

(declare-fun d!28305 () Bool)

(assert (=> d!28305 (<= (size!1708 testedP!367) (size!1708 totalInput!1363))))

(declare-fun lt!33980 () Unit!1380)

(declare-fun choose!1524 (List!1905 List!1905) Unit!1380)

(assert (=> d!28305 (= lt!33980 (choose!1524 testedP!367 totalInput!1363))))

(assert (=> d!28305 (isPrefix!82 testedP!367 totalInput!1363)))

(assert (=> d!28305 (= (lemmaIsPrefixThenSmallerEqSize!11 testedP!367 totalInput!1363) lt!33980)))

(declare-fun bs!11827 () Bool)

(assert (= bs!11827 d!28305))

(assert (=> bs!11827 m!104018))

(assert (=> bs!11827 m!103988))

(declare-fun m!104078 () Bool)

(assert (=> bs!11827 m!104078))

(assert (=> bs!11827 m!104040))

(assert (=> b!115651 d!28305))

(declare-fun lt!33983 () List!1905)

(declare-fun e!65578 () Bool)

(declare-fun b!115691 () Bool)

(assert (=> b!115691 (= e!65578 (or (not (= testedSuffix!285 Nil!1899)) (= lt!33983 testedP!367)))))

(declare-fun d!28307 () Bool)

(assert (=> d!28307 e!65578))

(declare-fun res!54986 () Bool)

(assert (=> d!28307 (=> (not res!54986) (not e!65578))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!214 (List!1905) (InoxSet C!1912))

(assert (=> d!28307 (= res!54986 (= (content!214 lt!33983) ((_ map or) (content!214 testedP!367) (content!214 testedSuffix!285))))))

(declare-fun e!65579 () List!1905)

(assert (=> d!28307 (= lt!33983 e!65579)))

(declare-fun c!26571 () Bool)

(assert (=> d!28307 (= c!26571 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28307 (= (++!335 testedP!367 testedSuffix!285) lt!33983)))

(declare-fun b!115689 () Bool)

(assert (=> b!115689 (= e!65579 (Cons!1899 (h!7296 testedP!367) (++!335 (t!22382 testedP!367) testedSuffix!285)))))

(declare-fun b!115690 () Bool)

(declare-fun res!54987 () Bool)

(assert (=> b!115690 (=> (not res!54987) (not e!65578))))

(assert (=> b!115690 (= res!54987 (= (size!1708 lt!33983) (+ (size!1708 testedP!367) (size!1708 testedSuffix!285))))))

(declare-fun b!115688 () Bool)

(assert (=> b!115688 (= e!65579 testedSuffix!285)))

(assert (= (and d!28307 c!26571) b!115688))

(assert (= (and d!28307 (not c!26571)) b!115689))

(assert (= (and d!28307 res!54986) b!115690))

(assert (= (and b!115690 res!54987) b!115691))

(declare-fun m!104080 () Bool)

(assert (=> d!28307 m!104080))

(declare-fun m!104082 () Bool)

(assert (=> d!28307 m!104082))

(declare-fun m!104084 () Bool)

(assert (=> d!28307 m!104084))

(declare-fun m!104086 () Bool)

(assert (=> b!115689 m!104086))

(declare-fun m!104088 () Bool)

(assert (=> b!115690 m!104088))

(assert (=> b!115690 m!104018))

(declare-fun m!104090 () Bool)

(assert (=> b!115690 m!104090))

(assert (=> b!115642 d!28307))

(declare-fun d!28309 () Bool)

(declare-fun lostCauseFct!21 (Regex!495) Bool)

(assert (=> d!28309 (= (lostCause!38 r!15532) (lostCauseFct!21 r!15532))))

(declare-fun bs!11828 () Bool)

(assert (= bs!11828 d!28309))

(declare-fun m!104092 () Bool)

(assert (=> bs!11828 m!104092))

(assert (=> b!115631 d!28309))

(declare-fun d!28311 () Bool)

(assert (=> d!28311 (= testedSuffix!285 lt!33958)))

(declare-fun lt!33986 () Unit!1380)

(declare-fun choose!1525 (List!1905 List!1905 List!1905 List!1905 List!1905) Unit!1380)

(assert (=> d!28311 (= lt!33986 (choose!1525 testedP!367 testedSuffix!285 testedP!367 lt!33958 totalInput!1363))))

(assert (=> d!28311 (isPrefix!82 testedP!367 totalInput!1363)))

(assert (=> d!28311 (= (lemmaSamePrefixThenSameSuffix!26 testedP!367 testedSuffix!285 testedP!367 lt!33958 totalInput!1363) lt!33986)))

(declare-fun bs!11829 () Bool)

(assert (= bs!11829 d!28311))

(declare-fun m!104094 () Bool)

(assert (=> bs!11829 m!104094))

(assert (=> bs!11829 m!104040))

(assert (=> b!115631 d!28311))

(declare-fun d!28313 () Bool)

(declare-fun lt!33989 () List!1905)

(assert (=> d!28313 (= (++!335 testedP!367 lt!33989) totalInput!1363)))

(declare-fun e!65582 () List!1905)

(assert (=> d!28313 (= lt!33989 e!65582)))

(declare-fun c!26574 () Bool)

(assert (=> d!28313 (= c!26574 ((_ is Cons!1899) testedP!367))))

(assert (=> d!28313 (>= (size!1708 totalInput!1363) (size!1708 testedP!367))))

(assert (=> d!28313 (= (getSuffix!27 totalInput!1363 testedP!367) lt!33989)))

(declare-fun b!115696 () Bool)

(assert (=> b!115696 (= e!65582 (getSuffix!27 (tail!213 totalInput!1363) (t!22382 testedP!367)))))

(declare-fun b!115697 () Bool)

(assert (=> b!115697 (= e!65582 totalInput!1363)))

(assert (= (and d!28313 c!26574) b!115696))

(assert (= (and d!28313 (not c!26574)) b!115697))

(declare-fun m!104096 () Bool)

(assert (=> d!28313 m!104096))

(assert (=> d!28313 m!103988))

(assert (=> d!28313 m!104018))

(assert (=> b!115696 m!104052))

(assert (=> b!115696 m!104052))

(declare-fun m!104098 () Bool)

(assert (=> b!115696 m!104098))

(assert (=> b!115631 d!28313))

(declare-fun b!115701 () Bool)

(declare-fun e!65583 () Bool)

(declare-fun lt!33990 () List!1905)

(assert (=> b!115701 (= e!65583 (or (not (= lt!33956 Nil!1899)) (= lt!33990 lt!33951)))))

(declare-fun d!28315 () Bool)

(assert (=> d!28315 e!65583))

(declare-fun res!54988 () Bool)

(assert (=> d!28315 (=> (not res!54988) (not e!65583))))

(assert (=> d!28315 (= res!54988 (= (content!214 lt!33990) ((_ map or) (content!214 lt!33951) (content!214 lt!33956))))))

(declare-fun e!65584 () List!1905)

(assert (=> d!28315 (= lt!33990 e!65584)))

(declare-fun c!26575 () Bool)

(assert (=> d!28315 (= c!26575 ((_ is Nil!1899) lt!33951))))

(assert (=> d!28315 (= (++!335 lt!33951 lt!33956) lt!33990)))

(declare-fun b!115699 () Bool)

(assert (=> b!115699 (= e!65584 (Cons!1899 (h!7296 lt!33951) (++!335 (t!22382 lt!33951) lt!33956)))))

(declare-fun b!115700 () Bool)

(declare-fun res!54989 () Bool)

(assert (=> b!115700 (=> (not res!54989) (not e!65583))))

(assert (=> b!115700 (= res!54989 (= (size!1708 lt!33990) (+ (size!1708 lt!33951) (size!1708 lt!33956))))))

(declare-fun b!115698 () Bool)

(assert (=> b!115698 (= e!65584 lt!33956)))

(assert (= (and d!28315 c!26575) b!115698))

(assert (= (and d!28315 (not c!26575)) b!115699))

(assert (= (and d!28315 res!54988) b!115700))

(assert (= (and b!115700 res!54989) b!115701))

(declare-fun m!104100 () Bool)

(assert (=> d!28315 m!104100))

(declare-fun m!104102 () Bool)

(assert (=> d!28315 m!104102))

(declare-fun m!104104 () Bool)

(assert (=> d!28315 m!104104))

(declare-fun m!104106 () Bool)

(assert (=> b!115699 m!104106))

(declare-fun m!104108 () Bool)

(assert (=> b!115700 m!104108))

(declare-fun m!104110 () Bool)

(assert (=> b!115700 m!104110))

(declare-fun m!104112 () Bool)

(assert (=> b!115700 m!104112))

(assert (=> b!115640 d!28315))

(declare-fun d!28317 () Bool)

(assert (=> d!28317 (= (tail!213 testedSuffix!285) (t!22382 testedSuffix!285))))

(assert (=> b!115640 d!28317))

(declare-fun d!28319 () Bool)

(declare-fun nullableFct!12 (Regex!495) Bool)

(assert (=> d!28319 (= (nullable!63 r!15532) (nullableFct!12 r!15532))))

(declare-fun bs!11830 () Bool)

(assert (= bs!11830 d!28319))

(declare-fun m!104114 () Bool)

(assert (=> bs!11830 m!104114))

(assert (=> b!115640 d!28319))

(declare-fun d!28321 () Bool)

(assert (=> d!28321 (isPrefix!82 (++!335 testedP!367 (Cons!1899 (head!477 (getSuffix!27 totalInput!1363 testedP!367)) Nil!1899)) totalInput!1363)))

(declare-fun lt!33993 () Unit!1380)

(declare-fun choose!1526 (List!1905 List!1905) Unit!1380)

(assert (=> d!28321 (= lt!33993 (choose!1526 testedP!367 totalInput!1363))))

(assert (=> d!28321 (isPrefix!82 testedP!367 totalInput!1363)))

(assert (=> d!28321 (= (lemmaAddHeadSuffixToPrefixStillPrefix!7 testedP!367 totalInput!1363) lt!33993)))

(declare-fun bs!11831 () Bool)

(assert (= bs!11831 d!28321))

(assert (=> bs!11831 m!104004))

(declare-fun m!104116 () Bool)

(assert (=> bs!11831 m!104116))

(declare-fun m!104118 () Bool)

(assert (=> bs!11831 m!104118))

(assert (=> bs!11831 m!104004))

(declare-fun m!104120 () Bool)

(assert (=> bs!11831 m!104120))

(declare-fun m!104122 () Bool)

(assert (=> bs!11831 m!104122))

(assert (=> bs!11831 m!104040))

(assert (=> bs!11831 m!104116))

(assert (=> b!115640 d!28321))

(declare-fun lt!33994 () List!1905)

(declare-fun b!115705 () Bool)

(declare-fun e!65585 () Bool)

(assert (=> b!115705 (= e!65585 (or (not (= (Cons!1899 (head!477 lt!33958) Nil!1899) Nil!1899)) (= lt!33994 testedP!367)))))

(declare-fun d!28323 () Bool)

(assert (=> d!28323 e!65585))

(declare-fun res!54990 () Bool)

(assert (=> d!28323 (=> (not res!54990) (not e!65585))))

(assert (=> d!28323 (= res!54990 (= (content!214 lt!33994) ((_ map or) (content!214 testedP!367) (content!214 (Cons!1899 (head!477 lt!33958) Nil!1899)))))))

(declare-fun e!65586 () List!1905)

(assert (=> d!28323 (= lt!33994 e!65586)))

(declare-fun c!26576 () Bool)

(assert (=> d!28323 (= c!26576 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28323 (= (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899)) lt!33994)))

(declare-fun b!115703 () Bool)

(assert (=> b!115703 (= e!65586 (Cons!1899 (h!7296 testedP!367) (++!335 (t!22382 testedP!367) (Cons!1899 (head!477 lt!33958) Nil!1899))))))

(declare-fun b!115704 () Bool)

(declare-fun res!54991 () Bool)

(assert (=> b!115704 (=> (not res!54991) (not e!65585))))

(assert (=> b!115704 (= res!54991 (= (size!1708 lt!33994) (+ (size!1708 testedP!367) (size!1708 (Cons!1899 (head!477 lt!33958) Nil!1899)))))))

(declare-fun b!115702 () Bool)

(assert (=> b!115702 (= e!65586 (Cons!1899 (head!477 lt!33958) Nil!1899))))

(assert (= (and d!28323 c!26576) b!115702))

(assert (= (and d!28323 (not c!26576)) b!115703))

(assert (= (and d!28323 res!54990) b!115704))

(assert (= (and b!115704 res!54991) b!115705))

(declare-fun m!104124 () Bool)

(assert (=> d!28323 m!104124))

(assert (=> d!28323 m!104082))

(declare-fun m!104126 () Bool)

(assert (=> d!28323 m!104126))

(declare-fun m!104128 () Bool)

(assert (=> b!115703 m!104128))

(declare-fun m!104130 () Bool)

(assert (=> b!115704 m!104130))

(assert (=> b!115704 m!104018))

(declare-fun m!104132 () Bool)

(assert (=> b!115704 m!104132))

(assert (=> b!115640 d!28323))

(declare-fun d!28325 () Bool)

(declare-fun e!65588 () Bool)

(assert (=> d!28325 e!65588))

(declare-fun res!54992 () Bool)

(assert (=> d!28325 (=> res!54992 e!65588)))

(declare-fun lt!33995 () Bool)

(assert (=> d!28325 (= res!54992 (not lt!33995))))

(declare-fun e!65587 () Bool)

(assert (=> d!28325 (= lt!33995 e!65587)))

(declare-fun res!54994 () Bool)

(assert (=> d!28325 (=> res!54994 e!65587)))

(assert (=> d!28325 (= res!54994 ((_ is Nil!1899) (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899))))))

(assert (=> d!28325 (= (isPrefix!82 (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899)) totalInput!1363) lt!33995)))

(declare-fun b!115709 () Bool)

(assert (=> b!115709 (= e!65588 (>= (size!1708 totalInput!1363) (size!1708 (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899)))))))

(declare-fun b!115706 () Bool)

(declare-fun e!65589 () Bool)

(assert (=> b!115706 (= e!65587 e!65589)))

(declare-fun res!54995 () Bool)

(assert (=> b!115706 (=> (not res!54995) (not e!65589))))

(assert (=> b!115706 (= res!54995 (not ((_ is Nil!1899) totalInput!1363)))))

(declare-fun b!115707 () Bool)

(declare-fun res!54993 () Bool)

(assert (=> b!115707 (=> (not res!54993) (not e!65589))))

(assert (=> b!115707 (= res!54993 (= (head!477 (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899))) (head!477 totalInput!1363)))))

(declare-fun b!115708 () Bool)

(assert (=> b!115708 (= e!65589 (isPrefix!82 (tail!213 (++!335 testedP!367 (Cons!1899 (head!477 lt!33958) Nil!1899))) (tail!213 totalInput!1363)))))

(assert (= (and d!28325 (not res!54994)) b!115706))

(assert (= (and b!115706 res!54995) b!115707))

(assert (= (and b!115707 res!54993) b!115708))

(assert (= (and d!28325 (not res!54992)) b!115709))

(assert (=> b!115709 m!103988))

(assert (=> b!115709 m!104030))

(declare-fun m!104134 () Bool)

(assert (=> b!115709 m!104134))

(assert (=> b!115707 m!104030))

(declare-fun m!104136 () Bool)

(assert (=> b!115707 m!104136))

(assert (=> b!115707 m!104050))

(assert (=> b!115708 m!104030))

(declare-fun m!104138 () Bool)

(assert (=> b!115708 m!104138))

(assert (=> b!115708 m!104052))

(assert (=> b!115708 m!104138))

(assert (=> b!115708 m!104052))

(declare-fun m!104140 () Bool)

(assert (=> b!115708 m!104140))

(assert (=> b!115640 d!28325))

(declare-fun d!28327 () Bool)

(assert (=> d!28327 (= (head!477 lt!33958) (h!7296 lt!33958))))

(assert (=> b!115640 d!28327))

(declare-fun e!65590 () Bool)

(declare-fun b!115713 () Bool)

(declare-fun lt!33996 () List!1905)

(assert (=> b!115713 (= e!65590 (or (not (= (Cons!1899 lt!33960 Nil!1899) Nil!1899)) (= lt!33996 testedP!367)))))

(declare-fun d!28329 () Bool)

(assert (=> d!28329 e!65590))

(declare-fun res!54996 () Bool)

(assert (=> d!28329 (=> (not res!54996) (not e!65590))))

(assert (=> d!28329 (= res!54996 (= (content!214 lt!33996) ((_ map or) (content!214 testedP!367) (content!214 (Cons!1899 lt!33960 Nil!1899)))))))

(declare-fun e!65591 () List!1905)

(assert (=> d!28329 (= lt!33996 e!65591)))

(declare-fun c!26577 () Bool)

(assert (=> d!28329 (= c!26577 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28329 (= (++!335 testedP!367 (Cons!1899 lt!33960 Nil!1899)) lt!33996)))

(declare-fun b!115711 () Bool)

(assert (=> b!115711 (= e!65591 (Cons!1899 (h!7296 testedP!367) (++!335 (t!22382 testedP!367) (Cons!1899 lt!33960 Nil!1899))))))

(declare-fun b!115712 () Bool)

(declare-fun res!54997 () Bool)

(assert (=> b!115712 (=> (not res!54997) (not e!65590))))

(assert (=> b!115712 (= res!54997 (= (size!1708 lt!33996) (+ (size!1708 testedP!367) (size!1708 (Cons!1899 lt!33960 Nil!1899)))))))

(declare-fun b!115710 () Bool)

(assert (=> b!115710 (= e!65591 (Cons!1899 lt!33960 Nil!1899))))

(assert (= (and d!28329 c!26577) b!115710))

(assert (= (and d!28329 (not c!26577)) b!115711))

(assert (= (and d!28329 res!54996) b!115712))

(assert (= (and b!115712 res!54997) b!115713))

(declare-fun m!104142 () Bool)

(assert (=> d!28329 m!104142))

(assert (=> d!28329 m!104082))

(declare-fun m!104144 () Bool)

(assert (=> d!28329 m!104144))

(declare-fun m!104146 () Bool)

(assert (=> b!115711 m!104146))

(declare-fun m!104148 () Bool)

(assert (=> b!115712 m!104148))

(assert (=> b!115712 m!104018))

(declare-fun m!104150 () Bool)

(assert (=> b!115712 m!104150))

(assert (=> b!115640 d!28329))

(declare-fun d!28331 () Bool)

(assert (=> d!28331 (= (++!335 (++!335 testedP!367 (Cons!1899 lt!33960 Nil!1899)) lt!33956) totalInput!1363)))

(declare-fun lt!33999 () Unit!1380)

(declare-fun choose!1527 (List!1905 C!1912 List!1905 List!1905) Unit!1380)

(assert (=> d!28331 (= lt!33999 (choose!1527 testedP!367 lt!33960 lt!33956 totalInput!1363))))

(assert (=> d!28331 (= (++!335 testedP!367 (Cons!1899 lt!33960 lt!33956)) totalInput!1363)))

(assert (=> d!28331 (= (lemmaMoveElementToOtherListKeepsConcatEq!3 testedP!367 lt!33960 lt!33956 totalInput!1363) lt!33999)))

(declare-fun bs!11832 () Bool)

(assert (= bs!11832 d!28331))

(assert (=> bs!11832 m!104024))

(assert (=> bs!11832 m!104024))

(declare-fun m!104152 () Bool)

(assert (=> bs!11832 m!104152))

(declare-fun m!104154 () Bool)

(assert (=> bs!11832 m!104154))

(declare-fun m!104156 () Bool)

(assert (=> bs!11832 m!104156))

(assert (=> b!115640 d!28331))

(declare-fun d!28333 () Bool)

(assert (=> d!28333 (= (head!477 testedSuffix!285) (h!7296 testedSuffix!285))))

(assert (=> b!115640 d!28333))

(declare-fun d!28335 () Bool)

(assert (=> d!28335 (= (array_inv!429 (_keys!652 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) (bvsge (size!1706 (_keys!652 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!115629 d!28335))

(declare-fun d!28337 () Bool)

(assert (=> d!28337 (= (array_inv!430 (_values!639 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) (bvsge (size!1707 (_values!639 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!115629 d!28337))

(declare-fun b!115732 () Bool)

(declare-fun e!65610 () Bool)

(declare-fun call!4895 () Bool)

(assert (=> b!115732 (= e!65610 call!4895)))

(declare-fun c!26582 () Bool)

(declare-fun c!26583 () Bool)

(declare-fun bm!4889 () Bool)

(declare-fun call!4896 () Bool)

(assert (=> bm!4889 (= call!4896 (validRegex!103 (ite c!26583 (reg!824 r!15532) (ite c!26582 (regOne!1503 r!15532) (regTwo!1502 r!15532)))))))

(declare-fun b!115733 () Bool)

(declare-fun res!55008 () Bool)

(declare-fun e!65611 () Bool)

(assert (=> b!115733 (=> (not res!55008) (not e!65611))))

(assert (=> b!115733 (= res!55008 call!4895)))

(declare-fun e!65606 () Bool)

(assert (=> b!115733 (= e!65606 e!65611)))

(declare-fun b!115734 () Bool)

(declare-fun res!55010 () Bool)

(declare-fun e!65612 () Bool)

(assert (=> b!115734 (=> res!55010 e!65612)))

(assert (=> b!115734 (= res!55010 (not ((_ is Concat!879) r!15532)))))

(assert (=> b!115734 (= e!65606 e!65612)))

(declare-fun b!115735 () Bool)

(assert (=> b!115735 (= e!65612 e!65610)))

(declare-fun res!55009 () Bool)

(assert (=> b!115735 (=> (not res!55009) (not e!65610))))

(declare-fun call!4894 () Bool)

(assert (=> b!115735 (= res!55009 call!4894)))

(declare-fun b!115737 () Bool)

(assert (=> b!115737 (= e!65611 call!4894)))

(declare-fun b!115738 () Bool)

(declare-fun e!65608 () Bool)

(assert (=> b!115738 (= e!65608 call!4896)))

(declare-fun b!115739 () Bool)

(declare-fun e!65607 () Bool)

(declare-fun e!65609 () Bool)

(assert (=> b!115739 (= e!65607 e!65609)))

(assert (=> b!115739 (= c!26583 ((_ is Star!495) r!15532))))

(declare-fun bm!4890 () Bool)

(assert (=> bm!4890 (= call!4895 call!4896)))

(declare-fun bm!4891 () Bool)

(assert (=> bm!4891 (= call!4894 (validRegex!103 (ite c!26582 (regTwo!1503 r!15532) (regOne!1502 r!15532))))))

(declare-fun b!115740 () Bool)

(assert (=> b!115740 (= e!65609 e!65608)))

(declare-fun res!55012 () Bool)

(assert (=> b!115740 (= res!55012 (not (nullable!63 (reg!824 r!15532))))))

(assert (=> b!115740 (=> (not res!55012) (not e!65608))))

(declare-fun d!28339 () Bool)

(declare-fun res!55011 () Bool)

(assert (=> d!28339 (=> res!55011 e!65607)))

(assert (=> d!28339 (= res!55011 ((_ is ElementMatch!495) r!15532))))

(assert (=> d!28339 (= (validRegex!103 r!15532) e!65607)))

(declare-fun b!115736 () Bool)

(assert (=> b!115736 (= e!65609 e!65606)))

(assert (=> b!115736 (= c!26582 ((_ is Union!495) r!15532))))

(assert (= (and d!28339 (not res!55011)) b!115739))

(assert (= (and b!115739 c!26583) b!115740))

(assert (= (and b!115739 (not c!26583)) b!115736))

(assert (= (and b!115740 res!55012) b!115738))

(assert (= (and b!115736 c!26582) b!115733))

(assert (= (and b!115736 (not c!26582)) b!115734))

(assert (= (and b!115733 res!55008) b!115737))

(assert (= (and b!115734 (not res!55010)) b!115735))

(assert (= (and b!115735 res!55009) b!115732))

(assert (= (or b!115737 b!115735) bm!4891))

(assert (= (or b!115733 b!115732) bm!4890))

(assert (= (or b!115738 bm!4890) bm!4889))

(declare-fun m!104158 () Bool)

(assert (=> bm!4889 m!104158))

(declare-fun m!104160 () Bool)

(assert (=> bm!4891 m!104160))

(declare-fun m!104162 () Bool)

(assert (=> b!115740 m!104162))

(assert (=> start!11786 d!28339))

(declare-fun d!28341 () Bool)

(declare-fun res!55015 () Bool)

(declare-fun e!65615 () Bool)

(assert (=> d!28341 (=> (not res!55015) (not e!65615))))

(assert (=> d!28341 (= res!55015 ((_ is HashMap!357) (cache!809 cache!470)))))

(assert (=> d!28341 (= (inv!2410 cache!470) e!65615)))

(declare-fun b!115743 () Bool)

(assert (=> b!115743 (= e!65615 (validCacheMap!16 (cache!809 cache!470)))))

(assert (= (and d!28341 res!55015) b!115743))

(assert (=> b!115743 m!104046))

(assert (=> start!11786 d!28341))

(declare-fun d!28343 () Bool)

(declare-fun lt!34000 () Int)

(assert (=> d!28343 (>= lt!34000 0)))

(declare-fun e!65616 () Int)

(assert (=> d!28343 (= lt!34000 e!65616)))

(declare-fun c!26584 () Bool)

(assert (=> d!28343 (= c!26584 ((_ is Nil!1899) testedP!367))))

(assert (=> d!28343 (= (size!1708 testedP!367) lt!34000)))

(declare-fun b!115744 () Bool)

(assert (=> b!115744 (= e!65616 0)))

(declare-fun b!115745 () Bool)

(assert (=> b!115745 (= e!65616 (+ 1 (size!1708 (t!22382 testedP!367))))))

(assert (= (and d!28343 c!26584) b!115744))

(assert (= (and d!28343 (not c!26584)) b!115745))

(declare-fun m!104164 () Bool)

(assert (=> b!115745 m!104164))

(assert (=> b!115635 d!28343))

(declare-fun e!65619 () Bool)

(assert (=> b!115628 (= tp!63178 e!65619)))

(declare-fun b!115758 () Bool)

(declare-fun tp!63198 () Bool)

(assert (=> b!115758 (= e!65619 tp!63198)))

(declare-fun b!115757 () Bool)

(declare-fun tp!63201 () Bool)

(declare-fun tp!63199 () Bool)

(assert (=> b!115757 (= e!65619 (and tp!63201 tp!63199))))

(declare-fun b!115756 () Bool)

(assert (=> b!115756 (= e!65619 tp_is_empty!1045)))

(declare-fun b!115759 () Bool)

(declare-fun tp!63200 () Bool)

(declare-fun tp!63202 () Bool)

(assert (=> b!115759 (= e!65619 (and tp!63200 tp!63202))))

(assert (= (and b!115628 ((_ is ElementMatch!495) (regOne!1503 r!15532))) b!115756))

(assert (= (and b!115628 ((_ is Concat!879) (regOne!1503 r!15532))) b!115757))

(assert (= (and b!115628 ((_ is Star!495) (regOne!1503 r!15532))) b!115758))

(assert (= (and b!115628 ((_ is Union!495) (regOne!1503 r!15532))) b!115759))

(declare-fun e!65620 () Bool)

(assert (=> b!115628 (= tp!63175 e!65620)))

(declare-fun b!115762 () Bool)

(declare-fun tp!63203 () Bool)

(assert (=> b!115762 (= e!65620 tp!63203)))

(declare-fun b!115761 () Bool)

(declare-fun tp!63206 () Bool)

(declare-fun tp!63204 () Bool)

(assert (=> b!115761 (= e!65620 (and tp!63206 tp!63204))))

(declare-fun b!115760 () Bool)

(assert (=> b!115760 (= e!65620 tp_is_empty!1045)))

(declare-fun b!115763 () Bool)

(declare-fun tp!63205 () Bool)

(declare-fun tp!63207 () Bool)

(assert (=> b!115763 (= e!65620 (and tp!63205 tp!63207))))

(assert (= (and b!115628 ((_ is ElementMatch!495) (regTwo!1503 r!15532))) b!115760))

(assert (= (and b!115628 ((_ is Concat!879) (regTwo!1503 r!15532))) b!115761))

(assert (= (and b!115628 ((_ is Star!495) (regTwo!1503 r!15532))) b!115762))

(assert (= (and b!115628 ((_ is Union!495) (regTwo!1503 r!15532))) b!115763))

(declare-fun e!65621 () Bool)

(assert (=> b!115647 (= tp!63185 e!65621)))

(declare-fun b!115766 () Bool)

(declare-fun tp!63208 () Bool)

(assert (=> b!115766 (= e!65621 tp!63208)))

(declare-fun b!115765 () Bool)

(declare-fun tp!63211 () Bool)

(declare-fun tp!63209 () Bool)

(assert (=> b!115765 (= e!65621 (and tp!63211 tp!63209))))

(declare-fun b!115764 () Bool)

(assert (=> b!115764 (= e!65621 tp_is_empty!1045)))

(declare-fun b!115767 () Bool)

(declare-fun tp!63210 () Bool)

(declare-fun tp!63212 () Bool)

(assert (=> b!115767 (= e!65621 (and tp!63210 tp!63212))))

(assert (= (and b!115647 ((_ is ElementMatch!495) (reg!824 r!15532))) b!115764))

(assert (= (and b!115647 ((_ is Concat!879) (reg!824 r!15532))) b!115765))

(assert (= (and b!115647 ((_ is Star!495) (reg!824 r!15532))) b!115766))

(assert (= (and b!115647 ((_ is Union!495) (reg!824 r!15532))) b!115767))

(declare-fun b!115772 () Bool)

(declare-fun e!65624 () Bool)

(declare-fun tp!63215 () Bool)

(assert (=> b!115772 (= e!65624 (and tp_is_empty!1045 tp!63215))))

(assert (=> b!115652 (= tp!63183 e!65624)))

(assert (= (and b!115652 ((_ is Cons!1899) (t!22382 testedP!367))) b!115772))

(declare-fun tp!63222 () Bool)

(declare-fun e!65627 () Bool)

(declare-fun tp!63224 () Bool)

(declare-fun b!115777 () Bool)

(declare-fun tp!63223 () Bool)

(assert (=> b!115777 (= e!65627 (and tp!63222 tp_is_empty!1045 tp!63223 tp!63224))))

(assert (=> b!115638 (= tp!63186 e!65627)))

(assert (= (and b!115638 ((_ is Cons!1898) mapDefault!1405)) b!115777))

(declare-fun b!115778 () Bool)

(declare-fun e!65628 () Bool)

(declare-fun tp!63225 () Bool)

(assert (=> b!115778 (= e!65628 (and tp_is_empty!1045 tp!63225))))

(assert (=> b!115650 (= tp!63179 e!65628)))

(assert (= (and b!115650 ((_ is Cons!1899) (t!22382 testedSuffix!285))) b!115778))

(declare-fun b!115779 () Bool)

(declare-fun e!65629 () Bool)

(declare-fun tp!63226 () Bool)

(assert (=> b!115779 (= e!65629 (and tp_is_empty!1045 tp!63226))))

(assert (=> b!115636 (= tp!63182 e!65629)))

(assert (= (and b!115636 ((_ is Cons!1899) (t!22382 totalInput!1363))) b!115779))

(declare-fun e!65630 () Bool)

(assert (=> b!115641 (= tp!63184 e!65630)))

(declare-fun b!115782 () Bool)

(declare-fun tp!63227 () Bool)

(assert (=> b!115782 (= e!65630 tp!63227)))

(declare-fun b!115781 () Bool)

(declare-fun tp!63230 () Bool)

(declare-fun tp!63228 () Bool)

(assert (=> b!115781 (= e!65630 (and tp!63230 tp!63228))))

(declare-fun b!115780 () Bool)

(assert (=> b!115780 (= e!65630 tp_is_empty!1045)))

(declare-fun b!115783 () Bool)

(declare-fun tp!63229 () Bool)

(declare-fun tp!63231 () Bool)

(assert (=> b!115783 (= e!65630 (and tp!63229 tp!63231))))

(assert (= (and b!115641 ((_ is ElementMatch!495) (regOne!1502 r!15532))) b!115780))

(assert (= (and b!115641 ((_ is Concat!879) (regOne!1502 r!15532))) b!115781))

(assert (= (and b!115641 ((_ is Star!495) (regOne!1502 r!15532))) b!115782))

(assert (= (and b!115641 ((_ is Union!495) (regOne!1502 r!15532))) b!115783))

(declare-fun e!65631 () Bool)

(assert (=> b!115641 (= tp!63187 e!65631)))

(declare-fun b!115786 () Bool)

(declare-fun tp!63232 () Bool)

(assert (=> b!115786 (= e!65631 tp!63232)))

(declare-fun b!115785 () Bool)

(declare-fun tp!63235 () Bool)

(declare-fun tp!63233 () Bool)

(assert (=> b!115785 (= e!65631 (and tp!63235 tp!63233))))

(declare-fun b!115784 () Bool)

(assert (=> b!115784 (= e!65631 tp_is_empty!1045)))

(declare-fun b!115787 () Bool)

(declare-fun tp!63234 () Bool)

(declare-fun tp!63236 () Bool)

(assert (=> b!115787 (= e!65631 (and tp!63234 tp!63236))))

(assert (= (and b!115641 ((_ is ElementMatch!495) (regTwo!1502 r!15532))) b!115784))

(assert (= (and b!115641 ((_ is Concat!879) (regTwo!1502 r!15532))) b!115785))

(assert (= (and b!115641 ((_ is Star!495) (regTwo!1502 r!15532))) b!115786))

(assert (= (and b!115641 ((_ is Union!495) (regTwo!1502 r!15532))) b!115787))

(declare-fun b!115794 () Bool)

(declare-fun e!65637 () Bool)

(declare-fun tp!63257 () Bool)

(declare-fun tp!63256 () Bool)

(declare-fun tp!63252 () Bool)

(assert (=> b!115794 (= e!65637 (and tp!63257 tp_is_empty!1045 tp!63252 tp!63256))))

(declare-fun mapIsEmpty!1408 () Bool)

(declare-fun mapRes!1408 () Bool)

(assert (=> mapIsEmpty!1408 mapRes!1408))

(declare-fun condMapEmpty!1408 () Bool)

(declare-fun mapDefault!1408 () List!1904)

(assert (=> mapNonEmpty!1405 (= condMapEmpty!1408 (= mapRest!1405 ((as const (Array (_ BitVec 32) List!1904)) mapDefault!1408)))))

(declare-fun e!65636 () Bool)

(assert (=> mapNonEmpty!1405 (= tp!63181 (and e!65636 mapRes!1408))))

(declare-fun b!115795 () Bool)

(declare-fun tp!63251 () Bool)

(declare-fun tp!63254 () Bool)

(declare-fun tp!63253 () Bool)

(assert (=> b!115795 (= e!65636 (and tp!63253 tp_is_empty!1045 tp!63254 tp!63251))))

(declare-fun mapNonEmpty!1408 () Bool)

(declare-fun tp!63255 () Bool)

(assert (=> mapNonEmpty!1408 (= mapRes!1408 (and tp!63255 e!65637))))

(declare-fun mapRest!1408 () (Array (_ BitVec 32) List!1904))

(declare-fun mapValue!1408 () List!1904)

(declare-fun mapKey!1408 () (_ BitVec 32))

(assert (=> mapNonEmpty!1408 (= mapRest!1405 (store mapRest!1408 mapKey!1408 mapValue!1408))))

(assert (= (and mapNonEmpty!1405 condMapEmpty!1408) mapIsEmpty!1408))

(assert (= (and mapNonEmpty!1405 (not condMapEmpty!1408)) mapNonEmpty!1408))

(assert (= (and mapNonEmpty!1408 ((_ is Cons!1898) mapValue!1408)) b!115794))

(assert (= (and mapNonEmpty!1405 ((_ is Cons!1898) mapDefault!1408)) b!115795))

(declare-fun m!104166 () Bool)

(assert (=> mapNonEmpty!1408 m!104166))

(declare-fun b!115796 () Bool)

(declare-fun tp!63260 () Bool)

(declare-fun e!65638 () Bool)

(declare-fun tp!63258 () Bool)

(declare-fun tp!63259 () Bool)

(assert (=> b!115796 (= e!65638 (and tp!63258 tp_is_empty!1045 tp!63259 tp!63260))))

(assert (=> mapNonEmpty!1405 (= tp!63180 e!65638)))

(assert (= (and mapNonEmpty!1405 ((_ is Cons!1898) mapValue!1405)) b!115796))

(declare-fun tp!63263 () Bool)

(declare-fun tp!63261 () Bool)

(declare-fun b!115797 () Bool)

(declare-fun tp!63262 () Bool)

(declare-fun e!65639 () Bool)

(assert (=> b!115797 (= e!65639 (and tp!63261 tp_is_empty!1045 tp!63262 tp!63263))))

(assert (=> b!115629 (= tp!63176 e!65639)))

(assert (= (and b!115629 ((_ is Cons!1898) (zeroValue!617 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470)))))))) b!115797))

(declare-fun tp!63264 () Bool)

(declare-fun b!115798 () Bool)

(declare-fun e!65640 () Bool)

(declare-fun tp!63266 () Bool)

(declare-fun tp!63265 () Bool)

(assert (=> b!115798 (= e!65640 (and tp!63264 tp_is_empty!1045 tp!63265 tp!63266))))

(assert (=> b!115629 (= tp!63177 e!65640)))

(assert (= (and b!115629 ((_ is Cons!1898) (minValue!617 (v!13253 (underlying!921 (v!13254 (underlying!922 (cache!809 cache!470)))))))) b!115798))

(check-sat (not d!28307) (not d!28315) (not d!28289) (not b!115766) (not bm!4889) tp_is_empty!1045 (not d!28301) (not b!115759) (not b!115703) (not b!115761) (not b!115777) (not b!115665) (not d!28295) (not mapNonEmpty!1408) (not b!115795) (not b!115781) b_and!5805 (not b!115671) (not b!115779) (not b!115711) (not b!115704) (not b!115785) (not b!115673) (not b!115765) (not d!28331) (not b!115672) (not b!115797) (not b!115757) (not b!115782) (not b!115772) (not d!28323) (not b!115767) (not b!115794) (not b!115707) (not b!115696) (not b!115778) (not b!115664) (not b!115762) (not b!115758) (not b!115667) (not b!115690) (not b!115798) (not b!115740) (not b!115689) (not b!115763) (not d!28311) (not b!115743) b_and!5803 (not d!28309) (not b_next!3675) (not bm!4891) (not b!115663) (not d!28329) (not b!115796) (not d!28313) (not b!115708) (not b!115783) (not b!115679) (not b!115668) (not b_next!3673) (not b!115786) (not b!115700) (not d!28321) (not d!28305) (not b!115787) (not b!115745) (not b!115712) (not b!115669) (not d!28319) (not b!115699) (not d!28291) (not b!115709))
(check-sat b_and!5803 b_and!5805 (not b_next!3673) (not b_next!3675))
