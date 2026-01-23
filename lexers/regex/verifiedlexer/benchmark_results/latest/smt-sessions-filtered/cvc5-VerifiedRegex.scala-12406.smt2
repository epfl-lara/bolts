; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693698 () Bool)

(assert start!693698)

(declare-fun b_free!133727 () Bool)

(declare-fun b_next!134517 () Bool)

(assert (=> start!693698 (= b_free!133727 (not b_next!134517))))

(declare-fun tp!1961428 () Bool)

(declare-fun b_and!350823 () Bool)

(assert (=> start!693698 (= tp!1961428 b_and!350823)))

(declare-fun b!7122839 () Bool)

(assert (=> b!7122839 true))

(declare-fun b!7122835 () Bool)

(declare-fun e!4280129 () Bool)

(declare-fun tp_is_empty!45419 () Bool)

(declare-fun tp!1961427 () Bool)

(assert (=> b!7122835 (= e!4280129 (and tp_is_empty!45419 tp!1961427))))

(declare-fun b!7122836 () Bool)

(declare-fun res!2906105 () Bool)

(declare-fun e!4280131 () Bool)

(assert (=> b!7122836 (=> (not res!2906105) (not e!4280131))))

(declare-datatypes ((B!3291 0))(
  ( (B!3292 (val!27959 Int)) )
))
(declare-datatypes ((List!69015 0))(
  ( (Nil!68891) (Cons!68891 (h!75339 B!3291) (t!382926 List!69015)) )
))
(declare-fun l2!759 () List!69015)

(assert (=> b!7122836 (= res!2906105 (is-Cons!68891 l2!759))))

(declare-fun setNonEmpty!51172 () Bool)

(declare-fun setRes!51173 () Bool)

(declare-fun tp!1961430 () Bool)

(declare-fun tp_is_empty!45417 () Bool)

(assert (=> setNonEmpty!51172 (= setRes!51173 (and tp!1961430 tp_is_empty!45417))))

(declare-datatypes ((A!633 0))(
  ( (A!634 (val!27960 Int)) )
))
(declare-fun s1!424 () (Set A!633))

(declare-fun setElem!51172 () A!633)

(declare-fun setRest!51173 () (Set A!633))

(assert (=> setNonEmpty!51172 (= s1!424 (set.union (set.insert setElem!51172 (as set.empty (Set A!633))) setRest!51173))))

(declare-fun b!7122837 () Bool)

(declare-fun e!4280130 () Bool)

(assert (=> b!7122837 (= e!4280130 e!4280131)))

(declare-fun res!2906107 () Bool)

(assert (=> b!7122837 (=> (not res!2906107) (not e!4280131))))

(declare-fun lt!2562279 () List!69015)

(declare-fun subseq!754 (List!69015 List!69015) Bool)

(assert (=> b!7122837 (= res!2906107 (subseq!754 l2!759 lt!2562279))))

(declare-fun lt!2562277 () (Set B!3291))

(declare-fun toList!11118 ((Set B!3291)) List!69015)

(assert (=> b!7122837 (= lt!2562279 (toList!11118 lt!2562277))))

(declare-fun s2!395 () (Set A!633))

(declare-fun f!607 () Int)

(declare-fun map!16421 ((Set A!633) Int) (Set B!3291))

(assert (=> b!7122837 (= lt!2562277 (map!16421 (set.union s1!424 s2!395) f!607))))

(declare-fun b!7122838 () Bool)

(declare-fun e!4280128 () Bool)

(declare-fun tp!1961426 () Bool)

(assert (=> b!7122838 (= e!4280128 (and tp_is_empty!45419 tp!1961426))))

(declare-fun setIsEmpty!51173 () Bool)

(assert (=> setIsEmpty!51173 setRes!51173))

(declare-fun contains!20525 (List!69015 B!3291) Bool)

(assert (=> b!7122839 (= e!4280131 (not (contains!20525 l2!759 (h!75339 l2!759))))))

(declare-fun lambda!432920 () Int)

(declare-fun forall!16896 (List!69015 Int) Bool)

(assert (=> b!7122839 (forall!16896 (t!382926 l2!759) lambda!432920)))

(declare-fun l1!770 () List!69015)

(declare-datatypes ((Unit!162739 0))(
  ( (Unit!162740) )
))
(declare-fun lt!2562280 () Unit!162739)

