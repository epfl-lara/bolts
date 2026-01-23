; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758544 () Bool)

(assert start!758544)

(declare-fun b!8053574 () Bool)

(declare-fun res!3184911 () Bool)

(declare-fun e!4745639 () Bool)

(assert (=> b!8053574 (=> (not res!3184911) (not e!4745639))))

(declare-datatypes ((K!22823 0))(
  ( (K!22824 (val!32931 Int)) )
))
(declare-fun key!6222 () K!22823)

(declare-datatypes ((V!23077 0))(
  ( (V!23078 (val!32932 Int)) )
))
(declare-datatypes ((tuple2!70896 0))(
  ( (tuple2!70897 (_1!38751 K!22823) (_2!38751 V!23077)) )
))
(declare-datatypes ((List!75676 0))(
  ( (Nil!75550) (Cons!75550 (h!81998 tuple2!70896) (t!391448 List!75676)) )
))
(declare-fun l!14636 () List!75676)

(declare-datatypes ((ListMap!7299 0))(
  ( (ListMap!7300 (toList!11924 List!75676)) )
))
(declare-fun acc!1298 () ListMap!7299)

(declare-fun contains!21217 (ListMap!7299 K!22823) Bool)

(declare-fun addToMapMapFromBucket!1991 (List!75676 ListMap!7299) ListMap!7299)

(assert (=> b!8053574 (= res!3184911 (contains!21217 (addToMapMapFromBucket!1991 l!14636 acc!1298) key!6222))))

(declare-fun b!8053575 () Bool)

(declare-fun e!4745635 () Bool)

(declare-fun tp!2413769 () Bool)

(assert (=> b!8053575 (= e!4745635 tp!2413769)))

(declare-fun b!8053576 () Bool)

(declare-fun e!4745634 () Bool)

(declare-fun lt!2727255 () Bool)

(assert (=> b!8053576 (= e!4745634 (not lt!2727255))))

(declare-fun b!8053577 () Bool)

(declare-fun res!3184908 () Bool)

(declare-fun e!4745633 () Bool)

(assert (=> b!8053577 (=> (not res!3184908) (not e!4745633))))

(get-info :version)

(assert (=> b!8053577 (= res!3184908 (not ((_ is Nil!75550) l!14636)))))

(declare-fun tp!2413768 () Bool)

(declare-fun tp_is_empty!54915 () Bool)

(declare-fun tp_is_empty!54917 () Bool)

(declare-fun e!4745640 () Bool)

(declare-fun b!8053578 () Bool)

(assert (=> b!8053578 (= e!4745640 (and tp_is_empty!54915 tp_is_empty!54917 tp!2413768))))

(declare-fun b!8053579 () Bool)

(declare-fun e!4745636 () Bool)

(declare-fun containsKey!4857 (List!75676 K!22823) Bool)

(assert (=> b!8053579 (= e!4745636 (not (containsKey!4857 l!14636 key!6222)))))

(declare-fun b!8053580 () Bool)

(declare-fun e!4745637 () Bool)

(declare-fun noDuplicateKeys!2710 (List!75676) Bool)

(assert (=> b!8053580 (= e!4745637 (not (noDuplicateKeys!2710 (t!391448 l!14636))))))

(declare-fun value!3131 () V!23077)

(declare-fun contains!21218 (List!75676 tuple2!70896) Bool)

(assert (=> b!8053580 (not (contains!21218 l!14636 (tuple2!70897 key!6222 value!3131)))))

(declare-datatypes ((Unit!171927 0))(
  ( (Unit!171928) )
))
(declare-fun lt!2727257 () Unit!171927)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!26 (List!75676 K!22823 V!23077) Unit!171927)

(assert (=> b!8053580 (= lt!2727257 (lemmaNotContainsKeyThenCannotContainPair!26 l!14636 key!6222 value!3131))))

(declare-fun lt!2727260 () ListMap!7299)

(declare-fun apply!14437 (ListMap!7299 K!22823) V!23077)

(assert (=> b!8053580 (= (apply!14437 lt!2727260 key!6222) (apply!14437 acc!1298 key!6222))))

(declare-fun lt!2727259 () Unit!171927)

(declare-fun addApplyDifferent!17 (ListMap!7299 K!22823 V!23077 K!22823) Unit!171927)

(assert (=> b!8053580 (= lt!2727259 (addApplyDifferent!17 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222))))

(assert (=> b!8053580 (contains!21217 lt!2727260 key!6222)))

(declare-fun lt!2727256 () Unit!171927)

(declare-fun addStillContains!43 (ListMap!7299 K!22823 V!23077 K!22823) Unit!171927)

(assert (=> b!8053580 (= lt!2727256 (addStillContains!43 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222))))

(declare-fun res!3184910 () Bool)

(assert (=> start!758544 (=> (not res!3184910) (not e!4745639))))

(assert (=> start!758544 (= res!3184910 (noDuplicateKeys!2710 l!14636))))

(assert (=> start!758544 e!4745639))

(assert (=> start!758544 e!4745640))

(declare-fun inv!97312 (ListMap!7299) Bool)

(assert (=> start!758544 (and (inv!97312 acc!1298) e!4745635)))

(assert (=> start!758544 tp_is_empty!54915))

(assert (=> start!758544 tp_is_empty!54917))

(declare-fun b!8053581 () Bool)

(declare-fun res!3184915 () Bool)

(assert (=> b!8053581 (=> (not res!3184915) (not e!4745636))))

(assert (=> b!8053581 (= res!3184915 (= (apply!14437 acc!1298 key!6222) value!3131))))

(declare-fun b!8053582 () Bool)

(assert (=> b!8053582 (= e!4745633 e!4745637)))

(declare-fun res!3184913 () Bool)

(assert (=> b!8053582 (=> (not res!3184913) (not e!4745637))))

(declare-fun lt!2727258 () Bool)

(assert (=> b!8053582 (= res!3184913 (and (not (= (_1!38751 (h!81998 l!14636)) key!6222)) (not lt!2727258)))))

(declare-fun lt!2727254 () ListMap!7299)

(assert (=> b!8053582 (= lt!2727254 (addToMapMapFromBucket!1991 (t!391448 l!14636) lt!2727260))))

(declare-fun +!2675 (ListMap!7299 tuple2!70896) ListMap!7299)

(assert (=> b!8053582 (= lt!2727260 (+!2675 acc!1298 (h!81998 l!14636)))))

(declare-fun b!8053583 () Bool)

(assert (=> b!8053583 (= e!4745639 e!4745633)))

(declare-fun res!3184912 () Bool)

(assert (=> b!8053583 (=> (not res!3184912) (not e!4745633))))

(declare-fun e!4745638 () Bool)

(assert (=> b!8053583 (= res!3184912 e!4745638)))

(declare-fun res!3184916 () Bool)

(assert (=> b!8053583 (=> res!3184916 e!4745638)))

(assert (=> b!8053583 (= res!3184916 e!4745636)))

(declare-fun res!3184917 () Bool)

(assert (=> b!8053583 (=> (not res!3184917) (not e!4745636))))

(assert (=> b!8053583 (= res!3184917 (not lt!2727258))))

(assert (=> b!8053583 (= lt!2727258 (not lt!2727255))))

(assert (=> b!8053583 (= lt!2727255 (contains!21217 acc!1298 key!6222))))

(declare-fun b!8053584 () Bool)

(declare-fun res!3184909 () Bool)

(assert (=> b!8053584 (=> (not res!3184909) (not e!4745634))))

(assert (=> b!8053584 (= res!3184909 (contains!21218 l!14636 (tuple2!70897 key!6222 value!3131)))))

(declare-fun b!8053585 () Bool)

(assert (=> b!8053585 (= e!4745638 e!4745634)))

(declare-fun res!3184914 () Bool)

(assert (=> b!8053585 (=> (not res!3184914) (not e!4745634))))

(assert (=> b!8053585 (= res!3184914 (containsKey!4857 l!14636 key!6222))))

(assert (= (and start!758544 res!3184910) b!8053574))

(assert (= (and b!8053574 res!3184911) b!8053583))

(assert (= (and b!8053583 res!3184917) b!8053581))

(assert (= (and b!8053581 res!3184915) b!8053579))

(assert (= (and b!8053583 (not res!3184916)) b!8053585))

(assert (= (and b!8053585 res!3184914) b!8053584))

(assert (= (and b!8053584 res!3184909) b!8053576))

(assert (= (and b!8053583 res!3184912) b!8053577))

(assert (= (and b!8053577 res!3184908) b!8053582))

(assert (= (and b!8053582 res!3184913) b!8053580))

(assert (= (and start!758544 ((_ is Cons!75550) l!14636)) b!8053578))

(assert (= start!758544 b!8053575))

(declare-fun m!8405654 () Bool)

(assert (=> b!8053574 m!8405654))

(assert (=> b!8053574 m!8405654))

(declare-fun m!8405656 () Bool)

(assert (=> b!8053574 m!8405656))

(declare-fun m!8405658 () Bool)

(assert (=> b!8053580 m!8405658))

(declare-fun m!8405660 () Bool)

(assert (=> b!8053580 m!8405660))

(declare-fun m!8405662 () Bool)

(assert (=> b!8053580 m!8405662))

