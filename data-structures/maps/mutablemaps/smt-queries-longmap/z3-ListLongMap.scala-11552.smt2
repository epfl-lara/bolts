; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134520 () Bool)

(assert start!134520)

(declare-fun b!1569790 () Bool)

(declare-fun res!1072859 () Bool)

(declare-fun e!875154 () Bool)

(assert (=> b!1569790 (=> (not res!1072859) (not e!875154))))

(declare-datatypes ((B!2548 0))(
  ( (B!2549 (val!19636 Int)) )
))
(declare-datatypes ((tuple2!25538 0))(
  ( (tuple2!25539 (_1!12779 (_ BitVec 64)) (_2!12779 B!2548)) )
))
(declare-datatypes ((List!36917 0))(
  ( (Nil!36914) (Cons!36913 (h!38361 tuple2!25538) (t!51832 List!36917)) )
))
(declare-fun l!750 () List!36917)

(declare-fun isStrictlySorted!1018 (List!36917) Bool)

(assert (=> b!1569790 (= res!1072859 (isStrictlySorted!1018 (t!51832 l!750)))))

(declare-fun b!1569791 () Bool)

(declare-fun res!1072856 () Bool)

(assert (=> b!1569791 (=> (not res!1072856) (not e!875154))))

(declare-fun key2!21 () (_ BitVec 64))

(declare-fun key1!37 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1569791 (= res!1072856 (and ((_ is Cons!36913) l!750) (bvslt (_1!12779 (h!38361 l!750)) key1!37) (bvslt (_1!12779 (h!38361 l!750)) key2!21)))))

(declare-fun res!1072858 () Bool)

(assert (=> start!134520 (=> (not res!1072858) (not e!875154))))

(assert (=> start!134520 (= res!1072858 (not (= key1!37 key2!21)))))

(assert (=> start!134520 e!875154))

(declare-fun tp_is_empty!39099 () Bool)

(assert (=> start!134520 tp_is_empty!39099))

(declare-fun e!875153 () Bool)

(assert (=> start!134520 e!875153))

(assert (=> start!134520 true))

(declare-fun b!1569792 () Bool)

(declare-fun tp!114214 () Bool)

(assert (=> b!1569792 (= e!875153 (and tp_is_empty!39099 tp!114214))))

(declare-fun v1!32 () B!2548)

(declare-fun v2!10 () B!2548)

(declare-fun b!1569793 () Bool)

(declare-fun insertStrictlySorted!596 (List!36917 (_ BitVec 64) B!2548) List!36917)

(assert (=> b!1569793 (= e!875154 (not (= (insertStrictlySorted!596 (insertStrictlySorted!596 l!750 key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!596 (insertStrictlySorted!596 l!750 key2!21 v2!10) key1!37 v1!32))))))

(assert (=> b!1569793 (= (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-datatypes ((Unit!52038 0))(
  ( (Unit!52039) )
))
(declare-fun lt!673264 () Unit!52038)

(declare-fun lemmaInsertStrictlySortedCommutative!17 (List!36917 (_ BitVec 64) B!2548 (_ BitVec 64) B!2548) Unit!52038)

(assert (=> b!1569793 (= lt!673264 (lemmaInsertStrictlySortedCommutative!17 (t!51832 l!750) key1!37 v1!32 key2!21 v2!10))))

(declare-fun b!1569794 () Bool)

(declare-fun res!1072857 () Bool)

(assert (=> b!1569794 (=> (not res!1072857) (not e!875154))))

(assert (=> b!1569794 (= res!1072857 (isStrictlySorted!1018 l!750))))

(assert (= (and start!134520 res!1072858) b!1569794))

(assert (= (and b!1569794 res!1072857) b!1569791))

(assert (= (and b!1569791 res!1072856) b!1569790))

(assert (= (and b!1569790 res!1072859) b!1569793))

(assert (= (and start!134520 ((_ is Cons!36913) l!750)) b!1569792))

(declare-fun m!1443881 () Bool)

(assert (=> b!1569790 m!1443881))

(declare-fun m!1443883 () Bool)

(assert (=> b!1569793 m!1443883))

(declare-fun m!1443885 () Bool)

(assert (=> b!1569793 m!1443885))

(declare-fun m!1443887 () Bool)

(assert (=> b!1569793 m!1443887))

(declare-fun m!1443889 () Bool)

(assert (=> b!1569793 m!1443889))

(declare-fun m!1443891 () Bool)

(assert (=> b!1569793 m!1443891))

(assert (=> b!1569793 m!1443885))

(declare-fun m!1443893 () Bool)

(assert (=> b!1569793 m!1443893))

(assert (=> b!1569793 m!1443889))

(declare-fun m!1443895 () Bool)

(assert (=> b!1569793 m!1443895))

(declare-fun m!1443897 () Bool)

(assert (=> b!1569793 m!1443897))

(assert (=> b!1569793 m!1443895))

(assert (=> b!1569793 m!1443883))

(declare-fun m!1443899 () Bool)

(assert (=> b!1569793 m!1443899))

(declare-fun m!1443901 () Bool)

(assert (=> b!1569794 m!1443901))

(check-sat (not b!1569794) (not b!1569792) (not b!1569793) (not b!1569790) tp_is_empty!39099)
(check-sat)
(get-model)

(declare-fun d!163899 () Bool)

(declare-fun res!1072884 () Bool)

(declare-fun e!875173 () Bool)

(assert (=> d!163899 (=> res!1072884 e!875173)))

(assert (=> d!163899 (= res!1072884 (or ((_ is Nil!36914) l!750) ((_ is Nil!36914) (t!51832 l!750))))))

(assert (=> d!163899 (= (isStrictlySorted!1018 l!750) e!875173)))

(declare-fun b!1569822 () Bool)

(declare-fun e!875174 () Bool)

(assert (=> b!1569822 (= e!875173 e!875174)))

(declare-fun res!1072885 () Bool)

(assert (=> b!1569822 (=> (not res!1072885) (not e!875174))))

(assert (=> b!1569822 (= res!1072885 (bvslt (_1!12779 (h!38361 l!750)) (_1!12779 (h!38361 (t!51832 l!750)))))))

(declare-fun b!1569823 () Bool)

(assert (=> b!1569823 (= e!875174 (isStrictlySorted!1018 (t!51832 l!750)))))

(assert (= (and d!163899 (not res!1072884)) b!1569822))

(assert (= (and b!1569822 res!1072885) b!1569823))

(assert (=> b!1569823 m!1443881))

(assert (=> b!1569794 d!163899))

(declare-fun e!875227 () List!36917)

(declare-fun bm!72138 () Bool)

(declare-fun c!144763 () Bool)

(declare-fun call!72143 () List!36917)

(declare-fun $colon$colon!1000 (List!36917 tuple2!25538) List!36917)

(assert (=> bm!72138 (= call!72143 ($colon$colon!1000 e!875227 (ite c!144763 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10)) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144765 () Bool)

(assert (=> bm!72138 (= c!144765 c!144763)))

(declare-fun bm!72139 () Bool)

(declare-fun call!72141 () List!36917)

(assert (=> bm!72139 (= call!72141 call!72143)))

(declare-fun b!1569912 () Bool)

(declare-fun e!875225 () List!36917)

(assert (=> b!1569912 (= e!875225 call!72143)))

(declare-fun b!1569913 () Bool)

(declare-fun res!1072911 () Bool)

(declare-fun e!875223 () Bool)

(assert (=> b!1569913 (=> (not res!1072911) (not e!875223))))

(declare-fun lt!673276 () List!36917)

(declare-fun containsKey!868 (List!36917 (_ BitVec 64)) Bool)

(assert (=> b!1569913 (= res!1072911 (containsKey!868 lt!673276 key1!37))))

(declare-fun b!1569914 () Bool)

(declare-fun e!875226 () List!36917)

(declare-fun call!72142 () List!36917)

(assert (=> b!1569914 (= e!875226 call!72142)))

(declare-fun bm!72140 () Bool)

(assert (=> bm!72140 (= call!72142 call!72141)))

(declare-fun c!144762 () Bool)

(declare-fun b!1569915 () Bool)

(assert (=> b!1569915 (= c!144762 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key2!21 v2!10)) (bvsgt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10))) key1!37)))))

(declare-fun e!875224 () List!36917)

(assert (=> b!1569915 (= e!875224 e!875226)))

(declare-fun b!1569917 () Bool)

(assert (=> b!1569917 (= e!875226 call!72142)))

(declare-fun b!1569918 () Bool)

(assert (=> b!1569918 (= e!875227 (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1569919 () Bool)

(declare-fun c!144764 () Bool)

(assert (=> b!1569919 (= e!875227 (ite c!144764 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)) (ite c!144762 (Cons!36913 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10)) (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) Nil!36914)))))

(declare-fun b!1569916 () Bool)

(assert (=> b!1569916 (= e!875224 call!72141)))

(declare-fun d!163901 () Bool)

(assert (=> d!163901 e!875223))

(declare-fun res!1072910 () Bool)

(assert (=> d!163901 (=> (not res!1072910) (not e!875223))))

(assert (=> d!163901 (= res!1072910 (isStrictlySorted!1018 lt!673276))))

(assert (=> d!163901 (= lt!673276 e!875225)))

(assert (=> d!163901 (= c!144763 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key2!21 v2!10)) (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10))) key1!37)))))

(assert (=> d!163901 (isStrictlySorted!1018 (insertStrictlySorted!596 l!750 key2!21 v2!10))))

(assert (=> d!163901 (= (insertStrictlySorted!596 (insertStrictlySorted!596 l!750 key2!21 v2!10) key1!37 v1!32) lt!673276)))

(declare-fun b!1569920 () Bool)

(declare-fun contains!10446 (List!36917 tuple2!25538) Bool)

(assert (=> b!1569920 (= e!875223 (contains!10446 lt!673276 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1569921 () Bool)

(assert (=> b!1569921 (= e!875225 e!875224)))

(assert (=> b!1569921 (= c!144764 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key2!21 v2!10)) (= (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10))) key1!37)))))

(assert (= (and d!163901 c!144763) b!1569912))

(assert (= (and d!163901 (not c!144763)) b!1569921))

(assert (= (and b!1569921 c!144764) b!1569916))

(assert (= (and b!1569921 (not c!144764)) b!1569915))

(assert (= (and b!1569915 c!144762) b!1569917))

(assert (= (and b!1569915 (not c!144762)) b!1569914))

(assert (= (or b!1569917 b!1569914) bm!72140))

(assert (= (or b!1569916 bm!72140) bm!72139))

(assert (= (or b!1569912 bm!72139) bm!72138))

(assert (= (and bm!72138 c!144765) b!1569918))

(assert (= (and bm!72138 (not c!144765)) b!1569919))

(assert (= (and d!163901 res!1072910) b!1569913))

(assert (= (and b!1569913 res!1072911) b!1569920))

(declare-fun m!1443953 () Bool)

(assert (=> b!1569913 m!1443953))

(declare-fun m!1443955 () Bool)

(assert (=> d!163901 m!1443955))

(assert (=> d!163901 m!1443895))

(declare-fun m!1443957 () Bool)

(assert (=> d!163901 m!1443957))

(declare-fun m!1443959 () Bool)

(assert (=> b!1569920 m!1443959))

(declare-fun m!1443961 () Bool)

(assert (=> bm!72138 m!1443961))

(declare-fun m!1443963 () Bool)

(assert (=> b!1569918 m!1443963))

(assert (=> b!1569793 d!163901))

(declare-fun d!163913 () Bool)

(assert (=> d!163913 (= (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10) key1!37 v1!32))))

(declare-fun lt!673292 () Unit!52038)

(declare-fun choose!2092 (List!36917 (_ BitVec 64) B!2548 (_ BitVec 64) B!2548) Unit!52038)

(assert (=> d!163913 (= lt!673292 (choose!2092 (t!51832 l!750) key1!37 v1!32 key2!21 v2!10))))

(assert (=> d!163913 (not (= key1!37 key2!21))))

(assert (=> d!163913 (= (lemmaInsertStrictlySortedCommutative!17 (t!51832 l!750) key1!37 v1!32 key2!21 v2!10) lt!673292)))

(declare-fun bs!45217 () Bool)

(assert (= bs!45217 d!163913))

(assert (=> bs!45217 m!1443885))

(assert (=> bs!45217 m!1443885))

(assert (=> bs!45217 m!1443887))

(assert (=> bs!45217 m!1443883))

(assert (=> bs!45217 m!1443899))

(declare-fun m!1444033 () Bool)

(assert (=> bs!45217 m!1444033))

(assert (=> bs!45217 m!1443883))

(assert (=> b!1569793 d!163913))

(declare-fun e!875272 () List!36917)

(declare-fun bm!72165 () Bool)

(declare-fun c!144799 () Bool)

(declare-fun call!72170 () List!36917)

(assert (=> bm!72165 (= call!72170 ($colon$colon!1000 e!875272 (ite c!144799 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32)) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144801 () Bool)

(assert (=> bm!72165 (= c!144801 c!144799)))

(declare-fun bm!72166 () Bool)

(declare-fun call!72168 () List!36917)

(assert (=> bm!72166 (= call!72168 call!72170)))

(declare-fun b!1570002 () Bool)

(declare-fun e!875270 () List!36917)

(assert (=> b!1570002 (= e!875270 call!72170)))

(declare-fun b!1570003 () Bool)

(declare-fun res!1072929 () Bool)

(declare-fun e!875268 () Bool)

(assert (=> b!1570003 (=> (not res!1072929) (not e!875268))))

(declare-fun lt!673294 () List!36917)

(assert (=> b!1570003 (= res!1072929 (containsKey!868 lt!673294 key2!21))))

(declare-fun b!1570004 () Bool)

(declare-fun e!875271 () List!36917)

(declare-fun call!72169 () List!36917)

(assert (=> b!1570004 (= e!875271 call!72169)))

(declare-fun bm!72167 () Bool)

(assert (=> bm!72167 (= call!72169 call!72168)))

(declare-fun b!1570005 () Bool)

(declare-fun c!144798 () Bool)

(assert (=> b!1570005 (= c!144798 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key1!37 v1!32)) (bvsgt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32))) key2!21)))))

(declare-fun e!875269 () List!36917)

(assert (=> b!1570005 (= e!875269 e!875271)))

(declare-fun b!1570007 () Bool)

(assert (=> b!1570007 (= e!875271 call!72169)))

(declare-fun b!1570008 () Bool)

(assert (=> b!1570008 (= e!875272 (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1570009 () Bool)

(declare-fun c!144800 () Bool)

(assert (=> b!1570009 (= e!875272 (ite c!144800 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)) (ite c!144798 (Cons!36913 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32)) (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) Nil!36914)))))

(declare-fun b!1570006 () Bool)

(assert (=> b!1570006 (= e!875269 call!72168)))

(declare-fun d!163931 () Bool)

(assert (=> d!163931 e!875268))

(declare-fun res!1072928 () Bool)

(assert (=> d!163931 (=> (not res!1072928) (not e!875268))))

(assert (=> d!163931 (= res!1072928 (isStrictlySorted!1018 lt!673294))))

(assert (=> d!163931 (= lt!673294 e!875270)))

(assert (=> d!163931 (= c!144799 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key1!37 v1!32)) (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32))) key2!21)))))

(assert (=> d!163931 (isStrictlySorted!1018 (insertStrictlySorted!596 l!750 key1!37 v1!32))))

(assert (=> d!163931 (= (insertStrictlySorted!596 (insertStrictlySorted!596 l!750 key1!37 v1!32) key2!21 v2!10) lt!673294)))

(declare-fun b!1570010 () Bool)

