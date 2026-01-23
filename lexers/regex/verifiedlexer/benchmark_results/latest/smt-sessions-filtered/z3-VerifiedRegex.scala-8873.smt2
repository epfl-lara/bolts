; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!474176 () Bool)

(assert start!474176)

(declare-fun b!4688696 () Bool)

(declare-fun e!2925112 () Bool)

(declare-fun e!2925118 () Bool)

(assert (=> b!4688696 (= e!2925112 e!2925118)))

(declare-fun res!1977413 () Bool)

(assert (=> b!4688696 (=> (not res!1977413) (not e!2925118))))

(declare-datatypes ((K!13770 0))(
  ( (K!13771 (val!19287 Int)) )
))
(declare-datatypes ((V!14016 0))(
  ( (V!14017 (val!19288 Int)) )
))
(declare-datatypes ((tuple2!53786 0))(
  ( (tuple2!53787 (_1!30187 K!13770) (_2!30187 V!14016)) )
))
(declare-datatypes ((List!52517 0))(
  ( (Nil!52393) (Cons!52393 (h!58634 tuple2!53786) (t!359689 List!52517)) )
))
(declare-datatypes ((tuple2!53788 0))(
  ( (tuple2!53789 (_1!30188 (_ BitVec 64)) (_2!30188 List!52517)) )
))
(declare-datatypes ((List!52518 0))(
  ( (Nil!52394) (Cons!52394 (h!58635 tuple2!53788) (t!359690 List!52518)) )
))
(declare-datatypes ((ListLongMap!4115 0))(
  ( (ListLongMap!4116 (toList!5585 List!52518)) )
))
(declare-fun lm!2023 () ListLongMap!4115)

(declare-fun lt!1848225 () tuple2!53788)

(declare-fun head!9959 (List!52518) tuple2!53788)

