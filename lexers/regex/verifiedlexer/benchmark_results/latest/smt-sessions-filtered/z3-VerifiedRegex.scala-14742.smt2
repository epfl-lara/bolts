; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758740 () Bool)

(assert start!758740)

(declare-fun b!8054890 () Bool)

(declare-fun e!4746545 () Bool)

(declare-fun tp!2413848 () Bool)

(assert (=> b!8054890 (= e!4746545 tp!2413848)))

(declare-fun b!8054891 () Bool)

(declare-fun res!3185743 () Bool)

(declare-fun e!4746553 () Bool)

(assert (=> b!8054891 (=> res!3185743 e!4746553)))

(declare-datatypes ((K!22843 0))(
  ( (K!22844 (val!32947 Int)) )
))
(declare-datatypes ((V!23097 0))(
  ( (V!23098 (val!32948 Int)) )
))
(declare-datatypes ((tuple2!70912 0))(
  ( (tuple2!70913 (_1!38759 K!22843) (_2!38759 V!23097)) )
))
(declare-datatypes ((List!75692 0))(
  ( (Nil!75566) (Cons!75566 (h!82014 tuple2!70912) (t!391464 List!75692)) )
))
(declare-datatypes ((ListMap!7315 0))(
  ( (ListMap!7316 (toList!11932 List!75692)) )
))
(declare-fun lt!2728739 () ListMap!7315)

(declare-fun key!6222 () K!22843)

(declare-fun contains!21241 (ListMap!7315 K!22843) Bool)

(assert (=> b!8054891 (= res!3185743 (not (contains!21241 lt!2728739 key!6222)))))

(declare-fun b!8054892 () Bool)

(declare-fun res!3185746 () Bool)

(declare-fun e!4746542 () Bool)

(assert (=> b!8054892 (=> (not res!3185746) (not e!4746542))))

(declare-fun l!14636 () List!75692)

(get-info :version)

(assert (=> b!8054892 (= res!3185746 (not ((_ is Nil!75566) l!14636)))))

(declare-fun b!8054894 () Bool)

(declare-fun e!4746550 () Bool)

(assert (=> b!8054894 (= e!4746550 e!4746542)))

(declare-fun res!3185749 () Bool)

(assert (=> b!8054894 (=> (not res!3185749) (not e!4746542))))

(declare-fun e!4746544 () Bool)

(assert (=> b!8054894 (= res!3185749 e!4746544)))

(declare-fun res!3185754 () Bool)

(assert (=> b!8054894 (=> res!3185754 e!4746544)))

(declare-fun e!4746547 () Bool)

(assert (=> b!8054894 (= res!3185754 e!4746547)))

(declare-fun res!3185740 () Bool)

(assert (=> b!8054894 (=> (not res!3185740) (not e!4746547))))

(declare-fun lt!2728732 () Bool)

(assert (=> b!8054894 (= res!3185740 (not lt!2728732))))

(declare-fun lt!2728737 () Bool)

(assert (=> b!8054894 (= lt!2728732 (not lt!2728737))))

(declare-fun acc!1298 () ListMap!7315)

(assert (=> b!8054894 (= lt!2728737 (contains!21241 acc!1298 key!6222))))

(declare-fun b!8054895 () Bool)

(declare-fun e!4746548 () Bool)

(assert (=> b!8054895 (= e!4746548 true)))

(declare-fun lt!2728734 () Bool)

(declare-fun lt!2728742 () tuple2!70912)

(declare-fun contains!21242 (List!75692 tuple2!70912) Bool)

(assert (=> b!8054895 (= lt!2728734 (contains!21242 (t!391464 l!14636) lt!2728742))))

(declare-fun b!8054896 () Bool)

(declare-fun e!4746543 () Bool)

(assert (=> b!8054896 (= e!4746542 e!4746543)))

(declare-fun res!3185748 () Bool)

(assert (=> b!8054896 (=> (not res!3185748) (not e!4746543))))

(assert (=> b!8054896 (= res!3185748 (and (not (= (_1!38759 (h!82014 l!14636)) key!6222)) (not lt!2728732)))))

(declare-fun lt!2728736 () ListMap!7315)

(declare-fun addToMapMapFromBucket!1999 (List!75692 ListMap!7315) ListMap!7315)

(assert (=> b!8054896 (= lt!2728739 (addToMapMapFromBucket!1999 (t!391464 l!14636) lt!2728736))))

(declare-fun +!2683 (ListMap!7315 tuple2!70912) ListMap!7315)

(assert (=> b!8054896 (= lt!2728736 (+!2683 acc!1298 (h!82014 l!14636)))))

(declare-fun b!8054897 () Bool)

(declare-fun containsKey!4873 (List!75692 K!22843) Bool)

(assert (=> b!8054897 (= e!4746547 (not (containsKey!4873 l!14636 key!6222)))))

(declare-fun tp_is_empty!54949 () Bool)

(declare-fun tp_is_empty!54947 () Bool)

(declare-fun e!4746549 () Bool)

(declare-fun b!8054898 () Bool)

(declare-fun tp!2413849 () Bool)

(assert (=> b!8054898 (= e!4746549 (and tp_is_empty!54947 tp_is_empty!54949 tp!2413849))))

(declare-fun b!8054899 () Bool)

(declare-fun e!4746552 () Bool)

(assert (=> b!8054899 (= e!4746552 (not lt!2728737))))

(declare-fun b!8054900 () Bool)

(declare-fun res!3185747 () Bool)

(assert (=> b!8054900 (=> (not res!3185747) (not e!4746552))))

(declare-fun value!3131 () V!23097)

(assert (=> b!8054900 (= res!3185747 (contains!21242 l!14636 (tuple2!70913 key!6222 value!3131)))))

(declare-fun lt!2728731 () ListMap!7315)

(declare-fun b!8054901 () Bool)

(declare-fun apply!14445 (ListMap!7315 K!22843) V!23097)

(assert (=> b!8054901 (= e!4746553 (= (apply!14445 lt!2728731 key!6222) value!3131))))

(assert (=> b!8054901 (= (apply!14445 lt!2728739 key!6222) value!3131)))

(declare-datatypes ((Unit!172179 0))(
  ( (Unit!172180) )
))
(declare-fun lt!2728740 () Unit!172179)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!22 (List!75692 ListMap!7315 K!22843 V!23097) Unit!172179)

(assert (=> b!8054901 (= lt!2728740 (lemmaAddToMapFromBucketMaintainsMapping!22 (t!391464 l!14636) lt!2728736 key!6222 value!3131))))

(declare-fun b!8054902 () Bool)

(assert (=> b!8054902 (= e!4746543 (not e!4746553))))

(declare-fun res!3185742 () Bool)

(assert (=> b!8054902 (=> res!3185742 e!4746553)))

(declare-fun noDuplicateKeys!2718 (List!75692) Bool)

(assert (=> b!8054902 (= res!3185742 (not (noDuplicateKeys!2718 (t!391464 l!14636))))))

(assert (=> b!8054902 (not (contains!21242 l!14636 lt!2728742))))

(assert (=> b!8054902 (= lt!2728742 (tuple2!70913 key!6222 value!3131))))

(declare-fun lt!2728738 () Unit!172179)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!34 (List!75692 K!22843 V!23097) Unit!172179)

(assert (=> b!8054902 (= lt!2728738 (lemmaNotContainsKeyThenCannotContainPair!34 l!14636 key!6222 value!3131))))

(declare-fun lt!2728735 () V!23097)

(assert (=> b!8054902 (= lt!2728735 (apply!14445 acc!1298 key!6222))))

(assert (=> b!8054902 (= lt!2728735 (apply!14445 lt!2728736 key!6222))))

(declare-fun lt!2728741 () Unit!172179)

(declare-fun addApplyDifferent!25 (ListMap!7315 K!22843 V!23097 K!22843) Unit!172179)

(assert (=> b!8054902 (= lt!2728741 (addApplyDifferent!25 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222))))

(assert (=> b!8054902 (contains!21241 lt!2728736 key!6222)))

(declare-fun lt!2728733 () Unit!172179)

(declare-fun addStillContains!51 (ListMap!7315 K!22843 V!23097 K!22843) Unit!172179)

(assert (=> b!8054902 (= lt!2728733 (addStillContains!51 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222))))

(declare-fun b!8054903 () Bool)

(assert (=> b!8054903 (= e!4746544 e!4746552)))

(declare-fun res!3185745 () Bool)

(assert (=> b!8054903 (=> (not res!3185745) (not e!4746552))))

(assert (=> b!8054903 (= res!3185745 (containsKey!4873 l!14636 key!6222))))

(declare-fun b!8054904 () Bool)

(declare-fun e!4746546 () Bool)

(assert (=> b!8054904 (= e!4746546 (containsKey!4873 (t!391464 l!14636) key!6222))))

(declare-fun b!8054905 () Bool)

(declare-fun res!3185751 () Bool)

(assert (=> b!8054905 (=> res!3185751 e!4746553)))

(declare-fun e!4746554 () Bool)

(assert (=> b!8054905 (= res!3185751 e!4746554)))

(declare-fun res!3185752 () Bool)

(assert (=> b!8054905 (=> (not res!3185752) (not e!4746554))))

(assert (=> b!8054905 (= res!3185752 e!4746546)))

(declare-fun res!3185753 () Bool)

(assert (=> b!8054905 (=> res!3185753 e!4746546)))

(assert (=> b!8054905 (= res!3185753 (not (= lt!2728735 value!3131)))))

(declare-fun res!3185744 () Bool)

(declare-fun e!4746551 () Bool)

(assert (=> start!758740 (=> (not res!3185744) (not e!4746551))))

(assert (=> start!758740 (= res!3185744 (noDuplicateKeys!2718 l!14636))))

(assert (=> start!758740 e!4746551))

(assert (=> start!758740 e!4746549))

(assert (=> start!758740 tp_is_empty!54947))

(assert (=> start!758740 tp_is_empty!54949))

(declare-fun inv!97332 (ListMap!7315) Bool)

(assert (=> start!758740 (and (inv!97332 acc!1298) e!4746545)))

(declare-fun b!8054893 () Bool)

(assert (=> b!8054893 (= e!4746554 e!4746548)))

(declare-fun res!3185741 () Bool)

(assert (=> b!8054893 (=> res!3185741 e!4746548)))

(assert (=> b!8054893 (= res!3185741 (not (containsKey!4873 (t!391464 l!14636) key!6222)))))

(declare-fun b!8054906 () Bool)

(assert (=> b!8054906 (= e!4746551 e!4746550)))

(declare-fun res!3185755 () Bool)

(assert (=> b!8054906 (=> (not res!3185755) (not e!4746550))))

(assert (=> b!8054906 (= res!3185755 (contains!21241 lt!2728731 key!6222))))

(assert (=> b!8054906 (= lt!2728731 (addToMapMapFromBucket!1999 l!14636 acc!1298))))

(declare-fun b!8054907 () Bool)

(declare-fun res!3185750 () Bool)

(assert (=> b!8054907 (=> (not res!3185750) (not e!4746547))))

(assert (=> b!8054907 (= res!3185750 (= (apply!14445 acc!1298 key!6222) value!3131))))

(assert (= (and start!758740 res!3185744) b!8054906))

(assert (= (and b!8054906 res!3185755) b!8054894))

(assert (= (and b!8054894 res!3185740) b!8054907))

(assert (= (and b!8054907 res!3185750) b!8054897))

