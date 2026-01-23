; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758492 () Bool)

(assert start!758492)

(declare-fun b!8053127 () Bool)

(declare-fun e!4745330 () Bool)

(declare-datatypes ((K!22808 0))(
  ( (K!22809 (val!32919 Int)) )
))
(declare-datatypes ((V!23062 0))(
  ( (V!23063 (val!32920 Int)) )
))
(declare-datatypes ((tuple2!70884 0))(
  ( (tuple2!70885 (_1!38745 K!22808) (_2!38745 V!23062)) )
))
(declare-datatypes ((List!75668 0))(
  ( (Nil!75542) (Cons!75542 (h!81990 tuple2!70884) (t!391440 List!75668)) )
))
(declare-fun l!14636 () List!75668)

(declare-fun key!6222 () K!22808)

(declare-fun containsKey!4849 (List!75668 K!22808) Bool)

(assert (=> b!8053127 (= e!4745330 (containsKey!4849 (t!391440 l!14636) key!6222))))

(declare-fun tp_is_empty!54893 () Bool)

(declare-fun b!8053128 () Bool)

(declare-fun e!4745331 () Bool)

(declare-fun tp!2413724 () Bool)

(declare-fun tp_is_empty!54891 () Bool)

(assert (=> b!8053128 (= e!4745331 (and tp_is_empty!54891 tp_is_empty!54893 tp!2413724))))

(declare-fun b!8053129 () Bool)

(declare-fun value!3131 () V!23062)

(declare-fun e!4745333 () Bool)

(declare-datatypes ((ListMap!7287 0))(
  ( (ListMap!7288 (toList!11918 List!75668)) )
))
(declare-fun lt!2726844 () ListMap!7287)

(declare-fun apply!14431 (ListMap!7287 K!22808) V!23062)

(assert (=> b!8053129 (= e!4745333 (= (apply!14431 lt!2726844 key!6222) value!3131))))

(declare-fun lt!2726839 () ListMap!7287)

(assert (=> b!8053129 (= (apply!14431 lt!2726839 key!6222) value!3131)))

(declare-datatypes ((Unit!171855 0))(
  ( (Unit!171856) )
))
(declare-fun lt!2726842 () Unit!171855)

(declare-fun lt!2726838 () ListMap!7287)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!20 (List!75668 ListMap!7287 K!22808 V!23062) Unit!171855)

(assert (=> b!8053129 (= lt!2726842 (lemmaAddToMapFromBucketMaintainsMapping!20 (t!391440 l!14636) lt!2726838 key!6222 value!3131))))

(declare-fun b!8053130 () Bool)

(declare-fun res!3184601 () Bool)

(assert (=> b!8053130 (=> res!3184601 e!4745333)))

(declare-fun contains!21203 (ListMap!7287 K!22808) Bool)

(assert (=> b!8053130 (= res!3184601 (not (contains!21203 lt!2726839 key!6222)))))

(declare-fun b!8053131 () Bool)

(declare-fun res!3184616 () Bool)

(declare-fun e!4745329 () Bool)

(assert (=> b!8053131 (=> (not res!3184616) (not e!4745329))))

(get-info :version)

(assert (=> b!8053131 (= res!3184616 (not ((_ is Nil!75542) l!14636)))))

(declare-fun b!8053132 () Bool)

(declare-fun res!3184603 () Bool)

(assert (=> b!8053132 (=> res!3184603 e!4745333)))

(declare-fun e!4745332 () Bool)

(assert (=> b!8053132 (= res!3184603 e!4745332)))

(declare-fun res!3184615 () Bool)

(assert (=> b!8053132 (=> (not res!3184615) (not e!4745332))))

(assert (=> b!8053132 (= res!3184615 e!4745330)))

(declare-fun res!3184609 () Bool)

(assert (=> b!8053132 (=> res!3184609 e!4745330)))

(assert (=> b!8053132 (= res!3184609 (not (contains!21203 lt!2726838 key!6222)))))

(declare-fun b!8053133 () Bool)

(declare-fun res!3184608 () Bool)

(assert (=> b!8053133 (=> res!3184608 e!4745333)))

(declare-fun noDuplicateKeys!2704 (List!75668) Bool)

(assert (=> b!8053133 (= res!3184608 (not (noDuplicateKeys!2704 (t!391440 l!14636))))))

(declare-fun b!8053134 () Bool)

(declare-fun res!3184602 () Bool)

(declare-fun e!4745335 () Bool)

(assert (=> b!8053134 (=> (not res!3184602) (not e!4745335))))

(declare-fun contains!21204 (List!75668 tuple2!70884) Bool)

(assert (=> b!8053134 (= res!3184602 (contains!21204 l!14636 (tuple2!70885 key!6222 value!3131)))))

(declare-fun res!3184606 () Bool)

(declare-fun e!4745338 () Bool)

(assert (=> start!758492 (=> (not res!3184606) (not e!4745338))))

(assert (=> start!758492 (= res!3184606 (noDuplicateKeys!2704 l!14636))))

(assert (=> start!758492 e!4745338))

(assert (=> start!758492 e!4745331))

(assert (=> start!758492 tp_is_empty!54891))

(assert (=> start!758492 tp_is_empty!54893))

(declare-fun acc!1298 () ListMap!7287)

(declare-fun e!4745327 () Bool)

(declare-fun inv!97297 (ListMap!7287) Bool)

(assert (=> start!758492 (and (inv!97297 acc!1298) e!4745327)))

(declare-fun b!8053135 () Bool)

(declare-fun e!4745336 () Bool)

(assert (=> b!8053135 (= e!4745336 (not (containsKey!4849 l!14636 key!6222)))))

(declare-fun b!8053136 () Bool)

(declare-fun lt!2726840 () Bool)

(assert (=> b!8053136 (= e!4745335 (not lt!2726840))))

(declare-fun b!8053137 () Bool)

(declare-fun e!4745328 () Bool)

(assert (=> b!8053137 (= e!4745328 e!4745329)))

(declare-fun res!3184610 () Bool)

(assert (=> b!8053137 (=> (not res!3184610) (not e!4745329))))

(declare-fun e!4745337 () Bool)

(assert (=> b!8053137 (= res!3184610 e!4745337)))

(declare-fun res!3184604 () Bool)

(assert (=> b!8053137 (=> res!3184604 e!4745337)))

(assert (=> b!8053137 (= res!3184604 e!4745336)))

(declare-fun res!3184605 () Bool)

(assert (=> b!8053137 (=> (not res!3184605) (not e!4745336))))

(assert (=> b!8053137 (= res!3184605 lt!2726840)))

(assert (=> b!8053137 (= lt!2726840 (contains!21203 acc!1298 key!6222))))

(declare-fun b!8053138 () Bool)

(assert (=> b!8053138 (= e!4745338 e!4745328)))

(declare-fun res!3184617 () Bool)

(assert (=> b!8053138 (=> (not res!3184617) (not e!4745328))))

(assert (=> b!8053138 (= res!3184617 (contains!21203 lt!2726844 key!6222))))

(declare-fun addToMapMapFromBucket!1985 (List!75668 ListMap!7287) ListMap!7287)

(assert (=> b!8053138 (= lt!2726844 (addToMapMapFromBucket!1985 l!14636 acc!1298))))

(declare-fun b!8053139 () Bool)

(declare-fun e!4745334 () Bool)

(assert (=> b!8053139 (= e!4745329 e!4745334)))

(declare-fun res!3184611 () Bool)

(assert (=> b!8053139 (=> (not res!3184611) (not e!4745334))))

(assert (=> b!8053139 (= res!3184611 (= (_1!38745 (h!81990 l!14636)) key!6222))))

(assert (=> b!8053139 (= lt!2726839 (addToMapMapFromBucket!1985 (t!391440 l!14636) lt!2726838))))

(declare-fun +!2669 (ListMap!7287 tuple2!70884) ListMap!7287)

(assert (=> b!8053139 (= lt!2726838 (+!2669 acc!1298 (h!81990 l!14636)))))

(declare-fun b!8053140 () Bool)

(declare-fun res!3184613 () Bool)

(assert (=> b!8053140 (=> (not res!3184613) (not e!4745336))))

(assert (=> b!8053140 (= res!3184613 (= (apply!14431 acc!1298 key!6222) value!3131))))

(declare-fun b!8053141 () Bool)

(assert (=> b!8053141 (= e!4745334 (not e!4745333))))

(declare-fun res!3184612 () Bool)

(assert (=> b!8053141 (=> res!3184612 e!4745333)))

(assert (=> b!8053141 (= res!3184612 (not (= (_2!38745 (h!81990 l!14636)) value!3131)))))

(assert (=> b!8053141 (not (contains!21204 (t!391440 l!14636) (tuple2!70885 key!6222 value!3131)))))

(declare-fun lt!2726843 () Unit!171855)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!24 (List!75668 K!22808 V!23062) Unit!171855)

(assert (=> b!8053141 (= lt!2726843 (lemmaNotContainsKeyThenCannotContainPair!24 (t!391440 l!14636) key!6222 value!3131))))

(declare-fun b!8053142 () Bool)

(assert (=> b!8053142 (= e!4745332 true)))

(declare-fun lt!2726841 () Bool)

(assert (=> b!8053142 (= lt!2726841 (containsKey!4849 (t!391440 l!14636) key!6222))))

(declare-fun b!8053143 () Bool)

(assert (=> b!8053143 (= e!4745337 e!4745335)))

(declare-fun res!3184614 () Bool)

(assert (=> b!8053143 (=> (not res!3184614) (not e!4745335))))

(assert (=> b!8053143 (= res!3184614 (containsKey!4849 l!14636 key!6222))))

(declare-fun b!8053144 () Bool)

(declare-fun res!3184607 () Bool)

(assert (=> b!8053144 (=> res!3184607 e!4745330)))

(assert (=> b!8053144 (= res!3184607 (not (= (apply!14431 lt!2726838 key!6222) value!3131)))))

(declare-fun b!8053145 () Bool)

(declare-fun tp!2413725 () Bool)

(assert (=> b!8053145 (= e!4745327 tp!2413725)))

(assert (= (and start!758492 res!3184606) b!8053138))

(assert (= (and b!8053138 res!3184617) b!8053137))

(assert (= (and b!8053137 res!3184605) b!8053140))

(assert (= (and b!8053140 res!3184613) b!8053135))

(assert (= (and b!8053137 (not res!3184604)) b!8053143))

(assert (= (and b!8053143 res!3184614) b!8053134))

(assert (= (and b!8053134 res!3184602) b!8053136))

(assert (= (and b!8053137 res!3184610) b!8053131))

(assert (= (and b!8053131 res!3184616) b!8053139))

(assert (= (and b!8053139 res!3184611) b!8053141))

(assert (= (and b!8053141 (not res!3184612)) b!8053133))

