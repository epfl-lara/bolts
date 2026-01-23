; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474056 () Bool)

(assert start!474056)

(declare-fun b!4688155 () Bool)

(declare-fun res!1977118 () Bool)

(declare-fun e!2924779 () Bool)

(assert (=> b!4688155 (=> (not res!1977118) (not e!2924779))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6215 0))(
  ( (HashableExt!6214 (__x!31918 Int)) )
))
(declare-fun hashF!1323 () Hashable!6215)

(declare-datatypes ((K!13765 0))(
  ( (K!13766 (val!19283 Int)) )
))
(declare-datatypes ((V!14011 0))(
  ( (V!14012 (val!19284 Int)) )
))
(declare-datatypes ((tuple2!53778 0))(
  ( (tuple2!53779 (_1!30183 K!13765) (_2!30183 V!14011)) )
))
(declare-datatypes ((List!52511 0))(
  ( (Nil!52387) (Cons!52387 (h!58626 tuple2!53778) (t!359681 List!52511)) )
))
(declare-fun newBucket!218 () List!52511)

(declare-fun allKeysSameHash!1672 (List!52511 (_ BitVec 64) Hashable!6215) Bool)

(assert (=> b!4688155 (= res!1977118 (allKeysSameHash!1672 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4688156 () Bool)

(declare-fun res!1977119 () Bool)

(declare-fun e!2924778 () Bool)

(assert (=> b!4688156 (=> (not res!1977119) (not e!2924778))))

(declare-fun key!4653 () K!13765)

(declare-fun oldBucket!34 () List!52511)

(declare-fun removePairForKey!1441 (List!52511 K!13765) List!52511)

(assert (=> b!4688156 (= res!1977119 (= (removePairForKey!1441 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4688157 () Bool)

(declare-fun e!2924783 () Bool)

(declare-fun e!2924785 () Bool)

(assert (=> b!4688157 (= e!2924783 e!2924785)))

(declare-fun res!1977112 () Bool)

(assert (=> b!4688157 (=> res!1977112 e!2924785)))

(declare-fun containsKey!3033 (List!52511 K!13765) Bool)

(assert (=> b!4688157 (= res!1977112 (not (containsKey!3033 (t!359681 oldBucket!34) key!4653)))))

(assert (=> b!4688157 (containsKey!3033 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123649 0))(
  ( (Unit!123650) )
))
(declare-fun lt!1847564 () Unit!123649)

(declare-fun lemmaGetPairDefinedThenContainsKey!198 (List!52511 K!13765 Hashable!6215) Unit!123649)

(assert (=> b!4688157 (= lt!1847564 (lemmaGetPairDefinedThenContainsKey!198 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1847562 () List!52511)

(declare-datatypes ((Option!12057 0))(
  ( (None!12056) (Some!12056 (v!46459 tuple2!53778)) )
))
(declare-fun isDefined!9312 (Option!12057) Bool)

(declare-fun getPair!450 (List!52511 K!13765) Option!12057)

(assert (=> b!4688157 (isDefined!9312 (getPair!450 lt!1847562 key!4653))))

(declare-datatypes ((tuple2!53780 0))(
  ( (tuple2!53781 (_1!30184 (_ BitVec 64)) (_2!30184 List!52511)) )
))
(declare-datatypes ((List!52512 0))(
  ( (Nil!52388) (Cons!52388 (h!58627 tuple2!53780) (t!359682 List!52512)) )
))
(declare-datatypes ((ListLongMap!4111 0))(
  ( (ListLongMap!4112 (toList!5581 List!52512)) )
))
(declare-fun lm!2023 () ListLongMap!4111)

(declare-fun lt!1847570 () Unit!123649)

(declare-fun lt!1847574 () tuple2!53780)

(declare-fun lambda!206605 () Int)

(declare-fun forallContained!3414 (List!52512 Int tuple2!53780) Unit!123649)

(assert (=> b!4688157 (= lt!1847570 (forallContained!3414 (toList!5581 lm!2023) lambda!206605 lt!1847574))))

(declare-fun contains!15572 (List!52512 tuple2!53780) Bool)

(assert (=> b!4688157 (contains!15572 (toList!5581 lm!2023) lt!1847574)))

(declare-fun lt!1847566 () (_ BitVec 64))

(assert (=> b!4688157 (= lt!1847574 (tuple2!53781 lt!1847566 lt!1847562))))

(declare-fun lt!1847573 () Unit!123649)

(declare-fun lemmaGetValueImpliesTupleContained!255 (ListLongMap!4111 (_ BitVec 64) List!52511) Unit!123649)

(assert (=> b!4688157 (= lt!1847573 (lemmaGetValueImpliesTupleContained!255 lm!2023 lt!1847566 lt!1847562))))

(declare-fun apply!12329 (ListLongMap!4111 (_ BitVec 64)) List!52511)

(assert (=> b!4688157 (= lt!1847562 (apply!12329 lm!2023 lt!1847566))))

(declare-fun contains!15573 (ListLongMap!4111 (_ BitVec 64)) Bool)

(assert (=> b!4688157 (contains!15573 lm!2023 lt!1847566)))

(declare-fun lt!1847572 () Unit!123649)

(declare-fun lemmaInGenMapThenLongMapContainsHash!656 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> b!4688157 (= lt!1847572 (lemmaInGenMapThenLongMapContainsHash!656 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1847575 () Unit!123649)

(declare-fun lemmaInGenMapThenGetPairDefined!246 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> b!4688157 (= lt!1847575 (lemmaInGenMapThenGetPairDefined!246 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4688158 () Bool)

(declare-fun res!1977113 () Bool)

(declare-fun e!2924784 () Bool)

(assert (=> b!4688158 (=> (not res!1977113) (not e!2924784))))

(get-info :version)

(assert (=> b!4688158 (= res!1977113 ((_ is Cons!52388) (toList!5581 lm!2023)))))

(declare-fun res!1977108 () Bool)

(assert (=> start!474056 (=> (not res!1977108) (not e!2924778))))

(declare-fun forall!11307 (List!52512 Int) Bool)

(assert (=> start!474056 (= res!1977108 (forall!11307 (toList!5581 lm!2023) lambda!206605))))

(assert (=> start!474056 e!2924778))

(declare-fun e!2924781 () Bool)

(declare-fun inv!67639 (ListLongMap!4111) Bool)

(assert (=> start!474056 (and (inv!67639 lm!2023) e!2924781)))

(declare-fun tp_is_empty!30677 () Bool)

(assert (=> start!474056 tp_is_empty!30677))

(declare-fun e!2924787 () Bool)

(assert (=> start!474056 e!2924787))

(assert (=> start!474056 true))

(declare-fun e!2924782 () Bool)

(assert (=> start!474056 e!2924782))

(declare-fun b!4688159 () Bool)

(declare-fun res!1977107 () Bool)

(declare-fun e!2924780 () Bool)

(assert (=> b!4688159 (=> res!1977107 e!2924780)))

(declare-fun lt!1847567 () List!52511)

(assert (=> b!4688159 (= res!1977107 (not (= (removePairForKey!1441 (t!359681 oldBucket!34) key!4653) lt!1847567)))))

(declare-fun b!4688160 () Bool)

(declare-fun res!1977109 () Bool)

(assert (=> b!4688160 (=> (not res!1977109) (not e!2924779))))

(declare-fun allKeysSameHashInMap!1760 (ListLongMap!4111 Hashable!6215) Bool)

(assert (=> b!4688160 (= res!1977109 (allKeysSameHashInMap!1760 lm!2023 hashF!1323))))

(declare-fun b!4688161 () Bool)

(declare-fun res!1977104 () Bool)

(assert (=> b!4688161 (=> (not res!1977104) (not e!2924778))))

(declare-fun noDuplicateKeys!1846 (List!52511) Bool)

(assert (=> b!4688161 (= res!1977104 (noDuplicateKeys!1846 oldBucket!34))))

(declare-fun b!4688162 () Bool)

(declare-fun tp!1345784 () Bool)

(assert (=> b!4688162 (= e!2924781 tp!1345784)))

(declare-fun b!4688163 () Bool)

(declare-fun res!1977114 () Bool)

(assert (=> b!4688163 (=> (not res!1977114) (not e!2924778))))

(assert (=> b!4688163 (= res!1977114 (allKeysSameHash!1672 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4688164 () Bool)

(assert (=> b!4688164 (= e!2924784 (not e!2924783))))

(declare-fun res!1977110 () Bool)

(assert (=> b!4688164 (=> res!1977110 e!2924783)))

(assert (=> b!4688164 (= res!1977110 (or (and ((_ is Cons!52387) oldBucket!34) (= (_1!30183 (h!58626 oldBucket!34)) key!4653)) (not ((_ is Cons!52387) oldBucket!34)) (= (_1!30183 (h!58626 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4945 0))(
  ( (ListMap!4946 (toList!5582 List!52511)) )
))
(declare-fun lt!1847565 () ListMap!4945)

(declare-fun lt!1847569 () ListMap!4945)

(declare-fun addToMapMapFromBucket!1278 (List!52511 ListMap!4945) ListMap!4945)

(assert (=> b!4688164 (= lt!1847565 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (toList!5581 lm!2023))) lt!1847569))))

(declare-fun extractMap!1872 (List!52512) ListMap!4945)

(assert (=> b!4688164 (= lt!1847569 (extractMap!1872 (t!359682 (toList!5581 lm!2023))))))

(declare-fun tail!8568 (ListLongMap!4111) ListLongMap!4111)

(assert (=> b!4688164 (= (t!359682 (toList!5581 lm!2023)) (toList!5581 (tail!8568 lm!2023)))))

(declare-fun tp!1345785 () Bool)

(declare-fun tp_is_empty!30679 () Bool)

(declare-fun b!4688165 () Bool)

(assert (=> b!4688165 (= e!2924782 (and tp_is_empty!30677 tp_is_empty!30679 tp!1345785))))

(declare-fun b!4688166 () Bool)

(assert (=> b!4688166 (= e!2924779 e!2924784)))

(declare-fun res!1977116 () Bool)

(assert (=> b!4688166 (=> (not res!1977116) (not e!2924784))))

(declare-fun lt!1847563 () tuple2!53780)

(declare-fun head!9955 (List!52512) tuple2!53780)

(assert (=> b!4688166 (= res!1977116 (= (head!9955 (toList!5581 lm!2023)) lt!1847563))))

(assert (=> b!4688166 (= lt!1847563 (tuple2!53781 hash!405 oldBucket!34))))

(declare-fun b!4688167 () Bool)

(assert (=> b!4688167 (= e!2924785 e!2924780)))

(declare-fun res!1977117 () Bool)

(assert (=> b!4688167 (=> res!1977117 e!2924780)))

(declare-fun lt!1847578 () List!52511)

(assert (=> b!4688167 (= res!1977117 (not (= (removePairForKey!1441 lt!1847578 key!4653) lt!1847567)))))

(declare-fun tail!8569 (List!52511) List!52511)

(assert (=> b!4688167 (= lt!1847567 (tail!8569 newBucket!218))))

(assert (=> b!4688167 (= lt!1847578 (tail!8569 oldBucket!34))))

(declare-fun b!4688168 () Bool)

(declare-fun res!1977115 () Bool)

(assert (=> b!4688168 (=> (not res!1977115) (not e!2924778))))

(assert (=> b!4688168 (= res!1977115 (noDuplicateKeys!1846 newBucket!218))))

(declare-fun b!4688169 () Bool)

(declare-fun e!2924788 () Bool)

(assert (=> b!4688169 (= e!2924788 (not (= newBucket!218 Nil!52387)))))

(declare-fun b!4688170 () Bool)

(assert (=> b!4688170 (= e!2924780 e!2924788)))

(declare-fun res!1977106 () Bool)

(assert (=> b!4688170 (=> res!1977106 e!2924788)))

(declare-fun eq!1005 (ListMap!4945 ListMap!4945) Bool)

(declare-fun +!2130 (ListMap!4945 tuple2!53778) ListMap!4945)

(assert (=> b!4688170 (= res!1977106 (not (eq!1005 (extractMap!1872 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))) (+!2130 (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))) (h!58626 oldBucket!34)))))))

(declare-fun lt!1847576 () tuple2!53778)

(assert (=> b!4688170 (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847576 lt!1847567) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847576))))

(declare-fun lt!1847561 () Unit!123649)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!254 (tuple2!53778 List!52511 ListMap!4945) Unit!123649)

(assert (=> b!4688170 (= lt!1847561 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!254 lt!1847576 lt!1847567 lt!1847569))))

(declare-fun head!9956 (List!52511) tuple2!53778)

(assert (=> b!4688170 (= lt!1847576 (head!9956 newBucket!218))))

(declare-fun lt!1847577 () tuple2!53778)

(assert (=> b!4688170 (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847577 lt!1847578) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847577))))

(declare-fun lt!1847568 () Unit!123649)

(assert (=> b!4688170 (= lt!1847568 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!254 lt!1847577 lt!1847578 lt!1847569))))

(assert (=> b!4688170 (= lt!1847577 (head!9956 oldBucket!34))))

(declare-fun lt!1847560 () List!52512)

(declare-fun contains!15574 (ListMap!4945 K!13765) Bool)

(assert (=> b!4688170 (contains!15574 (extractMap!1872 lt!1847560) key!4653)))

(declare-fun lt!1847571 () Unit!123649)

(declare-fun lemmaListContainsThenExtractedMapContains!438 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> b!4688170 (= lt!1847571 (lemmaListContainsThenExtractedMapContains!438 (ListLongMap!4112 lt!1847560) key!4653 hashF!1323))))

(assert (=> b!4688170 (= lt!1847560 (Cons!52388 (tuple2!53781 hash!405 (t!359681 oldBucket!34)) (t!359682 (toList!5581 lm!2023))))))

(declare-fun b!4688171 () Bool)

(declare-fun e!2924786 () Bool)

(assert (=> b!4688171 (= e!2924778 e!2924786)))

(declare-fun res!1977111 () Bool)

(assert (=> b!4688171 (=> (not res!1977111) (not e!2924786))))

(assert (=> b!4688171 (= res!1977111 (contains!15574 lt!1847565 key!4653))))

(assert (=> b!4688171 (= lt!1847565 (extractMap!1872 (toList!5581 lm!2023)))))

(declare-fun tp!1345783 () Bool)

(declare-fun b!4688172 () Bool)

(assert (=> b!4688172 (= e!2924787 (and tp_is_empty!30677 tp_is_empty!30679 tp!1345783))))

(declare-fun b!4688173 () Bool)

(assert (=> b!4688173 (= e!2924786 e!2924779)))

(declare-fun res!1977105 () Bool)

(assert (=> b!4688173 (=> (not res!1977105) (not e!2924779))))

(assert (=> b!4688173 (= res!1977105 (= lt!1847566 hash!405))))

(declare-fun hash!4051 (Hashable!6215 K!13765) (_ BitVec 64))

(assert (=> b!4688173 (= lt!1847566 (hash!4051 hashF!1323 key!4653))))

(assert (= (and start!474056 res!1977108) b!4688161))

(assert (= (and b!4688161 res!1977104) b!4688168))

(assert (= (and b!4688168 res!1977115) b!4688156))

(assert (= (and b!4688156 res!1977119) b!4688163))

(assert (= (and b!4688163 res!1977114) b!4688171))

(assert (= (and b!4688171 res!1977111) b!4688173))

(assert (= (and b!4688173 res!1977105) b!4688155))

(assert (= (and b!4688155 res!1977118) b!4688160))

(assert (= (and b!4688160 res!1977109) b!4688166))

(assert (= (and b!4688166 res!1977116) b!4688158))

(assert (= (and b!4688158 res!1977113) b!4688164))

(assert (= (and b!4688164 (not res!1977110)) b!4688157))

(assert (= (and b!4688157 (not res!1977112)) b!4688167))

(assert (= (and b!4688167 (not res!1977117)) b!4688159))

(assert (= (and b!4688159 (not res!1977107)) b!4688170))

(assert (= (and b!4688170 (not res!1977106)) b!4688169))

(assert (= start!474056 b!4688162))

(assert (= (and start!474056 ((_ is Cons!52387) oldBucket!34)) b!4688172))

(assert (= (and start!474056 ((_ is Cons!52387) newBucket!218)) b!4688165))

(declare-fun m!5588621 () Bool)

(assert (=> b!4688171 m!5588621))

(declare-fun m!5588623 () Bool)

(assert (=> b!4688171 m!5588623))

(declare-fun m!5588625 () Bool)

(assert (=> b!4688155 m!5588625))

(declare-fun m!5588627 () Bool)

(assert (=> b!4688170 m!5588627))

(declare-fun m!5588629 () Bool)

(assert (=> b!4688170 m!5588629))

(declare-fun m!5588631 () Bool)

(assert (=> b!4688170 m!5588631))

(declare-fun m!5588633 () Bool)

(assert (=> b!4688170 m!5588633))

(declare-fun m!5588635 () Bool)

(assert (=> b!4688170 m!5588635))

(declare-fun m!5588637 () Bool)

(assert (=> b!4688170 m!5588637))

(declare-fun m!5588639 () Bool)

(assert (=> b!4688170 m!5588639))

(declare-fun m!5588641 () Bool)

(assert (=> b!4688170 m!5588641))

(declare-fun m!5588643 () Bool)

(assert (=> b!4688170 m!5588643))

(declare-fun m!5588645 () Bool)

(assert (=> b!4688170 m!5588645))

(declare-fun m!5588647 () Bool)

(assert (=> b!4688170 m!5588647))

(assert (=> b!4688170 m!5588643))

(assert (=> b!4688170 m!5588639))

(declare-fun m!5588649 () Bool)

(assert (=> b!4688170 m!5588649))

(declare-fun m!5588651 () Bool)

(assert (=> b!4688170 m!5588651))

(declare-fun m!5588653 () Bool)

(assert (=> b!4688170 m!5588653))

(assert (=> b!4688170 m!5588645))

(assert (=> b!4688170 m!5588653))

(assert (=> b!4688170 m!5588627))

(declare-fun m!5588655 () Bool)

(assert (=> b!4688170 m!5588655))

(declare-fun m!5588657 () Bool)

(assert (=> b!4688170 m!5588657))

(assert (=> b!4688170 m!5588651))

(assert (=> b!4688170 m!5588629))

(declare-fun m!5588659 () Bool)

(assert (=> b!4688170 m!5588659))

(declare-fun m!5588661 () Bool)

(assert (=> b!4688170 m!5588661))

(declare-fun m!5588663 () Bool)

(assert (=> b!4688170 m!5588663))

(assert (=> b!4688170 m!5588657))

(assert (=> b!4688170 m!5588633))

(assert (=> b!4688170 m!5588631))

(declare-fun m!5588665 () Bool)

(assert (=> b!4688173 m!5588665))

(declare-fun m!5588667 () Bool)

(assert (=> b!4688157 m!5588667))

(declare-fun m!5588669 () Bool)

(assert (=> b!4688157 m!5588669))

(declare-fun m!5588671 () Bool)

(assert (=> b!4688157 m!5588671))

(declare-fun m!5588673 () Bool)

(assert (=> b!4688157 m!5588673))

(declare-fun m!5588675 () Bool)

(assert (=> b!4688157 m!5588675))

(declare-fun m!5588677 () Bool)

(assert (=> b!4688157 m!5588677))

(declare-fun m!5588679 () Bool)

(assert (=> b!4688157 m!5588679))

(declare-fun m!5588681 () Bool)

(assert (=> b!4688157 m!5588681))

(declare-fun m!5588683 () Bool)

(assert (=> b!4688157 m!5588683))

(assert (=> b!4688157 m!5588673))

(declare-fun m!5588685 () Bool)

(assert (=> b!4688157 m!5588685))

(declare-fun m!5588687 () Bool)

(assert (=> b!4688157 m!5588687))

(declare-fun m!5588689 () Bool)

(assert (=> b!4688157 m!5588689))

(declare-fun m!5588691 () Bool)

(assert (=> b!4688167 m!5588691))

(declare-fun m!5588693 () Bool)

(assert (=> b!4688167 m!5588693))

(declare-fun m!5588695 () Bool)

(assert (=> b!4688167 m!5588695))

(declare-fun m!5588697 () Bool)

(assert (=> b!4688159 m!5588697))

(declare-fun m!5588699 () Bool)

(assert (=> b!4688166 m!5588699))

(declare-fun m!5588701 () Bool)

(assert (=> start!474056 m!5588701))

(declare-fun m!5588703 () Bool)

(assert (=> start!474056 m!5588703))

(declare-fun m!5588705 () Bool)

(assert (=> b!4688164 m!5588705))

(declare-fun m!5588707 () Bool)

(assert (=> b!4688164 m!5588707))

(declare-fun m!5588709 () Bool)

(assert (=> b!4688164 m!5588709))

(declare-fun m!5588711 () Bool)

(assert (=> b!4688161 m!5588711))

(declare-fun m!5588713 () Bool)

(assert (=> b!4688163 m!5588713))

(declare-fun m!5588715 () Bool)

(assert (=> b!4688168 m!5588715))

(declare-fun m!5588717 () Bool)

(assert (=> b!4688160 m!5588717))

(declare-fun m!5588719 () Bool)

(assert (=> b!4688156 m!5588719))

(check-sat (not b!4688168) (not b!4688171) (not b!4688167) (not b!4688159) (not b!4688164) (not b!4688156) (not b!4688155) (not b!4688166) tp_is_empty!30677 (not b!4688173) (not b!4688160) (not b!4688165) (not start!474056) (not b!4688170) tp_is_empty!30679 (not b!4688157) (not b!4688172) (not b!4688162) (not b!4688163) (not b!4688161))
(check-sat)
(get-model)

(declare-fun d!1489813 () Bool)

(assert (=> d!1489813 true))

(assert (=> d!1489813 true))

(declare-fun lambda!206608 () Int)

(declare-fun forall!11308 (List!52511 Int) Bool)

(assert (=> d!1489813 (= (allKeysSameHash!1672 newBucket!218 hash!405 hashF!1323) (forall!11308 newBucket!218 lambda!206608))))

(declare-fun bs!1085316 () Bool)

(assert (= bs!1085316 d!1489813))

(declare-fun m!5588721 () Bool)

(assert (=> bs!1085316 m!5588721))

(assert (=> b!4688155 d!1489813))

(declare-fun bs!1085322 () Bool)

(declare-fun b!4688250 () Bool)

(assert (= bs!1085322 (and b!4688250 d!1489813)))

(declare-fun lambda!206646 () Int)

(assert (=> bs!1085322 (not (= lambda!206646 lambda!206608))))

(assert (=> b!4688250 true))

(declare-fun bs!1085323 () Bool)

(declare-fun b!4688252 () Bool)

(assert (= bs!1085323 (and b!4688252 d!1489813)))

(declare-fun lambda!206647 () Int)

(assert (=> bs!1085323 (not (= lambda!206647 lambda!206608))))

(declare-fun bs!1085324 () Bool)

(assert (= bs!1085324 (and b!4688252 b!4688250)))

(assert (=> bs!1085324 (= lambda!206647 lambda!206646)))

(assert (=> b!4688252 true))

(declare-fun lambda!206648 () Int)

(assert (=> bs!1085323 (not (= lambda!206648 lambda!206608))))

(declare-fun lt!1847669 () ListMap!4945)

(assert (=> bs!1085324 (= (= lt!1847669 lt!1847569) (= lambda!206648 lambda!206646))))

(assert (=> b!4688252 (= (= lt!1847669 lt!1847569) (= lambda!206648 lambda!206647))))

(assert (=> b!4688252 true))

(declare-fun bs!1085325 () Bool)

(declare-fun d!1489815 () Bool)

(assert (= bs!1085325 (and d!1489815 d!1489813)))

(declare-fun lambda!206649 () Int)

(assert (=> bs!1085325 (not (= lambda!206649 lambda!206608))))

(declare-fun bs!1085326 () Bool)

(assert (= bs!1085326 (and d!1489815 b!4688250)))

(declare-fun lt!1847657 () ListMap!4945)

(assert (=> bs!1085326 (= (= lt!1847657 lt!1847569) (= lambda!206649 lambda!206646))))

(declare-fun bs!1085327 () Bool)

(assert (= bs!1085327 (and d!1489815 b!4688252)))

(assert (=> bs!1085327 (= (= lt!1847657 lt!1847569) (= lambda!206649 lambda!206647))))

(assert (=> bs!1085327 (= (= lt!1847657 lt!1847669) (= lambda!206649 lambda!206648))))

(assert (=> d!1489815 true))

(declare-fun call!327617 () Bool)

(declare-fun bm!327612 () Bool)

(declare-fun c!801624 () Bool)

(declare-fun lt!1847656 () ListMap!4945)

(assert (=> bm!327612 (= call!327617 (forall!11308 (ite c!801624 (toList!5582 lt!1847569) (toList!5582 lt!1847656)) (ite c!801624 lambda!206646 lambda!206648)))))

(declare-fun b!4688249 () Bool)

(declare-fun res!1977142 () Bool)

(declare-fun e!2924832 () Bool)

(assert (=> b!4688249 (=> (not res!1977142) (not e!2924832))))

(assert (=> b!4688249 (= res!1977142 (forall!11308 (toList!5582 lt!1847569) lambda!206649))))

(declare-fun e!2924830 () ListMap!4945)

(assert (=> b!4688250 (= e!2924830 lt!1847569)))

(declare-fun lt!1847658 () Unit!123649)

(declare-fun call!327619 () Unit!123649)

(assert (=> b!4688250 (= lt!1847658 call!327619)))

(assert (=> b!4688250 call!327617))

(declare-fun lt!1847653 () Unit!123649)

(assert (=> b!4688250 (= lt!1847653 lt!1847658)))

(declare-fun call!327618 () Bool)

(assert (=> b!4688250 call!327618))

(declare-fun lt!1847665 () Unit!123649)

(declare-fun Unit!123651 () Unit!123649)

(assert (=> b!4688250 (= lt!1847665 Unit!123651)))

(declare-fun b!4688251 () Bool)

(declare-fun e!2924831 () Bool)

(assert (=> b!4688251 (= e!2924831 (forall!11308 (toList!5582 lt!1847569) lambda!206648))))

(assert (=> b!4688252 (= e!2924830 lt!1847669)))

(assert (=> b!4688252 (= lt!1847656 (+!2130 lt!1847569 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023))))))))

(assert (=> b!4688252 (= lt!1847669 (addToMapMapFromBucket!1278 (t!359681 (_2!30184 (h!58627 (toList!5581 lm!2023)))) (+!2130 lt!1847569 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023)))))))))