(assert (=> b!1570010 (= e!875268 (contains!10446 lt!673294 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570011 () Bool)

(assert (=> b!1570011 (= e!875270 e!875269)))

(assert (=> b!1570011 (= c!144800 (and ((_ is Cons!36913) (insertStrictlySorted!596 l!750 key1!37 v1!32)) (= (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32))) key2!21)))))

(assert (= (and d!163931 c!144799) b!1570002))

(assert (= (and d!163931 (not c!144799)) b!1570011))

(assert (= (and b!1570011 c!144800) b!1570006))

(assert (= (and b!1570011 (not c!144800)) b!1570005))

(assert (= (and b!1570005 c!144798) b!1570007))

(assert (= (and b!1570005 (not c!144798)) b!1570004))

(assert (= (or b!1570007 b!1570004) bm!72167))

(assert (= (or b!1570006 bm!72167) bm!72166))

(assert (= (or b!1570002 bm!72166) bm!72165))

(assert (= (and bm!72165 c!144801) b!1570008))

(assert (= (and bm!72165 (not c!144801)) b!1570009))

(assert (= (and d!163931 res!1072928) b!1570003))

(assert (= (and b!1570003 res!1072929) b!1570010))

(declare-fun m!1444053 () Bool)

(assert (=> b!1570003 m!1444053))

(declare-fun m!1444057 () Bool)

(assert (=> d!163931 m!1444057))

(assert (=> d!163931 m!1443889))

(declare-fun m!1444061 () Bool)

(assert (=> d!163931 m!1444061))

(declare-fun m!1444065 () Bool)

(assert (=> b!1570010 m!1444065))

(declare-fun m!1444067 () Bool)

(assert (=> bm!72165 m!1444067))

(declare-fun m!1444071 () Bool)

(assert (=> b!1570008 m!1444071))

(assert (=> b!1569793 d!163931))

(declare-fun call!72179 () List!36917)

(declare-fun c!144812 () Bool)

(declare-fun e!875287 () List!36917)

(declare-fun bm!72174 () Bool)

(assert (=> bm!72174 (= call!72179 ($colon$colon!1000 e!875287 (ite c!144812 (h!38361 l!750) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144814 () Bool)

(assert (=> bm!72174 (= c!144814 c!144812)))

(declare-fun bm!72175 () Bool)

(declare-fun call!72177 () List!36917)

(assert (=> bm!72175 (= call!72177 call!72179)))

(declare-fun b!1570032 () Bool)

(declare-fun e!875285 () List!36917)

(assert (=> b!1570032 (= e!875285 call!72179)))

(declare-fun b!1570033 () Bool)

(declare-fun res!1072935 () Bool)

(declare-fun e!875283 () Bool)

(assert (=> b!1570033 (=> (not res!1072935) (not e!875283))))

(declare-fun lt!673297 () List!36917)

(assert (=> b!1570033 (= res!1072935 (containsKey!868 lt!673297 key2!21))))

(declare-fun b!1570034 () Bool)

(declare-fun e!875286 () List!36917)

(declare-fun call!72178 () List!36917)

(assert (=> b!1570034 (= e!875286 call!72178)))

(declare-fun bm!72176 () Bool)

(assert (=> bm!72176 (= call!72178 call!72177)))

(declare-fun b!1570035 () Bool)

(declare-fun c!144810 () Bool)

(assert (=> b!1570035 (= c!144810 (and ((_ is Cons!36913) l!750) (bvsgt (_1!12779 (h!38361 l!750)) key2!21)))))

(declare-fun e!875284 () List!36917)

(assert (=> b!1570035 (= e!875284 e!875286)))

(declare-fun b!1570037 () Bool)

(assert (=> b!1570037 (= e!875286 call!72178)))

(declare-fun b!1570038 () Bool)

(assert (=> b!1570038 (= e!875287 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))))

(declare-fun c!144813 () Bool)

(declare-fun b!1570039 () Bool)

(assert (=> b!1570039 (= e!875287 (ite c!144813 (t!51832 l!750) (ite c!144810 (Cons!36913 (h!38361 l!750) (t!51832 l!750)) Nil!36914)))))

(declare-fun b!1570036 () Bool)

(assert (=> b!1570036 (= e!875284 call!72177)))

(declare-fun d!163939 () Bool)

(assert (=> d!163939 e!875283))

(declare-fun res!1072934 () Bool)

(assert (=> d!163939 (=> (not res!1072934) (not e!875283))))

(assert (=> d!163939 (= res!1072934 (isStrictlySorted!1018 lt!673297))))

(assert (=> d!163939 (= lt!673297 e!875285)))

(assert (=> d!163939 (= c!144812 (and ((_ is Cons!36913) l!750) (bvslt (_1!12779 (h!38361 l!750)) key2!21)))))

(assert (=> d!163939 (isStrictlySorted!1018 l!750)))

(assert (=> d!163939 (= (insertStrictlySorted!596 l!750 key2!21 v2!10) lt!673297)))

(declare-fun b!1570041 () Bool)

(assert (=> b!1570041 (= e!875283 (contains!10446 lt!673297 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570043 () Bool)

(assert (=> b!1570043 (= e!875285 e!875284)))

(assert (=> b!1570043 (= c!144813 (and ((_ is Cons!36913) l!750) (= (_1!12779 (h!38361 l!750)) key2!21)))))

(assert (= (and d!163939 c!144812) b!1570032))

(assert (= (and d!163939 (not c!144812)) b!1570043))

(assert (= (and b!1570043 c!144813) b!1570036))

(assert (= (and b!1570043 (not c!144813)) b!1570035))

(assert (= (and b!1570035 c!144810) b!1570037))

(assert (= (and b!1570035 (not c!144810)) b!1570034))

(assert (= (or b!1570037 b!1570034) bm!72176))

(assert (= (or b!1570036 bm!72176) bm!72175))

(assert (= (or b!1570032 bm!72175) bm!72174))

(assert (= (and bm!72174 c!144814) b!1570038))

(assert (= (and bm!72174 (not c!144814)) b!1570039))

(assert (= (and d!163939 res!1072934) b!1570033))

(assert (= (and b!1570033 res!1072935) b!1570041))

(declare-fun m!1444083 () Bool)

(assert (=> b!1570033 m!1444083))

(declare-fun m!1444086 () Bool)

(assert (=> d!163939 m!1444086))

(assert (=> d!163939 m!1443901))

(declare-fun m!1444091 () Bool)

(assert (=> b!1570041 m!1444091))

(declare-fun m!1444097 () Bool)

(assert (=> bm!72174 m!1444097))

(assert (=> b!1570038 m!1443883))

(assert (=> b!1569793 d!163939))

(declare-fun e!875300 () List!36917)

(declare-fun call!72185 () List!36917)

(declare-fun bm!72180 () Bool)

(declare-fun c!144819 () Bool)

(assert (=> bm!72180 (= call!72185 ($colon$colon!1000 e!875300 (ite c!144819 (h!38361 l!750) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144821 () Bool)

(assert (=> bm!72180 (= c!144821 c!144819)))

(declare-fun bm!72181 () Bool)

(declare-fun call!72183 () List!36917)

(assert (=> bm!72181 (= call!72183 call!72185)))

(declare-fun b!1570057 () Bool)

(declare-fun e!875298 () List!36917)

(assert (=> b!1570057 (= e!875298 call!72185)))

(declare-fun b!1570058 () Bool)

(declare-fun res!1072939 () Bool)

(declare-fun e!875296 () Bool)

(assert (=> b!1570058 (=> (not res!1072939) (not e!875296))))

(declare-fun lt!673299 () List!36917)

(assert (=> b!1570058 (= res!1072939 (containsKey!868 lt!673299 key1!37))))

(declare-fun b!1570059 () Bool)

(declare-fun e!875299 () List!36917)

(declare-fun call!72184 () List!36917)

(assert (=> b!1570059 (= e!875299 call!72184)))

(declare-fun bm!72182 () Bool)

(assert (=> bm!72182 (= call!72184 call!72183)))

(declare-fun b!1570060 () Bool)

(declare-fun c!144818 () Bool)

(assert (=> b!1570060 (= c!144818 (and ((_ is Cons!36913) l!750) (bvsgt (_1!12779 (h!38361 l!750)) key1!37)))))

(declare-fun e!875297 () List!36917)

(assert (=> b!1570060 (= e!875297 e!875299)))

(declare-fun b!1570062 () Bool)

(assert (=> b!1570062 (= e!875299 call!72184)))

(declare-fun b!1570063 () Bool)

(assert (=> b!1570063 (= e!875300 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))))

(declare-fun c!144820 () Bool)

(declare-fun b!1570064 () Bool)

(assert (=> b!1570064 (= e!875300 (ite c!144820 (t!51832 l!750) (ite c!144818 (Cons!36913 (h!38361 l!750) (t!51832 l!750)) Nil!36914)))))

(declare-fun b!1570061 () Bool)

(assert (=> b!1570061 (= e!875297 call!72183)))

(declare-fun d!163941 () Bool)

(assert (=> d!163941 e!875296))

(declare-fun res!1072938 () Bool)

(assert (=> d!163941 (=> (not res!1072938) (not e!875296))))

(assert (=> d!163941 (= res!1072938 (isStrictlySorted!1018 lt!673299))))

(assert (=> d!163941 (= lt!673299 e!875298)))

(assert (=> d!163941 (= c!144819 (and ((_ is Cons!36913) l!750) (bvslt (_1!12779 (h!38361 l!750)) key1!37)))))

(assert (=> d!163941 (isStrictlySorted!1018 l!750)))

(assert (=> d!163941 (= (insertStrictlySorted!596 l!750 key1!37 v1!32) lt!673299)))

(declare-fun b!1570065 () Bool)

(assert (=> b!1570065 (= e!875296 (contains!10446 lt!673299 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570066 () Bool)

(assert (=> b!1570066 (= e!875298 e!875297)))

(assert (=> b!1570066 (= c!144820 (and ((_ is Cons!36913) l!750) (= (_1!12779 (h!38361 l!750)) key1!37)))))

(assert (= (and d!163941 c!144819) b!1570057))

(assert (= (and d!163941 (not c!144819)) b!1570066))

(assert (= (and b!1570066 c!144820) b!1570061))

(assert (= (and b!1570066 (not c!144820)) b!1570060))

(assert (= (and b!1570060 c!144818) b!1570062))

(assert (= (and b!1570060 (not c!144818)) b!1570059))

(assert (= (or b!1570062 b!1570059) bm!72182))

(assert (= (or b!1570061 bm!72182) bm!72181))

(assert (= (or b!1570057 bm!72181) bm!72180))

(assert (= (and bm!72180 c!144821) b!1570063))

(assert (= (and bm!72180 (not c!144821)) b!1570064))

(assert (= (and d!163941 res!1072938) b!1570058))

(assert (= (and b!1570058 res!1072939) b!1570065))

(declare-fun m!1444103 () Bool)

(assert (=> b!1570058 m!1444103))

(declare-fun m!1444105 () Bool)

(assert (=> d!163941 m!1444105))

(assert (=> d!163941 m!1443901))

(declare-fun m!1444109 () Bool)

(assert (=> b!1570065 m!1444109))

(declare-fun m!1444115 () Bool)

(assert (=> bm!72180 m!1444115))

(assert (=> b!1570063 m!1443885))

(assert (=> b!1569793 d!163941))

(declare-fun e!875310 () List!36917)

(declare-fun bm!72186 () Bool)

(declare-fun c!144827 () Bool)

(declare-fun call!72191 () List!36917)

(assert (=> bm!72186 (= call!72191 ($colon$colon!1000 e!875310 (ite c!144827 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144829 () Bool)

(assert (=> bm!72186 (= c!144829 c!144827)))

(declare-fun bm!72187 () Bool)

(declare-fun call!72189 () List!36917)

(assert (=> bm!72187 (= call!72189 call!72191)))

(declare-fun b!1570077 () Bool)

(declare-fun e!875308 () List!36917)

(assert (=> b!1570077 (= e!875308 call!72191)))

(declare-fun b!1570078 () Bool)

(declare-fun res!1072943 () Bool)

(declare-fun e!875306 () Bool)

(assert (=> b!1570078 (=> (not res!1072943) (not e!875306))))

(declare-fun lt!673301 () List!36917)

(assert (=> b!1570078 (= res!1072943 (containsKey!868 lt!673301 key2!21))))

(declare-fun b!1570079 () Bool)

(declare-fun e!875309 () List!36917)

(declare-fun call!72190 () List!36917)

(assert (=> b!1570079 (= e!875309 call!72190)))

(declare-fun bm!72188 () Bool)

(assert (=> bm!72188 (= call!72190 call!72189)))

(declare-fun c!144826 () Bool)

(declare-fun b!1570080 () Bool)

(assert (=> b!1570080 (= c!144826 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (bvsgt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) key2!21)))))

(declare-fun e!875307 () List!36917)

(assert (=> b!1570080 (= e!875307 e!875309)))

(declare-fun b!1570082 () Bool)

(assert (=> b!1570082 (= e!875309 call!72190)))

(declare-fun b!1570083 () Bool)

(assert (=> b!1570083 (= e!875310 (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) key2!21 v2!10))))

(declare-fun b!1570084 () Bool)

(declare-fun c!144828 () Bool)

(assert (=> b!1570084 (= e!875310 (ite c!144828 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (ite c!144826 (Cons!36913 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) Nil!36914)))))

(declare-fun b!1570081 () Bool)

(assert (=> b!1570081 (= e!875307 call!72189)))

(declare-fun d!163945 () Bool)

(assert (=> d!163945 e!875306))

(declare-fun res!1072942 () Bool)

(assert (=> d!163945 (=> (not res!1072942) (not e!875306))))

(assert (=> d!163945 (= res!1072942 (isStrictlySorted!1018 lt!673301))))

(assert (=> d!163945 (= lt!673301 e!875308)))

(assert (=> d!163945 (= c!144827 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) key2!21)))))

(assert (=> d!163945 (isStrictlySorted!1018 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))))

(assert (=> d!163945 (= (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32) key2!21 v2!10) lt!673301)))

(declare-fun b!1570085 () Bool)

(assert (=> b!1570085 (= e!875306 (contains!10446 lt!673301 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570086 () Bool)

(assert (=> b!1570086 (= e!875308 e!875307)))

(assert (=> b!1570086 (= c!144828 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (= (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) key2!21)))))

(assert (= (and d!163945 c!144827) b!1570077))

(assert (= (and d!163945 (not c!144827)) b!1570086))

(assert (= (and b!1570086 c!144828) b!1570081))

(assert (= (and b!1570086 (not c!144828)) b!1570080))

(assert (= (and b!1570080 c!144826) b!1570082))

(assert (= (and b!1570080 (not c!144826)) b!1570079))

(assert (= (or b!1570082 b!1570079) bm!72188))

(assert (= (or b!1570081 bm!72188) bm!72187))

(assert (= (or b!1570077 bm!72187) bm!72186))

(assert (= (and bm!72186 c!144829) b!1570083))

(assert (= (and bm!72186 (not c!144829)) b!1570084))

(assert (= (and d!163945 res!1072942) b!1570078))

(assert (= (and b!1570078 res!1072943) b!1570085))

(declare-fun m!1444121 () Bool)

(assert (=> b!1570078 m!1444121))

(declare-fun m!1444125 () Bool)

(assert (=> d!163945 m!1444125))

(assert (=> d!163945 m!1443885))

(declare-fun m!1444129 () Bool)

(assert (=> d!163945 m!1444129))

(declare-fun m!1444133 () Bool)

(assert (=> b!1570085 m!1444133))

(declare-fun m!1444137 () Bool)

(assert (=> bm!72186 m!1444137))

(declare-fun m!1444141 () Bool)

(assert (=> b!1570083 m!1444141))

(assert (=> b!1569793 d!163945))

(declare-fun e!875320 () List!36917)

(declare-fun c!144835 () Bool)

(declare-fun call!72197 () List!36917)

(declare-fun bm!72192 () Bool)

(assert (=> bm!72192 (= call!72197 ($colon$colon!1000 e!875320 (ite c!144835 (h!38361 (t!51832 l!750)) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144837 () Bool)

(assert (=> bm!72192 (= c!144837 c!144835)))

(declare-fun bm!72193 () Bool)

(declare-fun call!72195 () List!36917)

(assert (=> bm!72193 (= call!72195 call!72197)))

(declare-fun b!1570097 () Bool)

(declare-fun e!875318 () List!36917)

(assert (=> b!1570097 (= e!875318 call!72197)))

(declare-fun b!1570098 () Bool)

(declare-fun res!1072947 () Bool)

(declare-fun e!875316 () Bool)

(assert (=> b!1570098 (=> (not res!1072947) (not e!875316))))

(declare-fun lt!673303 () List!36917)

(assert (=> b!1570098 (= res!1072947 (containsKey!868 lt!673303 key2!21))))

(declare-fun b!1570099 () Bool)

(declare-fun e!875319 () List!36917)

(declare-fun call!72196 () List!36917)

(assert (=> b!1570099 (= e!875319 call!72196)))

(declare-fun bm!72194 () Bool)

(assert (=> bm!72194 (= call!72196 call!72195)))

(declare-fun b!1570100 () Bool)

(declare-fun c!144834 () Bool)

(assert (=> b!1570100 (= c!144834 (and ((_ is Cons!36913) (t!51832 l!750)) (bvsgt (_1!12779 (h!38361 (t!51832 l!750))) key2!21)))))

(declare-fun e!875317 () List!36917)

(assert (=> b!1570100 (= e!875317 e!875319)))

(declare-fun b!1570102 () Bool)

(assert (=> b!1570102 (= e!875319 call!72196)))

(declare-fun b!1570103 () Bool)

(assert (=> b!1570103 (= e!875320 (insertStrictlySorted!596 (t!51832 (t!51832 l!750)) key2!21 v2!10))))

(declare-fun c!144836 () Bool)

(declare-fun b!1570104 () Bool)

(assert (=> b!1570104 (= e!875320 (ite c!144836 (t!51832 (t!51832 l!750)) (ite c!144834 (Cons!36913 (h!38361 (t!51832 l!750)) (t!51832 (t!51832 l!750))) Nil!36914)))))

(declare-fun b!1570101 () Bool)

(assert (=> b!1570101 (= e!875317 call!72195)))

(declare-fun d!163949 () Bool)

(assert (=> d!163949 e!875316))

(declare-fun res!1072946 () Bool)

(assert (=> d!163949 (=> (not res!1072946) (not e!875316))))

(assert (=> d!163949 (= res!1072946 (isStrictlySorted!1018 lt!673303))))

(assert (=> d!163949 (= lt!673303 e!875318)))

(assert (=> d!163949 (= c!144835 (and ((_ is Cons!36913) (t!51832 l!750)) (bvslt (_1!12779 (h!38361 (t!51832 l!750))) key2!21)))))

(assert (=> d!163949 (isStrictlySorted!1018 (t!51832 l!750))))

(assert (=> d!163949 (= (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10) lt!673303)))

(declare-fun b!1570105 () Bool)

(assert (=> b!1570105 (= e!875316 (contains!10446 lt!673303 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570106 () Bool)

(assert (=> b!1570106 (= e!875318 e!875317)))

(assert (=> b!1570106 (= c!144836 (and ((_ is Cons!36913) (t!51832 l!750)) (= (_1!12779 (h!38361 (t!51832 l!750))) key2!21)))))

(assert (= (and d!163949 c!144835) b!1570097))

(assert (= (and d!163949 (not c!144835)) b!1570106))

(assert (= (and b!1570106 c!144836) b!1570101))

(assert (= (and b!1570106 (not c!144836)) b!1570100))

(assert (= (and b!1570100 c!144834) b!1570102))

(assert (= (and b!1570100 (not c!144834)) b!1570099))

(assert (= (or b!1570102 b!1570099) bm!72194))

(assert (= (or b!1570101 bm!72194) bm!72193))

(assert (= (or b!1570097 bm!72193) bm!72192))

(assert (= (and bm!72192 c!144837) b!1570103))

(assert (= (and bm!72192 (not c!144837)) b!1570104))

(assert (= (and d!163949 res!1072946) b!1570098))

(assert (= (and b!1570098 res!1072947) b!1570105))

(declare-fun m!1444146 () Bool)

(assert (=> b!1570098 m!1444146))

(declare-fun m!1444149 () Bool)

(assert (=> d!163949 m!1444149))

(assert (=> d!163949 m!1443881))

(declare-fun m!1444155 () Bool)

(assert (=> b!1570105 m!1444155))

(declare-fun m!1444159 () Bool)

(assert (=> bm!72192 m!1444159))

(declare-fun m!1444163 () Bool)

(assert (=> b!1570103 m!1444163))

(assert (=> b!1569793 d!163949))

(declare-fun e!875332 () List!36917)

(declare-fun c!144843 () Bool)

(declare-fun call!72203 () List!36917)

(declare-fun bm!72198 () Bool)

(assert (=> bm!72198 (= call!72203 ($colon$colon!1000 e!875332 (ite c!144843 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144845 () Bool)

(assert (=> bm!72198 (= c!144845 c!144843)))

(declare-fun bm!72199 () Bool)

(declare-fun call!72201 () List!36917)

(assert (=> bm!72199 (= call!72201 call!72203)))

(declare-fun b!1570121 () Bool)

(declare-fun e!875330 () List!36917)

(assert (=> b!1570121 (= e!875330 call!72203)))

(declare-fun b!1570122 () Bool)

(declare-fun res!1072951 () Bool)

(declare-fun e!875326 () Bool)

(assert (=> b!1570122 (=> (not res!1072951) (not e!875326))))

(declare-fun lt!673305 () List!36917)

(assert (=> b!1570122 (= res!1072951 (containsKey!868 lt!673305 key1!37))))

(declare-fun b!1570123 () Bool)

(declare-fun e!875331 () List!36917)

(declare-fun call!72202 () List!36917)

(assert (=> b!1570123 (= e!875331 call!72202)))

(declare-fun bm!72200 () Bool)

(assert (=> bm!72200 (= call!72202 call!72201)))

(declare-fun c!144842 () Bool)

(declare-fun b!1570124 () Bool)

(assert (=> b!1570124 (= c!144842 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (bvsgt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) key1!37)))))

(declare-fun e!875328 () List!36917)

(assert (=> b!1570124 (= e!875328 e!875331)))

(declare-fun b!1570126 () Bool)

(assert (=> b!1570126 (= e!875331 call!72202)))

(declare-fun b!1570127 () Bool)

(assert (=> b!1570127 (= e!875332 (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) key1!37 v1!32))))

(declare-fun b!1570128 () Bool)

(declare-fun c!144844 () Bool)

(assert (=> b!1570128 (= e!875332 (ite c!144844 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (ite c!144842 (Cons!36913 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) Nil!36914)))))

(declare-fun b!1570125 () Bool)

(assert (=> b!1570125 (= e!875328 call!72201)))

(declare-fun d!163953 () Bool)

(assert (=> d!163953 e!875326))

(declare-fun res!1072950 () Bool)

(assert (=> d!163953 (=> (not res!1072950) (not e!875326))))

(assert (=> d!163953 (= res!1072950 (isStrictlySorted!1018 lt!673305))))

(assert (=> d!163953 (= lt!673305 e!875330)))

(assert (=> d!163953 (= c!144843 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) key1!37)))))

(assert (=> d!163953 (isStrictlySorted!1018 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))))

(assert (=> d!163953 (= (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10) key1!37 v1!32) lt!673305)))

(declare-fun b!1570129 () Bool)

(assert (=> b!1570129 (= e!875326 (contains!10446 lt!673305 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570130 () Bool)

(assert (=> b!1570130 (= e!875330 e!875328)))

(assert (=> b!1570130 (= c!144844 (and ((_ is Cons!36913) (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (= (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) key1!37)))))

(assert (= (and d!163953 c!144843) b!1570121))

(assert (= (and d!163953 (not c!144843)) b!1570130))

(assert (= (and b!1570130 c!144844) b!1570125))

(assert (= (and b!1570130 (not c!144844)) b!1570124))

(assert (= (and b!1570124 c!144842) b!1570126))

(assert (= (and b!1570124 (not c!144842)) b!1570123))

(assert (= (or b!1570126 b!1570123) bm!72200))

(assert (= (or b!1570125 bm!72200) bm!72199))

(assert (= (or b!1570121 bm!72199) bm!72198))

(assert (= (and bm!72198 c!144845) b!1570127))

(assert (= (and bm!72198 (not c!144845)) b!1570128))

(assert (= (and d!163953 res!1072950) b!1570122))

(assert (= (and b!1570122 res!1072951) b!1570129))

(declare-fun m!1444165 () Bool)

(assert (=> b!1570122 m!1444165))

(declare-fun m!1444167 () Bool)

(assert (=> d!163953 m!1444167))

(assert (=> d!163953 m!1443883))

(declare-fun m!1444169 () Bool)

(assert (=> d!163953 m!1444169))

(declare-fun m!1444171 () Bool)

(assert (=> b!1570129 m!1444171))

(declare-fun m!1444173 () Bool)

(assert (=> bm!72198 m!1444173))

(declare-fun m!1444175 () Bool)

(assert (=> b!1570127 m!1444175))

(assert (=> b!1569793 d!163953))

(declare-fun call!72206 () List!36917)

(declare-fun e!875338 () List!36917)

(declare-fun c!144847 () Bool)

(declare-fun bm!72201 () Bool)

(assert (=> bm!72201 (= call!72206 ($colon$colon!1000 e!875338 (ite c!144847 (h!38361 (t!51832 l!750)) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144849 () Bool)

(assert (=> bm!72201 (= c!144849 c!144847)))

(declare-fun bm!72202 () Bool)

(declare-fun call!72204 () List!36917)

(assert (=> bm!72202 (= call!72204 call!72206)))

(declare-fun b!1570132 () Bool)

(declare-fun e!875336 () List!36917)

(assert (=> b!1570132 (= e!875336 call!72206)))

(declare-fun b!1570133 () Bool)

(declare-fun res!1072953 () Bool)

(declare-fun e!875334 () Bool)

(assert (=> b!1570133 (=> (not res!1072953) (not e!875334))))

(declare-fun lt!673306 () List!36917)

(assert (=> b!1570133 (= res!1072953 (containsKey!868 lt!673306 key1!37))))

(declare-fun b!1570134 () Bool)

(declare-fun e!875337 () List!36917)

(declare-fun call!72205 () List!36917)

(assert (=> b!1570134 (= e!875337 call!72205)))

(declare-fun bm!72203 () Bool)

(assert (=> bm!72203 (= call!72205 call!72204)))

(declare-fun b!1570135 () Bool)

(declare-fun c!144846 () Bool)

(assert (=> b!1570135 (= c!144846 (and ((_ is Cons!36913) (t!51832 l!750)) (bvsgt (_1!12779 (h!38361 (t!51832 l!750))) key1!37)))))

(declare-fun e!875335 () List!36917)

(assert (=> b!1570135 (= e!875335 e!875337)))

(declare-fun b!1570137 () Bool)

(assert (=> b!1570137 (= e!875337 call!72205)))

(declare-fun b!1570138 () Bool)

(assert (=> b!1570138 (= e!875338 (insertStrictlySorted!596 (t!51832 (t!51832 l!750)) key1!37 v1!32))))

(declare-fun b!1570139 () Bool)

(declare-fun c!144848 () Bool)

(assert (=> b!1570139 (= e!875338 (ite c!144848 (t!51832 (t!51832 l!750)) (ite c!144846 (Cons!36913 (h!38361 (t!51832 l!750)) (t!51832 (t!51832 l!750))) Nil!36914)))))

(declare-fun b!1570136 () Bool)

(assert (=> b!1570136 (= e!875335 call!72204)))

(declare-fun d!163955 () Bool)

(assert (=> d!163955 e!875334))

(declare-fun res!1072952 () Bool)

(assert (=> d!163955 (=> (not res!1072952) (not e!875334))))

(assert (=> d!163955 (= res!1072952 (isStrictlySorted!1018 lt!673306))))

(assert (=> d!163955 (= lt!673306 e!875336)))

(assert (=> d!163955 (= c!144847 (and ((_ is Cons!36913) (t!51832 l!750)) (bvslt (_1!12779 (h!38361 (t!51832 l!750))) key1!37)))))

(assert (=> d!163955 (isStrictlySorted!1018 (t!51832 l!750))))

(assert (=> d!163955 (= (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32) lt!673306)))

(declare-fun b!1570140 () Bool)

(assert (=> b!1570140 (= e!875334 (contains!10446 lt!673306 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570141 () Bool)

(assert (=> b!1570141 (= e!875336 e!875335)))

(assert (=> b!1570141 (= c!144848 (and ((_ is Cons!36913) (t!51832 l!750)) (= (_1!12779 (h!38361 (t!51832 l!750))) key1!37)))))

(assert (= (and d!163955 c!144847) b!1570132))

(assert (= (and d!163955 (not c!144847)) b!1570141))

(assert (= (and b!1570141 c!144848) b!1570136))

(assert (= (and b!1570141 (not c!144848)) b!1570135))

(assert (= (and b!1570135 c!144846) b!1570137))

(assert (= (and b!1570135 (not c!144846)) b!1570134))

(assert (= (or b!1570137 b!1570134) bm!72203))

(assert (= (or b!1570136 bm!72203) bm!72202))

(assert (= (or b!1570132 bm!72202) bm!72201))

(assert (= (and bm!72201 c!144849) b!1570138))

(assert (= (and bm!72201 (not c!144849)) b!1570139))

(assert (= (and d!163955 res!1072952) b!1570133))

(assert (= (and b!1570133 res!1072953) b!1570140))

(declare-fun m!1444177 () Bool)

(assert (=> b!1570133 m!1444177))

(declare-fun m!1444179 () Bool)

(assert (=> d!163955 m!1444179))

(assert (=> d!163955 m!1443881))

(declare-fun m!1444181 () Bool)

(assert (=> b!1570140 m!1444181))

(declare-fun m!1444183 () Bool)

(assert (=> bm!72201 m!1444183))

(declare-fun m!1444185 () Bool)

(assert (=> b!1570138 m!1444185))

(assert (=> b!1569793 d!163955))

(declare-fun d!163957 () Bool)

(declare-fun res!1072954 () Bool)

(declare-fun e!875339 () Bool)

(assert (=> d!163957 (=> res!1072954 e!875339)))

(assert (=> d!163957 (= res!1072954 (or ((_ is Nil!36914) (t!51832 l!750)) ((_ is Nil!36914) (t!51832 (t!51832 l!750)))))))

(assert (=> d!163957 (= (isStrictlySorted!1018 (t!51832 l!750)) e!875339)))

(declare-fun b!1570142 () Bool)

(declare-fun e!875340 () Bool)

(assert (=> b!1570142 (= e!875339 e!875340)))

(declare-fun res!1072955 () Bool)

(assert (=> b!1570142 (=> (not res!1072955) (not e!875340))))

(assert (=> b!1570142 (= res!1072955 (bvslt (_1!12779 (h!38361 (t!51832 l!750))) (_1!12779 (h!38361 (t!51832 (t!51832 l!750))))))))

(declare-fun b!1570143 () Bool)

(assert (=> b!1570143 (= e!875340 (isStrictlySorted!1018 (t!51832 (t!51832 l!750))))))

(assert (= (and d!163957 (not res!1072954)) b!1570142))

(assert (= (and b!1570142 res!1072955) b!1570143))

(declare-fun m!1444187 () Bool)

(assert (=> b!1570143 m!1444187))

(assert (=> b!1569790 d!163957))

(declare-fun b!1570148 () Bool)

(declare-fun e!875343 () Bool)

(declare-fun tp!114226 () Bool)

(assert (=> b!1570148 (= e!875343 (and tp_is_empty!39099 tp!114226))))

(assert (=> b!1569792 (= tp!114214 e!875343)))

(assert (= (and b!1569792 ((_ is Cons!36913) (t!51832 l!750))) b!1570148))

(check-sat (not d!163941) (not b!1570127) (not d!163949) (not d!163901) (not b!1570098) (not d!163913) (not b!1570103) (not b!1569913) (not b!1570105) tp_is_empty!39099 (not b!1569918) (not b!1570008) (not d!163953) (not bm!72198) (not bm!72180) (not b!1570065) (not bm!72201) (not b!1570129) (not b!1570033) (not b!1570140) (not b!1570038) (not b!1570148) (not bm!72186) (not d!163955) (not b!1569823) (not d!163945) (not bm!72165) (not b!1570010) (not b!1570063) (not b!1570058) (not b!1570083) (not d!163939) (not d!163931) (not b!1570143) (not b!1570003) (not bm!72192) (not b!1570133) (not b!1570138) (not bm!72138) (not b!1570085) (not b!1570122) (not bm!72174) (not b!1569920) (not b!1570041) (not b!1570078))
(check-sat)
(get-model)

(declare-fun d!164047 () Bool)

(assert (=> d!164047 (= ($colon$colon!1000 e!875310 (ite c!144827 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (tuple2!25539 key2!21 v2!10))) (Cons!36913 (ite c!144827 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) (tuple2!25539 key2!21 v2!10)) e!875310))))

(assert (=> bm!72186 d!164047))

(declare-fun d!164049 () Bool)

(assert (=> d!164049 (= ($colon$colon!1000 e!875287 (ite c!144812 (h!38361 l!750) (tuple2!25539 key2!21 v2!10))) (Cons!36913 (ite c!144812 (h!38361 l!750) (tuple2!25539 key2!21 v2!10)) e!875287))))

(assert (=> bm!72174 d!164049))

(declare-fun d!164051 () Bool)

(declare-fun res!1073038 () Bool)

(declare-fun e!875445 () Bool)

(assert (=> d!164051 (=> res!1073038 e!875445)))

(assert (=> d!164051 (= res!1073038 (and ((_ is Cons!36913) lt!673303) (= (_1!12779 (h!38361 lt!673303)) key2!21)))))

(assert (=> d!164051 (= (containsKey!868 lt!673303 key2!21) e!875445)))

(declare-fun b!1570280 () Bool)

(declare-fun e!875446 () Bool)

(assert (=> b!1570280 (= e!875445 e!875446)))

(declare-fun res!1073039 () Bool)

(assert (=> b!1570280 (=> (not res!1073039) (not e!875446))))

(assert (=> b!1570280 (= res!1073039 (and (or (not ((_ is Cons!36913) lt!673303)) (bvsle (_1!12779 (h!38361 lt!673303)) key2!21)) ((_ is Cons!36913) lt!673303) (bvslt (_1!12779 (h!38361 lt!673303)) key2!21)))))

(declare-fun b!1570281 () Bool)

(assert (=> b!1570281 (= e!875446 (containsKey!868 (t!51832 lt!673303) key2!21))))

(assert (= (and d!164051 (not res!1073038)) b!1570280))

(assert (= (and b!1570280 res!1073039) b!1570281))

(declare-fun m!1444339 () Bool)

(assert (=> b!1570281 m!1444339))

(assert (=> b!1570098 d!164051))

(declare-fun lt!673325 () Bool)

(declare-fun d!164053 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!822 (List!36917) (InoxSet tuple2!25538))

(assert (=> d!164053 (= lt!673325 (select (content!822 lt!673297) (tuple2!25539 key2!21 v2!10)))))

(declare-fun e!875451 () Bool)

(assert (=> d!164053 (= lt!673325 e!875451)))

(declare-fun res!1073045 () Bool)

(assert (=> d!164053 (=> (not res!1073045) (not e!875451))))

(assert (=> d!164053 (= res!1073045 ((_ is Cons!36913) lt!673297))))

(assert (=> d!164053 (= (contains!10446 lt!673297 (tuple2!25539 key2!21 v2!10)) lt!673325)))

(declare-fun b!1570286 () Bool)

(declare-fun e!875452 () Bool)

(assert (=> b!1570286 (= e!875451 e!875452)))

(declare-fun res!1073044 () Bool)

(assert (=> b!1570286 (=> res!1073044 e!875452)))

(assert (=> b!1570286 (= res!1073044 (= (h!38361 lt!673297) (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570287 () Bool)

(assert (=> b!1570287 (= e!875452 (contains!10446 (t!51832 lt!673297) (tuple2!25539 key2!21 v2!10)))))

(assert (= (and d!164053 res!1073045) b!1570286))

(assert (= (and b!1570286 (not res!1073044)) b!1570287))

(declare-fun m!1444341 () Bool)

(assert (=> d!164053 m!1444341))

(declare-fun m!1444343 () Bool)

(assert (=> d!164053 m!1444343))

(declare-fun m!1444345 () Bool)

(assert (=> b!1570287 m!1444345))

(assert (=> b!1570041 d!164053))

(declare-fun d!164055 () Bool)

(declare-fun res!1073046 () Bool)

(declare-fun e!875453 () Bool)

(assert (=> d!164055 (=> res!1073046 e!875453)))

(assert (=> d!164055 (= res!1073046 (or ((_ is Nil!36914) lt!673301) ((_ is Nil!36914) (t!51832 lt!673301))))))

(assert (=> d!164055 (= (isStrictlySorted!1018 lt!673301) e!875453)))

(declare-fun b!1570288 () Bool)

(declare-fun e!875454 () Bool)

(assert (=> b!1570288 (= e!875453 e!875454)))

(declare-fun res!1073047 () Bool)

(assert (=> b!1570288 (=> (not res!1073047) (not e!875454))))

(assert (=> b!1570288 (= res!1073047 (bvslt (_1!12779 (h!38361 lt!673301)) (_1!12779 (h!38361 (t!51832 lt!673301)))))))

(declare-fun b!1570289 () Bool)

(assert (=> b!1570289 (= e!875454 (isStrictlySorted!1018 (t!51832 lt!673301)))))

(assert (= (and d!164055 (not res!1073046)) b!1570288))

(assert (= (and b!1570288 res!1073047) b!1570289))

(declare-fun m!1444347 () Bool)

(assert (=> b!1570289 m!1444347))

(assert (=> d!163945 d!164055))

(declare-fun d!164057 () Bool)

(declare-fun res!1073048 () Bool)

(declare-fun e!875455 () Bool)

(assert (=> d!164057 (=> res!1073048 e!875455)))

(assert (=> d!164057 (= res!1073048 (or ((_ is Nil!36914) (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) ((_ is Nil!36914) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))))))

(assert (=> d!164057 (= (isStrictlySorted!1018 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) e!875455)))

(declare-fun b!1570290 () Bool)

(declare-fun e!875456 () Bool)

(assert (=> b!1570290 (= e!875455 e!875456)))

(declare-fun res!1073049 () Bool)

(assert (=> b!1570290 (=> (not res!1073049) (not e!875456))))

(assert (=> b!1570290 (= res!1073049 (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))))))))

(declare-fun b!1570291 () Bool)

(assert (=> b!1570291 (= e!875456 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))))))

(assert (= (and d!164057 (not res!1073048)) b!1570290))

(assert (= (and b!1570290 res!1073049) b!1570291))

(declare-fun m!1444349 () Bool)

(assert (=> b!1570291 m!1444349))

(assert (=> d!163945 d!164057))

(declare-fun d!164059 () Bool)

(assert (=> d!164059 (= ($colon$colon!1000 e!875332 (ite c!144843 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (tuple2!25539 key1!37 v1!32))) (Cons!36913 (ite c!144843 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) (tuple2!25539 key1!37 v1!32)) e!875332))))

(assert (=> bm!72198 d!164059))

(declare-fun d!164061 () Bool)

(declare-fun res!1073050 () Bool)

(declare-fun e!875457 () Bool)

(assert (=> d!164061 (=> res!1073050 e!875457)))

(assert (=> d!164061 (= res!1073050 (or ((_ is Nil!36914) lt!673303) ((_ is Nil!36914) (t!51832 lt!673303))))))

(assert (=> d!164061 (= (isStrictlySorted!1018 lt!673303) e!875457)))

(declare-fun b!1570292 () Bool)

(declare-fun e!875458 () Bool)

(assert (=> b!1570292 (= e!875457 e!875458)))

(declare-fun res!1073051 () Bool)

(assert (=> b!1570292 (=> (not res!1073051) (not e!875458))))

(assert (=> b!1570292 (= res!1073051 (bvslt (_1!12779 (h!38361 lt!673303)) (_1!12779 (h!38361 (t!51832 lt!673303)))))))

(declare-fun b!1570293 () Bool)

(assert (=> b!1570293 (= e!875458 (isStrictlySorted!1018 (t!51832 lt!673303)))))

(assert (= (and d!164061 (not res!1073050)) b!1570292))

(assert (= (and b!1570292 res!1073051) b!1570293))

(declare-fun m!1444351 () Bool)

(assert (=> b!1570293 m!1444351))

(assert (=> d!163949 d!164061))

(assert (=> d!163949 d!163957))

(declare-fun c!144875 () Bool)

(declare-fun call!72227 () List!36917)

(declare-fun bm!72222 () Bool)

(declare-fun e!875463 () List!36917)

(assert (=> bm!72222 (= call!72227 ($colon$colon!1000 e!875463 (ite c!144875 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144877 () Bool)

(assert (=> bm!72222 (= c!144877 c!144875)))

(declare-fun bm!72223 () Bool)

(declare-fun call!72225 () List!36917)

(assert (=> bm!72223 (= call!72225 call!72227)))

(declare-fun b!1570294 () Bool)

(declare-fun e!875461 () List!36917)

(assert (=> b!1570294 (= e!875461 call!72227)))

(declare-fun b!1570295 () Bool)

(declare-fun res!1073053 () Bool)

(declare-fun e!875459 () Bool)

(assert (=> b!1570295 (=> (not res!1073053) (not e!875459))))

(declare-fun lt!673326 () List!36917)

(assert (=> b!1570295 (= res!1073053 (containsKey!868 lt!673326 key2!21))))

(declare-fun b!1570296 () Bool)

(declare-fun e!875462 () List!36917)

(declare-fun call!72226 () List!36917)

(assert (=> b!1570296 (= e!875462 call!72226)))

(declare-fun bm!72224 () Bool)

(assert (=> bm!72224 (= call!72226 call!72225)))

(declare-fun c!144874 () Bool)

(declare-fun b!1570297 () Bool)

(assert (=> b!1570297 (= c!144874 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (bvsgt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))) key2!21)))))

(declare-fun e!875460 () List!36917)

(assert (=> b!1570297 (= e!875460 e!875462)))

(declare-fun b!1570299 () Bool)

(assert (=> b!1570299 (= e!875462 call!72226)))

(declare-fun b!1570300 () Bool)

(assert (=> b!1570300 (= e!875463 (insertStrictlySorted!596 (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) key2!21 v2!10))))

(declare-fun b!1570301 () Bool)

(declare-fun c!144876 () Bool)

(assert (=> b!1570301 (= e!875463 (ite c!144876 (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (ite c!144874 (Cons!36913 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))) Nil!36914)))))

(declare-fun b!1570298 () Bool)

(assert (=> b!1570298 (= e!875460 call!72225)))

(declare-fun d!164063 () Bool)

(assert (=> d!164063 e!875459))

(declare-fun res!1073052 () Bool)

(assert (=> d!164063 (=> (not res!1073052) (not e!875459))))

(assert (=> d!164063 (= res!1073052 (isStrictlySorted!1018 lt!673326))))

(assert (=> d!164063 (= lt!673326 e!875461)))

(assert (=> d!164063 (= c!144875 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (bvslt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))) key2!21)))))

(assert (=> d!164063 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))))

(assert (=> d!164063 (= (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)) key2!21 v2!10) lt!673326)))

(declare-fun b!1570302 () Bool)

(assert (=> b!1570302 (= e!875459 (contains!10446 lt!673326 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570303 () Bool)

(assert (=> b!1570303 (= e!875461 e!875460)))

(assert (=> b!1570303 (= c!144876 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (= (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))) key2!21)))))

(assert (= (and d!164063 c!144875) b!1570294))

(assert (= (and d!164063 (not c!144875)) b!1570303))

(assert (= (and b!1570303 c!144876) b!1570298))

(assert (= (and b!1570303 (not c!144876)) b!1570297))

(assert (= (and b!1570297 c!144874) b!1570299))

(assert (= (and b!1570297 (not c!144874)) b!1570296))

(assert (= (or b!1570299 b!1570296) bm!72224))

(assert (= (or b!1570298 bm!72224) bm!72223))

(assert (= (or b!1570294 bm!72223) bm!72222))

(assert (= (and bm!72222 c!144877) b!1570300))

(assert (= (and bm!72222 (not c!144877)) b!1570301))

(assert (= (and d!164063 res!1073052) b!1570295))

(assert (= (and b!1570295 res!1073053) b!1570302))

(declare-fun m!1444353 () Bool)

(assert (=> b!1570295 m!1444353))

(declare-fun m!1444355 () Bool)

(assert (=> d!164063 m!1444355))

(declare-fun m!1444357 () Bool)

(assert (=> d!164063 m!1444357))

(declare-fun m!1444359 () Bool)

(assert (=> b!1570302 m!1444359))

(declare-fun m!1444361 () Bool)

(assert (=> bm!72222 m!1444361))

(declare-fun m!1444363 () Bool)

(assert (=> b!1570300 m!1444363))

(assert (=> b!1570008 d!164063))

(declare-fun d!164065 () Bool)

(declare-fun res!1073054 () Bool)

(declare-fun e!875464 () Bool)

(assert (=> d!164065 (=> res!1073054 e!875464)))

(assert (=> d!164065 (= res!1073054 (or ((_ is Nil!36914) lt!673297) ((_ is Nil!36914) (t!51832 lt!673297))))))

(assert (=> d!164065 (= (isStrictlySorted!1018 lt!673297) e!875464)))

(declare-fun b!1570304 () Bool)

(declare-fun e!875465 () Bool)

(assert (=> b!1570304 (= e!875464 e!875465)))

(declare-fun res!1073055 () Bool)

(assert (=> b!1570304 (=> (not res!1073055) (not e!875465))))

(assert (=> b!1570304 (= res!1073055 (bvslt (_1!12779 (h!38361 lt!673297)) (_1!12779 (h!38361 (t!51832 lt!673297)))))))

(declare-fun b!1570305 () Bool)

(assert (=> b!1570305 (= e!875465 (isStrictlySorted!1018 (t!51832 lt!673297)))))

(assert (= (and d!164065 (not res!1073054)) b!1570304))

(assert (= (and b!1570304 res!1073055) b!1570305))

(declare-fun m!1444365 () Bool)

(assert (=> b!1570305 m!1444365))

(assert (=> d!163939 d!164065))

(assert (=> d!163939 d!163899))

(declare-fun lt!673327 () Bool)

(declare-fun d!164067 () Bool)

(assert (=> d!164067 (= lt!673327 (select (content!822 lt!673299) (tuple2!25539 key1!37 v1!32)))))

(declare-fun e!875466 () Bool)

(assert (=> d!164067 (= lt!673327 e!875466)))

(declare-fun res!1073057 () Bool)

(assert (=> d!164067 (=> (not res!1073057) (not e!875466))))

(assert (=> d!164067 (= res!1073057 ((_ is Cons!36913) lt!673299))))

(assert (=> d!164067 (= (contains!10446 lt!673299 (tuple2!25539 key1!37 v1!32)) lt!673327)))

(declare-fun b!1570306 () Bool)

(declare-fun e!875467 () Bool)

(assert (=> b!1570306 (= e!875466 e!875467)))

(declare-fun res!1073056 () Bool)

(assert (=> b!1570306 (=> res!1073056 e!875467)))

(assert (=> b!1570306 (= res!1073056 (= (h!38361 lt!673299) (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570307 () Bool)

(assert (=> b!1570307 (= e!875467 (contains!10446 (t!51832 lt!673299) (tuple2!25539 key1!37 v1!32)))))

(assert (= (and d!164067 res!1073057) b!1570306))

(assert (= (and b!1570306 (not res!1073056)) b!1570307))

(declare-fun m!1444367 () Bool)

(assert (=> d!164067 m!1444367))

(declare-fun m!1444369 () Bool)

(assert (=> d!164067 m!1444369))

(declare-fun m!1444371 () Bool)

(assert (=> b!1570307 m!1444371))

(assert (=> b!1570065 d!164067))

(declare-fun d!164069 () Bool)

(declare-fun res!1073058 () Bool)

(declare-fun e!875468 () Bool)

(assert (=> d!164069 (=> res!1073058 e!875468)))

(assert (=> d!164069 (= res!1073058 (or ((_ is Nil!36914) lt!673305) ((_ is Nil!36914) (t!51832 lt!673305))))))

(assert (=> d!164069 (= (isStrictlySorted!1018 lt!673305) e!875468)))

(declare-fun b!1570308 () Bool)

(declare-fun e!875469 () Bool)

(assert (=> b!1570308 (= e!875468 e!875469)))

(declare-fun res!1073059 () Bool)

(assert (=> b!1570308 (=> (not res!1073059) (not e!875469))))

(assert (=> b!1570308 (= res!1073059 (bvslt (_1!12779 (h!38361 lt!673305)) (_1!12779 (h!38361 (t!51832 lt!673305)))))))

(declare-fun b!1570309 () Bool)

(assert (=> b!1570309 (= e!875469 (isStrictlySorted!1018 (t!51832 lt!673305)))))

(assert (= (and d!164069 (not res!1073058)) b!1570308))

(assert (= (and b!1570308 res!1073059) b!1570309))

(declare-fun m!1444373 () Bool)

(assert (=> b!1570309 m!1444373))

(assert (=> d!163953 d!164069))

(declare-fun d!164071 () Bool)

(declare-fun res!1073060 () Bool)

(declare-fun e!875470 () Bool)

(assert (=> d!164071 (=> res!1073060 e!875470)))

(assert (=> d!164071 (= res!1073060 (or ((_ is Nil!36914) (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) ((_ is Nil!36914) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))))))

(assert (=> d!164071 (= (isStrictlySorted!1018 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) e!875470)))

(declare-fun b!1570310 () Bool)

(declare-fun e!875471 () Bool)

(assert (=> b!1570310 (= e!875470 e!875471)))

(declare-fun res!1073061 () Bool)

(assert (=> b!1570310 (=> (not res!1073061) (not e!875471))))

(assert (=> b!1570310 (= res!1073061 (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))))))))

(declare-fun b!1570311 () Bool)

(assert (=> b!1570311 (= e!875471 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))))))

(assert (= (and d!164071 (not res!1073060)) b!1570310))

(assert (= (and b!1570310 res!1073061) b!1570311))

(declare-fun m!1444375 () Bool)

(assert (=> b!1570311 m!1444375))

(assert (=> d!163953 d!164071))

(declare-fun d!164073 () Bool)

(assert (=> d!164073 (= ($colon$colon!1000 e!875320 (ite c!144835 (h!38361 (t!51832 l!750)) (tuple2!25539 key2!21 v2!10))) (Cons!36913 (ite c!144835 (h!38361 (t!51832 l!750)) (tuple2!25539 key2!21 v2!10)) e!875320))))

(assert (=> bm!72192 d!164073))

(assert (=> b!1570038 d!163949))

(declare-fun d!164075 () Bool)

(declare-fun res!1073062 () Bool)

(declare-fun e!875472 () Bool)

(assert (=> d!164075 (=> res!1073062 e!875472)))

(assert (=> d!164075 (= res!1073062 (or ((_ is Nil!36914) lt!673294) ((_ is Nil!36914) (t!51832 lt!673294))))))

(assert (=> d!164075 (= (isStrictlySorted!1018 lt!673294) e!875472)))

(declare-fun b!1570312 () Bool)

(declare-fun e!875473 () Bool)

(assert (=> b!1570312 (= e!875472 e!875473)))

(declare-fun res!1073063 () Bool)

(assert (=> b!1570312 (=> (not res!1073063) (not e!875473))))

(assert (=> b!1570312 (= res!1073063 (bvslt (_1!12779 (h!38361 lt!673294)) (_1!12779 (h!38361 (t!51832 lt!673294)))))))

(declare-fun b!1570313 () Bool)

(assert (=> b!1570313 (= e!875473 (isStrictlySorted!1018 (t!51832 lt!673294)))))

(assert (= (and d!164075 (not res!1073062)) b!1570312))

(assert (= (and b!1570312 res!1073063) b!1570313))

(declare-fun m!1444377 () Bool)

(assert (=> b!1570313 m!1444377))

(assert (=> d!163931 d!164075))

(declare-fun d!164077 () Bool)

(declare-fun res!1073064 () Bool)

(declare-fun e!875474 () Bool)

(assert (=> d!164077 (=> res!1073064 e!875474)))

(assert (=> d!164077 (= res!1073064 (or ((_ is Nil!36914) (insertStrictlySorted!596 l!750 key1!37 v1!32)) ((_ is Nil!36914) (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32)))))))

(assert (=> d!164077 (= (isStrictlySorted!1018 (insertStrictlySorted!596 l!750 key1!37 v1!32)) e!875474)))

(declare-fun b!1570314 () Bool)

(declare-fun e!875475 () Bool)

(assert (=> b!1570314 (= e!875474 e!875475)))

(declare-fun res!1073065 () Bool)

(assert (=> b!1570314 (=> (not res!1073065) (not e!875475))))

(assert (=> b!1570314 (= res!1073065 (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32))) (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))))))))

(declare-fun b!1570315 () Bool)

(assert (=> b!1570315 (= e!875475 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 l!750 key1!37 v1!32))))))