(assert (= (and b!8053133 (not res!3184608)) b!8053130))

(assert (= (and b!8053130 (not res!3184601)) b!8053132))

(assert (= (and b!8053132 (not res!3184609)) b!8053144))

(assert (= (and b!8053144 (not res!3184607)) b!8053127))

(assert (= (and b!8053132 res!3184615) b!8053142))

(assert (= (and b!8053132 (not res!3184603)) b!8053129))

(assert (= (and start!758492 ((_ is Cons!75542) l!14636)) b!8053128))

(assert (= start!758492 b!8053145))

(declare-fun m!8405098 () Bool)

(assert (=> b!8053138 m!8405098))

(declare-fun m!8405100 () Bool)

(assert (=> b!8053138 m!8405100))

(declare-fun m!8405102 () Bool)

(assert (=> b!8053133 m!8405102))

(declare-fun m!8405104 () Bool)

(assert (=> b!8053137 m!8405104))

(declare-fun m!8405106 () Bool)

(assert (=> b!8053144 m!8405106))

(declare-fun m!8405108 () Bool)

(assert (=> b!8053140 m!8405108))

(declare-fun m!8405110 () Bool)

(assert (=> b!8053142 m!8405110))

(declare-fun m!8405112 () Bool)

(assert (=> b!8053139 m!8405112))

(declare-fun m!8405114 () Bool)

(assert (=> b!8053139 m!8405114))

(declare-fun m!8405116 () Bool)

(assert (=> b!8053135 m!8405116))

(declare-fun m!8405118 () Bool)

(assert (=> start!758492 m!8405118))

(declare-fun m!8405120 () Bool)

(assert (=> start!758492 m!8405120))

(declare-fun m!8405122 () Bool)

(assert (=> b!8053132 m!8405122))

(declare-fun m!8405124 () Bool)

(assert (=> b!8053130 m!8405124))

(declare-fun m!8405126 () Bool)

(assert (=> b!8053141 m!8405126))

(declare-fun m!8405128 () Bool)

(assert (=> b!8053141 m!8405128))

(declare-fun m!8405130 () Bool)

(assert (=> b!8053134 m!8405130))

(assert (=> b!8053127 m!8405110))

(declare-fun m!8405132 () Bool)

(assert (=> b!8053129 m!8405132))

(declare-fun m!8405134 () Bool)

(assert (=> b!8053129 m!8405134))

(declare-fun m!8405136 () Bool)

(assert (=> b!8053129 m!8405136))

(assert (=> b!8053143 m!8405116))

(check-sat (not b!8053132) (not b!8053144) (not b!8053127) tp_is_empty!54891 (not b!8053143) (not b!8053130) (not b!8053142) (not b!8053129) tp_is_empty!54893 (not b!8053139) (not b!8053133) (not b!8053137) (not b!8053128) (not b!8053135) (not b!8053138) (not b!8053145) (not start!758492) (not b!8053134) (not b!8053141) (not b!8053140))
(check-sat)
(get-model)

(declare-fun d!2397912 () Bool)

(declare-fun res!3184622 () Bool)

(declare-fun e!4745343 () Bool)

(assert (=> d!2397912 (=> res!3184622 e!4745343)))

(assert (=> d!2397912 (= res!3184622 (and ((_ is Cons!75542) (t!391440 l!14636)) (= (_1!38745 (h!81990 (t!391440 l!14636))) key!6222)))))

(assert (=> d!2397912 (= (containsKey!4849 (t!391440 l!14636) key!6222) e!4745343)))

(declare-fun b!8053150 () Bool)

(declare-fun e!4745344 () Bool)

(assert (=> b!8053150 (= e!4745343 e!4745344)))

(declare-fun res!3184623 () Bool)

(assert (=> b!8053150 (=> (not res!3184623) (not e!4745344))))

(assert (=> b!8053150 (= res!3184623 ((_ is Cons!75542) (t!391440 l!14636)))))

(declare-fun b!8053151 () Bool)

(assert (=> b!8053151 (= e!4745344 (containsKey!4849 (t!391440 (t!391440 l!14636)) key!6222))))

(assert (= (and d!2397912 (not res!3184622)) b!8053150))

(assert (= (and b!8053150 res!3184623) b!8053151))

(declare-fun m!8405138 () Bool)

(assert (=> b!8053151 m!8405138))

(assert (=> b!8053142 d!2397912))

(declare-fun d!2397914 () Bool)

(declare-fun res!3184624 () Bool)

(declare-fun e!4745345 () Bool)

(assert (=> d!2397914 (=> res!3184624 e!4745345)))

(assert (=> d!2397914 (= res!3184624 (and ((_ is Cons!75542) l!14636) (= (_1!38745 (h!81990 l!14636)) key!6222)))))

(assert (=> d!2397914 (= (containsKey!4849 l!14636 key!6222) e!4745345)))

(declare-fun b!8053152 () Bool)

(declare-fun e!4745346 () Bool)

(assert (=> b!8053152 (= e!4745345 e!4745346)))

(declare-fun res!3184625 () Bool)

(assert (=> b!8053152 (=> (not res!3184625) (not e!4745346))))

(assert (=> b!8053152 (= res!3184625 ((_ is Cons!75542) l!14636))))

(declare-fun b!8053153 () Bool)

(assert (=> b!8053153 (= e!4745346 (containsKey!4849 (t!391440 l!14636) key!6222))))

(assert (= (and d!2397914 (not res!3184624)) b!8053152))

(assert (= (and b!8053152 res!3184625) b!8053153))

(assert (=> b!8053153 m!8405110))

(assert (=> b!8053143 d!2397914))

(declare-fun b!8053180 () Bool)

(assert (=> b!8053180 false))

(declare-fun lt!2726867 () Unit!171855)

(declare-fun lt!2726866 () Unit!171855)

(assert (=> b!8053180 (= lt!2726867 lt!2726866)))

(declare-fun containsKey!4851 (List!75668 K!22808) Bool)

(assert (=> b!8053180 (containsKey!4851 (toList!11918 lt!2726838) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1241 (List!75668 K!22808) Unit!171855)

(assert (=> b!8053180 (= lt!2726866 (lemmaInGetKeysListThenContainsKey!1241 (toList!11918 lt!2726838) key!6222))))

(declare-fun e!4745369 () Unit!171855)

(declare-fun Unit!171862 () Unit!171855)

(assert (=> b!8053180 (= e!4745369 Unit!171862)))

(declare-fun b!8053181 () Bool)

(declare-fun e!4745371 () Bool)

(declare-datatypes ((List!75670 0))(
  ( (Nil!75544) (Cons!75544 (h!81992 K!22808) (t!391442 List!75670)) )
))
(declare-fun contains!21206 (List!75670 K!22808) Bool)

(declare-fun keys!30834 (ListMap!7287) List!75670)

(assert (=> b!8053181 (= e!4745371 (contains!21206 (keys!30834 lt!2726838) key!6222))))

(declare-fun b!8053182 () Bool)

(declare-fun Unit!171866 () Unit!171855)

(assert (=> b!8053182 (= e!4745369 Unit!171866)))

(declare-fun b!8053183 () Bool)

(declare-fun e!4745368 () Unit!171855)

(assert (=> b!8053183 (= e!4745368 e!4745369)))

(declare-fun c!1476175 () Bool)

(declare-fun call!747146 () Bool)

(assert (=> b!8053183 (= c!1476175 call!747146)))

(declare-fun b!8053184 () Bool)

(declare-fun e!4745367 () Bool)

(assert (=> b!8053184 (= e!4745367 e!4745371)))

(declare-fun res!3184640 () Bool)

(assert (=> b!8053184 (=> (not res!3184640) (not e!4745371))))

(declare-datatypes ((Option!17998 0))(
  ( (None!17997) (Some!17997 (v!55316 V!23062)) )
))
(declare-fun isDefined!14531 (Option!17998) Bool)

(declare-fun getValueByKey!2782 (List!75668 K!22808) Option!17998)

(assert (=> b!8053184 (= res!3184640 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726838) key!6222)))))

(declare-fun bm!747141 () Bool)

(declare-fun e!4745370 () List!75670)

(assert (=> bm!747141 (= call!747146 (contains!21206 e!4745370 key!6222))))

(declare-fun c!1476174 () Bool)

(declare-fun c!1476176 () Bool)

(assert (=> bm!747141 (= c!1476174 c!1476176)))

(declare-fun b!8053185 () Bool)

(declare-fun lt!2726865 () Unit!171855)

(assert (=> b!8053185 (= e!4745368 lt!2726865)))

(declare-fun lt!2726861 () Unit!171855)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2553 (List!75668 K!22808) Unit!171855)

(assert (=> b!8053185 (= lt!2726861 (lemmaContainsKeyImpliesGetValueByKeyDefined!2553 (toList!11918 lt!2726838) key!6222))))

(assert (=> b!8053185 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726838) key!6222))))

(declare-fun lt!2726862 () Unit!171855)

(assert (=> b!8053185 (= lt!2726862 lt!2726861)))

(declare-fun lemmaInListThenGetKeysListContains!1236 (List!75668 K!22808) Unit!171855)

(assert (=> b!8053185 (= lt!2726865 (lemmaInListThenGetKeysListContains!1236 (toList!11918 lt!2726838) key!6222))))

(assert (=> b!8053185 call!747146))

(declare-fun d!2397916 () Bool)

(assert (=> d!2397916 e!4745367))

(declare-fun res!3184642 () Bool)

(assert (=> d!2397916 (=> res!3184642 e!4745367)))

(declare-fun e!4745372 () Bool)

(assert (=> d!2397916 (= res!3184642 e!4745372)))

(declare-fun res!3184641 () Bool)

(assert (=> d!2397916 (=> (not res!3184641) (not e!4745372))))

(declare-fun lt!2726863 () Bool)

(assert (=> d!2397916 (= res!3184641 (not lt!2726863))))

(declare-fun lt!2726864 () Bool)

(assert (=> d!2397916 (= lt!2726863 lt!2726864)))

(declare-fun lt!2726868 () Unit!171855)

(assert (=> d!2397916 (= lt!2726868 e!4745368)))

(assert (=> d!2397916 (= c!1476176 lt!2726864)))

(assert (=> d!2397916 (= lt!2726864 (containsKey!4851 (toList!11918 lt!2726838) key!6222))))

(assert (=> d!2397916 (= (contains!21203 lt!2726838 key!6222) lt!2726863)))

(declare-fun b!8053186 () Bool)

(assert (=> b!8053186 (= e!4745370 (keys!30834 lt!2726838))))

(declare-fun b!8053187 () Bool)

(assert (=> b!8053187 (= e!4745372 (not (contains!21206 (keys!30834 lt!2726838) key!6222)))))