(declare-fun lt!1847670 () Unit!123649)

(assert (=> b!4688252 (= lt!1847670 call!327619)))

(assert (=> b!4688252 (forall!11308 (toList!5582 lt!1847569) lambda!206647)))

(declare-fun lt!1847660 () Unit!123649)

(assert (=> b!4688252 (= lt!1847660 lt!1847670)))

(assert (=> b!4688252 call!327617))

(declare-fun lt!1847664 () Unit!123649)

(declare-fun Unit!123652 () Unit!123649)

(assert (=> b!4688252 (= lt!1847664 Unit!123652)))

(assert (=> b!4688252 (forall!11308 (t!359681 (_2!30184 (h!58627 (toList!5581 lm!2023)))) lambda!206648)))

(declare-fun lt!1847652 () Unit!123649)

(declare-fun Unit!123653 () Unit!123649)

(assert (=> b!4688252 (= lt!1847652 Unit!123653)))

(declare-fun lt!1847663 () Unit!123649)

(declare-fun Unit!123654 () Unit!123649)

(assert (=> b!4688252 (= lt!1847663 Unit!123654)))

(declare-fun lt!1847662 () Unit!123649)

(declare-fun forallContained!3415 (List!52511 Int tuple2!53778) Unit!123649)

(assert (=> b!4688252 (= lt!1847662 (forallContained!3415 (toList!5582 lt!1847656) lambda!206648 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023))))))))

(assert (=> b!4688252 (contains!15574 lt!1847656 (_1!30183 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023))))))))

(declare-fun lt!1847672 () Unit!123649)

(declare-fun Unit!123655 () Unit!123649)

(assert (=> b!4688252 (= lt!1847672 Unit!123655)))

(assert (=> b!4688252 (contains!15574 lt!1847669 (_1!30183 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023))))))))

(declare-fun lt!1847668 () Unit!123649)

(declare-fun Unit!123656 () Unit!123649)

(assert (=> b!4688252 (= lt!1847668 Unit!123656)))

(assert (=> b!4688252 (forall!11308 (_2!30184 (h!58627 (toList!5581 lm!2023))) lambda!206648)))

(declare-fun lt!1847655 () Unit!123649)

(declare-fun Unit!123657 () Unit!123649)

(assert (=> b!4688252 (= lt!1847655 Unit!123657)))

(assert (=> b!4688252 call!327618))

(declare-fun lt!1847661 () Unit!123649)

(declare-fun Unit!123658 () Unit!123649)

(assert (=> b!4688252 (= lt!1847661 Unit!123658)))

(declare-fun lt!1847659 () Unit!123649)

(declare-fun Unit!123659 () Unit!123649)

(assert (=> b!4688252 (= lt!1847659 Unit!123659)))

(declare-fun lt!1847666 () Unit!123649)

(declare-fun addForallContainsKeyThenBeforeAdding!690 (ListMap!4945 ListMap!4945 K!13765 V!14011) Unit!123649)

(assert (=> b!4688252 (= lt!1847666 (addForallContainsKeyThenBeforeAdding!690 lt!1847569 lt!1847669 (_1!30183 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023))))) (_2!30183 (h!58626 (_2!30184 (h!58627 (toList!5581 lm!2023)))))))))

(assert (=> b!4688252 (forall!11308 (toList!5582 lt!1847569) lambda!206648)))

(declare-fun lt!1847671 () Unit!123649)

(assert (=> b!4688252 (= lt!1847671 lt!1847666)))

(assert (=> b!4688252 (forall!11308 (toList!5582 lt!1847569) lambda!206648)))

(declare-fun lt!1847654 () Unit!123649)

(declare-fun Unit!123660 () Unit!123649)

(assert (=> b!4688252 (= lt!1847654 Unit!123660)))

(declare-fun res!1977143 () Bool)

(assert (=> b!4688252 (= res!1977143 (forall!11308 (_2!30184 (h!58627 (toList!5581 lm!2023))) lambda!206648))))

(assert (=> b!4688252 (=> (not res!1977143) (not e!2924831))))

(assert (=> b!4688252 e!2924831))

(declare-fun lt!1847667 () Unit!123649)

(declare-fun Unit!123661 () Unit!123649)

(assert (=> b!4688252 (= lt!1847667 Unit!123661)))

(assert (=> d!1489815 e!2924832))

(declare-fun res!1977141 () Bool)

(assert (=> d!1489815 (=> (not res!1977141) (not e!2924832))))

(assert (=> d!1489815 (= res!1977141 (forall!11308 (_2!30184 (h!58627 (toList!5581 lm!2023))) lambda!206649))))

(assert (=> d!1489815 (= lt!1847657 e!2924830)))

(assert (=> d!1489815 (= c!801624 ((_ is Nil!52387) (_2!30184 (h!58627 (toList!5581 lm!2023)))))))

(assert (=> d!1489815 (noDuplicateKeys!1846 (_2!30184 (h!58627 (toList!5581 lm!2023))))))

(assert (=> d!1489815 (= (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (toList!5581 lm!2023))) lt!1847569) lt!1847657)))

(declare-fun bm!327613 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!691 (ListMap!4945) Unit!123649)

(assert (=> bm!327613 (= call!327619 (lemmaContainsAllItsOwnKeys!691 lt!1847569))))

(declare-fun b!4688253 () Bool)

(declare-fun invariantList!1403 (List!52511) Bool)

(assert (=> b!4688253 (= e!2924832 (invariantList!1403 (toList!5582 lt!1847657)))))

(declare-fun bm!327614 () Bool)

(assert (=> bm!327614 (= call!327618 (forall!11308 (ite c!801624 (toList!5582 lt!1847569) (toList!5582 lt!1847656)) (ite c!801624 lambda!206646 lambda!206648)))))

(assert (= (and d!1489815 c!801624) b!4688250))

(assert (= (and d!1489815 (not c!801624)) b!4688252))

(assert (= (and b!4688252 res!1977143) b!4688251))

(assert (= (or b!4688250 b!4688252) bm!327613))

(assert (= (or b!4688250 b!4688252) bm!327612))

(assert (= (or b!4688250 b!4688252) bm!327614))

(assert (= (and d!1489815 res!1977141) b!4688249))

(assert (= (and b!4688249 res!1977142) b!4688253))

(declare-fun m!5588765 () Bool)

(assert (=> bm!327612 m!5588765))

(declare-fun m!5588767 () Bool)

(assert (=> b!4688252 m!5588767))

(declare-fun m!5588769 () Bool)

(assert (=> b!4688252 m!5588769))

(declare-fun m!5588771 () Bool)

(assert (=> b!4688252 m!5588771))

(declare-fun m!5588773 () Bool)

(assert (=> b!4688252 m!5588773))

(declare-fun m!5588775 () Bool)

(assert (=> b!4688252 m!5588775))

(assert (=> b!4688252 m!5588769))

(declare-fun m!5588777 () Bool)

(assert (=> b!4688252 m!5588777))

(declare-fun m!5588779 () Bool)

(assert (=> b!4688252 m!5588779))

(assert (=> b!4688252 m!5588773))

(declare-fun m!5588781 () Bool)

(assert (=> b!4688252 m!5588781))

(declare-fun m!5588783 () Bool)

(assert (=> b!4688252 m!5588783))

(declare-fun m!5588785 () Bool)

(assert (=> b!4688252 m!5588785))

(assert (=> b!4688252 m!5588783))

(declare-fun m!5588787 () Bool)

(assert (=> d!1489815 m!5588787))

(declare-fun m!5588789 () Bool)

(assert (=> d!1489815 m!5588789))

(declare-fun m!5588791 () Bool)

(assert (=> b!4688253 m!5588791))

(declare-fun m!5588793 () Bool)

(assert (=> b!4688249 m!5588793))

(declare-fun m!5588795 () Bool)

(assert (=> bm!327613 m!5588795))

(assert (=> b!4688251 m!5588769))

(assert (=> bm!327614 m!5588765))

(assert (=> b!4688164 d!1489815))

(declare-fun bs!1085328 () Bool)

(declare-fun d!1489833 () Bool)

(assert (= bs!1085328 (and d!1489833 start!474056)))

(declare-fun lambda!206652 () Int)

(assert (=> bs!1085328 (= lambda!206652 lambda!206605)))

(declare-fun lt!1847675 () ListMap!4945)

(assert (=> d!1489833 (invariantList!1403 (toList!5582 lt!1847675))))

(declare-fun e!2924835 () ListMap!4945)

(assert (=> d!1489833 (= lt!1847675 e!2924835)))

(declare-fun c!801627 () Bool)

(assert (=> d!1489833 (= c!801627 ((_ is Cons!52388) (t!359682 (toList!5581 lm!2023))))))

(assert (=> d!1489833 (forall!11307 (t!359682 (toList!5581 lm!2023)) lambda!206652)))

(assert (=> d!1489833 (= (extractMap!1872 (t!359682 (toList!5581 lm!2023))) lt!1847675)))

(declare-fun b!4688260 () Bool)

(assert (=> b!4688260 (= e!2924835 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (t!359682 (toList!5581 lm!2023)))) (extractMap!1872 (t!359682 (t!359682 (toList!5581 lm!2023))))))))

(declare-fun b!4688261 () Bool)

(assert (=> b!4688261 (= e!2924835 (ListMap!4946 Nil!52387))))

(assert (= (and d!1489833 c!801627) b!4688260))

(assert (= (and d!1489833 (not c!801627)) b!4688261))

(declare-fun m!5588797 () Bool)

(assert (=> d!1489833 m!5588797))

(declare-fun m!5588799 () Bool)

(assert (=> d!1489833 m!5588799))

(declare-fun m!5588801 () Bool)

(assert (=> b!4688260 m!5588801))

(assert (=> b!4688260 m!5588801))

(declare-fun m!5588803 () Bool)

(assert (=> b!4688260 m!5588803))

(assert (=> b!4688164 d!1489833))

(declare-fun d!1489835 () Bool)

(declare-fun tail!8570 (List!52512) List!52512)

(assert (=> d!1489835 (= (tail!8568 lm!2023) (ListLongMap!4112 (tail!8570 (toList!5581 lm!2023))))))

(declare-fun bs!1085329 () Bool)

(assert (= bs!1085329 d!1489835))

(declare-fun m!5588805 () Bool)

(assert (=> bs!1085329 m!5588805))

(assert (=> b!4688164 d!1489835))

(declare-fun bs!1085330 () Bool)

(declare-fun d!1489837 () Bool)

(assert (= bs!1085330 (and d!1489837 b!4688250)))

(declare-fun lambda!206653 () Int)

(assert (=> bs!1085330 (not (= lambda!206653 lambda!206646))))

(declare-fun bs!1085331 () Bool)

(assert (= bs!1085331 (and d!1489837 b!4688252)))

(assert (=> bs!1085331 (not (= lambda!206653 lambda!206648))))

(declare-fun bs!1085332 () Bool)

(assert (= bs!1085332 (and d!1489837 d!1489813)))

(assert (=> bs!1085332 (= lambda!206653 lambda!206608)))

(declare-fun bs!1085333 () Bool)

(assert (= bs!1085333 (and d!1489837 d!1489815)))

(assert (=> bs!1085333 (not (= lambda!206653 lambda!206649))))

(assert (=> bs!1085331 (not (= lambda!206653 lambda!206647))))

(assert (=> d!1489837 true))

(assert (=> d!1489837 true))

(assert (=> d!1489837 (= (allKeysSameHash!1672 oldBucket!34 hash!405 hashF!1323) (forall!11308 oldBucket!34 lambda!206653))))

(declare-fun bs!1085334 () Bool)

(assert (= bs!1085334 d!1489837))

(declare-fun m!5588807 () Bool)

(assert (=> bs!1085334 m!5588807))

(assert (=> b!4688163 d!1489837))

(declare-fun d!1489839 () Bool)

(declare-fun hash!4052 (Hashable!6215 K!13765) (_ BitVec 64))

(assert (=> d!1489839 (= (hash!4051 hashF!1323 key!4653) (hash!4052 hashF!1323 key!4653))))

(declare-fun bs!1085335 () Bool)

(assert (= bs!1085335 d!1489839))

(declare-fun m!5588809 () Bool)

(assert (=> bs!1085335 m!5588809))

(assert (=> b!4688173 d!1489839))

(declare-fun d!1489841 () Bool)

(declare-fun res!1977148 () Bool)

(declare-fun e!2924840 () Bool)

(assert (=> d!1489841 (=> res!1977148 e!2924840)))

(assert (=> d!1489841 (= res!1977148 (not ((_ is Cons!52387) oldBucket!34)))))

(assert (=> d!1489841 (= (noDuplicateKeys!1846 oldBucket!34) e!2924840)))

(declare-fun b!4688266 () Bool)

(declare-fun e!2924841 () Bool)

(assert (=> b!4688266 (= e!2924840 e!2924841)))

(declare-fun res!1977149 () Bool)

(assert (=> b!4688266 (=> (not res!1977149) (not e!2924841))))

(assert (=> b!4688266 (= res!1977149 (not (containsKey!3033 (t!359681 oldBucket!34) (_1!30183 (h!58626 oldBucket!34)))))))

(declare-fun b!4688267 () Bool)

(assert (=> b!4688267 (= e!2924841 (noDuplicateKeys!1846 (t!359681 oldBucket!34)))))

(assert (= (and d!1489841 (not res!1977148)) b!4688266))

(assert (= (and b!4688266 res!1977149) b!4688267))

(declare-fun m!5588811 () Bool)

(assert (=> b!4688266 m!5588811))

(declare-fun m!5588813 () Bool)

(assert (=> b!4688267 m!5588813))

(assert (=> b!4688161 d!1489841))

(declare-fun b!4688290 () Bool)

(declare-fun e!2924861 () Bool)

(declare-datatypes ((List!52514 0))(
  ( (Nil!52390) (Cons!52390 (h!58631 K!13765) (t!359686 List!52514)) )
))
(declare-fun contains!15576 (List!52514 K!13765) Bool)

(declare-fun keys!18699 (ListMap!4945) List!52514)

(assert (=> b!4688290 (= e!2924861 (contains!15576 (keys!18699 lt!1847565) key!4653))))

(declare-fun bm!327617 () Bool)

(declare-fun call!327622 () Bool)

(declare-fun e!2924856 () List!52514)

(assert (=> bm!327617 (= call!327622 (contains!15576 e!2924856 key!4653))))

(declare-fun c!801637 () Bool)

(declare-fun c!801636 () Bool)

(assert (=> bm!327617 (= c!801637 c!801636)))

(declare-fun b!4688291 () Bool)

(assert (=> b!4688291 (= e!2924856 (keys!18699 lt!1847565))))

(declare-fun b!4688292 () Bool)

(declare-fun getKeysList!843 (List!52511) List!52514)

(assert (=> b!4688292 (= e!2924856 (getKeysList!843 (toList!5582 lt!1847565)))))

(declare-fun d!1489843 () Bool)

(declare-fun e!2924858 () Bool)

(assert (=> d!1489843 e!2924858))

(declare-fun res!1977157 () Bool)

(assert (=> d!1489843 (=> res!1977157 e!2924858)))

(declare-fun e!2924859 () Bool)

(assert (=> d!1489843 (= res!1977157 e!2924859)))

(declare-fun res!1977158 () Bool)

(assert (=> d!1489843 (=> (not res!1977158) (not e!2924859))))

(declare-fun lt!1847704 () Bool)

(assert (=> d!1489843 (= res!1977158 (not lt!1847704))))

(declare-fun lt!1847700 () Bool)

(assert (=> d!1489843 (= lt!1847704 lt!1847700)))

(declare-fun lt!1847706 () Unit!123649)

(declare-fun e!2924860 () Unit!123649)

(assert (=> d!1489843 (= lt!1847706 e!2924860)))

(assert (=> d!1489843 (= c!801636 lt!1847700)))

(declare-fun containsKey!3035 (List!52511 K!13765) Bool)

(assert (=> d!1489843 (= lt!1847700 (containsKey!3035 (toList!5582 lt!1847565) key!4653))))

(assert (=> d!1489843 (= (contains!15574 lt!1847565 key!4653) lt!1847704)))

(declare-fun b!4688293 () Bool)

(declare-fun e!2924857 () Unit!123649)

(declare-fun Unit!123664 () Unit!123649)

(assert (=> b!4688293 (= e!2924857 Unit!123664)))

(declare-fun b!4688294 () Bool)

(declare-fun lt!1847703 () Unit!123649)

(assert (=> b!4688294 (= e!2924860 lt!1847703)))

(declare-fun lt!1847707 () Unit!123649)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1658 (List!52511 K!13765) Unit!123649)

(assert (=> b!4688294 (= lt!1847707 (lemmaContainsKeyImpliesGetValueByKeyDefined!1658 (toList!5582 lt!1847565) key!4653))))

(declare-datatypes ((Option!12059 0))(
  ( (None!12058) (Some!12058 (v!46465 V!14011)) )
))
(declare-fun isDefined!9314 (Option!12059) Bool)

(declare-fun getValueByKey!1767 (List!52511 K!13765) Option!12059)

(assert (=> b!4688294 (isDefined!9314 (getValueByKey!1767 (toList!5582 lt!1847565) key!4653))))

(declare-fun lt!1847701 () Unit!123649)

(assert (=> b!4688294 (= lt!1847701 lt!1847707)))

(declare-fun lemmaInListThenGetKeysListContains!838 (List!52511 K!13765) Unit!123649)

(assert (=> b!4688294 (= lt!1847703 (lemmaInListThenGetKeysListContains!838 (toList!5582 lt!1847565) key!4653))))

(assert (=> b!4688294 call!327622))

(declare-fun b!4688295 () Bool)

(assert (=> b!4688295 (= e!2924859 (not (contains!15576 (keys!18699 lt!1847565) key!4653)))))

(declare-fun b!4688296 () Bool)

(assert (=> b!4688296 (= e!2924860 e!2924857)))

(declare-fun c!801638 () Bool)

(assert (=> b!4688296 (= c!801638 call!327622)))

(declare-fun b!4688297 () Bool)

(assert (=> b!4688297 (= e!2924858 e!2924861)))

(declare-fun res!1977156 () Bool)

(assert (=> b!4688297 (=> (not res!1977156) (not e!2924861))))

(assert (=> b!4688297 (= res!1977156 (isDefined!9314 (getValueByKey!1767 (toList!5582 lt!1847565) key!4653)))))

(declare-fun b!4688298 () Bool)

(assert (=> b!4688298 false))

(declare-fun lt!1847702 () Unit!123649)

(declare-fun lt!1847705 () Unit!123649)

(assert (=> b!4688298 (= lt!1847702 lt!1847705)))

(assert (=> b!4688298 (containsKey!3035 (toList!5582 lt!1847565) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!843 (List!52511 K!13765) Unit!123649)

(assert (=> b!4688298 (= lt!1847705 (lemmaInGetKeysListThenContainsKey!843 (toList!5582 lt!1847565) key!4653))))

(declare-fun Unit!123665 () Unit!123649)

(assert (=> b!4688298 (= e!2924857 Unit!123665)))

(assert (= (and d!1489843 c!801636) b!4688294))

(assert (= (and d!1489843 (not c!801636)) b!4688296))

(assert (= (and b!4688296 c!801638) b!4688298))

(assert (= (and b!4688296 (not c!801638)) b!4688293))

(assert (= (or b!4688294 b!4688296) bm!327617))

(assert (= (and bm!327617 c!801637) b!4688292))

(assert (= (and bm!327617 (not c!801637)) b!4688291))

(assert (= (and d!1489843 res!1977158) b!4688295))

(assert (= (and d!1489843 (not res!1977157)) b!4688297))

(assert (= (and b!4688297 res!1977156) b!4688290))

(declare-fun m!5588815 () Bool)

(assert (=> b!4688298 m!5588815))

(declare-fun m!5588817 () Bool)

(assert (=> b!4688298 m!5588817))

(assert (=> d!1489843 m!5588815))

(declare-fun m!5588819 () Bool)

(assert (=> b!4688292 m!5588819))

(declare-fun m!5588821 () Bool)

(assert (=> b!4688294 m!5588821))

(declare-fun m!5588823 () Bool)

(assert (=> b!4688294 m!5588823))

(assert (=> b!4688294 m!5588823))

(declare-fun m!5588825 () Bool)

(assert (=> b!4688294 m!5588825))

(declare-fun m!5588827 () Bool)

(assert (=> b!4688294 m!5588827))

(declare-fun m!5588829 () Bool)

(assert (=> b!4688295 m!5588829))

(assert (=> b!4688295 m!5588829))

(declare-fun m!5588831 () Bool)

(assert (=> b!4688295 m!5588831))

(declare-fun m!5588833 () Bool)

(assert (=> bm!327617 m!5588833))

(assert (=> b!4688291 m!5588829))

(assert (=> b!4688290 m!5588829))

(assert (=> b!4688290 m!5588829))

(assert (=> b!4688290 m!5588831))

(assert (=> b!4688297 m!5588823))

(assert (=> b!4688297 m!5588823))

(assert (=> b!4688297 m!5588825))

(assert (=> b!4688171 d!1489843))

(declare-fun bs!1085336 () Bool)

(declare-fun d!1489845 () Bool)

(assert (= bs!1085336 (and d!1489845 start!474056)))

(declare-fun lambda!206659 () Int)

(assert (=> bs!1085336 (= lambda!206659 lambda!206605)))

(declare-fun bs!1085337 () Bool)

(assert (= bs!1085337 (and d!1489845 d!1489833)))

(assert (=> bs!1085337 (= lambda!206659 lambda!206652)))

(declare-fun lt!1847716 () ListMap!4945)

(assert (=> d!1489845 (invariantList!1403 (toList!5582 lt!1847716))))

(declare-fun e!2924862 () ListMap!4945)

(assert (=> d!1489845 (= lt!1847716 e!2924862)))

(declare-fun c!801639 () Bool)

(assert (=> d!1489845 (= c!801639 ((_ is Cons!52388) (toList!5581 lm!2023)))))

(assert (=> d!1489845 (forall!11307 (toList!5581 lm!2023) lambda!206659)))

(assert (=> d!1489845 (= (extractMap!1872 (toList!5581 lm!2023)) lt!1847716)))

(declare-fun b!4688299 () Bool)

(assert (=> b!4688299 (= e!2924862 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (toList!5581 lm!2023))) (extractMap!1872 (t!359682 (toList!5581 lm!2023)))))))

(declare-fun b!4688300 () Bool)

(assert (=> b!4688300 (= e!2924862 (ListMap!4946 Nil!52387))))

(assert (= (and d!1489845 c!801639) b!4688299))

(assert (= (and d!1489845 (not c!801639)) b!4688300))

(declare-fun m!5588835 () Bool)

(assert (=> d!1489845 m!5588835))

(declare-fun m!5588837 () Bool)

(assert (=> d!1489845 m!5588837))

