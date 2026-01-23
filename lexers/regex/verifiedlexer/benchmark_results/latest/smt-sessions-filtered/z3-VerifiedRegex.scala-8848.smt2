; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472732 () Bool)

(assert start!472732)

(declare-fun b!4681172 () Bool)

(declare-fun e!2920637 () Bool)

(declare-fun e!2920634 () Bool)

(assert (=> b!4681172 (= e!2920637 e!2920634)))

(declare-fun res!1972821 () Bool)

(assert (=> b!4681172 (=> res!1972821 e!2920634)))

(declare-datatypes ((K!13645 0))(
  ( (K!13646 (val!19187 Int)) )
))
(declare-datatypes ((V!13891 0))(
  ( (V!13892 (val!19188 Int)) )
))
(declare-datatypes ((tuple2!53586 0))(
  ( (tuple2!53587 (_1!30087 K!13645) (_2!30087 V!13891)) )
))
(declare-datatypes ((List!52391 0))(
  ( (Nil!52267) (Cons!52267 (h!58482 tuple2!53586) (t!359549 List!52391)) )
))
(declare-datatypes ((ListMap!4849 0))(
  ( (ListMap!4850 (toList!5485 List!52391)) )
))
(declare-fun lt!1841036 () ListMap!4849)

(declare-fun lt!1841021 () ListMap!4849)

(declare-fun eq!987 (ListMap!4849 ListMap!4849) Bool)

(assert (=> b!4681172 (= res!1972821 (not (eq!987 lt!1841036 lt!1841021)))))

(declare-fun lt!1841032 () ListMap!4849)

(assert (=> b!4681172 (eq!987 lt!1841032 lt!1841036)))

(declare-fun lt!1841023 () ListMap!4849)

(declare-fun key!4653 () K!13645)

(declare-fun -!662 (ListMap!4849 K!13645) ListMap!4849)

(assert (=> b!4681172 (= lt!1841036 (-!662 lt!1841023 key!4653))))

(declare-fun lt!1841029 () ListMap!4849)

(declare-datatypes ((Unit!122749 0))(
  ( (Unit!122750) )
))
(declare-fun lt!1841022 () Unit!122749)

(declare-fun lemmaRemovePreservesEq!82 (ListMap!4849 ListMap!4849 K!13645) Unit!122749)

(assert (=> b!4681172 (= lt!1841022 (lemmaRemovePreservesEq!82 lt!1841029 lt!1841023 key!4653))))

(declare-fun b!4681173 () Bool)

(declare-fun e!2920648 () Bool)

(declare-fun e!2920641 () Bool)

(assert (=> b!4681173 (= e!2920648 e!2920641)))

(declare-fun res!1972820 () Bool)

(assert (=> b!4681173 (=> res!1972820 e!2920641)))

(declare-fun lt!1841031 () List!52391)

(declare-fun newBucket!218 () List!52391)

(assert (=> b!4681173 (= res!1972820 (not (= lt!1841031 newBucket!218)))))

(declare-fun oldBucket!34 () List!52391)

(declare-fun tail!8459 (List!52391) List!52391)

(assert (=> b!4681173 (= lt!1841031 (tail!8459 oldBucket!34))))

(declare-fun b!4681174 () Bool)

(declare-fun res!1972830 () Bool)

(declare-fun e!2920636 () Bool)

(assert (=> b!4681174 (=> res!1972830 e!2920636)))

(declare-fun lt!1841026 () ListMap!4849)

(assert (=> b!4681174 (= res!1972830 (not (= lt!1841026 lt!1841021)))))

(declare-fun b!4681175 () Bool)

(declare-fun res!1972832 () Bool)

(declare-fun e!2920645 () Bool)

(assert (=> b!4681175 (=> (not res!1972832) (not e!2920645))))

(declare-datatypes ((tuple2!53588 0))(
  ( (tuple2!53589 (_1!30088 (_ BitVec 64)) (_2!30088 List!52391)) )
))
(declare-datatypes ((List!52392 0))(
  ( (Nil!52268) (Cons!52268 (h!58483 tuple2!53588) (t!359550 List!52392)) )
))
(declare-datatypes ((ListLongMap!4015 0))(
  ( (ListLongMap!4016 (toList!5486 List!52392)) )
))
(declare-fun lm!2023 () ListLongMap!4015)

(declare-datatypes ((Hashable!6167 0))(
  ( (HashableExt!6166 (__x!31870 Int)) )
))
(declare-fun hashF!1323 () Hashable!6167)

(declare-fun allKeysSameHashInMap!1712 (ListLongMap!4015 Hashable!6167) Bool)

(assert (=> b!4681175 (= res!1972832 (allKeysSameHashInMap!1712 lm!2023 hashF!1323))))

(declare-fun b!4681176 () Bool)

(declare-fun e!2920647 () Bool)

(assert (=> b!4681176 (= e!2920647 (not e!2920648))))

(declare-fun res!1972813 () Bool)

(assert (=> b!4681176 (=> res!1972813 e!2920648)))

(get-info :version)

(assert (=> b!4681176 (= res!1972813 (or (not ((_ is Cons!52267) oldBucket!34)) (not (= (_1!30087 (h!58482 oldBucket!34)) key!4653))))))

(declare-fun lt!1841037 () ListMap!4849)

(declare-fun lt!1841024 () ListMap!4849)

(declare-fun addToMapMapFromBucket!1230 (List!52391 ListMap!4849) ListMap!4849)

(assert (=> b!4681176 (= lt!1841037 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (toList!5486 lm!2023))) lt!1841024))))

(declare-fun extractMap!1824 (List!52392) ListMap!4849)

(assert (=> b!4681176 (= lt!1841024 (extractMap!1824 (t!359550 (toList!5486 lm!2023))))))

(declare-fun tail!8460 (ListLongMap!4015) ListLongMap!4015)

(assert (=> b!4681176 (= (t!359550 (toList!5486 lm!2023)) (toList!5486 (tail!8460 lm!2023)))))

(declare-fun b!4681177 () Bool)

(declare-fun res!1972824 () Bool)

(assert (=> b!4681177 (=> res!1972824 e!2920634)))

(declare-fun lt!1841025 () ListMap!4849)

(assert (=> b!4681177 (= res!1972824 (not (eq!987 lt!1841025 lt!1841036)))))

(declare-fun b!4681178 () Bool)

(declare-fun res!1972829 () Bool)

(declare-fun e!2920639 () Bool)

(assert (=> b!4681178 (=> (not res!1972829) (not e!2920639))))

(declare-fun noDuplicateKeys!1798 (List!52391) Bool)

(assert (=> b!4681178 (= res!1972829 (noDuplicateKeys!1798 newBucket!218))))

(declare-fun b!4681180 () Bool)

(declare-fun e!2920640 () Bool)

(assert (=> b!4681180 (= e!2920640 e!2920637)))

(declare-fun res!1972814 () Bool)

(assert (=> b!4681180 (=> res!1972814 e!2920637)))

(assert (=> b!4681180 (= res!1972814 (not (eq!987 lt!1841029 lt!1841023)))))

(declare-fun lt!1841028 () tuple2!53588)

(assert (=> b!4681180 (= lt!1841023 (extractMap!1824 (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023)))))))

(declare-fun lt!1841034 () tuple2!53588)

(declare-fun b!4681181 () Bool)

(declare-fun lambda!204869 () Int)

(declare-fun forall!11235 (List!52392 Int) Bool)

(declare-fun tail!8461 (List!52392) List!52392)

(assert (=> b!4681181 (= e!2920634 (forall!11235 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023))) lambda!204869))))

(declare-fun b!4681182 () Bool)

(assert (=> b!4681182 (= e!2920639 e!2920645)))

(declare-fun res!1972827 () Bool)

(assert (=> b!4681182 (=> (not res!1972827) (not e!2920645))))

(declare-fun contains!15398 (ListMap!4849 K!13645) Bool)

(assert (=> b!4681182 (= res!1972827 (contains!15398 lt!1841037 key!4653))))

(assert (=> b!4681182 (= lt!1841037 (extractMap!1824 (toList!5486 lm!2023)))))

(declare-fun b!4681183 () Bool)

(declare-fun res!1972826 () Bool)

(assert (=> b!4681183 (=> (not res!1972826) (not e!2920645))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3980 (Hashable!6167 K!13645) (_ BitVec 64))

(assert (=> b!4681183 (= res!1972826 (= (hash!3980 hashF!1323 key!4653) hash!405))))

(declare-fun b!4681184 () Bool)

(declare-fun e!2920638 () Bool)

(assert (=> b!4681184 (= e!2920638 e!2920640)))

(declare-fun res!1972816 () Bool)

(assert (=> b!4681184 (=> res!1972816 e!2920640)))

(assert (=> b!4681184 (= res!1972816 (not (= lt!1841032 lt!1841026)))))

(assert (=> b!4681184 (= lt!1841032 (-!662 lt!1841029 key!4653))))

(declare-fun +!2100 (ListMap!4849 tuple2!53586) ListMap!4849)

(assert (=> b!4681184 (= (-!662 (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) key!4653) lt!1841026)))

(declare-fun lt!1841033 () Unit!122749)

(declare-fun addThenRemoveForNewKeyIsSame!53 (ListMap!4849 K!13645 V!13891) Unit!122749)

(assert (=> b!4681184 (= lt!1841033 (addThenRemoveForNewKeyIsSame!53 lt!1841026 key!4653 (_2!30087 (h!58482 oldBucket!34))))))

(declare-fun b!4681185 () Bool)

(declare-fun e!2920644 () Bool)

(assert (=> b!4681185 (= e!2920641 e!2920644)))

(declare-fun res!1972817 () Bool)

(assert (=> b!4681185 (=> res!1972817 e!2920644)))

(assert (=> b!4681185 (= res!1972817 (not (= lt!1841021 lt!1841025)))))

(assert (=> b!4681185 (= lt!1841025 (extractMap!1824 (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023)))))))

(declare-fun lt!1841035 () List!52392)

(assert (=> b!4681185 (= lt!1841021 (extractMap!1824 lt!1841035))))

(assert (=> b!4681185 (= lt!1841034 (tuple2!53589 hash!405 newBucket!218))))

(assert (=> b!4681185 (= lt!1841035 (Cons!52268 (tuple2!53589 hash!405 lt!1841031) (t!359550 (toList!5486 lm!2023))))))

(declare-fun b!4681186 () Bool)

(declare-fun e!2920635 () Bool)

(assert (=> b!4681186 (= e!2920635 e!2920636)))

(declare-fun res!1972823 () Bool)

(assert (=> b!4681186 (=> res!1972823 e!2920636)))

(assert (=> b!4681186 (= res!1972823 (not (eq!987 lt!1841029 (addToMapMapFromBucket!1230 oldBucket!34 lt!1841024))))))

(assert (=> b!4681186 (= lt!1841029 (+!2100 lt!1841026 (h!58482 oldBucket!34)))))

(declare-fun lt!1841030 () tuple2!53586)

(assert (=> b!4681186 (eq!987 (addToMapMapFromBucket!1230 (Cons!52267 lt!1841030 lt!1841031) lt!1841024) (+!2100 lt!1841026 lt!1841030))))

(declare-fun lt!1841027 () Unit!122749)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!236 (tuple2!53586 List!52391 ListMap!4849) Unit!122749)

(assert (=> b!4681186 (= lt!1841027 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!236 lt!1841030 lt!1841031 lt!1841024))))

(declare-fun head!9887 (List!52391) tuple2!53586)

(assert (=> b!4681186 (= lt!1841030 (head!9887 oldBucket!34))))

(declare-fun b!4681187 () Bool)

(assert (=> b!4681187 (= e!2920644 e!2920635)))

(declare-fun res!1972825 () Bool)

(assert (=> b!4681187 (=> res!1972825 e!2920635)))

(assert (=> b!4681187 (= res!1972825 (not (= lt!1841026 (addToMapMapFromBucket!1230 newBucket!218 lt!1841024))))))

(assert (=> b!4681187 (= lt!1841026 (addToMapMapFromBucket!1230 lt!1841031 lt!1841024))))

(declare-fun tp!1345111 () Bool)

(declare-fun tp_is_empty!30485 () Bool)

(declare-fun tp_is_empty!30487 () Bool)

(declare-fun e!2920643 () Bool)

(declare-fun b!4681188 () Bool)

(assert (=> b!4681188 (= e!2920643 (and tp_is_empty!30485 tp_is_empty!30487 tp!1345111))))

(declare-fun e!2920646 () Bool)

(declare-fun b!4681189 () Bool)

(declare-fun tp!1345113 () Bool)

(assert (=> b!4681189 (= e!2920646 (and tp_is_empty!30485 tp_is_empty!30487 tp!1345113))))

(declare-fun b!4681190 () Bool)

(declare-fun res!1972822 () Bool)

(assert (=> b!4681190 (=> res!1972822 e!2920636)))

(declare-fun containsKey!2947 (List!52391 K!13645) Bool)

(assert (=> b!4681190 (= res!1972822 (containsKey!2947 lt!1841031 key!4653))))

(declare-fun b!4681191 () Bool)

(declare-fun e!2920642 () Bool)

(declare-fun tp!1345112 () Bool)

(assert (=> b!4681191 (= e!2920642 tp!1345112)))

(declare-fun b!4681192 () Bool)

(declare-fun res!1972831 () Bool)

(assert (=> b!4681192 (=> (not res!1972831) (not e!2920645))))

(declare-fun allKeysSameHash!1624 (List!52391 (_ BitVec 64) Hashable!6167) Bool)

