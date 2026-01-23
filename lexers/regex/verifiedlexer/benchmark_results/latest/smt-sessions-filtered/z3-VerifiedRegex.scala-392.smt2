; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11834 () Bool)

(assert start!11834)

(declare-fun b!116087 () Bool)

(declare-fun b_free!3689 () Bool)

(declare-fun b_next!3689 () Bool)

(assert (=> b!116087 (= b_free!3689 (not b_next!3689))))

(declare-fun tp!63442 () Bool)

(declare-fun b_and!5819 () Bool)

(assert (=> b!116087 (= tp!63442 b_and!5819)))

(declare-fun b!116091 () Bool)

(declare-fun b_free!3691 () Bool)

(declare-fun b_next!3691 () Bool)

(assert (=> b!116091 (= b_free!3691 (not b_next!3691))))

(declare-fun tp!63445 () Bool)

(declare-fun b_and!5821 () Bool)

(assert (=> b!116091 (= tp!63445 b_and!5821)))

(declare-fun b!116079 () Bool)

(declare-datatypes ((Unit!1396 0))(
  ( (Unit!1397) )
))
(declare-fun e!65877 () Unit!1396)

(declare-fun Unit!1398 () Unit!1396)

(assert (=> b!116079 (= e!65877 Unit!1398)))

(declare-fun lt!34190 () Unit!1396)

(declare-datatypes ((C!1920 0))(
  ( (C!1921 (val!686 Int)) )
))
(declare-datatypes ((List!1912 0))(
  ( (Nil!1906) (Cons!1906 (h!7303 C!1920) (t!22389 List!1912)) )
))
(declare-fun totalInput!1363 () List!1912)

(declare-fun lemmaIsPrefixRefl!69 (List!1912 List!1912) Unit!1396)

(assert (=> b!116079 (= lt!34190 (lemmaIsPrefixRefl!69 totalInput!1363 totalInput!1363))))

(declare-fun isPrefix!86 (List!1912 List!1912) Bool)

(assert (=> b!116079 (isPrefix!86 totalInput!1363 totalInput!1363)))

(declare-fun lt!34187 () Unit!1396)

(declare-fun testedP!367 () List!1912)

(declare-fun lemmaIsPrefixSameLengthThenSameList!15 (List!1912 List!1912 List!1912) Unit!1396)