(assert (=> b!4688299 m!5588707))

(assert (=> b!4688299 m!5588707))

(declare-fun m!5588839 () Bool)

(assert (=> b!4688299 m!5588839))

(assert (=> b!4688171 d!1489845))

(declare-fun bs!1085338 () Bool)

(declare-fun d!1489847 () Bool)

(assert (= bs!1085338 (and d!1489847 start!474056)))

(declare-fun lambda!206669 () Int)

(assert (=> bs!1085338 (not (= lambda!206669 lambda!206605))))

(declare-fun bs!1085339 () Bool)

(assert (= bs!1085339 (and d!1489847 d!1489833)))

(assert (=> bs!1085339 (not (= lambda!206669 lambda!206652))))

(declare-fun bs!1085340 () Bool)

(assert (= bs!1085340 (and d!1489847 d!1489845)))

(assert (=> bs!1085340 (not (= lambda!206669 lambda!206659))))

(assert (=> d!1489847 true))

(assert (=> d!1489847 (= (allKeysSameHashInMap!1760 lm!2023 hashF!1323) (forall!11307 (toList!5581 lm!2023) lambda!206669))))

(declare-fun bs!1085341 () Bool)

(assert (= bs!1085341 d!1489847))

(declare-fun m!5588841 () Bool)

(assert (=> bs!1085341 m!5588841))

(assert (=> b!4688160 d!1489847))

(declare-fun bs!1085342 () Bool)

(declare-fun b!4688304 () Bool)

(assert (= bs!1085342 (and b!4688304 d!1489837)))

(declare-fun lambda!206672 () Int)

(assert (=> bs!1085342 (not (= lambda!206672 lambda!206653))))

(declare-fun bs!1085343 () Bool)

(assert (= bs!1085343 (and b!4688304 b!4688250)))

(assert (=> bs!1085343 (= lambda!206672 lambda!206646)))

(declare-fun bs!1085344 () Bool)

(assert (= bs!1085344 (and b!4688304 b!4688252)))

(assert (=> bs!1085344 (= (= lt!1847569 lt!1847669) (= lambda!206672 lambda!206648))))

(declare-fun bs!1085345 () Bool)

(assert (= bs!1085345 (and b!4688304 d!1489813)))

(assert (=> bs!1085345 (not (= lambda!206672 lambda!206608))))

(declare-fun bs!1085346 () Bool)

(assert (= bs!1085346 (and b!4688304 d!1489815)))

(assert (=> bs!1085346 (= (= lt!1847569 lt!1847657) (= lambda!206672 lambda!206649))))

(assert (=> bs!1085344 (= lambda!206672 lambda!206647)))

(assert (=> b!4688304 true))

(declare-fun bs!1085347 () Bool)

(declare-fun b!4688306 () Bool)

(assert (= bs!1085347 (and b!4688306 d!1489837)))

(declare-fun lambda!206675 () Int)

(assert (=> bs!1085347 (not (= lambda!206675 lambda!206653))))

(declare-fun bs!1085348 () Bool)

(assert (= bs!1085348 (and b!4688306 b!4688250)))

(assert (=> bs!1085348 (= lambda!206675 lambda!206646)))

(declare-fun bs!1085349 () Bool)

(assert (= bs!1085349 (and b!4688306 b!4688252)))

(assert (=> bs!1085349 (= (= lt!1847569 lt!1847669) (= lambda!206675 lambda!206648))))

(declare-fun bs!1085350 () Bool)

(assert (= bs!1085350 (and b!4688306 b!4688304)))

(assert (=> bs!1085350 (= lambda!206675 lambda!206672)))

(declare-fun bs!1085351 () Bool)

(assert (= bs!1085351 (and b!4688306 d!1489813)))

(assert (=> bs!1085351 (not (= lambda!206675 lambda!206608))))

(declare-fun bs!1085352 () Bool)

(assert (= bs!1085352 (and b!4688306 d!1489815)))

(assert (=> bs!1085352 (= (= lt!1847569 lt!1847657) (= lambda!206675 lambda!206649))))

(assert (=> bs!1085349 (= lambda!206675 lambda!206647)))

(assert (=> b!4688306 true))

(declare-fun lambda!206677 () Int)

(assert (=> bs!1085347 (not (= lambda!206677 lambda!206653))))

(declare-fun lt!1847748 () ListMap!4945)

(assert (=> b!4688306 (= (= lt!1847748 lt!1847569) (= lambda!206677 lambda!206675))))

(assert (=> bs!1085348 (= (= lt!1847748 lt!1847569) (= lambda!206677 lambda!206646))))

(assert (=> bs!1085349 (= (= lt!1847748 lt!1847669) (= lambda!206677 lambda!206648))))

(assert (=> bs!1085350 (= (= lt!1847748 lt!1847569) (= lambda!206677 lambda!206672))))

(assert (=> bs!1085351 (not (= lambda!206677 lambda!206608))))

(assert (=> bs!1085352 (= (= lt!1847748 lt!1847657) (= lambda!206677 lambda!206649))))

(assert (=> bs!1085349 (= (= lt!1847748 lt!1847569) (= lambda!206677 lambda!206647))))

(assert (=> b!4688306 true))

(declare-fun bs!1085353 () Bool)

(declare-fun d!1489849 () Bool)

(assert (= bs!1085353 (and d!1489849 d!1489837)))

(declare-fun lambda!206683 () Int)

(assert (=> bs!1085353 (not (= lambda!206683 lambda!206653))))

(declare-fun bs!1085354 () Bool)

(assert (= bs!1085354 (and d!1489849 b!4688306)))

(declare-fun lt!1847736 () ListMap!4945)

(assert (=> bs!1085354 (= (= lt!1847736 lt!1847569) (= lambda!206683 lambda!206675))))

(declare-fun bs!1085355 () Bool)

(assert (= bs!1085355 (and d!1489849 b!4688250)))

(assert (=> bs!1085355 (= (= lt!1847736 lt!1847569) (= lambda!206683 lambda!206646))))

(declare-fun bs!1085356 () Bool)

(assert (= bs!1085356 (and d!1489849 b!4688252)))

(assert (=> bs!1085356 (= (= lt!1847736 lt!1847669) (= lambda!206683 lambda!206648))))

(assert (=> bs!1085354 (= (= lt!1847736 lt!1847748) (= lambda!206683 lambda!206677))))

(declare-fun bs!1085357 () Bool)

(assert (= bs!1085357 (and d!1489849 b!4688304)))

(assert (=> bs!1085357 (= (= lt!1847736 lt!1847569) (= lambda!206683 lambda!206672))))

(declare-fun bs!1085358 () Bool)

(assert (= bs!1085358 (and d!1489849 d!1489813)))

(assert (=> bs!1085358 (not (= lambda!206683 lambda!206608))))

(declare-fun bs!1085359 () Bool)

(assert (= bs!1085359 (and d!1489849 d!1489815)))

(assert (=> bs!1085359 (= (= lt!1847736 lt!1847657) (= lambda!206683 lambda!206649))))

(assert (=> bs!1085356 (= (= lt!1847736 lt!1847569) (= lambda!206683 lambda!206647))))

(assert (=> d!1489849 true))

(declare-fun lt!1847735 () ListMap!4945)

(declare-fun c!801640 () Bool)

(declare-fun bm!327618 () Bool)

(declare-fun call!327623 () Bool)

(assert (=> bm!327618 (= call!327623 (forall!11308 (ite c!801640 (toList!5582 lt!1847569) (toList!5582 lt!1847735)) (ite c!801640 lambda!206672 lambda!206677)))))

(declare-fun b!4688303 () Bool)

(declare-fun res!1977160 () Bool)

(declare-fun e!2924865 () Bool)

(assert (=> b!4688303 (=> (not res!1977160) (not e!2924865))))

(assert (=> b!4688303 (= res!1977160 (forall!11308 (toList!5582 lt!1847569) lambda!206683))))

(declare-fun e!2924863 () ListMap!4945)

(assert (=> b!4688304 (= e!2924863 lt!1847569)))

(declare-fun lt!1847737 () Unit!123649)

(declare-fun call!327625 () Unit!123649)

(assert (=> b!4688304 (= lt!1847737 call!327625)))

(assert (=> b!4688304 call!327623))

(declare-fun lt!1847732 () Unit!123649)

(assert (=> b!4688304 (= lt!1847732 lt!1847737)))

(declare-fun call!327624 () Bool)

(assert (=> b!4688304 call!327624))

(declare-fun lt!1847744 () Unit!123649)

(declare-fun Unit!123672 () Unit!123649)

(assert (=> b!4688304 (= lt!1847744 Unit!123672)))

(declare-fun b!4688305 () Bool)

(declare-fun e!2924864 () Bool)

(assert (=> b!4688305 (= e!2924864 (forall!11308 (toList!5582 lt!1847569) lambda!206677))))

(assert (=> b!4688306 (= e!2924863 lt!1847748)))

(assert (=> b!4688306 (= lt!1847735 (+!2130 lt!1847569 (h!58626 (Cons!52387 lt!1847576 lt!1847567))))))

(assert (=> b!4688306 (= lt!1847748 (addToMapMapFromBucket!1278 (t!359681 (Cons!52387 lt!1847576 lt!1847567)) (+!2130 lt!1847569 (h!58626 (Cons!52387 lt!1847576 lt!1847567)))))))

(declare-fun lt!1847749 () Unit!123649)

(assert (=> b!4688306 (= lt!1847749 call!327625)))

(assert (=> b!4688306 (forall!11308 (toList!5582 lt!1847569) lambda!206675)))

(declare-fun lt!1847739 () Unit!123649)

(assert (=> b!4688306 (= lt!1847739 lt!1847749)))

(assert (=> b!4688306 call!327623))

(declare-fun lt!1847743 () Unit!123649)

(declare-fun Unit!123676 () Unit!123649)

(assert (=> b!4688306 (= lt!1847743 Unit!123676)))

(assert (=> b!4688306 (forall!11308 (t!359681 (Cons!52387 lt!1847576 lt!1847567)) lambda!206677)))

(declare-fun lt!1847731 () Unit!123649)

(declare-fun Unit!123677 () Unit!123649)

(assert (=> b!4688306 (= lt!1847731 Unit!123677)))

(declare-fun lt!1847742 () Unit!123649)

(declare-fun Unit!123678 () Unit!123649)

(assert (=> b!4688306 (= lt!1847742 Unit!123678)))

(declare-fun lt!1847741 () Unit!123649)

(assert (=> b!4688306 (= lt!1847741 (forallContained!3415 (toList!5582 lt!1847735) lambda!206677 (h!58626 (Cons!52387 lt!1847576 lt!1847567))))))

(assert (=> b!4688306 (contains!15574 lt!1847735 (_1!30183 (h!58626 (Cons!52387 lt!1847576 lt!1847567))))))

(declare-fun lt!1847751 () Unit!123649)

(declare-fun Unit!123680 () Unit!123649)

(assert (=> b!4688306 (= lt!1847751 Unit!123680)))

(assert (=> b!4688306 (contains!15574 lt!1847748 (_1!30183 (h!58626 (Cons!52387 lt!1847576 lt!1847567))))))

(declare-fun lt!1847747 () Unit!123649)

(declare-fun Unit!123682 () Unit!123649)

(assert (=> b!4688306 (= lt!1847747 Unit!123682)))

(assert (=> b!4688306 (forall!11308 (Cons!52387 lt!1847576 lt!1847567) lambda!206677)))

(declare-fun lt!1847734 () Unit!123649)

(declare-fun Unit!123683 () Unit!123649)

(assert (=> b!4688306 (= lt!1847734 Unit!123683)))

(assert (=> b!4688306 call!327624))

(declare-fun lt!1847740 () Unit!123649)

(declare-fun Unit!123684 () Unit!123649)

(assert (=> b!4688306 (= lt!1847740 Unit!123684)))

(declare-fun lt!1847738 () Unit!123649)

(declare-fun Unit!123685 () Unit!123649)

(assert (=> b!4688306 (= lt!1847738 Unit!123685)))

(declare-fun lt!1847745 () Unit!123649)

(assert (=> b!4688306 (= lt!1847745 (addForallContainsKeyThenBeforeAdding!690 lt!1847569 lt!1847748 (_1!30183 (h!58626 (Cons!52387 lt!1847576 lt!1847567))) (_2!30183 (h!58626 (Cons!52387 lt!1847576 lt!1847567)))))))

(assert (=> b!4688306 (forall!11308 (toList!5582 lt!1847569) lambda!206677)))

(declare-fun lt!1847750 () Unit!123649)

(assert (=> b!4688306 (= lt!1847750 lt!1847745)))

(assert (=> b!4688306 (forall!11308 (toList!5582 lt!1847569) lambda!206677)))

(declare-fun lt!1847733 () Unit!123649)

(declare-fun Unit!123686 () Unit!123649)

(assert (=> b!4688306 (= lt!1847733 Unit!123686)))

(declare-fun res!1977161 () Bool)

(assert (=> b!4688306 (= res!1977161 (forall!11308 (Cons!52387 lt!1847576 lt!1847567) lambda!206677))))

(assert (=> b!4688306 (=> (not res!1977161) (not e!2924864))))

(assert (=> b!4688306 e!2924864))

(declare-fun lt!1847746 () Unit!123649)

(declare-fun Unit!123687 () Unit!123649)

(assert (=> b!4688306 (= lt!1847746 Unit!123687)))

(assert (=> d!1489849 e!2924865))

(declare-fun res!1977159 () Bool)

(assert (=> d!1489849 (=> (not res!1977159) (not e!2924865))))

(assert (=> d!1489849 (= res!1977159 (forall!11308 (Cons!52387 lt!1847576 lt!1847567) lambda!206683))))

(assert (=> d!1489849 (= lt!1847736 e!2924863)))

(assert (=> d!1489849 (= c!801640 ((_ is Nil!52387) (Cons!52387 lt!1847576 lt!1847567)))))

(assert (=> d!1489849 (noDuplicateKeys!1846 (Cons!52387 lt!1847576 lt!1847567))))

(assert (=> d!1489849 (= (addToMapMapFromBucket!1278 (Cons!52387 lt!1847576 lt!1847567) lt!1847569) lt!1847736)))

(declare-fun bm!327619 () Bool)

(assert (=> bm!327619 (= call!327625 (lemmaContainsAllItsOwnKeys!691 lt!1847569))))

(declare-fun b!4688307 () Bool)

(assert (=> b!4688307 (= e!2924865 (invariantList!1403 (toList!5582 lt!1847736)))))

(declare-fun bm!327620 () Bool)

(assert (=> bm!327620 (= call!327624 (forall!11308 (ite c!801640 (toList!5582 lt!1847569) (toList!5582 lt!1847735)) (ite c!801640 lambda!206672 lambda!206677)))))

(assert (= (and d!1489849 c!801640) b!4688304))

(assert (= (and d!1489849 (not c!801640)) b!4688306))

(assert (= (and b!4688306 res!1977161) b!4688305))

(assert (= (or b!4688304 b!4688306) bm!327619))

(assert (= (or b!4688304 b!4688306) bm!327618))

(assert (= (or b!4688304 b!4688306) bm!327620))

(assert (= (and d!1489849 res!1977159) b!4688303))

(assert (= (and b!4688303 res!1977160) b!4688307))

(declare-fun m!5588843 () Bool)

(assert (=> bm!327618 m!5588843))

(declare-fun m!5588845 () Bool)

(assert (=> b!4688306 m!5588845))

(declare-fun m!5588847 () Bool)

(assert (=> b!4688306 m!5588847))

(declare-fun m!5588849 () Bool)

(assert (=> b!4688306 m!5588849))

(declare-fun m!5588851 () Bool)

(assert (=> b!4688306 m!5588851))

(declare-fun m!5588853 () Bool)

(assert (=> b!4688306 m!5588853))

(assert (=> b!4688306 m!5588847))

(declare-fun m!5588855 () Bool)

(assert (=> b!4688306 m!5588855))

(declare-fun m!5588857 () Bool)

(assert (=> b!4688306 m!5588857))

(assert (=> b!4688306 m!5588851))

(declare-fun m!5588859 () Bool)

(assert (=> b!4688306 m!5588859))

(declare-fun m!5588861 () Bool)

(assert (=> b!4688306 m!5588861))

(declare-fun m!5588863 () Bool)

(assert (=> b!4688306 m!5588863))

(assert (=> b!4688306 m!5588861))

(declare-fun m!5588865 () Bool)

(assert (=> d!1489849 m!5588865))

(declare-fun m!5588867 () Bool)

(assert (=> d!1489849 m!5588867))

(declare-fun m!5588869 () Bool)

(assert (=> b!4688307 m!5588869))

(declare-fun m!5588871 () Bool)

(assert (=> b!4688303 m!5588871))

(assert (=> bm!327619 m!5588795))

(assert (=> b!4688305 m!5588847))

(assert (=> bm!327620 m!5588843))

(assert (=> b!4688170 d!1489849))

(declare-fun b!4688310 () Bool)

(declare-fun e!2924875 () Bool)

(assert (=> b!4688310 (= e!2924875 (contains!15576 (keys!18699 (extractMap!1872 lt!1847560)) key!4653))))

(declare-fun bm!327627 () Bool)

(declare-fun call!327632 () Bool)

(declare-fun e!2924870 () List!52514)

(assert (=> bm!327627 (= call!327632 (contains!15576 e!2924870 key!4653))))

(declare-fun c!801642 () Bool)

(declare-fun c!801641 () Bool)

(assert (=> bm!327627 (= c!801642 c!801641)))

(declare-fun b!4688311 () Bool)

(assert (=> b!4688311 (= e!2924870 (keys!18699 (extractMap!1872 lt!1847560)))))

(declare-fun b!4688312 () Bool)

(assert (=> b!4688312 (= e!2924870 (getKeysList!843 (toList!5582 (extractMap!1872 lt!1847560))))))

(declare-fun d!1489851 () Bool)

(declare-fun e!2924872 () Bool)

(assert (=> d!1489851 e!2924872))

(declare-fun res!1977167 () Bool)

(assert (=> d!1489851 (=> res!1977167 e!2924872)))

(declare-fun e!2924873 () Bool)

(assert (=> d!1489851 (= res!1977167 e!2924873)))

(declare-fun res!1977168 () Bool)

(assert (=> d!1489851 (=> (not res!1977168) (not e!2924873))))

(declare-fun lt!1847768 () Bool)

(assert (=> d!1489851 (= res!1977168 (not lt!1847768))))

(declare-fun lt!1847764 () Bool)

(assert (=> d!1489851 (= lt!1847768 lt!1847764)))

(declare-fun lt!1847770 () Unit!123649)

(declare-fun e!2924874 () Unit!123649)

(assert (=> d!1489851 (= lt!1847770 e!2924874)))

(assert (=> d!1489851 (= c!801641 lt!1847764)))

(assert (=> d!1489851 (= lt!1847764 (containsKey!3035 (toList!5582 (extractMap!1872 lt!1847560)) key!4653))))

(assert (=> d!1489851 (= (contains!15574 (extractMap!1872 lt!1847560) key!4653) lt!1847768)))

(declare-fun b!4688313 () Bool)

(declare-fun e!2924871 () Unit!123649)

(declare-fun Unit!123688 () Unit!123649)

(assert (=> b!4688313 (= e!2924871 Unit!123688)))

(declare-fun b!4688314 () Bool)

(declare-fun lt!1847767 () Unit!123649)

(assert (=> b!4688314 (= e!2924874 lt!1847767)))

(declare-fun lt!1847771 () Unit!123649)

(assert (=> b!4688314 (= lt!1847771 (lemmaContainsKeyImpliesGetValueByKeyDefined!1658 (toList!5582 (extractMap!1872 lt!1847560)) key!4653))))

(assert (=> b!4688314 (isDefined!9314 (getValueByKey!1767 (toList!5582 (extractMap!1872 lt!1847560)) key!4653))))

(declare-fun lt!1847765 () Unit!123649)

(assert (=> b!4688314 (= lt!1847765 lt!1847771)))

(assert (=> b!4688314 (= lt!1847767 (lemmaInListThenGetKeysListContains!838 (toList!5582 (extractMap!1872 lt!1847560)) key!4653))))

(assert (=> b!4688314 call!327632))

(declare-fun b!4688315 () Bool)

(assert (=> b!4688315 (= e!2924873 (not (contains!15576 (keys!18699 (extractMap!1872 lt!1847560)) key!4653)))))

(declare-fun b!4688316 () Bool)

(assert (=> b!4688316 (= e!2924874 e!2924871)))

(declare-fun c!801643 () Bool)

(assert (=> b!4688316 (= c!801643 call!327632)))

(declare-fun b!4688317 () Bool)

(assert (=> b!4688317 (= e!2924872 e!2924875)))

(declare-fun res!1977166 () Bool)

(assert (=> b!4688317 (=> (not res!1977166) (not e!2924875))))

(assert (=> b!4688317 (= res!1977166 (isDefined!9314 (getValueByKey!1767 (toList!5582 (extractMap!1872 lt!1847560)) key!4653)))))

(declare-fun b!4688318 () Bool)

(assert (=> b!4688318 false))

(declare-fun lt!1847766 () Unit!123649)

(declare-fun lt!1847769 () Unit!123649)

(assert (=> b!4688318 (= lt!1847766 lt!1847769)))

(assert (=> b!4688318 (containsKey!3035 (toList!5582 (extractMap!1872 lt!1847560)) key!4653)))

(assert (=> b!4688318 (= lt!1847769 (lemmaInGetKeysListThenContainsKey!843 (toList!5582 (extractMap!1872 lt!1847560)) key!4653))))

(declare-fun Unit!123689 () Unit!123649)

(assert (=> b!4688318 (= e!2924871 Unit!123689)))

(assert (= (and d!1489851 c!801641) b!4688314))

(assert (= (and d!1489851 (not c!801641)) b!4688316))

(assert (= (and b!4688316 c!801643) b!4688318))

(assert (= (and b!4688316 (not c!801643)) b!4688313))

(assert (= (or b!4688314 b!4688316) bm!327627))

(assert (= (and bm!327627 c!801642) b!4688312))

(assert (= (and bm!327627 (not c!801642)) b!4688311))

(assert (= (and d!1489851 res!1977168) b!4688315))

(assert (= (and d!1489851 (not res!1977167)) b!4688317))

(assert (= (and b!4688317 res!1977166) b!4688310))

(declare-fun m!5588873 () Bool)

(assert (=> b!4688318 m!5588873))

(declare-fun m!5588875 () Bool)

(assert (=> b!4688318 m!5588875))

(assert (=> d!1489851 m!5588873))

(declare-fun m!5588877 () Bool)

(assert (=> b!4688312 m!5588877))

(declare-fun m!5588879 () Bool)

(assert (=> b!4688314 m!5588879))

(declare-fun m!5588881 () Bool)

(assert (=> b!4688314 m!5588881))

(assert (=> b!4688314 m!5588881))

(declare-fun m!5588883 () Bool)

(assert (=> b!4688314 m!5588883))

(declare-fun m!5588885 () Bool)

(assert (=> b!4688314 m!5588885))

(assert (=> b!4688315 m!5588639))

(declare-fun m!5588887 () Bool)

(assert (=> b!4688315 m!5588887))

(assert (=> b!4688315 m!5588887))

(declare-fun m!5588889 () Bool)

(assert (=> b!4688315 m!5588889))

(declare-fun m!5588891 () Bool)

(assert (=> bm!327627 m!5588891))

(assert (=> b!4688311 m!5588639))

(assert (=> b!4688311 m!5588887))

(assert (=> b!4688310 m!5588639))

(assert (=> b!4688310 m!5588887))

(assert (=> b!4688310 m!5588887))

(assert (=> b!4688310 m!5588889))

(assert (=> b!4688317 m!5588881))

(assert (=> b!4688317 m!5588881))

(assert (=> b!4688317 m!5588883))

(assert (=> b!4688170 d!1489851))

(declare-fun bs!1085360 () Bool)

(declare-fun d!1489853 () Bool)

(assert (= bs!1085360 (and d!1489853 start!474056)))

(declare-fun lambda!206690 () Int)

(assert (=> bs!1085360 (= lambda!206690 lambda!206605)))

(declare-fun bs!1085361 () Bool)

(assert (= bs!1085361 (and d!1489853 d!1489833)))

(assert (=> bs!1085361 (= lambda!206690 lambda!206652)))

(declare-fun bs!1085362 () Bool)

(assert (= bs!1085362 (and d!1489853 d!1489845)))

(assert (=> bs!1085362 (= lambda!206690 lambda!206659)))

(declare-fun bs!1085363 () Bool)

(assert (= bs!1085363 (and d!1489853 d!1489847)))

(assert (=> bs!1085363 (not (= lambda!206690 lambda!206669))))

