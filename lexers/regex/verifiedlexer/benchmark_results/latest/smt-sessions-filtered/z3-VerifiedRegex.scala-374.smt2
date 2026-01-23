; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11614 () Bool)

(assert start!11614)

(declare-fun b!112961 () Bool)

(declare-fun b_free!3545 () Bool)

(declare-fun b_next!3545 () Bool)

(assert (=> b!112961 (= b_free!3545 (not b_next!3545))))

(declare-fun tp!61418 () Bool)

(declare-fun b_and!5675 () Bool)

(assert (=> b!112961 (= tp!61418 b_and!5675)))

(declare-fun b!112979 () Bool)

(declare-fun b_free!3547 () Bool)

(declare-fun b_next!3547 () Bool)

(assert (=> b!112979 (= b_free!3547 (not b_next!3547))))

(declare-fun tp!61420 () Bool)

(declare-fun b_and!5677 () Bool)

(assert (=> b!112979 (= tp!61420 b_and!5677)))

(declare-fun b!112960 () Bool)

(declare-fun e!63550 () Bool)

(declare-fun e!63547 () Bool)

(assert (=> b!112960 (= e!63550 e!63547)))

(declare-fun e!63546 () Bool)

(declare-fun tp!61430 () Bool)

(declare-fun tp!61429 () Bool)

(declare-fun e!63549 () Bool)