(assert (= (and d!164077 (not res!1073064)) b!1570314))

(assert (= (and b!1570314 res!1073065) b!1570315))

(assert (=> b!1570315 m!1444357))

(assert (=> d!163931 d!164077))

(declare-fun e!875480 () List!36917)

(declare-fun c!144879 () Bool)

(declare-fun call!72230 () List!36917)

(declare-fun bm!72225 () Bool)

(assert (=> bm!72225 (= call!72230 ($colon$colon!1000 e!875480 (ite c!144879 (h!38361 (t!51832 (t!51832 l!750))) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144881 () Bool)

(assert (=> bm!72225 (= c!144881 c!144879)))

(declare-fun bm!72226 () Bool)

(declare-fun call!72228 () List!36917)

(assert (=> bm!72226 (= call!72228 call!72230)))

(declare-fun b!1570316 () Bool)

(declare-fun e!875478 () List!36917)

(assert (=> b!1570316 (= e!875478 call!72230)))

(declare-fun b!1570317 () Bool)

(declare-fun res!1073067 () Bool)

(declare-fun e!875476 () Bool)

(assert (=> b!1570317 (=> (not res!1073067) (not e!875476))))

(declare-fun lt!673328 () List!36917)

(assert (=> b!1570317 (= res!1073067 (containsKey!868 lt!673328 key1!37))))

(declare-fun b!1570318 () Bool)

(declare-fun e!875479 () List!36917)

(declare-fun call!72229 () List!36917)

(assert (=> b!1570318 (= e!875479 call!72229)))

(declare-fun bm!72227 () Bool)

(assert (=> bm!72227 (= call!72229 call!72228)))

(declare-fun b!1570319 () Bool)

(declare-fun c!144878 () Bool)

(assert (=> b!1570319 (= c!144878 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (bvsgt (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key1!37)))))

(declare-fun e!875477 () List!36917)

(assert (=> b!1570319 (= e!875477 e!875479)))

(declare-fun b!1570321 () Bool)

(assert (=> b!1570321 (= e!875479 call!72229)))

(declare-fun b!1570322 () Bool)

(assert (=> b!1570322 (= e!875480 (insertStrictlySorted!596 (t!51832 (t!51832 (t!51832 l!750))) key1!37 v1!32))))

(declare-fun c!144880 () Bool)

(declare-fun b!1570323 () Bool)

(assert (=> b!1570323 (= e!875480 (ite c!144880 (t!51832 (t!51832 (t!51832 l!750))) (ite c!144878 (Cons!36913 (h!38361 (t!51832 (t!51832 l!750))) (t!51832 (t!51832 (t!51832 l!750)))) Nil!36914)))))

(declare-fun b!1570320 () Bool)

(assert (=> b!1570320 (= e!875477 call!72228)))

(declare-fun d!164079 () Bool)

(assert (=> d!164079 e!875476))

(declare-fun res!1073066 () Bool)

(assert (=> d!164079 (=> (not res!1073066) (not e!875476))))

(assert (=> d!164079 (= res!1073066 (isStrictlySorted!1018 lt!673328))))

(assert (=> d!164079 (= lt!673328 e!875478)))

(assert (=> d!164079 (= c!144879 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (bvslt (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key1!37)))))

(assert (=> d!164079 (isStrictlySorted!1018 (t!51832 (t!51832 l!750)))))

(assert (=> d!164079 (= (insertStrictlySorted!596 (t!51832 (t!51832 l!750)) key1!37 v1!32) lt!673328)))

(declare-fun b!1570324 () Bool)

(assert (=> b!1570324 (= e!875476 (contains!10446 lt!673328 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570325 () Bool)

(assert (=> b!1570325 (= e!875478 e!875477)))

(assert (=> b!1570325 (= c!144880 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (= (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key1!37)))))

(assert (= (and d!164079 c!144879) b!1570316))

(assert (= (and d!164079 (not c!144879)) b!1570325))

(assert (= (and b!1570325 c!144880) b!1570320))

(assert (= (and b!1570325 (not c!144880)) b!1570319))

(assert (= (and b!1570319 c!144878) b!1570321))

(assert (= (and b!1570319 (not c!144878)) b!1570318))

(assert (= (or b!1570321 b!1570318) bm!72227))

(assert (= (or b!1570320 bm!72227) bm!72226))

(assert (= (or b!1570316 bm!72226) bm!72225))

(assert (= (and bm!72225 c!144881) b!1570322))

(assert (= (and bm!72225 (not c!144881)) b!1570323))

(assert (= (and d!164079 res!1073066) b!1570317))

(assert (= (and b!1570317 res!1073067) b!1570324))

(declare-fun m!1444379 () Bool)

(assert (=> b!1570317 m!1444379))

(declare-fun m!1444381 () Bool)

(assert (=> d!164079 m!1444381))

(assert (=> d!164079 m!1444187))

(declare-fun m!1444383 () Bool)

(assert (=> b!1570324 m!1444383))

(declare-fun m!1444385 () Bool)

(assert (=> bm!72225 m!1444385))

(declare-fun m!1444387 () Bool)

(assert (=> b!1570322 m!1444387))

(assert (=> b!1570138 d!164079))

(declare-fun d!164081 () Bool)

(assert (=> d!164081 (= (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32) key2!21 v2!10) (insertStrictlySorted!596 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10) key1!37 v1!32))))

(assert (=> d!164081 true))

(declare-fun _$5!164 () Unit!52038)

(assert (=> d!164081 (= (choose!2092 (t!51832 l!750) key1!37 v1!32 key2!21 v2!10) _$5!164)))

(declare-fun bs!45219 () Bool)

(assert (= bs!45219 d!164081))

(assert (=> bs!45219 m!1443885))

(assert (=> bs!45219 m!1443885))

(assert (=> bs!45219 m!1443887))

(assert (=> bs!45219 m!1443883))

(assert (=> bs!45219 m!1443883))

(assert (=> bs!45219 m!1443899))

(assert (=> d!163913 d!164081))

(assert (=> d!163913 d!163945))

(assert (=> d!163913 d!163949))

(assert (=> d!163913 d!163953))

(assert (=> d!163913 d!163955))

(assert (=> b!1570063 d!163955))

(declare-fun d!164083 () Bool)

(declare-fun res!1073068 () Bool)

(declare-fun e!875481 () Bool)

(assert (=> d!164083 (=> res!1073068 e!875481)))

(assert (=> d!164083 (= res!1073068 (or ((_ is Nil!36914) (t!51832 (t!51832 l!750))) ((_ is Nil!36914) (t!51832 (t!51832 (t!51832 l!750))))))))

(assert (=> d!164083 (= (isStrictlySorted!1018 (t!51832 (t!51832 l!750))) e!875481)))

(declare-fun b!1570326 () Bool)

(declare-fun e!875482 () Bool)

(assert (=> b!1570326 (= e!875481 e!875482)))

(declare-fun res!1073069 () Bool)

(assert (=> b!1570326 (=> (not res!1073069) (not e!875482))))

(assert (=> b!1570326 (= res!1073069 (bvslt (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) (_1!12779 (h!38361 (t!51832 (t!51832 (t!51832 l!750)))))))))

(declare-fun b!1570327 () Bool)

(assert (=> b!1570327 (= e!875482 (isStrictlySorted!1018 (t!51832 (t!51832 (t!51832 l!750)))))))

(assert (= (and d!164083 (not res!1073068)) b!1570326))

(assert (= (and b!1570326 res!1073069) b!1570327))

(declare-fun m!1444389 () Bool)

(assert (=> b!1570327 m!1444389))

(assert (=> b!1570143 d!164083))

(declare-fun d!164085 () Bool)

(declare-fun lt!673329 () Bool)

(assert (=> d!164085 (= lt!673329 (select (content!822 lt!673306) (tuple2!25539 key1!37 v1!32)))))

(declare-fun e!875483 () Bool)

(assert (=> d!164085 (= lt!673329 e!875483)))

(declare-fun res!1073071 () Bool)

(assert (=> d!164085 (=> (not res!1073071) (not e!875483))))

(assert (=> d!164085 (= res!1073071 ((_ is Cons!36913) lt!673306))))

(assert (=> d!164085 (= (contains!10446 lt!673306 (tuple2!25539 key1!37 v1!32)) lt!673329)))

(declare-fun b!1570328 () Bool)

(declare-fun e!875484 () Bool)

(assert (=> b!1570328 (= e!875483 e!875484)))

(declare-fun res!1073070 () Bool)

(assert (=> b!1570328 (=> res!1073070 e!875484)))

(assert (=> b!1570328 (= res!1073070 (= (h!38361 lt!673306) (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570329 () Bool)

(assert (=> b!1570329 (= e!875484 (contains!10446 (t!51832 lt!673306) (tuple2!25539 key1!37 v1!32)))))

(assert (= (and d!164085 res!1073071) b!1570328))

(assert (= (and b!1570328 (not res!1073070)) b!1570329))

(declare-fun m!1444391 () Bool)

(assert (=> d!164085 m!1444391))

(declare-fun m!1444393 () Bool)

(assert (=> d!164085 m!1444393))

(declare-fun m!1444395 () Bool)

(assert (=> b!1570329 m!1444395))

(assert (=> b!1570140 d!164085))

(declare-fun lt!673330 () Bool)

(declare-fun d!164087 () Bool)

(assert (=> d!164087 (= lt!673330 (select (content!822 lt!673303) (tuple2!25539 key2!21 v2!10)))))

(declare-fun e!875485 () Bool)

(assert (=> d!164087 (= lt!673330 e!875485)))

(declare-fun res!1073073 () Bool)

(assert (=> d!164087 (=> (not res!1073073) (not e!875485))))

(assert (=> d!164087 (= res!1073073 ((_ is Cons!36913) lt!673303))))

(assert (=> d!164087 (= (contains!10446 lt!673303 (tuple2!25539 key2!21 v2!10)) lt!673330)))

(declare-fun b!1570330 () Bool)

(declare-fun e!875486 () Bool)

(assert (=> b!1570330 (= e!875485 e!875486)))

(declare-fun res!1073072 () Bool)

(assert (=> b!1570330 (=> res!1073072 e!875486)))

(assert (=> b!1570330 (= res!1073072 (= (h!38361 lt!673303) (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570331 () Bool)

(assert (=> b!1570331 (= e!875486 (contains!10446 (t!51832 lt!673303) (tuple2!25539 key2!21 v2!10)))))

(assert (= (and d!164087 res!1073073) b!1570330))

(assert (= (and b!1570330 (not res!1073072)) b!1570331))

(declare-fun m!1444397 () Bool)

(assert (=> d!164087 m!1444397))

(declare-fun m!1444399 () Bool)

(assert (=> d!164087 m!1444399))

(declare-fun m!1444401 () Bool)

(assert (=> b!1570331 m!1444401))

(assert (=> b!1570105 d!164087))

(declare-fun lt!673331 () Bool)

(declare-fun d!164089 () Bool)

(assert (=> d!164089 (= lt!673331 (select (content!822 lt!673276) (tuple2!25539 key1!37 v1!32)))))

(declare-fun e!875487 () Bool)

(assert (=> d!164089 (= lt!673331 e!875487)))

(declare-fun res!1073075 () Bool)

(assert (=> d!164089 (=> (not res!1073075) (not e!875487))))

(assert (=> d!164089 (= res!1073075 ((_ is Cons!36913) lt!673276))))

(assert (=> d!164089 (= (contains!10446 lt!673276 (tuple2!25539 key1!37 v1!32)) lt!673331)))

(declare-fun b!1570332 () Bool)

(declare-fun e!875488 () Bool)

(assert (=> b!1570332 (= e!875487 e!875488)))

(declare-fun res!1073074 () Bool)

(assert (=> b!1570332 (=> res!1073074 e!875488)))

(assert (=> b!1570332 (= res!1073074 (= (h!38361 lt!673276) (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570333 () Bool)

(assert (=> b!1570333 (= e!875488 (contains!10446 (t!51832 lt!673276) (tuple2!25539 key1!37 v1!32)))))

(assert (= (and d!164089 res!1073075) b!1570332))

(assert (= (and b!1570332 (not res!1073074)) b!1570333))

(declare-fun m!1444403 () Bool)

(assert (=> d!164089 m!1444403))

(declare-fun m!1444405 () Bool)

(assert (=> d!164089 m!1444405))

(declare-fun m!1444407 () Bool)

(assert (=> b!1570333 m!1444407))

(assert (=> b!1569920 d!164089))

(declare-fun d!164091 () Bool)

(declare-fun res!1073076 () Bool)

(declare-fun e!875489 () Bool)

(assert (=> d!164091 (=> res!1073076 e!875489)))

(assert (=> d!164091 (= res!1073076 (and ((_ is Cons!36913) lt!673294) (= (_1!12779 (h!38361 lt!673294)) key2!21)))))

(assert (=> d!164091 (= (containsKey!868 lt!673294 key2!21) e!875489)))

(declare-fun b!1570334 () Bool)

(declare-fun e!875490 () Bool)

(assert (=> b!1570334 (= e!875489 e!875490)))

(declare-fun res!1073077 () Bool)

(assert (=> b!1570334 (=> (not res!1073077) (not e!875490))))

(assert (=> b!1570334 (= res!1073077 (and (or (not ((_ is Cons!36913) lt!673294)) (bvsle (_1!12779 (h!38361 lt!673294)) key2!21)) ((_ is Cons!36913) lt!673294) (bvslt (_1!12779 (h!38361 lt!673294)) key2!21)))))

(declare-fun b!1570335 () Bool)

(assert (=> b!1570335 (= e!875490 (containsKey!868 (t!51832 lt!673294) key2!21))))

(assert (= (and d!164091 (not res!1073076)) b!1570334))

(assert (= (and b!1570334 res!1073077) b!1570335))

(declare-fun m!1444409 () Bool)

(assert (=> b!1570335 m!1444409))

(assert (=> b!1570003 d!164091))

(declare-fun bm!72228 () Bool)

(declare-fun c!144883 () Bool)

(declare-fun e!875495 () List!36917)

(declare-fun call!72233 () List!36917)

(assert (=> bm!72228 (= call!72233 ($colon$colon!1000 e!875495 (ite c!144883 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144885 () Bool)

(assert (=> bm!72228 (= c!144885 c!144883)))

(declare-fun bm!72229 () Bool)

(declare-fun call!72231 () List!36917)

(assert (=> bm!72229 (= call!72231 call!72233)))

(declare-fun b!1570336 () Bool)

(declare-fun e!875493 () List!36917)

(assert (=> b!1570336 (= e!875493 call!72233)))

(declare-fun b!1570337 () Bool)

(declare-fun res!1073079 () Bool)

(declare-fun e!875491 () Bool)

(assert (=> b!1570337 (=> (not res!1073079) (not e!875491))))

(declare-fun lt!673332 () List!36917)

(assert (=> b!1570337 (= res!1073079 (containsKey!868 lt!673332 key1!37))))

(declare-fun b!1570338 () Bool)

(declare-fun e!875494 () List!36917)

(declare-fun call!72232 () List!36917)

(assert (=> b!1570338 (= e!875494 call!72232)))

(declare-fun bm!72230 () Bool)

(assert (=> bm!72230 (= call!72232 call!72231)))

(declare-fun c!144882 () Bool)

(declare-fun b!1570339 () Bool)

(assert (=> b!1570339 (= c!144882 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (bvsgt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))) key1!37)))))

(declare-fun e!875492 () List!36917)

(assert (=> b!1570339 (= e!875492 e!875494)))

(declare-fun b!1570341 () Bool)

(assert (=> b!1570341 (= e!875494 call!72232)))

(declare-fun b!1570342 () Bool)

(assert (=> b!1570342 (= e!875495 (insertStrictlySorted!596 (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) key1!37 v1!32))))

(declare-fun b!1570343 () Bool)

(declare-fun c!144884 () Bool)

(assert (=> b!1570343 (= e!875495 (ite c!144884 (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (ite c!144882 (Cons!36913 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (t!51832 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))) Nil!36914)))))

(declare-fun b!1570340 () Bool)

(assert (=> b!1570340 (= e!875492 call!72231)))

(declare-fun d!164093 () Bool)

(assert (=> d!164093 e!875491))

(declare-fun res!1073078 () Bool)

(assert (=> d!164093 (=> (not res!1073078) (not e!875491))))

(assert (=> d!164093 (= res!1073078 (isStrictlySorted!1018 lt!673332))))

(assert (=> d!164093 (= lt!673332 e!875493)))

(assert (=> d!164093 (= c!144883 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (bvslt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))) key1!37)))))

(assert (=> d!164093 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))))

(assert (=> d!164093 (= (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)) key1!37 v1!32) lt!673332)))

(declare-fun b!1570344 () Bool)

(assert (=> b!1570344 (= e!875491 (contains!10446 lt!673332 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570345 () Bool)

(assert (=> b!1570345 (= e!875493 e!875492)))

(assert (=> b!1570345 (= c!144884 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (= (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))) key1!37)))))

(assert (= (and d!164093 c!144883) b!1570336))

(assert (= (and d!164093 (not c!144883)) b!1570345))

(assert (= (and b!1570345 c!144884) b!1570340))

(assert (= (and b!1570345 (not c!144884)) b!1570339))

(assert (= (and b!1570339 c!144882) b!1570341))

(assert (= (and b!1570339 (not c!144882)) b!1570338))

(assert (= (or b!1570341 b!1570338) bm!72230))

(assert (= (or b!1570340 bm!72230) bm!72229))

(assert (= (or b!1570336 bm!72229) bm!72228))

(assert (= (and bm!72228 c!144885) b!1570342))

(assert (= (and bm!72228 (not c!144885)) b!1570343))

(assert (= (and d!164093 res!1073078) b!1570337))

(assert (= (and b!1570337 res!1073079) b!1570344))

(declare-fun m!1444411 () Bool)

(assert (=> b!1570337 m!1444411))

(declare-fun m!1444413 () Bool)

(assert (=> d!164093 m!1444413))

(declare-fun m!1444415 () Bool)

(assert (=> d!164093 m!1444415))

(declare-fun m!1444417 () Bool)

(assert (=> b!1570344 m!1444417))

(declare-fun m!1444419 () Bool)

(assert (=> bm!72228 m!1444419))

(declare-fun m!1444421 () Bool)

(assert (=> b!1570342 m!1444421))

(assert (=> b!1569918 d!164093))

(declare-fun d!164095 () Bool)

(assert (=> d!164095 (= ($colon$colon!1000 e!875272 (ite c!144799 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32)) (tuple2!25539 key2!21 v2!10))) (Cons!36913 (ite c!144799 (h!38361 (insertStrictlySorted!596 l!750 key1!37 v1!32)) (tuple2!25539 key2!21 v2!10)) e!875272))))

(assert (=> bm!72165 d!164095))

(declare-fun d!164097 () Bool)

(declare-fun lt!673333 () Bool)

(assert (=> d!164097 (= lt!673333 (select (content!822 lt!673301) (tuple2!25539 key2!21 v2!10)))))

(declare-fun e!875496 () Bool)

(assert (=> d!164097 (= lt!673333 e!875496)))

(declare-fun res!1073081 () Bool)

(assert (=> d!164097 (=> (not res!1073081) (not e!875496))))

(assert (=> d!164097 (= res!1073081 ((_ is Cons!36913) lt!673301))))

(assert (=> d!164097 (= (contains!10446 lt!673301 (tuple2!25539 key2!21 v2!10)) lt!673333)))

(declare-fun b!1570346 () Bool)

(declare-fun e!875497 () Bool)

(assert (=> b!1570346 (= e!875496 e!875497)))

(declare-fun res!1073080 () Bool)

(assert (=> b!1570346 (=> res!1073080 e!875497)))

(assert (=> b!1570346 (= res!1073080 (= (h!38361 lt!673301) (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570347 () Bool)

(assert (=> b!1570347 (= e!875497 (contains!10446 (t!51832 lt!673301) (tuple2!25539 key2!21 v2!10)))))

(assert (= (and d!164097 res!1073081) b!1570346))

(assert (= (and b!1570346 (not res!1073080)) b!1570347))

(declare-fun m!1444423 () Bool)

(assert (=> d!164097 m!1444423))

(declare-fun m!1444425 () Bool)

(assert (=> d!164097 m!1444425))

(declare-fun m!1444427 () Bool)

(assert (=> b!1570347 m!1444427))

(assert (=> b!1570085 d!164097))

(declare-fun c!144887 () Bool)

(declare-fun e!875502 () List!36917)

(declare-fun bm!72231 () Bool)

(declare-fun call!72236 () List!36917)

(assert (=> bm!72231 (= call!72236 ($colon$colon!1000 e!875502 (ite c!144887 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (tuple2!25539 key1!37 v1!32))))))

(declare-fun c!144889 () Bool)

(assert (=> bm!72231 (= c!144889 c!144887)))

(declare-fun bm!72232 () Bool)

(declare-fun call!72234 () List!36917)

(assert (=> bm!72232 (= call!72234 call!72236)))

(declare-fun b!1570348 () Bool)

(declare-fun e!875500 () List!36917)

(assert (=> b!1570348 (= e!875500 call!72236)))

(declare-fun b!1570349 () Bool)

(declare-fun res!1073083 () Bool)

(declare-fun e!875498 () Bool)

(assert (=> b!1570349 (=> (not res!1073083) (not e!875498))))

(declare-fun lt!673334 () List!36917)

(assert (=> b!1570349 (= res!1073083 (containsKey!868 lt!673334 key1!37))))

(declare-fun b!1570350 () Bool)

(declare-fun e!875501 () List!36917)

(declare-fun call!72235 () List!36917)

(assert (=> b!1570350 (= e!875501 call!72235)))

(declare-fun bm!72233 () Bool)

(assert (=> bm!72233 (= call!72235 call!72234)))

(declare-fun b!1570351 () Bool)

(declare-fun c!144886 () Bool)

(assert (=> b!1570351 (= c!144886 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (bvsgt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))) key1!37)))))

(declare-fun e!875499 () List!36917)

(assert (=> b!1570351 (= e!875499 e!875501)))

(declare-fun b!1570353 () Bool)

(assert (=> b!1570353 (= e!875501 call!72235)))

(declare-fun b!1570354 () Bool)

(assert (=> b!1570354 (= e!875502 (insertStrictlySorted!596 (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) key1!37 v1!32))))

(declare-fun c!144888 () Bool)

(declare-fun b!1570355 () Bool)

(assert (=> b!1570355 (= e!875502 (ite c!144888 (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (ite c!144886 (Cons!36913 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))) Nil!36914)))))

(declare-fun b!1570352 () Bool)

(assert (=> b!1570352 (= e!875499 call!72234)))

(declare-fun d!164099 () Bool)

(assert (=> d!164099 e!875498))

(declare-fun res!1073082 () Bool)

(assert (=> d!164099 (=> (not res!1073082) (not e!875498))))

(assert (=> d!164099 (= res!1073082 (isStrictlySorted!1018 lt!673334))))

(assert (=> d!164099 (= lt!673334 e!875500)))

(assert (=> d!164099 (= c!144887 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (bvslt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))) key1!37)))))

(assert (=> d!164099 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))))