(declare-fun b!8053188 () Bool)

(declare-fun getKeysList!1241 (List!75668) List!75670)

(assert (=> b!8053188 (= e!4745370 (getKeysList!1241 (toList!11918 lt!2726838)))))

(assert (= (and d!2397916 c!1476176) b!8053185))

(assert (= (and d!2397916 (not c!1476176)) b!8053183))

(assert (= (and b!8053183 c!1476175) b!8053180))

(assert (= (and b!8053183 (not c!1476175)) b!8053182))

(assert (= (or b!8053185 b!8053183) bm!747141))

(assert (= (and bm!747141 c!1476174) b!8053188))

(assert (= (and bm!747141 (not c!1476174)) b!8053186))

(assert (= (and d!2397916 res!3184641) b!8053187))

(assert (= (and d!2397916 (not res!3184642)) b!8053184))

(assert (= (and b!8053184 res!3184640) b!8053181))

(declare-fun m!8405142 () Bool)

(assert (=> b!8053186 m!8405142))

(declare-fun m!8405144 () Bool)

(assert (=> b!8053188 m!8405144))

(assert (=> b!8053187 m!8405142))

(assert (=> b!8053187 m!8405142))

(declare-fun m!8405146 () Bool)

(assert (=> b!8053187 m!8405146))

(assert (=> b!8053181 m!8405142))

(assert (=> b!8053181 m!8405142))

(assert (=> b!8053181 m!8405146))

(declare-fun m!8405148 () Bool)

(assert (=> b!8053184 m!8405148))

(assert (=> b!8053184 m!8405148))

(declare-fun m!8405150 () Bool)

(assert (=> b!8053184 m!8405150))

(declare-fun m!8405152 () Bool)

(assert (=> b!8053185 m!8405152))

(assert (=> b!8053185 m!8405148))

(assert (=> b!8053185 m!8405148))

(assert (=> b!8053185 m!8405150))

(declare-fun m!8405154 () Bool)

(assert (=> b!8053185 m!8405154))

(declare-fun m!8405156 () Bool)

(assert (=> d!2397916 m!8405156))

(assert (=> b!8053180 m!8405156))

(declare-fun m!8405158 () Bool)

(assert (=> b!8053180 m!8405158))

(declare-fun m!8405160 () Bool)

(assert (=> bm!747141 m!8405160))

(assert (=> b!8053132 d!2397916))

(declare-fun lt!2726887 () Bool)

(declare-fun d!2397924 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16107 (List!75668) (InoxSet tuple2!70884))

(assert (=> d!2397924 (= lt!2726887 (select (content!16107 (t!391440 l!14636)) (tuple2!70885 key!6222 value!3131)))))

(declare-fun e!4745390 () Bool)

(assert (=> d!2397924 (= lt!2726887 e!4745390)))

(declare-fun res!3184653 () Bool)

(assert (=> d!2397924 (=> (not res!3184653) (not e!4745390))))

(assert (=> d!2397924 (= res!3184653 ((_ is Cons!75542) (t!391440 l!14636)))))

(assert (=> d!2397924 (= (contains!21204 (t!391440 l!14636) (tuple2!70885 key!6222 value!3131)) lt!2726887)))

(declare-fun b!8053211 () Bool)

(declare-fun e!4745389 () Bool)

(assert (=> b!8053211 (= e!4745390 e!4745389)))

(declare-fun res!3184654 () Bool)

(assert (=> b!8053211 (=> res!3184654 e!4745389)))

(assert (=> b!8053211 (= res!3184654 (= (h!81990 (t!391440 l!14636)) (tuple2!70885 key!6222 value!3131)))))

(declare-fun b!8053212 () Bool)

(assert (=> b!8053212 (= e!4745389 (contains!21204 (t!391440 (t!391440 l!14636)) (tuple2!70885 key!6222 value!3131)))))

(assert (= (and d!2397924 res!3184653) b!8053211))

(assert (= (and b!8053211 (not res!3184654)) b!8053212))

(declare-fun m!8405162 () Bool)

(assert (=> d!2397924 m!8405162))

(declare-fun m!8405164 () Bool)

(assert (=> d!2397924 m!8405164))

(declare-fun m!8405166 () Bool)

(assert (=> b!8053212 m!8405166))

(assert (=> b!8053141 d!2397924))

(declare-fun d!2397926 () Bool)

(assert (=> d!2397926 (not (contains!21204 (t!391440 l!14636) (tuple2!70885 key!6222 value!3131)))))

(declare-fun lt!2726898 () Unit!171855)

(declare-fun choose!60516 (List!75668 K!22808 V!23062) Unit!171855)

(assert (=> d!2397926 (= lt!2726898 (choose!60516 (t!391440 l!14636) key!6222 value!3131))))

(assert (=> d!2397926 (not (containsKey!4849 (t!391440 l!14636) key!6222))))

(assert (=> d!2397926 (= (lemmaNotContainsKeyThenCannotContainPair!24 (t!391440 l!14636) key!6222 value!3131) lt!2726898)))

(declare-fun bs!1972729 () Bool)

(assert (= bs!1972729 d!2397926))

(assert (=> bs!1972729 m!8405126))

(declare-fun m!8405188 () Bool)

(assert (=> bs!1972729 m!8405188))

(assert (=> bs!1972729 m!8405110))

(assert (=> b!8053141 d!2397926))

(declare-fun b!8053222 () Bool)

(assert (=> b!8053222 false))

(declare-fun lt!2726905 () Unit!171855)

(declare-fun lt!2726904 () Unit!171855)

(assert (=> b!8053222 (= lt!2726905 lt!2726904)))

(assert (=> b!8053222 (containsKey!4851 (toList!11918 lt!2726839) key!6222)))

(assert (=> b!8053222 (= lt!2726904 (lemmaInGetKeysListThenContainsKey!1241 (toList!11918 lt!2726839) key!6222))))

(declare-fun e!4745399 () Unit!171855)

(declare-fun Unit!171872 () Unit!171855)

(assert (=> b!8053222 (= e!4745399 Unit!171872)))

(declare-fun b!8053223 () Bool)

(declare-fun e!4745401 () Bool)

(assert (=> b!8053223 (= e!4745401 (contains!21206 (keys!30834 lt!2726839) key!6222))))

(declare-fun b!8053224 () Bool)

(declare-fun Unit!171873 () Unit!171855)

(assert (=> b!8053224 (= e!4745399 Unit!171873)))

(declare-fun b!8053225 () Bool)

(declare-fun e!4745398 () Unit!171855)

(assert (=> b!8053225 (= e!4745398 e!4745399)))

(declare-fun c!1476187 () Bool)

(declare-fun call!747150 () Bool)

(assert (=> b!8053225 (= c!1476187 call!747150)))

(declare-fun b!8053226 () Bool)

(declare-fun e!4745397 () Bool)

(assert (=> b!8053226 (= e!4745397 e!4745401)))

(declare-fun res!3184658 () Bool)

(assert (=> b!8053226 (=> (not res!3184658) (not e!4745401))))

(assert (=> b!8053226 (= res!3184658 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726839) key!6222)))))

(declare-fun bm!747145 () Bool)

(declare-fun e!4745400 () List!75670)

(assert (=> bm!747145 (= call!747150 (contains!21206 e!4745400 key!6222))))

(declare-fun c!1476186 () Bool)

(declare-fun c!1476188 () Bool)

(assert (=> bm!747145 (= c!1476186 c!1476188)))

(declare-fun b!8053227 () Bool)

(declare-fun lt!2726903 () Unit!171855)

(assert (=> b!8053227 (= e!4745398 lt!2726903)))

(declare-fun lt!2726899 () Unit!171855)

(assert (=> b!8053227 (= lt!2726899 (lemmaContainsKeyImpliesGetValueByKeyDefined!2553 (toList!11918 lt!2726839) key!6222))))

(assert (=> b!8053227 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726839) key!6222))))

(declare-fun lt!2726900 () Unit!171855)

(assert (=> b!8053227 (= lt!2726900 lt!2726899)))

(assert (=> b!8053227 (= lt!2726903 (lemmaInListThenGetKeysListContains!1236 (toList!11918 lt!2726839) key!6222))))

(assert (=> b!8053227 call!747150))

(declare-fun d!2397930 () Bool)

(assert (=> d!2397930 e!4745397))

(declare-fun res!3184660 () Bool)

(assert (=> d!2397930 (=> res!3184660 e!4745397)))

(declare-fun e!4745402 () Bool)

(assert (=> d!2397930 (= res!3184660 e!4745402)))

(declare-fun res!3184659 () Bool)

(assert (=> d!2397930 (=> (not res!3184659) (not e!4745402))))

(declare-fun lt!2726901 () Bool)

(assert (=> d!2397930 (= res!3184659 (not lt!2726901))))

(declare-fun lt!2726902 () Bool)

(assert (=> d!2397930 (= lt!2726901 lt!2726902)))

(declare-fun lt!2726906 () Unit!171855)

(assert (=> d!2397930 (= lt!2726906 e!4745398)))

(assert (=> d!2397930 (= c!1476188 lt!2726902)))

(assert (=> d!2397930 (= lt!2726902 (containsKey!4851 (toList!11918 lt!2726839) key!6222))))

(assert (=> d!2397930 (= (contains!21203 lt!2726839 key!6222) lt!2726901)))

(declare-fun b!8053228 () Bool)

(assert (=> b!8053228 (= e!4745400 (keys!30834 lt!2726839))))

(declare-fun b!8053229 () Bool)

(assert (=> b!8053229 (= e!4745402 (not (contains!21206 (keys!30834 lt!2726839) key!6222)))))

(declare-fun b!8053230 () Bool)

(assert (=> b!8053230 (= e!4745400 (getKeysList!1241 (toList!11918 lt!2726839)))))

(assert (= (and d!2397930 c!1476188) b!8053227))

(assert (= (and d!2397930 (not c!1476188)) b!8053225))

(assert (= (and b!8053225 c!1476187) b!8053222))

(assert (= (and b!8053225 (not c!1476187)) b!8053224))

(assert (= (or b!8053227 b!8053225) bm!747145))

(assert (= (and bm!747145 c!1476186) b!8053230))

(assert (= (and bm!747145 (not c!1476186)) b!8053228))

(assert (= (and d!2397930 res!3184659) b!8053229))

(assert (= (and d!2397930 (not res!3184660)) b!8053226))

(assert (= (and b!8053226 res!3184658) b!8053223))

(declare-fun m!8405190 () Bool)

(assert (=> b!8053228 m!8405190))

(declare-fun m!8405192 () Bool)

(assert (=> b!8053230 m!8405192))

(assert (=> b!8053229 m!8405190))

(assert (=> b!8053229 m!8405190))

(declare-fun m!8405194 () Bool)

(assert (=> b!8053229 m!8405194))

