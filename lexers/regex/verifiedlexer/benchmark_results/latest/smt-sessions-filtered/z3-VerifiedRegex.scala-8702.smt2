; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463640 () Bool)

(assert start!463640)

(declare-fun e!2885390 () Bool)

(declare-fun b!4625625 () Bool)

(declare-fun tp_is_empty!29317 () Bool)

(declare-fun tp!1342114 () Bool)

(declare-fun tp_is_empty!29319 () Bool)

(assert (=> b!4625625 (= e!2885390 (and tp_is_empty!29317 tp_is_empty!29319 tp!1342114))))

(declare-fun b!4625626 () Bool)

(declare-fun res!1939737 () Bool)

(declare-fun e!2885386 () Bool)

(assert (=> b!4625626 (=> (not res!1939737) (not e!2885386))))

(declare-datatypes ((K!12915 0))(
  ( (K!12916 (val!18603 Int)) )
))
(declare-datatypes ((V!13161 0))(
  ( (V!13162 (val!18604 Int)) )
))
(declare-datatypes ((tuple2!52470 0))(
  ( (tuple2!52471 (_1!29529 K!12915) (_2!29529 V!13161)) )
))
(declare-datatypes ((List!51660 0))(
  ( (Nil!51536) (Cons!51536 (h!57588 tuple2!52470) (t!358694 List!51660)) )
))
(declare-fun newBucket!224 () List!51660)

(declare-fun noDuplicateKeys!1506 (List!51660) Bool)

(assert (=> b!4625626 (= res!1939737 (noDuplicateKeys!1506 newBucket!224))))

(declare-fun b!4625627 () Bool)

(declare-fun res!1939742 () Bool)

(assert (=> b!4625627 (=> (not res!1939742) (not e!2885386))))

(declare-fun oldBucket!40 () List!51660)

(declare-fun key!4968 () K!12915)

(declare-fun removePairForKey!1129 (List!51660 K!12915) List!51660)