(assert (= (and b!8054894 (not res!3185754)) b!8054903))

(assert (= (and b!8054903 res!3185745) b!8054900))

(assert (= (and b!8054900 res!3185747) b!8054899))

(assert (= (and b!8054894 res!3185749) b!8054892))

(assert (= (and b!8054892 res!3185746) b!8054896))

(assert (= (and b!8054896 res!3185748) b!8054902))

(assert (= (and b!8054902 (not res!3185742)) b!8054891))

(assert (= (and b!8054891 (not res!3185743)) b!8054905))

(assert (= (and b!8054905 (not res!3185753)) b!8054904))

(assert (= (and b!8054905 res!3185752) b!8054893))

(assert (= (and b!8054893 (not res!3185741)) b!8054895))

(assert (= (and b!8054905 (not res!3185751)) b!8054901))

(assert (= (and start!758740 ((_ is Cons!75566) l!14636)) b!8054898))

(assert (= start!758740 b!8054890))

(declare-fun m!8407476 () Bool)

(assert (=> b!8054906 m!8407476))

(declare-fun m!8407478 () Bool)

(assert (=> b!8054906 m!8407478))

(declare-fun m!8407480 () Bool)

(assert (=> b!8054894 m!8407480))

(declare-fun m!8407482 () Bool)

(assert (=> b!8054897 m!8407482))

(declare-fun m!8407484 () Bool)

(assert (=> b!8054895 m!8407484))

(declare-fun m!8407486 () Bool)

(assert (=> b!8054891 m!8407486))

(declare-fun m!8407488 () Bool)

(assert (=> start!758740 m!8407488))

(declare-fun m!8407490 () Bool)

(assert (=> start!758740 m!8407490))

(declare-fun m!8407492 () Bool)

(assert (=> b!8054893 m!8407492))

(declare-fun m!8407494 () Bool)

(assert (=> b!8054907 m!8407494))

(assert (=> b!8054904 m!8407492))

(declare-fun m!8407496 () Bool)

(assert (=> b!8054896 m!8407496))

(declare-fun m!8407498 () Bool)

(assert (=> b!8054896 m!8407498))

(declare-fun m!8407500 () Bool)

(assert (=> b!8054900 m!8407500))

(assert (=> b!8054903 m!8407482))

(declare-fun m!8407502 () Bool)

(assert (=> b!8054901 m!8407502))

(declare-fun m!8407504 () Bool)

(assert (=> b!8054901 m!8407504))

(declare-fun m!8407506 () Bool)

(assert (=> b!8054901 m!8407506))

(declare-fun m!8407508 () Bool)

(assert (=> b!8054902 m!8407508))

(declare-fun m!8407510 () Bool)

(assert (=> b!8054902 m!8407510))

(declare-fun m!8407512 () Bool)

(assert (=> b!8054902 m!8407512))

(declare-fun m!8407514 () Bool)

(assert (=> b!8054902 m!8407514))

(declare-fun m!8407516 () Bool)

(assert (=> b!8054902 m!8407516))

(assert (=> b!8054902 m!8407494))

(declare-fun m!8407518 () Bool)

(assert (=> b!8054902 m!8407518))

(declare-fun m!8407520 () Bool)

(assert (=> b!8054902 m!8407520))

(check-sat (not b!8054896) (not b!8054907) (not b!8054906) (not b!8054895) tp_is_empty!54947 (not b!8054902) (not b!8054903) (not b!8054890) (not b!8054897) (not b!8054900) (not start!758740) (not b!8054904) (not b!8054893) (not b!8054898) tp_is_empty!54949 (not b!8054901) (not b!8054894) (not b!8054891))
(check-sat)
(get-model)

(declare-fun d!2398299 () Bool)

(declare-fun lt!2728745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16118 (List!75692) (InoxSet tuple2!70912))

(assert (=> d!2398299 (= lt!2728745 (select (content!16118 l!14636) (tuple2!70913 key!6222 value!3131)))))

(declare-fun e!4746559 () Bool)

(assert (=> d!2398299 (= lt!2728745 e!4746559)))

(declare-fun res!3185760 () Bool)

(assert (=> d!2398299 (=> (not res!3185760) (not e!4746559))))

(assert (=> d!2398299 (= res!3185760 ((_ is Cons!75566) l!14636))))

(assert (=> d!2398299 (= (contains!21242 l!14636 (tuple2!70913 key!6222 value!3131)) lt!2728745)))

(declare-fun b!8054912 () Bool)

(declare-fun e!4746560 () Bool)

(assert (=> b!8054912 (= e!4746559 e!4746560)))

(declare-fun res!3185761 () Bool)

(assert (=> b!8054912 (=> res!3185761 e!4746560)))

(assert (=> b!8054912 (= res!3185761 (= (h!82014 l!14636) (tuple2!70913 key!6222 value!3131)))))

(declare-fun b!8054913 () Bool)

(assert (=> b!8054913 (= e!4746560 (contains!21242 (t!391464 l!14636) (tuple2!70913 key!6222 value!3131)))))

(assert (= (and d!2398299 res!3185760) b!8054912))

(assert (= (and b!8054912 (not res!3185761)) b!8054913))

(declare-fun m!8407522 () Bool)

(assert (=> d!2398299 m!8407522))

(declare-fun m!8407524 () Bool)

(assert (=> d!2398299 m!8407524))

(declare-fun m!8407526 () Bool)

(assert (=> b!8054913 m!8407526))

(assert (=> b!8054900 d!2398299))

(declare-fun d!2398301 () Bool)

(declare-fun res!3185766 () Bool)

(declare-fun e!4746565 () Bool)

(assert (=> d!2398301 (=> res!3185766 e!4746565)))

(assert (=> d!2398301 (= res!3185766 (not ((_ is Cons!75566) l!14636)))))

(assert (=> d!2398301 (= (noDuplicateKeys!2718 l!14636) e!4746565)))

(declare-fun b!8054918 () Bool)

(declare-fun e!4746566 () Bool)

(assert (=> b!8054918 (= e!4746565 e!4746566)))

(declare-fun res!3185767 () Bool)

(assert (=> b!8054918 (=> (not res!3185767) (not e!4746566))))

(assert (=> b!8054918 (= res!3185767 (not (containsKey!4873 (t!391464 l!14636) (_1!38759 (h!82014 l!14636)))))))

(declare-fun b!8054919 () Bool)

(assert (=> b!8054919 (= e!4746566 (noDuplicateKeys!2718 (t!391464 l!14636)))))

(assert (= (and d!2398301 (not res!3185766)) b!8054918))

(assert (= (and b!8054918 res!3185767) b!8054919))

(declare-fun m!8407528 () Bool)

(assert (=> b!8054918 m!8407528))

(assert (=> b!8054919 m!8407520))

(assert (=> start!758740 d!2398301))

(declare-fun d!2398303 () Bool)

(declare-fun invariantList!1943 (List!75692) Bool)

(assert (=> d!2398303 (= (inv!97332 acc!1298) (invariantList!1943 (toList!11932 acc!1298)))))

(declare-fun bs!1972947 () Bool)

(assert (= bs!1972947 d!2398303))

(declare-fun m!8407530 () Bool)

(assert (=> bs!1972947 m!8407530))

(assert (=> start!758740 d!2398303))

(declare-fun d!2398305 () Bool)

(declare-datatypes ((Option!18008 0))(
  ( (None!18007) (Some!18007 (v!55346 V!23097)) )
))
(declare-fun get!27232 (Option!18008) V!23097)

(declare-fun getValueByKey!2792 (List!75692 K!22843) Option!18008)

(assert (=> d!2398305 (= (apply!14445 lt!2728731 key!6222) (get!27232 (getValueByKey!2792 (toList!11932 lt!2728731) key!6222)))))

(declare-fun bs!1972948 () Bool)

(assert (= bs!1972948 d!2398305))

(declare-fun m!8407532 () Bool)

(assert (=> bs!1972948 m!8407532))

(assert (=> bs!1972948 m!8407532))

(declare-fun m!8407534 () Bool)

(assert (=> bs!1972948 m!8407534))

(assert (=> b!8054901 d!2398305))

(declare-fun d!2398307 () Bool)

(assert (=> d!2398307 (= (apply!14445 lt!2728739 key!6222) (get!27232 (getValueByKey!2792 (toList!11932 lt!2728739) key!6222)))))

(declare-fun bs!1972949 () Bool)

(assert (= bs!1972949 d!2398307))

(declare-fun m!8407536 () Bool)

(assert (=> bs!1972949 m!8407536))

(assert (=> bs!1972949 m!8407536))

(declare-fun m!8407538 () Bool)

(assert (=> bs!1972949 m!8407538))

(assert (=> b!8054901 d!2398307))

(declare-fun d!2398309 () Bool)

(assert (=> d!2398309 (= (apply!14445 (addToMapMapFromBucket!1999 (t!391464 l!14636) lt!2728736) key!6222) value!3131)))

(declare-fun lt!2728751 () Unit!172179)

(declare-fun choose!60543 (List!75692 ListMap!7315 K!22843 V!23097) Unit!172179)

(assert (=> d!2398309 (= lt!2728751 (choose!60543 (t!391464 l!14636) lt!2728736 key!6222 value!3131))))

(assert (=> d!2398309 (noDuplicateKeys!2718 (t!391464 l!14636))))

(assert (=> d!2398309 (= (lemmaAddToMapFromBucketMaintainsMapping!22 (t!391464 l!14636) lt!2728736 key!6222 value!3131) lt!2728751)))

(declare-fun bs!1972951 () Bool)

(assert (= bs!1972951 d!2398309))

(assert (=> bs!1972951 m!8407496))

(assert (=> bs!1972951 m!8407496))

(declare-fun m!8407554 () Bool)

(assert (=> bs!1972951 m!8407554))

(declare-fun m!8407556 () Bool)

(assert (=> bs!1972951 m!8407556))

(assert (=> bs!1972951 m!8407520))

(assert (=> b!8054901 d!2398309))

(declare-fun d!2398323 () Bool)

(assert (=> d!2398323 (= (apply!14445 lt!2728736 key!6222) (get!27232 (getValueByKey!2792 (toList!11932 lt!2728736) key!6222)))))

(declare-fun bs!1972952 () Bool)

(assert (= bs!1972952 d!2398323))

(declare-fun m!8407558 () Bool)

(assert (=> bs!1972952 m!8407558))

(assert (=> bs!1972952 m!8407558))

(declare-fun m!8407560 () Bool)

(assert (=> bs!1972952 m!8407560))

(assert (=> b!8054902 d!2398323))

(declare-fun d!2398325 () Bool)

(assert (=> d!2398325 (= (apply!14445 acc!1298 key!6222) (get!27232 (getValueByKey!2792 (toList!11932 acc!1298) key!6222)))))

(declare-fun bs!1972953 () Bool)

(assert (= bs!1972953 d!2398325))

(declare-fun m!8407562 () Bool)

(assert (=> bs!1972953 m!8407562))

(assert (=> bs!1972953 m!8407562))

(declare-fun m!8407564 () Bool)

(assert (=> bs!1972953 m!8407564))

(assert (=> b!8054902 d!2398325))

(declare-fun d!2398327 () Bool)

(assert (=> d!2398327 (contains!21241 (+!2683 acc!1298 (tuple2!70913 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)))) key!6222)))

(declare-fun lt!2728754 () Unit!172179)

(declare-fun choose!60544 (ListMap!7315 K!22843 V!23097 K!22843) Unit!172179)

