; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11694 () Bool)

(assert start!11694)

(declare-fun b!114333 () Bool)

(declare-fun b_free!3617 () Bool)

(declare-fun b_next!3617 () Bool)

(assert (=> b!114333 (= b_free!3617 (not b_next!3617))))

(declare-fun tp!62399 () Bool)

(declare-fun b_and!5747 () Bool)

(assert (=> b!114333 (= tp!62399 b_and!5747)))

(declare-fun b!114344 () Bool)

(declare-fun b_free!3619 () Bool)

(declare-fun b_next!3619 () Bool)

(assert (=> b!114344 (= b_free!3619 (not b_next!3619))))

(declare-fun tp!62393 () Bool)

(declare-fun b_and!5749 () Bool)

(assert (=> b!114344 (= tp!62393 b_and!5749)))

(declare-fun b!114324 () Bool)

(declare-fun e!64550 () Bool)

(declare-fun tp_is_empty!1017 () Bool)

(declare-fun tp!62388 () Bool)

(assert (=> b!114324 (= e!64550 (and tp_is_empty!1017 tp!62388))))

(declare-fun b!114325 () Bool)

(declare-fun e!64549 () Bool)

(declare-fun tp!62392 () Bool)

(assert (=> b!114325 (= e!64549 (and tp_is_empty!1017 tp!62392))))

(declare-fun b!114326 () Bool)

(declare-fun e!64552 () Bool)

(declare-fun e!64554 () Bool)