(assert (=> b!8053223 m!8405190))

(assert (=> b!8053223 m!8405190))

(assert (=> b!8053223 m!8405194))

(declare-fun m!8405196 () Bool)

(assert (=> b!8053226 m!8405196))

(assert (=> b!8053226 m!8405196))

(declare-fun m!8405198 () Bool)

(assert (=> b!8053226 m!8405198))

(declare-fun m!8405200 () Bool)

(assert (=> b!8053227 m!8405200))

(assert (=> b!8053227 m!8405196))

(assert (=> b!8053227 m!8405196))

(assert (=> b!8053227 m!8405198))

(declare-fun m!8405202 () Bool)

(assert (=> b!8053227 m!8405202))

(declare-fun m!8405204 () Bool)

(assert (=> d!2397930 m!8405204))

(assert (=> b!8053222 m!8405204))

(declare-fun m!8405206 () Bool)

(assert (=> b!8053222 m!8405206))

(declare-fun m!8405208 () Bool)

(assert (=> bm!747145 m!8405208))

(assert (=> b!8053130 d!2397930))

(declare-fun d!2397932 () Bool)

(declare-fun res!3184665 () Bool)

(declare-fun e!4745407 () Bool)

(assert (=> d!2397932 (=> res!3184665 e!4745407)))

(assert (=> d!2397932 (= res!3184665 (not ((_ is Cons!75542) l!14636)))))

(assert (=> d!2397932 (= (noDuplicateKeys!2704 l!14636) e!4745407)))

(declare-fun b!8053235 () Bool)

(declare-fun e!4745408 () Bool)

(assert (=> b!8053235 (= e!4745407 e!4745408)))

(declare-fun res!3184666 () Bool)

(assert (=> b!8053235 (=> (not res!3184666) (not e!4745408))))

(assert (=> b!8053235 (= res!3184666 (not (containsKey!4849 (t!391440 l!14636) (_1!38745 (h!81990 l!14636)))))))

(declare-fun b!8053236 () Bool)

(assert (=> b!8053236 (= e!4745408 (noDuplicateKeys!2704 (t!391440 l!14636)))))

(assert (= (and d!2397932 (not res!3184665)) b!8053235))

(assert (= (and b!8053235 res!3184666) b!8053236))

(declare-fun m!8405210 () Bool)

(assert (=> b!8053235 m!8405210))

(assert (=> b!8053236 m!8405102))

(assert (=> start!758492 d!2397932))

(declare-fun d!2397934 () Bool)

(declare-fun invariantList!1933 (List!75668) Bool)

(assert (=> d!2397934 (= (inv!97297 acc!1298) (invariantList!1933 (toList!11918 acc!1298)))))

(declare-fun bs!1972730 () Bool)

(assert (= bs!1972730 d!2397934))

(declare-fun m!8405212 () Bool)

(assert (=> bs!1972730 m!8405212))

(assert (=> start!758492 d!2397934))

(declare-fun d!2397936 () Bool)

(declare-fun get!27215 (Option!17998) V!23062)

(assert (=> d!2397936 (= (apply!14431 lt!2726844 key!6222) (get!27215 (getValueByKey!2782 (toList!11918 lt!2726844) key!6222)))))

(declare-fun bs!1972731 () Bool)

(assert (= bs!1972731 d!2397936))

(declare-fun m!8405214 () Bool)

(assert (=> bs!1972731 m!8405214))

(assert (=> bs!1972731 m!8405214))

(declare-fun m!8405216 () Bool)

(assert (=> bs!1972731 m!8405216))

(assert (=> b!8053129 d!2397936))

(declare-fun d!2397938 () Bool)

(assert (=> d!2397938 (= (apply!14431 lt!2726839 key!6222) (get!27215 (getValueByKey!2782 (toList!11918 lt!2726839) key!6222)))))

(declare-fun bs!1972732 () Bool)

(assert (= bs!1972732 d!2397938))

(assert (=> bs!1972732 m!8405196))

(assert (=> bs!1972732 m!8405196))

(declare-fun m!8405218 () Bool)

(assert (=> bs!1972732 m!8405218))

(assert (=> b!8053129 d!2397938))

(declare-fun d!2397940 () Bool)

(assert (=> d!2397940 (= (apply!14431 (addToMapMapFromBucket!1985 (t!391440 l!14636) lt!2726838) key!6222) value!3131)))

(declare-fun lt!2726909 () Unit!171855)

(declare-fun choose!60517 (List!75668 ListMap!7287 K!22808 V!23062) Unit!171855)

(assert (=> d!2397940 (= lt!2726909 (choose!60517 (t!391440 l!14636) lt!2726838 key!6222 value!3131))))

(assert (=> d!2397940 (noDuplicateKeys!2704 (t!391440 l!14636))))

(assert (=> d!2397940 (= (lemmaAddToMapFromBucketMaintainsMapping!20 (t!391440 l!14636) lt!2726838 key!6222 value!3131) lt!2726909)))

(declare-fun bs!1972733 () Bool)

(assert (= bs!1972733 d!2397940))

(assert (=> bs!1972733 m!8405112))

(assert (=> bs!1972733 m!8405112))

(declare-fun m!8405220 () Bool)

(assert (=> bs!1972733 m!8405220))

(declare-fun m!8405222 () Bool)

(assert (=> bs!1972733 m!8405222))

(assert (=> bs!1972733 m!8405102))

(assert (=> b!8053129 d!2397940))

(declare-fun d!2397942 () Bool)

(assert (=> d!2397942 (= (apply!14431 acc!1298 key!6222) (get!27215 (getValueByKey!2782 (toList!11918 acc!1298) key!6222)))))

(declare-fun bs!1972734 () Bool)

(assert (= bs!1972734 d!2397942))

(declare-fun m!8405224 () Bool)

(assert (=> bs!1972734 m!8405224))

(assert (=> bs!1972734 m!8405224))

(declare-fun m!8405226 () Bool)

(assert (=> bs!1972734 m!8405226))

(assert (=> b!8053140 d!2397942))

(declare-fun b!8053237 () Bool)

(assert (=> b!8053237 false))

(declare-fun lt!2726916 () Unit!171855)

(declare-fun lt!2726915 () Unit!171855)

(assert (=> b!8053237 (= lt!2726916 lt!2726915)))

(assert (=> b!8053237 (containsKey!4851 (toList!11918 lt!2726844) key!6222)))

(assert (=> b!8053237 (= lt!2726915 (lemmaInGetKeysListThenContainsKey!1241 (toList!11918 lt!2726844) key!6222))))

(declare-fun e!4745411 () Unit!171855)

(declare-fun Unit!171876 () Unit!171855)

(assert (=> b!8053237 (= e!4745411 Unit!171876)))

(declare-fun b!8053238 () Bool)

(declare-fun e!4745413 () Bool)

(assert (=> b!8053238 (= e!4745413 (contains!21206 (keys!30834 lt!2726844) key!6222))))

(declare-fun b!8053239 () Bool)

(declare-fun Unit!171877 () Unit!171855)

(assert (=> b!8053239 (= e!4745411 Unit!171877)))

(declare-fun b!8053240 () Bool)

(declare-fun e!4745410 () Unit!171855)

(assert (=> b!8053240 (= e!4745410 e!4745411)))

(declare-fun c!1476190 () Bool)

(declare-fun call!747151 () Bool)

(assert (=> b!8053240 (= c!1476190 call!747151)))

(declare-fun b!8053241 () Bool)

(declare-fun e!4745409 () Bool)

(assert (=> b!8053241 (= e!4745409 e!4745413)))

(declare-fun res!3184667 () Bool)

(assert (=> b!8053241 (=> (not res!3184667) (not e!4745413))))

(assert (=> b!8053241 (= res!3184667 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726844) key!6222)))))

(declare-fun bm!747146 () Bool)

(declare-fun e!4745412 () List!75670)

(assert (=> bm!747146 (= call!747151 (contains!21206 e!4745412 key!6222))))

(declare-fun c!1476189 () Bool)

(declare-fun c!1476191 () Bool)

(assert (=> bm!747146 (= c!1476189 c!1476191)))

(declare-fun b!8053242 () Bool)

(declare-fun lt!2726914 () Unit!171855)

(assert (=> b!8053242 (= e!4745410 lt!2726914)))

(declare-fun lt!2726910 () Unit!171855)

(assert (=> b!8053242 (= lt!2726910 (lemmaContainsKeyImpliesGetValueByKeyDefined!2553 (toList!11918 lt!2726844) key!6222))))

(assert (=> b!8053242 (isDefined!14531 (getValueByKey!2782 (toList!11918 lt!2726844) key!6222))))

(declare-fun lt!2726911 () Unit!171855)

(assert (=> b!8053242 (= lt!2726911 lt!2726910)))

(assert (=> b!8053242 (= lt!2726914 (lemmaInListThenGetKeysListContains!1236 (toList!11918 lt!2726844) key!6222))))

(assert (=> b!8053242 call!747151))

(declare-fun d!2397944 () Bool)

(assert (=> d!2397944 e!4745409))

(declare-fun res!3184669 () Bool)

(assert (=> d!2397944 (=> res!3184669 e!4745409)))

(declare-fun e!4745414 () Bool)

(assert (=> d!2397944 (= res!3184669 e!4745414)))

(declare-fun res!3184668 () Bool)

(assert (=> d!2397944 (=> (not res!3184668) (not e!4745414))))

(declare-fun lt!2726912 () Bool)

(assert (=> d!2397944 (= res!3184668 (not lt!2726912))))

(declare-fun lt!2726913 () Bool)

(assert (=> d!2397944 (= lt!2726912 lt!2726913)))

(declare-fun lt!2726917 () Unit!171855)

(assert (=> d!2397944 (= lt!2726917 e!4745410)))

(assert (=> d!2397944 (= c!1476191 lt!2726913)))

(assert (=> d!2397944 (= lt!2726913 (containsKey!4851 (toList!11918 lt!2726844) key!6222))))

(assert (=> d!2397944 (= (contains!21203 lt!2726844 key!6222) lt!2726912)))

(declare-fun b!8053243 () Bool)

(assert (=> b!8053243 (= e!4745412 (keys!30834 lt!2726844))))

(declare-fun b!8053244 () Bool)

(assert (=> b!8053244 (= e!4745414 (not (contains!21206 (keys!30834 lt!2726844) key!6222)))))

(declare-fun b!8053245 () Bool)

(assert (=> b!8053245 (= e!4745412 (getKeysList!1241 (toList!11918 lt!2726844)))))

(assert (= (and d!2397944 c!1476191) b!8053242))

(assert (= (and d!2397944 (not c!1476191)) b!8053240))

(assert (= (and b!8053240 c!1476190) b!8053237))

(assert (= (and b!8053240 (not c!1476190)) b!8053239))