(declare-fun m!8405664 () Bool)

(assert (=> b!8053580 m!8405664))

(declare-fun m!8405666 () Bool)

(assert (=> b!8053580 m!8405666))

(declare-fun m!8405668 () Bool)

(assert (=> b!8053580 m!8405668))

(declare-fun m!8405670 () Bool)

(assert (=> b!8053580 m!8405670))

(declare-fun m!8405672 () Bool)

(assert (=> b!8053580 m!8405672))

(assert (=> b!8053584 m!8405670))

(declare-fun m!8405674 () Bool)

(assert (=> b!8053583 m!8405674))

(declare-fun m!8405676 () Bool)

(assert (=> b!8053585 m!8405676))

(assert (=> b!8053581 m!8405666))

(assert (=> b!8053579 m!8405676))

(declare-fun m!8405678 () Bool)

(assert (=> b!8053582 m!8405678))

(declare-fun m!8405680 () Bool)

(assert (=> b!8053582 m!8405680))

(declare-fun m!8405682 () Bool)

(assert (=> start!758544 m!8405682))

(declare-fun m!8405684 () Bool)

(assert (=> start!758544 m!8405684))

(check-sat (not start!758544) (not b!8053584) tp_is_empty!54915 tp_is_empty!54917 (not b!8053575) (not b!8053583) (not b!8053582) (not b!8053585) (not b!8053579) (not b!8053580) (not b!8053574) (not b!8053581) (not b!8053578))
(check-sat)
(get-model)

(declare-fun d!2397995 () Bool)

(declare-fun res!3184922 () Bool)

(declare-fun e!4745645 () Bool)

(assert (=> d!2397995 (=> res!3184922 e!4745645)))

(assert (=> d!2397995 (= res!3184922 (and ((_ is Cons!75550) l!14636) (= (_1!38751 (h!81998 l!14636)) key!6222)))))

(assert (=> d!2397995 (= (containsKey!4857 l!14636 key!6222) e!4745645)))

(declare-fun b!8053590 () Bool)

(declare-fun e!4745646 () Bool)

(assert (=> b!8053590 (= e!4745645 e!4745646)))

(declare-fun res!3184923 () Bool)

(assert (=> b!8053590 (=> (not res!3184923) (not e!4745646))))

(assert (=> b!8053590 (= res!3184923 ((_ is Cons!75550) l!14636))))

(declare-fun b!8053591 () Bool)

(assert (=> b!8053591 (= e!4745646 (containsKey!4857 (t!391448 l!14636) key!6222))))

(assert (= (and d!2397995 (not res!3184922)) b!8053590))

(assert (= (and b!8053590 res!3184923) b!8053591))

(declare-fun m!8405686 () Bool)

(assert (=> b!8053591 m!8405686))

(assert (=> b!8053585 d!2397995))

(declare-fun d!2397997 () Bool)

(declare-datatypes ((Option!18000 0))(
  ( (None!17999) (Some!17999 (v!55322 V!23077)) )
))
(declare-fun get!27220 (Option!18000) V!23077)

(declare-fun getValueByKey!2784 (List!75676 K!22823) Option!18000)

(assert (=> d!2397997 (= (apply!14437 acc!1298 key!6222) (get!27220 (getValueByKey!2784 (toList!11924 acc!1298) key!6222)))))

(declare-fun bs!1972779 () Bool)

(assert (= bs!1972779 d!2397997))

(declare-fun m!8405688 () Bool)

(assert (=> bs!1972779 m!8405688))

(assert (=> bs!1972779 m!8405688))

(declare-fun m!8405690 () Bool)

(assert (=> bs!1972779 m!8405690))

(assert (=> b!8053580 d!2397997))

(declare-fun d!2397999 () Bool)

(assert (=> d!2397999 (= (apply!14437 lt!2727260 key!6222) (get!27220 (getValueByKey!2784 (toList!11924 lt!2727260) key!6222)))))

(declare-fun bs!1972780 () Bool)

(assert (= bs!1972780 d!2397999))

(declare-fun m!8405692 () Bool)

(assert (=> bs!1972780 m!8405692))

(assert (=> bs!1972780 m!8405692))

(declare-fun m!8405694 () Bool)

(assert (=> bs!1972780 m!8405694))

(assert (=> b!8053580 d!2397999))

(declare-fun d!2398001 () Bool)

(declare-fun lt!2727263 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16110 (List!75676) (InoxSet tuple2!70896))

(assert (=> d!2398001 (= lt!2727263 (select (content!16110 l!14636) (tuple2!70897 key!6222 value!3131)))))

(declare-fun e!4745652 () Bool)

(assert (=> d!2398001 (= lt!2727263 e!4745652)))

(declare-fun res!3184928 () Bool)

(assert (=> d!2398001 (=> (not res!3184928) (not e!4745652))))

(assert (=> d!2398001 (= res!3184928 ((_ is Cons!75550) l!14636))))

(assert (=> d!2398001 (= (contains!21218 l!14636 (tuple2!70897 key!6222 value!3131)) lt!2727263)))

(declare-fun b!8053596 () Bool)

(declare-fun e!4745651 () Bool)

(assert (=> b!8053596 (= e!4745652 e!4745651)))

(declare-fun res!3184929 () Bool)

(assert (=> b!8053596 (=> res!3184929 e!4745651)))

(assert (=> b!8053596 (= res!3184929 (= (h!81998 l!14636) (tuple2!70897 key!6222 value!3131)))))

(declare-fun b!8053597 () Bool)

(assert (=> b!8053597 (= e!4745651 (contains!21218 (t!391448 l!14636) (tuple2!70897 key!6222 value!3131)))))

(assert (= (and d!2398001 res!3184928) b!8053596))

(assert (= (and b!8053596 (not res!3184929)) b!8053597))

(declare-fun m!8405696 () Bool)

(assert (=> d!2398001 m!8405696))

(declare-fun m!8405698 () Bool)

(assert (=> d!2398001 m!8405698))

(declare-fun m!8405700 () Bool)

(assert (=> b!8053597 m!8405700))

(assert (=> b!8053580 d!2398001))

(declare-fun d!2398005 () Bool)

(assert (=> d!2398005 (contains!21217 (+!2675 acc!1298 (tuple2!70897 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)))) key!6222)))

(declare-fun lt!2727269 () Unit!171927)

(declare-fun choose!60519 (ListMap!7299 K!22823 V!23077 K!22823) Unit!171927)

(assert (=> d!2398005 (= lt!2727269 (choose!60519 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222))))

(assert (=> d!2398005 (contains!21217 acc!1298 key!6222)))

(assert (=> d!2398005 (= (addStillContains!43 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222) lt!2727269)))

(declare-fun bs!1972782 () Bool)

(assert (= bs!1972782 d!2398005))

(declare-fun m!8405712 () Bool)

(assert (=> bs!1972782 m!8405712))

(assert (=> bs!1972782 m!8405712))

(declare-fun m!8405714 () Bool)

(assert (=> bs!1972782 m!8405714))

(declare-fun m!8405716 () Bool)

(assert (=> bs!1972782 m!8405716))

(assert (=> bs!1972782 m!8405674))

(assert (=> b!8053580 d!2398005))

(declare-fun b!8053651 () Bool)

(declare-fun e!4745690 () Bool)

(declare-datatypes ((List!75678 0))(
  ( (Nil!75552) (Cons!75552 (h!82000 K!22823) (t!391450 List!75678)) )
))
(declare-fun contains!21220 (List!75678 K!22823) Bool)

(declare-fun keys!30842 (ListMap!7299) List!75678)

(assert (=> b!8053651 (= e!4745690 (contains!21220 (keys!30842 lt!2727260) key!6222))))

(declare-fun b!8053652 () Bool)

(declare-fun e!4745693 () Bool)

(assert (=> b!8053652 (= e!4745693 (not (contains!21220 (keys!30842 lt!2727260) key!6222)))))

(declare-fun b!8053653 () Bool)

(assert (=> b!8053653 false))

(declare-fun lt!2727312 () Unit!171927)

(declare-fun lt!2727314 () Unit!171927)

(assert (=> b!8053653 (= lt!2727312 lt!2727314)))

(declare-fun containsKey!4859 (List!75676 K!22823) Bool)

