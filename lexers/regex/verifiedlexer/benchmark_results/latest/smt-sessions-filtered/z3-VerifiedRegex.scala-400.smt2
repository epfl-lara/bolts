; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11990 () Bool)

(assert start!11990)

(declare-fun b!117786 () Bool)

(declare-fun b_free!3753 () Bool)

(declare-fun b_next!3753 () Bool)

(assert (=> b!117786 (= b_free!3753 (not b_next!3753))))

(declare-fun tp!64395 () Bool)

(declare-fun b_and!5883 () Bool)

(assert (=> b!117786 (= tp!64395 b_and!5883)))

(declare-fun b!117801 () Bool)

(declare-fun b_free!3755 () Bool)

(declare-fun b_next!3755 () Bool)

(assert (=> b!117801 (= b_free!3755 (not b_next!3755))))

(declare-fun tp!64389 () Bool)

(declare-fun b_and!5885 () Bool)

(assert (=> b!117801 (= tp!64389 b_and!5885)))

(declare-fun b!117784 () Bool)

(declare-fun e!67108 () Bool)

(declare-fun e!67105 () Bool)

(assert (=> b!117784 (= e!67108 (not e!67105))))

(declare-fun res!55748 () Bool)

(assert (=> b!117784 (=> res!55748 e!67105)))

(declare-datatypes ((C!1952 0))(
  ( (C!1953 (val!702 Int)) )
))
(declare-datatypes ((List!1944 0))(
  ( (Nil!1938) (Cons!1938 (h!7335 C!1952) (t!22421 List!1944)) )
))
(declare-fun testedP!367 () List!1944)

(declare-fun totalInput!1363 () List!1944)

(declare-fun isPrefix!102 (List!1944 List!1944) Bool)

(assert (=> b!117784 (= res!55748 (not (isPrefix!102 testedP!367 totalInput!1363)))))

(declare-fun lt!34988 () List!1944)

(assert (=> b!117784 (isPrefix!102 testedP!367 lt!34988)))

(declare-datatypes ((Unit!1451 0))(
  ( (Unit!1452) )
))
(declare-fun lt!34985 () Unit!1451)

(declare-fun testedSuffix!285 () List!1944)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!48 (List!1944 List!1944) Unit!1451)

(assert (=> b!117784 (= lt!34985 (lemmaConcatTwoListThenFirstIsPrefix!48 testedP!367 testedSuffix!285))))

(declare-fun b!117785 () Bool)

(declare-fun res!55746 () Bool)

(declare-fun e!67100 () Bool)

(assert (=> b!117785 (=> (not res!55746) (not e!67100))))

