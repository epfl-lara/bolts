; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485684 () Bool)

(assert start!485684)

(declare-fun b!4753241 () Bool)

(declare-fun tp!1350292 () Bool)

(declare-fun e!2965172 () Bool)

(declare-fun tp_is_empty!31933 () Bool)

(declare-fun tp_is_empty!31935 () Bool)

(assert (=> b!4753241 (= e!2965172 (and tp_is_empty!31933 tp_is_empty!31935 tp!1350292))))

(declare-fun e!2965174 () Bool)

(declare-datatypes ((K!14550 0))(
  ( (K!14551 (val!19911 Int)) )
))
(declare-datatypes ((V!14796 0))(
  ( (V!14797 (val!19912 Int)) )
))
(declare-datatypes ((tuple2!54880 0))(
  ( (tuple2!54881 (_1!30734 K!14550) (_2!30734 V!14796)) )
))
(declare-datatypes ((List!53224 0))(
  ( (Nil!53100) (Cons!53100 (h!59497 tuple2!54880) (t!360566 List!53224)) )
))
(declare-datatypes ((ListMap!5565 0))(
  ( (ListMap!5566 (toList!6128 List!53224)) )
))
(declare-fun lt!1918650 () ListMap!5565)

(declare-fun lt!1918651 () ListMap!5565)

(declare-fun b!4753242 () Bool)

(declare-fun t!14174 () tuple2!54880)

(declare-fun eq!1229 (ListMap!5565 ListMap!5565) Bool)

(declare-fun +!2394 (ListMap!5565 tuple2!54880) ListMap!5565)

(assert (=> b!4753242 (= e!2965174 (not (eq!1229 lt!1918650 (+!2394 lt!1918651 t!14174))))))

(declare-fun e!2965175 () Bool)

(assert (=> b!4753242 e!2965175))

(declare-fun res!2015965 () Bool)

(assert (=> b!4753242 (=> (not res!2015965) (not e!2965175))))

(declare-fun lt!1918648 () ListMap!5565)

(declare-fun lt!1918654 () ListMap!5565)

(assert (=> b!4753242 (= res!2015965 (eq!1229 lt!1918648 lt!1918654))))

(declare-fun lt!1918656 () ListMap!5565)

(declare-fun lt!1918657 () ListMap!5565)

(declare-fun l!14304 () List!53224)

(declare-datatypes ((Unit!136722 0))(
  ( (Unit!136723) )
))
(declare-fun lt!1918659 () Unit!136722)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!120 (ListMap!5565 ListMap!5565 List!53224) Unit!136722)

(assert (=> b!4753242 (= lt!1918659 (lemmaAddToMapFromBucketPreservesEquivalence!120 lt!1918656 lt!1918657 (t!360566 l!14304)))))

(declare-fun e!2965173 () Bool)

(assert (=> b!4753242 e!2965173))

(declare-fun res!2015962 () Bool)

(assert (=> b!4753242 (=> (not res!2015962) (not e!2965173))))

(declare-fun lt!1918658 () ListMap!5565)

(declare-fun lt!1918647 () ListMap!5565)

(assert (=> b!4753242 (= res!2015962 (eq!1229 lt!1918658 lt!1918647))))

(declare-fun lt!1918643 () Unit!136722)

(declare-fun acc!1214 () ListMap!5565)

(declare-fun addCommutativeForDiffKeys!30 (ListMap!5565 K!14550 V!14796 K!14550 V!14796) Unit!136722)

