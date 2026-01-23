; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478608 () Bool)

(assert start!478608)

(declare-fun b!4710492 () Bool)

(declare-fun e!2937991 () Bool)

(declare-fun e!2937987 () Bool)

(assert (=> b!4710492 (= e!2937991 e!2937987)))

(declare-fun res!1990762 () Bool)

(assert (=> b!4710492 (=> res!1990762 e!2937987)))

(declare-datatypes ((K!14035 0))(
  ( (K!14036 (val!19499 Int)) )
))
(declare-datatypes ((V!14281 0))(
  ( (V!14282 (val!19500 Int)) )
))
(declare-datatypes ((tuple2!54210 0))(
  ( (tuple2!54211 (_1!30399 K!14035) (_2!30399 V!14281)) )
))
(declare-datatypes ((List!52797 0))(
  ( (Nil!52673) (Cons!52673 (h!58982 tuple2!54210) (t!360035 List!52797)) )
))
(declare-datatypes ((ListMap!5161 0))(
  ( (ListMap!5162 (toList!5797 List!52797)) )
))
(declare-fun lt!1874970 () ListMap!5161)

(declare-fun newBucket!218 () List!52797)

(declare-fun lt!1874971 () ListMap!5161)

(declare-fun addToMapMapFromBucket!1384 (List!52797 ListMap!5161) ListMap!5161)

(assert (=> b!4710492 (= res!1990762 (not (= lt!1874970 (addToMapMapFromBucket!1384 newBucket!218 lt!1874971))))))

(declare-fun lt!1874976 () List!52797)

(assert (=> b!4710492 (= lt!1874970 (addToMapMapFromBucket!1384 lt!1874976 lt!1874971))))

(declare-fun tp!1347457 () Bool)

(declare-fun tp_is_empty!31111 () Bool)

(declare-fun e!2937986 () Bool)

(declare-fun tp_is_empty!31109 () Bool)

(declare-fun b!4710493 () Bool)

(assert (=> b!4710493 (= e!2937986 (and tp_is_empty!31109 tp_is_empty!31111 tp!1347457))))

(declare-fun lt!1874969 () ListMap!5161)

(declare-fun key!4653 () K!14035)

(declare-fun b!4710494 () Bool)

(declare-fun e!2937993 () Bool)

(declare-fun -!728 (ListMap!5161 K!14035) ListMap!5161)

(assert (=> b!4710494 (= e!2937993 (= (-!728 lt!1874969 key!4653) lt!1874970))))

(declare-fun oldBucket!34 () List!52797)

(declare-fun +!2218 (ListMap!5161 tuple2!54210) ListMap!5161)

(assert (=> b!4710494 (= (-!728 (+!2218 lt!1874970 (tuple2!54211 key!4653 (_2!30399 (h!58982 oldBucket!34)))) key!4653) lt!1874970)))

(declare-datatypes ((Unit!127874 0))(
  ( (Unit!127875) )
))
(declare-fun lt!1874974 () Unit!127874)

(declare-fun addThenRemoveForNewKeyIsSame!59 (ListMap!5161 K!14035 V!14281) Unit!127874)

(assert (=> b!4710494 (= lt!1874974 (addThenRemoveForNewKeyIsSame!59 lt!1874970 key!4653 (_2!30399 (h!58982 oldBucket!34))))))

(declare-fun b!4710495 () Bool)

(declare-fun e!2937994 () Bool)

(assert (=> b!4710495 (= e!2937994 e!2937993)))

(declare-fun res!1990773 () Bool)

(assert (=> b!4710495 (=> res!1990773 e!2937993)))

(declare-fun contains!15976 (ListMap!5161 K!14035) Bool)

(assert (=> b!4710495 (= res!1990773 (contains!15976 lt!1874970 key!4653))))

(declare-fun lt!1874975 () ListMap!5161)

(assert (=> b!4710495 (not (contains!15976 lt!1874975 key!4653))))