(assert (=> b!116079 (= lt!34187 (lemmaIsPrefixSameLengthThenSameList!15 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!116079 false))

(declare-fun b!116080 () Bool)

(declare-fun e!65867 () Bool)

(declare-fun e!65884 () Bool)

(assert (=> b!116080 (= e!65867 e!65884)))

(declare-fun res!55125 () Bool)

(assert (=> b!116080 (=> res!55125 e!65884)))

(declare-fun lt!34194 () Int)

(declare-fun lt!34184 () Int)

(assert (=> b!116080 (= res!55125 (>= lt!34194 lt!34184))))

(declare-fun lt!34182 () Unit!1396)

(assert (=> b!116080 (= lt!34182 e!65877)))

(declare-fun c!26599 () Bool)

(assert (=> b!116080 (= c!26599 (= lt!34194 lt!34184))))

(assert (=> b!116080 (<= lt!34194 lt!34184)))

(declare-fun lt!34196 () Unit!1396)

(declare-fun lemmaIsPrefixThenSmallerEqSize!14 (List!1912 List!1912) Unit!1396)

(assert (=> b!116080 (= lt!34196 (lemmaIsPrefixThenSmallerEqSize!14 testedP!367 totalInput!1363))))

(declare-fun b!116081 () Bool)

(declare-fun e!65882 () Bool)

(declare-fun tp_is_empty!1053 () Bool)

(declare-fun tp!63444 () Bool)

(assert (=> b!116081 (= e!65882 (and tp_is_empty!1053 tp!63444))))

(declare-fun b!116082 () Bool)

(declare-fun e!65886 () Bool)

(declare-fun e!65881 () Bool)

(declare-datatypes ((Regex!499 0))(
  ( (ElementMatch!499 (c!26600 C!1920)) (Concat!883 (regOne!1510 Regex!499) (regTwo!1510 Regex!499)) (EmptyExpr!499) (Star!499 (reg!828 Regex!499)) (EmptyLang!499) (Union!499 (regOne!1511 Regex!499) (regTwo!1511 Regex!499)) )
))
(declare-datatypes ((tuple2!2116 0))(
  ( (tuple2!2117 (_1!1268 Regex!499) (_2!1268 C!1920)) )
))
(declare-datatypes ((tuple2!2118 0))(
  ( (tuple2!2119 (_1!1269 tuple2!2116) (_2!1269 Regex!499)) )
))
(declare-datatypes ((List!1913 0))(
  ( (Nil!1907) (Cons!1907 (h!7304 tuple2!2118) (t!22390 List!1913)) )
))
(declare-datatypes ((array!1315 0))(
  ( (array!1316 (arr!614 (Array (_ BitVec 32) (_ BitVec 64))) (size!1718 (_ BitVec 32))) )
))
(declare-datatypes ((array!1317 0))(
  ( (array!1318 (arr!615 (Array (_ BitVec 32) List!1913)) (size!1719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!730 0))(
  ( (LongMapFixedSize!731 (defaultEntry!704 Int) (mask!1282 (_ BitVec 32)) (extraKeys!611 (_ BitVec 32)) (zeroValue!621 List!1913) (minValue!621 List!1913) (_size!863 (_ BitVec 32)) (_keys!656 array!1315) (_values!643 array!1317) (_vacant!426 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1449 0))(
  ( (Cell!1450 (v!13261 LongMapFixedSize!730)) )
))
(declare-datatypes ((MutLongMap!365 0))(
  ( (LongMap!365 (underlying!929 Cell!1449)) (MutLongMapExt!364 (__x!2020 Int)) )
))
(declare-fun lt!34186 () MutLongMap!365)

(get-info :version)

(assert (=> b!116082 (= e!65886 (and e!65881 ((_ is LongMap!365) lt!34186)))))

(declare-datatypes ((Hashable!361 0))(
  ( (HashableExt!360 (__x!2021 Int)) )
))
(declare-datatypes ((Cell!1451 0))(
  ( (Cell!1452 (v!13262 MutLongMap!365)) )
))
(declare-datatypes ((MutableMap!361 0))(
  ( (MutableMapExt!360 (__x!2022 Int)) (HashMap!361 (underlying!930 Cell!1451) (hashF!2237 Hashable!361) (_size!864 (_ BitVec 32)) (defaultValue!510 Int)) )
))
(declare-datatypes ((Cache!158 0))(
  ( (Cache!159 (cache!813 MutableMap!361)) )
))
(declare-fun cache!470 () Cache!158)

(assert (=> b!116082 (= lt!34186 (v!13262 (underlying!930 (cache!813 cache!470))))))

(declare-fun b!116083 () Bool)

(declare-fun e!65870 () Bool)

(declare-fun e!65879 () Bool)

(assert (=> b!116083 (= e!65870 e!65879)))

(declare-fun res!55129 () Bool)

(assert (=> b!116083 (=> (not res!55129) (not e!65879))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!116083 (= res!55129 (= testedPSize!285 lt!34194))))

(declare-fun size!1720 (List!1912) Int)

(assert (=> b!116083 (= lt!34194 (size!1720 testedP!367))))

(declare-fun b!116084 () Bool)

(declare-fun Unit!1399 () Unit!1396)

(assert (=> b!116084 (= e!65877 Unit!1399)))

(declare-fun b!116085 () Bool)

(declare-fun e!65874 () Bool)

(declare-fun e!65868 () Bool)

(assert (=> b!116085 (= e!65874 e!65868)))

(declare-fun b!116086 () Bool)

(declare-fun e!65866 () Bool)

(declare-fun tp!63432 () Bool)

(assert (=> b!116086 (= e!65866 (and tp_is_empty!1053 tp!63432))))

(declare-fun e!65873 () Bool)

(declare-fun tp!63437 () Bool)

(declare-fun tp!63434 () Bool)

(declare-fun e!65876 () Bool)

(declare-fun array_inv!437 (array!1315) Bool)

(declare-fun array_inv!438 (array!1317) Bool)

(assert (=> b!116087 (= e!65873 (and tp!63442 tp!63434 tp!63437 (array_inv!437 (_keys!656 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) (array_inv!438 (_values!643 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) e!65876))))

(declare-fun b!116088 () Bool)

(declare-fun e!65878 () Bool)

(declare-fun testedSuffix!285 () List!1912)

(assert (=> b!116088 (= e!65878 (not (= testedSuffix!285 Nil!1906)))))

(declare-fun lt!34188 () Regex!499)

(declare-fun r!15532 () Regex!499)

(declare-fun lt!34193 () C!1920)

(declare-fun derivativeStep!38 (Regex!499 C!1920) Regex!499)

(assert (=> b!116088 (= lt!34188 (derivativeStep!38 r!15532 lt!34193))))

(declare-fun mapIsEmpty!1420 () Bool)

(declare-fun mapRes!1420 () Bool)

(assert (=> mapIsEmpty!1420 mapRes!1420))

(declare-fun b!116089 () Bool)

(declare-fun e!65883 () Bool)

(assert (=> b!116089 (= e!65883 e!65867)))

(declare-fun res!55124 () Bool)

(assert (=> b!116089 (=> res!55124 e!65867)))

(declare-fun lostCause!41 (Regex!499) Bool)

(assert (=> b!116089 (= res!55124 (lostCause!41 r!15532))))

(declare-fun lt!34192 () List!1912)

(assert (=> b!116089 (and (= testedSuffix!285 lt!34192) (= lt!34192 testedSuffix!285))))

(declare-fun lt!34198 () Unit!1396)

(declare-fun lemmaSamePrefixThenSameSuffix!29 (List!1912 List!1912 List!1912 List!1912 List!1912) Unit!1396)

(assert (=> b!116089 (= lt!34198 (lemmaSamePrefixThenSameSuffix!29 testedP!367 testedSuffix!285 testedP!367 lt!34192 totalInput!1363))))

(declare-fun getSuffix!30 (List!1912 List!1912) List!1912)

(assert (=> b!116089 (= lt!34192 (getSuffix!30 totalInput!1363 testedP!367))))

(declare-fun b!116090 () Bool)

(declare-fun tp!63436 () Bool)

(assert (=> b!116090 (= e!65876 (and tp!63436 mapRes!1420))))

(declare-fun condMapEmpty!1420 () Bool)

(declare-fun mapDefault!1420 () List!1913)

(assert (=> b!116090 (= condMapEmpty!1420 (= (arr!615 (_values!643 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) ((as const (Array (_ BitVec 32) List!1913)) mapDefault!1420)))))

(assert (=> b!116091 (= e!65868 (and e!65886 tp!63445))))

(declare-fun b!116092 () Bool)

(declare-fun e!65885 () Bool)

(declare-fun tp!63433 () Bool)

(assert (=> b!116092 (= e!65885 tp!63433)))

(declare-fun b!116093 () Bool)

(declare-fun e!65875 () Bool)

(assert (=> b!116093 (= e!65875 e!65870)))

(declare-fun res!55121 () Bool)

(assert (=> b!116093 (=> (not res!55121) (not e!65870))))

(declare-fun lt!34195 () List!1912)

(assert (=> b!116093 (= res!55121 (= lt!34195 totalInput!1363))))

(declare-fun ++!339 (List!1912 List!1912) List!1912)

(assert (=> b!116093 (= lt!34195 (++!339 testedP!367 testedSuffix!285))))

(declare-fun mapNonEmpty!1420 () Bool)

(declare-fun tp!63441 () Bool)

(declare-fun tp!63446 () Bool)

(assert (=> mapNonEmpty!1420 (= mapRes!1420 (and tp!63441 tp!63446))))

(declare-fun mapRest!1420 () (Array (_ BitVec 32) List!1913))

(declare-fun mapValue!1420 () List!1913)

(declare-fun mapKey!1420 () (_ BitVec 32))

(assert (=> mapNonEmpty!1420 (= (arr!615 (_values!643 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) (store mapRest!1420 mapKey!1420 mapValue!1420))))

(declare-fun b!116094 () Bool)

(declare-fun e!65869 () Bool)

(assert (=> b!116094 (= e!65869 (not e!65883))))

(declare-fun res!55122 () Bool)

(assert (=> b!116094 (=> res!55122 e!65883)))

(assert (=> b!116094 (= res!55122 (not (isPrefix!86 testedP!367 totalInput!1363)))))

(assert (=> b!116094 (isPrefix!86 testedP!367 lt!34195)))

(declare-fun lt!34183 () Unit!1396)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!33 (List!1912 List!1912) Unit!1396)

(assert (=> b!116094 (= lt!34183 (lemmaConcatTwoListThenFirstIsPrefix!33 testedP!367 testedSuffix!285))))

(declare-fun b!116095 () Bool)

(declare-fun tp!63440 () Bool)

(declare-fun tp!63435 () Bool)

(assert (=> b!116095 (= e!65885 (and tp!63440 tp!63435))))

(declare-fun b!116096 () Bool)

(assert (=> b!116096 (= e!65884 e!65878)))

(declare-fun res!55126 () Bool)

(assert (=> b!116096 (=> res!55126 e!65878)))

(declare-fun nullable!65 (Regex!499) Bool)

(assert (=> b!116096 (= res!55126 (not (nullable!65 r!15532)))))

(declare-fun lt!34189 () List!1912)

(declare-fun lt!34197 () List!1912)

(assert (=> b!116096 (= (++!339 lt!34189 lt!34197) totalInput!1363)))

(declare-fun lt!34191 () Unit!1396)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!6 (List!1912 C!1920 List!1912 List!1912) Unit!1396)

(assert (=> b!116096 (= lt!34191 (lemmaMoveElementToOtherListKeepsConcatEq!6 testedP!367 lt!34193 lt!34197 totalInput!1363))))

(declare-fun tail!216 (List!1912) List!1912)

(assert (=> b!116096 (= lt!34197 (tail!216 testedSuffix!285))))

(declare-fun head!480 (List!1912) C!1920)

(assert (=> b!116096 (isPrefix!86 (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906)) totalInput!1363)))

(declare-fun lt!34185 () Unit!1396)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!10 (List!1912 List!1912) Unit!1396)

(assert (=> b!116096 (= lt!34185 (lemmaAddHeadSuffixToPrefixStillPrefix!10 testedP!367 totalInput!1363))))

(assert (=> b!116096 (= lt!34189 (++!339 testedP!367 (Cons!1906 lt!34193 Nil!1906)))))

(assert (=> b!116096 (= lt!34193 (head!480 testedSuffix!285))))

(declare-fun b!116097 () Bool)

(declare-fun res!55127 () Bool)

(assert (=> b!116097 (=> res!55127 e!65867)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!116097 (= res!55127 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!116098 () Bool)

(assert (=> b!116098 (= e!65879 e!65869)))

(declare-fun res!55128 () Bool)

(assert (=> b!116098 (=> (not res!55128) (not e!65869))))

(assert (=> b!116098 (= res!55128 (= totalInputSize!643 lt!34184))))

(assert (=> b!116098 (= lt!34184 (size!1720 totalInput!1363))))

(declare-fun b!116099 () Bool)

(assert (=> b!116099 (= e!65885 tp_is_empty!1053)))

(declare-fun b!116100 () Bool)

(declare-fun e!65880 () Bool)

(declare-fun tp!63438 () Bool)

(assert (=> b!116100 (= e!65880 (and tp_is_empty!1053 tp!63438))))

(declare-fun b!116101 () Bool)

(declare-fun e!65871 () Bool)

(assert (=> b!116101 (= e!65881 e!65871)))

(declare-fun res!55123 () Bool)

(assert (=> start!11834 (=> (not res!55123) (not e!65875))))

(declare-fun validRegex!107 (Regex!499) Bool)

(assert (=> start!11834 (= res!55123 (validRegex!107 r!15532))))

(assert (=> start!11834 e!65875))

(assert (=> start!11834 true))

(assert (=> start!11834 e!65885))

(assert (=> start!11834 e!65866))

(assert (=> start!11834 e!65882))

(assert (=> start!11834 e!65880))

(declare-fun inv!2420 (Cache!158) Bool)

(assert (=> start!11834 (and (inv!2420 cache!470) e!65874)))

(declare-fun b!116102 () Bool)

(declare-fun tp!63439 () Bool)

(declare-fun tp!63443 () Bool)

(assert (=> b!116102 (= e!65885 (and tp!63439 tp!63443))))

(declare-fun b!116103 () Bool)

(declare-fun res!55120 () Bool)

(assert (=> b!116103 (=> (not res!55120) (not e!65875))))

(declare-fun valid!331 (Cache!158) Bool)

(assert (=> b!116103 (= res!55120 (valid!331 cache!470))))

(declare-fun b!116104 () Bool)

(assert (=> b!116104 (= e!65871 e!65873)))

(assert (= (and start!11834 res!55123) b!116103))

(assert (= (and b!116103 res!55120) b!116093))

(assert (= (and b!116093 res!55121) b!116083))

(assert (= (and b!116083 res!55129) b!116098))

(assert (= (and b!116098 res!55128) b!116094))

(assert (= (and b!116094 (not res!55122)) b!116089))

(assert (= (and b!116089 (not res!55124)) b!116097))

(assert (= (and b!116097 (not res!55127)) b!116080))

(assert (= (and b!116080 c!26599) b!116079))

(assert (= (and b!116080 (not c!26599)) b!116084))

(assert (= (and b!116080 (not res!55125)) b!116096))

(assert (= (and b!116096 (not res!55126)) b!116088))

(assert (= (and start!11834 ((_ is ElementMatch!499) r!15532)) b!116099))

(assert (= (and start!11834 ((_ is Concat!883) r!15532)) b!116095))

(assert (= (and start!11834 ((_ is Star!499) r!15532)) b!116092))

(assert (= (and start!11834 ((_ is Union!499) r!15532)) b!116102))

(assert (= (and start!11834 ((_ is Cons!1906) totalInput!1363)) b!116086))

(assert (= (and start!11834 ((_ is Cons!1906) testedSuffix!285)) b!116081))

(assert (= (and start!11834 ((_ is Cons!1906) testedP!367)) b!116100))

(assert (= (and b!116090 condMapEmpty!1420) mapIsEmpty!1420))

(assert (= (and b!116090 (not condMapEmpty!1420)) mapNonEmpty!1420))

(assert (= b!116087 b!116090))

(assert (= b!116104 b!116087))

(assert (= b!116101 b!116104))

(assert (= (and b!116082 ((_ is LongMap!365) (v!13262 (underlying!930 (cache!813 cache!470))))) b!116101))

(assert (= b!116091 b!116082))

(assert (= (and b!116085 ((_ is HashMap!361) (cache!813 cache!470))) b!116091))

(assert (= start!11834 b!116085))

(declare-fun m!104340 () Bool)

(assert (=> mapNonEmpty!1420 m!104340))

(declare-fun m!104342 () Bool)

(assert (=> b!116103 m!104342))

(declare-fun m!104344 () Bool)

(assert (=> start!11834 m!104344))

(declare-fun m!104346 () Bool)

(assert (=> start!11834 m!104346))

(declare-fun m!104348 () Bool)

(assert (=> b!116088 m!104348))

(declare-fun m!104350 () Bool)

(assert (=> b!116089 m!104350))

(declare-fun m!104352 () Bool)

(assert (=> b!116089 m!104352))

(declare-fun m!104354 () Bool)

(assert (=> b!116089 m!104354))

(declare-fun m!104356 () Bool)

(assert (=> b!116080 m!104356))

(declare-fun m!104358 () Bool)

(assert (=> b!116087 m!104358))

(declare-fun m!104360 () Bool)

(assert (=> b!116087 m!104360))

(declare-fun m!104362 () Bool)

(assert (=> b!116079 m!104362))

(declare-fun m!104364 () Bool)

(assert (=> b!116079 m!104364))

(declare-fun m!104366 () Bool)

(assert (=> b!116079 m!104366))

(declare-fun m!104368 () Bool)

(assert (=> b!116096 m!104368))

(declare-fun m!104370 () Bool)

(assert (=> b!116096 m!104370))

(declare-fun m!104372 () Bool)

(assert (=> b!116096 m!104372))

(assert (=> b!116096 m!104370))

(declare-fun m!104374 () Bool)

(assert (=> b!116096 m!104374))

(declare-fun m!104376 () Bool)

(assert (=> b!116096 m!104376))

(declare-fun m!104378 () Bool)

(assert (=> b!116096 m!104378))

(declare-fun m!104380 () Bool)

(assert (=> b!116096 m!104380))

(declare-fun m!104382 () Bool)

(assert (=> b!116096 m!104382))

(declare-fun m!104384 () Bool)

(assert (=> b!116096 m!104384))

(declare-fun m!104386 () Bool)

(assert (=> b!116096 m!104386))

(declare-fun m!104388 () Bool)

(assert (=> b!116094 m!104388))

(declare-fun m!104390 () Bool)

(assert (=> b!116094 m!104390))

(declare-fun m!104392 () Bool)

(assert (=> b!116094 m!104392))

(declare-fun m!104394 () Bool)

(assert (=> b!116098 m!104394))

(declare-fun m!104396 () Bool)

(assert (=> b!116093 m!104396))

(declare-fun m!104398 () Bool)

(assert (=> b!116083 m!104398))

(check-sat (not b!116088) (not b!116095) b_and!5821 (not mapNonEmpty!1420) tp_is_empty!1053 (not b_next!3691) (not b!116103) (not b_next!3689) (not b!116094) (not b!116089) (not b!116092) (not b!116080) (not b!116087) (not b!116083) (not b!116086) (not b!116096) (not start!11834) (not b!116081) (not b!116079) b_and!5819 (not b!116090) (not b!116098) (not b!116093) (not b!116100) (not b!116102))
(check-sat b_and!5821 b_and!5819 (not b_next!3691) (not b_next!3689))
(get-model)

(declare-fun d!28347 () Bool)

(declare-fun lt!34201 () Int)

(assert (=> d!28347 (>= lt!34201 0)))

(declare-fun e!65889 () Int)

(assert (=> d!28347 (= lt!34201 e!65889)))

(declare-fun c!26603 () Bool)

(assert (=> d!28347 (= c!26603 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28347 (= (size!1720 testedP!367) lt!34201)))

(declare-fun b!116109 () Bool)

(assert (=> b!116109 (= e!65889 0)))

(declare-fun b!116110 () Bool)

(assert (=> b!116110 (= e!65889 (+ 1 (size!1720 (t!22389 testedP!367))))))

(assert (= (and d!28347 c!26603) b!116109))

(assert (= (and d!28347 (not c!26603)) b!116110))

(declare-fun m!104400 () Bool)

(assert (=> b!116110 m!104400))

(assert (=> b!116083 d!28347))

(declare-fun b!116120 () Bool)

(declare-fun e!65894 () List!1912)

(assert (=> b!116120 (= e!65894 (Cons!1906 (h!7303 testedP!367) (++!339 (t!22389 testedP!367) testedSuffix!285)))))

(declare-fun lt!34204 () List!1912)

(declare-fun e!65895 () Bool)

(declare-fun b!116122 () Bool)

(assert (=> b!116122 (= e!65895 (or (not (= testedSuffix!285 Nil!1906)) (= lt!34204 testedP!367)))))

(declare-fun d!28349 () Bool)

(assert (=> d!28349 e!65895))

(declare-fun res!55134 () Bool)

(assert (=> d!28349 (=> (not res!55134) (not e!65895))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!215 (List!1912) (InoxSet C!1920))

(assert (=> d!28349 (= res!55134 (= (content!215 lt!34204) ((_ map or) (content!215 testedP!367) (content!215 testedSuffix!285))))))

(assert (=> d!28349 (= lt!34204 e!65894)))

(declare-fun c!26606 () Bool)

(assert (=> d!28349 (= c!26606 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28349 (= (++!339 testedP!367 testedSuffix!285) lt!34204)))

(declare-fun b!116119 () Bool)

(assert (=> b!116119 (= e!65894 testedSuffix!285)))

(declare-fun b!116121 () Bool)

(declare-fun res!55135 () Bool)

(assert (=> b!116121 (=> (not res!55135) (not e!65895))))

(assert (=> b!116121 (= res!55135 (= (size!1720 lt!34204) (+ (size!1720 testedP!367) (size!1720 testedSuffix!285))))))

(assert (= (and d!28349 c!26606) b!116119))

(assert (= (and d!28349 (not c!26606)) b!116120))

(assert (= (and d!28349 res!55134) b!116121))

(assert (= (and b!116121 res!55135) b!116122))

(declare-fun m!104402 () Bool)

(assert (=> b!116120 m!104402))

(declare-fun m!104404 () Bool)

(assert (=> d!28349 m!104404))

(declare-fun m!104406 () Bool)

(assert (=> d!28349 m!104406))

(declare-fun m!104408 () Bool)

(assert (=> d!28349 m!104408))

(declare-fun m!104410 () Bool)

(assert (=> b!116121 m!104410))

(assert (=> b!116121 m!104398))

(declare-fun m!104412 () Bool)

(assert (=> b!116121 m!104412))

(assert (=> b!116093 d!28349))

(declare-fun d!28351 () Bool)

(declare-fun validCacheMap!17 (MutableMap!361) Bool)

(assert (=> d!28351 (= (valid!331 cache!470) (validCacheMap!17 (cache!813 cache!470)))))

(declare-fun bs!11837 () Bool)

(assert (= bs!11837 d!28351))

(declare-fun m!104414 () Bool)

(assert (=> bs!11837 m!104414))

(assert (=> b!116103 d!28351))

(declare-fun d!28353 () Bool)

(assert (=> d!28353 (<= (size!1720 testedP!367) (size!1720 totalInput!1363))))

(declare-fun lt!34207 () Unit!1396)

(declare-fun choose!1528 (List!1912 List!1912) Unit!1396)

(assert (=> d!28353 (= lt!34207 (choose!1528 testedP!367 totalInput!1363))))

(assert (=> d!28353 (isPrefix!86 testedP!367 totalInput!1363)))

(assert (=> d!28353 (= (lemmaIsPrefixThenSmallerEqSize!14 testedP!367 totalInput!1363) lt!34207)))

(declare-fun bs!11838 () Bool)

(assert (= bs!11838 d!28353))

(assert (=> bs!11838 m!104398))

(assert (=> bs!11838 m!104394))

(declare-fun m!104416 () Bool)

(assert (=> bs!11838 m!104416))

(assert (=> bs!11838 m!104388))

(assert (=> b!116080 d!28353))

(declare-fun d!28355 () Bool)

(declare-fun lt!34208 () Int)

(assert (=> d!28355 (>= lt!34208 0)))

(declare-fun e!65896 () Int)

(assert (=> d!28355 (= lt!34208 e!65896)))

(declare-fun c!26607 () Bool)

(assert (=> d!28355 (= c!26607 ((_ is Nil!1906) totalInput!1363))))

(assert (=> d!28355 (= (size!1720 totalInput!1363) lt!34208)))

(declare-fun b!116123 () Bool)

(assert (=> b!116123 (= e!65896 0)))

(declare-fun b!116124 () Bool)

(assert (=> b!116124 (= e!65896 (+ 1 (size!1720 (t!22389 totalInput!1363))))))

(assert (= (and d!28355 c!26607) b!116123))

(assert (= (and d!28355 (not c!26607)) b!116124))

(declare-fun m!104418 () Bool)

(assert (=> b!116124 m!104418))

(assert (=> b!116098 d!28355))

(declare-fun d!28357 () Bool)

(assert (=> d!28357 (isPrefix!86 totalInput!1363 totalInput!1363)))

(declare-fun lt!34211 () Unit!1396)

(declare-fun choose!1529 (List!1912 List!1912) Unit!1396)

(assert (=> d!28357 (= lt!34211 (choose!1529 totalInput!1363 totalInput!1363))))

(assert (=> d!28357 (= (lemmaIsPrefixRefl!69 totalInput!1363 totalInput!1363) lt!34211)))

(declare-fun bs!11839 () Bool)

(assert (= bs!11839 d!28357))

(assert (=> bs!11839 m!104364))

(declare-fun m!104420 () Bool)

(assert (=> bs!11839 m!104420))

(assert (=> b!116079 d!28357))

(declare-fun b!116133 () Bool)

(declare-fun e!65904 () Bool)

(declare-fun e!65905 () Bool)

(assert (=> b!116133 (= e!65904 e!65905)))

(declare-fun res!55145 () Bool)

(assert (=> b!116133 (=> (not res!55145) (not e!65905))))

(assert (=> b!116133 (= res!55145 (not ((_ is Nil!1906) totalInput!1363)))))

(declare-fun d!28359 () Bool)

(declare-fun e!65903 () Bool)

(assert (=> d!28359 e!65903))

(declare-fun res!55144 () Bool)

(assert (=> d!28359 (=> res!55144 e!65903)))

(declare-fun lt!34214 () Bool)

(assert (=> d!28359 (= res!55144 (not lt!34214))))

(assert (=> d!28359 (= lt!34214 e!65904)))

(declare-fun res!55147 () Bool)

(assert (=> d!28359 (=> res!55147 e!65904)))

(assert (=> d!28359 (= res!55147 ((_ is Nil!1906) totalInput!1363))))

(assert (=> d!28359 (= (isPrefix!86 totalInput!1363 totalInput!1363) lt!34214)))

(declare-fun b!116134 () Bool)

(declare-fun res!55146 () Bool)

(assert (=> b!116134 (=> (not res!55146) (not e!65905))))

(assert (=> b!116134 (= res!55146 (= (head!480 totalInput!1363) (head!480 totalInput!1363)))))

(declare-fun b!116136 () Bool)

(assert (=> b!116136 (= e!65903 (>= (size!1720 totalInput!1363) (size!1720 totalInput!1363)))))

(declare-fun b!116135 () Bool)

(assert (=> b!116135 (= e!65905 (isPrefix!86 (tail!216 totalInput!1363) (tail!216 totalInput!1363)))))

(assert (= (and d!28359 (not res!55147)) b!116133))

(assert (= (and b!116133 res!55145) b!116134))

(assert (= (and b!116134 res!55146) b!116135))

(assert (= (and d!28359 (not res!55144)) b!116136))

(declare-fun m!104422 () Bool)

(assert (=> b!116134 m!104422))

(assert (=> b!116134 m!104422))

(assert (=> b!116136 m!104394))

(assert (=> b!116136 m!104394))

(declare-fun m!104424 () Bool)

(assert (=> b!116135 m!104424))

(assert (=> b!116135 m!104424))

(assert (=> b!116135 m!104424))

(assert (=> b!116135 m!104424))

(declare-fun m!104426 () Bool)

(assert (=> b!116135 m!104426))

(assert (=> b!116079 d!28359))

(declare-fun d!28361 () Bool)

(assert (=> d!28361 (= totalInput!1363 testedP!367)))

(declare-fun lt!34217 () Unit!1396)

(declare-fun choose!1530 (List!1912 List!1912 List!1912) Unit!1396)

(assert (=> d!28361 (= lt!34217 (choose!1530 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28361 (isPrefix!86 totalInput!1363 totalInput!1363)))

(assert (=> d!28361 (= (lemmaIsPrefixSameLengthThenSameList!15 totalInput!1363 testedP!367 totalInput!1363) lt!34217)))

(declare-fun bs!11840 () Bool)

(assert (= bs!11840 d!28361))

(declare-fun m!104428 () Bool)

(assert (=> bs!11840 m!104428))

(assert (=> bs!11840 m!104364))

(assert (=> b!116079 d!28361))

(declare-fun d!28363 () Bool)

(declare-fun lostCauseFct!22 (Regex!499) Bool)

(assert (=> d!28363 (= (lostCause!41 r!15532) (lostCauseFct!22 r!15532))))

(declare-fun bs!11841 () Bool)

(assert (= bs!11841 d!28363))

(declare-fun m!104430 () Bool)

(assert (=> bs!11841 m!104430))

(assert (=> b!116089 d!28363))

(declare-fun d!28365 () Bool)

(assert (=> d!28365 (= testedSuffix!285 lt!34192)))

(declare-fun lt!34220 () Unit!1396)

(declare-fun choose!1531 (List!1912 List!1912 List!1912 List!1912 List!1912) Unit!1396)

(assert (=> d!28365 (= lt!34220 (choose!1531 testedP!367 testedSuffix!285 testedP!367 lt!34192 totalInput!1363))))

(assert (=> d!28365 (isPrefix!86 testedP!367 totalInput!1363)))

(assert (=> d!28365 (= (lemmaSamePrefixThenSameSuffix!29 testedP!367 testedSuffix!285 testedP!367 lt!34192 totalInput!1363) lt!34220)))

(declare-fun bs!11842 () Bool)

(assert (= bs!11842 d!28365))

(declare-fun m!104432 () Bool)

(assert (=> bs!11842 m!104432))

(assert (=> bs!11842 m!104388))

(assert (=> b!116089 d!28365))

(declare-fun d!28367 () Bool)

(declare-fun lt!34223 () List!1912)

(assert (=> d!28367 (= (++!339 testedP!367 lt!34223) totalInput!1363)))

(declare-fun e!65908 () List!1912)

(assert (=> d!28367 (= lt!34223 e!65908)))

(declare-fun c!26610 () Bool)

(assert (=> d!28367 (= c!26610 ((_ is Cons!1906) testedP!367))))

(assert (=> d!28367 (>= (size!1720 totalInput!1363) (size!1720 testedP!367))))

(assert (=> d!28367 (= (getSuffix!30 totalInput!1363 testedP!367) lt!34223)))

(declare-fun b!116141 () Bool)

(assert (=> b!116141 (= e!65908 (getSuffix!30 (tail!216 totalInput!1363) (t!22389 testedP!367)))))

(declare-fun b!116142 () Bool)

(assert (=> b!116142 (= e!65908 totalInput!1363)))

(assert (= (and d!28367 c!26610) b!116141))

(assert (= (and d!28367 (not c!26610)) b!116142))

(declare-fun m!104434 () Bool)

(assert (=> d!28367 m!104434))

(assert (=> d!28367 m!104394))

(assert (=> d!28367 m!104398))

(assert (=> b!116141 m!104424))

(assert (=> b!116141 m!104424))

(declare-fun m!104436 () Bool)

(assert (=> b!116141 m!104436))

(assert (=> b!116089 d!28367))

(declare-fun b!116163 () Bool)

(declare-fun e!65923 () Regex!499)

(declare-fun e!65922 () Regex!499)

(assert (=> b!116163 (= e!65923 e!65922)))

(declare-fun c!26622 () Bool)

(assert (=> b!116163 (= c!26622 ((_ is ElementMatch!499) r!15532))))

(declare-fun b!116164 () Bool)

(assert (=> b!116164 (= e!65922 (ite (= lt!34193 (c!26600 r!15532)) EmptyExpr!499 EmptyLang!499))))

(declare-fun b!116165 () Bool)

(declare-fun c!26621 () Bool)

(assert (=> b!116165 (= c!26621 ((_ is Union!499) r!15532))))

(declare-fun e!65921 () Regex!499)

(assert (=> b!116165 (= e!65922 e!65921)))

(declare-fun bm!4900 () Bool)

(declare-fun c!26624 () Bool)

(declare-fun call!4907 () Regex!499)

(assert (=> bm!4900 (= call!4907 (derivativeStep!38 (ite c!26621 (regTwo!1511 r!15532) (ite c!26624 (reg!828 r!15532) (regOne!1510 r!15532))) lt!34193))))

(declare-fun b!116166 () Bool)

(declare-fun c!26623 () Bool)

(assert (=> b!116166 (= c!26623 (nullable!65 (regOne!1510 r!15532)))))

(declare-fun e!65920 () Regex!499)

(declare-fun e!65919 () Regex!499)

(assert (=> b!116166 (= e!65920 e!65919)))

(declare-fun b!116167 () Bool)

(assert (=> b!116167 (= e!65921 e!65920)))

(assert (=> b!116167 (= c!26624 ((_ is Star!499) r!15532))))

(declare-fun call!4905 () Regex!499)

(declare-fun bm!4901 () Bool)

(assert (=> bm!4901 (= call!4905 (derivativeStep!38 (ite c!26621 (regOne!1511 r!15532) (regTwo!1510 r!15532)) lt!34193))))

(declare-fun b!116168 () Bool)

(declare-fun call!4908 () Regex!499)

(assert (=> b!116168 (= e!65919 (Union!499 (Concat!883 call!4908 (regTwo!1510 r!15532)) EmptyLang!499))))

(declare-fun d!28369 () Bool)

(declare-fun lt!34226 () Regex!499)

(assert (=> d!28369 (validRegex!107 lt!34226)))

(assert (=> d!28369 (= lt!34226 e!65923)))

(declare-fun c!26625 () Bool)

(assert (=> d!28369 (= c!26625 (or ((_ is EmptyExpr!499) r!15532) ((_ is EmptyLang!499) r!15532)))))

(assert (=> d!28369 (validRegex!107 r!15532)))

(assert (=> d!28369 (= (derivativeStep!38 r!15532 lt!34193) lt!34226)))

(declare-fun bm!4902 () Bool)

(declare-fun call!4906 () Regex!499)

(assert (=> bm!4902 (= call!4908 call!4906)))

(declare-fun b!116169 () Bool)

(assert (=> b!116169 (= e!65920 (Concat!883 call!4906 r!15532))))

(declare-fun b!116170 () Bool)

(assert (=> b!116170 (= e!65919 (Union!499 (Concat!883 call!4908 (regTwo!1510 r!15532)) call!4905))))

(declare-fun b!116171 () Bool)

(assert (=> b!116171 (= e!65923 EmptyLang!499)))

(declare-fun b!116172 () Bool)

(assert (=> b!116172 (= e!65921 (Union!499 call!4905 call!4907))))

(declare-fun bm!4903 () Bool)

(assert (=> bm!4903 (= call!4906 call!4907)))

(assert (= (and d!28369 c!26625) b!116171))

(assert (= (and d!28369 (not c!26625)) b!116163))

(assert (= (and b!116163 c!26622) b!116164))

(assert (= (and b!116163 (not c!26622)) b!116165))

(assert (= (and b!116165 c!26621) b!116172))

(assert (= (and b!116165 (not c!26621)) b!116167))

(assert (= (and b!116167 c!26624) b!116169))

(assert (= (and b!116167 (not c!26624)) b!116166))

(assert (= (and b!116166 c!26623) b!116170))

(assert (= (and b!116166 (not c!26623)) b!116168))

(assert (= (or b!116170 b!116168) bm!4902))

(assert (= (or b!116169 bm!4902) bm!4903))

(assert (= (or b!116172 bm!4903) bm!4900))

(assert (= (or b!116172 b!116170) bm!4901))

(declare-fun m!104438 () Bool)

(assert (=> bm!4900 m!104438))

(declare-fun m!104440 () Bool)

(assert (=> b!116166 m!104440))

(declare-fun m!104442 () Bool)

(assert (=> bm!4901 m!104442))

(declare-fun m!104444 () Bool)

(assert (=> d!28369 m!104444))

(assert (=> d!28369 m!104344))

(assert (=> b!116088 d!28369))

(declare-fun d!28371 () Bool)

(assert (=> d!28371 (= (array_inv!437 (_keys!656 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) (bvsge (size!1718 (_keys!656 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!116087 d!28371))

(declare-fun d!28373 () Bool)

(assert (=> d!28373 (= (array_inv!438 (_values!643 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) (bvsge (size!1719 (_values!643 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!116087 d!28373))

(declare-fun d!28375 () Bool)

(assert (=> d!28375 (= (head!480 testedSuffix!285) (h!7303 testedSuffix!285))))

(assert (=> b!116096 d!28375))

(declare-fun d!28377 () Bool)

(assert (=> d!28377 (= (tail!216 testedSuffix!285) (t!22389 testedSuffix!285))))

(assert (=> b!116096 d!28377))

(declare-fun d!28379 () Bool)

(assert (=> d!28379 (= (++!339 (++!339 testedP!367 (Cons!1906 lt!34193 Nil!1906)) lt!34197) totalInput!1363)))

(declare-fun lt!34229 () Unit!1396)

(declare-fun choose!1532 (List!1912 C!1920 List!1912 List!1912) Unit!1396)

(assert (=> d!28379 (= lt!34229 (choose!1532 testedP!367 lt!34193 lt!34197 totalInput!1363))))

(assert (=> d!28379 (= (++!339 testedP!367 (Cons!1906 lt!34193 lt!34197)) totalInput!1363)))

(assert (=> d!28379 (= (lemmaMoveElementToOtherListKeepsConcatEq!6 testedP!367 lt!34193 lt!34197 totalInput!1363) lt!34229)))

(declare-fun bs!11843 () Bool)

(assert (= bs!11843 d!28379))

(assert (=> bs!11843 m!104376))

(assert (=> bs!11843 m!104376))

(declare-fun m!104446 () Bool)

(assert (=> bs!11843 m!104446))

(declare-fun m!104448 () Bool)

(assert (=> bs!11843 m!104448))

(declare-fun m!104450 () Bool)

(assert (=> bs!11843 m!104450))

(assert (=> b!116096 d!28379))

(declare-fun d!28381 () Bool)

(declare-fun nullableFct!13 (Regex!499) Bool)

(assert (=> d!28381 (= (nullable!65 r!15532) (nullableFct!13 r!15532))))

(declare-fun bs!11844 () Bool)

(assert (= bs!11844 d!28381))

(declare-fun m!104452 () Bool)

(assert (=> bs!11844 m!104452))

(assert (=> b!116096 d!28381))

(declare-fun d!28383 () Bool)

(assert (=> d!28383 (isPrefix!86 (++!339 testedP!367 (Cons!1906 (head!480 (getSuffix!30 totalInput!1363 testedP!367)) Nil!1906)) totalInput!1363)))

(declare-fun lt!34232 () Unit!1396)

(declare-fun choose!1533 (List!1912 List!1912) Unit!1396)

(assert (=> d!28383 (= lt!34232 (choose!1533 testedP!367 totalInput!1363))))

(assert (=> d!28383 (isPrefix!86 testedP!367 totalInput!1363)))

(assert (=> d!28383 (= (lemmaAddHeadSuffixToPrefixStillPrefix!10 testedP!367 totalInput!1363) lt!34232)))

(declare-fun bs!11845 () Bool)

(assert (= bs!11845 d!28383))

(declare-fun m!104454 () Bool)

(assert (=> bs!11845 m!104454))

(declare-fun m!104456 () Bool)

(assert (=> bs!11845 m!104456))

(assert (=> bs!11845 m!104354))

(assert (=> bs!11845 m!104454))

(declare-fun m!104458 () Bool)

(assert (=> bs!11845 m!104458))

(assert (=> bs!11845 m!104388))

(assert (=> bs!11845 m!104354))

(declare-fun m!104460 () Bool)

(assert (=> bs!11845 m!104460))

(assert (=> b!116096 d!28383))

(declare-fun b!116174 () Bool)

(declare-fun e!65924 () List!1912)

(assert (=> b!116174 (= e!65924 (Cons!1906 (h!7303 testedP!367) (++!339 (t!22389 testedP!367) (Cons!1906 lt!34193 Nil!1906))))))

(declare-fun lt!34233 () List!1912)

(declare-fun e!65925 () Bool)

(declare-fun b!116176 () Bool)

(assert (=> b!116176 (= e!65925 (or (not (= (Cons!1906 lt!34193 Nil!1906) Nil!1906)) (= lt!34233 testedP!367)))))

(declare-fun d!28385 () Bool)

(assert (=> d!28385 e!65925))

(declare-fun res!55148 () Bool)

(assert (=> d!28385 (=> (not res!55148) (not e!65925))))

(assert (=> d!28385 (= res!55148 (= (content!215 lt!34233) ((_ map or) (content!215 testedP!367) (content!215 (Cons!1906 lt!34193 Nil!1906)))))))

(assert (=> d!28385 (= lt!34233 e!65924)))

(declare-fun c!26626 () Bool)

(assert (=> d!28385 (= c!26626 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28385 (= (++!339 testedP!367 (Cons!1906 lt!34193 Nil!1906)) lt!34233)))

(declare-fun b!116173 () Bool)

(assert (=> b!116173 (= e!65924 (Cons!1906 lt!34193 Nil!1906))))

(declare-fun b!116175 () Bool)

(declare-fun res!55149 () Bool)

(assert (=> b!116175 (=> (not res!55149) (not e!65925))))

(assert (=> b!116175 (= res!55149 (= (size!1720 lt!34233) (+ (size!1720 testedP!367) (size!1720 (Cons!1906 lt!34193 Nil!1906)))))))

(assert (= (and d!28385 c!26626) b!116173))

(assert (= (and d!28385 (not c!26626)) b!116174))

(assert (= (and d!28385 res!55148) b!116175))

(assert (= (and b!116175 res!55149) b!116176))

(declare-fun m!104462 () Bool)

(assert (=> b!116174 m!104462))

(declare-fun m!104464 () Bool)

(assert (=> d!28385 m!104464))

(assert (=> d!28385 m!104406))

(declare-fun m!104466 () Bool)

(assert (=> d!28385 m!104466))

(declare-fun m!104468 () Bool)

(assert (=> b!116175 m!104468))

(assert (=> b!116175 m!104398))

(declare-fun m!104470 () Bool)

(assert (=> b!116175 m!104470))

(assert (=> b!116096 d!28385))

(declare-fun b!116178 () Bool)

(declare-fun e!65926 () List!1912)

(assert (=> b!116178 (= e!65926 (Cons!1906 (h!7303 testedP!367) (++!339 (t!22389 testedP!367) (Cons!1906 (head!480 lt!34192) Nil!1906))))))

(declare-fun b!116180 () Bool)

(declare-fun e!65927 () Bool)

(declare-fun lt!34234 () List!1912)

(assert (=> b!116180 (= e!65927 (or (not (= (Cons!1906 (head!480 lt!34192) Nil!1906) Nil!1906)) (= lt!34234 testedP!367)))))

(declare-fun d!28387 () Bool)

(assert (=> d!28387 e!65927))

(declare-fun res!55150 () Bool)

(assert (=> d!28387 (=> (not res!55150) (not e!65927))))

(assert (=> d!28387 (= res!55150 (= (content!215 lt!34234) ((_ map or) (content!215 testedP!367) (content!215 (Cons!1906 (head!480 lt!34192) Nil!1906)))))))

(assert (=> d!28387 (= lt!34234 e!65926)))

(declare-fun c!26627 () Bool)

(assert (=> d!28387 (= c!26627 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28387 (= (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906)) lt!34234)))

(declare-fun b!116177 () Bool)

(assert (=> b!116177 (= e!65926 (Cons!1906 (head!480 lt!34192) Nil!1906))))

(declare-fun b!116179 () Bool)

(declare-fun res!55151 () Bool)

(assert (=> b!116179 (=> (not res!55151) (not e!65927))))

(assert (=> b!116179 (= res!55151 (= (size!1720 lt!34234) (+ (size!1720 testedP!367) (size!1720 (Cons!1906 (head!480 lt!34192) Nil!1906)))))))

(assert (= (and d!28387 c!26627) b!116177))

(assert (= (and d!28387 (not c!26627)) b!116178))

(assert (= (and d!28387 res!55150) b!116179))

(assert (= (and b!116179 res!55151) b!116180))

(declare-fun m!104472 () Bool)

(assert (=> b!116178 m!104472))

(declare-fun m!104474 () Bool)

(assert (=> d!28387 m!104474))

(assert (=> d!28387 m!104406))

(declare-fun m!104476 () Bool)

(assert (=> d!28387 m!104476))

(declare-fun m!104478 () Bool)

(assert (=> b!116179 m!104478))

(assert (=> b!116179 m!104398))

(declare-fun m!104480 () Bool)

(assert (=> b!116179 m!104480))

(assert (=> b!116096 d!28387))

(declare-fun b!116181 () Bool)

(declare-fun e!65929 () Bool)

(declare-fun e!65930 () Bool)

(assert (=> b!116181 (= e!65929 e!65930)))

(declare-fun res!55153 () Bool)

(assert (=> b!116181 (=> (not res!55153) (not e!65930))))

(assert (=> b!116181 (= res!55153 (not ((_ is Nil!1906) totalInput!1363)))))

(declare-fun d!28389 () Bool)

(declare-fun e!65928 () Bool)

(assert (=> d!28389 e!65928))

(declare-fun res!55152 () Bool)

(assert (=> d!28389 (=> res!55152 e!65928)))

(declare-fun lt!34235 () Bool)

(assert (=> d!28389 (= res!55152 (not lt!34235))))

(assert (=> d!28389 (= lt!34235 e!65929)))

(declare-fun res!55155 () Bool)

(assert (=> d!28389 (=> res!55155 e!65929)))

(assert (=> d!28389 (= res!55155 ((_ is Nil!1906) (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906))))))

(assert (=> d!28389 (= (isPrefix!86 (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906)) totalInput!1363) lt!34235)))

(declare-fun b!116182 () Bool)

(declare-fun res!55154 () Bool)

(assert (=> b!116182 (=> (not res!55154) (not e!65930))))

(assert (=> b!116182 (= res!55154 (= (head!480 (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906))) (head!480 totalInput!1363)))))

(declare-fun b!116184 () Bool)

(assert (=> b!116184 (= e!65928 (>= (size!1720 totalInput!1363) (size!1720 (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906)))))))

(declare-fun b!116183 () Bool)

(assert (=> b!116183 (= e!65930 (isPrefix!86 (tail!216 (++!339 testedP!367 (Cons!1906 (head!480 lt!34192) Nil!1906))) (tail!216 totalInput!1363)))))

(assert (= (and d!28389 (not res!55155)) b!116181))

(assert (= (and b!116181 res!55153) b!116182))

(assert (= (and b!116182 res!55154) b!116183))

(assert (= (and d!28389 (not res!55152)) b!116184))

(assert (=> b!116182 m!104370))

(declare-fun m!104482 () Bool)

(assert (=> b!116182 m!104482))

(assert (=> b!116182 m!104422))

(assert (=> b!116184 m!104394))

(assert (=> b!116184 m!104370))

(declare-fun m!104484 () Bool)

(assert (=> b!116184 m!104484))

(assert (=> b!116183 m!104370))

(declare-fun m!104486 () Bool)

(assert (=> b!116183 m!104486))

(assert (=> b!116183 m!104424))

(assert (=> b!116183 m!104486))

(assert (=> b!116183 m!104424))

(declare-fun m!104488 () Bool)

(assert (=> b!116183 m!104488))

(assert (=> b!116096 d!28389))

(declare-fun d!28391 () Bool)

(assert (=> d!28391 (= (head!480 lt!34192) (h!7303 lt!34192))))

(assert (=> b!116096 d!28391))

(declare-fun b!116186 () Bool)

(declare-fun e!65931 () List!1912)

(assert (=> b!116186 (= e!65931 (Cons!1906 (h!7303 lt!34189) (++!339 (t!22389 lt!34189) lt!34197)))))

(declare-fun b!116188 () Bool)

(declare-fun e!65932 () Bool)

(declare-fun lt!34236 () List!1912)

(assert (=> b!116188 (= e!65932 (or (not (= lt!34197 Nil!1906)) (= lt!34236 lt!34189)))))

(declare-fun d!28393 () Bool)

(assert (=> d!28393 e!65932))

(declare-fun res!55156 () Bool)

(assert (=> d!28393 (=> (not res!55156) (not e!65932))))

(assert (=> d!28393 (= res!55156 (= (content!215 lt!34236) ((_ map or) (content!215 lt!34189) (content!215 lt!34197))))))

(assert (=> d!28393 (= lt!34236 e!65931)))

(declare-fun c!26628 () Bool)

(assert (=> d!28393 (= c!26628 ((_ is Nil!1906) lt!34189))))

(assert (=> d!28393 (= (++!339 lt!34189 lt!34197) lt!34236)))

(declare-fun b!116185 () Bool)

(assert (=> b!116185 (= e!65931 lt!34197)))

(declare-fun b!116187 () Bool)

(declare-fun res!55157 () Bool)

(assert (=> b!116187 (=> (not res!55157) (not e!65932))))

(assert (=> b!116187 (= res!55157 (= (size!1720 lt!34236) (+ (size!1720 lt!34189) (size!1720 lt!34197))))))

(assert (= (and d!28393 c!26628) b!116185))

(assert (= (and d!28393 (not c!26628)) b!116186))

(assert (= (and d!28393 res!55156) b!116187))

(assert (= (and b!116187 res!55157) b!116188))

(declare-fun m!104490 () Bool)

(assert (=> b!116186 m!104490))

(declare-fun m!104492 () Bool)

(assert (=> d!28393 m!104492))

(declare-fun m!104494 () Bool)

(assert (=> d!28393 m!104494))

(declare-fun m!104496 () Bool)

(assert (=> d!28393 m!104496))

(declare-fun m!104498 () Bool)

(assert (=> b!116187 m!104498))

(declare-fun m!104500 () Bool)

(assert (=> b!116187 m!104500))

(declare-fun m!104502 () Bool)

(assert (=> b!116187 m!104502))

(assert (=> b!116096 d!28393))

(declare-fun b!116207 () Bool)

(declare-fun e!65952 () Bool)

(declare-fun e!65950 () Bool)

(assert (=> b!116207 (= e!65952 e!65950)))

(declare-fun res!55168 () Bool)

(assert (=> b!116207 (= res!55168 (not (nullable!65 (reg!828 r!15532))))))

(assert (=> b!116207 (=> (not res!55168) (not e!65950))))

(declare-fun d!28395 () Bool)

(declare-fun res!55169 () Bool)

(declare-fun e!65948 () Bool)

(assert (=> d!28395 (=> res!55169 e!65948)))

(assert (=> d!28395 (= res!55169 ((_ is ElementMatch!499) r!15532))))

(assert (=> d!28395 (= (validRegex!107 r!15532) e!65948)))

(declare-fun c!26633 () Bool)

(declare-fun c!26634 () Bool)

(declare-fun bm!4910 () Bool)

(declare-fun call!4915 () Bool)

(assert (=> bm!4910 (= call!4915 (validRegex!107 (ite c!26634 (reg!828 r!15532) (ite c!26633 (regOne!1511 r!15532) (regTwo!1510 r!15532)))))))

(declare-fun b!116208 () Bool)

(declare-fun e!65951 () Bool)

(declare-fun call!4916 () Bool)

(assert (=> b!116208 (= e!65951 call!4916)))

(declare-fun b!116209 () Bool)

(declare-fun res!55172 () Bool)

(assert (=> b!116209 (=> (not res!55172) (not e!65951))))

(declare-fun call!4917 () Bool)

(assert (=> b!116209 (= res!55172 call!4917)))

(declare-fun e!65953 () Bool)

(assert (=> b!116209 (= e!65953 e!65951)))

(declare-fun b!116210 () Bool)

(assert (=> b!116210 (= e!65952 e!65953)))

(assert (=> b!116210 (= c!26633 ((_ is Union!499) r!15532))))

(declare-fun b!116211 () Bool)

(declare-fun e!65947 () Bool)

(declare-fun e!65949 () Bool)

(assert (=> b!116211 (= e!65947 e!65949)))

(declare-fun res!55171 () Bool)

(assert (=> b!116211 (=> (not res!55171) (not e!65949))))

(assert (=> b!116211 (= res!55171 call!4916)))

(declare-fun b!116212 () Bool)

(declare-fun res!55170 () Bool)

(assert (=> b!116212 (=> res!55170 e!65947)))

(assert (=> b!116212 (= res!55170 (not ((_ is Concat!883) r!15532)))))

(assert (=> b!116212 (= e!65953 e!65947)))

(declare-fun bm!4911 () Bool)

(assert (=> bm!4911 (= call!4916 (validRegex!107 (ite c!26633 (regTwo!1511 r!15532) (regOne!1510 r!15532))))))

(declare-fun b!116213 () Bool)

(assert (=> b!116213 (= e!65949 call!4917)))

(declare-fun bm!4912 () Bool)

(assert (=> bm!4912 (= call!4917 call!4915)))

(declare-fun b!116214 () Bool)

(assert (=> b!116214 (= e!65948 e!65952)))

(assert (=> b!116214 (= c!26634 ((_ is Star!499) r!15532))))

(declare-fun b!116215 () Bool)

(assert (=> b!116215 (= e!65950 call!4915)))

(assert (= (and d!28395 (not res!55169)) b!116214))

(assert (= (and b!116214 c!26634) b!116207))

(assert (= (and b!116214 (not c!26634)) b!116210))

(assert (= (and b!116207 res!55168) b!116215))

(assert (= (and b!116210 c!26633) b!116209))

(assert (= (and b!116210 (not c!26633)) b!116212))

(assert (= (and b!116209 res!55172) b!116208))

(assert (= (and b!116212 (not res!55170)) b!116211))

(assert (= (and b!116211 res!55171) b!116213))

(assert (= (or b!116208 b!116211) bm!4911))

(assert (= (or b!116209 b!116213) bm!4912))

(assert (= (or b!116215 bm!4912) bm!4910))

(declare-fun m!104504 () Bool)

(assert (=> b!116207 m!104504))

(declare-fun m!104506 () Bool)

(assert (=> bm!4910 m!104506))

(declare-fun m!104508 () Bool)

(assert (=> bm!4911 m!104508))

(assert (=> start!11834 d!28395))

(declare-fun d!28397 () Bool)

(declare-fun res!55175 () Bool)

(declare-fun e!65956 () Bool)

(assert (=> d!28397 (=> (not res!55175) (not e!65956))))

(assert (=> d!28397 (= res!55175 ((_ is HashMap!361) (cache!813 cache!470)))))

(assert (=> d!28397 (= (inv!2420 cache!470) e!65956)))

(declare-fun b!116218 () Bool)

(assert (=> b!116218 (= e!65956 (validCacheMap!17 (cache!813 cache!470)))))

(assert (= (and d!28397 res!55175) b!116218))

(assert (=> b!116218 m!104414))

(assert (=> start!11834 d!28397))

(declare-fun b!116219 () Bool)

(declare-fun e!65958 () Bool)

(declare-fun e!65959 () Bool)

(assert (=> b!116219 (= e!65958 e!65959)))

(declare-fun res!55177 () Bool)

(assert (=> b!116219 (=> (not res!55177) (not e!65959))))

(assert (=> b!116219 (= res!55177 (not ((_ is Nil!1906) totalInput!1363)))))

(declare-fun d!28399 () Bool)

(declare-fun e!65957 () Bool)

(assert (=> d!28399 e!65957))

(declare-fun res!55176 () Bool)

(assert (=> d!28399 (=> res!55176 e!65957)))

(declare-fun lt!34237 () Bool)

(assert (=> d!28399 (= res!55176 (not lt!34237))))

(assert (=> d!28399 (= lt!34237 e!65958)))

(declare-fun res!55179 () Bool)

(assert (=> d!28399 (=> res!55179 e!65958)))

(assert (=> d!28399 (= res!55179 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28399 (= (isPrefix!86 testedP!367 totalInput!1363) lt!34237)))

(declare-fun b!116220 () Bool)

(declare-fun res!55178 () Bool)

(assert (=> b!116220 (=> (not res!55178) (not e!65959))))

(assert (=> b!116220 (= res!55178 (= (head!480 testedP!367) (head!480 totalInput!1363)))))

(declare-fun b!116222 () Bool)

(assert (=> b!116222 (= e!65957 (>= (size!1720 totalInput!1363) (size!1720 testedP!367)))))

(declare-fun b!116221 () Bool)

(assert (=> b!116221 (= e!65959 (isPrefix!86 (tail!216 testedP!367) (tail!216 totalInput!1363)))))

(assert (= (and d!28399 (not res!55179)) b!116219))

(assert (= (and b!116219 res!55177) b!116220))

(assert (= (and b!116220 res!55178) b!116221))

(assert (= (and d!28399 (not res!55176)) b!116222))

(declare-fun m!104510 () Bool)

(assert (=> b!116220 m!104510))

(assert (=> b!116220 m!104422))

(assert (=> b!116222 m!104394))

(assert (=> b!116222 m!104398))

(declare-fun m!104512 () Bool)

(assert (=> b!116221 m!104512))

(assert (=> b!116221 m!104424))

(assert (=> b!116221 m!104512))

(assert (=> b!116221 m!104424))

(declare-fun m!104514 () Bool)

(assert (=> b!116221 m!104514))

(assert (=> b!116094 d!28399))

(declare-fun b!116223 () Bool)

(declare-fun e!65961 () Bool)

(declare-fun e!65962 () Bool)

(assert (=> b!116223 (= e!65961 e!65962)))

(declare-fun res!55181 () Bool)

(assert (=> b!116223 (=> (not res!55181) (not e!65962))))

(assert (=> b!116223 (= res!55181 (not ((_ is Nil!1906) lt!34195)))))

(declare-fun d!28401 () Bool)

(declare-fun e!65960 () Bool)

(assert (=> d!28401 e!65960))

(declare-fun res!55180 () Bool)

(assert (=> d!28401 (=> res!55180 e!65960)))

(declare-fun lt!34238 () Bool)

(assert (=> d!28401 (= res!55180 (not lt!34238))))

(assert (=> d!28401 (= lt!34238 e!65961)))

(declare-fun res!55183 () Bool)

(assert (=> d!28401 (=> res!55183 e!65961)))

(assert (=> d!28401 (= res!55183 ((_ is Nil!1906) testedP!367))))

(assert (=> d!28401 (= (isPrefix!86 testedP!367 lt!34195) lt!34238)))

(declare-fun b!116224 () Bool)

(declare-fun res!55182 () Bool)

(assert (=> b!116224 (=> (not res!55182) (not e!65962))))

(assert (=> b!116224 (= res!55182 (= (head!480 testedP!367) (head!480 lt!34195)))))

(declare-fun b!116226 () Bool)

(assert (=> b!116226 (= e!65960 (>= (size!1720 lt!34195) (size!1720 testedP!367)))))

(declare-fun b!116225 () Bool)

(assert (=> b!116225 (= e!65962 (isPrefix!86 (tail!216 testedP!367) (tail!216 lt!34195)))))

(assert (= (and d!28401 (not res!55183)) b!116223))

(assert (= (and b!116223 res!55181) b!116224))

(assert (= (and b!116224 res!55182) b!116225))

(assert (= (and d!28401 (not res!55180)) b!116226))

(assert (=> b!116224 m!104510))

(declare-fun m!104516 () Bool)

(assert (=> b!116224 m!104516))

(declare-fun m!104518 () Bool)

(assert (=> b!116226 m!104518))

(assert (=> b!116226 m!104398))

(assert (=> b!116225 m!104512))

(declare-fun m!104520 () Bool)

(assert (=> b!116225 m!104520))

(assert (=> b!116225 m!104512))

(assert (=> b!116225 m!104520))

(declare-fun m!104522 () Bool)

(assert (=> b!116225 m!104522))

(assert (=> b!116094 d!28401))

(declare-fun d!28403 () Bool)

(assert (=> d!28403 (isPrefix!86 testedP!367 (++!339 testedP!367 testedSuffix!285))))

(declare-fun lt!34241 () Unit!1396)

(declare-fun choose!1534 (List!1912 List!1912) Unit!1396)

(assert (=> d!28403 (= lt!34241 (choose!1534 testedP!367 testedSuffix!285))))

(assert (=> d!28403 (= (lemmaConcatTwoListThenFirstIsPrefix!33 testedP!367 testedSuffix!285) lt!34241)))

(declare-fun bs!11846 () Bool)

(assert (= bs!11846 d!28403))

(assert (=> bs!11846 m!104396))

(assert (=> bs!11846 m!104396))

(declare-fun m!104524 () Bool)

(assert (=> bs!11846 m!104524))

(declare-fun m!104526 () Bool)

(assert (=> bs!11846 m!104526))

(assert (=> b!116094 d!28403))

(declare-fun mapIsEmpty!1423 () Bool)

(declare-fun mapRes!1423 () Bool)

(assert (=> mapIsEmpty!1423 mapRes!1423))

(declare-fun tp!63467 () Bool)

(declare-fun e!65967 () Bool)

(declare-fun tp!63463 () Bool)

(declare-fun b!116234 () Bool)

(declare-fun tp!63466 () Bool)

(assert (=> b!116234 (= e!65967 (and tp!63467 tp_is_empty!1053 tp!63463 tp!63466))))

(declare-fun condMapEmpty!1423 () Bool)

(declare-fun mapDefault!1423 () List!1913)

(assert (=> mapNonEmpty!1420 (= condMapEmpty!1423 (= mapRest!1420 ((as const (Array (_ BitVec 32) List!1913)) mapDefault!1423)))))

(assert (=> mapNonEmpty!1420 (= tp!63441 (and e!65967 mapRes!1423))))

(declare-fun mapNonEmpty!1423 () Bool)

(declare-fun tp!63461 () Bool)

(declare-fun e!65968 () Bool)

(assert (=> mapNonEmpty!1423 (= mapRes!1423 (and tp!63461 e!65968))))

(declare-fun mapValue!1423 () List!1913)

(declare-fun mapRest!1423 () (Array (_ BitVec 32) List!1913))

(declare-fun mapKey!1423 () (_ BitVec 32))

(assert (=> mapNonEmpty!1423 (= mapRest!1420 (store mapRest!1423 mapKey!1423 mapValue!1423))))

(declare-fun tp!63464 () Bool)

(declare-fun tp!63465 () Bool)

(declare-fun tp!63462 () Bool)

(declare-fun b!116233 () Bool)

(assert (=> b!116233 (= e!65968 (and tp!63465 tp_is_empty!1053 tp!63464 tp!63462))))

(assert (= (and mapNonEmpty!1420 condMapEmpty!1423) mapIsEmpty!1423))

(assert (= (and mapNonEmpty!1420 (not condMapEmpty!1423)) mapNonEmpty!1423))

(assert (= (and mapNonEmpty!1423 ((_ is Cons!1907) mapValue!1423)) b!116233))

(assert (= (and mapNonEmpty!1420 ((_ is Cons!1907) mapDefault!1423)) b!116234))

(declare-fun m!104528 () Bool)

(assert (=> mapNonEmpty!1423 m!104528))

(declare-fun b!116239 () Bool)

(declare-fun tp!63476 () Bool)

(declare-fun tp!63475 () Bool)

(declare-fun e!65971 () Bool)

(declare-fun tp!63474 () Bool)

(assert (=> b!116239 (= e!65971 (and tp!63474 tp_is_empty!1053 tp!63475 tp!63476))))

(assert (=> mapNonEmpty!1420 (= tp!63446 e!65971)))

(assert (= (and mapNonEmpty!1420 ((_ is Cons!1907) mapValue!1420)) b!116239))

(declare-fun b!116252 () Bool)

(declare-fun e!65974 () Bool)

(declare-fun tp!63490 () Bool)

(assert (=> b!116252 (= e!65974 tp!63490)))

(declare-fun b!116251 () Bool)

(declare-fun tp!63487 () Bool)

(declare-fun tp!63488 () Bool)

(assert (=> b!116251 (= e!65974 (and tp!63487 tp!63488))))

(declare-fun b!116253 () Bool)

(declare-fun tp!63489 () Bool)

(declare-fun tp!63491 () Bool)

(assert (=> b!116253 (= e!65974 (and tp!63489 tp!63491))))

(assert (=> b!116102 (= tp!63439 e!65974)))

(declare-fun b!116250 () Bool)

(assert (=> b!116250 (= e!65974 tp_is_empty!1053)))

(assert (= (and b!116102 ((_ is ElementMatch!499) (regOne!1511 r!15532))) b!116250))

(assert (= (and b!116102 ((_ is Concat!883) (regOne!1511 r!15532))) b!116251))

(assert (= (and b!116102 ((_ is Star!499) (regOne!1511 r!15532))) b!116252))

(assert (= (and b!116102 ((_ is Union!499) (regOne!1511 r!15532))) b!116253))

(declare-fun b!116256 () Bool)

(declare-fun e!65975 () Bool)

(declare-fun tp!63495 () Bool)

(assert (=> b!116256 (= e!65975 tp!63495)))

(declare-fun b!116255 () Bool)

(declare-fun tp!63492 () Bool)

(declare-fun tp!63493 () Bool)

(assert (=> b!116255 (= e!65975 (and tp!63492 tp!63493))))

(declare-fun b!116257 () Bool)

(declare-fun tp!63494 () Bool)

(declare-fun tp!63496 () Bool)

(assert (=> b!116257 (= e!65975 (and tp!63494 tp!63496))))

(assert (=> b!116102 (= tp!63443 e!65975)))

(declare-fun b!116254 () Bool)

(assert (=> b!116254 (= e!65975 tp_is_empty!1053)))

(assert (= (and b!116102 ((_ is ElementMatch!499) (regTwo!1511 r!15532))) b!116254))

(assert (= (and b!116102 ((_ is Concat!883) (regTwo!1511 r!15532))) b!116255))

(assert (= (and b!116102 ((_ is Star!499) (regTwo!1511 r!15532))) b!116256))

(assert (= (and b!116102 ((_ is Union!499) (regTwo!1511 r!15532))) b!116257))

(declare-fun tp!63498 () Bool)

(declare-fun tp!63497 () Bool)

(declare-fun b!116258 () Bool)

(declare-fun tp!63499 () Bool)

(declare-fun e!65976 () Bool)

(assert (=> b!116258 (= e!65976 (and tp!63497 tp_is_empty!1053 tp!63498 tp!63499))))

(assert (=> b!116087 (= tp!63434 e!65976)))

(assert (= (and b!116087 ((_ is Cons!1907) (zeroValue!621 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470)))))))) b!116258))

(declare-fun e!65977 () Bool)

(declare-fun tp!63500 () Bool)

(declare-fun tp!63501 () Bool)

(declare-fun tp!63502 () Bool)

(declare-fun b!116259 () Bool)

(assert (=> b!116259 (= e!65977 (and tp!63500 tp_is_empty!1053 tp!63501 tp!63502))))

(assert (=> b!116087 (= tp!63437 e!65977)))

(assert (= (and b!116087 ((_ is Cons!1907) (minValue!621 (v!13261 (underlying!929 (v!13262 (underlying!930 (cache!813 cache!470)))))))) b!116259))

(declare-fun b!116262 () Bool)

(declare-fun e!65978 () Bool)

(declare-fun tp!63506 () Bool)

(assert (=> b!116262 (= e!65978 tp!63506)))

(declare-fun b!116261 () Bool)

(declare-fun tp!63503 () Bool)

(declare-fun tp!63504 () Bool)

(assert (=> b!116261 (= e!65978 (and tp!63503 tp!63504))))

(declare-fun b!116263 () Bool)

(declare-fun tp!63505 () Bool)

(declare-fun tp!63507 () Bool)

(assert (=> b!116263 (= e!65978 (and tp!63505 tp!63507))))

(assert (=> b!116092 (= tp!63433 e!65978)))

(declare-fun b!116260 () Bool)

(assert (=> b!116260 (= e!65978 tp_is_empty!1053)))

(assert (= (and b!116092 ((_ is ElementMatch!499) (reg!828 r!15532))) b!116260))

(assert (= (and b!116092 ((_ is Concat!883) (reg!828 r!15532))) b!116261))

(assert (= (and b!116092 ((_ is Star!499) (reg!828 r!15532))) b!116262))

(assert (= (and b!116092 ((_ is Union!499) (reg!828 r!15532))) b!116263))

(declare-fun tp!63510 () Bool)

(declare-fun b!116264 () Bool)

(declare-fun e!65979 () Bool)

(declare-fun tp!63508 () Bool)

(declare-fun tp!63509 () Bool)

(assert (=> b!116264 (= e!65979 (and tp!63508 tp_is_empty!1053 tp!63509 tp!63510))))

(assert (=> b!116090 (= tp!63436 e!65979)))

(assert (= (and b!116090 ((_ is Cons!1907) mapDefault!1420)) b!116264))

(declare-fun b!116269 () Bool)

(declare-fun e!65982 () Bool)

(declare-fun tp!63513 () Bool)

(assert (=> b!116269 (= e!65982 (and tp_is_empty!1053 tp!63513))))

(assert (=> b!116100 (= tp!63438 e!65982)))

(assert (= (and b!116100 ((_ is Cons!1906) (t!22389 testedP!367))) b!116269))

(declare-fun b!116270 () Bool)

(declare-fun e!65983 () Bool)

(declare-fun tp!63514 () Bool)

(assert (=> b!116270 (= e!65983 (and tp_is_empty!1053 tp!63514))))

(assert (=> b!116086 (= tp!63432 e!65983)))

(assert (= (and b!116086 ((_ is Cons!1906) (t!22389 totalInput!1363))) b!116270))

(declare-fun b!116273 () Bool)

(declare-fun e!65984 () Bool)

(declare-fun tp!63518 () Bool)

(assert (=> b!116273 (= e!65984 tp!63518)))

(declare-fun b!116272 () Bool)

(declare-fun tp!63515 () Bool)

(declare-fun tp!63516 () Bool)

(assert (=> b!116272 (= e!65984 (and tp!63515 tp!63516))))

(declare-fun b!116274 () Bool)

(declare-fun tp!63517 () Bool)

(declare-fun tp!63519 () Bool)

(assert (=> b!116274 (= e!65984 (and tp!63517 tp!63519))))

(assert (=> b!116095 (= tp!63440 e!65984)))

(declare-fun b!116271 () Bool)

(assert (=> b!116271 (= e!65984 tp_is_empty!1053)))

(assert (= (and b!116095 ((_ is ElementMatch!499) (regOne!1510 r!15532))) b!116271))

(assert (= (and b!116095 ((_ is Concat!883) (regOne!1510 r!15532))) b!116272))

(assert (= (and b!116095 ((_ is Star!499) (regOne!1510 r!15532))) b!116273))

(assert (= (and b!116095 ((_ is Union!499) (regOne!1510 r!15532))) b!116274))

(declare-fun b!116277 () Bool)

(declare-fun e!65985 () Bool)

(declare-fun tp!63523 () Bool)

(assert (=> b!116277 (= e!65985 tp!63523)))

(declare-fun b!116276 () Bool)

(declare-fun tp!63520 () Bool)

(declare-fun tp!63521 () Bool)

(assert (=> b!116276 (= e!65985 (and tp!63520 tp!63521))))

(declare-fun b!116278 () Bool)

(declare-fun tp!63522 () Bool)

(declare-fun tp!63524 () Bool)

(assert (=> b!116278 (= e!65985 (and tp!63522 tp!63524))))

(assert (=> b!116095 (= tp!63435 e!65985)))

(declare-fun b!116275 () Bool)

(assert (=> b!116275 (= e!65985 tp_is_empty!1053)))

(assert (= (and b!116095 ((_ is ElementMatch!499) (regTwo!1510 r!15532))) b!116275))

(assert (= (and b!116095 ((_ is Concat!883) (regTwo!1510 r!15532))) b!116276))

(assert (= (and b!116095 ((_ is Star!499) (regTwo!1510 r!15532))) b!116277))

(assert (= (and b!116095 ((_ is Union!499) (regTwo!1510 r!15532))) b!116278))

(declare-fun b!116279 () Bool)

(declare-fun e!65986 () Bool)

(declare-fun tp!63525 () Bool)

(assert (=> b!116279 (= e!65986 (and tp_is_empty!1053 tp!63525))))

(assert (=> b!116081 (= tp!63444 e!65986)))

(assert (= (and b!116081 ((_ is Cons!1906) (t!22389 testedSuffix!285))) b!116279))

(check-sat (not b!116261) (not b_next!3691) (not bm!4901) (not d!28381) (not b!116277) (not b!116224) (not b!116233) (not b!116207) (not b!116225) (not b!116279) (not d!28357) (not b!116166) (not d!28351) (not d!28387) b_and!5821 (not b!116226) (not b!116253) (not d!28393) (not b!116257) (not d!28363) (not d!28385) (not b!116134) (not b!116222) tp_is_empty!1053 (not b!116136) (not b!116186) (not b!116259) (not b!116251) (not b!116110) (not b!116269) (not bm!4900) (not b!116263) (not b!116174) (not d!28369) (not b!116183) (not b!116187) (not d!28367) (not b!116239) (not b!116221) (not b!116124) (not b!116121) (not b!116182) (not b_next!3689) (not d!28383) (not b!116258) (not b!116184) b_and!5819 (not b!116179) (not d!28365) (not b!116274) (not mapNonEmpty!1423) (not d!28353) (not b!116273) (not bm!4911) (not b!116220) (not b!116234) (not b!116175) (not b!116276) (not b!116120) (not b!116270) (not d!28403) (not b!116262) (not b!116178) (not b!116141) (not b!116252) (not b!116272) (not d!28349) (not b!116255) (not d!28361) (not bm!4910) (not d!28379) (not b!116218) (not b!116264) (not b!116135) (not b!116278) (not b!116256))
(check-sat b_and!5821 b_and!5819 (not b_next!3691) (not b_next!3689))