(assert (=> d!2398327 (= lt!2728754 (choose!60544 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222))))

(assert (=> d!2398327 (contains!21241 acc!1298 key!6222)))

(assert (=> d!2398327 (= (addStillContains!51 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222) lt!2728754)))

(declare-fun bs!1972955 () Bool)

(assert (= bs!1972955 d!2398327))

(declare-fun m!8407568 () Bool)

(assert (=> bs!1972955 m!8407568))

(assert (=> bs!1972955 m!8407568))

(declare-fun m!8407570 () Bool)

(assert (=> bs!1972955 m!8407570))

(declare-fun m!8407572 () Bool)

(assert (=> bs!1972955 m!8407572))

(assert (=> bs!1972955 m!8407480))

(assert (=> b!8054902 d!2398327))

(declare-fun d!2398331 () Bool)

(declare-fun lt!2728755 () Bool)

(assert (=> d!2398331 (= lt!2728755 (select (content!16118 l!14636) lt!2728742))))

(declare-fun e!4746587 () Bool)

(assert (=> d!2398331 (= lt!2728755 e!4746587)))

(declare-fun res!3185788 () Bool)

(assert (=> d!2398331 (=> (not res!3185788) (not e!4746587))))

(assert (=> d!2398331 (= res!3185788 ((_ is Cons!75566) l!14636))))

(assert (=> d!2398331 (= (contains!21242 l!14636 lt!2728742) lt!2728755)))

(declare-fun b!8054941 () Bool)

(declare-fun e!4746588 () Bool)

(assert (=> b!8054941 (= e!4746587 e!4746588)))

(declare-fun res!3185789 () Bool)

(assert (=> b!8054941 (=> res!3185789 e!4746588)))

(assert (=> b!8054941 (= res!3185789 (= (h!82014 l!14636) lt!2728742))))

(declare-fun b!8054942 () Bool)

(assert (=> b!8054942 (= e!4746588 (contains!21242 (t!391464 l!14636) lt!2728742))))

(assert (= (and d!2398331 res!3185788) b!8054941))

(assert (= (and b!8054941 (not res!3185789)) b!8054942))

(assert (=> d!2398331 m!8407522))

(declare-fun m!8407574 () Bool)

(assert (=> d!2398331 m!8407574))

(assert (=> b!8054942 m!8407484))

(assert (=> b!8054902 d!2398331))

(declare-fun d!2398333 () Bool)

(assert (=> d!2398333 (= (apply!14445 (+!2683 acc!1298 (tuple2!70913 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)))) key!6222) (apply!14445 acc!1298 key!6222))))

(declare-fun lt!2728774 () Unit!172179)

(declare-fun choose!60545 (ListMap!7315 K!22843 V!23097 K!22843) Unit!172179)

(assert (=> d!2398333 (= lt!2728774 (choose!60545 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222))))

(declare-fun e!4746603 () Bool)

(assert (=> d!2398333 e!4746603))

(declare-fun res!3185798 () Bool)

(assert (=> d!2398333 (=> (not res!3185798) (not e!4746603))))

(assert (=> d!2398333 (= res!3185798 (contains!21241 acc!1298 key!6222))))

(assert (=> d!2398333 (= (addApplyDifferent!25 acc!1298 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636)) key!6222) lt!2728774)))

(declare-fun b!8054964 () Bool)

(assert (=> b!8054964 (= e!4746603 (not (= key!6222 (_1!38759 (h!82014 l!14636)))))))

(assert (= (and d!2398333 res!3185798) b!8054964))

(assert (=> d!2398333 m!8407568))

(declare-fun m!8407576 () Bool)

(assert (=> d!2398333 m!8407576))

(declare-fun m!8407578 () Bool)

(assert (=> d!2398333 m!8407578))

(assert (=> d!2398333 m!8407568))

(assert (=> d!2398333 m!8407480))

(assert (=> d!2398333 m!8407494))

(assert (=> b!8054902 d!2398333))

(declare-fun d!2398335 () Bool)

(declare-fun e!4746627 () Bool)

(assert (=> d!2398335 e!4746627))

(declare-fun res!3185808 () Bool)

(assert (=> d!2398335 (=> res!3185808 e!4746627)))

(declare-fun e!4746625 () Bool)

(assert (=> d!2398335 (= res!3185808 e!4746625)))

(declare-fun res!3185809 () Bool)

(assert (=> d!2398335 (=> (not res!3185809) (not e!4746625))))

(declare-fun lt!2728800 () Bool)

(assert (=> d!2398335 (= res!3185809 (not lt!2728800))))

(declare-fun lt!2728806 () Bool)

(assert (=> d!2398335 (= lt!2728800 lt!2728806)))

(declare-fun lt!2728803 () Unit!172179)

(declare-fun e!4746624 () Unit!172179)

(assert (=> d!2398335 (= lt!2728803 e!4746624)))

(declare-fun c!1476405 () Bool)

(assert (=> d!2398335 (= c!1476405 lt!2728806)))

(declare-fun containsKey!4875 (List!75692 K!22843) Bool)

(assert (=> d!2398335 (= lt!2728806 (containsKey!4875 (toList!11932 lt!2728736) key!6222))))

(assert (=> d!2398335 (= (contains!21241 lt!2728736 key!6222) lt!2728800)))

(declare-fun b!8054992 () Bool)

(declare-fun e!4746623 () Unit!172179)

(declare-fun Unit!172189 () Unit!172179)

(assert (=> b!8054992 (= e!4746623 Unit!172189)))

(declare-fun b!8054993 () Bool)

(declare-datatypes ((List!75694 0))(
  ( (Nil!75568) (Cons!75568 (h!82016 K!22843) (t!391466 List!75694)) )
))
(declare-fun e!4746626 () List!75694)

(declare-fun getKeysList!1251 (List!75692) List!75694)

(assert (=> b!8054993 (= e!4746626 (getKeysList!1251 (toList!11932 lt!2728736)))))

(declare-fun b!8054994 () Bool)

(declare-fun e!4746622 () Bool)

(declare-fun contains!21244 (List!75694 K!22843) Bool)

(declare-fun keys!30858 (ListMap!7315) List!75694)

(assert (=> b!8054994 (= e!4746622 (contains!21244 (keys!30858 lt!2728736) key!6222))))

(declare-fun b!8054995 () Bool)

(assert (=> b!8054995 (= e!4746624 e!4746623)))

(declare-fun c!1476406 () Bool)

(declare-fun call!747327 () Bool)

(assert (=> b!8054995 (= c!1476406 call!747327)))

(declare-fun b!8054996 () Bool)

(declare-fun lt!2728805 () Unit!172179)

(assert (=> b!8054996 (= e!4746624 lt!2728805)))

(declare-fun lt!2728799 () Unit!172179)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2563 (List!75692 K!22843) Unit!172179)

(assert (=> b!8054996 (= lt!2728799 (lemmaContainsKeyImpliesGetValueByKeyDefined!2563 (toList!11932 lt!2728736) key!6222))))

(declare-fun isDefined!14541 (Option!18008) Bool)

(assert (=> b!8054996 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728736) key!6222))))

(declare-fun lt!2728801 () Unit!172179)

(assert (=> b!8054996 (= lt!2728801 lt!2728799)))

(declare-fun lemmaInListThenGetKeysListContains!1246 (List!75692 K!22843) Unit!172179)

(assert (=> b!8054996 (= lt!2728805 (lemmaInListThenGetKeysListContains!1246 (toList!11932 lt!2728736) key!6222))))

(assert (=> b!8054996 call!747327))

(declare-fun b!8054997 () Bool)

(assert (=> b!8054997 (= e!4746625 (not (contains!21244 (keys!30858 lt!2728736) key!6222)))))

(declare-fun b!8054998 () Bool)

(assert (=> b!8054998 (= e!4746627 e!4746622)))

(declare-fun res!3185810 () Bool)

(assert (=> b!8054998 (=> (not res!3185810) (not e!4746622))))

(assert (=> b!8054998 (= res!3185810 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728736) key!6222)))))

(declare-fun bm!747322 () Bool)

(assert (=> bm!747322 (= call!747327 (contains!21244 e!4746626 key!6222))))

(declare-fun c!1476407 () Bool)

(assert (=> bm!747322 (= c!1476407 c!1476405)))

(declare-fun b!8054999 () Bool)

(assert (=> b!8054999 false))

(declare-fun lt!2728804 () Unit!172179)

(declare-fun lt!2728802 () Unit!172179)

(assert (=> b!8054999 (= lt!2728804 lt!2728802)))

