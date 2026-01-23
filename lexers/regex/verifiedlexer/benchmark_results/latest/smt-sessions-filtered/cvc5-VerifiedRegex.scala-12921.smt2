; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712552 () Bool)

(assert start!712552)

(declare-fun b_free!133983 () Bool)

(declare-fun b_next!134773 () Bool)

(assert (=> start!712552 (= b_free!133983 (not b_next!134773))))

(declare-fun tp!2075653 () Bool)

(declare-fun b_and!351351 () Bool)

(assert (=> start!712552 (= tp!2075653 b_and!351351)))

(declare-fun b!7313773 () Bool)

(assert (=> b!7313773 true))

(declare-fun b!7313767 () Bool)

(assert (=> b!7313767 true))

(declare-fun f!883 () Int)

(declare-fun order!29109 () Int)

(declare-fun order!29111 () Int)

(declare-fun lambda!451813 () Int)

(declare-fun dynLambda!29111 (Int Int) Int)

(declare-fun dynLambda!29112 (Int Int) Int)

(assert (=> b!7313767 (< (dynLambda!29111 order!29109 f!883) (dynLambda!29112 order!29111 lambda!451813))))

(assert (=> b!7313767 true))

(declare-fun b!7313766 () Bool)

(declare-fun e!4377999 () Bool)

(declare-fun e!4378003 () Bool)

(assert (=> b!7313766 (= e!4377999 e!4378003)))

(declare-fun res!2955172 () Bool)

(assert (=> b!7313766 (=> (not res!2955172) (not e!4378003))))

(declare-datatypes ((B!3531 0))(
  ( (B!3532 (val!29087 Int)) )
))
(declare-datatypes ((List!71172 0))(
  ( (Nil!71048) (Cons!71048 (h!77496 B!3531) (t!385369 List!71172)) )
))
(declare-fun lRes!18 () List!71172)

(declare-fun lt!2601284 () List!71172)

(declare-fun subseq!826 (List!71172 List!71172) Bool)

(assert (=> b!7313766 (= res!2955172 (subseq!826 lRes!18 lt!2601284))))

(declare-fun lt!2601285 () (Set B!3531))

(declare-fun toList!11581 ((Set B!3531)) List!71172)

(assert (=> b!7313766 (= lt!2601284 (toList!11581 lt!2601285))))

(declare-datatypes ((A!829 0))(
  ( (A!830 (val!29088 Int)) )
))
(declare-fun s!1437 () (Set A!829))

(declare-fun flatMap!3025 ((Set A!829) Int) (Set B!3531))

(assert (=> b!7313766 (= lt!2601285 (flatMap!3025 s!1437 f!883))))

(declare-fun e!4378005 () Bool)

(declare-fun e!4378004 () Bool)

(assert (=> b!7313767 (= e!4378005 e!4378004)))

(declare-fun res!2955173 () Bool)

(assert (=> b!7313767 (=> res!2955173 e!4378004)))

(declare-fun exists!4522 ((Set A!829) Int) Bool)

(assert (=> b!7313767 (= res!2955173 (not (exists!4522 s!1437 lambda!451813)))))

(declare-fun empty!3131 () A!829)

(declare-fun flatMapPost!103 ((Set A!829) Int B!3531) A!829)

(assert (=> b!7313767 (= (flatMapPost!103 s!1437 f!883 (h!77496 lRes!18)) empty!3131)))

(assert (=> b!7313767 true))

(declare-fun tp_is_empty!47453 () Bool)

(assert (=> b!7313767 tp_is_empty!47453))

(declare-fun b!7313768 () Bool)

(declare-fun res!2955178 () Bool)

(assert (=> b!7313768 (=> (not res!2955178) (not e!4378003))))

(assert (=> b!7313768 (= res!2955178 (is-Cons!71048 lRes!18))))

(declare-fun b!7313769 () Bool)

(declare-fun e!4378001 () Bool)

(declare-fun lt!2601288 () A!829)

(declare-fun elmt!118 () A!829)

(assert (=> b!7313769 (= e!4378001 (= lt!2601288 elmt!118))))

(declare-fun setNonEmpty!54104 () Bool)

(declare-fun setRes!54104 () Bool)

(declare-fun tp!2075654 () Bool)

(assert (=> setNonEmpty!54104 (= setRes!54104 (and tp!2075654 tp_is_empty!47453))))

(declare-fun setElem!54104 () A!829)

(declare-fun setRest!54104 () (Set A!829))

(assert (=> setNonEmpty!54104 (= s!1437 (set.union (set.insert setElem!54104 (as set.empty (Set A!829))) setRest!54104))))

(declare-fun b!7313770 () Bool)

(declare-fun e!4378002 () Bool)

(declare-fun tp_is_empty!47455 () Bool)

(declare-fun tp!2075652 () Bool)

(assert (=> b!7313770 (= e!4378002 (and tp_is_empty!47455 tp!2075652))))

(declare-fun b!7313771 () Bool)

(declare-fun e!4378000 () Bool)

(declare-fun lambda!451812 () Int)

(declare-fun forall!17747 (List!71172 Int) Bool)