(assert (=> b!4688696 (= res!1977413 (= (head!9959 (toList!5585 lm!2023)) lt!1848225))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52517)

(assert (=> b!4688696 (= lt!1848225 (tuple2!53789 hash!405 oldBucket!34))))

(declare-fun b!4688697 () Bool)

(declare-fun e!2925110 () Bool)

(declare-fun e!2925114 () Bool)

(assert (=> b!4688697 (= e!2925110 e!2925114)))

(declare-fun res!1977423 () Bool)

(assert (=> b!4688697 (=> res!1977423 e!2925114)))

(declare-fun key!4653 () K!13770)

(declare-fun containsKey!3039 (List!52517 K!13770) Bool)

(assert (=> b!4688697 (= res!1977423 (not (containsKey!3039 (t!359689 oldBucket!34) key!4653)))))

(assert (=> b!4688697 (containsKey!3039 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123773 0))(
  ( (Unit!123774) )
))
(declare-fun lt!1848230 () Unit!123773)

(declare-datatypes ((Hashable!6217 0))(
  ( (HashableExt!6216 (__x!31920 Int)) )
))
(declare-fun hashF!1323 () Hashable!6217)

(declare-fun lemmaGetPairDefinedThenContainsKey!200 (List!52517 K!13770 Hashable!6217) Unit!123773)

(assert (=> b!4688697 (= lt!1848230 (lemmaGetPairDefinedThenContainsKey!200 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1848233 () List!52517)

(declare-datatypes ((Option!12063 0))(
  ( (None!12062) (Some!12062 (v!46469 tuple2!53786)) )
))
(declare-fun isDefined!9318 (Option!12063) Bool)

(declare-fun getPair!452 (List!52517 K!13770) Option!12063)

(assert (=> b!4688697 (isDefined!9318 (getPair!452 lt!1848233 key!4653))))

(declare-fun lambda!206769 () Int)

(declare-fun lt!1848240 () tuple2!53788)

(declare-fun lt!1848232 () Unit!123773)

(declare-fun forallContained!3418 (List!52518 Int tuple2!53788) Unit!123773)

(assert (=> b!4688697 (= lt!1848232 (forallContained!3418 (toList!5585 lm!2023) lambda!206769 lt!1848240))))

(declare-fun contains!15582 (List!52518 tuple2!53788) Bool)

(assert (=> b!4688697 (contains!15582 (toList!5585 lm!2023) lt!1848240)))

(declare-fun lt!1848224 () (_ BitVec 64))

(assert (=> b!4688697 (= lt!1848240 (tuple2!53789 lt!1848224 lt!1848233))))

(declare-fun lt!1848238 () Unit!123773)

(declare-fun lemmaGetValueImpliesTupleContained!257 (ListLongMap!4115 (_ BitVec 64) List!52517) Unit!123773)

(assert (=> b!4688697 (= lt!1848238 (lemmaGetValueImpliesTupleContained!257 lm!2023 lt!1848224 lt!1848233))))

(declare-fun apply!12331 (ListLongMap!4115 (_ BitVec 64)) List!52517)

(assert (=> b!4688697 (= lt!1848233 (apply!12331 lm!2023 lt!1848224))))

(declare-fun contains!15583 (ListLongMap!4115 (_ BitVec 64)) Bool)

(assert (=> b!4688697 (contains!15583 lm!2023 lt!1848224)))

(declare-fun lt!1848231 () Unit!123773)

(declare-fun lemmaInGenMapThenLongMapContainsHash!658 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> b!4688697 (= lt!1848231 (lemmaInGenMapThenLongMapContainsHash!658 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1848241 () Unit!123773)

(declare-fun lemmaInGenMapThenGetPairDefined!248 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> b!4688697 (= lt!1848241 (lemmaInGenMapThenGetPairDefined!248 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4688698 () Bool)

(assert (=> b!4688698 (= e!2925118 (not e!2925110))))

(declare-fun res!1977411 () Bool)

(assert (=> b!4688698 (=> res!1977411 e!2925110)))

(get-info :version)

(assert (=> b!4688698 (= res!1977411 (or (and ((_ is Cons!52393) oldBucket!34) (= (_1!30187 (h!58634 oldBucket!34)) key!4653)) (not ((_ is Cons!52393) oldBucket!34)) (= (_1!30187 (h!58634 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!4949 0))(
  ( (ListMap!4950 (toList!5586 List!52517)) )
))
(declare-fun lt!1848239 () ListMap!4949)

(declare-fun lt!1848242 () ListMap!4949)

(declare-fun addToMapMapFromBucket!1280 (List!52517 ListMap!4949) ListMap!4949)

(assert (=> b!4688698 (= lt!1848239 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 (toList!5585 lm!2023))) lt!1848242))))

(declare-fun extractMap!1874 (List!52518) ListMap!4949)

(assert (=> b!4688698 (= lt!1848242 (extractMap!1874 (t!359690 (toList!5585 lm!2023))))))

(declare-fun tail!8574 (ListLongMap!4115) ListLongMap!4115)

(assert (=> b!4688698 (= (t!359690 (toList!5585 lm!2023)) (toList!5585 (tail!8574 lm!2023)))))

(declare-fun b!4688699 () Bool)

(declare-fun e!2925109 () Bool)

(assert (=> b!4688699 (= e!2925109 e!2925112)))

(declare-fun res!1977408 () Bool)

(assert (=> b!4688699 (=> (not res!1977408) (not e!2925112))))

(assert (=> b!4688699 (= res!1977408 (= lt!1848224 hash!405))))

(declare-fun hash!4055 (Hashable!6217 K!13770) (_ BitVec 64))

(assert (=> b!4688699 (= lt!1848224 (hash!4055 hashF!1323 key!4653))))

(declare-fun b!4688700 () Bool)

(declare-fun e!2925111 () Bool)

(declare-fun tp!1345822 () Bool)

(assert (=> b!4688700 (= e!2925111 tp!1345822)))

(declare-fun b!4688701 () Bool)

(declare-fun e!2925116 () Bool)

(assert (=> b!4688701 (= e!2925114 e!2925116)))

(declare-fun res!1977420 () Bool)

(assert (=> b!4688701 (=> res!1977420 e!2925116)))

(declare-fun lt!1848223 () List!52517)

(declare-fun lt!1848234 () List!52517)

(declare-fun removePairForKey!1443 (List!52517 K!13770) List!52517)

(assert (=> b!4688701 (= res!1977420 (not (= (removePairForKey!1443 lt!1848223 key!4653) lt!1848234)))))

(declare-fun newBucket!218 () List!52517)

(declare-fun tail!8575 (List!52517) List!52517)

(assert (=> b!4688701 (= lt!1848234 (tail!8575 newBucket!218))))

(assert (=> b!4688701 (= lt!1848223 (tail!8575 oldBucket!34))))

(declare-fun b!4688702 () Bool)

(declare-fun res!1977418 () Bool)

(declare-fun e!2925115 () Bool)

(assert (=> b!4688702 (=> (not res!1977418) (not e!2925115))))

(assert (=> b!4688702 (= res!1977418 (= (removePairForKey!1443 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp_is_empty!30685 () Bool)

(declare-fun tp_is_empty!30687 () Bool)

(declare-fun e!2925117 () Bool)

(declare-fun b!4688703 () Bool)

(declare-fun tp!1345823 () Bool)

(assert (=> b!4688703 (= e!2925117 (and tp_is_empty!30685 tp_is_empty!30687 tp!1345823))))

(declare-fun res!1977422 () Bool)

(assert (=> start!474176 (=> (not res!1977422) (not e!2925115))))

(declare-fun forall!11311 (List!52518 Int) Bool)

(assert (=> start!474176 (= res!1977422 (forall!11311 (toList!5585 lm!2023) lambda!206769))))

(assert (=> start!474176 e!2925115))

(declare-fun inv!67644 (ListLongMap!4115) Bool)

(assert (=> start!474176 (and (inv!67644 lm!2023) e!2925111)))

(assert (=> start!474176 tp_is_empty!30685))

(declare-fun e!2925108 () Bool)

(assert (=> start!474176 e!2925108))

(assert (=> start!474176 true))

(assert (=> start!474176 e!2925117))

(declare-fun b!4688704 () Bool)

(declare-fun res!1977412 () Bool)

(assert (=> b!4688704 (=> res!1977412 e!2925116)))

(assert (=> b!4688704 (= res!1977412 (not (= (removePairForKey!1443 (t!359689 oldBucket!34) key!4653) lt!1848234)))))

(declare-fun b!4688705 () Bool)

(declare-fun res!1977407 () Bool)

(assert (=> b!4688705 (=> (not res!1977407) (not e!2925118))))

(assert (=> b!4688705 (= res!1977407 ((_ is Cons!52394) (toList!5585 lm!2023)))))

(declare-fun b!4688706 () Bool)

(declare-fun tp!1345821 () Bool)

(assert (=> b!4688706 (= e!2925108 (and tp_is_empty!30685 tp_is_empty!30687 tp!1345821))))

(declare-fun b!4688707 () Bool)

(declare-fun e!2925113 () Bool)

(declare-fun lt!1848236 () List!52518)

(assert (=> b!4688707 (= e!2925113 (forall!11311 lt!1848236 lambda!206769))))

(declare-fun b!4688708 () Bool)

(declare-fun res!1977415 () Bool)

(assert (=> b!4688708 (=> (not res!1977415) (not e!2925112))))

(declare-fun allKeysSameHashInMap!1762 (ListLongMap!4115 Hashable!6217) Bool)

(assert (=> b!4688708 (= res!1977415 (allKeysSameHashInMap!1762 lm!2023 hashF!1323))))

(declare-fun b!4688709 () Bool)

(declare-fun res!1977417 () Bool)

(assert (=> b!4688709 (=> (not res!1977417) (not e!2925115))))

(declare-fun noDuplicateKeys!1848 (List!52517) Bool)

(assert (=> b!4688709 (= res!1977417 (noDuplicateKeys!1848 newBucket!218))))

(declare-fun b!4688710 () Bool)

(declare-fun res!1977416 () Bool)

(assert (=> b!4688710 (=> (not res!1977416) (not e!2925115))))

(declare-fun allKeysSameHash!1674 (List!52517 (_ BitVec 64) Hashable!6217) Bool)

(assert (=> b!4688710 (= res!1977416 (allKeysSameHash!1674 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4688711 () Bool)

(declare-fun res!1977410 () Bool)

(assert (=> b!4688711 (=> res!1977410 e!2925113)))

(declare-fun lt!1848229 () tuple2!53786)

(assert (=> b!4688711 (= res!1977410 (not (= (h!58634 oldBucket!34) lt!1848229)))))

(declare-fun b!4688712 () Bool)

(assert (=> b!4688712 (= e!2925116 e!2925113)))

(declare-fun res!1977414 () Bool)

(assert (=> b!4688712 (=> res!1977414 e!2925113)))

(declare-fun eq!1007 (ListMap!4949 ListMap!4949) Bool)

(declare-fun +!2132 (ListMap!4949 tuple2!53786) ListMap!4949)

(assert (=> b!4688712 (= res!1977414 (not (eq!1007 (extractMap!1874 lt!1848236) (+!2132 (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))) (h!58634 oldBucket!34)))))))

(assert (=> b!4688712 (= lt!1848236 (Cons!52394 lt!1848225 (t!359690 (toList!5585 lm!2023))))))

(assert (=> b!4688712 (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848229 lt!1848234) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848229))))

(declare-fun lt!1848228 () Unit!123773)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!256 (tuple2!53786 List!52517 ListMap!4949) Unit!123773)

(assert (=> b!4688712 (= lt!1848228 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!256 lt!1848229 lt!1848234 lt!1848242))))

(declare-fun head!9960 (List!52517) tuple2!53786)

(assert (=> b!4688712 (= lt!1848229 (head!9960 newBucket!218))))

(declare-fun lt!1848235 () tuple2!53786)

(assert (=> b!4688712 (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848235 lt!1848223) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848235))))

(declare-fun lt!1848227 () Unit!123773)

(assert (=> b!4688712 (= lt!1848227 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!256 lt!1848235 lt!1848223 lt!1848242))))

(assert (=> b!4688712 (= lt!1848235 (head!9960 oldBucket!34))))

(declare-fun lt!1848226 () List!52518)

(declare-fun contains!15584 (ListMap!4949 K!13770) Bool)

(assert (=> b!4688712 (contains!15584 (extractMap!1874 lt!1848226) key!4653)))

(declare-fun lt!1848237 () Unit!123773)

(declare-fun lemmaListContainsThenExtractedMapContains!440 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> b!4688712 (= lt!1848237 (lemmaListContainsThenExtractedMapContains!440 (ListLongMap!4116 lt!1848226) key!4653 hashF!1323))))

(assert (=> b!4688712 (= lt!1848226 (Cons!52394 (tuple2!53789 hash!405 (t!359689 oldBucket!34)) (t!359690 (toList!5585 lm!2023))))))

(declare-fun b!4688713 () Bool)

(declare-fun res!1977421 () Bool)

(assert (=> b!4688713 (=> (not res!1977421) (not e!2925112))))

(assert (=> b!4688713 (= res!1977421 (allKeysSameHash!1674 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4688714 () Bool)

(assert (=> b!4688714 (= e!2925115 e!2925109)))

(declare-fun res!1977409 () Bool)

(assert (=> b!4688714 (=> (not res!1977409) (not e!2925109))))

(assert (=> b!4688714 (= res!1977409 (contains!15584 lt!1848239 key!4653))))

(assert (=> b!4688714 (= lt!1848239 (extractMap!1874 (toList!5585 lm!2023)))))

(declare-fun b!4688715 () Bool)

(declare-fun res!1977419 () Bool)

(assert (=> b!4688715 (=> (not res!1977419) (not e!2925115))))

(assert (=> b!4688715 (= res!1977419 (noDuplicateKeys!1848 oldBucket!34))))

(assert (= (and start!474176 res!1977422) b!4688715))

(assert (= (and b!4688715 res!1977419) b!4688709))

(assert (= (and b!4688709 res!1977417) b!4688702))

(assert (= (and b!4688702 res!1977418) b!4688710))

(assert (= (and b!4688710 res!1977416) b!4688714))

(assert (= (and b!4688714 res!1977409) b!4688699))

(assert (= (and b!4688699 res!1977408) b!4688713))

(assert (= (and b!4688713 res!1977421) b!4688708))

(assert (= (and b!4688708 res!1977415) b!4688696))

(assert (= (and b!4688696 res!1977413) b!4688705))

(assert (= (and b!4688705 res!1977407) b!4688698))

(assert (= (and b!4688698 (not res!1977411)) b!4688697))

(assert (= (and b!4688697 (not res!1977423)) b!4688701))

(assert (= (and b!4688701 (not res!1977420)) b!4688704))

(assert (= (and b!4688704 (not res!1977412)) b!4688712))

(assert (= (and b!4688712 (not res!1977414)) b!4688711))

(assert (= (and b!4688711 (not res!1977410)) b!4688707))

(assert (= start!474176 b!4688700))

(assert (= (and start!474176 ((_ is Cons!52393) oldBucket!34)) b!4688706))

(assert (= (and start!474176 ((_ is Cons!52393) newBucket!218)) b!4688703))

(declare-fun m!5589629 () Bool)

(assert (=> b!4688714 m!5589629))

(declare-fun m!5589631 () Bool)

(assert (=> b!4688714 m!5589631))

(declare-fun m!5589633 () Bool)

(assert (=> b!4688709 m!5589633))

(declare-fun m!5589635 () Bool)

(assert (=> b!4688713 m!5589635))

(declare-fun m!5589637 () Bool)

(assert (=> b!4688708 m!5589637))

(declare-fun m!5589639 () Bool)

(assert (=> b!4688701 m!5589639))

(declare-fun m!5589641 () Bool)

(assert (=> b!4688701 m!5589641))

(declare-fun m!5589643 () Bool)

(assert (=> b!4688701 m!5589643))

(declare-fun m!5589645 () Bool)

(assert (=> b!4688712 m!5589645))

(declare-fun m!5589647 () Bool)

(assert (=> b!4688712 m!5589647))

(declare-fun m!5589649 () Bool)

(assert (=> b!4688712 m!5589649))

(assert (=> b!4688712 m!5589649))

(declare-fun m!5589651 () Bool)

(assert (=> b!4688712 m!5589651))

(declare-fun m!5589653 () Bool)

(assert (=> b!4688712 m!5589653))

(declare-fun m!5589655 () Bool)

(assert (=> b!4688712 m!5589655))

(declare-fun m!5589657 () Bool)

(assert (=> b!4688712 m!5589657))

(declare-fun m!5589659 () Bool)

(assert (=> b!4688712 m!5589659))

(declare-fun m!5589661 () Bool)

(assert (=> b!4688712 m!5589661))

(declare-fun m!5589663 () Bool)

(assert (=> b!4688712 m!5589663))

(declare-fun m!5589665 () Bool)

(assert (=> b!4688712 m!5589665))

(assert (=> b!4688712 m!5589645))

(declare-fun m!5589667 () Bool)

(assert (=> b!4688712 m!5589667))

(declare-fun m!5589669 () Bool)

(assert (=> b!4688712 m!5589669))

(assert (=> b!4688712 m!5589663))

(assert (=> b!4688712 m!5589651))

(assert (=> b!4688712 m!5589657))

(assert (=> b!4688712 m!5589647))

(declare-fun m!5589671 () Bool)

(assert (=> b!4688712 m!5589671))

(assert (=> b!4688712 m!5589659))

(declare-fun m!5589673 () Bool)

(assert (=> b!4688712 m!5589673))

(assert (=> b!4688712 m!5589665))

(declare-fun m!5589675 () Bool)

(assert (=> b!4688712 m!5589675))

(declare-fun m!5589677 () Bool)

(assert (=> b!4688712 m!5589677))

(declare-fun m!5589679 () Bool)

(assert (=> b!4688712 m!5589679))

(assert (=> b!4688712 m!5589677))

(assert (=> b!4688712 m!5589673))

(declare-fun m!5589681 () Bool)

(assert (=> b!4688712 m!5589681))

(declare-fun m!5589683 () Bool)

(assert (=> b!4688698 m!5589683))

(declare-fun m!5589685 () Bool)

(assert (=> b!4688698 m!5589685))

(declare-fun m!5589687 () Bool)

(assert (=> b!4688698 m!5589687))

(declare-fun m!5589689 () Bool)

(assert (=> b!4688699 m!5589689))

(declare-fun m!5589691 () Bool)

(assert (=> b!4688702 m!5589691))

(declare-fun m!5589693 () Bool)

(assert (=> b!4688696 m!5589693))

(declare-fun m!5589695 () Bool)

(assert (=> b!4688707 m!5589695))

(declare-fun m!5589697 () Bool)

(assert (=> b!4688704 m!5589697))

(declare-fun m!5589699 () Bool)

(assert (=> b!4688710 m!5589699))

(declare-fun m!5589701 () Bool)

(assert (=> b!4688715 m!5589701))

(declare-fun m!5589703 () Bool)

(assert (=> start!474176 m!5589703))

(declare-fun m!5589705 () Bool)

(assert (=> start!474176 m!5589705))

(declare-fun m!5589707 () Bool)

(assert (=> b!4688697 m!5589707))

(declare-fun m!5589709 () Bool)

(assert (=> b!4688697 m!5589709))

(declare-fun m!5589711 () Bool)

(assert (=> b!4688697 m!5589711))

(declare-fun m!5589713 () Bool)

(assert (=> b!4688697 m!5589713))

(declare-fun m!5589715 () Bool)

(assert (=> b!4688697 m!5589715))

(declare-fun m!5589717 () Bool)

(assert (=> b!4688697 m!5589717))

(declare-fun m!5589719 () Bool)

(assert (=> b!4688697 m!5589719))

(declare-fun m!5589721 () Bool)

(assert (=> b!4688697 m!5589721))

(declare-fun m!5589723 () Bool)

(assert (=> b!4688697 m!5589723))

(declare-fun m!5589725 () Bool)

(assert (=> b!4688697 m!5589725))

(declare-fun m!5589727 () Bool)

(assert (=> b!4688697 m!5589727))

(assert (=> b!4688697 m!5589727))

(declare-fun m!5589729 () Bool)

(assert (=> b!4688697 m!5589729))

(check-sat (not b!4688713) (not b!4688710) (not b!4688697) (not b!4688699) (not b!4688712) (not b!4688702) (not b!4688701) (not start!474176) (not b!4688704) (not b!4688715) (not b!4688706) tp_is_empty!30685 (not b!4688698) tp_is_empty!30687 (not b!4688709) (not b!4688703) (not b!4688700) (not b!4688708) (not b!4688714) (not b!4688696) (not b!4688707))
(check-sat)
(get-model)

(declare-fun d!1490022 () Bool)

(assert (=> d!1490022 (= (head!9959 (toList!5585 lm!2023)) (h!58635 (toList!5585 lm!2023)))))

(assert (=> b!4688696 d!1490022))

(declare-fun d!1490024 () Bool)

(declare-fun res!1977428 () Bool)

(declare-fun e!2925123 () Bool)

(assert (=> d!1490024 (=> res!1977428 e!2925123)))

(assert (=> d!1490024 (= res!1977428 ((_ is Nil!52394) lt!1848236))))

(assert (=> d!1490024 (= (forall!11311 lt!1848236 lambda!206769) e!2925123)))

(declare-fun b!4688720 () Bool)

(declare-fun e!2925124 () Bool)

(assert (=> b!4688720 (= e!2925123 e!2925124)))

(declare-fun res!1977429 () Bool)

(assert (=> b!4688720 (=> (not res!1977429) (not e!2925124))))

(declare-fun dynLambda!21709 (Int tuple2!53788) Bool)

(assert (=> b!4688720 (= res!1977429 (dynLambda!21709 lambda!206769 (h!58635 lt!1848236)))))

(declare-fun b!4688721 () Bool)

(assert (=> b!4688721 (= e!2925124 (forall!11311 (t!359690 lt!1848236) lambda!206769))))

(assert (= (and d!1490024 (not res!1977428)) b!4688720))

(assert (= (and b!4688720 res!1977429) b!4688721))

(declare-fun b_lambda!176941 () Bool)

(assert (=> (not b_lambda!176941) (not b!4688720)))

(declare-fun m!5589731 () Bool)

(assert (=> b!4688720 m!5589731))

(declare-fun m!5589733 () Bool)

(assert (=> b!4688721 m!5589733))

(assert (=> b!4688707 d!1490024))

(declare-fun d!1490026 () Bool)

(declare-fun res!1977430 () Bool)

(declare-fun e!2925125 () Bool)

(assert (=> d!1490026 (=> res!1977430 e!2925125)))

(assert (=> d!1490026 (= res!1977430 ((_ is Nil!52394) (toList!5585 lm!2023)))))

(assert (=> d!1490026 (= (forall!11311 (toList!5585 lm!2023) lambda!206769) e!2925125)))

(declare-fun b!4688722 () Bool)

(declare-fun e!2925126 () Bool)

(assert (=> b!4688722 (= e!2925125 e!2925126)))

(declare-fun res!1977431 () Bool)

(assert (=> b!4688722 (=> (not res!1977431) (not e!2925126))))

(assert (=> b!4688722 (= res!1977431 (dynLambda!21709 lambda!206769 (h!58635 (toList!5585 lm!2023))))))

(declare-fun b!4688723 () Bool)

(assert (=> b!4688723 (= e!2925126 (forall!11311 (t!359690 (toList!5585 lm!2023)) lambda!206769))))

(assert (= (and d!1490026 (not res!1977430)) b!4688722))

(assert (= (and b!4688722 res!1977431) b!4688723))

(declare-fun b_lambda!176943 () Bool)

(assert (=> (not b_lambda!176943) (not b!4688722)))

(declare-fun m!5589735 () Bool)

(assert (=> b!4688722 m!5589735))

(declare-fun m!5589737 () Bool)

(assert (=> b!4688723 m!5589737))

(assert (=> start!474176 d!1490026))

(declare-fun d!1490028 () Bool)

(declare-fun isStrictlySorted!646 (List!52518) Bool)

(assert (=> d!1490028 (= (inv!67644 lm!2023) (isStrictlySorted!646 (toList!5585 lm!2023)))))

(declare-fun bs!1085718 () Bool)

(assert (= bs!1085718 d!1490028))

(declare-fun m!5589739 () Bool)

(assert (=> bs!1085718 m!5589739))

(assert (=> start!474176 d!1490028))

(declare-fun b!4688733 () Bool)

(declare-fun e!2925132 () List!52517)

(declare-fun e!2925131 () List!52517)

(assert (=> b!4688733 (= e!2925132 e!2925131)))

(declare-fun c!801697 () Bool)

(assert (=> b!4688733 (= c!801697 ((_ is Cons!52393) oldBucket!34))))

(declare-fun b!4688734 () Bool)

(assert (=> b!4688734 (= e!2925131 (Cons!52393 (h!58634 oldBucket!34) (removePairForKey!1443 (t!359689 oldBucket!34) key!4653)))))

(declare-fun d!1490030 () Bool)

(declare-fun lt!1848245 () List!52517)

(assert (=> d!1490030 (not (containsKey!3039 lt!1848245 key!4653))))

(assert (=> d!1490030 (= lt!1848245 e!2925132)))

(declare-fun c!801696 () Bool)

(assert (=> d!1490030 (= c!801696 (and ((_ is Cons!52393) oldBucket!34) (= (_1!30187 (h!58634 oldBucket!34)) key!4653)))))

(assert (=> d!1490030 (noDuplicateKeys!1848 oldBucket!34)))

(assert (=> d!1490030 (= (removePairForKey!1443 oldBucket!34 key!4653) lt!1848245)))

(declare-fun b!4688732 () Bool)

(assert (=> b!4688732 (= e!2925132 (t!359689 oldBucket!34))))

(declare-fun b!4688735 () Bool)

(assert (=> b!4688735 (= e!2925131 Nil!52393)))

(assert (= (and d!1490030 c!801696) b!4688732))

(assert (= (and d!1490030 (not c!801696)) b!4688733))

(assert (= (and b!4688733 c!801697) b!4688734))

(assert (= (and b!4688733 (not c!801697)) b!4688735))

(assert (=> b!4688734 m!5589697))

(declare-fun m!5589741 () Bool)

(assert (=> d!1490030 m!5589741))

(assert (=> d!1490030 m!5589701))

(assert (=> b!4688702 d!1490030))

(declare-fun d!1490032 () Bool)

(assert (=> d!1490032 true))

(assert (=> d!1490032 true))

(declare-fun lambda!206772 () Int)

(declare-fun forall!11313 (List!52517 Int) Bool)

(assert (=> d!1490032 (= (allKeysSameHash!1674 newBucket!218 hash!405 hashF!1323) (forall!11313 newBucket!218 lambda!206772))))

(declare-fun bs!1085719 () Bool)

(assert (= bs!1085719 d!1490032))

(declare-fun m!5589743 () Bool)

(assert (=> bs!1085719 m!5589743))

(assert (=> b!4688713 d!1490032))

(declare-fun b!4688741 () Bool)

(declare-fun e!2925134 () List!52517)

(declare-fun e!2925133 () List!52517)

(assert (=> b!4688741 (= e!2925134 e!2925133)))

(declare-fun c!801699 () Bool)

(assert (=> b!4688741 (= c!801699 ((_ is Cons!52393) (t!359689 oldBucket!34)))))

(declare-fun b!4688742 () Bool)

(assert (=> b!4688742 (= e!2925133 (Cons!52393 (h!58634 (t!359689 oldBucket!34)) (removePairForKey!1443 (t!359689 (t!359689 oldBucket!34)) key!4653)))))

(declare-fun d!1490034 () Bool)

(declare-fun lt!1848246 () List!52517)

(assert (=> d!1490034 (not (containsKey!3039 lt!1848246 key!4653))))

(assert (=> d!1490034 (= lt!1848246 e!2925134)))

(declare-fun c!801698 () Bool)

(assert (=> d!1490034 (= c!801698 (and ((_ is Cons!52393) (t!359689 oldBucket!34)) (= (_1!30187 (h!58634 (t!359689 oldBucket!34))) key!4653)))))

(assert (=> d!1490034 (noDuplicateKeys!1848 (t!359689 oldBucket!34))))

(assert (=> d!1490034 (= (removePairForKey!1443 (t!359689 oldBucket!34) key!4653) lt!1848246)))

(declare-fun b!4688740 () Bool)

(assert (=> b!4688740 (= e!2925134 (t!359689 (t!359689 oldBucket!34)))))

(declare-fun b!4688743 () Bool)

(assert (=> b!4688743 (= e!2925133 Nil!52393)))

(assert (= (and d!1490034 c!801698) b!4688740))

(assert (= (and d!1490034 (not c!801698)) b!4688741))

(assert (= (and b!4688741 c!801699) b!4688742))

(assert (= (and b!4688741 (not c!801699)) b!4688743))

(declare-fun m!5589745 () Bool)

(assert (=> b!4688742 m!5589745))

(declare-fun m!5589747 () Bool)

(assert (=> d!1490034 m!5589747))

(declare-fun m!5589749 () Bool)

(assert (=> d!1490034 m!5589749))

(assert (=> b!4688704 d!1490034))

(declare-fun d!1490036 () Bool)

(declare-fun res!1977436 () Bool)

(declare-fun e!2925139 () Bool)

(assert (=> d!1490036 (=> res!1977436 e!2925139)))

(assert (=> d!1490036 (= res!1977436 (not ((_ is Cons!52393) oldBucket!34)))))

(assert (=> d!1490036 (= (noDuplicateKeys!1848 oldBucket!34) e!2925139)))

(declare-fun b!4688748 () Bool)

(declare-fun e!2925140 () Bool)

(assert (=> b!4688748 (= e!2925139 e!2925140)))

(declare-fun res!1977437 () Bool)

(assert (=> b!4688748 (=> (not res!1977437) (not e!2925140))))

(assert (=> b!4688748 (= res!1977437 (not (containsKey!3039 (t!359689 oldBucket!34) (_1!30187 (h!58634 oldBucket!34)))))))

(declare-fun b!4688749 () Bool)

(assert (=> b!4688749 (= e!2925140 (noDuplicateKeys!1848 (t!359689 oldBucket!34)))))

(assert (= (and d!1490036 (not res!1977436)) b!4688748))

(assert (= (and b!4688748 res!1977437) b!4688749))

(declare-fun m!5589751 () Bool)

(assert (=> b!4688748 m!5589751))

(assert (=> b!4688749 m!5589749))

(assert (=> b!4688715 d!1490036))

(declare-fun d!1490038 () Bool)

(declare-fun e!2925179 () Bool)

(assert (=> d!1490038 e!2925179))

(declare-fun res!1977462 () Bool)

(assert (=> d!1490038 (=> res!1977462 e!2925179)))

(declare-fun e!2925176 () Bool)

(assert (=> d!1490038 (= res!1977462 e!2925176)))

(declare-fun res!1977463 () Bool)

(assert (=> d!1490038 (=> (not res!1977463) (not e!2925176))))

(declare-fun lt!1848285 () Bool)

(assert (=> d!1490038 (= res!1977463 (not lt!1848285))))

(declare-fun lt!1848281 () Bool)

(assert (=> d!1490038 (= lt!1848285 lt!1848281)))

(declare-fun lt!1848282 () Unit!123773)

(declare-fun e!2925175 () Unit!123773)

(assert (=> d!1490038 (= lt!1848282 e!2925175)))

(declare-fun c!801714 () Bool)

(assert (=> d!1490038 (= c!801714 lt!1848281)))

(declare-fun containsKey!3041 (List!52517 K!13770) Bool)

(assert (=> d!1490038 (= lt!1848281 (containsKey!3041 (toList!5586 lt!1848239) key!4653))))

(assert (=> d!1490038 (= (contains!15584 lt!1848239 key!4653) lt!1848285)))

(declare-fun b!4688802 () Bool)

(declare-fun e!2925174 () Unit!123773)

(declare-fun Unit!123798 () Unit!123773)

(assert (=> b!4688802 (= e!2925174 Unit!123798)))

(declare-fun b!4688803 () Bool)

(assert (=> b!4688803 (= e!2925175 e!2925174)))

(declare-fun c!801712 () Bool)

(declare-fun call!327660 () Bool)

(assert (=> b!4688803 (= c!801712 call!327660)))

(declare-fun b!4688804 () Bool)

(declare-fun lt!1848283 () Unit!123773)

(assert (=> b!4688804 (= e!2925175 lt!1848283)))

(declare-fun lt!1848287 () Unit!123773)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1663 (List!52517 K!13770) Unit!123773)

(assert (=> b!4688804 (= lt!1848287 (lemmaContainsKeyImpliesGetValueByKeyDefined!1663 (toList!5586 lt!1848239) key!4653))))

(declare-datatypes ((Option!12065 0))(
  ( (None!12064) (Some!12064 (v!46475 V!14016)) )
))
(declare-fun isDefined!9320 (Option!12065) Bool)

(declare-fun getValueByKey!1771 (List!52517 K!13770) Option!12065)

(assert (=> b!4688804 (isDefined!9320 (getValueByKey!1771 (toList!5586 lt!1848239) key!4653))))

(declare-fun lt!1848286 () Unit!123773)

(assert (=> b!4688804 (= lt!1848286 lt!1848287)))

(declare-fun lemmaInListThenGetKeysListContains!841 (List!52517 K!13770) Unit!123773)

(assert (=> b!4688804 (= lt!1848283 (lemmaInListThenGetKeysListContains!841 (toList!5586 lt!1848239) key!4653))))

(assert (=> b!4688804 call!327660))

(declare-fun b!4688805 () Bool)

(declare-datatypes ((List!52520 0))(
  ( (Nil!52396) (Cons!52396 (h!58639 K!13770) (t!359694 List!52520)) )
))
(declare-fun e!2925178 () List!52520)

(declare-fun getKeysList!846 (List!52517) List!52520)

(assert (=> b!4688805 (= e!2925178 (getKeysList!846 (toList!5586 lt!1848239)))))

(declare-fun bm!327655 () Bool)

(declare-fun contains!15587 (List!52520 K!13770) Bool)

(assert (=> bm!327655 (= call!327660 (contains!15587 e!2925178 key!4653))))

(declare-fun c!801713 () Bool)

(assert (=> bm!327655 (= c!801713 c!801714)))

(declare-fun b!4688806 () Bool)

(declare-fun e!2925177 () Bool)

(declare-fun keys!18703 (ListMap!4949) List!52520)

(assert (=> b!4688806 (= e!2925177 (contains!15587 (keys!18703 lt!1848239) key!4653))))

(declare-fun b!4688807 () Bool)

(assert (=> b!4688807 false))

(declare-fun lt!1848288 () Unit!123773)

(declare-fun lt!1848284 () Unit!123773)

(assert (=> b!4688807 (= lt!1848288 lt!1848284)))

(assert (=> b!4688807 (containsKey!3041 (toList!5586 lt!1848239) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!845 (List!52517 K!13770) Unit!123773)

(assert (=> b!4688807 (= lt!1848284 (lemmaInGetKeysListThenContainsKey!845 (toList!5586 lt!1848239) key!4653))))

(declare-fun Unit!123800 () Unit!123773)

(assert (=> b!4688807 (= e!2925174 Unit!123800)))

(declare-fun b!4688808 () Bool)

(assert (=> b!4688808 (= e!2925176 (not (contains!15587 (keys!18703 lt!1848239) key!4653)))))

(declare-fun b!4688809 () Bool)

(assert (=> b!4688809 (= e!2925178 (keys!18703 lt!1848239))))

(declare-fun b!4688810 () Bool)

(assert (=> b!4688810 (= e!2925179 e!2925177)))

(declare-fun res!1977464 () Bool)

(assert (=> b!4688810 (=> (not res!1977464) (not e!2925177))))

(assert (=> b!4688810 (= res!1977464 (isDefined!9320 (getValueByKey!1771 (toList!5586 lt!1848239) key!4653)))))

(assert (= (and d!1490038 c!801714) b!4688804))

(assert (= (and d!1490038 (not c!801714)) b!4688803))

(assert (= (and b!4688803 c!801712) b!4688807))

(assert (= (and b!4688803 (not c!801712)) b!4688802))

(assert (= (or b!4688804 b!4688803) bm!327655))

(assert (= (and bm!327655 c!801713) b!4688805))

(assert (= (and bm!327655 (not c!801713)) b!4688809))

(assert (= (and d!1490038 res!1977463) b!4688808))

(assert (= (and d!1490038 (not res!1977462)) b!4688810))

(assert (= (and b!4688810 res!1977464) b!4688806))

(declare-fun m!5589789 () Bool)

(assert (=> bm!327655 m!5589789))

(declare-fun m!5589791 () Bool)

(assert (=> b!4688806 m!5589791))

(assert (=> b!4688806 m!5589791))

(declare-fun m!5589793 () Bool)

(assert (=> b!4688806 m!5589793))

(declare-fun m!5589795 () Bool)

(assert (=> b!4688805 m!5589795))

(declare-fun m!5589797 () Bool)

(assert (=> b!4688807 m!5589797))

(declare-fun m!5589799 () Bool)

(assert (=> b!4688807 m!5589799))

(assert (=> b!4688809 m!5589791))

(declare-fun m!5589801 () Bool)

(assert (=> b!4688804 m!5589801))

(declare-fun m!5589803 () Bool)

(assert (=> b!4688804 m!5589803))

(assert (=> b!4688804 m!5589803))

(declare-fun m!5589805 () Bool)

(assert (=> b!4688804 m!5589805))

(declare-fun m!5589807 () Bool)

(assert (=> b!4688804 m!5589807))

(assert (=> b!4688808 m!5589791))

(assert (=> b!4688808 m!5589791))

(assert (=> b!4688808 m!5589793))

(assert (=> b!4688810 m!5589803))

(assert (=> b!4688810 m!5589803))

(assert (=> b!4688810 m!5589805))

(assert (=> d!1490038 m!5589797))

(assert (=> b!4688714 d!1490038))

(declare-fun bs!1085724 () Bool)

(declare-fun d!1490056 () Bool)

(assert (= bs!1085724 (and d!1490056 start!474176)))

(declare-fun lambda!206781 () Int)

(assert (=> bs!1085724 (= lambda!206781 lambda!206769)))

(declare-fun lt!1848291 () ListMap!4949)

(declare-fun invariantList!1406 (List!52517) Bool)

(assert (=> d!1490056 (invariantList!1406 (toList!5586 lt!1848291))))

(declare-fun e!2925182 () ListMap!4949)

(assert (=> d!1490056 (= lt!1848291 e!2925182)))

(declare-fun c!801717 () Bool)

(assert (=> d!1490056 (= c!801717 ((_ is Cons!52394) (toList!5585 lm!2023)))))

(assert (=> d!1490056 (forall!11311 (toList!5585 lm!2023) lambda!206781)))

(assert (=> d!1490056 (= (extractMap!1874 (toList!5585 lm!2023)) lt!1848291)))

(declare-fun b!4688815 () Bool)

(assert (=> b!4688815 (= e!2925182 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 (toList!5585 lm!2023))) (extractMap!1874 (t!359690 (toList!5585 lm!2023)))))))

(declare-fun b!4688816 () Bool)

(assert (=> b!4688816 (= e!2925182 (ListMap!4950 Nil!52393))))

(assert (= (and d!1490056 c!801717) b!4688815))

(assert (= (and d!1490056 (not c!801717)) b!4688816))

(declare-fun m!5589809 () Bool)

(assert (=> d!1490056 m!5589809))

(declare-fun m!5589811 () Bool)

(assert (=> d!1490056 m!5589811))

(assert (=> b!4688815 m!5589685))

(assert (=> b!4688815 m!5589685))

(declare-fun m!5589813 () Bool)

(assert (=> b!4688815 m!5589813))

(assert (=> b!4688714 d!1490056))

(declare-fun bs!1085725 () Bool)

(declare-fun d!1490058 () Bool)

(assert (= bs!1085725 (and d!1490058 d!1490032)))

(declare-fun lambda!206782 () Int)

(assert (=> bs!1085725 (= lambda!206782 lambda!206772)))

(assert (=> d!1490058 true))

(assert (=> d!1490058 true))

(assert (=> d!1490058 (= (allKeysSameHash!1674 oldBucket!34 hash!405 hashF!1323) (forall!11313 oldBucket!34 lambda!206782))))

(declare-fun bs!1085726 () Bool)

(assert (= bs!1085726 d!1490058))

(declare-fun m!5589815 () Bool)

(assert (=> bs!1085726 m!5589815))

(assert (=> b!4688710 d!1490058))

(declare-fun bs!1085819 () Bool)

(declare-fun b!4688907 () Bool)

(assert (= bs!1085819 (and b!4688907 d!1490032)))

(declare-fun lambda!206860 () Int)

(assert (=> bs!1085819 (not (= lambda!206860 lambda!206772))))

(declare-fun bs!1085820 () Bool)

(assert (= bs!1085820 (and b!4688907 d!1490058)))

(assert (=> bs!1085820 (not (= lambda!206860 lambda!206782))))

(assert (=> b!4688907 true))

(declare-fun bs!1085821 () Bool)

(declare-fun b!4688906 () Bool)

(assert (= bs!1085821 (and b!4688906 d!1490032)))

(declare-fun lambda!206861 () Int)

(assert (=> bs!1085821 (not (= lambda!206861 lambda!206772))))

(declare-fun bs!1085822 () Bool)

(assert (= bs!1085822 (and b!4688906 d!1490058)))

(assert (=> bs!1085822 (not (= lambda!206861 lambda!206782))))

(declare-fun bs!1085823 () Bool)

(assert (= bs!1085823 (and b!4688906 b!4688907)))

(assert (=> bs!1085823 (= lambda!206861 lambda!206860)))

(assert (=> b!4688906 true))

(declare-fun lambda!206862 () Int)

(assert (=> bs!1085821 (not (= lambda!206862 lambda!206772))))

(assert (=> bs!1085822 (not (= lambda!206862 lambda!206782))))

(declare-fun lt!1848507 () ListMap!4949)

(assert (=> bs!1085823 (= (= lt!1848507 lt!1848242) (= lambda!206862 lambda!206860))))

(assert (=> b!4688906 (= (= lt!1848507 lt!1848242) (= lambda!206862 lambda!206861))))

(assert (=> b!4688906 true))

(declare-fun bs!1085825 () Bool)

(declare-fun d!1490060 () Bool)

(assert (= bs!1085825 (and d!1490060 d!1490032)))

(declare-fun lambda!206863 () Int)

(assert (=> bs!1085825 (not (= lambda!206863 lambda!206772))))

(declare-fun bs!1085826 () Bool)

(assert (= bs!1085826 (and d!1490060 b!4688906)))

(declare-fun lt!1848521 () ListMap!4949)

(assert (=> bs!1085826 (= (= lt!1848521 lt!1848507) (= lambda!206863 lambda!206862))))

(declare-fun bs!1085827 () Bool)

(assert (= bs!1085827 (and d!1490060 b!4688907)))

(assert (=> bs!1085827 (= (= lt!1848521 lt!1848242) (= lambda!206863 lambda!206860))))

(declare-fun bs!1085828 () Bool)

(assert (= bs!1085828 (and d!1490060 d!1490058)))

(assert (=> bs!1085828 (not (= lambda!206863 lambda!206782))))

(assert (=> bs!1085826 (= (= lt!1848521 lt!1848242) (= lambda!206863 lambda!206861))))

(assert (=> d!1490060 true))

(declare-fun e!2925237 () Bool)

(assert (=> d!1490060 e!2925237))

(declare-fun res!1977504 () Bool)

(assert (=> d!1490060 (=> (not res!1977504) (not e!2925237))))

(assert (=> d!1490060 (= res!1977504 (forall!11313 lt!1848223 lambda!206863))))

(declare-fun e!2925238 () ListMap!4949)

(assert (=> d!1490060 (= lt!1848521 e!2925238)))

(declare-fun c!801742 () Bool)

(assert (=> d!1490060 (= c!801742 ((_ is Nil!52393) lt!1848223))))

(assert (=> d!1490060 (noDuplicateKeys!1848 lt!1848223)))

(assert (=> d!1490060 (= (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848521)))

(declare-fun bm!327683 () Bool)

(declare-fun call!327690 () Unit!123773)

(declare-fun lemmaContainsAllItsOwnKeys!694 (ListMap!4949) Unit!123773)

(assert (=> bm!327683 (= call!327690 (lemmaContainsAllItsOwnKeys!694 lt!1848242))))

(assert (=> b!4688906 (= e!2925238 lt!1848507)))

(declare-fun lt!1848518 () ListMap!4949)

(assert (=> b!4688906 (= lt!1848518 (+!2132 lt!1848242 (h!58634 lt!1848223)))))

(assert (=> b!4688906 (= lt!1848507 (addToMapMapFromBucket!1280 (t!359689 lt!1848223) (+!2132 lt!1848242 (h!58634 lt!1848223))))))

(declare-fun lt!1848523 () Unit!123773)

(assert (=> b!4688906 (= lt!1848523 call!327690)))

(declare-fun call!327689 () Bool)

(assert (=> b!4688906 call!327689))

(declare-fun lt!1848520 () Unit!123773)

(assert (=> b!4688906 (= lt!1848520 lt!1848523)))

(assert (=> b!4688906 (forall!11313 (toList!5586 lt!1848518) lambda!206862)))

(declare-fun lt!1848512 () Unit!123773)

(declare-fun Unit!123801 () Unit!123773)

(assert (=> b!4688906 (= lt!1848512 Unit!123801)))

(assert (=> b!4688906 (forall!11313 (t!359689 lt!1848223) lambda!206862)))

(declare-fun lt!1848510 () Unit!123773)

(declare-fun Unit!123802 () Unit!123773)

(assert (=> b!4688906 (= lt!1848510 Unit!123802)))

(declare-fun lt!1848505 () Unit!123773)

(declare-fun Unit!123803 () Unit!123773)

(assert (=> b!4688906 (= lt!1848505 Unit!123803)))

(declare-fun lt!1848524 () Unit!123773)

(declare-fun forallContained!3420 (List!52517 Int tuple2!53786) Unit!123773)

(assert (=> b!4688906 (= lt!1848524 (forallContained!3420 (toList!5586 lt!1848518) lambda!206862 (h!58634 lt!1848223)))))

(assert (=> b!4688906 (contains!15584 lt!1848518 (_1!30187 (h!58634 lt!1848223)))))

(declare-fun lt!1848508 () Unit!123773)

(declare-fun Unit!123804 () Unit!123773)

(assert (=> b!4688906 (= lt!1848508 Unit!123804)))

(assert (=> b!4688906 (contains!15584 lt!1848507 (_1!30187 (h!58634 lt!1848223)))))

(declare-fun lt!1848513 () Unit!123773)

(declare-fun Unit!123805 () Unit!123773)

(assert (=> b!4688906 (= lt!1848513 Unit!123805)))

(assert (=> b!4688906 (forall!11313 lt!1848223 lambda!206862)))

(declare-fun lt!1848519 () Unit!123773)

(declare-fun Unit!123806 () Unit!123773)

(assert (=> b!4688906 (= lt!1848519 Unit!123806)))

(assert (=> b!4688906 (forall!11313 (toList!5586 lt!1848518) lambda!206862)))

(declare-fun lt!1848509 () Unit!123773)

(declare-fun Unit!123807 () Unit!123773)

(assert (=> b!4688906 (= lt!1848509 Unit!123807)))

(declare-fun lt!1848511 () Unit!123773)

(declare-fun Unit!123808 () Unit!123773)

(assert (=> b!4688906 (= lt!1848511 Unit!123808)))

(declare-fun lt!1848514 () Unit!123773)

(declare-fun addForallContainsKeyThenBeforeAdding!693 (ListMap!4949 ListMap!4949 K!13770 V!14016) Unit!123773)

(assert (=> b!4688906 (= lt!1848514 (addForallContainsKeyThenBeforeAdding!693 lt!1848242 lt!1848507 (_1!30187 (h!58634 lt!1848223)) (_2!30187 (h!58634 lt!1848223))))))

(assert (=> b!4688906 (forall!11313 (toList!5586 lt!1848242) lambda!206862)))

(declare-fun lt!1848506 () Unit!123773)

(assert (=> b!4688906 (= lt!1848506 lt!1848514)))

(assert (=> b!4688906 (forall!11313 (toList!5586 lt!1848242) lambda!206862)))

(declare-fun lt!1848522 () Unit!123773)

(declare-fun Unit!123810 () Unit!123773)

(assert (=> b!4688906 (= lt!1848522 Unit!123810)))

(declare-fun res!1977505 () Bool)

(assert (=> b!4688906 (= res!1977505 (forall!11313 lt!1848223 lambda!206862))))

(declare-fun e!2925236 () Bool)

(assert (=> b!4688906 (=> (not res!1977505) (not e!2925236))))

(assert (=> b!4688906 e!2925236))

(declare-fun lt!1848515 () Unit!123773)

(declare-fun Unit!123813 () Unit!123773)

(assert (=> b!4688906 (= lt!1848515 Unit!123813)))

(declare-fun bm!327684 () Bool)

(assert (=> bm!327684 (= call!327689 (forall!11313 (toList!5586 lt!1848242) (ite c!801742 lambda!206860 lambda!206861)))))

(assert (=> b!4688907 (= e!2925238 lt!1848242)))

(declare-fun lt!1848516 () Unit!123773)

(assert (=> b!4688907 (= lt!1848516 call!327690)))

(declare-fun call!327688 () Bool)

(assert (=> b!4688907 call!327688))

(declare-fun lt!1848504 () Unit!123773)

(assert (=> b!4688907 (= lt!1848504 lt!1848516)))

(assert (=> b!4688907 call!327689))

(declare-fun lt!1848517 () Unit!123773)

(declare-fun Unit!123816 () Unit!123773)

(assert (=> b!4688907 (= lt!1848517 Unit!123816)))

(declare-fun b!4688908 () Bool)

(declare-fun res!1977506 () Bool)

(assert (=> b!4688908 (=> (not res!1977506) (not e!2925237))))

(assert (=> b!4688908 (= res!1977506 (forall!11313 (toList!5586 lt!1848242) lambda!206863))))

(declare-fun b!4688909 () Bool)

(assert (=> b!4688909 (= e!2925236 call!327688)))

(declare-fun bm!327685 () Bool)

(assert (=> bm!327685 (= call!327688 (forall!11313 (toList!5586 lt!1848242) (ite c!801742 lambda!206860 lambda!206862)))))

(declare-fun b!4688910 () Bool)

(assert (=> b!4688910 (= e!2925237 (invariantList!1406 (toList!5586 lt!1848521)))))

(assert (= (and d!1490060 c!801742) b!4688907))

(assert (= (and d!1490060 (not c!801742)) b!4688906))

(assert (= (and b!4688906 res!1977505) b!4688909))

(assert (= (or b!4688907 b!4688906) bm!327683))

(assert (= (or b!4688907 b!4688906) bm!327684))

(assert (= (or b!4688907 b!4688909) bm!327685))

(assert (= (and d!1490060 res!1977504) b!4688908))

(assert (= (and b!4688908 res!1977506) b!4688910))

(declare-fun m!5590037 () Bool)

(assert (=> bm!327683 m!5590037))

(declare-fun m!5590039 () Bool)

(assert (=> b!4688908 m!5590039))

(declare-fun m!5590041 () Bool)

(assert (=> b!4688910 m!5590041))

(declare-fun m!5590043 () Bool)

(assert (=> d!1490060 m!5590043))

(declare-fun m!5590045 () Bool)

(assert (=> d!1490060 m!5590045))

(declare-fun m!5590047 () Bool)

(assert (=> bm!327685 m!5590047))

(declare-fun m!5590049 () Bool)

(assert (=> bm!327684 m!5590049))

(declare-fun m!5590051 () Bool)

(assert (=> b!4688906 m!5590051))

(declare-fun m!5590053 () Bool)

(assert (=> b!4688906 m!5590053))

(assert (=> b!4688906 m!5590053))

(declare-fun m!5590055 () Bool)

(assert (=> b!4688906 m!5590055))

(declare-fun m!5590057 () Bool)

(assert (=> b!4688906 m!5590057))

(declare-fun m!5590059 () Bool)

(assert (=> b!4688906 m!5590059))

(assert (=> b!4688906 m!5590059))

(declare-fun m!5590061 () Bool)

(assert (=> b!4688906 m!5590061))

(declare-fun m!5590063 () Bool)

(assert (=> b!4688906 m!5590063))

(assert (=> b!4688906 m!5590051))

(declare-fun m!5590065 () Bool)

(assert (=> b!4688906 m!5590065))

(declare-fun m!5590067 () Bool)

(assert (=> b!4688906 m!5590067))

(assert (=> b!4688906 m!5590055))

(declare-fun m!5590069 () Bool)

(assert (=> b!4688906 m!5590069))

(assert (=> b!4688712 d!1490060))

(declare-fun d!1490110 () Bool)

(declare-fun e!2925242 () Bool)

(assert (=> d!1490110 e!2925242))

(declare-fun res!1977512 () Bool)

(assert (=> d!1490110 (=> (not res!1977512) (not e!2925242))))

(declare-fun lt!1848537 () ListMap!4949)

(assert (=> d!1490110 (= res!1977512 (contains!15584 lt!1848537 (_1!30187 (h!58634 oldBucket!34))))))

(declare-fun lt!1848538 () List!52517)

(assert (=> d!1490110 (= lt!1848537 (ListMap!4950 lt!1848538))))

(declare-fun lt!1848540 () Unit!123773)

(declare-fun lt!1848539 () Unit!123773)

(assert (=> d!1490110 (= lt!1848540 lt!1848539)))

(assert (=> d!1490110 (= (getValueByKey!1771 lt!1848538 (_1!30187 (h!58634 oldBucket!34))) (Some!12064 (_2!30187 (h!58634 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!996 (List!52517 K!13770 V!14016) Unit!123773)

(assert (=> d!1490110 (= lt!1848539 (lemmaContainsTupThenGetReturnValue!996 lt!1848538 (_1!30187 (h!58634 oldBucket!34)) (_2!30187 (h!58634 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!504 (List!52517 K!13770 V!14016) List!52517)

(assert (=> d!1490110 (= lt!1848538 (insertNoDuplicatedKeys!504 (toList!5586 (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023))))) (_1!30187 (h!58634 oldBucket!34)) (_2!30187 (h!58634 oldBucket!34))))))

(assert (=> d!1490110 (= (+!2132 (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))) (h!58634 oldBucket!34)) lt!1848537)))

(declare-fun b!4688919 () Bool)

(declare-fun res!1977513 () Bool)

(assert (=> b!4688919 (=> (not res!1977513) (not e!2925242))))

(assert (=> b!4688919 (= res!1977513 (= (getValueByKey!1771 (toList!5586 lt!1848537) (_1!30187 (h!58634 oldBucket!34))) (Some!12064 (_2!30187 (h!58634 oldBucket!34)))))))

(declare-fun b!4688920 () Bool)

(declare-fun contains!15588 (List!52517 tuple2!53786) Bool)

(assert (=> b!4688920 (= e!2925242 (contains!15588 (toList!5586 lt!1848537) (h!58634 oldBucket!34)))))

(assert (= (and d!1490110 res!1977512) b!4688919))

(assert (= (and b!4688919 res!1977513) b!4688920))

(declare-fun m!5590071 () Bool)

(assert (=> d!1490110 m!5590071))

(declare-fun m!5590073 () Bool)

(assert (=> d!1490110 m!5590073))

(declare-fun m!5590075 () Bool)

(assert (=> d!1490110 m!5590075))

(declare-fun m!5590077 () Bool)

(assert (=> d!1490110 m!5590077))

(declare-fun m!5590079 () Bool)

(assert (=> b!4688919 m!5590079))

(declare-fun m!5590081 () Bool)

(assert (=> b!4688920 m!5590081))

(assert (=> b!4688712 d!1490110))

(declare-fun bs!1085830 () Bool)

(declare-fun d!1490112 () Bool)

(assert (= bs!1085830 (and d!1490112 start!474176)))

(declare-fun lambda!206864 () Int)

(assert (=> bs!1085830 (= lambda!206864 lambda!206769)))

(declare-fun bs!1085831 () Bool)

(assert (= bs!1085831 (and d!1490112 d!1490056)))

(assert (=> bs!1085831 (= lambda!206864 lambda!206781)))

(declare-fun lt!1848541 () ListMap!4949)

(assert (=> d!1490112 (invariantList!1406 (toList!5586 lt!1848541))))

(declare-fun e!2925243 () ListMap!4949)

(assert (=> d!1490112 (= lt!1848541 e!2925243)))

(declare-fun c!801743 () Bool)

(assert (=> d!1490112 (= c!801743 ((_ is Cons!52394) (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))))))

(assert (=> d!1490112 (forall!11311 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023))) lambda!206864)))

(assert (=> d!1490112 (= (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))) lt!1848541)))

(declare-fun b!4688921 () Bool)

(assert (=> b!4688921 (= e!2925243 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023))))) (extractMap!1874 (t!359690 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))))))))