(assert (=> b!4681192 (= res!1972831 (allKeysSameHash!1624 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4681193 () Bool)

(declare-fun res!1972835 () Bool)

(assert (=> b!4681193 (=> (not res!1972835) (not e!2920647))))

(assert (=> b!4681193 (= res!1972835 ((_ is Cons!52268) (toList!5486 lm!2023)))))

(declare-fun b!4681179 () Bool)

(declare-fun res!1972834 () Bool)

(assert (=> b!4681179 (=> (not res!1972834) (not e!2920639))))

(assert (=> b!4681179 (= res!1972834 (noDuplicateKeys!1798 oldBucket!34))))

(declare-fun res!1972818 () Bool)

(assert (=> start!472732 (=> (not res!1972818) (not e!2920639))))

(assert (=> start!472732 (= res!1972818 (forall!11235 (toList!5486 lm!2023) lambda!204869))))

(assert (=> start!472732 e!2920639))

(declare-fun inv!67519 (ListLongMap!4015) Bool)

(assert (=> start!472732 (and (inv!67519 lm!2023) e!2920642)))

(assert (=> start!472732 tp_is_empty!30485))

(assert (=> start!472732 e!2920643))

(assert (=> start!472732 true))

(assert (=> start!472732 e!2920646))

(declare-fun b!4681194 () Bool)

(assert (=> b!4681194 (= e!2920645 e!2920647)))

(declare-fun res!1972833 () Bool)

(assert (=> b!4681194 (=> (not res!1972833) (not e!2920647))))

(declare-fun head!9888 (List!52392) tuple2!53588)

(assert (=> b!4681194 (= res!1972833 (= (head!9888 (toList!5486 lm!2023)) lt!1841028))))

(assert (=> b!4681194 (= lt!1841028 (tuple2!53589 hash!405 oldBucket!34))))

(declare-fun b!4681195 () Bool)

(declare-fun res!1972819 () Bool)

(assert (=> b!4681195 (=> (not res!1972819) (not e!2920639))))

(assert (=> b!4681195 (= res!1972819 (allKeysSameHash!1624 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4681196 () Bool)

(assert (=> b!4681196 (= e!2920636 e!2920638)))

(declare-fun res!1972815 () Bool)

(assert (=> b!4681196 (=> res!1972815 e!2920638)))

(assert (=> b!4681196 (= res!1972815 (contains!15398 lt!1841026 key!4653))))

(assert (=> b!4681196 (not (contains!15398 lt!1841021 key!4653))))

(declare-fun lt!1841038 () Unit!122749)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!398 (ListLongMap!4015 K!13645 Hashable!6167) Unit!122749)

(assert (=> b!4681196 (= lt!1841038 (lemmaNotInItsHashBucketThenNotInMap!398 (ListLongMap!4016 lt!1841035) key!4653 hashF!1323))))

(declare-fun b!4681197 () Bool)

(declare-fun res!1972828 () Bool)

(assert (=> b!4681197 (=> (not res!1972828) (not e!2920639))))

(declare-fun removePairForKey!1393 (List!52391 K!13645) List!52391)

(assert (=> b!4681197 (= res!1972828 (= (removePairForKey!1393 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!472732 res!1972818) b!4681179))

(assert (= (and b!4681179 res!1972834) b!4681178))

(assert (= (and b!4681178 res!1972829) b!4681197))

(assert (= (and b!4681197 res!1972828) b!4681195))

(assert (= (and b!4681195 res!1972819) b!4681182))

(assert (= (and b!4681182 res!1972827) b!4681183))

(assert (= (and b!4681183 res!1972826) b!4681192))

(assert (= (and b!4681192 res!1972831) b!4681175))

(assert (= (and b!4681175 res!1972832) b!4681194))

(assert (= (and b!4681194 res!1972833) b!4681193))

(assert (= (and b!4681193 res!1972835) b!4681176))

(assert (= (and b!4681176 (not res!1972813)) b!4681173))

(assert (= (and b!4681173 (not res!1972820)) b!4681185))

(assert (= (and b!4681185 (not res!1972817)) b!4681187))

(assert (= (and b!4681187 (not res!1972825)) b!4681186))

(assert (= (and b!4681186 (not res!1972823)) b!4681190))

(assert (= (and b!4681190 (not res!1972822)) b!4681174))

(assert (= (and b!4681174 (not res!1972830)) b!4681196))

(assert (= (and b!4681196 (not res!1972815)) b!4681184))

(assert (= (and b!4681184 (not res!1972816)) b!4681180))

(assert (= (and b!4681180 (not res!1972814)) b!4681172))

(assert (= (and b!4681172 (not res!1972821)) b!4681177))

(assert (= (and b!4681177 (not res!1972824)) b!4681181))

(assert (= start!472732 b!4681191))

(assert (= (and start!472732 ((_ is Cons!52267) oldBucket!34)) b!4681188))

(assert (= (and start!472732 ((_ is Cons!52267) newBucket!218)) b!4681189))

(declare-fun m!5578607 () Bool)

(assert (=> b!4681184 m!5578607))

(declare-fun m!5578609 () Bool)

(assert (=> b!4681184 m!5578609))

(assert (=> b!4681184 m!5578609))

(declare-fun m!5578611 () Bool)

(assert (=> b!4681184 m!5578611))

(declare-fun m!5578613 () Bool)

(assert (=> b!4681184 m!5578613))

(declare-fun m!5578615 () Bool)

(assert (=> start!472732 m!5578615))

(declare-fun m!5578617 () Bool)

(assert (=> start!472732 m!5578617))

(declare-fun m!5578619 () Bool)

(assert (=> b!4681185 m!5578619))

(declare-fun m!5578621 () Bool)

(assert (=> b!4681185 m!5578621))

(declare-fun m!5578623 () Bool)

(assert (=> b!4681179 m!5578623))

(declare-fun m!5578625 () Bool)

(assert (=> b!4681175 m!5578625))

(declare-fun m!5578627 () Bool)

(assert (=> b!4681183 m!5578627))

(declare-fun m!5578629 () Bool)

(assert (=> b!4681178 m!5578629))

(declare-fun m!5578631 () Bool)

(assert (=> b!4681173 m!5578631))

(declare-fun m!5578633 () Bool)

(assert (=> b!4681187 m!5578633))

(declare-fun m!5578635 () Bool)

(assert (=> b!4681187 m!5578635))

(declare-fun m!5578637 () Bool)

(assert (=> b!4681186 m!5578637))

(declare-fun m!5578639 () Bool)

(assert (=> b!4681186 m!5578639))

(declare-fun m!5578641 () Bool)

(assert (=> b!4681186 m!5578641))

(declare-fun m!5578643 () Bool)

(assert (=> b!4681186 m!5578643))

(declare-fun m!5578645 () Bool)

(assert (=> b!4681186 m!5578645))

(assert (=> b!4681186 m!5578643))

(declare-fun m!5578647 () Bool)

(assert (=> b!4681186 m!5578647))

(assert (=> b!4681186 m!5578639))

(declare-fun m!5578649 () Bool)

(assert (=> b!4681186 m!5578649))

(declare-fun m!5578651 () Bool)

(assert (=> b!4681186 m!5578651))

(assert (=> b!4681186 m!5578637))

(declare-fun m!5578653 () Bool)

(assert (=> b!4681172 m!5578653))

(declare-fun m!5578655 () Bool)

(assert (=> b!4681172 m!5578655))

(declare-fun m!5578657 () Bool)

(assert (=> b!4681172 m!5578657))

(declare-fun m!5578659 () Bool)

(assert (=> b!4681172 m!5578659))

(declare-fun m!5578661 () Bool)

(assert (=> b!4681176 m!5578661))

(declare-fun m!5578663 () Bool)

(assert (=> b!4681176 m!5578663))

(declare-fun m!5578665 () Bool)

(assert (=> b!4681176 m!5578665))

(declare-fun m!5578667 () Bool)

(assert (=> b!4681190 m!5578667))

(declare-fun m!5578669 () Bool)

(assert (=> b!4681182 m!5578669))

(declare-fun m!5578671 () Bool)

(assert (=> b!4681182 m!5578671))

(declare-fun m!5578673 () Bool)

(assert (=> b!4681192 m!5578673))

(declare-fun m!5578675 () Bool)

(assert (=> b!4681196 m!5578675))

(declare-fun m!5578677 () Bool)

(assert (=> b!4681196 m!5578677))

(declare-fun m!5578679 () Bool)

(assert (=> b!4681196 m!5578679))

(declare-fun m!5578681 () Bool)

(assert (=> b!4681181 m!5578681))

(declare-fun m!5578683 () Bool)

(assert (=> b!4681181 m!5578683))

(declare-fun m!5578685 () Bool)

(assert (=> b!4681197 m!5578685))

(declare-fun m!5578687 () Bool)

(assert (=> b!4681177 m!5578687))

(declare-fun m!5578689 () Bool)

(assert (=> b!4681195 m!5578689))

(declare-fun m!5578691 () Bool)

(assert (=> b!4681180 m!5578691))

(declare-fun m!5578693 () Bool)

(assert (=> b!4681180 m!5578693))

(declare-fun m!5578695 () Bool)

(assert (=> b!4681194 m!5578695))

(check-sat (not b!4681185) (not b!4681175) (not b!4681173) tp_is_empty!30487 (not b!4681180) (not b!4681190) (not b!4681183) (not b!4681172) (not b!4681181) (not b!4681176) (not b!4681192) (not b!4681187) (not start!472732) tp_is_empty!30485 (not b!4681194) (not b!4681191) (not b!4681184) (not b!4681186) (not b!4681182) (not b!4681188) (not b!4681196) (not b!4681189) (not b!4681178) (not b!4681197) (not b!4681195) (not b!4681177) (not b!4681179))
(check-sat)
(get-model)

(declare-fun d!1487857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9115 (List!52391) (InoxSet tuple2!53586))

(assert (=> d!1487857 (= (eq!987 lt!1841036 lt!1841021) (= (content!9115 (toList!5485 lt!1841036)) (content!9115 (toList!5485 lt!1841021))))))

(declare-fun bs!1082862 () Bool)

(assert (= bs!1082862 d!1487857))

(declare-fun m!5578697 () Bool)

(assert (=> bs!1082862 m!5578697))

(declare-fun m!5578699 () Bool)

(assert (=> bs!1082862 m!5578699))

(assert (=> b!4681172 d!1487857))

(declare-fun d!1487859 () Bool)

(assert (=> d!1487859 (= (eq!987 lt!1841032 lt!1841036) (= (content!9115 (toList!5485 lt!1841032)) (content!9115 (toList!5485 lt!1841036))))))

(declare-fun bs!1082863 () Bool)

(assert (= bs!1082863 d!1487859))

(declare-fun m!5578701 () Bool)

(assert (=> bs!1082863 m!5578701))

(assert (=> bs!1082863 m!5578697))

(assert (=> b!4681172 d!1487859))

(declare-fun d!1487861 () Bool)

(declare-fun e!2920651 () Bool)

(assert (=> d!1487861 e!2920651))

(declare-fun res!1972838 () Bool)

(assert (=> d!1487861 (=> (not res!1972838) (not e!2920651))))

(declare-fun lt!1841041 () ListMap!4849)

(assert (=> d!1487861 (= res!1972838 (not (contains!15398 lt!1841041 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!332 (List!52391 K!13645) List!52391)

(assert (=> d!1487861 (= lt!1841041 (ListMap!4850 (removePresrvNoDuplicatedKeys!332 (toList!5485 lt!1841023) key!4653)))))

(assert (=> d!1487861 (= (-!662 lt!1841023 key!4653) lt!1841041)))

(declare-fun b!4681200 () Bool)

(declare-datatypes ((List!52393 0))(
  ( (Nil!52269) (Cons!52269 (h!58486 K!13645) (t!359553 List!52393)) )
))
(declare-fun content!9116 (List!52393) (InoxSet K!13645))

(declare-fun keys!18626 (ListMap!4849) List!52393)

(assert (=> b!4681200 (= e!2920651 (= ((_ map and) (content!9116 (keys!18626 lt!1841023)) ((_ map not) (store ((as const (Array K!13645 Bool)) false) key!4653 true))) (content!9116 (keys!18626 lt!1841041))))))

(assert (= (and d!1487861 res!1972838) b!4681200))

(declare-fun m!5578703 () Bool)

(assert (=> d!1487861 m!5578703))

(declare-fun m!5578705 () Bool)

(assert (=> d!1487861 m!5578705))

(declare-fun m!5578707 () Bool)

(assert (=> b!4681200 m!5578707))

(declare-fun m!5578709 () Bool)

(assert (=> b!4681200 m!5578709))

(declare-fun m!5578711 () Bool)

(assert (=> b!4681200 m!5578711))

(declare-fun m!5578713 () Bool)

(assert (=> b!4681200 m!5578713))

(declare-fun m!5578715 () Bool)

(assert (=> b!4681200 m!5578715))

(assert (=> b!4681200 m!5578713))

(assert (=> b!4681200 m!5578709))

(assert (=> b!4681172 d!1487861))

(declare-fun d!1487863 () Bool)

(assert (=> d!1487863 (eq!987 (-!662 lt!1841029 key!4653) (-!662 lt!1841023 key!4653))))

(declare-fun lt!1841044 () Unit!122749)

(declare-fun choose!32400 (ListMap!4849 ListMap!4849 K!13645) Unit!122749)

(assert (=> d!1487863 (= lt!1841044 (choose!32400 lt!1841029 lt!1841023 key!4653))))

(assert (=> d!1487863 (eq!987 lt!1841029 lt!1841023)))

(assert (=> d!1487863 (= (lemmaRemovePreservesEq!82 lt!1841029 lt!1841023 key!4653) lt!1841044)))

(declare-fun bs!1082864 () Bool)

(assert (= bs!1082864 d!1487863))

(assert (=> bs!1082864 m!5578691))

(declare-fun m!5578717 () Bool)

(assert (=> bs!1082864 m!5578717))

(assert (=> bs!1082864 m!5578657))

(assert (=> bs!1082864 m!5578607))

(assert (=> bs!1082864 m!5578657))

(declare-fun m!5578719 () Bool)

(assert (=> bs!1082864 m!5578719))

(assert (=> bs!1082864 m!5578607))

(assert (=> b!4681172 d!1487863))

(declare-fun d!1487865 () Bool)

(declare-fun hash!3981 (Hashable!6167 K!13645) (_ BitVec 64))

(assert (=> d!1487865 (= (hash!3980 hashF!1323 key!4653) (hash!3981 hashF!1323 key!4653))))

(declare-fun bs!1082865 () Bool)

(assert (= bs!1082865 d!1487865))

(declare-fun m!5578721 () Bool)

(assert (=> bs!1082865 m!5578721))

(assert (=> b!4681183 d!1487865))

(declare-fun d!1487867 () Bool)

(assert (=> d!1487867 (= (head!9888 (toList!5486 lm!2023)) (h!58483 (toList!5486 lm!2023)))))

(assert (=> b!4681194 d!1487867))

(declare-fun d!1487869 () Bool)

(assert (=> d!1487869 (= (tail!8459 oldBucket!34) (t!359549 oldBucket!34))))

(assert (=> b!4681173 d!1487869))

(declare-fun d!1487871 () Bool)

(declare-fun e!2920652 () Bool)

(assert (=> d!1487871 e!2920652))

(declare-fun res!1972839 () Bool)

(assert (=> d!1487871 (=> (not res!1972839) (not e!2920652))))

(declare-fun lt!1841045 () ListMap!4849)

(assert (=> d!1487871 (= res!1972839 (not (contains!15398 lt!1841045 key!4653)))))

(assert (=> d!1487871 (= lt!1841045 (ListMap!4850 (removePresrvNoDuplicatedKeys!332 (toList!5485 lt!1841029) key!4653)))))

(assert (=> d!1487871 (= (-!662 lt!1841029 key!4653) lt!1841045)))

(declare-fun b!4681201 () Bool)

(assert (=> b!4681201 (= e!2920652 (= ((_ map and) (content!9116 (keys!18626 lt!1841029)) ((_ map not) (store ((as const (Array K!13645 Bool)) false) key!4653 true))) (content!9116 (keys!18626 lt!1841045))))))

(assert (= (and d!1487871 res!1972839) b!4681201))

(declare-fun m!5578723 () Bool)

(assert (=> d!1487871 m!5578723))

(declare-fun m!5578725 () Bool)

(assert (=> d!1487871 m!5578725))

(assert (=> b!4681201 m!5578707))

(declare-fun m!5578727 () Bool)

(assert (=> b!4681201 m!5578727))

(declare-fun m!5578729 () Bool)

(assert (=> b!4681201 m!5578729))

(declare-fun m!5578731 () Bool)

(assert (=> b!4681201 m!5578731))

(declare-fun m!5578733 () Bool)

(assert (=> b!4681201 m!5578733))

(assert (=> b!4681201 m!5578731))

(assert (=> b!4681201 m!5578727))

(assert (=> b!4681184 d!1487871))

(declare-fun d!1487873 () Bool)

(declare-fun e!2920653 () Bool)

(assert (=> d!1487873 e!2920653))

(declare-fun res!1972840 () Bool)

(assert (=> d!1487873 (=> (not res!1972840) (not e!2920653))))

(declare-fun lt!1841046 () ListMap!4849)

(assert (=> d!1487873 (= res!1972840 (not (contains!15398 lt!1841046 key!4653)))))

(assert (=> d!1487873 (= lt!1841046 (ListMap!4850 (removePresrvNoDuplicatedKeys!332 (toList!5485 (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))) key!4653)))))

(assert (=> d!1487873 (= (-!662 (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) key!4653) lt!1841046)))

(declare-fun b!4681202 () Bool)

(assert (=> b!4681202 (= e!2920653 (= ((_ map and) (content!9116 (keys!18626 (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13645 Bool)) false) key!4653 true))) (content!9116 (keys!18626 lt!1841046))))))

(assert (= (and d!1487873 res!1972840) b!4681202))

(declare-fun m!5578735 () Bool)

(assert (=> d!1487873 m!5578735))

(declare-fun m!5578737 () Bool)

(assert (=> d!1487873 m!5578737))

(assert (=> b!4681202 m!5578707))

(declare-fun m!5578739 () Bool)

(assert (=> b!4681202 m!5578739))

(declare-fun m!5578741 () Bool)

(assert (=> b!4681202 m!5578741))

(declare-fun m!5578743 () Bool)

(assert (=> b!4681202 m!5578743))

(declare-fun m!5578745 () Bool)

(assert (=> b!4681202 m!5578745))

(assert (=> b!4681202 m!5578743))

(assert (=> b!4681202 m!5578609))

(assert (=> b!4681202 m!5578739))

(assert (=> b!4681184 d!1487873))

(declare-fun d!1487875 () Bool)

(declare-fun e!2920656 () Bool)

(assert (=> d!1487875 e!2920656))

(declare-fun res!1972846 () Bool)

(assert (=> d!1487875 (=> (not res!1972846) (not e!2920656))))

(declare-fun lt!1841058 () ListMap!4849)

(assert (=> d!1487875 (= res!1972846 (contains!15398 lt!1841058 (_1!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))))))

(declare-fun lt!1841055 () List!52391)

(assert (=> d!1487875 (= lt!1841058 (ListMap!4850 lt!1841055))))

(declare-fun lt!1841056 () Unit!122749)

(declare-fun lt!1841057 () Unit!122749)

(assert (=> d!1487875 (= lt!1841056 lt!1841057)))

(declare-datatypes ((Option!11974 0))(
  ( (None!11973) (Some!11973 (v!46336 V!13891)) )
))
(declare-fun getValueByKey!1722 (List!52391 K!13645) Option!11974)

(assert (=> d!1487875 (= (getValueByKey!1722 lt!1841055 (_1!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))) (Some!11973 (_2!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!981 (List!52391 K!13645 V!13891) Unit!122749)

(assert (=> d!1487875 (= lt!1841057 (lemmaContainsTupThenGetReturnValue!981 lt!1841055 (_1!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) (_2!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!489 (List!52391 K!13645 V!13891) List!52391)

(assert (=> d!1487875 (= lt!1841055 (insertNoDuplicatedKeys!489 (toList!5485 lt!1841026) (_1!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) (_2!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))))))

(assert (=> d!1487875 (= (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) lt!1841058)))

(declare-fun b!4681207 () Bool)

(declare-fun res!1972845 () Bool)

(assert (=> b!4681207 (=> (not res!1972845) (not e!2920656))))

(assert (=> b!4681207 (= res!1972845 (= (getValueByKey!1722 (toList!5485 lt!1841058) (_1!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34))))) (Some!11973 (_2!30087 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))))))))

(declare-fun b!4681208 () Bool)

(declare-fun contains!15399 (List!52391 tuple2!53586) Bool)

(assert (=> b!4681208 (= e!2920656 (contains!15399 (toList!5485 lt!1841058) (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))))))

(assert (= (and d!1487875 res!1972846) b!4681207))

(assert (= (and b!4681207 res!1972845) b!4681208))

(declare-fun m!5578747 () Bool)

(assert (=> d!1487875 m!5578747))

(declare-fun m!5578749 () Bool)

(assert (=> d!1487875 m!5578749))

(declare-fun m!5578751 () Bool)

(assert (=> d!1487875 m!5578751))

(declare-fun m!5578753 () Bool)

(assert (=> d!1487875 m!5578753))

(declare-fun m!5578755 () Bool)

(assert (=> b!4681207 m!5578755))

(declare-fun m!5578757 () Bool)

(assert (=> b!4681208 m!5578757))

(assert (=> b!4681184 d!1487875))

(declare-fun d!1487877 () Bool)

(assert (=> d!1487877 (= (-!662 (+!2100 lt!1841026 (tuple2!53587 key!4653 (_2!30087 (h!58482 oldBucket!34)))) key!4653) lt!1841026)))

(declare-fun lt!1841061 () Unit!122749)

(declare-fun choose!32401 (ListMap!4849 K!13645 V!13891) Unit!122749)

(assert (=> d!1487877 (= lt!1841061 (choose!32401 lt!1841026 key!4653 (_2!30087 (h!58482 oldBucket!34))))))

(assert (=> d!1487877 (not (contains!15398 lt!1841026 key!4653))))

(assert (=> d!1487877 (= (addThenRemoveForNewKeyIsSame!53 lt!1841026 key!4653 (_2!30087 (h!58482 oldBucket!34))) lt!1841061)))

(declare-fun bs!1082866 () Bool)

(assert (= bs!1082866 d!1487877))

(assert (=> bs!1082866 m!5578609))

(assert (=> bs!1082866 m!5578609))

(assert (=> bs!1082866 m!5578611))

(declare-fun m!5578759 () Bool)

(assert (=> bs!1082866 m!5578759))

(assert (=> bs!1082866 m!5578675))

(assert (=> b!4681184 d!1487877))

(declare-fun d!1487879 () Bool)

(assert (=> d!1487879 true))

(assert (=> d!1487879 true))

(declare-fun lambda!204872 () Int)

(declare-fun forall!11236 (List!52391 Int) Bool)

(assert (=> d!1487879 (= (allKeysSameHash!1624 oldBucket!34 hash!405 hashF!1323) (forall!11236 oldBucket!34 lambda!204872))))

(declare-fun bs!1082867 () Bool)

(assert (= bs!1082867 d!1487879))

(declare-fun m!5578761 () Bool)

(assert (=> bs!1082867 m!5578761))

(assert (=> b!4681195 d!1487879))

(declare-fun bs!1082869 () Bool)

(declare-fun d!1487881 () Bool)

(assert (= bs!1082869 (and d!1487881 start!472732)))

(declare-fun lambda!204875 () Int)

(assert (=> bs!1082869 (= lambda!204875 lambda!204869)))

(declare-fun lt!1841068 () ListMap!4849)

(declare-fun invariantList!1379 (List!52391) Bool)

(assert (=> d!1487881 (invariantList!1379 (toList!5485 lt!1841068))))

(declare-fun e!2920663 () ListMap!4849)

(assert (=> d!1487881 (= lt!1841068 e!2920663)))

(declare-fun c!800712 () Bool)

(assert (=> d!1487881 (= c!800712 ((_ is Cons!52268) (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023)))))))

(assert (=> d!1487881 (forall!11235 (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023))) lambda!204875)))

(assert (=> d!1487881 (= (extractMap!1824 (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023)))) lt!1841068)))

(declare-fun b!4681221 () Bool)

(assert (=> b!4681221 (= e!2920663 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023))))) (extractMap!1824 (t!359550 (Cons!52268 lt!1841034 (t!359550 (toList!5486 lm!2023)))))))))

(declare-fun b!4681222 () Bool)

(assert (=> b!4681222 (= e!2920663 (ListMap!4850 Nil!52267))))

(assert (= (and d!1487881 c!800712) b!4681221))

(assert (= (and d!1487881 (not c!800712)) b!4681222))

(declare-fun m!5578791 () Bool)

(assert (=> d!1487881 m!5578791))

(declare-fun m!5578793 () Bool)

(assert (=> d!1487881 m!5578793))

(declare-fun m!5578795 () Bool)

(assert (=> b!4681221 m!5578795))

(assert (=> b!4681221 m!5578795))

(declare-fun m!5578797 () Bool)

(assert (=> b!4681221 m!5578797))

(assert (=> b!4681185 d!1487881))

(declare-fun bs!1082870 () Bool)

(declare-fun d!1487891 () Bool)

(assert (= bs!1082870 (and d!1487891 start!472732)))

(declare-fun lambda!204876 () Int)

(assert (=> bs!1082870 (= lambda!204876 lambda!204869)))

(declare-fun bs!1082871 () Bool)

(assert (= bs!1082871 (and d!1487891 d!1487881)))

(assert (=> bs!1082871 (= lambda!204876 lambda!204875)))

(declare-fun lt!1841069 () ListMap!4849)

(assert (=> d!1487891 (invariantList!1379 (toList!5485 lt!1841069))))

(declare-fun e!2920664 () ListMap!4849)

(assert (=> d!1487891 (= lt!1841069 e!2920664)))

(declare-fun c!800713 () Bool)

(assert (=> d!1487891 (= c!800713 ((_ is Cons!52268) lt!1841035))))

(assert (=> d!1487891 (forall!11235 lt!1841035 lambda!204876)))

(assert (=> d!1487891 (= (extractMap!1824 lt!1841035) lt!1841069)))

(declare-fun b!4681223 () Bool)

(assert (=> b!4681223 (= e!2920664 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 lt!1841035)) (extractMap!1824 (t!359550 lt!1841035))))))

(declare-fun b!4681224 () Bool)

(assert (=> b!4681224 (= e!2920664 (ListMap!4850 Nil!52267))))

(assert (= (and d!1487891 c!800713) b!4681223))

(assert (= (and d!1487891 (not c!800713)) b!4681224))

(declare-fun m!5578799 () Bool)

(assert (=> d!1487891 m!5578799))

(declare-fun m!5578801 () Bool)

(assert (=> d!1487891 m!5578801))

(declare-fun m!5578803 () Bool)

(assert (=> b!4681223 m!5578803))

(assert (=> b!4681223 m!5578803))

(declare-fun m!5578805 () Bool)

(assert (=> b!4681223 m!5578805))

(assert (=> b!4681185 d!1487891))

(declare-fun b!4681249 () Bool)

(declare-fun e!2920682 () Unit!122749)

(declare-fun lt!1841108 () Unit!122749)

(assert (=> b!4681249 (= e!2920682 lt!1841108)))

(declare-fun lt!1841103 () Unit!122749)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1614 (List!52391 K!13645) Unit!122749)

(assert (=> b!4681249 (= lt!1841103 (lemmaContainsKeyImpliesGetValueByKeyDefined!1614 (toList!5485 lt!1841026) key!4653))))

(declare-fun isDefined!9229 (Option!11974) Bool)

(assert (=> b!4681249 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841026) key!4653))))

(declare-fun lt!1841101 () Unit!122749)

(assert (=> b!4681249 (= lt!1841101 lt!1841103)))

(declare-fun lemmaInListThenGetKeysListContains!814 (List!52391 K!13645) Unit!122749)

(assert (=> b!4681249 (= lt!1841108 (lemmaInListThenGetKeysListContains!814 (toList!5485 lt!1841026) key!4653))))

(declare-fun call!327182 () Bool)

(assert (=> b!4681249 call!327182))

(declare-fun b!4681250 () Bool)

(declare-fun e!2920680 () Unit!122749)

(assert (=> b!4681250 (= e!2920682 e!2920680)))

(declare-fun c!800721 () Bool)

(assert (=> b!4681250 (= c!800721 call!327182)))

(declare-fun b!4681251 () Bool)

(declare-fun e!2920684 () List!52393)

(assert (=> b!4681251 (= e!2920684 (keys!18626 lt!1841026))))

(declare-fun b!4681252 () Bool)

(declare-fun e!2920681 () Bool)

(declare-fun contains!15400 (List!52393 K!13645) Bool)

(assert (=> b!4681252 (= e!2920681 (contains!15400 (keys!18626 lt!1841026) key!4653))))

(declare-fun b!4681253 () Bool)

(declare-fun getKeysList!819 (List!52391) List!52393)

(assert (=> b!4681253 (= e!2920684 (getKeysList!819 (toList!5485 lt!1841026)))))

(declare-fun d!1487893 () Bool)

(declare-fun e!2920685 () Bool)

(assert (=> d!1487893 e!2920685))

(declare-fun res!1972864 () Bool)

(assert (=> d!1487893 (=> res!1972864 e!2920685)))

(declare-fun e!2920683 () Bool)

(assert (=> d!1487893 (= res!1972864 e!2920683)))

(declare-fun res!1972865 () Bool)

(assert (=> d!1487893 (=> (not res!1972865) (not e!2920683))))

(declare-fun lt!1841105 () Bool)

(assert (=> d!1487893 (= res!1972865 (not lt!1841105))))

(declare-fun lt!1841107 () Bool)

(assert (=> d!1487893 (= lt!1841105 lt!1841107)))

(declare-fun lt!1841106 () Unit!122749)

(assert (=> d!1487893 (= lt!1841106 e!2920682)))

(declare-fun c!800720 () Bool)

(assert (=> d!1487893 (= c!800720 lt!1841107)))

(declare-fun containsKey!2948 (List!52391 K!13645) Bool)

(assert (=> d!1487893 (= lt!1841107 (containsKey!2948 (toList!5485 lt!1841026) key!4653))))

(assert (=> d!1487893 (= (contains!15398 lt!1841026 key!4653) lt!1841105)))

(declare-fun bm!327177 () Bool)

(assert (=> bm!327177 (= call!327182 (contains!15400 e!2920684 key!4653))))

(declare-fun c!800722 () Bool)

(assert (=> bm!327177 (= c!800722 c!800720)))

(declare-fun b!4681254 () Bool)

(declare-fun Unit!122751 () Unit!122749)

(assert (=> b!4681254 (= e!2920680 Unit!122751)))

(declare-fun b!4681255 () Bool)

(assert (=> b!4681255 (= e!2920685 e!2920681)))

(declare-fun res!1972863 () Bool)

(assert (=> b!4681255 (=> (not res!1972863) (not e!2920681))))

(assert (=> b!4681255 (= res!1972863 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841026) key!4653)))))

(declare-fun b!4681256 () Bool)

(assert (=> b!4681256 (= e!2920683 (not (contains!15400 (keys!18626 lt!1841026) key!4653)))))

(declare-fun b!4681257 () Bool)

(assert (=> b!4681257 false))

(declare-fun lt!1841102 () Unit!122749)

(declare-fun lt!1841104 () Unit!122749)

(assert (=> b!4681257 (= lt!1841102 lt!1841104)))