(declare-fun lemmaMapAssociativeToList2!13 ((Set A!633) (Set A!633) Int List!69015 List!69015) Unit!162739)

(assert (=> b!7122839 (= lt!2562280 (lemmaMapAssociativeToList2!13 s1!424 s2!395 f!607 l1!770 (t!382926 l2!759)))))

(declare-fun lt!2562278 () Unit!162739)

(declare-fun subseqTail!29 (List!69015 List!69015) Unit!162739)

(assert (=> b!7122839 (= lt!2562278 (subseqTail!29 l2!759 lt!2562279))))

(declare-fun lt!2562275 () (Set B!3291))

(assert (=> b!7122839 (= (set.member (h!75339 l2!759) lt!2562275) (set.member (h!75339 l2!759) lt!2562277))))

(declare-fun lt!2562276 () Unit!162739)

(declare-fun lemmaMapAssociativeElem!17 ((Set A!633) (Set A!633) Int B!3291) Unit!162739)

(assert (=> b!7122839 (= lt!2562276 (lemmaMapAssociativeElem!17 s1!424 s2!395 f!607 (h!75339 l2!759)))))

(declare-fun setNonEmpty!51173 () Bool)

(declare-fun setRes!51172 () Bool)

(declare-fun tp!1961429 () Bool)

(assert (=> setNonEmpty!51173 (= setRes!51172 (and tp!1961429 tp_is_empty!45417))))

(declare-fun setElem!51173 () A!633)

(declare-fun setRest!51172 () (Set A!633))

(assert (=> setNonEmpty!51173 (= s2!395 (set.union (set.insert setElem!51173 (as set.empty (Set A!633))) setRest!51172))))

(declare-fun res!2906106 () Bool)

(assert (=> start!693698 (=> (not res!2906106) (not e!4280130))))

(assert (=> start!693698 (= res!2906106 (= l1!770 (toList!11118 lt!2562275)))))

(assert (=> start!693698 (= lt!2562275 (set.union (map!16421 s1!424 f!607) (map!16421 s2!395 f!607)))))

(assert (=> start!693698 e!4280130))

(declare-fun condSetEmpty!51173 () Bool)

(assert (=> start!693698 (= condSetEmpty!51173 (= s1!424 (as set.empty (Set A!633))))))

(assert (=> start!693698 setRes!51173))

(assert (=> start!693698 e!4280128))

(assert (=> start!693698 e!4280129))

(declare-fun condSetEmpty!51172 () Bool)

(assert (=> start!693698 (= condSetEmpty!51172 (= s2!395 (as set.empty (Set A!633))))))

(assert (=> start!693698 setRes!51172))

(assert (=> start!693698 tp!1961428))

(declare-fun setIsEmpty!51172 () Bool)

(assert (=> setIsEmpty!51172 setRes!51172))

(assert (= (and start!693698 res!2906106) b!7122837))

(assert (= (and b!7122837 res!2906107) b!7122836))

(assert (= (and b!7122836 res!2906105) b!7122839))

(assert (= (and start!693698 condSetEmpty!51173) setIsEmpty!51173))

(assert (= (and start!693698 (not condSetEmpty!51173)) setNonEmpty!51172))

(assert (= (and start!693698 (is-Cons!68891 l2!759)) b!7122838))

(assert (= (and start!693698 (is-Cons!68891 l1!770)) b!7122835))

(assert (= (and start!693698 condSetEmpty!51172) setIsEmpty!51172))

(assert (= (and start!693698 (not condSetEmpty!51172)) setNonEmpty!51173))

(declare-fun m!7840146 () Bool)

(assert (=> b!7122837 m!7840146))

(declare-fun m!7840148 () Bool)

(assert (=> b!7122837 m!7840148))

(declare-fun m!7840150 () Bool)

(assert (=> b!7122837 m!7840150))

(declare-fun m!7840152 () Bool)

(assert (=> b!7122839 m!7840152))

(declare-fun m!7840154 () Bool)

(assert (=> b!7122839 m!7840154))

(declare-fun m!7840156 () Bool)

(assert (=> b!7122839 m!7840156))

(declare-fun m!7840158 () Bool)

(assert (=> b!7122839 m!7840158))

(declare-fun m!7840160 () Bool)

(assert (=> b!7122839 m!7840160))

(declare-fun m!7840162 () Bool)

(assert (=> b!7122839 m!7840162))

(declare-fun m!7840164 () Bool)