(declare-fun b!4688922 () Bool)

(assert (=> b!4688922 (= e!2925243 (ListMap!4950 Nil!52393))))

(assert (= (and d!1490112 c!801743) b!4688921))

(assert (= (and d!1490112 (not c!801743)) b!4688922))

(declare-fun m!5590083 () Bool)

(assert (=> d!1490112 m!5590083))

(declare-fun m!5590085 () Bool)

(assert (=> d!1490112 m!5590085))

(declare-fun m!5590087 () Bool)

(assert (=> b!4688921 m!5590087))

(assert (=> b!4688921 m!5590087))

(declare-fun m!5590089 () Bool)

(assert (=> b!4688921 m!5590089))

(assert (=> b!4688712 d!1490112))

(declare-fun d!1490114 () Bool)

(assert (=> d!1490114 (= (head!9960 oldBucket!34) (h!58634 oldBucket!34))))

(assert (=> b!4688712 d!1490114))

(declare-fun d!1490116 () Bool)

(declare-fun e!2925249 () Bool)

(assert (=> d!1490116 e!2925249))

(declare-fun res!1977514 () Bool)

(assert (=> d!1490116 (=> res!1977514 e!2925249)))

(declare-fun e!2925246 () Bool)

(assert (=> d!1490116 (= res!1977514 e!2925246)))

(declare-fun res!1977515 () Bool)

(assert (=> d!1490116 (=> (not res!1977515) (not e!2925246))))

(declare-fun lt!1848546 () Bool)

(assert (=> d!1490116 (= res!1977515 (not lt!1848546))))

(declare-fun lt!1848542 () Bool)

(assert (=> d!1490116 (= lt!1848546 lt!1848542)))

(declare-fun lt!1848543 () Unit!123773)

(declare-fun e!2925245 () Unit!123773)

(assert (=> d!1490116 (= lt!1848543 e!2925245)))

(declare-fun c!801746 () Bool)

(assert (=> d!1490116 (= c!801746 lt!1848542)))

(assert (=> d!1490116 (= lt!1848542 (containsKey!3041 (toList!5586 (extractMap!1874 lt!1848226)) key!4653))))

(assert (=> d!1490116 (= (contains!15584 (extractMap!1874 lt!1848226) key!4653) lt!1848546)))

(declare-fun b!4688923 () Bool)

(declare-fun e!2925244 () Unit!123773)

(declare-fun Unit!123823 () Unit!123773)

(assert (=> b!4688923 (= e!2925244 Unit!123823)))

(declare-fun b!4688924 () Bool)

(assert (=> b!4688924 (= e!2925245 e!2925244)))

(declare-fun c!801744 () Bool)

(declare-fun call!327691 () Bool)

(assert (=> b!4688924 (= c!801744 call!327691)))

(declare-fun b!4688925 () Bool)

(declare-fun lt!1848544 () Unit!123773)

(assert (=> b!4688925 (= e!2925245 lt!1848544)))

(declare-fun lt!1848548 () Unit!123773)

(assert (=> b!4688925 (= lt!1848548 (lemmaContainsKeyImpliesGetValueByKeyDefined!1663 (toList!5586 (extractMap!1874 lt!1848226)) key!4653))))

(assert (=> b!4688925 (isDefined!9320 (getValueByKey!1771 (toList!5586 (extractMap!1874 lt!1848226)) key!4653))))

(declare-fun lt!1848547 () Unit!123773)

(assert (=> b!4688925 (= lt!1848547 lt!1848548)))

(assert (=> b!4688925 (= lt!1848544 (lemmaInListThenGetKeysListContains!841 (toList!5586 (extractMap!1874 lt!1848226)) key!4653))))

(assert (=> b!4688925 call!327691))

(declare-fun b!4688926 () Bool)

(declare-fun e!2925248 () List!52520)

(assert (=> b!4688926 (= e!2925248 (getKeysList!846 (toList!5586 (extractMap!1874 lt!1848226))))))

(declare-fun bm!327686 () Bool)

(assert (=> bm!327686 (= call!327691 (contains!15587 e!2925248 key!4653))))

(declare-fun c!801745 () Bool)

(assert (=> bm!327686 (= c!801745 c!801746)))

(declare-fun b!4688927 () Bool)

(declare-fun e!2925247 () Bool)

(assert (=> b!4688927 (= e!2925247 (contains!15587 (keys!18703 (extractMap!1874 lt!1848226)) key!4653))))

(declare-fun b!4688928 () Bool)

(assert (=> b!4688928 false))

(declare-fun lt!1848549 () Unit!123773)

(declare-fun lt!1848545 () Unit!123773)

(assert (=> b!4688928 (= lt!1848549 lt!1848545)))

(assert (=> b!4688928 (containsKey!3041 (toList!5586 (extractMap!1874 lt!1848226)) key!4653)))

(assert (=> b!4688928 (= lt!1848545 (lemmaInGetKeysListThenContainsKey!845 (toList!5586 (extractMap!1874 lt!1848226)) key!4653))))

(declare-fun Unit!123824 () Unit!123773)

(assert (=> b!4688928 (= e!2925244 Unit!123824)))

(declare-fun b!4688929 () Bool)

(assert (=> b!4688929 (= e!2925246 (not (contains!15587 (keys!18703 (extractMap!1874 lt!1848226)) key!4653)))))

(declare-fun b!4688930 () Bool)

(assert (=> b!4688930 (= e!2925248 (keys!18703 (extractMap!1874 lt!1848226)))))

(declare-fun b!4688931 () Bool)

(assert (=> b!4688931 (= e!2925249 e!2925247)))

(declare-fun res!1977516 () Bool)

(assert (=> b!4688931 (=> (not res!1977516) (not e!2925247))))

(assert (=> b!4688931 (= res!1977516 (isDefined!9320 (getValueByKey!1771 (toList!5586 (extractMap!1874 lt!1848226)) key!4653)))))

(assert (= (and d!1490116 c!801746) b!4688925))

(assert (= (and d!1490116 (not c!801746)) b!4688924))

(assert (= (and b!4688924 c!801744) b!4688928))

(assert (= (and b!4688924 (not c!801744)) b!4688923))

(assert (= (or b!4688925 b!4688924) bm!327686))

(assert (= (and bm!327686 c!801745) b!4688926))

(assert (= (and bm!327686 (not c!801745)) b!4688930))

(assert (= (and d!1490116 res!1977515) b!4688929))

(assert (= (and d!1490116 (not res!1977514)) b!4688931))

(assert (= (and b!4688931 res!1977516) b!4688927))

(declare-fun m!5590091 () Bool)

(assert (=> bm!327686 m!5590091))

(assert (=> b!4688927 m!5589665))

(declare-fun m!5590093 () Bool)

(assert (=> b!4688927 m!5590093))

(assert (=> b!4688927 m!5590093))

(declare-fun m!5590095 () Bool)

(assert (=> b!4688927 m!5590095))

(declare-fun m!5590097 () Bool)

(assert (=> b!4688926 m!5590097))

(declare-fun m!5590099 () Bool)

(assert (=> b!4688928 m!5590099))

(declare-fun m!5590101 () Bool)

(assert (=> b!4688928 m!5590101))

(assert (=> b!4688930 m!5589665))

(assert (=> b!4688930 m!5590093))

(declare-fun m!5590103 () Bool)

(assert (=> b!4688925 m!5590103))

(declare-fun m!5590105 () Bool)

(assert (=> b!4688925 m!5590105))

(assert (=> b!4688925 m!5590105))

(declare-fun m!5590107 () Bool)

(assert (=> b!4688925 m!5590107))

(declare-fun m!5590109 () Bool)

(assert (=> b!4688925 m!5590109))

(assert (=> b!4688929 m!5589665))

(assert (=> b!4688929 m!5590093))

(assert (=> b!4688929 m!5590093))

(assert (=> b!4688929 m!5590095))

(assert (=> b!4688931 m!5590105))

(assert (=> b!4688931 m!5590105))

(assert (=> b!4688931 m!5590107))

(assert (=> d!1490116 m!5590099))

(assert (=> b!4688712 d!1490116))

(declare-fun d!1490118 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9156 (List!52517) (InoxSet tuple2!53786))

(assert (=> d!1490118 (= (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848235 lt!1848223) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848235)) (= (content!9156 (toList!5586 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848235 lt!1848223) lt!1848242))) (content!9156 (toList!5586 (+!2132 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848235)))))))

(declare-fun bs!1085832 () Bool)

(assert (= bs!1085832 d!1490118))

(declare-fun m!5590111 () Bool)

(assert (=> bs!1085832 m!5590111))

(declare-fun m!5590113 () Bool)

(assert (=> bs!1085832 m!5590113))

(assert (=> b!4688712 d!1490118))

(declare-fun d!1490120 () Bool)

(assert (=> d!1490120 (= (head!9960 newBucket!218) (h!58634 newBucket!218))))

(assert (=> b!4688712 d!1490120))

(declare-fun bs!1085833 () Bool)

(declare-fun d!1490122 () Bool)

(assert (= bs!1085833 (and d!1490122 start!474176)))

(declare-fun lambda!206865 () Int)

(assert (=> bs!1085833 (= lambda!206865 lambda!206769)))

(declare-fun bs!1085834 () Bool)

(assert (= bs!1085834 (and d!1490122 d!1490056)))

(assert (=> bs!1085834 (= lambda!206865 lambda!206781)))

(declare-fun bs!1085835 () Bool)

(assert (= bs!1085835 (and d!1490122 d!1490112)))

(assert (=> bs!1085835 (= lambda!206865 lambda!206864)))

(declare-fun lt!1848550 () ListMap!4949)

(assert (=> d!1490122 (invariantList!1406 (toList!5586 lt!1848550))))

(declare-fun e!2925250 () ListMap!4949)

(assert (=> d!1490122 (= lt!1848550 e!2925250)))

(declare-fun c!801747 () Bool)

(assert (=> d!1490122 (= c!801747 ((_ is Cons!52394) lt!1848226))))

(assert (=> d!1490122 (forall!11311 lt!1848226 lambda!206865)))

(assert (=> d!1490122 (= (extractMap!1874 lt!1848226) lt!1848550)))

(declare-fun b!4688932 () Bool)

(assert (=> b!4688932 (= e!2925250 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 lt!1848226)) (extractMap!1874 (t!359690 lt!1848226))))))

(declare-fun b!4688933 () Bool)

(assert (=> b!4688933 (= e!2925250 (ListMap!4950 Nil!52393))))

(assert (= (and d!1490122 c!801747) b!4688932))

(assert (= (and d!1490122 (not c!801747)) b!4688933))

(declare-fun m!5590115 () Bool)

(assert (=> d!1490122 m!5590115))

(declare-fun m!5590117 () Bool)

(assert (=> d!1490122 m!5590117))

(declare-fun m!5590119 () Bool)

(assert (=> b!4688932 m!5590119))

(assert (=> b!4688932 m!5590119))

(declare-fun m!5590121 () Bool)

(assert (=> b!4688932 m!5590121))

(assert (=> b!4688712 d!1490122))

(declare-fun d!1490124 () Bool)

(declare-fun e!2925251 () Bool)

(assert (=> d!1490124 e!2925251))

(declare-fun res!1977517 () Bool)

(assert (=> d!1490124 (=> (not res!1977517) (not e!2925251))))

(declare-fun lt!1848551 () ListMap!4949)

(assert (=> d!1490124 (= res!1977517 (contains!15584 lt!1848551 (_1!30187 lt!1848235)))))

(declare-fun lt!1848552 () List!52517)

(assert (=> d!1490124 (= lt!1848551 (ListMap!4950 lt!1848552))))

(declare-fun lt!1848554 () Unit!123773)

(declare-fun lt!1848553 () Unit!123773)

(assert (=> d!1490124 (= lt!1848554 lt!1848553)))

(assert (=> d!1490124 (= (getValueByKey!1771 lt!1848552 (_1!30187 lt!1848235)) (Some!12064 (_2!30187 lt!1848235)))))

(assert (=> d!1490124 (= lt!1848553 (lemmaContainsTupThenGetReturnValue!996 lt!1848552 (_1!30187 lt!1848235) (_2!30187 lt!1848235)))))

(assert (=> d!1490124 (= lt!1848552 (insertNoDuplicatedKeys!504 (toList!5586 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242)) (_1!30187 lt!1848235) (_2!30187 lt!1848235)))))

(assert (=> d!1490124 (= (+!2132 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848235) lt!1848551)))

(declare-fun b!4688934 () Bool)

(declare-fun res!1977518 () Bool)

(assert (=> b!4688934 (=> (not res!1977518) (not e!2925251))))

(assert (=> b!4688934 (= res!1977518 (= (getValueByKey!1771 (toList!5586 lt!1848551) (_1!30187 lt!1848235)) (Some!12064 (_2!30187 lt!1848235))))))

(declare-fun b!4688935 () Bool)

(assert (=> b!4688935 (= e!2925251 (contains!15588 (toList!5586 lt!1848551) lt!1848235))))

(assert (= (and d!1490124 res!1977517) b!4688934))

(assert (= (and b!4688934 res!1977518) b!4688935))

(declare-fun m!5590123 () Bool)

(assert (=> d!1490124 m!5590123))

(declare-fun m!5590125 () Bool)

(assert (=> d!1490124 m!5590125))

(declare-fun m!5590127 () Bool)

(assert (=> d!1490124 m!5590127))

(declare-fun m!5590129 () Bool)

(assert (=> d!1490124 m!5590129))

(declare-fun m!5590131 () Bool)

(assert (=> b!4688934 m!5590131))

(declare-fun m!5590133 () Bool)

(assert (=> b!4688935 m!5590133))

(assert (=> b!4688712 d!1490124))

(declare-fun bs!1085836 () Bool)

(declare-fun b!4688937 () Bool)

(assert (= bs!1085836 (and b!4688937 d!1490032)))

(declare-fun lambda!206866 () Int)

(assert (=> bs!1085836 (not (= lambda!206866 lambda!206772))))

(declare-fun bs!1085837 () Bool)

(assert (= bs!1085837 (and b!4688937 b!4688906)))

(assert (=> bs!1085837 (= (= lt!1848242 lt!1848507) (= lambda!206866 lambda!206862))))

(declare-fun bs!1085838 () Bool)

(assert (= bs!1085838 (and b!4688937 d!1490060)))

(assert (=> bs!1085838 (= (= lt!1848242 lt!1848521) (= lambda!206866 lambda!206863))))

(declare-fun bs!1085839 () Bool)

(assert (= bs!1085839 (and b!4688937 b!4688907)))

(assert (=> bs!1085839 (= lambda!206866 lambda!206860)))

(declare-fun bs!1085840 () Bool)

(assert (= bs!1085840 (and b!4688937 d!1490058)))

(assert (=> bs!1085840 (not (= lambda!206866 lambda!206782))))

(assert (=> bs!1085837 (= lambda!206866 lambda!206861)))

(assert (=> b!4688937 true))

(declare-fun bs!1085841 () Bool)

(declare-fun b!4688936 () Bool)

(assert (= bs!1085841 (and b!4688936 d!1490032)))

(declare-fun lambda!206867 () Int)

(assert (=> bs!1085841 (not (= lambda!206867 lambda!206772))))

(declare-fun bs!1085842 () Bool)

(assert (= bs!1085842 (and b!4688936 b!4688906)))

(assert (=> bs!1085842 (= (= lt!1848242 lt!1848507) (= lambda!206867 lambda!206862))))

(declare-fun bs!1085843 () Bool)

(assert (= bs!1085843 (and b!4688936 d!1490060)))

(assert (=> bs!1085843 (= (= lt!1848242 lt!1848521) (= lambda!206867 lambda!206863))))

(declare-fun bs!1085844 () Bool)

(assert (= bs!1085844 (and b!4688936 b!4688937)))

(assert (=> bs!1085844 (= lambda!206867 lambda!206866)))

(declare-fun bs!1085845 () Bool)

(assert (= bs!1085845 (and b!4688936 b!4688907)))

(assert (=> bs!1085845 (= lambda!206867 lambda!206860)))

