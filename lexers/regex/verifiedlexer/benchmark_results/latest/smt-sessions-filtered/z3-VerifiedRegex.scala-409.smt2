; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12092 () Bool)

(assert start!12092)

(declare-fun b!119544 () Bool)

(declare-fun b_free!3825 () Bool)

(declare-fun b_next!3825 () Bool)

(assert (=> b!119544 (= b_free!3825 (not b_next!3825))))

(declare-fun tp!65661 () Bool)

(declare-fun b_and!5955 () Bool)

(assert (=> b!119544 (= tp!65661 b_and!5955)))

(declare-fun b!119536 () Bool)

(declare-fun b_free!3827 () Bool)

(declare-fun b_next!3827 () Bool)

(assert (=> b!119536 (= b_free!3827 (not b_next!3827))))

(declare-fun tp!65652 () Bool)

(declare-fun b_and!5957 () Bool)

(assert (=> b!119536 (= tp!65652 b_and!5957)))

(declare-fun b!119522 () Bool)

(declare-fun e!68277 () Bool)

(declare-fun e!68284 () Bool)

(assert (=> b!119522 (= e!68277 e!68284)))

(declare-fun res!56250 () Bool)

(assert (=> b!119522 (=> (not res!56250) (not e!68284))))

(declare-datatypes ((C!1988 0))(
  ( (C!1989 (val!720 Int)) )
))
(declare-datatypes ((List!1978 0))(
  ( (Nil!1972) (Cons!1972 (h!7369 C!1988) (t!22455 List!1978)) )
))
(declare-fun lt!35427 () List!1978)

(declare-fun totalInput!1363 () List!1978)

(assert (=> b!119522 (= res!56250 (= lt!35427 totalInput!1363))))

(declare-fun testedP!367 () List!1978)

(declare-fun testedSuffix!285 () List!1978)

(declare-fun ++!366 (List!1978 List!1978) List!1978)

(assert (=> b!119522 (= lt!35427 (++!366 testedP!367 testedSuffix!285))))

(declare-fun b!119523 () Bool)

(declare-fun res!56245 () Bool)

(declare-fun e!68275 () Bool)

(assert (=> b!119523 (=> res!56245 e!68275)))

(declare-datatypes ((Regex!533 0))(
  ( (ElementMatch!533 (c!26841 C!1988)) (Concat!917 (regOne!1578 Regex!533) (regTwo!1578 Regex!533)) (EmptyExpr!533) (Star!533 (reg!862 Regex!533)) (EmptyLang!533) (Union!533 (regOne!1579 Regex!533) (regTwo!1579 Regex!533)) )
))
(declare-fun r!15532 () Regex!533)

(declare-fun nullable!78 (Regex!533) Bool)

(assert (=> b!119523 (= res!56245 (not (nullable!78 r!15532)))))

(declare-fun b!119524 () Bool)

(declare-fun e!68283 () Bool)

(declare-fun tp_is_empty!1121 () Bool)

(assert (=> b!119524 (= e!68283 tp_is_empty!1121)))

(declare-fun mapIsEmpty!1541 () Bool)

(declare-fun mapRes!1541 () Bool)

(assert (=> mapIsEmpty!1541 mapRes!1541))

(declare-fun b!119525 () Bool)

(declare-fun e!68285 () Bool)

(declare-fun e!68276 () Bool)

