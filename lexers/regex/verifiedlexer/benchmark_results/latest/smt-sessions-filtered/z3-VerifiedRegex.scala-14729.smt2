; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758184 () Bool)

(assert start!758184)

(declare-fun tp!2413600 () Bool)

(declare-fun b!8050757 () Bool)

(declare-fun tp_is_empty!54845 () Bool)

(declare-fun tp_is_empty!54843 () Bool)

(declare-fun e!4743749 () Bool)

(assert (=> b!8050757 (= e!4743749 (and tp_is_empty!54843 tp_is_empty!54845 tp!2413600))))

(declare-fun b!8050758 () Bool)

(declare-fun e!4743744 () Bool)

(declare-fun e!4743750 () Bool)

(assert (=> b!8050758 (= e!4743744 e!4743750)))

(declare-fun res!3183156 () Bool)

(assert (=> b!8050758 (=> (not res!3183156) (not e!4743750))))

(declare-fun e!4743748 () Bool)

(assert (=> b!8050758 (= res!3183156 e!4743748)))

(declare-fun res!3183153 () Bool)

(assert (=> b!8050758 (=> res!3183153 e!4743748)))

(declare-fun e!4743745 () Bool)

(assert (=> b!8050758 (= res!3183153 e!4743745)))

(declare-fun res!3183155 () Bool)

(assert (=> b!8050758 (=> (not res!3183155) (not e!4743745))))

(declare-fun lt!2724643 () Bool)

(assert (=> b!8050758 (= res!3183155 lt!2724643)))

(declare-datatypes ((K!22778 0))(
  ( (K!22779 (val!32895 Int)) )
))
(declare-datatypes ((V!23032 0))(
  ( (V!23033 (val!32896 Int)) )
))
(declare-datatypes ((tuple2!70860 0))(
  ( (tuple2!70861 (_1!38733 K!22778) (_2!38733 V!23032)) )
))
(declare-datatypes ((List!75644 0))(
  ( (Nil!75518) (Cons!75518 (h!81966 tuple2!70860) (t!391416 List!75644)) )
))
(declare-datatypes ((ListMap!7263 0))(
  ( (ListMap!7264 (toList!11906 List!75644)) )
))
(declare-fun acc!1298 () ListMap!7263)

(declare-fun key!6222 () K!22778)

(declare-fun contains!21167 (ListMap!7263 K!22778) Bool)

(assert (=> b!8050758 (= lt!2724643 (contains!21167 acc!1298 key!6222))))

(declare-fun b!8050759 () Bool)

(declare-fun res!3183149 () Bool)

(declare-fun e!4743746 () Bool)

(assert (=> b!8050759 (=> (not res!3183149) (not e!4743746))))

(declare-fun value!3131 () V!23032)

(declare-fun l!14636 () List!75644)

(declare-fun contains!21168 (List!75644 tuple2!70860) Bool)

(assert (=> b!8050759 (= res!3183149 (contains!21168 l!14636 (tuple2!70861 key!6222 value!3131)))))

(declare-fun b!8050760 () Bool)

(declare-fun res!3183152 () Bool)

(assert (=> b!8050760 (=> (not res!3183152) (not e!4743745))))

(declare-fun apply!14419 (ListMap!7263 K!22778) V!23032)

(assert (=> b!8050760 (= res!3183152 (= (apply!14419 acc!1298 key!6222) value!3131))))

(declare-fun b!8050761 () Bool)

(declare-fun res!3183150 () Bool)

(assert (=> b!8050761 (=> (not res!3183150) (not e!4743750))))

(get-info :version)

(assert (=> b!8050761 (= res!3183150 ((_ is Nil!75518) l!14636))))

(declare-fun b!8050762 () Bool)

(declare-fun containsKey!4825 (List!75644 K!22778) Bool)

(assert (=> b!8050762 (= e!4743745 (not (containsKey!4825 l!14636 key!6222)))))

(declare-fun b!8050763 () Bool)

(declare-fun e!4743743 () Bool)

(declare-fun tp!2413601 () Bool)

(assert (=> b!8050763 (= e!4743743 tp!2413601)))

(declare-fun b!8050764 () Bool)

(assert (=> b!8050764 (= e!4743748 e!4743746)))

(declare-fun res!3183151 () Bool)

(assert (=> b!8050764 (=> (not res!3183151) (not e!4743746))))

(assert (=> b!8050764 (= res!3183151 (containsKey!4825 l!14636 key!6222))))

(declare-fun b!8050765 () Bool)

(declare-fun e!4743747 () Bool)

(assert (=> b!8050765 (= e!4743747 e!4743744)))

(declare-fun res!3183157 () Bool)

(assert (=> b!8050765 (=> (not res!3183157) (not e!4743744))))

(declare-fun lt!2724644 () ListMap!7263)

(assert (=> b!8050765 (= res!3183157 (contains!21167 lt!2724644 key!6222))))

(declare-fun addToMapMapFromBucket!1973 (List!75644 ListMap!7263) ListMap!7263)

(assert (=> b!8050765 (= lt!2724644 (addToMapMapFromBucket!1973 l!14636 acc!1298))))

(declare-fun res!3183154 () Bool)

(assert (=> start!758184 (=> (not res!3183154) (not e!4743747))))