(declare-fun bs!1085846 () Bool)

(assert (= bs!1085846 (and b!4688936 d!1490058)))

(assert (=> bs!1085846 (not (= lambda!206867 lambda!206782))))

(assert (=> bs!1085842 (= lambda!206867 lambda!206861)))

(assert (=> b!4688936 true))

(declare-fun lambda!206868 () Int)

(assert (=> bs!1085841 (not (= lambda!206868 lambda!206772))))

(declare-fun lt!1848558 () ListMap!4949)

(assert (=> bs!1085842 (= (= lt!1848558 lt!1848507) (= lambda!206868 lambda!206862))))

(assert (=> bs!1085843 (= (= lt!1848558 lt!1848521) (= lambda!206868 lambda!206863))))

(assert (=> bs!1085844 (= (= lt!1848558 lt!1848242) (= lambda!206868 lambda!206866))))

(assert (=> bs!1085845 (= (= lt!1848558 lt!1848242) (= lambda!206868 lambda!206860))))

(assert (=> b!4688936 (= (= lt!1848558 lt!1848242) (= lambda!206868 lambda!206867))))

(assert (=> bs!1085846 (not (= lambda!206868 lambda!206782))))

(assert (=> bs!1085842 (= (= lt!1848558 lt!1848242) (= lambda!206868 lambda!206861))))

(assert (=> b!4688936 true))

(declare-fun bs!1085847 () Bool)

(declare-fun d!1490126 () Bool)

(assert (= bs!1085847 (and d!1490126 d!1490032)))

(declare-fun lambda!206869 () Int)

(assert (=> bs!1085847 (not (= lambda!206869 lambda!206772))))

(declare-fun bs!1085848 () Bool)

(assert (= bs!1085848 (and d!1490126 b!4688906)))

(declare-fun lt!1848572 () ListMap!4949)

(assert (=> bs!1085848 (= (= lt!1848572 lt!1848507) (= lambda!206869 lambda!206862))))

(declare-fun bs!1085849 () Bool)

(assert (= bs!1085849 (and d!1490126 d!1490060)))

(assert (=> bs!1085849 (= (= lt!1848572 lt!1848521) (= lambda!206869 lambda!206863))))

(declare-fun bs!1085850 () Bool)

(assert (= bs!1085850 (and d!1490126 b!4688937)))

(assert (=> bs!1085850 (= (= lt!1848572 lt!1848242) (= lambda!206869 lambda!206866))))

(declare-fun bs!1085851 () Bool)

(assert (= bs!1085851 (and d!1490126 b!4688907)))

(assert (=> bs!1085851 (= (= lt!1848572 lt!1848242) (= lambda!206869 lambda!206860))))

(declare-fun bs!1085852 () Bool)

(assert (= bs!1085852 (and d!1490126 b!4688936)))

(assert (=> bs!1085852 (= (= lt!1848572 lt!1848242) (= lambda!206869 lambda!206867))))

(declare-fun bs!1085853 () Bool)

(assert (= bs!1085853 (and d!1490126 d!1490058)))

(assert (=> bs!1085853 (not (= lambda!206869 lambda!206782))))

(assert (=> bs!1085852 (= (= lt!1848572 lt!1848558) (= lambda!206869 lambda!206868))))

(assert (=> bs!1085848 (= (= lt!1848572 lt!1848242) (= lambda!206869 lambda!206861))))

(assert (=> d!1490126 true))

(declare-fun e!2925253 () Bool)

(assert (=> d!1490126 e!2925253))

(declare-fun res!1977519 () Bool)

(assert (=> d!1490126 (=> (not res!1977519) (not e!2925253))))

(assert (=> d!1490126 (= res!1977519 (forall!11313 (Cons!52393 lt!1848235 lt!1848223) lambda!206869))))

(declare-fun e!2925254 () ListMap!4949)

(assert (=> d!1490126 (= lt!1848572 e!2925254)))

(declare-fun c!801748 () Bool)

(assert (=> d!1490126 (= c!801748 ((_ is Nil!52393) (Cons!52393 lt!1848235 lt!1848223)))))

(assert (=> d!1490126 (noDuplicateKeys!1848 (Cons!52393 lt!1848235 lt!1848223))))

(assert (=> d!1490126 (= (addToMapMapFromBucket!1280 (Cons!52393 lt!1848235 lt!1848223) lt!1848242) lt!1848572)))

(declare-fun bm!327687 () Bool)

(declare-fun call!327694 () Unit!123773)

(assert (=> bm!327687 (= call!327694 (lemmaContainsAllItsOwnKeys!694 lt!1848242))))

(assert (=> b!4688936 (= e!2925254 lt!1848558)))

(declare-fun lt!1848569 () ListMap!4949)

(assert (=> b!4688936 (= lt!1848569 (+!2132 lt!1848242 (h!58634 (Cons!52393 lt!1848235 lt!1848223))))))

(assert (=> b!4688936 (= lt!1848558 (addToMapMapFromBucket!1280 (t!359689 (Cons!52393 lt!1848235 lt!1848223)) (+!2132 lt!1848242 (h!58634 (Cons!52393 lt!1848235 lt!1848223)))))))

(declare-fun lt!1848574 () Unit!123773)

(assert (=> b!4688936 (= lt!1848574 call!327694)))

(declare-fun call!327693 () Bool)

(assert (=> b!4688936 call!327693))

(declare-fun lt!1848571 () Unit!123773)

(assert (=> b!4688936 (= lt!1848571 lt!1848574)))

(assert (=> b!4688936 (forall!11313 (toList!5586 lt!1848569) lambda!206868)))

(declare-fun lt!1848563 () Unit!123773)

(declare-fun Unit!123825 () Unit!123773)

(assert (=> b!4688936 (= lt!1848563 Unit!123825)))

(assert (=> b!4688936 (forall!11313 (t!359689 (Cons!52393 lt!1848235 lt!1848223)) lambda!206868)))

(declare-fun lt!1848561 () Unit!123773)

(declare-fun Unit!123826 () Unit!123773)

(assert (=> b!4688936 (= lt!1848561 Unit!123826)))

(declare-fun lt!1848556 () Unit!123773)

(declare-fun Unit!123827 () Unit!123773)

(assert (=> b!4688936 (= lt!1848556 Unit!123827)))

(declare-fun lt!1848575 () Unit!123773)

(assert (=> b!4688936 (= lt!1848575 (forallContained!3420 (toList!5586 lt!1848569) lambda!206868 (h!58634 (Cons!52393 lt!1848235 lt!1848223))))))

(assert (=> b!4688936 (contains!15584 lt!1848569 (_1!30187 (h!58634 (Cons!52393 lt!1848235 lt!1848223))))))

(declare-fun lt!1848559 () Unit!123773)

(declare-fun Unit!123828 () Unit!123773)

(assert (=> b!4688936 (= lt!1848559 Unit!123828)))

(assert (=> b!4688936 (contains!15584 lt!1848558 (_1!30187 (h!58634 (Cons!52393 lt!1848235 lt!1848223))))))

(declare-fun lt!1848564 () Unit!123773)

(declare-fun Unit!123829 () Unit!123773)

(assert (=> b!4688936 (= lt!1848564 Unit!123829)))

(assert (=> b!4688936 (forall!11313 (Cons!52393 lt!1848235 lt!1848223) lambda!206868)))

(declare-fun lt!1848570 () Unit!123773)

(declare-fun Unit!123830 () Unit!123773)

(assert (=> b!4688936 (= lt!1848570 Unit!123830)))

(assert (=> b!4688936 (forall!11313 (toList!5586 lt!1848569) lambda!206868)))

(declare-fun lt!1848560 () Unit!123773)

(declare-fun Unit!123831 () Unit!123773)

(assert (=> b!4688936 (= lt!1848560 Unit!123831)))

(declare-fun lt!1848562 () Unit!123773)

(declare-fun Unit!123832 () Unit!123773)

(assert (=> b!4688936 (= lt!1848562 Unit!123832)))

(declare-fun lt!1848565 () Unit!123773)

(assert (=> b!4688936 (= lt!1848565 (addForallContainsKeyThenBeforeAdding!693 lt!1848242 lt!1848558 (_1!30187 (h!58634 (Cons!52393 lt!1848235 lt!1848223))) (_2!30187 (h!58634 (Cons!52393 lt!1848235 lt!1848223)))))))

(assert (=> b!4688936 (forall!11313 (toList!5586 lt!1848242) lambda!206868)))

(declare-fun lt!1848557 () Unit!123773)

(assert (=> b!4688936 (= lt!1848557 lt!1848565)))

(assert (=> b!4688936 (forall!11313 (toList!5586 lt!1848242) lambda!206868)))

(declare-fun lt!1848573 () Unit!123773)

(declare-fun Unit!123833 () Unit!123773)

(assert (=> b!4688936 (= lt!1848573 Unit!123833)))

(declare-fun res!1977520 () Bool)

(assert (=> b!4688936 (= res!1977520 (forall!11313 (Cons!52393 lt!1848235 lt!1848223) lambda!206868))))

(declare-fun e!2925252 () Bool)

(assert (=> b!4688936 (=> (not res!1977520) (not e!2925252))))

(assert (=> b!4688936 e!2925252))

(declare-fun lt!1848566 () Unit!123773)

(declare-fun Unit!123834 () Unit!123773)

(assert (=> b!4688936 (= lt!1848566 Unit!123834)))

(declare-fun bm!327688 () Bool)

(assert (=> bm!327688 (= call!327693 (forall!11313 (toList!5586 lt!1848242) (ite c!801748 lambda!206866 lambda!206867)))))

(assert (=> b!4688937 (= e!2925254 lt!1848242)))

(declare-fun lt!1848567 () Unit!123773)

(assert (=> b!4688937 (= lt!1848567 call!327694)))

(declare-fun call!327692 () Bool)

(assert (=> b!4688937 call!327692))

(declare-fun lt!1848555 () Unit!123773)

(assert (=> b!4688937 (= lt!1848555 lt!1848567)))

(assert (=> b!4688937 call!327693))

(declare-fun lt!1848568 () Unit!123773)

(declare-fun Unit!123835 () Unit!123773)

(assert (=> b!4688937 (= lt!1848568 Unit!123835)))

(declare-fun b!4688938 () Bool)

(declare-fun res!1977521 () Bool)

(assert (=> b!4688938 (=> (not res!1977521) (not e!2925253))))

(assert (=> b!4688938 (= res!1977521 (forall!11313 (toList!5586 lt!1848242) lambda!206869))))

(declare-fun b!4688939 () Bool)

(assert (=> b!4688939 (= e!2925252 call!327692)))

(declare-fun bm!327689 () Bool)

(assert (=> bm!327689 (= call!327692 (forall!11313 (toList!5586 lt!1848242) (ite c!801748 lambda!206866 lambda!206868)))))

(declare-fun b!4688940 () Bool)

(assert (=> b!4688940 (= e!2925253 (invariantList!1406 (toList!5586 lt!1848572)))))

(assert (= (and d!1490126 c!801748) b!4688937))

(assert (= (and d!1490126 (not c!801748)) b!4688936))

(assert (= (and b!4688936 res!1977520) b!4688939))

(assert (= (or b!4688937 b!4688936) bm!327687))

(assert (= (or b!4688937 b!4688936) bm!327688))

(assert (= (or b!4688937 b!4688939) bm!327689))

(assert (= (and d!1490126 res!1977519) b!4688938))

(assert (= (and b!4688938 res!1977521) b!4688940))

(assert (=> bm!327687 m!5590037))

(declare-fun m!5590135 () Bool)

(assert (=> b!4688938 m!5590135))

(declare-fun m!5590137 () Bool)

(assert (=> b!4688940 m!5590137))

(declare-fun m!5590139 () Bool)

(assert (=> d!1490126 m!5590139))

(declare-fun m!5590141 () Bool)

(assert (=> d!1490126 m!5590141))

(declare-fun m!5590143 () Bool)

(assert (=> bm!327689 m!5590143))

(declare-fun m!5590145 () Bool)

(assert (=> bm!327688 m!5590145))

(declare-fun m!5590147 () Bool)

(assert (=> b!4688936 m!5590147))

(declare-fun m!5590149 () Bool)

(assert (=> b!4688936 m!5590149))

(assert (=> b!4688936 m!5590149))

(declare-fun m!5590151 () Bool)

(assert (=> b!4688936 m!5590151))

(declare-fun m!5590153 () Bool)

(assert (=> b!4688936 m!5590153))

(declare-fun m!5590155 () Bool)

(assert (=> b!4688936 m!5590155))

(assert (=> b!4688936 m!5590155))

(declare-fun m!5590157 () Bool)

(assert (=> b!4688936 m!5590157))

(declare-fun m!5590159 () Bool)

(assert (=> b!4688936 m!5590159))

(assert (=> b!4688936 m!5590147))

(declare-fun m!5590161 () Bool)

(assert (=> b!4688936 m!5590161))

(declare-fun m!5590163 () Bool)

(assert (=> b!4688936 m!5590163))

(assert (=> b!4688936 m!5590151))

(declare-fun m!5590165 () Bool)

(assert (=> b!4688936 m!5590165))

(assert (=> b!4688712 d!1490126))

(declare-fun bs!1085854 () Bool)

(declare-fun d!1490128 () Bool)

(assert (= bs!1085854 (and d!1490128 start!474176)))

(declare-fun lambda!206870 () Int)

(assert (=> bs!1085854 (= lambda!206870 lambda!206769)))

(declare-fun bs!1085855 () Bool)

(assert (= bs!1085855 (and d!1490128 d!1490056)))

(assert (=> bs!1085855 (= lambda!206870 lambda!206781)))

(declare-fun bs!1085856 () Bool)

(assert (= bs!1085856 (and d!1490128 d!1490112)))

(assert (=> bs!1085856 (= lambda!206870 lambda!206864)))

(declare-fun bs!1085857 () Bool)

(assert (= bs!1085857 (and d!1490128 d!1490122)))

(assert (=> bs!1085857 (= lambda!206870 lambda!206865)))

(declare-fun lt!1848576 () ListMap!4949)

(assert (=> d!1490128 (invariantList!1406 (toList!5586 lt!1848576))))

(declare-fun e!2925255 () ListMap!4949)

(assert (=> d!1490128 (= lt!1848576 e!2925255)))

(declare-fun c!801749 () Bool)

(assert (=> d!1490128 (= c!801749 ((_ is Cons!52394) lt!1848236))))

(assert (=> d!1490128 (forall!11311 lt!1848236 lambda!206870)))

(assert (=> d!1490128 (= (extractMap!1874 lt!1848236) lt!1848576)))

(declare-fun b!4688941 () Bool)

(assert (=> b!4688941 (= e!2925255 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 lt!1848236)) (extractMap!1874 (t!359690 lt!1848236))))))

(declare-fun b!4688942 () Bool)

(assert (=> b!4688942 (= e!2925255 (ListMap!4950 Nil!52393))))

(assert (= (and d!1490128 c!801749) b!4688941))

(assert (= (and d!1490128 (not c!801749)) b!4688942))

(declare-fun m!5590167 () Bool)

(assert (=> d!1490128 m!5590167))

(declare-fun m!5590169 () Bool)

(assert (=> d!1490128 m!5590169))

(declare-fun m!5590171 () Bool)

(assert (=> b!4688941 m!5590171))

(assert (=> b!4688941 m!5590171))

(declare-fun m!5590173 () Bool)

(assert (=> b!4688941 m!5590173))

(assert (=> b!4688712 d!1490128))

(declare-fun bs!1085858 () Bool)

(declare-fun d!1490130 () Bool)

(assert (= bs!1085858 (and d!1490130 d!1490122)))

(declare-fun lambda!206879 () Int)

(assert (=> bs!1085858 (= lambda!206879 lambda!206865)))

(declare-fun bs!1085859 () Bool)

(assert (= bs!1085859 (and d!1490130 d!1490112)))

(assert (=> bs!1085859 (= lambda!206879 lambda!206864)))

(declare-fun bs!1085860 () Bool)

(assert (= bs!1085860 (and d!1490130 d!1490128)))

(assert (=> bs!1085860 (= lambda!206879 lambda!206870)))

(declare-fun bs!1085861 () Bool)

(assert (= bs!1085861 (and d!1490130 d!1490056)))

(assert (=> bs!1085861 (= lambda!206879 lambda!206781)))

(declare-fun bs!1085862 () Bool)

(assert (= bs!1085862 (and d!1490130 start!474176)))

(assert (=> bs!1085862 (= lambda!206879 lambda!206769)))

(assert (=> d!1490130 (contains!15584 (extractMap!1874 (toList!5585 (ListLongMap!4116 lt!1848226))) key!4653)))

(declare-fun lt!1848595 () Unit!123773)

(declare-fun choose!32552 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> d!1490130 (= lt!1848595 (choose!32552 (ListLongMap!4116 lt!1848226) key!4653 hashF!1323))))

(assert (=> d!1490130 (forall!11311 (toList!5585 (ListLongMap!4116 lt!1848226)) lambda!206879)))

(assert (=> d!1490130 (= (lemmaListContainsThenExtractedMapContains!440 (ListLongMap!4116 lt!1848226) key!4653 hashF!1323) lt!1848595)))

(declare-fun bs!1085863 () Bool)

(assert (= bs!1085863 d!1490130))

(declare-fun m!5590175 () Bool)

(assert (=> bs!1085863 m!5590175))

(assert (=> bs!1085863 m!5590175))

(declare-fun m!5590177 () Bool)

(assert (=> bs!1085863 m!5590177))

(declare-fun m!5590179 () Bool)

(assert (=> bs!1085863 m!5590179))

(declare-fun m!5590181 () Bool)

(assert (=> bs!1085863 m!5590181))

(assert (=> b!4688712 d!1490130))

(declare-fun d!1490132 () Bool)

(assert (=> d!1490132 (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848229 lt!1848234) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848229))))

(declare-fun lt!1848617 () Unit!123773)

(declare-fun choose!32553 (tuple2!53786 List!52517 ListMap!4949) Unit!123773)

(assert (=> d!1490132 (= lt!1848617 (choose!32553 lt!1848229 lt!1848234 lt!1848242))))

(assert (=> d!1490132 (noDuplicateKeys!1848 lt!1848234)))

(assert (=> d!1490132 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!256 lt!1848229 lt!1848234 lt!1848242) lt!1848617)))

(declare-fun bs!1085870 () Bool)

(assert (= bs!1085870 d!1490132))

(assert (=> bs!1085870 m!5589649))

(assert (=> bs!1085870 m!5589651))

(assert (=> bs!1085870 m!5589653))

(declare-fun m!5590209 () Bool)

(assert (=> bs!1085870 m!5590209))

(assert (=> bs!1085870 m!5589649))

(assert (=> bs!1085870 m!5589663))

(assert (=> bs!1085870 m!5589651))

(assert (=> bs!1085870 m!5589663))

(declare-fun m!5590211 () Bool)

(assert (=> bs!1085870 m!5590211))

(assert (=> b!4688712 d!1490132))

(declare-fun bs!1085871 () Bool)

(declare-fun b!4688962 () Bool)

(assert (= bs!1085871 (and b!4688962 d!1490032)))

(declare-fun lambda!206881 () Int)

(assert (=> bs!1085871 (not (= lambda!206881 lambda!206772))))

(declare-fun bs!1085872 () Bool)

(assert (= bs!1085872 (and b!4688962 b!4688906)))

(assert (=> bs!1085872 (= (= lt!1848242 lt!1848507) (= lambda!206881 lambda!206862))))

(declare-fun bs!1085873 () Bool)

(assert (= bs!1085873 (and b!4688962 d!1490060)))

(assert (=> bs!1085873 (= (= lt!1848242 lt!1848521) (= lambda!206881 lambda!206863))))

(declare-fun bs!1085874 () Bool)

(assert (= bs!1085874 (and b!4688962 b!4688937)))

(assert (=> bs!1085874 (= lambda!206881 lambda!206866)))

(declare-fun bs!1085875 () Bool)

(assert (= bs!1085875 (and b!4688962 b!4688907)))

(assert (=> bs!1085875 (= lambda!206881 lambda!206860)))

(declare-fun bs!1085876 () Bool)

(assert (= bs!1085876 (and b!4688962 b!4688936)))

(assert (=> bs!1085876 (= lambda!206881 lambda!206867)))

(declare-fun bs!1085877 () Bool)

(assert (= bs!1085877 (and b!4688962 d!1490058)))

(assert (=> bs!1085877 (not (= lambda!206881 lambda!206782))))

(assert (=> bs!1085876 (= (= lt!1848242 lt!1848558) (= lambda!206881 lambda!206868))))

(assert (=> bs!1085872 (= lambda!206881 lambda!206861)))

(declare-fun bs!1085878 () Bool)

(assert (= bs!1085878 (and b!4688962 d!1490126)))

(assert (=> bs!1085878 (= (= lt!1848242 lt!1848572) (= lambda!206881 lambda!206869))))

(assert (=> b!4688962 true))

(declare-fun bs!1085879 () Bool)

(declare-fun b!4688961 () Bool)

(assert (= bs!1085879 (and b!4688961 d!1490032)))

(declare-fun lambda!206882 () Int)

(assert (=> bs!1085879 (not (= lambda!206882 lambda!206772))))

(declare-fun bs!1085880 () Bool)

(assert (= bs!1085880 (and b!4688961 b!4688906)))

(assert (=> bs!1085880 (= (= lt!1848242 lt!1848507) (= lambda!206882 lambda!206862))))

(declare-fun bs!1085881 () Bool)

(assert (= bs!1085881 (and b!4688961 d!1490060)))

(assert (=> bs!1085881 (= (= lt!1848242 lt!1848521) (= lambda!206882 lambda!206863))))

(declare-fun bs!1085882 () Bool)

(assert (= bs!1085882 (and b!4688961 b!4688937)))

(assert (=> bs!1085882 (= lambda!206882 lambda!206866)))

(declare-fun bs!1085884 () Bool)

(assert (= bs!1085884 (and b!4688961 b!4688936)))

(assert (=> bs!1085884 (= lambda!206882 lambda!206867)))

(declare-fun bs!1085885 () Bool)

(assert (= bs!1085885 (and b!4688961 d!1490058)))

(assert (=> bs!1085885 (not (= lambda!206882 lambda!206782))))

(assert (=> bs!1085884 (= (= lt!1848242 lt!1848558) (= lambda!206882 lambda!206868))))

(assert (=> bs!1085880 (= lambda!206882 lambda!206861)))

(declare-fun bs!1085886 () Bool)

(assert (= bs!1085886 (and b!4688961 d!1490126)))

(assert (=> bs!1085886 (= (= lt!1848242 lt!1848572) (= lambda!206882 lambda!206869))))

(declare-fun bs!1085887 () Bool)

(assert (= bs!1085887 (and b!4688961 b!4688962)))

(assert (=> bs!1085887 (= lambda!206882 lambda!206881)))

(declare-fun bs!1085888 () Bool)

(assert (= bs!1085888 (and b!4688961 b!4688907)))

(assert (=> bs!1085888 (= lambda!206882 lambda!206860)))

(assert (=> b!4688961 true))

(declare-fun lambda!206883 () Int)

(assert (=> bs!1085879 (not (= lambda!206883 lambda!206772))))

(declare-fun lt!1848621 () ListMap!4949)

(assert (=> bs!1085880 (= (= lt!1848621 lt!1848507) (= lambda!206883 lambda!206862))))

(assert (=> bs!1085881 (= (= lt!1848621 lt!1848521) (= lambda!206883 lambda!206863))))

(assert (=> bs!1085882 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206866))))

(assert (=> bs!1085884 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206867))))

(assert (=> bs!1085884 (= (= lt!1848621 lt!1848558) (= lambda!206883 lambda!206868))))

(assert (=> bs!1085880 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206861))))

(assert (=> bs!1085886 (= (= lt!1848621 lt!1848572) (= lambda!206883 lambda!206869))))

(assert (=> bs!1085887 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206881))))

(assert (=> bs!1085888 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206860))))

(assert (=> b!4688961 (= (= lt!1848621 lt!1848242) (= lambda!206883 lambda!206882))))

(assert (=> bs!1085885 (not (= lambda!206883 lambda!206782))))

(assert (=> b!4688961 true))

(declare-fun bs!1085889 () Bool)

(declare-fun d!1490138 () Bool)

(assert (= bs!1085889 (and d!1490138 d!1490032)))

(declare-fun lambda!206884 () Int)

(assert (=> bs!1085889 (not (= lambda!206884 lambda!206772))))

(declare-fun bs!1085890 () Bool)

(assert (= bs!1085890 (and d!1490138 b!4688961)))

(declare-fun lt!1848635 () ListMap!4949)

(assert (=> bs!1085890 (= (= lt!1848635 lt!1848621) (= lambda!206884 lambda!206883))))

(declare-fun bs!1085891 () Bool)

(assert (= bs!1085891 (and d!1490138 b!4688906)))

(assert (=> bs!1085891 (= (= lt!1848635 lt!1848507) (= lambda!206884 lambda!206862))))