(assert (= (or b!8053242 b!8053240) bm!747146))

(assert (= (and bm!747146 c!1476189) b!8053245))

(assert (= (and bm!747146 (not c!1476189)) b!8053243))

(assert (= (and d!2397944 res!3184668) b!8053244))

(assert (= (and d!2397944 (not res!3184669)) b!8053241))

(assert (= (and b!8053241 res!3184667) b!8053238))

(declare-fun m!8405228 () Bool)

(assert (=> b!8053243 m!8405228))

(declare-fun m!8405230 () Bool)

(assert (=> b!8053245 m!8405230))

(assert (=> b!8053244 m!8405228))

(assert (=> b!8053244 m!8405228))

(declare-fun m!8405232 () Bool)

(assert (=> b!8053244 m!8405232))

(assert (=> b!8053238 m!8405228))

(assert (=> b!8053238 m!8405228))

(assert (=> b!8053238 m!8405232))

(assert (=> b!8053241 m!8405214))

(assert (=> b!8053241 m!8405214))

(declare-fun m!8405234 () Bool)

(assert (=> b!8053241 m!8405234))

(declare-fun m!8405236 () Bool)

(assert (=> b!8053242 m!8405236))

(assert (=> b!8053242 m!8405214))

(assert (=> b!8053242 m!8405214))

(assert (=> b!8053242 m!8405234))

(declare-fun m!8405238 () Bool)

(assert (=> b!8053242 m!8405238))

(declare-fun m!8405240 () Bool)

(assert (=> d!2397944 m!8405240))

(assert (=> b!8053237 m!8405240))

(declare-fun m!8405242 () Bool)

(assert (=> b!8053237 m!8405242))

(declare-fun m!8405244 () Bool)

(assert (=> bm!747146 m!8405244))

(assert (=> b!8053138 d!2397944))

(declare-fun b!8053330 () Bool)

(assert (=> b!8053330 true))

(declare-fun bs!1972757 () Bool)

(declare-fun b!8053329 () Bool)

(assert (= bs!1972757 (and b!8053329 b!8053330)))

(declare-fun lambda!473689 () Int)

(declare-fun lambda!473688 () Int)

(assert (=> bs!1972757 (= lambda!473689 lambda!473688)))

(assert (=> b!8053329 true))

(declare-fun lt!2727097 () ListMap!7287)

(declare-fun lambda!473690 () Int)

(assert (=> bs!1972757 (= (= lt!2727097 acc!1298) (= lambda!473690 lambda!473688))))

(assert (=> b!8053329 (= (= lt!2727097 acc!1298) (= lambda!473690 lambda!473689))))

(assert (=> b!8053329 true))

(declare-fun bs!1972758 () Bool)

(declare-fun d!2397946 () Bool)

(assert (= bs!1972758 (and d!2397946 b!8053330)))

(declare-fun lambda!473691 () Int)

(declare-fun lt!2727094 () ListMap!7287)

(assert (=> bs!1972758 (= (= lt!2727094 acc!1298) (= lambda!473691 lambda!473688))))

(declare-fun bs!1972759 () Bool)

(assert (= bs!1972759 (and d!2397946 b!8053329)))

(assert (=> bs!1972759 (= (= lt!2727094 acc!1298) (= lambda!473691 lambda!473689))))

(assert (=> bs!1972759 (= (= lt!2727094 lt!2727097) (= lambda!473691 lambda!473690))))

(assert (=> d!2397946 true))

(declare-fun call!747175 () Bool)

(declare-fun c!1476207 () Bool)

(declare-fun bm!747168 () Bool)

(declare-fun forall!18504 (List!75668 Int) Bool)

(assert (=> bm!747168 (= call!747175 (forall!18504 (ite c!1476207 (toList!11918 acc!1298) (t!391440 l!14636)) (ite c!1476207 lambda!473688 lambda!473690)))))

(declare-fun b!8053327 () Bool)

(declare-fun res!3184719 () Bool)

(declare-fun e!4745472 () Bool)

(assert (=> b!8053327 (=> (not res!3184719) (not e!4745472))))

(assert (=> b!8053327 (= res!3184719 (forall!18504 (toList!11918 acc!1298) lambda!473691))))

(declare-fun b!8053328 () Bool)

(declare-fun e!4745470 () Bool)

(assert (=> b!8053328 (= e!4745470 (forall!18504 (toList!11918 acc!1298) lambda!473690))))

(declare-fun e!4745471 () ListMap!7287)

(assert (=> b!8053329 (= e!4745471 lt!2727097)))

(declare-fun lt!2727089 () ListMap!7287)

(assert (=> b!8053329 (= lt!2727089 (+!2669 acc!1298 (h!81990 l!14636)))))

(assert (=> b!8053329 (= lt!2727097 (addToMapMapFromBucket!1985 (t!391440 l!14636) (+!2669 acc!1298 (h!81990 l!14636))))))

(declare-fun lt!2727098 () Unit!171855)

(declare-fun call!747173 () Unit!171855)

(assert (=> b!8053329 (= lt!2727098 call!747173)))

(assert (=> b!8053329 (forall!18504 (toList!11918 acc!1298) lambda!473689)))

(declare-fun lt!2727101 () Unit!171855)

(assert (=> b!8053329 (= lt!2727101 lt!2727098)))

(assert (=> b!8053329 (forall!18504 (toList!11918 lt!2727089) lambda!473690)))

(declare-fun lt!2727102 () Unit!171855)

(declare-fun Unit!171889 () Unit!171855)

(assert (=> b!8053329 (= lt!2727102 Unit!171889)))

(assert (=> b!8053329 call!747175))

(declare-fun lt!2727104 () Unit!171855)

(declare-fun Unit!171890 () Unit!171855)

(assert (=> b!8053329 (= lt!2727104 Unit!171890)))

(declare-fun lt!2727108 () Unit!171855)

(declare-fun Unit!171891 () Unit!171855)

(assert (=> b!8053329 (= lt!2727108 Unit!171891)))

(declare-fun lt!2727105 () Unit!171855)

(declare-fun forallContained!4658 (List!75668 Int tuple2!70884) Unit!171855)

(assert (=> b!8053329 (= lt!2727105 (forallContained!4658 (toList!11918 lt!2727089) lambda!473690 (h!81990 l!14636)))))

(assert (=> b!8053329 (contains!21203 lt!2727089 (_1!38745 (h!81990 l!14636)))))

(declare-fun lt!2727096 () Unit!171855)

(declare-fun Unit!171892 () Unit!171855)

(assert (=> b!8053329 (= lt!2727096 Unit!171892)))

(assert (=> b!8053329 (contains!21203 lt!2727097 (_1!38745 (h!81990 l!14636)))))

(declare-fun lt!2727093 () Unit!171855)

(declare-fun Unit!171893 () Unit!171855)

(assert (=> b!8053329 (= lt!2727093 Unit!171893)))

(assert (=> b!8053329 (forall!18504 l!14636 lambda!473690)))

(declare-fun lt!2727091 () Unit!171855)

(declare-fun Unit!171894 () Unit!171855)

(assert (=> b!8053329 (= lt!2727091 Unit!171894)))

(assert (=> b!8053329 (forall!18504 (toList!11918 lt!2727089) lambda!473690)))

(declare-fun lt!2727109 () Unit!171855)

(declare-fun Unit!171895 () Unit!171855)

(assert (=> b!8053329 (= lt!2727109 Unit!171895)))

(declare-fun lt!2727099 () Unit!171855)

(declare-fun Unit!171896 () Unit!171855)

(assert (=> b!8053329 (= lt!2727099 Unit!171896)))

(declare-fun lt!2727095 () Unit!171855)

(declare-fun addForallContainsKeyThenBeforeAdding!1083 (ListMap!7287 ListMap!7287 K!22808 V!23062) Unit!171855)

(assert (=> b!8053329 (= lt!2727095 (addForallContainsKeyThenBeforeAdding!1083 acc!1298 lt!2727097 (_1!38745 (h!81990 l!14636)) (_2!38745 (h!81990 l!14636))))))

(declare-fun call!747174 () Bool)

(assert (=> b!8053329 call!747174))

(declare-fun lt!2727107 () Unit!171855)

(assert (=> b!8053329 (= lt!2727107 lt!2727095)))

(assert (=> b!8053329 (forall!18504 (toList!11918 acc!1298) lambda!473690)))

(declare-fun lt!2727103 () Unit!171855)

(declare-fun Unit!171897 () Unit!171855)

(assert (=> b!8053329 (= lt!2727103 Unit!171897)))

(declare-fun res!3184721 () Bool)

(assert (=> b!8053329 (= res!3184721 (forall!18504 l!14636 lambda!473690))))

(assert (=> b!8053329 (=> (not res!3184721) (not e!4745470))))

(assert (=> b!8053329 e!4745470))

(declare-fun lt!2727090 () Unit!171855)

(declare-fun Unit!171898 () Unit!171855)

(assert (=> b!8053329 (= lt!2727090 Unit!171898)))

(assert (=> d!2397946 e!4745472))

(declare-fun res!3184720 () Bool)

(assert (=> d!2397946 (=> (not res!3184720) (not e!4745472))))

(assert (=> d!2397946 (= res!3184720 (forall!18504 l!14636 lambda!473691))))

(assert (=> d!2397946 (= lt!2727094 e!4745471)))

(assert (=> d!2397946 (= c!1476207 ((_ is Nil!75542) l!14636))))

(assert (=> d!2397946 (noDuplicateKeys!2704 l!14636)))

(assert (=> d!2397946 (= (addToMapMapFromBucket!1985 l!14636 acc!1298) lt!2727094)))

(declare-fun bm!747169 () Bool)

(assert (=> bm!747169 (= call!747174 (forall!18504 (toList!11918 acc!1298) (ite c!1476207 lambda!473688 lambda!473690)))))

(assert (=> b!8053330 (= e!4745471 acc!1298)))

(declare-fun lt!2727106 () Unit!171855)

(assert (=> b!8053330 (= lt!2727106 call!747173)))

(assert (=> b!8053330 call!747174))

(declare-fun lt!2727100 () Unit!171855)

(assert (=> b!8053330 (= lt!2727100 lt!2727106)))

(assert (=> b!8053330 call!747175))

(declare-fun lt!2727092 () Unit!171855)

(declare-fun Unit!171899 () Unit!171855)

(assert (=> b!8053330 (= lt!2727092 Unit!171899)))

(declare-fun b!8053331 () Bool)

(assert (=> b!8053331 (= e!4745472 (invariantList!1933 (toList!11918 lt!2727094)))))

(declare-fun bm!747170 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1085 (ListMap!7287) Unit!171855)

(assert (=> bm!747170 (= call!747173 (lemmaContainsAllItsOwnKeys!1085 acc!1298))))