(assert (=> b!8053653 (containsKey!4859 (toList!11924 lt!2727260) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1243 (List!75676 K!22823) Unit!171927)

(assert (=> b!8053653 (= lt!2727314 (lemmaInGetKeysListThenContainsKey!1243 (toList!11924 lt!2727260) key!6222))))

(declare-fun e!4745689 () Unit!171927)

(declare-fun Unit!171931 () Unit!171927)

(assert (=> b!8053653 (= e!4745689 Unit!171931)))

(declare-fun b!8053654 () Bool)

(declare-fun e!4745692 () Unit!171927)

(assert (=> b!8053654 (= e!4745692 e!4745689)))

(declare-fun c!1476228 () Bool)

(declare-fun call!747185 () Bool)

(assert (=> b!8053654 (= c!1476228 call!747185)))

(declare-fun b!8053655 () Bool)

(declare-fun e!4745691 () List!75678)

(assert (=> b!8053655 (= e!4745691 (keys!30842 lt!2727260))))

(declare-fun b!8053650 () Bool)

(declare-fun Unit!171932 () Unit!171927)

(assert (=> b!8053650 (= e!4745689 Unit!171932)))

(declare-fun d!2398011 () Bool)

(declare-fun e!4745694 () Bool)

(assert (=> d!2398011 e!4745694))

(declare-fun res!3184951 () Bool)

(assert (=> d!2398011 (=> res!3184951 e!4745694)))

(assert (=> d!2398011 (= res!3184951 e!4745693)))

(declare-fun res!3184952 () Bool)

(assert (=> d!2398011 (=> (not res!3184952) (not e!4745693))))

(declare-fun lt!2727310 () Bool)

(assert (=> d!2398011 (= res!3184952 (not lt!2727310))))

(declare-fun lt!2727315 () Bool)

(assert (=> d!2398011 (= lt!2727310 lt!2727315)))

(declare-fun lt!2727317 () Unit!171927)

(assert (=> d!2398011 (= lt!2727317 e!4745692)))

(declare-fun c!1476227 () Bool)

(assert (=> d!2398011 (= c!1476227 lt!2727315)))

(assert (=> d!2398011 (= lt!2727315 (containsKey!4859 (toList!11924 lt!2727260) key!6222))))

(assert (=> d!2398011 (= (contains!21217 lt!2727260 key!6222) lt!2727310)))

(declare-fun b!8053656 () Bool)

(declare-fun getKeysList!1243 (List!75676) List!75678)

(assert (=> b!8053656 (= e!4745691 (getKeysList!1243 (toList!11924 lt!2727260)))))

(declare-fun b!8053657 () Bool)

(declare-fun lt!2727316 () Unit!171927)

(assert (=> b!8053657 (= e!4745692 lt!2727316)))

(declare-fun lt!2727311 () Unit!171927)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2555 (List!75676 K!22823) Unit!171927)

(assert (=> b!8053657 (= lt!2727311 (lemmaContainsKeyImpliesGetValueByKeyDefined!2555 (toList!11924 lt!2727260) key!6222))))

(declare-fun isDefined!14533 (Option!18000) Bool)

(assert (=> b!8053657 (isDefined!14533 (getValueByKey!2784 (toList!11924 lt!2727260) key!6222))))

(declare-fun lt!2727313 () Unit!171927)

(assert (=> b!8053657 (= lt!2727313 lt!2727311)))

(declare-fun lemmaInListThenGetKeysListContains!1238 (List!75676 K!22823) Unit!171927)

(assert (=> b!8053657 (= lt!2727316 (lemmaInListThenGetKeysListContains!1238 (toList!11924 lt!2727260) key!6222))))

(assert (=> b!8053657 call!747185))

(declare-fun bm!747180 () Bool)

(assert (=> bm!747180 (= call!747185 (contains!21220 e!4745691 key!6222))))

(declare-fun c!1476229 () Bool)

(assert (=> bm!747180 (= c!1476229 c!1476227)))

(declare-fun b!8053658 () Bool)

(assert (=> b!8053658 (= e!4745694 e!4745690)))

(declare-fun res!3184953 () Bool)

(assert (=> b!8053658 (=> (not res!3184953) (not e!4745690))))

(assert (=> b!8053658 (= res!3184953 (isDefined!14533 (getValueByKey!2784 (toList!11924 lt!2727260) key!6222)))))

(assert (= (and d!2398011 c!1476227) b!8053657))

(assert (= (and d!2398011 (not c!1476227)) b!8053654))

(assert (= (and b!8053654 c!1476228) b!8053653))

(assert (= (and b!8053654 (not c!1476228)) b!8053650))

(assert (= (or b!8053657 b!8053654) bm!747180))

(assert (= (and bm!747180 c!1476229) b!8053656))

(assert (= (and bm!747180 (not c!1476229)) b!8053655))

(assert (= (and d!2398011 res!3184952) b!8053652))

(assert (= (and d!2398011 (not res!3184951)) b!8053658))

(assert (= (and b!8053658 res!3184953) b!8053651))

(declare-fun m!8405738 () Bool)

(assert (=> b!8053651 m!8405738))

(assert (=> b!8053651 m!8405738))

(declare-fun m!8405740 () Bool)

(assert (=> b!8053651 m!8405740))

(declare-fun m!8405742 () Bool)

(assert (=> b!8053656 m!8405742))

(declare-fun m!8405744 () Bool)

(assert (=> b!8053653 m!8405744))

(declare-fun m!8405746 () Bool)

(assert (=> b!8053653 m!8405746))

(declare-fun m!8405748 () Bool)

(assert (=> bm!747180 m!8405748))

(assert (=> b!8053655 m!8405738))

(assert (=> b!8053658 m!8405692))

(assert (=> b!8053658 m!8405692))

(declare-fun m!8405750 () Bool)

(assert (=> b!8053658 m!8405750))

(assert (=> b!8053652 m!8405738))

(assert (=> b!8053652 m!8405738))

(assert (=> b!8053652 m!8405740))

(declare-fun m!8405752 () Bool)

(assert (=> b!8053657 m!8405752))

(assert (=> b!8053657 m!8405692))

(assert (=> b!8053657 m!8405692))

(assert (=> b!8053657 m!8405750))

(declare-fun m!8405754 () Bool)

(assert (=> b!8053657 m!8405754))

(assert (=> d!2398011 m!8405744))

(assert (=> b!8053580 d!2398011))

(declare-fun d!2398015 () Bool)

(assert (=> d!2398015 (= (apply!14437 (+!2675 acc!1298 (tuple2!70897 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)))) key!6222) (apply!14437 acc!1298 key!6222))))

(declare-fun lt!2727326 () Unit!171927)

(declare-fun choose!60523 (ListMap!7299 K!22823 V!23077 K!22823) Unit!171927)

(assert (=> d!2398015 (= lt!2727326 (choose!60523 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222))))

(declare-fun e!4745700 () Bool)

(assert (=> d!2398015 e!4745700))

(declare-fun res!3184959 () Bool)

(assert (=> d!2398015 (=> (not res!3184959) (not e!4745700))))

(assert (=> d!2398015 (= res!3184959 (contains!21217 acc!1298 key!6222))))

(assert (=> d!2398015 (= (addApplyDifferent!17 acc!1298 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636)) key!6222) lt!2727326)))

(declare-fun b!8053667 () Bool)

(assert (=> b!8053667 (= e!4745700 (not (= key!6222 (_1!38751 (h!81998 l!14636)))))))

(assert (= (and d!2398015 res!3184959) b!8053667))

(declare-fun m!8405766 () Bool)

(assert (=> d!2398015 m!8405766))

(assert (=> d!2398015 m!8405712))

(declare-fun m!8405768 () Bool)

(assert (=> d!2398015 m!8405768))

(assert (=> d!2398015 m!8405674))

(assert (=> d!2398015 m!8405712))

(assert (=> d!2398015 m!8405666))

(assert (=> b!8053580 d!2398015))

(declare-fun d!2398021 () Bool)

(assert (=> d!2398021 (not (contains!21218 l!14636 (tuple2!70897 key!6222 value!3131)))))

(declare-fun lt!2727332 () Unit!171927)

(declare-fun choose!60524 (List!75676 K!22823 V!23077) Unit!171927)

(assert (=> d!2398021 (= lt!2727332 (choose!60524 l!14636 key!6222 value!3131))))

(assert (=> d!2398021 (not (containsKey!4857 l!14636 key!6222))))

(assert (=> d!2398021 (= (lemmaNotContainsKeyThenCannotContainPair!26 l!14636 key!6222 value!3131) lt!2727332)))

(declare-fun bs!1972786 () Bool)

(assert (= bs!1972786 d!2398021))

(assert (=> bs!1972786 m!8405670))

(declare-fun m!8405774 () Bool)

(assert (=> bs!1972786 m!8405774))

(assert (=> bs!1972786 m!8405676))

(assert (=> b!8053580 d!2398021))

(declare-fun d!2398027 () Bool)

(declare-fun res!3184973 () Bool)

(declare-fun e!4745717 () Bool)

(assert (=> d!2398027 (=> res!3184973 e!4745717)))

(assert (=> d!2398027 (= res!3184973 (not ((_ is Cons!75550) (t!391448 l!14636))))))

(assert (=> d!2398027 (= (noDuplicateKeys!2710 (t!391448 l!14636)) e!4745717)))

(declare-fun b!8053687 () Bool)

(declare-fun e!4745718 () Bool)

(assert (=> b!8053687 (= e!4745717 e!4745718)))

(declare-fun res!3184974 () Bool)

(assert (=> b!8053687 (=> (not res!3184974) (not e!4745718))))

(assert (=> b!8053687 (= res!3184974 (not (containsKey!4857 (t!391448 (t!391448 l!14636)) (_1!38751 (h!81998 (t!391448 l!14636))))))))

(declare-fun b!8053688 () Bool)

(assert (=> b!8053688 (= e!4745718 (noDuplicateKeys!2710 (t!391448 (t!391448 l!14636))))))

(assert (= (and d!2398027 (not res!3184973)) b!8053687))

(assert (= (and b!8053687 res!3184974) b!8053688))

