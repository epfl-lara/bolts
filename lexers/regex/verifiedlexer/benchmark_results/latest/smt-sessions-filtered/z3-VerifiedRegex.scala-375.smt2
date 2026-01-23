; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11618 () Bool)

(assert start!11618)

(declare-fun b!113082 () Bool)

(declare-fun b_free!3553 () Bool)

(declare-fun b_next!3553 () Bool)

(assert (=> b!113082 (= b_free!3553 (not b_next!3553))))

(declare-fun tp!61514 () Bool)

(declare-fun b_and!5683 () Bool)

(assert (=> b!113082 (= tp!61514 b_and!5683)))

(declare-fun b!113081 () Bool)

(declare-fun b_free!3555 () Bool)

(declare-fun b_next!3555 () Bool)

(assert (=> b!113081 (= b_free!3555 (not b_next!3555))))

(declare-fun tp!61510 () Bool)

(declare-fun b_and!5685 () Bool)

(assert (=> b!113081 (= tp!61510 b_and!5685)))

(declare-fun b!113080 () Bool)

(declare-fun e!63638 () Bool)

(declare-fun tp_is_empty!985 () Bool)

(declare-fun tp!61509 () Bool)

(assert (=> b!113080 (= e!63638 (and tp_is_empty!985 tp!61509))))

(declare-fun e!63653 () Bool)

(declare-fun e!63643 () Bool)

(assert (=> b!113081 (= e!63653 (and e!63643 tp!61510))))

(declare-fun res!54082 () Bool)

(declare-fun e!63639 () Bool)

(assert (=> start!11618 (=> (not res!54082) (not e!63639))))

(declare-datatypes ((C!1852 0))(
  ( (C!1853 (val!652 Int)) )
))
(declare-datatypes ((Regex!465 0))(
  ( (ElementMatch!465 (c!26433 C!1852)) (Concat!849 (regOne!1442 Regex!465) (regTwo!1442 Regex!465)) (EmptyExpr!465) (Star!465 (reg!794 Regex!465)) (EmptyLang!465) (Union!465 (regOne!1443 Regex!465) (regTwo!1443 Regex!465)) )
))
(declare-fun r!15532 () Regex!465)

(declare-fun validRegex!79 (Regex!465) Bool)

(assert (=> start!11618 (= res!54082 (validRegex!79 r!15532))))

(assert (=> start!11618 e!63639))

(assert (=> start!11618 true))

(declare-fun e!63641 () Bool)

(assert (=> start!11618 e!63641))

(declare-fun e!63652 () Bool)

(assert (=> start!11618 e!63652))

(declare-fun e!63647 () Bool)

(assert (=> start!11618 e!63647))

(assert (=> start!11618 e!63638))