(assert (= (and d!2397946 c!1476207) b!8053330))

(assert (= (and d!2397946 (not c!1476207)) b!8053329))

(assert (= (and b!8053329 res!3184721) b!8053328))

(assert (= (or b!8053330 b!8053329) bm!747168))

(assert (= (or b!8053330 b!8053329) bm!747169))

(assert (= (or b!8053330 b!8053329) bm!747170))

(assert (= (and d!2397946 res!3184720) b!8053327))

(assert (= (and b!8053327 res!3184719) b!8053331))

(declare-fun m!8405416 () Bool)

(assert (=> b!8053331 m!8405416))

(declare-fun m!8405418 () Bool)

(assert (=> b!8053329 m!8405418))

(declare-fun m!8405420 () Bool)

(assert (=> b!8053329 m!8405420))

(assert (=> b!8053329 m!8405114))

(declare-fun m!8405422 () Bool)

(assert (=> b!8053329 m!8405422))

(declare-fun m!8405424 () Bool)

(assert (=> b!8053329 m!8405424))

(declare-fun m!8405426 () Bool)

(assert (=> b!8053329 m!8405426))

(declare-fun m!8405428 () Bool)

(assert (=> b!8053329 m!8405428))

(assert (=> b!8053329 m!8405114))

(declare-fun m!8405430 () Bool)

(assert (=> b!8053329 m!8405430))

(assert (=> b!8053329 m!8405424))

(assert (=> b!8053329 m!8405430))

(declare-fun m!8405432 () Bool)

(assert (=> b!8053329 m!8405432))

(declare-fun m!8405434 () Bool)

(assert (=> b!8053329 m!8405434))

(declare-fun m!8405436 () Bool)

(assert (=> bm!747170 m!8405436))

(declare-fun m!8405438 () Bool)

(assert (=> bm!747168 m!8405438))

(assert (=> b!8053328 m!8405426))

(declare-fun m!8405440 () Bool)

(assert (=> b!8053327 m!8405440))

(declare-fun m!8405442 () Bool)

(assert (=> bm!747169 m!8405442))

(declare-fun m!8405444 () Bool)

(assert (=> d!2397946 m!8405444))

(assert (=> d!2397946 m!8405118))

(assert (=> b!8053138 d!2397946))

(declare-fun bs!1972760 () Bool)

(declare-fun b!8053343 () Bool)

(assert (= bs!1972760 (and b!8053343 b!8053330)))

(declare-fun lambda!473692 () Int)

(assert (=> bs!1972760 (= (= lt!2726838 acc!1298) (= lambda!473692 lambda!473688))))

(declare-fun bs!1972761 () Bool)

(assert (= bs!1972761 (and b!8053343 b!8053329)))

(assert (=> bs!1972761 (= (= lt!2726838 acc!1298) (= lambda!473692 lambda!473689))))

(assert (=> bs!1972761 (= (= lt!2726838 lt!2727097) (= lambda!473692 lambda!473690))))

(declare-fun bs!1972762 () Bool)

(assert (= bs!1972762 (and b!8053343 d!2397946)))

(assert (=> bs!1972762 (= (= lt!2726838 lt!2727094) (= lambda!473692 lambda!473691))))

(assert (=> b!8053343 true))

(declare-fun bs!1972763 () Bool)

(declare-fun b!8053342 () Bool)

(assert (= bs!1972763 (and b!8053342 b!8053330)))

(declare-fun lambda!473693 () Int)

(assert (=> bs!1972763 (= (= lt!2726838 acc!1298) (= lambda!473693 lambda!473688))))

(declare-fun bs!1972764 () Bool)

(assert (= bs!1972764 (and b!8053342 d!2397946)))

(assert (=> bs!1972764 (= (= lt!2726838 lt!2727094) (= lambda!473693 lambda!473691))))

(declare-fun bs!1972765 () Bool)

(assert (= bs!1972765 (and b!8053342 b!8053343)))

(assert (=> bs!1972765 (= lambda!473693 lambda!473692)))

(declare-fun bs!1972766 () Bool)

(assert (= bs!1972766 (and b!8053342 b!8053329)))

(assert (=> bs!1972766 (= (= lt!2726838 acc!1298) (= lambda!473693 lambda!473689))))

(assert (=> bs!1972766 (= (= lt!2726838 lt!2727097) (= lambda!473693 lambda!473690))))

(assert (=> b!8053342 true))

(declare-fun lambda!473694 () Int)

(declare-fun lt!2727119 () ListMap!7287)

(assert (=> b!8053342 (= (= lt!2727119 lt!2726838) (= lambda!473694 lambda!473693))))

(assert (=> bs!1972763 (= (= lt!2727119 acc!1298) (= lambda!473694 lambda!473688))))

(assert (=> bs!1972764 (= (= lt!2727119 lt!2727094) (= lambda!473694 lambda!473691))))

(assert (=> bs!1972765 (= (= lt!2727119 lt!2726838) (= lambda!473694 lambda!473692))))

(assert (=> bs!1972766 (= (= lt!2727119 acc!1298) (= lambda!473694 lambda!473689))))

(assert (=> bs!1972766 (= (= lt!2727119 lt!2727097) (= lambda!473694 lambda!473690))))

(assert (=> b!8053342 true))

(declare-fun bs!1972767 () Bool)

(declare-fun d!2397980 () Bool)

(assert (= bs!1972767 (and d!2397980 b!8053342)))

(declare-fun lt!2727116 () ListMap!7287)

(declare-fun lambda!473695 () Int)

(assert (=> bs!1972767 (= (= lt!2727116 lt!2727119) (= lambda!473695 lambda!473694))))

(assert (=> bs!1972767 (= (= lt!2727116 lt!2726838) (= lambda!473695 lambda!473693))))

(declare-fun bs!1972768 () Bool)

(assert (= bs!1972768 (and d!2397980 b!8053330)))

(assert (=> bs!1972768 (= (= lt!2727116 acc!1298) (= lambda!473695 lambda!473688))))

(declare-fun bs!1972769 () Bool)

(assert (= bs!1972769 (and d!2397980 d!2397946)))

(assert (=> bs!1972769 (= (= lt!2727116 lt!2727094) (= lambda!473695 lambda!473691))))

(declare-fun bs!1972770 () Bool)

(assert (= bs!1972770 (and d!2397980 b!8053343)))

(assert (=> bs!1972770 (= (= lt!2727116 lt!2726838) (= lambda!473695 lambda!473692))))

(declare-fun bs!1972771 () Bool)

(assert (= bs!1972771 (and d!2397980 b!8053329)))

(assert (=> bs!1972771 (= (= lt!2727116 acc!1298) (= lambda!473695 lambda!473689))))

(assert (=> bs!1972771 (= (= lt!2727116 lt!2727097) (= lambda!473695 lambda!473690))))

(assert (=> d!2397980 true))

(declare-fun c!1476208 () Bool)

(declare-fun call!747178 () Bool)

(declare-fun bm!747171 () Bool)

(assert (=> bm!747171 (= call!747178 (forall!18504 (ite c!1476208 (toList!11918 lt!2726838) (t!391440 (t!391440 l!14636))) (ite c!1476208 lambda!473692 lambda!473694)))))

(declare-fun b!8053340 () Bool)

(declare-fun res!3184722 () Bool)

(declare-fun e!4745479 () Bool)

(assert (=> b!8053340 (=> (not res!3184722) (not e!4745479))))

(assert (=> b!8053340 (= res!3184722 (forall!18504 (toList!11918 lt!2726838) lambda!473695))))

(declare-fun b!8053341 () Bool)

(declare-fun e!4745477 () Bool)

(assert (=> b!8053341 (= e!4745477 (forall!18504 (toList!11918 lt!2726838) lambda!473694))))

(declare-fun e!4745478 () ListMap!7287)

(assert (=> b!8053342 (= e!4745478 lt!2727119)))

(declare-fun lt!2727111 () ListMap!7287)

(assert (=> b!8053342 (= lt!2727111 (+!2669 lt!2726838 (h!81990 (t!391440 l!14636))))))

(assert (=> b!8053342 (= lt!2727119 (addToMapMapFromBucket!1985 (t!391440 (t!391440 l!14636)) (+!2669 lt!2726838 (h!81990 (t!391440 l!14636)))))))

(declare-fun lt!2727120 () Unit!171855)

(declare-fun call!747176 () Unit!171855)

(assert (=> b!8053342 (= lt!2727120 call!747176)))

(assert (=> b!8053342 (forall!18504 (toList!11918 lt!2726838) lambda!473693)))

(declare-fun lt!2727123 () Unit!171855)

(assert (=> b!8053342 (= lt!2727123 lt!2727120)))

(assert (=> b!8053342 (forall!18504 (toList!11918 lt!2727111) lambda!473694)))

(declare-fun lt!2727124 () Unit!171855)

(declare-fun Unit!171902 () Unit!171855)

(assert (=> b!8053342 (= lt!2727124 Unit!171902)))

(assert (=> b!8053342 call!747178))

(declare-fun lt!2727126 () Unit!171855)

(declare-fun Unit!171903 () Unit!171855)

(assert (=> b!8053342 (= lt!2727126 Unit!171903)))

(declare-fun lt!2727130 () Unit!171855)

(declare-fun Unit!171904 () Unit!171855)

(assert (=> b!8053342 (= lt!2727130 Unit!171904)))

(declare-fun lt!2727127 () Unit!171855)

(assert (=> b!8053342 (= lt!2727127 (forallContained!4658 (toList!11918 lt!2727111) lambda!473694 (h!81990 (t!391440 l!14636))))))

(assert (=> b!8053342 (contains!21203 lt!2727111 (_1!38745 (h!81990 (t!391440 l!14636))))))

(declare-fun lt!2727118 () Unit!171855)

(declare-fun Unit!171905 () Unit!171855)

(assert (=> b!8053342 (= lt!2727118 Unit!171905)))

(assert (=> b!8053342 (contains!21203 lt!2727119 (_1!38745 (h!81990 (t!391440 l!14636))))))

(declare-fun lt!2727115 () Unit!171855)

(declare-fun Unit!171906 () Unit!171855)

(assert (=> b!8053342 (= lt!2727115 Unit!171906)))

(assert (=> b!8053342 (forall!18504 (t!391440 l!14636) lambda!473694)))

(declare-fun lt!2727113 () Unit!171855)

(declare-fun Unit!171907 () Unit!171855)

(assert (=> b!8053342 (= lt!2727113 Unit!171907)))

(assert (=> b!8053342 (forall!18504 (toList!11918 lt!2727111) lambda!473694)))

(declare-fun lt!2727131 () Unit!171855)

(declare-fun Unit!171908 () Unit!171855)

(assert (=> b!8053342 (= lt!2727131 Unit!171908)))