(declare-fun lt!1847772 () ListMap!4945)

(assert (=> d!1489853 (invariantList!1403 (toList!5582 lt!1847772))))

(declare-fun e!2924876 () ListMap!4945)

(assert (=> d!1489853 (= lt!1847772 e!2924876)))

(declare-fun c!801644 () Bool)

(assert (=> d!1489853 (= c!801644 ((_ is Cons!52388) lt!1847560))))

(assert (=> d!1489853 (forall!11307 lt!1847560 lambda!206690)))

(assert (=> d!1489853 (= (extractMap!1872 lt!1847560) lt!1847772)))

(declare-fun b!4688321 () Bool)

(assert (=> b!4688321 (= e!2924876 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 lt!1847560)) (extractMap!1872 (t!359682 lt!1847560))))))

(declare-fun b!4688322 () Bool)

(assert (=> b!4688322 (= e!2924876 (ListMap!4946 Nil!52387))))

(assert (= (and d!1489853 c!801644) b!4688321))

(assert (= (and d!1489853 (not c!801644)) b!4688322))

(declare-fun m!5588893 () Bool)

(assert (=> d!1489853 m!5588893))

(declare-fun m!5588895 () Bool)

(assert (=> d!1489853 m!5588895))

(declare-fun m!5588897 () Bool)

(assert (=> b!4688321 m!5588897))

(assert (=> b!4688321 m!5588897))

(declare-fun m!5588899 () Bool)

(assert (=> b!4688321 m!5588899))

(assert (=> b!4688170 d!1489853))

(declare-fun d!1489855 () Bool)

(assert (=> d!1489855 (= (head!9956 oldBucket!34) (h!58626 oldBucket!34))))

(assert (=> b!4688170 d!1489855))

(declare-fun d!1489857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9151 (List!52511) (InoxSet tuple2!53778))

(assert (=> d!1489857 (= (eq!1005 (extractMap!1872 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))) (+!2130 (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))) (h!58626 oldBucket!34))) (= (content!9151 (toList!5582 (extractMap!1872 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))))) (content!9151 (toList!5582 (+!2130 (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))) (h!58626 oldBucket!34))))))))

(declare-fun bs!1085364 () Bool)

(assert (= bs!1085364 d!1489857))

(declare-fun m!5588901 () Bool)

(assert (=> bs!1085364 m!5588901))

(declare-fun m!5588903 () Bool)

(assert (=> bs!1085364 m!5588903))

(assert (=> b!4688170 d!1489857))

(declare-fun d!1489859 () Bool)

(declare-fun e!2924883 () Bool)

(assert (=> d!1489859 e!2924883))

(declare-fun res!1977179 () Bool)

(assert (=> d!1489859 (=> (not res!1977179) (not e!2924883))))

(declare-fun lt!1847804 () ListMap!4945)

(assert (=> d!1489859 (= res!1977179 (contains!15574 lt!1847804 (_1!30183 lt!1847576)))))

(declare-fun lt!1847805 () List!52511)

(assert (=> d!1489859 (= lt!1847804 (ListMap!4946 lt!1847805))))

(declare-fun lt!1847806 () Unit!123649)

(declare-fun lt!1847803 () Unit!123649)

(assert (=> d!1489859 (= lt!1847806 lt!1847803)))

(assert (=> d!1489859 (= (getValueByKey!1767 lt!1847805 (_1!30183 lt!1847576)) (Some!12058 (_2!30183 lt!1847576)))))

(declare-fun lemmaContainsTupThenGetReturnValue!993 (List!52511 K!13765 V!14011) Unit!123649)

(assert (=> d!1489859 (= lt!1847803 (lemmaContainsTupThenGetReturnValue!993 lt!1847805 (_1!30183 lt!1847576) (_2!30183 lt!1847576)))))

(declare-fun insertNoDuplicatedKeys!501 (List!52511 K!13765 V!14011) List!52511)

(assert (=> d!1489859 (= lt!1847805 (insertNoDuplicatedKeys!501 (toList!5582 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569)) (_1!30183 lt!1847576) (_2!30183 lt!1847576)))))

(assert (=> d!1489859 (= (+!2130 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847576) lt!1847804)))

(declare-fun b!4688338 () Bool)

(declare-fun res!1977178 () Bool)

(assert (=> b!4688338 (=> (not res!1977178) (not e!2924883))))

(assert (=> b!4688338 (= res!1977178 (= (getValueByKey!1767 (toList!5582 lt!1847804) (_1!30183 lt!1847576)) (Some!12058 (_2!30183 lt!1847576))))))

(declare-fun b!4688339 () Bool)

(declare-fun contains!15577 (List!52511 tuple2!53778) Bool)

(assert (=> b!4688339 (= e!2924883 (contains!15577 (toList!5582 lt!1847804) lt!1847576))))

(assert (= (and d!1489859 res!1977179) b!4688338))

(assert (= (and b!4688338 res!1977178) b!4688339))

(declare-fun m!5588939 () Bool)

(assert (=> d!1489859 m!5588939))

(declare-fun m!5588943 () Bool)

(assert (=> d!1489859 m!5588943))

(declare-fun m!5588947 () Bool)

(assert (=> d!1489859 m!5588947))

(declare-fun m!5588951 () Bool)

(assert (=> d!1489859 m!5588951))

(declare-fun m!5588955 () Bool)

(assert (=> b!4688338 m!5588955))

(declare-fun m!5588957 () Bool)

(assert (=> b!4688339 m!5588957))

(assert (=> b!4688170 d!1489859))

(declare-fun d!1489865 () Bool)

(assert (=> d!1489865 (= (head!9956 newBucket!218) (h!58626 newBucket!218))))

(assert (=> b!4688170 d!1489865))

(declare-fun d!1489867 () Bool)

(assert (=> d!1489867 (= (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847577 lt!1847578) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847577)) (= (content!9151 (toList!5582 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847577 lt!1847578) lt!1847569))) (content!9151 (toList!5582 (+!2130 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847577)))))))

(declare-fun bs!1085374 () Bool)

(assert (= bs!1085374 d!1489867))

(declare-fun m!5588959 () Bool)

(assert (=> bs!1085374 m!5588959))

(declare-fun m!5588961 () Bool)

(assert (=> bs!1085374 m!5588961))

(assert (=> b!4688170 d!1489867))

(declare-fun d!1489869 () Bool)

(assert (=> d!1489869 (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847577 lt!1847578) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847577))))

(declare-fun lt!1847810 () Unit!123649)

(declare-fun choose!32540 (tuple2!53778 List!52511 ListMap!4945) Unit!123649)

(assert (=> d!1489869 (= lt!1847810 (choose!32540 lt!1847577 lt!1847578 lt!1847569))))

(assert (=> d!1489869 (noDuplicateKeys!1846 lt!1847578)))

(assert (=> d!1489869 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!254 lt!1847577 lt!1847578 lt!1847569) lt!1847810)))

(declare-fun bs!1085378 () Bool)

(assert (= bs!1085378 d!1489869))

(declare-fun m!5588979 () Bool)

(assert (=> bs!1085378 m!5588979))

(declare-fun m!5588981 () Bool)

(assert (=> bs!1085378 m!5588981))

(assert (=> bs!1085378 m!5588627))

(assert (=> bs!1085378 m!5588651))

(assert (=> bs!1085378 m!5588627))

(assert (=> bs!1085378 m!5588629))

(assert (=> bs!1085378 m!5588651))

(assert (=> bs!1085378 m!5588629))

(assert (=> bs!1085378 m!5588659))

(assert (=> b!4688170 d!1489869))

(declare-fun d!1489885 () Bool)

(declare-fun e!2924892 () Bool)

(assert (=> d!1489885 e!2924892))

(declare-fun res!1977187 () Bool)

(assert (=> d!1489885 (=> (not res!1977187) (not e!2924892))))

(declare-fun lt!1847812 () ListMap!4945)

(assert (=> d!1489885 (= res!1977187 (contains!15574 lt!1847812 (_1!30183 lt!1847577)))))

(declare-fun lt!1847813 () List!52511)

(assert (=> d!1489885 (= lt!1847812 (ListMap!4946 lt!1847813))))

(declare-fun lt!1847814 () Unit!123649)

(declare-fun lt!1847811 () Unit!123649)

(assert (=> d!1489885 (= lt!1847814 lt!1847811)))

(assert (=> d!1489885 (= (getValueByKey!1767 lt!1847813 (_1!30183 lt!1847577)) (Some!12058 (_2!30183 lt!1847577)))))

(assert (=> d!1489885 (= lt!1847811 (lemmaContainsTupThenGetReturnValue!993 lt!1847813 (_1!30183 lt!1847577) (_2!30183 lt!1847577)))))

(assert (=> d!1489885 (= lt!1847813 (insertNoDuplicatedKeys!501 (toList!5582 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569)) (_1!30183 lt!1847577) (_2!30183 lt!1847577)))))

(assert (=> d!1489885 (= (+!2130 (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847577) lt!1847812)))

(declare-fun b!4688350 () Bool)

(declare-fun res!1977186 () Bool)

(assert (=> b!4688350 (=> (not res!1977186) (not e!2924892))))

(assert (=> b!4688350 (= res!1977186 (= (getValueByKey!1767 (toList!5582 lt!1847812) (_1!30183 lt!1847577)) (Some!12058 (_2!30183 lt!1847577))))))

(declare-fun b!4688351 () Bool)

(assert (=> b!4688351 (= e!2924892 (contains!15577 (toList!5582 lt!1847812) lt!1847577))))

(assert (= (and d!1489885 res!1977187) b!4688350))

(assert (= (and b!4688350 res!1977186) b!4688351))

(declare-fun m!5588983 () Bool)

(assert (=> d!1489885 m!5588983))

(declare-fun m!5588985 () Bool)

(assert (=> d!1489885 m!5588985))

(declare-fun m!5588987 () Bool)

(assert (=> d!1489885 m!5588987))

(declare-fun m!5588989 () Bool)

(assert (=> d!1489885 m!5588989))

(declare-fun m!5588991 () Bool)

(assert (=> b!4688350 m!5588991))

(declare-fun m!5588993 () Bool)

(assert (=> b!4688351 m!5588993))

(assert (=> b!4688170 d!1489885))

(declare-fun bs!1085386 () Bool)

(declare-fun d!1489887 () Bool)

(assert (= bs!1085386 (and d!1489887 start!474056)))

(declare-fun lambda!206701 () Int)

(assert (=> bs!1085386 (= lambda!206701 lambda!206605)))

(declare-fun bs!1085387 () Bool)

(assert (= bs!1085387 (and d!1489887 d!1489833)))

(assert (=> bs!1085387 (= lambda!206701 lambda!206652)))

(declare-fun bs!1085388 () Bool)

(assert (= bs!1085388 (and d!1489887 d!1489853)))

(assert (=> bs!1085388 (= lambda!206701 lambda!206690)))

(declare-fun bs!1085389 () Bool)

(assert (= bs!1085389 (and d!1489887 d!1489845)))

(assert (=> bs!1085389 (= lambda!206701 lambda!206659)))

(declare-fun bs!1085390 () Bool)

(assert (= bs!1085390 (and d!1489887 d!1489847)))

(assert (=> bs!1085390 (not (= lambda!206701 lambda!206669))))

(assert (=> d!1489887 (contains!15574 (extractMap!1872 (toList!5581 (ListLongMap!4112 lt!1847560))) key!4653)))

(declare-fun lt!1847835 () Unit!123649)

(declare-fun choose!32541 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> d!1489887 (= lt!1847835 (choose!32541 (ListLongMap!4112 lt!1847560) key!4653 hashF!1323))))

(assert (=> d!1489887 (forall!11307 (toList!5581 (ListLongMap!4112 lt!1847560)) lambda!206701)))

(assert (=> d!1489887 (= (lemmaListContainsThenExtractedMapContains!438 (ListLongMap!4112 lt!1847560) key!4653 hashF!1323) lt!1847835)))

(declare-fun bs!1085391 () Bool)

(assert (= bs!1085391 d!1489887))

(declare-fun m!5589015 () Bool)

(assert (=> bs!1085391 m!5589015))

(assert (=> bs!1085391 m!5589015))

(declare-fun m!5589017 () Bool)

(assert (=> bs!1085391 m!5589017))

(declare-fun m!5589019 () Bool)

(assert (=> bs!1085391 m!5589019))

(declare-fun m!5589021 () Bool)

(assert (=> bs!1085391 m!5589021))

(assert (=> b!4688170 d!1489887))

(declare-fun bs!1085392 () Bool)

(declare-fun b!4688363 () Bool)

(assert (= bs!1085392 (and b!4688363 d!1489837)))

(declare-fun lambda!206702 () Int)

(assert (=> bs!1085392 (not (= lambda!206702 lambda!206653))))

(declare-fun bs!1085393 () Bool)

(assert (= bs!1085393 (and b!4688363 b!4688306)))

(assert (=> bs!1085393 (= lambda!206702 lambda!206675)))

(declare-fun bs!1085394 () Bool)

(assert (= bs!1085394 (and b!4688363 b!4688250)))

(assert (=> bs!1085394 (= lambda!206702 lambda!206646)))

(declare-fun bs!1085395 () Bool)

(assert (= bs!1085395 (and b!4688363 b!4688252)))

(assert (=> bs!1085395 (= (= lt!1847569 lt!1847669) (= lambda!206702 lambda!206648))))

(declare-fun bs!1085397 () Bool)

(assert (= bs!1085397 (and b!4688363 d!1489849)))

(assert (=> bs!1085397 (= (= lt!1847569 lt!1847736) (= lambda!206702 lambda!206683))))

(assert (=> bs!1085393 (= (= lt!1847569 lt!1847748) (= lambda!206702 lambda!206677))))

(declare-fun bs!1085398 () Bool)

(assert (= bs!1085398 (and b!4688363 b!4688304)))

(assert (=> bs!1085398 (= lambda!206702 lambda!206672)))

(declare-fun bs!1085399 () Bool)

(assert (= bs!1085399 (and b!4688363 d!1489813)))

(assert (=> bs!1085399 (not (= lambda!206702 lambda!206608))))

(declare-fun bs!1085400 () Bool)

(assert (= bs!1085400 (and b!4688363 d!1489815)))

(assert (=> bs!1085400 (= (= lt!1847569 lt!1847657) (= lambda!206702 lambda!206649))))

(assert (=> bs!1085395 (= lambda!206702 lambda!206647)))

(assert (=> b!4688363 true))

(declare-fun bs!1085401 () Bool)

(declare-fun b!4688365 () Bool)

(assert (= bs!1085401 (and b!4688365 d!1489837)))

(declare-fun lambda!206703 () Int)

(assert (=> bs!1085401 (not (= lambda!206703 lambda!206653))))

(declare-fun bs!1085402 () Bool)

(assert (= bs!1085402 (and b!4688365 b!4688306)))

(assert (=> bs!1085402 (= lambda!206703 lambda!206675)))

(declare-fun bs!1085403 () Bool)

(assert (= bs!1085403 (and b!4688365 b!4688363)))

(assert (=> bs!1085403 (= lambda!206703 lambda!206702)))

(declare-fun bs!1085404 () Bool)

(assert (= bs!1085404 (and b!4688365 b!4688250)))

(assert (=> bs!1085404 (= lambda!206703 lambda!206646)))

(declare-fun bs!1085405 () Bool)

(assert (= bs!1085405 (and b!4688365 b!4688252)))

(assert (=> bs!1085405 (= (= lt!1847569 lt!1847669) (= lambda!206703 lambda!206648))))

(declare-fun bs!1085406 () Bool)

(assert (= bs!1085406 (and b!4688365 d!1489849)))

(assert (=> bs!1085406 (= (= lt!1847569 lt!1847736) (= lambda!206703 lambda!206683))))

(assert (=> bs!1085402 (= (= lt!1847569 lt!1847748) (= lambda!206703 lambda!206677))))

(declare-fun bs!1085407 () Bool)

(assert (= bs!1085407 (and b!4688365 b!4688304)))

(assert (=> bs!1085407 (= lambda!206703 lambda!206672)))

(declare-fun bs!1085408 () Bool)

(assert (= bs!1085408 (and b!4688365 d!1489813)))

(assert (=> bs!1085408 (not (= lambda!206703 lambda!206608))))

(declare-fun bs!1085409 () Bool)

(assert (= bs!1085409 (and b!4688365 d!1489815)))

(assert (=> bs!1085409 (= (= lt!1847569 lt!1847657) (= lambda!206703 lambda!206649))))

(assert (=> bs!1085405 (= lambda!206703 lambda!206647)))

(assert (=> b!4688365 true))

(declare-fun lambda!206704 () Int)

(assert (=> bs!1085401 (not (= lambda!206704 lambda!206653))))

(declare-fun lt!1847853 () ListMap!4945)

(assert (=> bs!1085402 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206675))))

(assert (=> bs!1085403 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206702))))

(assert (=> bs!1085404 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206646))))

(assert (=> bs!1085405 (= (= lt!1847853 lt!1847669) (= lambda!206704 lambda!206648))))

(assert (=> bs!1085406 (= (= lt!1847853 lt!1847736) (= lambda!206704 lambda!206683))))

(assert (=> b!4688365 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206703))))

(assert (=> bs!1085402 (= (= lt!1847853 lt!1847748) (= lambda!206704 lambda!206677))))

(assert (=> bs!1085407 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206672))))

(assert (=> bs!1085408 (not (= lambda!206704 lambda!206608))))

(assert (=> bs!1085409 (= (= lt!1847853 lt!1847657) (= lambda!206704 lambda!206649))))

(assert (=> bs!1085405 (= (= lt!1847853 lt!1847569) (= lambda!206704 lambda!206647))))

(assert (=> b!4688365 true))

(declare-fun bs!1085410 () Bool)

(declare-fun d!1489897 () Bool)

(assert (= bs!1085410 (and d!1489897 d!1489837)))

(declare-fun lambda!206705 () Int)

(assert (=> bs!1085410 (not (= lambda!206705 lambda!206653))))

(declare-fun bs!1085411 () Bool)

(assert (= bs!1085411 (and d!1489897 b!4688363)))

(declare-fun lt!1847841 () ListMap!4945)

(assert (=> bs!1085411 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206702))))

(declare-fun bs!1085412 () Bool)

(assert (= bs!1085412 (and d!1489897 b!4688250)))

(assert (=> bs!1085412 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206646))))

(declare-fun bs!1085413 () Bool)

(assert (= bs!1085413 (and d!1489897 b!4688252)))

(assert (=> bs!1085413 (= (= lt!1847841 lt!1847669) (= lambda!206705 lambda!206648))))

(declare-fun bs!1085414 () Bool)

(assert (= bs!1085414 (and d!1489897 d!1489849)))

(assert (=> bs!1085414 (= (= lt!1847841 lt!1847736) (= lambda!206705 lambda!206683))))

(declare-fun bs!1085415 () Bool)

(assert (= bs!1085415 (and d!1489897 b!4688365)))

(assert (=> bs!1085415 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206703))))

(declare-fun bs!1085416 () Bool)

(assert (= bs!1085416 (and d!1489897 b!4688306)))

(assert (=> bs!1085416 (= (= lt!1847841 lt!1847748) (= lambda!206705 lambda!206677))))

(declare-fun bs!1085417 () Bool)

(assert (= bs!1085417 (and d!1489897 b!4688304)))

(assert (=> bs!1085417 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206672))))

(declare-fun bs!1085418 () Bool)

(assert (= bs!1085418 (and d!1489897 d!1489813)))

(assert (=> bs!1085418 (not (= lambda!206705 lambda!206608))))

(declare-fun bs!1085419 () Bool)

(assert (= bs!1085419 (and d!1489897 d!1489815)))

(assert (=> bs!1085419 (= (= lt!1847841 lt!1847657) (= lambda!206705 lambda!206649))))

(assert (=> bs!1085413 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206647))))

(assert (=> bs!1085416 (= (= lt!1847841 lt!1847569) (= lambda!206705 lambda!206675))))

(assert (=> bs!1085415 (= (= lt!1847841 lt!1847853) (= lambda!206705 lambda!206704))))

(assert (=> d!1489897 true))

(declare-fun call!327636 () Bool)

(declare-fun c!801652 () Bool)

(declare-fun bm!327631 () Bool)

(declare-fun lt!1847840 () ListMap!4945)

(assert (=> bm!327631 (= call!327636 (forall!11308 (ite c!801652 (toList!5582 lt!1847569) (toList!5582 lt!1847840)) (ite c!801652 lambda!206702 lambda!206704)))))

(declare-fun b!4688362 () Bool)

(declare-fun res!1977192 () Bool)

(declare-fun e!2924901 () Bool)

(assert (=> b!4688362 (=> (not res!1977192) (not e!2924901))))

(assert (=> b!4688362 (= res!1977192 (forall!11308 (toList!5582 lt!1847569) lambda!206705))))

(declare-fun e!2924899 () ListMap!4945)

(assert (=> b!4688363 (= e!2924899 lt!1847569)))

(declare-fun lt!1847842 () Unit!123649)

(declare-fun call!327638 () Unit!123649)

(assert (=> b!4688363 (= lt!1847842 call!327638)))

(assert (=> b!4688363 call!327636))

(declare-fun lt!1847837 () Unit!123649)

(assert (=> b!4688363 (= lt!1847837 lt!1847842)))

(declare-fun call!327637 () Bool)

(assert (=> b!4688363 call!327637))

(declare-fun lt!1847849 () Unit!123649)

(declare-fun Unit!123691 () Unit!123649)

(assert (=> b!4688363 (= lt!1847849 Unit!123691)))

(declare-fun b!4688364 () Bool)

(declare-fun e!2924900 () Bool)

(assert (=> b!4688364 (= e!2924900 (forall!11308 (toList!5582 lt!1847569) lambda!206704))))

(assert (=> b!4688365 (= e!2924899 lt!1847853)))

(assert (=> b!4688365 (= lt!1847840 (+!2130 lt!1847569 (h!58626 lt!1847578)))))

(assert (=> b!4688365 (= lt!1847853 (addToMapMapFromBucket!1278 (t!359681 lt!1847578) (+!2130 lt!1847569 (h!58626 lt!1847578))))))

(declare-fun lt!1847854 () Unit!123649)

(assert (=> b!4688365 (= lt!1847854 call!327638)))

(assert (=> b!4688365 (forall!11308 (toList!5582 lt!1847569) lambda!206703)))

(declare-fun lt!1847844 () Unit!123649)

(assert (=> b!4688365 (= lt!1847844 lt!1847854)))

(assert (=> b!4688365 call!327636))

(declare-fun lt!1847848 () Unit!123649)

(declare-fun Unit!123692 () Unit!123649)

(assert (=> b!4688365 (= lt!1847848 Unit!123692)))

(assert (=> b!4688365 (forall!11308 (t!359681 lt!1847578) lambda!206704)))

(declare-fun lt!1847836 () Unit!123649)

(declare-fun Unit!123693 () Unit!123649)

(assert (=> b!4688365 (= lt!1847836 Unit!123693)))

(declare-fun lt!1847847 () Unit!123649)

(declare-fun Unit!123694 () Unit!123649)

(assert (=> b!4688365 (= lt!1847847 Unit!123694)))

(declare-fun lt!1847846 () Unit!123649)

(assert (=> b!4688365 (= lt!1847846 (forallContained!3415 (toList!5582 lt!1847840) lambda!206704 (h!58626 lt!1847578)))))

(assert (=> b!4688365 (contains!15574 lt!1847840 (_1!30183 (h!58626 lt!1847578)))))

(declare-fun lt!1847856 () Unit!123649)

(declare-fun Unit!123695 () Unit!123649)

(assert (=> b!4688365 (= lt!1847856 Unit!123695)))

(assert (=> b!4688365 (contains!15574 lt!1847853 (_1!30183 (h!58626 lt!1847578)))))

(declare-fun lt!1847852 () Unit!123649)

(declare-fun Unit!123696 () Unit!123649)

(assert (=> b!4688365 (= lt!1847852 Unit!123696)))

(assert (=> b!4688365 (forall!11308 lt!1847578 lambda!206704)))

(declare-fun lt!1847839 () Unit!123649)

(declare-fun Unit!123697 () Unit!123649)

(assert (=> b!4688365 (= lt!1847839 Unit!123697)))

(assert (=> b!4688365 call!327637))

(declare-fun lt!1847845 () Unit!123649)

(declare-fun Unit!123698 () Unit!123649)

(assert (=> b!4688365 (= lt!1847845 Unit!123698)))

(declare-fun lt!1847843 () Unit!123649)

(declare-fun Unit!123699 () Unit!123649)

(assert (=> b!4688365 (= lt!1847843 Unit!123699)))

(declare-fun lt!1847850 () Unit!123649)

