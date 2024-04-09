; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88720 () Bool)

(assert start!88720)

(declare-fun b!1018726 () Bool)

(declare-fun res!683155 () Bool)

(declare-fun e!573298 () Bool)

(assert (=> b!1018726 (=> (not res!683155) (not e!573298))))

(declare-datatypes ((B!1672 0))(
  ( (B!1673 (val!11920 Int)) )
))
(declare-datatypes ((tuple2!15476 0))(
  ( (tuple2!15477 (_1!7748 (_ BitVec 64)) (_2!7748 B!1672)) )
))
(declare-datatypes ((List!21722 0))(
  ( (Nil!21719) (Cons!21718 (h!22916 tuple2!15476) (t!30734 List!21722)) )
))
(declare-fun l!996 () List!21722)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!534 (List!21722 (_ BitVec 64)) Bool)

(assert (=> b!1018726 (= res!683155 (containsKey!534 l!996 key!261))))

(declare-fun b!1018729 () Bool)

(declare-fun e!573296 () Bool)

(declare-fun tp_is_empty!23739 () Bool)

(declare-fun tp!71099 () Bool)

(assert (=> b!1018729 (= e!573296 (and tp_is_empty!23739 tp!71099))))

(declare-fun b!1018728 () Bool)

(declare-fun e!573297 () Bool)

(declare-fun isStrictlySorted!669 (List!21722) Bool)

(assert (=> b!1018728 (= e!573297 (not (isStrictlySorted!669 (t!30734 l!996))))))

(declare-fun b!1018727 () Bool)

(assert (=> b!1018727 (= e!573298 e!573297)))

(declare-fun res!683156 () Bool)

(assert (=> b!1018727 (=> (not res!683156) (not e!573297))))

(get-info :version)

(assert (=> b!1018727 (= res!683156 (and ((_ is Cons!21718) l!996) (bvslt (_1!7748 (h!22916 l!996)) key!261)))))

(declare-fun value!172 () B!1672)

(declare-fun lt!449577 () List!21722)

(declare-fun insertStrictlySorted!351 (List!21722 (_ BitVec 64) B!1672) List!21722)

(assert (=> b!1018727 (= lt!449577 (insertStrictlySorted!351 l!996 key!261 value!172))))

(declare-fun res!683157 () Bool)

(assert (=> start!88720 (=> (not res!683157) (not e!573298))))

(assert (=> start!88720 (= res!683157 (isStrictlySorted!669 l!996))))

(assert (=> start!88720 e!573298))

(assert (=> start!88720 e!573296))

(assert (=> start!88720 true))

(assert (=> start!88720 tp_is_empty!23739))

(assert (= (and start!88720 res!683157) b!1018726))

(assert (= (and b!1018726 res!683155) b!1018727))

(assert (= (and b!1018727 res!683156) b!1018728))

(assert (= (and start!88720 ((_ is Cons!21718) l!996)) b!1018729))

(declare-fun m!939595 () Bool)

(assert (=> b!1018726 m!939595))

(declare-fun m!939597 () Bool)

(assert (=> b!1018728 m!939597))

(declare-fun m!939599 () Bool)

(assert (=> b!1018727 m!939599))

(declare-fun m!939601 () Bool)

(assert (=> start!88720 m!939601))

(check-sat (not start!88720) (not b!1018727) (not b!1018728) (not b!1018729) (not b!1018726) tp_is_empty!23739)
(check-sat)
(get-model)

(declare-fun d!121917 () Bool)

(declare-fun res!683171 () Bool)

(declare-fun e!573312 () Bool)

(assert (=> d!121917 (=> res!683171 e!573312)))

(assert (=> d!121917 (= res!683171 (and ((_ is Cons!21718) l!996) (= (_1!7748 (h!22916 l!996)) key!261)))))

(assert (=> d!121917 (= (containsKey!534 l!996 key!261) e!573312)))

(declare-fun b!1018746 () Bool)

(declare-fun e!573313 () Bool)

(assert (=> b!1018746 (= e!573312 e!573313)))

(declare-fun res!683172 () Bool)

(assert (=> b!1018746 (=> (not res!683172) (not e!573313))))

(assert (=> b!1018746 (= res!683172 (and (or (not ((_ is Cons!21718) l!996)) (bvsle (_1!7748 (h!22916 l!996)) key!261)) ((_ is Cons!21718) l!996) (bvslt (_1!7748 (h!22916 l!996)) key!261)))))

(declare-fun b!1018747 () Bool)

