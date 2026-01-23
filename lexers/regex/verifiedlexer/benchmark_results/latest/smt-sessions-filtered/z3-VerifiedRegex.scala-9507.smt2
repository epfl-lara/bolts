; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502434 () Bool)

(assert start!502434)

(declare-fun b!4833771 () Bool)

(declare-fun res!2059165 () Bool)

(declare-fun e!3020698 () Bool)

(assert (=> b!4833771 (=> (not res!2059165) (not e!3020698))))

(declare-datatypes ((K!16824 0))(
  ( (K!16825 (val!21765 Int)) )
))
(declare-datatypes ((V!17070 0))(
  ( (V!17071 (val!21766 Int)) )
))
(declare-datatypes ((tuple2!58420 0))(
  ( (tuple2!58421 (_1!32504 K!16824) (_2!32504 V!17070)) )
))
(declare-datatypes ((List!55233 0))(
  ( (Nil!55109) (Cons!55109 (h!61543 tuple2!58420) (t!362729 List!55233)) )
))
(declare-fun l!14180 () List!55233)

(get-info :version)

(assert (=> b!4833771 (= res!2059165 (not ((_ is Nil!55109) l!14180)))))

(declare-fun b!4833772 () Bool)

(declare-fun e!3020699 () Bool)

(declare-datatypes ((ListMap!6981 0))(
  ( (ListMap!6982 (toList!7586 List!55233)) )
))
(declare-fun lt!1979489 () ListMap!6981)

(declare-fun key!5666 () K!16824)

(declare-fun contains!18925 (ListMap!6981 K!16824) Bool)

(assert (=> b!4833772 (= e!3020699 (contains!18925 lt!1979489 key!5666))))

(declare-fun b!4833773 () Bool)

(declare-fun res!2059161 () Bool)

(declare-fun e!3020700 () Bool)

(assert (=> b!4833773 (=> res!2059161 e!3020700)))

(assert (=> b!4833773 (= res!2059161 (not (= (_1!32504 (h!61543 l!14180)) key!5666)))))

(declare-fun b!4833774 () Bool)

(declare-fun acc!1183 () ListMap!6981)

(declare-fun addToMapMapFromBucket!1855 (List!55233 ListMap!6981) ListMap!6981)

(declare-fun containsKey!4473 (List!55233 K!16824) Bool)

(assert (=> b!4833774 (= e!3020700 (= (contains!18925 (addToMapMapFromBucket!1855 l!14180 acc!1183) key!5666) (containsKey!4473 l!14180 key!5666)))))

(declare-fun b!4833776 () Bool)

(assert (=> b!4833776 (= e!3020698 (not e!3020700))))

(declare-fun res!2059164 () Bool)

(assert (=> b!4833776 (=> res!2059164 e!3020700)))

(assert (=> b!4833776 (= res!2059164 (contains!18925 acc!1183 key!5666))))

(declare-fun lt!1979491 () ListMap!6981)

(assert (=> b!4833776 (= (contains!18925 lt!1979491 key!5666) e!3020699)))

(declare-fun res!2059163 () Bool)

(assert (=> b!4833776 (=> res!2059163 e!3020699)))

(assert (=> b!4833776 (= res!2059163 (containsKey!4473 (t!362729 l!14180) key!5666))))

(declare-datatypes ((Unit!144262 0))(
  ( (Unit!144263) )
))
(declare-fun lt!1979490 () Unit!144262)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!68 (List!55233 ListMap!6981 K!16824) Unit!144262)

(assert (=> b!4833776 (= lt!1979490 (lemmaAddToMapFromBucketContainsIIFInAccOrL!68 (t!362729 l!14180) lt!1979489 key!5666))))

(assert (=> b!4833776 (= lt!1979491 (addToMapMapFromBucket!1855 (t!362729 l!14180) lt!1979489))))

(declare-fun +!2579 (ListMap!6981 tuple2!58420) ListMap!6981)

(assert (=> b!4833776 (= lt!1979489 (+!2579 acc!1183 (h!61543 l!14180)))))

(declare-fun tp_is_empty!34681 () Bool)

(declare-fun b!4833777 () Bool)

(declare-fun e!3020701 () Bool)

(declare-fun tp!1363158 () Bool)

(declare-fun tp_is_empty!34683 () Bool)

(assert (=> b!4833777 (= e!3020701 (and tp_is_empty!34681 tp_is_empty!34683 tp!1363158))))

(declare-fun res!2059162 () Bool)

(assert (=> start!502434 (=> (not res!2059162) (not e!3020698))))

(declare-fun noDuplicateKeys!2500 (List!55233) Bool)

(assert (=> start!502434 (= res!2059162 (noDuplicateKeys!2500 l!14180))))

(assert (=> start!502434 e!3020698))

(assert (=> start!502434 e!3020701))

(declare-fun e!3020697 () Bool)

(declare-fun inv!70724 (ListMap!6981) Bool)

(assert (=> start!502434 (and (inv!70724 acc!1183) e!3020697)))

(assert (=> start!502434 tp_is_empty!34681))

(declare-fun b!4833775 () Bool)

(declare-fun tp!1363157 () Bool)

(assert (=> b!4833775 (= e!3020697 tp!1363157)))

(assert (= (and start!502434 res!2059162) b!4833771))

(assert (= (and b!4833771 res!2059165) b!4833776))

(assert (= (and b!4833776 (not res!2059163)) b!4833772))

(assert (= (and b!4833776 (not res!2059164)) b!4833773))

(assert (= (and b!4833773 (not res!2059161)) b!4833774))

(assert (= (and start!502434 ((_ is Cons!55109) l!14180)) b!4833777))

(assert (= start!502434 b!4833775))

(declare-fun m!5828374 () Bool)

(assert (=> b!4833772 m!5828374))

(declare-fun m!5828376 () Bool)

(assert (=> b!4833774 m!5828376))

(assert (=> b!4833774 m!5828376))

(declare-fun m!5828378 () Bool)

(assert (=> b!4833774 m!5828378))

(declare-fun m!5828380 () Bool)

(assert (=> b!4833774 m!5828380))

(declare-fun m!5828382 () Bool)

(assert (=> b!4833776 m!5828382))

(declare-fun m!5828384 () Bool)

(assert (=> b!4833776 m!5828384))

(declare-fun m!5828386 () Bool)

(assert (=> b!4833776 m!5828386))

(declare-fun m!5828388 () Bool)

(assert (=> b!4833776 m!5828388))

(declare-fun m!5828390 () Bool)

(assert (=> b!4833776 m!5828390))

(declare-fun m!5828392 () Bool)

(assert (=> b!4833776 m!5828392))

(declare-fun m!5828394 () Bool)

(assert (=> start!502434 m!5828394))

(declare-fun m!5828396 () Bool)

(assert (=> start!502434 m!5828396))

(check-sat (not b!4833774) (not b!4833776) (not b!4833772) (not start!502434) (not b!4833775) tp_is_empty!34683 (not b!4833777) tp_is_empty!34681)
(check-sat)
(get-model)

(declare-fun bm!336878 () Bool)

(declare-fun call!336883 () Bool)

(declare-datatypes ((List!55234 0))(
  ( (Nil!55110) (Cons!55110 (h!61544 K!16824) (t!362730 List!55234)) )
))
(declare-fun e!3020719 () List!55234)

(declare-fun contains!18926 (List!55234 K!16824) Bool)

(assert (=> bm!336878 (= call!336883 (contains!18926 e!3020719 key!5666))))

(declare-fun c!823612 () Bool)

(declare-fun c!823613 () Bool)

(assert (=> bm!336878 (= c!823612 c!823613)))

(declare-fun b!4833796 () Bool)

(declare-fun e!3020714 () Unit!144262)

(declare-fun e!3020718 () Unit!144262)

(assert (=> b!4833796 (= e!3020714 e!3020718)))

(declare-fun c!823614 () Bool)

(assert (=> b!4833796 (= c!823614 call!336883)))

(declare-fun b!4833797 () Bool)

(declare-fun Unit!144264 () Unit!144262)

(assert (=> b!4833797 (= e!3020718 Unit!144264)))

(declare-fun b!4833798 () Bool)

(declare-fun getKeysList!1183 (List!55233) List!55234)

(assert (=> b!4833798 (= e!3020719 (getKeysList!1183 (toList!7586 lt!1979489)))))

(declare-fun d!1549896 () Bool)

(declare-fun e!3020716 () Bool)

(assert (=> d!1549896 e!3020716))

(declare-fun res!2059172 () Bool)

(assert (=> d!1549896 (=> res!2059172 e!3020716)))

(declare-fun e!3020717 () Bool)

(assert (=> d!1549896 (= res!2059172 e!3020717)))

(declare-fun res!2059173 () Bool)

(assert (=> d!1549896 (=> (not res!2059173) (not e!3020717))))

(declare-fun lt!1979510 () Bool)

(assert (=> d!1549896 (= res!2059173 (not lt!1979510))))