(declare-fun lt!2727121 () Unit!171855)

(declare-fun Unit!171909 () Unit!171855)

(assert (=> b!8053342 (= lt!2727121 Unit!171909)))

(declare-fun lt!2727117 () Unit!171855)

(assert (=> b!8053342 (= lt!2727117 (addForallContainsKeyThenBeforeAdding!1083 lt!2726838 lt!2727119 (_1!38745 (h!81990 (t!391440 l!14636))) (_2!38745 (h!81990 (t!391440 l!14636)))))))

(declare-fun call!747177 () Bool)

(assert (=> b!8053342 call!747177))

(declare-fun lt!2727129 () Unit!171855)

(assert (=> b!8053342 (= lt!2727129 lt!2727117)))

(assert (=> b!8053342 (forall!18504 (toList!11918 lt!2726838) lambda!473694)))

(declare-fun lt!2727125 () Unit!171855)

(declare-fun Unit!171910 () Unit!171855)

(assert (=> b!8053342 (= lt!2727125 Unit!171910)))

(declare-fun res!3184724 () Bool)

(assert (=> b!8053342 (= res!3184724 (forall!18504 (t!391440 l!14636) lambda!473694))))

(assert (=> b!8053342 (=> (not res!3184724) (not e!4745477))))

(assert (=> b!8053342 e!4745477))

(declare-fun lt!2727112 () Unit!171855)

(declare-fun Unit!171911 () Unit!171855)

(assert (=> b!8053342 (= lt!2727112 Unit!171911)))

(assert (=> d!2397980 e!4745479))

(declare-fun res!3184723 () Bool)

(assert (=> d!2397980 (=> (not res!3184723) (not e!4745479))))

(assert (=> d!2397980 (= res!3184723 (forall!18504 (t!391440 l!14636) lambda!473695))))

(assert (=> d!2397980 (= lt!2727116 e!4745478)))

(assert (=> d!2397980 (= c!1476208 ((_ is Nil!75542) (t!391440 l!14636)))))

(assert (=> d!2397980 (noDuplicateKeys!2704 (t!391440 l!14636))))

(assert (=> d!2397980 (= (addToMapMapFromBucket!1985 (t!391440 l!14636) lt!2726838) lt!2727116)))

(declare-fun bm!747172 () Bool)

(assert (=> bm!747172 (= call!747177 (forall!18504 (toList!11918 lt!2726838) (ite c!1476208 lambda!473692 lambda!473694)))))

(assert (=> b!8053343 (= e!4745478 lt!2726838)))

(declare-fun lt!2727128 () Unit!171855)

(assert (=> b!8053343 (= lt!2727128 call!747176)))

(assert (=> b!8053343 call!747177))

(declare-fun lt!2727122 () Unit!171855)

(assert (=> b!8053343 (= lt!2727122 lt!2727128)))

(assert (=> b!8053343 call!747178))

(declare-fun lt!2727114 () Unit!171855)

(declare-fun Unit!171913 () Unit!171855)

(assert (=> b!8053343 (= lt!2727114 Unit!171913)))

(declare-fun b!8053344 () Bool)

(assert (=> b!8053344 (= e!4745479 (invariantList!1933 (toList!11918 lt!2727116)))))

(declare-fun bm!747173 () Bool)

(assert (=> bm!747173 (= call!747176 (lemmaContainsAllItsOwnKeys!1085 lt!2726838))))

(assert (= (and d!2397980 c!1476208) b!8053343))

(assert (= (and d!2397980 (not c!1476208)) b!8053342))

(assert (= (and b!8053342 res!3184724) b!8053341))

(assert (= (or b!8053343 b!8053342) bm!747171))

(assert (= (or b!8053343 b!8053342) bm!747172))

(assert (= (or b!8053343 b!8053342) bm!747173))

(assert (= (and d!2397980 res!3184723) b!8053340))

(assert (= (and b!8053340 res!3184722) b!8053344))

(declare-fun m!8405446 () Bool)

(assert (=> b!8053344 m!8405446))

(declare-fun m!8405448 () Bool)

(assert (=> b!8053342 m!8405448))

(declare-fun m!8405450 () Bool)

(assert (=> b!8053342 m!8405450))

(declare-fun m!8405452 () Bool)

(assert (=> b!8053342 m!8405452))

(declare-fun m!8405454 () Bool)

(assert (=> b!8053342 m!8405454))

(declare-fun m!8405456 () Bool)

(assert (=> b!8053342 m!8405456))

(declare-fun m!8405458 () Bool)

(assert (=> b!8053342 m!8405458))

(declare-fun m!8405460 () Bool)

(assert (=> b!8053342 m!8405460))

(assert (=> b!8053342 m!8405452))

(declare-fun m!8405462 () Bool)

(assert (=> b!8053342 m!8405462))

(assert (=> b!8053342 m!8405456))

(assert (=> b!8053342 m!8405462))

(declare-fun m!8405464 () Bool)

(assert (=> b!8053342 m!8405464))

(declare-fun m!8405466 () Bool)

(assert (=> b!8053342 m!8405466))

(declare-fun m!8405468 () Bool)

(assert (=> bm!747173 m!8405468))

(declare-fun m!8405470 () Bool)

(assert (=> bm!747171 m!8405470))

(assert (=> b!8053341 m!8405458))

(declare-fun m!8405472 () Bool)

(assert (=> b!8053340 m!8405472))

(declare-fun m!8405474 () Bool)

(assert (=> bm!747172 m!8405474))

(declare-fun m!8405476 () Bool)

(assert (=> d!2397980 m!8405476))

(assert (=> d!2397980 m!8405102))

(assert (=> b!8053139 d!2397980))

(declare-fun d!2397982 () Bool)

(declare-fun e!4745482 () Bool)

(assert (=> d!2397982 e!4745482))

(declare-fun res!3184730 () Bool)

(assert (=> d!2397982 (=> (not res!3184730) (not e!4745482))))

(declare-fun lt!2727142 () ListMap!7287)

(assert (=> d!2397982 (= res!3184730 (contains!21203 lt!2727142 (_1!38745 (h!81990 l!14636))))))

(declare-fun lt!2727141 () List!75668)

(assert (=> d!2397982 (= lt!2727142 (ListMap!7288 lt!2727141))))

(declare-fun lt!2727143 () Unit!171855)

(declare-fun lt!2727140 () Unit!171855)

(assert (=> d!2397982 (= lt!2727143 lt!2727140)))