(assert (=> b!4681257 (containsKey!2948 (toList!5485 lt!1841026) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!818 (List!52391 K!13645) Unit!122749)

(assert (=> b!4681257 (= lt!1841104 (lemmaInGetKeysListThenContainsKey!818 (toList!5485 lt!1841026) key!4653))))

(declare-fun Unit!122752 () Unit!122749)

(assert (=> b!4681257 (= e!2920680 Unit!122752)))

(assert (= (and d!1487893 c!800720) b!4681249))

(assert (= (and d!1487893 (not c!800720)) b!4681250))

(assert (= (and b!4681250 c!800721) b!4681257))

(assert (= (and b!4681250 (not c!800721)) b!4681254))

(assert (= (or b!4681249 b!4681250) bm!327177))

(assert (= (and bm!327177 c!800722) b!4681253))

(assert (= (and bm!327177 (not c!800722)) b!4681251))

(assert (= (and d!1487893 res!1972865) b!4681256))

(assert (= (and d!1487893 (not res!1972864)) b!4681255))

(assert (= (and b!4681255 res!1972863) b!4681252))

(declare-fun m!5578821 () Bool)

(assert (=> b!4681251 m!5578821))

(declare-fun m!5578823 () Bool)

(assert (=> b!4681253 m!5578823))

(assert (=> b!4681252 m!5578821))

(assert (=> b!4681252 m!5578821))

(declare-fun m!5578825 () Bool)

(assert (=> b!4681252 m!5578825))

(declare-fun m!5578827 () Bool)

(assert (=> bm!327177 m!5578827))

(declare-fun m!5578829 () Bool)

(assert (=> b!4681249 m!5578829))

(declare-fun m!5578831 () Bool)

(assert (=> b!4681249 m!5578831))

(assert (=> b!4681249 m!5578831))

(declare-fun m!5578833 () Bool)

(assert (=> b!4681249 m!5578833))

(declare-fun m!5578835 () Bool)

(assert (=> b!4681249 m!5578835))

(declare-fun m!5578837 () Bool)

(assert (=> d!1487893 m!5578837))

(assert (=> b!4681257 m!5578837))

(declare-fun m!5578839 () Bool)

(assert (=> b!4681257 m!5578839))

(assert (=> b!4681255 m!5578831))

(assert (=> b!4681255 m!5578831))

(assert (=> b!4681255 m!5578833))

(assert (=> b!4681256 m!5578821))

(assert (=> b!4681256 m!5578821))

(assert (=> b!4681256 m!5578825))

(assert (=> b!4681196 d!1487893))

(declare-fun b!4681258 () Bool)

(declare-fun e!2920688 () Unit!122749)

(declare-fun lt!1841116 () Unit!122749)

(assert (=> b!4681258 (= e!2920688 lt!1841116)))

(declare-fun lt!1841111 () Unit!122749)

(assert (=> b!4681258 (= lt!1841111 (lemmaContainsKeyImpliesGetValueByKeyDefined!1614 (toList!5485 lt!1841021) key!4653))))

(assert (=> b!4681258 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841021) key!4653))))

(declare-fun lt!1841109 () Unit!122749)

(assert (=> b!4681258 (= lt!1841109 lt!1841111)))

(assert (=> b!4681258 (= lt!1841116 (lemmaInListThenGetKeysListContains!814 (toList!5485 lt!1841021) key!4653))))

(declare-fun call!327183 () Bool)

(assert (=> b!4681258 call!327183))

(declare-fun b!4681259 () Bool)

(declare-fun e!2920686 () Unit!122749)

(assert (=> b!4681259 (= e!2920688 e!2920686)))

(declare-fun c!800724 () Bool)

(assert (=> b!4681259 (= c!800724 call!327183)))

(declare-fun b!4681260 () Bool)

(declare-fun e!2920690 () List!52393)

(assert (=> b!4681260 (= e!2920690 (keys!18626 lt!1841021))))

(declare-fun b!4681261 () Bool)

(declare-fun e!2920687 () Bool)

(assert (=> b!4681261 (= e!2920687 (contains!15400 (keys!18626 lt!1841021) key!4653))))

(declare-fun b!4681262 () Bool)

(assert (=> b!4681262 (= e!2920690 (getKeysList!819 (toList!5485 lt!1841021)))))

(declare-fun d!1487899 () Bool)

(declare-fun e!2920691 () Bool)

(assert (=> d!1487899 e!2920691))

(declare-fun res!1972867 () Bool)

(assert (=> d!1487899 (=> res!1972867 e!2920691)))

(declare-fun e!2920689 () Bool)

(assert (=> d!1487899 (= res!1972867 e!2920689)))

(declare-fun res!1972868 () Bool)

(assert (=> d!1487899 (=> (not res!1972868) (not e!2920689))))

(declare-fun lt!1841113 () Bool)

(assert (=> d!1487899 (= res!1972868 (not lt!1841113))))

(declare-fun lt!1841115 () Bool)

(assert (=> d!1487899 (= lt!1841113 lt!1841115)))

(declare-fun lt!1841114 () Unit!122749)

(assert (=> d!1487899 (= lt!1841114 e!2920688)))

(declare-fun c!800723 () Bool)

(assert (=> d!1487899 (= c!800723 lt!1841115)))

(assert (=> d!1487899 (= lt!1841115 (containsKey!2948 (toList!5485 lt!1841021) key!4653))))

(assert (=> d!1487899 (= (contains!15398 lt!1841021 key!4653) lt!1841113)))

(declare-fun bm!327178 () Bool)

(assert (=> bm!327178 (= call!327183 (contains!15400 e!2920690 key!4653))))

(declare-fun c!800725 () Bool)

(assert (=> bm!327178 (= c!800725 c!800723)))

(declare-fun b!4681263 () Bool)

(declare-fun Unit!122753 () Unit!122749)

(assert (=> b!4681263 (= e!2920686 Unit!122753)))

(declare-fun b!4681264 () Bool)

(assert (=> b!4681264 (= e!2920691 e!2920687)))

(declare-fun res!1972866 () Bool)

(assert (=> b!4681264 (=> (not res!1972866) (not e!2920687))))

(assert (=> b!4681264 (= res!1972866 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841021) key!4653)))))

(declare-fun b!4681265 () Bool)

(assert (=> b!4681265 (= e!2920689 (not (contains!15400 (keys!18626 lt!1841021) key!4653)))))

(declare-fun b!4681266 () Bool)

(assert (=> b!4681266 false))

(declare-fun lt!1841110 () Unit!122749)

(declare-fun lt!1841112 () Unit!122749)

(assert (=> b!4681266 (= lt!1841110 lt!1841112)))

(assert (=> b!4681266 (containsKey!2948 (toList!5485 lt!1841021) key!4653)))

(assert (=> b!4681266 (= lt!1841112 (lemmaInGetKeysListThenContainsKey!818 (toList!5485 lt!1841021) key!4653))))

(declare-fun Unit!122754 () Unit!122749)

(assert (=> b!4681266 (= e!2920686 Unit!122754)))

(assert (= (and d!1487899 c!800723) b!4681258))

(assert (= (and d!1487899 (not c!800723)) b!4681259))

(assert (= (and b!4681259 c!800724) b!4681266))

(assert (= (and b!4681259 (not c!800724)) b!4681263))

(assert (= (or b!4681258 b!4681259) bm!327178))

(assert (= (and bm!327178 c!800725) b!4681262))

(assert (= (and bm!327178 (not c!800725)) b!4681260))

(assert (= (and d!1487899 res!1972868) b!4681265))

(assert (= (and d!1487899 (not res!1972867)) b!4681264))

(assert (= (and b!4681264 res!1972866) b!4681261))

(declare-fun m!5578841 () Bool)

(assert (=> b!4681260 m!5578841))

(declare-fun m!5578843 () Bool)

(assert (=> b!4681262 m!5578843))

(assert (=> b!4681261 m!5578841))

(assert (=> b!4681261 m!5578841))

(declare-fun m!5578845 () Bool)

(assert (=> b!4681261 m!5578845))

(declare-fun m!5578847 () Bool)

(assert (=> bm!327178 m!5578847))

(declare-fun m!5578849 () Bool)

(assert (=> b!4681258 m!5578849))

(declare-fun m!5578851 () Bool)

(assert (=> b!4681258 m!5578851))

(assert (=> b!4681258 m!5578851))

(declare-fun m!5578853 () Bool)

(assert (=> b!4681258 m!5578853))

(declare-fun m!5578855 () Bool)

(assert (=> b!4681258 m!5578855))

(declare-fun m!5578857 () Bool)

(assert (=> d!1487899 m!5578857))

(assert (=> b!4681266 m!5578857))

(declare-fun m!5578859 () Bool)

(assert (=> b!4681266 m!5578859))

(assert (=> b!4681264 m!5578851))

(assert (=> b!4681264 m!5578851))

(assert (=> b!4681264 m!5578853))

(assert (=> b!4681265 m!5578841))

(assert (=> b!4681265 m!5578841))

(assert (=> b!4681265 m!5578845))

(assert (=> b!4681196 d!1487899))

(declare-fun bs!1082873 () Bool)

(declare-fun d!1487901 () Bool)

(assert (= bs!1082873 (and d!1487901 start!472732)))

(declare-fun lambda!204879 () Int)

(assert (=> bs!1082873 (= lambda!204879 lambda!204869)))

(declare-fun bs!1082874 () Bool)

(assert (= bs!1082874 (and d!1487901 d!1487881)))

(assert (=> bs!1082874 (= lambda!204879 lambda!204875)))

(declare-fun bs!1082875 () Bool)

(assert (= bs!1082875 (and d!1487901 d!1487891)))

(assert (=> bs!1082875 (= lambda!204879 lambda!204876)))

(assert (=> d!1487901 (not (contains!15398 (extractMap!1824 (toList!5486 (ListLongMap!4016 lt!1841035))) key!4653))))

(declare-fun lt!1841119 () Unit!122749)

(declare-fun choose!32403 (ListLongMap!4015 K!13645 Hashable!6167) Unit!122749)

(assert (=> d!1487901 (= lt!1841119 (choose!32403 (ListLongMap!4016 lt!1841035) key!4653 hashF!1323))))

(assert (=> d!1487901 (forall!11235 (toList!5486 (ListLongMap!4016 lt!1841035)) lambda!204879)))

(assert (=> d!1487901 (= (lemmaNotInItsHashBucketThenNotInMap!398 (ListLongMap!4016 lt!1841035) key!4653 hashF!1323) lt!1841119)))

(declare-fun bs!1082876 () Bool)

(assert (= bs!1082876 d!1487901))

(declare-fun m!5578861 () Bool)

(assert (=> bs!1082876 m!5578861))

(assert (=> bs!1082876 m!5578861))

(declare-fun m!5578863 () Bool)

(assert (=> bs!1082876 m!5578863))

(declare-fun m!5578865 () Bool)

(assert (=> bs!1082876 m!5578865))

(declare-fun m!5578867 () Bool)

(assert (=> bs!1082876 m!5578867))

(assert (=> b!4681196 d!1487901))

(declare-fun bs!1082877 () Bool)

(declare-fun d!1487903 () Bool)

(assert (= bs!1082877 (and d!1487903 start!472732)))

(declare-fun lambda!204882 () Int)

(assert (=> bs!1082877 (not (= lambda!204882 lambda!204869))))

(declare-fun bs!1082878 () Bool)

(assert (= bs!1082878 (and d!1487903 d!1487881)))

(assert (=> bs!1082878 (not (= lambda!204882 lambda!204875))))

(declare-fun bs!1082879 () Bool)

(assert (= bs!1082879 (and d!1487903 d!1487891)))

(assert (=> bs!1082879 (not (= lambda!204882 lambda!204876))))

(declare-fun bs!1082880 () Bool)

(assert (= bs!1082880 (and d!1487903 d!1487901)))

(assert (=> bs!1082880 (not (= lambda!204882 lambda!204879))))

(assert (=> d!1487903 true))

(assert (=> d!1487903 (= (allKeysSameHashInMap!1712 lm!2023 hashF!1323) (forall!11235 (toList!5486 lm!2023) lambda!204882))))

(declare-fun bs!1082881 () Bool)

(assert (= bs!1082881 d!1487903))

(declare-fun m!5578869 () Bool)

(assert (=> bs!1082881 m!5578869))

(assert (=> b!4681175 d!1487903))

(declare-fun d!1487905 () Bool)

(assert (=> d!1487905 (= (eq!987 lt!1841029 (addToMapMapFromBucket!1230 oldBucket!34 lt!1841024)) (= (content!9115 (toList!5485 lt!1841029)) (content!9115 (toList!5485 (addToMapMapFromBucket!1230 oldBucket!34 lt!1841024)))))))

(declare-fun bs!1082882 () Bool)

(assert (= bs!1082882 d!1487905))

(declare-fun m!5578871 () Bool)

(assert (=> bs!1082882 m!5578871))

(declare-fun m!5578873 () Bool)

(assert (=> bs!1082882 m!5578873))

(assert (=> b!4681186 d!1487905))

(declare-fun d!1487907 () Bool)

(assert (=> d!1487907 (= (eq!987 (addToMapMapFromBucket!1230 (Cons!52267 lt!1841030 lt!1841031) lt!1841024) (+!2100 lt!1841026 lt!1841030)) (= (content!9115 (toList!5485 (addToMapMapFromBucket!1230 (Cons!52267 lt!1841030 lt!1841031) lt!1841024))) (content!9115 (toList!5485 (+!2100 lt!1841026 lt!1841030)))))))

(declare-fun bs!1082883 () Bool)

(assert (= bs!1082883 d!1487907))

(declare-fun m!5578875 () Bool)

(assert (=> bs!1082883 m!5578875))

(declare-fun m!5578877 () Bool)

(assert (=> bs!1082883 m!5578877))

(assert (=> b!4681186 d!1487907))

(declare-fun d!1487909 () Bool)

(declare-fun e!2920692 () Bool)

(assert (=> d!1487909 e!2920692))

(declare-fun res!1972870 () Bool)

(assert (=> d!1487909 (=> (not res!1972870) (not e!2920692))))

(declare-fun lt!1841123 () ListMap!4849)

(assert (=> d!1487909 (= res!1972870 (contains!15398 lt!1841123 (_1!30087 (h!58482 oldBucket!34))))))

(declare-fun lt!1841120 () List!52391)

(assert (=> d!1487909 (= lt!1841123 (ListMap!4850 lt!1841120))))

(declare-fun lt!1841121 () Unit!122749)

(declare-fun lt!1841122 () Unit!122749)

(assert (=> d!1487909 (= lt!1841121 lt!1841122)))

(assert (=> d!1487909 (= (getValueByKey!1722 lt!1841120 (_1!30087 (h!58482 oldBucket!34))) (Some!11973 (_2!30087 (h!58482 oldBucket!34))))))

(assert (=> d!1487909 (= lt!1841122 (lemmaContainsTupThenGetReturnValue!981 lt!1841120 (_1!30087 (h!58482 oldBucket!34)) (_2!30087 (h!58482 oldBucket!34))))))

(assert (=> d!1487909 (= lt!1841120 (insertNoDuplicatedKeys!489 (toList!5485 lt!1841026) (_1!30087 (h!58482 oldBucket!34)) (_2!30087 (h!58482 oldBucket!34))))))

(assert (=> d!1487909 (= (+!2100 lt!1841026 (h!58482 oldBucket!34)) lt!1841123)))

(declare-fun b!4681269 () Bool)

(declare-fun res!1972869 () Bool)

(assert (=> b!4681269 (=> (not res!1972869) (not e!2920692))))

(assert (=> b!4681269 (= res!1972869 (= (getValueByKey!1722 (toList!5485 lt!1841123) (_1!30087 (h!58482 oldBucket!34))) (Some!11973 (_2!30087 (h!58482 oldBucket!34)))))))

(declare-fun b!4681270 () Bool)

(assert (=> b!4681270 (= e!2920692 (contains!15399 (toList!5485 lt!1841123) (h!58482 oldBucket!34)))))

(assert (= (and d!1487909 res!1972870) b!4681269))

(assert (= (and b!4681269 res!1972869) b!4681270))

(declare-fun m!5578879 () Bool)

(assert (=> d!1487909 m!5578879))

(declare-fun m!5578881 () Bool)

(assert (=> d!1487909 m!5578881))

(declare-fun m!5578883 () Bool)

(assert (=> d!1487909 m!5578883))

(declare-fun m!5578885 () Bool)

(assert (=> d!1487909 m!5578885))

(declare-fun m!5578887 () Bool)

(assert (=> b!4681269 m!5578887))

(declare-fun m!5578889 () Bool)

(assert (=> b!4681270 m!5578889))

(assert (=> b!4681186 d!1487909))

(declare-fun d!1487911 () Bool)

(assert (=> d!1487911 (= (head!9887 oldBucket!34) (h!58482 oldBucket!34))))

(assert (=> b!4681186 d!1487911))

(declare-fun d!1487913 () Bool)

(assert (=> d!1487913 (eq!987 (addToMapMapFromBucket!1230 (Cons!52267 lt!1841030 lt!1841031) lt!1841024) (+!2100 (addToMapMapFromBucket!1230 lt!1841031 lt!1841024) lt!1841030))))

(declare-fun lt!1841126 () Unit!122749)

(declare-fun choose!32404 (tuple2!53586 List!52391 ListMap!4849) Unit!122749)

(assert (=> d!1487913 (= lt!1841126 (choose!32404 lt!1841030 lt!1841031 lt!1841024))))

(assert (=> d!1487913 (noDuplicateKeys!1798 lt!1841031)))

(assert (=> d!1487913 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!236 lt!1841030 lt!1841031 lt!1841024) lt!1841126)))

(declare-fun bs!1082884 () Bool)

(assert (= bs!1082884 d!1487913))

(declare-fun m!5578891 () Bool)

(assert (=> bs!1082884 m!5578891))

(assert (=> bs!1082884 m!5578635))

(declare-fun m!5578893 () Bool)

(assert (=> bs!1082884 m!5578893))

(assert (=> bs!1082884 m!5578635))

(assert (=> bs!1082884 m!5578637))

(assert (=> bs!1082884 m!5578893))

(declare-fun m!5578895 () Bool)

(assert (=> bs!1082884 m!5578895))

(declare-fun m!5578897 () Bool)

(assert (=> bs!1082884 m!5578897))

(assert (=> bs!1082884 m!5578637))

(assert (=> b!4681186 d!1487913))

(declare-fun bs!1082898 () Bool)

(declare-fun b!4681325 () Bool)

(assert (= bs!1082898 (and b!4681325 d!1487879)))

(declare-fun lambda!204949 () Int)

(assert (=> bs!1082898 (not (= lambda!204949 lambda!204872))))

(assert (=> b!4681325 true))

(declare-fun bs!1082900 () Bool)

(declare-fun b!4681324 () Bool)

(assert (= bs!1082900 (and b!4681324 d!1487879)))

(declare-fun lambda!204950 () Int)

(assert (=> bs!1082900 (not (= lambda!204950 lambda!204872))))

(declare-fun bs!1082902 () Bool)

(assert (= bs!1082902 (and b!4681324 b!4681325)))

(assert (=> bs!1082902 (= lambda!204950 lambda!204949)))

(assert (=> b!4681324 true))

(declare-fun lambda!204951 () Int)

(assert (=> bs!1082900 (not (= lambda!204951 lambda!204872))))

(declare-fun lt!1841253 () ListMap!4849)

(assert (=> bs!1082902 (= (= lt!1841253 lt!1841024) (= lambda!204951 lambda!204949))))

(assert (=> b!4681324 (= (= lt!1841253 lt!1841024) (= lambda!204951 lambda!204950))))

(assert (=> b!4681324 true))

(declare-fun bs!1082905 () Bool)

(declare-fun d!1487915 () Bool)

(assert (= bs!1082905 (and d!1487915 d!1487879)))

(declare-fun lambda!204953 () Int)

(assert (=> bs!1082905 (not (= lambda!204953 lambda!204872))))

(declare-fun bs!1082906 () Bool)

(assert (= bs!1082906 (and d!1487915 b!4681325)))

(declare-fun lt!1841245 () ListMap!4849)

(assert (=> bs!1082906 (= (= lt!1841245 lt!1841024) (= lambda!204953 lambda!204949))))

(declare-fun bs!1082907 () Bool)

(assert (= bs!1082907 (and d!1487915 b!4681324)))

(assert (=> bs!1082907 (= (= lt!1841245 lt!1841024) (= lambda!204953 lambda!204950))))

(assert (=> bs!1082907 (= (= lt!1841245 lt!1841253) (= lambda!204953 lambda!204951))))

(assert (=> d!1487915 true))

(declare-fun b!4681321 () Bool)

(declare-fun res!1972901 () Bool)

(declare-fun e!2920724 () Bool)

(assert (=> b!4681321 (=> (not res!1972901) (not e!2920724))))

(assert (=> b!4681321 (= res!1972901 (forall!11236 (toList!5485 lt!1841024) lambda!204953))))

(declare-fun call!327200 () Bool)

(declare-fun c!800734 () Bool)

(declare-fun bm!327194 () Bool)

(assert (=> bm!327194 (= call!327200 (forall!11236 (ite c!800734 (toList!5485 lt!1841024) (t!359549 (Cons!52267 lt!1841030 lt!1841031))) (ite c!800734 lambda!204949 lambda!204951)))))

(declare-fun b!4681322 () Bool)

(declare-fun e!2920725 () Bool)

(declare-fun call!327199 () Bool)

(assert (=> b!4681322 (= e!2920725 call!327199)))

(declare-fun b!4681323 () Bool)

(assert (=> b!4681323 (= e!2920724 (invariantList!1379 (toList!5485 lt!1841245)))))

(declare-fun bm!327196 () Bool)

(assert (=> bm!327196 (= call!327199 (forall!11236 (toList!5485 lt!1841024) (ite c!800734 lambda!204949 lambda!204951)))))

(declare-fun e!2920726 () ListMap!4849)

(assert (=> b!4681324 (= e!2920726 lt!1841253)))

(declare-fun lt!1841243 () ListMap!4849)

(assert (=> b!4681324 (= lt!1841243 (+!2100 lt!1841024 (h!58482 (Cons!52267 lt!1841030 lt!1841031))))))

(assert (=> b!4681324 (= lt!1841253 (addToMapMapFromBucket!1230 (t!359549 (Cons!52267 lt!1841030 lt!1841031)) (+!2100 lt!1841024 (h!58482 (Cons!52267 lt!1841030 lt!1841031)))))))

(declare-fun lt!1841249 () Unit!122749)

(declare-fun call!327201 () Unit!122749)

(assert (=> b!4681324 (= lt!1841249 call!327201)))

(assert (=> b!4681324 (forall!11236 (toList!5485 lt!1841024) lambda!204950)))

(declare-fun lt!1841256 () Unit!122749)

(assert (=> b!4681324 (= lt!1841256 lt!1841249)))

(assert (=> b!4681324 (forall!11236 (toList!5485 lt!1841243) lambda!204951)))

(declare-fun lt!1841241 () Unit!122749)

(declare-fun Unit!122766 () Unit!122749)

(assert (=> b!4681324 (= lt!1841241 Unit!122766)))

(assert (=> b!4681324 call!327200))

(declare-fun lt!1841240 () Unit!122749)

(declare-fun Unit!122767 () Unit!122749)

(assert (=> b!4681324 (= lt!1841240 Unit!122767)))

(declare-fun lt!1841250 () Unit!122749)

(declare-fun Unit!122768 () Unit!122749)

(assert (=> b!4681324 (= lt!1841250 Unit!122768)))

(declare-fun lt!1841258 () Unit!122749)

(declare-fun forallContained!3352 (List!52391 Int tuple2!53586) Unit!122749)

(assert (=> b!4681324 (= lt!1841258 (forallContained!3352 (toList!5485 lt!1841243) lambda!204951 (h!58482 (Cons!52267 lt!1841030 lt!1841031))))))

(assert (=> b!4681324 (contains!15398 lt!1841243 (_1!30087 (h!58482 (Cons!52267 lt!1841030 lt!1841031))))))

(declare-fun lt!1841244 () Unit!122749)