(assert (=> b!4688365 (= lt!1847850 (addForallContainsKeyThenBeforeAdding!690 lt!1847569 lt!1847853 (_1!30183 (h!58626 lt!1847578)) (_2!30183 (h!58626 lt!1847578))))))

(assert (=> b!4688365 (forall!11308 (toList!5582 lt!1847569) lambda!206704)))

(declare-fun lt!1847855 () Unit!123649)

(assert (=> b!4688365 (= lt!1847855 lt!1847850)))

(assert (=> b!4688365 (forall!11308 (toList!5582 lt!1847569) lambda!206704)))

(declare-fun lt!1847838 () Unit!123649)

(declare-fun Unit!123700 () Unit!123649)

(assert (=> b!4688365 (= lt!1847838 Unit!123700)))

(declare-fun res!1977193 () Bool)

(assert (=> b!4688365 (= res!1977193 (forall!11308 lt!1847578 lambda!206704))))

(assert (=> b!4688365 (=> (not res!1977193) (not e!2924900))))

(assert (=> b!4688365 e!2924900))

(declare-fun lt!1847851 () Unit!123649)

(declare-fun Unit!123701 () Unit!123649)

(assert (=> b!4688365 (= lt!1847851 Unit!123701)))

(assert (=> d!1489897 e!2924901))

(declare-fun res!1977191 () Bool)

(assert (=> d!1489897 (=> (not res!1977191) (not e!2924901))))

(assert (=> d!1489897 (= res!1977191 (forall!11308 lt!1847578 lambda!206705))))

(assert (=> d!1489897 (= lt!1847841 e!2924899)))

(assert (=> d!1489897 (= c!801652 ((_ is Nil!52387) lt!1847578))))

(assert (=> d!1489897 (noDuplicateKeys!1846 lt!1847578)))

(assert (=> d!1489897 (= (addToMapMapFromBucket!1278 lt!1847578 lt!1847569) lt!1847841)))

(declare-fun bm!327632 () Bool)

(assert (=> bm!327632 (= call!327638 (lemmaContainsAllItsOwnKeys!691 lt!1847569))))

(declare-fun b!4688366 () Bool)

(assert (=> b!4688366 (= e!2924901 (invariantList!1403 (toList!5582 lt!1847841)))))

(declare-fun bm!327633 () Bool)

(assert (=> bm!327633 (= call!327637 (forall!11308 (ite c!801652 (toList!5582 lt!1847569) (toList!5582 lt!1847840)) (ite c!801652 lambda!206702 lambda!206704)))))

(assert (= (and d!1489897 c!801652) b!4688363))

(assert (= (and d!1489897 (not c!801652)) b!4688365))

(assert (= (and b!4688365 res!1977193) b!4688364))

(assert (= (or b!4688363 b!4688365) bm!327632))

(assert (= (or b!4688363 b!4688365) bm!327631))

(assert (= (or b!4688363 b!4688365) bm!327633))

(assert (= (and d!1489897 res!1977191) b!4688362))

(assert (= (and b!4688362 res!1977192) b!4688366))

(declare-fun m!5589029 () Bool)

(assert (=> bm!327631 m!5589029))

(declare-fun m!5589031 () Bool)

(assert (=> b!4688365 m!5589031))

(declare-fun m!5589033 () Bool)

(assert (=> b!4688365 m!5589033))

(declare-fun m!5589035 () Bool)

(assert (=> b!4688365 m!5589035))

(declare-fun m!5589037 () Bool)

(assert (=> b!4688365 m!5589037))

(declare-fun m!5589039 () Bool)

(assert (=> b!4688365 m!5589039))

(assert (=> b!4688365 m!5589033))

(declare-fun m!5589041 () Bool)

(assert (=> b!4688365 m!5589041))

(declare-fun m!5589043 () Bool)

(assert (=> b!4688365 m!5589043))

(assert (=> b!4688365 m!5589037))

(declare-fun m!5589045 () Bool)

(assert (=> b!4688365 m!5589045))

(declare-fun m!5589047 () Bool)

(assert (=> b!4688365 m!5589047))

(declare-fun m!5589049 () Bool)

(assert (=> b!4688365 m!5589049))

(assert (=> b!4688365 m!5589047))

(declare-fun m!5589051 () Bool)

(assert (=> d!1489897 m!5589051))

(assert (=> d!1489897 m!5588981))

(declare-fun m!5589053 () Bool)

(assert (=> b!4688366 m!5589053))

(declare-fun m!5589055 () Bool)

(assert (=> b!4688362 m!5589055))

(assert (=> bm!327632 m!5588795))

(assert (=> b!4688364 m!5589033))

(assert (=> bm!327633 m!5589029))

(assert (=> b!4688170 d!1489897))

(declare-fun d!1489905 () Bool)

(declare-fun e!2924915 () Bool)

(assert (=> d!1489905 e!2924915))

(declare-fun res!1977208 () Bool)

(assert (=> d!1489905 (=> (not res!1977208) (not e!2924915))))

(declare-fun lt!1847866 () ListMap!4945)

(assert (=> d!1489905 (= res!1977208 (contains!15574 lt!1847866 (_1!30183 (h!58626 oldBucket!34))))))

(declare-fun lt!1847867 () List!52511)

(assert (=> d!1489905 (= lt!1847866 (ListMap!4946 lt!1847867))))

(declare-fun lt!1847868 () Unit!123649)

(declare-fun lt!1847865 () Unit!123649)

(assert (=> d!1489905 (= lt!1847868 lt!1847865)))

(assert (=> d!1489905 (= (getValueByKey!1767 lt!1847867 (_1!30183 (h!58626 oldBucket!34))) (Some!12058 (_2!30183 (h!58626 oldBucket!34))))))

(assert (=> d!1489905 (= lt!1847865 (lemmaContainsTupThenGetReturnValue!993 lt!1847867 (_1!30183 (h!58626 oldBucket!34)) (_2!30183 (h!58626 oldBucket!34))))))

(assert (=> d!1489905 (= lt!1847867 (insertNoDuplicatedKeys!501 (toList!5582 (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023))))) (_1!30183 (h!58626 oldBucket!34)) (_2!30183 (h!58626 oldBucket!34))))))

(assert (=> d!1489905 (= (+!2130 (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))) (h!58626 oldBucket!34)) lt!1847866)))

(declare-fun b!4688380 () Bool)

(declare-fun res!1977207 () Bool)

(assert (=> b!4688380 (=> (not res!1977207) (not e!2924915))))

(assert (=> b!4688380 (= res!1977207 (= (getValueByKey!1767 (toList!5582 lt!1847866) (_1!30183 (h!58626 oldBucket!34))) (Some!12058 (_2!30183 (h!58626 oldBucket!34)))))))

(declare-fun b!4688381 () Bool)

(assert (=> b!4688381 (= e!2924915 (contains!15577 (toList!5582 lt!1847866) (h!58626 oldBucket!34)))))

(assert (= (and d!1489905 res!1977208) b!4688380))

(assert (= (and b!4688380 res!1977207) b!4688381))

(declare-fun m!5589057 () Bool)

(assert (=> d!1489905 m!5589057))

(declare-fun m!5589059 () Bool)

(assert (=> d!1489905 m!5589059))

(declare-fun m!5589061 () Bool)

(assert (=> d!1489905 m!5589061))

(declare-fun m!5589063 () Bool)

(assert (=> d!1489905 m!5589063))

(declare-fun m!5589065 () Bool)

(assert (=> b!4688380 m!5589065))

(declare-fun m!5589069 () Bool)

(assert (=> b!4688381 m!5589069))

(assert (=> b!4688170 d!1489905))

(declare-fun d!1489907 () Bool)

(assert (=> d!1489907 (= (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847576 lt!1847567) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847576)) (= (content!9151 (toList!5582 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847576 lt!1847567) lt!1847569))) (content!9151 (toList!5582 (+!2130 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847576)))))))

(declare-fun bs!1085420 () Bool)

(assert (= bs!1085420 d!1489907))

(declare-fun m!5589075 () Bool)

(assert (=> bs!1085420 m!5589075))

(declare-fun m!5589077 () Bool)

(assert (=> bs!1085420 m!5589077))

(assert (=> b!4688170 d!1489907))

(declare-fun bs!1085421 () Bool)

(declare-fun b!4688385 () Bool)

(assert (= bs!1085421 (and b!4688385 d!1489837)))

(declare-fun lambda!206706 () Int)

(assert (=> bs!1085421 (not (= lambda!206706 lambda!206653))))

(declare-fun bs!1085422 () Bool)

(assert (= bs!1085422 (and b!4688385 b!4688363)))

(assert (=> bs!1085422 (= lambda!206706 lambda!206702)))

(declare-fun bs!1085423 () Bool)

(assert (= bs!1085423 (and b!4688385 b!4688250)))

(assert (=> bs!1085423 (= lambda!206706 lambda!206646)))

(declare-fun bs!1085424 () Bool)

(assert (= bs!1085424 (and b!4688385 b!4688252)))

(assert (=> bs!1085424 (= (= lt!1847569 lt!1847669) (= lambda!206706 lambda!206648))))

(declare-fun bs!1085425 () Bool)

(assert (= bs!1085425 (and b!4688385 d!1489849)))

(assert (=> bs!1085425 (= (= lt!1847569 lt!1847736) (= lambda!206706 lambda!206683))))

(declare-fun bs!1085426 () Bool)

(assert (= bs!1085426 (and b!4688385 b!4688365)))

(assert (=> bs!1085426 (= lambda!206706 lambda!206703)))

(declare-fun bs!1085427 () Bool)

(assert (= bs!1085427 (and b!4688385 b!4688304)))

(assert (=> bs!1085427 (= lambda!206706 lambda!206672)))

(declare-fun bs!1085428 () Bool)

(assert (= bs!1085428 (and b!4688385 d!1489813)))

(assert (=> bs!1085428 (not (= lambda!206706 lambda!206608))))

(declare-fun bs!1085429 () Bool)

(assert (= bs!1085429 (and b!4688385 d!1489815)))

(assert (=> bs!1085429 (= (= lt!1847569 lt!1847657) (= lambda!206706 lambda!206649))))

(assert (=> bs!1085424 (= lambda!206706 lambda!206647)))

(declare-fun bs!1085430 () Bool)

(assert (= bs!1085430 (and b!4688385 b!4688306)))

(assert (=> bs!1085430 (= lambda!206706 lambda!206675)))

(assert (=> bs!1085426 (= (= lt!1847569 lt!1847853) (= lambda!206706 lambda!206704))))

(declare-fun bs!1085431 () Bool)

(assert (= bs!1085431 (and b!4688385 d!1489897)))

(assert (=> bs!1085431 (= (= lt!1847569 lt!1847841) (= lambda!206706 lambda!206705))))

(assert (=> bs!1085430 (= (= lt!1847569 lt!1847748) (= lambda!206706 lambda!206677))))

(assert (=> b!4688385 true))

(declare-fun bs!1085432 () Bool)

(declare-fun b!4688387 () Bool)

(assert (= bs!1085432 (and b!4688387 d!1489837)))

(declare-fun lambda!206707 () Int)

(assert (=> bs!1085432 (not (= lambda!206707 lambda!206653))))

(declare-fun bs!1085433 () Bool)

(assert (= bs!1085433 (and b!4688387 b!4688363)))

(assert (=> bs!1085433 (= lambda!206707 lambda!206702)))

(declare-fun bs!1085434 () Bool)

(assert (= bs!1085434 (and b!4688387 b!4688250)))

(assert (=> bs!1085434 (= lambda!206707 lambda!206646)))

(declare-fun bs!1085435 () Bool)

(assert (= bs!1085435 (and b!4688387 b!4688252)))

(assert (=> bs!1085435 (= (= lt!1847569 lt!1847669) (= lambda!206707 lambda!206648))))

(declare-fun bs!1085436 () Bool)

(assert (= bs!1085436 (and b!4688387 d!1489849)))

(assert (=> bs!1085436 (= (= lt!1847569 lt!1847736) (= lambda!206707 lambda!206683))))

(declare-fun bs!1085437 () Bool)

(assert (= bs!1085437 (and b!4688387 b!4688385)))

(assert (=> bs!1085437 (= lambda!206707 lambda!206706)))

(declare-fun bs!1085438 () Bool)

(assert (= bs!1085438 (and b!4688387 b!4688365)))

(assert (=> bs!1085438 (= lambda!206707 lambda!206703)))

(declare-fun bs!1085439 () Bool)

(assert (= bs!1085439 (and b!4688387 b!4688304)))

(assert (=> bs!1085439 (= lambda!206707 lambda!206672)))

(declare-fun bs!1085440 () Bool)

(assert (= bs!1085440 (and b!4688387 d!1489813)))

(assert (=> bs!1085440 (not (= lambda!206707 lambda!206608))))

(declare-fun bs!1085441 () Bool)

(assert (= bs!1085441 (and b!4688387 d!1489815)))

(assert (=> bs!1085441 (= (= lt!1847569 lt!1847657) (= lambda!206707 lambda!206649))))

(assert (=> bs!1085435 (= lambda!206707 lambda!206647)))

(declare-fun bs!1085442 () Bool)

(assert (= bs!1085442 (and b!4688387 b!4688306)))

(assert (=> bs!1085442 (= lambda!206707 lambda!206675)))

(assert (=> bs!1085438 (= (= lt!1847569 lt!1847853) (= lambda!206707 lambda!206704))))

(declare-fun bs!1085443 () Bool)

(assert (= bs!1085443 (and b!4688387 d!1489897)))

(assert (=> bs!1085443 (= (= lt!1847569 lt!1847841) (= lambda!206707 lambda!206705))))

(assert (=> bs!1085442 (= (= lt!1847569 lt!1847748) (= lambda!206707 lambda!206677))))

(assert (=> b!4688387 true))

(declare-fun lambda!206708 () Int)

(assert (=> bs!1085432 (not (= lambda!206708 lambda!206653))))

(declare-fun lt!1847887 () ListMap!4945)

(assert (=> bs!1085434 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206646))))

(assert (=> bs!1085435 (= (= lt!1847887 lt!1847669) (= lambda!206708 lambda!206648))))

(assert (=> bs!1085436 (= (= lt!1847887 lt!1847736) (= lambda!206708 lambda!206683))))

(assert (=> bs!1085437 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206706))))

(assert (=> bs!1085438 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206703))))

(assert (=> bs!1085439 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206672))))

(assert (=> bs!1085440 (not (= lambda!206708 lambda!206608))))

(assert (=> bs!1085441 (= (= lt!1847887 lt!1847657) (= lambda!206708 lambda!206649))))

(assert (=> bs!1085435 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206647))))

(assert (=> bs!1085442 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206675))))

(assert (=> bs!1085438 (= (= lt!1847887 lt!1847853) (= lambda!206708 lambda!206704))))

(assert (=> bs!1085433 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206702))))

(assert (=> b!4688387 (= (= lt!1847887 lt!1847569) (= lambda!206708 lambda!206707))))

(assert (=> bs!1085443 (= (= lt!1847887 lt!1847841) (= lambda!206708 lambda!206705))))

(assert (=> bs!1085442 (= (= lt!1847887 lt!1847748) (= lambda!206708 lambda!206677))))

(assert (=> b!4688387 true))

(declare-fun bs!1085444 () Bool)

(declare-fun d!1489911 () Bool)

(assert (= bs!1085444 (and d!1489911 d!1489837)))

(declare-fun lambda!206709 () Int)

(assert (=> bs!1085444 (not (= lambda!206709 lambda!206653))))

(declare-fun bs!1085445 () Bool)

(assert (= bs!1085445 (and d!1489911 b!4688250)))

(declare-fun lt!1847875 () ListMap!4945)

(assert (=> bs!1085445 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206646))))

(declare-fun bs!1085446 () Bool)

(assert (= bs!1085446 (and d!1489911 b!4688252)))

(assert (=> bs!1085446 (= (= lt!1847875 lt!1847669) (= lambda!206709 lambda!206648))))

(declare-fun bs!1085447 () Bool)

(assert (= bs!1085447 (and d!1489911 d!1489849)))

(assert (=> bs!1085447 (= (= lt!1847875 lt!1847736) (= lambda!206709 lambda!206683))))

(declare-fun bs!1085448 () Bool)

(assert (= bs!1085448 (and d!1489911 b!4688385)))

(assert (=> bs!1085448 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206706))))

(declare-fun bs!1085449 () Bool)

(assert (= bs!1085449 (and d!1489911 b!4688304)))

(assert (=> bs!1085449 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206672))))

(declare-fun bs!1085450 () Bool)

(assert (= bs!1085450 (and d!1489911 d!1489813)))

(assert (=> bs!1085450 (not (= lambda!206709 lambda!206608))))

(declare-fun bs!1085451 () Bool)

(assert (= bs!1085451 (and d!1489911 d!1489815)))

(assert (=> bs!1085451 (= (= lt!1847875 lt!1847657) (= lambda!206709 lambda!206649))))

(assert (=> bs!1085446 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206647))))

(declare-fun bs!1085452 () Bool)

(assert (= bs!1085452 (and d!1489911 b!4688306)))

(assert (=> bs!1085452 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206675))))

(declare-fun bs!1085453 () Bool)

(assert (= bs!1085453 (and d!1489911 b!4688365)))

(assert (=> bs!1085453 (= (= lt!1847875 lt!1847853) (= lambda!206709 lambda!206704))))

(declare-fun bs!1085454 () Bool)

(assert (= bs!1085454 (and d!1489911 b!4688363)))

(assert (=> bs!1085454 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206702))))

(declare-fun bs!1085455 () Bool)

(assert (= bs!1085455 (and d!1489911 b!4688387)))

(assert (=> bs!1085455 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206707))))

(assert (=> bs!1085455 (= (= lt!1847875 lt!1847887) (= lambda!206709 lambda!206708))))

(assert (=> bs!1085453 (= (= lt!1847875 lt!1847569) (= lambda!206709 lambda!206703))))

(declare-fun bs!1085456 () Bool)

(assert (= bs!1085456 (and d!1489911 d!1489897)))

(assert (=> bs!1085456 (= (= lt!1847875 lt!1847841) (= lambda!206709 lambda!206705))))

(assert (=> bs!1085452 (= (= lt!1847875 lt!1847748) (= lambda!206709 lambda!206677))))

(assert (=> d!1489911 true))

(declare-fun call!327639 () Bool)

(declare-fun lt!1847874 () ListMap!4945)

(declare-fun c!801653 () Bool)

(declare-fun bm!327634 () Bool)

(assert (=> bm!327634 (= call!327639 (forall!11308 (ite c!801653 (toList!5582 lt!1847569) (toList!5582 lt!1847874)) (ite c!801653 lambda!206706 lambda!206708)))))

(declare-fun b!4688384 () Bool)

(declare-fun res!1977212 () Bool)

(declare-fun e!2924920 () Bool)

(assert (=> b!4688384 (=> (not res!1977212) (not e!2924920))))

(assert (=> b!4688384 (= res!1977212 (forall!11308 (toList!5582 lt!1847569) lambda!206709))))

(declare-fun e!2924918 () ListMap!4945)

(assert (=> b!4688385 (= e!2924918 lt!1847569)))

(declare-fun lt!1847876 () Unit!123649)

(declare-fun call!327641 () Unit!123649)

(assert (=> b!4688385 (= lt!1847876 call!327641)))

(assert (=> b!4688385 call!327639))

(declare-fun lt!1847871 () Unit!123649)

(assert (=> b!4688385 (= lt!1847871 lt!1847876)))

(declare-fun call!327640 () Bool)

(assert (=> b!4688385 call!327640))

(declare-fun lt!1847883 () Unit!123649)

(declare-fun Unit!123713 () Unit!123649)

(assert (=> b!4688385 (= lt!1847883 Unit!123713)))

(declare-fun b!4688386 () Bool)

(declare-fun e!2924919 () Bool)

(assert (=> b!4688386 (= e!2924919 (forall!11308 (toList!5582 lt!1847569) lambda!206708))))

(assert (=> b!4688387 (= e!2924918 lt!1847887)))

(assert (=> b!4688387 (= lt!1847874 (+!2130 lt!1847569 (h!58626 (Cons!52387 lt!1847577 lt!1847578))))))

(assert (=> b!4688387 (= lt!1847887 (addToMapMapFromBucket!1278 (t!359681 (Cons!52387 lt!1847577 lt!1847578)) (+!2130 lt!1847569 (h!58626 (Cons!52387 lt!1847577 lt!1847578)))))))

(declare-fun lt!1847888 () Unit!123649)

(assert (=> b!4688387 (= lt!1847888 call!327641)))

(assert (=> b!4688387 (forall!11308 (toList!5582 lt!1847569) lambda!206707)))

(declare-fun lt!1847878 () Unit!123649)

(assert (=> b!4688387 (= lt!1847878 lt!1847888)))

(assert (=> b!4688387 call!327639))

(declare-fun lt!1847882 () Unit!123649)

(declare-fun Unit!123714 () Unit!123649)

(assert (=> b!4688387 (= lt!1847882 Unit!123714)))

(assert (=> b!4688387 (forall!11308 (t!359681 (Cons!52387 lt!1847577 lt!1847578)) lambda!206708)))

(declare-fun lt!1847870 () Unit!123649)

(declare-fun Unit!123715 () Unit!123649)

(assert (=> b!4688387 (= lt!1847870 Unit!123715)))

(declare-fun lt!1847881 () Unit!123649)

(declare-fun Unit!123716 () Unit!123649)

(assert (=> b!4688387 (= lt!1847881 Unit!123716)))

(declare-fun lt!1847880 () Unit!123649)

(assert (=> b!4688387 (= lt!1847880 (forallContained!3415 (toList!5582 lt!1847874) lambda!206708 (h!58626 (Cons!52387 lt!1847577 lt!1847578))))))

(assert (=> b!4688387 (contains!15574 lt!1847874 (_1!30183 (h!58626 (Cons!52387 lt!1847577 lt!1847578))))))

(declare-fun lt!1847890 () Unit!123649)

(declare-fun Unit!123717 () Unit!123649)

(assert (=> b!4688387 (= lt!1847890 Unit!123717)))

(assert (=> b!4688387 (contains!15574 lt!1847887 (_1!30183 (h!58626 (Cons!52387 lt!1847577 lt!1847578))))))

(declare-fun lt!1847886 () Unit!123649)

(declare-fun Unit!123718 () Unit!123649)

(assert (=> b!4688387 (= lt!1847886 Unit!123718)))

(assert (=> b!4688387 (forall!11308 (Cons!52387 lt!1847577 lt!1847578) lambda!206708)))

(declare-fun lt!1847873 () Unit!123649)

(declare-fun Unit!123719 () Unit!123649)

(assert (=> b!4688387 (= lt!1847873 Unit!123719)))

(assert (=> b!4688387 call!327640))

(declare-fun lt!1847879 () Unit!123649)

(declare-fun Unit!123720 () Unit!123649)

(assert (=> b!4688387 (= lt!1847879 Unit!123720)))

(declare-fun lt!1847877 () Unit!123649)

(declare-fun Unit!123721 () Unit!123649)

(assert (=> b!4688387 (= lt!1847877 Unit!123721)))

(declare-fun lt!1847884 () Unit!123649)

(assert (=> b!4688387 (= lt!1847884 (addForallContainsKeyThenBeforeAdding!690 lt!1847569 lt!1847887 (_1!30183 (h!58626 (Cons!52387 lt!1847577 lt!1847578))) (_2!30183 (h!58626 (Cons!52387 lt!1847577 lt!1847578)))))))

(assert (=> b!4688387 (forall!11308 (toList!5582 lt!1847569) lambda!206708)))

(declare-fun lt!1847889 () Unit!123649)

(assert (=> b!4688387 (= lt!1847889 lt!1847884)))

(assert (=> b!4688387 (forall!11308 (toList!5582 lt!1847569) lambda!206708)))

(declare-fun lt!1847872 () Unit!123649)

(declare-fun Unit!123722 () Unit!123649)

(assert (=> b!4688387 (= lt!1847872 Unit!123722)))

(declare-fun res!1977213 () Bool)

(assert (=> b!4688387 (= res!1977213 (forall!11308 (Cons!52387 lt!1847577 lt!1847578) lambda!206708))))

(assert (=> b!4688387 (=> (not res!1977213) (not e!2924919))))

(assert (=> b!4688387 e!2924919))

(declare-fun lt!1847885 () Unit!123649)

(declare-fun Unit!123723 () Unit!123649)

(assert (=> b!4688387 (= lt!1847885 Unit!123723)))

(assert (=> d!1489911 e!2924920))

(declare-fun res!1977211 () Bool)

(assert (=> d!1489911 (=> (not res!1977211) (not e!2924920))))