(assert (=> b!7313771 (= e!4378000 (forall!17747 (t!385369 lRes!18) lambda!451812))))

(declare-fun b!7313772 () Bool)

(assert (=> b!7313772 (= e!4378004 e!4378001)))

(declare-fun res!2955177 () Bool)

(assert (=> b!7313772 (=> res!2955177 e!4378001)))

(declare-datatypes ((List!71173 0))(
  ( (Nil!71049) (Cons!71049 (h!77497 A!829) (t!385370 List!71173)) )
))
(declare-fun contains!20779 (List!71173 A!829) Bool)

(declare-fun toList!11582 ((Set A!829)) List!71173)

(assert (=> b!7313772 (= res!2955177 (not (contains!20779 (toList!11582 s!1437) lt!2601288)))))

(declare-fun getWitness!2278 ((Set A!829) Int) A!829)

(assert (=> b!7313772 (= lt!2601288 (getWitness!2278 s!1437 lambda!451813))))

(assert (=> b!7313773 (= e!4378003 (not e!4378005))))

(declare-fun res!2955175 () Bool)

(assert (=> b!7313773 (=> res!2955175 e!4378005)))

(assert (=> b!7313773 (= res!2955175 (not (set.member (h!77496 lRes!18) lt!2601285)))))

(declare-datatypes ((Unit!164525 0))(
  ( (Unit!164526) )
))
(declare-fun lt!2601287 () Unit!164525)

(declare-fun subseqContains!43 (List!71172 List!71172 B!3531) Unit!164525)

(assert (=> b!7313773 (= lt!2601287 (subseqContains!43 lRes!18 lt!2601284 (h!77496 lRes!18)))))

(assert (=> b!7313773 e!4378000))

(declare-fun res!2955174 () Bool)

(assert (=> b!7313773 (=> (not res!2955174) (not e!4378000))))

(assert (=> b!7313773 (= res!2955174 (forall!17747 (t!385369 lRes!18) lambda!451812))))

(declare-fun lt!2601286 () List!71172)

(declare-fun dynLambda!29113 (Int A!829) (Set B!3531))

(assert (=> b!7313773 (= lt!2601286 (toList!11581 (dynLambda!29113 f!883 elmt!118)))))

(declare-fun lt!2601290 () Unit!164525)

(declare-fun lemmaFlatMapOnSingletonSetList1!19 ((Set A!829) A!829 Int List!71172) Unit!164525)

(assert (=> b!7313773 (= lt!2601290 (lemmaFlatMapOnSingletonSetList1!19 s!1437 elmt!118 f!883 (t!385369 lRes!18)))))

(declare-fun lt!2601289 () Unit!164525)

(declare-fun subseqTail!71 (List!71172 List!71172) Unit!164525)

(assert (=> b!7313773 (= lt!2601289 (subseqTail!71 lRes!18 lt!2601284))))

(declare-fun res!2955176 () Bool)

(assert (=> start!712552 (=> (not res!2955176) (not e!4377999))))

(assert (=> start!712552 (= res!2955176 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!829)))))))

(assert (=> start!712552 e!4377999))

(declare-fun condSetEmpty!54104 () Bool)

(assert (=> start!712552 (= condSetEmpty!54104 (= s!1437 (as set.empty (Set A!829))))))

(assert (=> start!712552 setRes!54104))

(assert (=> start!712552 tp_is_empty!47453))

(assert (=> start!712552 tp!2075653))

(assert (=> start!712552 e!4378002))

(declare-fun setIsEmpty!54104 () Bool)

(assert (=> setIsEmpty!54104 setRes!54104))

(assert (= (and start!712552 res!2955176) b!7313766))

(assert (= (and b!7313766 res!2955172) b!7313768))

(assert (= (and b!7313768 res!2955178) b!7313773))

(assert (= (and b!7313773 res!2955174) b!7313771))

(assert (= (and b!7313773 (not res!2955175)) b!7313767))

(assert (= (and b!7313767 (not res!2955173)) b!7313772))

(assert (= (and b!7313772 (not res!2955177)) b!7313769))

(assert (= (and start!712552 condSetEmpty!54104) setIsEmpty!54104))

(assert (= (and start!712552 (not condSetEmpty!54104)) setNonEmpty!54104))

(assert (= (and start!712552 (is-Cons!71048 lRes!18)) b!7313770))

(declare-fun b_lambda!282383 () Bool)

(assert (=> (not b_lambda!282383) (not b!7313773)))

(declare-fun t!385368 () Bool)

(declare-fun tb!262219 () Bool)

(assert (=> (and start!712552 (= f!883 f!883) t!385368) tb!262219))

(assert (=> b!7313773 t!385368))

(declare-fun result!352898 () Bool)

(declare-fun b_and!351353 () Bool)

(assert (= b_and!351351 (and (=> t!385368 result!352898) b_and!351353)))

(declare-fun m!7977940 () Bool)

(assert (=> b!7313772 m!7977940))

(assert (=> b!7313772 m!7977940))

(declare-fun m!7977942 () Bool)

(assert (=> b!7313772 m!7977942))