(assert (=> b!7122839 m!7840164))

(declare-fun m!7840166 () Bool)

(assert (=> start!693698 m!7840166))

(declare-fun m!7840168 () Bool)

(assert (=> start!693698 m!7840168))

(declare-fun m!7840170 () Bool)

(assert (=> start!693698 m!7840170))

(push 1)

(assert tp_is_empty!45417)

(assert (not b!7122835))

(assert b_and!350823)

(assert (not b!7122839))

(assert (not b!7122838))

(assert (not start!693698))

(assert (not b_next!134517))

(assert (not setNonEmpty!51172))

(assert (not setNonEmpty!51173))

(assert (not b!7122837))

(assert tp_is_empty!45419)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350823)

(assert (not b_next!134517))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1886105 () Bool)

(declare-fun d!2222771 () Bool)

(assert (= bs!1886105 (and d!2222771 b!7122839)))

(declare-fun lambda!432926 () Int)

(assert (=> bs!1886105 (= lambda!432926 lambda!432920)))

(assert (=> d!2222771 true))

(assert (=> d!2222771 (forall!16896 (t!382926 l2!759) lambda!432926)))

(declare-fun lt!2562301 () Unit!162739)

(declare-fun choose!55022 ((Set A!633) (Set A!633) Int List!69015 List!69015) Unit!162739)

(assert (=> d!2222771 (= lt!2562301 (choose!55022 s1!424 s2!395 f!607 l1!770 (t!382926 l2!759)))))

(assert (=> d!2222771 (= l1!770 (toList!11118 (set.union (map!16421 s1!424 f!607) (map!16421 s2!395 f!607))))))

(assert (=> d!2222771 (= (lemmaMapAssociativeToList2!13 s1!424 s2!395 f!607 l1!770 (t!382926 l2!759)) lt!2562301)))

(declare-fun bs!1886106 () Bool)

(assert (= bs!1886106 d!2222771))

(declare-fun m!7840198 () Bool)

(assert (=> bs!1886106 m!7840198))

(declare-fun m!7840200 () Bool)

(assert (=> bs!1886106 m!7840200))

(declare-fun m!7840202 () Bool)

(assert (=> bs!1886106 m!7840202))

(assert (=> bs!1886106 m!7840170))

(assert (=> bs!1886106 m!7840168))

(assert (=> b!7122839 d!2222771))

(declare-fun d!2222773 () Bool)

(declare-fun res!2906121 () Bool)

(declare-fun e!4280148 () Bool)

(assert (=> d!2222773 (=> res!2906121 e!4280148)))

(assert (=> d!2222773 (= res!2906121 (is-Nil!68891 (t!382926 l2!759)))))

(assert (=> d!2222773 (= (forall!16896 (t!382926 l2!759) lambda!432920) e!4280148)))

(declare-fun b!7122863 () Bool)

(declare-fun e!4280149 () Bool)

(assert (=> b!7122863 (= e!4280148 e!4280149)))

(declare-fun res!2906122 () Bool)

(assert (=> b!7122863 (=> (not res!2906122) (not e!4280149))))

(declare-fun dynLambda!28081 (Int B!3291) Bool)

(assert (=> b!7122863 (= res!2906122 (dynLambda!28081 lambda!432920 (h!75339 (t!382926 l2!759))))))

(declare-fun b!7122864 () Bool)

(assert (=> b!7122864 (= e!4280149 (forall!16896 (t!382926 (t!382926 l2!759)) lambda!432920))))

(assert (= (and d!2222773 (not res!2906121)) b!7122863))

(assert (= (and b!7122863 res!2906122) b!7122864))

(declare-fun b_lambda!271733 () Bool)

(assert (=> (not b_lambda!271733) (not b!7122863)))

(declare-fun m!7840204 () Bool)

(assert (=> b!7122863 m!7840204))

(declare-fun m!7840206 () Bool)

(assert (=> b!7122864 m!7840206))

(assert (=> b!7122839 d!2222773))

(declare-fun b!7122879 () Bool)

(declare-fun e!4280161 () Unit!162739)

(declare-fun e!4280158 () Unit!162739)

(assert (=> b!7122879 (= e!4280161 e!4280158)))

(declare-fun c!1329072 () Bool)

(assert (=> b!7122879 (= c!1329072 (subseq!754 l2!759 (t!382926 lt!2562279)))))

(declare-fun b!7122880 () Bool)