(assert (=> b!8054999 (containsKey!4875 (toList!11932 lt!2728736) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1251 (List!75692 K!22843) Unit!172179)

(assert (=> b!8054999 (= lt!2728802 (lemmaInGetKeysListThenContainsKey!1251 (toList!11932 lt!2728736) key!6222))))

(declare-fun Unit!172194 () Unit!172179)

(assert (=> b!8054999 (= e!4746623 Unit!172194)))

(declare-fun b!8055000 () Bool)

(assert (=> b!8055000 (= e!4746626 (keys!30858 lt!2728736))))

(assert (= (and d!2398335 c!1476405) b!8054996))

(assert (= (and d!2398335 (not c!1476405)) b!8054995))

(assert (= (and b!8054995 c!1476406) b!8054999))

(assert (= (and b!8054995 (not c!1476406)) b!8054992))

(assert (= (or b!8054996 b!8054995) bm!747322))

(assert (= (and bm!747322 c!1476407) b!8054993))

(assert (= (and bm!747322 (not c!1476407)) b!8055000))

(assert (= (and d!2398335 res!3185809) b!8054997))

(assert (= (and d!2398335 (not res!3185808)) b!8054998))

(assert (= (and b!8054998 res!3185810) b!8054994))

(declare-fun m!8407600 () Bool)

(assert (=> b!8054999 m!8407600))

(declare-fun m!8407602 () Bool)

(assert (=> b!8054999 m!8407602))

(declare-fun m!8407604 () Bool)

(assert (=> b!8054994 m!8407604))

(assert (=> b!8054994 m!8407604))

(declare-fun m!8407606 () Bool)

(assert (=> b!8054994 m!8407606))

(assert (=> b!8054997 m!8407604))

(assert (=> b!8054997 m!8407604))

(assert (=> b!8054997 m!8407606))

(declare-fun m!8407608 () Bool)

(assert (=> bm!747322 m!8407608))

(assert (=> b!8055000 m!8407604))

(assert (=> d!2398335 m!8407600))

(assert (=> b!8054998 m!8407558))

(assert (=> b!8054998 m!8407558))

(declare-fun m!8407610 () Bool)

(assert (=> b!8054998 m!8407610))

(declare-fun m!8407612 () Bool)

(assert (=> b!8054996 m!8407612))

(assert (=> b!8054996 m!8407558))

(assert (=> b!8054996 m!8407558))

(assert (=> b!8054996 m!8407610))

(declare-fun m!8407614 () Bool)

(assert (=> b!8054996 m!8407614))

(declare-fun m!8407616 () Bool)

(assert (=> b!8054993 m!8407616))

(assert (=> b!8054902 d!2398335))

(declare-fun d!2398339 () Bool)

(assert (=> d!2398339 (not (contains!21242 l!14636 (tuple2!70913 key!6222 value!3131)))))

(declare-fun lt!2728809 () Unit!172179)

(declare-fun choose!60546 (List!75692 K!22843 V!23097) Unit!172179)

(assert (=> d!2398339 (= lt!2728809 (choose!60546 l!14636 key!6222 value!3131))))

(assert (=> d!2398339 (not (containsKey!4873 l!14636 key!6222))))

(assert (=> d!2398339 (= (lemmaNotContainsKeyThenCannotContainPair!34 l!14636 key!6222 value!3131) lt!2728809)))

(declare-fun bs!1972956 () Bool)

(assert (= bs!1972956 d!2398339))

(assert (=> bs!1972956 m!8407500))

(declare-fun m!8407618 () Bool)

(assert (=> bs!1972956 m!8407618))

(assert (=> bs!1972956 m!8407482))

(assert (=> b!8054902 d!2398339))

(declare-fun d!2398341 () Bool)

(declare-fun res!3185811 () Bool)

(declare-fun e!4746628 () Bool)

(assert (=> d!2398341 (=> res!3185811 e!4746628)))

(assert (=> d!2398341 (= res!3185811 (not ((_ is Cons!75566) (t!391464 l!14636))))))

(assert (=> d!2398341 (= (noDuplicateKeys!2718 (t!391464 l!14636)) e!4746628)))

(declare-fun b!8055001 () Bool)

(declare-fun e!4746629 () Bool)

(assert (=> b!8055001 (= e!4746628 e!4746629)))

(declare-fun res!3185812 () Bool)

(assert (=> b!8055001 (=> (not res!3185812) (not e!4746629))))

(assert (=> b!8055001 (= res!3185812 (not (containsKey!4873 (t!391464 (t!391464 l!14636)) (_1!38759 (h!82014 (t!391464 l!14636))))))))

(declare-fun b!8055002 () Bool)

(assert (=> b!8055002 (= e!4746629 (noDuplicateKeys!2718 (t!391464 (t!391464 l!14636))))))

(assert (= (and d!2398341 (not res!3185811)) b!8055001))

(assert (= (and b!8055001 res!3185812) b!8055002))

(declare-fun m!8407620 () Bool)

(assert (=> b!8055001 m!8407620))

(declare-fun m!8407622 () Bool)

(assert (=> b!8055002 m!8407622))

(assert (=> b!8054902 d!2398341))

(declare-fun d!2398343 () Bool)

(declare-fun e!4746635 () Bool)

(assert (=> d!2398343 e!4746635))

(declare-fun res!3185813 () Bool)

(assert (=> d!2398343 (=> res!3185813 e!4746635)))

(declare-fun e!4746633 () Bool)

(assert (=> d!2398343 (= res!3185813 e!4746633)))

(declare-fun res!3185814 () Bool)

(assert (=> d!2398343 (=> (not res!3185814) (not e!4746633))))

(declare-fun lt!2728811 () Bool)

(assert (=> d!2398343 (= res!3185814 (not lt!2728811))))

(declare-fun lt!2728817 () Bool)

(assert (=> d!2398343 (= lt!2728811 lt!2728817)))

(declare-fun lt!2728814 () Unit!172179)

(declare-fun e!4746632 () Unit!172179)

(assert (=> d!2398343 (= lt!2728814 e!4746632)))

(declare-fun c!1476408 () Bool)

(assert (=> d!2398343 (= c!1476408 lt!2728817)))

(assert (=> d!2398343 (= lt!2728817 (containsKey!4875 (toList!11932 lt!2728739) key!6222))))

(assert (=> d!2398343 (= (contains!21241 lt!2728739 key!6222) lt!2728811)))

(declare-fun b!8055003 () Bool)

(declare-fun e!4746631 () Unit!172179)

(declare-fun Unit!172196 () Unit!172179)

(assert (=> b!8055003 (= e!4746631 Unit!172196)))

(declare-fun b!8055004 () Bool)

(declare-fun e!4746634 () List!75694)

(assert (=> b!8055004 (= e!4746634 (getKeysList!1251 (toList!11932 lt!2728739)))))

(declare-fun b!8055005 () Bool)

(declare-fun e!4746630 () Bool)

(assert (=> b!8055005 (= e!4746630 (contains!21244 (keys!30858 lt!2728739) key!6222))))

(declare-fun b!8055006 () Bool)

(assert (=> b!8055006 (= e!4746632 e!4746631)))

(declare-fun c!1476409 () Bool)

(declare-fun call!747328 () Bool)

(assert (=> b!8055006 (= c!1476409 call!747328)))

(declare-fun b!8055007 () Bool)

(declare-fun lt!2728816 () Unit!172179)

(assert (=> b!8055007 (= e!4746632 lt!2728816)))

(declare-fun lt!2728810 () Unit!172179)

(assert (=> b!8055007 (= lt!2728810 (lemmaContainsKeyImpliesGetValueByKeyDefined!2563 (toList!11932 lt!2728739) key!6222))))

(assert (=> b!8055007 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728739) key!6222))))

(declare-fun lt!2728812 () Unit!172179)

(assert (=> b!8055007 (= lt!2728812 lt!2728810)))

(assert (=> b!8055007 (= lt!2728816 (lemmaInListThenGetKeysListContains!1246 (toList!11932 lt!2728739) key!6222))))

(assert (=> b!8055007 call!747328))

(declare-fun b!8055008 () Bool)

(assert (=> b!8055008 (= e!4746633 (not (contains!21244 (keys!30858 lt!2728739) key!6222)))))

(declare-fun b!8055009 () Bool)

(assert (=> b!8055009 (= e!4746635 e!4746630)))

(declare-fun res!3185815 () Bool)

(assert (=> b!8055009 (=> (not res!3185815) (not e!4746630))))

(assert (=> b!8055009 (= res!3185815 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728739) key!6222)))))

(declare-fun bm!747323 () Bool)

(assert (=> bm!747323 (= call!747328 (contains!21244 e!4746634 key!6222))))

(declare-fun c!1476410 () Bool)

(assert (=> bm!747323 (= c!1476410 c!1476408)))

(declare-fun b!8055010 () Bool)

(assert (=> b!8055010 false))

(declare-fun lt!2728815 () Unit!172179)

(declare-fun lt!2728813 () Unit!172179)

(assert (=> b!8055010 (= lt!2728815 lt!2728813)))

(assert (=> b!8055010 (containsKey!4875 (toList!11932 lt!2728739) key!6222)))

(assert (=> b!8055010 (= lt!2728813 (lemmaInGetKeysListThenContainsKey!1251 (toList!11932 lt!2728739) key!6222))))

(declare-fun Unit!172197 () Unit!172179)

(assert (=> b!8055010 (= e!4746631 Unit!172197)))

(declare-fun b!8055011 () Bool)

(assert (=> b!8055011 (= e!4746634 (keys!30858 lt!2728739))))

(assert (= (and d!2398343 c!1476408) b!8055007))

(assert (= (and d!2398343 (not c!1476408)) b!8055006))

(assert (= (and b!8055006 c!1476409) b!8055010))

(assert (= (and b!8055006 (not c!1476409)) b!8055003))

(assert (= (or b!8055007 b!8055006) bm!747323))

(assert (= (and bm!747323 c!1476410) b!8055004))

(assert (= (and bm!747323 (not c!1476410)) b!8055011))

(assert (= (and d!2398343 res!3185814) b!8055008))

(assert (= (and d!2398343 (not res!3185813)) b!8055009))

(assert (= (and b!8055009 res!3185815) b!8055005))

(declare-fun m!8407624 () Bool)

(assert (=> b!8055010 m!8407624))

(declare-fun m!8407626 () Bool)

(assert (=> b!8055010 m!8407626))

(declare-fun m!8407628 () Bool)

(assert (=> b!8055005 m!8407628))

(assert (=> b!8055005 m!8407628))

(declare-fun m!8407630 () Bool)

(assert (=> b!8055005 m!8407630))

(assert (=> b!8055008 m!8407628))

(assert (=> b!8055008 m!8407628))

(assert (=> b!8055008 m!8407630))

(declare-fun m!8407632 () Bool)

(assert (=> bm!747323 m!8407632))

(assert (=> b!8055011 m!8407628))

(assert (=> d!2398343 m!8407624))

(assert (=> b!8055009 m!8407536))

(assert (=> b!8055009 m!8407536))

(declare-fun m!8407634 () Bool)

(assert (=> b!8055009 m!8407634))

(declare-fun m!8407636 () Bool)

(assert (=> b!8055007 m!8407636))

(assert (=> b!8055007 m!8407536))

(assert (=> b!8055007 m!8407536))

(assert (=> b!8055007 m!8407634))

(declare-fun m!8407638 () Bool)

(assert (=> b!8055007 m!8407638))

(declare-fun m!8407640 () Bool)

(assert (=> b!8055004 m!8407640))

(assert (=> b!8054891 d!2398343))

(declare-fun d!2398345 () Bool)

(declare-fun res!3185820 () Bool)

(declare-fun e!4746640 () Bool)

(assert (=> d!2398345 (=> res!3185820 e!4746640)))

(assert (=> d!2398345 (= res!3185820 (and ((_ is Cons!75566) l!14636) (= (_1!38759 (h!82014 l!14636)) key!6222)))))

(assert (=> d!2398345 (= (containsKey!4873 l!14636 key!6222) e!4746640)))

(declare-fun b!8055016 () Bool)

(declare-fun e!4746641 () Bool)

(assert (=> b!8055016 (= e!4746640 e!4746641)))

(declare-fun res!3185821 () Bool)

(assert (=> b!8055016 (=> (not res!3185821) (not e!4746641))))

(assert (=> b!8055016 (= res!3185821 ((_ is Cons!75566) l!14636))))

(declare-fun b!8055017 () Bool)

(assert (=> b!8055017 (= e!4746641 (containsKey!4873 (t!391464 l!14636) key!6222))))

(assert (= (and d!2398345 (not res!3185820)) b!8055016))

(assert (= (and b!8055016 res!3185821) b!8055017))

(assert (=> b!8055017 m!8407492))

(assert (=> b!8054903 d!2398345))

(declare-fun d!2398347 () Bool)

(declare-fun res!3185822 () Bool)

(declare-fun e!4746642 () Bool)

(assert (=> d!2398347 (=> res!3185822 e!4746642)))

(assert (=> d!2398347 (= res!3185822 (and ((_ is Cons!75566) (t!391464 l!14636)) (= (_1!38759 (h!82014 (t!391464 l!14636))) key!6222)))))

(assert (=> d!2398347 (= (containsKey!4873 (t!391464 l!14636) key!6222) e!4746642)))

(declare-fun b!8055018 () Bool)

(declare-fun e!4746643 () Bool)

(assert (=> b!8055018 (= e!4746642 e!4746643)))

(declare-fun res!3185823 () Bool)

(assert (=> b!8055018 (=> (not res!3185823) (not e!4746643))))

(assert (=> b!8055018 (= res!3185823 ((_ is Cons!75566) (t!391464 l!14636)))))

(declare-fun b!8055019 () Bool)

(assert (=> b!8055019 (= e!4746643 (containsKey!4873 (t!391464 (t!391464 l!14636)) key!6222))))

(assert (= (and d!2398347 (not res!3185822)) b!8055018))

(assert (= (and b!8055018 res!3185823) b!8055019))

(declare-fun m!8407642 () Bool)

(assert (=> b!8055019 m!8407642))

(assert (=> b!8054904 d!2398347))

(assert (=> b!8054893 d!2398347))

(declare-fun d!2398349 () Bool)

(declare-fun e!4746649 () Bool)