(declare-fun Unit!122769 () Unit!122749)

(assert (=> b!4681324 (= lt!1841244 Unit!122769)))

(assert (=> b!4681324 (contains!15398 lt!1841253 (_1!30087 (h!58482 (Cons!52267 lt!1841030 lt!1841031))))))

(declare-fun lt!1841254 () Unit!122749)

(declare-fun Unit!122770 () Unit!122749)

(assert (=> b!4681324 (= lt!1841254 Unit!122770)))

(assert (=> b!4681324 (forall!11236 (Cons!52267 lt!1841030 lt!1841031) lambda!204951)))

(declare-fun lt!1841257 () Unit!122749)

(declare-fun Unit!122771 () Unit!122749)

(assert (=> b!4681324 (= lt!1841257 Unit!122771)))

(assert (=> b!4681324 (forall!11236 (toList!5485 lt!1841243) lambda!204951)))

(declare-fun lt!1841242 () Unit!122749)

(declare-fun Unit!122772 () Unit!122749)

(assert (=> b!4681324 (= lt!1841242 Unit!122772)))

(declare-fun lt!1841247 () Unit!122749)

(declare-fun Unit!122773 () Unit!122749)

(assert (=> b!4681324 (= lt!1841247 Unit!122773)))

(declare-fun lt!1841248 () Unit!122749)

(declare-fun addForallContainsKeyThenBeforeAdding!667 (ListMap!4849 ListMap!4849 K!13645 V!13891) Unit!122749)

(assert (=> b!4681324 (= lt!1841248 (addForallContainsKeyThenBeforeAdding!667 lt!1841024 lt!1841253 (_1!30087 (h!58482 (Cons!52267 lt!1841030 lt!1841031))) (_2!30087 (h!58482 (Cons!52267 lt!1841030 lt!1841031)))))))

(assert (=> b!4681324 (forall!11236 (toList!5485 lt!1841024) lambda!204951)))

(declare-fun lt!1841239 () Unit!122749)

(assert (=> b!4681324 (= lt!1841239 lt!1841248)))

(assert (=> b!4681324 (forall!11236 (toList!5485 lt!1841024) lambda!204951)))

(declare-fun lt!1841246 () Unit!122749)

(declare-fun Unit!122774 () Unit!122749)

(assert (=> b!4681324 (= lt!1841246 Unit!122774)))

(declare-fun res!1972899 () Bool)

(assert (=> b!4681324 (= res!1972899 (forall!11236 (Cons!52267 lt!1841030 lt!1841031) lambda!204951))))

(assert (=> b!4681324 (=> (not res!1972899) (not e!2920725))))

(assert (=> b!4681324 e!2920725))

(declare-fun lt!1841255 () Unit!122749)

(declare-fun Unit!122775 () Unit!122749)

(assert (=> b!4681324 (= lt!1841255 Unit!122775)))

(assert (=> b!4681325 (= e!2920726 lt!1841024)))

(declare-fun lt!1841252 () Unit!122749)

(assert (=> b!4681325 (= lt!1841252 call!327201)))

(assert (=> b!4681325 call!327200))

(declare-fun lt!1841259 () Unit!122749)

(assert (=> b!4681325 (= lt!1841259 lt!1841252)))

(assert (=> b!4681325 call!327199))

(declare-fun lt!1841251 () Unit!122749)

(declare-fun Unit!122776 () Unit!122749)

(assert (=> b!4681325 (= lt!1841251 Unit!122776)))

(assert (=> d!1487915 e!2920724))

(declare-fun res!1972900 () Bool)

(assert (=> d!1487915 (=> (not res!1972900) (not e!2920724))))

(assert (=> d!1487915 (= res!1972900 (forall!11236 (Cons!52267 lt!1841030 lt!1841031) lambda!204953))))

(assert (=> d!1487915 (= lt!1841245 e!2920726)))

(assert (=> d!1487915 (= c!800734 ((_ is Nil!52267) (Cons!52267 lt!1841030 lt!1841031)))))

(assert (=> d!1487915 (noDuplicateKeys!1798 (Cons!52267 lt!1841030 lt!1841031))))

(assert (=> d!1487915 (= (addToMapMapFromBucket!1230 (Cons!52267 lt!1841030 lt!1841031) lt!1841024) lt!1841245)))

(declare-fun bm!327195 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!668 (ListMap!4849) Unit!122749)

(assert (=> bm!327195 (= call!327201 (lemmaContainsAllItsOwnKeys!668 lt!1841024))))

(assert (= (and d!1487915 c!800734) b!4681325))

(assert (= (and d!1487915 (not c!800734)) b!4681324))

(assert (= (and b!4681324 res!1972899) b!4681322))

(assert (= (or b!4681325 b!4681324) bm!327195))

(assert (= (or b!4681325 b!4681324) bm!327194))

(assert (= (or b!4681325 b!4681322) bm!327196))

(assert (= (and d!1487915 res!1972900) b!4681321))

(assert (= (and b!4681321 res!1972901) b!4681323))

(declare-fun m!5578995 () Bool)

(assert (=> b!4681324 m!5578995))

(declare-fun m!5578997 () Bool)

(assert (=> b!4681324 m!5578997))

(declare-fun m!5578999 () Bool)

(assert (=> b!4681324 m!5578999))

(declare-fun m!5579001 () Bool)

(assert (=> b!4681324 m!5579001))

(declare-fun m!5579003 () Bool)

(assert (=> b!4681324 m!5579003))

(assert (=> b!4681324 m!5578995))

(declare-fun m!5579005 () Bool)

(assert (=> b!4681324 m!5579005))

(declare-fun m!5579007 () Bool)

(assert (=> b!4681324 m!5579007))

(assert (=> b!4681324 m!5579001))

(declare-fun m!5579009 () Bool)

(assert (=> b!4681324 m!5579009))

(declare-fun m!5579011 () Bool)

(assert (=> b!4681324 m!5579011))

(assert (=> b!4681324 m!5579003))

(assert (=> b!4681324 m!5579005))

(declare-fun m!5579013 () Bool)

(assert (=> b!4681324 m!5579013))

(declare-fun m!5579015 () Bool)

(assert (=> bm!327196 m!5579015))

(declare-fun m!5579017 () Bool)

(assert (=> b!4681321 m!5579017))

(declare-fun m!5579019 () Bool)

(assert (=> b!4681323 m!5579019))

(declare-fun m!5579021 () Bool)

(assert (=> bm!327195 m!5579021))

(declare-fun m!5579023 () Bool)

(assert (=> bm!327194 m!5579023))

(declare-fun m!5579025 () Bool)

(assert (=> d!1487915 m!5579025))

(declare-fun m!5579027 () Bool)

(assert (=> d!1487915 m!5579027))

(assert (=> b!4681186 d!1487915))

(declare-fun bs!1082908 () Bool)

(declare-fun b!4681336 () Bool)

(assert (= bs!1082908 (and b!4681336 b!4681325)))

(declare-fun lambda!204954 () Int)

(assert (=> bs!1082908 (= lambda!204954 lambda!204949)))

(declare-fun bs!1082909 () Bool)

(assert (= bs!1082909 (and b!4681336 d!1487879)))

(assert (=> bs!1082909 (not (= lambda!204954 lambda!204872))))

(declare-fun bs!1082910 () Bool)

(assert (= bs!1082910 (and b!4681336 d!1487915)))

(assert (=> bs!1082910 (= (= lt!1841024 lt!1841245) (= lambda!204954 lambda!204953))))

(declare-fun bs!1082911 () Bool)

(assert (= bs!1082911 (and b!4681336 b!4681324)))

(assert (=> bs!1082911 (= (= lt!1841024 lt!1841253) (= lambda!204954 lambda!204951))))

(assert (=> bs!1082911 (= lambda!204954 lambda!204950)))

(assert (=> b!4681336 true))

(declare-fun bs!1082912 () Bool)

(declare-fun b!4681335 () Bool)

(assert (= bs!1082912 (and b!4681335 b!4681325)))

(declare-fun lambda!204955 () Int)

(assert (=> bs!1082912 (= lambda!204955 lambda!204949)))

(declare-fun bs!1082913 () Bool)

(assert (= bs!1082913 (and b!4681335 d!1487879)))

(assert (=> bs!1082913 (not (= lambda!204955 lambda!204872))))

(declare-fun bs!1082914 () Bool)

(assert (= bs!1082914 (and b!4681335 d!1487915)))

(assert (=> bs!1082914 (= (= lt!1841024 lt!1841245) (= lambda!204955 lambda!204953))))

(declare-fun bs!1082915 () Bool)

(assert (= bs!1082915 (and b!4681335 b!4681324)))

(assert (=> bs!1082915 (= (= lt!1841024 lt!1841253) (= lambda!204955 lambda!204951))))

(declare-fun bs!1082916 () Bool)

(assert (= bs!1082916 (and b!4681335 b!4681336)))

(assert (=> bs!1082916 (= lambda!204955 lambda!204954)))

(assert (=> bs!1082915 (= lambda!204955 lambda!204950)))

(assert (=> b!4681335 true))

(declare-fun lambda!204956 () Int)

(declare-fun lt!1841275 () ListMap!4849)

(assert (=> bs!1082912 (= (= lt!1841275 lt!1841024) (= lambda!204956 lambda!204949))))

(assert (=> bs!1082913 (not (= lambda!204956 lambda!204872))))

(assert (=> b!4681335 (= (= lt!1841275 lt!1841024) (= lambda!204956 lambda!204955))))

(assert (=> bs!1082914 (= (= lt!1841275 lt!1841245) (= lambda!204956 lambda!204953))))

(assert (=> bs!1082915 (= (= lt!1841275 lt!1841253) (= lambda!204956 lambda!204951))))

(assert (=> bs!1082916 (= (= lt!1841275 lt!1841024) (= lambda!204956 lambda!204954))))

(assert (=> bs!1082915 (= (= lt!1841275 lt!1841024) (= lambda!204956 lambda!204950))))

(assert (=> b!4681335 true))

(declare-fun bs!1082917 () Bool)

(declare-fun d!1487951 () Bool)

(assert (= bs!1082917 (and d!1487951 d!1487879)))

(declare-fun lambda!204957 () Int)

(assert (=> bs!1082917 (not (= lambda!204957 lambda!204872))))

(declare-fun bs!1082918 () Bool)

(assert (= bs!1082918 (and d!1487951 b!4681335)))

(declare-fun lt!1841267 () ListMap!4849)

(assert (=> bs!1082918 (= (= lt!1841267 lt!1841024) (= lambda!204957 lambda!204955))))

(declare-fun bs!1082919 () Bool)

(assert (= bs!1082919 (and d!1487951 d!1487915)))

(assert (=> bs!1082919 (= (= lt!1841267 lt!1841245) (= lambda!204957 lambda!204953))))

(declare-fun bs!1082920 () Bool)

(assert (= bs!1082920 (and d!1487951 b!4681324)))

(assert (=> bs!1082920 (= (= lt!1841267 lt!1841253) (= lambda!204957 lambda!204951))))

(declare-fun bs!1082921 () Bool)

(assert (= bs!1082921 (and d!1487951 b!4681336)))

(assert (=> bs!1082921 (= (= lt!1841267 lt!1841024) (= lambda!204957 lambda!204954))))

(assert (=> bs!1082920 (= (= lt!1841267 lt!1841024) (= lambda!204957 lambda!204950))))

(declare-fun bs!1082922 () Bool)

(assert (= bs!1082922 (and d!1487951 b!4681325)))

(assert (=> bs!1082922 (= (= lt!1841267 lt!1841024) (= lambda!204957 lambda!204949))))

(assert (=> bs!1082918 (= (= lt!1841267 lt!1841275) (= lambda!204957 lambda!204956))))

(assert (=> d!1487951 true))

(declare-fun b!4681332 () Bool)

(declare-fun res!1972906 () Bool)

(declare-fun e!2920730 () Bool)

(assert (=> b!4681332 (=> (not res!1972906) (not e!2920730))))

(assert (=> b!4681332 (= res!1972906 (forall!11236 (toList!5485 lt!1841024) lambda!204957))))

(declare-fun c!800736 () Bool)

(declare-fun call!327203 () Bool)

(declare-fun bm!327197 () Bool)

(assert (=> bm!327197 (= call!327203 (forall!11236 (ite c!800736 (toList!5485 lt!1841024) (t!359549 oldBucket!34)) (ite c!800736 lambda!204954 lambda!204956)))))

(declare-fun b!4681333 () Bool)

(declare-fun e!2920731 () Bool)

(declare-fun call!327202 () Bool)

(assert (=> b!4681333 (= e!2920731 call!327202)))

(declare-fun b!4681334 () Bool)

(assert (=> b!4681334 (= e!2920730 (invariantList!1379 (toList!5485 lt!1841267)))))

(declare-fun bm!327199 () Bool)

(assert (=> bm!327199 (= call!327202 (forall!11236 (toList!5485 lt!1841024) (ite c!800736 lambda!204954 lambda!204956)))))

(declare-fun e!2920732 () ListMap!4849)

(assert (=> b!4681335 (= e!2920732 lt!1841275)))

(declare-fun lt!1841265 () ListMap!4849)

(assert (=> b!4681335 (= lt!1841265 (+!2100 lt!1841024 (h!58482 oldBucket!34)))))

(assert (=> b!4681335 (= lt!1841275 (addToMapMapFromBucket!1230 (t!359549 oldBucket!34) (+!2100 lt!1841024 (h!58482 oldBucket!34))))))

(declare-fun lt!1841271 () Unit!122749)

(declare-fun call!327204 () Unit!122749)

(assert (=> b!4681335 (= lt!1841271 call!327204)))

(assert (=> b!4681335 (forall!11236 (toList!5485 lt!1841024) lambda!204955)))

(declare-fun lt!1841278 () Unit!122749)

(assert (=> b!4681335 (= lt!1841278 lt!1841271)))

(assert (=> b!4681335 (forall!11236 (toList!5485 lt!1841265) lambda!204956)))

(declare-fun lt!1841263 () Unit!122749)

(declare-fun Unit!122777 () Unit!122749)

(assert (=> b!4681335 (= lt!1841263 Unit!122777)))

(assert (=> b!4681335 call!327203))

(declare-fun lt!1841262 () Unit!122749)

(declare-fun Unit!122778 () Unit!122749)

(assert (=> b!4681335 (= lt!1841262 Unit!122778)))

(declare-fun lt!1841272 () Unit!122749)

(declare-fun Unit!122779 () Unit!122749)

(assert (=> b!4681335 (= lt!1841272 Unit!122779)))

(declare-fun lt!1841280 () Unit!122749)

(assert (=> b!4681335 (= lt!1841280 (forallContained!3352 (toList!5485 lt!1841265) lambda!204956 (h!58482 oldBucket!34)))))

(assert (=> b!4681335 (contains!15398 lt!1841265 (_1!30087 (h!58482 oldBucket!34)))))

(declare-fun lt!1841266 () Unit!122749)

(declare-fun Unit!122780 () Unit!122749)

(assert (=> b!4681335 (= lt!1841266 Unit!122780)))

(assert (=> b!4681335 (contains!15398 lt!1841275 (_1!30087 (h!58482 oldBucket!34)))))

(declare-fun lt!1841276 () Unit!122749)

(declare-fun Unit!122781 () Unit!122749)

(assert (=> b!4681335 (= lt!1841276 Unit!122781)))

(assert (=> b!4681335 (forall!11236 oldBucket!34 lambda!204956)))

(declare-fun lt!1841279 () Unit!122749)

(declare-fun Unit!122782 () Unit!122749)

(assert (=> b!4681335 (= lt!1841279 Unit!122782)))

(assert (=> b!4681335 (forall!11236 (toList!5485 lt!1841265) lambda!204956)))

(declare-fun lt!1841264 () Unit!122749)

(declare-fun Unit!122783 () Unit!122749)

(assert (=> b!4681335 (= lt!1841264 Unit!122783)))

(declare-fun lt!1841269 () Unit!122749)

(declare-fun Unit!122784 () Unit!122749)

(assert (=> b!4681335 (= lt!1841269 Unit!122784)))

(declare-fun lt!1841270 () Unit!122749)

(assert (=> b!4681335 (= lt!1841270 (addForallContainsKeyThenBeforeAdding!667 lt!1841024 lt!1841275 (_1!30087 (h!58482 oldBucket!34)) (_2!30087 (h!58482 oldBucket!34))))))

(assert (=> b!4681335 (forall!11236 (toList!5485 lt!1841024) lambda!204956)))

(declare-fun lt!1841261 () Unit!122749)

(assert (=> b!4681335 (= lt!1841261 lt!1841270)))

(assert (=> b!4681335 (forall!11236 (toList!5485 lt!1841024) lambda!204956)))

(declare-fun lt!1841268 () Unit!122749)

(declare-fun Unit!122786 () Unit!122749)

(assert (=> b!4681335 (= lt!1841268 Unit!122786)))

(declare-fun res!1972904 () Bool)

(assert (=> b!4681335 (= res!1972904 (forall!11236 oldBucket!34 lambda!204956))))

(assert (=> b!4681335 (=> (not res!1972904) (not e!2920731))))

(assert (=> b!4681335 e!2920731))

(declare-fun lt!1841277 () Unit!122749)

(declare-fun Unit!122787 () Unit!122749)

(assert (=> b!4681335 (= lt!1841277 Unit!122787)))

(assert (=> b!4681336 (= e!2920732 lt!1841024)))

(declare-fun lt!1841274 () Unit!122749)

(assert (=> b!4681336 (= lt!1841274 call!327204)))

(assert (=> b!4681336 call!327203))

(declare-fun lt!1841281 () Unit!122749)

(assert (=> b!4681336 (= lt!1841281 lt!1841274)))

(assert (=> b!4681336 call!327202))

(declare-fun lt!1841273 () Unit!122749)

(declare-fun Unit!122788 () Unit!122749)

(assert (=> b!4681336 (= lt!1841273 Unit!122788)))

(assert (=> d!1487951 e!2920730))

(declare-fun res!1972905 () Bool)

(assert (=> d!1487951 (=> (not res!1972905) (not e!2920730))))

(assert (=> d!1487951 (= res!1972905 (forall!11236 oldBucket!34 lambda!204957))))

(assert (=> d!1487951 (= lt!1841267 e!2920732)))

(assert (=> d!1487951 (= c!800736 ((_ is Nil!52267) oldBucket!34))))

(assert (=> d!1487951 (noDuplicateKeys!1798 oldBucket!34)))

(assert (=> d!1487951 (= (addToMapMapFromBucket!1230 oldBucket!34 lt!1841024) lt!1841267)))

(declare-fun bm!327198 () Bool)

(assert (=> bm!327198 (= call!327204 (lemmaContainsAllItsOwnKeys!668 lt!1841024))))

(assert (= (and d!1487951 c!800736) b!4681336))

(assert (= (and d!1487951 (not c!800736)) b!4681335))

(assert (= (and b!4681335 res!1972904) b!4681333))

(assert (= (or b!4681336 b!4681335) bm!327198))

(assert (= (or b!4681336 b!4681335) bm!327197))

(assert (= (or b!4681336 b!4681333) bm!327199))

(assert (= (and d!1487951 res!1972905) b!4681332))

(assert (= (and b!4681332 res!1972906) b!4681334))

(declare-fun m!5579029 () Bool)

(assert (=> b!4681335 m!5579029))

(declare-fun m!5579031 () Bool)

(assert (=> b!4681335 m!5579031))

(declare-fun m!5579033 () Bool)

(assert (=> b!4681335 m!5579033))

(declare-fun m!5579035 () Bool)

(assert (=> b!4681335 m!5579035))

(declare-fun m!5579037 () Bool)

(assert (=> b!4681335 m!5579037))

(assert (=> b!4681335 m!5579029))

(declare-fun m!5579039 () Bool)

(assert (=> b!4681335 m!5579039))

(declare-fun m!5579041 () Bool)

(assert (=> b!4681335 m!5579041))

(assert (=> b!4681335 m!5579035))

(declare-fun m!5579043 () Bool)

(assert (=> b!4681335 m!5579043))

(declare-fun m!5579045 () Bool)

(assert (=> b!4681335 m!5579045))

(assert (=> b!4681335 m!5579037))

(assert (=> b!4681335 m!5579039))

(declare-fun m!5579047 () Bool)

(assert (=> b!4681335 m!5579047))

(declare-fun m!5579049 () Bool)

(assert (=> bm!327199 m!5579049))

(declare-fun m!5579051 () Bool)

(assert (=> b!4681332 m!5579051))

(declare-fun m!5579053 () Bool)

(assert (=> b!4681334 m!5579053))

(assert (=> bm!327198 m!5579021))

(declare-fun m!5579055 () Bool)

(assert (=> bm!327197 m!5579055))

(declare-fun m!5579057 () Bool)

(assert (=> d!1487951 m!5579057))

(assert (=> d!1487951 m!5578623))

(assert (=> b!4681186 d!1487951))

(declare-fun d!1487953 () Bool)

(declare-fun e!2920733 () Bool)

(assert (=> d!1487953 e!2920733))

(declare-fun res!1972908 () Bool)

(assert (=> d!1487953 (=> (not res!1972908) (not e!2920733))))

(declare-fun lt!1841285 () ListMap!4849)

(assert (=> d!1487953 (= res!1972908 (contains!15398 lt!1841285 (_1!30087 lt!1841030)))))

(declare-fun lt!1841282 () List!52391)

(assert (=> d!1487953 (= lt!1841285 (ListMap!4850 lt!1841282))))

(declare-fun lt!1841283 () Unit!122749)

(declare-fun lt!1841284 () Unit!122749)

(assert (=> d!1487953 (= lt!1841283 lt!1841284)))

(assert (=> d!1487953 (= (getValueByKey!1722 lt!1841282 (_1!30087 lt!1841030)) (Some!11973 (_2!30087 lt!1841030)))))

(assert (=> d!1487953 (= lt!1841284 (lemmaContainsTupThenGetReturnValue!981 lt!1841282 (_1!30087 lt!1841030) (_2!30087 lt!1841030)))))

(assert (=> d!1487953 (= lt!1841282 (insertNoDuplicatedKeys!489 (toList!5485 lt!1841026) (_1!30087 lt!1841030) (_2!30087 lt!1841030)))))

(assert (=> d!1487953 (= (+!2100 lt!1841026 lt!1841030) lt!1841285)))

(declare-fun b!4681337 () Bool)

(declare-fun res!1972907 () Bool)

(assert (=> b!4681337 (=> (not res!1972907) (not e!2920733))))

(assert (=> b!4681337 (= res!1972907 (= (getValueByKey!1722 (toList!5485 lt!1841285) (_1!30087 lt!1841030)) (Some!11973 (_2!30087 lt!1841030))))))

(declare-fun b!4681338 () Bool)

(assert (=> b!4681338 (= e!2920733 (contains!15399 (toList!5485 lt!1841285) lt!1841030))))

(assert (= (and d!1487953 res!1972908) b!4681337))

(assert (= (and b!4681337 res!1972907) b!4681338))

(declare-fun m!5579059 () Bool)

(assert (=> d!1487953 m!5579059))

(declare-fun m!5579061 () Bool)