(declare-fun e!4280159 () Bool)

(assert (=> b!7122880 (= e!4280159 (subseq!754 l2!759 lt!2562279))))

(declare-fun b!7122881 () Bool)

(declare-fun e!4280160 () Unit!162739)

(declare-fun Unit!162743 () Unit!162739)

(assert (=> b!7122881 (= e!4280160 Unit!162743)))

(declare-fun b!7122882 () Bool)

(declare-fun Unit!162744 () Unit!162739)

(assert (=> b!7122882 (= e!4280161 Unit!162744)))

(declare-fun b!7122883 () Bool)

(declare-fun call!650759 () Unit!162739)

(assert (=> b!7122883 (= e!4280160 call!650759)))

(declare-fun b!7122884 () Bool)

(declare-fun c!1329070 () Bool)

(declare-fun isEmpty!40008 (List!69015) Bool)

(assert (=> b!7122884 (= c!1329070 (not (isEmpty!40008 (t!382926 l2!759))))))

(assert (=> b!7122884 (= e!4280158 e!4280160)))

(declare-fun bm!650754 () Bool)

(assert (=> bm!650754 (= call!650759 (subseqTail!29 (ite c!1329072 l2!759 (t!382926 l2!759)) (t!382926 lt!2562279)))))

(declare-fun b!7122885 () Bool)

(assert (=> b!7122885 (= e!4280158 call!650759)))

(declare-fun d!2222775 () Bool)

(declare-fun tail!13924 (List!69015) List!69015)

(assert (=> d!2222775 (subseq!754 (tail!13924 l2!759) lt!2562279)))

(declare-fun lt!2562304 () Unit!162739)

(assert (=> d!2222775 (= lt!2562304 e!4280161)))

(declare-fun c!1329071 () Bool)

(assert (=> d!2222775 (= c!1329071 (and (is-Cons!68891 l2!759) (is-Cons!68891 lt!2562279)))))

(assert (=> d!2222775 e!4280159))

(declare-fun res!2906125 () Bool)

(assert (=> d!2222775 (=> (not res!2906125) (not e!4280159))))

(assert (=> d!2222775 (= res!2906125 (not (isEmpty!40008 l2!759)))))

(assert (=> d!2222775 (= (subseqTail!29 l2!759 lt!2562279) lt!2562304)))

(assert (= (and d!2222775 res!2906125) b!7122880))

(assert (= (and d!2222775 c!1329071) b!7122879))

(assert (= (and d!2222775 (not c!1329071)) b!7122882))

(assert (= (and b!7122879 c!1329072) b!7122885))

(assert (= (and b!7122879 (not c!1329072)) b!7122884))

(assert (= (and b!7122884 c!1329070) b!7122883))

(assert (= (and b!7122884 (not c!1329070)) b!7122881))

(assert (= (or b!7122885 b!7122883) bm!650754))

(declare-fun m!7840208 () Bool)

(assert (=> b!7122884 m!7840208))

(declare-fun m!7840210 () Bool)

(assert (=> b!7122879 m!7840210))

(declare-fun m!7840212 () Bool)

(assert (=> d!2222775 m!7840212))

(assert (=> d!2222775 m!7840212))

(declare-fun m!7840214 () Bool)

(assert (=> d!2222775 m!7840214))

(declare-fun m!7840216 () Bool)

(assert (=> d!2222775 m!7840216))

(declare-fun m!7840218 () Bool)

(assert (=> bm!650754 m!7840218))

(assert (=> b!7122880 m!7840146))

(assert (=> b!7122839 d!2222775))

(declare-fun d!2222777 () Bool)

(declare-fun lt!2562307 () Bool)

(declare-fun content!14093 (List!69015) (Set B!3291))

(assert (=> d!2222777 (= lt!2562307 (set.member (h!75339 l2!759) (content!14093 l2!759)))))

(declare-fun e!4280166 () Bool)

(assert (=> d!2222777 (= lt!2562307 e!4280166)))

(declare-fun res!2906130 () Bool)

(assert (=> d!2222777 (=> (not res!2906130) (not e!4280166))))

(assert (=> d!2222777 (= res!2906130 (is-Cons!68891 l2!759))))

(assert (=> d!2222777 (= (contains!20525 l2!759 (h!75339 l2!759)) lt!2562307)))

(declare-fun b!7122890 () Bool)

(declare-fun e!4280167 () Bool)