(declare-fun noDuplicateKeys!2692 (List!75644) Bool)

(assert (=> start!758184 (= res!3183154 (noDuplicateKeys!2692 l!14636))))

(assert (=> start!758184 e!4743747))

(assert (=> start!758184 e!4743749))

(assert (=> start!758184 tp_is_empty!54843))

(assert (=> start!758184 tp_is_empty!54845))

(declare-fun inv!97267 (ListMap!7263) Bool)

(assert (=> start!758184 (and (inv!97267 acc!1298) e!4743743)))

(declare-fun b!8050766 () Bool)

(assert (=> b!8050766 (= e!4743750 (not (= (apply!14419 lt!2724644 key!6222) value!3131)))))

(declare-fun b!8050767 () Bool)

(assert (=> b!8050767 (= e!4743746 (not lt!2724643))))

(assert (= (and start!758184 res!3183154) b!8050765))

(assert (= (and b!8050765 res!3183157) b!8050758))

(assert (= (and b!8050758 res!3183155) b!8050760))

(assert (= (and b!8050760 res!3183152) b!8050762))

(assert (= (and b!8050758 (not res!3183153)) b!8050764))

(assert (= (and b!8050764 res!3183151) b!8050759))

(assert (= (and b!8050759 res!3183149) b!8050767))

(assert (= (and b!8050758 res!3183156) b!8050761))

(assert (= (and b!8050761 res!3183150) b!8050766))

(assert (= (and start!758184 ((_ is Cons!75518) l!14636)) b!8050757))

(assert (= start!758184 b!8050763))

(declare-fun m!8401688 () Bool)

(assert (=> b!8050760 m!8401688))

(declare-fun m!8401690 () Bool)

(assert (=> b!8050759 m!8401690))

(declare-fun m!8401692 () Bool)

(assert (=> b!8050766 m!8401692))

(declare-fun m!8401694 () Bool)

(assert (=> b!8050764 m!8401694))

(declare-fun m!8401696 () Bool)

(assert (=> b!8050765 m!8401696))

(declare-fun m!8401698 () Bool)

(assert (=> b!8050765 m!8401698))

(assert (=> b!8050762 m!8401694))

(declare-fun m!8401700 () Bool)

(assert (=> start!758184 m!8401700))

(declare-fun m!8401702 () Bool)

(assert (=> start!758184 m!8401702))

(declare-fun m!8401704 () Bool)

(assert (=> b!8050758 m!8401704))

(check-sat (not b!8050765) (not b!8050762) (not b!8050759) tp_is_empty!54843 (not b!8050764) (not b!8050766) (not b!8050757) tp_is_empty!54845 (not b!8050760) (not b!8050758) (not start!758184) (not b!8050763))
(check-sat)
(get-model)

(declare-fun b!8050786 () Bool)

(declare-datatypes ((List!75646 0))(
  ( (Nil!75520) (Cons!75520 (h!81968 K!22778) (t!391418 List!75646)) )
))
(declare-fun e!4743768 () List!75646)

(declare-fun keys!30810 (ListMap!7263) List!75646)

(assert (=> b!8050786 (= e!4743768 (keys!30810 lt!2724644))))

(declare-fun b!8050787 () Bool)

(declare-datatypes ((Unit!171423 0))(
  ( (Unit!171424) )
))
(declare-fun e!4743764 () Unit!171423)

(declare-fun lt!2724661 () Unit!171423)

(assert (=> b!8050787 (= e!4743764 lt!2724661)))

(declare-fun lt!2724665 () Unit!171423)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2541 (List!75644 K!22778) Unit!171423)

(assert (=> b!8050787 (= lt!2724665 (lemmaContainsKeyImpliesGetValueByKeyDefined!2541 (toList!11906 lt!2724644) key!6222))))

(declare-datatypes ((Option!17986 0))(
  ( (None!17985) (Some!17985 (v!55278 V!23032)) )
))
(declare-fun isDefined!14519 (Option!17986) Bool)

(declare-fun getValueByKey!2770 (List!75644 K!22778) Option!17986)

(assert (=> b!8050787 (isDefined!14519 (getValueByKey!2770 (toList!11906 lt!2724644) key!6222))))

(declare-fun lt!2724668 () Unit!171423)

(assert (=> b!8050787 (= lt!2724668 lt!2724665)))

(declare-fun lemmaInListThenGetKeysListContains!1224 (List!75644 K!22778) Unit!171423)

(assert (=> b!8050787 (= lt!2724661 (lemmaInListThenGetKeysListContains!1224 (toList!11906 lt!2724644) key!6222))))

(declare-fun call!746904 () Bool)

(assert (=> b!8050787 call!746904))

(declare-fun bm!746899 () Bool)

(declare-fun contains!21170 (List!75646 K!22778) Bool)

(assert (=> bm!746899 (= call!746904 (contains!21170 e!4743768 key!6222))))

(declare-fun c!1475808 () Bool)

(declare-fun c!1475807 () Bool)

(assert (=> bm!746899 (= c!1475808 c!1475807)))

(declare-fun b!8050788 () Bool)

(declare-fun e!4743766 () Unit!171423)

(assert (=> b!8050788 (= e!4743764 e!4743766)))

(declare-fun c!1475806 () Bool)

(assert (=> b!8050788 (= c!1475806 call!746904)))