(assert (=> d!2398349 e!4746649))

(declare-fun res!3185824 () Bool)

(assert (=> d!2398349 (=> res!3185824 e!4746649)))

(declare-fun e!4746647 () Bool)

(assert (=> d!2398349 (= res!3185824 e!4746647)))

(declare-fun res!3185825 () Bool)

(assert (=> d!2398349 (=> (not res!3185825) (not e!4746647))))

(declare-fun lt!2728819 () Bool)

(assert (=> d!2398349 (= res!3185825 (not lt!2728819))))

(declare-fun lt!2728825 () Bool)

(assert (=> d!2398349 (= lt!2728819 lt!2728825)))

(declare-fun lt!2728822 () Unit!172179)

(declare-fun e!4746646 () Unit!172179)

(assert (=> d!2398349 (= lt!2728822 e!4746646)))

(declare-fun c!1476411 () Bool)

(assert (=> d!2398349 (= c!1476411 lt!2728825)))

(assert (=> d!2398349 (= lt!2728825 (containsKey!4875 (toList!11932 acc!1298) key!6222))))

(assert (=> d!2398349 (= (contains!21241 acc!1298 key!6222) lt!2728819)))

(declare-fun b!8055020 () Bool)

(declare-fun e!4746645 () Unit!172179)

(declare-fun Unit!172200 () Unit!172179)

(assert (=> b!8055020 (= e!4746645 Unit!172200)))

(declare-fun b!8055021 () Bool)

(declare-fun e!4746648 () List!75694)

(assert (=> b!8055021 (= e!4746648 (getKeysList!1251 (toList!11932 acc!1298)))))

(declare-fun b!8055022 () Bool)

(declare-fun e!4746644 () Bool)

(assert (=> b!8055022 (= e!4746644 (contains!21244 (keys!30858 acc!1298) key!6222))))

(declare-fun b!8055023 () Bool)

(assert (=> b!8055023 (= e!4746646 e!4746645)))

(declare-fun c!1476412 () Bool)

(declare-fun call!747329 () Bool)

(assert (=> b!8055023 (= c!1476412 call!747329)))

(declare-fun b!8055024 () Bool)

(declare-fun lt!2728824 () Unit!172179)

(assert (=> b!8055024 (= e!4746646 lt!2728824)))

(declare-fun lt!2728818 () Unit!172179)

(assert (=> b!8055024 (= lt!2728818 (lemmaContainsKeyImpliesGetValueByKeyDefined!2563 (toList!11932 acc!1298) key!6222))))

(assert (=> b!8055024 (isDefined!14541 (getValueByKey!2792 (toList!11932 acc!1298) key!6222))))

(declare-fun lt!2728820 () Unit!172179)

(assert (=> b!8055024 (= lt!2728820 lt!2728818)))

(assert (=> b!8055024 (= lt!2728824 (lemmaInListThenGetKeysListContains!1246 (toList!11932 acc!1298) key!6222))))

(assert (=> b!8055024 call!747329))

(declare-fun b!8055025 () Bool)

(assert (=> b!8055025 (= e!4746647 (not (contains!21244 (keys!30858 acc!1298) key!6222)))))

(declare-fun b!8055026 () Bool)

(assert (=> b!8055026 (= e!4746649 e!4746644)))

(declare-fun res!3185826 () Bool)

(assert (=> b!8055026 (=> (not res!3185826) (not e!4746644))))

(assert (=> b!8055026 (= res!3185826 (isDefined!14541 (getValueByKey!2792 (toList!11932 acc!1298) key!6222)))))

(declare-fun bm!747324 () Bool)

(assert (=> bm!747324 (= call!747329 (contains!21244 e!4746648 key!6222))))

(declare-fun c!1476413 () Bool)

(assert (=> bm!747324 (= c!1476413 c!1476411)))

(declare-fun b!8055027 () Bool)

(assert (=> b!8055027 false))

(declare-fun lt!2728823 () Unit!172179)

(declare-fun lt!2728821 () Unit!172179)

(assert (=> b!8055027 (= lt!2728823 lt!2728821)))

(assert (=> b!8055027 (containsKey!4875 (toList!11932 acc!1298) key!6222)))

(assert (=> b!8055027 (= lt!2728821 (lemmaInGetKeysListThenContainsKey!1251 (toList!11932 acc!1298) key!6222))))

(declare-fun Unit!172201 () Unit!172179)

(assert (=> b!8055027 (= e!4746645 Unit!172201)))

(declare-fun b!8055028 () Bool)

(assert (=> b!8055028 (= e!4746648 (keys!30858 acc!1298))))

(assert (= (and d!2398349 c!1476411) b!8055024))

(assert (= (and d!2398349 (not c!1476411)) b!8055023))

(assert (= (and b!8055023 c!1476412) b!8055027))

(assert (= (and b!8055023 (not c!1476412)) b!8055020))

(assert (= (or b!8055024 b!8055023) bm!747324))

(assert (= (and bm!747324 c!1476413) b!8055021))

(assert (= (and bm!747324 (not c!1476413)) b!8055028))

(assert (= (and d!2398349 res!3185825) b!8055025))

(assert (= (and d!2398349 (not res!3185824)) b!8055026))

(assert (= (and b!8055026 res!3185826) b!8055022))

(declare-fun m!8407644 () Bool)

(assert (=> b!8055027 m!8407644))

(declare-fun m!8407646 () Bool)

(assert (=> b!8055027 m!8407646))

(declare-fun m!8407648 () Bool)

(assert (=> b!8055022 m!8407648))

(assert (=> b!8055022 m!8407648))

(declare-fun m!8407650 () Bool)

(assert (=> b!8055022 m!8407650))

(assert (=> b!8055025 m!8407648))

(assert (=> b!8055025 m!8407648))

(assert (=> b!8055025 m!8407650))

(declare-fun m!8407652 () Bool)

(assert (=> bm!747324 m!8407652))

(assert (=> b!8055028 m!8407648))

(assert (=> d!2398349 m!8407644))

(assert (=> b!8055026 m!8407562))

(assert (=> b!8055026 m!8407562))

(declare-fun m!8407654 () Bool)

(assert (=> b!8055026 m!8407654))

(declare-fun m!8407656 () Bool)

(assert (=> b!8055024 m!8407656))

(assert (=> b!8055024 m!8407562))

(assert (=> b!8055024 m!8407562))

(assert (=> b!8055024 m!8407654))

(declare-fun m!8407658 () Bool)

(assert (=> b!8055024 m!8407658))

(declare-fun m!8407660 () Bool)

(assert (=> b!8055021 m!8407660))

(assert (=> b!8054894 d!2398349))

(declare-fun d!2398351 () Bool)

(declare-fun e!4746655 () Bool)

(assert (=> d!2398351 e!4746655))

(declare-fun res!3185827 () Bool)

(assert (=> d!2398351 (=> res!3185827 e!4746655)))

(declare-fun e!4746653 () Bool)

(assert (=> d!2398351 (= res!3185827 e!4746653)))

(declare-fun res!3185828 () Bool)

(assert (=> d!2398351 (=> (not res!3185828) (not e!4746653))))

(declare-fun lt!2728827 () Bool)

(assert (=> d!2398351 (= res!3185828 (not lt!2728827))))

(declare-fun lt!2728833 () Bool)

(assert (=> d!2398351 (= lt!2728827 lt!2728833)))

(declare-fun lt!2728830 () Unit!172179)

(declare-fun e!4746652 () Unit!172179)

(assert (=> d!2398351 (= lt!2728830 e!4746652)))

(declare-fun c!1476414 () Bool)

(assert (=> d!2398351 (= c!1476414 lt!2728833)))

(assert (=> d!2398351 (= lt!2728833 (containsKey!4875 (toList!11932 lt!2728731) key!6222))))

(assert (=> d!2398351 (= (contains!21241 lt!2728731 key!6222) lt!2728827)))

(declare-fun b!8055029 () Bool)

(declare-fun e!4746651 () Unit!172179)

(declare-fun Unit!172202 () Unit!172179)

(assert (=> b!8055029 (= e!4746651 Unit!172202)))

(declare-fun b!8055030 () Bool)

(declare-fun e!4746654 () List!75694)

(assert (=> b!8055030 (= e!4746654 (getKeysList!1251 (toList!11932 lt!2728731)))))

(declare-fun b!8055031 () Bool)

(declare-fun e!4746650 () Bool)

(assert (=> b!8055031 (= e!4746650 (contains!21244 (keys!30858 lt!2728731) key!6222))))

(declare-fun b!8055032 () Bool)

(assert (=> b!8055032 (= e!4746652 e!4746651)))

(declare-fun c!1476415 () Bool)

(declare-fun call!747330 () Bool)

(assert (=> b!8055032 (= c!1476415 call!747330)))

(declare-fun b!8055033 () Bool)

(declare-fun lt!2728832 () Unit!172179)

(assert (=> b!8055033 (= e!4746652 lt!2728832)))

(declare-fun lt!2728826 () Unit!172179)

(assert (=> b!8055033 (= lt!2728826 (lemmaContainsKeyImpliesGetValueByKeyDefined!2563 (toList!11932 lt!2728731) key!6222))))

(assert (=> b!8055033 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728731) key!6222))))

(declare-fun lt!2728828 () Unit!172179)

(assert (=> b!8055033 (= lt!2728828 lt!2728826)))

(assert (=> b!8055033 (= lt!2728832 (lemmaInListThenGetKeysListContains!1246 (toList!11932 lt!2728731) key!6222))))

(assert (=> b!8055033 call!747330))

(declare-fun b!8055034 () Bool)

(assert (=> b!8055034 (= e!4746653 (not (contains!21244 (keys!30858 lt!2728731) key!6222)))))

(declare-fun b!8055035 () Bool)

(assert (=> b!8055035 (= e!4746655 e!4746650)))

(declare-fun res!3185829 () Bool)

(assert (=> b!8055035 (=> (not res!3185829) (not e!4746650))))

(assert (=> b!8055035 (= res!3185829 (isDefined!14541 (getValueByKey!2792 (toList!11932 lt!2728731) key!6222)))))

(declare-fun bm!747325 () Bool)

(assert (=> bm!747325 (= call!747330 (contains!21244 e!4746654 key!6222))))

(declare-fun c!1476416 () Bool)

(assert (=> bm!747325 (= c!1476416 c!1476414)))

(declare-fun b!8055036 () Bool)

(assert (=> b!8055036 false))

(declare-fun lt!2728831 () Unit!172179)

(declare-fun lt!2728829 () Unit!172179)

(assert (=> b!8055036 (= lt!2728831 lt!2728829)))

(assert (=> b!8055036 (containsKey!4875 (toList!11932 lt!2728731) key!6222)))

(assert (=> b!8055036 (= lt!2728829 (lemmaInGetKeysListThenContainsKey!1251 (toList!11932 lt!2728731) key!6222))))

(declare-fun Unit!172203 () Unit!172179)

(assert (=> b!8055036 (= e!4746651 Unit!172203)))

(declare-fun b!8055037 () Bool)

(assert (=> b!8055037 (= e!4746654 (keys!30858 lt!2728731))))

(assert (= (and d!2398351 c!1476414) b!8055033))

(assert (= (and d!2398351 (not c!1476414)) b!8055032))

(assert (= (and b!8055032 c!1476415) b!8055036))

(assert (= (and b!8055032 (not c!1476415)) b!8055029))

(assert (= (or b!8055033 b!8055032) bm!747325))