(declare-fun m!7977944 () Bool)

(assert (=> b!7313772 m!7977944))

(declare-fun m!7977946 () Bool)

(assert (=> b!7313766 m!7977946))

(declare-fun m!7977948 () Bool)

(assert (=> b!7313766 m!7977948))

(declare-fun m!7977950 () Bool)

(assert (=> b!7313766 m!7977950))

(declare-fun m!7977952 () Bool)

(assert (=> start!712552 m!7977952))

(declare-fun m!7977954 () Bool)

(assert (=> b!7313771 m!7977954))

(declare-fun m!7977956 () Bool)

(assert (=> b!7313767 m!7977956))

(declare-fun m!7977958 () Bool)

(assert (=> b!7313767 m!7977958))

(declare-fun m!7977960 () Bool)

(assert (=> b!7313773 m!7977960))

(declare-fun m!7977962 () Bool)

(assert (=> b!7313773 m!7977962))

(declare-fun m!7977964 () Bool)

(assert (=> b!7313773 m!7977964))

(assert (=> b!7313773 m!7977962))

(declare-fun m!7977966 () Bool)

(assert (=> b!7313773 m!7977966))

(declare-fun m!7977968 () Bool)

(assert (=> b!7313773 m!7977968))

(declare-fun m!7977970 () Bool)

(assert (=> b!7313773 m!7977970))

(assert (=> b!7313773 m!7977954))

(push 1)

(assert tp_is_empty!47453)

(assert (not b_lambda!282383))

(assert (not b!7313770))

(assert (not b!7313773))

(assert (not b!7313767))

(assert b_and!351353)

(assert (not b!7313766))

(assert (not tb!262219))

(assert (not setNonEmpty!54104))

(assert (not b!7313771))

(assert (not b_next!134773))

(assert (not b!7313772))

(assert tp_is_empty!47455)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351353)

(assert (not b_next!134773))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282387 () Bool)

(assert (= b_lambda!282383 (or (and start!712552 b_free!133983) b_lambda!282387)))

(push 1)

(assert tp_is_empty!47453)

(assert (not b!7313770))

(assert (not b!7313773))

(assert (not b!7313767))

(assert b_and!351353)

(assert (not tb!262219))

(assert (not setNonEmpty!54104))

(assert (not b!7313771))

(assert (not b_next!134773))

(assert (not b!7313772))

(assert tp_is_empty!47455)

(assert (not b!7313766))

(assert (not b_lambda!282387))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351353)

(assert (not b_next!134773))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270880 () Bool)

(declare-fun res!2955204 () Bool)

(declare-fun e!4378031 () Bool)

(assert (=> d!2270880 (=> res!2955204 e!4378031)))

(assert (=> d!2270880 (= res!2955204 (is-Nil!71048 (t!385369 lRes!18)))))

(assert (=> d!2270880 (= (forall!17747 (t!385369 lRes!18) lambda!451812) e!4378031)))

(declare-fun b!7313814 () Bool)

(declare-fun e!4378032 () Bool)

(assert (=> b!7313814 (= e!4378031 e!4378032)))

(declare-fun res!2955205 () Bool)

(assert (=> b!7313814 (=> (not res!2955205) (not e!4378032))))

(declare-fun dynLambda!29117 (Int B!3531) Bool)

(assert (=> b!7313814 (= res!2955205 (dynLambda!29117 lambda!451812 (h!77496 (t!385369 lRes!18))))))

(declare-fun b!7313815 () Bool)

(assert (=> b!7313815 (= e!4378032 (forall!17747 (t!385369 (t!385369 lRes!18)) lambda!451812))))

(assert (= (and d!2270880 (not res!2955204)) b!7313814))

(assert (= (and b!7313814 res!2955205) b!7313815))

(declare-fun b_lambda!282391 () Bool)

(assert (=> (not b_lambda!282391) (not b!7313814)))

(declare-fun m!7978004 () Bool)

(assert (=> b!7313814 m!7978004))

(declare-fun m!7978006 () Bool)

(assert (=> b!7313815 m!7978006))

(assert (=> b!7313771 d!2270880))

(declare-fun d!2270882 () Bool)

(declare-fun lt!2601314 () Bool)

(declare-fun content!14863 (List!71173) (Set A!829))

(assert (=> d!2270882 (= lt!2601314 (set.member lt!2601288 (content!14863 (toList!11582 s!1437))))))

(declare-fun e!4378037 () Bool)

(assert (=> d!2270882 (= lt!2601314 e!4378037)))

(declare-fun res!2955210 () Bool)

(assert (=> d!2270882 (=> (not res!2955210) (not e!4378037))))

(assert (=> d!2270882 (= res!2955210 (is-Cons!71049 (toList!11582 s!1437)))))

(assert (=> d!2270882 (= (contains!20779 (toList!11582 s!1437) lt!2601288) lt!2601314)))

(declare-fun b!7313820 () Bool)

(declare-fun e!4378038 () Bool)

(assert (=> b!7313820 (= e!4378037 e!4378038)))

(declare-fun res!2955211 () Bool)