(declare-datatypes ((Hashable!6323 0))(
  ( (HashableExt!6322 (__x!32026 Int)) )
))
(declare-fun hashF!1323 () Hashable!6323)

(declare-datatypes ((tuple2!54212 0))(
  ( (tuple2!54213 (_1!30400 (_ BitVec 64)) (_2!30400 List!52797)) )
))
(declare-datatypes ((List!52798 0))(
  ( (Nil!52674) (Cons!52674 (h!58983 tuple2!54212) (t!360036 List!52798)) )
))
(declare-fun lt!1874968 () List!52798)

(declare-fun lt!1874977 () Unit!127874)

(declare-datatypes ((ListLongMap!4327 0))(
  ( (ListLongMap!4328 (toList!5798 List!52798)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!408 (ListLongMap!4327 K!14035 Hashable!6323) Unit!127874)

(assert (=> b!4710495 (= lt!1874977 (lemmaNotInItsHashBucketThenNotInMap!408 (ListLongMap!4328 lt!1874968) key!4653 hashF!1323))))

(declare-fun b!4710496 () Bool)

(declare-fun res!1990768 () Bool)

(declare-fun e!2937992 () Bool)

(assert (=> b!4710496 (=> (not res!1990768) (not e!2937992))))

(declare-fun lm!2023 () ListLongMap!4327)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10147 (List!52798) tuple2!54212)

(assert (=> b!4710496 (= res!1990768 (= (head!10147 (toList!5798 lm!2023)) (tuple2!54213 hash!405 oldBucket!34)))))

(declare-fun b!4710497 () Bool)

(declare-fun e!2937989 () Bool)

(declare-fun tp!1347455 () Bool)

(assert (=> b!4710497 (= e!2937989 tp!1347455)))

(declare-fun b!4710498 () Bool)

(declare-fun e!2937985 () Bool)

(assert (=> b!4710498 (= e!2937985 e!2937991)))

(declare-fun res!1990778 () Bool)

(assert (=> b!4710498 (=> res!1990778 e!2937991)))

(declare-fun extractMap!1980 (List!52798) ListMap!5161)

(assert (=> b!4710498 (= res!1990778 (not (= lt!1874975 (extractMap!1980 (Cons!52674 (tuple2!54213 hash!405 newBucket!218) (t!360036 (toList!5798 lm!2023)))))))))

(assert (=> b!4710498 (= lt!1874975 (extractMap!1980 lt!1874968))))

(assert (=> b!4710498 (= lt!1874968 (Cons!52674 (tuple2!54213 hash!405 lt!1874976) (t!360036 (toList!5798 lm!2023))))))

(declare-fun b!4710499 () Bool)

(declare-fun res!1990775 () Bool)

(assert (=> b!4710499 (=> res!1990775 e!2937994)))

(declare-fun containsKey!3257 (List!52797 K!14035) Bool)

(assert (=> b!4710499 (= res!1990775 (containsKey!3257 lt!1874976 key!4653))))

(declare-fun b!4710500 () Bool)

(declare-fun e!2937984 () Bool)

(assert (=> b!4710500 (= e!2937984 e!2937992)))

(declare-fun res!1990772 () Bool)

(assert (=> b!4710500 (=> (not res!1990772) (not e!2937992))))

(declare-fun lt!1874978 () ListMap!5161)

(assert (=> b!4710500 (= res!1990772 (contains!15976 lt!1874978 key!4653))))

(assert (=> b!4710500 (= lt!1874978 (extractMap!1980 (toList!5798 lm!2023)))))

(declare-fun b!4710501 () Bool)

(declare-fun res!1990767 () Bool)

(assert (=> b!4710501 (=> (not res!1990767) (not e!2937992))))

(declare-fun hash!4278 (Hashable!6323 K!14035) (_ BitVec 64))

(assert (=> b!4710501 (= res!1990767 (= (hash!4278 hashF!1323 key!4653) hash!405))))

(declare-fun res!1990774 () Bool)

(assert (=> start!478608 (=> (not res!1990774) (not e!2937984))))

(declare-fun lambda!212617 () Int)

(declare-fun forall!11485 (List!52798 Int) Bool)

(assert (=> start!478608 (= res!1990774 (forall!11485 (toList!5798 lm!2023) lambda!212617))))

(assert (=> start!478608 e!2937984))

(declare-fun inv!67909 (ListLongMap!4327) Bool)

(assert (=> start!478608 (and (inv!67909 lm!2023) e!2937989)))

(assert (=> start!478608 tp_is_empty!31109))

(declare-fun e!2937988 () Bool)

(assert (=> start!478608 e!2937988))

(assert (=> start!478608 true))

(assert (=> start!478608 e!2937986))

(declare-fun b!4710502 () Bool)

(declare-fun res!1990777 () Bool)

(assert (=> b!4710502 (=> (not res!1990777) (not e!2937984))))

(declare-fun noDuplicateKeys!1954 (List!52797) Bool)

(assert (=> b!4710502 (= res!1990777 (noDuplicateKeys!1954 oldBucket!34))))

(declare-fun b!4710503 () Bool)

(declare-fun e!2937990 () Bool)

(assert (=> b!4710503 (= e!2937992 (not e!2937990))))

(declare-fun res!1990776 () Bool)

(assert (=> b!4710503 (=> res!1990776 e!2937990)))

(get-info :version)

(assert (=> b!4710503 (= res!1990776 (or (not ((_ is Cons!52673) oldBucket!34)) (not (= (_1!30399 (h!58982 oldBucket!34)) key!4653))))))

(assert (=> b!4710503 (= lt!1874978 (addToMapMapFromBucket!1384 (_2!30400 (h!58983 (toList!5798 lm!2023))) lt!1874971))))

(assert (=> b!4710503 (= lt!1874971 (extractMap!1980 (t!360036 (toList!5798 lm!2023))))))

(declare-fun tail!8851 (ListLongMap!4327) ListLongMap!4327)

(assert (=> b!4710503 (= (t!360036 (toList!5798 lm!2023)) (toList!5798 (tail!8851 lm!2023)))))

(declare-fun b!4710504 () Bool)

(declare-fun res!1990764 () Bool)

(assert (=> b!4710504 (=> (not res!1990764) (not e!2937984))))

(declare-fun allKeysSameHash!1780 (List!52797 (_ BitVec 64) Hashable!6323) Bool)

(assert (=> b!4710504 (= res!1990764 (allKeysSameHash!1780 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4710505 () Bool)

(declare-fun res!1990761 () Bool)

(assert (=> b!4710505 (=> (not res!1990761) (not e!2937992))))

(assert (=> b!4710505 (= res!1990761 ((_ is Cons!52674) (toList!5798 lm!2023)))))

(declare-fun b!4710506 () Bool)

(declare-fun res!1990770 () Bool)

(assert (=> b!4710506 (=> (not res!1990770) (not e!2937984))))

(declare-fun removePairForKey!1549 (List!52797 K!14035) List!52797)

(assert (=> b!4710506 (= res!1990770 (= (removePairForKey!1549 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4710507 () Bool)

(declare-fun res!1990779 () Bool)

(assert (=> b!4710507 (=> (not res!1990779) (not e!2937992))))

(assert (=> b!4710507 (= res!1990779 (allKeysSameHash!1780 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4710508 () Bool)

(declare-fun res!1990765 () Bool)

(assert (=> b!4710508 (=> (not res!1990765) (not e!2937984))))

(assert (=> b!4710508 (= res!1990765 (noDuplicateKeys!1954 newBucket!218))))

(declare-fun b!4710509 () Bool)

(assert (=> b!4710509 (= e!2937987 e!2937994)))

(declare-fun res!1990766 () Bool)

(assert (=> b!4710509 (=> res!1990766 e!2937994)))

(declare-fun eq!1091 (ListMap!5161 ListMap!5161) Bool)

(assert (=> b!4710509 (= res!1990766 (not (eq!1091 lt!1874969 (addToMapMapFromBucket!1384 oldBucket!34 lt!1874971))))))

(assert (=> b!4710509 (= lt!1874969 (+!2218 lt!1874970 (h!58982 oldBucket!34)))))

(declare-fun lt!1874973 () tuple2!54210)

(assert (=> b!4710509 (eq!1091 (addToMapMapFromBucket!1384 (Cons!52673 lt!1874973 lt!1874976) lt!1874971) (+!2218 lt!1874970 lt!1874973))))

(declare-fun lt!1874972 () Unit!127874)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!340 (tuple2!54210 List!52797 ListMap!5161) Unit!127874)

(assert (=> b!4710509 (= lt!1874972 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!340 lt!1874973 lt!1874976 lt!1874971))))

(declare-fun head!10148 (List!52797) tuple2!54210)

(assert (=> b!4710509 (= lt!1874973 (head!10148 oldBucket!34))))

(declare-fun b!4710510 () Bool)

(declare-fun res!1990771 () Bool)

(assert (=> b!4710510 (=> res!1990771 e!2937994)))

(assert (=> b!4710510 (= res!1990771 (not (= lt!1874970 lt!1874975)))))

(declare-fun tp!1347456 () Bool)

(declare-fun b!4710511 () Bool)

(assert (=> b!4710511 (= e!2937988 (and tp_is_empty!31109 tp_is_empty!31111 tp!1347456))))

(declare-fun b!4710512 () Bool)

(declare-fun res!1990769 () Bool)

(assert (=> b!4710512 (=> (not res!1990769) (not e!2937992))))

(declare-fun allKeysSameHashInMap!1868 (ListLongMap!4327 Hashable!6323) Bool)

(assert (=> b!4710512 (= res!1990769 (allKeysSameHashInMap!1868 lm!2023 hashF!1323))))

(declare-fun b!4710513 () Bool)

(assert (=> b!4710513 (= e!2937990 e!2937985)))

(declare-fun res!1990763 () Bool)

(assert (=> b!4710513 (=> res!1990763 e!2937985)))

(assert (=> b!4710513 (= res!1990763 (not (= lt!1874976 newBucket!218)))))

(declare-fun tail!8852 (List!52797) List!52797)

(assert (=> b!4710513 (= lt!1874976 (tail!8852 oldBucket!34))))

(assert (= (and start!478608 res!1990774) b!4710502))

(assert (= (and b!4710502 res!1990777) b!4710508))

(assert (= (and b!4710508 res!1990765) b!4710506))

(assert (= (and b!4710506 res!1990770) b!4710504))

(assert (= (and b!4710504 res!1990764) b!4710500))

(assert (= (and b!4710500 res!1990772) b!4710501))

(assert (= (and b!4710501 res!1990767) b!4710507))

(assert (= (and b!4710507 res!1990779) b!4710512))

(assert (= (and b!4710512 res!1990769) b!4710496))

(assert (= (and b!4710496 res!1990768) b!4710505))

(assert (= (and b!4710505 res!1990761) b!4710503))

(assert (= (and b!4710503 (not res!1990776)) b!4710513))

(assert (= (and b!4710513 (not res!1990763)) b!4710498))

(assert (= (and b!4710498 (not res!1990778)) b!4710492))

(assert (= (and b!4710492 (not res!1990762)) b!4710509))

(assert (= (and b!4710509 (not res!1990766)) b!4710499))

(assert (= (and b!4710499 (not res!1990775)) b!4710510))

(assert (= (and b!4710510 (not res!1990771)) b!4710495))

(assert (= (and b!4710495 (not res!1990773)) b!4710494))

(assert (= start!478608 b!4710497))

(assert (= (and start!478608 ((_ is Cons!52673) oldBucket!34)) b!4710511))

(assert (= (and start!478608 ((_ is Cons!52673) newBucket!218)) b!4710493))

(declare-fun m!5635653 () Bool)

(assert (=> b!4710506 m!5635653))

(declare-fun m!5635655 () Bool)

(assert (=> b!4710501 m!5635655))

(declare-fun m!5635657 () Bool)

(assert (=> b!4710503 m!5635657))

(declare-fun m!5635659 () Bool)

(assert (=> b!4710503 m!5635659))

(declare-fun m!5635661 () Bool)

(assert (=> b!4710503 m!5635661))

(declare-fun m!5635663 () Bool)

(assert (=> b!4710508 m!5635663))

(declare-fun m!5635665 () Bool)

(assert (=> b!4710494 m!5635665))

(declare-fun m!5635667 () Bool)

(assert (=> b!4710494 m!5635667))

(assert (=> b!4710494 m!5635667))

(declare-fun m!5635669 () Bool)

(assert (=> b!4710494 m!5635669))

(declare-fun m!5635671 () Bool)

(assert (=> b!4710494 m!5635671))

(declare-fun m!5635673 () Bool)

(assert (=> b!4710492 m!5635673))

(declare-fun m!5635675 () Bool)

(assert (=> b!4710492 m!5635675))

(declare-fun m!5635677 () Bool)

(assert (=> b!4710500 m!5635677))

(declare-fun m!5635679 () Bool)

(assert (=> b!4710500 m!5635679))

(declare-fun m!5635681 () Bool)

(assert (=> b!4710507 m!5635681))

(declare-fun m!5635683 () Bool)

(assert (=> b!4710499 m!5635683))

(declare-fun m!5635685 () Bool)

(assert (=> b!4710498 m!5635685))

(declare-fun m!5635687 () Bool)

(assert (=> b!4710498 m!5635687))

(declare-fun m!5635689 () Bool)

(assert (=> b!4710504 m!5635689))

(declare-fun m!5635691 () Bool)

(assert (=> start!478608 m!5635691))

(declare-fun m!5635693 () Bool)

(assert (=> start!478608 m!5635693))

(declare-fun m!5635695 () Bool)

(assert (=> b!4710512 m!5635695))

(declare-fun m!5635697 () Bool)

(assert (=> b!4710495 m!5635697))

(declare-fun m!5635699 () Bool)

(assert (=> b!4710495 m!5635699))

(declare-fun m!5635701 () Bool)

(assert (=> b!4710495 m!5635701))

(declare-fun m!5635703 () Bool)

(assert (=> b!4710513 m!5635703))

(declare-fun m!5635705 () Bool)

(assert (=> b!4710502 m!5635705))

(declare-fun m!5635707 () Bool)

(assert (=> b!4710496 m!5635707))

(declare-fun m!5635709 () Bool)

(assert (=> b!4710509 m!5635709))

(declare-fun m!5635711 () Bool)

(assert (=> b!4710509 m!5635711))

(declare-fun m!5635713 () Bool)

(assert (=> b!4710509 m!5635713))

(assert (=> b!4710509 m!5635709))

(declare-fun m!5635715 () Bool)

(assert (=> b!4710509 m!5635715))

(declare-fun m!5635717 () Bool)

(assert (=> b!4710509 m!5635717))

(assert (=> b!4710509 m!5635711))

(declare-fun m!5635719 () Bool)

(assert (=> b!4710509 m!5635719))

(declare-fun m!5635721 () Bool)

(assert (=> b!4710509 m!5635721))

(assert (=> b!4710509 m!5635721))

(declare-fun m!5635723 () Bool)

(assert (=> b!4710509 m!5635723))

(check-sat (not b!4710498) (not b!4710499) (not b!4710509) (not b!4710493) (not b!4710507) (not b!4710513) tp_is_empty!31109 (not start!478608) (not b!4710495) (not b!4710506) (not b!4710497) (not b!4710494) tp_is_empty!31111 (not b!4710504) (not b!4710502) (not b!4710512) (not b!4710503) (not b!4710511) (not b!4710500) (not b!4710508) (not b!4710501) (not b!4710496) (not b!4710492))
(check-sat)