(assert (=> d!1487953 m!5579061))

(declare-fun m!5579063 () Bool)

(assert (=> d!1487953 m!5579063))

(declare-fun m!5579065 () Bool)

(assert (=> d!1487953 m!5579065))

(declare-fun m!5579067 () Bool)

(assert (=> b!4681337 m!5579067))

(declare-fun m!5579069 () Bool)

(assert (=> b!4681338 m!5579069))

(assert (=> b!4681186 d!1487953))

(declare-fun b!4681354 () Bool)

(declare-fun e!2920740 () List!52391)

(assert (=> b!4681354 (= e!2920740 Nil!52267)))

(declare-fun b!4681351 () Bool)

(declare-fun e!2920741 () List!52391)

(assert (=> b!4681351 (= e!2920741 (t!359549 oldBucket!34))))

(declare-fun d!1487955 () Bool)

(declare-fun lt!1841294 () List!52391)

(assert (=> d!1487955 (not (containsKey!2947 lt!1841294 key!4653))))

(assert (=> d!1487955 (= lt!1841294 e!2920741)))

(declare-fun c!800744 () Bool)

(assert (=> d!1487955 (= c!800744 (and ((_ is Cons!52267) oldBucket!34) (= (_1!30087 (h!58482 oldBucket!34)) key!4653)))))

(assert (=> d!1487955 (noDuplicateKeys!1798 oldBucket!34)))

(assert (=> d!1487955 (= (removePairForKey!1393 oldBucket!34 key!4653) lt!1841294)))

(declare-fun b!4681352 () Bool)

(assert (=> b!4681352 (= e!2920741 e!2920740)))

(declare-fun c!800743 () Bool)

(assert (=> b!4681352 (= c!800743 ((_ is Cons!52267) oldBucket!34))))

(declare-fun b!4681353 () Bool)

(assert (=> b!4681353 (= e!2920740 (Cons!52267 (h!58482 oldBucket!34) (removePairForKey!1393 (t!359549 oldBucket!34) key!4653)))))

(assert (= (and d!1487955 c!800744) b!4681351))

(assert (= (and d!1487955 (not c!800744)) b!4681352))

(assert (= (and b!4681352 c!800743) b!4681353))

(assert (= (and b!4681352 (not c!800743)) b!4681354))

(declare-fun m!5579071 () Bool)

(assert (=> d!1487955 m!5579071))

(assert (=> d!1487955 m!5578623))

(declare-fun m!5579073 () Bool)

(assert (=> b!4681353 m!5579073))

(assert (=> b!4681197 d!1487955))

(declare-fun bs!1082923 () Bool)

(declare-fun b!4681363 () Bool)

(assert (= bs!1082923 (and b!4681363 d!1487879)))

(declare-fun lambda!204958 () Int)

(assert (=> bs!1082923 (not (= lambda!204958 lambda!204872))))

(declare-fun bs!1082924 () Bool)

(assert (= bs!1082924 (and b!4681363 b!4681335)))

(assert (=> bs!1082924 (= lambda!204958 lambda!204955)))

(declare-fun bs!1082925 () Bool)

(assert (= bs!1082925 (and b!4681363 d!1487915)))

(assert (=> bs!1082925 (= (= lt!1841024 lt!1841245) (= lambda!204958 lambda!204953))))

(declare-fun bs!1082926 () Bool)

(assert (= bs!1082926 (and b!4681363 d!1487951)))

(assert (=> bs!1082926 (= (= lt!1841024 lt!1841267) (= lambda!204958 lambda!204957))))

(declare-fun bs!1082927 () Bool)

(assert (= bs!1082927 (and b!4681363 b!4681324)))

(assert (=> bs!1082927 (= (= lt!1841024 lt!1841253) (= lambda!204958 lambda!204951))))

(declare-fun bs!1082928 () Bool)

(assert (= bs!1082928 (and b!4681363 b!4681336)))

(assert (=> bs!1082928 (= lambda!204958 lambda!204954)))

(assert (=> bs!1082927 (= lambda!204958 lambda!204950)))

(declare-fun bs!1082929 () Bool)

(assert (= bs!1082929 (and b!4681363 b!4681325)))

(assert (=> bs!1082929 (= lambda!204958 lambda!204949)))

(assert (=> bs!1082924 (= (= lt!1841024 lt!1841275) (= lambda!204958 lambda!204956))))

(assert (=> b!4681363 true))

(declare-fun bs!1082930 () Bool)

(declare-fun b!4681362 () Bool)

(assert (= bs!1082930 (and b!4681362 d!1487879)))

(declare-fun lambda!204959 () Int)

(assert (=> bs!1082930 (not (= lambda!204959 lambda!204872))))

(declare-fun bs!1082931 () Bool)

(assert (= bs!1082931 (and b!4681362 b!4681335)))

(assert (=> bs!1082931 (= lambda!204959 lambda!204955)))

(declare-fun bs!1082932 () Bool)

(assert (= bs!1082932 (and b!4681362 d!1487915)))

(assert (=> bs!1082932 (= (= lt!1841024 lt!1841245) (= lambda!204959 lambda!204953))))

(declare-fun bs!1082933 () Bool)

(assert (= bs!1082933 (and b!4681362 d!1487951)))

(assert (=> bs!1082933 (= (= lt!1841024 lt!1841267) (= lambda!204959 lambda!204957))))

(declare-fun bs!1082934 () Bool)

(assert (= bs!1082934 (and b!4681362 b!4681363)))

(assert (=> bs!1082934 (= lambda!204959 lambda!204958)))

(declare-fun bs!1082935 () Bool)

(assert (= bs!1082935 (and b!4681362 b!4681324)))

(assert (=> bs!1082935 (= (= lt!1841024 lt!1841253) (= lambda!204959 lambda!204951))))

(declare-fun bs!1082936 () Bool)

(assert (= bs!1082936 (and b!4681362 b!4681336)))

(assert (=> bs!1082936 (= lambda!204959 lambda!204954)))

(assert (=> bs!1082935 (= lambda!204959 lambda!204950)))

(declare-fun bs!1082937 () Bool)

(assert (= bs!1082937 (and b!4681362 b!4681325)))

(assert (=> bs!1082937 (= lambda!204959 lambda!204949)))

(assert (=> bs!1082931 (= (= lt!1841024 lt!1841275) (= lambda!204959 lambda!204956))))

(assert (=> b!4681362 true))

(declare-fun lambda!204960 () Int)

(assert (=> bs!1082930 (not (= lambda!204960 lambda!204872))))

(declare-fun lt!1841319 () ListMap!4849)

(assert (=> bs!1082931 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204955))))

(assert (=> bs!1082932 (= (= lt!1841319 lt!1841245) (= lambda!204960 lambda!204953))))

(assert (=> bs!1082933 (= (= lt!1841319 lt!1841267) (= lambda!204960 lambda!204957))))

(assert (=> b!4681362 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204959))))

(assert (=> bs!1082934 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204958))))

(assert (=> bs!1082935 (= (= lt!1841319 lt!1841253) (= lambda!204960 lambda!204951))))

(assert (=> bs!1082936 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204954))))

(assert (=> bs!1082935 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204950))))

(assert (=> bs!1082937 (= (= lt!1841319 lt!1841024) (= lambda!204960 lambda!204949))))

(assert (=> bs!1082931 (= (= lt!1841319 lt!1841275) (= lambda!204960 lambda!204956))))

(assert (=> b!4681362 true))

(declare-fun bs!1082938 () Bool)

(declare-fun d!1487957 () Bool)

(assert (= bs!1082938 (and d!1487957 d!1487879)))

(declare-fun lambda!204961 () Int)

(assert (=> bs!1082938 (not (= lambda!204961 lambda!204872))))

(declare-fun bs!1082939 () Bool)

(assert (= bs!1082939 (and d!1487957 b!4681335)))

(declare-fun lt!1841311 () ListMap!4849)

(assert (=> bs!1082939 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204955))))

(declare-fun bs!1082940 () Bool)

(assert (= bs!1082940 (and d!1487957 d!1487915)))

(assert (=> bs!1082940 (= (= lt!1841311 lt!1841245) (= lambda!204961 lambda!204953))))

(declare-fun bs!1082941 () Bool)

(assert (= bs!1082941 (and d!1487957 b!4681362)))

(assert (=> bs!1082941 (= (= lt!1841311 lt!1841319) (= lambda!204961 lambda!204960))))

(declare-fun bs!1082942 () Bool)

(assert (= bs!1082942 (and d!1487957 d!1487951)))

(assert (=> bs!1082942 (= (= lt!1841311 lt!1841267) (= lambda!204961 lambda!204957))))

(assert (=> bs!1082941 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204959))))

(declare-fun bs!1082943 () Bool)

(assert (= bs!1082943 (and d!1487957 b!4681363)))

(assert (=> bs!1082943 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204958))))

(declare-fun bs!1082944 () Bool)

(assert (= bs!1082944 (and d!1487957 b!4681324)))

(assert (=> bs!1082944 (= (= lt!1841311 lt!1841253) (= lambda!204961 lambda!204951))))

(declare-fun bs!1082945 () Bool)

(assert (= bs!1082945 (and d!1487957 b!4681336)))

(assert (=> bs!1082945 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204954))))

(assert (=> bs!1082944 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204950))))

(declare-fun bs!1082946 () Bool)

(assert (= bs!1082946 (and d!1487957 b!4681325)))

(assert (=> bs!1082946 (= (= lt!1841311 lt!1841024) (= lambda!204961 lambda!204949))))

(assert (=> bs!1082939 (= (= lt!1841311 lt!1841275) (= lambda!204961 lambda!204956))))

(assert (=> d!1487957 true))

(declare-fun b!4681359 () Bool)

(declare-fun res!1972911 () Bool)

(declare-fun e!2920744 () Bool)

(assert (=> b!4681359 (=> (not res!1972911) (not e!2920744))))

(assert (=> b!4681359 (= res!1972911 (forall!11236 (toList!5485 lt!1841024) lambda!204961))))

(declare-fun bm!327200 () Bool)

(declare-fun call!327206 () Bool)

(declare-fun c!800747 () Bool)

(assert (=> bm!327200 (= call!327206 (forall!11236 (ite c!800747 (toList!5485 lt!1841024) (t!359549 (_2!30088 (h!58483 (toList!5486 lm!2023))))) (ite c!800747 lambda!204958 lambda!204960)))))

(declare-fun b!4681360 () Bool)

(declare-fun e!2920745 () Bool)

(declare-fun call!327205 () Bool)

(assert (=> b!4681360 (= e!2920745 call!327205)))

(declare-fun b!4681361 () Bool)

(assert (=> b!4681361 (= e!2920744 (invariantList!1379 (toList!5485 lt!1841311)))))

(declare-fun bm!327202 () Bool)

(assert (=> bm!327202 (= call!327205 (forall!11236 (toList!5485 lt!1841024) (ite c!800747 lambda!204958 lambda!204960)))))

(declare-fun e!2920746 () ListMap!4849)

(assert (=> b!4681362 (= e!2920746 lt!1841319)))

(declare-fun lt!1841309 () ListMap!4849)

(assert (=> b!4681362 (= lt!1841309 (+!2100 lt!1841024 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023))))))))

(assert (=> b!4681362 (= lt!1841319 (addToMapMapFromBucket!1230 (t!359549 (_2!30088 (h!58483 (toList!5486 lm!2023)))) (+!2100 lt!1841024 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023)))))))))

(declare-fun lt!1841315 () Unit!122749)

(declare-fun call!327207 () Unit!122749)

(assert (=> b!4681362 (= lt!1841315 call!327207)))

(assert (=> b!4681362 (forall!11236 (toList!5485 lt!1841024) lambda!204959)))

(declare-fun lt!1841322 () Unit!122749)

(assert (=> b!4681362 (= lt!1841322 lt!1841315)))

(assert (=> b!4681362 (forall!11236 (toList!5485 lt!1841309) lambda!204960)))

(declare-fun lt!1841307 () Unit!122749)

(declare-fun Unit!122790 () Unit!122749)

(assert (=> b!4681362 (= lt!1841307 Unit!122790)))

(assert (=> b!4681362 call!327206))

(declare-fun lt!1841306 () Unit!122749)

(declare-fun Unit!122791 () Unit!122749)

(assert (=> b!4681362 (= lt!1841306 Unit!122791)))

(declare-fun lt!1841316 () Unit!122749)

(declare-fun Unit!122792 () Unit!122749)

(assert (=> b!4681362 (= lt!1841316 Unit!122792)))

(declare-fun lt!1841324 () Unit!122749)

(assert (=> b!4681362 (= lt!1841324 (forallContained!3352 (toList!5485 lt!1841309) lambda!204960 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023))))))))

(assert (=> b!4681362 (contains!15398 lt!1841309 (_1!30087 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023))))))))

(declare-fun lt!1841310 () Unit!122749)

(declare-fun Unit!122793 () Unit!122749)

(assert (=> b!4681362 (= lt!1841310 Unit!122793)))

(assert (=> b!4681362 (contains!15398 lt!1841319 (_1!30087 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023))))))))

(declare-fun lt!1841320 () Unit!122749)

(declare-fun Unit!122794 () Unit!122749)

(assert (=> b!4681362 (= lt!1841320 Unit!122794)))

(assert (=> b!4681362 (forall!11236 (_2!30088 (h!58483 (toList!5486 lm!2023))) lambda!204960)))

(declare-fun lt!1841323 () Unit!122749)

(declare-fun Unit!122795 () Unit!122749)

(assert (=> b!4681362 (= lt!1841323 Unit!122795)))

(assert (=> b!4681362 (forall!11236 (toList!5485 lt!1841309) lambda!204960)))

(declare-fun lt!1841308 () Unit!122749)

(declare-fun Unit!122796 () Unit!122749)

(assert (=> b!4681362 (= lt!1841308 Unit!122796)))

(declare-fun lt!1841313 () Unit!122749)

(declare-fun Unit!122797 () Unit!122749)

(assert (=> b!4681362 (= lt!1841313 Unit!122797)))

(declare-fun lt!1841314 () Unit!122749)

(assert (=> b!4681362 (= lt!1841314 (addForallContainsKeyThenBeforeAdding!667 lt!1841024 lt!1841319 (_1!30087 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023))))) (_2!30087 (h!58482 (_2!30088 (h!58483 (toList!5486 lm!2023)))))))))

(assert (=> b!4681362 (forall!11236 (toList!5485 lt!1841024) lambda!204960)))

(declare-fun lt!1841305 () Unit!122749)

(assert (=> b!4681362 (= lt!1841305 lt!1841314)))

(assert (=> b!4681362 (forall!11236 (toList!5485 lt!1841024) lambda!204960)))

(declare-fun lt!1841312 () Unit!122749)

(declare-fun Unit!122799 () Unit!122749)

(assert (=> b!4681362 (= lt!1841312 Unit!122799)))

(declare-fun res!1972909 () Bool)

(assert (=> b!4681362 (= res!1972909 (forall!11236 (_2!30088 (h!58483 (toList!5486 lm!2023))) lambda!204960))))

(assert (=> b!4681362 (=> (not res!1972909) (not e!2920745))))

(assert (=> b!4681362 e!2920745))

(declare-fun lt!1841321 () Unit!122749)

(declare-fun Unit!122800 () Unit!122749)

(assert (=> b!4681362 (= lt!1841321 Unit!122800)))

(assert (=> b!4681363 (= e!2920746 lt!1841024)))

(declare-fun lt!1841318 () Unit!122749)

(assert (=> b!4681363 (= lt!1841318 call!327207)))

(assert (=> b!4681363 call!327206))

(declare-fun lt!1841325 () Unit!122749)

(assert (=> b!4681363 (= lt!1841325 lt!1841318)))

(assert (=> b!4681363 call!327205))

(declare-fun lt!1841317 () Unit!122749)

(declare-fun Unit!122802 () Unit!122749)

(assert (=> b!4681363 (= lt!1841317 Unit!122802)))

(assert (=> d!1487957 e!2920744))

(declare-fun res!1972910 () Bool)

(assert (=> d!1487957 (=> (not res!1972910) (not e!2920744))))

(assert (=> d!1487957 (= res!1972910 (forall!11236 (_2!30088 (h!58483 (toList!5486 lm!2023))) lambda!204961))))

(assert (=> d!1487957 (= lt!1841311 e!2920746)))

(assert (=> d!1487957 (= c!800747 ((_ is Nil!52267) (_2!30088 (h!58483 (toList!5486 lm!2023)))))))

(assert (=> d!1487957 (noDuplicateKeys!1798 (_2!30088 (h!58483 (toList!5486 lm!2023))))))

(assert (=> d!1487957 (= (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (toList!5486 lm!2023))) lt!1841024) lt!1841311)))

(declare-fun bm!327201 () Bool)

(assert (=> bm!327201 (= call!327207 (lemmaContainsAllItsOwnKeys!668 lt!1841024))))

(assert (= (and d!1487957 c!800747) b!4681363))

(assert (= (and d!1487957 (not c!800747)) b!4681362))

(assert (= (and b!4681362 res!1972909) b!4681360))

(assert (= (or b!4681363 b!4681362) bm!327201))

(assert (= (or b!4681363 b!4681362) bm!327200))

(assert (= (or b!4681363 b!4681360) bm!327202))

(assert (= (and d!1487957 res!1972910) b!4681359))

(assert (= (and b!4681359 res!1972911) b!4681361))

(declare-fun m!5579099 () Bool)

(assert (=> b!4681362 m!5579099))

(declare-fun m!5579103 () Bool)

(assert (=> b!4681362 m!5579103))

(declare-fun m!5579105 () Bool)

(assert (=> b!4681362 m!5579105))

(declare-fun m!5579107 () Bool)

(assert (=> b!4681362 m!5579107))

(declare-fun m!5579109 () Bool)

(assert (=> b!4681362 m!5579109))

(assert (=> b!4681362 m!5579099))

(declare-fun m!5579111 () Bool)

(assert (=> b!4681362 m!5579111))

(declare-fun m!5579113 () Bool)

(assert (=> b!4681362 m!5579113))

(assert (=> b!4681362 m!5579107))

(declare-fun m!5579115 () Bool)

(assert (=> b!4681362 m!5579115))

(declare-fun m!5579117 () Bool)

(assert (=> b!4681362 m!5579117))

(assert (=> b!4681362 m!5579109))

(assert (=> b!4681362 m!5579111))

(declare-fun m!5579119 () Bool)

(assert (=> b!4681362 m!5579119))

(declare-fun m!5579121 () Bool)

(assert (=> bm!327202 m!5579121))

(declare-fun m!5579123 () Bool)

(assert (=> b!4681359 m!5579123))

(declare-fun m!5579125 () Bool)

(assert (=> b!4681361 m!5579125))

(assert (=> bm!327201 m!5579021))

(declare-fun m!5579127 () Bool)

(assert (=> bm!327200 m!5579127))

(declare-fun m!5579129 () Bool)

(assert (=> d!1487957 m!5579129))

(declare-fun m!5579131 () Bool)

(assert (=> d!1487957 m!5579131))

(assert (=> b!4681176 d!1487957))

(declare-fun bs!1082950 () Bool)

(declare-fun d!1487963 () Bool)

(assert (= bs!1082950 (and d!1487963 d!1487891)))

(declare-fun lambda!204963 () Int)

(assert (=> bs!1082950 (= lambda!204963 lambda!204876)))

(declare-fun bs!1082951 () Bool)

(assert (= bs!1082951 (and d!1487963 d!1487901)))

(assert (=> bs!1082951 (= lambda!204963 lambda!204879)))

(declare-fun bs!1082952 () Bool)

(assert (= bs!1082952 (and d!1487963 d!1487903)))

(assert (=> bs!1082952 (not (= lambda!204963 lambda!204882))))

(declare-fun bs!1082953 () Bool)

(assert (= bs!1082953 (and d!1487963 start!472732)))

(assert (=> bs!1082953 (= lambda!204963 lambda!204869)))

(declare-fun bs!1082954 () Bool)

(assert (= bs!1082954 (and d!1487963 d!1487881)))

(assert (=> bs!1082954 (= lambda!204963 lambda!204875)))

(declare-fun lt!1841335 () ListMap!4849)

(assert (=> d!1487963 (invariantList!1379 (toList!5485 lt!1841335))))

(declare-fun e!2920762 () ListMap!4849)

(assert (=> d!1487963 (= lt!1841335 e!2920762)))

(declare-fun c!800754 () Bool)

(assert (=> d!1487963 (= c!800754 ((_ is Cons!52268) (t!359550 (toList!5486 lm!2023))))))

(assert (=> d!1487963 (forall!11235 (t!359550 (toList!5486 lm!2023)) lambda!204963)))

(assert (=> d!1487963 (= (extractMap!1824 (t!359550 (toList!5486 lm!2023))) lt!1841335)))

(declare-fun b!4681385 () Bool)

(assert (=> b!4681385 (= e!2920762 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (t!359550 (toList!5486 lm!2023)))) (extractMap!1824 (t!359550 (t!359550 (toList!5486 lm!2023))))))))

(declare-fun b!4681386 () Bool)

(assert (=> b!4681386 (= e!2920762 (ListMap!4850 Nil!52267))))

(assert (= (and d!1487963 c!800754) b!4681385))

(assert (= (and d!1487963 (not c!800754)) b!4681386))

(declare-fun m!5579133 () Bool)

(assert (=> d!1487963 m!5579133))

(declare-fun m!5579135 () Bool)

(assert (=> d!1487963 m!5579135))

(declare-fun m!5579137 () Bool)

(assert (=> b!4681385 m!5579137))

(assert (=> b!4681385 m!5579137))

(declare-fun m!5579139 () Bool)

(assert (=> b!4681385 m!5579139))

(assert (=> b!4681176 d!1487963))

(declare-fun d!1487965 () Bool)

(assert (=> d!1487965 (= (tail!8460 lm!2023) (ListLongMap!4016 (tail!8461 (toList!5486 lm!2023))))))

(declare-fun bs!1082955 () Bool)

(assert (= bs!1082955 d!1487965))

(assert (=> bs!1082955 m!5578681))

(assert (=> b!4681176 d!1487965))

(declare-fun bs!1082956 () Bool)

(declare-fun b!4681391 () Bool)

(assert (= bs!1082956 (and b!4681391 d!1487879)))

(declare-fun lambda!204964 () Int)

(assert (=> bs!1082956 (not (= lambda!204964 lambda!204872))))

(declare-fun bs!1082957 () Bool)

(assert (= bs!1082957 (and b!4681391 b!4681335)))

(assert (=> bs!1082957 (= lambda!204964 lambda!204955)))

(declare-fun bs!1082958 () Bool)

(assert (= bs!1082958 (and b!4681391 d!1487915)))

(assert (=> bs!1082958 (= (= lt!1841024 lt!1841245) (= lambda!204964 lambda!204953))))

(declare-fun bs!1082959 () Bool)

(assert (= bs!1082959 (and b!4681391 b!4681362)))

(assert (=> bs!1082959 (= (= lt!1841024 lt!1841319) (= lambda!204964 lambda!204960))))

(declare-fun bs!1082960 () Bool)