(declare-datatypes ((Regex!515 0))(
  ( (ElementMatch!515 (c!26739 C!1952)) (Concat!899 (regOne!1542 Regex!515) (regTwo!1542 Regex!515)) (EmptyExpr!515) (Star!515 (reg!844 Regex!515)) (EmptyLang!515) (Union!515 (regOne!1543 Regex!515) (regTwo!1543 Regex!515)) )
))
(declare-datatypes ((Hashable!377 0))(
  ( (HashableExt!376 (__x!2068 Int)) )
))
(declare-datatypes ((tuple2!2184 0))(
  ( (tuple2!2185 (_1!1302 Regex!515) (_2!1302 C!1952)) )
))
(declare-datatypes ((tuple2!2186 0))(
  ( (tuple2!2187 (_1!1303 tuple2!2184) (_2!1303 Regex!515)) )
))
(declare-datatypes ((List!1945 0))(
  ( (Nil!1939) (Cons!1939 (h!7336 tuple2!2186) (t!22422 List!1945)) )
))
(declare-datatypes ((array!1385 0))(
  ( (array!1386 (arr!646 (Array (_ BitVec 32) (_ BitVec 64))) (size!1765 (_ BitVec 32))) )
))
(declare-datatypes ((array!1387 0))(
  ( (array!1388 (arr!647 (Array (_ BitVec 32) List!1945)) (size!1766 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!762 0))(
  ( (LongMapFixedSize!763 (defaultEntry!720 Int) (mask!1306 (_ BitVec 32)) (extraKeys!627 (_ BitVec 32)) (zeroValue!637 List!1945) (minValue!637 List!1945) (_size!895 (_ BitVec 32)) (_keys!672 array!1385) (_values!659 array!1387) (_vacant!442 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1513 0))(
  ( (Cell!1514 (v!13293 LongMapFixedSize!762)) )
))
(declare-datatypes ((MutLongMap!381 0))(
  ( (LongMap!381 (underlying!961 Cell!1513)) (MutLongMapExt!380 (__x!2069 Int)) )
))
(declare-datatypes ((Cell!1515 0))(
  ( (Cell!1516 (v!13294 MutLongMap!381)) )
))
(declare-datatypes ((MutableMap!377 0))(
  ( (MutableMapExt!376 (__x!2070 Int)) (HashMap!377 (underlying!962 Cell!1515) (hashF!2253 Hashable!377) (_size!896 (_ BitVec 32)) (defaultValue!526 Int)) )
))
(declare-datatypes ((Cache!190 0))(
  ( (Cache!191 (cache!829 MutableMap!377)) )
))
(declare-fun cache!470 () Cache!190)

(declare-fun valid!344 (Cache!190) Bool)

(assert (=> b!117785 (= res!55746 (valid!344 cache!470))))

(declare-fun mapIsEmpty!1477 () Bool)

(declare-fun mapRes!1477 () Bool)

(assert (=> mapIsEmpty!1477 mapRes!1477))

(declare-fun e!67109 () Bool)

(declare-fun e!67104 () Bool)

(assert (=> b!117786 (= e!67109 (and e!67104 tp!64395))))

(declare-fun b!117787 () Bool)

(declare-fun e!67112 () Bool)

(declare-fun lt!34989 () MutLongMap!381)

(get-info :version)

(assert (=> b!117787 (= e!67104 (and e!67112 ((_ is LongMap!381) lt!34989)))))

(assert (=> b!117787 (= lt!34989 (v!13294 (underlying!962 (cache!829 cache!470))))))

(declare-fun b!117789 () Bool)

(declare-fun e!67099 () Bool)

(declare-fun tp_is_empty!1085 () Bool)

(assert (=> b!117789 (= e!67099 tp_is_empty!1085)))

(declare-fun b!117790 () Bool)

(assert (=> b!117790 (= e!67100 e!67108)))

(declare-fun res!55749 () Bool)

(assert (=> b!117790 (=> (not res!55749) (not e!67108))))

(assert (=> b!117790 (= res!55749 (= lt!34988 totalInput!1363))))

(declare-fun ++!353 (List!1944 List!1944) List!1944)

(assert (=> b!117790 (= lt!34988 (++!353 testedP!367 testedSuffix!285))))

(declare-fun b!117791 () Bool)

(declare-fun e!67101 () Bool)

(declare-fun tp!64391 () Bool)

(assert (=> b!117791 (= e!67101 (and tp_is_empty!1085 tp!64391))))

(declare-fun b!117792 () Bool)

(declare-fun res!55752 () Bool)

(assert (=> b!117792 (=> (not res!55752) (not e!67108))))

(declare-fun testedPSize!285 () Int)

(declare-fun size!1767 (List!1944) Int)

(assert (=> b!117792 (= res!55752 (= testedPSize!285 (size!1767 testedP!367)))))

(declare-fun b!117793 () Bool)

(declare-fun res!55750 () Bool)

(declare-fun e!67102 () Bool)

(assert (=> b!117793 (=> res!55750 e!67102)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!117793 (= res!55750 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!117794 () Bool)

(declare-fun e!67111 () Bool)

(declare-fun tp!64402 () Bool)

(assert (=> b!117794 (= e!67111 (and tp_is_empty!1085 tp!64402))))

(declare-fun b!117795 () Bool)

(declare-fun e!67106 () Bool)

(declare-fun tp!64399 () Bool)

(assert (=> b!117795 (= e!67106 (and tp_is_empty!1085 tp!64399))))

(declare-fun b!117796 () Bool)

(declare-fun e!67103 () Bool)

(declare-fun e!67098 () Bool)

(assert (=> b!117796 (= e!67103 e!67098)))

(declare-fun mapNonEmpty!1477 () Bool)

(declare-fun tp!64398 () Bool)

(declare-fun tp!64392 () Bool)

(assert (=> mapNonEmpty!1477 (= mapRes!1477 (and tp!64398 tp!64392))))

(declare-fun mapRest!1477 () (Array (_ BitVec 32) List!1945))

(declare-fun mapKey!1477 () (_ BitVec 32))

(declare-fun mapValue!1477 () List!1945)

(assert (=> mapNonEmpty!1477 (= (arr!647 (_values!659 (v!13293 (underlying!961 (v!13294 (underlying!962 (cache!829 cache!470))))))) (store mapRest!1477 mapKey!1477 mapValue!1477))))

(declare-fun b!117797 () Bool)

(declare-fun e!67113 () Bool)

(assert (=> b!117797 (= e!67113 e!67109)))

(declare-fun b!117798 () Bool)

(declare-fun tp!64396 () Bool)

(assert (=> b!117798 (= e!67099 tp!64396)))

(declare-fun b!117799 () Bool)

(assert (=> b!117799 (= e!67112 e!67103)))

(declare-fun b!117800 () Bool)

(assert (=> b!117800 (= e!67105 e!67102)))

(declare-fun res!55747 () Bool)

(assert (=> b!117800 (=> res!55747 e!67102)))

(declare-fun r!15532 () Regex!515)

(declare-fun lostCause!53 (Regex!515) Bool)

(assert (=> b!117800 (= res!55747 (lostCause!53 r!15532))))

(declare-fun lt!34990 () List!1944)

(assert (=> b!117800 (and (= testedSuffix!285 lt!34990) (= lt!34990 testedSuffix!285))))

(declare-fun lt!34986 () Unit!1451)

(declare-fun lemmaSamePrefixThenSameSuffix!41 (List!1944 List!1944 List!1944 List!1944 List!1944) Unit!1451)

(assert (=> b!117800 (= lt!34986 (lemmaSamePrefixThenSameSuffix!41 testedP!367 testedSuffix!285 testedP!367 lt!34990 totalInput!1363))))

(declare-fun getSuffix!42 (List!1944 List!1944) List!1944)

(assert (=> b!117800 (= lt!34990 (getSuffix!42 totalInput!1363 testedP!367))))

(declare-fun tp!64397 () Bool)

(declare-fun tp!64400 () Bool)

(declare-fun e!67107 () Bool)

(declare-fun array_inv!461 (array!1385) Bool)

(declare-fun array_inv!462 (array!1387) Bool)

(assert (=> b!117801 (= e!67098 (and tp!64389 tp!64400 tp!64397 (array_inv!461 (_keys!672 (v!13293 (underlying!961 (v!13294 (underlying!962 (cache!829 cache!470))))))) (array_inv!462 (_values!659 (v!13293 (underlying!961 (v!13294 (underlying!962 (cache!829 cache!470))))))) e!67107))))

(declare-fun b!117788 () Bool)

(declare-fun tp!64390 () Bool)

(declare-fun tp!64403 () Bool)

(assert (=> b!117788 (= e!67099 (and tp!64390 tp!64403))))

(declare-fun res!55753 () Bool)

(assert (=> start!11990 (=> (not res!55753) (not e!67100))))

(declare-fun validRegex!121 (Regex!515) Bool)

(assert (=> start!11990 (= res!55753 (validRegex!121 r!15532))))

(assert (=> start!11990 e!67100))

(assert (=> start!11990 true))

(assert (=> start!11990 e!67099))

(assert (=> start!11990 e!67111))

(assert (=> start!11990 e!67101))

(assert (=> start!11990 e!67106))

(declare-fun inv!2457 (Cache!190) Bool)

(assert (=> start!11990 (and (inv!2457 cache!470) e!67113)))

(declare-fun b!117802 () Bool)

(declare-fun tp!64394 () Bool)

(declare-fun tp!64393 () Bool)

(assert (=> b!117802 (= e!67099 (and tp!64394 tp!64393))))

(declare-fun b!117803 () Bool)

(assert (=> b!117803 (= e!67102 (= testedP!367 totalInput!1363))))

(assert (=> b!117803 (= totalInput!1363 testedP!367)))

(declare-fun lt!34984 () Unit!1451)

(declare-fun lemmaIsPrefixSameLengthThenSameList!27 (List!1944 List!1944 List!1944) Unit!1451)

(assert (=> b!117803 (= lt!34984 (lemmaIsPrefixSameLengthThenSameList!27 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!117803 (isPrefix!102 totalInput!1363 totalInput!1363)))

(declare-fun lt!34987 () Unit!1451)

(declare-fun lemmaIsPrefixRefl!81 (List!1944 List!1944) Unit!1451)

(assert (=> b!117803 (= lt!34987 (lemmaIsPrefixRefl!81 totalInput!1363 totalInput!1363))))

(declare-fun b!117804 () Bool)

(declare-fun res!55751 () Bool)

(assert (=> b!117804 (=> (not res!55751) (not e!67108))))

(assert (=> b!117804 (= res!55751 (= totalInputSize!643 (size!1767 totalInput!1363)))))

(declare-fun b!117805 () Bool)

(declare-fun tp!64401 () Bool)

(assert (=> b!117805 (= e!67107 (and tp!64401 mapRes!1477))))

(declare-fun condMapEmpty!1477 () Bool)

(declare-fun mapDefault!1477 () List!1945)

(assert (=> b!117805 (= condMapEmpty!1477 (= (arr!647 (_values!659 (v!13293 (underlying!961 (v!13294 (underlying!962 (cache!829 cache!470))))))) ((as const (Array (_ BitVec 32) List!1945)) mapDefault!1477)))))

(assert (= (and start!11990 res!55753) b!117785))

(assert (= (and b!117785 res!55746) b!117790))

(assert (= (and b!117790 res!55749) b!117792))

(assert (= (and b!117792 res!55752) b!117804))

(assert (= (and b!117804 res!55751) b!117784))

(assert (= (and b!117784 (not res!55748)) b!117800))

(assert (= (and b!117800 (not res!55747)) b!117793))

(assert (= (and b!117793 (not res!55750)) b!117803))

(assert (= (and start!11990 ((_ is ElementMatch!515) r!15532)) b!117789))

(assert (= (and start!11990 ((_ is Concat!899) r!15532)) b!117802))

(assert (= (and start!11990 ((_ is Star!515) r!15532)) b!117798))

(assert (= (and start!11990 ((_ is Union!515) r!15532)) b!117788))

(assert (= (and start!11990 ((_ is Cons!1938) totalInput!1363)) b!117794))

(assert (= (and start!11990 ((_ is Cons!1938) testedSuffix!285)) b!117791))

(assert (= (and start!11990 ((_ is Cons!1938) testedP!367)) b!117795))

(assert (= (and b!117805 condMapEmpty!1477) mapIsEmpty!1477))

(assert (= (and b!117805 (not condMapEmpty!1477)) mapNonEmpty!1477))

(assert (= b!117801 b!117805))

(assert (= b!117796 b!117801))

(assert (= b!117799 b!117796))

(assert (= (and b!117787 ((_ is LongMap!381) (v!13294 (underlying!962 (cache!829 cache!470))))) b!117799))

(assert (= b!117786 b!117787))

(assert (= (and b!117797 ((_ is HashMap!377) (cache!829 cache!470))) b!117786))

(assert (= start!11990 b!117797))

(declare-fun m!105622 () Bool)

(assert (=> mapNonEmpty!1477 m!105622))

(declare-fun m!105624 () Bool)

(assert (=> b!117801 m!105624))

(declare-fun m!105626 () Bool)

(assert (=> b!117801 m!105626))

(declare-fun m!105628 () Bool)

(assert (=> b!117784 m!105628))

(declare-fun m!105630 () Bool)

(assert (=> b!117784 m!105630))

(declare-fun m!105632 () Bool)

(assert (=> b!117784 m!105632))

(declare-fun m!105634 () Bool)

(assert (=> b!117790 m!105634))

(declare-fun m!105636 () Bool)

(assert (=> start!11990 m!105636))

(declare-fun m!105638 () Bool)

(assert (=> start!11990 m!105638))

(declare-fun m!105640 () Bool)

(assert (=> b!117804 m!105640))

(declare-fun m!105642 () Bool)

(assert (=> b!117792 m!105642))

(declare-fun m!105644 () Bool)

(assert (=> b!117803 m!105644))

(declare-fun m!105646 () Bool)

(assert (=> b!117803 m!105646))

(declare-fun m!105648 () Bool)

(assert (=> b!117803 m!105648))

(declare-fun m!105650 () Bool)

(assert (=> b!117785 m!105650))

(declare-fun m!105652 () Bool)

(assert (=> b!117800 m!105652))

(declare-fun m!105654 () Bool)

(assert (=> b!117800 m!105654))

(declare-fun m!105656 () Bool)

(assert (=> b!117800 m!105656))

(check-sat (not b!117801) (not b!117800) (not b!117804) (not mapNonEmpty!1477) tp_is_empty!1085 (not b_next!3755) (not start!11990) b_and!5885 (not b!117794) (not b!117784) (not b!117790) (not b!117785) (not b!117795) (not b!117802) (not b!117791) (not b!117803) (not b!117788) (not b_next!3753) (not b!117792) (not b!117798) (not b!117805) b_and!5883)
(check-sat b_and!5883 b_and!5885 (not b_next!3753) (not b_next!3755))