(declare-datatypes ((tuple2!2260 0))(
  ( (tuple2!2261 (_1!1340 Regex!533) (_2!1340 C!1988)) )
))
(declare-datatypes ((tuple2!2262 0))(
  ( (tuple2!2263 (_1!1341 tuple2!2260) (_2!1341 Regex!533)) )
))
(declare-datatypes ((List!1979 0))(
  ( (Nil!1973) (Cons!1973 (h!7370 tuple2!2262) (t!22456 List!1979)) )
))
(declare-datatypes ((array!1463 0))(
  ( (array!1464 (arr!682 (Array (_ BitVec 32) (_ BitVec 64))) (size!1816 (_ BitVec 32))) )
))
(declare-datatypes ((array!1465 0))(
  ( (array!1466 (arr!683 (Array (_ BitVec 32) List!1979)) (size!1817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!798 0))(
  ( (LongMapFixedSize!799 (defaultEntry!738 Int) (mask!1333 (_ BitVec 32)) (extraKeys!645 (_ BitVec 32)) (zeroValue!655 List!1979) (minValue!655 List!1979) (_size!931 (_ BitVec 32)) (_keys!690 array!1463) (_values!677 array!1465) (_vacant!460 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1585 0))(
  ( (Cell!1586 (v!13329 LongMapFixedSize!798)) )
))
(declare-datatypes ((MutLongMap!399 0))(
  ( (LongMap!399 (underlying!997 Cell!1585)) (MutLongMapExt!398 (__x!2122 Int)) )
))
(declare-fun lt!35430 () MutLongMap!399)

(get-info :version)

(assert (=> b!119525 (= e!68285 (and e!68276 ((_ is LongMap!399) lt!35430)))))

(declare-datatypes ((Hashable!395 0))(
  ( (HashableExt!394 (__x!2123 Int)) )
))
(declare-datatypes ((Cell!1587 0))(
  ( (Cell!1588 (v!13330 MutLongMap!399)) )
))
(declare-datatypes ((MutableMap!395 0))(
  ( (MutableMapExt!394 (__x!2124 Int)) (HashMap!395 (underlying!998 Cell!1587) (hashF!2271 Hashable!395) (_size!932 (_ BitVec 32)) (defaultValue!544 Int)) )
))
(declare-datatypes ((Cache!226 0))(
  ( (Cache!227 (cache!847 MutableMap!395)) )
))
(declare-fun cache!470 () Cache!226)

(assert (=> b!119525 (= lt!35430 (v!13330 (underlying!998 (cache!847 cache!470))))))

(declare-fun b!119526 () Bool)

(declare-fun res!56246 () Bool)

(assert (=> b!119526 (=> (not res!56246) (not e!68284))))

(declare-fun totalInputSize!643 () Int)

(declare-fun size!1818 (List!1978) Int)

(assert (=> b!119526 (= res!56246 (= totalInputSize!643 (size!1818 totalInput!1363)))))

(declare-fun b!119527 () Bool)

(declare-fun e!68272 () Bool)

(assert (=> b!119527 (= e!68276 e!68272)))

(declare-fun b!119528 () Bool)

(declare-fun e!68271 () Bool)

(declare-fun tp!65662 () Bool)

(assert (=> b!119528 (= e!68271 (and tp!65662 mapRes!1541))))

(declare-fun condMapEmpty!1541 () Bool)

(declare-fun mapDefault!1541 () List!1979)

(assert (=> b!119528 (= condMapEmpty!1541 (= (arr!683 (_values!677 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) ((as const (Array (_ BitVec 32) List!1979)) mapDefault!1541)))))

(declare-fun b!119529 () Bool)

(declare-fun e!68269 () Bool)

(assert (=> b!119529 (= e!68272 e!68269)))

(declare-fun b!119530 () Bool)

(declare-fun e!68279 () Bool)

(declare-fun e!68274 () Bool)

(assert (=> b!119530 (= e!68279 e!68274)))

(declare-fun res!56247 () Bool)

(assert (=> b!119530 (=> res!56247 e!68274)))

(declare-fun lostCause!58 (Regex!533) Bool)

(assert (=> b!119530 (= res!56247 (lostCause!58 r!15532))))

(declare-fun lt!35426 () List!1978)

(assert (=> b!119530 (and (= testedSuffix!285 lt!35426) (= lt!35426 testedSuffix!285))))

(declare-datatypes ((Unit!1480 0))(
  ( (Unit!1481) )
))
(declare-fun lt!35424 () Unit!1480)

(declare-fun lemmaSamePrefixThenSameSuffix!49 (List!1978 List!1978 List!1978 List!1978 List!1978) Unit!1480)

(assert (=> b!119530 (= lt!35424 (lemmaSamePrefixThenSameSuffix!49 testedP!367 testedSuffix!285 testedP!367 lt!35426 totalInput!1363))))

(declare-fun getSuffix!53 (List!1978 List!1978) List!1978)

(assert (=> b!119530 (= lt!35426 (getSuffix!53 totalInput!1363 testedP!367))))

(declare-fun b!119532 () Bool)

(assert (=> b!119532 (= e!68274 e!68275)))

(declare-fun res!56248 () Bool)

(assert (=> b!119532 (=> res!56248 e!68275)))

(assert (=> b!119532 (= res!56248 (not (= testedP!367 totalInput!1363)))))

(assert (=> b!119532 (= totalInput!1363 testedP!367)))

(declare-fun lt!35428 () Unit!1480)

(declare-fun lemmaIsPrefixSameLengthThenSameList!30 (List!1978 List!1978 List!1978) Unit!1480)

(assert (=> b!119532 (= lt!35428 (lemmaIsPrefixSameLengthThenSameList!30 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun isPrefix!113 (List!1978 List!1978) Bool)

(assert (=> b!119532 (isPrefix!113 totalInput!1363 totalInput!1363)))

(declare-fun lt!35425 () Unit!1480)

(declare-fun lemmaIsPrefixRefl!85 (List!1978 List!1978) Unit!1480)

(assert (=> b!119532 (= lt!35425 (lemmaIsPrefixRefl!85 totalInput!1363 totalInput!1363))))

(declare-fun b!119533 () Bool)

(declare-fun res!56243 () Bool)

(assert (=> b!119533 (=> (not res!56243) (not e!68284))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!119533 (= res!56243 (= testedPSize!285 (size!1818 testedP!367)))))

(declare-fun mapNonEmpty!1541 () Bool)

(declare-fun tp!65655 () Bool)

(declare-fun tp!65649 () Bool)

(assert (=> mapNonEmpty!1541 (= mapRes!1541 (and tp!65655 tp!65649))))

(declare-fun mapValue!1541 () List!1979)

(declare-fun mapRest!1541 () (Array (_ BitVec 32) List!1979))

(declare-fun mapKey!1541 () (_ BitVec 32))

(assert (=> mapNonEmpty!1541 (= (arr!683 (_values!677 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) (store mapRest!1541 mapKey!1541 mapValue!1541))))

(declare-fun b!119534 () Bool)

(declare-fun e!68282 () Bool)

(declare-fun tp!65651 () Bool)

(assert (=> b!119534 (= e!68282 (and tp_is_empty!1121 tp!65651))))

(declare-fun b!119535 () Bool)

(declare-fun e!68270 () Bool)

(declare-fun tp!65656 () Bool)

(assert (=> b!119535 (= e!68270 (and tp_is_empty!1121 tp!65656))))

(declare-fun tp!65663 () Bool)

(declare-fun tp!65654 () Bool)

(declare-fun array_inv!489 (array!1463) Bool)

(declare-fun array_inv!490 (array!1465) Bool)

(assert (=> b!119536 (= e!68269 (and tp!65652 tp!65654 tp!65663 (array_inv!489 (_keys!690 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) (array_inv!490 (_values!677 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) e!68271))))

(declare-fun b!119537 () Bool)

(declare-fun e!68278 () Bool)

(declare-fun e!68281 () Bool)

(assert (=> b!119537 (= e!68278 e!68281)))

(declare-fun b!119538 () Bool)

(declare-fun tp!65659 () Bool)

(declare-fun tp!65650 () Bool)

(assert (=> b!119538 (= e!68283 (and tp!65659 tp!65650))))

(declare-fun b!119539 () Bool)

(declare-fun tp!65658 () Bool)

(declare-fun tp!65660 () Bool)

(assert (=> b!119539 (= e!68283 (and tp!65658 tp!65660))))

(declare-fun b!119540 () Bool)

(declare-datatypes ((tuple2!2264 0))(
  ( (tuple2!2265 (_1!1342 List!1978) (_2!1342 List!1978)) )
))
(declare-fun findLongestMatchInner!42 (Regex!533 List!1978 Int List!1978 List!1978 Int) tuple2!2264)

(assert (=> b!119540 (= e!68275 (= (tuple2!2265 testedP!367 Nil!1972) (findLongestMatchInner!42 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643)))))

(declare-fun b!119541 () Bool)

(declare-fun e!68273 () Bool)

(declare-fun tp!65653 () Bool)

(assert (=> b!119541 (= e!68273 (and tp_is_empty!1121 tp!65653))))

(declare-fun b!119542 () Bool)

(declare-fun res!56244 () Bool)

(assert (=> b!119542 (=> res!56244 e!68274)))

(assert (=> b!119542 (= res!56244 (not (= testedPSize!285 totalInputSize!643)))))

(declare-fun b!119543 () Bool)

(declare-fun res!56242 () Bool)

(assert (=> b!119543 (=> (not res!56242) (not e!68277))))

(declare-fun valid!361 (Cache!226) Bool)

(assert (=> b!119543 (= res!56242 (valid!361 cache!470))))

(assert (=> b!119544 (= e!68281 (and e!68285 tp!65661))))

(declare-fun b!119545 () Bool)

(declare-fun tp!65657 () Bool)

(assert (=> b!119545 (= e!68283 tp!65657)))

(declare-fun b!119531 () Bool)

(assert (=> b!119531 (= e!68284 (not e!68279))))

(declare-fun res!56249 () Bool)

(assert (=> b!119531 (=> res!56249 e!68279)))

(assert (=> b!119531 (= res!56249 (not (isPrefix!113 testedP!367 totalInput!1363)))))

(assert (=> b!119531 (isPrefix!113 testedP!367 lt!35427)))

(declare-fun lt!35429 () Unit!1480)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!59 (List!1978 List!1978) Unit!1480)

(assert (=> b!119531 (= lt!35429 (lemmaConcatTwoListThenFirstIsPrefix!59 testedP!367 testedSuffix!285))))

(declare-fun res!56251 () Bool)

(assert (=> start!12092 (=> (not res!56251) (not e!68277))))

(declare-fun validRegex!134 (Regex!533) Bool)

(assert (=> start!12092 (= res!56251 (validRegex!134 r!15532))))

(assert (=> start!12092 e!68277))

(assert (=> start!12092 true))

(assert (=> start!12092 e!68283))

(assert (=> start!12092 e!68270))

(assert (=> start!12092 e!68282))

(assert (=> start!12092 e!68273))

(declare-fun inv!2497 (Cache!226) Bool)

(assert (=> start!12092 (and (inv!2497 cache!470) e!68278)))

(assert (= (and start!12092 res!56251) b!119543))

(assert (= (and b!119543 res!56242) b!119522))

(assert (= (and b!119522 res!56250) b!119533))

(assert (= (and b!119533 res!56243) b!119526))

(assert (= (and b!119526 res!56246) b!119531))

(assert (= (and b!119531 (not res!56249)) b!119530))

(assert (= (and b!119530 (not res!56247)) b!119542))

(assert (= (and b!119542 (not res!56244)) b!119532))

(assert (= (and b!119532 (not res!56248)) b!119523))

(assert (= (and b!119523 (not res!56245)) b!119540))

(assert (= (and start!12092 ((_ is ElementMatch!533) r!15532)) b!119524))

(assert (= (and start!12092 ((_ is Concat!917) r!15532)) b!119538))

(assert (= (and start!12092 ((_ is Star!533) r!15532)) b!119545))

(assert (= (and start!12092 ((_ is Union!533) r!15532)) b!119539))

(assert (= (and start!12092 ((_ is Cons!1972) totalInput!1363)) b!119535))

(assert (= (and start!12092 ((_ is Cons!1972) testedSuffix!285)) b!119534))

(assert (= (and start!12092 ((_ is Cons!1972) testedP!367)) b!119541))

(assert (= (and b!119528 condMapEmpty!1541) mapIsEmpty!1541))

(assert (= (and b!119528 (not condMapEmpty!1541)) mapNonEmpty!1541))

(assert (= b!119536 b!119528))

(assert (= b!119529 b!119536))

(assert (= b!119527 b!119529))

(assert (= (and b!119525 ((_ is LongMap!399) (v!13330 (underlying!998 (cache!847 cache!470))))) b!119527))

(assert (= b!119544 b!119525))

(assert (= (and b!119537 ((_ is HashMap!395) (cache!847 cache!470))) b!119544))

(assert (= start!12092 b!119537))

(declare-fun m!106405 () Bool)

(assert (=> b!119540 m!106405))

(declare-fun m!106407 () Bool)

(assert (=> b!119536 m!106407))

(declare-fun m!106409 () Bool)

(assert (=> b!119536 m!106409))

(declare-fun m!106411 () Bool)

(assert (=> mapNonEmpty!1541 m!106411))

(declare-fun m!106413 () Bool)

(assert (=> b!119543 m!106413))

(declare-fun m!106415 () Bool)

(assert (=> start!12092 m!106415))

(declare-fun m!106417 () Bool)

(assert (=> start!12092 m!106417))

(declare-fun m!106419 () Bool)

(assert (=> b!119531 m!106419))

(declare-fun m!106421 () Bool)

(assert (=> b!119531 m!106421))

(declare-fun m!106423 () Bool)

(assert (=> b!119531 m!106423))

(declare-fun m!106425 () Bool)

(assert (=> b!119523 m!106425))

(declare-fun m!106427 () Bool)

(assert (=> b!119530 m!106427))

(declare-fun m!106429 () Bool)

(assert (=> b!119530 m!106429))

(declare-fun m!106431 () Bool)

(assert (=> b!119530 m!106431))

(declare-fun m!106433 () Bool)

(assert (=> b!119533 m!106433))

(declare-fun m!106435 () Bool)

(assert (=> b!119526 m!106435))

(declare-fun m!106437 () Bool)

(assert (=> b!119532 m!106437))

(declare-fun m!106439 () Bool)

(assert (=> b!119532 m!106439))

(declare-fun m!106441 () Bool)

(assert (=> b!119532 m!106441))

(declare-fun m!106443 () Bool)

(assert (=> b!119522 m!106443))

(check-sat (not b!119532) (not b!119528) (not b!119540) (not b!119531) (not b!119522) (not b!119541) (not start!12092) tp_is_empty!1121 (not mapNonEmpty!1541) (not b!119526) (not b_next!3825) (not b!119538) (not b!119533) (not b!119536) (not b!119535) (not b!119534) (not b!119530) b_and!5957 b_and!5955 (not b_next!3827) (not b!119539) (not b!119543) (not b!119545) (not b!119523))
(check-sat b_and!5955 b_and!5957 (not b_next!3825) (not b_next!3827))
(get-model)

(declare-fun d!28632 () Bool)

(declare-fun nullableFct!17 (Regex!533) Bool)

(assert (=> d!28632 (= (nullable!78 r!15532) (nullableFct!17 r!15532))))

(declare-fun bs!11909 () Bool)

(assert (= bs!11909 d!28632))

(declare-fun m!106445 () Bool)

(assert (=> bs!11909 m!106445))

(assert (=> b!119523 d!28632))

(declare-fun lt!35433 () List!1978)

(declare-fun b!119557 () Bool)

(declare-fun e!68290 () Bool)

(assert (=> b!119557 (= e!68290 (or (not (= testedSuffix!285 Nil!1972)) (= lt!35433 testedP!367)))))

(declare-fun b!119555 () Bool)

(declare-fun e!68291 () List!1978)

(assert (=> b!119555 (= e!68291 (Cons!1972 (h!7369 testedP!367) (++!366 (t!22455 testedP!367) testedSuffix!285)))))

(declare-fun b!119554 () Bool)

(assert (=> b!119554 (= e!68291 testedSuffix!285)))

(declare-fun d!28634 () Bool)

(assert (=> d!28634 e!68290))

(declare-fun res!56256 () Bool)

(assert (=> d!28634 (=> (not res!56256) (not e!68290))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!221 (List!1978) (InoxSet C!1988))

(assert (=> d!28634 (= res!56256 (= (content!221 lt!35433) ((_ map or) (content!221 testedP!367) (content!221 testedSuffix!285))))))

(assert (=> d!28634 (= lt!35433 e!68291)))

(declare-fun c!26844 () Bool)

(assert (=> d!28634 (= c!26844 ((_ is Nil!1972) testedP!367))))

(assert (=> d!28634 (= (++!366 testedP!367 testedSuffix!285) lt!35433)))

(declare-fun b!119556 () Bool)

(declare-fun res!56257 () Bool)

(assert (=> b!119556 (=> (not res!56257) (not e!68290))))

(assert (=> b!119556 (= res!56257 (= (size!1818 lt!35433) (+ (size!1818 testedP!367) (size!1818 testedSuffix!285))))))

(assert (= (and d!28634 c!26844) b!119554))

(assert (= (and d!28634 (not c!26844)) b!119555))

(assert (= (and d!28634 res!56256) b!119556))

(assert (= (and b!119556 res!56257) b!119557))

(declare-fun m!106447 () Bool)

(assert (=> b!119555 m!106447))

(declare-fun m!106449 () Bool)

(assert (=> d!28634 m!106449))

(declare-fun m!106451 () Bool)

(assert (=> d!28634 m!106451))

(declare-fun m!106453 () Bool)

(assert (=> d!28634 m!106453))

(declare-fun m!106455 () Bool)

(assert (=> b!119556 m!106455))

(assert (=> b!119556 m!106433))

(declare-fun m!106457 () Bool)

(assert (=> b!119556 m!106457))

(assert (=> b!119522 d!28634))

(declare-fun d!28636 () Bool)

(assert (=> d!28636 (= totalInput!1363 testedP!367)))

(declare-fun lt!35436 () Unit!1480)

(declare-fun choose!1552 (List!1978 List!1978 List!1978) Unit!1480)

(assert (=> d!28636 (= lt!35436 (choose!1552 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28636 (isPrefix!113 totalInput!1363 totalInput!1363)))

(assert (=> d!28636 (= (lemmaIsPrefixSameLengthThenSameList!30 totalInput!1363 testedP!367 totalInput!1363) lt!35436)))

(declare-fun bs!11910 () Bool)

(assert (= bs!11910 d!28636))

(declare-fun m!106459 () Bool)

(assert (=> bs!11910 m!106459))

(assert (=> bs!11910 m!106439))

(assert (=> b!119532 d!28636))

(declare-fun b!119567 () Bool)

(declare-fun res!56266 () Bool)

(declare-fun e!68300 () Bool)

(assert (=> b!119567 (=> (not res!56266) (not e!68300))))

(declare-fun head!492 (List!1978) C!1988)

(assert (=> b!119567 (= res!56266 (= (head!492 totalInput!1363) (head!492 totalInput!1363)))))

(declare-fun d!28638 () Bool)

(declare-fun e!68299 () Bool)

(assert (=> d!28638 e!68299))

(declare-fun res!56269 () Bool)

(assert (=> d!28638 (=> res!56269 e!68299)))

(declare-fun lt!35439 () Bool)

(assert (=> d!28638 (= res!56269 (not lt!35439))))

(declare-fun e!68298 () Bool)

(assert (=> d!28638 (= lt!35439 e!68298)))

(declare-fun res!56267 () Bool)

(assert (=> d!28638 (=> res!56267 e!68298)))

(assert (=> d!28638 (= res!56267 ((_ is Nil!1972) totalInput!1363))))

(assert (=> d!28638 (= (isPrefix!113 totalInput!1363 totalInput!1363) lt!35439)))

(declare-fun b!119569 () Bool)

(assert (=> b!119569 (= e!68299 (>= (size!1818 totalInput!1363) (size!1818 totalInput!1363)))))

(declare-fun b!119566 () Bool)

(assert (=> b!119566 (= e!68298 e!68300)))

(declare-fun res!56268 () Bool)

(assert (=> b!119566 (=> (not res!56268) (not e!68300))))

(assert (=> b!119566 (= res!56268 (not ((_ is Nil!1972) totalInput!1363)))))

(declare-fun b!119568 () Bool)

(declare-fun tail!228 (List!1978) List!1978)

(assert (=> b!119568 (= e!68300 (isPrefix!113 (tail!228 totalInput!1363) (tail!228 totalInput!1363)))))

(assert (= (and d!28638 (not res!56267)) b!119566))

(assert (= (and b!119566 res!56268) b!119567))

(assert (= (and b!119567 res!56266) b!119568))

(assert (= (and d!28638 (not res!56269)) b!119569))

(declare-fun m!106461 () Bool)

(assert (=> b!119567 m!106461))

(assert (=> b!119567 m!106461))

(assert (=> b!119569 m!106435))

(assert (=> b!119569 m!106435))

(declare-fun m!106463 () Bool)

(assert (=> b!119568 m!106463))

(assert (=> b!119568 m!106463))

(assert (=> b!119568 m!106463))

(assert (=> b!119568 m!106463))

(declare-fun m!106465 () Bool)

(assert (=> b!119568 m!106465))

(assert (=> b!119532 d!28638))

(declare-fun d!28640 () Bool)

(assert (=> d!28640 (isPrefix!113 totalInput!1363 totalInput!1363)))

(declare-fun lt!35442 () Unit!1480)

(declare-fun choose!1553 (List!1978 List!1978) Unit!1480)

(assert (=> d!28640 (= lt!35442 (choose!1553 totalInput!1363 totalInput!1363))))

(assert (=> d!28640 (= (lemmaIsPrefixRefl!85 totalInput!1363 totalInput!1363) lt!35442)))

(declare-fun bs!11911 () Bool)

(assert (= bs!11911 d!28640))

(assert (=> bs!11911 m!106439))

(declare-fun m!106467 () Bool)

(assert (=> bs!11911 m!106467))

(assert (=> b!119532 d!28640))

(declare-fun d!28642 () Bool)

(declare-fun lt!35445 () Int)

(assert (=> d!28642 (>= lt!35445 0)))

(declare-fun e!68303 () Int)

(assert (=> d!28642 (= lt!35445 e!68303)))

(declare-fun c!26847 () Bool)

(assert (=> d!28642 (= c!26847 ((_ is Nil!1972) testedP!367))))

(assert (=> d!28642 (= (size!1818 testedP!367) lt!35445)))

(declare-fun b!119574 () Bool)

(assert (=> b!119574 (= e!68303 0)))

(declare-fun b!119575 () Bool)

(assert (=> b!119575 (= e!68303 (+ 1 (size!1818 (t!22455 testedP!367))))))

(assert (= (and d!28642 c!26847) b!119574))

(assert (= (and d!28642 (not c!26847)) b!119575))

(declare-fun m!106469 () Bool)

(assert (=> b!119575 m!106469))

(assert (=> b!119533 d!28642))

(declare-fun d!28644 () Bool)

(declare-fun validCacheMap!23 (MutableMap!395) Bool)

(assert (=> d!28644 (= (valid!361 cache!470) (validCacheMap!23 (cache!847 cache!470)))))

(declare-fun bs!11912 () Bool)

(assert (= bs!11912 d!28644))

(declare-fun m!106471 () Bool)

(assert (=> bs!11912 m!106471))

(assert (=> b!119543 d!28644))

(declare-fun d!28646 () Bool)

(declare-fun lostCauseFct!26 (Regex!533) Bool)

(assert (=> d!28646 (= (lostCause!58 r!15532) (lostCauseFct!26 r!15532))))

(declare-fun bs!11913 () Bool)

(assert (= bs!11913 d!28646))

(declare-fun m!106473 () Bool)

(assert (=> bs!11913 m!106473))

(assert (=> b!119530 d!28646))

(declare-fun d!28648 () Bool)

(assert (=> d!28648 (= testedSuffix!285 lt!35426)))

(declare-fun lt!35448 () Unit!1480)

(declare-fun choose!1554 (List!1978 List!1978 List!1978 List!1978 List!1978) Unit!1480)

(assert (=> d!28648 (= lt!35448 (choose!1554 testedP!367 testedSuffix!285 testedP!367 lt!35426 totalInput!1363))))

(assert (=> d!28648 (isPrefix!113 testedP!367 totalInput!1363)))

(assert (=> d!28648 (= (lemmaSamePrefixThenSameSuffix!49 testedP!367 testedSuffix!285 testedP!367 lt!35426 totalInput!1363) lt!35448)))

(declare-fun bs!11914 () Bool)

(assert (= bs!11914 d!28648))

(declare-fun m!106475 () Bool)

(assert (=> bs!11914 m!106475))

(assert (=> bs!11914 m!106419))

(assert (=> b!119530 d!28648))

(declare-fun d!28650 () Bool)

(declare-fun lt!35451 () List!1978)

(assert (=> d!28650 (= (++!366 testedP!367 lt!35451) totalInput!1363)))

(declare-fun e!68306 () List!1978)

(assert (=> d!28650 (= lt!35451 e!68306)))

(declare-fun c!26850 () Bool)

(assert (=> d!28650 (= c!26850 ((_ is Cons!1972) testedP!367))))

(assert (=> d!28650 (>= (size!1818 totalInput!1363) (size!1818 testedP!367))))

(assert (=> d!28650 (= (getSuffix!53 totalInput!1363 testedP!367) lt!35451)))

(declare-fun b!119580 () Bool)

(assert (=> b!119580 (= e!68306 (getSuffix!53 (tail!228 totalInput!1363) (t!22455 testedP!367)))))

(declare-fun b!119581 () Bool)

(assert (=> b!119581 (= e!68306 totalInput!1363)))

(assert (= (and d!28650 c!26850) b!119580))

(assert (= (and d!28650 (not c!26850)) b!119581))

(declare-fun m!106477 () Bool)

(assert (=> d!28650 m!106477))

(assert (=> d!28650 m!106435))

(assert (=> d!28650 m!106433))

(assert (=> b!119580 m!106463))

(assert (=> b!119580 m!106463))

(declare-fun m!106479 () Bool)

(assert (=> b!119580 m!106479))

(assert (=> b!119530 d!28650))

(declare-fun b!119583 () Bool)

(declare-fun res!56270 () Bool)

(declare-fun e!68309 () Bool)

(assert (=> b!119583 (=> (not res!56270) (not e!68309))))

(assert (=> b!119583 (= res!56270 (= (head!492 testedP!367) (head!492 totalInput!1363)))))

(declare-fun d!28652 () Bool)

(declare-fun e!68308 () Bool)

(assert (=> d!28652 e!68308))

(declare-fun res!56273 () Bool)

(assert (=> d!28652 (=> res!56273 e!68308)))

(declare-fun lt!35452 () Bool)

(assert (=> d!28652 (= res!56273 (not lt!35452))))

(declare-fun e!68307 () Bool)

(assert (=> d!28652 (= lt!35452 e!68307)))

(declare-fun res!56271 () Bool)

(assert (=> d!28652 (=> res!56271 e!68307)))

(assert (=> d!28652 (= res!56271 ((_ is Nil!1972) testedP!367))))

(assert (=> d!28652 (= (isPrefix!113 testedP!367 totalInput!1363) lt!35452)))

(declare-fun b!119585 () Bool)

(assert (=> b!119585 (= e!68308 (>= (size!1818 totalInput!1363) (size!1818 testedP!367)))))

(declare-fun b!119582 () Bool)

(assert (=> b!119582 (= e!68307 e!68309)))

(declare-fun res!56272 () Bool)

(assert (=> b!119582 (=> (not res!56272) (not e!68309))))

(assert (=> b!119582 (= res!56272 (not ((_ is Nil!1972) totalInput!1363)))))

(declare-fun b!119584 () Bool)

(assert (=> b!119584 (= e!68309 (isPrefix!113 (tail!228 testedP!367) (tail!228 totalInput!1363)))))

(assert (= (and d!28652 (not res!56271)) b!119582))

(assert (= (and b!119582 res!56272) b!119583))

(assert (= (and b!119583 res!56270) b!119584))

(assert (= (and d!28652 (not res!56273)) b!119585))

(declare-fun m!106481 () Bool)

(assert (=> b!119583 m!106481))

(assert (=> b!119583 m!106461))

(assert (=> b!119585 m!106435))

(assert (=> b!119585 m!106433))

(declare-fun m!106483 () Bool)

(assert (=> b!119584 m!106483))

(assert (=> b!119584 m!106463))

(assert (=> b!119584 m!106483))

(assert (=> b!119584 m!106463))

(declare-fun m!106485 () Bool)

(assert (=> b!119584 m!106485))

(assert (=> b!119531 d!28652))

(declare-fun b!119587 () Bool)

(declare-fun res!56274 () Bool)

(declare-fun e!68312 () Bool)

(assert (=> b!119587 (=> (not res!56274) (not e!68312))))

(assert (=> b!119587 (= res!56274 (= (head!492 testedP!367) (head!492 lt!35427)))))

(declare-fun d!28654 () Bool)

(declare-fun e!68311 () Bool)

(assert (=> d!28654 e!68311))

(declare-fun res!56277 () Bool)

(assert (=> d!28654 (=> res!56277 e!68311)))

(declare-fun lt!35453 () Bool)

(assert (=> d!28654 (= res!56277 (not lt!35453))))

(declare-fun e!68310 () Bool)

(assert (=> d!28654 (= lt!35453 e!68310)))

(declare-fun res!56275 () Bool)

(assert (=> d!28654 (=> res!56275 e!68310)))

(assert (=> d!28654 (= res!56275 ((_ is Nil!1972) testedP!367))))

(assert (=> d!28654 (= (isPrefix!113 testedP!367 lt!35427) lt!35453)))

(declare-fun b!119589 () Bool)

(assert (=> b!119589 (= e!68311 (>= (size!1818 lt!35427) (size!1818 testedP!367)))))

(declare-fun b!119586 () Bool)

(assert (=> b!119586 (= e!68310 e!68312)))

(declare-fun res!56276 () Bool)

(assert (=> b!119586 (=> (not res!56276) (not e!68312))))

(assert (=> b!119586 (= res!56276 (not ((_ is Nil!1972) lt!35427)))))

(declare-fun b!119588 () Bool)

(assert (=> b!119588 (= e!68312 (isPrefix!113 (tail!228 testedP!367) (tail!228 lt!35427)))))

(assert (= (and d!28654 (not res!56275)) b!119586))

(assert (= (and b!119586 res!56276) b!119587))

(assert (= (and b!119587 res!56274) b!119588))

(assert (= (and d!28654 (not res!56277)) b!119589))

(assert (=> b!119587 m!106481))

(declare-fun m!106487 () Bool)

(assert (=> b!119587 m!106487))

(declare-fun m!106489 () Bool)

(assert (=> b!119589 m!106489))

(assert (=> b!119589 m!106433))

(assert (=> b!119588 m!106483))

(declare-fun m!106491 () Bool)

(assert (=> b!119588 m!106491))

(assert (=> b!119588 m!106483))

(assert (=> b!119588 m!106491))

(declare-fun m!106493 () Bool)

(assert (=> b!119588 m!106493))

(assert (=> b!119531 d!28654))

(declare-fun d!28656 () Bool)

(assert (=> d!28656 (isPrefix!113 testedP!367 (++!366 testedP!367 testedSuffix!285))))

(declare-fun lt!35456 () Unit!1480)

(declare-fun choose!1555 (List!1978 List!1978) Unit!1480)

(assert (=> d!28656 (= lt!35456 (choose!1555 testedP!367 testedSuffix!285))))

(assert (=> d!28656 (= (lemmaConcatTwoListThenFirstIsPrefix!59 testedP!367 testedSuffix!285) lt!35456)))

(declare-fun bs!11915 () Bool)

(assert (= bs!11915 d!28656))

(assert (=> bs!11915 m!106443))

(assert (=> bs!11915 m!106443))

(declare-fun m!106495 () Bool)

(assert (=> bs!11915 m!106495))

(declare-fun m!106497 () Bool)

(assert (=> bs!11915 m!106497))

(assert (=> b!119531 d!28656))

(declare-fun bm!5016 () Bool)

(declare-fun call!5027 () Unit!1480)

(assert (=> bm!5016 (= call!5027 (lemmaIsPrefixSameLengthThenSameList!30 totalInput!1363 testedP!367 totalInput!1363))))

(declare-fun b!119619 () Bool)

(declare-fun e!68332 () Unit!1480)

(declare-fun Unit!1482 () Unit!1480)

(assert (=> b!119619 (= e!68332 Unit!1482)))

(declare-fun bm!5017 () Bool)

(declare-fun call!5028 () Regex!533)

(declare-fun call!5024 () C!1988)

(declare-fun derivativeStep!49 (Regex!533 C!1988) Regex!533)

(assert (=> bm!5017 (= call!5028 (derivativeStep!49 r!15532 call!5024))))

(declare-fun call!5023 () List!1978)

(declare-fun call!5026 () tuple2!2264)

(declare-fun bm!5018 () Bool)

(declare-fun lt!35523 () List!1978)

(assert (=> bm!5018 (= call!5026 (findLongestMatchInner!42 call!5028 lt!35523 (+ testedPSize!285 1) call!5023 totalInput!1363 totalInputSize!643))))

(declare-fun bm!5019 () Bool)

(declare-fun call!5022 () Unit!1480)

(assert (=> bm!5019 (= call!5022 (lemmaIsPrefixRefl!85 totalInput!1363 totalInput!1363))))

(declare-fun b!119620 () Bool)

(declare-fun Unit!1483 () Unit!1480)

(assert (=> b!119620 (= e!68332 Unit!1483)))

(declare-fun lt!35530 () Unit!1480)

(assert (=> b!119620 (= lt!35530 call!5022)))

(declare-fun call!5025 () Bool)

(assert (=> b!119620 call!5025))

(declare-fun lt!35515 () Unit!1480)

(assert (=> b!119620 (= lt!35515 lt!35530)))

(declare-fun lt!35514 () Unit!1480)

(assert (=> b!119620 (= lt!35514 call!5027)))

(assert (=> b!119620 (= totalInput!1363 testedP!367)))

(declare-fun lt!35532 () Unit!1480)

(assert (=> b!119620 (= lt!35532 lt!35514)))

(assert (=> b!119620 false))

(declare-fun bm!5020 () Bool)

(assert (=> bm!5020 (= call!5024 (head!492 testedSuffix!285))))

(declare-fun b!119621 () Bool)

(declare-fun e!68333 () tuple2!2264)

(declare-fun e!68331 () tuple2!2264)

(assert (=> b!119621 (= e!68333 e!68331)))

(declare-fun lt!35537 () tuple2!2264)

(assert (=> b!119621 (= lt!35537 call!5026)))

(declare-fun c!26863 () Bool)

(declare-fun isEmpty!811 (List!1978) Bool)

(assert (=> b!119621 (= c!26863 (isEmpty!811 (_1!1342 lt!35537)))))

(declare-fun b!119622 () Bool)

(declare-fun e!68330 () tuple2!2264)

(declare-fun e!68335 () tuple2!2264)

(assert (=> b!119622 (= e!68330 e!68335)))

(declare-fun c!26864 () Bool)

(assert (=> b!119622 (= c!26864 (= testedPSize!285 totalInputSize!643))))

(declare-fun bm!5021 () Bool)

(declare-fun call!5021 () Bool)

(assert (=> bm!5021 (= call!5021 (nullable!78 r!15532))))

(declare-fun b!119623 () Bool)

(declare-fun e!68336 () tuple2!2264)

(assert (=> b!119623 (= e!68336 (tuple2!2265 testedP!367 Nil!1972))))

(declare-fun bm!5022 () Bool)

(assert (=> bm!5022 (= call!5023 (tail!228 testedSuffix!285))))

(declare-fun b!119624 () Bool)

(assert (=> b!119624 (= e!68331 lt!35537)))

(declare-fun d!28658 () Bool)

(declare-fun e!68329 () Bool)

(assert (=> d!28658 e!68329))

(declare-fun res!56283 () Bool)

(assert (=> d!28658 (=> (not res!56283) (not e!68329))))

(declare-fun lt!35533 () tuple2!2264)

(assert (=> d!28658 (= res!56283 (= (++!366 (_1!1342 lt!35533) (_2!1342 lt!35533)) totalInput!1363))))

(assert (=> d!28658 (= lt!35533 e!68330)))

(declare-fun c!26868 () Bool)

(assert (=> d!28658 (= c!26868 (lostCause!58 r!15532))))

(declare-fun lt!35513 () Unit!1480)

(declare-fun Unit!1484 () Unit!1480)

(assert (=> d!28658 (= lt!35513 Unit!1484)))

(assert (=> d!28658 (= (getSuffix!53 totalInput!1363 testedP!367) testedSuffix!285)))

(declare-fun lt!35539 () Unit!1480)

(declare-fun lt!35519 () Unit!1480)

(assert (=> d!28658 (= lt!35539 lt!35519)))

(declare-fun lt!35534 () List!1978)

(assert (=> d!28658 (= testedSuffix!285 lt!35534)))

(assert (=> d!28658 (= lt!35519 (lemmaSamePrefixThenSameSuffix!49 testedP!367 testedSuffix!285 testedP!367 lt!35534 totalInput!1363))))

(assert (=> d!28658 (= lt!35534 (getSuffix!53 totalInput!1363 testedP!367))))

(declare-fun lt!35526 () Unit!1480)

(declare-fun lt!35536 () Unit!1480)

(assert (=> d!28658 (= lt!35526 lt!35536)))

(assert (=> d!28658 (isPrefix!113 testedP!367 (++!366 testedP!367 testedSuffix!285))))

(assert (=> d!28658 (= lt!35536 (lemmaConcatTwoListThenFirstIsPrefix!59 testedP!367 testedSuffix!285))))

(assert (=> d!28658 (validRegex!134 r!15532)))

(assert (=> d!28658 (= (findLongestMatchInner!42 r!15532 testedP!367 testedPSize!285 testedSuffix!285 totalInput!1363 totalInputSize!643) lt!35533)))

(declare-fun b!119618 () Bool)

(declare-fun e!68334 () Bool)

(assert (=> b!119618 (= e!68329 e!68334)))

(declare-fun res!56282 () Bool)

(assert (=> b!119618 (=> res!56282 e!68334)))

(assert (=> b!119618 (= res!56282 (isEmpty!811 (_1!1342 lt!35533)))))

(declare-fun b!119625 () Bool)

(assert (=> b!119625 (= e!68336 (tuple2!2265 Nil!1972 totalInput!1363))))

(declare-fun b!119626 () Bool)

(assert (=> b!119626 (= e!68334 (>= (size!1818 (_1!1342 lt!35533)) (size!1818 testedP!367)))))

(declare-fun b!119627 () Bool)

(declare-fun c!26867 () Bool)

(assert (=> b!119627 (= c!26867 call!5021)))

(declare-fun lt!35524 () Unit!1480)

(declare-fun lt!35528 () Unit!1480)

(assert (=> b!119627 (= lt!35524 lt!35528)))

(assert (=> b!119627 (= totalInput!1363 testedP!367)))

(assert (=> b!119627 (= lt!35528 call!5027)))

(declare-fun lt!35517 () Unit!1480)

(declare-fun lt!35520 () Unit!1480)

(assert (=> b!119627 (= lt!35517 lt!35520)))

(assert (=> b!119627 call!5025))

(assert (=> b!119627 (= lt!35520 call!5022)))

(assert (=> b!119627 (= e!68335 e!68336)))

(declare-fun b!119628 () Bool)

(assert (=> b!119628 (= e!68331 (tuple2!2265 testedP!367 testedSuffix!285))))

(declare-fun b!119629 () Bool)

(declare-fun c!26866 () Bool)

(assert (=> b!119629 (= c!26866 call!5021)))

(declare-fun lt!35540 () Unit!1480)

(declare-fun lt!35516 () Unit!1480)

(assert (=> b!119629 (= lt!35540 lt!35516)))

(declare-fun lt!35529 () List!1978)

(declare-fun lt!35527 () C!1988)

(assert (=> b!119629 (= (++!366 (++!366 testedP!367 (Cons!1972 lt!35527 Nil!1972)) lt!35529) totalInput!1363)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!17 (List!1978 C!1988 List!1978 List!1978) Unit!1480)

(assert (=> b!119629 (= lt!35516 (lemmaMoveElementToOtherListKeepsConcatEq!17 testedP!367 lt!35527 lt!35529 totalInput!1363))))

(assert (=> b!119629 (= lt!35529 (tail!228 testedSuffix!285))))

(assert (=> b!119629 (= lt!35527 (head!492 testedSuffix!285))))

(declare-fun lt!35538 () Unit!1480)

(declare-fun lt!35518 () Unit!1480)

(assert (=> b!119629 (= lt!35538 lt!35518)))

(assert (=> b!119629 (isPrefix!113 (++!366 testedP!367 (Cons!1972 (head!492 (getSuffix!53 totalInput!1363 testedP!367)) Nil!1972)) totalInput!1363)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!21 (List!1978 List!1978) Unit!1480)

(assert (=> b!119629 (= lt!35518 (lemmaAddHeadSuffixToPrefixStillPrefix!21 testedP!367 totalInput!1363))))

(declare-fun lt!35521 () Unit!1480)

(declare-fun lt!35522 () Unit!1480)

(assert (=> b!119629 (= lt!35521 lt!35522)))

(assert (=> b!119629 (= lt!35522 (lemmaAddHeadSuffixToPrefixStillPrefix!21 testedP!367 totalInput!1363))))

(assert (=> b!119629 (= lt!35523 (++!366 testedP!367 (Cons!1972 (head!492 testedSuffix!285) Nil!1972)))))

(declare-fun lt!35535 () Unit!1480)

(assert (=> b!119629 (= lt!35535 e!68332)))

(declare-fun c!26865 () Bool)

(assert (=> b!119629 (= c!26865 (= (size!1818 testedP!367) (size!1818 totalInput!1363)))))

(declare-fun lt!35525 () Unit!1480)

(declare-fun lt!35531 () Unit!1480)

(assert (=> b!119629 (= lt!35525 lt!35531)))

(assert (=> b!119629 (<= (size!1818 testedP!367) (size!1818 totalInput!1363))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!28 (List!1978 List!1978) Unit!1480)

(assert (=> b!119629 (= lt!35531 (lemmaIsPrefixThenSmallerEqSize!28 testedP!367 totalInput!1363))))

(assert (=> b!119629 (= e!68335 e!68333)))

(declare-fun bm!5023 () Bool)

(assert (=> bm!5023 (= call!5025 (isPrefix!113 totalInput!1363 totalInput!1363))))

(declare-fun b!119630 () Bool)

(assert (=> b!119630 (= e!68330 (tuple2!2265 Nil!1972 totalInput!1363))))

(declare-fun b!119631 () Bool)

(assert (=> b!119631 (= e!68333 call!5026)))

(assert (= (and d!28658 c!26868) b!119630))

(assert (= (and d!28658 (not c!26868)) b!119622))

(assert (= (and b!119622 c!26864) b!119627))

(assert (= (and b!119622 (not c!26864)) b!119629))

(assert (= (and b!119627 c!26867) b!119623))

(assert (= (and b!119627 (not c!26867)) b!119625))

(assert (= (and b!119629 c!26865) b!119620))

(assert (= (and b!119629 (not c!26865)) b!119619))

(assert (= (and b!119629 c!26866) b!119621))

(assert (= (and b!119629 (not c!26866)) b!119631))

(assert (= (and b!119621 c!26863) b!119628))

(assert (= (and b!119621 (not c!26863)) b!119624))

(assert (= (or b!119621 b!119631) bm!5022))

(assert (= (or b!119621 b!119631) bm!5020))

(assert (= (or b!119621 b!119631) bm!5017))

(assert (= (or b!119621 b!119631) bm!5018))

(assert (= (or b!119627 b!119620) bm!5019))

(assert (= (or b!119627 b!119620) bm!5023))

(assert (= (or b!119627 b!119629) bm!5021))

(assert (= (or b!119627 b!119620) bm!5016))

(assert (= (and d!28658 res!56283) b!119618))

(assert (= (and b!119618 (not res!56282)) b!119626))

(declare-fun m!106499 () Bool)

(assert (=> b!119626 m!106499))

(assert (=> b!119626 m!106433))

(declare-fun m!106501 () Bool)

(assert (=> b!119621 m!106501))

(declare-fun m!106503 () Bool)

(assert (=> bm!5017 m!106503))

(assert (=> d!28658 m!106427))

(assert (=> d!28658 m!106443))

(declare-fun m!106505 () Bool)

(assert (=> d!28658 m!106505))

(assert (=> d!28658 m!106431))

(assert (=> d!28658 m!106423))

(assert (=> d!28658 m!106443))

(assert (=> d!28658 m!106495))

(declare-fun m!106507 () Bool)

(assert (=> d!28658 m!106507))

(assert (=> d!28658 m!106415))

(assert (=> bm!5016 m!106437))

(assert (=> bm!5021 m!106425))

(declare-fun m!106509 () Bool)

(assert (=> bm!5022 m!106509))

(declare-fun m!106511 () Bool)

(assert (=> bm!5018 m!106511))

(assert (=> bm!5023 m!106439))

(declare-fun m!106513 () Bool)

(assert (=> b!119629 m!106513))

(declare-fun m!106515 () Bool)

(assert (=> b!119629 m!106515))

(declare-fun m!106517 () Bool)

(assert (=> b!119629 m!106517))

(declare-fun m!106519 () Bool)

(assert (=> b!119629 m!106519))

(declare-fun m!106521 () Bool)

(assert (=> b!119629 m!106521))

(assert (=> b!119629 m!106435))

(assert (=> b!119629 m!106515))

(declare-fun m!106523 () Bool)

(assert (=> b!119629 m!106523))

(assert (=> b!119629 m!106431))

(assert (=> b!119629 m!106433))

(assert (=> b!119629 m!106521))

(declare-fun m!106525 () Bool)

(assert (=> b!119629 m!106525))

(assert (=> b!119629 m!106509))

(declare-fun m!106527 () Bool)

(assert (=> b!119629 m!106527))

(declare-fun m!106529 () Bool)

(assert (=> b!119629 m!106529))

(assert (=> b!119629 m!106431))

(declare-fun m!106531 () Bool)

(assert (=> b!119629 m!106531))

(declare-fun m!106533 () Bool)

(assert (=> b!119618 m!106533))

(assert (=> bm!5019 m!106441))

(assert (=> bm!5020 m!106529))

(assert (=> b!119540 d!28658))

(declare-fun d!28660 () Bool)

(assert (=> d!28660 (= (array_inv!489 (_keys!690 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) (bvsge (size!1816 (_keys!690 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119536 d!28660))

(declare-fun d!28662 () Bool)

(assert (=> d!28662 (= (array_inv!490 (_values!677 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) (bvsge (size!1817 (_values!677 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!119536 d!28662))

(declare-fun d!28664 () Bool)

(declare-fun lt!35541 () Int)

(assert (=> d!28664 (>= lt!35541 0)))

(declare-fun e!68337 () Int)

(assert (=> d!28664 (= lt!35541 e!68337)))

(declare-fun c!26869 () Bool)

(assert (=> d!28664 (= c!26869 ((_ is Nil!1972) totalInput!1363))))

(assert (=> d!28664 (= (size!1818 totalInput!1363) lt!35541)))

(declare-fun b!119632 () Bool)

(assert (=> b!119632 (= e!68337 0)))

(declare-fun b!119633 () Bool)

(assert (=> b!119633 (= e!68337 (+ 1 (size!1818 (t!22455 totalInput!1363))))))

(assert (= (and d!28664 c!26869) b!119632))

(assert (= (and d!28664 (not c!26869)) b!119633))

(declare-fun m!106535 () Bool)

(assert (=> b!119633 m!106535))

(assert (=> b!119526 d!28664))

(declare-fun b!119653 () Bool)

(declare-fun e!68357 () Bool)

(declare-fun e!68356 () Bool)

(assert (=> b!119653 (= e!68357 e!68356)))

(declare-fun res!56294 () Bool)

(assert (=> b!119653 (= res!56294 (not (nullable!78 (reg!862 r!15532))))))

(assert (=> b!119653 (=> (not res!56294) (not e!68356))))

(declare-fun b!119654 () Bool)

(declare-fun e!68358 () Bool)

(declare-fun e!68355 () Bool)

(assert (=> b!119654 (= e!68358 e!68355)))

(declare-fun res!56296 () Bool)

(assert (=> b!119654 (=> (not res!56296) (not e!68355))))

(declare-fun call!5036 () Bool)

(assert (=> b!119654 (= res!56296 call!5036)))

(declare-fun b!119655 () Bool)

(declare-fun call!5035 () Bool)

(assert (=> b!119655 (= e!68356 call!5035)))

(declare-fun b!119656 () Bool)

(declare-fun res!56297 () Bool)

(assert (=> b!119656 (=> res!56297 e!68358)))

(assert (=> b!119656 (= res!56297 (not ((_ is Concat!917) r!15532)))))

(declare-fun e!68353 () Bool)

(assert (=> b!119656 (= e!68353 e!68358)))

(declare-fun b!119657 () Bool)

(declare-fun e!68352 () Bool)

(assert (=> b!119657 (= e!68352 call!5036)))

(declare-fun c!26875 () Bool)

(declare-fun c!26874 () Bool)

(declare-fun bm!5030 () Bool)

(assert (=> bm!5030 (= call!5035 (validRegex!134 (ite c!26875 (reg!862 r!15532) (ite c!26874 (regTwo!1579 r!15532) (regOne!1578 r!15532)))))))

(declare-fun b!119658 () Bool)

(declare-fun res!56295 () Bool)

(assert (=> b!119658 (=> (not res!56295) (not e!68352))))

(declare-fun call!5037 () Bool)

(assert (=> b!119658 (= res!56295 call!5037)))

(assert (=> b!119658 (= e!68353 e!68352)))

(declare-fun b!119659 () Bool)

(assert (=> b!119659 (= e!68355 call!5037)))

(declare-fun bm!5031 () Bool)

(assert (=> bm!5031 (= call!5037 (validRegex!134 (ite c!26874 (regOne!1579 r!15532) (regTwo!1578 r!15532))))))

(declare-fun b!119652 () Bool)

(declare-fun e!68354 () Bool)

(assert (=> b!119652 (= e!68354 e!68357)))

(assert (=> b!119652 (= c!26875 ((_ is Star!533) r!15532))))

(declare-fun d!28666 () Bool)

(declare-fun res!56298 () Bool)

(assert (=> d!28666 (=> res!56298 e!68354)))

(assert (=> d!28666 (= res!56298 ((_ is ElementMatch!533) r!15532))))

(assert (=> d!28666 (= (validRegex!134 r!15532) e!68354)))

(declare-fun bm!5032 () Bool)

(assert (=> bm!5032 (= call!5036 call!5035)))

(declare-fun b!119660 () Bool)

(assert (=> b!119660 (= e!68357 e!68353)))

(assert (=> b!119660 (= c!26874 ((_ is Union!533) r!15532))))

(assert (= (and d!28666 (not res!56298)) b!119652))

(assert (= (and b!119652 c!26875) b!119653))

(assert (= (and b!119652 (not c!26875)) b!119660))

(assert (= (and b!119653 res!56294) b!119655))

(assert (= (and b!119660 c!26874) b!119658))

(assert (= (and b!119660 (not c!26874)) b!119656))

(assert (= (and b!119658 res!56295) b!119657))

(assert (= (and b!119656 (not res!56297)) b!119654))

(assert (= (and b!119654 res!56296) b!119659))

(assert (= (or b!119657 b!119654) bm!5032))

(assert (= (or b!119658 b!119659) bm!5031))

(assert (= (or b!119655 bm!5032) bm!5030))

(declare-fun m!106537 () Bool)

(assert (=> b!119653 m!106537))

(declare-fun m!106539 () Bool)

(assert (=> bm!5030 m!106539))

(declare-fun m!106541 () Bool)

(assert (=> bm!5031 m!106541))

(assert (=> start!12092 d!28666))

(declare-fun d!28668 () Bool)

(declare-fun res!56301 () Bool)

(declare-fun e!68361 () Bool)

(assert (=> d!28668 (=> (not res!56301) (not e!68361))))

(assert (=> d!28668 (= res!56301 ((_ is HashMap!395) (cache!847 cache!470)))))

(assert (=> d!28668 (= (inv!2497 cache!470) e!68361)))

(declare-fun b!119663 () Bool)

(assert (=> b!119663 (= e!68361 (validCacheMap!23 (cache!847 cache!470)))))

(assert (= (and d!28668 res!56301) b!119663))

(assert (=> b!119663 m!106471))

(assert (=> start!12092 d!28668))

(declare-fun tp!65670 () Bool)

(declare-fun e!68364 () Bool)

(declare-fun tp!65672 () Bool)

(declare-fun b!119668 () Bool)

(declare-fun tp!65671 () Bool)

(assert (=> b!119668 (= e!68364 (and tp!65670 tp_is_empty!1121 tp!65671 tp!65672))))

(assert (=> b!119536 (= tp!65654 e!68364)))

(assert (= (and b!119536 ((_ is Cons!1973) (zeroValue!655 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470)))))))) b!119668))

(declare-fun b!119669 () Bool)

(declare-fun e!68365 () Bool)

(declare-fun tp!65674 () Bool)

(declare-fun tp!65675 () Bool)

(declare-fun tp!65673 () Bool)

(assert (=> b!119669 (= e!68365 (and tp!65673 tp_is_empty!1121 tp!65674 tp!65675))))

(assert (=> b!119536 (= tp!65663 e!68365)))

(assert (= (and b!119536 ((_ is Cons!1973) (minValue!655 (v!13329 (underlying!997 (v!13330 (underlying!998 (cache!847 cache!470)))))))) b!119669))

(declare-fun b!119682 () Bool)

(declare-fun e!68368 () Bool)

(declare-fun tp!65690 () Bool)

(assert (=> b!119682 (= e!68368 tp!65690)))

(declare-fun b!119680 () Bool)

(assert (=> b!119680 (= e!68368 tp_is_empty!1121)))

(declare-fun b!119683 () Bool)

(declare-fun tp!65689 () Bool)

(declare-fun tp!65687 () Bool)

(assert (=> b!119683 (= e!68368 (and tp!65689 tp!65687))))

(declare-fun b!119681 () Bool)

(declare-fun tp!65686 () Bool)

(declare-fun tp!65688 () Bool)

(assert (=> b!119681 (= e!68368 (and tp!65686 tp!65688))))

(assert (=> b!119538 (= tp!65659 e!68368)))

(assert (= (and b!119538 ((_ is ElementMatch!533) (regOne!1578 r!15532))) b!119680))

(assert (= (and b!119538 ((_ is Concat!917) (regOne!1578 r!15532))) b!119681))

(assert (= (and b!119538 ((_ is Star!533) (regOne!1578 r!15532))) b!119682))

(assert (= (and b!119538 ((_ is Union!533) (regOne!1578 r!15532))) b!119683))

(declare-fun b!119686 () Bool)

(declare-fun e!68369 () Bool)

(declare-fun tp!65695 () Bool)

(assert (=> b!119686 (= e!68369 tp!65695)))

(declare-fun b!119684 () Bool)

(assert (=> b!119684 (= e!68369 tp_is_empty!1121)))

(declare-fun b!119687 () Bool)

(declare-fun tp!65694 () Bool)

(declare-fun tp!65692 () Bool)

(assert (=> b!119687 (= e!68369 (and tp!65694 tp!65692))))

(declare-fun b!119685 () Bool)

(declare-fun tp!65691 () Bool)

(declare-fun tp!65693 () Bool)

(assert (=> b!119685 (= e!68369 (and tp!65691 tp!65693))))

(assert (=> b!119538 (= tp!65650 e!68369)))

(assert (= (and b!119538 ((_ is ElementMatch!533) (regTwo!1578 r!15532))) b!119684))

(assert (= (and b!119538 ((_ is Concat!917) (regTwo!1578 r!15532))) b!119685))

(assert (= (and b!119538 ((_ is Star!533) (regTwo!1578 r!15532))) b!119686))

(assert (= (and b!119538 ((_ is Union!533) (regTwo!1578 r!15532))) b!119687))

(declare-fun tp!65714 () Bool)

(declare-fun tp!65715 () Bool)

(declare-fun b!119695 () Bool)

(declare-fun e!68374 () Bool)

(declare-fun tp!65713 () Bool)

(assert (=> b!119695 (= e!68374 (and tp!65714 tp_is_empty!1121 tp!65715 tp!65713))))

(declare-fun mapNonEmpty!1544 () Bool)

(declare-fun mapRes!1544 () Bool)

(declare-fun tp!65716 () Bool)

(declare-fun e!68375 () Bool)

(assert (=> mapNonEmpty!1544 (= mapRes!1544 (and tp!65716 e!68375))))

(declare-fun mapRest!1544 () (Array (_ BitVec 32) List!1979))

(declare-fun mapValue!1544 () List!1979)

(declare-fun mapKey!1544 () (_ BitVec 32))

(assert (=> mapNonEmpty!1544 (= mapRest!1541 (store mapRest!1544 mapKey!1544 mapValue!1544))))

(declare-fun mapIsEmpty!1544 () Bool)

(assert (=> mapIsEmpty!1544 mapRes!1544))

(declare-fun condMapEmpty!1544 () Bool)

(declare-fun mapDefault!1544 () List!1979)

(assert (=> mapNonEmpty!1541 (= condMapEmpty!1544 (= mapRest!1541 ((as const (Array (_ BitVec 32) List!1979)) mapDefault!1544)))))

(assert (=> mapNonEmpty!1541 (= tp!65655 (and e!68374 mapRes!1544))))

(declare-fun tp!65712 () Bool)

(declare-fun tp!65710 () Bool)

(declare-fun b!119694 () Bool)

(declare-fun tp!65711 () Bool)

(assert (=> b!119694 (= e!68375 (and tp!65712 tp_is_empty!1121 tp!65711 tp!65710))))

(assert (= (and mapNonEmpty!1541 condMapEmpty!1544) mapIsEmpty!1544))

(assert (= (and mapNonEmpty!1541 (not condMapEmpty!1544)) mapNonEmpty!1544))

(assert (= (and mapNonEmpty!1544 ((_ is Cons!1973) mapValue!1544)) b!119694))

(assert (= (and mapNonEmpty!1541 ((_ is Cons!1973) mapDefault!1544)) b!119695))

(declare-fun m!106543 () Bool)

(assert (=> mapNonEmpty!1544 m!106543))

(declare-fun b!119696 () Bool)

(declare-fun e!68376 () Bool)

(declare-fun tp!65718 () Bool)

(declare-fun tp!65719 () Bool)

(declare-fun tp!65717 () Bool)

(assert (=> b!119696 (= e!68376 (and tp!65717 tp_is_empty!1121 tp!65718 tp!65719))))

(assert (=> mapNonEmpty!1541 (= tp!65649 e!68376)))

(assert (= (and mapNonEmpty!1541 ((_ is Cons!1973) mapValue!1541)) b!119696))

(declare-fun tp!65722 () Bool)

(declare-fun e!68377 () Bool)

(declare-fun tp!65720 () Bool)

(declare-fun tp!65721 () Bool)

(declare-fun b!119697 () Bool)

(assert (=> b!119697 (= e!68377 (and tp!65720 tp_is_empty!1121 tp!65721 tp!65722))))

(assert (=> b!119528 (= tp!65662 e!68377)))

(assert (= (and b!119528 ((_ is Cons!1973) mapDefault!1541)) b!119697))

(declare-fun b!119702 () Bool)

(declare-fun e!68380 () Bool)

(declare-fun tp!65725 () Bool)

(assert (=> b!119702 (= e!68380 (and tp_is_empty!1121 tp!65725))))

(assert (=> b!119534 (= tp!65651 e!68380)))

(assert (= (and b!119534 ((_ is Cons!1972) (t!22455 testedSuffix!285))) b!119702))

(declare-fun b!119705 () Bool)

(declare-fun e!68381 () Bool)

(declare-fun tp!65730 () Bool)

(assert (=> b!119705 (= e!68381 tp!65730)))

(declare-fun b!119703 () Bool)

(assert (=> b!119703 (= e!68381 tp_is_empty!1121)))

(declare-fun b!119706 () Bool)

(declare-fun tp!65729 () Bool)

(declare-fun tp!65727 () Bool)

(assert (=> b!119706 (= e!68381 (and tp!65729 tp!65727))))

(declare-fun b!119704 () Bool)

(declare-fun tp!65726 () Bool)

(declare-fun tp!65728 () Bool)

(assert (=> b!119704 (= e!68381 (and tp!65726 tp!65728))))

(assert (=> b!119545 (= tp!65657 e!68381)))

(assert (= (and b!119545 ((_ is ElementMatch!533) (reg!862 r!15532))) b!119703))

(assert (= (and b!119545 ((_ is Concat!917) (reg!862 r!15532))) b!119704))

(assert (= (and b!119545 ((_ is Star!533) (reg!862 r!15532))) b!119705))

(assert (= (and b!119545 ((_ is Union!533) (reg!862 r!15532))) b!119706))

(declare-fun b!119709 () Bool)

(declare-fun e!68382 () Bool)

(declare-fun tp!65735 () Bool)

(assert (=> b!119709 (= e!68382 tp!65735)))

(declare-fun b!119707 () Bool)

(assert (=> b!119707 (= e!68382 tp_is_empty!1121)))

(declare-fun b!119710 () Bool)

(declare-fun tp!65734 () Bool)

(declare-fun tp!65732 () Bool)

(assert (=> b!119710 (= e!68382 (and tp!65734 tp!65732))))

(declare-fun b!119708 () Bool)

(declare-fun tp!65731 () Bool)

(declare-fun tp!65733 () Bool)

(assert (=> b!119708 (= e!68382 (and tp!65731 tp!65733))))

(assert (=> b!119539 (= tp!65658 e!68382)))

(assert (= (and b!119539 ((_ is ElementMatch!533) (regOne!1579 r!15532))) b!119707))

(assert (= (and b!119539 ((_ is Concat!917) (regOne!1579 r!15532))) b!119708))

(assert (= (and b!119539 ((_ is Star!533) (regOne!1579 r!15532))) b!119709))

(assert (= (and b!119539 ((_ is Union!533) (regOne!1579 r!15532))) b!119710))

(declare-fun b!119713 () Bool)

(declare-fun e!68383 () Bool)

(declare-fun tp!65740 () Bool)

(assert (=> b!119713 (= e!68383 tp!65740)))

(declare-fun b!119711 () Bool)

(assert (=> b!119711 (= e!68383 tp_is_empty!1121)))

(declare-fun b!119714 () Bool)

(declare-fun tp!65739 () Bool)

(declare-fun tp!65737 () Bool)

(assert (=> b!119714 (= e!68383 (and tp!65739 tp!65737))))

(declare-fun b!119712 () Bool)

(declare-fun tp!65736 () Bool)

(declare-fun tp!65738 () Bool)

(assert (=> b!119712 (= e!68383 (and tp!65736 tp!65738))))

(assert (=> b!119539 (= tp!65660 e!68383)))

(assert (= (and b!119539 ((_ is ElementMatch!533) (regTwo!1579 r!15532))) b!119711))

(assert (= (and b!119539 ((_ is Concat!917) (regTwo!1579 r!15532))) b!119712))

(assert (= (and b!119539 ((_ is Star!533) (regTwo!1579 r!15532))) b!119713))

(assert (= (and b!119539 ((_ is Union!533) (regTwo!1579 r!15532))) b!119714))

(declare-fun b!119715 () Bool)

(declare-fun e!68384 () Bool)

(declare-fun tp!65741 () Bool)

(assert (=> b!119715 (= e!68384 (and tp_is_empty!1121 tp!65741))))

(assert (=> b!119541 (= tp!65653 e!68384)))

(assert (= (and b!119541 ((_ is Cons!1972) (t!22455 testedP!367))) b!119715))

(declare-fun b!119716 () Bool)

(declare-fun e!68385 () Bool)

(declare-fun tp!65742 () Bool)

(assert (=> b!119716 (= e!68385 (and tp_is_empty!1121 tp!65742))))

(assert (=> b!119535 (= tp!65656 e!68385)))

(assert (= (and b!119535 ((_ is Cons!1972) (t!22455 totalInput!1363))) b!119716))

(check-sat (not d!28640) (not b!119696) (not b!119695) (not d!28644) (not b!119618) (not b_next!3825) (not b!119588) b_and!5957 (not bm!5022) (not b!119584) (not b!119710) (not b!119715) (not b!119705) (not d!28646) (not d!28632) (not bm!5030) (not d!28658) (not bm!5017) (not bm!5016) (not b!119706) (not b!119686) (not b!119682) (not d!28636) (not b!119589) (not b!119626) (not d!28648) (not b!119629) (not b!119587) (not b!119580) (not b!119714) (not d!28634) (not b!119583) (not d!28656) (not b!119708) (not b!119668) (not b!119556) (not b!119663) b_and!5955 (not b!119685) (not b_next!3827) (not d!28650) (not b!119568) tp_is_empty!1121 (not b!119697) (not b!119653) (not mapNonEmpty!1544) (not b!119716) (not b!119633) (not b!119713) (not b!119702) (not bm!5019) (not b!119694) (not b!119555) (not bm!5018) (not bm!5020) (not b!119683) (not b!119681) (not b!119687) (not b!119712) (not b!119585) (not b!119569) (not b!119567) (not bm!5023) (not bm!5021) (not bm!5031) (not b!119669) (not b!119621) (not b!119709) (not b!119575) (not b!119704))
(check-sat b_and!5955 b_and!5957 (not b_next!3825) (not b_next!3827))