(declare-fun bs!1085892 () Bool)

(assert (= bs!1085892 (and d!1490138 d!1490060)))

(assert (=> bs!1085892 (= (= lt!1848635 lt!1848521) (= lambda!206884 lambda!206863))))

(declare-fun bs!1085893 () Bool)

(assert (= bs!1085893 (and d!1490138 b!4688937)))

(assert (=> bs!1085893 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206866))))

(declare-fun bs!1085894 () Bool)

(assert (= bs!1085894 (and d!1490138 b!4688936)))

(assert (=> bs!1085894 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206867))))

(assert (=> bs!1085894 (= (= lt!1848635 lt!1848558) (= lambda!206884 lambda!206868))))

(assert (=> bs!1085891 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206861))))

(declare-fun bs!1085895 () Bool)

(assert (= bs!1085895 (and d!1490138 d!1490126)))

(assert (=> bs!1085895 (= (= lt!1848635 lt!1848572) (= lambda!206884 lambda!206869))))

(declare-fun bs!1085896 () Bool)

(assert (= bs!1085896 (and d!1490138 b!4688962)))

(assert (=> bs!1085896 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206881))))

(declare-fun bs!1085897 () Bool)

(assert (= bs!1085897 (and d!1490138 b!4688907)))

(assert (=> bs!1085897 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206860))))

(assert (=> bs!1085890 (= (= lt!1848635 lt!1848242) (= lambda!206884 lambda!206882))))

(declare-fun bs!1085898 () Bool)

(assert (= bs!1085898 (and d!1490138 d!1490058)))

(assert (=> bs!1085898 (not (= lambda!206884 lambda!206782))))

(assert (=> d!1490138 true))

(declare-fun e!2925267 () Bool)

(assert (=> d!1490138 e!2925267))

(declare-fun res!1977536 () Bool)

(assert (=> d!1490138 (=> (not res!1977536) (not e!2925267))))

(assert (=> d!1490138 (= res!1977536 (forall!11313 (Cons!52393 lt!1848229 lt!1848234) lambda!206884))))

(declare-fun e!2925268 () ListMap!4949)

(assert (=> d!1490138 (= lt!1848635 e!2925268)))

(declare-fun c!801752 () Bool)

(assert (=> d!1490138 (= c!801752 ((_ is Nil!52393) (Cons!52393 lt!1848229 lt!1848234)))))

(assert (=> d!1490138 (noDuplicateKeys!1848 (Cons!52393 lt!1848229 lt!1848234))))

(assert (=> d!1490138 (= (addToMapMapFromBucket!1280 (Cons!52393 lt!1848229 lt!1848234) lt!1848242) lt!1848635)))

(declare-fun bm!327690 () Bool)

(declare-fun call!327697 () Unit!123773)

(assert (=> bm!327690 (= call!327697 (lemmaContainsAllItsOwnKeys!694 lt!1848242))))

(assert (=> b!4688961 (= e!2925268 lt!1848621)))

(declare-fun lt!1848632 () ListMap!4949)

(assert (=> b!4688961 (= lt!1848632 (+!2132 lt!1848242 (h!58634 (Cons!52393 lt!1848229 lt!1848234))))))

(assert (=> b!4688961 (= lt!1848621 (addToMapMapFromBucket!1280 (t!359689 (Cons!52393 lt!1848229 lt!1848234)) (+!2132 lt!1848242 (h!58634 (Cons!52393 lt!1848229 lt!1848234)))))))

(declare-fun lt!1848637 () Unit!123773)

(assert (=> b!4688961 (= lt!1848637 call!327697)))

(declare-fun call!327696 () Bool)

(assert (=> b!4688961 call!327696))

(declare-fun lt!1848634 () Unit!123773)

(assert (=> b!4688961 (= lt!1848634 lt!1848637)))

(assert (=> b!4688961 (forall!11313 (toList!5586 lt!1848632) lambda!206883)))

(declare-fun lt!1848626 () Unit!123773)

(declare-fun Unit!123847 () Unit!123773)

(assert (=> b!4688961 (= lt!1848626 Unit!123847)))

(assert (=> b!4688961 (forall!11313 (t!359689 (Cons!52393 lt!1848229 lt!1848234)) lambda!206883)))

(declare-fun lt!1848624 () Unit!123773)

(declare-fun Unit!123848 () Unit!123773)

(assert (=> b!4688961 (= lt!1848624 Unit!123848)))

(declare-fun lt!1848619 () Unit!123773)

(declare-fun Unit!123849 () Unit!123773)

(assert (=> b!4688961 (= lt!1848619 Unit!123849)))

(declare-fun lt!1848638 () Unit!123773)

(assert (=> b!4688961 (= lt!1848638 (forallContained!3420 (toList!5586 lt!1848632) lambda!206883 (h!58634 (Cons!52393 lt!1848229 lt!1848234))))))

(assert (=> b!4688961 (contains!15584 lt!1848632 (_1!30187 (h!58634 (Cons!52393 lt!1848229 lt!1848234))))))

(declare-fun lt!1848622 () Unit!123773)

(declare-fun Unit!123850 () Unit!123773)

(assert (=> b!4688961 (= lt!1848622 Unit!123850)))

(assert (=> b!4688961 (contains!15584 lt!1848621 (_1!30187 (h!58634 (Cons!52393 lt!1848229 lt!1848234))))))

(declare-fun lt!1848627 () Unit!123773)

(declare-fun Unit!123851 () Unit!123773)

(assert (=> b!4688961 (= lt!1848627 Unit!123851)))

(assert (=> b!4688961 (forall!11313 (Cons!52393 lt!1848229 lt!1848234) lambda!206883)))

(declare-fun lt!1848633 () Unit!123773)

(declare-fun Unit!123852 () Unit!123773)

(assert (=> b!4688961 (= lt!1848633 Unit!123852)))

(assert (=> b!4688961 (forall!11313 (toList!5586 lt!1848632) lambda!206883)))

(declare-fun lt!1848623 () Unit!123773)

(declare-fun Unit!123853 () Unit!123773)

(assert (=> b!4688961 (= lt!1848623 Unit!123853)))

(declare-fun lt!1848625 () Unit!123773)

(declare-fun Unit!123854 () Unit!123773)

(assert (=> b!4688961 (= lt!1848625 Unit!123854)))

(declare-fun lt!1848628 () Unit!123773)

(assert (=> b!4688961 (= lt!1848628 (addForallContainsKeyThenBeforeAdding!693 lt!1848242 lt!1848621 (_1!30187 (h!58634 (Cons!52393 lt!1848229 lt!1848234))) (_2!30187 (h!58634 (Cons!52393 lt!1848229 lt!1848234)))))))

(assert (=> b!4688961 (forall!11313 (toList!5586 lt!1848242) lambda!206883)))

(declare-fun lt!1848620 () Unit!123773)

(assert (=> b!4688961 (= lt!1848620 lt!1848628)))

(assert (=> b!4688961 (forall!11313 (toList!5586 lt!1848242) lambda!206883)))

(declare-fun lt!1848636 () Unit!123773)

(declare-fun Unit!123855 () Unit!123773)

(assert (=> b!4688961 (= lt!1848636 Unit!123855)))

(declare-fun res!1977537 () Bool)

(assert (=> b!4688961 (= res!1977537 (forall!11313 (Cons!52393 lt!1848229 lt!1848234) lambda!206883))))

(declare-fun e!2925266 () Bool)

(assert (=> b!4688961 (=> (not res!1977537) (not e!2925266))))

(assert (=> b!4688961 e!2925266))

(declare-fun lt!1848629 () Unit!123773)

(declare-fun Unit!123856 () Unit!123773)

(assert (=> b!4688961 (= lt!1848629 Unit!123856)))

(declare-fun bm!327691 () Bool)

(assert (=> bm!327691 (= call!327696 (forall!11313 (toList!5586 lt!1848242) (ite c!801752 lambda!206881 lambda!206882)))))

(assert (=> b!4688962 (= e!2925268 lt!1848242)))

(declare-fun lt!1848630 () Unit!123773)

(assert (=> b!4688962 (= lt!1848630 call!327697)))

(declare-fun call!327695 () Bool)

(assert (=> b!4688962 call!327695))

(declare-fun lt!1848618 () Unit!123773)

(assert (=> b!4688962 (= lt!1848618 lt!1848630)))

(assert (=> b!4688962 call!327696))

(declare-fun lt!1848631 () Unit!123773)

(declare-fun Unit!123857 () Unit!123773)

(assert (=> b!4688962 (= lt!1848631 Unit!123857)))

(declare-fun b!4688963 () Bool)

(declare-fun res!1977538 () Bool)

(assert (=> b!4688963 (=> (not res!1977538) (not e!2925267))))

(assert (=> b!4688963 (= res!1977538 (forall!11313 (toList!5586 lt!1848242) lambda!206884))))

(declare-fun b!4688964 () Bool)

(assert (=> b!4688964 (= e!2925266 call!327695)))

(declare-fun bm!327692 () Bool)

(assert (=> bm!327692 (= call!327695 (forall!11313 (toList!5586 lt!1848242) (ite c!801752 lambda!206881 lambda!206883)))))

(declare-fun b!4688965 () Bool)

(assert (=> b!4688965 (= e!2925267 (invariantList!1406 (toList!5586 lt!1848635)))))

(assert (= (and d!1490138 c!801752) b!4688962))

(assert (= (and d!1490138 (not c!801752)) b!4688961))

(assert (= (and b!4688961 res!1977537) b!4688964))

(assert (= (or b!4688962 b!4688961) bm!327690))

(assert (= (or b!4688962 b!4688961) bm!327691))

(assert (= (or b!4688962 b!4688964) bm!327692))

(assert (= (and d!1490138 res!1977536) b!4688963))

(assert (= (and b!4688963 res!1977538) b!4688965))

(assert (=> bm!327690 m!5590037))

(declare-fun m!5590227 () Bool)

(assert (=> b!4688963 m!5590227))

(declare-fun m!5590229 () Bool)

(assert (=> b!4688965 m!5590229))

(declare-fun m!5590231 () Bool)

(assert (=> d!1490138 m!5590231))

(declare-fun m!5590233 () Bool)

(assert (=> d!1490138 m!5590233))

(declare-fun m!5590235 () Bool)

(assert (=> bm!327692 m!5590235))

(declare-fun m!5590237 () Bool)

(assert (=> bm!327691 m!5590237))

(declare-fun m!5590239 () Bool)

(assert (=> b!4688961 m!5590239))

(declare-fun m!5590241 () Bool)

(assert (=> b!4688961 m!5590241))

(assert (=> b!4688961 m!5590241))

(declare-fun m!5590243 () Bool)

(assert (=> b!4688961 m!5590243))

(declare-fun m!5590245 () Bool)

(assert (=> b!4688961 m!5590245))

(declare-fun m!5590247 () Bool)

(assert (=> b!4688961 m!5590247))

(assert (=> b!4688961 m!5590247))

(declare-fun m!5590249 () Bool)

(assert (=> b!4688961 m!5590249))

(declare-fun m!5590251 () Bool)

(assert (=> b!4688961 m!5590251))

(assert (=> b!4688961 m!5590239))

(declare-fun m!5590253 () Bool)

(assert (=> b!4688961 m!5590253))

(declare-fun m!5590255 () Bool)

(assert (=> b!4688961 m!5590255))

(assert (=> b!4688961 m!5590243))

(declare-fun m!5590257 () Bool)

(assert (=> b!4688961 m!5590257))

(assert (=> b!4688712 d!1490138))

(declare-fun d!1490146 () Bool)

(assert (=> d!1490146 (= (eq!1007 (extractMap!1874 lt!1848236) (+!2132 (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))) (h!58634 oldBucket!34))) (= (content!9156 (toList!5586 (extractMap!1874 lt!1848236))) (content!9156 (toList!5586 (+!2132 (extractMap!1874 (Cons!52394 (tuple2!53789 hash!405 lt!1848223) (t!359690 (toList!5585 lm!2023)))) (h!58634 oldBucket!34))))))))

(declare-fun bs!1085906 () Bool)

(assert (= bs!1085906 d!1490146))

(declare-fun m!5590259 () Bool)

(assert (=> bs!1085906 m!5590259))

(declare-fun m!5590261 () Bool)

(assert (=> bs!1085906 m!5590261))

(assert (=> b!4688712 d!1490146))

(declare-fun d!1490148 () Bool)

(assert (=> d!1490148 (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848235 lt!1848223) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848223 lt!1848242) lt!1848235))))

(declare-fun lt!1848646 () Unit!123773)

(assert (=> d!1490148 (= lt!1848646 (choose!32553 lt!1848235 lt!1848223 lt!1848242))))

(assert (=> d!1490148 (noDuplicateKeys!1848 lt!1848223)))

(assert (=> d!1490148 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!256 lt!1848235 lt!1848223 lt!1848242) lt!1848646)))

(declare-fun bs!1085907 () Bool)

(assert (= bs!1085907 d!1490148))

(assert (=> bs!1085907 m!5589677))

(assert (=> bs!1085907 m!5589673))

(assert (=> bs!1085907 m!5589681))

(declare-fun m!5590263 () Bool)

(assert (=> bs!1085907 m!5590263))

(assert (=> bs!1085907 m!5589677))

(assert (=> bs!1085907 m!5589659))

(assert (=> bs!1085907 m!5589673))

(assert (=> bs!1085907 m!5589659))

(assert (=> bs!1085907 m!5590045))

(assert (=> b!4688712 d!1490148))

(declare-fun bs!1085908 () Bool)

(declare-fun b!4688976 () Bool)

(assert (= bs!1085908 (and b!4688976 d!1490032)))

(declare-fun lambda!206888 () Int)

(assert (=> bs!1085908 (not (= lambda!206888 lambda!206772))))

(declare-fun bs!1085909 () Bool)

(assert (= bs!1085909 (and b!4688976 b!4688961)))

(assert (=> bs!1085909 (= (= lt!1848242 lt!1848621) (= lambda!206888 lambda!206883))))

(declare-fun bs!1085910 () Bool)

(assert (= bs!1085910 (and b!4688976 b!4688906)))

(assert (=> bs!1085910 (= (= lt!1848242 lt!1848507) (= lambda!206888 lambda!206862))))

(declare-fun bs!1085911 () Bool)

(assert (= bs!1085911 (and b!4688976 d!1490060)))

(assert (=> bs!1085911 (= (= lt!1848242 lt!1848521) (= lambda!206888 lambda!206863))))

(declare-fun bs!1085912 () Bool)

(assert (= bs!1085912 (and b!4688976 b!4688937)))

(assert (=> bs!1085912 (= lambda!206888 lambda!206866)))

(declare-fun bs!1085913 () Bool)

(assert (= bs!1085913 (and b!4688976 b!4688936)))

(assert (=> bs!1085913 (= lambda!206888 lambda!206867)))

(assert (=> bs!1085913 (= (= lt!1848242 lt!1848558) (= lambda!206888 lambda!206868))))

(assert (=> bs!1085910 (= lambda!206888 lambda!206861)))

(declare-fun bs!1085914 () Bool)

(assert (= bs!1085914 (and b!4688976 d!1490138)))

(assert (=> bs!1085914 (= (= lt!1848242 lt!1848635) (= lambda!206888 lambda!206884))))

(declare-fun bs!1085915 () Bool)

(assert (= bs!1085915 (and b!4688976 d!1490126)))

(assert (=> bs!1085915 (= (= lt!1848242 lt!1848572) (= lambda!206888 lambda!206869))))

(declare-fun bs!1085916 () Bool)

(assert (= bs!1085916 (and b!4688976 b!4688962)))

(assert (=> bs!1085916 (= lambda!206888 lambda!206881)))

(declare-fun bs!1085917 () Bool)

(assert (= bs!1085917 (and b!4688976 b!4688907)))

(assert (=> bs!1085917 (= lambda!206888 lambda!206860)))

(assert (=> bs!1085909 (= lambda!206888 lambda!206882)))

(declare-fun bs!1085918 () Bool)

(assert (= bs!1085918 (and b!4688976 d!1490058)))

(assert (=> bs!1085918 (not (= lambda!206888 lambda!206782))))

(assert (=> b!4688976 true))

(declare-fun bs!1085919 () Bool)

(declare-fun b!4688975 () Bool)

(assert (= bs!1085919 (and b!4688975 d!1490032)))

(declare-fun lambda!206889 () Int)

(assert (=> bs!1085919 (not (= lambda!206889 lambda!206772))))

(declare-fun bs!1085920 () Bool)

(assert (= bs!1085920 (and b!4688975 b!4688961)))

(assert (=> bs!1085920 (= (= lt!1848242 lt!1848621) (= lambda!206889 lambda!206883))))

(declare-fun bs!1085921 () Bool)

(assert (= bs!1085921 (and b!4688975 b!4688906)))

(assert (=> bs!1085921 (= (= lt!1848242 lt!1848507) (= lambda!206889 lambda!206862))))

(declare-fun bs!1085922 () Bool)

(assert (= bs!1085922 (and b!4688975 d!1490060)))

(assert (=> bs!1085922 (= (= lt!1848242 lt!1848521) (= lambda!206889 lambda!206863))))

(declare-fun bs!1085923 () Bool)

(assert (= bs!1085923 (and b!4688975 b!4688976)))

(assert (=> bs!1085923 (= lambda!206889 lambda!206888)))

(declare-fun bs!1085924 () Bool)

(assert (= bs!1085924 (and b!4688975 b!4688937)))

(assert (=> bs!1085924 (= lambda!206889 lambda!206866)))

(declare-fun bs!1085925 () Bool)

(assert (= bs!1085925 (and b!4688975 b!4688936)))

(assert (=> bs!1085925 (= lambda!206889 lambda!206867)))

(assert (=> bs!1085925 (= (= lt!1848242 lt!1848558) (= lambda!206889 lambda!206868))))

(assert (=> bs!1085921 (= lambda!206889 lambda!206861)))

(declare-fun bs!1085926 () Bool)

(assert (= bs!1085926 (and b!4688975 d!1490138)))

(assert (=> bs!1085926 (= (= lt!1848242 lt!1848635) (= lambda!206889 lambda!206884))))

(declare-fun bs!1085927 () Bool)

(assert (= bs!1085927 (and b!4688975 d!1490126)))

(assert (=> bs!1085927 (= (= lt!1848242 lt!1848572) (= lambda!206889 lambda!206869))))

(declare-fun bs!1085928 () Bool)

(assert (= bs!1085928 (and b!4688975 b!4688962)))

(assert (=> bs!1085928 (= lambda!206889 lambda!206881)))

(declare-fun bs!1085929 () Bool)

(assert (= bs!1085929 (and b!4688975 b!4688907)))

(assert (=> bs!1085929 (= lambda!206889 lambda!206860)))

(assert (=> bs!1085920 (= lambda!206889 lambda!206882)))

(declare-fun bs!1085930 () Bool)

(assert (= bs!1085930 (and b!4688975 d!1490058)))

(assert (=> bs!1085930 (not (= lambda!206889 lambda!206782))))

(assert (=> b!4688975 true))

(declare-fun lt!1848650 () ListMap!4949)

(declare-fun lambda!206890 () Int)

(assert (=> bs!1085920 (= (= lt!1848650 lt!1848621) (= lambda!206890 lambda!206883))))

(assert (=> bs!1085921 (= (= lt!1848650 lt!1848507) (= lambda!206890 lambda!206862))))

(assert (=> bs!1085922 (= (= lt!1848650 lt!1848521) (= lambda!206890 lambda!206863))))

(assert (=> bs!1085923 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206888))))

(assert (=> bs!1085924 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206866))))

(assert (=> bs!1085925 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206867))))

(assert (=> bs!1085925 (= (= lt!1848650 lt!1848558) (= lambda!206890 lambda!206868))))

(assert (=> bs!1085921 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206861))))

(assert (=> bs!1085926 (= (= lt!1848650 lt!1848635) (= lambda!206890 lambda!206884))))

(assert (=> bs!1085927 (= (= lt!1848650 lt!1848572) (= lambda!206890 lambda!206869))))

(assert (=> bs!1085919 (not (= lambda!206890 lambda!206772))))

(assert (=> b!4688975 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206889))))

(assert (=> bs!1085928 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206881))))

(assert (=> bs!1085929 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206860))))

(assert (=> bs!1085920 (= (= lt!1848650 lt!1848242) (= lambda!206890 lambda!206882))))

(assert (=> bs!1085930 (not (= lambda!206890 lambda!206782))))

(assert (=> b!4688975 true))

(declare-fun bs!1085931 () Bool)

(declare-fun d!1490152 () Bool)

(assert (= bs!1085931 (and d!1490152 b!4688961)))

(declare-fun lt!1848664 () ListMap!4949)

(declare-fun lambda!206891 () Int)

(assert (=> bs!1085931 (= (= lt!1848664 lt!1848621) (= lambda!206891 lambda!206883))))

(declare-fun bs!1085932 () Bool)

(assert (= bs!1085932 (and d!1490152 b!4688906)))

(assert (=> bs!1085932 (= (= lt!1848664 lt!1848507) (= lambda!206891 lambda!206862))))

(declare-fun bs!1085933 () Bool)

(assert (= bs!1085933 (and d!1490152 d!1490060)))

(assert (=> bs!1085933 (= (= lt!1848664 lt!1848521) (= lambda!206891 lambda!206863))))

(declare-fun bs!1085934 () Bool)

(assert (= bs!1085934 (and d!1490152 b!4688976)))

(assert (=> bs!1085934 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206888))))

(declare-fun bs!1085935 () Bool)

(assert (= bs!1085935 (and d!1490152 b!4688937)))

(assert (=> bs!1085935 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206866))))

(declare-fun bs!1085936 () Bool)

(assert (= bs!1085936 (and d!1490152 b!4688936)))

(assert (=> bs!1085936 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206867))))

(assert (=> bs!1085932 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206861))))

(declare-fun bs!1085937 () Bool)

(assert (= bs!1085937 (and d!1490152 d!1490138)))

(assert (=> bs!1085937 (= (= lt!1848664 lt!1848635) (= lambda!206891 lambda!206884))))

(declare-fun bs!1085938 () Bool)

(assert (= bs!1085938 (and d!1490152 d!1490126)))

(assert (=> bs!1085938 (= (= lt!1848664 lt!1848572) (= lambda!206891 lambda!206869))))

(declare-fun bs!1085939 () Bool)

(assert (= bs!1085939 (and d!1490152 d!1490032)))

(assert (=> bs!1085939 (not (= lambda!206891 lambda!206772))))

(declare-fun bs!1085940 () Bool)

(assert (= bs!1085940 (and d!1490152 b!4688975)))

(assert (=> bs!1085940 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206889))))

(declare-fun bs!1085941 () Bool)

(assert (= bs!1085941 (and d!1490152 b!4688962)))

(assert (=> bs!1085941 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206881))))

(declare-fun bs!1085942 () Bool)

(assert (= bs!1085942 (and d!1490152 b!4688907)))

(assert (=> bs!1085942 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206860))))

(assert (=> bs!1085931 (= (= lt!1848664 lt!1848242) (= lambda!206891 lambda!206882))))

(declare-fun bs!1085943 () Bool)

(assert (= bs!1085943 (and d!1490152 d!1490058)))

(assert (=> bs!1085943 (not (= lambda!206891 lambda!206782))))

(assert (=> bs!1085940 (= (= lt!1848664 lt!1848650) (= lambda!206891 lambda!206890))))

(assert (=> bs!1085936 (= (= lt!1848664 lt!1848558) (= lambda!206891 lambda!206868))))

(assert (=> d!1490152 true))

(declare-fun e!2925278 () Bool)

(assert (=> d!1490152 e!2925278))

(declare-fun res!1977546 () Bool)

(assert (=> d!1490152 (=> (not res!1977546) (not e!2925278))))

(assert (=> d!1490152 (= res!1977546 (forall!11313 lt!1848234 lambda!206891))))

(declare-fun e!2925279 () ListMap!4949)

(assert (=> d!1490152 (= lt!1848664 e!2925279)))

(declare-fun c!801754 () Bool)

(assert (=> d!1490152 (= c!801754 ((_ is Nil!52393) lt!1848234))))

(assert (=> d!1490152 (noDuplicateKeys!1848 lt!1848234)))

