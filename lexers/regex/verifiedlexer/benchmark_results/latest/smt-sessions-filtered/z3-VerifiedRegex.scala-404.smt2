; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12026 () Bool)

(assert start!12026)

(declare-fun b!118605 () Bool)

(declare-fun b_free!3785 () Bool)

(declare-fun b_next!3785 () Bool)

(assert (=> b!118605 (= b_free!3785 (not b_next!3785))))

(declare-fun tp!65052 () Bool)

(declare-fun b_and!5915 () Bool)

(assert (=> b!118605 (= tp!65052 b_and!5915)))

(declare-fun b!118604 () Bool)

(declare-fun b_free!3787 () Bool)

(declare-fun b_next!3787 () Bool)

(assert (=> b!118604 (= b_free!3787 (not b_next!3787))))

(declare-fun tp!65053 () Bool)

(declare-fun b_and!5917 () Bool)

(assert (=> b!118604 (= tp!65053 b_and!5917)))

(declare-fun b!118588 () Bool)

(declare-fun e!67617 () Bool)

(declare-fun tp_is_empty!1101 () Bool)

(declare-fun tp!65043 () Bool)

(assert (=> b!118588 (= e!67617 (and tp_is_empty!1101 tp!65043))))

(declare-fun b!118589 () Bool)

(declare-fun e!67618 () Bool)

(declare-fun tp!65045 () Bool)

(assert (=> b!118589 (= e!67618 tp!65045)))

(declare-fun b!118590 () Bool)

(declare-fun e!67623 () Bool)

(declare-fun e!67624 () Bool)

(assert (=> b!118590 (= e!67623 e!67624)))

(declare-fun res!55941 () Bool)

(assert (=> b!118590 (=> (not res!55941) (not e!67624))))

(declare-datatypes ((C!1968 0))(
  ( (C!1969 (val!710 Int)) )
))
(declare-datatypes ((List!1960 0))(
  ( (Nil!1954) (Cons!1954 (h!7351 C!1968) (t!22437 List!1960)) )
))
(declare-fun lt!35126 () List!1960)

(declare-fun totalInput!1363 () List!1960)

(assert (=> b!118590 (= res!55941 (= lt!35126 totalInput!1363))))

(declare-fun testedP!367 () List!1960)

(declare-fun testedSuffix!285 () List!1960)

(declare-fun ++!360 (List!1960 List!1960) List!1960)

(assert (=> b!118590 (= lt!35126 (++!360 testedP!367 testedSuffix!285))))

(declare-fun b!118591 () Bool)

(declare-fun e!67625 () Bool)

(declare-fun tp!65050 () Bool)

(assert (=> b!118591 (= e!67625 (and tp_is_empty!1101 tp!65050))))

(declare-fun b!118592 () Bool)

(declare-fun e!67614 () Bool)

(declare-fun e!67622 () Bool)