(declare-datatypes ((Hashable!327 0))(
  ( (HashableExt!326 (__x!1918 Int)) )
))
(declare-datatypes ((tuple2!1980 0))(
  ( (tuple2!1981 (_1!1200 Regex!465) (_2!1200 C!1852)) )
))
(declare-datatypes ((tuple2!1982 0))(
  ( (tuple2!1983 (_1!1201 tuple2!1980) (_2!1201 Regex!465)) )
))
(declare-datatypes ((List!1846 0))(
  ( (Nil!1840) (Cons!1840 (h!7237 tuple2!1982) (t!22323 List!1846)) )
))
(declare-datatypes ((array!1169 0))(
  ( (array!1170 (arr!546 (Array (_ BitVec 32) (_ BitVec 64))) (size!1620 (_ BitVec 32))) )
))
(declare-datatypes ((array!1171 0))(
  ( (array!1172 (arr!547 (Array (_ BitVec 32) List!1846)) (size!1621 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!662 0))(
  ( (LongMapFixedSize!663 (defaultEntry!670 Int) (mask!1231 (_ BitVec 32)) (extraKeys!577 (_ BitVec 32)) (zeroValue!587 List!1846) (minValue!587 List!1846) (_size!795 (_ BitVec 32)) (_keys!622 array!1169) (_values!609 array!1171) (_vacant!392 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1313 0))(
  ( (Cell!1314 (v!13193 LongMapFixedSize!662)) )
))
(declare-datatypes ((MutLongMap!331 0))(
  ( (LongMap!331 (underlying!861 Cell!1313)) (MutLongMapExt!330 (__x!1919 Int)) )
))
(declare-datatypes ((Cell!1315 0))(
  ( (Cell!1316 (v!13194 MutLongMap!331)) )
))
(declare-datatypes ((MutableMap!327 0))(
  ( (MutableMapExt!326 (__x!1920 Int)) (HashMap!327 (underlying!862 Cell!1315) (hashF!2203 Hashable!327) (_size!796 (_ BitVec 32)) (defaultValue!476 Int)) )
))
(declare-datatypes ((Cache!90 0))(
  ( (Cache!91 (cache!779 MutableMap!327)) )
))
(declare-fun cache!470 () Cache!90)

(declare-fun e!63645 () Bool)

(declare-fun inv!2341 (Cache!90) Bool)

(assert (=> start!11618 (and (inv!2341 cache!470) e!63645)))

(declare-fun e!63648 () Bool)

(declare-fun tp!61519 () Bool)

(declare-fun tp!61508 () Bool)

(declare-fun e!63654 () Bool)

(declare-fun array_inv!383 (array!1169) Bool)

(declare-fun array_inv!384 (array!1171) Bool)

(assert (=> b!113082 (= e!63654 (and tp!61514 tp!61519 tp!61508 (array_inv!383 (_keys!622 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) (array_inv!384 (_values!609 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) e!63648))))

(declare-fun b!113083 () Bool)

(declare-fun res!54081 () Bool)

(assert (=> b!113083 (=> (not res!54081) (not e!63639))))

(declare-fun valid!307 (Cache!90) Bool)

(assert (=> b!113083 (= res!54081 (valid!307 cache!470))))

(declare-fun b!113084 () Bool)

(declare-fun e!63640 () Bool)

(declare-fun lt!33015 () MutLongMap!331)

(get-info :version)

(assert (=> b!113084 (= e!63643 (and e!63640 ((_ is LongMap!331) lt!33015)))))

(assert (=> b!113084 (= lt!33015 (v!13194 (underlying!862 (cache!779 cache!470))))))

(declare-fun b!113085 () Bool)

(declare-fun tp!61516 () Bool)

(assert (=> b!113085 (= e!63641 tp!61516)))

(declare-fun b!113086 () Bool)

(declare-fun tp!61520 () Bool)

(declare-fun mapRes!1303 () Bool)

(assert (=> b!113086 (= e!63648 (and tp!61520 mapRes!1303))))

(declare-fun condMapEmpty!1303 () Bool)

(declare-fun mapDefault!1303 () List!1846)

(assert (=> b!113086 (= condMapEmpty!1303 (= (arr!547 (_values!609 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) ((as const (Array (_ BitVec 32) List!1846)) mapDefault!1303)))))

(declare-fun b!113087 () Bool)

(declare-fun tp!61521 () Bool)

(declare-fun tp!61507 () Bool)

(assert (=> b!113087 (= e!63641 (and tp!61521 tp!61507))))

(declare-fun b!113088 () Bool)

(declare-fun e!63651 () Bool)

(assert (=> b!113088 (= e!63639 e!63651)))

(declare-fun res!54080 () Bool)

(assert (=> b!113088 (=> (not res!54080) (not e!63651))))

(declare-datatypes ((List!1847 0))(
  ( (Nil!1841) (Cons!1841 (h!7238 C!1852) (t!22324 List!1847)) )
))
(declare-fun lt!33016 () List!1847)

(declare-fun totalInput!1363 () List!1847)

(assert (=> b!113088 (= res!54080 (= lt!33016 totalInput!1363))))

(declare-fun testedP!367 () List!1847)

(declare-fun testedSuffix!285 () List!1847)

(declare-fun ++!311 (List!1847 List!1847) List!1847)

(assert (=> b!113088 (= lt!33016 (++!311 testedP!367 testedSuffix!285))))

(declare-fun b!113089 () Bool)

(declare-fun e!63644 () Bool)

(assert (=> b!113089 (= e!63644 e!63654)))

(declare-fun b!113090 () Bool)

(assert (=> b!113090 (= e!63641 tp_is_empty!985)))

(declare-fun b!113091 () Bool)

(assert (=> b!113091 (= e!63645 e!63653)))

(declare-fun b!113092 () Bool)

(declare-fun e!63642 () Bool)

(declare-fun e!63646 () Bool)

(assert (=> b!113092 (= e!63642 (not e!63646))))

(declare-fun res!54078 () Bool)

(assert (=> b!113092 (=> res!54078 e!63646)))

(declare-fun isPrefix!57 (List!1847 List!1847) Bool)

(assert (=> b!113092 (= res!54078 (not (isPrefix!57 testedP!367 totalInput!1363)))))

(assert (=> b!113092 (isPrefix!57 testedP!367 lt!33016)))

(declare-datatypes ((Unit!1313 0))(
  ( (Unit!1314) )
))
(declare-fun lt!33014 () Unit!1313)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!6 (List!1847 List!1847) Unit!1313)

(assert (=> b!113092 (= lt!33014 (lemmaConcatTwoListThenFirstIsPrefix!6 testedP!367 testedSuffix!285))))

(declare-fun b!113093 () Bool)

(declare-fun lt!33017 () Int)

(declare-fun lt!33018 () Int)

(assert (=> b!113093 (= e!63646 (>= lt!33017 lt!33018))))

(declare-fun lt!33019 () List!1847)

(assert (=> b!113093 (= testedSuffix!285 lt!33019)))

(declare-fun lt!33020 () Unit!1313)

(declare-fun lemmaSamePrefixThenSameSuffix!3 (List!1847 List!1847 List!1847 List!1847 List!1847) Unit!1313)

(assert (=> b!113093 (= lt!33020 (lemmaSamePrefixThenSameSuffix!3 testedP!367 testedSuffix!285 testedP!367 lt!33019 totalInput!1363))))

(declare-fun getSuffix!4 (List!1847 List!1847) List!1847)

(assert (=> b!113093 (= lt!33019 (getSuffix!4 totalInput!1363 testedP!367))))

(declare-fun b!113094 () Bool)

(declare-fun tp!61511 () Bool)

(assert (=> b!113094 (= e!63652 (and tp_is_empty!985 tp!61511))))

(declare-fun b!113095 () Bool)

(declare-fun e!63650 () Bool)

(assert (=> b!113095 (= e!63650 e!63642)))

(declare-fun res!54079 () Bool)

(assert (=> b!113095 (=> (not res!54079) (not e!63642))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!113095 (= res!54079 (= totalInputSize!643 lt!33017))))

(declare-fun size!1622 (List!1847) Int)

(assert (=> b!113095 (= lt!33017 (size!1622 totalInput!1363))))

(declare-fun b!113096 () Bool)

(declare-fun tp!61513 () Bool)

(declare-fun tp!61515 () Bool)

(assert (=> b!113096 (= e!63641 (and tp!61513 tp!61515))))

(declare-fun mapIsEmpty!1303 () Bool)

(assert (=> mapIsEmpty!1303 mapRes!1303))

(declare-fun b!113097 () Bool)

(assert (=> b!113097 (= e!63651 e!63650)))

(declare-fun res!54083 () Bool)

(assert (=> b!113097 (=> (not res!54083) (not e!63650))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!113097 (= res!54083 (= testedPSize!285 lt!33018))))

(assert (=> b!113097 (= lt!33018 (size!1622 testedP!367))))

(declare-fun mapNonEmpty!1303 () Bool)

(declare-fun tp!61517 () Bool)

(declare-fun tp!61518 () Bool)

(assert (=> mapNonEmpty!1303 (= mapRes!1303 (and tp!61517 tp!61518))))

(declare-fun mapRest!1303 () (Array (_ BitVec 32) List!1846))

(declare-fun mapValue!1303 () List!1846)

(declare-fun mapKey!1303 () (_ BitVec 32))

(assert (=> mapNonEmpty!1303 (= (arr!547 (_values!609 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) (store mapRest!1303 mapKey!1303 mapValue!1303))))

(declare-fun b!113098 () Bool)

(assert (=> b!113098 (= e!63640 e!63644)))

(declare-fun b!113099 () Bool)

(declare-fun tp!61512 () Bool)

(assert (=> b!113099 (= e!63647 (and tp_is_empty!985 tp!61512))))

(assert (= (and start!11618 res!54082) b!113083))

(assert (= (and b!113083 res!54081) b!113088))

(assert (= (and b!113088 res!54080) b!113097))

(assert (= (and b!113097 res!54083) b!113095))

(assert (= (and b!113095 res!54079) b!113092))

(assert (= (and b!113092 (not res!54078)) b!113093))

(assert (= (and start!11618 ((_ is ElementMatch!465) r!15532)) b!113090))

(assert (= (and start!11618 ((_ is Concat!849) r!15532)) b!113087))

(assert (= (and start!11618 ((_ is Star!465) r!15532)) b!113085))

(assert (= (and start!11618 ((_ is Union!465) r!15532)) b!113096))

(assert (= (and start!11618 ((_ is Cons!1841) totalInput!1363)) b!113094))

(assert (= (and start!11618 ((_ is Cons!1841) testedSuffix!285)) b!113099))

(assert (= (and start!11618 ((_ is Cons!1841) testedP!367)) b!113080))

(assert (= (and b!113086 condMapEmpty!1303) mapIsEmpty!1303))

(assert (= (and b!113086 (not condMapEmpty!1303)) mapNonEmpty!1303))

(assert (= b!113082 b!113086))

(assert (= b!113089 b!113082))

(assert (= b!113098 b!113089))

(assert (= (and b!113084 ((_ is LongMap!331) (v!13194 (underlying!862 (cache!779 cache!470))))) b!113098))

(assert (= b!113081 b!113084))

(assert (= (and b!113091 ((_ is HashMap!327) (cache!779 cache!470))) b!113081))

(assert (= start!11618 b!113091))

(declare-fun m!102598 () Bool)

(assert (=> b!113083 m!102598))

(declare-fun m!102600 () Bool)

(assert (=> b!113095 m!102600))

(declare-fun m!102602 () Bool)

(assert (=> b!113082 m!102602))

(declare-fun m!102604 () Bool)

(assert (=> b!113082 m!102604))

(declare-fun m!102606 () Bool)

(assert (=> b!113092 m!102606))

(declare-fun m!102608 () Bool)

(assert (=> b!113092 m!102608))

(declare-fun m!102610 () Bool)

(assert (=> b!113092 m!102610))

(declare-fun m!102612 () Bool)

(assert (=> mapNonEmpty!1303 m!102612))

(declare-fun m!102614 () Bool)

(assert (=> b!113088 m!102614))

(declare-fun m!102616 () Bool)

(assert (=> start!11618 m!102616))

(declare-fun m!102618 () Bool)

(assert (=> start!11618 m!102618))

(declare-fun m!102620 () Bool)

(assert (=> b!113097 m!102620))

(declare-fun m!102622 () Bool)

(assert (=> b!113093 m!102622))

(declare-fun m!102624 () Bool)

(assert (=> b!113093 m!102624))

(check-sat (not b_next!3553) (not b!113095) b_and!5685 (not start!11618) (not b!113097) (not b!113087) (not b!113083) (not b!113082) (not mapNonEmpty!1303) (not b!113094) b_and!5683 tp_is_empty!985 (not b!113099) (not b!113086) (not b!113093) (not b!113092) (not b!113088) (not b!113096) (not b_next!3555) (not b!113080) (not b!113085))
(check-sat b_and!5685 b_and!5683 (not b_next!3555) (not b_next!3553))
(get-model)

(declare-fun d!28138 () Bool)

(declare-fun lt!33023 () Int)

(assert (=> d!28138 (>= lt!33023 0)))

(declare-fun e!63657 () Int)

(assert (=> d!28138 (= lt!33023 e!63657)))

(declare-fun c!26436 () Bool)

(assert (=> d!28138 (= c!26436 ((_ is Nil!1841) testedP!367))))

(assert (=> d!28138 (= (size!1622 testedP!367) lt!33023)))

(declare-fun b!113104 () Bool)

(assert (=> b!113104 (= e!63657 0)))

(declare-fun b!113105 () Bool)

(assert (=> b!113105 (= e!63657 (+ 1 (size!1622 (t!22324 testedP!367))))))

(assert (= (and d!28138 c!26436) b!113104))

(assert (= (and d!28138 (not c!26436)) b!113105))

(declare-fun m!102626 () Bool)

(assert (=> b!113105 m!102626))

(assert (=> b!113097 d!28138))

(declare-fun d!28140 () Bool)

(assert (=> d!28140 (= (array_inv!383 (_keys!622 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) (bvsge (size!1620 (_keys!622 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!113082 d!28140))

(declare-fun d!28142 () Bool)

(assert (=> d!28142 (= (array_inv!384 (_values!609 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) (bvsge (size!1621 (_values!609 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!113082 d!28142))

(declare-fun d!28144 () Bool)

(declare-fun e!63663 () Bool)

(assert (=> d!28144 e!63663))

(declare-fun res!54089 () Bool)

(assert (=> d!28144 (=> (not res!54089) (not e!63663))))

(declare-fun lt!33026 () List!1847)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!210 (List!1847) (InoxSet C!1852))

(assert (=> d!28144 (= res!54089 (= (content!210 lt!33026) ((_ map or) (content!210 testedP!367) (content!210 testedSuffix!285))))))

(declare-fun e!63662 () List!1847)

(assert (=> d!28144 (= lt!33026 e!63662)))

(declare-fun c!26439 () Bool)

(assert (=> d!28144 (= c!26439 ((_ is Nil!1841) testedP!367))))

(assert (=> d!28144 (= (++!311 testedP!367 testedSuffix!285) lt!33026)))

(declare-fun b!113114 () Bool)

(assert (=> b!113114 (= e!63662 testedSuffix!285)))

(declare-fun b!113116 () Bool)

(declare-fun res!54088 () Bool)

(assert (=> b!113116 (=> (not res!54088) (not e!63663))))

(assert (=> b!113116 (= res!54088 (= (size!1622 lt!33026) (+ (size!1622 testedP!367) (size!1622 testedSuffix!285))))))

(declare-fun b!113115 () Bool)

(assert (=> b!113115 (= e!63662 (Cons!1841 (h!7238 testedP!367) (++!311 (t!22324 testedP!367) testedSuffix!285)))))

(declare-fun b!113117 () Bool)

(assert (=> b!113117 (= e!63663 (or (not (= testedSuffix!285 Nil!1841)) (= lt!33026 testedP!367)))))

(assert (= (and d!28144 c!26439) b!113114))

(assert (= (and d!28144 (not c!26439)) b!113115))

(assert (= (and d!28144 res!54089) b!113116))

(assert (= (and b!113116 res!54088) b!113117))

(declare-fun m!102628 () Bool)

(assert (=> d!28144 m!102628))

(declare-fun m!102630 () Bool)

(assert (=> d!28144 m!102630))

(declare-fun m!102632 () Bool)

(assert (=> d!28144 m!102632))

(declare-fun m!102634 () Bool)

(assert (=> b!113116 m!102634))

(assert (=> b!113116 m!102620))

(declare-fun m!102636 () Bool)

(assert (=> b!113116 m!102636))

(declare-fun m!102638 () Bool)

(assert (=> b!113115 m!102638))

(assert (=> b!113088 d!28144))

(declare-fun b!113136 () Bool)

(declare-fun e!63679 () Bool)

(declare-fun call!4859 () Bool)

(assert (=> b!113136 (= e!63679 call!4859)))

(declare-fun b!113137 () Bool)

(declare-fun res!54104 () Bool)

(declare-fun e!63680 () Bool)

(assert (=> b!113137 (=> (not res!54104) (not e!63680))))

(assert (=> b!113137 (= res!54104 call!4859)))

(declare-fun e!63678 () Bool)

(assert (=> b!113137 (= e!63678 e!63680)))

(declare-fun b!113138 () Bool)

(declare-fun e!63681 () Bool)

(assert (=> b!113138 (= e!63681 e!63679)))

(declare-fun res!54102 () Bool)

(assert (=> b!113138 (=> (not res!54102) (not e!63679))))

(declare-fun call!4858 () Bool)

(assert (=> b!113138 (= res!54102 call!4858)))

(declare-fun b!113139 () Bool)

(declare-fun e!63683 () Bool)

(declare-fun call!4860 () Bool)

(assert (=> b!113139 (= e!63683 call!4860)))

(declare-fun b!113140 () Bool)

(assert (=> b!113140 (= e!63680 call!4858)))

(declare-fun b!113141 () Bool)

(declare-fun res!54100 () Bool)

(assert (=> b!113141 (=> res!54100 e!63681)))

(assert (=> b!113141 (= res!54100 (not ((_ is Concat!849) r!15532)))))

(assert (=> b!113141 (= e!63678 e!63681)))

(declare-fun b!113142 () Bool)

(declare-fun e!63682 () Bool)

(declare-fun e!63684 () Bool)

(assert (=> b!113142 (= e!63682 e!63684)))

(declare-fun c!26445 () Bool)

(assert (=> b!113142 (= c!26445 ((_ is Star!465) r!15532))))

(declare-fun c!26444 () Bool)

(declare-fun bm!4853 () Bool)

(assert (=> bm!4853 (= call!4860 (validRegex!79 (ite c!26445 (reg!794 r!15532) (ite c!26444 (regTwo!1443 r!15532) (regOne!1442 r!15532)))))))

(declare-fun bm!4854 () Bool)

(assert (=> bm!4854 (= call!4858 call!4860)))

(declare-fun b!113143 () Bool)

(assert (=> b!113143 (= e!63684 e!63683)))

(declare-fun res!54103 () Bool)

(declare-fun nullable!58 (Regex!465) Bool)

(assert (=> b!113143 (= res!54103 (not (nullable!58 (reg!794 r!15532))))))

(assert (=> b!113143 (=> (not res!54103) (not e!63683))))

(declare-fun d!28146 () Bool)

(declare-fun res!54101 () Bool)

(assert (=> d!28146 (=> res!54101 e!63682)))

(assert (=> d!28146 (= res!54101 ((_ is ElementMatch!465) r!15532))))

(assert (=> d!28146 (= (validRegex!79 r!15532) e!63682)))

(declare-fun b!113144 () Bool)

(assert (=> b!113144 (= e!63684 e!63678)))

(assert (=> b!113144 (= c!26444 ((_ is Union!465) r!15532))))

(declare-fun bm!4855 () Bool)

(assert (=> bm!4855 (= call!4859 (validRegex!79 (ite c!26444 (regOne!1443 r!15532) (regTwo!1442 r!15532))))))

(assert (= (and d!28146 (not res!54101)) b!113142))

(assert (= (and b!113142 c!26445) b!113143))

(assert (= (and b!113142 (not c!26445)) b!113144))

(assert (= (and b!113143 res!54103) b!113139))

(assert (= (and b!113144 c!26444) b!113137))

(assert (= (and b!113144 (not c!26444)) b!113141))

(assert (= (and b!113137 res!54104) b!113140))

(assert (= (and b!113141 (not res!54100)) b!113138))

(assert (= (and b!113138 res!54102) b!113136))

(assert (= (or b!113140 b!113138) bm!4854))

(assert (= (or b!113137 b!113136) bm!4855))

(assert (= (or b!113139 bm!4854) bm!4853))

(declare-fun m!102640 () Bool)

(assert (=> bm!4853 m!102640))

(declare-fun m!102642 () Bool)

(assert (=> b!113143 m!102642))

(declare-fun m!102644 () Bool)

(assert (=> bm!4855 m!102644))

(assert (=> start!11618 d!28146))

(declare-fun d!28148 () Bool)

(declare-fun res!54107 () Bool)

(declare-fun e!63687 () Bool)

(assert (=> d!28148 (=> (not res!54107) (not e!63687))))

(assert (=> d!28148 (= res!54107 ((_ is HashMap!327) (cache!779 cache!470)))))

(assert (=> d!28148 (= (inv!2341 cache!470) e!63687)))

(declare-fun b!113147 () Bool)

(declare-fun validCacheMap!12 (MutableMap!327) Bool)

(assert (=> b!113147 (= e!63687 (validCacheMap!12 (cache!779 cache!470)))))

(assert (= (and d!28148 res!54107) b!113147))

(declare-fun m!102646 () Bool)

(assert (=> b!113147 m!102646))

(assert (=> start!11618 d!28148))

(declare-fun d!28150 () Bool)

(assert (=> d!28150 (= testedSuffix!285 lt!33019)))

(declare-fun lt!33029 () Unit!1313)

(declare-fun choose!1506 (List!1847 List!1847 List!1847 List!1847 List!1847) Unit!1313)

(assert (=> d!28150 (= lt!33029 (choose!1506 testedP!367 testedSuffix!285 testedP!367 lt!33019 totalInput!1363))))

(assert (=> d!28150 (isPrefix!57 testedP!367 totalInput!1363)))

(assert (=> d!28150 (= (lemmaSamePrefixThenSameSuffix!3 testedP!367 testedSuffix!285 testedP!367 lt!33019 totalInput!1363) lt!33029)))

(declare-fun bs!11772 () Bool)

(assert (= bs!11772 d!28150))

(declare-fun m!102648 () Bool)

(assert (=> bs!11772 m!102648))

(assert (=> bs!11772 m!102606))

(assert (=> b!113093 d!28150))

(declare-fun d!28152 () Bool)

(declare-fun lt!33032 () List!1847)

(assert (=> d!28152 (= (++!311 testedP!367 lt!33032) totalInput!1363)))

(declare-fun e!63690 () List!1847)

(assert (=> d!28152 (= lt!33032 e!63690)))

(declare-fun c!26448 () Bool)

(assert (=> d!28152 (= c!26448 ((_ is Cons!1841) testedP!367))))

(assert (=> d!28152 (>= (size!1622 totalInput!1363) (size!1622 testedP!367))))

(assert (=> d!28152 (= (getSuffix!4 totalInput!1363 testedP!367) lt!33032)))

(declare-fun b!113152 () Bool)

(declare-fun tail!207 (List!1847) List!1847)

(assert (=> b!113152 (= e!63690 (getSuffix!4 (tail!207 totalInput!1363) (t!22324 testedP!367)))))

(declare-fun b!113153 () Bool)

(assert (=> b!113153 (= e!63690 totalInput!1363)))

(assert (= (and d!28152 c!26448) b!113152))

(assert (= (and d!28152 (not c!26448)) b!113153))

(declare-fun m!102650 () Bool)

(assert (=> d!28152 m!102650))

(assert (=> d!28152 m!102600))

(assert (=> d!28152 m!102620))

(declare-fun m!102652 () Bool)

(assert (=> b!113152 m!102652))

(assert (=> b!113152 m!102652))

(declare-fun m!102654 () Bool)

(assert (=> b!113152 m!102654))

(assert (=> b!113093 d!28152))

(declare-fun d!28154 () Bool)

(declare-fun e!63697 () Bool)

(assert (=> d!28154 e!63697))

(declare-fun res!54119 () Bool)

(assert (=> d!28154 (=> res!54119 e!63697)))

(declare-fun lt!33035 () Bool)

(assert (=> d!28154 (= res!54119 (not lt!33035))))

(declare-fun e!63699 () Bool)

(assert (=> d!28154 (= lt!33035 e!63699)))

(declare-fun res!54117 () Bool)

(assert (=> d!28154 (=> res!54117 e!63699)))

(assert (=> d!28154 (= res!54117 ((_ is Nil!1841) testedP!367))))

(assert (=> d!28154 (= (isPrefix!57 testedP!367 totalInput!1363) lt!33035)))

(declare-fun b!113162 () Bool)

(declare-fun e!63698 () Bool)

(assert (=> b!113162 (= e!63699 e!63698)))

(declare-fun res!54116 () Bool)

(assert (=> b!113162 (=> (not res!54116) (not e!63698))))

(assert (=> b!113162 (= res!54116 (not ((_ is Nil!1841) totalInput!1363)))))

(declare-fun b!113165 () Bool)

(assert (=> b!113165 (= e!63697 (>= (size!1622 totalInput!1363) (size!1622 testedP!367)))))

(declare-fun b!113163 () Bool)

(declare-fun res!54118 () Bool)

(assert (=> b!113163 (=> (not res!54118) (not e!63698))))

(declare-fun head!467 (List!1847) C!1852)

(assert (=> b!113163 (= res!54118 (= (head!467 testedP!367) (head!467 totalInput!1363)))))

(declare-fun b!113164 () Bool)

(assert (=> b!113164 (= e!63698 (isPrefix!57 (tail!207 testedP!367) (tail!207 totalInput!1363)))))

(assert (= (and d!28154 (not res!54117)) b!113162))

(assert (= (and b!113162 res!54116) b!113163))

(assert (= (and b!113163 res!54118) b!113164))

(assert (= (and d!28154 (not res!54119)) b!113165))

(assert (=> b!113165 m!102600))

(assert (=> b!113165 m!102620))

(declare-fun m!102656 () Bool)

(assert (=> b!113163 m!102656))

(declare-fun m!102658 () Bool)

(assert (=> b!113163 m!102658))

(declare-fun m!102660 () Bool)

(assert (=> b!113164 m!102660))

(assert (=> b!113164 m!102652))

(assert (=> b!113164 m!102660))

(assert (=> b!113164 m!102652))

(declare-fun m!102662 () Bool)

(assert (=> b!113164 m!102662))

(assert (=> b!113092 d!28154))

(declare-fun d!28156 () Bool)

(declare-fun e!63700 () Bool)

(assert (=> d!28156 e!63700))

(declare-fun res!54123 () Bool)

(assert (=> d!28156 (=> res!54123 e!63700)))

(declare-fun lt!33036 () Bool)

(assert (=> d!28156 (= res!54123 (not lt!33036))))

(declare-fun e!63702 () Bool)

(assert (=> d!28156 (= lt!33036 e!63702)))

(declare-fun res!54121 () Bool)

(assert (=> d!28156 (=> res!54121 e!63702)))

(assert (=> d!28156 (= res!54121 ((_ is Nil!1841) testedP!367))))

(assert (=> d!28156 (= (isPrefix!57 testedP!367 lt!33016) lt!33036)))

(declare-fun b!113166 () Bool)

(declare-fun e!63701 () Bool)

(assert (=> b!113166 (= e!63702 e!63701)))

(declare-fun res!54120 () Bool)

(assert (=> b!113166 (=> (not res!54120) (not e!63701))))

(assert (=> b!113166 (= res!54120 (not ((_ is Nil!1841) lt!33016)))))

(declare-fun b!113169 () Bool)

(assert (=> b!113169 (= e!63700 (>= (size!1622 lt!33016) (size!1622 testedP!367)))))

(declare-fun b!113167 () Bool)

(declare-fun res!54122 () Bool)

(assert (=> b!113167 (=> (not res!54122) (not e!63701))))

(assert (=> b!113167 (= res!54122 (= (head!467 testedP!367) (head!467 lt!33016)))))

(declare-fun b!113168 () Bool)

(assert (=> b!113168 (= e!63701 (isPrefix!57 (tail!207 testedP!367) (tail!207 lt!33016)))))

(assert (= (and d!28156 (not res!54121)) b!113166))

(assert (= (and b!113166 res!54120) b!113167))

(assert (= (and b!113167 res!54122) b!113168))

(assert (= (and d!28156 (not res!54123)) b!113169))

(declare-fun m!102664 () Bool)

(assert (=> b!113169 m!102664))

(assert (=> b!113169 m!102620))

(assert (=> b!113167 m!102656))

(declare-fun m!102666 () Bool)

(assert (=> b!113167 m!102666))

(assert (=> b!113168 m!102660))

(declare-fun m!102668 () Bool)

(assert (=> b!113168 m!102668))

(assert (=> b!113168 m!102660))

(assert (=> b!113168 m!102668))

(declare-fun m!102670 () Bool)

(assert (=> b!113168 m!102670))

(assert (=> b!113092 d!28156))

(declare-fun d!28158 () Bool)

(assert (=> d!28158 (isPrefix!57 testedP!367 (++!311 testedP!367 testedSuffix!285))))

(declare-fun lt!33039 () Unit!1313)

(declare-fun choose!1507 (List!1847 List!1847) Unit!1313)

(assert (=> d!28158 (= lt!33039 (choose!1507 testedP!367 testedSuffix!285))))

(assert (=> d!28158 (= (lemmaConcatTwoListThenFirstIsPrefix!6 testedP!367 testedSuffix!285) lt!33039)))

(declare-fun bs!11773 () Bool)

(assert (= bs!11773 d!28158))

(assert (=> bs!11773 m!102614))

(assert (=> bs!11773 m!102614))

(declare-fun m!102672 () Bool)

(assert (=> bs!11773 m!102672))

(declare-fun m!102674 () Bool)

(assert (=> bs!11773 m!102674))

(assert (=> b!113092 d!28158))

(declare-fun d!28160 () Bool)

(declare-fun lt!33040 () Int)

(assert (=> d!28160 (>= lt!33040 0)))

(declare-fun e!63703 () Int)

(assert (=> d!28160 (= lt!33040 e!63703)))

(declare-fun c!26449 () Bool)

(assert (=> d!28160 (= c!26449 ((_ is Nil!1841) totalInput!1363))))

(assert (=> d!28160 (= (size!1622 totalInput!1363) lt!33040)))

(declare-fun b!113170 () Bool)

(assert (=> b!113170 (= e!63703 0)))

(declare-fun b!113171 () Bool)

(assert (=> b!113171 (= e!63703 (+ 1 (size!1622 (t!22324 totalInput!1363))))))

(assert (= (and d!28160 c!26449) b!113170))

(assert (= (and d!28160 (not c!26449)) b!113171))

(declare-fun m!102676 () Bool)

(assert (=> b!113171 m!102676))

(assert (=> b!113095 d!28160))

(declare-fun d!28162 () Bool)

(assert (=> d!28162 (= (valid!307 cache!470) (validCacheMap!12 (cache!779 cache!470)))))

(declare-fun bs!11774 () Bool)

(assert (= bs!11774 d!28162))

(assert (=> bs!11774 m!102646))

(assert (=> b!113083 d!28162))

(declare-fun b!113176 () Bool)

(declare-fun tp!61528 () Bool)

(declare-fun tp!61529 () Bool)

(declare-fun e!63706 () Bool)

(declare-fun tp!61530 () Bool)

(assert (=> b!113176 (= e!63706 (and tp!61528 tp_is_empty!985 tp!61529 tp!61530))))

(assert (=> b!113082 (= tp!61519 e!63706)))

(assert (= (and b!113082 ((_ is Cons!1840) (zeroValue!587 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470)))))))) b!113176))

(declare-fun tp!61532 () Bool)

(declare-fun b!113177 () Bool)

(declare-fun tp!61531 () Bool)

(declare-fun tp!61533 () Bool)

(declare-fun e!63707 () Bool)

(assert (=> b!113177 (= e!63707 (and tp!61531 tp_is_empty!985 tp!61532 tp!61533))))

(assert (=> b!113082 (= tp!61508 e!63707)))

(assert (= (and b!113082 ((_ is Cons!1840) (minValue!587 (v!13193 (underlying!861 (v!13194 (underlying!862 (cache!779 cache!470)))))))) b!113177))

(declare-fun e!63710 () Bool)

(assert (=> b!113087 (= tp!61521 e!63710)))

(declare-fun b!113189 () Bool)

(declare-fun tp!61547 () Bool)

(declare-fun tp!61546 () Bool)

(assert (=> b!113189 (= e!63710 (and tp!61547 tp!61546))))

(declare-fun b!113190 () Bool)

(declare-fun tp!61544 () Bool)

(assert (=> b!113190 (= e!63710 tp!61544)))

(declare-fun b!113191 () Bool)

(declare-fun tp!61548 () Bool)

(declare-fun tp!61545 () Bool)

(assert (=> b!113191 (= e!63710 (and tp!61548 tp!61545))))

(declare-fun b!113188 () Bool)

(assert (=> b!113188 (= e!63710 tp_is_empty!985)))

(assert (= (and b!113087 ((_ is ElementMatch!465) (regOne!1442 r!15532))) b!113188))

(assert (= (and b!113087 ((_ is Concat!849) (regOne!1442 r!15532))) b!113189))

(assert (= (and b!113087 ((_ is Star!465) (regOne!1442 r!15532))) b!113190))

(assert (= (and b!113087 ((_ is Union!465) (regOne!1442 r!15532))) b!113191))

(declare-fun e!63711 () Bool)

(assert (=> b!113087 (= tp!61507 e!63711)))

(declare-fun b!113193 () Bool)

(declare-fun tp!61552 () Bool)

(declare-fun tp!61551 () Bool)

(assert (=> b!113193 (= e!63711 (and tp!61552 tp!61551))))

(declare-fun b!113194 () Bool)

(declare-fun tp!61549 () Bool)

(assert (=> b!113194 (= e!63711 tp!61549)))

(declare-fun b!113195 () Bool)

(declare-fun tp!61553 () Bool)

(declare-fun tp!61550 () Bool)

(assert (=> b!113195 (= e!63711 (and tp!61553 tp!61550))))

(declare-fun b!113192 () Bool)

(assert (=> b!113192 (= e!63711 tp_is_empty!985)))

(assert (= (and b!113087 ((_ is ElementMatch!465) (regTwo!1442 r!15532))) b!113192))

(assert (= (and b!113087 ((_ is Concat!849) (regTwo!1442 r!15532))) b!113193))

(assert (= (and b!113087 ((_ is Star!465) (regTwo!1442 r!15532))) b!113194))

(assert (= (and b!113087 ((_ is Union!465) (regTwo!1442 r!15532))) b!113195))

(declare-fun b!113196 () Bool)

(declare-fun tp!61554 () Bool)

(declare-fun tp!61556 () Bool)

(declare-fun e!63712 () Bool)

(declare-fun tp!61555 () Bool)

(assert (=> b!113196 (= e!63712 (and tp!61554 tp_is_empty!985 tp!61555 tp!61556))))

(assert (=> b!113086 (= tp!61520 e!63712)))

(assert (= (and b!113086 ((_ is Cons!1840) mapDefault!1303)) b!113196))

(declare-fun b!113201 () Bool)

(declare-fun e!63715 () Bool)

(declare-fun tp!61559 () Bool)

(assert (=> b!113201 (= e!63715 (and tp_is_empty!985 tp!61559))))

(assert (=> b!113080 (= tp!61509 e!63715)))

(assert (= (and b!113080 ((_ is Cons!1841) (t!22324 testedP!367))) b!113201))

(declare-fun e!63716 () Bool)

(assert (=> b!113096 (= tp!61513 e!63716)))

(declare-fun b!113203 () Bool)

(declare-fun tp!61563 () Bool)

(declare-fun tp!61562 () Bool)

(assert (=> b!113203 (= e!63716 (and tp!61563 tp!61562))))

(declare-fun b!113204 () Bool)

(declare-fun tp!61560 () Bool)

(assert (=> b!113204 (= e!63716 tp!61560)))

(declare-fun b!113205 () Bool)

(declare-fun tp!61564 () Bool)

(declare-fun tp!61561 () Bool)

(assert (=> b!113205 (= e!63716 (and tp!61564 tp!61561))))

(declare-fun b!113202 () Bool)

(assert (=> b!113202 (= e!63716 tp_is_empty!985)))

(assert (= (and b!113096 ((_ is ElementMatch!465) (regOne!1443 r!15532))) b!113202))

(assert (= (and b!113096 ((_ is Concat!849) (regOne!1443 r!15532))) b!113203))

(assert (= (and b!113096 ((_ is Star!465) (regOne!1443 r!15532))) b!113204))

(assert (= (and b!113096 ((_ is Union!465) (regOne!1443 r!15532))) b!113205))

(declare-fun e!63717 () Bool)

(assert (=> b!113096 (= tp!61515 e!63717)))

(declare-fun b!113207 () Bool)

(declare-fun tp!61568 () Bool)

(declare-fun tp!61567 () Bool)

(assert (=> b!113207 (= e!63717 (and tp!61568 tp!61567))))

(declare-fun b!113208 () Bool)

(declare-fun tp!61565 () Bool)

(assert (=> b!113208 (= e!63717 tp!61565)))

(declare-fun b!113209 () Bool)

(declare-fun tp!61569 () Bool)

(declare-fun tp!61566 () Bool)

(assert (=> b!113209 (= e!63717 (and tp!61569 tp!61566))))

(declare-fun b!113206 () Bool)

(assert (=> b!113206 (= e!63717 tp_is_empty!985)))

(assert (= (and b!113096 ((_ is ElementMatch!465) (regTwo!1443 r!15532))) b!113206))

(assert (= (and b!113096 ((_ is Concat!849) (regTwo!1443 r!15532))) b!113207))

(assert (= (and b!113096 ((_ is Star!465) (regTwo!1443 r!15532))) b!113208))

(assert (= (and b!113096 ((_ is Union!465) (regTwo!1443 r!15532))) b!113209))

(declare-fun b!113210 () Bool)

(declare-fun e!63718 () Bool)

(declare-fun tp!61570 () Bool)

(assert (=> b!113210 (= e!63718 (and tp_is_empty!985 tp!61570))))

(assert (=> b!113099 (= tp!61512 e!63718)))

(assert (= (and b!113099 ((_ is Cons!1841) (t!22324 testedSuffix!285))) b!113210))

(declare-fun e!63719 () Bool)

(assert (=> b!113085 (= tp!61516 e!63719)))

(declare-fun b!113212 () Bool)

(declare-fun tp!61574 () Bool)

(declare-fun tp!61573 () Bool)

(assert (=> b!113212 (= e!63719 (and tp!61574 tp!61573))))

(declare-fun b!113213 () Bool)

(declare-fun tp!61571 () Bool)

(assert (=> b!113213 (= e!63719 tp!61571)))

(declare-fun b!113214 () Bool)

(declare-fun tp!61575 () Bool)

(declare-fun tp!61572 () Bool)

(assert (=> b!113214 (= e!63719 (and tp!61575 tp!61572))))

(declare-fun b!113211 () Bool)

(assert (=> b!113211 (= e!63719 tp_is_empty!985)))

(assert (= (and b!113085 ((_ is ElementMatch!465) (reg!794 r!15532))) b!113211))

(assert (= (and b!113085 ((_ is Concat!849) (reg!794 r!15532))) b!113212))

(assert (= (and b!113085 ((_ is Star!465) (reg!794 r!15532))) b!113213))

(assert (= (and b!113085 ((_ is Union!465) (reg!794 r!15532))) b!113214))

(declare-fun b!113215 () Bool)

(declare-fun e!63720 () Bool)

(declare-fun tp!61576 () Bool)

(assert (=> b!113215 (= e!63720 (and tp_is_empty!985 tp!61576))))

(assert (=> b!113094 (= tp!61511 e!63720)))

(assert (= (and b!113094 ((_ is Cons!1841) (t!22324 totalInput!1363))) b!113215))

(declare-fun mapIsEmpty!1306 () Bool)

(declare-fun mapRes!1306 () Bool)

(assert (=> mapIsEmpty!1306 mapRes!1306))

(declare-fun tp!61592 () Bool)

(declare-fun b!113222 () Bool)

(declare-fun e!63726 () Bool)

(declare-fun tp!61596 () Bool)

(declare-fun tp!61591 () Bool)

(assert (=> b!113222 (= e!63726 (and tp!61592 tp_is_empty!985 tp!61591 tp!61596))))

(declare-fun condMapEmpty!1306 () Bool)

(declare-fun mapDefault!1306 () List!1846)

(assert (=> mapNonEmpty!1303 (= condMapEmpty!1306 (= mapRest!1303 ((as const (Array (_ BitVec 32) List!1846)) mapDefault!1306)))))

(declare-fun e!63725 () Bool)

(assert (=> mapNonEmpty!1303 (= tp!61517 (and e!63725 mapRes!1306))))

(declare-fun mapNonEmpty!1306 () Bool)

(declare-fun tp!61597 () Bool)

(assert (=> mapNonEmpty!1306 (= mapRes!1306 (and tp!61597 e!63726))))

(declare-fun mapKey!1306 () (_ BitVec 32))

(declare-fun mapValue!1306 () List!1846)

(declare-fun mapRest!1306 () (Array (_ BitVec 32) List!1846))

(assert (=> mapNonEmpty!1306 (= mapRest!1303 (store mapRest!1306 mapKey!1306 mapValue!1306))))

(declare-fun b!113223 () Bool)

(declare-fun tp!61595 () Bool)

(declare-fun tp!61593 () Bool)

(declare-fun tp!61594 () Bool)

(assert (=> b!113223 (= e!63725 (and tp!61594 tp_is_empty!985 tp!61595 tp!61593))))

(assert (= (and mapNonEmpty!1303 condMapEmpty!1306) mapIsEmpty!1306))

(assert (= (and mapNonEmpty!1303 (not condMapEmpty!1306)) mapNonEmpty!1306))

(assert (= (and mapNonEmpty!1306 ((_ is Cons!1840) mapValue!1306)) b!113222))

(assert (= (and mapNonEmpty!1303 ((_ is Cons!1840) mapDefault!1306)) b!113223))

(declare-fun m!102678 () Bool)

(assert (=> mapNonEmpty!1306 m!102678))

(declare-fun tp!61599 () Bool)

(declare-fun tp!61598 () Bool)

(declare-fun b!113224 () Bool)

(declare-fun tp!61600 () Bool)

(declare-fun e!63727 () Bool)

(assert (=> b!113224 (= e!63727 (and tp!61598 tp_is_empty!985 tp!61599 tp!61600))))

(assert (=> mapNonEmpty!1303 (= tp!61518 e!63727)))

(assert (= (and mapNonEmpty!1303 ((_ is Cons!1840) mapValue!1303)) b!113224))

(check-sat (not b!113163) (not b!113214) (not b!113203) (not b!113207) (not b!113215) b_and!5685 (not b!113213) (not b!113116) (not b!113177) (not bm!4853) (not b!113167) (not b!113210) (not b!113152) (not b!113193) b_and!5683 (not d!28158) tp_is_empty!985 (not d!28150) (not b!113208) (not b_next!3553) (not b!113105) (not b!113191) (not d!28152) (not b!113115) (not b!113223) (not b!113194) (not mapNonEmpty!1306) (not b!113222) (not b!113176) (not b!113201) (not b!113143) (not b!113190) (not b!113164) (not bm!4855) (not b!113169) (not b_next!3555) (not b!113204) (not b!113165) (not d!28144) (not b!113168) (not b!113189) (not b!113209) (not b!113212) (not b!113195) (not b!113196) (not b!113147) (not b!113171) (not b!113205) (not b!113224) (not d!28162))
(check-sat b_and!5685 b_and!5683 (not b_next!3555) (not b_next!3553))