(assert (=> d!164099 (= (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)) key1!37 v1!32) lt!673334)))

(declare-fun b!1570356 () Bool)

(assert (=> b!1570356 (= e!875498 (contains!10446 lt!673334 (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570357 () Bool)

(assert (=> b!1570357 (= e!875500 e!875499)))

(assert (=> b!1570357 (= c!144888 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10))) (= (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key2!21 v2!10)))) key1!37)))))

(assert (= (and d!164099 c!144887) b!1570348))

(assert (= (and d!164099 (not c!144887)) b!1570357))

(assert (= (and b!1570357 c!144888) b!1570352))

(assert (= (and b!1570357 (not c!144888)) b!1570351))

(assert (= (and b!1570351 c!144886) b!1570353))

(assert (= (and b!1570351 (not c!144886)) b!1570350))

(assert (= (or b!1570353 b!1570350) bm!72233))

(assert (= (or b!1570352 bm!72233) bm!72232))

(assert (= (or b!1570348 bm!72232) bm!72231))

(assert (= (and bm!72231 c!144889) b!1570354))

(assert (= (and bm!72231 (not c!144889)) b!1570355))

(assert (= (and d!164099 res!1073082) b!1570349))

(assert (= (and b!1570349 res!1073083) b!1570356))

(declare-fun m!1444429 () Bool)