(assert (=> d!1489911 (= res!1977211 (forall!11308 (Cons!52387 lt!1847577 lt!1847578) lambda!206709))))

(assert (=> d!1489911 (= lt!1847875 e!2924918)))

(assert (=> d!1489911 (= c!801653 ((_ is Nil!52387) (Cons!52387 lt!1847577 lt!1847578)))))

(assert (=> d!1489911 (noDuplicateKeys!1846 (Cons!52387 lt!1847577 lt!1847578))))

(assert (=> d!1489911 (= (addToMapMapFromBucket!1278 (Cons!52387 lt!1847577 lt!1847578) lt!1847569) lt!1847875)))

(declare-fun bm!327635 () Bool)

(assert (=> bm!327635 (= call!327641 (lemmaContainsAllItsOwnKeys!691 lt!1847569))))

(declare-fun b!4688388 () Bool)

(assert (=> b!4688388 (= e!2924920 (invariantList!1403 (toList!5582 lt!1847875)))))

(declare-fun bm!327636 () Bool)

(assert (=> bm!327636 (= call!327640 (forall!11308 (ite c!801653 (toList!5582 lt!1847569) (toList!5582 lt!1847874)) (ite c!801653 lambda!206706 lambda!206708)))))

(assert (= (and d!1489911 c!801653) b!4688385))

(assert (= (and d!1489911 (not c!801653)) b!4688387))

(assert (= (and b!4688387 res!1977213) b!4688386))

(assert (= (or b!4688385 b!4688387) bm!327635))

(assert (= (or b!4688385 b!4688387) bm!327634))

(assert (= (or b!4688385 b!4688387) bm!327636))

(assert (= (and d!1489911 res!1977211) b!4688384))

(assert (= (and b!4688384 res!1977212) b!4688388))

(declare-fun m!5589093 () Bool)

(assert (=> bm!327634 m!5589093))

(declare-fun m!5589095 () Bool)

(assert (=> b!4688387 m!5589095))

(declare-fun m!5589097 () Bool)

(assert (=> b!4688387 m!5589097))

(declare-fun m!5589099 () Bool)

(assert (=> b!4688387 m!5589099))

(declare-fun m!5589101 () Bool)

(assert (=> b!4688387 m!5589101))

(declare-fun m!5589103 () Bool)

(assert (=> b!4688387 m!5589103))

(assert (=> b!4688387 m!5589097))

(declare-fun m!5589105 () Bool)

(assert (=> b!4688387 m!5589105))

(declare-fun m!5589107 () Bool)

(assert (=> b!4688387 m!5589107))

(assert (=> b!4688387 m!5589101))

(declare-fun m!5589109 () Bool)

(assert (=> b!4688387 m!5589109))

(declare-fun m!5589111 () Bool)

(assert (=> b!4688387 m!5589111))

(declare-fun m!5589113 () Bool)

(assert (=> b!4688387 m!5589113))

(assert (=> b!4688387 m!5589111))

(declare-fun m!5589115 () Bool)

(assert (=> d!1489911 m!5589115))

(declare-fun m!5589117 () Bool)

(assert (=> d!1489911 m!5589117))

(declare-fun m!5589119 () Bool)

(assert (=> b!4688388 m!5589119))

(declare-fun m!5589121 () Bool)

(assert (=> b!4688384 m!5589121))

(assert (=> bm!327635 m!5588795))

(assert (=> b!4688386 m!5589097))

(assert (=> bm!327636 m!5589093))

(assert (=> b!4688170 d!1489911))

(declare-fun bs!1085457 () Bool)

(declare-fun b!4688414 () Bool)

(assert (= bs!1085457 (and b!4688414 d!1489911)))

(declare-fun lambda!206710 () Int)

(assert (=> bs!1085457 (= (= lt!1847569 lt!1847875) (= lambda!206710 lambda!206709))))

(declare-fun bs!1085458 () Bool)

(assert (= bs!1085458 (and b!4688414 d!1489837)))

(assert (=> bs!1085458 (not (= lambda!206710 lambda!206653))))

(declare-fun bs!1085459 () Bool)

(assert (= bs!1085459 (and b!4688414 b!4688250)))

(assert (=> bs!1085459 (= lambda!206710 lambda!206646)))

(declare-fun bs!1085460 () Bool)

(assert (= bs!1085460 (and b!4688414 b!4688252)))

(assert (=> bs!1085460 (= (= lt!1847569 lt!1847669) (= lambda!206710 lambda!206648))))

(declare-fun bs!1085461 () Bool)

(assert (= bs!1085461 (and b!4688414 d!1489849)))

(assert (=> bs!1085461 (= (= lt!1847569 lt!1847736) (= lambda!206710 lambda!206683))))

(declare-fun bs!1085462 () Bool)

(assert (= bs!1085462 (and b!4688414 b!4688385)))

(assert (=> bs!1085462 (= lambda!206710 lambda!206706)))

(declare-fun bs!1085463 () Bool)

(assert (= bs!1085463 (and b!4688414 b!4688304)))

(assert (=> bs!1085463 (= lambda!206710 lambda!206672)))

(declare-fun bs!1085464 () Bool)

(assert (= bs!1085464 (and b!4688414 d!1489813)))

(assert (=> bs!1085464 (not (= lambda!206710 lambda!206608))))

(declare-fun bs!1085465 () Bool)

(assert (= bs!1085465 (and b!4688414 d!1489815)))

(assert (=> bs!1085465 (= (= lt!1847569 lt!1847657) (= lambda!206710 lambda!206649))))

(assert (=> bs!1085460 (= lambda!206710 lambda!206647)))

(declare-fun bs!1085466 () Bool)

(assert (= bs!1085466 (and b!4688414 b!4688306)))

(assert (=> bs!1085466 (= lambda!206710 lambda!206675)))

(declare-fun bs!1085467 () Bool)

(assert (= bs!1085467 (and b!4688414 b!4688365)))

(assert (=> bs!1085467 (= (= lt!1847569 lt!1847853) (= lambda!206710 lambda!206704))))

(declare-fun bs!1085468 () Bool)

(assert (= bs!1085468 (and b!4688414 b!4688363)))

(assert (=> bs!1085468 (= lambda!206710 lambda!206702)))

(declare-fun bs!1085469 () Bool)

(assert (= bs!1085469 (and b!4688414 b!4688387)))

(assert (=> bs!1085469 (= lambda!206710 lambda!206707)))

(assert (=> bs!1085469 (= (= lt!1847569 lt!1847887) (= lambda!206710 lambda!206708))))

(assert (=> bs!1085467 (= lambda!206710 lambda!206703)))

(declare-fun bs!1085470 () Bool)

(assert (= bs!1085470 (and b!4688414 d!1489897)))

(assert (=> bs!1085470 (= (= lt!1847569 lt!1847841) (= lambda!206710 lambda!206705))))

(assert (=> bs!1085466 (= (= lt!1847569 lt!1847748) (= lambda!206710 lambda!206677))))

(assert (=> b!4688414 true))

(declare-fun bs!1085471 () Bool)

(declare-fun b!4688416 () Bool)

(assert (= bs!1085471 (and b!4688416 d!1489911)))

(declare-fun lambda!206711 () Int)

(assert (=> bs!1085471 (= (= lt!1847569 lt!1847875) (= lambda!206711 lambda!206709))))

(declare-fun bs!1085472 () Bool)

(assert (= bs!1085472 (and b!4688416 d!1489837)))

(assert (=> bs!1085472 (not (= lambda!206711 lambda!206653))))

(declare-fun bs!1085473 () Bool)

(assert (= bs!1085473 (and b!4688416 b!4688414)))

(assert (=> bs!1085473 (= lambda!206711 lambda!206710)))

(declare-fun bs!1085474 () Bool)

(assert (= bs!1085474 (and b!4688416 b!4688250)))

(assert (=> bs!1085474 (= lambda!206711 lambda!206646)))

(declare-fun bs!1085475 () Bool)

(assert (= bs!1085475 (and b!4688416 b!4688252)))

(assert (=> bs!1085475 (= (= lt!1847569 lt!1847669) (= lambda!206711 lambda!206648))))

(declare-fun bs!1085476 () Bool)

(assert (= bs!1085476 (and b!4688416 d!1489849)))

(assert (=> bs!1085476 (= (= lt!1847569 lt!1847736) (= lambda!206711 lambda!206683))))

(declare-fun bs!1085477 () Bool)

(assert (= bs!1085477 (and b!4688416 b!4688385)))

(assert (=> bs!1085477 (= lambda!206711 lambda!206706)))

(declare-fun bs!1085478 () Bool)

(assert (= bs!1085478 (and b!4688416 b!4688304)))

(assert (=> bs!1085478 (= lambda!206711 lambda!206672)))

(declare-fun bs!1085479 () Bool)

(assert (= bs!1085479 (and b!4688416 d!1489813)))

(assert (=> bs!1085479 (not (= lambda!206711 lambda!206608))))

(declare-fun bs!1085480 () Bool)

(assert (= bs!1085480 (and b!4688416 d!1489815)))

(assert (=> bs!1085480 (= (= lt!1847569 lt!1847657) (= lambda!206711 lambda!206649))))

(assert (=> bs!1085475 (= lambda!206711 lambda!206647)))

(declare-fun bs!1085481 () Bool)

(assert (= bs!1085481 (and b!4688416 b!4688306)))

(assert (=> bs!1085481 (= lambda!206711 lambda!206675)))

(declare-fun bs!1085482 () Bool)

(assert (= bs!1085482 (and b!4688416 b!4688365)))

(assert (=> bs!1085482 (= (= lt!1847569 lt!1847853) (= lambda!206711 lambda!206704))))

(declare-fun bs!1085483 () Bool)

(assert (= bs!1085483 (and b!4688416 b!4688363)))

(assert (=> bs!1085483 (= lambda!206711 lambda!206702)))

(declare-fun bs!1085484 () Bool)

(assert (= bs!1085484 (and b!4688416 b!4688387)))

(assert (=> bs!1085484 (= lambda!206711 lambda!206707)))

(assert (=> bs!1085484 (= (= lt!1847569 lt!1847887) (= lambda!206711 lambda!206708))))

(assert (=> bs!1085482 (= lambda!206711 lambda!206703)))

(declare-fun bs!1085485 () Bool)

(assert (= bs!1085485 (and b!4688416 d!1489897)))

(assert (=> bs!1085485 (= (= lt!1847569 lt!1847841) (= lambda!206711 lambda!206705))))

(assert (=> bs!1085481 (= (= lt!1847569 lt!1847748) (= lambda!206711 lambda!206677))))

(assert (=> b!4688416 true))

(declare-fun lambda!206712 () Int)

(declare-fun lt!1847911 () ListMap!4945)

(assert (=> bs!1085471 (= (= lt!1847911 lt!1847875) (= lambda!206712 lambda!206709))))

(assert (=> bs!1085472 (not (= lambda!206712 lambda!206653))))

(assert (=> bs!1085473 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206710))))

(assert (=> bs!1085474 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206646))))

(assert (=> bs!1085475 (= (= lt!1847911 lt!1847669) (= lambda!206712 lambda!206648))))

(assert (=> bs!1085476 (= (= lt!1847911 lt!1847736) (= lambda!206712 lambda!206683))))

(assert (=> bs!1085477 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206706))))

(assert (=> bs!1085478 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206672))))

(assert (=> bs!1085479 (not (= lambda!206712 lambda!206608))))

(assert (=> bs!1085480 (= (= lt!1847911 lt!1847657) (= lambda!206712 lambda!206649))))

(assert (=> bs!1085475 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206647))))

(assert (=> b!4688416 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206711))))

(assert (=> bs!1085481 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206675))))

(assert (=> bs!1085482 (= (= lt!1847911 lt!1847853) (= lambda!206712 lambda!206704))))

(assert (=> bs!1085483 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206702))))

(assert (=> bs!1085484 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206707))))

(assert (=> bs!1085484 (= (= lt!1847911 lt!1847887) (= lambda!206712 lambda!206708))))

(assert (=> bs!1085482 (= (= lt!1847911 lt!1847569) (= lambda!206712 lambda!206703))))

(assert (=> bs!1085485 (= (= lt!1847911 lt!1847841) (= lambda!206712 lambda!206705))))

(assert (=> bs!1085481 (= (= lt!1847911 lt!1847748) (= lambda!206712 lambda!206677))))

(assert (=> b!4688416 true))

(declare-fun bs!1085486 () Bool)

(declare-fun d!1489915 () Bool)

(assert (= bs!1085486 (and d!1489915 d!1489911)))

(declare-fun lambda!206713 () Int)

(declare-fun lt!1847899 () ListMap!4945)

(assert (=> bs!1085486 (= (= lt!1847899 lt!1847875) (= lambda!206713 lambda!206709))))

(declare-fun bs!1085487 () Bool)

(assert (= bs!1085487 (and d!1489915 d!1489837)))

(assert (=> bs!1085487 (not (= lambda!206713 lambda!206653))))

(declare-fun bs!1085488 () Bool)

(assert (= bs!1085488 (and d!1489915 b!4688414)))

(assert (=> bs!1085488 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206710))))

(declare-fun bs!1085489 () Bool)

(assert (= bs!1085489 (and d!1489915 b!4688250)))

(assert (=> bs!1085489 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206646))))

(declare-fun bs!1085490 () Bool)

(assert (= bs!1085490 (and d!1489915 b!4688252)))

(assert (=> bs!1085490 (= (= lt!1847899 lt!1847669) (= lambda!206713 lambda!206648))))

(declare-fun bs!1085491 () Bool)

(assert (= bs!1085491 (and d!1489915 d!1489849)))

(assert (=> bs!1085491 (= (= lt!1847899 lt!1847736) (= lambda!206713 lambda!206683))))

(declare-fun bs!1085492 () Bool)

(assert (= bs!1085492 (and d!1489915 b!4688385)))

(assert (=> bs!1085492 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206706))))

(declare-fun bs!1085493 () Bool)

(assert (= bs!1085493 (and d!1489915 b!4688304)))

(assert (=> bs!1085493 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206672))))

(declare-fun bs!1085494 () Bool)

(assert (= bs!1085494 (and d!1489915 d!1489813)))

(assert (=> bs!1085494 (not (= lambda!206713 lambda!206608))))

(declare-fun bs!1085495 () Bool)

(assert (= bs!1085495 (and d!1489915 b!4688416)))

(assert (=> bs!1085495 (= (= lt!1847899 lt!1847911) (= lambda!206713 lambda!206712))))

(declare-fun bs!1085496 () Bool)

(assert (= bs!1085496 (and d!1489915 d!1489815)))

(assert (=> bs!1085496 (= (= lt!1847899 lt!1847657) (= lambda!206713 lambda!206649))))

(assert (=> bs!1085490 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206647))))

(assert (=> bs!1085495 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206711))))

(declare-fun bs!1085497 () Bool)

(assert (= bs!1085497 (and d!1489915 b!4688306)))

(assert (=> bs!1085497 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206675))))

(declare-fun bs!1085498 () Bool)

(assert (= bs!1085498 (and d!1489915 b!4688365)))

(assert (=> bs!1085498 (= (= lt!1847899 lt!1847853) (= lambda!206713 lambda!206704))))

(declare-fun bs!1085499 () Bool)

(assert (= bs!1085499 (and d!1489915 b!4688363)))

(assert (=> bs!1085499 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206702))))

(declare-fun bs!1085500 () Bool)

(assert (= bs!1085500 (and d!1489915 b!4688387)))

(assert (=> bs!1085500 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206707))))

(assert (=> bs!1085500 (= (= lt!1847899 lt!1847887) (= lambda!206713 lambda!206708))))

(assert (=> bs!1085498 (= (= lt!1847899 lt!1847569) (= lambda!206713 lambda!206703))))

(declare-fun bs!1085501 () Bool)

(assert (= bs!1085501 (and d!1489915 d!1489897)))

(assert (=> bs!1085501 (= (= lt!1847899 lt!1847841) (= lambda!206713 lambda!206705))))

(assert (=> bs!1085497 (= (= lt!1847899 lt!1847748) (= lambda!206713 lambda!206677))))

(assert (=> d!1489915 true))

(declare-fun lt!1847898 () ListMap!4945)

(declare-fun call!327642 () Bool)

(declare-fun bm!327637 () Bool)

(declare-fun c!801660 () Bool)

(assert (=> bm!327637 (= call!327642 (forall!11308 (ite c!801660 (toList!5582 lt!1847569) (toList!5582 lt!1847898)) (ite c!801660 lambda!206710 lambda!206712)))))

(declare-fun b!4688413 () Bool)

(declare-fun res!1977227 () Bool)

(declare-fun e!2924938 () Bool)

(assert (=> b!4688413 (=> (not res!1977227) (not e!2924938))))

(assert (=> b!4688413 (= res!1977227 (forall!11308 (toList!5582 lt!1847569) lambda!206713))))

(declare-fun e!2924936 () ListMap!4945)

(assert (=> b!4688414 (= e!2924936 lt!1847569)))

(declare-fun lt!1847900 () Unit!123649)

(declare-fun call!327644 () Unit!123649)

(assert (=> b!4688414 (= lt!1847900 call!327644)))

(assert (=> b!4688414 call!327642))

(declare-fun lt!1847895 () Unit!123649)

(assert (=> b!4688414 (= lt!1847895 lt!1847900)))

(declare-fun call!327643 () Bool)

(assert (=> b!4688414 call!327643))

(declare-fun lt!1847907 () Unit!123649)

(declare-fun Unit!123735 () Unit!123649)

(assert (=> b!4688414 (= lt!1847907 Unit!123735)))

(declare-fun b!4688415 () Bool)

(declare-fun e!2924937 () Bool)

(assert (=> b!4688415 (= e!2924937 (forall!11308 (toList!5582 lt!1847569) lambda!206712))))

(assert (=> b!4688416 (= e!2924936 lt!1847911)))

(assert (=> b!4688416 (= lt!1847898 (+!2130 lt!1847569 (h!58626 lt!1847567)))))

(assert (=> b!4688416 (= lt!1847911 (addToMapMapFromBucket!1278 (t!359681 lt!1847567) (+!2130 lt!1847569 (h!58626 lt!1847567))))))

(declare-fun lt!1847912 () Unit!123649)

(assert (=> b!4688416 (= lt!1847912 call!327644)))

(assert (=> b!4688416 (forall!11308 (toList!5582 lt!1847569) lambda!206711)))

(declare-fun lt!1847902 () Unit!123649)

(assert (=> b!4688416 (= lt!1847902 lt!1847912)))

(assert (=> b!4688416 call!327642))

(declare-fun lt!1847906 () Unit!123649)

(declare-fun Unit!123736 () Unit!123649)

(assert (=> b!4688416 (= lt!1847906 Unit!123736)))

(assert (=> b!4688416 (forall!11308 (t!359681 lt!1847567) lambda!206712)))

(declare-fun lt!1847894 () Unit!123649)

(declare-fun Unit!123737 () Unit!123649)

(assert (=> b!4688416 (= lt!1847894 Unit!123737)))

(declare-fun lt!1847905 () Unit!123649)

(declare-fun Unit!123738 () Unit!123649)

(assert (=> b!4688416 (= lt!1847905 Unit!123738)))

(declare-fun lt!1847904 () Unit!123649)

(assert (=> b!4688416 (= lt!1847904 (forallContained!3415 (toList!5582 lt!1847898) lambda!206712 (h!58626 lt!1847567)))))

(assert (=> b!4688416 (contains!15574 lt!1847898 (_1!30183 (h!58626 lt!1847567)))))

(declare-fun lt!1847914 () Unit!123649)

(declare-fun Unit!123739 () Unit!123649)

(assert (=> b!4688416 (= lt!1847914 Unit!123739)))

(assert (=> b!4688416 (contains!15574 lt!1847911 (_1!30183 (h!58626 lt!1847567)))))

(declare-fun lt!1847910 () Unit!123649)

(declare-fun Unit!123740 () Unit!123649)

(assert (=> b!4688416 (= lt!1847910 Unit!123740)))

(assert (=> b!4688416 (forall!11308 lt!1847567 lambda!206712)))

(declare-fun lt!1847897 () Unit!123649)

(declare-fun Unit!123741 () Unit!123649)

(assert (=> b!4688416 (= lt!1847897 Unit!123741)))

(assert (=> b!4688416 call!327643))

(declare-fun lt!1847903 () Unit!123649)

(declare-fun Unit!123742 () Unit!123649)

(assert (=> b!4688416 (= lt!1847903 Unit!123742)))

(declare-fun lt!1847901 () Unit!123649)

(declare-fun Unit!123743 () Unit!123649)

(assert (=> b!4688416 (= lt!1847901 Unit!123743)))

(declare-fun lt!1847908 () Unit!123649)

(assert (=> b!4688416 (= lt!1847908 (addForallContainsKeyThenBeforeAdding!690 lt!1847569 lt!1847911 (_1!30183 (h!58626 lt!1847567)) (_2!30183 (h!58626 lt!1847567))))))

(assert (=> b!4688416 (forall!11308 (toList!5582 lt!1847569) lambda!206712)))

(declare-fun lt!1847913 () Unit!123649)

(assert (=> b!4688416 (= lt!1847913 lt!1847908)))

(assert (=> b!4688416 (forall!11308 (toList!5582 lt!1847569) lambda!206712)))

(declare-fun lt!1847896 () Unit!123649)

(declare-fun Unit!123744 () Unit!123649)

(assert (=> b!4688416 (= lt!1847896 Unit!123744)))

(declare-fun res!1977228 () Bool)

(assert (=> b!4688416 (= res!1977228 (forall!11308 lt!1847567 lambda!206712))))

(assert (=> b!4688416 (=> (not res!1977228) (not e!2924937))))

(assert (=> b!4688416 e!2924937))

(declare-fun lt!1847909 () Unit!123649)

(declare-fun Unit!123745 () Unit!123649)

(assert (=> b!4688416 (= lt!1847909 Unit!123745)))

(assert (=> d!1489915 e!2924938))

(declare-fun res!1977226 () Bool)

(assert (=> d!1489915 (=> (not res!1977226) (not e!2924938))))

(assert (=> d!1489915 (= res!1977226 (forall!11308 lt!1847567 lambda!206713))))

(assert (=> d!1489915 (= lt!1847899 e!2924936)))

(assert (=> d!1489915 (= c!801660 ((_ is Nil!52387) lt!1847567))))

(assert (=> d!1489915 (noDuplicateKeys!1846 lt!1847567)))

(assert (=> d!1489915 (= (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847899)))

(declare-fun bm!327638 () Bool)

(assert (=> bm!327638 (= call!327644 (lemmaContainsAllItsOwnKeys!691 lt!1847569))))

(declare-fun b!4688417 () Bool)

(assert (=> b!4688417 (= e!2924938 (invariantList!1403 (toList!5582 lt!1847899)))))

(declare-fun bm!327639 () Bool)

(assert (=> bm!327639 (= call!327643 (forall!11308 (ite c!801660 (toList!5582 lt!1847569) (toList!5582 lt!1847898)) (ite c!801660 lambda!206710 lambda!206712)))))

(assert (= (and d!1489915 c!801660) b!4688414))

(assert (= (and d!1489915 (not c!801660)) b!4688416))

(assert (= (and b!4688416 res!1977228) b!4688415))

(assert (= (or b!4688414 b!4688416) bm!327638))

(assert (= (or b!4688414 b!4688416) bm!327637))

(assert (= (or b!4688414 b!4688416) bm!327639))

(assert (= (and d!1489915 res!1977226) b!4688413))

(assert (= (and b!4688413 res!1977227) b!4688417))

(declare-fun m!5589123 () Bool)

(assert (=> bm!327637 m!5589123))

(declare-fun m!5589125 () Bool)

(assert (=> b!4688416 m!5589125))

(declare-fun m!5589127 () Bool)

(assert (=> b!4688416 m!5589127))

(declare-fun m!5589129 () Bool)

(assert (=> b!4688416 m!5589129))

(declare-fun m!5589131 () Bool)

(assert (=> b!4688416 m!5589131))

(declare-fun m!5589133 () Bool)

(assert (=> b!4688416 m!5589133))

(assert (=> b!4688416 m!5589127))

(declare-fun m!5589135 () Bool)

(assert (=> b!4688416 m!5589135))

(declare-fun m!5589137 () Bool)

(assert (=> b!4688416 m!5589137))

(assert (=> b!4688416 m!5589131))

(declare-fun m!5589139 () Bool)

(assert (=> b!4688416 m!5589139))

(declare-fun m!5589141 () Bool)

(assert (=> b!4688416 m!5589141))

(declare-fun m!5589143 () Bool)

(assert (=> b!4688416 m!5589143))

(assert (=> b!4688416 m!5589141))

(declare-fun m!5589145 () Bool)

(assert (=> d!1489915 m!5589145))

(declare-fun m!5589147 () Bool)

(assert (=> d!1489915 m!5589147))

(declare-fun m!5589149 () Bool)

(assert (=> b!4688417 m!5589149))

(declare-fun m!5589151 () Bool)

(assert (=> b!4688413 m!5589151))

(assert (=> bm!327638 m!5588795))

(assert (=> b!4688415 m!5589127))

(assert (=> bm!327639 m!5589123))

(assert (=> b!4688170 d!1489915))

(declare-fun bs!1085502 () Bool)

(declare-fun d!1489917 () Bool)

(assert (= bs!1085502 (and d!1489917 start!474056)))

(declare-fun lambda!206714 () Int)

(assert (=> bs!1085502 (= lambda!206714 lambda!206605)))

(declare-fun bs!1085503 () Bool)

(assert (= bs!1085503 (and d!1489917 d!1489833)))

(assert (=> bs!1085503 (= lambda!206714 lambda!206652)))

(declare-fun bs!1085504 () Bool)

(assert (= bs!1085504 (and d!1489917 d!1489853)))

(assert (=> bs!1085504 (= lambda!206714 lambda!206690)))

(declare-fun bs!1085505 () Bool)

(assert (= bs!1085505 (and d!1489917 d!1489847)))

(assert (=> bs!1085505 (not (= lambda!206714 lambda!206669))))

(declare-fun bs!1085506 () Bool)

(assert (= bs!1085506 (and d!1489917 d!1489845)))

(assert (=> bs!1085506 (= lambda!206714 lambda!206659)))

(declare-fun bs!1085507 () Bool)

(assert (= bs!1085507 (and d!1489917 d!1489887)))

(assert (=> bs!1085507 (= lambda!206714 lambda!206701)))

(declare-fun lt!1847915 () ListMap!4945)

(assert (=> d!1489917 (invariantList!1403 (toList!5582 lt!1847915))))

(declare-fun e!2924939 () ListMap!4945)

(assert (=> d!1489917 (= lt!1847915 e!2924939)))

(declare-fun c!801661 () Bool)

(assert (=> d!1489917 (= c!801661 ((_ is Cons!52388) (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))))))

