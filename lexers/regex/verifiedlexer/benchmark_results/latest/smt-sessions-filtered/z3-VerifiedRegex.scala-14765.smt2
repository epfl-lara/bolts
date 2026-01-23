; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!759242 () Bool)

(assert start!759242)

(declare-fun b!8057967 () Bool)

(assert (=> b!8057967 true))

(declare-fun bs!1973359 () Bool)

(declare-fun b!8057968 () Bool)

(assert (= bs!1973359 (and b!8057968 b!8057967)))

(declare-fun lambda!474869 () Int)

(declare-datatypes ((V!23212 0))(
  ( (V!23213 (val!33039 Int)) )
))
(declare-datatypes ((K!22958 0))(
  ( (K!22959 (val!33040 Int)) )
))
(declare-datatypes ((tuple2!71004 0))(
  ( (tuple2!71005 (_1!38805 K!22958) (_2!38805 V!23212)) )
))
(declare-datatypes ((List!75751 0))(
  ( (Nil!75625) (Cons!75625 (h!82073 tuple2!71004) (t!391523 List!75751)) )
))
(declare-datatypes ((ListMap!7375 0))(
  ( (ListMap!7376 (toList!11962 List!75751)) )
))
(declare-fun lt!2731637 () ListMap!7375)

(declare-fun lambda!474868 () Int)

(declare-fun acc!836 () ListMap!7375)

(assert (=> bs!1973359 (= (= lt!2731637 acc!836) (= lambda!474869 lambda!474868))))

(assert (=> b!8057968 true))

(declare-fun lambda!474870 () Int)

(assert (=> b!8057967 (= (= lt!2731637 acc!836) (= lambda!474870 lambda!474868))))

(assert (=> bs!1973359 (= lambda!474870 lambda!474869)))

(assert (=> b!8057967 true))

(declare-fun res!3187654 () Bool)

(declare-fun e!4748659 () Bool)

(assert (=> start!759242 (=> (not res!3187654) (not e!4748659))))

(declare-fun l!10976 () List!75751)

(declare-fun noDuplicateKeys!2748 (List!75751) Bool)

(assert (=> start!759242 (= res!3187654 (noDuplicateKeys!2748 l!10976))))

(assert (=> start!759242 e!4748659))

(declare-fun e!4748658 () Bool)

(assert (=> start!759242 e!4748658))

(declare-fun e!4748657 () Bool)

(declare-fun inv!97431 (ListMap!7375) Bool)

(assert (=> start!759242 (and (inv!97431 acc!836) e!4748657)))

(declare-fun contains!21296 (ListMap!7375 K!22958) Bool)

(assert (=> b!8057967 (= e!4748659 (not (contains!21296 lt!2731637 (_1!38805 (h!82073 l!10976)))))))

(declare-fun lt!2731634 () ListMap!7375)

(assert (=> b!8057967 (contains!21296 lt!2731634 (_1!38805 (h!82073 l!10976)))))

(declare-datatypes ((Unit!172640 0))(
  ( (Unit!172641) )
))
(declare-fun lt!2731635 () Unit!172640)

(declare-fun forallContained!4687 (List!75751 Int tuple2!71004) Unit!172640)

(assert (=> b!8057967 (= lt!2731635 (forallContained!4687 (toList!11962 lt!2731634) lambda!474870 (h!82073 l!10976)))))

(declare-fun e!4748660 () Bool)

(assert (=> b!8057967 e!4748660))

(declare-fun res!3187653 () Bool)

(assert (=> b!8057967 (=> (not res!3187653) (not e!4748660))))

(declare-fun forall!18542 (List!75751 Int) Bool)

(assert (=> b!8057967 (= res!3187653 (forall!18542 (toList!11962 acc!836) lambda!474868))))

(declare-fun lt!2731636 () Unit!172640)

(declare-fun lemmaContainsAllItsOwnKeys!1123 (ListMap!7375) Unit!172640)

(assert (=> b!8057967 (= lt!2731636 (lemmaContainsAllItsOwnKeys!1123 acc!836))))

(declare-fun addToMapMapFromBucket!2023 (List!75751 ListMap!7375) ListMap!7375)

(assert (=> b!8057967 (= lt!2731637 (addToMapMapFromBucket!2023 (t!391523 l!10976) lt!2731634))))

(declare-fun +!2709 (ListMap!7375 tuple2!71004) ListMap!7375)

(assert (=> b!8057967 (= lt!2731634 (+!2709 acc!836 (h!82073 l!10976)))))

(declare-fun res!3187657 () Bool)

(assert (=> b!8057968 (=> (not res!3187657) (not e!4748660))))

(assert (=> b!8057968 (= res!3187657 (forall!18542 (toList!11962 lt!2731634) lambda!474869))))

(declare-fun tp_is_empty!55133 () Bool)

(declare-fun tp_is_empty!55131 () Bool)

(declare-fun tp!2414209 () Bool)

(declare-fun b!8057969 () Bool)

(assert (=> b!8057969 (= e!4748658 (and tp_is_empty!55131 tp_is_empty!55133 tp!2414209))))

(declare-fun b!8057970 () Bool)

(assert (=> b!8057970 (= e!4748660 (= l!10976 (Cons!75625 (h!82073 l!10976) (t!391523 l!10976))))))

(declare-fun b!8057971 () Bool)

(declare-fun res!3187656 () Bool)

(assert (=> b!8057971 (=> (not res!3187656) (not e!4748660))))

(assert (=> b!8057971 (= res!3187656 (forall!18542 (t!391523 l!10976) lambda!474869))))

(declare-fun b!8057972 () Bool)

(declare-fun res!3187655 () Bool)

(assert (=> b!8057972 (=> (not res!3187655) (not e!4748659))))

(get-info :version)

(assert (=> b!8057972 (= res!3187655 (not ((_ is Nil!75625) l!10976)))))

(declare-fun b!8057973 () Bool)

(declare-fun tp!2414208 () Bool)

(assert (=> b!8057973 (= e!4748657 tp!2414208)))

(assert (= (and start!759242 res!3187654) b!8057972))

(assert (= (and b!8057972 res!3187655) b!8057967))

(assert (= (and b!8057967 res!3187653) b!8057968))

(assert (= (and b!8057968 res!3187657) b!8057971))

(assert (= (and b!8057971 res!3187656) b!8057970))

(assert (= (and start!759242 ((_ is Cons!75625) l!10976)) b!8057969))

(assert (= start!759242 b!8057973))

(declare-fun m!8411104 () Bool)

(assert (=> start!759242 m!8411104))

(declare-fun m!8411106 () Bool)

(assert (=> start!759242 m!8411106))

(declare-fun m!8411108 () Bool)

(assert (=> b!8057967 m!8411108))