(declare-datatypes ((C!1848 0))(
  ( (C!1849 (val!650 Int)) )
))
(declare-datatypes ((Regex!463 0))(
  ( (ElementMatch!463 (c!26431 C!1848)) (Concat!847 (regOne!1438 Regex!463) (regTwo!1438 Regex!463)) (EmptyExpr!463) (Star!463 (reg!792 Regex!463)) (EmptyLang!463) (Union!463 (regOne!1439 Regex!463) (regTwo!1439 Regex!463)) )
))
(declare-datatypes ((Hashable!325 0))(
  ( (HashableExt!324 (__x!1912 Int)) )
))
(declare-datatypes ((tuple2!1972 0))(
  ( (tuple2!1973 (_1!1196 Regex!463) (_2!1196 C!1848)) )
))
(declare-datatypes ((tuple2!1974 0))(
  ( (tuple2!1975 (_1!1197 tuple2!1972) (_2!1197 Regex!463)) )
))
(declare-datatypes ((List!1842 0))(
  ( (Nil!1836) (Cons!1836 (h!7233 tuple2!1974) (t!22319 List!1842)) )
))
(declare-datatypes ((array!1161 0))(
  ( (array!1162 (arr!542 (Array (_ BitVec 32) (_ BitVec 64))) (size!1614 (_ BitVec 32))) )
))
(declare-datatypes ((array!1163 0))(
  ( (array!1164 (arr!543 (Array (_ BitVec 32) List!1842)) (size!1615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!658 0))(
  ( (LongMapFixedSize!659 (defaultEntry!668 Int) (mask!1228 (_ BitVec 32)) (extraKeys!575 (_ BitVec 32)) (zeroValue!585 List!1842) (minValue!585 List!1842) (_size!791 (_ BitVec 32)) (_keys!620 array!1161) (_values!607 array!1163) (_vacant!390 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1305 0))(
  ( (Cell!1306 (v!13189 LongMapFixedSize!658)) )
))
(declare-datatypes ((MutLongMap!329 0))(
  ( (LongMap!329 (underlying!857 Cell!1305)) (MutLongMapExt!328 (__x!1913 Int)) )
))
(declare-datatypes ((Cell!1307 0))(
  ( (Cell!1308 (v!13190 MutLongMap!329)) )
))
(declare-datatypes ((MutableMap!325 0))(
  ( (MutableMapExt!324 (__x!1914 Int)) (HashMap!325 (underlying!858 Cell!1307) (hashF!2201 Hashable!325) (_size!792 (_ BitVec 32)) (defaultValue!474 Int)) )
))
(declare-datatypes ((Cache!86 0))(
  ( (Cache!87 (cache!777 MutableMap!325)) )
))
(declare-fun cache!470 () Cache!86)

(declare-fun array_inv!379 (array!1161) Bool)

(declare-fun array_inv!380 (array!1163) Bool)

(assert (=> b!112961 (= e!63546 (and tp!61418 tp!61430 tp!61429 (array_inv!379 (_keys!620 (v!13189 (underlying!857 (v!13190 (underlying!858 (cache!777 cache!470))))))) (array_inv!380 (_values!607 (v!13189 (underlying!857 (v!13190 (underlying!858 (cache!777 cache!470))))))) e!63549))))

(declare-fun b!112962 () Bool)

(declare-fun e!63551 () Bool)

(declare-fun tp_is_empty!981 () Bool)

(declare-fun tp!61424 () Bool)

(assert (=> b!112962 (= e!63551 (and tp_is_empty!981 tp!61424))))

(declare-fun b!112963 () Bool)

(declare-fun tp!61426 () Bool)

(declare-fun mapRes!1297 () Bool)

(assert (=> b!112963 (= e!63549 (and tp!61426 mapRes!1297))))

(declare-fun condMapEmpty!1297 () Bool)

(declare-fun mapDefault!1297 () List!1842)

(assert (=> b!112963 (= condMapEmpty!1297 (= (arr!543 (_values!607 (v!13189 (underlying!857 (v!13190 (underlying!858 (cache!777 cache!470))))))) ((as const (Array (_ BitVec 32) List!1842)) mapDefault!1297)))))

(declare-fun b!112964 () Bool)

(declare-fun e!63552 () Bool)

(declare-fun e!63538 () Bool)

(assert (=> b!112964 (= e!63552 e!63538)))

(declare-fun b!112965 () Bool)

(declare-fun e!63548 () Bool)

(declare-fun e!63545 () Bool)

(assert (=> b!112965 (= e!63548 (not e!63545))))

(declare-fun res!54045 () Bool)

(assert (=> b!112965 (=> res!54045 e!63545)))

(declare-datatypes ((List!1843 0))(
  ( (Nil!1837) (Cons!1837 (h!7234 C!1848) (t!22320 List!1843)) )
))
(declare-fun testedP!367 () List!1843)

(declare-fun totalInput!1363 () List!1843)

(declare-fun isPrefix!55 (List!1843 List!1843) Bool)

(assert (=> b!112965 (= res!54045 (not (isPrefix!55 testedP!367 totalInput!1363)))))

(declare-fun lt!32978 () List!1843)

(assert (=> b!112965 (isPrefix!55 testedP!367 lt!32978)))

(declare-datatypes ((Unit!1309 0))(
  ( (Unit!1310) )
))
(declare-fun lt!32977 () Unit!1309)

(declare-fun testedSuffix!285 () List!1843)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!4 (List!1843 List!1843) Unit!1309)

(assert (=> b!112965 (= lt!32977 (lemmaConcatTwoListThenFirstIsPrefix!4 testedP!367 testedSuffix!285))))

(declare-fun b!112966 () Bool)

(assert (=> b!112966 (= e!63545 true)))

(declare-fun lt!32975 () List!1843)

(declare-fun ++!309 (List!1843 List!1843) List!1843)

(declare-fun getSuffix!2 (List!1843 List!1843) List!1843)

(assert (=> b!112966 (= lt!32975 (++!309 testedP!367 (getSuffix!2 totalInput!1363 testedP!367)))))

(declare-fun b!112967 () Bool)

(declare-fun res!54046 () Bool)

(assert (=> b!112967 (=> (not res!54046) (not e!63548))))

(declare-fun testedPSize!285 () Int)

(declare-fun size!1616 (List!1843) Int)

(assert (=> b!112967 (= res!54046 (= testedPSize!285 (size!1616 testedP!367)))))

(declare-fun b!112968 () Bool)

(assert (=> b!112968 (= e!63547 e!63546)))

(declare-fun b!112969 () Bool)

(declare-fun e!63542 () Bool)

(declare-fun tp!61428 () Bool)

(assert (=> b!112969 (= e!63542 tp!61428)))

(declare-fun b!112970 () Bool)

(declare-fun e!63543 () Bool)

(declare-fun tp!61421 () Bool)

(assert (=> b!112970 (= e!63543 (and tp_is_empty!981 tp!61421))))

(declare-fun b!112971 () Bool)

(declare-fun res!54047 () Bool)

(assert (=> b!112971 (=> (not res!54047) (not e!63548))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!112971 (= res!54047 (= totalInputSize!643 (size!1616 totalInput!1363)))))

(declare-fun b!112972 () Bool)

(declare-fun tp!61419 () Bool)

(declare-fun tp!61423 () Bool)

(assert (=> b!112972 (= e!63542 (and tp!61419 tp!61423))))

(declare-fun mapIsEmpty!1297 () Bool)

(assert (=> mapIsEmpty!1297 mapRes!1297))

(declare-fun res!54044 () Bool)

(declare-fun e!63539 () Bool)

(assert (=> start!11614 (=> (not res!54044) (not e!63539))))

(declare-fun r!15532 () Regex!463)

(declare-fun validRegex!77 (Regex!463) Bool)

(assert (=> start!11614 (= res!54044 (validRegex!77 r!15532))))

(assert (=> start!11614 e!63539))

(assert (=> start!11614 true))

(assert (=> start!11614 e!63542))

(declare-fun e!63544 () Bool)

(assert (=> start!11614 e!63544))

(assert (=> start!11614 e!63551))

(assert (=> start!11614 e!63543))

(declare-fun inv!2336 (Cache!86) Bool)

(assert (=> start!11614 (and (inv!2336 cache!470) e!63552)))

(declare-fun mapNonEmpty!1297 () Bool)

(declare-fun tp!61425 () Bool)

(declare-fun tp!61431 () Bool)

(assert (=> mapNonEmpty!1297 (= mapRes!1297 (and tp!61425 tp!61431))))

(declare-fun mapKey!1297 () (_ BitVec 32))

(declare-fun mapRest!1297 () (Array (_ BitVec 32) List!1842))

(declare-fun mapValue!1297 () List!1842)

(assert (=> mapNonEmpty!1297 (= (arr!543 (_values!607 (v!13189 (underlying!857 (v!13190 (underlying!858 (cache!777 cache!470))))))) (store mapRest!1297 mapKey!1297 mapValue!1297))))

(declare-fun b!112973 () Bool)

(declare-fun tp!61422 () Bool)

(assert (=> b!112973 (= e!63544 (and tp_is_empty!981 tp!61422))))

(declare-fun b!112974 () Bool)

(assert (=> b!112974 (= e!63539 e!63548)))

(declare-fun res!54042 () Bool)

(assert (=> b!112974 (=> (not res!54042) (not e!63548))))

(assert (=> b!112974 (= res!54042 (= lt!32978 totalInput!1363))))

(assert (=> b!112974 (= lt!32978 (++!309 testedP!367 testedSuffix!285))))

(declare-fun b!112975 () Bool)

(assert (=> b!112975 (= e!63542 tp_is_empty!981)))

(declare-fun b!112976 () Bool)

(declare-fun res!54043 () Bool)

(assert (=> b!112976 (=> (not res!54043) (not e!63539))))

(declare-fun valid!305 (Cache!86) Bool)

(assert (=> b!112976 (= res!54043 (valid!305 cache!470))))

(declare-fun b!112977 () Bool)

(declare-fun e!63540 () Bool)

(declare-fun lt!32976 () MutLongMap!329)

(get-info :version)

(assert (=> b!112977 (= e!63540 (and e!63550 ((_ is LongMap!329) lt!32976)))))

(assert (=> b!112977 (= lt!32976 (v!13190 (underlying!858 (cache!777 cache!470))))))

(declare-fun b!112978 () Bool)

(declare-fun tp!61417 () Bool)

(declare-fun tp!61427 () Bool)

(assert (=> b!112978 (= e!63542 (and tp!61417 tp!61427))))

(assert (=> b!112979 (= e!63538 (and e!63540 tp!61420))))

(assert (= (and start!11614 res!54044) b!112976))

(assert (= (and b!112976 res!54043) b!112974))

(assert (= (and b!112974 res!54042) b!112967))

(assert (= (and b!112967 res!54046) b!112971))

(assert (= (and b!112971 res!54047) b!112965))

(assert (= (and b!112965 (not res!54045)) b!112966))

(assert (= (and start!11614 ((_ is ElementMatch!463) r!15532)) b!112975))

(assert (= (and start!11614 ((_ is Concat!847) r!15532)) b!112972))

(assert (= (and start!11614 ((_ is Star!463) r!15532)) b!112969))

(assert (= (and start!11614 ((_ is Union!463) r!15532)) b!112978))

(assert (= (and start!11614 ((_ is Cons!1837) totalInput!1363)) b!112973))

(assert (= (and start!11614 ((_ is Cons!1837) testedSuffix!285)) b!112962))

(assert (= (and start!11614 ((_ is Cons!1837) testedP!367)) b!112970))

(assert (= (and b!112963 condMapEmpty!1297) mapIsEmpty!1297))

(assert (= (and b!112963 (not condMapEmpty!1297)) mapNonEmpty!1297))

(assert (= b!112961 b!112963))

(assert (= b!112968 b!112961))

(assert (= b!112960 b!112968))

(assert (= (and b!112977 ((_ is LongMap!329) (v!13190 (underlying!858 (cache!777 cache!470))))) b!112960))

(assert (= b!112979 b!112977))

(assert (= (and b!112964 ((_ is HashMap!325) (cache!777 cache!470))) b!112979))

(assert (= start!11614 b!112964))

(declare-fun m!102542 () Bool)

(assert (=> start!11614 m!102542))

(declare-fun m!102544 () Bool)

(assert (=> start!11614 m!102544))

(declare-fun m!102546 () Bool)

(assert (=> b!112974 m!102546))

(declare-fun m!102548 () Bool)

(assert (=> b!112961 m!102548))

(declare-fun m!102550 () Bool)

(assert (=> b!112961 m!102550))

(declare-fun m!102552 () Bool)

(assert (=> mapNonEmpty!1297 m!102552))

(declare-fun m!102554 () Bool)

(assert (=> b!112967 m!102554))

(declare-fun m!102556 () Bool)

(assert (=> b!112965 m!102556))

(declare-fun m!102558 () Bool)

(assert (=> b!112965 m!102558))

(declare-fun m!102560 () Bool)

(assert (=> b!112965 m!102560))

(declare-fun m!102562 () Bool)

(assert (=> b!112971 m!102562))

(declare-fun m!102564 () Bool)

(assert (=> b!112966 m!102564))

(assert (=> b!112966 m!102564))

(declare-fun m!102566 () Bool)

(assert (=> b!112966 m!102566))

(declare-fun m!102568 () Bool)

(assert (=> b!112976 m!102568))

(check-sat (not b!112974) (not b!112969) (not b!112978) (not b!112971) (not b!112973) (not b!112963) (not b_next!3545) (not b!112976) (not b!112972) (not b!112965) (not b!112966) (not start!11614) (not b_next!3547) (not mapNonEmpty!1297) tp_is_empty!981 (not b!112962) b_and!5675 b_and!5677 (not b!112970) (not b!112967) (not b!112961))
(check-sat b_and!5677 b_and!5675 (not b_next!3547) (not b_next!3545))