(declare-fun lt!1979512 () Bool)

(assert (=> d!1549896 (= lt!1979510 lt!1979512)))

(declare-fun lt!1979509 () Unit!144262)

(assert (=> d!1549896 (= lt!1979509 e!3020714)))

(assert (=> d!1549896 (= c!823613 lt!1979512)))

(declare-fun containsKey!4474 (List!55233 K!16824) Bool)

(assert (=> d!1549896 (= lt!1979512 (containsKey!4474 (toList!7586 lt!1979489) key!5666))))

(assert (=> d!1549896 (= (contains!18925 lt!1979489 key!5666) lt!1979510)))

(declare-fun b!4833799 () Bool)

(declare-fun e!3020715 () Bool)

(declare-fun keys!20318 (ListMap!6981) List!55234)

(assert (=> b!4833799 (= e!3020715 (contains!18926 (keys!20318 lt!1979489) key!5666))))

(declare-fun b!4833800 () Bool)

(assert (=> b!4833800 false))

(declare-fun lt!1979515 () Unit!144262)

(declare-fun lt!1979514 () Unit!144262)

(assert (=> b!4833800 (= lt!1979515 lt!1979514)))

(assert (=> b!4833800 (containsKey!4474 (toList!7586 lt!1979489) key!5666)))

(declare-fun lemmaInGetKeysListThenContainsKey!1183 (List!55233 K!16824) Unit!144262)

(assert (=> b!4833800 (= lt!1979514 (lemmaInGetKeysListThenContainsKey!1183 (toList!7586 lt!1979489) key!5666))))

(declare-fun Unit!144265 () Unit!144262)

(assert (=> b!4833800 (= e!3020718 Unit!144265)))

(declare-fun b!4833801 () Bool)

(assert (=> b!4833801 (= e!3020717 (not (contains!18926 (keys!20318 lt!1979489) key!5666)))))

(declare-fun b!4833802 () Bool)

(assert (=> b!4833802 (= e!3020716 e!3020715)))

(declare-fun res!2059174 () Bool)

(assert (=> b!4833802 (=> (not res!2059174) (not e!3020715))))

(declare-datatypes ((Option!13545 0))(
  ( (None!13544) (Some!13544 (v!49245 V!17070)) )
))
(declare-fun isDefined!10656 (Option!13545) Bool)

(declare-fun getValueByKey!2672 (List!55233 K!16824) Option!13545)

(assert (=> b!4833802 (= res!2059174 (isDefined!10656 (getValueByKey!2672 (toList!7586 lt!1979489) key!5666)))))

(declare-fun b!4833803 () Bool)

(assert (=> b!4833803 (= e!3020719 (keys!20318 lt!1979489))))

(declare-fun b!4833804 () Bool)

(declare-fun lt!1979511 () Unit!144262)

(assert (=> b!4833804 (= e!3020714 lt!1979511)))

(declare-fun lt!1979508 () Unit!144262)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2453 (List!55233 K!16824) Unit!144262)

(assert (=> b!4833804 (= lt!1979508 (lemmaContainsKeyImpliesGetValueByKeyDefined!2453 (toList!7586 lt!1979489) key!5666))))

(assert (=> b!4833804 (isDefined!10656 (getValueByKey!2672 (toList!7586 lt!1979489) key!5666))))

(declare-fun lt!1979513 () Unit!144262)

(assert (=> b!4833804 (= lt!1979513 lt!1979508)))

(declare-fun lemmaInListThenGetKeysListContains!1178 (List!55233 K!16824) Unit!144262)

(assert (=> b!4833804 (= lt!1979511 (lemmaInListThenGetKeysListContains!1178 (toList!7586 lt!1979489) key!5666))))

(assert (=> b!4833804 call!336883))

(assert (= (and d!1549896 c!823613) b!4833804))

(assert (= (and d!1549896 (not c!823613)) b!4833796))

(assert (= (and b!4833796 c!823614) b!4833800))

(assert (= (and b!4833796 (not c!823614)) b!4833797))

(assert (= (or b!4833804 b!4833796) bm!336878))

(assert (= (and bm!336878 c!823612) b!4833798))

(assert (= (and bm!336878 (not c!823612)) b!4833803))

(assert (= (and d!1549896 res!2059173) b!4833801))

(assert (= (and d!1549896 (not res!2059172)) b!4833802))

(assert (= (and b!4833802 res!2059174) b!4833799))

(declare-fun m!5828398 () Bool)

(assert (=> b!4833802 m!5828398))

(assert (=> b!4833802 m!5828398))

(declare-fun m!5828400 () Bool)

(assert (=> b!4833802 m!5828400))

(declare-fun m!5828402 () Bool)

(assert (=> b!4833800 m!5828402))

(declare-fun m!5828404 () Bool)

(assert (=> b!4833800 m!5828404))

(declare-fun m!5828406 () Bool)

(assert (=> b!4833804 m!5828406))

(assert (=> b!4833804 m!5828398))

(assert (=> b!4833804 m!5828398))

(assert (=> b!4833804 m!5828400))

(declare-fun m!5828408 () Bool)

(assert (=> b!4833804 m!5828408))

(declare-fun m!5828410 () Bool)

(assert (=> bm!336878 m!5828410))

(declare-fun m!5828412 () Bool)

(assert (=> b!4833798 m!5828412))

(assert (=> d!1549896 m!5828402))

(declare-fun m!5828414 () Bool)

(assert (=> b!4833803 m!5828414))

(assert (=> b!4833799 m!5828414))

(assert (=> b!4833799 m!5828414))

(declare-fun m!5828416 () Bool)

(assert (=> b!4833799 m!5828416))

(assert (=> b!4833801 m!5828414))

(assert (=> b!4833801 m!5828414))

(assert (=> b!4833801 m!5828416))

(assert (=> b!4833772 d!1549896))

(declare-fun d!1549900 () Bool)

(declare-fun res!2059179 () Bool)

(declare-fun e!3020724 () Bool)

(assert (=> d!1549900 (=> res!2059179 e!3020724)))

(assert (=> d!1549900 (= res!2059179 (not ((_ is Cons!55109) l!14180)))))

(assert (=> d!1549900 (= (noDuplicateKeys!2500 l!14180) e!3020724)))

(declare-fun b!4833809 () Bool)

(declare-fun e!3020725 () Bool)

(assert (=> b!4833809 (= e!3020724 e!3020725)))

(declare-fun res!2059180 () Bool)

(assert (=> b!4833809 (=> (not res!2059180) (not e!3020725))))

(assert (=> b!4833809 (= res!2059180 (not (containsKey!4473 (t!362729 l!14180) (_1!32504 (h!61543 l!14180)))))))

(declare-fun b!4833810 () Bool)

(assert (=> b!4833810 (= e!3020725 (noDuplicateKeys!2500 (t!362729 l!14180)))))

(assert (= (and d!1549900 (not res!2059179)) b!4833809))

(assert (= (and b!4833809 res!2059180) b!4833810))

(declare-fun m!5828418 () Bool)

(assert (=> b!4833809 m!5828418))

(declare-fun m!5828420 () Bool)

(assert (=> b!4833810 m!5828420))

(assert (=> start!502434 d!1549900))

(declare-fun d!1549902 () Bool)

(declare-fun invariantList!1841 (List!55233) Bool)

(assert (=> d!1549902 (= (inv!70724 acc!1183) (invariantList!1841 (toList!7586 acc!1183)))))

(declare-fun bs!1167254 () Bool)

(assert (= bs!1167254 d!1549902))

(declare-fun m!5828422 () Bool)

(assert (=> bs!1167254 m!5828422))

(assert (=> start!502434 d!1549902))

(declare-fun b!4833885 () Bool)

(assert (=> b!4833885 true))

(declare-fun bs!1167256 () Bool)

(declare-fun b!4833886 () Bool)

(assert (= bs!1167256 (and b!4833886 b!4833885)))

(declare-fun lambda!238822 () Int)

(declare-fun lambda!238821 () Int)

(assert (=> bs!1167256 (= lambda!238822 lambda!238821)))

(assert (=> b!4833886 true))

(declare-fun lambda!238823 () Int)

(declare-fun lt!1979632 () ListMap!6981)

(assert (=> bs!1167256 (= (= lt!1979632 lt!1979489) (= lambda!238823 lambda!238821))))

(assert (=> b!4833886 (= (= lt!1979632 lt!1979489) (= lambda!238823 lambda!238822))))

(assert (=> b!4833886 true))

(declare-fun bs!1167257 () Bool)

(declare-fun d!1549904 () Bool)

(assert (= bs!1167257 (and d!1549904 b!4833885)))

(declare-fun lt!1979635 () ListMap!6981)

(declare-fun lambda!238824 () Int)

(assert (=> bs!1167257 (= (= lt!1979635 lt!1979489) (= lambda!238824 lambda!238821))))

(declare-fun bs!1167258 () Bool)

(assert (= bs!1167258 (and d!1549904 b!4833886)))