(declare-fun m!8411110 () Bool)

(assert (=> b!8057967 m!8411110))

(declare-fun m!8411112 () Bool)

(assert (=> b!8057967 m!8411112))

(declare-fun m!8411114 () Bool)

(assert (=> b!8057967 m!8411114))

(declare-fun m!8411116 () Bool)

(assert (=> b!8057967 m!8411116))

(declare-fun m!8411118 () Bool)

(assert (=> b!8057967 m!8411118))

(declare-fun m!8411120 () Bool)

(assert (=> b!8057967 m!8411120))

(declare-fun m!8411122 () Bool)

(assert (=> b!8057968 m!8411122))

(declare-fun m!8411124 () Bool)

(assert (=> b!8057971 m!8411124))

(check-sat tp_is_empty!55133 (not b!8057969) (not start!759242) (not b!8057968) tp_is_empty!55131 (not b!8057971) (not b!8057973) (not b!8057967))
(check-sat)
(get-model)

(declare-fun d!2399010 () Bool)

(declare-fun dynLambda!30278 (Int tuple2!71004) Bool)

(assert (=> d!2399010 (dynLambda!30278 lambda!474870 (h!82073 l!10976))))

(declare-fun lt!2731640 () Unit!172640)

(declare-fun choose!60571 (List!75751 Int tuple2!71004) Unit!172640)

(assert (=> d!2399010 (= lt!2731640 (choose!60571 (toList!11962 lt!2731634) lambda!474870 (h!82073 l!10976)))))

(declare-fun e!4748669 () Bool)

(assert (=> d!2399010 e!4748669))

(declare-fun res!3187666 () Bool)

(assert (=> d!2399010 (=> (not res!3187666) (not e!4748669))))

(assert (=> d!2399010 (= res!3187666 (forall!18542 (toList!11962 lt!2731634) lambda!474870))))

(assert (=> d!2399010 (= (forallContained!4687 (toList!11962 lt!2731634) lambda!474870 (h!82073 l!10976)) lt!2731640)))

(declare-fun b!8057984 () Bool)

(declare-fun contains!21297 (List!75751 tuple2!71004) Bool)

(assert (=> b!8057984 (= e!4748669 (contains!21297 (toList!11962 lt!2731634) (h!82073 l!10976)))))

(assert (= (and d!2399010 res!3187666) b!8057984))

(declare-fun b_lambda!290611 () Bool)

(assert (=> (not b_lambda!290611) (not d!2399010)))

(declare-fun m!8411130 () Bool)

(assert (=> d!2399010 m!8411130))

(declare-fun m!8411132 () Bool)

(assert (=> d!2399010 m!8411132))

(declare-fun m!8411134 () Bool)

(assert (=> d!2399010 m!8411134))

(declare-fun m!8411136 () Bool)

(assert (=> b!8057984 m!8411136))

(assert (=> b!8057967 d!2399010))

(declare-fun b!8058003 () Bool)

(assert (=> b!8058003 false))

(declare-fun lt!2731662 () Unit!172640)

(declare-fun lt!2731657 () Unit!172640)

(assert (=> b!8058003 (= lt!2731662 lt!2731657)))

(declare-fun containsKey!4922 (List!75751 K!22958) Bool)

(assert (=> b!8058003 (containsKey!4922 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976)))))

(declare-fun lemmaInGetKeysListThenContainsKey!1263 (List!75751 K!22958) Unit!172640)