(assert (=> b!7313820 (=> res!2955211 e!4378038)))

(assert (=> b!7313820 (= res!2955211 (= (h!77497 (toList!11582 s!1437)) lt!2601288))))

(declare-fun b!7313821 () Bool)

(assert (=> b!7313821 (= e!4378038 (contains!20779 (t!385370 (toList!11582 s!1437)) lt!2601288))))

(assert (= (and d!2270882 res!2955210) b!7313820))

(assert (= (and b!7313820 (not res!2955211)) b!7313821))

(assert (=> d!2270882 m!7977940))

(declare-fun m!7978008 () Bool)

(assert (=> d!2270882 m!7978008))

(declare-fun m!7978010 () Bool)

(assert (=> d!2270882 m!7978010))

(declare-fun m!7978012 () Bool)

(assert (=> b!7313821 m!7978012))

(assert (=> b!7313772 d!2270882))

(declare-fun d!2270884 () Bool)

(declare-fun e!4378041 () Bool)

(assert (=> d!2270884 e!4378041))

(declare-fun res!2955214 () Bool)

(assert (=> d!2270884 (=> (not res!2955214) (not e!4378041))))

(declare-fun lt!2601317 () List!71173)

(declare-fun noDuplicate!3044 (List!71173) Bool)

(assert (=> d!2270884 (= res!2955214 (noDuplicate!3044 lt!2601317))))

(declare-fun choose!56679 ((Set A!829)) List!71173)

(assert (=> d!2270884 (= lt!2601317 (choose!56679 s!1437))))

(assert (=> d!2270884 (= (toList!11582 s!1437) lt!2601317)))

(declare-fun b!7313824 () Bool)

(assert (=> b!7313824 (= e!4378041 (= (content!14863 lt!2601317) s!1437))))

(assert (= (and d!2270884 res!2955214) b!7313824))

(declare-fun m!7978014 () Bool)

(assert (=> d!2270884 m!7978014))

(declare-fun m!7978016 () Bool)

(assert (=> d!2270884 m!7978016))

(declare-fun m!7978018 () Bool)

(assert (=> b!7313824 m!7978018))

(assert (=> b!7313772 d!2270884))

(declare-fun d!2270886 () Bool)

(declare-fun e!4378044 () Bool)

(assert (=> d!2270886 e!4378044))

(declare-fun res!2955217 () Bool)

(assert (=> d!2270886 (=> (not res!2955217) (not e!4378044))))

(declare-fun lt!2601320 () A!829)

(declare-fun dynLambda!29118 (Int A!829) Bool)

(assert (=> d!2270886 (= res!2955217 (dynLambda!29118 lambda!451813 lt!2601320))))

(declare-fun getWitness!2280 (List!71173 Int) A!829)

(assert (=> d!2270886 (= lt!2601320 (getWitness!2280 (toList!11582 s!1437) lambda!451813))))

(assert (=> d!2270886 (exists!4522 s!1437 lambda!451813)))

(assert (=> d!2270886 (= (getWitness!2278 s!1437 lambda!451813) lt!2601320)))

(declare-fun b!7313827 () Bool)

(assert (=> b!7313827 (= e!4378044 (set.member lt!2601320 s!1437))))

(assert (= (and d!2270886 res!2955217) b!7313827))

(declare-fun b_lambda!282393 () Bool)

(assert (=> (not b_lambda!282393) (not d!2270886)))

(declare-fun m!7978020 () Bool)

(assert (=> d!2270886 m!7978020))

(assert (=> d!2270886 m!7977940))

(assert (=> d!2270886 m!7977940))

(declare-fun m!7978022 () Bool)

(assert (=> d!2270886 m!7978022))

(assert (=> d!2270886 m!7977956))

(declare-fun m!7978024 () Bool)

(assert (=> b!7313827 m!7978024))

(assert (=> b!7313772 d!2270886))

(declare-fun d!2270888 () Bool)

(declare-fun lt!2601323 () Bool)

(declare-fun exists!4524 (List!71173 Int) Bool)

(assert (=> d!2270888 (= lt!2601323 (exists!4524 (toList!11582 s!1437) lambda!451813))))

(declare-fun choose!56680 ((Set A!829) Int) Bool)

(assert (=> d!2270888 (= lt!2601323 (choose!56680 s!1437 lambda!451813))))

(assert (=> d!2270888 (= (exists!4522 s!1437 lambda!451813) lt!2601323)))

(declare-fun bs!1914645 () Bool)

(assert (= bs!1914645 d!2270888))

(assert (=> bs!1914645 m!7977940))

(assert (=> bs!1914645 m!7977940))

(declare-fun m!7978026 () Bool)

(assert (=> bs!1914645 m!7978026))

(declare-fun m!7978028 () Bool)

(assert (=> bs!1914645 m!7978028))

(assert (=> b!7313767 d!2270888))

(declare-fun bs!1914646 () Bool)

(declare-fun d!2270890 () Bool)

(assert (= bs!1914646 (and d!2270890 b!7313767)))

(declare-fun lambda!451826 () Int)

(assert (=> bs!1914646 (= lambda!451826 lambda!451813)))