(assert (=> bs!1167258 (= (= lt!1979635 lt!1979489) (= lambda!238824 lambda!238822))))

(assert (=> bs!1167258 (= (= lt!1979635 lt!1979632) (= lambda!238824 lambda!238823))))

(assert (=> d!1549904 true))

(declare-fun e!3020778 () ListMap!6981)

(assert (=> b!4833885 (= e!3020778 lt!1979489)))

(declare-fun lt!1979639 () Unit!144262)

(declare-fun call!336896 () Unit!144262)

(assert (=> b!4833885 (= lt!1979639 call!336896)))

(declare-fun call!336895 () Bool)

(assert (=> b!4833885 call!336895))

(declare-fun lt!1979620 () Unit!144262)

(assert (=> b!4833885 (= lt!1979620 lt!1979639)))

(declare-fun call!336897 () Bool)

(assert (=> b!4833885 call!336897))

(declare-fun lt!1979631 () Unit!144262)

(declare-fun Unit!144266 () Unit!144262)

(assert (=> b!4833885 (= lt!1979631 Unit!144266)))

(assert (=> b!4833886 (= e!3020778 lt!1979632)))

(declare-fun lt!1979619 () ListMap!6981)

(assert (=> b!4833886 (= lt!1979619 (+!2579 lt!1979489 (h!61543 (t!362729 l!14180))))))

(assert (=> b!4833886 (= lt!1979632 (addToMapMapFromBucket!1855 (t!362729 (t!362729 l!14180)) (+!2579 lt!1979489 (h!61543 (t!362729 l!14180)))))))

(declare-fun lt!1979638 () Unit!144262)

(assert (=> b!4833886 (= lt!1979638 call!336896)))

(declare-fun forall!12700 (List!55233 Int) Bool)

(assert (=> b!4833886 (forall!12700 (toList!7586 lt!1979489) lambda!238822)))

(declare-fun lt!1979622 () Unit!144262)

(assert (=> b!4833886 (= lt!1979622 lt!1979638)))

(assert (=> b!4833886 (forall!12700 (toList!7586 lt!1979619) lambda!238823)))

(declare-fun lt!1979636 () Unit!144262)

(declare-fun Unit!144267 () Unit!144262)

(assert (=> b!4833886 (= lt!1979636 Unit!144267)))

(assert (=> b!4833886 call!336897))

(declare-fun lt!1979628 () Unit!144262)

(declare-fun Unit!144268 () Unit!144262)

(assert (=> b!4833886 (= lt!1979628 Unit!144268)))

(declare-fun lt!1979627 () Unit!144262)

(declare-fun Unit!144269 () Unit!144262)

(assert (=> b!4833886 (= lt!1979627 Unit!144269)))

(declare-fun lt!1979621 () Unit!144262)

(declare-fun forallContained!4430 (List!55233 Int tuple2!58420) Unit!144262)

(assert (=> b!4833886 (= lt!1979621 (forallContained!4430 (toList!7586 lt!1979619) lambda!238823 (h!61543 (t!362729 l!14180))))))

(assert (=> b!4833886 (contains!18925 lt!1979619 (_1!32504 (h!61543 (t!362729 l!14180))))))

(declare-fun lt!1979623 () Unit!144262)

(declare-fun Unit!144270 () Unit!144262)

(assert (=> b!4833886 (= lt!1979623 Unit!144270)))

(assert (=> b!4833886 (contains!18925 lt!1979632 (_1!32504 (h!61543 (t!362729 l!14180))))))

(declare-fun lt!1979624 () Unit!144262)

(declare-fun Unit!144271 () Unit!144262)

(assert (=> b!4833886 (= lt!1979624 Unit!144271)))

(assert (=> b!4833886 (forall!12700 (t!362729 l!14180) lambda!238823)))

(declare-fun lt!1979637 () Unit!144262)

(declare-fun Unit!144272 () Unit!144262)

(assert (=> b!4833886 (= lt!1979637 Unit!144272)))

(assert (=> b!4833886 (forall!12700 (toList!7586 lt!1979619) lambda!238823)))

(declare-fun lt!1979634 () Unit!144262)

(declare-fun Unit!144273 () Unit!144262)

(assert (=> b!4833886 (= lt!1979634 Unit!144273)))

(declare-fun lt!1979625 () Unit!144262)

(declare-fun Unit!144274 () Unit!144262)

(assert (=> b!4833886 (= lt!1979625 Unit!144274)))

(declare-fun lt!1979629 () Unit!144262)

(declare-fun addForallContainsKeyThenBeforeAdding!1017 (ListMap!6981 ListMap!6981 K!16824 V!17070) Unit!144262)

(assert (=> b!4833886 (= lt!1979629 (addForallContainsKeyThenBeforeAdding!1017 lt!1979489 lt!1979632 (_1!32504 (h!61543 (t!362729 l!14180))) (_2!32504 (h!61543 (t!362729 l!14180)))))))

(assert (=> b!4833886 (forall!12700 (toList!7586 lt!1979489) lambda!238823)))

(declare-fun lt!1979630 () Unit!144262)

(assert (=> b!4833886 (= lt!1979630 lt!1979629)))

(assert (=> b!4833886 (forall!12700 (toList!7586 lt!1979489) lambda!238823)))

(declare-fun lt!1979626 () Unit!144262)

(declare-fun Unit!144275 () Unit!144262)

(assert (=> b!4833886 (= lt!1979626 Unit!144275)))

(declare-fun res!2059218 () Bool)

(assert (=> b!4833886 (= res!2059218 (forall!12700 (t!362729 l!14180) lambda!238823))))

(declare-fun e!3020777 () Bool)

(assert (=> b!4833886 (=> (not res!2059218) (not e!3020777))))

(assert (=> b!4833886 e!3020777))

(declare-fun lt!1979633 () Unit!144262)

(declare-fun Unit!144276 () Unit!144262)

(assert (=> b!4833886 (= lt!1979633 Unit!144276)))

(declare-fun bm!336890 () Bool)

(declare-fun c!823634 () Bool)

(assert (=> bm!336890 (= call!336895 (forall!12700 (toList!7586 lt!1979489) (ite c!823634 lambda!238821 lambda!238823)))))

(declare-fun b!4833887 () Bool)

(assert (=> b!4833887 (= e!3020777 call!336895)))

(declare-fun b!4833888 () Bool)

(declare-fun e!3020776 () Bool)

(assert (=> b!4833888 (= e!3020776 (invariantList!1841 (toList!7586 lt!1979635)))))

(declare-fun bm!336891 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1018 (ListMap!6981) Unit!144262)

(assert (=> bm!336891 (= call!336896 (lemmaContainsAllItsOwnKeys!1018 lt!1979489))))

(assert (=> d!1549904 e!3020776))

(declare-fun res!2059219 () Bool)

(assert (=> d!1549904 (=> (not res!2059219) (not e!3020776))))

(assert (=> d!1549904 (= res!2059219 (forall!12700 (t!362729 l!14180) lambda!238824))))

(assert (=> d!1549904 (= lt!1979635 e!3020778)))

(assert (=> d!1549904 (= c!823634 ((_ is Nil!55109) (t!362729 l!14180)))))

(assert (=> d!1549904 (noDuplicateKeys!2500 (t!362729 l!14180))))

(assert (=> d!1549904 (= (addToMapMapFromBucket!1855 (t!362729 l!14180) lt!1979489) lt!1979635)))

(declare-fun b!4833889 () Bool)

(declare-fun res!2059217 () Bool)

(assert (=> b!4833889 (=> (not res!2059217) (not e!3020776))))

(assert (=> b!4833889 (= res!2059217 (forall!12700 (toList!7586 lt!1979489) lambda!238824))))

(declare-fun bm!336892 () Bool)

(assert (=> bm!336892 (= call!336897 (forall!12700 (ite c!823634 (toList!7586 lt!1979489) (t!362729 (t!362729 l!14180))) (ite c!823634 lambda!238821 lambda!238823)))))

(assert (= (and d!1549904 c!823634) b!4833885))

(assert (= (and d!1549904 (not c!823634)) b!4833886))

(assert (= (and b!4833886 res!2059218) b!4833887))

(assert (= (or b!4833885 b!4833887) bm!336890))

(assert (= (or b!4833885 b!4833886) bm!336892))

(assert (= (or b!4833885 b!4833886) bm!336891))

(assert (= (and d!1549904 res!2059219) b!4833889))

(assert (= (and b!4833889 res!2059217) b!4833888))

(declare-fun m!5828506 () Bool)

(assert (=> bm!336890 m!5828506))

(declare-fun m!5828508 () Bool)

(assert (=> bm!336892 m!5828508))

(declare-fun m!5828510 () Bool)

(assert (=> d!1549904 m!5828510))

(assert (=> d!1549904 m!5828420))

(declare-fun m!5828512 () Bool)

(assert (=> b!4833888 m!5828512))

(declare-fun m!5828514 () Bool)

(assert (=> b!4833889 m!5828514))