(declare-fun m!8405780 () Bool)

(assert (=> b!8053687 m!8405780))

(declare-fun m!8405784 () Bool)

(assert (=> b!8053688 m!8405784))

(assert (=> b!8053580 d!2398027))

(declare-fun b!8053723 () Bool)

(assert (=> b!8053723 true))

(declare-fun bs!1972802 () Bool)

(declare-fun b!8053724 () Bool)

(assert (= bs!1972802 (and b!8053724 b!8053723)))

(declare-fun lambda!473761 () Int)

(declare-fun lambda!473760 () Int)

(assert (=> bs!1972802 (= lambda!473761 lambda!473760)))

(assert (=> b!8053724 true))

(declare-fun lt!2727470 () ListMap!7299)

(declare-fun lambda!473762 () Int)

(assert (=> bs!1972802 (= (= lt!2727470 lt!2727260) (= lambda!473762 lambda!473760))))

(assert (=> b!8053724 (= (= lt!2727470 lt!2727260) (= lambda!473762 lambda!473761))))

(assert (=> b!8053724 true))

(declare-fun bs!1972803 () Bool)

(declare-fun d!2398031 () Bool)

(assert (= bs!1972803 (and d!2398031 b!8053723)))

(declare-fun lt!2727480 () ListMap!7299)

(declare-fun lambda!473763 () Int)

(assert (=> bs!1972803 (= (= lt!2727480 lt!2727260) (= lambda!473763 lambda!473760))))

(declare-fun bs!1972804 () Bool)

(assert (= bs!1972804 (and d!2398031 b!8053724)))

(assert (=> bs!1972804 (= (= lt!2727480 lt!2727260) (= lambda!473763 lambda!473761))))

(assert (=> bs!1972804 (= (= lt!2727480 lt!2727470) (= lambda!473763 lambda!473762))))

(assert (=> d!2398031 true))

(declare-fun b!8053722 () Bool)

(declare-fun e!4745738 () Bool)

(declare-fun call!747205 () Bool)

(assert (=> b!8053722 (= e!4745738 call!747205)))

(declare-fun e!4745737 () ListMap!7299)

(assert (=> b!8053723 (= e!4745737 lt!2727260)))

(declare-fun lt!2727471 () Unit!171927)

(declare-fun call!747206 () Unit!171927)

(assert (=> b!8053723 (= lt!2727471 call!747206)))

(assert (=> b!8053723 call!747205))

(declare-fun lt!2727474 () Unit!171927)

(assert (=> b!8053723 (= lt!2727474 lt!2727471)))

(declare-fun call!747207 () Bool)

(assert (=> b!8053723 call!747207))

(declare-fun lt!2727485 () Unit!171927)

(declare-fun Unit!171935 () Unit!171927)

(assert (=> b!8053723 (= lt!2727485 Unit!171935)))

(declare-fun c!1476239 () Bool)

(declare-fun bm!747200 () Bool)

(declare-fun forall!18505 (List!75676 Int) Bool)

(assert (=> bm!747200 (= call!747207 (forall!18505 (ite c!1476239 (toList!11924 lt!2727260) (t!391448 l!14636)) (ite c!1476239 lambda!473760 lambda!473762)))))

(declare-fun e!4745739 () Bool)

(assert (=> d!2398031 e!4745739))

(declare-fun res!3184993 () Bool)

(assert (=> d!2398031 (=> (not res!3184993) (not e!4745739))))

(assert (=> d!2398031 (= res!3184993 (forall!18505 (t!391448 l!14636) lambda!473763))))

(assert (=> d!2398031 (= lt!2727480 e!4745737)))

(assert (=> d!2398031 (= c!1476239 ((_ is Nil!75550) (t!391448 l!14636)))))

(assert (=> d!2398031 (noDuplicateKeys!2710 (t!391448 l!14636))))

(assert (=> d!2398031 (= (addToMapMapFromBucket!1991 (t!391448 l!14636) lt!2727260) lt!2727480)))

(declare-fun b!8053721 () Bool)

(declare-fun invariantList!1934 (List!75676) Bool)

(assert (=> b!8053721 (= e!4745739 (invariantList!1934 (toList!11924 lt!2727480)))))

(assert (=> b!8053724 (= e!4745737 lt!2727470)))

(declare-fun lt!2727467 () ListMap!7299)

(assert (=> b!8053724 (= lt!2727467 (+!2675 lt!2727260 (h!81998 (t!391448 l!14636))))))

(assert (=> b!8053724 (= lt!2727470 (addToMapMapFromBucket!1991 (t!391448 (t!391448 l!14636)) (+!2675 lt!2727260 (h!81998 (t!391448 l!14636)))))))

(declare-fun lt!2727479 () Unit!171927)

(assert (=> b!8053724 (= lt!2727479 call!747206)))

(assert (=> b!8053724 (forall!18505 (toList!11924 lt!2727260) lambda!473761)))

(declare-fun lt!2727483 () Unit!171927)

(assert (=> b!8053724 (= lt!2727483 lt!2727479)))

(assert (=> b!8053724 (forall!18505 (toList!11924 lt!2727467) lambda!473762)))

(declare-fun lt!2727486 () Unit!171927)

(declare-fun Unit!171936 () Unit!171927)

(assert (=> b!8053724 (= lt!2727486 Unit!171936)))

(assert (=> b!8053724 (forall!18505 (t!391448 (t!391448 l!14636)) lambda!473762)))

(declare-fun lt!2727481 () Unit!171927)

(declare-fun Unit!171937 () Unit!171927)

(assert (=> b!8053724 (= lt!2727481 Unit!171937)))

(declare-fun lt!2727475 () Unit!171927)

(declare-fun Unit!171938 () Unit!171927)

(assert (=> b!8053724 (= lt!2727475 Unit!171938)))

(declare-fun lt!2727473 () Unit!171927)

(declare-fun forallContained!4659 (List!75676 Int tuple2!70896) Unit!171927)

(assert (=> b!8053724 (= lt!2727473 (forallContained!4659 (toList!11924 lt!2727467) lambda!473762 (h!81998 (t!391448 l!14636))))))

(assert (=> b!8053724 (contains!21217 lt!2727467 (_1!38751 (h!81998 (t!391448 l!14636))))))

(declare-fun lt!2727484 () Unit!171927)

(declare-fun Unit!171940 () Unit!171927)

(assert (=> b!8053724 (= lt!2727484 Unit!171940)))

(assert (=> b!8053724 (contains!21217 lt!2727470 (_1!38751 (h!81998 (t!391448 l!14636))))))

(declare-fun lt!2727487 () Unit!171927)

(declare-fun Unit!171941 () Unit!171927)

(assert (=> b!8053724 (= lt!2727487 Unit!171941)))

(assert (=> b!8053724 (forall!18505 (t!391448 l!14636) lambda!473762)))

(declare-fun lt!2727482 () Unit!171927)

(declare-fun Unit!171942 () Unit!171927)

(assert (=> b!8053724 (= lt!2727482 Unit!171942)))

(assert (=> b!8053724 (forall!18505 (toList!11924 lt!2727467) lambda!473762)))

(declare-fun lt!2727468 () Unit!171927)

(declare-fun Unit!171943 () Unit!171927)

(assert (=> b!8053724 (= lt!2727468 Unit!171943)))

(declare-fun lt!2727472 () Unit!171927)

(declare-fun Unit!171944 () Unit!171927)

(assert (=> b!8053724 (= lt!2727472 Unit!171944)))

(declare-fun lt!2727477 () Unit!171927)

(declare-fun addForallContainsKeyThenBeforeAdding!1084 (ListMap!7299 ListMap!7299 K!22823 V!23077) Unit!171927)

(assert (=> b!8053724 (= lt!2727477 (addForallContainsKeyThenBeforeAdding!1084 lt!2727260 lt!2727470 (_1!38751 (h!81998 (t!391448 l!14636))) (_2!38751 (h!81998 (t!391448 l!14636)))))))

(assert (=> b!8053724 (forall!18505 (toList!11924 lt!2727260) lambda!473762)))

(declare-fun lt!2727469 () Unit!171927)

(assert (=> b!8053724 (= lt!2727469 lt!2727477)))

(assert (=> b!8053724 (forall!18505 (toList!11924 lt!2727260) lambda!473762)))

(declare-fun lt!2727476 () Unit!171927)

(declare-fun Unit!171945 () Unit!171927)

(assert (=> b!8053724 (= lt!2727476 Unit!171945)))

(declare-fun res!3184994 () Bool)

(assert (=> b!8053724 (= res!3184994 call!747207)))

(assert (=> b!8053724 (=> (not res!3184994) (not e!4745738))))

(assert (=> b!8053724 e!4745738))

(declare-fun lt!2727478 () Unit!171927)

(declare-fun Unit!171946 () Unit!171927)

(assert (=> b!8053724 (= lt!2727478 Unit!171946)))

(declare-fun bm!747201 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1087 (ListMap!7299) Unit!171927)

(assert (=> bm!747201 (= call!747206 (lemmaContainsAllItsOwnKeys!1087 lt!2727260))))

(declare-fun bm!747202 () Bool)

(assert (=> bm!747202 (= call!747205 (forall!18505 (toList!11924 lt!2727260) (ite c!1476239 lambda!473760 lambda!473762)))))