(assert (= bs!1082960 (and b!4681391 d!1487951)))

(assert (=> bs!1082960 (= (= lt!1841024 lt!1841267) (= lambda!204964 lambda!204957))))

(assert (=> bs!1082959 (= lambda!204964 lambda!204959)))

(declare-fun bs!1082961 () Bool)

(assert (= bs!1082961 (and b!4681391 b!4681363)))

(assert (=> bs!1082961 (= lambda!204964 lambda!204958)))

(declare-fun bs!1082962 () Bool)

(assert (= bs!1082962 (and b!4681391 b!4681336)))

(assert (=> bs!1082962 (= lambda!204964 lambda!204954)))

(declare-fun bs!1082963 () Bool)

(assert (= bs!1082963 (and b!4681391 b!4681324)))

(assert (=> bs!1082963 (= lambda!204964 lambda!204950)))

(declare-fun bs!1082964 () Bool)

(assert (= bs!1082964 (and b!4681391 b!4681325)))

(assert (=> bs!1082964 (= lambda!204964 lambda!204949)))

(assert (=> bs!1082957 (= (= lt!1841024 lt!1841275) (= lambda!204964 lambda!204956))))

(assert (=> bs!1082963 (= (= lt!1841024 lt!1841253) (= lambda!204964 lambda!204951))))

(declare-fun bs!1082965 () Bool)

(assert (= bs!1082965 (and b!4681391 d!1487957)))

(assert (=> bs!1082965 (= (= lt!1841024 lt!1841311) (= lambda!204964 lambda!204961))))

(assert (=> b!4681391 true))

(declare-fun bs!1082966 () Bool)

(declare-fun b!4681390 () Bool)

(assert (= bs!1082966 (and b!4681390 d!1487879)))

(declare-fun lambda!204965 () Int)

(assert (=> bs!1082966 (not (= lambda!204965 lambda!204872))))

(declare-fun bs!1082967 () Bool)

(assert (= bs!1082967 (and b!4681390 b!4681335)))

(assert (=> bs!1082967 (= lambda!204965 lambda!204955)))

(declare-fun bs!1082968 () Bool)

(assert (= bs!1082968 (and b!4681390 d!1487915)))

(assert (=> bs!1082968 (= (= lt!1841024 lt!1841245) (= lambda!204965 lambda!204953))))

(declare-fun bs!1082969 () Bool)

(assert (= bs!1082969 (and b!4681390 b!4681362)))

(assert (=> bs!1082969 (= (= lt!1841024 lt!1841319) (= lambda!204965 lambda!204960))))

(declare-fun bs!1082970 () Bool)

(assert (= bs!1082970 (and b!4681390 d!1487951)))

(assert (=> bs!1082970 (= (= lt!1841024 lt!1841267) (= lambda!204965 lambda!204957))))

(assert (=> bs!1082969 (= lambda!204965 lambda!204959)))

(declare-fun bs!1082971 () Bool)

(assert (= bs!1082971 (and b!4681390 b!4681363)))

(assert (=> bs!1082971 (= lambda!204965 lambda!204958)))

(declare-fun bs!1082972 () Bool)

(assert (= bs!1082972 (and b!4681390 b!4681391)))

(assert (=> bs!1082972 (= lambda!204965 lambda!204964)))

(declare-fun bs!1082973 () Bool)

(assert (= bs!1082973 (and b!4681390 b!4681336)))

(assert (=> bs!1082973 (= lambda!204965 lambda!204954)))

(declare-fun bs!1082974 () Bool)

(assert (= bs!1082974 (and b!4681390 b!4681324)))

(assert (=> bs!1082974 (= lambda!204965 lambda!204950)))

(declare-fun bs!1082975 () Bool)

(assert (= bs!1082975 (and b!4681390 b!4681325)))

(assert (=> bs!1082975 (= lambda!204965 lambda!204949)))

(assert (=> bs!1082967 (= (= lt!1841024 lt!1841275) (= lambda!204965 lambda!204956))))

(assert (=> bs!1082974 (= (= lt!1841024 lt!1841253) (= lambda!204965 lambda!204951))))

(declare-fun bs!1082976 () Bool)

(assert (= bs!1082976 (and b!4681390 d!1487957)))

(assert (=> bs!1082976 (= (= lt!1841024 lt!1841311) (= lambda!204965 lambda!204961))))

(assert (=> b!4681390 true))

(declare-fun lambda!204966 () Int)

(assert (=> bs!1082966 (not (= lambda!204966 lambda!204872))))

(declare-fun lt!1841350 () ListMap!4849)

(assert (=> bs!1082967 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204955))))

(assert (=> bs!1082968 (= (= lt!1841350 lt!1841245) (= lambda!204966 lambda!204953))))

(assert (=> bs!1082969 (= (= lt!1841350 lt!1841319) (= lambda!204966 lambda!204960))))

(assert (=> bs!1082970 (= (= lt!1841350 lt!1841267) (= lambda!204966 lambda!204957))))

(assert (=> bs!1082969 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204959))))

(assert (=> bs!1082971 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204958))))

(assert (=> bs!1082972 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204964))))

(assert (=> b!4681390 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204965))))

(assert (=> bs!1082973 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204954))))

(assert (=> bs!1082974 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204950))))

(assert (=> bs!1082975 (= (= lt!1841350 lt!1841024) (= lambda!204966 lambda!204949))))

(assert (=> bs!1082967 (= (= lt!1841350 lt!1841275) (= lambda!204966 lambda!204956))))

(assert (=> bs!1082974 (= (= lt!1841350 lt!1841253) (= lambda!204966 lambda!204951))))

(assert (=> bs!1082976 (= (= lt!1841350 lt!1841311) (= lambda!204966 lambda!204961))))

(assert (=> b!4681390 true))

(declare-fun bs!1082977 () Bool)

(declare-fun d!1487967 () Bool)

(assert (= bs!1082977 (and d!1487967 d!1487879)))

(declare-fun lambda!204967 () Int)

(assert (=> bs!1082977 (not (= lambda!204967 lambda!204872))))

(declare-fun bs!1082978 () Bool)

(assert (= bs!1082978 (and d!1487967 b!4681335)))

(declare-fun lt!1841342 () ListMap!4849)

(assert (=> bs!1082978 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204955))))

(declare-fun bs!1082979 () Bool)

(assert (= bs!1082979 (and d!1487967 d!1487915)))

(assert (=> bs!1082979 (= (= lt!1841342 lt!1841245) (= lambda!204967 lambda!204953))))

(declare-fun bs!1082980 () Bool)

(assert (= bs!1082980 (and d!1487967 b!4681362)))

(assert (=> bs!1082980 (= (= lt!1841342 lt!1841319) (= lambda!204967 lambda!204960))))

(declare-fun bs!1082981 () Bool)

(assert (= bs!1082981 (and d!1487967 d!1487951)))

(assert (=> bs!1082981 (= (= lt!1841342 lt!1841267) (= lambda!204967 lambda!204957))))

(assert (=> bs!1082980 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204959))))

(declare-fun bs!1082982 () Bool)

(assert (= bs!1082982 (and d!1487967 b!4681363)))

(assert (=> bs!1082982 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204958))))

(declare-fun bs!1082983 () Bool)

(assert (= bs!1082983 (and d!1487967 b!4681390)))

(assert (=> bs!1082983 (= (= lt!1841342 lt!1841350) (= lambda!204967 lambda!204966))))

(declare-fun bs!1082984 () Bool)

(assert (= bs!1082984 (and d!1487967 b!4681391)))

(assert (=> bs!1082984 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204964))))

(assert (=> bs!1082983 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204965))))

(declare-fun bs!1082985 () Bool)

(assert (= bs!1082985 (and d!1487967 b!4681336)))

(assert (=> bs!1082985 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204954))))

(declare-fun bs!1082986 () Bool)

(assert (= bs!1082986 (and d!1487967 b!4681324)))

(assert (=> bs!1082986 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204950))))

(declare-fun bs!1082987 () Bool)

(assert (= bs!1082987 (and d!1487967 b!4681325)))

(assert (=> bs!1082987 (= (= lt!1841342 lt!1841024) (= lambda!204967 lambda!204949))))

(assert (=> bs!1082978 (= (= lt!1841342 lt!1841275) (= lambda!204967 lambda!204956))))

(assert (=> bs!1082986 (= (= lt!1841342 lt!1841253) (= lambda!204967 lambda!204951))))

(declare-fun bs!1082988 () Bool)

(assert (= bs!1082988 (and d!1487967 d!1487957)))

(assert (=> bs!1082988 (= (= lt!1841342 lt!1841311) (= lambda!204967 lambda!204961))))

(assert (=> d!1487967 true))

(declare-fun b!4681387 () Bool)

(declare-fun res!1972923 () Bool)

(declare-fun e!2920763 () Bool)

(assert (=> b!4681387 (=> (not res!1972923) (not e!2920763))))

(assert (=> b!4681387 (= res!1972923 (forall!11236 (toList!5485 lt!1841024) lambda!204967))))

(declare-fun c!800755 () Bool)

(declare-fun call!327212 () Bool)

(declare-fun bm!327206 () Bool)

(assert (=> bm!327206 (= call!327212 (forall!11236 (ite c!800755 (toList!5485 lt!1841024) (t!359549 newBucket!218)) (ite c!800755 lambda!204964 lambda!204966)))))

(declare-fun b!4681388 () Bool)

(declare-fun e!2920764 () Bool)

(declare-fun call!327211 () Bool)

(assert (=> b!4681388 (= e!2920764 call!327211)))

(declare-fun b!4681389 () Bool)

(assert (=> b!4681389 (= e!2920763 (invariantList!1379 (toList!5485 lt!1841342)))))

(declare-fun bm!327208 () Bool)

(assert (=> bm!327208 (= call!327211 (forall!11236 (toList!5485 lt!1841024) (ite c!800755 lambda!204964 lambda!204966)))))

(declare-fun e!2920765 () ListMap!4849)

(assert (=> b!4681390 (= e!2920765 lt!1841350)))

(declare-fun lt!1841340 () ListMap!4849)

(assert (=> b!4681390 (= lt!1841340 (+!2100 lt!1841024 (h!58482 newBucket!218)))))

(assert (=> b!4681390 (= lt!1841350 (addToMapMapFromBucket!1230 (t!359549 newBucket!218) (+!2100 lt!1841024 (h!58482 newBucket!218))))))

(declare-fun lt!1841346 () Unit!122749)

(declare-fun call!327213 () Unit!122749)

(assert (=> b!4681390 (= lt!1841346 call!327213)))

(assert (=> b!4681390 (forall!11236 (toList!5485 lt!1841024) lambda!204965)))

(declare-fun lt!1841353 () Unit!122749)

(assert (=> b!4681390 (= lt!1841353 lt!1841346)))

(assert (=> b!4681390 (forall!11236 (toList!5485 lt!1841340) lambda!204966)))

(declare-fun lt!1841338 () Unit!122749)

(declare-fun Unit!122817 () Unit!122749)

(assert (=> b!4681390 (= lt!1841338 Unit!122817)))

(assert (=> b!4681390 call!327212))

(declare-fun lt!1841337 () Unit!122749)

(declare-fun Unit!122819 () Unit!122749)

(assert (=> b!4681390 (= lt!1841337 Unit!122819)))

(declare-fun lt!1841347 () Unit!122749)

(declare-fun Unit!122820 () Unit!122749)

(assert (=> b!4681390 (= lt!1841347 Unit!122820)))

(declare-fun lt!1841355 () Unit!122749)

(assert (=> b!4681390 (= lt!1841355 (forallContained!3352 (toList!5485 lt!1841340) lambda!204966 (h!58482 newBucket!218)))))

(assert (=> b!4681390 (contains!15398 lt!1841340 (_1!30087 (h!58482 newBucket!218)))))

(declare-fun lt!1841341 () Unit!122749)

(declare-fun Unit!122823 () Unit!122749)

(assert (=> b!4681390 (= lt!1841341 Unit!122823)))

(assert (=> b!4681390 (contains!15398 lt!1841350 (_1!30087 (h!58482 newBucket!218)))))

(declare-fun lt!1841351 () Unit!122749)

(declare-fun Unit!122825 () Unit!122749)

(assert (=> b!4681390 (= lt!1841351 Unit!122825)))

(assert (=> b!4681390 (forall!11236 newBucket!218 lambda!204966)))

(declare-fun lt!1841354 () Unit!122749)

(declare-fun Unit!122826 () Unit!122749)

(assert (=> b!4681390 (= lt!1841354 Unit!122826)))

(assert (=> b!4681390 (forall!11236 (toList!5485 lt!1841340) lambda!204966)))

(declare-fun lt!1841339 () Unit!122749)

(declare-fun Unit!122827 () Unit!122749)

(assert (=> b!4681390 (= lt!1841339 Unit!122827)))

(declare-fun lt!1841344 () Unit!122749)

(declare-fun Unit!122829 () Unit!122749)

(assert (=> b!4681390 (= lt!1841344 Unit!122829)))

(declare-fun lt!1841345 () Unit!122749)

(assert (=> b!4681390 (= lt!1841345 (addForallContainsKeyThenBeforeAdding!667 lt!1841024 lt!1841350 (_1!30087 (h!58482 newBucket!218)) (_2!30087 (h!58482 newBucket!218))))))

(assert (=> b!4681390 (forall!11236 (toList!5485 lt!1841024) lambda!204966)))

(declare-fun lt!1841336 () Unit!122749)

(assert (=> b!4681390 (= lt!1841336 lt!1841345)))

(assert (=> b!4681390 (forall!11236 (toList!5485 lt!1841024) lambda!204966)))

(declare-fun lt!1841343 () Unit!122749)

(declare-fun Unit!122831 () Unit!122749)

(assert (=> b!4681390 (= lt!1841343 Unit!122831)))

(declare-fun res!1972921 () Bool)

(assert (=> b!4681390 (= res!1972921 (forall!11236 newBucket!218 lambda!204966))))

(assert (=> b!4681390 (=> (not res!1972921) (not e!2920764))))

(assert (=> b!4681390 e!2920764))

(declare-fun lt!1841352 () Unit!122749)

(declare-fun Unit!122832 () Unit!122749)

(assert (=> b!4681390 (= lt!1841352 Unit!122832)))

(assert (=> b!4681391 (= e!2920765 lt!1841024)))

(declare-fun lt!1841349 () Unit!122749)

(assert (=> b!4681391 (= lt!1841349 call!327213)))

(assert (=> b!4681391 call!327212))

(declare-fun lt!1841356 () Unit!122749)

(assert (=> b!4681391 (= lt!1841356 lt!1841349)))

(assert (=> b!4681391 call!327211))

(declare-fun lt!1841348 () Unit!122749)

(declare-fun Unit!122833 () Unit!122749)

(assert (=> b!4681391 (= lt!1841348 Unit!122833)))

(assert (=> d!1487967 e!2920763))

(declare-fun res!1972922 () Bool)

(assert (=> d!1487967 (=> (not res!1972922) (not e!2920763))))

(assert (=> d!1487967 (= res!1972922 (forall!11236 newBucket!218 lambda!204967))))

(assert (=> d!1487967 (= lt!1841342 e!2920765)))

(assert (=> d!1487967 (= c!800755 ((_ is Nil!52267) newBucket!218))))

(assert (=> d!1487967 (noDuplicateKeys!1798 newBucket!218)))

(assert (=> d!1487967 (= (addToMapMapFromBucket!1230 newBucket!218 lt!1841024) lt!1841342)))

(declare-fun bm!327207 () Bool)

(assert (=> bm!327207 (= call!327213 (lemmaContainsAllItsOwnKeys!668 lt!1841024))))

(assert (= (and d!1487967 c!800755) b!4681391))

(assert (= (and d!1487967 (not c!800755)) b!4681390))

(assert (= (and b!4681390 res!1972921) b!4681388))

(assert (= (or b!4681391 b!4681390) bm!327207))

(assert (= (or b!4681391 b!4681390) bm!327206))

(assert (= (or b!4681391 b!4681388) bm!327208))

(assert (= (and d!1487967 res!1972922) b!4681387))

(assert (= (and b!4681387 res!1972923) b!4681389))

(declare-fun m!5579149 () Bool)

(assert (=> b!4681390 m!5579149))

(declare-fun m!5579151 () Bool)

(assert (=> b!4681390 m!5579151))

(declare-fun m!5579153 () Bool)

(assert (=> b!4681390 m!5579153))

(declare-fun m!5579155 () Bool)

(assert (=> b!4681390 m!5579155))

(declare-fun m!5579157 () Bool)

(assert (=> b!4681390 m!5579157))

(assert (=> b!4681390 m!5579149))

(declare-fun m!5579159 () Bool)

(assert (=> b!4681390 m!5579159))

(declare-fun m!5579161 () Bool)

(assert (=> b!4681390 m!5579161))

(assert (=> b!4681390 m!5579155))

(declare-fun m!5579165 () Bool)

(assert (=> b!4681390 m!5579165))

(declare-fun m!5579169 () Bool)

(assert (=> b!4681390 m!5579169))

(assert (=> b!4681390 m!5579157))

(assert (=> b!4681390 m!5579159))

(declare-fun m!5579173 () Bool)

(assert (=> b!4681390 m!5579173))

(declare-fun m!5579179 () Bool)

(assert (=> bm!327208 m!5579179))

(declare-fun m!5579183 () Bool)

(assert (=> b!4681387 m!5579183))

(declare-fun m!5579185 () Bool)

(assert (=> b!4681389 m!5579185))

(assert (=> bm!327207 m!5579021))

(declare-fun m!5579187 () Bool)

(assert (=> bm!327206 m!5579187))

(declare-fun m!5579189 () Bool)

(assert (=> d!1487967 m!5579189))

(assert (=> d!1487967 m!5578629))

(assert (=> b!4681187 d!1487967))

(declare-fun bs!1082990 () Bool)

(declare-fun b!4681400 () Bool)

(assert (= bs!1082990 (and b!4681400 d!1487879)))

(declare-fun lambda!204968 () Int)

(assert (=> bs!1082990 (not (= lambda!204968 lambda!204872))))

(declare-fun bs!1082991 () Bool)

(assert (= bs!1082991 (and b!4681400 b!4681335)))

(assert (=> bs!1082991 (= lambda!204968 lambda!204955)))

(declare-fun bs!1082992 () Bool)

(assert (= bs!1082992 (and b!4681400 d!1487915)))

(assert (=> bs!1082992 (= (= lt!1841024 lt!1841245) (= lambda!204968 lambda!204953))))

(declare-fun bs!1082993 () Bool)

(assert (= bs!1082993 (and b!4681400 b!4681362)))

(assert (=> bs!1082993 (= (= lt!1841024 lt!1841319) (= lambda!204968 lambda!204960))))

(declare-fun bs!1082994 () Bool)

(assert (= bs!1082994 (and b!4681400 d!1487951)))

(assert (=> bs!1082994 (= (= lt!1841024 lt!1841267) (= lambda!204968 lambda!204957))))

(assert (=> bs!1082993 (= lambda!204968 lambda!204959)))

(declare-fun bs!1082995 () Bool)

(assert (= bs!1082995 (and b!4681400 b!4681363)))

(assert (=> bs!1082995 (= lambda!204968 lambda!204958)))

(declare-fun bs!1082997 () Bool)

(assert (= bs!1082997 (and b!4681400 b!4681390)))

(assert (=> bs!1082997 (= (= lt!1841024 lt!1841350) (= lambda!204968 lambda!204966))))

(declare-fun bs!1082999 () Bool)

(assert (= bs!1082999 (and b!4681400 b!4681391)))

(assert (=> bs!1082999 (= lambda!204968 lambda!204964)))

(assert (=> bs!1082997 (= lambda!204968 lambda!204965)))

(declare-fun bs!1083001 () Bool)

(assert (= bs!1083001 (and b!4681400 d!1487967)))

(assert (=> bs!1083001 (= (= lt!1841024 lt!1841342) (= lambda!204968 lambda!204967))))

(declare-fun bs!1083003 () Bool)

(assert (= bs!1083003 (and b!4681400 b!4681336)))

(assert (=> bs!1083003 (= lambda!204968 lambda!204954)))

(declare-fun bs!1083004 () Bool)

(assert (= bs!1083004 (and b!4681400 b!4681324)))

(assert (=> bs!1083004 (= lambda!204968 lambda!204950)))

(declare-fun bs!1083005 () Bool)

(assert (= bs!1083005 (and b!4681400 b!4681325)))

(assert (=> bs!1083005 (= lambda!204968 lambda!204949)))

(assert (=> bs!1082991 (= (= lt!1841024 lt!1841275) (= lambda!204968 lambda!204956))))

(assert (=> bs!1083004 (= (= lt!1841024 lt!1841253) (= lambda!204968 lambda!204951))))

(declare-fun bs!1083006 () Bool)

(assert (= bs!1083006 (and b!4681400 d!1487957)))

(assert (=> bs!1083006 (= (= lt!1841024 lt!1841311) (= lambda!204968 lambda!204961))))

(assert (=> b!4681400 true))

(declare-fun bs!1083011 () Bool)

(declare-fun b!4681399 () Bool)

(assert (= bs!1083011 (and b!4681399 b!4681335)))

(declare-fun lambda!204971 () Int)

(assert (=> bs!1083011 (= lambda!204971 lambda!204955)))

(declare-fun bs!1083013 () Bool)

(assert (= bs!1083013 (and b!4681399 d!1487915)))

(assert (=> bs!1083013 (= (= lt!1841024 lt!1841245) (= lambda!204971 lambda!204953))))

(declare-fun bs!1083014 () Bool)

(assert (= bs!1083014 (and b!4681399 b!4681362)))

(assert (=> bs!1083014 (= (= lt!1841024 lt!1841319) (= lambda!204971 lambda!204960))))

(declare-fun bs!1083015 () Bool)

(assert (= bs!1083015 (and b!4681399 d!1487951)))

(assert (=> bs!1083015 (= (= lt!1841024 lt!1841267) (= lambda!204971 lambda!204957))))

(assert (=> bs!1083014 (= lambda!204971 lambda!204959)))

(declare-fun bs!1083016 () Bool)

(assert (= bs!1083016 (and b!4681399 b!4681363)))

(assert (=> bs!1083016 (= lambda!204971 lambda!204958)))

(declare-fun bs!1083017 () Bool)

(assert (= bs!1083017 (and b!4681399 b!4681390)))

(assert (=> bs!1083017 (= (= lt!1841024 lt!1841350) (= lambda!204971 lambda!204966))))

(declare-fun bs!1083018 () Bool)

(assert (= bs!1083018 (and b!4681399 b!4681391)))

(assert (=> bs!1083018 (= lambda!204971 lambda!204964)))

(assert (=> bs!1083017 (= lambda!204971 lambda!204965)))

(declare-fun bs!1083019 () Bool)

(assert (= bs!1083019 (and b!4681399 d!1487967)))

(assert (=> bs!1083019 (= (= lt!1841024 lt!1841342) (= lambda!204971 lambda!204967))))

(declare-fun bs!1083020 () Bool)

(assert (= bs!1083020 (and b!4681399 b!4681336)))