(declare-fun m!5828516 () Bool)

(assert (=> b!4833886 m!5828516))

(declare-fun m!5828518 () Bool)

(assert (=> b!4833886 m!5828518))

(declare-fun m!5828520 () Bool)

(assert (=> b!4833886 m!5828520))

(declare-fun m!5828522 () Bool)

(assert (=> b!4833886 m!5828522))

(declare-fun m!5828524 () Bool)

(assert (=> b!4833886 m!5828524))

(assert (=> b!4833886 m!5828516))

(assert (=> b!4833886 m!5828524))

(declare-fun m!5828526 () Bool)

(assert (=> b!4833886 m!5828526))

(declare-fun m!5828528 () Bool)

(assert (=> b!4833886 m!5828528))

(assert (=> b!4833886 m!5828528))

(declare-fun m!5828530 () Bool)

(assert (=> b!4833886 m!5828530))

(assert (=> b!4833886 m!5828522))

(declare-fun m!5828532 () Bool)

(assert (=> b!4833886 m!5828532))

(declare-fun m!5828534 () Bool)

(assert (=> b!4833886 m!5828534))

(declare-fun m!5828536 () Bool)

(assert (=> bm!336891 m!5828536))

(assert (=> b!4833776 d!1549904))

(declare-fun bm!336893 () Bool)

(declare-fun call!336898 () Bool)

(declare-fun e!3020784 () List!55234)

(assert (=> bm!336893 (= call!336898 (contains!18926 e!3020784 key!5666))))

(declare-fun c!823635 () Bool)

(declare-fun c!823636 () Bool)

(assert (=> bm!336893 (= c!823635 c!823636)))

(declare-fun b!4833892 () Bool)

(declare-fun e!3020779 () Unit!144262)

(declare-fun e!3020783 () Unit!144262)

(assert (=> b!4833892 (= e!3020779 e!3020783)))

(declare-fun c!823637 () Bool)

(assert (=> b!4833892 (= c!823637 call!336898)))

(declare-fun b!4833893 () Bool)

(declare-fun Unit!144277 () Unit!144262)

(assert (=> b!4833893 (= e!3020783 Unit!144277)))

(declare-fun b!4833894 () Bool)

(assert (=> b!4833894 (= e!3020784 (getKeysList!1183 (toList!7586 acc!1183)))))

(declare-fun d!1549920 () Bool)

(declare-fun e!3020781 () Bool)

(assert (=> d!1549920 e!3020781))

(declare-fun res!2059220 () Bool)

(assert (=> d!1549920 (=> res!2059220 e!3020781)))

(declare-fun e!3020782 () Bool)

(assert (=> d!1549920 (= res!2059220 e!3020782)))

(declare-fun res!2059221 () Bool)

(assert (=> d!1549920 (=> (not res!2059221) (not e!3020782))))

(declare-fun lt!1979642 () Bool)

(assert (=> d!1549920 (= res!2059221 (not lt!1979642))))

(declare-fun lt!1979644 () Bool)

(assert (=> d!1549920 (= lt!1979642 lt!1979644)))

(declare-fun lt!1979641 () Unit!144262)

(assert (=> d!1549920 (= lt!1979641 e!3020779)))

(assert (=> d!1549920 (= c!823636 lt!1979644)))

(assert (=> d!1549920 (= lt!1979644 (containsKey!4474 (toList!7586 acc!1183) key!5666))))

(assert (=> d!1549920 (= (contains!18925 acc!1183 key!5666) lt!1979642)))

(declare-fun b!4833895 () Bool)

(declare-fun e!3020780 () Bool)

(assert (=> b!4833895 (= e!3020780 (contains!18926 (keys!20318 acc!1183) key!5666))))

(declare-fun b!4833896 () Bool)

(assert (=> b!4833896 false))

(declare-fun lt!1979647 () Unit!144262)

(declare-fun lt!1979646 () Unit!144262)

(assert (=> b!4833896 (= lt!1979647 lt!1979646)))

(assert (=> b!4833896 (containsKey!4474 (toList!7586 acc!1183) key!5666)))

(assert (=> b!4833896 (= lt!1979646 (lemmaInGetKeysListThenContainsKey!1183 (toList!7586 acc!1183) key!5666))))

(declare-fun Unit!144278 () Unit!144262)

(assert (=> b!4833896 (= e!3020783 Unit!144278)))

(declare-fun b!4833897 () Bool)

(assert (=> b!4833897 (= e!3020782 (not (contains!18926 (keys!20318 acc!1183) key!5666)))))

(declare-fun b!4833898 () Bool)

(assert (=> b!4833898 (= e!3020781 e!3020780)))

(declare-fun res!2059222 () Bool)

(assert (=> b!4833898 (=> (not res!2059222) (not e!3020780))))

(assert (=> b!4833898 (= res!2059222 (isDefined!10656 (getValueByKey!2672 (toList!7586 acc!1183) key!5666)))))

(declare-fun b!4833899 () Bool)

(assert (=> b!4833899 (= e!3020784 (keys!20318 acc!1183))))

(declare-fun b!4833900 () Bool)

(declare-fun lt!1979643 () Unit!144262)

(assert (=> b!4833900 (= e!3020779 lt!1979643)))

(declare-fun lt!1979640 () Unit!144262)

(assert (=> b!4833900 (= lt!1979640 (lemmaContainsKeyImpliesGetValueByKeyDefined!2453 (toList!7586 acc!1183) key!5666))))

(assert (=> b!4833900 (isDefined!10656 (getValueByKey!2672 (toList!7586 acc!1183) key!5666))))

(declare-fun lt!1979645 () Unit!144262)

(assert (=> b!4833900 (= lt!1979645 lt!1979640)))

(assert (=> b!4833900 (= lt!1979643 (lemmaInListThenGetKeysListContains!1178 (toList!7586 acc!1183) key!5666))))

(assert (=> b!4833900 call!336898))

(assert (= (and d!1549920 c!823636) b!4833900))

(assert (= (and d!1549920 (not c!823636)) b!4833892))

(assert (= (and b!4833892 c!823637) b!4833896))

(assert (= (and b!4833892 (not c!823637)) b!4833893))

(assert (= (or b!4833900 b!4833892) bm!336893))

(assert (= (and bm!336893 c!823635) b!4833894))

(assert (= (and bm!336893 (not c!823635)) b!4833899))

(assert (= (and d!1549920 res!2059221) b!4833897))

(assert (= (and d!1549920 (not res!2059220)) b!4833898))

(assert (= (and b!4833898 res!2059222) b!4833895))

(declare-fun m!5828538 () Bool)

(assert (=> b!4833898 m!5828538))

(assert (=> b!4833898 m!5828538))

(declare-fun m!5828540 () Bool)

(assert (=> b!4833898 m!5828540))

(declare-fun m!5828542 () Bool)

(assert (=> b!4833896 m!5828542))

(declare-fun m!5828544 () Bool)

(assert (=> b!4833896 m!5828544))

(declare-fun m!5828546 () Bool)

(assert (=> b!4833900 m!5828546))

(assert (=> b!4833900 m!5828538))

(assert (=> b!4833900 m!5828538))

(assert (=> b!4833900 m!5828540))

(declare-fun m!5828548 () Bool)

(assert (=> b!4833900 m!5828548))

(declare-fun m!5828550 () Bool)

(assert (=> bm!336893 m!5828550))

(declare-fun m!5828552 () Bool)

(assert (=> b!4833894 m!5828552))

(assert (=> d!1549920 m!5828542))

(declare-fun m!5828554 () Bool)

(assert (=> b!4833899 m!5828554))

(assert (=> b!4833895 m!5828554))

(assert (=> b!4833895 m!5828554))

(declare-fun m!5828556 () Bool)

(assert (=> b!4833895 m!5828556))

(assert (=> b!4833897 m!5828554))

(assert (=> b!4833897 m!5828554))

(assert (=> b!4833897 m!5828556))

(assert (=> b!4833776 d!1549920))

(declare-fun d!1549922 () Bool)

(declare-fun e!3020787 () Bool)

(assert (=> d!1549922 e!3020787))

(declare-fun res!2059228 () Bool)

(assert (=> d!1549922 (=> (not res!2059228) (not e!3020787))))

(declare-fun lt!1979656 () ListMap!6981)

(assert (=> d!1549922 (= res!2059228 (contains!18925 lt!1979656 (_1!32504 (h!61543 l!14180))))))

(declare-fun lt!1979659 () List!55233)

(assert (=> d!1549922 (= lt!1979656 (ListMap!6982 lt!1979659))))

(declare-fun lt!1979658 () Unit!144262)

(declare-fun lt!1979657 () Unit!144262)

(assert (=> d!1549922 (= lt!1979658 lt!1979657)))

