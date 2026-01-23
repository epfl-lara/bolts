; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473348 () Bool)

(assert start!473348)

(declare-fun b!4684598 () Bool)

(declare-fun res!1974989 () Bool)

(declare-fun e!2922648 () Bool)

(assert (=> b!4684598 (=> (not res!1974989) (not e!2922648))))

(declare-datatypes ((K!13710 0))(
  ( (K!13711 (val!19239 Int)) )
))
(declare-datatypes ((V!13956 0))(
  ( (V!13957 (val!19240 Int)) )
))
(declare-datatypes ((tuple2!53690 0))(
  ( (tuple2!53691 (_1!30139 K!13710) (_2!30139 V!13956)) )
))
(declare-datatypes ((List!52455 0))(
  ( (Nil!52331) (Cons!52331 (h!58558 tuple2!53690) (t!359617 List!52455)) )
))
(declare-datatypes ((tuple2!53692 0))(
  ( (tuple2!53693 (_1!30140 (_ BitVec 64)) (_2!30140 List!52455)) )
))
(declare-datatypes ((List!52456 0))(
  ( (Nil!52332) (Cons!52332 (h!58559 tuple2!53692) (t!359618 List!52456)) )
))
(declare-datatypes ((ListLongMap!4067 0))(
  ( (ListLongMap!4068 (toList!5537 List!52456)) )
))
(declare-fun lm!2023 () ListLongMap!4067)

(declare-fun oldBucket!34 () List!52455)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9918 (List!52456) tuple2!53692)

(assert (=> b!4684598 (= res!1974989 (= (head!9918 (toList!5537 lm!2023)) (tuple2!53693 hash!405 oldBucket!34)))))

(declare-fun b!4684599 () Bool)

(declare-fun e!2922647 () Bool)

(declare-fun e!2922649 () Bool)

(assert (=> b!4684599 (= e!2922647 e!2922649)))

(declare-fun res!1974984 () Bool)

(assert (=> b!4684599 (=> res!1974984 e!2922649)))

(declare-fun lt!1843923 () List!52456)

(declare-fun lambda!205693 () Int)

(declare-fun forall!11273 (List!52456 Int) Bool)

(assert (=> b!4684599 (= res!1974984 (not (forall!11273 lt!1843923 lambda!205693)))))

(assert (=> b!4684599 (= lt!1843923 (Cons!52332 (tuple2!53693 hash!405 (t!359617 oldBucket!34)) (t!359618 (toList!5537 lm!2023))))))

(declare-fun b!4684600 () Bool)

(declare-fun e!2922643 () Bool)

(assert (=> b!4684600 (= e!2922643 e!2922647)))

(declare-fun res!1974974 () Bool)

(assert (=> b!4684600 (=> res!1974974 e!2922647)))

(declare-fun key!4653 () K!13710)

(declare-fun lt!1843922 () List!52455)

(declare-fun removePairForKey!1419 (List!52455 K!13710) List!52455)

(declare-fun tail!8512 (List!52455) List!52455)

(assert (=> b!4684600 (= res!1974974 (not (= (removePairForKey!1419 (tail!8512 oldBucket!34) key!4653) lt!1843922)))))

(declare-fun newBucket!218 () List!52455)

(assert (=> b!4684600 (= lt!1843922 (tail!8512 newBucket!218))))

(declare-fun b!4684601 () Bool)

(declare-fun e!2922642 () Bool)

(declare-datatypes ((ListMap!4901 0))(
  ( (ListMap!4902 (toList!5538 List!52455)) )
))
(declare-fun lt!1843926 () ListMap!4901)

(declare-fun addToMapMapFromBucket!1256 (List!52455 ListMap!4901) ListMap!4901)

(declare-fun extractMap!1850 (List!52456) ListMap!4901)

(assert (=> b!4684601 (= e!2922642 (= lt!1843926 (addToMapMapFromBucket!1256 (_2!30140 (h!58559 (toList!5537 lm!2023))) (extractMap!1850 (t!359618 (toList!5537 lm!2023))))))))