(declare-fun b!8053725 () Bool)

(declare-fun res!3184995 () Bool)

(assert (=> b!8053725 (=> (not res!3184995) (not e!4745739))))

(assert (=> b!8053725 (= res!3184995 (forall!18505 (toList!11924 lt!2727260) lambda!473763))))

(assert (= (and d!2398031 c!1476239) b!8053723))

(assert (= (and d!2398031 (not c!1476239)) b!8053724))

(assert (= (and b!8053724 res!3184994) b!8053722))

(assert (= (or b!8053723 b!8053722) bm!747202))

(assert (= (or b!8053723 b!8053724) bm!747200))

(assert (= (or b!8053723 b!8053724) bm!747201))

(assert (= (and d!2398031 res!3184993) b!8053725))

(assert (= (and b!8053725 res!3184995) b!8053721))

(declare-fun m!8405866 () Bool)

(assert (=> bm!747201 m!8405866))

(declare-fun m!8405868 () Bool)

(assert (=> b!8053725 m!8405868))

(declare-fun m!8405870 () Bool)

(assert (=> b!8053724 m!8405870))

(declare-fun m!8405872 () Bool)

(assert (=> b!8053724 m!8405872))

(assert (=> b!8053724 m!8405870))

(declare-fun m!8405874 () Bool)

(assert (=> b!8053724 m!8405874))

(declare-fun m!8405876 () Bool)

(assert (=> b!8053724 m!8405876))

(declare-fun m!8405878 () Bool)

(assert (=> b!8053724 m!8405878))

(declare-fun m!8405880 () Bool)

(assert (=> b!8053724 m!8405880))

(declare-fun m!8405882 () Bool)

(assert (=> b!8053724 m!8405882))

(assert (=> b!8053724 m!8405880))

(declare-fun m!8405884 () Bool)

(assert (=> b!8053724 m!8405884))

(declare-fun m!8405886 () Bool)

(assert (=> b!8053724 m!8405886))

(declare-fun m!8405888 () Bool)

(assert (=> b!8053724 m!8405888))

(assert (=> b!8053724 m!8405884))

(declare-fun m!8405890 () Bool)

(assert (=> b!8053724 m!8405890))

(declare-fun m!8405892 () Bool)

(assert (=> d!2398031 m!8405892))

(assert (=> d!2398031 m!8405668))

(declare-fun m!8405894 () Bool)

(assert (=> b!8053721 m!8405894))

(declare-fun m!8405896 () Bool)

(assert (=> bm!747200 m!8405896))

(declare-fun m!8405898 () Bool)

(assert (=> bm!747202 m!8405898))

(assert (=> b!8053582 d!2398031))

(declare-fun d!2398039 () Bool)

(declare-fun e!4745761 () Bool)

(assert (=> d!2398039 e!4745761))

(declare-fun res!3185017 () Bool)

(assert (=> d!2398039 (=> (not res!3185017) (not e!4745761))))

(declare-fun lt!2727517 () ListMap!7299)

(assert (=> d!2398039 (= res!3185017 (contains!21217 lt!2727517 (_1!38751 (h!81998 l!14636))))))

(declare-fun lt!2727518 () List!75676)

(assert (=> d!2398039 (= lt!2727517 (ListMap!7300 lt!2727518))))

(declare-fun lt!2727519 () Unit!171927)

(declare-fun lt!2727516 () Unit!171927)

(assert (=> d!2398039 (= lt!2727519 lt!2727516)))