(assert (=> b!1570349 m!1444429))

(declare-fun m!1444431 () Bool)

(assert (=> d!164099 m!1444431))

(assert (=> d!164099 m!1444375))

(declare-fun m!1444433 () Bool)

(assert (=> b!1570356 m!1444433))

(declare-fun m!1444435 () Bool)

(assert (=> bm!72231 m!1444435))

(declare-fun m!1444437 () Bool)

(assert (=> b!1570354 m!1444437))

(assert (=> b!1570127 d!164099))

(declare-fun lt!673335 () Bool)

(declare-fun d!164101 () Bool)

(assert (=> d!164101 (= lt!673335 (select (content!822 lt!673305) (tuple2!25539 key1!37 v1!32)))))

(declare-fun e!875503 () Bool)

(assert (=> d!164101 (= lt!673335 e!875503)))

(declare-fun res!1073085 () Bool)

(assert (=> d!164101 (=> (not res!1073085) (not e!875503))))

(assert (=> d!164101 (= res!1073085 ((_ is Cons!36913) lt!673305))))

(assert (=> d!164101 (= (contains!10446 lt!673305 (tuple2!25539 key1!37 v1!32)) lt!673335)))

(declare-fun b!1570358 () Bool)

(declare-fun e!875504 () Bool)

(assert (=> b!1570358 (= e!875503 e!875504)))