(declare-datatypes ((C!1884 0))(
  ( (C!1885 (val!668 Int)) )
))
(declare-datatypes ((Regex!481 0))(
  ( (ElementMatch!481 (c!26481 C!1884)) (Concat!865 (regOne!1474 Regex!481) (regTwo!1474 Regex!481)) (EmptyExpr!481) (Star!481 (reg!810 Regex!481)) (EmptyLang!481) (Union!481 (regOne!1475 Regex!481) (regTwo!1475 Regex!481)) )
))
(declare-datatypes ((tuple2!2044 0))(
  ( (tuple2!2045 (_1!1232 Regex!481) (_2!1232 C!1884)) )
))
(declare-datatypes ((tuple2!2046 0))(
  ( (tuple2!2047 (_1!1233 tuple2!2044) (_2!1233 Regex!481)) )
))
(declare-datatypes ((List!1877 0))(
  ( (Nil!1871) (Cons!1871 (h!7268 tuple2!2046) (t!22354 List!1877)) )
))
(declare-datatypes ((array!1237 0))(
  ( (array!1238 (arr!578 (Array (_ BitVec 32) (_ BitVec 64))) (size!1666 (_ BitVec 32))) )
))
(declare-datatypes ((array!1239 0))(
  ( (array!1240 (arr!579 (Array (_ BitVec 32) List!1877)) (size!1667 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!694 0))(
  ( (LongMapFixedSize!695 (defaultEntry!686 Int) (mask!1255 (_ BitVec 32)) (extraKeys!593 (_ BitVec 32)) (zeroValue!603 List!1877) (minValue!603 List!1877) (_size!827 (_ BitVec 32)) (_keys!638 array!1237) (_values!625 array!1239) (_vacant!408 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1377 0))(
  ( (Cell!1378 (v!13225 LongMapFixedSize!694)) )
))
(declare-datatypes ((MutLongMap!347 0))(
  ( (LongMap!347 (underlying!893 Cell!1377)) (MutLongMapExt!346 (__x!1966 Int)) )
))
(declare-fun lt!33360 () MutLongMap!347)

(get-info :version)

(assert (=> b!114326 (= e!64552 (and e!64554 ((_ is LongMap!347) lt!33360)))))

(declare-datatypes ((Hashable!343 0))(
  ( (HashableExt!342 (__x!1967 Int)) )
))
(declare-datatypes ((Cell!1379 0))(
  ( (Cell!1380 (v!13226 MutLongMap!347)) )
))
(declare-datatypes ((MutableMap!343 0))(
  ( (MutableMapExt!342 (__x!1968 Int)) (HashMap!343 (underlying!894 Cell!1379) (hashF!2219 Hashable!343) (_size!828 (_ BitVec 32)) (defaultValue!492 Int)) )
))
(declare-datatypes ((Cache!122 0))(
  ( (Cache!123 (cache!795 MutableMap!343)) )
))
(declare-fun cache!470 () Cache!122)

(assert (=> b!114326 (= lt!33360 (v!13226 (underlying!894 (cache!795 cache!470))))))

(declare-fun b!114327 () Bool)

(declare-fun e!64561 () Bool)

(declare-fun e!64551 () Bool)

(assert (=> b!114327 (= e!64561 e!64551)))

(declare-fun res!54481 () Bool)

(assert (=> b!114327 (=> (not res!54481) (not e!64551))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!33353 () Int)

(assert (=> b!114327 (= res!54481 (= totalInputSize!643 lt!33353))))

(declare-datatypes ((List!1878 0))(
  ( (Nil!1872) (Cons!1872 (h!7269 C!1884) (t!22355 List!1878)) )
))
(declare-fun totalInput!1363 () List!1878)

(declare-fun size!1668 (List!1878) Int)

(assert (=> b!114327 (= lt!33353 (size!1668 totalInput!1363))))

(declare-fun b!114328 () Bool)

(declare-fun res!54487 () Bool)

(declare-fun e!64558 () Bool)

(assert (=> b!114328 (=> (not res!54487) (not e!64558))))

(declare-fun valid!319 (Cache!122) Bool)

(assert (=> b!114328 (= res!54487 (valid!319 cache!470))))

(declare-fun b!114329 () Bool)

(declare-fun e!64557 () Bool)

(assert (=> b!114329 (= e!64557 e!64561)))

(declare-fun res!54480 () Bool)

(assert (=> b!114329 (=> (not res!54480) (not e!64561))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!33356 () Int)

(assert (=> b!114329 (= res!54480 (= testedPSize!285 lt!33356))))

(declare-fun testedP!367 () List!1878)

(assert (=> b!114329 (= lt!33356 (size!1668 testedP!367))))

(declare-fun b!114330 () Bool)

(declare-fun e!64553 () Bool)

(assert (=> b!114330 (= e!64551 (not e!64553))))

(declare-fun res!54482 () Bool)

(assert (=> b!114330 (=> res!54482 e!64553)))

(declare-fun isPrefix!70 (List!1878 List!1878) Bool)

(assert (=> b!114330 (= res!54482 (not (isPrefix!70 testedP!367 totalInput!1363)))))

(declare-fun lt!33354 () List!1878)

(assert (=> b!114330 (isPrefix!70 testedP!367 lt!33354)))

(declare-datatypes ((Unit!1341 0))(
  ( (Unit!1342) )
))
(declare-fun lt!33358 () Unit!1341)

(declare-fun testedSuffix!285 () List!1878)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!19 (List!1878 List!1878) Unit!1341)

(assert (=> b!114330 (= lt!33358 (lemmaConcatTwoListThenFirstIsPrefix!19 testedP!367 testedSuffix!285))))

(declare-fun b!114331 () Bool)

(declare-fun res!54486 () Bool)

(declare-fun e!64559 () Bool)

(assert (=> b!114331 (=> res!54486 e!64559)))

(assert (=> b!114331 (= res!54486 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!114332 () Bool)

(declare-fun e!64545 () Bool)

(declare-fun tp!62389 () Bool)

(declare-fun mapRes!1357 () Bool)

(assert (=> b!114332 (= e!64545 (and tp!62389 mapRes!1357))))

(declare-fun condMapEmpty!1357 () Bool)

(declare-fun mapDefault!1357 () List!1877)

(assert (=> b!114332 (= condMapEmpty!1357 (= (arr!579 (_values!625 (v!13225 (underlying!893 (v!13226 (underlying!894 (cache!795 cache!470))))))) ((as const (Array (_ BitVec 32) List!1877)) mapDefault!1357)))))

(declare-fun e!64556 () Bool)

(assert (=> b!114333 (= e!64556 (and e!64552 tp!62399))))

(declare-fun b!114334 () Bool)

(declare-fun e!64555 () Bool)

(declare-fun tp!62390 () Bool)

(declare-fun tp!62394 () Bool)

(assert (=> b!114334 (= e!64555 (and tp!62390 tp!62394))))

(declare-fun b!114335 () Bool)

(assert (=> b!114335 (= e!64559 true)))

(assert (=> b!114335 (<= lt!33356 lt!33353)))

(declare-fun lt!33355 () Unit!1341)

(declare-fun lemmaIsPrefixThenSmallerEqSize!3 (List!1878 List!1878) Unit!1341)

(assert (=> b!114335 (= lt!33355 (lemmaIsPrefixThenSmallerEqSize!3 testedP!367 totalInput!1363))))

(declare-fun b!114336 () Bool)

(assert (=> b!114336 (= e!64558 e!64557)))

(declare-fun res!54483 () Bool)

(assert (=> b!114336 (=> (not res!54483) (not e!64557))))

(assert (=> b!114336 (= res!54483 (= lt!33354 totalInput!1363))))

(declare-fun ++!324 (List!1878 List!1878) List!1878)

(assert (=> b!114336 (= lt!33354 (++!324 testedP!367 testedSuffix!285))))

(declare-fun b!114337 () Bool)

(declare-fun e!64548 () Bool)

(assert (=> b!114337 (= e!64554 e!64548)))

(declare-fun b!114338 () Bool)

(declare-fun e!64546 () Bool)

(declare-fun tp!62396 () Bool)

(assert (=> b!114338 (= e!64546 (and tp_is_empty!1017 tp!62396))))

(declare-fun b!114339 () Bool)

(declare-fun e!64560 () Bool)

(assert (=> b!114339 (= e!64548 e!64560)))

(declare-fun b!114340 () Bool)

(declare-fun e!64547 () Bool)

(assert (=> b!114340 (= e!64547 e!64556)))

(declare-fun b!114341 () Bool)

(declare-fun tp!62398 () Bool)

(declare-fun tp!62391 () Bool)

(assert (=> b!114341 (= e!64555 (and tp!62398 tp!62391))))

(declare-fun b!114342 () Bool)

(assert (=> b!114342 (= e!64553 e!64559)))

(declare-fun res!54484 () Bool)

(assert (=> b!114342 (=> res!54484 e!64559)))

(declare-fun r!15532 () Regex!481)

(declare-fun lostCause!29 (Regex!481) Bool)

(assert (=> b!114342 (= res!54484 (lostCause!29 r!15532))))

(declare-fun lt!33357 () List!1878)

(assert (=> b!114342 (and (= testedSuffix!285 lt!33357) (= lt!33357 testedSuffix!285))))

(declare-fun lt!33359 () Unit!1341)

(declare-fun lemmaSamePrefixThenSameSuffix!17 (List!1878 List!1878 List!1878 List!1878 List!1878) Unit!1341)

(assert (=> b!114342 (= lt!33359 (lemmaSamePrefixThenSameSuffix!17 testedP!367 testedSuffix!285 testedP!367 lt!33357 totalInput!1363))))

(declare-fun getSuffix!18 (List!1878 List!1878) List!1878)

(assert (=> b!114342 (= lt!33357 (getSuffix!18 totalInput!1363 testedP!367))))

(declare-fun res!54485 () Bool)

(assert (=> start!11694 (=> (not res!54485) (not e!64558))))

(declare-fun validRegex!92 (Regex!481) Bool)

(assert (=> start!11694 (= res!54485 (validRegex!92 r!15532))))

(assert (=> start!11694 e!64558))

(assert (=> start!11694 true))

(assert (=> start!11694 e!64555))

(assert (=> start!11694 e!64549))

(assert (=> start!11694 e!64546))

(assert (=> start!11694 e!64550))

(declare-fun inv!2378 (Cache!122) Bool)

(assert (=> start!11694 (and (inv!2378 cache!470) e!64547)))

(declare-fun mapNonEmpty!1357 () Bool)

(declare-fun tp!62395 () Bool)

(declare-fun tp!62387 () Bool)

(assert (=> mapNonEmpty!1357 (= mapRes!1357 (and tp!62395 tp!62387))))

(declare-fun mapRest!1357 () (Array (_ BitVec 32) List!1877))

(declare-fun mapValue!1357 () List!1877)

(declare-fun mapKey!1357 () (_ BitVec 32))

(assert (=> mapNonEmpty!1357 (= (arr!579 (_values!625 (v!13225 (underlying!893 (v!13226 (underlying!894 (cache!795 cache!470))))))) (store mapRest!1357 mapKey!1357 mapValue!1357))))

(declare-fun mapIsEmpty!1357 () Bool)

(assert (=> mapIsEmpty!1357 mapRes!1357))

(declare-fun b!114343 () Bool)

(declare-fun tp!62397 () Bool)

(assert (=> b!114343 (= e!64555 tp!62397)))

(declare-fun tp!62386 () Bool)

(declare-fun tp!62385 () Bool)

(declare-fun array_inv!407 (array!1237) Bool)

(declare-fun array_inv!408 (array!1239) Bool)

(assert (=> b!114344 (= e!64560 (and tp!62393 tp!62385 tp!62386 (array_inv!407 (_keys!638 (v!13225 (underlying!893 (v!13226 (underlying!894 (cache!795 cache!470))))))) (array_inv!408 (_values!625 (v!13225 (underlying!893 (v!13226 (underlying!894 (cache!795 cache!470))))))) e!64545))))

(declare-fun b!114345 () Bool)

(assert (=> b!114345 (= e!64555 tp_is_empty!1017)))

(assert (= (and start!11694 res!54485) b!114328))

(assert (= (and b!114328 res!54487) b!114336))

(assert (= (and b!114336 res!54483) b!114329))

(assert (= (and b!114329 res!54480) b!114327))

(assert (= (and b!114327 res!54481) b!114330))

(assert (= (and b!114330 (not res!54482)) b!114342))

(assert (= (and b!114342 (not res!54484)) b!114331))

(assert (= (and b!114331 (not res!54486)) b!114335))

(assert (= (and start!11694 ((_ is ElementMatch!481) r!15532)) b!114345))

(assert (= (and start!11694 ((_ is Concat!865) r!15532)) b!114334))

(assert (= (and start!11694 ((_ is Star!481) r!15532)) b!114343))

(assert (= (and start!11694 ((_ is Union!481) r!15532)) b!114341))

(assert (= (and start!11694 ((_ is Cons!1872) totalInput!1363)) b!114325))

(assert (= (and start!11694 ((_ is Cons!1872) testedSuffix!285)) b!114338))

(assert (= (and start!11694 ((_ is Cons!1872) testedP!367)) b!114324))

(assert (= (and b!114332 condMapEmpty!1357) mapIsEmpty!1357))

(assert (= (and b!114332 (not condMapEmpty!1357)) mapNonEmpty!1357))

(assert (= b!114344 b!114332))

(assert (= b!114339 b!114344))

(assert (= b!114337 b!114339))

(assert (= (and b!114326 ((_ is LongMap!347) (v!13226 (underlying!894 (cache!795 cache!470))))) b!114337))

(assert (= b!114333 b!114326))

(assert (= (and b!114340 ((_ is HashMap!343) (cache!795 cache!470))) b!114333))

(assert (= start!11694 b!114340))

(declare-fun m!103194 () Bool)

(assert (=> b!114342 m!103194))

(declare-fun m!103196 () Bool)

(assert (=> b!114342 m!103196))

(declare-fun m!103198 () Bool)

(assert (=> b!114342 m!103198))

(declare-fun m!103200 () Bool)

(assert (=> b!114329 m!103200))

(declare-fun m!103202 () Bool)

(assert (=> mapNonEmpty!1357 m!103202))

(declare-fun m!103204 () Bool)

(assert (=> b!114344 m!103204))

(declare-fun m!103206 () Bool)

(assert (=> b!114344 m!103206))

(declare-fun m!103208 () Bool)

(assert (=> b!114328 m!103208))

(declare-fun m!103210 () Bool)

(assert (=> start!11694 m!103210))

(declare-fun m!103212 () Bool)

(assert (=> start!11694 m!103212))

(declare-fun m!103214 () Bool)

(assert (=> b!114336 m!103214))

(declare-fun m!103216 () Bool)

(assert (=> b!114335 m!103216))

(declare-fun m!103218 () Bool)

(assert (=> b!114330 m!103218))

(declare-fun m!103220 () Bool)

(assert (=> b!114330 m!103220))

(declare-fun m!103222 () Bool)

(assert (=> b!114330 m!103222))

(declare-fun m!103224 () Bool)

(assert (=> b!114327 m!103224))

(check-sat (not b!114325) (not b!114342) (not start!11694) (not b_next!3617) (not b!114329) (not b!114334) (not b!114330) (not b!114327) b_and!5747 (not mapNonEmpty!1357) (not b!114336) (not b!114328) (not b!114341) (not b!114324) (not b!114343) b_and!5749 (not b!114332) tp_is_empty!1017 (not b!114335) (not b_next!3619) (not b!114338) (not b!114344))
(check-sat b_and!5747 b_and!5749 (not b_next!3617) (not b_next!3619))
