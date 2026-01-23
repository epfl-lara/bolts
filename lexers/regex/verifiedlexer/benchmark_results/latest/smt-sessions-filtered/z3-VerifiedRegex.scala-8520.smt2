; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!446200 () Bool)

(assert start!446200)

(declare-fun b!4512489 () Bool)

(declare-fun res!1877150 () Bool)

(declare-fun e!2811184 () Bool)

(assert (=> b!4512489 (=> res!1877150 e!2811184)))

(declare-datatypes ((K!12005 0))(
  ( (K!12006 (val!17875 Int)) )
))
(declare-datatypes ((V!12251 0))(
  ( (V!12252 (val!17876 Int)) )
))
(declare-datatypes ((tuple2!51018 0))(
  ( (tuple2!51019 (_1!28803 K!12005) (_2!28803 V!12251)) )
))
(declare-datatypes ((List!50728 0))(
  ( (Nil!50604) (Cons!50604 (h!56443 tuple2!51018) (t!357690 List!50728)) )
))
(declare-datatypes ((tuple2!51020 0))(
  ( (tuple2!51021 (_1!28804 (_ BitVec 64)) (_2!28804 List!50728)) )
))
(declare-datatypes ((List!50729 0))(
  ( (Nil!50605) (Cons!50605 (h!56444 tuple2!51020) (t!357691 List!50729)) )
))
(declare-datatypes ((ListLongMap!2931 0))(
  ( (ListLongMap!2932 (toList!4299 List!50729)) )
))
(declare-fun lm!1477 () ListLongMap!2931)

(declare-fun lt!1690463 () tuple2!51020)

(declare-fun contains!13309 (List!50729 tuple2!51020) Bool)

(assert (=> b!4512489 (= res!1877150 (not (contains!13309 (t!357691 (toList!4299 lm!1477)) lt!1690463)))))

(declare-fun b!4512490 () Bool)

(declare-fun res!1877153 () Bool)

(declare-fun e!2811186 () Bool)

(assert (=> b!4512490 (=> (not res!1877153) (not e!2811186))))

(declare-datatypes ((Hashable!5541 0))(
  ( (HashableExt!5540 (__x!31244 Int)) )
))
(declare-fun hashF!1107 () Hashable!5541)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50728)

(declare-fun allKeysSameHash!1000 (List!50728 (_ BitVec 64) Hashable!5541) Bool)