(assert (= (and bm!747325 c!1476416) b!8055030))

(assert (= (and bm!747325 (not c!1476416)) b!8055037))

(assert (= (and d!2398351 res!3185828) b!8055034))

(assert (= (and d!2398351 (not res!3185827)) b!8055035))

(assert (= (and b!8055035 res!3185829) b!8055031))

(declare-fun m!8407662 () Bool)

(assert (=> b!8055036 m!8407662))

(declare-fun m!8407664 () Bool)

(assert (=> b!8055036 m!8407664))

(declare-fun m!8407666 () Bool)

(assert (=> b!8055031 m!8407666))

(assert (=> b!8055031 m!8407666))

(declare-fun m!8407668 () Bool)

(assert (=> b!8055031 m!8407668))

(assert (=> b!8055034 m!8407666))

(assert (=> b!8055034 m!8407666))

(assert (=> b!8055034 m!8407668))

(declare-fun m!8407670 () Bool)

(assert (=> bm!747325 m!8407670))

(assert (=> b!8055037 m!8407666))

(assert (=> d!2398351 m!8407662))

(assert (=> b!8055035 m!8407532))

(assert (=> b!8055035 m!8407532))

(declare-fun m!8407672 () Bool)

(assert (=> b!8055035 m!8407672))

(declare-fun m!8407674 () Bool)

(assert (=> b!8055033 m!8407674))

(assert (=> b!8055033 m!8407532))

(assert (=> b!8055033 m!8407532))

(assert (=> b!8055033 m!8407672))

(declare-fun m!8407676 () Bool)

(assert (=> b!8055033 m!8407676))

(declare-fun m!8407678 () Bool)

(assert (=> b!8055030 m!8407678))

(assert (=> b!8054906 d!2398351))

(declare-fun b!8055123 () Bool)

(assert (=> b!8055123 true))

(declare-fun bs!1972978 () Bool)

(declare-fun b!8055121 () Bool)

(assert (= bs!1972978 (and b!8055121 b!8055123)))

(declare-fun lambda!474049 () Int)

(declare-fun lambda!474048 () Int)

(assert (=> bs!1972978 (= lambda!474049 lambda!474048)))

(assert (=> b!8055121 true))

(declare-fun lt!2729017 () ListMap!7315)

(declare-fun lambda!474050 () Int)

(assert (=> bs!1972978 (= (= lt!2729017 acc!1298) (= lambda!474050 lambda!474048))))

(assert (=> b!8055121 (= (= lt!2729017 acc!1298) (= lambda!474050 lambda!474049))))

(assert (=> b!8055121 true))

(declare-fun bs!1972979 () Bool)

(declare-fun d!2398353 () Bool)

(assert (= bs!1972979 (and d!2398353 b!8055123)))

(declare-fun lambda!474051 () Int)

(declare-fun lt!2729013 () ListMap!7315)

(assert (=> bs!1972979 (= (= lt!2729013 acc!1298) (= lambda!474051 lambda!474048))))

(declare-fun bs!1972980 () Bool)

(assert (= bs!1972980 (and d!2398353 b!8055121)))

(assert (=> bs!1972980 (= (= lt!2729013 acc!1298) (= lambda!474051 lambda!474049))))

(assert (=> bs!1972980 (= (= lt!2729013 lt!2729017) (= lambda!474051 lambda!474050))))

(assert (=> d!2398353 true))

(declare-fun b!8055120 () Bool)

(declare-fun res!3185874 () Bool)

(declare-fun e!4746709 () Bool)

(assert (=> b!8055120 (=> (not res!3185874) (not e!4746709))))

(declare-fun forall!18514 (List!75692 Int) Bool)

(assert (=> b!8055120 (= res!3185874 (forall!18514 (toList!11932 acc!1298) lambda!474051))))

(declare-fun e!4746710 () ListMap!7315)

(assert (=> b!8055121 (= e!4746710 lt!2729017)))

(declare-fun lt!2729022 () ListMap!7315)

(assert (=> b!8055121 (= lt!2729022 (+!2683 acc!1298 (h!82014 l!14636)))))

(assert (=> b!8055121 (= lt!2729017 (addToMapMapFromBucket!1999 (t!391464 l!14636) (+!2683 acc!1298 (h!82014 l!14636))))))

(declare-fun lt!2729010 () Unit!172179)

(declare-fun call!747353 () Unit!172179)

(assert (=> b!8055121 (= lt!2729010 call!747353)))

(assert (=> b!8055121 (forall!18514 (toList!11932 acc!1298) lambda!474049)))

(declare-fun lt!2729011 () Unit!172179)

(assert (=> b!8055121 (= lt!2729011 lt!2729010)))

(assert (=> b!8055121 (forall!18514 (toList!11932 lt!2729022) lambda!474050)))

(declare-fun lt!2729021 () Unit!172179)

(declare-fun Unit!172204 () Unit!172179)

(assert (=> b!8055121 (= lt!2729021 Unit!172204)))

(assert (=> b!8055121 (forall!18514 (t!391464 l!14636) lambda!474050)))

(declare-fun lt!2729016 () Unit!172179)

(declare-fun Unit!172205 () Unit!172179)

(assert (=> b!8055121 (= lt!2729016 Unit!172205)))

(declare-fun lt!2729025 () Unit!172179)

(declare-fun Unit!172206 () Unit!172179)

(assert (=> b!8055121 (= lt!2729025 Unit!172206)))

(declare-fun lt!2729028 () Unit!172179)

(declare-fun forallContained!4668 (List!75692 Int tuple2!70912) Unit!172179)

(assert (=> b!8055121 (= lt!2729028 (forallContained!4668 (toList!11932 lt!2729022) lambda!474050 (h!82014 l!14636)))))

(assert (=> b!8055121 (contains!21241 lt!2729022 (_1!38759 (h!82014 l!14636)))))

(declare-fun lt!2729027 () Unit!172179)

(declare-fun Unit!172207 () Unit!172179)

(assert (=> b!8055121 (= lt!2729027 Unit!172207)))

(assert (=> b!8055121 (contains!21241 lt!2729017 (_1!38759 (h!82014 l!14636)))))

(declare-fun lt!2729020 () Unit!172179)

(declare-fun Unit!172208 () Unit!172179)

(assert (=> b!8055121 (= lt!2729020 Unit!172208)))

(declare-fun call!747352 () Bool)

(assert (=> b!8055121 call!747352))

(declare-fun lt!2729015 () Unit!172179)

(declare-fun Unit!172209 () Unit!172179)

(assert (=> b!8055121 (= lt!2729015 Unit!172209)))

(assert (=> b!8055121 (forall!18514 (toList!11932 lt!2729022) lambda!474050)))

(declare-fun lt!2729024 () Unit!172179)

(declare-fun Unit!172210 () Unit!172179)

(assert (=> b!8055121 (= lt!2729024 Unit!172210)))

(declare-fun lt!2729023 () Unit!172179)

(declare-fun Unit!172211 () Unit!172179)

(assert (=> b!8055121 (= lt!2729023 Unit!172211)))

(declare-fun lt!2729012 () Unit!172179)

(declare-fun addForallContainsKeyThenBeforeAdding!1093 (ListMap!7315 ListMap!7315 K!22843 V!23097) Unit!172179)

(assert (=> b!8055121 (= lt!2729012 (addForallContainsKeyThenBeforeAdding!1093 acc!1298 lt!2729017 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636))))))

(assert (=> b!8055121 (forall!18514 (toList!11932 acc!1298) lambda!474050)))

(declare-fun lt!2729029 () Unit!172179)

(assert (=> b!8055121 (= lt!2729029 lt!2729012)))

(declare-fun call!747354 () Bool)

(assert (=> b!8055121 call!747354))

(declare-fun lt!2729026 () Unit!172179)

(declare-fun Unit!172212 () Unit!172179)

(assert (=> b!8055121 (= lt!2729026 Unit!172212)))

(declare-fun res!3185872 () Bool)

(assert (=> b!8055121 (= res!3185872 (forall!18514 l!14636 lambda!474050))))

(declare-fun e!4746708 () Bool)

(assert (=> b!8055121 (=> (not res!3185872) (not e!4746708))))

(assert (=> b!8055121 e!4746708))

(declare-fun lt!2729030 () Unit!172179)

(declare-fun Unit!172214 () Unit!172179)

(assert (=> b!8055121 (= lt!2729030 Unit!172214)))

(declare-fun bm!747347 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1095 (ListMap!7315) Unit!172179)

(assert (=> bm!747347 (= call!747353 (lemmaContainsAllItsOwnKeys!1095 acc!1298))))

(declare-fun bm!747348 () Bool)

(declare-fun c!1476432 () Bool)

(assert (=> bm!747348 (= call!747354 (forall!18514 (toList!11932 acc!1298) (ite c!1476432 lambda!474048 lambda!474050)))))

(declare-fun b!8055122 () Bool)

(assert (=> b!8055122 (= e!4746709 (invariantList!1943 (toList!11932 lt!2729013)))))

(assert (=> b!8055123 (= e!4746710 acc!1298)))

(declare-fun lt!2729019 () Unit!172179)

(assert (=> b!8055123 (= lt!2729019 call!747353)))

(assert (=> b!8055123 call!747352))

(declare-fun lt!2729014 () Unit!172179)

(assert (=> b!8055123 (= lt!2729014 lt!2729019)))

(assert (=> b!8055123 call!747354))

(declare-fun lt!2729018 () Unit!172179)

(declare-fun Unit!172215 () Unit!172179)

(assert (=> b!8055123 (= lt!2729018 Unit!172215)))

(declare-fun bm!747349 () Bool)

(assert (=> bm!747349 (= call!747352 (forall!18514 (ite c!1476432 (toList!11932 acc!1298) l!14636) (ite c!1476432 lambda!474048 lambda!474050)))))

(assert (=> d!2398353 e!4746709))

(declare-fun res!3185873 () Bool)

(assert (=> d!2398353 (=> (not res!3185873) (not e!4746709))))

(assert (=> d!2398353 (= res!3185873 (forall!18514 l!14636 lambda!474051))))

(assert (=> d!2398353 (= lt!2729013 e!4746710)))

(assert (=> d!2398353 (= c!1476432 ((_ is Nil!75566) l!14636))))

(assert (=> d!2398353 (noDuplicateKeys!2718 l!14636)))

(assert (=> d!2398353 (= (addToMapMapFromBucket!1999 l!14636 acc!1298) lt!2729013)))

(declare-fun b!8055124 () Bool)

(assert (=> b!8055124 (= e!4746708 (forall!18514 (toList!11932 acc!1298) lambda!474050))))

(assert (= (and d!2398353 c!1476432) b!8055123))

(assert (= (and d!2398353 (not c!1476432)) b!8055121))

(assert (= (and b!8055121 res!3185872) b!8055124))

(assert (= (or b!8055123 b!8055121) bm!747349))

(assert (= (or b!8055123 b!8055121) bm!747348))

(assert (= (or b!8055123 b!8055121) bm!747347))

(assert (= (and d!2398353 res!3185873) b!8055120))

(assert (= (and b!8055120 res!3185874) b!8055122))

(declare-fun m!8407846 () Bool)

(assert (=> b!8055122 m!8407846))

(assert (=> b!8055121 m!8407498))

(declare-fun m!8407848 () Bool)

(assert (=> b!8055121 m!8407848))

(declare-fun m!8407850 () Bool)

