; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435004 () Bool)

(assert start!435004)

(declare-fun b!4443692 () Bool)

(declare-fun res!1840330 () Bool)

(declare-fun e!2766821 () Bool)

(assert (=> b!4443692 (=> (not res!1840330) (not e!2766821))))

(declare-datatypes ((K!11195 0))(
  ( (K!11196 (val!17227 Int)) )
))
(declare-datatypes ((V!11441 0))(
  ( (V!11442 (val!17228 Int)) )
))
(declare-datatypes ((tuple2!49774 0))(
  ( (tuple2!49775 (_1!28181 K!11195) (_2!28181 V!11441)) )
))
(declare-datatypes ((List!49952 0))(
  ( (Nil!49828) (Cons!49828 (h!55563 tuple2!49774) (t!356894 List!49952)) )
))
(declare-fun newBucket!194 () List!49952)

(declare-datatypes ((Hashable!5243 0))(
  ( (HashableExt!5242 (__x!30946 Int)) )
))
(declare-fun hashF!1220 () Hashable!5243)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!809 (List!49952 (_ BitVec 64) Hashable!5243) Bool)

(assert (=> b!4443692 (= res!1840330 (allKeysSameHash!809 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4443693 () Bool)

(declare-fun e!2766815 () Bool)

(assert (=> b!4443693 (= e!2766821 e!2766815)))

(declare-fun res!1840329 () Bool)

(assert (=> b!4443693 (=> (not res!1840329) (not e!2766815))))

(declare-datatypes ((ListMap!2929 0))(
  ( (ListMap!2930 (toList!3685 List!49952)) )
))
(declare-fun lt!1638313 () ListMap!2929)

(declare-fun key!3717 () K!11195)

(declare-fun contains!12406 (ListMap!2929 K!11195) Bool)

(assert (=> b!4443693 (= res!1840329 (not (contains!12406 lt!1638313 key!3717)))))

(declare-datatypes ((tuple2!49776 0))(
  ( (tuple2!49777 (_1!28182 (_ BitVec 64)) (_2!28182 List!49952)) )
))
(declare-datatypes ((List!49953 0))(
  ( (Nil!49829) (Cons!49829 (h!55564 tuple2!49776) (t!356895 List!49953)) )
))
(declare-datatypes ((ListLongMap!2335 0))(
  ( (ListLongMap!2336 (toList!3686 List!49953)) )
))
(declare-fun lm!1616 () ListLongMap!2335)

(declare-fun extractMap!910 (List!49953) ListMap!2929)

(assert (=> b!4443693 (= lt!1638313 (extractMap!910 (toList!3686 lm!1616)))))

(declare-fun b!4443694 () Bool)

(declare-fun res!1840320 () Bool)

(declare-fun e!2766819 () Bool)

(assert (=> b!4443694 (=> (not res!1840320) (not e!2766819))))

(declare-fun lambda!157804 () Int)

(declare-fun forall!9728 (List!49953 Int) Bool)

(assert (=> b!4443694 (= res!1840320 (forall!9728 (toList!3686 lm!1616) lambda!157804))))

(declare-fun b!4443695 () Bool)

(declare-fun e!2766817 () Bool)

(declare-fun tp!1334344 () Bool)

(assert (=> b!4443695 (= e!2766817 tp!1334344)))

(declare-fun e!2766820 () Bool)

(declare-fun b!4443696 () Bool)

(declare-fun tp_is_empty!26643 () Bool)

(declare-fun tp_is_empty!26641 () Bool)

(declare-fun tp!1334343 () Bool)

(assert (=> b!4443696 (= e!2766820 (and tp_is_empty!26643 tp_is_empty!26641 tp!1334343))))

(declare-fun b!4443697 () Bool)

(declare-fun res!1840319 () Bool)

(assert (=> b!4443697 (=> (not res!1840319) (not e!2766821))))

(declare-fun allKeysSameHashInMap!955 (ListLongMap!2335 Hashable!5243) Bool)

(assert (=> b!4443697 (= res!1840319 (allKeysSameHashInMap!955 lm!1616 hashF!1220))))

(declare-fun b!4443698 () Bool)

(declare-fun e!2766813 () Bool)

(assert (=> b!4443698 (= e!2766813 (forall!9728 (toList!3686 lm!1616) lambda!157804))))

(declare-fun b!4443700 () Bool)

(declare-fun res!1840327 () Bool)

(assert (=> b!4443700 (=> (not res!1840327) (not e!2766821))))

(declare-fun hash!2311 (Hashable!5243 K!11195) (_ BitVec 64))

(assert (=> b!4443700 (= res!1840327 (= (hash!2311 hashF!1220 key!3717) hash!366))))

(declare-fun b!4443701 () Bool)

(declare-fun e!2766816 () Bool)

(assert (=> b!4443701 (= e!2766816 e!2766813)))

(declare-fun res!1840321 () Bool)

(assert (=> b!4443701 (=> res!1840321 e!2766813)))

(declare-fun lt!1638317 () tuple2!49776)

(declare-fun head!9288 (ListLongMap!2335) tuple2!49776)

(assert (=> b!4443701 (= res!1840321 (= (head!9288 lm!1616) lt!1638317))))

(declare-fun lt!1638318 () ListMap!2929)

(declare-fun lt!1638315 () ListMap!2929)

(declare-fun newValue!93 () V!11441)

(declare-fun eq!449 (ListMap!2929 ListMap!2929) Bool)

(declare-fun +!1235 (ListMap!2929 tuple2!49774) ListMap!2929)

(assert (=> b!4443701 (eq!449 lt!1638318 (+!1235 lt!1638315 (tuple2!49775 key!3717 newValue!93)))))

(declare-fun lt!1638321 () ListLongMap!2335)

(assert (=> b!4443701 (= lt!1638315 (extractMap!910 (toList!3686 lt!1638321)))))

(declare-fun +!1236 (ListLongMap!2335 tuple2!49776) ListLongMap!2335)

(assert (=> b!4443701 (= lt!1638318 (extractMap!910 (toList!3686 (+!1236 lt!1638321 lt!1638317))))))

(declare-datatypes ((Unit!84128 0))(
  ( (Unit!84129) )
))
(declare-fun lt!1638323 () Unit!84128)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!157 (ListLongMap!2335 (_ BitVec 64) List!49952 K!11195 V!11441 Hashable!5243) Unit!84128)

(assert (=> b!4443701 (= lt!1638323 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!157 lt!1638321 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7398 (ListLongMap!2335) ListLongMap!2335)

(assert (=> b!4443701 (= lt!1638321 (tail!7398 lm!1616))))

(declare-fun lt!1638316 () Unit!84128)

(declare-fun e!2766822 () Unit!84128)

(assert (=> b!4443701 (= lt!1638316 e!2766822)))

(declare-fun c!756237 () Bool)

(declare-fun tail!7399 (List!49953) List!49953)

(assert (=> b!4443701 (= c!756237 (contains!12406 (extractMap!910 (tail!7399 (toList!3686 lm!1616))) key!3717))))

(declare-fun b!4443702 () Bool)

(declare-fun res!1840325 () Bool)

(assert (=> b!4443702 (=> res!1840325 e!2766816)))

(get-info :version)

(assert (=> b!4443702 (= res!1840325 (or (and ((_ is Cons!49829) (toList!3686 lm!1616)) (= (_1!28182 (h!55564 (toList!3686 lm!1616))) hash!366)) (not ((_ is Cons!49829) (toList!3686 lm!1616))) (= (_1!28182 (h!55564 (toList!3686 lm!1616))) hash!366)))))

(declare-fun b!4443703 () Bool)

(declare-fun res!1840322 () Bool)

(assert (=> b!4443703 (=> (not res!1840322) (not e!2766819))))

(declare-fun noDuplicateKeys!849 (List!49952) Bool)

(assert (=> b!4443703 (= res!1840322 (noDuplicateKeys!849 newBucket!194))))

(declare-fun b!4443704 () Bool)

(assert (=> b!4443704 (= e!2766815 e!2766819)))

(declare-fun res!1840318 () Bool)

(assert (=> b!4443704 (=> (not res!1840318) (not e!2766819))))

(declare-fun e!2766814 () Bool)

(assert (=> b!4443704 (= res!1840318 e!2766814)))

(declare-fun res!1840324 () Bool)

(assert (=> b!4443704 (=> res!1840324 e!2766814)))

(declare-fun e!2766818 () Bool)

(assert (=> b!4443704 (= res!1840324 e!2766818)))

(declare-fun res!1840326 () Bool)

(assert (=> b!4443704 (=> (not res!1840326) (not e!2766818))))

(declare-fun lt!1638314 () Bool)

(assert (=> b!4443704 (= res!1840326 lt!1638314)))

(declare-fun contains!12407 (ListLongMap!2335 (_ BitVec 64)) Bool)

(assert (=> b!4443704 (= lt!1638314 (contains!12407 lm!1616 hash!366))))

(declare-fun b!4443705 () Bool)

(declare-fun res!1840328 () Bool)

(assert (=> b!4443705 (=> res!1840328 e!2766813)))

(declare-fun addToMapMapFromBucket!455 (List!49952 ListMap!2929) ListMap!2929)

(assert (=> b!4443705 (= res!1840328 (not (eq!449 lt!1638313 (addToMapMapFromBucket!455 (_2!28182 (h!55564 (toList!3686 lm!1616))) lt!1638315))))))

(declare-fun b!4443706 () Bool)

(assert (=> b!4443706 (= e!2766814 (and (not lt!1638314) (= newBucket!194 (Cons!49828 (tuple2!49775 key!3717 newValue!93) Nil!49828))))))

(declare-fun b!4443707 () Bool)

(declare-fun Unit!84130 () Unit!84128)

(assert (=> b!4443707 (= e!2766822 Unit!84130)))

(declare-fun lt!1638319 () Unit!84128)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!86 (ListLongMap!2335 K!11195 Hashable!5243) Unit!84128)

(assert (=> b!4443707 (= lt!1638319 (lemmaExtractTailMapContainsThenExtractMapDoes!86 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4443707 false))

(declare-fun b!4443699 () Bool)

(assert (=> b!4443699 (= e!2766819 (not e!2766816))))

(declare-fun res!1840323 () Bool)

(assert (=> b!4443699 (=> res!1840323 e!2766816)))

(declare-fun lt!1638322 () ListLongMap!2335)

(assert (=> b!4443699 (= res!1840323 (not (forall!9728 (toList!3686 lt!1638322) lambda!157804)))))

(assert (=> b!4443699 (forall!9728 (toList!3686 lt!1638322) lambda!157804)))

(assert (=> b!4443699 (= lt!1638322 (+!1236 lm!1616 lt!1638317))))

(assert (=> b!4443699 (= lt!1638317 (tuple2!49777 hash!366 newBucket!194))))

(declare-fun lt!1638320 () Unit!84128)

(declare-fun addValidProp!487 (ListLongMap!2335 Int (_ BitVec 64) List!49952) Unit!84128)

(assert (=> b!4443699 (= lt!1638320 (addValidProp!487 lm!1616 lambda!157804 hash!366 newBucket!194))))

(declare-fun res!1840331 () Bool)

(assert (=> start!435004 (=> (not res!1840331) (not e!2766821))))

(assert (=> start!435004 (= res!1840331 (forall!9728 (toList!3686 lm!1616) lambda!157804))))

(assert (=> start!435004 e!2766821))

(assert (=> start!435004 tp_is_empty!26641))

(assert (=> start!435004 tp_is_empty!26643))

(assert (=> start!435004 e!2766820))

(declare-fun inv!65381 (ListLongMap!2335) Bool)

(assert (=> start!435004 (and (inv!65381 lm!1616) e!2766817)))

(assert (=> start!435004 true))

(declare-fun b!4443708 () Bool)

(declare-fun Unit!84131 () Unit!84128)

(assert (=> b!4443708 (= e!2766822 Unit!84131)))

(declare-fun b!4443709 () Bool)

(declare-fun apply!11701 (ListLongMap!2335 (_ BitVec 64)) List!49952)

(assert (=> b!4443709 (= e!2766818 (= newBucket!194 (Cons!49828 (tuple2!49775 key!3717 newValue!93) (apply!11701 lm!1616 hash!366))))))

(assert (= (and start!435004 res!1840331) b!4443697))

(assert (= (and b!4443697 res!1840319) b!4443700))

(assert (= (and b!4443700 res!1840327) b!4443692))

(assert (= (and b!4443692 res!1840330) b!4443693))

(assert (= (and b!4443693 res!1840329) b!4443704))

(assert (= (and b!4443704 res!1840326) b!4443709))

(assert (= (and b!4443704 (not res!1840324)) b!4443706))

(assert (= (and b!4443704 res!1840318) b!4443703))

(assert (= (and b!4443703 res!1840322) b!4443694))

(assert (= (and b!4443694 res!1840320) b!4443699))

(assert (= (and b!4443699 (not res!1840323)) b!4443702))

(assert (= (and b!4443702 (not res!1840325)) b!4443701))

(assert (= (and b!4443701 c!756237) b!4443707))

(assert (= (and b!4443701 (not c!756237)) b!4443708))

(assert (= (and b!4443701 (not res!1840321)) b!4443705))

(assert (= (and b!4443705 (not res!1840328)) b!4443698))

(assert (= (and start!435004 ((_ is Cons!49828) newBucket!194)) b!4443696))

(assert (= start!435004 b!4443695))

(declare-fun m!5133077 () Bool)

(assert (=> b!4443697 m!5133077))

(declare-fun m!5133079 () Bool)

(assert (=> b!4443703 m!5133079))

(declare-fun m!5133081 () Bool)

(assert (=> start!435004 m!5133081))

(declare-fun m!5133083 () Bool)

(assert (=> start!435004 m!5133083))

(declare-fun m!5133085 () Bool)

(assert (=> b!4443701 m!5133085))

(declare-fun m!5133087 () Bool)

(assert (=> b!4443701 m!5133087))

(declare-fun m!5133089 () Bool)

(assert (=> b!4443701 m!5133089))

(declare-fun m!5133091 () Bool)

(assert (=> b!4443701 m!5133091))

(declare-fun m!5133093 () Bool)

(assert (=> b!4443701 m!5133093))

(declare-fun m!5133095 () Bool)

(assert (=> b!4443701 m!5133095))

(assert (=> b!4443701 m!5133085))

(assert (=> b!4443701 m!5133087))

(declare-fun m!5133097 () Bool)

(assert (=> b!4443701 m!5133097))

(declare-fun m!5133099 () Bool)

(assert (=> b!4443701 m!5133099))

(declare-fun m!5133101 () Bool)

(assert (=> b!4443701 m!5133101))

(declare-fun m!5133103 () Bool)

(assert (=> b!4443701 m!5133103))

(assert (=> b!4443701 m!5133091))

(declare-fun m!5133105 () Bool)

(assert (=> b!4443701 m!5133105))

(declare-fun m!5133107 () Bool)

(assert (=> b!4443704 m!5133107))

(assert (=> b!4443694 m!5133081))

(declare-fun m!5133109 () Bool)

(assert (=> b!4443693 m!5133109))

(declare-fun m!5133111 () Bool)

(assert (=> b!4443693 m!5133111))

(declare-fun m!5133113 () Bool)

(assert (=> b!4443700 m!5133113))

(declare-fun m!5133115 () Bool)

(assert (=> b!4443705 m!5133115))

(assert (=> b!4443705 m!5133115))

(declare-fun m!5133117 () Bool)

(assert (=> b!4443705 m!5133117))

(declare-fun m!5133119 () Bool)

(assert (=> b!4443692 m!5133119))

(declare-fun m!5133121 () Bool)

(assert (=> b!4443709 m!5133121))

(declare-fun m!5133123 () Bool)

(assert (=> b!4443707 m!5133123))

(declare-fun m!5133125 () Bool)

(assert (=> b!4443699 m!5133125))

(assert (=> b!4443699 m!5133125))

(declare-fun m!5133127 () Bool)

(assert (=> b!4443699 m!5133127))

(declare-fun m!5133129 () Bool)

(assert (=> b!4443699 m!5133129))

(assert (=> b!4443698 m!5133081))

(check-sat (not b!4443703) (not b!4443700) (not b!4443709) (not b!4443696) (not b!4443707) (not start!435004) (not b!4443697) (not b!4443701) (not b!4443698) tp_is_empty!26643 (not b!4443704) (not b!4443699) (not b!4443692) (not b!4443694) (not b!4443695) (not b!4443705) (not b!4443693) tp_is_empty!26641)
(check-sat)
