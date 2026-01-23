; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12088 () Bool)

(assert start!12088)

(declare-fun b!119385 () Bool)

(declare-fun b_free!3817 () Bool)

(declare-fun b_next!3817 () Bool)

(assert (=> b!119385 (= b_free!3817 (not b_next!3817))))

(declare-fun tp!65559 () Bool)

(declare-fun b_and!5947 () Bool)

(assert (=> b!119385 (= tp!65559 b_and!5947)))

(declare-fun b!119400 () Bool)

(declare-fun b_free!3819 () Bool)

(declare-fun b_next!3819 () Bool)

(assert (=> b!119400 (= b_free!3819 (not b_next!3819))))

(declare-fun tp!65561 () Bool)

(declare-fun b_and!5949 () Bool)

(assert (=> b!119400 (= tp!65561 b_and!5949)))

(declare-fun b!119380 () Bool)

(declare-fun e!68181 () Bool)

(declare-fun e!68167 () Bool)

(assert (=> b!119380 (= e!68181 e!68167)))

(declare-fun b!119382 () Bool)

(declare-fun res!56185 () Bool)

(declare-fun e!68182 () Bool)

(assert (=> b!119382 (=> (not res!56185) (not e!68182))))

(declare-datatypes ((C!1984 0))(
  ( (C!1985 (val!718 Int)) )
))
(declare-datatypes ((Regex!531 0))(
  ( (ElementMatch!531 (c!26839 C!1984)) (Concat!915 (regOne!1574 Regex!531) (regTwo!1574 Regex!531)) (EmptyExpr!531) (Star!531 (reg!860 Regex!531)) (EmptyLang!531) (Union!531 (regOne!1575 Regex!531) (regTwo!1575 Regex!531)) )
))
(declare-datatypes ((Hashable!393 0))(
  ( (HashableExt!392 (__x!2116 Int)) )
))
(declare-datatypes ((tuple2!2250 0))(
  ( (tuple2!2251 (_1!1335 Regex!531) (_2!1335 C!1984)) )
))
(declare-datatypes ((tuple2!2252 0))(
  ( (tuple2!2253 (_1!1336 tuple2!2250) (_2!1336 Regex!531)) )
))
(declare-datatypes ((List!1974 0))(
  ( (Nil!1968) (Cons!1968 (h!7365 tuple2!2252) (t!22451 List!1974)) )
))
(declare-datatypes ((array!1455 0))(
  ( (array!1456 (arr!678 (Array (_ BitVec 32) (_ BitVec 64))) (size!1810 (_ BitVec 32))) )
))
(declare-datatypes ((array!1457 0))(
  ( (array!1458 (arr!679 (Array (_ BitVec 32) List!1974)) (size!1811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!794 0))(
  ( (LongMapFixedSize!795 (defaultEntry!736 Int) (mask!1330 (_ BitVec 32)) (extraKeys!643 (_ BitVec 32)) (zeroValue!653 List!1974) (minValue!653 List!1974) (_size!927 (_ BitVec 32)) (_keys!688 array!1455) (_values!675 array!1457) (_vacant!458 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1577 0))(
  ( (Cell!1578 (v!13325 LongMapFixedSize!794)) )
))
(declare-datatypes ((MutLongMap!397 0))(
  ( (LongMap!397 (underlying!993 Cell!1577)) (MutLongMapExt!396 (__x!2117 Int)) )
))
(declare-datatypes ((Cell!1579 0))(
  ( (Cell!1580 (v!13326 MutLongMap!397)) )
))
(declare-datatypes ((MutableMap!393 0))(
  ( (MutableMapExt!392 (__x!2118 Int)) (HashMap!393 (underlying!994 Cell!1579) (hashF!2269 Hashable!393) (_size!928 (_ BitVec 32)) (defaultValue!542 Int)) )
))
(declare-datatypes ((Cache!222 0))(
  ( (Cache!223 (cache!845 MutableMap!393)) )
))
(declare-fun cache!470 () Cache!222)

(declare-fun valid!359 (Cache!222) Bool)

(assert (=> b!119382 (= res!56185 (valid!359 cache!470))))

(declare-fun b!119383 () Bool)

(declare-fun e!68178 () Bool)

(declare-fun tp!65573 () Bool)

(assert (=> b!119383 (= e!68178 tp!65573)))

(declare-fun mapNonEmpty!1535 () Bool)

(declare-fun mapRes!1535 () Bool)

(declare-fun tp!65572 () Bool)

(declare-fun tp!65562 () Bool)

(assert (=> mapNonEmpty!1535 (= mapRes!1535 (and tp!65572 tp!65562))))

(declare-fun mapRest!1535 () (Array (_ BitVec 32) List!1974))

(declare-fun mapKey!1535 () (_ BitVec 32))

(declare-fun mapValue!1535 () List!1974)

(assert (=> mapNonEmpty!1535 (= (arr!679 (_values!675 (v!13325 (underlying!993 (v!13326 (underlying!994 (cache!845 cache!470))))))) (store mapRest!1535 mapKey!1535 mapValue!1535))))

(declare-fun b!119384 () Bool)

(declare-fun e!68170 () Bool)

(declare-fun e!68173 () Bool)

(assert (=> b!119384 (= e!68170 e!68173)))

(declare-fun e!68177 () Bool)

(assert (=> b!119385 (= e!68167 (and e!68177 tp!65559))))

(declare-fun b!119386 () Bool)

(declare-fun tp!65565 () Bool)

(declare-fun tp!65566 () Bool)

(assert (=> b!119386 (= e!68178 (and tp!65565 tp!65566))))

(declare-fun res!56191 () Bool)

(assert (=> start!12088 (=> (not res!56191) (not e!68182))))

(declare-fun r!15532 () Regex!531)

(declare-fun validRegex!132 (Regex!531) Bool)

(assert (=> start!12088 (= res!56191 (validRegex!132 r!15532))))

(assert (=> start!12088 e!68182))

(assert (=> start!12088 true))

(assert (=> start!12088 e!68178))

(declare-fun e!68171 () Bool)

(assert (=> start!12088 e!68171))

(declare-fun e!68180 () Bool)

(assert (=> start!12088 e!68180))

(declare-fun e!68166 () Bool)

(assert (=> start!12088 e!68166))

(declare-fun inv!2492 (Cache!222) Bool)

(assert (=> start!12088 (and (inv!2492 cache!470) e!68181)))

(declare-fun b!119381 () Bool)

(declare-fun tp_is_empty!1117 () Bool)

(assert (=> b!119381 (= e!68178 tp_is_empty!1117)))

(declare-fun b!119387 () Bool)

(declare-fun e!68169 () Bool)

(declare-fun e!68176 () Bool)

(assert (=> b!119387 (= e!68169 e!68176)))

(declare-fun res!56190 () Bool)

(assert (=> b!119387 (=> (not res!56190) (not e!68176))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!35384 () Int)

(assert (=> b!119387 (= res!56190 (= totalInputSize!643 lt!35384))))

(declare-datatypes ((List!1975 0))(
  ( (Nil!1969) (Cons!1969 (h!7366 C!1984) (t!22452 List!1975)) )
))
(declare-fun totalInput!1363 () List!1975)

(declare-fun size!1812 (List!1975) Int)

(assert (=> b!119387 (= lt!35384 (size!1812 totalInput!1363))))

(declare-fun b!119388 () Bool)

(declare-fun res!56187 () Bool)

(declare-fun e!68174 () Bool)

(assert (=> b!119388 (=> res!56187 e!68174)))

(declare-fun testedPSize!285 () Int)

(assert (=> b!119388 (= res!56187 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!119389 () Bool)

(declare-fun tp!65568 () Bool)

(assert (=> b!119389 (= e!68166 (and tp_is_empty!1117 tp!65568))))

(declare-fun b!119390 () Bool)

(declare-fun e!68179 () Bool)

(assert (=> b!119390 (= e!68182 e!68179)))

(declare-fun res!56188 () Bool)

(assert (=> b!119390 (=> (not res!56188) (not e!68179))))

(declare-fun lt!35385 () List!1975)

(assert (=> b!119390 (= res!56188 (= lt!35385 totalInput!1363))))

(declare-fun testedP!367 () List!1975)

(declare-fun testedSuffix!285 () List!1975)

(declare-fun ++!364 (List!1975 List!1975) List!1975)

(assert (=> b!119390 (= lt!35385 (++!364 testedP!367 testedSuffix!285))))

(declare-fun b!119391 () Bool)

(declare-fun lt!35387 () Int)

(assert (=> b!119391 (= e!68174 (= lt!35384 lt!35387))))

(declare-fun isPrefix!112 (List!1975 List!1975) Bool)

(assert (=> b!119391 (isPrefix!112 totalInput!1363 totalInput!1363)))

(declare-datatypes ((Unit!1476 0))(
  ( (Unit!1477) )
))
(declare-fun lt!35382 () Unit!1476)

(declare-fun lemmaIsPrefixRefl!84 (List!1975 List!1975) Unit!1476)

(assert (=> b!119391 (= lt!35382 (lemmaIsPrefixRefl!84 totalInput!1363 totalInput!1363))))

(declare-fun b!119392 () Bool)

(declare-fun e!68175 () Bool)

(assert (=> b!119392 (= e!68176 (not e!68175))))

(declare-fun res!56186 () Bool)

(assert (=> b!119392 (=> res!56186 e!68175)))

(assert (=> b!119392 (= res!56186 (not (isPrefix!112 testedP!367 totalInput!1363)))))

(assert (=> b!119392 (isPrefix!112 testedP!367 lt!35385)))

(declare-fun lt!35381 () Unit!1476)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!58 (List!1975 List!1975) Unit!1476)

(assert (=> b!119392 (= lt!35381 (lemmaConcatTwoListThenFirstIsPrefix!58 testedP!367 testedSuffix!285))))

(declare-fun b!119393 () Bool)

(declare-fun tp!65571 () Bool)

(assert (=> b!119393 (= e!68180 (and tp_is_empty!1117 tp!65571))))

(declare-fun b!119394 () Bool)

(declare-fun tp!65563 () Bool)

(declare-fun tp!65567 () Bool)

(assert (=> b!119394 (= e!68178 (and tp!65563 tp!65567))))

(declare-fun b!119395 () Bool)

(declare-fun tp!65560 () Bool)

(assert (=> b!119395 (= e!68171 (and tp_is_empty!1117 tp!65560))))

(declare-fun b!119396 () Bool)

(assert (=> b!119396 (= e!68179 e!68169)))

(declare-fun res!56184 () Bool)

(assert (=> b!119396 (=> (not res!56184) (not e!68169))))

(assert (=> b!119396 (= res!56184 (= testedPSize!285 lt!35387))))

(assert (=> b!119396 (= lt!35387 (size!1812 testedP!367))))

(declare-fun b!119397 () Bool)

(declare-fun lt!35386 () MutLongMap!397)

(get-info :version)

(assert (=> b!119397 (= e!68177 (and e!68170 ((_ is LongMap!397) lt!35386)))))

(assert (=> b!119397 (= lt!35386 (v!13326 (underlying!994 (cache!845 cache!470))))))

(declare-fun mapIsEmpty!1535 () Bool)

(assert (=> mapIsEmpty!1535 mapRes!1535))

(declare-fun b!119398 () Bool)

(assert (=> b!119398 (= e!68175 e!68174)))

(declare-fun res!56189 () Bool)

(assert (=> b!119398 (=> res!56189 e!68174)))

(declare-fun lostCause!56 (Regex!531) Bool)

(assert (=> b!119398 (= res!56189 (lostCause!56 r!15532))))

(declare-fun lt!35388 () List!1975)

(assert (=> b!119398 (and (= testedSuffix!285 lt!35388) (= lt!35388 testedSuffix!285))))

(declare-fun lt!35383 () Unit!1476)

(declare-fun lemmaSamePrefixThenSameSuffix!47 (List!1975 List!1975 List!1975 List!1975 List!1975) Unit!1476)

(assert (=> b!119398 (= lt!35383 (lemmaSamePrefixThenSameSuffix!47 testedP!367 testedSuffix!285 testedP!367 lt!35388 totalInput!1363))))

(declare-fun getSuffix!51 (List!1975 List!1975) List!1975)

(assert (=> b!119398 (= lt!35388 (getSuffix!51 totalInput!1363 testedP!367))))

(declare-fun b!119399 () Bool)

(declare-fun e!68168 () Bool)

(declare-fun tp!65569 () Bool)

(assert (=> b!119399 (= e!68168 (and tp!65569 mapRes!1535))))

(declare-fun condMapEmpty!1535 () Bool)

(declare-fun mapDefault!1535 () List!1974)

(assert (=> b!119399 (= condMapEmpty!1535 (= (arr!679 (_values!675 (v!13325 (underlying!993 (v!13326 (underlying!994 (cache!845 cache!470))))))) ((as const (Array (_ BitVec 32) List!1974)) mapDefault!1535)))))

(declare-fun tp!65570 () Bool)

(declare-fun e!68172 () Bool)

(declare-fun tp!65564 () Bool)

(declare-fun array_inv!485 (array!1455) Bool)

(declare-fun array_inv!486 (array!1457) Bool)

(assert (=> b!119400 (= e!68172 (and tp!65561 tp!65564 tp!65570 (array_inv!485 (_keys!688 (v!13325 (underlying!993 (v!13326 (underlying!994 (cache!845 cache!470))))))) (array_inv!486 (_values!675 (v!13325 (underlying!993 (v!13326 (underlying!994 (cache!845 cache!470))))))) e!68168))))

(declare-fun b!119401 () Bool)

(assert (=> b!119401 (= e!68173 e!68172)))

(assert (= (and start!12088 res!56191) b!119382))

(assert (= (and b!119382 res!56185) b!119390))

(assert (= (and b!119390 res!56188) b!119396))

(assert (= (and b!119396 res!56184) b!119387))

(assert (= (and b!119387 res!56190) b!119392))

(assert (= (and b!119392 (not res!56186)) b!119398))

(assert (= (and b!119398 (not res!56189)) b!119388))

(assert (= (and b!119388 (not res!56187)) b!119391))

(assert (= (and start!12088 ((_ is ElementMatch!531) r!15532)) b!119381))

(assert (= (and start!12088 ((_ is Concat!915) r!15532)) b!119394))

(assert (= (and start!12088 ((_ is Star!531) r!15532)) b!119383))

(assert (= (and start!12088 ((_ is Union!531) r!15532)) b!119386))

(assert (= (and start!12088 ((_ is Cons!1969) totalInput!1363)) b!119395))

(assert (= (and start!12088 ((_ is Cons!1969) testedSuffix!285)) b!119393))

(assert (= (and start!12088 ((_ is Cons!1969) testedP!367)) b!119389))

(assert (= (and b!119399 condMapEmpty!1535) mapIsEmpty!1535))

(assert (= (and b!119399 (not condMapEmpty!1535)) mapNonEmpty!1535))

(assert (= b!119400 b!119399))

(assert (= b!119401 b!119400))

(assert (= b!119384 b!119401))

(assert (= (and b!119397 ((_ is LongMap!397) (v!13326 (underlying!994 (cache!845 cache!470))))) b!119384))

(assert (= b!119385 b!119397))

(assert (= (and b!119380 ((_ is HashMap!393) (cache!845 cache!470))) b!119385))

(assert (= start!12088 b!119380))

(declare-fun m!106331 () Bool)

(assert (=> b!119387 m!106331))

(declare-fun m!106333 () Bool)

(assert (=> start!12088 m!106333))

(declare-fun m!106335 () Bool)

(assert (=> start!12088 m!106335))

(declare-fun m!106337 () Bool)

(assert (=> b!119398 m!106337))

(declare-fun m!106339 () Bool)

(assert (=> b!119398 m!106339))

(declare-fun m!106341 () Bool)

(assert (=> b!119398 m!106341))

(declare-fun m!106343 () Bool)

(assert (=> b!119390 m!106343))

(declare-fun m!106345 () Bool)

(assert (=> b!119392 m!106345))

(declare-fun m!106347 () Bool)

(assert (=> b!119392 m!106347))

(declare-fun m!106349 () Bool)

(assert (=> b!119392 m!106349))

(declare-fun m!106351 () Bool)

(assert (=> b!119391 m!106351))

(declare-fun m!106353 () Bool)

(assert (=> b!119391 m!106353))

(declare-fun m!106355 () Bool)

(assert (=> b!119396 m!106355))

(declare-fun m!106357 () Bool)

(assert (=> b!119382 m!106357))

(declare-fun m!106359 () Bool)

(assert (=> b!119400 m!106359))

(declare-fun m!106361 () Bool)

(assert (=> b!119400 m!106361))

(declare-fun m!106363 () Bool)

(assert (=> mapNonEmpty!1535 m!106363))

(check-sat (not b!119392) b_and!5949 (not start!12088) (not b!119386) (not mapNonEmpty!1535) (not b!119383) b_and!5947 (not b!119390) tp_is_empty!1117 (not b_next!3817) (not b!119382) (not b!119387) (not b!119398) (not b!119396) (not b!119394) (not b_next!3819) (not b!119400) (not b!119399) (not b!119389) (not b!119391) (not b!119395) (not b!119393))
(check-sat b_and!5947 b_and!5949 (not b_next!3817) (not b_next!3819))