(assert (=> d!2398039 (= (getValueByKey!2784 lt!2727518 (_1!38751 (h!81998 l!14636))) (Some!17999 (_2!38751 (h!81998 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1276 (List!75676 K!22823 V!23077) Unit!171927)

(assert (=> d!2398039 (= lt!2727516 (lemmaContainsTupThenGetReturnValue!1276 lt!2727518 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636))))))

(declare-fun insertNoDuplicatedKeys!784 (List!75676 K!22823 V!23077) List!75676)

(assert (=> d!2398039 (= lt!2727518 (insertNoDuplicatedKeys!784 (toList!11924 acc!1298) (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636))))))

(assert (=> d!2398039 (= (+!2675 acc!1298 (h!81998 l!14636)) lt!2727517)))

(declare-fun b!8053759 () Bool)

(declare-fun res!3185018 () Bool)

(assert (=> b!8053759 (=> (not res!3185018) (not e!4745761))))

(assert (=> b!8053759 (= res!3185018 (= (getValueByKey!2784 (toList!11924 lt!2727517) (_1!38751 (h!81998 l!14636))) (Some!17999 (_2!38751 (h!81998 l!14636)))))))

(declare-fun b!8053760 () Bool)

(assert (=> b!8053760 (= e!4745761 (contains!21218 (toList!11924 lt!2727517) (h!81998 l!14636)))))

(assert (= (and d!2398039 res!3185017) b!8053759))

(assert (= (and b!8053759 res!3185018) b!8053760))

(declare-fun m!8405936 () Bool)

(assert (=> d!2398039 m!8405936))

(declare-fun m!8405938 () Bool)

(assert (=> d!2398039 m!8405938))

(declare-fun m!8405940 () Bool)

(assert (=> d!2398039 m!8405940))

(declare-fun m!8405942 () Bool)

(assert (=> d!2398039 m!8405942))

(declare-fun m!8405944 () Bool)

(assert (=> b!8053759 m!8405944))

(declare-fun m!8405946 () Bool)

(assert (=> b!8053760 m!8405946))

(assert (=> b!8053582 d!2398039))

(assert (=> b!8053581 d!2397997))

(declare-fun d!2398049 () Bool)

(declare-fun res!3185019 () Bool)

(declare-fun e!4745764 () Bool)

(assert (=> d!2398049 (=> res!3185019 e!4745764)))

(assert (=> d!2398049 (= res!3185019 (not ((_ is Cons!75550) l!14636)))))

(assert (=> d!2398049 (= (noDuplicateKeys!2710 l!14636) e!4745764)))

(declare-fun b!8053763 () Bool)

(declare-fun e!4745765 () Bool)

(assert (=> b!8053763 (= e!4745764 e!4745765)))

(declare-fun res!3185020 () Bool)

(assert (=> b!8053763 (=> (not res!3185020) (not e!4745765))))

(assert (=> b!8053763 (= res!3185020 (not (containsKey!4857 (t!391448 l!14636) (_1!38751 (h!81998 l!14636)))))))

(declare-fun b!8053764 () Bool)

(assert (=> b!8053764 (= e!4745765 (noDuplicateKeys!2710 (t!391448 l!14636)))))

(assert (= (and d!2398049 (not res!3185019)) b!8053763))

(assert (= (and b!8053763 res!3185020) b!8053764))

(declare-fun m!8405948 () Bool)

(assert (=> b!8053763 m!8405948))

(assert (=> b!8053764 m!8405668))

(assert (=> start!758544 d!2398049))

(declare-fun d!2398051 () Bool)

(assert (=> d!2398051 (= (inv!97312 acc!1298) (invariantList!1934 (toList!11924 acc!1298)))))

(declare-fun bs!1972806 () Bool)

(assert (= bs!1972806 d!2398051))

(declare-fun m!8405950 () Bool)

(assert (=> bs!1972806 m!8405950))

(assert (=> start!758544 d!2398051))

(declare-fun b!8053766 () Bool)

(declare-fun e!4745767 () Bool)

(assert (=> b!8053766 (= e!4745767 (contains!21220 (keys!30842 acc!1298) key!6222))))

(declare-fun b!8053767 () Bool)

(declare-fun e!4745770 () Bool)

(assert (=> b!8053767 (= e!4745770 (not (contains!21220 (keys!30842 acc!1298) key!6222)))))

(declare-fun b!8053768 () Bool)

(assert (=> b!8053768 false))

(declare-fun lt!2727522 () Unit!171927)

(declare-fun lt!2727524 () Unit!171927)

(assert (=> b!8053768 (= lt!2727522 lt!2727524)))

(assert (=> b!8053768 (containsKey!4859 (toList!11924 acc!1298) key!6222)))

(assert (=> b!8053768 (= lt!2727524 (lemmaInGetKeysListThenContainsKey!1243 (toList!11924 acc!1298) key!6222))))

(declare-fun e!4745766 () Unit!171927)

(declare-fun Unit!171957 () Unit!171927)

(assert (=> b!8053768 (= e!4745766 Unit!171957)))

(declare-fun b!8053769 () Bool)

(declare-fun e!4745769 () Unit!171927)

(assert (=> b!8053769 (= e!4745769 e!4745766)))

(declare-fun c!1476244 () Bool)

(declare-fun call!747209 () Bool)

(assert (=> b!8053769 (= c!1476244 call!747209)))

(declare-fun b!8053770 () Bool)

(declare-fun e!4745768 () List!75678)

(assert (=> b!8053770 (= e!4745768 (keys!30842 acc!1298))))

(declare-fun b!8053765 () Bool)

(declare-fun Unit!171958 () Unit!171927)

(assert (=> b!8053765 (= e!4745766 Unit!171958)))

(declare-fun d!2398053 () Bool)

(declare-fun e!4745771 () Bool)

(assert (=> d!2398053 e!4745771))

(declare-fun res!3185021 () Bool)

(assert (=> d!2398053 (=> res!3185021 e!4745771)))

(assert (=> d!2398053 (= res!3185021 e!4745770)))

(declare-fun res!3185022 () Bool)

(assert (=> d!2398053 (=> (not res!3185022) (not e!4745770))))

(declare-fun lt!2727520 () Bool)

(assert (=> d!2398053 (= res!3185022 (not lt!2727520))))

(declare-fun lt!2727525 () Bool)

(assert (=> d!2398053 (= lt!2727520 lt!2727525)))

(declare-fun lt!2727527 () Unit!171927)

(assert (=> d!2398053 (= lt!2727527 e!4745769)))

(declare-fun c!1476243 () Bool)

(assert (=> d!2398053 (= c!1476243 lt!2727525)))

(assert (=> d!2398053 (= lt!2727525 (containsKey!4859 (toList!11924 acc!1298) key!6222))))

(assert (=> d!2398053 (= (contains!21217 acc!1298 key!6222) lt!2727520)))

(declare-fun b!8053771 () Bool)

(assert (=> b!8053771 (= e!4745768 (getKeysList!1243 (toList!11924 acc!1298)))))

(declare-fun b!8053772 () Bool)

(declare-fun lt!2727526 () Unit!171927)

(assert (=> b!8053772 (= e!4745769 lt!2727526)))

(declare-fun lt!2727521 () Unit!171927)

(assert (=> b!8053772 (= lt!2727521 (lemmaContainsKeyImpliesGetValueByKeyDefined!2555 (toList!11924 acc!1298) key!6222))))

(assert (=> b!8053772 (isDefined!14533 (getValueByKey!2784 (toList!11924 acc!1298) key!6222))))

(declare-fun lt!2727523 () Unit!171927)

(assert (=> b!8053772 (= lt!2727523 lt!2727521)))

(assert (=> b!8053772 (= lt!2727526 (lemmaInListThenGetKeysListContains!1238 (toList!11924 acc!1298) key!6222))))

(assert (=> b!8053772 call!747209))

(declare-fun bm!747204 () Bool)

(assert (=> bm!747204 (= call!747209 (contains!21220 e!4745768 key!6222))))

(declare-fun c!1476245 () Bool)

(assert (=> bm!747204 (= c!1476245 c!1476243)))

(declare-fun b!8053773 () Bool)

(assert (=> b!8053773 (= e!4745771 e!4745767)))

(declare-fun res!3185023 () Bool)

(assert (=> b!8053773 (=> (not res!3185023) (not e!4745767))))

(assert (=> b!8053773 (= res!3185023 (isDefined!14533 (getValueByKey!2784 (toList!11924 acc!1298) key!6222)))))

(assert (= (and d!2398053 c!1476243) b!8053772))

(assert (= (and d!2398053 (not c!1476243)) b!8053769))

(assert (= (and b!8053769 c!1476244) b!8053768))

(assert (= (and b!8053769 (not c!1476244)) b!8053765))

(assert (= (or b!8053772 b!8053769) bm!747204))

(assert (= (and bm!747204 c!1476245) b!8053771))

(assert (= (and bm!747204 (not c!1476245)) b!8053770))

(assert (= (and d!2398053 res!3185022) b!8053767))

(assert (= (and d!2398053 (not res!3185021)) b!8053773))

(assert (= (and b!8053773 res!3185023) b!8053766))

(declare-fun m!8405952 () Bool)

(assert (=> b!8053766 m!8405952))

(assert (=> b!8053766 m!8405952))

(declare-fun m!8405954 () Bool)

(assert (=> b!8053766 m!8405954))

(declare-fun m!8405956 () Bool)

(assert (=> b!8053771 m!8405956))

(declare-fun m!8405958 () Bool)

(assert (=> b!8053768 m!8405958))

(declare-fun m!8405960 () Bool)

(assert (=> b!8053768 m!8405960))

(declare-fun m!8405962 () Bool)

(assert (=> bm!747204 m!8405962))

(assert (=> b!8053770 m!8405952))

(assert (=> b!8053773 m!8405688))

(assert (=> b!8053773 m!8405688))

(declare-fun m!8405964 () Bool)

(assert (=> b!8053773 m!8405964))

(assert (=> b!8053767 m!8405952))

(assert (=> b!8053767 m!8405952))

(assert (=> b!8053767 m!8405954))

(declare-fun m!8405966 () Bool)

(assert (=> b!8053772 m!8405966))

(assert (=> b!8053772 m!8405688))

(assert (=> b!8053772 m!8405688))

(assert (=> b!8053772 m!8405964))

(declare-fun m!8405968 () Bool)

(assert (=> b!8053772 m!8405968))

(assert (=> d!2398053 m!8405958))

(assert (=> b!8053583 d!2398053))

(assert (=> b!8053579 d!2397995))

(declare-fun b!8053775 () Bool)

(declare-fun e!4745773 () Bool)

(assert (=> b!8053775 (= e!4745773 (contains!21220 (keys!30842 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(declare-fun b!8053776 () Bool)

(declare-fun e!4745776 () Bool)

(assert (=> b!8053776 (= e!4745776 (not (contains!21220 (keys!30842 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8053777 () Bool)

(assert (=> b!8053777 false))

(declare-fun lt!2727530 () Unit!171927)

(declare-fun lt!2727532 () Unit!171927)

(assert (=> b!8053777 (= lt!2727530 lt!2727532)))

(assert (=> b!8053777 (containsKey!4859 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222)))

(assert (=> b!8053777 (= lt!2727532 (lemmaInGetKeysListThenContainsKey!1243 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(declare-fun e!4745772 () Unit!171927)

(declare-fun Unit!171963 () Unit!171927)

(assert (=> b!8053777 (= e!4745772 Unit!171963)))

(declare-fun b!8053778 () Bool)

(declare-fun e!4745775 () Unit!171927)

(assert (=> b!8053778 (= e!4745775 e!4745772)))

(declare-fun c!1476247 () Bool)

(declare-fun call!747210 () Bool)

(assert (=> b!8053778 (= c!1476247 call!747210)))

(declare-fun b!8053779 () Bool)

(declare-fun e!4745774 () List!75678)

(assert (=> b!8053779 (= e!4745774 (keys!30842 (addToMapMapFromBucket!1991 l!14636 acc!1298)))))

(declare-fun b!8053774 () Bool)

(declare-fun Unit!171967 () Unit!171927)

(assert (=> b!8053774 (= e!4745772 Unit!171967)))

(declare-fun d!2398055 () Bool)

(declare-fun e!4745777 () Bool)

(assert (=> d!2398055 e!4745777))

(declare-fun res!3185024 () Bool)

(assert (=> d!2398055 (=> res!3185024 e!4745777)))

(assert (=> d!2398055 (= res!3185024 e!4745776)))

(declare-fun res!3185025 () Bool)

(assert (=> d!2398055 (=> (not res!3185025) (not e!4745776))))

(declare-fun lt!2727528 () Bool)

(assert (=> d!2398055 (= res!3185025 (not lt!2727528))))

(declare-fun lt!2727533 () Bool)

(assert (=> d!2398055 (= lt!2727528 lt!2727533)))

(declare-fun lt!2727535 () Unit!171927)

(assert (=> d!2398055 (= lt!2727535 e!4745775)))

(declare-fun c!1476246 () Bool)

(assert (=> d!2398055 (= c!1476246 lt!2727533)))

(assert (=> d!2398055 (= lt!2727533 (containsKey!4859 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398055 (= (contains!21217 (addToMapMapFromBucket!1991 l!14636 acc!1298) key!6222) lt!2727528)))

(declare-fun b!8053780 () Bool)

(assert (=> b!8053780 (= e!4745774 (getKeysList!1243 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298))))))

(declare-fun b!8053781 () Bool)

(declare-fun lt!2727534 () Unit!171927)

(assert (=> b!8053781 (= e!4745775 lt!2727534)))

(declare-fun lt!2727529 () Unit!171927)

(assert (=> b!8053781 (= lt!2727529 (lemmaContainsKeyImpliesGetValueByKeyDefined!2555 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(assert (=> b!8053781 (isDefined!14533 (getValueByKey!2784 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2727531 () Unit!171927)

(assert (=> b!8053781 (= lt!2727531 lt!2727529)))

(assert (=> b!8053781 (= lt!2727534 (lemmaInListThenGetKeysListContains!1238 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222))))

(assert (=> b!8053781 call!747210))

(declare-fun bm!747205 () Bool)

(assert (=> bm!747205 (= call!747210 (contains!21220 e!4745774 key!6222))))

(declare-fun c!1476248 () Bool)

(assert (=> bm!747205 (= c!1476248 c!1476246)))

(declare-fun b!8053782 () Bool)

(assert (=> b!8053782 (= e!4745777 e!4745773)))

(declare-fun res!3185026 () Bool)

(assert (=> b!8053782 (=> (not res!3185026) (not e!4745773))))

(assert (=> b!8053782 (= res!3185026 (isDefined!14533 (getValueByKey!2784 (toList!11924 (addToMapMapFromBucket!1991 l!14636 acc!1298)) key!6222)))))

(assert (= (and d!2398055 c!1476246) b!8053781))

(assert (= (and d!2398055 (not c!1476246)) b!8053778))

(assert (= (and b!8053778 c!1476247) b!8053777))

(assert (= (and b!8053778 (not c!1476247)) b!8053774))

(assert (= (or b!8053781 b!8053778) bm!747205))

(assert (= (and bm!747205 c!1476248) b!8053780))

(assert (= (and bm!747205 (not c!1476248)) b!8053779))

(assert (= (and d!2398055 res!3185025) b!8053776))

(assert (= (and d!2398055 (not res!3185024)) b!8053782))

(assert (= (and b!8053782 res!3185026) b!8053775))

(assert (=> b!8053775 m!8405654))

(declare-fun m!8405970 () Bool)

(assert (=> b!8053775 m!8405970))

(assert (=> b!8053775 m!8405970))

(declare-fun m!8405972 () Bool)

(assert (=> b!8053775 m!8405972))

(declare-fun m!8405974 () Bool)

(assert (=> b!8053780 m!8405974))

(declare-fun m!8405976 () Bool)

(assert (=> b!8053777 m!8405976))

(declare-fun m!8405978 () Bool)

(assert (=> b!8053777 m!8405978))

(declare-fun m!8405980 () Bool)

(assert (=> bm!747205 m!8405980))

(assert (=> b!8053779 m!8405654))

(assert (=> b!8053779 m!8405970))

(declare-fun m!8405982 () Bool)

(assert (=> b!8053782 m!8405982))

(assert (=> b!8053782 m!8405982))

(declare-fun m!8405984 () Bool)

(assert (=> b!8053782 m!8405984))

(assert (=> b!8053776 m!8405654))

(assert (=> b!8053776 m!8405970))

(assert (=> b!8053776 m!8405970))

(assert (=> b!8053776 m!8405972))

(declare-fun m!8405986 () Bool)

(assert (=> b!8053781 m!8405986))

(assert (=> b!8053781 m!8405982))

(assert (=> b!8053781 m!8405982))

(assert (=> b!8053781 m!8405984))

(declare-fun m!8405988 () Bool)

(assert (=> b!8053781 m!8405988))

(assert (=> d!2398055 m!8405976))

(assert (=> b!8053574 d!2398055))

(declare-fun bs!1972807 () Bool)

(declare-fun b!8053785 () Bool)

(assert (= bs!1972807 (and b!8053785 b!8053723)))

(declare-fun lambda!473764 () Int)

(assert (=> bs!1972807 (= (= acc!1298 lt!2727260) (= lambda!473764 lambda!473760))))

(declare-fun bs!1972808 () Bool)

(assert (= bs!1972808 (and b!8053785 b!8053724)))

(assert (=> bs!1972808 (= (= acc!1298 lt!2727260) (= lambda!473764 lambda!473761))))

(assert (=> bs!1972808 (= (= acc!1298 lt!2727470) (= lambda!473764 lambda!473762))))

(declare-fun bs!1972809 () Bool)

(assert (= bs!1972809 (and b!8053785 d!2398031)))

(assert (=> bs!1972809 (= (= acc!1298 lt!2727480) (= lambda!473764 lambda!473763))))

(assert (=> b!8053785 true))

(declare-fun bs!1972810 () Bool)

(declare-fun b!8053786 () Bool)

(assert (= bs!1972810 (and b!8053786 d!2398031)))

(declare-fun lambda!473765 () Int)

(assert (=> bs!1972810 (= (= acc!1298 lt!2727480) (= lambda!473765 lambda!473763))))

(declare-fun bs!1972811 () Bool)

(assert (= bs!1972811 (and b!8053786 b!8053724)))

(assert (=> bs!1972811 (= (= acc!1298 lt!2727470) (= lambda!473765 lambda!473762))))

(declare-fun bs!1972812 () Bool)

(assert (= bs!1972812 (and b!8053786 b!8053723)))

(assert (=> bs!1972812 (= (= acc!1298 lt!2727260) (= lambda!473765 lambda!473760))))

(declare-fun bs!1972813 () Bool)

(assert (= bs!1972813 (and b!8053786 b!8053785)))

(assert (=> bs!1972813 (= lambda!473765 lambda!473764)))

(assert (=> bs!1972811 (= (= acc!1298 lt!2727260) (= lambda!473765 lambda!473761))))

(assert (=> b!8053786 true))

(declare-fun lambda!473766 () Int)

(declare-fun lt!2727539 () ListMap!7299)

(assert (=> bs!1972810 (= (= lt!2727539 lt!2727480) (= lambda!473766 lambda!473763))))

(assert (=> b!8053786 (= (= lt!2727539 acc!1298) (= lambda!473766 lambda!473765))))

(assert (=> bs!1972811 (= (= lt!2727539 lt!2727470) (= lambda!473766 lambda!473762))))

(assert (=> bs!1972812 (= (= lt!2727539 lt!2727260) (= lambda!473766 lambda!473760))))

(assert (=> bs!1972813 (= (= lt!2727539 acc!1298) (= lambda!473766 lambda!473764))))

(assert (=> bs!1972811 (= (= lt!2727539 lt!2727260) (= lambda!473766 lambda!473761))))

(assert (=> b!8053786 true))

(declare-fun bs!1972814 () Bool)

(declare-fun d!2398057 () Bool)

(assert (= bs!1972814 (and d!2398057 d!2398031)))

(declare-fun lambda!473767 () Int)

(declare-fun lt!2727549 () ListMap!7299)

(assert (=> bs!1972814 (= (= lt!2727549 lt!2727480) (= lambda!473767 lambda!473763))))

(declare-fun bs!1972815 () Bool)

(assert (= bs!1972815 (and d!2398057 b!8053786)))

(assert (=> bs!1972815 (= (= lt!2727549 acc!1298) (= lambda!473767 lambda!473765))))

(declare-fun bs!1972816 () Bool)

(assert (= bs!1972816 (and d!2398057 b!8053723)))

(assert (=> bs!1972816 (= (= lt!2727549 lt!2727260) (= lambda!473767 lambda!473760))))

(declare-fun bs!1972817 () Bool)

(assert (= bs!1972817 (and d!2398057 b!8053785)))

(assert (=> bs!1972817 (= (= lt!2727549 acc!1298) (= lambda!473767 lambda!473764))))

(declare-fun bs!1972818 () Bool)

(assert (= bs!1972818 (and d!2398057 b!8053724)))

(assert (=> bs!1972818 (= (= lt!2727549 lt!2727260) (= lambda!473767 lambda!473761))))

(assert (=> bs!1972818 (= (= lt!2727549 lt!2727470) (= lambda!473767 lambda!473762))))

(assert (=> bs!1972815 (= (= lt!2727549 lt!2727539) (= lambda!473767 lambda!473766))))

(assert (=> d!2398057 true))

(declare-fun b!8053784 () Bool)

(declare-fun e!4745779 () Bool)

(declare-fun call!747211 () Bool)

(assert (=> b!8053784 (= e!4745779 call!747211)))

(declare-fun e!4745778 () ListMap!7299)

(assert (=> b!8053785 (= e!4745778 acc!1298)))

(declare-fun lt!2727540 () Unit!171927)

(declare-fun call!747212 () Unit!171927)

(assert (=> b!8053785 (= lt!2727540 call!747212)))

(assert (=> b!8053785 call!747211))

(declare-fun lt!2727543 () Unit!171927)

(assert (=> b!8053785 (= lt!2727543 lt!2727540)))

(declare-fun call!747213 () Bool)

(assert (=> b!8053785 call!747213))

(declare-fun lt!2727554 () Unit!171927)

(declare-fun Unit!171972 () Unit!171927)

(assert (=> b!8053785 (= lt!2727554 Unit!171972)))

(declare-fun c!1476249 () Bool)

(declare-fun bm!747206 () Bool)

(assert (=> bm!747206 (= call!747213 (forall!18505 (ite c!1476249 (toList!11924 acc!1298) l!14636) (ite c!1476249 lambda!473764 lambda!473766)))))

(declare-fun e!4745780 () Bool)

(assert (=> d!2398057 e!4745780))

(declare-fun res!3185027 () Bool)

(assert (=> d!2398057 (=> (not res!3185027) (not e!4745780))))

(assert (=> d!2398057 (= res!3185027 (forall!18505 l!14636 lambda!473767))))

(assert (=> d!2398057 (= lt!2727549 e!4745778)))

(assert (=> d!2398057 (= c!1476249 ((_ is Nil!75550) l!14636))))

(assert (=> d!2398057 (noDuplicateKeys!2710 l!14636)))

(assert (=> d!2398057 (= (addToMapMapFromBucket!1991 l!14636 acc!1298) lt!2727549)))

(declare-fun b!8053783 () Bool)

(assert (=> b!8053783 (= e!4745780 (invariantList!1934 (toList!11924 lt!2727549)))))

(assert (=> b!8053786 (= e!4745778 lt!2727539)))

(declare-fun lt!2727536 () ListMap!7299)

(assert (=> b!8053786 (= lt!2727536 (+!2675 acc!1298 (h!81998 l!14636)))))

(assert (=> b!8053786 (= lt!2727539 (addToMapMapFromBucket!1991 (t!391448 l!14636) (+!2675 acc!1298 (h!81998 l!14636))))))

(declare-fun lt!2727548 () Unit!171927)

(assert (=> b!8053786 (= lt!2727548 call!747212)))

(assert (=> b!8053786 (forall!18505 (toList!11924 acc!1298) lambda!473765)))

(declare-fun lt!2727552 () Unit!171927)

(assert (=> b!8053786 (= lt!2727552 lt!2727548)))

(assert (=> b!8053786 (forall!18505 (toList!11924 lt!2727536) lambda!473766)))

(declare-fun lt!2727555 () Unit!171927)

(declare-fun Unit!171975 () Unit!171927)

(assert (=> b!8053786 (= lt!2727555 Unit!171975)))

(assert (=> b!8053786 (forall!18505 (t!391448 l!14636) lambda!473766)))

(declare-fun lt!2727550 () Unit!171927)

(declare-fun Unit!171976 () Unit!171927)

(assert (=> b!8053786 (= lt!2727550 Unit!171976)))

(declare-fun lt!2727544 () Unit!171927)

(declare-fun Unit!171977 () Unit!171927)

(assert (=> b!8053786 (= lt!2727544 Unit!171977)))

(declare-fun lt!2727542 () Unit!171927)

(assert (=> b!8053786 (= lt!2727542 (forallContained!4659 (toList!11924 lt!2727536) lambda!473766 (h!81998 l!14636)))))

(assert (=> b!8053786 (contains!21217 lt!2727536 (_1!38751 (h!81998 l!14636)))))

(declare-fun lt!2727553 () Unit!171927)

(declare-fun Unit!171978 () Unit!171927)

(assert (=> b!8053786 (= lt!2727553 Unit!171978)))

(assert (=> b!8053786 (contains!21217 lt!2727539 (_1!38751 (h!81998 l!14636)))))

(declare-fun lt!2727556 () Unit!171927)

(declare-fun Unit!171979 () Unit!171927)

(assert (=> b!8053786 (= lt!2727556 Unit!171979)))

(assert (=> b!8053786 (forall!18505 l!14636 lambda!473766)))

(declare-fun lt!2727551 () Unit!171927)

(declare-fun Unit!171980 () Unit!171927)

(assert (=> b!8053786 (= lt!2727551 Unit!171980)))

(assert (=> b!8053786 (forall!18505 (toList!11924 lt!2727536) lambda!473766)))

(declare-fun lt!2727537 () Unit!171927)

(declare-fun Unit!171981 () Unit!171927)

(assert (=> b!8053786 (= lt!2727537 Unit!171981)))

(declare-fun lt!2727541 () Unit!171927)

(declare-fun Unit!171982 () Unit!171927)

(assert (=> b!8053786 (= lt!2727541 Unit!171982)))

(declare-fun lt!2727546 () Unit!171927)

(assert (=> b!8053786 (= lt!2727546 (addForallContainsKeyThenBeforeAdding!1084 acc!1298 lt!2727539 (_1!38751 (h!81998 l!14636)) (_2!38751 (h!81998 l!14636))))))

(assert (=> b!8053786 (forall!18505 (toList!11924 acc!1298) lambda!473766)))

(declare-fun lt!2727538 () Unit!171927)

(assert (=> b!8053786 (= lt!2727538 lt!2727546)))

(assert (=> b!8053786 (forall!18505 (toList!11924 acc!1298) lambda!473766)))

(declare-fun lt!2727545 () Unit!171927)

(declare-fun Unit!171983 () Unit!171927)

(assert (=> b!8053786 (= lt!2727545 Unit!171983)))

(declare-fun res!3185028 () Bool)

(assert (=> b!8053786 (= res!3185028 call!747213)))

(assert (=> b!8053786 (=> (not res!3185028) (not e!4745779))))

(assert (=> b!8053786 e!4745779))

(declare-fun lt!2727547 () Unit!171927)

(declare-fun Unit!171984 () Unit!171927)

(assert (=> b!8053786 (= lt!2727547 Unit!171984)))

(declare-fun bm!747207 () Bool)

(assert (=> bm!747207 (= call!747212 (lemmaContainsAllItsOwnKeys!1087 acc!1298))))

(declare-fun bm!747208 () Bool)

(assert (=> bm!747208 (= call!747211 (forall!18505 (toList!11924 acc!1298) (ite c!1476249 lambda!473764 lambda!473766)))))

(declare-fun b!8053787 () Bool)

(declare-fun res!3185029 () Bool)

(assert (=> b!8053787 (=> (not res!3185029) (not e!4745780))))

(assert (=> b!8053787 (= res!3185029 (forall!18505 (toList!11924 acc!1298) lambda!473767))))

(assert (= (and d!2398057 c!1476249) b!8053785))

(assert (= (and d!2398057 (not c!1476249)) b!8053786))

(assert (= (and b!8053786 res!3185028) b!8053784))

(assert (= (or b!8053785 b!8053784) bm!747208))

(assert (= (or b!8053785 b!8053786) bm!747206))

(assert (= (or b!8053785 b!8053786) bm!747207))

(assert (= (and d!2398057 res!3185027) b!8053787))

(assert (= (and b!8053787 res!3185029) b!8053783))

(declare-fun m!8405990 () Bool)

(assert (=> bm!747207 m!8405990))

(declare-fun m!8405992 () Bool)

(assert (=> b!8053787 m!8405992))

(declare-fun m!8405994 () Bool)

(assert (=> b!8053786 m!8405994))

(declare-fun m!8405996 () Bool)

(assert (=> b!8053786 m!8405996))

(assert (=> b!8053786 m!8405994))

(declare-fun m!8405998 () Bool)

(assert (=> b!8053786 m!8405998))

(declare-fun m!8406000 () Bool)

(assert (=> b!8053786 m!8406000))

(declare-fun m!8406002 () Bool)

(assert (=> b!8053786 m!8406002))

(declare-fun m!8406004 () Bool)

(assert (=> b!8053786 m!8406004))

(declare-fun m!8406006 () Bool)

(assert (=> b!8053786 m!8406006))

(assert (=> b!8053786 m!8406004))

(assert (=> b!8053786 m!8405680))

(declare-fun m!8406008 () Bool)

(assert (=> b!8053786 m!8406008))

(declare-fun m!8406010 () Bool)

(assert (=> b!8053786 m!8406010))

(assert (=> b!8053786 m!8405680))

(declare-fun m!8406012 () Bool)

(assert (=> b!8053786 m!8406012))

(declare-fun m!8406014 () Bool)

(assert (=> d!2398057 m!8406014))

(assert (=> d!2398057 m!8405682))

(declare-fun m!8406016 () Bool)

(assert (=> b!8053783 m!8406016))

(declare-fun m!8406018 () Bool)

(assert (=> bm!747206 m!8406018))

(declare-fun m!8406020 () Bool)

(assert (=> bm!747208 m!8406020))

(assert (=> b!8053574 d!2398057))

(assert (=> b!8053584 d!2398001))

(declare-fun tp!2413776 () Bool)

(declare-fun b!8053792 () Bool)

(declare-fun e!4745783 () Bool)

(assert (=> b!8053792 (= e!4745783 (and tp_is_empty!54915 tp_is_empty!54917 tp!2413776))))

(assert (=> b!8053575 (= tp!2413769 e!4745783)))

(assert (= (and b!8053575 ((_ is Cons!75550) (toList!11924 acc!1298))) b!8053792))

(declare-fun tp!2413777 () Bool)

(declare-fun e!4745784 () Bool)

(declare-fun b!8053793 () Bool)

(assert (=> b!8053793 (= e!4745784 (and tp_is_empty!54915 tp_is_empty!54917 tp!2413777))))

(assert (=> b!8053578 (= tp!2413768 e!4745784)))

(assert (= (and b!8053578 ((_ is Cons!75550) (t!391448 l!14636))) b!8053793))

(check-sat (not b!8053768) tp_is_empty!54915 (not b!8053657) (not b!8053773) (not bm!747200) (not bm!747207) (not b!8053793) (not bm!747202) (not d!2398021) (not b!8053776) (not bm!747205) (not d!2398053) (not b!8053777) (not b!8053688) (not d!2398039) (not b!8053658) (not b!8053771) (not d!2398051) (not b!8053782) (not b!8053775) (not b!8053656) (not b!8053652) tp_is_empty!54917 (not d!2398057) (not b!8053783) (not b!8053687) (not bm!747201) (not d!2397997) (not b!8053792) (not b!8053779) (not b!8053721) (not d!2397999) (not b!8053591) (not b!8053772) (not bm!747180) (not d!2398001) (not b!8053786) (not b!8053725) (not b!8053760) (not bm!747204) (not b!8053763) (not b!8053597) (not d!2398055) (not b!8053770) (not bm!747206) (not d!2398005) (not d!2398015) (not b!8053655) (not bm!747208) (not b!8053764) (not d!2398031) (not b!8053780) (not b!8053787) (not b!8053759) (not b!8053767) (not b!8053724) (not b!8053766) (not d!2398011) (not b!8053651) (not b!8053781) (not b!8053653))
(check-sat)