(assert (=> b!4625627 (= res!1939742 (= (removePairForKey!1129 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4625628 () Bool)

(declare-fun e!2885392 () Bool)

(declare-fun e!2885393 () Bool)

(assert (=> b!4625628 (= e!2885392 e!2885393)))

(declare-fun res!1939738 () Bool)

(assert (=> b!4625628 (=> res!1939738 e!2885393)))

(declare-fun containsKey!2450 (List!51660 K!12915) Bool)

(assert (=> b!4625628 (= res!1939738 (not (containsKey!2450 (t!358694 oldBucket!40) key!4968)))))

(assert (=> b!4625628 (containsKey!2450 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!5903 0))(
  ( (HashableExt!5902 (__x!31606 Int)) )
))
(declare-fun hashF!1389 () Hashable!5903)

(declare-datatypes ((Unit!112141 0))(
  ( (Unit!112142) )
))
(declare-fun lt!1783511 () Unit!112141)

(declare-fun lemmaGetPairDefinedThenContainsKey!52 (List!51660 K!12915 Hashable!5903) Unit!112141)

(assert (=> b!4625628 (= lt!1783511 (lemmaGetPairDefinedThenContainsKey!52 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1783529 () List!51660)

(declare-datatypes ((Option!11592 0))(
  ( (None!11591) (Some!11591 (v!45721 tuple2!52470)) )
))
(declare-fun isDefined!8857 (Option!11592) Bool)

(declare-fun getPair!298 (List!51660 K!12915) Option!11592)

(assert (=> b!4625628 (isDefined!8857 (getPair!298 lt!1783529 key!4968))))

(declare-datatypes ((tuple2!52472 0))(
  ( (tuple2!52473 (_1!29530 (_ BitVec 64)) (_2!29530 List!51660)) )
))
(declare-datatypes ((List!51661 0))(
  ( (Nil!51537) (Cons!51537 (h!57589 tuple2!52472) (t!358695 List!51661)) )
))
(declare-fun lt!1783517 () List!51661)

(declare-fun lt!1783516 () Unit!112141)

(declare-fun lambda!192128 () Int)

(declare-fun lt!1783520 () tuple2!52472)

(declare-fun forallContained!3052 (List!51661 Int tuple2!52472) Unit!112141)

(assert (=> b!4625628 (= lt!1783516 (forallContained!3052 lt!1783517 lambda!192128 lt!1783520))))

(declare-fun contains!14581 (List!51661 tuple2!52472) Bool)

(assert (=> b!4625628 (contains!14581 lt!1783517 lt!1783520)))

(declare-fun lt!1783515 () (_ BitVec 64))

(assert (=> b!4625628 (= lt!1783520 (tuple2!52473 lt!1783515 lt!1783529))))

(declare-fun lt!1783509 () Unit!112141)

(declare-datatypes ((ListLongMap!3567 0))(
  ( (ListLongMap!3568 (toList!4977 List!51661)) )
))
(declare-fun lt!1783510 () ListLongMap!3567)

(declare-fun lemmaGetValueImpliesTupleContained!103 (ListLongMap!3567 (_ BitVec 64) List!51660) Unit!112141)

(assert (=> b!4625628 (= lt!1783509 (lemmaGetValueImpliesTupleContained!103 lt!1783510 lt!1783515 lt!1783529))))

(declare-fun apply!12171 (ListLongMap!3567 (_ BitVec 64)) List!51660)

(assert (=> b!4625628 (= lt!1783529 (apply!12171 lt!1783510 lt!1783515))))

(declare-fun contains!14582 (ListLongMap!3567 (_ BitVec 64)) Bool)

(assert (=> b!4625628 (contains!14582 lt!1783510 lt!1783515)))

(declare-fun lt!1783506 () Unit!112141)

(declare-fun lemmaInGenMapThenLongMapContainsHash!504 (ListLongMap!3567 K!12915 Hashable!5903) Unit!112141)

(assert (=> b!4625628 (= lt!1783506 (lemmaInGenMapThenLongMapContainsHash!504 lt!1783510 key!4968 hashF!1389))))

(declare-fun lt!1783527 () Unit!112141)

(declare-fun lemmaInGenMapThenGetPairDefined!94 (ListLongMap!3567 K!12915 Hashable!5903) Unit!112141)

(assert (=> b!4625628 (= lt!1783527 (lemmaInGenMapThenGetPairDefined!94 lt!1783510 key!4968 hashF!1389))))

(assert (=> b!4625628 (= lt!1783510 (ListLongMap!3568 lt!1783517))))

(declare-fun b!4625629 () Bool)

(declare-fun res!1939740 () Bool)

(declare-fun e!2885387 () Bool)

(assert (=> b!4625629 (=> (not res!1939740) (not e!2885387))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1360 (List!51660 (_ BitVec 64) Hashable!5903) Bool)

(assert (=> b!4625629 (= res!1939740 (allKeysSameHash!1360 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4625630 () Bool)

(declare-fun e!2885385 () Bool)

(declare-fun e!2885388 () Bool)

(assert (=> b!4625630 (= e!2885385 e!2885388)))

(declare-fun res!1939735 () Bool)

(assert (=> b!4625630 (=> res!1939735 e!2885388)))

(declare-datatypes ((ListMap!4281 0))(
  ( (ListMap!4282 (toList!4978 List!51660)) )
))
(declare-fun lt!1783525 () ListMap!4281)

(declare-fun lt!1783507 () ListMap!4281)

(declare-fun lt!1783508 () tuple2!52470)

(declare-fun eq!821 (ListMap!4281 ListMap!4281) Bool)

(declare-fun +!1872 (ListMap!4281 tuple2!52470) ListMap!4281)

(assert (=> b!4625630 (= res!1939735 (not (eq!821 lt!1783507 (+!1872 lt!1783525 lt!1783508))))))

(declare-fun lt!1783526 () List!51660)

(declare-fun extractMap!1562 (List!51661) ListMap!4281)

(assert (=> b!4625630 (= lt!1783525 (extractMap!1562 (Cons!51537 (tuple2!52473 hash!414 lt!1783526) Nil!51537)))))

(assert (=> b!4625630 (= lt!1783507 (extractMap!1562 (Cons!51537 (tuple2!52473 hash!414 newBucket!224) Nil!51537)))))

(declare-fun b!4625631 () Bool)

(assert (=> b!4625631 (= e!2885387 (not e!2885392))))

(declare-fun res!1939743 () Bool)

(assert (=> b!4625631 (=> res!1939743 e!2885392)))

(get-info :version)

(assert (=> b!4625631 (= res!1939743 (or (and ((_ is Cons!51536) oldBucket!40) (= (_1!29529 (h!57588 oldBucket!40)) key!4968)) (not ((_ is Cons!51536) oldBucket!40)) (= (_1!29529 (h!57588 oldBucket!40)) key!4968)))))

(declare-fun e!2885394 () Bool)

(assert (=> b!4625631 e!2885394))

(declare-fun res!1939733 () Bool)

(assert (=> b!4625631 (=> (not res!1939733) (not e!2885394))))

(declare-fun lt!1783523 () ListMap!4281)

(declare-fun lt!1783524 () ListMap!4281)

(declare-fun addToMapMapFromBucket!967 (List!51660 ListMap!4281) ListMap!4281)

(assert (=> b!4625631 (= res!1939733 (= lt!1783523 (addToMapMapFromBucket!967 oldBucket!40 lt!1783524)))))

(assert (=> b!4625631 (= lt!1783524 (extractMap!1562 Nil!51537))))

(assert (=> b!4625631 true))

(declare-fun b!4625632 () Bool)

(assert (=> b!4625632 (= e!2885388 true)))

(declare-fun lt!1783512 () ListMap!4281)

(declare-fun -!546 (ListMap!4281 K!12915) ListMap!4281)

(assert (=> b!4625632 (eq!821 lt!1783525 (-!546 lt!1783512 key!4968))))

(declare-fun lt!1783514 () Unit!112141)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!108 ((_ BitVec 64) List!51660 List!51660 K!12915 Hashable!5903) Unit!112141)

(assert (=> b!4625632 (= lt!1783514 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!108 hash!414 (t!358694 oldBucket!40) lt!1783526 key!4968 hashF!1389))))

(declare-fun b!4625633 () Bool)

(declare-fun res!1939744 () Bool)

(declare-fun e!2885391 () Bool)

(assert (=> b!4625633 (=> res!1939744 e!2885391)))

(assert (=> b!4625633 (= res!1939744 (not (= (removePairForKey!1129 (t!358694 oldBucket!40) key!4968) lt!1783526)))))

(declare-fun b!4625634 () Bool)

(assert (=> b!4625634 (= e!2885391 e!2885385)))

(declare-fun res!1939736 () Bool)

(assert (=> b!4625634 (=> res!1939736 e!2885385)))

(declare-fun lt!1783513 () List!51660)

(assert (=> b!4625634 (= res!1939736 (not (eq!821 lt!1783523 (+!1872 (extractMap!1562 (Cons!51537 (tuple2!52473 hash!414 lt!1783513) Nil!51537)) (h!57588 oldBucket!40)))))))

(assert (=> b!4625634 (eq!821 (addToMapMapFromBucket!967 (Cons!51536 lt!1783508 lt!1783526) (ListMap!4282 Nil!51536)) (+!1872 (addToMapMapFromBucket!967 lt!1783526 (ListMap!4282 Nil!51536)) lt!1783508))))

(declare-fun lt!1783528 () Unit!112141)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!72 (tuple2!52470 List!51660 ListMap!4281) Unit!112141)

(assert (=> b!4625634 (= lt!1783528 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!72 lt!1783508 lt!1783526 (ListMap!4282 Nil!51536)))))

(declare-fun head!9640 (List!51660) tuple2!52470)

(assert (=> b!4625634 (= lt!1783508 (head!9640 newBucket!224))))

(declare-fun lt!1783522 () tuple2!52470)

(assert (=> b!4625634 (eq!821 (addToMapMapFromBucket!967 (Cons!51536 lt!1783522 lt!1783513) (ListMap!4282 Nil!51536)) (+!1872 (addToMapMapFromBucket!967 lt!1783513 (ListMap!4282 Nil!51536)) lt!1783522))))

(declare-fun lt!1783519 () Unit!112141)

(assert (=> b!4625634 (= lt!1783519 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!72 lt!1783522 lt!1783513 (ListMap!4282 Nil!51536)))))

(assert (=> b!4625634 (= lt!1783522 (head!9640 oldBucket!40))))

(declare-fun contains!14583 (ListMap!4281 K!12915) Bool)

(assert (=> b!4625634 (contains!14583 lt!1783512 key!4968)))

(declare-fun lt!1783521 () List!51661)

(assert (=> b!4625634 (= lt!1783512 (extractMap!1562 lt!1783521))))

(declare-fun lt!1783518 () Unit!112141)

(declare-fun lemmaListContainsThenExtractedMapContains!324 (ListLongMap!3567 K!12915 Hashable!5903) Unit!112141)

(assert (=> b!4625634 (= lt!1783518 (lemmaListContainsThenExtractedMapContains!324 (ListLongMap!3568 lt!1783521) key!4968 hashF!1389))))

(assert (=> b!4625634 (= lt!1783521 (Cons!51537 (tuple2!52473 hash!414 (t!358694 oldBucket!40)) Nil!51537))))

(declare-fun res!1939739 () Bool)

(assert (=> start!463640 (=> (not res!1939739) (not e!2885386))))

(assert (=> start!463640 (= res!1939739 (noDuplicateKeys!1506 oldBucket!40))))

(assert (=> start!463640 e!2885386))

(assert (=> start!463640 true))

(declare-fun e!2885384 () Bool)

(assert (=> start!463640 e!2885384))

(assert (=> start!463640 tp_is_empty!29317))

(assert (=> start!463640 e!2885390))

(declare-fun b!4625635 () Bool)

(assert (=> b!4625635 (= e!2885393 e!2885391)))

(declare-fun res!1939745 () Bool)

(assert (=> b!4625635 (=> res!1939745 e!2885391)))

(assert (=> b!4625635 (= res!1939745 (not (= (removePairForKey!1129 lt!1783513 key!4968) lt!1783526)))))

(declare-fun tail!8141 (List!51660) List!51660)

(assert (=> b!4625635 (= lt!1783526 (tail!8141 newBucket!224))))

(assert (=> b!4625635 (= lt!1783513 (tail!8141 oldBucket!40))))

(declare-fun b!4625636 () Bool)

(declare-fun e!2885389 () Bool)

(assert (=> b!4625636 (= e!2885386 e!2885389)))

(declare-fun res!1939746 () Bool)

(assert (=> b!4625636 (=> (not res!1939746) (not e!2885389))))

(assert (=> b!4625636 (= res!1939746 (contains!14583 lt!1783523 key!4968))))

(assert (=> b!4625636 (= lt!1783523 (extractMap!1562 lt!1783517))))

(assert (=> b!4625636 (= lt!1783517 (Cons!51537 (tuple2!52473 hash!414 oldBucket!40) Nil!51537))))

(declare-fun b!4625637 () Bool)

(declare-fun res!1939741 () Bool)

(assert (=> b!4625637 (=> (not res!1939741) (not e!2885386))))

(assert (=> b!4625637 (= res!1939741 (allKeysSameHash!1360 oldBucket!40 hash!414 hashF!1389))))

(declare-fun tp!1342115 () Bool)

(declare-fun b!4625638 () Bool)

(assert (=> b!4625638 (= e!2885384 (and tp_is_empty!29317 tp_is_empty!29319 tp!1342115))))

(declare-fun b!4625639 () Bool)

(assert (=> b!4625639 (= e!2885394 (= lt!1783524 (ListMap!4282 Nil!51536)))))

(declare-fun b!4625640 () Bool)

(assert (=> b!4625640 (= e!2885389 e!2885387)))

(declare-fun res!1939734 () Bool)

(assert (=> b!4625640 (=> (not res!1939734) (not e!2885387))))

(assert (=> b!4625640 (= res!1939734 (= lt!1783515 hash!414))))

(declare-fun hash!3503 (Hashable!5903 K!12915) (_ BitVec 64))

(assert (=> b!4625640 (= lt!1783515 (hash!3503 hashF!1389 key!4968))))

(assert (= (and start!463640 res!1939739) b!4625626))

(assert (= (and b!4625626 res!1939737) b!4625627))

(assert (= (and b!4625627 res!1939742) b!4625637))

(assert (= (and b!4625637 res!1939741) b!4625636))

(assert (= (and b!4625636 res!1939746) b!4625640))

(assert (= (and b!4625640 res!1939734) b!4625629))

(assert (= (and b!4625629 res!1939740) b!4625631))

(assert (= (and b!4625631 res!1939733) b!4625639))

(assert (= (and b!4625631 (not res!1939743)) b!4625628))

(assert (= (and b!4625628 (not res!1939738)) b!4625635))

(assert (= (and b!4625635 (not res!1939745)) b!4625633))

(assert (= (and b!4625633 (not res!1939744)) b!4625634))

(assert (= (and b!4625634 (not res!1939736)) b!4625630))

(assert (= (and b!4625630 (not res!1939735)) b!4625632))

(assert (= (and start!463640 ((_ is Cons!51536) oldBucket!40)) b!4625638))

(assert (= (and start!463640 ((_ is Cons!51536) newBucket!224)) b!4625625))

(declare-fun m!5467395 () Bool)

(assert (=> start!463640 m!5467395))

(declare-fun m!5467397 () Bool)

(assert (=> b!4625626 m!5467397))

(declare-fun m!5467399 () Bool)

(assert (=> b!4625630 m!5467399))

(assert (=> b!4625630 m!5467399))

(declare-fun m!5467401 () Bool)

(assert (=> b!4625630 m!5467401))

(declare-fun m!5467403 () Bool)

(assert (=> b!4625630 m!5467403))

(declare-fun m!5467405 () Bool)

(assert (=> b!4625630 m!5467405))

(declare-fun m!5467407 () Bool)

(assert (=> b!4625628 m!5467407))

(declare-fun m!5467409 () Bool)

(assert (=> b!4625628 m!5467409))

(declare-fun m!5467411 () Bool)

(assert (=> b!4625628 m!5467411))

(declare-fun m!5467413 () Bool)

(assert (=> b!4625628 m!5467413))

(declare-fun m!5467415 () Bool)

(assert (=> b!4625628 m!5467415))

(declare-fun m!5467417 () Bool)

(assert (=> b!4625628 m!5467417))

(declare-fun m!5467419 () Bool)

(assert (=> b!4625628 m!5467419))

(declare-fun m!5467421 () Bool)

(assert (=> b!4625628 m!5467421))

(declare-fun m!5467423 () Bool)

(assert (=> b!4625628 m!5467423))

(declare-fun m!5467425 () Bool)

(assert (=> b!4625628 m!5467425))

(assert (=> b!4625628 m!5467419))

(declare-fun m!5467427 () Bool)

(assert (=> b!4625628 m!5467427))

(declare-fun m!5467429 () Bool)

(assert (=> b!4625628 m!5467429))

(declare-fun m!5467431 () Bool)

(assert (=> b!4625640 m!5467431))

(declare-fun m!5467433 () Bool)

(assert (=> b!4625636 m!5467433))

(declare-fun m!5467435 () Bool)

(assert (=> b!4625636 m!5467435))

(declare-fun m!5467437 () Bool)

(assert (=> b!4625627 m!5467437))

(declare-fun m!5467439 () Bool)

(assert (=> b!4625631 m!5467439))

(declare-fun m!5467441 () Bool)

(assert (=> b!4625631 m!5467441))

(declare-fun m!5467443 () Bool)

(assert (=> b!4625634 m!5467443))

(declare-fun m!5467445 () Bool)

(assert (=> b!4625634 m!5467445))

(declare-fun m!5467447 () Bool)

(assert (=> b!4625634 m!5467447))

(declare-fun m!5467449 () Bool)

(assert (=> b!4625634 m!5467449))

(declare-fun m!5467451 () Bool)

(assert (=> b!4625634 m!5467451))

(declare-fun m!5467453 () Bool)

(assert (=> b!4625634 m!5467453))

(declare-fun m!5467455 () Bool)

(assert (=> b!4625634 m!5467455))

(declare-fun m!5467457 () Bool)

(assert (=> b!4625634 m!5467457))

(assert (=> b!4625634 m!5467449))

(assert (=> b!4625634 m!5467445))

(declare-fun m!5467459 () Bool)

(assert (=> b!4625634 m!5467459))

(declare-fun m!5467461 () Bool)

(assert (=> b!4625634 m!5467461))

(assert (=> b!4625634 m!5467457))

(declare-fun m!5467463 () Bool)

(assert (=> b!4625634 m!5467463))

(assert (=> b!4625634 m!5467455))

(declare-fun m!5467465 () Bool)

(assert (=> b!4625634 m!5467465))

(declare-fun m!5467467 () Bool)

(assert (=> b!4625634 m!5467467))

(assert (=> b!4625634 m!5467443))

(assert (=> b!4625634 m!5467461))

(declare-fun m!5467469 () Bool)

(assert (=> b!4625634 m!5467469))

(assert (=> b!4625634 m!5467465))

(declare-fun m!5467471 () Bool)

(assert (=> b!4625634 m!5467471))

(assert (=> b!4625634 m!5467471))

(declare-fun m!5467473 () Bool)

(assert (=> b!4625634 m!5467473))

(declare-fun m!5467475 () Bool)

(assert (=> b!4625634 m!5467475))

(declare-fun m!5467477 () Bool)

(assert (=> b!4625634 m!5467477))

(declare-fun m!5467479 () Bool)

(assert (=> b!4625629 m!5467479))

(declare-fun m!5467481 () Bool)

(assert (=> b!4625635 m!5467481))

(declare-fun m!5467483 () Bool)

(assert (=> b!4625635 m!5467483))

(declare-fun m!5467485 () Bool)

(assert (=> b!4625635 m!5467485))

(declare-fun m!5467487 () Bool)

(assert (=> b!4625637 m!5467487))

(declare-fun m!5467489 () Bool)

(assert (=> b!4625633 m!5467489))

(declare-fun m!5467491 () Bool)

(assert (=> b!4625632 m!5467491))

(assert (=> b!4625632 m!5467491))

(declare-fun m!5467493 () Bool)

(assert (=> b!4625632 m!5467493))

(declare-fun m!5467495 () Bool)

(assert (=> b!4625632 m!5467495))

(check-sat (not b!4625640) (not start!463640) (not b!4625630) (not b!4625628) (not b!4625629) (not b!4625625) (not b!4625631) (not b!4625634) (not b!4625636) (not b!4625633) tp_is_empty!29317 (not b!4625626) (not b!4625627) (not b!4625637) (not b!4625638) (not b!4625632) tp_is_empty!29319 (not b!4625635))
(check-sat)