(assert (=> d!1489917 (forall!11307 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023))) lambda!206714)))

(assert (=> d!1489917 (= (extractMap!1872 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))) lt!1847915)))

(declare-fun b!4688418 () Bool)

(assert (=> b!4688418 (= e!2924939 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023))))) (extractMap!1872 (t!359682 (Cons!52388 lt!1847563 (t!359682 (toList!5581 lm!2023)))))))))

(declare-fun b!4688419 () Bool)

(assert (=> b!4688419 (= e!2924939 (ListMap!4946 Nil!52387))))

(assert (= (and d!1489917 c!801661) b!4688418))

(assert (= (and d!1489917 (not c!801661)) b!4688419))

(declare-fun m!5589153 () Bool)

(assert (=> d!1489917 m!5589153))

(declare-fun m!5589155 () Bool)

(assert (=> d!1489917 m!5589155))

(declare-fun m!5589157 () Bool)

(assert (=> b!4688418 m!5589157))

(assert (=> b!4688418 m!5589157))

(declare-fun m!5589159 () Bool)

(assert (=> b!4688418 m!5589159))

(assert (=> b!4688170 d!1489917))

(declare-fun bs!1085508 () Bool)

(declare-fun d!1489919 () Bool)

(assert (= bs!1085508 (and d!1489919 d!1489917)))

(declare-fun lambda!206715 () Int)

(assert (=> bs!1085508 (= lambda!206715 lambda!206714)))

(declare-fun bs!1085509 () Bool)

(assert (= bs!1085509 (and d!1489919 start!474056)))

(assert (=> bs!1085509 (= lambda!206715 lambda!206605)))

(declare-fun bs!1085510 () Bool)

(assert (= bs!1085510 (and d!1489919 d!1489833)))

(assert (=> bs!1085510 (= lambda!206715 lambda!206652)))

(declare-fun bs!1085511 () Bool)

(assert (= bs!1085511 (and d!1489919 d!1489853)))

(assert (=> bs!1085511 (= lambda!206715 lambda!206690)))

(declare-fun bs!1085512 () Bool)

(assert (= bs!1085512 (and d!1489919 d!1489847)))

(assert (=> bs!1085512 (not (= lambda!206715 lambda!206669))))

(declare-fun bs!1085513 () Bool)

(assert (= bs!1085513 (and d!1489919 d!1489845)))

(assert (=> bs!1085513 (= lambda!206715 lambda!206659)))

(declare-fun bs!1085514 () Bool)

(assert (= bs!1085514 (and d!1489919 d!1489887)))

(assert (=> bs!1085514 (= lambda!206715 lambda!206701)))

(declare-fun lt!1847916 () ListMap!4945)

(assert (=> d!1489919 (invariantList!1403 (toList!5582 lt!1847916))))

(declare-fun e!2924940 () ListMap!4945)

(assert (=> d!1489919 (= lt!1847916 e!2924940)))

(declare-fun c!801662 () Bool)

(assert (=> d!1489919 (= c!801662 ((_ is Cons!52388) (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))))))

(assert (=> d!1489919 (forall!11307 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023))) lambda!206715)))

(assert (=> d!1489919 (= (extractMap!1872 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))) lt!1847916)))

(declare-fun b!4688420 () Bool)

(assert (=> b!4688420 (= e!2924940 (addToMapMapFromBucket!1278 (_2!30184 (h!58627 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023))))) (extractMap!1872 (t!359682 (Cons!52388 (tuple2!53781 hash!405 lt!1847578) (t!359682 (toList!5581 lm!2023)))))))))

(declare-fun b!4688421 () Bool)

(assert (=> b!4688421 (= e!2924940 (ListMap!4946 Nil!52387))))

(assert (= (and d!1489919 c!801662) b!4688420))

(assert (= (and d!1489919 (not c!801662)) b!4688421))

(declare-fun m!5589161 () Bool)

(assert (=> d!1489919 m!5589161))

(declare-fun m!5589163 () Bool)

(assert (=> d!1489919 m!5589163))

(declare-fun m!5589165 () Bool)

(assert (=> b!4688420 m!5589165))

(assert (=> b!4688420 m!5589165))

(declare-fun m!5589167 () Bool)

(assert (=> b!4688420 m!5589167))

(assert (=> b!4688170 d!1489919))

(declare-fun d!1489921 () Bool)

(assert (=> d!1489921 (eq!1005 (addToMapMapFromBucket!1278 (Cons!52387 lt!1847576 lt!1847567) lt!1847569) (+!2130 (addToMapMapFromBucket!1278 lt!1847567 lt!1847569) lt!1847576))))

(declare-fun lt!1847917 () Unit!123649)

(assert (=> d!1489921 (= lt!1847917 (choose!32540 lt!1847576 lt!1847567 lt!1847569))))

(assert (=> d!1489921 (noDuplicateKeys!1846 lt!1847567)))

(assert (=> d!1489921 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!254 lt!1847576 lt!1847567 lt!1847569) lt!1847917)))

(declare-fun bs!1085515 () Bool)

(assert (= bs!1085515 d!1489921))

(declare-fun m!5589169 () Bool)

(assert (=> bs!1085515 m!5589169))

(assert (=> bs!1085515 m!5589147))

(assert (=> bs!1085515 m!5588653))

(assert (=> bs!1085515 m!5588643))

(assert (=> bs!1085515 m!5588653))

(assert (=> bs!1085515 m!5588645))

(assert (=> bs!1085515 m!5588643))

(assert (=> bs!1085515 m!5588645))

(assert (=> bs!1085515 m!5588647))

(assert (=> b!4688170 d!1489921))

(declare-fun b!4688430 () Bool)

(declare-fun e!2924945 () List!52511)

(assert (=> b!4688430 (= e!2924945 (t!359681 (t!359681 oldBucket!34)))))

(declare-fun d!1489923 () Bool)

(declare-fun lt!1847920 () List!52511)

(assert (=> d!1489923 (not (containsKey!3033 lt!1847920 key!4653))))

(assert (=> d!1489923 (= lt!1847920 e!2924945)))

(declare-fun c!801668 () Bool)

(assert (=> d!1489923 (= c!801668 (and ((_ is Cons!52387) (t!359681 oldBucket!34)) (= (_1!30183 (h!58626 (t!359681 oldBucket!34))) key!4653)))))

(assert (=> d!1489923 (noDuplicateKeys!1846 (t!359681 oldBucket!34))))

(assert (=> d!1489923 (= (removePairForKey!1441 (t!359681 oldBucket!34) key!4653) lt!1847920)))

(declare-fun b!4688432 () Bool)

(declare-fun e!2924946 () List!52511)

(assert (=> b!4688432 (= e!2924946 (Cons!52387 (h!58626 (t!359681 oldBucket!34)) (removePairForKey!1441 (t!359681 (t!359681 oldBucket!34)) key!4653)))))

(declare-fun b!4688431 () Bool)

(assert (=> b!4688431 (= e!2924945 e!2924946)))

(declare-fun c!801667 () Bool)

(assert (=> b!4688431 (= c!801667 ((_ is Cons!52387) (t!359681 oldBucket!34)))))

(declare-fun b!4688433 () Bool)

(assert (=> b!4688433 (= e!2924946 Nil!52387)))

(assert (= (and d!1489923 c!801668) b!4688430))

(assert (= (and d!1489923 (not c!801668)) b!4688431))

(assert (= (and b!4688431 c!801667) b!4688432))

(assert (= (and b!4688431 (not c!801667)) b!4688433))

(declare-fun m!5589171 () Bool)

(assert (=> d!1489923 m!5589171))

(assert (=> d!1489923 m!5588813))

(declare-fun m!5589173 () Bool)

(assert (=> b!4688432 m!5589173))

(assert (=> b!4688159 d!1489923))

(declare-fun d!1489925 () Bool)

(declare-fun res!1977229 () Bool)

(declare-fun e!2924947 () Bool)

(assert (=> d!1489925 (=> res!1977229 e!2924947)))

(assert (=> d!1489925 (= res!1977229 (not ((_ is Cons!52387) newBucket!218)))))

(assert (=> d!1489925 (= (noDuplicateKeys!1846 newBucket!218) e!2924947)))

(declare-fun b!4688434 () Bool)

(declare-fun e!2924948 () Bool)

(assert (=> b!4688434 (= e!2924947 e!2924948)))

(declare-fun res!1977230 () Bool)

(assert (=> b!4688434 (=> (not res!1977230) (not e!2924948))))

(assert (=> b!4688434 (= res!1977230 (not (containsKey!3033 (t!359681 newBucket!218) (_1!30183 (h!58626 newBucket!218)))))))

(declare-fun b!4688435 () Bool)

(assert (=> b!4688435 (= e!2924948 (noDuplicateKeys!1846 (t!359681 newBucket!218)))))

(assert (= (and d!1489925 (not res!1977229)) b!4688434))

(assert (= (and b!4688434 res!1977230) b!4688435))

(declare-fun m!5589175 () Bool)

(assert (=> b!4688434 m!5589175))

(declare-fun m!5589177 () Bool)

(assert (=> b!4688435 m!5589177))

(assert (=> b!4688168 d!1489925))

(declare-fun d!1489927 () Bool)

(declare-datatypes ((Option!12061 0))(
  ( (None!12060) (Some!12060 (v!46467 List!52511)) )
))
(declare-fun get!17477 (Option!12061) List!52511)

(declare-fun getValueByKey!1769 (List!52512 (_ BitVec 64)) Option!12061)

(assert (=> d!1489927 (= (apply!12329 lm!2023 lt!1847566) (get!17477 (getValueByKey!1769 (toList!5581 lm!2023) lt!1847566)))))

(declare-fun bs!1085516 () Bool)

(assert (= bs!1085516 d!1489927))

(declare-fun m!5589179 () Bool)

(assert (=> bs!1085516 m!5589179))

(assert (=> bs!1085516 m!5589179))

(declare-fun m!5589181 () Bool)

(assert (=> bs!1085516 m!5589181))

(assert (=> b!4688157 d!1489927))

(declare-fun b!4688452 () Bool)

(declare-fun e!2924959 () Option!12057)

(assert (=> b!4688452 (= e!2924959 None!12056)))

(declare-fun b!4688453 () Bool)

(assert (=> b!4688453 (= e!2924959 (getPair!450 (t!359681 lt!1847562) key!4653))))

(declare-fun d!1489929 () Bool)

(declare-fun e!2924960 () Bool)

(assert (=> d!1489929 e!2924960))

(declare-fun res!1977239 () Bool)

(assert (=> d!1489929 (=> res!1977239 e!2924960)))

(declare-fun e!2924961 () Bool)

(assert (=> d!1489929 (= res!1977239 e!2924961)))

(declare-fun res!1977240 () Bool)

(assert (=> d!1489929 (=> (not res!1977240) (not e!2924961))))

(declare-fun lt!1847923 () Option!12057)

(declare-fun isEmpty!29088 (Option!12057) Bool)

(assert (=> d!1489929 (= res!1977240 (isEmpty!29088 lt!1847923))))

(declare-fun e!2924962 () Option!12057)

(assert (=> d!1489929 (= lt!1847923 e!2924962)))

(declare-fun c!801674 () Bool)

(assert (=> d!1489929 (= c!801674 (and ((_ is Cons!52387) lt!1847562) (= (_1!30183 (h!58626 lt!1847562)) key!4653)))))

(assert (=> d!1489929 (noDuplicateKeys!1846 lt!1847562)))

(assert (=> d!1489929 (= (getPair!450 lt!1847562 key!4653) lt!1847923)))

(declare-fun b!4688454 () Bool)

(declare-fun e!2924963 () Bool)

(assert (=> b!4688454 (= e!2924960 e!2924963)))

(declare-fun res!1977242 () Bool)

(assert (=> b!4688454 (=> (not res!1977242) (not e!2924963))))

(assert (=> b!4688454 (= res!1977242 (isDefined!9312 lt!1847923))))

(declare-fun b!4688455 () Bool)

(declare-fun res!1977241 () Bool)

(assert (=> b!4688455 (=> (not res!1977241) (not e!2924963))))

(declare-fun get!17478 (Option!12057) tuple2!53778)

(assert (=> b!4688455 (= res!1977241 (= (_1!30183 (get!17478 lt!1847923)) key!4653))))

(declare-fun b!4688456 () Bool)

(assert (=> b!4688456 (= e!2924962 e!2924959)))

(declare-fun c!801673 () Bool)

(assert (=> b!4688456 (= c!801673 ((_ is Cons!52387) lt!1847562))))

(declare-fun b!4688457 () Bool)

(assert (=> b!4688457 (= e!2924963 (contains!15577 lt!1847562 (get!17478 lt!1847923)))))

(declare-fun b!4688458 () Bool)

(assert (=> b!4688458 (= e!2924961 (not (containsKey!3033 lt!1847562 key!4653)))))

(declare-fun b!4688459 () Bool)

(assert (=> b!4688459 (= e!2924962 (Some!12056 (h!58626 lt!1847562)))))

(assert (= (and d!1489929 c!801674) b!4688459))

(assert (= (and d!1489929 (not c!801674)) b!4688456))

(assert (= (and b!4688456 c!801673) b!4688453))

(assert (= (and b!4688456 (not c!801673)) b!4688452))

(assert (= (and d!1489929 res!1977240) b!4688458))

(assert (= (and d!1489929 (not res!1977239)) b!4688454))

(assert (= (and b!4688454 res!1977242) b!4688455))

(assert (= (and b!4688455 res!1977241) b!4688457))

(declare-fun m!5589183 () Bool)

(assert (=> d!1489929 m!5589183))

(declare-fun m!5589185 () Bool)

(assert (=> d!1489929 m!5589185))

(declare-fun m!5589187 () Bool)

(assert (=> b!4688454 m!5589187))

(declare-fun m!5589189 () Bool)

(assert (=> b!4688458 m!5589189))

(declare-fun m!5589191 () Bool)

(assert (=> b!4688453 m!5589191))

(declare-fun m!5589193 () Bool)

(assert (=> b!4688457 m!5589193))

(assert (=> b!4688457 m!5589193))

(declare-fun m!5589195 () Bool)

(assert (=> b!4688457 m!5589195))

(assert (=> b!4688455 m!5589193))

(assert (=> b!4688157 d!1489929))

(declare-fun d!1489931 () Bool)

(assert (=> d!1489931 (= (isDefined!9312 (getPair!450 lt!1847562 key!4653)) (not (isEmpty!29088 (getPair!450 lt!1847562 key!4653))))))

(declare-fun bs!1085517 () Bool)

(assert (= bs!1085517 d!1489931))

(assert (=> bs!1085517 m!5588673))

(declare-fun m!5589197 () Bool)

(assert (=> bs!1085517 m!5589197))

(assert (=> b!4688157 d!1489931))

(declare-fun bs!1085518 () Bool)

(declare-fun d!1489933 () Bool)

(assert (= bs!1085518 (and d!1489933 d!1489917)))

(declare-fun lambda!206722 () Int)

(assert (=> bs!1085518 (= lambda!206722 lambda!206714)))

(declare-fun bs!1085519 () Bool)

(assert (= bs!1085519 (and d!1489933 start!474056)))

(assert (=> bs!1085519 (= lambda!206722 lambda!206605)))

(declare-fun bs!1085520 () Bool)

(assert (= bs!1085520 (and d!1489933 d!1489833)))

(assert (=> bs!1085520 (= lambda!206722 lambda!206652)))

(declare-fun bs!1085521 () Bool)

(assert (= bs!1085521 (and d!1489933 d!1489853)))

(assert (=> bs!1085521 (= lambda!206722 lambda!206690)))

(declare-fun bs!1085522 () Bool)

(assert (= bs!1085522 (and d!1489933 d!1489847)))

(assert (=> bs!1085522 (not (= lambda!206722 lambda!206669))))

(declare-fun bs!1085523 () Bool)

(assert (= bs!1085523 (and d!1489933 d!1489919)))

(assert (=> bs!1085523 (= lambda!206722 lambda!206715)))

(declare-fun bs!1085524 () Bool)

(assert (= bs!1085524 (and d!1489933 d!1489845)))

(assert (=> bs!1085524 (= lambda!206722 lambda!206659)))

(declare-fun bs!1085525 () Bool)

(assert (= bs!1085525 (and d!1489933 d!1489887)))

(assert (=> bs!1085525 (= lambda!206722 lambda!206701)))

(assert (=> d!1489933 (contains!15573 lm!2023 (hash!4051 hashF!1323 key!4653))))

(declare-fun lt!1847932 () Unit!123649)