(assert (=> bs!1083020 (= lambda!204971 lambda!204954)))

(declare-fun bs!1083021 () Bool)

(assert (= bs!1083021 (and b!4681399 b!4681324)))

(assert (=> bs!1083021 (= lambda!204971 lambda!204950)))

(declare-fun bs!1083022 () Bool)

(assert (= bs!1083022 (and b!4681399 b!4681325)))

(assert (=> bs!1083022 (= lambda!204971 lambda!204949)))

(assert (=> bs!1083011 (= (= lt!1841024 lt!1841275) (= lambda!204971 lambda!204956))))

(declare-fun bs!1083023 () Bool)

(assert (= bs!1083023 (and b!4681399 d!1487879)))

(assert (=> bs!1083023 (not (= lambda!204971 lambda!204872))))

(declare-fun bs!1083024 () Bool)

(assert (= bs!1083024 (and b!4681399 b!4681400)))

(assert (=> bs!1083024 (= lambda!204971 lambda!204968)))

(assert (=> bs!1083021 (= (= lt!1841024 lt!1841253) (= lambda!204971 lambda!204951))))

(declare-fun bs!1083025 () Bool)

(assert (= bs!1083025 (and b!4681399 d!1487957)))

(assert (=> bs!1083025 (= (= lt!1841024 lt!1841311) (= lambda!204971 lambda!204961))))

(assert (=> b!4681399 true))

(declare-fun lambda!204973 () Int)

(declare-fun lt!1841382 () ListMap!4849)

(assert (=> bs!1083011 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204955))))

(assert (=> bs!1083013 (= (= lt!1841382 lt!1841245) (= lambda!204973 lambda!204953))))

(assert (=> bs!1083014 (= (= lt!1841382 lt!1841319) (= lambda!204973 lambda!204960))))

(assert (=> bs!1083015 (= (= lt!1841382 lt!1841267) (= lambda!204973 lambda!204957))))

(assert (=> bs!1083014 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204959))))

(assert (=> bs!1083016 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204958))))

(assert (=> bs!1083018 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204964))))

(assert (=> bs!1083017 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204965))))

(assert (=> bs!1083019 (= (= lt!1841382 lt!1841342) (= lambda!204973 lambda!204967))))

(assert (=> bs!1083020 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204954))))

(assert (=> bs!1083021 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204950))))

(assert (=> bs!1083022 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204949))))

(assert (=> bs!1083011 (= (= lt!1841382 lt!1841275) (= lambda!204973 lambda!204956))))

(assert (=> bs!1083023 (not (= lambda!204973 lambda!204872))))

(assert (=> bs!1083024 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204968))))

(assert (=> b!4681399 (= (= lt!1841382 lt!1841024) (= lambda!204973 lambda!204971))))

(assert (=> bs!1083017 (= (= lt!1841382 lt!1841350) (= lambda!204973 lambda!204966))))

(assert (=> bs!1083021 (= (= lt!1841382 lt!1841253) (= lambda!204973 lambda!204951))))

(assert (=> bs!1083025 (= (= lt!1841382 lt!1841311) (= lambda!204973 lambda!204961))))

(assert (=> b!4681399 true))

(declare-fun bs!1083032 () Bool)

(declare-fun d!1487973 () Bool)

(assert (= bs!1083032 (and d!1487973 b!4681335)))

(declare-fun lambda!204975 () Int)

(declare-fun lt!1841374 () ListMap!4849)

(assert (=> bs!1083032 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204955))))

(declare-fun bs!1083033 () Bool)

(assert (= bs!1083033 (and d!1487973 d!1487915)))

(assert (=> bs!1083033 (= (= lt!1841374 lt!1841245) (= lambda!204975 lambda!204953))))

(declare-fun bs!1083034 () Bool)

(assert (= bs!1083034 (and d!1487973 b!4681399)))

(assert (=> bs!1083034 (= (= lt!1841374 lt!1841382) (= lambda!204975 lambda!204973))))

(declare-fun bs!1083035 () Bool)

(assert (= bs!1083035 (and d!1487973 b!4681362)))

(assert (=> bs!1083035 (= (= lt!1841374 lt!1841319) (= lambda!204975 lambda!204960))))

(declare-fun bs!1083036 () Bool)

(assert (= bs!1083036 (and d!1487973 d!1487951)))

(assert (=> bs!1083036 (= (= lt!1841374 lt!1841267) (= lambda!204975 lambda!204957))))

(assert (=> bs!1083035 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204959))))

(declare-fun bs!1083037 () Bool)

(assert (= bs!1083037 (and d!1487973 b!4681363)))

(assert (=> bs!1083037 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204958))))

(declare-fun bs!1083038 () Bool)

(assert (= bs!1083038 (and d!1487973 b!4681391)))

(assert (=> bs!1083038 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204964))))

(declare-fun bs!1083039 () Bool)

(assert (= bs!1083039 (and d!1487973 b!4681390)))

(assert (=> bs!1083039 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204965))))

(declare-fun bs!1083040 () Bool)

(assert (= bs!1083040 (and d!1487973 d!1487967)))

(assert (=> bs!1083040 (= (= lt!1841374 lt!1841342) (= lambda!204975 lambda!204967))))

(declare-fun bs!1083041 () Bool)

(assert (= bs!1083041 (and d!1487973 b!4681336)))

(assert (=> bs!1083041 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204954))))

(declare-fun bs!1083042 () Bool)

(assert (= bs!1083042 (and d!1487973 b!4681324)))

(assert (=> bs!1083042 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204950))))

(declare-fun bs!1083043 () Bool)

(assert (= bs!1083043 (and d!1487973 b!4681325)))

(assert (=> bs!1083043 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204949))))

(assert (=> bs!1083032 (= (= lt!1841374 lt!1841275) (= lambda!204975 lambda!204956))))

(declare-fun bs!1083044 () Bool)

(assert (= bs!1083044 (and d!1487973 d!1487879)))

(assert (=> bs!1083044 (not (= lambda!204975 lambda!204872))))

(declare-fun bs!1083045 () Bool)

(assert (= bs!1083045 (and d!1487973 b!4681400)))

(assert (=> bs!1083045 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204968))))

(assert (=> bs!1083034 (= (= lt!1841374 lt!1841024) (= lambda!204975 lambda!204971))))

(assert (=> bs!1083039 (= (= lt!1841374 lt!1841350) (= lambda!204975 lambda!204966))))

(assert (=> bs!1083042 (= (= lt!1841374 lt!1841253) (= lambda!204975 lambda!204951))))

(declare-fun bs!1083047 () Bool)

(assert (= bs!1083047 (and d!1487973 d!1487957)))

(assert (=> bs!1083047 (= (= lt!1841374 lt!1841311) (= lambda!204975 lambda!204961))))

(assert (=> d!1487973 true))

(declare-fun b!4681396 () Bool)

(declare-fun res!1972930 () Bool)

(declare-fun e!2920768 () Bool)

(assert (=> b!4681396 (=> (not res!1972930) (not e!2920768))))

(assert (=> b!4681396 (= res!1972930 (forall!11236 (toList!5485 lt!1841024) lambda!204975))))

(declare-fun c!800756 () Bool)

(declare-fun bm!327209 () Bool)

(declare-fun call!327215 () Bool)

(assert (=> bm!327209 (= call!327215 (forall!11236 (ite c!800756 (toList!5485 lt!1841024) (t!359549 lt!1841031)) (ite c!800756 lambda!204968 lambda!204973)))))

(declare-fun b!4681397 () Bool)

(declare-fun e!2920769 () Bool)

(declare-fun call!327214 () Bool)

(assert (=> b!4681397 (= e!2920769 call!327214)))

(declare-fun b!4681398 () Bool)

(assert (=> b!4681398 (= e!2920768 (invariantList!1379 (toList!5485 lt!1841374)))))

(declare-fun bm!327211 () Bool)

(assert (=> bm!327211 (= call!327214 (forall!11236 (toList!5485 lt!1841024) (ite c!800756 lambda!204968 lambda!204973)))))

(declare-fun e!2920770 () ListMap!4849)

(assert (=> b!4681399 (= e!2920770 lt!1841382)))

(declare-fun lt!1841372 () ListMap!4849)

(assert (=> b!4681399 (= lt!1841372 (+!2100 lt!1841024 (h!58482 lt!1841031)))))

(assert (=> b!4681399 (= lt!1841382 (addToMapMapFromBucket!1230 (t!359549 lt!1841031) (+!2100 lt!1841024 (h!58482 lt!1841031))))))

(declare-fun lt!1841378 () Unit!122749)

(declare-fun call!327216 () Unit!122749)

(assert (=> b!4681399 (= lt!1841378 call!327216)))

(assert (=> b!4681399 (forall!11236 (toList!5485 lt!1841024) lambda!204971)))

(declare-fun lt!1841385 () Unit!122749)

(assert (=> b!4681399 (= lt!1841385 lt!1841378)))

(assert (=> b!4681399 (forall!11236 (toList!5485 lt!1841372) lambda!204973)))

(declare-fun lt!1841370 () Unit!122749)

(declare-fun Unit!122838 () Unit!122749)

(assert (=> b!4681399 (= lt!1841370 Unit!122838)))

(assert (=> b!4681399 call!327215))

(declare-fun lt!1841369 () Unit!122749)

(declare-fun Unit!122839 () Unit!122749)

(assert (=> b!4681399 (= lt!1841369 Unit!122839)))

(declare-fun lt!1841379 () Unit!122749)

(declare-fun Unit!122840 () Unit!122749)

(assert (=> b!4681399 (= lt!1841379 Unit!122840)))

(declare-fun lt!1841387 () Unit!122749)

(assert (=> b!4681399 (= lt!1841387 (forallContained!3352 (toList!5485 lt!1841372) lambda!204973 (h!58482 lt!1841031)))))

(assert (=> b!4681399 (contains!15398 lt!1841372 (_1!30087 (h!58482 lt!1841031)))))

(declare-fun lt!1841373 () Unit!122749)

(declare-fun Unit!122841 () Unit!122749)

(assert (=> b!4681399 (= lt!1841373 Unit!122841)))

(assert (=> b!4681399 (contains!15398 lt!1841382 (_1!30087 (h!58482 lt!1841031)))))

(declare-fun lt!1841383 () Unit!122749)

(declare-fun Unit!122842 () Unit!122749)

(assert (=> b!4681399 (= lt!1841383 Unit!122842)))

(assert (=> b!4681399 (forall!11236 lt!1841031 lambda!204973)))

(declare-fun lt!1841386 () Unit!122749)

(declare-fun Unit!122843 () Unit!122749)

(assert (=> b!4681399 (= lt!1841386 Unit!122843)))

(assert (=> b!4681399 (forall!11236 (toList!5485 lt!1841372) lambda!204973)))

(declare-fun lt!1841371 () Unit!122749)

(declare-fun Unit!122844 () Unit!122749)

(assert (=> b!4681399 (= lt!1841371 Unit!122844)))

(declare-fun lt!1841376 () Unit!122749)

(declare-fun Unit!122845 () Unit!122749)

(assert (=> b!4681399 (= lt!1841376 Unit!122845)))

(declare-fun lt!1841377 () Unit!122749)

(assert (=> b!4681399 (= lt!1841377 (addForallContainsKeyThenBeforeAdding!667 lt!1841024 lt!1841382 (_1!30087 (h!58482 lt!1841031)) (_2!30087 (h!58482 lt!1841031))))))

(assert (=> b!4681399 (forall!11236 (toList!5485 lt!1841024) lambda!204973)))

(declare-fun lt!1841368 () Unit!122749)

(assert (=> b!4681399 (= lt!1841368 lt!1841377)))

(assert (=> b!4681399 (forall!11236 (toList!5485 lt!1841024) lambda!204973)))

(declare-fun lt!1841375 () Unit!122749)

(declare-fun Unit!122846 () Unit!122749)

(assert (=> b!4681399 (= lt!1841375 Unit!122846)))

(declare-fun res!1972928 () Bool)

(assert (=> b!4681399 (= res!1972928 (forall!11236 lt!1841031 lambda!204973))))

(assert (=> b!4681399 (=> (not res!1972928) (not e!2920769))))

(assert (=> b!4681399 e!2920769))

(declare-fun lt!1841384 () Unit!122749)

(declare-fun Unit!122847 () Unit!122749)

(assert (=> b!4681399 (= lt!1841384 Unit!122847)))

(assert (=> b!4681400 (= e!2920770 lt!1841024)))

(declare-fun lt!1841381 () Unit!122749)

(assert (=> b!4681400 (= lt!1841381 call!327216)))

(assert (=> b!4681400 call!327215))

(declare-fun lt!1841388 () Unit!122749)

(assert (=> b!4681400 (= lt!1841388 lt!1841381)))

(assert (=> b!4681400 call!327214))

(declare-fun lt!1841380 () Unit!122749)

(declare-fun Unit!122848 () Unit!122749)

(assert (=> b!4681400 (= lt!1841380 Unit!122848)))

(assert (=> d!1487973 e!2920768))

(declare-fun res!1972929 () Bool)

(assert (=> d!1487973 (=> (not res!1972929) (not e!2920768))))

(assert (=> d!1487973 (= res!1972929 (forall!11236 lt!1841031 lambda!204975))))

(assert (=> d!1487973 (= lt!1841374 e!2920770)))

(assert (=> d!1487973 (= c!800756 ((_ is Nil!52267) lt!1841031))))

(assert (=> d!1487973 (noDuplicateKeys!1798 lt!1841031)))

(assert (=> d!1487973 (= (addToMapMapFromBucket!1230 lt!1841031 lt!1841024) lt!1841374)))

(declare-fun bm!327210 () Bool)

(assert (=> bm!327210 (= call!327216 (lemmaContainsAllItsOwnKeys!668 lt!1841024))))

(assert (= (and d!1487973 c!800756) b!4681400))

(assert (= (and d!1487973 (not c!800756)) b!4681399))

(assert (= (and b!4681399 res!1972928) b!4681397))

(assert (= (or b!4681400 b!4681399) bm!327210))

(assert (= (or b!4681400 b!4681399) bm!327209))

(assert (= (or b!4681400 b!4681397) bm!327211))

(assert (= (and d!1487973 res!1972929) b!4681396))

(assert (= (and b!4681396 res!1972930) b!4681398))

(declare-fun m!5579235 () Bool)

(assert (=> b!4681399 m!5579235))

(declare-fun m!5579237 () Bool)

(assert (=> b!4681399 m!5579237))

(declare-fun m!5579239 () Bool)

(assert (=> b!4681399 m!5579239))

(declare-fun m!5579241 () Bool)

(assert (=> b!4681399 m!5579241))

(declare-fun m!5579243 () Bool)

(assert (=> b!4681399 m!5579243))

(assert (=> b!4681399 m!5579235))

(declare-fun m!5579245 () Bool)

(assert (=> b!4681399 m!5579245))

(declare-fun m!5579247 () Bool)

(assert (=> b!4681399 m!5579247))

(assert (=> b!4681399 m!5579241))

(declare-fun m!5579249 () Bool)

(assert (=> b!4681399 m!5579249))

(declare-fun m!5579251 () Bool)

(assert (=> b!4681399 m!5579251))

(assert (=> b!4681399 m!5579243))

(assert (=> b!4681399 m!5579245))

(declare-fun m!5579253 () Bool)

(assert (=> b!4681399 m!5579253))

(declare-fun m!5579255 () Bool)

(assert (=> bm!327211 m!5579255))

(declare-fun m!5579257 () Bool)

(assert (=> b!4681396 m!5579257))

(declare-fun m!5579259 () Bool)

(assert (=> b!4681398 m!5579259))

(assert (=> bm!327210 m!5579021))

(declare-fun m!5579261 () Bool)

(assert (=> bm!327209 m!5579261))

(declare-fun m!5579263 () Bool)

(assert (=> d!1487973 m!5579263))

(assert (=> d!1487973 m!5578897))

(assert (=> b!4681187 d!1487973))

(declare-fun d!1487979 () Bool)

(assert (=> d!1487979 (= (eq!987 lt!1841025 lt!1841036) (= (content!9115 (toList!5485 lt!1841025)) (content!9115 (toList!5485 lt!1841036))))))

(declare-fun bs!1083062 () Bool)

(assert (= bs!1083062 d!1487979))

(declare-fun m!5579265 () Bool)

(assert (=> bs!1083062 m!5579265))

(assert (=> bs!1083062 m!5578697))

(assert (=> b!4681177 d!1487979))

(declare-fun d!1487981 () Bool)

(declare-fun res!1972941 () Bool)

(declare-fun e!2920781 () Bool)

(assert (=> d!1487981 (=> res!1972941 e!2920781)))

(assert (=> d!1487981 (= res!1972941 (not ((_ is Cons!52267) newBucket!218)))))

(assert (=> d!1487981 (= (noDuplicateKeys!1798 newBucket!218) e!2920781)))

(declare-fun b!4681415 () Bool)

(declare-fun e!2920782 () Bool)

(assert (=> b!4681415 (= e!2920781 e!2920782)))

(declare-fun res!1972942 () Bool)

(assert (=> b!4681415 (=> (not res!1972942) (not e!2920782))))

(assert (=> b!4681415 (= res!1972942 (not (containsKey!2947 (t!359549 newBucket!218) (_1!30087 (h!58482 newBucket!218)))))))

(declare-fun b!4681416 () Bool)

(assert (=> b!4681416 (= e!2920782 (noDuplicateKeys!1798 (t!359549 newBucket!218)))))

(assert (= (and d!1487981 (not res!1972941)) b!4681415))

(assert (= (and b!4681415 res!1972942) b!4681416))

(declare-fun m!5579267 () Bool)

(assert (=> b!4681415 m!5579267))

(declare-fun m!5579269 () Bool)

(assert (=> b!4681416 m!5579269))

(assert (=> b!4681178 d!1487981))

(declare-fun d!1487983 () Bool)

(declare-fun res!1972943 () Bool)

(declare-fun e!2920783 () Bool)

(assert (=> d!1487983 (=> res!1972943 e!2920783)))

(assert (=> d!1487983 (= res!1972943 (not ((_ is Cons!52267) oldBucket!34)))))

(assert (=> d!1487983 (= (noDuplicateKeys!1798 oldBucket!34) e!2920783)))

(declare-fun b!4681417 () Bool)

(declare-fun e!2920784 () Bool)

(assert (=> b!4681417 (= e!2920783 e!2920784)))

(declare-fun res!1972944 () Bool)

(assert (=> b!4681417 (=> (not res!1972944) (not e!2920784))))

(assert (=> b!4681417 (= res!1972944 (not (containsKey!2947 (t!359549 oldBucket!34) (_1!30087 (h!58482 oldBucket!34)))))))

(declare-fun b!4681418 () Bool)

(assert (=> b!4681418 (= e!2920784 (noDuplicateKeys!1798 (t!359549 oldBucket!34)))))

(assert (= (and d!1487983 (not res!1972943)) b!4681417))

(assert (= (and b!4681417 res!1972944) b!4681418))

(declare-fun m!5579271 () Bool)

(assert (=> b!4681417 m!5579271))

(declare-fun m!5579273 () Bool)

(assert (=> b!4681418 m!5579273))

(assert (=> b!4681179 d!1487983))

(declare-fun d!1487985 () Bool)

(declare-fun res!1972949 () Bool)

(declare-fun e!2920789 () Bool)

(assert (=> d!1487985 (=> res!1972949 e!2920789)))

(assert (=> d!1487985 (= res!1972949 (and ((_ is Cons!52267) lt!1841031) (= (_1!30087 (h!58482 lt!1841031)) key!4653)))))

(assert (=> d!1487985 (= (containsKey!2947 lt!1841031 key!4653) e!2920789)))

(declare-fun b!4681423 () Bool)

(declare-fun e!2920790 () Bool)

(assert (=> b!4681423 (= e!2920789 e!2920790)))

(declare-fun res!1972950 () Bool)

(assert (=> b!4681423 (=> (not res!1972950) (not e!2920790))))

(assert (=> b!4681423 (= res!1972950 ((_ is Cons!52267) lt!1841031))))

(declare-fun b!4681424 () Bool)

(assert (=> b!4681424 (= e!2920790 (containsKey!2947 (t!359549 lt!1841031) key!4653))))

(assert (= (and d!1487985 (not res!1972949)) b!4681423))

(assert (= (and b!4681423 res!1972950) b!4681424))

(declare-fun m!5579303 () Bool)

(assert (=> b!4681424 m!5579303))

(assert (=> b!4681190 d!1487985))

(declare-fun d!1487987 () Bool)

(assert (=> d!1487987 (= (eq!987 lt!1841029 lt!1841023) (= (content!9115 (toList!5485 lt!1841029)) (content!9115 (toList!5485 lt!1841023))))))

(declare-fun bs!1083072 () Bool)

(assert (= bs!1083072 d!1487987))

(assert (=> bs!1083072 m!5578871))

(declare-fun m!5579311 () Bool)

(assert (=> bs!1083072 m!5579311))

(assert (=> b!4681180 d!1487987))

(declare-fun bs!1083075 () Bool)

(declare-fun d!1487991 () Bool)

(assert (= bs!1083075 (and d!1487991 d!1487963)))

(declare-fun lambda!204980 () Int)

(assert (=> bs!1083075 (= lambda!204980 lambda!204963)))

(declare-fun bs!1083076 () Bool)

(assert (= bs!1083076 (and d!1487991 d!1487891)))

(assert (=> bs!1083076 (= lambda!204980 lambda!204876)))

(declare-fun bs!1083077 () Bool)

(assert (= bs!1083077 (and d!1487991 d!1487901)))

(assert (=> bs!1083077 (= lambda!204980 lambda!204879)))

(declare-fun bs!1083078 () Bool)

(assert (= bs!1083078 (and d!1487991 d!1487903)))

(assert (=> bs!1083078 (not (= lambda!204980 lambda!204882))))

(declare-fun bs!1083079 () Bool)

(assert (= bs!1083079 (and d!1487991 start!472732)))

(assert (=> bs!1083079 (= lambda!204980 lambda!204869)))

(declare-fun bs!1083080 () Bool)

(assert (= bs!1083080 (and d!1487991 d!1487881)))

(assert (=> bs!1083080 (= lambda!204980 lambda!204875)))

(declare-fun lt!1841431 () ListMap!4849)

(assert (=> d!1487991 (invariantList!1379 (toList!5485 lt!1841431))))

(declare-fun e!2920791 () ListMap!4849)

(assert (=> d!1487991 (= lt!1841431 e!2920791)))

(declare-fun c!800759 () Bool)

(assert (=> d!1487991 (= c!800759 ((_ is Cons!52268) (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023)))))))

(assert (=> d!1487991 (forall!11235 (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023))) lambda!204980)))

(assert (=> d!1487991 (= (extractMap!1824 (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023)))) lt!1841431)))

(declare-fun b!4681425 () Bool)

(assert (=> b!4681425 (= e!2920791 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023))))) (extractMap!1824 (t!359550 (Cons!52268 lt!1841028 (t!359550 (toList!5486 lm!2023)))))))))

(declare-fun b!4681426 () Bool)