(declare-datatypes ((Regex!523 0))(
  ( (ElementMatch!523 (c!26780 C!1968)) (Concat!907 (regOne!1558 Regex!523) (regTwo!1558 Regex!523)) (EmptyExpr!523) (Star!523 (reg!852 Regex!523)) (EmptyLang!523) (Union!523 (regOne!1559 Regex!523) (regTwo!1559 Regex!523)) )
))
(declare-datatypes ((tuple2!2216 0))(
  ( (tuple2!2217 (_1!1318 Regex!523) (_2!1318 C!1968)) )
))
(declare-datatypes ((tuple2!2218 0))(
  ( (tuple2!2219 (_1!1319 tuple2!2216) (_2!1319 Regex!523)) )
))
(declare-datatypes ((List!1961 0))(
  ( (Nil!1955) (Cons!1955 (h!7352 tuple2!2218) (t!22438 List!1961)) )
))
(declare-datatypes ((array!1419 0))(
  ( (array!1420 (arr!662 (Array (_ BitVec 32) (_ BitVec 64))) (size!1788 (_ BitVec 32))) )
))
(declare-datatypes ((array!1421 0))(
  ( (array!1422 (arr!663 (Array (_ BitVec 32) List!1961)) (size!1789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!778 0))(
  ( (LongMapFixedSize!779 (defaultEntry!728 Int) (mask!1318 (_ BitVec 32)) (extraKeys!635 (_ BitVec 32)) (zeroValue!645 List!1961) (minValue!645 List!1961) (_size!911 (_ BitVec 32)) (_keys!680 array!1419) (_values!667 array!1421) (_vacant!450 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1545 0))(
  ( (Cell!1546 (v!13309 LongMapFixedSize!778)) )
))
(declare-datatypes ((MutLongMap!389 0))(
  ( (LongMap!389 (underlying!977 Cell!1545)) (MutLongMapExt!388 (__x!2092 Int)) )
))
(declare-fun lt!35128 () MutLongMap!389)

(get-info :version)

(assert (=> b!118592 (= e!67614 (and e!67622 ((_ is LongMap!389) lt!35128)))))

(declare-datatypes ((Hashable!385 0))(
  ( (HashableExt!384 (__x!2093 Int)) )
))
(declare-datatypes ((Cell!1547 0))(
  ( (Cell!1548 (v!13310 MutLongMap!389)) )
))
(declare-datatypes ((MutableMap!385 0))(
  ( (MutableMapExt!384 (__x!2094 Int)) (HashMap!385 (underlying!978 Cell!1547) (hashF!2261 Hashable!385) (_size!912 (_ BitVec 32)) (defaultValue!534 Int)) )
))
(declare-datatypes ((Cache!206 0))(
  ( (Cache!207 (cache!837 MutableMap!385)) )
))
(declare-fun cache!470 () Cache!206)

(assert (=> b!118592 (= lt!35128 (v!13310 (underlying!978 (cache!837 cache!470))))))

(declare-fun b!118593 () Bool)

(declare-fun tp!65054 () Bool)

(declare-fun tp!65044 () Bool)

(assert (=> b!118593 (= e!67618 (and tp!65054 tp!65044))))

(declare-fun b!118595 () Bool)

(declare-fun e!67621 () Bool)

(declare-fun tp!65048 () Bool)

(declare-fun mapRes!1505 () Bool)

(assert (=> b!118595 (= e!67621 (and tp!65048 mapRes!1505))))

(declare-fun condMapEmpty!1505 () Bool)

(declare-fun mapDefault!1505 () List!1961)

(assert (=> b!118595 (= condMapEmpty!1505 (= (arr!663 (_values!667 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) ((as const (Array (_ BitVec 32) List!1961)) mapDefault!1505)))))

(declare-fun b!118596 () Bool)

(declare-fun e!67615 () Bool)

(assert (=> b!118596 (= e!67622 e!67615)))

(declare-fun b!118597 () Bool)

(declare-fun e!67627 () Bool)

(declare-fun e!67613 () Bool)

(assert (=> b!118597 (= e!67627 e!67613)))

(declare-fun b!118598 () Bool)

(declare-fun tp!65051 () Bool)

(declare-fun tp!65049 () Bool)

(assert (=> b!118598 (= e!67618 (and tp!65051 tp!65049))))

(declare-fun b!118599 () Bool)

(declare-fun res!55940 () Bool)

(assert (=> b!118599 (=> (not res!55940) (not e!67624))))

(declare-fun totalInputSize!643 () Int)

(declare-fun size!1790 (List!1960) Int)

(assert (=> b!118599 (= res!55940 (= totalInputSize!643 (size!1790 totalInput!1363)))))

(declare-fun b!118600 () Bool)

(assert (=> b!118600 (= e!67618 tp_is_empty!1101)))

(declare-fun res!55939 () Bool)

(assert (=> start!12026 (=> (not res!55939) (not e!67623))))

(declare-fun r!15532 () Regex!523)

(declare-fun validRegex!128 (Regex!523) Bool)

(assert (=> start!12026 (= res!55939 (validRegex!128 r!15532))))

(assert (=> start!12026 e!67623))

(assert (=> start!12026 true))

(assert (=> start!12026 e!67618))

(assert (=> start!12026 e!67617))

(declare-fun e!67620 () Bool)

(assert (=> start!12026 e!67620))

(assert (=> start!12026 e!67625))

(declare-fun inv!2476 (Cache!206) Bool)

(assert (=> start!12026 (and (inv!2476 cache!470) e!67627)))

(declare-fun b!118594 () Bool)

(declare-fun e!67616 () Bool)

(assert (=> b!118594 (= e!67624 (not e!67616))))

(declare-fun res!55937 () Bool)

(assert (=> b!118594 (=> res!55937 e!67616)))

(declare-fun isPrefix!107 (List!1960 List!1960) Bool)

(assert (=> b!118594 (= res!55937 (not (isPrefix!107 testedP!367 totalInput!1363)))))

(assert (=> b!118594 (isPrefix!107 testedP!367 lt!35126)))

(declare-datatypes ((Unit!1463 0))(
  ( (Unit!1464) )
))
(declare-fun lt!35127 () Unit!1463)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!53 (List!1960 List!1960) Unit!1463)

(assert (=> b!118594 (= lt!35127 (lemmaConcatTwoListThenFirstIsPrefix!53 testedP!367 testedSuffix!285))))

(declare-fun b!118601 () Bool)

(declare-fun getSuffix!46 (List!1960 List!1960) List!1960)

(assert (=> b!118601 (= e!67616 (= (++!360 testedP!367 (getSuffix!46 totalInput!1363 testedP!367)) totalInput!1363))))

(declare-fun b!118602 () Bool)

(declare-fun res!55938 () Bool)

(assert (=> b!118602 (=> (not res!55938) (not e!67623))))

(declare-fun valid!353 (Cache!206) Bool)

(assert (=> b!118602 (= res!55938 (valid!353 cache!470))))

(declare-fun b!118603 () Bool)

(declare-fun e!67619 () Bool)

(assert (=> b!118603 (= e!67615 e!67619)))

(assert (=> b!118604 (= e!67613 (and e!67614 tp!65053))))

(declare-fun tp!65055 () Bool)

(declare-fun tp!65047 () Bool)

(declare-fun array_inv!477 (array!1419) Bool)

(declare-fun array_inv!478 (array!1421) Bool)

(assert (=> b!118605 (= e!67619 (and tp!65052 tp!65055 tp!65047 (array_inv!477 (_keys!680 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) (array_inv!478 (_values!667 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) e!67621))))

(declare-fun b!118606 () Bool)

(declare-fun tp!65042 () Bool)

(assert (=> b!118606 (= e!67620 (and tp_is_empty!1101 tp!65042))))

(declare-fun mapNonEmpty!1505 () Bool)

(declare-fun tp!65041 () Bool)

(declare-fun tp!65046 () Bool)

(assert (=> mapNonEmpty!1505 (= mapRes!1505 (and tp!65041 tp!65046))))

(declare-fun mapKey!1505 () (_ BitVec 32))

(declare-fun mapRest!1505 () (Array (_ BitVec 32) List!1961))

(declare-fun mapValue!1505 () List!1961)

(assert (=> mapNonEmpty!1505 (= (arr!663 (_values!667 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) (store mapRest!1505 mapKey!1505 mapValue!1505))))

(declare-fun b!118607 () Bool)

(declare-fun res!55936 () Bool)

(assert (=> b!118607 (=> (not res!55936) (not e!67624))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!118607 (= res!55936 (= testedPSize!285 (size!1790 testedP!367)))))

(declare-fun mapIsEmpty!1505 () Bool)

(assert (=> mapIsEmpty!1505 mapRes!1505))

(assert (= (and start!12026 res!55939) b!118602))

(assert (= (and b!118602 res!55938) b!118590))

(assert (= (and b!118590 res!55941) b!118607))

(assert (= (and b!118607 res!55936) b!118599))

(assert (= (and b!118599 res!55940) b!118594))

(assert (= (and b!118594 (not res!55937)) b!118601))

(assert (= (and start!12026 ((_ is ElementMatch!523) r!15532)) b!118600))

(assert (= (and start!12026 ((_ is Concat!907) r!15532)) b!118593))

(assert (= (and start!12026 ((_ is Star!523) r!15532)) b!118589))

(assert (= (and start!12026 ((_ is Union!523) r!15532)) b!118598))

(assert (= (and start!12026 ((_ is Cons!1954) totalInput!1363)) b!118588))

(assert (= (and start!12026 ((_ is Cons!1954) testedSuffix!285)) b!118606))

(assert (= (and start!12026 ((_ is Cons!1954) testedP!367)) b!118591))

(assert (= (and b!118595 condMapEmpty!1505) mapIsEmpty!1505))

(assert (= (and b!118595 (not condMapEmpty!1505)) mapNonEmpty!1505))

(assert (= b!118605 b!118595))

(assert (= b!118603 b!118605))

(assert (= b!118596 b!118603))

(assert (= (and b!118592 ((_ is LongMap!389) (v!13310 (underlying!978 (cache!837 cache!470))))) b!118596))

(assert (= b!118604 b!118592))

(assert (= (and b!118597 ((_ is HashMap!385) (cache!837 cache!470))) b!118604))

(assert (= start!12026 b!118597))

(declare-fun m!105927 () Bool)

(assert (=> b!118602 m!105927))

(declare-fun m!105929 () Bool)

(assert (=> b!118607 m!105929))

(declare-fun m!105931 () Bool)

(assert (=> b!118601 m!105931))

(assert (=> b!118601 m!105931))

(declare-fun m!105933 () Bool)

(assert (=> b!118601 m!105933))

(declare-fun m!105935 () Bool)

(assert (=> b!118605 m!105935))

(declare-fun m!105937 () Bool)

(assert (=> b!118605 m!105937))

(declare-fun m!105939 () Bool)

(assert (=> start!12026 m!105939))

(declare-fun m!105941 () Bool)

(assert (=> start!12026 m!105941))

(declare-fun m!105943 () Bool)

(assert (=> mapNonEmpty!1505 m!105943))

(declare-fun m!105945 () Bool)

(assert (=> b!118599 m!105945))

(declare-fun m!105947 () Bool)

(assert (=> b!118594 m!105947))

(declare-fun m!105949 () Bool)

(assert (=> b!118594 m!105949))

(declare-fun m!105951 () Bool)

(assert (=> b!118594 m!105951))

(declare-fun m!105953 () Bool)

(assert (=> b!118590 m!105953))

(check-sat (not b!118605) tp_is_empty!1101 (not b!118607) (not b!118588) (not b!118589) b_and!5917 (not b!118595) (not b_next!3787) (not b!118590) (not b!118598) (not b!118599) (not mapNonEmpty!1505) (not b!118602) (not start!12026) b_and!5915 (not b!118606) (not b!118591) (not b!118601) (not b!118594) (not b!118593) (not b_next!3785))
(check-sat b_and!5917 b_and!5915 (not b_next!3787) (not b_next!3785))
(get-model)

(declare-fun d!28571 () Bool)

(assert (=> d!28571 (= (array_inv!477 (_keys!680 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) (bvsge (size!1788 (_keys!680 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!118605 d!28571))

(declare-fun d!28573 () Bool)

(assert (=> d!28573 (= (array_inv!478 (_values!667 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) (bvsge (size!1789 (_values!667 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!118605 d!28573))

(declare-fun b!118618 () Bool)

(declare-fun e!67636 () Bool)

(declare-fun tail!226 (List!1960) List!1960)

(assert (=> b!118618 (= e!67636 (isPrefix!107 (tail!226 testedP!367) (tail!226 totalInput!1363)))))

(declare-fun b!118617 () Bool)

(declare-fun res!55952 () Bool)

(assert (=> b!118617 (=> (not res!55952) (not e!67636))))

(declare-fun head!490 (List!1960) C!1968)

(assert (=> b!118617 (= res!55952 (= (head!490 testedP!367) (head!490 totalInput!1363)))))

(declare-fun d!28575 () Bool)

(declare-fun e!67635 () Bool)

(assert (=> d!28575 e!67635))

(declare-fun res!55951 () Bool)

(assert (=> d!28575 (=> res!55951 e!67635)))

(declare-fun lt!35131 () Bool)

(assert (=> d!28575 (= res!55951 (not lt!35131))))

(declare-fun e!67634 () Bool)

(assert (=> d!28575 (= lt!35131 e!67634)))

(declare-fun res!55953 () Bool)

(assert (=> d!28575 (=> res!55953 e!67634)))

(assert (=> d!28575 (= res!55953 ((_ is Nil!1954) testedP!367))))

(assert (=> d!28575 (= (isPrefix!107 testedP!367 totalInput!1363) lt!35131)))

(declare-fun b!118616 () Bool)

(assert (=> b!118616 (= e!67634 e!67636)))

(declare-fun res!55950 () Bool)

(assert (=> b!118616 (=> (not res!55950) (not e!67636))))

(assert (=> b!118616 (= res!55950 (not ((_ is Nil!1954) totalInput!1363)))))

(declare-fun b!118619 () Bool)

(assert (=> b!118619 (= e!67635 (>= (size!1790 totalInput!1363) (size!1790 testedP!367)))))

(assert (= (and d!28575 (not res!55953)) b!118616))

(assert (= (and b!118616 res!55950) b!118617))

(assert (= (and b!118617 res!55952) b!118618))

(assert (= (and d!28575 (not res!55951)) b!118619))

(declare-fun m!105955 () Bool)

(assert (=> b!118618 m!105955))

(declare-fun m!105957 () Bool)

(assert (=> b!118618 m!105957))

(assert (=> b!118618 m!105955))

(assert (=> b!118618 m!105957))

(declare-fun m!105959 () Bool)

(assert (=> b!118618 m!105959))

(declare-fun m!105961 () Bool)

(assert (=> b!118617 m!105961))

(declare-fun m!105963 () Bool)

(assert (=> b!118617 m!105963))

(assert (=> b!118619 m!105945))

(assert (=> b!118619 m!105929))

(assert (=> b!118594 d!28575))

(declare-fun b!118622 () Bool)

(declare-fun e!67639 () Bool)

(assert (=> b!118622 (= e!67639 (isPrefix!107 (tail!226 testedP!367) (tail!226 lt!35126)))))

(declare-fun b!118621 () Bool)

(declare-fun res!55956 () Bool)

(assert (=> b!118621 (=> (not res!55956) (not e!67639))))

(assert (=> b!118621 (= res!55956 (= (head!490 testedP!367) (head!490 lt!35126)))))

(declare-fun d!28577 () Bool)

(declare-fun e!67638 () Bool)

(assert (=> d!28577 e!67638))

(declare-fun res!55955 () Bool)

(assert (=> d!28577 (=> res!55955 e!67638)))

(declare-fun lt!35132 () Bool)

(assert (=> d!28577 (= res!55955 (not lt!35132))))

(declare-fun e!67637 () Bool)

(assert (=> d!28577 (= lt!35132 e!67637)))

(declare-fun res!55957 () Bool)

(assert (=> d!28577 (=> res!55957 e!67637)))

(assert (=> d!28577 (= res!55957 ((_ is Nil!1954) testedP!367))))

(assert (=> d!28577 (= (isPrefix!107 testedP!367 lt!35126) lt!35132)))

(declare-fun b!118620 () Bool)

(assert (=> b!118620 (= e!67637 e!67639)))

(declare-fun res!55954 () Bool)

(assert (=> b!118620 (=> (not res!55954) (not e!67639))))

(assert (=> b!118620 (= res!55954 (not ((_ is Nil!1954) lt!35126)))))

(declare-fun b!118623 () Bool)

(assert (=> b!118623 (= e!67638 (>= (size!1790 lt!35126) (size!1790 testedP!367)))))

(assert (= (and d!28577 (not res!55957)) b!118620))

(assert (= (and b!118620 res!55954) b!118621))

(assert (= (and b!118621 res!55956) b!118622))

(assert (= (and d!28577 (not res!55955)) b!118623))

(assert (=> b!118622 m!105955))

(declare-fun m!105965 () Bool)

(assert (=> b!118622 m!105965))

(assert (=> b!118622 m!105955))

(assert (=> b!118622 m!105965))

(declare-fun m!105967 () Bool)

(assert (=> b!118622 m!105967))

(assert (=> b!118621 m!105961))

(declare-fun m!105969 () Bool)

(assert (=> b!118621 m!105969))

(declare-fun m!105971 () Bool)

(assert (=> b!118623 m!105971))

(assert (=> b!118623 m!105929))

(assert (=> b!118594 d!28577))

(declare-fun d!28579 () Bool)

(assert (=> d!28579 (isPrefix!107 testedP!367 (++!360 testedP!367 testedSuffix!285))))

(declare-fun lt!35135 () Unit!1463)

(declare-fun choose!1549 (List!1960 List!1960) Unit!1463)

(assert (=> d!28579 (= lt!35135 (choose!1549 testedP!367 testedSuffix!285))))

(assert (=> d!28579 (= (lemmaConcatTwoListThenFirstIsPrefix!53 testedP!367 testedSuffix!285) lt!35135)))

(declare-fun bs!11893 () Bool)

(assert (= bs!11893 d!28579))

(assert (=> bs!11893 m!105953))

(assert (=> bs!11893 m!105953))

(declare-fun m!105973 () Bool)

(assert (=> bs!11893 m!105973))

(declare-fun m!105975 () Bool)

(assert (=> bs!11893 m!105975))

(assert (=> b!118594 d!28579))

(declare-fun d!28581 () Bool)

(declare-fun lt!35138 () Int)

(assert (=> d!28581 (>= lt!35138 0)))

(declare-fun e!67642 () Int)

(assert (=> d!28581 (= lt!35138 e!67642)))

(declare-fun c!26783 () Bool)

(assert (=> d!28581 (= c!26783 ((_ is Nil!1954) totalInput!1363))))

(assert (=> d!28581 (= (size!1790 totalInput!1363) lt!35138)))

(declare-fun b!118628 () Bool)

(assert (=> b!118628 (= e!67642 0)))

(declare-fun b!118629 () Bool)

(assert (=> b!118629 (= e!67642 (+ 1 (size!1790 (t!22437 totalInput!1363))))))

(assert (= (and d!28581 c!26783) b!118628))

(assert (= (and d!28581 (not c!26783)) b!118629))

(declare-fun m!105977 () Bool)

(assert (=> b!118629 m!105977))

(assert (=> b!118599 d!28581))

(declare-fun b!118648 () Bool)

(declare-fun res!55969 () Bool)

(declare-fun e!67658 () Bool)

(assert (=> b!118648 (=> res!55969 e!67658)))

(assert (=> b!118648 (= res!55969 (not ((_ is Concat!907) r!15532)))))

(declare-fun e!67662 () Bool)

(assert (=> b!118648 (= e!67662 e!67658)))

(declare-fun b!118649 () Bool)

(declare-fun res!55972 () Bool)

(declare-fun e!67660 () Bool)

(assert (=> b!118649 (=> (not res!55972) (not e!67660))))

(declare-fun call!4969 () Bool)

(assert (=> b!118649 (= res!55972 call!4969)))

(assert (=> b!118649 (= e!67662 e!67660)))

(declare-fun b!118650 () Bool)

(declare-fun e!67659 () Bool)

(assert (=> b!118650 (= e!67658 e!67659)))

(declare-fun res!55971 () Bool)

(assert (=> b!118650 (=> (not res!55971) (not e!67659))))

(declare-fun call!4971 () Bool)

(assert (=> b!118650 (= res!55971 call!4971)))

(declare-fun bm!4965 () Bool)

(declare-fun c!26788 () Bool)

(assert (=> bm!4965 (= call!4969 (validRegex!128 (ite c!26788 (regOne!1559 r!15532) (regTwo!1558 r!15532))))))

(declare-fun call!4970 () Bool)

(declare-fun c!26789 () Bool)

(declare-fun bm!4966 () Bool)

(assert (=> bm!4966 (= call!4970 (validRegex!128 (ite c!26789 (reg!852 r!15532) (ite c!26788 (regTwo!1559 r!15532) (regOne!1558 r!15532)))))))

(declare-fun b!118651 () Bool)

(declare-fun e!67661 () Bool)

(declare-fun e!67657 () Bool)

(assert (=> b!118651 (= e!67661 e!67657)))

(declare-fun res!55970 () Bool)

(declare-fun nullable!76 (Regex!523) Bool)

(assert (=> b!118651 (= res!55970 (not (nullable!76 (reg!852 r!15532))))))

(assert (=> b!118651 (=> (not res!55970) (not e!67657))))

(declare-fun b!118652 () Bool)

(assert (=> b!118652 (= e!67659 call!4969)))

(declare-fun d!28583 () Bool)

(declare-fun res!55968 () Bool)

(declare-fun e!67663 () Bool)

(assert (=> d!28583 (=> res!55968 e!67663)))

(assert (=> d!28583 (= res!55968 ((_ is ElementMatch!523) r!15532))))

(assert (=> d!28583 (= (validRegex!128 r!15532) e!67663)))

(declare-fun bm!4964 () Bool)

(assert (=> bm!4964 (= call!4971 call!4970)))

(declare-fun b!118653 () Bool)

(assert (=> b!118653 (= e!67661 e!67662)))

(assert (=> b!118653 (= c!26788 ((_ is Union!523) r!15532))))

(declare-fun b!118654 () Bool)

(assert (=> b!118654 (= e!67660 call!4971)))

(declare-fun b!118655 () Bool)

(assert (=> b!118655 (= e!67657 call!4970)))

(declare-fun b!118656 () Bool)

(assert (=> b!118656 (= e!67663 e!67661)))

(assert (=> b!118656 (= c!26789 ((_ is Star!523) r!15532))))

(assert (= (and d!28583 (not res!55968)) b!118656))

(assert (= (and b!118656 c!26789) b!118651))

(assert (= (and b!118656 (not c!26789)) b!118653))

(assert (= (and b!118651 res!55970) b!118655))

(assert (= (and b!118653 c!26788) b!118649))

(assert (= (and b!118653 (not c!26788)) b!118648))

(assert (= (and b!118649 res!55972) b!118654))

(assert (= (and b!118648 (not res!55969)) b!118650))

(assert (= (and b!118650 res!55971) b!118652))

(assert (= (or b!118654 b!118650) bm!4964))

(assert (= (or b!118649 b!118652) bm!4965))

(assert (= (or b!118655 bm!4964) bm!4966))

(declare-fun m!105979 () Bool)

(assert (=> bm!4965 m!105979))

(declare-fun m!105981 () Bool)

(assert (=> bm!4966 m!105981))

(declare-fun m!105983 () Bool)

(assert (=> b!118651 m!105983))

(assert (=> start!12026 d!28583))

(declare-fun d!28585 () Bool)

(declare-fun res!55975 () Bool)

(declare-fun e!67666 () Bool)

(assert (=> d!28585 (=> (not res!55975) (not e!67666))))

(assert (=> d!28585 (= res!55975 ((_ is HashMap!385) (cache!837 cache!470)))))

(assert (=> d!28585 (= (inv!2476 cache!470) e!67666)))

(declare-fun b!118659 () Bool)

(declare-fun validCacheMap!21 (MutableMap!385) Bool)

(assert (=> b!118659 (= e!67666 (validCacheMap!21 (cache!837 cache!470)))))

(assert (= (and d!28585 res!55975) b!118659))

(declare-fun m!105985 () Bool)

(assert (=> b!118659 m!105985))

(assert (=> start!12026 d!28585))

(declare-fun d!28587 () Bool)

(declare-fun lt!35139 () Int)

(assert (=> d!28587 (>= lt!35139 0)))

(declare-fun e!67667 () Int)

(assert (=> d!28587 (= lt!35139 e!67667)))

(declare-fun c!26790 () Bool)

(assert (=> d!28587 (= c!26790 ((_ is Nil!1954) testedP!367))))

(assert (=> d!28587 (= (size!1790 testedP!367) lt!35139)))

(declare-fun b!118660 () Bool)

(assert (=> b!118660 (= e!67667 0)))

(declare-fun b!118661 () Bool)

(assert (=> b!118661 (= e!67667 (+ 1 (size!1790 (t!22437 testedP!367))))))

(assert (= (and d!28587 c!26790) b!118660))

(assert (= (and d!28587 (not c!26790)) b!118661))

(declare-fun m!105987 () Bool)

(assert (=> b!118661 m!105987))

(assert (=> b!118607 d!28587))

(declare-fun d!28589 () Bool)

(assert (=> d!28589 (= (valid!353 cache!470) (validCacheMap!21 (cache!837 cache!470)))))

(declare-fun bs!11894 () Bool)

(assert (= bs!11894 d!28589))

(assert (=> bs!11894 m!105985))

(assert (=> b!118602 d!28589))

(declare-fun b!118670 () Bool)

(declare-fun e!67673 () List!1960)

(assert (=> b!118670 (= e!67673 (getSuffix!46 totalInput!1363 testedP!367))))

(declare-fun b!118672 () Bool)

(declare-fun res!55980 () Bool)

(declare-fun e!67672 () Bool)

(assert (=> b!118672 (=> (not res!55980) (not e!67672))))

(declare-fun lt!35142 () List!1960)

(assert (=> b!118672 (= res!55980 (= (size!1790 lt!35142) (+ (size!1790 testedP!367) (size!1790 (getSuffix!46 totalInput!1363 testedP!367)))))))

(declare-fun b!118671 () Bool)

(assert (=> b!118671 (= e!67673 (Cons!1954 (h!7351 testedP!367) (++!360 (t!22437 testedP!367) (getSuffix!46 totalInput!1363 testedP!367))))))

(declare-fun d!28591 () Bool)

(assert (=> d!28591 e!67672))

(declare-fun res!55981 () Bool)

(assert (=> d!28591 (=> (not res!55981) (not e!67672))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!219 (List!1960) (InoxSet C!1968))

(assert (=> d!28591 (= res!55981 (= (content!219 lt!35142) ((_ map or) (content!219 testedP!367) (content!219 (getSuffix!46 totalInput!1363 testedP!367)))))))

(assert (=> d!28591 (= lt!35142 e!67673)))

(declare-fun c!26793 () Bool)

(assert (=> d!28591 (= c!26793 ((_ is Nil!1954) testedP!367))))

(assert (=> d!28591 (= (++!360 testedP!367 (getSuffix!46 totalInput!1363 testedP!367)) lt!35142)))

(declare-fun b!118673 () Bool)

(assert (=> b!118673 (= e!67672 (or (not (= (getSuffix!46 totalInput!1363 testedP!367) Nil!1954)) (= lt!35142 testedP!367)))))

(assert (= (and d!28591 c!26793) b!118670))

(assert (= (and d!28591 (not c!26793)) b!118671))

(assert (= (and d!28591 res!55981) b!118672))

(assert (= (and b!118672 res!55980) b!118673))

(declare-fun m!105989 () Bool)

(assert (=> b!118672 m!105989))

(assert (=> b!118672 m!105929))

(assert (=> b!118672 m!105931))

(declare-fun m!105991 () Bool)

(assert (=> b!118672 m!105991))

(assert (=> b!118671 m!105931))

(declare-fun m!105993 () Bool)

(assert (=> b!118671 m!105993))

(declare-fun m!105995 () Bool)

(assert (=> d!28591 m!105995))

(declare-fun m!105997 () Bool)

(assert (=> d!28591 m!105997))

(assert (=> d!28591 m!105931))

(declare-fun m!105999 () Bool)

(assert (=> d!28591 m!105999))

(assert (=> b!118601 d!28591))

(declare-fun d!28593 () Bool)

(declare-fun lt!35145 () List!1960)

(assert (=> d!28593 (= (++!360 testedP!367 lt!35145) totalInput!1363)))

(declare-fun e!67676 () List!1960)

(assert (=> d!28593 (= lt!35145 e!67676)))

(declare-fun c!26796 () Bool)

(assert (=> d!28593 (= c!26796 ((_ is Cons!1954) testedP!367))))

(assert (=> d!28593 (>= (size!1790 totalInput!1363) (size!1790 testedP!367))))

(assert (=> d!28593 (= (getSuffix!46 totalInput!1363 testedP!367) lt!35145)))

(declare-fun b!118678 () Bool)

(assert (=> b!118678 (= e!67676 (getSuffix!46 (tail!226 totalInput!1363) (t!22437 testedP!367)))))

(declare-fun b!118679 () Bool)

(assert (=> b!118679 (= e!67676 totalInput!1363)))

(assert (= (and d!28593 c!26796) b!118678))

(assert (= (and d!28593 (not c!26796)) b!118679))

(declare-fun m!106001 () Bool)

(assert (=> d!28593 m!106001))

(assert (=> d!28593 m!105945))

(assert (=> d!28593 m!105929))

(assert (=> b!118678 m!105957))

(assert (=> b!118678 m!105957))

(declare-fun m!106003 () Bool)

(assert (=> b!118678 m!106003))

(assert (=> b!118601 d!28593))

(declare-fun b!118680 () Bool)

(declare-fun e!67678 () List!1960)

(assert (=> b!118680 (= e!67678 testedSuffix!285)))

(declare-fun b!118682 () Bool)

(declare-fun res!55982 () Bool)

(declare-fun e!67677 () Bool)

(assert (=> b!118682 (=> (not res!55982) (not e!67677))))

(declare-fun lt!35146 () List!1960)

(assert (=> b!118682 (= res!55982 (= (size!1790 lt!35146) (+ (size!1790 testedP!367) (size!1790 testedSuffix!285))))))

(declare-fun b!118681 () Bool)

(assert (=> b!118681 (= e!67678 (Cons!1954 (h!7351 testedP!367) (++!360 (t!22437 testedP!367) testedSuffix!285)))))

(declare-fun d!28595 () Bool)

(assert (=> d!28595 e!67677))

(declare-fun res!55983 () Bool)

(assert (=> d!28595 (=> (not res!55983) (not e!67677))))

(assert (=> d!28595 (= res!55983 (= (content!219 lt!35146) ((_ map or) (content!219 testedP!367) (content!219 testedSuffix!285))))))

(assert (=> d!28595 (= lt!35146 e!67678)))

(declare-fun c!26797 () Bool)

(assert (=> d!28595 (= c!26797 ((_ is Nil!1954) testedP!367))))

(assert (=> d!28595 (= (++!360 testedP!367 testedSuffix!285) lt!35146)))

(declare-fun b!118683 () Bool)

(assert (=> b!118683 (= e!67677 (or (not (= testedSuffix!285 Nil!1954)) (= lt!35146 testedP!367)))))

(assert (= (and d!28595 c!26797) b!118680))

(assert (= (and d!28595 (not c!26797)) b!118681))

(assert (= (and d!28595 res!55983) b!118682))

(assert (= (and b!118682 res!55982) b!118683))

(declare-fun m!106005 () Bool)

(assert (=> b!118682 m!106005))

(assert (=> b!118682 m!105929))

(declare-fun m!106007 () Bool)

(assert (=> b!118682 m!106007))

(declare-fun m!106009 () Bool)

(assert (=> b!118681 m!106009))

(declare-fun m!106011 () Bool)

(assert (=> d!28595 m!106011))

(assert (=> d!28595 m!105997))

(declare-fun m!106013 () Bool)

(assert (=> d!28595 m!106013))

(assert (=> b!118590 d!28595))

(declare-fun b!118688 () Bool)

(declare-fun tp!65064 () Bool)

(declare-fun e!67681 () Bool)

(declare-fun tp!65063 () Bool)

(declare-fun tp!65062 () Bool)

(assert (=> b!118688 (= e!67681 (and tp!65062 tp_is_empty!1101 tp!65063 tp!65064))))

(assert (=> b!118595 (= tp!65048 e!67681)))

(assert (= (and b!118595 ((_ is Cons!1955) mapDefault!1505)) b!118688))

(declare-fun tp!65067 () Bool)

(declare-fun e!67682 () Bool)

(declare-fun b!118689 () Bool)

(declare-fun tp!65065 () Bool)

(declare-fun tp!65066 () Bool)

(assert (=> b!118689 (= e!67682 (and tp!65065 tp_is_empty!1101 tp!65066 tp!65067))))

(assert (=> b!118605 (= tp!65055 e!67682)))

(assert (= (and b!118605 ((_ is Cons!1955) (zeroValue!645 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470)))))))) b!118689))

(declare-fun tp!65068 () Bool)

(declare-fun tp!65070 () Bool)

(declare-fun tp!65069 () Bool)

(declare-fun e!67683 () Bool)

(declare-fun b!118690 () Bool)

(assert (=> b!118690 (= e!67683 (and tp!65068 tp_is_empty!1101 tp!65069 tp!65070))))

(assert (=> b!118605 (= tp!65047 e!67683)))

(assert (= (and b!118605 ((_ is Cons!1955) (minValue!645 (v!13309 (underlying!977 (v!13310 (underlying!978 (cache!837 cache!470)))))))) b!118690))

(declare-fun b!118704 () Bool)

(declare-fun e!67686 () Bool)

(declare-fun tp!65081 () Bool)

(declare-fun tp!65085 () Bool)

(assert (=> b!118704 (= e!67686 (and tp!65081 tp!65085))))

(assert (=> b!118589 (= tp!65045 e!67686)))

(declare-fun b!118701 () Bool)

(assert (=> b!118701 (= e!67686 tp_is_empty!1101)))

(declare-fun b!118702 () Bool)

(declare-fun tp!65084 () Bool)

(declare-fun tp!65083 () Bool)

(assert (=> b!118702 (= e!67686 (and tp!65084 tp!65083))))

(declare-fun b!118703 () Bool)

(declare-fun tp!65082 () Bool)

(assert (=> b!118703 (= e!67686 tp!65082)))

(assert (= (and b!118589 ((_ is ElementMatch!523) (reg!852 r!15532))) b!118701))

(assert (= (and b!118589 ((_ is Concat!907) (reg!852 r!15532))) b!118702))

(assert (= (and b!118589 ((_ is Star!523) (reg!852 r!15532))) b!118703))

(assert (= (and b!118589 ((_ is Union!523) (reg!852 r!15532))) b!118704))

(declare-fun b!118709 () Bool)

(declare-fun e!67689 () Bool)

(declare-fun tp!65088 () Bool)

(assert (=> b!118709 (= e!67689 (and tp_is_empty!1101 tp!65088))))

(assert (=> b!118588 (= tp!65043 e!67689)))

(assert (= (and b!118588 ((_ is Cons!1954) (t!22437 totalInput!1363))) b!118709))

(declare-fun b!118713 () Bool)

(declare-fun e!67690 () Bool)

(declare-fun tp!65089 () Bool)

(declare-fun tp!65093 () Bool)

(assert (=> b!118713 (= e!67690 (and tp!65089 tp!65093))))

(assert (=> b!118593 (= tp!65054 e!67690)))

(declare-fun b!118710 () Bool)

(assert (=> b!118710 (= e!67690 tp_is_empty!1101)))

(declare-fun b!118711 () Bool)

(declare-fun tp!65092 () Bool)

(declare-fun tp!65091 () Bool)

(assert (=> b!118711 (= e!67690 (and tp!65092 tp!65091))))

(declare-fun b!118712 () Bool)

(declare-fun tp!65090 () Bool)

(assert (=> b!118712 (= e!67690 tp!65090)))

(assert (= (and b!118593 ((_ is ElementMatch!523) (regOne!1558 r!15532))) b!118710))

(assert (= (and b!118593 ((_ is Concat!907) (regOne!1558 r!15532))) b!118711))

(assert (= (and b!118593 ((_ is Star!523) (regOne!1558 r!15532))) b!118712))

(assert (= (and b!118593 ((_ is Union!523) (regOne!1558 r!15532))) b!118713))

(declare-fun b!118717 () Bool)

(declare-fun e!67691 () Bool)

(declare-fun tp!65094 () Bool)

(declare-fun tp!65098 () Bool)

(assert (=> b!118717 (= e!67691 (and tp!65094 tp!65098))))

(assert (=> b!118593 (= tp!65044 e!67691)))

(declare-fun b!118714 () Bool)

(assert (=> b!118714 (= e!67691 tp_is_empty!1101)))

(declare-fun b!118715 () Bool)

(declare-fun tp!65097 () Bool)

(declare-fun tp!65096 () Bool)

(assert (=> b!118715 (= e!67691 (and tp!65097 tp!65096))))

(declare-fun b!118716 () Bool)

(declare-fun tp!65095 () Bool)

(assert (=> b!118716 (= e!67691 tp!65095)))

(assert (= (and b!118593 ((_ is ElementMatch!523) (regTwo!1558 r!15532))) b!118714))

(assert (= (and b!118593 ((_ is Concat!907) (regTwo!1558 r!15532))) b!118715))

(assert (= (and b!118593 ((_ is Star!523) (regTwo!1558 r!15532))) b!118716))

(assert (= (and b!118593 ((_ is Union!523) (regTwo!1558 r!15532))) b!118717))

(declare-fun b!118721 () Bool)

(declare-fun e!67692 () Bool)

(declare-fun tp!65099 () Bool)

(declare-fun tp!65103 () Bool)

(assert (=> b!118721 (= e!67692 (and tp!65099 tp!65103))))

(assert (=> b!118598 (= tp!65051 e!67692)))

(declare-fun b!118718 () Bool)

(assert (=> b!118718 (= e!67692 tp_is_empty!1101)))

(declare-fun b!118719 () Bool)

(declare-fun tp!65102 () Bool)

(declare-fun tp!65101 () Bool)

(assert (=> b!118719 (= e!67692 (and tp!65102 tp!65101))))

(declare-fun b!118720 () Bool)

(declare-fun tp!65100 () Bool)

(assert (=> b!118720 (= e!67692 tp!65100)))

(assert (= (and b!118598 ((_ is ElementMatch!523) (regOne!1559 r!15532))) b!118718))

(assert (= (and b!118598 ((_ is Concat!907) (regOne!1559 r!15532))) b!118719))

(assert (= (and b!118598 ((_ is Star!523) (regOne!1559 r!15532))) b!118720))

(assert (= (and b!118598 ((_ is Union!523) (regOne!1559 r!15532))) b!118721))

(declare-fun b!118725 () Bool)

(declare-fun e!67693 () Bool)

(declare-fun tp!65104 () Bool)

(declare-fun tp!65108 () Bool)

(assert (=> b!118725 (= e!67693 (and tp!65104 tp!65108))))

(assert (=> b!118598 (= tp!65049 e!67693)))

(declare-fun b!118722 () Bool)

(assert (=> b!118722 (= e!67693 tp_is_empty!1101)))

(declare-fun b!118723 () Bool)

(declare-fun tp!65107 () Bool)

(declare-fun tp!65106 () Bool)

(assert (=> b!118723 (= e!67693 (and tp!65107 tp!65106))))

(declare-fun b!118724 () Bool)

(declare-fun tp!65105 () Bool)

(assert (=> b!118724 (= e!67693 tp!65105)))

(assert (= (and b!118598 ((_ is ElementMatch!523) (regTwo!1559 r!15532))) b!118722))

(assert (= (and b!118598 ((_ is Concat!907) (regTwo!1559 r!15532))) b!118723))

(assert (= (and b!118598 ((_ is Star!523) (regTwo!1559 r!15532))) b!118724))

(assert (= (and b!118598 ((_ is Union!523) (regTwo!1559 r!15532))) b!118725))

(declare-fun condMapEmpty!1508 () Bool)

(declare-fun mapDefault!1508 () List!1961)

(assert (=> mapNonEmpty!1505 (= condMapEmpty!1508 (= mapRest!1505 ((as const (Array (_ BitVec 32) List!1961)) mapDefault!1508)))))

(declare-fun e!67698 () Bool)

(declare-fun mapRes!1508 () Bool)

(assert (=> mapNonEmpty!1505 (= tp!65041 (and e!67698 mapRes!1508))))

(declare-fun b!118733 () Bool)

(declare-fun tp!65126 () Bool)

(declare-fun tp!65124 () Bool)

(declare-fun tp!65128 () Bool)

(assert (=> b!118733 (= e!67698 (and tp!65128 tp_is_empty!1101 tp!65126 tp!65124))))

(declare-fun mapNonEmpty!1508 () Bool)

(declare-fun tp!65123 () Bool)

(declare-fun e!67699 () Bool)

(assert (=> mapNonEmpty!1508 (= mapRes!1508 (and tp!65123 e!67699))))

(declare-fun mapRest!1508 () (Array (_ BitVec 32) List!1961))

(declare-fun mapKey!1508 () (_ BitVec 32))

(declare-fun mapValue!1508 () List!1961)

(assert (=> mapNonEmpty!1508 (= mapRest!1505 (store mapRest!1508 mapKey!1508 mapValue!1508))))

(declare-fun mapIsEmpty!1508 () Bool)

(assert (=> mapIsEmpty!1508 mapRes!1508))

(declare-fun tp!65125 () Bool)

(declare-fun b!118732 () Bool)

(declare-fun tp!65129 () Bool)

(declare-fun tp!65127 () Bool)

(assert (=> b!118732 (= e!67699 (and tp!65125 tp_is_empty!1101 tp!65127 tp!65129))))

(assert (= (and mapNonEmpty!1505 condMapEmpty!1508) mapIsEmpty!1508))

(assert (= (and mapNonEmpty!1505 (not condMapEmpty!1508)) mapNonEmpty!1508))

(assert (= (and mapNonEmpty!1508 ((_ is Cons!1955) mapValue!1508)) b!118732))

(assert (= (and mapNonEmpty!1505 ((_ is Cons!1955) mapDefault!1508)) b!118733))

(declare-fun m!106015 () Bool)

(assert (=> mapNonEmpty!1508 m!106015))

(declare-fun tp!65132 () Bool)

(declare-fun tp!65130 () Bool)

(declare-fun b!118734 () Bool)

(declare-fun tp!65131 () Bool)

(declare-fun e!67700 () Bool)

(assert (=> b!118734 (= e!67700 (and tp!65130 tp_is_empty!1101 tp!65131 tp!65132))))

(assert (=> mapNonEmpty!1505 (= tp!65046 e!67700)))

(assert (= (and mapNonEmpty!1505 ((_ is Cons!1955) mapValue!1505)) b!118734))

(declare-fun b!118735 () Bool)

(declare-fun e!67701 () Bool)

(declare-fun tp!65133 () Bool)

(assert (=> b!118735 (= e!67701 (and tp_is_empty!1101 tp!65133))))

(assert (=> b!118591 (= tp!65050 e!67701)))

(assert (= (and b!118591 ((_ is Cons!1954) (t!22437 testedP!367))) b!118735))

(declare-fun b!118736 () Bool)

(declare-fun e!67702 () Bool)

(declare-fun tp!65134 () Bool)

(assert (=> b!118736 (= e!67702 (and tp_is_empty!1101 tp!65134))))

(assert (=> b!118606 (= tp!65042 e!67702)))

(assert (= (and b!118606 ((_ is Cons!1954) (t!22437 testedSuffix!285))) b!118736))

(check-sat (not b!118672) (not b!118629) (not b!118719) (not b!118725) (not b!118717) (not b!118736) (not b!118703) (not b!118681) (not mapNonEmpty!1508) (not b!118690) (not b!118617) (not b!118621) (not b!118689) (not b!118682) (not b!118704) (not d!28589) (not b!118713) (not b!118715) (not b!118733) (not d!28595) (not d!28591) (not b!118678) tp_is_empty!1101 (not b!118716) (not b!118723) (not b!118619) (not b!118702) (not d!28593) b_and!5917 (not b!118622) (not b!118709) (not b!118671) (not b_next!3787) (not b!118618) (not b!118732) (not b!118712) b_and!5915 (not b!118688) (not b!118711) (not b!118721) (not b!118720) (not b_next!3785) (not b!118735) (not b!118659) (not bm!4966) (not b!118724) (not b!118623) (not bm!4965) (not d!28579) (not b!118734) (not b!118661) (not b!118651))
(check-sat b_and!5917 b_and!5915 (not b_next!3787) (not b_next!3785))