(declare-fun choose!32544 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> d!1489933 (= lt!1847932 (choose!32544 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489933 (forall!11307 (toList!5581 lm!2023) lambda!206722)))

(assert (=> d!1489933 (= (lemmaInGenMapThenLongMapContainsHash!656 lm!2023 key!4653 hashF!1323) lt!1847932)))

(declare-fun bs!1085526 () Bool)

(assert (= bs!1085526 d!1489933))

(assert (=> bs!1085526 m!5588665))

(assert (=> bs!1085526 m!5588665))

(declare-fun m!5589199 () Bool)

(assert (=> bs!1085526 m!5589199))

(declare-fun m!5589201 () Bool)

(assert (=> bs!1085526 m!5589201))

(declare-fun m!5589203 () Bool)

(assert (=> bs!1085526 m!5589203))

(assert (=> b!4688157 d!1489933))

(declare-fun d!1489935 () Bool)

(assert (=> d!1489935 (contains!15572 (toList!5581 lm!2023) (tuple2!53781 lt!1847566 lt!1847562))))

(declare-fun lt!1847945 () Unit!123649)

(declare-fun choose!32545 (ListLongMap!4111 (_ BitVec 64) List!52511) Unit!123649)

(assert (=> d!1489935 (= lt!1847945 (choose!32545 lm!2023 lt!1847566 lt!1847562))))

(assert (=> d!1489935 (contains!15573 lm!2023 lt!1847566)))

(assert (=> d!1489935 (= (lemmaGetValueImpliesTupleContained!255 lm!2023 lt!1847566 lt!1847562) lt!1847945)))

(declare-fun bs!1085527 () Bool)

(assert (= bs!1085527 d!1489935))

(declare-fun m!5589205 () Bool)

(assert (=> bs!1085527 m!5589205))

(declare-fun m!5589207 () Bool)

(assert (=> bs!1085527 m!5589207))

(assert (=> bs!1085527 m!5588689))

(assert (=> b!4688157 d!1489935))

(declare-fun bs!1085582 () Bool)

(declare-fun d!1489937 () Bool)

(assert (= bs!1085582 (and d!1489937 d!1489917)))

(declare-fun lambda!206743 () Int)

(assert (=> bs!1085582 (= lambda!206743 lambda!206714)))

(declare-fun bs!1085583 () Bool)

(assert (= bs!1085583 (and d!1489937 start!474056)))

(assert (=> bs!1085583 (= lambda!206743 lambda!206605)))

(declare-fun bs!1085584 () Bool)

(assert (= bs!1085584 (and d!1489937 d!1489833)))

(assert (=> bs!1085584 (= lambda!206743 lambda!206652)))

(declare-fun bs!1085585 () Bool)

(assert (= bs!1085585 (and d!1489937 d!1489853)))

(assert (=> bs!1085585 (= lambda!206743 lambda!206690)))

(declare-fun bs!1085586 () Bool)

(assert (= bs!1085586 (and d!1489937 d!1489847)))

(assert (=> bs!1085586 (not (= lambda!206743 lambda!206669))))

(declare-fun bs!1085587 () Bool)

(assert (= bs!1085587 (and d!1489937 d!1489919)))

(assert (=> bs!1085587 (= lambda!206743 lambda!206715)))

(declare-fun bs!1085588 () Bool)

(assert (= bs!1085588 (and d!1489937 d!1489933)))

(assert (=> bs!1085588 (= lambda!206743 lambda!206722)))

(declare-fun bs!1085589 () Bool)

(assert (= bs!1085589 (and d!1489937 d!1489845)))

(assert (=> bs!1085589 (= lambda!206743 lambda!206659)))

(declare-fun bs!1085590 () Bool)

(assert (= bs!1085590 (and d!1489937 d!1489887)))

(assert (=> bs!1085590 (= lambda!206743 lambda!206701)))

(declare-fun e!2924987 () Bool)

(assert (=> d!1489937 e!2924987))

(declare-fun res!1977280 () Bool)

(assert (=> d!1489937 (=> (not res!1977280) (not e!2924987))))

(assert (=> d!1489937 (= res!1977280 (forall!11307 (toList!5581 lm!2023) lambda!206743))))

(declare-fun lt!1848029 () Unit!123649)

(declare-fun choose!32546 (ListLongMap!4111 K!13765 Hashable!6215) Unit!123649)

(assert (=> d!1489937 (= lt!1848029 (choose!32546 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489937 (forall!11307 (toList!5581 lm!2023) lambda!206743)))

(assert (=> d!1489937 (= (lemmaInGenMapThenGetPairDefined!246 lm!2023 key!4653 hashF!1323) lt!1848029)))

(declare-fun b!4688503 () Bool)

(assert (=> b!4688503 (= e!2924987 (isDefined!9312 (getPair!450 (apply!12329 lm!2023 (hash!4051 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1848032 () Unit!123649)

(assert (=> b!4688503 (= lt!1848032 (forallContained!3414 (toList!5581 lm!2023) lambda!206743 (tuple2!53781 (hash!4051 hashF!1323 key!4653) (apply!12329 lm!2023 (hash!4051 hashF!1323 key!4653)))))))

(declare-fun lt!1848031 () Unit!123649)

(declare-fun lt!1848027 () Unit!123649)

(assert (=> b!4688503 (= lt!1848031 lt!1848027)))

(declare-fun lt!1848033 () (_ BitVec 64))

(declare-fun lt!1848028 () List!52511)

(assert (=> b!4688503 (contains!15572 (toList!5581 lm!2023) (tuple2!53781 lt!1848033 lt!1848028))))

(assert (=> b!4688503 (= lt!1848027 (lemmaGetValueImpliesTupleContained!255 lm!2023 lt!1848033 lt!1848028))))

(declare-fun e!2924988 () Bool)

(assert (=> b!4688503 e!2924988))

(declare-fun res!1977279 () Bool)

(assert (=> b!4688503 (=> (not res!1977279) (not e!2924988))))

(assert (=> b!4688503 (= res!1977279 (contains!15573 lm!2023 lt!1848033))))

(assert (=> b!4688503 (= lt!1848028 (apply!12329 lm!2023 (hash!4051 hashF!1323 key!4653)))))

(assert (=> b!4688503 (= lt!1848033 (hash!4051 hashF!1323 key!4653))))

(declare-fun lt!1848034 () Unit!123649)

(declare-fun lt!1848030 () Unit!123649)

(assert (=> b!4688503 (= lt!1848034 lt!1848030)))

(assert (=> b!4688503 (contains!15573 lm!2023 (hash!4051 hashF!1323 key!4653))))

(assert (=> b!4688503 (= lt!1848030 (lemmaInGenMapThenLongMapContainsHash!656 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4688501 () Bool)

(declare-fun res!1977282 () Bool)

(assert (=> b!4688501 (=> (not res!1977282) (not e!2924987))))

(assert (=> b!4688501 (= res!1977282 (allKeysSameHashInMap!1760 lm!2023 hashF!1323))))

(declare-fun b!4688502 () Bool)

(declare-fun res!1977281 () Bool)

(assert (=> b!4688502 (=> (not res!1977281) (not e!2924987))))

(assert (=> b!4688502 (= res!1977281 (contains!15574 (extractMap!1872 (toList!5581 lm!2023)) key!4653))))

(declare-fun b!4688504 () Bool)

(assert (=> b!4688504 (= e!2924988 (= (getValueByKey!1769 (toList!5581 lm!2023) lt!1848033) (Some!12060 lt!1848028)))))

(assert (= (and d!1489937 res!1977280) b!4688501))

(assert (= (and b!4688501 res!1977282) b!4688502))

(assert (= (and b!4688502 res!1977281) b!4688503))

(assert (= (and b!4688503 res!1977279) b!4688504))

(assert (=> b!4688502 m!5588623))

(assert (=> b!4688502 m!5588623))

(declare-fun m!5589295 () Bool)

(assert (=> b!4688502 m!5589295))

(declare-fun m!5589297 () Bool)

(assert (=> b!4688503 m!5589297))

(declare-fun m!5589299 () Bool)

(assert (=> b!4688503 m!5589299))

(declare-fun m!5589301 () Bool)

(assert (=> b!4688503 m!5589301))

(declare-fun m!5589303 () Bool)

(assert (=> b!4688503 m!5589303))

(declare-fun m!5589305 () Bool)

(assert (=> b!4688503 m!5589305))

(assert (=> b!4688503 m!5588665))

(assert (=> b!4688503 m!5588669))

(assert (=> b!4688503 m!5588665))

(declare-fun m!5589307 () Bool)

(assert (=> b!4688503 m!5589307))

(assert (=> b!4688503 m!5589307))

(assert (=> b!4688503 m!5589303))

(assert (=> b!4688503 m!5588665))

(assert (=> b!4688503 m!5589199))

(declare-fun m!5589309 () Bool)

(assert (=> b!4688503 m!5589309))

(declare-fun m!5589311 () Bool)

(assert (=> d!1489937 m!5589311))

(declare-fun m!5589313 () Bool)

(assert (=> d!1489937 m!5589313))

(assert (=> d!1489937 m!5589311))

(assert (=> b!4688501 m!5588717))

(declare-fun m!5589315 () Bool)

(assert (=> b!4688504 m!5589315))

(assert (=> b!4688157 d!1489937))

(declare-fun d!1489959 () Bool)

(assert (=> d!1489959 (containsKey!3033 oldBucket!34 key!4653)))

(declare-fun lt!1848037 () Unit!123649)

(declare-fun choose!32547 (List!52511 K!13765 Hashable!6215) Unit!123649)

(assert (=> d!1489959 (= lt!1848037 (choose!32547 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489959 (noDuplicateKeys!1846 oldBucket!34)))

(assert (=> d!1489959 (= (lemmaGetPairDefinedThenContainsKey!198 oldBucket!34 key!4653 hashF!1323) lt!1848037)))

(declare-fun bs!1085601 () Bool)

(assert (= bs!1085601 d!1489959))

(assert (=> bs!1085601 m!5588687))

(declare-fun m!5589317 () Bool)

(assert (=> bs!1085601 m!5589317))

(assert (=> bs!1085601 m!5588711))

(assert (=> b!4688157 d!1489959))

(declare-fun d!1489961 () Bool)

(declare-fun res!1977289 () Bool)

(declare-fun e!2924995 () Bool)

(assert (=> d!1489961 (=> res!1977289 e!2924995)))

(assert (=> d!1489961 (= res!1977289 (and ((_ is Cons!52387) (t!359681 oldBucket!34)) (= (_1!30183 (h!58626 (t!359681 oldBucket!34))) key!4653)))))

(assert (=> d!1489961 (= (containsKey!3033 (t!359681 oldBucket!34) key!4653) e!2924995)))

(declare-fun b!4688513 () Bool)

(declare-fun e!2924996 () Bool)

(assert (=> b!4688513 (= e!2924995 e!2924996)))

(declare-fun res!1977290 () Bool)

(assert (=> b!4688513 (=> (not res!1977290) (not e!2924996))))

(assert (=> b!4688513 (= res!1977290 ((_ is Cons!52387) (t!359681 oldBucket!34)))))

(declare-fun b!4688514 () Bool)

(assert (=> b!4688514 (= e!2924996 (containsKey!3033 (t!359681 (t!359681 oldBucket!34)) key!4653))))

(assert (= (and d!1489961 (not res!1977289)) b!4688513))

(assert (= (and b!4688513 res!1977290) b!4688514))

(declare-fun m!5589363 () Bool)

(assert (=> b!4688514 m!5589363))

(assert (=> b!4688157 d!1489961))

(declare-fun d!1489969 () Bool)

(declare-fun res!1977291 () Bool)

(declare-fun e!2924997 () Bool)

(assert (=> d!1489969 (=> res!1977291 e!2924997)))

(assert (=> d!1489969 (= res!1977291 (and ((_ is Cons!52387) oldBucket!34) (= (_1!30183 (h!58626 oldBucket!34)) key!4653)))))

(assert (=> d!1489969 (= (containsKey!3033 oldBucket!34 key!4653) e!2924997)))

(declare-fun b!4688515 () Bool)

(declare-fun e!2924998 () Bool)

(assert (=> b!4688515 (= e!2924997 e!2924998)))

(declare-fun res!1977292 () Bool)

(assert (=> b!4688515 (=> (not res!1977292) (not e!2924998))))

(assert (=> b!4688515 (= res!1977292 ((_ is Cons!52387) oldBucket!34))))

(declare-fun b!4688516 () Bool)

(assert (=> b!4688516 (= e!2924998 (containsKey!3033 (t!359681 oldBucket!34) key!4653))))

(assert (= (and d!1489969 (not res!1977291)) b!4688515))

(assert (= (and b!4688515 res!1977292) b!4688516))

(assert (=> b!4688516 m!5588677))

(assert (=> b!4688157 d!1489969))

(declare-fun d!1489971 () Bool)

(declare-fun dynLambda!21707 (Int tuple2!53780) Bool)

(assert (=> d!1489971 (dynLambda!21707 lambda!206605 lt!1847574)))

(declare-fun lt!1848058 () Unit!123649)

(declare-fun choose!32548 (List!52512 Int tuple2!53780) Unit!123649)

(assert (=> d!1489971 (= lt!1848058 (choose!32548 (toList!5581 lm!2023) lambda!206605 lt!1847574))))

(declare-fun e!2925009 () Bool)

(assert (=> d!1489971 e!2925009))

(declare-fun res!1977300 () Bool)

(assert (=> d!1489971 (=> (not res!1977300) (not e!2925009))))

(assert (=> d!1489971 (= res!1977300 (forall!11307 (toList!5581 lm!2023) lambda!206605))))

(assert (=> d!1489971 (= (forallContained!3414 (toList!5581 lm!2023) lambda!206605 lt!1847574) lt!1848058)))

(declare-fun b!4688532 () Bool)

(assert (=> b!4688532 (= e!2925009 (contains!15572 (toList!5581 lm!2023) lt!1847574))))

(assert (= (and d!1489971 res!1977300) b!4688532))

(declare-fun b_lambda!176929 () Bool)

(assert (=> (not b_lambda!176929) (not d!1489971)))

(declare-fun m!5589393 () Bool)

(assert (=> d!1489971 m!5589393))

(declare-fun m!5589395 () Bool)

(assert (=> d!1489971 m!5589395))

(assert (=> d!1489971 m!5588701))

(assert (=> b!4688532 m!5588671))

(assert (=> b!4688157 d!1489971))

(declare-fun d!1489981 () Bool)

(declare-fun lt!1848082 () Bool)

(declare-fun content!9154 (List!52512) (InoxSet tuple2!53780))

(assert (=> d!1489981 (= lt!1848082 (select (content!9154 (toList!5581 lm!2023)) lt!1847574))))

(declare-fun e!2925018 () Bool)

(assert (=> d!1489981 (= lt!1848082 e!2925018)))

(declare-fun res!1977309 () Bool)

(assert (=> d!1489981 (=> (not res!1977309) (not e!2925018))))

(assert (=> d!1489981 (= res!1977309 ((_ is Cons!52388) (toList!5581 lm!2023)))))

(assert (=> d!1489981 (= (contains!15572 (toList!5581 lm!2023) lt!1847574) lt!1848082)))

(declare-fun b!4688542 () Bool)

(declare-fun e!2925017 () Bool)

(assert (=> b!4688542 (= e!2925018 e!2925017)))

(declare-fun res!1977308 () Bool)

(assert (=> b!4688542 (=> res!1977308 e!2925017)))

(assert (=> b!4688542 (= res!1977308 (= (h!58627 (toList!5581 lm!2023)) lt!1847574))))

(declare-fun b!4688543 () Bool)

(assert (=> b!4688543 (= e!2925017 (contains!15572 (t!359682 (toList!5581 lm!2023)) lt!1847574))))

(assert (= (and d!1489981 res!1977309) b!4688542))

(assert (= (and b!4688542 (not res!1977308)) b!4688543))

(declare-fun m!5589417 () Bool)

(assert (=> d!1489981 m!5589417))

(declare-fun m!5589419 () Bool)

(assert (=> d!1489981 m!5589419))

(declare-fun m!5589421 () Bool)

(assert (=> b!4688543 m!5589421))

(assert (=> b!4688157 d!1489981))

(declare-fun d!1489985 () Bool)

(declare-fun e!2925024 () Bool)

(assert (=> d!1489985 e!2925024))

(declare-fun res!1977312 () Bool)

(assert (=> d!1489985 (=> res!1977312 e!2925024)))

(declare-fun lt!1848092 () Bool)

(assert (=> d!1489985 (= res!1977312 (not lt!1848092))))

(declare-fun lt!1848094 () Bool)

(assert (=> d!1489985 (= lt!1848092 lt!1848094)))

(declare-fun lt!1848091 () Unit!123649)

(declare-fun e!2925023 () Unit!123649)

(assert (=> d!1489985 (= lt!1848091 e!2925023)))

(declare-fun c!801685 () Bool)

(assert (=> d!1489985 (= c!801685 lt!1848094)))

(declare-fun containsKey!3037 (List!52512 (_ BitVec 64)) Bool)

(assert (=> d!1489985 (= lt!1848094 (containsKey!3037 (toList!5581 lm!2023) lt!1847566))))

(assert (=> d!1489985 (= (contains!15573 lm!2023 lt!1847566) lt!1848092)))

(declare-fun b!4688550 () Bool)

(declare-fun lt!1848093 () Unit!123649)

(assert (=> b!4688550 (= e!2925023 lt!1848093)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1661 (List!52512 (_ BitVec 64)) Unit!123649)

(assert (=> b!4688550 (= lt!1848093 (lemmaContainsKeyImpliesGetValueByKeyDefined!1661 (toList!5581 lm!2023) lt!1847566))))

(declare-fun isDefined!9316 (Option!12061) Bool)

(assert (=> b!4688550 (isDefined!9316 (getValueByKey!1769 (toList!5581 lm!2023) lt!1847566))))

(declare-fun b!4688551 () Bool)

(declare-fun Unit!123759 () Unit!123649)

(assert (=> b!4688551 (= e!2925023 Unit!123759)))

(declare-fun b!4688552 () Bool)

(assert (=> b!4688552 (= e!2925024 (isDefined!9316 (getValueByKey!1769 (toList!5581 lm!2023) lt!1847566)))))

(assert (= (and d!1489985 c!801685) b!4688550))

(assert (= (and d!1489985 (not c!801685)) b!4688551))

(assert (= (and d!1489985 (not res!1977312)) b!4688552))

(declare-fun m!5589455 () Bool)

(assert (=> d!1489985 m!5589455))

(declare-fun m!5589457 () Bool)

(assert (=> b!4688550 m!5589457))

(assert (=> b!4688550 m!5589179))

(assert (=> b!4688550 m!5589179))

(declare-fun m!5589459 () Bool)

(assert (=> b!4688550 m!5589459))

(assert (=> b!4688552 m!5589179))

(assert (=> b!4688552 m!5589179))

(assert (=> b!4688552 m!5589459))

(assert (=> b!4688157 d!1489985))

(declare-fun b!4688553 () Bool)

(declare-fun e!2925025 () List!52511)

(assert (=> b!4688553 (= e!2925025 (t!359681 lt!1847578))))

(declare-fun d!1489989 () Bool)

(declare-fun lt!1848095 () List!52511)

(assert (=> d!1489989 (not (containsKey!3033 lt!1848095 key!4653))))

(assert (=> d!1489989 (= lt!1848095 e!2925025)))

(declare-fun c!801687 () Bool)

(assert (=> d!1489989 (= c!801687 (and ((_ is Cons!52387) lt!1847578) (= (_1!30183 (h!58626 lt!1847578)) key!4653)))))

(assert (=> d!1489989 (noDuplicateKeys!1846 lt!1847578)))

(assert (=> d!1489989 (= (removePairForKey!1441 lt!1847578 key!4653) lt!1848095)))

(declare-fun b!4688555 () Bool)

(declare-fun e!2925026 () List!52511)

(assert (=> b!4688555 (= e!2925026 (Cons!52387 (h!58626 lt!1847578) (removePairForKey!1441 (t!359681 lt!1847578) key!4653)))))

(declare-fun b!4688554 () Bool)

(assert (=> b!4688554 (= e!2925025 e!2925026)))

(declare-fun c!801686 () Bool)

(assert (=> b!4688554 (= c!801686 ((_ is Cons!52387) lt!1847578))))

(declare-fun b!4688556 () Bool)

(assert (=> b!4688556 (= e!2925026 Nil!52387)))

(assert (= (and d!1489989 c!801687) b!4688553))

(assert (= (and d!1489989 (not c!801687)) b!4688554))

(assert (= (and b!4688554 c!801686) b!4688555))

(assert (= (and b!4688554 (not c!801686)) b!4688556))

(declare-fun m!5589461 () Bool)

(assert (=> d!1489989 m!5589461))

(assert (=> d!1489989 m!5588981))

(declare-fun m!5589463 () Bool)

(assert (=> b!4688555 m!5589463))

(assert (=> b!4688167 d!1489989))

(declare-fun d!1489991 () Bool)

(assert (=> d!1489991 (= (tail!8569 newBucket!218) (t!359681 newBucket!218))))

(assert (=> b!4688167 d!1489991))

(declare-fun d!1489993 () Bool)

(assert (=> d!1489993 (= (tail!8569 oldBucket!34) (t!359681 oldBucket!34))))

(assert (=> b!4688167 d!1489993))

(declare-fun b!4688557 () Bool)

(declare-fun e!2925027 () List!52511)

(assert (=> b!4688557 (= e!2925027 (t!359681 oldBucket!34))))

(declare-fun d!1489995 () Bool)

(declare-fun lt!1848096 () List!52511)

(assert (=> d!1489995 (not (containsKey!3033 lt!1848096 key!4653))))

(assert (=> d!1489995 (= lt!1848096 e!2925027)))

(declare-fun c!801689 () Bool)

(assert (=> d!1489995 (= c!801689 (and ((_ is Cons!52387) oldBucket!34) (= (_1!30183 (h!58626 oldBucket!34)) key!4653)))))

(assert (=> d!1489995 (noDuplicateKeys!1846 oldBucket!34)))

(assert (=> d!1489995 (= (removePairForKey!1441 oldBucket!34 key!4653) lt!1848096)))

(declare-fun b!4688559 () Bool)

(declare-fun e!2925028 () List!52511)

(assert (=> b!4688559 (= e!2925028 (Cons!52387 (h!58626 oldBucket!34) (removePairForKey!1441 (t!359681 oldBucket!34) key!4653)))))

(declare-fun b!4688558 () Bool)

(assert (=> b!4688558 (= e!2925027 e!2925028)))

(declare-fun c!801688 () Bool)

(assert (=> b!4688558 (= c!801688 ((_ is Cons!52387) oldBucket!34))))

(declare-fun b!4688560 () Bool)

(assert (=> b!4688560 (= e!2925028 Nil!52387)))

(assert (= (and d!1489995 c!801689) b!4688557))

(assert (= (and d!1489995 (not c!801689)) b!4688558))

(assert (= (and b!4688558 c!801688) b!4688559))

(assert (= (and b!4688558 (not c!801688)) b!4688560))

(declare-fun m!5589465 () Bool)

(assert (=> d!1489995 m!5589465))

(assert (=> d!1489995 m!5588711))

(assert (=> b!4688559 m!5588697))

(assert (=> b!4688156 d!1489995))

(declare-fun d!1489997 () Bool)

(declare-fun res!1977317 () Bool)

(declare-fun e!2925033 () Bool)

(assert (=> d!1489997 (=> res!1977317 e!2925033)))

(assert (=> d!1489997 (= res!1977317 ((_ is Nil!52388) (toList!5581 lm!2023)))))

(assert (=> d!1489997 (= (forall!11307 (toList!5581 lm!2023) lambda!206605) e!2925033)))

(declare-fun b!4688565 () Bool)

(declare-fun e!2925034 () Bool)

(assert (=> b!4688565 (= e!2925033 e!2925034)))

(declare-fun res!1977318 () Bool)

(assert (=> b!4688565 (=> (not res!1977318) (not e!2925034))))

(assert (=> b!4688565 (= res!1977318 (dynLambda!21707 lambda!206605 (h!58627 (toList!5581 lm!2023))))))

(declare-fun b!4688566 () Bool)

(assert (=> b!4688566 (= e!2925034 (forall!11307 (t!359682 (toList!5581 lm!2023)) lambda!206605))))

(assert (= (and d!1489997 (not res!1977317)) b!4688565))

(assert (= (and b!4688565 res!1977318) b!4688566))

(declare-fun b_lambda!176931 () Bool)

(assert (=> (not b_lambda!176931) (not b!4688565)))

(declare-fun m!5589467 () Bool)

(assert (=> b!4688565 m!5589467))

(declare-fun m!5589469 () Bool)

(assert (=> b!4688566 m!5589469))

(assert (=> start!474056 d!1489997))

(declare-fun d!1489999 () Bool)

(declare-fun isStrictlySorted!644 (List!52512) Bool)

(assert (=> d!1489999 (= (inv!67639 lm!2023) (isStrictlySorted!644 (toList!5581 lm!2023)))))

(declare-fun bs!1085653 () Bool)

(assert (= bs!1085653 d!1489999))

(declare-fun m!5589471 () Bool)

(assert (=> bs!1085653 m!5589471))

(assert (=> start!474056 d!1489999))

(declare-fun d!1490001 () Bool)

(assert (=> d!1490001 (= (head!9955 (toList!5581 lm!2023)) (h!58627 (toList!5581 lm!2023)))))

(assert (=> b!4688166 d!1490001))

(declare-fun b!4688571 () Bool)

(declare-fun tp!1345788 () Bool)

(declare-fun e!2925037 () Bool)

(assert (=> b!4688571 (= e!2925037 (and tp_is_empty!30677 tp_is_empty!30679 tp!1345788))))

(assert (=> b!4688165 (= tp!1345785 e!2925037)))

(assert (= (and b!4688165 ((_ is Cons!52387) (t!359681 newBucket!218))) b!4688571))

(declare-fun b!4688576 () Bool)

(declare-fun e!2925040 () Bool)

(declare-fun tp!1345793 () Bool)

(declare-fun tp!1345794 () Bool)

(assert (=> b!4688576 (= e!2925040 (and tp!1345793 tp!1345794))))

(assert (=> b!4688162 (= tp!1345784 e!2925040)))

(assert (= (and b!4688162 ((_ is Cons!52388) (toList!5581 lm!2023))) b!4688576))

(declare-fun e!2925041 () Bool)

(declare-fun tp!1345795 () Bool)

(declare-fun b!4688577 () Bool)

(assert (=> b!4688577 (= e!2925041 (and tp_is_empty!30677 tp_is_empty!30679 tp!1345795))))

(assert (=> b!4688172 (= tp!1345783 e!2925041)))

(assert (= (and b!4688172 ((_ is Cons!52387) (t!359681 oldBucket!34))) b!4688577))

(declare-fun b_lambda!176933 () Bool)

(assert (= b_lambda!176929 (or start!474056 b_lambda!176933)))

(declare-fun bs!1085654 () Bool)

(declare-fun d!1490003 () Bool)

(assert (= bs!1085654 (and d!1490003 start!474056)))

(assert (=> bs!1085654 (= (dynLambda!21707 lambda!206605 lt!1847574) (noDuplicateKeys!1846 (_2!30184 lt!1847574)))))

(declare-fun m!5589473 () Bool)

(assert (=> bs!1085654 m!5589473))

(assert (=> d!1489971 d!1490003))

(declare-fun b_lambda!176935 () Bool)

(assert (= b_lambda!176931 (or start!474056 b_lambda!176935)))

(declare-fun bs!1085655 () Bool)

(declare-fun d!1490005 () Bool)

(assert (= bs!1085655 (and d!1490005 start!474056)))

(assert (=> bs!1085655 (= (dynLambda!21707 lambda!206605 (h!58627 (toList!5581 lm!2023))) (noDuplicateKeys!1846 (_2!30184 (h!58627 (toList!5581 lm!2023)))))))

(assert (=> bs!1085655 m!5588789))

(assert (=> b!4688565 d!1490005))

(check-sat (not b!4688420) (not b!4688266) (not b!4688362) (not b!4688504) (not b!4688516) (not b!4688292) (not b!4688365) (not b!4688307) (not b!4688314) (not d!1489919) (not d!1489843) (not d!1489999) (not d!1489813) (not d!1489989) (not d!1489835) (not bm!327627) (not bm!327636) (not b!4688435) (not b!4688298) (not b!4688303) (not b!4688432) (not b!4688555) (not d!1489935) (not d!1489933) (not d!1489981) (not bm!327634) (not b!4688297) (not d!1489905) (not d!1489887) (not d!1489849) (not b!4688338) (not b!4688351) (not b!4688514) (not b!4688543) (not b!4688503) (not d!1489885) (not b!4688576) (not d!1489837) (not b!4688252) (not b!4688458) (not b!4688455) (not b!4688453) (not b!4688384) (not bm!327614) (not b!4688454) (not b!4688315) (not bm!327620) (not b!4688380) (not bm!327635) (not b!4688559) (not bm!327637) (not b!4688305) (not d!1489845) (not b!4688386) (not d!1489897) (not d!1489971) (not d!1489833) (not b!4688457) (not b!4688416) (not b!4688306) (not d!1489847) (not b!4688417) (not b!4688339) (not d!1489853) (not d!1489931) (not b!4688434) tp_is_empty!30679 (not b!4688321) (not b!4688311) (not b_lambda!176935) (not b!4688317) (not d!1489927) (not d!1489839) (not bs!1085655) (not b_lambda!176933) (not d!1489867) (not b!4688249) (not d!1489917) (not d!1489915) (not b!4688291) (not d!1489959) (not d!1489857) (not b!4688294) (not b!4688388) (not b!4688318) (not b!4688253) (not d!1489869) (not b!4688350) (not b!4688290) (not d!1489859) (not b!4688381) (not d!1489907) (not b!4688571) (not b!4688267) (not b!4688312) (not bm!327613) (not b!4688418) (not b!4688566) (not bm!327638) (not bm!327633) (not d!1489995) (not b!4688413) (not b!4688295) (not d!1489929) (not b!4688415) (not b!4688364) (not b!4688366) (not d!1489921) (not bs!1085654) (not b!4688251) (not bm!327632) (not d!1489937) (not bm!327619) (not bm!327618) (not d!1489815) (not b!4688310) (not bm!327639) (not b!4688299) (not d!1489985) (not b!4688501) (not d!1489911) (not bm!327617) (not b!4688502) tp_is_empty!30677 (not bm!327612) (not b!4688577) (not d!1489923) (not b!4688387) (not b!4688532) (not bm!327631) (not b!4688260) (not b!4688552) (not d!1489851) (not b!4688550))
(check-sat)