(assert (=> d!2270890 true))

(assert (=> d!2270890 true))

(assert (=> d!2270890 (< (dynLambda!29111 order!29109 f!883) (dynLambda!29112 order!29111 lambda!451826))))

(assert (=> d!2270890 (= (set.member (h!77496 lRes!18) (flatMap!3025 s!1437 f!883)) (exists!4522 s!1437 lambda!451826))))

(declare-fun lt!2601326 () A!829)

(declare-fun choose!56681 ((Set A!829) Int B!3531) A!829)

(assert (=> d!2270890 (= lt!2601326 (choose!56681 s!1437 f!883 (h!77496 lRes!18)))))

(assert (=> d!2270890 (= (flatMapPost!103 s!1437 f!883 (h!77496 lRes!18)) lt!2601326)))

(declare-fun bs!1914647 () Bool)

(assert (= bs!1914647 d!2270890))

(assert (=> bs!1914647 m!7977950))

(declare-fun m!7978030 () Bool)

(assert (=> bs!1914647 m!7978030))

(declare-fun m!7978032 () Bool)

(assert (=> bs!1914647 m!7978032))

(declare-fun m!7978034 () Bool)

(assert (=> bs!1914647 m!7978034))

(assert (=> b!7313767 d!2270890))

(declare-fun d!2270892 () Bool)

(declare-fun res!2955228 () Bool)

(declare-fun e!4378053 () Bool)

(assert (=> d!2270892 (=> res!2955228 e!4378053)))

(assert (=> d!2270892 (= res!2955228 (is-Nil!71048 lRes!18))))

(assert (=> d!2270892 (= (subseq!826 lRes!18 lt!2601284) e!4378053)))

(declare-fun b!7313839 () Bool)

(declare-fun e!4378056 () Bool)

(assert (=> b!7313839 (= e!4378053 e!4378056)))

(declare-fun res!2955229 () Bool)

(assert (=> b!7313839 (=> (not res!2955229) (not e!4378056))))

(assert (=> b!7313839 (= res!2955229 (is-Cons!71048 lt!2601284))))

(declare-fun b!7313841 () Bool)

(declare-fun e!4378055 () Bool)

(assert (=> b!7313841 (= e!4378055 (subseq!826 (t!385369 lRes!18) (t!385369 lt!2601284)))))

(declare-fun b!7313842 () Bool)

(declare-fun e!4378054 () Bool)

(assert (=> b!7313842 (= e!4378054 (subseq!826 lRes!18 (t!385369 lt!2601284)))))

(declare-fun b!7313840 () Bool)

(assert (=> b!7313840 (= e!4378056 e!4378054)))

(declare-fun res!2955227 () Bool)

(assert (=> b!7313840 (=> res!2955227 e!4378054)))

(assert (=> b!7313840 (= res!2955227 e!4378055)))

(declare-fun res!2955226 () Bool)

(assert (=> b!7313840 (=> (not res!2955226) (not e!4378055))))

(assert (=> b!7313840 (= res!2955226 (= (h!77496 lRes!18) (h!77496 lt!2601284)))))

(assert (= (and d!2270892 (not res!2955228)) b!7313839))

(assert (= (and b!7313839 res!2955229) b!7313840))

(assert (= (and b!7313840 res!2955226) b!7313841))

(assert (= (and b!7313840 (not res!2955227)) b!7313842))

(declare-fun m!7978036 () Bool)

(assert (=> b!7313841 m!7978036))

(declare-fun m!7978038 () Bool)

(assert (=> b!7313842 m!7978038))

(assert (=> b!7313766 d!2270892))

(declare-fun d!2270894 () Bool)

(declare-fun e!4378059 () Bool)

(assert (=> d!2270894 e!4378059))

(declare-fun res!2955232 () Bool)

(assert (=> d!2270894 (=> (not res!2955232) (not e!4378059))))

(declare-fun lt!2601329 () List!71172)

(declare-fun noDuplicate!3045 (List!71172) Bool)

(assert (=> d!2270894 (= res!2955232 (noDuplicate!3045 lt!2601329))))

(declare-fun choose!56682 ((Set B!3531)) List!71172)

(assert (=> d!2270894 (= lt!2601329 (choose!56682 lt!2601285))))

(assert (=> d!2270894 (= (toList!11581 lt!2601285) lt!2601329)))

(declare-fun b!7313845 () Bool)

(declare-fun content!14864 (List!71172) (Set B!3531))

(assert (=> b!7313845 (= e!4378059 (= (content!14864 lt!2601329) lt!2601285))))

(assert (= (and d!2270894 res!2955232) b!7313845))

(declare-fun m!7978040 () Bool)

(assert (=> d!2270894 m!7978040))

(declare-fun m!7978042 () Bool)

(assert (=> d!2270894 m!7978042))

(declare-fun m!7978044 () Bool)

(assert (=> b!7313845 m!7978044))

(assert (=> b!7313766 d!2270894))

(declare-fun d!2270896 () Bool)

(declare-fun choose!56683 ((Set A!829) Int) (Set B!3531))