(declare-fun res!1073084 () Bool)

(assert (=> b!1570358 (=> res!1073084 e!875504)))

(assert (=> b!1570358 (= res!1073084 (= (h!38361 lt!673305) (tuple2!25539 key1!37 v1!32)))))

(declare-fun b!1570359 () Bool)

(assert (=> b!1570359 (= e!875504 (contains!10446 (t!51832 lt!673305) (tuple2!25539 key1!37 v1!32)))))

(assert (= (and d!164101 res!1073085) b!1570358))

(assert (= (and b!1570358 (not res!1073084)) b!1570359))

(declare-fun m!1444439 () Bool)

(assert (=> d!164101 m!1444439))

(declare-fun m!1444441 () Bool)

(assert (=> d!164101 m!1444441))

(declare-fun m!1444443 () Bool)

(assert (=> b!1570359 m!1444443))

(assert (=> b!1570129 d!164101))

(declare-fun d!164103 () Bool)

(declare-fun res!1073086 () Bool)

(declare-fun e!875505 () Bool)

(assert (=> d!164103 (=> res!1073086 e!875505)))

(assert (=> d!164103 (= res!1073086 (or ((_ is Nil!36914) lt!673306) ((_ is Nil!36914) (t!51832 lt!673306))))))

(assert (=> d!164103 (= (isStrictlySorted!1018 lt!673306) e!875505)))