(assert (=> d!1549922 (= (getValueByKey!2672 lt!1979659 (_1!32504 (h!61543 l!14180))) (Some!13544 (_2!32504 (h!61543 l!14180))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1242 (List!55233 K!16824 V!17070) Unit!144262)

(assert (=> d!1549922 (= lt!1979657 (lemmaContainsTupThenGetReturnValue!1242 lt!1979659 (_1!32504 (h!61543 l!14180)) (_2!32504 (h!61543 l!14180))))))

(declare-fun insertNoDuplicatedKeys!750 (List!55233 K!16824 V!17070) List!55233)

(assert (=> d!1549922 (= lt!1979659 (insertNoDuplicatedKeys!750 (toList!7586 acc!1183) (_1!32504 (h!61543 l!14180)) (_2!32504 (h!61543 l!14180))))))

(assert (=> d!1549922 (= (+!2579 acc!1183 (h!61543 l!14180)) lt!1979656)))

(declare-fun b!4833905 () Bool)

(declare-fun res!2059227 () Bool)

(assert (=> b!4833905 (=> (not res!2059227) (not e!3020787))))

(assert (=> b!4833905 (= res!2059227 (= (getValueByKey!2672 (toList!7586 lt!1979656) (_1!32504 (h!61543 l!14180))) (Some!13544 (_2!32504 (h!61543 l!14180)))))))

(declare-fun b!4833906 () Bool)

(declare-fun contains!18927 (List!55233 tuple2!58420) Bool)

(assert (=> b!4833906 (= e!3020787 (contains!18927 (toList!7586 lt!1979656) (h!61543 l!14180)))))

(assert (= (and d!1549922 res!2059228) b!4833905))

(assert (= (and b!4833905 res!2059227) b!4833906))

(declare-fun m!5828558 () Bool)

(assert (=> d!1549922 m!5828558))

(declare-fun m!5828560 () Bool)

(assert (=> d!1549922 m!5828560))

(declare-fun m!5828562 () Bool)

(assert (=> d!1549922 m!5828562))

(declare-fun m!5828564 () Bool)

(assert (=> d!1549922 m!5828564))

(declare-fun m!5828566 () Bool)

(assert (=> b!4833905 m!5828566))

(declare-fun m!5828568 () Bool)

(assert (=> b!4833906 m!5828568))

(assert (=> b!4833776 d!1549922))

(declare-fun bm!336894 () Bool)

(declare-fun call!336899 () Bool)

(declare-fun e!3020793 () List!55234)

(assert (=> bm!336894 (= call!336899 (contains!18926 e!3020793 key!5666))))

(declare-fun c!823638 () Bool)

(declare-fun c!823639 () Bool)

(assert (=> bm!336894 (= c!823638 c!823639)))

(declare-fun b!4833907 () Bool)

(declare-fun e!3020788 () Unit!144262)

(declare-fun e!3020792 () Unit!144262)

(assert (=> b!4833907 (= e!3020788 e!3020792)))

(declare-fun c!823640 () Bool)

(assert (=> b!4833907 (= c!823640 call!336899)))

(declare-fun b!4833908 () Bool)

(declare-fun Unit!144281 () Unit!144262)

(assert (=> b!4833908 (= e!3020792 Unit!144281)))

(declare-fun b!4833909 () Bool)

(assert (=> b!4833909 (= e!3020793 (getKeysList!1183 (toList!7586 lt!1979491)))))

(declare-fun d!1549924 () Bool)

(declare-fun e!3020790 () Bool)

(assert (=> d!1549924 e!3020790))

(declare-fun res!2059229 () Bool)

(assert (=> d!1549924 (=> res!2059229 e!3020790)))

(declare-fun e!3020791 () Bool)

(assert (=> d!1549924 (= res!2059229 e!3020791)))

(declare-fun res!2059230 () Bool)

(assert (=> d!1549924 (=> (not res!2059230) (not e!3020791))))

(declare-fun lt!1979662 () Bool)

(assert (=> d!1549924 (= res!2059230 (not lt!1979662))))

(declare-fun lt!1979664 () Bool)

(assert (=> d!1549924 (= lt!1979662 lt!1979664)))

(declare-fun lt!1979661 () Unit!144262)

(assert (=> d!1549924 (= lt!1979661 e!3020788)))

(assert (=> d!1549924 (= c!823639 lt!1979664)))

(assert (=> d!1549924 (= lt!1979664 (containsKey!4474 (toList!7586 lt!1979491) key!5666))))

(assert (=> d!1549924 (= (contains!18925 lt!1979491 key!5666) lt!1979662)))

(declare-fun b!4833910 () Bool)

(declare-fun e!3020789 () Bool)

(assert (=> b!4833910 (= e!3020789 (contains!18926 (keys!20318 lt!1979491) key!5666))))

(declare-fun b!4833911 () Bool)

(assert (=> b!4833911 false))

(declare-fun lt!1979667 () Unit!144262)

(declare-fun lt!1979666 () Unit!144262)

(assert (=> b!4833911 (= lt!1979667 lt!1979666)))

(assert (=> b!4833911 (containsKey!4474 (toList!7586 lt!1979491) key!5666)))

(assert (=> b!4833911 (= lt!1979666 (lemmaInGetKeysListThenContainsKey!1183 (toList!7586 lt!1979491) key!5666))))

(declare-fun Unit!144282 () Unit!144262)

(assert (=> b!4833911 (= e!3020792 Unit!144282)))

(declare-fun b!4833912 () Bool)

(assert (=> b!4833912 (= e!3020791 (not (contains!18926 (keys!20318 lt!1979491) key!5666)))))

(declare-fun b!4833913 () Bool)

(assert (=> b!4833913 (= e!3020790 e!3020789)))

(declare-fun res!2059231 () Bool)

(assert (=> b!4833913 (=> (not res!2059231) (not e!3020789))))

(assert (=> b!4833913 (= res!2059231 (isDefined!10656 (getValueByKey!2672 (toList!7586 lt!1979491) key!5666)))))

(declare-fun b!4833914 () Bool)

(assert (=> b!4833914 (= e!3020793 (keys!20318 lt!1979491))))

(declare-fun b!4833915 () Bool)

(declare-fun lt!1979663 () Unit!144262)

(assert (=> b!4833915 (= e!3020788 lt!1979663)))

(declare-fun lt!1979660 () Unit!144262)

(assert (=> b!4833915 (= lt!1979660 (lemmaContainsKeyImpliesGetValueByKeyDefined!2453 (toList!7586 lt!1979491) key!5666))))

(assert (=> b!4833915 (isDefined!10656 (getValueByKey!2672 (toList!7586 lt!1979491) key!5666))))

(declare-fun lt!1979665 () Unit!144262)

(assert (=> b!4833915 (= lt!1979665 lt!1979660)))

(assert (=> b!4833915 (= lt!1979663 (lemmaInListThenGetKeysListContains!1178 (toList!7586 lt!1979491) key!5666))))

(assert (=> b!4833915 call!336899))

(assert (= (and d!1549924 c!823639) b!4833915))

(assert (= (and d!1549924 (not c!823639)) b!4833907))

(assert (= (and b!4833907 c!823640) b!4833911))

(assert (= (and b!4833907 (not c!823640)) b!4833908))

(assert (= (or b!4833915 b!4833907) bm!336894))

(assert (= (and bm!336894 c!823638) b!4833909))

(assert (= (and bm!336894 (not c!823638)) b!4833914))

(assert (= (and d!1549924 res!2059230) b!4833912))

(assert (= (and d!1549924 (not res!2059229)) b!4833913))

(assert (= (and b!4833913 res!2059231) b!4833910))

(declare-fun m!5828570 () Bool)

(assert (=> b!4833913 m!5828570))

(assert (=> b!4833913 m!5828570))

(declare-fun m!5828572 () Bool)

(assert (=> b!4833913 m!5828572))

(declare-fun m!5828574 () Bool)

(assert (=> b!4833911 m!5828574))

(declare-fun m!5828576 () Bool)

(assert (=> b!4833911 m!5828576))

(declare-fun m!5828578 () Bool)

(assert (=> b!4833915 m!5828578))

(assert (=> b!4833915 m!5828570))

(assert (=> b!4833915 m!5828570))

(assert (=> b!4833915 m!5828572))

(declare-fun m!5828580 () Bool)

(assert (=> b!4833915 m!5828580))

(declare-fun m!5828582 () Bool)

(assert (=> bm!336894 m!5828582))

(declare-fun m!5828584 () Bool)

(assert (=> b!4833909 m!5828584))

(assert (=> d!1549924 m!5828574))

(declare-fun m!5828586 () Bool)

(assert (=> b!4833914 m!5828586))

(assert (=> b!4833910 m!5828586))

(assert (=> b!4833910 m!5828586))

(declare-fun m!5828588 () Bool)

(assert (=> b!4833910 m!5828588))

(assert (=> b!4833912 m!5828586))

(assert (=> b!4833912 m!5828586))

(assert (=> b!4833912 m!5828588))

(assert (=> b!4833776 d!1549924))

(declare-fun d!1549926 () Bool)

(declare-fun e!3020796 () Bool)

(assert (=> d!1549926 (= (contains!18925 (addToMapMapFromBucket!1855 (t!362729 l!14180) lt!1979489) key!5666) e!3020796)))

(declare-fun res!2059234 () Bool)

(assert (=> d!1549926 (=> res!2059234 e!3020796)))

(assert (=> d!1549926 (= res!2059234 (containsKey!4473 (t!362729 l!14180) key!5666))))

(declare-fun lt!1979670 () Unit!144262)

(declare-fun choose!35307 (List!55233 ListMap!6981 K!16824) Unit!144262)

(assert (=> d!1549926 (= lt!1979670 (choose!35307 (t!362729 l!14180) lt!1979489 key!5666))))

(assert (=> d!1549926 (noDuplicateKeys!2500 (t!362729 l!14180))))

(assert (=> d!1549926 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!68 (t!362729 l!14180) lt!1979489 key!5666) lt!1979670)))

(declare-fun b!4833918 () Bool)

(assert (=> b!4833918 (= e!3020796 (contains!18925 lt!1979489 key!5666))))

(assert (= (and d!1549926 (not res!2059234)) b!4833918))

(assert (=> d!1549926 m!5828382))

(declare-fun m!5828590 () Bool)

(assert (=> d!1549926 m!5828590))

(assert (=> d!1549926 m!5828420))

(assert (=> d!1549926 m!5828384))

(assert (=> d!1549926 m!5828382))

(declare-fun m!5828592 () Bool)

(assert (=> d!1549926 m!5828592))

(assert (=> b!4833918 m!5828374))

(assert (=> b!4833776 d!1549926))

(declare-fun d!1549928 () Bool)

(declare-fun res!2059239 () Bool)

(declare-fun e!3020801 () Bool)

(assert (=> d!1549928 (=> res!2059239 e!3020801)))

(assert (=> d!1549928 (= res!2059239 (and ((_ is Cons!55109) (t!362729 l!14180)) (= (_1!32504 (h!61543 (t!362729 l!14180))) key!5666)))))

(assert (=> d!1549928 (= (containsKey!4473 (t!362729 l!14180) key!5666) e!3020801)))

(declare-fun b!4833923 () Bool)

(declare-fun e!3020802 () Bool)

(assert (=> b!4833923 (= e!3020801 e!3020802)))

(declare-fun res!2059240 () Bool)

(assert (=> b!4833923 (=> (not res!2059240) (not e!3020802))))

(assert (=> b!4833923 (= res!2059240 ((_ is Cons!55109) (t!362729 l!14180)))))

(declare-fun b!4833924 () Bool)

(assert (=> b!4833924 (= e!3020802 (containsKey!4473 (t!362729 (t!362729 l!14180)) key!5666))))

(assert (= (and d!1549928 (not res!2059239)) b!4833923))

(assert (= (and b!4833923 res!2059240) b!4833924))

(declare-fun m!5828594 () Bool)

(assert (=> b!4833924 m!5828594))

(assert (=> b!4833776 d!1549928))

(declare-fun bm!336895 () Bool)

(declare-fun call!336900 () Bool)

(declare-fun e!3020808 () List!55234)

(assert (=> bm!336895 (= call!336900 (contains!18926 e!3020808 key!5666))))

(declare-fun c!823641 () Bool)

(declare-fun c!823642 () Bool)

(assert (=> bm!336895 (= c!823641 c!823642)))

(declare-fun b!4833925 () Bool)

(declare-fun e!3020803 () Unit!144262)

(declare-fun e!3020807 () Unit!144262)

(assert (=> b!4833925 (= e!3020803 e!3020807)))

(declare-fun c!823643 () Bool)

(assert (=> b!4833925 (= c!823643 call!336900)))

(declare-fun b!4833926 () Bool)

(declare-fun Unit!144285 () Unit!144262)

(assert (=> b!4833926 (= e!3020807 Unit!144285)))

(declare-fun b!4833927 () Bool)

(assert (=> b!4833927 (= e!3020808 (getKeysList!1183 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183))))))