(assert (=> b!7122890 (= e!4280166 e!4280167)))

(declare-fun res!2906131 () Bool)

(assert (=> b!7122890 (=> res!2906131 e!4280167)))

(assert (=> b!7122890 (= res!2906131 (= (h!75339 l2!759) (h!75339 l2!759)))))

(declare-fun b!7122891 () Bool)

(assert (=> b!7122891 (= e!4280167 (contains!20525 (t!382926 l2!759) (h!75339 l2!759)))))

(assert (= (and d!2222777 res!2906130) b!7122890))

(assert (= (and b!7122890 (not res!2906131)) b!7122891))

(declare-fun m!7840220 () Bool)

(assert (=> d!2222777 m!7840220))

(declare-fun m!7840222 () Bool)

(assert (=> d!2222777 m!7840222))

(declare-fun m!7840224 () Bool)

(assert (=> b!7122891 m!7840224))

(assert (=> b!7122839 d!2222777))

(declare-fun d!2222781 () Bool)

(assert (=> d!2222781 (= (set.member (h!75339 l2!759) (set.union (map!16421 s1!424 f!607) (map!16421 s2!395 f!607))) (set.member (h!75339 l2!759) (map!16421 (set.union s1!424 s2!395) f!607)))))

(declare-fun lt!2562310 () Unit!162739)

(declare-fun choose!55023 ((Set A!633) (Set A!633) Int B!3291) Unit!162739)

(assert (=> d!2222781 (= lt!2562310 (choose!55023 s1!424 s2!395 f!607 (h!75339 l2!759)))))

(assert (=> d!2222781 (= (lemmaMapAssociativeElem!17 s1!424 s2!395 f!607 (h!75339 l2!759)) lt!2562310)))

(declare-fun bs!1886107 () Bool)

(assert (= bs!1886107 d!2222781))

(declare-fun m!7840226 () Bool)

(assert (=> bs!1886107 m!7840226))

(declare-fun m!7840228 () Bool)

(assert (=> bs!1886107 m!7840228))

(assert (=> bs!1886107 m!7840150))

(assert (=> bs!1886107 m!7840168))

(assert (=> bs!1886107 m!7840170))

(declare-fun m!7840230 () Bool)

(assert (=> bs!1886107 m!7840230))

(assert (=> b!7122839 d!2222781))

(declare-fun d!2222783 () Bool)

(declare-fun e!4280178 () Bool)

(assert (=> d!2222783 e!4280178))

(declare-fun res!2906142 () Bool)

(assert (=> d!2222783 (=> (not res!2906142) (not e!4280178))))

(declare-fun lt!2562313 () List!69015)

(declare-fun noDuplicate!2794 (List!69015) Bool)

(assert (=> d!2222783 (= res!2906142 (noDuplicate!2794 lt!2562313))))

(declare-fun choose!55024 ((Set B!3291)) List!69015)

(assert (=> d!2222783 (= lt!2562313 (choose!55024 lt!2562275))))

(assert (=> d!2222783 (= (toList!11118 lt!2562275) lt!2562313)))

(declare-fun b!7122903 () Bool)

(assert (=> b!7122903 (= e!4280178 (= (content!14093 lt!2562313) lt!2562275))))

(assert (= (and d!2222783 res!2906142) b!7122903))

(declare-fun m!7840232 () Bool)

(assert (=> d!2222783 m!7840232))

(declare-fun m!7840234 () Bool)

(assert (=> d!2222783 m!7840234))

(declare-fun m!7840236 () Bool)

(assert (=> b!7122903 m!7840236))

(assert (=> start!693698 d!2222783))

(declare-fun d!2222785 () Bool)

(declare-fun choose!55025 ((Set A!633) Int) (Set B!3291))

(assert (=> d!2222785 (= (map!16421 s1!424 f!607) (choose!55025 s1!424 f!607))))

(declare-fun bs!1886108 () Bool)

(assert (= bs!1886108 d!2222785))

(declare-fun m!7840238 () Bool)

(assert (=> bs!1886108 m!7840238))

(assert (=> start!693698 d!2222785))

(declare-fun d!2222787 () Bool)

(assert (=> d!2222787 (= (map!16421 s2!395 f!607) (choose!55025 s2!395 f!607))))

(declare-fun bs!1886109 () Bool)

(assert (= bs!1886109 d!2222787))

(declare-fun m!7840240 () Bool)