(declare-fun b!8050789 () Bool)

(declare-fun getKeysList!1229 (List!75644) List!75646)

(assert (=> b!8050789 (= e!4743768 (getKeysList!1229 (toList!11906 lt!2724644)))))

(declare-fun d!2397158 () Bool)

(declare-fun e!4743767 () Bool)

(assert (=> d!2397158 e!4743767))

(declare-fun res!3183165 () Bool)

(assert (=> d!2397158 (=> res!3183165 e!4743767)))

(declare-fun e!4743765 () Bool)

(assert (=> d!2397158 (= res!3183165 e!4743765)))

(declare-fun res!3183164 () Bool)

(assert (=> d!2397158 (=> (not res!3183164) (not e!4743765))))

(declare-fun lt!2724662 () Bool)

(assert (=> d!2397158 (= res!3183164 (not lt!2724662))))

(declare-fun lt!2724667 () Bool)

(assert (=> d!2397158 (= lt!2724662 lt!2724667)))

(declare-fun lt!2724664 () Unit!171423)

(assert (=> d!2397158 (= lt!2724664 e!4743764)))

(assert (=> d!2397158 (= c!1475807 lt!2724667)))

(declare-fun containsKey!4827 (List!75644 K!22778) Bool)

(assert (=> d!2397158 (= lt!2724667 (containsKey!4827 (toList!11906 lt!2724644) key!6222))))

(assert (=> d!2397158 (= (contains!21167 lt!2724644 key!6222) lt!2724662)))

(declare-fun b!8050790 () Bool)

(declare-fun Unit!171425 () Unit!171423)

(assert (=> b!8050790 (= e!4743766 Unit!171425)))

(declare-fun b!8050791 () Bool)

(assert (=> b!8050791 (= e!4743765 (not (contains!21170 (keys!30810 lt!2724644) key!6222)))))

(declare-fun b!8050792 () Bool)

(declare-fun e!4743763 () Bool)

(assert (=> b!8050792 (= e!4743763 (contains!21170 (keys!30810 lt!2724644) key!6222))))

(declare-fun b!8050793 () Bool)

(assert (=> b!8050793 (= e!4743767 e!4743763)))

(declare-fun res!3183166 () Bool)

(assert (=> b!8050793 (=> (not res!3183166) (not e!4743763))))

(assert (=> b!8050793 (= res!3183166 (isDefined!14519 (getValueByKey!2770 (toList!11906 lt!2724644) key!6222)))))

(declare-fun b!8050794 () Bool)

(assert (=> b!8050794 false))

(declare-fun lt!2724666 () Unit!171423)

(declare-fun lt!2724663 () Unit!171423)

(assert (=> b!8050794 (= lt!2724666 lt!2724663)))