(assert (=> b!4753242 (= lt!1918643 (addCommutativeForDiffKeys!30 acc!1214 (_1!30734 t!14174) (_2!30734 t!14174) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> b!4753242 (eq!1229 lt!1918647 lt!1918658)))

(assert (=> b!4753242 (= lt!1918658 (+!2394 (+!2394 acc!1214 t!14174) (h!59497 l!14304)))))

(declare-fun lt!1918644 () ListMap!5565)

(assert (=> b!4753242 (= lt!1918647 (+!2394 lt!1918644 t!14174))))

(declare-fun lt!1918652 () Unit!136722)

(assert (=> b!4753242 (= lt!1918652 (addCommutativeForDiffKeys!30 acc!1214 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> b!4753242 (eq!1229 lt!1918650 lt!1918654)))

(declare-fun addToMapMapFromBucket!1584 (List!53224 ListMap!5565) ListMap!5565)

(assert (=> b!4753242 (= lt!1918654 (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918657))))

(declare-fun lt!1918645 () ListMap!5565)

(assert (=> b!4753242 (= lt!1918657 (+!2394 lt!1918645 (h!59497 l!14304)))))

(assert (=> b!4753242 (eq!1229 lt!1918650 (addToMapMapFromBucket!1584 l!14304 lt!1918645))))

(assert (=> b!4753242 (= lt!1918645 (+!2394 acc!1214 t!14174))))

(declare-fun lt!1918653 () List!53224)

(assert (=> b!4753242 (= lt!1918650 (addToMapMapFromBucket!1584 lt!1918653 acc!1214))))

(declare-fun lt!1918646 () ListMap!5565)

(assert (=> b!4753242 (eq!1229 lt!1918646 lt!1918648)))

(assert (=> b!4753242 (= lt!1918648 (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918656))))

(assert (=> b!4753242 (= lt!1918656 (+!2394 lt!1918644 t!14174))))

(declare-fun lt!1918655 () ListMap!5565)

(assert (=> b!4753242 (eq!1229 lt!1918655 lt!1918651)))

(assert (=> b!4753242 (= lt!1918651 (addToMapMapFromBucket!1584 l!14304 acc!1214))))

(assert (=> b!4753242 (eq!1229 lt!1918646 (+!2394 lt!1918655 t!14174))))

(assert (=> b!4753242 (= lt!1918646 (addToMapMapFromBucket!1584 (Cons!53100 t!14174 (t!360566 l!14304)) lt!1918644))))

(declare-fun lt!1918649 () Unit!136722)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!474 (tuple2!54880 List!53224 ListMap!5565) Unit!136722)

(assert (=> b!4753242 (= lt!1918649 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!474 t!14174 (t!360566 l!14304) lt!1918644))))

(assert (=> b!4753242 (= lt!1918655 (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918644))))

(assert (=> b!4753242 (= lt!1918644 (+!2394 acc!1214 (h!59497 l!14304)))))

(declare-fun b!4753243 () Bool)

(assert (=> b!4753243 (= e!2965175 (eq!1229 lt!1918650 lt!1918648))))

(declare-fun res!2015961 () Bool)

(declare-fun e!2965171 () Bool)

(assert (=> start!485684 (=> (not res!2015961) (not e!2965171))))

(declare-fun noDuplicateKeys!2160 (List!53224) Bool)

(assert (=> start!485684 (= res!2015961 (noDuplicateKeys!2160 l!14304))))

(assert (=> start!485684 e!2965171))

(assert (=> start!485684 e!2965172))

(assert (=> start!485684 (and tp_is_empty!31933 tp_is_empty!31935)))

(declare-fun e!2965176 () Bool)

(declare-fun inv!68420 (ListMap!5565) Bool)

(assert (=> start!485684 (and (inv!68420 acc!1214) e!2965176)))

(declare-fun b!4753244 () Bool)

(assert (=> b!4753244 (= e!2965173 (eq!1229 lt!1918657 lt!1918656))))

(declare-fun b!4753245 () Bool)

(declare-fun res!2015963 () Bool)

(assert (=> b!4753245 (=> (not res!2015963) (not e!2965174))))

(get-info :version)

(assert (=> b!4753245 (= res!2015963 (not ((_ is Nil!53100) l!14304)))))

(declare-fun b!4753246 () Bool)

(assert (=> b!4753246 (= e!2965171 e!2965174)))

(declare-fun res!2015964 () Bool)

(assert (=> b!4753246 (=> (not res!2015964) (not e!2965174))))

(assert (=> b!4753246 (= res!2015964 (noDuplicateKeys!2160 lt!1918653))))

(assert (=> b!4753246 (= lt!1918653 (Cons!53100 t!14174 l!14304))))

(declare-fun b!4753247 () Bool)

(declare-fun tp!1350293 () Bool)

(assert (=> b!4753247 (= e!2965176 tp!1350293)))

(assert (= (and start!485684 res!2015961) b!4753246))

(assert (= (and b!4753246 res!2015964) b!4753245))

(assert (= (and b!4753245 res!2015963) b!4753242))

(assert (= (and b!4753242 res!2015962) b!4753244))

(assert (= (and b!4753242 res!2015965) b!4753243))

(assert (= (and start!485684 ((_ is Cons!53100) l!14304)) b!4753241))

(assert (= start!485684 b!4753247))

(declare-fun m!5719697 () Bool)

(assert (=> b!4753244 m!5719697))

(declare-fun m!5719699 () Bool)

(assert (=> b!4753243 m!5719699))

(declare-fun m!5719701 () Bool)

(assert (=> b!4753246 m!5719701))

(declare-fun m!5719703 () Bool)

(assert (=> start!485684 m!5719703))

(declare-fun m!5719705 () Bool)

(assert (=> start!485684 m!5719705))

(declare-fun m!5719707 () Bool)

(assert (=> b!4753242 m!5719707))

(declare-fun m!5719709 () Bool)

(assert (=> b!4753242 m!5719709))

(declare-fun m!5719711 () Bool)

(assert (=> b!4753242 m!5719711))

(declare-fun m!5719713 () Bool)

(assert (=> b!4753242 m!5719713))

(declare-fun m!5719715 () Bool)

(assert (=> b!4753242 m!5719715))

(declare-fun m!5719717 () Bool)

(assert (=> b!4753242 m!5719717))

(declare-fun m!5719719 () Bool)

(assert (=> b!4753242 m!5719719))

(declare-fun m!5719721 () Bool)

(assert (=> b!4753242 m!5719721))

(declare-fun m!5719723 () Bool)

(assert (=> b!4753242 m!5719723))

(declare-fun m!5719725 () Bool)

(assert (=> b!4753242 m!5719725))

(declare-fun m!5719727 () Bool)

(assert (=> b!4753242 m!5719727))

(assert (=> b!4753242 m!5719723))

(assert (=> b!4753242 m!5719717))

(declare-fun m!5719729 () Bool)

(assert (=> b!4753242 m!5719729))

(declare-fun m!5719731 () Bool)

(assert (=> b!4753242 m!5719731))

(declare-fun m!5719733 () Bool)

(assert (=> b!4753242 m!5719733))

(declare-fun m!5719735 () Bool)

(assert (=> b!4753242 m!5719735))

(declare-fun m!5719737 () Bool)

(assert (=> b!4753242 m!5719737))

(assert (=> b!4753242 m!5719709))

(declare-fun m!5719739 () Bool)

(assert (=> b!4753242 m!5719739))

(declare-fun m!5719741 () Bool)

(assert (=> b!4753242 m!5719741))

(declare-fun m!5719743 () Bool)

(assert (=> b!4753242 m!5719743))

(declare-fun m!5719745 () Bool)

(assert (=> b!4753242 m!5719745))

(assert (=> b!4753242 m!5719713))

(declare-fun m!5719747 () Bool)

(assert (=> b!4753242 m!5719747))

(declare-fun m!5719749 () Bool)

(assert (=> b!4753242 m!5719749))

(declare-fun m!5719751 () Bool)

(assert (=> b!4753242 m!5719751))

(declare-fun m!5719753 () Bool)

(assert (=> b!4753242 m!5719753))

(declare-fun m!5719755 () Bool)

(assert (=> b!4753242 m!5719755))

(declare-fun m!5719757 () Bool)

(assert (=> b!4753242 m!5719757))

(declare-fun m!5719759 () Bool)

(assert (=> b!4753242 m!5719759))

(check-sat (not b!4753241) (not b!4753243) (not b!4753247) (not b!4753242) tp_is_empty!31935 (not start!485684) (not b!4753246) tp_is_empty!31933 (not b!4753244))
(check-sat)
(get-model)

(declare-fun d!1519808 () Bool)

(declare-fun res!2015974 () Bool)

(declare-fun e!2965183 () Bool)

(assert (=> d!1519808 (=> res!2015974 e!2965183)))

(assert (=> d!1519808 (= res!2015974 (not ((_ is Cons!53100) l!14304)))))

(assert (=> d!1519808 (= (noDuplicateKeys!2160 l!14304) e!2965183)))

(declare-fun b!4753256 () Bool)

(declare-fun e!2965184 () Bool)

(assert (=> b!4753256 (= e!2965183 e!2965184)))

(declare-fun res!2015975 () Bool)

(assert (=> b!4753256 (=> (not res!2015975) (not e!2965184))))

(declare-fun containsKey!3566 (List!53224 K!14550) Bool)

(assert (=> b!4753256 (= res!2015975 (not (containsKey!3566 (t!360566 l!14304) (_1!30734 (h!59497 l!14304)))))))

(declare-fun b!4753257 () Bool)

(assert (=> b!4753257 (= e!2965184 (noDuplicateKeys!2160 (t!360566 l!14304)))))

(assert (= (and d!1519808 (not res!2015974)) b!4753256))

(assert (= (and b!4753256 res!2015975) b!4753257))

(declare-fun m!5719761 () Bool)

(assert (=> b!4753256 m!5719761))

(declare-fun m!5719763 () Bool)

(assert (=> b!4753257 m!5719763))

(assert (=> start!485684 d!1519808))

(declare-fun d!1519810 () Bool)

(declare-fun invariantList!1602 (List!53224) Bool)

(assert (=> d!1519810 (= (inv!68420 acc!1214) (invariantList!1602 (toList!6128 acc!1214)))))

(declare-fun bs!1145240 () Bool)

(assert (= bs!1145240 d!1519810))

(declare-fun m!5719777 () Bool)

(assert (=> bs!1145240 m!5719777))

(assert (=> start!485684 d!1519810))

(declare-fun d!1519814 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9539 (List!53224) (InoxSet tuple2!54880))

(assert (=> d!1519814 (= (eq!1229 lt!1918657 lt!1918656) (= (content!9539 (toList!6128 lt!1918657)) (content!9539 (toList!6128 lt!1918656))))))

(declare-fun bs!1145242 () Bool)

(assert (= bs!1145242 d!1519814))

(declare-fun m!5719799 () Bool)

(assert (=> bs!1145242 m!5719799))

(declare-fun m!5719803 () Bool)

(assert (=> bs!1145242 m!5719803))

(assert (=> b!4753244 d!1519814))

(declare-fun d!1519820 () Bool)

(assert (=> d!1519820 (= (eq!1229 lt!1918650 lt!1918648) (= (content!9539 (toList!6128 lt!1918650)) (content!9539 (toList!6128 lt!1918648))))))

(declare-fun bs!1145243 () Bool)

(assert (= bs!1145243 d!1519820))

(declare-fun m!5719811 () Bool)

(assert (=> bs!1145243 m!5719811))

(declare-fun m!5719813 () Bool)

(assert (=> bs!1145243 m!5719813))

(assert (=> b!4753243 d!1519820))

(declare-fun d!1519824 () Bool)

(declare-fun e!2965190 () Bool)

(assert (=> d!1519824 e!2965190))

(declare-fun res!2015986 () Bool)

(assert (=> d!1519824 (=> (not res!2015986) (not e!2965190))))

(declare-fun lt!1918689 () ListMap!5565)

(declare-fun contains!16528 (ListMap!5565 K!14550) Bool)

(assert (=> d!1519824 (= res!2015986 (contains!16528 lt!1918689 (_1!30734 (h!59497 l!14304))))))

(declare-fun lt!1918690 () List!53224)

(assert (=> d!1519824 (= lt!1918689 (ListMap!5566 lt!1918690))))

(declare-fun lt!1918691 () Unit!136722)

(declare-fun lt!1918688 () Unit!136722)

(assert (=> d!1519824 (= lt!1918691 lt!1918688)))

(declare-datatypes ((Option!12539 0))(
  ( (None!12538) (Some!12538 (v!47239 V!14796)) )
))
(declare-fun getValueByKey!2089 (List!53224 K!14550) Option!12539)

(assert (=> d!1519824 (= (getValueByKey!2089 lt!1918690 (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1166 (List!53224 K!14550 V!14796) Unit!136722)

(assert (=> d!1519824 (= lt!1918688 (lemmaContainsTupThenGetReturnValue!1166 lt!1918690 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(declare-fun insertNoDuplicatedKeys!674 (List!53224 K!14550 V!14796) List!53224)

(assert (=> d!1519824 (= lt!1918690 (insertNoDuplicatedKeys!674 (toList!6128 acc!1214) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519824 (= (+!2394 acc!1214 (h!59497 l!14304)) lt!1918689)))

(declare-fun b!4753268 () Bool)

(declare-fun res!2015987 () Bool)

(assert (=> b!4753268 (=> (not res!2015987) (not e!2965190))))

(assert (=> b!4753268 (= res!2015987 (= (getValueByKey!2089 (toList!6128 lt!1918689) (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304)))))))

(declare-fun b!4753269 () Bool)

(declare-fun contains!16529 (List!53224 tuple2!54880) Bool)

(assert (=> b!4753269 (= e!2965190 (contains!16529 (toList!6128 lt!1918689) (h!59497 l!14304)))))

(assert (= (and d!1519824 res!2015986) b!4753268))

(assert (= (and b!4753268 res!2015987) b!4753269))

(declare-fun m!5719815 () Bool)

(assert (=> d!1519824 m!5719815))

(declare-fun m!5719817 () Bool)

(assert (=> d!1519824 m!5719817))

(declare-fun m!5719819 () Bool)

(assert (=> d!1519824 m!5719819))

(declare-fun m!5719821 () Bool)

(assert (=> d!1519824 m!5719821))

(declare-fun m!5719823 () Bool)

(assert (=> b!4753268 m!5719823))

(declare-fun m!5719825 () Bool)

(assert (=> b!4753269 m!5719825))

(assert (=> b!4753242 d!1519824))

(declare-fun b!4753337 () Bool)

(assert (=> b!4753337 true))

(declare-fun bs!1145467 () Bool)

(declare-fun b!4753339 () Bool)

(assert (= bs!1145467 (and b!4753339 b!4753337)))

(declare-fun lambda!222614 () Int)

(declare-fun lambda!222613 () Int)

(assert (=> bs!1145467 (= lambda!222614 lambda!222613)))

(assert (=> b!4753339 true))

(declare-fun lt!1918969 () ListMap!5565)

(declare-fun lambda!222615 () Int)

(assert (=> bs!1145467 (= (= lt!1918969 lt!1918657) (= lambda!222615 lambda!222613))))

(assert (=> b!4753339 (= (= lt!1918969 lt!1918657) (= lambda!222615 lambda!222614))))

(assert (=> b!4753339 true))

(declare-fun bs!1145468 () Bool)

(declare-fun d!1519826 () Bool)

(assert (= bs!1145468 (and d!1519826 b!4753337)))

(declare-fun lambda!222616 () Int)

(declare-fun lt!1918956 () ListMap!5565)

(assert (=> bs!1145468 (= (= lt!1918956 lt!1918657) (= lambda!222616 lambda!222613))))

(declare-fun bs!1145469 () Bool)

(assert (= bs!1145469 (and d!1519826 b!4753339)))

(assert (=> bs!1145469 (= (= lt!1918956 lt!1918657) (= lambda!222616 lambda!222614))))

(assert (=> bs!1145469 (= (= lt!1918956 lt!1918969) (= lambda!222616 lambda!222615))))

(assert (=> d!1519826 true))

(declare-fun b!4753335 () Bool)

(declare-fun e!2965229 () Bool)

(declare-fun forall!11770 (List!53224 Int) Bool)

(assert (=> b!4753335 (= e!2965229 (forall!11770 (toList!6128 lt!1918657) lambda!222615))))

(declare-fun bm!333206 () Bool)

(declare-fun c!811553 () Bool)

(declare-fun call!333211 () Bool)

(assert (=> bm!333206 (= call!333211 (forall!11770 (ite c!811553 (toList!6128 lt!1918657) (t!360566 l!14304)) (ite c!811553 lambda!222613 lambda!222615)))))

(declare-fun b!4753336 () Bool)

(declare-fun e!2965230 () Bool)

(assert (=> b!4753336 (= e!2965230 (invariantList!1602 (toList!6128 lt!1918956)))))

(assert (=> d!1519826 e!2965230))

(declare-fun res!2016030 () Bool)

(assert (=> d!1519826 (=> (not res!2016030) (not e!2965230))))

(assert (=> d!1519826 (= res!2016030 (forall!11770 (t!360566 l!14304) lambda!222616))))

(declare-fun e!2965228 () ListMap!5565)

(assert (=> d!1519826 (= lt!1918956 e!2965228)))

(assert (=> d!1519826 (= c!811553 ((_ is Nil!53100) (t!360566 l!14304)))))

(assert (=> d!1519826 (noDuplicateKeys!2160 (t!360566 l!14304))))

(assert (=> d!1519826 (= (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918657) lt!1918956)))

(assert (=> b!4753337 (= e!2965228 lt!1918657)))

(declare-fun lt!1918952 () Unit!136722)

(declare-fun call!333212 () Unit!136722)

(assert (=> b!4753337 (= lt!1918952 call!333212)))

(declare-fun call!333213 () Bool)

(assert (=> b!4753337 call!333213))

(declare-fun lt!1918962 () Unit!136722)

(assert (=> b!4753337 (= lt!1918962 lt!1918952)))

(assert (=> b!4753337 call!333211))

(declare-fun lt!1918955 () Unit!136722)

(declare-fun Unit!136746 () Unit!136722)

(assert (=> b!4753337 (= lt!1918955 Unit!136746)))

(declare-fun b!4753338 () Bool)

(declare-fun res!2016029 () Bool)

(assert (=> b!4753338 (=> (not res!2016029) (not e!2965230))))

(assert (=> b!4753338 (= res!2016029 (forall!11770 (toList!6128 lt!1918657) lambda!222616))))

(declare-fun bm!333207 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!885 (ListMap!5565) Unit!136722)

(assert (=> bm!333207 (= call!333212 (lemmaContainsAllItsOwnKeys!885 lt!1918657))))

(assert (=> b!4753339 (= e!2965228 lt!1918969)))

(declare-fun lt!1918967 () ListMap!5565)

(assert (=> b!4753339 (= lt!1918967 (+!2394 lt!1918657 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753339 (= lt!1918969 (addToMapMapFromBucket!1584 (t!360566 (t!360566 l!14304)) (+!2394 lt!1918657 (h!59497 (t!360566 l!14304)))))))

(declare-fun lt!1918954 () Unit!136722)

(assert (=> b!4753339 (= lt!1918954 call!333212)))

(assert (=> b!4753339 (forall!11770 (toList!6128 lt!1918657) lambda!222614)))

(declare-fun lt!1918960 () Unit!136722)

(assert (=> b!4753339 (= lt!1918960 lt!1918954)))

(assert (=> b!4753339 (forall!11770 (toList!6128 lt!1918967) lambda!222615)))

(declare-fun lt!1918957 () Unit!136722)

(declare-fun Unit!136747 () Unit!136722)

(assert (=> b!4753339 (= lt!1918957 Unit!136747)))

(assert (=> b!4753339 (forall!11770 (t!360566 (t!360566 l!14304)) lambda!222615)))

(declare-fun lt!1918964 () Unit!136722)

(declare-fun Unit!136748 () Unit!136722)

(assert (=> b!4753339 (= lt!1918964 Unit!136748)))

(declare-fun lt!1918965 () Unit!136722)

(declare-fun Unit!136749 () Unit!136722)

(assert (=> b!4753339 (= lt!1918965 Unit!136749)))

(declare-fun lt!1918963 () Unit!136722)

(declare-fun forallContained!3796 (List!53224 Int tuple2!54880) Unit!136722)

(assert (=> b!4753339 (= lt!1918963 (forallContained!3796 (toList!6128 lt!1918967) lambda!222615 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753339 (contains!16528 lt!1918967 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1918959 () Unit!136722)

(declare-fun Unit!136750 () Unit!136722)

(assert (=> b!4753339 (= lt!1918959 Unit!136750)))

(assert (=> b!4753339 (contains!16528 lt!1918969 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1918950 () Unit!136722)

(declare-fun Unit!136751 () Unit!136722)

(assert (=> b!4753339 (= lt!1918950 Unit!136751)))

(assert (=> b!4753339 call!333211))

(declare-fun lt!1918961 () Unit!136722)

(declare-fun Unit!136752 () Unit!136722)

(assert (=> b!4753339 (= lt!1918961 Unit!136752)))

(assert (=> b!4753339 (forall!11770 (toList!6128 lt!1918967) lambda!222615)))

(declare-fun lt!1918966 () Unit!136722)

(declare-fun Unit!136753 () Unit!136722)

(assert (=> b!4753339 (= lt!1918966 Unit!136753)))

(declare-fun lt!1918951 () Unit!136722)

(declare-fun Unit!136754 () Unit!136722)

(assert (=> b!4753339 (= lt!1918951 Unit!136754)))

(declare-fun lt!1918968 () Unit!136722)

(declare-fun addForallContainsKeyThenBeforeAdding!884 (ListMap!5565 ListMap!5565 K!14550 V!14796) Unit!136722)

(assert (=> b!4753339 (= lt!1918968 (addForallContainsKeyThenBeforeAdding!884 lt!1918657 lt!1918969 (_1!30734 (h!59497 (t!360566 l!14304))) (_2!30734 (h!59497 (t!360566 l!14304)))))))

(assert (=> b!4753339 call!333213))

(declare-fun lt!1918953 () Unit!136722)

(assert (=> b!4753339 (= lt!1918953 lt!1918968)))

(assert (=> b!4753339 (forall!11770 (toList!6128 lt!1918657) lambda!222615)))

(declare-fun lt!1918949 () Unit!136722)

(declare-fun Unit!136755 () Unit!136722)

(assert (=> b!4753339 (= lt!1918949 Unit!136755)))

(declare-fun res!2016031 () Bool)

(assert (=> b!4753339 (= res!2016031 (forall!11770 (t!360566 l!14304) lambda!222615))))

(assert (=> b!4753339 (=> (not res!2016031) (not e!2965229))))

(assert (=> b!4753339 e!2965229))

(declare-fun lt!1918958 () Unit!136722)

(declare-fun Unit!136756 () Unit!136722)

(assert (=> b!4753339 (= lt!1918958 Unit!136756)))

(declare-fun bm!333208 () Bool)

(assert (=> bm!333208 (= call!333213 (forall!11770 (toList!6128 lt!1918657) (ite c!811553 lambda!222613 lambda!222615)))))

(assert (= (and d!1519826 c!811553) b!4753337))

(assert (= (and d!1519826 (not c!811553)) b!4753339))

(assert (= (and b!4753339 res!2016031) b!4753335))

(assert (= (or b!4753337 b!4753339) bm!333207))

(assert (= (or b!4753337 b!4753339) bm!333206))

(assert (= (or b!4753337 b!4753339) bm!333208))

(assert (= (and d!1519826 res!2016030) b!4753338))

(assert (= (and b!4753338 res!2016029) b!4753336))

(declare-fun m!5720151 () Bool)

(assert (=> b!4753338 m!5720151))

(declare-fun m!5720153 () Bool)

(assert (=> b!4753339 m!5720153))

(declare-fun m!5720155 () Bool)

(assert (=> b!4753339 m!5720155))

(declare-fun m!5720157 () Bool)

(assert (=> b!4753339 m!5720157))

(declare-fun m!5720159 () Bool)

(assert (=> b!4753339 m!5720159))

(declare-fun m!5720161 () Bool)

(assert (=> b!4753339 m!5720161))

(declare-fun m!5720163 () Bool)

(assert (=> b!4753339 m!5720163))

(declare-fun m!5720165 () Bool)

(assert (=> b!4753339 m!5720165))

(declare-fun m!5720167 () Bool)

(assert (=> b!4753339 m!5720167))

(declare-fun m!5720169 () Bool)

(assert (=> b!4753339 m!5720169))

(assert (=> b!4753339 m!5720157))

(declare-fun m!5720171 () Bool)

(assert (=> b!4753339 m!5720171))

(declare-fun m!5720173 () Bool)

(assert (=> b!4753339 m!5720173))

(assert (=> b!4753339 m!5720153))

(declare-fun m!5720175 () Bool)

(assert (=> bm!333208 m!5720175))

(declare-fun m!5720177 () Bool)

(assert (=> bm!333206 m!5720177))

(assert (=> b!4753335 m!5720167))

(declare-fun m!5720179 () Bool)

(assert (=> b!4753336 m!5720179))

(declare-fun m!5720181 () Bool)

(assert (=> bm!333207 m!5720181))

(declare-fun m!5720183 () Bool)

(assert (=> d!1519826 m!5720183))

(assert (=> d!1519826 m!5719763))

(assert (=> b!4753242 d!1519826))

(declare-fun d!1519882 () Bool)

(assert (=> d!1519882 (eq!1229 (+!2394 (+!2394 acc!1214 (tuple2!54881 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)))) (tuple2!54881 (_1!30734 t!14174) (_2!30734 t!14174))) (+!2394 (+!2394 acc!1214 (tuple2!54881 (_1!30734 t!14174) (_2!30734 t!14174))) (tuple2!54881 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)))))))

(declare-fun lt!1918972 () Unit!136722)

(declare-fun choose!33847 (ListMap!5565 K!14550 V!14796 K!14550 V!14796) Unit!136722)

(assert (=> d!1519882 (= lt!1918972 (choose!33847 acc!1214 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519882 (not (= (_1!30734 (h!59497 l!14304)) (_1!30734 t!14174)))))

(assert (=> d!1519882 (= (addCommutativeForDiffKeys!30 acc!1214 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)) (_1!30734 t!14174) (_2!30734 t!14174)) lt!1918972)))

(declare-fun bs!1145472 () Bool)

(assert (= bs!1145472 d!1519882))

(declare-fun m!5720185 () Bool)

(assert (=> bs!1145472 m!5720185))

(declare-fun m!5720187 () Bool)

(assert (=> bs!1145472 m!5720187))

(declare-fun m!5720189 () Bool)

(assert (=> bs!1145472 m!5720189))

(declare-fun m!5720191 () Bool)

(assert (=> bs!1145472 m!5720191))

(assert (=> bs!1145472 m!5720191))

(assert (=> bs!1145472 m!5720187))

(declare-fun m!5720193 () Bool)

(assert (=> bs!1145472 m!5720193))

(assert (=> bs!1145472 m!5720185))

(assert (=> bs!1145472 m!5720189))

(declare-fun m!5720195 () Bool)

(assert (=> bs!1145472 m!5720195))

(assert (=> b!4753242 d!1519882))

(declare-fun d!1519884 () Bool)

(assert (=> d!1519884 (= (eq!1229 lt!1918648 lt!1918654) (= (content!9539 (toList!6128 lt!1918648)) (content!9539 (toList!6128 lt!1918654))))))

(declare-fun bs!1145473 () Bool)

(assert (= bs!1145473 d!1519884))

(assert (=> bs!1145473 m!5719813))

(declare-fun m!5720197 () Bool)

(assert (=> bs!1145473 m!5720197))

(assert (=> b!4753242 d!1519884))

(declare-fun d!1519886 () Bool)

(assert (=> d!1519886 (eq!1229 (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918656) (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918657))))

(declare-fun lt!1918975 () Unit!136722)

(declare-fun choose!33848 (ListMap!5565 ListMap!5565 List!53224) Unit!136722)

(assert (=> d!1519886 (= lt!1918975 (choose!33848 lt!1918656 lt!1918657 (t!360566 l!14304)))))

(assert (=> d!1519886 (noDuplicateKeys!2160 (t!360566 l!14304))))

(assert (=> d!1519886 (= (lemmaAddToMapFromBucketPreservesEquivalence!120 lt!1918656 lt!1918657 (t!360566 l!14304)) lt!1918975)))

(declare-fun bs!1145474 () Bool)

(assert (= bs!1145474 d!1519886))

(declare-fun m!5720199 () Bool)

(assert (=> bs!1145474 m!5720199))

(assert (=> bs!1145474 m!5719743))

(assert (=> bs!1145474 m!5719733))

(declare-fun m!5720201 () Bool)

(assert (=> bs!1145474 m!5720201))

(assert (=> bs!1145474 m!5719743))

(assert (=> bs!1145474 m!5719733))

(assert (=> bs!1145474 m!5719763))

(assert (=> b!4753242 d!1519886))

(declare-fun d!1519888 () Bool)

(declare-fun e!2965243 () Bool)

(assert (=> d!1519888 e!2965243))

(declare-fun res!2016040 () Bool)

(assert (=> d!1519888 (=> (not res!2016040) (not e!2965243))))

(declare-fun lt!1918977 () ListMap!5565)

(assert (=> d!1519888 (= res!2016040 (contains!16528 lt!1918977 (_1!30734 (h!59497 l!14304))))))

(declare-fun lt!1918978 () List!53224)

(assert (=> d!1519888 (= lt!1918977 (ListMap!5566 lt!1918978))))

(declare-fun lt!1918979 () Unit!136722)

(declare-fun lt!1918976 () Unit!136722)

(assert (=> d!1519888 (= lt!1918979 lt!1918976)))

(assert (=> d!1519888 (= (getValueByKey!2089 lt!1918978 (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519888 (= lt!1918976 (lemmaContainsTupThenGetReturnValue!1166 lt!1918978 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519888 (= lt!1918978 (insertNoDuplicatedKeys!674 (toList!6128 lt!1918645) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519888 (= (+!2394 lt!1918645 (h!59497 l!14304)) lt!1918977)))

(declare-fun b!4753356 () Bool)

(declare-fun res!2016041 () Bool)

(assert (=> b!4753356 (=> (not res!2016041) (not e!2965243))))

(assert (=> b!4753356 (= res!2016041 (= (getValueByKey!2089 (toList!6128 lt!1918977) (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304)))))))

(declare-fun b!4753357 () Bool)

(assert (=> b!4753357 (= e!2965243 (contains!16529 (toList!6128 lt!1918977) (h!59497 l!14304)))))

(assert (= (and d!1519888 res!2016040) b!4753356))

(assert (= (and b!4753356 res!2016041) b!4753357))

(declare-fun m!5720203 () Bool)

(assert (=> d!1519888 m!5720203))

(declare-fun m!5720205 () Bool)

(assert (=> d!1519888 m!5720205))

(declare-fun m!5720207 () Bool)

(assert (=> d!1519888 m!5720207))

(declare-fun m!5720209 () Bool)

(assert (=> d!1519888 m!5720209))

(declare-fun m!5720211 () Bool)

(assert (=> b!4753356 m!5720211))

(declare-fun m!5720213 () Bool)

(assert (=> b!4753357 m!5720213))

(assert (=> b!4753242 d!1519888))

(declare-fun d!1519890 () Bool)

(assert (=> d!1519890 (= (eq!1229 lt!1918655 lt!1918651) (= (content!9539 (toList!6128 lt!1918655)) (content!9539 (toList!6128 lt!1918651))))))

(declare-fun bs!1145475 () Bool)

(assert (= bs!1145475 d!1519890))

(declare-fun m!5720215 () Bool)

(assert (=> bs!1145475 m!5720215))

(declare-fun m!5720217 () Bool)

(assert (=> bs!1145475 m!5720217))

(assert (=> b!4753242 d!1519890))

(declare-fun d!1519892 () Bool)

(assert (=> d!1519892 (= (eq!1229 lt!1918650 (addToMapMapFromBucket!1584 l!14304 lt!1918645)) (= (content!9539 (toList!6128 lt!1918650)) (content!9539 (toList!6128 (addToMapMapFromBucket!1584 l!14304 lt!1918645)))))))

(declare-fun bs!1145476 () Bool)

(assert (= bs!1145476 d!1519892))

(assert (=> bs!1145476 m!5719811))

(declare-fun m!5720219 () Bool)

(assert (=> bs!1145476 m!5720219))

(assert (=> b!4753242 d!1519892))

(declare-fun d!1519894 () Bool)

(assert (=> d!1519894 (= (eq!1229 lt!1918650 lt!1918654) (= (content!9539 (toList!6128 lt!1918650)) (content!9539 (toList!6128 lt!1918654))))))

(declare-fun bs!1145477 () Bool)

(assert (= bs!1145477 d!1519894))

(assert (=> bs!1145477 m!5719811))

(assert (=> bs!1145477 m!5720197))

(assert (=> b!4753242 d!1519894))

(declare-fun bs!1145478 () Bool)

(declare-fun b!4753360 () Bool)

(assert (= bs!1145478 (and b!4753360 b!4753337)))

(declare-fun lambda!222617 () Int)

(assert (=> bs!1145478 (= (= acc!1214 lt!1918657) (= lambda!222617 lambda!222613))))

(declare-fun bs!1145479 () Bool)

(assert (= bs!1145479 (and b!4753360 b!4753339)))

(assert (=> bs!1145479 (= (= acc!1214 lt!1918657) (= lambda!222617 lambda!222614))))

(assert (=> bs!1145479 (= (= acc!1214 lt!1918969) (= lambda!222617 lambda!222615))))

(declare-fun bs!1145480 () Bool)

(assert (= bs!1145480 (and b!4753360 d!1519826)))

(assert (=> bs!1145480 (= (= acc!1214 lt!1918956) (= lambda!222617 lambda!222616))))

(assert (=> b!4753360 true))

(declare-fun bs!1145481 () Bool)

(declare-fun b!4753362 () Bool)

(assert (= bs!1145481 (and b!4753362 b!4753339)))

(declare-fun lambda!222618 () Int)

(assert (=> bs!1145481 (= (= acc!1214 lt!1918657) (= lambda!222618 lambda!222614))))

(declare-fun bs!1145482 () Bool)

(assert (= bs!1145482 (and b!4753362 d!1519826)))

(assert (=> bs!1145482 (= (= acc!1214 lt!1918956) (= lambda!222618 lambda!222616))))

(declare-fun bs!1145483 () Bool)

(assert (= bs!1145483 (and b!4753362 b!4753360)))

(assert (=> bs!1145483 (= lambda!222618 lambda!222617)))

(declare-fun bs!1145484 () Bool)

(assert (= bs!1145484 (and b!4753362 b!4753337)))

(assert (=> bs!1145484 (= (= acc!1214 lt!1918657) (= lambda!222618 lambda!222613))))

(assert (=> bs!1145481 (= (= acc!1214 lt!1918969) (= lambda!222618 lambda!222615))))

(assert (=> b!4753362 true))

(declare-fun lambda!222619 () Int)

(declare-fun lt!1919000 () ListMap!5565)

(assert (=> bs!1145481 (= (= lt!1919000 lt!1918657) (= lambda!222619 lambda!222614))))

(assert (=> bs!1145482 (= (= lt!1919000 lt!1918956) (= lambda!222619 lambda!222616))))

(assert (=> bs!1145483 (= (= lt!1919000 acc!1214) (= lambda!222619 lambda!222617))))

(assert (=> b!4753362 (= (= lt!1919000 acc!1214) (= lambda!222619 lambda!222618))))

(assert (=> bs!1145484 (= (= lt!1919000 lt!1918657) (= lambda!222619 lambda!222613))))

(assert (=> bs!1145481 (= (= lt!1919000 lt!1918969) (= lambda!222619 lambda!222615))))

(assert (=> b!4753362 true))

(declare-fun bs!1145485 () Bool)

(declare-fun d!1519896 () Bool)

(assert (= bs!1145485 (and d!1519896 b!4753339)))

(declare-fun lt!1918987 () ListMap!5565)

(declare-fun lambda!222620 () Int)

(assert (=> bs!1145485 (= (= lt!1918987 lt!1918657) (= lambda!222620 lambda!222614))))

(declare-fun bs!1145486 () Bool)

(assert (= bs!1145486 (and d!1519896 d!1519826)))

(assert (=> bs!1145486 (= (= lt!1918987 lt!1918956) (= lambda!222620 lambda!222616))))

(declare-fun bs!1145487 () Bool)

(assert (= bs!1145487 (and d!1519896 b!4753360)))

(assert (=> bs!1145487 (= (= lt!1918987 acc!1214) (= lambda!222620 lambda!222617))))

(declare-fun bs!1145488 () Bool)

(assert (= bs!1145488 (and d!1519896 b!4753362)))

(assert (=> bs!1145488 (= (= lt!1918987 acc!1214) (= lambda!222620 lambda!222618))))

(declare-fun bs!1145489 () Bool)

(assert (= bs!1145489 (and d!1519896 b!4753337)))

(assert (=> bs!1145489 (= (= lt!1918987 lt!1918657) (= lambda!222620 lambda!222613))))

(assert (=> bs!1145488 (= (= lt!1918987 lt!1919000) (= lambda!222620 lambda!222619))))

(assert (=> bs!1145485 (= (= lt!1918987 lt!1918969) (= lambda!222620 lambda!222615))))

(assert (=> d!1519896 true))

(declare-fun b!4753358 () Bool)

(declare-fun e!2965245 () Bool)

(assert (=> b!4753358 (= e!2965245 (forall!11770 (toList!6128 acc!1214) lambda!222619))))

(declare-fun call!333214 () Bool)

(declare-fun c!811554 () Bool)

(declare-fun bm!333209 () Bool)

(assert (=> bm!333209 (= call!333214 (forall!11770 (ite c!811554 (toList!6128 acc!1214) l!14304) (ite c!811554 lambda!222617 lambda!222619)))))

(declare-fun b!4753359 () Bool)

(declare-fun e!2965246 () Bool)

(assert (=> b!4753359 (= e!2965246 (invariantList!1602 (toList!6128 lt!1918987)))))

(assert (=> d!1519896 e!2965246))

(declare-fun res!2016043 () Bool)

(assert (=> d!1519896 (=> (not res!2016043) (not e!2965246))))

(assert (=> d!1519896 (= res!2016043 (forall!11770 l!14304 lambda!222620))))

(declare-fun e!2965244 () ListMap!5565)

(assert (=> d!1519896 (= lt!1918987 e!2965244)))

(assert (=> d!1519896 (= c!811554 ((_ is Nil!53100) l!14304))))

(assert (=> d!1519896 (noDuplicateKeys!2160 l!14304)))

(assert (=> d!1519896 (= (addToMapMapFromBucket!1584 l!14304 acc!1214) lt!1918987)))

(assert (=> b!4753360 (= e!2965244 acc!1214)))

(declare-fun lt!1918983 () Unit!136722)

(declare-fun call!333215 () Unit!136722)

(assert (=> b!4753360 (= lt!1918983 call!333215)))

(declare-fun call!333216 () Bool)

(assert (=> b!4753360 call!333216))

(declare-fun lt!1918993 () Unit!136722)

(assert (=> b!4753360 (= lt!1918993 lt!1918983)))

(assert (=> b!4753360 call!333214))

(declare-fun lt!1918986 () Unit!136722)

(declare-fun Unit!136768 () Unit!136722)

(assert (=> b!4753360 (= lt!1918986 Unit!136768)))

(declare-fun b!4753361 () Bool)

(declare-fun res!2016042 () Bool)

(assert (=> b!4753361 (=> (not res!2016042) (not e!2965246))))

(assert (=> b!4753361 (= res!2016042 (forall!11770 (toList!6128 acc!1214) lambda!222620))))

(declare-fun bm!333210 () Bool)

(assert (=> bm!333210 (= call!333215 (lemmaContainsAllItsOwnKeys!885 acc!1214))))

(assert (=> b!4753362 (= e!2965244 lt!1919000)))

(declare-fun lt!1918998 () ListMap!5565)

(assert (=> b!4753362 (= lt!1918998 (+!2394 acc!1214 (h!59497 l!14304)))))

(assert (=> b!4753362 (= lt!1919000 (addToMapMapFromBucket!1584 (t!360566 l!14304) (+!2394 acc!1214 (h!59497 l!14304))))))

(declare-fun lt!1918985 () Unit!136722)

(assert (=> b!4753362 (= lt!1918985 call!333215)))

(assert (=> b!4753362 (forall!11770 (toList!6128 acc!1214) lambda!222618)))

(declare-fun lt!1918991 () Unit!136722)

(assert (=> b!4753362 (= lt!1918991 lt!1918985)))

(assert (=> b!4753362 (forall!11770 (toList!6128 lt!1918998) lambda!222619)))

(declare-fun lt!1918988 () Unit!136722)

(declare-fun Unit!136769 () Unit!136722)

(assert (=> b!4753362 (= lt!1918988 Unit!136769)))

(assert (=> b!4753362 (forall!11770 (t!360566 l!14304) lambda!222619)))

(declare-fun lt!1918995 () Unit!136722)

(declare-fun Unit!136770 () Unit!136722)

(assert (=> b!4753362 (= lt!1918995 Unit!136770)))

(declare-fun lt!1918996 () Unit!136722)

(declare-fun Unit!136771 () Unit!136722)

(assert (=> b!4753362 (= lt!1918996 Unit!136771)))

(declare-fun lt!1918994 () Unit!136722)

(assert (=> b!4753362 (= lt!1918994 (forallContained!3796 (toList!6128 lt!1918998) lambda!222619 (h!59497 l!14304)))))

(assert (=> b!4753362 (contains!16528 lt!1918998 (_1!30734 (h!59497 l!14304)))))

(declare-fun lt!1918990 () Unit!136722)

(declare-fun Unit!136772 () Unit!136722)

(assert (=> b!4753362 (= lt!1918990 Unit!136772)))

(assert (=> b!4753362 (contains!16528 lt!1919000 (_1!30734 (h!59497 l!14304)))))

(declare-fun lt!1918981 () Unit!136722)

(declare-fun Unit!136773 () Unit!136722)

(assert (=> b!4753362 (= lt!1918981 Unit!136773)))

(assert (=> b!4753362 call!333214))

(declare-fun lt!1918992 () Unit!136722)

(declare-fun Unit!136774 () Unit!136722)

(assert (=> b!4753362 (= lt!1918992 Unit!136774)))

(assert (=> b!4753362 (forall!11770 (toList!6128 lt!1918998) lambda!222619)))

(declare-fun lt!1918997 () Unit!136722)

(declare-fun Unit!136775 () Unit!136722)

(assert (=> b!4753362 (= lt!1918997 Unit!136775)))

(declare-fun lt!1918982 () Unit!136722)

(declare-fun Unit!136776 () Unit!136722)

(assert (=> b!4753362 (= lt!1918982 Unit!136776)))

(declare-fun lt!1918999 () Unit!136722)

(assert (=> b!4753362 (= lt!1918999 (addForallContainsKeyThenBeforeAdding!884 acc!1214 lt!1919000 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> b!4753362 call!333216))

(declare-fun lt!1918984 () Unit!136722)

(assert (=> b!4753362 (= lt!1918984 lt!1918999)))

(assert (=> b!4753362 (forall!11770 (toList!6128 acc!1214) lambda!222619)))

(declare-fun lt!1918980 () Unit!136722)

(declare-fun Unit!136777 () Unit!136722)

(assert (=> b!4753362 (= lt!1918980 Unit!136777)))

(declare-fun res!2016044 () Bool)

(assert (=> b!4753362 (= res!2016044 (forall!11770 l!14304 lambda!222619))))

(assert (=> b!4753362 (=> (not res!2016044) (not e!2965245))))

(assert (=> b!4753362 e!2965245))

(declare-fun lt!1918989 () Unit!136722)

(declare-fun Unit!136778 () Unit!136722)

(assert (=> b!4753362 (= lt!1918989 Unit!136778)))

(declare-fun bm!333211 () Bool)

(assert (=> bm!333211 (= call!333216 (forall!11770 (toList!6128 acc!1214) (ite c!811554 lambda!222617 lambda!222619)))))

(assert (= (and d!1519896 c!811554) b!4753360))

(assert (= (and d!1519896 (not c!811554)) b!4753362))

(assert (= (and b!4753362 res!2016044) b!4753358))

(assert (= (or b!4753360 b!4753362) bm!333210))

(assert (= (or b!4753360 b!4753362) bm!333209))

(assert (= (or b!4753360 b!4753362) bm!333211))

(assert (= (and d!1519896 res!2016043) b!4753361))

(assert (= (and b!4753361 res!2016042) b!4753359))

(declare-fun m!5720221 () Bool)

(assert (=> b!4753361 m!5720221))

(declare-fun m!5720223 () Bool)

(assert (=> b!4753362 m!5720223))

(declare-fun m!5720225 () Bool)

(assert (=> b!4753362 m!5720225))

(assert (=> b!4753362 m!5719741))

(declare-fun m!5720227 () Bool)

(assert (=> b!4753362 m!5720227))

(declare-fun m!5720229 () Bool)

(assert (=> b!4753362 m!5720229))

(declare-fun m!5720231 () Bool)

(assert (=> b!4753362 m!5720231))

(declare-fun m!5720233 () Bool)

(assert (=> b!4753362 m!5720233))

(declare-fun m!5720235 () Bool)

(assert (=> b!4753362 m!5720235))

(declare-fun m!5720237 () Bool)

(assert (=> b!4753362 m!5720237))

(assert (=> b!4753362 m!5719741))

(declare-fun m!5720239 () Bool)

(assert (=> b!4753362 m!5720239))

(declare-fun m!5720241 () Bool)

(assert (=> b!4753362 m!5720241))

(assert (=> b!4753362 m!5720223))

(declare-fun m!5720243 () Bool)

(assert (=> bm!333211 m!5720243))

(declare-fun m!5720245 () Bool)

(assert (=> bm!333209 m!5720245))

(assert (=> b!4753358 m!5720235))

(declare-fun m!5720247 () Bool)

(assert (=> b!4753359 m!5720247))

(declare-fun m!5720249 () Bool)

(assert (=> bm!333210 m!5720249))

(declare-fun m!5720251 () Bool)

(assert (=> d!1519896 m!5720251))

(assert (=> d!1519896 m!5719703))

(assert (=> b!4753242 d!1519896))

(declare-fun d!1519898 () Bool)

(declare-fun e!2965247 () Bool)

(assert (=> d!1519898 e!2965247))

(declare-fun res!2016045 () Bool)

(assert (=> d!1519898 (=> (not res!2016045) (not e!2965247))))

(declare-fun lt!1919002 () ListMap!5565)

(assert (=> d!1519898 (= res!2016045 (contains!16528 lt!1919002 (_1!30734 t!14174)))))

(declare-fun lt!1919003 () List!53224)

(assert (=> d!1519898 (= lt!1919002 (ListMap!5566 lt!1919003))))

(declare-fun lt!1919004 () Unit!136722)

(declare-fun lt!1919001 () Unit!136722)

(assert (=> d!1519898 (= lt!1919004 lt!1919001)))

(assert (=> d!1519898 (= (getValueByKey!2089 lt!1919003 (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174)))))

(assert (=> d!1519898 (= lt!1919001 (lemmaContainsTupThenGetReturnValue!1166 lt!1919003 (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519898 (= lt!1919003 (insertNoDuplicatedKeys!674 (toList!6128 lt!1918644) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519898 (= (+!2394 lt!1918644 t!14174) lt!1919002)))

(declare-fun b!4753363 () Bool)

(declare-fun res!2016046 () Bool)

(assert (=> b!4753363 (=> (not res!2016046) (not e!2965247))))

(assert (=> b!4753363 (= res!2016046 (= (getValueByKey!2089 (toList!6128 lt!1919002) (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174))))))

(declare-fun b!4753364 () Bool)

(assert (=> b!4753364 (= e!2965247 (contains!16529 (toList!6128 lt!1919002) t!14174))))

(assert (= (and d!1519898 res!2016045) b!4753363))

(assert (= (and b!4753363 res!2016046) b!4753364))

(declare-fun m!5720253 () Bool)

(assert (=> d!1519898 m!5720253))

(declare-fun m!5720255 () Bool)

(assert (=> d!1519898 m!5720255))

(declare-fun m!5720257 () Bool)

(assert (=> d!1519898 m!5720257))

(declare-fun m!5720259 () Bool)

(assert (=> d!1519898 m!5720259))

(declare-fun m!5720261 () Bool)

(assert (=> b!4753363 m!5720261))

(declare-fun m!5720263 () Bool)

(assert (=> b!4753364 m!5720263))

(assert (=> b!4753242 d!1519898))

(declare-fun d!1519900 () Bool)

(assert (=> d!1519900 (eq!1229 (addToMapMapFromBucket!1584 (Cons!53100 t!14174 (t!360566 l!14304)) lt!1918644) (+!2394 (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918644) t!14174))))

(declare-fun lt!1919007 () Unit!136722)

(declare-fun choose!33849 (tuple2!54880 List!53224 ListMap!5565) Unit!136722)

(assert (=> d!1519900 (= lt!1919007 (choose!33849 t!14174 (t!360566 l!14304) lt!1918644))))

(assert (=> d!1519900 (noDuplicateKeys!2160 (t!360566 l!14304))))

(assert (=> d!1519900 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!474 t!14174 (t!360566 l!14304) lt!1918644) lt!1919007)))

(declare-fun bs!1145490 () Bool)

(assert (= bs!1145490 d!1519900))

(declare-fun m!5720265 () Bool)

(assert (=> bs!1145490 m!5720265))

(assert (=> bs!1145490 m!5719707))

(assert (=> bs!1145490 m!5719707))

(declare-fun m!5720267 () Bool)

(assert (=> bs!1145490 m!5720267))

(declare-fun m!5720269 () Bool)

(assert (=> bs!1145490 m!5720269))

(assert (=> bs!1145490 m!5719763))

(assert (=> bs!1145490 m!5719749))

(assert (=> bs!1145490 m!5720267))

(assert (=> bs!1145490 m!5719749))

(assert (=> b!4753242 d!1519900))

(declare-fun d!1519902 () Bool)

(assert (=> d!1519902 (= (eq!1229 lt!1918647 lt!1918658) (= (content!9539 (toList!6128 lt!1918647)) (content!9539 (toList!6128 lt!1918658))))))

(declare-fun bs!1145491 () Bool)

(assert (= bs!1145491 d!1519902))

(declare-fun m!5720271 () Bool)

(assert (=> bs!1145491 m!5720271))

(declare-fun m!5720273 () Bool)

(assert (=> bs!1145491 m!5720273))

(assert (=> b!4753242 d!1519902))

(declare-fun bs!1145492 () Bool)

(declare-fun b!4753367 () Bool)

(assert (= bs!1145492 (and b!4753367 b!4753339)))

(declare-fun lambda!222621 () Int)

(assert (=> bs!1145492 (= (= lt!1918656 lt!1918657) (= lambda!222621 lambda!222614))))

(declare-fun bs!1145493 () Bool)

(assert (= bs!1145493 (and b!4753367 d!1519826)))

(assert (=> bs!1145493 (= (= lt!1918656 lt!1918956) (= lambda!222621 lambda!222616))))

(declare-fun bs!1145494 () Bool)

(assert (= bs!1145494 (and b!4753367 b!4753360)))

(assert (=> bs!1145494 (= (= lt!1918656 acc!1214) (= lambda!222621 lambda!222617))))

(declare-fun bs!1145495 () Bool)

(assert (= bs!1145495 (and b!4753367 b!4753362)))

(assert (=> bs!1145495 (= (= lt!1918656 acc!1214) (= lambda!222621 lambda!222618))))

(declare-fun bs!1145496 () Bool)

(assert (= bs!1145496 (and b!4753367 d!1519896)))

(assert (=> bs!1145496 (= (= lt!1918656 lt!1918987) (= lambda!222621 lambda!222620))))

(declare-fun bs!1145497 () Bool)

(assert (= bs!1145497 (and b!4753367 b!4753337)))

(assert (=> bs!1145497 (= (= lt!1918656 lt!1918657) (= lambda!222621 lambda!222613))))

(assert (=> bs!1145495 (= (= lt!1918656 lt!1919000) (= lambda!222621 lambda!222619))))

(assert (=> bs!1145492 (= (= lt!1918656 lt!1918969) (= lambda!222621 lambda!222615))))

(assert (=> b!4753367 true))

(declare-fun bs!1145498 () Bool)

(declare-fun b!4753369 () Bool)

(assert (= bs!1145498 (and b!4753369 b!4753339)))

(declare-fun lambda!222622 () Int)

(assert (=> bs!1145498 (= (= lt!1918656 lt!1918657) (= lambda!222622 lambda!222614))))

(declare-fun bs!1145499 () Bool)

(assert (= bs!1145499 (and b!4753369 d!1519826)))

(assert (=> bs!1145499 (= (= lt!1918656 lt!1918956) (= lambda!222622 lambda!222616))))

(declare-fun bs!1145500 () Bool)

(assert (= bs!1145500 (and b!4753369 b!4753362)))

(assert (=> bs!1145500 (= (= lt!1918656 acc!1214) (= lambda!222622 lambda!222618))))

(declare-fun bs!1145501 () Bool)

(assert (= bs!1145501 (and b!4753369 d!1519896)))

(assert (=> bs!1145501 (= (= lt!1918656 lt!1918987) (= lambda!222622 lambda!222620))))

(declare-fun bs!1145502 () Bool)

(assert (= bs!1145502 (and b!4753369 b!4753337)))

(assert (=> bs!1145502 (= (= lt!1918656 lt!1918657) (= lambda!222622 lambda!222613))))

(assert (=> bs!1145500 (= (= lt!1918656 lt!1919000) (= lambda!222622 lambda!222619))))

(assert (=> bs!1145498 (= (= lt!1918656 lt!1918969) (= lambda!222622 lambda!222615))))

(declare-fun bs!1145503 () Bool)

(assert (= bs!1145503 (and b!4753369 b!4753360)))

(assert (=> bs!1145503 (= (= lt!1918656 acc!1214) (= lambda!222622 lambda!222617))))

(declare-fun bs!1145504 () Bool)

(assert (= bs!1145504 (and b!4753369 b!4753367)))

(assert (=> bs!1145504 (= lambda!222622 lambda!222621)))

(assert (=> b!4753369 true))

(declare-fun lt!1919028 () ListMap!5565)

(declare-fun lambda!222623 () Int)

(assert (=> bs!1145498 (= (= lt!1919028 lt!1918657) (= lambda!222623 lambda!222614))))

(assert (=> bs!1145499 (= (= lt!1919028 lt!1918956) (= lambda!222623 lambda!222616))))

(assert (=> bs!1145500 (= (= lt!1919028 acc!1214) (= lambda!222623 lambda!222618))))

(assert (=> bs!1145501 (= (= lt!1919028 lt!1918987) (= lambda!222623 lambda!222620))))

(assert (=> bs!1145502 (= (= lt!1919028 lt!1918657) (= lambda!222623 lambda!222613))))

(assert (=> b!4753369 (= (= lt!1919028 lt!1918656) (= lambda!222623 lambda!222622))))

(assert (=> bs!1145500 (= (= lt!1919028 lt!1919000) (= lambda!222623 lambda!222619))))

(assert (=> bs!1145498 (= (= lt!1919028 lt!1918969) (= lambda!222623 lambda!222615))))

(assert (=> bs!1145503 (= (= lt!1919028 acc!1214) (= lambda!222623 lambda!222617))))

(assert (=> bs!1145504 (= (= lt!1919028 lt!1918656) (= lambda!222623 lambda!222621))))

(assert (=> b!4753369 true))

(declare-fun bs!1145505 () Bool)

(declare-fun d!1519904 () Bool)

(assert (= bs!1145505 (and d!1519904 b!4753339)))

(declare-fun lt!1919015 () ListMap!5565)

(declare-fun lambda!222624 () Int)

(assert (=> bs!1145505 (= (= lt!1919015 lt!1918657) (= lambda!222624 lambda!222614))))

(declare-fun bs!1145506 () Bool)

(assert (= bs!1145506 (and d!1519904 b!4753369)))

(assert (=> bs!1145506 (= (= lt!1919015 lt!1919028) (= lambda!222624 lambda!222623))))

(declare-fun bs!1145507 () Bool)

(assert (= bs!1145507 (and d!1519904 d!1519826)))

(assert (=> bs!1145507 (= (= lt!1919015 lt!1918956) (= lambda!222624 lambda!222616))))

(declare-fun bs!1145508 () Bool)

(assert (= bs!1145508 (and d!1519904 b!4753362)))

(assert (=> bs!1145508 (= (= lt!1919015 acc!1214) (= lambda!222624 lambda!222618))))

(declare-fun bs!1145509 () Bool)

(assert (= bs!1145509 (and d!1519904 d!1519896)))

(assert (=> bs!1145509 (= (= lt!1919015 lt!1918987) (= lambda!222624 lambda!222620))))

(declare-fun bs!1145510 () Bool)

(assert (= bs!1145510 (and d!1519904 b!4753337)))

(assert (=> bs!1145510 (= (= lt!1919015 lt!1918657) (= lambda!222624 lambda!222613))))

(assert (=> bs!1145506 (= (= lt!1919015 lt!1918656) (= lambda!222624 lambda!222622))))

(assert (=> bs!1145508 (= (= lt!1919015 lt!1919000) (= lambda!222624 lambda!222619))))

(assert (=> bs!1145505 (= (= lt!1919015 lt!1918969) (= lambda!222624 lambda!222615))))

(declare-fun bs!1145511 () Bool)

(assert (= bs!1145511 (and d!1519904 b!4753360)))

(assert (=> bs!1145511 (= (= lt!1919015 acc!1214) (= lambda!222624 lambda!222617))))

(declare-fun bs!1145512 () Bool)

(assert (= bs!1145512 (and d!1519904 b!4753367)))

(assert (=> bs!1145512 (= (= lt!1919015 lt!1918656) (= lambda!222624 lambda!222621))))

(assert (=> d!1519904 true))

(declare-fun b!4753365 () Bool)

(declare-fun e!2965249 () Bool)

(assert (=> b!4753365 (= e!2965249 (forall!11770 (toList!6128 lt!1918656) lambda!222623))))

(declare-fun c!811555 () Bool)

(declare-fun call!333217 () Bool)

(declare-fun bm!333212 () Bool)

(assert (=> bm!333212 (= call!333217 (forall!11770 (ite c!811555 (toList!6128 lt!1918656) (t!360566 l!14304)) (ite c!811555 lambda!222621 lambda!222623)))))

(declare-fun b!4753366 () Bool)

(declare-fun e!2965250 () Bool)

(assert (=> b!4753366 (= e!2965250 (invariantList!1602 (toList!6128 lt!1919015)))))

(assert (=> d!1519904 e!2965250))

(declare-fun res!2016048 () Bool)

(assert (=> d!1519904 (=> (not res!2016048) (not e!2965250))))

(assert (=> d!1519904 (= res!2016048 (forall!11770 (t!360566 l!14304) lambda!222624))))

(declare-fun e!2965248 () ListMap!5565)

(assert (=> d!1519904 (= lt!1919015 e!2965248)))

(assert (=> d!1519904 (= c!811555 ((_ is Nil!53100) (t!360566 l!14304)))))

(assert (=> d!1519904 (noDuplicateKeys!2160 (t!360566 l!14304))))

(assert (=> d!1519904 (= (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918656) lt!1919015)))

(assert (=> b!4753367 (= e!2965248 lt!1918656)))

(declare-fun lt!1919011 () Unit!136722)

(declare-fun call!333218 () Unit!136722)

(assert (=> b!4753367 (= lt!1919011 call!333218)))

(declare-fun call!333219 () Bool)

(assert (=> b!4753367 call!333219))

(declare-fun lt!1919021 () Unit!136722)

(assert (=> b!4753367 (= lt!1919021 lt!1919011)))

(assert (=> b!4753367 call!333217))

(declare-fun lt!1919014 () Unit!136722)

(declare-fun Unit!136789 () Unit!136722)

(assert (=> b!4753367 (= lt!1919014 Unit!136789)))

(declare-fun b!4753368 () Bool)

(declare-fun res!2016047 () Bool)

(assert (=> b!4753368 (=> (not res!2016047) (not e!2965250))))

(assert (=> b!4753368 (= res!2016047 (forall!11770 (toList!6128 lt!1918656) lambda!222624))))

(declare-fun bm!333213 () Bool)

(assert (=> bm!333213 (= call!333218 (lemmaContainsAllItsOwnKeys!885 lt!1918656))))

(assert (=> b!4753369 (= e!2965248 lt!1919028)))

(declare-fun lt!1919026 () ListMap!5565)

(assert (=> b!4753369 (= lt!1919026 (+!2394 lt!1918656 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753369 (= lt!1919028 (addToMapMapFromBucket!1584 (t!360566 (t!360566 l!14304)) (+!2394 lt!1918656 (h!59497 (t!360566 l!14304)))))))

(declare-fun lt!1919013 () Unit!136722)

(assert (=> b!4753369 (= lt!1919013 call!333218)))

(assert (=> b!4753369 (forall!11770 (toList!6128 lt!1918656) lambda!222622)))

(declare-fun lt!1919019 () Unit!136722)

(assert (=> b!4753369 (= lt!1919019 lt!1919013)))

(assert (=> b!4753369 (forall!11770 (toList!6128 lt!1919026) lambda!222623)))

(declare-fun lt!1919016 () Unit!136722)

(declare-fun Unit!136791 () Unit!136722)

(assert (=> b!4753369 (= lt!1919016 Unit!136791)))

(assert (=> b!4753369 (forall!11770 (t!360566 (t!360566 l!14304)) lambda!222623)))

(declare-fun lt!1919023 () Unit!136722)

(declare-fun Unit!136792 () Unit!136722)

(assert (=> b!4753369 (= lt!1919023 Unit!136792)))

(declare-fun lt!1919024 () Unit!136722)

(declare-fun Unit!136793 () Unit!136722)

(assert (=> b!4753369 (= lt!1919024 Unit!136793)))

(declare-fun lt!1919022 () Unit!136722)

(assert (=> b!4753369 (= lt!1919022 (forallContained!3796 (toList!6128 lt!1919026) lambda!222623 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753369 (contains!16528 lt!1919026 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1919018 () Unit!136722)

(declare-fun Unit!136794 () Unit!136722)

(assert (=> b!4753369 (= lt!1919018 Unit!136794)))

(assert (=> b!4753369 (contains!16528 lt!1919028 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1919009 () Unit!136722)

(declare-fun Unit!136795 () Unit!136722)

(assert (=> b!4753369 (= lt!1919009 Unit!136795)))

(assert (=> b!4753369 call!333217))

(declare-fun lt!1919020 () Unit!136722)

(declare-fun Unit!136796 () Unit!136722)

(assert (=> b!4753369 (= lt!1919020 Unit!136796)))

(assert (=> b!4753369 (forall!11770 (toList!6128 lt!1919026) lambda!222623)))

(declare-fun lt!1919025 () Unit!136722)

(declare-fun Unit!136797 () Unit!136722)

(assert (=> b!4753369 (= lt!1919025 Unit!136797)))

(declare-fun lt!1919010 () Unit!136722)

(declare-fun Unit!136798 () Unit!136722)

(assert (=> b!4753369 (= lt!1919010 Unit!136798)))

(declare-fun lt!1919027 () Unit!136722)

(assert (=> b!4753369 (= lt!1919027 (addForallContainsKeyThenBeforeAdding!884 lt!1918656 lt!1919028 (_1!30734 (h!59497 (t!360566 l!14304))) (_2!30734 (h!59497 (t!360566 l!14304)))))))

(assert (=> b!4753369 call!333219))

(declare-fun lt!1919012 () Unit!136722)

(assert (=> b!4753369 (= lt!1919012 lt!1919027)))

(assert (=> b!4753369 (forall!11770 (toList!6128 lt!1918656) lambda!222623)))

(declare-fun lt!1919008 () Unit!136722)

(declare-fun Unit!136799 () Unit!136722)

(assert (=> b!4753369 (= lt!1919008 Unit!136799)))

(declare-fun res!2016049 () Bool)

(assert (=> b!4753369 (= res!2016049 (forall!11770 (t!360566 l!14304) lambda!222623))))

(assert (=> b!4753369 (=> (not res!2016049) (not e!2965249))))

(assert (=> b!4753369 e!2965249))

(declare-fun lt!1919017 () Unit!136722)

(declare-fun Unit!136800 () Unit!136722)

(assert (=> b!4753369 (= lt!1919017 Unit!136800)))

(declare-fun bm!333214 () Bool)

(assert (=> bm!333214 (= call!333219 (forall!11770 (toList!6128 lt!1918656) (ite c!811555 lambda!222621 lambda!222623)))))

(assert (= (and d!1519904 c!811555) b!4753367))

(assert (= (and d!1519904 (not c!811555)) b!4753369))

(assert (= (and b!4753369 res!2016049) b!4753365))

(assert (= (or b!4753367 b!4753369) bm!333213))

(assert (= (or b!4753367 b!4753369) bm!333212))

(assert (= (or b!4753367 b!4753369) bm!333214))

(assert (= (and d!1519904 res!2016048) b!4753368))

(assert (= (and b!4753368 res!2016047) b!4753366))

(declare-fun m!5720275 () Bool)

(assert (=> b!4753368 m!5720275))

(declare-fun m!5720277 () Bool)

(assert (=> b!4753369 m!5720277))

(declare-fun m!5720279 () Bool)

(assert (=> b!4753369 m!5720279))

(declare-fun m!5720281 () Bool)

(assert (=> b!4753369 m!5720281))

(declare-fun m!5720283 () Bool)

(assert (=> b!4753369 m!5720283))

(declare-fun m!5720285 () Bool)

(assert (=> b!4753369 m!5720285))

(declare-fun m!5720287 () Bool)

(assert (=> b!4753369 m!5720287))

(declare-fun m!5720289 () Bool)

(assert (=> b!4753369 m!5720289))

(declare-fun m!5720291 () Bool)

(assert (=> b!4753369 m!5720291))

(declare-fun m!5720293 () Bool)

(assert (=> b!4753369 m!5720293))

(assert (=> b!4753369 m!5720281))

(declare-fun m!5720295 () Bool)

(assert (=> b!4753369 m!5720295))

(declare-fun m!5720297 () Bool)

(assert (=> b!4753369 m!5720297))

(assert (=> b!4753369 m!5720277))

(declare-fun m!5720299 () Bool)

(assert (=> bm!333214 m!5720299))

(declare-fun m!5720301 () Bool)

(assert (=> bm!333212 m!5720301))

(assert (=> b!4753365 m!5720291))

(declare-fun m!5720303 () Bool)

(assert (=> b!4753366 m!5720303))

(declare-fun m!5720305 () Bool)

(assert (=> bm!333213 m!5720305))

(declare-fun m!5720307 () Bool)

(assert (=> d!1519904 m!5720307))

(assert (=> d!1519904 m!5719763))

(assert (=> b!4753242 d!1519904))

(declare-fun d!1519906 () Bool)

(declare-fun e!2965251 () Bool)

(assert (=> d!1519906 e!2965251))

(declare-fun res!2016050 () Bool)

(assert (=> d!1519906 (=> (not res!2016050) (not e!2965251))))

(declare-fun lt!1919030 () ListMap!5565)

(assert (=> d!1519906 (= res!2016050 (contains!16528 lt!1919030 (_1!30734 (h!59497 l!14304))))))

(declare-fun lt!1919031 () List!53224)

(assert (=> d!1519906 (= lt!1919030 (ListMap!5566 lt!1919031))))

(declare-fun lt!1919032 () Unit!136722)

(declare-fun lt!1919029 () Unit!136722)

(assert (=> d!1519906 (= lt!1919032 lt!1919029)))

(assert (=> d!1519906 (= (getValueByKey!2089 lt!1919031 (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519906 (= lt!1919029 (lemmaContainsTupThenGetReturnValue!1166 lt!1919031 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519906 (= lt!1919031 (insertNoDuplicatedKeys!674 (toList!6128 (+!2394 acc!1214 t!14174)) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519906 (= (+!2394 (+!2394 acc!1214 t!14174) (h!59497 l!14304)) lt!1919030)))

(declare-fun b!4753370 () Bool)

(declare-fun res!2016051 () Bool)

(assert (=> b!4753370 (=> (not res!2016051) (not e!2965251))))

(assert (=> b!4753370 (= res!2016051 (= (getValueByKey!2089 (toList!6128 lt!1919030) (_1!30734 (h!59497 l!14304))) (Some!12538 (_2!30734 (h!59497 l!14304)))))))

(declare-fun b!4753371 () Bool)

(assert (=> b!4753371 (= e!2965251 (contains!16529 (toList!6128 lt!1919030) (h!59497 l!14304)))))

(assert (= (and d!1519906 res!2016050) b!4753370))

(assert (= (and b!4753370 res!2016051) b!4753371))

(declare-fun m!5720309 () Bool)

(assert (=> d!1519906 m!5720309))

(declare-fun m!5720311 () Bool)

(assert (=> d!1519906 m!5720311))

(declare-fun m!5720313 () Bool)

(assert (=> d!1519906 m!5720313))

(declare-fun m!5720315 () Bool)

(assert (=> d!1519906 m!5720315))

(declare-fun m!5720317 () Bool)

(assert (=> b!4753370 m!5720317))

(declare-fun m!5720319 () Bool)

(assert (=> b!4753371 m!5720319))

(assert (=> b!4753242 d!1519906))

(declare-fun d!1519908 () Bool)

(assert (=> d!1519908 (= (eq!1229 lt!1918646 (+!2394 lt!1918655 t!14174)) (= (content!9539 (toList!6128 lt!1918646)) (content!9539 (toList!6128 (+!2394 lt!1918655 t!14174)))))))

(declare-fun bs!1145513 () Bool)

(assert (= bs!1145513 d!1519908))

(declare-fun m!5720321 () Bool)

(assert (=> bs!1145513 m!5720321))

(declare-fun m!5720323 () Bool)

(assert (=> bs!1145513 m!5720323))

(assert (=> b!4753242 d!1519908))

(declare-fun d!1519910 () Bool)

(declare-fun e!2965252 () Bool)

(assert (=> d!1519910 e!2965252))

(declare-fun res!2016052 () Bool)

(assert (=> d!1519910 (=> (not res!2016052) (not e!2965252))))

(declare-fun lt!1919034 () ListMap!5565)

(assert (=> d!1519910 (= res!2016052 (contains!16528 lt!1919034 (_1!30734 t!14174)))))

(declare-fun lt!1919035 () List!53224)

(assert (=> d!1519910 (= lt!1919034 (ListMap!5566 lt!1919035))))

(declare-fun lt!1919036 () Unit!136722)

(declare-fun lt!1919033 () Unit!136722)

(assert (=> d!1519910 (= lt!1919036 lt!1919033)))

(assert (=> d!1519910 (= (getValueByKey!2089 lt!1919035 (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174)))))

(assert (=> d!1519910 (= lt!1919033 (lemmaContainsTupThenGetReturnValue!1166 lt!1919035 (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519910 (= lt!1919035 (insertNoDuplicatedKeys!674 (toList!6128 lt!1918655) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519910 (= (+!2394 lt!1918655 t!14174) lt!1919034)))

(declare-fun b!4753372 () Bool)

(declare-fun res!2016053 () Bool)

(assert (=> b!4753372 (=> (not res!2016053) (not e!2965252))))

(assert (=> b!4753372 (= res!2016053 (= (getValueByKey!2089 (toList!6128 lt!1919034) (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174))))))

(declare-fun b!4753373 () Bool)

(assert (=> b!4753373 (= e!2965252 (contains!16529 (toList!6128 lt!1919034) t!14174))))

(assert (= (and d!1519910 res!2016052) b!4753372))

(assert (= (and b!4753372 res!2016053) b!4753373))

(declare-fun m!5720325 () Bool)

(assert (=> d!1519910 m!5720325))

(declare-fun m!5720327 () Bool)

(assert (=> d!1519910 m!5720327))

(declare-fun m!5720329 () Bool)

(assert (=> d!1519910 m!5720329))

(declare-fun m!5720331 () Bool)

(assert (=> d!1519910 m!5720331))

(declare-fun m!5720333 () Bool)

(assert (=> b!4753372 m!5720333))

(declare-fun m!5720335 () Bool)

(assert (=> b!4753373 m!5720335))

(assert (=> b!4753242 d!1519910))

(declare-fun d!1519912 () Bool)

(assert (=> d!1519912 (= (eq!1229 lt!1918658 lt!1918647) (= (content!9539 (toList!6128 lt!1918658)) (content!9539 (toList!6128 lt!1918647))))))

(declare-fun bs!1145514 () Bool)

(assert (= bs!1145514 d!1519912))

(assert (=> bs!1145514 m!5720273))

(assert (=> bs!1145514 m!5720271))

(assert (=> b!4753242 d!1519912))

(declare-fun d!1519914 () Bool)

(assert (=> d!1519914 (eq!1229 (+!2394 (+!2394 acc!1214 (tuple2!54881 (_1!30734 t!14174) (_2!30734 t!14174))) (tuple2!54881 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)))) (+!2394 (+!2394 acc!1214 (tuple2!54881 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304)))) (tuple2!54881 (_1!30734 t!14174) (_2!30734 t!14174))))))

(declare-fun lt!1919037 () Unit!136722)

(assert (=> d!1519914 (= lt!1919037 (choose!33847 acc!1214 (_1!30734 t!14174) (_2!30734 t!14174) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> d!1519914 (not (= (_1!30734 t!14174) (_1!30734 (h!59497 l!14304))))))

(assert (=> d!1519914 (= (addCommutativeForDiffKeys!30 acc!1214 (_1!30734 t!14174) (_2!30734 t!14174) (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))) lt!1919037)))

(declare-fun bs!1145515 () Bool)

(assert (= bs!1145515 d!1519914))

(assert (=> bs!1145515 m!5720189))

(assert (=> bs!1145515 m!5720191))

(assert (=> bs!1145515 m!5720185))

(assert (=> bs!1145515 m!5720187))

(assert (=> bs!1145515 m!5720187))

(assert (=> bs!1145515 m!5720191))

(declare-fun m!5720337 () Bool)

(assert (=> bs!1145515 m!5720337))

(assert (=> bs!1145515 m!5720189))

(assert (=> bs!1145515 m!5720185))

(declare-fun m!5720339 () Bool)

(assert (=> bs!1145515 m!5720339))

(assert (=> b!4753242 d!1519914))

(declare-fun d!1519916 () Bool)

(declare-fun e!2965253 () Bool)

(assert (=> d!1519916 e!2965253))

(declare-fun res!2016054 () Bool)

(assert (=> d!1519916 (=> (not res!2016054) (not e!2965253))))

(declare-fun lt!1919039 () ListMap!5565)

(assert (=> d!1519916 (= res!2016054 (contains!16528 lt!1919039 (_1!30734 t!14174)))))

(declare-fun lt!1919040 () List!53224)

(assert (=> d!1519916 (= lt!1919039 (ListMap!5566 lt!1919040))))

(declare-fun lt!1919041 () Unit!136722)

(declare-fun lt!1919038 () Unit!136722)

(assert (=> d!1519916 (= lt!1919041 lt!1919038)))

(assert (=> d!1519916 (= (getValueByKey!2089 lt!1919040 (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174)))))

(assert (=> d!1519916 (= lt!1919038 (lemmaContainsTupThenGetReturnValue!1166 lt!1919040 (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519916 (= lt!1919040 (insertNoDuplicatedKeys!674 (toList!6128 lt!1918651) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519916 (= (+!2394 lt!1918651 t!14174) lt!1919039)))

(declare-fun b!4753374 () Bool)

(declare-fun res!2016055 () Bool)

(assert (=> b!4753374 (=> (not res!2016055) (not e!2965253))))

(assert (=> b!4753374 (= res!2016055 (= (getValueByKey!2089 (toList!6128 lt!1919039) (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174))))))

(declare-fun b!4753375 () Bool)

(assert (=> b!4753375 (= e!2965253 (contains!16529 (toList!6128 lt!1919039) t!14174))))

(assert (= (and d!1519916 res!2016054) b!4753374))

(assert (= (and b!4753374 res!2016055) b!4753375))

(declare-fun m!5720341 () Bool)

(assert (=> d!1519916 m!5720341))

(declare-fun m!5720343 () Bool)

(assert (=> d!1519916 m!5720343))

(declare-fun m!5720345 () Bool)

(assert (=> d!1519916 m!5720345))

(declare-fun m!5720347 () Bool)

(assert (=> d!1519916 m!5720347))

(declare-fun m!5720349 () Bool)

(assert (=> b!4753374 m!5720349))

(declare-fun m!5720351 () Bool)

(assert (=> b!4753375 m!5720351))

(assert (=> b!4753242 d!1519916))

(declare-fun bs!1145516 () Bool)

(declare-fun b!4753378 () Bool)

(assert (= bs!1145516 (and b!4753378 b!4753339)))

(declare-fun lambda!222625 () Int)

(assert (=> bs!1145516 (= (= lt!1918644 lt!1918657) (= lambda!222625 lambda!222614))))

(declare-fun bs!1145517 () Bool)

(assert (= bs!1145517 (and b!4753378 b!4753369)))

(assert (=> bs!1145517 (= (= lt!1918644 lt!1919028) (= lambda!222625 lambda!222623))))

(declare-fun bs!1145518 () Bool)

(assert (= bs!1145518 (and b!4753378 d!1519826)))

(assert (=> bs!1145518 (= (= lt!1918644 lt!1918956) (= lambda!222625 lambda!222616))))

(declare-fun bs!1145519 () Bool)

(assert (= bs!1145519 (and b!4753378 d!1519896)))

(assert (=> bs!1145519 (= (= lt!1918644 lt!1918987) (= lambda!222625 lambda!222620))))

(declare-fun bs!1145520 () Bool)

(assert (= bs!1145520 (and b!4753378 b!4753337)))

(assert (=> bs!1145520 (= (= lt!1918644 lt!1918657) (= lambda!222625 lambda!222613))))

(assert (=> bs!1145517 (= (= lt!1918644 lt!1918656) (= lambda!222625 lambda!222622))))

(declare-fun bs!1145521 () Bool)

(assert (= bs!1145521 (and b!4753378 b!4753362)))

(assert (=> bs!1145521 (= (= lt!1918644 lt!1919000) (= lambda!222625 lambda!222619))))

(assert (=> bs!1145516 (= (= lt!1918644 lt!1918969) (= lambda!222625 lambda!222615))))

(declare-fun bs!1145522 () Bool)

(assert (= bs!1145522 (and b!4753378 b!4753360)))

(assert (=> bs!1145522 (= (= lt!1918644 acc!1214) (= lambda!222625 lambda!222617))))

(declare-fun bs!1145523 () Bool)

(assert (= bs!1145523 (and b!4753378 b!4753367)))

(assert (=> bs!1145523 (= (= lt!1918644 lt!1918656) (= lambda!222625 lambda!222621))))

(declare-fun bs!1145524 () Bool)

(assert (= bs!1145524 (and b!4753378 d!1519904)))

(assert (=> bs!1145524 (= (= lt!1918644 lt!1919015) (= lambda!222625 lambda!222624))))

(assert (=> bs!1145521 (= (= lt!1918644 acc!1214) (= lambda!222625 lambda!222618))))

(assert (=> b!4753378 true))

(declare-fun bs!1145525 () Bool)

(declare-fun b!4753380 () Bool)

(assert (= bs!1145525 (and b!4753380 b!4753339)))

(declare-fun lambda!222626 () Int)

(assert (=> bs!1145525 (= (= lt!1918644 lt!1918657) (= lambda!222626 lambda!222614))))

(declare-fun bs!1145526 () Bool)

(assert (= bs!1145526 (and b!4753380 d!1519826)))

(assert (=> bs!1145526 (= (= lt!1918644 lt!1918956) (= lambda!222626 lambda!222616))))

(declare-fun bs!1145527 () Bool)

(assert (= bs!1145527 (and b!4753380 d!1519896)))

(assert (=> bs!1145527 (= (= lt!1918644 lt!1918987) (= lambda!222626 lambda!222620))))

(declare-fun bs!1145528 () Bool)

(assert (= bs!1145528 (and b!4753380 b!4753337)))

(assert (=> bs!1145528 (= (= lt!1918644 lt!1918657) (= lambda!222626 lambda!222613))))

(declare-fun bs!1145529 () Bool)

(assert (= bs!1145529 (and b!4753380 b!4753369)))

(assert (=> bs!1145529 (= (= lt!1918644 lt!1918656) (= lambda!222626 lambda!222622))))

(declare-fun bs!1145530 () Bool)

(assert (= bs!1145530 (and b!4753380 b!4753362)))

(assert (=> bs!1145530 (= (= lt!1918644 lt!1919000) (= lambda!222626 lambda!222619))))

(assert (=> bs!1145525 (= (= lt!1918644 lt!1918969) (= lambda!222626 lambda!222615))))

(assert (=> bs!1145529 (= (= lt!1918644 lt!1919028) (= lambda!222626 lambda!222623))))

(declare-fun bs!1145531 () Bool)

(assert (= bs!1145531 (and b!4753380 b!4753378)))

(assert (=> bs!1145531 (= lambda!222626 lambda!222625)))

(declare-fun bs!1145532 () Bool)

(assert (= bs!1145532 (and b!4753380 b!4753360)))

(assert (=> bs!1145532 (= (= lt!1918644 acc!1214) (= lambda!222626 lambda!222617))))

(declare-fun bs!1145533 () Bool)

(assert (= bs!1145533 (and b!4753380 b!4753367)))

(assert (=> bs!1145533 (= (= lt!1918644 lt!1918656) (= lambda!222626 lambda!222621))))

(declare-fun bs!1145534 () Bool)

(assert (= bs!1145534 (and b!4753380 d!1519904)))

(assert (=> bs!1145534 (= (= lt!1918644 lt!1919015) (= lambda!222626 lambda!222624))))

(assert (=> bs!1145530 (= (= lt!1918644 acc!1214) (= lambda!222626 lambda!222618))))

(assert (=> b!4753380 true))

(declare-fun lambda!222627 () Int)

(declare-fun lt!1919062 () ListMap!5565)

(assert (=> bs!1145525 (= (= lt!1919062 lt!1918657) (= lambda!222627 lambda!222614))))

(assert (=> bs!1145526 (= (= lt!1919062 lt!1918956) (= lambda!222627 lambda!222616))))

(assert (=> bs!1145527 (= (= lt!1919062 lt!1918987) (= lambda!222627 lambda!222620))))

(assert (=> bs!1145528 (= (= lt!1919062 lt!1918657) (= lambda!222627 lambda!222613))))

(assert (=> bs!1145529 (= (= lt!1919062 lt!1918656) (= lambda!222627 lambda!222622))))

(assert (=> bs!1145530 (= (= lt!1919062 lt!1919000) (= lambda!222627 lambda!222619))))

(assert (=> bs!1145525 (= (= lt!1919062 lt!1918969) (= lambda!222627 lambda!222615))))

(assert (=> bs!1145529 (= (= lt!1919062 lt!1919028) (= lambda!222627 lambda!222623))))

(assert (=> bs!1145531 (= (= lt!1919062 lt!1918644) (= lambda!222627 lambda!222625))))

(assert (=> bs!1145532 (= (= lt!1919062 acc!1214) (= lambda!222627 lambda!222617))))

(assert (=> bs!1145533 (= (= lt!1919062 lt!1918656) (= lambda!222627 lambda!222621))))

(assert (=> b!4753380 (= (= lt!1919062 lt!1918644) (= lambda!222627 lambda!222626))))

(assert (=> bs!1145534 (= (= lt!1919062 lt!1919015) (= lambda!222627 lambda!222624))))

(assert (=> bs!1145530 (= (= lt!1919062 acc!1214) (= lambda!222627 lambda!222618))))

(assert (=> b!4753380 true))

(declare-fun bs!1145535 () Bool)

(declare-fun d!1519918 () Bool)

(assert (= bs!1145535 (and d!1519918 b!4753339)))

(declare-fun lt!1919049 () ListMap!5565)

(declare-fun lambda!222628 () Int)

(assert (=> bs!1145535 (= (= lt!1919049 lt!1918657) (= lambda!222628 lambda!222614))))

(declare-fun bs!1145536 () Bool)

(assert (= bs!1145536 (and d!1519918 d!1519826)))

(assert (=> bs!1145536 (= (= lt!1919049 lt!1918956) (= lambda!222628 lambda!222616))))

(declare-fun bs!1145537 () Bool)

(assert (= bs!1145537 (and d!1519918 b!4753380)))

(assert (=> bs!1145537 (= (= lt!1919049 lt!1919062) (= lambda!222628 lambda!222627))))

(declare-fun bs!1145538 () Bool)

(assert (= bs!1145538 (and d!1519918 d!1519896)))

(assert (=> bs!1145538 (= (= lt!1919049 lt!1918987) (= lambda!222628 lambda!222620))))

(declare-fun bs!1145539 () Bool)

(assert (= bs!1145539 (and d!1519918 b!4753337)))

(assert (=> bs!1145539 (= (= lt!1919049 lt!1918657) (= lambda!222628 lambda!222613))))

(declare-fun bs!1145540 () Bool)

(assert (= bs!1145540 (and d!1519918 b!4753369)))

(assert (=> bs!1145540 (= (= lt!1919049 lt!1918656) (= lambda!222628 lambda!222622))))

(declare-fun bs!1145541 () Bool)

(assert (= bs!1145541 (and d!1519918 b!4753362)))

(assert (=> bs!1145541 (= (= lt!1919049 lt!1919000) (= lambda!222628 lambda!222619))))

(assert (=> bs!1145535 (= (= lt!1919049 lt!1918969) (= lambda!222628 lambda!222615))))

(assert (=> bs!1145540 (= (= lt!1919049 lt!1919028) (= lambda!222628 lambda!222623))))

(declare-fun bs!1145542 () Bool)

(assert (= bs!1145542 (and d!1519918 b!4753378)))

(assert (=> bs!1145542 (= (= lt!1919049 lt!1918644) (= lambda!222628 lambda!222625))))

(declare-fun bs!1145543 () Bool)

(assert (= bs!1145543 (and d!1519918 b!4753360)))

(assert (=> bs!1145543 (= (= lt!1919049 acc!1214) (= lambda!222628 lambda!222617))))

(declare-fun bs!1145544 () Bool)

(assert (= bs!1145544 (and d!1519918 b!4753367)))

(assert (=> bs!1145544 (= (= lt!1919049 lt!1918656) (= lambda!222628 lambda!222621))))

(assert (=> bs!1145537 (= (= lt!1919049 lt!1918644) (= lambda!222628 lambda!222626))))

(declare-fun bs!1145545 () Bool)

(assert (= bs!1145545 (and d!1519918 d!1519904)))

(assert (=> bs!1145545 (= (= lt!1919049 lt!1919015) (= lambda!222628 lambda!222624))))

(assert (=> bs!1145541 (= (= lt!1919049 acc!1214) (= lambda!222628 lambda!222618))))

(assert (=> d!1519918 true))

(declare-fun b!4753376 () Bool)

(declare-fun e!2965255 () Bool)

(assert (=> b!4753376 (= e!2965255 (forall!11770 (toList!6128 lt!1918644) lambda!222627))))

(declare-fun call!333220 () Bool)

(declare-fun c!811556 () Bool)

(declare-fun bm!333215 () Bool)

(assert (=> bm!333215 (= call!333220 (forall!11770 (ite c!811556 (toList!6128 lt!1918644) (Cons!53100 t!14174 (t!360566 l!14304))) (ite c!811556 lambda!222625 lambda!222627)))))

(declare-fun b!4753377 () Bool)

(declare-fun e!2965256 () Bool)

(assert (=> b!4753377 (= e!2965256 (invariantList!1602 (toList!6128 lt!1919049)))))

(assert (=> d!1519918 e!2965256))

(declare-fun res!2016057 () Bool)

(assert (=> d!1519918 (=> (not res!2016057) (not e!2965256))))

(assert (=> d!1519918 (= res!2016057 (forall!11770 (Cons!53100 t!14174 (t!360566 l!14304)) lambda!222628))))

(declare-fun e!2965254 () ListMap!5565)

(assert (=> d!1519918 (= lt!1919049 e!2965254)))

(assert (=> d!1519918 (= c!811556 ((_ is Nil!53100) (Cons!53100 t!14174 (t!360566 l!14304))))))

(assert (=> d!1519918 (noDuplicateKeys!2160 (Cons!53100 t!14174 (t!360566 l!14304)))))

(assert (=> d!1519918 (= (addToMapMapFromBucket!1584 (Cons!53100 t!14174 (t!360566 l!14304)) lt!1918644) lt!1919049)))

(assert (=> b!4753378 (= e!2965254 lt!1918644)))

(declare-fun lt!1919045 () Unit!136722)

(declare-fun call!333221 () Unit!136722)

(assert (=> b!4753378 (= lt!1919045 call!333221)))

(declare-fun call!333222 () Bool)

(assert (=> b!4753378 call!333222))

(declare-fun lt!1919055 () Unit!136722)

(assert (=> b!4753378 (= lt!1919055 lt!1919045)))

(assert (=> b!4753378 call!333220))

(declare-fun lt!1919048 () Unit!136722)

(declare-fun Unit!136807 () Unit!136722)

(assert (=> b!4753378 (= lt!1919048 Unit!136807)))

(declare-fun b!4753379 () Bool)

(declare-fun res!2016056 () Bool)

(assert (=> b!4753379 (=> (not res!2016056) (not e!2965256))))

(assert (=> b!4753379 (= res!2016056 (forall!11770 (toList!6128 lt!1918644) lambda!222628))))

(declare-fun bm!333216 () Bool)

(assert (=> bm!333216 (= call!333221 (lemmaContainsAllItsOwnKeys!885 lt!1918644))))

(assert (=> b!4753380 (= e!2965254 lt!1919062)))

(declare-fun lt!1919060 () ListMap!5565)

(assert (=> b!4753380 (= lt!1919060 (+!2394 lt!1918644 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304)))))))

(assert (=> b!4753380 (= lt!1919062 (addToMapMapFromBucket!1584 (t!360566 (Cons!53100 t!14174 (t!360566 l!14304))) (+!2394 lt!1918644 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304))))))))

(declare-fun lt!1919047 () Unit!136722)

(assert (=> b!4753380 (= lt!1919047 call!333221)))

(assert (=> b!4753380 (forall!11770 (toList!6128 lt!1918644) lambda!222626)))

(declare-fun lt!1919053 () Unit!136722)

(assert (=> b!4753380 (= lt!1919053 lt!1919047)))

(assert (=> b!4753380 (forall!11770 (toList!6128 lt!1919060) lambda!222627)))

(declare-fun lt!1919050 () Unit!136722)

(declare-fun Unit!136811 () Unit!136722)

(assert (=> b!4753380 (= lt!1919050 Unit!136811)))

(assert (=> b!4753380 (forall!11770 (t!360566 (Cons!53100 t!14174 (t!360566 l!14304))) lambda!222627)))

(declare-fun lt!1919057 () Unit!136722)

(declare-fun Unit!136812 () Unit!136722)

(assert (=> b!4753380 (= lt!1919057 Unit!136812)))

(declare-fun lt!1919058 () Unit!136722)

(declare-fun Unit!136813 () Unit!136722)

(assert (=> b!4753380 (= lt!1919058 Unit!136813)))

(declare-fun lt!1919056 () Unit!136722)

(assert (=> b!4753380 (= lt!1919056 (forallContained!3796 (toList!6128 lt!1919060) lambda!222627 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304)))))))

(assert (=> b!4753380 (contains!16528 lt!1919060 (_1!30734 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304)))))))

(declare-fun lt!1919052 () Unit!136722)

(declare-fun Unit!136815 () Unit!136722)

(assert (=> b!4753380 (= lt!1919052 Unit!136815)))

(assert (=> b!4753380 (contains!16528 lt!1919062 (_1!30734 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304)))))))

(declare-fun lt!1919043 () Unit!136722)

(declare-fun Unit!136816 () Unit!136722)

(assert (=> b!4753380 (= lt!1919043 Unit!136816)))

(assert (=> b!4753380 call!333220))

(declare-fun lt!1919054 () Unit!136722)

(declare-fun Unit!136817 () Unit!136722)

(assert (=> b!4753380 (= lt!1919054 Unit!136817)))

(assert (=> b!4753380 (forall!11770 (toList!6128 lt!1919060) lambda!222627)))

(declare-fun lt!1919059 () Unit!136722)

(declare-fun Unit!136818 () Unit!136722)

(assert (=> b!4753380 (= lt!1919059 Unit!136818)))

(declare-fun lt!1919044 () Unit!136722)

(declare-fun Unit!136819 () Unit!136722)

(assert (=> b!4753380 (= lt!1919044 Unit!136819)))

(declare-fun lt!1919061 () Unit!136722)

(assert (=> b!4753380 (= lt!1919061 (addForallContainsKeyThenBeforeAdding!884 lt!1918644 lt!1919062 (_1!30734 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304)))) (_2!30734 (h!59497 (Cons!53100 t!14174 (t!360566 l!14304))))))))

(assert (=> b!4753380 call!333222))

(declare-fun lt!1919046 () Unit!136722)

(assert (=> b!4753380 (= lt!1919046 lt!1919061)))

(assert (=> b!4753380 (forall!11770 (toList!6128 lt!1918644) lambda!222627)))

(declare-fun lt!1919042 () Unit!136722)

(declare-fun Unit!136820 () Unit!136722)

(assert (=> b!4753380 (= lt!1919042 Unit!136820)))

(declare-fun res!2016058 () Bool)

(assert (=> b!4753380 (= res!2016058 (forall!11770 (Cons!53100 t!14174 (t!360566 l!14304)) lambda!222627))))

(assert (=> b!4753380 (=> (not res!2016058) (not e!2965255))))

(assert (=> b!4753380 e!2965255))

(declare-fun lt!1919051 () Unit!136722)

(declare-fun Unit!136822 () Unit!136722)

(assert (=> b!4753380 (= lt!1919051 Unit!136822)))

(declare-fun bm!333217 () Bool)

(assert (=> bm!333217 (= call!333222 (forall!11770 (toList!6128 lt!1918644) (ite c!811556 lambda!222625 lambda!222627)))))

(assert (= (and d!1519918 c!811556) b!4753378))

(assert (= (and d!1519918 (not c!811556)) b!4753380))

(assert (= (and b!4753380 res!2016058) b!4753376))

(assert (= (or b!4753378 b!4753380) bm!333216))

(assert (= (or b!4753378 b!4753380) bm!333215))

(assert (= (or b!4753378 b!4753380) bm!333217))

(assert (= (and d!1519918 res!2016057) b!4753379))

(assert (= (and b!4753379 res!2016056) b!4753377))

(declare-fun m!5720353 () Bool)

(assert (=> b!4753379 m!5720353))

(declare-fun m!5720355 () Bool)

(assert (=> b!4753380 m!5720355))

(declare-fun m!5720357 () Bool)

(assert (=> b!4753380 m!5720357))

(declare-fun m!5720359 () Bool)

(assert (=> b!4753380 m!5720359))

(declare-fun m!5720361 () Bool)

(assert (=> b!4753380 m!5720361))

(declare-fun m!5720363 () Bool)

(assert (=> b!4753380 m!5720363))

(declare-fun m!5720365 () Bool)

(assert (=> b!4753380 m!5720365))

(declare-fun m!5720367 () Bool)

(assert (=> b!4753380 m!5720367))

(declare-fun m!5720369 () Bool)

(assert (=> b!4753380 m!5720369))

(declare-fun m!5720371 () Bool)

(assert (=> b!4753380 m!5720371))

(assert (=> b!4753380 m!5720359))

(declare-fun m!5720373 () Bool)

(assert (=> b!4753380 m!5720373))

(declare-fun m!5720375 () Bool)

(assert (=> b!4753380 m!5720375))

(assert (=> b!4753380 m!5720355))

(declare-fun m!5720377 () Bool)

(assert (=> bm!333217 m!5720377))

(declare-fun m!5720379 () Bool)

(assert (=> bm!333215 m!5720379))

(assert (=> b!4753376 m!5720369))

(declare-fun m!5720381 () Bool)

(assert (=> b!4753377 m!5720381))

(declare-fun m!5720383 () Bool)

(assert (=> bm!333216 m!5720383))

(declare-fun m!5720385 () Bool)

(assert (=> d!1519918 m!5720385))

(declare-fun m!5720387 () Bool)

(assert (=> d!1519918 m!5720387))

(assert (=> b!4753242 d!1519918))

(declare-fun bs!1145546 () Bool)

(declare-fun b!4753383 () Bool)

(assert (= bs!1145546 (and b!4753383 b!4753339)))

(declare-fun lambda!222629 () Int)

(assert (=> bs!1145546 (= (= lt!1918645 lt!1918657) (= lambda!222629 lambda!222614))))

(declare-fun bs!1145547 () Bool)

(assert (= bs!1145547 (and b!4753383 d!1519826)))

(assert (=> bs!1145547 (= (= lt!1918645 lt!1918956) (= lambda!222629 lambda!222616))))

(declare-fun bs!1145548 () Bool)

(assert (= bs!1145548 (and b!4753383 b!4753380)))

(assert (=> bs!1145548 (= (= lt!1918645 lt!1919062) (= lambda!222629 lambda!222627))))

(declare-fun bs!1145549 () Bool)

(assert (= bs!1145549 (and b!4753383 d!1519896)))

(assert (=> bs!1145549 (= (= lt!1918645 lt!1918987) (= lambda!222629 lambda!222620))))

(declare-fun bs!1145550 () Bool)

(assert (= bs!1145550 (and b!4753383 b!4753337)))

(assert (=> bs!1145550 (= (= lt!1918645 lt!1918657) (= lambda!222629 lambda!222613))))

(declare-fun bs!1145551 () Bool)

(assert (= bs!1145551 (and b!4753383 b!4753369)))

(assert (=> bs!1145551 (= (= lt!1918645 lt!1918656) (= lambda!222629 lambda!222622))))

(declare-fun bs!1145552 () Bool)

(assert (= bs!1145552 (and b!4753383 b!4753362)))

(assert (=> bs!1145552 (= (= lt!1918645 lt!1919000) (= lambda!222629 lambda!222619))))

(assert (=> bs!1145546 (= (= lt!1918645 lt!1918969) (= lambda!222629 lambda!222615))))

(assert (=> bs!1145551 (= (= lt!1918645 lt!1919028) (= lambda!222629 lambda!222623))))

(declare-fun bs!1145553 () Bool)

(assert (= bs!1145553 (and b!4753383 b!4753378)))

(assert (=> bs!1145553 (= (= lt!1918645 lt!1918644) (= lambda!222629 lambda!222625))))

(declare-fun bs!1145554 () Bool)

(assert (= bs!1145554 (and b!4753383 b!4753360)))

(assert (=> bs!1145554 (= (= lt!1918645 acc!1214) (= lambda!222629 lambda!222617))))

(declare-fun bs!1145555 () Bool)

(assert (= bs!1145555 (and b!4753383 d!1519918)))

(assert (=> bs!1145555 (= (= lt!1918645 lt!1919049) (= lambda!222629 lambda!222628))))

(declare-fun bs!1145556 () Bool)

(assert (= bs!1145556 (and b!4753383 b!4753367)))

(assert (=> bs!1145556 (= (= lt!1918645 lt!1918656) (= lambda!222629 lambda!222621))))

(assert (=> bs!1145548 (= (= lt!1918645 lt!1918644) (= lambda!222629 lambda!222626))))

(declare-fun bs!1145557 () Bool)

(assert (= bs!1145557 (and b!4753383 d!1519904)))

(assert (=> bs!1145557 (= (= lt!1918645 lt!1919015) (= lambda!222629 lambda!222624))))

(assert (=> bs!1145552 (= (= lt!1918645 acc!1214) (= lambda!222629 lambda!222618))))

(assert (=> b!4753383 true))

(declare-fun bs!1145558 () Bool)

(declare-fun b!4753385 () Bool)

(assert (= bs!1145558 (and b!4753385 b!4753339)))

(declare-fun lambda!222630 () Int)

(assert (=> bs!1145558 (= (= lt!1918645 lt!1918657) (= lambda!222630 lambda!222614))))

(declare-fun bs!1145559 () Bool)

(assert (= bs!1145559 (and b!4753385 d!1519826)))

(assert (=> bs!1145559 (= (= lt!1918645 lt!1918956) (= lambda!222630 lambda!222616))))

(declare-fun bs!1145560 () Bool)

(assert (= bs!1145560 (and b!4753385 b!4753380)))

(assert (=> bs!1145560 (= (= lt!1918645 lt!1919062) (= lambda!222630 lambda!222627))))

(declare-fun bs!1145561 () Bool)

(assert (= bs!1145561 (and b!4753385 b!4753383)))

(assert (=> bs!1145561 (= lambda!222630 lambda!222629)))

(declare-fun bs!1145562 () Bool)

(assert (= bs!1145562 (and b!4753385 d!1519896)))

(assert (=> bs!1145562 (= (= lt!1918645 lt!1918987) (= lambda!222630 lambda!222620))))

(declare-fun bs!1145563 () Bool)

(assert (= bs!1145563 (and b!4753385 b!4753337)))

(assert (=> bs!1145563 (= (= lt!1918645 lt!1918657) (= lambda!222630 lambda!222613))))

(declare-fun bs!1145564 () Bool)

(assert (= bs!1145564 (and b!4753385 b!4753369)))

(assert (=> bs!1145564 (= (= lt!1918645 lt!1918656) (= lambda!222630 lambda!222622))))

(declare-fun bs!1145565 () Bool)

(assert (= bs!1145565 (and b!4753385 b!4753362)))

(assert (=> bs!1145565 (= (= lt!1918645 lt!1919000) (= lambda!222630 lambda!222619))))

(assert (=> bs!1145558 (= (= lt!1918645 lt!1918969) (= lambda!222630 lambda!222615))))

(assert (=> bs!1145564 (= (= lt!1918645 lt!1919028) (= lambda!222630 lambda!222623))))

(declare-fun bs!1145566 () Bool)

(assert (= bs!1145566 (and b!4753385 b!4753378)))

(assert (=> bs!1145566 (= (= lt!1918645 lt!1918644) (= lambda!222630 lambda!222625))))

(declare-fun bs!1145567 () Bool)

(assert (= bs!1145567 (and b!4753385 b!4753360)))

(assert (=> bs!1145567 (= (= lt!1918645 acc!1214) (= lambda!222630 lambda!222617))))

(declare-fun bs!1145568 () Bool)

(assert (= bs!1145568 (and b!4753385 d!1519918)))

(assert (=> bs!1145568 (= (= lt!1918645 lt!1919049) (= lambda!222630 lambda!222628))))

(declare-fun bs!1145569 () Bool)

(assert (= bs!1145569 (and b!4753385 b!4753367)))

(assert (=> bs!1145569 (= (= lt!1918645 lt!1918656) (= lambda!222630 lambda!222621))))

(assert (=> bs!1145560 (= (= lt!1918645 lt!1918644) (= lambda!222630 lambda!222626))))

(declare-fun bs!1145570 () Bool)

(assert (= bs!1145570 (and b!4753385 d!1519904)))

(assert (=> bs!1145570 (= (= lt!1918645 lt!1919015) (= lambda!222630 lambda!222624))))

(assert (=> bs!1145565 (= (= lt!1918645 acc!1214) (= lambda!222630 lambda!222618))))

(assert (=> b!4753385 true))

(declare-fun lt!1919083 () ListMap!5565)

(declare-fun lambda!222631 () Int)

(assert (=> bs!1145558 (= (= lt!1919083 lt!1918657) (= lambda!222631 lambda!222614))))

(assert (=> bs!1145559 (= (= lt!1919083 lt!1918956) (= lambda!222631 lambda!222616))))

(assert (=> bs!1145560 (= (= lt!1919083 lt!1919062) (= lambda!222631 lambda!222627))))

(assert (=> bs!1145562 (= (= lt!1919083 lt!1918987) (= lambda!222631 lambda!222620))))

(assert (=> bs!1145563 (= (= lt!1919083 lt!1918657) (= lambda!222631 lambda!222613))))

(assert (=> bs!1145564 (= (= lt!1919083 lt!1918656) (= lambda!222631 lambda!222622))))

(assert (=> bs!1145565 (= (= lt!1919083 lt!1919000) (= lambda!222631 lambda!222619))))

(assert (=> bs!1145558 (= (= lt!1919083 lt!1918969) (= lambda!222631 lambda!222615))))

(assert (=> bs!1145564 (= (= lt!1919083 lt!1919028) (= lambda!222631 lambda!222623))))

(assert (=> bs!1145566 (= (= lt!1919083 lt!1918644) (= lambda!222631 lambda!222625))))

(assert (=> bs!1145567 (= (= lt!1919083 acc!1214) (= lambda!222631 lambda!222617))))

(assert (=> bs!1145568 (= (= lt!1919083 lt!1919049) (= lambda!222631 lambda!222628))))

(assert (=> bs!1145569 (= (= lt!1919083 lt!1918656) (= lambda!222631 lambda!222621))))

(assert (=> bs!1145560 (= (= lt!1919083 lt!1918644) (= lambda!222631 lambda!222626))))

(assert (=> bs!1145561 (= (= lt!1919083 lt!1918645) (= lambda!222631 lambda!222629))))

(assert (=> b!4753385 (= (= lt!1919083 lt!1918645) (= lambda!222631 lambda!222630))))

(assert (=> bs!1145570 (= (= lt!1919083 lt!1919015) (= lambda!222631 lambda!222624))))

(assert (=> bs!1145565 (= (= lt!1919083 acc!1214) (= lambda!222631 lambda!222618))))

(assert (=> b!4753385 true))

(declare-fun bs!1145571 () Bool)

(declare-fun d!1519920 () Bool)

(assert (= bs!1145571 (and d!1519920 b!4753339)))

(declare-fun lt!1919070 () ListMap!5565)

(declare-fun lambda!222632 () Int)

(assert (=> bs!1145571 (= (= lt!1919070 lt!1918657) (= lambda!222632 lambda!222614))))

(declare-fun bs!1145572 () Bool)

(assert (= bs!1145572 (and d!1519920 d!1519826)))

(assert (=> bs!1145572 (= (= lt!1919070 lt!1918956) (= lambda!222632 lambda!222616))))

(declare-fun bs!1145573 () Bool)

(assert (= bs!1145573 (and d!1519920 b!4753380)))

(assert (=> bs!1145573 (= (= lt!1919070 lt!1919062) (= lambda!222632 lambda!222627))))

(declare-fun bs!1145574 () Bool)

(assert (= bs!1145574 (and d!1519920 b!4753337)))

(assert (=> bs!1145574 (= (= lt!1919070 lt!1918657) (= lambda!222632 lambda!222613))))

(declare-fun bs!1145575 () Bool)

(assert (= bs!1145575 (and d!1519920 b!4753369)))

(assert (=> bs!1145575 (= (= lt!1919070 lt!1918656) (= lambda!222632 lambda!222622))))

(declare-fun bs!1145576 () Bool)

(assert (= bs!1145576 (and d!1519920 b!4753362)))

(assert (=> bs!1145576 (= (= lt!1919070 lt!1919000) (= lambda!222632 lambda!222619))))

(assert (=> bs!1145571 (= (= lt!1919070 lt!1918969) (= lambda!222632 lambda!222615))))

(assert (=> bs!1145575 (= (= lt!1919070 lt!1919028) (= lambda!222632 lambda!222623))))

(declare-fun bs!1145577 () Bool)

(assert (= bs!1145577 (and d!1519920 b!4753378)))

(assert (=> bs!1145577 (= (= lt!1919070 lt!1918644) (= lambda!222632 lambda!222625))))

(declare-fun bs!1145578 () Bool)

(assert (= bs!1145578 (and d!1519920 b!4753360)))

(assert (=> bs!1145578 (= (= lt!1919070 acc!1214) (= lambda!222632 lambda!222617))))

(declare-fun bs!1145579 () Bool)

(assert (= bs!1145579 (and d!1519920 d!1519918)))

(assert (=> bs!1145579 (= (= lt!1919070 lt!1919049) (= lambda!222632 lambda!222628))))

(declare-fun bs!1145580 () Bool)

(assert (= bs!1145580 (and d!1519920 b!4753367)))

(assert (=> bs!1145580 (= (= lt!1919070 lt!1918656) (= lambda!222632 lambda!222621))))

(assert (=> bs!1145573 (= (= lt!1919070 lt!1918644) (= lambda!222632 lambda!222626))))

(declare-fun bs!1145581 () Bool)

(assert (= bs!1145581 (and d!1519920 b!4753383)))

(assert (=> bs!1145581 (= (= lt!1919070 lt!1918645) (= lambda!222632 lambda!222629))))

(declare-fun bs!1145582 () Bool)

(assert (= bs!1145582 (and d!1519920 b!4753385)))

(assert (=> bs!1145582 (= (= lt!1919070 lt!1918645) (= lambda!222632 lambda!222630))))

(declare-fun bs!1145583 () Bool)

(assert (= bs!1145583 (and d!1519920 d!1519904)))

(assert (=> bs!1145583 (= (= lt!1919070 lt!1919015) (= lambda!222632 lambda!222624))))

(assert (=> bs!1145576 (= (= lt!1919070 acc!1214) (= lambda!222632 lambda!222618))))

(assert (=> bs!1145582 (= (= lt!1919070 lt!1919083) (= lambda!222632 lambda!222631))))

(declare-fun bs!1145584 () Bool)

(assert (= bs!1145584 (and d!1519920 d!1519896)))

(assert (=> bs!1145584 (= (= lt!1919070 lt!1918987) (= lambda!222632 lambda!222620))))

(assert (=> d!1519920 true))

(declare-fun b!4753381 () Bool)

(declare-fun e!2965258 () Bool)

(assert (=> b!4753381 (= e!2965258 (forall!11770 (toList!6128 lt!1918645) lambda!222631))))

(declare-fun call!333223 () Bool)

(declare-fun bm!333218 () Bool)

(declare-fun c!811557 () Bool)

(assert (=> bm!333218 (= call!333223 (forall!11770 (ite c!811557 (toList!6128 lt!1918645) l!14304) (ite c!811557 lambda!222629 lambda!222631)))))

(declare-fun b!4753382 () Bool)

(declare-fun e!2965259 () Bool)

(assert (=> b!4753382 (= e!2965259 (invariantList!1602 (toList!6128 lt!1919070)))))

(assert (=> d!1519920 e!2965259))

(declare-fun res!2016060 () Bool)

(assert (=> d!1519920 (=> (not res!2016060) (not e!2965259))))

(assert (=> d!1519920 (= res!2016060 (forall!11770 l!14304 lambda!222632))))

(declare-fun e!2965257 () ListMap!5565)

(assert (=> d!1519920 (= lt!1919070 e!2965257)))

(assert (=> d!1519920 (= c!811557 ((_ is Nil!53100) l!14304))))

(assert (=> d!1519920 (noDuplicateKeys!2160 l!14304)))

(assert (=> d!1519920 (= (addToMapMapFromBucket!1584 l!14304 lt!1918645) lt!1919070)))

(assert (=> b!4753383 (= e!2965257 lt!1918645)))

(declare-fun lt!1919066 () Unit!136722)

(declare-fun call!333224 () Unit!136722)

(assert (=> b!4753383 (= lt!1919066 call!333224)))

(declare-fun call!333225 () Bool)

(assert (=> b!4753383 call!333225))

(declare-fun lt!1919076 () Unit!136722)

(assert (=> b!4753383 (= lt!1919076 lt!1919066)))

(assert (=> b!4753383 call!333223))

(declare-fun lt!1919069 () Unit!136722)

(declare-fun Unit!136823 () Unit!136722)

(assert (=> b!4753383 (= lt!1919069 Unit!136823)))

(declare-fun b!4753384 () Bool)

(declare-fun res!2016059 () Bool)

(assert (=> b!4753384 (=> (not res!2016059) (not e!2965259))))

(assert (=> b!4753384 (= res!2016059 (forall!11770 (toList!6128 lt!1918645) lambda!222632))))

(declare-fun bm!333219 () Bool)

(assert (=> bm!333219 (= call!333224 (lemmaContainsAllItsOwnKeys!885 lt!1918645))))

(assert (=> b!4753385 (= e!2965257 lt!1919083)))

(declare-fun lt!1919081 () ListMap!5565)

(assert (=> b!4753385 (= lt!1919081 (+!2394 lt!1918645 (h!59497 l!14304)))))

(assert (=> b!4753385 (= lt!1919083 (addToMapMapFromBucket!1584 (t!360566 l!14304) (+!2394 lt!1918645 (h!59497 l!14304))))))

(declare-fun lt!1919068 () Unit!136722)

(assert (=> b!4753385 (= lt!1919068 call!333224)))

(assert (=> b!4753385 (forall!11770 (toList!6128 lt!1918645) lambda!222630)))

(declare-fun lt!1919074 () Unit!136722)

(assert (=> b!4753385 (= lt!1919074 lt!1919068)))

(assert (=> b!4753385 (forall!11770 (toList!6128 lt!1919081) lambda!222631)))

(declare-fun lt!1919071 () Unit!136722)

(declare-fun Unit!136824 () Unit!136722)

(assert (=> b!4753385 (= lt!1919071 Unit!136824)))

(assert (=> b!4753385 (forall!11770 (t!360566 l!14304) lambda!222631)))

(declare-fun lt!1919078 () Unit!136722)

(declare-fun Unit!136825 () Unit!136722)

(assert (=> b!4753385 (= lt!1919078 Unit!136825)))

(declare-fun lt!1919079 () Unit!136722)

(declare-fun Unit!136826 () Unit!136722)

(assert (=> b!4753385 (= lt!1919079 Unit!136826)))

(declare-fun lt!1919077 () Unit!136722)

(assert (=> b!4753385 (= lt!1919077 (forallContained!3796 (toList!6128 lt!1919081) lambda!222631 (h!59497 l!14304)))))

(assert (=> b!4753385 (contains!16528 lt!1919081 (_1!30734 (h!59497 l!14304)))))

(declare-fun lt!1919073 () Unit!136722)

(declare-fun Unit!136827 () Unit!136722)

(assert (=> b!4753385 (= lt!1919073 Unit!136827)))

(assert (=> b!4753385 (contains!16528 lt!1919083 (_1!30734 (h!59497 l!14304)))))

(declare-fun lt!1919064 () Unit!136722)

(declare-fun Unit!136828 () Unit!136722)

(assert (=> b!4753385 (= lt!1919064 Unit!136828)))

(assert (=> b!4753385 call!333223))

(declare-fun lt!1919075 () Unit!136722)

(declare-fun Unit!136829 () Unit!136722)

(assert (=> b!4753385 (= lt!1919075 Unit!136829)))

(assert (=> b!4753385 (forall!11770 (toList!6128 lt!1919081) lambda!222631)))

(declare-fun lt!1919080 () Unit!136722)

(declare-fun Unit!136830 () Unit!136722)

(assert (=> b!4753385 (= lt!1919080 Unit!136830)))

(declare-fun lt!1919065 () Unit!136722)

(declare-fun Unit!136831 () Unit!136722)

(assert (=> b!4753385 (= lt!1919065 Unit!136831)))

(declare-fun lt!1919082 () Unit!136722)

(assert (=> b!4753385 (= lt!1919082 (addForallContainsKeyThenBeforeAdding!884 lt!1918645 lt!1919083 (_1!30734 (h!59497 l!14304)) (_2!30734 (h!59497 l!14304))))))

(assert (=> b!4753385 call!333225))

(declare-fun lt!1919067 () Unit!136722)

(assert (=> b!4753385 (= lt!1919067 lt!1919082)))

(assert (=> b!4753385 (forall!11770 (toList!6128 lt!1918645) lambda!222631)))

(declare-fun lt!1919063 () Unit!136722)

(declare-fun Unit!136832 () Unit!136722)

(assert (=> b!4753385 (= lt!1919063 Unit!136832)))

(declare-fun res!2016061 () Bool)

(assert (=> b!4753385 (= res!2016061 (forall!11770 l!14304 lambda!222631))))

(assert (=> b!4753385 (=> (not res!2016061) (not e!2965258))))

(assert (=> b!4753385 e!2965258))

(declare-fun lt!1919072 () Unit!136722)

(declare-fun Unit!136833 () Unit!136722)

(assert (=> b!4753385 (= lt!1919072 Unit!136833)))

(declare-fun bm!333220 () Bool)

(assert (=> bm!333220 (= call!333225 (forall!11770 (toList!6128 lt!1918645) (ite c!811557 lambda!222629 lambda!222631)))))

(assert (= (and d!1519920 c!811557) b!4753383))

(assert (= (and d!1519920 (not c!811557)) b!4753385))

(assert (= (and b!4753385 res!2016061) b!4753381))

(assert (= (or b!4753383 b!4753385) bm!333219))

(assert (= (or b!4753383 b!4753385) bm!333218))

(assert (= (or b!4753383 b!4753385) bm!333220))

(assert (= (and d!1519920 res!2016060) b!4753384))

(assert (= (and b!4753384 res!2016059) b!4753382))

(declare-fun m!5720389 () Bool)

(assert (=> b!4753384 m!5720389))

(declare-fun m!5720391 () Bool)

(assert (=> b!4753385 m!5720391))

(declare-fun m!5720393 () Bool)

(assert (=> b!4753385 m!5720393))

(assert (=> b!4753385 m!5719755))

(declare-fun m!5720395 () Bool)

(assert (=> b!4753385 m!5720395))

(declare-fun m!5720397 () Bool)

(assert (=> b!4753385 m!5720397))

(declare-fun m!5720399 () Bool)

(assert (=> b!4753385 m!5720399))

(declare-fun m!5720401 () Bool)

(assert (=> b!4753385 m!5720401))

(declare-fun m!5720403 () Bool)

(assert (=> b!4753385 m!5720403))

(declare-fun m!5720405 () Bool)

(assert (=> b!4753385 m!5720405))

(assert (=> b!4753385 m!5719755))

(declare-fun m!5720407 () Bool)

(assert (=> b!4753385 m!5720407))

(declare-fun m!5720409 () Bool)

(assert (=> b!4753385 m!5720409))

(assert (=> b!4753385 m!5720391))

(declare-fun m!5720411 () Bool)

(assert (=> bm!333220 m!5720411))

(declare-fun m!5720413 () Bool)

(assert (=> bm!333218 m!5720413))

(assert (=> b!4753381 m!5720403))

(declare-fun m!5720415 () Bool)

(assert (=> b!4753382 m!5720415))

(declare-fun m!5720417 () Bool)

(assert (=> bm!333219 m!5720417))

(declare-fun m!5720419 () Bool)

(assert (=> d!1519920 m!5720419))

(assert (=> d!1519920 m!5719703))

(assert (=> b!4753242 d!1519920))

(declare-fun d!1519922 () Bool)

(assert (=> d!1519922 (= (eq!1229 lt!1918650 (+!2394 lt!1918651 t!14174)) (= (content!9539 (toList!6128 lt!1918650)) (content!9539 (toList!6128 (+!2394 lt!1918651 t!14174)))))))

(declare-fun bs!1145585 () Bool)

(assert (= bs!1145585 d!1519922))

(assert (=> bs!1145585 m!5719811))

(declare-fun m!5720421 () Bool)

(assert (=> bs!1145585 m!5720421))

(assert (=> b!4753242 d!1519922))

(declare-fun d!1519924 () Bool)

(declare-fun e!2965260 () Bool)

(assert (=> d!1519924 e!2965260))

(declare-fun res!2016062 () Bool)

(assert (=> d!1519924 (=> (not res!2016062) (not e!2965260))))

(declare-fun lt!1919085 () ListMap!5565)

(assert (=> d!1519924 (= res!2016062 (contains!16528 lt!1919085 (_1!30734 t!14174)))))

(declare-fun lt!1919086 () List!53224)

(assert (=> d!1519924 (= lt!1919085 (ListMap!5566 lt!1919086))))

(declare-fun lt!1919087 () Unit!136722)

(declare-fun lt!1919084 () Unit!136722)

(assert (=> d!1519924 (= lt!1919087 lt!1919084)))

(assert (=> d!1519924 (= (getValueByKey!2089 lt!1919086 (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174)))))

(assert (=> d!1519924 (= lt!1919084 (lemmaContainsTupThenGetReturnValue!1166 lt!1919086 (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519924 (= lt!1919086 (insertNoDuplicatedKeys!674 (toList!6128 acc!1214) (_1!30734 t!14174) (_2!30734 t!14174)))))

(assert (=> d!1519924 (= (+!2394 acc!1214 t!14174) lt!1919085)))

(declare-fun b!4753386 () Bool)

(declare-fun res!2016063 () Bool)

(assert (=> b!4753386 (=> (not res!2016063) (not e!2965260))))

(assert (=> b!4753386 (= res!2016063 (= (getValueByKey!2089 (toList!6128 lt!1919085) (_1!30734 t!14174)) (Some!12538 (_2!30734 t!14174))))))

(declare-fun b!4753387 () Bool)

(assert (=> b!4753387 (= e!2965260 (contains!16529 (toList!6128 lt!1919085) t!14174))))

(assert (= (and d!1519924 res!2016062) b!4753386))

(assert (= (and b!4753386 res!2016063) b!4753387))

(declare-fun m!5720423 () Bool)

(assert (=> d!1519924 m!5720423))

(declare-fun m!5720425 () Bool)

(assert (=> d!1519924 m!5720425))

(declare-fun m!5720427 () Bool)

(assert (=> d!1519924 m!5720427))

(declare-fun m!5720429 () Bool)

(assert (=> d!1519924 m!5720429))

(declare-fun m!5720431 () Bool)

(assert (=> b!4753386 m!5720431))

(declare-fun m!5720433 () Bool)

(assert (=> b!4753387 m!5720433))

(assert (=> b!4753242 d!1519924))

(declare-fun d!1519926 () Bool)

(assert (=> d!1519926 (= (eq!1229 lt!1918646 lt!1918648) (= (content!9539 (toList!6128 lt!1918646)) (content!9539 (toList!6128 lt!1918648))))))

(declare-fun bs!1145586 () Bool)

(assert (= bs!1145586 d!1519926))

(assert (=> bs!1145586 m!5720321))

(assert (=> bs!1145586 m!5719813))

(assert (=> b!4753242 d!1519926))

(declare-fun bs!1145587 () Bool)

(declare-fun b!4753390 () Bool)

(assert (= bs!1145587 (and b!4753390 b!4753339)))

(declare-fun lambda!222633 () Int)

(assert (=> bs!1145587 (= (= acc!1214 lt!1918657) (= lambda!222633 lambda!222614))))

(declare-fun bs!1145588 () Bool)

(assert (= bs!1145588 (and b!4753390 d!1519826)))

(assert (=> bs!1145588 (= (= acc!1214 lt!1918956) (= lambda!222633 lambda!222616))))

(declare-fun bs!1145589 () Bool)

(assert (= bs!1145589 (and b!4753390 b!4753380)))

(assert (=> bs!1145589 (= (= acc!1214 lt!1919062) (= lambda!222633 lambda!222627))))

(declare-fun bs!1145590 () Bool)

(assert (= bs!1145590 (and b!4753390 b!4753337)))

(assert (=> bs!1145590 (= (= acc!1214 lt!1918657) (= lambda!222633 lambda!222613))))

(declare-fun bs!1145591 () Bool)

(assert (= bs!1145591 (and b!4753390 b!4753369)))

(assert (=> bs!1145591 (= (= acc!1214 lt!1918656) (= lambda!222633 lambda!222622))))

(declare-fun bs!1145592 () Bool)

(assert (= bs!1145592 (and b!4753390 b!4753362)))

(assert (=> bs!1145592 (= (= acc!1214 lt!1919000) (= lambda!222633 lambda!222619))))

(assert (=> bs!1145587 (= (= acc!1214 lt!1918969) (= lambda!222633 lambda!222615))))

(assert (=> bs!1145591 (= (= acc!1214 lt!1919028) (= lambda!222633 lambda!222623))))

(declare-fun bs!1145593 () Bool)

(assert (= bs!1145593 (and b!4753390 b!4753378)))

(assert (=> bs!1145593 (= (= acc!1214 lt!1918644) (= lambda!222633 lambda!222625))))

(declare-fun bs!1145594 () Bool)

(assert (= bs!1145594 (and b!4753390 b!4753360)))

(assert (=> bs!1145594 (= lambda!222633 lambda!222617)))

(declare-fun bs!1145595 () Bool)

(assert (= bs!1145595 (and b!4753390 d!1519918)))

(assert (=> bs!1145595 (= (= acc!1214 lt!1919049) (= lambda!222633 lambda!222628))))

(declare-fun bs!1145596 () Bool)

(assert (= bs!1145596 (and b!4753390 b!4753367)))

(assert (=> bs!1145596 (= (= acc!1214 lt!1918656) (= lambda!222633 lambda!222621))))

(assert (=> bs!1145589 (= (= acc!1214 lt!1918644) (= lambda!222633 lambda!222626))))

(declare-fun bs!1145597 () Bool)

(assert (= bs!1145597 (and b!4753390 d!1519920)))

(assert (=> bs!1145597 (= (= acc!1214 lt!1919070) (= lambda!222633 lambda!222632))))

(declare-fun bs!1145598 () Bool)

(assert (= bs!1145598 (and b!4753390 b!4753383)))

(assert (=> bs!1145598 (= (= acc!1214 lt!1918645) (= lambda!222633 lambda!222629))))

(declare-fun bs!1145599 () Bool)

(assert (= bs!1145599 (and b!4753390 b!4753385)))

(assert (=> bs!1145599 (= (= acc!1214 lt!1918645) (= lambda!222633 lambda!222630))))

(declare-fun bs!1145600 () Bool)

(assert (= bs!1145600 (and b!4753390 d!1519904)))

(assert (=> bs!1145600 (= (= acc!1214 lt!1919015) (= lambda!222633 lambda!222624))))

(assert (=> bs!1145592 (= lambda!222633 lambda!222618)))

(assert (=> bs!1145599 (= (= acc!1214 lt!1919083) (= lambda!222633 lambda!222631))))

(declare-fun bs!1145601 () Bool)

(assert (= bs!1145601 (and b!4753390 d!1519896)))

(assert (=> bs!1145601 (= (= acc!1214 lt!1918987) (= lambda!222633 lambda!222620))))

(assert (=> b!4753390 true))

(declare-fun bs!1145602 () Bool)

(declare-fun b!4753392 () Bool)

(assert (= bs!1145602 (and b!4753392 b!4753339)))

(declare-fun lambda!222634 () Int)

(assert (=> bs!1145602 (= (= acc!1214 lt!1918657) (= lambda!222634 lambda!222614))))

(declare-fun bs!1145603 () Bool)

(assert (= bs!1145603 (and b!4753392 d!1519826)))

(assert (=> bs!1145603 (= (= acc!1214 lt!1918956) (= lambda!222634 lambda!222616))))

(declare-fun bs!1145604 () Bool)

(assert (= bs!1145604 (and b!4753392 b!4753380)))

(assert (=> bs!1145604 (= (= acc!1214 lt!1919062) (= lambda!222634 lambda!222627))))

(declare-fun bs!1145605 () Bool)

(assert (= bs!1145605 (and b!4753392 b!4753337)))

(assert (=> bs!1145605 (= (= acc!1214 lt!1918657) (= lambda!222634 lambda!222613))))

(declare-fun bs!1145606 () Bool)

(assert (= bs!1145606 (and b!4753392 b!4753369)))

(assert (=> bs!1145606 (= (= acc!1214 lt!1918656) (= lambda!222634 lambda!222622))))

(declare-fun bs!1145607 () Bool)

(assert (= bs!1145607 (and b!4753392 b!4753362)))

(assert (=> bs!1145607 (= (= acc!1214 lt!1919000) (= lambda!222634 lambda!222619))))

(assert (=> bs!1145606 (= (= acc!1214 lt!1919028) (= lambda!222634 lambda!222623))))

(declare-fun bs!1145608 () Bool)

(assert (= bs!1145608 (and b!4753392 b!4753378)))

(assert (=> bs!1145608 (= (= acc!1214 lt!1918644) (= lambda!222634 lambda!222625))))

(declare-fun bs!1145609 () Bool)

(assert (= bs!1145609 (and b!4753392 b!4753360)))

(assert (=> bs!1145609 (= lambda!222634 lambda!222617)))

(declare-fun bs!1145610 () Bool)

(assert (= bs!1145610 (and b!4753392 d!1519918)))

(assert (=> bs!1145610 (= (= acc!1214 lt!1919049) (= lambda!222634 lambda!222628))))

(declare-fun bs!1145611 () Bool)

(assert (= bs!1145611 (and b!4753392 b!4753367)))

(assert (=> bs!1145611 (= (= acc!1214 lt!1918656) (= lambda!222634 lambda!222621))))

(assert (=> bs!1145604 (= (= acc!1214 lt!1918644) (= lambda!222634 lambda!222626))))

(declare-fun bs!1145612 () Bool)

(assert (= bs!1145612 (and b!4753392 d!1519920)))

(assert (=> bs!1145612 (= (= acc!1214 lt!1919070) (= lambda!222634 lambda!222632))))

(declare-fun bs!1145613 () Bool)

(assert (= bs!1145613 (and b!4753392 b!4753383)))

(assert (=> bs!1145613 (= (= acc!1214 lt!1918645) (= lambda!222634 lambda!222629))))

(declare-fun bs!1145614 () Bool)

(assert (= bs!1145614 (and b!4753392 b!4753385)))

(assert (=> bs!1145614 (= (= acc!1214 lt!1918645) (= lambda!222634 lambda!222630))))

(declare-fun bs!1145615 () Bool)

(assert (= bs!1145615 (and b!4753392 d!1519904)))

(assert (=> bs!1145615 (= (= acc!1214 lt!1919015) (= lambda!222634 lambda!222624))))

(assert (=> bs!1145607 (= lambda!222634 lambda!222618)))

(assert (=> bs!1145614 (= (= acc!1214 lt!1919083) (= lambda!222634 lambda!222631))))

(declare-fun bs!1145616 () Bool)

(assert (= bs!1145616 (and b!4753392 d!1519896)))

(assert (=> bs!1145616 (= (= acc!1214 lt!1918987) (= lambda!222634 lambda!222620))))

(declare-fun bs!1145617 () Bool)

(assert (= bs!1145617 (and b!4753392 b!4753390)))

(assert (=> bs!1145617 (= lambda!222634 lambda!222633)))

(assert (=> bs!1145602 (= (= acc!1214 lt!1918969) (= lambda!222634 lambda!222615))))

(assert (=> b!4753392 true))

(declare-fun lt!1919108 () ListMap!5565)

(declare-fun lambda!222635 () Int)

(assert (=> bs!1145602 (= (= lt!1919108 lt!1918657) (= lambda!222635 lambda!222614))))

(assert (=> bs!1145603 (= (= lt!1919108 lt!1918956) (= lambda!222635 lambda!222616))))

(assert (=> bs!1145604 (= (= lt!1919108 lt!1919062) (= lambda!222635 lambda!222627))))

(assert (=> b!4753392 (= (= lt!1919108 acc!1214) (= lambda!222635 lambda!222634))))

(assert (=> bs!1145605 (= (= lt!1919108 lt!1918657) (= lambda!222635 lambda!222613))))

(assert (=> bs!1145606 (= (= lt!1919108 lt!1918656) (= lambda!222635 lambda!222622))))

(assert (=> bs!1145607 (= (= lt!1919108 lt!1919000) (= lambda!222635 lambda!222619))))

(assert (=> bs!1145606 (= (= lt!1919108 lt!1919028) (= lambda!222635 lambda!222623))))

(assert (=> bs!1145608 (= (= lt!1919108 lt!1918644) (= lambda!222635 lambda!222625))))

(assert (=> bs!1145609 (= (= lt!1919108 acc!1214) (= lambda!222635 lambda!222617))))

(assert (=> bs!1145610 (= (= lt!1919108 lt!1919049) (= lambda!222635 lambda!222628))))

(assert (=> bs!1145611 (= (= lt!1919108 lt!1918656) (= lambda!222635 lambda!222621))))

(assert (=> bs!1145604 (= (= lt!1919108 lt!1918644) (= lambda!222635 lambda!222626))))

(assert (=> bs!1145612 (= (= lt!1919108 lt!1919070) (= lambda!222635 lambda!222632))))

(assert (=> bs!1145613 (= (= lt!1919108 lt!1918645) (= lambda!222635 lambda!222629))))

(assert (=> bs!1145614 (= (= lt!1919108 lt!1918645) (= lambda!222635 lambda!222630))))

(assert (=> bs!1145615 (= (= lt!1919108 lt!1919015) (= lambda!222635 lambda!222624))))

(assert (=> bs!1145607 (= (= lt!1919108 acc!1214) (= lambda!222635 lambda!222618))))

(assert (=> bs!1145614 (= (= lt!1919108 lt!1919083) (= lambda!222635 lambda!222631))))

(assert (=> bs!1145616 (= (= lt!1919108 lt!1918987) (= lambda!222635 lambda!222620))))

(assert (=> bs!1145617 (= (= lt!1919108 acc!1214) (= lambda!222635 lambda!222633))))

(assert (=> bs!1145602 (= (= lt!1919108 lt!1918969) (= lambda!222635 lambda!222615))))

(assert (=> b!4753392 true))

(declare-fun bs!1145618 () Bool)

(declare-fun d!1519928 () Bool)

(assert (= bs!1145618 (and d!1519928 b!4753339)))

(declare-fun lt!1919095 () ListMap!5565)

(declare-fun lambda!222636 () Int)

(assert (=> bs!1145618 (= (= lt!1919095 lt!1918657) (= lambda!222636 lambda!222614))))

(declare-fun bs!1145619 () Bool)

(assert (= bs!1145619 (and d!1519928 d!1519826)))

(assert (=> bs!1145619 (= (= lt!1919095 lt!1918956) (= lambda!222636 lambda!222616))))

(declare-fun bs!1145620 () Bool)

(assert (= bs!1145620 (and d!1519928 b!4753380)))

(assert (=> bs!1145620 (= (= lt!1919095 lt!1919062) (= lambda!222636 lambda!222627))))

(declare-fun bs!1145621 () Bool)

(assert (= bs!1145621 (and d!1519928 b!4753392)))

(assert (=> bs!1145621 (= (= lt!1919095 acc!1214) (= lambda!222636 lambda!222634))))

(declare-fun bs!1145622 () Bool)

(assert (= bs!1145622 (and d!1519928 b!4753337)))

(assert (=> bs!1145622 (= (= lt!1919095 lt!1918657) (= lambda!222636 lambda!222613))))

(assert (=> bs!1145621 (= (= lt!1919095 lt!1919108) (= lambda!222636 lambda!222635))))

(declare-fun bs!1145623 () Bool)

(assert (= bs!1145623 (and d!1519928 b!4753369)))

(assert (=> bs!1145623 (= (= lt!1919095 lt!1918656) (= lambda!222636 lambda!222622))))

(declare-fun bs!1145624 () Bool)

(assert (= bs!1145624 (and d!1519928 b!4753362)))

(assert (=> bs!1145624 (= (= lt!1919095 lt!1919000) (= lambda!222636 lambda!222619))))

(assert (=> bs!1145623 (= (= lt!1919095 lt!1919028) (= lambda!222636 lambda!222623))))

(declare-fun bs!1145625 () Bool)

(assert (= bs!1145625 (and d!1519928 b!4753378)))

(assert (=> bs!1145625 (= (= lt!1919095 lt!1918644) (= lambda!222636 lambda!222625))))

(declare-fun bs!1145626 () Bool)

(assert (= bs!1145626 (and d!1519928 b!4753360)))

(assert (=> bs!1145626 (= (= lt!1919095 acc!1214) (= lambda!222636 lambda!222617))))

(declare-fun bs!1145627 () Bool)

(assert (= bs!1145627 (and d!1519928 d!1519918)))

(assert (=> bs!1145627 (= (= lt!1919095 lt!1919049) (= lambda!222636 lambda!222628))))

(declare-fun bs!1145628 () Bool)

(assert (= bs!1145628 (and d!1519928 b!4753367)))

(assert (=> bs!1145628 (= (= lt!1919095 lt!1918656) (= lambda!222636 lambda!222621))))

(assert (=> bs!1145620 (= (= lt!1919095 lt!1918644) (= lambda!222636 lambda!222626))))

(declare-fun bs!1145629 () Bool)

(assert (= bs!1145629 (and d!1519928 d!1519920)))

(assert (=> bs!1145629 (= (= lt!1919095 lt!1919070) (= lambda!222636 lambda!222632))))

(declare-fun bs!1145630 () Bool)

(assert (= bs!1145630 (and d!1519928 b!4753383)))

(assert (=> bs!1145630 (= (= lt!1919095 lt!1918645) (= lambda!222636 lambda!222629))))

(declare-fun bs!1145631 () Bool)

(assert (= bs!1145631 (and d!1519928 b!4753385)))

(assert (=> bs!1145631 (= (= lt!1919095 lt!1918645) (= lambda!222636 lambda!222630))))

(declare-fun bs!1145632 () Bool)

(assert (= bs!1145632 (and d!1519928 d!1519904)))

(assert (=> bs!1145632 (= (= lt!1919095 lt!1919015) (= lambda!222636 lambda!222624))))

(assert (=> bs!1145624 (= (= lt!1919095 acc!1214) (= lambda!222636 lambda!222618))))

(assert (=> bs!1145631 (= (= lt!1919095 lt!1919083) (= lambda!222636 lambda!222631))))

(declare-fun bs!1145633 () Bool)

(assert (= bs!1145633 (and d!1519928 d!1519896)))

(assert (=> bs!1145633 (= (= lt!1919095 lt!1918987) (= lambda!222636 lambda!222620))))

(declare-fun bs!1145634 () Bool)

(assert (= bs!1145634 (and d!1519928 b!4753390)))

(assert (=> bs!1145634 (= (= lt!1919095 acc!1214) (= lambda!222636 lambda!222633))))

(assert (=> bs!1145618 (= (= lt!1919095 lt!1918969) (= lambda!222636 lambda!222615))))

(assert (=> d!1519928 true))

(declare-fun b!4753388 () Bool)

(declare-fun e!2965262 () Bool)

(assert (=> b!4753388 (= e!2965262 (forall!11770 (toList!6128 acc!1214) lambda!222635))))

(declare-fun call!333226 () Bool)

(declare-fun c!811558 () Bool)

(declare-fun bm!333221 () Bool)

(assert (=> bm!333221 (= call!333226 (forall!11770 (ite c!811558 (toList!6128 acc!1214) lt!1918653) (ite c!811558 lambda!222633 lambda!222635)))))

(declare-fun b!4753389 () Bool)

(declare-fun e!2965263 () Bool)

(assert (=> b!4753389 (= e!2965263 (invariantList!1602 (toList!6128 lt!1919095)))))

(assert (=> d!1519928 e!2965263))

(declare-fun res!2016065 () Bool)

(assert (=> d!1519928 (=> (not res!2016065) (not e!2965263))))

(assert (=> d!1519928 (= res!2016065 (forall!11770 lt!1918653 lambda!222636))))

(declare-fun e!2965261 () ListMap!5565)

(assert (=> d!1519928 (= lt!1919095 e!2965261)))

(assert (=> d!1519928 (= c!811558 ((_ is Nil!53100) lt!1918653))))

(assert (=> d!1519928 (noDuplicateKeys!2160 lt!1918653)))

(assert (=> d!1519928 (= (addToMapMapFromBucket!1584 lt!1918653 acc!1214) lt!1919095)))

(assert (=> b!4753390 (= e!2965261 acc!1214)))

(declare-fun lt!1919091 () Unit!136722)

(declare-fun call!333227 () Unit!136722)

(assert (=> b!4753390 (= lt!1919091 call!333227)))

(declare-fun call!333228 () Bool)

(assert (=> b!4753390 call!333228))

(declare-fun lt!1919101 () Unit!136722)

(assert (=> b!4753390 (= lt!1919101 lt!1919091)))

(assert (=> b!4753390 call!333226))

(declare-fun lt!1919094 () Unit!136722)

(declare-fun Unit!136834 () Unit!136722)

(assert (=> b!4753390 (= lt!1919094 Unit!136834)))

(declare-fun b!4753391 () Bool)

(declare-fun res!2016064 () Bool)

(assert (=> b!4753391 (=> (not res!2016064) (not e!2965263))))

(assert (=> b!4753391 (= res!2016064 (forall!11770 (toList!6128 acc!1214) lambda!222636))))

(declare-fun bm!333222 () Bool)

(assert (=> bm!333222 (= call!333227 (lemmaContainsAllItsOwnKeys!885 acc!1214))))

(assert (=> b!4753392 (= e!2965261 lt!1919108)))

(declare-fun lt!1919106 () ListMap!5565)

(assert (=> b!4753392 (= lt!1919106 (+!2394 acc!1214 (h!59497 lt!1918653)))))

(assert (=> b!4753392 (= lt!1919108 (addToMapMapFromBucket!1584 (t!360566 lt!1918653) (+!2394 acc!1214 (h!59497 lt!1918653))))))

(declare-fun lt!1919093 () Unit!136722)

(assert (=> b!4753392 (= lt!1919093 call!333227)))

(assert (=> b!4753392 (forall!11770 (toList!6128 acc!1214) lambda!222634)))

(declare-fun lt!1919099 () Unit!136722)

(assert (=> b!4753392 (= lt!1919099 lt!1919093)))

(assert (=> b!4753392 (forall!11770 (toList!6128 lt!1919106) lambda!222635)))

(declare-fun lt!1919096 () Unit!136722)

(declare-fun Unit!136837 () Unit!136722)

(assert (=> b!4753392 (= lt!1919096 Unit!136837)))

(assert (=> b!4753392 (forall!11770 (t!360566 lt!1918653) lambda!222635)))

(declare-fun lt!1919103 () Unit!136722)

(declare-fun Unit!136839 () Unit!136722)

(assert (=> b!4753392 (= lt!1919103 Unit!136839)))

(declare-fun lt!1919104 () Unit!136722)

(declare-fun Unit!136840 () Unit!136722)

(assert (=> b!4753392 (= lt!1919104 Unit!136840)))

(declare-fun lt!1919102 () Unit!136722)

(assert (=> b!4753392 (= lt!1919102 (forallContained!3796 (toList!6128 lt!1919106) lambda!222635 (h!59497 lt!1918653)))))

(assert (=> b!4753392 (contains!16528 lt!1919106 (_1!30734 (h!59497 lt!1918653)))))

(declare-fun lt!1919098 () Unit!136722)

(declare-fun Unit!136841 () Unit!136722)

(assert (=> b!4753392 (= lt!1919098 Unit!136841)))

(assert (=> b!4753392 (contains!16528 lt!1919108 (_1!30734 (h!59497 lt!1918653)))))

(declare-fun lt!1919089 () Unit!136722)

(declare-fun Unit!136843 () Unit!136722)

(assert (=> b!4753392 (= lt!1919089 Unit!136843)))

(assert (=> b!4753392 call!333226))

(declare-fun lt!1919100 () Unit!136722)

(declare-fun Unit!136845 () Unit!136722)

(assert (=> b!4753392 (= lt!1919100 Unit!136845)))

(assert (=> b!4753392 (forall!11770 (toList!6128 lt!1919106) lambda!222635)))

(declare-fun lt!1919105 () Unit!136722)

(declare-fun Unit!136847 () Unit!136722)

(assert (=> b!4753392 (= lt!1919105 Unit!136847)))

(declare-fun lt!1919090 () Unit!136722)

(declare-fun Unit!136848 () Unit!136722)

(assert (=> b!4753392 (= lt!1919090 Unit!136848)))

(declare-fun lt!1919107 () Unit!136722)

(assert (=> b!4753392 (= lt!1919107 (addForallContainsKeyThenBeforeAdding!884 acc!1214 lt!1919108 (_1!30734 (h!59497 lt!1918653)) (_2!30734 (h!59497 lt!1918653))))))

(assert (=> b!4753392 call!333228))

(declare-fun lt!1919092 () Unit!136722)

(assert (=> b!4753392 (= lt!1919092 lt!1919107)))

(assert (=> b!4753392 (forall!11770 (toList!6128 acc!1214) lambda!222635)))

(declare-fun lt!1919088 () Unit!136722)

(declare-fun Unit!136851 () Unit!136722)

(assert (=> b!4753392 (= lt!1919088 Unit!136851)))

(declare-fun res!2016066 () Bool)

(assert (=> b!4753392 (= res!2016066 (forall!11770 lt!1918653 lambda!222635))))

(assert (=> b!4753392 (=> (not res!2016066) (not e!2965262))))

(assert (=> b!4753392 e!2965262))

(declare-fun lt!1919097 () Unit!136722)

(declare-fun Unit!136852 () Unit!136722)

(assert (=> b!4753392 (= lt!1919097 Unit!136852)))

(declare-fun bm!333223 () Bool)

(assert (=> bm!333223 (= call!333228 (forall!11770 (toList!6128 acc!1214) (ite c!811558 lambda!222633 lambda!222635)))))

(assert (= (and d!1519928 c!811558) b!4753390))

(assert (= (and d!1519928 (not c!811558)) b!4753392))

(assert (= (and b!4753392 res!2016066) b!4753388))

(assert (= (or b!4753390 b!4753392) bm!333222))

(assert (= (or b!4753390 b!4753392) bm!333221))

(assert (= (or b!4753390 b!4753392) bm!333223))

(assert (= (and d!1519928 res!2016065) b!4753391))

(assert (= (and b!4753391 res!2016064) b!4753389))

(declare-fun m!5720435 () Bool)

(assert (=> b!4753391 m!5720435))

(declare-fun m!5720437 () Bool)

(assert (=> b!4753392 m!5720437))

(declare-fun m!5720439 () Bool)

(assert (=> b!4753392 m!5720439))

(declare-fun m!5720441 () Bool)

(assert (=> b!4753392 m!5720441))

(declare-fun m!5720443 () Bool)

(assert (=> b!4753392 m!5720443))

(declare-fun m!5720445 () Bool)

(assert (=> b!4753392 m!5720445))

(declare-fun m!5720447 () Bool)

(assert (=> b!4753392 m!5720447))

(declare-fun m!5720449 () Bool)

(assert (=> b!4753392 m!5720449))

(declare-fun m!5720451 () Bool)

(assert (=> b!4753392 m!5720451))

(declare-fun m!5720453 () Bool)

(assert (=> b!4753392 m!5720453))

(assert (=> b!4753392 m!5720441))

(declare-fun m!5720455 () Bool)

(assert (=> b!4753392 m!5720455))

(declare-fun m!5720457 () Bool)

(assert (=> b!4753392 m!5720457))

(assert (=> b!4753392 m!5720437))

(declare-fun m!5720459 () Bool)

(assert (=> bm!333223 m!5720459))

(declare-fun m!5720461 () Bool)

(assert (=> bm!333221 m!5720461))

(assert (=> b!4753388 m!5720451))

(declare-fun m!5720463 () Bool)

(assert (=> b!4753389 m!5720463))

(assert (=> bm!333222 m!5720249))

(declare-fun m!5720465 () Bool)

(assert (=> d!1519928 m!5720465))

(assert (=> d!1519928 m!5719701))

(assert (=> b!4753242 d!1519928))

(declare-fun bs!1145635 () Bool)

(declare-fun b!4753395 () Bool)

(assert (= bs!1145635 (and b!4753395 b!4753339)))

(declare-fun lambda!222637 () Int)

(assert (=> bs!1145635 (= (= lt!1918644 lt!1918657) (= lambda!222637 lambda!222614))))

(declare-fun bs!1145636 () Bool)

(assert (= bs!1145636 (and b!4753395 d!1519826)))

(assert (=> bs!1145636 (= (= lt!1918644 lt!1918956) (= lambda!222637 lambda!222616))))

(declare-fun bs!1145637 () Bool)

(assert (= bs!1145637 (and b!4753395 b!4753380)))

(assert (=> bs!1145637 (= (= lt!1918644 lt!1919062) (= lambda!222637 lambda!222627))))

(declare-fun bs!1145638 () Bool)

(assert (= bs!1145638 (and b!4753395 b!4753392)))

(assert (=> bs!1145638 (= (= lt!1918644 acc!1214) (= lambda!222637 lambda!222634))))

(declare-fun bs!1145639 () Bool)

(assert (= bs!1145639 (and b!4753395 b!4753337)))

(assert (=> bs!1145639 (= (= lt!1918644 lt!1918657) (= lambda!222637 lambda!222613))))

(assert (=> bs!1145638 (= (= lt!1918644 lt!1919108) (= lambda!222637 lambda!222635))))

(declare-fun bs!1145640 () Bool)

(assert (= bs!1145640 (and b!4753395 b!4753369)))

(assert (=> bs!1145640 (= (= lt!1918644 lt!1918656) (= lambda!222637 lambda!222622))))

(declare-fun bs!1145641 () Bool)

(assert (= bs!1145641 (and b!4753395 b!4753362)))

(assert (=> bs!1145641 (= (= lt!1918644 lt!1919000) (= lambda!222637 lambda!222619))))

(assert (=> bs!1145640 (= (= lt!1918644 lt!1919028) (= lambda!222637 lambda!222623))))

(declare-fun bs!1145642 () Bool)

(assert (= bs!1145642 (and b!4753395 b!4753378)))

(assert (=> bs!1145642 (= lambda!222637 lambda!222625)))

(declare-fun bs!1145643 () Bool)

(assert (= bs!1145643 (and b!4753395 b!4753360)))

(assert (=> bs!1145643 (= (= lt!1918644 acc!1214) (= lambda!222637 lambda!222617))))

(declare-fun bs!1145644 () Bool)

(assert (= bs!1145644 (and b!4753395 d!1519918)))

(assert (=> bs!1145644 (= (= lt!1918644 lt!1919049) (= lambda!222637 lambda!222628))))

(declare-fun bs!1145645 () Bool)

(assert (= bs!1145645 (and b!4753395 b!4753367)))

(assert (=> bs!1145645 (= (= lt!1918644 lt!1918656) (= lambda!222637 lambda!222621))))

(assert (=> bs!1145637 (= lambda!222637 lambda!222626)))

(declare-fun bs!1145646 () Bool)

(assert (= bs!1145646 (and b!4753395 d!1519920)))

(assert (=> bs!1145646 (= (= lt!1918644 lt!1919070) (= lambda!222637 lambda!222632))))

(declare-fun bs!1145647 () Bool)

(assert (= bs!1145647 (and b!4753395 b!4753383)))

(assert (=> bs!1145647 (= (= lt!1918644 lt!1918645) (= lambda!222637 lambda!222629))))

(declare-fun bs!1145648 () Bool)

(assert (= bs!1145648 (and b!4753395 b!4753385)))

(assert (=> bs!1145648 (= (= lt!1918644 lt!1918645) (= lambda!222637 lambda!222630))))

(declare-fun bs!1145649 () Bool)

(assert (= bs!1145649 (and b!4753395 d!1519904)))

(assert (=> bs!1145649 (= (= lt!1918644 lt!1919015) (= lambda!222637 lambda!222624))))

(assert (=> bs!1145641 (= (= lt!1918644 acc!1214) (= lambda!222637 lambda!222618))))

(assert (=> bs!1145648 (= (= lt!1918644 lt!1919083) (= lambda!222637 lambda!222631))))

(declare-fun bs!1145650 () Bool)

(assert (= bs!1145650 (and b!4753395 d!1519896)))

(assert (=> bs!1145650 (= (= lt!1918644 lt!1918987) (= lambda!222637 lambda!222620))))

(declare-fun bs!1145651 () Bool)

(assert (= bs!1145651 (and b!4753395 d!1519928)))

(assert (=> bs!1145651 (= (= lt!1918644 lt!1919095) (= lambda!222637 lambda!222636))))

(declare-fun bs!1145652 () Bool)

(assert (= bs!1145652 (and b!4753395 b!4753390)))

(assert (=> bs!1145652 (= (= lt!1918644 acc!1214) (= lambda!222637 lambda!222633))))

(assert (=> bs!1145635 (= (= lt!1918644 lt!1918969) (= lambda!222637 lambda!222615))))

(assert (=> b!4753395 true))

(declare-fun bs!1145653 () Bool)

(declare-fun b!4753397 () Bool)

(assert (= bs!1145653 (and b!4753397 b!4753339)))

(declare-fun lambda!222638 () Int)

(assert (=> bs!1145653 (= (= lt!1918644 lt!1918657) (= lambda!222638 lambda!222614))))

(declare-fun bs!1145654 () Bool)

(assert (= bs!1145654 (and b!4753397 d!1519826)))

(assert (=> bs!1145654 (= (= lt!1918644 lt!1918956) (= lambda!222638 lambda!222616))))

(declare-fun bs!1145655 () Bool)

(assert (= bs!1145655 (and b!4753397 b!4753380)))

(assert (=> bs!1145655 (= (= lt!1918644 lt!1919062) (= lambda!222638 lambda!222627))))

(declare-fun bs!1145656 () Bool)

(assert (= bs!1145656 (and b!4753397 b!4753392)))

(assert (=> bs!1145656 (= (= lt!1918644 acc!1214) (= lambda!222638 lambda!222634))))

(declare-fun bs!1145657 () Bool)

(assert (= bs!1145657 (and b!4753397 b!4753337)))

(assert (=> bs!1145657 (= (= lt!1918644 lt!1918657) (= lambda!222638 lambda!222613))))

(assert (=> bs!1145656 (= (= lt!1918644 lt!1919108) (= lambda!222638 lambda!222635))))

(declare-fun bs!1145658 () Bool)

(assert (= bs!1145658 (and b!4753397 b!4753369)))

(assert (=> bs!1145658 (= (= lt!1918644 lt!1918656) (= lambda!222638 lambda!222622))))

(declare-fun bs!1145659 () Bool)

(assert (= bs!1145659 (and b!4753397 b!4753362)))

(assert (=> bs!1145659 (= (= lt!1918644 lt!1919000) (= lambda!222638 lambda!222619))))

(assert (=> bs!1145658 (= (= lt!1918644 lt!1919028) (= lambda!222638 lambda!222623))))

(declare-fun bs!1145660 () Bool)

(assert (= bs!1145660 (and b!4753397 b!4753378)))

(assert (=> bs!1145660 (= lambda!222638 lambda!222625)))

(declare-fun bs!1145661 () Bool)

(assert (= bs!1145661 (and b!4753397 b!4753395)))

(assert (=> bs!1145661 (= lambda!222638 lambda!222637)))

(declare-fun bs!1145662 () Bool)

(assert (= bs!1145662 (and b!4753397 b!4753360)))

(assert (=> bs!1145662 (= (= lt!1918644 acc!1214) (= lambda!222638 lambda!222617))))

(declare-fun bs!1145663 () Bool)

(assert (= bs!1145663 (and b!4753397 d!1519918)))

(assert (=> bs!1145663 (= (= lt!1918644 lt!1919049) (= lambda!222638 lambda!222628))))

(declare-fun bs!1145664 () Bool)

(assert (= bs!1145664 (and b!4753397 b!4753367)))

(assert (=> bs!1145664 (= (= lt!1918644 lt!1918656) (= lambda!222638 lambda!222621))))

(assert (=> bs!1145655 (= lambda!222638 lambda!222626)))

(declare-fun bs!1145665 () Bool)

(assert (= bs!1145665 (and b!4753397 d!1519920)))

(assert (=> bs!1145665 (= (= lt!1918644 lt!1919070) (= lambda!222638 lambda!222632))))

(declare-fun bs!1145666 () Bool)

(assert (= bs!1145666 (and b!4753397 b!4753383)))

(assert (=> bs!1145666 (= (= lt!1918644 lt!1918645) (= lambda!222638 lambda!222629))))

(declare-fun bs!1145667 () Bool)

(assert (= bs!1145667 (and b!4753397 b!4753385)))

(assert (=> bs!1145667 (= (= lt!1918644 lt!1918645) (= lambda!222638 lambda!222630))))

(declare-fun bs!1145668 () Bool)

(assert (= bs!1145668 (and b!4753397 d!1519904)))

(assert (=> bs!1145668 (= (= lt!1918644 lt!1919015) (= lambda!222638 lambda!222624))))

(assert (=> bs!1145659 (= (= lt!1918644 acc!1214) (= lambda!222638 lambda!222618))))

(assert (=> bs!1145667 (= (= lt!1918644 lt!1919083) (= lambda!222638 lambda!222631))))

(declare-fun bs!1145669 () Bool)

(assert (= bs!1145669 (and b!4753397 d!1519896)))

(assert (=> bs!1145669 (= (= lt!1918644 lt!1918987) (= lambda!222638 lambda!222620))))

(declare-fun bs!1145670 () Bool)

(assert (= bs!1145670 (and b!4753397 d!1519928)))

(assert (=> bs!1145670 (= (= lt!1918644 lt!1919095) (= lambda!222638 lambda!222636))))

(declare-fun bs!1145671 () Bool)

(assert (= bs!1145671 (and b!4753397 b!4753390)))

(assert (=> bs!1145671 (= (= lt!1918644 acc!1214) (= lambda!222638 lambda!222633))))

(assert (=> bs!1145653 (= (= lt!1918644 lt!1918969) (= lambda!222638 lambda!222615))))

(assert (=> b!4753397 true))

(declare-fun lambda!222639 () Int)

(declare-fun lt!1919129 () ListMap!5565)

(assert (=> bs!1145653 (= (= lt!1919129 lt!1918657) (= lambda!222639 lambda!222614))))

(assert (=> bs!1145654 (= (= lt!1919129 lt!1918956) (= lambda!222639 lambda!222616))))

(assert (=> bs!1145655 (= (= lt!1919129 lt!1919062) (= lambda!222639 lambda!222627))))

(assert (=> bs!1145656 (= (= lt!1919129 acc!1214) (= lambda!222639 lambda!222634))))

(assert (=> bs!1145657 (= (= lt!1919129 lt!1918657) (= lambda!222639 lambda!222613))))

(assert (=> bs!1145656 (= (= lt!1919129 lt!1919108) (= lambda!222639 lambda!222635))))

(assert (=> bs!1145658 (= (= lt!1919129 lt!1918656) (= lambda!222639 lambda!222622))))

(assert (=> bs!1145659 (= (= lt!1919129 lt!1919000) (= lambda!222639 lambda!222619))))

(assert (=> bs!1145658 (= (= lt!1919129 lt!1919028) (= lambda!222639 lambda!222623))))

(assert (=> bs!1145660 (= (= lt!1919129 lt!1918644) (= lambda!222639 lambda!222625))))

(assert (=> bs!1145661 (= (= lt!1919129 lt!1918644) (= lambda!222639 lambda!222637))))

(assert (=> bs!1145662 (= (= lt!1919129 acc!1214) (= lambda!222639 lambda!222617))))

(assert (=> bs!1145663 (= (= lt!1919129 lt!1919049) (= lambda!222639 lambda!222628))))

(assert (=> bs!1145664 (= (= lt!1919129 lt!1918656) (= lambda!222639 lambda!222621))))

(assert (=> bs!1145655 (= (= lt!1919129 lt!1918644) (= lambda!222639 lambda!222626))))

(assert (=> bs!1145665 (= (= lt!1919129 lt!1919070) (= lambda!222639 lambda!222632))))

(assert (=> bs!1145666 (= (= lt!1919129 lt!1918645) (= lambda!222639 lambda!222629))))

(assert (=> bs!1145667 (= (= lt!1919129 lt!1918645) (= lambda!222639 lambda!222630))))

(assert (=> b!4753397 (= (= lt!1919129 lt!1918644) (= lambda!222639 lambda!222638))))

(assert (=> bs!1145668 (= (= lt!1919129 lt!1919015) (= lambda!222639 lambda!222624))))

(assert (=> bs!1145659 (= (= lt!1919129 acc!1214) (= lambda!222639 lambda!222618))))

(assert (=> bs!1145667 (= (= lt!1919129 lt!1919083) (= lambda!222639 lambda!222631))))

(assert (=> bs!1145669 (= (= lt!1919129 lt!1918987) (= lambda!222639 lambda!222620))))

(assert (=> bs!1145670 (= (= lt!1919129 lt!1919095) (= lambda!222639 lambda!222636))))

(assert (=> bs!1145671 (= (= lt!1919129 acc!1214) (= lambda!222639 lambda!222633))))

(assert (=> bs!1145653 (= (= lt!1919129 lt!1918969) (= lambda!222639 lambda!222615))))

(assert (=> b!4753397 true))

(declare-fun bs!1145672 () Bool)

(declare-fun d!1519930 () Bool)

(assert (= bs!1145672 (and d!1519930 b!4753339)))

(declare-fun lt!1919116 () ListMap!5565)

(declare-fun lambda!222640 () Int)

(assert (=> bs!1145672 (= (= lt!1919116 lt!1918657) (= lambda!222640 lambda!222614))))

(declare-fun bs!1145673 () Bool)

(assert (= bs!1145673 (and d!1519930 d!1519826)))

(assert (=> bs!1145673 (= (= lt!1919116 lt!1918956) (= lambda!222640 lambda!222616))))

(declare-fun bs!1145674 () Bool)

(assert (= bs!1145674 (and d!1519930 b!4753380)))

(assert (=> bs!1145674 (= (= lt!1919116 lt!1919062) (= lambda!222640 lambda!222627))))

(declare-fun bs!1145675 () Bool)

(assert (= bs!1145675 (and d!1519930 b!4753392)))

(assert (=> bs!1145675 (= (= lt!1919116 acc!1214) (= lambda!222640 lambda!222634))))

(declare-fun bs!1145676 () Bool)

(assert (= bs!1145676 (and d!1519930 b!4753397)))

(assert (=> bs!1145676 (= (= lt!1919116 lt!1919129) (= lambda!222640 lambda!222639))))

(declare-fun bs!1145677 () Bool)

(assert (= bs!1145677 (and d!1519930 b!4753337)))

(assert (=> bs!1145677 (= (= lt!1919116 lt!1918657) (= lambda!222640 lambda!222613))))

(assert (=> bs!1145675 (= (= lt!1919116 lt!1919108) (= lambda!222640 lambda!222635))))

(declare-fun bs!1145678 () Bool)

(assert (= bs!1145678 (and d!1519930 b!4753369)))

(assert (=> bs!1145678 (= (= lt!1919116 lt!1918656) (= lambda!222640 lambda!222622))))

(declare-fun bs!1145679 () Bool)

(assert (= bs!1145679 (and d!1519930 b!4753362)))

(assert (=> bs!1145679 (= (= lt!1919116 lt!1919000) (= lambda!222640 lambda!222619))))

(assert (=> bs!1145678 (= (= lt!1919116 lt!1919028) (= lambda!222640 lambda!222623))))

(declare-fun bs!1145680 () Bool)

(assert (= bs!1145680 (and d!1519930 b!4753378)))

(assert (=> bs!1145680 (= (= lt!1919116 lt!1918644) (= lambda!222640 lambda!222625))))

(declare-fun bs!1145681 () Bool)

(assert (= bs!1145681 (and d!1519930 b!4753395)))

(assert (=> bs!1145681 (= (= lt!1919116 lt!1918644) (= lambda!222640 lambda!222637))))

(declare-fun bs!1145682 () Bool)

(assert (= bs!1145682 (and d!1519930 b!4753360)))

(assert (=> bs!1145682 (= (= lt!1919116 acc!1214) (= lambda!222640 lambda!222617))))

(declare-fun bs!1145683 () Bool)

(assert (= bs!1145683 (and d!1519930 d!1519918)))

(assert (=> bs!1145683 (= (= lt!1919116 lt!1919049) (= lambda!222640 lambda!222628))))

(declare-fun bs!1145684 () Bool)

(assert (= bs!1145684 (and d!1519930 b!4753367)))

(assert (=> bs!1145684 (= (= lt!1919116 lt!1918656) (= lambda!222640 lambda!222621))))

(assert (=> bs!1145674 (= (= lt!1919116 lt!1918644) (= lambda!222640 lambda!222626))))

(declare-fun bs!1145685 () Bool)

(assert (= bs!1145685 (and d!1519930 d!1519920)))

(assert (=> bs!1145685 (= (= lt!1919116 lt!1919070) (= lambda!222640 lambda!222632))))

(declare-fun bs!1145686 () Bool)

(assert (= bs!1145686 (and d!1519930 b!4753383)))

(assert (=> bs!1145686 (= (= lt!1919116 lt!1918645) (= lambda!222640 lambda!222629))))

(declare-fun bs!1145687 () Bool)

(assert (= bs!1145687 (and d!1519930 b!4753385)))

(assert (=> bs!1145687 (= (= lt!1919116 lt!1918645) (= lambda!222640 lambda!222630))))

(assert (=> bs!1145676 (= (= lt!1919116 lt!1918644) (= lambda!222640 lambda!222638))))

(declare-fun bs!1145688 () Bool)

(assert (= bs!1145688 (and d!1519930 d!1519904)))

(assert (=> bs!1145688 (= (= lt!1919116 lt!1919015) (= lambda!222640 lambda!222624))))

(assert (=> bs!1145679 (= (= lt!1919116 acc!1214) (= lambda!222640 lambda!222618))))

(assert (=> bs!1145687 (= (= lt!1919116 lt!1919083) (= lambda!222640 lambda!222631))))

(declare-fun bs!1145689 () Bool)

(assert (= bs!1145689 (and d!1519930 d!1519896)))

(assert (=> bs!1145689 (= (= lt!1919116 lt!1918987) (= lambda!222640 lambda!222620))))

(declare-fun bs!1145690 () Bool)

(assert (= bs!1145690 (and d!1519930 d!1519928)))

(assert (=> bs!1145690 (= (= lt!1919116 lt!1919095) (= lambda!222640 lambda!222636))))

(declare-fun bs!1145691 () Bool)

(assert (= bs!1145691 (and d!1519930 b!4753390)))

(assert (=> bs!1145691 (= (= lt!1919116 acc!1214) (= lambda!222640 lambda!222633))))

(assert (=> bs!1145672 (= (= lt!1919116 lt!1918969) (= lambda!222640 lambda!222615))))

(assert (=> d!1519930 true))

(declare-fun b!4753393 () Bool)

(declare-fun e!2965265 () Bool)

(assert (=> b!4753393 (= e!2965265 (forall!11770 (toList!6128 lt!1918644) lambda!222639))))

(declare-fun bm!333224 () Bool)

(declare-fun c!811559 () Bool)

(declare-fun call!333229 () Bool)

(assert (=> bm!333224 (= call!333229 (forall!11770 (ite c!811559 (toList!6128 lt!1918644) (t!360566 l!14304)) (ite c!811559 lambda!222637 lambda!222639)))))

(declare-fun b!4753394 () Bool)

(declare-fun e!2965266 () Bool)

(assert (=> b!4753394 (= e!2965266 (invariantList!1602 (toList!6128 lt!1919116)))))

(assert (=> d!1519930 e!2965266))

(declare-fun res!2016068 () Bool)

(assert (=> d!1519930 (=> (not res!2016068) (not e!2965266))))

(assert (=> d!1519930 (= res!2016068 (forall!11770 (t!360566 l!14304) lambda!222640))))

(declare-fun e!2965264 () ListMap!5565)

(assert (=> d!1519930 (= lt!1919116 e!2965264)))

(assert (=> d!1519930 (= c!811559 ((_ is Nil!53100) (t!360566 l!14304)))))

(assert (=> d!1519930 (noDuplicateKeys!2160 (t!360566 l!14304))))

(assert (=> d!1519930 (= (addToMapMapFromBucket!1584 (t!360566 l!14304) lt!1918644) lt!1919116)))

(assert (=> b!4753395 (= e!2965264 lt!1918644)))

(declare-fun lt!1919112 () Unit!136722)

(declare-fun call!333230 () Unit!136722)

(assert (=> b!4753395 (= lt!1919112 call!333230)))

(declare-fun call!333231 () Bool)

(assert (=> b!4753395 call!333231))

(declare-fun lt!1919122 () Unit!136722)

(assert (=> b!4753395 (= lt!1919122 lt!1919112)))

(assert (=> b!4753395 call!333229))

(declare-fun lt!1919115 () Unit!136722)

(declare-fun Unit!136856 () Unit!136722)

(assert (=> b!4753395 (= lt!1919115 Unit!136856)))

(declare-fun b!4753396 () Bool)

(declare-fun res!2016067 () Bool)

(assert (=> b!4753396 (=> (not res!2016067) (not e!2965266))))

(assert (=> b!4753396 (= res!2016067 (forall!11770 (toList!6128 lt!1918644) lambda!222640))))

(declare-fun bm!333225 () Bool)

(assert (=> bm!333225 (= call!333230 (lemmaContainsAllItsOwnKeys!885 lt!1918644))))

(assert (=> b!4753397 (= e!2965264 lt!1919129)))

(declare-fun lt!1919127 () ListMap!5565)

(assert (=> b!4753397 (= lt!1919127 (+!2394 lt!1918644 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753397 (= lt!1919129 (addToMapMapFromBucket!1584 (t!360566 (t!360566 l!14304)) (+!2394 lt!1918644 (h!59497 (t!360566 l!14304)))))))

(declare-fun lt!1919114 () Unit!136722)

(assert (=> b!4753397 (= lt!1919114 call!333230)))

(assert (=> b!4753397 (forall!11770 (toList!6128 lt!1918644) lambda!222638)))

(declare-fun lt!1919120 () Unit!136722)

(assert (=> b!4753397 (= lt!1919120 lt!1919114)))

(assert (=> b!4753397 (forall!11770 (toList!6128 lt!1919127) lambda!222639)))

(declare-fun lt!1919117 () Unit!136722)

(declare-fun Unit!136857 () Unit!136722)

(assert (=> b!4753397 (= lt!1919117 Unit!136857)))

(assert (=> b!4753397 (forall!11770 (t!360566 (t!360566 l!14304)) lambda!222639)))

(declare-fun lt!1919124 () Unit!136722)

(declare-fun Unit!136858 () Unit!136722)

(assert (=> b!4753397 (= lt!1919124 Unit!136858)))

(declare-fun lt!1919125 () Unit!136722)

(declare-fun Unit!136859 () Unit!136722)

(assert (=> b!4753397 (= lt!1919125 Unit!136859)))

(declare-fun lt!1919123 () Unit!136722)

(assert (=> b!4753397 (= lt!1919123 (forallContained!3796 (toList!6128 lt!1919127) lambda!222639 (h!59497 (t!360566 l!14304))))))

(assert (=> b!4753397 (contains!16528 lt!1919127 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1919119 () Unit!136722)

(declare-fun Unit!136860 () Unit!136722)

(assert (=> b!4753397 (= lt!1919119 Unit!136860)))

(assert (=> b!4753397 (contains!16528 lt!1919129 (_1!30734 (h!59497 (t!360566 l!14304))))))

(declare-fun lt!1919110 () Unit!136722)

(declare-fun Unit!136861 () Unit!136722)

(assert (=> b!4753397 (= lt!1919110 Unit!136861)))

(assert (=> b!4753397 call!333229))

(declare-fun lt!1919121 () Unit!136722)

(declare-fun Unit!136862 () Unit!136722)

(assert (=> b!4753397 (= lt!1919121 Unit!136862)))

(assert (=> b!4753397 (forall!11770 (toList!6128 lt!1919127) lambda!222639)))

(declare-fun lt!1919126 () Unit!136722)

(declare-fun Unit!136863 () Unit!136722)

(assert (=> b!4753397 (= lt!1919126 Unit!136863)))

(declare-fun lt!1919111 () Unit!136722)

(declare-fun Unit!136864 () Unit!136722)

(assert (=> b!4753397 (= lt!1919111 Unit!136864)))

(declare-fun lt!1919128 () Unit!136722)

(assert (=> b!4753397 (= lt!1919128 (addForallContainsKeyThenBeforeAdding!884 lt!1918644 lt!1919129 (_1!30734 (h!59497 (t!360566 l!14304))) (_2!30734 (h!59497 (t!360566 l!14304)))))))

(assert (=> b!4753397 call!333231))

(declare-fun lt!1919113 () Unit!136722)

(assert (=> b!4753397 (= lt!1919113 lt!1919128)))

(assert (=> b!4753397 (forall!11770 (toList!6128 lt!1918644) lambda!222639)))

(declare-fun lt!1919109 () Unit!136722)

(declare-fun Unit!136865 () Unit!136722)

(assert (=> b!4753397 (= lt!1919109 Unit!136865)))

(declare-fun res!2016069 () Bool)

(assert (=> b!4753397 (= res!2016069 (forall!11770 (t!360566 l!14304) lambda!222639))))

(assert (=> b!4753397 (=> (not res!2016069) (not e!2965265))))

(assert (=> b!4753397 e!2965265))

(declare-fun lt!1919118 () Unit!136722)

(declare-fun Unit!136866 () Unit!136722)

(assert (=> b!4753397 (= lt!1919118 Unit!136866)))

(declare-fun bm!333226 () Bool)

(assert (=> bm!333226 (= call!333231 (forall!11770 (toList!6128 lt!1918644) (ite c!811559 lambda!222637 lambda!222639)))))

(assert (= (and d!1519930 c!811559) b!4753395))

(assert (= (and d!1519930 (not c!811559)) b!4753397))

(assert (= (and b!4753397 res!2016069) b!4753393))

(assert (= (or b!4753395 b!4753397) bm!333225))

(assert (= (or b!4753395 b!4753397) bm!333224))

(assert (= (or b!4753395 b!4753397) bm!333226))

(assert (= (and d!1519930 res!2016068) b!4753396))

(assert (= (and b!4753396 res!2016067) b!4753394))

(declare-fun m!5720467 () Bool)

(assert (=> b!4753396 m!5720467))

(declare-fun m!5720469 () Bool)

(assert (=> b!4753397 m!5720469))

(declare-fun m!5720471 () Bool)

(assert (=> b!4753397 m!5720471))

(declare-fun m!5720473 () Bool)

(assert (=> b!4753397 m!5720473))

(declare-fun m!5720475 () Bool)

(assert (=> b!4753397 m!5720475))

(declare-fun m!5720477 () Bool)

(assert (=> b!4753397 m!5720477))

(declare-fun m!5720479 () Bool)

(assert (=> b!4753397 m!5720479))

(declare-fun m!5720481 () Bool)

(assert (=> b!4753397 m!5720481))

(declare-fun m!5720483 () Bool)

(assert (=> b!4753397 m!5720483))

(declare-fun m!5720485 () Bool)

(assert (=> b!4753397 m!5720485))

(assert (=> b!4753397 m!5720473))

(declare-fun m!5720487 () Bool)

(assert (=> b!4753397 m!5720487))

(declare-fun m!5720489 () Bool)

(assert (=> b!4753397 m!5720489))

(assert (=> b!4753397 m!5720469))

(declare-fun m!5720491 () Bool)

(assert (=> bm!333226 m!5720491))

(declare-fun m!5720493 () Bool)

(assert (=> bm!333224 m!5720493))

(assert (=> b!4753393 m!5720483))

(declare-fun m!5720495 () Bool)

(assert (=> b!4753394 m!5720495))

(assert (=> bm!333225 m!5720383))

(declare-fun m!5720497 () Bool)

(assert (=> d!1519930 m!5720497))

(assert (=> d!1519930 m!5719763))

(assert (=> b!4753242 d!1519930))

(declare-fun d!1519932 () Bool)

(declare-fun res!2016070 () Bool)

(declare-fun e!2965267 () Bool)

(assert (=> d!1519932 (=> res!2016070 e!2965267)))

(assert (=> d!1519932 (= res!2016070 (not ((_ is Cons!53100) lt!1918653)))))

(assert (=> d!1519932 (= (noDuplicateKeys!2160 lt!1918653) e!2965267)))

(declare-fun b!4753398 () Bool)

(declare-fun e!2965268 () Bool)

(assert (=> b!4753398 (= e!2965267 e!2965268)))

(declare-fun res!2016071 () Bool)

(assert (=> b!4753398 (=> (not res!2016071) (not e!2965268))))

(assert (=> b!4753398 (= res!2016071 (not (containsKey!3566 (t!360566 lt!1918653) (_1!30734 (h!59497 lt!1918653)))))))

(declare-fun b!4753399 () Bool)

(assert (=> b!4753399 (= e!2965268 (noDuplicateKeys!2160 (t!360566 lt!1918653)))))

(assert (= (and d!1519932 (not res!2016070)) b!4753398))

(assert (= (and b!4753398 res!2016071) b!4753399))

(declare-fun m!5720499 () Bool)

(assert (=> b!4753398 m!5720499))

(declare-fun m!5720501 () Bool)

(assert (=> b!4753399 m!5720501))

(assert (=> b!4753246 d!1519932))

(declare-fun e!2965271 () Bool)

(declare-fun tp!1350300 () Bool)

(declare-fun b!4753404 () Bool)

(assert (=> b!4753404 (= e!2965271 (and tp_is_empty!31933 tp_is_empty!31935 tp!1350300))))

(assert (=> b!4753247 (= tp!1350293 e!2965271)))

(assert (= (and b!4753247 ((_ is Cons!53100) (toList!6128 acc!1214))) b!4753404))

(declare-fun b!4753405 () Bool)

(declare-fun tp!1350301 () Bool)

(declare-fun e!2965272 () Bool)

(assert (=> b!4753405 (= e!2965272 (and tp_is_empty!31933 tp_is_empty!31935 tp!1350301))))

(assert (=> b!4753241 (= tp!1350292 e!2965272)))

(assert (= (and b!4753241 ((_ is Cons!53100) (t!360566 l!14304))) b!4753405))

(check-sat (not bm!333212) (not bm!333210) (not b!4753399) (not bm!333221) (not d!1519914) (not d!1519906) (not b!4753394) (not d!1519890) (not b!4753393) (not d!1519882) (not bm!333220) (not bm!333225) (not d!1519910) (not b!4753391) (not b!4753365) (not b!4753382) (not d!1519920) (not d!1519918) (not d!1519912) (not b!4753336) (not b!4753374) (not bm!333209) (not b!4753268) (not b!4753369) (not d!1519896) (not d!1519926) (not d!1519924) (not d!1519826) (not b!4753397) (not b!4753363) (not bm!333223) (not b!4753257) (not b!4753392) (not b!4753356) (not d!1519886) (not b!4753389) (not b!4753396) (not b!4753335) (not b!4753377) (not b!4753368) (not b!4753269) (not d!1519902) (not b!4753373) (not b!4753405) (not b!4753398) (not b!4753385) (not b!4753379) (not b!4753364) (not d!1519930) (not b!4753338) (not bm!333224) (not bm!333226) (not b!4753339) (not bm!333217) (not bm!333206) (not d!1519814) (not b!4753381) (not bm!333207) (not bm!333213) (not bm!333215) (not b!4753375) (not d!1519894) (not d!1519904) (not b!4753386) (not d!1519820) tp_is_empty!31933 (not b!4753404) (not b!4753384) (not bm!333216) (not bm!333219) (not d!1519824) (not d!1519892) (not b!4753362) (not b!4753387) (not d!1519810) (not b!4753366) (not b!4753359) (not b!4753358) tp_is_empty!31935 (not bm!333222) (not bm!333208) (not b!4753376) (not d!1519898) (not d!1519916) (not b!4753371) (not bm!333214) (not d!1519908) (not d!1519900) (not b!4753357) (not d!1519884) (not b!4753256) (not d!1519922) (not d!1519928) (not b!4753361) (not b!4753372) (not b!4753380) (not d!1519888) (not b!4753370) (not b!4753388) (not bm!333218) (not bm!333211))
(check-sat)