(assert (=> d!1490152 (= (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848664)))

(declare-fun bm!327693 () Bool)

(declare-fun call!327700 () Unit!123773)

(assert (=> bm!327693 (= call!327700 (lemmaContainsAllItsOwnKeys!694 lt!1848242))))

(assert (=> b!4688975 (= e!2925279 lt!1848650)))

(declare-fun lt!1848661 () ListMap!4949)

(assert (=> b!4688975 (= lt!1848661 (+!2132 lt!1848242 (h!58634 lt!1848234)))))

(assert (=> b!4688975 (= lt!1848650 (addToMapMapFromBucket!1280 (t!359689 lt!1848234) (+!2132 lt!1848242 (h!58634 lt!1848234))))))

(declare-fun lt!1848666 () Unit!123773)

(assert (=> b!4688975 (= lt!1848666 call!327700)))

(declare-fun call!327699 () Bool)

(assert (=> b!4688975 call!327699))

(declare-fun lt!1848663 () Unit!123773)

(assert (=> b!4688975 (= lt!1848663 lt!1848666)))

(assert (=> b!4688975 (forall!11313 (toList!5586 lt!1848661) lambda!206890)))

(declare-fun lt!1848655 () Unit!123773)

(declare-fun Unit!123859 () Unit!123773)

(assert (=> b!4688975 (= lt!1848655 Unit!123859)))

(assert (=> b!4688975 (forall!11313 (t!359689 lt!1848234) lambda!206890)))

(declare-fun lt!1848653 () Unit!123773)

(declare-fun Unit!123860 () Unit!123773)

(assert (=> b!4688975 (= lt!1848653 Unit!123860)))

(declare-fun lt!1848648 () Unit!123773)

(declare-fun Unit!123861 () Unit!123773)

(assert (=> b!4688975 (= lt!1848648 Unit!123861)))

(declare-fun lt!1848667 () Unit!123773)

(assert (=> b!4688975 (= lt!1848667 (forallContained!3420 (toList!5586 lt!1848661) lambda!206890 (h!58634 lt!1848234)))))

(assert (=> b!4688975 (contains!15584 lt!1848661 (_1!30187 (h!58634 lt!1848234)))))

(declare-fun lt!1848651 () Unit!123773)

(declare-fun Unit!123862 () Unit!123773)

(assert (=> b!4688975 (= lt!1848651 Unit!123862)))

(assert (=> b!4688975 (contains!15584 lt!1848650 (_1!30187 (h!58634 lt!1848234)))))

(declare-fun lt!1848656 () Unit!123773)

(declare-fun Unit!123863 () Unit!123773)

(assert (=> b!4688975 (= lt!1848656 Unit!123863)))

(assert (=> b!4688975 (forall!11313 lt!1848234 lambda!206890)))

(declare-fun lt!1848662 () Unit!123773)

(declare-fun Unit!123864 () Unit!123773)

(assert (=> b!4688975 (= lt!1848662 Unit!123864)))

(assert (=> b!4688975 (forall!11313 (toList!5586 lt!1848661) lambda!206890)))

(declare-fun lt!1848652 () Unit!123773)

(declare-fun Unit!123865 () Unit!123773)

(assert (=> b!4688975 (= lt!1848652 Unit!123865)))

(declare-fun lt!1848654 () Unit!123773)

(declare-fun Unit!123867 () Unit!123773)

(assert (=> b!4688975 (= lt!1848654 Unit!123867)))

(declare-fun lt!1848657 () Unit!123773)

(assert (=> b!4688975 (= lt!1848657 (addForallContainsKeyThenBeforeAdding!693 lt!1848242 lt!1848650 (_1!30187 (h!58634 lt!1848234)) (_2!30187 (h!58634 lt!1848234))))))

(assert (=> b!4688975 (forall!11313 (toList!5586 lt!1848242) lambda!206890)))

(declare-fun lt!1848649 () Unit!123773)

(assert (=> b!4688975 (= lt!1848649 lt!1848657)))

(assert (=> b!4688975 (forall!11313 (toList!5586 lt!1848242) lambda!206890)))

(declare-fun lt!1848665 () Unit!123773)

(declare-fun Unit!123868 () Unit!123773)

(assert (=> b!4688975 (= lt!1848665 Unit!123868)))

(declare-fun res!1977547 () Bool)

(assert (=> b!4688975 (= res!1977547 (forall!11313 lt!1848234 lambda!206890))))

(declare-fun e!2925277 () Bool)

(assert (=> b!4688975 (=> (not res!1977547) (not e!2925277))))

(assert (=> b!4688975 e!2925277))

(declare-fun lt!1848658 () Unit!123773)

(declare-fun Unit!123869 () Unit!123773)

(assert (=> b!4688975 (= lt!1848658 Unit!123869)))

(declare-fun bm!327694 () Bool)

(assert (=> bm!327694 (= call!327699 (forall!11313 (toList!5586 lt!1848242) (ite c!801754 lambda!206888 lambda!206889)))))

(assert (=> b!4688976 (= e!2925279 lt!1848242)))

(declare-fun lt!1848659 () Unit!123773)

(assert (=> b!4688976 (= lt!1848659 call!327700)))

(declare-fun call!327698 () Bool)

(assert (=> b!4688976 call!327698))

(declare-fun lt!1848647 () Unit!123773)

(assert (=> b!4688976 (= lt!1848647 lt!1848659)))

(assert (=> b!4688976 call!327699))

(declare-fun lt!1848660 () Unit!123773)

(declare-fun Unit!123870 () Unit!123773)

(assert (=> b!4688976 (= lt!1848660 Unit!123870)))

(declare-fun b!4688977 () Bool)

(declare-fun res!1977548 () Bool)

(assert (=> b!4688977 (=> (not res!1977548) (not e!2925278))))

(assert (=> b!4688977 (= res!1977548 (forall!11313 (toList!5586 lt!1848242) lambda!206891))))

(declare-fun b!4688978 () Bool)

(assert (=> b!4688978 (= e!2925277 call!327698)))

(declare-fun bm!327695 () Bool)

(assert (=> bm!327695 (= call!327698 (forall!11313 (toList!5586 lt!1848242) (ite c!801754 lambda!206888 lambda!206890)))))

(declare-fun b!4688979 () Bool)

(assert (=> b!4688979 (= e!2925278 (invariantList!1406 (toList!5586 lt!1848664)))))

(assert (= (and d!1490152 c!801754) b!4688976))

(assert (= (and d!1490152 (not c!801754)) b!4688975))

(assert (= (and b!4688975 res!1977547) b!4688978))

(assert (= (or b!4688976 b!4688975) bm!327693))

(assert (= (or b!4688976 b!4688975) bm!327694))

(assert (= (or b!4688976 b!4688978) bm!327695))

(assert (= (and d!1490152 res!1977546) b!4688977))

(assert (= (and b!4688977 res!1977548) b!4688979))

(assert (=> bm!327693 m!5590037))

(declare-fun m!5590281 () Bool)

(assert (=> b!4688977 m!5590281))

(declare-fun m!5590283 () Bool)

(assert (=> b!4688979 m!5590283))

(declare-fun m!5590285 () Bool)

(assert (=> d!1490152 m!5590285))

(assert (=> d!1490152 m!5590211))

(declare-fun m!5590287 () Bool)

(assert (=> bm!327695 m!5590287))

(declare-fun m!5590289 () Bool)

(assert (=> bm!327694 m!5590289))

(declare-fun m!5590291 () Bool)

(assert (=> b!4688975 m!5590291))

(declare-fun m!5590293 () Bool)

(assert (=> b!4688975 m!5590293))

(assert (=> b!4688975 m!5590293))

(declare-fun m!5590295 () Bool)

(assert (=> b!4688975 m!5590295))

(declare-fun m!5590297 () Bool)

(assert (=> b!4688975 m!5590297))

(declare-fun m!5590299 () Bool)

(assert (=> b!4688975 m!5590299))

(assert (=> b!4688975 m!5590299))

(declare-fun m!5590301 () Bool)

(assert (=> b!4688975 m!5590301))

(declare-fun m!5590303 () Bool)

(assert (=> b!4688975 m!5590303))

(assert (=> b!4688975 m!5590291))

(declare-fun m!5590305 () Bool)

(assert (=> b!4688975 m!5590305))

(declare-fun m!5590307 () Bool)

(assert (=> b!4688975 m!5590307))

(assert (=> b!4688975 m!5590295))

(declare-fun m!5590309 () Bool)

(assert (=> b!4688975 m!5590309))

(assert (=> b!4688712 d!1490152))

(declare-fun d!1490158 () Bool)

(declare-fun e!2925297 () Bool)

(assert (=> d!1490158 e!2925297))

(declare-fun res!1977563 () Bool)

(assert (=> d!1490158 (=> (not res!1977563) (not e!2925297))))

(declare-fun lt!1848671 () ListMap!4949)

(assert (=> d!1490158 (= res!1977563 (contains!15584 lt!1848671 (_1!30187 lt!1848229)))))

(declare-fun lt!1848672 () List!52517)

(assert (=> d!1490158 (= lt!1848671 (ListMap!4950 lt!1848672))))

(declare-fun lt!1848674 () Unit!123773)

(declare-fun lt!1848673 () Unit!123773)

(assert (=> d!1490158 (= lt!1848674 lt!1848673)))

(assert (=> d!1490158 (= (getValueByKey!1771 lt!1848672 (_1!30187 lt!1848229)) (Some!12064 (_2!30187 lt!1848229)))))

(assert (=> d!1490158 (= lt!1848673 (lemmaContainsTupThenGetReturnValue!996 lt!1848672 (_1!30187 lt!1848229) (_2!30187 lt!1848229)))))

(assert (=> d!1490158 (= lt!1848672 (insertNoDuplicatedKeys!504 (toList!5586 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242)) (_1!30187 lt!1848229) (_2!30187 lt!1848229)))))

(assert (=> d!1490158 (= (+!2132 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848229) lt!1848671)))

(declare-fun b!4689006 () Bool)

(declare-fun res!1977564 () Bool)

(assert (=> b!4689006 (=> (not res!1977564) (not e!2925297))))

(assert (=> b!4689006 (= res!1977564 (= (getValueByKey!1771 (toList!5586 lt!1848671) (_1!30187 lt!1848229)) (Some!12064 (_2!30187 lt!1848229))))))

(declare-fun b!4689007 () Bool)

(assert (=> b!4689007 (= e!2925297 (contains!15588 (toList!5586 lt!1848671) lt!1848229))))

(assert (= (and d!1490158 res!1977563) b!4689006))

(assert (= (and b!4689006 res!1977564) b!4689007))

(declare-fun m!5590311 () Bool)

(assert (=> d!1490158 m!5590311))

(declare-fun m!5590313 () Bool)

(assert (=> d!1490158 m!5590313))

(declare-fun m!5590315 () Bool)

(assert (=> d!1490158 m!5590315))

(declare-fun m!5590317 () Bool)

(assert (=> d!1490158 m!5590317))

(declare-fun m!5590319 () Bool)

(assert (=> b!4689006 m!5590319))

(declare-fun m!5590321 () Bool)

(assert (=> b!4689007 m!5590321))

(assert (=> b!4688712 d!1490158))

(declare-fun d!1490160 () Bool)

(assert (=> d!1490160 (= (eq!1007 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848229 lt!1848234) lt!1848242) (+!2132 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848229)) (= (content!9156 (toList!5586 (addToMapMapFromBucket!1280 (Cons!52393 lt!1848229 lt!1848234) lt!1848242))) (content!9156 (toList!5586 (+!2132 (addToMapMapFromBucket!1280 lt!1848234 lt!1848242) lt!1848229)))))))

(declare-fun bs!1085944 () Bool)

(assert (= bs!1085944 d!1490160))

(declare-fun m!5590323 () Bool)

(assert (=> bs!1085944 m!5590323))

(declare-fun m!5590325 () Bool)

(assert (=> bs!1085944 m!5590325))

(assert (=> b!4688712 d!1490160))

(declare-fun b!4689013 () Bool)

(declare-fun e!2925303 () List!52517)

(declare-fun e!2925302 () List!52517)

(assert (=> b!4689013 (= e!2925303 e!2925302)))

(declare-fun c!801762 () Bool)

(assert (=> b!4689013 (= c!801762 ((_ is Cons!52393) lt!1848223))))

(declare-fun b!4689014 () Bool)

(assert (=> b!4689014 (= e!2925302 (Cons!52393 (h!58634 lt!1848223) (removePairForKey!1443 (t!359689 lt!1848223) key!4653)))))

(declare-fun d!1490162 () Bool)

(declare-fun lt!1848677 () List!52517)

(assert (=> d!1490162 (not (containsKey!3039 lt!1848677 key!4653))))

(assert (=> d!1490162 (= lt!1848677 e!2925303)))

(declare-fun c!801761 () Bool)

(assert (=> d!1490162 (= c!801761 (and ((_ is Cons!52393) lt!1848223) (= (_1!30187 (h!58634 lt!1848223)) key!4653)))))

(assert (=> d!1490162 (noDuplicateKeys!1848 lt!1848223)))

(assert (=> d!1490162 (= (removePairForKey!1443 lt!1848223 key!4653) lt!1848677)))

(declare-fun b!4689012 () Bool)

(assert (=> b!4689012 (= e!2925303 (t!359689 lt!1848223))))

(declare-fun b!4689015 () Bool)

(assert (=> b!4689015 (= e!2925302 Nil!52393)))

(assert (= (and d!1490162 c!801761) b!4689012))

(assert (= (and d!1490162 (not c!801761)) b!4689013))

(assert (= (and b!4689013 c!801762) b!4689014))

(assert (= (and b!4689013 (not c!801762)) b!4689015))

(declare-fun m!5590327 () Bool)

(assert (=> b!4689014 m!5590327))

(declare-fun m!5590329 () Bool)

(assert (=> d!1490162 m!5590329))

(assert (=> d!1490162 m!5590045))

(assert (=> b!4688701 d!1490162))

(declare-fun d!1490164 () Bool)

(assert (=> d!1490164 (= (tail!8575 newBucket!218) (t!359689 newBucket!218))))

(assert (=> b!4688701 d!1490164))

(declare-fun d!1490166 () Bool)

(assert (=> d!1490166 (= (tail!8575 oldBucket!34) (t!359689 oldBucket!34))))

(assert (=> b!4688701 d!1490166))

(declare-fun bs!1085952 () Bool)

(declare-fun d!1490168 () Bool)

(assert (= bs!1085952 (and d!1490168 d!1490122)))

(declare-fun lambda!206895 () Int)

(assert (=> bs!1085952 (not (= lambda!206895 lambda!206865))))

(declare-fun bs!1085953 () Bool)

(assert (= bs!1085953 (and d!1490168 d!1490112)))

(assert (=> bs!1085953 (not (= lambda!206895 lambda!206864))))

(declare-fun bs!1085954 () Bool)

(assert (= bs!1085954 (and d!1490168 d!1490128)))

(assert (=> bs!1085954 (not (= lambda!206895 lambda!206870))))

(declare-fun bs!1085955 () Bool)

(assert (= bs!1085955 (and d!1490168 d!1490130)))

(assert (=> bs!1085955 (not (= lambda!206895 lambda!206879))))

(declare-fun bs!1085956 () Bool)

(assert (= bs!1085956 (and d!1490168 d!1490056)))

(assert (=> bs!1085956 (not (= lambda!206895 lambda!206781))))

(declare-fun bs!1085957 () Bool)

(assert (= bs!1085957 (and d!1490168 start!474176)))

(assert (=> bs!1085957 (not (= lambda!206895 lambda!206769))))

(assert (=> d!1490168 true))

(assert (=> d!1490168 (= (allKeysSameHashInMap!1762 lm!2023 hashF!1323) (forall!11311 (toList!5585 lm!2023) lambda!206895))))

(declare-fun bs!1085958 () Bool)

(assert (= bs!1085958 d!1490168))

(declare-fun m!5590363 () Bool)

(assert (=> bs!1085958 m!5590363))

(assert (=> b!4688708 d!1490168))

(declare-fun d!1490176 () Bool)

(declare-datatypes ((Option!12067 0))(
  ( (None!12066) (Some!12066 (v!46477 List!52517)) )
))
(declare-fun get!17482 (Option!12067) List!52517)

(declare-fun getValueByKey!1773 (List!52518 (_ BitVec 64)) Option!12067)

(assert (=> d!1490176 (= (apply!12331 lm!2023 lt!1848224) (get!17482 (getValueByKey!1773 (toList!5585 lm!2023) lt!1848224)))))

(declare-fun bs!1085959 () Bool)

(assert (= bs!1085959 d!1490176))

(declare-fun m!5590365 () Bool)

(assert (=> bs!1085959 m!5590365))

(assert (=> bs!1085959 m!5590365))

(declare-fun m!5590367 () Bool)

(assert (=> bs!1085959 m!5590367))

(assert (=> b!4688697 d!1490176))

(declare-fun d!1490178 () Bool)

(declare-fun isEmpty!29090 (Option!12063) Bool)

(assert (=> d!1490178 (= (isDefined!9318 (getPair!452 lt!1848233 key!4653)) (not (isEmpty!29090 (getPair!452 lt!1848233 key!4653))))))

(declare-fun bs!1085964 () Bool)

(assert (= bs!1085964 d!1490178))

(assert (=> bs!1085964 m!5589727))

(declare-fun m!5590369 () Bool)

(assert (=> bs!1085964 m!5590369))

(assert (=> b!4688697 d!1490178))

(declare-fun d!1490180 () Bool)

(declare-fun lt!1848691 () Bool)

(declare-fun content!9158 (List!52518) (InoxSet tuple2!53788))

(assert (=> d!1490180 (= lt!1848691 (select (content!9158 (toList!5585 lm!2023)) lt!1848240))))

(declare-fun e!2925321 () Bool)

(assert (=> d!1490180 (= lt!1848691 e!2925321)))

(declare-fun res!1977580 () Bool)

(assert (=> d!1490180 (=> (not res!1977580) (not e!2925321))))

(assert (=> d!1490180 (= res!1977580 ((_ is Cons!52394) (toList!5585 lm!2023)))))

(assert (=> d!1490180 (= (contains!15582 (toList!5585 lm!2023) lt!1848240) lt!1848691)))

(declare-fun b!4689043 () Bool)

(declare-fun e!2925322 () Bool)

(assert (=> b!4689043 (= e!2925321 e!2925322)))

(declare-fun res!1977581 () Bool)

(assert (=> b!4689043 (=> res!1977581 e!2925322)))

(assert (=> b!4689043 (= res!1977581 (= (h!58635 (toList!5585 lm!2023)) lt!1848240))))

(declare-fun b!4689044 () Bool)

(assert (=> b!4689044 (= e!2925322 (contains!15582 (t!359690 (toList!5585 lm!2023)) lt!1848240))))

(assert (= (and d!1490180 res!1977580) b!4689043))

(assert (= (and b!4689043 (not res!1977581)) b!4689044))

(declare-fun m!5590381 () Bool)

(assert (=> d!1490180 m!5590381))

(declare-fun m!5590383 () Bool)

(assert (=> d!1490180 m!5590383))

(declare-fun m!5590385 () Bool)

(assert (=> b!4689044 m!5590385))

(assert (=> b!4688697 d!1490180))

(declare-fun bs!1086010 () Bool)

(declare-fun d!1490190 () Bool)

(assert (= bs!1086010 (and d!1490190 d!1490168)))

(declare-fun lambda!206904 () Int)

(assert (=> bs!1086010 (not (= lambda!206904 lambda!206895))))

(declare-fun bs!1086012 () Bool)

(assert (= bs!1086012 (and d!1490190 d!1490122)))

(assert (=> bs!1086012 (= lambda!206904 lambda!206865)))

(declare-fun bs!1086014 () Bool)

(assert (= bs!1086014 (and d!1490190 d!1490112)))

(assert (=> bs!1086014 (= lambda!206904 lambda!206864)))

(declare-fun bs!1086015 () Bool)

(assert (= bs!1086015 (and d!1490190 d!1490128)))

(assert (=> bs!1086015 (= lambda!206904 lambda!206870)))

(declare-fun bs!1086016 () Bool)

(assert (= bs!1086016 (and d!1490190 d!1490130)))

(assert (=> bs!1086016 (= lambda!206904 lambda!206879)))

(declare-fun bs!1086018 () Bool)

(assert (= bs!1086018 (and d!1490190 d!1490056)))

(assert (=> bs!1086018 (= lambda!206904 lambda!206781)))

(declare-fun bs!1086020 () Bool)

(assert (= bs!1086020 (and d!1490190 start!474176)))

(assert (=> bs!1086020 (= lambda!206904 lambda!206769)))

(assert (=> d!1490190 (contains!15583 lm!2023 (hash!4055 hashF!1323 key!4653))))

(declare-fun lt!1848715 () Unit!123773)

