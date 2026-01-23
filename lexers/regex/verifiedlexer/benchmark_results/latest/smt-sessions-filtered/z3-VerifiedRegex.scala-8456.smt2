; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!438344 () Bool)

(assert start!438344)

(declare-fun b!4465598 () Bool)

(declare-fun e!2780722 () Bool)

(declare-fun e!2780720 () Bool)

(assert (=> b!4465598 (= e!2780722 (not e!2780720))))

(declare-fun res!1852445 () Bool)

(assert (=> b!4465598 (=> res!1852445 e!2780720)))

(declare-datatypes ((K!11685 0))(
  ( (K!11686 (val!17619 Int)) )
))
(declare-fun key!3287 () K!11685)

(declare-datatypes ((V!11931 0))(
  ( (V!11932 (val!17620 Int)) )
))
(declare-datatypes ((tuple2!50506 0))(
  ( (tuple2!50507 (_1!28547 K!11685) (_2!28547 V!11931)) )
))
(declare-datatypes ((List!50390 0))(
  ( (Nil!50266) (Cons!50266 (h!56023 tuple2!50506) (t!357340 List!50390)) )
))
(declare-fun newBucket!178 () List!50390)

(declare-fun lt!1655459 () List!50390)

(declare-fun removePairForKey!645 (List!50390 K!11685) List!50390)

(assert (=> b!4465598 (= res!1852445 (not (= newBucket!178 (removePairForKey!645 lt!1655459 key!3287))))))

(declare-datatypes ((tuple2!50508 0))(
  ( (tuple2!50509 (_1!28548 (_ BitVec 64)) (_2!28548 List!50390)) )
))
(declare-datatypes ((List!50391 0))(
  ( (Nil!50267) (Cons!50267 (h!56024 tuple2!50508) (t!357341 List!50391)) )
))
(declare-datatypes ((ListLongMap!2675 0))(
  ( (ListLongMap!2676 (toList!4043 List!50391)) )
))
(declare-fun lm!1477 () ListLongMap!2675)

(declare-fun lambda!162601 () Int)

(declare-fun lt!1655457 () tuple2!50508)

(declare-datatypes ((Unit!87263 0))(
  ( (Unit!87264) )
))
(declare-fun lt!1655456 () Unit!87263)

(declare-fun forallContained!2243 (List!50391 Int tuple2!50508) Unit!87263)

(assert (=> b!4465598 (= lt!1655456 (forallContained!2243 (toList!4043 lm!1477) lambda!162601 lt!1655457))))

(declare-fun contains!12805 (List!50391 tuple2!50508) Bool)

(assert (=> b!4465598 (contains!12805 (toList!4043 lm!1477) lt!1655457)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4465598 (= lt!1655457 (tuple2!50509 hash!344 lt!1655459))))

(declare-fun lt!1655463 () Unit!87263)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!530 (List!50391 (_ BitVec 64) List!50390) Unit!87263)

(assert (=> b!4465598 (= lt!1655463 (lemmaGetValueByKeyImpliesContainsTuple!530 (toList!4043 lm!1477) hash!344 lt!1655459))))

(declare-fun apply!11755 (ListLongMap!2675 (_ BitVec 64)) List!50390)

(assert (=> b!4465598 (= lt!1655459 (apply!11755 lm!1477 hash!344))))

(declare-fun lt!1655464 () (_ BitVec 64))

(declare-fun contains!12806 (ListLongMap!2675 (_ BitVec 64)) Bool)

(assert (=> b!4465598 (contains!12806 lm!1477 lt!1655464)))

(declare-datatypes ((Hashable!5413 0))(
  ( (HashableExt!5412 (__x!31116 Int)) )
))
(declare-fun hashF!1107 () Hashable!5413)

(declare-fun lt!1655460 () Unit!87263)

(declare-fun lemmaInGenMapThenLongMapContainsHash!92 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> b!4465598 (= lt!1655460 (lemmaInGenMapThenLongMapContainsHash!92 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4465599 () Bool)

(declare-fun e!2780724 () Bool)

(assert (=> b!4465599 (= e!2780720 e!2780724)))

(declare-fun res!1852437 () Bool)

(assert (=> b!4465599 (=> res!1852437 e!2780724)))

(declare-fun lt!1655468 () Bool)

(assert (=> b!4465599 (= res!1852437 lt!1655468)))

(declare-fun lt!1655458 () Unit!87263)

(declare-fun e!2780721 () Unit!87263)

(assert (=> b!4465599 (= lt!1655458 e!2780721)))

(declare-fun c!760004 () Bool)

(assert (=> b!4465599 (= c!760004 lt!1655468)))

(declare-fun containsKey!1450 (List!50390 K!11685) Bool)

(assert (=> b!4465599 (= lt!1655468 (not (containsKey!1450 (_2!28548 (h!56024 (toList!4043 lm!1477))) key!3287)))))

(declare-fun b!4465600 () Bool)

(declare-fun res!1852447 () Bool)

(assert (=> b!4465600 (=> res!1852447 e!2780720)))

(get-info :version)

(assert (=> b!4465600 (= res!1852447 (or ((_ is Nil!50267) (toList!4043 lm!1477)) (not (= (_1!28548 (h!56024 (toList!4043 lm!1477))) hash!344))))))

(declare-fun b!4465601 () Bool)

(declare-fun e!2780719 () Bool)

(declare-fun e!2780723 () Bool)

(assert (=> b!4465601 (= e!2780719 e!2780723)))

(declare-fun res!1852439 () Bool)

(assert (=> b!4465601 (=> res!1852439 e!2780723)))

(declare-fun lt!1655455 () ListLongMap!2675)

(declare-fun tail!7488 (List!50391) List!50391)

(assert (=> b!4465601 (= res!1852439 (not (= (t!357341 (toList!4043 lm!1477)) (tail!7488 (toList!4043 lt!1655455)))))))

(declare-fun lt!1655466 () tuple2!50508)

(declare-fun +!1356 (ListLongMap!2675 tuple2!50508) ListLongMap!2675)

(assert (=> b!4465601 (= lt!1655455 (+!1356 lm!1477 lt!1655466))))

(declare-datatypes ((ListMap!3305 0))(
  ( (ListMap!3306 (toList!4044 List!50390)) )
))
(declare-fun eq!511 (ListMap!3305 ListMap!3305) Bool)

(declare-fun extractMap!1074 (List!50391) ListMap!3305)

(declare-fun -!280 (ListMap!3305 K!11685) ListMap!3305)

(assert (=> b!4465601 (eq!511 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)) (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))))

(assert (=> b!4465601 (= lt!1655466 (tuple2!50509 hash!344 newBucket!178))))

(declare-fun lt!1655467 () Unit!87263)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!10 ((_ BitVec 64) List!50390 List!50390 K!11685 Hashable!5413) Unit!87263)

(assert (=> b!4465601 (= lt!1655467 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!10 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1655462 () List!50391)

(declare-fun contains!12807 (ListMap!3305 K!11685) Bool)

(assert (=> b!4465601 (contains!12807 (extractMap!1074 lt!1655462) key!3287)))

(declare-fun lt!1655461 () Unit!87263)

(declare-fun lemmaListContainsThenExtractedMapContains!14 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> b!4465601 (= lt!1655461 (lemmaListContainsThenExtractedMapContains!14 (ListLongMap!2676 lt!1655462) key!3287 hashF!1107))))

(declare-fun b!4465603 () Bool)

(declare-fun Unit!87265 () Unit!87263)

(assert (=> b!4465603 (= e!2780721 Unit!87265)))

(declare-fun lt!1655465 () Unit!87263)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!18 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> b!4465603 (= lt!1655465 (lemmaNotInItsHashBucketThenNotInMap!18 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4465603 false))

(declare-fun b!4465604 () Bool)

(declare-fun e!2780717 () Bool)

(assert (=> b!4465604 (= e!2780717 e!2780722)))

(declare-fun res!1852446 () Bool)

(assert (=> b!4465604 (=> (not res!1852446) (not e!2780722))))

(assert (=> b!4465604 (= res!1852446 (= lt!1655464 hash!344))))

(declare-fun hash!2423 (Hashable!5413 K!11685) (_ BitVec 64))

(assert (=> b!4465604 (= lt!1655464 (hash!2423 hashF!1107 key!3287))))

(declare-fun b!4465605 () Bool)

(declare-fun res!1852440 () Bool)

(assert (=> b!4465605 (=> res!1852440 e!2780720)))

(declare-fun noDuplicateKeys!1018 (List!50390) Bool)

(assert (=> b!4465605 (= res!1852440 (not (noDuplicateKeys!1018 newBucket!178)))))

(declare-fun b!4465606 () Bool)

(declare-fun e!2780725 () Bool)

(declare-fun tp!1336118 () Bool)

(assert (=> b!4465606 (= e!2780725 tp!1336118)))

(declare-fun b!4465607 () Bool)

(assert (=> b!4465607 (= e!2780724 e!2780719)))

(declare-fun res!1852441 () Bool)

(assert (=> b!4465607 (=> res!1852441 e!2780719)))

(declare-fun containsKeyBiggerList!18 (List!50391 K!11685) Bool)

(assert (=> b!4465607 (= res!1852441 (not (containsKeyBiggerList!18 lt!1655462 key!3287)))))

(assert (=> b!4465607 (= lt!1655462 (Cons!50267 (h!56024 (toList!4043 lm!1477)) Nil!50267))))

(declare-fun b!4465608 () Bool)

(declare-fun Unit!87266 () Unit!87263)

(assert (=> b!4465608 (= e!2780721 Unit!87266)))

(declare-fun b!4465609 () Bool)

(declare-fun res!1852443 () Bool)

(assert (=> b!4465609 (=> (not res!1852443) (not e!2780717))))

(declare-fun allKeysSameHashInMap!1125 (ListLongMap!2675 Hashable!5413) Bool)

(assert (=> b!4465609 (= res!1852443 (allKeysSameHashInMap!1125 lm!1477 hashF!1107))))

(declare-fun b!4465610 () Bool)

(declare-fun isEmpty!28471 (ListLongMap!2675) Bool)

(assert (=> b!4465610 (= e!2780723 (not (isEmpty!28471 lm!1477)))))

(declare-fun tp_is_empty!27351 () Bool)

(declare-fun e!2780718 () Bool)

(declare-fun tp_is_empty!27349 () Bool)

(declare-fun tp!1336119 () Bool)

(declare-fun b!4465611 () Bool)

(assert (=> b!4465611 (= e!2780718 (and tp_is_empty!27349 tp_is_empty!27351 tp!1336119))))

(declare-fun b!4465602 () Bool)

(declare-fun res!1852436 () Bool)

(assert (=> b!4465602 (=> (not res!1852436) (not e!2780717))))

(assert (=> b!4465602 (= res!1852436 (contains!12807 (extractMap!1074 (toList!4043 lm!1477)) key!3287))))

(declare-fun res!1852438 () Bool)

(assert (=> start!438344 (=> (not res!1852438) (not e!2780717))))

(declare-fun forall!9972 (List!50391 Int) Bool)

(assert (=> start!438344 (= res!1852438 (forall!9972 (toList!4043 lm!1477) lambda!162601))))

(assert (=> start!438344 e!2780717))

(assert (=> start!438344 true))

(declare-fun inv!65869 (ListLongMap!2675) Bool)

(assert (=> start!438344 (and (inv!65869 lm!1477) e!2780725)))

(assert (=> start!438344 tp_is_empty!27349))

(assert (=> start!438344 e!2780718))

(declare-fun b!4465612 () Bool)

(declare-fun res!1852442 () Bool)

(assert (=> b!4465612 (=> res!1852442 e!2780723)))

(declare-fun tail!7489 (ListLongMap!2675) ListLongMap!2675)

(assert (=> b!4465612 (= res!1852442 (not (= lt!1655455 (+!1356 (tail!7489 lm!1477) lt!1655466))))))

(declare-fun b!4465613 () Bool)

(declare-fun res!1852444 () Bool)

(assert (=> b!4465613 (=> (not res!1852444) (not e!2780722))))

(declare-fun allKeysSameHash!872 (List!50390 (_ BitVec 64) Hashable!5413) Bool)

(assert (=> b!4465613 (= res!1852444 (allKeysSameHash!872 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!438344 res!1852438) b!4465609))

(assert (= (and b!4465609 res!1852443) b!4465602))

(assert (= (and b!4465602 res!1852436) b!4465604))

(assert (= (and b!4465604 res!1852446) b!4465613))

(assert (= (and b!4465613 res!1852444) b!4465598))

(assert (= (and b!4465598 (not res!1852445)) b!4465605))

(assert (= (and b!4465605 (not res!1852440)) b!4465600))

(assert (= (and b!4465600 (not res!1852447)) b!4465599))

(assert (= (and b!4465599 c!760004) b!4465603))

(assert (= (and b!4465599 (not c!760004)) b!4465608))

(assert (= (and b!4465599 (not res!1852437)) b!4465607))

(assert (= (and b!4465607 (not res!1852441)) b!4465601))

(assert (= (and b!4465601 (not res!1852439)) b!4465612))

(assert (= (and b!4465612 (not res!1852442)) b!4465610))

(assert (= start!438344 b!4465606))

(assert (= (and start!438344 ((_ is Cons!50266) newBucket!178)) b!4465611))

(declare-fun m!5170117 () Bool)

(assert (=> start!438344 m!5170117))

(declare-fun m!5170119 () Bool)

(assert (=> start!438344 m!5170119))

(declare-fun m!5170121 () Bool)

(assert (=> b!4465610 m!5170121))

(declare-fun m!5170123 () Bool)

(assert (=> b!4465602 m!5170123))

(assert (=> b!4465602 m!5170123))

(declare-fun m!5170125 () Bool)

(assert (=> b!4465602 m!5170125))

(declare-fun m!5170127 () Bool)

(assert (=> b!4465604 m!5170127))

(declare-fun m!5170129 () Bool)

(assert (=> b!4465601 m!5170129))

(declare-fun m!5170131 () Bool)

(assert (=> b!4465601 m!5170131))

(declare-fun m!5170133 () Bool)

(assert (=> b!4465601 m!5170133))

(declare-fun m!5170135 () Bool)

(assert (=> b!4465601 m!5170135))

(assert (=> b!4465601 m!5170129))

(declare-fun m!5170137 () Bool)

(assert (=> b!4465601 m!5170137))

(declare-fun m!5170139 () Bool)

(assert (=> b!4465601 m!5170139))

(declare-fun m!5170141 () Bool)

(assert (=> b!4465601 m!5170141))

(declare-fun m!5170143 () Bool)

(assert (=> b!4465601 m!5170143))

(declare-fun m!5170145 () Bool)

(assert (=> b!4465601 m!5170145))

(assert (=> b!4465601 m!5170139))

(declare-fun m!5170147 () Bool)

(assert (=> b!4465601 m!5170147))

(assert (=> b!4465601 m!5170143))

(assert (=> b!4465601 m!5170131))

(declare-fun m!5170149 () Bool)

(assert (=> b!4465598 m!5170149))

(declare-fun m!5170151 () Bool)

(assert (=> b!4465598 m!5170151))

(declare-fun m!5170153 () Bool)

(assert (=> b!4465598 m!5170153))

(declare-fun m!5170155 () Bool)

(assert (=> b!4465598 m!5170155))

(declare-fun m!5170157 () Bool)

(assert (=> b!4465598 m!5170157))

(declare-fun m!5170159 () Bool)

(assert (=> b!4465598 m!5170159))

(declare-fun m!5170161 () Bool)

(assert (=> b!4465598 m!5170161))

(declare-fun m!5170163 () Bool)

(assert (=> b!4465613 m!5170163))

(declare-fun m!5170165 () Bool)

(assert (=> b!4465609 m!5170165))

(declare-fun m!5170167 () Bool)

(assert (=> b!4465599 m!5170167))

(declare-fun m!5170169 () Bool)

(assert (=> b!4465605 m!5170169))

(declare-fun m!5170171 () Bool)

(assert (=> b!4465607 m!5170171))

(declare-fun m!5170173 () Bool)

(assert (=> b!4465612 m!5170173))

(assert (=> b!4465612 m!5170173))

(declare-fun m!5170175 () Bool)

(assert (=> b!4465612 m!5170175))

(declare-fun m!5170177 () Bool)

(assert (=> b!4465603 m!5170177))

(check-sat (not b!4465613) (not b!4465612) (not b!4465601) (not b!4465598) (not b!4465609) (not b!4465611) (not b!4465604) (not b!4465605) (not b!4465607) (not b!4465603) (not b!4465606) (not b!4465599) (not b!4465602) (not b!4465610) tp_is_empty!27351 (not start!438344) tp_is_empty!27349)
(check-sat)
(get-model)

(declare-fun d!1361731 () Bool)

(declare-fun res!1852455 () Bool)

(declare-fun e!2780732 () Bool)

(assert (=> d!1361731 (=> res!1852455 e!2780732)))

(declare-fun e!2780733 () Bool)

(assert (=> d!1361731 (= res!1852455 e!2780733)))

(declare-fun res!1852454 () Bool)

(assert (=> d!1361731 (=> (not res!1852454) (not e!2780733))))

(assert (=> d!1361731 (= res!1852454 ((_ is Cons!50267) lt!1655462))))

(assert (=> d!1361731 (= (containsKeyBiggerList!18 lt!1655462 key!3287) e!2780732)))

(declare-fun b!4465620 () Bool)

(assert (=> b!4465620 (= e!2780733 (containsKey!1450 (_2!28548 (h!56024 lt!1655462)) key!3287))))

(declare-fun b!4465621 () Bool)

(declare-fun e!2780734 () Bool)

(assert (=> b!4465621 (= e!2780732 e!2780734)))

(declare-fun res!1852456 () Bool)

(assert (=> b!4465621 (=> (not res!1852456) (not e!2780734))))

(assert (=> b!4465621 (= res!1852456 ((_ is Cons!50267) lt!1655462))))

(declare-fun b!4465622 () Bool)

(assert (=> b!4465622 (= e!2780734 (containsKeyBiggerList!18 (t!357341 lt!1655462) key!3287))))

(assert (= (and d!1361731 res!1852454) b!4465620))

(assert (= (and d!1361731 (not res!1852455)) b!4465621))

(assert (= (and b!4465621 res!1852456) b!4465622))

(declare-fun m!5170179 () Bool)

(assert (=> b!4465620 m!5170179))

(declare-fun m!5170181 () Bool)

(assert (=> b!4465622 m!5170181))

(assert (=> b!4465607 d!1361731))

(declare-fun d!1361735 () Bool)

(declare-fun res!1852476 () Bool)

(declare-fun e!2780754 () Bool)

(assert (=> d!1361735 (=> res!1852476 e!2780754)))

(assert (=> d!1361735 (= res!1852476 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1361735 (= (forall!9972 (toList!4043 lm!1477) lambda!162601) e!2780754)))

(declare-fun b!4465642 () Bool)

(declare-fun e!2780755 () Bool)

(assert (=> b!4465642 (= e!2780754 e!2780755)))

(declare-fun res!1852477 () Bool)

(assert (=> b!4465642 (=> (not res!1852477) (not e!2780755))))

(declare-fun dynLambda!21002 (Int tuple2!50508) Bool)

(assert (=> b!4465642 (= res!1852477 (dynLambda!21002 lambda!162601 (h!56024 (toList!4043 lm!1477))))))

(declare-fun b!4465643 () Bool)

(assert (=> b!4465643 (= e!2780755 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162601))))

(assert (= (and d!1361735 (not res!1852476)) b!4465642))

(assert (= (and b!4465642 res!1852477) b!4465643))

(declare-fun b_lambda!148053 () Bool)

(assert (=> (not b_lambda!148053) (not b!4465642)))

(declare-fun m!5170189 () Bool)

(assert (=> b!4465642 m!5170189))

(declare-fun m!5170191 () Bool)

(assert (=> b!4465643 m!5170191))

(assert (=> start!438344 d!1361735))

(declare-fun d!1361741 () Bool)

(declare-fun isStrictlySorted!335 (List!50391) Bool)

(assert (=> d!1361741 (= (inv!65869 lm!1477) (isStrictlySorted!335 (toList!4043 lm!1477)))))

(declare-fun bs!792976 () Bool)

(assert (= bs!792976 d!1361741))

(declare-fun m!5170193 () Bool)

(assert (=> bs!792976 m!5170193))

(assert (=> start!438344 d!1361741))

(declare-fun d!1361743 () Bool)

(declare-fun res!1852482 () Bool)

(declare-fun e!2780760 () Bool)

(assert (=> d!1361743 (=> res!1852482 e!2780760)))

(assert (=> d!1361743 (= res!1852482 (not ((_ is Cons!50266) newBucket!178)))))

(assert (=> d!1361743 (= (noDuplicateKeys!1018 newBucket!178) e!2780760)))

(declare-fun b!4465648 () Bool)

(declare-fun e!2780761 () Bool)

(assert (=> b!4465648 (= e!2780760 e!2780761)))

(declare-fun res!1852483 () Bool)

(assert (=> b!4465648 (=> (not res!1852483) (not e!2780761))))

(assert (=> b!4465648 (= res!1852483 (not (containsKey!1450 (t!357340 newBucket!178) (_1!28547 (h!56023 newBucket!178)))))))

(declare-fun b!4465649 () Bool)

(assert (=> b!4465649 (= e!2780761 (noDuplicateKeys!1018 (t!357340 newBucket!178)))))

(assert (= (and d!1361743 (not res!1852482)) b!4465648))

(assert (= (and b!4465648 res!1852483) b!4465649))

(declare-fun m!5170195 () Bool)

(assert (=> b!4465648 m!5170195))

(declare-fun m!5170197 () Bool)

(assert (=> b!4465649 m!5170197))

(assert (=> b!4465605 d!1361743))

(declare-fun d!1361745 () Bool)

(declare-fun hash!2427 (Hashable!5413 K!11685) (_ BitVec 64))

(assert (=> d!1361745 (= (hash!2423 hashF!1107 key!3287) (hash!2427 hashF!1107 key!3287))))

(declare-fun bs!792978 () Bool)

(assert (= bs!792978 d!1361745))

(declare-fun m!5170199 () Bool)

(assert (=> bs!792978 m!5170199))

(assert (=> b!4465604 d!1361745))

(declare-fun bs!792982 () Bool)

(declare-fun d!1361747 () Bool)

(assert (= bs!792982 (and d!1361747 start!438344)))

(declare-fun lambda!162608 () Int)

(assert (=> bs!792982 (= lambda!162608 lambda!162601)))

(assert (=> d!1361747 (not (contains!12807 (extractMap!1074 (toList!4043 lm!1477)) key!3287))))

(declare-fun lt!1655490 () Unit!87263)

(declare-fun choose!28502 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> d!1361747 (= lt!1655490 (choose!28502 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361747 (forall!9972 (toList!4043 lm!1477) lambda!162608)))

(assert (=> d!1361747 (= (lemmaNotInItsHashBucketThenNotInMap!18 lm!1477 key!3287 hashF!1107) lt!1655490)))

(declare-fun bs!792983 () Bool)

(assert (= bs!792983 d!1361747))

(assert (=> bs!792983 m!5170123))

(assert (=> bs!792983 m!5170123))

(assert (=> bs!792983 m!5170125))

(declare-fun m!5170247 () Bool)

(assert (=> bs!792983 m!5170247))

(declare-fun m!5170249 () Bool)

(assert (=> bs!792983 m!5170249))

(assert (=> b!4465603 d!1361747))

(declare-fun bm!310863 () Bool)

(declare-fun call!310868 () Bool)

(declare-datatypes ((List!50393 0))(
  ( (Nil!50269) (Cons!50269 (h!56028 K!11685) (t!357343 List!50393)) )
))
(declare-fun e!2780811 () List!50393)

(declare-fun contains!12809 (List!50393 K!11685) Bool)

(assert (=> bm!310863 (= call!310868 (contains!12809 e!2780811 key!3287))))

(declare-fun c!760026 () Bool)

(declare-fun c!760025 () Bool)

(assert (=> bm!310863 (= c!760026 c!760025)))

(declare-fun b!4465723 () Bool)

(declare-fun e!2780814 () Bool)

(declare-fun keys!17350 (ListMap!3305) List!50393)

(assert (=> b!4465723 (= e!2780814 (contains!12809 (keys!17350 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(declare-fun b!4465724 () Bool)

(declare-fun e!2780809 () Bool)

(assert (=> b!4465724 (= e!2780809 (not (contains!12809 (keys!17350 (extractMap!1074 (toList!4043 lm!1477))) key!3287)))))

(declare-fun b!4465725 () Bool)

(declare-fun getKeysList!369 (List!50390) List!50393)

(assert (=> b!4465725 (= e!2780811 (getKeysList!369 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))

(declare-fun b!4465726 () Bool)

(assert (=> b!4465726 false))

(declare-fun lt!1655543 () Unit!87263)

(declare-fun lt!1655546 () Unit!87263)

(assert (=> b!4465726 (= lt!1655543 lt!1655546)))

(declare-fun containsKey!1453 (List!50390 K!11685) Bool)

(assert (=> b!4465726 (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!368 (List!50390 K!11685) Unit!87263)

(assert (=> b!4465726 (= lt!1655546 (lemmaInGetKeysListThenContainsKey!368 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(declare-fun e!2780812 () Unit!87263)

(declare-fun Unit!87272 () Unit!87263)

(assert (=> b!4465726 (= e!2780812 Unit!87272)))

(declare-fun b!4465727 () Bool)

(declare-fun Unit!87273 () Unit!87263)

(assert (=> b!4465727 (= e!2780812 Unit!87273)))

(declare-fun b!4465728 () Bool)

(declare-fun e!2780813 () Unit!87263)

(assert (=> b!4465728 (= e!2780813 e!2780812)))

(declare-fun c!760027 () Bool)

(assert (=> b!4465728 (= c!760027 call!310868)))

(declare-fun b!4465729 () Bool)

(declare-fun lt!1655548 () Unit!87263)

(assert (=> b!4465729 (= e!2780813 lt!1655548)))

(declare-fun lt!1655542 () Unit!87263)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!804 (List!50390 K!11685) Unit!87263)

(assert (=> b!4465729 (= lt!1655542 (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(declare-datatypes ((Option!10914 0))(
  ( (None!10913) (Some!10913 (v!44207 V!11931)) )
))
(declare-fun isDefined!8201 (Option!10914) Bool)

(declare-fun getValueByKey!900 (List!50390 K!11685) Option!10914)

(assert (=> b!4465729 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(declare-fun lt!1655545 () Unit!87263)

(assert (=> b!4465729 (= lt!1655545 lt!1655542)))

(declare-fun lemmaInListThenGetKeysListContains!365 (List!50390 K!11685) Unit!87263)

(assert (=> b!4465729 (= lt!1655548 (lemmaInListThenGetKeysListContains!365 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(assert (=> b!4465729 call!310868))

(declare-fun b!4465730 () Bool)

(declare-fun e!2780810 () Bool)

(assert (=> b!4465730 (= e!2780810 e!2780814)))

(declare-fun res!1852514 () Bool)

(assert (=> b!4465730 (=> (not res!1852514) (not e!2780814))))

(assert (=> b!4465730 (= res!1852514 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287)))))

(declare-fun b!4465722 () Bool)

(assert (=> b!4465722 (= e!2780811 (keys!17350 (extractMap!1074 (toList!4043 lm!1477))))))

(declare-fun d!1361761 () Bool)

(assert (=> d!1361761 e!2780810))

(declare-fun res!1852515 () Bool)

(assert (=> d!1361761 (=> res!1852515 e!2780810)))

(assert (=> d!1361761 (= res!1852515 e!2780809)))

(declare-fun res!1852516 () Bool)

(assert (=> d!1361761 (=> (not res!1852516) (not e!2780809))))

(declare-fun lt!1655541 () Bool)

(assert (=> d!1361761 (= res!1852516 (not lt!1655541))))

(declare-fun lt!1655547 () Bool)

(assert (=> d!1361761 (= lt!1655541 lt!1655547)))

(declare-fun lt!1655544 () Unit!87263)

(assert (=> d!1361761 (= lt!1655544 e!2780813)))

(assert (=> d!1361761 (= c!760025 lt!1655547)))

(assert (=> d!1361761 (= lt!1655547 (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(assert (=> d!1361761 (= (contains!12807 (extractMap!1074 (toList!4043 lm!1477)) key!3287) lt!1655541)))

(assert (= (and d!1361761 c!760025) b!4465729))

(assert (= (and d!1361761 (not c!760025)) b!4465728))

(assert (= (and b!4465728 c!760027) b!4465726))

(assert (= (and b!4465728 (not c!760027)) b!4465727))

(assert (= (or b!4465729 b!4465728) bm!310863))

(assert (= (and bm!310863 c!760026) b!4465725))

(assert (= (and bm!310863 (not c!760026)) b!4465722))

(assert (= (and d!1361761 res!1852516) b!4465724))

(assert (= (and d!1361761 (not res!1852515)) b!4465730))

(assert (= (and b!4465730 res!1852514) b!4465723))

(declare-fun m!5170317 () Bool)

(assert (=> b!4465725 m!5170317))

(declare-fun m!5170321 () Bool)

(assert (=> d!1361761 m!5170321))

(declare-fun m!5170323 () Bool)

(assert (=> b!4465730 m!5170323))

(assert (=> b!4465730 m!5170323))

(declare-fun m!5170325 () Bool)

(assert (=> b!4465730 m!5170325))

(declare-fun m!5170327 () Bool)

(assert (=> bm!310863 m!5170327))

(assert (=> b!4465726 m!5170321))

(declare-fun m!5170329 () Bool)

(assert (=> b!4465726 m!5170329))

(assert (=> b!4465722 m!5170123))

(declare-fun m!5170331 () Bool)

(assert (=> b!4465722 m!5170331))

(assert (=> b!4465723 m!5170123))

(assert (=> b!4465723 m!5170331))

(assert (=> b!4465723 m!5170331))

(declare-fun m!5170333 () Bool)

(assert (=> b!4465723 m!5170333))

(assert (=> b!4465724 m!5170123))

(assert (=> b!4465724 m!5170331))

(assert (=> b!4465724 m!5170331))

(assert (=> b!4465724 m!5170333))

(declare-fun m!5170335 () Bool)

(assert (=> b!4465729 m!5170335))

(assert (=> b!4465729 m!5170323))

(assert (=> b!4465729 m!5170323))

(assert (=> b!4465729 m!5170325))

(declare-fun m!5170337 () Bool)

(assert (=> b!4465729 m!5170337))

(assert (=> b!4465602 d!1361761))

(declare-fun bs!793009 () Bool)

(declare-fun d!1361783 () Bool)

(assert (= bs!793009 (and d!1361783 start!438344)))

(declare-fun lambda!162626 () Int)

(assert (=> bs!793009 (= lambda!162626 lambda!162601)))

(declare-fun bs!793010 () Bool)

(assert (= bs!793010 (and d!1361783 d!1361747)))

(assert (=> bs!793010 (= lambda!162626 lambda!162608)))

(declare-fun lt!1655575 () ListMap!3305)

(declare-fun invariantList!921 (List!50390) Bool)

(assert (=> d!1361783 (invariantList!921 (toList!4044 lt!1655575))))

(declare-fun e!2780841 () ListMap!3305)

(assert (=> d!1361783 (= lt!1655575 e!2780841)))

(declare-fun c!760039 () Bool)

(assert (=> d!1361783 (= c!760039 ((_ is Cons!50267) (toList!4043 lm!1477)))))

(assert (=> d!1361783 (forall!9972 (toList!4043 lm!1477) lambda!162626)))

(assert (=> d!1361783 (= (extractMap!1074 (toList!4043 lm!1477)) lt!1655575)))

(declare-fun b!4465772 () Bool)

(declare-fun addToMapMapFromBucket!583 (List!50390 ListMap!3305) ListMap!3305)

(assert (=> b!4465772 (= e!2780841 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (toList!4043 lm!1477))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))))))

(declare-fun b!4465773 () Bool)

(assert (=> b!4465773 (= e!2780841 (ListMap!3306 Nil!50266))))

(assert (= (and d!1361783 c!760039) b!4465772))

(assert (= (and d!1361783 (not c!760039)) b!4465773))

(declare-fun m!5170365 () Bool)

(assert (=> d!1361783 m!5170365))

(declare-fun m!5170367 () Bool)

(assert (=> d!1361783 m!5170367))

(declare-fun m!5170369 () Bool)

(assert (=> b!4465772 m!5170369))

(assert (=> b!4465772 m!5170369))

(declare-fun m!5170371 () Bool)

(assert (=> b!4465772 m!5170371))

(assert (=> b!4465602 d!1361783))

(declare-fun d!1361795 () Bool)

(assert (=> d!1361795 true))

(assert (=> d!1361795 true))

(declare-fun lambda!162631 () Int)

(declare-fun forall!9974 (List!50390 Int) Bool)

(assert (=> d!1361795 (= (allKeysSameHash!872 newBucket!178 hash!344 hashF!1107) (forall!9974 newBucket!178 lambda!162631))))

(declare-fun bs!793028 () Bool)

(assert (= bs!793028 d!1361795))

(declare-fun m!5170407 () Bool)

(assert (=> bs!793028 m!5170407))

(assert (=> b!4465613 d!1361795))

(declare-fun d!1361805 () Bool)

(declare-fun e!2780864 () Bool)

(assert (=> d!1361805 e!2780864))

(declare-fun res!1852548 () Bool)

(assert (=> d!1361805 (=> (not res!1852548) (not e!2780864))))

(declare-fun lt!1655600 () ListLongMap!2675)

(assert (=> d!1361805 (= res!1852548 (contains!12806 lt!1655600 (_1!28548 lt!1655466)))))

(declare-fun lt!1655601 () List!50391)

(assert (=> d!1361805 (= lt!1655600 (ListLongMap!2676 lt!1655601))))

(declare-fun lt!1655602 () Unit!87263)

(declare-fun lt!1655603 () Unit!87263)

(assert (=> d!1361805 (= lt!1655602 lt!1655603)))

(declare-datatypes ((Option!10915 0))(
  ( (None!10914) (Some!10914 (v!44208 List!50390)) )
))
(declare-fun getValueByKey!901 (List!50391 (_ BitVec 64)) Option!10915)

(assert (=> d!1361805 (= (getValueByKey!901 lt!1655601 (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466)))))

(declare-fun lemmaContainsTupThenGetReturnValue!578 (List!50391 (_ BitVec 64) List!50390) Unit!87263)

(assert (=> d!1361805 (= lt!1655603 (lemmaContainsTupThenGetReturnValue!578 lt!1655601 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(declare-fun insertStrictlySorted!324 (List!50391 (_ BitVec 64) List!50390) List!50391)

(assert (=> d!1361805 (= lt!1655601 (insertStrictlySorted!324 (toList!4043 (tail!7489 lm!1477)) (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(assert (=> d!1361805 (= (+!1356 (tail!7489 lm!1477) lt!1655466) lt!1655600)))

(declare-fun b!4465811 () Bool)

(declare-fun res!1852547 () Bool)

(assert (=> b!4465811 (=> (not res!1852547) (not e!2780864))))

(assert (=> b!4465811 (= res!1852547 (= (getValueByKey!901 (toList!4043 lt!1655600) (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466))))))

(declare-fun b!4465812 () Bool)

(assert (=> b!4465812 (= e!2780864 (contains!12805 (toList!4043 lt!1655600) lt!1655466))))

(assert (= (and d!1361805 res!1852548) b!4465811))

(assert (= (and b!4465811 res!1852547) b!4465812))

(declare-fun m!5170429 () Bool)

(assert (=> d!1361805 m!5170429))

(declare-fun m!5170431 () Bool)

(assert (=> d!1361805 m!5170431))

(declare-fun m!5170433 () Bool)

(assert (=> d!1361805 m!5170433))

(declare-fun m!5170435 () Bool)

(assert (=> d!1361805 m!5170435))

(declare-fun m!5170437 () Bool)

(assert (=> b!4465811 m!5170437))

(declare-fun m!5170439 () Bool)

(assert (=> b!4465812 m!5170439))

(assert (=> b!4465612 d!1361805))

(declare-fun d!1361817 () Bool)

(assert (=> d!1361817 (= (tail!7489 lm!1477) (ListLongMap!2676 (tail!7488 (toList!4043 lm!1477))))))

(declare-fun bs!793033 () Bool)

(assert (= bs!793033 d!1361817))

(declare-fun m!5170441 () Bool)

(assert (=> bs!793033 m!5170441))

(assert (=> b!4465612 d!1361817))

(declare-fun d!1361819 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8084 (List!50390) (InoxSet tuple2!50506))

(assert (=> d!1361819 (= (eq!511 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)) (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287)) (= (content!8084 (toList!4044 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)))) (content!8084 (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287)))))))

(declare-fun bs!793034 () Bool)

(assert (= bs!793034 d!1361819))

(declare-fun m!5170443 () Bool)

(assert (=> bs!793034 m!5170443))

(declare-fun m!5170445 () Bool)

(assert (=> bs!793034 m!5170445))

(assert (=> b!4465601 d!1361819))

(declare-fun bs!793035 () Bool)

(declare-fun d!1361821 () Bool)

(assert (= bs!793035 (and d!1361821 start!438344)))

(declare-fun lambda!162632 () Int)

(assert (=> bs!793035 (= lambda!162632 lambda!162601)))

(declare-fun bs!793036 () Bool)

(assert (= bs!793036 (and d!1361821 d!1361747)))

(assert (=> bs!793036 (= lambda!162632 lambda!162608)))

(declare-fun bs!793037 () Bool)

(assert (= bs!793037 (and d!1361821 d!1361783)))

(assert (=> bs!793037 (= lambda!162632 lambda!162626)))

(declare-fun lt!1655604 () ListMap!3305)

(assert (=> d!1361821 (invariantList!921 (toList!4044 lt!1655604))))

(declare-fun e!2780865 () ListMap!3305)

(assert (=> d!1361821 (= lt!1655604 e!2780865)))

(declare-fun c!760044 () Bool)

(assert (=> d!1361821 (= c!760044 ((_ is Cons!50267) (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))

(assert (=> d!1361821 (forall!9972 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267) lambda!162632)))

(assert (=> d!1361821 (= (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) lt!1655604)))

(declare-fun b!4465813 () Bool)

(assert (=> b!4465813 (= e!2780865 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun b!4465814 () Bool)

(assert (=> b!4465814 (= e!2780865 (ListMap!3306 Nil!50266))))

(assert (= (and d!1361821 c!760044) b!4465813))

(assert (= (and d!1361821 (not c!760044)) b!4465814))

(declare-fun m!5170447 () Bool)

(assert (=> d!1361821 m!5170447))

(declare-fun m!5170449 () Bool)

(assert (=> d!1361821 m!5170449))

(declare-fun m!5170451 () Bool)

(assert (=> b!4465813 m!5170451))

(assert (=> b!4465813 m!5170451))

(declare-fun m!5170453 () Bool)

(assert (=> b!4465813 m!5170453))

(assert (=> b!4465601 d!1361821))

(declare-fun d!1361823 () Bool)

(declare-fun e!2780868 () Bool)

(assert (=> d!1361823 e!2780868))

(declare-fun res!1852551 () Bool)

(assert (=> d!1361823 (=> (not res!1852551) (not e!2780868))))

(declare-fun lt!1655607 () ListMap!3305)

(assert (=> d!1361823 (= res!1852551 (not (contains!12807 lt!1655607 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!57 (List!50390 K!11685) List!50390)

(assert (=> d!1361823 (= lt!1655607 (ListMap!3306 (removePresrvNoDuplicatedKeys!57 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287)))))

(assert (=> d!1361823 (= (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287) lt!1655607)))

(declare-fun b!4465817 () Bool)

(declare-fun content!8085 (List!50393) (InoxSet K!11685))

(assert (=> b!4465817 (= e!2780868 (= ((_ map and) (content!8085 (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) ((_ map not) (store ((as const (Array K!11685 Bool)) false) key!3287 true))) (content!8085 (keys!17350 lt!1655607))))))

(assert (= (and d!1361823 res!1852551) b!4465817))

(declare-fun m!5170455 () Bool)

(assert (=> d!1361823 m!5170455))

(declare-fun m!5170457 () Bool)

(assert (=> d!1361823 m!5170457))

(declare-fun m!5170459 () Bool)

(assert (=> b!4465817 m!5170459))

(declare-fun m!5170461 () Bool)

(assert (=> b!4465817 m!5170461))

(assert (=> b!4465817 m!5170143))

(declare-fun m!5170463 () Bool)

(assert (=> b!4465817 m!5170463))

(assert (=> b!4465817 m!5170463))

(declare-fun m!5170465 () Bool)

(assert (=> b!4465817 m!5170465))

(assert (=> b!4465817 m!5170461))

(declare-fun m!5170467 () Bool)

(assert (=> b!4465817 m!5170467))

(assert (=> b!4465601 d!1361823))

(declare-fun d!1361825 () Bool)

(declare-fun e!2780869 () Bool)

(assert (=> d!1361825 e!2780869))

(declare-fun res!1852553 () Bool)

(assert (=> d!1361825 (=> (not res!1852553) (not e!2780869))))

(declare-fun lt!1655608 () ListLongMap!2675)

(assert (=> d!1361825 (= res!1852553 (contains!12806 lt!1655608 (_1!28548 lt!1655466)))))

(declare-fun lt!1655609 () List!50391)

(assert (=> d!1361825 (= lt!1655608 (ListLongMap!2676 lt!1655609))))

(declare-fun lt!1655610 () Unit!87263)

(declare-fun lt!1655611 () Unit!87263)

(assert (=> d!1361825 (= lt!1655610 lt!1655611)))

(assert (=> d!1361825 (= (getValueByKey!901 lt!1655609 (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466)))))

(assert (=> d!1361825 (= lt!1655611 (lemmaContainsTupThenGetReturnValue!578 lt!1655609 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(assert (=> d!1361825 (= lt!1655609 (insertStrictlySorted!324 (toList!4043 lm!1477) (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(assert (=> d!1361825 (= (+!1356 lm!1477 lt!1655466) lt!1655608)))

(declare-fun b!4465818 () Bool)

(declare-fun res!1852552 () Bool)

(assert (=> b!4465818 (=> (not res!1852552) (not e!2780869))))

(assert (=> b!4465818 (= res!1852552 (= (getValueByKey!901 (toList!4043 lt!1655608) (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466))))))

(declare-fun b!4465819 () Bool)

(assert (=> b!4465819 (= e!2780869 (contains!12805 (toList!4043 lt!1655608) lt!1655466))))

(assert (= (and d!1361825 res!1852553) b!4465818))

(assert (= (and b!4465818 res!1852552) b!4465819))

(declare-fun m!5170469 () Bool)

(assert (=> d!1361825 m!5170469))

(declare-fun m!5170471 () Bool)

(assert (=> d!1361825 m!5170471))

(declare-fun m!5170473 () Bool)

(assert (=> d!1361825 m!5170473))

(declare-fun m!5170475 () Bool)

(assert (=> d!1361825 m!5170475))

(declare-fun m!5170477 () Bool)

(assert (=> b!4465818 m!5170477))

(declare-fun m!5170479 () Bool)

(assert (=> b!4465819 m!5170479))

(assert (=> b!4465601 d!1361825))

(declare-fun bm!310865 () Bool)

(declare-fun call!310870 () Bool)

(declare-fun e!2780872 () List!50393)

(assert (=> bm!310865 (= call!310870 (contains!12809 e!2780872 key!3287))))

(declare-fun c!760046 () Bool)

(declare-fun c!760045 () Bool)

(assert (=> bm!310865 (= c!760046 c!760045)))

(declare-fun b!4465821 () Bool)

(declare-fun e!2780875 () Bool)

(assert (=> b!4465821 (= e!2780875 (contains!12809 (keys!17350 (extractMap!1074 lt!1655462)) key!3287))))

(declare-fun b!4465822 () Bool)

(declare-fun e!2780870 () Bool)

(assert (=> b!4465822 (= e!2780870 (not (contains!12809 (keys!17350 (extractMap!1074 lt!1655462)) key!3287)))))

(declare-fun b!4465823 () Bool)

(assert (=> b!4465823 (= e!2780872 (getKeysList!369 (toList!4044 (extractMap!1074 lt!1655462))))))

(declare-fun b!4465824 () Bool)

(assert (=> b!4465824 false))

(declare-fun lt!1655614 () Unit!87263)

(declare-fun lt!1655617 () Unit!87263)

(assert (=> b!4465824 (= lt!1655614 lt!1655617)))

(assert (=> b!4465824 (containsKey!1453 (toList!4044 (extractMap!1074 lt!1655462)) key!3287)))

(assert (=> b!4465824 (= lt!1655617 (lemmaInGetKeysListThenContainsKey!368 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(declare-fun e!2780873 () Unit!87263)

(declare-fun Unit!87274 () Unit!87263)

(assert (=> b!4465824 (= e!2780873 Unit!87274)))

(declare-fun b!4465825 () Bool)

(declare-fun Unit!87275 () Unit!87263)

(assert (=> b!4465825 (= e!2780873 Unit!87275)))

(declare-fun b!4465826 () Bool)

(declare-fun e!2780874 () Unit!87263)

(assert (=> b!4465826 (= e!2780874 e!2780873)))

(declare-fun c!760047 () Bool)

(assert (=> b!4465826 (= c!760047 call!310870)))

(declare-fun b!4465827 () Bool)

(declare-fun lt!1655619 () Unit!87263)

(assert (=> b!4465827 (= e!2780874 lt!1655619)))

(declare-fun lt!1655613 () Unit!87263)

(assert (=> b!4465827 (= lt!1655613 (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> b!4465827 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(declare-fun lt!1655616 () Unit!87263)

(assert (=> b!4465827 (= lt!1655616 lt!1655613)))

(assert (=> b!4465827 (= lt!1655619 (lemmaInListThenGetKeysListContains!365 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> b!4465827 call!310870))

(declare-fun b!4465828 () Bool)

(declare-fun e!2780871 () Bool)

(assert (=> b!4465828 (= e!2780871 e!2780875)))

(declare-fun res!1852554 () Bool)

(assert (=> b!4465828 (=> (not res!1852554) (not e!2780875))))

(assert (=> b!4465828 (= res!1852554 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287)))))

(declare-fun b!4465820 () Bool)

(assert (=> b!4465820 (= e!2780872 (keys!17350 (extractMap!1074 lt!1655462)))))

(declare-fun d!1361827 () Bool)

(assert (=> d!1361827 e!2780871))

(declare-fun res!1852555 () Bool)

(assert (=> d!1361827 (=> res!1852555 e!2780871)))

(assert (=> d!1361827 (= res!1852555 e!2780870)))

(declare-fun res!1852556 () Bool)

(assert (=> d!1361827 (=> (not res!1852556) (not e!2780870))))

(declare-fun lt!1655612 () Bool)

(assert (=> d!1361827 (= res!1852556 (not lt!1655612))))

(declare-fun lt!1655618 () Bool)

(assert (=> d!1361827 (= lt!1655612 lt!1655618)))

(declare-fun lt!1655615 () Unit!87263)

(assert (=> d!1361827 (= lt!1655615 e!2780874)))

(assert (=> d!1361827 (= c!760045 lt!1655618)))

(assert (=> d!1361827 (= lt!1655618 (containsKey!1453 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> d!1361827 (= (contains!12807 (extractMap!1074 lt!1655462) key!3287) lt!1655612)))

(assert (= (and d!1361827 c!760045) b!4465827))

(assert (= (and d!1361827 (not c!760045)) b!4465826))

(assert (= (and b!4465826 c!760047) b!4465824))

(assert (= (and b!4465826 (not c!760047)) b!4465825))

(assert (= (or b!4465827 b!4465826) bm!310865))

(assert (= (and bm!310865 c!760046) b!4465823))

(assert (= (and bm!310865 (not c!760046)) b!4465820))

(assert (= (and d!1361827 res!1852556) b!4465822))

(assert (= (and d!1361827 (not res!1852555)) b!4465828))

(assert (= (and b!4465828 res!1852554) b!4465821))

(declare-fun m!5170481 () Bool)

(assert (=> b!4465823 m!5170481))

(declare-fun m!5170483 () Bool)

(assert (=> d!1361827 m!5170483))

(declare-fun m!5170485 () Bool)

(assert (=> b!4465828 m!5170485))

(assert (=> b!4465828 m!5170485))

(declare-fun m!5170487 () Bool)

(assert (=> b!4465828 m!5170487))

(declare-fun m!5170489 () Bool)

(assert (=> bm!310865 m!5170489))

(assert (=> b!4465824 m!5170483))

(declare-fun m!5170491 () Bool)

(assert (=> b!4465824 m!5170491))

(assert (=> b!4465820 m!5170139))

(declare-fun m!5170493 () Bool)

(assert (=> b!4465820 m!5170493))

(assert (=> b!4465821 m!5170139))

(assert (=> b!4465821 m!5170493))

(assert (=> b!4465821 m!5170493))

(declare-fun m!5170495 () Bool)

(assert (=> b!4465821 m!5170495))

(assert (=> b!4465822 m!5170139))

(assert (=> b!4465822 m!5170493))

(assert (=> b!4465822 m!5170493))

(assert (=> b!4465822 m!5170495))

(declare-fun m!5170497 () Bool)

(assert (=> b!4465827 m!5170497))

(assert (=> b!4465827 m!5170485))

(assert (=> b!4465827 m!5170485))

(assert (=> b!4465827 m!5170487))

(declare-fun m!5170499 () Bool)

(assert (=> b!4465827 m!5170499))

(assert (=> b!4465601 d!1361827))

(declare-fun bs!793038 () Bool)

(declare-fun d!1361829 () Bool)

(assert (= bs!793038 (and d!1361829 start!438344)))

(declare-fun lambda!162633 () Int)

(assert (=> bs!793038 (= lambda!162633 lambda!162601)))

(declare-fun bs!793039 () Bool)

(assert (= bs!793039 (and d!1361829 d!1361747)))

(assert (=> bs!793039 (= lambda!162633 lambda!162608)))

(declare-fun bs!793040 () Bool)

(assert (= bs!793040 (and d!1361829 d!1361783)))

(assert (=> bs!793040 (= lambda!162633 lambda!162626)))

(declare-fun bs!793041 () Bool)

(assert (= bs!793041 (and d!1361829 d!1361821)))

(assert (=> bs!793041 (= lambda!162633 lambda!162632)))

(declare-fun lt!1655620 () ListMap!3305)

(assert (=> d!1361829 (invariantList!921 (toList!4044 lt!1655620))))

(declare-fun e!2780876 () ListMap!3305)

(assert (=> d!1361829 (= lt!1655620 e!2780876)))

(declare-fun c!760048 () Bool)

(assert (=> d!1361829 (= c!760048 ((_ is Cons!50267) (Cons!50267 lt!1655466 Nil!50267)))))

(assert (=> d!1361829 (forall!9972 (Cons!50267 lt!1655466 Nil!50267) lambda!162633)))

(assert (=> d!1361829 (= (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)) lt!1655620)))

(declare-fun b!4465829 () Bool)

(assert (=> b!4465829 (= e!2780876 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))))))

(declare-fun b!4465830 () Bool)

(assert (=> b!4465830 (= e!2780876 (ListMap!3306 Nil!50266))))

(assert (= (and d!1361829 c!760048) b!4465829))

(assert (= (and d!1361829 (not c!760048)) b!4465830))

(declare-fun m!5170501 () Bool)

(assert (=> d!1361829 m!5170501))

(declare-fun m!5170503 () Bool)

(assert (=> d!1361829 m!5170503))

(declare-fun m!5170505 () Bool)

(assert (=> b!4465829 m!5170505))

(assert (=> b!4465829 m!5170505))

(declare-fun m!5170507 () Bool)

(assert (=> b!4465829 m!5170507))

(assert (=> b!4465601 d!1361829))

(declare-fun d!1361831 () Bool)

(assert (=> d!1361831 (= (tail!7488 (toList!4043 lt!1655455)) (t!357341 (toList!4043 lt!1655455)))))

(assert (=> b!4465601 d!1361831))

(declare-fun d!1361833 () Bool)

(assert (=> d!1361833 (eq!511 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)) (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))))

(declare-fun lt!1655623 () Unit!87263)

(declare-fun choose!28503 ((_ BitVec 64) List!50390 List!50390 K!11685 Hashable!5413) Unit!87263)

(assert (=> d!1361833 (= lt!1655623 (choose!28503 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1361833 (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477))))))

(assert (=> d!1361833 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!10 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1655623)))

(declare-fun bs!793042 () Bool)

(assert (= bs!793042 d!1361833))

(declare-fun m!5170509 () Bool)

(assert (=> bs!793042 m!5170509))

(assert (=> bs!793042 m!5170143))

(assert (=> bs!793042 m!5170131))

(assert (=> bs!793042 m!5170143))

(declare-fun m!5170511 () Bool)

(assert (=> bs!793042 m!5170511))

(assert (=> bs!793042 m!5170131))

(declare-fun m!5170513 () Bool)

(assert (=> bs!793042 m!5170513))

(assert (=> bs!793042 m!5170511))

(declare-fun m!5170515 () Bool)

(assert (=> bs!793042 m!5170515))

(assert (=> b!4465601 d!1361833))

(declare-fun bs!793043 () Bool)

(declare-fun d!1361835 () Bool)

(assert (= bs!793043 (and d!1361835 d!1361747)))

(declare-fun lambda!162634 () Int)

(assert (=> bs!793043 (= lambda!162634 lambda!162608)))

(declare-fun bs!793044 () Bool)

(assert (= bs!793044 (and d!1361835 d!1361829)))

(assert (=> bs!793044 (= lambda!162634 lambda!162633)))

(declare-fun bs!793045 () Bool)

(assert (= bs!793045 (and d!1361835 d!1361821)))

(assert (=> bs!793045 (= lambda!162634 lambda!162632)))

(declare-fun bs!793046 () Bool)

(assert (= bs!793046 (and d!1361835 start!438344)))

(assert (=> bs!793046 (= lambda!162634 lambda!162601)))

(declare-fun bs!793047 () Bool)

(assert (= bs!793047 (and d!1361835 d!1361783)))

(assert (=> bs!793047 (= lambda!162634 lambda!162626)))

(declare-fun lt!1655624 () ListMap!3305)

(assert (=> d!1361835 (invariantList!921 (toList!4044 lt!1655624))))

(declare-fun e!2780877 () ListMap!3305)

(assert (=> d!1361835 (= lt!1655624 e!2780877)))

(declare-fun c!760049 () Bool)

(assert (=> d!1361835 (= c!760049 ((_ is Cons!50267) lt!1655462))))

(assert (=> d!1361835 (forall!9972 lt!1655462 lambda!162634)))

(assert (=> d!1361835 (= (extractMap!1074 lt!1655462) lt!1655624)))

(declare-fun b!4465831 () Bool)

(assert (=> b!4465831 (= e!2780877 (addToMapMapFromBucket!583 (_2!28548 (h!56024 lt!1655462)) (extractMap!1074 (t!357341 lt!1655462))))))

(declare-fun b!4465832 () Bool)

(assert (=> b!4465832 (= e!2780877 (ListMap!3306 Nil!50266))))

(assert (= (and d!1361835 c!760049) b!4465831))

(assert (= (and d!1361835 (not c!760049)) b!4465832))

(declare-fun m!5170517 () Bool)

(assert (=> d!1361835 m!5170517))

(declare-fun m!5170519 () Bool)

(assert (=> d!1361835 m!5170519))

(declare-fun m!5170521 () Bool)

(assert (=> b!4465831 m!5170521))

(assert (=> b!4465831 m!5170521))

(declare-fun m!5170523 () Bool)

(assert (=> b!4465831 m!5170523))

(assert (=> b!4465601 d!1361835))

(declare-fun bs!793048 () Bool)

(declare-fun d!1361837 () Bool)

(assert (= bs!793048 (and d!1361837 d!1361747)))

(declare-fun lambda!162637 () Int)

(assert (=> bs!793048 (= lambda!162637 lambda!162608)))

(declare-fun bs!793049 () Bool)

(assert (= bs!793049 (and d!1361837 d!1361829)))

(assert (=> bs!793049 (= lambda!162637 lambda!162633)))

(declare-fun bs!793050 () Bool)

(assert (= bs!793050 (and d!1361837 d!1361835)))

(assert (=> bs!793050 (= lambda!162637 lambda!162634)))

(declare-fun bs!793051 () Bool)

(assert (= bs!793051 (and d!1361837 d!1361821)))

(assert (=> bs!793051 (= lambda!162637 lambda!162632)))

(declare-fun bs!793052 () Bool)

(assert (= bs!793052 (and d!1361837 start!438344)))

(assert (=> bs!793052 (= lambda!162637 lambda!162601)))

(declare-fun bs!793053 () Bool)

(assert (= bs!793053 (and d!1361837 d!1361783)))

(assert (=> bs!793053 (= lambda!162637 lambda!162626)))

(assert (=> d!1361837 (contains!12807 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462))) key!3287)))

(declare-fun lt!1655627 () Unit!87263)

(declare-fun choose!28504 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> d!1361837 (= lt!1655627 (choose!28504 (ListLongMap!2676 lt!1655462) key!3287 hashF!1107))))

(assert (=> d!1361837 (forall!9972 (toList!4043 (ListLongMap!2676 lt!1655462)) lambda!162637)))

(assert (=> d!1361837 (= (lemmaListContainsThenExtractedMapContains!14 (ListLongMap!2676 lt!1655462) key!3287 hashF!1107) lt!1655627)))

(declare-fun bs!793054 () Bool)

(assert (= bs!793054 d!1361837))

(declare-fun m!5170525 () Bool)

(assert (=> bs!793054 m!5170525))

(assert (=> bs!793054 m!5170525))

(declare-fun m!5170527 () Bool)

(assert (=> bs!793054 m!5170527))

(declare-fun m!5170529 () Bool)

(assert (=> bs!793054 m!5170529))

(declare-fun m!5170531 () Bool)

(assert (=> bs!793054 m!5170531))

(assert (=> b!4465601 d!1361837))

(declare-fun d!1361839 () Bool)

(declare-fun isEmpty!28473 (List!50391) Bool)

(assert (=> d!1361839 (= (isEmpty!28471 lm!1477) (isEmpty!28473 (toList!4043 lm!1477)))))

(declare-fun bs!793055 () Bool)

(assert (= bs!793055 d!1361839))

(declare-fun m!5170533 () Bool)

(assert (=> bs!793055 m!5170533))

(assert (=> b!4465610 d!1361839))

(declare-fun d!1361841 () Bool)

(declare-fun res!1852561 () Bool)

(declare-fun e!2780882 () Bool)

(assert (=> d!1361841 (=> res!1852561 e!2780882)))

(assert (=> d!1361841 (= res!1852561 (and ((_ is Cons!50266) (_2!28548 (h!56024 (toList!4043 lm!1477)))) (= (_1!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))) key!3287)))))

(assert (=> d!1361841 (= (containsKey!1450 (_2!28548 (h!56024 (toList!4043 lm!1477))) key!3287) e!2780882)))

(declare-fun b!4465837 () Bool)

(declare-fun e!2780883 () Bool)

(assert (=> b!4465837 (= e!2780882 e!2780883)))

(declare-fun res!1852562 () Bool)

(assert (=> b!4465837 (=> (not res!1852562) (not e!2780883))))

(assert (=> b!4465837 (= res!1852562 ((_ is Cons!50266) (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(declare-fun b!4465838 () Bool)

(assert (=> b!4465838 (= e!2780883 (containsKey!1450 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))) key!3287))))

(assert (= (and d!1361841 (not res!1852561)) b!4465837))

(assert (= (and b!4465837 res!1852562) b!4465838))

(declare-fun m!5170535 () Bool)

(assert (=> b!4465838 m!5170535))

(assert (=> b!4465599 d!1361841))

(declare-fun bs!793056 () Bool)

(declare-fun d!1361843 () Bool)

(assert (= bs!793056 (and d!1361843 d!1361747)))

(declare-fun lambda!162640 () Int)

(assert (=> bs!793056 (= lambda!162640 lambda!162608)))

(declare-fun bs!793057 () Bool)

(assert (= bs!793057 (and d!1361843 d!1361829)))

(assert (=> bs!793057 (= lambda!162640 lambda!162633)))

(declare-fun bs!793058 () Bool)

(assert (= bs!793058 (and d!1361843 d!1361821)))

(assert (=> bs!793058 (= lambda!162640 lambda!162632)))

(declare-fun bs!793059 () Bool)

(assert (= bs!793059 (and d!1361843 start!438344)))

(assert (=> bs!793059 (= lambda!162640 lambda!162601)))

(declare-fun bs!793060 () Bool)

(assert (= bs!793060 (and d!1361843 d!1361783)))

(assert (=> bs!793060 (= lambda!162640 lambda!162626)))

(declare-fun bs!793061 () Bool)

(assert (= bs!793061 (and d!1361843 d!1361837)))

(assert (=> bs!793061 (= lambda!162640 lambda!162637)))

(declare-fun bs!793062 () Bool)

(assert (= bs!793062 (and d!1361843 d!1361835)))

(assert (=> bs!793062 (= lambda!162640 lambda!162634)))

(assert (=> d!1361843 (contains!12806 lm!1477 (hash!2423 hashF!1107 key!3287))))

(declare-fun lt!1655630 () Unit!87263)

(declare-fun choose!28505 (ListLongMap!2675 K!11685 Hashable!5413) Unit!87263)

(assert (=> d!1361843 (= lt!1655630 (choose!28505 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1361843 (forall!9972 (toList!4043 lm!1477) lambda!162640)))

(assert (=> d!1361843 (= (lemmaInGenMapThenLongMapContainsHash!92 lm!1477 key!3287 hashF!1107) lt!1655630)))

(declare-fun bs!793063 () Bool)

(assert (= bs!793063 d!1361843))

(assert (=> bs!793063 m!5170127))

(assert (=> bs!793063 m!5170127))

(declare-fun m!5170537 () Bool)

(assert (=> bs!793063 m!5170537))

(declare-fun m!5170539 () Bool)

(assert (=> bs!793063 m!5170539))

(declare-fun m!5170541 () Bool)

(assert (=> bs!793063 m!5170541))

(assert (=> b!4465598 d!1361843))

(declare-fun d!1361845 () Bool)

(declare-fun get!16378 (Option!10915) List!50390)

(assert (=> d!1361845 (= (apply!11755 lm!1477 hash!344) (get!16378 (getValueByKey!901 (toList!4043 lm!1477) hash!344)))))

(declare-fun bs!793064 () Bool)

(assert (= bs!793064 d!1361845))

(declare-fun m!5170543 () Bool)

(assert (=> bs!793064 m!5170543))

(assert (=> bs!793064 m!5170543))

(declare-fun m!5170545 () Bool)

(assert (=> bs!793064 m!5170545))

(assert (=> b!4465598 d!1361845))

(declare-fun d!1361847 () Bool)

(assert (=> d!1361847 (dynLambda!21002 lambda!162601 lt!1655457)))

(declare-fun lt!1655633 () Unit!87263)

(declare-fun choose!28506 (List!50391 Int tuple2!50508) Unit!87263)

(assert (=> d!1361847 (= lt!1655633 (choose!28506 (toList!4043 lm!1477) lambda!162601 lt!1655457))))

(declare-fun e!2780886 () Bool)

(assert (=> d!1361847 e!2780886))

(declare-fun res!1852565 () Bool)

(assert (=> d!1361847 (=> (not res!1852565) (not e!2780886))))

(assert (=> d!1361847 (= res!1852565 (forall!9972 (toList!4043 lm!1477) lambda!162601))))

(assert (=> d!1361847 (= (forallContained!2243 (toList!4043 lm!1477) lambda!162601 lt!1655457) lt!1655633)))

(declare-fun b!4465841 () Bool)

(assert (=> b!4465841 (= e!2780886 (contains!12805 (toList!4043 lm!1477) lt!1655457))))

(assert (= (and d!1361847 res!1852565) b!4465841))

(declare-fun b_lambda!148063 () Bool)

(assert (=> (not b_lambda!148063) (not d!1361847)))

(declare-fun m!5170547 () Bool)

(assert (=> d!1361847 m!5170547))

(declare-fun m!5170549 () Bool)

(assert (=> d!1361847 m!5170549))

(assert (=> d!1361847 m!5170117))

(assert (=> b!4465841 m!5170151))

(assert (=> b!4465598 d!1361847))

(declare-fun d!1361849 () Bool)

(assert (=> d!1361849 (contains!12805 (toList!4043 lm!1477) (tuple2!50509 hash!344 lt!1655459))))

(declare-fun lt!1655636 () Unit!87263)

(declare-fun choose!28507 (List!50391 (_ BitVec 64) List!50390) Unit!87263)

(assert (=> d!1361849 (= lt!1655636 (choose!28507 (toList!4043 lm!1477) hash!344 lt!1655459))))

(declare-fun e!2780889 () Bool)

(assert (=> d!1361849 e!2780889))

(declare-fun res!1852568 () Bool)

(assert (=> d!1361849 (=> (not res!1852568) (not e!2780889))))

(assert (=> d!1361849 (= res!1852568 (isStrictlySorted!335 (toList!4043 lm!1477)))))

(assert (=> d!1361849 (= (lemmaGetValueByKeyImpliesContainsTuple!530 (toList!4043 lm!1477) hash!344 lt!1655459) lt!1655636)))

(declare-fun b!4465844 () Bool)

(assert (=> b!4465844 (= e!2780889 (= (getValueByKey!901 (toList!4043 lm!1477) hash!344) (Some!10914 lt!1655459)))))

(assert (= (and d!1361849 res!1852568) b!4465844))

(declare-fun m!5170551 () Bool)

(assert (=> d!1361849 m!5170551))

(declare-fun m!5170553 () Bool)

(assert (=> d!1361849 m!5170553))

(assert (=> d!1361849 m!5170193))

(assert (=> b!4465844 m!5170543))

(assert (=> b!4465598 d!1361849))

(declare-fun d!1361851 () Bool)

(declare-fun e!2780895 () Bool)

(assert (=> d!1361851 e!2780895))

(declare-fun res!1852571 () Bool)

(assert (=> d!1361851 (=> res!1852571 e!2780895)))

(declare-fun lt!1655645 () Bool)

(assert (=> d!1361851 (= res!1852571 (not lt!1655645))))

(declare-fun lt!1655648 () Bool)

(assert (=> d!1361851 (= lt!1655645 lt!1655648)))

(declare-fun lt!1655647 () Unit!87263)

(declare-fun e!2780894 () Unit!87263)

(assert (=> d!1361851 (= lt!1655647 e!2780894)))

(declare-fun c!760052 () Bool)

(assert (=> d!1361851 (= c!760052 lt!1655648)))

(declare-fun containsKey!1454 (List!50391 (_ BitVec 64)) Bool)

(assert (=> d!1361851 (= lt!1655648 (containsKey!1454 (toList!4043 lm!1477) lt!1655464))))

(assert (=> d!1361851 (= (contains!12806 lm!1477 lt!1655464) lt!1655645)))

(declare-fun b!4465851 () Bool)

(declare-fun lt!1655646 () Unit!87263)

(assert (=> b!4465851 (= e!2780894 lt!1655646)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!805 (List!50391 (_ BitVec 64)) Unit!87263)

(assert (=> b!4465851 (= lt!1655646 (lemmaContainsKeyImpliesGetValueByKeyDefined!805 (toList!4043 lm!1477) lt!1655464))))

(declare-fun isDefined!8202 (Option!10915) Bool)

(assert (=> b!4465851 (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) lt!1655464))))

(declare-fun b!4465852 () Bool)

(declare-fun Unit!87276 () Unit!87263)

(assert (=> b!4465852 (= e!2780894 Unit!87276)))

(declare-fun b!4465853 () Bool)

(assert (=> b!4465853 (= e!2780895 (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) lt!1655464)))))

(assert (= (and d!1361851 c!760052) b!4465851))

(assert (= (and d!1361851 (not c!760052)) b!4465852))

(assert (= (and d!1361851 (not res!1852571)) b!4465853))

(declare-fun m!5170555 () Bool)

(assert (=> d!1361851 m!5170555))

(declare-fun m!5170557 () Bool)

(assert (=> b!4465851 m!5170557))

(declare-fun m!5170559 () Bool)

(assert (=> b!4465851 m!5170559))

(assert (=> b!4465851 m!5170559))

(declare-fun m!5170561 () Bool)

(assert (=> b!4465851 m!5170561))

(assert (=> b!4465853 m!5170559))

(assert (=> b!4465853 m!5170559))

(assert (=> b!4465853 m!5170561))

(assert (=> b!4465598 d!1361851))

(declare-fun b!4465862 () Bool)

(declare-fun e!2780901 () List!50390)

(assert (=> b!4465862 (= e!2780901 (t!357340 lt!1655459))))

(declare-fun b!4465863 () Bool)

(declare-fun e!2780900 () List!50390)

(assert (=> b!4465863 (= e!2780901 e!2780900)))

(declare-fun c!760057 () Bool)

(assert (=> b!4465863 (= c!760057 ((_ is Cons!50266) lt!1655459))))

(declare-fun b!4465865 () Bool)

(assert (=> b!4465865 (= e!2780900 Nil!50266)))

(declare-fun d!1361853 () Bool)

(declare-fun lt!1655651 () List!50390)

(assert (=> d!1361853 (not (containsKey!1450 lt!1655651 key!3287))))

(assert (=> d!1361853 (= lt!1655651 e!2780901)))

(declare-fun c!760058 () Bool)

(assert (=> d!1361853 (= c!760058 (and ((_ is Cons!50266) lt!1655459) (= (_1!28547 (h!56023 lt!1655459)) key!3287)))))

(assert (=> d!1361853 (noDuplicateKeys!1018 lt!1655459)))

(assert (=> d!1361853 (= (removePairForKey!645 lt!1655459 key!3287) lt!1655651)))

(declare-fun b!4465864 () Bool)

(assert (=> b!4465864 (= e!2780900 (Cons!50266 (h!56023 lt!1655459) (removePairForKey!645 (t!357340 lt!1655459) key!3287)))))

(assert (= (and d!1361853 c!760058) b!4465862))

(assert (= (and d!1361853 (not c!760058)) b!4465863))

(assert (= (and b!4465863 c!760057) b!4465864))

(assert (= (and b!4465863 (not c!760057)) b!4465865))

(declare-fun m!5170563 () Bool)

(assert (=> d!1361853 m!5170563))

(declare-fun m!5170565 () Bool)

(assert (=> d!1361853 m!5170565))

(declare-fun m!5170567 () Bool)

(assert (=> b!4465864 m!5170567))

(assert (=> b!4465598 d!1361853))

(declare-fun d!1361855 () Bool)

(declare-fun lt!1655654 () Bool)

(declare-fun content!8086 (List!50391) (InoxSet tuple2!50508))

(assert (=> d!1361855 (= lt!1655654 (select (content!8086 (toList!4043 lm!1477)) lt!1655457))))

(declare-fun e!2780907 () Bool)

(assert (=> d!1361855 (= lt!1655654 e!2780907)))

(declare-fun res!1852576 () Bool)

(assert (=> d!1361855 (=> (not res!1852576) (not e!2780907))))

(assert (=> d!1361855 (= res!1852576 ((_ is Cons!50267) (toList!4043 lm!1477)))))

(assert (=> d!1361855 (= (contains!12805 (toList!4043 lm!1477) lt!1655457) lt!1655654)))

(declare-fun b!4465870 () Bool)

(declare-fun e!2780906 () Bool)

(assert (=> b!4465870 (= e!2780907 e!2780906)))

(declare-fun res!1852577 () Bool)

(assert (=> b!4465870 (=> res!1852577 e!2780906)))

(assert (=> b!4465870 (= res!1852577 (= (h!56024 (toList!4043 lm!1477)) lt!1655457))))

(declare-fun b!4465871 () Bool)

(assert (=> b!4465871 (= e!2780906 (contains!12805 (t!357341 (toList!4043 lm!1477)) lt!1655457))))

(assert (= (and d!1361855 res!1852576) b!4465870))

(assert (= (and b!4465870 (not res!1852577)) b!4465871))

(declare-fun m!5170569 () Bool)

(assert (=> d!1361855 m!5170569))

(declare-fun m!5170571 () Bool)

(assert (=> d!1361855 m!5170571))

(declare-fun m!5170573 () Bool)

(assert (=> b!4465871 m!5170573))

(assert (=> b!4465598 d!1361855))

(declare-fun bs!793065 () Bool)

(declare-fun d!1361857 () Bool)

(assert (= bs!793065 (and d!1361857 d!1361843)))

(declare-fun lambda!162643 () Int)

(assert (=> bs!793065 (not (= lambda!162643 lambda!162640))))

(declare-fun bs!793066 () Bool)

(assert (= bs!793066 (and d!1361857 d!1361747)))

(assert (=> bs!793066 (not (= lambda!162643 lambda!162608))))

(declare-fun bs!793067 () Bool)

(assert (= bs!793067 (and d!1361857 d!1361829)))

(assert (=> bs!793067 (not (= lambda!162643 lambda!162633))))

(declare-fun bs!793068 () Bool)

(assert (= bs!793068 (and d!1361857 d!1361821)))

(assert (=> bs!793068 (not (= lambda!162643 lambda!162632))))

(declare-fun bs!793069 () Bool)

(assert (= bs!793069 (and d!1361857 start!438344)))

(assert (=> bs!793069 (not (= lambda!162643 lambda!162601))))

(declare-fun bs!793070 () Bool)

(assert (= bs!793070 (and d!1361857 d!1361783)))

(assert (=> bs!793070 (not (= lambda!162643 lambda!162626))))

(declare-fun bs!793071 () Bool)

(assert (= bs!793071 (and d!1361857 d!1361837)))

(assert (=> bs!793071 (not (= lambda!162643 lambda!162637))))

(declare-fun bs!793072 () Bool)

(assert (= bs!793072 (and d!1361857 d!1361835)))

(assert (=> bs!793072 (not (= lambda!162643 lambda!162634))))

(assert (=> d!1361857 true))

(assert (=> d!1361857 (= (allKeysSameHashInMap!1125 lm!1477 hashF!1107) (forall!9972 (toList!4043 lm!1477) lambda!162643))))

(declare-fun bs!793073 () Bool)

(assert (= bs!793073 d!1361857))

(declare-fun m!5170575 () Bool)

(assert (=> bs!793073 m!5170575))

(assert (=> b!4465609 d!1361857))

(declare-fun b!4465878 () Bool)

(declare-fun e!2780910 () Bool)

(declare-fun tp!1336133 () Bool)

(declare-fun tp!1336134 () Bool)

(assert (=> b!4465878 (= e!2780910 (and tp!1336133 tp!1336134))))

(assert (=> b!4465606 (= tp!1336118 e!2780910)))

(assert (= (and b!4465606 ((_ is Cons!50267) (toList!4043 lm!1477))) b!4465878))

(declare-fun b!4465883 () Bool)

(declare-fun e!2780913 () Bool)

(declare-fun tp!1336137 () Bool)

(assert (=> b!4465883 (= e!2780913 (and tp_is_empty!27349 tp_is_empty!27351 tp!1336137))))

(assert (=> b!4465611 (= tp!1336119 e!2780913)))

(assert (= (and b!4465611 ((_ is Cons!50266) (t!357340 newBucket!178))) b!4465883))

(declare-fun b_lambda!148065 () Bool)

(assert (= b_lambda!148063 (or start!438344 b_lambda!148065)))

(declare-fun bs!793074 () Bool)

(declare-fun d!1361859 () Bool)

(assert (= bs!793074 (and d!1361859 start!438344)))

(assert (=> bs!793074 (= (dynLambda!21002 lambda!162601 lt!1655457) (noDuplicateKeys!1018 (_2!28548 lt!1655457)))))

(declare-fun m!5170577 () Bool)

(assert (=> bs!793074 m!5170577))

(assert (=> d!1361847 d!1361859))

(declare-fun b_lambda!148067 () Bool)

(assert (= b_lambda!148053 (or start!438344 b_lambda!148067)))

(declare-fun bs!793075 () Bool)

(declare-fun d!1361861 () Bool)

(assert (= bs!793075 (and d!1361861 start!438344)))

(assert (=> bs!793075 (= (dynLambda!21002 lambda!162601 (h!56024 (toList!4043 lm!1477))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(assert (=> bs!793075 m!5170515))

(assert (=> b!4465642 d!1361861))

(check-sat (not b!4465811) (not b!4465812) (not b!4465844) (not b!4465864) (not d!1361835) (not d!1361849) (not b!4465853) (not b!4465724) (not d!1361795) (not d!1361833) (not d!1361823) (not b!4465819) (not d!1361827) (not d!1361853) (not b!4465723) (not b!4465851) (not d!1361851) (not d!1361837) (not d!1361745) (not bs!793075) (not b!4465821) (not d!1361805) (not b!4465622) (not b!4465729) (not b!4465725) (not bs!793074) (not b!4465643) (not b!4465772) (not d!1361839) (not b!4465824) (not d!1361825) (not b!4465722) (not d!1361855) (not d!1361845) (not b!4465841) (not d!1361829) (not bm!310863) (not b!4465648) (not d!1361817) tp_is_empty!27351 (not d!1361857) (not d!1361819) (not b!4465831) (not b_lambda!148065) (not b!4465838) (not b!4465829) (not d!1361761) (not d!1361741) (not bm!310865) (not d!1361783) (not d!1361821) (not b!4465820) (not b!4465822) (not b!4465817) (not b!4465726) (not d!1361747) (not b!4465813) (not b!4465620) (not b!4465878) (not b!4465883) (not d!1361843) (not b!4465730) (not b_lambda!148067) (not b!4465871) (not b!4465649) tp_is_empty!27349 (not b!4465823) (not b!4465827) (not b!4465818) (not b!4465828) (not d!1361847))
(check-sat)
(get-model)

(declare-fun d!1361865 () Bool)

(declare-fun res!1852582 () Bool)

(declare-fun e!2780918 () Bool)

(assert (=> d!1361865 (=> res!1852582 e!2780918)))

(assert (=> d!1361865 (= res!1852582 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 lt!1655462))) (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462)))) key!3287)))))

(assert (=> d!1361865 (= (containsKey!1453 (toList!4044 (extractMap!1074 lt!1655462)) key!3287) e!2780918)))

(declare-fun b!4465888 () Bool)

(declare-fun e!2780919 () Bool)

(assert (=> b!4465888 (= e!2780918 e!2780919)))

(declare-fun res!1852583 () Bool)

(assert (=> b!4465888 (=> (not res!1852583) (not e!2780919))))

(assert (=> b!4465888 (= res!1852583 ((_ is Cons!50266) (toList!4044 (extractMap!1074 lt!1655462))))))

(declare-fun b!4465889 () Bool)

(assert (=> b!4465889 (= e!2780919 (containsKey!1453 (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) key!3287))))

(assert (= (and d!1361865 (not res!1852582)) b!4465888))

(assert (= (and b!4465888 res!1852583) b!4465889))

(declare-fun m!5170579 () Bool)

(assert (=> b!4465889 m!5170579))

(assert (=> b!4465824 d!1361865))

(declare-fun d!1361867 () Bool)

(assert (=> d!1361867 (containsKey!1453 (toList!4044 (extractMap!1074 lt!1655462)) key!3287)))

(declare-fun lt!1655657 () Unit!87263)

(declare-fun choose!28508 (List!50390 K!11685) Unit!87263)

(assert (=> d!1361867 (= lt!1655657 (choose!28508 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> d!1361867 (invariantList!921 (toList!4044 (extractMap!1074 lt!1655462)))))

(assert (=> d!1361867 (= (lemmaInGetKeysListThenContainsKey!368 (toList!4044 (extractMap!1074 lt!1655462)) key!3287) lt!1655657)))

(declare-fun bs!793076 () Bool)

(assert (= bs!793076 d!1361867))

(assert (=> bs!793076 m!5170483))

(declare-fun m!5170581 () Bool)

(assert (=> bs!793076 m!5170581))

(declare-fun m!5170583 () Bool)

(assert (=> bs!793076 m!5170583))

(assert (=> b!4465824 d!1361867))

(declare-fun d!1361869 () Bool)

(assert (=> d!1361869 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(declare-fun lt!1655660 () Unit!87263)

(declare-fun choose!28509 (List!50390 K!11685) Unit!87263)

(assert (=> d!1361869 (= lt!1655660 (choose!28509 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(assert (=> d!1361869 (invariantList!921 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))

(assert (=> d!1361869 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287) lt!1655660)))

(declare-fun bs!793077 () Bool)

(assert (= bs!793077 d!1361869))

(assert (=> bs!793077 m!5170323))

(assert (=> bs!793077 m!5170323))

(assert (=> bs!793077 m!5170325))

(declare-fun m!5170585 () Bool)

(assert (=> bs!793077 m!5170585))

(declare-fun m!5170587 () Bool)

(assert (=> bs!793077 m!5170587))

(assert (=> b!4465729 d!1361869))

(declare-fun d!1361871 () Bool)

(declare-fun isEmpty!28474 (Option!10914) Bool)

(assert (=> d!1361871 (= (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287)) (not (isEmpty!28474 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))))

(declare-fun bs!793078 () Bool)

(assert (= bs!793078 d!1361871))

(assert (=> bs!793078 m!5170323))

(declare-fun m!5170589 () Bool)

(assert (=> bs!793078 m!5170589))

(assert (=> b!4465729 d!1361871))

(declare-fun b!4465904 () Bool)

(declare-fun e!2780927 () Option!10914)

(assert (=> b!4465904 (= e!2780927 (getValueByKey!900 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) key!3287))))

(declare-fun b!4465903 () Bool)

(declare-fun e!2780926 () Option!10914)

(assert (=> b!4465903 (= e!2780926 e!2780927)))

(declare-fun c!760066 () Bool)

(assert (=> b!4465903 (= c!760066 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (not (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) key!3287))))))

(declare-fun b!4465905 () Bool)

(assert (=> b!4465905 (= e!2780927 None!10913)))

(declare-fun b!4465902 () Bool)

(assert (=> b!4465902 (= e!2780926 (Some!10913 (_2!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))))

(declare-fun d!1361873 () Bool)

(declare-fun c!760065 () Bool)

(assert (=> d!1361873 (= c!760065 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) key!3287)))))

(assert (=> d!1361873 (= (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287) e!2780926)))

(assert (= (and d!1361873 c!760065) b!4465902))

(assert (= (and d!1361873 (not c!760065)) b!4465903))

(assert (= (and b!4465903 c!760066) b!4465904))

(assert (= (and b!4465903 (not c!760066)) b!4465905))

(declare-fun m!5170591 () Bool)

(assert (=> b!4465904 m!5170591))

(assert (=> b!4465729 d!1361873))

(declare-fun d!1361875 () Bool)

(assert (=> d!1361875 (contains!12809 (getKeysList!369 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) key!3287)))

(declare-fun lt!1655687 () Unit!87263)

(declare-fun choose!28510 (List!50390 K!11685) Unit!87263)

(assert (=> d!1361875 (= lt!1655687 (choose!28510 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(assert (=> d!1361875 (invariantList!921 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))

(assert (=> d!1361875 (= (lemmaInListThenGetKeysListContains!365 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287) lt!1655687)))

(declare-fun bs!793079 () Bool)

(assert (= bs!793079 d!1361875))

(assert (=> bs!793079 m!5170317))

(assert (=> bs!793079 m!5170317))

(declare-fun m!5170593 () Bool)

(assert (=> bs!793079 m!5170593))

(declare-fun m!5170595 () Bool)

(assert (=> bs!793079 m!5170595))

(assert (=> bs!793079 m!5170587))

(assert (=> b!4465729 d!1361875))

(declare-fun bs!793121 () Bool)

(declare-fun b!4466042 () Bool)

(assert (= bs!793121 (and b!4466042 d!1361795)))

(declare-fun lambda!162716 () Int)

(assert (=> bs!793121 (not (= lambda!162716 lambda!162631))))

(assert (=> b!4466042 true))

(declare-fun bs!793123 () Bool)

(declare-fun b!4466041 () Bool)

(assert (= bs!793123 (and b!4466041 d!1361795)))

(declare-fun lambda!162717 () Int)

(assert (=> bs!793123 (not (= lambda!162717 lambda!162631))))

(declare-fun bs!793124 () Bool)

(assert (= bs!793124 (and b!4466041 b!4466042)))

(assert (=> bs!793124 (= lambda!162717 lambda!162716)))

(assert (=> b!4466041 true))

(declare-fun lambda!162718 () Int)

(assert (=> bs!793123 (not (= lambda!162718 lambda!162631))))

(declare-fun lt!1655881 () ListMap!3305)

(assert (=> bs!793124 (= (= lt!1655881 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162718 lambda!162716))))

(assert (=> b!4466041 (= (= lt!1655881 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162718 lambda!162717))))

(assert (=> b!4466041 true))

(declare-fun bs!793125 () Bool)

(declare-fun d!1361877 () Bool)

(assert (= bs!793125 (and d!1361877 d!1361795)))

(declare-fun lambda!162719 () Int)

(assert (=> bs!793125 (not (= lambda!162719 lambda!162631))))

(declare-fun bs!793126 () Bool)

(assert (= bs!793126 (and d!1361877 b!4466042)))

(declare-fun lt!1655885 () ListMap!3305)

(assert (=> bs!793126 (= (= lt!1655885 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162719 lambda!162716))))

(declare-fun bs!793127 () Bool)

(assert (= bs!793127 (and d!1361877 b!4466041)))

(assert (=> bs!793127 (= (= lt!1655885 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162719 lambda!162717))))

(assert (=> bs!793127 (= (= lt!1655885 lt!1655881) (= lambda!162719 lambda!162718))))

(assert (=> d!1361877 true))

(declare-fun b!4466040 () Bool)

(declare-fun res!1852647 () Bool)

(declare-fun e!2781009 () Bool)

(assert (=> b!4466040 (=> (not res!1852647) (not e!2781009))))

(assert (=> b!4466040 (= res!1852647 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) lambda!162719))))

(declare-fun bm!310903 () Bool)

(declare-fun call!310910 () Unit!87263)

(declare-fun lemmaContainsAllItsOwnKeys!263 (ListMap!3305) Unit!87263)

(assert (=> bm!310903 (= call!310910 (lemmaContainsAllItsOwnKeys!263 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))))))

(declare-fun bm!310904 () Bool)

(declare-fun c!760101 () Bool)

(declare-fun call!310909 () Bool)

(assert (=> bm!310904 (= call!310909 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (ite c!760101 lambda!162716 lambda!162717)))))

(declare-fun e!2781010 () ListMap!3305)

(assert (=> b!4466041 (= e!2781010 lt!1655881)))

(declare-fun lt!1655873 () ListMap!3305)

(declare-fun +!1358 (ListMap!3305 tuple2!50506) ListMap!3305)

(assert (=> b!4466041 (= lt!1655873 (+!1358 (extractMap!1074 (t!357341 (toList!4043 lm!1477))) (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(assert (=> b!4466041 (= lt!1655881 (addToMapMapFromBucket!583 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))) (+!1358 (extractMap!1074 (t!357341 (toList!4043 lm!1477))) (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))))

(declare-fun lt!1655865 () Unit!87263)

(assert (=> b!4466041 (= lt!1655865 call!310910)))

(assert (=> b!4466041 call!310909))

(declare-fun lt!1655879 () Unit!87263)

(assert (=> b!4466041 (= lt!1655879 lt!1655865)))

(assert (=> b!4466041 (forall!9974 (toList!4044 lt!1655873) lambda!162718)))

(declare-fun lt!1655883 () Unit!87263)

(declare-fun Unit!87298 () Unit!87263)

(assert (=> b!4466041 (= lt!1655883 Unit!87298)))

(assert (=> b!4466041 (forall!9974 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))) lambda!162718)))

(declare-fun lt!1655868 () Unit!87263)

(declare-fun Unit!87299 () Unit!87263)

(assert (=> b!4466041 (= lt!1655868 Unit!87299)))

(declare-fun lt!1655880 () Unit!87263)

(declare-fun Unit!87300 () Unit!87263)

(assert (=> b!4466041 (= lt!1655880 Unit!87300)))

(declare-fun lt!1655884 () Unit!87263)

(declare-fun forallContained!2245 (List!50390 Int tuple2!50506) Unit!87263)

(assert (=> b!4466041 (= lt!1655884 (forallContained!2245 (toList!4044 lt!1655873) lambda!162718 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(assert (=> b!4466041 (contains!12807 lt!1655873 (_1!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(declare-fun lt!1655866 () Unit!87263)

(declare-fun Unit!87301 () Unit!87263)

(assert (=> b!4466041 (= lt!1655866 Unit!87301)))

(assert (=> b!4466041 (contains!12807 lt!1655881 (_1!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(declare-fun lt!1655878 () Unit!87263)

(declare-fun Unit!87302 () Unit!87263)

(assert (=> b!4466041 (= lt!1655878 Unit!87302)))

(assert (=> b!4466041 (forall!9974 (_2!28548 (h!56024 (toList!4043 lm!1477))) lambda!162718)))

(declare-fun lt!1655874 () Unit!87263)

(declare-fun Unit!87303 () Unit!87263)

(assert (=> b!4466041 (= lt!1655874 Unit!87303)))

(assert (=> b!4466041 (forall!9974 (toList!4044 lt!1655873) lambda!162718)))

(declare-fun lt!1655882 () Unit!87263)

(declare-fun Unit!87304 () Unit!87263)

(assert (=> b!4466041 (= lt!1655882 Unit!87304)))

(declare-fun lt!1655871 () Unit!87263)

(declare-fun Unit!87305 () Unit!87263)

(assert (=> b!4466041 (= lt!1655871 Unit!87305)))

(declare-fun lt!1655869 () Unit!87263)

(declare-fun addForallContainsKeyThenBeforeAdding!262 (ListMap!3305 ListMap!3305 K!11685 V!11931) Unit!87263)

(assert (=> b!4466041 (= lt!1655869 (addForallContainsKeyThenBeforeAdding!262 (extractMap!1074 (t!357341 (toList!4043 lm!1477))) lt!1655881 (_1!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))) (_2!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))))

(assert (=> b!4466041 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) lambda!162718)))

(declare-fun lt!1655872 () Unit!87263)

(assert (=> b!4466041 (= lt!1655872 lt!1655869)))

(assert (=> b!4466041 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) lambda!162718)))

(declare-fun lt!1655875 () Unit!87263)

(declare-fun Unit!87306 () Unit!87263)

(assert (=> b!4466041 (= lt!1655875 Unit!87306)))

(declare-fun res!1852646 () Bool)

(declare-fun call!310908 () Bool)

(assert (=> b!4466041 (= res!1852646 call!310908)))

(declare-fun e!2781008 () Bool)

(assert (=> b!4466041 (=> (not res!1852646) (not e!2781008))))

(assert (=> b!4466041 e!2781008))

(declare-fun lt!1655877 () Unit!87263)

(declare-fun Unit!87307 () Unit!87263)

(assert (=> b!4466041 (= lt!1655877 Unit!87307)))

(declare-fun bm!310905 () Bool)

(assert (=> bm!310905 (= call!310908 (forall!9974 (ite c!760101 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (_2!28548 (h!56024 (toList!4043 lm!1477)))) (ite c!760101 lambda!162716 lambda!162718)))))

(assert (=> b!4466042 (= e!2781010 (extractMap!1074 (t!357341 (toList!4043 lm!1477))))))

(declare-fun lt!1655867 () Unit!87263)

(assert (=> b!4466042 (= lt!1655867 call!310910)))

(assert (=> b!4466042 call!310908))

(declare-fun lt!1655870 () Unit!87263)

(assert (=> b!4466042 (= lt!1655870 lt!1655867)))

(assert (=> b!4466042 call!310909))

(declare-fun lt!1655876 () Unit!87263)

(declare-fun Unit!87308 () Unit!87263)

(assert (=> b!4466042 (= lt!1655876 Unit!87308)))

(assert (=> d!1361877 e!2781009))

(declare-fun res!1852648 () Bool)

(assert (=> d!1361877 (=> (not res!1852648) (not e!2781009))))

(assert (=> d!1361877 (= res!1852648 (forall!9974 (_2!28548 (h!56024 (toList!4043 lm!1477))) lambda!162719))))

(assert (=> d!1361877 (= lt!1655885 e!2781010)))

(assert (=> d!1361877 (= c!760101 ((_ is Nil!50266) (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(assert (=> d!1361877 (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477))))))

(assert (=> d!1361877 (= (addToMapMapFromBucket!583 (_2!28548 (h!56024 (toList!4043 lm!1477))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) lt!1655885)))

(declare-fun b!4466043 () Bool)

(assert (=> b!4466043 (= e!2781009 (invariantList!921 (toList!4044 lt!1655885)))))

(declare-fun b!4466044 () Bool)

(assert (=> b!4466044 (= e!2781008 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) lambda!162718))))

(assert (= (and d!1361877 c!760101) b!4466042))

(assert (= (and d!1361877 (not c!760101)) b!4466041))

(assert (= (and b!4466041 res!1852646) b!4466044))

(assert (= (or b!4466042 b!4466041) bm!310904))

(assert (= (or b!4466042 b!4466041) bm!310905))

(assert (= (or b!4466042 b!4466041) bm!310903))

(assert (= (and d!1361877 res!1852648) b!4466040))

(assert (= (and b!4466040 res!1852647) b!4466043))

(declare-fun m!5170817 () Bool)

(assert (=> d!1361877 m!5170817))

(assert (=> d!1361877 m!5170515))

(declare-fun m!5170819 () Bool)

(assert (=> b!4466041 m!5170819))

(declare-fun m!5170821 () Bool)

(assert (=> b!4466041 m!5170821))

(declare-fun m!5170823 () Bool)

(assert (=> b!4466041 m!5170823))

(declare-fun m!5170825 () Bool)

(assert (=> b!4466041 m!5170825))

(declare-fun m!5170829 () Bool)

(assert (=> b!4466041 m!5170829))

(declare-fun m!5170835 () Bool)

(assert (=> b!4466041 m!5170835))

(declare-fun m!5170837 () Bool)

(assert (=> b!4466041 m!5170837))

(declare-fun m!5170839 () Bool)

(assert (=> b!4466041 m!5170839))

(declare-fun m!5170841 () Bool)

(assert (=> b!4466041 m!5170841))

(assert (=> b!4466041 m!5170369))

(assert (=> b!4466041 m!5170819))

(assert (=> b!4466041 m!5170823))

(assert (=> b!4466041 m!5170825))

(assert (=> b!4466041 m!5170369))

(declare-fun m!5170843 () Bool)

(assert (=> b!4466041 m!5170843))

(declare-fun m!5170845 () Bool)

(assert (=> b!4466043 m!5170845))

(declare-fun m!5170847 () Bool)

(assert (=> bm!310905 m!5170847))

(declare-fun m!5170849 () Bool)

(assert (=> b!4466040 m!5170849))

(assert (=> b!4466044 m!5170825))

(declare-fun m!5170851 () Bool)

(assert (=> bm!310904 m!5170851))

(assert (=> bm!310903 m!5170369))

(declare-fun m!5170855 () Bool)

(assert (=> bm!310903 m!5170855))

(assert (=> b!4465772 d!1361877))

(declare-fun bs!793130 () Bool)

(declare-fun d!1361923 () Bool)

(assert (= bs!793130 (and d!1361923 d!1361843)))

(declare-fun lambda!162720 () Int)

(assert (=> bs!793130 (= lambda!162720 lambda!162640)))

(declare-fun bs!793131 () Bool)

(assert (= bs!793131 (and d!1361923 d!1361747)))

(assert (=> bs!793131 (= lambda!162720 lambda!162608)))

(declare-fun bs!793132 () Bool)

(assert (= bs!793132 (and d!1361923 d!1361829)))

(assert (=> bs!793132 (= lambda!162720 lambda!162633)))

(declare-fun bs!793133 () Bool)

(assert (= bs!793133 (and d!1361923 d!1361857)))

(assert (=> bs!793133 (not (= lambda!162720 lambda!162643))))

(declare-fun bs!793134 () Bool)

(assert (= bs!793134 (and d!1361923 d!1361821)))

(assert (=> bs!793134 (= lambda!162720 lambda!162632)))

(declare-fun bs!793135 () Bool)

(assert (= bs!793135 (and d!1361923 start!438344)))

(assert (=> bs!793135 (= lambda!162720 lambda!162601)))

(declare-fun bs!793136 () Bool)

(assert (= bs!793136 (and d!1361923 d!1361783)))

(assert (=> bs!793136 (= lambda!162720 lambda!162626)))

(declare-fun bs!793137 () Bool)

(assert (= bs!793137 (and d!1361923 d!1361837)))

(assert (=> bs!793137 (= lambda!162720 lambda!162637)))

(declare-fun bs!793138 () Bool)

(assert (= bs!793138 (and d!1361923 d!1361835)))

(assert (=> bs!793138 (= lambda!162720 lambda!162634)))

(declare-fun lt!1655894 () ListMap!3305)

(assert (=> d!1361923 (invariantList!921 (toList!4044 lt!1655894))))

(declare-fun e!2781023 () ListMap!3305)

(assert (=> d!1361923 (= lt!1655894 e!2781023)))

(declare-fun c!760103 () Bool)

(assert (=> d!1361923 (= c!760103 ((_ is Cons!50267) (t!357341 (toList!4043 lm!1477))))))

(assert (=> d!1361923 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162720)))

(assert (=> d!1361923 (= (extractMap!1074 (t!357341 (toList!4043 lm!1477))) lt!1655894)))

(declare-fun b!4466060 () Bool)

(assert (=> b!4466060 (= e!2781023 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (t!357341 (toList!4043 lm!1477)))) (extractMap!1074 (t!357341 (t!357341 (toList!4043 lm!1477))))))))

(declare-fun b!4466061 () Bool)

(assert (=> b!4466061 (= e!2781023 (ListMap!3306 Nil!50266))))

(assert (= (and d!1361923 c!760103) b!4466060))

(assert (= (and d!1361923 (not c!760103)) b!4466061))

(declare-fun m!5170863 () Bool)

(assert (=> d!1361923 m!5170863))

(declare-fun m!5170865 () Bool)

(assert (=> d!1361923 m!5170865))

(declare-fun m!5170867 () Bool)

(assert (=> b!4466060 m!5170867))

(assert (=> b!4466060 m!5170867))

(declare-fun m!5170869 () Bool)

(assert (=> b!4466060 m!5170869))

(assert (=> b!4465772 d!1361923))

(declare-fun b!4466082 () Bool)

(declare-fun e!2781034 () Option!10915)

(assert (=> b!4466082 (= e!2781034 (Some!10914 (_2!28548 (h!56024 (toList!4043 lt!1655608)))))))

(declare-fun b!4466085 () Bool)

(declare-fun e!2781035 () Option!10915)

(assert (=> b!4466085 (= e!2781035 None!10914)))

(declare-fun b!4466084 () Bool)

(assert (=> b!4466084 (= e!2781035 (getValueByKey!901 (t!357341 (toList!4043 lt!1655608)) (_1!28548 lt!1655466)))))

(declare-fun b!4466083 () Bool)

(assert (=> b!4466083 (= e!2781034 e!2781035)))

(declare-fun c!760115 () Bool)

(assert (=> b!4466083 (= c!760115 (and ((_ is Cons!50267) (toList!4043 lt!1655608)) (not (= (_1!28548 (h!56024 (toList!4043 lt!1655608))) (_1!28548 lt!1655466)))))))

(declare-fun d!1361927 () Bool)

(declare-fun c!760114 () Bool)

(assert (=> d!1361927 (= c!760114 (and ((_ is Cons!50267) (toList!4043 lt!1655608)) (= (_1!28548 (h!56024 (toList!4043 lt!1655608))) (_1!28548 lt!1655466))))))

(assert (=> d!1361927 (= (getValueByKey!901 (toList!4043 lt!1655608) (_1!28548 lt!1655466)) e!2781034)))

(assert (= (and d!1361927 c!760114) b!4466082))

(assert (= (and d!1361927 (not c!760114)) b!4466083))

(assert (= (and b!4466083 c!760115) b!4466084))

(assert (= (and b!4466083 (not c!760115)) b!4466085))

(declare-fun m!5170873 () Bool)

(assert (=> b!4466084 m!5170873))

(assert (=> b!4465818 d!1361927))

(declare-fun d!1361931 () Bool)

(declare-fun res!1852668 () Bool)

(declare-fun e!2781042 () Bool)

(assert (=> d!1361931 (=> res!1852668 e!2781042)))

(assert (=> d!1361931 (= res!1852668 (or ((_ is Nil!50267) (toList!4043 lm!1477)) ((_ is Nil!50267) (t!357341 (toList!4043 lm!1477)))))))

(assert (=> d!1361931 (= (isStrictlySorted!335 (toList!4043 lm!1477)) e!2781042)))

(declare-fun b!4466094 () Bool)

(declare-fun e!2781043 () Bool)

(assert (=> b!4466094 (= e!2781042 e!2781043)))

(declare-fun res!1852669 () Bool)

(assert (=> b!4466094 (=> (not res!1852669) (not e!2781043))))

(assert (=> b!4466094 (= res!1852669 (bvslt (_1!28548 (h!56024 (toList!4043 lm!1477))) (_1!28548 (h!56024 (t!357341 (toList!4043 lm!1477))))))))

(declare-fun b!4466095 () Bool)

(assert (=> b!4466095 (= e!2781043 (isStrictlySorted!335 (t!357341 (toList!4043 lm!1477))))))

(assert (= (and d!1361931 (not res!1852668)) b!4466094))

(assert (= (and b!4466094 res!1852669) b!4466095))

(declare-fun m!5170875 () Bool)

(assert (=> b!4466095 m!5170875))

(assert (=> d!1361741 d!1361931))

(declare-fun d!1361933 () Bool)

(declare-fun res!1852672 () Bool)

(declare-fun e!2781045 () Bool)

(assert (=> d!1361933 (=> res!1852672 e!2781045)))

(assert (=> d!1361933 (= res!1852672 (and ((_ is Cons!50266) lt!1655651) (= (_1!28547 (h!56023 lt!1655651)) key!3287)))))

(assert (=> d!1361933 (= (containsKey!1450 lt!1655651 key!3287) e!2781045)))

(declare-fun b!4466098 () Bool)

(declare-fun e!2781046 () Bool)

(assert (=> b!4466098 (= e!2781045 e!2781046)))

(declare-fun res!1852673 () Bool)

(assert (=> b!4466098 (=> (not res!1852673) (not e!2781046))))

(assert (=> b!4466098 (= res!1852673 ((_ is Cons!50266) lt!1655651))))

(declare-fun b!4466099 () Bool)

(assert (=> b!4466099 (= e!2781046 (containsKey!1450 (t!357340 lt!1655651) key!3287))))

(assert (= (and d!1361933 (not res!1852672)) b!4466098))

(assert (= (and b!4466098 res!1852673) b!4466099))

(declare-fun m!5170877 () Bool)

(assert (=> b!4466099 m!5170877))

(assert (=> d!1361853 d!1361933))

(declare-fun d!1361935 () Bool)

(declare-fun res!1852674 () Bool)

(declare-fun e!2781047 () Bool)

(assert (=> d!1361935 (=> res!1852674 e!2781047)))

(assert (=> d!1361935 (= res!1852674 (not ((_ is Cons!50266) lt!1655459)))))

(assert (=> d!1361935 (= (noDuplicateKeys!1018 lt!1655459) e!2781047)))

(declare-fun b!4466100 () Bool)

(declare-fun e!2781048 () Bool)

(assert (=> b!4466100 (= e!2781047 e!2781048)))

(declare-fun res!1852675 () Bool)

(assert (=> b!4466100 (=> (not res!1852675) (not e!2781048))))

(assert (=> b!4466100 (= res!1852675 (not (containsKey!1450 (t!357340 lt!1655459) (_1!28547 (h!56023 lt!1655459)))))))

(declare-fun b!4466101 () Bool)

(assert (=> b!4466101 (= e!2781048 (noDuplicateKeys!1018 (t!357340 lt!1655459)))))

(assert (= (and d!1361935 (not res!1852674)) b!4466100))

(assert (= (and b!4466100 res!1852675) b!4466101))

(declare-fun m!5170887 () Bool)

(assert (=> b!4466100 m!5170887))

(declare-fun m!5170889 () Bool)

(assert (=> b!4466101 m!5170889))

(assert (=> d!1361853 d!1361935))

(declare-fun d!1361939 () Bool)

(declare-fun lt!1655898 () Bool)

(assert (=> d!1361939 (= lt!1655898 (select (content!8086 (toList!4043 lt!1655600)) lt!1655466))))

(declare-fun e!2781050 () Bool)

(assert (=> d!1361939 (= lt!1655898 e!2781050)))

(declare-fun res!1852676 () Bool)

(assert (=> d!1361939 (=> (not res!1852676) (not e!2781050))))

(assert (=> d!1361939 (= res!1852676 ((_ is Cons!50267) (toList!4043 lt!1655600)))))

(assert (=> d!1361939 (= (contains!12805 (toList!4043 lt!1655600) lt!1655466) lt!1655898)))

(declare-fun b!4466102 () Bool)

(declare-fun e!2781049 () Bool)

(assert (=> b!4466102 (= e!2781050 e!2781049)))

(declare-fun res!1852677 () Bool)

(assert (=> b!4466102 (=> res!1852677 e!2781049)))

(assert (=> b!4466102 (= res!1852677 (= (h!56024 (toList!4043 lt!1655600)) lt!1655466))))

(declare-fun b!4466103 () Bool)

(assert (=> b!4466103 (= e!2781049 (contains!12805 (t!357341 (toList!4043 lt!1655600)) lt!1655466))))

(assert (= (and d!1361939 res!1852676) b!4466102))

(assert (= (and b!4466102 (not res!1852677)) b!4466103))

(declare-fun m!5170891 () Bool)

(assert (=> d!1361939 m!5170891))

(declare-fun m!5170893 () Bool)

(assert (=> d!1361939 m!5170893))

(declare-fun m!5170895 () Bool)

(assert (=> b!4466103 m!5170895))

(assert (=> b!4465812 d!1361939))

(declare-fun d!1361941 () Bool)

(declare-fun lt!1655901 () Bool)

(assert (=> d!1361941 (= lt!1655901 (select (content!8085 (keys!17350 (extractMap!1074 lt!1655462))) key!3287))))

(declare-fun e!2781055 () Bool)

(assert (=> d!1361941 (= lt!1655901 e!2781055)))

(declare-fun res!1852683 () Bool)

(assert (=> d!1361941 (=> (not res!1852683) (not e!2781055))))

(assert (=> d!1361941 (= res!1852683 ((_ is Cons!50269) (keys!17350 (extractMap!1074 lt!1655462))))))

(assert (=> d!1361941 (= (contains!12809 (keys!17350 (extractMap!1074 lt!1655462)) key!3287) lt!1655901)))

(declare-fun b!4466108 () Bool)

(declare-fun e!2781056 () Bool)

(assert (=> b!4466108 (= e!2781055 e!2781056)))

(declare-fun res!1852682 () Bool)

(assert (=> b!4466108 (=> res!1852682 e!2781056)))

(assert (=> b!4466108 (= res!1852682 (= (h!56028 (keys!17350 (extractMap!1074 lt!1655462))) key!3287))))

(declare-fun b!4466109 () Bool)

(assert (=> b!4466109 (= e!2781056 (contains!12809 (t!357343 (keys!17350 (extractMap!1074 lt!1655462))) key!3287))))

(assert (= (and d!1361941 res!1852683) b!4466108))

(assert (= (and b!4466108 (not res!1852682)) b!4466109))

(assert (=> d!1361941 m!5170493))

(declare-fun m!5170897 () Bool)

(assert (=> d!1361941 m!5170897))

(declare-fun m!5170899 () Bool)

(assert (=> d!1361941 m!5170899))

(declare-fun m!5170901 () Bool)

(assert (=> b!4466109 m!5170901))

(assert (=> b!4465822 d!1361941))

(declare-fun b!4466137 () Bool)

(assert (=> b!4466137 true))

(declare-fun d!1361943 () Bool)

(declare-fun e!2781069 () Bool)

(assert (=> d!1361943 e!2781069))

(declare-fun res!1852696 () Bool)

(assert (=> d!1361943 (=> (not res!1852696) (not e!2781069))))

(declare-fun lt!1655906 () List!50393)

(declare-fun noDuplicate!693 (List!50393) Bool)

(assert (=> d!1361943 (= res!1852696 (noDuplicate!693 lt!1655906))))

(assert (=> d!1361943 (= lt!1655906 (getKeysList!369 (toList!4044 (extractMap!1074 lt!1655462))))))

(assert (=> d!1361943 (= (keys!17350 (extractMap!1074 lt!1655462)) lt!1655906)))

(declare-fun b!4466136 () Bool)

(declare-fun res!1852695 () Bool)

(assert (=> b!4466136 (=> (not res!1852695) (not e!2781069))))

(declare-fun length!242 (List!50393) Int)

(declare-fun length!243 (List!50390) Int)

(assert (=> b!4466136 (= res!1852695 (= (length!242 lt!1655906) (length!243 (toList!4044 (extractMap!1074 lt!1655462)))))))

(declare-fun res!1852694 () Bool)

(assert (=> b!4466137 (=> (not res!1852694) (not e!2781069))))

(declare-fun lambda!162725 () Int)

(declare-fun forall!9975 (List!50393 Int) Bool)

(assert (=> b!4466137 (= res!1852694 (forall!9975 lt!1655906 lambda!162725))))

(declare-fun lambda!162726 () Int)

(declare-fun b!4466138 () Bool)

(declare-fun map!11013 (List!50390 Int) List!50393)

(assert (=> b!4466138 (= e!2781069 (= (content!8085 lt!1655906) (content!8085 (map!11013 (toList!4044 (extractMap!1074 lt!1655462)) lambda!162726))))))

(assert (= (and d!1361943 res!1852696) b!4466136))

(assert (= (and b!4466136 res!1852695) b!4466137))

(assert (= (and b!4466137 res!1852694) b!4466138))

(declare-fun m!5170903 () Bool)

(assert (=> d!1361943 m!5170903))

(assert (=> d!1361943 m!5170481))

(declare-fun m!5170905 () Bool)

(assert (=> b!4466136 m!5170905))

(declare-fun m!5170907 () Bool)

(assert (=> b!4466136 m!5170907))

(declare-fun m!5170909 () Bool)

(assert (=> b!4466137 m!5170909))

(declare-fun m!5170911 () Bool)

(assert (=> b!4466138 m!5170911))

(declare-fun m!5170913 () Bool)

(assert (=> b!4466138 m!5170913))

(assert (=> b!4466138 m!5170913))

(declare-fun m!5170915 () Bool)

(assert (=> b!4466138 m!5170915))

(assert (=> b!4465822 d!1361943))

(assert (=> b!4465820 d!1361943))

(declare-fun bs!793153 () Bool)

(declare-fun b!4466207 () Bool)

(assert (= bs!793153 (and b!4466207 b!4466137)))

(declare-fun lambda!162738 () Int)

(assert (=> bs!793153 (= (= (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162738 lambda!162725))))

(assert (=> b!4466207 true))

(declare-fun bs!793155 () Bool)

(declare-fun b!4466204 () Bool)

(assert (= bs!793155 (and b!4466204 b!4466137)))

(declare-fun lambda!162739 () Int)

(assert (=> bs!793155 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162739 lambda!162725))))

(declare-fun bs!793156 () Bool)

(assert (= bs!793156 (and b!4466204 b!4466207)))

(assert (=> bs!793156 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162739 lambda!162738))))

(assert (=> b!4466204 true))

(declare-fun bs!793157 () Bool)

(declare-fun b!4466208 () Bool)

(assert (= bs!793157 (and b!4466208 b!4466137)))

(declare-fun lambda!162740 () Int)

(assert (=> bs!793157 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162740 lambda!162725))))

(declare-fun bs!793158 () Bool)

(assert (= bs!793158 (and b!4466208 b!4466207)))

(assert (=> bs!793158 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162740 lambda!162738))))

(declare-fun bs!793159 () Bool)

(assert (= bs!793159 (and b!4466208 b!4466204)))

(assert (=> bs!793159 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162740 lambda!162739))))

(assert (=> b!4466208 true))

(declare-fun bs!793161 () Bool)

(declare-fun b!4466206 () Bool)

(assert (= bs!793161 (and b!4466206 b!4466138)))

(declare-fun lambda!162741 () Int)

(assert (=> bs!793161 (= lambda!162741 lambda!162726)))

(declare-fun b!4466202 () Bool)

(declare-fun e!2781106 () Unit!87263)

(declare-fun Unit!87321 () Unit!87263)

(assert (=> b!4466202 (= e!2781106 Unit!87321)))

(declare-fun b!4466203 () Bool)

(declare-fun res!1852718 () Bool)

(declare-fun e!2781104 () Bool)

(assert (=> b!4466203 (=> (not res!1852718) (not e!2781104))))

(declare-fun lt!1655933 () List!50393)

(assert (=> b!4466203 (= res!1852718 (= (length!242 lt!1655933) (length!243 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))))

(declare-fun e!2781103 () List!50393)

(assert (=> b!4466204 (= e!2781103 (Cons!50269 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))))

(declare-fun c!760145 () Bool)

(assert (=> b!4466204 (= c!760145 (containsKey!1453 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))))

(declare-fun lt!1655939 () Unit!87263)

(declare-fun e!2781105 () Unit!87263)

(assert (=> b!4466204 (= lt!1655939 e!2781105)))

(declare-fun c!760146 () Bool)

(assert (=> b!4466204 (= c!760146 (contains!12809 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))))

(declare-fun lt!1655935 () Unit!87263)

(assert (=> b!4466204 (= lt!1655935 e!2781106)))

(declare-fun lt!1655934 () List!50393)

(assert (=> b!4466204 (= lt!1655934 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))))

(declare-fun lt!1655936 () Unit!87263)

(declare-fun lemmaForallContainsAddHeadPreserves!115 (List!50390 List!50393 tuple2!50506) Unit!87263)

(assert (=> b!4466204 (= lt!1655936 (lemmaForallContainsAddHeadPreserves!115 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) lt!1655934 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))))

(assert (=> b!4466204 (forall!9975 lt!1655934 lambda!162739)))

(declare-fun lt!1655938 () Unit!87263)

(assert (=> b!4466204 (= lt!1655938 lt!1655936)))

(declare-fun b!4466205 () Bool)

(declare-fun Unit!87322 () Unit!87263)

(assert (=> b!4466205 (= e!2781105 Unit!87322)))

(assert (=> b!4466206 (= e!2781104 (= (content!8085 lt!1655933) (content!8085 (map!11013 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) lambda!162741))))))

(assert (=> b!4466207 false))

(declare-fun lt!1655937 () Unit!87263)

(declare-fun forallContained!2246 (List!50393 Int K!11685) Unit!87263)

(assert (=> b!4466207 (= lt!1655937 (forallContained!2246 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) lambda!162738 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))))

(declare-fun Unit!87323 () Unit!87263)

(assert (=> b!4466207 (= e!2781106 Unit!87323)))

(declare-fun res!1852719 () Bool)

(assert (=> b!4466208 (=> (not res!1852719) (not e!2781104))))

(assert (=> b!4466208 (= res!1852719 (forall!9975 lt!1655933 lambda!162740))))

(declare-fun b!4466209 () Bool)

(assert (=> b!4466209 false))

(declare-fun Unit!87324 () Unit!87263)

(assert (=> b!4466209 (= e!2781105 Unit!87324)))

(declare-fun b!4466201 () Bool)

(assert (=> b!4466201 (= e!2781103 Nil!50269)))

(declare-fun d!1361945 () Bool)

(assert (=> d!1361945 e!2781104))

(declare-fun res!1852717 () Bool)

(assert (=> d!1361945 (=> (not res!1852717) (not e!2781104))))

(assert (=> d!1361945 (= res!1852717 (noDuplicate!693 lt!1655933))))

(assert (=> d!1361945 (= lt!1655933 e!2781103)))

(declare-fun c!760144 () Bool)

(assert (=> d!1361945 (= c!760144 ((_ is Cons!50266) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))

(assert (=> d!1361945 (invariantList!921 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))

(assert (=> d!1361945 (= (getKeysList!369 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) lt!1655933)))

(assert (= (and d!1361945 c!760144) b!4466204))

(assert (= (and d!1361945 (not c!760144)) b!4466201))

(assert (= (and b!4466204 c!760145) b!4466209))

(assert (= (and b!4466204 (not c!760145)) b!4466205))

(assert (= (and b!4466204 c!760146) b!4466207))

(assert (= (and b!4466204 (not c!760146)) b!4466202))

(assert (= (and d!1361945 res!1852717) b!4466203))

(assert (= (and b!4466203 res!1852718) b!4466208))

(assert (= (and b!4466208 res!1852719) b!4466206))

(declare-fun m!5170997 () Bool)

(assert (=> b!4466206 m!5170997))

(declare-fun m!5170999 () Bool)

(assert (=> b!4466206 m!5170999))

(assert (=> b!4466206 m!5170999))

(declare-fun m!5171001 () Bool)

(assert (=> b!4466206 m!5171001))

(declare-fun m!5171003 () Bool)

(assert (=> b!4466208 m!5171003))

(declare-fun m!5171005 () Bool)

(assert (=> b!4466203 m!5171005))

(declare-fun m!5171007 () Bool)

(assert (=> b!4466203 m!5171007))

(declare-fun m!5171009 () Bool)

(assert (=> b!4466204 m!5171009))

(declare-fun m!5171011 () Bool)

(assert (=> b!4466204 m!5171011))

(declare-fun m!5171013 () Bool)

(assert (=> b!4466204 m!5171013))

(assert (=> b!4466204 m!5171013))

(declare-fun m!5171015 () Bool)

(assert (=> b!4466204 m!5171015))

(declare-fun m!5171017 () Bool)

(assert (=> b!4466204 m!5171017))

(declare-fun m!5171019 () Bool)

(assert (=> d!1361945 m!5171019))

(assert (=> d!1361945 m!5170587))

(assert (=> b!4466207 m!5171013))

(assert (=> b!4466207 m!5171013))

(declare-fun m!5171021 () Bool)

(assert (=> b!4466207 m!5171021))

(assert (=> b!4465725 d!1361945))

(declare-fun d!1361975 () Bool)

(declare-fun res!1852721 () Bool)

(declare-fun e!2781111 () Bool)

(assert (=> d!1361975 (=> res!1852721 e!2781111)))

(declare-fun e!2781112 () Bool)

(assert (=> d!1361975 (= res!1852721 e!2781112)))

(declare-fun res!1852720 () Bool)

(assert (=> d!1361975 (=> (not res!1852720) (not e!2781112))))

(assert (=> d!1361975 (= res!1852720 ((_ is Cons!50267) (t!357341 lt!1655462)))))

(assert (=> d!1361975 (= (containsKeyBiggerList!18 (t!357341 lt!1655462) key!3287) e!2781111)))

(declare-fun b!4466220 () Bool)

(assert (=> b!4466220 (= e!2781112 (containsKey!1450 (_2!28548 (h!56024 (t!357341 lt!1655462))) key!3287))))

(declare-fun b!4466221 () Bool)

(declare-fun e!2781113 () Bool)

(assert (=> b!4466221 (= e!2781111 e!2781113)))

(declare-fun res!1852722 () Bool)

(assert (=> b!4466221 (=> (not res!1852722) (not e!2781113))))

(assert (=> b!4466221 (= res!1852722 ((_ is Cons!50267) (t!357341 lt!1655462)))))

(declare-fun b!4466222 () Bool)

(assert (=> b!4466222 (= e!2781113 (containsKeyBiggerList!18 (t!357341 (t!357341 lt!1655462)) key!3287))))

(assert (= (and d!1361975 res!1852720) b!4466220))

(assert (= (and d!1361975 (not res!1852721)) b!4466221))

(assert (= (and b!4466221 res!1852722) b!4466222))

(declare-fun m!5171023 () Bool)

(assert (=> b!4466220 m!5171023))

(declare-fun m!5171025 () Bool)

(assert (=> b!4466222 m!5171025))

(assert (=> b!4465622 d!1361975))

(declare-fun d!1361977 () Bool)

(declare-fun e!2781115 () Bool)

(assert (=> d!1361977 e!2781115))

(declare-fun res!1852723 () Bool)

(assert (=> d!1361977 (=> res!1852723 e!2781115)))

(declare-fun lt!1655943 () Bool)

(assert (=> d!1361977 (= res!1852723 (not lt!1655943))))

(declare-fun lt!1655946 () Bool)

(assert (=> d!1361977 (= lt!1655943 lt!1655946)))

(declare-fun lt!1655945 () Unit!87263)

(declare-fun e!2781114 () Unit!87263)

(assert (=> d!1361977 (= lt!1655945 e!2781114)))

(declare-fun c!760151 () Bool)

(assert (=> d!1361977 (= c!760151 lt!1655946)))

(assert (=> d!1361977 (= lt!1655946 (containsKey!1454 (toList!4043 lm!1477) (hash!2423 hashF!1107 key!3287)))))

(assert (=> d!1361977 (= (contains!12806 lm!1477 (hash!2423 hashF!1107 key!3287)) lt!1655943)))

(declare-fun b!4466223 () Bool)

(declare-fun lt!1655944 () Unit!87263)

(assert (=> b!4466223 (= e!2781114 lt!1655944)))

(assert (=> b!4466223 (= lt!1655944 (lemmaContainsKeyImpliesGetValueByKeyDefined!805 (toList!4043 lm!1477) (hash!2423 hashF!1107 key!3287)))))

(assert (=> b!4466223 (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) (hash!2423 hashF!1107 key!3287)))))

(declare-fun b!4466224 () Bool)

(declare-fun Unit!87325 () Unit!87263)

(assert (=> b!4466224 (= e!2781114 Unit!87325)))

(declare-fun b!4466225 () Bool)

(assert (=> b!4466225 (= e!2781115 (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) (hash!2423 hashF!1107 key!3287))))))

(assert (= (and d!1361977 c!760151) b!4466223))

(assert (= (and d!1361977 (not c!760151)) b!4466224))

(assert (= (and d!1361977 (not res!1852723)) b!4466225))

(assert (=> d!1361977 m!5170127))

(declare-fun m!5171027 () Bool)

(assert (=> d!1361977 m!5171027))

(assert (=> b!4466223 m!5170127))

(declare-fun m!5171029 () Bool)

(assert (=> b!4466223 m!5171029))

(assert (=> b!4466223 m!5170127))

(declare-fun m!5171031 () Bool)

(assert (=> b!4466223 m!5171031))

(assert (=> b!4466223 m!5171031))

(declare-fun m!5171033 () Bool)

(assert (=> b!4466223 m!5171033))

(assert (=> b!4466225 m!5170127))

(assert (=> b!4466225 m!5171031))

(assert (=> b!4466225 m!5171031))

(assert (=> b!4466225 m!5171033))

(assert (=> d!1361843 d!1361977))

(assert (=> d!1361843 d!1361745))

(declare-fun d!1361979 () Bool)

(assert (=> d!1361979 (contains!12806 lm!1477 (hash!2423 hashF!1107 key!3287))))

(assert (=> d!1361979 true))

(declare-fun _$27!1070 () Unit!87263)

(assert (=> d!1361979 (= (choose!28505 lm!1477 key!3287 hashF!1107) _$27!1070)))

(declare-fun bs!793162 () Bool)

(assert (= bs!793162 d!1361979))

(assert (=> bs!793162 m!5170127))

(assert (=> bs!793162 m!5170127))

(assert (=> bs!793162 m!5170537))

(assert (=> d!1361843 d!1361979))

(declare-fun d!1361983 () Bool)

(declare-fun res!1852724 () Bool)

(declare-fun e!2781118 () Bool)

(assert (=> d!1361983 (=> res!1852724 e!2781118)))

(assert (=> d!1361983 (= res!1852724 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1361983 (= (forall!9972 (toList!4043 lm!1477) lambda!162640) e!2781118)))

(declare-fun b!4466230 () Bool)

(declare-fun e!2781119 () Bool)

(assert (=> b!4466230 (= e!2781118 e!2781119)))

(declare-fun res!1852725 () Bool)

(assert (=> b!4466230 (=> (not res!1852725) (not e!2781119))))

(assert (=> b!4466230 (= res!1852725 (dynLambda!21002 lambda!162640 (h!56024 (toList!4043 lm!1477))))))

(declare-fun b!4466231 () Bool)

(assert (=> b!4466231 (= e!2781119 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162640))))

(assert (= (and d!1361983 (not res!1852724)) b!4466230))

(assert (= (and b!4466230 res!1852725) b!4466231))

(declare-fun b_lambda!148075 () Bool)

(assert (=> (not b_lambda!148075) (not b!4466230)))

(declare-fun m!5171037 () Bool)

(assert (=> b!4466230 m!5171037))

(declare-fun m!5171039 () Bool)

(assert (=> b!4466231 m!5171039))

(assert (=> d!1361843 d!1361983))

(declare-fun d!1361985 () Bool)

(declare-fun noDuplicatedKeys!208 (List!50390) Bool)

(assert (=> d!1361985 (= (invariantList!921 (toList!4044 lt!1655620)) (noDuplicatedKeys!208 (toList!4044 lt!1655620)))))

(declare-fun bs!793163 () Bool)

(assert (= bs!793163 d!1361985))

(declare-fun m!5171041 () Bool)

(assert (=> bs!793163 m!5171041))

(assert (=> d!1361829 d!1361985))

(declare-fun d!1361987 () Bool)

(declare-fun res!1852726 () Bool)

(declare-fun e!2781120 () Bool)

(assert (=> d!1361987 (=> res!1852726 e!2781120)))

(assert (=> d!1361987 (= res!1852726 ((_ is Nil!50267) (Cons!50267 lt!1655466 Nil!50267)))))

(assert (=> d!1361987 (= (forall!9972 (Cons!50267 lt!1655466 Nil!50267) lambda!162633) e!2781120)))

(declare-fun b!4466232 () Bool)

(declare-fun e!2781121 () Bool)

(assert (=> b!4466232 (= e!2781120 e!2781121)))

(declare-fun res!1852727 () Bool)

(assert (=> b!4466232 (=> (not res!1852727) (not e!2781121))))

(assert (=> b!4466232 (= res!1852727 (dynLambda!21002 lambda!162633 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))

(declare-fun b!4466233 () Bool)

(assert (=> b!4466233 (= e!2781121 (forall!9972 (t!357341 (Cons!50267 lt!1655466 Nil!50267)) lambda!162633))))

(assert (= (and d!1361987 (not res!1852726)) b!4466232))

(assert (= (and b!4466232 res!1852727) b!4466233))

(declare-fun b_lambda!148077 () Bool)

(assert (=> (not b_lambda!148077) (not b!4466232)))

(declare-fun m!5171043 () Bool)

(assert (=> b!4466232 m!5171043))

(declare-fun m!5171045 () Bool)

(assert (=> b!4466233 m!5171045))

(assert (=> d!1361829 d!1361987))

(declare-fun d!1361989 () Bool)

(assert (=> d!1361989 (= (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287)) (not (isEmpty!28474 (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))))

(declare-fun bs!793165 () Bool)

(assert (= bs!793165 d!1361989))

(assert (=> bs!793165 m!5170485))

(declare-fun m!5171051 () Bool)

(assert (=> bs!793165 m!5171051))

(assert (=> b!4465828 d!1361989))

(declare-fun b!4466236 () Bool)

(declare-fun e!2781123 () Option!10914)

(assert (=> b!4466236 (= e!2781123 (getValueByKey!900 (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) key!3287))))

(declare-fun b!4466235 () Bool)

(declare-fun e!2781122 () Option!10914)

(assert (=> b!4466235 (= e!2781122 e!2781123)))

(declare-fun c!760155 () Bool)

(assert (=> b!4466235 (= c!760155 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 lt!1655462))) (not (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462)))) key!3287))))))

(declare-fun b!4466237 () Bool)

(assert (=> b!4466237 (= e!2781123 None!10913)))

(declare-fun b!4466234 () Bool)

(assert (=> b!4466234 (= e!2781122 (Some!10913 (_2!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))))))))

(declare-fun d!1361993 () Bool)

(declare-fun c!760154 () Bool)

(assert (=> d!1361993 (= c!760154 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 lt!1655462))) (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462)))) key!3287)))))

(assert (=> d!1361993 (= (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287) e!2781122)))

(assert (= (and d!1361993 c!760154) b!4466234))

(assert (= (and d!1361993 (not c!760154)) b!4466235))

(assert (= (and b!4466235 c!760155) b!4466236))

(assert (= (and b!4466235 (not c!760155)) b!4466237))

(declare-fun m!5171053 () Bool)

(assert (=> b!4466236 m!5171053))

(assert (=> b!4465828 d!1361993))

(declare-fun d!1361995 () Bool)

(declare-fun res!1852728 () Bool)

(declare-fun e!2781124 () Bool)

(assert (=> d!1361995 (=> res!1852728 e!2781124)))

(assert (=> d!1361995 (= res!1852728 (and ((_ is Cons!50266) (_2!28548 (h!56024 lt!1655462))) (= (_1!28547 (h!56023 (_2!28548 (h!56024 lt!1655462)))) key!3287)))))

(assert (=> d!1361995 (= (containsKey!1450 (_2!28548 (h!56024 lt!1655462)) key!3287) e!2781124)))

(declare-fun b!4466238 () Bool)

(declare-fun e!2781125 () Bool)

(assert (=> b!4466238 (= e!2781124 e!2781125)))

(declare-fun res!1852729 () Bool)

(assert (=> b!4466238 (=> (not res!1852729) (not e!2781125))))

(assert (=> b!4466238 (= res!1852729 ((_ is Cons!50266) (_2!28548 (h!56024 lt!1655462))))))

(declare-fun b!4466239 () Bool)

(assert (=> b!4466239 (= e!2781125 (containsKey!1450 (t!357340 (_2!28548 (h!56024 lt!1655462))) key!3287))))

(assert (= (and d!1361995 (not res!1852728)) b!4466238))

(assert (= (and b!4466238 res!1852729) b!4466239))

(declare-fun m!5171055 () Bool)

(assert (=> b!4466239 m!5171055))

(assert (=> b!4465620 d!1361995))

(declare-fun d!1361997 () Bool)

(assert (=> d!1361997 (dynLambda!21002 lambda!162601 lt!1655457)))

(assert (=> d!1361997 true))

(declare-fun _$7!1666 () Unit!87263)

(assert (=> d!1361997 (= (choose!28506 (toList!4043 lm!1477) lambda!162601 lt!1655457) _$7!1666)))

(declare-fun b_lambda!148079 () Bool)

(assert (=> (not b_lambda!148079) (not d!1361997)))

(declare-fun bs!793166 () Bool)

(assert (= bs!793166 d!1361997))

(assert (=> bs!793166 m!5170547))

(assert (=> d!1361847 d!1361997))

(assert (=> d!1361847 d!1361735))

(declare-fun d!1361999 () Bool)

(declare-fun res!1852734 () Bool)

(declare-fun e!2781130 () Bool)

(assert (=> d!1361999 (=> res!1852734 e!2781130)))

(assert (=> d!1361999 (= res!1852734 ((_ is Nil!50266) newBucket!178))))

(assert (=> d!1361999 (= (forall!9974 newBucket!178 lambda!162631) e!2781130)))

(declare-fun b!4466244 () Bool)

(declare-fun e!2781131 () Bool)

(assert (=> b!4466244 (= e!2781130 e!2781131)))

(declare-fun res!1852735 () Bool)

(assert (=> b!4466244 (=> (not res!1852735) (not e!2781131))))

(declare-fun dynLambda!21003 (Int tuple2!50506) Bool)

(assert (=> b!4466244 (= res!1852735 (dynLambda!21003 lambda!162631 (h!56023 newBucket!178)))))

(declare-fun b!4466245 () Bool)

(assert (=> b!4466245 (= e!2781131 (forall!9974 (t!357340 newBucket!178) lambda!162631))))

(assert (= (and d!1361999 (not res!1852734)) b!4466244))

(assert (= (and b!4466244 res!1852735) b!4466245))

(declare-fun b_lambda!148081 () Bool)

(assert (=> (not b_lambda!148081) (not b!4466244)))

(declare-fun m!5171057 () Bool)

(assert (=> b!4466244 m!5171057))

(declare-fun m!5171059 () Bool)

(assert (=> b!4466245 m!5171059))

(assert (=> d!1361795 d!1361999))

(declare-fun d!1362001 () Bool)

(assert (=> d!1362001 (= (invariantList!921 (toList!4044 lt!1655624)) (noDuplicatedKeys!208 (toList!4044 lt!1655624)))))

(declare-fun bs!793167 () Bool)

(assert (= bs!793167 d!1362001))

(declare-fun m!5171061 () Bool)

(assert (=> bs!793167 m!5171061))

(assert (=> d!1361835 d!1362001))

(declare-fun d!1362003 () Bool)

(declare-fun res!1852736 () Bool)

(declare-fun e!2781132 () Bool)

(assert (=> d!1362003 (=> res!1852736 e!2781132)))

(assert (=> d!1362003 (= res!1852736 ((_ is Nil!50267) lt!1655462))))

(assert (=> d!1362003 (= (forall!9972 lt!1655462 lambda!162634) e!2781132)))

(declare-fun b!4466246 () Bool)

(declare-fun e!2781133 () Bool)

(assert (=> b!4466246 (= e!2781132 e!2781133)))

(declare-fun res!1852737 () Bool)

(assert (=> b!4466246 (=> (not res!1852737) (not e!2781133))))

(assert (=> b!4466246 (= res!1852737 (dynLambda!21002 lambda!162634 (h!56024 lt!1655462)))))

(declare-fun b!4466247 () Bool)

(assert (=> b!4466247 (= e!2781133 (forall!9972 (t!357341 lt!1655462) lambda!162634))))

(assert (= (and d!1362003 (not res!1852736)) b!4466246))

(assert (= (and b!4466246 res!1852737) b!4466247))

(declare-fun b_lambda!148083 () Bool)

(assert (=> (not b_lambda!148083) (not b!4466246)))

(declare-fun m!5171063 () Bool)

(assert (=> b!4466246 m!5171063))

(declare-fun m!5171065 () Bool)

(assert (=> b!4466247 m!5171065))

(assert (=> d!1361835 d!1362003))

(declare-fun d!1362005 () Bool)

(declare-fun res!1852738 () Bool)

(declare-fun e!2781134 () Bool)

(assert (=> d!1362005 (=> res!1852738 e!2781134)))

(assert (=> d!1362005 (= res!1852738 (and ((_ is Cons!50266) (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477))))) (= (_1!28547 (h!56023 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))))) key!3287)))))

(assert (=> d!1362005 (= (containsKey!1450 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))) key!3287) e!2781134)))

(declare-fun b!4466248 () Bool)

(declare-fun e!2781135 () Bool)

(assert (=> b!4466248 (= e!2781134 e!2781135)))

(declare-fun res!1852739 () Bool)

(assert (=> b!4466248 (=> (not res!1852739) (not e!2781135))))

(assert (=> b!4466248 (= res!1852739 ((_ is Cons!50266) (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(declare-fun b!4466249 () Bool)

(assert (=> b!4466249 (= e!2781135 (containsKey!1450 (t!357340 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477))))) key!3287))))

(assert (= (and d!1362005 (not res!1852738)) b!4466248))

(assert (= (and b!4466248 res!1852739) b!4466249))

(declare-fun m!5171067 () Bool)

(assert (=> b!4466249 m!5171067))

(assert (=> b!4465838 d!1362005))

(declare-fun d!1362007 () Bool)

(declare-fun lt!1655950 () Bool)

(assert (=> d!1362007 (= lt!1655950 (select (content!8086 (t!357341 (toList!4043 lm!1477))) lt!1655457))))

(declare-fun e!2781137 () Bool)

(assert (=> d!1362007 (= lt!1655950 e!2781137)))

(declare-fun res!1852740 () Bool)

(assert (=> d!1362007 (=> (not res!1852740) (not e!2781137))))

(assert (=> d!1362007 (= res!1852740 ((_ is Cons!50267) (t!357341 (toList!4043 lm!1477))))))

(assert (=> d!1362007 (= (contains!12805 (t!357341 (toList!4043 lm!1477)) lt!1655457) lt!1655950)))

(declare-fun b!4466250 () Bool)

(declare-fun e!2781136 () Bool)

(assert (=> b!4466250 (= e!2781137 e!2781136)))

(declare-fun res!1852741 () Bool)

(assert (=> b!4466250 (=> res!1852741 e!2781136)))

(assert (=> b!4466250 (= res!1852741 (= (h!56024 (t!357341 (toList!4043 lm!1477))) lt!1655457))))

(declare-fun b!4466251 () Bool)

(assert (=> b!4466251 (= e!2781136 (contains!12805 (t!357341 (t!357341 (toList!4043 lm!1477))) lt!1655457))))

(assert (= (and d!1362007 res!1852740) b!4466250))

(assert (= (and b!4466250 (not res!1852741)) b!4466251))

(declare-fun m!5171069 () Bool)

(assert (=> d!1362007 m!5171069))

(declare-fun m!5171071 () Bool)

(assert (=> d!1362007 m!5171071))

(declare-fun m!5171073 () Bool)

(assert (=> b!4466251 m!5171073))

(assert (=> b!4465871 d!1362007))

(assert (=> b!4465841 d!1361855))

(declare-fun d!1362009 () Bool)

(assert (=> d!1362009 (= (invariantList!921 (toList!4044 lt!1655604)) (noDuplicatedKeys!208 (toList!4044 lt!1655604)))))

(declare-fun bs!793168 () Bool)

(assert (= bs!793168 d!1362009))

(declare-fun m!5171075 () Bool)

(assert (=> bs!793168 m!5171075))

(assert (=> d!1361821 d!1362009))

(declare-fun d!1362011 () Bool)

(declare-fun res!1852742 () Bool)

(declare-fun e!2781138 () Bool)

(assert (=> d!1362011 (=> res!1852742 e!2781138)))

(assert (=> d!1362011 (= res!1852742 ((_ is Nil!50267) (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))

(assert (=> d!1362011 (= (forall!9972 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267) lambda!162632) e!2781138)))

(declare-fun b!4466252 () Bool)

(declare-fun e!2781139 () Bool)

(assert (=> b!4466252 (= e!2781138 e!2781139)))

(declare-fun res!1852743 () Bool)

(assert (=> b!4466252 (=> (not res!1852743) (not e!2781139))))

(assert (=> b!4466252 (= res!1852743 (dynLambda!21002 lambda!162632 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(declare-fun b!4466253 () Bool)

(assert (=> b!4466253 (= e!2781139 (forall!9972 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) lambda!162632))))

(assert (= (and d!1362011 (not res!1852742)) b!4466252))

(assert (= (and b!4466252 res!1852743) b!4466253))

(declare-fun b_lambda!148085 () Bool)

(assert (=> (not b_lambda!148085) (not b!4466252)))

(declare-fun m!5171077 () Bool)

(assert (=> b!4466252 m!5171077))

(declare-fun m!5171079 () Bool)

(assert (=> b!4466253 m!5171079))

(assert (=> d!1361821 d!1362011))

(declare-fun d!1362013 () Bool)

(declare-fun choose!28514 (Hashable!5413 K!11685) (_ BitVec 64))

(assert (=> d!1362013 (= (hash!2427 hashF!1107 key!3287) (choose!28514 hashF!1107 key!3287))))

(declare-fun bs!793169 () Bool)

(assert (= bs!793169 d!1362013))

(declare-fun m!5171081 () Bool)

(assert (=> bs!793169 m!5171081))

(assert (=> d!1361745 d!1362013))

(declare-fun b!4466254 () Bool)

(declare-fun e!2781141 () List!50390)

(assert (=> b!4466254 (= e!2781141 (t!357340 (t!357340 lt!1655459)))))

(declare-fun b!4466255 () Bool)

(declare-fun e!2781140 () List!50390)

(assert (=> b!4466255 (= e!2781141 e!2781140)))

(declare-fun c!760156 () Bool)

(assert (=> b!4466255 (= c!760156 ((_ is Cons!50266) (t!357340 lt!1655459)))))

(declare-fun b!4466257 () Bool)

(assert (=> b!4466257 (= e!2781140 Nil!50266)))

(declare-fun d!1362015 () Bool)

(declare-fun lt!1655951 () List!50390)

(assert (=> d!1362015 (not (containsKey!1450 lt!1655951 key!3287))))

(assert (=> d!1362015 (= lt!1655951 e!2781141)))

(declare-fun c!760157 () Bool)

(assert (=> d!1362015 (= c!760157 (and ((_ is Cons!50266) (t!357340 lt!1655459)) (= (_1!28547 (h!56023 (t!357340 lt!1655459))) key!3287)))))

(assert (=> d!1362015 (noDuplicateKeys!1018 (t!357340 lt!1655459))))

(assert (=> d!1362015 (= (removePairForKey!645 (t!357340 lt!1655459) key!3287) lt!1655951)))

(declare-fun b!4466256 () Bool)

(assert (=> b!4466256 (= e!2781140 (Cons!50266 (h!56023 (t!357340 lt!1655459)) (removePairForKey!645 (t!357340 (t!357340 lt!1655459)) key!3287)))))

(assert (= (and d!1362015 c!760157) b!4466254))

(assert (= (and d!1362015 (not c!760157)) b!4466255))

(assert (= (and b!4466255 c!760156) b!4466256))

(assert (= (and b!4466255 (not c!760156)) b!4466257))

(declare-fun m!5171083 () Bool)

(assert (=> d!1362015 m!5171083))

(assert (=> d!1362015 m!5170889))

(declare-fun m!5171085 () Bool)

(assert (=> b!4466256 m!5171085))

(assert (=> b!4465864 d!1362015))

(declare-fun d!1362017 () Bool)

(assert (=> d!1362017 (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) lt!1655464))))

(declare-fun lt!1655954 () Unit!87263)

(declare-fun choose!28515 (List!50391 (_ BitVec 64)) Unit!87263)

(assert (=> d!1362017 (= lt!1655954 (choose!28515 (toList!4043 lm!1477) lt!1655464))))

(declare-fun e!2781144 () Bool)

(assert (=> d!1362017 e!2781144))

(declare-fun res!1852746 () Bool)

(assert (=> d!1362017 (=> (not res!1852746) (not e!2781144))))

(assert (=> d!1362017 (= res!1852746 (isStrictlySorted!335 (toList!4043 lm!1477)))))

(assert (=> d!1362017 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!805 (toList!4043 lm!1477) lt!1655464) lt!1655954)))

(declare-fun b!4466260 () Bool)

(assert (=> b!4466260 (= e!2781144 (containsKey!1454 (toList!4043 lm!1477) lt!1655464))))

(assert (= (and d!1362017 res!1852746) b!4466260))

(assert (=> d!1362017 m!5170559))

(assert (=> d!1362017 m!5170559))

(assert (=> d!1362017 m!5170561))

(declare-fun m!5171087 () Bool)

(assert (=> d!1362017 m!5171087))

(assert (=> d!1362017 m!5170193))

(assert (=> b!4466260 m!5170555))

(assert (=> b!4465851 d!1362017))

(declare-fun d!1362019 () Bool)

(declare-fun isEmpty!28475 (Option!10915) Bool)

(assert (=> d!1362019 (= (isDefined!8202 (getValueByKey!901 (toList!4043 lm!1477) lt!1655464)) (not (isEmpty!28475 (getValueByKey!901 (toList!4043 lm!1477) lt!1655464))))))

(declare-fun bs!793170 () Bool)

(assert (= bs!793170 d!1362019))

(assert (=> bs!793170 m!5170559))

(declare-fun m!5171089 () Bool)

(assert (=> bs!793170 m!5171089))

(assert (=> b!4465851 d!1362019))

(declare-fun b!4466261 () Bool)

(declare-fun e!2781145 () Option!10915)

(assert (=> b!4466261 (= e!2781145 (Some!10914 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(declare-fun b!4466264 () Bool)

(declare-fun e!2781146 () Option!10915)

(assert (=> b!4466264 (= e!2781146 None!10914)))

(declare-fun b!4466263 () Bool)

(assert (=> b!4466263 (= e!2781146 (getValueByKey!901 (t!357341 (toList!4043 lm!1477)) lt!1655464))))

(declare-fun b!4466262 () Bool)

(assert (=> b!4466262 (= e!2781145 e!2781146)))

(declare-fun c!760159 () Bool)

(assert (=> b!4466262 (= c!760159 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (not (= (_1!28548 (h!56024 (toList!4043 lm!1477))) lt!1655464))))))

(declare-fun d!1362021 () Bool)

(declare-fun c!760158 () Bool)

(assert (=> d!1362021 (= c!760158 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (= (_1!28548 (h!56024 (toList!4043 lm!1477))) lt!1655464)))))

(assert (=> d!1362021 (= (getValueByKey!901 (toList!4043 lm!1477) lt!1655464) e!2781145)))

(assert (= (and d!1362021 c!760158) b!4466261))

(assert (= (and d!1362021 (not c!760158)) b!4466262))

(assert (= (and b!4466262 c!760159) b!4466263))

(assert (= (and b!4466262 (not c!760159)) b!4466264))

(declare-fun m!5171091 () Bool)

(assert (=> b!4466263 m!5171091))

(assert (=> b!4465851 d!1362021))

(declare-fun d!1362023 () Bool)

(declare-fun lt!1655955 () Bool)

(assert (=> d!1362023 (= lt!1655955 (select (content!8085 (keys!17350 (extractMap!1074 (toList!4043 lm!1477)))) key!3287))))

(declare-fun e!2781147 () Bool)

(assert (=> d!1362023 (= lt!1655955 e!2781147)))

(declare-fun res!1852748 () Bool)

(assert (=> d!1362023 (=> (not res!1852748) (not e!2781147))))

(assert (=> d!1362023 (= res!1852748 ((_ is Cons!50269) (keys!17350 (extractMap!1074 (toList!4043 lm!1477)))))))

(assert (=> d!1362023 (= (contains!12809 (keys!17350 (extractMap!1074 (toList!4043 lm!1477))) key!3287) lt!1655955)))

(declare-fun b!4466265 () Bool)

(declare-fun e!2781148 () Bool)

(assert (=> b!4466265 (= e!2781147 e!2781148)))

(declare-fun res!1852747 () Bool)

(assert (=> b!4466265 (=> res!1852747 e!2781148)))

(assert (=> b!4466265 (= res!1852747 (= (h!56028 (keys!17350 (extractMap!1074 (toList!4043 lm!1477)))) key!3287))))

(declare-fun b!4466266 () Bool)

(assert (=> b!4466266 (= e!2781148 (contains!12809 (t!357343 (keys!17350 (extractMap!1074 (toList!4043 lm!1477)))) key!3287))))

(assert (= (and d!1362023 res!1852748) b!4466265))

(assert (= (and b!4466265 (not res!1852747)) b!4466266))

(assert (=> d!1362023 m!5170331))

(declare-fun m!5171093 () Bool)

(assert (=> d!1362023 m!5171093))

(declare-fun m!5171095 () Bool)

(assert (=> d!1362023 m!5171095))

(declare-fun m!5171097 () Bool)

(assert (=> b!4466266 m!5171097))

(assert (=> b!4465723 d!1362023))

(declare-fun bs!793171 () Bool)

(declare-fun b!4466268 () Bool)

(assert (= bs!793171 (and b!4466268 b!4466137)))

(declare-fun lambda!162742 () Int)

(assert (=> bs!793171 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162742 lambda!162725))))

(declare-fun bs!793172 () Bool)

(assert (= bs!793172 (and b!4466268 b!4466207)))

(assert (=> bs!793172 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162742 lambda!162738))))

(declare-fun bs!793173 () Bool)

(assert (= bs!793173 (and b!4466268 b!4466204)))

(assert (=> bs!793173 (= (= (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162742 lambda!162739))))

(declare-fun bs!793174 () Bool)

(assert (= bs!793174 (and b!4466268 b!4466208)))

(assert (=> bs!793174 (= lambda!162742 lambda!162740)))

(assert (=> b!4466268 true))

(declare-fun bs!793175 () Bool)

(declare-fun b!4466269 () Bool)

(assert (= bs!793175 (and b!4466269 b!4466138)))

(declare-fun lambda!162743 () Int)

(assert (=> bs!793175 (= lambda!162743 lambda!162726)))

(declare-fun bs!793176 () Bool)

(assert (= bs!793176 (and b!4466269 b!4466206)))

(assert (=> bs!793176 (= lambda!162743 lambda!162741)))

(declare-fun d!1362025 () Bool)

(declare-fun e!2781149 () Bool)

(assert (=> d!1362025 e!2781149))

(declare-fun res!1852751 () Bool)

(assert (=> d!1362025 (=> (not res!1852751) (not e!2781149))))

(declare-fun lt!1655956 () List!50393)

(assert (=> d!1362025 (= res!1852751 (noDuplicate!693 lt!1655956))))

(assert (=> d!1362025 (= lt!1655956 (getKeysList!369 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))

(assert (=> d!1362025 (= (keys!17350 (extractMap!1074 (toList!4043 lm!1477))) lt!1655956)))

(declare-fun b!4466267 () Bool)

(declare-fun res!1852750 () Bool)

(assert (=> b!4466267 (=> (not res!1852750) (not e!2781149))))

(assert (=> b!4466267 (= res!1852750 (= (length!242 lt!1655956) (length!243 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))))

(declare-fun res!1852749 () Bool)

(assert (=> b!4466268 (=> (not res!1852749) (not e!2781149))))

(assert (=> b!4466268 (= res!1852749 (forall!9975 lt!1655956 lambda!162742))))

(assert (=> b!4466269 (= e!2781149 (= (content!8085 lt!1655956) (content!8085 (map!11013 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) lambda!162743))))))

(assert (= (and d!1362025 res!1852751) b!4466267))

(assert (= (and b!4466267 res!1852750) b!4466268))

(assert (= (and b!4466268 res!1852749) b!4466269))

(declare-fun m!5171099 () Bool)

(assert (=> d!1362025 m!5171099))

(assert (=> d!1362025 m!5170317))

(declare-fun m!5171101 () Bool)

(assert (=> b!4466267 m!5171101))

(assert (=> b!4466267 m!5171007))

(declare-fun m!5171103 () Bool)

(assert (=> b!4466268 m!5171103))

(declare-fun m!5171105 () Bool)

(assert (=> b!4466269 m!5171105))

(declare-fun m!5171107 () Bool)

(assert (=> b!4466269 m!5171107))

(assert (=> b!4466269 m!5171107))

(declare-fun m!5171109 () Bool)

(assert (=> b!4466269 m!5171109))

(assert (=> b!4465723 d!1362025))

(declare-fun bs!793177 () Bool)

(declare-fun b!4466272 () Bool)

(assert (= bs!793177 (and b!4466272 b!4466041)))

(declare-fun lambda!162744 () Int)

(assert (=> bs!793177 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162744 lambda!162717))))

(declare-fun bs!793178 () Bool)

(assert (= bs!793178 (and b!4466272 d!1361795)))

(assert (=> bs!793178 (not (= lambda!162744 lambda!162631))))

(declare-fun bs!793179 () Bool)

(assert (= bs!793179 (and b!4466272 b!4466042)))

(assert (=> bs!793179 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162744 lambda!162716))))

(assert (=> bs!793177 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655881) (= lambda!162744 lambda!162718))))

(declare-fun bs!793180 () Bool)

(assert (= bs!793180 (and b!4466272 d!1361877)))

(assert (=> bs!793180 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655885) (= lambda!162744 lambda!162719))))

(assert (=> b!4466272 true))

(declare-fun bs!793181 () Bool)

(declare-fun b!4466271 () Bool)

(assert (= bs!793181 (and b!4466271 b!4466041)))

(declare-fun lambda!162745 () Int)

(assert (=> bs!793181 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162745 lambda!162717))))

(declare-fun bs!793182 () Bool)

(assert (= bs!793182 (and b!4466271 d!1361795)))

(assert (=> bs!793182 (not (= lambda!162745 lambda!162631))))

(declare-fun bs!793183 () Bool)

(assert (= bs!793183 (and b!4466271 b!4466272)))

(assert (=> bs!793183 (= lambda!162745 lambda!162744)))

(declare-fun bs!793184 () Bool)

(assert (= bs!793184 (and b!4466271 b!4466042)))

(assert (=> bs!793184 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162745 lambda!162716))))

(assert (=> bs!793181 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655881) (= lambda!162745 lambda!162718))))

(declare-fun bs!793185 () Bool)

(assert (= bs!793185 (and b!4466271 d!1361877)))

(assert (=> bs!793185 (= (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655885) (= lambda!162745 lambda!162719))))

(assert (=> b!4466271 true))

(declare-fun lt!1655973 () ListMap!3305)

(declare-fun lambda!162748 () Int)

(assert (=> bs!793181 (= (= lt!1655973 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162748 lambda!162717))))

(assert (=> b!4466271 (= (= lt!1655973 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162748 lambda!162745))))

(assert (=> bs!793182 (not (= lambda!162748 lambda!162631))))

(assert (=> bs!793183 (= (= lt!1655973 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162748 lambda!162744))))

(assert (=> bs!793184 (= (= lt!1655973 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162748 lambda!162716))))

(assert (=> bs!793181 (= (= lt!1655973 lt!1655881) (= lambda!162748 lambda!162718))))

(assert (=> bs!793185 (= (= lt!1655973 lt!1655885) (= lambda!162748 lambda!162719))))

(assert (=> b!4466271 true))

(declare-fun bs!793186 () Bool)

(declare-fun d!1362027 () Bool)

(assert (= bs!793186 (and d!1362027 b!4466041)))

(declare-fun lt!1655977 () ListMap!3305)

(declare-fun lambda!162751 () Int)

(assert (=> bs!793186 (= (= lt!1655977 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162751 lambda!162717))))

(declare-fun bs!793187 () Bool)

(assert (= bs!793187 (and d!1362027 b!4466271)))

(assert (=> bs!793187 (= (= lt!1655977 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162751 lambda!162745))))

(declare-fun bs!793188 () Bool)

(assert (= bs!793188 (and d!1362027 d!1361795)))

(assert (=> bs!793188 (not (= lambda!162751 lambda!162631))))

(declare-fun bs!793189 () Bool)

(assert (= bs!793189 (and d!1362027 b!4466272)))

(assert (=> bs!793189 (= (= lt!1655977 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162751 lambda!162744))))

(declare-fun bs!793190 () Bool)

(assert (= bs!793190 (and d!1362027 b!4466042)))

(assert (=> bs!793190 (= (= lt!1655977 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162751 lambda!162716))))

(assert (=> bs!793186 (= (= lt!1655977 lt!1655881) (= lambda!162751 lambda!162718))))

(assert (=> bs!793187 (= (= lt!1655977 lt!1655973) (= lambda!162751 lambda!162748))))

(declare-fun bs!793191 () Bool)

(assert (= bs!793191 (and d!1362027 d!1361877)))

(assert (=> bs!793191 (= (= lt!1655977 lt!1655885) (= lambda!162751 lambda!162719))))

(assert (=> d!1362027 true))

(declare-fun b!4466270 () Bool)

(declare-fun res!1852753 () Bool)

(declare-fun e!2781151 () Bool)

(assert (=> b!4466270 (=> (not res!1852753) (not e!2781151))))

(assert (=> b!4466270 (= res!1852753 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lambda!162751))))

(declare-fun bm!310916 () Bool)

(declare-fun call!310923 () Unit!87263)

(assert (=> bm!310916 (= call!310923 (lemmaContainsAllItsOwnKeys!263 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun call!310922 () Bool)

(declare-fun bm!310917 () Bool)

(declare-fun c!760160 () Bool)

(assert (=> bm!310917 (= call!310922 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (ite c!760160 lambda!162744 lambda!162745)))))

(declare-fun e!2781152 () ListMap!3305)

(assert (=> b!4466271 (= e!2781152 lt!1655973)))

(declare-fun lt!1655965 () ListMap!3305)

(assert (=> b!4466271 (= lt!1655965 (+!1358 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(assert (=> b!4466271 (= lt!1655973 (addToMapMapFromBucket!583 (t!357340 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (+!1358 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(declare-fun lt!1655957 () Unit!87263)

(assert (=> b!4466271 (= lt!1655957 call!310923)))

(assert (=> b!4466271 call!310922))

(declare-fun lt!1655971 () Unit!87263)

(assert (=> b!4466271 (= lt!1655971 lt!1655957)))

(assert (=> b!4466271 (forall!9974 (toList!4044 lt!1655965) lambda!162748)))

(declare-fun lt!1655975 () Unit!87263)

(declare-fun Unit!87329 () Unit!87263)

(assert (=> b!4466271 (= lt!1655975 Unit!87329)))

(assert (=> b!4466271 (forall!9974 (t!357340 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lambda!162748)))

(declare-fun lt!1655960 () Unit!87263)

(declare-fun Unit!87330 () Unit!87263)

(assert (=> b!4466271 (= lt!1655960 Unit!87330)))

(declare-fun lt!1655972 () Unit!87263)

(declare-fun Unit!87331 () Unit!87263)

(assert (=> b!4466271 (= lt!1655972 Unit!87331)))

(declare-fun lt!1655976 () Unit!87263)

(assert (=> b!4466271 (= lt!1655976 (forallContained!2245 (toList!4044 lt!1655965) lambda!162748 (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(assert (=> b!4466271 (contains!12807 lt!1655965 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun lt!1655958 () Unit!87263)

(declare-fun Unit!87332 () Unit!87263)

(assert (=> b!4466271 (= lt!1655958 Unit!87332)))

(assert (=> b!4466271 (contains!12807 lt!1655973 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun lt!1655970 () Unit!87263)

(declare-fun Unit!87333 () Unit!87263)

(assert (=> b!4466271 (= lt!1655970 Unit!87333)))

(assert (=> b!4466271 (forall!9974 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lambda!162748)))

(declare-fun lt!1655966 () Unit!87263)

(declare-fun Unit!87334 () Unit!87263)

(assert (=> b!4466271 (= lt!1655966 Unit!87334)))

(assert (=> b!4466271 (forall!9974 (toList!4044 lt!1655965) lambda!162748)))

(declare-fun lt!1655974 () Unit!87263)

(declare-fun Unit!87335 () Unit!87263)

(assert (=> b!4466271 (= lt!1655974 Unit!87335)))

(declare-fun lt!1655963 () Unit!87263)

(declare-fun Unit!87336 () Unit!87263)

(assert (=> b!4466271 (= lt!1655963 Unit!87336)))

(declare-fun lt!1655961 () Unit!87263)

(assert (=> b!4466271 (= lt!1655961 (addForallContainsKeyThenBeforeAdding!262 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655973 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))) (_2!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(assert (=> b!4466271 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lambda!162748)))

(declare-fun lt!1655964 () Unit!87263)

(assert (=> b!4466271 (= lt!1655964 lt!1655961)))

(assert (=> b!4466271 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lambda!162748)))

(declare-fun lt!1655967 () Unit!87263)

(declare-fun Unit!87337 () Unit!87263)

(assert (=> b!4466271 (= lt!1655967 Unit!87337)))

(declare-fun res!1852752 () Bool)

(declare-fun call!310921 () Bool)

(assert (=> b!4466271 (= res!1852752 call!310921)))

(declare-fun e!2781150 () Bool)

(assert (=> b!4466271 (=> (not res!1852752) (not e!2781150))))

(assert (=> b!4466271 e!2781150))

(declare-fun lt!1655969 () Unit!87263)

(declare-fun Unit!87338 () Unit!87263)

(assert (=> b!4466271 (= lt!1655969 Unit!87338)))

(declare-fun bm!310918 () Bool)

(assert (=> bm!310918 (= call!310921 (forall!9974 (ite c!760160 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (ite c!760160 lambda!162744 lambda!162748)))))

(assert (=> b!4466272 (= e!2781152 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(declare-fun lt!1655959 () Unit!87263)

(assert (=> b!4466272 (= lt!1655959 call!310923)))

(assert (=> b!4466272 call!310921))

(declare-fun lt!1655962 () Unit!87263)

(assert (=> b!4466272 (= lt!1655962 lt!1655959)))

(assert (=> b!4466272 call!310922))

(declare-fun lt!1655968 () Unit!87263)

(declare-fun Unit!87339 () Unit!87263)

(assert (=> b!4466272 (= lt!1655968 Unit!87339)))

(assert (=> d!1362027 e!2781151))

(declare-fun res!1852754 () Bool)

(assert (=> d!1362027 (=> (not res!1852754) (not e!2781151))))

(assert (=> d!1362027 (= res!1852754 (forall!9974 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lambda!162751))))

(assert (=> d!1362027 (= lt!1655977 e!2781152)))

(assert (=> d!1362027 (= c!760160 ((_ is Nil!50266) (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(assert (=> d!1362027 (noDuplicateKeys!1018 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(assert (=> d!1362027 (= (addToMapMapFromBucket!583 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lt!1655977)))

(declare-fun b!4466273 () Bool)

(assert (=> b!4466273 (= e!2781151 (invariantList!921 (toList!4044 lt!1655977)))))

(declare-fun b!4466274 () Bool)

(assert (=> b!4466274 (= e!2781150 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lambda!162748))))

(assert (= (and d!1362027 c!760160) b!4466272))

(assert (= (and d!1362027 (not c!760160)) b!4466271))

(assert (= (and b!4466271 res!1852752) b!4466274))

(assert (= (or b!4466272 b!4466271) bm!310917))

(assert (= (or b!4466272 b!4466271) bm!310918))

(assert (= (or b!4466272 b!4466271) bm!310916))

(assert (= (and d!1362027 res!1852754) b!4466270))

(assert (= (and b!4466270 res!1852753) b!4466273))

(declare-fun m!5171111 () Bool)

(assert (=> d!1362027 m!5171111))

(declare-fun m!5171113 () Bool)

(assert (=> d!1362027 m!5171113))

(declare-fun m!5171115 () Bool)

(assert (=> b!4466271 m!5171115))

(declare-fun m!5171117 () Bool)

(assert (=> b!4466271 m!5171117))

(declare-fun m!5171119 () Bool)

(assert (=> b!4466271 m!5171119))

(declare-fun m!5171121 () Bool)

(assert (=> b!4466271 m!5171121))

(declare-fun m!5171123 () Bool)

(assert (=> b!4466271 m!5171123))

(declare-fun m!5171125 () Bool)

(assert (=> b!4466271 m!5171125))

(declare-fun m!5171127 () Bool)

(assert (=> b!4466271 m!5171127))

(declare-fun m!5171129 () Bool)

(assert (=> b!4466271 m!5171129))

(declare-fun m!5171131 () Bool)

(assert (=> b!4466271 m!5171131))

(assert (=> b!4466271 m!5170451))

(assert (=> b!4466271 m!5171115))

(assert (=> b!4466271 m!5171119))

(assert (=> b!4466271 m!5171121))

(assert (=> b!4466271 m!5170451))

(declare-fun m!5171133 () Bool)

(assert (=> b!4466271 m!5171133))

(declare-fun m!5171135 () Bool)

(assert (=> b!4466273 m!5171135))

(declare-fun m!5171137 () Bool)

(assert (=> bm!310918 m!5171137))

(declare-fun m!5171139 () Bool)

(assert (=> b!4466270 m!5171139))

(assert (=> b!4466274 m!5171121))

(declare-fun m!5171141 () Bool)

(assert (=> bm!310917 m!5171141))

(assert (=> bm!310916 m!5170451))

(declare-fun m!5171143 () Bool)

(assert (=> bm!310916 m!5171143))

(assert (=> b!4465813 d!1362027))

(declare-fun bs!793192 () Bool)

(declare-fun d!1362029 () Bool)

(assert (= bs!793192 (and d!1362029 d!1361843)))

(declare-fun lambda!162756 () Int)

(assert (=> bs!793192 (= lambda!162756 lambda!162640)))

(declare-fun bs!793193 () Bool)

(assert (= bs!793193 (and d!1362029 d!1361747)))

(assert (=> bs!793193 (= lambda!162756 lambda!162608)))

(declare-fun bs!793194 () Bool)

(assert (= bs!793194 (and d!1362029 d!1361857)))

(assert (=> bs!793194 (not (= lambda!162756 lambda!162643))))

(declare-fun bs!793195 () Bool)

(assert (= bs!793195 (and d!1362029 d!1361821)))

(assert (=> bs!793195 (= lambda!162756 lambda!162632)))

(declare-fun bs!793196 () Bool)

(assert (= bs!793196 (and d!1362029 start!438344)))

(assert (=> bs!793196 (= lambda!162756 lambda!162601)))

(declare-fun bs!793197 () Bool)

(assert (= bs!793197 (and d!1362029 d!1361783)))

(assert (=> bs!793197 (= lambda!162756 lambda!162626)))

(declare-fun bs!793198 () Bool)

(assert (= bs!793198 (and d!1362029 d!1361923)))

(assert (=> bs!793198 (= lambda!162756 lambda!162720)))

(declare-fun bs!793199 () Bool)

(assert (= bs!793199 (and d!1362029 d!1361829)))

(assert (=> bs!793199 (= lambda!162756 lambda!162633)))

(declare-fun bs!793200 () Bool)

(assert (= bs!793200 (and d!1362029 d!1361837)))

(assert (=> bs!793200 (= lambda!162756 lambda!162637)))

(declare-fun bs!793201 () Bool)

(assert (= bs!793201 (and d!1362029 d!1361835)))

(assert (=> bs!793201 (= lambda!162756 lambda!162634)))

(declare-fun lt!1655992 () ListMap!3305)

(assert (=> d!1362029 (invariantList!921 (toList!4044 lt!1655992))))

(declare-fun e!2781161 () ListMap!3305)

(assert (=> d!1362029 (= lt!1655992 e!2781161)))

(declare-fun c!760167 () Bool)

(assert (=> d!1362029 (= c!760167 ((_ is Cons!50267) (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(assert (=> d!1362029 (forall!9972 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) lambda!162756)))

(assert (=> d!1362029 (= (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1655992)))

(declare-fun b!4466293 () Bool)

(assert (=> b!4466293 (= e!2781161 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (extractMap!1074 (t!357341 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun b!4466294 () Bool)

(assert (=> b!4466294 (= e!2781161 (ListMap!3306 Nil!50266))))

(assert (= (and d!1362029 c!760167) b!4466293))

(assert (= (and d!1362029 (not c!760167)) b!4466294))

(declare-fun m!5171145 () Bool)

(assert (=> d!1362029 m!5171145))

(declare-fun m!5171147 () Bool)

(assert (=> d!1362029 m!5171147))

(declare-fun m!5171149 () Bool)

(assert (=> b!4466293 m!5171149))

(assert (=> b!4466293 m!5171149))

(declare-fun m!5171151 () Bool)

(assert (=> b!4466293 m!5171151))

(assert (=> b!4465813 d!1362029))

(declare-fun d!1362031 () Bool)

(declare-fun e!2781167 () Bool)

(assert (=> d!1362031 e!2781167))

(declare-fun res!1852764 () Bool)

(assert (=> d!1362031 (=> res!1852764 e!2781167)))

(declare-fun lt!1656000 () Bool)

(assert (=> d!1362031 (= res!1852764 (not lt!1656000))))

(declare-fun lt!1656003 () Bool)

(assert (=> d!1362031 (= lt!1656000 lt!1656003)))

(declare-fun lt!1656002 () Unit!87263)

(declare-fun e!2781166 () Unit!87263)

(assert (=> d!1362031 (= lt!1656002 e!2781166)))

(declare-fun c!760171 () Bool)

(assert (=> d!1362031 (= c!760171 lt!1656003)))

(assert (=> d!1362031 (= lt!1656003 (containsKey!1454 (toList!4043 lt!1655600) (_1!28548 lt!1655466)))))

(assert (=> d!1362031 (= (contains!12806 lt!1655600 (_1!28548 lt!1655466)) lt!1656000)))

(declare-fun b!4466306 () Bool)

(declare-fun lt!1656001 () Unit!87263)

(assert (=> b!4466306 (= e!2781166 lt!1656001)))

(assert (=> b!4466306 (= lt!1656001 (lemmaContainsKeyImpliesGetValueByKeyDefined!805 (toList!4043 lt!1655600) (_1!28548 lt!1655466)))))

(assert (=> b!4466306 (isDefined!8202 (getValueByKey!901 (toList!4043 lt!1655600) (_1!28548 lt!1655466)))))

(declare-fun b!4466307 () Bool)

(declare-fun Unit!87340 () Unit!87263)

(assert (=> b!4466307 (= e!2781166 Unit!87340)))

(declare-fun b!4466308 () Bool)

(assert (=> b!4466308 (= e!2781167 (isDefined!8202 (getValueByKey!901 (toList!4043 lt!1655600) (_1!28548 lt!1655466))))))

(assert (= (and d!1362031 c!760171) b!4466306))

(assert (= (and d!1362031 (not c!760171)) b!4466307))

(assert (= (and d!1362031 (not res!1852764)) b!4466308))

(declare-fun m!5171153 () Bool)

(assert (=> d!1362031 m!5171153))

(declare-fun m!5171155 () Bool)

(assert (=> b!4466306 m!5171155))

(assert (=> b!4466306 m!5170437))

(assert (=> b!4466306 m!5170437))

(declare-fun m!5171157 () Bool)

(assert (=> b!4466306 m!5171157))

(assert (=> b!4466308 m!5170437))

(assert (=> b!4466308 m!5170437))

(assert (=> b!4466308 m!5171157))

(assert (=> d!1361805 d!1362031))

(declare-fun b!4466309 () Bool)

(declare-fun e!2781168 () Option!10915)

(assert (=> b!4466309 (= e!2781168 (Some!10914 (_2!28548 (h!56024 lt!1655601))))))

(declare-fun b!4466312 () Bool)

(declare-fun e!2781169 () Option!10915)

(assert (=> b!4466312 (= e!2781169 None!10914)))

(declare-fun b!4466311 () Bool)

(assert (=> b!4466311 (= e!2781169 (getValueByKey!901 (t!357341 lt!1655601) (_1!28548 lt!1655466)))))

(declare-fun b!4466310 () Bool)

(assert (=> b!4466310 (= e!2781168 e!2781169)))

(declare-fun c!760173 () Bool)

(assert (=> b!4466310 (= c!760173 (and ((_ is Cons!50267) lt!1655601) (not (= (_1!28548 (h!56024 lt!1655601)) (_1!28548 lt!1655466)))))))

(declare-fun d!1362033 () Bool)

(declare-fun c!760172 () Bool)

(assert (=> d!1362033 (= c!760172 (and ((_ is Cons!50267) lt!1655601) (= (_1!28548 (h!56024 lt!1655601)) (_1!28548 lt!1655466))))))

(assert (=> d!1362033 (= (getValueByKey!901 lt!1655601 (_1!28548 lt!1655466)) e!2781168)))

(assert (= (and d!1362033 c!760172) b!4466309))

(assert (= (and d!1362033 (not c!760172)) b!4466310))

(assert (= (and b!4466310 c!760173) b!4466311))

(assert (= (and b!4466310 (not c!760173)) b!4466312))

(declare-fun m!5171159 () Bool)

(assert (=> b!4466311 m!5171159))

(assert (=> d!1361805 d!1362033))

(declare-fun d!1362035 () Bool)

(assert (=> d!1362035 (= (getValueByKey!901 lt!1655601 (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466)))))

(declare-fun lt!1656007 () Unit!87263)

(declare-fun choose!28518 (List!50391 (_ BitVec 64) List!50390) Unit!87263)

(assert (=> d!1362035 (= lt!1656007 (choose!28518 lt!1655601 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(declare-fun e!2781178 () Bool)

(assert (=> d!1362035 e!2781178))

(declare-fun res!1852775 () Bool)

(assert (=> d!1362035 (=> (not res!1852775) (not e!2781178))))

(assert (=> d!1362035 (= res!1852775 (isStrictlySorted!335 lt!1655601))))

(assert (=> d!1362035 (= (lemmaContainsTupThenGetReturnValue!578 lt!1655601 (_1!28548 lt!1655466) (_2!28548 lt!1655466)) lt!1656007)))

(declare-fun b!4466323 () Bool)

(declare-fun res!1852776 () Bool)

(assert (=> b!4466323 (=> (not res!1852776) (not e!2781178))))

(assert (=> b!4466323 (= res!1852776 (containsKey!1454 lt!1655601 (_1!28548 lt!1655466)))))

(declare-fun b!4466324 () Bool)

(assert (=> b!4466324 (= e!2781178 (contains!12805 lt!1655601 (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466))))))

(assert (= (and d!1362035 res!1852775) b!4466323))

(assert (= (and b!4466323 res!1852776) b!4466324))

(assert (=> d!1362035 m!5170431))

(declare-fun m!5171205 () Bool)

(assert (=> d!1362035 m!5171205))

(declare-fun m!5171207 () Bool)

(assert (=> d!1362035 m!5171207))

(declare-fun m!5171211 () Bool)

(assert (=> b!4466323 m!5171211))

(declare-fun m!5171213 () Bool)

(assert (=> b!4466324 m!5171213))

(assert (=> d!1361805 d!1362035))

(declare-fun b!4466366 () Bool)

(declare-fun c!760190 () Bool)

(assert (=> b!4466366 (= c!760190 (and ((_ is Cons!50267) (toList!4043 (tail!7489 lm!1477))) (bvsgt (_1!28548 (h!56024 (toList!4043 (tail!7489 lm!1477)))) (_1!28548 lt!1655466))))))

(declare-fun e!2781208 () List!50391)

(declare-fun e!2781204 () List!50391)

(assert (=> b!4466366 (= e!2781208 e!2781204)))

(declare-fun c!760189 () Bool)

(declare-fun b!4466367 () Bool)

(declare-fun e!2781207 () List!50391)

(assert (=> b!4466367 (= e!2781207 (ite c!760189 (t!357341 (toList!4043 (tail!7489 lm!1477))) (ite c!760190 (Cons!50267 (h!56024 (toList!4043 (tail!7489 lm!1477))) (t!357341 (toList!4043 (tail!7489 lm!1477)))) Nil!50267)))))

(declare-fun b!4466368 () Bool)

(declare-fun e!2781205 () List!50391)

(assert (=> b!4466368 (= e!2781205 e!2781208)))

(assert (=> b!4466368 (= c!760189 (and ((_ is Cons!50267) (toList!4043 (tail!7489 lm!1477))) (= (_1!28548 (h!56024 (toList!4043 (tail!7489 lm!1477)))) (_1!28548 lt!1655466))))))

(declare-fun b!4466369 () Bool)

(declare-fun call!310930 () List!50391)

(assert (=> b!4466369 (= e!2781205 call!310930)))

(declare-fun b!4466370 () Bool)

(declare-fun call!310931 () List!50391)

(assert (=> b!4466370 (= e!2781208 call!310931)))

(declare-fun bm!310926 () Bool)

(declare-fun call!310932 () List!50391)

(assert (=> bm!310926 (= call!310932 call!310931)))

(declare-fun b!4466371 () Bool)

(declare-fun e!2781206 () Bool)

(declare-fun lt!1656017 () List!50391)

(assert (=> b!4466371 (= e!2781206 (contains!12805 lt!1656017 (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466))))))

(declare-fun b!4466372 () Bool)

(assert (=> b!4466372 (= e!2781204 call!310932)))

(declare-fun d!1362051 () Bool)

(assert (=> d!1362051 e!2781206))

(declare-fun res!1852791 () Bool)

(assert (=> d!1362051 (=> (not res!1852791) (not e!2781206))))

(assert (=> d!1362051 (= res!1852791 (isStrictlySorted!335 lt!1656017))))

(assert (=> d!1362051 (= lt!1656017 e!2781205)))

(declare-fun c!760188 () Bool)

(assert (=> d!1362051 (= c!760188 (and ((_ is Cons!50267) (toList!4043 (tail!7489 lm!1477))) (bvslt (_1!28548 (h!56024 (toList!4043 (tail!7489 lm!1477)))) (_1!28548 lt!1655466))))))

(assert (=> d!1362051 (isStrictlySorted!335 (toList!4043 (tail!7489 lm!1477)))))

(assert (=> d!1362051 (= (insertStrictlySorted!324 (toList!4043 (tail!7489 lm!1477)) (_1!28548 lt!1655466) (_2!28548 lt!1655466)) lt!1656017)))

(declare-fun bm!310925 () Bool)

(declare-fun $colon$colon!843 (List!50391 tuple2!50508) List!50391)

(assert (=> bm!310925 (= call!310930 ($colon$colon!843 e!2781207 (ite c!760188 (h!56024 (toList!4043 (tail!7489 lm!1477))) (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))))

(declare-fun c!760191 () Bool)

(assert (=> bm!310925 (= c!760191 c!760188)))

(declare-fun b!4466373 () Bool)

(assert (=> b!4466373 (= e!2781204 call!310932)))

(declare-fun b!4466374 () Bool)

(assert (=> b!4466374 (= e!2781207 (insertStrictlySorted!324 (t!357341 (toList!4043 (tail!7489 lm!1477))) (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(declare-fun b!4466375 () Bool)

(declare-fun res!1852790 () Bool)

(assert (=> b!4466375 (=> (not res!1852790) (not e!2781206))))

(assert (=> b!4466375 (= res!1852790 (containsKey!1454 lt!1656017 (_1!28548 lt!1655466)))))

(declare-fun bm!310927 () Bool)

(assert (=> bm!310927 (= call!310931 call!310930)))

(assert (= (and d!1362051 c!760188) b!4466369))

(assert (= (and d!1362051 (not c!760188)) b!4466368))

(assert (= (and b!4466368 c!760189) b!4466370))

(assert (= (and b!4466368 (not c!760189)) b!4466366))

(assert (= (and b!4466366 c!760190) b!4466373))

(assert (= (and b!4466366 (not c!760190)) b!4466372))

(assert (= (or b!4466373 b!4466372) bm!310926))

(assert (= (or b!4466370 bm!310926) bm!310927))

(assert (= (or b!4466369 bm!310927) bm!310925))

(assert (= (and bm!310925 c!760191) b!4466374))

(assert (= (and bm!310925 (not c!760191)) b!4466367))

(assert (= (and d!1362051 res!1852791) b!4466375))

(assert (= (and b!4466375 res!1852790) b!4466371))

(declare-fun m!5171243 () Bool)

(assert (=> d!1362051 m!5171243))

(declare-fun m!5171245 () Bool)

(assert (=> d!1362051 m!5171245))

(declare-fun m!5171247 () Bool)

(assert (=> b!4466374 m!5171247))

(declare-fun m!5171249 () Bool)

(assert (=> b!4466371 m!5171249))

(declare-fun m!5171251 () Bool)

(assert (=> b!4466375 m!5171251))

(declare-fun m!5171253 () Bool)

(assert (=> bm!310925 m!5171253))

(assert (=> d!1361805 d!1362051))

(declare-fun d!1362075 () Bool)

(declare-fun res!1852792 () Bool)

(declare-fun e!2781209 () Bool)

(assert (=> d!1362075 (=> res!1852792 e!2781209)))

(assert (=> d!1362075 (= res!1852792 (not ((_ is Cons!50266) (t!357340 newBucket!178))))))

(assert (=> d!1362075 (= (noDuplicateKeys!1018 (t!357340 newBucket!178)) e!2781209)))

(declare-fun b!4466376 () Bool)

(declare-fun e!2781210 () Bool)

(assert (=> b!4466376 (= e!2781209 e!2781210)))

(declare-fun res!1852793 () Bool)

(assert (=> b!4466376 (=> (not res!1852793) (not e!2781210))))

(assert (=> b!4466376 (= res!1852793 (not (containsKey!1450 (t!357340 (t!357340 newBucket!178)) (_1!28547 (h!56023 (t!357340 newBucket!178))))))))

(declare-fun b!4466377 () Bool)

(assert (=> b!4466377 (= e!2781210 (noDuplicateKeys!1018 (t!357340 (t!357340 newBucket!178))))))

(assert (= (and d!1362075 (not res!1852792)) b!4466376))

(assert (= (and b!4466376 res!1852793) b!4466377))

(declare-fun m!5171255 () Bool)

(assert (=> b!4466376 m!5171255))

(declare-fun m!5171257 () Bool)

(assert (=> b!4466377 m!5171257))

(assert (=> b!4465649 d!1362075))

(assert (=> d!1361827 d!1361865))

(declare-fun d!1362077 () Bool)

(declare-fun lt!1656018 () Bool)

(assert (=> d!1362077 (= lt!1656018 (select (content!8085 e!2780811) key!3287))))

(declare-fun e!2781211 () Bool)

(assert (=> d!1362077 (= lt!1656018 e!2781211)))

(declare-fun res!1852795 () Bool)

(assert (=> d!1362077 (=> (not res!1852795) (not e!2781211))))

(assert (=> d!1362077 (= res!1852795 ((_ is Cons!50269) e!2780811))))

(assert (=> d!1362077 (= (contains!12809 e!2780811 key!3287) lt!1656018)))

(declare-fun b!4466378 () Bool)

(declare-fun e!2781212 () Bool)

(assert (=> b!4466378 (= e!2781211 e!2781212)))

(declare-fun res!1852794 () Bool)

(assert (=> b!4466378 (=> res!1852794 e!2781212)))

(assert (=> b!4466378 (= res!1852794 (= (h!56028 e!2780811) key!3287))))

(declare-fun b!4466379 () Bool)

(assert (=> b!4466379 (= e!2781212 (contains!12809 (t!357343 e!2780811) key!3287))))

(assert (= (and d!1362077 res!1852795) b!4466378))

(assert (= (and b!4466378 (not res!1852794)) b!4466379))

(declare-fun m!5171259 () Bool)

(assert (=> d!1362077 m!5171259))

(declare-fun m!5171261 () Bool)

(assert (=> d!1362077 m!5171261))

(declare-fun m!5171263 () Bool)

(assert (=> b!4466379 m!5171263))

(assert (=> bm!310863 d!1362077))

(declare-fun d!1362079 () Bool)

(declare-fun e!2781214 () Bool)

(assert (=> d!1362079 e!2781214))

(declare-fun res!1852796 () Bool)

(assert (=> d!1362079 (=> res!1852796 e!2781214)))

(declare-fun lt!1656019 () Bool)

(assert (=> d!1362079 (= res!1852796 (not lt!1656019))))

(declare-fun lt!1656022 () Bool)

(assert (=> d!1362079 (= lt!1656019 lt!1656022)))

(declare-fun lt!1656021 () Unit!87263)

(declare-fun e!2781213 () Unit!87263)

(assert (=> d!1362079 (= lt!1656021 e!2781213)))

(declare-fun c!760192 () Bool)

(assert (=> d!1362079 (= c!760192 lt!1656022)))

(assert (=> d!1362079 (= lt!1656022 (containsKey!1454 (toList!4043 lt!1655608) (_1!28548 lt!1655466)))))

(assert (=> d!1362079 (= (contains!12806 lt!1655608 (_1!28548 lt!1655466)) lt!1656019)))

(declare-fun b!4466380 () Bool)

(declare-fun lt!1656020 () Unit!87263)

(assert (=> b!4466380 (= e!2781213 lt!1656020)))

(assert (=> b!4466380 (= lt!1656020 (lemmaContainsKeyImpliesGetValueByKeyDefined!805 (toList!4043 lt!1655608) (_1!28548 lt!1655466)))))

(assert (=> b!4466380 (isDefined!8202 (getValueByKey!901 (toList!4043 lt!1655608) (_1!28548 lt!1655466)))))

(declare-fun b!4466381 () Bool)

(declare-fun Unit!87345 () Unit!87263)

(assert (=> b!4466381 (= e!2781213 Unit!87345)))

(declare-fun b!4466382 () Bool)

(assert (=> b!4466382 (= e!2781214 (isDefined!8202 (getValueByKey!901 (toList!4043 lt!1655608) (_1!28548 lt!1655466))))))

(assert (= (and d!1362079 c!760192) b!4466380))

(assert (= (and d!1362079 (not c!760192)) b!4466381))

(assert (= (and d!1362079 (not res!1852796)) b!4466382))

(declare-fun m!5171265 () Bool)

(assert (=> d!1362079 m!5171265))

(declare-fun m!5171267 () Bool)

(assert (=> b!4466380 m!5171267))

(assert (=> b!4466380 m!5170477))

(assert (=> b!4466380 m!5170477))

(declare-fun m!5171269 () Bool)

(assert (=> b!4466380 m!5171269))

(assert (=> b!4466382 m!5170477))

(assert (=> b!4466382 m!5170477))

(assert (=> b!4466382 m!5171269))

(assert (=> d!1361825 d!1362079))

(declare-fun b!4466383 () Bool)

(declare-fun e!2781215 () Option!10915)

(assert (=> b!4466383 (= e!2781215 (Some!10914 (_2!28548 (h!56024 lt!1655609))))))

(declare-fun b!4466386 () Bool)

(declare-fun e!2781216 () Option!10915)

(assert (=> b!4466386 (= e!2781216 None!10914)))

(declare-fun b!4466385 () Bool)

(assert (=> b!4466385 (= e!2781216 (getValueByKey!901 (t!357341 lt!1655609) (_1!28548 lt!1655466)))))

(declare-fun b!4466384 () Bool)

(assert (=> b!4466384 (= e!2781215 e!2781216)))

(declare-fun c!760194 () Bool)

(assert (=> b!4466384 (= c!760194 (and ((_ is Cons!50267) lt!1655609) (not (= (_1!28548 (h!56024 lt!1655609)) (_1!28548 lt!1655466)))))))

(declare-fun d!1362081 () Bool)

(declare-fun c!760193 () Bool)

(assert (=> d!1362081 (= c!760193 (and ((_ is Cons!50267) lt!1655609) (= (_1!28548 (h!56024 lt!1655609)) (_1!28548 lt!1655466))))))

(assert (=> d!1362081 (= (getValueByKey!901 lt!1655609 (_1!28548 lt!1655466)) e!2781215)))

(assert (= (and d!1362081 c!760193) b!4466383))

(assert (= (and d!1362081 (not c!760193)) b!4466384))

(assert (= (and b!4466384 c!760194) b!4466385))

(assert (= (and b!4466384 (not c!760194)) b!4466386))

(declare-fun m!5171271 () Bool)

(assert (=> b!4466385 m!5171271))

(assert (=> d!1361825 d!1362081))

(declare-fun d!1362083 () Bool)

(assert (=> d!1362083 (= (getValueByKey!901 lt!1655609 (_1!28548 lt!1655466)) (Some!10914 (_2!28548 lt!1655466)))))

(declare-fun lt!1656023 () Unit!87263)

(assert (=> d!1362083 (= lt!1656023 (choose!28518 lt!1655609 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(declare-fun e!2781217 () Bool)

(assert (=> d!1362083 e!2781217))

(declare-fun res!1852797 () Bool)

(assert (=> d!1362083 (=> (not res!1852797) (not e!2781217))))

(assert (=> d!1362083 (= res!1852797 (isStrictlySorted!335 lt!1655609))))

(assert (=> d!1362083 (= (lemmaContainsTupThenGetReturnValue!578 lt!1655609 (_1!28548 lt!1655466) (_2!28548 lt!1655466)) lt!1656023)))

(declare-fun b!4466387 () Bool)

(declare-fun res!1852798 () Bool)

(assert (=> b!4466387 (=> (not res!1852798) (not e!2781217))))

(assert (=> b!4466387 (= res!1852798 (containsKey!1454 lt!1655609 (_1!28548 lt!1655466)))))

(declare-fun b!4466388 () Bool)

(assert (=> b!4466388 (= e!2781217 (contains!12805 lt!1655609 (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466))))))

(assert (= (and d!1362083 res!1852797) b!4466387))

(assert (= (and b!4466387 res!1852798) b!4466388))

(assert (=> d!1362083 m!5170471))

(declare-fun m!5171273 () Bool)

(assert (=> d!1362083 m!5171273))

(declare-fun m!5171275 () Bool)

(assert (=> d!1362083 m!5171275))

(declare-fun m!5171277 () Bool)

(assert (=> b!4466387 m!5171277))

(declare-fun m!5171279 () Bool)

(assert (=> b!4466388 m!5171279))

(assert (=> d!1361825 d!1362083))

(declare-fun b!4466389 () Bool)

(declare-fun c!760197 () Bool)

(assert (=> b!4466389 (= c!760197 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (bvsgt (_1!28548 (h!56024 (toList!4043 lm!1477))) (_1!28548 lt!1655466))))))

(declare-fun e!2781222 () List!50391)

(declare-fun e!2781218 () List!50391)

(assert (=> b!4466389 (= e!2781222 e!2781218)))

(declare-fun e!2781221 () List!50391)

(declare-fun c!760196 () Bool)

(declare-fun b!4466390 () Bool)

(assert (=> b!4466390 (= e!2781221 (ite c!760196 (t!357341 (toList!4043 lm!1477)) (ite c!760197 (Cons!50267 (h!56024 (toList!4043 lm!1477)) (t!357341 (toList!4043 lm!1477))) Nil!50267)))))

(declare-fun b!4466391 () Bool)

(declare-fun e!2781219 () List!50391)

(assert (=> b!4466391 (= e!2781219 e!2781222)))

(assert (=> b!4466391 (= c!760196 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (= (_1!28548 (h!56024 (toList!4043 lm!1477))) (_1!28548 lt!1655466))))))

(declare-fun b!4466392 () Bool)

(declare-fun call!310933 () List!50391)

(assert (=> b!4466392 (= e!2781219 call!310933)))

(declare-fun b!4466393 () Bool)

(declare-fun call!310934 () List!50391)

(assert (=> b!4466393 (= e!2781222 call!310934)))

(declare-fun bm!310929 () Bool)

(declare-fun call!310935 () List!50391)

(assert (=> bm!310929 (= call!310935 call!310934)))

(declare-fun b!4466394 () Bool)

(declare-fun e!2781220 () Bool)

(declare-fun lt!1656024 () List!50391)

(assert (=> b!4466394 (= e!2781220 (contains!12805 lt!1656024 (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466))))))

(declare-fun b!4466395 () Bool)

(assert (=> b!4466395 (= e!2781218 call!310935)))

(declare-fun d!1362085 () Bool)

(assert (=> d!1362085 e!2781220))

(declare-fun res!1852800 () Bool)

(assert (=> d!1362085 (=> (not res!1852800) (not e!2781220))))

(assert (=> d!1362085 (= res!1852800 (isStrictlySorted!335 lt!1656024))))

(assert (=> d!1362085 (= lt!1656024 e!2781219)))

(declare-fun c!760195 () Bool)

(assert (=> d!1362085 (= c!760195 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (bvslt (_1!28548 (h!56024 (toList!4043 lm!1477))) (_1!28548 lt!1655466))))))

(assert (=> d!1362085 (isStrictlySorted!335 (toList!4043 lm!1477))))

(assert (=> d!1362085 (= (insertStrictlySorted!324 (toList!4043 lm!1477) (_1!28548 lt!1655466) (_2!28548 lt!1655466)) lt!1656024)))

(declare-fun bm!310928 () Bool)

(assert (=> bm!310928 (= call!310933 ($colon$colon!843 e!2781221 (ite c!760195 (h!56024 (toList!4043 lm!1477)) (tuple2!50509 (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))))

(declare-fun c!760198 () Bool)

(assert (=> bm!310928 (= c!760198 c!760195)))

(declare-fun b!4466396 () Bool)

(assert (=> b!4466396 (= e!2781218 call!310935)))

(declare-fun b!4466397 () Bool)

(assert (=> b!4466397 (= e!2781221 (insertStrictlySorted!324 (t!357341 (toList!4043 lm!1477)) (_1!28548 lt!1655466) (_2!28548 lt!1655466)))))

(declare-fun b!4466398 () Bool)

(declare-fun res!1852799 () Bool)

(assert (=> b!4466398 (=> (not res!1852799) (not e!2781220))))

(assert (=> b!4466398 (= res!1852799 (containsKey!1454 lt!1656024 (_1!28548 lt!1655466)))))

(declare-fun bm!310930 () Bool)

(assert (=> bm!310930 (= call!310934 call!310933)))

(assert (= (and d!1362085 c!760195) b!4466392))

(assert (= (and d!1362085 (not c!760195)) b!4466391))

(assert (= (and b!4466391 c!760196) b!4466393))

(assert (= (and b!4466391 (not c!760196)) b!4466389))

(assert (= (and b!4466389 c!760197) b!4466396))

(assert (= (and b!4466389 (not c!760197)) b!4466395))

(assert (= (or b!4466396 b!4466395) bm!310929))

(assert (= (or b!4466393 bm!310929) bm!310930))

(assert (= (or b!4466392 bm!310930) bm!310928))

(assert (= (and bm!310928 c!760198) b!4466397))

(assert (= (and bm!310928 (not c!760198)) b!4466390))

(assert (= (and d!1362085 res!1852800) b!4466398))

(assert (= (and b!4466398 res!1852799) b!4466394))

(declare-fun m!5171281 () Bool)

(assert (=> d!1362085 m!5171281))

(assert (=> d!1362085 m!5170193))

(declare-fun m!5171283 () Bool)

(assert (=> b!4466397 m!5171283))

(declare-fun m!5171285 () Bool)

(assert (=> b!4466394 m!5171285))

(declare-fun m!5171287 () Bool)

(assert (=> b!4466398 m!5171287))

(declare-fun m!5171289 () Bool)

(assert (=> bm!310928 m!5171289))

(assert (=> d!1361825 d!1362085))

(declare-fun d!1362087 () Bool)

(declare-fun res!1852801 () Bool)

(declare-fun e!2781223 () Bool)

(assert (=> d!1362087 (=> res!1852801 e!2781223)))

(assert (=> d!1362087 (= res!1852801 (not ((_ is Cons!50266) (_2!28548 lt!1655457))))))

(assert (=> d!1362087 (= (noDuplicateKeys!1018 (_2!28548 lt!1655457)) e!2781223)))

(declare-fun b!4466399 () Bool)

(declare-fun e!2781224 () Bool)

(assert (=> b!4466399 (= e!2781223 e!2781224)))

(declare-fun res!1852802 () Bool)

(assert (=> b!4466399 (=> (not res!1852802) (not e!2781224))))

(assert (=> b!4466399 (= res!1852802 (not (containsKey!1450 (t!357340 (_2!28548 lt!1655457)) (_1!28547 (h!56023 (_2!28548 lt!1655457))))))))

(declare-fun b!4466400 () Bool)

(assert (=> b!4466400 (= e!2781224 (noDuplicateKeys!1018 (t!357340 (_2!28548 lt!1655457))))))

(assert (= (and d!1362087 (not res!1852801)) b!4466399))

(assert (= (and b!4466399 res!1852802) b!4466400))

(declare-fun m!5171291 () Bool)

(assert (=> b!4466399 m!5171291))

(declare-fun m!5171293 () Bool)

(assert (=> b!4466400 m!5171293))

(assert (=> bs!793074 d!1362087))

(declare-fun d!1362091 () Bool)

(declare-fun res!1852805 () Bool)

(declare-fun e!2781227 () Bool)

(assert (=> d!1362091 (=> res!1852805 e!2781227)))

(assert (=> d!1362091 (= res!1852805 ((_ is Nil!50267) (t!357341 (toList!4043 lm!1477))))))

(assert (=> d!1362091 (= (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162601) e!2781227)))

(declare-fun b!4466403 () Bool)

(declare-fun e!2781228 () Bool)

(assert (=> b!4466403 (= e!2781227 e!2781228)))

(declare-fun res!1852806 () Bool)

(assert (=> b!4466403 (=> (not res!1852806) (not e!2781228))))

(assert (=> b!4466403 (= res!1852806 (dynLambda!21002 lambda!162601 (h!56024 (t!357341 (toList!4043 lm!1477)))))))

(declare-fun b!4466404 () Bool)

(assert (=> b!4466404 (= e!2781228 (forall!9972 (t!357341 (t!357341 (toList!4043 lm!1477))) lambda!162601))))

(assert (= (and d!1362091 (not res!1852805)) b!4466403))

(assert (= (and b!4466403 res!1852806) b!4466404))

(declare-fun b_lambda!148095 () Bool)

(assert (=> (not b_lambda!148095) (not b!4466403)))

(declare-fun m!5171299 () Bool)

(assert (=> b!4466403 m!5171299))

(declare-fun m!5171301 () Bool)

(assert (=> b!4466404 m!5171301))

(assert (=> b!4465643 d!1362091))

(assert (=> d!1361833 d!1361821))

(declare-fun d!1362095 () Bool)

(assert (=> d!1362095 (eq!511 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)) (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))))

(assert (=> d!1362095 true))

(declare-fun _$18!189 () Unit!87263)

(assert (=> d!1362095 (= (choose!28503 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!189)))

(declare-fun bs!793243 () Bool)

(assert (= bs!793243 d!1362095))

(assert (=> bs!793243 m!5170511))

(assert (=> bs!793243 m!5170143))

(assert (=> bs!793243 m!5170143))

(assert (=> bs!793243 m!5170131))

(assert (=> bs!793243 m!5170511))

(assert (=> bs!793243 m!5170131))

(assert (=> bs!793243 m!5170513))

(assert (=> d!1361833 d!1362095))

(assert (=> d!1361833 d!1361823))

(declare-fun d!1362117 () Bool)

(declare-fun res!1852830 () Bool)

(declare-fun e!2781257 () Bool)

(assert (=> d!1362117 (=> res!1852830 e!2781257)))

(assert (=> d!1362117 (= res!1852830 (not ((_ is Cons!50266) (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(assert (=> d!1362117 (= (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477)))) e!2781257)))

(declare-fun b!4466442 () Bool)

(declare-fun e!2781258 () Bool)

(assert (=> b!4466442 (= e!2781257 e!2781258)))

(declare-fun res!1852831 () Bool)

(assert (=> b!4466442 (=> (not res!1852831) (not e!2781258))))

(assert (=> b!4466442 (= res!1852831 (not (containsKey!1450 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477)))) (_1!28547 (h!56023 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))))

(declare-fun b!4466443 () Bool)

(assert (=> b!4466443 (= e!2781258 (noDuplicateKeys!1018 (t!357340 (_2!28548 (h!56024 (toList!4043 lm!1477))))))))

(assert (= (and d!1362117 (not res!1852830)) b!4466442))

(assert (= (and b!4466442 res!1852831) b!4466443))

(declare-fun m!5171345 () Bool)

(assert (=> b!4466442 m!5171345))

(declare-fun m!5171347 () Bool)

(assert (=> b!4466443 m!5171347))

(assert (=> d!1361833 d!1362117))

(declare-fun bs!793244 () Bool)

(declare-fun d!1362119 () Bool)

(assert (= bs!793244 (and d!1362119 d!1361843)))

(declare-fun lambda!162765 () Int)

(assert (=> bs!793244 (= lambda!162765 lambda!162640)))

(declare-fun bs!793245 () Bool)

(assert (= bs!793245 (and d!1362119 d!1361747)))

(assert (=> bs!793245 (= lambda!162765 lambda!162608)))

(declare-fun bs!793246 () Bool)

(assert (= bs!793246 (and d!1362119 d!1362029)))

(assert (=> bs!793246 (= lambda!162765 lambda!162756)))

(declare-fun bs!793247 () Bool)

(assert (= bs!793247 (and d!1362119 d!1361857)))

(assert (=> bs!793247 (not (= lambda!162765 lambda!162643))))

(declare-fun bs!793248 () Bool)

(assert (= bs!793248 (and d!1362119 d!1361821)))

(assert (=> bs!793248 (= lambda!162765 lambda!162632)))

(declare-fun bs!793249 () Bool)

(assert (= bs!793249 (and d!1362119 start!438344)))

(assert (=> bs!793249 (= lambda!162765 lambda!162601)))

(declare-fun bs!793250 () Bool)

(assert (= bs!793250 (and d!1362119 d!1361783)))

(assert (=> bs!793250 (= lambda!162765 lambda!162626)))

(declare-fun bs!793251 () Bool)

(assert (= bs!793251 (and d!1362119 d!1361923)))

(assert (=> bs!793251 (= lambda!162765 lambda!162720)))

(declare-fun bs!793252 () Bool)

(assert (= bs!793252 (and d!1362119 d!1361829)))

(assert (=> bs!793252 (= lambda!162765 lambda!162633)))

(declare-fun bs!793253 () Bool)

(assert (= bs!793253 (and d!1362119 d!1361837)))

(assert (=> bs!793253 (= lambda!162765 lambda!162637)))

(declare-fun bs!793254 () Bool)

(assert (= bs!793254 (and d!1362119 d!1361835)))

(assert (=> bs!793254 (= lambda!162765 lambda!162634)))

(declare-fun lt!1656033 () ListMap!3305)

(assert (=> d!1362119 (invariantList!921 (toList!4044 lt!1656033))))

(declare-fun e!2781259 () ListMap!3305)

(assert (=> d!1362119 (= lt!1656033 e!2781259)))

(declare-fun c!760206 () Bool)

(assert (=> d!1362119 (= c!760206 ((_ is Cons!50267) (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)))))

(assert (=> d!1362119 (forall!9972 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267) lambda!162765)))

(assert (=> d!1362119 (= (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)) lt!1656033)))

(declare-fun b!4466444 () Bool)

(assert (=> b!4466444 (= e!2781259 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)))))))

(declare-fun b!4466445 () Bool)

(assert (=> b!4466445 (= e!2781259 (ListMap!3306 Nil!50266))))

(assert (= (and d!1362119 c!760206) b!4466444))

(assert (= (and d!1362119 (not c!760206)) b!4466445))

(declare-fun m!5171365 () Bool)

(assert (=> d!1362119 m!5171365))

(declare-fun m!5171369 () Bool)

(assert (=> d!1362119 m!5171369))

(declare-fun m!5171373 () Bool)

(assert (=> b!4466444 m!5171373))

(assert (=> b!4466444 m!5171373))

(declare-fun m!5171375 () Bool)

(assert (=> b!4466444 m!5171375))

(assert (=> d!1361833 d!1362119))

(declare-fun d!1362129 () Bool)

(assert (=> d!1362129 (= (eq!511 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)) (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287)) (= (content!8084 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 newBucket!178) Nil!50267)))) (content!8084 (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287)))))))

(declare-fun bs!793255 () Bool)

(assert (= bs!793255 d!1362129))

(declare-fun m!5171377 () Bool)

(assert (=> bs!793255 m!5171377))

(assert (=> bs!793255 m!5170445))

(assert (=> d!1361833 d!1362129))

(assert (=> b!4465853 d!1362019))

(assert (=> b!4465853 d!1362021))

(declare-fun d!1362131 () Bool)

(assert (=> d!1362131 (= (isEmpty!28473 (toList!4043 lm!1477)) ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1361839 d!1362131))

(declare-fun d!1362133 () Bool)

(declare-fun c!760216 () Bool)

(assert (=> d!1362133 (= c!760216 ((_ is Nil!50266) (toList!4044 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)))))))

(declare-fun e!2781279 () (InoxSet tuple2!50506))

(assert (=> d!1362133 (= (content!8084 (toList!4044 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)))) e!2781279)))

(declare-fun b!4466476 () Bool)

(assert (=> b!4466476 (= e!2781279 ((as const (Array tuple2!50506 Bool)) false))))

(declare-fun b!4466477 () Bool)

(assert (=> b!4466477 (= e!2781279 ((_ map or) (store ((as const (Array tuple2!50506 Bool)) false) (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)))) true) (content!8084 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 lt!1655466 Nil!50267)))))))))

(assert (= (and d!1362133 c!760216) b!4466476))

(assert (= (and d!1362133 (not c!760216)) b!4466477))

(declare-fun m!5171407 () Bool)

(assert (=> b!4466477 m!5171407))

(declare-fun m!5171409 () Bool)

(assert (=> b!4466477 m!5171409))

(assert (=> d!1361819 d!1362133))

(declare-fun d!1362147 () Bool)

(declare-fun c!760218 () Bool)

(assert (=> d!1362147 (= c!760218 ((_ is Nil!50266) (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))))))

(declare-fun e!2781283 () (InoxSet tuple2!50506))

(assert (=> d!1362147 (= (content!8084 (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))) e!2781283)))

(declare-fun b!4466483 () Bool)

(assert (=> b!4466483 (= e!2781283 ((as const (Array tuple2!50506 Bool)) false))))

(declare-fun b!4466484 () Bool)

(assert (=> b!4466484 (= e!2781283 ((_ map or) (store ((as const (Array tuple2!50506 Bool)) false) (h!56023 (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))) true) (content!8084 (t!357340 (toList!4044 (-!280 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)) key!3287))))))))

(assert (= (and d!1362147 c!760218) b!4466483))

(assert (= (and d!1362147 (not c!760218)) b!4466484))

(declare-fun m!5171411 () Bool)

(assert (=> b!4466484 m!5171411))

(declare-fun m!5171413 () Bool)

(assert (=> b!4466484 m!5171413))

(assert (=> d!1361819 d!1362147))

(declare-fun bs!793264 () Bool)

(declare-fun b!4466491 () Bool)

(assert (= bs!793264 (and b!4466491 b!4466208)))

(declare-fun lambda!162767 () Int)

(assert (=> bs!793264 (= (= (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162767 lambda!162740))))

(declare-fun bs!793265 () Bool)

(assert (= bs!793265 (and b!4466491 b!4466268)))

(assert (=> bs!793265 (= (= (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162767 lambda!162742))))

(declare-fun bs!793266 () Bool)

(assert (= bs!793266 (and b!4466491 b!4466137)))

(assert (=> bs!793266 (= (= (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162767 lambda!162725))))

(declare-fun bs!793267 () Bool)

(assert (= bs!793267 (and b!4466491 b!4466204)))

(assert (=> bs!793267 (= (= (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162767 lambda!162739))))

(declare-fun bs!793268 () Bool)

(assert (= bs!793268 (and b!4466491 b!4466207)))

(assert (=> bs!793268 (= (= (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162767 lambda!162738))))

(assert (=> b!4466491 true))

(declare-fun bs!793272 () Bool)

(declare-fun b!4466488 () Bool)

(assert (= bs!793272 (and b!4466488 b!4466208)))

(declare-fun lambda!162769 () Int)

(assert (=> bs!793272 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162769 lambda!162740))))

(declare-fun bs!793274 () Bool)

(assert (= bs!793274 (and b!4466488 b!4466268)))

(assert (=> bs!793274 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162769 lambda!162742))))

(declare-fun bs!793276 () Bool)

(assert (= bs!793276 (and b!4466488 b!4466137)))

(assert (=> bs!793276 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162769 lambda!162725))))

(declare-fun bs!793278 () Bool)

(assert (= bs!793278 (and b!4466488 b!4466204)))

(assert (=> bs!793278 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162769 lambda!162739))))

(declare-fun bs!793280 () Bool)

(assert (= bs!793280 (and b!4466488 b!4466207)))

(assert (=> bs!793280 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162769 lambda!162738))))

(declare-fun bs!793282 () Bool)

(assert (= bs!793282 (and b!4466488 b!4466491)))

(assert (=> bs!793282 (= (= (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (= lambda!162769 lambda!162767))))

(assert (=> b!4466488 true))

(declare-fun bs!793283 () Bool)

(declare-fun b!4466492 () Bool)

(assert (= bs!793283 (and b!4466492 b!4466488)))

(declare-fun lambda!162770 () Int)

(assert (=> bs!793283 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462))))) (= lambda!162770 lambda!162769))))

(declare-fun bs!793284 () Bool)

(assert (= bs!793284 (and b!4466492 b!4466208)))

(assert (=> bs!793284 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162770 lambda!162740))))

(declare-fun bs!793285 () Bool)

(assert (= bs!793285 (and b!4466492 b!4466268)))

(assert (=> bs!793285 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162770 lambda!162742))))

(declare-fun bs!793286 () Bool)

(assert (= bs!793286 (and b!4466492 b!4466137)))

(assert (=> bs!793286 (= lambda!162770 lambda!162725)))

(declare-fun bs!793287 () Bool)

(assert (= bs!793287 (and b!4466492 b!4466204)))

(assert (=> bs!793287 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162770 lambda!162739))))

(declare-fun bs!793288 () Bool)

(assert (= bs!793288 (and b!4466492 b!4466207)))

(assert (=> bs!793288 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162770 lambda!162738))))

(declare-fun bs!793289 () Bool)

(assert (= bs!793289 (and b!4466492 b!4466491)))

(assert (=> bs!793289 (= (= (toList!4044 (extractMap!1074 lt!1655462)) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (= lambda!162770 lambda!162767))))

(assert (=> b!4466492 true))

(declare-fun bs!793290 () Bool)

(declare-fun b!4466490 () Bool)

(assert (= bs!793290 (and b!4466490 b!4466138)))

(declare-fun lambda!162772 () Int)

(assert (=> bs!793290 (= lambda!162772 lambda!162726)))

(declare-fun bs!793291 () Bool)

(assert (= bs!793291 (and b!4466490 b!4466206)))

(assert (=> bs!793291 (= lambda!162772 lambda!162741)))

(declare-fun bs!793292 () Bool)

(assert (= bs!793292 (and b!4466490 b!4466269)))

(assert (=> bs!793292 (= lambda!162772 lambda!162743)))

(declare-fun b!4466486 () Bool)

(declare-fun e!2781287 () Unit!87263)

(declare-fun Unit!87346 () Unit!87263)

(assert (=> b!4466486 (= e!2781287 Unit!87346)))

(declare-fun b!4466487 () Bool)

(declare-fun res!1852848 () Bool)

(declare-fun e!2781285 () Bool)

(assert (=> b!4466487 (=> (not res!1852848) (not e!2781285))))

(declare-fun lt!1656063 () List!50393)

(assert (=> b!4466487 (= res!1852848 (= (length!242 lt!1656063) (length!243 (toList!4044 (extractMap!1074 lt!1655462)))))))

(declare-fun e!2781284 () List!50393)

(assert (=> b!4466488 (= e!2781284 (Cons!50269 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462)))) (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 lt!1655462))))))))

(declare-fun c!760220 () Bool)

(assert (=> b!4466488 (= c!760220 (containsKey!1453 (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))))))))

(declare-fun lt!1656069 () Unit!87263)

(declare-fun e!2781286 () Unit!87263)

(assert (=> b!4466488 (= lt!1656069 e!2781286)))

(declare-fun c!760221 () Bool)

(assert (=> b!4466488 (= c!760221 (contains!12809 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))))))))

(declare-fun lt!1656065 () Unit!87263)

(assert (=> b!4466488 (= lt!1656065 e!2781287)))

(declare-fun lt!1656064 () List!50393)

(assert (=> b!4466488 (= lt!1656064 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))))))

(declare-fun lt!1656066 () Unit!87263)

(assert (=> b!4466488 (= lt!1656066 (lemmaForallContainsAddHeadPreserves!115 (t!357340 (toList!4044 (extractMap!1074 lt!1655462))) lt!1656064 (h!56023 (toList!4044 (extractMap!1074 lt!1655462)))))))

(assert (=> b!4466488 (forall!9975 lt!1656064 lambda!162769)))

(declare-fun lt!1656068 () Unit!87263)

(assert (=> b!4466488 (= lt!1656068 lt!1656066)))

(declare-fun b!4466489 () Bool)

(declare-fun Unit!87347 () Unit!87263)

(assert (=> b!4466489 (= e!2781286 Unit!87347)))

(assert (=> b!4466490 (= e!2781285 (= (content!8085 lt!1656063) (content!8085 (map!11013 (toList!4044 (extractMap!1074 lt!1655462)) lambda!162772))))))

(assert (=> b!4466491 false))

(declare-fun lt!1656067 () Unit!87263)

(assert (=> b!4466491 (= lt!1656067 (forallContained!2246 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) lambda!162767 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))))))))

(declare-fun Unit!87348 () Unit!87263)

(assert (=> b!4466491 (= e!2781287 Unit!87348)))

(declare-fun res!1852849 () Bool)

(assert (=> b!4466492 (=> (not res!1852849) (not e!2781285))))

(assert (=> b!4466492 (= res!1852849 (forall!9975 lt!1656063 lambda!162770))))

(declare-fun b!4466493 () Bool)

(assert (=> b!4466493 false))

(declare-fun Unit!87349 () Unit!87263)

(assert (=> b!4466493 (= e!2781286 Unit!87349)))

(declare-fun b!4466485 () Bool)

(assert (=> b!4466485 (= e!2781284 Nil!50269)))

(declare-fun d!1362149 () Bool)

(assert (=> d!1362149 e!2781285))

(declare-fun res!1852847 () Bool)

(assert (=> d!1362149 (=> (not res!1852847) (not e!2781285))))

(assert (=> d!1362149 (= res!1852847 (noDuplicate!693 lt!1656063))))

(assert (=> d!1362149 (= lt!1656063 e!2781284)))

(declare-fun c!760219 () Bool)

(assert (=> d!1362149 (= c!760219 ((_ is Cons!50266) (toList!4044 (extractMap!1074 lt!1655462))))))

(assert (=> d!1362149 (invariantList!921 (toList!4044 (extractMap!1074 lt!1655462)))))

(assert (=> d!1362149 (= (getKeysList!369 (toList!4044 (extractMap!1074 lt!1655462))) lt!1656063)))

(assert (= (and d!1362149 c!760219) b!4466488))

(assert (= (and d!1362149 (not c!760219)) b!4466485))

(assert (= (and b!4466488 c!760220) b!4466493))

(assert (= (and b!4466488 (not c!760220)) b!4466489))

(assert (= (and b!4466488 c!760221) b!4466491))

(assert (= (and b!4466488 (not c!760221)) b!4466486))

(assert (= (and d!1362149 res!1852847) b!4466487))

(assert (= (and b!4466487 res!1852848) b!4466492))

(assert (= (and b!4466492 res!1852849) b!4466490))

(declare-fun m!5171415 () Bool)

(assert (=> b!4466490 m!5171415))

(declare-fun m!5171417 () Bool)

(assert (=> b!4466490 m!5171417))

(assert (=> b!4466490 m!5171417))

(declare-fun m!5171419 () Bool)

(assert (=> b!4466490 m!5171419))

(declare-fun m!5171421 () Bool)

(assert (=> b!4466492 m!5171421))

(declare-fun m!5171423 () Bool)

(assert (=> b!4466487 m!5171423))

(assert (=> b!4466487 m!5170907))

(declare-fun m!5171425 () Bool)

(assert (=> b!4466488 m!5171425))

(declare-fun m!5171427 () Bool)

(assert (=> b!4466488 m!5171427))

(declare-fun m!5171429 () Bool)

(assert (=> b!4466488 m!5171429))

(assert (=> b!4466488 m!5171429))

(declare-fun m!5171431 () Bool)

(assert (=> b!4466488 m!5171431))

(declare-fun m!5171433 () Bool)

(assert (=> b!4466488 m!5171433))

(declare-fun m!5171435 () Bool)

(assert (=> d!1362149 m!5171435))

(assert (=> d!1362149 m!5170583))

(assert (=> b!4466491 m!5171429))

(assert (=> b!4466491 m!5171429))

(declare-fun m!5171437 () Bool)

(assert (=> b!4466491 m!5171437))

(assert (=> b!4465823 d!1362149))

(declare-fun d!1362151 () Bool)

(declare-fun c!760224 () Bool)

(assert (=> d!1362151 (= c!760224 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(declare-fun e!2781290 () (InoxSet tuple2!50508))

(assert (=> d!1362151 (= (content!8086 (toList!4043 lm!1477)) e!2781290)))

(declare-fun b!4466498 () Bool)

(assert (=> b!4466498 (= e!2781290 ((as const (Array tuple2!50508 Bool)) false))))

(declare-fun b!4466499 () Bool)

(assert (=> b!4466499 (= e!2781290 ((_ map or) (store ((as const (Array tuple2!50508 Bool)) false) (h!56024 (toList!4043 lm!1477)) true) (content!8086 (t!357341 (toList!4043 lm!1477)))))))

(assert (= (and d!1362151 c!760224) b!4466498))

(assert (= (and d!1362151 (not c!760224)) b!4466499))

(declare-fun m!5171439 () Bool)

(assert (=> b!4466499 m!5171439))

(assert (=> b!4466499 m!5171069))

(assert (=> d!1361855 d!1362151))

(declare-fun b!4466500 () Bool)

(declare-fun e!2781291 () Option!10915)

(assert (=> b!4466500 (= e!2781291 (Some!10914 (_2!28548 (h!56024 (toList!4043 lt!1655600)))))))

(declare-fun b!4466503 () Bool)

(declare-fun e!2781292 () Option!10915)

(assert (=> b!4466503 (= e!2781292 None!10914)))

(declare-fun b!4466502 () Bool)

(assert (=> b!4466502 (= e!2781292 (getValueByKey!901 (t!357341 (toList!4043 lt!1655600)) (_1!28548 lt!1655466)))))

(declare-fun b!4466501 () Bool)

(assert (=> b!4466501 (= e!2781291 e!2781292)))

(declare-fun c!760226 () Bool)

(assert (=> b!4466501 (= c!760226 (and ((_ is Cons!50267) (toList!4043 lt!1655600)) (not (= (_1!28548 (h!56024 (toList!4043 lt!1655600))) (_1!28548 lt!1655466)))))))

(declare-fun d!1362153 () Bool)

(declare-fun c!760225 () Bool)

(assert (=> d!1362153 (= c!760225 (and ((_ is Cons!50267) (toList!4043 lt!1655600)) (= (_1!28548 (h!56024 (toList!4043 lt!1655600))) (_1!28548 lt!1655466))))))

(assert (=> d!1362153 (= (getValueByKey!901 (toList!4043 lt!1655600) (_1!28548 lt!1655466)) e!2781291)))

(assert (= (and d!1362153 c!760225) b!4466500))

(assert (= (and d!1362153 (not c!760225)) b!4466501))

(assert (= (and b!4466501 c!760226) b!4466502))

(assert (= (and b!4466501 (not c!760226)) b!4466503))

(declare-fun m!5171445 () Bool)

(assert (=> b!4466502 m!5171445))

(assert (=> b!4465811 d!1362153))

(assert (=> bs!793075 d!1362117))

(declare-fun d!1362155 () Bool)

(declare-fun c!760230 () Bool)

(assert (=> d!1362155 (= c!760230 ((_ is Nil!50269) (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun e!2781296 () (InoxSet K!11685))

(assert (=> d!1362155 (= (content!8085 (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) e!2781296)))

(declare-fun b!4466510 () Bool)

(assert (=> b!4466510 (= e!2781296 ((as const (Array K!11685 Bool)) false))))

(declare-fun b!4466511 () Bool)

(assert (=> b!4466511 (= e!2781296 ((_ map or) (store ((as const (Array K!11685 Bool)) false) (h!56028 (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) true) (content!8085 (t!357343 (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(assert (= (and d!1362155 c!760230) b!4466510))

(assert (= (and d!1362155 (not c!760230)) b!4466511))

(declare-fun m!5171475 () Bool)

(assert (=> b!4466511 m!5171475))

(declare-fun m!5171477 () Bool)

(assert (=> b!4466511 m!5171477))

(assert (=> b!4465817 d!1362155))

(declare-fun bs!793314 () Bool)

(declare-fun b!4466513 () Bool)

(assert (= bs!793314 (and b!4466513 b!4466488)))

(declare-fun lambda!162775 () Int)

(assert (=> bs!793314 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462))))) (= lambda!162775 lambda!162769))))

(declare-fun bs!793315 () Bool)

(assert (= bs!793315 (and b!4466513 b!4466208)))

(assert (=> bs!793315 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162775 lambda!162740))))

(declare-fun bs!793316 () Bool)

(assert (= bs!793316 (and b!4466513 b!4466268)))

(assert (=> bs!793316 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162775 lambda!162742))))

(declare-fun bs!793317 () Bool)

(assert (= bs!793317 (and b!4466513 b!4466137)))

(assert (=> bs!793317 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162775 lambda!162725))))

(declare-fun bs!793318 () Bool)

(assert (= bs!793318 (and b!4466513 b!4466204)))

(assert (=> bs!793318 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162775 lambda!162739))))

(declare-fun bs!793319 () Bool)

(assert (= bs!793319 (and b!4466513 b!4466207)))

(assert (=> bs!793319 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162775 lambda!162738))))

(declare-fun bs!793320 () Bool)

(assert (= bs!793320 (and b!4466513 b!4466491)))

(assert (=> bs!793320 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (= lambda!162775 lambda!162767))))

(declare-fun bs!793321 () Bool)

(assert (= bs!793321 (and b!4466513 b!4466492)))

(assert (=> bs!793321 (= (= (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162775 lambda!162770))))

(assert (=> b!4466513 true))

(declare-fun bs!793322 () Bool)

(declare-fun b!4466514 () Bool)

(assert (= bs!793322 (and b!4466514 b!4466138)))

(declare-fun lambda!162777 () Int)

(assert (=> bs!793322 (= lambda!162777 lambda!162726)))

(declare-fun bs!793324 () Bool)

(assert (= bs!793324 (and b!4466514 b!4466206)))

(assert (=> bs!793324 (= lambda!162777 lambda!162741)))

(declare-fun bs!793326 () Bool)

(assert (= bs!793326 (and b!4466514 b!4466269)))

(assert (=> bs!793326 (= lambda!162777 lambda!162743)))

(declare-fun bs!793328 () Bool)

(assert (= bs!793328 (and b!4466514 b!4466490)))

(assert (=> bs!793328 (= lambda!162777 lambda!162772)))

(declare-fun d!1362159 () Bool)

(declare-fun e!2781297 () Bool)

(assert (=> d!1362159 e!2781297))

(declare-fun res!1852852 () Bool)

(assert (=> d!1362159 (=> (not res!1852852) (not e!2781297))))

(declare-fun lt!1656071 () List!50393)

(assert (=> d!1362159 (= res!1852852 (noDuplicate!693 lt!1656071))))

(assert (=> d!1362159 (= lt!1656071 (getKeysList!369 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(assert (=> d!1362159 (= (keys!17350 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lt!1656071)))

(declare-fun b!4466512 () Bool)

(declare-fun res!1852851 () Bool)

(assert (=> b!4466512 (=> (not res!1852851) (not e!2781297))))

(assert (=> b!4466512 (= res!1852851 (= (length!242 lt!1656071) (length!243 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun res!1852850 () Bool)

(assert (=> b!4466513 (=> (not res!1852850) (not e!2781297))))

(assert (=> b!4466513 (= res!1852850 (forall!9975 lt!1656071 lambda!162775))))

(assert (=> b!4466514 (= e!2781297 (= (content!8085 lt!1656071) (content!8085 (map!11013 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) lambda!162777))))))

(assert (= (and d!1362159 res!1852852) b!4466512))

(assert (= (and b!4466512 res!1852851) b!4466513))

(assert (= (and b!4466513 res!1852850) b!4466514))

(declare-fun m!5171487 () Bool)

(assert (=> d!1362159 m!5171487))

(declare-fun m!5171489 () Bool)

(assert (=> d!1362159 m!5171489))

(declare-fun m!5171491 () Bool)

(assert (=> b!4466512 m!5171491))

(declare-fun m!5171493 () Bool)

(assert (=> b!4466512 m!5171493))

(declare-fun m!5171495 () Bool)

(assert (=> b!4466513 m!5171495))

(declare-fun m!5171497 () Bool)

(assert (=> b!4466514 m!5171497))

(declare-fun m!5171499 () Bool)

(assert (=> b!4466514 m!5171499))

(assert (=> b!4466514 m!5171499))

(declare-fun m!5171501 () Bool)

(assert (=> b!4466514 m!5171501))

(assert (=> b!4465817 d!1362159))

(declare-fun d!1362163 () Bool)

(declare-fun c!760232 () Bool)

(assert (=> d!1362163 (= c!760232 ((_ is Nil!50269) (keys!17350 lt!1655607)))))

(declare-fun e!2781301 () (InoxSet K!11685))

(assert (=> d!1362163 (= (content!8085 (keys!17350 lt!1655607)) e!2781301)))

(declare-fun b!4466520 () Bool)

(assert (=> b!4466520 (= e!2781301 ((as const (Array K!11685 Bool)) false))))

(declare-fun b!4466521 () Bool)

(assert (=> b!4466521 (= e!2781301 ((_ map or) (store ((as const (Array K!11685 Bool)) false) (h!56028 (keys!17350 lt!1655607)) true) (content!8085 (t!357343 (keys!17350 lt!1655607)))))))

(assert (= (and d!1362163 c!760232) b!4466520))

(assert (= (and d!1362163 (not c!760232)) b!4466521))

(declare-fun m!5171503 () Bool)

(assert (=> b!4466521 m!5171503))

(declare-fun m!5171505 () Bool)

(assert (=> b!4466521 m!5171505))

(assert (=> b!4465817 d!1362163))

(declare-fun bs!793336 () Bool)

(declare-fun b!4466523 () Bool)

(assert (= bs!793336 (and b!4466523 b!4466488)))

(declare-fun lambda!162779 () Int)

(assert (=> bs!793336 (= (= (toList!4044 lt!1655607) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 lt!1655462))) (t!357340 (toList!4044 (extractMap!1074 lt!1655462))))) (= lambda!162779 lambda!162769))))

(declare-fun bs!793339 () Bool)

(assert (= bs!793339 (and b!4466523 b!4466208)))

(assert (=> bs!793339 (= (= (toList!4044 lt!1655607) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162779 lambda!162740))))

(declare-fun bs!793341 () Bool)

(assert (= bs!793341 (and b!4466523 b!4466268)))

(assert (=> bs!793341 (= (= (toList!4044 lt!1655607) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= lambda!162779 lambda!162742))))

(declare-fun bs!793342 () Bool)

(assert (= bs!793342 (and b!4466523 b!4466137)))

(assert (=> bs!793342 (= (= (toList!4044 lt!1655607) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162779 lambda!162725))))

(declare-fun bs!793344 () Bool)

(assert (= bs!793344 (and b!4466523 b!4466513)))

(assert (=> bs!793344 (= (= (toList!4044 lt!1655607) (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162779 lambda!162775))))

(declare-fun bs!793346 () Bool)

(assert (= bs!793346 (and b!4466523 b!4466204)))

(assert (=> bs!793346 (= (= (toList!4044 lt!1655607) (Cons!50266 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))) (= lambda!162779 lambda!162739))))

(declare-fun bs!793348 () Bool)

(assert (= bs!793348 (and b!4466523 b!4466207)))

(assert (=> bs!793348 (= (= (toList!4044 lt!1655607) (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) (= lambda!162779 lambda!162738))))

(declare-fun bs!793350 () Bool)

(assert (= bs!793350 (and b!4466523 b!4466491)))

(assert (=> bs!793350 (= (= (toList!4044 lt!1655607) (t!357340 (toList!4044 (extractMap!1074 lt!1655462)))) (= lambda!162779 lambda!162767))))

(declare-fun bs!793352 () Bool)

(assert (= bs!793352 (and b!4466523 b!4466492)))

(assert (=> bs!793352 (= (= (toList!4044 lt!1655607) (toList!4044 (extractMap!1074 lt!1655462))) (= lambda!162779 lambda!162770))))

(assert (=> b!4466523 true))

(declare-fun bs!793354 () Bool)

(declare-fun b!4466524 () Bool)

(assert (= bs!793354 (and b!4466524 b!4466138)))

(declare-fun lambda!162780 () Int)

(assert (=> bs!793354 (= lambda!162780 lambda!162726)))

(declare-fun bs!793356 () Bool)

(assert (= bs!793356 (and b!4466524 b!4466490)))

(assert (=> bs!793356 (= lambda!162780 lambda!162772)))

(declare-fun bs!793357 () Bool)

(assert (= bs!793357 (and b!4466524 b!4466206)))

(assert (=> bs!793357 (= lambda!162780 lambda!162741)))

(declare-fun bs!793359 () Bool)

(assert (= bs!793359 (and b!4466524 b!4466269)))

(assert (=> bs!793359 (= lambda!162780 lambda!162743)))

(declare-fun bs!793360 () Bool)

(assert (= bs!793360 (and b!4466524 b!4466514)))

(assert (=> bs!793360 (= lambda!162780 lambda!162777)))

(declare-fun d!1362165 () Bool)

(declare-fun e!2781302 () Bool)

(assert (=> d!1362165 e!2781302))

(declare-fun res!1852858 () Bool)

(assert (=> d!1362165 (=> (not res!1852858) (not e!2781302))))

(declare-fun lt!1656093 () List!50393)

(assert (=> d!1362165 (= res!1852858 (noDuplicate!693 lt!1656093))))

(assert (=> d!1362165 (= lt!1656093 (getKeysList!369 (toList!4044 lt!1655607)))))

(assert (=> d!1362165 (= (keys!17350 lt!1655607) lt!1656093)))

(declare-fun b!4466522 () Bool)

(declare-fun res!1852857 () Bool)

(assert (=> b!4466522 (=> (not res!1852857) (not e!2781302))))

(assert (=> b!4466522 (= res!1852857 (= (length!242 lt!1656093) (length!243 (toList!4044 lt!1655607))))))

(declare-fun res!1852856 () Bool)

(assert (=> b!4466523 (=> (not res!1852856) (not e!2781302))))

(assert (=> b!4466523 (= res!1852856 (forall!9975 lt!1656093 lambda!162779))))

(assert (=> b!4466524 (= e!2781302 (= (content!8085 lt!1656093) (content!8085 (map!11013 (toList!4044 lt!1655607) lambda!162780))))))

(assert (= (and d!1362165 res!1852858) b!4466522))

(assert (= (and b!4466522 res!1852857) b!4466523))

(assert (= (and b!4466523 res!1852856) b!4466524))

(declare-fun m!5171507 () Bool)

(assert (=> d!1362165 m!5171507))

(declare-fun m!5171509 () Bool)

(assert (=> d!1362165 m!5171509))

(declare-fun m!5171511 () Bool)

(assert (=> b!4466522 m!5171511))

(declare-fun m!5171513 () Bool)

(assert (=> b!4466522 m!5171513))

(declare-fun m!5171515 () Bool)

(assert (=> b!4466523 m!5171515))

(declare-fun m!5171517 () Bool)

(assert (=> b!4466524 m!5171517))

(declare-fun m!5171519 () Bool)

(assert (=> b!4466524 m!5171519))

(assert (=> b!4466524 m!5171519))

(declare-fun m!5171521 () Bool)

(assert (=> b!4466524 m!5171521))

(assert (=> b!4465817 d!1362165))

(declare-fun d!1362167 () Bool)

(declare-fun res!1852859 () Bool)

(declare-fun e!2781303 () Bool)

(assert (=> d!1362167 (=> res!1852859 e!2781303)))

(assert (=> d!1362167 (= res!1852859 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))) key!3287)))))

(assert (=> d!1362167 (= (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287) e!2781303)))

(declare-fun b!4466525 () Bool)

(declare-fun e!2781304 () Bool)

(assert (=> b!4466525 (= e!2781303 e!2781304)))

(declare-fun res!1852860 () Bool)

(assert (=> b!4466525 (=> (not res!1852860) (not e!2781304))))

(assert (=> b!4466525 (= res!1852860 ((_ is Cons!50266) (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))))))

(declare-fun b!4466526 () Bool)

(assert (=> b!4466526 (= e!2781304 (containsKey!1453 (t!357340 (toList!4044 (extractMap!1074 (toList!4043 lm!1477)))) key!3287))))

(assert (= (and d!1362167 (not res!1852859)) b!4466525))

(assert (= (and b!4466525 res!1852860) b!4466526))

(declare-fun m!5171523 () Bool)

(assert (=> b!4466526 m!5171523))

(assert (=> b!4465726 d!1362167))

(declare-fun d!1362169 () Bool)

(assert (=> d!1362169 (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287)))

(declare-fun lt!1656094 () Unit!87263)

(assert (=> d!1362169 (= lt!1656094 (choose!28508 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287))))

(assert (=> d!1362169 (invariantList!921 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))))))

(assert (=> d!1362169 (= (lemmaInGetKeysListThenContainsKey!368 (toList!4044 (extractMap!1074 (toList!4043 lm!1477))) key!3287) lt!1656094)))

(declare-fun bs!793361 () Bool)

(assert (= bs!793361 d!1362169))

(assert (=> bs!793361 m!5170321))

(declare-fun m!5171525 () Bool)

(assert (=> bs!793361 m!5171525))

(assert (=> bs!793361 m!5170587))

(assert (=> b!4465726 d!1362169))

(assert (=> d!1361761 d!1362167))

(assert (=> b!4465724 d!1362023))

(assert (=> b!4465724 d!1362025))

(assert (=> b!4465821 d!1361941))

(assert (=> b!4465821 d!1361943))

(declare-fun d!1362171 () Bool)

(assert (=> d!1362171 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(declare-fun lt!1656095 () Unit!87263)

(assert (=> d!1362171 (= lt!1656095 (choose!28509 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> d!1362171 (invariantList!921 (toList!4044 (extractMap!1074 lt!1655462)))))

(assert (=> d!1362171 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 lt!1655462)) key!3287) lt!1656095)))

(declare-fun bs!793362 () Bool)

(assert (= bs!793362 d!1362171))

(assert (=> bs!793362 m!5170485))

(assert (=> bs!793362 m!5170485))

(assert (=> bs!793362 m!5170487))

(declare-fun m!5171527 () Bool)

(assert (=> bs!793362 m!5171527))

(assert (=> bs!793362 m!5170583))

(assert (=> b!4465827 d!1362171))

(assert (=> b!4465827 d!1361989))

(assert (=> b!4465827 d!1361993))

(declare-fun d!1362173 () Bool)

(assert (=> d!1362173 (contains!12809 (getKeysList!369 (toList!4044 (extractMap!1074 lt!1655462))) key!3287)))

(declare-fun lt!1656096 () Unit!87263)

(assert (=> d!1362173 (= lt!1656096 (choose!28510 (toList!4044 (extractMap!1074 lt!1655462)) key!3287))))

(assert (=> d!1362173 (invariantList!921 (toList!4044 (extractMap!1074 lt!1655462)))))

(assert (=> d!1362173 (= (lemmaInListThenGetKeysListContains!365 (toList!4044 (extractMap!1074 lt!1655462)) key!3287) lt!1656096)))

(declare-fun bs!793363 () Bool)

(assert (= bs!793363 d!1362173))

(assert (=> bs!793363 m!5170481))

(assert (=> bs!793363 m!5170481))

(declare-fun m!5171529 () Bool)

(assert (=> bs!793363 m!5171529))

(declare-fun m!5171531 () Bool)

(assert (=> bs!793363 m!5171531))

(assert (=> bs!793363 m!5170583))

(assert (=> b!4465827 d!1362173))

(declare-fun bm!310940 () Bool)

(declare-fun call!310945 () Bool)

(declare-fun e!2781307 () List!50393)

(assert (=> bm!310940 (= call!310945 (contains!12809 e!2781307 key!3287))))

(declare-fun c!760234 () Bool)

(declare-fun c!760233 () Bool)

(assert (=> bm!310940 (= c!760234 c!760233)))

(declare-fun b!4466528 () Bool)

(declare-fun e!2781310 () Bool)

(assert (=> b!4466528 (= e!2781310 (contains!12809 (keys!17350 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(declare-fun b!4466529 () Bool)

(declare-fun e!2781305 () Bool)

(assert (=> b!4466529 (= e!2781305 (not (contains!12809 (keys!17350 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287)))))

(declare-fun b!4466530 () Bool)

(assert (=> b!4466530 (= e!2781307 (getKeysList!369 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462))))))))

(declare-fun b!4466531 () Bool)

(assert (=> b!4466531 false))

(declare-fun lt!1656099 () Unit!87263)

(declare-fun lt!1656102 () Unit!87263)

(assert (=> b!4466531 (= lt!1656099 lt!1656102)))

(assert (=> b!4466531 (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287)))

(assert (=> b!4466531 (= lt!1656102 (lemmaInGetKeysListThenContainsKey!368 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(declare-fun e!2781308 () Unit!87263)

(declare-fun Unit!87354 () Unit!87263)

(assert (=> b!4466531 (= e!2781308 Unit!87354)))

(declare-fun b!4466532 () Bool)

(declare-fun Unit!87355 () Unit!87263)

(assert (=> b!4466532 (= e!2781308 Unit!87355)))

(declare-fun b!4466533 () Bool)

(declare-fun e!2781309 () Unit!87263)

(assert (=> b!4466533 (= e!2781309 e!2781308)))

(declare-fun c!760235 () Bool)

(assert (=> b!4466533 (= c!760235 call!310945)))

(declare-fun b!4466534 () Bool)

(declare-fun lt!1656104 () Unit!87263)

(assert (=> b!4466534 (= e!2781309 lt!1656104)))

(declare-fun lt!1656098 () Unit!87263)

(assert (=> b!4466534 (= lt!1656098 (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(assert (=> b!4466534 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(declare-fun lt!1656101 () Unit!87263)

(assert (=> b!4466534 (= lt!1656101 lt!1656098)))

(assert (=> b!4466534 (= lt!1656104 (lemmaInListThenGetKeysListContains!365 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(assert (=> b!4466534 call!310945))

(declare-fun b!4466535 () Bool)

(declare-fun e!2781306 () Bool)

(assert (=> b!4466535 (= e!2781306 e!2781310)))

(declare-fun res!1852861 () Bool)

(assert (=> b!4466535 (=> (not res!1852861) (not e!2781310))))

(assert (=> b!4466535 (= res!1852861 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287)))))

(declare-fun b!4466527 () Bool)

(assert (=> b!4466527 (= e!2781307 (keys!17350 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))))))

(declare-fun d!1362175 () Bool)

(assert (=> d!1362175 e!2781306))

(declare-fun res!1852862 () Bool)

(assert (=> d!1362175 (=> res!1852862 e!2781306)))

(assert (=> d!1362175 (= res!1852862 e!2781305)))

(declare-fun res!1852863 () Bool)

(assert (=> d!1362175 (=> (not res!1852863) (not e!2781305))))

(declare-fun lt!1656097 () Bool)

(assert (=> d!1362175 (= res!1852863 (not lt!1656097))))

(declare-fun lt!1656103 () Bool)

(assert (=> d!1362175 (= lt!1656097 lt!1656103)))

(declare-fun lt!1656100 () Unit!87263)

(assert (=> d!1362175 (= lt!1656100 e!2781309)))

(assert (=> d!1362175 (= c!760233 lt!1656103)))

(assert (=> d!1362175 (= lt!1656103 (containsKey!1453 (toList!4044 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462)))) key!3287))))

(assert (=> d!1362175 (= (contains!12807 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462))) key!3287) lt!1656097)))

(assert (= (and d!1362175 c!760233) b!4466534))

(assert (= (and d!1362175 (not c!760233)) b!4466533))

(assert (= (and b!4466533 c!760235) b!4466531))

(assert (= (and b!4466533 (not c!760235)) b!4466532))

(assert (= (or b!4466534 b!4466533) bm!310940))

(assert (= (and bm!310940 c!760234) b!4466530))

(assert (= (and bm!310940 (not c!760234)) b!4466527))

(assert (= (and d!1362175 res!1852863) b!4466529))

(assert (= (and d!1362175 (not res!1852862)) b!4466535))

(assert (= (and b!4466535 res!1852861) b!4466528))

(declare-fun m!5171533 () Bool)

(assert (=> b!4466530 m!5171533))

(declare-fun m!5171535 () Bool)

(assert (=> d!1362175 m!5171535))

(declare-fun m!5171537 () Bool)

(assert (=> b!4466535 m!5171537))

(assert (=> b!4466535 m!5171537))

(declare-fun m!5171539 () Bool)

(assert (=> b!4466535 m!5171539))

(declare-fun m!5171541 () Bool)

(assert (=> bm!310940 m!5171541))

(assert (=> b!4466531 m!5171535))

(declare-fun m!5171543 () Bool)

(assert (=> b!4466531 m!5171543))

(assert (=> b!4466527 m!5170525))

(declare-fun m!5171545 () Bool)

(assert (=> b!4466527 m!5171545))

(assert (=> b!4466528 m!5170525))

(assert (=> b!4466528 m!5171545))

(assert (=> b!4466528 m!5171545))

(declare-fun m!5171547 () Bool)

(assert (=> b!4466528 m!5171547))

(assert (=> b!4466529 m!5170525))

(assert (=> b!4466529 m!5171545))

(assert (=> b!4466529 m!5171545))

(assert (=> b!4466529 m!5171547))

(declare-fun m!5171549 () Bool)

(assert (=> b!4466534 m!5171549))

(assert (=> b!4466534 m!5171537))

(assert (=> b!4466534 m!5171537))

(assert (=> b!4466534 m!5171539))

(declare-fun m!5171551 () Bool)

(assert (=> b!4466534 m!5171551))

(assert (=> d!1361837 d!1362175))

(declare-fun bs!793376 () Bool)

(declare-fun d!1362177 () Bool)

(assert (= bs!793376 (and d!1362177 d!1361843)))

(declare-fun lambda!162783 () Int)

(assert (=> bs!793376 (= lambda!162783 lambda!162640)))

(declare-fun bs!793377 () Bool)

(assert (= bs!793377 (and d!1362177 d!1361747)))

(assert (=> bs!793377 (= lambda!162783 lambda!162608)))

(declare-fun bs!793378 () Bool)

(assert (= bs!793378 (and d!1362177 d!1362029)))

(assert (=> bs!793378 (= lambda!162783 lambda!162756)))

(declare-fun bs!793379 () Bool)

(assert (= bs!793379 (and d!1362177 d!1361857)))

(assert (=> bs!793379 (not (= lambda!162783 lambda!162643))))

(declare-fun bs!793380 () Bool)

(assert (= bs!793380 (and d!1362177 d!1361821)))

(assert (=> bs!793380 (= lambda!162783 lambda!162632)))

(declare-fun bs!793381 () Bool)

(assert (= bs!793381 (and d!1362177 d!1362119)))

(assert (=> bs!793381 (= lambda!162783 lambda!162765)))

(declare-fun bs!793382 () Bool)

(assert (= bs!793382 (and d!1362177 start!438344)))

(assert (=> bs!793382 (= lambda!162783 lambda!162601)))

(declare-fun bs!793383 () Bool)

(assert (= bs!793383 (and d!1362177 d!1361783)))

(assert (=> bs!793383 (= lambda!162783 lambda!162626)))

(declare-fun bs!793384 () Bool)

(assert (= bs!793384 (and d!1362177 d!1361923)))

(assert (=> bs!793384 (= lambda!162783 lambda!162720)))

(declare-fun bs!793385 () Bool)

(assert (= bs!793385 (and d!1362177 d!1361829)))

(assert (=> bs!793385 (= lambda!162783 lambda!162633)))

(declare-fun bs!793386 () Bool)

(assert (= bs!793386 (and d!1362177 d!1361837)))

(assert (=> bs!793386 (= lambda!162783 lambda!162637)))

(declare-fun bs!793387 () Bool)

(assert (= bs!793387 (and d!1362177 d!1361835)))

(assert (=> bs!793387 (= lambda!162783 lambda!162634)))

(declare-fun lt!1656105 () ListMap!3305)

(assert (=> d!1362177 (invariantList!921 (toList!4044 lt!1656105))))

(declare-fun e!2781311 () ListMap!3305)

(assert (=> d!1362177 (= lt!1656105 e!2781311)))

(declare-fun c!760236 () Bool)

(assert (=> d!1362177 (= c!760236 ((_ is Cons!50267) (toList!4043 (ListLongMap!2676 lt!1655462))))))

(assert (=> d!1362177 (forall!9972 (toList!4043 (ListLongMap!2676 lt!1655462)) lambda!162783)))

(assert (=> d!1362177 (= (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462))) lt!1656105)))

(declare-fun b!4466536 () Bool)

(assert (=> b!4466536 (= e!2781311 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (toList!4043 (ListLongMap!2676 lt!1655462)))) (extractMap!1074 (t!357341 (toList!4043 (ListLongMap!2676 lt!1655462))))))))

(declare-fun b!4466537 () Bool)

(assert (=> b!4466537 (= e!2781311 (ListMap!3306 Nil!50266))))

(assert (= (and d!1362177 c!760236) b!4466536))

(assert (= (and d!1362177 (not c!760236)) b!4466537))

(declare-fun m!5171553 () Bool)

(assert (=> d!1362177 m!5171553))

(declare-fun m!5171555 () Bool)

(assert (=> d!1362177 m!5171555))

(declare-fun m!5171557 () Bool)

(assert (=> b!4466536 m!5171557))

(assert (=> b!4466536 m!5171557))

(declare-fun m!5171559 () Bool)

(assert (=> b!4466536 m!5171559))

(assert (=> d!1361837 d!1362177))

(declare-fun d!1362179 () Bool)

(assert (=> d!1362179 (contains!12807 (extractMap!1074 (toList!4043 (ListLongMap!2676 lt!1655462))) key!3287)))

(assert (=> d!1362179 true))

(declare-fun _$34!544 () Unit!87263)

(assert (=> d!1362179 (= (choose!28504 (ListLongMap!2676 lt!1655462) key!3287 hashF!1107) _$34!544)))

(declare-fun bs!793423 () Bool)

(assert (= bs!793423 d!1362179))

(assert (=> bs!793423 m!5170525))

(assert (=> bs!793423 m!5170525))

(assert (=> bs!793423 m!5170527))

(assert (=> d!1361837 d!1362179))

(declare-fun d!1362191 () Bool)

(declare-fun res!1852870 () Bool)

(declare-fun e!2781319 () Bool)

(assert (=> d!1362191 (=> res!1852870 e!2781319)))

(assert (=> d!1362191 (= res!1852870 ((_ is Nil!50267) (toList!4043 (ListLongMap!2676 lt!1655462))))))

(assert (=> d!1362191 (= (forall!9972 (toList!4043 (ListLongMap!2676 lt!1655462)) lambda!162637) e!2781319)))

(declare-fun b!4466554 () Bool)

(declare-fun e!2781320 () Bool)

(assert (=> b!4466554 (= e!2781319 e!2781320)))

(declare-fun res!1852871 () Bool)

(assert (=> b!4466554 (=> (not res!1852871) (not e!2781320))))

(assert (=> b!4466554 (= res!1852871 (dynLambda!21002 lambda!162637 (h!56024 (toList!4043 (ListLongMap!2676 lt!1655462)))))))

(declare-fun b!4466555 () Bool)

(assert (=> b!4466555 (= e!2781320 (forall!9972 (t!357341 (toList!4043 (ListLongMap!2676 lt!1655462))) lambda!162637))))

(assert (= (and d!1362191 (not res!1852870)) b!4466554))

(assert (= (and b!4466554 res!1852871) b!4466555))

(declare-fun b_lambda!148101 () Bool)

(assert (=> (not b_lambda!148101) (not b!4466554)))

(declare-fun m!5171629 () Bool)

(assert (=> b!4466554 m!5171629))

(declare-fun m!5171635 () Bool)

(assert (=> b!4466555 m!5171635))

(assert (=> d!1361837 d!1362191))

(declare-fun d!1362193 () Bool)

(declare-fun lt!1656109 () Bool)

(assert (=> d!1362193 (= lt!1656109 (select (content!8086 (toList!4043 lt!1655608)) lt!1655466))))

(declare-fun e!2781322 () Bool)

(assert (=> d!1362193 (= lt!1656109 e!2781322)))

(declare-fun res!1852872 () Bool)

(assert (=> d!1362193 (=> (not res!1852872) (not e!2781322))))

(assert (=> d!1362193 (= res!1852872 ((_ is Cons!50267) (toList!4043 lt!1655608)))))

(assert (=> d!1362193 (= (contains!12805 (toList!4043 lt!1655608) lt!1655466) lt!1656109)))

(declare-fun b!4466556 () Bool)

(declare-fun e!2781321 () Bool)

(assert (=> b!4466556 (= e!2781322 e!2781321)))

(declare-fun res!1852873 () Bool)

(assert (=> b!4466556 (=> res!1852873 e!2781321)))

(assert (=> b!4466556 (= res!1852873 (= (h!56024 (toList!4043 lt!1655608)) lt!1655466))))

(declare-fun b!4466557 () Bool)

(assert (=> b!4466557 (= e!2781321 (contains!12805 (t!357341 (toList!4043 lt!1655608)) lt!1655466))))

(assert (= (and d!1362193 res!1852872) b!4466556))

(assert (= (and b!4466556 (not res!1852873)) b!4466557))

(declare-fun m!5171643 () Bool)

(assert (=> d!1362193 m!5171643))

(declare-fun m!5171645 () Bool)

(assert (=> d!1362193 m!5171645))

(declare-fun m!5171647 () Bool)

(assert (=> b!4466557 m!5171647))

(assert (=> b!4465819 d!1362193))

(assert (=> b!4465730 d!1361871))

(assert (=> b!4465730 d!1361873))

(assert (=> d!1361747 d!1361761))

(assert (=> d!1361747 d!1361783))

(declare-fun d!1362197 () Bool)

(assert (=> d!1362197 (not (contains!12807 (extractMap!1074 (toList!4043 lm!1477)) key!3287))))

(assert (=> d!1362197 true))

(declare-fun _$26!227 () Unit!87263)

(assert (=> d!1362197 (= (choose!28502 lm!1477 key!3287 hashF!1107) _$26!227)))

(declare-fun bs!793428 () Bool)

(assert (= bs!793428 d!1362197))

(assert (=> bs!793428 m!5170123))

(assert (=> bs!793428 m!5170123))

(assert (=> bs!793428 m!5170125))

(assert (=> d!1361747 d!1362197))

(declare-fun d!1362199 () Bool)

(declare-fun res!1852874 () Bool)

(declare-fun e!2781323 () Bool)

(assert (=> d!1362199 (=> res!1852874 e!2781323)))

(assert (=> d!1362199 (= res!1852874 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1362199 (= (forall!9972 (toList!4043 lm!1477) lambda!162608) e!2781323)))

(declare-fun b!4466558 () Bool)

(declare-fun e!2781324 () Bool)

(assert (=> b!4466558 (= e!2781323 e!2781324)))

(declare-fun res!1852875 () Bool)

(assert (=> b!4466558 (=> (not res!1852875) (not e!2781324))))

(assert (=> b!4466558 (= res!1852875 (dynLambda!21002 lambda!162608 (h!56024 (toList!4043 lm!1477))))))

(declare-fun b!4466559 () Bool)

(assert (=> b!4466559 (= e!2781324 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162608))))

(assert (= (and d!1362199 (not res!1852874)) b!4466558))

(assert (= (and b!4466558 res!1852875) b!4466559))

(declare-fun b_lambda!148103 () Bool)

(assert (=> (not b_lambda!148103) (not b!4466558)))

(declare-fun m!5171649 () Bool)

(assert (=> b!4466558 m!5171649))

(declare-fun m!5171651 () Bool)

(assert (=> b!4466559 m!5171651))

(assert (=> d!1361747 d!1362199))

(declare-fun bm!310941 () Bool)

(declare-fun call!310946 () Bool)

(declare-fun e!2781327 () List!50393)

(assert (=> bm!310941 (= call!310946 (contains!12809 e!2781327 key!3287))))

(declare-fun c!760243 () Bool)

(declare-fun c!760242 () Bool)

(assert (=> bm!310941 (= c!760243 c!760242)))

(declare-fun b!4466561 () Bool)

(declare-fun e!2781330 () Bool)

(assert (=> b!4466561 (= e!2781330 (contains!12809 (keys!17350 lt!1655607) key!3287))))

(declare-fun b!4466562 () Bool)

(declare-fun e!2781325 () Bool)

(assert (=> b!4466562 (= e!2781325 (not (contains!12809 (keys!17350 lt!1655607) key!3287)))))

(declare-fun b!4466563 () Bool)

(assert (=> b!4466563 (= e!2781327 (getKeysList!369 (toList!4044 lt!1655607)))))

(declare-fun b!4466564 () Bool)

(assert (=> b!4466564 false))

(declare-fun lt!1656112 () Unit!87263)

(declare-fun lt!1656115 () Unit!87263)

(assert (=> b!4466564 (= lt!1656112 lt!1656115)))

(assert (=> b!4466564 (containsKey!1453 (toList!4044 lt!1655607) key!3287)))

(assert (=> b!4466564 (= lt!1656115 (lemmaInGetKeysListThenContainsKey!368 (toList!4044 lt!1655607) key!3287))))

(declare-fun e!2781328 () Unit!87263)

(declare-fun Unit!87357 () Unit!87263)

(assert (=> b!4466564 (= e!2781328 Unit!87357)))

(declare-fun b!4466565 () Bool)

(declare-fun Unit!87358 () Unit!87263)

(assert (=> b!4466565 (= e!2781328 Unit!87358)))

(declare-fun b!4466566 () Bool)

(declare-fun e!2781329 () Unit!87263)

(assert (=> b!4466566 (= e!2781329 e!2781328)))

(declare-fun c!760244 () Bool)

(assert (=> b!4466566 (= c!760244 call!310946)))

(declare-fun b!4466567 () Bool)

(declare-fun lt!1656117 () Unit!87263)

(assert (=> b!4466567 (= e!2781329 lt!1656117)))

(declare-fun lt!1656111 () Unit!87263)

(assert (=> b!4466567 (= lt!1656111 (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 lt!1655607) key!3287))))

(assert (=> b!4466567 (isDefined!8201 (getValueByKey!900 (toList!4044 lt!1655607) key!3287))))

(declare-fun lt!1656114 () Unit!87263)

(assert (=> b!4466567 (= lt!1656114 lt!1656111)))

(assert (=> b!4466567 (= lt!1656117 (lemmaInListThenGetKeysListContains!365 (toList!4044 lt!1655607) key!3287))))

(assert (=> b!4466567 call!310946))

(declare-fun b!4466568 () Bool)

(declare-fun e!2781326 () Bool)

(assert (=> b!4466568 (= e!2781326 e!2781330)))

(declare-fun res!1852876 () Bool)

(assert (=> b!4466568 (=> (not res!1852876) (not e!2781330))))

(assert (=> b!4466568 (= res!1852876 (isDefined!8201 (getValueByKey!900 (toList!4044 lt!1655607) key!3287)))))

(declare-fun b!4466560 () Bool)

(assert (=> b!4466560 (= e!2781327 (keys!17350 lt!1655607))))

(declare-fun d!1362201 () Bool)

(assert (=> d!1362201 e!2781326))

(declare-fun res!1852877 () Bool)

(assert (=> d!1362201 (=> res!1852877 e!2781326)))

(assert (=> d!1362201 (= res!1852877 e!2781325)))

(declare-fun res!1852878 () Bool)

(assert (=> d!1362201 (=> (not res!1852878) (not e!2781325))))

(declare-fun lt!1656110 () Bool)

(assert (=> d!1362201 (= res!1852878 (not lt!1656110))))

(declare-fun lt!1656116 () Bool)

(assert (=> d!1362201 (= lt!1656110 lt!1656116)))

(declare-fun lt!1656113 () Unit!87263)

(assert (=> d!1362201 (= lt!1656113 e!2781329)))

(assert (=> d!1362201 (= c!760242 lt!1656116)))

(assert (=> d!1362201 (= lt!1656116 (containsKey!1453 (toList!4044 lt!1655607) key!3287))))

(assert (=> d!1362201 (= (contains!12807 lt!1655607 key!3287) lt!1656110)))

(assert (= (and d!1362201 c!760242) b!4466567))

(assert (= (and d!1362201 (not c!760242)) b!4466566))

(assert (= (and b!4466566 c!760244) b!4466564))

(assert (= (and b!4466566 (not c!760244)) b!4466565))

(assert (= (or b!4466567 b!4466566) bm!310941))

(assert (= (and bm!310941 c!760243) b!4466563))

(assert (= (and bm!310941 (not c!760243)) b!4466560))

(assert (= (and d!1362201 res!1852878) b!4466562))

(assert (= (and d!1362201 (not res!1852877)) b!4466568))

(assert (= (and b!4466568 res!1852876) b!4466561))

(assert (=> b!4466563 m!5171509))

(declare-fun m!5171653 () Bool)

(assert (=> d!1362201 m!5171653))

(declare-fun m!5171655 () Bool)

(assert (=> b!4466568 m!5171655))

(assert (=> b!4466568 m!5171655))

(declare-fun m!5171657 () Bool)

(assert (=> b!4466568 m!5171657))

(declare-fun m!5171659 () Bool)

(assert (=> bm!310941 m!5171659))

(assert (=> b!4466564 m!5171653))

(declare-fun m!5171661 () Bool)

(assert (=> b!4466564 m!5171661))

(assert (=> b!4466560 m!5170461))

(assert (=> b!4466561 m!5170461))

(assert (=> b!4466561 m!5170461))

(declare-fun m!5171663 () Bool)

(assert (=> b!4466561 m!5171663))

(assert (=> b!4466562 m!5170461))

(assert (=> b!4466562 m!5170461))

(assert (=> b!4466562 m!5171663))

(declare-fun m!5171665 () Bool)

(assert (=> b!4466567 m!5171665))

(assert (=> b!4466567 m!5171655))

(assert (=> b!4466567 m!5171655))

(assert (=> b!4466567 m!5171657))

(declare-fun m!5171667 () Bool)

(assert (=> b!4466567 m!5171667))

(assert (=> d!1361823 d!1362201))

(declare-fun b!4466622 () Bool)

(declare-fun e!2781369 () List!50390)

(assert (=> b!4466622 (= e!2781369 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(declare-fun d!1362203 () Bool)

(declare-fun e!2781370 () Bool)

(assert (=> d!1362203 e!2781370))

(declare-fun res!1852890 () Bool)

(assert (=> d!1362203 (=> (not res!1852890) (not e!2781370))))

(declare-fun lt!1656160 () List!50390)

(assert (=> d!1362203 (= res!1852890 (invariantList!921 lt!1656160))))

(declare-fun e!2781364 () List!50390)

(assert (=> d!1362203 (= lt!1656160 e!2781364)))

(declare-fun c!760267 () Bool)

(assert (=> d!1362203 (= c!760267 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))) key!3287)))))

(assert (=> d!1362203 (invariantList!921 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))

(assert (=> d!1362203 (= (removePresrvNoDuplicatedKeys!57 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287) lt!1656160)))

(declare-fun call!310961 () (InoxSet tuple2!50506))

(declare-fun b!4466623 () Bool)

(declare-fun call!310963 () (InoxSet tuple2!50506))

(declare-fun get!16380 (Option!10914) V!11931)

(assert (=> b!4466623 (= call!310961 ((_ map and) call!310963 ((_ map not) (store ((as const (Array tuple2!50506 Bool)) false) (tuple2!50507 key!3287 (get!16380 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))) true))))))

(declare-fun lt!1656169 () Unit!87263)

(declare-fun e!2781366 () Unit!87263)

(assert (=> b!4466623 (= lt!1656169 e!2781366)))

(declare-fun c!760266 () Bool)

(declare-fun contains!12811 (List!50390 tuple2!50506) Bool)

(assert (=> b!4466623 (= c!760266 (contains!12811 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (tuple2!50507 key!3287 (get!16380 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287)))))))

(declare-fun e!2781362 () Unit!87263)

(declare-fun Unit!87359 () Unit!87263)

(assert (=> b!4466623 (= e!2781362 Unit!87359)))

(declare-fun b!4466624 () Bool)

(declare-fun res!1852891 () Bool)

(assert (=> b!4466624 (=> (not res!1852891) (not e!2781370))))

(assert (=> b!4466624 (= res!1852891 (not (containsKey!1453 lt!1656160 key!3287)))))

(declare-fun b!4466625 () Bool)

(declare-fun e!2781363 () Bool)

(declare-fun call!310962 () (InoxSet tuple2!50506))

(declare-fun call!310960 () (InoxSet tuple2!50506))

(assert (=> b!4466625 (= e!2781363 (= call!310960 ((_ map and) call!310962 ((_ map not) (store ((as const (Array tuple2!50506 Bool)) false) (tuple2!50507 key!3287 (get!16380 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))) true)))))))

(assert (=> b!4466625 (containsKey!1453 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287)))

(declare-fun lt!1656162 () Unit!87263)

(assert (=> b!4466625 (= lt!1656162 (lemmaContainsKeyImpliesGetValueByKeyDefined!804 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))))

(assert (=> b!4466625 (isDefined!8201 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))))

(declare-fun lt!1656172 () Unit!87263)

(assert (=> b!4466625 (= lt!1656172 lt!1656162)))

(declare-fun b!4466626 () Bool)

(declare-fun Unit!87360 () Unit!87263)

(assert (=> b!4466626 (= e!2781366 Unit!87360)))

(declare-fun bm!310954 () Bool)

(assert (=> bm!310954 (= call!310961 (content!8084 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun bm!310955 () Bool)

(assert (=> bm!310955 (= call!310963 (content!8084 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun bm!310956 () Bool)

(assert (=> bm!310956 (= call!310960 (content!8084 lt!1656160))))

(declare-fun b!4466627 () Bool)

(assert (=> b!4466627 (= call!310961 call!310963)))

(declare-fun Unit!87361 () Unit!87263)

(assert (=> b!4466627 (= e!2781362 Unit!87361)))

(declare-fun b!4466628 () Bool)

(declare-fun e!2781365 () List!50390)

(assert (=> b!4466628 (= e!2781365 Nil!50266)))

(declare-fun b!4466629 () Bool)

(assert (=> b!4466629 (= e!2781364 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun c!760265 () Bool)

(declare-fun call!310964 () Bool)

(assert (=> b!4466629 (= c!760265 call!310964)))

(declare-fun lt!1656159 () Unit!87263)

(assert (=> b!4466629 (= lt!1656159 e!2781362)))

(declare-fun b!4466630 () Bool)

(assert (=> b!4466630 (= e!2781364 e!2781365)))

(declare-fun c!760272 () Bool)

(assert (=> b!4466630 (= c!760272 (and ((_ is Cons!50266) (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (not (= (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))) key!3287))))))

(declare-fun bm!310957 () Bool)

(assert (=> bm!310957 (= call!310964 (containsKey!1453 e!2781369 (ite c!760267 key!3287 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))))

(declare-fun c!760271 () Bool)

(assert (=> bm!310957 (= c!760271 c!760267)))

(declare-fun b!4466631 () Bool)

(declare-fun res!1852889 () Bool)

(assert (=> b!4466631 (=> (not res!1852889) (not e!2781370))))

(assert (=> b!4466631 (= res!1852889 (= (content!8085 (getKeysList!369 lt!1656160)) ((_ map and) (content!8085 (getKeysList!369 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))) ((_ map not) (store ((as const (Array K!11685 Bool)) false) key!3287 true)))))))

(declare-fun b!4466632 () Bool)

(declare-fun e!2781368 () Unit!87263)

(declare-fun Unit!87362 () Unit!87263)

(assert (=> b!4466632 (= e!2781368 Unit!87362)))

(declare-fun b!4466633 () Bool)

(assert (=> b!4466633 (= e!2781370 e!2781363)))

(declare-fun c!760268 () Bool)

(assert (=> b!4466633 (= c!760268 (containsKey!1453 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))))

(declare-fun b!4466634 () Bool)

(declare-fun lt!1656156 () Unit!87263)

(declare-fun e!2781367 () Unit!87263)

(assert (=> b!4466634 (= lt!1656156 e!2781367)))

(declare-fun c!760270 () Bool)

(assert (=> b!4466634 (= c!760270 call!310964)))

(declare-fun lt!1656165 () Unit!87263)

(assert (=> b!4466634 (= lt!1656165 e!2781368)))

(declare-fun c!760269 () Bool)

(assert (=> b!4466634 (= c!760269 (contains!12809 (getKeysList!369 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(declare-fun lt!1656171 () List!50390)

(declare-fun $colon$colon!844 (List!50390 tuple2!50506) List!50390)

(assert (=> b!4466634 (= lt!1656171 ($colon$colon!844 (removePresrvNoDuplicatedKeys!57 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) key!3287) (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(assert (=> b!4466634 (= e!2781365 lt!1656171)))

(declare-fun b!4466635 () Bool)

(declare-fun Unit!87363 () Unit!87263)

(assert (=> b!4466635 (= e!2781367 Unit!87363)))

(declare-fun b!4466636 () Bool)

(declare-fun Unit!87364 () Unit!87263)

(assert (=> b!4466636 (= e!2781367 Unit!87364)))

(declare-fun lt!1656161 () List!50390)

(assert (=> b!4466636 (= lt!1656161 (removePresrvNoDuplicatedKeys!57 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) key!3287))))

(declare-fun lt!1656158 () Unit!87263)

(assert (=> b!4466636 (= lt!1656158 (lemmaInListThenGetKeysListContains!365 lt!1656161 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(assert (=> b!4466636 (contains!12809 (getKeysList!369 lt!1656161) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))

(declare-fun lt!1656170 () Unit!87263)

(assert (=> b!4466636 (= lt!1656170 lt!1656158)))

(assert (=> b!4466636 false))

(declare-fun b!4466637 () Bool)

(assert (=> b!4466637 (= e!2781369 (removePresrvNoDuplicatedKeys!57 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) key!3287))))

(declare-fun b!4466638 () Bool)

(declare-fun Unit!87366 () Unit!87263)

(assert (=> b!4466638 (= e!2781366 Unit!87366)))

(declare-fun lt!1656164 () V!11931)

(assert (=> b!4466638 (= lt!1656164 (get!16380 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287)))))

(declare-fun lt!1656163 () K!11685)

(assert (=> b!4466638 (= lt!1656163 key!3287)))

(declare-fun lt!1656167 () K!11685)

(assert (=> b!4466638 (= lt!1656167 key!3287)))

(declare-fun lt!1656166 () Unit!87263)

(declare-fun lemmaContainsTupleThenContainsKey!19 (List!50390 K!11685 V!11931) Unit!87263)

(assert (=> b!4466638 (= lt!1656166 (lemmaContainsTupleThenContainsKey!19 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) lt!1656163 (get!16380 (getValueByKey!900 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) key!3287))))))

(declare-fun call!310959 () Bool)

(assert (=> b!4466638 call!310959))

(declare-fun lt!1656155 () Unit!87263)

(assert (=> b!4466638 (= lt!1656155 lt!1656166)))

(assert (=> b!4466638 false))

(declare-fun b!4466639 () Bool)

(declare-fun Unit!87369 () Unit!87263)

(assert (=> b!4466639 (= e!2781368 Unit!87369)))

(declare-fun lt!1656157 () Unit!87263)

(assert (=> b!4466639 (= lt!1656157 (lemmaInGetKeysListThenContainsKey!368 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))))

(assert (=> b!4466639 call!310959))

(declare-fun lt!1656168 () Unit!87263)

(assert (=> b!4466639 (= lt!1656168 lt!1656157)))

(assert (=> b!4466639 false))

(declare-fun b!4466640 () Bool)

(assert (=> b!4466640 (= e!2781363 (= call!310960 call!310962))))

(declare-fun bm!310958 () Bool)

(assert (=> bm!310958 (= call!310962 (content!8084 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(declare-fun bm!310959 () Bool)

(assert (=> bm!310959 (= call!310959 (containsKey!1453 (t!357340 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (ite c!760267 lt!1656163 (_1!28547 (h!56023 (toList!4044 (extractMap!1074 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))))))))))

(assert (= (and d!1362203 c!760267) b!4466629))

(assert (= (and d!1362203 (not c!760267)) b!4466630))

(assert (= (and b!4466629 c!760265) b!4466623))

(assert (= (and b!4466629 (not c!760265)) b!4466627))

(assert (= (and b!4466623 c!760266) b!4466638))

(assert (= (and b!4466623 (not c!760266)) b!4466626))

(assert (= (or b!4466623 b!4466627) bm!310954))

(assert (= (or b!4466623 b!4466627) bm!310955))

(assert (= (and b!4466630 c!760272) b!4466634))

(assert (= (and b!4466630 (not c!760272)) b!4466628))

(assert (= (and b!4466634 c!760269) b!4466639))

(assert (= (and b!4466634 (not c!760269)) b!4466632))

(assert (= (and b!4466634 c!760270) b!4466636))

(assert (= (and b!4466634 (not c!760270)) b!4466635))

(assert (= (or b!4466638 b!4466639) bm!310959))

(assert (= (or b!4466629 b!4466634) bm!310957))

(assert (= (and bm!310957 c!760271) b!4466622))

(assert (= (and bm!310957 (not c!760271)) b!4466637))

(assert (= (and d!1362203 res!1852890) b!4466624))

(assert (= (and b!4466624 res!1852891) b!4466631))

(assert (= (and b!4466631 res!1852889) b!4466633))

(assert (= (and b!4466633 c!760268) b!4466625))

(assert (= (and b!4466633 (not c!760268)) b!4466640))

(assert (= (or b!4466625 b!4466640) bm!310956))

(assert (= (or b!4466625 b!4466640) bm!310958))

(declare-fun m!5171699 () Bool)

(assert (=> b!4466639 m!5171699))

(declare-fun m!5171701 () Bool)

(assert (=> b!4466631 m!5171701))

(declare-fun m!5171703 () Bool)

(assert (=> b!4466631 m!5171703))

(assert (=> b!4466631 m!5170459))

(assert (=> b!4466631 m!5171489))

(assert (=> b!4466631 m!5171701))

(assert (=> b!4466631 m!5171489))

(declare-fun m!5171705 () Bool)

(assert (=> b!4466631 m!5171705))

(declare-fun m!5171707 () Bool)

(assert (=> bm!310957 m!5171707))

(declare-fun m!5171709 () Bool)

(assert (=> bm!310959 m!5171709))

(declare-fun m!5171711 () Bool)

(assert (=> b!4466623 m!5171711))

(assert (=> b!4466623 m!5171711))

(declare-fun m!5171713 () Bool)

(assert (=> b!4466623 m!5171713))

(declare-fun m!5171715 () Bool)

(assert (=> b!4466623 m!5171715))

(declare-fun m!5171717 () Bool)

(assert (=> b!4466623 m!5171717))

(declare-fun m!5171719 () Bool)

(assert (=> d!1362203 m!5171719))

(declare-fun m!5171721 () Bool)

(assert (=> d!1362203 m!5171721))

(assert (=> b!4466638 m!5171711))

(assert (=> b!4466638 m!5171711))

(assert (=> b!4466638 m!5171713))

(assert (=> b!4466638 m!5171713))

(declare-fun m!5171723 () Bool)

(assert (=> b!4466638 m!5171723))

(declare-fun m!5171725 () Bool)

(assert (=> bm!310956 m!5171725))

(declare-fun m!5171727 () Bool)

(assert (=> bm!310955 m!5171727))

(declare-fun m!5171729 () Bool)

(assert (=> b!4466633 m!5171729))

(declare-fun m!5171731 () Bool)

(assert (=> bm!310954 m!5171731))

(declare-fun m!5171733 () Bool)

(assert (=> b!4466637 m!5171733))

(declare-fun m!5171735 () Bool)

(assert (=> b!4466634 m!5171735))

(assert (=> b!4466634 m!5171735))

(declare-fun m!5171737 () Bool)

(assert (=> b!4466634 m!5171737))

(assert (=> b!4466634 m!5171733))

(assert (=> b!4466634 m!5171733))

(declare-fun m!5171739 () Bool)

(assert (=> b!4466634 m!5171739))

(assert (=> bm!310958 m!5171727))

(declare-fun m!5171741 () Bool)

(assert (=> b!4466624 m!5171741))

(assert (=> b!4466625 m!5171715))

(assert (=> b!4466625 m!5171711))

(assert (=> b!4466625 m!5171713))

(assert (=> b!4466625 m!5171711))

(assert (=> b!4466625 m!5171729))

(declare-fun m!5171743 () Bool)

(assert (=> b!4466625 m!5171743))

(assert (=> b!4466625 m!5171711))

(declare-fun m!5171745 () Bool)

(assert (=> b!4466625 m!5171745))

(assert (=> b!4466636 m!5171733))

(declare-fun m!5171747 () Bool)

(assert (=> b!4466636 m!5171747))

(declare-fun m!5171749 () Bool)

(assert (=> b!4466636 m!5171749))

(assert (=> b!4466636 m!5171749))

(declare-fun m!5171751 () Bool)

(assert (=> b!4466636 m!5171751))

(assert (=> d!1361823 d!1362203))

(declare-fun bs!793456 () Bool)

(declare-fun b!4466643 () Bool)

(assert (= bs!793456 (and b!4466643 b!4466041)))

(declare-fun lambda!162790 () Int)

(assert (=> bs!793456 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162790 lambda!162717))))

(declare-fun bs!793457 () Bool)

(assert (= bs!793457 (and b!4466643 b!4466271)))

(assert (=> bs!793457 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162790 lambda!162745))))

(declare-fun bs!793458 () Bool)

(assert (= bs!793458 (and b!4466643 d!1362027)))

(assert (=> bs!793458 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655977) (= lambda!162790 lambda!162751))))

(declare-fun bs!793459 () Bool)

(assert (= bs!793459 (and b!4466643 d!1361795)))

(assert (=> bs!793459 (not (= lambda!162790 lambda!162631))))

(declare-fun bs!793460 () Bool)

(assert (= bs!793460 (and b!4466643 b!4466272)))

(assert (=> bs!793460 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162790 lambda!162744))))

(declare-fun bs!793461 () Bool)

(assert (= bs!793461 (and b!4466643 b!4466042)))

(assert (=> bs!793461 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162790 lambda!162716))))

(assert (=> bs!793456 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655881) (= lambda!162790 lambda!162718))))

(assert (=> bs!793457 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655973) (= lambda!162790 lambda!162748))))

(declare-fun bs!793462 () Bool)

(assert (= bs!793462 (and b!4466643 d!1361877)))

(assert (=> bs!793462 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655885) (= lambda!162790 lambda!162719))))

(assert (=> b!4466643 true))

(declare-fun bs!793463 () Bool)

(declare-fun b!4466642 () Bool)

(assert (= bs!793463 (and b!4466642 b!4466041)))

(declare-fun lambda!162791 () Int)

(assert (=> bs!793463 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162791 lambda!162717))))

(declare-fun bs!793464 () Bool)

(assert (= bs!793464 (and b!4466642 b!4466271)))

(assert (=> bs!793464 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162791 lambda!162745))))

(declare-fun bs!793465 () Bool)

(assert (= bs!793465 (and b!4466642 d!1362027)))

(assert (=> bs!793465 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655977) (= lambda!162791 lambda!162751))))

(declare-fun bs!793466 () Bool)

(assert (= bs!793466 (and b!4466642 d!1361795)))

(assert (=> bs!793466 (not (= lambda!162791 lambda!162631))))

(declare-fun bs!793467 () Bool)

(assert (= bs!793467 (and b!4466642 b!4466272)))

(assert (=> bs!793467 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162791 lambda!162744))))

(declare-fun bs!793468 () Bool)

(assert (= bs!793468 (and b!4466642 b!4466042)))

(assert (=> bs!793468 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162791 lambda!162716))))

(declare-fun bs!793469 () Bool)

(assert (= bs!793469 (and b!4466642 b!4466643)))

(assert (=> bs!793469 (= lambda!162791 lambda!162790)))

(assert (=> bs!793463 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655881) (= lambda!162791 lambda!162718))))

(assert (=> bs!793464 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655973) (= lambda!162791 lambda!162748))))

(declare-fun bs!793470 () Bool)

(assert (= bs!793470 (and b!4466642 d!1361877)))

(assert (=> bs!793470 (= (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1655885) (= lambda!162791 lambda!162719))))

(assert (=> b!4466642 true))

(declare-fun lt!1656189 () ListMap!3305)

(declare-fun lambda!162792 () Int)

(assert (=> b!4466642 (= (= lt!1656189 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162792 lambda!162791))))

(assert (=> bs!793463 (= (= lt!1656189 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162792 lambda!162717))))

(assert (=> bs!793464 (= (= lt!1656189 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162792 lambda!162745))))

(assert (=> bs!793465 (= (= lt!1656189 lt!1655977) (= lambda!162792 lambda!162751))))

(assert (=> bs!793466 (not (= lambda!162792 lambda!162631))))

(assert (=> bs!793467 (= (= lt!1656189 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162792 lambda!162744))))

(assert (=> bs!793468 (= (= lt!1656189 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162792 lambda!162716))))

(assert (=> bs!793469 (= (= lt!1656189 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162792 lambda!162790))))

(assert (=> bs!793463 (= (= lt!1656189 lt!1655881) (= lambda!162792 lambda!162718))))

(assert (=> bs!793464 (= (= lt!1656189 lt!1655973) (= lambda!162792 lambda!162748))))

(assert (=> bs!793470 (= (= lt!1656189 lt!1655885) (= lambda!162792 lambda!162719))))

(assert (=> b!4466642 true))

(declare-fun bs!793471 () Bool)

(declare-fun d!1362237 () Bool)

(assert (= bs!793471 (and d!1362237 b!4466642)))

(declare-fun lambda!162793 () Int)

(declare-fun lt!1656193 () ListMap!3305)

(assert (=> bs!793471 (= (= lt!1656193 lt!1656189) (= lambda!162793 lambda!162792))))

(assert (=> bs!793471 (= (= lt!1656193 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162793 lambda!162791))))

(declare-fun bs!793472 () Bool)

(assert (= bs!793472 (and d!1362237 b!4466041)))

(assert (=> bs!793472 (= (= lt!1656193 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162793 lambda!162717))))

(declare-fun bs!793473 () Bool)

(assert (= bs!793473 (and d!1362237 b!4466271)))

(assert (=> bs!793473 (= (= lt!1656193 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162793 lambda!162745))))

(declare-fun bs!793474 () Bool)

(assert (= bs!793474 (and d!1362237 d!1362027)))

(assert (=> bs!793474 (= (= lt!1656193 lt!1655977) (= lambda!162793 lambda!162751))))

(declare-fun bs!793475 () Bool)

(assert (= bs!793475 (and d!1362237 d!1361795)))

(assert (=> bs!793475 (not (= lambda!162793 lambda!162631))))

(declare-fun bs!793476 () Bool)

(assert (= bs!793476 (and d!1362237 b!4466272)))

(assert (=> bs!793476 (= (= lt!1656193 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162793 lambda!162744))))

(declare-fun bs!793477 () Bool)

(assert (= bs!793477 (and d!1362237 b!4466042)))

(assert (=> bs!793477 (= (= lt!1656193 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162793 lambda!162716))))

(declare-fun bs!793478 () Bool)

(assert (= bs!793478 (and d!1362237 b!4466643)))

(assert (=> bs!793478 (= (= lt!1656193 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162793 lambda!162790))))

(assert (=> bs!793472 (= (= lt!1656193 lt!1655881) (= lambda!162793 lambda!162718))))

(assert (=> bs!793473 (= (= lt!1656193 lt!1655973) (= lambda!162793 lambda!162748))))

(declare-fun bs!793479 () Bool)

(assert (= bs!793479 (and d!1362237 d!1361877)))

(assert (=> bs!793479 (= (= lt!1656193 lt!1655885) (= lambda!162793 lambda!162719))))

(assert (=> d!1362237 true))

(declare-fun b!4466641 () Bool)

(declare-fun res!1852893 () Bool)

(declare-fun e!2781372 () Bool)

(assert (=> b!4466641 (=> (not res!1852893) (not e!2781372))))

(assert (=> b!4466641 (= res!1852893 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) lambda!162793))))

(declare-fun bm!310960 () Bool)

(declare-fun call!310967 () Unit!87263)

(assert (=> bm!310960 (= call!310967 (lemmaContainsAllItsOwnKeys!263 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))))))

(declare-fun bm!310961 () Bool)

(declare-fun c!760273 () Bool)

(declare-fun call!310966 () Bool)

(assert (=> bm!310961 (= call!310966 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (ite c!760273 lambda!162790 lambda!162791)))))

(declare-fun e!2781373 () ListMap!3305)

(assert (=> b!4466642 (= e!2781373 lt!1656189)))

(declare-fun lt!1656181 () ListMap!3305)

(assert (=> b!4466642 (= lt!1656181 (+!1358 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))))

(assert (=> b!4466642 (= lt!1656189 (addToMapMapFromBucket!583 (t!357340 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))) (+!1358 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))))))))

(declare-fun lt!1656173 () Unit!87263)

(assert (=> b!4466642 (= lt!1656173 call!310967)))

(assert (=> b!4466642 call!310966))

(declare-fun lt!1656187 () Unit!87263)

(assert (=> b!4466642 (= lt!1656187 lt!1656173)))

(assert (=> b!4466642 (forall!9974 (toList!4044 lt!1656181) lambda!162792)))

(declare-fun lt!1656191 () Unit!87263)

(declare-fun Unit!87378 () Unit!87263)

(assert (=> b!4466642 (= lt!1656191 Unit!87378)))

(assert (=> b!4466642 (forall!9974 (t!357340 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))) lambda!162792)))

(declare-fun lt!1656176 () Unit!87263)

(declare-fun Unit!87379 () Unit!87263)

(assert (=> b!4466642 (= lt!1656176 Unit!87379)))

(declare-fun lt!1656188 () Unit!87263)

(declare-fun Unit!87380 () Unit!87263)

(assert (=> b!4466642 (= lt!1656188 Unit!87380)))

(declare-fun lt!1656192 () Unit!87263)

(assert (=> b!4466642 (= lt!1656192 (forallContained!2245 (toList!4044 lt!1656181) lambda!162792 (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))))

(assert (=> b!4466642 (contains!12807 lt!1656181 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))))

(declare-fun lt!1656174 () Unit!87263)

(declare-fun Unit!87381 () Unit!87263)

(assert (=> b!4466642 (= lt!1656174 Unit!87381)))

(assert (=> b!4466642 (contains!12807 lt!1656189 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))))

(declare-fun lt!1656186 () Unit!87263)

(declare-fun Unit!87382 () Unit!87263)

(assert (=> b!4466642 (= lt!1656186 Unit!87382)))

(assert (=> b!4466642 (forall!9974 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))) lambda!162792)))

(declare-fun lt!1656182 () Unit!87263)

(declare-fun Unit!87383 () Unit!87263)

(assert (=> b!4466642 (= lt!1656182 Unit!87383)))

(assert (=> b!4466642 (forall!9974 (toList!4044 lt!1656181) lambda!162792)))

(declare-fun lt!1656190 () Unit!87263)

(declare-fun Unit!87384 () Unit!87263)

(assert (=> b!4466642 (= lt!1656190 Unit!87384)))

(declare-fun lt!1656179 () Unit!87263)

(declare-fun Unit!87385 () Unit!87263)

(assert (=> b!4466642 (= lt!1656179 Unit!87385)))

(declare-fun lt!1656177 () Unit!87263)

(assert (=> b!4466642 (= lt!1656177 (addForallContainsKeyThenBeforeAdding!262 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1656189 (_1!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))) (_2!28547 (h!56023 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))))))))

(assert (=> b!4466642 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) lambda!162792)))

(declare-fun lt!1656180 () Unit!87263)

(assert (=> b!4466642 (= lt!1656180 lt!1656177)))

(assert (=> b!4466642 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) lambda!162792)))

(declare-fun lt!1656183 () Unit!87263)

(declare-fun Unit!87386 () Unit!87263)

(assert (=> b!4466642 (= lt!1656183 Unit!87386)))

(declare-fun res!1852892 () Bool)

(declare-fun call!310965 () Bool)

(assert (=> b!4466642 (= res!1852892 call!310965)))

(declare-fun e!2781371 () Bool)

(assert (=> b!4466642 (=> (not res!1852892) (not e!2781371))))

(assert (=> b!4466642 e!2781371))

(declare-fun lt!1656185 () Unit!87263)

(declare-fun Unit!87387 () Unit!87263)

(assert (=> b!4466642 (= lt!1656185 Unit!87387)))

(declare-fun bm!310962 () Bool)

(assert (=> bm!310962 (= call!310965 (forall!9974 (ite c!760273 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))) (ite c!760273 lambda!162790 lambda!162792)))))

(assert (=> b!4466643 (= e!2781373 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))))))

(declare-fun lt!1656175 () Unit!87263)

(assert (=> b!4466643 (= lt!1656175 call!310967)))

(assert (=> b!4466643 call!310965))

(declare-fun lt!1656178 () Unit!87263)

(assert (=> b!4466643 (= lt!1656178 lt!1656175)))

(assert (=> b!4466643 call!310966))

(declare-fun lt!1656184 () Unit!87263)

(declare-fun Unit!87388 () Unit!87263)

(assert (=> b!4466643 (= lt!1656184 Unit!87388)))

(assert (=> d!1362237 e!2781372))

(declare-fun res!1852894 () Bool)

(assert (=> d!1362237 (=> (not res!1852894) (not e!2781372))))

(assert (=> d!1362237 (= res!1852894 (forall!9974 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))) lambda!162793))))

(assert (=> d!1362237 (= lt!1656193 e!2781373)))

(assert (=> d!1362237 (= c!760273 ((_ is Nil!50266) (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))))))

(assert (=> d!1362237 (noDuplicateKeys!1018 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))))))

(assert (=> d!1362237 (= (addToMapMapFromBucket!583 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267))) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) lt!1656193)))

(declare-fun b!4466644 () Bool)

(assert (=> b!4466644 (= e!2781372 (invariantList!921 (toList!4044 lt!1656193)))))

(declare-fun b!4466645 () Bool)

(assert (=> b!4466645 (= e!2781371 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) lambda!162792))))

(assert (= (and d!1362237 c!760273) b!4466643))

(assert (= (and d!1362237 (not c!760273)) b!4466642))

(assert (= (and b!4466642 res!1852892) b!4466645))

(assert (= (or b!4466643 b!4466642) bm!310961))

(assert (= (or b!4466643 b!4466642) bm!310962))

(assert (= (or b!4466643 b!4466642) bm!310960))

(assert (= (and d!1362237 res!1852894) b!4466641))

(assert (= (and b!4466641 res!1852893) b!4466644))

(declare-fun m!5171753 () Bool)

(assert (=> d!1362237 m!5171753))

(declare-fun m!5171755 () Bool)

(assert (=> d!1362237 m!5171755))

(declare-fun m!5171757 () Bool)

(assert (=> b!4466642 m!5171757))

(declare-fun m!5171759 () Bool)

(assert (=> b!4466642 m!5171759))

(declare-fun m!5171761 () Bool)

(assert (=> b!4466642 m!5171761))

(declare-fun m!5171763 () Bool)

(assert (=> b!4466642 m!5171763))

(declare-fun m!5171765 () Bool)

(assert (=> b!4466642 m!5171765))

(declare-fun m!5171767 () Bool)

(assert (=> b!4466642 m!5171767))

(declare-fun m!5171769 () Bool)

(assert (=> b!4466642 m!5171769))

(declare-fun m!5171771 () Bool)

(assert (=> b!4466642 m!5171771))

(declare-fun m!5171773 () Bool)

(assert (=> b!4466642 m!5171773))

(assert (=> b!4466642 m!5170505))

(assert (=> b!4466642 m!5171757))

(assert (=> b!4466642 m!5171761))

(assert (=> b!4466642 m!5171763))

(assert (=> b!4466642 m!5170505))

(declare-fun m!5171775 () Bool)

(assert (=> b!4466642 m!5171775))

(declare-fun m!5171777 () Bool)

(assert (=> b!4466644 m!5171777))

(declare-fun m!5171779 () Bool)

(assert (=> bm!310962 m!5171779))

(declare-fun m!5171781 () Bool)

(assert (=> b!4466641 m!5171781))

(assert (=> b!4466645 m!5171763))

(declare-fun m!5171783 () Bool)

(assert (=> bm!310961 m!5171783))

(assert (=> bm!310960 m!5170505))

(declare-fun m!5171785 () Bool)

(assert (=> bm!310960 m!5171785))

(assert (=> b!4465829 d!1362237))

(declare-fun bs!793480 () Bool)

(declare-fun d!1362239 () Bool)

(assert (= bs!793480 (and d!1362239 d!1362177)))

(declare-fun lambda!162794 () Int)

(assert (=> bs!793480 (= lambda!162794 lambda!162783)))

(declare-fun bs!793481 () Bool)

(assert (= bs!793481 (and d!1362239 d!1361843)))

(assert (=> bs!793481 (= lambda!162794 lambda!162640)))

(declare-fun bs!793482 () Bool)

(assert (= bs!793482 (and d!1362239 d!1361747)))

(assert (=> bs!793482 (= lambda!162794 lambda!162608)))

(declare-fun bs!793483 () Bool)

(assert (= bs!793483 (and d!1362239 d!1362029)))

(assert (=> bs!793483 (= lambda!162794 lambda!162756)))

(declare-fun bs!793484 () Bool)

(assert (= bs!793484 (and d!1362239 d!1361857)))

(assert (=> bs!793484 (not (= lambda!162794 lambda!162643))))

(declare-fun bs!793485 () Bool)

(assert (= bs!793485 (and d!1362239 d!1361821)))

(assert (=> bs!793485 (= lambda!162794 lambda!162632)))

(declare-fun bs!793486 () Bool)

(assert (= bs!793486 (and d!1362239 d!1362119)))

(assert (=> bs!793486 (= lambda!162794 lambda!162765)))

(declare-fun bs!793487 () Bool)

(assert (= bs!793487 (and d!1362239 start!438344)))

(assert (=> bs!793487 (= lambda!162794 lambda!162601)))

(declare-fun bs!793488 () Bool)

(assert (= bs!793488 (and d!1362239 d!1361783)))

(assert (=> bs!793488 (= lambda!162794 lambda!162626)))

(declare-fun bs!793489 () Bool)

(assert (= bs!793489 (and d!1362239 d!1361923)))

(assert (=> bs!793489 (= lambda!162794 lambda!162720)))

(declare-fun bs!793490 () Bool)

(assert (= bs!793490 (and d!1362239 d!1361829)))

(assert (=> bs!793490 (= lambda!162794 lambda!162633)))

(declare-fun bs!793491 () Bool)

(assert (= bs!793491 (and d!1362239 d!1361837)))

(assert (=> bs!793491 (= lambda!162794 lambda!162637)))

(declare-fun bs!793492 () Bool)

(assert (= bs!793492 (and d!1362239 d!1361835)))

(assert (=> bs!793492 (= lambda!162794 lambda!162634)))

(declare-fun lt!1656194 () ListMap!3305)

(assert (=> d!1362239 (invariantList!921 (toList!4044 lt!1656194))))

(declare-fun e!2781374 () ListMap!3305)

(assert (=> d!1362239 (= lt!1656194 e!2781374)))

(declare-fun c!760274 () Bool)

(assert (=> d!1362239 (= c!760274 ((_ is Cons!50267) (t!357341 (Cons!50267 lt!1655466 Nil!50267))))))

(assert (=> d!1362239 (forall!9972 (t!357341 (Cons!50267 lt!1655466 Nil!50267)) lambda!162794)))

(assert (=> d!1362239 (= (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267))) lt!1656194)))

(declare-fun b!4466646 () Bool)

(assert (=> b!4466646 (= e!2781374 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (extractMap!1074 (t!357341 (t!357341 (Cons!50267 lt!1655466 Nil!50267))))))))

(declare-fun b!4466647 () Bool)

(assert (=> b!4466647 (= e!2781374 (ListMap!3306 Nil!50266))))

(assert (= (and d!1362239 c!760274) b!4466646))

(assert (= (and d!1362239 (not c!760274)) b!4466647))

(declare-fun m!5171787 () Bool)

(assert (=> d!1362239 m!5171787))

(declare-fun m!5171789 () Bool)

(assert (=> d!1362239 m!5171789))

(declare-fun m!5171791 () Bool)

(assert (=> b!4466646 m!5171791))

(assert (=> b!4466646 m!5171791))

(declare-fun m!5171793 () Bool)

(assert (=> b!4466646 m!5171793))

(assert (=> b!4465829 d!1362239))

(declare-fun d!1362241 () Bool)

(declare-fun res!1852895 () Bool)

(declare-fun e!2781375 () Bool)

(assert (=> d!1362241 (=> res!1852895 e!2781375)))

(assert (=> d!1362241 (= res!1852895 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1362241 (= (forall!9972 (toList!4043 lm!1477) lambda!162643) e!2781375)))

(declare-fun b!4466648 () Bool)

(declare-fun e!2781376 () Bool)

(assert (=> b!4466648 (= e!2781375 e!2781376)))

(declare-fun res!1852896 () Bool)

(assert (=> b!4466648 (=> (not res!1852896) (not e!2781376))))

(assert (=> b!4466648 (= res!1852896 (dynLambda!21002 lambda!162643 (h!56024 (toList!4043 lm!1477))))))

(declare-fun b!4466649 () Bool)

(assert (=> b!4466649 (= e!2781376 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162643))))

(assert (= (and d!1362241 (not res!1852895)) b!4466648))

(assert (= (and b!4466648 res!1852896) b!4466649))

(declare-fun b_lambda!148131 () Bool)

(assert (=> (not b_lambda!148131) (not b!4466648)))

(declare-fun m!5171795 () Bool)

(assert (=> b!4466648 m!5171795))

(declare-fun m!5171797 () Bool)

(assert (=> b!4466649 m!5171797))

(assert (=> d!1361857 d!1362241))

(declare-fun d!1362243 () Bool)

(declare-fun lt!1656195 () Bool)

(assert (=> d!1362243 (= lt!1656195 (select (content!8086 (toList!4043 lm!1477)) (tuple2!50509 hash!344 lt!1655459)))))

(declare-fun e!2781378 () Bool)

(assert (=> d!1362243 (= lt!1656195 e!2781378)))

(declare-fun res!1852897 () Bool)

(assert (=> d!1362243 (=> (not res!1852897) (not e!2781378))))

(assert (=> d!1362243 (= res!1852897 ((_ is Cons!50267) (toList!4043 lm!1477)))))

(assert (=> d!1362243 (= (contains!12805 (toList!4043 lm!1477) (tuple2!50509 hash!344 lt!1655459)) lt!1656195)))

(declare-fun b!4466650 () Bool)

(declare-fun e!2781377 () Bool)

(assert (=> b!4466650 (= e!2781378 e!2781377)))

(declare-fun res!1852898 () Bool)

(assert (=> b!4466650 (=> res!1852898 e!2781377)))

(assert (=> b!4466650 (= res!1852898 (= (h!56024 (toList!4043 lm!1477)) (tuple2!50509 hash!344 lt!1655459)))))

(declare-fun b!4466651 () Bool)

(assert (=> b!4466651 (= e!2781377 (contains!12805 (t!357341 (toList!4043 lm!1477)) (tuple2!50509 hash!344 lt!1655459)))))

(assert (= (and d!1362243 res!1852897) b!4466650))

(assert (= (and b!4466650 (not res!1852898)) b!4466651))

(assert (=> d!1362243 m!5170569))

(declare-fun m!5171799 () Bool)

(assert (=> d!1362243 m!5171799))

(declare-fun m!5171801 () Bool)

(assert (=> b!4466651 m!5171801))

(assert (=> d!1361849 d!1362243))

(declare-fun d!1362245 () Bool)

(assert (=> d!1362245 (contains!12805 (toList!4043 lm!1477) (tuple2!50509 hash!344 lt!1655459))))

(assert (=> d!1362245 true))

(declare-fun _$14!972 () Unit!87263)

(assert (=> d!1362245 (= (choose!28507 (toList!4043 lm!1477) hash!344 lt!1655459) _$14!972)))

(declare-fun bs!793493 () Bool)

(assert (= bs!793493 d!1362245))

(assert (=> bs!793493 m!5170551))

(assert (=> d!1361849 d!1362245))

(assert (=> d!1361849 d!1361931))

(declare-fun b!4466652 () Bool)

(declare-fun e!2781379 () Option!10915)

(assert (=> b!4466652 (= e!2781379 (Some!10914 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(declare-fun b!4466655 () Bool)

(declare-fun e!2781380 () Option!10915)

(assert (=> b!4466655 (= e!2781380 None!10914)))

(declare-fun b!4466654 () Bool)

(assert (=> b!4466654 (= e!2781380 (getValueByKey!901 (t!357341 (toList!4043 lm!1477)) hash!344))))

(declare-fun b!4466653 () Bool)

(assert (=> b!4466653 (= e!2781379 e!2781380)))

(declare-fun c!760276 () Bool)

(assert (=> b!4466653 (= c!760276 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (not (= (_1!28548 (h!56024 (toList!4043 lm!1477))) hash!344))))))

(declare-fun d!1362247 () Bool)

(declare-fun c!760275 () Bool)

(assert (=> d!1362247 (= c!760275 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (= (_1!28548 (h!56024 (toList!4043 lm!1477))) hash!344)))))

(assert (=> d!1362247 (= (getValueByKey!901 (toList!4043 lm!1477) hash!344) e!2781379)))

(assert (= (and d!1362247 c!760275) b!4466652))

(assert (= (and d!1362247 (not c!760275)) b!4466653))

(assert (= (and b!4466653 c!760276) b!4466654))

(assert (= (and b!4466653 (not c!760276)) b!4466655))

(declare-fun m!5171803 () Bool)

(assert (=> b!4466654 m!5171803))

(assert (=> b!4465844 d!1362247))

(declare-fun bs!793494 () Bool)

(declare-fun b!4466658 () Bool)

(assert (= bs!793494 (and b!4466658 b!4466642)))

(declare-fun lambda!162795 () Int)

(assert (=> bs!793494 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1656189) (= lambda!162795 lambda!162792))))

(assert (=> bs!793494 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162795 lambda!162791))))

(declare-fun bs!793495 () Bool)

(assert (= bs!793495 (and b!4466658 b!4466271)))

(assert (=> bs!793495 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162795 lambda!162745))))

(declare-fun bs!793496 () Bool)

(assert (= bs!793496 (and b!4466658 d!1362027)))

(assert (=> bs!793496 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655977) (= lambda!162795 lambda!162751))))

(declare-fun bs!793497 () Bool)

(assert (= bs!793497 (and b!4466658 d!1361795)))

(assert (=> bs!793497 (not (= lambda!162795 lambda!162631))))

(declare-fun bs!793498 () Bool)

(assert (= bs!793498 (and b!4466658 b!4466272)))

(assert (=> bs!793498 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162795 lambda!162744))))

(declare-fun bs!793499 () Bool)

(assert (= bs!793499 (and b!4466658 b!4466042)))

(assert (=> bs!793499 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162795 lambda!162716))))

(declare-fun bs!793500 () Bool)

(assert (= bs!793500 (and b!4466658 b!4466643)))

(assert (=> bs!793500 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162795 lambda!162790))))

(declare-fun bs!793501 () Bool)

(assert (= bs!793501 (and b!4466658 b!4466041)))

(assert (=> bs!793501 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655881) (= lambda!162795 lambda!162718))))

(assert (=> bs!793501 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162795 lambda!162717))))

(declare-fun bs!793502 () Bool)

(assert (= bs!793502 (and b!4466658 d!1362237)))

(assert (=> bs!793502 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1656193) (= lambda!162795 lambda!162793))))

(assert (=> bs!793495 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655973) (= lambda!162795 lambda!162748))))

(declare-fun bs!793503 () Bool)

(assert (= bs!793503 (and b!4466658 d!1361877)))

(assert (=> bs!793503 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655885) (= lambda!162795 lambda!162719))))

(assert (=> b!4466658 true))

(declare-fun bs!793504 () Bool)

(declare-fun b!4466657 () Bool)

(assert (= bs!793504 (and b!4466657 b!4466642)))

(declare-fun lambda!162796 () Int)

(assert (=> bs!793504 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1656189) (= lambda!162796 lambda!162792))))

(assert (=> bs!793504 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162796 lambda!162791))))

(declare-fun bs!793505 () Bool)

(assert (= bs!793505 (and b!4466657 d!1362027)))

(assert (=> bs!793505 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655977) (= lambda!162796 lambda!162751))))

(declare-fun bs!793506 () Bool)

(assert (= bs!793506 (and b!4466657 d!1361795)))

(assert (=> bs!793506 (not (= lambda!162796 lambda!162631))))

(declare-fun bs!793507 () Bool)

(assert (= bs!793507 (and b!4466657 b!4466272)))

(assert (=> bs!793507 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162796 lambda!162744))))

(declare-fun bs!793508 () Bool)

(assert (= bs!793508 (and b!4466657 b!4466042)))

(assert (=> bs!793508 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162796 lambda!162716))))

(declare-fun bs!793509 () Bool)

(assert (= bs!793509 (and b!4466657 b!4466643)))

(assert (=> bs!793509 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162796 lambda!162790))))

(declare-fun bs!793510 () Bool)

(assert (= bs!793510 (and b!4466657 b!4466041)))

(assert (=> bs!793510 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655881) (= lambda!162796 lambda!162718))))

(assert (=> bs!793510 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162796 lambda!162717))))

(declare-fun bs!793511 () Bool)

(assert (= bs!793511 (and b!4466657 d!1362237)))

(assert (=> bs!793511 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1656193) (= lambda!162796 lambda!162793))))

(declare-fun bs!793512 () Bool)

(assert (= bs!793512 (and b!4466657 b!4466271)))

(assert (=> bs!793512 (= (= (extractMap!1074 (t!357341 lt!1655462)) (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162796 lambda!162745))))

(declare-fun bs!793513 () Bool)

(assert (= bs!793513 (and b!4466657 b!4466658)))

(assert (=> bs!793513 (= lambda!162796 lambda!162795)))

(assert (=> bs!793512 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655973) (= lambda!162796 lambda!162748))))

(declare-fun bs!793514 () Bool)

(assert (= bs!793514 (and b!4466657 d!1361877)))

(assert (=> bs!793514 (= (= (extractMap!1074 (t!357341 lt!1655462)) lt!1655885) (= lambda!162796 lambda!162719))))

(assert (=> b!4466657 true))

(declare-fun lambda!162797 () Int)

(declare-fun lt!1656212 () ListMap!3305)

(assert (=> b!4466657 (= (= lt!1656212 (extractMap!1074 (t!357341 lt!1655462))) (= lambda!162797 lambda!162796))))

(assert (=> bs!793504 (= (= lt!1656212 lt!1656189) (= lambda!162797 lambda!162792))))

(assert (=> bs!793504 (= (= lt!1656212 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162797 lambda!162791))))

(assert (=> bs!793505 (= (= lt!1656212 lt!1655977) (= lambda!162797 lambda!162751))))

(assert (=> bs!793506 (not (= lambda!162797 lambda!162631))))

(assert (=> bs!793507 (= (= lt!1656212 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162797 lambda!162744))))

(assert (=> bs!793508 (= (= lt!1656212 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162797 lambda!162716))))

(assert (=> bs!793509 (= (= lt!1656212 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162797 lambda!162790))))

(assert (=> bs!793510 (= (= lt!1656212 lt!1655881) (= lambda!162797 lambda!162718))))

(assert (=> bs!793510 (= (= lt!1656212 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162797 lambda!162717))))

(assert (=> bs!793511 (= (= lt!1656212 lt!1656193) (= lambda!162797 lambda!162793))))

(assert (=> bs!793512 (= (= lt!1656212 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162797 lambda!162745))))

(assert (=> bs!793513 (= (= lt!1656212 (extractMap!1074 (t!357341 lt!1655462))) (= lambda!162797 lambda!162795))))

(assert (=> bs!793512 (= (= lt!1656212 lt!1655973) (= lambda!162797 lambda!162748))))

(assert (=> bs!793514 (= (= lt!1656212 lt!1655885) (= lambda!162797 lambda!162719))))

(assert (=> b!4466657 true))

(declare-fun bs!793515 () Bool)

(declare-fun d!1362249 () Bool)

(assert (= bs!793515 (and d!1362249 b!4466657)))

(declare-fun lt!1656216 () ListMap!3305)

(declare-fun lambda!162798 () Int)

(assert (=> bs!793515 (= (= lt!1656216 (extractMap!1074 (t!357341 lt!1655462))) (= lambda!162798 lambda!162796))))

(declare-fun bs!793516 () Bool)

(assert (= bs!793516 (and d!1362249 b!4466642)))

(assert (=> bs!793516 (= (= lt!1656216 lt!1656189) (= lambda!162798 lambda!162792))))

(assert (=> bs!793516 (= (= lt!1656216 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162798 lambda!162791))))

(declare-fun bs!793517 () Bool)

(assert (= bs!793517 (and d!1362249 d!1362027)))

(assert (=> bs!793517 (= (= lt!1656216 lt!1655977) (= lambda!162798 lambda!162751))))

(assert (=> bs!793515 (= (= lt!1656216 lt!1656212) (= lambda!162798 lambda!162797))))

(declare-fun bs!793518 () Bool)

(assert (= bs!793518 (and d!1362249 d!1361795)))

(assert (=> bs!793518 (not (= lambda!162798 lambda!162631))))

(declare-fun bs!793519 () Bool)

(assert (= bs!793519 (and d!1362249 b!4466272)))

(assert (=> bs!793519 (= (= lt!1656216 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162798 lambda!162744))))

(declare-fun bs!793520 () Bool)

(assert (= bs!793520 (and d!1362249 b!4466042)))

(assert (=> bs!793520 (= (= lt!1656216 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162798 lambda!162716))))

(declare-fun bs!793521 () Bool)

(assert (= bs!793521 (and d!1362249 b!4466643)))

(assert (=> bs!793521 (= (= lt!1656216 (extractMap!1074 (t!357341 (Cons!50267 lt!1655466 Nil!50267)))) (= lambda!162798 lambda!162790))))

(declare-fun bs!793522 () Bool)

(assert (= bs!793522 (and d!1362249 b!4466041)))

(assert (=> bs!793522 (= (= lt!1656216 lt!1655881) (= lambda!162798 lambda!162718))))

(assert (=> bs!793522 (= (= lt!1656216 (extractMap!1074 (t!357341 (toList!4043 lm!1477)))) (= lambda!162798 lambda!162717))))

(declare-fun bs!793523 () Bool)

(assert (= bs!793523 (and d!1362249 d!1362237)))

(assert (=> bs!793523 (= (= lt!1656216 lt!1656193) (= lambda!162798 lambda!162793))))

(declare-fun bs!793524 () Bool)

(assert (= bs!793524 (and d!1362249 b!4466271)))

(assert (=> bs!793524 (= (= lt!1656216 (extractMap!1074 (t!357341 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))) (= lambda!162798 lambda!162745))))

(declare-fun bs!793525 () Bool)

(assert (= bs!793525 (and d!1362249 b!4466658)))

(assert (=> bs!793525 (= (= lt!1656216 (extractMap!1074 (t!357341 lt!1655462))) (= lambda!162798 lambda!162795))))

(assert (=> bs!793524 (= (= lt!1656216 lt!1655973) (= lambda!162798 lambda!162748))))

(declare-fun bs!793526 () Bool)

(assert (= bs!793526 (and d!1362249 d!1361877)))

(assert (=> bs!793526 (= (= lt!1656216 lt!1655885) (= lambda!162798 lambda!162719))))

(assert (=> d!1362249 true))

(declare-fun b!4466656 () Bool)

(declare-fun res!1852900 () Bool)

(declare-fun e!2781382 () Bool)

(assert (=> b!4466656 (=> (not res!1852900) (not e!2781382))))

(assert (=> b!4466656 (= res!1852900 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) lambda!162798))))

(declare-fun bm!310963 () Bool)

(declare-fun call!310970 () Unit!87263)

(assert (=> bm!310963 (= call!310970 (lemmaContainsAllItsOwnKeys!263 (extractMap!1074 (t!357341 lt!1655462))))))

(declare-fun bm!310964 () Bool)

(declare-fun call!310969 () Bool)

(declare-fun c!760277 () Bool)

(assert (=> bm!310964 (= call!310969 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) (ite c!760277 lambda!162795 lambda!162796)))))

(declare-fun e!2781383 () ListMap!3305)

(assert (=> b!4466657 (= e!2781383 lt!1656212)))

(declare-fun lt!1656204 () ListMap!3305)

(assert (=> b!4466657 (= lt!1656204 (+!1358 (extractMap!1074 (t!357341 lt!1655462)) (h!56023 (_2!28548 (h!56024 lt!1655462)))))))

(assert (=> b!4466657 (= lt!1656212 (addToMapMapFromBucket!583 (t!357340 (_2!28548 (h!56024 lt!1655462))) (+!1358 (extractMap!1074 (t!357341 lt!1655462)) (h!56023 (_2!28548 (h!56024 lt!1655462))))))))

(declare-fun lt!1656196 () Unit!87263)

(assert (=> b!4466657 (= lt!1656196 call!310970)))

(assert (=> b!4466657 call!310969))

(declare-fun lt!1656210 () Unit!87263)

(assert (=> b!4466657 (= lt!1656210 lt!1656196)))

(assert (=> b!4466657 (forall!9974 (toList!4044 lt!1656204) lambda!162797)))

(declare-fun lt!1656214 () Unit!87263)

(declare-fun Unit!87400 () Unit!87263)

(assert (=> b!4466657 (= lt!1656214 Unit!87400)))

(assert (=> b!4466657 (forall!9974 (t!357340 (_2!28548 (h!56024 lt!1655462))) lambda!162797)))

(declare-fun lt!1656199 () Unit!87263)

(declare-fun Unit!87401 () Unit!87263)

(assert (=> b!4466657 (= lt!1656199 Unit!87401)))

(declare-fun lt!1656211 () Unit!87263)

(declare-fun Unit!87402 () Unit!87263)

(assert (=> b!4466657 (= lt!1656211 Unit!87402)))

(declare-fun lt!1656215 () Unit!87263)

(assert (=> b!4466657 (= lt!1656215 (forallContained!2245 (toList!4044 lt!1656204) lambda!162797 (h!56023 (_2!28548 (h!56024 lt!1655462)))))))

(assert (=> b!4466657 (contains!12807 lt!1656204 (_1!28547 (h!56023 (_2!28548 (h!56024 lt!1655462)))))))

(declare-fun lt!1656197 () Unit!87263)

(declare-fun Unit!87403 () Unit!87263)

(assert (=> b!4466657 (= lt!1656197 Unit!87403)))

(assert (=> b!4466657 (contains!12807 lt!1656212 (_1!28547 (h!56023 (_2!28548 (h!56024 lt!1655462)))))))

(declare-fun lt!1656209 () Unit!87263)

(declare-fun Unit!87404 () Unit!87263)

(assert (=> b!4466657 (= lt!1656209 Unit!87404)))

(assert (=> b!4466657 (forall!9974 (_2!28548 (h!56024 lt!1655462)) lambda!162797)))

(declare-fun lt!1656205 () Unit!87263)

(declare-fun Unit!87405 () Unit!87263)

(assert (=> b!4466657 (= lt!1656205 Unit!87405)))

(assert (=> b!4466657 (forall!9974 (toList!4044 lt!1656204) lambda!162797)))

(declare-fun lt!1656213 () Unit!87263)

(declare-fun Unit!87406 () Unit!87263)

(assert (=> b!4466657 (= lt!1656213 Unit!87406)))

(declare-fun lt!1656202 () Unit!87263)

(declare-fun Unit!87407 () Unit!87263)

(assert (=> b!4466657 (= lt!1656202 Unit!87407)))

(declare-fun lt!1656200 () Unit!87263)

(assert (=> b!4466657 (= lt!1656200 (addForallContainsKeyThenBeforeAdding!262 (extractMap!1074 (t!357341 lt!1655462)) lt!1656212 (_1!28547 (h!56023 (_2!28548 (h!56024 lt!1655462)))) (_2!28547 (h!56023 (_2!28548 (h!56024 lt!1655462))))))))

(assert (=> b!4466657 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) lambda!162797)))

(declare-fun lt!1656203 () Unit!87263)

(assert (=> b!4466657 (= lt!1656203 lt!1656200)))

(assert (=> b!4466657 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) lambda!162797)))

(declare-fun lt!1656206 () Unit!87263)

(declare-fun Unit!87408 () Unit!87263)

(assert (=> b!4466657 (= lt!1656206 Unit!87408)))

(declare-fun res!1852899 () Bool)

(declare-fun call!310968 () Bool)

(assert (=> b!4466657 (= res!1852899 call!310968)))

(declare-fun e!2781381 () Bool)

(assert (=> b!4466657 (=> (not res!1852899) (not e!2781381))))

(assert (=> b!4466657 e!2781381))

(declare-fun lt!1656208 () Unit!87263)

(declare-fun Unit!87409 () Unit!87263)

(assert (=> b!4466657 (= lt!1656208 Unit!87409)))

(declare-fun bm!310965 () Bool)

(assert (=> bm!310965 (= call!310968 (forall!9974 (ite c!760277 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) (_2!28548 (h!56024 lt!1655462))) (ite c!760277 lambda!162795 lambda!162797)))))

(assert (=> b!4466658 (= e!2781383 (extractMap!1074 (t!357341 lt!1655462)))))

(declare-fun lt!1656198 () Unit!87263)

(assert (=> b!4466658 (= lt!1656198 call!310970)))

(assert (=> b!4466658 call!310968))

(declare-fun lt!1656201 () Unit!87263)

(assert (=> b!4466658 (= lt!1656201 lt!1656198)))

(assert (=> b!4466658 call!310969))

(declare-fun lt!1656207 () Unit!87263)

(declare-fun Unit!87410 () Unit!87263)

(assert (=> b!4466658 (= lt!1656207 Unit!87410)))

(assert (=> d!1362249 e!2781382))

(declare-fun res!1852901 () Bool)

(assert (=> d!1362249 (=> (not res!1852901) (not e!2781382))))

(assert (=> d!1362249 (= res!1852901 (forall!9974 (_2!28548 (h!56024 lt!1655462)) lambda!162798))))

(assert (=> d!1362249 (= lt!1656216 e!2781383)))

(assert (=> d!1362249 (= c!760277 ((_ is Nil!50266) (_2!28548 (h!56024 lt!1655462))))))

(assert (=> d!1362249 (noDuplicateKeys!1018 (_2!28548 (h!56024 lt!1655462)))))

(assert (=> d!1362249 (= (addToMapMapFromBucket!583 (_2!28548 (h!56024 lt!1655462)) (extractMap!1074 (t!357341 lt!1655462))) lt!1656216)))

(declare-fun b!4466659 () Bool)

(assert (=> b!4466659 (= e!2781382 (invariantList!921 (toList!4044 lt!1656216)))))

(declare-fun b!4466660 () Bool)

(assert (=> b!4466660 (= e!2781381 (forall!9974 (toList!4044 (extractMap!1074 (t!357341 lt!1655462))) lambda!162797))))

(assert (= (and d!1362249 c!760277) b!4466658))

(assert (= (and d!1362249 (not c!760277)) b!4466657))

(assert (= (and b!4466657 res!1852899) b!4466660))

(assert (= (or b!4466658 b!4466657) bm!310964))

(assert (= (or b!4466658 b!4466657) bm!310965))

(assert (= (or b!4466658 b!4466657) bm!310963))

(assert (= (and d!1362249 res!1852901) b!4466656))

(assert (= (and b!4466656 res!1852900) b!4466659))

(declare-fun m!5171805 () Bool)

(assert (=> d!1362249 m!5171805))

(declare-fun m!5171807 () Bool)

(assert (=> d!1362249 m!5171807))

(declare-fun m!5171809 () Bool)

(assert (=> b!4466657 m!5171809))

(declare-fun m!5171811 () Bool)

(assert (=> b!4466657 m!5171811))

(declare-fun m!5171813 () Bool)

(assert (=> b!4466657 m!5171813))

(declare-fun m!5171815 () Bool)

(assert (=> b!4466657 m!5171815))

(declare-fun m!5171817 () Bool)

(assert (=> b!4466657 m!5171817))

(declare-fun m!5171819 () Bool)

(assert (=> b!4466657 m!5171819))

(declare-fun m!5171821 () Bool)

(assert (=> b!4466657 m!5171821))

(declare-fun m!5171823 () Bool)

(assert (=> b!4466657 m!5171823))

(declare-fun m!5171825 () Bool)

(assert (=> b!4466657 m!5171825))

(assert (=> b!4466657 m!5170521))

(assert (=> b!4466657 m!5171809))

(assert (=> b!4466657 m!5171813))

(assert (=> b!4466657 m!5171815))

(assert (=> b!4466657 m!5170521))

(declare-fun m!5171827 () Bool)

(assert (=> b!4466657 m!5171827))

(declare-fun m!5171829 () Bool)

(assert (=> b!4466659 m!5171829))

(declare-fun m!5171831 () Bool)

(assert (=> bm!310965 m!5171831))

(declare-fun m!5171833 () Bool)

(assert (=> b!4466656 m!5171833))

(assert (=> b!4466660 m!5171815))

(declare-fun m!5171835 () Bool)

(assert (=> bm!310964 m!5171835))

(assert (=> bm!310963 m!5170521))

(declare-fun m!5171837 () Bool)

(assert (=> bm!310963 m!5171837))

(assert (=> b!4465831 d!1362249))

(declare-fun bs!793527 () Bool)

(declare-fun d!1362251 () Bool)

(assert (= bs!793527 (and d!1362251 d!1362177)))

(declare-fun lambda!162799 () Int)

(assert (=> bs!793527 (= lambda!162799 lambda!162783)))

(declare-fun bs!793528 () Bool)

(assert (= bs!793528 (and d!1362251 d!1361843)))

(assert (=> bs!793528 (= lambda!162799 lambda!162640)))

(declare-fun bs!793529 () Bool)

(assert (= bs!793529 (and d!1362251 d!1361747)))

(assert (=> bs!793529 (= lambda!162799 lambda!162608)))

(declare-fun bs!793530 () Bool)

(assert (= bs!793530 (and d!1362251 d!1362029)))

(assert (=> bs!793530 (= lambda!162799 lambda!162756)))

(declare-fun bs!793531 () Bool)

(assert (= bs!793531 (and d!1362251 d!1362239)))

(assert (=> bs!793531 (= lambda!162799 lambda!162794)))

(declare-fun bs!793532 () Bool)

(assert (= bs!793532 (and d!1362251 d!1361857)))

(assert (=> bs!793532 (not (= lambda!162799 lambda!162643))))

(declare-fun bs!793533 () Bool)

(assert (= bs!793533 (and d!1362251 d!1361821)))

(assert (=> bs!793533 (= lambda!162799 lambda!162632)))

(declare-fun bs!793534 () Bool)

(assert (= bs!793534 (and d!1362251 d!1362119)))

(assert (=> bs!793534 (= lambda!162799 lambda!162765)))

(declare-fun bs!793535 () Bool)

(assert (= bs!793535 (and d!1362251 start!438344)))

(assert (=> bs!793535 (= lambda!162799 lambda!162601)))

(declare-fun bs!793536 () Bool)

(assert (= bs!793536 (and d!1362251 d!1361783)))

(assert (=> bs!793536 (= lambda!162799 lambda!162626)))

(declare-fun bs!793537 () Bool)

(assert (= bs!793537 (and d!1362251 d!1361923)))

(assert (=> bs!793537 (= lambda!162799 lambda!162720)))

(declare-fun bs!793538 () Bool)

(assert (= bs!793538 (and d!1362251 d!1361829)))

(assert (=> bs!793538 (= lambda!162799 lambda!162633)))

(declare-fun bs!793539 () Bool)

(assert (= bs!793539 (and d!1362251 d!1361837)))

(assert (=> bs!793539 (= lambda!162799 lambda!162637)))

(declare-fun bs!793540 () Bool)

(assert (= bs!793540 (and d!1362251 d!1361835)))

(assert (=> bs!793540 (= lambda!162799 lambda!162634)))

(declare-fun lt!1656217 () ListMap!3305)

(assert (=> d!1362251 (invariantList!921 (toList!4044 lt!1656217))))

(declare-fun e!2781384 () ListMap!3305)

(assert (=> d!1362251 (= lt!1656217 e!2781384)))

(declare-fun c!760278 () Bool)

(assert (=> d!1362251 (= c!760278 ((_ is Cons!50267) (t!357341 lt!1655462)))))

(assert (=> d!1362251 (forall!9972 (t!357341 lt!1655462) lambda!162799)))

(assert (=> d!1362251 (= (extractMap!1074 (t!357341 lt!1655462)) lt!1656217)))

(declare-fun b!4466661 () Bool)

(assert (=> b!4466661 (= e!2781384 (addToMapMapFromBucket!583 (_2!28548 (h!56024 (t!357341 lt!1655462))) (extractMap!1074 (t!357341 (t!357341 lt!1655462)))))))

(declare-fun b!4466662 () Bool)

(assert (=> b!4466662 (= e!2781384 (ListMap!3306 Nil!50266))))

(assert (= (and d!1362251 c!760278) b!4466661))

(assert (= (and d!1362251 (not c!760278)) b!4466662))

(declare-fun m!5171839 () Bool)

(assert (=> d!1362251 m!5171839))

(declare-fun m!5171841 () Bool)

(assert (=> d!1362251 m!5171841))

(declare-fun m!5171843 () Bool)

(assert (=> b!4466661 m!5171843))

(assert (=> b!4466661 m!5171843))

(declare-fun m!5171845 () Bool)

(assert (=> b!4466661 m!5171845))

(assert (=> b!4465831 d!1362251))

(declare-fun d!1362253 () Bool)

(declare-fun lt!1656218 () Bool)

(assert (=> d!1362253 (= lt!1656218 (select (content!8085 e!2780872) key!3287))))

(declare-fun e!2781385 () Bool)

(assert (=> d!1362253 (= lt!1656218 e!2781385)))

(declare-fun res!1852903 () Bool)

(assert (=> d!1362253 (=> (not res!1852903) (not e!2781385))))

(assert (=> d!1362253 (= res!1852903 ((_ is Cons!50269) e!2780872))))

(assert (=> d!1362253 (= (contains!12809 e!2780872 key!3287) lt!1656218)))

(declare-fun b!4466663 () Bool)

(declare-fun e!2781386 () Bool)

(assert (=> b!4466663 (= e!2781385 e!2781386)))

(declare-fun res!1852902 () Bool)

(assert (=> b!4466663 (=> res!1852902 e!2781386)))

(assert (=> b!4466663 (= res!1852902 (= (h!56028 e!2780872) key!3287))))

(declare-fun b!4466664 () Bool)

(assert (=> b!4466664 (= e!2781386 (contains!12809 (t!357343 e!2780872) key!3287))))

(assert (= (and d!1362253 res!1852903) b!4466663))

(assert (= (and b!4466663 (not res!1852902)) b!4466664))

(declare-fun m!5171847 () Bool)

(assert (=> d!1362253 m!5171847))

(declare-fun m!5171849 () Bool)

(assert (=> d!1362253 m!5171849))

(declare-fun m!5171851 () Bool)

(assert (=> b!4466664 m!5171851))

(assert (=> bm!310865 d!1362253))

(declare-fun d!1362255 () Bool)

(assert (=> d!1362255 (= (get!16378 (getValueByKey!901 (toList!4043 lm!1477) hash!344)) (v!44208 (getValueByKey!901 (toList!4043 lm!1477) hash!344)))))

(assert (=> d!1361845 d!1362255))

(assert (=> d!1361845 d!1362247))

(assert (=> b!4465722 d!1362025))

(declare-fun d!1362257 () Bool)

(declare-fun res!1852904 () Bool)

(declare-fun e!2781387 () Bool)

(assert (=> d!1362257 (=> res!1852904 e!2781387)))

(assert (=> d!1362257 (= res!1852904 (and ((_ is Cons!50266) (t!357340 newBucket!178)) (= (_1!28547 (h!56023 (t!357340 newBucket!178))) (_1!28547 (h!56023 newBucket!178)))))))

(assert (=> d!1362257 (= (containsKey!1450 (t!357340 newBucket!178) (_1!28547 (h!56023 newBucket!178))) e!2781387)))

(declare-fun b!4466665 () Bool)

(declare-fun e!2781388 () Bool)

(assert (=> b!4466665 (= e!2781387 e!2781388)))

(declare-fun res!1852905 () Bool)

(assert (=> b!4466665 (=> (not res!1852905) (not e!2781388))))

(assert (=> b!4466665 (= res!1852905 ((_ is Cons!50266) (t!357340 newBucket!178)))))

(declare-fun b!4466666 () Bool)

(assert (=> b!4466666 (= e!2781388 (containsKey!1450 (t!357340 (t!357340 newBucket!178)) (_1!28547 (h!56023 newBucket!178))))))

(assert (= (and d!1362257 (not res!1852904)) b!4466665))

(assert (= (and b!4466665 res!1852905) b!4466666))

(declare-fun m!5171853 () Bool)

(assert (=> b!4466666 m!5171853))

(assert (=> b!4465648 d!1362257))

(declare-fun d!1362259 () Bool)

(assert (=> d!1362259 (= (invariantList!921 (toList!4044 lt!1655575)) (noDuplicatedKeys!208 (toList!4044 lt!1655575)))))

(declare-fun bs!793541 () Bool)

(assert (= bs!793541 d!1362259))

(declare-fun m!5171855 () Bool)

(assert (=> bs!793541 m!5171855))

(assert (=> d!1361783 d!1362259))

(declare-fun d!1362261 () Bool)

(declare-fun res!1852906 () Bool)

(declare-fun e!2781389 () Bool)

(assert (=> d!1362261 (=> res!1852906 e!2781389)))

(assert (=> d!1362261 (= res!1852906 ((_ is Nil!50267) (toList!4043 lm!1477)))))

(assert (=> d!1362261 (= (forall!9972 (toList!4043 lm!1477) lambda!162626) e!2781389)))

(declare-fun b!4466667 () Bool)

(declare-fun e!2781390 () Bool)

(assert (=> b!4466667 (= e!2781389 e!2781390)))

(declare-fun res!1852907 () Bool)

(assert (=> b!4466667 (=> (not res!1852907) (not e!2781390))))

(assert (=> b!4466667 (= res!1852907 (dynLambda!21002 lambda!162626 (h!56024 (toList!4043 lm!1477))))))

(declare-fun b!4466668 () Bool)

(assert (=> b!4466668 (= e!2781390 (forall!9972 (t!357341 (toList!4043 lm!1477)) lambda!162626))))

(assert (= (and d!1362261 (not res!1852906)) b!4466667))

(assert (= (and b!4466667 res!1852907) b!4466668))

(declare-fun b_lambda!148133 () Bool)

(assert (=> (not b_lambda!148133) (not b!4466667)))

(declare-fun m!5171857 () Bool)

(assert (=> b!4466667 m!5171857))

(declare-fun m!5171859 () Bool)

(assert (=> b!4466668 m!5171859))

(assert (=> d!1361783 d!1362261))

(declare-fun d!1362263 () Bool)

(declare-fun res!1852912 () Bool)

(declare-fun e!2781395 () Bool)

(assert (=> d!1362263 (=> res!1852912 e!2781395)))

(assert (=> d!1362263 (= res!1852912 (and ((_ is Cons!50267) (toList!4043 lm!1477)) (= (_1!28548 (h!56024 (toList!4043 lm!1477))) lt!1655464)))))

(assert (=> d!1362263 (= (containsKey!1454 (toList!4043 lm!1477) lt!1655464) e!2781395)))

(declare-fun b!4466673 () Bool)

(declare-fun e!2781396 () Bool)

(assert (=> b!4466673 (= e!2781395 e!2781396)))

(declare-fun res!1852913 () Bool)

(assert (=> b!4466673 (=> (not res!1852913) (not e!2781396))))

(assert (=> b!4466673 (= res!1852913 (and (or (not ((_ is Cons!50267) (toList!4043 lm!1477))) (bvsle (_1!28548 (h!56024 (toList!4043 lm!1477))) lt!1655464)) ((_ is Cons!50267) (toList!4043 lm!1477)) (bvslt (_1!28548 (h!56024 (toList!4043 lm!1477))) lt!1655464)))))

(declare-fun b!4466674 () Bool)

(assert (=> b!4466674 (= e!2781396 (containsKey!1454 (t!357341 (toList!4043 lm!1477)) lt!1655464))))

(assert (= (and d!1362263 (not res!1852912)) b!4466673))

(assert (= (and b!4466673 res!1852913) b!4466674))

(declare-fun m!5171861 () Bool)

(assert (=> b!4466674 m!5171861))

(assert (=> d!1361851 d!1362263))

(declare-fun d!1362265 () Bool)

(assert (=> d!1362265 (= (tail!7488 (toList!4043 lm!1477)) (t!357341 (toList!4043 lm!1477)))))

(assert (=> d!1361817 d!1362265))

(declare-fun b!4466675 () Bool)

(declare-fun e!2781397 () Bool)

(declare-fun tp!1336142 () Bool)

(assert (=> b!4466675 (= e!2781397 (and tp_is_empty!27349 tp_is_empty!27351 tp!1336142))))

(assert (=> b!4465878 (= tp!1336133 e!2781397)))

(assert (= (and b!4465878 ((_ is Cons!50266) (_2!28548 (h!56024 (toList!4043 lm!1477))))) b!4466675))

(declare-fun b!4466676 () Bool)

(declare-fun e!2781398 () Bool)

(declare-fun tp!1336143 () Bool)

(declare-fun tp!1336144 () Bool)

(assert (=> b!4466676 (= e!2781398 (and tp!1336143 tp!1336144))))

(assert (=> b!4465878 (= tp!1336134 e!2781398)))

(assert (= (and b!4465878 ((_ is Cons!50267) (t!357341 (toList!4043 lm!1477)))) b!4466676))

(declare-fun b!4466677 () Bool)

(declare-fun tp!1336145 () Bool)

(declare-fun e!2781399 () Bool)

(assert (=> b!4466677 (= e!2781399 (and tp_is_empty!27349 tp_is_empty!27351 tp!1336145))))

(assert (=> b!4465883 (= tp!1336137 e!2781399)))

(assert (= (and b!4465883 ((_ is Cons!50266) (t!357340 (t!357340 newBucket!178)))) b!4466677))

(declare-fun b_lambda!148135 () Bool)

(assert (= b_lambda!148101 (or d!1361837 b_lambda!148135)))

(declare-fun bs!793542 () Bool)

(declare-fun d!1362267 () Bool)

(assert (= bs!793542 (and d!1362267 d!1361837)))

(assert (=> bs!793542 (= (dynLambda!21002 lambda!162637 (h!56024 (toList!4043 (ListLongMap!2676 lt!1655462)))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 (ListLongMap!2676 lt!1655462))))))))

(declare-fun m!5171863 () Bool)

(assert (=> bs!793542 m!5171863))

(assert (=> b!4466554 d!1362267))

(declare-fun b_lambda!148137 () Bool)

(assert (= b_lambda!148081 (or d!1361795 b_lambda!148137)))

(declare-fun bs!793543 () Bool)

(declare-fun d!1362269 () Bool)

(assert (= bs!793543 (and d!1362269 d!1361795)))

(assert (=> bs!793543 (= (dynLambda!21003 lambda!162631 (h!56023 newBucket!178)) (= (hash!2423 hashF!1107 (_1!28547 (h!56023 newBucket!178))) hash!344))))

(declare-fun m!5171865 () Bool)

(assert (=> bs!793543 m!5171865))

(assert (=> b!4466244 d!1362269))

(declare-fun b_lambda!148139 () Bool)

(assert (= b_lambda!148083 (or d!1361835 b_lambda!148139)))

(declare-fun bs!793544 () Bool)

(declare-fun d!1362271 () Bool)

(assert (= bs!793544 (and d!1362271 d!1361835)))

(assert (=> bs!793544 (= (dynLambda!21002 lambda!162634 (h!56024 lt!1655462)) (noDuplicateKeys!1018 (_2!28548 (h!56024 lt!1655462))))))

(assert (=> bs!793544 m!5171807))

(assert (=> b!4466246 d!1362271))

(declare-fun b_lambda!148141 () Bool)

(assert (= b_lambda!148133 (or d!1361783 b_lambda!148141)))

(declare-fun bs!793545 () Bool)

(declare-fun d!1362273 () Bool)

(assert (= bs!793545 (and d!1362273 d!1361783)))

(assert (=> bs!793545 (= (dynLambda!21002 lambda!162626 (h!56024 (toList!4043 lm!1477))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(assert (=> bs!793545 m!5170515))

(assert (=> b!4466667 d!1362273))

(declare-fun b_lambda!148143 () Bool)

(assert (= b_lambda!148085 (or d!1361821 b_lambda!148143)))

(declare-fun bs!793546 () Bool)

(declare-fun d!1362275 () Bool)

(assert (= bs!793546 (and d!1362275 d!1361821)))

(assert (=> bs!793546 (= (dynLambda!21002 lambda!162632 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (Cons!50267 (tuple2!50509 hash!344 (_2!28548 (h!56024 (toList!4043 lm!1477)))) Nil!50267)))))))

(assert (=> bs!793546 m!5171113))

(assert (=> b!4466252 d!1362275))

(declare-fun b_lambda!148145 () Bool)

(assert (= b_lambda!148077 (or d!1361829 b_lambda!148145)))

(declare-fun bs!793547 () Bool)

(declare-fun d!1362277 () Bool)

(assert (= bs!793547 (and d!1362277 d!1361829)))

(assert (=> bs!793547 (= (dynLambda!21002 lambda!162633 (h!56024 (Cons!50267 lt!1655466 Nil!50267))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (Cons!50267 lt!1655466 Nil!50267)))))))

(assert (=> bs!793547 m!5171755))

(assert (=> b!4466232 d!1362277))

(declare-fun b_lambda!148147 () Bool)

(assert (= b_lambda!148079 (or start!438344 b_lambda!148147)))

(assert (=> d!1361997 d!1361859))

(declare-fun b_lambda!148149 () Bool)

(assert (= b_lambda!148103 (or d!1361747 b_lambda!148149)))

(declare-fun bs!793548 () Bool)

(declare-fun d!1362279 () Bool)

(assert (= bs!793548 (and d!1362279 d!1361747)))

(assert (=> bs!793548 (= (dynLambda!21002 lambda!162608 (h!56024 (toList!4043 lm!1477))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(assert (=> bs!793548 m!5170515))

(assert (=> b!4466558 d!1362279))

(declare-fun b_lambda!148151 () Bool)

(assert (= b_lambda!148075 (or d!1361843 b_lambda!148151)))

(declare-fun bs!793549 () Bool)

(declare-fun d!1362281 () Bool)

(assert (= bs!793549 (and d!1362281 d!1361843)))

(assert (=> bs!793549 (= (dynLambda!21002 lambda!162640 (h!56024 (toList!4043 lm!1477))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (toList!4043 lm!1477)))))))

(assert (=> bs!793549 m!5170515))

(assert (=> b!4466230 d!1362281))

(declare-fun b_lambda!148153 () Bool)

(assert (= b_lambda!148095 (or start!438344 b_lambda!148153)))

(declare-fun bs!793550 () Bool)

(declare-fun d!1362283 () Bool)

(assert (= bs!793550 (and d!1362283 start!438344)))

(assert (=> bs!793550 (= (dynLambda!21002 lambda!162601 (h!56024 (t!357341 (toList!4043 lm!1477)))) (noDuplicateKeys!1018 (_2!28548 (h!56024 (t!357341 (toList!4043 lm!1477))))))))

(declare-fun m!5171867 () Bool)

(assert (=> bs!793550 m!5171867))

(assert (=> b!4466403 d!1362283))

(declare-fun b_lambda!148155 () Bool)

(assert (= b_lambda!148131 (or d!1361857 b_lambda!148155)))

(declare-fun bs!793551 () Bool)

(declare-fun d!1362285 () Bool)

(assert (= bs!793551 (and d!1362285 d!1361857)))

(assert (=> bs!793551 (= (dynLambda!21002 lambda!162643 (h!56024 (toList!4043 lm!1477))) (allKeysSameHash!872 (_2!28548 (h!56024 (toList!4043 lm!1477))) (_1!28548 (h!56024 (toList!4043 lm!1477))) hashF!1107))))

(declare-fun m!5171869 () Bool)

(assert (=> bs!793551 m!5171869))

(assert (=> b!4466648 d!1362285))

(check-sat (not d!1361877) (not b!4466564) (not b!4466636) (not b!4466203) (not b!4466249) (not bm!310917) (not bs!793551) (not b!4466502) (not d!1362095) (not bs!793546) (not b!4466527) (not b!4466040) (not d!1362179) (not b!4466568) (not b!4466664) (not b!4466308) (not b!4466377) (not bs!793549) (not b!4466656) (not b!4466251) (not d!1362175) (not b!4466382) (not bs!793544) (not b!4466101) (not b_lambda!148139) (not b!4466524) (not b!4466399) (not b!4466487) (not b!4466043) (not b!4466513) (not b!4466512) (not b!4466044) (not bs!793543) (not b!4466137) (not b!4466385) (not b!4466555) (not d!1362239) (not b!4466638) (not b!4466677) (not d!1362173) (not b!4466514) (not b!4466631) (not b!4466668) (not bs!793548) (not bm!310959) (not b!4466400) (not d!1362249) (not b!4466267) (not b!4466387) (not b!4466223) (not b!4466675) (not d!1362001) (not b!4466256) (not bs!793542) (not d!1361989) (not bm!310963) (not b!4466484) (not d!1362197) (not bs!793547) (not b!4466266) (not b!4466526) (not b!4466394) (not d!1362019) (not bm!310928) (not b!4466236) (not bm!310941) (not b!4466499) (not b_lambda!148149) (not b!4466661) (not b!4466099) (not d!1362085) (not b!4466511) (not d!1362201) (not d!1362237) (not b!4466220) (not b!4466562) (not b!4466206) (not b!4466100) (not b!4466642) (not b!4466274) (not d!1362243) (not b!4466654) (not b!4466666) (not d!1361979) (not d!1362171) (not b!4466225) (not b!4466659) (not b_lambda!148145) (not b!4466625) (not b!4466623) (not b!4466375) (not b!4466523) (not d!1361977) (not d!1361985) (not b!4466529) (not b!4466271) (not b!4466530) (not b!4466563) (not b!4466268) (not b_lambda!148153) (not b!4466204) (not b!4466374) (not d!1361945) (not b_lambda!148143) (not b!4466245) (not b!4466293) (not d!1362079) (not d!1362203) (not b!4466522) (not bm!310960) (not b!4466397) (not d!1362013) (not b!4466239) (not d!1362007) (not b!4466444) (not bm!310903) (not bm!310955) (not b!4466637) (not bm!310925) tp_is_empty!27351 (not d!1362015) (not b!4466634) (not b!4466060) (not bm!310965) (not b!4466041) (not d!1362169) (not b_lambda!148155) (not b!4466477) (not b!4466624) (not d!1362165) (not b!4466641) (not b!4466649) (not d!1362149) (not d!1362083) (not b_lambda!148135) (not d!1361943) (not b!4466379) (not d!1362251) (not d!1361871) (not b!4466528) (not d!1362025) (not b_lambda!148137) (not b!4466231) (not d!1361869) (not b_lambda!148065) (not d!1362259) (not b!4466084) (not b!4466404) (not bm!310954) (not bm!310962) (not d!1362023) (not d!1362119) (not b!4466492) (not b!4466398) (not b!4466136) (not b!4466222) (not b!4466323) (not b!4466674) (not bs!793545) (not b!4466273) (not d!1362193) (not bm!310956) (not bm!310957) (not d!1362031) (not d!1362051) (not d!1362029) (not b!4466095) (not bm!310904) (not b!4465904) (not bs!793550) (not b!4466371) (not b!4466488) (not d!1362253) (not b!4466388) (not b_lambda!148147) (not b!4466103) (not d!1362035) (not b!4466645) (not b!4466233) (not d!1362177) (not d!1361923) (not b!4466138) (not b!4466657) (not b!4466491) (not d!1361875) (not b!4466651) (not bm!310961) (not b!4466521) (not b!4466490) (not b!4466633) (not d!1362245) (not b!4466376) (not b!4466639) (not d!1361939) (not d!1361941) (not bm!310905) (not d!1362159) (not b!4466207) (not b!4466380) (not b!4466557) (not b!4466535) (not b!4466311) (not b!4466442) (not b!4466247) (not bm!310916) (not b!4466561) (not b!4466646) (not b!4466208) (not bm!310958) (not bm!310918) (not b!4466534) (not b_lambda!148067) (not b_lambda!148141) (not d!1362027) (not b!4466560) (not b!4466306) (not b_lambda!148151) (not bm!310940) (not b!4466269) (not b!4466676) (not d!1362009) (not b!4466531) (not d!1362017) (not b!4465889) (not b!4466253) (not b!4466324) (not b!4466109) (not b!4466660) tp_is_empty!27349 (not d!1362129) (not b!4466270) (not b!4466263) (not b!4466644) (not b!4466260) (not b!4466567) (not b!4466443) (not b!4466536) (not b!4466559) (not bm!310964) (not d!1361867) (not d!1362077))
(check-sat)
