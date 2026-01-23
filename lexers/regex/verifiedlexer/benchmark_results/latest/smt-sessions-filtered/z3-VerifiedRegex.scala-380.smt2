; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11682 () Bool)

(assert start!11682)

(declare-fun b!113937 () Bool)

(declare-fun b_free!3593 () Bool)

(declare-fun b_next!3593 () Bool)

(assert (=> b!113937 (= b_free!3593 (not b_next!3593))))

(declare-fun tp!62124 () Bool)

(declare-fun b_and!5723 () Bool)

(assert (=> b!113937 (= tp!62124 b_and!5723)))

(declare-fun b!113941 () Bool)

(declare-fun b_free!3595 () Bool)

(declare-fun b_next!3595 () Bool)

(assert (=> b!113941 (= b_free!3595 (not b_next!3595))))

(declare-fun tp!62127 () Bool)

(declare-fun b_and!5725 () Bool)

(assert (=> b!113941 (= tp!62127 b_and!5725)))

(declare-fun b!113930 () Bool)

(declare-fun e!64252 () Bool)

(assert (=> b!113930 (= e!64252 true)))

(declare-fun lt!33233 () Bool)

(declare-datatypes ((C!1872 0))(
  ( (C!1873 (val!662 Int)) )
))
(declare-datatypes ((Regex!475 0))(
  ( (ElementMatch!475 (c!26475 C!1872)) (Concat!859 (regOne!1462 Regex!475) (regTwo!1462 Regex!475)) (EmptyExpr!475) (Star!475 (reg!804 Regex!475)) (EmptyLang!475) (Union!475 (regOne!1463 Regex!475) (regTwo!1463 Regex!475)) )
))
(declare-fun r!15532 () Regex!475)

(declare-fun lostCause!24 (Regex!475) Bool)

(assert (=> b!113930 (= lt!33233 (lostCause!24 r!15532))))

(declare-datatypes ((List!1866 0))(
  ( (Nil!1860) (Cons!1860 (h!7257 C!1872) (t!22343 List!1866)) )
))
(declare-fun testedSuffix!285 () List!1866)

(declare-fun lt!33234 () List!1866)

(assert (=> b!113930 (and (= testedSuffix!285 lt!33234) (= lt!33234 testedSuffix!285))))

(declare-datatypes ((Unit!1331 0))(
  ( (Unit!1332) )
))
(declare-fun lt!33232 () Unit!1331)

(declare-fun testedP!367 () List!1866)

(declare-fun totalInput!1363 () List!1866)

(declare-fun lemmaSamePrefixThenSameSuffix!12 (List!1866 List!1866 List!1866 List!1866 List!1866) Unit!1331)

(assert (=> b!113930 (= lt!33232 (lemmaSamePrefixThenSameSuffix!12 testedP!367 testedSuffix!285 testedP!367 lt!33234 totalInput!1363))))

(declare-fun getSuffix!13 (List!1866 List!1866) List!1866)

(assert (=> b!113930 (= lt!33234 (getSuffix!13 totalInput!1363 testedP!367))))

(declare-fun b!113931 () Bool)

(declare-fun res!54341 () Bool)

(declare-fun e!64256 () Bool)

(assert (=> b!113931 (=> (not res!54341) (not e!64256))))

(declare-fun testedPSize!285 () Int)

(declare-fun size!1649 (List!1866) Int)

(assert (=> b!113931 (= res!54341 (= testedPSize!285 (size!1649 testedP!367)))))

(declare-fun b!113932 () Bool)

(declare-fun e!64253 () Bool)

(declare-fun tp!62115 () Bool)

(declare-fun mapRes!1339 () Bool)

(assert (=> b!113932 (= e!64253 (and tp!62115 mapRes!1339))))

(declare-fun condMapEmpty!1339 () Bool)