(declare-fun d!1549930 () Bool)

(declare-fun e!3020805 () Bool)

(assert (=> d!1549930 e!3020805))

(declare-fun res!2059241 () Bool)

(assert (=> d!1549930 (=> res!2059241 e!3020805)))

(declare-fun e!3020806 () Bool)

(assert (=> d!1549930 (= res!2059241 e!3020806)))

(declare-fun res!2059242 () Bool)

(assert (=> d!1549930 (=> (not res!2059242) (not e!3020806))))

(declare-fun lt!1979673 () Bool)

(assert (=> d!1549930 (= res!2059242 (not lt!1979673))))

(declare-fun lt!1979675 () Bool)

(assert (=> d!1549930 (= lt!1979673 lt!1979675)))

(declare-fun lt!1979672 () Unit!144262)

(assert (=> d!1549930 (= lt!1979672 e!3020803)))

(assert (=> d!1549930 (= c!823642 lt!1979675)))

(assert (=> d!1549930 (= lt!1979675 (containsKey!4474 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(assert (=> d!1549930 (= (contains!18925 (addToMapMapFromBucket!1855 l!14180 acc!1183) key!5666) lt!1979673)))

(declare-fun b!4833928 () Bool)

(declare-fun e!3020804 () Bool)

(assert (=> b!4833928 (= e!3020804 (contains!18926 (keys!20318 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(declare-fun b!4833929 () Bool)

(assert (=> b!4833929 false))

(declare-fun lt!1979678 () Unit!144262)

(declare-fun lt!1979677 () Unit!144262)

(assert (=> b!4833929 (= lt!1979678 lt!1979677)))

(assert (=> b!4833929 (containsKey!4474 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666)))

(assert (=> b!4833929 (= lt!1979677 (lemmaInGetKeysListThenContainsKey!1183 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(declare-fun Unit!144286 () Unit!144262)

(assert (=> b!4833929 (= e!3020807 Unit!144286)))

(declare-fun b!4833930 () Bool)

(assert (=> b!4833930 (= e!3020806 (not (contains!18926 (keys!20318 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4833931 () Bool)

(assert (=> b!4833931 (= e!3020805 e!3020804)))

(declare-fun res!2059243 () Bool)

(assert (=> b!4833931 (=> (not res!2059243) (not e!3020804))))

(assert (=> b!4833931 (= res!2059243 (isDefined!10656 (getValueByKey!2672 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666)))))

(declare-fun b!4833932 () Bool)

(assert (=> b!4833932 (= e!3020808 (keys!20318 (addToMapMapFromBucket!1855 l!14180 acc!1183)))))

(declare-fun b!4833933 () Bool)

(declare-fun lt!1979674 () Unit!144262)

(assert (=> b!4833933 (= e!3020803 lt!1979674)))

(declare-fun lt!1979671 () Unit!144262)

(assert (=> b!4833933 (= lt!1979671 (lemmaContainsKeyImpliesGetValueByKeyDefined!2453 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(assert (=> b!4833933 (isDefined!10656 (getValueByKey!2672 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(declare-fun lt!1979676 () Unit!144262)

(assert (=> b!4833933 (= lt!1979676 lt!1979671)))

(assert (=> b!4833933 (= lt!1979674 (lemmaInListThenGetKeysListContains!1178 (toList!7586 (addToMapMapFromBucket!1855 l!14180 acc!1183)) key!5666))))

(assert (=> b!4833933 call!336900))

(assert (= (and d!1549930 c!823642) b!4833933))

(assert (= (and d!1549930 (not c!823642)) b!4833925))

(assert (= (and b!4833925 c!823643) b!4833929))

(assert (= (and b!4833925 (not c!823643)) b!4833926))

(assert (= (or b!4833933 b!4833925) bm!336895))

(assert (= (and bm!336895 c!823641) b!4833927))

(assert (= (and bm!336895 (not c!823641)) b!4833932))

(assert (= (and d!1549930 res!2059242) b!4833930))

(assert (= (and d!1549930 (not res!2059241)) b!4833931))

(assert (= (and b!4833931 res!2059243) b!4833928))

(declare-fun m!5828596 () Bool)

(assert (=> b!4833931 m!5828596))

(assert (=> b!4833931 m!5828596))

(declare-fun m!5828598 () Bool)

(assert (=> b!4833931 m!5828598))

(declare-fun m!5828600 () Bool)

(assert (=> b!4833929 m!5828600))

(declare-fun m!5828602 () Bool)

(assert (=> b!4833929 m!5828602))

(declare-fun m!5828604 () Bool)

(assert (=> b!4833933 m!5828604))

(assert (=> b!4833933 m!5828596))

(assert (=> b!4833933 m!5828596))

(assert (=> b!4833933 m!5828598))

(declare-fun m!5828606 () Bool)

(assert (=> b!4833933 m!5828606))

(declare-fun m!5828608 () Bool)

(assert (=> bm!336895 m!5828608))

(declare-fun m!5828610 () Bool)

(assert (=> b!4833927 m!5828610))

(assert (=> d!1549930 m!5828600))

(assert (=> b!4833932 m!5828376))

(declare-fun m!5828612 () Bool)

(assert (=> b!4833932 m!5828612))

(assert (=> b!4833928 m!5828376))

(assert (=> b!4833928 m!5828612))

(assert (=> b!4833928 m!5828612))

(declare-fun m!5828614 () Bool)

(assert (=> b!4833928 m!5828614))

(assert (=> b!4833930 m!5828376))

(assert (=> b!4833930 m!5828612))

(assert (=> b!4833930 m!5828612))

(assert (=> b!4833930 m!5828614))

(assert (=> b!4833774 d!1549930))

(declare-fun bs!1167259 () Bool)

(declare-fun b!4833934 () Bool)

(assert (= bs!1167259 (and b!4833934 b!4833885)))

(declare-fun lambda!238825 () Int)

(assert (=> bs!1167259 (= (= acc!1183 lt!1979489) (= lambda!238825 lambda!238821))))

(declare-fun bs!1167260 () Bool)

(assert (= bs!1167260 (and b!4833934 b!4833886)))

(assert (=> bs!1167260 (= (= acc!1183 lt!1979489) (= lambda!238825 lambda!238822))))

(assert (=> bs!1167260 (= (= acc!1183 lt!1979632) (= lambda!238825 lambda!238823))))

(declare-fun bs!1167261 () Bool)

(assert (= bs!1167261 (and b!4833934 d!1549904)))

(assert (=> bs!1167261 (= (= acc!1183 lt!1979635) (= lambda!238825 lambda!238824))))

(assert (=> b!4833934 true))

(declare-fun bs!1167262 () Bool)

(declare-fun b!4833935 () Bool)

(assert (= bs!1167262 (and b!4833935 b!4833885)))

(declare-fun lambda!238826 () Int)

(assert (=> bs!1167262 (= (= acc!1183 lt!1979489) (= lambda!238826 lambda!238821))))

(declare-fun bs!1167263 () Bool)

(assert (= bs!1167263 (and b!4833935 b!4833886)))

(assert (=> bs!1167263 (= (= acc!1183 lt!1979489) (= lambda!238826 lambda!238822))))

(assert (=> bs!1167263 (= (= acc!1183 lt!1979632) (= lambda!238826 lambda!238823))))

(declare-fun bs!1167264 () Bool)

(assert (= bs!1167264 (and b!4833935 d!1549904)))

(assert (=> bs!1167264 (= (= acc!1183 lt!1979635) (= lambda!238826 lambda!238824))))

(declare-fun bs!1167265 () Bool)

(assert (= bs!1167265 (and b!4833935 b!4833934)))

(assert (=> bs!1167265 (= lambda!238826 lambda!238825)))

(assert (=> b!4833935 true))

(declare-fun lambda!238827 () Int)

(declare-fun lt!1979692 () ListMap!6981)

(assert (=> bs!1167262 (= (= lt!1979692 lt!1979489) (= lambda!238827 lambda!238821))))

(assert (=> b!4833935 (= (= lt!1979692 acc!1183) (= lambda!238827 lambda!238826))))

(assert (=> bs!1167263 (= (= lt!1979692 lt!1979489) (= lambda!238827 lambda!238822))))

(assert (=> bs!1167263 (= (= lt!1979692 lt!1979632) (= lambda!238827 lambda!238823))))

(assert (=> bs!1167264 (= (= lt!1979692 lt!1979635) (= lambda!238827 lambda!238824))))

(assert (=> bs!1167265 (= (= lt!1979692 acc!1183) (= lambda!238827 lambda!238825))))

(assert (=> b!4833935 true))

(declare-fun bs!1167266 () Bool)

(declare-fun d!1549932 () Bool)

(assert (= bs!1167266 (and d!1549932 b!4833885)))

(declare-fun lt!1979695 () ListMap!6981)

(declare-fun lambda!238828 () Int)

(assert (=> bs!1167266 (= (= lt!1979695 lt!1979489) (= lambda!238828 lambda!238821))))

(declare-fun bs!1167267 () Bool)

(assert (= bs!1167267 (and d!1549932 b!4833935)))

(assert (=> bs!1167267 (= (= lt!1979695 acc!1183) (= lambda!238828 lambda!238826))))

(declare-fun bs!1167268 () Bool)

(assert (= bs!1167268 (and d!1549932 b!4833886)))

(assert (=> bs!1167268 (= (= lt!1979695 lt!1979489) (= lambda!238828 lambda!238822))))

(assert (=> bs!1167268 (= (= lt!1979695 lt!1979632) (= lambda!238828 lambda!238823))))

(assert (=> bs!1167267 (= (= lt!1979695 lt!1979692) (= lambda!238828 lambda!238827))))

(declare-fun bs!1167269 () Bool)

(assert (= bs!1167269 (and d!1549932 d!1549904)))

(assert (=> bs!1167269 (= (= lt!1979695 lt!1979635) (= lambda!238828 lambda!238824))))

(declare-fun bs!1167270 () Bool)

(assert (= bs!1167270 (and d!1549932 b!4833934)))

(assert (=> bs!1167270 (= (= lt!1979695 acc!1183) (= lambda!238828 lambda!238825))))

(assert (=> d!1549932 true))

(declare-fun e!3020811 () ListMap!6981)

(assert (=> b!4833934 (= e!3020811 acc!1183)))

(declare-fun lt!1979699 () Unit!144262)

(declare-fun call!336902 () Unit!144262)

(assert (=> b!4833934 (= lt!1979699 call!336902)))

(declare-fun call!336901 () Bool)

(assert (=> b!4833934 call!336901))

(declare-fun lt!1979680 () Unit!144262)

(assert (=> b!4833934 (= lt!1979680 lt!1979699)))

(declare-fun call!336903 () Bool)

(assert (=> b!4833934 call!336903))

(declare-fun lt!1979691 () Unit!144262)

(declare-fun Unit!144289 () Unit!144262)

(assert (=> b!4833934 (= lt!1979691 Unit!144289)))

(assert (=> b!4833935 (= e!3020811 lt!1979692)))

(declare-fun lt!1979679 () ListMap!6981)

(assert (=> b!4833935 (= lt!1979679 (+!2579 acc!1183 (h!61543 l!14180)))))

(assert (=> b!4833935 (= lt!1979692 (addToMapMapFromBucket!1855 (t!362729 l!14180) (+!2579 acc!1183 (h!61543 l!14180))))))

(declare-fun lt!1979698 () Unit!144262)

(assert (=> b!4833935 (= lt!1979698 call!336902)))

(assert (=> b!4833935 (forall!12700 (toList!7586 acc!1183) lambda!238826)))

(declare-fun lt!1979682 () Unit!144262)

(assert (=> b!4833935 (= lt!1979682 lt!1979698)))

(assert (=> b!4833935 (forall!12700 (toList!7586 lt!1979679) lambda!238827)))

(declare-fun lt!1979696 () Unit!144262)

(declare-fun Unit!144290 () Unit!144262)

(assert (=> b!4833935 (= lt!1979696 Unit!144290)))

(assert (=> b!4833935 call!336903))

(declare-fun lt!1979688 () Unit!144262)

(declare-fun Unit!144291 () Unit!144262)

(assert (=> b!4833935 (= lt!1979688 Unit!144291)))

(declare-fun lt!1979687 () Unit!144262)

(declare-fun Unit!144292 () Unit!144262)

(assert (=> b!4833935 (= lt!1979687 Unit!144292)))

(declare-fun lt!1979681 () Unit!144262)

(assert (=> b!4833935 (= lt!1979681 (forallContained!4430 (toList!7586 lt!1979679) lambda!238827 (h!61543 l!14180)))))

(assert (=> b!4833935 (contains!18925 lt!1979679 (_1!32504 (h!61543 l!14180)))))

(declare-fun lt!1979683 () Unit!144262)

(declare-fun Unit!144293 () Unit!144262)

(assert (=> b!4833935 (= lt!1979683 Unit!144293)))

(assert (=> b!4833935 (contains!18925 lt!1979692 (_1!32504 (h!61543 l!14180)))))

(declare-fun lt!1979684 () Unit!144262)

(declare-fun Unit!144294 () Unit!144262)

(assert (=> b!4833935 (= lt!1979684 Unit!144294)))

(assert (=> b!4833935 (forall!12700 l!14180 lambda!238827)))

(declare-fun lt!1979697 () Unit!144262)

(declare-fun Unit!144295 () Unit!144262)

(assert (=> b!4833935 (= lt!1979697 Unit!144295)))

(assert (=> b!4833935 (forall!12700 (toList!7586 lt!1979679) lambda!238827)))

(declare-fun lt!1979694 () Unit!144262)

(declare-fun Unit!144296 () Unit!144262)

(assert (=> b!4833935 (= lt!1979694 Unit!144296)))

(declare-fun lt!1979685 () Unit!144262)

(declare-fun Unit!144297 () Unit!144262)

(assert (=> b!4833935 (= lt!1979685 Unit!144297)))

(declare-fun lt!1979689 () Unit!144262)

(assert (=> b!4833935 (= lt!1979689 (addForallContainsKeyThenBeforeAdding!1017 acc!1183 lt!1979692 (_1!32504 (h!61543 l!14180)) (_2!32504 (h!61543 l!14180))))))

(assert (=> b!4833935 (forall!12700 (toList!7586 acc!1183) lambda!238827)))

(declare-fun lt!1979690 () Unit!144262)

(assert (=> b!4833935 (= lt!1979690 lt!1979689)))

(assert (=> b!4833935 (forall!12700 (toList!7586 acc!1183) lambda!238827)))

(declare-fun lt!1979686 () Unit!144262)

(declare-fun Unit!144298 () Unit!144262)

(assert (=> b!4833935 (= lt!1979686 Unit!144298)))

(declare-fun res!2059245 () Bool)

(assert (=> b!4833935 (= res!2059245 (forall!12700 l!14180 lambda!238827))))

(declare-fun e!3020810 () Bool)

(assert (=> b!4833935 (=> (not res!2059245) (not e!3020810))))

(assert (=> b!4833935 e!3020810))

(declare-fun lt!1979693 () Unit!144262)

(declare-fun Unit!144299 () Unit!144262)

(assert (=> b!4833935 (= lt!1979693 Unit!144299)))

(declare-fun c!823644 () Bool)

(declare-fun bm!336896 () Bool)

(assert (=> bm!336896 (= call!336901 (forall!12700 (toList!7586 acc!1183) (ite c!823644 lambda!238825 lambda!238827)))))

(declare-fun b!4833936 () Bool)

(assert (=> b!4833936 (= e!3020810 call!336901)))

(declare-fun b!4833937 () Bool)

(declare-fun e!3020809 () Bool)

(assert (=> b!4833937 (= e!3020809 (invariantList!1841 (toList!7586 lt!1979695)))))

(declare-fun bm!336897 () Bool)

(assert (=> bm!336897 (= call!336902 (lemmaContainsAllItsOwnKeys!1018 acc!1183))))

(assert (=> d!1549932 e!3020809))

(declare-fun res!2059246 () Bool)

(assert (=> d!1549932 (=> (not res!2059246) (not e!3020809))))

(assert (=> d!1549932 (= res!2059246 (forall!12700 l!14180 lambda!238828))))

(assert (=> d!1549932 (= lt!1979695 e!3020811)))

(assert (=> d!1549932 (= c!823644 ((_ is Nil!55109) l!14180))))

(assert (=> d!1549932 (noDuplicateKeys!2500 l!14180)))

(assert (=> d!1549932 (= (addToMapMapFromBucket!1855 l!14180 acc!1183) lt!1979695)))

(declare-fun b!4833938 () Bool)

(declare-fun res!2059244 () Bool)

(assert (=> b!4833938 (=> (not res!2059244) (not e!3020809))))

(assert (=> b!4833938 (= res!2059244 (forall!12700 (toList!7586 acc!1183) lambda!238828))))

(declare-fun bm!336898 () Bool)

(assert (=> bm!336898 (= call!336903 (forall!12700 (ite c!823644 (toList!7586 acc!1183) (t!362729 l!14180)) (ite c!823644 lambda!238825 lambda!238827)))))

(assert (= (and d!1549932 c!823644) b!4833934))

(assert (= (and d!1549932 (not c!823644)) b!4833935))

(assert (= (and b!4833935 res!2059245) b!4833936))

(assert (= (or b!4833934 b!4833936) bm!336896))

(assert (= (or b!4833934 b!4833935) bm!336898))

(assert (= (or b!4833934 b!4833935) bm!336897))

(assert (= (and d!1549932 res!2059246) b!4833938))

(assert (= (and b!4833938 res!2059244) b!4833937))

(declare-fun m!5828616 () Bool)

(assert (=> bm!336896 m!5828616))

(declare-fun m!5828618 () Bool)

(assert (=> bm!336898 m!5828618))

(declare-fun m!5828620 () Bool)

(assert (=> d!1549932 m!5828620))

(assert (=> d!1549932 m!5828394))

(declare-fun m!5828622 () Bool)

(assert (=> b!4833937 m!5828622))

(declare-fun m!5828624 () Bool)

(assert (=> b!4833938 m!5828624))

(declare-fun m!5828626 () Bool)

(assert (=> b!4833935 m!5828626))

(declare-fun m!5828628 () Bool)

(assert (=> b!4833935 m!5828628))

(declare-fun m!5828630 () Bool)

(assert (=> b!4833935 m!5828630))

(declare-fun m!5828632 () Bool)

(assert (=> b!4833935 m!5828632))

(declare-fun m!5828634 () Bool)

(assert (=> b!4833935 m!5828634))

(assert (=> b!4833935 m!5828626))

(assert (=> b!4833935 m!5828634))

(declare-fun m!5828636 () Bool)

(assert (=> b!4833935 m!5828636))

(assert (=> b!4833935 m!5828388))

(assert (=> b!4833935 m!5828388))

(declare-fun m!5828638 () Bool)

(assert (=> b!4833935 m!5828638))

(assert (=> b!4833935 m!5828632))

(declare-fun m!5828640 () Bool)

(assert (=> b!4833935 m!5828640))

(declare-fun m!5828642 () Bool)

(assert (=> b!4833935 m!5828642))

(declare-fun m!5828644 () Bool)

(assert (=> bm!336897 m!5828644))

(assert (=> b!4833774 d!1549932))

(declare-fun d!1549934 () Bool)

(declare-fun res!2059247 () Bool)

(declare-fun e!3020812 () Bool)

(assert (=> d!1549934 (=> res!2059247 e!3020812)))

(assert (=> d!1549934 (= res!2059247 (and ((_ is Cons!55109) l!14180) (= (_1!32504 (h!61543 l!14180)) key!5666)))))

(assert (=> d!1549934 (= (containsKey!4473 l!14180 key!5666) e!3020812)))

(declare-fun b!4833939 () Bool)

(declare-fun e!3020813 () Bool)

(assert (=> b!4833939 (= e!3020812 e!3020813)))

(declare-fun res!2059248 () Bool)

(assert (=> b!4833939 (=> (not res!2059248) (not e!3020813))))

(assert (=> b!4833939 (= res!2059248 ((_ is Cons!55109) l!14180))))

(declare-fun b!4833940 () Bool)

(assert (=> b!4833940 (= e!3020813 (containsKey!4473 (t!362729 l!14180) key!5666))))

(assert (= (and d!1549934 (not res!2059247)) b!4833939))

(assert (= (and b!4833939 res!2059248) b!4833940))

(assert (=> b!4833940 m!5828384))

(assert (=> b!4833774 d!1549934))

(declare-fun tp!1363161 () Bool)

(declare-fun e!3020816 () Bool)

(declare-fun b!4833945 () Bool)

(assert (=> b!4833945 (= e!3020816 (and tp_is_empty!34681 tp_is_empty!34683 tp!1363161))))

(assert (=> b!4833777 (= tp!1363158 e!3020816)))

(assert (= (and b!4833777 ((_ is Cons!55109) (t!362729 l!14180))) b!4833945))

(declare-fun tp!1363162 () Bool)

(declare-fun b!4833946 () Bool)

(declare-fun e!3020817 () Bool)

(assert (=> b!4833946 (= e!3020817 (and tp_is_empty!34681 tp_is_empty!34683 tp!1363162))))

(assert (=> b!4833775 (= tp!1363157 e!3020817)))

(assert (= (and b!4833775 ((_ is Cons!55109) (toList!7586 acc!1183))) b!4833946))

(check-sat (not b!4833900) tp_is_empty!34681 (not b!4833937) (not b!4833929) (not b!4833918) (not bm!336897) (not bm!336892) (not bm!336891) (not b!4833894) (not b!4833809) (not d!1549904) (not b!4833798) (not b!4833927) (not b!4833905) (not d!1549930) (not d!1549924) (not b!4833938) (not b!4833932) (not d!1549902) (not bm!336894) (not b!4833896) (not b!4833931) (not bm!336896) (not b!4833800) (not b!4833913) (not b!4833924) (not bm!336898) (not b!4833889) (not b!4833909) (not b!4833910) (not b!4833915) (not b!4833799) (not b!4833935) (not b!4833906) (not b!4833945) (not b!4833803) (not b!4833930) (not d!1549932) (not d!1549896) (not bm!336893) (not b!4833933) (not bm!336895) (not b!4833895) (not b!4833899) (not b!4833888) (not bm!336878) (not d!1549926) (not b!4833804) (not bm!336890) (not b!4833914) (not b!4833946) (not b!4833940) (not b!4833897) (not d!1549920) (not b!4833911) (not b!4833898) (not b!4833810) tp_is_empty!34683 (not b!4833912) (not b!4833802) (not b!4833928) (not d!1549922) (not b!4833886) (not b!4833801))
(check-sat)