(assert (=> b!4681426 (= e!2920791 (ListMap!4850 Nil!52267))))

(assert (= (and d!1487991 c!800759) b!4681425))

(assert (= (and d!1487991 (not c!800759)) b!4681426))

(declare-fun m!5579319 () Bool)

(assert (=> d!1487991 m!5579319))

(declare-fun m!5579321 () Bool)

(assert (=> d!1487991 m!5579321))

(declare-fun m!5579323 () Bool)

(assert (=> b!4681425 m!5579323))

(assert (=> b!4681425 m!5579323))

(declare-fun m!5579325 () Bool)

(assert (=> b!4681425 m!5579325))

(assert (=> b!4681180 d!1487991))

(declare-fun d!1487999 () Bool)

(declare-fun res!1972961 () Bool)

(declare-fun e!2920808 () Bool)

(assert (=> d!1487999 (=> res!1972961 e!2920808)))

(assert (=> d!1487999 (= res!1972961 ((_ is Nil!52268) (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023)))))))

(assert (=> d!1487999 (= (forall!11235 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023))) lambda!204869) e!2920808)))

(declare-fun b!4681449 () Bool)

(declare-fun e!2920809 () Bool)

(assert (=> b!4681449 (= e!2920808 e!2920809)))

(declare-fun res!1972962 () Bool)

(assert (=> b!4681449 (=> (not res!1972962) (not e!2920809))))

(declare-fun dynLambda!21683 (Int tuple2!53588) Bool)

(assert (=> b!4681449 (= res!1972962 (dynLambda!21683 lambda!204869 (h!58483 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023))))))))

(declare-fun b!4681450 () Bool)

(assert (=> b!4681450 (= e!2920809 (forall!11235 (t!359550 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023)))) lambda!204869))))

(assert (= (and d!1487999 (not res!1972961)) b!4681449))

(assert (= (and b!4681449 res!1972962) b!4681450))

(declare-fun b_lambda!176697 () Bool)

(assert (=> (not b_lambda!176697) (not b!4681449)))

(declare-fun m!5579367 () Bool)

(assert (=> b!4681449 m!5579367))

(declare-fun m!5579369 () Bool)

(assert (=> b!4681450 m!5579369))

(assert (=> b!4681181 d!1487999))

(declare-fun d!1488005 () Bool)

(assert (=> d!1488005 (= (tail!8461 (toList!5486 lm!2023)) (t!359550 (toList!5486 lm!2023)))))

(assert (=> b!4681181 d!1488005))

(declare-fun bs!1083081 () Bool)

(declare-fun d!1488007 () Bool)

(assert (= bs!1083081 (and d!1488007 b!4681335)))

(declare-fun lambda!204981 () Int)

(assert (=> bs!1083081 (not (= lambda!204981 lambda!204955))))

(declare-fun bs!1083082 () Bool)

(assert (= bs!1083082 (and d!1488007 d!1487915)))

(assert (=> bs!1083082 (not (= lambda!204981 lambda!204953))))

(declare-fun bs!1083083 () Bool)

(assert (= bs!1083083 (and d!1488007 b!4681399)))

(assert (=> bs!1083083 (not (= lambda!204981 lambda!204973))))

(declare-fun bs!1083084 () Bool)

(assert (= bs!1083084 (and d!1488007 b!4681362)))

(assert (=> bs!1083084 (not (= lambda!204981 lambda!204960))))

(declare-fun bs!1083085 () Bool)

(assert (= bs!1083085 (and d!1488007 d!1487951)))

(assert (=> bs!1083085 (not (= lambda!204981 lambda!204957))))

(assert (=> bs!1083084 (not (= lambda!204981 lambda!204959))))

(declare-fun bs!1083086 () Bool)

(assert (= bs!1083086 (and d!1488007 b!4681363)))

(assert (=> bs!1083086 (not (= lambda!204981 lambda!204958))))

(declare-fun bs!1083087 () Bool)

(assert (= bs!1083087 (and d!1488007 b!4681391)))

(assert (=> bs!1083087 (not (= lambda!204981 lambda!204964))))

(declare-fun bs!1083088 () Bool)

(assert (= bs!1083088 (and d!1488007 b!4681390)))

(assert (=> bs!1083088 (not (= lambda!204981 lambda!204965))))

(declare-fun bs!1083089 () Bool)

(assert (= bs!1083089 (and d!1488007 d!1487967)))

(assert (=> bs!1083089 (not (= lambda!204981 lambda!204967))))

(declare-fun bs!1083090 () Bool)

(assert (= bs!1083090 (and d!1488007 b!4681336)))

(assert (=> bs!1083090 (not (= lambda!204981 lambda!204954))))

(declare-fun bs!1083091 () Bool)

(assert (= bs!1083091 (and d!1488007 b!4681324)))

(assert (=> bs!1083091 (not (= lambda!204981 lambda!204950))))

(declare-fun bs!1083092 () Bool)

(assert (= bs!1083092 (and d!1488007 b!4681325)))

(assert (=> bs!1083092 (not (= lambda!204981 lambda!204949))))

(assert (=> bs!1083081 (not (= lambda!204981 lambda!204956))))

(declare-fun bs!1083093 () Bool)

(assert (= bs!1083093 (and d!1488007 d!1487879)))

(assert (=> bs!1083093 (= lambda!204981 lambda!204872)))

(declare-fun bs!1083094 () Bool)

(assert (= bs!1083094 (and d!1488007 b!4681400)))

(assert (=> bs!1083094 (not (= lambda!204981 lambda!204968))))

(assert (=> bs!1083083 (not (= lambda!204981 lambda!204971))))

(assert (=> bs!1083088 (not (= lambda!204981 lambda!204966))))

(assert (=> bs!1083091 (not (= lambda!204981 lambda!204951))))

(declare-fun bs!1083095 () Bool)

(assert (= bs!1083095 (and d!1488007 d!1487973)))

(assert (=> bs!1083095 (not (= lambda!204981 lambda!204975))))

(declare-fun bs!1083096 () Bool)

(assert (= bs!1083096 (and d!1488007 d!1487957)))

(assert (=> bs!1083096 (not (= lambda!204981 lambda!204961))))

(assert (=> d!1488007 true))

(assert (=> d!1488007 true))

(assert (=> d!1488007 (= (allKeysSameHash!1624 newBucket!218 hash!405 hashF!1323) (forall!11236 newBucket!218 lambda!204981))))

(declare-fun bs!1083097 () Bool)

(assert (= bs!1083097 d!1488007))

(declare-fun m!5579371 () Bool)

(assert (=> bs!1083097 m!5579371))

(assert (=> b!4681192 d!1488007))

(declare-fun b!4681451 () Bool)

(declare-fun e!2920812 () Unit!122749)

(declare-fun lt!1841455 () Unit!122749)

(assert (=> b!4681451 (= e!2920812 lt!1841455)))

(declare-fun lt!1841450 () Unit!122749)

(assert (=> b!4681451 (= lt!1841450 (lemmaContainsKeyImpliesGetValueByKeyDefined!1614 (toList!5485 lt!1841037) key!4653))))

(assert (=> b!4681451 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841037) key!4653))))

(declare-fun lt!1841448 () Unit!122749)

(assert (=> b!4681451 (= lt!1841448 lt!1841450)))

(assert (=> b!4681451 (= lt!1841455 (lemmaInListThenGetKeysListContains!814 (toList!5485 lt!1841037) key!4653))))

(declare-fun call!327225 () Bool)

(assert (=> b!4681451 call!327225))

(declare-fun b!4681452 () Bool)

(declare-fun e!2920810 () Unit!122749)

(assert (=> b!4681452 (= e!2920812 e!2920810)))

(declare-fun c!800767 () Bool)

(assert (=> b!4681452 (= c!800767 call!327225)))

(declare-fun b!4681453 () Bool)

(declare-fun e!2920814 () List!52393)

(assert (=> b!4681453 (= e!2920814 (keys!18626 lt!1841037))))

(declare-fun b!4681454 () Bool)

(declare-fun e!2920811 () Bool)

(assert (=> b!4681454 (= e!2920811 (contains!15400 (keys!18626 lt!1841037) key!4653))))

(declare-fun b!4681455 () Bool)

(assert (=> b!4681455 (= e!2920814 (getKeysList!819 (toList!5485 lt!1841037)))))

(declare-fun d!1488009 () Bool)

(declare-fun e!2920815 () Bool)

(assert (=> d!1488009 e!2920815))

(declare-fun res!1972964 () Bool)

(assert (=> d!1488009 (=> res!1972964 e!2920815)))

(declare-fun e!2920813 () Bool)

(assert (=> d!1488009 (= res!1972964 e!2920813)))

(declare-fun res!1972965 () Bool)

(assert (=> d!1488009 (=> (not res!1972965) (not e!2920813))))

(declare-fun lt!1841452 () Bool)

(assert (=> d!1488009 (= res!1972965 (not lt!1841452))))

(declare-fun lt!1841454 () Bool)

(assert (=> d!1488009 (= lt!1841452 lt!1841454)))

(declare-fun lt!1841453 () Unit!122749)

(assert (=> d!1488009 (= lt!1841453 e!2920812)))

(declare-fun c!800766 () Bool)

(assert (=> d!1488009 (= c!800766 lt!1841454)))

(assert (=> d!1488009 (= lt!1841454 (containsKey!2948 (toList!5485 lt!1841037) key!4653))))

(assert (=> d!1488009 (= (contains!15398 lt!1841037 key!4653) lt!1841452)))

(declare-fun bm!327220 () Bool)

(assert (=> bm!327220 (= call!327225 (contains!15400 e!2920814 key!4653))))

(declare-fun c!800768 () Bool)

(assert (=> bm!327220 (= c!800768 c!800766)))

(declare-fun b!4681456 () Bool)

(declare-fun Unit!122850 () Unit!122749)

(assert (=> b!4681456 (= e!2920810 Unit!122850)))

(declare-fun b!4681457 () Bool)

(assert (=> b!4681457 (= e!2920815 e!2920811)))

(declare-fun res!1972963 () Bool)

(assert (=> b!4681457 (=> (not res!1972963) (not e!2920811))))

(assert (=> b!4681457 (= res!1972963 (isDefined!9229 (getValueByKey!1722 (toList!5485 lt!1841037) key!4653)))))

(declare-fun b!4681458 () Bool)

(assert (=> b!4681458 (= e!2920813 (not (contains!15400 (keys!18626 lt!1841037) key!4653)))))

(declare-fun b!4681459 () Bool)

(assert (=> b!4681459 false))

(declare-fun lt!1841449 () Unit!122749)

(declare-fun lt!1841451 () Unit!122749)

(assert (=> b!4681459 (= lt!1841449 lt!1841451)))

(assert (=> b!4681459 (containsKey!2948 (toList!5485 lt!1841037) key!4653)))

(assert (=> b!4681459 (= lt!1841451 (lemmaInGetKeysListThenContainsKey!818 (toList!5485 lt!1841037) key!4653))))

(declare-fun Unit!122855 () Unit!122749)

(assert (=> b!4681459 (= e!2920810 Unit!122855)))

(assert (= (and d!1488009 c!800766) b!4681451))

(assert (= (and d!1488009 (not c!800766)) b!4681452))

(assert (= (and b!4681452 c!800767) b!4681459))

(assert (= (and b!4681452 (not c!800767)) b!4681456))

(assert (= (or b!4681451 b!4681452) bm!327220))

(assert (= (and bm!327220 c!800768) b!4681455))

(assert (= (and bm!327220 (not c!800768)) b!4681453))

(assert (= (and d!1488009 res!1972965) b!4681458))

(assert (= (and d!1488009 (not res!1972964)) b!4681457))

(assert (= (and b!4681457 res!1972963) b!4681454))

(declare-fun m!5579373 () Bool)

(assert (=> b!4681453 m!5579373))

(declare-fun m!5579375 () Bool)

(assert (=> b!4681455 m!5579375))

(assert (=> b!4681454 m!5579373))

(assert (=> b!4681454 m!5579373))

(declare-fun m!5579377 () Bool)

(assert (=> b!4681454 m!5579377))

(declare-fun m!5579379 () Bool)

(assert (=> bm!327220 m!5579379))

(declare-fun m!5579381 () Bool)

(assert (=> b!4681451 m!5579381))

(declare-fun m!5579383 () Bool)

(assert (=> b!4681451 m!5579383))

(assert (=> b!4681451 m!5579383))

(declare-fun m!5579385 () Bool)

(assert (=> b!4681451 m!5579385))

(declare-fun m!5579387 () Bool)

(assert (=> b!4681451 m!5579387))

(declare-fun m!5579389 () Bool)

(assert (=> d!1488009 m!5579389))

(assert (=> b!4681459 m!5579389))

(declare-fun m!5579391 () Bool)

(assert (=> b!4681459 m!5579391))

(assert (=> b!4681457 m!5579383))

(assert (=> b!4681457 m!5579383))

(assert (=> b!4681457 m!5579385))

(assert (=> b!4681458 m!5579373))

(assert (=> b!4681458 m!5579373))

(assert (=> b!4681458 m!5579377))

(assert (=> b!4681182 d!1488009))

(declare-fun bs!1083098 () Bool)

(declare-fun d!1488011 () Bool)

(assert (= bs!1083098 (and d!1488011 d!1487963)))

(declare-fun lambda!204982 () Int)

(assert (=> bs!1083098 (= lambda!204982 lambda!204963)))

(declare-fun bs!1083099 () Bool)

(assert (= bs!1083099 (and d!1488011 d!1487991)))

(assert (=> bs!1083099 (= lambda!204982 lambda!204980)))

(declare-fun bs!1083100 () Bool)

(assert (= bs!1083100 (and d!1488011 d!1487891)))

(assert (=> bs!1083100 (= lambda!204982 lambda!204876)))

(declare-fun bs!1083101 () Bool)

(assert (= bs!1083101 (and d!1488011 d!1487901)))

(assert (=> bs!1083101 (= lambda!204982 lambda!204879)))

(declare-fun bs!1083102 () Bool)

(assert (= bs!1083102 (and d!1488011 d!1487903)))

(assert (=> bs!1083102 (not (= lambda!204982 lambda!204882))))

(declare-fun bs!1083103 () Bool)

(assert (= bs!1083103 (and d!1488011 start!472732)))

(assert (=> bs!1083103 (= lambda!204982 lambda!204869)))

(declare-fun bs!1083104 () Bool)

(assert (= bs!1083104 (and d!1488011 d!1487881)))

(assert (=> bs!1083104 (= lambda!204982 lambda!204875)))

(declare-fun lt!1841456 () ListMap!4849)

(assert (=> d!1488011 (invariantList!1379 (toList!5485 lt!1841456))))

(declare-fun e!2920816 () ListMap!4849)

(assert (=> d!1488011 (= lt!1841456 e!2920816)))

(declare-fun c!800769 () Bool)

(assert (=> d!1488011 (= c!800769 ((_ is Cons!52268) (toList!5486 lm!2023)))))

(assert (=> d!1488011 (forall!11235 (toList!5486 lm!2023) lambda!204982)))

(assert (=> d!1488011 (= (extractMap!1824 (toList!5486 lm!2023)) lt!1841456)))

(declare-fun b!4681460 () Bool)

(assert (=> b!4681460 (= e!2920816 (addToMapMapFromBucket!1230 (_2!30088 (h!58483 (toList!5486 lm!2023))) (extractMap!1824 (t!359550 (toList!5486 lm!2023)))))))

(declare-fun b!4681461 () Bool)

(assert (=> b!4681461 (= e!2920816 (ListMap!4850 Nil!52267))))

(assert (= (and d!1488011 c!800769) b!4681460))

(assert (= (and d!1488011 (not c!800769)) b!4681461))

(declare-fun m!5579393 () Bool)

(assert (=> d!1488011 m!5579393))

(declare-fun m!5579395 () Bool)

(assert (=> d!1488011 m!5579395))

(assert (=> b!4681460 m!5578663))

(assert (=> b!4681460 m!5578663))

(declare-fun m!5579397 () Bool)

(assert (=> b!4681460 m!5579397))

(assert (=> b!4681182 d!1488011))

(declare-fun d!1488013 () Bool)

(declare-fun res!1972966 () Bool)

(declare-fun e!2920817 () Bool)

(assert (=> d!1488013 (=> res!1972966 e!2920817)))

(assert (=> d!1488013 (= res!1972966 ((_ is Nil!52268) (toList!5486 lm!2023)))))

(assert (=> d!1488013 (= (forall!11235 (toList!5486 lm!2023) lambda!204869) e!2920817)))

(declare-fun b!4681462 () Bool)

(declare-fun e!2920818 () Bool)

(assert (=> b!4681462 (= e!2920817 e!2920818)))

(declare-fun res!1972967 () Bool)

(assert (=> b!4681462 (=> (not res!1972967) (not e!2920818))))

(assert (=> b!4681462 (= res!1972967 (dynLambda!21683 lambda!204869 (h!58483 (toList!5486 lm!2023))))))

(declare-fun b!4681463 () Bool)

(assert (=> b!4681463 (= e!2920818 (forall!11235 (t!359550 (toList!5486 lm!2023)) lambda!204869))))

(assert (= (and d!1488013 (not res!1972966)) b!4681462))

(assert (= (and b!4681462 res!1972967) b!4681463))

(declare-fun b_lambda!176699 () Bool)

(assert (=> (not b_lambda!176699) (not b!4681462)))

(declare-fun m!5579399 () Bool)

(assert (=> b!4681462 m!5579399))

(declare-fun m!5579401 () Bool)

(assert (=> b!4681463 m!5579401))

(assert (=> start!472732 d!1488013))

(declare-fun d!1488015 () Bool)

(declare-fun isStrictlySorted!620 (List!52392) Bool)

(assert (=> d!1488015 (= (inv!67519 lm!2023) (isStrictlySorted!620 (toList!5486 lm!2023)))))

(declare-fun bs!1083105 () Bool)

(assert (= bs!1083105 d!1488015))

(declare-fun m!5579403 () Bool)

(assert (=> bs!1083105 m!5579403))

(assert (=> start!472732 d!1488015))

(declare-fun b!4681468 () Bool)

(declare-fun e!2920821 () Bool)

(declare-fun tp!1345116 () Bool)

(assert (=> b!4681468 (= e!2920821 (and tp_is_empty!30485 tp_is_empty!30487 tp!1345116))))

(assert (=> b!4681188 (= tp!1345111 e!2920821)))

(assert (= (and b!4681188 ((_ is Cons!52267) (t!359549 oldBucket!34))) b!4681468))

(declare-fun e!2920822 () Bool)

(declare-fun tp!1345117 () Bool)

(declare-fun b!4681469 () Bool)

(assert (=> b!4681469 (= e!2920822 (and tp_is_empty!30485 tp_is_empty!30487 tp!1345117))))

(assert (=> b!4681189 (= tp!1345113 e!2920822)))

(assert (= (and b!4681189 ((_ is Cons!52267) (t!359549 newBucket!218))) b!4681469))

(declare-fun b!4681474 () Bool)

(declare-fun e!2920825 () Bool)

(declare-fun tp!1345122 () Bool)

(declare-fun tp!1345123 () Bool)

(assert (=> b!4681474 (= e!2920825 (and tp!1345122 tp!1345123))))

(assert (=> b!4681191 (= tp!1345112 e!2920825)))

(assert (= (and b!4681191 ((_ is Cons!52268) (toList!5486 lm!2023))) b!4681474))

(declare-fun b_lambda!176701 () Bool)

(assert (= b_lambda!176697 (or start!472732 b_lambda!176701)))

(declare-fun bs!1083106 () Bool)

(declare-fun d!1488017 () Bool)

(assert (= bs!1083106 (and d!1488017 start!472732)))

(assert (=> bs!1083106 (= (dynLambda!21683 lambda!204869 (h!58483 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023))))) (noDuplicateKeys!1798 (_2!30088 (h!58483 (Cons!52268 lt!1841034 (tail!8461 (toList!5486 lm!2023)))))))))

(declare-fun m!5579405 () Bool)

(assert (=> bs!1083106 m!5579405))

(assert (=> b!4681449 d!1488017))

(declare-fun b_lambda!176703 () Bool)

(assert (= b_lambda!176699 (or start!472732 b_lambda!176703)))

(declare-fun bs!1083107 () Bool)

(declare-fun d!1488019 () Bool)

(assert (= bs!1083107 (and d!1488019 start!472732)))

(assert (=> bs!1083107 (= (dynLambda!21683 lambda!204869 (h!58483 (toList!5486 lm!2023))) (noDuplicateKeys!1798 (_2!30088 (h!58483 (toList!5486 lm!2023)))))))

(assert (=> bs!1083107 m!5579131))

(assert (=> b!4681462 d!1488019))

(check-sat (not b!4681468) (not b!4681207) (not b!4681459) (not bm!327199) (not b!4681255) (not bm!327210) (not b!4681335) (not d!1487905) (not b!4681451) (not b!4681424) (not bm!327202) (not b!4681324) (not d!1487891) (not bm!327200) (not d!1487955) (not bs!1083107) (not d!1487907) (not b!4681251) (not d!1487951) (not b!4681389) (not b_lambda!176703) (not d!1487909) (not b!4681415) (not b!4681453) (not b!4681223) (not b!4681387) (not b!4681454) (not b!4681418) (not b!4681201) (not d!1487973) tp_is_empty!30485 (not d!1487873) (not bm!327195) (not bm!327209) (not b!4681450) (not b!4681208) (not d!1487881) (not b!4681362) (not b!4681463) (not b!4681253) (not b!4681457) (not d!1487913) (not b!4681417) (not d!1488009) (not d!1487861) (not b_lambda!176701) (not bs!1083106) (not b!4681474) (not b!4681458) (not b!4681390) (not d!1487901) (not d!1487865) (not d!1488011) tp_is_empty!30487 (not d!1487877) (not bm!327198) (not bm!327207) (not d!1487871) (not b!4681399) (not d!1487859) (not bm!327201) (not b!4681396) (not bm!327206) (not b!4681469) (not d!1488015) (not d!1487893) (not b!4681257) (not b!4681200) (not b!4681353) (not b!4681334) (not bm!327197) (not b!4681264) (not b!4681258) (not d!1487863) (not d!1487991) (not d!1487875) (not bm!327211) (not bm!327220) (not d!1487857) (not d!1487965) (not b!4681321) (not bm!327177) (not bm!327196) (not b!4681425) (not b!4681455) (not b!4681332) (not b!4681337) (not b!4681221) (not b!4681265) (not d!1487957) (not b!4681361) (not bm!327178) (not b!4681270) (not b!4681252) (not b!4681323) (not d!1487899) (not d!1487915) (not b!4681385) (not b!4681249) (not d!1488007) (not b!4681338) (not b!4681359) (not b!4681262) (not d!1487953) (not b!4681416) (not b!4681269) (not d!1487963) (not d!1487987) (not b!4681202) (not b!4681256) (not b!4681460) (not d!1487967) (not d!1487979) (not b!4681266) (not d!1487879) (not b!4681260) (not bm!327194) (not d!1487903) (not b!4681261) (not bm!327208) (not b!4681398))
(check-sat)