(assert (=> d!2270896 (= (flatMap!3025 s!1437 f!883) (choose!56683 s!1437 f!883))))

(declare-fun bs!1914648 () Bool)

(assert (= bs!1914648 d!2270896))

(declare-fun m!7978046 () Bool)

(assert (=> bs!1914648 m!7978046))

(assert (=> b!7313766 d!2270896))

(declare-fun d!2270898 () Bool)

(declare-fun contains!20781 (List!71172 B!3531) Bool)

(assert (=> d!2270898 (contains!20781 lt!2601284 (h!77496 lRes!18))))

(declare-fun lt!2601332 () Unit!164525)

(declare-fun choose!56684 (List!71172 List!71172 B!3531) Unit!164525)

(assert (=> d!2270898 (= lt!2601332 (choose!56684 lRes!18 lt!2601284 (h!77496 lRes!18)))))

(declare-fun e!4378062 () Bool)

(assert (=> d!2270898 e!4378062))

(declare-fun res!2955235 () Bool)

(assert (=> d!2270898 (=> (not res!2955235) (not e!4378062))))

(assert (=> d!2270898 (= res!2955235 (subseq!826 lRes!18 lt!2601284))))

(assert (=> d!2270898 (= (subseqContains!43 lRes!18 lt!2601284 (h!77496 lRes!18)) lt!2601332)))

(declare-fun b!7313848 () Bool)

(assert (=> b!7313848 (= e!4378062 (contains!20781 lRes!18 (h!77496 lRes!18)))))

(assert (= (and d!2270898 res!2955235) b!7313848))

(declare-fun m!7978048 () Bool)

(assert (=> d!2270898 m!7978048))

(declare-fun m!7978050 () Bool)

(assert (=> d!2270898 m!7978050))

(assert (=> d!2270898 m!7977946))

(declare-fun m!7978052 () Bool)

(assert (=> b!7313848 m!7978052))

(assert (=> b!7313773 d!2270898))

(declare-fun bs!1914649 () Bool)

(declare-fun d!2270900 () Bool)

(assert (= bs!1914649 (and d!2270900 b!7313773)))

(declare-fun lambda!451829 () Int)

(declare-fun lt!2601338 () List!71172)

(assert (=> bs!1914649 (= (= lt!2601338 lt!2601286) (= lambda!451829 lambda!451812))))

(assert (=> d!2270900 true))

(assert (=> d!2270900 (forall!17747 (t!385369 lRes!18) lambda!451829)))

(assert (=> d!2270900 (= lt!2601338 (toList!11581 (dynLambda!29113 f!883 elmt!118)))))

(declare-fun lt!2601337 () Unit!164525)

(declare-fun choose!56685 ((Set A!829) A!829 Int List!71172) Unit!164525)

(assert (=> d!2270900 (= lt!2601337 (choose!56685 s!1437 elmt!118 f!883 (t!385369 lRes!18)))))

(assert (=> d!2270900 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!829))))))

(assert (=> d!2270900 (= (lemmaFlatMapOnSingletonSetList1!19 s!1437 elmt!118 f!883 (t!385369 lRes!18)) lt!2601337)))

(declare-fun b_lambda!282395 () Bool)

(assert (=> (not b_lambda!282395) (not d!2270900)))

(assert (=> d!2270900 t!385368))

(declare-fun b_and!351359 () Bool)

(assert (= b_and!351353 (and (=> t!385368 result!352898) b_and!351359)))

(assert (=> d!2270900 m!7977962))

(assert (=> d!2270900 m!7977966))

(declare-fun m!7978054 () Bool)

(assert (=> d!2270900 m!7978054))

(declare-fun m!7978056 () Bool)

(assert (=> d!2270900 m!7978056))

(assert (=> d!2270900 m!7977962))

(assert (=> d!2270900 m!7977952))

(assert (=> b!7313773 d!2270900))

(declare-fun d!2270902 () Bool)

(declare-fun e!4378063 () Bool)

(assert (=> d!2270902 e!4378063))

(declare-fun res!2955236 () Bool)

(assert (=> d!2270902 (=> (not res!2955236) (not e!4378063))))

(declare-fun lt!2601339 () List!71172)

(assert (=> d!2270902 (= res!2955236 (noDuplicate!3045 lt!2601339))))

(assert (=> d!2270902 (= lt!2601339 (choose!56682 (dynLambda!29113 f!883 elmt!118)))))

(assert (=> d!2270902 (= (toList!11581 (dynLambda!29113 f!883 elmt!118)) lt!2601339)))

(declare-fun b!7313849 () Bool)

(assert (=> b!7313849 (= e!4378063 (= (content!14864 lt!2601339) (dynLambda!29113 f!883 elmt!118)))))

(assert (= (and d!2270902 res!2955236) b!7313849))

(declare-fun m!7978058 () Bool)

(assert (=> d!2270902 m!7978058))

(assert (=> d!2270902 m!7977962))

(declare-fun m!7978060 () Bool)

(assert (=> d!2270902 m!7978060))

(declare-fun m!7978062 () Bool)

(assert (=> b!7313849 m!7978062))