(assert (=> bs!1886109 m!7840240))

(assert (=> start!693698 d!2222787))

(declare-fun b!7122916 () Bool)

(declare-fun e!4280193 () Bool)

(declare-fun e!4280192 () Bool)

(assert (=> b!7122916 (= e!4280193 e!4280192)))

(declare-fun res!2906156 () Bool)

(assert (=> b!7122916 (=> (not res!2906156) (not e!4280192))))

(assert (=> b!7122916 (= res!2906156 (is-Cons!68891 lt!2562279))))

(declare-fun b!7122919 () Bool)

(declare-fun e!4280194 () Bool)

(assert (=> b!7122919 (= e!4280194 (subseq!754 l2!759 (t!382926 lt!2562279)))))

(declare-fun b!7122918 () Bool)

(declare-fun e!4280191 () Bool)

(assert (=> b!7122918 (= e!4280191 (subseq!754 (t!382926 l2!759) (t!382926 lt!2562279)))))

(declare-fun b!7122917 () Bool)

(assert (=> b!7122917 (= e!4280192 e!4280194)))

(declare-fun res!2906157 () Bool)

(assert (=> b!7122917 (=> res!2906157 e!4280194)))

(assert (=> b!7122917 (= res!2906157 e!4280191)))

(declare-fun res!2906158 () Bool)

(assert (=> b!7122917 (=> (not res!2906158) (not e!4280191))))

(assert (=> b!7122917 (= res!2906158 (= (h!75339 l2!759) (h!75339 lt!2562279)))))

(declare-fun d!2222789 () Bool)

(declare-fun res!2906155 () Bool)

(assert (=> d!2222789 (=> res!2906155 e!4280193)))

(assert (=> d!2222789 (= res!2906155 (is-Nil!68891 l2!759))))

(assert (=> d!2222789 (= (subseq!754 l2!759 lt!2562279) e!4280193)))

(assert (= (and d!2222789 (not res!2906155)) b!7122916))

(assert (= (and b!7122916 res!2906156) b!7122917))

(assert (= (and b!7122917 res!2906158) b!7122918))

(assert (= (and b!7122917 (not res!2906157)) b!7122919))

(assert (=> b!7122919 m!7840210))

(declare-fun m!7840246 () Bool)

(assert (=> b!7122918 m!7840246))

(assert (=> b!7122837 d!2222789))

(declare-fun d!2222793 () Bool)

(declare-fun e!4280195 () Bool)

(assert (=> d!2222793 e!4280195))

(declare-fun res!2906159 () Bool)

(assert (=> d!2222793 (=> (not res!2906159) (not e!4280195))))

(declare-fun lt!2562314 () List!69015)

(assert (=> d!2222793 (= res!2906159 (noDuplicate!2794 lt!2562314))))

(assert (=> d!2222793 (= lt!2562314 (choose!55024 lt!2562277))))

(assert (=> d!2222793 (= (toList!11118 lt!2562277) lt!2562314)))

(declare-fun b!7122920 () Bool)

(assert (=> b!7122920 (= e!4280195 (= (content!14093 lt!2562314) lt!2562277))))

(assert (= (and d!2222793 res!2906159) b!7122920))

(declare-fun m!7840248 () Bool)

(assert (=> d!2222793 m!7840248))

(declare-fun m!7840250 () Bool)

(assert (=> d!2222793 m!7840250))

(declare-fun m!7840252 () Bool)

(assert (=> b!7122920 m!7840252))

(assert (=> b!7122837 d!2222793))

(declare-fun d!2222795 () Bool)

(assert (=> d!2222795 (= (map!16421 (set.union s1!424 s2!395) f!607) (choose!55025 (set.union s1!424 s2!395) f!607))))

(declare-fun bs!1886110 () Bool)

(assert (= bs!1886110 d!2222795))

(declare-fun m!7840254 () Bool)

(assert (=> bs!1886110 m!7840254))

(assert (=> b!7122837 d!2222795))

(declare-fun b!7122925 () Bool)

(declare-fun e!4280198 () Bool)

(declare-fun tp!1961448 () Bool)

(assert (=> b!7122925 (= e!4280198 (and tp_is_empty!45419 tp!1961448))))

(assert (=> b!7122835 (= tp!1961427 e!4280198)))

(assert (= (and b!7122835 (is-Cons!68891 (t!382926 l1!770))) b!7122925))