(assert (=> b!8058003 (= lt!2731657 (lemmaInGetKeysListThenContainsKey!1263 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(declare-fun e!4748685 () Unit!172640)

(declare-fun Unit!172642 () Unit!172640)

(assert (=> b!8058003 (= e!4748685 Unit!172642)))

(declare-fun b!8058004 () Bool)

(declare-fun e!4748686 () Unit!172640)

(assert (=> b!8058004 (= e!4748686 e!4748685)))

(declare-fun c!1476726 () Bool)

(declare-fun call!747616 () Bool)

(assert (=> b!8058004 (= c!1476726 call!747616)))

(declare-fun b!8058005 () Bool)

(declare-datatypes ((List!75752 0))(
  ( (Nil!75626) (Cons!75626 (h!82074 K!22958) (t!391524 List!75752)) )
))
(declare-fun e!4748683 () List!75752)

(declare-fun getKeysList!1263 (List!75751) List!75752)

(assert (=> b!8058005 (= e!4748683 (getKeysList!1263 (toList!11962 lt!2731637)))))

(declare-fun b!8058006 () Bool)

(declare-fun e!4748687 () Bool)

(declare-fun contains!21298 (List!75752 K!22958) Bool)

(declare-fun keys!30916 (ListMap!7375) List!75752)

(assert (=> b!8058006 (= e!4748687 (contains!21298 (keys!30916 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(declare-fun b!8058007 () Bool)

(declare-fun lt!2731663 () Unit!172640)

(assert (=> b!8058007 (= e!4748686 lt!2731663)))

(declare-fun lt!2731658 () Unit!172640)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2575 (List!75751 K!22958) Unit!172640)

(assert (=> b!8058007 (= lt!2731658 (lemmaContainsKeyImpliesGetValueByKeyDefined!2575 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(declare-datatypes ((Option!18024 0))(
  ( (None!18023) (Some!18023 (v!55380 V!23212)) )
))
(declare-fun isDefined!14553 (Option!18024) Bool)

(declare-fun getValueByKey!2808 (List!75751 K!22958) Option!18024)

(assert (=> b!8058007 (isDefined!14553 (getValueByKey!2808 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(declare-fun lt!2731661 () Unit!172640)

(assert (=> b!8058007 (= lt!2731661 lt!2731658)))

(declare-fun lemmaInListThenGetKeysListContains!1258 (List!75751 K!22958) Unit!172640)

(assert (=> b!8058007 (= lt!2731663 (lemmaInListThenGetKeysListContains!1258 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(assert (=> b!8058007 call!747616))

(declare-fun b!8058008 () Bool)

(declare-fun Unit!172643 () Unit!172640)

(assert (=> b!8058008 (= e!4748685 Unit!172643)))

(declare-fun b!8058009 () Bool)

(assert (=> b!8058009 (= e!4748683 (keys!30916 lt!2731637))))

(declare-fun b!8058010 () Bool)

(declare-fun e!4748684 () Bool)

(assert (=> b!8058010 (= e!4748684 e!4748687)))

(declare-fun res!3187673 () Bool)

(assert (=> b!8058010 (=> (not res!3187673) (not e!4748687))))

(assert (=> b!8058010 (= res!3187673 (isDefined!14553 (getValueByKey!2808 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976)))))))

(declare-fun b!8058011 () Bool)

(declare-fun e!4748682 () Bool)

(assert (=> b!8058011 (= e!4748682 (not (contains!21298 (keys!30916 lt!2731637) (_1!38805 (h!82073 l!10976)))))))

(declare-fun bm!747611 () Bool)

(assert (=> bm!747611 (= call!747616 (contains!21298 e!4748683 (_1!38805 (h!82073 l!10976))))))

(declare-fun c!1476728 () Bool)

(declare-fun c!1476727 () Bool)

(assert (=> bm!747611 (= c!1476728 c!1476727)))

(declare-fun d!2399016 () Bool)

(assert (=> d!2399016 e!4748684))

(declare-fun res!3187675 () Bool)

(assert (=> d!2399016 (=> res!3187675 e!4748684)))

(assert (=> d!2399016 (= res!3187675 e!4748682)))

(declare-fun res!3187674 () Bool)

(assert (=> d!2399016 (=> (not res!3187674) (not e!4748682))))

(declare-fun lt!2731659 () Bool)

(assert (=> d!2399016 (= res!3187674 (not lt!2731659))))

(declare-fun lt!2731664 () Bool)

(assert (=> d!2399016 (= lt!2731659 lt!2731664)))

(declare-fun lt!2731660 () Unit!172640)

(assert (=> d!2399016 (= lt!2731660 e!4748686)))

(assert (=> d!2399016 (= c!1476727 lt!2731664)))

(assert (=> d!2399016 (= lt!2731664 (containsKey!4922 (toList!11962 lt!2731637) (_1!38805 (h!82073 l!10976))))))

(assert (=> d!2399016 (= (contains!21296 lt!2731637 (_1!38805 (h!82073 l!10976))) lt!2731659)))

(assert (= (and d!2399016 c!1476727) b!8058007))

(assert (= (and d!2399016 (not c!1476727)) b!8058004))

(assert (= (and b!8058004 c!1476726) b!8058003))

(assert (= (and b!8058004 (not c!1476726)) b!8058008))

(assert (= (or b!8058007 b!8058004) bm!747611))

(assert (= (and bm!747611 c!1476728) b!8058005))

(assert (= (and bm!747611 (not c!1476728)) b!8058009))

(assert (= (and d!2399016 res!3187674) b!8058011))

(assert (= (and d!2399016 (not res!3187675)) b!8058010))

(assert (= (and b!8058010 res!3187673) b!8058006))

(declare-fun m!8411140 () Bool)

(assert (=> b!8058005 m!8411140))

(declare-fun m!8411142 () Bool)

(assert (=> b!8058007 m!8411142))

(declare-fun m!8411144 () Bool)

(assert (=> b!8058007 m!8411144))

(assert (=> b!8058007 m!8411144))

(declare-fun m!8411146 () Bool)

(assert (=> b!8058007 m!8411146))

(declare-fun m!8411148 () Bool)

(assert (=> b!8058007 m!8411148))

(declare-fun m!8411150 () Bool)

(assert (=> b!8058009 m!8411150))

(declare-fun m!8411152 () Bool)

(assert (=> bm!747611 m!8411152))

(declare-fun m!8411154 () Bool)

(assert (=> b!8058003 m!8411154))

(declare-fun m!8411156 () Bool)

(assert (=> b!8058003 m!8411156))

(assert (=> d!2399016 m!8411154))

(assert (=> b!8058011 m!8411150))

(assert (=> b!8058011 m!8411150))

(declare-fun m!8411158 () Bool)

(assert (=> b!8058011 m!8411158))

(assert (=> b!8058006 m!8411150))

(assert (=> b!8058006 m!8411150))

(assert (=> b!8058006 m!8411158))

(assert (=> b!8058010 m!8411144))

(assert (=> b!8058010 m!8411144))

(assert (=> b!8058010 m!8411146))

(assert (=> b!8057967 d!2399016))

(declare-fun d!2399020 () Bool)

(declare-fun e!4748690 () Bool)

(assert (=> d!2399020 e!4748690))

(declare-fun res!3187681 () Bool)

(assert (=> d!2399020 (=> (not res!3187681) (not e!4748690))))

(declare-fun lt!2731676 () ListMap!7375)

(assert (=> d!2399020 (= res!3187681 (contains!21296 lt!2731676 (_1!38805 (h!82073 l!10976))))))

(declare-fun lt!2731675 () List!75751)

(assert (=> d!2399020 (= lt!2731676 (ListMap!7376 lt!2731675))))

(declare-fun lt!2731674 () Unit!172640)

(declare-fun lt!2731673 () Unit!172640)

(assert (=> d!2399020 (= lt!2731674 lt!2731673)))

(assert (=> d!2399020 (= (getValueByKey!2808 lt!2731675 (_1!38805 (h!82073 l!10976))) (Some!18023 (_2!38805 (h!82073 l!10976))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1301 (List!75751 K!22958 V!23212) Unit!172640)

(assert (=> d!2399020 (= lt!2731673 (lemmaContainsTupThenGetReturnValue!1301 lt!2731675 (_1!38805 (h!82073 l!10976)) (_2!38805 (h!82073 l!10976))))))

(declare-fun insertNoDuplicatedKeys!809 (List!75751 K!22958 V!23212) List!75751)

(assert (=> d!2399020 (= lt!2731675 (insertNoDuplicatedKeys!809 (toList!11962 acc!836) (_1!38805 (h!82073 l!10976)) (_2!38805 (h!82073 l!10976))))))

(assert (=> d!2399020 (= (+!2709 acc!836 (h!82073 l!10976)) lt!2731676)))

(declare-fun b!8058016 () Bool)

(declare-fun res!3187680 () Bool)

(assert (=> b!8058016 (=> (not res!3187680) (not e!4748690))))

(assert (=> b!8058016 (= res!3187680 (= (getValueByKey!2808 (toList!11962 lt!2731676) (_1!38805 (h!82073 l!10976))) (Some!18023 (_2!38805 (h!82073 l!10976)))))))

(declare-fun b!8058017 () Bool)

(assert (=> b!8058017 (= e!4748690 (contains!21297 (toList!11962 lt!2731676) (h!82073 l!10976)))))

(assert (= (and d!2399020 res!3187681) b!8058016))

(assert (= (and b!8058016 res!3187680) b!8058017))

(declare-fun m!8411160 () Bool)

(assert (=> d!2399020 m!8411160))

(declare-fun m!8411162 () Bool)

(assert (=> d!2399020 m!8411162))

(declare-fun m!8411164 () Bool)

(assert (=> d!2399020 m!8411164))

(declare-fun m!8411166 () Bool)

(assert (=> d!2399020 m!8411166))

(declare-fun m!8411168 () Bool)

(assert (=> b!8058016 m!8411168))

(declare-fun m!8411170 () Bool)

(assert (=> b!8058017 m!8411170))

(assert (=> b!8057967 d!2399020))

(declare-fun d!2399022 () Bool)

(declare-fun res!3187686 () Bool)

(declare-fun e!4748695 () Bool)

(assert (=> d!2399022 (=> res!3187686 e!4748695)))

(assert (=> d!2399022 (= res!3187686 ((_ is Nil!75625) (toList!11962 acc!836)))))

(assert (=> d!2399022 (= (forall!18542 (toList!11962 acc!836) lambda!474868) e!4748695)))

(declare-fun b!8058022 () Bool)

(declare-fun e!4748696 () Bool)

(assert (=> b!8058022 (= e!4748695 e!4748696)))

(declare-fun res!3187687 () Bool)

(assert (=> b!8058022 (=> (not res!3187687) (not e!4748696))))

(assert (=> b!8058022 (= res!3187687 (dynLambda!30278 lambda!474868 (h!82073 (toList!11962 acc!836))))))

(declare-fun b!8058023 () Bool)

(assert (=> b!8058023 (= e!4748696 (forall!18542 (t!391523 (toList!11962 acc!836)) lambda!474868))))

(assert (= (and d!2399022 (not res!3187686)) b!8058022))

(assert (= (and b!8058022 res!3187687) b!8058023))

(declare-fun b_lambda!290613 () Bool)

(assert (=> (not b_lambda!290613) (not b!8058022)))

(declare-fun m!8411172 () Bool)

(assert (=> b!8058022 m!8411172))

(declare-fun m!8411174 () Bool)

(assert (=> b!8058023 m!8411174))

(assert (=> b!8057967 d!2399022))

(declare-fun b!8058024 () Bool)

(assert (=> b!8058024 false))

(declare-fun lt!2731682 () Unit!172640)

(declare-fun lt!2731677 () Unit!172640)

(assert (=> b!8058024 (= lt!2731682 lt!2731677)))

(assert (=> b!8058024 (containsKey!4922 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976)))))

(assert (=> b!8058024 (= lt!2731677 (lemmaInGetKeysListThenContainsKey!1263 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(declare-fun e!4748700 () Unit!172640)

(declare-fun Unit!172655 () Unit!172640)

(assert (=> b!8058024 (= e!4748700 Unit!172655)))

(declare-fun b!8058025 () Bool)

(declare-fun e!4748701 () Unit!172640)

(assert (=> b!8058025 (= e!4748701 e!4748700)))

(declare-fun c!1476729 () Bool)

(declare-fun call!747617 () Bool)

(assert (=> b!8058025 (= c!1476729 call!747617)))

(declare-fun b!8058026 () Bool)

(declare-fun e!4748698 () List!75752)

(assert (=> b!8058026 (= e!4748698 (getKeysList!1263 (toList!11962 lt!2731634)))))

(declare-fun b!8058027 () Bool)

(declare-fun e!4748702 () Bool)

(assert (=> b!8058027 (= e!4748702 (contains!21298 (keys!30916 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(declare-fun b!8058028 () Bool)

(declare-fun lt!2731683 () Unit!172640)

(assert (=> b!8058028 (= e!4748701 lt!2731683)))

(declare-fun lt!2731678 () Unit!172640)

(assert (=> b!8058028 (= lt!2731678 (lemmaContainsKeyImpliesGetValueByKeyDefined!2575 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(assert (=> b!8058028 (isDefined!14553 (getValueByKey!2808 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(declare-fun lt!2731681 () Unit!172640)

(assert (=> b!8058028 (= lt!2731681 lt!2731678)))

(assert (=> b!8058028 (= lt!2731683 (lemmaInListThenGetKeysListContains!1258 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(assert (=> b!8058028 call!747617))

(declare-fun b!8058029 () Bool)

(declare-fun Unit!172656 () Unit!172640)

(assert (=> b!8058029 (= e!4748700 Unit!172656)))

(declare-fun b!8058030 () Bool)

(assert (=> b!8058030 (= e!4748698 (keys!30916 lt!2731634))))

(declare-fun b!8058031 () Bool)

(declare-fun e!4748699 () Bool)

(assert (=> b!8058031 (= e!4748699 e!4748702)))

(declare-fun res!3187688 () Bool)

(assert (=> b!8058031 (=> (not res!3187688) (not e!4748702))))

(assert (=> b!8058031 (= res!3187688 (isDefined!14553 (getValueByKey!2808 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976)))))))

(declare-fun b!8058032 () Bool)

(declare-fun e!4748697 () Bool)

(assert (=> b!8058032 (= e!4748697 (not (contains!21298 (keys!30916 lt!2731634) (_1!38805 (h!82073 l!10976)))))))

(declare-fun bm!747612 () Bool)

(assert (=> bm!747612 (= call!747617 (contains!21298 e!4748698 (_1!38805 (h!82073 l!10976))))))

(declare-fun c!1476731 () Bool)

(declare-fun c!1476730 () Bool)

(assert (=> bm!747612 (= c!1476731 c!1476730)))

(declare-fun d!2399024 () Bool)

(assert (=> d!2399024 e!4748699))

(declare-fun res!3187690 () Bool)

(assert (=> d!2399024 (=> res!3187690 e!4748699)))

(assert (=> d!2399024 (= res!3187690 e!4748697)))

(declare-fun res!3187689 () Bool)

(assert (=> d!2399024 (=> (not res!3187689) (not e!4748697))))

(declare-fun lt!2731679 () Bool)

(assert (=> d!2399024 (= res!3187689 (not lt!2731679))))

(declare-fun lt!2731684 () Bool)

(assert (=> d!2399024 (= lt!2731679 lt!2731684)))

(declare-fun lt!2731680 () Unit!172640)

(assert (=> d!2399024 (= lt!2731680 e!4748701)))

(assert (=> d!2399024 (= c!1476730 lt!2731684)))

(assert (=> d!2399024 (= lt!2731684 (containsKey!4922 (toList!11962 lt!2731634) (_1!38805 (h!82073 l!10976))))))

(assert (=> d!2399024 (= (contains!21296 lt!2731634 (_1!38805 (h!82073 l!10976))) lt!2731679)))

(assert (= (and d!2399024 c!1476730) b!8058028))

(assert (= (and d!2399024 (not c!1476730)) b!8058025))

(assert (= (and b!8058025 c!1476729) b!8058024))

(assert (= (and b!8058025 (not c!1476729)) b!8058029))

(assert (= (or b!8058028 b!8058025) bm!747612))

(assert (= (and bm!747612 c!1476731) b!8058026))

(assert (= (and bm!747612 (not c!1476731)) b!8058030))

(assert (= (and d!2399024 res!3187689) b!8058032))

(assert (= (and d!2399024 (not res!3187690)) b!8058031))

(assert (= (and b!8058031 res!3187688) b!8058027))

(declare-fun m!8411176 () Bool)

(assert (=> b!8058026 m!8411176))

(declare-fun m!8411178 () Bool)

(assert (=> b!8058028 m!8411178))

(declare-fun m!8411180 () Bool)

(assert (=> b!8058028 m!8411180))

(assert (=> b!8058028 m!8411180))

(declare-fun m!8411182 () Bool)

(assert (=> b!8058028 m!8411182))

(declare-fun m!8411184 () Bool)

(assert (=> b!8058028 m!8411184))

(declare-fun m!8411186 () Bool)

(assert (=> b!8058030 m!8411186))

(declare-fun m!8411188 () Bool)

(assert (=> bm!747612 m!8411188))

(declare-fun m!8411190 () Bool)

(assert (=> b!8058024 m!8411190))

(declare-fun m!8411192 () Bool)

(assert (=> b!8058024 m!8411192))

(assert (=> d!2399024 m!8411190))

(assert (=> b!8058032 m!8411186))

(assert (=> b!8058032 m!8411186))

(declare-fun m!8411194 () Bool)

(assert (=> b!8058032 m!8411194))

(assert (=> b!8058027 m!8411186))

(assert (=> b!8058027 m!8411186))

(assert (=> b!8058027 m!8411194))

(assert (=> b!8058031 m!8411180))

(assert (=> b!8058031 m!8411180))

(assert (=> b!8058031 m!8411182))

(assert (=> b!8057967 d!2399024))

(declare-fun bs!1973361 () Bool)

(declare-fun d!2399026 () Bool)

(assert (= bs!1973361 (and d!2399026 b!8057967)))

(declare-fun lambda!474873 () Int)

(assert (=> bs!1973361 (= lambda!474873 lambda!474868)))

(declare-fun bs!1973362 () Bool)

(assert (= bs!1973362 (and d!2399026 b!8057968)))

(assert (=> bs!1973362 (= (= acc!836 lt!2731637) (= lambda!474873 lambda!474869))))

(assert (=> bs!1973361 (= (= acc!836 lt!2731637) (= lambda!474873 lambda!474870))))

(assert (=> d!2399026 true))

(assert (=> d!2399026 (forall!18542 (toList!11962 acc!836) lambda!474873)))

(declare-fun lt!2731687 () Unit!172640)

(declare-fun choose!60572 (ListMap!7375) Unit!172640)

(assert (=> d!2399026 (= lt!2731687 (choose!60572 acc!836))))

(assert (=> d!2399026 (= (lemmaContainsAllItsOwnKeys!1123 acc!836) lt!2731687)))

(declare-fun bs!1973363 () Bool)

(assert (= bs!1973363 d!2399026))

(declare-fun m!8411196 () Bool)

(assert (=> bs!1973363 m!8411196))

(declare-fun m!8411198 () Bool)

(assert (=> bs!1973363 m!8411198))

(assert (=> b!8057967 d!2399026))

(declare-fun bs!1973373 () Bool)

(declare-fun b!8058106 () Bool)

(assert (= bs!1973373 (and b!8058106 b!8057967)))

(declare-fun lambda!474934 () Int)

(assert (=> bs!1973373 (= (= lt!2731634 acc!836) (= lambda!474934 lambda!474868))))

(declare-fun bs!1973374 () Bool)

(assert (= bs!1973374 (and b!8058106 b!8057968)))

(assert (=> bs!1973374 (= (= lt!2731634 lt!2731637) (= lambda!474934 lambda!474869))))

(assert (=> bs!1973373 (= (= lt!2731634 lt!2731637) (= lambda!474934 lambda!474870))))

(declare-fun bs!1973375 () Bool)

(assert (= bs!1973375 (and b!8058106 d!2399026)))

(assert (=> bs!1973375 (= (= lt!2731634 acc!836) (= lambda!474934 lambda!474873))))

(assert (=> b!8058106 true))

(declare-fun bs!1973376 () Bool)

(declare-fun b!8058109 () Bool)

(assert (= bs!1973376 (and b!8058109 d!2399026)))

(declare-fun lambda!474935 () Int)

(assert (=> bs!1973376 (= (= lt!2731634 acc!836) (= lambda!474935 lambda!474873))))

(declare-fun bs!1973377 () Bool)

(assert (= bs!1973377 (and b!8058109 b!8057968)))

(assert (=> bs!1973377 (= (= lt!2731634 lt!2731637) (= lambda!474935 lambda!474869))))

(declare-fun bs!1973378 () Bool)

(assert (= bs!1973378 (and b!8058109 b!8057967)))

(assert (=> bs!1973378 (= (= lt!2731634 lt!2731637) (= lambda!474935 lambda!474870))))

(declare-fun bs!1973379 () Bool)

(assert (= bs!1973379 (and b!8058109 b!8058106)))

(assert (=> bs!1973379 (= lambda!474935 lambda!474934)))

(assert (=> bs!1973378 (= (= lt!2731634 acc!836) (= lambda!474935 lambda!474868))))

(assert (=> b!8058109 true))

(declare-fun lt!2731840 () ListMap!7375)

(declare-fun lambda!474936 () Int)

(assert (=> bs!1973376 (= (= lt!2731840 acc!836) (= lambda!474936 lambda!474873))))

(assert (=> bs!1973378 (= (= lt!2731840 lt!2731637) (= lambda!474936 lambda!474870))))

(assert (=> bs!1973379 (= (= lt!2731840 lt!2731634) (= lambda!474936 lambda!474934))))

(assert (=> bs!1973378 (= (= lt!2731840 acc!836) (= lambda!474936 lambda!474868))))

(assert (=> b!8058109 (= (= lt!2731840 lt!2731634) (= lambda!474936 lambda!474935))))

(assert (=> bs!1973377 (= (= lt!2731840 lt!2731637) (= lambda!474936 lambda!474869))))

(assert (=> b!8058109 true))

(declare-fun bs!1973380 () Bool)

(declare-fun d!2399028 () Bool)

(assert (= bs!1973380 (and d!2399028 d!2399026)))

(declare-fun lambda!474937 () Int)

(declare-fun lt!2731857 () ListMap!7375)

(assert (=> bs!1973380 (= (= lt!2731857 acc!836) (= lambda!474937 lambda!474873))))

(declare-fun bs!1973381 () Bool)

(assert (= bs!1973381 (and d!2399028 b!8057967)))

(assert (=> bs!1973381 (= (= lt!2731857 lt!2731637) (= lambda!474937 lambda!474870))))

(declare-fun bs!1973382 () Bool)

(assert (= bs!1973382 (and d!2399028 b!8058109)))

(assert (=> bs!1973382 (= (= lt!2731857 lt!2731840) (= lambda!474937 lambda!474936))))

(declare-fun bs!1973383 () Bool)

(assert (= bs!1973383 (and d!2399028 b!8058106)))

(assert (=> bs!1973383 (= (= lt!2731857 lt!2731634) (= lambda!474937 lambda!474934))))

(assert (=> bs!1973381 (= (= lt!2731857 acc!836) (= lambda!474937 lambda!474868))))

(assert (=> bs!1973382 (= (= lt!2731857 lt!2731634) (= lambda!474937 lambda!474935))))

(declare-fun bs!1973384 () Bool)

(assert (= bs!1973384 (and d!2399028 b!8057968)))

(assert (=> bs!1973384 (= (= lt!2731857 lt!2731637) (= lambda!474937 lambda!474869))))

(assert (=> d!2399028 true))

(declare-fun bm!747632 () Bool)

(declare-fun c!1476749 () Bool)

(declare-fun call!747639 () Bool)

(assert (=> bm!747632 (= call!747639 (forall!18542 (toList!11962 lt!2731634) (ite c!1476749 lambda!474934 lambda!474935)))))

(declare-fun e!4748752 () ListMap!7375)

(assert (=> b!8058106 (= e!4748752 lt!2731634)))

(declare-fun lt!2731843 () Unit!172640)

(declare-fun call!747637 () Unit!172640)

(assert (=> b!8058106 (= lt!2731843 call!747637)))

(assert (=> b!8058106 call!747639))

(declare-fun lt!2731853 () Unit!172640)

(assert (=> b!8058106 (= lt!2731853 lt!2731843)))

(declare-fun call!747638 () Bool)

(assert (=> b!8058106 call!747638))

(declare-fun lt!2731839 () Unit!172640)

(declare-fun Unit!172659 () Unit!172640)

(assert (=> b!8058106 (= lt!2731839 Unit!172659)))

(declare-fun bm!747633 () Bool)

(assert (=> bm!747633 (= call!747637 (lemmaContainsAllItsOwnKeys!1123 lt!2731634))))

(declare-fun e!4748753 () Bool)

(assert (=> d!2399028 e!4748753))

(declare-fun res!3187732 () Bool)

(assert (=> d!2399028 (=> (not res!3187732) (not e!4748753))))

(assert (=> d!2399028 (= res!3187732 (forall!18542 (t!391523 l!10976) lambda!474937))))

(assert (=> d!2399028 (= lt!2731857 e!4748752)))

(assert (=> d!2399028 (= c!1476749 ((_ is Nil!75625) (t!391523 l!10976)))))

(assert (=> d!2399028 (noDuplicateKeys!2748 (t!391523 l!10976))))

(assert (=> d!2399028 (= (addToMapMapFromBucket!2023 (t!391523 l!10976) lt!2731634) lt!2731857)))

(declare-fun b!8058107 () Bool)

(declare-fun e!4748751 () Bool)

(assert (=> b!8058107 (= e!4748751 (forall!18542 (toList!11962 lt!2731634) lambda!474936))))

(declare-fun b!8058108 () Bool)

(declare-fun invariantList!1963 (List!75751) Bool)

(assert (=> b!8058108 (= e!4748753 (invariantList!1963 (toList!11962 lt!2731857)))))

(assert (=> b!8058109 (= e!4748752 lt!2731840)))

(declare-fun lt!2731855 () ListMap!7375)

(assert (=> b!8058109 (= lt!2731855 (+!2709 lt!2731634 (h!82073 (t!391523 l!10976))))))

(assert (=> b!8058109 (= lt!2731840 (addToMapMapFromBucket!2023 (t!391523 (t!391523 l!10976)) (+!2709 lt!2731634 (h!82073 (t!391523 l!10976)))))))

(declare-fun lt!2731847 () Unit!172640)

(assert (=> b!8058109 (= lt!2731847 call!747637)))

(assert (=> b!8058109 call!747639))

(declare-fun lt!2731851 () Unit!172640)

(assert (=> b!8058109 (= lt!2731851 lt!2731847)))

(assert (=> b!8058109 (forall!18542 (toList!11962 lt!2731855) lambda!474936)))

(declare-fun lt!2731856 () Unit!172640)

(declare-fun Unit!172660 () Unit!172640)

(assert (=> b!8058109 (= lt!2731856 Unit!172660)))

(assert (=> b!8058109 (forall!18542 (t!391523 (t!391523 l!10976)) lambda!474936)))

(declare-fun lt!2731848 () Unit!172640)

(declare-fun Unit!172661 () Unit!172640)

(assert (=> b!8058109 (= lt!2731848 Unit!172661)))

(declare-fun lt!2731850 () Unit!172640)

(declare-fun Unit!172662 () Unit!172640)

(assert (=> b!8058109 (= lt!2731850 Unit!172662)))

(declare-fun lt!2731841 () Unit!172640)

(assert (=> b!8058109 (= lt!2731841 (forallContained!4687 (toList!11962 lt!2731855) lambda!474936 (h!82073 (t!391523 l!10976))))))

(assert (=> b!8058109 (contains!21296 lt!2731855 (_1!38805 (h!82073 (t!391523 l!10976))))))

(declare-fun lt!2731849 () Unit!172640)

(declare-fun Unit!172664 () Unit!172640)

(assert (=> b!8058109 (= lt!2731849 Unit!172664)))

(assert (=> b!8058109 (contains!21296 lt!2731840 (_1!38805 (h!82073 (t!391523 l!10976))))))

(declare-fun lt!2731852 () Unit!172640)

(declare-fun Unit!172665 () Unit!172640)

(assert (=> b!8058109 (= lt!2731852 Unit!172665)))

(assert (=> b!8058109 (forall!18542 (t!391523 l!10976) lambda!474936)))

(declare-fun lt!2731854 () Unit!172640)

(declare-fun Unit!172666 () Unit!172640)

(assert (=> b!8058109 (= lt!2731854 Unit!172666)))

(assert (=> b!8058109 (forall!18542 (toList!11962 lt!2731855) lambda!474936)))

(declare-fun lt!2731844 () Unit!172640)

(declare-fun Unit!172667 () Unit!172640)

(assert (=> b!8058109 (= lt!2731844 Unit!172667)))

(declare-fun lt!2731842 () Unit!172640)

(declare-fun Unit!172668 () Unit!172640)

(assert (=> b!8058109 (= lt!2731842 Unit!172668)))

(declare-fun lt!2731845 () Unit!172640)

(declare-fun addForallContainsKeyThenBeforeAdding!1109 (ListMap!7375 ListMap!7375 K!22958 V!23212) Unit!172640)

(assert (=> b!8058109 (= lt!2731845 (addForallContainsKeyThenBeforeAdding!1109 lt!2731634 lt!2731840 (_1!38805 (h!82073 (t!391523 l!10976))) (_2!38805 (h!82073 (t!391523 l!10976)))))))

(assert (=> b!8058109 (forall!18542 (toList!11962 lt!2731634) lambda!474936)))

(declare-fun lt!2731846 () Unit!172640)

(assert (=> b!8058109 (= lt!2731846 lt!2731845)))

(assert (=> b!8058109 call!747638))

(declare-fun lt!2731838 () Unit!172640)

(declare-fun Unit!172669 () Unit!172640)

(assert (=> b!8058109 (= lt!2731838 Unit!172669)))

(declare-fun res!3187731 () Bool)

(assert (=> b!8058109 (= res!3187731 (forall!18542 (t!391523 l!10976) lambda!474936))))

(assert (=> b!8058109 (=> (not res!3187731) (not e!4748751))))

(assert (=> b!8058109 e!4748751))

(declare-fun lt!2731837 () Unit!172640)

(declare-fun Unit!172671 () Unit!172640)

(assert (=> b!8058109 (= lt!2731837 Unit!172671)))

(declare-fun b!8058110 () Bool)

(declare-fun res!3187730 () Bool)

(assert (=> b!8058110 (=> (not res!3187730) (not e!4748753))))

(assert (=> b!8058110 (= res!3187730 (forall!18542 (toList!11962 lt!2731634) lambda!474937))))

(declare-fun bm!747634 () Bool)

(assert (=> bm!747634 (= call!747638 (forall!18542 (toList!11962 lt!2731634) (ite c!1476749 lambda!474934 lambda!474936)))))

(assert (= (and d!2399028 c!1476749) b!8058106))

(assert (= (and d!2399028 (not c!1476749)) b!8058109))

(assert (= (and b!8058109 res!3187731) b!8058107))

(assert (= (or b!8058106 b!8058109) bm!747634))

(assert (= (or b!8058106 b!8058109) bm!747632))

(assert (= (or b!8058106 b!8058109) bm!747633))

(assert (= (and d!2399028 res!3187732) b!8058110))

(assert (= (and b!8058110 res!3187730) b!8058108))

(declare-fun m!8411296 () Bool)

(assert (=> b!8058109 m!8411296))

(declare-fun m!8411298 () Bool)

(assert (=> b!8058109 m!8411298))

(declare-fun m!8411300 () Bool)

(assert (=> b!8058109 m!8411300))

(declare-fun m!8411302 () Bool)

(assert (=> b!8058109 m!8411302))

(declare-fun m!8411304 () Bool)

(assert (=> b!8058109 m!8411304))

(assert (=> b!8058109 m!8411298))

(declare-fun m!8411306 () Bool)

(assert (=> b!8058109 m!8411306))

(declare-fun m!8411308 () Bool)

(assert (=> b!8058109 m!8411308))

(assert (=> b!8058109 m!8411304))

(assert (=> b!8058109 m!8411302))

(declare-fun m!8411310 () Bool)

(assert (=> b!8058109 m!8411310))

(declare-fun m!8411312 () Bool)

(assert (=> b!8058109 m!8411312))

(declare-fun m!8411314 () Bool)

(assert (=> b!8058109 m!8411314))

(declare-fun m!8411316 () Bool)

(assert (=> bm!747633 m!8411316))

(declare-fun m!8411318 () Bool)

(assert (=> bm!747634 m!8411318))

(declare-fun m!8411320 () Bool)

(assert (=> b!8058108 m!8411320))

(declare-fun m!8411322 () Bool)

(assert (=> d!2399028 m!8411322))

(declare-fun m!8411324 () Bool)

(assert (=> d!2399028 m!8411324))

(declare-fun m!8411326 () Bool)

(assert (=> bm!747632 m!8411326))

(assert (=> b!8058107 m!8411296))

(declare-fun m!8411328 () Bool)

(assert (=> b!8058110 m!8411328))

(assert (=> b!8057967 d!2399028))

(declare-fun d!2399042 () Bool)

(declare-fun res!3187740 () Bool)

(declare-fun e!4748761 () Bool)

(assert (=> d!2399042 (=> res!3187740 e!4748761)))

(assert (=> d!2399042 (= res!3187740 (not ((_ is Cons!75625) l!10976)))))

(assert (=> d!2399042 (= (noDuplicateKeys!2748 l!10976) e!4748761)))

(declare-fun b!8058118 () Bool)

(declare-fun e!4748762 () Bool)

(assert (=> b!8058118 (= e!4748761 e!4748762)))

(declare-fun res!3187741 () Bool)

(assert (=> b!8058118 (=> (not res!3187741) (not e!4748762))))

(declare-fun containsKey!4924 (List!75751 K!22958) Bool)

(assert (=> b!8058118 (= res!3187741 (not (containsKey!4924 (t!391523 l!10976) (_1!38805 (h!82073 l!10976)))))))

(declare-fun b!8058119 () Bool)

(assert (=> b!8058119 (= e!4748762 (noDuplicateKeys!2748 (t!391523 l!10976)))))

(assert (= (and d!2399042 (not res!3187740)) b!8058118))

(assert (= (and b!8058118 res!3187741) b!8058119))

(declare-fun m!8411330 () Bool)

(assert (=> b!8058118 m!8411330))

(assert (=> b!8058119 m!8411324))

(assert (=> start!759242 d!2399042))

(declare-fun d!2399044 () Bool)

(assert (=> d!2399044 (= (inv!97431 acc!836) (invariantList!1963 (toList!11962 acc!836)))))

(declare-fun bs!1973391 () Bool)

(assert (= bs!1973391 d!2399044))

(declare-fun m!8411340 () Bool)

(assert (=> bs!1973391 m!8411340))

(assert (=> start!759242 d!2399044))

(declare-fun d!2399050 () Bool)

(declare-fun res!3187746 () Bool)

(declare-fun e!4748767 () Bool)

(assert (=> d!2399050 (=> res!3187746 e!4748767)))

(assert (=> d!2399050 (= res!3187746 ((_ is Nil!75625) (toList!11962 lt!2731634)))))

(assert (=> d!2399050 (= (forall!18542 (toList!11962 lt!2731634) lambda!474869) e!4748767)))

(declare-fun b!8058124 () Bool)

(declare-fun e!4748768 () Bool)

(assert (=> b!8058124 (= e!4748767 e!4748768)))

(declare-fun res!3187747 () Bool)

(assert (=> b!8058124 (=> (not res!3187747) (not e!4748768))))

(assert (=> b!8058124 (= res!3187747 (dynLambda!30278 lambda!474869 (h!82073 (toList!11962 lt!2731634))))))

(declare-fun b!8058125 () Bool)

(assert (=> b!8058125 (= e!4748768 (forall!18542 (t!391523 (toList!11962 lt!2731634)) lambda!474869))))

(assert (= (and d!2399050 (not res!3187746)) b!8058124))

(assert (= (and b!8058124 res!3187747) b!8058125))

(declare-fun b_lambda!290623 () Bool)

(assert (=> (not b_lambda!290623) (not b!8058124)))

(declare-fun m!8411346 () Bool)

(assert (=> b!8058124 m!8411346))

(declare-fun m!8411348 () Bool)

(assert (=> b!8058125 m!8411348))

(assert (=> b!8057968 d!2399050))

(declare-fun d!2399052 () Bool)

(declare-fun res!3187748 () Bool)

(declare-fun e!4748771 () Bool)

(assert (=> d!2399052 (=> res!3187748 e!4748771)))

(assert (=> d!2399052 (= res!3187748 ((_ is Nil!75625) (t!391523 l!10976)))))

(assert (=> d!2399052 (= (forall!18542 (t!391523 l!10976) lambda!474869) e!4748771)))

(declare-fun b!8058130 () Bool)

(declare-fun e!4748772 () Bool)

(assert (=> b!8058130 (= e!4748771 e!4748772)))

(declare-fun res!3187749 () Bool)

(assert (=> b!8058130 (=> (not res!3187749) (not e!4748772))))

(assert (=> b!8058130 (= res!3187749 (dynLambda!30278 lambda!474869 (h!82073 (t!391523 l!10976))))))

(declare-fun b!8058131 () Bool)

(assert (=> b!8058131 (= e!4748772 (forall!18542 (t!391523 (t!391523 l!10976)) lambda!474869))))

(assert (= (and d!2399052 (not res!3187748)) b!8058130))

(assert (= (and b!8058130 res!3187749) b!8058131))

(declare-fun b_lambda!290625 () Bool)

(assert (=> (not b_lambda!290625) (not b!8058130)))

(declare-fun m!8411350 () Bool)

(assert (=> b!8058130 m!8411350))

(declare-fun m!8411352 () Bool)

(assert (=> b!8058131 m!8411352))

(assert (=> b!8057971 d!2399052))

(declare-fun tp!2414216 () Bool)

(declare-fun b!8058138 () Bool)

(declare-fun e!4748777 () Bool)

(assert (=> b!8058138 (= e!4748777 (and tp_is_empty!55131 tp_is_empty!55133 tp!2414216))))

(assert (=> b!8057973 (= tp!2414208 e!4748777)))

(assert (= (and b!8057973 ((_ is Cons!75625) (toList!11962 acc!836))) b!8058138))

(declare-fun b!8058139 () Bool)

(declare-fun e!4748778 () Bool)

(declare-fun tp!2414217 () Bool)

(assert (=> b!8058139 (= e!4748778 (and tp_is_empty!55131 tp_is_empty!55133 tp!2414217))))

(assert (=> b!8057969 (= tp!2414209 e!4748778)))

(assert (= (and b!8057969 ((_ is Cons!75625) (t!391523 l!10976))) b!8058139))

(declare-fun b_lambda!290635 () Bool)

(assert (= b_lambda!290625 (or b!8057968 b_lambda!290635)))

(declare-fun bs!1973396 () Bool)

(declare-fun d!2399062 () Bool)

(assert (= bs!1973396 (and d!2399062 b!8057968)))

(assert (=> bs!1973396 (= (dynLambda!30278 lambda!474869 (h!82073 (t!391523 l!10976))) (contains!21296 lt!2731637 (_1!38805 (h!82073 (t!391523 l!10976)))))))

(declare-fun m!8411360 () Bool)

(assert (=> bs!1973396 m!8411360))

(assert (=> b!8058130 d!2399062))

(declare-fun b_lambda!290637 () Bool)

(assert (= b_lambda!290623 (or b!8057968 b_lambda!290637)))

(declare-fun bs!1973397 () Bool)

(declare-fun d!2399064 () Bool)

(assert (= bs!1973397 (and d!2399064 b!8057968)))

(assert (=> bs!1973397 (= (dynLambda!30278 lambda!474869 (h!82073 (toList!11962 lt!2731634))) (contains!21296 lt!2731637 (_1!38805 (h!82073 (toList!11962 lt!2731634)))))))

(declare-fun m!8411362 () Bool)

(assert (=> bs!1973397 m!8411362))

(assert (=> b!8058124 d!2399064))

(declare-fun b_lambda!290639 () Bool)

(assert (= b_lambda!290611 (or b!8057967 b_lambda!290639)))

(declare-fun bs!1973398 () Bool)

(declare-fun d!2399066 () Bool)

(assert (= bs!1973398 (and d!2399066 b!8057967)))

(assert (=> bs!1973398 (= (dynLambda!30278 lambda!474870 (h!82073 l!10976)) (contains!21296 lt!2731637 (_1!38805 (h!82073 l!10976))))))

(assert (=> bs!1973398 m!8411112))

(assert (=> d!2399010 d!2399066))

(declare-fun b_lambda!290641 () Bool)

(assert (= b_lambda!290613 (or b!8057967 b_lambda!290641)))

(declare-fun bs!1973399 () Bool)

(declare-fun d!2399068 () Bool)

(assert (= bs!1973399 (and d!2399068 b!8057967)))

(assert (=> bs!1973399 (= (dynLambda!30278 lambda!474868 (h!82073 (toList!11962 acc!836))) (contains!21296 acc!836 (_1!38805 (h!82073 (toList!11962 acc!836)))))))

(declare-fun m!8411364 () Bool)

(assert (=> bs!1973399 m!8411364))

(assert (=> b!8058022 d!2399068))

(check-sat (not b!8058006) (not b!8058017) (not bm!747611) (not b!8058109) (not b!8058118) (not d!2399024) (not d!2399016) (not b!8058108) (not b!8058138) (not b!8058027) (not bm!747634) tp_is_empty!55133 (not d!2399020) (not b!8058024) (not b_lambda!290639) (not bm!747633) (not b!8058032) tp_is_empty!55131 (not bs!1973399) (not b!8058010) (not d!2399044) (not b!8058107) (not b!8058011) (not b_lambda!290641) (not bs!1973398) (not bm!747632) (not bs!1973397) (not b!8058007) (not b!8058016) (not b!8058003) (not b!8058030) (not b!8058131) (not b_lambda!290637) (not b!8058139) (not b!8058119) (not b!8058023) (not b!8058031) (not d!2399010) (not d!2399026) (not bm!747612) (not b!8058028) (not b!8057984) (not b_lambda!290635) (not bs!1973396) (not b!8058110) (not d!2399028) (not b!8058009) (not b!8058026) (not b!8058125) (not b!8058005))
(check-sat)