(declare-fun choose!32559 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> d!1490190 (= lt!1848715 (choose!32559 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490190 (forall!11311 (toList!5585 lm!2023) lambda!206904)))

(assert (=> d!1490190 (= (lemmaInGenMapThenLongMapContainsHash!658 lm!2023 key!4653 hashF!1323) lt!1848715)))

(declare-fun bs!1086021 () Bool)

(assert (= bs!1086021 d!1490190))

(assert (=> bs!1086021 m!5589689))

(assert (=> bs!1086021 m!5589689))

(declare-fun m!5590389 () Bool)

(assert (=> bs!1086021 m!5590389))

(declare-fun m!5590391 () Bool)

(assert (=> bs!1086021 m!5590391))

(declare-fun m!5590393 () Bool)

(assert (=> bs!1086021 m!5590393))

(assert (=> b!4688697 d!1490190))

(declare-fun d!1490194 () Bool)

(assert (=> d!1490194 (containsKey!3039 oldBucket!34 key!4653)))

(declare-fun lt!1848718 () Unit!123773)

(declare-fun choose!32560 (List!52517 K!13770 Hashable!6217) Unit!123773)

(assert (=> d!1490194 (= lt!1848718 (choose!32560 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1490194 (noDuplicateKeys!1848 oldBucket!34)))

(assert (=> d!1490194 (= (lemmaGetPairDefinedThenContainsKey!200 oldBucket!34 key!4653 hashF!1323) lt!1848718)))

(declare-fun bs!1086022 () Bool)

(assert (= bs!1086022 d!1490194))

(assert (=> bs!1086022 m!5589721))

(declare-fun m!5590395 () Bool)

(assert (=> bs!1086022 m!5590395))

(assert (=> bs!1086022 m!5589701))

(assert (=> b!4688697 d!1490194))

(declare-fun d!1490196 () Bool)

(declare-fun res!1977589 () Bool)

(declare-fun e!2925330 () Bool)

(assert (=> d!1490196 (=> res!1977589 e!2925330)))

(assert (=> d!1490196 (= res!1977589 (and ((_ is Cons!52393) oldBucket!34) (= (_1!30187 (h!58634 oldBucket!34)) key!4653)))))

(assert (=> d!1490196 (= (containsKey!3039 oldBucket!34 key!4653) e!2925330)))

(declare-fun b!4689054 () Bool)

(declare-fun e!2925331 () Bool)

(assert (=> b!4689054 (= e!2925330 e!2925331)))

(declare-fun res!1977590 () Bool)

(assert (=> b!4689054 (=> (not res!1977590) (not e!2925331))))

(assert (=> b!4689054 (= res!1977590 ((_ is Cons!52393) oldBucket!34))))

(declare-fun b!4689055 () Bool)

(assert (=> b!4689055 (= e!2925331 (containsKey!3039 (t!359689 oldBucket!34) key!4653))))

(assert (= (and d!1490196 (not res!1977589)) b!4689054))

(assert (= (and b!4689054 res!1977590) b!4689055))

(assert (=> b!4689055 m!5589725))

(assert (=> b!4688697 d!1490196))

(declare-fun d!1490198 () Bool)

(assert (=> d!1490198 (dynLambda!21709 lambda!206769 lt!1848240)))

(declare-fun lt!1848722 () Unit!123773)

(declare-fun choose!32561 (List!52518 Int tuple2!53788) Unit!123773)

(assert (=> d!1490198 (= lt!1848722 (choose!32561 (toList!5585 lm!2023) lambda!206769 lt!1848240))))

(declare-fun e!2925335 () Bool)

(assert (=> d!1490198 e!2925335))

(declare-fun res!1977593 () Bool)

(assert (=> d!1490198 (=> (not res!1977593) (not e!2925335))))

(assert (=> d!1490198 (= res!1977593 (forall!11311 (toList!5585 lm!2023) lambda!206769))))

(assert (=> d!1490198 (= (forallContained!3418 (toList!5585 lm!2023) lambda!206769 lt!1848240) lt!1848722)))

(declare-fun b!4689060 () Bool)

(assert (=> b!4689060 (= e!2925335 (contains!15582 (toList!5585 lm!2023) lt!1848240))))

(assert (= (and d!1490198 res!1977593) b!4689060))

(declare-fun b_lambda!176951 () Bool)

(assert (=> (not b_lambda!176951) (not d!1490198)))

(declare-fun m!5590427 () Bool)

(assert (=> d!1490198 m!5590427))

(declare-fun m!5590429 () Bool)

(assert (=> d!1490198 m!5590429))

(assert (=> d!1490198 m!5589703))

(assert (=> b!4689060 m!5589713))

(assert (=> b!4688697 d!1490198))

(declare-fun d!1490202 () Bool)

(assert (=> d!1490202 (contains!15582 (toList!5585 lm!2023) (tuple2!53789 lt!1848224 lt!1848233))))

(declare-fun lt!1848725 () Unit!123773)

(declare-fun choose!32562 (ListLongMap!4115 (_ BitVec 64) List!52517) Unit!123773)

(assert (=> d!1490202 (= lt!1848725 (choose!32562 lm!2023 lt!1848224 lt!1848233))))

(assert (=> d!1490202 (contains!15583 lm!2023 lt!1848224)))

(assert (=> d!1490202 (= (lemmaGetValueImpliesTupleContained!257 lm!2023 lt!1848224 lt!1848233) lt!1848725)))

(declare-fun bs!1086049 () Bool)

(assert (= bs!1086049 d!1490202))

(declare-fun m!5590445 () Bool)

(assert (=> bs!1086049 m!5590445))

(declare-fun m!5590447 () Bool)

(assert (=> bs!1086049 m!5590447))

(assert (=> bs!1086049 m!5589719))

(assert (=> b!4688697 d!1490202))

(declare-fun b!4689091 () Bool)

(declare-fun e!2925359 () Bool)

(declare-fun e!2925357 () Bool)

(assert (=> b!4689091 (= e!2925359 e!2925357)))

(declare-fun res!1977606 () Bool)

(assert (=> b!4689091 (=> (not res!1977606) (not e!2925357))))

(declare-fun lt!1848728 () Option!12063)

(assert (=> b!4689091 (= res!1977606 (isDefined!9318 lt!1848728))))

(declare-fun b!4689092 () Bool)

(declare-fun res!1977604 () Bool)

(assert (=> b!4689092 (=> (not res!1977604) (not e!2925357))))

(declare-fun get!17483 (Option!12063) tuple2!53786)

(assert (=> b!4689092 (= res!1977604 (= (_1!30187 (get!17483 lt!1848728)) key!4653))))

(declare-fun b!4689093 () Bool)

(declare-fun e!2925355 () Bool)

(assert (=> b!4689093 (= e!2925355 (not (containsKey!3039 lt!1848233 key!4653)))))

(declare-fun b!4689094 () Bool)

(declare-fun e!2925356 () Option!12063)

(declare-fun e!2925358 () Option!12063)

(assert (=> b!4689094 (= e!2925356 e!2925358)))

(declare-fun c!801776 () Bool)

(assert (=> b!4689094 (= c!801776 ((_ is Cons!52393) lt!1848233))))

(declare-fun b!4689095 () Bool)

(assert (=> b!4689095 (= e!2925358 (getPair!452 (t!359689 lt!1848233) key!4653))))

(declare-fun d!1490208 () Bool)

(assert (=> d!1490208 e!2925359))

(declare-fun res!1977605 () Bool)

(assert (=> d!1490208 (=> res!1977605 e!2925359)))

(assert (=> d!1490208 (= res!1977605 e!2925355)))

(declare-fun res!1977607 () Bool)

(assert (=> d!1490208 (=> (not res!1977607) (not e!2925355))))

(assert (=> d!1490208 (= res!1977607 (isEmpty!29090 lt!1848728))))

(assert (=> d!1490208 (= lt!1848728 e!2925356)))

(declare-fun c!801775 () Bool)

(assert (=> d!1490208 (= c!801775 (and ((_ is Cons!52393) lt!1848233) (= (_1!30187 (h!58634 lt!1848233)) key!4653)))))

(assert (=> d!1490208 (noDuplicateKeys!1848 lt!1848233)))

(assert (=> d!1490208 (= (getPair!452 lt!1848233 key!4653) lt!1848728)))

(declare-fun b!4689096 () Bool)

(assert (=> b!4689096 (= e!2925358 None!12062)))

(declare-fun b!4689097 () Bool)

(assert (=> b!4689097 (= e!2925357 (contains!15588 lt!1848233 (get!17483 lt!1848728)))))

(declare-fun b!4689098 () Bool)

(assert (=> b!4689098 (= e!2925356 (Some!12062 (h!58634 lt!1848233)))))

(assert (= (and d!1490208 c!801775) b!4689098))

(assert (= (and d!1490208 (not c!801775)) b!4689094))

(assert (= (and b!4689094 c!801776) b!4689095))

(assert (= (and b!4689094 (not c!801776)) b!4689096))

(assert (= (and d!1490208 res!1977607) b!4689093))

(assert (= (and d!1490208 (not res!1977605)) b!4689091))

(assert (= (and b!4689091 res!1977606) b!4689092))

(assert (= (and b!4689092 res!1977604) b!4689097))

(declare-fun m!5590453 () Bool)

(assert (=> b!4689091 m!5590453))

(declare-fun m!5590455 () Bool)

(assert (=> b!4689093 m!5590455))

(declare-fun m!5590457 () Bool)

(assert (=> d!1490208 m!5590457))

(declare-fun m!5590459 () Bool)

(assert (=> d!1490208 m!5590459))

(declare-fun m!5590461 () Bool)

(assert (=> b!4689095 m!5590461))

(declare-fun m!5590463 () Bool)

(assert (=> b!4689097 m!5590463))

(assert (=> b!4689097 m!5590463))

(declare-fun m!5590465 () Bool)

(assert (=> b!4689097 m!5590465))

(assert (=> b!4689092 m!5590463))

(assert (=> b!4688697 d!1490208))

(declare-fun bs!1086053 () Bool)

(declare-fun d!1490216 () Bool)

(assert (= bs!1086053 (and d!1490216 d!1490168)))

(declare-fun lambda!206914 () Int)

(assert (=> bs!1086053 (not (= lambda!206914 lambda!206895))))

(declare-fun bs!1086054 () Bool)

(assert (= bs!1086054 (and d!1490216 d!1490122)))

(assert (=> bs!1086054 (= lambda!206914 lambda!206865)))

(declare-fun bs!1086055 () Bool)

(assert (= bs!1086055 (and d!1490216 d!1490128)))

(assert (=> bs!1086055 (= lambda!206914 lambda!206870)))

(declare-fun bs!1086056 () Bool)

(assert (= bs!1086056 (and d!1490216 d!1490130)))

(assert (=> bs!1086056 (= lambda!206914 lambda!206879)))

(declare-fun bs!1086057 () Bool)

(assert (= bs!1086057 (and d!1490216 d!1490056)))

(assert (=> bs!1086057 (= lambda!206914 lambda!206781)))

(declare-fun bs!1086058 () Bool)

(assert (= bs!1086058 (and d!1490216 start!474176)))

(assert (=> bs!1086058 (= lambda!206914 lambda!206769)))

(declare-fun bs!1086059 () Bool)

(assert (= bs!1086059 (and d!1490216 d!1490112)))

(assert (=> bs!1086059 (= lambda!206914 lambda!206864)))

(declare-fun bs!1086060 () Bool)

(assert (= bs!1086060 (and d!1490216 d!1490190)))

(assert (=> bs!1086060 (= lambda!206914 lambda!206904)))

(declare-fun b!4689108 () Bool)

(declare-fun res!1977618 () Bool)

(declare-fun e!2925365 () Bool)

(assert (=> b!4689108 (=> (not res!1977618) (not e!2925365))))

(assert (=> b!4689108 (= res!1977618 (contains!15584 (extractMap!1874 (toList!5585 lm!2023)) key!4653))))

(declare-fun lt!1848748 () (_ BitVec 64))

(declare-fun lt!1848752 () List!52517)

(declare-fun b!4689110 () Bool)

(declare-fun e!2925364 () Bool)

(assert (=> b!4689110 (= e!2925364 (= (getValueByKey!1773 (toList!5585 lm!2023) lt!1848748) (Some!12066 lt!1848752)))))

(declare-fun b!4689107 () Bool)

(declare-fun res!1977617 () Bool)

(assert (=> b!4689107 (=> (not res!1977617) (not e!2925365))))

(assert (=> b!4689107 (= res!1977617 (allKeysSameHashInMap!1762 lm!2023 hashF!1323))))

(assert (=> d!1490216 e!2925365))

(declare-fun res!1977619 () Bool)

(assert (=> d!1490216 (=> (not res!1977619) (not e!2925365))))

(assert (=> d!1490216 (= res!1977619 (forall!11311 (toList!5585 lm!2023) lambda!206914))))

(declare-fun lt!1848750 () Unit!123773)

(declare-fun choose!32563 (ListLongMap!4115 K!13770 Hashable!6217) Unit!123773)

(assert (=> d!1490216 (= lt!1848750 (choose!32563 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1490216 (forall!11311 (toList!5585 lm!2023) lambda!206914)))

(assert (=> d!1490216 (= (lemmaInGenMapThenGetPairDefined!248 lm!2023 key!4653 hashF!1323) lt!1848750)))

(declare-fun b!4689109 () Bool)

(assert (=> b!4689109 (= e!2925365 (isDefined!9318 (getPair!452 (apply!12331 lm!2023 (hash!4055 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1848747 () Unit!123773)

(assert (=> b!4689109 (= lt!1848747 (forallContained!3418 (toList!5585 lm!2023) lambda!206914 (tuple2!53789 (hash!4055 hashF!1323 key!4653) (apply!12331 lm!2023 (hash!4055 hashF!1323 key!4653)))))))

(declare-fun lt!1848745 () Unit!123773)

(declare-fun lt!1848749 () Unit!123773)

(assert (=> b!4689109 (= lt!1848745 lt!1848749)))

(assert (=> b!4689109 (contains!15582 (toList!5585 lm!2023) (tuple2!53789 lt!1848748 lt!1848752))))

(assert (=> b!4689109 (= lt!1848749 (lemmaGetValueImpliesTupleContained!257 lm!2023 lt!1848748 lt!1848752))))

(assert (=> b!4689109 e!2925364))

(declare-fun res!1977616 () Bool)

(assert (=> b!4689109 (=> (not res!1977616) (not e!2925364))))

(assert (=> b!4689109 (= res!1977616 (contains!15583 lm!2023 lt!1848748))))

(assert (=> b!4689109 (= lt!1848752 (apply!12331 lm!2023 (hash!4055 hashF!1323 key!4653)))))

(assert (=> b!4689109 (= lt!1848748 (hash!4055 hashF!1323 key!4653))))

(declare-fun lt!1848751 () Unit!123773)

(declare-fun lt!1848746 () Unit!123773)

(assert (=> b!4689109 (= lt!1848751 lt!1848746)))

(assert (=> b!4689109 (contains!15583 lm!2023 (hash!4055 hashF!1323 key!4653))))

(assert (=> b!4689109 (= lt!1848746 (lemmaInGenMapThenLongMapContainsHash!658 lm!2023 key!4653 hashF!1323))))

(assert (= (and d!1490216 res!1977619) b!4689107))

(assert (= (and b!4689107 res!1977617) b!4689108))

(assert (= (and b!4689108 res!1977618) b!4689109))

(assert (= (and b!4689109 res!1977616) b!4689110))

(assert (=> b!4689107 m!5589637))

(assert (=> b!4689108 m!5589631))

(assert (=> b!4689108 m!5589631))

(declare-fun m!5590467 () Bool)

(assert (=> b!4689108 m!5590467))

(assert (=> b!4689109 m!5589689))

(declare-fun m!5590469 () Bool)

(assert (=> b!4689109 m!5590469))

(declare-fun m!5590471 () Bool)

(assert (=> b!4689109 m!5590471))

(declare-fun m!5590473 () Bool)

(assert (=> b!4689109 m!5590473))

(assert (=> b!4689109 m!5589711))

(declare-fun m!5590475 () Bool)

(assert (=> b!4689109 m!5590475))

(declare-fun m!5590477 () Bool)

(assert (=> b!4689109 m!5590477))

(declare-fun m!5590479 () Bool)

(assert (=> b!4689109 m!5590479))

(assert (=> b!4689109 m!5590469))

(assert (=> b!4689109 m!5590477))

(assert (=> b!4689109 m!5589689))

(assert (=> b!4689109 m!5590389))

(assert (=> b!4689109 m!5589689))

(declare-fun m!5590481 () Bool)

(assert (=> b!4689109 m!5590481))

(declare-fun m!5590483 () Bool)

(assert (=> d!1490216 m!5590483))

(declare-fun m!5590485 () Bool)

(assert (=> d!1490216 m!5590485))

(assert (=> d!1490216 m!5590483))

(declare-fun m!5590487 () Bool)

(assert (=> b!4689110 m!5590487))

(assert (=> b!4688697 d!1490216))

(declare-fun d!1490218 () Bool)

(declare-fun e!2925371 () Bool)

(assert (=> d!1490218 e!2925371))

(declare-fun res!1977622 () Bool)

(assert (=> d!1490218 (=> res!1977622 e!2925371)))

(declare-fun lt!1848761 () Bool)

(assert (=> d!1490218 (= res!1977622 (not lt!1848761))))

(declare-fun lt!1848764 () Bool)

(assert (=> d!1490218 (= lt!1848761 lt!1848764)))

(declare-fun lt!1848762 () Unit!123773)

(declare-fun e!2925370 () Unit!123773)

(assert (=> d!1490218 (= lt!1848762 e!2925370)))

(declare-fun c!801779 () Bool)

(assert (=> d!1490218 (= c!801779 lt!1848764)))

(declare-fun containsKey!3043 (List!52518 (_ BitVec 64)) Bool)

(assert (=> d!1490218 (= lt!1848764 (containsKey!3043 (toList!5585 lm!2023) lt!1848224))))

(assert (=> d!1490218 (= (contains!15583 lm!2023 lt!1848224) lt!1848761)))

(declare-fun b!4689117 () Bool)

(declare-fun lt!1848763 () Unit!123773)

(assert (=> b!4689117 (= e!2925370 lt!1848763)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1665 (List!52518 (_ BitVec 64)) Unit!123773)

(assert (=> b!4689117 (= lt!1848763 (lemmaContainsKeyImpliesGetValueByKeyDefined!1665 (toList!5585 lm!2023) lt!1848224))))

(declare-fun isDefined!9322 (Option!12067) Bool)

(assert (=> b!4689117 (isDefined!9322 (getValueByKey!1773 (toList!5585 lm!2023) lt!1848224))))

(declare-fun b!4689118 () Bool)

(declare-fun Unit!123880 () Unit!123773)

(assert (=> b!4689118 (= e!2925370 Unit!123880)))

(declare-fun b!4689119 () Bool)

(assert (=> b!4689119 (= e!2925371 (isDefined!9322 (getValueByKey!1773 (toList!5585 lm!2023) lt!1848224)))))

(assert (= (and d!1490218 c!801779) b!4689117))

(assert (= (and d!1490218 (not c!801779)) b!4689118))

(assert (= (and d!1490218 (not res!1977622)) b!4689119))

(declare-fun m!5590489 () Bool)

(assert (=> d!1490218 m!5590489))

(declare-fun m!5590491 () Bool)

(assert (=> b!4689117 m!5590491))

(assert (=> b!4689117 m!5590365))

(assert (=> b!4689117 m!5590365))

(declare-fun m!5590493 () Bool)

(assert (=> b!4689117 m!5590493))

(assert (=> b!4689119 m!5590365))

(assert (=> b!4689119 m!5590365))

(assert (=> b!4689119 m!5590493))

(assert (=> b!4688697 d!1490218))

(declare-fun d!1490220 () Bool)

(declare-fun res!1977623 () Bool)

(declare-fun e!2925372 () Bool)

(assert (=> d!1490220 (=> res!1977623 e!2925372)))

(assert (=> d!1490220 (= res!1977623 (and ((_ is Cons!52393) (t!359689 oldBucket!34)) (= (_1!30187 (h!58634 (t!359689 oldBucket!34))) key!4653)))))

(assert (=> d!1490220 (= (containsKey!3039 (t!359689 oldBucket!34) key!4653) e!2925372)))

(declare-fun b!4689120 () Bool)

(declare-fun e!2925373 () Bool)

(assert (=> b!4689120 (= e!2925372 e!2925373)))

(declare-fun res!1977624 () Bool)

(assert (=> b!4689120 (=> (not res!1977624) (not e!2925373))))

(assert (=> b!4689120 (= res!1977624 ((_ is Cons!52393) (t!359689 oldBucket!34)))))

(declare-fun b!4689121 () Bool)

(assert (=> b!4689121 (= e!2925373 (containsKey!3039 (t!359689 (t!359689 oldBucket!34)) key!4653))))

(assert (= (and d!1490220 (not res!1977623)) b!4689120))

(assert (= (and b!4689120 res!1977624) b!4689121))

(declare-fun m!5590495 () Bool)

(assert (=> b!4689121 m!5590495))

(assert (=> b!4688697 d!1490220))

(declare-fun d!1490222 () Bool)

(declare-fun hash!4057 (Hashable!6217 K!13770) (_ BitVec 64))

(assert (=> d!1490222 (= (hash!4055 hashF!1323 key!4653) (hash!4057 hashF!1323 key!4653))))

(declare-fun bs!1086061 () Bool)

(assert (= bs!1086061 d!1490222))

(declare-fun m!5590497 () Bool)

(assert (=> bs!1086061 m!5590497))

(assert (=> b!4688699 d!1490222))

(declare-fun bs!1086062 () Bool)

(declare-fun b!4689123 () Bool)

(assert (= bs!1086062 (and b!4689123 b!4688961)))

(declare-fun lambda!206915 () Int)

(assert (=> bs!1086062 (= (= lt!1848242 lt!1848621) (= lambda!206915 lambda!206883))))

(declare-fun bs!1086063 () Bool)

(assert (= bs!1086063 (and b!4689123 b!4688906)))

(assert (=> bs!1086063 (= (= lt!1848242 lt!1848507) (= lambda!206915 lambda!206862))))

(declare-fun bs!1086064 () Bool)

(assert (= bs!1086064 (and b!4689123 d!1490060)))

(assert (=> bs!1086064 (= (= lt!1848242 lt!1848521) (= lambda!206915 lambda!206863))))

(declare-fun bs!1086065 () Bool)

(assert (= bs!1086065 (and b!4689123 b!4688976)))

(assert (=> bs!1086065 (= lambda!206915 lambda!206888)))

(declare-fun bs!1086066 () Bool)

(assert (= bs!1086066 (and b!4689123 b!4688937)))

(assert (=> bs!1086066 (= lambda!206915 lambda!206866)))

(declare-fun bs!1086067 () Bool)

(assert (= bs!1086067 (and b!4689123 b!4688936)))

(assert (=> bs!1086067 (= lambda!206915 lambda!206867)))

(assert (=> bs!1086063 (= lambda!206915 lambda!206861)))

(declare-fun bs!1086068 () Bool)

(assert (= bs!1086068 (and b!4689123 d!1490138)))

(assert (=> bs!1086068 (= (= lt!1848242 lt!1848635) (= lambda!206915 lambda!206884))))

(declare-fun bs!1086069 () Bool)

(assert (= bs!1086069 (and b!4689123 d!1490126)))

(assert (=> bs!1086069 (= (= lt!1848242 lt!1848572) (= lambda!206915 lambda!206869))))

(declare-fun bs!1086070 () Bool)

(assert (= bs!1086070 (and b!4689123 d!1490152)))

(assert (=> bs!1086070 (= (= lt!1848242 lt!1848664) (= lambda!206915 lambda!206891))))

(declare-fun bs!1086071 () Bool)

(assert (= bs!1086071 (and b!4689123 d!1490032)))

(assert (=> bs!1086071 (not (= lambda!206915 lambda!206772))))

(declare-fun bs!1086072 () Bool)

(assert (= bs!1086072 (and b!4689123 b!4688975)))

(assert (=> bs!1086072 (= lambda!206915 lambda!206889)))

(declare-fun bs!1086073 () Bool)

(assert (= bs!1086073 (and b!4689123 b!4688962)))

(assert (=> bs!1086073 (= lambda!206915 lambda!206881)))

(declare-fun bs!1086074 () Bool)

(assert (= bs!1086074 (and b!4689123 b!4688907)))

(assert (=> bs!1086074 (= lambda!206915 lambda!206860)))

(assert (=> bs!1086062 (= lambda!206915 lambda!206882)))

(declare-fun bs!1086075 () Bool)

(assert (= bs!1086075 (and b!4689123 d!1490058)))

(assert (=> bs!1086075 (not (= lambda!206915 lambda!206782))))

(assert (=> bs!1086072 (= (= lt!1848242 lt!1848650) (= lambda!206915 lambda!206890))))

(assert (=> bs!1086067 (= (= lt!1848242 lt!1848558) (= lambda!206915 lambda!206868))))

(assert (=> b!4689123 true))

(declare-fun bs!1086076 () Bool)

(declare-fun b!4689122 () Bool)

(assert (= bs!1086076 (and b!4689122 b!4688961)))

(declare-fun lambda!206916 () Int)

(assert (=> bs!1086076 (= (= lt!1848242 lt!1848621) (= lambda!206916 lambda!206883))))

(declare-fun bs!1086077 () Bool)

(assert (= bs!1086077 (and b!4689122 b!4688906)))

(assert (=> bs!1086077 (= (= lt!1848242 lt!1848507) (= lambda!206916 lambda!206862))))

(declare-fun bs!1086078 () Bool)

(assert (= bs!1086078 (and b!4689122 d!1490060)))

(assert (=> bs!1086078 (= (= lt!1848242 lt!1848521) (= lambda!206916 lambda!206863))))

(declare-fun bs!1086079 () Bool)

(assert (= bs!1086079 (and b!4689122 b!4688976)))

(assert (=> bs!1086079 (= lambda!206916 lambda!206888)))

(declare-fun bs!1086080 () Bool)

(assert (= bs!1086080 (and b!4689122 b!4688937)))

(assert (=> bs!1086080 (= lambda!206916 lambda!206866)))

(declare-fun bs!1086081 () Bool)

(assert (= bs!1086081 (and b!4689122 b!4688936)))

(assert (=> bs!1086081 (= lambda!206916 lambda!206867)))

(assert (=> bs!1086077 (= lambda!206916 lambda!206861)))

(declare-fun bs!1086082 () Bool)

(assert (= bs!1086082 (and b!4689122 b!4689123)))

(assert (=> bs!1086082 (= lambda!206916 lambda!206915)))

(declare-fun bs!1086083 () Bool)

(assert (= bs!1086083 (and b!4689122 d!1490138)))

(assert (=> bs!1086083 (= (= lt!1848242 lt!1848635) (= lambda!206916 lambda!206884))))

(declare-fun bs!1086084 () Bool)

(assert (= bs!1086084 (and b!4689122 d!1490126)))

(assert (=> bs!1086084 (= (= lt!1848242 lt!1848572) (= lambda!206916 lambda!206869))))

(declare-fun bs!1086085 () Bool)

(assert (= bs!1086085 (and b!4689122 d!1490152)))

(assert (=> bs!1086085 (= (= lt!1848242 lt!1848664) (= lambda!206916 lambda!206891))))

(declare-fun bs!1086086 () Bool)

(assert (= bs!1086086 (and b!4689122 d!1490032)))

(assert (=> bs!1086086 (not (= lambda!206916 lambda!206772))))

(declare-fun bs!1086087 () Bool)

(assert (= bs!1086087 (and b!4689122 b!4688975)))

(assert (=> bs!1086087 (= lambda!206916 lambda!206889)))

(declare-fun bs!1086088 () Bool)

(assert (= bs!1086088 (and b!4689122 b!4688962)))

(assert (=> bs!1086088 (= lambda!206916 lambda!206881)))

(declare-fun bs!1086089 () Bool)

(assert (= bs!1086089 (and b!4689122 b!4688907)))

(assert (=> bs!1086089 (= lambda!206916 lambda!206860)))

(assert (=> bs!1086076 (= lambda!206916 lambda!206882)))

(declare-fun bs!1086090 () Bool)

(assert (= bs!1086090 (and b!4689122 d!1490058)))

(assert (=> bs!1086090 (not (= lambda!206916 lambda!206782))))

(assert (=> bs!1086087 (= (= lt!1848242 lt!1848650) (= lambda!206916 lambda!206890))))

(assert (=> bs!1086081 (= (= lt!1848242 lt!1848558) (= lambda!206916 lambda!206868))))

(assert (=> b!4689122 true))

(declare-fun lt!1848768 () ListMap!4949)

(declare-fun lambda!206917 () Int)

(assert (=> bs!1086076 (= (= lt!1848768 lt!1848621) (= lambda!206917 lambda!206883))))

(assert (=> bs!1086077 (= (= lt!1848768 lt!1848507) (= lambda!206917 lambda!206862))))

(assert (=> bs!1086078 (= (= lt!1848768 lt!1848521) (= lambda!206917 lambda!206863))))

(assert (=> bs!1086079 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206888))))

(assert (=> bs!1086080 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206866))))

(assert (=> bs!1086081 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206867))))

(assert (=> b!4689122 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206916))))

(assert (=> bs!1086077 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206861))))

(assert (=> bs!1086082 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206915))))

(assert (=> bs!1086083 (= (= lt!1848768 lt!1848635) (= lambda!206917 lambda!206884))))

(assert (=> bs!1086084 (= (= lt!1848768 lt!1848572) (= lambda!206917 lambda!206869))))

(assert (=> bs!1086085 (= (= lt!1848768 lt!1848664) (= lambda!206917 lambda!206891))))

(assert (=> bs!1086086 (not (= lambda!206917 lambda!206772))))

(assert (=> bs!1086087 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206889))))

(assert (=> bs!1086088 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206881))))