(assert (=> b!7313773 d!2270902))

(assert (=> b!7313773 d!2270880))

(declare-fun d!2270904 () Bool)

(declare-fun tail!14632 (List!71172) List!71172)

(assert (=> d!2270904 (subseq!826 (tail!14632 lRes!18) lt!2601284)))

(declare-fun lt!2601345 () Unit!164525)

(declare-fun e!4378074 () Unit!164525)

(assert (=> d!2270904 (= lt!2601345 e!4378074)))

(declare-fun c!1357762 () Bool)

(assert (=> d!2270904 (= c!1357762 (and (is-Cons!71048 lRes!18) (is-Cons!71048 lt!2601284)))))

(declare-fun e!4378075 () Bool)

(assert (=> d!2270904 e!4378075))

(declare-fun res!2955239 () Bool)

(assert (=> d!2270904 (=> (not res!2955239) (not e!4378075))))

(declare-fun isEmpty!40853 (List!71172) Bool)

(assert (=> d!2270904 (= res!2955239 (not (isEmpty!40853 lRes!18)))))

(assert (=> d!2270904 (= (subseqTail!71 lRes!18 lt!2601284) lt!2601345)))

(declare-fun b!7313864 () Bool)

(declare-fun e!4378073 () Unit!164525)

(declare-fun Unit!164529 () Unit!164525)

(assert (=> b!7313864 (= e!4378073 Unit!164529)))

(declare-fun b!7313865 () Bool)

(declare-fun Unit!164530 () Unit!164525)

(assert (=> b!7313865 (= e!4378074 Unit!164530)))

(declare-fun b!7313866 () Bool)

(declare-fun call!665762 () Unit!164525)

(assert (=> b!7313866 (= e!4378073 call!665762)))

(declare-fun b!7313867 () Bool)

(declare-fun c!1357763 () Bool)

(assert (=> b!7313867 (= c!1357763 (not (isEmpty!40853 (t!385369 lRes!18))))))

(declare-fun e!4378072 () Unit!164525)

(assert (=> b!7313867 (= e!4378072 e!4378073)))

(declare-fun b!7313868 () Bool)

(assert (=> b!7313868 (= e!4378072 call!665762)))

(declare-fun b!7313869 () Bool)

(assert (=> b!7313869 (= e!4378074 e!4378072)))

(declare-fun c!1357761 () Bool)

(assert (=> b!7313869 (= c!1357761 (subseq!826 lRes!18 (t!385369 lt!2601284)))))

(declare-fun bm!665757 () Bool)

(assert (=> bm!665757 (= call!665762 (subseqTail!71 (ite c!1357761 lRes!18 (t!385369 lRes!18)) (t!385369 lt!2601284)))))

(declare-fun b!7313870 () Bool)

(assert (=> b!7313870 (= e!4378075 (subseq!826 lRes!18 lt!2601284))))

(assert (= (and d!2270904 res!2955239) b!7313870))

(assert (= (and d!2270904 c!1357762) b!7313869))

(assert (= (and d!2270904 (not c!1357762)) b!7313865))

(assert (= (and b!7313869 c!1357761) b!7313868))

(assert (= (and b!7313869 (not c!1357761)) b!7313867))

(assert (= (and b!7313867 c!1357763) b!7313866))

(assert (= (and b!7313867 (not c!1357763)) b!7313864))

(assert (= (or b!7313868 b!7313866) bm!665757))

(declare-fun m!7978068 () Bool)

(assert (=> bm!665757 m!7978068))

(assert (=> b!7313869 m!7978038))

(declare-fun m!7978070 () Bool)

(assert (=> b!7313867 m!7978070))

(assert (=> b!7313870 m!7977946))

(declare-fun m!7978072 () Bool)

(assert (=> d!2270904 m!7978072))

(assert (=> d!2270904 m!7978072))

(declare-fun m!7978074 () Bool)

(assert (=> d!2270904 m!7978074))

(declare-fun m!7978076 () Bool)

(assert (=> d!2270904 m!7978076))

(assert (=> b!7313773 d!2270904))

(declare-fun b!7313875 () Bool)

(declare-fun e!4378078 () Bool)

(declare-fun tp!2075666 () Bool)

(assert (=> b!7313875 (= e!4378078 (and tp_is_empty!47455 tp!2075666))))

(assert (=> b!7313770 (= tp!2075652 e!4378078)))

(assert (= (and b!7313770 (is-Cons!71048 (t!385369 lRes!18))) b!7313875))

(declare-fun condSetEmpty!54110 () Bool)

(assert (=> tb!262219 (= condSetEmpty!54110 (= (dynLambda!29113 f!883 elmt!118) (as set.empty (Set B!3531))))))

(declare-fun setRes!54110 () Bool)

(assert (=> tb!262219 (= result!352898 setRes!54110)))

(declare-fun setIsEmpty!54110 () Bool)

(assert (=> setIsEmpty!54110 setRes!54110))

(declare-fun setNonEmpty!54110 () Bool)

(declare-fun tp!2075669 () Bool)