(declare-datatypes ((Hashable!337 0))(
  ( (HashableExt!336 (__x!1948 Int)) )
))
(declare-datatypes ((tuple2!2020 0))(
  ( (tuple2!2021 (_1!1220 Regex!475) (_2!1220 C!1872)) )
))
(declare-datatypes ((tuple2!2022 0))(
  ( (tuple2!2023 (_1!1221 tuple2!2020) (_2!1221 Regex!475)) )
))
(declare-datatypes ((List!1867 0))(
  ( (Nil!1861) (Cons!1861 (h!7258 tuple2!2022) (t!22344 List!1867)) )
))
(declare-datatypes ((array!1213 0))(
  ( (array!1214 (arr!566 (Array (_ BitVec 32) (_ BitVec 64))) (size!1650 (_ BitVec 32))) )
))
(declare-datatypes ((array!1215 0))(
  ( (array!1216 (arr!567 (Array (_ BitVec 32) List!1867)) (size!1651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!682 0))(
  ( (LongMapFixedSize!683 (defaultEntry!680 Int) (mask!1246 (_ BitVec 32)) (extraKeys!587 (_ BitVec 32)) (zeroValue!597 List!1867) (minValue!597 List!1867) (_size!815 (_ BitVec 32)) (_keys!632 array!1213) (_values!619 array!1215) (_vacant!402 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1353 0))(
  ( (Cell!1354 (v!13213 LongMapFixedSize!682)) )
))
(declare-datatypes ((MutLongMap!341 0))(
  ( (LongMap!341 (underlying!881 Cell!1353)) (MutLongMapExt!340 (__x!1949 Int)) )
))
(declare-datatypes ((Cell!1355 0))(
  ( (Cell!1356 (v!13214 MutLongMap!341)) )
))
(declare-datatypes ((MutableMap!337 0))(
  ( (MutableMapExt!336 (__x!1950 Int)) (HashMap!337 (underlying!882 Cell!1355) (hashF!2213 Hashable!337) (_size!816 (_ BitVec 32)) (defaultValue!486 Int)) )
))
(declare-datatypes ((Cache!110 0))(
  ( (Cache!111 (cache!789 MutableMap!337)) )
))
(declare-fun cache!470 () Cache!110)

(declare-fun mapDefault!1339 () List!1867)

(assert (=> b!113932 (= condMapEmpty!1339 (= (arr!567 (_values!619 (v!13213 (underlying!881 (v!13214 (underlying!882 (cache!789 cache!470))))))) ((as const (Array (_ BitVec 32) List!1867)) mapDefault!1339)))))

(declare-fun b!113933 () Bool)

(declare-fun e!64258 () Bool)

(declare-fun tp!62120 () Bool)

(assert (=> b!113933 (= e!64258 tp!62120)))

(declare-fun b!113934 () Bool)

(declare-fun res!54339 () Bool)

(declare-fun e!64262 () Bool)

(assert (=> b!113934 (=> (not res!54339) (not e!64262))))

(declare-fun valid!315 (Cache!110) Bool)

(assert (=> b!113934 (= res!54339 (valid!315 cache!470))))

(declare-fun b!113935 () Bool)

(declare-fun tp!62119 () Bool)

(declare-fun tp!62125 () Bool)

(assert (=> b!113935 (= e!64258 (and tp!62119 tp!62125))))

(declare-fun mapNonEmpty!1339 () Bool)

(declare-fun tp!62117 () Bool)

(declare-fun tp!62126 () Bool)

(assert (=> mapNonEmpty!1339 (= mapRes!1339 (and tp!62117 tp!62126))))

(declare-fun mapValue!1339 () List!1867)

(declare-fun mapKey!1339 () (_ BitVec 32))

(declare-fun mapRest!1339 () (Array (_ BitVec 32) List!1867))

(assert (=> mapNonEmpty!1339 (= (arr!567 (_values!619 (v!13213 (underlying!881 (v!13214 (underlying!882 (cache!789 cache!470))))))) (store mapRest!1339 mapKey!1339 mapValue!1339))))

(declare-fun b!113936 () Bool)

(declare-fun e!64260 () Bool)

(declare-fun e!64261 () Bool)

(declare-fun lt!33229 () MutLongMap!341)

(get-info :version)

(assert (=> b!113936 (= e!64260 (and e!64261 ((_ is LongMap!341) lt!33229)))))

(assert (=> b!113936 (= lt!33229 (v!13214 (underlying!882 (cache!789 cache!470))))))

(declare-fun tp!62116 () Bool)

(declare-fun e!64251 () Bool)

(declare-fun tp!62118 () Bool)

(declare-fun array_inv!399 (array!1213) Bool)

(declare-fun array_inv!400 (array!1215) Bool)

(assert (=> b!113937 (= e!64251 (and tp!62124 tp!62118 tp!62116 (array_inv!399 (_keys!632 (v!13213 (underlying!881 (v!13214 (underlying!882 (cache!789 cache!470))))))) (array_inv!400 (_values!619 (v!13213 (underlying!881 (v!13214 (underlying!882 (cache!789 cache!470))))))) e!64253))))

(declare-fun b!113938 () Bool)

(declare-fun tp!62122 () Bool)

(declare-fun tp!62121 () Bool)

(assert (=> b!113938 (= e!64258 (and tp!62122 tp!62121))))

(declare-fun b!113939 () Bool)

(assert (=> b!113939 (= e!64262 e!64256)))

(declare-fun res!54342 () Bool)

(assert (=> b!113939 (=> (not res!54342) (not e!64256))))

(declare-fun lt!33230 () List!1866)

(assert (=> b!113939 (= res!54342 (= lt!33230 totalInput!1363))))

(declare-fun ++!319 (List!1866 List!1866) List!1866)

(assert (=> b!113939 (= lt!33230 (++!319 testedP!367 testedSuffix!285))))

(declare-fun b!113940 () Bool)

(declare-fun e!64255 () Bool)

(declare-fun tp_is_empty!1005 () Bool)

(declare-fun tp!62123 () Bool)

(assert (=> b!113940 (= e!64255 (and tp_is_empty!1005 tp!62123))))

(declare-fun e!64254 () Bool)

(assert (=> b!113941 (= e!64254 (and e!64260 tp!62127))))

(declare-fun b!113942 () Bool)

(declare-fun e!64250 () Bool)

(assert (=> b!113942 (= e!64250 e!64251)))

(declare-fun b!113943 () Bool)

(declare-fun e!64248 () Bool)

(declare-fun tp!62128 () Bool)

(assert (=> b!113943 (= e!64248 (and tp_is_empty!1005 tp!62128))))

(declare-fun b!113944 () Bool)

(assert (=> b!113944 (= e!64256 (not e!64252))))

(declare-fun res!54340 () Bool)

(assert (=> b!113944 (=> res!54340 e!64252)))

(declare-fun isPrefix!65 (List!1866 List!1866) Bool)

(assert (=> b!113944 (= res!54340 (not (isPrefix!65 testedP!367 totalInput!1363)))))

(assert (=> b!113944 (isPrefix!65 testedP!367 lt!33230)))

(declare-fun lt!33231 () Unit!1331)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!14 (List!1866 List!1866) Unit!1331)

(assert (=> b!113944 (= lt!33231 (lemmaConcatTwoListThenFirstIsPrefix!14 testedP!367 testedSuffix!285))))

(declare-fun b!113945 () Bool)

(assert (=> b!113945 (= e!64258 tp_is_empty!1005)))

(declare-fun b!113946 () Bool)

(declare-fun res!54338 () Bool)

(assert (=> b!113946 (=> (not res!54338) (not e!64256))))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!113946 (= res!54338 (= totalInputSize!643 (size!1649 totalInput!1363)))))

(declare-fun res!54343 () Bool)

(assert (=> start!11682 (=> (not res!54343) (not e!64262))))

(declare-fun validRegex!87 (Regex!475) Bool)

(assert (=> start!11682 (= res!54343 (validRegex!87 r!15532))))

(assert (=> start!11682 e!64262))

(assert (=> start!11682 true))

(assert (=> start!11682 e!64258))

(declare-fun e!64257 () Bool)

(assert (=> start!11682 e!64257))

(assert (=> start!11682 e!64248))

(assert (=> start!11682 e!64255))

(declare-fun e!64259 () Bool)

(declare-fun inv!2364 (Cache!110) Bool)

(assert (=> start!11682 (and (inv!2364 cache!470) e!64259)))

(declare-fun mapIsEmpty!1339 () Bool)

(assert (=> mapIsEmpty!1339 mapRes!1339))

(declare-fun b!113947 () Bool)

(declare-fun tp!62129 () Bool)

(assert (=> b!113947 (= e!64257 (and tp_is_empty!1005 tp!62129))))

(declare-fun b!113948 () Bool)

(assert (=> b!113948 (= e!64259 e!64254)))

(declare-fun b!113949 () Bool)

(assert (=> b!113949 (= e!64261 e!64250)))

(assert (= (and start!11682 res!54343) b!113934))

(assert (= (and b!113934 res!54339) b!113939))

(assert (= (and b!113939 res!54342) b!113931))

(assert (= (and b!113931 res!54341) b!113946))

(assert (= (and b!113946 res!54338) b!113944))

(assert (= (and b!113944 (not res!54340)) b!113930))

(assert (= (and start!11682 ((_ is ElementMatch!475) r!15532)) b!113945))

(assert (= (and start!11682 ((_ is Concat!859) r!15532)) b!113935))

(assert (= (and start!11682 ((_ is Star!475) r!15532)) b!113933))

(assert (= (and start!11682 ((_ is Union!475) r!15532)) b!113938))

(assert (= (and start!11682 ((_ is Cons!1860) totalInput!1363)) b!113947))

(assert (= (and start!11682 ((_ is Cons!1860) testedSuffix!285)) b!113943))

(assert (= (and start!11682 ((_ is Cons!1860) testedP!367)) b!113940))

(assert (= (and b!113932 condMapEmpty!1339) mapIsEmpty!1339))

(assert (= (and b!113932 (not condMapEmpty!1339)) mapNonEmpty!1339))

(assert (= b!113937 b!113932))

(assert (= b!113942 b!113937))

(assert (= b!113949 b!113942))

(assert (= (and b!113936 ((_ is LongMap!341) (v!13214 (underlying!882 (cache!789 cache!470))))) b!113949))

(assert (= b!113941 b!113936))

(assert (= (and b!113948 ((_ is HashMap!337) (cache!789 cache!470))) b!113941))

(assert (= start!11682 b!113948))

(declare-fun m!102992 () Bool)

(assert (=> b!113934 m!102992))

(declare-fun m!102994 () Bool)

(assert (=> b!113930 m!102994))

(declare-fun m!102996 () Bool)

(assert (=> b!113930 m!102996))

(declare-fun m!102998 () Bool)

(assert (=> b!113930 m!102998))

(declare-fun m!103000 () Bool)

(assert (=> b!113946 m!103000))

(declare-fun m!103002 () Bool)

(assert (=> mapNonEmpty!1339 m!103002))

(declare-fun m!103004 () Bool)

(assert (=> b!113939 m!103004))

(declare-fun m!103006 () Bool)

(assert (=> b!113937 m!103006))

(declare-fun m!103008 () Bool)

(assert (=> b!113937 m!103008))

(declare-fun m!103010 () Bool)

(assert (=> b!113944 m!103010))

(declare-fun m!103012 () Bool)

(assert (=> b!113944 m!103012))

(declare-fun m!103014 () Bool)

(assert (=> b!113944 m!103014))

(declare-fun m!103016 () Bool)

(assert (=> start!11682 m!103016))

(declare-fun m!103018 () Bool)

(assert (=> start!11682 m!103018))

(declare-fun m!103020 () Bool)

(assert (=> b!113931 m!103020))

(check-sat (not b!113937) (not start!11682) b_and!5723 tp_is_empty!1005 (not b!113935) (not b!113932) (not b!113938) (not b_next!3593) (not b_next!3595) (not b!113944) (not b!113939) (not b!113947) (not b!113933) (not b!113946) (not b!113943) b_and!5725 (not b!113940) (not b!113934) (not mapNonEmpty!1339) (not b!113930) (not b!113931))
(check-sat b_and!5725 b_and!5723 (not b_next!3595) (not b_next!3593))