(assert (=> b!8050794 (containsKey!4827 (toList!11906 lt!2724644) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1229 (List!75644 K!22778) Unit!171423)

(assert (=> b!8050794 (= lt!2724663 (lemmaInGetKeysListThenContainsKey!1229 (toList!11906 lt!2724644) key!6222))))

(declare-fun Unit!171426 () Unit!171423)

(assert (=> b!8050794 (= e!4743766 Unit!171426)))

(assert (= (and d!2397158 c!1475807) b!8050787))

(assert (= (and d!2397158 (not c!1475807)) b!8050788))

(assert (= (and b!8050788 c!1475806) b!8050794))

(assert (= (and b!8050788 (not c!1475806)) b!8050790))

(assert (= (or b!8050787 b!8050788) bm!746899))

(assert (= (and bm!746899 c!1475808) b!8050789))

(assert (= (and bm!746899 (not c!1475808)) b!8050786))

(assert (= (and d!2397158 res!3183164) b!8050791))

(assert (= (and d!2397158 (not res!3183165)) b!8050793))

(assert (= (and b!8050793 res!3183166) b!8050792))

(declare-fun m!8401706 () Bool)

(assert (=> bm!746899 m!8401706))

(declare-fun m!8401708 () Bool)

(assert (=> b!8050792 m!8401708))

(assert (=> b!8050792 m!8401708))

(declare-fun m!8401710 () Bool)

(assert (=> b!8050792 m!8401710))

(assert (=> b!8050786 m!8401708))

(declare-fun m!8401712 () Bool)

(assert (=> b!8050789 m!8401712))

(declare-fun m!8401714 () Bool)

(assert (=> b!8050793 m!8401714))

(assert (=> b!8050793 m!8401714))

(declare-fun m!8401716 () Bool)

(assert (=> b!8050793 m!8401716))

(declare-fun m!8401718 () Bool)

(assert (=> b!8050794 m!8401718))

(declare-fun m!8401720 () Bool)

(assert (=> b!8050794 m!8401720))

(assert (=> d!2397158 m!8401718))

(assert (=> b!8050791 m!8401708))

(assert (=> b!8050791 m!8401708))

(assert (=> b!8050791 m!8401710))

(declare-fun m!8401722 () Bool)

(assert (=> b!8050787 m!8401722))

(assert (=> b!8050787 m!8401714))

(assert (=> b!8050787 m!8401714))

(assert (=> b!8050787 m!8401716))

(declare-fun m!8401724 () Bool)

(assert (=> b!8050787 m!8401724))

(assert (=> b!8050765 d!2397158))

(declare-fun b!8050855 () Bool)

(assert (=> b!8050855 true))

(declare-fun bs!1971945 () Bool)

(declare-fun b!8050857 () Bool)

(assert (= bs!1971945 (and b!8050857 b!8050855)))

(declare-fun lambda!473153 () Int)

(declare-fun lambda!473152 () Int)

(assert (=> bs!1971945 (= lambda!473153 lambda!473152)))

(assert (=> b!8050857 true))

(declare-fun lambda!473154 () Int)

(declare-fun lt!2724802 () ListMap!7263)

(assert (=> bs!1971945 (= (= lt!2724802 acc!1298) (= lambda!473154 lambda!473152))))

(assert (=> b!8050857 (= (= lt!2724802 acc!1298) (= lambda!473154 lambda!473153))))

(assert (=> b!8050857 true))

(declare-fun bs!1971946 () Bool)

(declare-fun d!2397162 () Bool)

(assert (= bs!1971946 (and d!2397162 b!8050855)))

(declare-fun lambda!473155 () Int)

(declare-fun lt!2724809 () ListMap!7263)

(assert (=> bs!1971946 (= (= lt!2724809 acc!1298) (= lambda!473155 lambda!473152))))

(declare-fun bs!1971947 () Bool)

(assert (= bs!1971947 (and d!2397162 b!8050857)))

(assert (=> bs!1971947 (= (= lt!2724809 acc!1298) (= lambda!473155 lambda!473153))))

(assert (=> bs!1971947 (= (= lt!2724809 lt!2724802) (= lambda!473155 lambda!473154))))

(assert (=> d!2397162 true))

(declare-fun e!4743809 () ListMap!7263)

(assert (=> b!8050855 (= e!4743809 acc!1298)))

(declare-fun lt!2724803 () Unit!171423)

(declare-fun call!746925 () Unit!171423)

(assert (=> b!8050855 (= lt!2724803 call!746925)))

(declare-fun call!746924 () Bool)

(assert (=> b!8050855 call!746924))

(declare-fun lt!2724798 () Unit!171423)

(assert (=> b!8050855 (= lt!2724798 lt!2724803)))

(declare-fun call!746923 () Bool)

(assert (=> b!8050855 call!746923))

(declare-fun lt!2724804 () Unit!171423)

(declare-fun Unit!171436 () Unit!171423)

(assert (=> b!8050855 (= lt!2724804 Unit!171436)))

(declare-fun b!8050856 () Bool)

(declare-fun e!4743810 () Bool)

(declare-fun invariantList!1921 (List!75644) Bool)

(assert (=> b!8050856 (= e!4743810 (invariantList!1921 (toList!11906 lt!2724809)))))

(assert (=> d!2397162 e!4743810))

(declare-fun res!3183197 () Bool)

(assert (=> d!2397162 (=> (not res!3183197) (not e!4743810))))

(declare-fun forall!18490 (List!75644 Int) Bool)

(assert (=> d!2397162 (= res!3183197 (forall!18490 l!14636 lambda!473155))))

(assert (=> d!2397162 (= lt!2724809 e!4743809)))

(declare-fun c!1475823 () Bool)

(assert (=> d!2397162 (= c!1475823 ((_ is Nil!75518) l!14636))))

(assert (=> d!2397162 (noDuplicateKeys!2692 l!14636)))

(assert (=> d!2397162 (= (addToMapMapFromBucket!1973 l!14636 acc!1298) lt!2724809)))

(assert (=> b!8050857 (= e!4743809 lt!2724802)))

(declare-fun lt!2724799 () ListMap!7263)

(declare-fun +!2657 (ListMap!7263 tuple2!70860) ListMap!7263)

(assert (=> b!8050857 (= lt!2724799 (+!2657 acc!1298 (h!81966 l!14636)))))

(assert (=> b!8050857 (= lt!2724802 (addToMapMapFromBucket!1973 (t!391416 l!14636) (+!2657 acc!1298 (h!81966 l!14636))))))

(declare-fun lt!2724811 () Unit!171423)

(assert (=> b!8050857 (= lt!2724811 call!746925)))

(assert (=> b!8050857 (forall!18490 (toList!11906 acc!1298) lambda!473153)))

(declare-fun lt!2724807 () Unit!171423)

(assert (=> b!8050857 (= lt!2724807 lt!2724811)))

(assert (=> b!8050857 (forall!18490 (toList!11906 lt!2724799) lambda!473154)))

(declare-fun lt!2724816 () Unit!171423)

(declare-fun Unit!171439 () Unit!171423)

(assert (=> b!8050857 (= lt!2724816 Unit!171439)))

(assert (=> b!8050857 (forall!18490 (t!391416 l!14636) lambda!473154)))

(declare-fun lt!2724808 () Unit!171423)

(declare-fun Unit!171440 () Unit!171423)

(assert (=> b!8050857 (= lt!2724808 Unit!171440)))

(declare-fun lt!2724813 () Unit!171423)

(declare-fun Unit!171441 () Unit!171423)

(assert (=> b!8050857 (= lt!2724813 Unit!171441)))

(declare-fun lt!2724806 () Unit!171423)

(declare-fun forallContained!4644 (List!75644 Int tuple2!70860) Unit!171423)

(assert (=> b!8050857 (= lt!2724806 (forallContained!4644 (toList!11906 lt!2724799) lambda!473154 (h!81966 l!14636)))))

(assert (=> b!8050857 (contains!21167 lt!2724799 (_1!38733 (h!81966 l!14636)))))

(declare-fun lt!2724812 () Unit!171423)

(declare-fun Unit!171442 () Unit!171423)

(assert (=> b!8050857 (= lt!2724812 Unit!171442)))

(assert (=> b!8050857 (contains!21167 lt!2724802 (_1!38733 (h!81966 l!14636)))))

(declare-fun lt!2724805 () Unit!171423)

(declare-fun Unit!171443 () Unit!171423)

(assert (=> b!8050857 (= lt!2724805 Unit!171443)))

(assert (=> b!8050857 (forall!18490 l!14636 lambda!473154)))

(declare-fun lt!2724815 () Unit!171423)

(declare-fun Unit!171444 () Unit!171423)

(assert (=> b!8050857 (= lt!2724815 Unit!171444)))

(assert (=> b!8050857 (forall!18490 (toList!11906 lt!2724799) lambda!473154)))

(declare-fun lt!2724800 () Unit!171423)

(declare-fun Unit!171445 () Unit!171423)

(assert (=> b!8050857 (= lt!2724800 Unit!171445)))

(declare-fun lt!2724801 () Unit!171423)

(declare-fun Unit!171446 () Unit!171423)

(assert (=> b!8050857 (= lt!2724801 Unit!171446)))

(declare-fun lt!2724817 () Unit!171423)

(declare-fun addForallContainsKeyThenBeforeAdding!1071 (ListMap!7263 ListMap!7263 K!22778 V!23032) Unit!171423)

(assert (=> b!8050857 (= lt!2724817 (addForallContainsKeyThenBeforeAdding!1071 acc!1298 lt!2724802 (_1!38733 (h!81966 l!14636)) (_2!38733 (h!81966 l!14636))))))

(assert (=> b!8050857 call!746923))

(declare-fun lt!2724814 () Unit!171423)

(assert (=> b!8050857 (= lt!2724814 lt!2724817)))

(assert (=> b!8050857 (forall!18490 (toList!11906 acc!1298) lambda!473154)))

(declare-fun lt!2724818 () Unit!171423)

(declare-fun Unit!171447 () Unit!171423)

(assert (=> b!8050857 (= lt!2724818 Unit!171447)))

(declare-fun res!3183199 () Bool)

(assert (=> b!8050857 (= res!3183199 call!746924)))

(declare-fun e!4743808 () Bool)

(assert (=> b!8050857 (=> (not res!3183199) (not e!4743808))))

(assert (=> b!8050857 e!4743808))

(declare-fun lt!2724810 () Unit!171423)

(declare-fun Unit!171448 () Unit!171423)

(assert (=> b!8050857 (= lt!2724810 Unit!171448)))

(declare-fun bm!746918 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1073 (ListMap!7263) Unit!171423)

(assert (=> bm!746918 (= call!746925 (lemmaContainsAllItsOwnKeys!1073 acc!1298))))

(declare-fun bm!746919 () Bool)

(assert (=> bm!746919 (= call!746924 (forall!18490 (ite c!1475823 (toList!11906 acc!1298) l!14636) (ite c!1475823 lambda!473152 lambda!473154)))))

(declare-fun b!8050858 () Bool)

(assert (=> b!8050858 (= e!4743808 (forall!18490 (toList!11906 acc!1298) lambda!473154))))

(declare-fun bm!746920 () Bool)

(assert (=> bm!746920 (= call!746923 (forall!18490 (toList!11906 acc!1298) (ite c!1475823 lambda!473152 lambda!473154)))))

(declare-fun b!8050859 () Bool)

(declare-fun res!3183198 () Bool)

(assert (=> b!8050859 (=> (not res!3183198) (not e!4743810))))

(assert (=> b!8050859 (= res!3183198 (forall!18490 (toList!11906 acc!1298) lambda!473155))))

(assert (= (and d!2397162 c!1475823) b!8050855))

(assert (= (and d!2397162 (not c!1475823)) b!8050857))

(assert (= (and b!8050857 res!3183199) b!8050858))

(assert (= (or b!8050855 b!8050857) bm!746919))

(assert (= (or b!8050855 b!8050857) bm!746920))

(assert (= (or b!8050855 b!8050857) bm!746918))

(assert (= (and d!2397162 res!3183197) b!8050859))

(assert (= (and b!8050859 res!3183198) b!8050856))

(declare-fun m!8401790 () Bool)

(assert (=> b!8050856 m!8401790))

(declare-fun m!8401792 () Bool)

(assert (=> d!2397162 m!8401792))

(assert (=> d!2397162 m!8401700))

(declare-fun m!8401794 () Bool)

(assert (=> b!8050858 m!8401794))

(declare-fun m!8401796 () Bool)

(assert (=> b!8050857 m!8401796))

(declare-fun m!8401798 () Bool)

(assert (=> b!8050857 m!8401798))

(declare-fun m!8401800 () Bool)

(assert (=> b!8050857 m!8401800))

(declare-fun m!8401802 () Bool)

(assert (=> b!8050857 m!8401802))

(assert (=> b!8050857 m!8401796))

(declare-fun m!8401804 () Bool)

(assert (=> b!8050857 m!8401804))

(declare-fun m!8401806 () Bool)

(assert (=> b!8050857 m!8401806))

(declare-fun m!8401808 () Bool)

(assert (=> b!8050857 m!8401808))

(declare-fun m!8401810 () Bool)

(assert (=> b!8050857 m!8401810))

(assert (=> b!8050857 m!8401794))

(assert (=> b!8050857 m!8401810))

(declare-fun m!8401812 () Bool)

(assert (=> b!8050857 m!8401812))

(declare-fun m!8401814 () Bool)

(assert (=> b!8050857 m!8401814))

(declare-fun m!8401816 () Bool)

(assert (=> bm!746918 m!8401816))

(declare-fun m!8401818 () Bool)

(assert (=> bm!746919 m!8401818))

(declare-fun m!8401820 () Bool)

(assert (=> bm!746920 m!8401820))

(declare-fun m!8401822 () Bool)

(assert (=> b!8050859 m!8401822))

(assert (=> b!8050765 d!2397162))

(declare-fun d!2397176 () Bool)

(declare-fun get!27197 (Option!17986) V!23032)

(assert (=> d!2397176 (= (apply!14419 acc!1298 key!6222) (get!27197 (getValueByKey!2770 (toList!11906 acc!1298) key!6222)))))

(declare-fun bs!1971949 () Bool)

(assert (= bs!1971949 d!2397176))

(declare-fun m!8401830 () Bool)

(assert (=> bs!1971949 m!8401830))

(assert (=> bs!1971949 m!8401830))

(declare-fun m!8401832 () Bool)

(assert (=> bs!1971949 m!8401832))

(assert (=> b!8050760 d!2397176))

(declare-fun b!8050883 () Bool)

(declare-fun e!4743834 () List!75646)

(assert (=> b!8050883 (= e!4743834 (keys!30810 acc!1298))))

(declare-fun b!8050884 () Bool)

(declare-fun e!4743830 () Unit!171423)

(declare-fun lt!2724830 () Unit!171423)

(assert (=> b!8050884 (= e!4743830 lt!2724830)))

(declare-fun lt!2724834 () Unit!171423)

(assert (=> b!8050884 (= lt!2724834 (lemmaContainsKeyImpliesGetValueByKeyDefined!2541 (toList!11906 acc!1298) key!6222))))

(assert (=> b!8050884 (isDefined!14519 (getValueByKey!2770 (toList!11906 acc!1298) key!6222))))

(declare-fun lt!2724837 () Unit!171423)

(assert (=> b!8050884 (= lt!2724837 lt!2724834)))

(assert (=> b!8050884 (= lt!2724830 (lemmaInListThenGetKeysListContains!1224 (toList!11906 acc!1298) key!6222))))

(declare-fun call!746927 () Bool)

(assert (=> b!8050884 call!746927))

(declare-fun bm!746922 () Bool)

(assert (=> bm!746922 (= call!746927 (contains!21170 e!4743834 key!6222))))

(declare-fun c!1475829 () Bool)

(declare-fun c!1475828 () Bool)

(assert (=> bm!746922 (= c!1475829 c!1475828)))

(declare-fun b!8050885 () Bool)

(declare-fun e!4743832 () Unit!171423)

(assert (=> b!8050885 (= e!4743830 e!4743832)))

(declare-fun c!1475827 () Bool)

(assert (=> b!8050885 (= c!1475827 call!746927)))

(declare-fun b!8050886 () Bool)

(assert (=> b!8050886 (= e!4743834 (getKeysList!1229 (toList!11906 acc!1298)))))

(declare-fun d!2397180 () Bool)

(declare-fun e!4743833 () Bool)

(assert (=> d!2397180 e!4743833))

(declare-fun res!3183216 () Bool)

(assert (=> d!2397180 (=> res!3183216 e!4743833)))

(declare-fun e!4743831 () Bool)

(assert (=> d!2397180 (= res!3183216 e!4743831)))

(declare-fun res!3183215 () Bool)

(assert (=> d!2397180 (=> (not res!3183215) (not e!4743831))))

(declare-fun lt!2724831 () Bool)

(assert (=> d!2397180 (= res!3183215 (not lt!2724831))))

(declare-fun lt!2724836 () Bool)

(assert (=> d!2397180 (= lt!2724831 lt!2724836)))

(declare-fun lt!2724833 () Unit!171423)

(assert (=> d!2397180 (= lt!2724833 e!4743830)))

(assert (=> d!2397180 (= c!1475828 lt!2724836)))

(assert (=> d!2397180 (= lt!2724836 (containsKey!4827 (toList!11906 acc!1298) key!6222))))

(assert (=> d!2397180 (= (contains!21167 acc!1298 key!6222) lt!2724831)))

(declare-fun b!8050887 () Bool)

(declare-fun Unit!171451 () Unit!171423)

(assert (=> b!8050887 (= e!4743832 Unit!171451)))

(declare-fun b!8050888 () Bool)

(assert (=> b!8050888 (= e!4743831 (not (contains!21170 (keys!30810 acc!1298) key!6222)))))

(declare-fun b!8050889 () Bool)

(declare-fun e!4743829 () Bool)

(assert (=> b!8050889 (= e!4743829 (contains!21170 (keys!30810 acc!1298) key!6222))))

(declare-fun b!8050890 () Bool)

(assert (=> b!8050890 (= e!4743833 e!4743829)))

(declare-fun res!3183217 () Bool)

(assert (=> b!8050890 (=> (not res!3183217) (not e!4743829))))

(assert (=> b!8050890 (= res!3183217 (isDefined!14519 (getValueByKey!2770 (toList!11906 acc!1298) key!6222)))))

(declare-fun b!8050891 () Bool)

(assert (=> b!8050891 false))

(declare-fun lt!2724835 () Unit!171423)

(declare-fun lt!2724832 () Unit!171423)

(assert (=> b!8050891 (= lt!2724835 lt!2724832)))

(assert (=> b!8050891 (containsKey!4827 (toList!11906 acc!1298) key!6222)))

(assert (=> b!8050891 (= lt!2724832 (lemmaInGetKeysListThenContainsKey!1229 (toList!11906 acc!1298) key!6222))))

(declare-fun Unit!171452 () Unit!171423)

(assert (=> b!8050891 (= e!4743832 Unit!171452)))

(assert (= (and d!2397180 c!1475828) b!8050884))

(assert (= (and d!2397180 (not c!1475828)) b!8050885))

(assert (= (and b!8050885 c!1475827) b!8050891))

(assert (= (and b!8050885 (not c!1475827)) b!8050887))

(assert (= (or b!8050884 b!8050885) bm!746922))

(assert (= (and bm!746922 c!1475829) b!8050886))

(assert (= (and bm!746922 (not c!1475829)) b!8050883))

(assert (= (and d!2397180 res!3183215) b!8050888))

(assert (= (and d!2397180 (not res!3183216)) b!8050890))

(assert (= (and b!8050890 res!3183217) b!8050889))

(declare-fun m!8401854 () Bool)

(assert (=> bm!746922 m!8401854))

(declare-fun m!8401856 () Bool)

(assert (=> b!8050889 m!8401856))

(assert (=> b!8050889 m!8401856))

(declare-fun m!8401858 () Bool)

(assert (=> b!8050889 m!8401858))

(assert (=> b!8050883 m!8401856))

(declare-fun m!8401860 () Bool)

(assert (=> b!8050886 m!8401860))

(assert (=> b!8050890 m!8401830))

(assert (=> b!8050890 m!8401830))

(declare-fun m!8401862 () Bool)

(assert (=> b!8050890 m!8401862))

(declare-fun m!8401866 () Bool)

(assert (=> b!8050891 m!8401866))

(declare-fun m!8401868 () Bool)

(assert (=> b!8050891 m!8401868))

(assert (=> d!2397180 m!8401866))

(assert (=> b!8050888 m!8401856))

(assert (=> b!8050888 m!8401856))

(assert (=> b!8050888 m!8401858))

(declare-fun m!8401870 () Bool)

(assert (=> b!8050884 m!8401870))

(assert (=> b!8050884 m!8401830))

(assert (=> b!8050884 m!8401830))

(assert (=> b!8050884 m!8401862))

(declare-fun m!8401872 () Bool)

(assert (=> b!8050884 m!8401872))

(assert (=> b!8050758 d!2397180))

(declare-fun lt!2724840 () Bool)

(declare-fun d!2397184 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16094 (List!75644) (InoxSet tuple2!70860))

(assert (=> d!2397184 (= lt!2724840 (select (content!16094 l!14636) (tuple2!70861 key!6222 value!3131)))))

(declare-fun e!4743843 () Bool)

(assert (=> d!2397184 (= lt!2724840 e!4743843)))

(declare-fun res!3183223 () Bool)

(assert (=> d!2397184 (=> (not res!3183223) (not e!4743843))))

(assert (=> d!2397184 (= res!3183223 ((_ is Cons!75518) l!14636))))

(assert (=> d!2397184 (= (contains!21168 l!14636 (tuple2!70861 key!6222 value!3131)) lt!2724840)))

(declare-fun b!8050902 () Bool)

(declare-fun e!4743844 () Bool)

(assert (=> b!8050902 (= e!4743843 e!4743844)))

(declare-fun res!3183222 () Bool)

(assert (=> b!8050902 (=> res!3183222 e!4743844)))

(assert (=> b!8050902 (= res!3183222 (= (h!81966 l!14636) (tuple2!70861 key!6222 value!3131)))))

(declare-fun b!8050903 () Bool)

(assert (=> b!8050903 (= e!4743844 (contains!21168 (t!391416 l!14636) (tuple2!70861 key!6222 value!3131)))))

(assert (= (and d!2397184 res!3183223) b!8050902))

(assert (= (and b!8050902 (not res!3183222)) b!8050903))

(declare-fun m!8401874 () Bool)

(assert (=> d!2397184 m!8401874))

(declare-fun m!8401876 () Bool)

(assert (=> d!2397184 m!8401876))

(declare-fun m!8401878 () Bool)

(assert (=> b!8050903 m!8401878))

(assert (=> b!8050759 d!2397184))

(declare-fun d!2397186 () Bool)

(declare-fun res!3183228 () Bool)

(declare-fun e!4743849 () Bool)

(assert (=> d!2397186 (=> res!3183228 e!4743849)))

(assert (=> d!2397186 (= res!3183228 (and ((_ is Cons!75518) l!14636) (= (_1!38733 (h!81966 l!14636)) key!6222)))))

(assert (=> d!2397186 (= (containsKey!4825 l!14636 key!6222) e!4743849)))

(declare-fun b!8050908 () Bool)

(declare-fun e!4743850 () Bool)

(assert (=> b!8050908 (= e!4743849 e!4743850)))

(declare-fun res!3183229 () Bool)

(assert (=> b!8050908 (=> (not res!3183229) (not e!4743850))))

(assert (=> b!8050908 (= res!3183229 ((_ is Cons!75518) l!14636))))

(declare-fun b!8050909 () Bool)

(assert (=> b!8050909 (= e!4743850 (containsKey!4825 (t!391416 l!14636) key!6222))))

(assert (= (and d!2397186 (not res!3183228)) b!8050908))

(assert (= (and b!8050908 res!3183229) b!8050909))

(declare-fun m!8401880 () Bool)

(assert (=> b!8050909 m!8401880))

(assert (=> b!8050764 d!2397186))

(assert (=> b!8050762 d!2397186))

(declare-fun d!2397188 () Bool)

(declare-fun res!3183234 () Bool)

(declare-fun e!4743855 () Bool)

(assert (=> d!2397188 (=> res!3183234 e!4743855)))

(assert (=> d!2397188 (= res!3183234 (not ((_ is Cons!75518) l!14636)))))

(assert (=> d!2397188 (= (noDuplicateKeys!2692 l!14636) e!4743855)))

(declare-fun b!8050914 () Bool)

(declare-fun e!4743856 () Bool)

(assert (=> b!8050914 (= e!4743855 e!4743856)))

(declare-fun res!3183235 () Bool)

(assert (=> b!8050914 (=> (not res!3183235) (not e!4743856))))

(assert (=> b!8050914 (= res!3183235 (not (containsKey!4825 (t!391416 l!14636) (_1!38733 (h!81966 l!14636)))))))

(declare-fun b!8050915 () Bool)

(assert (=> b!8050915 (= e!4743856 (noDuplicateKeys!2692 (t!391416 l!14636)))))

(assert (= (and d!2397188 (not res!3183234)) b!8050914))

(assert (= (and b!8050914 res!3183235) b!8050915))

(declare-fun m!8401882 () Bool)

(assert (=> b!8050914 m!8401882))

(declare-fun m!8401884 () Bool)

(assert (=> b!8050915 m!8401884))

(assert (=> start!758184 d!2397188))

(declare-fun d!2397190 () Bool)

(assert (=> d!2397190 (= (inv!97267 acc!1298) (invariantList!1921 (toList!11906 acc!1298)))))

(declare-fun bs!1971951 () Bool)

(assert (= bs!1971951 d!2397190))

(declare-fun m!8401886 () Bool)

(assert (=> bs!1971951 m!8401886))

(assert (=> start!758184 d!2397190))

(declare-fun d!2397192 () Bool)

(assert (=> d!2397192 (= (apply!14419 lt!2724644 key!6222) (get!27197 (getValueByKey!2770 (toList!11906 lt!2724644) key!6222)))))

(declare-fun bs!1971952 () Bool)

(assert (= bs!1971952 d!2397192))

(assert (=> bs!1971952 m!8401714))

(assert (=> bs!1971952 m!8401714))

(declare-fun m!8401888 () Bool)

(assert (=> bs!1971952 m!8401888))

(assert (=> b!8050766 d!2397192))

(declare-fun e!4743859 () Bool)

(declare-fun b!8050920 () Bool)

(declare-fun tp!2413608 () Bool)

(assert (=> b!8050920 (= e!4743859 (and tp_is_empty!54843 tp_is_empty!54845 tp!2413608))))

(assert (=> b!8050757 (= tp!2413600 e!4743859)))

(assert (= (and b!8050757 ((_ is Cons!75518) (t!391416 l!14636))) b!8050920))

(declare-fun e!4743860 () Bool)

(declare-fun b!8050921 () Bool)

(declare-fun tp!2413609 () Bool)

(assert (=> b!8050921 (= e!4743860 (and tp_is_empty!54843 tp_is_empty!54845 tp!2413609))))

(assert (=> b!8050763 (= tp!2413601 e!4743860)))

(assert (= (and b!8050763 ((_ is Cons!75518) (toList!11906 acc!1298))) b!8050921))

(check-sat (not b!8050789) (not d!2397192) (not b!8050889) (not d!2397184) (not b!8050914) (not b!8050891) (not d!2397190) (not b!8050786) (not d!2397162) (not b!8050856) (not bm!746922) (not b!8050884) (not bm!746919) (not b!8050791) (not b!8050857) (not bm!746918) (not b!8050915) (not b!8050920) (not bm!746920) tp_is_empty!54845 (not b!8050890) (not b!8050858) tp_is_empty!54843 (not b!8050787) (not b!8050921) (not b!8050794) (not d!2397158) (not b!8050793) (not b!8050792) (not b!8050888) (not bm!746899) (not d!2397176) (not d!2397180) (not b!8050909) (not b!8050883) (not b!8050859) (not b!8050886) (not b!8050903))
(check-sat)