(assert (=> setNonEmpty!54110 (= setRes!54110 (and tp!2075669 tp_is_empty!47455))))

(declare-fun setRest!54110 () (Set B!3531))

(declare-fun setElem!54110 () B!3531)

(assert (=> setNonEmpty!54110 (= (dynLambda!29113 f!883 elmt!118) (set.union (set.insert setElem!54110 (as set.empty (Set B!3531))) setRest!54110))))

(assert (= (and tb!262219 condSetEmpty!54110) setIsEmpty!54110))

(assert (= (and tb!262219 (not condSetEmpty!54110)) setNonEmpty!54110))

(declare-fun condSetEmpty!54113 () Bool)

(assert (=> setNonEmpty!54104 (= condSetEmpty!54113 (= setRest!54104 (as set.empty (Set A!829))))))

(declare-fun setRes!54113 () Bool)

(assert (=> setNonEmpty!54104 (= tp!2075654 setRes!54113)))

(declare-fun setIsEmpty!54113 () Bool)

(assert (=> setIsEmpty!54113 setRes!54113))

(declare-fun setNonEmpty!54113 () Bool)

(declare-fun tp!2075672 () Bool)

(assert (=> setNonEmpty!54113 (= setRes!54113 (and tp!2075672 tp_is_empty!47453))))

(declare-fun setElem!54113 () A!829)

(declare-fun setRest!54113 () (Set A!829))

(assert (=> setNonEmpty!54113 (= setRest!54104 (set.union (set.insert setElem!54113 (as set.empty (Set A!829))) setRest!54113))))

(assert (= (and setNonEmpty!54104 condSetEmpty!54113) setIsEmpty!54113))

(assert (= (and setNonEmpty!54104 (not condSetEmpty!54113)) setNonEmpty!54113))

(declare-fun b_lambda!282397 () Bool)

(assert (= b_lambda!282393 (or b!7313767 b_lambda!282397)))

(declare-fun bs!1914651 () Bool)

(declare-fun d!2270910 () Bool)

(assert (= bs!1914651 (and d!2270910 b!7313767)))

(assert (=> bs!1914651 (= (dynLambda!29118 lambda!451813 lt!2601320) (set.member (h!77496 lRes!18) (dynLambda!29113 f!883 lt!2601320)))))

(declare-fun b_lambda!282403 () Bool)

(assert (=> (not b_lambda!282403) (not bs!1914651)))

(declare-fun t!385377 () Bool)

(declare-fun tb!262223 () Bool)

(assert (=> (and start!712552 (= f!883 f!883) t!385377) tb!262223))

(assert (=> bs!1914651 t!385377))

(declare-fun result!352908 () Bool)

(declare-fun b_and!351361 () Bool)

(assert (= b_and!351359 (and (=> t!385377 result!352908) b_and!351361)))

(declare-fun m!7978078 () Bool)

(assert (=> bs!1914651 m!7978078))

(declare-fun m!7978080 () Bool)

(assert (=> bs!1914651 m!7978080))

(assert (=> d!2270886 d!2270910))

(declare-fun b_lambda!282399 () Bool)

(assert (= b_lambda!282395 (or (and start!712552 b_free!133983) b_lambda!282399)))

(declare-fun b_lambda!282401 () Bool)

(assert (= b_lambda!282391 (or b!7313773 b_lambda!282401)))

(declare-fun bs!1914652 () Bool)

(declare-fun d!2270912 () Bool)

(assert (= bs!1914652 (and d!2270912 b!7313773)))

(assert (=> bs!1914652 (= (dynLambda!29117 lambda!451812 (h!77496 (t!385369 lRes!18))) (contains!20781 lt!2601286 (h!77496 (t!385369 lRes!18))))))

(declare-fun m!7978082 () Bool)

(assert (=> bs!1914652 m!7978082))

(assert (=> b!7313814 d!2270912))

(push 1)

(assert tp_is_empty!47453)

(assert (not b!7313848))

(assert (not b!7313845))

(assert (not b!7313821))

(assert (not d!2270904))

(assert (not b!7313824))

(assert (not b!7313842))

(assert (not setNonEmpty!54113))

(assert (not b_lambda!282401))

(assert (not bm!665757))

(assert (not b_lambda!282387))

(assert (not b!7313867))

(assert (not b!7313841))

(assert (not b_lambda!282403))

(assert (not d!2270888))

(assert tp_is_empty!47455)

(assert (not d!2270882))

(assert (not bs!1914652))

(assert (not b!7313875))

(assert (not b_lambda!282399))

(assert b_and!351361)

(assert (not d!2270884))

(assert (not d!2270902))

(assert (not b_lambda!282397))

(assert (not b!7313849))

(assert (not d!2270886))

(assert (not tb!262223))

(assert (not d!2270894))

(assert (not d!2270898))

(assert (not d!2270890))

(assert (not b!7313869))

(assert (not b!7313870))

(assert (not b!7313815))

(assert (not setNonEmpty!54110))

(assert (not d!2270900))

(assert (not b_next!134773))

(assert (not d!2270896))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351361)

(assert (not b_next!134773))

(check-sat)

(pop 1)