(assert (=> d!2397982 (= (getValueByKey!2782 lt!2727141 (_1!38745 (h!81990 l!14636))) (Some!17997 (_2!38745 (h!81990 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1275 (List!75668 K!22808 V!23062) Unit!171855)

(assert (=> d!2397982 (= lt!2727140 (lemmaContainsTupThenGetReturnValue!1275 lt!2727141 (_1!38745 (h!81990 l!14636)) (_2!38745 (h!81990 l!14636))))))

(declare-fun insertNoDuplicatedKeys!783 (List!75668 K!22808 V!23062) List!75668)

(assert (=> d!2397982 (= lt!2727141 (insertNoDuplicatedKeys!783 (toList!11918 acc!1298) (_1!38745 (h!81990 l!14636)) (_2!38745 (h!81990 l!14636))))))

(assert (=> d!2397982 (= (+!2669 acc!1298 (h!81990 l!14636)) lt!2727142)))

(declare-fun b!8053349 () Bool)

(declare-fun res!3184729 () Bool)

(assert (=> b!8053349 (=> (not res!3184729) (not e!4745482))))

(assert (=> b!8053349 (= res!3184729 (= (getValueByKey!2782 (toList!11918 lt!2727142) (_1!38745 (h!81990 l!14636))) (Some!17997 (_2!38745 (h!81990 l!14636)))))))

(declare-fun b!8053350 () Bool)

(assert (=> b!8053350 (= e!4745482 (contains!21204 (toList!11918 lt!2727142) (h!81990 l!14636)))))

(assert (= (and d!2397982 res!3184730) b!8053349))

(assert (= (and b!8053349 res!3184729) b!8053350))

(declare-fun m!8405478 () Bool)

(assert (=> d!2397982 m!8405478))

(declare-fun m!8405480 () Bool)

(assert (=> d!2397982 m!8405480))

(declare-fun m!8405482 () Bool)

(assert (=> d!2397982 m!8405482))

(declare-fun m!8405484 () Bool)

(assert (=> d!2397982 m!8405484))

(declare-fun m!8405486 () Bool)

(assert (=> b!8053349 m!8405486))

(declare-fun m!8405488 () Bool)

(assert (=> b!8053350 m!8405488))

(assert (=> b!8053139 d!2397982))

(declare-fun b!8053351 () Bool)

(assert (=> b!8053351 false))

(declare-fun lt!2727150 () Unit!171855)

(declare-fun lt!2727149 () Unit!171855)

(assert (=> b!8053351 (= lt!2727150 lt!2727149)))

(assert (=> b!8053351 (containsKey!4851 (toList!11918 acc!1298) key!6222)))

(assert (=> b!8053351 (= lt!2727149 (lemmaInGetKeysListThenContainsKey!1241 (toList!11918 acc!1298) key!6222))))

(declare-fun e!4745485 () Unit!171855)

(declare-fun Unit!171915 () Unit!171855)

(assert (=> b!8053351 (= e!4745485 Unit!171915)))

(declare-fun b!8053352 () Bool)

(declare-fun e!4745487 () Bool)

(assert (=> b!8053352 (= e!4745487 (contains!21206 (keys!30834 acc!1298) key!6222))))

(declare-fun b!8053353 () Bool)

(declare-fun Unit!171916 () Unit!171855)

(assert (=> b!8053353 (= e!4745485 Unit!171916)))

(declare-fun b!8053354 () Bool)

(declare-fun e!4745484 () Unit!171855)

(assert (=> b!8053354 (= e!4745484 e!4745485)))

(declare-fun c!1476210 () Bool)

(declare-fun call!747179 () Bool)

(assert (=> b!8053354 (= c!1476210 call!747179)))

(declare-fun b!8053355 () Bool)

(declare-fun e!4745483 () Bool)

(assert (=> b!8053355 (= e!4745483 e!4745487)))

(declare-fun res!3184731 () Bool)

(assert (=> b!8053355 (=> (not res!3184731) (not e!4745487))))

(assert (=> b!8053355 (= res!3184731 (isDefined!14531 (getValueByKey!2782 (toList!11918 acc!1298) key!6222)))))

(declare-fun bm!747174 () Bool)

(declare-fun e!4745486 () List!75670)

(assert (=> bm!747174 (= call!747179 (contains!21206 e!4745486 key!6222))))

(declare-fun c!1476209 () Bool)

(declare-fun c!1476211 () Bool)

(assert (=> bm!747174 (= c!1476209 c!1476211)))

(declare-fun b!8053356 () Bool)

(declare-fun lt!2727148 () Unit!171855)

(assert (=> b!8053356 (= e!4745484 lt!2727148)))

(declare-fun lt!2727144 () Unit!171855)

(assert (=> b!8053356 (= lt!2727144 (lemmaContainsKeyImpliesGetValueByKeyDefined!2553 (toList!11918 acc!1298) key!6222))))

(assert (=> b!8053356 (isDefined!14531 (getValueByKey!2782 (toList!11918 acc!1298) key!6222))))

(declare-fun lt!2727145 () Unit!171855)

(assert (=> b!8053356 (= lt!2727145 lt!2727144)))

(assert (=> b!8053356 (= lt!2727148 (lemmaInListThenGetKeysListContains!1236 (toList!11918 acc!1298) key!6222))))

(assert (=> b!8053356 call!747179))

(declare-fun d!2397984 () Bool)

(assert (=> d!2397984 e!4745483))

(declare-fun res!3184733 () Bool)

(assert (=> d!2397984 (=> res!3184733 e!4745483)))

(declare-fun e!4745488 () Bool)

(assert (=> d!2397984 (= res!3184733 e!4745488)))

(declare-fun res!3184732 () Bool)

(assert (=> d!2397984 (=> (not res!3184732) (not e!4745488))))

(declare-fun lt!2727146 () Bool)

(assert (=> d!2397984 (= res!3184732 (not lt!2727146))))

(declare-fun lt!2727147 () Bool)

(assert (=> d!2397984 (= lt!2727146 lt!2727147)))

(declare-fun lt!2727151 () Unit!171855)

(assert (=> d!2397984 (= lt!2727151 e!4745484)))

(assert (=> d!2397984 (= c!1476211 lt!2727147)))

(assert (=> d!2397984 (= lt!2727147 (containsKey!4851 (toList!11918 acc!1298) key!6222))))

(assert (=> d!2397984 (= (contains!21203 acc!1298 key!6222) lt!2727146)))

(declare-fun b!8053357 () Bool)

(assert (=> b!8053357 (= e!4745486 (keys!30834 acc!1298))))

(declare-fun b!8053358 () Bool)

(assert (=> b!8053358 (= e!4745488 (not (contains!21206 (keys!30834 acc!1298) key!6222)))))

(declare-fun b!8053359 () Bool)

(assert (=> b!8053359 (= e!4745486 (getKeysList!1241 (toList!11918 acc!1298)))))

(assert (= (and d!2397984 c!1476211) b!8053356))

(assert (= (and d!2397984 (not c!1476211)) b!8053354))

(assert (= (and b!8053354 c!1476210) b!8053351))

(assert (= (and b!8053354 (not c!1476210)) b!8053353))

(assert (= (or b!8053356 b!8053354) bm!747174))

(assert (= (and bm!747174 c!1476209) b!8053359))

(assert (= (and bm!747174 (not c!1476209)) b!8053357))

(assert (= (and d!2397984 res!3184732) b!8053358))

(assert (= (and d!2397984 (not res!3184733)) b!8053355))

(assert (= (and b!8053355 res!3184731) b!8053352))

(declare-fun m!8405490 () Bool)

(assert (=> b!8053357 m!8405490))

(declare-fun m!8405492 () Bool)

(assert (=> b!8053359 m!8405492))

(assert (=> b!8053358 m!8405490))

(assert (=> b!8053358 m!8405490))

(declare-fun m!8405494 () Bool)

(assert (=> b!8053358 m!8405494))

(assert (=> b!8053352 m!8405490))

(assert (=> b!8053352 m!8405490))

(assert (=> b!8053352 m!8405494))

(assert (=> b!8053355 m!8405224))

(assert (=> b!8053355 m!8405224))

(declare-fun m!8405496 () Bool)

(assert (=> b!8053355 m!8405496))

(declare-fun m!8405498 () Bool)

(assert (=> b!8053356 m!8405498))

(assert (=> b!8053356 m!8405224))

(assert (=> b!8053356 m!8405224))

(assert (=> b!8053356 m!8405496))

(declare-fun m!8405500 () Bool)

(assert (=> b!8053356 m!8405500))

(declare-fun m!8405502 () Bool)

(assert (=> d!2397984 m!8405502))

(assert (=> b!8053351 m!8405502))

(declare-fun m!8405504 () Bool)

(assert (=> b!8053351 m!8405504))

(declare-fun m!8405506 () Bool)

(assert (=> bm!747174 m!8405506))

(assert (=> b!8053137 d!2397984))

(assert (=> b!8053127 d!2397912))

(declare-fun lt!2727152 () Bool)

(declare-fun d!2397986 () Bool)

(assert (=> d!2397986 (= lt!2727152 (select (content!16107 l!14636) (tuple2!70885 key!6222 value!3131)))))

(declare-fun e!4745490 () Bool)

(assert (=> d!2397986 (= lt!2727152 e!4745490)))

(declare-fun res!3184734 () Bool)

(assert (=> d!2397986 (=> (not res!3184734) (not e!4745490))))

(assert (=> d!2397986 (= res!3184734 ((_ is Cons!75542) l!14636))))

(assert (=> d!2397986 (= (contains!21204 l!14636 (tuple2!70885 key!6222 value!3131)) lt!2727152)))

(declare-fun b!8053360 () Bool)

(declare-fun e!4745489 () Bool)

(assert (=> b!8053360 (= e!4745490 e!4745489)))

(declare-fun res!3184735 () Bool)

(assert (=> b!8053360 (=> res!3184735 e!4745489)))

(assert (=> b!8053360 (= res!3184735 (= (h!81990 l!14636) (tuple2!70885 key!6222 value!3131)))))

(declare-fun b!8053361 () Bool)

(assert (=> b!8053361 (= e!4745489 (contains!21204 (t!391440 l!14636) (tuple2!70885 key!6222 value!3131)))))

(assert (= (and d!2397986 res!3184734) b!8053360))

(assert (= (and b!8053360 (not res!3184735)) b!8053361))

(declare-fun m!8405508 () Bool)

(assert (=> d!2397986 m!8405508))

(declare-fun m!8405510 () Bool)

(assert (=> d!2397986 m!8405510))

(assert (=> b!8053361 m!8405126))

(assert (=> b!8053134 d!2397986))

(assert (=> b!8053135 d!2397914))

(declare-fun d!2397988 () Bool)

(declare-fun res!3184736 () Bool)

(declare-fun e!4745491 () Bool)

(assert (=> d!2397988 (=> res!3184736 e!4745491)))

(assert (=> d!2397988 (= res!3184736 (not ((_ is Cons!75542) (t!391440 l!14636))))))

(assert (=> d!2397988 (= (noDuplicateKeys!2704 (t!391440 l!14636)) e!4745491)))

(declare-fun b!8053362 () Bool)

(declare-fun e!4745492 () Bool)

(assert (=> b!8053362 (= e!4745491 e!4745492)))

(declare-fun res!3184737 () Bool)

(assert (=> b!8053362 (=> (not res!3184737) (not e!4745492))))

(assert (=> b!8053362 (= res!3184737 (not (containsKey!4849 (t!391440 (t!391440 l!14636)) (_1!38745 (h!81990 (t!391440 l!14636))))))))

(declare-fun b!8053363 () Bool)

(assert (=> b!8053363 (= e!4745492 (noDuplicateKeys!2704 (t!391440 (t!391440 l!14636))))))

(assert (= (and d!2397988 (not res!3184736)) b!8053362))

(assert (= (and b!8053362 res!3184737) b!8053363))

(declare-fun m!8405512 () Bool)

(assert (=> b!8053362 m!8405512))

(declare-fun m!8405514 () Bool)

(assert (=> b!8053363 m!8405514))

(assert (=> b!8053133 d!2397988))

(declare-fun d!2397990 () Bool)

(assert (=> d!2397990 (= (apply!14431 lt!2726838 key!6222) (get!27215 (getValueByKey!2782 (toList!11918 lt!2726838) key!6222)))))

(declare-fun bs!1972772 () Bool)

(assert (= bs!1972772 d!2397990))

(assert (=> bs!1972772 m!8405148))

(assert (=> bs!1972772 m!8405148))

(declare-fun m!8405516 () Bool)

(assert (=> bs!1972772 m!8405516))

(assert (=> b!8053144 d!2397990))

(declare-fun tp!2413732 () Bool)

(declare-fun e!4745495 () Bool)

(declare-fun b!8053368 () Bool)

(assert (=> b!8053368 (= e!4745495 (and tp_is_empty!54891 tp_is_empty!54893 tp!2413732))))

(assert (=> b!8053145 (= tp!2413725 e!4745495)))

(assert (= (and b!8053145 ((_ is Cons!75542) (toList!11918 acc!1298))) b!8053368))

(declare-fun tp!2413733 () Bool)

(declare-fun e!4745496 () Bool)

(declare-fun b!8053369 () Bool)

(assert (=> b!8053369 (= e!4745496 (and tp_is_empty!54891 tp_is_empty!54893 tp!2413733))))

(assert (=> b!8053128 (= tp!2413724 e!4745496)))

(assert (= (and b!8053128 ((_ is Cons!75542) (t!391440 l!14636))) b!8053369))

(check-sat (not b!8053235) tp_is_empty!54893 (not d!2397924) (not b!8053328) (not bm!747170) (not b!8053356) (not b!8053222) tp_is_empty!54891 (not d!2397940) (not b!8053245) (not b!8053342) (not b!8053212) (not b!8053241) (not d!2397984) (not d!2397986) (not b!8053236) (not bm!747169) (not b!8053223) (not d!2397926) (not b!8053344) (not b!8053355) (not b!8053368) (not b!8053329) (not b!8053359) (not bm!747171) (not b!8053180) (not b!8053357) (not d!2397980) (not b!8053358) (not bm!747174) (not d!2397982) (not b!8053341) (not b!8053362) (not b!8053243) (not b!8053361) (not b!8053238) (not b!8053187) (not bm!747168) (not b!8053153) (not b!8053227) (not bm!747173) (not b!8053151) (not b!8053184) (not bm!747145) (not b!8053229) (not b!8053350) (not b!8053228) (not bm!747141) (not b!8053363) (not d!2397934) (not d!2397916) (not b!8053230) (not d!2397930) (not b!8053351) (not b!8053237) (not d!2397990) (not bm!747172) (not b!8053369) (not d!2397946) (not b!8053244) (not d!2397936) (not bm!747146) (not b!8053186) (not d!2397942) (not b!8053181) (not b!8053340) (not b!8053185) (not b!8053242) (not b!8053226) (not d!2397944) (not b!8053331) (not b!8053349) (not b!8053352) (not d!2397938) (not b!8053188) (not b!8053327))
(check-sat)