(assert (=> b!4512490 (= res!1877153 (allKeysSameHash!1000 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4512491 () Bool)

(declare-fun e!2811179 () Bool)

(declare-fun e!2811189 () Bool)

(assert (=> b!4512491 (= e!2811179 e!2811189)))

(declare-fun res!1877145 () Bool)

(assert (=> b!4512491 (=> res!1877145 e!2811189)))

(declare-fun key!3287 () K!12005)

(declare-datatypes ((ListMap!3561 0))(
  ( (ListMap!3562 (toList!4300 List!50728)) )
))
(declare-fun contains!13310 (ListMap!3561 K!12005) Bool)

(declare-fun extractMap!1202 (List!50729) ListMap!3561)

(assert (=> b!4512491 (= res!1877145 (not (contains!13310 (extractMap!1202 (t!357691 (toList!4299 lm!1477))) key!3287)))))

(declare-fun lt!1690472 () ListMap!3561)

(assert (=> b!4512491 (contains!13310 lt!1690472 key!3287)))

(declare-fun lt!1690461 () ListLongMap!2931)

(assert (=> b!4512491 (= lt!1690472 (extractMap!1202 (toList!4299 lt!1690461)))))

(declare-datatypes ((Unit!93804 0))(
  ( (Unit!93805) )
))
(declare-fun lt!1690471 () Unit!93804)

(declare-fun lemmaListContainsThenExtractedMapContains!116 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> b!4512491 (= lt!1690471 (lemmaListContainsThenExtractedMapContains!116 lt!1690461 key!3287 hashF!1107))))

(declare-fun b!4512492 () Bool)

(declare-fun e!2811180 () Unit!93804)

(declare-fun Unit!93806 () Unit!93804)

(assert (=> b!4512492 (= e!2811180 Unit!93806)))

(declare-fun b!4512493 () Bool)

(declare-fun e!2811176 () Bool)

(assert (=> b!4512493 (= e!2811189 e!2811176)))

(declare-fun res!1877148 () Bool)

(assert (=> b!4512493 (=> res!1877148 e!2811176)))

(declare-fun lt!1690478 () ListMap!3561)

(declare-fun lt!1690466 () ListMap!3561)

(declare-fun eq!603 (ListMap!3561 ListMap!3561) Bool)

(assert (=> b!4512493 (= res!1877148 (not (eq!603 lt!1690478 lt!1690466)))))

(declare-fun lt!1690462 () tuple2!51020)

(declare-fun +!1510 (ListLongMap!2931 tuple2!51020) ListLongMap!2931)

(assert (=> b!4512493 (= lt!1690478 (extractMap!1202 (toList!4299 (+!1510 lt!1690461 lt!1690462))))))

(declare-fun head!9384 (ListLongMap!2931) tuple2!51020)

(assert (=> b!4512493 (= lt!1690462 (head!9384 lm!1477))))

(declare-fun lt!1690464 () ListMap!3561)

(declare-fun lt!1690458 () ListMap!3561)

(assert (=> b!4512493 (eq!603 lt!1690464 lt!1690458)))

(declare-fun -!372 (ListMap!3561 K!12005) ListMap!3561)

(assert (=> b!4512493 (= lt!1690458 (-!372 lt!1690472 key!3287))))

(declare-fun lt!1690473 () ListLongMap!2931)

(assert (=> b!4512493 (= lt!1690464 (extractMap!1202 (toList!4299 lt!1690473)))))

(declare-fun lt!1690457 () tuple2!51020)

(assert (=> b!4512493 (= lt!1690473 (+!1510 lt!1690461 lt!1690457))))

(assert (=> b!4512493 (= lt!1690457 (tuple2!51021 hash!344 newBucket!178))))

(declare-fun lt!1690455 () Unit!93804)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!131 (ListLongMap!2931 (_ BitVec 64) List!50728 K!12005 Hashable!5541) Unit!93804)

(assert (=> b!4512493 (= lt!1690455 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!131 lt!1690461 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4512494 () Bool)

(declare-fun e!2811183 () Bool)

(assert (=> b!4512494 (= e!2811176 e!2811183)))

(declare-fun res!1877141 () Bool)

(assert (=> b!4512494 (=> res!1877141 e!2811183)))

(declare-fun lt!1690476 () ListLongMap!2931)

(assert (=> b!4512494 (= res!1877141 (not (= lt!1690476 (+!1510 lm!1477 lt!1690457))))))

(assert (=> b!4512494 (= lt!1690476 (+!1510 lt!1690473 lt!1690462))))

(declare-fun b!4512495 () Bool)

(declare-fun res!1877137 () Bool)

(assert (=> b!4512495 (=> res!1877137 e!2811183)))

(assert (=> b!4512495 (= res!1877137 (not (= (head!9384 lt!1690476) lt!1690462)))))

(declare-fun b!4512496 () Bool)

(declare-fun res!1877142 () Bool)

(declare-fun e!2811178 () Bool)

(assert (=> b!4512496 (=> res!1877142 e!2811178)))

(get-info :version)

(assert (=> b!4512496 (= res!1877142 (or ((_ is Nil!50605) (toList!4299 lm!1477)) (= (_1!28804 (h!56444 (toList!4299 lm!1477))) hash!344)))))

(declare-fun b!4512497 () Bool)

(declare-fun res!1877136 () Bool)

(assert (=> b!4512497 (=> res!1877136 e!2811176)))

(assert (=> b!4512497 (= res!1877136 (not (eq!603 lt!1690466 lt!1690478)))))

(declare-fun b!4512498 () Bool)

(declare-fun res!1877144 () Bool)

(assert (=> b!4512498 (=> res!1877144 e!2811176)))

(assert (=> b!4512498 (= res!1877144 (bvsge (_1!28804 lt!1690462) hash!344))))

(declare-fun b!4512499 () Bool)

(assert (=> b!4512499 (= e!2811178 e!2811184)))

(declare-fun res!1877138 () Bool)

(assert (=> b!4512499 (=> res!1877138 e!2811184)))

(declare-fun contains!13311 (ListLongMap!2931 (_ BitVec 64)) Bool)

(assert (=> b!4512499 (= res!1877138 (not (contains!13311 lt!1690461 hash!344)))))

(declare-fun tail!7706 (ListLongMap!2931) ListLongMap!2931)

(assert (=> b!4512499 (= lt!1690461 (tail!7706 lm!1477))))

(declare-fun res!1877140 () Bool)

(declare-fun e!2811182 () Bool)

(assert (=> start!446200 (=> (not res!1877140) (not e!2811182))))

(declare-fun lambda!170841 () Int)

(declare-fun forall!10229 (List!50729 Int) Bool)

(assert (=> start!446200 (= res!1877140 (forall!10229 (toList!4299 lm!1477) lambda!170841))))

(assert (=> start!446200 e!2811182))

(assert (=> start!446200 true))

(declare-fun e!2811187 () Bool)

(declare-fun inv!66189 (ListLongMap!2931) Bool)

(assert (=> start!446200 (and (inv!66189 lm!1477) e!2811187)))

(declare-fun tp_is_empty!27861 () Bool)

(assert (=> start!446200 tp_is_empty!27861))

(declare-fun e!2811188 () Bool)

(assert (=> start!446200 e!2811188))

(declare-fun b!4512500 () Bool)

(declare-fun res!1877154 () Bool)

(assert (=> b!4512500 (=> res!1877154 e!2811184)))

(declare-fun lt!1690467 () List!50728)

(declare-fun apply!11883 (ListLongMap!2931 (_ BitVec 64)) List!50728)

(assert (=> b!4512500 (= res!1877154 (not (= (apply!11883 lt!1690461 hash!344) lt!1690467)))))

(declare-fun b!4512501 () Bool)

(declare-fun tp!1337847 () Bool)

(assert (=> b!4512501 (= e!2811187 tp!1337847)))

(declare-fun b!4512502 () Bool)

(assert (=> b!4512502 (= e!2811186 (not e!2811178))))

(declare-fun res!1877146 () Bool)

(assert (=> b!4512502 (=> res!1877146 e!2811178)))

(declare-fun removePairForKey!773 (List!50728 K!12005) List!50728)

(assert (=> b!4512502 (= res!1877146 (not (= newBucket!178 (removePairForKey!773 lt!1690467 key!3287))))))

(declare-fun lt!1690456 () Unit!93804)

(declare-fun forallContained!2481 (List!50729 Int tuple2!51020) Unit!93804)

(assert (=> b!4512502 (= lt!1690456 (forallContained!2481 (toList!4299 lm!1477) lambda!170841 lt!1690463))))

(assert (=> b!4512502 (contains!13309 (toList!4299 lm!1477) lt!1690463)))

(assert (=> b!4512502 (= lt!1690463 (tuple2!51021 hash!344 lt!1690467))))

(declare-fun lt!1690465 () Unit!93804)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!658 (List!50729 (_ BitVec 64) List!50728) Unit!93804)

(assert (=> b!4512502 (= lt!1690465 (lemmaGetValueByKeyImpliesContainsTuple!658 (toList!4299 lm!1477) hash!344 lt!1690467))))

(assert (=> b!4512502 (= lt!1690467 (apply!11883 lm!1477 hash!344))))

(declare-fun lt!1690477 () (_ BitVec 64))

(assert (=> b!4512502 (contains!13311 lm!1477 lt!1690477)))

(declare-fun lt!1690474 () Unit!93804)

(declare-fun lemmaInGenMapThenLongMapContainsHash!220 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> b!4512502 (= lt!1690474 (lemmaInGenMapThenLongMapContainsHash!220 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4512503 () Bool)

(declare-fun Unit!93807 () Unit!93804)

(assert (=> b!4512503 (= e!2811180 Unit!93807)))

(declare-fun lt!1690459 () Unit!93804)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!134 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> b!4512503 (= lt!1690459 (lemmaNotInItsHashBucketThenNotInMap!134 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4512503 false))

(declare-fun b!4512504 () Bool)

(declare-fun e!2811181 () Bool)

(assert (=> b!4512504 (= e!2811181 e!2811186)))

(declare-fun res!1877152 () Bool)

(assert (=> b!4512504 (=> (not res!1877152) (not e!2811186))))

(assert (=> b!4512504 (= res!1877152 (= lt!1690477 hash!344))))

(declare-fun hash!2759 (Hashable!5541 K!12005) (_ BitVec 64))

(assert (=> b!4512504 (= lt!1690477 (hash!2759 hashF!1107 key!3287))))

(declare-fun b!4512505 () Bool)

(declare-fun res!1877149 () Bool)

(assert (=> b!4512505 (=> res!1877149 e!2811178)))

(declare-fun noDuplicateKeys!1146 (List!50728) Bool)

(assert (=> b!4512505 (= res!1877149 (not (noDuplicateKeys!1146 newBucket!178)))))

(declare-fun b!4512506 () Bool)

(declare-fun e!2811177 () Bool)

(assert (=> b!4512506 (= e!2811177 e!2811179)))

(declare-fun res!1877135 () Bool)

(assert (=> b!4512506 (=> res!1877135 e!2811179)))

(declare-fun containsKeyBiggerList!126 (List!50729 K!12005) Bool)

(assert (=> b!4512506 (= res!1877135 (not (containsKeyBiggerList!126 (t!357691 (toList!4299 lm!1477)) key!3287)))))

(assert (=> b!4512506 (containsKeyBiggerList!126 (toList!4299 lt!1690461) key!3287)))

(declare-fun lt!1690468 () Unit!93804)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!62 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> b!4512506 (= lt!1690468 (lemmaInLongMapThenContainsKeyBiggerList!62 lt!1690461 key!3287 hashF!1107))))

(declare-fun b!4512507 () Bool)

(declare-fun e!2811185 () Bool)

(assert (=> b!4512507 (= e!2811183 e!2811185)))

(declare-fun res!1877139 () Bool)

(assert (=> b!4512507 (=> res!1877139 e!2811185)))

(declare-fun lt!1690470 () ListMap!3561)

(declare-fun lt!1690469 () ListMap!3561)

(assert (=> b!4512507 (= res!1877139 (not (eq!603 lt!1690470 lt!1690469)))))

(declare-fun addToMapMapFromBucket!673 (List!50728 ListMap!3561) ListMap!3561)

(assert (=> b!4512507 (= lt!1690469 (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690464))))

(assert (=> b!4512507 (= lt!1690470 (extractMap!1202 (toList!4299 lt!1690476)))))

(declare-fun b!4512508 () Bool)

(declare-fun res!1877143 () Bool)

(assert (=> b!4512508 (=> (not res!1877143) (not e!2811182))))

(declare-fun allKeysSameHashInMap!1253 (ListLongMap!2931 Hashable!5541) Bool)

(assert (=> b!4512508 (= res!1877143 (allKeysSameHashInMap!1253 lm!1477 hashF!1107))))

(declare-fun b!4512509 () Bool)

(assert (=> b!4512509 (= e!2811185 (forall!10229 (toList!4299 lt!1690476) lambda!170841))))

(assert (=> b!4512509 (eq!603 lt!1690469 (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690458))))

(declare-fun lt!1690454 () Unit!93804)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!22 (ListMap!3561 ListMap!3561 List!50728) Unit!93804)

(assert (=> b!4512509 (= lt!1690454 (lemmaAddToMapFromBucketPreservesEquivalence!22 lt!1690464 lt!1690458 (_2!28804 lt!1690462)))))

(declare-fun tp_is_empty!27863 () Bool)

(declare-fun tp!1337846 () Bool)

(declare-fun b!4512510 () Bool)

(assert (=> b!4512510 (= e!2811188 (and tp_is_empty!27861 tp_is_empty!27863 tp!1337846))))

(declare-fun b!4512511 () Bool)

(assert (=> b!4512511 (= e!2811184 e!2811177)))

(declare-fun res!1877151 () Bool)

(assert (=> b!4512511 (=> res!1877151 e!2811177)))

(declare-fun lt!1690475 () Bool)

(assert (=> b!4512511 (= res!1877151 lt!1690475)))

(declare-fun lt!1690460 () Unit!93804)

(assert (=> b!4512511 (= lt!1690460 e!2811180)))

(declare-fun c!769815 () Bool)

(assert (=> b!4512511 (= c!769815 lt!1690475)))

(declare-fun containsKey!1738 (List!50728 K!12005) Bool)

(assert (=> b!4512511 (= lt!1690475 (not (containsKey!1738 lt!1690467 key!3287)))))

(declare-fun b!4512512 () Bool)

(assert (=> b!4512512 (= e!2811182 e!2811181)))

(declare-fun res!1877147 () Bool)

(assert (=> b!4512512 (=> (not res!1877147) (not e!2811181))))

(assert (=> b!4512512 (= res!1877147 (contains!13310 lt!1690466 key!3287))))

(assert (=> b!4512512 (= lt!1690466 (extractMap!1202 (toList!4299 lm!1477)))))

(assert (= (and start!446200 res!1877140) b!4512508))

(assert (= (and b!4512508 res!1877143) b!4512512))

(assert (= (and b!4512512 res!1877147) b!4512504))

(assert (= (and b!4512504 res!1877152) b!4512490))

(assert (= (and b!4512490 res!1877153) b!4512502))

(assert (= (and b!4512502 (not res!1877146)) b!4512505))

(assert (= (and b!4512505 (not res!1877149)) b!4512496))

(assert (= (and b!4512496 (not res!1877142)) b!4512499))

(assert (= (and b!4512499 (not res!1877138)) b!4512500))

(assert (= (and b!4512500 (not res!1877154)) b!4512489))

(assert (= (and b!4512489 (not res!1877150)) b!4512511))

(assert (= (and b!4512511 c!769815) b!4512503))

(assert (= (and b!4512511 (not c!769815)) b!4512492))

(assert (= (and b!4512511 (not res!1877151)) b!4512506))

(assert (= (and b!4512506 (not res!1877135)) b!4512491))

(assert (= (and b!4512491 (not res!1877145)) b!4512493))

(assert (= (and b!4512493 (not res!1877148)) b!4512497))

(assert (= (and b!4512497 (not res!1877136)) b!4512498))

(assert (= (and b!4512498 (not res!1877144)) b!4512494))

(assert (= (and b!4512494 (not res!1877141)) b!4512495))

(assert (= (and b!4512495 (not res!1877137)) b!4512507))

(assert (= (and b!4512507 (not res!1877139)) b!4512509))

(assert (= start!446200 b!4512501))

(assert (= (and start!446200 ((_ is Cons!50604) newBucket!178)) b!4512510))

(declare-fun m!5253551 () Bool)

(assert (=> b!4512490 m!5253551))

(declare-fun m!5253553 () Bool)

(assert (=> b!4512502 m!5253553))

(declare-fun m!5253555 () Bool)

(assert (=> b!4512502 m!5253555))

(declare-fun m!5253557 () Bool)

(assert (=> b!4512502 m!5253557))

(declare-fun m!5253559 () Bool)

(assert (=> b!4512502 m!5253559))

(declare-fun m!5253561 () Bool)

(assert (=> b!4512502 m!5253561))

(declare-fun m!5253563 () Bool)

(assert (=> b!4512502 m!5253563))

(declare-fun m!5253565 () Bool)

(assert (=> b!4512502 m!5253565))

(declare-fun m!5253567 () Bool)

(assert (=> b!4512507 m!5253567))

(declare-fun m!5253569 () Bool)

(assert (=> b!4512507 m!5253569))

(declare-fun m!5253571 () Bool)

(assert (=> b!4512507 m!5253571))

(declare-fun m!5253573 () Bool)

(assert (=> b!4512500 m!5253573))

(declare-fun m!5253575 () Bool)

(assert (=> b!4512506 m!5253575))

(declare-fun m!5253577 () Bool)

(assert (=> b!4512506 m!5253577))

(declare-fun m!5253579 () Bool)

(assert (=> b!4512506 m!5253579))

(declare-fun m!5253581 () Bool)

(assert (=> b!4512512 m!5253581))

(declare-fun m!5253583 () Bool)

(assert (=> b!4512512 m!5253583))

(declare-fun m!5253585 () Bool)

(assert (=> b!4512505 m!5253585))

(declare-fun m!5253587 () Bool)

(assert (=> b!4512489 m!5253587))

(declare-fun m!5253589 () Bool)

(assert (=> b!4512497 m!5253589))

(declare-fun m!5253591 () Bool)

(assert (=> b!4512499 m!5253591))

(declare-fun m!5253593 () Bool)

(assert (=> b!4512499 m!5253593))

(declare-fun m!5253595 () Bool)

(assert (=> b!4512504 m!5253595))

(declare-fun m!5253597 () Bool)

(assert (=> b!4512495 m!5253597))

(declare-fun m!5253599 () Bool)

(assert (=> b!4512509 m!5253599))

(declare-fun m!5253601 () Bool)

(assert (=> b!4512509 m!5253601))

(assert (=> b!4512509 m!5253601))

(declare-fun m!5253603 () Bool)

(assert (=> b!4512509 m!5253603))

(declare-fun m!5253605 () Bool)

(assert (=> b!4512509 m!5253605))

(declare-fun m!5253607 () Bool)

(assert (=> b!4512511 m!5253607))

(declare-fun m!5253609 () Bool)

(assert (=> start!446200 m!5253609))

(declare-fun m!5253611 () Bool)

(assert (=> start!446200 m!5253611))

(declare-fun m!5253613 () Bool)

(assert (=> b!4512491 m!5253613))

(declare-fun m!5253615 () Bool)

(assert (=> b!4512491 m!5253615))

(declare-fun m!5253617 () Bool)

(assert (=> b!4512491 m!5253617))

(declare-fun m!5253619 () Bool)

(assert (=> b!4512491 m!5253619))

(assert (=> b!4512491 m!5253615))

(declare-fun m!5253621 () Bool)

(assert (=> b!4512491 m!5253621))

(declare-fun m!5253623 () Bool)

(assert (=> b!4512494 m!5253623))

(declare-fun m!5253625 () Bool)

(assert (=> b!4512494 m!5253625))

(declare-fun m!5253627 () Bool)

(assert (=> b!4512503 m!5253627))

(declare-fun m!5253629 () Bool)

(assert (=> b!4512508 m!5253629))

(declare-fun m!5253631 () Bool)

(assert (=> b!4512493 m!5253631))

(declare-fun m!5253633 () Bool)

(assert (=> b!4512493 m!5253633))

(declare-fun m!5253635 () Bool)

(assert (=> b!4512493 m!5253635))

(declare-fun m!5253637 () Bool)

(assert (=> b!4512493 m!5253637))

(declare-fun m!5253639 () Bool)

(assert (=> b!4512493 m!5253639))

(declare-fun m!5253641 () Bool)

(assert (=> b!4512493 m!5253641))

(declare-fun m!5253643 () Bool)

(assert (=> b!4512493 m!5253643))

(declare-fun m!5253645 () Bool)

(assert (=> b!4512493 m!5253645))

(declare-fun m!5253647 () Bool)

(assert (=> b!4512493 m!5253647))

(check-sat (not b!4512510) (not b!4512491) (not start!446200) (not b!4512512) (not b!4512500) (not b!4512502) (not b!4512499) tp_is_empty!27861 (not b!4512505) (not b!4512501) (not b!4512506) (not b!4512503) (not b!4512504) (not b!4512495) tp_is_empty!27863 (not b!4512494) (not b!4512508) (not b!4512489) (not b!4512497) (not b!4512511) (not b!4512490) (not b!4512507) (not b!4512493) (not b!4512509))
(check-sat)
(get-model)

(declare-fun d!1388393 () Bool)

(declare-fun head!9385 (List!50729) tuple2!51020)

(assert (=> d!1388393 (= (head!9384 lt!1690476) (head!9385 (toList!4299 lt!1690476)))))

(declare-fun bs!848755 () Bool)

(assert (= bs!848755 d!1388393))

(declare-fun m!5253649 () Bool)

(assert (=> bs!848755 m!5253649))

(assert (=> b!4512495 d!1388393))

(declare-fun d!1388395 () Bool)

(declare-fun res!1877162 () Bool)

(declare-fun e!2811198 () Bool)

(assert (=> d!1388395 (=> res!1877162 e!2811198)))

(declare-fun e!2811197 () Bool)

(assert (=> d!1388395 (= res!1877162 e!2811197)))

(declare-fun res!1877161 () Bool)

(assert (=> d!1388395 (=> (not res!1877161) (not e!2811197))))

(assert (=> d!1388395 (= res!1877161 ((_ is Cons!50605) (t!357691 (toList!4299 lm!1477))))))

(assert (=> d!1388395 (= (containsKeyBiggerList!126 (t!357691 (toList!4299 lm!1477)) key!3287) e!2811198)))

(declare-fun b!4512519 () Bool)

(assert (=> b!4512519 (= e!2811197 (containsKey!1738 (_2!28804 (h!56444 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(declare-fun b!4512520 () Bool)

(declare-fun e!2811196 () Bool)

(assert (=> b!4512520 (= e!2811198 e!2811196)))

(declare-fun res!1877163 () Bool)

(assert (=> b!4512520 (=> (not res!1877163) (not e!2811196))))

(assert (=> b!4512520 (= res!1877163 ((_ is Cons!50605) (t!357691 (toList!4299 lm!1477))))))

(declare-fun b!4512521 () Bool)

(assert (=> b!4512521 (= e!2811196 (containsKeyBiggerList!126 (t!357691 (t!357691 (toList!4299 lm!1477))) key!3287))))

(assert (= (and d!1388395 res!1877161) b!4512519))

(assert (= (and d!1388395 (not res!1877162)) b!4512520))

(assert (= (and b!4512520 res!1877163) b!4512521))

(declare-fun m!5253651 () Bool)

(assert (=> b!4512519 m!5253651))

(declare-fun m!5253653 () Bool)

(assert (=> b!4512521 m!5253653))

(assert (=> b!4512506 d!1388395))

(declare-fun d!1388397 () Bool)

(declare-fun res!1877165 () Bool)

(declare-fun e!2811201 () Bool)

(assert (=> d!1388397 (=> res!1877165 e!2811201)))

(declare-fun e!2811200 () Bool)

(assert (=> d!1388397 (= res!1877165 e!2811200)))

(declare-fun res!1877164 () Bool)

(assert (=> d!1388397 (=> (not res!1877164) (not e!2811200))))

(assert (=> d!1388397 (= res!1877164 ((_ is Cons!50605) (toList!4299 lt!1690461)))))

(assert (=> d!1388397 (= (containsKeyBiggerList!126 (toList!4299 lt!1690461) key!3287) e!2811201)))

(declare-fun b!4512522 () Bool)

(assert (=> b!4512522 (= e!2811200 (containsKey!1738 (_2!28804 (h!56444 (toList!4299 lt!1690461))) key!3287))))

(declare-fun b!4512523 () Bool)

(declare-fun e!2811199 () Bool)

(assert (=> b!4512523 (= e!2811201 e!2811199)))

(declare-fun res!1877166 () Bool)

(assert (=> b!4512523 (=> (not res!1877166) (not e!2811199))))

(assert (=> b!4512523 (= res!1877166 ((_ is Cons!50605) (toList!4299 lt!1690461)))))

(declare-fun b!4512524 () Bool)

(assert (=> b!4512524 (= e!2811199 (containsKeyBiggerList!126 (t!357691 (toList!4299 lt!1690461)) key!3287))))

(assert (= (and d!1388397 res!1877164) b!4512522))

(assert (= (and d!1388397 (not res!1877165)) b!4512523))

(assert (= (and b!4512523 res!1877166) b!4512524))

(declare-fun m!5253655 () Bool)

(assert (=> b!4512522 m!5253655))

(declare-fun m!5253657 () Bool)

(assert (=> b!4512524 m!5253657))

(assert (=> b!4512506 d!1388397))

(declare-fun bs!848756 () Bool)

(declare-fun d!1388399 () Bool)

(assert (= bs!848756 (and d!1388399 start!446200)))

(declare-fun lambda!170844 () Int)

(assert (=> bs!848756 (= lambda!170844 lambda!170841)))

(assert (=> d!1388399 (containsKeyBiggerList!126 (toList!4299 lt!1690461) key!3287)))

(declare-fun lt!1690481 () Unit!93804)

(declare-fun choose!29344 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> d!1388399 (= lt!1690481 (choose!29344 lt!1690461 key!3287 hashF!1107))))

(assert (=> d!1388399 (forall!10229 (toList!4299 lt!1690461) lambda!170844)))

(assert (=> d!1388399 (= (lemmaInLongMapThenContainsKeyBiggerList!62 lt!1690461 key!3287 hashF!1107) lt!1690481)))

(declare-fun bs!848757 () Bool)

(assert (= bs!848757 d!1388399))

(assert (=> bs!848757 m!5253577))

(declare-fun m!5253659 () Bool)

(assert (=> bs!848757 m!5253659))

(declare-fun m!5253661 () Bool)

(assert (=> bs!848757 m!5253661))

(assert (=> b!4512506 d!1388399))

(declare-fun d!1388401 () Bool)

(declare-fun res!1877171 () Bool)

(declare-fun e!2811206 () Bool)

(assert (=> d!1388401 (=> res!1877171 e!2811206)))

(assert (=> d!1388401 (= res!1877171 (not ((_ is Cons!50604) newBucket!178)))))

(assert (=> d!1388401 (= (noDuplicateKeys!1146 newBucket!178) e!2811206)))

(declare-fun b!4512529 () Bool)

(declare-fun e!2811207 () Bool)

(assert (=> b!4512529 (= e!2811206 e!2811207)))

(declare-fun res!1877172 () Bool)

(assert (=> b!4512529 (=> (not res!1877172) (not e!2811207))))

(assert (=> b!4512529 (= res!1877172 (not (containsKey!1738 (t!357690 newBucket!178) (_1!28803 (h!56443 newBucket!178)))))))

(declare-fun b!4512530 () Bool)

(assert (=> b!4512530 (= e!2811207 (noDuplicateKeys!1146 (t!357690 newBucket!178)))))

(assert (= (and d!1388401 (not res!1877171)) b!4512529))

(assert (= (and b!4512529 res!1877172) b!4512530))

(declare-fun m!5253663 () Bool)

(assert (=> b!4512529 m!5253663))

(declare-fun m!5253665 () Bool)

(assert (=> b!4512530 m!5253665))

(assert (=> b!4512505 d!1388401))

(declare-fun d!1388403 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8314 (List!50728) (InoxSet tuple2!51018))

(assert (=> d!1388403 (= (eq!603 lt!1690470 lt!1690469) (= (content!8314 (toList!4300 lt!1690470)) (content!8314 (toList!4300 lt!1690469))))))

(declare-fun bs!848758 () Bool)

(assert (= bs!848758 d!1388403))

(declare-fun m!5253667 () Bool)

(assert (=> bs!848758 m!5253667))

(declare-fun m!5253669 () Bool)

(assert (=> bs!848758 m!5253669))

(assert (=> b!4512507 d!1388403))

(declare-fun b!4512625 () Bool)

(assert (=> b!4512625 true))

(declare-fun bs!848775 () Bool)

(declare-fun b!4512626 () Bool)

(assert (= bs!848775 (and b!4512626 b!4512625)))

(declare-fun lambda!170916 () Int)

(declare-fun lambda!170915 () Int)

(assert (=> bs!848775 (= lambda!170916 lambda!170915)))

(assert (=> b!4512626 true))

(declare-fun lt!1690634 () ListMap!3561)

(declare-fun lambda!170917 () Int)

(assert (=> bs!848775 (= (= lt!1690634 lt!1690464) (= lambda!170917 lambda!170915))))

(assert (=> b!4512626 (= (= lt!1690634 lt!1690464) (= lambda!170917 lambda!170916))))

(assert (=> b!4512626 true))

(declare-fun bs!848778 () Bool)

(declare-fun d!1388405 () Bool)

(assert (= bs!848778 (and d!1388405 b!4512625)))

(declare-fun lt!1690636 () ListMap!3561)

(declare-fun lambda!170918 () Int)

(assert (=> bs!848778 (= (= lt!1690636 lt!1690464) (= lambda!170918 lambda!170915))))

(declare-fun bs!848779 () Bool)

(assert (= bs!848779 (and d!1388405 b!4512626)))

(assert (=> bs!848779 (= (= lt!1690636 lt!1690464) (= lambda!170918 lambda!170916))))

(assert (=> bs!848779 (= (= lt!1690636 lt!1690634) (= lambda!170918 lambda!170917))))

(assert (=> d!1388405 true))

(declare-fun bm!314273 () Bool)

(declare-fun call!314280 () Unit!93804)

(declare-fun lemmaContainsAllItsOwnKeys!324 (ListMap!3561) Unit!93804)

(assert (=> bm!314273 (= call!314280 (lemmaContainsAllItsOwnKeys!324 lt!1690464))))

(declare-fun e!2811269 () Bool)

(assert (=> d!1388405 e!2811269))

(declare-fun res!1877218 () Bool)

(assert (=> d!1388405 (=> (not res!1877218) (not e!2811269))))

(declare-fun forall!10231 (List!50728 Int) Bool)

(assert (=> d!1388405 (= res!1877218 (forall!10231 (_2!28804 lt!1690462) lambda!170918))))

(declare-fun e!2811267 () ListMap!3561)

(assert (=> d!1388405 (= lt!1690636 e!2811267)))

(declare-fun c!769837 () Bool)

(assert (=> d!1388405 (= c!769837 ((_ is Nil!50604) (_2!28804 lt!1690462)))))

(assert (=> d!1388405 (noDuplicateKeys!1146 (_2!28804 lt!1690462))))

(assert (=> d!1388405 (= (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690464) lt!1690636)))

(declare-fun b!4512624 () Bool)

(declare-fun e!2811268 () Bool)

(assert (=> b!4512624 (= e!2811268 (forall!10231 (toList!4300 lt!1690464) lambda!170917))))

(declare-fun call!314278 () Bool)

(declare-fun bm!314274 () Bool)

(assert (=> bm!314274 (= call!314278 (forall!10231 (ite c!769837 (toList!4300 lt!1690464) (_2!28804 lt!1690462)) (ite c!769837 lambda!170915 lambda!170917)))))

(assert (=> b!4512625 (= e!2811267 lt!1690464)))

(declare-fun lt!1690650 () Unit!93804)

(assert (=> b!4512625 (= lt!1690650 call!314280)))

(declare-fun call!314279 () Bool)

(assert (=> b!4512625 call!314279))

(declare-fun lt!1690640 () Unit!93804)

(assert (=> b!4512625 (= lt!1690640 lt!1690650)))

(assert (=> b!4512625 call!314278))

(declare-fun lt!1690635 () Unit!93804)

(declare-fun Unit!93822 () Unit!93804)

(assert (=> b!4512625 (= lt!1690635 Unit!93822)))

(declare-fun bm!314275 () Bool)

(assert (=> bm!314275 (= call!314279 (forall!10231 (toList!4300 lt!1690464) (ite c!769837 lambda!170915 lambda!170917)))))

(assert (=> b!4512626 (= e!2811267 lt!1690634)))

(declare-fun lt!1690647 () ListMap!3561)

(declare-fun +!1512 (ListMap!3561 tuple2!51018) ListMap!3561)

(assert (=> b!4512626 (= lt!1690647 (+!1512 lt!1690464 (h!56443 (_2!28804 lt!1690462))))))

(assert (=> b!4512626 (= lt!1690634 (addToMapMapFromBucket!673 (t!357690 (_2!28804 lt!1690462)) (+!1512 lt!1690464 (h!56443 (_2!28804 lt!1690462)))))))

(declare-fun lt!1690643 () Unit!93804)

(assert (=> b!4512626 (= lt!1690643 call!314280)))

(assert (=> b!4512626 (forall!10231 (toList!4300 lt!1690464) lambda!170916)))

(declare-fun lt!1690631 () Unit!93804)

(assert (=> b!4512626 (= lt!1690631 lt!1690643)))

(assert (=> b!4512626 (forall!10231 (toList!4300 lt!1690647) lambda!170917)))

(declare-fun lt!1690648 () Unit!93804)

(declare-fun Unit!93823 () Unit!93804)

(assert (=> b!4512626 (= lt!1690648 Unit!93823)))

(assert (=> b!4512626 (forall!10231 (t!357690 (_2!28804 lt!1690462)) lambda!170917)))

(declare-fun lt!1690644 () Unit!93804)

(declare-fun Unit!93824 () Unit!93804)

(assert (=> b!4512626 (= lt!1690644 Unit!93824)))

(declare-fun lt!1690632 () Unit!93804)

(declare-fun Unit!93825 () Unit!93804)

(assert (=> b!4512626 (= lt!1690632 Unit!93825)))

(declare-fun lt!1690642 () Unit!93804)

(declare-fun forallContained!2483 (List!50728 Int tuple2!51018) Unit!93804)

(assert (=> b!4512626 (= lt!1690642 (forallContained!2483 (toList!4300 lt!1690647) lambda!170917 (h!56443 (_2!28804 lt!1690462))))))

(assert (=> b!4512626 (contains!13310 lt!1690647 (_1!28803 (h!56443 (_2!28804 lt!1690462))))))

(declare-fun lt!1690649 () Unit!93804)

(declare-fun Unit!93826 () Unit!93804)

(assert (=> b!4512626 (= lt!1690649 Unit!93826)))

(assert (=> b!4512626 (contains!13310 lt!1690634 (_1!28803 (h!56443 (_2!28804 lt!1690462))))))

(declare-fun lt!1690641 () Unit!93804)

(declare-fun Unit!93827 () Unit!93804)

(assert (=> b!4512626 (= lt!1690641 Unit!93827)))

(assert (=> b!4512626 (forall!10231 (_2!28804 lt!1690462) lambda!170917)))

(declare-fun lt!1690633 () Unit!93804)

(declare-fun Unit!93828 () Unit!93804)

(assert (=> b!4512626 (= lt!1690633 Unit!93828)))

(assert (=> b!4512626 (forall!10231 (toList!4300 lt!1690647) lambda!170917)))

(declare-fun lt!1690630 () Unit!93804)

(declare-fun Unit!93829 () Unit!93804)

(assert (=> b!4512626 (= lt!1690630 Unit!93829)))

(declare-fun lt!1690646 () Unit!93804)

(declare-fun Unit!93830 () Unit!93804)

(assert (=> b!4512626 (= lt!1690646 Unit!93830)))

(declare-fun lt!1690638 () Unit!93804)

(declare-fun addForallContainsKeyThenBeforeAdding!324 (ListMap!3561 ListMap!3561 K!12005 V!12251) Unit!93804)

(assert (=> b!4512626 (= lt!1690638 (addForallContainsKeyThenBeforeAdding!324 lt!1690464 lt!1690634 (_1!28803 (h!56443 (_2!28804 lt!1690462))) (_2!28803 (h!56443 (_2!28804 lt!1690462)))))))

(assert (=> b!4512626 (forall!10231 (toList!4300 lt!1690464) lambda!170917)))

(declare-fun lt!1690639 () Unit!93804)

(assert (=> b!4512626 (= lt!1690639 lt!1690638)))

(assert (=> b!4512626 call!314279))

(declare-fun lt!1690645 () Unit!93804)

(declare-fun Unit!93831 () Unit!93804)

(assert (=> b!4512626 (= lt!1690645 Unit!93831)))

(declare-fun res!1877217 () Bool)

(assert (=> b!4512626 (= res!1877217 call!314278)))

(assert (=> b!4512626 (=> (not res!1877217) (not e!2811268))))

(assert (=> b!4512626 e!2811268))

(declare-fun lt!1690637 () Unit!93804)

(declare-fun Unit!93832 () Unit!93804)

(assert (=> b!4512626 (= lt!1690637 Unit!93832)))

(declare-fun b!4512627 () Bool)

(declare-fun res!1877216 () Bool)

(assert (=> b!4512627 (=> (not res!1877216) (not e!2811269))))

(assert (=> b!4512627 (= res!1877216 (forall!10231 (toList!4300 lt!1690464) lambda!170918))))

(declare-fun b!4512628 () Bool)

(declare-fun invariantList!1003 (List!50728) Bool)

(assert (=> b!4512628 (= e!2811269 (invariantList!1003 (toList!4300 lt!1690636)))))

(assert (= (and d!1388405 c!769837) b!4512625))

(assert (= (and d!1388405 (not c!769837)) b!4512626))

(assert (= (and b!4512626 res!1877217) b!4512624))

(assert (= (or b!4512625 b!4512626) bm!314275))

(assert (= (or b!4512625 b!4512626) bm!314274))

(assert (= (or b!4512625 b!4512626) bm!314273))

(assert (= (and d!1388405 res!1877218) b!4512627))

(assert (= (and b!4512627 res!1877216) b!4512628))

(declare-fun m!5253775 () Bool)

(assert (=> b!4512627 m!5253775))

(declare-fun m!5253777 () Bool)

(assert (=> d!1388405 m!5253777))

(declare-fun m!5253779 () Bool)

(assert (=> d!1388405 m!5253779))

(declare-fun m!5253781 () Bool)

(assert (=> b!4512626 m!5253781))

(declare-fun m!5253783 () Bool)

(assert (=> b!4512626 m!5253783))

(declare-fun m!5253785 () Bool)

(assert (=> b!4512626 m!5253785))

(declare-fun m!5253787 () Bool)

(assert (=> b!4512626 m!5253787))

(declare-fun m!5253789 () Bool)

(assert (=> b!4512626 m!5253789))

(declare-fun m!5253791 () Bool)

(assert (=> b!4512626 m!5253791))

(assert (=> b!4512626 m!5253787))

(declare-fun m!5253793 () Bool)

(assert (=> b!4512626 m!5253793))

(declare-fun m!5253795 () Bool)

(assert (=> b!4512626 m!5253795))

(declare-fun m!5253797 () Bool)

(assert (=> b!4512626 m!5253797))

(declare-fun m!5253799 () Bool)

(assert (=> b!4512626 m!5253799))

(assert (=> b!4512626 m!5253781))

(declare-fun m!5253801 () Bool)

(assert (=> b!4512626 m!5253801))

(assert (=> b!4512624 m!5253799))

(declare-fun m!5253803 () Bool)

(assert (=> b!4512628 m!5253803))

(declare-fun m!5253805 () Bool)

(assert (=> bm!314275 m!5253805))

(declare-fun m!5253807 () Bool)

(assert (=> bm!314274 m!5253807))

(declare-fun m!5253809 () Bool)

(assert (=> bm!314273 m!5253809))

(assert (=> b!4512507 d!1388405))

(declare-fun bs!848787 () Bool)

(declare-fun d!1388439 () Bool)

(assert (= bs!848787 (and d!1388439 start!446200)))

(declare-fun lambda!170924 () Int)

(assert (=> bs!848787 (= lambda!170924 lambda!170841)))

(declare-fun bs!848788 () Bool)

(assert (= bs!848788 (and d!1388439 d!1388399)))

(assert (=> bs!848788 (= lambda!170924 lambda!170844)))

(declare-fun lt!1690666 () ListMap!3561)

(assert (=> d!1388439 (invariantList!1003 (toList!4300 lt!1690666))))

(declare-fun e!2811285 () ListMap!3561)

(assert (=> d!1388439 (= lt!1690666 e!2811285)))

(declare-fun c!769847 () Bool)

(assert (=> d!1388439 (= c!769847 ((_ is Cons!50605) (toList!4299 lt!1690476)))))

(assert (=> d!1388439 (forall!10229 (toList!4299 lt!1690476) lambda!170924)))

(assert (=> d!1388439 (= (extractMap!1202 (toList!4299 lt!1690476)) lt!1690666)))

(declare-fun b!4512655 () Bool)

(assert (=> b!4512655 (= e!2811285 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (toList!4299 lt!1690476))) (extractMap!1202 (t!357691 (toList!4299 lt!1690476)))))))

(declare-fun b!4512656 () Bool)

(assert (=> b!4512656 (= e!2811285 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388439 c!769847) b!4512655))

(assert (= (and d!1388439 (not c!769847)) b!4512656))

(declare-fun m!5253839 () Bool)

(assert (=> d!1388439 m!5253839))

(declare-fun m!5253841 () Bool)

(assert (=> d!1388439 m!5253841))

(declare-fun m!5253843 () Bool)

(assert (=> b!4512655 m!5253843))

(assert (=> b!4512655 m!5253843))

(declare-fun m!5253845 () Bool)

(assert (=> b!4512655 m!5253845))

(assert (=> b!4512507 d!1388439))

(declare-fun d!1388451 () Bool)

(assert (=> d!1388451 (= (eq!603 lt!1690466 lt!1690478) (= (content!8314 (toList!4300 lt!1690466)) (content!8314 (toList!4300 lt!1690478))))))

(declare-fun bs!848789 () Bool)

(assert (= bs!848789 d!1388451))

(declare-fun m!5253847 () Bool)

(assert (=> bs!848789 m!5253847))

(declare-fun m!5253849 () Bool)

(assert (=> bs!848789 m!5253849))

(assert (=> b!4512497 d!1388451))

(declare-fun bs!848790 () Bool)

(declare-fun d!1388453 () Bool)

(assert (= bs!848790 (and d!1388453 start!446200)))

(declare-fun lambda!170927 () Int)

(assert (=> bs!848790 (not (= lambda!170927 lambda!170841))))

(declare-fun bs!848791 () Bool)

(assert (= bs!848791 (and d!1388453 d!1388399)))

(assert (=> bs!848791 (not (= lambda!170927 lambda!170844))))

(declare-fun bs!848792 () Bool)

(assert (= bs!848792 (and d!1388453 d!1388439)))

(assert (=> bs!848792 (not (= lambda!170927 lambda!170924))))

(assert (=> d!1388453 true))

(assert (=> d!1388453 (= (allKeysSameHashInMap!1253 lm!1477 hashF!1107) (forall!10229 (toList!4299 lm!1477) lambda!170927))))

(declare-fun bs!848793 () Bool)

(assert (= bs!848793 d!1388453))

(declare-fun m!5253861 () Bool)

(assert (=> bs!848793 m!5253861))

(assert (=> b!4512508 d!1388453))

(declare-fun d!1388459 () Bool)

(declare-fun e!2811298 () Bool)

(assert (=> d!1388459 e!2811298))

(declare-fun res!1877238 () Bool)

(assert (=> d!1388459 (=> res!1877238 e!2811298)))

(declare-fun lt!1690691 () Bool)

(assert (=> d!1388459 (= res!1877238 (not lt!1690691))))

(declare-fun lt!1690693 () Bool)

(assert (=> d!1388459 (= lt!1690691 lt!1690693)))

(declare-fun lt!1690692 () Unit!93804)

(declare-fun e!2811299 () Unit!93804)

(assert (=> d!1388459 (= lt!1690692 e!2811299)))

(declare-fun c!769850 () Bool)

(assert (=> d!1388459 (= c!769850 lt!1690693)))

(declare-fun containsKey!1741 (List!50729 (_ BitVec 64)) Bool)

(assert (=> d!1388459 (= lt!1690693 (containsKey!1741 (toList!4299 lt!1690461) hash!344))))

(assert (=> d!1388459 (= (contains!13311 lt!1690461 hash!344) lt!1690691)))

(declare-fun b!4512676 () Bool)

(declare-fun lt!1690694 () Unit!93804)

(assert (=> b!4512676 (= e!2811299 lt!1690694)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!968 (List!50729 (_ BitVec 64)) Unit!93804)

(assert (=> b!4512676 (= lt!1690694 (lemmaContainsKeyImpliesGetValueByKeyDefined!968 (toList!4299 lt!1690461) hash!344))))

(declare-datatypes ((Option!11084 0))(
  ( (None!11083) (Some!11083 (v!44643 List!50728)) )
))
(declare-fun isDefined!8371 (Option!11084) Bool)

(declare-fun getValueByKey!1064 (List!50729 (_ BitVec 64)) Option!11084)

(assert (=> b!4512676 (isDefined!8371 (getValueByKey!1064 (toList!4299 lt!1690461) hash!344))))

(declare-fun b!4512677 () Bool)

(declare-fun Unit!93834 () Unit!93804)

(assert (=> b!4512677 (= e!2811299 Unit!93834)))

(declare-fun b!4512678 () Bool)

(assert (=> b!4512678 (= e!2811298 (isDefined!8371 (getValueByKey!1064 (toList!4299 lt!1690461) hash!344)))))

(assert (= (and d!1388459 c!769850) b!4512676))

(assert (= (and d!1388459 (not c!769850)) b!4512677))

(assert (= (and d!1388459 (not res!1877238)) b!4512678))

(declare-fun m!5253875 () Bool)

(assert (=> d!1388459 m!5253875))

(declare-fun m!5253877 () Bool)

(assert (=> b!4512676 m!5253877))

(declare-fun m!5253879 () Bool)

(assert (=> b!4512676 m!5253879))

(assert (=> b!4512676 m!5253879))

(declare-fun m!5253881 () Bool)

(assert (=> b!4512676 m!5253881))

(assert (=> b!4512678 m!5253879))

(assert (=> b!4512678 m!5253879))

(assert (=> b!4512678 m!5253881))

(assert (=> b!4512499 d!1388459))

(declare-fun d!1388463 () Bool)

(declare-fun tail!7708 (List!50729) List!50729)

(assert (=> d!1388463 (= (tail!7706 lm!1477) (ListLongMap!2932 (tail!7708 (toList!4299 lm!1477))))))

(declare-fun bs!848794 () Bool)

(assert (= bs!848794 d!1388463))

(declare-fun m!5253895 () Bool)

(assert (=> bs!848794 m!5253895))

(assert (=> b!4512499 d!1388463))

(declare-fun d!1388467 () Bool)

(declare-fun res!1877254 () Bool)

(declare-fun e!2811313 () Bool)

(assert (=> d!1388467 (=> res!1877254 e!2811313)))

(assert (=> d!1388467 (= res!1877254 ((_ is Nil!50605) (toList!4299 lt!1690476)))))

(assert (=> d!1388467 (= (forall!10229 (toList!4299 lt!1690476) lambda!170841) e!2811313)))

(declare-fun b!4512691 () Bool)

(declare-fun e!2811314 () Bool)

(assert (=> b!4512691 (= e!2811313 e!2811314)))

(declare-fun res!1877255 () Bool)

(assert (=> b!4512691 (=> (not res!1877255) (not e!2811314))))

(declare-fun dynLambda!21143 (Int tuple2!51020) Bool)

(assert (=> b!4512691 (= res!1877255 (dynLambda!21143 lambda!170841 (h!56444 (toList!4299 lt!1690476))))))

(declare-fun b!4512692 () Bool)

(assert (=> b!4512692 (= e!2811314 (forall!10229 (t!357691 (toList!4299 lt!1690476)) lambda!170841))))

(assert (= (and d!1388467 (not res!1877254)) b!4512691))

(assert (= (and b!4512691 res!1877255) b!4512692))

(declare-fun b_lambda!154017 () Bool)

(assert (=> (not b_lambda!154017) (not b!4512691)))

(declare-fun m!5253903 () Bool)

(assert (=> b!4512691 m!5253903))

(declare-fun m!5253905 () Bool)

(assert (=> b!4512692 m!5253905))

(assert (=> b!4512509 d!1388467))

(declare-fun d!1388473 () Bool)

(assert (=> d!1388473 (= (eq!603 lt!1690469 (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690458)) (= (content!8314 (toList!4300 lt!1690469)) (content!8314 (toList!4300 (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690458)))))))

(declare-fun bs!848798 () Bool)

(assert (= bs!848798 d!1388473))

(assert (=> bs!848798 m!5253669))

(declare-fun m!5253907 () Bool)

(assert (=> bs!848798 m!5253907))

(assert (=> b!4512509 d!1388473))

(declare-fun bs!848801 () Bool)

(declare-fun b!4512699 () Bool)

(assert (= bs!848801 (and b!4512699 b!4512625)))

(declare-fun lambda!170929 () Int)

(assert (=> bs!848801 (= (= lt!1690458 lt!1690464) (= lambda!170929 lambda!170915))))

(declare-fun bs!848803 () Bool)

(assert (= bs!848803 (and b!4512699 b!4512626)))

(assert (=> bs!848803 (= (= lt!1690458 lt!1690464) (= lambda!170929 lambda!170916))))

(assert (=> bs!848803 (= (= lt!1690458 lt!1690634) (= lambda!170929 lambda!170917))))

(declare-fun bs!848806 () Bool)

(assert (= bs!848806 (and b!4512699 d!1388405)))

(assert (=> bs!848806 (= (= lt!1690458 lt!1690636) (= lambda!170929 lambda!170918))))

(assert (=> b!4512699 true))

(declare-fun bs!848809 () Bool)

(declare-fun b!4512700 () Bool)

(assert (= bs!848809 (and b!4512700 b!4512626)))

(declare-fun lambda!170931 () Int)

(assert (=> bs!848809 (= (= lt!1690458 lt!1690634) (= lambda!170931 lambda!170917))))

(declare-fun bs!848810 () Bool)

(assert (= bs!848810 (and b!4512700 b!4512625)))

(assert (=> bs!848810 (= (= lt!1690458 lt!1690464) (= lambda!170931 lambda!170915))))

(declare-fun bs!848811 () Bool)

(assert (= bs!848811 (and b!4512700 d!1388405)))

(assert (=> bs!848811 (= (= lt!1690458 lt!1690636) (= lambda!170931 lambda!170918))))

(assert (=> bs!848809 (= (= lt!1690458 lt!1690464) (= lambda!170931 lambda!170916))))

(declare-fun bs!848812 () Bool)

(assert (= bs!848812 (and b!4512700 b!4512699)))

(assert (=> bs!848812 (= lambda!170931 lambda!170929)))

(assert (=> b!4512700 true))

(declare-fun lambda!170933 () Int)

(declare-fun lt!1690724 () ListMap!3561)

(assert (=> bs!848809 (= (= lt!1690724 lt!1690634) (= lambda!170933 lambda!170917))))

(assert (=> bs!848810 (= (= lt!1690724 lt!1690464) (= lambda!170933 lambda!170915))))

(assert (=> bs!848811 (= (= lt!1690724 lt!1690636) (= lambda!170933 lambda!170918))))

(assert (=> bs!848809 (= (= lt!1690724 lt!1690464) (= lambda!170933 lambda!170916))))

(assert (=> bs!848812 (= (= lt!1690724 lt!1690458) (= lambda!170933 lambda!170929))))

(assert (=> b!4512700 (= (= lt!1690724 lt!1690458) (= lambda!170933 lambda!170931))))

(assert (=> b!4512700 true))

(declare-fun bs!848818 () Bool)

(declare-fun d!1388475 () Bool)

(assert (= bs!848818 (and d!1388475 b!4512700)))

(declare-fun lt!1690726 () ListMap!3561)

(declare-fun lambda!170935 () Int)

(assert (=> bs!848818 (= (= lt!1690726 lt!1690724) (= lambda!170935 lambda!170933))))

(declare-fun bs!848819 () Bool)

(assert (= bs!848819 (and d!1388475 b!4512626)))

(assert (=> bs!848819 (= (= lt!1690726 lt!1690634) (= lambda!170935 lambda!170917))))

(declare-fun bs!848820 () Bool)

(assert (= bs!848820 (and d!1388475 b!4512625)))

(assert (=> bs!848820 (= (= lt!1690726 lt!1690464) (= lambda!170935 lambda!170915))))

(declare-fun bs!848822 () Bool)

(assert (= bs!848822 (and d!1388475 d!1388405)))

(assert (=> bs!848822 (= (= lt!1690726 lt!1690636) (= lambda!170935 lambda!170918))))

(assert (=> bs!848819 (= (= lt!1690726 lt!1690464) (= lambda!170935 lambda!170916))))

(declare-fun bs!848823 () Bool)

(assert (= bs!848823 (and d!1388475 b!4512699)))

(assert (=> bs!848823 (= (= lt!1690726 lt!1690458) (= lambda!170935 lambda!170929))))

(assert (=> bs!848818 (= (= lt!1690726 lt!1690458) (= lambda!170935 lambda!170931))))

(assert (=> d!1388475 true))

(declare-fun bm!314279 () Bool)

(declare-fun call!314286 () Unit!93804)

(assert (=> bm!314279 (= call!314286 (lemmaContainsAllItsOwnKeys!324 lt!1690458))))

(declare-fun e!2811318 () Bool)

(assert (=> d!1388475 e!2811318))

(declare-fun res!1877258 () Bool)

(assert (=> d!1388475 (=> (not res!1877258) (not e!2811318))))

(assert (=> d!1388475 (= res!1877258 (forall!10231 (_2!28804 lt!1690462) lambda!170935))))

(declare-fun e!2811316 () ListMap!3561)

(assert (=> d!1388475 (= lt!1690726 e!2811316)))

(declare-fun c!769852 () Bool)

(assert (=> d!1388475 (= c!769852 ((_ is Nil!50604) (_2!28804 lt!1690462)))))

(assert (=> d!1388475 (noDuplicateKeys!1146 (_2!28804 lt!1690462))))

(assert (=> d!1388475 (= (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690458) lt!1690726)))

(declare-fun b!4512698 () Bool)

(declare-fun e!2811317 () Bool)

(assert (=> b!4512698 (= e!2811317 (forall!10231 (toList!4300 lt!1690458) lambda!170933))))

(declare-fun call!314284 () Bool)

(declare-fun bm!314280 () Bool)

(assert (=> bm!314280 (= call!314284 (forall!10231 (ite c!769852 (toList!4300 lt!1690458) (_2!28804 lt!1690462)) (ite c!769852 lambda!170929 lambda!170933)))))

(assert (=> b!4512699 (= e!2811316 lt!1690458)))

(declare-fun lt!1690740 () Unit!93804)

(assert (=> b!4512699 (= lt!1690740 call!314286)))

(declare-fun call!314285 () Bool)

(assert (=> b!4512699 call!314285))

(declare-fun lt!1690730 () Unit!93804)

(assert (=> b!4512699 (= lt!1690730 lt!1690740)))

(assert (=> b!4512699 call!314284))

(declare-fun lt!1690725 () Unit!93804)

(declare-fun Unit!93835 () Unit!93804)

(assert (=> b!4512699 (= lt!1690725 Unit!93835)))

(declare-fun bm!314281 () Bool)

(assert (=> bm!314281 (= call!314285 (forall!10231 (toList!4300 lt!1690458) (ite c!769852 lambda!170929 lambda!170933)))))

(assert (=> b!4512700 (= e!2811316 lt!1690724)))

(declare-fun lt!1690737 () ListMap!3561)

(assert (=> b!4512700 (= lt!1690737 (+!1512 lt!1690458 (h!56443 (_2!28804 lt!1690462))))))

(assert (=> b!4512700 (= lt!1690724 (addToMapMapFromBucket!673 (t!357690 (_2!28804 lt!1690462)) (+!1512 lt!1690458 (h!56443 (_2!28804 lt!1690462)))))))

(declare-fun lt!1690733 () Unit!93804)

(assert (=> b!4512700 (= lt!1690733 call!314286)))

(assert (=> b!4512700 (forall!10231 (toList!4300 lt!1690458) lambda!170931)))

(declare-fun lt!1690721 () Unit!93804)

(assert (=> b!4512700 (= lt!1690721 lt!1690733)))

(assert (=> b!4512700 (forall!10231 (toList!4300 lt!1690737) lambda!170933)))

(declare-fun lt!1690738 () Unit!93804)

(declare-fun Unit!93836 () Unit!93804)

(assert (=> b!4512700 (= lt!1690738 Unit!93836)))

(assert (=> b!4512700 (forall!10231 (t!357690 (_2!28804 lt!1690462)) lambda!170933)))

(declare-fun lt!1690734 () Unit!93804)

(declare-fun Unit!93837 () Unit!93804)

(assert (=> b!4512700 (= lt!1690734 Unit!93837)))

(declare-fun lt!1690722 () Unit!93804)

(declare-fun Unit!93838 () Unit!93804)

(assert (=> b!4512700 (= lt!1690722 Unit!93838)))

(declare-fun lt!1690732 () Unit!93804)

(assert (=> b!4512700 (= lt!1690732 (forallContained!2483 (toList!4300 lt!1690737) lambda!170933 (h!56443 (_2!28804 lt!1690462))))))

(assert (=> b!4512700 (contains!13310 lt!1690737 (_1!28803 (h!56443 (_2!28804 lt!1690462))))))

(declare-fun lt!1690739 () Unit!93804)

(declare-fun Unit!93839 () Unit!93804)

(assert (=> b!4512700 (= lt!1690739 Unit!93839)))

(assert (=> b!4512700 (contains!13310 lt!1690724 (_1!28803 (h!56443 (_2!28804 lt!1690462))))))

(declare-fun lt!1690731 () Unit!93804)

(declare-fun Unit!93840 () Unit!93804)

(assert (=> b!4512700 (= lt!1690731 Unit!93840)))

(assert (=> b!4512700 (forall!10231 (_2!28804 lt!1690462) lambda!170933)))

(declare-fun lt!1690723 () Unit!93804)

(declare-fun Unit!93841 () Unit!93804)

(assert (=> b!4512700 (= lt!1690723 Unit!93841)))

(assert (=> b!4512700 (forall!10231 (toList!4300 lt!1690737) lambda!170933)))

(declare-fun lt!1690720 () Unit!93804)

(declare-fun Unit!93842 () Unit!93804)

(assert (=> b!4512700 (= lt!1690720 Unit!93842)))

(declare-fun lt!1690736 () Unit!93804)

(declare-fun Unit!93843 () Unit!93804)

(assert (=> b!4512700 (= lt!1690736 Unit!93843)))

(declare-fun lt!1690728 () Unit!93804)

(assert (=> b!4512700 (= lt!1690728 (addForallContainsKeyThenBeforeAdding!324 lt!1690458 lt!1690724 (_1!28803 (h!56443 (_2!28804 lt!1690462))) (_2!28803 (h!56443 (_2!28804 lt!1690462)))))))

(assert (=> b!4512700 (forall!10231 (toList!4300 lt!1690458) lambda!170933)))

(declare-fun lt!1690729 () Unit!93804)

(assert (=> b!4512700 (= lt!1690729 lt!1690728)))

(assert (=> b!4512700 call!314285))

(declare-fun lt!1690735 () Unit!93804)

(declare-fun Unit!93844 () Unit!93804)

(assert (=> b!4512700 (= lt!1690735 Unit!93844)))

(declare-fun res!1877257 () Bool)

(assert (=> b!4512700 (= res!1877257 call!314284)))

(assert (=> b!4512700 (=> (not res!1877257) (not e!2811317))))

(assert (=> b!4512700 e!2811317))

(declare-fun lt!1690727 () Unit!93804)

(declare-fun Unit!93845 () Unit!93804)

(assert (=> b!4512700 (= lt!1690727 Unit!93845)))

(declare-fun b!4512701 () Bool)

(declare-fun res!1877256 () Bool)

(assert (=> b!4512701 (=> (not res!1877256) (not e!2811318))))

(assert (=> b!4512701 (= res!1877256 (forall!10231 (toList!4300 lt!1690458) lambda!170935))))

(declare-fun b!4512702 () Bool)

(assert (=> b!4512702 (= e!2811318 (invariantList!1003 (toList!4300 lt!1690726)))))

(assert (= (and d!1388475 c!769852) b!4512699))

(assert (= (and d!1388475 (not c!769852)) b!4512700))

(assert (= (and b!4512700 res!1877257) b!4512698))

(assert (= (or b!4512699 b!4512700) bm!314281))

(assert (= (or b!4512699 b!4512700) bm!314280))

(assert (= (or b!4512699 b!4512700) bm!314279))

(assert (= (and d!1388475 res!1877258) b!4512701))

(assert (= (and b!4512701 res!1877256) b!4512702))

(declare-fun m!5253917 () Bool)

(assert (=> b!4512701 m!5253917))

(declare-fun m!5253921 () Bool)

(assert (=> d!1388475 m!5253921))

(assert (=> d!1388475 m!5253779))

(declare-fun m!5253925 () Bool)

(assert (=> b!4512700 m!5253925))

(declare-fun m!5253931 () Bool)

(assert (=> b!4512700 m!5253931))

(declare-fun m!5253935 () Bool)

(assert (=> b!4512700 m!5253935))

(declare-fun m!5253939 () Bool)

(assert (=> b!4512700 m!5253939))

(declare-fun m!5253941 () Bool)

(assert (=> b!4512700 m!5253941))

(declare-fun m!5253943 () Bool)

(assert (=> b!4512700 m!5253943))

(assert (=> b!4512700 m!5253939))

(declare-fun m!5253947 () Bool)

(assert (=> b!4512700 m!5253947))

(declare-fun m!5253953 () Bool)

(assert (=> b!4512700 m!5253953))

(declare-fun m!5253955 () Bool)

(assert (=> b!4512700 m!5253955))

(declare-fun m!5253959 () Bool)

(assert (=> b!4512700 m!5253959))

(assert (=> b!4512700 m!5253925))

(declare-fun m!5253961 () Bool)

(assert (=> b!4512700 m!5253961))

(assert (=> b!4512698 m!5253959))

(declare-fun m!5253967 () Bool)

(assert (=> b!4512702 m!5253967))

(declare-fun m!5253969 () Bool)

(assert (=> bm!314281 m!5253969))

(declare-fun m!5253971 () Bool)

(assert (=> bm!314280 m!5253971))

(declare-fun m!5253973 () Bool)

(assert (=> bm!314279 m!5253973))

(assert (=> b!4512509 d!1388475))

(declare-fun d!1388479 () Bool)

(assert (=> d!1388479 (eq!603 (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690464) (addToMapMapFromBucket!673 (_2!28804 lt!1690462) lt!1690458))))

(declare-fun lt!1690745 () Unit!93804)

(declare-fun choose!29348 (ListMap!3561 ListMap!3561 List!50728) Unit!93804)

(assert (=> d!1388479 (= lt!1690745 (choose!29348 lt!1690464 lt!1690458 (_2!28804 lt!1690462)))))

(assert (=> d!1388479 (noDuplicateKeys!1146 (_2!28804 lt!1690462))))

(assert (=> d!1388479 (= (lemmaAddToMapFromBucketPreservesEquivalence!22 lt!1690464 lt!1690458 (_2!28804 lt!1690462)) lt!1690745)))

(declare-fun bs!848824 () Bool)

(assert (= bs!848824 d!1388479))

(assert (=> bs!848824 m!5253569))

(declare-fun m!5253975 () Bool)

(assert (=> bs!848824 m!5253975))

(assert (=> bs!848824 m!5253569))

(assert (=> bs!848824 m!5253601))

(declare-fun m!5253977 () Bool)

(assert (=> bs!848824 m!5253977))

(assert (=> bs!848824 m!5253779))

(assert (=> bs!848824 m!5253601))

(assert (=> b!4512509 d!1388479))

(declare-fun d!1388481 () Bool)

(declare-fun res!1877269 () Bool)

(declare-fun e!2811329 () Bool)

(assert (=> d!1388481 (=> res!1877269 e!2811329)))

(assert (=> d!1388481 (= res!1877269 (and ((_ is Cons!50604) lt!1690467) (= (_1!28803 (h!56443 lt!1690467)) key!3287)))))

(assert (=> d!1388481 (= (containsKey!1738 lt!1690467 key!3287) e!2811329)))

(declare-fun b!4512713 () Bool)

(declare-fun e!2811330 () Bool)

(assert (=> b!4512713 (= e!2811329 e!2811330)))

(declare-fun res!1877270 () Bool)

(assert (=> b!4512713 (=> (not res!1877270) (not e!2811330))))

(assert (=> b!4512713 (= res!1877270 ((_ is Cons!50604) lt!1690467))))

(declare-fun b!4512714 () Bool)

(assert (=> b!4512714 (= e!2811330 (containsKey!1738 (t!357690 lt!1690467) key!3287))))

(assert (= (and d!1388481 (not res!1877269)) b!4512713))

(assert (= (and b!4512713 res!1877270) b!4512714))

(declare-fun m!5253987 () Bool)

(assert (=> b!4512714 m!5253987))

(assert (=> b!4512511 d!1388481))

(declare-fun d!1388487 () Bool)

(declare-fun res!1877271 () Bool)

(declare-fun e!2811331 () Bool)

(assert (=> d!1388487 (=> res!1877271 e!2811331)))

(assert (=> d!1388487 (= res!1877271 ((_ is Nil!50605) (toList!4299 lm!1477)))))

(assert (=> d!1388487 (= (forall!10229 (toList!4299 lm!1477) lambda!170841) e!2811331)))

(declare-fun b!4512715 () Bool)

(declare-fun e!2811332 () Bool)

(assert (=> b!4512715 (= e!2811331 e!2811332)))

(declare-fun res!1877272 () Bool)

(assert (=> b!4512715 (=> (not res!1877272) (not e!2811332))))

(assert (=> b!4512715 (= res!1877272 (dynLambda!21143 lambda!170841 (h!56444 (toList!4299 lm!1477))))))

(declare-fun b!4512716 () Bool)

(assert (=> b!4512716 (= e!2811332 (forall!10229 (t!357691 (toList!4299 lm!1477)) lambda!170841))))

(assert (= (and d!1388487 (not res!1877271)) b!4512715))

(assert (= (and b!4512715 res!1877272) b!4512716))

(declare-fun b_lambda!154019 () Bool)

(assert (=> (not b_lambda!154019) (not b!4512715)))

(declare-fun m!5253989 () Bool)

(assert (=> b!4512715 m!5253989))

(declare-fun m!5253991 () Bool)

(assert (=> b!4512716 m!5253991))

(assert (=> start!446200 d!1388487))

(declare-fun d!1388489 () Bool)

(declare-fun isStrictlySorted!417 (List!50729) Bool)

(assert (=> d!1388489 (= (inv!66189 lm!1477) (isStrictlySorted!417 (toList!4299 lm!1477)))))

(declare-fun bs!848827 () Bool)

(assert (= bs!848827 d!1388489))

(declare-fun m!5253997 () Bool)

(assert (=> bs!848827 m!5253997))

(assert (=> start!446200 d!1388489))

(declare-fun bs!848828 () Bool)

(declare-fun d!1388493 () Bool)

(assert (= bs!848828 (and d!1388493 d!1388475)))

(declare-fun lambda!170938 () Int)

(assert (=> bs!848828 (not (= lambda!170938 lambda!170935))))

(declare-fun bs!848829 () Bool)

(assert (= bs!848829 (and d!1388493 b!4512700)))

(assert (=> bs!848829 (not (= lambda!170938 lambda!170933))))

(declare-fun bs!848830 () Bool)

(assert (= bs!848830 (and d!1388493 b!4512626)))

(assert (=> bs!848830 (not (= lambda!170938 lambda!170917))))

(declare-fun bs!848831 () Bool)

(assert (= bs!848831 (and d!1388493 b!4512625)))

(assert (=> bs!848831 (not (= lambda!170938 lambda!170915))))

(declare-fun bs!848832 () Bool)

(assert (= bs!848832 (and d!1388493 d!1388405)))

(assert (=> bs!848832 (not (= lambda!170938 lambda!170918))))

(assert (=> bs!848830 (not (= lambda!170938 lambda!170916))))

(declare-fun bs!848833 () Bool)

(assert (= bs!848833 (and d!1388493 b!4512699)))

(assert (=> bs!848833 (not (= lambda!170938 lambda!170929))))

(assert (=> bs!848829 (not (= lambda!170938 lambda!170931))))

(assert (=> d!1388493 true))

(assert (=> d!1388493 true))

(assert (=> d!1388493 (= (allKeysSameHash!1000 newBucket!178 hash!344 hashF!1107) (forall!10231 newBucket!178 lambda!170938))))

(declare-fun bs!848834 () Bool)

(assert (= bs!848834 d!1388493))

(declare-fun m!5254003 () Bool)

(assert (=> bs!848834 m!5254003))

(assert (=> b!4512490 d!1388493))

(declare-fun d!1388497 () Bool)

(declare-fun lt!1690752 () Bool)

(declare-fun content!8315 (List!50729) (InoxSet tuple2!51020))

(assert (=> d!1388497 (= lt!1690752 (select (content!8315 (t!357691 (toList!4299 lm!1477))) lt!1690463))))

(declare-fun e!2811343 () Bool)

(assert (=> d!1388497 (= lt!1690752 e!2811343)))

(declare-fun res!1877284 () Bool)

(assert (=> d!1388497 (=> (not res!1877284) (not e!2811343))))

(assert (=> d!1388497 (= res!1877284 ((_ is Cons!50605) (t!357691 (toList!4299 lm!1477))))))

(assert (=> d!1388497 (= (contains!13309 (t!357691 (toList!4299 lm!1477)) lt!1690463) lt!1690752)))

(declare-fun b!4512731 () Bool)

(declare-fun e!2811344 () Bool)

(assert (=> b!4512731 (= e!2811343 e!2811344)))

(declare-fun res!1877283 () Bool)

(assert (=> b!4512731 (=> res!1877283 e!2811344)))

(assert (=> b!4512731 (= res!1877283 (= (h!56444 (t!357691 (toList!4299 lm!1477))) lt!1690463))))

(declare-fun b!4512732 () Bool)

(assert (=> b!4512732 (= e!2811344 (contains!13309 (t!357691 (t!357691 (toList!4299 lm!1477))) lt!1690463))))

(assert (= (and d!1388497 res!1877284) b!4512731))

(assert (= (and b!4512731 (not res!1877283)) b!4512732))

(declare-fun m!5254009 () Bool)

(assert (=> d!1388497 m!5254009))

(declare-fun m!5254011 () Bool)

(assert (=> d!1388497 m!5254011))

(declare-fun m!5254013 () Bool)

(assert (=> b!4512732 m!5254013))

(assert (=> b!4512489 d!1388497))

(declare-fun d!1388501 () Bool)

(declare-fun get!16561 (Option!11084) List!50728)

(assert (=> d!1388501 (= (apply!11883 lt!1690461 hash!344) (get!16561 (getValueByKey!1064 (toList!4299 lt!1690461) hash!344)))))

(declare-fun bs!848841 () Bool)

(assert (= bs!848841 d!1388501))

(assert (=> bs!848841 m!5253879))

(assert (=> bs!848841 m!5253879))

(declare-fun m!5254015 () Bool)

(assert (=> bs!848841 m!5254015))

(assert (=> b!4512500 d!1388501))

(declare-fun bs!848842 () Bool)

(declare-fun d!1388503 () Bool)

(assert (= bs!848842 (and d!1388503 start!446200)))

(declare-fun lambda!170942 () Int)

(assert (=> bs!848842 (= lambda!170942 lambda!170841)))

(declare-fun bs!848843 () Bool)

(assert (= bs!848843 (and d!1388503 d!1388399)))

(assert (=> bs!848843 (= lambda!170942 lambda!170844)))

(declare-fun bs!848844 () Bool)

(assert (= bs!848844 (and d!1388503 d!1388439)))

(assert (=> bs!848844 (= lambda!170942 lambda!170924)))

(declare-fun bs!848845 () Bool)

(assert (= bs!848845 (and d!1388503 d!1388453)))

(assert (=> bs!848845 (not (= lambda!170942 lambda!170927))))

(declare-fun lt!1690753 () ListMap!3561)

(assert (=> d!1388503 (invariantList!1003 (toList!4300 lt!1690753))))

(declare-fun e!2811345 () ListMap!3561)

(assert (=> d!1388503 (= lt!1690753 e!2811345)))

(declare-fun c!769853 () Bool)

(assert (=> d!1388503 (= c!769853 ((_ is Cons!50605) (t!357691 (toList!4299 lm!1477))))))

(assert (=> d!1388503 (forall!10229 (t!357691 (toList!4299 lm!1477)) lambda!170942)))

(assert (=> d!1388503 (= (extractMap!1202 (t!357691 (toList!4299 lm!1477))) lt!1690753)))

(declare-fun b!4512733 () Bool)

(assert (=> b!4512733 (= e!2811345 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (t!357691 (toList!4299 lm!1477)))) (extractMap!1202 (t!357691 (t!357691 (toList!4299 lm!1477))))))))

(declare-fun b!4512734 () Bool)

(assert (=> b!4512734 (= e!2811345 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388503 c!769853) b!4512733))

(assert (= (and d!1388503 (not c!769853)) b!4512734))

(declare-fun m!5254017 () Bool)

(assert (=> d!1388503 m!5254017))

(declare-fun m!5254019 () Bool)

(assert (=> d!1388503 m!5254019))

(declare-fun m!5254021 () Bool)

(assert (=> b!4512733 m!5254021))

(assert (=> b!4512733 m!5254021))

(declare-fun m!5254023 () Bool)

(assert (=> b!4512733 m!5254023))

(assert (=> b!4512491 d!1388503))

(declare-fun b!4512757 () Bool)

(assert (=> b!4512757 false))

(declare-fun lt!1690778 () Unit!93804)

(declare-fun lt!1690784 () Unit!93804)

(assert (=> b!4512757 (= lt!1690778 lt!1690784)))

(declare-fun containsKey!1742 (List!50728 K!12005) Bool)

(assert (=> b!4512757 (containsKey!1742 (toList!4300 lt!1690472) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!450 (List!50728 K!12005) Unit!93804)

(assert (=> b!4512757 (= lt!1690784 (lemmaInGetKeysListThenContainsKey!450 (toList!4300 lt!1690472) key!3287))))

(declare-fun e!2811363 () Unit!93804)

(declare-fun Unit!93857 () Unit!93804)

(assert (=> b!4512757 (= e!2811363 Unit!93857)))

(declare-fun b!4512758 () Bool)

(declare-fun Unit!93858 () Unit!93804)

(assert (=> b!4512758 (= e!2811363 Unit!93858)))

(declare-fun d!1388505 () Bool)

(declare-fun e!2811361 () Bool)

(assert (=> d!1388505 e!2811361))

(declare-fun res!1877295 () Bool)

(assert (=> d!1388505 (=> res!1877295 e!2811361)))

(declare-fun e!2811365 () Bool)

(assert (=> d!1388505 (= res!1877295 e!2811365)))

(declare-fun res!1877293 () Bool)

(assert (=> d!1388505 (=> (not res!1877293) (not e!2811365))))

(declare-fun lt!1690779 () Bool)

(assert (=> d!1388505 (= res!1877293 (not lt!1690779))))

(declare-fun lt!1690782 () Bool)

(assert (=> d!1388505 (= lt!1690779 lt!1690782)))

(declare-fun lt!1690780 () Unit!93804)

(declare-fun e!2811360 () Unit!93804)

(assert (=> d!1388505 (= lt!1690780 e!2811360)))

(declare-fun c!769862 () Bool)

(assert (=> d!1388505 (= c!769862 lt!1690782)))

(assert (=> d!1388505 (= lt!1690782 (containsKey!1742 (toList!4300 lt!1690472) key!3287))))

(assert (=> d!1388505 (= (contains!13310 lt!1690472 key!3287) lt!1690779)))

(declare-fun b!4512759 () Bool)

(declare-datatypes ((List!50731 0))(
  ( (Nil!50607) (Cons!50607 (h!56448 K!12005) (t!357693 List!50731)) )
))
(declare-fun e!2811362 () List!50731)

(declare-fun keys!17566 (ListMap!3561) List!50731)

(assert (=> b!4512759 (= e!2811362 (keys!17566 lt!1690472))))

(declare-fun b!4512760 () Bool)

(declare-fun lt!1690781 () Unit!93804)

(assert (=> b!4512760 (= e!2811360 lt!1690781)))

(declare-fun lt!1690783 () Unit!93804)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!969 (List!50728 K!12005) Unit!93804)

(assert (=> b!4512760 (= lt!1690783 (lemmaContainsKeyImpliesGetValueByKeyDefined!969 (toList!4300 lt!1690472) key!3287))))

(declare-datatypes ((Option!11085 0))(
  ( (None!11084) (Some!11084 (v!44644 V!12251)) )
))
(declare-fun isDefined!8372 (Option!11085) Bool)

(declare-fun getValueByKey!1065 (List!50728 K!12005) Option!11085)

(assert (=> b!4512760 (isDefined!8372 (getValueByKey!1065 (toList!4300 lt!1690472) key!3287))))

(declare-fun lt!1690785 () Unit!93804)

(assert (=> b!4512760 (= lt!1690785 lt!1690783)))

(declare-fun lemmaInListThenGetKeysListContains!447 (List!50728 K!12005) Unit!93804)

(assert (=> b!4512760 (= lt!1690781 (lemmaInListThenGetKeysListContains!447 (toList!4300 lt!1690472) key!3287))))

(declare-fun call!314289 () Bool)

(assert (=> b!4512760 call!314289))

(declare-fun bm!314284 () Bool)

(declare-fun contains!13313 (List!50731 K!12005) Bool)

(assert (=> bm!314284 (= call!314289 (contains!13313 e!2811362 key!3287))))

(declare-fun c!769861 () Bool)

(assert (=> bm!314284 (= c!769861 c!769862)))

(declare-fun b!4512761 () Bool)

(assert (=> b!4512761 (= e!2811360 e!2811363)))

(declare-fun c!769863 () Bool)

(assert (=> b!4512761 (= c!769863 call!314289)))

(declare-fun b!4512762 () Bool)

(declare-fun e!2811364 () Bool)

(assert (=> b!4512762 (= e!2811364 (contains!13313 (keys!17566 lt!1690472) key!3287))))

(declare-fun b!4512763 () Bool)

(declare-fun getKeysList!451 (List!50728) List!50731)

(assert (=> b!4512763 (= e!2811362 (getKeysList!451 (toList!4300 lt!1690472)))))

(declare-fun b!4512764 () Bool)

(assert (=> b!4512764 (= e!2811361 e!2811364)))

(declare-fun res!1877294 () Bool)

(assert (=> b!4512764 (=> (not res!1877294) (not e!2811364))))

(assert (=> b!4512764 (= res!1877294 (isDefined!8372 (getValueByKey!1065 (toList!4300 lt!1690472) key!3287)))))

(declare-fun b!4512765 () Bool)

(assert (=> b!4512765 (= e!2811365 (not (contains!13313 (keys!17566 lt!1690472) key!3287)))))

(assert (= (and d!1388505 c!769862) b!4512760))

(assert (= (and d!1388505 (not c!769862)) b!4512761))

(assert (= (and b!4512761 c!769863) b!4512757))

(assert (= (and b!4512761 (not c!769863)) b!4512758))

(assert (= (or b!4512760 b!4512761) bm!314284))

(assert (= (and bm!314284 c!769861) b!4512763))

(assert (= (and bm!314284 (not c!769861)) b!4512759))

(assert (= (and d!1388505 res!1877293) b!4512765))

(assert (= (and d!1388505 (not res!1877295)) b!4512764))

(assert (= (and b!4512764 res!1877294) b!4512762))

(declare-fun m!5254061 () Bool)

(assert (=> b!4512760 m!5254061))

(declare-fun m!5254063 () Bool)

(assert (=> b!4512760 m!5254063))

(assert (=> b!4512760 m!5254063))

(declare-fun m!5254065 () Bool)

(assert (=> b!4512760 m!5254065))

(declare-fun m!5254067 () Bool)

(assert (=> b!4512760 m!5254067))

(declare-fun m!5254069 () Bool)

(assert (=> b!4512759 m!5254069))

(assert (=> b!4512765 m!5254069))

(assert (=> b!4512765 m!5254069))

(declare-fun m!5254071 () Bool)

(assert (=> b!4512765 m!5254071))

(declare-fun m!5254073 () Bool)

(assert (=> d!1388505 m!5254073))

(assert (=> b!4512757 m!5254073))

(declare-fun m!5254075 () Bool)

(assert (=> b!4512757 m!5254075))

(declare-fun m!5254077 () Bool)

(assert (=> bm!314284 m!5254077))

(assert (=> b!4512762 m!5254069))

(assert (=> b!4512762 m!5254069))

(assert (=> b!4512762 m!5254071))

(declare-fun m!5254079 () Bool)

(assert (=> b!4512763 m!5254079))

(assert (=> b!4512764 m!5254063))

(assert (=> b!4512764 m!5254063))

(assert (=> b!4512764 m!5254065))

(assert (=> b!4512491 d!1388505))

(declare-fun bs!848862 () Bool)

(declare-fun d!1388517 () Bool)

(assert (= bs!848862 (and d!1388517 d!1388453)))

(declare-fun lambda!170947 () Int)

(assert (=> bs!848862 (not (= lambda!170947 lambda!170927))))

(declare-fun bs!848863 () Bool)

(assert (= bs!848863 (and d!1388517 d!1388439)))

(assert (=> bs!848863 (= lambda!170947 lambda!170924)))

(declare-fun bs!848864 () Bool)

(assert (= bs!848864 (and d!1388517 start!446200)))

(assert (=> bs!848864 (= lambda!170947 lambda!170841)))

(declare-fun bs!848865 () Bool)

(assert (= bs!848865 (and d!1388517 d!1388503)))

(assert (=> bs!848865 (= lambda!170947 lambda!170942)))

(declare-fun bs!848866 () Bool)

(assert (= bs!848866 (and d!1388517 d!1388399)))

(assert (=> bs!848866 (= lambda!170947 lambda!170844)))

(declare-fun lt!1690786 () ListMap!3561)

(assert (=> d!1388517 (invariantList!1003 (toList!4300 lt!1690786))))

(declare-fun e!2811366 () ListMap!3561)

(assert (=> d!1388517 (= lt!1690786 e!2811366)))

(declare-fun c!769864 () Bool)

(assert (=> d!1388517 (= c!769864 ((_ is Cons!50605) (toList!4299 lt!1690461)))))

(assert (=> d!1388517 (forall!10229 (toList!4299 lt!1690461) lambda!170947)))

(assert (=> d!1388517 (= (extractMap!1202 (toList!4299 lt!1690461)) lt!1690786)))

(declare-fun b!4512766 () Bool)

(assert (=> b!4512766 (= e!2811366 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (toList!4299 lt!1690461))) (extractMap!1202 (t!357691 (toList!4299 lt!1690461)))))))