(assert (=> b!1018747 (= e!573313 (containsKey!534 (t!30734 l!996) key!261))))

(assert (= (and d!121917 (not res!683171)) b!1018746))

(assert (= (and b!1018746 res!683172) b!1018747))

(declare-fun m!939611 () Bool)

(assert (=> b!1018747 m!939611))

(assert (=> b!1018726 d!121917))

(declare-fun b!1018814 () Bool)

(declare-fun e!573354 () List!21722)

(declare-fun call!43016 () List!21722)

(assert (=> b!1018814 (= e!573354 call!43016)))

(declare-fun bm!43011 () Bool)

(declare-fun call!43015 () List!21722)

(assert (=> bm!43011 (= call!43015 call!43016)))

(declare-fun d!121921 () Bool)

(declare-fun e!573357 () Bool)

(assert (=> d!121921 e!573357))

(declare-fun res!683195 () Bool)

(assert (=> d!121921 (=> (not res!683195) (not e!573357))))

(declare-fun lt!449587 () List!21722)

(assert (=> d!121921 (= res!683195 (isStrictlySorted!669 lt!449587))))

(declare-fun e!573358 () List!21722)

(assert (=> d!121921 (= lt!449587 e!573358)))

(declare-fun c!103175 () Bool)

(assert (=> d!121921 (= c!103175 (and ((_ is Cons!21718) l!996) (bvslt (_1!7748 (h!22916 l!996)) key!261)))))

(assert (=> d!121921 (isStrictlySorted!669 l!996)))

(assert (=> d!121921 (= (insertStrictlySorted!351 l!996 key!261 value!172) lt!449587)))

(declare-fun b!1018815 () Bool)

(declare-fun res!683196 () Bool)

(assert (=> b!1018815 (=> (not res!683196) (not e!573357))))

(assert (=> b!1018815 (= res!683196 (containsKey!534 lt!449587 key!261))))

(declare-fun b!1018816 () Bool)

(declare-fun c!103174 () Bool)

(assert (=> b!1018816 (= c!103174 (and ((_ is Cons!21718) l!996) (bvsgt (_1!7748 (h!22916 l!996)) key!261)))))

(declare-fun e!573355 () List!21722)

(assert (=> b!1018816 (= e!573354 e!573355)))

(declare-fun b!1018817 () Bool)

(assert (=> b!1018817 (= e!573355 call!43015)))

(declare-fun b!1018818 () Bool)

(assert (=> b!1018818 (= e!573355 call!43015)))

(declare-fun b!1018819 () Bool)

(declare-fun call!43014 () List!21722)

(assert (=> b!1018819 (= e!573358 call!43014)))

(declare-fun b!1018820 () Bool)

(assert (=> b!1018820 (= e!573358 e!573354)))

(declare-fun c!103173 () Bool)

(assert (=> b!1018820 (= c!103173 (and ((_ is Cons!21718) l!996) (= (_1!7748 (h!22916 l!996)) key!261)))))

(declare-fun e!573356 () List!21722)

(declare-fun bm!43012 () Bool)

(declare-fun $colon$colon!584 (List!21722 tuple2!15476) List!21722)

(assert (=> bm!43012 (= call!43014 ($colon$colon!584 e!573356 (ite c!103175 (h!22916 l!996) (tuple2!15477 key!261 value!172))))))

(declare-fun c!103176 () Bool)

(assert (=> bm!43012 (= c!103176 c!103175)))

(declare-fun b!1018821 () Bool)

(assert (=> b!1018821 (= e!573356 (insertStrictlySorted!351 (t!30734 l!996) key!261 value!172))))

(declare-fun bm!43013 () Bool)

(assert (=> bm!43013 (= call!43016 call!43014)))

(declare-fun b!1018822 () Bool)

(declare-fun contains!5912 (List!21722 tuple2!15476) Bool)

(assert (=> b!1018822 (= e!573357 (contains!5912 lt!449587 (tuple2!15477 key!261 value!172)))))

(declare-fun b!1018823 () Bool)

(assert (=> b!1018823 (= e!573356 (ite c!103173 (t!30734 l!996) (ite c!103174 (Cons!21718 (h!22916 l!996) (t!30734 l!996)) Nil!21719)))))

(assert (= (and d!121921 c!103175) b!1018819))

(assert (= (and d!121921 (not c!103175)) b!1018820))

(assert (= (and b!1018820 c!103173) b!1018814))