(assert (=> bs!1086089 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206860))))

(assert (=> bs!1086076 (= (= lt!1848768 lt!1848242) (= lambda!206917 lambda!206882))))

(assert (=> bs!1086090 (not (= lambda!206917 lambda!206782))))

(assert (=> bs!1086087 (= (= lt!1848768 lt!1848650) (= lambda!206917 lambda!206890))))

(assert (=> bs!1086081 (= (= lt!1848768 lt!1848558) (= lambda!206917 lambda!206868))))

(assert (=> b!4689122 true))

(declare-fun bs!1086091 () Bool)

(declare-fun d!1490224 () Bool)

(assert (= bs!1086091 (and d!1490224 b!4688906)))

(declare-fun lt!1848782 () ListMap!4949)

(declare-fun lambda!206918 () Int)

(assert (=> bs!1086091 (= (= lt!1848782 lt!1848507) (= lambda!206918 lambda!206862))))

(declare-fun bs!1086092 () Bool)

(assert (= bs!1086092 (and d!1490224 d!1490060)))

(assert (=> bs!1086092 (= (= lt!1848782 lt!1848521) (= lambda!206918 lambda!206863))))

(declare-fun bs!1086093 () Bool)

(assert (= bs!1086093 (and d!1490224 b!4688976)))

(assert (=> bs!1086093 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206888))))

(declare-fun bs!1086094 () Bool)

(assert (= bs!1086094 (and d!1490224 b!4688937)))

(assert (=> bs!1086094 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206866))))

(declare-fun bs!1086095 () Bool)

(assert (= bs!1086095 (and d!1490224 b!4688936)))

(assert (=> bs!1086095 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206867))))

(declare-fun bs!1086096 () Bool)

(assert (= bs!1086096 (and d!1490224 b!4689122)))

(assert (=> bs!1086096 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206916))))

(assert (=> bs!1086091 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206861))))

(declare-fun bs!1086097 () Bool)

(assert (= bs!1086097 (and d!1490224 b!4689123)))

(assert (=> bs!1086097 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206915))))

(declare-fun bs!1086098 () Bool)

(assert (= bs!1086098 (and d!1490224 d!1490138)))

(assert (=> bs!1086098 (= (= lt!1848782 lt!1848635) (= lambda!206918 lambda!206884))))

(declare-fun bs!1086099 () Bool)

(assert (= bs!1086099 (and d!1490224 d!1490126)))

(assert (=> bs!1086099 (= (= lt!1848782 lt!1848572) (= lambda!206918 lambda!206869))))

(declare-fun bs!1086100 () Bool)

(assert (= bs!1086100 (and d!1490224 d!1490152)))

(assert (=> bs!1086100 (= (= lt!1848782 lt!1848664) (= lambda!206918 lambda!206891))))

(declare-fun bs!1086101 () Bool)

(assert (= bs!1086101 (and d!1490224 d!1490032)))

(assert (=> bs!1086101 (not (= lambda!206918 lambda!206772))))

(declare-fun bs!1086102 () Bool)

(assert (= bs!1086102 (and d!1490224 b!4688975)))

(assert (=> bs!1086102 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206889))))

(declare-fun bs!1086103 () Bool)

(assert (= bs!1086103 (and d!1490224 b!4688961)))

(assert (=> bs!1086103 (= (= lt!1848782 lt!1848621) (= lambda!206918 lambda!206883))))

(assert (=> bs!1086096 (= (= lt!1848782 lt!1848768) (= lambda!206918 lambda!206917))))

(declare-fun bs!1086104 () Bool)

(assert (= bs!1086104 (and d!1490224 b!4688962)))

(assert (=> bs!1086104 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206881))))

(declare-fun bs!1086105 () Bool)

(assert (= bs!1086105 (and d!1490224 b!4688907)))

(assert (=> bs!1086105 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206860))))

(assert (=> bs!1086103 (= (= lt!1848782 lt!1848242) (= lambda!206918 lambda!206882))))

(declare-fun bs!1086106 () Bool)

(assert (= bs!1086106 (and d!1490224 d!1490058)))

(assert (=> bs!1086106 (not (= lambda!206918 lambda!206782))))

(assert (=> bs!1086102 (= (= lt!1848782 lt!1848650) (= lambda!206918 lambda!206890))))

(assert (=> bs!1086095 (= (= lt!1848782 lt!1848558) (= lambda!206918 lambda!206868))))

(assert (=> d!1490224 true))

(declare-fun e!2925375 () Bool)

(assert (=> d!1490224 e!2925375))

(declare-fun res!1977625 () Bool)

(assert (=> d!1490224 (=> (not res!1977625) (not e!2925375))))

(assert (=> d!1490224 (= res!1977625 (forall!11313 (_2!30188 (h!58635 (toList!5585 lm!2023))) lambda!206918))))

(declare-fun e!2925376 () ListMap!4949)

(assert (=> d!1490224 (= lt!1848782 e!2925376)))

(declare-fun c!801780 () Bool)

(assert (=> d!1490224 (= c!801780 ((_ is Nil!52393) (_2!30188 (h!58635 (toList!5585 lm!2023)))))))

(assert (=> d!1490224 (noDuplicateKeys!1848 (_2!30188 (h!58635 (toList!5585 lm!2023))))))

(assert (=> d!1490224 (= (addToMapMapFromBucket!1280 (_2!30188 (h!58635 (toList!5585 lm!2023))) lt!1848242) lt!1848782)))

(declare-fun bm!327700 () Bool)

(declare-fun call!327707 () Unit!123773)

(assert (=> bm!327700 (= call!327707 (lemmaContainsAllItsOwnKeys!694 lt!1848242))))

(assert (=> b!4689122 (= e!2925376 lt!1848768)))

(declare-fun lt!1848779 () ListMap!4949)

(assert (=> b!4689122 (= lt!1848779 (+!2132 lt!1848242 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023))))))))

(assert (=> b!4689122 (= lt!1848768 (addToMapMapFromBucket!1280 (t!359689 (_2!30188 (h!58635 (toList!5585 lm!2023)))) (+!2132 lt!1848242 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023)))))))))

(declare-fun lt!1848784 () Unit!123773)

(assert (=> b!4689122 (= lt!1848784 call!327707)))

(declare-fun call!327706 () Bool)

(assert (=> b!4689122 call!327706))

(declare-fun lt!1848781 () Unit!123773)

(assert (=> b!4689122 (= lt!1848781 lt!1848784)))

(assert (=> b!4689122 (forall!11313 (toList!5586 lt!1848779) lambda!206917)))

(declare-fun lt!1848773 () Unit!123773)

(declare-fun Unit!123884 () Unit!123773)

(assert (=> b!4689122 (= lt!1848773 Unit!123884)))

(assert (=> b!4689122 (forall!11313 (t!359689 (_2!30188 (h!58635 (toList!5585 lm!2023)))) lambda!206917)))

(declare-fun lt!1848771 () Unit!123773)

(declare-fun Unit!123885 () Unit!123773)

(assert (=> b!4689122 (= lt!1848771 Unit!123885)))

(declare-fun lt!1848766 () Unit!123773)

(declare-fun Unit!123886 () Unit!123773)

(assert (=> b!4689122 (= lt!1848766 Unit!123886)))

(declare-fun lt!1848785 () Unit!123773)

(assert (=> b!4689122 (= lt!1848785 (forallContained!3420 (toList!5586 lt!1848779) lambda!206917 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023))))))))

(assert (=> b!4689122 (contains!15584 lt!1848779 (_1!30187 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023))))))))

(declare-fun lt!1848769 () Unit!123773)

(declare-fun Unit!123887 () Unit!123773)

(assert (=> b!4689122 (= lt!1848769 Unit!123887)))

(assert (=> b!4689122 (contains!15584 lt!1848768 (_1!30187 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023))))))))

(declare-fun lt!1848774 () Unit!123773)

(declare-fun Unit!123888 () Unit!123773)

(assert (=> b!4689122 (= lt!1848774 Unit!123888)))

(assert (=> b!4689122 (forall!11313 (_2!30188 (h!58635 (toList!5585 lm!2023))) lambda!206917)))

(declare-fun lt!1848780 () Unit!123773)

(declare-fun Unit!123889 () Unit!123773)

(assert (=> b!4689122 (= lt!1848780 Unit!123889)))

(assert (=> b!4689122 (forall!11313 (toList!5586 lt!1848779) lambda!206917)))

(declare-fun lt!1848770 () Unit!123773)

(declare-fun Unit!123890 () Unit!123773)

(assert (=> b!4689122 (= lt!1848770 Unit!123890)))

(declare-fun lt!1848772 () Unit!123773)

(declare-fun Unit!123891 () Unit!123773)

(assert (=> b!4689122 (= lt!1848772 Unit!123891)))

(declare-fun lt!1848775 () Unit!123773)

(assert (=> b!4689122 (= lt!1848775 (addForallContainsKeyThenBeforeAdding!693 lt!1848242 lt!1848768 (_1!30187 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023))))) (_2!30187 (h!58634 (_2!30188 (h!58635 (toList!5585 lm!2023)))))))))

(assert (=> b!4689122 (forall!11313 (toList!5586 lt!1848242) lambda!206917)))

(declare-fun lt!1848767 () Unit!123773)

(assert (=> b!4689122 (= lt!1848767 lt!1848775)))

(assert (=> b!4689122 (forall!11313 (toList!5586 lt!1848242) lambda!206917)))

(declare-fun lt!1848783 () Unit!123773)

(declare-fun Unit!123892 () Unit!123773)

(assert (=> b!4689122 (= lt!1848783 Unit!123892)))

(declare-fun res!1977626 () Bool)

(assert (=> b!4689122 (= res!1977626 (forall!11313 (_2!30188 (h!58635 (toList!5585 lm!2023))) lambda!206917))))

(declare-fun e!2925374 () Bool)

(assert (=> b!4689122 (=> (not res!1977626) (not e!2925374))))

(assert (=> b!4689122 e!2925374))

(declare-fun lt!1848776 () Unit!123773)

(declare-fun Unit!123893 () Unit!123773)

(assert (=> b!4689122 (= lt!1848776 Unit!123893)))

(declare-fun bm!327701 () Bool)

(assert (=> bm!327701 (= call!327706 (forall!11313 (toList!5586 lt!1848242) (ite c!801780 lambda!206915 lambda!206916)))))

(assert (=> b!4689123 (= e!2925376 lt!1848242)))

(declare-fun lt!1848777 () Unit!123773)

(assert (=> b!4689123 (= lt!1848777 call!327707)))

(declare-fun call!327705 () Bool)

(assert (=> b!4689123 call!327705))

(declare-fun lt!1848765 () Unit!123773)

(assert (=> b!4689123 (= lt!1848765 lt!1848777)))

(assert (=> b!4689123 call!327706))

(declare-fun lt!1848778 () Unit!123773)

(declare-fun Unit!123894 () Unit!123773)

(assert (=> b!4689123 (= lt!1848778 Unit!123894)))

(declare-fun b!4689124 () Bool)

(declare-fun res!1977627 () Bool)

(assert (=> b!4689124 (=> (not res!1977627) (not e!2925375))))

(assert (=> b!4689124 (= res!1977627 (forall!11313 (toList!5586 lt!1848242) lambda!206918))))

(declare-fun b!4689125 () Bool)

(assert (=> b!4689125 (= e!2925374 call!327705)))

(declare-fun bm!327702 () Bool)

(assert (=> bm!327702 (= call!327705 (forall!11313 (toList!5586 lt!1848242) (ite c!801780 lambda!206915 lambda!206917)))))

(declare-fun b!4689126 () Bool)

(assert (=> b!4689126 (= e!2925375 (invariantList!1406 (toList!5586 lt!1848782)))))

(assert (= (and d!1490224 c!801780) b!4689123))

(assert (= (and d!1490224 (not c!801780)) b!4689122))

(assert (= (and b!4689122 res!1977626) b!4689125))

(assert (= (or b!4689123 b!4689122) bm!327700))

(assert (= (or b!4689123 b!4689122) bm!327701))

(assert (= (or b!4689123 b!4689125) bm!327702))

(assert (= (and d!1490224 res!1977625) b!4689124))

(assert (= (and b!4689124 res!1977627) b!4689126))

(assert (=> bm!327700 m!5590037))

(declare-fun m!5590499 () Bool)

(assert (=> b!4689124 m!5590499))

(declare-fun m!5590501 () Bool)

(assert (=> b!4689126 m!5590501))

(declare-fun m!5590503 () Bool)

(assert (=> d!1490224 m!5590503))

(declare-fun m!5590505 () Bool)

(assert (=> d!1490224 m!5590505))

(declare-fun m!5590507 () Bool)

(assert (=> bm!327702 m!5590507))

(declare-fun m!5590509 () Bool)

(assert (=> bm!327701 m!5590509))

(declare-fun m!5590511 () Bool)

(assert (=> b!4689122 m!5590511))

(declare-fun m!5590513 () Bool)

(assert (=> b!4689122 m!5590513))

(assert (=> b!4689122 m!5590513))

(declare-fun m!5590515 () Bool)

(assert (=> b!4689122 m!5590515))

(declare-fun m!5590517 () Bool)

(assert (=> b!4689122 m!5590517))

(declare-fun m!5590519 () Bool)

(assert (=> b!4689122 m!5590519))

(assert (=> b!4689122 m!5590519))

(declare-fun m!5590521 () Bool)

(assert (=> b!4689122 m!5590521))

(declare-fun m!5590523 () Bool)

(assert (=> b!4689122 m!5590523))

(assert (=> b!4689122 m!5590511))

(declare-fun m!5590525 () Bool)

(assert (=> b!4689122 m!5590525))

(declare-fun m!5590527 () Bool)

(assert (=> b!4689122 m!5590527))

(assert (=> b!4689122 m!5590515))

(declare-fun m!5590529 () Bool)

(assert (=> b!4689122 m!5590529))

(assert (=> b!4688698 d!1490224))

(declare-fun bs!1086107 () Bool)

(declare-fun d!1490226 () Bool)

(assert (= bs!1086107 (and d!1490226 d!1490168)))

(declare-fun lambda!206919 () Int)

(assert (=> bs!1086107 (not (= lambda!206919 lambda!206895))))

(declare-fun bs!1086108 () Bool)

(assert (= bs!1086108 (and d!1490226 d!1490122)))

(assert (=> bs!1086108 (= lambda!206919 lambda!206865)))

(declare-fun bs!1086109 () Bool)

(assert (= bs!1086109 (and d!1490226 d!1490130)))

(assert (=> bs!1086109 (= lambda!206919 lambda!206879)))

(declare-fun bs!1086110 () Bool)

(assert (= bs!1086110 (and d!1490226 d!1490056)))

(assert (=> bs!1086110 (= lambda!206919 lambda!206781)))

(declare-fun bs!1086111 () Bool)

(assert (= bs!1086111 (and d!1490226 start!474176)))

(assert (=> bs!1086111 (= lambda!206919 lambda!206769)))

(declare-fun bs!1086112 () Bool)

(assert (= bs!1086112 (and d!1490226 d!1490112)))

(assert (=> bs!1086112 (= lambda!206919 lambda!206864)))

(declare-fun bs!1086113 () Bool)

(assert (= bs!1086113 (and d!1490226 d!1490190)))

(assert (=> bs!1086113 (= lambda!206919 lambda!206904)))

(declare-fun bs!1086114 () Bool)

(assert (= bs!1086114 (and d!1490226 d!1490128)))

(assert (=> bs!1086114 (= lambda!206919 lambda!206870)))

(declare-fun bs!1086115 () Bool)

(assert (= bs!1086115 (and d!1490226 d!1490216)))

(assert (=> bs!1086115 (= lambda!206919 lambda!206914)))

(declare-fun lt!1848786 () ListMap!4949)

(assert (=> d!1490226 (invariantList!1406 (toList!5586 lt!1848786))))

(declare-fun e!2925377 () ListMap!4949)

(assert (=> d!1490226 (= lt!1848786 e!2925377)))

(declare-fun c!801781 () Bool)

(assert (=> d!1490226 (= c!801781 ((_ is Cons!52394) (t!359690 (toList!5585 lm!2023))))))

(assert (=> d!1490226 (forall!11311 (t!359690 (toList!5585 lm!2023)) lambda!206919)))

(assert (=> d!1490226 (= (extractMap!1874 (t!359690 (toList!5585 lm!2023))) lt!1848786)))

(declare-fun b!4689127 () Bool)

(assert (=> b!4689127 (= e!2925377 (addToMapMapFromBucket!1280 (_2!30188 (h!58635 (t!359690 (toList!5585 lm!2023)))) (extractMap!1874 (t!359690 (t!359690 (toList!5585 lm!2023))))))))

(declare-fun b!4689128 () Bool)

(assert (=> b!4689128 (= e!2925377 (ListMap!4950 Nil!52393))))

(assert (= (and d!1490226 c!801781) b!4689127))

(assert (= (and d!1490226 (not c!801781)) b!4689128))

(declare-fun m!5590531 () Bool)

(assert (=> d!1490226 m!5590531))

(declare-fun m!5590533 () Bool)

(assert (=> d!1490226 m!5590533))

(declare-fun m!5590535 () Bool)

(assert (=> b!4689127 m!5590535))

(assert (=> b!4689127 m!5590535))

(declare-fun m!5590537 () Bool)

(assert (=> b!4689127 m!5590537))

(assert (=> b!4688698 d!1490226))

(declare-fun d!1490228 () Bool)

(declare-fun tail!8577 (List!52518) List!52518)

(assert (=> d!1490228 (= (tail!8574 lm!2023) (ListLongMap!4116 (tail!8577 (toList!5585 lm!2023))))))

(declare-fun bs!1086116 () Bool)

(assert (= bs!1086116 d!1490228))

(declare-fun m!5590539 () Bool)

(assert (=> bs!1086116 m!5590539))

(assert (=> b!4688698 d!1490228))

(declare-fun d!1490230 () Bool)

(declare-fun res!1977628 () Bool)

(declare-fun e!2925378 () Bool)

(assert (=> d!1490230 (=> res!1977628 e!2925378)))

(assert (=> d!1490230 (= res!1977628 (not ((_ is Cons!52393) newBucket!218)))))

(assert (=> d!1490230 (= (noDuplicateKeys!1848 newBucket!218) e!2925378)))

(declare-fun b!4689129 () Bool)

(declare-fun e!2925379 () Bool)

(assert (=> b!4689129 (= e!2925378 e!2925379)))

(declare-fun res!1977629 () Bool)

(assert (=> b!4689129 (=> (not res!1977629) (not e!2925379))))

(assert (=> b!4689129 (= res!1977629 (not (containsKey!3039 (t!359689 newBucket!218) (_1!30187 (h!58634 newBucket!218)))))))

(declare-fun b!4689130 () Bool)

(assert (=> b!4689130 (= e!2925379 (noDuplicateKeys!1848 (t!359689 newBucket!218)))))

(assert (= (and d!1490230 (not res!1977628)) b!4689129))

(assert (= (and b!4689129 res!1977629) b!4689130))

(declare-fun m!5590541 () Bool)

(assert (=> b!4689129 m!5590541))

(declare-fun m!5590543 () Bool)

(assert (=> b!4689130 m!5590543))

(assert (=> b!4688709 d!1490230))

(declare-fun b!4689135 () Bool)

(declare-fun e!2925382 () Bool)

(declare-fun tp!1345838 () Bool)

(declare-fun tp!1345839 () Bool)

(assert (=> b!4689135 (= e!2925382 (and tp!1345838 tp!1345839))))

(assert (=> b!4688700 (= tp!1345822 e!2925382)))

(assert (= (and b!4688700 ((_ is Cons!52394) (toList!5585 lm!2023))) b!4689135))

(declare-fun b!4689140 () Bool)

(declare-fun e!2925385 () Bool)

(declare-fun tp!1345842 () Bool)

(assert (=> b!4689140 (= e!2925385 (and tp_is_empty!30685 tp_is_empty!30687 tp!1345842))))

(assert (=> b!4688706 (= tp!1345821 e!2925385)))

(assert (= (and b!4688706 ((_ is Cons!52393) (t!359689 oldBucket!34))) b!4689140))

(declare-fun e!2925386 () Bool)

(declare-fun tp!1345843 () Bool)

(declare-fun b!4689141 () Bool)

(assert (=> b!4689141 (= e!2925386 (and tp_is_empty!30685 tp_is_empty!30687 tp!1345843))))

(assert (=> b!4688703 (= tp!1345823 e!2925386)))

(assert (= (and b!4688703 ((_ is Cons!52393) (t!359689 newBucket!218))) b!4689141))

(declare-fun b_lambda!176959 () Bool)

(assert (= b_lambda!176941 (or start!474176 b_lambda!176959)))

(declare-fun bs!1086117 () Bool)

(declare-fun d!1490232 () Bool)

(assert (= bs!1086117 (and d!1490232 start!474176)))

(assert (=> bs!1086117 (= (dynLambda!21709 lambda!206769 (h!58635 lt!1848236)) (noDuplicateKeys!1848 (_2!30188 (h!58635 lt!1848236))))))

(declare-fun m!5590545 () Bool)

(assert (=> bs!1086117 m!5590545))

(assert (=> b!4688720 d!1490232))

(declare-fun b_lambda!176961 () Bool)

(assert (= b_lambda!176943 (or start!474176 b_lambda!176961)))

(declare-fun bs!1086118 () Bool)

(declare-fun d!1490234 () Bool)

(assert (= bs!1086118 (and d!1490234 start!474176)))

(assert (=> bs!1086118 (= (dynLambda!21709 lambda!206769 (h!58635 (toList!5585 lm!2023))) (noDuplicateKeys!1848 (_2!30188 (h!58635 (toList!5585 lm!2023)))))))

(assert (=> bs!1086118 m!5590505))

(assert (=> b!4688722 d!1490234))

(declare-fun b_lambda!176963 () Bool)

(assert (= b_lambda!176951 (or start!474176 b_lambda!176963)))

(declare-fun bs!1086119 () Bool)

(declare-fun d!1490236 () Bool)

(assert (= bs!1086119 (and d!1490236 start!474176)))

(assert (=> bs!1086119 (= (dynLambda!21709 lambda!206769 lt!1848240) (noDuplicateKeys!1848 (_2!30188 lt!1848240)))))

(declare-fun m!5590547 () Bool)

(assert (=> bs!1086119 m!5590547))

(assert (=> d!1490198 d!1490236))

(check-sat (not bm!327695) tp_is_empty!30685 (not b!4688805) (not b!4688742) (not bm!327687) (not bm!327691) (not b!4689095) (not d!1490198) (not b!4689109) (not b!4688734) (not b!4688723) (not d!1490148) (not b!4689014) (not bm!327693) (not b!4688906) (not d!1490190) (not d!1490216) (not d!1490116) (not d!1490208) (not d!1490058) (not d!1490112) (not b!4689060) (not b!4688809) (not d!1490158) (not b!4689135) (not b!4689122) (not bm!327692) (not bm!327690) (not d!1490130) (not b!4688961) (not b!4688963) (not d!1490030) (not b!4689140) (not b!4689119) (not b!4689126) (not d!1490194) (not d!1490126) (not b_lambda!176961) (not b!4688941) tp_is_empty!30687 (not b!4689044) (not b!4689007) (not d!1490060) (not d!1490038) (not b!4688749) (not b!4688815) (not bs!1086119) (not b!4688929) (not b!4688931) (not b!4688930) (not bm!327686) (not b!4688940) (not d!1490168) (not d!1490034) (not bm!327685) (not b!4689141) (not b!4689006) (not d!1490162) (not bm!327694) (not d!1490228) (not b!4689124) (not b!4688807) (not d!1490222) (not b!4689117) (not d!1490124) (not d!1490028) (not b!4688804) (not d!1490218) (not b!4689093) (not b!4689055) (not b!4688965) (not b!4688748) (not b!4688910) (not d!1490176) (not bm!327688) (not b!4688938) (not d!1490032) (not b_lambda!176963) (not d!1490122) (not d!1490146) (not b!4689107) (not b!4689091) (not b!4688975) (not bm!327655) (not d!1490110) (not d!1490132) (not b!4688908) (not bm!327702) (not b!4688806) (not b!4688934) (not d!1490180) (not bm!327700) (not b!4688928) (not b!4689108) (not b!4688808) (not d!1490118) (not b!4688925) (not bm!327701) (not d!1490152) (not b!4688979) (not bs!1086118) (not b!4688920) (not b!4688919) (not b!4688721) (not d!1490138) (not b!4688932) (not bm!327684) (not b!4688936) (not bm!327689) (not b!4688810) (not b!4689110) (not d!1490128) (not d!1490226) (not d!1490202) (not b!4688926) (not b!4689130) (not b!4688927) (not d!1490224) (not b!4689121) (not d!1490056) (not b!4688935) (not b!4689129) (not b!4688921) (not b_lambda!176959) (not d!1490160) (not b!4688977) (not b!4689127) (not b!4689092) (not bm!327683) (not d!1490178) (not bs!1086117) (not b!4689097))
(check-sat)