(declare-fun b!4512767 () Bool)

(assert (=> b!4512767 (= e!2811366 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388517 c!769864) b!4512766))

(assert (= (and d!1388517 (not c!769864)) b!4512767))

(declare-fun m!5254081 () Bool)

(assert (=> d!1388517 m!5254081))

(declare-fun m!5254083 () Bool)

(assert (=> d!1388517 m!5254083))

(declare-fun m!5254085 () Bool)

(assert (=> b!4512766 m!5254085))

(assert (=> b!4512766 m!5254085))

(declare-fun m!5254087 () Bool)

(assert (=> b!4512766 m!5254087))

(assert (=> b!4512491 d!1388517))

(declare-fun b!4512768 () Bool)

(assert (=> b!4512768 false))

(declare-fun lt!1690787 () Unit!93804)

(declare-fun lt!1690793 () Unit!93804)

(assert (=> b!4512768 (= lt!1690787 lt!1690793)))

(assert (=> b!4512768 (containsKey!1742 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287)))

(assert (=> b!4512768 (= lt!1690793 (lemmaInGetKeysListThenContainsKey!450 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(declare-fun e!2811370 () Unit!93804)

(declare-fun Unit!93859 () Unit!93804)

(assert (=> b!4512768 (= e!2811370 Unit!93859)))

(declare-fun b!4512769 () Bool)

(declare-fun Unit!93860 () Unit!93804)

(assert (=> b!4512769 (= e!2811370 Unit!93860)))

(declare-fun d!1388519 () Bool)

(declare-fun e!2811368 () Bool)

(assert (=> d!1388519 e!2811368))

(declare-fun res!1877298 () Bool)

(assert (=> d!1388519 (=> res!1877298 e!2811368)))

(declare-fun e!2811372 () Bool)

(assert (=> d!1388519 (= res!1877298 e!2811372)))

(declare-fun res!1877296 () Bool)

(assert (=> d!1388519 (=> (not res!1877296) (not e!2811372))))

(declare-fun lt!1690788 () Bool)

(assert (=> d!1388519 (= res!1877296 (not lt!1690788))))

(declare-fun lt!1690791 () Bool)

(assert (=> d!1388519 (= lt!1690788 lt!1690791)))

(declare-fun lt!1690789 () Unit!93804)

(declare-fun e!2811367 () Unit!93804)

(assert (=> d!1388519 (= lt!1690789 e!2811367)))

(declare-fun c!769866 () Bool)

(assert (=> d!1388519 (= c!769866 lt!1690791)))

(assert (=> d!1388519 (= lt!1690791 (containsKey!1742 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(assert (=> d!1388519 (= (contains!13310 (extractMap!1202 (t!357691 (toList!4299 lm!1477))) key!3287) lt!1690788)))

(declare-fun b!4512770 () Bool)

(declare-fun e!2811369 () List!50731)

(assert (=> b!4512770 (= e!2811369 (keys!17566 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))))))

(declare-fun b!4512771 () Bool)

(declare-fun lt!1690790 () Unit!93804)

(assert (=> b!4512771 (= e!2811367 lt!1690790)))

(declare-fun lt!1690792 () Unit!93804)

(assert (=> b!4512771 (= lt!1690792 (lemmaContainsKeyImpliesGetValueByKeyDefined!969 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(assert (=> b!4512771 (isDefined!8372 (getValueByKey!1065 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(declare-fun lt!1690794 () Unit!93804)

(assert (=> b!4512771 (= lt!1690794 lt!1690792)))

(assert (=> b!4512771 (= lt!1690790 (lemmaInListThenGetKeysListContains!447 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(declare-fun call!314290 () Bool)

(assert (=> b!4512771 call!314290))

(declare-fun bm!314285 () Bool)

(assert (=> bm!314285 (= call!314290 (contains!13313 e!2811369 key!3287))))

(declare-fun c!769865 () Bool)

(assert (=> bm!314285 (= c!769865 c!769866)))

(declare-fun b!4512772 () Bool)

(assert (=> b!4512772 (= e!2811367 e!2811370)))

(declare-fun c!769867 () Bool)

(assert (=> b!4512772 (= c!769867 call!314290)))

(declare-fun b!4512773 () Bool)

(declare-fun e!2811371 () Bool)

(assert (=> b!4512773 (= e!2811371 (contains!13313 (keys!17566 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287))))

(declare-fun b!4512774 () Bool)

(assert (=> b!4512774 (= e!2811369 (getKeysList!451 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477))))))))

(declare-fun b!4512775 () Bool)

(assert (=> b!4512775 (= e!2811368 e!2811371)))

(declare-fun res!1877297 () Bool)

(assert (=> b!4512775 (=> (not res!1877297) (not e!2811371))))

(assert (=> b!4512775 (= res!1877297 (isDefined!8372 (getValueByKey!1065 (toList!4300 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287)))))

(declare-fun b!4512776 () Bool)

(assert (=> b!4512776 (= e!2811372 (not (contains!13313 (keys!17566 (extractMap!1202 (t!357691 (toList!4299 lm!1477)))) key!3287)))))

(assert (= (and d!1388519 c!769866) b!4512771))

(assert (= (and d!1388519 (not c!769866)) b!4512772))

(assert (= (and b!4512772 c!769867) b!4512768))

(assert (= (and b!4512772 (not c!769867)) b!4512769))

(assert (= (or b!4512771 b!4512772) bm!314285))

(assert (= (and bm!314285 c!769865) b!4512774))

(assert (= (and bm!314285 (not c!769865)) b!4512770))

(assert (= (and d!1388519 res!1877296) b!4512776))

(assert (= (and d!1388519 (not res!1877298)) b!4512775))

(assert (= (and b!4512775 res!1877297) b!4512773))

(declare-fun m!5254089 () Bool)

(assert (=> b!4512771 m!5254089))

(declare-fun m!5254091 () Bool)

(assert (=> b!4512771 m!5254091))

(assert (=> b!4512771 m!5254091))

(declare-fun m!5254093 () Bool)

(assert (=> b!4512771 m!5254093))

(declare-fun m!5254095 () Bool)

(assert (=> b!4512771 m!5254095))

(assert (=> b!4512770 m!5253615))

(declare-fun m!5254097 () Bool)

(assert (=> b!4512770 m!5254097))

(assert (=> b!4512776 m!5253615))

(assert (=> b!4512776 m!5254097))

(assert (=> b!4512776 m!5254097))

(declare-fun m!5254099 () Bool)

(assert (=> b!4512776 m!5254099))

(declare-fun m!5254101 () Bool)

(assert (=> d!1388519 m!5254101))

(assert (=> b!4512768 m!5254101))

(declare-fun m!5254103 () Bool)

(assert (=> b!4512768 m!5254103))

(declare-fun m!5254105 () Bool)

(assert (=> bm!314285 m!5254105))

(assert (=> b!4512773 m!5253615))

(assert (=> b!4512773 m!5254097))

(assert (=> b!4512773 m!5254097))

(assert (=> b!4512773 m!5254099))

(declare-fun m!5254107 () Bool)

(assert (=> b!4512774 m!5254107))

(assert (=> b!4512775 m!5254091))

(assert (=> b!4512775 m!5254091))

(assert (=> b!4512775 m!5254093))

(assert (=> b!4512491 d!1388519))

(declare-fun bs!848877 () Bool)

(declare-fun d!1388521 () Bool)

(assert (= bs!848877 (and d!1388521 d!1388453)))

(declare-fun lambda!170951 () Int)

(assert (=> bs!848877 (not (= lambda!170951 lambda!170927))))

(declare-fun bs!848878 () Bool)

(assert (= bs!848878 (and d!1388521 d!1388517)))

(assert (=> bs!848878 (= lambda!170951 lambda!170947)))

(declare-fun bs!848879 () Bool)

(assert (= bs!848879 (and d!1388521 d!1388439)))

(assert (=> bs!848879 (= lambda!170951 lambda!170924)))

(declare-fun bs!848880 () Bool)

(assert (= bs!848880 (and d!1388521 start!446200)))

(assert (=> bs!848880 (= lambda!170951 lambda!170841)))

(declare-fun bs!848881 () Bool)

(assert (= bs!848881 (and d!1388521 d!1388503)))

(assert (=> bs!848881 (= lambda!170951 lambda!170942)))

(declare-fun bs!848882 () Bool)

(assert (= bs!848882 (and d!1388521 d!1388399)))

(assert (=> bs!848882 (= lambda!170951 lambda!170844)))

(assert (=> d!1388521 (contains!13310 (extractMap!1202 (toList!4299 lt!1690461)) key!3287)))

(declare-fun lt!1690805 () Unit!93804)

(declare-fun choose!29352 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> d!1388521 (= lt!1690805 (choose!29352 lt!1690461 key!3287 hashF!1107))))

(assert (=> d!1388521 (forall!10229 (toList!4299 lt!1690461) lambda!170951)))

(assert (=> d!1388521 (= (lemmaListContainsThenExtractedMapContains!116 lt!1690461 key!3287 hashF!1107) lt!1690805)))

(declare-fun bs!848883 () Bool)

(assert (= bs!848883 d!1388521))

(assert (=> bs!848883 m!5253617))

(assert (=> bs!848883 m!5253617))

(declare-fun m!5254149 () Bool)

(assert (=> bs!848883 m!5254149))

(declare-fun m!5254151 () Bool)

(assert (=> bs!848883 m!5254151))

(declare-fun m!5254153 () Bool)

(assert (=> bs!848883 m!5254153))

(assert (=> b!4512491 d!1388521))

(declare-fun bs!848884 () Bool)

(declare-fun d!1388535 () Bool)

(assert (= bs!848884 (and d!1388535 d!1388453)))

(declare-fun lambda!170954 () Int)

(assert (=> bs!848884 (not (= lambda!170954 lambda!170927))))

(declare-fun bs!848885 () Bool)

(assert (= bs!848885 (and d!1388535 d!1388517)))

(assert (=> bs!848885 (= lambda!170954 lambda!170947)))

(declare-fun bs!848886 () Bool)

(assert (= bs!848886 (and d!1388535 d!1388521)))

(assert (=> bs!848886 (= lambda!170954 lambda!170951)))

(declare-fun bs!848887 () Bool)

(assert (= bs!848887 (and d!1388535 d!1388439)))

(assert (=> bs!848887 (= lambda!170954 lambda!170924)))

(declare-fun bs!848888 () Bool)

(assert (= bs!848888 (and d!1388535 start!446200)))

(assert (=> bs!848888 (= lambda!170954 lambda!170841)))

(declare-fun bs!848889 () Bool)

(assert (= bs!848889 (and d!1388535 d!1388503)))

(assert (=> bs!848889 (= lambda!170954 lambda!170942)))

(declare-fun bs!848890 () Bool)

(assert (= bs!848890 (and d!1388535 d!1388399)))

(assert (=> bs!848890 (= lambda!170954 lambda!170844)))

(assert (=> d!1388535 (contains!13311 lm!1477 (hash!2759 hashF!1107 key!3287))))

(declare-fun lt!1690808 () Unit!93804)

(declare-fun choose!29353 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> d!1388535 (= lt!1690808 (choose!29353 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388535 (forall!10229 (toList!4299 lm!1477) lambda!170954)))

(assert (=> d!1388535 (= (lemmaInGenMapThenLongMapContainsHash!220 lm!1477 key!3287 hashF!1107) lt!1690808)))

(declare-fun bs!848891 () Bool)

(assert (= bs!848891 d!1388535))

(assert (=> bs!848891 m!5253595))

(assert (=> bs!848891 m!5253595))

(declare-fun m!5254155 () Bool)

(assert (=> bs!848891 m!5254155))

(declare-fun m!5254157 () Bool)

(assert (=> bs!848891 m!5254157))

(declare-fun m!5254159 () Bool)

(assert (=> bs!848891 m!5254159))

(assert (=> b!4512502 d!1388535))

(declare-fun d!1388537 () Bool)

(assert (=> d!1388537 (contains!13309 (toList!4299 lm!1477) (tuple2!51021 hash!344 lt!1690467))))

(declare-fun lt!1690830 () Unit!93804)

(declare-fun choose!29354 (List!50729 (_ BitVec 64) List!50728) Unit!93804)

(assert (=> d!1388537 (= lt!1690830 (choose!29354 (toList!4299 lm!1477) hash!344 lt!1690467))))

(declare-fun e!2811394 () Bool)

(assert (=> d!1388537 e!2811394))

(declare-fun res!1877314 () Bool)

(assert (=> d!1388537 (=> (not res!1877314) (not e!2811394))))

(assert (=> d!1388537 (= res!1877314 (isStrictlySorted!417 (toList!4299 lm!1477)))))

(assert (=> d!1388537 (= (lemmaGetValueByKeyImpliesContainsTuple!658 (toList!4299 lm!1477) hash!344 lt!1690467) lt!1690830)))

(declare-fun b!4512806 () Bool)

(assert (=> b!4512806 (= e!2811394 (= (getValueByKey!1064 (toList!4299 lm!1477) hash!344) (Some!11083 lt!1690467)))))

(assert (= (and d!1388537 res!1877314) b!4512806))

(declare-fun m!5254185 () Bool)

(assert (=> d!1388537 m!5254185))

(declare-fun m!5254187 () Bool)

(assert (=> d!1388537 m!5254187))

(assert (=> d!1388537 m!5253997))

(declare-fun m!5254189 () Bool)

(assert (=> b!4512806 m!5254189))

(assert (=> b!4512502 d!1388537))

(declare-fun d!1388543 () Bool)

(declare-fun lt!1690831 () Bool)

(assert (=> d!1388543 (= lt!1690831 (select (content!8315 (toList!4299 lm!1477)) lt!1690463))))

(declare-fun e!2811395 () Bool)

(assert (=> d!1388543 (= lt!1690831 e!2811395)))

(declare-fun res!1877316 () Bool)

(assert (=> d!1388543 (=> (not res!1877316) (not e!2811395))))

(assert (=> d!1388543 (= res!1877316 ((_ is Cons!50605) (toList!4299 lm!1477)))))

(assert (=> d!1388543 (= (contains!13309 (toList!4299 lm!1477) lt!1690463) lt!1690831)))

(declare-fun b!4512807 () Bool)

(declare-fun e!2811396 () Bool)

(assert (=> b!4512807 (= e!2811395 e!2811396)))

(declare-fun res!1877315 () Bool)

(assert (=> b!4512807 (=> res!1877315 e!2811396)))

(assert (=> b!4512807 (= res!1877315 (= (h!56444 (toList!4299 lm!1477)) lt!1690463))))

(declare-fun b!4512808 () Bool)

(assert (=> b!4512808 (= e!2811396 (contains!13309 (t!357691 (toList!4299 lm!1477)) lt!1690463))))

(assert (= (and d!1388543 res!1877316) b!4512807))

(assert (= (and b!4512807 (not res!1877315)) b!4512808))

(declare-fun m!5254191 () Bool)

(assert (=> d!1388543 m!5254191))

(declare-fun m!5254193 () Bool)

(assert (=> d!1388543 m!5254193))

(assert (=> b!4512808 m!5253587))

(assert (=> b!4512502 d!1388543))

(declare-fun d!1388545 () Bool)

(assert (=> d!1388545 (= (apply!11883 lm!1477 hash!344) (get!16561 (getValueByKey!1064 (toList!4299 lm!1477) hash!344)))))

(declare-fun bs!848902 () Bool)

(assert (= bs!848902 d!1388545))

(assert (=> bs!848902 m!5254189))

(assert (=> bs!848902 m!5254189))

(declare-fun m!5254205 () Bool)

(assert (=> bs!848902 m!5254205))

(assert (=> b!4512502 d!1388545))

(declare-fun b!4512821 () Bool)

(declare-fun e!2811402 () List!50728)

(assert (=> b!4512821 (= e!2811402 (Cons!50604 (h!56443 lt!1690467) (removePairForKey!773 (t!357690 lt!1690467) key!3287)))))

(declare-fun b!4512822 () Bool)

(assert (=> b!4512822 (= e!2811402 Nil!50604)))

(declare-fun d!1388547 () Bool)

(declare-fun lt!1690835 () List!50728)

(assert (=> d!1388547 (not (containsKey!1738 lt!1690835 key!3287))))

(declare-fun e!2811403 () List!50728)

(assert (=> d!1388547 (= lt!1690835 e!2811403)))

(declare-fun c!769880 () Bool)

(assert (=> d!1388547 (= c!769880 (and ((_ is Cons!50604) lt!1690467) (= (_1!28803 (h!56443 lt!1690467)) key!3287)))))

(assert (=> d!1388547 (noDuplicateKeys!1146 lt!1690467)))

(assert (=> d!1388547 (= (removePairForKey!773 lt!1690467 key!3287) lt!1690835)))

(declare-fun b!4512820 () Bool)

(assert (=> b!4512820 (= e!2811403 e!2811402)))

(declare-fun c!769881 () Bool)

(assert (=> b!4512820 (= c!769881 ((_ is Cons!50604) lt!1690467))))

(declare-fun b!4512819 () Bool)

(assert (=> b!4512819 (= e!2811403 (t!357690 lt!1690467))))

(assert (= (and d!1388547 c!769880) b!4512819))

(assert (= (and d!1388547 (not c!769880)) b!4512820))

(assert (= (and b!4512820 c!769881) b!4512821))

(assert (= (and b!4512820 (not c!769881)) b!4512822))

(declare-fun m!5254225 () Bool)

(assert (=> b!4512821 m!5254225))

(declare-fun m!5254227 () Bool)

(assert (=> d!1388547 m!5254227))

(declare-fun m!5254229 () Bool)

(assert (=> d!1388547 m!5254229))

(assert (=> b!4512502 d!1388547))

(declare-fun d!1388553 () Bool)

(assert (=> d!1388553 (dynLambda!21143 lambda!170841 lt!1690463)))

(declare-fun lt!1690838 () Unit!93804)

(declare-fun choose!29355 (List!50729 Int tuple2!51020) Unit!93804)

(assert (=> d!1388553 (= lt!1690838 (choose!29355 (toList!4299 lm!1477) lambda!170841 lt!1690463))))

(declare-fun e!2811406 () Bool)

(assert (=> d!1388553 e!2811406))

(declare-fun res!1877319 () Bool)

(assert (=> d!1388553 (=> (not res!1877319) (not e!2811406))))

(assert (=> d!1388553 (= res!1877319 (forall!10229 (toList!4299 lm!1477) lambda!170841))))

(assert (=> d!1388553 (= (forallContained!2481 (toList!4299 lm!1477) lambda!170841 lt!1690463) lt!1690838)))

(declare-fun b!4512825 () Bool)

(assert (=> b!4512825 (= e!2811406 (contains!13309 (toList!4299 lm!1477) lt!1690463))))

(assert (= (and d!1388553 res!1877319) b!4512825))

(declare-fun b_lambda!154023 () Bool)

(assert (=> (not b_lambda!154023) (not d!1388553)))

(declare-fun m!5254231 () Bool)

(assert (=> d!1388553 m!5254231))

(declare-fun m!5254233 () Bool)

(assert (=> d!1388553 m!5254233))

(assert (=> d!1388553 m!5253609))

(assert (=> b!4512825 m!5253553))

(assert (=> b!4512502 d!1388553))

(declare-fun d!1388555 () Bool)

(declare-fun e!2811407 () Bool)

(assert (=> d!1388555 e!2811407))

(declare-fun res!1877320 () Bool)

(assert (=> d!1388555 (=> res!1877320 e!2811407)))

(declare-fun lt!1690839 () Bool)

(assert (=> d!1388555 (= res!1877320 (not lt!1690839))))

(declare-fun lt!1690841 () Bool)

(assert (=> d!1388555 (= lt!1690839 lt!1690841)))

(declare-fun lt!1690840 () Unit!93804)

(declare-fun e!2811408 () Unit!93804)

(assert (=> d!1388555 (= lt!1690840 e!2811408)))

(declare-fun c!769882 () Bool)

(assert (=> d!1388555 (= c!769882 lt!1690841)))

(assert (=> d!1388555 (= lt!1690841 (containsKey!1741 (toList!4299 lm!1477) lt!1690477))))

(assert (=> d!1388555 (= (contains!13311 lm!1477 lt!1690477) lt!1690839)))

(declare-fun b!4512826 () Bool)

(declare-fun lt!1690842 () Unit!93804)

(assert (=> b!4512826 (= e!2811408 lt!1690842)))

(assert (=> b!4512826 (= lt!1690842 (lemmaContainsKeyImpliesGetValueByKeyDefined!968 (toList!4299 lm!1477) lt!1690477))))

(assert (=> b!4512826 (isDefined!8371 (getValueByKey!1064 (toList!4299 lm!1477) lt!1690477))))

(declare-fun b!4512827 () Bool)

(declare-fun Unit!93861 () Unit!93804)

(assert (=> b!4512827 (= e!2811408 Unit!93861)))

(declare-fun b!4512828 () Bool)

(assert (=> b!4512828 (= e!2811407 (isDefined!8371 (getValueByKey!1064 (toList!4299 lm!1477) lt!1690477)))))

(assert (= (and d!1388555 c!769882) b!4512826))

(assert (= (and d!1388555 (not c!769882)) b!4512827))

(assert (= (and d!1388555 (not res!1877320)) b!4512828))

(declare-fun m!5254235 () Bool)

(assert (=> d!1388555 m!5254235))

(declare-fun m!5254237 () Bool)

(assert (=> b!4512826 m!5254237))

(declare-fun m!5254239 () Bool)

(assert (=> b!4512826 m!5254239))

(assert (=> b!4512826 m!5254239))

(declare-fun m!5254241 () Bool)

(assert (=> b!4512826 m!5254241))

(assert (=> b!4512828 m!5254239))

(assert (=> b!4512828 m!5254239))

(assert (=> b!4512828 m!5254241))

(assert (=> b!4512502 d!1388555))

(declare-fun b!4512829 () Bool)

(assert (=> b!4512829 false))

(declare-fun lt!1690843 () Unit!93804)

(declare-fun lt!1690849 () Unit!93804)

(assert (=> b!4512829 (= lt!1690843 lt!1690849)))

(assert (=> b!4512829 (containsKey!1742 (toList!4300 lt!1690466) key!3287)))

(assert (=> b!4512829 (= lt!1690849 (lemmaInGetKeysListThenContainsKey!450 (toList!4300 lt!1690466) key!3287))))

(declare-fun e!2811412 () Unit!93804)

(declare-fun Unit!93862 () Unit!93804)

(assert (=> b!4512829 (= e!2811412 Unit!93862)))

(declare-fun b!4512830 () Bool)

(declare-fun Unit!93863 () Unit!93804)

(assert (=> b!4512830 (= e!2811412 Unit!93863)))

(declare-fun d!1388557 () Bool)

(declare-fun e!2811410 () Bool)

(assert (=> d!1388557 e!2811410))

(declare-fun res!1877323 () Bool)

(assert (=> d!1388557 (=> res!1877323 e!2811410)))

(declare-fun e!2811414 () Bool)

(assert (=> d!1388557 (= res!1877323 e!2811414)))

(declare-fun res!1877321 () Bool)

(assert (=> d!1388557 (=> (not res!1877321) (not e!2811414))))

(declare-fun lt!1690844 () Bool)

(assert (=> d!1388557 (= res!1877321 (not lt!1690844))))

(declare-fun lt!1690847 () Bool)

(assert (=> d!1388557 (= lt!1690844 lt!1690847)))

(declare-fun lt!1690845 () Unit!93804)

(declare-fun e!2811409 () Unit!93804)

(assert (=> d!1388557 (= lt!1690845 e!2811409)))

(declare-fun c!769884 () Bool)

(assert (=> d!1388557 (= c!769884 lt!1690847)))

(assert (=> d!1388557 (= lt!1690847 (containsKey!1742 (toList!4300 lt!1690466) key!3287))))

(assert (=> d!1388557 (= (contains!13310 lt!1690466 key!3287) lt!1690844)))

(declare-fun b!4512831 () Bool)

(declare-fun e!2811411 () List!50731)

(assert (=> b!4512831 (= e!2811411 (keys!17566 lt!1690466))))

(declare-fun b!4512832 () Bool)

(declare-fun lt!1690846 () Unit!93804)

(assert (=> b!4512832 (= e!2811409 lt!1690846)))

(declare-fun lt!1690848 () Unit!93804)

(assert (=> b!4512832 (= lt!1690848 (lemmaContainsKeyImpliesGetValueByKeyDefined!969 (toList!4300 lt!1690466) key!3287))))

(assert (=> b!4512832 (isDefined!8372 (getValueByKey!1065 (toList!4300 lt!1690466) key!3287))))

(declare-fun lt!1690850 () Unit!93804)

(assert (=> b!4512832 (= lt!1690850 lt!1690848)))

(assert (=> b!4512832 (= lt!1690846 (lemmaInListThenGetKeysListContains!447 (toList!4300 lt!1690466) key!3287))))

(declare-fun call!314293 () Bool)

(assert (=> b!4512832 call!314293))

(declare-fun bm!314288 () Bool)

(assert (=> bm!314288 (= call!314293 (contains!13313 e!2811411 key!3287))))

(declare-fun c!769883 () Bool)

(assert (=> bm!314288 (= c!769883 c!769884)))

(declare-fun b!4512833 () Bool)

(assert (=> b!4512833 (= e!2811409 e!2811412)))

(declare-fun c!769885 () Bool)

(assert (=> b!4512833 (= c!769885 call!314293)))

(declare-fun b!4512834 () Bool)

(declare-fun e!2811413 () Bool)

(assert (=> b!4512834 (= e!2811413 (contains!13313 (keys!17566 lt!1690466) key!3287))))

(declare-fun b!4512835 () Bool)

(assert (=> b!4512835 (= e!2811411 (getKeysList!451 (toList!4300 lt!1690466)))))

(declare-fun b!4512836 () Bool)

(assert (=> b!4512836 (= e!2811410 e!2811413)))

(declare-fun res!1877322 () Bool)

(assert (=> b!4512836 (=> (not res!1877322) (not e!2811413))))

(assert (=> b!4512836 (= res!1877322 (isDefined!8372 (getValueByKey!1065 (toList!4300 lt!1690466) key!3287)))))

(declare-fun b!4512837 () Bool)

(assert (=> b!4512837 (= e!2811414 (not (contains!13313 (keys!17566 lt!1690466) key!3287)))))

(assert (= (and d!1388557 c!769884) b!4512832))

(assert (= (and d!1388557 (not c!769884)) b!4512833))

(assert (= (and b!4512833 c!769885) b!4512829))

(assert (= (and b!4512833 (not c!769885)) b!4512830))

(assert (= (or b!4512832 b!4512833) bm!314288))

(assert (= (and bm!314288 c!769883) b!4512835))

(assert (= (and bm!314288 (not c!769883)) b!4512831))

(assert (= (and d!1388557 res!1877321) b!4512837))

(assert (= (and d!1388557 (not res!1877323)) b!4512836))

(assert (= (and b!4512836 res!1877322) b!4512834))

(declare-fun m!5254243 () Bool)

(assert (=> b!4512832 m!5254243))

(declare-fun m!5254245 () Bool)

(assert (=> b!4512832 m!5254245))

(assert (=> b!4512832 m!5254245))

(declare-fun m!5254247 () Bool)

(assert (=> b!4512832 m!5254247))

(declare-fun m!5254249 () Bool)

(assert (=> b!4512832 m!5254249))

(declare-fun m!5254251 () Bool)

(assert (=> b!4512831 m!5254251))

(assert (=> b!4512837 m!5254251))

(assert (=> b!4512837 m!5254251))

(declare-fun m!5254253 () Bool)

(assert (=> b!4512837 m!5254253))

(declare-fun m!5254255 () Bool)

(assert (=> d!1388557 m!5254255))

(assert (=> b!4512829 m!5254255))

(declare-fun m!5254257 () Bool)

(assert (=> b!4512829 m!5254257))

(declare-fun m!5254259 () Bool)

(assert (=> bm!314288 m!5254259))

(assert (=> b!4512834 m!5254251))

(assert (=> b!4512834 m!5254251))

(assert (=> b!4512834 m!5254253))

(declare-fun m!5254261 () Bool)

(assert (=> b!4512835 m!5254261))

(assert (=> b!4512836 m!5254245))

(assert (=> b!4512836 m!5254245))

(assert (=> b!4512836 m!5254247))

(assert (=> b!4512512 d!1388557))

(declare-fun bs!848913 () Bool)

(declare-fun d!1388559 () Bool)

(assert (= bs!848913 (and d!1388559 d!1388535)))

(declare-fun lambda!170959 () Int)

(assert (=> bs!848913 (= lambda!170959 lambda!170954)))

(declare-fun bs!848914 () Bool)

(assert (= bs!848914 (and d!1388559 d!1388453)))

(assert (=> bs!848914 (not (= lambda!170959 lambda!170927))))

(declare-fun bs!848915 () Bool)

(assert (= bs!848915 (and d!1388559 d!1388517)))

(assert (=> bs!848915 (= lambda!170959 lambda!170947)))

(declare-fun bs!848916 () Bool)

(assert (= bs!848916 (and d!1388559 d!1388521)))

(assert (=> bs!848916 (= lambda!170959 lambda!170951)))

(declare-fun bs!848917 () Bool)

(assert (= bs!848917 (and d!1388559 d!1388439)))

(assert (=> bs!848917 (= lambda!170959 lambda!170924)))

(declare-fun bs!848918 () Bool)

(assert (= bs!848918 (and d!1388559 start!446200)))

(assert (=> bs!848918 (= lambda!170959 lambda!170841)))

(declare-fun bs!848919 () Bool)

(assert (= bs!848919 (and d!1388559 d!1388503)))

(assert (=> bs!848919 (= lambda!170959 lambda!170942)))

(declare-fun bs!848920 () Bool)

(assert (= bs!848920 (and d!1388559 d!1388399)))

(assert (=> bs!848920 (= lambda!170959 lambda!170844)))

(declare-fun lt!1690851 () ListMap!3561)

(assert (=> d!1388559 (invariantList!1003 (toList!4300 lt!1690851))))

(declare-fun e!2811415 () ListMap!3561)

(assert (=> d!1388559 (= lt!1690851 e!2811415)))

(declare-fun c!769886 () Bool)

(assert (=> d!1388559 (= c!769886 ((_ is Cons!50605) (toList!4299 lm!1477)))))

(assert (=> d!1388559 (forall!10229 (toList!4299 lm!1477) lambda!170959)))

(assert (=> d!1388559 (= (extractMap!1202 (toList!4299 lm!1477)) lt!1690851)))

(declare-fun b!4512838 () Bool)

(assert (=> b!4512838 (= e!2811415 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (toList!4299 lm!1477))) (extractMap!1202 (t!357691 (toList!4299 lm!1477)))))))

(declare-fun b!4512839 () Bool)

(assert (=> b!4512839 (= e!2811415 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388559 c!769886) b!4512838))

(assert (= (and d!1388559 (not c!769886)) b!4512839))

(declare-fun m!5254263 () Bool)

(assert (=> d!1388559 m!5254263))

(declare-fun m!5254265 () Bool)

(assert (=> d!1388559 m!5254265))

(assert (=> b!4512838 m!5253615))

(assert (=> b!4512838 m!5253615))

(declare-fun m!5254267 () Bool)

(assert (=> b!4512838 m!5254267))

(assert (=> b!4512512 d!1388559))

(declare-fun bs!848948 () Bool)

(declare-fun d!1388561 () Bool)

(assert (= bs!848948 (and d!1388561 d!1388559)))

(declare-fun lambda!170966 () Int)

(assert (=> bs!848948 (= lambda!170966 lambda!170959)))

(declare-fun bs!848949 () Bool)

(assert (= bs!848949 (and d!1388561 d!1388535)))

(assert (=> bs!848949 (= lambda!170966 lambda!170954)))

(declare-fun bs!848950 () Bool)

(assert (= bs!848950 (and d!1388561 d!1388453)))

(assert (=> bs!848950 (not (= lambda!170966 lambda!170927))))

(declare-fun bs!848951 () Bool)

(assert (= bs!848951 (and d!1388561 d!1388517)))

(assert (=> bs!848951 (= lambda!170966 lambda!170947)))

(declare-fun bs!848952 () Bool)

(assert (= bs!848952 (and d!1388561 d!1388521)))

(assert (=> bs!848952 (= lambda!170966 lambda!170951)))

(declare-fun bs!848953 () Bool)

(assert (= bs!848953 (and d!1388561 d!1388439)))

(assert (=> bs!848953 (= lambda!170966 lambda!170924)))

(declare-fun bs!848954 () Bool)

(assert (= bs!848954 (and d!1388561 start!446200)))

(assert (=> bs!848954 (= lambda!170966 lambda!170841)))

(declare-fun bs!848955 () Bool)

(assert (= bs!848955 (and d!1388561 d!1388503)))

(assert (=> bs!848955 (= lambda!170966 lambda!170942)))

(declare-fun bs!848956 () Bool)

(assert (= bs!848956 (and d!1388561 d!1388399)))

(assert (=> bs!848956 (= lambda!170966 lambda!170844)))

(assert (=> d!1388561 (not (contains!13310 (extractMap!1202 (toList!4299 lm!1477)) key!3287))))

(declare-fun lt!1690858 () Unit!93804)

(declare-fun choose!29357 (ListLongMap!2931 K!12005 Hashable!5541) Unit!93804)

(assert (=> d!1388561 (= lt!1690858 (choose!29357 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1388561 (forall!10229 (toList!4299 lm!1477) lambda!170966)))

(assert (=> d!1388561 (= (lemmaNotInItsHashBucketThenNotInMap!134 lm!1477 key!3287 hashF!1107) lt!1690858)))

(declare-fun bs!848957 () Bool)

(assert (= bs!848957 d!1388561))

(assert (=> bs!848957 m!5253583))

(assert (=> bs!848957 m!5253583))

(declare-fun m!5254289 () Bool)

(assert (=> bs!848957 m!5254289))

(declare-fun m!5254291 () Bool)

(assert (=> bs!848957 m!5254291))

(declare-fun m!5254293 () Bool)

(assert (=> bs!848957 m!5254293))

(assert (=> b!4512503 d!1388561))

(declare-fun d!1388571 () Bool)

(declare-fun e!2811425 () Bool)

(assert (=> d!1388571 e!2811425))

(declare-fun res!1877328 () Bool)

(assert (=> d!1388571 (=> (not res!1877328) (not e!2811425))))

(declare-fun lt!1690870 () ListLongMap!2931)

(assert (=> d!1388571 (= res!1877328 (contains!13311 lt!1690870 (_1!28804 lt!1690457)))))

(declare-fun lt!1690867 () List!50729)

(assert (=> d!1388571 (= lt!1690870 (ListLongMap!2932 lt!1690867))))

(declare-fun lt!1690869 () Unit!93804)

(declare-fun lt!1690868 () Unit!93804)

(assert (=> d!1388571 (= lt!1690869 lt!1690868)))

(assert (=> d!1388571 (= (getValueByKey!1064 lt!1690867 (_1!28804 lt!1690457)) (Some!11083 (_2!28804 lt!1690457)))))

(declare-fun lemmaContainsTupThenGetReturnValue!658 (List!50729 (_ BitVec 64) List!50728) Unit!93804)

(assert (=> d!1388571 (= lt!1690868 (lemmaContainsTupThenGetReturnValue!658 lt!1690867 (_1!28804 lt!1690457) (_2!28804 lt!1690457)))))

(declare-fun insertStrictlySorted!394 (List!50729 (_ BitVec 64) List!50728) List!50729)

(assert (=> d!1388571 (= lt!1690867 (insertStrictlySorted!394 (toList!4299 lm!1477) (_1!28804 lt!1690457) (_2!28804 lt!1690457)))))

(assert (=> d!1388571 (= (+!1510 lm!1477 lt!1690457) lt!1690870)))

(declare-fun b!4512856 () Bool)

(declare-fun res!1877329 () Bool)

(assert (=> b!4512856 (=> (not res!1877329) (not e!2811425))))

(assert (=> b!4512856 (= res!1877329 (= (getValueByKey!1064 (toList!4299 lt!1690870) (_1!28804 lt!1690457)) (Some!11083 (_2!28804 lt!1690457))))))

(declare-fun b!4512857 () Bool)

(assert (=> b!4512857 (= e!2811425 (contains!13309 (toList!4299 lt!1690870) lt!1690457))))

(assert (= (and d!1388571 res!1877328) b!4512856))

(assert (= (and b!4512856 res!1877329) b!4512857))

(declare-fun m!5254295 () Bool)

(assert (=> d!1388571 m!5254295))

(declare-fun m!5254297 () Bool)

(assert (=> d!1388571 m!5254297))

(declare-fun m!5254299 () Bool)

(assert (=> d!1388571 m!5254299))

(declare-fun m!5254301 () Bool)

(assert (=> d!1388571 m!5254301))

(declare-fun m!5254303 () Bool)

(assert (=> b!4512856 m!5254303))

(declare-fun m!5254305 () Bool)

(assert (=> b!4512857 m!5254305))

(assert (=> b!4512494 d!1388571))

(declare-fun d!1388573 () Bool)

(declare-fun e!2811426 () Bool)

(assert (=> d!1388573 e!2811426))

(declare-fun res!1877330 () Bool)

(assert (=> d!1388573 (=> (not res!1877330) (not e!2811426))))

(declare-fun lt!1690874 () ListLongMap!2931)

(assert (=> d!1388573 (= res!1877330 (contains!13311 lt!1690874 (_1!28804 lt!1690462)))))

(declare-fun lt!1690871 () List!50729)

(assert (=> d!1388573 (= lt!1690874 (ListLongMap!2932 lt!1690871))))

(declare-fun lt!1690873 () Unit!93804)

(declare-fun lt!1690872 () Unit!93804)

(assert (=> d!1388573 (= lt!1690873 lt!1690872)))

(assert (=> d!1388573 (= (getValueByKey!1064 lt!1690871 (_1!28804 lt!1690462)) (Some!11083 (_2!28804 lt!1690462)))))

(assert (=> d!1388573 (= lt!1690872 (lemmaContainsTupThenGetReturnValue!658 lt!1690871 (_1!28804 lt!1690462) (_2!28804 lt!1690462)))))

(assert (=> d!1388573 (= lt!1690871 (insertStrictlySorted!394 (toList!4299 lt!1690473) (_1!28804 lt!1690462) (_2!28804 lt!1690462)))))

(assert (=> d!1388573 (= (+!1510 lt!1690473 lt!1690462) lt!1690874)))

(declare-fun b!4512858 () Bool)

(declare-fun res!1877331 () Bool)

(assert (=> b!4512858 (=> (not res!1877331) (not e!2811426))))

(assert (=> b!4512858 (= res!1877331 (= (getValueByKey!1064 (toList!4299 lt!1690874) (_1!28804 lt!1690462)) (Some!11083 (_2!28804 lt!1690462))))))

(declare-fun b!4512859 () Bool)

(assert (=> b!4512859 (= e!2811426 (contains!13309 (toList!4299 lt!1690874) lt!1690462))))

(assert (= (and d!1388573 res!1877330) b!4512858))

(assert (= (and b!4512858 res!1877331) b!4512859))

(declare-fun m!5254307 () Bool)

(assert (=> d!1388573 m!5254307))

(declare-fun m!5254309 () Bool)

(assert (=> d!1388573 m!5254309))

(declare-fun m!5254311 () Bool)

(assert (=> d!1388573 m!5254311))

(declare-fun m!5254313 () Bool)

(assert (=> d!1388573 m!5254313))

(declare-fun m!5254315 () Bool)

(assert (=> b!4512858 m!5254315))

(declare-fun m!5254317 () Bool)

(assert (=> b!4512859 m!5254317))

(assert (=> b!4512494 d!1388573))

(declare-fun bs!848958 () Bool)

(declare-fun d!1388575 () Bool)

(assert (= bs!848958 (and d!1388575 d!1388559)))

(declare-fun lambda!170967 () Int)

(assert (=> bs!848958 (= lambda!170967 lambda!170959)))

(declare-fun bs!848959 () Bool)

(assert (= bs!848959 (and d!1388575 d!1388561)))

(assert (=> bs!848959 (= lambda!170967 lambda!170966)))

(declare-fun bs!848960 () Bool)

(assert (= bs!848960 (and d!1388575 d!1388535)))

(assert (=> bs!848960 (= lambda!170967 lambda!170954)))

(declare-fun bs!848961 () Bool)

(assert (= bs!848961 (and d!1388575 d!1388453)))

(assert (=> bs!848961 (not (= lambda!170967 lambda!170927))))

(declare-fun bs!848962 () Bool)

(assert (= bs!848962 (and d!1388575 d!1388517)))

(assert (=> bs!848962 (= lambda!170967 lambda!170947)))

(declare-fun bs!848963 () Bool)

(assert (= bs!848963 (and d!1388575 d!1388521)))

(assert (=> bs!848963 (= lambda!170967 lambda!170951)))

(declare-fun bs!848964 () Bool)

(assert (= bs!848964 (and d!1388575 d!1388439)))

(assert (=> bs!848964 (= lambda!170967 lambda!170924)))

(declare-fun bs!848965 () Bool)

(assert (= bs!848965 (and d!1388575 start!446200)))

(assert (=> bs!848965 (= lambda!170967 lambda!170841)))

(declare-fun bs!848966 () Bool)

(assert (= bs!848966 (and d!1388575 d!1388503)))

(assert (=> bs!848966 (= lambda!170967 lambda!170942)))

(declare-fun bs!848967 () Bool)

(assert (= bs!848967 (and d!1388575 d!1388399)))

(assert (=> bs!848967 (= lambda!170967 lambda!170844)))

(declare-fun lt!1690875 () ListMap!3561)

(assert (=> d!1388575 (invariantList!1003 (toList!4300 lt!1690875))))

(declare-fun e!2811427 () ListMap!3561)

(assert (=> d!1388575 (= lt!1690875 e!2811427)))

(declare-fun c!769888 () Bool)

(assert (=> d!1388575 (= c!769888 ((_ is Cons!50605) (toList!4299 (+!1510 lt!1690461 lt!1690462))))))

(assert (=> d!1388575 (forall!10229 (toList!4299 (+!1510 lt!1690461 lt!1690462)) lambda!170967)))

(assert (=> d!1388575 (= (extractMap!1202 (toList!4299 (+!1510 lt!1690461 lt!1690462))) lt!1690875)))

(declare-fun b!4512860 () Bool)

(assert (=> b!4512860 (= e!2811427 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (toList!4299 (+!1510 lt!1690461 lt!1690462)))) (extractMap!1202 (t!357691 (toList!4299 (+!1510 lt!1690461 lt!1690462))))))))

(declare-fun b!4512861 () Bool)

(assert (=> b!4512861 (= e!2811427 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388575 c!769888) b!4512860))

(assert (= (and d!1388575 (not c!769888)) b!4512861))

(declare-fun m!5254319 () Bool)

(assert (=> d!1388575 m!5254319))

(declare-fun m!5254321 () Bool)

(assert (=> d!1388575 m!5254321))

(declare-fun m!5254323 () Bool)

(assert (=> b!4512860 m!5254323))

(assert (=> b!4512860 m!5254323))

(declare-fun m!5254325 () Bool)

(assert (=> b!4512860 m!5254325))

(assert (=> b!4512493 d!1388575))

(declare-fun bs!848968 () Bool)

(declare-fun d!1388577 () Bool)

(assert (= bs!848968 (and d!1388577 d!1388559)))

(declare-fun lambda!170970 () Int)

(assert (=> bs!848968 (= lambda!170970 lambda!170959)))

(declare-fun bs!848969 () Bool)

(assert (= bs!848969 (and d!1388577 d!1388575)))

(assert (=> bs!848969 (= lambda!170970 lambda!170967)))

(declare-fun bs!848970 () Bool)

(assert (= bs!848970 (and d!1388577 d!1388561)))

(assert (=> bs!848970 (= lambda!170970 lambda!170966)))

(declare-fun bs!848971 () Bool)

(assert (= bs!848971 (and d!1388577 d!1388535)))

(assert (=> bs!848971 (= lambda!170970 lambda!170954)))

(declare-fun bs!848972 () Bool)

(assert (= bs!848972 (and d!1388577 d!1388453)))

(assert (=> bs!848972 (not (= lambda!170970 lambda!170927))))

(declare-fun bs!848973 () Bool)

(assert (= bs!848973 (and d!1388577 d!1388517)))

(assert (=> bs!848973 (= lambda!170970 lambda!170947)))

(declare-fun bs!848974 () Bool)

(assert (= bs!848974 (and d!1388577 d!1388521)))

(assert (=> bs!848974 (= lambda!170970 lambda!170951)))

(declare-fun bs!848975 () Bool)

(assert (= bs!848975 (and d!1388577 d!1388439)))

(assert (=> bs!848975 (= lambda!170970 lambda!170924)))

(declare-fun bs!848976 () Bool)

(assert (= bs!848976 (and d!1388577 start!446200)))

(assert (=> bs!848976 (= lambda!170970 lambda!170841)))

(declare-fun bs!848977 () Bool)

(assert (= bs!848977 (and d!1388577 d!1388503)))

(assert (=> bs!848977 (= lambda!170970 lambda!170942)))

(declare-fun bs!848978 () Bool)

(assert (= bs!848978 (and d!1388577 d!1388399)))

(assert (=> bs!848978 (= lambda!170970 lambda!170844)))

(assert (=> d!1388577 (eq!603 (extractMap!1202 (toList!4299 (+!1510 lt!1690461 (tuple2!51021 hash!344 newBucket!178)))) (-!372 (extractMap!1202 (toList!4299 lt!1690461)) key!3287))))

(declare-fun lt!1690878 () Unit!93804)

(declare-fun choose!29359 (ListLongMap!2931 (_ BitVec 64) List!50728 K!12005 Hashable!5541) Unit!93804)

(assert (=> d!1388577 (= lt!1690878 (choose!29359 lt!1690461 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1388577 (forall!10229 (toList!4299 lt!1690461) lambda!170970)))

(assert (=> d!1388577 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!131 lt!1690461 hash!344 newBucket!178 key!3287 hashF!1107) lt!1690878)))

(declare-fun bs!848979 () Bool)

(assert (= bs!848979 d!1388577))

(declare-fun m!5254327 () Bool)

(assert (=> bs!848979 m!5254327))

(declare-fun m!5254329 () Bool)

(assert (=> bs!848979 m!5254329))

(declare-fun m!5254331 () Bool)

(assert (=> bs!848979 m!5254331))

(declare-fun m!5254333 () Bool)

(assert (=> bs!848979 m!5254333))

(declare-fun m!5254335 () Bool)

(assert (=> bs!848979 m!5254335))

(declare-fun m!5254337 () Bool)

(assert (=> bs!848979 m!5254337))

(assert (=> bs!848979 m!5253617))

(assert (=> bs!848979 m!5253617))

(assert (=> bs!848979 m!5254333))

(assert (=> bs!848979 m!5254331))

(assert (=> b!4512493 d!1388577))

(declare-fun d!1388579 () Bool)

(declare-fun e!2811428 () Bool)

(assert (=> d!1388579 e!2811428))

(declare-fun res!1877332 () Bool)

(assert (=> d!1388579 (=> (not res!1877332) (not e!2811428))))

(declare-fun lt!1690882 () ListLongMap!2931)

(assert (=> d!1388579 (= res!1877332 (contains!13311 lt!1690882 (_1!28804 lt!1690457)))))

(declare-fun lt!1690879 () List!50729)

(assert (=> d!1388579 (= lt!1690882 (ListLongMap!2932 lt!1690879))))

(declare-fun lt!1690881 () Unit!93804)

(declare-fun lt!1690880 () Unit!93804)

(assert (=> d!1388579 (= lt!1690881 lt!1690880)))

(assert (=> d!1388579 (= (getValueByKey!1064 lt!1690879 (_1!28804 lt!1690457)) (Some!11083 (_2!28804 lt!1690457)))))

(assert (=> d!1388579 (= lt!1690880 (lemmaContainsTupThenGetReturnValue!658 lt!1690879 (_1!28804 lt!1690457) (_2!28804 lt!1690457)))))

(assert (=> d!1388579 (= lt!1690879 (insertStrictlySorted!394 (toList!4299 lt!1690461) (_1!28804 lt!1690457) (_2!28804 lt!1690457)))))

(assert (=> d!1388579 (= (+!1510 lt!1690461 lt!1690457) lt!1690882)))

(declare-fun b!4512862 () Bool)

(declare-fun res!1877333 () Bool)

(assert (=> b!4512862 (=> (not res!1877333) (not e!2811428))))

(assert (=> b!4512862 (= res!1877333 (= (getValueByKey!1064 (toList!4299 lt!1690882) (_1!28804 lt!1690457)) (Some!11083 (_2!28804 lt!1690457))))))

(declare-fun b!4512863 () Bool)

(assert (=> b!4512863 (= e!2811428 (contains!13309 (toList!4299 lt!1690882) lt!1690457))))

(assert (= (and d!1388579 res!1877332) b!4512862))

(assert (= (and b!4512862 res!1877333) b!4512863))

(declare-fun m!5254339 () Bool)

(assert (=> d!1388579 m!5254339))

(declare-fun m!5254341 () Bool)

(assert (=> d!1388579 m!5254341))

(declare-fun m!5254343 () Bool)

(assert (=> d!1388579 m!5254343))

(declare-fun m!5254345 () Bool)

(assert (=> d!1388579 m!5254345))

(declare-fun m!5254347 () Bool)

(assert (=> b!4512862 m!5254347))

(declare-fun m!5254349 () Bool)

(assert (=> b!4512863 m!5254349))

(assert (=> b!4512493 d!1388579))

(declare-fun bs!848980 () Bool)

(declare-fun d!1388581 () Bool)

(assert (= bs!848980 (and d!1388581 d!1388559)))

(declare-fun lambda!170971 () Int)

(assert (=> bs!848980 (= lambda!170971 lambda!170959)))

(declare-fun bs!848981 () Bool)

(assert (= bs!848981 (and d!1388581 d!1388575)))

(assert (=> bs!848981 (= lambda!170971 lambda!170967)))

(declare-fun bs!848982 () Bool)

(assert (= bs!848982 (and d!1388581 d!1388535)))

(assert (=> bs!848982 (= lambda!170971 lambda!170954)))

(declare-fun bs!848983 () Bool)

(assert (= bs!848983 (and d!1388581 d!1388453)))

(assert (=> bs!848983 (not (= lambda!170971 lambda!170927))))

(declare-fun bs!848984 () Bool)

(assert (= bs!848984 (and d!1388581 d!1388517)))

(assert (=> bs!848984 (= lambda!170971 lambda!170947)))

(declare-fun bs!848985 () Bool)

(assert (= bs!848985 (and d!1388581 d!1388521)))

(assert (=> bs!848985 (= lambda!170971 lambda!170951)))

(declare-fun bs!848986 () Bool)

(assert (= bs!848986 (and d!1388581 d!1388439)))

(assert (=> bs!848986 (= lambda!170971 lambda!170924)))

(declare-fun bs!848987 () Bool)

(assert (= bs!848987 (and d!1388581 start!446200)))

(assert (=> bs!848987 (= lambda!170971 lambda!170841)))

(declare-fun bs!848988 () Bool)

(assert (= bs!848988 (and d!1388581 d!1388561)))

(assert (=> bs!848988 (= lambda!170971 lambda!170966)))

(declare-fun bs!848989 () Bool)

(assert (= bs!848989 (and d!1388581 d!1388577)))

(assert (=> bs!848989 (= lambda!170971 lambda!170970)))

(declare-fun bs!848990 () Bool)

(assert (= bs!848990 (and d!1388581 d!1388503)))

(assert (=> bs!848990 (= lambda!170971 lambda!170942)))

(declare-fun bs!848991 () Bool)

(assert (= bs!848991 (and d!1388581 d!1388399)))

(assert (=> bs!848991 (= lambda!170971 lambda!170844)))

(declare-fun lt!1690883 () ListMap!3561)

(assert (=> d!1388581 (invariantList!1003 (toList!4300 lt!1690883))))

(declare-fun e!2811429 () ListMap!3561)

(assert (=> d!1388581 (= lt!1690883 e!2811429)))

(declare-fun c!769889 () Bool)

(assert (=> d!1388581 (= c!769889 ((_ is Cons!50605) (toList!4299 lt!1690473)))))

(assert (=> d!1388581 (forall!10229 (toList!4299 lt!1690473) lambda!170971)))

(assert (=> d!1388581 (= (extractMap!1202 (toList!4299 lt!1690473)) lt!1690883)))

(declare-fun b!4512864 () Bool)

(assert (=> b!4512864 (= e!2811429 (addToMapMapFromBucket!673 (_2!28804 (h!56444 (toList!4299 lt!1690473))) (extractMap!1202 (t!357691 (toList!4299 lt!1690473)))))))

(declare-fun b!4512865 () Bool)

(assert (=> b!4512865 (= e!2811429 (ListMap!3562 Nil!50604))))

(assert (= (and d!1388581 c!769889) b!4512864))

(assert (= (and d!1388581 (not c!769889)) b!4512865))

(declare-fun m!5254351 () Bool)

(assert (=> d!1388581 m!5254351))

(declare-fun m!5254353 () Bool)

(assert (=> d!1388581 m!5254353))

(declare-fun m!5254355 () Bool)

(assert (=> b!4512864 m!5254355))

(assert (=> b!4512864 m!5254355))

(declare-fun m!5254357 () Bool)

(assert (=> b!4512864 m!5254357))

(assert (=> b!4512493 d!1388581))

(declare-fun d!1388583 () Bool)

(assert (=> d!1388583 (= (eq!603 lt!1690478 lt!1690466) (= (content!8314 (toList!4300 lt!1690478)) (content!8314 (toList!4300 lt!1690466))))))

(declare-fun bs!848992 () Bool)

(assert (= bs!848992 d!1388583))

(assert (=> bs!848992 m!5253849))

(assert (=> bs!848992 m!5253847))

(assert (=> b!4512493 d!1388583))

(declare-fun d!1388585 () Bool)

(declare-fun e!2811430 () Bool)

(assert (=> d!1388585 e!2811430))

(declare-fun res!1877334 () Bool)

(assert (=> d!1388585 (=> (not res!1877334) (not e!2811430))))

(declare-fun lt!1690887 () ListLongMap!2931)

(assert (=> d!1388585 (= res!1877334 (contains!13311 lt!1690887 (_1!28804 lt!1690462)))))

(declare-fun lt!1690884 () List!50729)

(assert (=> d!1388585 (= lt!1690887 (ListLongMap!2932 lt!1690884))))

(declare-fun lt!1690886 () Unit!93804)

(declare-fun lt!1690885 () Unit!93804)

(assert (=> d!1388585 (= lt!1690886 lt!1690885)))

(assert (=> d!1388585 (= (getValueByKey!1064 lt!1690884 (_1!28804 lt!1690462)) (Some!11083 (_2!28804 lt!1690462)))))

(assert (=> d!1388585 (= lt!1690885 (lemmaContainsTupThenGetReturnValue!658 lt!1690884 (_1!28804 lt!1690462) (_2!28804 lt!1690462)))))

(assert (=> d!1388585 (= lt!1690884 (insertStrictlySorted!394 (toList!4299 lt!1690461) (_1!28804 lt!1690462) (_2!28804 lt!1690462)))))

(assert (=> d!1388585 (= (+!1510 lt!1690461 lt!1690462) lt!1690887)))

(declare-fun b!4512866 () Bool)

(declare-fun res!1877335 () Bool)

(assert (=> b!4512866 (=> (not res!1877335) (not e!2811430))))

(assert (=> b!4512866 (= res!1877335 (= (getValueByKey!1064 (toList!4299 lt!1690887) (_1!28804 lt!1690462)) (Some!11083 (_2!28804 lt!1690462))))))

(declare-fun b!4512867 () Bool)

(assert (=> b!4512867 (= e!2811430 (contains!13309 (toList!4299 lt!1690887) lt!1690462))))

(assert (= (and d!1388585 res!1877334) b!4512866))

(assert (= (and b!4512866 res!1877335) b!4512867))

(declare-fun m!5254359 () Bool)

(assert (=> d!1388585 m!5254359))

(declare-fun m!5254361 () Bool)

(assert (=> d!1388585 m!5254361))

(declare-fun m!5254363 () Bool)

(assert (=> d!1388585 m!5254363))

(declare-fun m!5254365 () Bool)

(assert (=> d!1388585 m!5254365))

(declare-fun m!5254367 () Bool)

(assert (=> b!4512866 m!5254367))

(declare-fun m!5254369 () Bool)

(assert (=> b!4512867 m!5254369))

(assert (=> b!4512493 d!1388585))

(declare-fun d!1388587 () Bool)

(assert (=> d!1388587 (= (head!9384 lm!1477) (head!9385 (toList!4299 lm!1477)))))

(declare-fun bs!848993 () Bool)

(assert (= bs!848993 d!1388587))

(declare-fun m!5254371 () Bool)

(assert (=> bs!848993 m!5254371))

(assert (=> b!4512493 d!1388587))

(declare-fun d!1388589 () Bool)

(declare-fun e!2811433 () Bool)

(assert (=> d!1388589 e!2811433))

(declare-fun res!1877338 () Bool)

(assert (=> d!1388589 (=> (not res!1877338) (not e!2811433))))

(declare-fun lt!1690890 () ListMap!3561)

(assert (=> d!1388589 (= res!1877338 (not (contains!13310 lt!1690890 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!127 (List!50728 K!12005) List!50728)

(assert (=> d!1388589 (= lt!1690890 (ListMap!3562 (removePresrvNoDuplicatedKeys!127 (toList!4300 lt!1690472) key!3287)))))

(assert (=> d!1388589 (= (-!372 lt!1690472 key!3287) lt!1690890)))

(declare-fun b!4512870 () Bool)

(declare-fun content!8317 (List!50731) (InoxSet K!12005))

(assert (=> b!4512870 (= e!2811433 (= ((_ map and) (content!8317 (keys!17566 lt!1690472)) ((_ map not) (store ((as const (Array K!12005 Bool)) false) key!3287 true))) (content!8317 (keys!17566 lt!1690890))))))

(assert (= (and d!1388589 res!1877338) b!4512870))

(declare-fun m!5254373 () Bool)

(assert (=> d!1388589 m!5254373))

(declare-fun m!5254375 () Bool)

(assert (=> d!1388589 m!5254375))

(declare-fun m!5254377 () Bool)

(assert (=> b!4512870 m!5254377))

(assert (=> b!4512870 m!5254069))

(declare-fun m!5254379 () Bool)

(assert (=> b!4512870 m!5254379))

(assert (=> b!4512870 m!5254069))

(assert (=> b!4512870 m!5254377))

(declare-fun m!5254381 () Bool)

(assert (=> b!4512870 m!5254381))

(declare-fun m!5254383 () Bool)

(assert (=> b!4512870 m!5254383))

(assert (=> b!4512493 d!1388589))

(declare-fun d!1388591 () Bool)

(assert (=> d!1388591 (= (eq!603 lt!1690464 lt!1690458) (= (content!8314 (toList!4300 lt!1690464)) (content!8314 (toList!4300 lt!1690458))))))

(declare-fun bs!848994 () Bool)

(assert (= bs!848994 d!1388591))

(declare-fun m!5254385 () Bool)

(assert (=> bs!848994 m!5254385))

(declare-fun m!5254387 () Bool)

(assert (=> bs!848994 m!5254387))

(assert (=> b!4512493 d!1388591))

(declare-fun d!1388593 () Bool)

(declare-fun hash!2763 (Hashable!5541 K!12005) (_ BitVec 64))

(assert (=> d!1388593 (= (hash!2759 hashF!1107 key!3287) (hash!2763 hashF!1107 key!3287))))

(declare-fun bs!848995 () Bool)

(assert (= bs!848995 d!1388593))

(declare-fun m!5254389 () Bool)

(assert (=> bs!848995 m!5254389))

(assert (=> b!4512504 d!1388593))

(declare-fun b!4512875 () Bool)

(declare-fun e!2811436 () Bool)

(declare-fun tp!1337861 () Bool)

(declare-fun tp!1337862 () Bool)

(assert (=> b!4512875 (= e!2811436 (and tp!1337861 tp!1337862))))

(assert (=> b!4512501 (= tp!1337847 e!2811436)))

(assert (= (and b!4512501 ((_ is Cons!50605) (toList!4299 lm!1477))) b!4512875))

(declare-fun b!4512880 () Bool)

(declare-fun tp!1337865 () Bool)

(declare-fun e!2811439 () Bool)

(assert (=> b!4512880 (= e!2811439 (and tp_is_empty!27861 tp_is_empty!27863 tp!1337865))))

(assert (=> b!4512510 (= tp!1337846 e!2811439)))

(assert (= (and b!4512510 ((_ is Cons!50604) (t!357690 newBucket!178))) b!4512880))

(declare-fun b_lambda!154031 () Bool)

(assert (= b_lambda!154019 (or start!446200 b_lambda!154031)))

(declare-fun bs!848996 () Bool)

(declare-fun d!1388595 () Bool)

(assert (= bs!848996 (and d!1388595 start!446200)))

(assert (=> bs!848996 (= (dynLambda!21143 lambda!170841 (h!56444 (toList!4299 lm!1477))) (noDuplicateKeys!1146 (_2!28804 (h!56444 (toList!4299 lm!1477)))))))

(declare-fun m!5254391 () Bool)

(assert (=> bs!848996 m!5254391))

(assert (=> b!4512715 d!1388595))

(declare-fun b_lambda!154033 () Bool)

(assert (= b_lambda!154023 (or start!446200 b_lambda!154033)))

(declare-fun bs!848997 () Bool)

(declare-fun d!1388597 () Bool)

(assert (= bs!848997 (and d!1388597 start!446200)))

(assert (=> bs!848997 (= (dynLambda!21143 lambda!170841 lt!1690463) (noDuplicateKeys!1146 (_2!28804 lt!1690463)))))

(declare-fun m!5254393 () Bool)

(assert (=> bs!848997 m!5254393))

(assert (=> d!1388553 d!1388597))

(declare-fun b_lambda!154035 () Bool)

(assert (= b_lambda!154017 (or start!446200 b_lambda!154035)))

(declare-fun bs!848998 () Bool)

(declare-fun d!1388599 () Bool)

(assert (= bs!848998 (and d!1388599 start!446200)))

(assert (=> bs!848998 (= (dynLambda!21143 lambda!170841 (h!56444 (toList!4299 lt!1690476))) (noDuplicateKeys!1146 (_2!28804 (h!56444 (toList!4299 lt!1690476)))))))

(declare-fun m!5254395 () Bool)

(assert (=> bs!848998 m!5254395))

(assert (=> b!4512691 d!1388599))

(check-sat (not d!1388493) (not b!4512700) (not d!1388489) (not b!4512627) tp_is_empty!27863 (not bm!314275) (not d!1388521) (not d!1388577) (not d!1388593) (not b_lambda!154035) (not b!4512692) (not b!4512864) (not b!4512760) (not d!1388403) (not b!4512832) (not b!4512866) (not b!4512831) (not d!1388559) (not d!1388555) (not d!1388591) (not b!4512678) (not b!4512859) (not b!4512757) (not bm!314288) (not d!1388561) (not b!4512701) (not b_lambda!154031) (not d!1388571) (not b!4512829) (not bs!848996) (not b!4512519) (not b!4512759) (not b!4512714) (not b!4512821) (not d!1388453) (not bm!314273) (not bm!314281) (not d!1388497) (not d!1388575) (not bm!314279) (not d!1388399) (not b!4512762) (not b!4512626) (not b!4512765) (not b!4512825) (not b!4512529) (not d!1388547) (not b!4512862) (not d!1388587) (not b!4512624) (not b!4512808) (not b!4512860) (not b!4512834) (not b!4512857) (not d!1388535) (not b!4512702) (not d!1388583) (not b!4512733) (not d!1388589) (not b!4512775) (not d!1388451) (not d!1388517) (not d!1388463) (not d!1388503) (not b!4512716) (not b!4512770) (not b!4512880) (not b!4512875) (not b!4512835) (not d!1388557) (not bs!848998) (not b!4512530) (not b!4512522) (not b!4512521) tp_is_empty!27861 (not d!1388573) (not b!4512836) (not d!1388585) (not d!1388479) (not b!4512655) (not b!4512524) (not b!4512764) (not b!4512676) (not b!4512776) (not bm!314274) (not b!4512732) (not b!4512771) (not b!4512698) (not b!4512768) (not d!1388537) (not b!4512870) (not b!4512837) (not bm!314284) (not d!1388519) (not b!4512858) (not d!1388545) (not d!1388543) (not d!1388579) (not b!4512766) (not b!4512838) (not b!4512806) (not d!1388501) (not d!1388405) (not b_lambda!154033) (not b!4512863) (not d!1388505) (not b!4512856) (not b!4512763) (not d!1388459) (not d!1388581) (not d!1388439) (not d!1388475) (not b!4512828) (not b!4512628) (not b!4512867) (not b!4512826) (not b!4512773) (not d!1388553) (not d!1388393) (not bs!848997) (not b!4512774) (not bm!314285) (not bm!314280) (not d!1388473))
(check-sat)
