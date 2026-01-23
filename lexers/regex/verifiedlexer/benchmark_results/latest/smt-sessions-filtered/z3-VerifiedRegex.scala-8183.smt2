; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422132 () Bool)

(assert start!422132)

(declare-fun b!4359070 () Bool)

(declare-fun e!2712786 () Bool)

(declare-datatypes ((V!10566 0))(
  ( (V!10567 (val!16527 Int)) )
))
(declare-datatypes ((K!10320 0))(
  ( (K!10321 (val!16528 Int)) )
))
(declare-datatypes ((tuple2!48374 0))(
  ( (tuple2!48375 (_1!27481 K!10320) (_2!27481 V!10566)) )
))
(declare-datatypes ((List!49085 0))(
  ( (Nil!48961) (Cons!48961 (h!54518 tuple2!48374) (t!356005 List!49085)) )
))
(declare-datatypes ((tuple2!48376 0))(
  ( (tuple2!48377 (_1!27482 (_ BitVec 64)) (_2!27482 List!49085)) )
))
(declare-datatypes ((List!49086 0))(
  ( (Nil!48962) (Cons!48962 (h!54519 tuple2!48376) (t!356006 List!49086)) )
))
(declare-datatypes ((ListLongMap!1635 0))(
  ( (ListLongMap!1636 (toList!2985 List!49086)) )
))
(declare-fun lt!1571637 () ListLongMap!1635)

(declare-fun lambda!141069 () Int)

(declare-fun forall!9140 (List!49086 Int) Bool)

(assert (=> b!4359070 (= e!2712786 (forall!9140 (toList!2985 lt!1571637) lambda!141069))))

(declare-fun b!4359071 () Bool)

(declare-fun e!2712785 () Bool)

(declare-fun e!2712780 () Bool)

(assert (=> b!4359071 (= e!2712785 e!2712780)))

(declare-fun res!1791983 () Bool)

(assert (=> b!4359071 (=> res!1791983 e!2712780)))

(declare-fun lm!1707 () ListLongMap!1635)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4359071 (= res!1791983 (or (and ((_ is Cons!48962) (toList!2985 lm!1707)) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)) (not ((_ is Cons!48962) (toList!2985 lm!1707))) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)))))

(assert (=> b!4359071 e!2712786))

(declare-fun res!1791988 () Bool)

(assert (=> b!4359071 (=> (not res!1791988) (not e!2712786))))

(assert (=> b!4359071 (= res!1791988 (forall!9140 (toList!2985 lt!1571637) lambda!141069))))

(declare-fun lt!1571639 () tuple2!48376)

(declare-fun +!659 (ListLongMap!1635 tuple2!48376) ListLongMap!1635)

(assert (=> b!4359071 (= lt!1571637 (+!659 lm!1707 lt!1571639))))

(declare-fun newBucket!200 () List!49085)

(assert (=> b!4359071 (= lt!1571639 (tuple2!48377 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72045 0))(
  ( (Unit!72046) )
))
(declare-fun lt!1571636 () Unit!72045)

(declare-fun addValidProp!155 (ListLongMap!1635 Int (_ BitVec 64) List!49085) Unit!72045)

(assert (=> b!4359071 (= lt!1571636 (addValidProp!155 lm!1707 lambda!141069 hash!377 newBucket!200))))

(assert (=> b!4359071 (forall!9140 (toList!2985 lm!1707) lambda!141069)))

(declare-fun e!2712787 () Bool)

(declare-fun tp_is_empty!25241 () Bool)

(declare-fun b!4359073 () Bool)

(declare-fun tp_is_empty!25243 () Bool)

(declare-fun tp!1330266 () Bool)

(assert (=> b!4359073 (= e!2712787 (and tp_is_empty!25241 tp_is_empty!25243 tp!1330266))))

(declare-fun b!4359074 () Bool)

(declare-fun e!2712783 () Bool)

(declare-fun head!9066 (ListLongMap!1635) tuple2!48376)

(assert (=> b!4359074 (= e!2712783 (not (= (head!9066 lm!1707) lt!1571639)))))

(declare-fun b!4359075 () Bool)

(declare-fun res!1791993 () Bool)

(declare-fun e!2712788 () Bool)

(assert (=> b!4359075 (=> (not res!1791993) (not e!2712788))))

(declare-datatypes ((Hashable!4893 0))(
  ( (HashableExt!4892 (__x!30596 Int)) )
))
(declare-fun hashF!1247 () Hashable!4893)

(declare-fun allKeysSameHash!459 (List!49085 (_ BitVec 64) Hashable!4893) Bool)

(assert (=> b!4359075 (= res!1791993 (allKeysSameHash!459 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4359076 () Bool)

(declare-fun res!1791991 () Bool)

(assert (=> b!4359076 (=> (not res!1791991) (not e!2712788))))

(declare-fun key!3918 () K!10320)

(declare-fun hash!1591 (Hashable!4893 K!10320) (_ BitVec 64))

(assert (=> b!4359076 (= res!1791991 (= (hash!1591 hashF!1247 key!3918) hash!377))))

(declare-fun b!4359077 () Bool)

(declare-fun e!2712779 () Bool)

(assert (=> b!4359077 (= e!2712780 e!2712779)))

(declare-fun res!1791981 () Bool)

(assert (=> b!4359077 (=> res!1791981 e!2712779)))

(declare-datatypes ((ListMap!2229 0))(
  ( (ListMap!2230 (toList!2986 List!49085)) )
))
(declare-fun lt!1571630 () ListMap!2229)

(declare-fun lt!1571644 () ListMap!2229)

(declare-fun eq!271 (ListMap!2229 ListMap!2229) Bool)

(assert (=> b!4359077 (= res!1791981 (not (eq!271 lt!1571630 lt!1571644)))))

(declare-fun lt!1571638 () tuple2!48374)

(declare-fun lt!1571643 () ListMap!2229)

(declare-fun addToMapMapFromBucket!197 (List!49085 ListMap!2229) ListMap!2229)

(declare-fun +!660 (ListMap!2229 tuple2!48374) ListMap!2229)

(assert (=> b!4359077 (eq!271 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643) (+!660 lt!1571630 lt!1571638))))

(declare-fun lt!1571642 () ListMap!2229)

(declare-fun newValue!99 () V!10566)

(declare-fun lt!1571632 () Unit!72045)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!80 (ListMap!2229 K!10320 V!10566 List!49085) Unit!72045)

(assert (=> b!4359077 (= lt!1571632 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!80 lt!1571642 key!3918 newValue!99 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> b!4359077 (= lt!1571644 lt!1571630)))

(assert (=> b!4359077 (= lt!1571630 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642))))

(assert (=> b!4359077 e!2712783))

(declare-fun res!1791984 () Bool)

(assert (=> b!4359077 (=> (not res!1791984) (not e!2712783))))

(declare-fun lt!1571641 () ListMap!2229)

(assert (=> b!4359077 (= res!1791984 (eq!271 lt!1571641 lt!1571643))))

(assert (=> b!4359077 (= lt!1571643 (+!660 lt!1571642 lt!1571638))))

(declare-fun lt!1571646 () ListLongMap!1635)

(declare-fun extractMap!560 (List!49086) ListMap!2229)

(assert (=> b!4359077 (= lt!1571641 (extractMap!560 (toList!2985 (+!659 lt!1571646 lt!1571639))))))

(declare-fun lt!1571633 () Unit!72045)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!105 (ListLongMap!1635 (_ BitVec 64) List!49085 K!10320 V!10566 Hashable!4893) Unit!72045)

(assert (=> b!4359077 (= lt!1571633 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!105 lt!1571646 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11183 (ListMap!2229 K!10320) Bool)

(assert (=> b!4359077 (contains!11183 lt!1571642 key!3918)))

(assert (=> b!4359077 (= lt!1571642 (extractMap!560 (toList!2985 lt!1571646)))))

(declare-fun tail!7014 (ListLongMap!1635) ListLongMap!1635)

(assert (=> b!4359077 (= lt!1571646 (tail!7014 lm!1707))))

(declare-fun lt!1571629 () ListMap!2229)

(assert (=> b!4359077 (contains!11183 lt!1571629 key!3918)))

(declare-fun lt!1571631 () Unit!72045)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!44 (List!49085 K!10320 V!10566 ListMap!2229) Unit!72045)

(assert (=> b!4359077 (= lt!1571631 (lemmaAddToMapContainsAndNotInListThenInAcc!44 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918 newValue!99 lt!1571629))))

(assert (=> b!4359077 (= lt!1571629 (extractMap!560 (t!356006 (toList!2985 lm!1707))))))

(declare-fun e!2712782 () Bool)

(assert (=> b!4359077 e!2712782))

(declare-fun res!1791985 () Bool)

(assert (=> b!4359077 (=> (not res!1791985) (not e!2712782))))

(declare-fun containsKey!714 (List!49085 K!10320) Bool)

(declare-fun apply!11353 (ListLongMap!1635 (_ BitVec 64)) List!49085)

(assert (=> b!4359077 (= res!1791985 (not (containsKey!714 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))) key!3918)))))

(declare-fun lt!1571640 () Unit!72045)

(declare-fun lemmaNotSameHashThenCannotContainKey!48 (ListLongMap!1635 K!10320 (_ BitVec 64) Hashable!4893) Unit!72045)

(assert (=> b!4359077 (= lt!1571640 (lemmaNotSameHashThenCannotContainKey!48 lm!1707 key!3918 (_1!27482 (h!54519 (toList!2985 lm!1707))) hashF!1247))))

(declare-fun b!4359078 () Bool)

(declare-fun e!2712784 () Bool)

(assert (=> b!4359078 (= e!2712788 e!2712784)))

(declare-fun res!1791992 () Bool)

(assert (=> b!4359078 (=> (not res!1791992) (not e!2712784))))

(assert (=> b!4359078 (= res!1791992 (contains!11183 lt!1571644 key!3918))))

(assert (=> b!4359078 (= lt!1571644 (extractMap!560 (toList!2985 lm!1707)))))

(declare-fun b!4359079 () Bool)

(declare-fun e!2712781 () Bool)

(declare-fun tp!1330265 () Bool)

(assert (=> b!4359079 (= e!2712781 tp!1330265)))

(declare-fun b!4359080 () Bool)

(declare-fun res!1791990 () Bool)

(assert (=> b!4359080 (=> res!1791990 e!2712785)))

(declare-fun noDuplicateKeys!501 (List!49085) Bool)

(assert (=> b!4359080 (= res!1791990 (not (noDuplicateKeys!501 newBucket!200)))))

(declare-fun b!4359081 () Bool)

(declare-fun isEmpty!28209 (ListLongMap!1635) Bool)

(assert (=> b!4359081 (= e!2712779 (not (isEmpty!28209 lm!1707)))))

(declare-fun b!4359082 () Bool)

(assert (=> b!4359082 (= e!2712782 (not (containsKey!714 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918)))))

(declare-fun res!1791989 () Bool)

(assert (=> start!422132 (=> (not res!1791989) (not e!2712788))))

(assert (=> start!422132 (= res!1791989 (forall!9140 (toList!2985 lm!1707) lambda!141069))))

(assert (=> start!422132 e!2712788))

(assert (=> start!422132 e!2712787))

(assert (=> start!422132 true))

(declare-fun inv!64506 (ListLongMap!1635) Bool)

(assert (=> start!422132 (and (inv!64506 lm!1707) e!2712781)))

(assert (=> start!422132 tp_is_empty!25241))

(assert (=> start!422132 tp_is_empty!25243))

(declare-fun b!4359072 () Bool)

(declare-fun res!1791986 () Bool)

(assert (=> b!4359072 (=> (not res!1791986) (not e!2712784))))

(declare-fun contains!11184 (ListLongMap!1635 (_ BitVec 64)) Bool)

(assert (=> b!4359072 (= res!1791986 (contains!11184 lm!1707 hash!377))))

(declare-fun b!4359083 () Bool)

(declare-fun res!1791982 () Bool)

(assert (=> b!4359083 (=> (not res!1791982) (not e!2712788))))

(declare-fun allKeysSameHashInMap!605 (ListLongMap!1635 Hashable!4893) Bool)

(assert (=> b!4359083 (= res!1791982 (allKeysSameHashInMap!605 lm!1707 hashF!1247))))

(declare-fun b!4359084 () Bool)

(assert (=> b!4359084 (= e!2712784 (not e!2712785))))

(declare-fun res!1791987 () Bool)

(assert (=> b!4359084 (=> res!1791987 e!2712785)))

(declare-fun lt!1571634 () List!49085)

(declare-fun removePairForKey!471 (List!49085 K!10320) List!49085)

(assert (=> b!4359084 (= res!1791987 (not (= newBucket!200 (Cons!48961 lt!1571638 (removePairForKey!471 lt!1571634 key!3918)))))))

(assert (=> b!4359084 (= lt!1571638 (tuple2!48375 key!3918 newValue!99))))

(declare-fun lt!1571628 () tuple2!48376)

(declare-fun lt!1571645 () Unit!72045)

(declare-fun forallContained!1781 (List!49086 Int tuple2!48376) Unit!72045)

(assert (=> b!4359084 (= lt!1571645 (forallContained!1781 (toList!2985 lm!1707) lambda!141069 lt!1571628))))

(declare-fun contains!11185 (List!49086 tuple2!48376) Bool)

(assert (=> b!4359084 (contains!11185 (toList!2985 lm!1707) lt!1571628)))

(assert (=> b!4359084 (= lt!1571628 (tuple2!48377 hash!377 lt!1571634))))

(declare-fun lt!1571635 () Unit!72045)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!348 (List!49086 (_ BitVec 64) List!49085) Unit!72045)

(assert (=> b!4359084 (= lt!1571635 (lemmaGetValueByKeyImpliesContainsTuple!348 (toList!2985 lm!1707) hash!377 lt!1571634))))

(assert (=> b!4359084 (= lt!1571634 (apply!11353 lm!1707 hash!377))))

(assert (= (and start!422132 res!1791989) b!4359083))

(assert (= (and b!4359083 res!1791982) b!4359076))

(assert (= (and b!4359076 res!1791991) b!4359075))

(assert (= (and b!4359075 res!1791993) b!4359078))

(assert (= (and b!4359078 res!1791992) b!4359072))

(assert (= (and b!4359072 res!1791986) b!4359084))

(assert (= (and b!4359084 (not res!1791987)) b!4359080))

(assert (= (and b!4359080 (not res!1791990)) b!4359071))

(assert (= (and b!4359071 res!1791988) b!4359070))

(assert (= (and b!4359071 (not res!1791983)) b!4359077))

(assert (= (and b!4359077 res!1791985) b!4359082))

(assert (= (and b!4359077 res!1791984) b!4359074))

(assert (= (and b!4359077 (not res!1791981)) b!4359081))

(assert (= (and start!422132 ((_ is Cons!48961) newBucket!200)) b!4359073))

(assert (= start!422132 b!4359079))

(declare-fun m!4975459 () Bool)

(assert (=> b!4359074 m!4975459))

(declare-fun m!4975461 () Bool)

(assert (=> b!4359078 m!4975461))

(declare-fun m!4975463 () Bool)

(assert (=> b!4359078 m!4975463))

(declare-fun m!4975465 () Bool)

(assert (=> b!4359083 m!4975465))

(declare-fun m!4975467 () Bool)

(assert (=> b!4359081 m!4975467))

(declare-fun m!4975469 () Bool)

(assert (=> b!4359082 m!4975469))

(declare-fun m!4975471 () Bool)

(assert (=> b!4359080 m!4975471))

(declare-fun m!4975473 () Bool)

(assert (=> b!4359084 m!4975473))

(declare-fun m!4975475 () Bool)

(assert (=> b!4359084 m!4975475))

(declare-fun m!4975477 () Bool)

(assert (=> b!4359084 m!4975477))

(declare-fun m!4975479 () Bool)

(assert (=> b!4359084 m!4975479))

(declare-fun m!4975481 () Bool)

(assert (=> b!4359084 m!4975481))

(declare-fun m!4975483 () Bool)

(assert (=> b!4359075 m!4975483))

(declare-fun m!4975485 () Bool)

(assert (=> b!4359072 m!4975485))

(declare-fun m!4975487 () Bool)

(assert (=> b!4359076 m!4975487))

(declare-fun m!4975489 () Bool)

(assert (=> b!4359070 m!4975489))

(declare-fun m!4975491 () Bool)

(assert (=> start!422132 m!4975491))

(declare-fun m!4975493 () Bool)

(assert (=> start!422132 m!4975493))

(declare-fun m!4975495 () Bool)

(assert (=> b!4359077 m!4975495))

(declare-fun m!4975497 () Bool)

(assert (=> b!4359077 m!4975497))

(declare-fun m!4975499 () Bool)

(assert (=> b!4359077 m!4975499))

(declare-fun m!4975501 () Bool)

(assert (=> b!4359077 m!4975501))

(declare-fun m!4975503 () Bool)

(assert (=> b!4359077 m!4975503))

(declare-fun m!4975505 () Bool)

(assert (=> b!4359077 m!4975505))

(declare-fun m!4975507 () Bool)

(assert (=> b!4359077 m!4975507))

(declare-fun m!4975509 () Bool)

(assert (=> b!4359077 m!4975509))

(declare-fun m!4975511 () Bool)

(assert (=> b!4359077 m!4975511))

(declare-fun m!4975513 () Bool)

(assert (=> b!4359077 m!4975513))

(declare-fun m!4975515 () Bool)

(assert (=> b!4359077 m!4975515))

(declare-fun m!4975517 () Bool)

(assert (=> b!4359077 m!4975517))

(declare-fun m!4975519 () Bool)

(assert (=> b!4359077 m!4975519))

(declare-fun m!4975521 () Bool)

(assert (=> b!4359077 m!4975521))

(assert (=> b!4359077 m!4975521))

(declare-fun m!4975523 () Bool)

(assert (=> b!4359077 m!4975523))

(declare-fun m!4975525 () Bool)

(assert (=> b!4359077 m!4975525))

(declare-fun m!4975527 () Bool)

(assert (=> b!4359077 m!4975527))

(declare-fun m!4975529 () Bool)

(assert (=> b!4359077 m!4975529))

(assert (=> b!4359077 m!4975495))

(assert (=> b!4359077 m!4975505))

(declare-fun m!4975531 () Bool)

(assert (=> b!4359077 m!4975531))

(declare-fun m!4975533 () Bool)

(assert (=> b!4359077 m!4975533))

(assert (=> b!4359071 m!4975489))

(declare-fun m!4975535 () Bool)

(assert (=> b!4359071 m!4975535))

(declare-fun m!4975537 () Bool)

(assert (=> b!4359071 m!4975537))

(assert (=> b!4359071 m!4975491))

(check-sat (not b!4359073) (not b!4359071) (not b!4359084) (not b!4359083) (not b!4359080) (not b!4359075) (not b!4359077) tp_is_empty!25243 (not b!4359078) (not b!4359081) (not b!4359072) (not b!4359082) tp_is_empty!25241 (not b!4359074) (not b!4359070) (not b!4359079) (not start!422132) (not b!4359076))
(check-sat)
(get-model)

(declare-fun d!1289086 () Bool)

(declare-fun res!1792010 () Bool)

(declare-fun e!2712803 () Bool)

(assert (=> d!1289086 (=> res!1792010 e!2712803)))

(assert (=> d!1289086 (= res!1792010 ((_ is Nil!48962) (toList!2985 lt!1571637)))))

(assert (=> d!1289086 (= (forall!9140 (toList!2985 lt!1571637) lambda!141069) e!2712803)))

(declare-fun b!4359103 () Bool)

(declare-fun e!2712804 () Bool)

(assert (=> b!4359103 (= e!2712803 e!2712804)))

(declare-fun res!1792011 () Bool)

(assert (=> b!4359103 (=> (not res!1792011) (not e!2712804))))

(declare-fun dynLambda!20643 (Int tuple2!48376) Bool)

(assert (=> b!4359103 (= res!1792011 (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 lt!1571637))))))

(declare-fun b!4359104 () Bool)

(assert (=> b!4359104 (= e!2712804 (forall!9140 (t!356006 (toList!2985 lt!1571637)) lambda!141069))))

(assert (= (and d!1289086 (not res!1792010)) b!4359103))

(assert (= (and b!4359103 res!1792011) b!4359104))

(declare-fun b_lambda!131527 () Bool)

(assert (=> (not b_lambda!131527) (not b!4359103)))

(declare-fun m!4975555 () Bool)

(assert (=> b!4359103 m!4975555))

(declare-fun m!4975563 () Bool)

(assert (=> b!4359104 m!4975563))

(assert (=> b!4359071 d!1289086))

(declare-fun d!1289088 () Bool)

(declare-fun e!2712817 () Bool)

(assert (=> d!1289088 e!2712817))

(declare-fun res!1792028 () Bool)

(assert (=> d!1289088 (=> (not res!1792028) (not e!2712817))))

(declare-fun lt!1571671 () ListLongMap!1635)

(assert (=> d!1289088 (= res!1792028 (contains!11184 lt!1571671 (_1!27482 lt!1571639)))))

(declare-fun lt!1571673 () List!49086)

(assert (=> d!1289088 (= lt!1571671 (ListLongMap!1636 lt!1571673))))

(declare-fun lt!1571672 () Unit!72045)

(declare-fun lt!1571670 () Unit!72045)

(assert (=> d!1289088 (= lt!1571672 lt!1571670)))

(declare-datatypes ((Option!10480 0))(
  ( (None!10479) (Some!10479 (v!43373 List!49085)) )
))
(declare-fun getValueByKey!466 (List!49086 (_ BitVec 64)) Option!10480)

(assert (=> d!1289088 (= (getValueByKey!466 lt!1571673 (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639)))))

(declare-fun lemmaContainsTupThenGetReturnValue!240 (List!49086 (_ BitVec 64) List!49085) Unit!72045)

(assert (=> d!1289088 (= lt!1571670 (lemmaContainsTupThenGetReturnValue!240 lt!1571673 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(declare-fun insertStrictlySorted!141 (List!49086 (_ BitVec 64) List!49085) List!49086)

(assert (=> d!1289088 (= lt!1571673 (insertStrictlySorted!141 (toList!2985 lm!1707) (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(assert (=> d!1289088 (= (+!659 lm!1707 lt!1571639) lt!1571671)))

(declare-fun b!4359125 () Bool)

(declare-fun res!1792027 () Bool)

(assert (=> b!4359125 (=> (not res!1792027) (not e!2712817))))

(assert (=> b!4359125 (= res!1792027 (= (getValueByKey!466 (toList!2985 lt!1571671) (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639))))))

(declare-fun b!4359126 () Bool)

(assert (=> b!4359126 (= e!2712817 (contains!11185 (toList!2985 lt!1571671) lt!1571639))))

(assert (= (and d!1289088 res!1792028) b!4359125))

(assert (= (and b!4359125 res!1792027) b!4359126))

(declare-fun m!4975591 () Bool)

(assert (=> d!1289088 m!4975591))

(declare-fun m!4975593 () Bool)

(assert (=> d!1289088 m!4975593))

(declare-fun m!4975595 () Bool)

(assert (=> d!1289088 m!4975595))

(declare-fun m!4975597 () Bool)

(assert (=> d!1289088 m!4975597))

(declare-fun m!4975599 () Bool)

(assert (=> b!4359125 m!4975599))

(declare-fun m!4975601 () Bool)

(assert (=> b!4359126 m!4975601))

(assert (=> b!4359071 d!1289088))

(declare-fun d!1289102 () Bool)

(assert (=> d!1289102 (forall!9140 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200))) lambda!141069)))

(declare-fun lt!1571688 () Unit!72045)

(declare-fun choose!26967 (ListLongMap!1635 Int (_ BitVec 64) List!49085) Unit!72045)

(assert (=> d!1289102 (= lt!1571688 (choose!26967 lm!1707 lambda!141069 hash!377 newBucket!200))))

(declare-fun e!2712829 () Bool)

(assert (=> d!1289102 e!2712829))

(declare-fun res!1792043 () Bool)

(assert (=> d!1289102 (=> (not res!1792043) (not e!2712829))))

(assert (=> d!1289102 (= res!1792043 (forall!9140 (toList!2985 lm!1707) lambda!141069))))

(assert (=> d!1289102 (= (addValidProp!155 lm!1707 lambda!141069 hash!377 newBucket!200) lt!1571688)))

(declare-fun b!4359142 () Bool)

(assert (=> b!4359142 (= e!2712829 (dynLambda!20643 lambda!141069 (tuple2!48377 hash!377 newBucket!200)))))

(assert (= (and d!1289102 res!1792043) b!4359142))

(declare-fun b_lambda!131531 () Bool)

(assert (=> (not b_lambda!131531) (not b!4359142)))

(declare-fun m!4975617 () Bool)

(assert (=> d!1289102 m!4975617))

(declare-fun m!4975619 () Bool)

(assert (=> d!1289102 m!4975619))

(declare-fun m!4975621 () Bool)

(assert (=> d!1289102 m!4975621))

(assert (=> d!1289102 m!4975491))

(declare-fun m!4975623 () Bool)

(assert (=> b!4359142 m!4975623))

(assert (=> b!4359071 d!1289102))

(declare-fun d!1289108 () Bool)

(declare-fun res!1792044 () Bool)

(declare-fun e!2712830 () Bool)

(assert (=> d!1289108 (=> res!1792044 e!2712830)))

(assert (=> d!1289108 (= res!1792044 ((_ is Nil!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289108 (= (forall!9140 (toList!2985 lm!1707) lambda!141069) e!2712830)))

(declare-fun b!4359143 () Bool)

(declare-fun e!2712831 () Bool)

(assert (=> b!4359143 (= e!2712830 e!2712831)))

(declare-fun res!1792045 () Bool)

(assert (=> b!4359143 (=> (not res!1792045) (not e!2712831))))

(assert (=> b!4359143 (= res!1792045 (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 lm!1707))))))

(declare-fun b!4359144 () Bool)

(assert (=> b!4359144 (= e!2712831 (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141069))))

(assert (= (and d!1289108 (not res!1792044)) b!4359143))

(assert (= (and b!4359143 res!1792045) b!4359144))

(declare-fun b_lambda!131533 () Bool)

(assert (=> (not b_lambda!131533) (not b!4359143)))

(declare-fun m!4975625 () Bool)

(assert (=> b!4359143 m!4975625))

(declare-fun m!4975627 () Bool)

(assert (=> b!4359144 m!4975627))

(assert (=> b!4359071 d!1289108))

(declare-fun d!1289110 () Bool)

(declare-fun res!1792056 () Bool)

(declare-fun e!2712848 () Bool)

(assert (=> d!1289110 (=> res!1792056 e!2712848)))

(assert (=> d!1289110 (= res!1792056 (and ((_ is Cons!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (= (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) key!3918)))))

(assert (=> d!1289110 (= (containsKey!714 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918) e!2712848)))

(declare-fun b!4359167 () Bool)

(declare-fun e!2712849 () Bool)

(assert (=> b!4359167 (= e!2712848 e!2712849)))

(declare-fun res!1792057 () Bool)

(assert (=> b!4359167 (=> (not res!1792057) (not e!2712849))))

(assert (=> b!4359167 (= res!1792057 ((_ is Cons!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun b!4359168 () Bool)

(assert (=> b!4359168 (= e!2712849 (containsKey!714 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) key!3918))))

(assert (= (and d!1289110 (not res!1792056)) b!4359167))

(assert (= (and b!4359167 res!1792057) b!4359168))

(declare-fun m!4975629 () Bool)

(assert (=> b!4359168 m!4975629))

(assert (=> b!4359082 d!1289110))

(declare-fun d!1289112 () Bool)

(declare-fun e!2712862 () Bool)

(assert (=> d!1289112 e!2712862))

(declare-fun res!1792063 () Bool)

(assert (=> d!1289112 (=> res!1792063 e!2712862)))

(declare-fun lt!1571726 () Bool)

(assert (=> d!1289112 (= res!1792063 (not lt!1571726))))

(declare-fun lt!1571724 () Bool)

(assert (=> d!1289112 (= lt!1571726 lt!1571724)))

(declare-fun lt!1571723 () Unit!72045)

(declare-fun e!2712863 () Unit!72045)

(assert (=> d!1289112 (= lt!1571723 e!2712863)))

(declare-fun c!741154 () Bool)

(assert (=> d!1289112 (= c!741154 lt!1571724)))

(declare-fun containsKey!716 (List!49086 (_ BitVec 64)) Bool)

(assert (=> d!1289112 (= lt!1571724 (containsKey!716 (toList!2985 lm!1707) hash!377))))

(assert (=> d!1289112 (= (contains!11184 lm!1707 hash!377) lt!1571726)))

(declare-fun b!4359188 () Bool)

(declare-fun lt!1571725 () Unit!72045)

(assert (=> b!4359188 (= e!2712863 lt!1571725)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!376 (List!49086 (_ BitVec 64)) Unit!72045)

(assert (=> b!4359188 (= lt!1571725 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!2985 lm!1707) hash!377))))

(declare-fun isDefined!7773 (Option!10480) Bool)

(assert (=> b!4359188 (isDefined!7773 (getValueByKey!466 (toList!2985 lm!1707) hash!377))))

(declare-fun b!4359189 () Bool)

(declare-fun Unit!72060 () Unit!72045)

(assert (=> b!4359189 (= e!2712863 Unit!72060)))

(declare-fun b!4359190 () Bool)

(assert (=> b!4359190 (= e!2712862 (isDefined!7773 (getValueByKey!466 (toList!2985 lm!1707) hash!377)))))

(assert (= (and d!1289112 c!741154) b!4359188))

(assert (= (and d!1289112 (not c!741154)) b!4359189))

(assert (= (and d!1289112 (not res!1792063)) b!4359190))

(declare-fun m!4975659 () Bool)

(assert (=> d!1289112 m!4975659))

(declare-fun m!4975661 () Bool)

(assert (=> b!4359188 m!4975661))

(declare-fun m!4975663 () Bool)

(assert (=> b!4359188 m!4975663))

(assert (=> b!4359188 m!4975663))

(declare-fun m!4975665 () Bool)

(assert (=> b!4359188 m!4975665))

(assert (=> b!4359190 m!4975663))

(assert (=> b!4359190 m!4975663))

(assert (=> b!4359190 m!4975665))

(assert (=> b!4359072 d!1289112))

(declare-fun bs!633140 () Bool)

(declare-fun d!1289120 () Bool)

(assert (= bs!633140 (and d!1289120 start!422132)))

(declare-fun lambda!141083 () Int)

(assert (=> bs!633140 (not (= lambda!141083 lambda!141069))))

(assert (=> d!1289120 true))

(assert (=> d!1289120 (= (allKeysSameHashInMap!605 lm!1707 hashF!1247) (forall!9140 (toList!2985 lm!1707) lambda!141083))))

(declare-fun bs!633141 () Bool)

(assert (= bs!633141 d!1289120))

(declare-fun m!4975703 () Bool)

(assert (=> bs!633141 m!4975703))

(assert (=> b!4359083 d!1289120))

(declare-fun d!1289130 () Bool)

(declare-fun get!15907 (Option!10480) List!49085)

(assert (=> d!1289130 (= (apply!11353 lm!1707 hash!377) (get!15907 (getValueByKey!466 (toList!2985 lm!1707) hash!377)))))

(declare-fun bs!633142 () Bool)

(assert (= bs!633142 d!1289130))

(assert (=> bs!633142 m!4975663))

(assert (=> bs!633142 m!4975663))

(declare-fun m!4975705 () Bool)

(assert (=> bs!633142 m!4975705))

(assert (=> b!4359084 d!1289130))

(declare-fun b!4359209 () Bool)

(declare-fun e!2712872 () List!49085)

(assert (=> b!4359209 (= e!2712872 (t!356005 lt!1571634))))

(declare-fun b!4359210 () Bool)

(declare-fun e!2712873 () List!49085)

(assert (=> b!4359210 (= e!2712872 e!2712873)))

(declare-fun c!741162 () Bool)

(assert (=> b!4359210 (= c!741162 ((_ is Cons!48961) lt!1571634))))

(declare-fun d!1289132 () Bool)

(declare-fun lt!1571736 () List!49085)

(assert (=> d!1289132 (not (containsKey!714 lt!1571736 key!3918))))

(assert (=> d!1289132 (= lt!1571736 e!2712872)))

(declare-fun c!741163 () Bool)

(assert (=> d!1289132 (= c!741163 (and ((_ is Cons!48961) lt!1571634) (= (_1!27481 (h!54518 lt!1571634)) key!3918)))))

(assert (=> d!1289132 (noDuplicateKeys!501 lt!1571634)))

(assert (=> d!1289132 (= (removePairForKey!471 lt!1571634 key!3918) lt!1571736)))

(declare-fun b!4359212 () Bool)

(assert (=> b!4359212 (= e!2712873 Nil!48961)))

(declare-fun b!4359211 () Bool)

(assert (=> b!4359211 (= e!2712873 (Cons!48961 (h!54518 lt!1571634) (removePairForKey!471 (t!356005 lt!1571634) key!3918)))))

(assert (= (and d!1289132 c!741163) b!4359209))

(assert (= (and d!1289132 (not c!741163)) b!4359210))

(assert (= (and b!4359210 c!741162) b!4359211))

(assert (= (and b!4359210 (not c!741162)) b!4359212))

(declare-fun m!4975707 () Bool)

(assert (=> d!1289132 m!4975707))

(declare-fun m!4975709 () Bool)

(assert (=> d!1289132 m!4975709))

(declare-fun m!4975711 () Bool)

(assert (=> b!4359211 m!4975711))

(assert (=> b!4359084 d!1289132))

(declare-fun d!1289134 () Bool)

(assert (=> d!1289134 (dynLambda!20643 lambda!141069 lt!1571628)))

(declare-fun lt!1571739 () Unit!72045)

(declare-fun choose!26969 (List!49086 Int tuple2!48376) Unit!72045)

(assert (=> d!1289134 (= lt!1571739 (choose!26969 (toList!2985 lm!1707) lambda!141069 lt!1571628))))

(declare-fun e!2712876 () Bool)

(assert (=> d!1289134 e!2712876))

(declare-fun res!1792068 () Bool)

(assert (=> d!1289134 (=> (not res!1792068) (not e!2712876))))

(assert (=> d!1289134 (= res!1792068 (forall!9140 (toList!2985 lm!1707) lambda!141069))))

(assert (=> d!1289134 (= (forallContained!1781 (toList!2985 lm!1707) lambda!141069 lt!1571628) lt!1571739)))

(declare-fun b!4359215 () Bool)

(assert (=> b!4359215 (= e!2712876 (contains!11185 (toList!2985 lm!1707) lt!1571628))))

(assert (= (and d!1289134 res!1792068) b!4359215))

(declare-fun b_lambda!131535 () Bool)

(assert (=> (not b_lambda!131535) (not d!1289134)))

(declare-fun m!4975713 () Bool)

(assert (=> d!1289134 m!4975713))

(declare-fun m!4975715 () Bool)

(assert (=> d!1289134 m!4975715))

(assert (=> d!1289134 m!4975491))

(assert (=> b!4359215 m!4975477))

(assert (=> b!4359084 d!1289134))

(declare-fun d!1289136 () Bool)

(assert (=> d!1289136 (contains!11185 (toList!2985 lm!1707) (tuple2!48377 hash!377 lt!1571634))))

(declare-fun lt!1571742 () Unit!72045)

(declare-fun choose!26970 (List!49086 (_ BitVec 64) List!49085) Unit!72045)

(assert (=> d!1289136 (= lt!1571742 (choose!26970 (toList!2985 lm!1707) hash!377 lt!1571634))))

(declare-fun e!2712879 () Bool)

(assert (=> d!1289136 e!2712879))

(declare-fun res!1792071 () Bool)

(assert (=> d!1289136 (=> (not res!1792071) (not e!2712879))))

(declare-fun isStrictlySorted!110 (List!49086) Bool)

(assert (=> d!1289136 (= res!1792071 (isStrictlySorted!110 (toList!2985 lm!1707)))))

(assert (=> d!1289136 (= (lemmaGetValueByKeyImpliesContainsTuple!348 (toList!2985 lm!1707) hash!377 lt!1571634) lt!1571742)))

(declare-fun b!4359218 () Bool)

(assert (=> b!4359218 (= e!2712879 (= (getValueByKey!466 (toList!2985 lm!1707) hash!377) (Some!10479 lt!1571634)))))

(assert (= (and d!1289136 res!1792071) b!4359218))

(declare-fun m!4975717 () Bool)

(assert (=> d!1289136 m!4975717))

(declare-fun m!4975719 () Bool)

(assert (=> d!1289136 m!4975719))

(declare-fun m!4975721 () Bool)

(assert (=> d!1289136 m!4975721))

(assert (=> b!4359218 m!4975663))

(assert (=> b!4359084 d!1289136))

(declare-fun d!1289138 () Bool)

(declare-fun lt!1571745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7733 (List!49086) (InoxSet tuple2!48376))

(assert (=> d!1289138 (= lt!1571745 (select (content!7733 (toList!2985 lm!1707)) lt!1571628))))

(declare-fun e!2712885 () Bool)

(assert (=> d!1289138 (= lt!1571745 e!2712885)))

(declare-fun res!1792077 () Bool)

(assert (=> d!1289138 (=> (not res!1792077) (not e!2712885))))

(assert (=> d!1289138 (= res!1792077 ((_ is Cons!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289138 (= (contains!11185 (toList!2985 lm!1707) lt!1571628) lt!1571745)))

(declare-fun b!4359223 () Bool)

(declare-fun e!2712884 () Bool)

(assert (=> b!4359223 (= e!2712885 e!2712884)))

(declare-fun res!1792076 () Bool)

(assert (=> b!4359223 (=> res!1792076 e!2712884)))

(assert (=> b!4359223 (= res!1792076 (= (h!54519 (toList!2985 lm!1707)) lt!1571628))))

(declare-fun b!4359224 () Bool)

(assert (=> b!4359224 (= e!2712884 (contains!11185 (t!356006 (toList!2985 lm!1707)) lt!1571628))))

(assert (= (and d!1289138 res!1792077) b!4359223))

(assert (= (and b!4359223 (not res!1792076)) b!4359224))

(declare-fun m!4975723 () Bool)

(assert (=> d!1289138 m!4975723))

(declare-fun m!4975725 () Bool)

(assert (=> d!1289138 m!4975725))

(declare-fun m!4975727 () Bool)

(assert (=> b!4359224 m!4975727))

(assert (=> b!4359084 d!1289138))

(declare-fun d!1289140 () Bool)

(declare-fun res!1792082 () Bool)

(declare-fun e!2712890 () Bool)

(assert (=> d!1289140 (=> res!1792082 e!2712890)))

(assert (=> d!1289140 (= res!1792082 (not ((_ is Cons!48961) newBucket!200)))))

(assert (=> d!1289140 (= (noDuplicateKeys!501 newBucket!200) e!2712890)))

(declare-fun b!4359229 () Bool)

(declare-fun e!2712891 () Bool)

(assert (=> b!4359229 (= e!2712890 e!2712891)))

(declare-fun res!1792083 () Bool)

(assert (=> b!4359229 (=> (not res!1792083) (not e!2712891))))

(assert (=> b!4359229 (= res!1792083 (not (containsKey!714 (t!356005 newBucket!200) (_1!27481 (h!54518 newBucket!200)))))))

(declare-fun b!4359230 () Bool)

(assert (=> b!4359230 (= e!2712891 (noDuplicateKeys!501 (t!356005 newBucket!200)))))

(assert (= (and d!1289140 (not res!1792082)) b!4359229))

(assert (= (and b!4359229 res!1792083) b!4359230))

(declare-fun m!4975729 () Bool)

(assert (=> b!4359229 m!4975729))

(declare-fun m!4975731 () Bool)

(assert (=> b!4359230 m!4975731))

(assert (=> b!4359080 d!1289140))

(assert (=> b!4359070 d!1289086))

(assert (=> start!422132 d!1289108))

(declare-fun d!1289142 () Bool)

(assert (=> d!1289142 (= (inv!64506 lm!1707) (isStrictlySorted!110 (toList!2985 lm!1707)))))

(declare-fun bs!633143 () Bool)

(assert (= bs!633143 d!1289142))

(assert (=> bs!633143 m!4975721))

(assert (=> start!422132 d!1289142))

(declare-fun d!1289144 () Bool)

(declare-fun isEmpty!28211 (List!49086) Bool)

(assert (=> d!1289144 (= (isEmpty!28209 lm!1707) (isEmpty!28211 (toList!2985 lm!1707)))))

(declare-fun bs!633144 () Bool)

(assert (= bs!633144 d!1289144))

(declare-fun m!4975733 () Bool)

(assert (=> bs!633144 m!4975733))

(assert (=> b!4359081 d!1289144))

(declare-fun b!4359308 () Bool)

(assert (=> b!4359308 true))

(declare-fun bs!633191 () Bool)

(declare-fun b!4359307 () Bool)

(assert (= bs!633191 (and b!4359307 b!4359308)))

(declare-fun lambda!141156 () Int)

(declare-fun lambda!141155 () Int)

(assert (=> bs!633191 (= lambda!141156 lambda!141155)))

(assert (=> b!4359307 true))

(declare-fun lambda!141157 () Int)

(declare-fun lt!1571922 () ListMap!2229)

(assert (=> bs!633191 (= (= lt!1571922 lt!1571643) (= lambda!141157 lambda!141155))))

(assert (=> b!4359307 (= (= lt!1571922 lt!1571643) (= lambda!141157 lambda!141156))))

(assert (=> b!4359307 true))

(declare-fun bs!633192 () Bool)

(declare-fun d!1289146 () Bool)

(assert (= bs!633192 (and d!1289146 b!4359308)))

(declare-fun lambda!141158 () Int)

(declare-fun lt!1571927 () ListMap!2229)

(assert (=> bs!633192 (= (= lt!1571927 lt!1571643) (= lambda!141158 lambda!141155))))

(declare-fun bs!633193 () Bool)

(assert (= bs!633193 (and d!1289146 b!4359307)))

(assert (=> bs!633193 (= (= lt!1571927 lt!1571643) (= lambda!141158 lambda!141156))))

(assert (=> bs!633193 (= (= lt!1571927 lt!1571922) (= lambda!141158 lambda!141157))))

(assert (=> d!1289146 true))

(declare-fun b!4359305 () Bool)

(declare-fun e!2712940 () Bool)

(declare-fun forall!9142 (List!49085 Int) Bool)

(assert (=> b!4359305 (= e!2712940 (forall!9142 (toList!2986 lt!1571643) lambda!141157))))

(declare-fun b!4359306 () Bool)

(declare-fun e!2712941 () Bool)

(declare-fun invariantList!684 (List!49085) Bool)

(assert (=> b!4359306 (= e!2712941 (invariantList!684 (toList!2986 lt!1571927)))))

(assert (=> d!1289146 e!2712941))

(declare-fun res!1792122 () Bool)

(assert (=> d!1289146 (=> (not res!1792122) (not e!2712941))))

(assert (=> d!1289146 (= res!1792122 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141158))))

(declare-fun e!2712942 () ListMap!2229)

(assert (=> d!1289146 (= lt!1571927 e!2712942)))

(declare-fun c!741181 () Bool)

(assert (=> d!1289146 (= c!741181 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289146 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707))))))

(assert (=> d!1289146 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643) lt!1571927)))

(assert (=> b!4359307 (= e!2712942 lt!1571922)))

(declare-fun lt!1571935 () ListMap!2229)

(assert (=> b!4359307 (= lt!1571935 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359307 (= lt!1571922 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1571934 () Unit!72045)

(declare-fun call!302989 () Unit!72045)

(assert (=> b!4359307 (= lt!1571934 call!302989)))

(assert (=> b!4359307 (forall!9142 (toList!2986 lt!1571643) lambda!141156)))

(declare-fun lt!1571926 () Unit!72045)

(assert (=> b!4359307 (= lt!1571926 lt!1571934)))

(assert (=> b!4359307 (forall!9142 (toList!2986 lt!1571935) lambda!141157)))

(declare-fun lt!1571923 () Unit!72045)

(declare-fun Unit!72072 () Unit!72045)

(assert (=> b!4359307 (= lt!1571923 Unit!72072)))

(assert (=> b!4359307 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141157)))

(declare-fun lt!1571933 () Unit!72045)

(declare-fun Unit!72073 () Unit!72045)

(assert (=> b!4359307 (= lt!1571933 Unit!72073)))

(declare-fun lt!1571936 () Unit!72045)

(declare-fun Unit!72074 () Unit!72045)

(assert (=> b!4359307 (= lt!1571936 Unit!72074)))

(declare-fun lt!1571930 () Unit!72045)

(declare-fun forallContained!1783 (List!49085 Int tuple2!48374) Unit!72045)

(assert (=> b!4359307 (= lt!1571930 (forallContained!1783 (toList!2986 lt!1571935) lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359307 (contains!11183 lt!1571935 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1571928 () Unit!72045)

(declare-fun Unit!72075 () Unit!72045)

(assert (=> b!4359307 (= lt!1571928 Unit!72075)))

(assert (=> b!4359307 (contains!11183 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1571921 () Unit!72045)

(declare-fun Unit!72076 () Unit!72045)

(assert (=> b!4359307 (= lt!1571921 Unit!72076)))

(declare-fun call!302988 () Bool)

(assert (=> b!4359307 call!302988))

(declare-fun lt!1571920 () Unit!72045)

(declare-fun Unit!72077 () Unit!72045)

(assert (=> b!4359307 (= lt!1571920 Unit!72077)))

(assert (=> b!4359307 (forall!9142 (toList!2986 lt!1571935) lambda!141157)))

(declare-fun lt!1571931 () Unit!72045)

(declare-fun Unit!72078 () Unit!72045)

(assert (=> b!4359307 (= lt!1571931 Unit!72078)))

(declare-fun lt!1571916 () Unit!72045)

(declare-fun Unit!72079 () Unit!72045)

(assert (=> b!4359307 (= lt!1571916 Unit!72079)))

(declare-fun lt!1571918 () Unit!72045)

(declare-fun addForallContainsKeyThenBeforeAdding!67 (ListMap!2229 ListMap!2229 K!10320 V!10566) Unit!72045)

(assert (=> b!4359307 (= lt!1571918 (addForallContainsKeyThenBeforeAdding!67 lt!1571643 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!302987 () Bool)

(assert (=> b!4359307 call!302987))

(declare-fun lt!1571919 () Unit!72045)

(assert (=> b!4359307 (= lt!1571919 lt!1571918)))

(assert (=> b!4359307 (forall!9142 (toList!2986 lt!1571643) lambda!141157)))

(declare-fun lt!1571917 () Unit!72045)

(declare-fun Unit!72080 () Unit!72045)

(assert (=> b!4359307 (= lt!1571917 Unit!72080)))

(declare-fun res!1792124 () Bool)

(assert (=> b!4359307 (= res!1792124 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141157))))

(assert (=> b!4359307 (=> (not res!1792124) (not e!2712940))))

(assert (=> b!4359307 e!2712940))

(declare-fun lt!1571925 () Unit!72045)

(declare-fun Unit!72081 () Unit!72045)

(assert (=> b!4359307 (= lt!1571925 Unit!72081)))

(assert (=> b!4359308 (= e!2712942 lt!1571643)))

(declare-fun lt!1571929 () Unit!72045)

(assert (=> b!4359308 (= lt!1571929 call!302989)))

(assert (=> b!4359308 call!302987))

(declare-fun lt!1571924 () Unit!72045)

(assert (=> b!4359308 (= lt!1571924 lt!1571929)))

(assert (=> b!4359308 call!302988))

(declare-fun lt!1571932 () Unit!72045)

(declare-fun Unit!72082 () Unit!72045)

(assert (=> b!4359308 (= lt!1571932 Unit!72082)))

(declare-fun bm!302982 () Bool)

(assert (=> bm!302982 (= call!302987 (forall!9142 (toList!2986 lt!1571643) (ite c!741181 lambda!141155 lambda!141157)))))

(declare-fun bm!302983 () Bool)

(assert (=> bm!302983 (= call!302988 (forall!9142 (ite c!741181 (toList!2986 lt!1571643) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741181 lambda!141155 lambda!141157)))))

(declare-fun b!4359309 () Bool)

(declare-fun res!1792123 () Bool)

(assert (=> b!4359309 (=> (not res!1792123) (not e!2712941))))

(assert (=> b!4359309 (= res!1792123 (forall!9142 (toList!2986 lt!1571643) lambda!141158))))

(declare-fun bm!302984 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!67 (ListMap!2229) Unit!72045)

(assert (=> bm!302984 (= call!302989 (lemmaContainsAllItsOwnKeys!67 lt!1571643))))

(assert (= (and d!1289146 c!741181) b!4359308))

(assert (= (and d!1289146 (not c!741181)) b!4359307))

(assert (= (and b!4359307 res!1792124) b!4359305))

(assert (= (or b!4359308 b!4359307) bm!302984))

(assert (= (or b!4359308 b!4359307) bm!302983))

(assert (= (or b!4359308 b!4359307) bm!302982))

(assert (= (and d!1289146 res!1792122) b!4359309))

(assert (= (and b!4359309 res!1792123) b!4359306))

(declare-fun m!4975923 () Bool)

(assert (=> b!4359305 m!4975923))

(declare-fun m!4975925 () Bool)

(assert (=> bm!302982 m!4975925))

(declare-fun m!4975927 () Bool)

(assert (=> d!1289146 m!4975927))

(declare-fun m!4975929 () Bool)

(assert (=> d!1289146 m!4975929))

(declare-fun m!4975931 () Bool)

(assert (=> b!4359307 m!4975931))

(assert (=> b!4359307 m!4975923))

(declare-fun m!4975933 () Bool)

(assert (=> b!4359307 m!4975933))

(assert (=> b!4359307 m!4975931))

(declare-fun m!4975935 () Bool)

(assert (=> b!4359307 m!4975935))

(declare-fun m!4975937 () Bool)

(assert (=> b!4359307 m!4975937))

(declare-fun m!4975939 () Bool)

(assert (=> b!4359307 m!4975939))

(declare-fun m!4975941 () Bool)

(assert (=> b!4359307 m!4975941))

(declare-fun m!4975943 () Bool)

(assert (=> b!4359307 m!4975943))

(assert (=> b!4359307 m!4975943))

(declare-fun m!4975945 () Bool)

(assert (=> b!4359307 m!4975945))

(declare-fun m!4975947 () Bool)

(assert (=> b!4359307 m!4975947))

(declare-fun m!4975949 () Bool)

(assert (=> b!4359307 m!4975949))

(declare-fun m!4975951 () Bool)

(assert (=> b!4359309 m!4975951))

(declare-fun m!4975953 () Bool)

(assert (=> bm!302984 m!4975953))

(declare-fun m!4975955 () Bool)

(assert (=> b!4359306 m!4975955))

(declare-fun m!4975957 () Bool)

(assert (=> bm!302983 m!4975957))

(assert (=> b!4359077 d!1289146))

(declare-fun d!1289184 () Bool)

(assert (=> d!1289184 (= (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))) (get!15907 (getValueByKey!466 (toList!2985 lm!1707) (_1!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun bs!633194 () Bool)

(assert (= bs!633194 d!1289184))

(declare-fun m!4975959 () Bool)

(assert (=> bs!633194 m!4975959))

(assert (=> bs!633194 m!4975959))

(declare-fun m!4975961 () Bool)

(assert (=> bs!633194 m!4975961))

(assert (=> b!4359077 d!1289184))

(declare-fun d!1289186 () Bool)

(declare-fun res!1792127 () Bool)

(declare-fun e!2712949 () Bool)

(assert (=> d!1289186 (=> res!1792127 e!2712949)))

(assert (=> d!1289186 (= res!1792127 (and ((_ is Cons!48961) (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707))))) (= (_1!27481 (h!54518 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))))) key!3918)))))

(assert (=> d!1289186 (= (containsKey!714 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))) key!3918) e!2712949)))

(declare-fun b!4359322 () Bool)

(declare-fun e!2712950 () Bool)

(assert (=> b!4359322 (= e!2712949 e!2712950)))

(declare-fun res!1792128 () Bool)

(assert (=> b!4359322 (=> (not res!1792128) (not e!2712950))))

(assert (=> b!4359322 (= res!1792128 ((_ is Cons!48961) (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4359323 () Bool)

(assert (=> b!4359323 (= e!2712950 (containsKey!714 (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707))))) key!3918))))

(assert (= (and d!1289186 (not res!1792127)) b!4359322))

(assert (= (and b!4359322 res!1792128) b!4359323))

(declare-fun m!4975963 () Bool)

(assert (=> b!4359323 m!4975963))

(assert (=> b!4359077 d!1289186))

(declare-fun bs!633199 () Bool)

(declare-fun d!1289188 () Bool)

(assert (= bs!633199 (and d!1289188 start!422132)))

(declare-fun lambda!141161 () Int)

(assert (=> bs!633199 (= lambda!141161 lambda!141069)))

(declare-fun bs!633200 () Bool)

(assert (= bs!633200 (and d!1289188 d!1289120)))

(assert (=> bs!633200 (not (= lambda!141161 lambda!141083))))

(declare-fun lt!1571952 () ListMap!2229)

(assert (=> d!1289188 (invariantList!684 (toList!2986 lt!1571952))))

(declare-fun e!2712963 () ListMap!2229)

(assert (=> d!1289188 (= lt!1571952 e!2712963)))

(declare-fun c!741189 () Bool)

(assert (=> d!1289188 (= c!741189 ((_ is Cons!48962) (toList!2985 lt!1571646)))))

(assert (=> d!1289188 (forall!9140 (toList!2985 lt!1571646) lambda!141161)))

(assert (=> d!1289188 (= (extractMap!560 (toList!2985 lt!1571646)) lt!1571952)))

(declare-fun b!4359343 () Bool)

(assert (=> b!4359343 (= e!2712963 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))))))

(declare-fun b!4359344 () Bool)

(assert (=> b!4359344 (= e!2712963 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289188 c!741189) b!4359343))

(assert (= (and d!1289188 (not c!741189)) b!4359344))

(declare-fun m!4975977 () Bool)

(assert (=> d!1289188 m!4975977))

(declare-fun m!4975979 () Bool)

(assert (=> d!1289188 m!4975979))

(declare-fun m!4975981 () Bool)

(assert (=> b!4359343 m!4975981))

(assert (=> b!4359343 m!4975981))

(declare-fun m!4975983 () Bool)

(assert (=> b!4359343 m!4975983))

(assert (=> b!4359077 d!1289188))

(declare-fun bs!633201 () Bool)

(declare-fun d!1289198 () Bool)

(assert (= bs!633201 (and d!1289198 start!422132)))

(declare-fun lambda!141162 () Int)

(assert (=> bs!633201 (= lambda!141162 lambda!141069)))

(declare-fun bs!633202 () Bool)

(assert (= bs!633202 (and d!1289198 d!1289120)))

(assert (=> bs!633202 (not (= lambda!141162 lambda!141083))))

(declare-fun bs!633203 () Bool)

(assert (= bs!633203 (and d!1289198 d!1289188)))

(assert (=> bs!633203 (= lambda!141162 lambda!141161)))

(declare-fun lt!1571953 () ListMap!2229)

(assert (=> d!1289198 (invariantList!684 (toList!2986 lt!1571953))))

(declare-fun e!2712964 () ListMap!2229)

(assert (=> d!1289198 (= lt!1571953 e!2712964)))

(declare-fun c!741190 () Bool)

(assert (=> d!1289198 (= c!741190 ((_ is Cons!48962) (toList!2985 (+!659 lt!1571646 lt!1571639))))))

(assert (=> d!1289198 (forall!9140 (toList!2985 (+!659 lt!1571646 lt!1571639)) lambda!141162)))

(assert (=> d!1289198 (= (extractMap!560 (toList!2985 (+!659 lt!1571646 lt!1571639))) lt!1571953)))

(declare-fun b!4359345 () Bool)

(assert (=> b!4359345 (= e!2712964 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))

(declare-fun b!4359346 () Bool)

(assert (=> b!4359346 (= e!2712964 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289198 c!741190) b!4359345))

(assert (= (and d!1289198 (not c!741190)) b!4359346))

(declare-fun m!4975985 () Bool)

(assert (=> d!1289198 m!4975985))

(declare-fun m!4975987 () Bool)

(assert (=> d!1289198 m!4975987))

(declare-fun m!4975989 () Bool)

(assert (=> b!4359345 m!4975989))

(assert (=> b!4359345 m!4975989))

(declare-fun m!4975991 () Bool)

(assert (=> b!4359345 m!4975991))

(assert (=> b!4359077 d!1289198))

(declare-fun d!1289200 () Bool)

(declare-fun e!2712967 () Bool)

(assert (=> d!1289200 e!2712967))

(declare-fun res!1792136 () Bool)

(assert (=> d!1289200 (=> (not res!1792136) (not e!2712967))))

(declare-fun lt!1571962 () ListMap!2229)

(assert (=> d!1289200 (= res!1792136 (contains!11183 lt!1571962 (_1!27481 lt!1571638)))))

(declare-fun lt!1571963 () List!49085)

(assert (=> d!1289200 (= lt!1571962 (ListMap!2230 lt!1571963))))

(declare-fun lt!1571965 () Unit!72045)

(declare-fun lt!1571964 () Unit!72045)

(assert (=> d!1289200 (= lt!1571965 lt!1571964)))

(declare-datatypes ((Option!10481 0))(
  ( (None!10480) (Some!10480 (v!43374 V!10566)) )
))
(declare-fun getValueByKey!467 (List!49085 K!10320) Option!10481)

(assert (=> d!1289200 (= (getValueByKey!467 lt!1571963 (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638)))))

(declare-fun lemmaContainsTupThenGetReturnValue!241 (List!49085 K!10320 V!10566) Unit!72045)

(assert (=> d!1289200 (= lt!1571964 (lemmaContainsTupThenGetReturnValue!241 lt!1571963 (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun insertNoDuplicatedKeys!108 (List!49085 K!10320 V!10566) List!49085)

(assert (=> d!1289200 (= lt!1571963 (insertNoDuplicatedKeys!108 (toList!2986 lt!1571630) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(assert (=> d!1289200 (= (+!660 lt!1571630 lt!1571638) lt!1571962)))

(declare-fun b!4359351 () Bool)

(declare-fun res!1792137 () Bool)

(assert (=> b!4359351 (=> (not res!1792137) (not e!2712967))))

(assert (=> b!4359351 (= res!1792137 (= (getValueByKey!467 (toList!2986 lt!1571962) (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638))))))

(declare-fun b!4359352 () Bool)

(declare-fun contains!11188 (List!49085 tuple2!48374) Bool)

(assert (=> b!4359352 (= e!2712967 (contains!11188 (toList!2986 lt!1571962) lt!1571638))))

(assert (= (and d!1289200 res!1792136) b!4359351))

(assert (= (and b!4359351 res!1792137) b!4359352))

(declare-fun m!4975993 () Bool)

(assert (=> d!1289200 m!4975993))

(declare-fun m!4975995 () Bool)

(assert (=> d!1289200 m!4975995))

(declare-fun m!4975997 () Bool)

(assert (=> d!1289200 m!4975997))

(declare-fun m!4975999 () Bool)

(assert (=> d!1289200 m!4975999))

(declare-fun m!4976001 () Bool)

(assert (=> b!4359351 m!4976001))

(declare-fun m!4976003 () Bool)

(assert (=> b!4359352 m!4976003))

(assert (=> b!4359077 d!1289200))

(declare-fun b!4359371 () Bool)

(declare-fun e!2712985 () Bool)

(declare-datatypes ((List!49088 0))(
  ( (Nil!48964) (Cons!48964 (h!54523 K!10320) (t!356008 List!49088)) )
))
(declare-fun contains!11189 (List!49088 K!10320) Bool)

(declare-fun keys!16546 (ListMap!2229) List!49088)

(assert (=> b!4359371 (= e!2712985 (not (contains!11189 (keys!16546 lt!1571642) key!3918)))))

(declare-fun b!4359372 () Bool)

(assert (=> b!4359372 false))

(declare-fun lt!1571984 () Unit!72045)

(declare-fun lt!1571983 () Unit!72045)

(assert (=> b!4359372 (= lt!1571984 lt!1571983)))

(declare-fun containsKey!717 (List!49085 K!10320) Bool)

(assert (=> b!4359372 (containsKey!717 (toList!2986 lt!1571642) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!130 (List!49085 K!10320) Unit!72045)

(assert (=> b!4359372 (= lt!1571983 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571642) key!3918))))

(declare-fun e!2712981 () Unit!72045)

(declare-fun Unit!72087 () Unit!72045)

(assert (=> b!4359372 (= e!2712981 Unit!72087)))

(declare-fun b!4359373 () Bool)

(declare-fun e!2712982 () List!49088)

(assert (=> b!4359373 (= e!2712982 (keys!16546 lt!1571642))))

(declare-fun b!4359374 () Bool)

(declare-fun e!2712980 () Bool)

(assert (=> b!4359374 (= e!2712980 (contains!11189 (keys!16546 lt!1571642) key!3918))))

(declare-fun b!4359375 () Bool)

(declare-fun e!2712984 () Unit!72045)

(declare-fun lt!1571985 () Unit!72045)

(assert (=> b!4359375 (= e!2712984 lt!1571985)))

(declare-fun lt!1571987 () Unit!72045)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!377 (List!49085 K!10320) Unit!72045)

(assert (=> b!4359375 (= lt!1571987 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571642) key!3918))))

(declare-fun isDefined!7774 (Option!10481) Bool)

(assert (=> b!4359375 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571642) key!3918))))

(declare-fun lt!1571986 () Unit!72045)

(assert (=> b!4359375 (= lt!1571986 lt!1571987)))

(declare-fun lemmaInListThenGetKeysListContains!129 (List!49085 K!10320) Unit!72045)

(assert (=> b!4359375 (= lt!1571985 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571642) key!3918))))

(declare-fun call!302992 () Bool)

(assert (=> b!4359375 call!302992))

(declare-fun b!4359376 () Bool)

(declare-fun Unit!72088 () Unit!72045)

(assert (=> b!4359376 (= e!2712981 Unit!72088)))

(declare-fun b!4359377 () Bool)

(declare-fun getKeysList!132 (List!49085) List!49088)

(assert (=> b!4359377 (= e!2712982 (getKeysList!132 (toList!2986 lt!1571642)))))

(declare-fun d!1289202 () Bool)

(declare-fun e!2712983 () Bool)

(assert (=> d!1289202 e!2712983))

(declare-fun res!1792146 () Bool)

(assert (=> d!1289202 (=> res!1792146 e!2712983)))

(assert (=> d!1289202 (= res!1792146 e!2712985)))

(declare-fun res!1792144 () Bool)

(assert (=> d!1289202 (=> (not res!1792144) (not e!2712985))))

(declare-fun lt!1571982 () Bool)

(assert (=> d!1289202 (= res!1792144 (not lt!1571982))))

(declare-fun lt!1571989 () Bool)

(assert (=> d!1289202 (= lt!1571982 lt!1571989)))

(declare-fun lt!1571988 () Unit!72045)

(assert (=> d!1289202 (= lt!1571988 e!2712984)))

(declare-fun c!741197 () Bool)

(assert (=> d!1289202 (= c!741197 lt!1571989)))

(assert (=> d!1289202 (= lt!1571989 (containsKey!717 (toList!2986 lt!1571642) key!3918))))

(assert (=> d!1289202 (= (contains!11183 lt!1571642 key!3918) lt!1571982)))

(declare-fun bm!302987 () Bool)

(assert (=> bm!302987 (= call!302992 (contains!11189 e!2712982 key!3918))))

(declare-fun c!741198 () Bool)

(assert (=> bm!302987 (= c!741198 c!741197)))

(declare-fun b!4359378 () Bool)

(assert (=> b!4359378 (= e!2712984 e!2712981)))

(declare-fun c!741199 () Bool)

(assert (=> b!4359378 (= c!741199 call!302992)))

(declare-fun b!4359379 () Bool)

(assert (=> b!4359379 (= e!2712983 e!2712980)))

(declare-fun res!1792145 () Bool)

(assert (=> b!4359379 (=> (not res!1792145) (not e!2712980))))

(assert (=> b!4359379 (= res!1792145 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571642) key!3918)))))

(assert (= (and d!1289202 c!741197) b!4359375))

(assert (= (and d!1289202 (not c!741197)) b!4359378))

(assert (= (and b!4359378 c!741199) b!4359372))

(assert (= (and b!4359378 (not c!741199)) b!4359376))

(assert (= (or b!4359375 b!4359378) bm!302987))

(assert (= (and bm!302987 c!741198) b!4359377))

(assert (= (and bm!302987 (not c!741198)) b!4359373))

(assert (= (and d!1289202 res!1792144) b!4359371))

(assert (= (and d!1289202 (not res!1792146)) b!4359379))

(assert (= (and b!4359379 res!1792145) b!4359374))

(declare-fun m!4976005 () Bool)

(assert (=> b!4359377 m!4976005))

(declare-fun m!4976007 () Bool)

(assert (=> b!4359372 m!4976007))

(declare-fun m!4976009 () Bool)

(assert (=> b!4359372 m!4976009))

(declare-fun m!4976011 () Bool)

(assert (=> b!4359373 m!4976011))

(assert (=> b!4359374 m!4976011))

(assert (=> b!4359374 m!4976011))

(declare-fun m!4976013 () Bool)

(assert (=> b!4359374 m!4976013))

(assert (=> d!1289202 m!4976007))

(assert (=> b!4359371 m!4976011))

(assert (=> b!4359371 m!4976011))

(assert (=> b!4359371 m!4976013))

(declare-fun m!4976015 () Bool)

(assert (=> b!4359375 m!4976015))

(declare-fun m!4976017 () Bool)

(assert (=> b!4359375 m!4976017))

(assert (=> b!4359375 m!4976017))

(declare-fun m!4976019 () Bool)

(assert (=> b!4359375 m!4976019))

(declare-fun m!4976021 () Bool)

(assert (=> b!4359375 m!4976021))

(declare-fun m!4976023 () Bool)

(assert (=> bm!302987 m!4976023))

(assert (=> b!4359379 m!4976017))

(assert (=> b!4359379 m!4976017))

(assert (=> b!4359379 m!4976019))

(assert (=> b!4359077 d!1289202))

(declare-fun d!1289204 () Bool)

(assert (=> d!1289204 (eq!271 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (+!660 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) (tuple2!48375 key!3918 newValue!99)))))

(declare-fun lt!1571992 () Unit!72045)

(declare-fun choose!26974 (ListMap!2229 K!10320 V!10566 List!49085) Unit!72045)

(assert (=> d!1289204 (= lt!1571992 (choose!26974 lt!1571642 key!3918 newValue!99 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289204 (not (containsKey!714 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918))))

(assert (=> d!1289204 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!80 lt!1571642 key!3918 newValue!99 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lt!1571992)))

(declare-fun bs!633204 () Bool)

(assert (= bs!633204 d!1289204))

(assert (=> bs!633204 m!4975529))

(assert (=> bs!633204 m!4975469))

(declare-fun m!4976025 () Bool)

(assert (=> bs!633204 m!4976025))

(declare-fun m!4976027 () Bool)

(assert (=> bs!633204 m!4976027))

(assert (=> bs!633204 m!4975529))

(declare-fun m!4976029 () Bool)

(assert (=> bs!633204 m!4976029))

(declare-fun m!4976031 () Bool)

(assert (=> bs!633204 m!4976031))

(assert (=> bs!633204 m!4976029))

(declare-fun m!4976033 () Bool)

(assert (=> bs!633204 m!4976033))

(assert (=> bs!633204 m!4976025))

(assert (=> bs!633204 m!4976031))

(assert (=> b!4359077 d!1289204))

(declare-fun d!1289206 () Bool)

(declare-fun tail!7016 (List!49086) List!49086)

(assert (=> d!1289206 (= (tail!7014 lm!1707) (ListLongMap!1636 (tail!7016 (toList!2985 lm!1707))))))

(declare-fun bs!633205 () Bool)

(assert (= bs!633205 d!1289206))

(declare-fun m!4976035 () Bool)

(assert (=> bs!633205 m!4976035))

(assert (=> b!4359077 d!1289206))

(declare-fun d!1289208 () Bool)

(assert (=> d!1289208 (contains!11183 lt!1571629 key!3918)))

(declare-fun lt!1571995 () Unit!72045)

(declare-fun choose!26976 (List!49085 K!10320 V!10566 ListMap!2229) Unit!72045)

(assert (=> d!1289208 (= lt!1571995 (choose!26976 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918 newValue!99 lt!1571629))))

(assert (=> d!1289208 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707))))))

(assert (=> d!1289208 (= (lemmaAddToMapContainsAndNotInListThenInAcc!44 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918 newValue!99 lt!1571629) lt!1571995)))

(declare-fun bs!633206 () Bool)

(assert (= bs!633206 d!1289208))

(assert (=> bs!633206 m!4975499))

(declare-fun m!4976037 () Bool)

(assert (=> bs!633206 m!4976037))

(assert (=> bs!633206 m!4975929))

(assert (=> b!4359077 d!1289208))

(declare-fun bs!633207 () Bool)

(declare-fun d!1289210 () Bool)

(assert (= bs!633207 (and d!1289210 start!422132)))

(declare-fun lambda!141163 () Int)

(assert (=> bs!633207 (= lambda!141163 lambda!141069)))

(declare-fun bs!633208 () Bool)

(assert (= bs!633208 (and d!1289210 d!1289120)))

(assert (=> bs!633208 (not (= lambda!141163 lambda!141083))))

(declare-fun bs!633209 () Bool)

(assert (= bs!633209 (and d!1289210 d!1289188)))

(assert (=> bs!633209 (= lambda!141163 lambda!141161)))

(declare-fun bs!633210 () Bool)

(assert (= bs!633210 (and d!1289210 d!1289198)))

(assert (=> bs!633210 (= lambda!141163 lambda!141162)))

(declare-fun lt!1571996 () ListMap!2229)

(assert (=> d!1289210 (invariantList!684 (toList!2986 lt!1571996))))

(declare-fun e!2712986 () ListMap!2229)

(assert (=> d!1289210 (= lt!1571996 e!2712986)))

(declare-fun c!741200 () Bool)

(assert (=> d!1289210 (= c!741200 ((_ is Cons!48962) (t!356006 (toList!2985 lm!1707))))))

(assert (=> d!1289210 (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141163)))

(assert (=> d!1289210 (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571996)))

(declare-fun b!4359380 () Bool)

(assert (=> b!4359380 (= e!2712986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))))))

(declare-fun b!4359381 () Bool)

(assert (=> b!4359381 (= e!2712986 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289210 c!741200) b!4359380))

(assert (= (and d!1289210 (not c!741200)) b!4359381))

(declare-fun m!4976039 () Bool)

(assert (=> d!1289210 m!4976039))

(declare-fun m!4976041 () Bool)

(assert (=> d!1289210 m!4976041))

(declare-fun m!4976043 () Bool)

(assert (=> b!4359380 m!4976043))

(assert (=> b!4359380 m!4976043))

(declare-fun m!4976045 () Bool)

(assert (=> b!4359380 m!4976045))

(assert (=> b!4359077 d!1289210))

(declare-fun d!1289212 () Bool)

(declare-fun e!2712987 () Bool)

(assert (=> d!1289212 e!2712987))

(declare-fun res!1792148 () Bool)

(assert (=> d!1289212 (=> (not res!1792148) (not e!2712987))))

(declare-fun lt!1571998 () ListLongMap!1635)

(assert (=> d!1289212 (= res!1792148 (contains!11184 lt!1571998 (_1!27482 lt!1571639)))))

(declare-fun lt!1572000 () List!49086)

(assert (=> d!1289212 (= lt!1571998 (ListLongMap!1636 lt!1572000))))

(declare-fun lt!1571999 () Unit!72045)

(declare-fun lt!1571997 () Unit!72045)

(assert (=> d!1289212 (= lt!1571999 lt!1571997)))

(assert (=> d!1289212 (= (getValueByKey!466 lt!1572000 (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639)))))

(assert (=> d!1289212 (= lt!1571997 (lemmaContainsTupThenGetReturnValue!240 lt!1572000 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(assert (=> d!1289212 (= lt!1572000 (insertStrictlySorted!141 (toList!2985 lt!1571646) (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(assert (=> d!1289212 (= (+!659 lt!1571646 lt!1571639) lt!1571998)))

(declare-fun b!4359382 () Bool)

(declare-fun res!1792147 () Bool)

(assert (=> b!4359382 (=> (not res!1792147) (not e!2712987))))

(assert (=> b!4359382 (= res!1792147 (= (getValueByKey!466 (toList!2985 lt!1571998) (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639))))))

(declare-fun b!4359383 () Bool)

(assert (=> b!4359383 (= e!2712987 (contains!11185 (toList!2985 lt!1571998) lt!1571639))))

(assert (= (and d!1289212 res!1792148) b!4359382))

(assert (= (and b!4359382 res!1792147) b!4359383))

(declare-fun m!4976047 () Bool)

(assert (=> d!1289212 m!4976047))

(declare-fun m!4976049 () Bool)

(assert (=> d!1289212 m!4976049))

(declare-fun m!4976051 () Bool)

(assert (=> d!1289212 m!4976051))

(declare-fun m!4976053 () Bool)

(assert (=> d!1289212 m!4976053))

(declare-fun m!4976055 () Bool)

(assert (=> b!4359382 m!4976055))

(declare-fun m!4976057 () Bool)

(assert (=> b!4359383 m!4976057))

(assert (=> b!4359077 d!1289212))

(declare-fun d!1289214 () Bool)

(declare-fun content!7735 (List!49085) (InoxSet tuple2!48374))

(assert (=> d!1289214 (= (eq!271 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643) (+!660 lt!1571630 lt!1571638)) (= (content!7735 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643))) (content!7735 (toList!2986 (+!660 lt!1571630 lt!1571638)))))))

(declare-fun bs!633211 () Bool)

(assert (= bs!633211 d!1289214))

(declare-fun m!4976059 () Bool)

(assert (=> bs!633211 m!4976059))

(declare-fun m!4976061 () Bool)

(assert (=> bs!633211 m!4976061))

(assert (=> b!4359077 d!1289214))

(declare-fun d!1289216 () Bool)

(assert (=> d!1289216 (= (eq!271 lt!1571641 lt!1571643) (= (content!7735 (toList!2986 lt!1571641)) (content!7735 (toList!2986 lt!1571643))))))

(declare-fun bs!633212 () Bool)

(assert (= bs!633212 d!1289216))

(declare-fun m!4976063 () Bool)

(assert (=> bs!633212 m!4976063))

(declare-fun m!4976065 () Bool)

(assert (=> bs!633212 m!4976065))

(assert (=> b!4359077 d!1289216))

(declare-fun bs!633213 () Bool)

(declare-fun d!1289218 () Bool)

(assert (= bs!633213 (and d!1289218 d!1289210)))

(declare-fun lambda!141166 () Int)

(assert (=> bs!633213 (= lambda!141166 lambda!141163)))

(declare-fun bs!633214 () Bool)

(assert (= bs!633214 (and d!1289218 d!1289188)))

(assert (=> bs!633214 (= lambda!141166 lambda!141161)))

(declare-fun bs!633215 () Bool)

(assert (= bs!633215 (and d!1289218 d!1289120)))

(assert (=> bs!633215 (not (= lambda!141166 lambda!141083))))

(declare-fun bs!633216 () Bool)

(assert (= bs!633216 (and d!1289218 start!422132)))

(assert (=> bs!633216 (= lambda!141166 lambda!141069)))

(declare-fun bs!633217 () Bool)

(assert (= bs!633217 (and d!1289218 d!1289198)))

(assert (=> bs!633217 (= lambda!141166 lambda!141162)))

(assert (=> d!1289218 (eq!271 (extractMap!560 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))) (+!660 (extractMap!560 (toList!2985 lt!1571646)) (tuple2!48375 key!3918 newValue!99)))))

(declare-fun lt!1572003 () Unit!72045)

(declare-fun choose!26978 (ListLongMap!1635 (_ BitVec 64) List!49085 K!10320 V!10566 Hashable!4893) Unit!72045)

(assert (=> d!1289218 (= lt!1572003 (choose!26978 lt!1571646 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1289218 (forall!9140 (toList!2985 lt!1571646) lambda!141166)))

(assert (=> d!1289218 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!105 lt!1571646 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1572003)))

(declare-fun bs!633218 () Bool)

(assert (= bs!633218 d!1289218))

(declare-fun m!4976067 () Bool)

(assert (=> bs!633218 m!4976067))

(declare-fun m!4976069 () Bool)

(assert (=> bs!633218 m!4976069))

(declare-fun m!4976071 () Bool)

(assert (=> bs!633218 m!4976071))

(declare-fun m!4976073 () Bool)

(assert (=> bs!633218 m!4976073))

(assert (=> bs!633218 m!4975515))

(assert (=> bs!633218 m!4976071))

(declare-fun m!4976075 () Bool)

(assert (=> bs!633218 m!4976075))

(declare-fun m!4976077 () Bool)

(assert (=> bs!633218 m!4976077))

(assert (=> bs!633218 m!4976069))

(assert (=> bs!633218 m!4975515))

(assert (=> b!4359077 d!1289218))

(declare-fun b!4359384 () Bool)

(declare-fun e!2712993 () Bool)

(assert (=> b!4359384 (= e!2712993 (not (contains!11189 (keys!16546 lt!1571629) key!3918)))))

(declare-fun b!4359385 () Bool)

(assert (=> b!4359385 false))

(declare-fun lt!1572006 () Unit!72045)

(declare-fun lt!1572005 () Unit!72045)

(assert (=> b!4359385 (= lt!1572006 lt!1572005)))

(assert (=> b!4359385 (containsKey!717 (toList!2986 lt!1571629) key!3918)))

(assert (=> b!4359385 (= lt!1572005 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571629) key!3918))))

(declare-fun e!2712989 () Unit!72045)

(declare-fun Unit!72090 () Unit!72045)

(assert (=> b!4359385 (= e!2712989 Unit!72090)))

(declare-fun b!4359386 () Bool)

(declare-fun e!2712990 () List!49088)

(assert (=> b!4359386 (= e!2712990 (keys!16546 lt!1571629))))

(declare-fun b!4359387 () Bool)

(declare-fun e!2712988 () Bool)

(assert (=> b!4359387 (= e!2712988 (contains!11189 (keys!16546 lt!1571629) key!3918))))

(declare-fun b!4359388 () Bool)

(declare-fun e!2712992 () Unit!72045)

(declare-fun lt!1572007 () Unit!72045)

(assert (=> b!4359388 (= e!2712992 lt!1572007)))

(declare-fun lt!1572009 () Unit!72045)

(assert (=> b!4359388 (= lt!1572009 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571629) key!3918))))

(assert (=> b!4359388 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571629) key!3918))))

(declare-fun lt!1572008 () Unit!72045)

(assert (=> b!4359388 (= lt!1572008 lt!1572009)))

(assert (=> b!4359388 (= lt!1572007 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571629) key!3918))))

(declare-fun call!302993 () Bool)

(assert (=> b!4359388 call!302993))

(declare-fun b!4359389 () Bool)

(declare-fun Unit!72091 () Unit!72045)

(assert (=> b!4359389 (= e!2712989 Unit!72091)))

(declare-fun b!4359390 () Bool)

(assert (=> b!4359390 (= e!2712990 (getKeysList!132 (toList!2986 lt!1571629)))))

(declare-fun d!1289220 () Bool)

(declare-fun e!2712991 () Bool)

(assert (=> d!1289220 e!2712991))

(declare-fun res!1792151 () Bool)

(assert (=> d!1289220 (=> res!1792151 e!2712991)))

(assert (=> d!1289220 (= res!1792151 e!2712993)))

(declare-fun res!1792149 () Bool)

(assert (=> d!1289220 (=> (not res!1792149) (not e!2712993))))

(declare-fun lt!1572004 () Bool)

(assert (=> d!1289220 (= res!1792149 (not lt!1572004))))

(declare-fun lt!1572011 () Bool)

(assert (=> d!1289220 (= lt!1572004 lt!1572011)))

(declare-fun lt!1572010 () Unit!72045)

(assert (=> d!1289220 (= lt!1572010 e!2712992)))

(declare-fun c!741201 () Bool)

(assert (=> d!1289220 (= c!741201 lt!1572011)))

(assert (=> d!1289220 (= lt!1572011 (containsKey!717 (toList!2986 lt!1571629) key!3918))))

(assert (=> d!1289220 (= (contains!11183 lt!1571629 key!3918) lt!1572004)))

(declare-fun bm!302988 () Bool)

(assert (=> bm!302988 (= call!302993 (contains!11189 e!2712990 key!3918))))

(declare-fun c!741202 () Bool)

(assert (=> bm!302988 (= c!741202 c!741201)))

(declare-fun b!4359391 () Bool)

(assert (=> b!4359391 (= e!2712992 e!2712989)))

(declare-fun c!741203 () Bool)

(assert (=> b!4359391 (= c!741203 call!302993)))

(declare-fun b!4359392 () Bool)

(assert (=> b!4359392 (= e!2712991 e!2712988)))

(declare-fun res!1792150 () Bool)

(assert (=> b!4359392 (=> (not res!1792150) (not e!2712988))))

(assert (=> b!4359392 (= res!1792150 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571629) key!3918)))))

(assert (= (and d!1289220 c!741201) b!4359388))

(assert (= (and d!1289220 (not c!741201)) b!4359391))

(assert (= (and b!4359391 c!741203) b!4359385))

(assert (= (and b!4359391 (not c!741203)) b!4359389))

(assert (= (or b!4359388 b!4359391) bm!302988))

(assert (= (and bm!302988 c!741202) b!4359390))

(assert (= (and bm!302988 (not c!741202)) b!4359386))

(assert (= (and d!1289220 res!1792149) b!4359384))

(assert (= (and d!1289220 (not res!1792151)) b!4359392))

(assert (= (and b!4359392 res!1792150) b!4359387))

(declare-fun m!4976079 () Bool)

(assert (=> b!4359390 m!4976079))

(declare-fun m!4976081 () Bool)

(assert (=> b!4359385 m!4976081))

(declare-fun m!4976083 () Bool)

(assert (=> b!4359385 m!4976083))

(declare-fun m!4976085 () Bool)

(assert (=> b!4359386 m!4976085))

(assert (=> b!4359387 m!4976085))

(assert (=> b!4359387 m!4976085))

(declare-fun m!4976087 () Bool)

(assert (=> b!4359387 m!4976087))

(assert (=> d!1289220 m!4976081))

(assert (=> b!4359384 m!4976085))

(assert (=> b!4359384 m!4976085))

(assert (=> b!4359384 m!4976087))

(declare-fun m!4976089 () Bool)

(assert (=> b!4359388 m!4976089))

(declare-fun m!4976091 () Bool)

(assert (=> b!4359388 m!4976091))

(assert (=> b!4359388 m!4976091))

(declare-fun m!4976093 () Bool)

(assert (=> b!4359388 m!4976093))

(declare-fun m!4976095 () Bool)

(assert (=> b!4359388 m!4976095))

(declare-fun m!4976097 () Bool)

(assert (=> bm!302988 m!4976097))

(assert (=> b!4359392 m!4976091))

(assert (=> b!4359392 m!4976091))

(assert (=> b!4359392 m!4976093))

(assert (=> b!4359077 d!1289220))

(declare-fun d!1289222 () Bool)

(declare-fun e!2712994 () Bool)

(assert (=> d!1289222 e!2712994))

(declare-fun res!1792152 () Bool)

(assert (=> d!1289222 (=> (not res!1792152) (not e!2712994))))

(declare-fun lt!1572012 () ListMap!2229)

(assert (=> d!1289222 (= res!1792152 (contains!11183 lt!1572012 (_1!27481 lt!1571638)))))

(declare-fun lt!1572013 () List!49085)

(assert (=> d!1289222 (= lt!1572012 (ListMap!2230 lt!1572013))))

(declare-fun lt!1572015 () Unit!72045)

(declare-fun lt!1572014 () Unit!72045)

(assert (=> d!1289222 (= lt!1572015 lt!1572014)))

(assert (=> d!1289222 (= (getValueByKey!467 lt!1572013 (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638)))))

(assert (=> d!1289222 (= lt!1572014 (lemmaContainsTupThenGetReturnValue!241 lt!1572013 (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(assert (=> d!1289222 (= lt!1572013 (insertNoDuplicatedKeys!108 (toList!2986 lt!1571642) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(assert (=> d!1289222 (= (+!660 lt!1571642 lt!1571638) lt!1572012)))

(declare-fun b!4359393 () Bool)

(declare-fun res!1792153 () Bool)

(assert (=> b!4359393 (=> (not res!1792153) (not e!2712994))))

(assert (=> b!4359393 (= res!1792153 (= (getValueByKey!467 (toList!2986 lt!1572012) (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638))))))

(declare-fun b!4359394 () Bool)

(assert (=> b!4359394 (= e!2712994 (contains!11188 (toList!2986 lt!1572012) lt!1571638))))

(assert (= (and d!1289222 res!1792152) b!4359393))

(assert (= (and b!4359393 res!1792153) b!4359394))

(declare-fun m!4976099 () Bool)

(assert (=> d!1289222 m!4976099))

(declare-fun m!4976101 () Bool)

(assert (=> d!1289222 m!4976101))

(declare-fun m!4976103 () Bool)

(assert (=> d!1289222 m!4976103))

(declare-fun m!4976105 () Bool)

(assert (=> d!1289222 m!4976105))

(declare-fun m!4976107 () Bool)

(assert (=> b!4359393 m!4976107))

(declare-fun m!4976109 () Bool)

(assert (=> b!4359394 m!4976109))

(assert (=> b!4359077 d!1289222))

(declare-fun bs!633219 () Bool)

(declare-fun b!4359398 () Bool)

(assert (= bs!633219 (and b!4359398 b!4359308)))

(declare-fun lambda!141167 () Int)

(assert (=> bs!633219 (= (= lt!1571642 lt!1571643) (= lambda!141167 lambda!141155))))

(declare-fun bs!633220 () Bool)

(assert (= bs!633220 (and b!4359398 b!4359307)))

(assert (=> bs!633220 (= (= lt!1571642 lt!1571643) (= lambda!141167 lambda!141156))))

(assert (=> bs!633220 (= (= lt!1571642 lt!1571922) (= lambda!141167 lambda!141157))))

(declare-fun bs!633221 () Bool)

(assert (= bs!633221 (and b!4359398 d!1289146)))

(assert (=> bs!633221 (= (= lt!1571642 lt!1571927) (= lambda!141167 lambda!141158))))

(assert (=> b!4359398 true))

(declare-fun bs!633222 () Bool)

(declare-fun b!4359397 () Bool)

(assert (= bs!633222 (and b!4359397 d!1289146)))

(declare-fun lambda!141168 () Int)

(assert (=> bs!633222 (= (= lt!1571642 lt!1571927) (= lambda!141168 lambda!141158))))

(declare-fun bs!633223 () Bool)

(assert (= bs!633223 (and b!4359397 b!4359308)))

(assert (=> bs!633223 (= (= lt!1571642 lt!1571643) (= lambda!141168 lambda!141155))))

(declare-fun bs!633224 () Bool)

(assert (= bs!633224 (and b!4359397 b!4359307)))

(assert (=> bs!633224 (= (= lt!1571642 lt!1571643) (= lambda!141168 lambda!141156))))

(assert (=> bs!633224 (= (= lt!1571642 lt!1571922) (= lambda!141168 lambda!141157))))

(declare-fun bs!633225 () Bool)

(assert (= bs!633225 (and b!4359397 b!4359398)))

(assert (=> bs!633225 (= lambda!141168 lambda!141167)))

(assert (=> b!4359397 true))

(declare-fun lambda!141169 () Int)

(declare-fun lt!1572022 () ListMap!2229)

(assert (=> bs!633222 (= (= lt!1572022 lt!1571927) (= lambda!141169 lambda!141158))))

(assert (=> bs!633223 (= (= lt!1572022 lt!1571643) (= lambda!141169 lambda!141155))))

(assert (=> bs!633224 (= (= lt!1572022 lt!1571643) (= lambda!141169 lambda!141156))))

(assert (=> bs!633224 (= (= lt!1572022 lt!1571922) (= lambda!141169 lambda!141157))))

(assert (=> b!4359397 (= (= lt!1572022 lt!1571642) (= lambda!141169 lambda!141168))))

(assert (=> bs!633225 (= (= lt!1572022 lt!1571642) (= lambda!141169 lambda!141167))))

(assert (=> b!4359397 true))

(declare-fun bs!633226 () Bool)

(declare-fun d!1289224 () Bool)

(assert (= bs!633226 (and d!1289224 d!1289146)))

(declare-fun lt!1572027 () ListMap!2229)

(declare-fun lambda!141170 () Int)

(assert (=> bs!633226 (= (= lt!1572027 lt!1571927) (= lambda!141170 lambda!141158))))

(declare-fun bs!633227 () Bool)

(assert (= bs!633227 (and d!1289224 b!4359307)))

(assert (=> bs!633227 (= (= lt!1572027 lt!1571643) (= lambda!141170 lambda!141156))))

(assert (=> bs!633227 (= (= lt!1572027 lt!1571922) (= lambda!141170 lambda!141157))))

(declare-fun bs!633228 () Bool)

(assert (= bs!633228 (and d!1289224 b!4359397)))

(assert (=> bs!633228 (= (= lt!1572027 lt!1571642) (= lambda!141170 lambda!141168))))

(declare-fun bs!633229 () Bool)

(assert (= bs!633229 (and d!1289224 b!4359398)))

(assert (=> bs!633229 (= (= lt!1572027 lt!1571642) (= lambda!141170 lambda!141167))))

(declare-fun bs!633230 () Bool)

(assert (= bs!633230 (and d!1289224 b!4359308)))

(assert (=> bs!633230 (= (= lt!1572027 lt!1571643) (= lambda!141170 lambda!141155))))

(assert (=> bs!633228 (= (= lt!1572027 lt!1572022) (= lambda!141170 lambda!141169))))

(assert (=> d!1289224 true))

(declare-fun b!4359395 () Bool)

(declare-fun e!2712995 () Bool)

(assert (=> b!4359395 (= e!2712995 (forall!9142 (toList!2986 lt!1571642) lambda!141169))))

(declare-fun b!4359396 () Bool)

(declare-fun e!2712996 () Bool)

(assert (=> b!4359396 (= e!2712996 (invariantList!684 (toList!2986 lt!1572027)))))

(assert (=> d!1289224 e!2712996))

(declare-fun res!1792154 () Bool)

(assert (=> d!1289224 (=> (not res!1792154) (not e!2712996))))

(assert (=> d!1289224 (= res!1792154 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141170))))

(declare-fun e!2712997 () ListMap!2229)

(assert (=> d!1289224 (= lt!1572027 e!2712997)))

(declare-fun c!741204 () Bool)

(assert (=> d!1289224 (= c!741204 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289224 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707))))))

(assert (=> d!1289224 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) lt!1572027)))

(assert (=> b!4359397 (= e!2712997 lt!1572022)))

(declare-fun lt!1572035 () ListMap!2229)

(assert (=> b!4359397 (= lt!1572035 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359397 (= lt!1572022 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572034 () Unit!72045)

(declare-fun call!302996 () Unit!72045)

(assert (=> b!4359397 (= lt!1572034 call!302996)))

(assert (=> b!4359397 (forall!9142 (toList!2986 lt!1571642) lambda!141168)))

(declare-fun lt!1572026 () Unit!72045)

(assert (=> b!4359397 (= lt!1572026 lt!1572034)))

(assert (=> b!4359397 (forall!9142 (toList!2986 lt!1572035) lambda!141169)))

(declare-fun lt!1572023 () Unit!72045)

(declare-fun Unit!72092 () Unit!72045)

(assert (=> b!4359397 (= lt!1572023 Unit!72092)))

(assert (=> b!4359397 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141169)))

(declare-fun lt!1572033 () Unit!72045)

(declare-fun Unit!72093 () Unit!72045)

(assert (=> b!4359397 (= lt!1572033 Unit!72093)))

(declare-fun lt!1572036 () Unit!72045)

(declare-fun Unit!72094 () Unit!72045)

(assert (=> b!4359397 (= lt!1572036 Unit!72094)))

(declare-fun lt!1572030 () Unit!72045)

(assert (=> b!4359397 (= lt!1572030 (forallContained!1783 (toList!2986 lt!1572035) lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359397 (contains!11183 lt!1572035 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572028 () Unit!72045)

(declare-fun Unit!72095 () Unit!72045)

(assert (=> b!4359397 (= lt!1572028 Unit!72095)))

(assert (=> b!4359397 (contains!11183 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572021 () Unit!72045)

(declare-fun Unit!72096 () Unit!72045)

(assert (=> b!4359397 (= lt!1572021 Unit!72096)))

(declare-fun call!302995 () Bool)

(assert (=> b!4359397 call!302995))

(declare-fun lt!1572020 () Unit!72045)

(declare-fun Unit!72097 () Unit!72045)

(assert (=> b!4359397 (= lt!1572020 Unit!72097)))

(assert (=> b!4359397 (forall!9142 (toList!2986 lt!1572035) lambda!141169)))

(declare-fun lt!1572031 () Unit!72045)

(declare-fun Unit!72098 () Unit!72045)

(assert (=> b!4359397 (= lt!1572031 Unit!72098)))

(declare-fun lt!1572016 () Unit!72045)

(declare-fun Unit!72099 () Unit!72045)

(assert (=> b!4359397 (= lt!1572016 Unit!72099)))

(declare-fun lt!1572018 () Unit!72045)

(assert (=> b!4359397 (= lt!1572018 (addForallContainsKeyThenBeforeAdding!67 lt!1571642 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!302994 () Bool)

(assert (=> b!4359397 call!302994))

(declare-fun lt!1572019 () Unit!72045)

(assert (=> b!4359397 (= lt!1572019 lt!1572018)))

(assert (=> b!4359397 (forall!9142 (toList!2986 lt!1571642) lambda!141169)))

(declare-fun lt!1572017 () Unit!72045)

(declare-fun Unit!72100 () Unit!72045)

(assert (=> b!4359397 (= lt!1572017 Unit!72100)))

(declare-fun res!1792156 () Bool)

(assert (=> b!4359397 (= res!1792156 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141169))))

(assert (=> b!4359397 (=> (not res!1792156) (not e!2712995))))

(assert (=> b!4359397 e!2712995))

(declare-fun lt!1572025 () Unit!72045)

(declare-fun Unit!72101 () Unit!72045)

(assert (=> b!4359397 (= lt!1572025 Unit!72101)))

(assert (=> b!4359398 (= e!2712997 lt!1571642)))

(declare-fun lt!1572029 () Unit!72045)

(assert (=> b!4359398 (= lt!1572029 call!302996)))

(assert (=> b!4359398 call!302994))

(declare-fun lt!1572024 () Unit!72045)

(assert (=> b!4359398 (= lt!1572024 lt!1572029)))

(assert (=> b!4359398 call!302995))

(declare-fun lt!1572032 () Unit!72045)

(declare-fun Unit!72102 () Unit!72045)

(assert (=> b!4359398 (= lt!1572032 Unit!72102)))

(declare-fun bm!302989 () Bool)

(assert (=> bm!302989 (= call!302994 (forall!9142 (toList!2986 lt!1571642) (ite c!741204 lambda!141167 lambda!141169)))))

(declare-fun bm!302990 () Bool)

(assert (=> bm!302990 (= call!302995 (forall!9142 (ite c!741204 (toList!2986 lt!1571642) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741204 lambda!141167 lambda!141169)))))

(declare-fun b!4359399 () Bool)

(declare-fun res!1792155 () Bool)

(assert (=> b!4359399 (=> (not res!1792155) (not e!2712996))))

(assert (=> b!4359399 (= res!1792155 (forall!9142 (toList!2986 lt!1571642) lambda!141170))))

(declare-fun bm!302991 () Bool)

(assert (=> bm!302991 (= call!302996 (lemmaContainsAllItsOwnKeys!67 lt!1571642))))

(assert (= (and d!1289224 c!741204) b!4359398))

(assert (= (and d!1289224 (not c!741204)) b!4359397))

(assert (= (and b!4359397 res!1792156) b!4359395))

(assert (= (or b!4359398 b!4359397) bm!302991))

(assert (= (or b!4359398 b!4359397) bm!302990))

(assert (= (or b!4359398 b!4359397) bm!302989))

(assert (= (and d!1289224 res!1792154) b!4359399))

(assert (= (and b!4359399 res!1792155) b!4359396))

(declare-fun m!4976111 () Bool)

(assert (=> b!4359395 m!4976111))

(declare-fun m!4976113 () Bool)

(assert (=> bm!302989 m!4976113))

(declare-fun m!4976115 () Bool)

(assert (=> d!1289224 m!4976115))

(assert (=> d!1289224 m!4975929))

(declare-fun m!4976117 () Bool)

(assert (=> b!4359397 m!4976117))

(assert (=> b!4359397 m!4976111))

(declare-fun m!4976119 () Bool)

(assert (=> b!4359397 m!4976119))

(assert (=> b!4359397 m!4976117))

(declare-fun m!4976121 () Bool)

(assert (=> b!4359397 m!4976121))

(declare-fun m!4976123 () Bool)

(assert (=> b!4359397 m!4976123))

(declare-fun m!4976125 () Bool)

(assert (=> b!4359397 m!4976125))

(declare-fun m!4976127 () Bool)

(assert (=> b!4359397 m!4976127))

(declare-fun m!4976129 () Bool)

(assert (=> b!4359397 m!4976129))

(assert (=> b!4359397 m!4976129))

(declare-fun m!4976131 () Bool)

(assert (=> b!4359397 m!4976131))

(declare-fun m!4976133 () Bool)

(assert (=> b!4359397 m!4976133))

(declare-fun m!4976135 () Bool)

(assert (=> b!4359397 m!4976135))

(declare-fun m!4976137 () Bool)

(assert (=> b!4359399 m!4976137))

(declare-fun m!4976139 () Bool)

(assert (=> bm!302991 m!4976139))

(declare-fun m!4976141 () Bool)

(assert (=> b!4359396 m!4976141))

(declare-fun m!4976143 () Bool)

(assert (=> bm!302990 m!4976143))

(assert (=> b!4359077 d!1289224))

(declare-fun d!1289226 () Bool)

(assert (=> d!1289226 (= (eq!271 lt!1571630 lt!1571644) (= (content!7735 (toList!2986 lt!1571630)) (content!7735 (toList!2986 lt!1571644))))))

(declare-fun bs!633231 () Bool)

(assert (= bs!633231 d!1289226))

(declare-fun m!4976145 () Bool)

(assert (=> bs!633231 m!4976145))

(declare-fun m!4976147 () Bool)

(assert (=> bs!633231 m!4976147))

(assert (=> b!4359077 d!1289226))

(declare-fun bs!633232 () Bool)

(declare-fun d!1289228 () Bool)

(assert (= bs!633232 (and d!1289228 d!1289210)))

(declare-fun lambda!141173 () Int)

(assert (=> bs!633232 (= lambda!141173 lambda!141163)))

(declare-fun bs!633233 () Bool)

(assert (= bs!633233 (and d!1289228 d!1289218)))

(assert (=> bs!633233 (= lambda!141173 lambda!141166)))

(declare-fun bs!633234 () Bool)

(assert (= bs!633234 (and d!1289228 d!1289188)))

(assert (=> bs!633234 (= lambda!141173 lambda!141161)))

(declare-fun bs!633235 () Bool)

(assert (= bs!633235 (and d!1289228 d!1289120)))

(assert (=> bs!633235 (not (= lambda!141173 lambda!141083))))

(declare-fun bs!633236 () Bool)

(assert (= bs!633236 (and d!1289228 start!422132)))

(assert (=> bs!633236 (= lambda!141173 lambda!141069)))

(declare-fun bs!633237 () Bool)

(assert (= bs!633237 (and d!1289228 d!1289198)))

(assert (=> bs!633237 (= lambda!141173 lambda!141162)))

(assert (=> d!1289228 (not (containsKey!714 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))) key!3918))))

(declare-fun lt!1572039 () Unit!72045)

(declare-fun choose!26979 (ListLongMap!1635 K!10320 (_ BitVec 64) Hashable!4893) Unit!72045)

(assert (=> d!1289228 (= lt!1572039 (choose!26979 lm!1707 key!3918 (_1!27482 (h!54519 (toList!2985 lm!1707))) hashF!1247))))

(assert (=> d!1289228 (forall!9140 (toList!2985 lm!1707) lambda!141173)))

(assert (=> d!1289228 (= (lemmaNotSameHashThenCannotContainKey!48 lm!1707 key!3918 (_1!27482 (h!54519 (toList!2985 lm!1707))) hashF!1247) lt!1572039)))

(declare-fun bs!633238 () Bool)

(assert (= bs!633238 d!1289228))

(assert (=> bs!633238 m!4975521))

(assert (=> bs!633238 m!4975521))

(assert (=> bs!633238 m!4975523))

(declare-fun m!4976149 () Bool)

(assert (=> bs!633238 m!4976149))

(declare-fun m!4976151 () Bool)

(assert (=> bs!633238 m!4976151))

(assert (=> b!4359077 d!1289228))

(declare-fun b!4359400 () Bool)

(declare-fun e!2713003 () Bool)

(assert (=> b!4359400 (= e!2713003 (not (contains!11189 (keys!16546 lt!1571644) key!3918)))))

(declare-fun b!4359401 () Bool)

(assert (=> b!4359401 false))

(declare-fun lt!1572042 () Unit!72045)

(declare-fun lt!1572041 () Unit!72045)

(assert (=> b!4359401 (= lt!1572042 lt!1572041)))

(assert (=> b!4359401 (containsKey!717 (toList!2986 lt!1571644) key!3918)))

(assert (=> b!4359401 (= lt!1572041 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571644) key!3918))))

(declare-fun e!2712999 () Unit!72045)

(declare-fun Unit!72103 () Unit!72045)

(assert (=> b!4359401 (= e!2712999 Unit!72103)))

(declare-fun b!4359402 () Bool)

(declare-fun e!2713000 () List!49088)

(assert (=> b!4359402 (= e!2713000 (keys!16546 lt!1571644))))

(declare-fun b!4359403 () Bool)

(declare-fun e!2712998 () Bool)

(assert (=> b!4359403 (= e!2712998 (contains!11189 (keys!16546 lt!1571644) key!3918))))

(declare-fun b!4359404 () Bool)

(declare-fun e!2713002 () Unit!72045)

(declare-fun lt!1572043 () Unit!72045)

(assert (=> b!4359404 (= e!2713002 lt!1572043)))

(declare-fun lt!1572045 () Unit!72045)

(assert (=> b!4359404 (= lt!1572045 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571644) key!3918))))

(assert (=> b!4359404 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571644) key!3918))))

(declare-fun lt!1572044 () Unit!72045)

(assert (=> b!4359404 (= lt!1572044 lt!1572045)))

(assert (=> b!4359404 (= lt!1572043 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571644) key!3918))))

(declare-fun call!302997 () Bool)

(assert (=> b!4359404 call!302997))

(declare-fun b!4359405 () Bool)

(declare-fun Unit!72104 () Unit!72045)

(assert (=> b!4359405 (= e!2712999 Unit!72104)))

(declare-fun b!4359406 () Bool)

(assert (=> b!4359406 (= e!2713000 (getKeysList!132 (toList!2986 lt!1571644)))))

(declare-fun d!1289230 () Bool)

(declare-fun e!2713001 () Bool)

(assert (=> d!1289230 e!2713001))

(declare-fun res!1792159 () Bool)

(assert (=> d!1289230 (=> res!1792159 e!2713001)))

(assert (=> d!1289230 (= res!1792159 e!2713003)))

(declare-fun res!1792157 () Bool)

(assert (=> d!1289230 (=> (not res!1792157) (not e!2713003))))

(declare-fun lt!1572040 () Bool)

(assert (=> d!1289230 (= res!1792157 (not lt!1572040))))

(declare-fun lt!1572047 () Bool)

(assert (=> d!1289230 (= lt!1572040 lt!1572047)))

(declare-fun lt!1572046 () Unit!72045)

(assert (=> d!1289230 (= lt!1572046 e!2713002)))

(declare-fun c!741205 () Bool)

(assert (=> d!1289230 (= c!741205 lt!1572047)))

(assert (=> d!1289230 (= lt!1572047 (containsKey!717 (toList!2986 lt!1571644) key!3918))))

(assert (=> d!1289230 (= (contains!11183 lt!1571644 key!3918) lt!1572040)))

(declare-fun bm!302992 () Bool)

(assert (=> bm!302992 (= call!302997 (contains!11189 e!2713000 key!3918))))

(declare-fun c!741206 () Bool)

(assert (=> bm!302992 (= c!741206 c!741205)))

(declare-fun b!4359407 () Bool)

(assert (=> b!4359407 (= e!2713002 e!2712999)))

(declare-fun c!741207 () Bool)

(assert (=> b!4359407 (= c!741207 call!302997)))

(declare-fun b!4359408 () Bool)

(assert (=> b!4359408 (= e!2713001 e!2712998)))

(declare-fun res!1792158 () Bool)

(assert (=> b!4359408 (=> (not res!1792158) (not e!2712998))))

(assert (=> b!4359408 (= res!1792158 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571644) key!3918)))))

(assert (= (and d!1289230 c!741205) b!4359404))

(assert (= (and d!1289230 (not c!741205)) b!4359407))

(assert (= (and b!4359407 c!741207) b!4359401))

(assert (= (and b!4359407 (not c!741207)) b!4359405))

(assert (= (or b!4359404 b!4359407) bm!302992))

(assert (= (and bm!302992 c!741206) b!4359406))

(assert (= (and bm!302992 (not c!741206)) b!4359402))

(assert (= (and d!1289230 res!1792157) b!4359400))

(assert (= (and d!1289230 (not res!1792159)) b!4359408))

(assert (= (and b!4359408 res!1792158) b!4359403))

(declare-fun m!4976153 () Bool)

(assert (=> b!4359406 m!4976153))

(declare-fun m!4976155 () Bool)

(assert (=> b!4359401 m!4976155))

(declare-fun m!4976157 () Bool)

(assert (=> b!4359401 m!4976157))

(declare-fun m!4976159 () Bool)

(assert (=> b!4359402 m!4976159))

(assert (=> b!4359403 m!4976159))

(assert (=> b!4359403 m!4976159))

(declare-fun m!4976161 () Bool)

(assert (=> b!4359403 m!4976161))

(assert (=> d!1289230 m!4976155))

(assert (=> b!4359400 m!4976159))

(assert (=> b!4359400 m!4976159))

(assert (=> b!4359400 m!4976161))

(declare-fun m!4976163 () Bool)

(assert (=> b!4359404 m!4976163))

(declare-fun m!4976165 () Bool)

(assert (=> b!4359404 m!4976165))

(assert (=> b!4359404 m!4976165))

(declare-fun m!4976167 () Bool)

(assert (=> b!4359404 m!4976167))

(declare-fun m!4976169 () Bool)

(assert (=> b!4359404 m!4976169))

(declare-fun m!4976171 () Bool)

(assert (=> bm!302992 m!4976171))

(assert (=> b!4359408 m!4976165))

(assert (=> b!4359408 m!4976165))

(assert (=> b!4359408 m!4976167))

(assert (=> b!4359078 d!1289230))

(declare-fun bs!633239 () Bool)

(declare-fun d!1289232 () Bool)

(assert (= bs!633239 (and d!1289232 d!1289210)))

(declare-fun lambda!141174 () Int)

(assert (=> bs!633239 (= lambda!141174 lambda!141163)))

(declare-fun bs!633240 () Bool)

(assert (= bs!633240 (and d!1289232 d!1289188)))

(assert (=> bs!633240 (= lambda!141174 lambda!141161)))

(declare-fun bs!633241 () Bool)

(assert (= bs!633241 (and d!1289232 d!1289120)))

(assert (=> bs!633241 (not (= lambda!141174 lambda!141083))))

(declare-fun bs!633242 () Bool)

(assert (= bs!633242 (and d!1289232 d!1289218)))

(assert (=> bs!633242 (= lambda!141174 lambda!141166)))

(declare-fun bs!633243 () Bool)

(assert (= bs!633243 (and d!1289232 d!1289228)))

(assert (=> bs!633243 (= lambda!141174 lambda!141173)))

(declare-fun bs!633244 () Bool)

(assert (= bs!633244 (and d!1289232 start!422132)))

(assert (=> bs!633244 (= lambda!141174 lambda!141069)))

(declare-fun bs!633245 () Bool)

(assert (= bs!633245 (and d!1289232 d!1289198)))

(assert (=> bs!633245 (= lambda!141174 lambda!141162)))

(declare-fun lt!1572048 () ListMap!2229)

(assert (=> d!1289232 (invariantList!684 (toList!2986 lt!1572048))))

(declare-fun e!2713004 () ListMap!2229)

(assert (=> d!1289232 (= lt!1572048 e!2713004)))

(declare-fun c!741208 () Bool)

(assert (=> d!1289232 (= c!741208 ((_ is Cons!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289232 (forall!9140 (toList!2985 lm!1707) lambda!141174)))

(assert (=> d!1289232 (= (extractMap!560 (toList!2985 lm!1707)) lt!1572048)))

(declare-fun b!4359409 () Bool)

(assert (=> b!4359409 (= e!2713004 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))))))

(declare-fun b!4359410 () Bool)

(assert (=> b!4359410 (= e!2713004 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289232 c!741208) b!4359409))

(assert (= (and d!1289232 (not c!741208)) b!4359410))

(declare-fun m!4976173 () Bool)

(assert (=> d!1289232 m!4976173))

(declare-fun m!4976175 () Bool)

(assert (=> d!1289232 m!4976175))

(assert (=> b!4359409 m!4975501))

(assert (=> b!4359409 m!4975501))

(declare-fun m!4976177 () Bool)

(assert (=> b!4359409 m!4976177))

(assert (=> b!4359078 d!1289232))

(declare-fun d!1289234 () Bool)

(declare-fun head!9068 (List!49086) tuple2!48376)

(assert (=> d!1289234 (= (head!9066 lm!1707) (head!9068 (toList!2985 lm!1707)))))

(declare-fun bs!633246 () Bool)

(assert (= bs!633246 d!1289234))

(declare-fun m!4976179 () Bool)

(assert (=> bs!633246 m!4976179))

(assert (=> b!4359074 d!1289234))

(declare-fun bs!633247 () Bool)

(declare-fun d!1289236 () Bool)

(assert (= bs!633247 (and d!1289236 d!1289224)))

(declare-fun lambda!141177 () Int)

(assert (=> bs!633247 (not (= lambda!141177 lambda!141170))))

(declare-fun bs!633248 () Bool)

(assert (= bs!633248 (and d!1289236 d!1289146)))

(assert (=> bs!633248 (not (= lambda!141177 lambda!141158))))

(declare-fun bs!633249 () Bool)

(assert (= bs!633249 (and d!1289236 b!4359307)))

(assert (=> bs!633249 (not (= lambda!141177 lambda!141156))))

(assert (=> bs!633249 (not (= lambda!141177 lambda!141157))))

(declare-fun bs!633250 () Bool)

(assert (= bs!633250 (and d!1289236 b!4359397)))

(assert (=> bs!633250 (not (= lambda!141177 lambda!141168))))

(declare-fun bs!633251 () Bool)

(assert (= bs!633251 (and d!1289236 b!4359398)))

(assert (=> bs!633251 (not (= lambda!141177 lambda!141167))))

(declare-fun bs!633252 () Bool)

(assert (= bs!633252 (and d!1289236 b!4359308)))

(assert (=> bs!633252 (not (= lambda!141177 lambda!141155))))

(assert (=> bs!633250 (not (= lambda!141177 lambda!141169))))

(assert (=> d!1289236 true))

(assert (=> d!1289236 true))

(assert (=> d!1289236 (= (allKeysSameHash!459 newBucket!200 hash!377 hashF!1247) (forall!9142 newBucket!200 lambda!141177))))

(declare-fun bs!633253 () Bool)

(assert (= bs!633253 d!1289236))

(declare-fun m!4976181 () Bool)

(assert (=> bs!633253 m!4976181))

(assert (=> b!4359075 d!1289236))

(declare-fun d!1289238 () Bool)

(declare-fun hash!1597 (Hashable!4893 K!10320) (_ BitVec 64))

(assert (=> d!1289238 (= (hash!1591 hashF!1247 key!3918) (hash!1597 hashF!1247 key!3918))))

(declare-fun bs!633254 () Bool)

(assert (= bs!633254 d!1289238))

(declare-fun m!4976183 () Bool)

(assert (=> bs!633254 m!4976183))

(assert (=> b!4359076 d!1289238))

(declare-fun tp!1330278 () Bool)

(declare-fun e!2713007 () Bool)

(declare-fun b!4359419 () Bool)

(assert (=> b!4359419 (= e!2713007 (and tp_is_empty!25241 tp_is_empty!25243 tp!1330278))))

(assert (=> b!4359073 (= tp!1330266 e!2713007)))

(assert (= (and b!4359073 ((_ is Cons!48961) (t!356005 newBucket!200))) b!4359419))

(declare-fun b!4359424 () Bool)

(declare-fun e!2713010 () Bool)

(declare-fun tp!1330283 () Bool)

(declare-fun tp!1330284 () Bool)

(assert (=> b!4359424 (= e!2713010 (and tp!1330283 tp!1330284))))

(assert (=> b!4359079 (= tp!1330265 e!2713010)))

(assert (= (and b!4359079 ((_ is Cons!48962) (toList!2985 lm!1707))) b!4359424))

(declare-fun b_lambda!131547 () Bool)

(assert (= b_lambda!131531 (or start!422132 b_lambda!131547)))

(declare-fun bs!633255 () Bool)

(declare-fun d!1289240 () Bool)

(assert (= bs!633255 (and d!1289240 start!422132)))

(assert (=> bs!633255 (= (dynLambda!20643 lambda!141069 (tuple2!48377 hash!377 newBucket!200)) (noDuplicateKeys!501 (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(declare-fun m!4976185 () Bool)

(assert (=> bs!633255 m!4976185))

(assert (=> b!4359142 d!1289240))

(declare-fun b_lambda!131549 () Bool)

(assert (= b_lambda!131527 (or start!422132 b_lambda!131549)))

(declare-fun bs!633256 () Bool)

(declare-fun d!1289242 () Bool)

(assert (= bs!633256 (and d!1289242 start!422132)))

(assert (=> bs!633256 (= (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 lt!1571637))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lt!1571637)))))))

(declare-fun m!4976187 () Bool)

(assert (=> bs!633256 m!4976187))

(assert (=> b!4359103 d!1289242))

(declare-fun b_lambda!131551 () Bool)

(assert (= b_lambda!131533 (or start!422132 b_lambda!131551)))

(declare-fun bs!633257 () Bool)

(declare-fun d!1289244 () Bool)

(assert (= bs!633257 (and d!1289244 start!422132)))

(assert (=> bs!633257 (= (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 lm!1707))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> bs!633257 m!4975929))

(assert (=> b!4359143 d!1289244))

(declare-fun b_lambda!131553 () Bool)

(assert (= b_lambda!131535 (or start!422132 b_lambda!131553)))

(declare-fun bs!633258 () Bool)

(declare-fun d!1289246 () Bool)

(assert (= bs!633258 (and d!1289246 start!422132)))

(assert (=> bs!633258 (= (dynLambda!20643 lambda!141069 lt!1571628) (noDuplicateKeys!501 (_2!27482 lt!1571628)))))

(declare-fun m!4976189 () Bool)

(assert (=> bs!633258 m!4976189))

(assert (=> d!1289134 d!1289246))

(check-sat (not b_lambda!131549) (not b!4359395) (not b!4359393) (not b!4359401) (not b!4359168) (not bs!633255) (not d!1289216) (not d!1289142) (not d!1289088) (not bm!302988) (not bm!302991) (not b!4359190) (not b!4359424) (not b!4359323) (not b!4359371) (not b!4359125) (not d!1289204) (not b_lambda!131551) (not b!4359377) (not b!4359397) (not b!4359374) (not d!1289132) (not d!1289120) (not d!1289238) (not bm!302982) (not b!4359406) (not b!4359399) (not d!1289200) (not b!4359385) (not b!4359229) (not d!1289130) (not bs!633258) (not b!4359384) (not b!4359211) (not d!1289112) (not d!1289146) (not b!4359373) (not d!1289210) (not d!1289188) (not b_lambda!131553) tp_is_empty!25241 (not b!4359372) (not b!4359396) (not b!4359400) (not b!4359394) (not b!4359419) (not b!4359307) (not b!4359402) (not b!4359104) (not b!4359404) (not d!1289206) (not b!4359224) (not d!1289232) (not bm!302987) (not d!1289214) (not d!1289234) (not d!1289226) (not b!4359379) (not b!4359390) (not b!4359403) (not b!4359215) (not b!4359352) (not d!1289212) (not d!1289102) (not b!4359218) (not bm!302989) (not bm!302984) (not d!1289208) (not b!4359380) (not b!4359306) (not bs!633257) (not d!1289228) (not b!4359144) (not bm!302992) (not b!4359345) (not b!4359375) (not bm!302983) (not d!1289236) tp_is_empty!25243 (not b!4359351) (not b!4359387) (not b!4359392) (not b!4359343) (not d!1289222) (not b!4359230) (not d!1289230) (not b!4359309) (not d!1289138) (not b!4359382) (not b_lambda!131547) (not d!1289198) (not b!4359305) (not d!1289220) (not bs!633256) (not bm!302990) (not d!1289144) (not d!1289134) (not d!1289224) (not b!4359409) (not d!1289218) (not d!1289202) (not b!4359188) (not d!1289184) (not b!4359383) (not b!4359408) (not d!1289136) (not b!4359386) (not b!4359388) (not b!4359126))
(check-sat)
(get-model)

(declare-fun b!4359432 () Bool)

(assert (=> b!4359432 true))

(declare-fun d!1289248 () Bool)

(declare-fun e!2713013 () Bool)

(assert (=> d!1289248 e!2713013))

(declare-fun res!1792166 () Bool)

(assert (=> d!1289248 (=> (not res!1792166) (not e!2713013))))

(declare-fun lt!1572051 () List!49088)

(declare-fun noDuplicate!605 (List!49088) Bool)

(assert (=> d!1289248 (= res!1792166 (noDuplicate!605 lt!1572051))))

(assert (=> d!1289248 (= lt!1572051 (getKeysList!132 (toList!2986 lt!1571644)))))

(assert (=> d!1289248 (= (keys!16546 lt!1571644) lt!1572051)))

(declare-fun b!4359431 () Bool)

(declare-fun res!1792168 () Bool)

(assert (=> b!4359431 (=> (not res!1792168) (not e!2713013))))

(declare-fun length!66 (List!49088) Int)

(declare-fun length!67 (List!49085) Int)

(assert (=> b!4359431 (= res!1792168 (= (length!66 lt!1572051) (length!67 (toList!2986 lt!1571644))))))

(declare-fun res!1792167 () Bool)

(assert (=> b!4359432 (=> (not res!1792167) (not e!2713013))))

(declare-fun lambda!141182 () Int)

(declare-fun forall!9143 (List!49088 Int) Bool)

(assert (=> b!4359432 (= res!1792167 (forall!9143 lt!1572051 lambda!141182))))

(declare-fun b!4359433 () Bool)

(declare-fun lambda!141183 () Int)

(declare-fun content!7736 (List!49088) (InoxSet K!10320))

(declare-fun map!10652 (List!49085 Int) List!49088)

(assert (=> b!4359433 (= e!2713013 (= (content!7736 lt!1572051) (content!7736 (map!10652 (toList!2986 lt!1571644) lambda!141183))))))

(assert (= (and d!1289248 res!1792166) b!4359431))

(assert (= (and b!4359431 res!1792168) b!4359432))

(assert (= (and b!4359432 res!1792167) b!4359433))

(declare-fun m!4976191 () Bool)

(assert (=> d!1289248 m!4976191))

(assert (=> d!1289248 m!4976153))

(declare-fun m!4976193 () Bool)

(assert (=> b!4359431 m!4976193))

(declare-fun m!4976195 () Bool)

(assert (=> b!4359431 m!4976195))

(declare-fun m!4976197 () Bool)

(assert (=> b!4359432 m!4976197))

(declare-fun m!4976199 () Bool)

(assert (=> b!4359433 m!4976199))

(declare-fun m!4976201 () Bool)

(assert (=> b!4359433 m!4976201))

(assert (=> b!4359433 m!4976201))

(declare-fun m!4976203 () Bool)

(assert (=> b!4359433 m!4976203))

(assert (=> b!4359402 d!1289248))

(declare-fun d!1289250 () Bool)

(declare-fun res!1792169 () Bool)

(declare-fun e!2713014 () Bool)

(assert (=> d!1289250 (=> res!1792169 e!2713014)))

(assert (=> d!1289250 (= res!1792169 (not ((_ is Cons!48961) (t!356005 newBucket!200))))))

(assert (=> d!1289250 (= (noDuplicateKeys!501 (t!356005 newBucket!200)) e!2713014)))

(declare-fun b!4359436 () Bool)

(declare-fun e!2713015 () Bool)

(assert (=> b!4359436 (= e!2713014 e!2713015)))

(declare-fun res!1792170 () Bool)

(assert (=> b!4359436 (=> (not res!1792170) (not e!2713015))))

(assert (=> b!4359436 (= res!1792170 (not (containsKey!714 (t!356005 (t!356005 newBucket!200)) (_1!27481 (h!54518 (t!356005 newBucket!200))))))))

(declare-fun b!4359437 () Bool)

(assert (=> b!4359437 (= e!2713015 (noDuplicateKeys!501 (t!356005 (t!356005 newBucket!200))))))

(assert (= (and d!1289250 (not res!1792169)) b!4359436))

(assert (= (and b!4359436 res!1792170) b!4359437))

(declare-fun m!4976205 () Bool)

(assert (=> b!4359436 m!4976205))

(declare-fun m!4976207 () Bool)

(assert (=> b!4359437 m!4976207))

(assert (=> b!4359230 d!1289250))

(declare-fun b!4359438 () Bool)

(declare-fun e!2713021 () Bool)

(assert (=> b!4359438 (= e!2713021 (not (contains!11189 (keys!16546 lt!1572012) (_1!27481 lt!1571638))))))

(declare-fun b!4359439 () Bool)

(assert (=> b!4359439 false))

(declare-fun lt!1572054 () Unit!72045)

(declare-fun lt!1572053 () Unit!72045)

(assert (=> b!4359439 (= lt!1572054 lt!1572053)))

(assert (=> b!4359439 (containsKey!717 (toList!2986 lt!1572012) (_1!27481 lt!1571638))))

(assert (=> b!4359439 (= lt!1572053 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1572012) (_1!27481 lt!1571638)))))

(declare-fun e!2713017 () Unit!72045)

(declare-fun Unit!72105 () Unit!72045)

(assert (=> b!4359439 (= e!2713017 Unit!72105)))

(declare-fun b!4359440 () Bool)

(declare-fun e!2713018 () List!49088)

(assert (=> b!4359440 (= e!2713018 (keys!16546 lt!1572012))))

(declare-fun b!4359441 () Bool)

(declare-fun e!2713016 () Bool)

(assert (=> b!4359441 (= e!2713016 (contains!11189 (keys!16546 lt!1572012) (_1!27481 lt!1571638)))))

(declare-fun b!4359442 () Bool)

(declare-fun e!2713020 () Unit!72045)

(declare-fun lt!1572055 () Unit!72045)

(assert (=> b!4359442 (= e!2713020 lt!1572055)))

(declare-fun lt!1572057 () Unit!72045)

(assert (=> b!4359442 (= lt!1572057 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1572012) (_1!27481 lt!1571638)))))

(assert (=> b!4359442 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572012) (_1!27481 lt!1571638)))))

(declare-fun lt!1572056 () Unit!72045)

(assert (=> b!4359442 (= lt!1572056 lt!1572057)))

(assert (=> b!4359442 (= lt!1572055 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1572012) (_1!27481 lt!1571638)))))

(declare-fun call!302998 () Bool)

(assert (=> b!4359442 call!302998))

(declare-fun b!4359443 () Bool)

(declare-fun Unit!72106 () Unit!72045)

(assert (=> b!4359443 (= e!2713017 Unit!72106)))

(declare-fun b!4359444 () Bool)

(assert (=> b!4359444 (= e!2713018 (getKeysList!132 (toList!2986 lt!1572012)))))

(declare-fun d!1289252 () Bool)

(declare-fun e!2713019 () Bool)

(assert (=> d!1289252 e!2713019))

(declare-fun res!1792173 () Bool)

(assert (=> d!1289252 (=> res!1792173 e!2713019)))

(assert (=> d!1289252 (= res!1792173 e!2713021)))

(declare-fun res!1792171 () Bool)

(assert (=> d!1289252 (=> (not res!1792171) (not e!2713021))))

(declare-fun lt!1572052 () Bool)

(assert (=> d!1289252 (= res!1792171 (not lt!1572052))))

(declare-fun lt!1572059 () Bool)

(assert (=> d!1289252 (= lt!1572052 lt!1572059)))

(declare-fun lt!1572058 () Unit!72045)

(assert (=> d!1289252 (= lt!1572058 e!2713020)))

(declare-fun c!741209 () Bool)

(assert (=> d!1289252 (= c!741209 lt!1572059)))

(assert (=> d!1289252 (= lt!1572059 (containsKey!717 (toList!2986 lt!1572012) (_1!27481 lt!1571638)))))

(assert (=> d!1289252 (= (contains!11183 lt!1572012 (_1!27481 lt!1571638)) lt!1572052)))

(declare-fun bm!302993 () Bool)

(assert (=> bm!302993 (= call!302998 (contains!11189 e!2713018 (_1!27481 lt!1571638)))))

(declare-fun c!741210 () Bool)

(assert (=> bm!302993 (= c!741210 c!741209)))

(declare-fun b!4359445 () Bool)

(assert (=> b!4359445 (= e!2713020 e!2713017)))

(declare-fun c!741211 () Bool)

(assert (=> b!4359445 (= c!741211 call!302998)))

(declare-fun b!4359446 () Bool)

(assert (=> b!4359446 (= e!2713019 e!2713016)))

(declare-fun res!1792172 () Bool)

(assert (=> b!4359446 (=> (not res!1792172) (not e!2713016))))

(assert (=> b!4359446 (= res!1792172 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572012) (_1!27481 lt!1571638))))))

(assert (= (and d!1289252 c!741209) b!4359442))

(assert (= (and d!1289252 (not c!741209)) b!4359445))

(assert (= (and b!4359445 c!741211) b!4359439))

(assert (= (and b!4359445 (not c!741211)) b!4359443))

(assert (= (or b!4359442 b!4359445) bm!302993))

(assert (= (and bm!302993 c!741210) b!4359444))

(assert (= (and bm!302993 (not c!741210)) b!4359440))

(assert (= (and d!1289252 res!1792171) b!4359438))

(assert (= (and d!1289252 (not res!1792173)) b!4359446))

(assert (= (and b!4359446 res!1792172) b!4359441))

(declare-fun m!4976209 () Bool)

(assert (=> b!4359444 m!4976209))

(declare-fun m!4976211 () Bool)

(assert (=> b!4359439 m!4976211))

(declare-fun m!4976213 () Bool)

(assert (=> b!4359439 m!4976213))

(declare-fun m!4976215 () Bool)

(assert (=> b!4359440 m!4976215))

(assert (=> b!4359441 m!4976215))

(assert (=> b!4359441 m!4976215))

(declare-fun m!4976217 () Bool)

(assert (=> b!4359441 m!4976217))

(assert (=> d!1289252 m!4976211))

(assert (=> b!4359438 m!4976215))

(assert (=> b!4359438 m!4976215))

(assert (=> b!4359438 m!4976217))

(declare-fun m!4976219 () Bool)

(assert (=> b!4359442 m!4976219))

(assert (=> b!4359442 m!4976107))

(assert (=> b!4359442 m!4976107))

(declare-fun m!4976221 () Bool)

(assert (=> b!4359442 m!4976221))

(declare-fun m!4976223 () Bool)

(assert (=> b!4359442 m!4976223))

(declare-fun m!4976225 () Bool)

(assert (=> bm!302993 m!4976225))

(assert (=> b!4359446 m!4976107))

(assert (=> b!4359446 m!4976107))

(assert (=> b!4359446 m!4976221))

(assert (=> d!1289222 d!1289252))

(declare-fun b!4359455 () Bool)

(declare-fun e!2713026 () Option!10481)

(assert (=> b!4359455 (= e!2713026 (Some!10480 (_2!27481 (h!54518 lt!1572013))))))

(declare-fun d!1289254 () Bool)

(declare-fun c!741216 () Bool)

(assert (=> d!1289254 (= c!741216 (and ((_ is Cons!48961) lt!1572013) (= (_1!27481 (h!54518 lt!1572013)) (_1!27481 lt!1571638))))))

(assert (=> d!1289254 (= (getValueByKey!467 lt!1572013 (_1!27481 lt!1571638)) e!2713026)))

(declare-fun b!4359458 () Bool)

(declare-fun e!2713027 () Option!10481)

(assert (=> b!4359458 (= e!2713027 None!10480)))

(declare-fun b!4359456 () Bool)

(assert (=> b!4359456 (= e!2713026 e!2713027)))

(declare-fun c!741217 () Bool)

(assert (=> b!4359456 (= c!741217 (and ((_ is Cons!48961) lt!1572013) (not (= (_1!27481 (h!54518 lt!1572013)) (_1!27481 lt!1571638)))))))

(declare-fun b!4359457 () Bool)

(assert (=> b!4359457 (= e!2713027 (getValueByKey!467 (t!356005 lt!1572013) (_1!27481 lt!1571638)))))

(assert (= (and d!1289254 c!741216) b!4359455))

(assert (= (and d!1289254 (not c!741216)) b!4359456))

(assert (= (and b!4359456 c!741217) b!4359457))

(assert (= (and b!4359456 (not c!741217)) b!4359458))

(declare-fun m!4976227 () Bool)

(assert (=> b!4359457 m!4976227))

(assert (=> d!1289222 d!1289254))

(declare-fun d!1289256 () Bool)

(assert (=> d!1289256 (= (getValueByKey!467 lt!1572013 (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638)))))

(declare-fun lt!1572062 () Unit!72045)

(declare-fun choose!26980 (List!49085 K!10320 V!10566) Unit!72045)

(assert (=> d!1289256 (= lt!1572062 (choose!26980 lt!1572013 (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun e!2713030 () Bool)

(assert (=> d!1289256 e!2713030))

(declare-fun res!1792178 () Bool)

(assert (=> d!1289256 (=> (not res!1792178) (not e!2713030))))

(assert (=> d!1289256 (= res!1792178 (invariantList!684 lt!1572013))))

(assert (=> d!1289256 (= (lemmaContainsTupThenGetReturnValue!241 lt!1572013 (_1!27481 lt!1571638) (_2!27481 lt!1571638)) lt!1572062)))

(declare-fun b!4359463 () Bool)

(declare-fun res!1792179 () Bool)

(assert (=> b!4359463 (=> (not res!1792179) (not e!2713030))))

(assert (=> b!4359463 (= res!1792179 (containsKey!717 lt!1572013 (_1!27481 lt!1571638)))))

(declare-fun b!4359464 () Bool)

(assert (=> b!4359464 (= e!2713030 (contains!11188 lt!1572013 (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))

(assert (= (and d!1289256 res!1792178) b!4359463))

(assert (= (and b!4359463 res!1792179) b!4359464))

(assert (=> d!1289256 m!4976101))

(declare-fun m!4976229 () Bool)

(assert (=> d!1289256 m!4976229))

(declare-fun m!4976231 () Bool)

(assert (=> d!1289256 m!4976231))

(declare-fun m!4976233 () Bool)

(assert (=> b!4359463 m!4976233))

(declare-fun m!4976235 () Bool)

(assert (=> b!4359464 m!4976235))

(assert (=> d!1289222 d!1289256))

(declare-fun b!4359507 () Bool)

(declare-fun res!1792196 () Bool)

(declare-fun e!2713061 () Bool)

(assert (=> b!4359507 (=> (not res!1792196) (not e!2713061))))

(declare-fun lt!1572091 () List!49085)

(assert (=> b!4359507 (= res!1792196 (containsKey!717 lt!1572091 (_1!27481 lt!1571638)))))

(declare-fun b!4359508 () Bool)

(declare-fun e!2713060 () Unit!72045)

(declare-fun Unit!72107 () Unit!72045)

(assert (=> b!4359508 (= e!2713060 Unit!72107)))

(declare-fun d!1289258 () Bool)

(assert (=> d!1289258 e!2713061))

(declare-fun res!1792199 () Bool)

(assert (=> d!1289258 (=> (not res!1792199) (not e!2713061))))

(assert (=> d!1289258 (= res!1792199 (invariantList!684 lt!1572091))))

(declare-fun e!2713058 () List!49085)

(assert (=> d!1289258 (= lt!1572091 e!2713058)))

(declare-fun c!741231 () Bool)

(assert (=> d!1289258 (= c!741231 (and ((_ is Cons!48961) (toList!2986 lt!1571642)) (= (_1!27481 (h!54518 (toList!2986 lt!1571642))) (_1!27481 lt!1571638))))))

(assert (=> d!1289258 (invariantList!684 (toList!2986 lt!1571642))))

(assert (=> d!1289258 (= (insertNoDuplicatedKeys!108 (toList!2986 lt!1571642) (_1!27481 lt!1571638) (_2!27481 lt!1571638)) lt!1572091)))

(declare-fun b!4359509 () Bool)

(declare-fun e!2713057 () List!49085)

(declare-fun lt!1572087 () List!49085)

(assert (=> b!4359509 (= e!2713057 lt!1572087)))

(declare-fun call!303007 () List!49085)

(assert (=> b!4359509 (= lt!1572087 call!303007)))

(declare-fun c!741233 () Bool)

(assert (=> b!4359509 (= c!741233 (containsKey!717 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571642)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)) (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun lt!1572095 () Unit!72045)

(assert (=> b!4359509 (= lt!1572095 e!2713060)))

(declare-fun b!4359510 () Bool)

(declare-fun e!2713059 () List!49085)

(assert (=> b!4359510 (= e!2713058 e!2713059)))

(declare-fun res!1792197 () Bool)

(assert (=> b!4359510 (= res!1792197 ((_ is Cons!48961) (toList!2986 lt!1571642)))))

(declare-fun e!2713062 () Bool)

(assert (=> b!4359510 (=> (not res!1792197) (not e!2713062))))

(declare-fun c!741234 () Bool)

(assert (=> b!4359510 (= c!741234 e!2713062)))

(declare-fun b!4359511 () Bool)

(declare-fun call!303008 () List!49085)

(assert (=> b!4359511 (= e!2713058 call!303008)))

(declare-fun lt!1572092 () List!49088)

(declare-fun call!303010 () List!49088)

(assert (=> b!4359511 (= lt!1572092 call!303010)))

(declare-fun lt!1572089 () Unit!72045)

(declare-fun lemmaSubseqRefl!73 (List!49088) Unit!72045)

(assert (=> b!4359511 (= lt!1572089 (lemmaSubseqRefl!73 lt!1572092))))

(declare-fun subseq!589 (List!49088 List!49088) Bool)

(assert (=> b!4359511 (subseq!589 lt!1572092 lt!1572092)))

(declare-fun lt!1572086 () Unit!72045)

(assert (=> b!4359511 (= lt!1572086 lt!1572089)))

(declare-fun b!4359512 () Bool)

(assert (=> b!4359512 false))

(declare-fun lt!1572088 () Unit!72045)

(declare-fun lt!1572096 () Unit!72045)

(assert (=> b!4359512 (= lt!1572088 lt!1572096)))

(assert (=> b!4359512 (containsKey!717 (t!356005 (toList!2986 lt!1571642)) (_1!27481 (h!54518 (toList!2986 lt!1571642))))))

(assert (=> b!4359512 (= lt!1572096 (lemmaInGetKeysListThenContainsKey!130 (t!356005 (toList!2986 lt!1571642)) (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun lt!1572090 () Unit!72045)

(declare-fun lt!1572093 () Unit!72045)

(assert (=> b!4359512 (= lt!1572090 lt!1572093)))

(assert (=> b!4359512 (contains!11189 call!303010 (_1!27481 (h!54518 (toList!2986 lt!1571642))))))

(declare-fun lt!1572094 () List!49085)

(assert (=> b!4359512 (= lt!1572093 (lemmaInListThenGetKeysListContains!129 lt!1572094 (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(assert (=> b!4359512 (= lt!1572094 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571642)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun Unit!72108 () Unit!72045)

(assert (=> b!4359512 (= e!2713060 Unit!72108)))

(declare-fun b!4359513 () Bool)

(declare-fun e!2713056 () List!49085)

(assert (=> b!4359513 (= e!2713056 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571642)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun b!4359514 () Bool)

(assert (=> b!4359514 (= e!2713062 (not (containsKey!717 (toList!2986 lt!1571642) (_1!27481 lt!1571638))))))

(declare-fun b!4359515 () Bool)

(assert (=> b!4359515 (= e!2713056 Nil!48961)))

(declare-fun b!4359516 () Bool)

(declare-fun c!741232 () Bool)

(assert (=> b!4359516 (= c!741232 ((_ is Cons!48961) (toList!2986 lt!1571642)))))

(assert (=> b!4359516 (= e!2713059 e!2713057)))

(declare-fun bm!303002 () Bool)

(assert (=> bm!303002 (= call!303010 (getKeysList!132 (ite c!741231 (toList!2986 lt!1571642) lt!1572094)))))

(declare-fun b!4359517 () Bool)

(declare-fun res!1792198 () Bool)

(assert (=> b!4359517 (=> (not res!1792198) (not e!2713061))))

(assert (=> b!4359517 (= res!1792198 (contains!11188 lt!1572091 (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))

(declare-fun b!4359518 () Bool)

(assert (=> b!4359518 (= e!2713061 (= (content!7736 (getKeysList!132 lt!1572091)) ((_ map or) (content!7736 (getKeysList!132 (toList!2986 lt!1571642))) (store ((as const (Array K!10320 Bool)) false) (_1!27481 lt!1571638) true))))))

(declare-fun bm!303003 () Bool)

(declare-fun call!303009 () List!49085)

(assert (=> bm!303003 (= call!303007 call!303009)))

(declare-fun c!741235 () Bool)

(assert (=> bm!303003 (= c!741235 c!741232)))

(declare-fun bm!303004 () Bool)

(declare-fun $colon$colon!696 (List!49085 tuple2!48374) List!49085)

(assert (=> bm!303004 (= call!303008 ($colon$colon!696 (ite c!741231 (t!356005 (toList!2986 lt!1571642)) (ite c!741234 (toList!2986 lt!1571642) e!2713056)) (ite (or c!741231 c!741234) (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638)) (ite c!741232 (h!54518 (toList!2986 lt!1571642)) (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))))

(declare-fun b!4359519 () Bool)

(assert (=> b!4359519 (= e!2713059 call!303009)))

(declare-fun bm!303005 () Bool)

(assert (=> bm!303005 (= call!303009 call!303008)))

(declare-fun b!4359520 () Bool)

(assert (=> b!4359520 (= e!2713057 call!303007)))

(assert (= (and d!1289258 c!741231) b!4359511))

(assert (= (and d!1289258 (not c!741231)) b!4359510))

(assert (= (and b!4359510 res!1792197) b!4359514))

(assert (= (and b!4359510 c!741234) b!4359519))

(assert (= (and b!4359510 (not c!741234)) b!4359516))

(assert (= (and b!4359516 c!741232) b!4359509))

(assert (= (and b!4359516 (not c!741232)) b!4359520))

(assert (= (and b!4359509 c!741233) b!4359512))

(assert (= (and b!4359509 (not c!741233)) b!4359508))

(assert (= (or b!4359509 b!4359520) bm!303003))

(assert (= (and bm!303003 c!741235) b!4359513))

(assert (= (and bm!303003 (not c!741235)) b!4359515))

(assert (= (or b!4359519 bm!303003) bm!303005))

(assert (= (or b!4359511 b!4359512) bm!303002))

(assert (= (or b!4359511 bm!303005) bm!303004))

(assert (= (and d!1289258 res!1792199) b!4359507))

(assert (= (and b!4359507 res!1792196) b!4359517))

(assert (= (and b!4359517 res!1792198) b!4359518))

(declare-fun m!4976255 () Bool)

(assert (=> b!4359507 m!4976255))

(declare-fun m!4976257 () Bool)

(assert (=> b!4359511 m!4976257))

(declare-fun m!4976259 () Bool)

(assert (=> b!4359511 m!4976259))

(declare-fun m!4976261 () Bool)

(assert (=> bm!303002 m!4976261))

(declare-fun m!4976263 () Bool)

(assert (=> d!1289258 m!4976263))

(declare-fun m!4976265 () Bool)

(assert (=> d!1289258 m!4976265))

(declare-fun m!4976267 () Bool)

(assert (=> b!4359512 m!4976267))

(declare-fun m!4976269 () Bool)

(assert (=> b!4359512 m!4976269))

(declare-fun m!4976271 () Bool)

(assert (=> b!4359512 m!4976271))

(declare-fun m!4976273 () Bool)

(assert (=> b!4359512 m!4976273))

(declare-fun m!4976275 () Bool)

(assert (=> b!4359512 m!4976275))

(assert (=> b!4359513 m!4976275))

(declare-fun m!4976277 () Bool)

(assert (=> b!4359518 m!4976277))

(assert (=> b!4359518 m!4976277))

(declare-fun m!4976279 () Bool)

(assert (=> b!4359518 m!4976279))

(declare-fun m!4976281 () Bool)

(assert (=> b!4359518 m!4976281))

(assert (=> b!4359518 m!4976005))

(assert (=> b!4359518 m!4976005))

(declare-fun m!4976283 () Bool)

(assert (=> b!4359518 m!4976283))

(declare-fun m!4976285 () Bool)

(assert (=> b!4359514 m!4976285))

(assert (=> b!4359509 m!4976275))

(assert (=> b!4359509 m!4976275))

(declare-fun m!4976287 () Bool)

(assert (=> b!4359509 m!4976287))

(declare-fun m!4976289 () Bool)

(assert (=> bm!303004 m!4976289))

(declare-fun m!4976291 () Bool)

(assert (=> b!4359517 m!4976291))

(assert (=> d!1289222 d!1289258))

(declare-fun d!1289270 () Bool)

(declare-fun lt!1572107 () Bool)

(assert (=> d!1289270 (= lt!1572107 (select (content!7736 e!2712982) key!3918))))

(declare-fun e!2713076 () Bool)

(assert (=> d!1289270 (= lt!1572107 e!2713076)))

(declare-fun res!1792209 () Bool)

(assert (=> d!1289270 (=> (not res!1792209) (not e!2713076))))

(assert (=> d!1289270 (= res!1792209 ((_ is Cons!48964) e!2712982))))

(assert (=> d!1289270 (= (contains!11189 e!2712982 key!3918) lt!1572107)))

(declare-fun b!4359536 () Bool)

(declare-fun e!2713075 () Bool)

(assert (=> b!4359536 (= e!2713076 e!2713075)))

(declare-fun res!1792210 () Bool)

(assert (=> b!4359536 (=> res!1792210 e!2713075)))

(assert (=> b!4359536 (= res!1792210 (= (h!54523 e!2712982) key!3918))))

(declare-fun b!4359537 () Bool)

(assert (=> b!4359537 (= e!2713075 (contains!11189 (t!356008 e!2712982) key!3918))))

(assert (= (and d!1289270 res!1792209) b!4359536))

(assert (= (and b!4359536 (not res!1792210)) b!4359537))

(declare-fun m!4976311 () Bool)

(assert (=> d!1289270 m!4976311))

(declare-fun m!4976313 () Bool)

(assert (=> d!1289270 m!4976313))

(declare-fun m!4976315 () Bool)

(assert (=> b!4359537 m!4976315))

(assert (=> bm!302987 d!1289270))

(declare-fun d!1289274 () Bool)

(declare-fun noDuplicatedKeys!121 (List!49085) Bool)

(assert (=> d!1289274 (= (invariantList!684 (toList!2986 lt!1571952)) (noDuplicatedKeys!121 (toList!2986 lt!1571952)))))

(declare-fun bs!633259 () Bool)

(assert (= bs!633259 d!1289274))

(declare-fun m!4976317 () Bool)

(assert (=> bs!633259 m!4976317))

(assert (=> d!1289188 d!1289274))

(declare-fun d!1289276 () Bool)

(declare-fun res!1792211 () Bool)

(declare-fun e!2713081 () Bool)

(assert (=> d!1289276 (=> res!1792211 e!2713081)))

(assert (=> d!1289276 (= res!1792211 ((_ is Nil!48962) (toList!2985 lt!1571646)))))

(assert (=> d!1289276 (= (forall!9140 (toList!2985 lt!1571646) lambda!141161) e!2713081)))

(declare-fun b!4359546 () Bool)

(declare-fun e!2713082 () Bool)

(assert (=> b!4359546 (= e!2713081 e!2713082)))

(declare-fun res!1792212 () Bool)

(assert (=> b!4359546 (=> (not res!1792212) (not e!2713082))))

(assert (=> b!4359546 (= res!1792212 (dynLambda!20643 lambda!141161 (h!54519 (toList!2985 lt!1571646))))))

(declare-fun b!4359547 () Bool)

(assert (=> b!4359547 (= e!2713082 (forall!9140 (t!356006 (toList!2985 lt!1571646)) lambda!141161))))

(assert (= (and d!1289276 (not res!1792211)) b!4359546))

(assert (= (and b!4359546 res!1792212) b!4359547))

(declare-fun b_lambda!131557 () Bool)

(assert (=> (not b_lambda!131557) (not b!4359546)))

(declare-fun m!4976319 () Bool)

(assert (=> b!4359546 m!4976319))

(declare-fun m!4976321 () Bool)

(assert (=> b!4359547 m!4976321))

(assert (=> d!1289188 d!1289276))

(declare-fun d!1289278 () Bool)

(declare-fun res!1792213 () Bool)

(declare-fun e!2713083 () Bool)

(assert (=> d!1289278 (=> res!1792213 e!2713083)))

(assert (=> d!1289278 (= res!1792213 (not ((_ is Cons!48961) (_2!27482 (h!54519 (toList!2985 lt!1571637))))))))

(assert (=> d!1289278 (= (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lt!1571637)))) e!2713083)))

(declare-fun b!4359548 () Bool)

(declare-fun e!2713084 () Bool)

(assert (=> b!4359548 (= e!2713083 e!2713084)))

(declare-fun res!1792214 () Bool)

(assert (=> b!4359548 (=> (not res!1792214) (not e!2713084))))

(assert (=> b!4359548 (= res!1792214 (not (containsKey!714 (t!356005 (_2!27482 (h!54519 (toList!2985 lt!1571637)))) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571637))))))))))

(declare-fun b!4359549 () Bool)

(assert (=> b!4359549 (= e!2713084 (noDuplicateKeys!501 (t!356005 (_2!27482 (h!54519 (toList!2985 lt!1571637))))))))

(assert (= (and d!1289278 (not res!1792213)) b!4359548))

(assert (= (and b!4359548 res!1792214) b!4359549))

(declare-fun m!4976323 () Bool)

(assert (=> b!4359548 m!4976323))

(declare-fun m!4976325 () Bool)

(assert (=> b!4359549 m!4976325))

(assert (=> bs!633256 d!1289278))

(declare-fun d!1289280 () Bool)

(declare-fun lt!1572108 () Bool)

(assert (=> d!1289280 (= lt!1572108 (select (content!7736 (keys!16546 lt!1571642)) key!3918))))

(declare-fun e!2713086 () Bool)

(assert (=> d!1289280 (= lt!1572108 e!2713086)))

(declare-fun res!1792215 () Bool)

(assert (=> d!1289280 (=> (not res!1792215) (not e!2713086))))

(assert (=> d!1289280 (= res!1792215 ((_ is Cons!48964) (keys!16546 lt!1571642)))))

(assert (=> d!1289280 (= (contains!11189 (keys!16546 lt!1571642) key!3918) lt!1572108)))

(declare-fun b!4359550 () Bool)

(declare-fun e!2713085 () Bool)

(assert (=> b!4359550 (= e!2713086 e!2713085)))

(declare-fun res!1792216 () Bool)

(assert (=> b!4359550 (=> res!1792216 e!2713085)))

(assert (=> b!4359550 (= res!1792216 (= (h!54523 (keys!16546 lt!1571642)) key!3918))))

(declare-fun b!4359551 () Bool)

(assert (=> b!4359551 (= e!2713085 (contains!11189 (t!356008 (keys!16546 lt!1571642)) key!3918))))

(assert (= (and d!1289280 res!1792215) b!4359550))

(assert (= (and b!4359550 (not res!1792216)) b!4359551))

(assert (=> d!1289280 m!4976011))

(declare-fun m!4976327 () Bool)

(assert (=> d!1289280 m!4976327))

(declare-fun m!4976329 () Bool)

(assert (=> d!1289280 m!4976329))

(declare-fun m!4976331 () Bool)

(assert (=> b!4359551 m!4976331))

(assert (=> b!4359374 d!1289280))

(declare-fun bs!633260 () Bool)

(declare-fun b!4359553 () Bool)

(assert (= bs!633260 (and b!4359553 b!4359432)))

(declare-fun lambda!141184 () Int)

(assert (=> bs!633260 (= (= (toList!2986 lt!1571642) (toList!2986 lt!1571644)) (= lambda!141184 lambda!141182))))

(assert (=> b!4359553 true))

(declare-fun bs!633261 () Bool)

(declare-fun b!4359554 () Bool)

(assert (= bs!633261 (and b!4359554 b!4359433)))

(declare-fun lambda!141185 () Int)

(assert (=> bs!633261 (= lambda!141185 lambda!141183)))

(declare-fun d!1289282 () Bool)

(declare-fun e!2713087 () Bool)

(assert (=> d!1289282 e!2713087))

(declare-fun res!1792217 () Bool)

(assert (=> d!1289282 (=> (not res!1792217) (not e!2713087))))

(declare-fun lt!1572109 () List!49088)

(assert (=> d!1289282 (= res!1792217 (noDuplicate!605 lt!1572109))))

(assert (=> d!1289282 (= lt!1572109 (getKeysList!132 (toList!2986 lt!1571642)))))

(assert (=> d!1289282 (= (keys!16546 lt!1571642) lt!1572109)))

(declare-fun b!4359552 () Bool)

(declare-fun res!1792219 () Bool)

(assert (=> b!4359552 (=> (not res!1792219) (not e!2713087))))

(assert (=> b!4359552 (= res!1792219 (= (length!66 lt!1572109) (length!67 (toList!2986 lt!1571642))))))

(declare-fun res!1792218 () Bool)

(assert (=> b!4359553 (=> (not res!1792218) (not e!2713087))))

(assert (=> b!4359553 (= res!1792218 (forall!9143 lt!1572109 lambda!141184))))

(assert (=> b!4359554 (= e!2713087 (= (content!7736 lt!1572109) (content!7736 (map!10652 (toList!2986 lt!1571642) lambda!141185))))))

(assert (= (and d!1289282 res!1792217) b!4359552))

(assert (= (and b!4359552 res!1792219) b!4359553))

(assert (= (and b!4359553 res!1792218) b!4359554))

(declare-fun m!4976333 () Bool)

(assert (=> d!1289282 m!4976333))

(assert (=> d!1289282 m!4976005))

(declare-fun m!4976335 () Bool)

(assert (=> b!4359552 m!4976335))

(declare-fun m!4976337 () Bool)

(assert (=> b!4359552 m!4976337))

(declare-fun m!4976339 () Bool)

(assert (=> b!4359553 m!4976339))

(declare-fun m!4976341 () Bool)

(assert (=> b!4359554 m!4976341))

(declare-fun m!4976343 () Bool)

(assert (=> b!4359554 m!4976343))

(assert (=> b!4359554 m!4976343))

(declare-fun m!4976345 () Bool)

(assert (=> b!4359554 m!4976345))

(assert (=> b!4359374 d!1289282))

(declare-fun bs!633262 () Bool)

(declare-fun b!4359589 () Bool)

(assert (= bs!633262 (and b!4359589 b!4359432)))

(declare-fun lambda!141194 () Int)

(assert (=> bs!633262 (= (= (t!356005 (toList!2986 lt!1571629)) (toList!2986 lt!1571644)) (= lambda!141194 lambda!141182))))

(declare-fun bs!633263 () Bool)

(assert (= bs!633263 (and b!4359589 b!4359553)))

(assert (=> bs!633263 (= (= (t!356005 (toList!2986 lt!1571629)) (toList!2986 lt!1571642)) (= lambda!141194 lambda!141184))))

(assert (=> b!4359589 true))

(declare-fun bs!633264 () Bool)

(declare-fun b!4359587 () Bool)

(assert (= bs!633264 (and b!4359587 b!4359432)))

(declare-fun lambda!141195 () Int)

(assert (=> bs!633264 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629))) (toList!2986 lt!1571644)) (= lambda!141195 lambda!141182))))

(declare-fun bs!633265 () Bool)

(assert (= bs!633265 (and b!4359587 b!4359553)))

(assert (=> bs!633265 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629))) (toList!2986 lt!1571642)) (= lambda!141195 lambda!141184))))

(declare-fun bs!633266 () Bool)

(assert (= bs!633266 (and b!4359587 b!4359589)))

(assert (=> bs!633266 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629))) (t!356005 (toList!2986 lt!1571629))) (= lambda!141195 lambda!141194))))

(assert (=> b!4359587 true))

(declare-fun bs!633267 () Bool)

(declare-fun b!4359591 () Bool)

(assert (= bs!633267 (and b!4359591 b!4359432)))

(declare-fun lambda!141196 () Int)

(assert (=> bs!633267 (= (= (toList!2986 lt!1571629) (toList!2986 lt!1571644)) (= lambda!141196 lambda!141182))))

(declare-fun bs!633268 () Bool)

(assert (= bs!633268 (and b!4359591 b!4359553)))

(assert (=> bs!633268 (= (= (toList!2986 lt!1571629) (toList!2986 lt!1571642)) (= lambda!141196 lambda!141184))))

(declare-fun bs!633269 () Bool)

(assert (= bs!633269 (and b!4359591 b!4359589)))

(assert (=> bs!633269 (= (= (toList!2986 lt!1571629) (t!356005 (toList!2986 lt!1571629))) (= lambda!141196 lambda!141194))))

(declare-fun bs!633270 () Bool)

(assert (= bs!633270 (and b!4359591 b!4359587)))

(assert (=> bs!633270 (= (= (toList!2986 lt!1571629) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141196 lambda!141195))))

(assert (=> b!4359591 true))

(declare-fun bs!633271 () Bool)

(declare-fun b!4359583 () Bool)

(assert (= bs!633271 (and b!4359583 b!4359433)))

(declare-fun lambda!141197 () Int)

(assert (=> bs!633271 (= lambda!141197 lambda!141183)))

(declare-fun bs!633272 () Bool)

(assert (= bs!633272 (and b!4359583 b!4359554)))

(assert (=> bs!633272 (= lambda!141197 lambda!141185)))

(declare-fun lt!1572131 () List!49088)

(declare-fun e!2713104 () Bool)

(assert (=> b!4359583 (= e!2713104 (= (content!7736 lt!1572131) (content!7736 (map!10652 (toList!2986 lt!1571629) lambda!141197))))))

(declare-fun b!4359584 () Bool)

(declare-fun e!2713103 () Unit!72045)

(declare-fun Unit!72110 () Unit!72045)

(assert (=> b!4359584 (= e!2713103 Unit!72110)))

(declare-fun d!1289284 () Bool)

(assert (=> d!1289284 e!2713104))

(declare-fun res!1792234 () Bool)

(assert (=> d!1289284 (=> (not res!1792234) (not e!2713104))))

(assert (=> d!1289284 (= res!1792234 (noDuplicate!605 lt!1572131))))

(declare-fun e!2713101 () List!49088)

(assert (=> d!1289284 (= lt!1572131 e!2713101)))

(declare-fun c!741251 () Bool)

(assert (=> d!1289284 (= c!741251 ((_ is Cons!48961) (toList!2986 lt!1571629)))))

(assert (=> d!1289284 (invariantList!684 (toList!2986 lt!1571629))))

(assert (=> d!1289284 (= (getKeysList!132 (toList!2986 lt!1571629)) lt!1572131)))

(declare-fun b!4359585 () Bool)

(declare-fun e!2713102 () Unit!72045)

(declare-fun Unit!72112 () Unit!72045)

(assert (=> b!4359585 (= e!2713102 Unit!72112)))

(declare-fun b!4359586 () Bool)

(assert (=> b!4359586 false))

(declare-fun Unit!72113 () Unit!72045)

(assert (=> b!4359586 (= e!2713103 Unit!72113)))

(assert (=> b!4359587 (= e!2713101 (Cons!48964 (_1!27481 (h!54518 (toList!2986 lt!1571629))) (getKeysList!132 (t!356005 (toList!2986 lt!1571629)))))))

(declare-fun c!741252 () Bool)

(assert (=> b!4359587 (= c!741252 (containsKey!717 (t!356005 (toList!2986 lt!1571629)) (_1!27481 (h!54518 (toList!2986 lt!1571629)))))))

(declare-fun lt!1572133 () Unit!72045)

(assert (=> b!4359587 (= lt!1572133 e!2713103)))

(declare-fun c!741253 () Bool)

(assert (=> b!4359587 (= c!741253 (contains!11189 (getKeysList!132 (t!356005 (toList!2986 lt!1571629))) (_1!27481 (h!54518 (toList!2986 lt!1571629)))))))

(declare-fun lt!1572130 () Unit!72045)

(assert (=> b!4359587 (= lt!1572130 e!2713102)))

(declare-fun lt!1572128 () List!49088)

(assert (=> b!4359587 (= lt!1572128 (getKeysList!132 (t!356005 (toList!2986 lt!1571629))))))

(declare-fun lt!1572129 () Unit!72045)

(declare-fun lemmaForallContainsAddHeadPreserves!27 (List!49085 List!49088 tuple2!48374) Unit!72045)

(assert (=> b!4359587 (= lt!1572129 (lemmaForallContainsAddHeadPreserves!27 (t!356005 (toList!2986 lt!1571629)) lt!1572128 (h!54518 (toList!2986 lt!1571629))))))

(assert (=> b!4359587 (forall!9143 lt!1572128 lambda!141195)))

(declare-fun lt!1572132 () Unit!72045)

(assert (=> b!4359587 (= lt!1572132 lt!1572129)))

(declare-fun b!4359588 () Bool)

(declare-fun res!1792232 () Bool)

(assert (=> b!4359588 (=> (not res!1792232) (not e!2713104))))

(assert (=> b!4359588 (= res!1792232 (= (length!66 lt!1572131) (length!67 (toList!2986 lt!1571629))))))

(assert (=> b!4359589 false))

(declare-fun lt!1572127 () Unit!72045)

(declare-fun forallContained!1784 (List!49088 Int K!10320) Unit!72045)

(assert (=> b!4359589 (= lt!1572127 (forallContained!1784 (getKeysList!132 (t!356005 (toList!2986 lt!1571629))) lambda!141194 (_1!27481 (h!54518 (toList!2986 lt!1571629)))))))

(declare-fun Unit!72114 () Unit!72045)

(assert (=> b!4359589 (= e!2713102 Unit!72114)))

(declare-fun b!4359590 () Bool)

(assert (=> b!4359590 (= e!2713101 Nil!48964)))

(declare-fun res!1792233 () Bool)

(assert (=> b!4359591 (=> (not res!1792233) (not e!2713104))))

(assert (=> b!4359591 (= res!1792233 (forall!9143 lt!1572131 lambda!141196))))

(assert (= (and d!1289284 c!741251) b!4359587))

(assert (= (and d!1289284 (not c!741251)) b!4359590))

(assert (= (and b!4359587 c!741252) b!4359586))

(assert (= (and b!4359587 (not c!741252)) b!4359584))

(assert (= (and b!4359587 c!741253) b!4359589))

(assert (= (and b!4359587 (not c!741253)) b!4359585))

(assert (= (and d!1289284 res!1792234) b!4359588))

(assert (= (and b!4359588 res!1792232) b!4359591))

(assert (= (and b!4359591 res!1792233) b!4359583))

(declare-fun m!4976357 () Bool)

(assert (=> b!4359591 m!4976357))

(declare-fun m!4976359 () Bool)

(assert (=> b!4359583 m!4976359))

(declare-fun m!4976361 () Bool)

(assert (=> b!4359583 m!4976361))

(assert (=> b!4359583 m!4976361))

(declare-fun m!4976363 () Bool)

(assert (=> b!4359583 m!4976363))

(declare-fun m!4976365 () Bool)

(assert (=> b!4359588 m!4976365))

(declare-fun m!4976367 () Bool)

(assert (=> b!4359588 m!4976367))

(declare-fun m!4976369 () Bool)

(assert (=> d!1289284 m!4976369))

(declare-fun m!4976371 () Bool)

(assert (=> d!1289284 m!4976371))

(declare-fun m!4976373 () Bool)

(assert (=> b!4359589 m!4976373))

(assert (=> b!4359589 m!4976373))

(declare-fun m!4976375 () Bool)

(assert (=> b!4359589 m!4976375))

(assert (=> b!4359587 m!4976373))

(declare-fun m!4976377 () Bool)

(assert (=> b!4359587 m!4976377))

(declare-fun m!4976379 () Bool)

(assert (=> b!4359587 m!4976379))

(assert (=> b!4359587 m!4976373))

(declare-fun m!4976381 () Bool)

(assert (=> b!4359587 m!4976381))

(declare-fun m!4976383 () Bool)

(assert (=> b!4359587 m!4976383))

(assert (=> b!4359390 d!1289284))

(declare-fun b!4359594 () Bool)

(declare-fun e!2713105 () List!49085)

(assert (=> b!4359594 (= e!2713105 (t!356005 (t!356005 lt!1571634)))))

(declare-fun b!4359595 () Bool)

(declare-fun e!2713106 () List!49085)

(assert (=> b!4359595 (= e!2713105 e!2713106)))

(declare-fun c!741254 () Bool)

(assert (=> b!4359595 (= c!741254 ((_ is Cons!48961) (t!356005 lt!1571634)))))

(declare-fun d!1289290 () Bool)

(declare-fun lt!1572134 () List!49085)

(assert (=> d!1289290 (not (containsKey!714 lt!1572134 key!3918))))

(assert (=> d!1289290 (= lt!1572134 e!2713105)))

(declare-fun c!741255 () Bool)

(assert (=> d!1289290 (= c!741255 (and ((_ is Cons!48961) (t!356005 lt!1571634)) (= (_1!27481 (h!54518 (t!356005 lt!1571634))) key!3918)))))

(assert (=> d!1289290 (noDuplicateKeys!501 (t!356005 lt!1571634))))

(assert (=> d!1289290 (= (removePairForKey!471 (t!356005 lt!1571634) key!3918) lt!1572134)))

(declare-fun b!4359597 () Bool)

(assert (=> b!4359597 (= e!2713106 Nil!48961)))

(declare-fun b!4359596 () Bool)

(assert (=> b!4359596 (= e!2713106 (Cons!48961 (h!54518 (t!356005 lt!1571634)) (removePairForKey!471 (t!356005 (t!356005 lt!1571634)) key!3918)))))

(assert (= (and d!1289290 c!741255) b!4359594))

(assert (= (and d!1289290 (not c!741255)) b!4359595))

(assert (= (and b!4359595 c!741254) b!4359596))

(assert (= (and b!4359595 (not c!741254)) b!4359597))

(declare-fun m!4976385 () Bool)

(assert (=> d!1289290 m!4976385))

(declare-fun m!4976387 () Bool)

(assert (=> d!1289290 m!4976387))

(declare-fun m!4976389 () Bool)

(assert (=> b!4359596 m!4976389))

(assert (=> b!4359211 d!1289290))

(declare-fun d!1289292 () Bool)

(declare-fun res!1792239 () Bool)

(declare-fun e!2713111 () Bool)

(assert (=> d!1289292 (=> res!1792239 e!2713111)))

(assert (=> d!1289292 (= res!1792239 ((_ is Nil!48961) (toList!2986 lt!1571642)))))

(assert (=> d!1289292 (= (forall!9142 (toList!2986 lt!1571642) (ite c!741204 lambda!141167 lambda!141169)) e!2713111)))

(declare-fun b!4359602 () Bool)

(declare-fun e!2713112 () Bool)

(assert (=> b!4359602 (= e!2713111 e!2713112)))

(declare-fun res!1792240 () Bool)

(assert (=> b!4359602 (=> (not res!1792240) (not e!2713112))))

(declare-fun dynLambda!20645 (Int tuple2!48374) Bool)

(assert (=> b!4359602 (= res!1792240 (dynLambda!20645 (ite c!741204 lambda!141167 lambda!141169) (h!54518 (toList!2986 lt!1571642))))))

(declare-fun b!4359603 () Bool)

(assert (=> b!4359603 (= e!2713112 (forall!9142 (t!356005 (toList!2986 lt!1571642)) (ite c!741204 lambda!141167 lambda!141169)))))

(assert (= (and d!1289292 (not res!1792239)) b!4359602))

(assert (= (and b!4359602 res!1792240) b!4359603))

(declare-fun b_lambda!131559 () Bool)

(assert (=> (not b_lambda!131559) (not b!4359602)))

(declare-fun m!4976391 () Bool)

(assert (=> b!4359602 m!4976391))

(declare-fun m!4976393 () Bool)

(assert (=> b!4359603 m!4976393))

(assert (=> bm!302989 d!1289292))

(declare-fun d!1289294 () Bool)

(declare-fun c!741258 () Bool)

(assert (=> d!1289294 (= c!741258 ((_ is Nil!48961) (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643))))))

(declare-fun e!2713115 () (InoxSet tuple2!48374))

(assert (=> d!1289294 (= (content!7735 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643))) e!2713115)))

(declare-fun b!4359608 () Bool)

(assert (=> b!4359608 (= e!2713115 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4359609 () Bool)

(assert (=> b!4359609 (= e!2713115 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643))) true) (content!7735 (t!356005 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571643))))))))

(assert (= (and d!1289294 c!741258) b!4359608))

(assert (= (and d!1289294 (not c!741258)) b!4359609))

(declare-fun m!4976395 () Bool)

(assert (=> b!4359609 m!4976395))

(declare-fun m!4976397 () Bool)

(assert (=> b!4359609 m!4976397))

(assert (=> d!1289214 d!1289294))

(declare-fun d!1289296 () Bool)

(declare-fun c!741259 () Bool)

(assert (=> d!1289296 (= c!741259 ((_ is Nil!48961) (toList!2986 (+!660 lt!1571630 lt!1571638))))))

(declare-fun e!2713116 () (InoxSet tuple2!48374))

(assert (=> d!1289296 (= (content!7735 (toList!2986 (+!660 lt!1571630 lt!1571638))) e!2713116)))

(declare-fun b!4359610 () Bool)

(assert (=> b!4359610 (= e!2713116 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4359611 () Bool)

(assert (=> b!4359611 (= e!2713116 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 (+!660 lt!1571630 lt!1571638))) true) (content!7735 (t!356005 (toList!2986 (+!660 lt!1571630 lt!1571638))))))))

(assert (= (and d!1289296 c!741259) b!4359610))

(assert (= (and d!1289296 (not c!741259)) b!4359611))

(declare-fun m!4976399 () Bool)

(assert (=> b!4359611 m!4976399))

(declare-fun m!4976401 () Bool)

(assert (=> b!4359611 m!4976401))

(assert (=> d!1289214 d!1289296))

(declare-fun d!1289298 () Bool)

(declare-fun res!1792245 () Bool)

(declare-fun e!2713121 () Bool)

(assert (=> d!1289298 (=> res!1792245 e!2713121)))

(assert (=> d!1289298 (= res!1792245 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)))))

(assert (=> d!1289298 (= (containsKey!716 (toList!2985 lm!1707) hash!377) e!2713121)))

(declare-fun b!4359616 () Bool)

(declare-fun e!2713122 () Bool)

(assert (=> b!4359616 (= e!2713121 e!2713122)))

(declare-fun res!1792246 () Bool)

(assert (=> b!4359616 (=> (not res!1792246) (not e!2713122))))

(assert (=> b!4359616 (= res!1792246 (and (or (not ((_ is Cons!48962) (toList!2985 lm!1707))) (bvsle (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)) ((_ is Cons!48962) (toList!2985 lm!1707)) (bvslt (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)))))

(declare-fun b!4359617 () Bool)

(assert (=> b!4359617 (= e!2713122 (containsKey!716 (t!356006 (toList!2985 lm!1707)) hash!377))))

(assert (= (and d!1289298 (not res!1792245)) b!4359616))

(assert (= (and b!4359616 res!1792246) b!4359617))

(declare-fun m!4976403 () Bool)

(assert (=> b!4359617 m!4976403))

(assert (=> d!1289112 d!1289298))

(declare-fun d!1289300 () Bool)

(declare-fun res!1792247 () Bool)

(declare-fun e!2713123 () Bool)

(assert (=> d!1289300 (=> res!1792247 e!2713123)))

(assert (=> d!1289300 (= res!1792247 ((_ is Nil!48961) (toList!2986 lt!1571642)))))

(assert (=> d!1289300 (= (forall!9142 (toList!2986 lt!1571642) lambda!141169) e!2713123)))

(declare-fun b!4359618 () Bool)

(declare-fun e!2713124 () Bool)

(assert (=> b!4359618 (= e!2713123 e!2713124)))

(declare-fun res!1792248 () Bool)

(assert (=> b!4359618 (=> (not res!1792248) (not e!2713124))))

(assert (=> b!4359618 (= res!1792248 (dynLambda!20645 lambda!141169 (h!54518 (toList!2986 lt!1571642))))))

(declare-fun b!4359619 () Bool)

(assert (=> b!4359619 (= e!2713124 (forall!9142 (t!356005 (toList!2986 lt!1571642)) lambda!141169))))

(assert (= (and d!1289300 (not res!1792247)) b!4359618))

(assert (= (and b!4359618 res!1792248) b!4359619))

(declare-fun b_lambda!131561 () Bool)

(assert (=> (not b_lambda!131561) (not b!4359618)))

(declare-fun m!4976405 () Bool)

(assert (=> b!4359618 m!4976405))

(declare-fun m!4976407 () Bool)

(assert (=> b!4359619 m!4976407))

(assert (=> b!4359395 d!1289300))

(declare-fun b!4359620 () Bool)

(declare-fun e!2713130 () Bool)

(assert (=> b!4359620 (= e!2713130 (not (contains!11189 (keys!16546 lt!1571962) (_1!27481 lt!1571638))))))

(declare-fun b!4359621 () Bool)

(assert (=> b!4359621 false))

(declare-fun lt!1572137 () Unit!72045)

(declare-fun lt!1572136 () Unit!72045)

(assert (=> b!4359621 (= lt!1572137 lt!1572136)))

(assert (=> b!4359621 (containsKey!717 (toList!2986 lt!1571962) (_1!27481 lt!1571638))))

(assert (=> b!4359621 (= lt!1572136 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571962) (_1!27481 lt!1571638)))))

(declare-fun e!2713126 () Unit!72045)

(declare-fun Unit!72117 () Unit!72045)

(assert (=> b!4359621 (= e!2713126 Unit!72117)))

(declare-fun b!4359622 () Bool)

(declare-fun e!2713127 () List!49088)

(assert (=> b!4359622 (= e!2713127 (keys!16546 lt!1571962))))

(declare-fun b!4359623 () Bool)

(declare-fun e!2713125 () Bool)

(assert (=> b!4359623 (= e!2713125 (contains!11189 (keys!16546 lt!1571962) (_1!27481 lt!1571638)))))

(declare-fun b!4359624 () Bool)

(declare-fun e!2713129 () Unit!72045)

(declare-fun lt!1572138 () Unit!72045)

(assert (=> b!4359624 (= e!2713129 lt!1572138)))

(declare-fun lt!1572140 () Unit!72045)

(assert (=> b!4359624 (= lt!1572140 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571962) (_1!27481 lt!1571638)))))

(assert (=> b!4359624 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571962) (_1!27481 lt!1571638)))))

(declare-fun lt!1572139 () Unit!72045)

(assert (=> b!4359624 (= lt!1572139 lt!1572140)))

(assert (=> b!4359624 (= lt!1572138 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571962) (_1!27481 lt!1571638)))))

(declare-fun call!303012 () Bool)

(assert (=> b!4359624 call!303012))

(declare-fun b!4359625 () Bool)

(declare-fun Unit!72118 () Unit!72045)

(assert (=> b!4359625 (= e!2713126 Unit!72118)))

(declare-fun b!4359626 () Bool)

(assert (=> b!4359626 (= e!2713127 (getKeysList!132 (toList!2986 lt!1571962)))))

(declare-fun d!1289302 () Bool)

(declare-fun e!2713128 () Bool)

(assert (=> d!1289302 e!2713128))

(declare-fun res!1792251 () Bool)

(assert (=> d!1289302 (=> res!1792251 e!2713128)))

(assert (=> d!1289302 (= res!1792251 e!2713130)))

(declare-fun res!1792249 () Bool)

(assert (=> d!1289302 (=> (not res!1792249) (not e!2713130))))

(declare-fun lt!1572135 () Bool)

(assert (=> d!1289302 (= res!1792249 (not lt!1572135))))

(declare-fun lt!1572142 () Bool)

(assert (=> d!1289302 (= lt!1572135 lt!1572142)))

(declare-fun lt!1572141 () Unit!72045)

(assert (=> d!1289302 (= lt!1572141 e!2713129)))

(declare-fun c!741260 () Bool)

(assert (=> d!1289302 (= c!741260 lt!1572142)))

(assert (=> d!1289302 (= lt!1572142 (containsKey!717 (toList!2986 lt!1571962) (_1!27481 lt!1571638)))))

(assert (=> d!1289302 (= (contains!11183 lt!1571962 (_1!27481 lt!1571638)) lt!1572135)))

(declare-fun bm!303007 () Bool)

(assert (=> bm!303007 (= call!303012 (contains!11189 e!2713127 (_1!27481 lt!1571638)))))

(declare-fun c!741261 () Bool)

(assert (=> bm!303007 (= c!741261 c!741260)))

(declare-fun b!4359627 () Bool)

(assert (=> b!4359627 (= e!2713129 e!2713126)))

(declare-fun c!741262 () Bool)

(assert (=> b!4359627 (= c!741262 call!303012)))

(declare-fun b!4359628 () Bool)

(assert (=> b!4359628 (= e!2713128 e!2713125)))

(declare-fun res!1792250 () Bool)

(assert (=> b!4359628 (=> (not res!1792250) (not e!2713125))))

(assert (=> b!4359628 (= res!1792250 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571962) (_1!27481 lt!1571638))))))

(assert (= (and d!1289302 c!741260) b!4359624))

(assert (= (and d!1289302 (not c!741260)) b!4359627))

(assert (= (and b!4359627 c!741262) b!4359621))

(assert (= (and b!4359627 (not c!741262)) b!4359625))

(assert (= (or b!4359624 b!4359627) bm!303007))

(assert (= (and bm!303007 c!741261) b!4359626))

(assert (= (and bm!303007 (not c!741261)) b!4359622))

(assert (= (and d!1289302 res!1792249) b!4359620))

(assert (= (and d!1289302 (not res!1792251)) b!4359628))

(assert (= (and b!4359628 res!1792250) b!4359623))

(declare-fun m!4976409 () Bool)

(assert (=> b!4359626 m!4976409))

(declare-fun m!4976411 () Bool)

(assert (=> b!4359621 m!4976411))

(declare-fun m!4976413 () Bool)

(assert (=> b!4359621 m!4976413))

(declare-fun m!4976415 () Bool)

(assert (=> b!4359622 m!4976415))

(assert (=> b!4359623 m!4976415))

(assert (=> b!4359623 m!4976415))

(declare-fun m!4976417 () Bool)

(assert (=> b!4359623 m!4976417))

(assert (=> d!1289302 m!4976411))

(assert (=> b!4359620 m!4976415))

(assert (=> b!4359620 m!4976415))

(assert (=> b!4359620 m!4976417))

(declare-fun m!4976419 () Bool)

(assert (=> b!4359624 m!4976419))

(assert (=> b!4359624 m!4976001))

(assert (=> b!4359624 m!4976001))

(declare-fun m!4976421 () Bool)

(assert (=> b!4359624 m!4976421))

(declare-fun m!4976423 () Bool)

(assert (=> b!4359624 m!4976423))

(declare-fun m!4976425 () Bool)

(assert (=> bm!303007 m!4976425))

(assert (=> b!4359628 m!4976001))

(assert (=> b!4359628 m!4976001))

(assert (=> b!4359628 m!4976421))

(assert (=> d!1289200 d!1289302))

(declare-fun b!4359629 () Bool)

(declare-fun e!2713131 () Option!10481)

(assert (=> b!4359629 (= e!2713131 (Some!10480 (_2!27481 (h!54518 lt!1571963))))))

(declare-fun d!1289304 () Bool)

(declare-fun c!741263 () Bool)

(assert (=> d!1289304 (= c!741263 (and ((_ is Cons!48961) lt!1571963) (= (_1!27481 (h!54518 lt!1571963)) (_1!27481 lt!1571638))))))

(assert (=> d!1289304 (= (getValueByKey!467 lt!1571963 (_1!27481 lt!1571638)) e!2713131)))

(declare-fun b!4359632 () Bool)

(declare-fun e!2713132 () Option!10481)

(assert (=> b!4359632 (= e!2713132 None!10480)))

(declare-fun b!4359630 () Bool)

(assert (=> b!4359630 (= e!2713131 e!2713132)))

(declare-fun c!741264 () Bool)

(assert (=> b!4359630 (= c!741264 (and ((_ is Cons!48961) lt!1571963) (not (= (_1!27481 (h!54518 lt!1571963)) (_1!27481 lt!1571638)))))))

(declare-fun b!4359631 () Bool)

(assert (=> b!4359631 (= e!2713132 (getValueByKey!467 (t!356005 lt!1571963) (_1!27481 lt!1571638)))))

(assert (= (and d!1289304 c!741263) b!4359629))

(assert (= (and d!1289304 (not c!741263)) b!4359630))

(assert (= (and b!4359630 c!741264) b!4359631))

(assert (= (and b!4359630 (not c!741264)) b!4359632))

(declare-fun m!4976427 () Bool)

(assert (=> b!4359631 m!4976427))

(assert (=> d!1289200 d!1289304))

(declare-fun d!1289306 () Bool)

(assert (=> d!1289306 (= (getValueByKey!467 lt!1571963 (_1!27481 lt!1571638)) (Some!10480 (_2!27481 lt!1571638)))))

(declare-fun lt!1572143 () Unit!72045)

(assert (=> d!1289306 (= lt!1572143 (choose!26980 lt!1571963 (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun e!2713133 () Bool)

(assert (=> d!1289306 e!2713133))

(declare-fun res!1792252 () Bool)

(assert (=> d!1289306 (=> (not res!1792252) (not e!2713133))))

(assert (=> d!1289306 (= res!1792252 (invariantList!684 lt!1571963))))

(assert (=> d!1289306 (= (lemmaContainsTupThenGetReturnValue!241 lt!1571963 (_1!27481 lt!1571638) (_2!27481 lt!1571638)) lt!1572143)))

(declare-fun b!4359633 () Bool)

(declare-fun res!1792253 () Bool)

(assert (=> b!4359633 (=> (not res!1792253) (not e!2713133))))

(assert (=> b!4359633 (= res!1792253 (containsKey!717 lt!1571963 (_1!27481 lt!1571638)))))

(declare-fun b!4359634 () Bool)

(assert (=> b!4359634 (= e!2713133 (contains!11188 lt!1571963 (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))

(assert (= (and d!1289306 res!1792252) b!4359633))

(assert (= (and b!4359633 res!1792253) b!4359634))

(assert (=> d!1289306 m!4975995))

(declare-fun m!4976429 () Bool)

(assert (=> d!1289306 m!4976429))

(declare-fun m!4976431 () Bool)

(assert (=> d!1289306 m!4976431))

(declare-fun m!4976433 () Bool)

(assert (=> b!4359633 m!4976433))

(declare-fun m!4976435 () Bool)

(assert (=> b!4359634 m!4976435))

(assert (=> d!1289200 d!1289306))

(declare-fun b!4359635 () Bool)

(declare-fun res!1792254 () Bool)

(declare-fun e!2713139 () Bool)

(assert (=> b!4359635 (=> (not res!1792254) (not e!2713139))))

(declare-fun lt!1572149 () List!49085)

(assert (=> b!4359635 (= res!1792254 (containsKey!717 lt!1572149 (_1!27481 lt!1571638)))))

(declare-fun b!4359636 () Bool)

(declare-fun e!2713138 () Unit!72045)

(declare-fun Unit!72119 () Unit!72045)

(assert (=> b!4359636 (= e!2713138 Unit!72119)))

(declare-fun d!1289308 () Bool)

(assert (=> d!1289308 e!2713139))

(declare-fun res!1792257 () Bool)

(assert (=> d!1289308 (=> (not res!1792257) (not e!2713139))))

(assert (=> d!1289308 (= res!1792257 (invariantList!684 lt!1572149))))

(declare-fun e!2713136 () List!49085)

(assert (=> d!1289308 (= lt!1572149 e!2713136)))

(declare-fun c!741265 () Bool)

(assert (=> d!1289308 (= c!741265 (and ((_ is Cons!48961) (toList!2986 lt!1571630)) (= (_1!27481 (h!54518 (toList!2986 lt!1571630))) (_1!27481 lt!1571638))))))

(assert (=> d!1289308 (invariantList!684 (toList!2986 lt!1571630))))

(assert (=> d!1289308 (= (insertNoDuplicatedKeys!108 (toList!2986 lt!1571630) (_1!27481 lt!1571638) (_2!27481 lt!1571638)) lt!1572149)))

(declare-fun b!4359637 () Bool)

(declare-fun e!2713135 () List!49085)

(declare-fun lt!1572145 () List!49085)

(assert (=> b!4359637 (= e!2713135 lt!1572145)))

(declare-fun call!303013 () List!49085)

(assert (=> b!4359637 (= lt!1572145 call!303013)))

(declare-fun c!741267 () Bool)

(assert (=> b!4359637 (= c!741267 (containsKey!717 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571630)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)) (_1!27481 (h!54518 (toList!2986 lt!1571630)))))))

(declare-fun lt!1572153 () Unit!72045)

(assert (=> b!4359637 (= lt!1572153 e!2713138)))

(declare-fun b!4359638 () Bool)

(declare-fun e!2713137 () List!49085)

(assert (=> b!4359638 (= e!2713136 e!2713137)))

(declare-fun res!1792255 () Bool)

(assert (=> b!4359638 (= res!1792255 ((_ is Cons!48961) (toList!2986 lt!1571630)))))

(declare-fun e!2713140 () Bool)

(assert (=> b!4359638 (=> (not res!1792255) (not e!2713140))))

(declare-fun c!741268 () Bool)

(assert (=> b!4359638 (= c!741268 e!2713140)))

(declare-fun b!4359639 () Bool)

(declare-fun call!303014 () List!49085)

(assert (=> b!4359639 (= e!2713136 call!303014)))

(declare-fun lt!1572150 () List!49088)

(declare-fun call!303016 () List!49088)

(assert (=> b!4359639 (= lt!1572150 call!303016)))

(declare-fun lt!1572147 () Unit!72045)

(assert (=> b!4359639 (= lt!1572147 (lemmaSubseqRefl!73 lt!1572150))))

(assert (=> b!4359639 (subseq!589 lt!1572150 lt!1572150)))

(declare-fun lt!1572144 () Unit!72045)

(assert (=> b!4359639 (= lt!1572144 lt!1572147)))

(declare-fun b!4359640 () Bool)

(assert (=> b!4359640 false))

(declare-fun lt!1572146 () Unit!72045)

(declare-fun lt!1572154 () Unit!72045)

(assert (=> b!4359640 (= lt!1572146 lt!1572154)))

(assert (=> b!4359640 (containsKey!717 (t!356005 (toList!2986 lt!1571630)) (_1!27481 (h!54518 (toList!2986 lt!1571630))))))

(assert (=> b!4359640 (= lt!1572154 (lemmaInGetKeysListThenContainsKey!130 (t!356005 (toList!2986 lt!1571630)) (_1!27481 (h!54518 (toList!2986 lt!1571630)))))))

(declare-fun lt!1572148 () Unit!72045)

(declare-fun lt!1572151 () Unit!72045)

(assert (=> b!4359640 (= lt!1572148 lt!1572151)))

(assert (=> b!4359640 (contains!11189 call!303016 (_1!27481 (h!54518 (toList!2986 lt!1571630))))))

(declare-fun lt!1572152 () List!49085)

(assert (=> b!4359640 (= lt!1572151 (lemmaInListThenGetKeysListContains!129 lt!1572152 (_1!27481 (h!54518 (toList!2986 lt!1571630)))))))

(assert (=> b!4359640 (= lt!1572152 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571630)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun Unit!72120 () Unit!72045)

(assert (=> b!4359640 (= e!2713138 Unit!72120)))

(declare-fun b!4359641 () Bool)

(declare-fun e!2713134 () List!49085)

(assert (=> b!4359641 (= e!2713134 (insertNoDuplicatedKeys!108 (t!356005 (toList!2986 lt!1571630)) (_1!27481 lt!1571638) (_2!27481 lt!1571638)))))

(declare-fun b!4359642 () Bool)

(assert (=> b!4359642 (= e!2713140 (not (containsKey!717 (toList!2986 lt!1571630) (_1!27481 lt!1571638))))))

(declare-fun b!4359643 () Bool)

(assert (=> b!4359643 (= e!2713134 Nil!48961)))

(declare-fun b!4359644 () Bool)

(declare-fun c!741266 () Bool)

(assert (=> b!4359644 (= c!741266 ((_ is Cons!48961) (toList!2986 lt!1571630)))))

(assert (=> b!4359644 (= e!2713137 e!2713135)))

(declare-fun bm!303008 () Bool)

(assert (=> bm!303008 (= call!303016 (getKeysList!132 (ite c!741265 (toList!2986 lt!1571630) lt!1572152)))))

(declare-fun b!4359645 () Bool)

(declare-fun res!1792256 () Bool)

(assert (=> b!4359645 (=> (not res!1792256) (not e!2713139))))

(assert (=> b!4359645 (= res!1792256 (contains!11188 lt!1572149 (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))

(declare-fun b!4359646 () Bool)

(assert (=> b!4359646 (= e!2713139 (= (content!7736 (getKeysList!132 lt!1572149)) ((_ map or) (content!7736 (getKeysList!132 (toList!2986 lt!1571630))) (store ((as const (Array K!10320 Bool)) false) (_1!27481 lt!1571638) true))))))

(declare-fun bm!303009 () Bool)

(declare-fun call!303015 () List!49085)

(assert (=> bm!303009 (= call!303013 call!303015)))

(declare-fun c!741269 () Bool)

(assert (=> bm!303009 (= c!741269 c!741266)))

(declare-fun bm!303010 () Bool)

(assert (=> bm!303010 (= call!303014 ($colon$colon!696 (ite c!741265 (t!356005 (toList!2986 lt!1571630)) (ite c!741268 (toList!2986 lt!1571630) e!2713134)) (ite (or c!741265 c!741268) (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638)) (ite c!741266 (h!54518 (toList!2986 lt!1571630)) (tuple2!48375 (_1!27481 lt!1571638) (_2!27481 lt!1571638))))))))

(declare-fun b!4359647 () Bool)

(assert (=> b!4359647 (= e!2713137 call!303015)))

(declare-fun bm!303011 () Bool)

(assert (=> bm!303011 (= call!303015 call!303014)))

(declare-fun b!4359648 () Bool)

(assert (=> b!4359648 (= e!2713135 call!303013)))

(assert (= (and d!1289308 c!741265) b!4359639))

(assert (= (and d!1289308 (not c!741265)) b!4359638))

(assert (= (and b!4359638 res!1792255) b!4359642))

(assert (= (and b!4359638 c!741268) b!4359647))

(assert (= (and b!4359638 (not c!741268)) b!4359644))

(assert (= (and b!4359644 c!741266) b!4359637))

(assert (= (and b!4359644 (not c!741266)) b!4359648))

(assert (= (and b!4359637 c!741267) b!4359640))

(assert (= (and b!4359637 (not c!741267)) b!4359636))

(assert (= (or b!4359637 b!4359648) bm!303009))

(assert (= (and bm!303009 c!741269) b!4359641))

(assert (= (and bm!303009 (not c!741269)) b!4359643))

(assert (= (or b!4359647 bm!303009) bm!303011))

(assert (= (or b!4359639 b!4359640) bm!303008))

(assert (= (or b!4359639 bm!303011) bm!303010))

(assert (= (and d!1289308 res!1792257) b!4359635))

(assert (= (and b!4359635 res!1792254) b!4359645))

(assert (= (and b!4359645 res!1792256) b!4359646))

(declare-fun m!4976437 () Bool)

(assert (=> b!4359635 m!4976437))

(declare-fun m!4976439 () Bool)

(assert (=> b!4359639 m!4976439))

(declare-fun m!4976441 () Bool)

(assert (=> b!4359639 m!4976441))

(declare-fun m!4976443 () Bool)

(assert (=> bm!303008 m!4976443))

(declare-fun m!4976445 () Bool)

(assert (=> d!1289308 m!4976445))

(declare-fun m!4976447 () Bool)

(assert (=> d!1289308 m!4976447))

(declare-fun m!4976449 () Bool)

(assert (=> b!4359640 m!4976449))

(declare-fun m!4976451 () Bool)

(assert (=> b!4359640 m!4976451))

(declare-fun m!4976453 () Bool)

(assert (=> b!4359640 m!4976453))

(declare-fun m!4976455 () Bool)

(assert (=> b!4359640 m!4976455))

(declare-fun m!4976457 () Bool)

(assert (=> b!4359640 m!4976457))

(assert (=> b!4359641 m!4976457))

(declare-fun m!4976459 () Bool)

(assert (=> b!4359646 m!4976459))

(assert (=> b!4359646 m!4976459))

(declare-fun m!4976461 () Bool)

(assert (=> b!4359646 m!4976461))

(assert (=> b!4359646 m!4976281))

(declare-fun m!4976463 () Bool)

(assert (=> b!4359646 m!4976463))

(assert (=> b!4359646 m!4976463))

(declare-fun m!4976465 () Bool)

(assert (=> b!4359646 m!4976465))

(declare-fun m!4976467 () Bool)

(assert (=> b!4359642 m!4976467))

(assert (=> b!4359637 m!4976457))

(assert (=> b!4359637 m!4976457))

(declare-fun m!4976469 () Bool)

(assert (=> b!4359637 m!4976469))

(declare-fun m!4976471 () Bool)

(assert (=> bm!303010 m!4976471))

(declare-fun m!4976473 () Bool)

(assert (=> b!4359645 m!4976473))

(assert (=> d!1289200 d!1289308))

(declare-fun bs!633273 () Bool)

(declare-fun d!1289310 () Bool)

(assert (= bs!633273 (and d!1289310 d!1289146)))

(declare-fun lambda!141200 () Int)

(assert (=> bs!633273 (= (= lt!1571643 lt!1571927) (= lambda!141200 lambda!141158))))

(declare-fun bs!633274 () Bool)

(assert (= bs!633274 (and d!1289310 b!4359307)))

(assert (=> bs!633274 (= lambda!141200 lambda!141156)))

(assert (=> bs!633274 (= (= lt!1571643 lt!1571922) (= lambda!141200 lambda!141157))))

(declare-fun bs!633275 () Bool)

(assert (= bs!633275 (and d!1289310 b!4359397)))

(assert (=> bs!633275 (= (= lt!1571643 lt!1571642) (= lambda!141200 lambda!141168))))

(declare-fun bs!633276 () Bool)

(assert (= bs!633276 (and d!1289310 b!4359398)))

(assert (=> bs!633276 (= (= lt!1571643 lt!1571642) (= lambda!141200 lambda!141167))))

(declare-fun bs!633277 () Bool)

(assert (= bs!633277 (and d!1289310 d!1289236)))

(assert (=> bs!633277 (not (= lambda!141200 lambda!141177))))

(declare-fun bs!633278 () Bool)

(assert (= bs!633278 (and d!1289310 d!1289224)))

(assert (=> bs!633278 (= (= lt!1571643 lt!1572027) (= lambda!141200 lambda!141170))))

(declare-fun bs!633279 () Bool)

(assert (= bs!633279 (and d!1289310 b!4359308)))

(assert (=> bs!633279 (= lambda!141200 lambda!141155)))

(assert (=> bs!633275 (= (= lt!1571643 lt!1572022) (= lambda!141200 lambda!141169))))

(assert (=> d!1289310 true))

(assert (=> d!1289310 (forall!9142 (toList!2986 lt!1571643) lambda!141200)))

(declare-fun lt!1572179 () Unit!72045)

(declare-fun choose!26983 (ListMap!2229) Unit!72045)

(assert (=> d!1289310 (= lt!1572179 (choose!26983 lt!1571643))))

(assert (=> d!1289310 (= (lemmaContainsAllItsOwnKeys!67 lt!1571643) lt!1572179)))

(declare-fun bs!633280 () Bool)

(assert (= bs!633280 d!1289310))

(declare-fun m!4976475 () Bool)

(assert (=> bs!633280 m!4976475))

(declare-fun m!4976477 () Bool)

(assert (=> bs!633280 m!4976477))

(assert (=> bm!302984 d!1289310))

(declare-fun d!1289312 () Bool)

(declare-fun c!741282 () Bool)

(assert (=> d!1289312 (= c!741282 ((_ is Nil!48962) (toList!2985 lm!1707)))))

(declare-fun e!2713155 () (InoxSet tuple2!48376))

(assert (=> d!1289312 (= (content!7733 (toList!2985 lm!1707)) e!2713155)))

(declare-fun b!4359675 () Bool)

(assert (=> b!4359675 (= e!2713155 ((as const (Array tuple2!48376 Bool)) false))))

(declare-fun b!4359676 () Bool)

(assert (=> b!4359676 (= e!2713155 ((_ map or) (store ((as const (Array tuple2!48376 Bool)) false) (h!54519 (toList!2985 lm!1707)) true) (content!7733 (t!356006 (toList!2985 lm!1707)))))))

(assert (= (and d!1289312 c!741282) b!4359675))

(assert (= (and d!1289312 (not c!741282)) b!4359676))

(declare-fun m!4976479 () Bool)

(assert (=> b!4359676 m!4976479))

(declare-fun m!4976481 () Bool)

(assert (=> b!4359676 m!4976481))

(assert (=> d!1289138 d!1289312))

(declare-fun d!1289314 () Bool)

(declare-fun lt!1572180 () Bool)

(assert (=> d!1289314 (= lt!1572180 (select (content!7733 (t!356006 (toList!2985 lm!1707))) lt!1571628))))

(declare-fun e!2713157 () Bool)

(assert (=> d!1289314 (= lt!1572180 e!2713157)))

(declare-fun res!1792261 () Bool)

(assert (=> d!1289314 (=> (not res!1792261) (not e!2713157))))

(assert (=> d!1289314 (= res!1792261 ((_ is Cons!48962) (t!356006 (toList!2985 lm!1707))))))

(assert (=> d!1289314 (= (contains!11185 (t!356006 (toList!2985 lm!1707)) lt!1571628) lt!1572180)))

(declare-fun b!4359677 () Bool)

(declare-fun e!2713156 () Bool)

(assert (=> b!4359677 (= e!2713157 e!2713156)))

(declare-fun res!1792260 () Bool)

(assert (=> b!4359677 (=> res!1792260 e!2713156)))

(assert (=> b!4359677 (= res!1792260 (= (h!54519 (t!356006 (toList!2985 lm!1707))) lt!1571628))))

(declare-fun b!4359678 () Bool)

(assert (=> b!4359678 (= e!2713156 (contains!11185 (t!356006 (t!356006 (toList!2985 lm!1707))) lt!1571628))))

(assert (= (and d!1289314 res!1792261) b!4359677))

(assert (= (and b!4359677 (not res!1792260)) b!4359678))

(assert (=> d!1289314 m!4976481))

(declare-fun m!4976483 () Bool)

(assert (=> d!1289314 m!4976483))

(declare-fun m!4976485 () Bool)

(assert (=> b!4359678 m!4976485))

(assert (=> b!4359224 d!1289314))

(declare-fun bs!633281 () Bool)

(declare-fun b!4359680 () Bool)

(assert (= bs!633281 (and b!4359680 b!4359591)))

(declare-fun lambda!141201 () Int)

(assert (=> bs!633281 (= lambda!141201 lambda!141196)))

(declare-fun bs!633282 () Bool)

(assert (= bs!633282 (and b!4359680 b!4359553)))

(assert (=> bs!633282 (= (= (toList!2986 lt!1571629) (toList!2986 lt!1571642)) (= lambda!141201 lambda!141184))))

(declare-fun bs!633283 () Bool)

(assert (= bs!633283 (and b!4359680 b!4359589)))

(assert (=> bs!633283 (= (= (toList!2986 lt!1571629) (t!356005 (toList!2986 lt!1571629))) (= lambda!141201 lambda!141194))))

(declare-fun bs!633284 () Bool)

(assert (= bs!633284 (and b!4359680 b!4359432)))

(assert (=> bs!633284 (= (= (toList!2986 lt!1571629) (toList!2986 lt!1571644)) (= lambda!141201 lambda!141182))))

(declare-fun bs!633285 () Bool)

(assert (= bs!633285 (and b!4359680 b!4359587)))

(assert (=> bs!633285 (= (= (toList!2986 lt!1571629) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141201 lambda!141195))))

(assert (=> b!4359680 true))

(declare-fun bs!633286 () Bool)

(declare-fun b!4359681 () Bool)

(assert (= bs!633286 (and b!4359681 b!4359433)))

(declare-fun lambda!141202 () Int)

(assert (=> bs!633286 (= lambda!141202 lambda!141183)))

(declare-fun bs!633287 () Bool)

(assert (= bs!633287 (and b!4359681 b!4359554)))

(assert (=> bs!633287 (= lambda!141202 lambda!141185)))

(declare-fun bs!633288 () Bool)

(assert (= bs!633288 (and b!4359681 b!4359583)))

(assert (=> bs!633288 (= lambda!141202 lambda!141197)))

(declare-fun d!1289316 () Bool)

(declare-fun e!2713158 () Bool)

(assert (=> d!1289316 e!2713158))

(declare-fun res!1792262 () Bool)

(assert (=> d!1289316 (=> (not res!1792262) (not e!2713158))))

(declare-fun lt!1572181 () List!49088)

(assert (=> d!1289316 (= res!1792262 (noDuplicate!605 lt!1572181))))

(assert (=> d!1289316 (= lt!1572181 (getKeysList!132 (toList!2986 lt!1571629)))))

(assert (=> d!1289316 (= (keys!16546 lt!1571629) lt!1572181)))

(declare-fun b!4359679 () Bool)

(declare-fun res!1792264 () Bool)

(assert (=> b!4359679 (=> (not res!1792264) (not e!2713158))))

(assert (=> b!4359679 (= res!1792264 (= (length!66 lt!1572181) (length!67 (toList!2986 lt!1571629))))))

(declare-fun res!1792263 () Bool)

(assert (=> b!4359680 (=> (not res!1792263) (not e!2713158))))

(assert (=> b!4359680 (= res!1792263 (forall!9143 lt!1572181 lambda!141201))))

(assert (=> b!4359681 (= e!2713158 (= (content!7736 lt!1572181) (content!7736 (map!10652 (toList!2986 lt!1571629) lambda!141202))))))

(assert (= (and d!1289316 res!1792262) b!4359679))

(assert (= (and b!4359679 res!1792264) b!4359680))

(assert (= (and b!4359680 res!1792263) b!4359681))

(declare-fun m!4976487 () Bool)

(assert (=> d!1289316 m!4976487))

(assert (=> d!1289316 m!4976079))

(declare-fun m!4976489 () Bool)

(assert (=> b!4359679 m!4976489))

(assert (=> b!4359679 m!4976367))

(declare-fun m!4976491 () Bool)

(assert (=> b!4359680 m!4976491))

(declare-fun m!4976493 () Bool)

(assert (=> b!4359681 m!4976493))

(declare-fun m!4976495 () Bool)

(assert (=> b!4359681 m!4976495))

(assert (=> b!4359681 m!4976495))

(declare-fun m!4976497 () Bool)

(assert (=> b!4359681 m!4976497))

(assert (=> b!4359386 d!1289316))

(declare-fun lt!1572182 () Bool)

(declare-fun d!1289318 () Bool)

(assert (=> d!1289318 (= lt!1572182 (select (content!7733 (toList!2985 lm!1707)) (tuple2!48377 hash!377 lt!1571634)))))

(declare-fun e!2713160 () Bool)

(assert (=> d!1289318 (= lt!1572182 e!2713160)))

(declare-fun res!1792266 () Bool)

(assert (=> d!1289318 (=> (not res!1792266) (not e!2713160))))

(assert (=> d!1289318 (= res!1792266 ((_ is Cons!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289318 (= (contains!11185 (toList!2985 lm!1707) (tuple2!48377 hash!377 lt!1571634)) lt!1572182)))

(declare-fun b!4359682 () Bool)

(declare-fun e!2713159 () Bool)

(assert (=> b!4359682 (= e!2713160 e!2713159)))

(declare-fun res!1792265 () Bool)

(assert (=> b!4359682 (=> res!1792265 e!2713159)))

(assert (=> b!4359682 (= res!1792265 (= (h!54519 (toList!2985 lm!1707)) (tuple2!48377 hash!377 lt!1571634)))))

(declare-fun b!4359683 () Bool)

(assert (=> b!4359683 (= e!2713159 (contains!11185 (t!356006 (toList!2985 lm!1707)) (tuple2!48377 hash!377 lt!1571634)))))

(assert (= (and d!1289318 res!1792266) b!4359682))

(assert (= (and b!4359682 (not res!1792265)) b!4359683))

(assert (=> d!1289318 m!4975723))

(declare-fun m!4976499 () Bool)

(assert (=> d!1289318 m!4976499))

(declare-fun m!4976501 () Bool)

(assert (=> b!4359683 m!4976501))

(assert (=> d!1289136 d!1289318))

(declare-fun d!1289320 () Bool)

(assert (=> d!1289320 (contains!11185 (toList!2985 lm!1707) (tuple2!48377 hash!377 lt!1571634))))

(assert (=> d!1289320 true))

(declare-fun _$14!765 () Unit!72045)

(assert (=> d!1289320 (= (choose!26970 (toList!2985 lm!1707) hash!377 lt!1571634) _$14!765)))

(declare-fun bs!633289 () Bool)

(assert (= bs!633289 d!1289320))

(assert (=> bs!633289 m!4975717))

(assert (=> d!1289136 d!1289320))

(declare-fun d!1289322 () Bool)

(declare-fun res!1792277 () Bool)

(declare-fun e!2713167 () Bool)

(assert (=> d!1289322 (=> res!1792277 e!2713167)))

(assert (=> d!1289322 (= res!1792277 (or ((_ is Nil!48962) (toList!2985 lm!1707)) ((_ is Nil!48962) (t!356006 (toList!2985 lm!1707)))))))

(assert (=> d!1289322 (= (isStrictlySorted!110 (toList!2985 lm!1707)) e!2713167)))

(declare-fun b!4359694 () Bool)

(declare-fun e!2713168 () Bool)

(assert (=> b!4359694 (= e!2713167 e!2713168)))

(declare-fun res!1792278 () Bool)

(assert (=> b!4359694 (=> (not res!1792278) (not e!2713168))))

(assert (=> b!4359694 (= res!1792278 (bvslt (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))

(declare-fun b!4359695 () Bool)

(assert (=> b!4359695 (= e!2713168 (isStrictlySorted!110 (t!356006 (toList!2985 lm!1707))))))

(assert (= (and d!1289322 (not res!1792277)) b!4359694))

(assert (= (and b!4359694 res!1792278) b!4359695))

(declare-fun m!4976503 () Bool)

(assert (=> b!4359695 m!4976503))

(assert (=> d!1289136 d!1289322))

(declare-fun d!1289324 () Bool)

(declare-fun lt!1572183 () Bool)

(assert (=> d!1289324 (= lt!1572183 (select (content!7736 e!2713000) key!3918))))

(declare-fun e!2713170 () Bool)

(assert (=> d!1289324 (= lt!1572183 e!2713170)))

(declare-fun res!1792279 () Bool)

(assert (=> d!1289324 (=> (not res!1792279) (not e!2713170))))

(assert (=> d!1289324 (= res!1792279 ((_ is Cons!48964) e!2713000))))

(assert (=> d!1289324 (= (contains!11189 e!2713000 key!3918) lt!1572183)))

(declare-fun b!4359696 () Bool)

(declare-fun e!2713169 () Bool)

(assert (=> b!4359696 (= e!2713170 e!2713169)))

(declare-fun res!1792280 () Bool)

(assert (=> b!4359696 (=> res!1792280 e!2713169)))

(assert (=> b!4359696 (= res!1792280 (= (h!54523 e!2713000) key!3918))))

(declare-fun b!4359697 () Bool)

(assert (=> b!4359697 (= e!2713169 (contains!11189 (t!356008 e!2713000) key!3918))))

(assert (= (and d!1289324 res!1792279) b!4359696))

(assert (= (and b!4359696 (not res!1792280)) b!4359697))

(declare-fun m!4976505 () Bool)

(assert (=> d!1289324 m!4976505))

(declare-fun m!4976507 () Bool)

(assert (=> d!1289324 m!4976507))

(declare-fun m!4976509 () Bool)

(assert (=> b!4359697 m!4976509))

(assert (=> bm!302992 d!1289324))

(declare-fun d!1289326 () Bool)

(declare-fun c!741283 () Bool)

(assert (=> d!1289326 (= c!741283 ((_ is Nil!48961) (toList!2986 lt!1571630)))))

(declare-fun e!2713171 () (InoxSet tuple2!48374))

(assert (=> d!1289326 (= (content!7735 (toList!2986 lt!1571630)) e!2713171)))

(declare-fun b!4359698 () Bool)

(assert (=> b!4359698 (= e!2713171 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4359699 () Bool)

(assert (=> b!4359699 (= e!2713171 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 lt!1571630)) true) (content!7735 (t!356005 (toList!2986 lt!1571630)))))))

(assert (= (and d!1289326 c!741283) b!4359698))

(assert (= (and d!1289326 (not c!741283)) b!4359699))

(declare-fun m!4976511 () Bool)

(assert (=> b!4359699 m!4976511))

(declare-fun m!4976513 () Bool)

(assert (=> b!4359699 m!4976513))

(assert (=> d!1289226 d!1289326))

(declare-fun d!1289328 () Bool)

(declare-fun c!741284 () Bool)

(assert (=> d!1289328 (= c!741284 ((_ is Nil!48961) (toList!2986 lt!1571644)))))

(declare-fun e!2713172 () (InoxSet tuple2!48374))

(assert (=> d!1289328 (= (content!7735 (toList!2986 lt!1571644)) e!2713172)))

(declare-fun b!4359700 () Bool)

(assert (=> b!4359700 (= e!2713172 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4359701 () Bool)

(assert (=> b!4359701 (= e!2713172 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 lt!1571644)) true) (content!7735 (t!356005 (toList!2986 lt!1571644)))))))

(assert (= (and d!1289328 c!741284) b!4359700))

(assert (= (and d!1289328 (not c!741284)) b!4359701))

(declare-fun m!4976515 () Bool)

(assert (=> b!4359701 m!4976515))

(declare-fun m!4976517 () Bool)

(assert (=> b!4359701 m!4976517))

(assert (=> d!1289226 d!1289328))

(declare-fun d!1289330 () Bool)

(declare-fun lt!1572194 () Bool)

(assert (=> d!1289330 (= lt!1572194 (select (content!7735 (toList!2986 lt!1571962)) lt!1571638))))

(declare-fun e!2713182 () Bool)

(assert (=> d!1289330 (= lt!1572194 e!2713182)))

(declare-fun res!1792289 () Bool)

(assert (=> d!1289330 (=> (not res!1792289) (not e!2713182))))

(assert (=> d!1289330 (= res!1792289 ((_ is Cons!48961) (toList!2986 lt!1571962)))))

(assert (=> d!1289330 (= (contains!11188 (toList!2986 lt!1571962) lt!1571638) lt!1572194)))

(declare-fun b!4359706 () Bool)

(declare-fun e!2713183 () Bool)

(assert (=> b!4359706 (= e!2713182 e!2713183)))

(declare-fun res!1792288 () Bool)

(assert (=> b!4359706 (=> res!1792288 e!2713183)))

(assert (=> b!4359706 (= res!1792288 (= (h!54518 (toList!2986 lt!1571962)) lt!1571638))))

(declare-fun b!4359707 () Bool)

(assert (=> b!4359707 (= e!2713183 (contains!11188 (t!356005 (toList!2986 lt!1571962)) lt!1571638))))

(assert (= (and d!1289330 res!1792289) b!4359706))

(assert (= (and b!4359706 (not res!1792288)) b!4359707))

(declare-fun m!4976519 () Bool)

(assert (=> d!1289330 m!4976519))

(declare-fun m!4976521 () Bool)

(assert (=> d!1289330 m!4976521))

(declare-fun m!4976523 () Bool)

(assert (=> b!4359707 m!4976523))

(assert (=> b!4359352 d!1289330))

(declare-fun d!1289332 () Bool)

(declare-fun isEmpty!28213 (Option!10480) Bool)

(assert (=> d!1289332 (= (isDefined!7773 (getValueByKey!466 (toList!2985 lm!1707) hash!377)) (not (isEmpty!28213 (getValueByKey!466 (toList!2985 lm!1707) hash!377))))))

(declare-fun bs!633290 () Bool)

(assert (= bs!633290 d!1289332))

(assert (=> bs!633290 m!4975663))

(declare-fun m!4976525 () Bool)

(assert (=> bs!633290 m!4976525))

(assert (=> b!4359190 d!1289332))

(declare-fun b!4359730 () Bool)

(declare-fun e!2713190 () Option!10480)

(assert (=> b!4359730 (= e!2713190 (Some!10479 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun b!4359732 () Bool)

(declare-fun e!2713191 () Option!10480)

(assert (=> b!4359732 (= e!2713191 (getValueByKey!466 (t!356006 (toList!2985 lm!1707)) hash!377))))

(declare-fun b!4359731 () Bool)

(assert (=> b!4359731 (= e!2713190 e!2713191)))

(declare-fun c!741295 () Bool)

(assert (=> b!4359731 (= c!741295 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (not (= (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377))))))

(declare-fun b!4359733 () Bool)

(assert (=> b!4359733 (= e!2713191 None!10479)))

(declare-fun d!1289334 () Bool)

(declare-fun c!741294 () Bool)

(assert (=> d!1289334 (= c!741294 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) hash!377)))))

(assert (=> d!1289334 (= (getValueByKey!466 (toList!2985 lm!1707) hash!377) e!2713190)))

(assert (= (and d!1289334 c!741294) b!4359730))

(assert (= (and d!1289334 (not c!741294)) b!4359731))

(assert (= (and b!4359731 c!741295) b!4359732))

(assert (= (and b!4359731 (not c!741295)) b!4359733))

(declare-fun m!4976567 () Bool)

(assert (=> b!4359732 m!4976567))

(assert (=> b!4359190 d!1289334))

(declare-fun d!1289338 () Bool)

(declare-fun e!2713192 () Bool)

(assert (=> d!1289338 e!2713192))

(declare-fun res!1792291 () Bool)

(assert (=> d!1289338 (=> res!1792291 e!2713192)))

(declare-fun lt!1572201 () Bool)

(assert (=> d!1289338 (= res!1792291 (not lt!1572201))))

(declare-fun lt!1572199 () Bool)

(assert (=> d!1289338 (= lt!1572201 lt!1572199)))

(declare-fun lt!1572198 () Unit!72045)

(declare-fun e!2713193 () Unit!72045)

(assert (=> d!1289338 (= lt!1572198 e!2713193)))

(declare-fun c!741296 () Bool)

(assert (=> d!1289338 (= c!741296 lt!1572199)))

(assert (=> d!1289338 (= lt!1572199 (containsKey!716 (toList!2985 lt!1571671) (_1!27482 lt!1571639)))))

(assert (=> d!1289338 (= (contains!11184 lt!1571671 (_1!27482 lt!1571639)) lt!1572201)))

(declare-fun b!4359734 () Bool)

(declare-fun lt!1572200 () Unit!72045)

(assert (=> b!4359734 (= e!2713193 lt!1572200)))

(assert (=> b!4359734 (= lt!1572200 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!2985 lt!1571671) (_1!27482 lt!1571639)))))

(assert (=> b!4359734 (isDefined!7773 (getValueByKey!466 (toList!2985 lt!1571671) (_1!27482 lt!1571639)))))

(declare-fun b!4359735 () Bool)

(declare-fun Unit!72125 () Unit!72045)

(assert (=> b!4359735 (= e!2713193 Unit!72125)))

(declare-fun b!4359736 () Bool)

(assert (=> b!4359736 (= e!2713192 (isDefined!7773 (getValueByKey!466 (toList!2985 lt!1571671) (_1!27482 lt!1571639))))))

(assert (= (and d!1289338 c!741296) b!4359734))

(assert (= (and d!1289338 (not c!741296)) b!4359735))

(assert (= (and d!1289338 (not res!1792291)) b!4359736))

(declare-fun m!4976569 () Bool)

(assert (=> d!1289338 m!4976569))

(declare-fun m!4976571 () Bool)

(assert (=> b!4359734 m!4976571))

(assert (=> b!4359734 m!4975599))

(assert (=> b!4359734 m!4975599))

(declare-fun m!4976573 () Bool)

(assert (=> b!4359734 m!4976573))

(assert (=> b!4359736 m!4975599))

(assert (=> b!4359736 m!4975599))

(assert (=> b!4359736 m!4976573))

(assert (=> d!1289088 d!1289338))

(declare-fun b!4359737 () Bool)

(declare-fun e!2713194 () Option!10480)

(assert (=> b!4359737 (= e!2713194 (Some!10479 (_2!27482 (h!54519 lt!1571673))))))

(declare-fun b!4359739 () Bool)

(declare-fun e!2713195 () Option!10480)

(assert (=> b!4359739 (= e!2713195 (getValueByKey!466 (t!356006 lt!1571673) (_1!27482 lt!1571639)))))

(declare-fun b!4359738 () Bool)

(assert (=> b!4359738 (= e!2713194 e!2713195)))

(declare-fun c!741298 () Bool)

(assert (=> b!4359738 (= c!741298 (and ((_ is Cons!48962) lt!1571673) (not (= (_1!27482 (h!54519 lt!1571673)) (_1!27482 lt!1571639)))))))

(declare-fun b!4359740 () Bool)

(assert (=> b!4359740 (= e!2713195 None!10479)))

(declare-fun d!1289340 () Bool)

(declare-fun c!741297 () Bool)

(assert (=> d!1289340 (= c!741297 (and ((_ is Cons!48962) lt!1571673) (= (_1!27482 (h!54519 lt!1571673)) (_1!27482 lt!1571639))))))

(assert (=> d!1289340 (= (getValueByKey!466 lt!1571673 (_1!27482 lt!1571639)) e!2713194)))

(assert (= (and d!1289340 c!741297) b!4359737))

(assert (= (and d!1289340 (not c!741297)) b!4359738))

(assert (= (and b!4359738 c!741298) b!4359739))

(assert (= (and b!4359738 (not c!741298)) b!4359740))

(declare-fun m!4976575 () Bool)

(assert (=> b!4359739 m!4976575))

(assert (=> d!1289088 d!1289340))

(declare-fun d!1289342 () Bool)

(assert (=> d!1289342 (= (getValueByKey!466 lt!1571673 (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639)))))

(declare-fun lt!1572206 () Unit!72045)

(declare-fun choose!26986 (List!49086 (_ BitVec 64) List!49085) Unit!72045)

(assert (=> d!1289342 (= lt!1572206 (choose!26986 lt!1571673 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(declare-fun e!2713200 () Bool)

(assert (=> d!1289342 e!2713200))

(declare-fun res!1792303 () Bool)

(assert (=> d!1289342 (=> (not res!1792303) (not e!2713200))))

(assert (=> d!1289342 (= res!1792303 (isStrictlySorted!110 lt!1571673))))

(assert (=> d!1289342 (= (lemmaContainsTupThenGetReturnValue!240 lt!1571673 (_1!27482 lt!1571639) (_2!27482 lt!1571639)) lt!1572206)))

(declare-fun b!4359751 () Bool)

(declare-fun res!1792305 () Bool)

(assert (=> b!4359751 (=> (not res!1792305) (not e!2713200))))

(assert (=> b!4359751 (= res!1792305 (containsKey!716 lt!1571673 (_1!27482 lt!1571639)))))

(declare-fun b!4359753 () Bool)

(assert (=> b!4359753 (= e!2713200 (contains!11185 lt!1571673 (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639))))))

(assert (= (and d!1289342 res!1792303) b!4359751))

(assert (= (and b!4359751 res!1792305) b!4359753))

(assert (=> d!1289342 m!4975593))

(declare-fun m!4976577 () Bool)

(assert (=> d!1289342 m!4976577))

(declare-fun m!4976579 () Bool)

(assert (=> d!1289342 m!4976579))

(declare-fun m!4976581 () Bool)

(assert (=> b!4359751 m!4976581))

(declare-fun m!4976583 () Bool)

(assert (=> b!4359753 m!4976583))

(assert (=> d!1289088 d!1289342))

(declare-fun b!4359792 () Bool)

(declare-fun res!1792326 () Bool)

(declare-fun e!2713228 () Bool)

(assert (=> b!4359792 (=> (not res!1792326) (not e!2713228))))

(declare-fun lt!1572217 () List!49086)

(assert (=> b!4359792 (= res!1792326 (containsKey!716 lt!1572217 (_1!27482 lt!1571639)))))

(declare-fun b!4359793 () Bool)

(declare-fun e!2713229 () List!49086)

(declare-fun call!303035 () List!49086)

(assert (=> b!4359793 (= e!2713229 call!303035)))

(declare-fun bm!303030 () Bool)

(declare-fun call!303037 () List!49086)

(assert (=> bm!303030 (= call!303037 call!303035)))

(declare-fun b!4359794 () Bool)

(declare-fun c!741310 () Bool)

(declare-fun e!2713226 () List!49086)

(declare-fun c!741309 () Bool)

(assert (=> b!4359794 (= e!2713226 (ite c!741310 (t!356006 (toList!2985 lm!1707)) (ite c!741309 (Cons!48962 (h!54519 (toList!2985 lm!1707)) (t!356006 (toList!2985 lm!1707))) Nil!48962)))))

(declare-fun b!4359795 () Bool)

(assert (=> b!4359795 (= e!2713226 (insertStrictlySorted!141 (t!356006 (toList!2985 lm!1707)) (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(declare-fun b!4359796 () Bool)

(declare-fun e!2713230 () List!49086)

(declare-fun call!303036 () List!49086)

(assert (=> b!4359796 (= e!2713230 call!303036)))

(declare-fun bm!303031 () Bool)

(assert (=> bm!303031 (= call!303035 call!303036)))

(declare-fun d!1289344 () Bool)

(assert (=> d!1289344 e!2713228))

(declare-fun res!1792325 () Bool)

(assert (=> d!1289344 (=> (not res!1792325) (not e!2713228))))

(assert (=> d!1289344 (= res!1792325 (isStrictlySorted!110 lt!1572217))))

(assert (=> d!1289344 (= lt!1572217 e!2713230)))

(declare-fun c!741307 () Bool)

(assert (=> d!1289344 (= c!741307 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (bvslt (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 lt!1571639))))))

(assert (=> d!1289344 (isStrictlySorted!110 (toList!2985 lm!1707))))

(assert (=> d!1289344 (= (insertStrictlySorted!141 (toList!2985 lm!1707) (_1!27482 lt!1571639) (_2!27482 lt!1571639)) lt!1572217)))

(declare-fun b!4359797 () Bool)

(assert (=> b!4359797 (= e!2713228 (contains!11185 lt!1572217 (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639))))))

(declare-fun b!4359798 () Bool)

(assert (=> b!4359798 (= e!2713230 e!2713229)))

(assert (=> b!4359798 (= c!741310 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 lt!1571639))))))

(declare-fun b!4359799 () Bool)

(declare-fun e!2713227 () List!49086)

(assert (=> b!4359799 (= e!2713227 call!303037)))

(declare-fun bm!303032 () Bool)

(declare-fun $colon$colon!698 (List!49086 tuple2!48376) List!49086)

(assert (=> bm!303032 (= call!303036 ($colon$colon!698 e!2713226 (ite c!741307 (h!54519 (toList!2985 lm!1707)) (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))))

(declare-fun c!741308 () Bool)

(assert (=> bm!303032 (= c!741308 c!741307)))

(declare-fun b!4359800 () Bool)

(assert (=> b!4359800 (= c!741309 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (bvsgt (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 lt!1571639))))))

(assert (=> b!4359800 (= e!2713229 e!2713227)))

(declare-fun b!4359801 () Bool)

(assert (=> b!4359801 (= e!2713227 call!303037)))

(assert (= (and d!1289344 c!741307) b!4359796))

(assert (= (and d!1289344 (not c!741307)) b!4359798))

(assert (= (and b!4359798 c!741310) b!4359793))

(assert (= (and b!4359798 (not c!741310)) b!4359800))

(assert (= (and b!4359800 c!741309) b!4359801))

(assert (= (and b!4359800 (not c!741309)) b!4359799))

(assert (= (or b!4359801 b!4359799) bm!303030))

(assert (= (or b!4359793 bm!303030) bm!303031))

(assert (= (or b!4359796 bm!303031) bm!303032))

(assert (= (and bm!303032 c!741308) b!4359795))

(assert (= (and bm!303032 (not c!741308)) b!4359794))

(assert (= (and d!1289344 res!1792325) b!4359792))

(assert (= (and b!4359792 res!1792326) b!4359797))

(declare-fun m!4976629 () Bool)

(assert (=> b!4359795 m!4976629))

(declare-fun m!4976631 () Bool)

(assert (=> b!4359792 m!4976631))

(declare-fun m!4976633 () Bool)

(assert (=> d!1289344 m!4976633))

(assert (=> d!1289344 m!4975721))

(declare-fun m!4976635 () Bool)

(assert (=> bm!303032 m!4976635))

(declare-fun m!4976637 () Bool)

(assert (=> b!4359797 m!4976637))

(assert (=> d!1289088 d!1289344))

(declare-fun d!1289362 () Bool)

(declare-fun lt!1572218 () Bool)

(assert (=> d!1289362 (= lt!1572218 (select (content!7735 (toList!2986 lt!1572012)) lt!1571638))))

(declare-fun e!2713233 () Bool)

(assert (=> d!1289362 (= lt!1572218 e!2713233)))

(declare-fun res!1792330 () Bool)

(assert (=> d!1289362 (=> (not res!1792330) (not e!2713233))))

(assert (=> d!1289362 (= res!1792330 ((_ is Cons!48961) (toList!2986 lt!1572012)))))

(assert (=> d!1289362 (= (contains!11188 (toList!2986 lt!1572012) lt!1571638) lt!1572218)))

(declare-fun b!4359804 () Bool)

(declare-fun e!2713234 () Bool)

(assert (=> b!4359804 (= e!2713233 e!2713234)))

(declare-fun res!1792329 () Bool)

(assert (=> b!4359804 (=> res!1792329 e!2713234)))

(assert (=> b!4359804 (= res!1792329 (= (h!54518 (toList!2986 lt!1572012)) lt!1571638))))

(declare-fun b!4359805 () Bool)

(assert (=> b!4359805 (= e!2713234 (contains!11188 (t!356005 (toList!2986 lt!1572012)) lt!1571638))))

(assert (= (and d!1289362 res!1792330) b!4359804))

(assert (= (and b!4359804 (not res!1792329)) b!4359805))

(declare-fun m!4976643 () Bool)

(assert (=> d!1289362 m!4976643))

(declare-fun m!4976645 () Bool)

(assert (=> d!1289362 m!4976645))

(declare-fun m!4976647 () Bool)

(assert (=> b!4359805 m!4976647))

(assert (=> b!4359394 d!1289362))

(declare-fun d!1289366 () Bool)

(declare-fun choose!26987 (Hashable!4893 K!10320) (_ BitVec 64))

(assert (=> d!1289366 (= (hash!1597 hashF!1247 key!3918) (choose!26987 hashF!1247 key!3918))))

(declare-fun bs!633300 () Bool)

(assert (= bs!633300 d!1289366))

(declare-fun m!4976659 () Bool)

(assert (=> bs!633300 m!4976659))

(assert (=> d!1289238 d!1289366))

(declare-fun d!1289368 () Bool)

(declare-fun res!1792333 () Bool)

(declare-fun e!2713236 () Bool)

(assert (=> d!1289368 (=> res!1792333 e!2713236)))

(assert (=> d!1289368 (= res!1792333 (not ((_ is Cons!48961) (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289368 (= (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707)))) e!2713236)))

(declare-fun b!4359808 () Bool)

(declare-fun e!2713237 () Bool)

(assert (=> b!4359808 (= e!2713236 e!2713237)))

(declare-fun res!1792334 () Bool)

(assert (=> b!4359808 (=> (not res!1792334) (not e!2713237))))

(assert (=> b!4359808 (= res!1792334 (not (containsKey!714 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4359809 () Bool)

(assert (=> b!4359809 (= e!2713237 (noDuplicateKeys!501 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (= (and d!1289368 (not res!1792333)) b!4359808))

(assert (= (and b!4359808 res!1792334) b!4359809))

(declare-fun m!4976663 () Bool)

(assert (=> b!4359808 m!4976663))

(declare-fun m!4976665 () Bool)

(assert (=> b!4359809 m!4976665))

(assert (=> bs!633257 d!1289368))

(declare-fun d!1289372 () Bool)

(declare-fun res!1792335 () Bool)

(declare-fun e!2713238 () Bool)

(assert (=> d!1289372 (=> res!1792335 e!2713238)))

(assert (=> d!1289372 (= res!1792335 (and ((_ is Cons!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (= (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) key!3918)))))

(assert (=> d!1289372 (= (containsKey!714 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) key!3918) e!2713238)))

(declare-fun b!4359810 () Bool)

(declare-fun e!2713239 () Bool)

(assert (=> b!4359810 (= e!2713238 e!2713239)))

(declare-fun res!1792336 () Bool)

(assert (=> b!4359810 (=> (not res!1792336) (not e!2713239))))

(assert (=> b!4359810 (= res!1792336 ((_ is Cons!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4359811 () Bool)

(assert (=> b!4359811 (= e!2713239 (containsKey!714 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) key!3918))))

(assert (= (and d!1289372 (not res!1792335)) b!4359810))

(assert (= (and b!4359810 res!1792336) b!4359811))

(declare-fun m!4976667 () Bool)

(assert (=> b!4359811 m!4976667))

(assert (=> b!4359168 d!1289372))

(declare-fun bs!633301 () Bool)

(declare-fun b!4359815 () Bool)

(assert (= bs!633301 (and b!4359815 d!1289146)))

(declare-fun lambda!141212 () Int)

(assert (=> bs!633301 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571927) (= lambda!141212 lambda!141158))))

(declare-fun bs!633302 () Bool)

(assert (= bs!633302 (and b!4359815 b!4359307)))

(assert (=> bs!633302 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141212 lambda!141156))))

(assert (=> bs!633302 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571922) (= lambda!141212 lambda!141157))))

(declare-fun bs!633303 () Bool)

(assert (= bs!633303 (and b!4359815 b!4359397)))

(assert (=> bs!633303 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571642) (= lambda!141212 lambda!141168))))

(declare-fun bs!633304 () Bool)

(assert (= bs!633304 (and b!4359815 b!4359398)))

(assert (=> bs!633304 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571642) (= lambda!141212 lambda!141167))))

(declare-fun bs!633305 () Bool)

(assert (= bs!633305 (and b!4359815 d!1289310)))

(assert (=> bs!633305 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141212 lambda!141200))))

(declare-fun bs!633306 () Bool)

(assert (= bs!633306 (and b!4359815 d!1289236)))

(assert (=> bs!633306 (not (= lambda!141212 lambda!141177))))

(declare-fun bs!633307 () Bool)

(assert (= bs!633307 (and b!4359815 d!1289224)))

(assert (=> bs!633307 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572027) (= lambda!141212 lambda!141170))))

(declare-fun bs!633308 () Bool)

(assert (= bs!633308 (and b!4359815 b!4359308)))

(assert (=> bs!633308 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141212 lambda!141155))))

(assert (=> bs!633303 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572022) (= lambda!141212 lambda!141169))))

(assert (=> b!4359815 true))

(declare-fun bs!633309 () Bool)

(declare-fun b!4359814 () Bool)

(assert (= bs!633309 (and b!4359814 d!1289146)))

(declare-fun lambda!141213 () Int)

(assert (=> bs!633309 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571927) (= lambda!141213 lambda!141158))))

(declare-fun bs!633310 () Bool)

(assert (= bs!633310 (and b!4359814 b!4359307)))

(assert (=> bs!633310 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141213 lambda!141156))))

(assert (=> bs!633310 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571922) (= lambda!141213 lambda!141157))))

(declare-fun bs!633311 () Bool)

(assert (= bs!633311 (and b!4359814 b!4359397)))

(assert (=> bs!633311 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571642) (= lambda!141213 lambda!141168))))

(declare-fun bs!633312 () Bool)

(assert (= bs!633312 (and b!4359814 b!4359815)))

(assert (=> bs!633312 (= lambda!141213 lambda!141212)))

(declare-fun bs!633313 () Bool)

(assert (= bs!633313 (and b!4359814 b!4359398)))

(assert (=> bs!633313 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571642) (= lambda!141213 lambda!141167))))

(declare-fun bs!633314 () Bool)

(assert (= bs!633314 (and b!4359814 d!1289310)))

(assert (=> bs!633314 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141213 lambda!141200))))

(declare-fun bs!633315 () Bool)

(assert (= bs!633315 (and b!4359814 d!1289236)))

(assert (=> bs!633315 (not (= lambda!141213 lambda!141177))))

(declare-fun bs!633316 () Bool)

(assert (= bs!633316 (and b!4359814 d!1289224)))

(assert (=> bs!633316 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572027) (= lambda!141213 lambda!141170))))

(declare-fun bs!633318 () Bool)

(assert (= bs!633318 (and b!4359814 b!4359308)))

(assert (=> bs!633318 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1571643) (= lambda!141213 lambda!141155))))

(assert (=> bs!633311 (= (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572022) (= lambda!141213 lambda!141169))))

(assert (=> b!4359814 true))

(declare-fun lt!1572229 () ListMap!2229)

(declare-fun lambda!141214 () Int)

(assert (=> bs!633309 (= (= lt!1572229 lt!1571927) (= lambda!141214 lambda!141158))))

(assert (=> b!4359814 (= (= lt!1572229 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141214 lambda!141213))))

(assert (=> bs!633310 (= (= lt!1572229 lt!1571643) (= lambda!141214 lambda!141156))))

(assert (=> bs!633310 (= (= lt!1572229 lt!1571922) (= lambda!141214 lambda!141157))))

(assert (=> bs!633311 (= (= lt!1572229 lt!1571642) (= lambda!141214 lambda!141168))))

(assert (=> bs!633312 (= (= lt!1572229 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141214 lambda!141212))))

(assert (=> bs!633313 (= (= lt!1572229 lt!1571642) (= lambda!141214 lambda!141167))))

(assert (=> bs!633314 (= (= lt!1572229 lt!1571643) (= lambda!141214 lambda!141200))))

(assert (=> bs!633315 (not (= lambda!141214 lambda!141177))))

(assert (=> bs!633316 (= (= lt!1572229 lt!1572027) (= lambda!141214 lambda!141170))))

(assert (=> bs!633318 (= (= lt!1572229 lt!1571643) (= lambda!141214 lambda!141155))))

(assert (=> bs!633311 (= (= lt!1572229 lt!1572022) (= lambda!141214 lambda!141169))))

(assert (=> b!4359814 true))

(declare-fun bs!633321 () Bool)

(declare-fun d!1289374 () Bool)

(assert (= bs!633321 (and d!1289374 d!1289146)))

(declare-fun lambda!141217 () Int)

(declare-fun lt!1572234 () ListMap!2229)

(assert (=> bs!633321 (= (= lt!1572234 lt!1571927) (= lambda!141217 lambda!141158))))

(declare-fun bs!633322 () Bool)

(assert (= bs!633322 (and d!1289374 b!4359814)))

(assert (=> bs!633322 (= (= lt!1572234 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141217 lambda!141213))))

(declare-fun bs!633323 () Bool)

(assert (= bs!633323 (and d!1289374 b!4359307)))

(assert (=> bs!633323 (= (= lt!1572234 lt!1571643) (= lambda!141217 lambda!141156))))

(assert (=> bs!633323 (= (= lt!1572234 lt!1571922) (= lambda!141217 lambda!141157))))

(declare-fun bs!633324 () Bool)

(assert (= bs!633324 (and d!1289374 b!4359397)))

(assert (=> bs!633324 (= (= lt!1572234 lt!1571642) (= lambda!141217 lambda!141168))))

(declare-fun bs!633325 () Bool)

(assert (= bs!633325 (and d!1289374 b!4359815)))

(assert (=> bs!633325 (= (= lt!1572234 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141217 lambda!141212))))

(declare-fun bs!633326 () Bool)

(assert (= bs!633326 (and d!1289374 b!4359398)))

(assert (=> bs!633326 (= (= lt!1572234 lt!1571642) (= lambda!141217 lambda!141167))))

(declare-fun bs!633327 () Bool)

(assert (= bs!633327 (and d!1289374 d!1289236)))

(assert (=> bs!633327 (not (= lambda!141217 lambda!141177))))

(declare-fun bs!633328 () Bool)

(assert (= bs!633328 (and d!1289374 d!1289224)))

(assert (=> bs!633328 (= (= lt!1572234 lt!1572027) (= lambda!141217 lambda!141170))))

(declare-fun bs!633329 () Bool)

(assert (= bs!633329 (and d!1289374 b!4359308)))

(assert (=> bs!633329 (= (= lt!1572234 lt!1571643) (= lambda!141217 lambda!141155))))

(assert (=> bs!633324 (= (= lt!1572234 lt!1572022) (= lambda!141217 lambda!141169))))

(declare-fun bs!633330 () Bool)

(assert (= bs!633330 (and d!1289374 d!1289310)))

(assert (=> bs!633330 (= (= lt!1572234 lt!1571643) (= lambda!141217 lambda!141200))))

(assert (=> bs!633322 (= (= lt!1572234 lt!1572229) (= lambda!141217 lambda!141214))))

(assert (=> d!1289374 true))

(declare-fun b!4359812 () Bool)

(declare-fun e!2713240 () Bool)

(assert (=> b!4359812 (= e!2713240 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) lambda!141214))))

(declare-fun b!4359813 () Bool)

(declare-fun e!2713241 () Bool)

(assert (=> b!4359813 (= e!2713241 (invariantList!684 (toList!2986 lt!1572234)))))

(assert (=> d!1289374 e!2713241))

(declare-fun res!1792337 () Bool)

(assert (=> d!1289374 (=> (not res!1792337) (not e!2713241))))

(assert (=> d!1289374 (= res!1792337 (forall!9142 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))) lambda!141217))))

(declare-fun e!2713242 () ListMap!2229)

(assert (=> d!1289374 (= lt!1572234 e!2713242)))

(declare-fun c!741311 () Bool)

(assert (=> d!1289374 (= c!741311 ((_ is Nil!48961) (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))

(assert (=> d!1289374 (noDuplicateKeys!501 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))))

(assert (=> d!1289374 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) lt!1572234)))

(assert (=> b!4359814 (= e!2713242 lt!1572229)))

(declare-fun lt!1572242 () ListMap!2229)

(assert (=> b!4359814 (= lt!1572242 (+!660 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))))))

(assert (=> b!4359814 (= lt!1572229 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))) (+!660 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))))

(declare-fun lt!1572241 () Unit!72045)

(declare-fun call!303040 () Unit!72045)

(assert (=> b!4359814 (= lt!1572241 call!303040)))

(assert (=> b!4359814 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) lambda!141213)))

(declare-fun lt!1572233 () Unit!72045)

(assert (=> b!4359814 (= lt!1572233 lt!1572241)))

(assert (=> b!4359814 (forall!9142 (toList!2986 lt!1572242) lambda!141214)))

(declare-fun lt!1572230 () Unit!72045)

(declare-fun Unit!72137 () Unit!72045)

(assert (=> b!4359814 (= lt!1572230 Unit!72137)))

(assert (=> b!4359814 (forall!9142 (t!356005 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))) lambda!141214)))

(declare-fun lt!1572240 () Unit!72045)

(declare-fun Unit!72138 () Unit!72045)

(assert (=> b!4359814 (= lt!1572240 Unit!72138)))

(declare-fun lt!1572243 () Unit!72045)

(declare-fun Unit!72139 () Unit!72045)

(assert (=> b!4359814 (= lt!1572243 Unit!72139)))

(declare-fun lt!1572237 () Unit!72045)

(assert (=> b!4359814 (= lt!1572237 (forallContained!1783 (toList!2986 lt!1572242) lambda!141214 (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))))))

(assert (=> b!4359814 (contains!11183 lt!1572242 (_1!27481 (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572235 () Unit!72045)

(declare-fun Unit!72140 () Unit!72045)

(assert (=> b!4359814 (= lt!1572235 Unit!72140)))

(assert (=> b!4359814 (contains!11183 lt!1572229 (_1!27481 (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572228 () Unit!72045)

(declare-fun Unit!72141 () Unit!72045)

(assert (=> b!4359814 (= lt!1572228 Unit!72141)))

(declare-fun call!303039 () Bool)

(assert (=> b!4359814 call!303039))

(declare-fun lt!1572227 () Unit!72045)

(declare-fun Unit!72142 () Unit!72045)

(assert (=> b!4359814 (= lt!1572227 Unit!72142)))

(assert (=> b!4359814 (forall!9142 (toList!2986 lt!1572242) lambda!141214)))

(declare-fun lt!1572238 () Unit!72045)

(declare-fun Unit!72143 () Unit!72045)

(assert (=> b!4359814 (= lt!1572238 Unit!72143)))

(declare-fun lt!1572223 () Unit!72045)

(declare-fun Unit!72144 () Unit!72045)

(assert (=> b!4359814 (= lt!1572223 Unit!72144)))

(declare-fun lt!1572225 () Unit!72045)

(assert (=> b!4359814 (= lt!1572225 (addForallContainsKeyThenBeforeAdding!67 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572229 (_1!27481 (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))))

(declare-fun call!303038 () Bool)

(assert (=> b!4359814 call!303038))

(declare-fun lt!1572226 () Unit!72045)

(assert (=> b!4359814 (= lt!1572226 lt!1572225)))

(assert (=> b!4359814 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) lambda!141214)))

(declare-fun lt!1572224 () Unit!72045)

(declare-fun Unit!72145 () Unit!72045)

(assert (=> b!4359814 (= lt!1572224 Unit!72145)))

(declare-fun res!1792339 () Bool)

(assert (=> b!4359814 (= res!1792339 (forall!9142 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707)))) lambda!141214))))

(assert (=> b!4359814 (=> (not res!1792339) (not e!2713240))))

(assert (=> b!4359814 e!2713240))

(declare-fun lt!1572232 () Unit!72045)

(declare-fun Unit!72146 () Unit!72045)

(assert (=> b!4359814 (= lt!1572232 Unit!72146)))

(assert (=> b!4359815 (= e!2713242 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))))))

(declare-fun lt!1572236 () Unit!72045)

(assert (=> b!4359815 (= lt!1572236 call!303040)))

(assert (=> b!4359815 call!303038))

(declare-fun lt!1572231 () Unit!72045)

(assert (=> b!4359815 (= lt!1572231 lt!1572236)))

(assert (=> b!4359815 call!303039))

(declare-fun lt!1572239 () Unit!72045)

(declare-fun Unit!72147 () Unit!72045)

(assert (=> b!4359815 (= lt!1572239 Unit!72147)))

(declare-fun bm!303033 () Bool)

(assert (=> bm!303033 (= call!303038 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (ite c!741311 lambda!141212 lambda!141214)))))

(declare-fun bm!303034 () Bool)

(assert (=> bm!303034 (= call!303039 (forall!9142 (ite c!741311 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))) (ite c!741311 lambda!141212 lambda!141214)))))

(declare-fun b!4359816 () Bool)

(declare-fun res!1792338 () Bool)

(assert (=> b!4359816 (=> (not res!1792338) (not e!2713241))))

(assert (=> b!4359816 (= res!1792338 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) lambda!141217))))

(declare-fun bm!303035 () Bool)

(assert (=> bm!303035 (= call!303040 (lemmaContainsAllItsOwnKeys!67 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))))))

(assert (= (and d!1289374 c!741311) b!4359815))

(assert (= (and d!1289374 (not c!741311)) b!4359814))

(assert (= (and b!4359814 res!1792339) b!4359812))

(assert (= (or b!4359815 b!4359814) bm!303035))

(assert (= (or b!4359815 b!4359814) bm!303034))

(assert (= (or b!4359815 b!4359814) bm!303033))

(assert (= (and d!1289374 res!1792337) b!4359816))

(assert (= (and b!4359816 res!1792338) b!4359813))

(declare-fun m!4976691 () Bool)

(assert (=> b!4359812 m!4976691))

(declare-fun m!4976693 () Bool)

(assert (=> bm!303033 m!4976693))

(declare-fun m!4976695 () Bool)

(assert (=> d!1289374 m!4976695))

(declare-fun m!4976697 () Bool)

(assert (=> d!1289374 m!4976697))

(assert (=> b!4359814 m!4976043))

(declare-fun m!4976699 () Bool)

(assert (=> b!4359814 m!4976699))

(assert (=> b!4359814 m!4976691))

(declare-fun m!4976703 () Bool)

(assert (=> b!4359814 m!4976703))

(assert (=> b!4359814 m!4976699))

(declare-fun m!4976705 () Bool)

(assert (=> b!4359814 m!4976705))

(declare-fun m!4976707 () Bool)

(assert (=> b!4359814 m!4976707))

(assert (=> b!4359814 m!4976043))

(declare-fun m!4976709 () Bool)

(assert (=> b!4359814 m!4976709))

(declare-fun m!4976711 () Bool)

(assert (=> b!4359814 m!4976711))

(declare-fun m!4976713 () Bool)

(assert (=> b!4359814 m!4976713))

(assert (=> b!4359814 m!4976713))

(declare-fun m!4976715 () Bool)

(assert (=> b!4359814 m!4976715))

(declare-fun m!4976717 () Bool)

(assert (=> b!4359814 m!4976717))

(declare-fun m!4976719 () Bool)

(assert (=> b!4359814 m!4976719))

(declare-fun m!4976721 () Bool)

(assert (=> b!4359816 m!4976721))

(assert (=> bm!303035 m!4976043))

(declare-fun m!4976723 () Bool)

(assert (=> bm!303035 m!4976723))

(declare-fun m!4976725 () Bool)

(assert (=> b!4359813 m!4976725))

(declare-fun m!4976727 () Bool)

(assert (=> bm!303034 m!4976727))

(assert (=> b!4359380 d!1289374))

(declare-fun bs!633332 () Bool)

(declare-fun d!1289386 () Bool)

(assert (= bs!633332 (and d!1289386 d!1289232)))

(declare-fun lambda!141218 () Int)

(assert (=> bs!633332 (= lambda!141218 lambda!141174)))

(declare-fun bs!633333 () Bool)

(assert (= bs!633333 (and d!1289386 d!1289210)))

(assert (=> bs!633333 (= lambda!141218 lambda!141163)))

(declare-fun bs!633334 () Bool)

(assert (= bs!633334 (and d!1289386 d!1289188)))

(assert (=> bs!633334 (= lambda!141218 lambda!141161)))

(declare-fun bs!633335 () Bool)

(assert (= bs!633335 (and d!1289386 d!1289120)))

(assert (=> bs!633335 (not (= lambda!141218 lambda!141083))))

(declare-fun bs!633336 () Bool)

(assert (= bs!633336 (and d!1289386 d!1289218)))

(assert (=> bs!633336 (= lambda!141218 lambda!141166)))

(declare-fun bs!633337 () Bool)

(assert (= bs!633337 (and d!1289386 d!1289228)))

(assert (=> bs!633337 (= lambda!141218 lambda!141173)))

(declare-fun bs!633338 () Bool)

(assert (= bs!633338 (and d!1289386 start!422132)))

(assert (=> bs!633338 (= lambda!141218 lambda!141069)))

(declare-fun bs!633339 () Bool)

(assert (= bs!633339 (and d!1289386 d!1289198)))

(assert (=> bs!633339 (= lambda!141218 lambda!141162)))

(declare-fun lt!1572249 () ListMap!2229)

(assert (=> d!1289386 (invariantList!684 (toList!2986 lt!1572249))))

(declare-fun e!2713249 () ListMap!2229)

(assert (=> d!1289386 (= lt!1572249 e!2713249)))

(declare-fun c!741312 () Bool)

(assert (=> d!1289386 (= c!741312 ((_ is Cons!48962) (t!356006 (t!356006 (toList!2985 lm!1707)))))))

(assert (=> d!1289386 (forall!9140 (t!356006 (t!356006 (toList!2985 lm!1707))) lambda!141218)))

(assert (=> d!1289386 (= (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707)))) lt!1572249)))

(declare-fun b!4359826 () Bool)

(assert (=> b!4359826 (= e!2713249 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (t!356006 (t!356006 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (t!356006 (toList!2985 lm!1707)))))))))

(declare-fun b!4359827 () Bool)

(assert (=> b!4359827 (= e!2713249 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289386 c!741312) b!4359826))

(assert (= (and d!1289386 (not c!741312)) b!4359827))

(declare-fun m!4976729 () Bool)

(assert (=> d!1289386 m!4976729))

(declare-fun m!4976731 () Bool)

(assert (=> d!1289386 m!4976731))

(declare-fun m!4976733 () Bool)

(assert (=> b!4359826 m!4976733))

(assert (=> b!4359826 m!4976733))

(declare-fun m!4976735 () Bool)

(assert (=> b!4359826 m!4976735))

(assert (=> b!4359380 d!1289386))

(assert (=> d!1289208 d!1289220))

(declare-fun d!1289388 () Bool)

(assert (=> d!1289388 (contains!11183 lt!1571629 key!3918)))

(assert (=> d!1289388 true))

(declare-fun _$11!1164 () Unit!72045)

(assert (=> d!1289388 (= (choose!26976 (_2!27482 (h!54519 (toList!2985 lm!1707))) key!3918 newValue!99 lt!1571629) _$11!1164)))

(declare-fun bs!633340 () Bool)

(assert (= bs!633340 d!1289388))

(assert (=> bs!633340 m!4975499))

(assert (=> d!1289208 d!1289388))

(assert (=> d!1289208 d!1289368))

(declare-fun d!1289392 () Bool)

(declare-fun res!1792354 () Bool)

(declare-fun e!2713262 () Bool)

(assert (=> d!1289392 (=> res!1792354 e!2713262)))

(assert (=> d!1289392 (= res!1792354 (and ((_ is Cons!48961) (t!356005 newBucket!200)) (= (_1!27481 (h!54518 (t!356005 newBucket!200))) (_1!27481 (h!54518 newBucket!200)))))))

(assert (=> d!1289392 (= (containsKey!714 (t!356005 newBucket!200) (_1!27481 (h!54518 newBucket!200))) e!2713262)))

(declare-fun b!4359846 () Bool)

(declare-fun e!2713263 () Bool)

(assert (=> b!4359846 (= e!2713262 e!2713263)))

(declare-fun res!1792355 () Bool)

(assert (=> b!4359846 (=> (not res!1792355) (not e!2713263))))

(assert (=> b!4359846 (= res!1792355 ((_ is Cons!48961) (t!356005 newBucket!200)))))

(declare-fun b!4359847 () Bool)

(assert (=> b!4359847 (= e!2713263 (containsKey!714 (t!356005 (t!356005 newBucket!200)) (_1!27481 (h!54518 newBucket!200))))))

(assert (= (and d!1289392 (not res!1792354)) b!4359846))

(assert (= (and b!4359846 res!1792355) b!4359847))

(declare-fun m!4976745 () Bool)

(assert (=> b!4359847 m!4976745))

(assert (=> b!4359229 d!1289392))

(declare-fun d!1289396 () Bool)

(declare-fun res!1792360 () Bool)

(declare-fun e!2713268 () Bool)

(assert (=> d!1289396 (=> res!1792360 e!2713268)))

(assert (=> d!1289396 (= res!1792360 (and ((_ is Cons!48961) (toList!2986 lt!1571644)) (= (_1!27481 (h!54518 (toList!2986 lt!1571644))) key!3918)))))

(assert (=> d!1289396 (= (containsKey!717 (toList!2986 lt!1571644) key!3918) e!2713268)))

(declare-fun b!4359852 () Bool)

(declare-fun e!2713269 () Bool)

(assert (=> b!4359852 (= e!2713268 e!2713269)))

(declare-fun res!1792361 () Bool)

(assert (=> b!4359852 (=> (not res!1792361) (not e!2713269))))

(assert (=> b!4359852 (= res!1792361 ((_ is Cons!48961) (toList!2986 lt!1571644)))))

(declare-fun b!4359853 () Bool)

(assert (=> b!4359853 (= e!2713269 (containsKey!717 (t!356005 (toList!2986 lt!1571644)) key!3918))))

(assert (= (and d!1289396 (not res!1792360)) b!4359852))

(assert (= (and b!4359852 res!1792361) b!4359853))

(declare-fun m!4976747 () Bool)

(assert (=> b!4359853 m!4976747))

(assert (=> b!4359401 d!1289396))

(declare-fun d!1289398 () Bool)

(assert (=> d!1289398 (containsKey!717 (toList!2986 lt!1571644) key!3918)))

(declare-fun lt!1572255 () Unit!72045)

(declare-fun choose!26989 (List!49085 K!10320) Unit!72045)

(assert (=> d!1289398 (= lt!1572255 (choose!26989 (toList!2986 lt!1571644) key!3918))))

(assert (=> d!1289398 (invariantList!684 (toList!2986 lt!1571644))))

(assert (=> d!1289398 (= (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571644) key!3918) lt!1572255)))

(declare-fun bs!633341 () Bool)

(assert (= bs!633341 d!1289398))

(assert (=> bs!633341 m!4976155))

(declare-fun m!4976749 () Bool)

(assert (=> bs!633341 m!4976749))

(declare-fun m!4976751 () Bool)

(assert (=> bs!633341 m!4976751))

(assert (=> b!4359401 d!1289398))

(declare-fun d!1289400 () Bool)

(declare-fun res!1792362 () Bool)

(declare-fun e!2713270 () Bool)

(assert (=> d!1289400 (=> res!1792362 e!2713270)))

(assert (=> d!1289400 (= res!1792362 ((_ is Nil!48962) (t!356006 (toList!2985 lt!1571637))))))

(assert (=> d!1289400 (= (forall!9140 (t!356006 (toList!2985 lt!1571637)) lambda!141069) e!2713270)))

(declare-fun b!4359854 () Bool)

(declare-fun e!2713271 () Bool)

(assert (=> b!4359854 (= e!2713270 e!2713271)))

(declare-fun res!1792363 () Bool)

(assert (=> b!4359854 (=> (not res!1792363) (not e!2713271))))

(assert (=> b!4359854 (= res!1792363 (dynLambda!20643 lambda!141069 (h!54519 (t!356006 (toList!2985 lt!1571637)))))))

(declare-fun b!4359855 () Bool)

(assert (=> b!4359855 (= e!2713271 (forall!9140 (t!356006 (t!356006 (toList!2985 lt!1571637))) lambda!141069))))

(assert (= (and d!1289400 (not res!1792362)) b!4359854))

(assert (= (and b!4359854 res!1792363) b!4359855))

(declare-fun b_lambda!131569 () Bool)

(assert (=> (not b_lambda!131569) (not b!4359854)))

(declare-fun m!4976753 () Bool)

(assert (=> b!4359854 m!4976753))

(declare-fun m!4976755 () Bool)

(assert (=> b!4359855 m!4976755))

(assert (=> b!4359104 d!1289400))

(declare-fun d!1289402 () Bool)

(assert (=> d!1289402 (= (get!15907 (getValueByKey!466 (toList!2985 lm!1707) (_1!27482 (h!54519 (toList!2985 lm!1707))))) (v!43373 (getValueByKey!466 (toList!2985 lm!1707) (_1!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289184 d!1289402))

(declare-fun b!4359856 () Bool)

(declare-fun e!2713272 () Option!10480)

(assert (=> b!4359856 (= e!2713272 (Some!10479 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun b!4359858 () Bool)

(declare-fun e!2713273 () Option!10480)

(assert (=> b!4359858 (= e!2713273 (getValueByKey!466 (t!356006 (toList!2985 lm!1707)) (_1!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun b!4359857 () Bool)

(assert (=> b!4359857 (= e!2713272 e!2713273)))

(declare-fun c!741320 () Bool)

(assert (=> b!4359857 (= c!741320 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (not (= (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4359859 () Bool)

(assert (=> b!4359859 (= e!2713273 None!10479)))

(declare-fun d!1289404 () Bool)

(declare-fun c!741319 () Bool)

(assert (=> d!1289404 (= c!741319 (and ((_ is Cons!48962) (toList!2985 lm!1707)) (= (_1!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289404 (= (getValueByKey!466 (toList!2985 lm!1707) (_1!27482 (h!54519 (toList!2985 lm!1707)))) e!2713272)))

(assert (= (and d!1289404 c!741319) b!4359856))

(assert (= (and d!1289404 (not c!741319)) b!4359857))

(assert (= (and b!4359857 c!741320) b!4359858))

(assert (= (and b!4359857 (not c!741320)) b!4359859))

(declare-fun m!4976757 () Bool)

(assert (=> b!4359858 m!4976757))

(assert (=> d!1289184 d!1289404))

(declare-fun d!1289406 () Bool)

(assert (=> d!1289406 (eq!271 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (+!660 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) (tuple2!48375 key!3918 newValue!99)))))

(assert (=> d!1289406 true))

(declare-fun _$15!550 () Unit!72045)

(assert (=> d!1289406 (= (choose!26974 lt!1571642 key!3918 newValue!99 (_2!27482 (h!54519 (toList!2985 lm!1707)))) _$15!550)))

(declare-fun bs!633342 () Bool)

(assert (= bs!633342 d!1289406))

(assert (=> bs!633342 m!4975529))

(assert (=> bs!633342 m!4975529))

(assert (=> bs!633342 m!4976029))

(assert (=> bs!633342 m!4976025))

(assert (=> bs!633342 m!4976031))

(assert (=> bs!633342 m!4976029))

(assert (=> bs!633342 m!4976033))

(assert (=> bs!633342 m!4976025))

(assert (=> bs!633342 m!4976031))

(assert (=> d!1289204 d!1289406))

(declare-fun d!1289408 () Bool)

(declare-fun e!2713280 () Bool)

(assert (=> d!1289408 e!2713280))

(declare-fun res!1792364 () Bool)

(assert (=> d!1289408 (=> (not res!1792364) (not e!2713280))))

(declare-fun lt!1572270 () ListMap!2229)

(assert (=> d!1289408 (= res!1792364 (contains!11183 lt!1572270 (_1!27481 (tuple2!48375 key!3918 newValue!99))))))

(declare-fun lt!1572271 () List!49085)

(assert (=> d!1289408 (= lt!1572270 (ListMap!2230 lt!1572271))))

(declare-fun lt!1572273 () Unit!72045)

(declare-fun lt!1572272 () Unit!72045)

(assert (=> d!1289408 (= lt!1572273 lt!1572272)))

(assert (=> d!1289408 (= (getValueByKey!467 lt!1572271 (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289408 (= lt!1572272 (lemmaContainsTupThenGetReturnValue!241 lt!1572271 (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289408 (= lt!1572271 (insertNoDuplicatedKeys!108 (toList!2986 lt!1571642) (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289408 (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572270)))

(declare-fun b!4359872 () Bool)

(declare-fun res!1792365 () Bool)

(assert (=> b!4359872 (=> (not res!1792365) (not e!2713280))))

(assert (=> b!4359872 (= res!1792365 (= (getValueByKey!467 (toList!2986 lt!1572270) (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99)))))))

(declare-fun b!4359873 () Bool)

(assert (=> b!4359873 (= e!2713280 (contains!11188 (toList!2986 lt!1572270) (tuple2!48375 key!3918 newValue!99)))))

(assert (= (and d!1289408 res!1792364) b!4359872))

(assert (= (and b!4359872 res!1792365) b!4359873))

(declare-fun m!4976759 () Bool)

(assert (=> d!1289408 m!4976759))

(declare-fun m!4976761 () Bool)

(assert (=> d!1289408 m!4976761))

(declare-fun m!4976763 () Bool)

(assert (=> d!1289408 m!4976763))

(declare-fun m!4976765 () Bool)

(assert (=> d!1289408 m!4976765))

(declare-fun m!4976767 () Bool)

(assert (=> b!4359872 m!4976767))

(declare-fun m!4976769 () Bool)

(assert (=> b!4359873 m!4976769))

(assert (=> d!1289204 d!1289408))

(declare-fun bs!633343 () Bool)

(declare-fun b!4359877 () Bool)

(assert (= bs!633343 (and b!4359877 d!1289374)))

(declare-fun lambda!141223 () Int)

(assert (=> bs!633343 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572234) (= lambda!141223 lambda!141217))))

(declare-fun bs!633344 () Bool)

(assert (= bs!633344 (and b!4359877 d!1289146)))

(assert (=> bs!633344 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571927) (= lambda!141223 lambda!141158))))

(declare-fun bs!633345 () Bool)

(assert (= bs!633345 (and b!4359877 b!4359814)))

(assert (=> bs!633345 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141223 lambda!141213))))

(declare-fun bs!633346 () Bool)

(assert (= bs!633346 (and b!4359877 b!4359307)))

(assert (=> bs!633346 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141223 lambda!141156))))

(assert (=> bs!633346 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571922) (= lambda!141223 lambda!141157))))

(declare-fun bs!633347 () Bool)

(assert (= bs!633347 (and b!4359877 b!4359397)))

(assert (=> bs!633347 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571642) (= lambda!141223 lambda!141168))))

(declare-fun bs!633348 () Bool)

(assert (= bs!633348 (and b!4359877 b!4359815)))

(assert (=> bs!633348 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141223 lambda!141212))))

(declare-fun bs!633349 () Bool)

(assert (= bs!633349 (and b!4359877 b!4359398)))

(assert (=> bs!633349 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571642) (= lambda!141223 lambda!141167))))

(declare-fun bs!633350 () Bool)

(assert (= bs!633350 (and b!4359877 d!1289236)))

(assert (=> bs!633350 (not (= lambda!141223 lambda!141177))))

(declare-fun bs!633351 () Bool)

(assert (= bs!633351 (and b!4359877 d!1289224)))

(assert (=> bs!633351 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572027) (= lambda!141223 lambda!141170))))

(declare-fun bs!633352 () Bool)

(assert (= bs!633352 (and b!4359877 b!4359308)))

(assert (=> bs!633352 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141223 lambda!141155))))

(assert (=> bs!633347 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572022) (= lambda!141223 lambda!141169))))

(declare-fun bs!633353 () Bool)

(assert (= bs!633353 (and b!4359877 d!1289310)))

(assert (=> bs!633353 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141223 lambda!141200))))

(assert (=> bs!633345 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572229) (= lambda!141223 lambda!141214))))

(assert (=> b!4359877 true))

(declare-fun bs!633354 () Bool)

(declare-fun b!4359876 () Bool)

(assert (= bs!633354 (and b!4359876 d!1289374)))

(declare-fun lambda!141228 () Int)

(assert (=> bs!633354 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572234) (= lambda!141228 lambda!141217))))

(declare-fun bs!633355 () Bool)

(assert (= bs!633355 (and b!4359876 d!1289146)))

(assert (=> bs!633355 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571927) (= lambda!141228 lambda!141158))))

(declare-fun bs!633356 () Bool)

(assert (= bs!633356 (and b!4359876 b!4359814)))

(assert (=> bs!633356 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141228 lambda!141213))))

(declare-fun bs!633357 () Bool)

(assert (= bs!633357 (and b!4359876 b!4359307)))

(assert (=> bs!633357 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141228 lambda!141156))))

(assert (=> bs!633357 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571922) (= lambda!141228 lambda!141157))))

(declare-fun bs!633358 () Bool)

(assert (= bs!633358 (and b!4359876 b!4359397)))

(assert (=> bs!633358 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571642) (= lambda!141228 lambda!141168))))

(declare-fun bs!633359 () Bool)

(assert (= bs!633359 (and b!4359876 b!4359815)))

(assert (=> bs!633359 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141228 lambda!141212))))

(declare-fun bs!633360 () Bool)

(assert (= bs!633360 (and b!4359876 b!4359398)))

(assert (=> bs!633360 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571642) (= lambda!141228 lambda!141167))))

(declare-fun bs!633361 () Bool)

(assert (= bs!633361 (and b!4359876 d!1289236)))

(assert (=> bs!633361 (not (= lambda!141228 lambda!141177))))

(declare-fun bs!633362 () Bool)

(assert (= bs!633362 (and b!4359876 d!1289224)))

(assert (=> bs!633362 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572027) (= lambda!141228 lambda!141170))))

(declare-fun bs!633363 () Bool)

(assert (= bs!633363 (and b!4359876 b!4359308)))

(assert (=> bs!633363 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141228 lambda!141155))))

(declare-fun bs!633364 () Bool)

(assert (= bs!633364 (and b!4359876 b!4359877)))

(assert (=> bs!633364 (= lambda!141228 lambda!141223)))

(assert (=> bs!633358 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572022) (= lambda!141228 lambda!141169))))

(declare-fun bs!633365 () Bool)

(assert (= bs!633365 (and b!4359876 d!1289310)))

(assert (=> bs!633365 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1571643) (= lambda!141228 lambda!141200))))

(assert (=> bs!633356 (= (= (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572229) (= lambda!141228 lambda!141214))))

(assert (=> b!4359876 true))

(declare-fun lt!1572280 () ListMap!2229)

(declare-fun lambda!141229 () Int)

(assert (=> b!4359876 (= (= lt!1572280 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141229 lambda!141228))))

(assert (=> bs!633354 (= (= lt!1572280 lt!1572234) (= lambda!141229 lambda!141217))))

(assert (=> bs!633355 (= (= lt!1572280 lt!1571927) (= lambda!141229 lambda!141158))))

(assert (=> bs!633356 (= (= lt!1572280 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141229 lambda!141213))))

(assert (=> bs!633357 (= (= lt!1572280 lt!1571643) (= lambda!141229 lambda!141156))))

(assert (=> bs!633357 (= (= lt!1572280 lt!1571922) (= lambda!141229 lambda!141157))))

(assert (=> bs!633358 (= (= lt!1572280 lt!1571642) (= lambda!141229 lambda!141168))))

(assert (=> bs!633359 (= (= lt!1572280 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141229 lambda!141212))))

(assert (=> bs!633360 (= (= lt!1572280 lt!1571642) (= lambda!141229 lambda!141167))))

(assert (=> bs!633361 (not (= lambda!141229 lambda!141177))))

(assert (=> bs!633362 (= (= lt!1572280 lt!1572027) (= lambda!141229 lambda!141170))))

(assert (=> bs!633363 (= (= lt!1572280 lt!1571643) (= lambda!141229 lambda!141155))))

(assert (=> bs!633364 (= (= lt!1572280 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141229 lambda!141223))))

(assert (=> bs!633358 (= (= lt!1572280 lt!1572022) (= lambda!141229 lambda!141169))))

(assert (=> bs!633365 (= (= lt!1572280 lt!1571643) (= lambda!141229 lambda!141200))))

(assert (=> bs!633356 (= (= lt!1572280 lt!1572229) (= lambda!141229 lambda!141214))))

(assert (=> b!4359876 true))

(declare-fun bs!633367 () Bool)

(declare-fun d!1289410 () Bool)

(assert (= bs!633367 (and d!1289410 b!4359876)))

(declare-fun lt!1572285 () ListMap!2229)

(declare-fun lambda!141231 () Int)

(assert (=> bs!633367 (= (= lt!1572285 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141231 lambda!141228))))

(declare-fun bs!633369 () Bool)

(assert (= bs!633369 (and d!1289410 d!1289374)))

(assert (=> bs!633369 (= (= lt!1572285 lt!1572234) (= lambda!141231 lambda!141217))))

(declare-fun bs!633370 () Bool)

(assert (= bs!633370 (and d!1289410 d!1289146)))

(assert (=> bs!633370 (= (= lt!1572285 lt!1571927) (= lambda!141231 lambda!141158))))

(declare-fun bs!633371 () Bool)

(assert (= bs!633371 (and d!1289410 b!4359814)))

(assert (=> bs!633371 (= (= lt!1572285 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141231 lambda!141213))))

(declare-fun bs!633372 () Bool)

(assert (= bs!633372 (and d!1289410 b!4359307)))

(assert (=> bs!633372 (= (= lt!1572285 lt!1571643) (= lambda!141231 lambda!141156))))

(assert (=> bs!633372 (= (= lt!1572285 lt!1571922) (= lambda!141231 lambda!141157))))

(declare-fun bs!633374 () Bool)

(assert (= bs!633374 (and d!1289410 b!4359397)))

(assert (=> bs!633374 (= (= lt!1572285 lt!1571642) (= lambda!141231 lambda!141168))))

(declare-fun bs!633376 () Bool)

(assert (= bs!633376 (and d!1289410 b!4359815)))

(assert (=> bs!633376 (= (= lt!1572285 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141231 lambda!141212))))

(declare-fun bs!633378 () Bool)

(assert (= bs!633378 (and d!1289410 d!1289236)))

(assert (=> bs!633378 (not (= lambda!141231 lambda!141177))))

(declare-fun bs!633379 () Bool)

(assert (= bs!633379 (and d!1289410 d!1289224)))

(assert (=> bs!633379 (= (= lt!1572285 lt!1572027) (= lambda!141231 lambda!141170))))

(declare-fun bs!633380 () Bool)

(assert (= bs!633380 (and d!1289410 b!4359308)))

(assert (=> bs!633380 (= (= lt!1572285 lt!1571643) (= lambda!141231 lambda!141155))))

(declare-fun bs!633381 () Bool)

(assert (= bs!633381 (and d!1289410 b!4359877)))

(assert (=> bs!633381 (= (= lt!1572285 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141231 lambda!141223))))

(assert (=> bs!633374 (= (= lt!1572285 lt!1572022) (= lambda!141231 lambda!141169))))

(assert (=> bs!633367 (= (= lt!1572285 lt!1572280) (= lambda!141231 lambda!141229))))

(declare-fun bs!633385 () Bool)

(assert (= bs!633385 (and d!1289410 b!4359398)))

(assert (=> bs!633385 (= (= lt!1572285 lt!1571642) (= lambda!141231 lambda!141167))))

(declare-fun bs!633387 () Bool)

(assert (= bs!633387 (and d!1289410 d!1289310)))

(assert (=> bs!633387 (= (= lt!1572285 lt!1571643) (= lambda!141231 lambda!141200))))

(assert (=> bs!633371 (= (= lt!1572285 lt!1572229) (= lambda!141231 lambda!141214))))

(assert (=> d!1289410 true))

(declare-fun b!4359874 () Bool)

(declare-fun e!2713281 () Bool)

(assert (=> b!4359874 (= e!2713281 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) lambda!141229))))

(declare-fun b!4359875 () Bool)

(declare-fun e!2713282 () Bool)

(assert (=> b!4359875 (= e!2713282 (invariantList!684 (toList!2986 lt!1572285)))))

(assert (=> d!1289410 e!2713282))

(declare-fun res!1792366 () Bool)

(assert (=> d!1289410 (=> (not res!1792366) (not e!2713282))))

(assert (=> d!1289410 (= res!1792366 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141231))))

(declare-fun e!2713283 () ListMap!2229)

(assert (=> d!1289410 (= lt!1572285 e!2713283)))

(declare-fun c!741327 () Bool)

(assert (=> d!1289410 (= c!741327 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289410 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707))))))

(assert (=> d!1289410 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) lt!1572285)))

(assert (=> b!4359876 (= e!2713283 lt!1572280)))

(declare-fun lt!1572293 () ListMap!2229)

(assert (=> b!4359876 (= lt!1572293 (+!660 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359876 (= lt!1572280 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572292 () Unit!72045)

(declare-fun call!303043 () Unit!72045)

(assert (=> b!4359876 (= lt!1572292 call!303043)))

(assert (=> b!4359876 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) lambda!141228)))

(declare-fun lt!1572284 () Unit!72045)

(assert (=> b!4359876 (= lt!1572284 lt!1572292)))

(assert (=> b!4359876 (forall!9142 (toList!2986 lt!1572293) lambda!141229)))

(declare-fun lt!1572281 () Unit!72045)

(declare-fun Unit!72153 () Unit!72045)

(assert (=> b!4359876 (= lt!1572281 Unit!72153)))

(assert (=> b!4359876 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141229)))

(declare-fun lt!1572291 () Unit!72045)

(declare-fun Unit!72154 () Unit!72045)

(assert (=> b!4359876 (= lt!1572291 Unit!72154)))

(declare-fun lt!1572294 () Unit!72045)

(declare-fun Unit!72155 () Unit!72045)

(assert (=> b!4359876 (= lt!1572294 Unit!72155)))

(declare-fun lt!1572288 () Unit!72045)

(assert (=> b!4359876 (= lt!1572288 (forallContained!1783 (toList!2986 lt!1572293) lambda!141229 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359876 (contains!11183 lt!1572293 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572286 () Unit!72045)

(declare-fun Unit!72156 () Unit!72045)

(assert (=> b!4359876 (= lt!1572286 Unit!72156)))

(assert (=> b!4359876 (contains!11183 lt!1572280 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572279 () Unit!72045)

(declare-fun Unit!72157 () Unit!72045)

(assert (=> b!4359876 (= lt!1572279 Unit!72157)))

(declare-fun call!303042 () Bool)

(assert (=> b!4359876 call!303042))

(declare-fun lt!1572278 () Unit!72045)

(declare-fun Unit!72158 () Unit!72045)

(assert (=> b!4359876 (= lt!1572278 Unit!72158)))

(assert (=> b!4359876 (forall!9142 (toList!2986 lt!1572293) lambda!141229)))

(declare-fun lt!1572289 () Unit!72045)

(declare-fun Unit!72159 () Unit!72045)

(assert (=> b!4359876 (= lt!1572289 Unit!72159)))

(declare-fun lt!1572274 () Unit!72045)

(declare-fun Unit!72160 () Unit!72045)

(assert (=> b!4359876 (= lt!1572274 Unit!72160)))

(declare-fun lt!1572276 () Unit!72045)

(assert (=> b!4359876 (= lt!1572276 (addForallContainsKeyThenBeforeAdding!67 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)) lt!1572280 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303041 () Bool)

(assert (=> b!4359876 call!303041))

(declare-fun lt!1572277 () Unit!72045)

(assert (=> b!4359876 (= lt!1572277 lt!1572276)))

(assert (=> b!4359876 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) lambda!141229)))

(declare-fun lt!1572275 () Unit!72045)

(declare-fun Unit!72161 () Unit!72045)

(assert (=> b!4359876 (= lt!1572275 Unit!72161)))

(declare-fun res!1792368 () Bool)

(assert (=> b!4359876 (= res!1792368 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141229))))

(assert (=> b!4359876 (=> (not res!1792368) (not e!2713281))))

(assert (=> b!4359876 e!2713281))

(declare-fun lt!1572283 () Unit!72045)

(declare-fun Unit!72162 () Unit!72045)

(assert (=> b!4359876 (= lt!1572283 Unit!72162)))

(assert (=> b!4359877 (= e!2713283 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99)))))

(declare-fun lt!1572287 () Unit!72045)

(assert (=> b!4359877 (= lt!1572287 call!303043)))

(assert (=> b!4359877 call!303041))

(declare-fun lt!1572282 () Unit!72045)

(assert (=> b!4359877 (= lt!1572282 lt!1572287)))

(assert (=> b!4359877 call!303042))

(declare-fun lt!1572290 () Unit!72045)

(declare-fun Unit!72163 () Unit!72045)

(assert (=> b!4359877 (= lt!1572290 Unit!72163)))

(declare-fun bm!303036 () Bool)

(assert (=> bm!303036 (= call!303041 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (ite c!741327 lambda!141223 lambda!141229)))))

(declare-fun bm!303037 () Bool)

(assert (=> bm!303037 (= call!303042 (forall!9142 (ite c!741327 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741327 lambda!141223 lambda!141229)))))

(declare-fun b!4359878 () Bool)

(declare-fun res!1792367 () Bool)

(assert (=> b!4359878 (=> (not res!1792367) (not e!2713282))))

(assert (=> b!4359878 (= res!1792367 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) lambda!141231))))

(declare-fun bm!303038 () Bool)

(assert (=> bm!303038 (= call!303043 (lemmaContainsAllItsOwnKeys!67 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))))))

(assert (= (and d!1289410 c!741327) b!4359877))

(assert (= (and d!1289410 (not c!741327)) b!4359876))

(assert (= (and b!4359876 res!1792368) b!4359874))

(assert (= (or b!4359877 b!4359876) bm!303038))

(assert (= (or b!4359877 b!4359876) bm!303037))

(assert (= (or b!4359877 b!4359876) bm!303036))

(assert (= (and d!1289410 res!1792366) b!4359878))

(assert (= (and b!4359878 res!1792367) b!4359875))

(declare-fun m!4976795 () Bool)

(assert (=> b!4359874 m!4976795))

(declare-fun m!4976797 () Bool)

(assert (=> bm!303036 m!4976797))

(declare-fun m!4976801 () Bool)

(assert (=> d!1289410 m!4976801))

(assert (=> d!1289410 m!4975929))

(assert (=> b!4359876 m!4976025))

(declare-fun m!4976803 () Bool)

(assert (=> b!4359876 m!4976803))

(assert (=> b!4359876 m!4976795))

(declare-fun m!4976805 () Bool)

(assert (=> b!4359876 m!4976805))

(assert (=> b!4359876 m!4976803))

(declare-fun m!4976807 () Bool)

(assert (=> b!4359876 m!4976807))

(declare-fun m!4976809 () Bool)

(assert (=> b!4359876 m!4976809))

(assert (=> b!4359876 m!4976025))

(declare-fun m!4976811 () Bool)

(assert (=> b!4359876 m!4976811))

(declare-fun m!4976813 () Bool)

(assert (=> b!4359876 m!4976813))

(declare-fun m!4976815 () Bool)

(assert (=> b!4359876 m!4976815))

(assert (=> b!4359876 m!4976815))

(declare-fun m!4976817 () Bool)

(assert (=> b!4359876 m!4976817))

(declare-fun m!4976819 () Bool)

(assert (=> b!4359876 m!4976819))

(declare-fun m!4976821 () Bool)

(assert (=> b!4359876 m!4976821))

(declare-fun m!4976823 () Bool)

(assert (=> b!4359878 m!4976823))

(assert (=> bm!303038 m!4976025))

(declare-fun m!4976825 () Bool)

(assert (=> bm!303038 m!4976825))

(declare-fun m!4976827 () Bool)

(assert (=> b!4359875 m!4976827))

(declare-fun m!4976829 () Bool)

(assert (=> bm!303037 m!4976829))

(assert (=> d!1289204 d!1289410))

(assert (=> d!1289204 d!1289110))

(declare-fun d!1289414 () Bool)

(declare-fun e!2713290 () Bool)

(assert (=> d!1289414 e!2713290))

(declare-fun res!1792378 () Bool)

(assert (=> d!1289414 (=> (not res!1792378) (not e!2713290))))

(declare-fun lt!1572302 () ListMap!2229)

(assert (=> d!1289414 (= res!1792378 (contains!11183 lt!1572302 (_1!27481 (tuple2!48375 key!3918 newValue!99))))))

(declare-fun lt!1572303 () List!49085)

(assert (=> d!1289414 (= lt!1572302 (ListMap!2230 lt!1572303))))

(declare-fun lt!1572305 () Unit!72045)

(declare-fun lt!1572304 () Unit!72045)

(assert (=> d!1289414 (= lt!1572305 lt!1572304)))

(assert (=> d!1289414 (= (getValueByKey!467 lt!1572303 (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289414 (= lt!1572304 (lemmaContainsTupThenGetReturnValue!241 lt!1572303 (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289414 (= lt!1572303 (insertNoDuplicatedKeys!108 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642)) (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289414 (= (+!660 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) (tuple2!48375 key!3918 newValue!99)) lt!1572302)))

(declare-fun b!4359896 () Bool)

(declare-fun res!1792379 () Bool)

(assert (=> b!4359896 (=> (not res!1792379) (not e!2713290))))

(assert (=> b!4359896 (= res!1792379 (= (getValueByKey!467 (toList!2986 lt!1572302) (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99)))))))

(declare-fun b!4359897 () Bool)

(assert (=> b!4359897 (= e!2713290 (contains!11188 (toList!2986 lt!1572302) (tuple2!48375 key!3918 newValue!99)))))

(assert (= (and d!1289414 res!1792378) b!4359896))

(assert (= (and b!4359896 res!1792379) b!4359897))

(declare-fun m!4976831 () Bool)

(assert (=> d!1289414 m!4976831))

(declare-fun m!4976833 () Bool)

(assert (=> d!1289414 m!4976833))

(declare-fun m!4976835 () Bool)

(assert (=> d!1289414 m!4976835))

(declare-fun m!4976837 () Bool)

(assert (=> d!1289414 m!4976837))

(declare-fun m!4976839 () Bool)

(assert (=> b!4359896 m!4976839))

(declare-fun m!4976841 () Bool)

(assert (=> b!4359897 m!4976841))

(assert (=> d!1289204 d!1289414))

(assert (=> d!1289204 d!1289224))

(declare-fun d!1289416 () Bool)

(assert (=> d!1289416 (= (eq!271 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (+!660 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) (tuple2!48375 key!3918 newValue!99))) (= (content!7735 (toList!2986 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))))) (content!7735 (toList!2986 (+!660 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) lt!1571642) (tuple2!48375 key!3918 newValue!99))))))))

(declare-fun bs!633391 () Bool)

(assert (= bs!633391 d!1289416))

(declare-fun m!4976843 () Bool)

(assert (=> bs!633391 m!4976843))

(declare-fun m!4976845 () Bool)

(assert (=> bs!633391 m!4976845))

(assert (=> d!1289204 d!1289416))

(assert (=> b!4359373 d!1289282))

(declare-fun d!1289420 () Bool)

(declare-fun res!1792382 () Bool)

(declare-fun e!2713293 () Bool)

(assert (=> d!1289420 (=> res!1792382 e!2713293)))

(assert (=> d!1289420 (= res!1792382 ((_ is Nil!48961) newBucket!200))))

(assert (=> d!1289420 (= (forall!9142 newBucket!200 lambda!141177) e!2713293)))

(declare-fun b!4359900 () Bool)

(declare-fun e!2713294 () Bool)

(assert (=> b!4359900 (= e!2713293 e!2713294)))

(declare-fun res!1792383 () Bool)

(assert (=> b!4359900 (=> (not res!1792383) (not e!2713294))))

(assert (=> b!4359900 (= res!1792383 (dynLambda!20645 lambda!141177 (h!54518 newBucket!200)))))

(declare-fun b!4359901 () Bool)

(assert (=> b!4359901 (= e!2713294 (forall!9142 (t!356005 newBucket!200) lambda!141177))))

(assert (= (and d!1289420 (not res!1792382)) b!4359900))

(assert (= (and b!4359900 res!1792383) b!4359901))

(declare-fun b_lambda!131573 () Bool)

(assert (=> (not b_lambda!131573) (not b!4359900)))

(declare-fun m!4976851 () Bool)

(assert (=> b!4359900 m!4976851))

(declare-fun m!4976853 () Bool)

(assert (=> b!4359901 m!4976853))

(assert (=> d!1289236 d!1289420))

(declare-fun d!1289424 () Bool)

(declare-fun res!1792384 () Bool)

(declare-fun e!2713295 () Bool)

(assert (=> d!1289424 (=> res!1792384 e!2713295)))

(assert (=> d!1289424 (= res!1792384 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289424 (= (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141158) e!2713295)))

(declare-fun b!4359902 () Bool)

(declare-fun e!2713296 () Bool)

(assert (=> b!4359902 (= e!2713295 e!2713296)))

(declare-fun res!1792385 () Bool)

(assert (=> b!4359902 (=> (not res!1792385) (not e!2713296))))

(assert (=> b!4359902 (= res!1792385 (dynLambda!20645 lambda!141158 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4359903 () Bool)

(assert (=> b!4359903 (= e!2713296 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141158))))

(assert (= (and d!1289424 (not res!1792384)) b!4359902))

(assert (= (and b!4359902 res!1792385) b!4359903))

(declare-fun b_lambda!131575 () Bool)

(assert (=> (not b_lambda!131575) (not b!4359902)))

(declare-fun m!4976855 () Bool)

(assert (=> b!4359902 m!4976855))

(declare-fun m!4976857 () Bool)

(assert (=> b!4359903 m!4976857))

(assert (=> d!1289146 d!1289424))

(assert (=> d!1289146 d!1289368))

(declare-fun bs!633392 () Bool)

(declare-fun b!4359910 () Bool)

(assert (= bs!633392 (and b!4359910 b!4359591)))

(declare-fun lambda!141235 () Int)

(assert (=> bs!633392 (= (= (t!356005 (toList!2986 lt!1571642)) (toList!2986 lt!1571629)) (= lambda!141235 lambda!141196))))

(declare-fun bs!633393 () Bool)

(assert (= bs!633393 (and b!4359910 b!4359553)))

(assert (=> bs!633393 (= (= (t!356005 (toList!2986 lt!1571642)) (toList!2986 lt!1571642)) (= lambda!141235 lambda!141184))))

(declare-fun bs!633394 () Bool)

(assert (= bs!633394 (and b!4359910 b!4359680)))

(assert (=> bs!633394 (= (= (t!356005 (toList!2986 lt!1571642)) (toList!2986 lt!1571629)) (= lambda!141235 lambda!141201))))

(declare-fun bs!633395 () Bool)

(assert (= bs!633395 (and b!4359910 b!4359589)))

(assert (=> bs!633395 (= (= (t!356005 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571629))) (= lambda!141235 lambda!141194))))

(declare-fun bs!633396 () Bool)

(assert (= bs!633396 (and b!4359910 b!4359432)))

(assert (=> bs!633396 (= (= (t!356005 (toList!2986 lt!1571642)) (toList!2986 lt!1571644)) (= lambda!141235 lambda!141182))))

(declare-fun bs!633397 () Bool)

(assert (= bs!633397 (and b!4359910 b!4359587)))

(assert (=> bs!633397 (= (= (t!356005 (toList!2986 lt!1571642)) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141235 lambda!141195))))

(assert (=> b!4359910 true))

(declare-fun bs!633398 () Bool)

(declare-fun b!4359908 () Bool)

(assert (= bs!633398 (and b!4359908 b!4359591)))

(declare-fun lambda!141236 () Int)

(assert (=> bs!633398 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (toList!2986 lt!1571629)) (= lambda!141236 lambda!141196))))

(declare-fun bs!633399 () Bool)

(assert (= bs!633399 (and b!4359908 b!4359553)))

(assert (=> bs!633399 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (toList!2986 lt!1571642)) (= lambda!141236 lambda!141184))))

(declare-fun bs!633400 () Bool)

(assert (= bs!633400 (and b!4359908 b!4359910)))

(assert (=> bs!633400 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (t!356005 (toList!2986 lt!1571642))) (= lambda!141236 lambda!141235))))

(declare-fun bs!633401 () Bool)

(assert (= bs!633401 (and b!4359908 b!4359680)))

(assert (=> bs!633401 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (toList!2986 lt!1571629)) (= lambda!141236 lambda!141201))))

(declare-fun bs!633402 () Bool)

(assert (= bs!633402 (and b!4359908 b!4359589)))

(assert (=> bs!633402 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (t!356005 (toList!2986 lt!1571629))) (= lambda!141236 lambda!141194))))

(declare-fun bs!633403 () Bool)

(assert (= bs!633403 (and b!4359908 b!4359432)))

(assert (=> bs!633403 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (toList!2986 lt!1571644)) (= lambda!141236 lambda!141182))))

(declare-fun bs!633404 () Bool)

(assert (= bs!633404 (and b!4359908 b!4359587)))

(assert (=> bs!633404 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642))) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141236 lambda!141195))))

(assert (=> b!4359908 true))

(declare-fun bs!633405 () Bool)

(declare-fun b!4359912 () Bool)

(assert (= bs!633405 (and b!4359912 b!4359591)))

(declare-fun lambda!141237 () Int)

(assert (=> bs!633405 (= (= (toList!2986 lt!1571642) (toList!2986 lt!1571629)) (= lambda!141237 lambda!141196))))

(declare-fun bs!633406 () Bool)

(assert (= bs!633406 (and b!4359912 b!4359553)))

(assert (=> bs!633406 (= lambda!141237 lambda!141184)))

(declare-fun bs!633407 () Bool)

(assert (= bs!633407 (and b!4359912 b!4359910)))

(assert (=> bs!633407 (= (= (toList!2986 lt!1571642) (t!356005 (toList!2986 lt!1571642))) (= lambda!141237 lambda!141235))))

(declare-fun bs!633408 () Bool)

(assert (= bs!633408 (and b!4359912 b!4359680)))

(assert (=> bs!633408 (= (= (toList!2986 lt!1571642) (toList!2986 lt!1571629)) (= lambda!141237 lambda!141201))))

(declare-fun bs!633409 () Bool)

(assert (= bs!633409 (and b!4359912 b!4359589)))

(assert (=> bs!633409 (= (= (toList!2986 lt!1571642) (t!356005 (toList!2986 lt!1571629))) (= lambda!141237 lambda!141194))))

(declare-fun bs!633410 () Bool)

(assert (= bs!633410 (and b!4359912 b!4359432)))

(assert (=> bs!633410 (= (= (toList!2986 lt!1571642) (toList!2986 lt!1571644)) (= lambda!141237 lambda!141182))))

(declare-fun bs!633411 () Bool)

(assert (= bs!633411 (and b!4359912 b!4359908)))

(assert (=> bs!633411 (= (= (toList!2986 lt!1571642) (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642)))) (= lambda!141237 lambda!141236))))

(declare-fun bs!633412 () Bool)

(assert (= bs!633412 (and b!4359912 b!4359587)))

(assert (=> bs!633412 (= (= (toList!2986 lt!1571642) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141237 lambda!141195))))

(assert (=> b!4359912 true))

(declare-fun bs!633413 () Bool)

(declare-fun b!4359904 () Bool)

(assert (= bs!633413 (and b!4359904 b!4359433)))

(declare-fun lambda!141238 () Int)

(assert (=> bs!633413 (= lambda!141238 lambda!141183)))

(declare-fun bs!633414 () Bool)

(assert (= bs!633414 (and b!4359904 b!4359554)))

(assert (=> bs!633414 (= lambda!141238 lambda!141185)))

(declare-fun bs!633415 () Bool)

(assert (= bs!633415 (and b!4359904 b!4359583)))

(assert (=> bs!633415 (= lambda!141238 lambda!141197)))

(declare-fun bs!633416 () Bool)

(assert (= bs!633416 (and b!4359904 b!4359681)))

(assert (=> bs!633416 (= lambda!141238 lambda!141202)))

(declare-fun lt!1572310 () List!49088)

(declare-fun e!2713300 () Bool)

(assert (=> b!4359904 (= e!2713300 (= (content!7736 lt!1572310) (content!7736 (map!10652 (toList!2986 lt!1571642) lambda!141238))))))

(declare-fun b!4359905 () Bool)

(declare-fun e!2713299 () Unit!72045)

(declare-fun Unit!72166 () Unit!72045)

(assert (=> b!4359905 (= e!2713299 Unit!72166)))

(declare-fun d!1289426 () Bool)

(assert (=> d!1289426 e!2713300))

(declare-fun res!1792388 () Bool)

(assert (=> d!1289426 (=> (not res!1792388) (not e!2713300))))

(assert (=> d!1289426 (= res!1792388 (noDuplicate!605 lt!1572310))))

(declare-fun e!2713297 () List!49088)

(assert (=> d!1289426 (= lt!1572310 e!2713297)))

(declare-fun c!741331 () Bool)

(assert (=> d!1289426 (= c!741331 ((_ is Cons!48961) (toList!2986 lt!1571642)))))

(assert (=> d!1289426 (invariantList!684 (toList!2986 lt!1571642))))

(assert (=> d!1289426 (= (getKeysList!132 (toList!2986 lt!1571642)) lt!1572310)))

(declare-fun b!4359906 () Bool)

(declare-fun e!2713298 () Unit!72045)

(declare-fun Unit!72167 () Unit!72045)

(assert (=> b!4359906 (= e!2713298 Unit!72167)))

(declare-fun b!4359907 () Bool)

(assert (=> b!4359907 false))

(declare-fun Unit!72168 () Unit!72045)

(assert (=> b!4359907 (= e!2713299 Unit!72168)))

(assert (=> b!4359908 (= e!2713297 (Cons!48964 (_1!27481 (h!54518 (toList!2986 lt!1571642))) (getKeysList!132 (t!356005 (toList!2986 lt!1571642)))))))

(declare-fun c!741332 () Bool)

(assert (=> b!4359908 (= c!741332 (containsKey!717 (t!356005 (toList!2986 lt!1571642)) (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun lt!1572312 () Unit!72045)

(assert (=> b!4359908 (= lt!1572312 e!2713299)))

(declare-fun c!741333 () Bool)

(assert (=> b!4359908 (= c!741333 (contains!11189 (getKeysList!132 (t!356005 (toList!2986 lt!1571642))) (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun lt!1572309 () Unit!72045)

(assert (=> b!4359908 (= lt!1572309 e!2713298)))

(declare-fun lt!1572307 () List!49088)

(assert (=> b!4359908 (= lt!1572307 (getKeysList!132 (t!356005 (toList!2986 lt!1571642))))))

(declare-fun lt!1572308 () Unit!72045)

(assert (=> b!4359908 (= lt!1572308 (lemmaForallContainsAddHeadPreserves!27 (t!356005 (toList!2986 lt!1571642)) lt!1572307 (h!54518 (toList!2986 lt!1571642))))))

(assert (=> b!4359908 (forall!9143 lt!1572307 lambda!141236)))

(declare-fun lt!1572311 () Unit!72045)

(assert (=> b!4359908 (= lt!1572311 lt!1572308)))

(declare-fun b!4359909 () Bool)

(declare-fun res!1792386 () Bool)

(assert (=> b!4359909 (=> (not res!1792386) (not e!2713300))))

(assert (=> b!4359909 (= res!1792386 (= (length!66 lt!1572310) (length!67 (toList!2986 lt!1571642))))))

(assert (=> b!4359910 false))

(declare-fun lt!1572306 () Unit!72045)

(assert (=> b!4359910 (= lt!1572306 (forallContained!1784 (getKeysList!132 (t!356005 (toList!2986 lt!1571642))) lambda!141235 (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun Unit!72170 () Unit!72045)

(assert (=> b!4359910 (= e!2713298 Unit!72170)))

(declare-fun b!4359911 () Bool)

(assert (=> b!4359911 (= e!2713297 Nil!48964)))

(declare-fun res!1792387 () Bool)

(assert (=> b!4359912 (=> (not res!1792387) (not e!2713300))))

(assert (=> b!4359912 (= res!1792387 (forall!9143 lt!1572310 lambda!141237))))

(assert (= (and d!1289426 c!741331) b!4359908))

(assert (= (and d!1289426 (not c!741331)) b!4359911))

(assert (= (and b!4359908 c!741332) b!4359907))

(assert (= (and b!4359908 (not c!741332)) b!4359905))

(assert (= (and b!4359908 c!741333) b!4359910))

(assert (= (and b!4359908 (not c!741333)) b!4359906))

(assert (= (and d!1289426 res!1792388) b!4359909))

(assert (= (and b!4359909 res!1792386) b!4359912))

(assert (= (and b!4359912 res!1792387) b!4359904))

(declare-fun m!4976861 () Bool)

(assert (=> b!4359912 m!4976861))

(declare-fun m!4976863 () Bool)

(assert (=> b!4359904 m!4976863))

(declare-fun m!4976865 () Bool)

(assert (=> b!4359904 m!4976865))

(assert (=> b!4359904 m!4976865))

(declare-fun m!4976867 () Bool)

(assert (=> b!4359904 m!4976867))

(declare-fun m!4976869 () Bool)

(assert (=> b!4359909 m!4976869))

(assert (=> b!4359909 m!4976337))

(declare-fun m!4976871 () Bool)

(assert (=> d!1289426 m!4976871))

(assert (=> d!1289426 m!4976265))

(declare-fun m!4976873 () Bool)

(assert (=> b!4359910 m!4976873))

(assert (=> b!4359910 m!4976873))

(declare-fun m!4976875 () Bool)

(assert (=> b!4359910 m!4976875))

(assert (=> b!4359908 m!4976873))

(assert (=> b!4359908 m!4976267))

(declare-fun m!4976877 () Bool)

(assert (=> b!4359908 m!4976877))

(assert (=> b!4359908 m!4976873))

(declare-fun m!4976879 () Bool)

(assert (=> b!4359908 m!4976879))

(declare-fun m!4976881 () Bool)

(assert (=> b!4359908 m!4976881))

(assert (=> b!4359377 d!1289426))

(declare-fun d!1289430 () Bool)

(declare-fun isEmpty!28214 (Option!10481) Bool)

(assert (=> d!1289430 (= (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571629) key!3918)) (not (isEmpty!28214 (getValueByKey!467 (toList!2986 lt!1571629) key!3918))))))

(declare-fun bs!633418 () Bool)

(assert (= bs!633418 d!1289430))

(assert (=> bs!633418 m!4976091))

(declare-fun m!4976885 () Bool)

(assert (=> bs!633418 m!4976885))

(assert (=> b!4359392 d!1289430))

(declare-fun b!4359921 () Bool)

(declare-fun e!2713308 () Option!10481)

(assert (=> b!4359921 (= e!2713308 (Some!10480 (_2!27481 (h!54518 (toList!2986 lt!1571629)))))))

(declare-fun d!1289434 () Bool)

(declare-fun c!741334 () Bool)

(assert (=> d!1289434 (= c!741334 (and ((_ is Cons!48961) (toList!2986 lt!1571629)) (= (_1!27481 (h!54518 (toList!2986 lt!1571629))) key!3918)))))

(assert (=> d!1289434 (= (getValueByKey!467 (toList!2986 lt!1571629) key!3918) e!2713308)))

(declare-fun b!4359924 () Bool)

(declare-fun e!2713309 () Option!10481)

(assert (=> b!4359924 (= e!2713309 None!10480)))

(declare-fun b!4359922 () Bool)

(assert (=> b!4359922 (= e!2713308 e!2713309)))

(declare-fun c!741335 () Bool)

(assert (=> b!4359922 (= c!741335 (and ((_ is Cons!48961) (toList!2986 lt!1571629)) (not (= (_1!27481 (h!54518 (toList!2986 lt!1571629))) key!3918))))))

(declare-fun b!4359923 () Bool)

(assert (=> b!4359923 (= e!2713309 (getValueByKey!467 (t!356005 (toList!2986 lt!1571629)) key!3918))))

(assert (= (and d!1289434 c!741334) b!4359921))

(assert (= (and d!1289434 (not c!741334)) b!4359922))

(assert (= (and b!4359922 c!741335) b!4359923))

(assert (= (and b!4359922 (not c!741335)) b!4359924))

(declare-fun m!4976895 () Bool)

(assert (=> b!4359923 m!4976895))

(assert (=> b!4359392 d!1289434))

(declare-fun d!1289436 () Bool)

(assert (=> d!1289436 (= (get!15907 (getValueByKey!466 (toList!2985 lm!1707) hash!377)) (v!43373 (getValueByKey!466 (toList!2985 lm!1707) hash!377)))))

(assert (=> d!1289130 d!1289436))

(assert (=> d!1289130 d!1289334))

(declare-fun bs!633419 () Bool)

(declare-fun b!4359930 () Bool)

(assert (= bs!633419 (and b!4359930 b!4359876)))

(declare-fun lambda!141239 () Int)

(assert (=> bs!633419 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141239 lambda!141228))))

(declare-fun bs!633420 () Bool)

(assert (= bs!633420 (and b!4359930 d!1289374)))

(assert (=> bs!633420 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572234) (= lambda!141239 lambda!141217))))

(declare-fun bs!633421 () Bool)

(assert (= bs!633421 (and b!4359930 d!1289146)))

(assert (=> bs!633421 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571927) (= lambda!141239 lambda!141158))))

(declare-fun bs!633422 () Bool)

(assert (= bs!633422 (and b!4359930 b!4359814)))

(assert (=> bs!633422 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141239 lambda!141213))))

(declare-fun bs!633423 () Bool)

(assert (= bs!633423 (and b!4359930 b!4359307)))

(assert (=> bs!633423 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141239 lambda!141156))))

(assert (=> bs!633423 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571922) (= lambda!141239 lambda!141157))))

(declare-fun bs!633424 () Bool)

(assert (= bs!633424 (and b!4359930 b!4359397)))

(assert (=> bs!633424 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571642) (= lambda!141239 lambda!141168))))

(declare-fun bs!633425 () Bool)

(assert (= bs!633425 (and b!4359930 b!4359815)))

(assert (=> bs!633425 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141239 lambda!141212))))

(declare-fun bs!633426 () Bool)

(assert (= bs!633426 (and b!4359930 d!1289236)))

(assert (=> bs!633426 (not (= lambda!141239 lambda!141177))))

(declare-fun bs!633427 () Bool)

(assert (= bs!633427 (and b!4359930 d!1289224)))

(assert (=> bs!633427 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572027) (= lambda!141239 lambda!141170))))

(declare-fun bs!633428 () Bool)

(assert (= bs!633428 (and b!4359930 b!4359308)))

(assert (=> bs!633428 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141239 lambda!141155))))

(declare-fun bs!633429 () Bool)

(assert (= bs!633429 (and b!4359930 b!4359877)))

(assert (=> bs!633429 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141239 lambda!141223))))

(assert (=> bs!633424 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572022) (= lambda!141239 lambda!141169))))

(assert (=> bs!633419 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572280) (= lambda!141239 lambda!141229))))

(declare-fun bs!633431 () Bool)

(assert (= bs!633431 (and b!4359930 b!4359398)))

(assert (=> bs!633431 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571642) (= lambda!141239 lambda!141167))))

(declare-fun bs!633433 () Bool)

(assert (= bs!633433 (and b!4359930 d!1289410)))

(assert (=> bs!633433 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572285) (= lambda!141239 lambda!141231))))

(declare-fun bs!633435 () Bool)

(assert (= bs!633435 (and b!4359930 d!1289310)))

(assert (=> bs!633435 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141239 lambda!141200))))

(assert (=> bs!633422 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572229) (= lambda!141239 lambda!141214))))

(assert (=> b!4359930 true))

(declare-fun bs!633441 () Bool)

(declare-fun b!4359929 () Bool)

(assert (= bs!633441 (and b!4359929 b!4359876)))

(declare-fun lambda!141241 () Int)

(assert (=> bs!633441 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141241 lambda!141228))))

(declare-fun bs!633442 () Bool)

(assert (= bs!633442 (and b!4359929 d!1289374)))

(assert (=> bs!633442 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572234) (= lambda!141241 lambda!141217))))

(declare-fun bs!633443 () Bool)

(assert (= bs!633443 (and b!4359929 d!1289146)))

(assert (=> bs!633443 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571927) (= lambda!141241 lambda!141158))))

(declare-fun bs!633444 () Bool)

(assert (= bs!633444 (and b!4359929 b!4359814)))

(assert (=> bs!633444 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141241 lambda!141213))))

(declare-fun bs!633445 () Bool)

(assert (= bs!633445 (and b!4359929 b!4359307)))

(assert (=> bs!633445 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141241 lambda!141156))))

(declare-fun bs!633446 () Bool)

(assert (= bs!633446 (and b!4359929 b!4359397)))

(assert (=> bs!633446 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571642) (= lambda!141241 lambda!141168))))

(declare-fun bs!633447 () Bool)

(assert (= bs!633447 (and b!4359929 b!4359815)))

(assert (=> bs!633447 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141241 lambda!141212))))

(declare-fun bs!633449 () Bool)

(assert (= bs!633449 (and b!4359929 d!1289236)))

(assert (=> bs!633449 (not (= lambda!141241 lambda!141177))))

(declare-fun bs!633451 () Bool)

(assert (= bs!633451 (and b!4359929 d!1289224)))

(assert (=> bs!633451 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572027) (= lambda!141241 lambda!141170))))

(declare-fun bs!633453 () Bool)

(assert (= bs!633453 (and b!4359929 b!4359308)))

(assert (=> bs!633453 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141241 lambda!141155))))

(declare-fun bs!633454 () Bool)

(assert (= bs!633454 (and b!4359929 b!4359877)))

(assert (=> bs!633454 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141241 lambda!141223))))

(assert (=> bs!633446 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572022) (= lambda!141241 lambda!141169))))

(assert (=> bs!633445 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571922) (= lambda!141241 lambda!141157))))

(declare-fun bs!633457 () Bool)

(assert (= bs!633457 (and b!4359929 b!4359930)))

(assert (=> bs!633457 (= lambda!141241 lambda!141239)))

(assert (=> bs!633441 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572280) (= lambda!141241 lambda!141229))))

(declare-fun bs!633460 () Bool)

(assert (= bs!633460 (and b!4359929 b!4359398)))

(assert (=> bs!633460 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571642) (= lambda!141241 lambda!141167))))

(declare-fun bs!633462 () Bool)

(assert (= bs!633462 (and b!4359929 d!1289410)))

(assert (=> bs!633462 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572285) (= lambda!141241 lambda!141231))))

(declare-fun bs!633464 () Bool)

(assert (= bs!633464 (and b!4359929 d!1289310)))

(assert (=> bs!633464 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1571643) (= lambda!141241 lambda!141200))))

(assert (=> bs!633444 (= (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572229) (= lambda!141241 lambda!141214))))

(assert (=> b!4359929 true))

(declare-fun lambda!141244 () Int)

(declare-fun lt!1572326 () ListMap!2229)

(assert (=> bs!633441 (= (= lt!1572326 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141244 lambda!141228))))

(assert (=> bs!633442 (= (= lt!1572326 lt!1572234) (= lambda!141244 lambda!141217))))

(assert (=> bs!633443 (= (= lt!1572326 lt!1571927) (= lambda!141244 lambda!141158))))

(assert (=> bs!633444 (= (= lt!1572326 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141244 lambda!141213))))

(assert (=> bs!633445 (= (= lt!1572326 lt!1571643) (= lambda!141244 lambda!141156))))

(assert (=> bs!633446 (= (= lt!1572326 lt!1571642) (= lambda!141244 lambda!141168))))

(assert (=> bs!633447 (= (= lt!1572326 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141244 lambda!141212))))

(assert (=> bs!633449 (not (= lambda!141244 lambda!141177))))

(assert (=> bs!633451 (= (= lt!1572326 lt!1572027) (= lambda!141244 lambda!141170))))

(assert (=> bs!633453 (= (= lt!1572326 lt!1571643) (= lambda!141244 lambda!141155))))

(assert (=> bs!633454 (= (= lt!1572326 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141244 lambda!141223))))

(assert (=> bs!633446 (= (= lt!1572326 lt!1572022) (= lambda!141244 lambda!141169))))

(assert (=> bs!633445 (= (= lt!1572326 lt!1571922) (= lambda!141244 lambda!141157))))

(assert (=> b!4359929 (= (= lt!1572326 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141244 lambda!141241))))

(assert (=> bs!633457 (= (= lt!1572326 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141244 lambda!141239))))

(assert (=> bs!633441 (= (= lt!1572326 lt!1572280) (= lambda!141244 lambda!141229))))

(assert (=> bs!633460 (= (= lt!1572326 lt!1571642) (= lambda!141244 lambda!141167))))

(assert (=> bs!633462 (= (= lt!1572326 lt!1572285) (= lambda!141244 lambda!141231))))

(assert (=> bs!633464 (= (= lt!1572326 lt!1571643) (= lambda!141244 lambda!141200))))

(assert (=> bs!633444 (= (= lt!1572326 lt!1572229) (= lambda!141244 lambda!141214))))

(assert (=> b!4359929 true))

(declare-fun bs!633469 () Bool)

(declare-fun d!1289440 () Bool)

(assert (= bs!633469 (and d!1289440 d!1289374)))

(declare-fun lambda!141246 () Int)

(declare-fun lt!1572331 () ListMap!2229)

(assert (=> bs!633469 (= (= lt!1572331 lt!1572234) (= lambda!141246 lambda!141217))))

(declare-fun bs!633472 () Bool)

(assert (= bs!633472 (and d!1289440 d!1289146)))

(assert (=> bs!633472 (= (= lt!1572331 lt!1571927) (= lambda!141246 lambda!141158))))

(declare-fun bs!633474 () Bool)

(assert (= bs!633474 (and d!1289440 b!4359814)))

(assert (=> bs!633474 (= (= lt!1572331 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141246 lambda!141213))))

(declare-fun bs!633476 () Bool)

(assert (= bs!633476 (and d!1289440 b!4359307)))

(assert (=> bs!633476 (= (= lt!1572331 lt!1571643) (= lambda!141246 lambda!141156))))

(declare-fun bs!633477 () Bool)

(assert (= bs!633477 (and d!1289440 b!4359397)))

(assert (=> bs!633477 (= (= lt!1572331 lt!1571642) (= lambda!141246 lambda!141168))))

(declare-fun bs!633478 () Bool)

(assert (= bs!633478 (and d!1289440 b!4359815)))

(assert (=> bs!633478 (= (= lt!1572331 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141246 lambda!141212))))

(declare-fun bs!633480 () Bool)

(assert (= bs!633480 (and d!1289440 b!4359876)))

(assert (=> bs!633480 (= (= lt!1572331 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141246 lambda!141228))))

(declare-fun bs!633482 () Bool)

(assert (= bs!633482 (and d!1289440 b!4359929)))

(assert (=> bs!633482 (= (= lt!1572331 lt!1572326) (= lambda!141246 lambda!141244))))

(declare-fun bs!633483 () Bool)

(assert (= bs!633483 (and d!1289440 d!1289236)))

(assert (=> bs!633483 (not (= lambda!141246 lambda!141177))))

(declare-fun bs!633484 () Bool)

(assert (= bs!633484 (and d!1289440 d!1289224)))

(assert (=> bs!633484 (= (= lt!1572331 lt!1572027) (= lambda!141246 lambda!141170))))

(declare-fun bs!633485 () Bool)

(assert (= bs!633485 (and d!1289440 b!4359308)))

(assert (=> bs!633485 (= (= lt!1572331 lt!1571643) (= lambda!141246 lambda!141155))))

(declare-fun bs!633486 () Bool)

(assert (= bs!633486 (and d!1289440 b!4359877)))

(assert (=> bs!633486 (= (= lt!1572331 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141246 lambda!141223))))

(assert (=> bs!633477 (= (= lt!1572331 lt!1572022) (= lambda!141246 lambda!141169))))

(assert (=> bs!633476 (= (= lt!1572331 lt!1571922) (= lambda!141246 lambda!141157))))

(assert (=> bs!633482 (= (= lt!1572331 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141246 lambda!141241))))

(declare-fun bs!633487 () Bool)

(assert (= bs!633487 (and d!1289440 b!4359930)))

(assert (=> bs!633487 (= (= lt!1572331 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141246 lambda!141239))))

(assert (=> bs!633480 (= (= lt!1572331 lt!1572280) (= lambda!141246 lambda!141229))))

(declare-fun bs!633488 () Bool)

(assert (= bs!633488 (and d!1289440 b!4359398)))

(assert (=> bs!633488 (= (= lt!1572331 lt!1571642) (= lambda!141246 lambda!141167))))

(declare-fun bs!633489 () Bool)

(assert (= bs!633489 (and d!1289440 d!1289410)))

(assert (=> bs!633489 (= (= lt!1572331 lt!1572285) (= lambda!141246 lambda!141231))))

(declare-fun bs!633490 () Bool)

(assert (= bs!633490 (and d!1289440 d!1289310)))

(assert (=> bs!633490 (= (= lt!1572331 lt!1571643) (= lambda!141246 lambda!141200))))

(assert (=> bs!633474 (= (= lt!1572331 lt!1572229) (= lambda!141246 lambda!141214))))

(assert (=> d!1289440 true))

(declare-fun b!4359927 () Bool)

(declare-fun e!2713312 () Bool)

(assert (=> b!4359927 (= e!2713312 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) lambda!141244))))

(declare-fun b!4359928 () Bool)

(declare-fun e!2713313 () Bool)

(assert (=> b!4359928 (= e!2713313 (invariantList!684 (toList!2986 lt!1572331)))))

(assert (=> d!1289440 e!2713313))

(declare-fun res!1792399 () Bool)

(assert (=> d!1289440 (=> (not res!1792399) (not e!2713313))))

(assert (=> d!1289440 (= res!1792399 (forall!9142 (_2!27482 (h!54519 (toList!2985 lt!1571646))) lambda!141246))))

(declare-fun e!2713314 () ListMap!2229)

(assert (=> d!1289440 (= lt!1572331 e!2713314)))

(declare-fun c!741336 () Bool)

(assert (=> d!1289440 (= c!741336 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lt!1571646)))))))

(assert (=> d!1289440 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lt!1571646))))))

(assert (=> d!1289440 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lt!1571646))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) lt!1572331)))

(assert (=> b!4359929 (= e!2713314 lt!1572326)))

(declare-fun lt!1572339 () ListMap!2229)

(assert (=> b!4359929 (= lt!1572339 (+!660 (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646))))))))

(assert (=> b!4359929 (= lt!1572326 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lt!1571646)))) (+!660 (extractMap!560 (t!356006 (toList!2985 lt!1571646))) (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646)))))))))

(declare-fun lt!1572338 () Unit!72045)

(declare-fun call!303046 () Unit!72045)

(assert (=> b!4359929 (= lt!1572338 call!303046)))

(assert (=> b!4359929 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) lambda!141241)))

(declare-fun lt!1572330 () Unit!72045)

(assert (=> b!4359929 (= lt!1572330 lt!1572338)))

(assert (=> b!4359929 (forall!9142 (toList!2986 lt!1572339) lambda!141244)))

(declare-fun lt!1572327 () Unit!72045)

(declare-fun Unit!72172 () Unit!72045)

(assert (=> b!4359929 (= lt!1572327 Unit!72172)))

(assert (=> b!4359929 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lt!1571646)))) lambda!141244)))

(declare-fun lt!1572337 () Unit!72045)

(declare-fun Unit!72173 () Unit!72045)

(assert (=> b!4359929 (= lt!1572337 Unit!72173)))

(declare-fun lt!1572340 () Unit!72045)

(declare-fun Unit!72174 () Unit!72045)

(assert (=> b!4359929 (= lt!1572340 Unit!72174)))

(declare-fun lt!1572334 () Unit!72045)

(assert (=> b!4359929 (= lt!1572334 (forallContained!1783 (toList!2986 lt!1572339) lambda!141244 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646))))))))

(assert (=> b!4359929 (contains!11183 lt!1572339 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646))))))))

(declare-fun lt!1572332 () Unit!72045)

(declare-fun Unit!72175 () Unit!72045)

(assert (=> b!4359929 (= lt!1572332 Unit!72175)))

(assert (=> b!4359929 (contains!11183 lt!1572326 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646))))))))

(declare-fun lt!1572325 () Unit!72045)

(declare-fun Unit!72176 () Unit!72045)

(assert (=> b!4359929 (= lt!1572325 Unit!72176)))

(declare-fun call!303045 () Bool)

(assert (=> b!4359929 call!303045))

(declare-fun lt!1572324 () Unit!72045)

(declare-fun Unit!72177 () Unit!72045)

(assert (=> b!4359929 (= lt!1572324 Unit!72177)))

(assert (=> b!4359929 (forall!9142 (toList!2986 lt!1572339) lambda!141244)))

(declare-fun lt!1572335 () Unit!72045)

(declare-fun Unit!72178 () Unit!72045)

(assert (=> b!4359929 (= lt!1572335 Unit!72178)))

(declare-fun lt!1572320 () Unit!72045)

(declare-fun Unit!72179 () Unit!72045)

(assert (=> b!4359929 (= lt!1572320 Unit!72179)))

(declare-fun lt!1572322 () Unit!72045)

(assert (=> b!4359929 (= lt!1572322 (addForallContainsKeyThenBeforeAdding!67 (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572326 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lt!1571646)))))))))

(declare-fun call!303044 () Bool)

(assert (=> b!4359929 call!303044))

(declare-fun lt!1572323 () Unit!72045)

(assert (=> b!4359929 (= lt!1572323 lt!1572322)))

(assert (=> b!4359929 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) lambda!141244)))

(declare-fun lt!1572321 () Unit!72045)

(declare-fun Unit!72180 () Unit!72045)

(assert (=> b!4359929 (= lt!1572321 Unit!72180)))

(declare-fun res!1792401 () Bool)

(assert (=> b!4359929 (= res!1792401 (forall!9142 (_2!27482 (h!54519 (toList!2985 lt!1571646))) lambda!141244))))

(assert (=> b!4359929 (=> (not res!1792401) (not e!2713312))))

(assert (=> b!4359929 e!2713312))

(declare-fun lt!1572329 () Unit!72045)

(declare-fun Unit!72181 () Unit!72045)

(assert (=> b!4359929 (= lt!1572329 Unit!72181)))

(assert (=> b!4359930 (= e!2713314 (extractMap!560 (t!356006 (toList!2985 lt!1571646))))))

(declare-fun lt!1572333 () Unit!72045)

(assert (=> b!4359930 (= lt!1572333 call!303046)))

(assert (=> b!4359930 call!303044))

(declare-fun lt!1572328 () Unit!72045)

(assert (=> b!4359930 (= lt!1572328 lt!1572333)))

(assert (=> b!4359930 call!303045))

(declare-fun lt!1572336 () Unit!72045)

(declare-fun Unit!72182 () Unit!72045)

(assert (=> b!4359930 (= lt!1572336 Unit!72182)))

(declare-fun bm!303039 () Bool)

(assert (=> bm!303039 (= call!303044 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (ite c!741336 lambda!141239 lambda!141244)))))

(declare-fun bm!303040 () Bool)

(assert (=> bm!303040 (= call!303045 (forall!9142 (ite c!741336 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (_2!27482 (h!54519 (toList!2985 lt!1571646)))) (ite c!741336 lambda!141239 lambda!141244)))))

(declare-fun b!4359931 () Bool)

(declare-fun res!1792400 () Bool)

(assert (=> b!4359931 (=> (not res!1792400) (not e!2713313))))

(assert (=> b!4359931 (= res!1792400 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) lambda!141246))))

(declare-fun bm!303041 () Bool)

(assert (=> bm!303041 (= call!303046 (lemmaContainsAllItsOwnKeys!67 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))))))

(assert (= (and d!1289440 c!741336) b!4359930))

(assert (= (and d!1289440 (not c!741336)) b!4359929))

(assert (= (and b!4359929 res!1792401) b!4359927))

(assert (= (or b!4359930 b!4359929) bm!303041))

(assert (= (or b!4359930 b!4359929) bm!303040))

(assert (= (or b!4359930 b!4359929) bm!303039))

(assert (= (and d!1289440 res!1792399) b!4359931))

(assert (= (and b!4359931 res!1792400) b!4359928))

(declare-fun m!4976935 () Bool)

(assert (=> b!4359927 m!4976935))

(declare-fun m!4976937 () Bool)

(assert (=> bm!303039 m!4976937))

(declare-fun m!4976941 () Bool)

(assert (=> d!1289440 m!4976941))

(declare-fun m!4976945 () Bool)

(assert (=> d!1289440 m!4976945))

(assert (=> b!4359929 m!4975981))

(declare-fun m!4976949 () Bool)

(assert (=> b!4359929 m!4976949))

(assert (=> b!4359929 m!4976935))

(declare-fun m!4976951 () Bool)

(assert (=> b!4359929 m!4976951))

(assert (=> b!4359929 m!4976949))

(declare-fun m!4976953 () Bool)

(assert (=> b!4359929 m!4976953))

(declare-fun m!4976955 () Bool)

(assert (=> b!4359929 m!4976955))

(assert (=> b!4359929 m!4975981))

(declare-fun m!4976957 () Bool)

(assert (=> b!4359929 m!4976957))

(declare-fun m!4976959 () Bool)

(assert (=> b!4359929 m!4976959))

(declare-fun m!4976961 () Bool)

(assert (=> b!4359929 m!4976961))

(assert (=> b!4359929 m!4976961))

(declare-fun m!4976963 () Bool)

(assert (=> b!4359929 m!4976963))

(declare-fun m!4976965 () Bool)

(assert (=> b!4359929 m!4976965))

(declare-fun m!4976969 () Bool)

(assert (=> b!4359929 m!4976969))

(declare-fun m!4976973 () Bool)

(assert (=> b!4359931 m!4976973))

(assert (=> bm!303041 m!4975981))

(declare-fun m!4976975 () Bool)

(assert (=> bm!303041 m!4976975))

(declare-fun m!4976977 () Bool)

(assert (=> b!4359928 m!4976977))

(declare-fun m!4976979 () Bool)

(assert (=> bm!303040 m!4976979))

(assert (=> b!4359343 d!1289440))

(declare-fun bs!633491 () Bool)

(declare-fun d!1289450 () Bool)

(assert (= bs!633491 (and d!1289450 d!1289232)))

(declare-fun lambda!141247 () Int)

(assert (=> bs!633491 (= lambda!141247 lambda!141174)))

(declare-fun bs!633492 () Bool)

(assert (= bs!633492 (and d!1289450 d!1289210)))

(assert (=> bs!633492 (= lambda!141247 lambda!141163)))

(declare-fun bs!633493 () Bool)

(assert (= bs!633493 (and d!1289450 d!1289188)))

(assert (=> bs!633493 (= lambda!141247 lambda!141161)))

(declare-fun bs!633494 () Bool)

(assert (= bs!633494 (and d!1289450 d!1289218)))

(assert (=> bs!633494 (= lambda!141247 lambda!141166)))

(declare-fun bs!633495 () Bool)

(assert (= bs!633495 (and d!1289450 d!1289228)))

(assert (=> bs!633495 (= lambda!141247 lambda!141173)))

(declare-fun bs!633496 () Bool)

(assert (= bs!633496 (and d!1289450 d!1289386)))

(assert (=> bs!633496 (= lambda!141247 lambda!141218)))

(declare-fun bs!633497 () Bool)

(assert (= bs!633497 (and d!1289450 d!1289120)))

(assert (=> bs!633497 (not (= lambda!141247 lambda!141083))))

(declare-fun bs!633498 () Bool)

(assert (= bs!633498 (and d!1289450 start!422132)))

(assert (=> bs!633498 (= lambda!141247 lambda!141069)))

(declare-fun bs!633499 () Bool)

(assert (= bs!633499 (and d!1289450 d!1289198)))

(assert (=> bs!633499 (= lambda!141247 lambda!141162)))

(declare-fun lt!1572362 () ListMap!2229)

(assert (=> d!1289450 (invariantList!684 (toList!2986 lt!1572362))))

(declare-fun e!2713324 () ListMap!2229)

(assert (=> d!1289450 (= lt!1572362 e!2713324)))

(declare-fun c!741338 () Bool)

(assert (=> d!1289450 (= c!741338 ((_ is Cons!48962) (t!356006 (toList!2985 lt!1571646))))))

(assert (=> d!1289450 (forall!9140 (t!356006 (toList!2985 lt!1571646)) lambda!141247)))

(assert (=> d!1289450 (= (extractMap!560 (t!356006 (toList!2985 lt!1571646))) lt!1572362)))

(declare-fun b!4359943 () Bool)

(assert (=> b!4359943 (= e!2713324 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (t!356006 (toList!2985 lt!1571646)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lt!1571646))))))))

(declare-fun b!4359944 () Bool)

(assert (=> b!4359944 (= e!2713324 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289450 c!741338) b!4359943))

(assert (= (and d!1289450 (not c!741338)) b!4359944))

(declare-fun m!4976985 () Bool)

(assert (=> d!1289450 m!4976985))

(declare-fun m!4976987 () Bool)

(assert (=> d!1289450 m!4976987))

(declare-fun m!4976989 () Bool)

(assert (=> b!4359943 m!4976989))

(assert (=> b!4359943 m!4976989))

(declare-fun m!4976991 () Bool)

(assert (=> b!4359943 m!4976991))

(assert (=> b!4359343 d!1289450))

(declare-fun d!1289454 () Bool)

(assert (=> d!1289454 (= (invariantList!684 (toList!2986 lt!1571996)) (noDuplicatedKeys!121 (toList!2986 lt!1571996)))))

(declare-fun bs!633500 () Bool)

(assert (= bs!633500 d!1289454))

(declare-fun m!4976993 () Bool)

(assert (=> bs!633500 m!4976993))

(assert (=> d!1289210 d!1289454))

(declare-fun d!1289456 () Bool)

(declare-fun res!1792411 () Bool)

(declare-fun e!2713325 () Bool)

(assert (=> d!1289456 (=> res!1792411 e!2713325)))

(assert (=> d!1289456 (= res!1792411 ((_ is Nil!48962) (t!356006 (toList!2985 lm!1707))))))

(assert (=> d!1289456 (= (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141163) e!2713325)))

(declare-fun b!4359945 () Bool)

(declare-fun e!2713326 () Bool)

(assert (=> b!4359945 (= e!2713325 e!2713326)))

(declare-fun res!1792412 () Bool)

(assert (=> b!4359945 (=> (not res!1792412) (not e!2713326))))

(assert (=> b!4359945 (= res!1792412 (dynLambda!20643 lambda!141163 (h!54519 (t!356006 (toList!2985 lm!1707)))))))

(declare-fun b!4359946 () Bool)

(assert (=> b!4359946 (= e!2713326 (forall!9140 (t!356006 (t!356006 (toList!2985 lm!1707))) lambda!141163))))

(assert (= (and d!1289456 (not res!1792411)) b!4359945))

(assert (= (and b!4359945 res!1792412) b!4359946))

(declare-fun b_lambda!131585 () Bool)

(assert (=> (not b_lambda!131585) (not b!4359945)))

(declare-fun m!4976995 () Bool)

(assert (=> b!4359945 m!4976995))

(declare-fun m!4976997 () Bool)

(assert (=> b!4359946 m!4976997))

(assert (=> d!1289210 d!1289456))

(declare-fun bs!633501 () Bool)

(declare-fun d!1289458 () Bool)

(assert (= bs!633501 (and d!1289458 d!1289374)))

(declare-fun lambda!141248 () Int)

(assert (=> bs!633501 (= (= lt!1571642 lt!1572234) (= lambda!141248 lambda!141217))))

(declare-fun bs!633502 () Bool)

(assert (= bs!633502 (and d!1289458 b!4359814)))

(assert (=> bs!633502 (= (= lt!1571642 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141248 lambda!141213))))

(declare-fun bs!633503 () Bool)

(assert (= bs!633503 (and d!1289458 b!4359307)))

(assert (=> bs!633503 (= (= lt!1571642 lt!1571643) (= lambda!141248 lambda!141156))))

(declare-fun bs!633504 () Bool)

(assert (= bs!633504 (and d!1289458 b!4359397)))

(assert (=> bs!633504 (= lambda!141248 lambda!141168)))

(declare-fun bs!633505 () Bool)

(assert (= bs!633505 (and d!1289458 b!4359815)))

(assert (=> bs!633505 (= (= lt!1571642 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141248 lambda!141212))))

(declare-fun bs!633506 () Bool)

(assert (= bs!633506 (and d!1289458 b!4359876)))

(assert (=> bs!633506 (= (= lt!1571642 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141248 lambda!141228))))

(declare-fun bs!633507 () Bool)

(assert (= bs!633507 (and d!1289458 b!4359929)))

(assert (=> bs!633507 (= (= lt!1571642 lt!1572326) (= lambda!141248 lambda!141244))))

(declare-fun bs!633508 () Bool)

(assert (= bs!633508 (and d!1289458 d!1289236)))

(assert (=> bs!633508 (not (= lambda!141248 lambda!141177))))

(declare-fun bs!633509 () Bool)

(assert (= bs!633509 (and d!1289458 d!1289224)))

(assert (=> bs!633509 (= (= lt!1571642 lt!1572027) (= lambda!141248 lambda!141170))))

(declare-fun bs!633510 () Bool)

(assert (= bs!633510 (and d!1289458 d!1289146)))

(assert (=> bs!633510 (= (= lt!1571642 lt!1571927) (= lambda!141248 lambda!141158))))

(declare-fun bs!633511 () Bool)

(assert (= bs!633511 (and d!1289458 d!1289440)))

(assert (=> bs!633511 (= (= lt!1571642 lt!1572331) (= lambda!141248 lambda!141246))))

(declare-fun bs!633512 () Bool)

(assert (= bs!633512 (and d!1289458 b!4359308)))

(assert (=> bs!633512 (= (= lt!1571642 lt!1571643) (= lambda!141248 lambda!141155))))

(declare-fun bs!633513 () Bool)

(assert (= bs!633513 (and d!1289458 b!4359877)))

(assert (=> bs!633513 (= (= lt!1571642 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141248 lambda!141223))))

(assert (=> bs!633504 (= (= lt!1571642 lt!1572022) (= lambda!141248 lambda!141169))))

(assert (=> bs!633503 (= (= lt!1571642 lt!1571922) (= lambda!141248 lambda!141157))))

(assert (=> bs!633507 (= (= lt!1571642 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141248 lambda!141241))))

(declare-fun bs!633514 () Bool)

(assert (= bs!633514 (and d!1289458 b!4359930)))

(assert (=> bs!633514 (= (= lt!1571642 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141248 lambda!141239))))

(assert (=> bs!633506 (= (= lt!1571642 lt!1572280) (= lambda!141248 lambda!141229))))

(declare-fun bs!633515 () Bool)

(assert (= bs!633515 (and d!1289458 b!4359398)))

(assert (=> bs!633515 (= lambda!141248 lambda!141167)))

(declare-fun bs!633516 () Bool)

(assert (= bs!633516 (and d!1289458 d!1289410)))

(assert (=> bs!633516 (= (= lt!1571642 lt!1572285) (= lambda!141248 lambda!141231))))

(declare-fun bs!633517 () Bool)

(assert (= bs!633517 (and d!1289458 d!1289310)))

(assert (=> bs!633517 (= (= lt!1571642 lt!1571643) (= lambda!141248 lambda!141200))))

(assert (=> bs!633502 (= (= lt!1571642 lt!1572229) (= lambda!141248 lambda!141214))))

(assert (=> d!1289458 true))

(assert (=> d!1289458 (forall!9142 (toList!2986 lt!1571642) lambda!141248)))

(declare-fun lt!1572365 () Unit!72045)

(assert (=> d!1289458 (= lt!1572365 (choose!26983 lt!1571642))))

(assert (=> d!1289458 (= (lemmaContainsAllItsOwnKeys!67 lt!1571642) lt!1572365)))

(declare-fun bs!633518 () Bool)

(assert (= bs!633518 d!1289458))

(declare-fun m!4977007 () Bool)

(assert (=> bs!633518 m!4977007))

(declare-fun m!4977009 () Bool)

(assert (=> bs!633518 m!4977009))

(assert (=> bm!302991 d!1289458))

(declare-fun d!1289464 () Bool)

(declare-fun res!1792421 () Bool)

(declare-fun e!2713338 () Bool)

(assert (=> d!1289464 (=> res!1792421 e!2713338)))

(assert (=> d!1289464 (= res!1792421 ((_ is Nil!48962) (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200)))))))

(assert (=> d!1289464 (= (forall!9140 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200))) lambda!141069) e!2713338)))

(declare-fun b!4359961 () Bool)

(declare-fun e!2713339 () Bool)

(assert (=> b!4359961 (= e!2713338 e!2713339)))

(declare-fun res!1792422 () Bool)

(assert (=> b!4359961 (=> (not res!1792422) (not e!2713339))))

(assert (=> b!4359961 (= res!1792422 (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200))))))))

(declare-fun b!4359962 () Bool)

(assert (=> b!4359962 (= e!2713339 (forall!9140 (t!356006 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200)))) lambda!141069))))

(assert (= (and d!1289464 (not res!1792421)) b!4359961))

(assert (= (and b!4359961 res!1792422) b!4359962))

(declare-fun b_lambda!131591 () Bool)

(assert (=> (not b_lambda!131591) (not b!4359961)))

(declare-fun m!4977017 () Bool)

(assert (=> b!4359961 m!4977017))

(declare-fun m!4977023 () Bool)

(assert (=> b!4359962 m!4977023))

(assert (=> d!1289102 d!1289464))

(declare-fun d!1289466 () Bool)

(declare-fun e!2713340 () Bool)

(assert (=> d!1289466 e!2713340))

(declare-fun res!1792424 () Bool)

(assert (=> d!1289466 (=> (not res!1792424) (not e!2713340))))

(declare-fun lt!1572376 () ListLongMap!1635)

(assert (=> d!1289466 (= res!1792424 (contains!11184 lt!1572376 (_1!27482 (tuple2!48377 hash!377 newBucket!200))))))

(declare-fun lt!1572378 () List!49086)

(assert (=> d!1289466 (= lt!1572376 (ListLongMap!1636 lt!1572378))))

(declare-fun lt!1572377 () Unit!72045)

(declare-fun lt!1572375 () Unit!72045)

(assert (=> d!1289466 (= lt!1572377 lt!1572375)))

(assert (=> d!1289466 (= (getValueByKey!466 lt!1572378 (_1!27482 (tuple2!48377 hash!377 newBucket!200))) (Some!10479 (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289466 (= lt!1572375 (lemmaContainsTupThenGetReturnValue!240 lt!1572378 (_1!27482 (tuple2!48377 hash!377 newBucket!200)) (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289466 (= lt!1572378 (insertStrictlySorted!141 (toList!2985 lm!1707) (_1!27482 (tuple2!48377 hash!377 newBucket!200)) (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289466 (= (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200)) lt!1572376)))

(declare-fun b!4359963 () Bool)

(declare-fun res!1792423 () Bool)

(assert (=> b!4359963 (=> (not res!1792423) (not e!2713340))))

(assert (=> b!4359963 (= res!1792423 (= (getValueByKey!466 (toList!2985 lt!1572376) (_1!27482 (tuple2!48377 hash!377 newBucket!200))) (Some!10479 (_2!27482 (tuple2!48377 hash!377 newBucket!200)))))))

(declare-fun b!4359964 () Bool)

(assert (=> b!4359964 (= e!2713340 (contains!11185 (toList!2985 lt!1572376) (tuple2!48377 hash!377 newBucket!200)))))

(assert (= (and d!1289466 res!1792424) b!4359963))

(assert (= (and b!4359963 res!1792423) b!4359964))

(declare-fun m!4977035 () Bool)

(assert (=> d!1289466 m!4977035))

(declare-fun m!4977037 () Bool)

(assert (=> d!1289466 m!4977037))

(declare-fun m!4977039 () Bool)

(assert (=> d!1289466 m!4977039))

(declare-fun m!4977041 () Bool)

(assert (=> d!1289466 m!4977041))

(declare-fun m!4977043 () Bool)

(assert (=> b!4359963 m!4977043))

(declare-fun m!4977045 () Bool)

(assert (=> b!4359964 m!4977045))

(assert (=> d!1289102 d!1289466))

(declare-fun d!1289470 () Bool)

(assert (=> d!1289470 (forall!9140 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200))) lambda!141069)))

(assert (=> d!1289470 true))

(declare-fun _$31!238 () Unit!72045)

(assert (=> d!1289470 (= (choose!26967 lm!1707 lambda!141069 hash!377 newBucket!200) _$31!238)))

(declare-fun bs!633519 () Bool)

(assert (= bs!633519 d!1289470))

(assert (=> bs!633519 m!4975617))

(assert (=> bs!633519 m!4975619))

(assert (=> d!1289102 d!1289470))

(assert (=> d!1289102 d!1289108))

(declare-fun d!1289474 () Bool)

(assert (=> d!1289474 (= (isEmpty!28211 (toList!2985 lm!1707)) ((_ is Nil!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289144 d!1289474))

(declare-fun d!1289476 () Bool)

(declare-fun res!1792428 () Bool)

(declare-fun e!2713347 () Bool)

(assert (=> d!1289476 (=> res!1792428 e!2713347)))

(assert (=> d!1289476 (= res!1792428 (and ((_ is Cons!48961) (toList!2986 lt!1571629)) (= (_1!27481 (h!54518 (toList!2986 lt!1571629))) key!3918)))))

(assert (=> d!1289476 (= (containsKey!717 (toList!2986 lt!1571629) key!3918) e!2713347)))

(declare-fun b!4359975 () Bool)

(declare-fun e!2713348 () Bool)

(assert (=> b!4359975 (= e!2713347 e!2713348)))

(declare-fun res!1792429 () Bool)

(assert (=> b!4359975 (=> (not res!1792429) (not e!2713348))))

(assert (=> b!4359975 (= res!1792429 ((_ is Cons!48961) (toList!2986 lt!1571629)))))

(declare-fun b!4359976 () Bool)

(assert (=> b!4359976 (= e!2713348 (containsKey!717 (t!356005 (toList!2986 lt!1571629)) key!3918))))

(assert (= (and d!1289476 (not res!1792428)) b!4359975))

(assert (= (and b!4359975 res!1792429) b!4359976))

(declare-fun m!4977067 () Bool)

(assert (=> b!4359976 m!4977067))

(assert (=> b!4359385 d!1289476))

(declare-fun d!1289478 () Bool)

(assert (=> d!1289478 (containsKey!717 (toList!2986 lt!1571629) key!3918)))

(declare-fun lt!1572387 () Unit!72045)

(assert (=> d!1289478 (= lt!1572387 (choose!26989 (toList!2986 lt!1571629) key!3918))))

(assert (=> d!1289478 (invariantList!684 (toList!2986 lt!1571629))))

(assert (=> d!1289478 (= (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571629) key!3918) lt!1572387)))

(declare-fun bs!633520 () Bool)

(assert (= bs!633520 d!1289478))

(assert (=> bs!633520 m!4976081))

(declare-fun m!4977069 () Bool)

(assert (=> bs!633520 m!4977069))

(assert (=> bs!633520 m!4976371))

(assert (=> b!4359385 d!1289478))

(declare-fun d!1289480 () Bool)

(declare-fun res!1792430 () Bool)

(declare-fun e!2713349 () Bool)

(assert (=> d!1289480 (=> res!1792430 e!2713349)))

(assert (=> d!1289480 (= res!1792430 ((_ is Nil!48961) (toList!2986 lt!1571643)))))

(assert (=> d!1289480 (= (forall!9142 (toList!2986 lt!1571643) lambda!141158) e!2713349)))

(declare-fun b!4359977 () Bool)

(declare-fun e!2713350 () Bool)

(assert (=> b!4359977 (= e!2713349 e!2713350)))

(declare-fun res!1792431 () Bool)

(assert (=> b!4359977 (=> (not res!1792431) (not e!2713350))))

(assert (=> b!4359977 (= res!1792431 (dynLambda!20645 lambda!141158 (h!54518 (toList!2986 lt!1571643))))))

(declare-fun b!4359978 () Bool)

(assert (=> b!4359978 (= e!2713350 (forall!9142 (t!356005 (toList!2986 lt!1571643)) lambda!141158))))

(assert (= (and d!1289480 (not res!1792430)) b!4359977))

(assert (= (and b!4359977 res!1792431) b!4359978))

(declare-fun b_lambda!131593 () Bool)

(assert (=> (not b_lambda!131593) (not b!4359977)))

(declare-fun m!4977071 () Bool)

(assert (=> b!4359977 m!4977071))

(declare-fun m!4977073 () Bool)

(assert (=> b!4359978 m!4977073))

(assert (=> b!4359309 d!1289480))

(declare-fun d!1289482 () Bool)

(declare-fun res!1792432 () Bool)

(declare-fun e!2713351 () Bool)

(assert (=> d!1289482 (=> res!1792432 e!2713351)))

(assert (=> d!1289482 (= res!1792432 (not ((_ is Cons!48961) (_2!27482 lt!1571628))))))

(assert (=> d!1289482 (= (noDuplicateKeys!501 (_2!27482 lt!1571628)) e!2713351)))

(declare-fun b!4359979 () Bool)

(declare-fun e!2713352 () Bool)

(assert (=> b!4359979 (= e!2713351 e!2713352)))

(declare-fun res!1792433 () Bool)

(assert (=> b!4359979 (=> (not res!1792433) (not e!2713352))))

(assert (=> b!4359979 (= res!1792433 (not (containsKey!714 (t!356005 (_2!27482 lt!1571628)) (_1!27481 (h!54518 (_2!27482 lt!1571628))))))))

(declare-fun b!4359980 () Bool)

(assert (=> b!4359980 (= e!2713352 (noDuplicateKeys!501 (t!356005 (_2!27482 lt!1571628))))))

(assert (= (and d!1289482 (not res!1792432)) b!4359979))

(assert (= (and b!4359979 res!1792433) b!4359980))

(declare-fun m!4977075 () Bool)

(assert (=> b!4359979 m!4977075))

(declare-fun m!4977077 () Bool)

(assert (=> b!4359980 m!4977077))

(assert (=> bs!633258 d!1289482))

(assert (=> d!1289228 d!1289186))

(assert (=> d!1289228 d!1289184))

(declare-fun d!1289484 () Bool)

(assert (=> d!1289484 (not (containsKey!714 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))) key!3918))))

(assert (=> d!1289484 true))

(declare-fun _$39!286 () Unit!72045)

(assert (=> d!1289484 (= (choose!26979 lm!1707 key!3918 (_1!27482 (h!54519 (toList!2985 lm!1707))) hashF!1247) _$39!286)))

(declare-fun bs!633521 () Bool)

(assert (= bs!633521 d!1289484))

(assert (=> bs!633521 m!4975521))

(assert (=> bs!633521 m!4975521))

(assert (=> bs!633521 m!4975523))

(assert (=> d!1289228 d!1289484))

(declare-fun d!1289486 () Bool)

(declare-fun res!1792434 () Bool)

(declare-fun e!2713353 () Bool)

(assert (=> d!1289486 (=> res!1792434 e!2713353)))

(assert (=> d!1289486 (= res!1792434 ((_ is Nil!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289486 (= (forall!9140 (toList!2985 lm!1707) lambda!141173) e!2713353)))

(declare-fun b!4359982 () Bool)

(declare-fun e!2713354 () Bool)

(assert (=> b!4359982 (= e!2713353 e!2713354)))

(declare-fun res!1792435 () Bool)

(assert (=> b!4359982 (=> (not res!1792435) (not e!2713354))))

(assert (=> b!4359982 (= res!1792435 (dynLambda!20643 lambda!141173 (h!54519 (toList!2985 lm!1707))))))

(declare-fun b!4359983 () Bool)

(assert (=> b!4359983 (= e!2713354 (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141173))))

(assert (= (and d!1289486 (not res!1792434)) b!4359982))

(assert (= (and b!4359982 res!1792435) b!4359983))

(declare-fun b_lambda!131595 () Bool)

(assert (=> (not b_lambda!131595) (not b!4359982)))

(declare-fun m!4977079 () Bool)

(assert (=> b!4359982 m!4977079))

(declare-fun m!4977081 () Bool)

(assert (=> b!4359983 m!4977081))

(assert (=> d!1289228 d!1289486))

(declare-fun d!1289488 () Bool)

(assert (=> d!1289488 (= (tail!7016 (toList!2985 lm!1707)) (t!356006 (toList!2985 lm!1707)))))

(assert (=> d!1289206 d!1289488))

(declare-fun bs!633522 () Bool)

(declare-fun b!4359987 () Bool)

(assert (= bs!633522 (and b!4359987 d!1289374)))

(declare-fun lambda!141253 () Int)

(assert (=> bs!633522 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572234) (= lambda!141253 lambda!141217))))

(declare-fun bs!633523 () Bool)

(assert (= bs!633523 (and b!4359987 b!4359814)))

(assert (=> bs!633523 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141253 lambda!141213))))

(declare-fun bs!633524 () Bool)

(assert (= bs!633524 (and b!4359987 b!4359307)))

(assert (=> bs!633524 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141253 lambda!141156))))

(declare-fun bs!633525 () Bool)

(assert (= bs!633525 (and b!4359987 b!4359397)))

(assert (=> bs!633525 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141253 lambda!141168))))

(declare-fun bs!633526 () Bool)

(assert (= bs!633526 (and b!4359987 b!4359815)))

(assert (=> bs!633526 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141253 lambda!141212))))

(declare-fun bs!633527 () Bool)

(assert (= bs!633527 (and b!4359987 b!4359876)))

(assert (=> bs!633527 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141253 lambda!141228))))

(declare-fun bs!633528 () Bool)

(assert (= bs!633528 (and b!4359987 b!4359929)))

(assert (=> bs!633528 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572326) (= lambda!141253 lambda!141244))))

(declare-fun bs!633529 () Bool)

(assert (= bs!633529 (and b!4359987 d!1289236)))

(assert (=> bs!633529 (not (= lambda!141253 lambda!141177))))

(declare-fun bs!633530 () Bool)

(assert (= bs!633530 (and b!4359987 d!1289224)))

(assert (=> bs!633530 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572027) (= lambda!141253 lambda!141170))))

(declare-fun bs!633531 () Bool)

(assert (= bs!633531 (and b!4359987 d!1289146)))

(assert (=> bs!633531 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571927) (= lambda!141253 lambda!141158))))

(declare-fun bs!633532 () Bool)

(assert (= bs!633532 (and b!4359987 d!1289440)))

(assert (=> bs!633532 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572331) (= lambda!141253 lambda!141246))))

(declare-fun bs!633533 () Bool)

(assert (= bs!633533 (and b!4359987 b!4359308)))

(assert (=> bs!633533 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141253 lambda!141155))))

(declare-fun bs!633534 () Bool)

(assert (= bs!633534 (and b!4359987 b!4359877)))

(assert (=> bs!633534 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141253 lambda!141223))))

(assert (=> bs!633525 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572022) (= lambda!141253 lambda!141169))))

(assert (=> bs!633524 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571922) (= lambda!141253 lambda!141157))))

(assert (=> bs!633528 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141253 lambda!141241))))

(declare-fun bs!633535 () Bool)

(assert (= bs!633535 (and b!4359987 b!4359930)))

(assert (=> bs!633535 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141253 lambda!141239))))

(declare-fun bs!633536 () Bool)

(assert (= bs!633536 (and b!4359987 d!1289458)))

(assert (=> bs!633536 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141253 lambda!141248))))

(assert (=> bs!633527 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572280) (= lambda!141253 lambda!141229))))

(declare-fun bs!633539 () Bool)

(assert (= bs!633539 (and b!4359987 b!4359398)))

(assert (=> bs!633539 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141253 lambda!141167))))

(declare-fun bs!633540 () Bool)

(assert (= bs!633540 (and b!4359987 d!1289410)))

(assert (=> bs!633540 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572285) (= lambda!141253 lambda!141231))))

(declare-fun bs!633542 () Bool)

(assert (= bs!633542 (and b!4359987 d!1289310)))

(assert (=> bs!633542 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141253 lambda!141200))))

(assert (=> bs!633523 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572229) (= lambda!141253 lambda!141214))))

(assert (=> b!4359987 true))

(declare-fun bs!633550 () Bool)

(declare-fun b!4359986 () Bool)

(assert (= bs!633550 (and b!4359986 d!1289374)))

(declare-fun lambda!141255 () Int)

(assert (=> bs!633550 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572234) (= lambda!141255 lambda!141217))))

(declare-fun bs!633551 () Bool)

(assert (= bs!633551 (and b!4359986 b!4359814)))

(assert (=> bs!633551 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141255 lambda!141213))))

(declare-fun bs!633553 () Bool)

(assert (= bs!633553 (and b!4359986 b!4359307)))

(assert (=> bs!633553 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141255 lambda!141156))))

(declare-fun bs!633554 () Bool)

(assert (= bs!633554 (and b!4359986 b!4359815)))

(assert (=> bs!633554 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141255 lambda!141212))))

(declare-fun bs!633555 () Bool)

(assert (= bs!633555 (and b!4359986 b!4359876)))

(assert (=> bs!633555 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141255 lambda!141228))))

(declare-fun bs!633556 () Bool)

(assert (= bs!633556 (and b!4359986 b!4359929)))

(assert (=> bs!633556 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572326) (= lambda!141255 lambda!141244))))

(declare-fun bs!633557 () Bool)

(assert (= bs!633557 (and b!4359986 d!1289236)))

(assert (=> bs!633557 (not (= lambda!141255 lambda!141177))))

(declare-fun bs!633558 () Bool)

(assert (= bs!633558 (and b!4359986 d!1289224)))

(assert (=> bs!633558 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572027) (= lambda!141255 lambda!141170))))

(declare-fun bs!633559 () Bool)

(assert (= bs!633559 (and b!4359986 d!1289146)))

(assert (=> bs!633559 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571927) (= lambda!141255 lambda!141158))))

(declare-fun bs!633560 () Bool)

(assert (= bs!633560 (and b!4359986 d!1289440)))

(assert (=> bs!633560 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572331) (= lambda!141255 lambda!141246))))

(declare-fun bs!633562 () Bool)

(assert (= bs!633562 (and b!4359986 b!4359308)))

(assert (=> bs!633562 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141255 lambda!141155))))

(declare-fun bs!633563 () Bool)

(assert (= bs!633563 (and b!4359986 b!4359877)))

(assert (=> bs!633563 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141255 lambda!141223))))

(declare-fun bs!633564 () Bool)

(assert (= bs!633564 (and b!4359986 b!4359397)))

(assert (=> bs!633564 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572022) (= lambda!141255 lambda!141169))))

(assert (=> bs!633553 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571922) (= lambda!141255 lambda!141157))))

(assert (=> bs!633556 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141255 lambda!141241))))

(declare-fun bs!633565 () Bool)

(assert (= bs!633565 (and b!4359986 b!4359930)))

(assert (=> bs!633565 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141255 lambda!141239))))

(declare-fun bs!633566 () Bool)

(assert (= bs!633566 (and b!4359986 d!1289458)))

(assert (=> bs!633566 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141255 lambda!141248))))

(assert (=> bs!633564 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141255 lambda!141168))))

(declare-fun bs!633567 () Bool)

(assert (= bs!633567 (and b!4359986 b!4359987)))

(assert (=> bs!633567 (= lambda!141255 lambda!141253)))

(assert (=> bs!633555 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572280) (= lambda!141255 lambda!141229))))

(declare-fun bs!633568 () Bool)

(assert (= bs!633568 (and b!4359986 b!4359398)))

(assert (=> bs!633568 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571642) (= lambda!141255 lambda!141167))))

(declare-fun bs!633569 () Bool)

(assert (= bs!633569 (and b!4359986 d!1289410)))

(assert (=> bs!633569 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572285) (= lambda!141255 lambda!141231))))

(declare-fun bs!633570 () Bool)

(assert (= bs!633570 (and b!4359986 d!1289310)))

(assert (=> bs!633570 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1571643) (= lambda!141255 lambda!141200))))

(assert (=> bs!633551 (= (= (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572229) (= lambda!141255 lambda!141214))))

(assert (=> b!4359986 true))

(declare-fun lambda!141256 () Int)

(declare-fun lt!1572396 () ListMap!2229)

(assert (=> bs!633550 (= (= lt!1572396 lt!1572234) (= lambda!141256 lambda!141217))))

(assert (=> bs!633553 (= (= lt!1572396 lt!1571643) (= lambda!141256 lambda!141156))))

(assert (=> bs!633554 (= (= lt!1572396 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141256 lambda!141212))))

(assert (=> bs!633555 (= (= lt!1572396 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141256 lambda!141228))))

(assert (=> bs!633556 (= (= lt!1572396 lt!1572326) (= lambda!141256 lambda!141244))))

(assert (=> bs!633557 (not (= lambda!141256 lambda!141177))))

(assert (=> bs!633558 (= (= lt!1572396 lt!1572027) (= lambda!141256 lambda!141170))))

(assert (=> bs!633559 (= (= lt!1572396 lt!1571927) (= lambda!141256 lambda!141158))))

(assert (=> bs!633560 (= (= lt!1572396 lt!1572331) (= lambda!141256 lambda!141246))))

(assert (=> bs!633551 (= (= lt!1572396 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141256 lambda!141213))))

(assert (=> b!4359986 (= (= lt!1572396 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141256 lambda!141255))))

(assert (=> bs!633562 (= (= lt!1572396 lt!1571643) (= lambda!141256 lambda!141155))))

(assert (=> bs!633563 (= (= lt!1572396 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141256 lambda!141223))))

(assert (=> bs!633564 (= (= lt!1572396 lt!1572022) (= lambda!141256 lambda!141169))))

(assert (=> bs!633553 (= (= lt!1572396 lt!1571922) (= lambda!141256 lambda!141157))))

(assert (=> bs!633556 (= (= lt!1572396 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141256 lambda!141241))))

(assert (=> bs!633565 (= (= lt!1572396 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141256 lambda!141239))))

(assert (=> bs!633566 (= (= lt!1572396 lt!1571642) (= lambda!141256 lambda!141248))))

(assert (=> bs!633564 (= (= lt!1572396 lt!1571642) (= lambda!141256 lambda!141168))))

(assert (=> bs!633567 (= (= lt!1572396 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141256 lambda!141253))))

(assert (=> bs!633555 (= (= lt!1572396 lt!1572280) (= lambda!141256 lambda!141229))))

(assert (=> bs!633568 (= (= lt!1572396 lt!1571642) (= lambda!141256 lambda!141167))))

(assert (=> bs!633569 (= (= lt!1572396 lt!1572285) (= lambda!141256 lambda!141231))))

(assert (=> bs!633570 (= (= lt!1572396 lt!1571643) (= lambda!141256 lambda!141200))))

(assert (=> bs!633551 (= (= lt!1572396 lt!1572229) (= lambda!141256 lambda!141214))))

(assert (=> b!4359986 true))

(declare-fun bs!633571 () Bool)

(declare-fun d!1289490 () Bool)

(assert (= bs!633571 (and d!1289490 b!4359307)))

(declare-fun lt!1572401 () ListMap!2229)

(declare-fun lambda!141257 () Int)

(assert (=> bs!633571 (= (= lt!1572401 lt!1571643) (= lambda!141257 lambda!141156))))

(declare-fun bs!633572 () Bool)

(assert (= bs!633572 (and d!1289490 b!4359815)))

(assert (=> bs!633572 (= (= lt!1572401 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141257 lambda!141212))))

(declare-fun bs!633573 () Bool)

(assert (= bs!633573 (and d!1289490 b!4359876)))

(assert (=> bs!633573 (= (= lt!1572401 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141257 lambda!141228))))

(declare-fun bs!633574 () Bool)

(assert (= bs!633574 (and d!1289490 b!4359929)))

(assert (=> bs!633574 (= (= lt!1572401 lt!1572326) (= lambda!141257 lambda!141244))))

(declare-fun bs!633575 () Bool)

(assert (= bs!633575 (and d!1289490 d!1289236)))

(assert (=> bs!633575 (not (= lambda!141257 lambda!141177))))

(declare-fun bs!633576 () Bool)

(assert (= bs!633576 (and d!1289490 d!1289224)))

(assert (=> bs!633576 (= (= lt!1572401 lt!1572027) (= lambda!141257 lambda!141170))))

(declare-fun bs!633577 () Bool)

(assert (= bs!633577 (and d!1289490 d!1289374)))

(assert (=> bs!633577 (= (= lt!1572401 lt!1572234) (= lambda!141257 lambda!141217))))

(declare-fun bs!633578 () Bool)

(assert (= bs!633578 (and d!1289490 b!4359986)))

(assert (=> bs!633578 (= (= lt!1572401 lt!1572396) (= lambda!141257 lambda!141256))))

(declare-fun bs!633579 () Bool)

(assert (= bs!633579 (and d!1289490 d!1289146)))

(assert (=> bs!633579 (= (= lt!1572401 lt!1571927) (= lambda!141257 lambda!141158))))

(declare-fun bs!633580 () Bool)

(assert (= bs!633580 (and d!1289490 d!1289440)))

(assert (=> bs!633580 (= (= lt!1572401 lt!1572331) (= lambda!141257 lambda!141246))))

(declare-fun bs!633581 () Bool)

(assert (= bs!633581 (and d!1289490 b!4359814)))

(assert (=> bs!633581 (= (= lt!1572401 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141257 lambda!141213))))

(assert (=> bs!633578 (= (= lt!1572401 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141257 lambda!141255))))

(declare-fun bs!633582 () Bool)

(assert (= bs!633582 (and d!1289490 b!4359308)))

(assert (=> bs!633582 (= (= lt!1572401 lt!1571643) (= lambda!141257 lambda!141155))))

(declare-fun bs!633583 () Bool)

(assert (= bs!633583 (and d!1289490 b!4359877)))

(assert (=> bs!633583 (= (= lt!1572401 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141257 lambda!141223))))

(declare-fun bs!633584 () Bool)

(assert (= bs!633584 (and d!1289490 b!4359397)))

(assert (=> bs!633584 (= (= lt!1572401 lt!1572022) (= lambda!141257 lambda!141169))))

(assert (=> bs!633571 (= (= lt!1572401 lt!1571922) (= lambda!141257 lambda!141157))))

(assert (=> bs!633574 (= (= lt!1572401 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141257 lambda!141241))))

(declare-fun bs!633585 () Bool)

(assert (= bs!633585 (and d!1289490 b!4359930)))

(assert (=> bs!633585 (= (= lt!1572401 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141257 lambda!141239))))

(declare-fun bs!633586 () Bool)

(assert (= bs!633586 (and d!1289490 d!1289458)))

(assert (=> bs!633586 (= (= lt!1572401 lt!1571642) (= lambda!141257 lambda!141248))))

(assert (=> bs!633584 (= (= lt!1572401 lt!1571642) (= lambda!141257 lambda!141168))))

(declare-fun bs!633587 () Bool)

(assert (= bs!633587 (and d!1289490 b!4359987)))

(assert (=> bs!633587 (= (= lt!1572401 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141257 lambda!141253))))

(assert (=> bs!633573 (= (= lt!1572401 lt!1572280) (= lambda!141257 lambda!141229))))

(declare-fun bs!633588 () Bool)

(assert (= bs!633588 (and d!1289490 b!4359398)))

(assert (=> bs!633588 (= (= lt!1572401 lt!1571642) (= lambda!141257 lambda!141167))))

(declare-fun bs!633589 () Bool)

(assert (= bs!633589 (and d!1289490 d!1289410)))

(assert (=> bs!633589 (= (= lt!1572401 lt!1572285) (= lambda!141257 lambda!141231))))

(declare-fun bs!633590 () Bool)

(assert (= bs!633590 (and d!1289490 d!1289310)))

(assert (=> bs!633590 (= (= lt!1572401 lt!1571643) (= lambda!141257 lambda!141200))))

(assert (=> bs!633581 (= (= lt!1572401 lt!1572229) (= lambda!141257 lambda!141214))))

(assert (=> d!1289490 true))

(declare-fun b!4359984 () Bool)

(declare-fun e!2713355 () Bool)

(assert (=> b!4359984 (= e!2713355 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) lambda!141256))))

(declare-fun b!4359985 () Bool)

(declare-fun e!2713356 () Bool)

(assert (=> b!4359985 (= e!2713356 (invariantList!684 (toList!2986 lt!1572401)))))

(assert (=> d!1289490 e!2713356))

(declare-fun res!1792436 () Bool)

(assert (=> d!1289490 (=> (not res!1792436) (not e!2713356))))

(assert (=> d!1289490 (= res!1792436 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141257))))

(declare-fun e!2713357 () ListMap!2229)

(assert (=> d!1289490 (= lt!1572401 e!2713357)))

(declare-fun c!741345 () Bool)

(assert (=> d!1289490 (= c!741345 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289490 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707))))))

(assert (=> d!1289490 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 lm!1707))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) lt!1572401)))

(assert (=> b!4359986 (= e!2713357 lt!1572396)))

(declare-fun lt!1572409 () ListMap!2229)

(assert (=> b!4359986 (= lt!1572409 (+!660 (extractMap!560 (t!356006 (toList!2985 lm!1707))) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359986 (= lt!1572396 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 (extractMap!560 (t!356006 (toList!2985 lm!1707))) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572408 () Unit!72045)

(declare-fun call!303054 () Unit!72045)

(assert (=> b!4359986 (= lt!1572408 call!303054)))

(assert (=> b!4359986 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) lambda!141255)))

(declare-fun lt!1572400 () Unit!72045)

(assert (=> b!4359986 (= lt!1572400 lt!1572408)))

(assert (=> b!4359986 (forall!9142 (toList!2986 lt!1572409) lambda!141256)))

(declare-fun lt!1572397 () Unit!72045)

(declare-fun Unit!72206 () Unit!72045)

(assert (=> b!4359986 (= lt!1572397 Unit!72206)))

(assert (=> b!4359986 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141256)))

(declare-fun lt!1572407 () Unit!72045)

(declare-fun Unit!72207 () Unit!72045)

(assert (=> b!4359986 (= lt!1572407 Unit!72207)))

(declare-fun lt!1572410 () Unit!72045)

(declare-fun Unit!72208 () Unit!72045)

(assert (=> b!4359986 (= lt!1572410 Unit!72208)))

(declare-fun lt!1572404 () Unit!72045)

(assert (=> b!4359986 (= lt!1572404 (forallContained!1783 (toList!2986 lt!1572409) lambda!141256 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4359986 (contains!11183 lt!1572409 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572402 () Unit!72045)

(declare-fun Unit!72209 () Unit!72045)

(assert (=> b!4359986 (= lt!1572402 Unit!72209)))

(assert (=> b!4359986 (contains!11183 lt!1572396 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572395 () Unit!72045)

(declare-fun Unit!72210 () Unit!72045)

(assert (=> b!4359986 (= lt!1572395 Unit!72210)))

(declare-fun call!303053 () Bool)

(assert (=> b!4359986 call!303053))

(declare-fun lt!1572394 () Unit!72045)

(declare-fun Unit!72211 () Unit!72045)

(assert (=> b!4359986 (= lt!1572394 Unit!72211)))

(assert (=> b!4359986 (forall!9142 (toList!2986 lt!1572409) lambda!141256)))

(declare-fun lt!1572405 () Unit!72045)

(declare-fun Unit!72212 () Unit!72045)

(assert (=> b!4359986 (= lt!1572405 Unit!72212)))

(declare-fun lt!1572390 () Unit!72045)

(declare-fun Unit!72213 () Unit!72045)

(assert (=> b!4359986 (= lt!1572390 Unit!72213)))

(declare-fun lt!1572392 () Unit!72045)

(assert (=> b!4359986 (= lt!1572392 (addForallContainsKeyThenBeforeAdding!67 (extractMap!560 (t!356006 (toList!2985 lm!1707))) lt!1572396 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303052 () Bool)

(assert (=> b!4359986 call!303052))

(declare-fun lt!1572393 () Unit!72045)

(assert (=> b!4359986 (= lt!1572393 lt!1572392)))

(assert (=> b!4359986 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) lambda!141256)))

(declare-fun lt!1572391 () Unit!72045)

(declare-fun Unit!72214 () Unit!72045)

(assert (=> b!4359986 (= lt!1572391 Unit!72214)))

(declare-fun res!1792438 () Bool)

(assert (=> b!4359986 (= res!1792438 (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141256))))

(assert (=> b!4359986 (=> (not res!1792438) (not e!2713355))))

(assert (=> b!4359986 e!2713355))

(declare-fun lt!1572399 () Unit!72045)

(declare-fun Unit!72215 () Unit!72045)

(assert (=> b!4359986 (= lt!1572399 Unit!72215)))

(assert (=> b!4359987 (= e!2713357 (extractMap!560 (t!356006 (toList!2985 lm!1707))))))

(declare-fun lt!1572403 () Unit!72045)

(assert (=> b!4359987 (= lt!1572403 call!303054)))

(assert (=> b!4359987 call!303052))

(declare-fun lt!1572398 () Unit!72045)

(assert (=> b!4359987 (= lt!1572398 lt!1572403)))

(assert (=> b!4359987 call!303053))

(declare-fun lt!1572406 () Unit!72045)

(declare-fun Unit!72216 () Unit!72045)

(assert (=> b!4359987 (= lt!1572406 Unit!72216)))

(declare-fun bm!303047 () Bool)

(assert (=> bm!303047 (= call!303052 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (ite c!741345 lambda!141253 lambda!141256)))))

(declare-fun bm!303048 () Bool)

(assert (=> bm!303048 (= call!303053 (forall!9142 (ite c!741345 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741345 lambda!141253 lambda!141256)))))

(declare-fun b!4359988 () Bool)

(declare-fun res!1792437 () Bool)

(assert (=> b!4359988 (=> (not res!1792437) (not e!2713356))))

(assert (=> b!4359988 (= res!1792437 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) lambda!141257))))

(declare-fun bm!303049 () Bool)

(assert (=> bm!303049 (= call!303054 (lemmaContainsAllItsOwnKeys!67 (extractMap!560 (t!356006 (toList!2985 lm!1707)))))))

(assert (= (and d!1289490 c!741345) b!4359987))

(assert (= (and d!1289490 (not c!741345)) b!4359986))

(assert (= (and b!4359986 res!1792438) b!4359984))

(assert (= (or b!4359987 b!4359986) bm!303049))

(assert (= (or b!4359987 b!4359986) bm!303048))

(assert (= (or b!4359987 b!4359986) bm!303047))

(assert (= (and d!1289490 res!1792436) b!4359988))

(assert (= (and b!4359988 res!1792437) b!4359985))

(declare-fun m!4977115 () Bool)

(assert (=> b!4359984 m!4977115))

(declare-fun m!4977117 () Bool)

(assert (=> bm!303047 m!4977117))

(declare-fun m!4977119 () Bool)

(assert (=> d!1289490 m!4977119))

(assert (=> d!1289490 m!4975929))

(assert (=> b!4359986 m!4975501))

(declare-fun m!4977121 () Bool)

(assert (=> b!4359986 m!4977121))

(assert (=> b!4359986 m!4977115))

(declare-fun m!4977123 () Bool)

(assert (=> b!4359986 m!4977123))

(assert (=> b!4359986 m!4977121))

(declare-fun m!4977125 () Bool)

(assert (=> b!4359986 m!4977125))

(declare-fun m!4977129 () Bool)

(assert (=> b!4359986 m!4977129))

(assert (=> b!4359986 m!4975501))

(declare-fun m!4977135 () Bool)

(assert (=> b!4359986 m!4977135))

(declare-fun m!4977139 () Bool)

(assert (=> b!4359986 m!4977139))

(declare-fun m!4977141 () Bool)

(assert (=> b!4359986 m!4977141))

(assert (=> b!4359986 m!4977141))

(declare-fun m!4977143 () Bool)

(assert (=> b!4359986 m!4977143))

(declare-fun m!4977145 () Bool)

(assert (=> b!4359986 m!4977145))

(declare-fun m!4977147 () Bool)

(assert (=> b!4359986 m!4977147))

(declare-fun m!4977149 () Bool)

(assert (=> b!4359988 m!4977149))

(assert (=> bm!303049 m!4975501))

(declare-fun m!4977151 () Bool)

(assert (=> bm!303049 m!4977151))

(declare-fun m!4977153 () Bool)

(assert (=> b!4359985 m!4977153))

(declare-fun m!4977155 () Bool)

(assert (=> bm!303048 m!4977155))

(assert (=> b!4359409 d!1289490))

(assert (=> b!4359409 d!1289210))

(declare-fun d!1289508 () Bool)

(declare-fun res!1792446 () Bool)

(declare-fun e!2713371 () Bool)

(assert (=> d!1289508 (=> res!1792446 e!2713371)))

(assert (=> d!1289508 (= res!1792446 (and ((_ is Cons!48961) lt!1571736) (= (_1!27481 (h!54518 lt!1571736)) key!3918)))))

(assert (=> d!1289508 (= (containsKey!714 lt!1571736 key!3918) e!2713371)))

(declare-fun b!4360014 () Bool)

(declare-fun e!2713372 () Bool)

(assert (=> b!4360014 (= e!2713371 e!2713372)))

(declare-fun res!1792447 () Bool)

(assert (=> b!4360014 (=> (not res!1792447) (not e!2713372))))

(assert (=> b!4360014 (= res!1792447 ((_ is Cons!48961) lt!1571736))))

(declare-fun b!4360015 () Bool)

(assert (=> b!4360015 (= e!2713372 (containsKey!714 (t!356005 lt!1571736) key!3918))))

(assert (= (and d!1289508 (not res!1792446)) b!4360014))

(assert (= (and b!4360014 res!1792447) b!4360015))

(declare-fun m!4977157 () Bool)

(assert (=> b!4360015 m!4977157))

(assert (=> d!1289132 d!1289508))

(declare-fun d!1289510 () Bool)

(declare-fun res!1792448 () Bool)

(declare-fun e!2713373 () Bool)

(assert (=> d!1289510 (=> res!1792448 e!2713373)))

(assert (=> d!1289510 (= res!1792448 (not ((_ is Cons!48961) lt!1571634)))))

(assert (=> d!1289510 (= (noDuplicateKeys!501 lt!1571634) e!2713373)))

(declare-fun b!4360016 () Bool)

(declare-fun e!2713374 () Bool)

(assert (=> b!4360016 (= e!2713373 e!2713374)))

(declare-fun res!1792449 () Bool)

(assert (=> b!4360016 (=> (not res!1792449) (not e!2713374))))

(assert (=> b!4360016 (= res!1792449 (not (containsKey!714 (t!356005 lt!1571634) (_1!27481 (h!54518 lt!1571634)))))))

(declare-fun b!4360017 () Bool)

(assert (=> b!4360017 (= e!2713374 (noDuplicateKeys!501 (t!356005 lt!1571634)))))

(assert (= (and d!1289510 (not res!1792448)) b!4360016))

(assert (= (and b!4360016 res!1792449) b!4360017))

(declare-fun m!4977159 () Bool)

(assert (=> b!4360016 m!4977159))

(assert (=> b!4360017 m!4976387))

(assert (=> d!1289132 d!1289510))

(declare-fun bs!633591 () Bool)

(declare-fun d!1289512 () Bool)

(assert (= bs!633591 (and d!1289512 d!1289490)))

(declare-fun lambda!141262 () Int)

(assert (=> bs!633591 (= (= lt!1571922 lt!1572401) (= lambda!141262 lambda!141257))))

(declare-fun bs!633592 () Bool)

(assert (= bs!633592 (and d!1289512 b!4359307)))

(assert (=> bs!633592 (= (= lt!1571922 lt!1571643) (= lambda!141262 lambda!141156))))

(declare-fun bs!633593 () Bool)

(assert (= bs!633593 (and d!1289512 b!4359815)))

(assert (=> bs!633593 (= (= lt!1571922 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141262 lambda!141212))))

(declare-fun bs!633594 () Bool)

(assert (= bs!633594 (and d!1289512 b!4359876)))

(assert (=> bs!633594 (= (= lt!1571922 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141262 lambda!141228))))

(declare-fun bs!633595 () Bool)

(assert (= bs!633595 (and d!1289512 b!4359929)))

(assert (=> bs!633595 (= (= lt!1571922 lt!1572326) (= lambda!141262 lambda!141244))))

(declare-fun bs!633596 () Bool)

(assert (= bs!633596 (and d!1289512 d!1289236)))

(assert (=> bs!633596 (not (= lambda!141262 lambda!141177))))

(declare-fun bs!633597 () Bool)

(assert (= bs!633597 (and d!1289512 d!1289224)))

(assert (=> bs!633597 (= (= lt!1571922 lt!1572027) (= lambda!141262 lambda!141170))))

(declare-fun bs!633598 () Bool)

(assert (= bs!633598 (and d!1289512 d!1289374)))

(assert (=> bs!633598 (= (= lt!1571922 lt!1572234) (= lambda!141262 lambda!141217))))

(declare-fun bs!633599 () Bool)

(assert (= bs!633599 (and d!1289512 b!4359986)))

(assert (=> bs!633599 (= (= lt!1571922 lt!1572396) (= lambda!141262 lambda!141256))))

(declare-fun bs!633600 () Bool)

(assert (= bs!633600 (and d!1289512 d!1289146)))

(assert (=> bs!633600 (= (= lt!1571922 lt!1571927) (= lambda!141262 lambda!141158))))

(declare-fun bs!633601 () Bool)

(assert (= bs!633601 (and d!1289512 d!1289440)))

(assert (=> bs!633601 (= (= lt!1571922 lt!1572331) (= lambda!141262 lambda!141246))))

(declare-fun bs!633602 () Bool)

(assert (= bs!633602 (and d!1289512 b!4359814)))

(assert (=> bs!633602 (= (= lt!1571922 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141262 lambda!141213))))

(assert (=> bs!633599 (= (= lt!1571922 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141262 lambda!141255))))

(declare-fun bs!633603 () Bool)

(assert (= bs!633603 (and d!1289512 b!4359308)))

(assert (=> bs!633603 (= (= lt!1571922 lt!1571643) (= lambda!141262 lambda!141155))))

(declare-fun bs!633604 () Bool)

(assert (= bs!633604 (and d!1289512 b!4359877)))

(assert (=> bs!633604 (= (= lt!1571922 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141262 lambda!141223))))

(declare-fun bs!633605 () Bool)

(assert (= bs!633605 (and d!1289512 b!4359397)))

(assert (=> bs!633605 (= (= lt!1571922 lt!1572022) (= lambda!141262 lambda!141169))))

(assert (=> bs!633592 (= lambda!141262 lambda!141157)))

(assert (=> bs!633595 (= (= lt!1571922 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141262 lambda!141241))))

(declare-fun bs!633606 () Bool)

(assert (= bs!633606 (and d!1289512 b!4359930)))

(assert (=> bs!633606 (= (= lt!1571922 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141262 lambda!141239))))

(declare-fun bs!633607 () Bool)

(assert (= bs!633607 (and d!1289512 d!1289458)))

(assert (=> bs!633607 (= (= lt!1571922 lt!1571642) (= lambda!141262 lambda!141248))))

(assert (=> bs!633605 (= (= lt!1571922 lt!1571642) (= lambda!141262 lambda!141168))))

(declare-fun bs!633608 () Bool)

(assert (= bs!633608 (and d!1289512 b!4359987)))

(assert (=> bs!633608 (= (= lt!1571922 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141262 lambda!141253))))

(assert (=> bs!633594 (= (= lt!1571922 lt!1572280) (= lambda!141262 lambda!141229))))

(declare-fun bs!633609 () Bool)

(assert (= bs!633609 (and d!1289512 b!4359398)))

(assert (=> bs!633609 (= (= lt!1571922 lt!1571642) (= lambda!141262 lambda!141167))))

(declare-fun bs!633610 () Bool)

(assert (= bs!633610 (and d!1289512 d!1289410)))

(assert (=> bs!633610 (= (= lt!1571922 lt!1572285) (= lambda!141262 lambda!141231))))

(declare-fun bs!633611 () Bool)

(assert (= bs!633611 (and d!1289512 d!1289310)))

(assert (=> bs!633611 (= (= lt!1571922 lt!1571643) (= lambda!141262 lambda!141200))))

(assert (=> bs!633602 (= (= lt!1571922 lt!1572229) (= lambda!141262 lambda!141214))))

(assert (=> d!1289512 true))

(assert (=> d!1289512 (forall!9142 (toList!2986 lt!1571643) lambda!141262)))

(declare-fun lt!1572423 () Unit!72045)

(declare-fun choose!26992 (ListMap!2229 ListMap!2229 K!10320 V!10566) Unit!72045)

(assert (=> d!1289512 (= lt!1572423 (choose!26992 lt!1571643 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289512 (forall!9142 (toList!2986 (+!660 lt!1571643 (tuple2!48375 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))) lambda!141262)))

(assert (=> d!1289512 (= (addForallContainsKeyThenBeforeAdding!67 lt!1571643 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572423)))

(declare-fun bs!633612 () Bool)

(assert (= bs!633612 d!1289512))

(declare-fun m!4977163 () Bool)

(assert (=> bs!633612 m!4977163))

(declare-fun m!4977169 () Bool)

(assert (=> bs!633612 m!4977169))

(declare-fun m!4977173 () Bool)

(assert (=> bs!633612 m!4977173))

(declare-fun m!4977177 () Bool)

(assert (=> bs!633612 m!4977177))

(assert (=> b!4359307 d!1289512))

(declare-fun d!1289516 () Bool)

(declare-fun e!2713390 () Bool)

(assert (=> d!1289516 e!2713390))

(declare-fun res!1792456 () Bool)

(assert (=> d!1289516 (=> (not res!1792456) (not e!2713390))))

(declare-fun lt!1572425 () ListMap!2229)

(assert (=> d!1289516 (= res!1792456 (contains!11183 lt!1572425 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572426 () List!49085)

(assert (=> d!1289516 (= lt!1572425 (ListMap!2230 lt!1572426))))

(declare-fun lt!1572428 () Unit!72045)

(declare-fun lt!1572427 () Unit!72045)

(assert (=> d!1289516 (= lt!1572428 lt!1572427)))

(assert (=> d!1289516 (= (getValueByKey!467 lt!1572426 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (Some!10480 (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289516 (= lt!1572427 (lemmaContainsTupThenGetReturnValue!241 lt!1572426 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289516 (= lt!1572426 (insertNoDuplicatedKeys!108 (toList!2986 lt!1571643) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289516 (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572425)))

(declare-fun b!4360049 () Bool)

(declare-fun res!1792457 () Bool)

(assert (=> b!4360049 (=> (not res!1792457) (not e!2713390))))

(assert (=> b!4360049 (= res!1792457 (= (getValueByKey!467 (toList!2986 lt!1572425) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (Some!10480 (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360050 () Bool)

(assert (=> b!4360050 (= e!2713390 (contains!11188 (toList!2986 lt!1572425) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (= (and d!1289516 res!1792456) b!4360049))

(assert (= (and b!4360049 res!1792457) b!4360050))

(declare-fun m!4977179 () Bool)

(assert (=> d!1289516 m!4977179))

(declare-fun m!4977181 () Bool)

(assert (=> d!1289516 m!4977181))

(declare-fun m!4977183 () Bool)

(assert (=> d!1289516 m!4977183))

(declare-fun m!4977185 () Bool)

(assert (=> d!1289516 m!4977185))

(declare-fun m!4977187 () Bool)

(assert (=> b!4360049 m!4977187))

(declare-fun m!4977189 () Bool)

(assert (=> b!4360050 m!4977189))

(assert (=> b!4359307 d!1289516))

(declare-fun d!1289520 () Bool)

(declare-fun res!1792460 () Bool)

(declare-fun e!2713393 () Bool)

(assert (=> d!1289520 (=> res!1792460 e!2713393)))

(assert (=> d!1289520 (= res!1792460 ((_ is Nil!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289520 (= (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141157) e!2713393)))

(declare-fun b!4360053 () Bool)

(declare-fun e!2713394 () Bool)

(assert (=> b!4360053 (= e!2713393 e!2713394)))

(declare-fun res!1792461 () Bool)

(assert (=> b!4360053 (=> (not res!1792461) (not e!2713394))))

(assert (=> b!4360053 (= res!1792461 (dynLambda!20645 lambda!141157 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360054 () Bool)

(assert (=> b!4360054 (= e!2713394 (forall!9142 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lambda!141157))))

(assert (= (and d!1289520 (not res!1792460)) b!4360053))

(assert (= (and b!4360053 res!1792461) b!4360054))

(declare-fun b_lambda!131597 () Bool)

(assert (=> (not b_lambda!131597) (not b!4360053)))

(declare-fun m!4977193 () Bool)

(assert (=> b!4360053 m!4977193))

(declare-fun m!4977195 () Bool)

(assert (=> b!4360054 m!4977195))

(assert (=> b!4359307 d!1289520))

(declare-fun d!1289524 () Bool)

(declare-fun res!1792464 () Bool)

(declare-fun e!2713397 () Bool)

(assert (=> d!1289524 (=> res!1792464 e!2713397)))

(assert (=> d!1289524 (= res!1792464 ((_ is Nil!48961) (toList!2986 lt!1571935)))))

(assert (=> d!1289524 (= (forall!9142 (toList!2986 lt!1571935) lambda!141157) e!2713397)))

(declare-fun b!4360057 () Bool)

(declare-fun e!2713399 () Bool)

(assert (=> b!4360057 (= e!2713397 e!2713399)))

(declare-fun res!1792466 () Bool)

(assert (=> b!4360057 (=> (not res!1792466) (not e!2713399))))

(assert (=> b!4360057 (= res!1792466 (dynLambda!20645 lambda!141157 (h!54518 (toList!2986 lt!1571935))))))

(declare-fun b!4360059 () Bool)

(assert (=> b!4360059 (= e!2713399 (forall!9142 (t!356005 (toList!2986 lt!1571935)) lambda!141157))))

(assert (= (and d!1289524 (not res!1792464)) b!4360057))

(assert (= (and b!4360057 res!1792466) b!4360059))

(declare-fun b_lambda!131599 () Bool)

(assert (=> (not b_lambda!131599) (not b!4360057)))

(declare-fun m!4977201 () Bool)

(assert (=> b!4360057 m!4977201))

(declare-fun m!4977203 () Bool)

(assert (=> b!4360059 m!4977203))

(assert (=> b!4359307 d!1289524))

(declare-fun bs!633613 () Bool)

(declare-fun b!4360068 () Bool)

(assert (= bs!633613 (and b!4360068 d!1289490)))

(declare-fun lambda!141263 () Int)

(assert (=> bs!633613 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572401) (= lambda!141263 lambda!141257))))

(declare-fun bs!633614 () Bool)

(assert (= bs!633614 (and b!4360068 d!1289512)))

(assert (=> bs!633614 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141263 lambda!141262))))

(declare-fun bs!633615 () Bool)

(assert (= bs!633615 (and b!4360068 b!4359307)))

(assert (=> bs!633615 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141263 lambda!141156))))

(declare-fun bs!633616 () Bool)

(assert (= bs!633616 (and b!4360068 b!4359815)))

(assert (=> bs!633616 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141263 lambda!141212))))

(declare-fun bs!633617 () Bool)

(assert (= bs!633617 (and b!4360068 b!4359876)))

(assert (=> bs!633617 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141263 lambda!141228))))

(declare-fun bs!633618 () Bool)

(assert (= bs!633618 (and b!4360068 b!4359929)))

(assert (=> bs!633618 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572326) (= lambda!141263 lambda!141244))))

(declare-fun bs!633619 () Bool)

(assert (= bs!633619 (and b!4360068 d!1289236)))

(assert (=> bs!633619 (not (= lambda!141263 lambda!141177))))

(declare-fun bs!633620 () Bool)

(assert (= bs!633620 (and b!4360068 d!1289224)))

(assert (=> bs!633620 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572027) (= lambda!141263 lambda!141170))))

(declare-fun bs!633621 () Bool)

(assert (= bs!633621 (and b!4360068 d!1289374)))

(assert (=> bs!633621 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572234) (= lambda!141263 lambda!141217))))

(declare-fun bs!633622 () Bool)

(assert (= bs!633622 (and b!4360068 b!4359986)))

(assert (=> bs!633622 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572396) (= lambda!141263 lambda!141256))))

(declare-fun bs!633623 () Bool)

(assert (= bs!633623 (and b!4360068 d!1289146)))

(assert (=> bs!633623 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571927) (= lambda!141263 lambda!141158))))

(declare-fun bs!633624 () Bool)

(assert (= bs!633624 (and b!4360068 d!1289440)))

(assert (=> bs!633624 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572331) (= lambda!141263 lambda!141246))))

(declare-fun bs!633625 () Bool)

(assert (= bs!633625 (and b!4360068 b!4359814)))

(assert (=> bs!633625 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141263 lambda!141213))))

(assert (=> bs!633622 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141263 lambda!141255))))

(declare-fun bs!633626 () Bool)

(assert (= bs!633626 (and b!4360068 b!4359308)))

(assert (=> bs!633626 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141263 lambda!141155))))

(declare-fun bs!633627 () Bool)

(assert (= bs!633627 (and b!4360068 b!4359877)))

(assert (=> bs!633627 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141263 lambda!141223))))

(declare-fun bs!633628 () Bool)

(assert (= bs!633628 (and b!4360068 b!4359397)))

(assert (=> bs!633628 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572022) (= lambda!141263 lambda!141169))))

(assert (=> bs!633615 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141263 lambda!141157))))

(assert (=> bs!633618 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141263 lambda!141241))))

(declare-fun bs!633629 () Bool)

(assert (= bs!633629 (and b!4360068 b!4359930)))

(assert (=> bs!633629 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141263 lambda!141239))))

(declare-fun bs!633630 () Bool)

(assert (= bs!633630 (and b!4360068 d!1289458)))

(assert (=> bs!633630 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141263 lambda!141248))))

(assert (=> bs!633628 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141263 lambda!141168))))

(declare-fun bs!633631 () Bool)

(assert (= bs!633631 (and b!4360068 b!4359987)))

(assert (=> bs!633631 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141263 lambda!141253))))

(assert (=> bs!633617 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572280) (= lambda!141263 lambda!141229))))

(declare-fun bs!633632 () Bool)

(assert (= bs!633632 (and b!4360068 b!4359398)))

(assert (=> bs!633632 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141263 lambda!141167))))

(declare-fun bs!633634 () Bool)

(assert (= bs!633634 (and b!4360068 d!1289410)))

(assert (=> bs!633634 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572285) (= lambda!141263 lambda!141231))))

(declare-fun bs!633635 () Bool)

(assert (= bs!633635 (and b!4360068 d!1289310)))

(assert (=> bs!633635 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141263 lambda!141200))))

(assert (=> bs!633625 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572229) (= lambda!141263 lambda!141214))))

(assert (=> b!4360068 true))

(declare-fun bs!633643 () Bool)

(declare-fun b!4360067 () Bool)

(assert (= bs!633643 (and b!4360067 d!1289512)))

(declare-fun lambda!141265 () Int)

(assert (=> bs!633643 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141265 lambda!141262))))

(declare-fun bs!633644 () Bool)

(assert (= bs!633644 (and b!4360067 b!4359307)))

(assert (=> bs!633644 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141265 lambda!141156))))

(declare-fun bs!633646 () Bool)

(assert (= bs!633646 (and b!4360067 b!4359815)))

(assert (=> bs!633646 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141265 lambda!141212))))

(declare-fun bs!633648 () Bool)

(assert (= bs!633648 (and b!4360067 d!1289490)))

(assert (=> bs!633648 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572401) (= lambda!141265 lambda!141257))))

(declare-fun bs!633651 () Bool)

(assert (= bs!633651 (and b!4360067 b!4360068)))

(assert (=> bs!633651 (= lambda!141265 lambda!141263)))

(declare-fun bs!633652 () Bool)

(assert (= bs!633652 (and b!4360067 b!4359876)))

(assert (=> bs!633652 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141265 lambda!141228))))

(declare-fun bs!633653 () Bool)

(assert (= bs!633653 (and b!4360067 b!4359929)))

(assert (=> bs!633653 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572326) (= lambda!141265 lambda!141244))))

(declare-fun bs!633654 () Bool)

(assert (= bs!633654 (and b!4360067 d!1289236)))

(assert (=> bs!633654 (not (= lambda!141265 lambda!141177))))

(declare-fun bs!633655 () Bool)

(assert (= bs!633655 (and b!4360067 d!1289224)))

(assert (=> bs!633655 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572027) (= lambda!141265 lambda!141170))))

(declare-fun bs!633656 () Bool)

(assert (= bs!633656 (and b!4360067 d!1289374)))

(assert (=> bs!633656 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572234) (= lambda!141265 lambda!141217))))

(declare-fun bs!633658 () Bool)

(assert (= bs!633658 (and b!4360067 b!4359986)))

(assert (=> bs!633658 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572396) (= lambda!141265 lambda!141256))))

(declare-fun bs!633659 () Bool)

(assert (= bs!633659 (and b!4360067 d!1289146)))

(assert (=> bs!633659 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571927) (= lambda!141265 lambda!141158))))

(declare-fun bs!633660 () Bool)

(assert (= bs!633660 (and b!4360067 d!1289440)))

(assert (=> bs!633660 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572331) (= lambda!141265 lambda!141246))))

(declare-fun bs!633661 () Bool)

(assert (= bs!633661 (and b!4360067 b!4359814)))

(assert (=> bs!633661 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141265 lambda!141213))))

(assert (=> bs!633658 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141265 lambda!141255))))

(declare-fun bs!633662 () Bool)

(assert (= bs!633662 (and b!4360067 b!4359308)))

(assert (=> bs!633662 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141265 lambda!141155))))

(declare-fun bs!633663 () Bool)

(assert (= bs!633663 (and b!4360067 b!4359877)))

(assert (=> bs!633663 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141265 lambda!141223))))

(declare-fun bs!633664 () Bool)

(assert (= bs!633664 (and b!4360067 b!4359397)))

(assert (=> bs!633664 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572022) (= lambda!141265 lambda!141169))))

(assert (=> bs!633644 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141265 lambda!141157))))

(assert (=> bs!633653 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141265 lambda!141241))))

(declare-fun bs!633665 () Bool)

(assert (= bs!633665 (and b!4360067 b!4359930)))

(assert (=> bs!633665 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141265 lambda!141239))))

(declare-fun bs!633666 () Bool)

(assert (= bs!633666 (and b!4360067 d!1289458)))

(assert (=> bs!633666 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141265 lambda!141248))))

(assert (=> bs!633664 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141265 lambda!141168))))

(declare-fun bs!633667 () Bool)

(assert (= bs!633667 (and b!4360067 b!4359987)))

(assert (=> bs!633667 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141265 lambda!141253))))

(assert (=> bs!633652 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572280) (= lambda!141265 lambda!141229))))

(declare-fun bs!633668 () Bool)

(assert (= bs!633668 (and b!4360067 b!4359398)))

(assert (=> bs!633668 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141265 lambda!141167))))

(declare-fun bs!633669 () Bool)

(assert (= bs!633669 (and b!4360067 d!1289410)))

(assert (=> bs!633669 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572285) (= lambda!141265 lambda!141231))))

(declare-fun bs!633670 () Bool)

(assert (= bs!633670 (and b!4360067 d!1289310)))

(assert (=> bs!633670 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141265 lambda!141200))))

(assert (=> bs!633661 (= (= (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572229) (= lambda!141265 lambda!141214))))

(assert (=> b!4360067 true))

(declare-fun lambda!141266 () Int)

(declare-fun lt!1572435 () ListMap!2229)

(assert (=> bs!633643 (= (= lt!1572435 lt!1571922) (= lambda!141266 lambda!141262))))

(assert (=> b!4360067 (= (= lt!1572435 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141266 lambda!141265))))

(assert (=> bs!633644 (= (= lt!1572435 lt!1571643) (= lambda!141266 lambda!141156))))

(assert (=> bs!633646 (= (= lt!1572435 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141266 lambda!141212))))

(assert (=> bs!633648 (= (= lt!1572435 lt!1572401) (= lambda!141266 lambda!141257))))

(assert (=> bs!633651 (= (= lt!1572435 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141266 lambda!141263))))

(assert (=> bs!633652 (= (= lt!1572435 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141266 lambda!141228))))

(assert (=> bs!633653 (= (= lt!1572435 lt!1572326) (= lambda!141266 lambda!141244))))

(assert (=> bs!633654 (not (= lambda!141266 lambda!141177))))

(assert (=> bs!633655 (= (= lt!1572435 lt!1572027) (= lambda!141266 lambda!141170))))

(assert (=> bs!633656 (= (= lt!1572435 lt!1572234) (= lambda!141266 lambda!141217))))

(assert (=> bs!633658 (= (= lt!1572435 lt!1572396) (= lambda!141266 lambda!141256))))

(assert (=> bs!633659 (= (= lt!1572435 lt!1571927) (= lambda!141266 lambda!141158))))

(assert (=> bs!633660 (= (= lt!1572435 lt!1572331) (= lambda!141266 lambda!141246))))

(assert (=> bs!633661 (= (= lt!1572435 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141266 lambda!141213))))

(assert (=> bs!633658 (= (= lt!1572435 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141266 lambda!141255))))

(assert (=> bs!633662 (= (= lt!1572435 lt!1571643) (= lambda!141266 lambda!141155))))

(assert (=> bs!633663 (= (= lt!1572435 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141266 lambda!141223))))

(assert (=> bs!633664 (= (= lt!1572435 lt!1572022) (= lambda!141266 lambda!141169))))

(assert (=> bs!633644 (= (= lt!1572435 lt!1571922) (= lambda!141266 lambda!141157))))

(assert (=> bs!633653 (= (= lt!1572435 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141266 lambda!141241))))

(assert (=> bs!633665 (= (= lt!1572435 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141266 lambda!141239))))

(assert (=> bs!633666 (= (= lt!1572435 lt!1571642) (= lambda!141266 lambda!141248))))

(assert (=> bs!633664 (= (= lt!1572435 lt!1571642) (= lambda!141266 lambda!141168))))

(assert (=> bs!633667 (= (= lt!1572435 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141266 lambda!141253))))

(assert (=> bs!633652 (= (= lt!1572435 lt!1572280) (= lambda!141266 lambda!141229))))

(assert (=> bs!633668 (= (= lt!1572435 lt!1571642) (= lambda!141266 lambda!141167))))

(assert (=> bs!633669 (= (= lt!1572435 lt!1572285) (= lambda!141266 lambda!141231))))

(assert (=> bs!633670 (= (= lt!1572435 lt!1571643) (= lambda!141266 lambda!141200))))

(assert (=> bs!633661 (= (= lt!1572435 lt!1572229) (= lambda!141266 lambda!141214))))

(assert (=> b!4360067 true))

(declare-fun bs!633679 () Bool)

(declare-fun d!1289530 () Bool)

(assert (= bs!633679 (and d!1289530 b!4360067)))

(declare-fun lt!1572440 () ListMap!2229)

(declare-fun lambda!141268 () Int)

(assert (=> bs!633679 (= (= lt!1572440 lt!1572435) (= lambda!141268 lambda!141266))))

(declare-fun bs!633681 () Bool)

(assert (= bs!633681 (and d!1289530 d!1289512)))

(assert (=> bs!633681 (= (= lt!1572440 lt!1571922) (= lambda!141268 lambda!141262))))

(assert (=> bs!633679 (= (= lt!1572440 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141268 lambda!141265))))

(declare-fun bs!633684 () Bool)

(assert (= bs!633684 (and d!1289530 b!4359307)))

(assert (=> bs!633684 (= (= lt!1572440 lt!1571643) (= lambda!141268 lambda!141156))))

(declare-fun bs!633686 () Bool)

(assert (= bs!633686 (and d!1289530 b!4359815)))

(assert (=> bs!633686 (= (= lt!1572440 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141268 lambda!141212))))

(declare-fun bs!633687 () Bool)

(assert (= bs!633687 (and d!1289530 d!1289490)))

(assert (=> bs!633687 (= (= lt!1572440 lt!1572401) (= lambda!141268 lambda!141257))))

(declare-fun bs!633689 () Bool)

(assert (= bs!633689 (and d!1289530 b!4360068)))

(assert (=> bs!633689 (= (= lt!1572440 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141268 lambda!141263))))

(declare-fun bs!633690 () Bool)

(assert (= bs!633690 (and d!1289530 b!4359876)))

(assert (=> bs!633690 (= (= lt!1572440 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141268 lambda!141228))))

(declare-fun bs!633691 () Bool)

(assert (= bs!633691 (and d!1289530 b!4359929)))

(assert (=> bs!633691 (= (= lt!1572440 lt!1572326) (= lambda!141268 lambda!141244))))

(declare-fun bs!633692 () Bool)

(assert (= bs!633692 (and d!1289530 d!1289236)))

(assert (=> bs!633692 (not (= lambda!141268 lambda!141177))))

(declare-fun bs!633693 () Bool)

(assert (= bs!633693 (and d!1289530 d!1289224)))

(assert (=> bs!633693 (= (= lt!1572440 lt!1572027) (= lambda!141268 lambda!141170))))

(declare-fun bs!633694 () Bool)

(assert (= bs!633694 (and d!1289530 d!1289374)))

(assert (=> bs!633694 (= (= lt!1572440 lt!1572234) (= lambda!141268 lambda!141217))))

(declare-fun bs!633695 () Bool)

(assert (= bs!633695 (and d!1289530 b!4359986)))

(assert (=> bs!633695 (= (= lt!1572440 lt!1572396) (= lambda!141268 lambda!141256))))

(declare-fun bs!633696 () Bool)

(assert (= bs!633696 (and d!1289530 d!1289146)))

(assert (=> bs!633696 (= (= lt!1572440 lt!1571927) (= lambda!141268 lambda!141158))))

(declare-fun bs!633698 () Bool)

(assert (= bs!633698 (and d!1289530 d!1289440)))

(assert (=> bs!633698 (= (= lt!1572440 lt!1572331) (= lambda!141268 lambda!141246))))

(declare-fun bs!633700 () Bool)

(assert (= bs!633700 (and d!1289530 b!4359814)))

(assert (=> bs!633700 (= (= lt!1572440 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141268 lambda!141213))))

(assert (=> bs!633695 (= (= lt!1572440 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141268 lambda!141255))))

(declare-fun bs!633702 () Bool)

(assert (= bs!633702 (and d!1289530 b!4359308)))

(assert (=> bs!633702 (= (= lt!1572440 lt!1571643) (= lambda!141268 lambda!141155))))

(declare-fun bs!633704 () Bool)

(assert (= bs!633704 (and d!1289530 b!4359877)))

(assert (=> bs!633704 (= (= lt!1572440 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141268 lambda!141223))))

(declare-fun bs!633706 () Bool)

(assert (= bs!633706 (and d!1289530 b!4359397)))

(assert (=> bs!633706 (= (= lt!1572440 lt!1572022) (= lambda!141268 lambda!141169))))

(assert (=> bs!633684 (= (= lt!1572440 lt!1571922) (= lambda!141268 lambda!141157))))

(assert (=> bs!633691 (= (= lt!1572440 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141268 lambda!141241))))

(declare-fun bs!633710 () Bool)

(assert (= bs!633710 (and d!1289530 b!4359930)))

(assert (=> bs!633710 (= (= lt!1572440 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141268 lambda!141239))))

(declare-fun bs!633711 () Bool)

(assert (= bs!633711 (and d!1289530 d!1289458)))

(assert (=> bs!633711 (= (= lt!1572440 lt!1571642) (= lambda!141268 lambda!141248))))

(assert (=> bs!633706 (= (= lt!1572440 lt!1571642) (= lambda!141268 lambda!141168))))

(declare-fun bs!633713 () Bool)

(assert (= bs!633713 (and d!1289530 b!4359987)))

(assert (=> bs!633713 (= (= lt!1572440 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141268 lambda!141253))))

(assert (=> bs!633690 (= (= lt!1572440 lt!1572280) (= lambda!141268 lambda!141229))))

(declare-fun bs!633716 () Bool)

(assert (= bs!633716 (and d!1289530 b!4359398)))

(assert (=> bs!633716 (= (= lt!1572440 lt!1571642) (= lambda!141268 lambda!141167))))

(declare-fun bs!633718 () Bool)

(assert (= bs!633718 (and d!1289530 d!1289410)))

(assert (=> bs!633718 (= (= lt!1572440 lt!1572285) (= lambda!141268 lambda!141231))))

(declare-fun bs!633720 () Bool)

(assert (= bs!633720 (and d!1289530 d!1289310)))

(assert (=> bs!633720 (= (= lt!1572440 lt!1571643) (= lambda!141268 lambda!141200))))

(assert (=> bs!633700 (= (= lt!1572440 lt!1572229) (= lambda!141268 lambda!141214))))

(assert (=> d!1289530 true))

(declare-fun e!2713403 () Bool)

(declare-fun b!4360065 () Bool)

(assert (=> b!4360065 (= e!2713403 (forall!9142 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141266))))

(declare-fun b!4360066 () Bool)

(declare-fun e!2713404 () Bool)

(assert (=> b!4360066 (= e!2713404 (invariantList!684 (toList!2986 lt!1572440)))))

(assert (=> d!1289530 e!2713404))

(declare-fun res!1792468 () Bool)

(assert (=> d!1289530 (=> (not res!1792468) (not e!2713404))))

(assert (=> d!1289530 (= res!1792468 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141268))))

(declare-fun e!2713405 () ListMap!2229)

(assert (=> d!1289530 (= lt!1572440 e!2713405)))

(declare-fun c!741369 () Bool)

(assert (=> d!1289530 (= c!741369 ((_ is Nil!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289530 (noDuplicateKeys!501 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289530 (= (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572440)))

(assert (=> b!4360067 (= e!2713405 lt!1572435)))

(declare-fun lt!1572448 () ListMap!2229)

(assert (=> b!4360067 (= lt!1572448 (+!660 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360067 (= lt!1572435 (addToMapMapFromBucket!197 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun lt!1572447 () Unit!72045)

(declare-fun call!303066 () Unit!72045)

(assert (=> b!4360067 (= lt!1572447 call!303066)))

(assert (=> b!4360067 (forall!9142 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141265)))

(declare-fun lt!1572439 () Unit!72045)

(assert (=> b!4360067 (= lt!1572439 lt!1572447)))

(assert (=> b!4360067 (forall!9142 (toList!2986 lt!1572448) lambda!141266)))

(declare-fun lt!1572436 () Unit!72045)

(declare-fun Unit!72221 () Unit!72045)

(assert (=> b!4360067 (= lt!1572436 Unit!72221)))

(assert (=> b!4360067 (forall!9142 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lambda!141266)))

(declare-fun lt!1572446 () Unit!72045)

(declare-fun Unit!72222 () Unit!72045)

(assert (=> b!4360067 (= lt!1572446 Unit!72222)))

(declare-fun lt!1572449 () Unit!72045)

(declare-fun Unit!72223 () Unit!72045)

(assert (=> b!4360067 (= lt!1572449 Unit!72223)))

(declare-fun lt!1572443 () Unit!72045)

(assert (=> b!4360067 (= lt!1572443 (forallContained!1783 (toList!2986 lt!1572448) lambda!141266 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360067 (contains!11183 lt!1572448 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572441 () Unit!72045)

(declare-fun Unit!72224 () Unit!72045)

(assert (=> b!4360067 (= lt!1572441 Unit!72224)))

(assert (=> b!4360067 (contains!11183 lt!1572435 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572434 () Unit!72045)

(declare-fun Unit!72225 () Unit!72045)

(assert (=> b!4360067 (= lt!1572434 Unit!72225)))

(declare-fun call!303065 () Bool)

(assert (=> b!4360067 call!303065))

(declare-fun lt!1572433 () Unit!72045)

(declare-fun Unit!72226 () Unit!72045)

(assert (=> b!4360067 (= lt!1572433 Unit!72226)))

(assert (=> b!4360067 (forall!9142 (toList!2986 lt!1572448) lambda!141266)))

(declare-fun lt!1572444 () Unit!72045)

(declare-fun Unit!72227 () Unit!72045)

(assert (=> b!4360067 (= lt!1572444 Unit!72227)))

(declare-fun lt!1572429 () Unit!72045)

(declare-fun Unit!72228 () Unit!72045)

(assert (=> b!4360067 (= lt!1572429 Unit!72228)))

(declare-fun lt!1572431 () Unit!72045)

(assert (=> b!4360067 (= lt!1572431 (addForallContainsKeyThenBeforeAdding!67 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572435 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (_2!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun call!303064 () Bool)

(assert (=> b!4360067 call!303064))

(declare-fun lt!1572432 () Unit!72045)

(assert (=> b!4360067 (= lt!1572432 lt!1572431)))

(assert (=> b!4360067 (forall!9142 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141266)))

(declare-fun lt!1572430 () Unit!72045)

(declare-fun Unit!72229 () Unit!72045)

(assert (=> b!4360067 (= lt!1572430 Unit!72229)))

(declare-fun res!1792470 () Bool)

(assert (=> b!4360067 (= res!1792470 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141266))))

(assert (=> b!4360067 (=> (not res!1792470) (not e!2713403))))

(assert (=> b!4360067 e!2713403))

(declare-fun lt!1572438 () Unit!72045)

(declare-fun Unit!72230 () Unit!72045)

(assert (=> b!4360067 (= lt!1572438 Unit!72230)))

(assert (=> b!4360068 (= e!2713405 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572442 () Unit!72045)

(assert (=> b!4360068 (= lt!1572442 call!303066)))

(assert (=> b!4360068 call!303064))

(declare-fun lt!1572437 () Unit!72045)

(assert (=> b!4360068 (= lt!1572437 lt!1572442)))

(assert (=> b!4360068 call!303065))

(declare-fun lt!1572445 () Unit!72045)

(declare-fun Unit!72232 () Unit!72045)

(assert (=> b!4360068 (= lt!1572445 Unit!72232)))

(declare-fun bm!303059 () Bool)

(assert (=> bm!303059 (= call!303064 (forall!9142 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (ite c!741369 lambda!141263 lambda!141266)))))

(declare-fun bm!303060 () Bool)

(assert (=> bm!303060 (= call!303065 (forall!9142 (ite c!741369 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (ite c!741369 lambda!141263 lambda!141266)))))

(declare-fun b!4360069 () Bool)

(declare-fun res!1792469 () Bool)

(assert (=> b!4360069 (=> (not res!1792469) (not e!2713404))))

(assert (=> b!4360069 (= res!1792469 (forall!9142 (toList!2986 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141268))))

(declare-fun bm!303061 () Bool)

(assert (=> bm!303061 (= call!303066 (lemmaContainsAllItsOwnKeys!67 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (= (and d!1289530 c!741369) b!4360068))

(assert (= (and d!1289530 (not c!741369)) b!4360067))

(assert (= (and b!4360067 res!1792470) b!4360065))

(assert (= (or b!4360068 b!4360067) bm!303061))

(assert (= (or b!4360068 b!4360067) bm!303060))

(assert (= (or b!4360068 b!4360067) bm!303059))

(assert (= (and d!1289530 res!1792468) b!4360069))

(assert (= (and b!4360069 res!1792469) b!4360066))

(declare-fun m!4977289 () Bool)

(assert (=> b!4360065 m!4977289))

(declare-fun m!4977291 () Bool)

(assert (=> bm!303059 m!4977291))

(declare-fun m!4977293 () Bool)

(assert (=> d!1289530 m!4977293))

(assert (=> d!1289530 m!4976665))

(assert (=> b!4360067 m!4975931))

(declare-fun m!4977295 () Bool)

(assert (=> b!4360067 m!4977295))

(assert (=> b!4360067 m!4977289))

(declare-fun m!4977297 () Bool)

(assert (=> b!4360067 m!4977297))

(assert (=> b!4360067 m!4977295))

(declare-fun m!4977299 () Bool)

(assert (=> b!4360067 m!4977299))

(declare-fun m!4977301 () Bool)

(assert (=> b!4360067 m!4977301))

(assert (=> b!4360067 m!4975931))

(declare-fun m!4977303 () Bool)

(assert (=> b!4360067 m!4977303))

(declare-fun m!4977305 () Bool)

(assert (=> b!4360067 m!4977305))

(declare-fun m!4977307 () Bool)

(assert (=> b!4360067 m!4977307))

(assert (=> b!4360067 m!4977307))

(declare-fun m!4977309 () Bool)

(assert (=> b!4360067 m!4977309))

(declare-fun m!4977311 () Bool)

(assert (=> b!4360067 m!4977311))

(declare-fun m!4977313 () Bool)

(assert (=> b!4360067 m!4977313))

(declare-fun m!4977315 () Bool)

(assert (=> b!4360069 m!4977315))

(assert (=> bm!303061 m!4975931))

(declare-fun m!4977317 () Bool)

(assert (=> bm!303061 m!4977317))

(declare-fun m!4977319 () Bool)

(assert (=> b!4360066 m!4977319))

(declare-fun m!4977321 () Bool)

(assert (=> bm!303060 m!4977321))

(assert (=> b!4359307 d!1289530))

(declare-fun d!1289552 () Bool)

(declare-fun res!1792491 () Bool)

(declare-fun e!2713431 () Bool)

(assert (=> d!1289552 (=> res!1792491 e!2713431)))

(assert (=> d!1289552 (= res!1792491 ((_ is Nil!48961) (toList!2986 lt!1571643)))))

(assert (=> d!1289552 (= (forall!9142 (toList!2986 lt!1571643) lambda!141157) e!2713431)))

(declare-fun b!4360104 () Bool)

(declare-fun e!2713432 () Bool)

(assert (=> b!4360104 (= e!2713431 e!2713432)))

(declare-fun res!1792492 () Bool)

(assert (=> b!4360104 (=> (not res!1792492) (not e!2713432))))

(assert (=> b!4360104 (= res!1792492 (dynLambda!20645 lambda!141157 (h!54518 (toList!2986 lt!1571643))))))

(declare-fun b!4360105 () Bool)

(assert (=> b!4360105 (= e!2713432 (forall!9142 (t!356005 (toList!2986 lt!1571643)) lambda!141157))))

(assert (= (and d!1289552 (not res!1792491)) b!4360104))

(assert (= (and b!4360104 res!1792492) b!4360105))

(declare-fun b_lambda!131611 () Bool)

(assert (=> (not b_lambda!131611) (not b!4360104)))

(declare-fun m!4977323 () Bool)

(assert (=> b!4360104 m!4977323))

(declare-fun m!4977325 () Bool)

(assert (=> b!4360105 m!4977325))

(assert (=> b!4359307 d!1289552))

(declare-fun d!1289554 () Bool)

(declare-fun res!1792493 () Bool)

(declare-fun e!2713433 () Bool)

(assert (=> d!1289554 (=> res!1792493 e!2713433)))

(assert (=> d!1289554 (= res!1792493 ((_ is Nil!48961) (toList!2986 lt!1571643)))))

(assert (=> d!1289554 (= (forall!9142 (toList!2986 lt!1571643) lambda!141156) e!2713433)))

(declare-fun b!4360106 () Bool)

(declare-fun e!2713434 () Bool)

(assert (=> b!4360106 (= e!2713433 e!2713434)))

(declare-fun res!1792494 () Bool)

(assert (=> b!4360106 (=> (not res!1792494) (not e!2713434))))

(assert (=> b!4360106 (= res!1792494 (dynLambda!20645 lambda!141156 (h!54518 (toList!2986 lt!1571643))))))

(declare-fun b!4360107 () Bool)

(assert (=> b!4360107 (= e!2713434 (forall!9142 (t!356005 (toList!2986 lt!1571643)) lambda!141156))))

(assert (= (and d!1289554 (not res!1792493)) b!4360106))

(assert (= (and b!4360106 res!1792494) b!4360107))

(declare-fun b_lambda!131613 () Bool)

(assert (=> (not b_lambda!131613) (not b!4360106)))

(declare-fun m!4977327 () Bool)

(assert (=> b!4360106 m!4977327))

(declare-fun m!4977329 () Bool)

(assert (=> b!4360107 m!4977329))

(assert (=> b!4359307 d!1289554))

(declare-fun b!4360108 () Bool)

(declare-fun e!2713440 () Bool)

(assert (=> b!4360108 (= e!2713440 (not (contains!11189 (keys!16546 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360109 () Bool)

(assert (=> b!4360109 false))

(declare-fun lt!1572495 () Unit!72045)

(declare-fun lt!1572494 () Unit!72045)

(assert (=> b!4360109 (= lt!1572495 lt!1572494)))

(assert (=> b!4360109 (containsKey!717 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4360109 (= lt!1572494 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun e!2713436 () Unit!72045)

(declare-fun Unit!72234 () Unit!72045)

(assert (=> b!4360109 (= e!2713436 Unit!72234)))

(declare-fun b!4360110 () Bool)

(declare-fun e!2713437 () List!49088)

(assert (=> b!4360110 (= e!2713437 (keys!16546 lt!1571935))))

(declare-fun b!4360111 () Bool)

(declare-fun e!2713435 () Bool)

(assert (=> b!4360111 (= e!2713435 (contains!11189 (keys!16546 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360112 () Bool)

(declare-fun e!2713439 () Unit!72045)

(declare-fun lt!1572496 () Unit!72045)

(assert (=> b!4360112 (= e!2713439 lt!1572496)))

(declare-fun lt!1572498 () Unit!72045)

(assert (=> b!4360112 (= lt!1572498 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360112 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572497 () Unit!72045)

(assert (=> b!4360112 (= lt!1572497 lt!1572498)))

(assert (=> b!4360112 (= lt!1572496 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303072 () Bool)

(assert (=> b!4360112 call!303072))

(declare-fun b!4360113 () Bool)

(declare-fun Unit!72235 () Unit!72045)

(assert (=> b!4360113 (= e!2713436 Unit!72235)))

(declare-fun b!4360114 () Bool)

(assert (=> b!4360114 (= e!2713437 (getKeysList!132 (toList!2986 lt!1571935)))))

(declare-fun d!1289556 () Bool)

(declare-fun e!2713438 () Bool)

(assert (=> d!1289556 e!2713438))

(declare-fun res!1792497 () Bool)

(assert (=> d!1289556 (=> res!1792497 e!2713438)))

(assert (=> d!1289556 (= res!1792497 e!2713440)))

(declare-fun res!1792495 () Bool)

(assert (=> d!1289556 (=> (not res!1792495) (not e!2713440))))

(declare-fun lt!1572493 () Bool)

(assert (=> d!1289556 (= res!1792495 (not lt!1572493))))

(declare-fun lt!1572500 () Bool)

(assert (=> d!1289556 (= lt!1572493 lt!1572500)))

(declare-fun lt!1572499 () Unit!72045)

(assert (=> d!1289556 (= lt!1572499 e!2713439)))

(declare-fun c!741377 () Bool)

(assert (=> d!1289556 (= c!741377 lt!1572500)))

(assert (=> d!1289556 (= lt!1572500 (containsKey!717 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289556 (= (contains!11183 lt!1571935 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572493)))

(declare-fun bm!303067 () Bool)

(assert (=> bm!303067 (= call!303072 (contains!11189 e!2713437 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun c!741378 () Bool)

(assert (=> bm!303067 (= c!741378 c!741377)))

(declare-fun b!4360115 () Bool)

(assert (=> b!4360115 (= e!2713439 e!2713436)))

(declare-fun c!741379 () Bool)

(assert (=> b!4360115 (= c!741379 call!303072)))

(declare-fun b!4360116 () Bool)

(assert (=> b!4360116 (= e!2713438 e!2713435)))

(declare-fun res!1792496 () Bool)

(assert (=> b!4360116 (=> (not res!1792496) (not e!2713435))))

(assert (=> b!4360116 (= res!1792496 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571935) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(assert (= (and d!1289556 c!741377) b!4360112))

(assert (= (and d!1289556 (not c!741377)) b!4360115))

(assert (= (and b!4360115 c!741379) b!4360109))

(assert (= (and b!4360115 (not c!741379)) b!4360113))

(assert (= (or b!4360112 b!4360115) bm!303067))

(assert (= (and bm!303067 c!741378) b!4360114))

(assert (= (and bm!303067 (not c!741378)) b!4360110))

(assert (= (and d!1289556 res!1792495) b!4360108))

(assert (= (and d!1289556 (not res!1792497)) b!4360116))

(assert (= (and b!4360116 res!1792496) b!4360111))

(declare-fun m!4977331 () Bool)

(assert (=> b!4360114 m!4977331))

(declare-fun m!4977333 () Bool)

(assert (=> b!4360109 m!4977333))

(declare-fun m!4977335 () Bool)

(assert (=> b!4360109 m!4977335))

(declare-fun m!4977337 () Bool)

(assert (=> b!4360110 m!4977337))

(assert (=> b!4360111 m!4977337))

(assert (=> b!4360111 m!4977337))

(declare-fun m!4977339 () Bool)

(assert (=> b!4360111 m!4977339))

(assert (=> d!1289556 m!4977333))

(assert (=> b!4360108 m!4977337))

(assert (=> b!4360108 m!4977337))

(assert (=> b!4360108 m!4977339))

(declare-fun m!4977341 () Bool)

(assert (=> b!4360112 m!4977341))

(declare-fun m!4977343 () Bool)

(assert (=> b!4360112 m!4977343))

(assert (=> b!4360112 m!4977343))

(declare-fun m!4977345 () Bool)

(assert (=> b!4360112 m!4977345))

(declare-fun m!4977347 () Bool)

(assert (=> b!4360112 m!4977347))

(declare-fun m!4977349 () Bool)

(assert (=> bm!303067 m!4977349))

(assert (=> b!4360116 m!4977343))

(assert (=> b!4360116 m!4977343))

(assert (=> b!4360116 m!4977345))

(assert (=> b!4359307 d!1289556))

(declare-fun d!1289558 () Bool)

(declare-fun res!1792498 () Bool)

(declare-fun e!2713441 () Bool)

(assert (=> d!1289558 (=> res!1792498 e!2713441)))

(assert (=> d!1289558 (= res!1792498 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289558 (= (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141157) e!2713441)))

(declare-fun b!4360117 () Bool)

(declare-fun e!2713442 () Bool)

(assert (=> b!4360117 (= e!2713441 e!2713442)))

(declare-fun res!1792499 () Bool)

(assert (=> b!4360117 (=> (not res!1792499) (not e!2713442))))

(assert (=> b!4360117 (= res!1792499 (dynLambda!20645 lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4360118 () Bool)

(assert (=> b!4360118 (= e!2713442 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141157))))

(assert (= (and d!1289558 (not res!1792498)) b!4360117))

(assert (= (and b!4360117 res!1792499) b!4360118))

(declare-fun b_lambda!131615 () Bool)

(assert (=> (not b_lambda!131615) (not b!4360117)))

(declare-fun m!4977351 () Bool)

(assert (=> b!4360117 m!4977351))

(assert (=> b!4360118 m!4975945))

(assert (=> b!4359307 d!1289558))

(declare-fun b!4360119 () Bool)

(declare-fun e!2713448 () Bool)

(assert (=> b!4360119 (= e!2713448 (not (contains!11189 (keys!16546 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360120 () Bool)

(assert (=> b!4360120 false))

(declare-fun lt!1572503 () Unit!72045)

(declare-fun lt!1572502 () Unit!72045)

(assert (=> b!4360120 (= lt!1572503 lt!1572502)))

(assert (=> b!4360120 (containsKey!717 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4360120 (= lt!1572502 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun e!2713444 () Unit!72045)

(declare-fun Unit!72238 () Unit!72045)

(assert (=> b!4360120 (= e!2713444 Unit!72238)))

(declare-fun b!4360121 () Bool)

(declare-fun e!2713445 () List!49088)

(assert (=> b!4360121 (= e!2713445 (keys!16546 lt!1571922))))

(declare-fun b!4360122 () Bool)

(declare-fun e!2713443 () Bool)

(assert (=> b!4360122 (= e!2713443 (contains!11189 (keys!16546 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360123 () Bool)

(declare-fun e!2713447 () Unit!72045)

(declare-fun lt!1572504 () Unit!72045)

(assert (=> b!4360123 (= e!2713447 lt!1572504)))

(declare-fun lt!1572506 () Unit!72045)

(assert (=> b!4360123 (= lt!1572506 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360123 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572505 () Unit!72045)

(assert (=> b!4360123 (= lt!1572505 lt!1572506)))

(assert (=> b!4360123 (= lt!1572504 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303073 () Bool)

(assert (=> b!4360123 call!303073))

(declare-fun b!4360124 () Bool)

(declare-fun Unit!72239 () Unit!72045)

(assert (=> b!4360124 (= e!2713444 Unit!72239)))

(declare-fun b!4360125 () Bool)

(assert (=> b!4360125 (= e!2713445 (getKeysList!132 (toList!2986 lt!1571922)))))

(declare-fun d!1289560 () Bool)

(declare-fun e!2713446 () Bool)

(assert (=> d!1289560 e!2713446))

(declare-fun res!1792502 () Bool)

(assert (=> d!1289560 (=> res!1792502 e!2713446)))

(assert (=> d!1289560 (= res!1792502 e!2713448)))

(declare-fun res!1792500 () Bool)

(assert (=> d!1289560 (=> (not res!1792500) (not e!2713448))))

(declare-fun lt!1572501 () Bool)

(assert (=> d!1289560 (= res!1792500 (not lt!1572501))))

(declare-fun lt!1572508 () Bool)

(assert (=> d!1289560 (= lt!1572501 lt!1572508)))

(declare-fun lt!1572507 () Unit!72045)

(assert (=> d!1289560 (= lt!1572507 e!2713447)))

(declare-fun c!741380 () Bool)

(assert (=> d!1289560 (= c!741380 lt!1572508)))

(assert (=> d!1289560 (= lt!1572508 (containsKey!717 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289560 (= (contains!11183 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572501)))

(declare-fun bm!303068 () Bool)

(assert (=> bm!303068 (= call!303073 (contains!11189 e!2713445 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun c!741381 () Bool)

(assert (=> bm!303068 (= c!741381 c!741380)))

(declare-fun b!4360126 () Bool)

(assert (=> b!4360126 (= e!2713447 e!2713444)))

(declare-fun c!741382 () Bool)

(assert (=> b!4360126 (= c!741382 call!303073)))

(declare-fun b!4360127 () Bool)

(assert (=> b!4360127 (= e!2713446 e!2713443)))

(declare-fun res!1792501 () Bool)

(assert (=> b!4360127 (=> (not res!1792501) (not e!2713443))))

(assert (=> b!4360127 (= res!1792501 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571922) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(assert (= (and d!1289560 c!741380) b!4360123))

(assert (= (and d!1289560 (not c!741380)) b!4360126))

(assert (= (and b!4360126 c!741382) b!4360120))

(assert (= (and b!4360126 (not c!741382)) b!4360124))

(assert (= (or b!4360123 b!4360126) bm!303068))

(assert (= (and bm!303068 c!741381) b!4360125))

(assert (= (and bm!303068 (not c!741381)) b!4360121))

(assert (= (and d!1289560 res!1792500) b!4360119))

(assert (= (and d!1289560 (not res!1792502)) b!4360127))

(assert (= (and b!4360127 res!1792501) b!4360122))

(declare-fun m!4977359 () Bool)

(assert (=> b!4360125 m!4977359))

(declare-fun m!4977361 () Bool)

(assert (=> b!4360120 m!4977361))

(declare-fun m!4977365 () Bool)

(assert (=> b!4360120 m!4977365))

(declare-fun m!4977367 () Bool)

(assert (=> b!4360121 m!4977367))

(assert (=> b!4360122 m!4977367))

(assert (=> b!4360122 m!4977367))

(declare-fun m!4977371 () Bool)

(assert (=> b!4360122 m!4977371))

(assert (=> d!1289560 m!4977361))

(assert (=> b!4360119 m!4977367))

(assert (=> b!4360119 m!4977367))

(assert (=> b!4360119 m!4977371))

(declare-fun m!4977377 () Bool)

(assert (=> b!4360123 m!4977377))

(declare-fun m!4977379 () Bool)

(assert (=> b!4360123 m!4977379))

(assert (=> b!4360123 m!4977379))

(declare-fun m!4977383 () Bool)

(assert (=> b!4360123 m!4977383))

(declare-fun m!4977387 () Bool)

(assert (=> b!4360123 m!4977387))

(declare-fun m!4977391 () Bool)

(assert (=> bm!303068 m!4977391))

(assert (=> b!4360127 m!4977379))

(assert (=> b!4360127 m!4977379))

(assert (=> b!4360127 m!4977383))

(assert (=> b!4359307 d!1289560))

(declare-fun d!1289562 () Bool)

(assert (=> d!1289562 (dynLambda!20645 lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun lt!1572532 () Unit!72045)

(declare-fun choose!26996 (List!49085 Int tuple2!48374) Unit!72045)

(assert (=> d!1289562 (= lt!1572532 (choose!26996 (toList!2986 lt!1571935) lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun e!2713456 () Bool)

(assert (=> d!1289562 e!2713456))

(declare-fun res!1792510 () Bool)

(assert (=> d!1289562 (=> (not res!1792510) (not e!2713456))))

(assert (=> d!1289562 (= res!1792510 (forall!9142 (toList!2986 lt!1571935) lambda!141157))))

(assert (=> d!1289562 (= (forallContained!1783 (toList!2986 lt!1571935) lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572532)))

(declare-fun b!4360137 () Bool)

(assert (=> b!4360137 (= e!2713456 (contains!11188 (toList!2986 lt!1571935) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (= (and d!1289562 res!1792510) b!4360137))

(declare-fun b_lambda!131619 () Bool)

(assert (=> (not b_lambda!131619) (not d!1289562)))

(assert (=> d!1289562 m!4977351))

(declare-fun m!4977407 () Bool)

(assert (=> d!1289562 m!4977407))

(assert (=> d!1289562 m!4975943))

(declare-fun m!4977409 () Bool)

(assert (=> b!4360137 m!4977409))

(assert (=> b!4359307 d!1289562))

(declare-fun b!4360138 () Bool)

(declare-fun e!2713457 () Option!10481)

(assert (=> b!4360138 (= e!2713457 (Some!10480 (_2!27481 (h!54518 (toList!2986 lt!1571962)))))))

(declare-fun d!1289568 () Bool)

(declare-fun c!741384 () Bool)

(assert (=> d!1289568 (= c!741384 (and ((_ is Cons!48961) (toList!2986 lt!1571962)) (= (_1!27481 (h!54518 (toList!2986 lt!1571962))) (_1!27481 lt!1571638))))))

(assert (=> d!1289568 (= (getValueByKey!467 (toList!2986 lt!1571962) (_1!27481 lt!1571638)) e!2713457)))

(declare-fun b!4360141 () Bool)

(declare-fun e!2713458 () Option!10481)

(assert (=> b!4360141 (= e!2713458 None!10480)))

(declare-fun b!4360139 () Bool)

(assert (=> b!4360139 (= e!2713457 e!2713458)))

(declare-fun c!741385 () Bool)

(assert (=> b!4360139 (= c!741385 (and ((_ is Cons!48961) (toList!2986 lt!1571962)) (not (= (_1!27481 (h!54518 (toList!2986 lt!1571962))) (_1!27481 lt!1571638)))))))

(declare-fun b!4360140 () Bool)

(assert (=> b!4360140 (= e!2713458 (getValueByKey!467 (t!356005 (toList!2986 lt!1571962)) (_1!27481 lt!1571638)))))

(assert (= (and d!1289568 c!741384) b!4360138))

(assert (= (and d!1289568 (not c!741384)) b!4360139))

(assert (= (and b!4360139 c!741385) b!4360140))

(assert (= (and b!4360139 (not c!741385)) b!4360141))

(declare-fun m!4977411 () Bool)

(assert (=> b!4360140 m!4977411))

(assert (=> b!4359351 d!1289568))

(declare-fun bs!633760 () Bool)

(declare-fun b!4360148 () Bool)

(assert (= bs!633760 (and b!4360148 b!4359591)))

(declare-fun lambda!141274 () Int)

(assert (=> bs!633760 (= (= (t!356005 (toList!2986 lt!1571644)) (toList!2986 lt!1571629)) (= lambda!141274 lambda!141196))))

(declare-fun bs!633761 () Bool)

(assert (= bs!633761 (and b!4360148 b!4359553)))

(assert (=> bs!633761 (= (= (t!356005 (toList!2986 lt!1571644)) (toList!2986 lt!1571642)) (= lambda!141274 lambda!141184))))

(declare-fun bs!633763 () Bool)

(assert (= bs!633763 (and b!4360148 b!4359912)))

(assert (=> bs!633763 (= (= (t!356005 (toList!2986 lt!1571644)) (toList!2986 lt!1571642)) (= lambda!141274 lambda!141237))))

(declare-fun bs!633765 () Bool)

(assert (= bs!633765 (and b!4360148 b!4359910)))

(assert (=> bs!633765 (= (= (t!356005 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571642))) (= lambda!141274 lambda!141235))))

(declare-fun bs!633767 () Bool)

(assert (= bs!633767 (and b!4360148 b!4359680)))

(assert (=> bs!633767 (= (= (t!356005 (toList!2986 lt!1571644)) (toList!2986 lt!1571629)) (= lambda!141274 lambda!141201))))

(declare-fun bs!633769 () Bool)

(assert (= bs!633769 (and b!4360148 b!4359589)))

(assert (=> bs!633769 (= (= (t!356005 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571629))) (= lambda!141274 lambda!141194))))

(declare-fun bs!633770 () Bool)

(assert (= bs!633770 (and b!4360148 b!4359432)))

(assert (=> bs!633770 (= (= (t!356005 (toList!2986 lt!1571644)) (toList!2986 lt!1571644)) (= lambda!141274 lambda!141182))))

(declare-fun bs!633772 () Bool)

(assert (= bs!633772 (and b!4360148 b!4359908)))

(assert (=> bs!633772 (= (= (t!356005 (toList!2986 lt!1571644)) (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642)))) (= lambda!141274 lambda!141236))))

(declare-fun bs!633774 () Bool)

(assert (= bs!633774 (and b!4360148 b!4359587)))

(assert (=> bs!633774 (= (= (t!356005 (toList!2986 lt!1571644)) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141274 lambda!141195))))

(assert (=> b!4360148 true))

(declare-fun bs!633779 () Bool)

(declare-fun b!4360146 () Bool)

(assert (= bs!633779 (and b!4360146 b!4359591)))

(declare-fun lambda!141275 () Int)

(assert (=> bs!633779 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (toList!2986 lt!1571629)) (= lambda!141275 lambda!141196))))

(declare-fun bs!633780 () Bool)

(assert (= bs!633780 (and b!4360146 b!4359553)))

(assert (=> bs!633780 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (toList!2986 lt!1571642)) (= lambda!141275 lambda!141184))))

(declare-fun bs!633781 () Bool)

(assert (= bs!633781 (and b!4360146 b!4360148)))

(assert (=> bs!633781 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (t!356005 (toList!2986 lt!1571644))) (= lambda!141275 lambda!141274))))

(declare-fun bs!633782 () Bool)

(assert (= bs!633782 (and b!4360146 b!4359912)))

(assert (=> bs!633782 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (toList!2986 lt!1571642)) (= lambda!141275 lambda!141237))))

(declare-fun bs!633783 () Bool)

(assert (= bs!633783 (and b!4360146 b!4359910)))

(assert (=> bs!633783 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (t!356005 (toList!2986 lt!1571642))) (= lambda!141275 lambda!141235))))

(declare-fun bs!633784 () Bool)

(assert (= bs!633784 (and b!4360146 b!4359680)))

(assert (=> bs!633784 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (toList!2986 lt!1571629)) (= lambda!141275 lambda!141201))))

(declare-fun bs!633785 () Bool)

(assert (= bs!633785 (and b!4360146 b!4359589)))

(assert (=> bs!633785 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (t!356005 (toList!2986 lt!1571629))) (= lambda!141275 lambda!141194))))

(declare-fun bs!633786 () Bool)

(assert (= bs!633786 (and b!4360146 b!4359432)))

(assert (=> bs!633786 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (toList!2986 lt!1571644)) (= lambda!141275 lambda!141182))))

(declare-fun bs!633787 () Bool)

(assert (= bs!633787 (and b!4360146 b!4359908)))

(assert (=> bs!633787 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642)))) (= lambda!141275 lambda!141236))))

(declare-fun bs!633788 () Bool)

(assert (= bs!633788 (and b!4360146 b!4359587)))

(assert (=> bs!633788 (= (= (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644))) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141275 lambda!141195))))

(assert (=> b!4360146 true))

(declare-fun bs!633789 () Bool)

(declare-fun b!4360150 () Bool)

(assert (= bs!633789 (and b!4360150 b!4359591)))

(declare-fun lambda!141277 () Int)

(assert (=> bs!633789 (= (= (toList!2986 lt!1571644) (toList!2986 lt!1571629)) (= lambda!141277 lambda!141196))))

(declare-fun bs!633790 () Bool)

(assert (= bs!633790 (and b!4360150 b!4359553)))

(assert (=> bs!633790 (= (= (toList!2986 lt!1571644) (toList!2986 lt!1571642)) (= lambda!141277 lambda!141184))))

(declare-fun bs!633791 () Bool)

(assert (= bs!633791 (and b!4360150 b!4360148)))

(assert (=> bs!633791 (= (= (toList!2986 lt!1571644) (t!356005 (toList!2986 lt!1571644))) (= lambda!141277 lambda!141274))))

(declare-fun bs!633792 () Bool)

(assert (= bs!633792 (and b!4360150 b!4359912)))

(assert (=> bs!633792 (= (= (toList!2986 lt!1571644) (toList!2986 lt!1571642)) (= lambda!141277 lambda!141237))))

(declare-fun bs!633793 () Bool)

(assert (= bs!633793 (and b!4360150 b!4359680)))

(assert (=> bs!633793 (= (= (toList!2986 lt!1571644) (toList!2986 lt!1571629)) (= lambda!141277 lambda!141201))))

(declare-fun bs!633794 () Bool)

(assert (= bs!633794 (and b!4360150 b!4359589)))

(assert (=> bs!633794 (= (= (toList!2986 lt!1571644) (t!356005 (toList!2986 lt!1571629))) (= lambda!141277 lambda!141194))))

(declare-fun bs!633795 () Bool)

(assert (= bs!633795 (and b!4360150 b!4359432)))

(assert (=> bs!633795 (= lambda!141277 lambda!141182)))

(declare-fun bs!633796 () Bool)

(assert (= bs!633796 (and b!4360150 b!4359908)))

(assert (=> bs!633796 (= (= (toList!2986 lt!1571644) (Cons!48961 (h!54518 (toList!2986 lt!1571642)) (t!356005 (toList!2986 lt!1571642)))) (= lambda!141277 lambda!141236))))

(declare-fun bs!633797 () Bool)

(assert (= bs!633797 (and b!4360150 b!4359587)))

(assert (=> bs!633797 (= (= (toList!2986 lt!1571644) (Cons!48961 (h!54518 (toList!2986 lt!1571629)) (t!356005 (toList!2986 lt!1571629)))) (= lambda!141277 lambda!141195))))

(declare-fun bs!633798 () Bool)

(assert (= bs!633798 (and b!4360150 b!4359910)))

(assert (=> bs!633798 (= (= (toList!2986 lt!1571644) (t!356005 (toList!2986 lt!1571642))) (= lambda!141277 lambda!141235))))

(declare-fun bs!633799 () Bool)

(assert (= bs!633799 (and b!4360150 b!4360146)))

(assert (=> bs!633799 (= (= (toList!2986 lt!1571644) (Cons!48961 (h!54518 (toList!2986 lt!1571644)) (t!356005 (toList!2986 lt!1571644)))) (= lambda!141277 lambda!141275))))

(assert (=> b!4360150 true))

(declare-fun bs!633800 () Bool)

(declare-fun b!4360142 () Bool)

(assert (= bs!633800 (and b!4360142 b!4359583)))

(declare-fun lambda!141278 () Int)

(assert (=> bs!633800 (= lambda!141278 lambda!141197)))

(declare-fun bs!633801 () Bool)

(assert (= bs!633801 (and b!4360142 b!4359681)))

(assert (=> bs!633801 (= lambda!141278 lambda!141202)))

(declare-fun bs!633802 () Bool)

(assert (= bs!633802 (and b!4360142 b!4359433)))

(assert (=> bs!633802 (= lambda!141278 lambda!141183)))

(declare-fun bs!633803 () Bool)

(assert (= bs!633803 (and b!4360142 b!4359554)))

(assert (=> bs!633803 (= lambda!141278 lambda!141185)))

(declare-fun bs!633804 () Bool)

(assert (= bs!633804 (and b!4360142 b!4359904)))

(assert (=> bs!633804 (= lambda!141278 lambda!141238)))

(declare-fun lt!1572537 () List!49088)

(declare-fun e!2713462 () Bool)

(assert (=> b!4360142 (= e!2713462 (= (content!7736 lt!1572537) (content!7736 (map!10652 (toList!2986 lt!1571644) lambda!141278))))))

(declare-fun b!4360143 () Bool)

(declare-fun e!2713461 () Unit!72045)

(declare-fun Unit!72240 () Unit!72045)

(assert (=> b!4360143 (= e!2713461 Unit!72240)))

(declare-fun d!1289570 () Bool)

(assert (=> d!1289570 e!2713462))

(declare-fun res!1792513 () Bool)

(assert (=> d!1289570 (=> (not res!1792513) (not e!2713462))))

(assert (=> d!1289570 (= res!1792513 (noDuplicate!605 lt!1572537))))

(declare-fun e!2713459 () List!49088)

(assert (=> d!1289570 (= lt!1572537 e!2713459)))

(declare-fun c!741386 () Bool)

(assert (=> d!1289570 (= c!741386 ((_ is Cons!48961) (toList!2986 lt!1571644)))))

(assert (=> d!1289570 (invariantList!684 (toList!2986 lt!1571644))))

(assert (=> d!1289570 (= (getKeysList!132 (toList!2986 lt!1571644)) lt!1572537)))

(declare-fun b!4360144 () Bool)

(declare-fun e!2713460 () Unit!72045)

(declare-fun Unit!72241 () Unit!72045)

(assert (=> b!4360144 (= e!2713460 Unit!72241)))

(declare-fun b!4360145 () Bool)

(assert (=> b!4360145 false))

(declare-fun Unit!72242 () Unit!72045)

(assert (=> b!4360145 (= e!2713461 Unit!72242)))

(assert (=> b!4360146 (= e!2713459 (Cons!48964 (_1!27481 (h!54518 (toList!2986 lt!1571644))) (getKeysList!132 (t!356005 (toList!2986 lt!1571644)))))))

(declare-fun c!741387 () Bool)

(assert (=> b!4360146 (= c!741387 (containsKey!717 (t!356005 (toList!2986 lt!1571644)) (_1!27481 (h!54518 (toList!2986 lt!1571644)))))))

(declare-fun lt!1572539 () Unit!72045)

(assert (=> b!4360146 (= lt!1572539 e!2713461)))

(declare-fun c!741388 () Bool)

(assert (=> b!4360146 (= c!741388 (contains!11189 (getKeysList!132 (t!356005 (toList!2986 lt!1571644))) (_1!27481 (h!54518 (toList!2986 lt!1571644)))))))

(declare-fun lt!1572536 () Unit!72045)

(assert (=> b!4360146 (= lt!1572536 e!2713460)))

(declare-fun lt!1572534 () List!49088)

(assert (=> b!4360146 (= lt!1572534 (getKeysList!132 (t!356005 (toList!2986 lt!1571644))))))

(declare-fun lt!1572535 () Unit!72045)

(assert (=> b!4360146 (= lt!1572535 (lemmaForallContainsAddHeadPreserves!27 (t!356005 (toList!2986 lt!1571644)) lt!1572534 (h!54518 (toList!2986 lt!1571644))))))

(assert (=> b!4360146 (forall!9143 lt!1572534 lambda!141275)))

(declare-fun lt!1572538 () Unit!72045)

(assert (=> b!4360146 (= lt!1572538 lt!1572535)))

(declare-fun b!4360147 () Bool)

(declare-fun res!1792511 () Bool)

(assert (=> b!4360147 (=> (not res!1792511) (not e!2713462))))

(assert (=> b!4360147 (= res!1792511 (= (length!66 lt!1572537) (length!67 (toList!2986 lt!1571644))))))

(assert (=> b!4360148 false))

(declare-fun lt!1572533 () Unit!72045)

(assert (=> b!4360148 (= lt!1572533 (forallContained!1784 (getKeysList!132 (t!356005 (toList!2986 lt!1571644))) lambda!141274 (_1!27481 (h!54518 (toList!2986 lt!1571644)))))))

(declare-fun Unit!72243 () Unit!72045)

(assert (=> b!4360148 (= e!2713460 Unit!72243)))

(declare-fun b!4360149 () Bool)

(assert (=> b!4360149 (= e!2713459 Nil!48964)))

(declare-fun res!1792512 () Bool)

(assert (=> b!4360150 (=> (not res!1792512) (not e!2713462))))

(assert (=> b!4360150 (= res!1792512 (forall!9143 lt!1572537 lambda!141277))))

(assert (= (and d!1289570 c!741386) b!4360146))

(assert (= (and d!1289570 (not c!741386)) b!4360149))

(assert (= (and b!4360146 c!741387) b!4360145))

(assert (= (and b!4360146 (not c!741387)) b!4360143))

(assert (= (and b!4360146 c!741388) b!4360148))

(assert (= (and b!4360146 (not c!741388)) b!4360144))

(assert (= (and d!1289570 res!1792513) b!4360147))

(assert (= (and b!4360147 res!1792511) b!4360150))

(assert (= (and b!4360150 res!1792512) b!4360142))

(declare-fun m!4977413 () Bool)

(assert (=> b!4360150 m!4977413))

(declare-fun m!4977415 () Bool)

(assert (=> b!4360142 m!4977415))

(declare-fun m!4977417 () Bool)

(assert (=> b!4360142 m!4977417))

(assert (=> b!4360142 m!4977417))

(declare-fun m!4977419 () Bool)

(assert (=> b!4360142 m!4977419))

(declare-fun m!4977421 () Bool)

(assert (=> b!4360147 m!4977421))

(assert (=> b!4360147 m!4976195))

(declare-fun m!4977423 () Bool)

(assert (=> d!1289570 m!4977423))

(assert (=> d!1289570 m!4976751))

(declare-fun m!4977425 () Bool)

(assert (=> b!4360148 m!4977425))

(assert (=> b!4360148 m!4977425))

(declare-fun m!4977427 () Bool)

(assert (=> b!4360148 m!4977427))

(assert (=> b!4360146 m!4977425))

(declare-fun m!4977429 () Bool)

(assert (=> b!4360146 m!4977429))

(declare-fun m!4977431 () Bool)

(assert (=> b!4360146 m!4977431))

(assert (=> b!4360146 m!4977425))

(declare-fun m!4977433 () Bool)

(assert (=> b!4360146 m!4977433))

(declare-fun m!4977435 () Bool)

(assert (=> b!4360146 m!4977435))

(assert (=> b!4359406 d!1289570))

(declare-fun d!1289572 () Bool)

(assert (=> d!1289572 (= (invariantList!684 (toList!2986 lt!1572048)) (noDuplicatedKeys!121 (toList!2986 lt!1572048)))))

(declare-fun bs!633812 () Bool)

(assert (= bs!633812 d!1289572))

(declare-fun m!4977437 () Bool)

(assert (=> bs!633812 m!4977437))

(assert (=> d!1289232 d!1289572))

(declare-fun d!1289574 () Bool)

(declare-fun res!1792514 () Bool)

(declare-fun e!2713463 () Bool)

(assert (=> d!1289574 (=> res!1792514 e!2713463)))

(assert (=> d!1289574 (= res!1792514 ((_ is Nil!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289574 (= (forall!9140 (toList!2985 lm!1707) lambda!141174) e!2713463)))

(declare-fun b!4360151 () Bool)

(declare-fun e!2713464 () Bool)

(assert (=> b!4360151 (= e!2713463 e!2713464)))

(declare-fun res!1792515 () Bool)

(assert (=> b!4360151 (=> (not res!1792515) (not e!2713464))))

(assert (=> b!4360151 (= res!1792515 (dynLambda!20643 lambda!141174 (h!54519 (toList!2985 lm!1707))))))

(declare-fun b!4360152 () Bool)

(assert (=> b!4360152 (= e!2713464 (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141174))))

(assert (= (and d!1289574 (not res!1792514)) b!4360151))

(assert (= (and b!4360151 res!1792515) b!4360152))

(declare-fun b_lambda!131621 () Bool)

(assert (=> (not b_lambda!131621) (not b!4360151)))

(declare-fun m!4977439 () Bool)

(assert (=> b!4360151 m!4977439))

(declare-fun m!4977441 () Bool)

(assert (=> b!4360152 m!4977441))

(assert (=> d!1289232 d!1289574))

(declare-fun b!4360153 () Bool)

(declare-fun e!2713465 () Option!10481)

(assert (=> b!4360153 (= e!2713465 (Some!10480 (_2!27481 (h!54518 (toList!2986 lt!1572012)))))))

(declare-fun d!1289576 () Bool)

(declare-fun c!741389 () Bool)

(assert (=> d!1289576 (= c!741389 (and ((_ is Cons!48961) (toList!2986 lt!1572012)) (= (_1!27481 (h!54518 (toList!2986 lt!1572012))) (_1!27481 lt!1571638))))))

(assert (=> d!1289576 (= (getValueByKey!467 (toList!2986 lt!1572012) (_1!27481 lt!1571638)) e!2713465)))

(declare-fun b!4360156 () Bool)

(declare-fun e!2713466 () Option!10481)

(assert (=> b!4360156 (= e!2713466 None!10480)))

(declare-fun b!4360154 () Bool)

(assert (=> b!4360154 (= e!2713465 e!2713466)))

(declare-fun c!741390 () Bool)

(assert (=> b!4360154 (= c!741390 (and ((_ is Cons!48961) (toList!2986 lt!1572012)) (not (= (_1!27481 (h!54518 (toList!2986 lt!1572012))) (_1!27481 lt!1571638)))))))

(declare-fun b!4360155 () Bool)

(assert (=> b!4360155 (= e!2713466 (getValueByKey!467 (t!356005 (toList!2986 lt!1572012)) (_1!27481 lt!1571638)))))

(assert (= (and d!1289576 c!741389) b!4360153))

(assert (= (and d!1289576 (not c!741389)) b!4360154))

(assert (= (and b!4360154 c!741390) b!4360155))

(assert (= (and b!4360154 (not c!741390)) b!4360156))

(declare-fun m!4977443 () Bool)

(assert (=> b!4360155 m!4977443))

(assert (=> b!4359393 d!1289576))

(declare-fun d!1289578 () Bool)

(assert (=> d!1289578 (= (head!9068 (toList!2985 lm!1707)) (h!54519 (toList!2985 lm!1707)))))

(assert (=> d!1289234 d!1289578))

(declare-fun d!1289580 () Bool)

(declare-fun res!1792516 () Bool)

(declare-fun e!2713467 () Bool)

(assert (=> d!1289580 (=> res!1792516 e!2713467)))

(assert (=> d!1289580 (= res!1792516 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289580 (= (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141170) e!2713467)))

(declare-fun b!4360157 () Bool)

(declare-fun e!2713468 () Bool)

(assert (=> b!4360157 (= e!2713467 e!2713468)))

(declare-fun res!1792517 () Bool)

(assert (=> b!4360157 (=> (not res!1792517) (not e!2713468))))

(assert (=> b!4360157 (= res!1792517 (dynLambda!20645 lambda!141170 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4360158 () Bool)

(assert (=> b!4360158 (= e!2713468 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141170))))

(assert (= (and d!1289580 (not res!1792516)) b!4360157))

(assert (= (and b!4360157 res!1792517) b!4360158))

(declare-fun b_lambda!131623 () Bool)

(assert (=> (not b_lambda!131623) (not b!4360157)))

(declare-fun m!4977445 () Bool)

(assert (=> b!4360157 m!4977445))

(declare-fun m!4977447 () Bool)

(assert (=> b!4360158 m!4977447))

(assert (=> d!1289224 d!1289580))

(assert (=> d!1289224 d!1289368))

(declare-fun d!1289582 () Bool)

(assert (=> d!1289582 (= (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571642) key!3918)) (not (isEmpty!28214 (getValueByKey!467 (toList!2986 lt!1571642) key!3918))))))

(declare-fun bs!633824 () Bool)

(assert (= bs!633824 d!1289582))

(assert (=> bs!633824 m!4976017))

(declare-fun m!4977449 () Bool)

(assert (=> bs!633824 m!4977449))

(assert (=> b!4359379 d!1289582))

(declare-fun b!4360159 () Bool)

(declare-fun e!2713469 () Option!10481)

(assert (=> b!4360159 (= e!2713469 (Some!10480 (_2!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun d!1289584 () Bool)

(declare-fun c!741391 () Bool)

(assert (=> d!1289584 (= c!741391 (and ((_ is Cons!48961) (toList!2986 lt!1571642)) (= (_1!27481 (h!54518 (toList!2986 lt!1571642))) key!3918)))))

(assert (=> d!1289584 (= (getValueByKey!467 (toList!2986 lt!1571642) key!3918) e!2713469)))

(declare-fun b!4360162 () Bool)

(declare-fun e!2713470 () Option!10481)

(assert (=> b!4360162 (= e!2713470 None!10480)))

(declare-fun b!4360160 () Bool)

(assert (=> b!4360160 (= e!2713469 e!2713470)))

(declare-fun c!741392 () Bool)

(assert (=> b!4360160 (= c!741392 (and ((_ is Cons!48961) (toList!2986 lt!1571642)) (not (= (_1!27481 (h!54518 (toList!2986 lt!1571642))) key!3918))))))

(declare-fun b!4360161 () Bool)

(assert (=> b!4360161 (= e!2713470 (getValueByKey!467 (t!356005 (toList!2986 lt!1571642)) key!3918))))

(assert (= (and d!1289584 c!741391) b!4360159))

(assert (= (and d!1289584 (not c!741391)) b!4360160))

(assert (= (and b!4360160 c!741392) b!4360161))

(assert (= (and b!4360160 (not c!741392)) b!4360162))

(declare-fun m!4977451 () Bool)

(assert (=> b!4360161 m!4977451))

(assert (=> b!4359379 d!1289584))

(assert (=> b!4359305 d!1289552))

(declare-fun b!4360163 () Bool)

(declare-fun e!2713471 () Option!10480)

(assert (=> b!4360163 (= e!2713471 (Some!10479 (_2!27482 (h!54519 (toList!2985 lt!1571998)))))))

(declare-fun b!4360165 () Bool)

(declare-fun e!2713472 () Option!10480)

(assert (=> b!4360165 (= e!2713472 (getValueByKey!466 (t!356006 (toList!2985 lt!1571998)) (_1!27482 lt!1571639)))))

(declare-fun b!4360164 () Bool)

(assert (=> b!4360164 (= e!2713471 e!2713472)))

(declare-fun c!741394 () Bool)

(assert (=> b!4360164 (= c!741394 (and ((_ is Cons!48962) (toList!2985 lt!1571998)) (not (= (_1!27482 (h!54519 (toList!2985 lt!1571998))) (_1!27482 lt!1571639)))))))

(declare-fun b!4360166 () Bool)

(assert (=> b!4360166 (= e!2713472 None!10479)))

(declare-fun d!1289586 () Bool)

(declare-fun c!741393 () Bool)

(assert (=> d!1289586 (= c!741393 (and ((_ is Cons!48962) (toList!2985 lt!1571998)) (= (_1!27482 (h!54519 (toList!2985 lt!1571998))) (_1!27482 lt!1571639))))))

(assert (=> d!1289586 (= (getValueByKey!466 (toList!2985 lt!1571998) (_1!27482 lt!1571639)) e!2713471)))

(assert (= (and d!1289586 c!741393) b!4360163))

(assert (= (and d!1289586 (not c!741393)) b!4360164))

(assert (= (and b!4360164 c!741394) b!4360165))

(assert (= (and b!4360164 (not c!741394)) b!4360166))

(declare-fun m!4977453 () Bool)

(assert (=> b!4360165 m!4977453))

(assert (=> b!4359382 d!1289586))

(declare-fun d!1289588 () Bool)

(declare-fun lt!1572540 () Bool)

(assert (=> d!1289588 (= lt!1572540 (select (content!7733 (toList!2985 lt!1571671)) lt!1571639))))

(declare-fun e!2713474 () Bool)

(assert (=> d!1289588 (= lt!1572540 e!2713474)))

(declare-fun res!1792519 () Bool)

(assert (=> d!1289588 (=> (not res!1792519) (not e!2713474))))

(assert (=> d!1289588 (= res!1792519 ((_ is Cons!48962) (toList!2985 lt!1571671)))))

(assert (=> d!1289588 (= (contains!11185 (toList!2985 lt!1571671) lt!1571639) lt!1572540)))

(declare-fun b!4360167 () Bool)

(declare-fun e!2713473 () Bool)

(assert (=> b!4360167 (= e!2713474 e!2713473)))

(declare-fun res!1792518 () Bool)

(assert (=> b!4360167 (=> res!1792518 e!2713473)))

(assert (=> b!4360167 (= res!1792518 (= (h!54519 (toList!2985 lt!1571671)) lt!1571639))))

(declare-fun b!4360168 () Bool)

(assert (=> b!4360168 (= e!2713473 (contains!11185 (t!356006 (toList!2985 lt!1571671)) lt!1571639))))

(assert (= (and d!1289588 res!1792519) b!4360167))

(assert (= (and b!4360167 (not res!1792518)) b!4360168))

(declare-fun m!4977465 () Bool)

(assert (=> d!1289588 m!4977465))

(declare-fun m!4977467 () Bool)

(assert (=> d!1289588 m!4977467))

(declare-fun m!4977471 () Bool)

(assert (=> b!4360168 m!4977471))

(assert (=> b!4359126 d!1289588))

(declare-fun d!1289590 () Bool)

(assert (=> d!1289590 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571644) key!3918))))

(declare-fun lt!1572544 () Unit!72045)

(declare-fun choose!26997 (List!49085 K!10320) Unit!72045)

(assert (=> d!1289590 (= lt!1572544 (choose!26997 (toList!2986 lt!1571644) key!3918))))

(assert (=> d!1289590 (invariantList!684 (toList!2986 lt!1571644))))

(assert (=> d!1289590 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571644) key!3918) lt!1572544)))

(declare-fun bs!633833 () Bool)

(assert (= bs!633833 d!1289590))

(assert (=> bs!633833 m!4976165))

(assert (=> bs!633833 m!4976165))

(assert (=> bs!633833 m!4976167))

(declare-fun m!4977497 () Bool)

(assert (=> bs!633833 m!4977497))

(assert (=> bs!633833 m!4976751))

(assert (=> b!4359404 d!1289590))

(declare-fun d!1289594 () Bool)

(assert (=> d!1289594 (= (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571644) key!3918)) (not (isEmpty!28214 (getValueByKey!467 (toList!2986 lt!1571644) key!3918))))))

(declare-fun bs!633834 () Bool)

(assert (= bs!633834 d!1289594))

(assert (=> bs!633834 m!4976165))

(declare-fun m!4977507 () Bool)

(assert (=> bs!633834 m!4977507))

(assert (=> b!4359404 d!1289594))

(declare-fun b!4360171 () Bool)

(declare-fun e!2713476 () Option!10481)

(assert (=> b!4360171 (= e!2713476 (Some!10480 (_2!27481 (h!54518 (toList!2986 lt!1571644)))))))

(declare-fun d!1289596 () Bool)

(declare-fun c!741396 () Bool)

(assert (=> d!1289596 (= c!741396 (and ((_ is Cons!48961) (toList!2986 lt!1571644)) (= (_1!27481 (h!54518 (toList!2986 lt!1571644))) key!3918)))))

(assert (=> d!1289596 (= (getValueByKey!467 (toList!2986 lt!1571644) key!3918) e!2713476)))

(declare-fun b!4360174 () Bool)

(declare-fun e!2713477 () Option!10481)

(assert (=> b!4360174 (= e!2713477 None!10480)))

(declare-fun b!4360172 () Bool)

(assert (=> b!4360172 (= e!2713476 e!2713477)))

(declare-fun c!741397 () Bool)

(assert (=> b!4360172 (= c!741397 (and ((_ is Cons!48961) (toList!2986 lt!1571644)) (not (= (_1!27481 (h!54518 (toList!2986 lt!1571644))) key!3918))))))

(declare-fun b!4360173 () Bool)

(assert (=> b!4360173 (= e!2713477 (getValueByKey!467 (t!356005 (toList!2986 lt!1571644)) key!3918))))

(assert (= (and d!1289596 c!741396) b!4360171))

(assert (= (and d!1289596 (not c!741396)) b!4360172))

(assert (= (and b!4360172 c!741397) b!4360173))

(assert (= (and b!4360172 (not c!741397)) b!4360174))

(declare-fun m!4977509 () Bool)

(assert (=> b!4360173 m!4977509))

(assert (=> b!4359404 d!1289596))

(declare-fun d!1289600 () Bool)

(assert (=> d!1289600 (contains!11189 (getKeysList!132 (toList!2986 lt!1571644)) key!3918)))

(declare-fun lt!1572554 () Unit!72045)

(declare-fun choose!26998 (List!49085 K!10320) Unit!72045)

(assert (=> d!1289600 (= lt!1572554 (choose!26998 (toList!2986 lt!1571644) key!3918))))

(assert (=> d!1289600 (invariantList!684 (toList!2986 lt!1571644))))

(assert (=> d!1289600 (= (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571644) key!3918) lt!1572554)))

(declare-fun bs!633835 () Bool)

(assert (= bs!633835 d!1289600))

(assert (=> bs!633835 m!4976153))

(assert (=> bs!633835 m!4976153))

(declare-fun m!4977543 () Bool)

(assert (=> bs!633835 m!4977543))

(declare-fun m!4977545 () Bool)

(assert (=> bs!633835 m!4977545))

(assert (=> bs!633835 m!4976751))

(assert (=> b!4359404 d!1289600))

(declare-fun d!1289612 () Bool)

(declare-fun e!2713490 () Bool)

(assert (=> d!1289612 e!2713490))

(declare-fun res!1792527 () Bool)

(assert (=> d!1289612 (=> res!1792527 e!2713490)))

(declare-fun lt!1572558 () Bool)

(assert (=> d!1289612 (= res!1792527 (not lt!1572558))))

(declare-fun lt!1572556 () Bool)

(assert (=> d!1289612 (= lt!1572558 lt!1572556)))

(declare-fun lt!1572555 () Unit!72045)

(declare-fun e!2713491 () Unit!72045)

(assert (=> d!1289612 (= lt!1572555 e!2713491)))

(declare-fun c!741405 () Bool)

(assert (=> d!1289612 (= c!741405 lt!1572556)))

(assert (=> d!1289612 (= lt!1572556 (containsKey!716 (toList!2985 lt!1571998) (_1!27482 lt!1571639)))))

(assert (=> d!1289612 (= (contains!11184 lt!1571998 (_1!27482 lt!1571639)) lt!1572558)))

(declare-fun b!4360196 () Bool)

(declare-fun lt!1572557 () Unit!72045)

(assert (=> b!4360196 (= e!2713491 lt!1572557)))

(assert (=> b!4360196 (= lt!1572557 (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!2985 lt!1571998) (_1!27482 lt!1571639)))))

(assert (=> b!4360196 (isDefined!7773 (getValueByKey!466 (toList!2985 lt!1571998) (_1!27482 lt!1571639)))))

(declare-fun b!4360197 () Bool)

(declare-fun Unit!72244 () Unit!72045)

(assert (=> b!4360197 (= e!2713491 Unit!72244)))

(declare-fun b!4360198 () Bool)

(assert (=> b!4360198 (= e!2713490 (isDefined!7773 (getValueByKey!466 (toList!2985 lt!1571998) (_1!27482 lt!1571639))))))

(assert (= (and d!1289612 c!741405) b!4360196))

(assert (= (and d!1289612 (not c!741405)) b!4360197))

(assert (= (and d!1289612 (not res!1792527)) b!4360198))

(declare-fun m!4977547 () Bool)

(assert (=> d!1289612 m!4977547))

(declare-fun m!4977549 () Bool)

(assert (=> b!4360196 m!4977549))

(assert (=> b!4360196 m!4976055))

(assert (=> b!4360196 m!4976055))

(declare-fun m!4977551 () Bool)

(assert (=> b!4360196 m!4977551))

(assert (=> b!4360198 m!4976055))

(assert (=> b!4360198 m!4976055))

(assert (=> b!4360198 m!4977551))

(assert (=> d!1289212 d!1289612))

(declare-fun b!4360199 () Bool)

(declare-fun e!2713492 () Option!10480)

(assert (=> b!4360199 (= e!2713492 (Some!10479 (_2!27482 (h!54519 lt!1572000))))))

(declare-fun b!4360201 () Bool)

(declare-fun e!2713493 () Option!10480)

(assert (=> b!4360201 (= e!2713493 (getValueByKey!466 (t!356006 lt!1572000) (_1!27482 lt!1571639)))))

(declare-fun b!4360200 () Bool)

(assert (=> b!4360200 (= e!2713492 e!2713493)))

(declare-fun c!741407 () Bool)

(assert (=> b!4360200 (= c!741407 (and ((_ is Cons!48962) lt!1572000) (not (= (_1!27482 (h!54519 lt!1572000)) (_1!27482 lt!1571639)))))))

(declare-fun b!4360202 () Bool)

(assert (=> b!4360202 (= e!2713493 None!10479)))

(declare-fun d!1289614 () Bool)

(declare-fun c!741406 () Bool)

(assert (=> d!1289614 (= c!741406 (and ((_ is Cons!48962) lt!1572000) (= (_1!27482 (h!54519 lt!1572000)) (_1!27482 lt!1571639))))))

(assert (=> d!1289614 (= (getValueByKey!466 lt!1572000 (_1!27482 lt!1571639)) e!2713492)))

(assert (= (and d!1289614 c!741406) b!4360199))

(assert (= (and d!1289614 (not c!741406)) b!4360200))

(assert (= (and b!4360200 c!741407) b!4360201))

(assert (= (and b!4360200 (not c!741407)) b!4360202))

(declare-fun m!4977553 () Bool)

(assert (=> b!4360201 m!4977553))

(assert (=> d!1289212 d!1289614))

(declare-fun d!1289618 () Bool)

(assert (=> d!1289618 (= (getValueByKey!466 lt!1572000 (_1!27482 lt!1571639)) (Some!10479 (_2!27482 lt!1571639)))))

(declare-fun lt!1572559 () Unit!72045)

(assert (=> d!1289618 (= lt!1572559 (choose!26986 lt!1572000 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(declare-fun e!2713494 () Bool)

(assert (=> d!1289618 e!2713494))

(declare-fun res!1792528 () Bool)

(assert (=> d!1289618 (=> (not res!1792528) (not e!2713494))))

(assert (=> d!1289618 (= res!1792528 (isStrictlySorted!110 lt!1572000))))

(assert (=> d!1289618 (= (lemmaContainsTupThenGetReturnValue!240 lt!1572000 (_1!27482 lt!1571639) (_2!27482 lt!1571639)) lt!1572559)))

(declare-fun b!4360203 () Bool)

(declare-fun res!1792529 () Bool)

(assert (=> b!4360203 (=> (not res!1792529) (not e!2713494))))

(assert (=> b!4360203 (= res!1792529 (containsKey!716 lt!1572000 (_1!27482 lt!1571639)))))

(declare-fun b!4360204 () Bool)

(assert (=> b!4360204 (= e!2713494 (contains!11185 lt!1572000 (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639))))))

(assert (= (and d!1289618 res!1792528) b!4360203))

(assert (= (and b!4360203 res!1792529) b!4360204))

(assert (=> d!1289618 m!4976049))

(declare-fun m!4977555 () Bool)

(assert (=> d!1289618 m!4977555))

(declare-fun m!4977557 () Bool)

(assert (=> d!1289618 m!4977557))

(declare-fun m!4977559 () Bool)

(assert (=> b!4360203 m!4977559))

(declare-fun m!4977561 () Bool)

(assert (=> b!4360204 m!4977561))

(assert (=> d!1289212 d!1289618))

(declare-fun b!4360205 () Bool)

(declare-fun res!1792531 () Bool)

(declare-fun e!2713497 () Bool)

(assert (=> b!4360205 (=> (not res!1792531) (not e!2713497))))

(declare-fun lt!1572560 () List!49086)

(assert (=> b!4360205 (= res!1792531 (containsKey!716 lt!1572560 (_1!27482 lt!1571639)))))

(declare-fun b!4360206 () Bool)

(declare-fun e!2713498 () List!49086)

(declare-fun call!303080 () List!49086)

(assert (=> b!4360206 (= e!2713498 call!303080)))

(declare-fun bm!303075 () Bool)

(declare-fun call!303082 () List!49086)

(assert (=> bm!303075 (= call!303082 call!303080)))

(declare-fun c!741411 () Bool)

(declare-fun c!741410 () Bool)

(declare-fun b!4360207 () Bool)

(declare-fun e!2713495 () List!49086)

(assert (=> b!4360207 (= e!2713495 (ite c!741411 (t!356006 (toList!2985 lt!1571646)) (ite c!741410 (Cons!48962 (h!54519 (toList!2985 lt!1571646)) (t!356006 (toList!2985 lt!1571646))) Nil!48962)))))

(declare-fun b!4360208 () Bool)

(assert (=> b!4360208 (= e!2713495 (insertStrictlySorted!141 (t!356006 (toList!2985 lt!1571646)) (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))

(declare-fun b!4360209 () Bool)

(declare-fun e!2713499 () List!49086)

(declare-fun call!303081 () List!49086)

(assert (=> b!4360209 (= e!2713499 call!303081)))

(declare-fun bm!303076 () Bool)

(assert (=> bm!303076 (= call!303080 call!303081)))

(declare-fun d!1289620 () Bool)

(assert (=> d!1289620 e!2713497))

(declare-fun res!1792530 () Bool)

(assert (=> d!1289620 (=> (not res!1792530) (not e!2713497))))

(assert (=> d!1289620 (= res!1792530 (isStrictlySorted!110 lt!1572560))))

(assert (=> d!1289620 (= lt!1572560 e!2713499)))

(declare-fun c!741408 () Bool)

(assert (=> d!1289620 (= c!741408 (and ((_ is Cons!48962) (toList!2985 lt!1571646)) (bvslt (_1!27482 (h!54519 (toList!2985 lt!1571646))) (_1!27482 lt!1571639))))))

(assert (=> d!1289620 (isStrictlySorted!110 (toList!2985 lt!1571646))))

(assert (=> d!1289620 (= (insertStrictlySorted!141 (toList!2985 lt!1571646) (_1!27482 lt!1571639) (_2!27482 lt!1571639)) lt!1572560)))

(declare-fun b!4360210 () Bool)

(assert (=> b!4360210 (= e!2713497 (contains!11185 lt!1572560 (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639))))))

(declare-fun b!4360211 () Bool)

(assert (=> b!4360211 (= e!2713499 e!2713498)))

(assert (=> b!4360211 (= c!741411 (and ((_ is Cons!48962) (toList!2985 lt!1571646)) (= (_1!27482 (h!54519 (toList!2985 lt!1571646))) (_1!27482 lt!1571639))))))

(declare-fun b!4360212 () Bool)

(declare-fun e!2713496 () List!49086)

(assert (=> b!4360212 (= e!2713496 call!303082)))

(declare-fun bm!303077 () Bool)

(assert (=> bm!303077 (= call!303081 ($colon$colon!698 e!2713495 (ite c!741408 (h!54519 (toList!2985 lt!1571646)) (tuple2!48377 (_1!27482 lt!1571639) (_2!27482 lt!1571639)))))))

(declare-fun c!741409 () Bool)

(assert (=> bm!303077 (= c!741409 c!741408)))

(declare-fun b!4360213 () Bool)

(assert (=> b!4360213 (= c!741410 (and ((_ is Cons!48962) (toList!2985 lt!1571646)) (bvsgt (_1!27482 (h!54519 (toList!2985 lt!1571646))) (_1!27482 lt!1571639))))))

(assert (=> b!4360213 (= e!2713498 e!2713496)))

(declare-fun b!4360214 () Bool)

(assert (=> b!4360214 (= e!2713496 call!303082)))

(assert (= (and d!1289620 c!741408) b!4360209))

(assert (= (and d!1289620 (not c!741408)) b!4360211))

(assert (= (and b!4360211 c!741411) b!4360206))

(assert (= (and b!4360211 (not c!741411)) b!4360213))

(assert (= (and b!4360213 c!741410) b!4360214))

(assert (= (and b!4360213 (not c!741410)) b!4360212))

(assert (= (or b!4360214 b!4360212) bm!303075))

(assert (= (or b!4360206 bm!303075) bm!303076))

(assert (= (or b!4360209 bm!303076) bm!303077))

(assert (= (and bm!303077 c!741409) b!4360208))

(assert (= (and bm!303077 (not c!741409)) b!4360207))

(assert (= (and d!1289620 res!1792530) b!4360205))

(assert (= (and b!4360205 res!1792531) b!4360210))

(declare-fun m!4977563 () Bool)

(assert (=> b!4360208 m!4977563))

(declare-fun m!4977565 () Bool)

(assert (=> b!4360205 m!4977565))

(declare-fun m!4977567 () Bool)

(assert (=> d!1289620 m!4977567))

(declare-fun m!4977569 () Bool)

(assert (=> d!1289620 m!4977569))

(declare-fun m!4977571 () Bool)

(assert (=> bm!303077 m!4977571))

(declare-fun m!4977573 () Bool)

(assert (=> b!4360210 m!4977573))

(assert (=> d!1289212 d!1289620))

(declare-fun d!1289622 () Bool)

(assert (=> d!1289622 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571629) key!3918))))

(declare-fun lt!1572561 () Unit!72045)

(assert (=> d!1289622 (= lt!1572561 (choose!26997 (toList!2986 lt!1571629) key!3918))))

(assert (=> d!1289622 (invariantList!684 (toList!2986 lt!1571629))))

(assert (=> d!1289622 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571629) key!3918) lt!1572561)))

(declare-fun bs!633837 () Bool)

(assert (= bs!633837 d!1289622))

(assert (=> bs!633837 m!4976091))

(assert (=> bs!633837 m!4976091))

(assert (=> bs!633837 m!4976093))

(declare-fun m!4977575 () Bool)

(assert (=> bs!633837 m!4977575))

(assert (=> bs!633837 m!4976371))

(assert (=> b!4359388 d!1289622))

(assert (=> b!4359388 d!1289430))

(assert (=> b!4359388 d!1289434))

(declare-fun d!1289624 () Bool)

(assert (=> d!1289624 (contains!11189 (getKeysList!132 (toList!2986 lt!1571629)) key!3918)))

(declare-fun lt!1572562 () Unit!72045)

(assert (=> d!1289624 (= lt!1572562 (choose!26998 (toList!2986 lt!1571629) key!3918))))

(assert (=> d!1289624 (invariantList!684 (toList!2986 lt!1571629))))

(assert (=> d!1289624 (= (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571629) key!3918) lt!1572562)))

(declare-fun bs!633838 () Bool)

(assert (= bs!633838 d!1289624))

(assert (=> bs!633838 m!4976079))

(assert (=> bs!633838 m!4976079))

(declare-fun m!4977579 () Bool)

(assert (=> bs!633838 m!4977579))

(declare-fun m!4977581 () Bool)

(assert (=> bs!633838 m!4977581))

(assert (=> bs!633838 m!4976371))

(assert (=> b!4359388 d!1289624))

(declare-fun d!1289628 () Bool)

(declare-fun res!1792538 () Bool)

(declare-fun e!2713506 () Bool)

(assert (=> d!1289628 (=> res!1792538 e!2713506)))

(assert (=> d!1289628 (= res!1792538 (and ((_ is Cons!48961) (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))))) (= (_1!27481 (h!54518 (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707))))))) key!3918)))))

(assert (=> d!1289628 (= (containsKey!714 (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707))))) key!3918) e!2713506)))

(declare-fun b!4360221 () Bool)

(declare-fun e!2713507 () Bool)

(assert (=> b!4360221 (= e!2713506 e!2713507)))

(declare-fun res!1792539 () Bool)

(assert (=> b!4360221 (=> (not res!1792539) (not e!2713507))))

(assert (=> b!4360221 (= res!1792539 ((_ is Cons!48961) (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360222 () Bool)

(assert (=> b!4360222 (= e!2713507 (containsKey!714 (t!356005 (t!356005 (apply!11353 lm!1707 (_1!27482 (h!54519 (toList!2985 lm!1707)))))) key!3918))))

(assert (= (and d!1289628 (not res!1792538)) b!4360221))

(assert (= (and b!4360221 res!1792539) b!4360222))

(declare-fun m!4977583 () Bool)

(assert (=> b!4360222 m!4977583))

(assert (=> b!4359323 d!1289628))

(declare-fun d!1289630 () Bool)

(declare-fun res!1792540 () Bool)

(declare-fun e!2713508 () Bool)

(assert (=> d!1289630 (=> res!1792540 e!2713508)))

(assert (=> d!1289630 (= res!1792540 (and ((_ is Cons!48961) (toList!2986 lt!1571642)) (= (_1!27481 (h!54518 (toList!2986 lt!1571642))) key!3918)))))

(assert (=> d!1289630 (= (containsKey!717 (toList!2986 lt!1571642) key!3918) e!2713508)))

(declare-fun b!4360223 () Bool)

(declare-fun e!2713509 () Bool)

(assert (=> b!4360223 (= e!2713508 e!2713509)))

(declare-fun res!1792541 () Bool)

(assert (=> b!4360223 (=> (not res!1792541) (not e!2713509))))

(assert (=> b!4360223 (= res!1792541 ((_ is Cons!48961) (toList!2986 lt!1571642)))))

(declare-fun b!4360224 () Bool)

(assert (=> b!4360224 (= e!2713509 (containsKey!717 (t!356005 (toList!2986 lt!1571642)) key!3918))))

(assert (= (and d!1289630 (not res!1792540)) b!4360223))

(assert (= (and b!4360223 res!1792541) b!4360224))

(declare-fun m!4977585 () Bool)

(assert (=> b!4360224 m!4977585))

(assert (=> d!1289202 d!1289630))

(declare-fun d!1289632 () Bool)

(declare-fun lt!1572563 () Bool)

(assert (=> d!1289632 (= lt!1572563 (select (content!7736 (keys!16546 lt!1571644)) key!3918))))

(declare-fun e!2713511 () Bool)

(assert (=> d!1289632 (= lt!1572563 e!2713511)))

(declare-fun res!1792542 () Bool)

(assert (=> d!1289632 (=> (not res!1792542) (not e!2713511))))

(assert (=> d!1289632 (= res!1792542 ((_ is Cons!48964) (keys!16546 lt!1571644)))))

(assert (=> d!1289632 (= (contains!11189 (keys!16546 lt!1571644) key!3918) lt!1572563)))

(declare-fun b!4360225 () Bool)

(declare-fun e!2713510 () Bool)

(assert (=> b!4360225 (= e!2713511 e!2713510)))

(declare-fun res!1792543 () Bool)

(assert (=> b!4360225 (=> res!1792543 e!2713510)))

(assert (=> b!4360225 (= res!1792543 (= (h!54523 (keys!16546 lt!1571644)) key!3918))))

(declare-fun b!4360226 () Bool)

(assert (=> b!4360226 (= e!2713510 (contains!11189 (t!356008 (keys!16546 lt!1571644)) key!3918))))

(assert (= (and d!1289632 res!1792542) b!4360225))

(assert (= (and b!4360225 (not res!1792543)) b!4360226))

(assert (=> d!1289632 m!4976159))

(declare-fun m!4977589 () Bool)

(assert (=> d!1289632 m!4977589))

(declare-fun m!4977591 () Bool)

(assert (=> d!1289632 m!4977591))

(declare-fun m!4977593 () Bool)

(assert (=> b!4360226 m!4977593))

(assert (=> b!4359400 d!1289632))

(assert (=> b!4359400 d!1289248))

(declare-fun d!1289636 () Bool)

(declare-fun res!1792544 () Bool)

(declare-fun e!2713514 () Bool)

(assert (=> d!1289636 (=> res!1792544 e!2713514)))

(assert (=> d!1289636 (= res!1792544 ((_ is Nil!48961) (toList!2986 lt!1571642)))))

(assert (=> d!1289636 (= (forall!9142 (toList!2986 lt!1571642) lambda!141170) e!2713514)))

(declare-fun b!4360231 () Bool)

(declare-fun e!2713515 () Bool)

(assert (=> b!4360231 (= e!2713514 e!2713515)))

(declare-fun res!1792545 () Bool)

(assert (=> b!4360231 (=> (not res!1792545) (not e!2713515))))

(assert (=> b!4360231 (= res!1792545 (dynLambda!20645 lambda!141170 (h!54518 (toList!2986 lt!1571642))))))

(declare-fun b!4360232 () Bool)

(assert (=> b!4360232 (= e!2713515 (forall!9142 (t!356005 (toList!2986 lt!1571642)) lambda!141170))))

(assert (= (and d!1289636 (not res!1792544)) b!4360231))

(assert (= (and b!4360231 res!1792545) b!4360232))

(declare-fun b_lambda!131625 () Bool)

(assert (=> (not b_lambda!131625) (not b!4360231)))

(declare-fun m!4977599 () Bool)

(assert (=> b!4360231 m!4977599))

(declare-fun m!4977601 () Bool)

(assert (=> b!4360232 m!4977601))

(assert (=> b!4359399 d!1289636))

(declare-fun d!1289642 () Bool)

(declare-fun res!1792550 () Bool)

(declare-fun e!2713520 () Bool)

(assert (=> d!1289642 (=> res!1792550 e!2713520)))

(assert (=> d!1289642 (= res!1792550 (not ((_ is Cons!48961) (_2!27482 (tuple2!48377 hash!377 newBucket!200)))))))

(assert (=> d!1289642 (= (noDuplicateKeys!501 (_2!27482 (tuple2!48377 hash!377 newBucket!200))) e!2713520)))

(declare-fun b!4360237 () Bool)

(declare-fun e!2713521 () Bool)

(assert (=> b!4360237 (= e!2713520 e!2713521)))

(declare-fun res!1792551 () Bool)

(assert (=> b!4360237 (=> (not res!1792551) (not e!2713521))))

(assert (=> b!4360237 (= res!1792551 (not (containsKey!714 (t!356005 (_2!27482 (tuple2!48377 hash!377 newBucket!200))) (_1!27481 (h!54518 (_2!27482 (tuple2!48377 hash!377 newBucket!200)))))))))

(declare-fun b!4360238 () Bool)

(assert (=> b!4360238 (= e!2713521 (noDuplicateKeys!501 (t!356005 (_2!27482 (tuple2!48377 hash!377 newBucket!200)))))))

(assert (= (and d!1289642 (not res!1792550)) b!4360237))

(assert (= (and b!4360237 res!1792551) b!4360238))

(declare-fun m!4977605 () Bool)

(assert (=> b!4360237 m!4977605))

(declare-fun m!4977607 () Bool)

(assert (=> b!4360238 m!4977607))

(assert (=> bs!633255 d!1289642))

(declare-fun d!1289646 () Bool)

(declare-fun lt!1572565 () Bool)

(assert (=> d!1289646 (= lt!1572565 (select (content!7736 (keys!16546 lt!1571629)) key!3918))))

(declare-fun e!2713523 () Bool)

(assert (=> d!1289646 (= lt!1572565 e!2713523)))

(declare-fun res!1792552 () Bool)

(assert (=> d!1289646 (=> (not res!1792552) (not e!2713523))))

(assert (=> d!1289646 (= res!1792552 ((_ is Cons!48964) (keys!16546 lt!1571629)))))

(assert (=> d!1289646 (= (contains!11189 (keys!16546 lt!1571629) key!3918) lt!1572565)))

(declare-fun b!4360239 () Bool)

(declare-fun e!2713522 () Bool)

(assert (=> b!4360239 (= e!2713523 e!2713522)))

(declare-fun res!1792553 () Bool)

(assert (=> b!4360239 (=> res!1792553 e!2713522)))

(assert (=> b!4360239 (= res!1792553 (= (h!54523 (keys!16546 lt!1571629)) key!3918))))

(declare-fun b!4360240 () Bool)

(assert (=> b!4360240 (= e!2713522 (contains!11189 (t!356008 (keys!16546 lt!1571629)) key!3918))))

(assert (= (and d!1289646 res!1792552) b!4360239))

(assert (= (and b!4360239 (not res!1792553)) b!4360240))

(assert (=> d!1289646 m!4976085))

(declare-fun m!4977613 () Bool)

(assert (=> d!1289646 m!4977613))

(declare-fun m!4977615 () Bool)

(assert (=> d!1289646 m!4977615))

(declare-fun m!4977617 () Bool)

(assert (=> b!4360240 m!4977617))

(assert (=> b!4359384 d!1289646))

(assert (=> b!4359384 d!1289316))

(declare-fun bs!633842 () Bool)

(declare-fun b!4360246 () Bool)

(assert (= bs!633842 (and b!4360246 b!4360067)))

(declare-fun lambda!141281 () Int)

(assert (=> bs!633842 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572435) (= lambda!141281 lambda!141266))))

(declare-fun bs!633843 () Bool)

(assert (= bs!633843 (and b!4360246 d!1289512)))

(assert (=> bs!633843 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141281 lambda!141262))))

(assert (=> bs!633842 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141281 lambda!141265))))

(declare-fun bs!633845 () Bool)

(assert (= bs!633845 (and b!4360246 b!4359307)))

(assert (=> bs!633845 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141281 lambda!141156))))

(declare-fun bs!633846 () Bool)

(assert (= bs!633846 (and b!4360246 d!1289530)))

(assert (=> bs!633846 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572440) (= lambda!141281 lambda!141268))))

(declare-fun bs!633847 () Bool)

(assert (= bs!633847 (and b!4360246 b!4359815)))

(assert (=> bs!633847 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141281 lambda!141212))))

(declare-fun bs!633848 () Bool)

(assert (= bs!633848 (and b!4360246 d!1289490)))

(assert (=> bs!633848 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572401) (= lambda!141281 lambda!141257))))

(declare-fun bs!633849 () Bool)

(assert (= bs!633849 (and b!4360246 b!4360068)))

(assert (=> bs!633849 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141281 lambda!141263))))

(declare-fun bs!633850 () Bool)

(assert (= bs!633850 (and b!4360246 b!4359876)))

(assert (=> bs!633850 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141281 lambda!141228))))

(declare-fun bs!633851 () Bool)

(assert (= bs!633851 (and b!4360246 b!4359929)))

(assert (=> bs!633851 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572326) (= lambda!141281 lambda!141244))))

(declare-fun bs!633852 () Bool)

(assert (= bs!633852 (and b!4360246 d!1289236)))

(assert (=> bs!633852 (not (= lambda!141281 lambda!141177))))

(declare-fun bs!633853 () Bool)

(assert (= bs!633853 (and b!4360246 d!1289224)))

(assert (=> bs!633853 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572027) (= lambda!141281 lambda!141170))))

(declare-fun bs!633854 () Bool)

(assert (= bs!633854 (and b!4360246 d!1289374)))

(assert (=> bs!633854 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572234) (= lambda!141281 lambda!141217))))

(declare-fun bs!633855 () Bool)

(assert (= bs!633855 (and b!4360246 b!4359986)))

(assert (=> bs!633855 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572396) (= lambda!141281 lambda!141256))))

(declare-fun bs!633856 () Bool)

(assert (= bs!633856 (and b!4360246 d!1289146)))

(assert (=> bs!633856 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571927) (= lambda!141281 lambda!141158))))

(declare-fun bs!633857 () Bool)

(assert (= bs!633857 (and b!4360246 d!1289440)))

(assert (=> bs!633857 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572331) (= lambda!141281 lambda!141246))))

(declare-fun bs!633858 () Bool)

(assert (= bs!633858 (and b!4360246 b!4359814)))

(assert (=> bs!633858 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141281 lambda!141213))))

(assert (=> bs!633855 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141281 lambda!141255))))

(declare-fun bs!633859 () Bool)

(assert (= bs!633859 (and b!4360246 b!4359308)))

(assert (=> bs!633859 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141281 lambda!141155))))

(declare-fun bs!633860 () Bool)

(assert (= bs!633860 (and b!4360246 b!4359877)))

(assert (=> bs!633860 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141281 lambda!141223))))

(declare-fun bs!633861 () Bool)

(assert (= bs!633861 (and b!4360246 b!4359397)))

(assert (=> bs!633861 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572022) (= lambda!141281 lambda!141169))))

(assert (=> bs!633845 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141281 lambda!141157))))

(assert (=> bs!633851 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141281 lambda!141241))))

(declare-fun bs!633862 () Bool)

(assert (= bs!633862 (and b!4360246 b!4359930)))

(assert (=> bs!633862 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141281 lambda!141239))))

(declare-fun bs!633863 () Bool)

(assert (= bs!633863 (and b!4360246 d!1289458)))

(assert (=> bs!633863 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141281 lambda!141248))))

(assert (=> bs!633861 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141281 lambda!141168))))

(declare-fun bs!633864 () Bool)

(assert (= bs!633864 (and b!4360246 b!4359987)))

(assert (=> bs!633864 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141281 lambda!141253))))

(assert (=> bs!633850 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572280) (= lambda!141281 lambda!141229))))

(declare-fun bs!633865 () Bool)

(assert (= bs!633865 (and b!4360246 b!4359398)))

(assert (=> bs!633865 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141281 lambda!141167))))

(declare-fun bs!633866 () Bool)

(assert (= bs!633866 (and b!4360246 d!1289410)))

(assert (=> bs!633866 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572285) (= lambda!141281 lambda!141231))))

(declare-fun bs!633867 () Bool)

(assert (= bs!633867 (and b!4360246 d!1289310)))

(assert (=> bs!633867 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141281 lambda!141200))))

(assert (=> bs!633858 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572229) (= lambda!141281 lambda!141214))))

(assert (=> b!4360246 true))

(declare-fun bs!633870 () Bool)

(declare-fun b!4360245 () Bool)

(assert (= bs!633870 (and b!4360245 b!4360246)))

(declare-fun lambda!141283 () Int)

(assert (=> bs!633870 (= lambda!141283 lambda!141281)))

(declare-fun bs!633872 () Bool)

(assert (= bs!633872 (and b!4360245 b!4360067)))

(assert (=> bs!633872 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572435) (= lambda!141283 lambda!141266))))

(declare-fun bs!633874 () Bool)

(assert (= bs!633874 (and b!4360245 d!1289512)))

(assert (=> bs!633874 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141283 lambda!141262))))

(assert (=> bs!633872 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141283 lambda!141265))))

(declare-fun bs!633876 () Bool)

(assert (= bs!633876 (and b!4360245 b!4359307)))

(assert (=> bs!633876 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141283 lambda!141156))))

(declare-fun bs!633877 () Bool)

(assert (= bs!633877 (and b!4360245 d!1289530)))

(assert (=> bs!633877 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572440) (= lambda!141283 lambda!141268))))

(declare-fun bs!633878 () Bool)

(assert (= bs!633878 (and b!4360245 b!4359815)))

(assert (=> bs!633878 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141283 lambda!141212))))

(declare-fun bs!633879 () Bool)

(assert (= bs!633879 (and b!4360245 d!1289490)))

(assert (=> bs!633879 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572401) (= lambda!141283 lambda!141257))))

(declare-fun bs!633881 () Bool)

(assert (= bs!633881 (and b!4360245 b!4360068)))

(assert (=> bs!633881 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141283 lambda!141263))))

(declare-fun bs!633883 () Bool)

(assert (= bs!633883 (and b!4360245 b!4359876)))

(assert (=> bs!633883 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141283 lambda!141228))))

(declare-fun bs!633885 () Bool)

(assert (= bs!633885 (and b!4360245 b!4359929)))

(assert (=> bs!633885 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572326) (= lambda!141283 lambda!141244))))

(declare-fun bs!633887 () Bool)

(assert (= bs!633887 (and b!4360245 d!1289236)))

(assert (=> bs!633887 (not (= lambda!141283 lambda!141177))))

(declare-fun bs!633889 () Bool)

(assert (= bs!633889 (and b!4360245 d!1289224)))

(assert (=> bs!633889 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572027) (= lambda!141283 lambda!141170))))

(declare-fun bs!633891 () Bool)

(assert (= bs!633891 (and b!4360245 d!1289374)))

(assert (=> bs!633891 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572234) (= lambda!141283 lambda!141217))))

(declare-fun bs!633892 () Bool)

(assert (= bs!633892 (and b!4360245 b!4359986)))

(assert (=> bs!633892 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572396) (= lambda!141283 lambda!141256))))

(declare-fun bs!633893 () Bool)

(assert (= bs!633893 (and b!4360245 d!1289146)))

(assert (=> bs!633893 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571927) (= lambda!141283 lambda!141158))))

(declare-fun bs!633895 () Bool)

(assert (= bs!633895 (and b!4360245 d!1289440)))

(assert (=> bs!633895 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572331) (= lambda!141283 lambda!141246))))

(declare-fun bs!633897 () Bool)

(assert (= bs!633897 (and b!4360245 b!4359814)))

(assert (=> bs!633897 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141283 lambda!141213))))

(assert (=> bs!633892 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141283 lambda!141255))))

(declare-fun bs!633900 () Bool)

(assert (= bs!633900 (and b!4360245 b!4359308)))

(assert (=> bs!633900 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141283 lambda!141155))))

(declare-fun bs!633902 () Bool)

(assert (= bs!633902 (and b!4360245 b!4359877)))

(assert (=> bs!633902 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141283 lambda!141223))))

(declare-fun bs!633904 () Bool)

(assert (= bs!633904 (and b!4360245 b!4359397)))

(assert (=> bs!633904 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572022) (= lambda!141283 lambda!141169))))

(assert (=> bs!633876 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571922) (= lambda!141283 lambda!141157))))

(assert (=> bs!633885 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141283 lambda!141241))))

(declare-fun bs!633906 () Bool)

(assert (= bs!633906 (and b!4360245 b!4359930)))

(assert (=> bs!633906 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141283 lambda!141239))))

(declare-fun bs!633907 () Bool)

(assert (= bs!633907 (and b!4360245 d!1289458)))

(assert (=> bs!633907 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141283 lambda!141248))))

(assert (=> bs!633904 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141283 lambda!141168))))

(declare-fun bs!633910 () Bool)

(assert (= bs!633910 (and b!4360245 b!4359987)))

(assert (=> bs!633910 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141283 lambda!141253))))

(assert (=> bs!633883 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572280) (= lambda!141283 lambda!141229))))

(declare-fun bs!633912 () Bool)

(assert (= bs!633912 (and b!4360245 b!4359398)))

(assert (=> bs!633912 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571642) (= lambda!141283 lambda!141167))))

(declare-fun bs!633913 () Bool)

(assert (= bs!633913 (and b!4360245 d!1289410)))

(assert (=> bs!633913 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572285) (= lambda!141283 lambda!141231))))

(declare-fun bs!633914 () Bool)

(assert (= bs!633914 (and b!4360245 d!1289310)))

(assert (=> bs!633914 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1571643) (= lambda!141283 lambda!141200))))

(assert (=> bs!633897 (= (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572229) (= lambda!141283 lambda!141214))))

(assert (=> b!4360245 true))

(declare-fun lt!1572572 () ListMap!2229)

(declare-fun lambda!141287 () Int)

(assert (=> bs!633870 (= (= lt!1572572 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141287 lambda!141281))))

(assert (=> b!4360245 (= (= lt!1572572 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141287 lambda!141283))))

(assert (=> bs!633872 (= (= lt!1572572 lt!1572435) (= lambda!141287 lambda!141266))))

(assert (=> bs!633874 (= (= lt!1572572 lt!1571922) (= lambda!141287 lambda!141262))))

(assert (=> bs!633872 (= (= lt!1572572 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141287 lambda!141265))))

(assert (=> bs!633876 (= (= lt!1572572 lt!1571643) (= lambda!141287 lambda!141156))))

(assert (=> bs!633877 (= (= lt!1572572 lt!1572440) (= lambda!141287 lambda!141268))))

(assert (=> bs!633878 (= (= lt!1572572 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141287 lambda!141212))))

(assert (=> bs!633879 (= (= lt!1572572 lt!1572401) (= lambda!141287 lambda!141257))))

(assert (=> bs!633881 (= (= lt!1572572 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141287 lambda!141263))))

(assert (=> bs!633883 (= (= lt!1572572 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141287 lambda!141228))))

(assert (=> bs!633885 (= (= lt!1572572 lt!1572326) (= lambda!141287 lambda!141244))))

(assert (=> bs!633887 (not (= lambda!141287 lambda!141177))))

(assert (=> bs!633889 (= (= lt!1572572 lt!1572027) (= lambda!141287 lambda!141170))))

(assert (=> bs!633891 (= (= lt!1572572 lt!1572234) (= lambda!141287 lambda!141217))))

(assert (=> bs!633892 (= (= lt!1572572 lt!1572396) (= lambda!141287 lambda!141256))))

(assert (=> bs!633893 (= (= lt!1572572 lt!1571927) (= lambda!141287 lambda!141158))))

(assert (=> bs!633895 (= (= lt!1572572 lt!1572331) (= lambda!141287 lambda!141246))))

(assert (=> bs!633897 (= (= lt!1572572 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141287 lambda!141213))))

(assert (=> bs!633892 (= (= lt!1572572 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141287 lambda!141255))))

(assert (=> bs!633900 (= (= lt!1572572 lt!1571643) (= lambda!141287 lambda!141155))))

(assert (=> bs!633902 (= (= lt!1572572 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141287 lambda!141223))))

(assert (=> bs!633904 (= (= lt!1572572 lt!1572022) (= lambda!141287 lambda!141169))))

(assert (=> bs!633876 (= (= lt!1572572 lt!1571922) (= lambda!141287 lambda!141157))))

(assert (=> bs!633885 (= (= lt!1572572 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141287 lambda!141241))))

(assert (=> bs!633906 (= (= lt!1572572 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141287 lambda!141239))))

(assert (=> bs!633907 (= (= lt!1572572 lt!1571642) (= lambda!141287 lambda!141248))))

(assert (=> bs!633904 (= (= lt!1572572 lt!1571642) (= lambda!141287 lambda!141168))))

(assert (=> bs!633910 (= (= lt!1572572 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141287 lambda!141253))))

(assert (=> bs!633883 (= (= lt!1572572 lt!1572280) (= lambda!141287 lambda!141229))))

(assert (=> bs!633912 (= (= lt!1572572 lt!1571642) (= lambda!141287 lambda!141167))))

(assert (=> bs!633913 (= (= lt!1572572 lt!1572285) (= lambda!141287 lambda!141231))))

(assert (=> bs!633914 (= (= lt!1572572 lt!1571643) (= lambda!141287 lambda!141200))))

(assert (=> bs!633897 (= (= lt!1572572 lt!1572229) (= lambda!141287 lambda!141214))))

(assert (=> b!4360245 true))

(declare-fun bs!633915 () Bool)

(declare-fun d!1289650 () Bool)

(assert (= bs!633915 (and d!1289650 b!4360246)))

(declare-fun lambda!141288 () Int)

(declare-fun lt!1572577 () ListMap!2229)

(assert (=> bs!633915 (= (= lt!1572577 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141288 lambda!141281))))

(declare-fun bs!633916 () Bool)

(assert (= bs!633916 (and d!1289650 b!4360245)))

(assert (=> bs!633916 (= (= lt!1572577 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141288 lambda!141283))))

(declare-fun bs!633917 () Bool)

(assert (= bs!633917 (and d!1289650 b!4360067)))

(assert (=> bs!633917 (= (= lt!1572577 lt!1572435) (= lambda!141288 lambda!141266))))

(declare-fun bs!633918 () Bool)

(assert (= bs!633918 (and d!1289650 d!1289512)))

(assert (=> bs!633918 (= (= lt!1572577 lt!1571922) (= lambda!141288 lambda!141262))))

(assert (=> bs!633917 (= (= lt!1572577 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141288 lambda!141265))))

(declare-fun bs!633919 () Bool)

(assert (= bs!633919 (and d!1289650 b!4359307)))

(assert (=> bs!633919 (= (= lt!1572577 lt!1571643) (= lambda!141288 lambda!141156))))

(declare-fun bs!633920 () Bool)

(assert (= bs!633920 (and d!1289650 d!1289530)))

(assert (=> bs!633920 (= (= lt!1572577 lt!1572440) (= lambda!141288 lambda!141268))))

(declare-fun bs!633921 () Bool)

(assert (= bs!633921 (and d!1289650 b!4359815)))

(assert (=> bs!633921 (= (= lt!1572577 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141288 lambda!141212))))

(declare-fun bs!633922 () Bool)

(assert (= bs!633922 (and d!1289650 d!1289490)))

(assert (=> bs!633922 (= (= lt!1572577 lt!1572401) (= lambda!141288 lambda!141257))))

(declare-fun bs!633923 () Bool)

(assert (= bs!633923 (and d!1289650 b!4360068)))

(assert (=> bs!633923 (= (= lt!1572577 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141288 lambda!141263))))

(declare-fun bs!633924 () Bool)

(assert (= bs!633924 (and d!1289650 b!4359876)))

(assert (=> bs!633924 (= (= lt!1572577 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141288 lambda!141228))))

(declare-fun bs!633925 () Bool)

(assert (= bs!633925 (and d!1289650 b!4359929)))

(assert (=> bs!633925 (= (= lt!1572577 lt!1572326) (= lambda!141288 lambda!141244))))

(declare-fun bs!633926 () Bool)

(assert (= bs!633926 (and d!1289650 d!1289236)))

(assert (=> bs!633926 (not (= lambda!141288 lambda!141177))))

(declare-fun bs!633927 () Bool)

(assert (= bs!633927 (and d!1289650 d!1289224)))

(assert (=> bs!633927 (= (= lt!1572577 lt!1572027) (= lambda!141288 lambda!141170))))

(declare-fun bs!633928 () Bool)

(assert (= bs!633928 (and d!1289650 d!1289374)))

(assert (=> bs!633928 (= (= lt!1572577 lt!1572234) (= lambda!141288 lambda!141217))))

(declare-fun bs!633929 () Bool)

(assert (= bs!633929 (and d!1289650 b!4359986)))

(assert (=> bs!633929 (= (= lt!1572577 lt!1572396) (= lambda!141288 lambda!141256))))

(assert (=> bs!633916 (= (= lt!1572577 lt!1572572) (= lambda!141288 lambda!141287))))

(declare-fun bs!633930 () Bool)

(assert (= bs!633930 (and d!1289650 d!1289146)))

(assert (=> bs!633930 (= (= lt!1572577 lt!1571927) (= lambda!141288 lambda!141158))))

(declare-fun bs!633931 () Bool)

(assert (= bs!633931 (and d!1289650 d!1289440)))

(assert (=> bs!633931 (= (= lt!1572577 lt!1572331) (= lambda!141288 lambda!141246))))

(declare-fun bs!633932 () Bool)

(assert (= bs!633932 (and d!1289650 b!4359814)))

(assert (=> bs!633932 (= (= lt!1572577 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141288 lambda!141213))))

(assert (=> bs!633929 (= (= lt!1572577 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141288 lambda!141255))))

(declare-fun bs!633933 () Bool)

(assert (= bs!633933 (and d!1289650 b!4359308)))

(assert (=> bs!633933 (= (= lt!1572577 lt!1571643) (= lambda!141288 lambda!141155))))

(declare-fun bs!633934 () Bool)

(assert (= bs!633934 (and d!1289650 b!4359877)))

(assert (=> bs!633934 (= (= lt!1572577 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141288 lambda!141223))))

(declare-fun bs!633935 () Bool)

(assert (= bs!633935 (and d!1289650 b!4359397)))

(assert (=> bs!633935 (= (= lt!1572577 lt!1572022) (= lambda!141288 lambda!141169))))

(assert (=> bs!633919 (= (= lt!1572577 lt!1571922) (= lambda!141288 lambda!141157))))

(assert (=> bs!633925 (= (= lt!1572577 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141288 lambda!141241))))

(declare-fun bs!633936 () Bool)

(assert (= bs!633936 (and d!1289650 b!4359930)))

(assert (=> bs!633936 (= (= lt!1572577 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141288 lambda!141239))))

(declare-fun bs!633937 () Bool)

(assert (= bs!633937 (and d!1289650 d!1289458)))

(assert (=> bs!633937 (= (= lt!1572577 lt!1571642) (= lambda!141288 lambda!141248))))

(assert (=> bs!633935 (= (= lt!1572577 lt!1571642) (= lambda!141288 lambda!141168))))

(declare-fun bs!633938 () Bool)

(assert (= bs!633938 (and d!1289650 b!4359987)))

(assert (=> bs!633938 (= (= lt!1572577 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141288 lambda!141253))))

(assert (=> bs!633924 (= (= lt!1572577 lt!1572280) (= lambda!141288 lambda!141229))))

(declare-fun bs!633939 () Bool)

(assert (= bs!633939 (and d!1289650 b!4359398)))

(assert (=> bs!633939 (= (= lt!1572577 lt!1571642) (= lambda!141288 lambda!141167))))

(declare-fun bs!633940 () Bool)

(assert (= bs!633940 (and d!1289650 d!1289410)))

(assert (=> bs!633940 (= (= lt!1572577 lt!1572285) (= lambda!141288 lambda!141231))))

(declare-fun bs!633941 () Bool)

(assert (= bs!633941 (and d!1289650 d!1289310)))

(assert (=> bs!633941 (= (= lt!1572577 lt!1571643) (= lambda!141288 lambda!141200))))

(assert (=> bs!633932 (= (= lt!1572577 lt!1572229) (= lambda!141288 lambda!141214))))

(assert (=> d!1289650 true))

(declare-fun e!2713526 () Bool)

(declare-fun b!4360243 () Bool)

(assert (=> b!4360243 (= e!2713526 (forall!9142 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141287))))

(declare-fun b!4360244 () Bool)

(declare-fun e!2713527 () Bool)

(assert (=> b!4360244 (= e!2713527 (invariantList!684 (toList!2986 lt!1572577)))))

(assert (=> d!1289650 e!2713527))

(declare-fun res!1792556 () Bool)

(assert (=> d!1289650 (=> (not res!1792556) (not e!2713527))))

(assert (=> d!1289650 (= res!1792556 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141288))))

(declare-fun e!2713528 () ListMap!2229)

(assert (=> d!1289650 (= lt!1572577 e!2713528)))

(declare-fun c!741414 () Bool)

(assert (=> d!1289650 (= c!741414 ((_ is Nil!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289650 (noDuplicateKeys!501 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289650 (= (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572577)))

(assert (=> b!4360245 (= e!2713528 lt!1572572)))

(declare-fun lt!1572585 () ListMap!2229)

(assert (=> b!4360245 (= lt!1572585 (+!660 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360245 (= lt!1572572 (addToMapMapFromBucket!197 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (+!660 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun lt!1572584 () Unit!72045)

(declare-fun call!303085 () Unit!72045)

(assert (=> b!4360245 (= lt!1572584 call!303085)))

(assert (=> b!4360245 (forall!9142 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141283)))

(declare-fun lt!1572576 () Unit!72045)

(assert (=> b!4360245 (= lt!1572576 lt!1572584)))

(assert (=> b!4360245 (forall!9142 (toList!2986 lt!1572585) lambda!141287)))

(declare-fun lt!1572573 () Unit!72045)

(declare-fun Unit!72256 () Unit!72045)

(assert (=> b!4360245 (= lt!1572573 Unit!72256)))

(assert (=> b!4360245 (forall!9142 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lambda!141287)))

(declare-fun lt!1572583 () Unit!72045)

(declare-fun Unit!72257 () Unit!72045)

(assert (=> b!4360245 (= lt!1572583 Unit!72257)))

(declare-fun lt!1572586 () Unit!72045)

(declare-fun Unit!72258 () Unit!72045)

(assert (=> b!4360245 (= lt!1572586 Unit!72258)))

(declare-fun lt!1572580 () Unit!72045)

(assert (=> b!4360245 (= lt!1572580 (forallContained!1783 (toList!2986 lt!1572585) lambda!141287 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360245 (contains!11183 lt!1572585 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572578 () Unit!72045)

(declare-fun Unit!72259 () Unit!72045)

(assert (=> b!4360245 (= lt!1572578 Unit!72259)))

(assert (=> b!4360245 (contains!11183 lt!1572572 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572571 () Unit!72045)

(declare-fun Unit!72260 () Unit!72045)

(assert (=> b!4360245 (= lt!1572571 Unit!72260)))

(declare-fun call!303084 () Bool)

(assert (=> b!4360245 call!303084))

(declare-fun lt!1572570 () Unit!72045)

(declare-fun Unit!72261 () Unit!72045)

(assert (=> b!4360245 (= lt!1572570 Unit!72261)))

(assert (=> b!4360245 (forall!9142 (toList!2986 lt!1572585) lambda!141287)))

(declare-fun lt!1572581 () Unit!72045)

(declare-fun Unit!72262 () Unit!72045)

(assert (=> b!4360245 (= lt!1572581 Unit!72262)))

(declare-fun lt!1572566 () Unit!72045)

(declare-fun Unit!72263 () Unit!72045)

(assert (=> b!4360245 (= lt!1572566 Unit!72263)))

(declare-fun lt!1572568 () Unit!72045)

(assert (=> b!4360245 (= lt!1572568 (addForallContainsKeyThenBeforeAdding!67 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572572 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (_2!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun call!303083 () Bool)

(assert (=> b!4360245 call!303083))

(declare-fun lt!1572569 () Unit!72045)

(assert (=> b!4360245 (= lt!1572569 lt!1572568)))

(assert (=> b!4360245 (forall!9142 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141287)))

(declare-fun lt!1572567 () Unit!72045)

(declare-fun Unit!72264 () Unit!72045)

(assert (=> b!4360245 (= lt!1572567 Unit!72264)))

(declare-fun res!1792558 () Bool)

(assert (=> b!4360245 (= res!1792558 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141287))))

(assert (=> b!4360245 (=> (not res!1792558) (not e!2713526))))

(assert (=> b!4360245 e!2713526))

(declare-fun lt!1572575 () Unit!72045)

(declare-fun Unit!72265 () Unit!72045)

(assert (=> b!4360245 (= lt!1572575 Unit!72265)))

(assert (=> b!4360246 (= e!2713528 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun lt!1572579 () Unit!72045)

(assert (=> b!4360246 (= lt!1572579 call!303085)))

(assert (=> b!4360246 call!303083))

(declare-fun lt!1572574 () Unit!72045)

(assert (=> b!4360246 (= lt!1572574 lt!1572579)))

(assert (=> b!4360246 call!303084))

(declare-fun lt!1572582 () Unit!72045)

(declare-fun Unit!72266 () Unit!72045)

(assert (=> b!4360246 (= lt!1572582 Unit!72266)))

(declare-fun bm!303078 () Bool)

(assert (=> bm!303078 (= call!303083 (forall!9142 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (ite c!741414 lambda!141281 lambda!141287)))))

(declare-fun bm!303079 () Bool)

(assert (=> bm!303079 (= call!303084 (forall!9142 (ite c!741414 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (ite c!741414 lambda!141281 lambda!141287)))))

(declare-fun b!4360247 () Bool)

(declare-fun res!1792557 () Bool)

(assert (=> b!4360247 (=> (not res!1792557) (not e!2713527))))

(assert (=> b!4360247 (= res!1792557 (forall!9142 (toList!2986 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lambda!141288))))

(declare-fun bm!303080 () Bool)

(assert (=> bm!303080 (= call!303085 (lemmaContainsAllItsOwnKeys!67 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (= (and d!1289650 c!741414) b!4360246))

(assert (= (and d!1289650 (not c!741414)) b!4360245))

(assert (= (and b!4360245 res!1792558) b!4360243))

(assert (= (or b!4360246 b!4360245) bm!303080))

(assert (= (or b!4360246 b!4360245) bm!303079))

(assert (= (or b!4360246 b!4360245) bm!303078))

(assert (= (and d!1289650 res!1792556) b!4360247))

(assert (= (and b!4360247 res!1792557) b!4360244))

(declare-fun m!4977697 () Bool)

(assert (=> b!4360243 m!4977697))

(declare-fun m!4977699 () Bool)

(assert (=> bm!303078 m!4977699))

(declare-fun m!4977701 () Bool)

(assert (=> d!1289650 m!4977701))

(assert (=> d!1289650 m!4976665))

(assert (=> b!4360245 m!4976117))

(declare-fun m!4977703 () Bool)

(assert (=> b!4360245 m!4977703))

(assert (=> b!4360245 m!4977697))

(declare-fun m!4977705 () Bool)

(assert (=> b!4360245 m!4977705))

(assert (=> b!4360245 m!4977703))

(declare-fun m!4977707 () Bool)

(assert (=> b!4360245 m!4977707))

(declare-fun m!4977709 () Bool)

(assert (=> b!4360245 m!4977709))

(assert (=> b!4360245 m!4976117))

(declare-fun m!4977711 () Bool)

(assert (=> b!4360245 m!4977711))

(declare-fun m!4977713 () Bool)

(assert (=> b!4360245 m!4977713))

(declare-fun m!4977715 () Bool)

(assert (=> b!4360245 m!4977715))

(assert (=> b!4360245 m!4977715))

(declare-fun m!4977717 () Bool)

(assert (=> b!4360245 m!4977717))

(declare-fun m!4977719 () Bool)

(assert (=> b!4360245 m!4977719))

(declare-fun m!4977721 () Bool)

(assert (=> b!4360245 m!4977721))

(declare-fun m!4977723 () Bool)

(assert (=> b!4360247 m!4977723))

(assert (=> bm!303080 m!4976117))

(declare-fun m!4977725 () Bool)

(assert (=> bm!303080 m!4977725))

(declare-fun m!4977727 () Bool)

(assert (=> b!4360244 m!4977727))

(declare-fun m!4977729 () Bool)

(assert (=> bm!303079 m!4977729))

(assert (=> b!4359397 d!1289650))

(declare-fun d!1289682 () Bool)

(declare-fun res!1792582 () Bool)

(declare-fun e!2713557 () Bool)

(assert (=> d!1289682 (=> res!1792582 e!2713557)))

(assert (=> d!1289682 (= res!1792582 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> d!1289682 (= (forall!9142 (_2!27482 (h!54519 (toList!2985 lm!1707))) lambda!141169) e!2713557)))

(declare-fun b!4360285 () Bool)

(declare-fun e!2713558 () Bool)

(assert (=> b!4360285 (= e!2713557 e!2713558)))

(declare-fun res!1792583 () Bool)

(assert (=> b!4360285 (=> (not res!1792583) (not e!2713558))))

(assert (=> b!4360285 (= res!1792583 (dynLambda!20645 lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun b!4360286 () Bool)

(assert (=> b!4360286 (= e!2713558 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141169))))

(assert (= (and d!1289682 (not res!1792582)) b!4360285))

(assert (= (and b!4360285 res!1792583) b!4360286))

(declare-fun b_lambda!131633 () Bool)

(assert (=> (not b_lambda!131633) (not b!4360285)))

(declare-fun m!4977731 () Bool)

(assert (=> b!4360285 m!4977731))

(assert (=> b!4360286 m!4976131))

(assert (=> b!4359397 d!1289682))

(declare-fun b!4360287 () Bool)

(declare-fun e!2713564 () Bool)

(assert (=> b!4360287 (= e!2713564 (not (contains!11189 (keys!16546 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360288 () Bool)

(assert (=> b!4360288 false))

(declare-fun lt!1572602 () Unit!72045)

(declare-fun lt!1572601 () Unit!72045)

(assert (=> b!4360288 (= lt!1572602 lt!1572601)))

(assert (=> b!4360288 (containsKey!717 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4360288 (= lt!1572601 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun e!2713560 () Unit!72045)

(declare-fun Unit!72267 () Unit!72045)

(assert (=> b!4360288 (= e!2713560 Unit!72267)))

(declare-fun b!4360289 () Bool)

(declare-fun e!2713561 () List!49088)

(assert (=> b!4360289 (= e!2713561 (keys!16546 lt!1572022))))

(declare-fun b!4360290 () Bool)

(declare-fun e!2713559 () Bool)

(assert (=> b!4360290 (= e!2713559 (contains!11189 (keys!16546 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360291 () Bool)

(declare-fun e!2713563 () Unit!72045)

(declare-fun lt!1572603 () Unit!72045)

(assert (=> b!4360291 (= e!2713563 lt!1572603)))

(declare-fun lt!1572605 () Unit!72045)

(assert (=> b!4360291 (= lt!1572605 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360291 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572604 () Unit!72045)

(assert (=> b!4360291 (= lt!1572604 lt!1572605)))

(assert (=> b!4360291 (= lt!1572603 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303086 () Bool)

(assert (=> b!4360291 call!303086))

(declare-fun b!4360292 () Bool)

(declare-fun Unit!72270 () Unit!72045)

(assert (=> b!4360292 (= e!2713560 Unit!72270)))

(declare-fun b!4360293 () Bool)

(assert (=> b!4360293 (= e!2713561 (getKeysList!132 (toList!2986 lt!1572022)))))

(declare-fun d!1289684 () Bool)

(declare-fun e!2713562 () Bool)

(assert (=> d!1289684 e!2713562))

(declare-fun res!1792586 () Bool)

(assert (=> d!1289684 (=> res!1792586 e!2713562)))

(assert (=> d!1289684 (= res!1792586 e!2713564)))

(declare-fun res!1792584 () Bool)

(assert (=> d!1289684 (=> (not res!1792584) (not e!2713564))))

(declare-fun lt!1572600 () Bool)

(assert (=> d!1289684 (= res!1792584 (not lt!1572600))))

(declare-fun lt!1572607 () Bool)

(assert (=> d!1289684 (= lt!1572600 lt!1572607)))

(declare-fun lt!1572606 () Unit!72045)

(assert (=> d!1289684 (= lt!1572606 e!2713563)))

(declare-fun c!741422 () Bool)

(assert (=> d!1289684 (= c!741422 lt!1572607)))

(assert (=> d!1289684 (= lt!1572607 (containsKey!717 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289684 (= (contains!11183 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572600)))

(declare-fun bm!303081 () Bool)

(assert (=> bm!303081 (= call!303086 (contains!11189 e!2713561 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun c!741423 () Bool)

(assert (=> bm!303081 (= c!741423 c!741422)))

(declare-fun b!4360294 () Bool)

(assert (=> b!4360294 (= e!2713563 e!2713560)))

(declare-fun c!741424 () Bool)

(assert (=> b!4360294 (= c!741424 call!303086)))

(declare-fun b!4360295 () Bool)

(assert (=> b!4360295 (= e!2713562 e!2713559)))

(declare-fun res!1792585 () Bool)

(assert (=> b!4360295 (=> (not res!1792585) (not e!2713559))))

(assert (=> b!4360295 (= res!1792585 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572022) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(assert (= (and d!1289684 c!741422) b!4360291))

(assert (= (and d!1289684 (not c!741422)) b!4360294))

(assert (= (and b!4360294 c!741424) b!4360288))

(assert (= (and b!4360294 (not c!741424)) b!4360292))

(assert (= (or b!4360291 b!4360294) bm!303081))

(assert (= (and bm!303081 c!741423) b!4360293))

(assert (= (and bm!303081 (not c!741423)) b!4360289))

(assert (= (and d!1289684 res!1792584) b!4360287))

(assert (= (and d!1289684 (not res!1792586)) b!4360295))

(assert (= (and b!4360295 res!1792585) b!4360290))

(declare-fun m!4977733 () Bool)

(assert (=> b!4360293 m!4977733))

(declare-fun m!4977735 () Bool)

(assert (=> b!4360288 m!4977735))

(declare-fun m!4977737 () Bool)

(assert (=> b!4360288 m!4977737))

(declare-fun m!4977739 () Bool)

(assert (=> b!4360289 m!4977739))

(assert (=> b!4360290 m!4977739))

(assert (=> b!4360290 m!4977739))

(declare-fun m!4977741 () Bool)

(assert (=> b!4360290 m!4977741))

(assert (=> d!1289684 m!4977735))

(assert (=> b!4360287 m!4977739))

(assert (=> b!4360287 m!4977739))

(assert (=> b!4360287 m!4977741))

(declare-fun m!4977743 () Bool)

(assert (=> b!4360291 m!4977743))

(declare-fun m!4977745 () Bool)

(assert (=> b!4360291 m!4977745))

(assert (=> b!4360291 m!4977745))

(declare-fun m!4977747 () Bool)

(assert (=> b!4360291 m!4977747))

(declare-fun m!4977749 () Bool)

(assert (=> b!4360291 m!4977749))

(declare-fun m!4977751 () Bool)

(assert (=> bm!303081 m!4977751))

(assert (=> b!4360295 m!4977745))

(assert (=> b!4360295 m!4977745))

(assert (=> b!4360295 m!4977747))

(assert (=> b!4359397 d!1289684))

(declare-fun d!1289686 () Bool)

(declare-fun res!1792587 () Bool)

(declare-fun e!2713565 () Bool)

(assert (=> d!1289686 (=> res!1792587 e!2713565)))

(assert (=> d!1289686 (= res!1792587 ((_ is Nil!48961) (toList!2986 lt!1572035)))))

(assert (=> d!1289686 (= (forall!9142 (toList!2986 lt!1572035) lambda!141169) e!2713565)))

(declare-fun b!4360296 () Bool)

(declare-fun e!2713566 () Bool)

(assert (=> b!4360296 (= e!2713565 e!2713566)))

(declare-fun res!1792588 () Bool)

(assert (=> b!4360296 (=> (not res!1792588) (not e!2713566))))

(assert (=> b!4360296 (= res!1792588 (dynLambda!20645 lambda!141169 (h!54518 (toList!2986 lt!1572035))))))

(declare-fun b!4360297 () Bool)

(assert (=> b!4360297 (= e!2713566 (forall!9142 (t!356005 (toList!2986 lt!1572035)) lambda!141169))))

(assert (= (and d!1289686 (not res!1792587)) b!4360296))

(assert (= (and b!4360296 res!1792588) b!4360297))

(declare-fun b_lambda!131635 () Bool)

(assert (=> (not b_lambda!131635) (not b!4360296)))

(declare-fun m!4977757 () Bool)

(assert (=> b!4360296 m!4977757))

(declare-fun m!4977759 () Bool)

(assert (=> b!4360297 m!4977759))

(assert (=> b!4359397 d!1289686))

(declare-fun d!1289690 () Bool)

(assert (=> d!1289690 (dynLambda!20645 lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(declare-fun lt!1572611 () Unit!72045)

(assert (=> d!1289690 (= lt!1572611 (choose!26996 (toList!2986 lt!1572035) lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(declare-fun e!2713567 () Bool)

(assert (=> d!1289690 e!2713567))

(declare-fun res!1792589 () Bool)

(assert (=> d!1289690 (=> (not res!1792589) (not e!2713567))))

(assert (=> d!1289690 (= res!1792589 (forall!9142 (toList!2986 lt!1572035) lambda!141169))))

(assert (=> d!1289690 (= (forallContained!1783 (toList!2986 lt!1572035) lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572611)))

(declare-fun b!4360298 () Bool)

(assert (=> b!4360298 (= e!2713567 (contains!11188 (toList!2986 lt!1572035) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (= (and d!1289690 res!1792589) b!4360298))

(declare-fun b_lambda!131637 () Bool)

(assert (=> (not b_lambda!131637) (not d!1289690)))

(assert (=> d!1289690 m!4977731))

(declare-fun m!4977761 () Bool)

(assert (=> d!1289690 m!4977761))

(assert (=> d!1289690 m!4976129))

(declare-fun m!4977763 () Bool)

(assert (=> b!4360298 m!4977763))

(assert (=> b!4359397 d!1289690))

(assert (=> b!4359397 d!1289300))

(declare-fun b!4360308 () Bool)

(declare-fun e!2713579 () Bool)

(assert (=> b!4360308 (= e!2713579 (not (contains!11189 (keys!16546 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360309 () Bool)

(assert (=> b!4360309 false))

(declare-fun lt!1572622 () Unit!72045)

(declare-fun lt!1572621 () Unit!72045)

(assert (=> b!4360309 (= lt!1572622 lt!1572621)))

(assert (=> b!4360309 (containsKey!717 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> b!4360309 (= lt!1572621 (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun e!2713575 () Unit!72045)

(declare-fun Unit!72280 () Unit!72045)

(assert (=> b!4360309 (= e!2713575 Unit!72280)))

(declare-fun b!4360310 () Bool)

(declare-fun e!2713576 () List!49088)

(assert (=> b!4360310 (= e!2713576 (keys!16546 lt!1572035))))

(declare-fun b!4360311 () Bool)

(declare-fun e!2713574 () Bool)

(assert (=> b!4360311 (= e!2713574 (contains!11189 (keys!16546 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360312 () Bool)

(declare-fun e!2713578 () Unit!72045)

(declare-fun lt!1572623 () Unit!72045)

(assert (=> b!4360312 (= e!2713578 lt!1572623)))

(declare-fun lt!1572625 () Unit!72045)

(assert (=> b!4360312 (= lt!1572625 (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> b!4360312 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572624 () Unit!72045)

(assert (=> b!4360312 (= lt!1572624 lt!1572625)))

(assert (=> b!4360312 (= lt!1572623 (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun call!303088 () Bool)

(assert (=> b!4360312 call!303088))

(declare-fun b!4360313 () Bool)

(declare-fun Unit!72281 () Unit!72045)

(assert (=> b!4360313 (= e!2713575 Unit!72281)))

(declare-fun b!4360314 () Bool)

(assert (=> b!4360314 (= e!2713576 (getKeysList!132 (toList!2986 lt!1572035)))))

(declare-fun d!1289694 () Bool)

(declare-fun e!2713577 () Bool)

(assert (=> d!1289694 e!2713577))

(declare-fun res!1792595 () Bool)

(assert (=> d!1289694 (=> res!1792595 e!2713577)))

(assert (=> d!1289694 (= res!1792595 e!2713579)))

(declare-fun res!1792593 () Bool)

(assert (=> d!1289694 (=> (not res!1792593) (not e!2713579))))

(declare-fun lt!1572620 () Bool)

(assert (=> d!1289694 (= res!1792593 (not lt!1572620))))

(declare-fun lt!1572627 () Bool)

(assert (=> d!1289694 (= lt!1572620 lt!1572627)))

(declare-fun lt!1572626 () Unit!72045)

(assert (=> d!1289694 (= lt!1572626 e!2713578)))

(declare-fun c!741428 () Bool)

(assert (=> d!1289694 (= c!741428 lt!1572627)))

(assert (=> d!1289694 (= lt!1572627 (containsKey!717 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289694 (= (contains!11183 lt!1572035 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572620)))

(declare-fun bm!303083 () Bool)

(assert (=> bm!303083 (= call!303088 (contains!11189 e!2713576 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun c!741429 () Bool)

(assert (=> bm!303083 (= c!741429 c!741428)))

(declare-fun b!4360315 () Bool)

(assert (=> b!4360315 (= e!2713578 e!2713575)))

(declare-fun c!741430 () Bool)

(assert (=> b!4360315 (= c!741430 call!303088)))

(declare-fun b!4360316 () Bool)

(assert (=> b!4360316 (= e!2713577 e!2713574)))

(declare-fun res!1792594 () Bool)

(assert (=> b!4360316 (=> (not res!1792594) (not e!2713574))))

(assert (=> b!4360316 (= res!1792594 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1572035) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(assert (= (and d!1289694 c!741428) b!4360312))

(assert (= (and d!1289694 (not c!741428)) b!4360315))

(assert (= (and b!4360315 c!741430) b!4360309))

(assert (= (and b!4360315 (not c!741430)) b!4360313))

(assert (= (or b!4360312 b!4360315) bm!303083))

(assert (= (and bm!303083 c!741429) b!4360314))

(assert (= (and bm!303083 (not c!741429)) b!4360310))

(assert (= (and d!1289694 res!1792593) b!4360308))

(assert (= (and d!1289694 (not res!1792595)) b!4360316))

(assert (= (and b!4360316 res!1792594) b!4360311))

(declare-fun m!4977777 () Bool)

(assert (=> b!4360314 m!4977777))

(declare-fun m!4977781 () Bool)

(assert (=> b!4360309 m!4977781))

(declare-fun m!4977785 () Bool)

(assert (=> b!4360309 m!4977785))

(declare-fun m!4977787 () Bool)

(assert (=> b!4360310 m!4977787))

(assert (=> b!4360311 m!4977787))

(assert (=> b!4360311 m!4977787))

(declare-fun m!4977791 () Bool)

(assert (=> b!4360311 m!4977791))

(assert (=> d!1289694 m!4977781))

(assert (=> b!4360308 m!4977787))

(assert (=> b!4360308 m!4977787))

(assert (=> b!4360308 m!4977791))

(declare-fun m!4977793 () Bool)

(assert (=> b!4360312 m!4977793))

(declare-fun m!4977795 () Bool)

(assert (=> b!4360312 m!4977795))

(assert (=> b!4360312 m!4977795))

(declare-fun m!4977797 () Bool)

(assert (=> b!4360312 m!4977797))

(declare-fun m!4977799 () Bool)

(assert (=> b!4360312 m!4977799))

(declare-fun m!4977801 () Bool)

(assert (=> bm!303083 m!4977801))

(assert (=> b!4360316 m!4977795))

(assert (=> b!4360316 m!4977795))

(assert (=> b!4360316 m!4977797))

(assert (=> b!4359397 d!1289694))

(declare-fun d!1289698 () Bool)

(declare-fun res!1792596 () Bool)

(declare-fun e!2713582 () Bool)

(assert (=> d!1289698 (=> res!1792596 e!2713582)))

(assert (=> d!1289698 (= res!1792596 ((_ is Nil!48961) (toList!2986 lt!1571642)))))

(assert (=> d!1289698 (= (forall!9142 (toList!2986 lt!1571642) lambda!141168) e!2713582)))

(declare-fun b!4360321 () Bool)

(declare-fun e!2713583 () Bool)

(assert (=> b!4360321 (= e!2713582 e!2713583)))

(declare-fun res!1792597 () Bool)

(assert (=> b!4360321 (=> (not res!1792597) (not e!2713583))))

(assert (=> b!4360321 (= res!1792597 (dynLambda!20645 lambda!141168 (h!54518 (toList!2986 lt!1571642))))))

(declare-fun b!4360322 () Bool)

(assert (=> b!4360322 (= e!2713583 (forall!9142 (t!356005 (toList!2986 lt!1571642)) lambda!141168))))

(assert (= (and d!1289698 (not res!1792596)) b!4360321))

(assert (= (and b!4360321 res!1792597) b!4360322))

(declare-fun b_lambda!131639 () Bool)

(assert (=> (not b_lambda!131639) (not b!4360321)))

(declare-fun m!4977805 () Bool)

(assert (=> b!4360321 m!4977805))

(declare-fun m!4977807 () Bool)

(assert (=> b!4360322 m!4977807))

(assert (=> b!4359397 d!1289698))

(declare-fun d!1289702 () Bool)

(declare-fun e!2713585 () Bool)

(assert (=> d!1289702 e!2713585))

(declare-fun res!1792600 () Bool)

(assert (=> d!1289702 (=> (not res!1792600) (not e!2713585))))

(declare-fun lt!1572629 () ListMap!2229)

(assert (=> d!1289702 (= res!1792600 (contains!11183 lt!1572629 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun lt!1572630 () List!49085)

(assert (=> d!1289702 (= lt!1572629 (ListMap!2230 lt!1572630))))

(declare-fun lt!1572632 () Unit!72045)

(declare-fun lt!1572631 () Unit!72045)

(assert (=> d!1289702 (= lt!1572632 lt!1572631)))

(assert (=> d!1289702 (= (getValueByKey!467 lt!1572630 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (Some!10480 (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289702 (= lt!1572631 (lemmaContainsTupThenGetReturnValue!241 lt!1572630 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289702 (= lt!1572630 (insertNoDuplicatedKeys!108 (toList!2986 lt!1571642) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289702 (= (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lt!1572629)))

(declare-fun b!4360325 () Bool)

(declare-fun res!1792601 () Bool)

(assert (=> b!4360325 (=> (not res!1792601) (not e!2713585))))

(assert (=> b!4360325 (= res!1792601 (= (getValueByKey!467 (toList!2986 lt!1572629) (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (Some!10480 (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun b!4360326 () Bool)

(assert (=> b!4360326 (= e!2713585 (contains!11188 (toList!2986 lt!1572629) (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (= (and d!1289702 res!1792600) b!4360325))

(assert (= (and b!4360325 res!1792601) b!4360326))

(declare-fun m!4977817 () Bool)

(assert (=> d!1289702 m!4977817))

(declare-fun m!4977819 () Bool)

(assert (=> d!1289702 m!4977819))

(declare-fun m!4977821 () Bool)

(assert (=> d!1289702 m!4977821))

(declare-fun m!4977823 () Bool)

(assert (=> d!1289702 m!4977823))

(declare-fun m!4977825 () Bool)

(assert (=> b!4360325 m!4977825))

(declare-fun m!4977827 () Bool)

(assert (=> b!4360326 m!4977827))

(assert (=> b!4359397 d!1289702))

(declare-fun bs!633944 () Bool)

(declare-fun d!1289706 () Bool)

(assert (= bs!633944 (and d!1289706 b!4360246)))

(declare-fun lambda!141289 () Int)

(assert (=> bs!633944 (= (= lt!1572022 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141289 lambda!141281))))

(declare-fun bs!633945 () Bool)

(assert (= bs!633945 (and d!1289706 b!4360245)))

(assert (=> bs!633945 (= (= lt!1572022 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141289 lambda!141283))))

(declare-fun bs!633946 () Bool)

(assert (= bs!633946 (and d!1289706 b!4360067)))

(assert (=> bs!633946 (= (= lt!1572022 lt!1572435) (= lambda!141289 lambda!141266))))

(declare-fun bs!633947 () Bool)

(assert (= bs!633947 (and d!1289706 d!1289512)))

(assert (=> bs!633947 (= (= lt!1572022 lt!1571922) (= lambda!141289 lambda!141262))))

(assert (=> bs!633946 (= (= lt!1572022 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141289 lambda!141265))))

(declare-fun bs!633948 () Bool)

(assert (= bs!633948 (and d!1289706 b!4359307)))

(assert (=> bs!633948 (= (= lt!1572022 lt!1571643) (= lambda!141289 lambda!141156))))

(declare-fun bs!633949 () Bool)

(assert (= bs!633949 (and d!1289706 d!1289530)))

(assert (=> bs!633949 (= (= lt!1572022 lt!1572440) (= lambda!141289 lambda!141268))))

(declare-fun bs!633950 () Bool)

(assert (= bs!633950 (and d!1289706 b!4359815)))

(assert (=> bs!633950 (= (= lt!1572022 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141289 lambda!141212))))

(declare-fun bs!633951 () Bool)

(assert (= bs!633951 (and d!1289706 d!1289650)))

(assert (=> bs!633951 (= (= lt!1572022 lt!1572577) (= lambda!141289 lambda!141288))))

(declare-fun bs!633952 () Bool)

(assert (= bs!633952 (and d!1289706 d!1289490)))

(assert (=> bs!633952 (= (= lt!1572022 lt!1572401) (= lambda!141289 lambda!141257))))

(declare-fun bs!633953 () Bool)

(assert (= bs!633953 (and d!1289706 b!4360068)))

(assert (=> bs!633953 (= (= lt!1572022 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141289 lambda!141263))))

(declare-fun bs!633954 () Bool)

(assert (= bs!633954 (and d!1289706 b!4359876)))

(assert (=> bs!633954 (= (= lt!1572022 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141289 lambda!141228))))

(declare-fun bs!633955 () Bool)

(assert (= bs!633955 (and d!1289706 b!4359929)))

(assert (=> bs!633955 (= (= lt!1572022 lt!1572326) (= lambda!141289 lambda!141244))))

(declare-fun bs!633956 () Bool)

(assert (= bs!633956 (and d!1289706 d!1289236)))

(assert (=> bs!633956 (not (= lambda!141289 lambda!141177))))

(declare-fun bs!633957 () Bool)

(assert (= bs!633957 (and d!1289706 d!1289224)))

(assert (=> bs!633957 (= (= lt!1572022 lt!1572027) (= lambda!141289 lambda!141170))))

(declare-fun bs!633958 () Bool)

(assert (= bs!633958 (and d!1289706 d!1289374)))

(assert (=> bs!633958 (= (= lt!1572022 lt!1572234) (= lambda!141289 lambda!141217))))

(declare-fun bs!633959 () Bool)

(assert (= bs!633959 (and d!1289706 b!4359986)))

(assert (=> bs!633959 (= (= lt!1572022 lt!1572396) (= lambda!141289 lambda!141256))))

(assert (=> bs!633945 (= (= lt!1572022 lt!1572572) (= lambda!141289 lambda!141287))))

(declare-fun bs!633960 () Bool)

(assert (= bs!633960 (and d!1289706 d!1289146)))

(assert (=> bs!633960 (= (= lt!1572022 lt!1571927) (= lambda!141289 lambda!141158))))

(declare-fun bs!633961 () Bool)

(assert (= bs!633961 (and d!1289706 d!1289440)))

(assert (=> bs!633961 (= (= lt!1572022 lt!1572331) (= lambda!141289 lambda!141246))))

(declare-fun bs!633962 () Bool)

(assert (= bs!633962 (and d!1289706 b!4359814)))

(assert (=> bs!633962 (= (= lt!1572022 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141289 lambda!141213))))

(assert (=> bs!633959 (= (= lt!1572022 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141289 lambda!141255))))

(declare-fun bs!633964 () Bool)

(assert (= bs!633964 (and d!1289706 b!4359308)))

(assert (=> bs!633964 (= (= lt!1572022 lt!1571643) (= lambda!141289 lambda!141155))))

(declare-fun bs!633965 () Bool)

(assert (= bs!633965 (and d!1289706 b!4359877)))

(assert (=> bs!633965 (= (= lt!1572022 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141289 lambda!141223))))

(declare-fun bs!633966 () Bool)

(assert (= bs!633966 (and d!1289706 b!4359397)))

(assert (=> bs!633966 (= lambda!141289 lambda!141169)))

(assert (=> bs!633948 (= (= lt!1572022 lt!1571922) (= lambda!141289 lambda!141157))))

(assert (=> bs!633955 (= (= lt!1572022 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141289 lambda!141241))))

(declare-fun bs!633968 () Bool)

(assert (= bs!633968 (and d!1289706 b!4359930)))

(assert (=> bs!633968 (= (= lt!1572022 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141289 lambda!141239))))

(declare-fun bs!633969 () Bool)

(assert (= bs!633969 (and d!1289706 d!1289458)))

(assert (=> bs!633969 (= (= lt!1572022 lt!1571642) (= lambda!141289 lambda!141248))))

(assert (=> bs!633966 (= (= lt!1572022 lt!1571642) (= lambda!141289 lambda!141168))))

(declare-fun bs!633970 () Bool)

(assert (= bs!633970 (and d!1289706 b!4359987)))

(assert (=> bs!633970 (= (= lt!1572022 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141289 lambda!141253))))

(assert (=> bs!633954 (= (= lt!1572022 lt!1572280) (= lambda!141289 lambda!141229))))

(declare-fun bs!633971 () Bool)

(assert (= bs!633971 (and d!1289706 b!4359398)))

(assert (=> bs!633971 (= (= lt!1572022 lt!1571642) (= lambda!141289 lambda!141167))))

(declare-fun bs!633972 () Bool)

(assert (= bs!633972 (and d!1289706 d!1289410)))

(assert (=> bs!633972 (= (= lt!1572022 lt!1572285) (= lambda!141289 lambda!141231))))

(declare-fun bs!633973 () Bool)

(assert (= bs!633973 (and d!1289706 d!1289310)))

(assert (=> bs!633973 (= (= lt!1572022 lt!1571643) (= lambda!141289 lambda!141200))))

(assert (=> bs!633962 (= (= lt!1572022 lt!1572229) (= lambda!141289 lambda!141214))))

(assert (=> d!1289706 true))

(assert (=> d!1289706 (forall!9142 (toList!2986 lt!1571642) lambda!141289)))

(declare-fun lt!1572644 () Unit!72045)

(assert (=> d!1289706 (= lt!1572644 (choose!26992 lt!1571642 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> d!1289706 (forall!9142 (toList!2986 (+!660 lt!1571642 (tuple2!48375 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))) lambda!141289)))

(assert (=> d!1289706 (= (addForallContainsKeyThenBeforeAdding!67 lt!1571642 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) lt!1572644)))

(declare-fun bs!633974 () Bool)

(assert (= bs!633974 d!1289706))

(declare-fun m!4977869 () Bool)

(assert (=> bs!633974 m!4977869))

(declare-fun m!4977871 () Bool)

(assert (=> bs!633974 m!4977871))

(declare-fun m!4977873 () Bool)

(assert (=> bs!633974 m!4977873))

(declare-fun m!4977875 () Bool)

(assert (=> bs!633974 m!4977875))

(assert (=> b!4359397 d!1289706))

(declare-fun d!1289718 () Bool)

(declare-fun res!1792608 () Bool)

(declare-fun e!2713595 () Bool)

(assert (=> d!1289718 (=> res!1792608 e!2713595)))

(assert (=> d!1289718 (= res!1792608 ((_ is Nil!48961) (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289718 (= (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))) lambda!141169) e!2713595)))

(declare-fun b!4360343 () Bool)

(declare-fun e!2713596 () Bool)

(assert (=> b!4360343 (= e!2713595 e!2713596)))

(declare-fun res!1792609 () Bool)

(assert (=> b!4360343 (=> (not res!1792609) (not e!2713596))))

(assert (=> b!4360343 (= res!1792609 (dynLambda!20645 lambda!141169 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360344 () Bool)

(assert (=> b!4360344 (= e!2713596 (forall!9142 (t!356005 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))) lambda!141169))))

(assert (= (and d!1289718 (not res!1792608)) b!4360343))

(assert (= (and b!4360343 res!1792609) b!4360344))

(declare-fun b_lambda!131643 () Bool)

(assert (=> (not b_lambda!131643) (not b!4360343)))

(declare-fun m!4977877 () Bool)

(assert (=> b!4360343 m!4977877))

(declare-fun m!4977879 () Bool)

(assert (=> b!4360344 m!4977879))

(assert (=> b!4359397 d!1289718))

(assert (=> b!4359372 d!1289630))

(declare-fun d!1289720 () Bool)

(assert (=> d!1289720 (containsKey!717 (toList!2986 lt!1571642) key!3918)))

(declare-fun lt!1572647 () Unit!72045)

(assert (=> d!1289720 (= lt!1572647 (choose!26989 (toList!2986 lt!1571642) key!3918))))

(assert (=> d!1289720 (invariantList!684 (toList!2986 lt!1571642))))

(assert (=> d!1289720 (= (lemmaInGetKeysListThenContainsKey!130 (toList!2986 lt!1571642) key!3918) lt!1572647)))

(declare-fun bs!633975 () Bool)

(assert (= bs!633975 d!1289720))

(assert (=> bs!633975 m!4976007))

(declare-fun m!4977881 () Bool)

(assert (=> bs!633975 m!4977881))

(assert (=> bs!633975 m!4976265))

(assert (=> b!4359372 d!1289720))

(declare-fun d!1289722 () Bool)

(declare-fun lt!1572648 () Bool)

(assert (=> d!1289722 (= lt!1572648 (select (content!7733 (toList!2985 lt!1571998)) lt!1571639))))

(declare-fun e!2713598 () Bool)

(assert (=> d!1289722 (= lt!1572648 e!2713598)))

(declare-fun res!1792611 () Bool)

(assert (=> d!1289722 (=> (not res!1792611) (not e!2713598))))

(assert (=> d!1289722 (= res!1792611 ((_ is Cons!48962) (toList!2985 lt!1571998)))))

(assert (=> d!1289722 (= (contains!11185 (toList!2985 lt!1571998) lt!1571639) lt!1572648)))

(declare-fun b!4360345 () Bool)

(declare-fun e!2713597 () Bool)

(assert (=> b!4360345 (= e!2713598 e!2713597)))

(declare-fun res!1792610 () Bool)

(assert (=> b!4360345 (=> res!1792610 e!2713597)))

(assert (=> b!4360345 (= res!1792610 (= (h!54519 (toList!2985 lt!1571998)) lt!1571639))))

(declare-fun b!4360346 () Bool)

(assert (=> b!4360346 (= e!2713597 (contains!11185 (t!356006 (toList!2985 lt!1571998)) lt!1571639))))

(assert (= (and d!1289722 res!1792611) b!4360345))

(assert (= (and b!4360345 (not res!1792610)) b!4360346))

(declare-fun m!4977887 () Bool)

(assert (=> d!1289722 m!4977887))

(declare-fun m!4977889 () Bool)

(assert (=> d!1289722 m!4977889))

(declare-fun m!4977891 () Bool)

(assert (=> b!4360346 m!4977891))

(assert (=> b!4359383 d!1289722))

(declare-fun d!1289726 () Bool)

(assert (=> d!1289726 (= (invariantList!684 (toList!2986 lt!1571927)) (noDuplicatedKeys!121 (toList!2986 lt!1571927)))))

(declare-fun bs!633976 () Bool)

(assert (= bs!633976 d!1289726))

(declare-fun m!4977899 () Bool)

(assert (=> bs!633976 m!4977899))

(assert (=> b!4359306 d!1289726))

(declare-fun d!1289730 () Bool)

(declare-fun res!1792614 () Bool)

(declare-fun e!2713603 () Bool)

(assert (=> d!1289730 (=> res!1792614 e!2713603)))

(assert (=> d!1289730 (= res!1792614 ((_ is Nil!48961) (ite c!741181 (toList!2986 lt!1571643) (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289730 (= (forall!9142 (ite c!741181 (toList!2986 lt!1571643) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741181 lambda!141155 lambda!141157)) e!2713603)))

(declare-fun b!4360353 () Bool)

(declare-fun e!2713604 () Bool)

(assert (=> b!4360353 (= e!2713603 e!2713604)))

(declare-fun res!1792615 () Bool)

(assert (=> b!4360353 (=> (not res!1792615) (not e!2713604))))

(assert (=> b!4360353 (= res!1792615 (dynLambda!20645 (ite c!741181 lambda!141155 lambda!141157) (h!54518 (ite c!741181 (toList!2986 lt!1571643) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360354 () Bool)

(assert (=> b!4360354 (= e!2713604 (forall!9142 (t!356005 (ite c!741181 (toList!2986 lt!1571643) (_2!27482 (h!54519 (toList!2985 lm!1707))))) (ite c!741181 lambda!141155 lambda!141157)))))

(assert (= (and d!1289730 (not res!1792614)) b!4360353))

(assert (= (and b!4360353 res!1792615) b!4360354))

(declare-fun b_lambda!131645 () Bool)

(assert (=> (not b_lambda!131645) (not b!4360353)))

(declare-fun m!4977911 () Bool)

(assert (=> b!4360353 m!4977911))

(declare-fun m!4977913 () Bool)

(assert (=> b!4360354 m!4977913))

(assert (=> bm!302983 d!1289730))

(declare-fun d!1289742 () Bool)

(assert (=> d!1289742 (isDefined!7773 (getValueByKey!466 (toList!2985 lm!1707) hash!377))))

(declare-fun lt!1572654 () Unit!72045)

(declare-fun choose!26999 (List!49086 (_ BitVec 64)) Unit!72045)

(assert (=> d!1289742 (= lt!1572654 (choose!26999 (toList!2985 lm!1707) hash!377))))

(declare-fun e!2713618 () Bool)

(assert (=> d!1289742 e!2713618))

(declare-fun res!1792627 () Bool)

(assert (=> d!1289742 (=> (not res!1792627) (not e!2713618))))

(assert (=> d!1289742 (= res!1792627 (isStrictlySorted!110 (toList!2985 lm!1707)))))

(assert (=> d!1289742 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!376 (toList!2985 lm!1707) hash!377) lt!1572654)))

(declare-fun b!4360374 () Bool)

(assert (=> b!4360374 (= e!2713618 (containsKey!716 (toList!2985 lm!1707) hash!377))))

(assert (= (and d!1289742 res!1792627) b!4360374))

(assert (=> d!1289742 m!4975663))

(assert (=> d!1289742 m!4975663))

(assert (=> d!1289742 m!4975665))

(declare-fun m!4977939 () Bool)

(assert (=> d!1289742 m!4977939))

(assert (=> d!1289742 m!4975721))

(assert (=> b!4360374 m!4975659))

(assert (=> b!4359188 d!1289742))

(assert (=> b!4359188 d!1289332))

(assert (=> b!4359188 d!1289334))

(declare-fun d!1289752 () Bool)

(declare-fun c!741444 () Bool)

(assert (=> d!1289752 (= c!741444 ((_ is Nil!48961) (toList!2986 lt!1571641)))))

(declare-fun e!2713620 () (InoxSet tuple2!48374))

(assert (=> d!1289752 (= (content!7735 (toList!2986 lt!1571641)) e!2713620)))

(declare-fun b!4360377 () Bool)

(assert (=> b!4360377 (= e!2713620 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4360378 () Bool)

(assert (=> b!4360378 (= e!2713620 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 lt!1571641)) true) (content!7735 (t!356005 (toList!2986 lt!1571641)))))))

(assert (= (and d!1289752 c!741444) b!4360377))

(assert (= (and d!1289752 (not c!741444)) b!4360378))

(declare-fun m!4977949 () Bool)

(assert (=> b!4360378 m!4977949))

(declare-fun m!4977953 () Bool)

(assert (=> b!4360378 m!4977953))

(assert (=> d!1289216 d!1289752))

(declare-fun d!1289754 () Bool)

(declare-fun c!741445 () Bool)

(assert (=> d!1289754 (= c!741445 ((_ is Nil!48961) (toList!2986 lt!1571643)))))

(declare-fun e!2713621 () (InoxSet tuple2!48374))

(assert (=> d!1289754 (= (content!7735 (toList!2986 lt!1571643)) e!2713621)))

(declare-fun b!4360379 () Bool)

(assert (=> b!4360379 (= e!2713621 ((as const (Array tuple2!48374 Bool)) false))))

(declare-fun b!4360380 () Bool)

(assert (=> b!4360380 (= e!2713621 ((_ map or) (store ((as const (Array tuple2!48374 Bool)) false) (h!54518 (toList!2986 lt!1571643)) true) (content!7735 (t!356005 (toList!2986 lt!1571643)))))))

(assert (= (and d!1289754 c!741445) b!4360379))

(assert (= (and d!1289754 (not c!741445)) b!4360380))

(declare-fun m!4977957 () Bool)

(assert (=> b!4360380 m!4977957))

(declare-fun m!4977959 () Bool)

(assert (=> b!4360380 m!4977959))

(assert (=> d!1289216 d!1289754))

(assert (=> b!4359408 d!1289594))

(assert (=> b!4359408 d!1289596))

(declare-fun b!4360383 () Bool)

(declare-fun e!2713624 () Option!10480)

(assert (=> b!4360383 (= e!2713624 (Some!10479 (_2!27482 (h!54519 (toList!2985 lt!1571671)))))))

(declare-fun b!4360385 () Bool)

(declare-fun e!2713625 () Option!10480)

(assert (=> b!4360385 (= e!2713625 (getValueByKey!466 (t!356006 (toList!2985 lt!1571671)) (_1!27482 lt!1571639)))))

(declare-fun b!4360384 () Bool)

(assert (=> b!4360384 (= e!2713624 e!2713625)))

(declare-fun c!741447 () Bool)

(assert (=> b!4360384 (= c!741447 (and ((_ is Cons!48962) (toList!2985 lt!1571671)) (not (= (_1!27482 (h!54519 (toList!2985 lt!1571671))) (_1!27482 lt!1571639)))))))

(declare-fun b!4360386 () Bool)

(assert (=> b!4360386 (= e!2713625 None!10479)))

(declare-fun d!1289758 () Bool)

(declare-fun c!741446 () Bool)

(assert (=> d!1289758 (= c!741446 (and ((_ is Cons!48962) (toList!2985 lt!1571671)) (= (_1!27482 (h!54519 (toList!2985 lt!1571671))) (_1!27482 lt!1571639))))))

(assert (=> d!1289758 (= (getValueByKey!466 (toList!2985 lt!1571671) (_1!27482 lt!1571639)) e!2713624)))

(assert (= (and d!1289758 c!741446) b!4360383))

(assert (= (and d!1289758 (not c!741446)) b!4360384))

(assert (= (and b!4360384 c!741447) b!4360385))

(assert (= (and b!4360384 (not c!741447)) b!4360386))

(declare-fun m!4977965 () Bool)

(assert (=> b!4360385 m!4977965))

(assert (=> b!4359125 d!1289758))

(declare-fun d!1289762 () Bool)

(assert (=> d!1289762 (dynLambda!20643 lambda!141069 lt!1571628)))

(assert (=> d!1289762 true))

(declare-fun _$7!1480 () Unit!72045)

(assert (=> d!1289762 (= (choose!26969 (toList!2985 lm!1707) lambda!141069 lt!1571628) _$7!1480)))

(declare-fun b_lambda!131649 () Bool)

(assert (=> (not b_lambda!131649) (not d!1289762)))

(declare-fun bs!633992 () Bool)

(assert (= bs!633992 d!1289762))

(assert (=> bs!633992 m!4975713))

(assert (=> d!1289134 d!1289762))

(assert (=> d!1289134 d!1289108))

(assert (=> b!4359403 d!1289632))

(assert (=> b!4359403 d!1289248))

(assert (=> b!4359218 d!1289334))

(declare-fun d!1289768 () Bool)

(declare-fun res!1792634 () Bool)

(declare-fun e!2713627 () Bool)

(assert (=> d!1289768 (=> res!1792634 e!2713627)))

(assert (=> d!1289768 (= res!1792634 ((_ is Nil!48961) (ite c!741204 (toList!2986 lt!1571642) (_2!27482 (h!54519 (toList!2985 lm!1707))))))))

(assert (=> d!1289768 (= (forall!9142 (ite c!741204 (toList!2986 lt!1571642) (_2!27482 (h!54519 (toList!2985 lm!1707)))) (ite c!741204 lambda!141167 lambda!141169)) e!2713627)))

(declare-fun b!4360389 () Bool)

(declare-fun e!2713628 () Bool)

(assert (=> b!4360389 (= e!2713627 e!2713628)))

(declare-fun res!1792635 () Bool)

(assert (=> b!4360389 (=> (not res!1792635) (not e!2713628))))

(assert (=> b!4360389 (= res!1792635 (dynLambda!20645 (ite c!741204 lambda!141167 lambda!141169) (h!54518 (ite c!741204 (toList!2986 lt!1571642) (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun b!4360390 () Bool)

(assert (=> b!4360390 (= e!2713628 (forall!9142 (t!356005 (ite c!741204 (toList!2986 lt!1571642) (_2!27482 (h!54519 (toList!2985 lm!1707))))) (ite c!741204 lambda!141167 lambda!141169)))))

(assert (= (and d!1289768 (not res!1792634)) b!4360389))

(assert (= (and b!4360389 res!1792635) b!4360390))

(declare-fun b_lambda!131651 () Bool)

(assert (=> (not b_lambda!131651) (not b!4360389)))

(declare-fun m!4977983 () Bool)

(assert (=> b!4360389 m!4977983))

(declare-fun m!4977985 () Bool)

(assert (=> b!4360390 m!4977985))

(assert (=> bm!302990 d!1289768))

(declare-fun d!1289770 () Bool)

(assert (=> d!1289770 (isDefined!7774 (getValueByKey!467 (toList!2986 lt!1571642) key!3918))))

(declare-fun lt!1572663 () Unit!72045)

(assert (=> d!1289770 (= lt!1572663 (choose!26997 (toList!2986 lt!1571642) key!3918))))

(assert (=> d!1289770 (invariantList!684 (toList!2986 lt!1571642))))

(assert (=> d!1289770 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!377 (toList!2986 lt!1571642) key!3918) lt!1572663)))

(declare-fun bs!633993 () Bool)

(assert (= bs!633993 d!1289770))

(assert (=> bs!633993 m!4976017))

(assert (=> bs!633993 m!4976017))

(assert (=> bs!633993 m!4976019))

(declare-fun m!4977987 () Bool)

(assert (=> bs!633993 m!4977987))

(assert (=> bs!633993 m!4976265))

(assert (=> b!4359375 d!1289770))

(assert (=> b!4359375 d!1289582))

(assert (=> b!4359375 d!1289584))

(declare-fun d!1289772 () Bool)

(assert (=> d!1289772 (contains!11189 (getKeysList!132 (toList!2986 lt!1571642)) key!3918)))

(declare-fun lt!1572664 () Unit!72045)

(assert (=> d!1289772 (= lt!1572664 (choose!26998 (toList!2986 lt!1571642) key!3918))))

(assert (=> d!1289772 (invariantList!684 (toList!2986 lt!1571642))))

(assert (=> d!1289772 (= (lemmaInListThenGetKeysListContains!129 (toList!2986 lt!1571642) key!3918) lt!1572664)))

(declare-fun bs!633994 () Bool)

(assert (= bs!633994 d!1289772))

(assert (=> bs!633994 m!4976005))

(assert (=> bs!633994 m!4976005))

(declare-fun m!4977989 () Bool)

(assert (=> bs!633994 m!4977989))

(declare-fun m!4977991 () Bool)

(assert (=> bs!633994 m!4977991))

(assert (=> bs!633994 m!4976265))

(assert (=> b!4359375 d!1289772))

(declare-fun bs!633995 () Bool)

(declare-fun b!4360394 () Bool)

(assert (= bs!633995 (and b!4360394 b!4360246)))

(declare-fun lambda!141292 () Int)

(assert (=> bs!633995 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141292 lambda!141281))))

(declare-fun bs!633996 () Bool)

(assert (= bs!633996 (and b!4360394 b!4360245)))

(assert (=> bs!633996 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141292 lambda!141283))))

(declare-fun bs!633997 () Bool)

(assert (= bs!633997 (and b!4360394 b!4360067)))

(assert (=> bs!633997 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572435) (= lambda!141292 lambda!141266))))

(declare-fun bs!633998 () Bool)

(assert (= bs!633998 (and b!4360394 d!1289512)))

(assert (=> bs!633998 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571922) (= lambda!141292 lambda!141262))))

(assert (=> bs!633997 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141292 lambda!141265))))

(declare-fun bs!633999 () Bool)

(assert (= bs!633999 (and b!4360394 b!4359307)))

(assert (=> bs!633999 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141292 lambda!141156))))

(declare-fun bs!634000 () Bool)

(assert (= bs!634000 (and b!4360394 d!1289530)))

(assert (=> bs!634000 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572440) (= lambda!141292 lambda!141268))))

(declare-fun bs!634001 () Bool)

(assert (= bs!634001 (and b!4360394 b!4359815)))

(assert (=> bs!634001 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141292 lambda!141212))))

(declare-fun bs!634002 () Bool)

(assert (= bs!634002 (and b!4360394 d!1289650)))

(assert (=> bs!634002 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572577) (= lambda!141292 lambda!141288))))

(declare-fun bs!634003 () Bool)

(assert (= bs!634003 (and b!4360394 d!1289490)))

(assert (=> bs!634003 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572401) (= lambda!141292 lambda!141257))))

(declare-fun bs!634004 () Bool)

(assert (= bs!634004 (and b!4360394 b!4360068)))

(assert (=> bs!634004 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141292 lambda!141263))))

(declare-fun bs!634005 () Bool)

(assert (= bs!634005 (and b!4360394 b!4359876)))

(assert (=> bs!634005 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141292 lambda!141228))))

(declare-fun bs!634006 () Bool)

(assert (= bs!634006 (and b!4360394 b!4359929)))

(assert (=> bs!634006 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572326) (= lambda!141292 lambda!141244))))

(declare-fun bs!634007 () Bool)

(assert (= bs!634007 (and b!4360394 d!1289236)))

(assert (=> bs!634007 (not (= lambda!141292 lambda!141177))))

(declare-fun bs!634008 () Bool)

(assert (= bs!634008 (and b!4360394 d!1289224)))

(assert (=> bs!634008 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572027) (= lambda!141292 lambda!141170))))

(declare-fun bs!634009 () Bool)

(assert (= bs!634009 (and b!4360394 d!1289374)))

(assert (=> bs!634009 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572234) (= lambda!141292 lambda!141217))))

(declare-fun bs!634010 () Bool)

(assert (= bs!634010 (and b!4360394 b!4359986)))

(assert (=> bs!634010 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572396) (= lambda!141292 lambda!141256))))

(assert (=> bs!633996 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572572) (= lambda!141292 lambda!141287))))

(declare-fun bs!634011 () Bool)

(assert (= bs!634011 (and b!4360394 d!1289146)))

(assert (=> bs!634011 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571927) (= lambda!141292 lambda!141158))))

(declare-fun bs!634012 () Bool)

(assert (= bs!634012 (and b!4360394 d!1289440)))

(assert (=> bs!634012 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572331) (= lambda!141292 lambda!141246))))

(declare-fun bs!634013 () Bool)

(assert (= bs!634013 (and b!4360394 b!4359814)))

(assert (=> bs!634013 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141292 lambda!141213))))

(assert (=> bs!634010 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141292 lambda!141255))))

(declare-fun bs!634014 () Bool)

(assert (= bs!634014 (and b!4360394 b!4359308)))

(assert (=> bs!634014 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141292 lambda!141155))))

(declare-fun bs!634015 () Bool)

(assert (= bs!634015 (and b!4360394 b!4359877)))

(assert (=> bs!634015 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141292 lambda!141223))))

(declare-fun bs!634016 () Bool)

(assert (= bs!634016 (and b!4360394 b!4359397)))

(assert (=> bs!634016 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572022) (= lambda!141292 lambda!141169))))

(assert (=> bs!633999 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571922) (= lambda!141292 lambda!141157))))

(assert (=> bs!634006 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141292 lambda!141241))))

(declare-fun bs!634017 () Bool)

(assert (= bs!634017 (and b!4360394 b!4359930)))

(assert (=> bs!634017 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141292 lambda!141239))))

(declare-fun bs!634018 () Bool)

(assert (= bs!634018 (and b!4360394 d!1289458)))

(assert (=> bs!634018 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141292 lambda!141248))))

(declare-fun bs!634019 () Bool)

(assert (= bs!634019 (and b!4360394 d!1289706)))

(assert (=> bs!634019 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572022) (= lambda!141292 lambda!141289))))

(assert (=> bs!634016 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141292 lambda!141168))))

(declare-fun bs!634020 () Bool)

(assert (= bs!634020 (and b!4360394 b!4359987)))

(assert (=> bs!634020 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141292 lambda!141253))))

(assert (=> bs!634005 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572280) (= lambda!141292 lambda!141229))))

(declare-fun bs!634021 () Bool)

(assert (= bs!634021 (and b!4360394 b!4359398)))

(assert (=> bs!634021 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141292 lambda!141167))))

(declare-fun bs!634022 () Bool)

(assert (= bs!634022 (and b!4360394 d!1289410)))

(assert (=> bs!634022 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572285) (= lambda!141292 lambda!141231))))

(declare-fun bs!634023 () Bool)

(assert (= bs!634023 (and b!4360394 d!1289310)))

(assert (=> bs!634023 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141292 lambda!141200))))

(assert (=> bs!634013 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572229) (= lambda!141292 lambda!141214))))

(assert (=> b!4360394 true))

(declare-fun bs!634024 () Bool)

(declare-fun b!4360393 () Bool)

(assert (= bs!634024 (and b!4360393 b!4360246)))

(declare-fun lambda!141293 () Int)

(assert (=> bs!634024 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141293 lambda!141281))))

(declare-fun bs!634025 () Bool)

(assert (= bs!634025 (and b!4360393 b!4360245)))

(assert (=> bs!634025 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141293 lambda!141283))))

(declare-fun bs!634026 () Bool)

(assert (= bs!634026 (and b!4360393 b!4360067)))

(assert (=> bs!634026 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572435) (= lambda!141293 lambda!141266))))

(declare-fun bs!634027 () Bool)

(assert (= bs!634027 (and b!4360393 d!1289512)))

(assert (=> bs!634027 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571922) (= lambda!141293 lambda!141262))))

(assert (=> bs!634026 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141293 lambda!141265))))

(declare-fun bs!634028 () Bool)

(assert (= bs!634028 (and b!4360393 b!4359307)))

(assert (=> bs!634028 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141293 lambda!141156))))

(declare-fun bs!634029 () Bool)

(assert (= bs!634029 (and b!4360393 d!1289530)))

(assert (=> bs!634029 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572440) (= lambda!141293 lambda!141268))))

(declare-fun bs!634030 () Bool)

(assert (= bs!634030 (and b!4360393 b!4359815)))

(assert (=> bs!634030 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141293 lambda!141212))))

(declare-fun bs!634031 () Bool)

(assert (= bs!634031 (and b!4360393 d!1289490)))

(assert (=> bs!634031 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572401) (= lambda!141293 lambda!141257))))

(declare-fun bs!634032 () Bool)

(assert (= bs!634032 (and b!4360393 b!4360068)))

(assert (=> bs!634032 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141293 lambda!141263))))

(declare-fun bs!634033 () Bool)

(assert (= bs!634033 (and b!4360393 b!4359876)))

(assert (=> bs!634033 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141293 lambda!141228))))

(declare-fun bs!634034 () Bool)

(assert (= bs!634034 (and b!4360393 b!4359929)))

(assert (=> bs!634034 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572326) (= lambda!141293 lambda!141244))))

(declare-fun bs!634035 () Bool)

(assert (= bs!634035 (and b!4360393 d!1289236)))

(assert (=> bs!634035 (not (= lambda!141293 lambda!141177))))

(declare-fun bs!634036 () Bool)

(assert (= bs!634036 (and b!4360393 d!1289224)))

(assert (=> bs!634036 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572027) (= lambda!141293 lambda!141170))))

(declare-fun bs!634037 () Bool)

(assert (= bs!634037 (and b!4360393 d!1289374)))

(assert (=> bs!634037 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572234) (= lambda!141293 lambda!141217))))

(declare-fun bs!634038 () Bool)

(assert (= bs!634038 (and b!4360393 b!4359986)))

(assert (=> bs!634038 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572396) (= lambda!141293 lambda!141256))))

(assert (=> bs!634025 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572572) (= lambda!141293 lambda!141287))))

(declare-fun bs!634039 () Bool)

(assert (= bs!634039 (and b!4360393 d!1289146)))

(assert (=> bs!634039 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571927) (= lambda!141293 lambda!141158))))

(declare-fun bs!634040 () Bool)

(assert (= bs!634040 (and b!4360393 d!1289440)))

(assert (=> bs!634040 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572331) (= lambda!141293 lambda!141246))))

(declare-fun bs!634041 () Bool)

(assert (= bs!634041 (and b!4360393 b!4359814)))

(assert (=> bs!634041 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141293 lambda!141213))))

(assert (=> bs!634038 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141293 lambda!141255))))

(declare-fun bs!634042 () Bool)

(assert (= bs!634042 (and b!4360393 b!4359308)))

(assert (=> bs!634042 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141293 lambda!141155))))

(declare-fun bs!634043 () Bool)

(assert (= bs!634043 (and b!4360393 b!4359877)))

(assert (=> bs!634043 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141293 lambda!141223))))

(declare-fun bs!634044 () Bool)

(assert (= bs!634044 (and b!4360393 b!4359397)))

(assert (=> bs!634044 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572022) (= lambda!141293 lambda!141169))))

(assert (=> bs!634028 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571922) (= lambda!141293 lambda!141157))))

(assert (=> bs!634034 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141293 lambda!141241))))

(declare-fun bs!634045 () Bool)

(assert (= bs!634045 (and b!4360393 b!4359930)))

(assert (=> bs!634045 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141293 lambda!141239))))

(declare-fun bs!634046 () Bool)

(assert (= bs!634046 (and b!4360393 d!1289458)))

(assert (=> bs!634046 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141293 lambda!141248))))

(declare-fun bs!634047 () Bool)

(assert (= bs!634047 (and b!4360393 d!1289706)))

(assert (=> bs!634047 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572022) (= lambda!141293 lambda!141289))))

(assert (=> bs!634044 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141293 lambda!141168))))

(declare-fun bs!634048 () Bool)

(assert (= bs!634048 (and b!4360393 b!4359987)))

(assert (=> bs!634048 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141293 lambda!141253))))

(assert (=> bs!634033 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572280) (= lambda!141293 lambda!141229))))

(declare-fun bs!634049 () Bool)

(assert (= bs!634049 (and b!4360393 b!4359398)))

(assert (=> bs!634049 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571642) (= lambda!141293 lambda!141167))))

(declare-fun bs!634050 () Bool)

(assert (= bs!634050 (and b!4360393 d!1289410)))

(assert (=> bs!634050 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572285) (= lambda!141293 lambda!141231))))

(declare-fun bs!634051 () Bool)

(assert (= bs!634051 (and b!4360393 d!1289310)))

(assert (=> bs!634051 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1571643) (= lambda!141293 lambda!141200))))

(assert (=> bs!634041 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572229) (= lambda!141293 lambda!141214))))

(declare-fun bs!634052 () Bool)

(assert (= bs!634052 (and b!4360393 b!4360394)))

(assert (=> bs!634052 (= lambda!141293 lambda!141292)))

(declare-fun bs!634053 () Bool)

(assert (= bs!634053 (and b!4360393 d!1289650)))

(assert (=> bs!634053 (= (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572577) (= lambda!141293 lambda!141288))))

(assert (=> b!4360393 true))

(declare-fun lambda!141294 () Int)

(declare-fun lt!1572671 () ListMap!2229)

(assert (=> bs!634024 (= (= lt!1572671 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141294 lambda!141281))))

(assert (=> bs!634025 (= (= lt!1572671 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141294 lambda!141283))))

(assert (=> bs!634026 (= (= lt!1572671 lt!1572435) (= lambda!141294 lambda!141266))))

(assert (=> bs!634027 (= (= lt!1572671 lt!1571922) (= lambda!141294 lambda!141262))))

(assert (=> bs!634026 (= (= lt!1572671 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141294 lambda!141265))))

(assert (=> bs!634028 (= (= lt!1572671 lt!1571643) (= lambda!141294 lambda!141156))))

(assert (=> bs!634029 (= (= lt!1572671 lt!1572440) (= lambda!141294 lambda!141268))))

(assert (=> bs!634030 (= (= lt!1572671 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141294 lambda!141212))))

(assert (=> bs!634031 (= (= lt!1572671 lt!1572401) (= lambda!141294 lambda!141257))))

(assert (=> bs!634032 (= (= lt!1572671 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141294 lambda!141263))))

(assert (=> bs!634033 (= (= lt!1572671 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141294 lambda!141228))))

(assert (=> bs!634034 (= (= lt!1572671 lt!1572326) (= lambda!141294 lambda!141244))))

(assert (=> bs!634035 (not (= lambda!141294 lambda!141177))))

(assert (=> bs!634036 (= (= lt!1572671 lt!1572027) (= lambda!141294 lambda!141170))))

(assert (=> bs!634037 (= (= lt!1572671 lt!1572234) (= lambda!141294 lambda!141217))))

(assert (=> bs!634038 (= (= lt!1572671 lt!1572396) (= lambda!141294 lambda!141256))))

(assert (=> bs!634025 (= (= lt!1572671 lt!1572572) (= lambda!141294 lambda!141287))))

(assert (=> bs!634039 (= (= lt!1572671 lt!1571927) (= lambda!141294 lambda!141158))))

(assert (=> bs!634040 (= (= lt!1572671 lt!1572331) (= lambda!141294 lambda!141246))))

(assert (=> bs!634041 (= (= lt!1572671 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141294 lambda!141213))))

(assert (=> bs!634038 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141294 lambda!141255))))

(assert (=> bs!634042 (= (= lt!1572671 lt!1571643) (= lambda!141294 lambda!141155))))

(assert (=> bs!634043 (= (= lt!1572671 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141294 lambda!141223))))

(assert (=> bs!634044 (= (= lt!1572671 lt!1572022) (= lambda!141294 lambda!141169))))

(assert (=> bs!634028 (= (= lt!1572671 lt!1571922) (= lambda!141294 lambda!141157))))

(assert (=> bs!634034 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141294 lambda!141241))))

(assert (=> bs!634045 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141294 lambda!141239))))

(assert (=> bs!634046 (= (= lt!1572671 lt!1571642) (= lambda!141294 lambda!141248))))

(assert (=> bs!634047 (= (= lt!1572671 lt!1572022) (= lambda!141294 lambda!141289))))

(assert (=> bs!634044 (= (= lt!1572671 lt!1571642) (= lambda!141294 lambda!141168))))

(assert (=> bs!634048 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141294 lambda!141253))))

(assert (=> bs!634033 (= (= lt!1572671 lt!1572280) (= lambda!141294 lambda!141229))))

(assert (=> bs!634049 (= (= lt!1572671 lt!1571642) (= lambda!141294 lambda!141167))))

(assert (=> bs!634050 (= (= lt!1572671 lt!1572285) (= lambda!141294 lambda!141231))))

(assert (=> bs!634051 (= (= lt!1572671 lt!1571643) (= lambda!141294 lambda!141200))))

(assert (=> bs!634041 (= (= lt!1572671 lt!1572229) (= lambda!141294 lambda!141214))))

(assert (=> bs!634053 (= (= lt!1572671 lt!1572577) (= lambda!141294 lambda!141288))))

(assert (=> bs!634052 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (= lambda!141294 lambda!141292))))

(assert (=> b!4360393 (= (= lt!1572671 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (= lambda!141294 lambda!141293))))

(assert (=> b!4360393 true))

(declare-fun bs!634064 () Bool)

(declare-fun d!1289774 () Bool)

(assert (= bs!634064 (and d!1289774 b!4360246)))

(declare-fun lt!1572676 () ListMap!2229)

(declare-fun lambda!141296 () Int)

(assert (=> bs!634064 (= (= lt!1572676 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141296 lambda!141281))))

(declare-fun bs!634065 () Bool)

(assert (= bs!634065 (and d!1289774 b!4360245)))

(assert (=> bs!634065 (= (= lt!1572676 (+!660 lt!1571642 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141296 lambda!141283))))

(declare-fun bs!634066 () Bool)

(assert (= bs!634066 (and d!1289774 b!4360067)))

(assert (=> bs!634066 (= (= lt!1572676 lt!1572435) (= lambda!141296 lambda!141266))))

(declare-fun bs!634067 () Bool)

(assert (= bs!634067 (and d!1289774 d!1289512)))

(assert (=> bs!634067 (= (= lt!1572676 lt!1571922) (= lambda!141296 lambda!141262))))

(assert (=> bs!634066 (= (= lt!1572676 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141296 lambda!141265))))

(declare-fun bs!634068 () Bool)

(assert (= bs!634068 (and d!1289774 b!4359307)))

(assert (=> bs!634068 (= (= lt!1572676 lt!1571643) (= lambda!141296 lambda!141156))))

(declare-fun bs!634069 () Bool)

(assert (= bs!634069 (and d!1289774 b!4359815)))

(assert (=> bs!634069 (= (= lt!1572676 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141296 lambda!141212))))

(declare-fun bs!634070 () Bool)

(assert (= bs!634070 (and d!1289774 d!1289490)))

(assert (=> bs!634070 (= (= lt!1572676 lt!1572401) (= lambda!141296 lambda!141257))))

(declare-fun bs!634071 () Bool)

(assert (= bs!634071 (and d!1289774 b!4360068)))

(assert (=> bs!634071 (= (= lt!1572676 (+!660 lt!1571643 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (= lambda!141296 lambda!141263))))

(declare-fun bs!634072 () Bool)

(assert (= bs!634072 (and d!1289774 b!4359876)))

(assert (=> bs!634072 (= (= lt!1572676 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141296 lambda!141228))))

(declare-fun bs!634073 () Bool)

(assert (= bs!634073 (and d!1289774 b!4359929)))

(assert (=> bs!634073 (= (= lt!1572676 lt!1572326) (= lambda!141296 lambda!141244))))

(declare-fun bs!634074 () Bool)

(assert (= bs!634074 (and d!1289774 d!1289236)))

(assert (=> bs!634074 (not (= lambda!141296 lambda!141177))))

(declare-fun bs!634075 () Bool)

(assert (= bs!634075 (and d!1289774 d!1289224)))

(assert (=> bs!634075 (= (= lt!1572676 lt!1572027) (= lambda!141296 lambda!141170))))

(declare-fun bs!634077 () Bool)

(assert (= bs!634077 (and d!1289774 d!1289374)))

(assert (=> bs!634077 (= (= lt!1572676 lt!1572234) (= lambda!141296 lambda!141217))))

(declare-fun bs!634079 () Bool)

(assert (= bs!634079 (and d!1289774 b!4359986)))

(assert (=> bs!634079 (= (= lt!1572676 lt!1572396) (= lambda!141296 lambda!141256))))

(assert (=> bs!634065 (= (= lt!1572676 lt!1572572) (= lambda!141296 lambda!141287))))

(declare-fun bs!634081 () Bool)

(assert (= bs!634081 (and d!1289774 d!1289146)))

(assert (=> bs!634081 (= (= lt!1572676 lt!1571927) (= lambda!141296 lambda!141158))))

(declare-fun bs!634083 () Bool)

(assert (= bs!634083 (and d!1289774 d!1289440)))

(assert (=> bs!634083 (= (= lt!1572676 lt!1572331) (= lambda!141296 lambda!141246))))

(declare-fun bs!634085 () Bool)

(assert (= bs!634085 (and d!1289774 b!4359814)))

(assert (=> bs!634085 (= (= lt!1572676 (extractMap!560 (t!356006 (t!356006 (toList!2985 lm!1707))))) (= lambda!141296 lambda!141213))))

(assert (=> bs!634079 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141296 lambda!141255))))

(declare-fun bs!634087 () Bool)

(assert (= bs!634087 (and d!1289774 b!4359308)))

(assert (=> bs!634087 (= (= lt!1572676 lt!1571643) (= lambda!141296 lambda!141155))))

(declare-fun bs!634089 () Bool)

(assert (= bs!634089 (and d!1289774 b!4359877)))

(assert (=> bs!634089 (= (= lt!1572676 (+!660 lt!1571642 (tuple2!48375 key!3918 newValue!99))) (= lambda!141296 lambda!141223))))

(declare-fun bs!634090 () Bool)

(assert (= bs!634090 (and d!1289774 b!4359397)))

(assert (=> bs!634090 (= (= lt!1572676 lt!1572022) (= lambda!141296 lambda!141169))))

(assert (=> bs!634068 (= (= lt!1572676 lt!1571922) (= lambda!141296 lambda!141157))))

(assert (=> bs!634073 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141296 lambda!141241))))

(declare-fun bs!634094 () Bool)

(assert (= bs!634094 (and d!1289774 b!4359930)))

(assert (=> bs!634094 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 lt!1571646)))) (= lambda!141296 lambda!141239))))

(declare-fun bs!634096 () Bool)

(assert (= bs!634096 (and d!1289774 d!1289458)))

(assert (=> bs!634096 (= (= lt!1572676 lt!1571642) (= lambda!141296 lambda!141248))))

(declare-fun bs!634098 () Bool)

(assert (= bs!634098 (and d!1289774 d!1289706)))

(assert (=> bs!634098 (= (= lt!1572676 lt!1572022) (= lambda!141296 lambda!141289))))

(assert (=> bs!634090 (= (= lt!1572676 lt!1571642) (= lambda!141296 lambda!141168))))

(declare-fun bs!634100 () Bool)

(assert (= bs!634100 (and d!1289774 b!4359987)))

(assert (=> bs!634100 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 lm!1707)))) (= lambda!141296 lambda!141253))))

(declare-fun bs!634102 () Bool)

(assert (= bs!634102 (and d!1289774 d!1289530)))

(assert (=> bs!634102 (= (= lt!1572676 lt!1572440) (= lambda!141296 lambda!141268))))

(declare-fun bs!634104 () Bool)

(assert (= bs!634104 (and d!1289774 b!4360393)))

(assert (=> bs!634104 (= (= lt!1572676 lt!1572671) (= lambda!141296 lambda!141294))))

(assert (=> bs!634072 (= (= lt!1572676 lt!1572280) (= lambda!141296 lambda!141229))))

(declare-fun bs!634107 () Bool)

(assert (= bs!634107 (and d!1289774 b!4359398)))

(assert (=> bs!634107 (= (= lt!1572676 lt!1571642) (= lambda!141296 lambda!141167))))

(declare-fun bs!634109 () Bool)

(assert (= bs!634109 (and d!1289774 d!1289410)))

(assert (=> bs!634109 (= (= lt!1572676 lt!1572285) (= lambda!141296 lambda!141231))))

(declare-fun bs!634110 () Bool)

(assert (= bs!634110 (and d!1289774 d!1289310)))

(assert (=> bs!634110 (= (= lt!1572676 lt!1571643) (= lambda!141296 lambda!141200))))

(assert (=> bs!634085 (= (= lt!1572676 lt!1572229) (= lambda!141296 lambda!141214))))

(declare-fun bs!634112 () Bool)

(assert (= bs!634112 (and d!1289774 d!1289650)))

(assert (=> bs!634112 (= (= lt!1572676 lt!1572577) (= lambda!141296 lambda!141288))))

(declare-fun bs!634113 () Bool)

(assert (= bs!634113 (and d!1289774 b!4360394)))

(assert (=> bs!634113 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (= lambda!141296 lambda!141292))))

(assert (=> bs!634104 (= (= lt!1572676 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (= lambda!141296 lambda!141293))))

(assert (=> d!1289774 true))

(declare-fun e!2713629 () Bool)

(declare-fun b!4360391 () Bool)

(assert (=> b!4360391 (= e!2713629 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lambda!141294))))

(declare-fun b!4360392 () Bool)

(declare-fun e!2713630 () Bool)

(assert (=> b!4360392 (= e!2713630 (invariantList!684 (toList!2986 lt!1572676)))))

(assert (=> d!1289774 e!2713630))

(declare-fun res!1792636 () Bool)

(assert (=> d!1289774 (=> (not res!1792636) (not e!2713630))))

(assert (=> d!1289774 (= res!1792636 (forall!9142 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lambda!141296))))

(declare-fun e!2713631 () ListMap!2229)

(assert (=> d!1289774 (= lt!1572676 e!2713631)))

(declare-fun c!741448 () Bool)

(assert (=> d!1289774 (= c!741448 ((_ is Nil!48961) (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))

(assert (=> d!1289774 (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))

(assert (=> d!1289774 (= (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lt!1572676)))

(assert (=> b!4360393 (= e!2713631 lt!1572671)))

(declare-fun lt!1572684 () ListMap!2229)

(assert (=> b!4360393 (= lt!1572684 (+!660 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))))

(assert (=> b!4360393 (= lt!1572671 (addToMapMapFromBucket!197 (t!356005 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (+!660 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))))

(declare-fun lt!1572683 () Unit!72045)

(declare-fun call!303095 () Unit!72045)

(assert (=> b!4360393 (= lt!1572683 call!303095)))

(assert (=> b!4360393 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lambda!141293)))

(declare-fun lt!1572675 () Unit!72045)

(assert (=> b!4360393 (= lt!1572675 lt!1572683)))

(assert (=> b!4360393 (forall!9142 (toList!2986 lt!1572684) lambda!141294)))

(declare-fun lt!1572672 () Unit!72045)

(declare-fun Unit!72297 () Unit!72045)

(assert (=> b!4360393 (= lt!1572672 Unit!72297)))

(assert (=> b!4360393 (forall!9142 (t!356005 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lambda!141294)))

(declare-fun lt!1572682 () Unit!72045)

(declare-fun Unit!72298 () Unit!72045)

(assert (=> b!4360393 (= lt!1572682 Unit!72298)))

(declare-fun lt!1572685 () Unit!72045)

(declare-fun Unit!72299 () Unit!72045)

(assert (=> b!4360393 (= lt!1572685 Unit!72299)))

(declare-fun lt!1572679 () Unit!72045)

(assert (=> b!4360393 (= lt!1572679 (forallContained!1783 (toList!2986 lt!1572684) lambda!141294 (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))))

(assert (=> b!4360393 (contains!11183 lt!1572684 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))))

(declare-fun lt!1572677 () Unit!72045)

(declare-fun Unit!72300 () Unit!72045)

(assert (=> b!4360393 (= lt!1572677 Unit!72300)))

(assert (=> b!4360393 (contains!11183 lt!1572671 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))))

(declare-fun lt!1572670 () Unit!72045)

(declare-fun Unit!72301 () Unit!72045)

(assert (=> b!4360393 (= lt!1572670 Unit!72301)))

(declare-fun call!303094 () Bool)

(assert (=> b!4360393 call!303094))

(declare-fun lt!1572669 () Unit!72045)

(declare-fun Unit!72302 () Unit!72045)

(assert (=> b!4360393 (= lt!1572669 Unit!72302)))

(assert (=> b!4360393 (forall!9142 (toList!2986 lt!1572684) lambda!141294)))

(declare-fun lt!1572680 () Unit!72045)

(declare-fun Unit!72303 () Unit!72045)

(assert (=> b!4360393 (= lt!1572680 Unit!72303)))

(declare-fun lt!1572665 () Unit!72045)

(declare-fun Unit!72304 () Unit!72045)

(assert (=> b!4360393 (= lt!1572665 Unit!72304)))

(declare-fun lt!1572667 () Unit!72045)

(assert (=> b!4360393 (= lt!1572667 (addForallContainsKeyThenBeforeAdding!67 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572671 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))) (_2!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))))

(declare-fun call!303093 () Bool)

(assert (=> b!4360393 call!303093))

(declare-fun lt!1572668 () Unit!72045)

(assert (=> b!4360393 (= lt!1572668 lt!1572667)))

(assert (=> b!4360393 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lambda!141294)))

(declare-fun lt!1572666 () Unit!72045)

(declare-fun Unit!72305 () Unit!72045)

(assert (=> b!4360393 (= lt!1572666 Unit!72305)))

(declare-fun res!1792638 () Bool)

(assert (=> b!4360393 (= res!1792638 (forall!9142 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lambda!141294))))

(assert (=> b!4360393 (=> (not res!1792638) (not e!2713629))))

(assert (=> b!4360393 e!2713629))

(declare-fun lt!1572674 () Unit!72045)

(declare-fun Unit!72306 () Unit!72045)

(assert (=> b!4360393 (= lt!1572674 Unit!72306)))

(assert (=> b!4360394 (= e!2713631 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))

(declare-fun lt!1572678 () Unit!72045)

(assert (=> b!4360394 (= lt!1572678 call!303095)))

(assert (=> b!4360394 call!303093))

(declare-fun lt!1572673 () Unit!72045)

(assert (=> b!4360394 (= lt!1572673 lt!1572678)))

(assert (=> b!4360394 call!303094))

(declare-fun lt!1572681 () Unit!72045)

(declare-fun Unit!72307 () Unit!72045)

(assert (=> b!4360394 (= lt!1572681 Unit!72307)))

(declare-fun bm!303088 () Bool)

(assert (=> bm!303088 (= call!303093 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (ite c!741448 lambda!141292 lambda!141294)))))

(declare-fun bm!303089 () Bool)

(assert (=> bm!303089 (= call!303094 (forall!9142 (ite c!741448 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (ite c!741448 lambda!141292 lambda!141294)))))

(declare-fun b!4360395 () Bool)

(declare-fun res!1792637 () Bool)

(assert (=> b!4360395 (=> (not res!1792637) (not e!2713630))))

(assert (=> b!4360395 (= res!1792637 (forall!9142 (toList!2986 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) lambda!141296))))

(declare-fun bm!303090 () Bool)

(assert (=> bm!303090 (= call!303095 (lemmaContainsAllItsOwnKeys!67 (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))

(assert (= (and d!1289774 c!741448) b!4360394))

(assert (= (and d!1289774 (not c!741448)) b!4360393))

(assert (= (and b!4360393 res!1792638) b!4360391))

(assert (= (or b!4360394 b!4360393) bm!303090))

(assert (= (or b!4360394 b!4360393) bm!303089))

(assert (= (or b!4360394 b!4360393) bm!303088))

(assert (= (and d!1289774 res!1792636) b!4360395))

(assert (= (and b!4360395 res!1792637) b!4360392))

(declare-fun m!4978005 () Bool)

(assert (=> b!4360391 m!4978005))

(declare-fun m!4978007 () Bool)

(assert (=> bm!303088 m!4978007))

(declare-fun m!4978009 () Bool)

(assert (=> d!1289774 m!4978009))

(declare-fun m!4978011 () Bool)

(assert (=> d!1289774 m!4978011))

(assert (=> b!4360393 m!4975989))

(declare-fun m!4978013 () Bool)

(assert (=> b!4360393 m!4978013))

(assert (=> b!4360393 m!4978005))

(declare-fun m!4978015 () Bool)

(assert (=> b!4360393 m!4978015))

(assert (=> b!4360393 m!4978013))

(declare-fun m!4978017 () Bool)

(assert (=> b!4360393 m!4978017))

(declare-fun m!4978019 () Bool)

(assert (=> b!4360393 m!4978019))

(assert (=> b!4360393 m!4975989))

(declare-fun m!4978021 () Bool)

(assert (=> b!4360393 m!4978021))

(declare-fun m!4978023 () Bool)

(assert (=> b!4360393 m!4978023))

(declare-fun m!4978025 () Bool)

(assert (=> b!4360393 m!4978025))

(assert (=> b!4360393 m!4978025))

(declare-fun m!4978027 () Bool)

(assert (=> b!4360393 m!4978027))

(declare-fun m!4978029 () Bool)

(assert (=> b!4360393 m!4978029))

(declare-fun m!4978031 () Bool)

(assert (=> b!4360393 m!4978031))

(declare-fun m!4978033 () Bool)

(assert (=> b!4360395 m!4978033))

(assert (=> bm!303090 m!4975989))

(declare-fun m!4978035 () Bool)

(assert (=> bm!303090 m!4978035))

(declare-fun m!4978037 () Bool)

(assert (=> b!4360392 m!4978037))

(declare-fun m!4978039 () Bool)

(assert (=> bm!303089 m!4978039))

(assert (=> b!4359345 d!1289774))

(declare-fun bs!634134 () Bool)

(declare-fun d!1289782 () Bool)

(assert (= bs!634134 (and d!1289782 d!1289232)))

(declare-fun lambda!141300 () Int)

(assert (=> bs!634134 (= lambda!141300 lambda!141174)))

(declare-fun bs!634135 () Bool)

(assert (= bs!634135 (and d!1289782 d!1289210)))

(assert (=> bs!634135 (= lambda!141300 lambda!141163)))

(declare-fun bs!634136 () Bool)

(assert (= bs!634136 (and d!1289782 d!1289188)))

(assert (=> bs!634136 (= lambda!141300 lambda!141161)))

(declare-fun bs!634137 () Bool)

(assert (= bs!634137 (and d!1289782 d!1289450)))

(assert (=> bs!634137 (= lambda!141300 lambda!141247)))

(declare-fun bs!634138 () Bool)

(assert (= bs!634138 (and d!1289782 d!1289218)))

(assert (=> bs!634138 (= lambda!141300 lambda!141166)))

(declare-fun bs!634139 () Bool)

(assert (= bs!634139 (and d!1289782 d!1289228)))

(assert (=> bs!634139 (= lambda!141300 lambda!141173)))

(declare-fun bs!634140 () Bool)

(assert (= bs!634140 (and d!1289782 d!1289386)))

(assert (=> bs!634140 (= lambda!141300 lambda!141218)))

(declare-fun bs!634141 () Bool)

(assert (= bs!634141 (and d!1289782 d!1289120)))

(assert (=> bs!634141 (not (= lambda!141300 lambda!141083))))

(declare-fun bs!634142 () Bool)

(assert (= bs!634142 (and d!1289782 start!422132)))

(assert (=> bs!634142 (= lambda!141300 lambda!141069)))

(declare-fun bs!634143 () Bool)

(assert (= bs!634143 (and d!1289782 d!1289198)))

(assert (=> bs!634143 (= lambda!141300 lambda!141162)))

(declare-fun lt!1572708 () ListMap!2229)

(assert (=> d!1289782 (invariantList!684 (toList!2986 lt!1572708))))

(declare-fun e!2713638 () ListMap!2229)

(assert (=> d!1289782 (= lt!1572708 e!2713638)))

(declare-fun c!741451 () Bool)

(assert (=> d!1289782 (= c!741451 ((_ is Cons!48962) (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))

(assert (=> d!1289782 (forall!9140 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))) lambda!141300)))

(assert (=> d!1289782 (= (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))) lt!1572708)))

(declare-fun b!4360405 () Bool)

(assert (=> b!4360405 (= e!2713638 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))))) (extractMap!560 (t!356006 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))))

(declare-fun b!4360406 () Bool)

(assert (=> b!4360406 (= e!2713638 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289782 c!741451) b!4360405))

(assert (= (and d!1289782 (not c!741451)) b!4360406))

(declare-fun m!4978041 () Bool)

(assert (=> d!1289782 m!4978041))

(declare-fun m!4978043 () Bool)

(assert (=> d!1289782 m!4978043))

(declare-fun m!4978045 () Bool)

(assert (=> b!4360405 m!4978045))

(assert (=> b!4360405 m!4978045))

(declare-fun m!4978047 () Bool)

(assert (=> b!4360405 m!4978047))

(assert (=> b!4359345 d!1289782))

(declare-fun d!1289784 () Bool)

(declare-fun res!1792644 () Bool)

(declare-fun e!2713639 () Bool)

(assert (=> d!1289784 (=> res!1792644 e!2713639)))

(assert (=> d!1289784 (= res!1792644 ((_ is Nil!48962) (toList!2985 lt!1571646)))))

(assert (=> d!1289784 (= (forall!9140 (toList!2985 lt!1571646) lambda!141166) e!2713639)))

(declare-fun b!4360407 () Bool)

(declare-fun e!2713640 () Bool)

(assert (=> b!4360407 (= e!2713639 e!2713640)))

(declare-fun res!1792645 () Bool)

(assert (=> b!4360407 (=> (not res!1792645) (not e!2713640))))

(assert (=> b!4360407 (= res!1792645 (dynLambda!20643 lambda!141166 (h!54519 (toList!2985 lt!1571646))))))

(declare-fun b!4360408 () Bool)

(assert (=> b!4360408 (= e!2713640 (forall!9140 (t!356006 (toList!2985 lt!1571646)) lambda!141166))))

(assert (= (and d!1289784 (not res!1792644)) b!4360407))

(assert (= (and b!4360407 res!1792645) b!4360408))

(declare-fun b_lambda!131655 () Bool)

(assert (=> (not b_lambda!131655) (not b!4360407)))

(declare-fun m!4978049 () Bool)

(assert (=> b!4360407 m!4978049))

(declare-fun m!4978051 () Bool)

(assert (=> b!4360408 m!4978051))

(assert (=> d!1289218 d!1289784))

(assert (=> d!1289218 d!1289188))

(declare-fun d!1289786 () Bool)

(declare-fun e!2713641 () Bool)

(assert (=> d!1289786 e!2713641))

(declare-fun res!1792647 () Bool)

(assert (=> d!1289786 (=> (not res!1792647) (not e!2713641))))

(declare-fun lt!1572710 () ListLongMap!1635)

(assert (=> d!1289786 (= res!1792647 (contains!11184 lt!1572710 (_1!27482 (tuple2!48377 hash!377 newBucket!200))))))

(declare-fun lt!1572712 () List!49086)

(assert (=> d!1289786 (= lt!1572710 (ListLongMap!1636 lt!1572712))))

(declare-fun lt!1572711 () Unit!72045)

(declare-fun lt!1572709 () Unit!72045)

(assert (=> d!1289786 (= lt!1572711 lt!1572709)))

(assert (=> d!1289786 (= (getValueByKey!466 lt!1572712 (_1!27482 (tuple2!48377 hash!377 newBucket!200))) (Some!10479 (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289786 (= lt!1572709 (lemmaContainsTupThenGetReturnValue!240 lt!1572712 (_1!27482 (tuple2!48377 hash!377 newBucket!200)) (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289786 (= lt!1572712 (insertStrictlySorted!141 (toList!2985 lt!1571646) (_1!27482 (tuple2!48377 hash!377 newBucket!200)) (_2!27482 (tuple2!48377 hash!377 newBucket!200))))))

(assert (=> d!1289786 (= (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)) lt!1572710)))

(declare-fun b!4360409 () Bool)

(declare-fun res!1792646 () Bool)

(assert (=> b!4360409 (=> (not res!1792646) (not e!2713641))))

(assert (=> b!4360409 (= res!1792646 (= (getValueByKey!466 (toList!2985 lt!1572710) (_1!27482 (tuple2!48377 hash!377 newBucket!200))) (Some!10479 (_2!27482 (tuple2!48377 hash!377 newBucket!200)))))))

(declare-fun b!4360410 () Bool)

(assert (=> b!4360410 (= e!2713641 (contains!11185 (toList!2985 lt!1572710) (tuple2!48377 hash!377 newBucket!200)))))

(assert (= (and d!1289786 res!1792647) b!4360409))

(assert (= (and b!4360409 res!1792646) b!4360410))

(declare-fun m!4978053 () Bool)

(assert (=> d!1289786 m!4978053))

(declare-fun m!4978055 () Bool)

(assert (=> d!1289786 m!4978055))

(declare-fun m!4978057 () Bool)

(assert (=> d!1289786 m!4978057))

(declare-fun m!4978059 () Bool)

(assert (=> d!1289786 m!4978059))

(declare-fun m!4978061 () Bool)

(assert (=> b!4360409 m!4978061))

(declare-fun m!4978063 () Bool)

(assert (=> b!4360410 m!4978063))

(assert (=> d!1289218 d!1289786))

(declare-fun d!1289788 () Bool)

(assert (=> d!1289788 (= (eq!271 (extractMap!560 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))) (+!660 (extractMap!560 (toList!2985 lt!1571646)) (tuple2!48375 key!3918 newValue!99))) (= (content!7735 (toList!2986 (extractMap!560 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))))) (content!7735 (toList!2986 (+!660 (extractMap!560 (toList!2985 lt!1571646)) (tuple2!48375 key!3918 newValue!99))))))))

(declare-fun bs!634152 () Bool)

(assert (= bs!634152 d!1289788))

(declare-fun m!4978065 () Bool)

(assert (=> bs!634152 m!4978065))

(declare-fun m!4978067 () Bool)

(assert (=> bs!634152 m!4978067))

(assert (=> d!1289218 d!1289788))

(declare-fun d!1289790 () Bool)

(declare-fun e!2713642 () Bool)

(assert (=> d!1289790 e!2713642))

(declare-fun res!1792648 () Bool)

(assert (=> d!1289790 (=> (not res!1792648) (not e!2713642))))

(declare-fun lt!1572713 () ListMap!2229)

(assert (=> d!1289790 (= res!1792648 (contains!11183 lt!1572713 (_1!27481 (tuple2!48375 key!3918 newValue!99))))))

(declare-fun lt!1572714 () List!49085)

(assert (=> d!1289790 (= lt!1572713 (ListMap!2230 lt!1572714))))

(declare-fun lt!1572716 () Unit!72045)

(declare-fun lt!1572715 () Unit!72045)

(assert (=> d!1289790 (= lt!1572716 lt!1572715)))

(assert (=> d!1289790 (= (getValueByKey!467 lt!1572714 (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289790 (= lt!1572715 (lemmaContainsTupThenGetReturnValue!241 lt!1572714 (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289790 (= lt!1572714 (insertNoDuplicatedKeys!108 (toList!2986 (extractMap!560 (toList!2985 lt!1571646))) (_1!27481 (tuple2!48375 key!3918 newValue!99)) (_2!27481 (tuple2!48375 key!3918 newValue!99))))))

(assert (=> d!1289790 (= (+!660 (extractMap!560 (toList!2985 lt!1571646)) (tuple2!48375 key!3918 newValue!99)) lt!1572713)))

(declare-fun b!4360411 () Bool)

(declare-fun res!1792649 () Bool)

(assert (=> b!4360411 (=> (not res!1792649) (not e!2713642))))

(assert (=> b!4360411 (= res!1792649 (= (getValueByKey!467 (toList!2986 lt!1572713) (_1!27481 (tuple2!48375 key!3918 newValue!99))) (Some!10480 (_2!27481 (tuple2!48375 key!3918 newValue!99)))))))

(declare-fun b!4360412 () Bool)

(assert (=> b!4360412 (= e!2713642 (contains!11188 (toList!2986 lt!1572713) (tuple2!48375 key!3918 newValue!99)))))

(assert (= (and d!1289790 res!1792648) b!4360411))

(assert (= (and b!4360411 res!1792649) b!4360412))

(declare-fun m!4978069 () Bool)

(assert (=> d!1289790 m!4978069))

(declare-fun m!4978071 () Bool)

(assert (=> d!1289790 m!4978071))

(declare-fun m!4978073 () Bool)

(assert (=> d!1289790 m!4978073))

(declare-fun m!4978075 () Bool)

(assert (=> d!1289790 m!4978075))

(declare-fun m!4978077 () Bool)

(assert (=> b!4360411 m!4978077))

(declare-fun m!4978079 () Bool)

(assert (=> b!4360412 m!4978079))

(assert (=> d!1289218 d!1289790))

(declare-fun d!1289792 () Bool)

(assert (=> d!1289792 (eq!271 (extractMap!560 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))) (+!660 (extractMap!560 (toList!2985 lt!1571646)) (tuple2!48375 key!3918 newValue!99)))))

(assert (=> d!1289792 true))

(declare-fun _$10!167 () Unit!72045)

(assert (=> d!1289792 (= (choose!26978 lt!1571646 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!167)))

(declare-fun bs!634222 () Bool)

(assert (= bs!634222 d!1289792))

(assert (=> bs!634222 m!4975515))

(assert (=> bs!634222 m!4976071))

(assert (=> bs!634222 m!4976069))

(assert (=> bs!634222 m!4976077))

(assert (=> bs!634222 m!4976069))

(assert (=> bs!634222 m!4976071))

(assert (=> bs!634222 m!4976073))

(assert (=> bs!634222 m!4975515))

(assert (=> d!1289218 d!1289792))

(declare-fun bs!634223 () Bool)

(declare-fun d!1289804 () Bool)

(assert (= bs!634223 (and d!1289804 d!1289232)))

(declare-fun lambda!141306 () Int)

(assert (=> bs!634223 (= lambda!141306 lambda!141174)))

(declare-fun bs!634224 () Bool)

(assert (= bs!634224 (and d!1289804 d!1289782)))

(assert (=> bs!634224 (= lambda!141306 lambda!141300)))

(declare-fun bs!634225 () Bool)

(assert (= bs!634225 (and d!1289804 d!1289210)))

(assert (=> bs!634225 (= lambda!141306 lambda!141163)))

(declare-fun bs!634226 () Bool)

(assert (= bs!634226 (and d!1289804 d!1289188)))

(assert (=> bs!634226 (= lambda!141306 lambda!141161)))

(declare-fun bs!634227 () Bool)

(assert (= bs!634227 (and d!1289804 d!1289450)))

(assert (=> bs!634227 (= lambda!141306 lambda!141247)))

(declare-fun bs!634228 () Bool)

(assert (= bs!634228 (and d!1289804 d!1289218)))

(assert (=> bs!634228 (= lambda!141306 lambda!141166)))

(declare-fun bs!634229 () Bool)

(assert (= bs!634229 (and d!1289804 d!1289228)))

(assert (=> bs!634229 (= lambda!141306 lambda!141173)))

(declare-fun bs!634230 () Bool)

(assert (= bs!634230 (and d!1289804 d!1289386)))

(assert (=> bs!634230 (= lambda!141306 lambda!141218)))

(declare-fun bs!634231 () Bool)

(assert (= bs!634231 (and d!1289804 d!1289120)))

(assert (=> bs!634231 (not (= lambda!141306 lambda!141083))))

(declare-fun bs!634232 () Bool)

(assert (= bs!634232 (and d!1289804 start!422132)))

(assert (=> bs!634232 (= lambda!141306 lambda!141069)))

(declare-fun bs!634233 () Bool)

(assert (= bs!634233 (and d!1289804 d!1289198)))

(assert (=> bs!634233 (= lambda!141306 lambda!141162)))

(declare-fun lt!1572739 () ListMap!2229)

(assert (=> d!1289804 (invariantList!684 (toList!2986 lt!1572739))))

(declare-fun e!2713651 () ListMap!2229)

(assert (=> d!1289804 (= lt!1572739 e!2713651)))

(declare-fun c!741454 () Bool)

(assert (=> d!1289804 (= c!741454 ((_ is Cons!48962) (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))))))

(assert (=> d!1289804 (forall!9140 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200))) lambda!141306)))

(assert (=> d!1289804 (= (extractMap!560 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))) lt!1572739)))

(declare-fun b!4360424 () Bool)

(assert (=> b!4360424 (= e!2713651 (addToMapMapFromBucket!197 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200))))) (extractMap!560 (t!356006 (toList!2985 (+!659 lt!1571646 (tuple2!48377 hash!377 newBucket!200)))))))))

(declare-fun b!4360425 () Bool)

(assert (=> b!4360425 (= e!2713651 (ListMap!2230 Nil!48961))))

(assert (= (and d!1289804 c!741454) b!4360424))

(assert (= (and d!1289804 (not c!741454)) b!4360425))

(declare-fun m!4978135 () Bool)

(assert (=> d!1289804 m!4978135))

(declare-fun m!4978137 () Bool)

(assert (=> d!1289804 m!4978137))

(declare-fun m!4978139 () Bool)

(assert (=> b!4360424 m!4978139))

(assert (=> b!4360424 m!4978139))

(declare-fun m!4978141 () Bool)

(assert (=> b!4360424 m!4978141))

(assert (=> d!1289218 d!1289804))

(assert (=> d!1289230 d!1289396))

(assert (=> b!4359215 d!1289138))

(declare-fun d!1289806 () Bool)

(declare-fun lt!1572740 () Bool)

(assert (=> d!1289806 (= lt!1572740 (select (content!7736 e!2712990) key!3918))))

(declare-fun e!2713653 () Bool)

(assert (=> d!1289806 (= lt!1572740 e!2713653)))

(declare-fun res!1792657 () Bool)

(assert (=> d!1289806 (=> (not res!1792657) (not e!2713653))))

(assert (=> d!1289806 (= res!1792657 ((_ is Cons!48964) e!2712990))))

(assert (=> d!1289806 (= (contains!11189 e!2712990 key!3918) lt!1572740)))

(declare-fun b!4360426 () Bool)

(declare-fun e!2713652 () Bool)

(assert (=> b!4360426 (= e!2713653 e!2713652)))

(declare-fun res!1792658 () Bool)

(assert (=> b!4360426 (=> res!1792658 e!2713652)))

(assert (=> b!4360426 (= res!1792658 (= (h!54523 e!2712990) key!3918))))

(declare-fun b!4360427 () Bool)

(assert (=> b!4360427 (= e!2713652 (contains!11189 (t!356008 e!2712990) key!3918))))

(assert (= (and d!1289806 res!1792657) b!4360426))

(assert (= (and b!4360426 (not res!1792658)) b!4360427))

(declare-fun m!4978143 () Bool)

(assert (=> d!1289806 m!4978143))

(declare-fun m!4978145 () Bool)

(assert (=> d!1289806 m!4978145))

(declare-fun m!4978147 () Bool)

(assert (=> b!4360427 m!4978147))

(assert (=> bm!302988 d!1289806))

(declare-fun d!1289808 () Bool)

(declare-fun res!1792659 () Bool)

(declare-fun e!2713654 () Bool)

(assert (=> d!1289808 (=> res!1792659 e!2713654)))

(assert (=> d!1289808 (= res!1792659 ((_ is Nil!48962) (t!356006 (toList!2985 lm!1707))))))

(assert (=> d!1289808 (= (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141069) e!2713654)))

(declare-fun b!4360428 () Bool)

(declare-fun e!2713655 () Bool)

(assert (=> b!4360428 (= e!2713654 e!2713655)))

(declare-fun res!1792660 () Bool)

(assert (=> b!4360428 (=> (not res!1792660) (not e!2713655))))

(assert (=> b!4360428 (= res!1792660 (dynLambda!20643 lambda!141069 (h!54519 (t!356006 (toList!2985 lm!1707)))))))

(declare-fun b!4360429 () Bool)

(assert (=> b!4360429 (= e!2713655 (forall!9140 (t!356006 (t!356006 (toList!2985 lm!1707))) lambda!141069))))

(assert (= (and d!1289808 (not res!1792659)) b!4360428))

(assert (= (and b!4360428 res!1792660) b!4360429))

(declare-fun b_lambda!131661 () Bool)

(assert (=> (not b_lambda!131661) (not b!4360428)))

(declare-fun m!4978149 () Bool)

(assert (=> b!4360428 m!4978149))

(declare-fun m!4978151 () Bool)

(assert (=> b!4360429 m!4978151))

(assert (=> b!4359144 d!1289808))

(declare-fun d!1289810 () Bool)

(assert (=> d!1289810 (= (invariantList!684 (toList!2986 lt!1571953)) (noDuplicatedKeys!121 (toList!2986 lt!1571953)))))

(declare-fun bs!634234 () Bool)

(assert (= bs!634234 d!1289810))

(declare-fun m!4978153 () Bool)

(assert (=> bs!634234 m!4978153))

(assert (=> d!1289198 d!1289810))

(declare-fun d!1289812 () Bool)

(declare-fun res!1792661 () Bool)

(declare-fun e!2713656 () Bool)

(assert (=> d!1289812 (=> res!1792661 e!2713656)))

(assert (=> d!1289812 (= res!1792661 ((_ is Nil!48962) (toList!2985 (+!659 lt!1571646 lt!1571639))))))

(assert (=> d!1289812 (= (forall!9140 (toList!2985 (+!659 lt!1571646 lt!1571639)) lambda!141162) e!2713656)))

(declare-fun b!4360430 () Bool)

(declare-fun e!2713657 () Bool)

(assert (=> b!4360430 (= e!2713656 e!2713657)))

(declare-fun res!1792662 () Bool)

(assert (=> b!4360430 (=> (not res!1792662) (not e!2713657))))

(assert (=> b!4360430 (= res!1792662 (dynLambda!20643 lambda!141162 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))))))

(declare-fun b!4360431 () Bool)

(assert (=> b!4360431 (= e!2713657 (forall!9140 (t!356006 (toList!2985 (+!659 lt!1571646 lt!1571639))) lambda!141162))))

(assert (= (and d!1289812 (not res!1792661)) b!4360430))

(assert (= (and b!4360430 res!1792662) b!4360431))

(declare-fun b_lambda!131663 () Bool)

(assert (=> (not b_lambda!131663) (not b!4360430)))

(declare-fun m!4978155 () Bool)

(assert (=> b!4360430 m!4978155))

(declare-fun m!4978157 () Bool)

(assert (=> b!4360431 m!4978157))

(assert (=> d!1289198 d!1289812))

(assert (=> d!1289220 d!1289476))

(assert (=> b!4359387 d!1289646))

(assert (=> b!4359387 d!1289316))

(declare-fun d!1289814 () Bool)

(assert (=> d!1289814 (= (invariantList!684 (toList!2986 lt!1572027)) (noDuplicatedKeys!121 (toList!2986 lt!1572027)))))

(declare-fun bs!634241 () Bool)

(assert (= bs!634241 d!1289814))

(declare-fun m!4978159 () Bool)

(assert (=> bs!634241 m!4978159))

(assert (=> b!4359396 d!1289814))

(assert (=> b!4359371 d!1289280))

(assert (=> b!4359371 d!1289282))

(assert (=> d!1289142 d!1289322))

(declare-fun d!1289816 () Bool)

(declare-fun res!1792663 () Bool)

(declare-fun e!2713658 () Bool)

(assert (=> d!1289816 (=> res!1792663 e!2713658)))

(assert (=> d!1289816 (= res!1792663 ((_ is Nil!48962) (toList!2985 lm!1707)))))

(assert (=> d!1289816 (= (forall!9140 (toList!2985 lm!1707) lambda!141083) e!2713658)))

(declare-fun b!4360432 () Bool)

(declare-fun e!2713659 () Bool)

(assert (=> b!4360432 (= e!2713658 e!2713659)))

(declare-fun res!1792664 () Bool)

(assert (=> b!4360432 (=> (not res!1792664) (not e!2713659))))

(assert (=> b!4360432 (= res!1792664 (dynLambda!20643 lambda!141083 (h!54519 (toList!2985 lm!1707))))))

(declare-fun b!4360433 () Bool)

(assert (=> b!4360433 (= e!2713659 (forall!9140 (t!356006 (toList!2985 lm!1707)) lambda!141083))))

(assert (= (and d!1289816 (not res!1792663)) b!4360432))

(assert (= (and b!4360432 res!1792664) b!4360433))

(declare-fun b_lambda!131665 () Bool)

(assert (=> (not b_lambda!131665) (not b!4360432)))

(declare-fun m!4978161 () Bool)

(assert (=> b!4360432 m!4978161))

(declare-fun m!4978163 () Bool)

(assert (=> b!4360433 m!4978163))

(assert (=> d!1289120 d!1289816))

(declare-fun d!1289818 () Bool)

(declare-fun res!1792665 () Bool)

(declare-fun e!2713660 () Bool)

(assert (=> d!1289818 (=> res!1792665 e!2713660)))

(assert (=> d!1289818 (= res!1792665 ((_ is Nil!48961) (toList!2986 lt!1571643)))))

(assert (=> d!1289818 (= (forall!9142 (toList!2986 lt!1571643) (ite c!741181 lambda!141155 lambda!141157)) e!2713660)))

(declare-fun b!4360434 () Bool)

(declare-fun e!2713661 () Bool)

(assert (=> b!4360434 (= e!2713660 e!2713661)))

(declare-fun res!1792666 () Bool)

(assert (=> b!4360434 (=> (not res!1792666) (not e!2713661))))

(assert (=> b!4360434 (= res!1792666 (dynLambda!20645 (ite c!741181 lambda!141155 lambda!141157) (h!54518 (toList!2986 lt!1571643))))))

(declare-fun b!4360435 () Bool)

(assert (=> b!4360435 (= e!2713661 (forall!9142 (t!356005 (toList!2986 lt!1571643)) (ite c!741181 lambda!141155 lambda!141157)))))

(assert (= (and d!1289818 (not res!1792665)) b!4360434))

(assert (= (and b!4360434 res!1792666) b!4360435))

(declare-fun b_lambda!131667 () Bool)

(assert (=> (not b_lambda!131667) (not b!4360434)))

(declare-fun m!4978165 () Bool)

(assert (=> b!4360434 m!4978165))

(declare-fun m!4978167 () Bool)

(assert (=> b!4360435 m!4978167))

(assert (=> bm!302982 d!1289818))

(declare-fun tp!1330285 () Bool)

(declare-fun e!2713662 () Bool)

(declare-fun b!4360436 () Bool)

(assert (=> b!4360436 (= e!2713662 (and tp_is_empty!25241 tp_is_empty!25243 tp!1330285))))

(assert (=> b!4359424 (= tp!1330283 e!2713662)))

(assert (= (and b!4359424 ((_ is Cons!48961) (_2!27482 (h!54519 (toList!2985 lm!1707))))) b!4360436))

(declare-fun b!4360437 () Bool)

(declare-fun e!2713663 () Bool)

(declare-fun tp!1330286 () Bool)

(declare-fun tp!1330287 () Bool)

(assert (=> b!4360437 (= e!2713663 (and tp!1330286 tp!1330287))))

(assert (=> b!4359424 (= tp!1330284 e!2713663)))

(assert (= (and b!4359424 ((_ is Cons!48962) (t!356006 (toList!2985 lm!1707)))) b!4360437))

(declare-fun b!4360438 () Bool)

(declare-fun e!2713664 () Bool)

(declare-fun tp!1330288 () Bool)

(assert (=> b!4360438 (= e!2713664 (and tp_is_empty!25241 tp_is_empty!25243 tp!1330288))))

(assert (=> b!4359419 (= tp!1330278 e!2713664)))

(assert (= (and b!4359419 ((_ is Cons!48961) (t!356005 (t!356005 newBucket!200)))) b!4360438))

(declare-fun b_lambda!131669 () Bool)

(assert (= b_lambda!131595 (or d!1289228 b_lambda!131669)))

(declare-fun bs!634260 () Bool)

(declare-fun d!1289820 () Bool)

(assert (= bs!634260 (and d!1289820 d!1289228)))

(assert (=> bs!634260 (= (dynLambda!20643 lambda!141173 (h!54519 (toList!2985 lm!1707))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> bs!634260 m!4975929))

(assert (=> b!4359982 d!1289820))

(declare-fun b_lambda!131671 () Bool)

(assert (= b_lambda!131575 (or d!1289146 b_lambda!131671)))

(declare-fun bs!634261 () Bool)

(declare-fun d!1289822 () Bool)

(assert (= bs!634261 (and d!1289822 d!1289146)))

(assert (=> bs!634261 (= (dynLambda!20645 lambda!141158 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (contains!11183 lt!1571927 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun m!4978193 () Bool)

(assert (=> bs!634261 m!4978193))

(assert (=> b!4359902 d!1289822))

(declare-fun b_lambda!131673 () Bool)

(assert (= b_lambda!131661 (or start!422132 b_lambda!131673)))

(declare-fun bs!634262 () Bool)

(declare-fun d!1289824 () Bool)

(assert (= bs!634262 (and d!1289824 start!422132)))

(assert (=> bs!634262 (= (dynLambda!20643 lambda!141069 (h!54519 (t!356006 (toList!2985 lm!1707)))) (noDuplicateKeys!501 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))

(assert (=> bs!634262 m!4976697))

(assert (=> b!4360428 d!1289824))

(declare-fun b_lambda!131675 () Bool)

(assert (= b_lambda!131649 (or start!422132 b_lambda!131675)))

(assert (=> d!1289762 d!1289246))

(declare-fun b_lambda!131677 () Bool)

(assert (= b_lambda!131665 (or d!1289120 b_lambda!131677)))

(declare-fun bs!634263 () Bool)

(declare-fun d!1289826 () Bool)

(assert (= bs!634263 (and d!1289826 d!1289120)))

(assert (=> bs!634263 (= (dynLambda!20643 lambda!141083 (h!54519 (toList!2985 lm!1707))) (allKeysSameHash!459 (_2!27482 (h!54519 (toList!2985 lm!1707))) (_1!27482 (h!54519 (toList!2985 lm!1707))) hashF!1247))))

(declare-fun m!4978207 () Bool)

(assert (=> bs!634263 m!4978207))

(assert (=> b!4360432 d!1289826))

(declare-fun b_lambda!131679 () Bool)

(assert (= b_lambda!131637 (or b!4359397 b_lambda!131679)))

(declare-fun bs!634264 () Bool)

(declare-fun d!1289830 () Bool)

(assert (= bs!634264 (and d!1289830 b!4359397)))

(assert (=> bs!634264 (= (dynLambda!20645 lambda!141169 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (contains!11183 lt!1572022 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> bs!634264 m!4976123))

(assert (=> d!1289690 d!1289830))

(declare-fun b_lambda!131681 () Bool)

(assert (= b_lambda!131593 (or d!1289146 b_lambda!131681)))

(declare-fun bs!634265 () Bool)

(declare-fun d!1289832 () Bool)

(assert (= bs!634265 (and d!1289832 d!1289146)))

(assert (=> bs!634265 (= (dynLambda!20645 lambda!141158 (h!54518 (toList!2986 lt!1571643))) (contains!11183 lt!1571927 (_1!27481 (h!54518 (toList!2986 lt!1571643)))))))

(declare-fun m!4978209 () Bool)

(assert (=> bs!634265 m!4978209))

(assert (=> b!4359977 d!1289832))

(declare-fun b_lambda!131683 () Bool)

(assert (= b_lambda!131643 (or b!4359397 b_lambda!131683)))

(declare-fun bs!634266 () Bool)

(declare-fun d!1289834 () Bool)

(assert (= bs!634266 (and d!1289834 b!4359397)))

(assert (=> bs!634266 (= (dynLambda!20645 lambda!141169 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (contains!11183 lt!1572022 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun m!4978211 () Bool)

(assert (=> bs!634266 m!4978211))

(assert (=> b!4360343 d!1289834))

(declare-fun b_lambda!131685 () Bool)

(assert (= b_lambda!131573 (or d!1289236 b_lambda!131685)))

(declare-fun bs!634267 () Bool)

(declare-fun d!1289836 () Bool)

(assert (= bs!634267 (and d!1289836 d!1289236)))

(assert (=> bs!634267 (= (dynLambda!20645 lambda!141177 (h!54518 newBucket!200)) (= (hash!1591 hashF!1247 (_1!27481 (h!54518 newBucket!200))) hash!377))))

(declare-fun m!4978213 () Bool)

(assert (=> bs!634267 m!4978213))

(assert (=> b!4359900 d!1289836))

(declare-fun b_lambda!131687 () Bool)

(assert (= b_lambda!131557 (or d!1289188 b_lambda!131687)))

(declare-fun bs!634269 () Bool)

(declare-fun d!1289838 () Bool)

(assert (= bs!634269 (and d!1289838 d!1289188)))

(assert (=> bs!634269 (= (dynLambda!20643 lambda!141161 (h!54519 (toList!2985 lt!1571646))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lt!1571646)))))))

(assert (=> bs!634269 m!4976945))

(assert (=> b!4359546 d!1289838))

(declare-fun b_lambda!131689 () Bool)

(assert (= b_lambda!131639 (or b!4359397 b_lambda!131689)))

(declare-fun bs!634272 () Bool)

(declare-fun d!1289840 () Bool)

(assert (= bs!634272 (and d!1289840 b!4359397)))

(assert (=> bs!634272 (= (dynLambda!20645 lambda!141168 (h!54518 (toList!2986 lt!1571642))) (contains!11183 lt!1571642 (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun m!4978215 () Bool)

(assert (=> bs!634272 m!4978215))

(assert (=> b!4360321 d!1289840))

(declare-fun b_lambda!131691 () Bool)

(assert (= b_lambda!131615 (or b!4359307 b_lambda!131691)))

(declare-fun bs!634273 () Bool)

(declare-fun d!1289842 () Bool)

(assert (= bs!634273 (and d!1289842 b!4359307)))

(assert (=> bs!634273 (= (dynLambda!20645 lambda!141157 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (contains!11183 lt!1571922 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(assert (=> bs!634273 m!4975937))

(assert (=> b!4360117 d!1289842))

(declare-fun b_lambda!131693 () Bool)

(assert (= b_lambda!131561 (or b!4359397 b_lambda!131693)))

(declare-fun bs!634275 () Bool)

(declare-fun d!1289844 () Bool)

(assert (= bs!634275 (and d!1289844 b!4359397)))

(assert (=> bs!634275 (= (dynLambda!20645 lambda!141169 (h!54518 (toList!2986 lt!1571642))) (contains!11183 lt!1572022 (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun m!4978217 () Bool)

(assert (=> bs!634275 m!4978217))

(assert (=> b!4359618 d!1289844))

(declare-fun b_lambda!131695 () Bool)

(assert (= b_lambda!131621 (or d!1289232 b_lambda!131695)))

(declare-fun bs!634277 () Bool)

(declare-fun d!1289846 () Bool)

(assert (= bs!634277 (and d!1289846 d!1289232)))

(assert (=> bs!634277 (= (dynLambda!20643 lambda!141174 (h!54519 (toList!2985 lm!1707))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))

(assert (=> bs!634277 m!4975929))

(assert (=> b!4360151 d!1289846))

(declare-fun b_lambda!131697 () Bool)

(assert (= b_lambda!131611 (or b!4359307 b_lambda!131697)))

(declare-fun bs!634280 () Bool)

(declare-fun d!1289848 () Bool)

(assert (= bs!634280 (and d!1289848 b!4359307)))

(assert (=> bs!634280 (= (dynLambda!20645 lambda!141157 (h!54518 (toList!2986 lt!1571643))) (contains!11183 lt!1571922 (_1!27481 (h!54518 (toList!2986 lt!1571643)))))))

(declare-fun m!4978219 () Bool)

(assert (=> bs!634280 m!4978219))

(assert (=> b!4360104 d!1289848))

(declare-fun b_lambda!131699 () Bool)

(assert (= b_lambda!131655 (or d!1289218 b_lambda!131699)))

(declare-fun bs!634282 () Bool)

(declare-fun d!1289850 () Bool)

(assert (= bs!634282 (and d!1289850 d!1289218)))

(assert (=> bs!634282 (= (dynLambda!20643 lambda!141166 (h!54519 (toList!2985 lt!1571646))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 lt!1571646)))))))

(assert (=> bs!634282 m!4976945))

(assert (=> b!4360407 d!1289850))

(declare-fun b_lambda!131701 () Bool)

(assert (= b_lambda!131623 (or d!1289224 b_lambda!131701)))

(declare-fun bs!634284 () Bool)

(declare-fun d!1289852 () Bool)

(assert (= bs!634284 (and d!1289852 d!1289224)))

(assert (=> bs!634284 (= (dynLambda!20645 lambda!141170 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707))))) (contains!11183 lt!1572027 (_1!27481 (h!54518 (_2!27482 (h!54519 (toList!2985 lm!1707)))))))))

(declare-fun m!4978221 () Bool)

(assert (=> bs!634284 m!4978221))

(assert (=> b!4360157 d!1289852))

(declare-fun b_lambda!131703 () Bool)

(assert (= b_lambda!131597 (or b!4359307 b_lambda!131703)))

(declare-fun bs!634286 () Bool)

(declare-fun d!1289854 () Bool)

(assert (= bs!634286 (and d!1289854 b!4359307)))

(assert (=> bs!634286 (= (dynLambda!20645 lambda!141157 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707)))))) (contains!11183 lt!1571922 (_1!27481 (h!54518 (t!356005 (_2!27482 (h!54519 (toList!2985 lm!1707))))))))))

(declare-fun m!4978223 () Bool)

(assert (=> bs!634286 m!4978223))

(assert (=> b!4360053 d!1289854))

(declare-fun b_lambda!131705 () Bool)

(assert (= b_lambda!131585 (or d!1289210 b_lambda!131705)))

(declare-fun bs!634288 () Bool)

(declare-fun d!1289856 () Bool)

(assert (= bs!634288 (and d!1289856 d!1289210)))

(assert (=> bs!634288 (= (dynLambda!20643 lambda!141163 (h!54519 (t!356006 (toList!2985 lm!1707)))) (noDuplicateKeys!501 (_2!27482 (h!54519 (t!356006 (toList!2985 lm!1707))))))))

(assert (=> bs!634288 m!4976697))

(assert (=> b!4359945 d!1289856))

(declare-fun b_lambda!131707 () Bool)

(assert (= b_lambda!131625 (or d!1289224 b_lambda!131707)))

(declare-fun bs!634289 () Bool)

(declare-fun d!1289858 () Bool)

(assert (= bs!634289 (and d!1289858 d!1289224)))

(assert (=> bs!634289 (= (dynLambda!20645 lambda!141170 (h!54518 (toList!2986 lt!1571642))) (contains!11183 lt!1572027 (_1!27481 (h!54518 (toList!2986 lt!1571642)))))))

(declare-fun m!4978225 () Bool)

(assert (=> bs!634289 m!4978225))

(assert (=> b!4360231 d!1289858))

(declare-fun b_lambda!131709 () Bool)

(assert (= b_lambda!131663 (or d!1289198 b_lambda!131709)))

(declare-fun bs!634290 () Bool)

(declare-fun d!1289860 () Bool)

(assert (= bs!634290 (and d!1289860 d!1289198)))

(assert (=> bs!634290 (= (dynLambda!20643 lambda!141162 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639)))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 (+!659 lt!1571646 lt!1571639))))))))

(assert (=> bs!634290 m!4978011))

(assert (=> b!4360430 d!1289860))

(declare-fun b_lambda!131711 () Bool)

(assert (= b_lambda!131619 (or b!4359307 b_lambda!131711)))

(assert (=> d!1289562 d!1289842))

(declare-fun b_lambda!131713 () Bool)

(assert (= b_lambda!131599 (or b!4359307 b_lambda!131713)))

(declare-fun bs!634291 () Bool)

(declare-fun d!1289862 () Bool)

(assert (= bs!634291 (and d!1289862 b!4359307)))

(assert (=> bs!634291 (= (dynLambda!20645 lambda!141157 (h!54518 (toList!2986 lt!1571935))) (contains!11183 lt!1571922 (_1!27481 (h!54518 (toList!2986 lt!1571935)))))))

(declare-fun m!4978233 () Bool)

(assert (=> bs!634291 m!4978233))

(assert (=> b!4360057 d!1289862))

(declare-fun b_lambda!131715 () Bool)

(assert (= b_lambda!131613 (or b!4359307 b_lambda!131715)))

(declare-fun bs!634292 () Bool)

(declare-fun d!1289864 () Bool)

(assert (= bs!634292 (and d!1289864 b!4359307)))

(assert (=> bs!634292 (= (dynLambda!20645 lambda!141156 (h!54518 (toList!2986 lt!1571643))) (contains!11183 lt!1571643 (_1!27481 (h!54518 (toList!2986 lt!1571643)))))))

(declare-fun m!4978237 () Bool)

(assert (=> bs!634292 m!4978237))

(assert (=> b!4360106 d!1289864))

(declare-fun b_lambda!131717 () Bool)

(assert (= b_lambda!131569 (or start!422132 b_lambda!131717)))

(declare-fun bs!634293 () Bool)

(declare-fun d!1289868 () Bool)

(assert (= bs!634293 (and d!1289868 start!422132)))

(assert (=> bs!634293 (= (dynLambda!20643 lambda!141069 (h!54519 (t!356006 (toList!2985 lt!1571637)))) (noDuplicateKeys!501 (_2!27482 (h!54519 (t!356006 (toList!2985 lt!1571637))))))))

(declare-fun m!4978239 () Bool)

(assert (=> bs!634293 m!4978239))

(assert (=> b!4359854 d!1289868))

(declare-fun b_lambda!131719 () Bool)

(assert (= b_lambda!131591 (or start!422132 b_lambda!131719)))

(declare-fun bs!634294 () Bool)

(declare-fun d!1289870 () Bool)

(assert (= bs!634294 (and d!1289870 start!422132)))

(assert (=> bs!634294 (= (dynLambda!20643 lambda!141069 (h!54519 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200))))) (noDuplicateKeys!501 (_2!27482 (h!54519 (toList!2985 (+!659 lm!1707 (tuple2!48377 hash!377 newBucket!200)))))))))

(declare-fun m!4978241 () Bool)

(assert (=> bs!634294 m!4978241))

(assert (=> b!4359961 d!1289870))

(declare-fun b_lambda!131721 () Bool)

(assert (= b_lambda!131633 (or b!4359397 b_lambda!131721)))

(assert (=> b!4360285 d!1289830))

(declare-fun b_lambda!131723 () Bool)

(assert (= b_lambda!131635 (or b!4359397 b_lambda!131723)))

(declare-fun bs!634295 () Bool)

(declare-fun d!1289872 () Bool)

(assert (= bs!634295 (and d!1289872 b!4359397)))

(assert (=> bs!634295 (= (dynLambda!20645 lambda!141169 (h!54518 (toList!2986 lt!1572035))) (contains!11183 lt!1572022 (_1!27481 (h!54518 (toList!2986 lt!1572035)))))))

(declare-fun m!4978247 () Bool)

(assert (=> bs!634295 m!4978247))

(assert (=> b!4360296 d!1289872))

(check-sat (not b_lambda!131703) (not d!1289426) (not b!4360287) (not b!4359553) (not b!4359983) (not bs!634275) (not b_lambda!131697) (not b_lambda!131559) (not d!1289290) (not d!1289772) (not b!4360120) (not b!4360155) (not b!4360204) (not bm!303040) (not bs!634266) (not d!1289484) (not b!4359813) (not d!1289632) (not b!4359792) (not b!4360108) (not b!4359963) (not b!4360326) (not d!1289458) (not b!4360118) (not d!1289814) (not d!1289256) (not b!4359680) (not bm!303007) (not b!4359512) (not b!4359549) (not bs!634261) (not b!4360308) (not d!1289582) (not b_lambda!131705) (not b_lambda!131677) (not b!4359734) (not b_lambda!131551) (not bm!303077) (not b!4360390) (not b!4360140) (not b!4359642) (not bm!303002) (not d!1289324) (not b!4360316) (not b!4359645) (not b!4360110) (not b!4359695) (not b!4359589) (not d!1289530) (not b_lambda!131549) (not bm!303048) (not b!4360392) (not b!4359876) (not bs!634260) (not b!4359943) (not d!1289618) (not b!4360374) (not b!4359609) (not b!4360311) (not d!1289512) (not d!1289342) (not d!1289310) (not b!4360409) (not b!4360222) (not b!4360226) (not b_lambda!131709) (not b!4359441) (not d!1289338) (not b!4359438) (not b!4360411) (not b_lambda!131721) (not b!4360314) (not b!4360146) (not bs!634265) (not b!4360309) (not b!4359980) (not b!4360310) (not b!4359978) (not b!4360408) (not b!4359795) (not b!4360107) (not d!1289726) (not b!4359897) (not b!4360065) (not bm!303049) (not b!4360245) (not b!4360436) (not b!4359875) (not bs!634262) (not b!4359808) (not b_lambda!131645) (not b!4359811) (not d!1289620) (not d!1289684) (not bm!303036) (not b!4359858) (not b!4359878) (not bm!303032) (not b!4360112) (not bs!634277) (not b!4360290) (not b!4360433) (not b!4359631) (not b!4360288) (not b!4360354) (not b!4360247) (not b!4359985) (not b_lambda!131693) (not d!1289570) (not b!4359751) (not b!4360150) (not b!4360137) (not bs!634294) (not b!4359509) (not bs!634282) (not b_lambda!131685) (not b_lambda!131695) (not b!4359634) (not b!4359514) (not bs!634293) (not d!1289284) (not b!4360114) (not b!4359624) (not d!1289804) (not b!4360393) (not b_lambda!131701) (not b!4359826) (not bs!634269) (not b!4360168) (not b!4359591) (not d!1289330) (not d!1289770) (not b!4359554) (not b!4359927) (not bm!303067) (not d!1289590) (not b_lambda!131553) (not b!4359679) tp_is_empty!25241 (not b!4359904) (not b!4359809) (not bs!634290) (not d!1289366) (not b_lambda!131687) (not d!1289316) (not b_lambda!131673) (not d!1289344) (not b!4359874) (not d!1289612) (not b!4360378) (not b!4360325) (not b!4359628) (not b!4359587) (not b!4359872) (not d!1289270) (not d!1289788) (not b!4359464) (not b!4359640) (not b!4359946) (not b!4360123) (not b!4360208) (not b_lambda!131719) (not bm!303010) (not bm!303038) (not b!4360017) (not b!4360122) (not d!1289588) (not b!4359984) (not b!4360295) (not d!1289600) (not b!4359701) (not b!4360210) (not b_lambda!131691) (not d!1289314) (not b!4360395) (not b!4359979) (not d!1289430) (not b!4360243) (not b!4359753) (not b!4359816) (not bs!634280) (not b!4359537) (not b!4360109) (not b!4360015) (not d!1289440) (not b!4359548) (not bm!303089) (not d!1289572) (not b!4359986) (not b!4359676) (not b!4359431) (not b!4360173) (not b!4359896) (not b!4359908) (not b_lambda!131707) (not bm!303047) (not b!4360205) (not b!4359513) (not b!4359507) (not b!4360049) (not b!4359988) (not bs!634272) (not bm!303060) (not d!1289466) (not bm!303081) (not d!1289702) (not d!1289650) (not b!4359437) (not d!1289302) (not b_lambda!131689) (not d!1289416) (not d!1289414) (not b!4360198) (not b!4359588) (not bm!303004) (not b!4359442) (not d!1289690) (not b_lambda!131699) (not b!4359635) (not bs!634291) (not b!4360121) (not b!4360412) (not b!4360059) (not b!4360119) (not bm!303041) (not b!4359619) (not d!1289694) (not d!1289490) (not b!4359511) (not d!1289280) (not d!1289386) (not b!4360161) (not b!4360237) (not d!1289282) (not d!1289516) (not bs!634295) (not b!4360238) (not b!4359633) (not b!4359903) (not bs!634292) (not b!4360067) (not d!1289320) (not bm!303037) (not b!4359433) (not bm!303083) (not d!1289410) (not b!4359873) (not d!1289742) (not b!4360203) (not d!1289252) (not b!4359446) (not b!4359583) (not b!4359439) (not d!1289308) (not b_lambda!131683) (not b!4359432) (not d!1289624) (not b!4360346) (not b!4360066) (not b!4360431) (not b!4360297) (not d!1289622) (not b!4359678) (not b!4360312) (not b!4359855) (not bs!634267) (not b!4359681) (not b!4360127) (not d!1289810) (not b!4359626) (not d!1289786) (not b!4360291) (not b!4360196) (not b!4360142) (not b!4360016) (not d!1289790) (not b!4360152) (not d!1289362) (not b!4359797) (not d!1289332) (not b!4359912) (not b_lambda!131713) (not bs!634273) (not d!1289274) (not d!1289722) (not bm!302993) (not d!1289556) (not b!4359639) (not b!4359962) (not b_lambda!131681) (not d!1289478) (not bm!303079) (not d!1289306) (not b!4360437) (not b!4360069) (not bm!303068) (not bm!303080) (not b!4359646) (not b!4359641) (not b!4360410) (not d!1289408) (not d!1289706) (not b!4359637) (not d!1289806) (not b!4360201) (not d!1289454) (not d!1289258) (not b!4359621) (not d!1289782) (not b!4360289) (not b_lambda!131671) (not b!4359928) (not b!4359611) (not bm!303078) (not bm!303061) (not bs!634286) (not b!4360148) (not b!4360224) (not b!4360244) (not b!4359736) (not b!4360405) (not b!4359909) tp_is_empty!25243 (not b!4359518) (not b!4360429) (not b!4359622) (not bs!634284) (not b!4360435) (not d!1289318) (not d!1289792) (not d!1289406) (not d!1289374) (not b!4359964) (not b!4359976) (not b!4359617) (not b!4359436) (not b_lambda!131711) (not b!4359551) (not b!4359699) (not b!4360322) (not b_lambda!131717) (not d!1289450) (not b_lambda!131669) (not b!4360240) (not bs!634289) (not bm!303088) (not b!4360165) (not b_lambda!131675) (not b!4359853) (not d!1289388) (not b!4360286) (not b!4360158) (not d!1289398) (not b!4360125) (not bm!303008) (not b!4359457) (not d!1289594) (not d!1289560) (not b!4359603) (not b_lambda!131547) (not bs!634264) (not b!4360050) (not bm!303033) (not bs!634288) (not b!4359547) (not b!4359901) (not d!1289646) (not b!4359812) (not b!4359440) (not b!4359552) (not d!1289774) (not b!4360344) (not b!4360424) (not b!4360293) (not b!4359732) (not b!4360427) (not bs!634263) (not bm!303090) (not b!4359910) (not b!4359463) (not b!4360380) (not d!1289562) (not b!4360147) (not b!4359707) (not b!4359929) (not b!4359620) (not b!4360105) (not b!4359931) (not b!4360111) (not d!1289248) (not b!4359683) (not b_lambda!131679) (not b_lambda!131723) (not b!4360391) (not bm!303035) (not b!4360298) (not b_lambda!131651) (not b!4359923) (not b!4359444) (not b!4359814) (not b!4360116) (not d!1289470) (not b!4359805) (not b!4359739) (not b_lambda!131667) (not b!4359697) (not b!4360232) (not b!4359623) (not b_lambda!131715) (not b!4360054) (not b!4359517) (not bm!303034) (not b!4359847) (not bm!303059) (not bm!303039) (not d!1289720) (not b!4359596) (not b!4360385) (not b!4360438))
(check-sat)