(declare-fun b!1570360 () Bool)

(declare-fun e!875506 () Bool)

(assert (=> b!1570360 (= e!875505 e!875506)))

(declare-fun res!1073087 () Bool)

(assert (=> b!1570360 (=> (not res!1073087) (not e!875506))))

(assert (=> b!1570360 (= res!1073087 (bvslt (_1!12779 (h!38361 lt!673306)) (_1!12779 (h!38361 (t!51832 lt!673306)))))))

(declare-fun b!1570361 () Bool)

(assert (=> b!1570361 (= e!875506 (isStrictlySorted!1018 (t!51832 lt!673306)))))

(assert (= (and d!164103 (not res!1073086)) b!1570360))

(assert (= (and b!1570360 res!1073087) b!1570361))

(declare-fun m!1444445 () Bool)

(assert (=> b!1570361 m!1444445))

(assert (=> d!163955 d!164103))

(assert (=> d!163955 d!163957))

(declare-fun d!164105 () Bool)

(declare-fun res!1073088 () Bool)

(declare-fun e!875507 () Bool)

(assert (=> d!164105 (=> res!1073088 e!875507)))

(assert (=> d!164105 (= res!1073088 (and ((_ is Cons!36913) lt!673299) (= (_1!12779 (h!38361 lt!673299)) key1!37)))))

(assert (=> d!164105 (= (containsKey!868 lt!673299 key1!37) e!875507)))

(declare-fun b!1570362 () Bool)

(declare-fun e!875508 () Bool)

(assert (=> b!1570362 (= e!875507 e!875508)))

(declare-fun res!1073089 () Bool)

(assert (=> b!1570362 (=> (not res!1073089) (not e!875508))))

(assert (=> b!1570362 (= res!1073089 (and (or (not ((_ is Cons!36913) lt!673299)) (bvsle (_1!12779 (h!38361 lt!673299)) key1!37)) ((_ is Cons!36913) lt!673299) (bvslt (_1!12779 (h!38361 lt!673299)) key1!37)))))

(declare-fun b!1570363 () Bool)

(assert (=> b!1570363 (= e!875508 (containsKey!868 (t!51832 lt!673299) key1!37))))

(assert (= (and d!164105 (not res!1073088)) b!1570362))

(assert (= (and b!1570362 res!1073089) b!1570363))

(declare-fun m!1444447 () Bool)

(assert (=> b!1570363 m!1444447))

(assert (=> b!1570058 d!164105))

(declare-fun d!164107 () Bool)

(declare-fun res!1073090 () Bool)

(declare-fun e!875509 () Bool)

(assert (=> d!164107 (=> res!1073090 e!875509)))

(assert (=> d!164107 (= res!1073090 (and ((_ is Cons!36913) lt!673297) (= (_1!12779 (h!38361 lt!673297)) key2!21)))))

(assert (=> d!164107 (= (containsKey!868 lt!673297 key2!21) e!875509)))

(declare-fun b!1570364 () Bool)

(declare-fun e!875510 () Bool)

(assert (=> b!1570364 (= e!875509 e!875510)))

(declare-fun res!1073091 () Bool)

(assert (=> b!1570364 (=> (not res!1073091) (not e!875510))))

(assert (=> b!1570364 (= res!1073091 (and (or (not ((_ is Cons!36913) lt!673297)) (bvsle (_1!12779 (h!38361 lt!673297)) key2!21)) ((_ is Cons!36913) lt!673297) (bvslt (_1!12779 (h!38361 lt!673297)) key2!21)))))

(declare-fun b!1570365 () Bool)

(assert (=> b!1570365 (= e!875510 (containsKey!868 (t!51832 lt!673297) key2!21))))

(assert (= (and d!164107 (not res!1073090)) b!1570364))

(assert (= (and b!1570364 res!1073091) b!1570365))

(declare-fun m!1444449 () Bool)

(assert (=> b!1570365 m!1444449))

(assert (=> b!1570033 d!164107))

(declare-fun call!72239 () List!36917)

(declare-fun e!875515 () List!36917)

(declare-fun c!144891 () Bool)

(declare-fun bm!72234 () Bool)

(assert (=> bm!72234 (= call!72239 ($colon$colon!1000 e!875515 (ite c!144891 (h!38361 (t!51832 (t!51832 l!750))) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144893 () Bool)

(assert (=> bm!72234 (= c!144893 c!144891)))

(declare-fun bm!72235 () Bool)

(declare-fun call!72237 () List!36917)

(assert (=> bm!72235 (= call!72237 call!72239)))

(declare-fun b!1570366 () Bool)

(declare-fun e!875513 () List!36917)

(assert (=> b!1570366 (= e!875513 call!72239)))

(declare-fun b!1570367 () Bool)

(declare-fun res!1073093 () Bool)

(declare-fun e!875511 () Bool)

(assert (=> b!1570367 (=> (not res!1073093) (not e!875511))))

(declare-fun lt!673336 () List!36917)

(assert (=> b!1570367 (= res!1073093 (containsKey!868 lt!673336 key2!21))))

(declare-fun b!1570368 () Bool)

(declare-fun e!875514 () List!36917)

(declare-fun call!72238 () List!36917)

(assert (=> b!1570368 (= e!875514 call!72238)))

(declare-fun bm!72236 () Bool)

(assert (=> bm!72236 (= call!72238 call!72237)))

(declare-fun b!1570369 () Bool)

(declare-fun c!144890 () Bool)

(assert (=> b!1570369 (= c!144890 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (bvsgt (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key2!21)))))

(declare-fun e!875512 () List!36917)

(assert (=> b!1570369 (= e!875512 e!875514)))

(declare-fun b!1570371 () Bool)

(assert (=> b!1570371 (= e!875514 call!72238)))

(declare-fun b!1570372 () Bool)

(assert (=> b!1570372 (= e!875515 (insertStrictlySorted!596 (t!51832 (t!51832 (t!51832 l!750))) key2!21 v2!10))))

(declare-fun c!144892 () Bool)

(declare-fun b!1570373 () Bool)

(assert (=> b!1570373 (= e!875515 (ite c!144892 (t!51832 (t!51832 (t!51832 l!750))) (ite c!144890 (Cons!36913 (h!38361 (t!51832 (t!51832 l!750))) (t!51832 (t!51832 (t!51832 l!750)))) Nil!36914)))))

(declare-fun b!1570370 () Bool)

(assert (=> b!1570370 (= e!875512 call!72237)))

(declare-fun d!164109 () Bool)

(assert (=> d!164109 e!875511))

(declare-fun res!1073092 () Bool)

(assert (=> d!164109 (=> (not res!1073092) (not e!875511))))

(assert (=> d!164109 (= res!1073092 (isStrictlySorted!1018 lt!673336))))

(assert (=> d!164109 (= lt!673336 e!875513)))

(assert (=> d!164109 (= c!144891 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (bvslt (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key2!21)))))

(assert (=> d!164109 (isStrictlySorted!1018 (t!51832 (t!51832 l!750)))))

(assert (=> d!164109 (= (insertStrictlySorted!596 (t!51832 (t!51832 l!750)) key2!21 v2!10) lt!673336)))

(declare-fun b!1570374 () Bool)

(assert (=> b!1570374 (= e!875511 (contains!10446 lt!673336 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570375 () Bool)

(assert (=> b!1570375 (= e!875513 e!875512)))

(assert (=> b!1570375 (= c!144892 (and ((_ is Cons!36913) (t!51832 (t!51832 l!750))) (= (_1!12779 (h!38361 (t!51832 (t!51832 l!750)))) key2!21)))))

(assert (= (and d!164109 c!144891) b!1570366))

(assert (= (and d!164109 (not c!144891)) b!1570375))

(assert (= (and b!1570375 c!144892) b!1570370))

(assert (= (and b!1570375 (not c!144892)) b!1570369))

(assert (= (and b!1570369 c!144890) b!1570371))

(assert (= (and b!1570369 (not c!144890)) b!1570368))

(assert (= (or b!1570371 b!1570368) bm!72236))

(assert (= (or b!1570370 bm!72236) bm!72235))

(assert (= (or b!1570366 bm!72235) bm!72234))

(assert (= (and bm!72234 c!144893) b!1570372))

(assert (= (and bm!72234 (not c!144893)) b!1570373))

(assert (= (and d!164109 res!1073092) b!1570367))

(assert (= (and b!1570367 res!1073093) b!1570374))

(declare-fun m!1444451 () Bool)

(assert (=> b!1570367 m!1444451))

(declare-fun m!1444453 () Bool)

(assert (=> d!164109 m!1444453))

(assert (=> d!164109 m!1444187))

(declare-fun m!1444455 () Bool)

(assert (=> b!1570374 m!1444455))

(declare-fun m!1444457 () Bool)

(assert (=> bm!72234 m!1444457))

(declare-fun m!1444459 () Bool)

(assert (=> b!1570372 m!1444459))

(assert (=> b!1570103 d!164109))

(declare-fun d!164111 () Bool)

(declare-fun res!1073094 () Bool)

(declare-fun e!875516 () Bool)

(assert (=> d!164111 (=> res!1073094 e!875516)))

(assert (=> d!164111 (= res!1073094 (and ((_ is Cons!36913) lt!673306) (= (_1!12779 (h!38361 lt!673306)) key1!37)))))

(assert (=> d!164111 (= (containsKey!868 lt!673306 key1!37) e!875516)))

(declare-fun b!1570376 () Bool)

(declare-fun e!875517 () Bool)

(assert (=> b!1570376 (= e!875516 e!875517)))

(declare-fun res!1073095 () Bool)

(assert (=> b!1570376 (=> (not res!1073095) (not e!875517))))

(assert (=> b!1570376 (= res!1073095 (and (or (not ((_ is Cons!36913) lt!673306)) (bvsle (_1!12779 (h!38361 lt!673306)) key1!37)) ((_ is Cons!36913) lt!673306) (bvslt (_1!12779 (h!38361 lt!673306)) key1!37)))))

(declare-fun b!1570377 () Bool)

(assert (=> b!1570377 (= e!875517 (containsKey!868 (t!51832 lt!673306) key1!37))))

(assert (= (and d!164111 (not res!1073094)) b!1570376))

(assert (= (and b!1570376 res!1073095) b!1570377))

(declare-fun m!1444461 () Bool)

(assert (=> b!1570377 m!1444461))

(assert (=> b!1570133 d!164111))

(declare-fun bm!72237 () Bool)

(declare-fun e!875522 () List!36917)

(declare-fun c!144895 () Bool)

(declare-fun call!72242 () List!36917)

(assert (=> bm!72237 (= call!72242 ($colon$colon!1000 e!875522 (ite c!144895 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (tuple2!25539 key2!21 v2!10))))))

(declare-fun c!144897 () Bool)

(assert (=> bm!72237 (= c!144897 c!144895)))

(declare-fun bm!72238 () Bool)

(declare-fun call!72240 () List!36917)

(assert (=> bm!72238 (= call!72240 call!72242)))

(declare-fun b!1570378 () Bool)

(declare-fun e!875520 () List!36917)

(assert (=> b!1570378 (= e!875520 call!72242)))

(declare-fun b!1570379 () Bool)

(declare-fun res!1073097 () Bool)

(declare-fun e!875518 () Bool)

(assert (=> b!1570379 (=> (not res!1073097) (not e!875518))))

(declare-fun lt!673337 () List!36917)

(assert (=> b!1570379 (= res!1073097 (containsKey!868 lt!673337 key2!21))))

(declare-fun b!1570380 () Bool)

(declare-fun e!875521 () List!36917)

(declare-fun call!72241 () List!36917)

(assert (=> b!1570380 (= e!875521 call!72241)))

(declare-fun bm!72239 () Bool)

(assert (=> bm!72239 (= call!72241 call!72240)))

(declare-fun c!144894 () Bool)

(declare-fun b!1570381 () Bool)

(assert (=> b!1570381 (= c!144894 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (bvsgt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))) key2!21)))))

(declare-fun e!875519 () List!36917)

(assert (=> b!1570381 (= e!875519 e!875521)))

(declare-fun b!1570383 () Bool)

(assert (=> b!1570383 (= e!875521 call!72241)))

(declare-fun b!1570384 () Bool)

(assert (=> b!1570384 (= e!875522 (insertStrictlySorted!596 (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) key2!21 v2!10))))

(declare-fun c!144896 () Bool)

(declare-fun b!1570385 () Bool)

(assert (=> b!1570385 (= e!875522 (ite c!144896 (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (ite c!144894 (Cons!36913 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (t!51832 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))) Nil!36914)))))

(declare-fun b!1570382 () Bool)

(assert (=> b!1570382 (= e!875519 call!72240)))

(declare-fun d!164113 () Bool)

(assert (=> d!164113 e!875518))

(declare-fun res!1073096 () Bool)

(assert (=> d!164113 (=> (not res!1073096) (not e!875518))))

(assert (=> d!164113 (= res!1073096 (isStrictlySorted!1018 lt!673337))))

(assert (=> d!164113 (= lt!673337 e!875520)))

(assert (=> d!164113 (= c!144895 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (bvslt (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))) key2!21)))))