(declare-fun b!4684602 () Bool)

(declare-fun res!1974990 () Bool)

(assert (=> b!4684602 (=> (not res!1974990) (not e!2922648))))

(declare-datatypes ((Hashable!6193 0))(
  ( (HashableExt!6192 (__x!31896 Int)) )
))
(declare-fun hashF!1323 () Hashable!6193)

(declare-fun allKeysSameHash!1650 (List!52455 (_ BitVec 64) Hashable!6193) Bool)

(assert (=> b!4684602 (= res!1974990 (allKeysSameHash!1650 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4684603 () Bool)

(declare-fun res!1974987 () Bool)

(declare-fun e!2922641 () Bool)

(assert (=> b!4684603 (=> (not res!1974987) (not e!2922641))))

(declare-fun noDuplicateKeys!1824 (List!52455) Bool)

(assert (=> b!4684603 (= res!1974987 (noDuplicateKeys!1824 newBucket!218))))

(declare-fun b!4684604 () Bool)

(declare-fun e!2922650 () Bool)

(assert (=> b!4684604 (= e!2922650 e!2922643)))

(declare-fun res!1974975 () Bool)

(assert (=> b!4684604 (=> res!1974975 e!2922643)))

(declare-fun containsKey!2987 (List!52455 K!13710) Bool)

(assert (=> b!4684604 (= res!1974975 (not (containsKey!2987 (t!359617 oldBucket!34) key!4653)))))

(assert (=> b!4684604 (containsKey!2987 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123149 0))(
  ( (Unit!123150) )
))
(declare-fun lt!1843924 () Unit!123149)

(declare-fun lemmaGetPairDefinedThenContainsKey!176 (List!52455 K!13710 Hashable!6193) Unit!123149)

(assert (=> b!4684604 (= lt!1843924 (lemmaGetPairDefinedThenContainsKey!176 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1843917 () List!52455)

(declare-datatypes ((Option!12011 0))(
  ( (None!12010) (Some!12010 (v!46389 tuple2!53690)) )
))
(declare-fun isDefined!9266 (Option!12011) Bool)

(declare-fun getPair!428 (List!52455 K!13710) Option!12011)

(assert (=> b!4684604 (isDefined!9266 (getPair!428 lt!1843917 key!4653))))

(declare-fun lt!1843918 () Unit!123149)

(declare-fun lt!1843919 () tuple2!53692)

(declare-fun forallContained!3380 (List!52456 Int tuple2!53692) Unit!123149)

(assert (=> b!4684604 (= lt!1843918 (forallContained!3380 (toList!5537 lm!2023) lambda!205693 lt!1843919))))

(declare-fun contains!15482 (List!52456 tuple2!53692) Bool)

(assert (=> b!4684604 (contains!15482 (toList!5537 lm!2023) lt!1843919)))

(declare-fun lt!1843920 () (_ BitVec 64))

(assert (=> b!4684604 (= lt!1843919 (tuple2!53693 lt!1843920 lt!1843917))))

(declare-fun lt!1843925 () Unit!123149)

(declare-fun lemmaGetValueImpliesTupleContained!233 (ListLongMap!4067 (_ BitVec 64) List!52455) Unit!123149)

(assert (=> b!4684604 (= lt!1843925 (lemmaGetValueImpliesTupleContained!233 lm!2023 lt!1843920 lt!1843917))))

(declare-fun apply!12307 (ListLongMap!4067 (_ BitVec 64)) List!52455)

(assert (=> b!4684604 (= lt!1843917 (apply!12307 lm!2023 lt!1843920))))

(declare-fun contains!15483 (ListLongMap!4067 (_ BitVec 64)) Bool)

(assert (=> b!4684604 (contains!15483 lm!2023 lt!1843920)))

(declare-fun lt!1843916 () Unit!123149)

(declare-fun lemmaInGenMapThenLongMapContainsHash!634 (ListLongMap!4067 K!13710 Hashable!6193) Unit!123149)

(assert (=> b!4684604 (= lt!1843916 (lemmaInGenMapThenLongMapContainsHash!634 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1843921 () Unit!123149)

(declare-fun lemmaInGenMapThenGetPairDefined!224 (ListLongMap!4067 K!13710 Hashable!6193) Unit!123149)

(assert (=> b!4684604 (= lt!1843921 (lemmaInGenMapThenGetPairDefined!224 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4684605 () Bool)

(assert (=> b!4684605 (= e!2922648 (not e!2922650))))

(declare-fun res!1974980 () Bool)

(assert (=> b!4684605 (=> res!1974980 e!2922650)))

(get-info :version)

(assert (=> b!4684605 (= res!1974980 (or (and ((_ is Cons!52331) oldBucket!34) (= (_1!30139 (h!58558 oldBucket!34)) key!4653)) (not ((_ is Cons!52331) oldBucket!34)) (= (_1!30139 (h!58558 oldBucket!34)) key!4653)))))

(assert (=> b!4684605 e!2922642))

(declare-fun res!1974976 () Bool)

(assert (=> b!4684605 (=> (not res!1974976) (not e!2922642))))

(declare-fun tail!8513 (ListLongMap!4067) ListLongMap!4067)

(assert (=> b!4684605 (= res!1974976 (= (t!359618 (toList!5537 lm!2023)) (toList!5537 (tail!8513 lm!2023))))))

(declare-fun b!4684606 () Bool)

(declare-fun res!1974981 () Bool)

(assert (=> b!4684606 (=> (not res!1974981) (not e!2922648))))

(declare-fun allKeysSameHashInMap!1738 (ListLongMap!4067 Hashable!6193) Bool)

(assert (=> b!4684606 (= res!1974981 (allKeysSameHashInMap!1738 lm!2023 hashF!1323))))

(declare-fun b!4684607 () Bool)

(declare-fun res!1974982 () Bool)

(assert (=> b!4684607 (=> (not res!1974982) (not e!2922641))))

(assert (=> b!4684607 (= res!1974982 (noDuplicateKeys!1824 oldBucket!34))))

(declare-fun b!4684608 () Bool)

(declare-fun res!1974991 () Bool)

(assert (=> b!4684608 (=> (not res!1974991) (not e!2922641))))

(assert (=> b!4684608 (= res!1974991 (= (removePairForKey!1419 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1974986 () Bool)

(assert (=> start!473348 (=> (not res!1974986) (not e!2922641))))

(assert (=> start!473348 (= res!1974986 (forall!11273 (toList!5537 lm!2023) lambda!205693))))

(assert (=> start!473348 e!2922641))

(declare-fun e!2922644 () Bool)

(declare-fun inv!67584 (ListLongMap!4067) Bool)

(assert (=> start!473348 (and (inv!67584 lm!2023) e!2922644)))

(declare-fun tp_is_empty!30589 () Bool)

(assert (=> start!473348 tp_is_empty!30589))

(declare-fun e!2922645 () Bool)

(assert (=> start!473348 e!2922645))

(assert (=> start!473348 true))

(declare-fun e!2922646 () Bool)

(assert (=> start!473348 e!2922646))

(declare-fun tp!1345465 () Bool)

(declare-fun tp_is_empty!30591 () Bool)

(declare-fun b!4684609 () Bool)

(assert (=> b!4684609 (= e!2922646 (and tp_is_empty!30589 tp_is_empty!30591 tp!1345465))))

(declare-fun b!4684610 () Bool)

(declare-fun res!1974978 () Bool)

(assert (=> b!4684610 (=> res!1974978 e!2922649)))

(assert (=> b!4684610 (= res!1974978 (not (allKeysSameHashInMap!1738 (ListLongMap!4068 lt!1843923) hashF!1323)))))

(declare-fun tp!1345466 () Bool)

(declare-fun b!4684611 () Bool)

(assert (=> b!4684611 (= e!2922645 (and tp_is_empty!30589 tp_is_empty!30591 tp!1345466))))

(declare-fun b!4684612 () Bool)

(declare-fun tp!1345467 () Bool)

(assert (=> b!4684612 (= e!2922644 tp!1345467)))

(declare-fun b!4684613 () Bool)

(declare-fun res!1974977 () Bool)

(assert (=> b!4684613 (=> res!1974977 e!2922649)))

(declare-fun containsKeyBiggerList!326 (List!52456 K!13710) Bool)

(assert (=> b!4684613 (= res!1974977 (not (containsKeyBiggerList!326 lt!1843923 key!4653)))))

(declare-fun b!4684614 () Bool)

(declare-fun res!1974973 () Bool)

(assert (=> b!4684614 (=> (not res!1974973) (not e!2922648))))

(assert (=> b!4684614 (= res!1974973 ((_ is Cons!52332) (toList!5537 lm!2023)))))

(declare-fun b!4684615 () Bool)

(declare-fun e!2922640 () Bool)

(assert (=> b!4684615 (= e!2922641 e!2922640)))

(declare-fun res!1974979 () Bool)

(assert (=> b!4684615 (=> (not res!1974979) (not e!2922640))))

(declare-fun contains!15484 (ListMap!4901 K!13710) Bool)

(assert (=> b!4684615 (= res!1974979 (contains!15484 lt!1843926 key!4653))))

(assert (=> b!4684615 (= lt!1843926 (extractMap!1850 (toList!5537 lm!2023)))))

(declare-fun b!4684616 () Bool)

(assert (=> b!4684616 (= e!2922640 e!2922648)))

(declare-fun res!1974985 () Bool)

(assert (=> b!4684616 (=> (not res!1974985) (not e!2922648))))

(assert (=> b!4684616 (= res!1974985 (= lt!1843920 hash!405))))

(declare-fun hash!4017 (Hashable!6193 K!13710) (_ BitVec 64))

(assert (=> b!4684616 (= lt!1843920 (hash!4017 hashF!1323 key!4653))))

(declare-fun b!4684617 () Bool)

(declare-fun res!1974988 () Bool)

(assert (=> b!4684617 (=> res!1974988 e!2922647)))

(assert (=> b!4684617 (= res!1974988 (not (= (removePairForKey!1419 (t!359617 oldBucket!34) key!4653) lt!1843922)))))

(declare-fun b!4684618 () Bool)

(assert (=> b!4684618 (= e!2922649 true)))

(declare-fun b!4684619 () Bool)

(declare-fun res!1974983 () Bool)

(assert (=> b!4684619 (=> (not res!1974983) (not e!2922641))))

(assert (=> b!4684619 (= res!1974983 (allKeysSameHash!1650 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!473348 res!1974986) b!4684607))

(assert (= (and b!4684607 res!1974982) b!4684603))

(assert (= (and b!4684603 res!1974987) b!4684608))

(assert (= (and b!4684608 res!1974991) b!4684619))

(assert (= (and b!4684619 res!1974983) b!4684615))

(assert (= (and b!4684615 res!1974979) b!4684616))

(assert (= (and b!4684616 res!1974985) b!4684602))

(assert (= (and b!4684602 res!1974990) b!4684606))

(assert (= (and b!4684606 res!1974981) b!4684598))

(assert (= (and b!4684598 res!1974989) b!4684614))

(assert (= (and b!4684614 res!1974973) b!4684605))

(assert (= (and b!4684605 res!1974976) b!4684601))

(assert (= (and b!4684605 (not res!1974980)) b!4684604))

(assert (= (and b!4684604 (not res!1974975)) b!4684600))

(assert (= (and b!4684600 (not res!1974974)) b!4684617))

(assert (= (and b!4684617 (not res!1974988)) b!4684599))

(assert (= (and b!4684599 (not res!1974984)) b!4684610))

(assert (= (and b!4684610 (not res!1974978)) b!4684613))

(assert (= (and b!4684613 (not res!1974977)) b!4684618))

(assert (= start!473348 b!4684612))

(assert (= (and start!473348 ((_ is Cons!52331) oldBucket!34)) b!4684611))

(assert (= (and start!473348 ((_ is Cons!52331) newBucket!218)) b!4684609))

(declare-fun m!5583197 () Bool)

(assert (=> b!4684606 m!5583197))

(declare-fun m!5583199 () Bool)

(assert (=> b!4684607 m!5583199))

(declare-fun m!5583201 () Bool)

(assert (=> b!4684610 m!5583201))

(declare-fun m!5583203 () Bool)

(assert (=> b!4684600 m!5583203))

(assert (=> b!4684600 m!5583203))

(declare-fun m!5583205 () Bool)

(assert (=> b!4684600 m!5583205))

(declare-fun m!5583207 () Bool)

(assert (=> b!4684600 m!5583207))

(declare-fun m!5583209 () Bool)

(assert (=> b!4684602 m!5583209))

(declare-fun m!5583211 () Bool)

(assert (=> start!473348 m!5583211))

(declare-fun m!5583213 () Bool)

(assert (=> start!473348 m!5583213))

(declare-fun m!5583215 () Bool)

(assert (=> b!4684605 m!5583215))

(declare-fun m!5583217 () Bool)

(assert (=> b!4684601 m!5583217))

(assert (=> b!4684601 m!5583217))

(declare-fun m!5583219 () Bool)

(assert (=> b!4684601 m!5583219))

(declare-fun m!5583221 () Bool)

(assert (=> b!4684619 m!5583221))

(declare-fun m!5583223 () Bool)

(assert (=> b!4684604 m!5583223))

(declare-fun m!5583225 () Bool)

(assert (=> b!4684604 m!5583225))

(declare-fun m!5583227 () Bool)

(assert (=> b!4684604 m!5583227))

(declare-fun m!5583229 () Bool)

(assert (=> b!4684604 m!5583229))

(declare-fun m!5583231 () Bool)

(assert (=> b!4684604 m!5583231))

(declare-fun m!5583233 () Bool)

(assert (=> b!4684604 m!5583233))

(declare-fun m!5583235 () Bool)

(assert (=> b!4684604 m!5583235))

(declare-fun m!5583237 () Bool)

(assert (=> b!4684604 m!5583237))

(declare-fun m!5583239 () Bool)

(assert (=> b!4684604 m!5583239))

(declare-fun m!5583241 () Bool)

(assert (=> b!4684604 m!5583241))

(declare-fun m!5583243 () Bool)

(assert (=> b!4684604 m!5583243))

(declare-fun m!5583245 () Bool)

(assert (=> b!4684604 m!5583245))

(assert (=> b!4684604 m!5583235))

(declare-fun m!5583247 () Bool)

(assert (=> b!4684616 m!5583247))

(declare-fun m!5583249 () Bool)

(assert (=> b!4684615 m!5583249))

(declare-fun m!5583251 () Bool)

(assert (=> b!4684615 m!5583251))

(declare-fun m!5583253 () Bool)

(assert (=> b!4684599 m!5583253))

(declare-fun m!5583255 () Bool)

(assert (=> b!4684613 m!5583255))

(declare-fun m!5583257 () Bool)

(assert (=> b!4684603 m!5583257))

(declare-fun m!5583259 () Bool)

(assert (=> b!4684617 m!5583259))

(declare-fun m!5583261 () Bool)

(assert (=> b!4684598 m!5583261))

(declare-fun m!5583263 () Bool)

(assert (=> b!4684608 m!5583263))

(check-sat (not b!4684604) (not b!4684606) (not b!4684612) (not b!4684609) (not b!4684607) (not b!4684605) (not b!4684611) (not b!4684613) (not b!4684598) (not b!4684616) (not b!4684615) (not b!4684599) (not b!4684617) (not b!4684603) (not b!4684610) (not start!473348) (not b!4684600) (not b!4684602) (not b!4684601) (not b!4684608) tp_is_empty!30591 (not b!4684619) tp_is_empty!30589)
(check-sat)