(assert (= (and b!1018820 (not c!103173)) b!1018816))

(assert (= (and b!1018816 c!103174) b!1018817))

(assert (= (and b!1018816 (not c!103174)) b!1018818))

(assert (= (or b!1018817 b!1018818) bm!43011))

(assert (= (or b!1018814 bm!43011) bm!43013))

(assert (= (or b!1018819 bm!43013) bm!43012))

(assert (= (and bm!43012 c!103176) b!1018821))

(assert (= (and bm!43012 (not c!103176)) b!1018823))

(assert (= (and d!121921 res!683195) b!1018815))

(assert (= (and b!1018815 res!683196) b!1018822))

(declare-fun m!939617 () Bool)

(assert (=> b!1018815 m!939617))

(declare-fun m!939619 () Bool)

(assert (=> d!121921 m!939619))

(assert (=> d!121921 m!939601))

(declare-fun m!939621 () Bool)

(assert (=> bm!43012 m!939621))

(declare-fun m!939623 () Bool)

(assert (=> b!1018822 m!939623))

(declare-fun m!939625 () Bool)

(assert (=> b!1018821 m!939625))

(assert (=> b!1018727 d!121921))

(declare-fun d!121931 () Bool)

(declare-fun res!683207 () Bool)

(declare-fun e!573372 () Bool)

(assert (=> d!121931 (=> res!683207 e!573372)))

(assert (=> d!121931 (= res!683207 (or ((_ is Nil!21719) l!996) ((_ is Nil!21719) (t!30734 l!996))))))

(assert (=> d!121931 (= (isStrictlySorted!669 l!996) e!573372)))

(declare-fun b!1018846 () Bool)

(declare-fun e!573373 () Bool)

(assert (=> b!1018846 (= e!573372 e!573373)))

(declare-fun res!683208 () Bool)

(assert (=> b!1018846 (=> (not res!683208) (not e!573373))))

(assert (=> b!1018846 (= res!683208 (bvslt (_1!7748 (h!22916 l!996)) (_1!7748 (h!22916 (t!30734 l!996)))))))

(declare-fun b!1018847 () Bool)

(assert (=> b!1018847 (= e!573373 (isStrictlySorted!669 (t!30734 l!996)))))

(assert (= (and d!121931 (not res!683207)) b!1018846))

(assert (= (and b!1018846 res!683208) b!1018847))

(assert (=> b!1018847 m!939597))

(assert (=> start!88720 d!121931))

(declare-fun d!121935 () Bool)

(declare-fun res!683209 () Bool)

(declare-fun e!573374 () Bool)

(assert (=> d!121935 (=> res!683209 e!573374)))

(assert (=> d!121935 (= res!683209 (or ((_ is Nil!21719) (t!30734 l!996)) ((_ is Nil!21719) (t!30734 (t!30734 l!996)))))))

(assert (=> d!121935 (= (isStrictlySorted!669 (t!30734 l!996)) e!573374)))

(declare-fun b!1018848 () Bool)

(declare-fun e!573375 () Bool)

(assert (=> b!1018848 (= e!573374 e!573375)))

(declare-fun res!683210 () Bool)

(assert (=> b!1018848 (=> (not res!683210) (not e!573375))))

(assert (=> b!1018848 (= res!683210 (bvslt (_1!7748 (h!22916 (t!30734 l!996))) (_1!7748 (h!22916 (t!30734 (t!30734 l!996))))))))

(declare-fun b!1018849 () Bool)

(assert (=> b!1018849 (= e!573375 (isStrictlySorted!669 (t!30734 (t!30734 l!996))))))

(assert (= (and d!121935 (not res!683209)) b!1018848))

(assert (= (and b!1018848 res!683210) b!1018849))

(declare-fun m!939637 () Bool)

(assert (=> b!1018849 m!939637))

(assert (=> b!1018728 d!121935))

(declare-fun b!1018858 () Bool)

(declare-fun e!573384 () Bool)

(declare-fun tp!71105 () Bool)

(assert (=> b!1018858 (= e!573384 (and tp_is_empty!23739 tp!71105))))

(assert (=> b!1018729 (= tp!71099 e!573384)))

(assert (= (and b!1018729 ((_ is Cons!21718) (t!30734 l!996))) b!1018858))

(check-sat (not b!1018821) (not d!121921) (not b!1018847) (not bm!43012) tp_is_empty!23739 (not b!1018849) (not b!1018747) (not b!1018815) (not b!1018858) (not b!1018822))
(check-sat)