(assert (=> b!8055121 m!8407850))

(declare-fun m!8407852 () Bool)

(assert (=> b!8055121 m!8407852))

(declare-fun m!8407854 () Bool)

(assert (=> b!8055121 m!8407854))

(assert (=> b!8055121 m!8407854))

(declare-fun m!8407856 () Bool)

(assert (=> b!8055121 m!8407856))

(declare-fun m!8407858 () Bool)

(assert (=> b!8055121 m!8407858))

(declare-fun m!8407860 () Bool)

(assert (=> b!8055121 m!8407860))

(assert (=> b!8055121 m!8407498))

(declare-fun m!8407862 () Bool)

(assert (=> b!8055121 m!8407862))

(declare-fun m!8407864 () Bool)

(assert (=> b!8055121 m!8407864))

(declare-fun m!8407866 () Bool)

(assert (=> b!8055121 m!8407866))

(declare-fun m!8407868 () Bool)

(assert (=> d!2398353 m!8407868))

(assert (=> d!2398353 m!8407488))

(declare-fun m!8407870 () Bool)

(assert (=> b!8055120 m!8407870))

(declare-fun m!8407872 () Bool)

(assert (=> bm!747347 m!8407872))

(declare-fun m!8407874 () Bool)

(assert (=> bm!747348 m!8407874))

(declare-fun m!8407876 () Bool)

(assert (=> bm!747349 m!8407876))

(assert (=> b!8055124 m!8407858))

(assert (=> b!8054906 d!2398353))

(declare-fun d!2398385 () Bool)

(declare-fun lt!2729031 () Bool)

(assert (=> d!2398385 (= lt!2729031 (select (content!16118 (t!391464 l!14636)) lt!2728742))))

(declare-fun e!4746711 () Bool)

(assert (=> d!2398385 (= lt!2729031 e!4746711)))

(declare-fun res!3185875 () Bool)

(assert (=> d!2398385 (=> (not res!3185875) (not e!4746711))))

(assert (=> d!2398385 (= res!3185875 ((_ is Cons!75566) (t!391464 l!14636)))))

(assert (=> d!2398385 (= (contains!21242 (t!391464 l!14636) lt!2728742) lt!2729031)))

(declare-fun b!8055127 () Bool)

(declare-fun e!4746712 () Bool)

(assert (=> b!8055127 (= e!4746711 e!4746712)))

(declare-fun res!3185876 () Bool)

(assert (=> b!8055127 (=> res!3185876 e!4746712)))

(assert (=> b!8055127 (= res!3185876 (= (h!82014 (t!391464 l!14636)) lt!2728742))))

(declare-fun b!8055128 () Bool)

(assert (=> b!8055128 (= e!4746712 (contains!21242 (t!391464 (t!391464 l!14636)) lt!2728742))))

(assert (= (and d!2398385 res!3185875) b!8055127))

(assert (= (and b!8055127 (not res!3185876)) b!8055128))

(declare-fun m!8407878 () Bool)

(assert (=> d!2398385 m!8407878))

(declare-fun m!8407880 () Bool)

(assert (=> d!2398385 m!8407880))

(declare-fun m!8407882 () Bool)

(assert (=> b!8055128 m!8407882))

(assert (=> b!8054895 d!2398385))

(declare-fun bs!1972981 () Bool)

(declare-fun b!8055132 () Bool)

(assert (= bs!1972981 (and b!8055132 b!8055123)))

(declare-fun lambda!474052 () Int)

(assert (=> bs!1972981 (= (= lt!2728736 acc!1298) (= lambda!474052 lambda!474048))))

(declare-fun bs!1972982 () Bool)

(assert (= bs!1972982 (and b!8055132 b!8055121)))

(assert (=> bs!1972982 (= (= lt!2728736 acc!1298) (= lambda!474052 lambda!474049))))

(assert (=> bs!1972982 (= (= lt!2728736 lt!2729017) (= lambda!474052 lambda!474050))))

(declare-fun bs!1972983 () Bool)

(assert (= bs!1972983 (and b!8055132 d!2398353)))

(assert (=> bs!1972983 (= (= lt!2728736 lt!2729013) (= lambda!474052 lambda!474051))))

(assert (=> b!8055132 true))

(declare-fun bs!1972984 () Bool)

(declare-fun b!8055130 () Bool)

(assert (= bs!1972984 (and b!8055130 b!8055123)))

(declare-fun lambda!474053 () Int)

(assert (=> bs!1972984 (= (= lt!2728736 acc!1298) (= lambda!474053 lambda!474048))))

(declare-fun bs!1972985 () Bool)

(assert (= bs!1972985 (and b!8055130 b!8055132)))

(assert (=> bs!1972985 (= lambda!474053 lambda!474052)))

(declare-fun bs!1972986 () Bool)

(assert (= bs!1972986 (and b!8055130 d!2398353)))

(assert (=> bs!1972986 (= (= lt!2728736 lt!2729013) (= lambda!474053 lambda!474051))))

(declare-fun bs!1972987 () Bool)

(assert (= bs!1972987 (and b!8055130 b!8055121)))

(assert (=> bs!1972987 (= (= lt!2728736 acc!1298) (= lambda!474053 lambda!474049))))

(assert (=> bs!1972987 (= (= lt!2728736 lt!2729017) (= lambda!474053 lambda!474050))))

(assert (=> b!8055130 true))

(declare-fun lt!2729039 () ListMap!7315)

(declare-fun lambda!474054 () Int)

(assert (=> bs!1972984 (= (= lt!2729039 acc!1298) (= lambda!474054 lambda!474048))))

(assert (=> bs!1972986 (= (= lt!2729039 lt!2729013) (= lambda!474054 lambda!474051))))

(assert (=> bs!1972987 (= (= lt!2729039 acc!1298) (= lambda!474054 lambda!474049))))

(assert (=> bs!1972987 (= (= lt!2729039 lt!2729017) (= lambda!474054 lambda!474050))))

(assert (=> bs!1972985 (= (= lt!2729039 lt!2728736) (= lambda!474054 lambda!474052))))

(assert (=> b!8055130 (= (= lt!2729039 lt!2728736) (= lambda!474054 lambda!474053))))

(assert (=> b!8055130 true))

(declare-fun bs!1972988 () Bool)

(declare-fun d!2398387 () Bool)

(assert (= bs!1972988 (and d!2398387 b!8055123)))

(declare-fun lt!2729035 () ListMap!7315)

(declare-fun lambda!474055 () Int)

(assert (=> bs!1972988 (= (= lt!2729035 acc!1298) (= lambda!474055 lambda!474048))))

(declare-fun bs!1972989 () Bool)

(assert (= bs!1972989 (and d!2398387 b!8055130)))

(assert (=> bs!1972989 (= (= lt!2729035 lt!2729039) (= lambda!474055 lambda!474054))))

(declare-fun bs!1972990 () Bool)

(assert (= bs!1972990 (and d!2398387 d!2398353)))

(assert (=> bs!1972990 (= (= lt!2729035 lt!2729013) (= lambda!474055 lambda!474051))))

(declare-fun bs!1972991 () Bool)

(assert (= bs!1972991 (and d!2398387 b!8055121)))

(assert (=> bs!1972991 (= (= lt!2729035 acc!1298) (= lambda!474055 lambda!474049))))

(assert (=> bs!1972991 (= (= lt!2729035 lt!2729017) (= lambda!474055 lambda!474050))))

(declare-fun bs!1972992 () Bool)

(assert (= bs!1972992 (and d!2398387 b!8055132)))

(assert (=> bs!1972992 (= (= lt!2729035 lt!2728736) (= lambda!474055 lambda!474052))))

(assert (=> bs!1972989 (= (= lt!2729035 lt!2728736) (= lambda!474055 lambda!474053))))

(assert (=> d!2398387 true))

(declare-fun b!8055129 () Bool)

(declare-fun res!3185879 () Bool)

(declare-fun e!4746714 () Bool)

(assert (=> b!8055129 (=> (not res!3185879) (not e!4746714))))

(assert (=> b!8055129 (= res!3185879 (forall!18514 (toList!11932 lt!2728736) lambda!474055))))

(declare-fun e!4746715 () ListMap!7315)

(assert (=> b!8055130 (= e!4746715 lt!2729039)))

(declare-fun lt!2729044 () ListMap!7315)

(assert (=> b!8055130 (= lt!2729044 (+!2683 lt!2728736 (h!82014 (t!391464 l!14636))))))

(assert (=> b!8055130 (= lt!2729039 (addToMapMapFromBucket!1999 (t!391464 (t!391464 l!14636)) (+!2683 lt!2728736 (h!82014 (t!391464 l!14636)))))))

(declare-fun lt!2729032 () Unit!172179)

(declare-fun call!747356 () Unit!172179)

(assert (=> b!8055130 (= lt!2729032 call!747356)))

(assert (=> b!8055130 (forall!18514 (toList!11932 lt!2728736) lambda!474053)))

(declare-fun lt!2729033 () Unit!172179)

(assert (=> b!8055130 (= lt!2729033 lt!2729032)))

(assert (=> b!8055130 (forall!18514 (toList!11932 lt!2729044) lambda!474054)))

(declare-fun lt!2729043 () Unit!172179)

(declare-fun Unit!172217 () Unit!172179)

(assert (=> b!8055130 (= lt!2729043 Unit!172217)))

(assert (=> b!8055130 (forall!18514 (t!391464 (t!391464 l!14636)) lambda!474054)))

(declare-fun lt!2729038 () Unit!172179)

(declare-fun Unit!172218 () Unit!172179)

(assert (=> b!8055130 (= lt!2729038 Unit!172218)))

(declare-fun lt!2729047 () Unit!172179)

(declare-fun Unit!172219 () Unit!172179)

(assert (=> b!8055130 (= lt!2729047 Unit!172219)))

(declare-fun lt!2729050 () Unit!172179)

(assert (=> b!8055130 (= lt!2729050 (forallContained!4668 (toList!11932 lt!2729044) lambda!474054 (h!82014 (t!391464 l!14636))))))

(assert (=> b!8055130 (contains!21241 lt!2729044 (_1!38759 (h!82014 (t!391464 l!14636))))))

(declare-fun lt!2729049 () Unit!172179)

(declare-fun Unit!172220 () Unit!172179)

(assert (=> b!8055130 (= lt!2729049 Unit!172220)))

(assert (=> b!8055130 (contains!21241 lt!2729039 (_1!38759 (h!82014 (t!391464 l!14636))))))

(declare-fun lt!2729042 () Unit!172179)

(declare-fun Unit!172221 () Unit!172179)

(assert (=> b!8055130 (= lt!2729042 Unit!172221)))

(declare-fun call!747355 () Bool)

(assert (=> b!8055130 call!747355))

(declare-fun lt!2729037 () Unit!172179)

(declare-fun Unit!172222 () Unit!172179)

(assert (=> b!8055130 (= lt!2729037 Unit!172222)))

(assert (=> b!8055130 (forall!18514 (toList!11932 lt!2729044) lambda!474054)))

(declare-fun lt!2729046 () Unit!172179)

(declare-fun Unit!172223 () Unit!172179)

(assert (=> b!8055130 (= lt!2729046 Unit!172223)))

(declare-fun lt!2729045 () Unit!172179)

(declare-fun Unit!172224 () Unit!172179)

(assert (=> b!8055130 (= lt!2729045 Unit!172224)))

(declare-fun lt!2729034 () Unit!172179)