(assert (=> d!164113 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))))

(assert (=> d!164113 (= (insertStrictlySorted!596 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)) key2!21 v2!10) lt!673337)))

(declare-fun b!1570386 () Bool)

(assert (=> b!1570386 (= e!875518 (contains!10446 lt!673337 (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570387 () Bool)

(assert (=> b!1570387 (= e!875520 e!875519)))

(assert (=> b!1570387 (= c!144896 (and ((_ is Cons!36913) (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32))) (= (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 (t!51832 l!750) key1!37 v1!32)))) key2!21)))))

(assert (= (and d!164113 c!144895) b!1570378))

(assert (= (and d!164113 (not c!144895)) b!1570387))

(assert (= (and b!1570387 c!144896) b!1570382))

(assert (= (and b!1570387 (not c!144896)) b!1570381))

(assert (= (and b!1570381 c!144894) b!1570383))

(assert (= (and b!1570381 (not c!144894)) b!1570380))

(assert (= (or b!1570383 b!1570380) bm!72239))

(assert (= (or b!1570382 bm!72239) bm!72238))

(assert (= (or b!1570378 bm!72238) bm!72237))

(assert (= (and bm!72237 c!144897) b!1570384))

(assert (= (and bm!72237 (not c!144897)) b!1570385))

(assert (= (and d!164113 res!1073096) b!1570379))

(assert (= (and b!1570379 res!1073097) b!1570386))

(declare-fun m!1444463 () Bool)

(assert (=> b!1570379 m!1444463))

(declare-fun m!1444465 () Bool)

(assert (=> d!164113 m!1444465))

(assert (=> d!164113 m!1444349))

(declare-fun m!1444467 () Bool)

(assert (=> b!1570386 m!1444467))

(declare-fun m!1444469 () Bool)

(assert (=> bm!72237 m!1444469))

(declare-fun m!1444471 () Bool)

(assert (=> b!1570384 m!1444471))

(assert (=> b!1570083 d!164113))

(declare-fun d!164115 () Bool)

(declare-fun res!1073098 () Bool)

(declare-fun e!875523 () Bool)

(assert (=> d!164115 (=> res!1073098 e!875523)))

(assert (=> d!164115 (= res!1073098 (or ((_ is Nil!36914) lt!673299) ((_ is Nil!36914) (t!51832 lt!673299))))))

(assert (=> d!164115 (= (isStrictlySorted!1018 lt!673299) e!875523)))

(declare-fun b!1570388 () Bool)

(declare-fun e!875524 () Bool)

(assert (=> b!1570388 (= e!875523 e!875524)))

(declare-fun res!1073099 () Bool)

(assert (=> b!1570388 (=> (not res!1073099) (not e!875524))))

(assert (=> b!1570388 (= res!1073099 (bvslt (_1!12779 (h!38361 lt!673299)) (_1!12779 (h!38361 (t!51832 lt!673299)))))))

(declare-fun b!1570389 () Bool)

(assert (=> b!1570389 (= e!875524 (isStrictlySorted!1018 (t!51832 lt!673299)))))

(assert (= (and d!164115 (not res!1073098)) b!1570388))

(assert (= (and b!1570388 res!1073099) b!1570389))

(declare-fun m!1444473 () Bool)

(assert (=> b!1570389 m!1444473))

(assert (=> d!163941 d!164115))

(assert (=> d!163941 d!163899))

(declare-fun d!164117 () Bool)

(declare-fun res!1073100 () Bool)

(declare-fun e!875525 () Bool)

(assert (=> d!164117 (=> res!1073100 e!875525)))

(assert (=> d!164117 (= res!1073100 (or ((_ is Nil!36914) lt!673276) ((_ is Nil!36914) (t!51832 lt!673276))))))

(assert (=> d!164117 (= (isStrictlySorted!1018 lt!673276) e!875525)))

(declare-fun b!1570390 () Bool)

(declare-fun e!875526 () Bool)

(assert (=> b!1570390 (= e!875525 e!875526)))

(declare-fun res!1073101 () Bool)

(assert (=> b!1570390 (=> (not res!1073101) (not e!875526))))

(assert (=> b!1570390 (= res!1073101 (bvslt (_1!12779 (h!38361 lt!673276)) (_1!12779 (h!38361 (t!51832 lt!673276)))))))

(declare-fun b!1570391 () Bool)

(assert (=> b!1570391 (= e!875526 (isStrictlySorted!1018 (t!51832 lt!673276)))))

(assert (= (and d!164117 (not res!1073100)) b!1570390))

(assert (= (and b!1570390 res!1073101) b!1570391))

(declare-fun m!1444475 () Bool)

(assert (=> b!1570391 m!1444475))

(assert (=> d!163901 d!164117))

(declare-fun d!164119 () Bool)

(declare-fun res!1073102 () Bool)

(declare-fun e!875527 () Bool)

(assert (=> d!164119 (=> res!1073102 e!875527)))

(assert (=> d!164119 (= res!1073102 (or ((_ is Nil!36914) (insertStrictlySorted!596 l!750 key2!21 v2!10)) ((_ is Nil!36914) (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10)))))))

(assert (=> d!164119 (= (isStrictlySorted!1018 (insertStrictlySorted!596 l!750 key2!21 v2!10)) e!875527)))

(declare-fun b!1570392 () Bool)

(declare-fun e!875528 () Bool)

(assert (=> b!1570392 (= e!875527 e!875528)))

(declare-fun res!1073103 () Bool)

(assert (=> b!1570392 (=> (not res!1073103) (not e!875528))))

(assert (=> b!1570392 (= res!1073103 (bvslt (_1!12779 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10))) (_1!12779 (h!38361 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))))))))

(declare-fun b!1570393 () Bool)

(assert (=> b!1570393 (= e!875528 (isStrictlySorted!1018 (t!51832 (insertStrictlySorted!596 l!750 key2!21 v2!10))))))

(assert (= (and d!164119 (not res!1073102)) b!1570392))

(assert (= (and b!1570392 res!1073103) b!1570393))

(assert (=> b!1570393 m!1444415))

(assert (=> d!163901 d!164119))

(declare-fun d!164121 () Bool)

(assert (=> d!164121 (= ($colon$colon!1000 e!875300 (ite c!144819 (h!38361 l!750) (tuple2!25539 key1!37 v1!32))) (Cons!36913 (ite c!144819 (h!38361 l!750) (tuple2!25539 key1!37 v1!32)) e!875300))))

(assert (=> bm!72180 d!164121))

(declare-fun d!164123 () Bool)

(declare-fun res!1073104 () Bool)

(declare-fun e!875529 () Bool)

(assert (=> d!164123 (=> res!1073104 e!875529)))

(assert (=> d!164123 (= res!1073104 (and ((_ is Cons!36913) lt!673276) (= (_1!12779 (h!38361 lt!673276)) key1!37)))))

(assert (=> d!164123 (= (containsKey!868 lt!673276 key1!37) e!875529)))

(declare-fun b!1570394 () Bool)

(declare-fun e!875530 () Bool)

(assert (=> b!1570394 (= e!875529 e!875530)))

(declare-fun res!1073105 () Bool)

(assert (=> b!1570394 (=> (not res!1073105) (not e!875530))))

(assert (=> b!1570394 (= res!1073105 (and (or (not ((_ is Cons!36913) lt!673276)) (bvsle (_1!12779 (h!38361 lt!673276)) key1!37)) ((_ is Cons!36913) lt!673276) (bvslt (_1!12779 (h!38361 lt!673276)) key1!37)))))

(declare-fun b!1570395 () Bool)

(assert (=> b!1570395 (= e!875530 (containsKey!868 (t!51832 lt!673276) key1!37))))

(assert (= (and d!164123 (not res!1073104)) b!1570394))

(assert (= (and b!1570394 res!1073105) b!1570395))

(declare-fun m!1444477 () Bool)

(assert (=> b!1570395 m!1444477))

(assert (=> b!1569913 d!164123))

(declare-fun d!164125 () Bool)

(assert (=> d!164125 (= ($colon$colon!1000 e!875338 (ite c!144847 (h!38361 (t!51832 l!750)) (tuple2!25539 key1!37 v1!32))) (Cons!36913 (ite c!144847 (h!38361 (t!51832 l!750)) (tuple2!25539 key1!37 v1!32)) e!875338))))

(assert (=> bm!72201 d!164125))

(declare-fun d!164127 () Bool)

(declare-fun res!1073106 () Bool)

(declare-fun e!875531 () Bool)

(assert (=> d!164127 (=> res!1073106 e!875531)))

(assert (=> d!164127 (= res!1073106 (and ((_ is Cons!36913) lt!673301) (= (_1!12779 (h!38361 lt!673301)) key2!21)))))

(assert (=> d!164127 (= (containsKey!868 lt!673301 key2!21) e!875531)))

(declare-fun b!1570396 () Bool)

(declare-fun e!875532 () Bool)

(assert (=> b!1570396 (= e!875531 e!875532)))

(declare-fun res!1073107 () Bool)

(assert (=> b!1570396 (=> (not res!1073107) (not e!875532))))

(assert (=> b!1570396 (= res!1073107 (and (or (not ((_ is Cons!36913) lt!673301)) (bvsle (_1!12779 (h!38361 lt!673301)) key2!21)) ((_ is Cons!36913) lt!673301) (bvslt (_1!12779 (h!38361 lt!673301)) key2!21)))))

(declare-fun b!1570397 () Bool)

(assert (=> b!1570397 (= e!875532 (containsKey!868 (t!51832 lt!673301) key2!21))))

(assert (= (and d!164127 (not res!1073106)) b!1570396))

(assert (= (and b!1570396 res!1073107) b!1570397))

(declare-fun m!1444479 () Bool)

(assert (=> b!1570397 m!1444479))

(assert (=> b!1570078 d!164127))

(declare-fun lt!673338 () Bool)

(declare-fun d!164129 () Bool)

(assert (=> d!164129 (= lt!673338 (select (content!822 lt!673294) (tuple2!25539 key2!21 v2!10)))))

(declare-fun e!875533 () Bool)

(assert (=> d!164129 (= lt!673338 e!875533)))

(declare-fun res!1073109 () Bool)

(assert (=> d!164129 (=> (not res!1073109) (not e!875533))))

(assert (=> d!164129 (= res!1073109 ((_ is Cons!36913) lt!673294))))

(assert (=> d!164129 (= (contains!10446 lt!673294 (tuple2!25539 key2!21 v2!10)) lt!673338)))

(declare-fun b!1570398 () Bool)

(declare-fun e!875534 () Bool)

(assert (=> b!1570398 (= e!875533 e!875534)))

(declare-fun res!1073108 () Bool)

(assert (=> b!1570398 (=> res!1073108 e!875534)))

(assert (=> b!1570398 (= res!1073108 (= (h!38361 lt!673294) (tuple2!25539 key2!21 v2!10)))))

(declare-fun b!1570399 () Bool)

(assert (=> b!1570399 (= e!875534 (contains!10446 (t!51832 lt!673294) (tuple2!25539 key2!21 v2!10)))))

(assert (= (and d!164129 res!1073109) b!1570398))

(assert (= (and b!1570398 (not res!1073108)) b!1570399))

(declare-fun m!1444481 () Bool)

(assert (=> d!164129 m!1444481))

(declare-fun m!1444483 () Bool)

(assert (=> d!164129 m!1444483))

(declare-fun m!1444485 () Bool)

(assert (=> b!1570399 m!1444485))

(assert (=> b!1570010 d!164129))

(assert (=> b!1569823 d!163957))

(declare-fun d!164131 () Bool)

(assert (=> d!164131 (= ($colon$colon!1000 e!875227 (ite c!144763 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10)) (tuple2!25539 key1!37 v1!32))) (Cons!36913 (ite c!144763 (h!38361 (insertStrictlySorted!596 l!750 key2!21 v2!10)) (tuple2!25539 key1!37 v1!32)) e!875227))))

(assert (=> bm!72138 d!164131))

(declare-fun d!164133 () Bool)

(declare-fun res!1073110 () Bool)

(declare-fun e!875535 () Bool)

(assert (=> d!164133 (=> res!1073110 e!875535)))

(assert (=> d!164133 (= res!1073110 (and ((_ is Cons!36913) lt!673305) (= (_1!12779 (h!38361 lt!673305)) key1!37)))))

(assert (=> d!164133 (= (containsKey!868 lt!673305 key1!37) e!875535)))

(declare-fun b!1570400 () Bool)

(declare-fun e!875536 () Bool)

(assert (=> b!1570400 (= e!875535 e!875536)))

(declare-fun res!1073111 () Bool)

(assert (=> b!1570400 (=> (not res!1073111) (not e!875536))))

(assert (=> b!1570400 (= res!1073111 (and (or (not ((_ is Cons!36913) lt!673305)) (bvsle (_1!12779 (h!38361 lt!673305)) key1!37)) ((_ is Cons!36913) lt!673305) (bvslt (_1!12779 (h!38361 lt!673305)) key1!37)))))

(declare-fun b!1570401 () Bool)

(assert (=> b!1570401 (= e!875536 (containsKey!868 (t!51832 lt!673305) key1!37))))

(assert (= (and d!164133 (not res!1073110)) b!1570400))

(assert (= (and b!1570400 res!1073111) b!1570401))

(declare-fun m!1444487 () Bool)

(assert (=> b!1570401 m!1444487))

(assert (=> b!1570122 d!164133))

(declare-fun b!1570402 () Bool)

(declare-fun e!875537 () Bool)

(declare-fun tp!114228 () Bool)

(assert (=> b!1570402 (= e!875537 (and tp_is_empty!39099 tp!114228))))

(assert (=> b!1570148 (= tp!114226 e!875537)))

(assert (= (and b!1570148 ((_ is Cons!36913) (t!51832 (t!51832 l!750)))) b!1570402))

(check-sat (not d!164053) (not b!1570313) (not d!164081) (not b!1570331) (not d!164067) (not d!164089) (not b!1570386) (not b!1570365) (not b!1570291) (not b!1570307) (not b!1570309) (not b!1570324) (not b!1570402) (not bm!72231) (not b!1570372) (not b!1570287) (not b!1570302) (not b!1570361) (not b!1570391) (not b!1570354) (not bm!72234) (not d!164129) (not b!1570344) (not d!164099) (not b!1570356) (not bm!72228) (not b!1570384) (not d!164093) (not d!164087) (not d!164079) (not d!164109) (not bm!72225) (not b!1570322) (not b!1570333) (not b!1570395) (not b!1570359) (not b!1570363) (not b!1570327) (not b!1570295) (not b!1570281) tp_is_empty!39099 (not b!1570311) (not bm!72222) (not b!1570335) (not bm!72237) (not b!1570342) (not b!1570379) (not b!1570399) (not b!1570389) (not d!164097) (not b!1570393) (not b!1570377) (not b!1570329) (not b!1570315) (not b!1570289) (not d!164085) (not b!1570349) (not b!1570374) (not d!164063) (not b!1570305) (not b!1570401) (not d!164101) (not b!1570347) (not b!1570337) (not b!1570300) (not d!164113) (not b!1570397) (not b!1570367) (not b!1570317) (not b!1570293))
(check-sat)