(declare-fun condSetEmpty!51182 () Bool)

(assert (=> setNonEmpty!51172 (= condSetEmpty!51182 (= setRest!51173 (as set.empty (Set A!633))))))

(declare-fun setRes!51182 () Bool)

(assert (=> setNonEmpty!51172 (= tp!1961430 setRes!51182)))

(declare-fun setIsEmpty!51182 () Bool)

(assert (=> setIsEmpty!51182 setRes!51182))

(declare-fun setNonEmpty!51182 () Bool)

(declare-fun tp!1961451 () Bool)

(assert (=> setNonEmpty!51182 (= setRes!51182 (and tp!1961451 tp_is_empty!45417))))

(declare-fun setElem!51182 () A!633)

(declare-fun setRest!51182 () (Set A!633))

(assert (=> setNonEmpty!51182 (= setRest!51173 (set.union (set.insert setElem!51182 (as set.empty (Set A!633))) setRest!51182))))

(assert (= (and setNonEmpty!51172 condSetEmpty!51182) setIsEmpty!51182))

(assert (= (and setNonEmpty!51172 (not condSetEmpty!51182)) setNonEmpty!51182))

(declare-fun condSetEmpty!51183 () Bool)

(assert (=> setNonEmpty!51173 (= condSetEmpty!51183 (= setRest!51172 (as set.empty (Set A!633))))))

(declare-fun setRes!51183 () Bool)

(assert (=> setNonEmpty!51173 (= tp!1961429 setRes!51183)))

(declare-fun setIsEmpty!51183 () Bool)

(assert (=> setIsEmpty!51183 setRes!51183))

(declare-fun setNonEmpty!51183 () Bool)

(declare-fun tp!1961452 () Bool)

(assert (=> setNonEmpty!51183 (= setRes!51183 (and tp!1961452 tp_is_empty!45417))))

(declare-fun setElem!51183 () A!633)

(declare-fun setRest!51183 () (Set A!633))

(assert (=> setNonEmpty!51183 (= setRest!51172 (set.union (set.insert setElem!51183 (as set.empty (Set A!633))) setRest!51183))))

(assert (= (and setNonEmpty!51173 condSetEmpty!51183) setIsEmpty!51183))

(assert (= (and setNonEmpty!51173 (not condSetEmpty!51183)) setNonEmpty!51183))

(declare-fun b!7122930 () Bool)

(declare-fun e!4280201 () Bool)

(declare-fun tp!1961453 () Bool)

(assert (=> b!7122930 (= e!4280201 (and tp_is_empty!45419 tp!1961453))))

(assert (=> b!7122838 (= tp!1961426 e!4280201)))

(assert (= (and b!7122838 (is-Cons!68891 (t!382926 l2!759))) b!7122930))

(declare-fun b_lambda!271735 () Bool)

(assert (= b_lambda!271733 (or b!7122839 b_lambda!271735)))

(declare-fun bs!1886111 () Bool)

(declare-fun d!2222797 () Bool)

(assert (= bs!1886111 (and d!2222797 b!7122839)))

(assert (=> bs!1886111 (= (dynLambda!28081 lambda!432920 (h!75339 (t!382926 l2!759))) (contains!20525 l1!770 (h!75339 (t!382926 l2!759))))))

(declare-fun m!7840256 () Bool)

(assert (=> bs!1886111 m!7840256))

(assert (=> b!7122863 d!2222797))

(push 1)

(assert (not b!7122919))

(assert tp_is_empty!45417)

(assert (not d!2222783))

(assert (not b!7122930))

(assert b_and!350823)

(assert (not b!7122903))

(assert (not d!2222775))

(assert (not b!7122918))

(assert (not d!2222793))

(assert (not b!7122884))

(assert (not bm!650754))

(assert (not d!2222777))

(assert (not d!2222787))

(assert (not b!7122880))

(assert (not b_next!134517))

(assert tp_is_empty!45419)

(assert (not b!7122879))

(assert (not bs!1886111))

(assert (not d!2222771))

(assert (not b_lambda!271735))

(assert (not b!7122864))

(assert (not b!7122925))

(assert (not b!7122920))

(assert (not d!2222781))

(assert (not d!2222795))

(assert (not b!7122891))

(assert (not setNonEmpty!51183))

(assert (not setNonEmpty!51182))

(assert (not d!2222785))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350823)

(assert (not b_next!134517))

(check-sat)

(pop 1)