(assert (=> b!8055130 (= lt!2729034 (addForallContainsKeyThenBeforeAdding!1093 lt!2728736 lt!2729039 (_1!38759 (h!82014 (t!391464 l!14636))) (_2!38759 (h!82014 (t!391464 l!14636)))))))

(assert (=> b!8055130 (forall!18514 (toList!11932 lt!2728736) lambda!474054)))

(declare-fun lt!2729051 () Unit!172179)

(assert (=> b!8055130 (= lt!2729051 lt!2729034)))

(declare-fun call!747357 () Bool)

(assert (=> b!8055130 call!747357))

(declare-fun lt!2729048 () Unit!172179)

(declare-fun Unit!172225 () Unit!172179)

(assert (=> b!8055130 (= lt!2729048 Unit!172225)))

(declare-fun res!3185877 () Bool)

(assert (=> b!8055130 (= res!3185877 (forall!18514 (t!391464 l!14636) lambda!474054))))

(declare-fun e!4746713 () Bool)

(assert (=> b!8055130 (=> (not res!3185877) (not e!4746713))))

(assert (=> b!8055130 e!4746713))

(declare-fun lt!2729052 () Unit!172179)

(declare-fun Unit!172226 () Unit!172179)

(assert (=> b!8055130 (= lt!2729052 Unit!172226)))

(declare-fun bm!747350 () Bool)

(assert (=> bm!747350 (= call!747356 (lemmaContainsAllItsOwnKeys!1095 lt!2728736))))

(declare-fun bm!747351 () Bool)

(declare-fun c!1476433 () Bool)

(assert (=> bm!747351 (= call!747357 (forall!18514 (toList!11932 lt!2728736) (ite c!1476433 lambda!474052 lambda!474054)))))

(declare-fun b!8055131 () Bool)

(assert (=> b!8055131 (= e!4746714 (invariantList!1943 (toList!11932 lt!2729035)))))

(assert (=> b!8055132 (= e!4746715 lt!2728736)))

(declare-fun lt!2729041 () Unit!172179)

(assert (=> b!8055132 (= lt!2729041 call!747356)))

(assert (=> b!8055132 call!747355))

(declare-fun lt!2729036 () Unit!172179)

(assert (=> b!8055132 (= lt!2729036 lt!2729041)))

(assert (=> b!8055132 call!747357))

(declare-fun lt!2729040 () Unit!172179)

(declare-fun Unit!172227 () Unit!172179)

(assert (=> b!8055132 (= lt!2729040 Unit!172227)))

(declare-fun bm!747352 () Bool)

(assert (=> bm!747352 (= call!747355 (forall!18514 (ite c!1476433 (toList!11932 lt!2728736) (t!391464 l!14636)) (ite c!1476433 lambda!474052 lambda!474054)))))

(assert (=> d!2398387 e!4746714))

(declare-fun res!3185878 () Bool)

(assert (=> d!2398387 (=> (not res!3185878) (not e!4746714))))

(assert (=> d!2398387 (= res!3185878 (forall!18514 (t!391464 l!14636) lambda!474055))))

(assert (=> d!2398387 (= lt!2729035 e!4746715)))

(assert (=> d!2398387 (= c!1476433 ((_ is Nil!75566) (t!391464 l!14636)))))

(assert (=> d!2398387 (noDuplicateKeys!2718 (t!391464 l!14636))))

(assert (=> d!2398387 (= (addToMapMapFromBucket!1999 (t!391464 l!14636) lt!2728736) lt!2729035)))

(declare-fun b!8055133 () Bool)

(assert (=> b!8055133 (= e!4746713 (forall!18514 (toList!11932 lt!2728736) lambda!474054))))

(assert (= (and d!2398387 c!1476433) b!8055132))

(assert (= (and d!2398387 (not c!1476433)) b!8055130))

(assert (= (and b!8055130 res!3185877) b!8055133))

(assert (= (or b!8055132 b!8055130) bm!747352))

(assert (= (or b!8055132 b!8055130) bm!747351))

(assert (= (or b!8055132 b!8055130) bm!747350))

(assert (= (and d!2398387 res!3185878) b!8055129))

(assert (= (and b!8055129 res!3185879) b!8055131))

(declare-fun m!8407884 () Bool)

(assert (=> b!8055131 m!8407884))

(declare-fun m!8407886 () Bool)

(assert (=> b!8055130 m!8407886))

(declare-fun m!8407888 () Bool)

(assert (=> b!8055130 m!8407888))

(declare-fun m!8407890 () Bool)

(assert (=> b!8055130 m!8407890))

(declare-fun m!8407892 () Bool)

(assert (=> b!8055130 m!8407892))

(declare-fun m!8407894 () Bool)

(assert (=> b!8055130 m!8407894))

(assert (=> b!8055130 m!8407894))

(declare-fun m!8407896 () Bool)

(assert (=> b!8055130 m!8407896))

(declare-fun m!8407898 () Bool)

(assert (=> b!8055130 m!8407898))

(declare-fun m!8407900 () Bool)

(assert (=> b!8055130 m!8407900))

(assert (=> b!8055130 m!8407886))

(declare-fun m!8407902 () Bool)

(assert (=> b!8055130 m!8407902))

(declare-fun m!8407904 () Bool)

(assert (=> b!8055130 m!8407904))

(declare-fun m!8407906 () Bool)

(assert (=> b!8055130 m!8407906))

(declare-fun m!8407908 () Bool)

(assert (=> d!2398387 m!8407908))

(assert (=> d!2398387 m!8407520))

(declare-fun m!8407910 () Bool)

(assert (=> b!8055129 m!8407910))

(declare-fun m!8407912 () Bool)

(assert (=> bm!747350 m!8407912))

(declare-fun m!8407914 () Bool)

(assert (=> bm!747351 m!8407914))

(declare-fun m!8407916 () Bool)

(assert (=> bm!747352 m!8407916))

(assert (=> b!8055133 m!8407898))

(assert (=> b!8054896 d!2398387))

(declare-fun d!2398389 () Bool)

(declare-fun e!4746718 () Bool)

(assert (=> d!2398389 e!4746718))

(declare-fun res!3185885 () Bool)

(assert (=> d!2398389 (=> (not res!3185885) (not e!4746718))))

(declare-fun lt!2729064 () ListMap!7315)

(assert (=> d!2398389 (= res!3185885 (contains!21241 lt!2729064 (_1!38759 (h!82014 l!14636))))))

(declare-fun lt!2729063 () List!75692)

(assert (=> d!2398389 (= lt!2729064 (ListMap!7316 lt!2729063))))

(declare-fun lt!2729061 () Unit!172179)

(declare-fun lt!2729062 () Unit!172179)

(assert (=> d!2398389 (= lt!2729061 lt!2729062)))

(assert (=> d!2398389 (= (getValueByKey!2792 lt!2729063 (_1!38759 (h!82014 l!14636))) (Some!18007 (_2!38759 (h!82014 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1285 (List!75692 K!22843 V!23097) Unit!172179)

(assert (=> d!2398389 (= lt!2729062 (lemmaContainsTupThenGetReturnValue!1285 lt!2729063 (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636))))))

(declare-fun insertNoDuplicatedKeys!793 (List!75692 K!22843 V!23097) List!75692)

(assert (=> d!2398389 (= lt!2729063 (insertNoDuplicatedKeys!793 (toList!11932 acc!1298) (_1!38759 (h!82014 l!14636)) (_2!38759 (h!82014 l!14636))))))

(assert (=> d!2398389 (= (+!2683 acc!1298 (h!82014 l!14636)) lt!2729064)))

(declare-fun b!8055138 () Bool)

(declare-fun res!3185884 () Bool)

(assert (=> b!8055138 (=> (not res!3185884) (not e!4746718))))

(assert (=> b!8055138 (= res!3185884 (= (getValueByKey!2792 (toList!11932 lt!2729064) (_1!38759 (h!82014 l!14636))) (Some!18007 (_2!38759 (h!82014 l!14636)))))))

(declare-fun b!8055139 () Bool)

(assert (=> b!8055139 (= e!4746718 (contains!21242 (toList!11932 lt!2729064) (h!82014 l!14636)))))

(assert (= (and d!2398389 res!3185885) b!8055138))

(assert (= (and b!8055138 res!3185884) b!8055139))

(declare-fun m!8407918 () Bool)

(assert (=> d!2398389 m!8407918))

(declare-fun m!8407920 () Bool)

(assert (=> d!2398389 m!8407920))

(declare-fun m!8407922 () Bool)

(assert (=> d!2398389 m!8407922))

(declare-fun m!8407924 () Bool)

(assert (=> d!2398389 m!8407924))

(declare-fun m!8407926 () Bool)

(assert (=> b!8055138 m!8407926))

(declare-fun m!8407928 () Bool)

(assert (=> b!8055139 m!8407928))

(assert (=> b!8054896 d!2398389))

(assert (=> b!8054907 d!2398325))

(assert (=> b!8054897 d!2398345))

(declare-fun tp!2413856 () Bool)

(declare-fun b!8055144 () Bool)

(declare-fun e!4746721 () Bool)

(assert (=> b!8055144 (= e!4746721 (and tp_is_empty!54947 tp_is_empty!54949 tp!2413856))))

(assert (=> b!8054890 (= tp!2413848 e!4746721)))

(assert (= (and b!8054890 ((_ is Cons!75566) (toList!11932 acc!1298))) b!8055144))

(declare-fun b!8055145 () Bool)

(declare-fun tp!2413857 () Bool)

(declare-fun e!4746722 () Bool)

(assert (=> b!8055145 (= e!4746722 (and tp_is_empty!54947 tp_is_empty!54949 tp!2413857))))

(assert (=> b!8054898 (= tp!2413849 e!4746722)))

(assert (= (and b!8054898 ((_ is Cons!75566) (t!391464 l!14636))) b!8055145))

(check-sat (not b!8055031) (not d!2398333) (not b!8055034) (not b!8055124) (not d!2398331) (not b!8054918) (not b!8055011) (not b!8055000) (not bm!747350) (not b!8054997) (not b!8055128) (not b!8055145) (not d!2398385) (not b!8055017) (not b!8054996) (not b!8055019) (not b!8055025) (not bm!747348) (not b!8054993) (not d!2398327) (not b!8055030) (not b!8054999) (not b!8055005) (not b!8054942) (not b!8055033) (not bm!747347) tp_is_empty!54949 (not d!2398323) (not b!8054994) (not b!8055122) (not d!2398339) (not b!8055121) (not d!2398307) tp_is_empty!54947 (not d!2398353) (not b!8055004) (not bm!747325) (not b!8055133) (not b!8055131) (not bm!747323) (not b!8055001) (not b!8054919) (not d!2398351) (not d!2398335) (not b!8055010) (not b!8055026) (not b!8055144) (not b!8055130) (not b!8055037) (not d!2398389) (not d!2398387) (not b!8055022) (not d!2398349) (not b!8055027) (not d!2398305) (not bm!747352) (not d!2398325) (not b!8055008) (not bm!747322) (not b!8055009) (not b!8055007) (not b!8055120) (not b!8055024) (not d!2398343) (not b!8055035) (not bm!747351) (not d!2398309) (not b!8055139) (not b!8055028) (not b!8054998) (not b!8054913) (not b!8055129) (not b!8055036) (not d!2398299) (not b!8055138) (not bm!747349) (not b!8055002) (not d!2398303) (not bm!747324) (not b!8055021))
(check-sat)
