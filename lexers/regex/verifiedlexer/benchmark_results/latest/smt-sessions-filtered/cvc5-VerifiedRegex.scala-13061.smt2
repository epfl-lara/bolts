; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715384 () Bool)

(assert start!715384)

(declare-fun b!7327972 () Bool)

(declare-fun res!2961770 () Bool)

(declare-fun e!4387850 () Bool)

(assert (=> b!7327972 (=> (not res!2961770) (not e!4387850))))

(declare-datatypes ((C!38294 0))(
  ( (C!38295 (val!29507 Int)) )
))
(declare-datatypes ((Regex!19010 0))(
  ( (ElementMatch!19010 (c!1360357 C!38294)) (Concat!27855 (regOne!38532 Regex!19010) (regTwo!38532 Regex!19010)) (EmptyExpr!19010) (Star!19010 (reg!19339 Regex!19010)) (EmptyLang!19010) (Union!19010 (regOne!38533 Regex!19010) (regTwo!38533 Regex!19010)) )
))
(declare-datatypes ((List!71506 0))(
  ( (Nil!71382) (Cons!71382 (h!77830 Regex!19010) (t!385893 List!71506)) )
))
(declare-datatypes ((Context!15900 0))(
  ( (Context!15901 (exprs!8450 List!71506)) )
))
(declare-fun lt!2606735 () (Set Context!15900))

(declare-fun cWitness!35 () Context!15900)

(declare-fun lt!2606733 () (Set Context!15900))

(assert (=> b!7327972 (= res!2961770 (and (= lt!2606735 lt!2606733) (set.member cWitness!35 lt!2606733)))))

(declare-fun b!7327973 () Bool)

(declare-fun e!4387848 () Bool)

(assert (=> b!7327973 (= e!4387848 e!4387850)))

(declare-fun res!2961773 () Bool)

(assert (=> b!7327973 (=> (not res!2961773) (not e!4387850))))

(declare-fun ct1!256 () Context!15900)

(declare-fun nullable!8114 (Regex!19010) Bool)

(assert (=> b!7327973 (= res!2961773 (not (nullable!8114 (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun lt!2606739 () Context!15900)

(declare-fun c!10305 () C!38294)

(declare-fun derivationStepZipperDown!2841 (Regex!19010 Context!15900 C!38294) (Set Context!15900))

(assert (=> b!7327973 (= lt!2606733 (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) lt!2606739 c!10305))))

(declare-fun lt!2606744 () List!71506)

(assert (=> b!7327973 (= lt!2606739 (Context!15901 lt!2606744))))

(declare-fun tail!14699 (List!71506) List!71506)

(assert (=> b!7327973 (= lt!2606744 (tail!14699 (exprs!8450 ct1!256)))))

(declare-fun b!7327974 () Bool)

(declare-fun e!4387849 () Bool)

(assert (=> b!7327974 (= e!4387849 e!4387848)))

(declare-fun res!2961768 () Bool)

(assert (=> b!7327974 (=> (not res!2961768) (not e!4387848))))

(assert (=> b!7327974 (= res!2961768 (is-Cons!71382 (exprs!8450 ct1!256)))))

(declare-fun lt!2606738 () List!71506)

(declare-fun ct2!352 () Context!15900)

(declare-fun ++!16834 (List!71506 List!71506) List!71506)

(assert (=> b!7327974 (= lt!2606738 (++!16834 (exprs!8450 ct1!256) (exprs!8450 ct2!352)))))

(declare-datatypes ((Unit!164985 0))(
  ( (Unit!164986) )
))
(declare-fun lt!2606742 () Unit!164985)

(declare-fun lambda!454283 () Int)

(declare-fun lemmaConcatPreservesForall!1691 (List!71506 List!71506 Int) Unit!164985)

(assert (=> b!7327974 (= lt!2606742 (lemmaConcatPreservesForall!1691 (exprs!8450 ct1!256) (exprs!8450 ct2!352) lambda!454283))))

(declare-fun b!7327975 () Bool)

(declare-fun res!2961767 () Bool)

(assert (=> b!7327975 (=> (not res!2961767) (not e!4387848))))

(declare-fun isEmpty!40928 (List!71506) Bool)

(assert (=> b!7327975 (= res!2961767 (not (isEmpty!40928 (exprs!8450 ct1!256))))))

(declare-fun b!7327976 () Bool)

(declare-fun e!4387847 () Bool)

(assert (=> b!7327976 (= e!4387850 (not e!4387847))))

(declare-fun res!2961771 () Bool)

(assert (=> b!7327976 (=> res!2961771 e!4387847)))

(declare-fun lt!2606743 () Context!15900)

(declare-fun lt!2606740 () (Set Context!15900))

(assert (=> b!7327976 (= res!2961771 (not (set.member lt!2606743 lt!2606740)))))

(declare-fun lt!2606741 () Unit!164985)

(assert (=> b!7327976 (= lt!2606741 (lemmaConcatPreservesForall!1691 (exprs!8450 cWitness!35) (exprs!8450 ct2!352) lambda!454283))))

(assert (=> b!7327976 (set.member lt!2606743 (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352))) c!10305))))

(assert (=> b!7327976 (= lt!2606743 (Context!15901 (++!16834 (exprs!8450 cWitness!35) (exprs!8450 ct2!352))))))

(declare-fun lt!2606736 () Unit!164985)

(assert (=> b!7327976 (= lt!2606736 (lemmaConcatPreservesForall!1691 lt!2606744 (exprs!8450 ct2!352) lambda!454283))))

(declare-fun lt!2606737 () Unit!164985)

(assert (=> b!7327976 (= lt!2606737 (lemmaConcatPreservesForall!1691 (exprs!8450 cWitness!35) (exprs!8450 ct2!352) lambda!454283))))

(declare-fun lt!2606734 () Unit!164985)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!17 (Regex!19010 Context!15900 Context!15900 Context!15900 C!38294) Unit!164985)

(assert (=> b!7327976 (= lt!2606734 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!17 (h!77830 (exprs!8450 ct1!256)) lt!2606739 ct2!352 cWitness!35 c!10305))))

(assert (=> b!7327976 (= lt!2606740 (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (tail!14699 lt!2606738)) c!10305))))

(declare-fun b!7327977 () Bool)

(declare-fun e!4387852 () Bool)

(declare-fun tp!2080830 () Bool)

(assert (=> b!7327977 (= e!4387852 tp!2080830)))

(declare-fun b!7327978 () Bool)

(declare-fun forall!17859 (List!71506 Int) Bool)

(assert (=> b!7327978 (= e!4387847 (forall!17859 (exprs!8450 cWitness!35) lambda!454283))))

(declare-fun b!7327979 () Bool)

(declare-fun e!4387846 () Bool)

(declare-fun tp!2080831 () Bool)

(assert (=> b!7327979 (= e!4387846 tp!2080831)))

(declare-fun b!7327980 () Bool)

(declare-fun res!2961769 () Bool)

(assert (=> b!7327980 (=> (not res!2961769) (not e!4387850))))

(assert (=> b!7327980 (= res!2961769 (not (isEmpty!40928 lt!2606738)))))

(declare-fun b!7327981 () Bool)

(declare-fun e!4387851 () Bool)

(declare-fun tp!2080832 () Bool)

(assert (=> b!7327981 (= e!4387851 tp!2080832)))

(declare-fun res!2961772 () Bool)

(assert (=> start!715384 (=> (not res!2961772) (not e!4387849))))

(assert (=> start!715384 (= res!2961772 (set.member cWitness!35 lt!2606735))))

(declare-fun derivationStepZipperUp!2690 (Context!15900 C!38294) (Set Context!15900))

(assert (=> start!715384 (= lt!2606735 (derivationStepZipperUp!2690 ct1!256 c!10305))))

(assert (=> start!715384 e!4387849))

(declare-fun tp_is_empty!48265 () Bool)

(assert (=> start!715384 tp_is_empty!48265))

(declare-fun inv!90866 (Context!15900) Bool)

(assert (=> start!715384 (and (inv!90866 cWitness!35) e!4387846)))

(assert (=> start!715384 (and (inv!90866 ct1!256) e!4387852)))

(assert (=> start!715384 (and (inv!90866 ct2!352) e!4387851)))

(assert (= (and start!715384 res!2961772) b!7327974))

(assert (= (and b!7327974 res!2961768) b!7327975))

(assert (= (and b!7327975 res!2961767) b!7327973))

(assert (= (and b!7327973 res!2961773) b!7327972))

(assert (= (and b!7327972 res!2961770) b!7327980))

(assert (= (and b!7327980 res!2961769) b!7327976))

(assert (= (and b!7327976 (not res!2961771)) b!7327978))

(assert (= start!715384 b!7327979))

(assert (= start!715384 b!7327977))

(assert (= start!715384 b!7327981))

(declare-fun m!7993856 () Bool)

(assert (=> b!7327980 m!7993856))

(declare-fun m!7993858 () Bool)

(assert (=> b!7327975 m!7993858))

(declare-fun m!7993860 () Bool)

(assert (=> b!7327974 m!7993860))

(declare-fun m!7993862 () Bool)

(assert (=> b!7327974 m!7993862))

(declare-fun m!7993864 () Bool)

(assert (=> b!7327972 m!7993864))

(declare-fun m!7993866 () Bool)

(assert (=> b!7327976 m!7993866))

(declare-fun m!7993868 () Bool)

(assert (=> b!7327976 m!7993868))

(assert (=> b!7327976 m!7993866))

(declare-fun m!7993870 () Bool)

(assert (=> b!7327976 m!7993870))

(declare-fun m!7993872 () Bool)

(assert (=> b!7327976 m!7993872))

(declare-fun m!7993874 () Bool)

(assert (=> b!7327976 m!7993874))

(declare-fun m!7993876 () Bool)

(assert (=> b!7327976 m!7993876))

(declare-fun m!7993878 () Bool)

(assert (=> b!7327976 m!7993878))

(declare-fun m!7993880 () Bool)

(assert (=> b!7327976 m!7993880))

(declare-fun m!7993882 () Bool)

(assert (=> b!7327976 m!7993882))

(declare-fun m!7993884 () Bool)

(assert (=> b!7327976 m!7993884))

(declare-fun m!7993886 () Bool)

(assert (=> start!715384 m!7993886))

(declare-fun m!7993888 () Bool)

(assert (=> start!715384 m!7993888))

(declare-fun m!7993890 () Bool)

(assert (=> start!715384 m!7993890))

(declare-fun m!7993892 () Bool)

(assert (=> start!715384 m!7993892))

(declare-fun m!7993894 () Bool)

(assert (=> start!715384 m!7993894))

(declare-fun m!7993896 () Bool)

(assert (=> b!7327978 m!7993896))

(declare-fun m!7993898 () Bool)

(assert (=> b!7327973 m!7993898))

(declare-fun m!7993900 () Bool)

(assert (=> b!7327973 m!7993900))

(declare-fun m!7993902 () Bool)

(assert (=> b!7327973 m!7993902))

(push 1)

(assert (not b!7327979))

(assert (not b!7327975))

(assert (not b!7327977))

(assert (not b!7327974))

(assert (not b!7327981))

(assert (not b!7327980))

(assert tp_is_empty!48265)

(assert (not b!7327978))

(assert (not start!715384))

(assert (not b!7327973))

(assert (not b!7327976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!667157 () Bool)

(declare-fun call!667162 () (Set Context!15900))

(assert (=> bm!667157 (= call!667162 (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (t!385893 (exprs!8450 ct1!256))) c!10305))))

(declare-fun d!2275646 () Bool)

(declare-fun c!1360364 () Bool)

(declare-fun e!4387886 () Bool)

(assert (=> d!2275646 (= c!1360364 e!4387886)))

(declare-fun res!2961803 () Bool)

(assert (=> d!2275646 (=> (not res!2961803) (not e!4387886))))

(assert (=> d!2275646 (= res!2961803 (is-Cons!71382 (exprs!8450 ct1!256)))))

(declare-fun e!4387888 () (Set Context!15900))

(assert (=> d!2275646 (= (derivationStepZipperUp!2690 ct1!256 c!10305) e!4387888)))

(declare-fun b!7328028 () Bool)

(assert (=> b!7328028 (= e!4387888 (set.union call!667162 (derivationStepZipperUp!2690 (Context!15901 (t!385893 (exprs!8450 ct1!256))) c!10305)))))

(declare-fun b!7328029 () Bool)

(assert (=> b!7328029 (= e!4387886 (nullable!8114 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328030 () Bool)

(declare-fun e!4387887 () (Set Context!15900))

(assert (=> b!7328030 (= e!4387887 (as set.empty (Set Context!15900)))))

(declare-fun b!7328031 () Bool)

(assert (=> b!7328031 (= e!4387888 e!4387887)))

(declare-fun c!1360363 () Bool)

(assert (=> b!7328031 (= c!1360363 (is-Cons!71382 (exprs!8450 ct1!256)))))

(declare-fun b!7328032 () Bool)

(assert (=> b!7328032 (= e!4387887 call!667162)))

(assert (= (and d!2275646 res!2961803) b!7328029))

(assert (= (and d!2275646 c!1360364) b!7328028))

(assert (= (and d!2275646 (not c!1360364)) b!7328031))

(assert (= (and b!7328031 c!1360363) b!7328032))

(assert (= (and b!7328031 (not c!1360363)) b!7328030))

(assert (= (or b!7328028 b!7328032) bm!667157))

(declare-fun m!7993956 () Bool)

(assert (=> bm!667157 m!7993956))

(declare-fun m!7993958 () Bool)

(assert (=> b!7328028 m!7993958))

(assert (=> b!7328029 m!7993898))

(assert (=> start!715384 d!2275646))

(declare-fun bs!1916924 () Bool)

(declare-fun d!2275650 () Bool)

(assert (= bs!1916924 (and d!2275650 b!7327974)))

(declare-fun lambda!454297 () Int)

(assert (=> bs!1916924 (= lambda!454297 lambda!454283)))

(assert (=> d!2275650 (= (inv!90866 cWitness!35) (forall!17859 (exprs!8450 cWitness!35) lambda!454297))))

(declare-fun bs!1916925 () Bool)

(assert (= bs!1916925 d!2275650))

(declare-fun m!7993960 () Bool)

(assert (=> bs!1916925 m!7993960))

(assert (=> start!715384 d!2275650))

(declare-fun bs!1916926 () Bool)

(declare-fun d!2275652 () Bool)

(assert (= bs!1916926 (and d!2275652 b!7327974)))

(declare-fun lambda!454298 () Int)

(assert (=> bs!1916926 (= lambda!454298 lambda!454283)))

(declare-fun bs!1916927 () Bool)

(assert (= bs!1916927 (and d!2275652 d!2275650)))

(assert (=> bs!1916927 (= lambda!454298 lambda!454297)))

(assert (=> d!2275652 (= (inv!90866 ct1!256) (forall!17859 (exprs!8450 ct1!256) lambda!454298))))

(declare-fun bs!1916928 () Bool)

(assert (= bs!1916928 d!2275652))

(declare-fun m!7993962 () Bool)

(assert (=> bs!1916928 m!7993962))

(assert (=> start!715384 d!2275652))

(declare-fun bs!1916929 () Bool)

(declare-fun d!2275654 () Bool)

(assert (= bs!1916929 (and d!2275654 b!7327974)))

(declare-fun lambda!454299 () Int)

(assert (=> bs!1916929 (= lambda!454299 lambda!454283)))

(declare-fun bs!1916930 () Bool)

(assert (= bs!1916930 (and d!2275654 d!2275650)))

(assert (=> bs!1916930 (= lambda!454299 lambda!454297)))

(declare-fun bs!1916931 () Bool)

(assert (= bs!1916931 (and d!2275654 d!2275652)))

(assert (=> bs!1916931 (= lambda!454299 lambda!454298)))

(assert (=> d!2275654 (= (inv!90866 ct2!352) (forall!17859 (exprs!8450 ct2!352) lambda!454299))))

(declare-fun bs!1916932 () Bool)

(assert (= bs!1916932 d!2275654))

(declare-fun m!7993964 () Bool)

(assert (=> bs!1916932 m!7993964))

(assert (=> start!715384 d!2275654))

(declare-fun b!7328054 () Bool)

(declare-fun e!4387900 () List!71506)

(assert (=> b!7328054 (= e!4387900 (Cons!71382 (h!77830 lt!2606744) (++!16834 (t!385893 lt!2606744) (exprs!8450 ct2!352))))))

(declare-fun b!7328053 () Bool)

(assert (=> b!7328053 (= e!4387900 (exprs!8450 ct2!352))))

(declare-fun d!2275656 () Bool)

(declare-fun e!4387899 () Bool)

(assert (=> d!2275656 e!4387899))

(declare-fun res!2961814 () Bool)

(assert (=> d!2275656 (=> (not res!2961814) (not e!4387899))))

(declare-fun lt!2606786 () List!71506)

(declare-fun content!14951 (List!71506) (Set Regex!19010))

(assert (=> d!2275656 (= res!2961814 (= (content!14951 lt!2606786) (set.union (content!14951 lt!2606744) (content!14951 (exprs!8450 ct2!352)))))))

(assert (=> d!2275656 (= lt!2606786 e!4387900)))

(declare-fun c!1360370 () Bool)

(assert (=> d!2275656 (= c!1360370 (is-Nil!71382 lt!2606744))))

(assert (=> d!2275656 (= (++!16834 lt!2606744 (exprs!8450 ct2!352)) lt!2606786)))

(declare-fun b!7328056 () Bool)

(assert (=> b!7328056 (= e!4387899 (or (not (= (exprs!8450 ct2!352) Nil!71382)) (= lt!2606786 lt!2606744)))))

(declare-fun b!7328055 () Bool)

(declare-fun res!2961815 () Bool)

(assert (=> b!7328055 (=> (not res!2961815) (not e!4387899))))

(declare-fun size!41928 (List!71506) Int)

(assert (=> b!7328055 (= res!2961815 (= (size!41928 lt!2606786) (+ (size!41928 lt!2606744) (size!41928 (exprs!8450 ct2!352)))))))

(assert (= (and d!2275656 c!1360370) b!7328053))

(assert (= (and d!2275656 (not c!1360370)) b!7328054))

(assert (= (and d!2275656 res!2961814) b!7328055))

(assert (= (and b!7328055 res!2961815) b!7328056))

(declare-fun m!7993980 () Bool)

(assert (=> b!7328054 m!7993980))

(declare-fun m!7993982 () Bool)

(assert (=> d!2275656 m!7993982))

(declare-fun m!7993984 () Bool)

(assert (=> d!2275656 m!7993984))

(declare-fun m!7993986 () Bool)

(assert (=> d!2275656 m!7993986))

(declare-fun m!7993988 () Bool)

(assert (=> b!7328055 m!7993988))

(declare-fun m!7993990 () Bool)

(assert (=> b!7328055 m!7993990))

(declare-fun m!7993992 () Bool)

(assert (=> b!7328055 m!7993992))

(assert (=> b!7327976 d!2275656))

(declare-fun bm!667170 () Bool)

(declare-fun c!1360386 () Bool)

(declare-fun c!1360387 () Bool)

(declare-fun call!667179 () List!71506)

(declare-fun $colon$colon!3041 (List!71506 Regex!19010) List!71506)

(assert (=> bm!667170 (= call!667179 ($colon$colon!3041 (exprs!8450 (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352)))) (ite (or c!1360387 c!1360386) (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun bm!667171 () Bool)

(declare-fun c!1360385 () Bool)

(declare-fun call!667180 () (Set Context!15900))

(assert (=> bm!667171 (= call!667180 (derivationStepZipperDown!2841 (ite c!1360385 (regOne!38533 (h!77830 (exprs!8450 ct1!256))) (regOne!38532 (h!77830 (exprs!8450 ct1!256)))) (ite c!1360385 (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352))) (Context!15901 call!667179)) c!10305))))

(declare-fun d!2275660 () Bool)

(declare-fun c!1360384 () Bool)

(assert (=> d!2275660 (= c!1360384 (and (is-ElementMatch!19010 (h!77830 (exprs!8450 ct1!256))) (= (c!1360357 (h!77830 (exprs!8450 ct1!256))) c!10305)))))

(declare-fun e!4387917 () (Set Context!15900))

(assert (=> d!2275660 (= (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352))) c!10305) e!4387917)))

(declare-fun b!7328089 () Bool)

(declare-fun e!4387919 () (Set Context!15900))

(declare-fun e!4387921 () (Set Context!15900))

(assert (=> b!7328089 (= e!4387919 e!4387921)))

(assert (=> b!7328089 (= c!1360386 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328090 () Bool)

(declare-fun e!4387922 () (Set Context!15900))

(assert (=> b!7328090 (= e!4387922 (as set.empty (Set Context!15900)))))

(declare-fun b!7328092 () Bool)

(declare-fun e!4387918 () (Set Context!15900))

(declare-fun call!667176 () (Set Context!15900))

(assert (=> b!7328092 (= e!4387918 (set.union call!667180 call!667176))))

(declare-fun b!7328093 () Bool)

(declare-fun call!667175 () (Set Context!15900))

(assert (=> b!7328093 (= e!4387921 call!667175)))

(declare-fun bm!667172 () Bool)

(declare-fun call!667178 () List!71506)

(assert (=> bm!667172 (= call!667178 call!667179)))

(declare-fun b!7328095 () Bool)

(assert (=> b!7328095 (= e!4387917 e!4387918)))

(assert (=> b!7328095 (= c!1360385 (is-Union!19010 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328096 () Bool)

(declare-fun e!4387920 () Bool)

(assert (=> b!7328096 (= e!4387920 (nullable!8114 (regOne!38532 (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun bm!667173 () Bool)

(declare-fun call!667177 () (Set Context!15900))

(assert (=> bm!667173 (= call!667177 call!667176)))

(declare-fun b!7328097 () Bool)

(declare-fun c!1360388 () Bool)

(assert (=> b!7328097 (= c!1360388 (is-Star!19010 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328097 (= e!4387921 e!4387922)))

(declare-fun bm!667174 () Bool)

(assert (=> bm!667174 (= call!667175 call!667177)))

(declare-fun b!7328098 () Bool)

(assert (=> b!7328098 (= e!4387922 call!667175)))

(declare-fun b!7328099 () Bool)

(assert (=> b!7328099 (= c!1360387 e!4387920)))

(declare-fun res!2961820 () Bool)

(assert (=> b!7328099 (=> (not res!2961820) (not e!4387920))))

(assert (=> b!7328099 (= res!2961820 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328099 (= e!4387918 e!4387919)))

(declare-fun bm!667175 () Bool)

(assert (=> bm!667175 (= call!667176 (derivationStepZipperDown!2841 (ite c!1360385 (regTwo!38533 (h!77830 (exprs!8450 ct1!256))) (ite c!1360387 (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (ite c!1360386 (regOne!38532 (h!77830 (exprs!8450 ct1!256))) (reg!19339 (h!77830 (exprs!8450 ct1!256)))))) (ite (or c!1360385 c!1360387) (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352))) (Context!15901 call!667178)) c!10305))))

(declare-fun b!7328100 () Bool)

(assert (=> b!7328100 (= e!4387917 (set.insert (Context!15901 (++!16834 lt!2606744 (exprs!8450 ct2!352))) (as set.empty (Set Context!15900))))))

(declare-fun b!7328101 () Bool)

(assert (=> b!7328101 (= e!4387919 (set.union call!667180 call!667177))))

(assert (= (and d!2275660 c!1360384) b!7328100))

(assert (= (and d!2275660 (not c!1360384)) b!7328095))

(assert (= (and b!7328095 c!1360385) b!7328092))

(assert (= (and b!7328095 (not c!1360385)) b!7328099))

(assert (= (and b!7328099 res!2961820) b!7328096))

(assert (= (and b!7328099 c!1360387) b!7328101))

(assert (= (and b!7328099 (not c!1360387)) b!7328089))

(assert (= (and b!7328089 c!1360386) b!7328093))

(assert (= (and b!7328089 (not c!1360386)) b!7328097))

(assert (= (and b!7328097 c!1360388) b!7328098))

(assert (= (and b!7328097 (not c!1360388)) b!7328090))

(assert (= (or b!7328093 b!7328098) bm!667172))

(assert (= (or b!7328093 b!7328098) bm!667174))

(assert (= (or b!7328101 bm!667174) bm!667173))

(assert (= (or b!7328101 bm!667172) bm!667170))

(assert (= (or b!7328092 bm!667173) bm!667175))

(assert (= (or b!7328092 b!7328101) bm!667171))

(declare-fun m!7994010 () Bool)

(assert (=> b!7328100 m!7994010))

(declare-fun m!7994012 () Bool)

(assert (=> b!7328096 m!7994012))

(declare-fun m!7994014 () Bool)

(assert (=> bm!667170 m!7994014))

(declare-fun m!7994016 () Bool)

(assert (=> bm!667171 m!7994016))

(declare-fun m!7994018 () Bool)

(assert (=> bm!667175 m!7994018))

(assert (=> b!7327976 d!2275660))

(declare-fun d!2275670 () Bool)

(assert (=> d!2275670 (forall!17859 (++!16834 (exprs!8450 cWitness!35) (exprs!8450 ct2!352)) lambda!454283)))

(declare-fun lt!2606793 () Unit!164985)

(declare-fun choose!56992 (List!71506 List!71506 Int) Unit!164985)

(assert (=> d!2275670 (= lt!2606793 (choose!56992 (exprs!8450 cWitness!35) (exprs!8450 ct2!352) lambda!454283))))

(assert (=> d!2275670 (forall!17859 (exprs!8450 cWitness!35) lambda!454283)))

(assert (=> d!2275670 (= (lemmaConcatPreservesForall!1691 (exprs!8450 cWitness!35) (exprs!8450 ct2!352) lambda!454283) lt!2606793)))

(declare-fun bs!1916934 () Bool)

(assert (= bs!1916934 d!2275670))

(assert (=> bs!1916934 m!7993870))

(assert (=> bs!1916934 m!7993870))

(declare-fun m!7994020 () Bool)

(assert (=> bs!1916934 m!7994020))

(declare-fun m!7994022 () Bool)

(assert (=> bs!1916934 m!7994022))

(assert (=> bs!1916934 m!7993896))

(assert (=> b!7327976 d!2275670))

(declare-fun b!7328117 () Bool)

(declare-fun e!4387934 () List!71506)

(assert (=> b!7328117 (= e!4387934 (Cons!71382 (h!77830 (exprs!8450 cWitness!35)) (++!16834 (t!385893 (exprs!8450 cWitness!35)) (exprs!8450 ct2!352))))))

(declare-fun b!7328116 () Bool)

(assert (=> b!7328116 (= e!4387934 (exprs!8450 ct2!352))))

(declare-fun d!2275672 () Bool)

(declare-fun e!4387933 () Bool)

(assert (=> d!2275672 e!4387933))

(declare-fun res!2961823 () Bool)

(assert (=> d!2275672 (=> (not res!2961823) (not e!4387933))))

(declare-fun lt!2606794 () List!71506)

(assert (=> d!2275672 (= res!2961823 (= (content!14951 lt!2606794) (set.union (content!14951 (exprs!8450 cWitness!35)) (content!14951 (exprs!8450 ct2!352)))))))

(assert (=> d!2275672 (= lt!2606794 e!4387934)))

(declare-fun c!1360397 () Bool)

(assert (=> d!2275672 (= c!1360397 (is-Nil!71382 (exprs!8450 cWitness!35)))))

(assert (=> d!2275672 (= (++!16834 (exprs!8450 cWitness!35) (exprs!8450 ct2!352)) lt!2606794)))

(declare-fun b!7328119 () Bool)

(assert (=> b!7328119 (= e!4387933 (or (not (= (exprs!8450 ct2!352) Nil!71382)) (= lt!2606794 (exprs!8450 cWitness!35))))))

(declare-fun b!7328118 () Bool)

(declare-fun res!2961824 () Bool)

(assert (=> b!7328118 (=> (not res!2961824) (not e!4387933))))

(assert (=> b!7328118 (= res!2961824 (= (size!41928 lt!2606794) (+ (size!41928 (exprs!8450 cWitness!35)) (size!41928 (exprs!8450 ct2!352)))))))

(assert (= (and d!2275672 c!1360397) b!7328116))

(assert (= (and d!2275672 (not c!1360397)) b!7328117))

(assert (= (and d!2275672 res!2961823) b!7328118))

(assert (= (and b!7328118 res!2961824) b!7328119))

(declare-fun m!7994024 () Bool)

(assert (=> b!7328117 m!7994024))

(declare-fun m!7994026 () Bool)

(assert (=> d!2275672 m!7994026))

(declare-fun m!7994028 () Bool)

(assert (=> d!2275672 m!7994028))

(assert (=> d!2275672 m!7993986))

(declare-fun m!7994030 () Bool)

(assert (=> b!7328118 m!7994030))

(declare-fun m!7994032 () Bool)

(assert (=> b!7328118 m!7994032))

(assert (=> b!7328118 m!7993992))

(assert (=> b!7327976 d!2275672))

(declare-fun d!2275674 () Bool)

(assert (=> d!2275674 (forall!17859 (++!16834 lt!2606744 (exprs!8450 ct2!352)) lambda!454283)))

(declare-fun lt!2606795 () Unit!164985)

(assert (=> d!2275674 (= lt!2606795 (choose!56992 lt!2606744 (exprs!8450 ct2!352) lambda!454283))))

(assert (=> d!2275674 (forall!17859 lt!2606744 lambda!454283)))

(assert (=> d!2275674 (= (lemmaConcatPreservesForall!1691 lt!2606744 (exprs!8450 ct2!352) lambda!454283) lt!2606795)))

(declare-fun bs!1916935 () Bool)

(assert (= bs!1916935 d!2275674))

(assert (=> bs!1916935 m!7993884))

(assert (=> bs!1916935 m!7993884))

(declare-fun m!7994034 () Bool)

(assert (=> bs!1916935 m!7994034))

(declare-fun m!7994036 () Bool)

(assert (=> bs!1916935 m!7994036))

(declare-fun m!7994038 () Bool)

(assert (=> bs!1916935 m!7994038))

(assert (=> b!7327976 d!2275674))

(declare-fun call!667193 () List!71506)

(declare-fun bm!667184 () Bool)

(declare-fun c!1360401 () Bool)

(declare-fun c!1360400 () Bool)

(assert (=> bm!667184 (= call!667193 ($colon$colon!3041 (exprs!8450 (Context!15901 (tail!14699 lt!2606738))) (ite (or c!1360401 c!1360400) (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun c!1360399 () Bool)

(declare-fun call!667194 () (Set Context!15900))

(declare-fun bm!667185 () Bool)

(assert (=> bm!667185 (= call!667194 (derivationStepZipperDown!2841 (ite c!1360399 (regOne!38533 (h!77830 (exprs!8450 ct1!256))) (regOne!38532 (h!77830 (exprs!8450 ct1!256)))) (ite c!1360399 (Context!15901 (tail!14699 lt!2606738)) (Context!15901 call!667193)) c!10305))))

(declare-fun d!2275676 () Bool)

(declare-fun c!1360398 () Bool)

(assert (=> d!2275676 (= c!1360398 (and (is-ElementMatch!19010 (h!77830 (exprs!8450 ct1!256))) (= (c!1360357 (h!77830 (exprs!8450 ct1!256))) c!10305)))))

(declare-fun e!4387935 () (Set Context!15900))

(assert (=> d!2275676 (= (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (tail!14699 lt!2606738)) c!10305) e!4387935)))

(declare-fun b!7328120 () Bool)

(declare-fun e!4387937 () (Set Context!15900))

(declare-fun e!4387939 () (Set Context!15900))

(assert (=> b!7328120 (= e!4387937 e!4387939)))

(assert (=> b!7328120 (= c!1360400 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328121 () Bool)

(declare-fun e!4387940 () (Set Context!15900))

(assert (=> b!7328121 (= e!4387940 (as set.empty (Set Context!15900)))))

(declare-fun b!7328122 () Bool)

(declare-fun e!4387936 () (Set Context!15900))

(declare-fun call!667190 () (Set Context!15900))

(assert (=> b!7328122 (= e!4387936 (set.union call!667194 call!667190))))

(declare-fun b!7328123 () Bool)

(declare-fun call!667189 () (Set Context!15900))

(assert (=> b!7328123 (= e!4387939 call!667189)))

(declare-fun bm!667186 () Bool)

(declare-fun call!667192 () List!71506)

(assert (=> bm!667186 (= call!667192 call!667193)))

(declare-fun b!7328124 () Bool)

(assert (=> b!7328124 (= e!4387935 e!4387936)))

(assert (=> b!7328124 (= c!1360399 (is-Union!19010 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328125 () Bool)

(declare-fun e!4387938 () Bool)

(assert (=> b!7328125 (= e!4387938 (nullable!8114 (regOne!38532 (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun bm!667187 () Bool)

(declare-fun call!667191 () (Set Context!15900))

(assert (=> bm!667187 (= call!667191 call!667190)))

(declare-fun b!7328126 () Bool)

(declare-fun c!1360402 () Bool)

(assert (=> b!7328126 (= c!1360402 (is-Star!19010 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328126 (= e!4387939 e!4387940)))

(declare-fun bm!667188 () Bool)

(assert (=> bm!667188 (= call!667189 call!667191)))

(declare-fun b!7328127 () Bool)

(assert (=> b!7328127 (= e!4387940 call!667189)))

(declare-fun b!7328128 () Bool)

(assert (=> b!7328128 (= c!1360401 e!4387938)))

(declare-fun res!2961825 () Bool)

(assert (=> b!7328128 (=> (not res!2961825) (not e!4387938))))

(assert (=> b!7328128 (= res!2961825 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328128 (= e!4387936 e!4387937)))

(declare-fun bm!667189 () Bool)

(assert (=> bm!667189 (= call!667190 (derivationStepZipperDown!2841 (ite c!1360399 (regTwo!38533 (h!77830 (exprs!8450 ct1!256))) (ite c!1360401 (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (ite c!1360400 (regOne!38532 (h!77830 (exprs!8450 ct1!256))) (reg!19339 (h!77830 (exprs!8450 ct1!256)))))) (ite (or c!1360399 c!1360401) (Context!15901 (tail!14699 lt!2606738)) (Context!15901 call!667192)) c!10305))))

(declare-fun b!7328129 () Bool)

(assert (=> b!7328129 (= e!4387935 (set.insert (Context!15901 (tail!14699 lt!2606738)) (as set.empty (Set Context!15900))))))

(declare-fun b!7328130 () Bool)

(assert (=> b!7328130 (= e!4387937 (set.union call!667194 call!667191))))

(assert (= (and d!2275676 c!1360398) b!7328129))

(assert (= (and d!2275676 (not c!1360398)) b!7328124))

(assert (= (and b!7328124 c!1360399) b!7328122))

(assert (= (and b!7328124 (not c!1360399)) b!7328128))

(assert (= (and b!7328128 res!2961825) b!7328125))

(assert (= (and b!7328128 c!1360401) b!7328130))

(assert (= (and b!7328128 (not c!1360401)) b!7328120))

(assert (= (and b!7328120 c!1360400) b!7328123))

(assert (= (and b!7328120 (not c!1360400)) b!7328126))

(assert (= (and b!7328126 c!1360402) b!7328127))

(assert (= (and b!7328126 (not c!1360402)) b!7328121))

(assert (= (or b!7328123 b!7328127) bm!667186))

(assert (= (or b!7328123 b!7328127) bm!667188))

(assert (= (or b!7328130 bm!667188) bm!667187))

(assert (= (or b!7328130 bm!667186) bm!667184))

(assert (= (or b!7328122 bm!667187) bm!667189))

(assert (= (or b!7328122 b!7328130) bm!667185))

(declare-fun m!7994040 () Bool)

(assert (=> b!7328129 m!7994040))

(assert (=> b!7328125 m!7994012))

(declare-fun m!7994042 () Bool)

(assert (=> bm!667184 m!7994042))

(declare-fun m!7994044 () Bool)

(assert (=> bm!667185 m!7994044))

(declare-fun m!7994046 () Bool)

(assert (=> bm!667189 m!7994046))

(assert (=> b!7327976 d!2275676))

(declare-fun bs!1916936 () Bool)

(declare-fun d!2275678 () Bool)

(assert (= bs!1916936 (and d!2275678 b!7327974)))

(declare-fun lambda!454304 () Int)

(assert (=> bs!1916936 (= lambda!454304 lambda!454283)))

(declare-fun bs!1916937 () Bool)

(assert (= bs!1916937 (and d!2275678 d!2275650)))

(assert (=> bs!1916937 (= lambda!454304 lambda!454297)))

(declare-fun bs!1916938 () Bool)

(assert (= bs!1916938 (and d!2275678 d!2275652)))

(assert (=> bs!1916938 (= lambda!454304 lambda!454298)))

(declare-fun bs!1916939 () Bool)

(assert (= bs!1916939 (and d!2275678 d!2275654)))

(assert (=> bs!1916939 (= lambda!454304 lambda!454299)))

(assert (=> d!2275678 (set.member (Context!15901 (++!16834 (exprs!8450 cWitness!35) (exprs!8450 ct2!352))) (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) (Context!15901 (++!16834 (exprs!8450 lt!2606739) (exprs!8450 ct2!352))) c!10305))))

(declare-fun lt!2606804 () Unit!164985)

(assert (=> d!2275678 (= lt!2606804 (lemmaConcatPreservesForall!1691 (exprs!8450 lt!2606739) (exprs!8450 ct2!352) lambda!454304))))

(declare-fun lt!2606803 () Unit!164985)

(assert (=> d!2275678 (= lt!2606803 (lemmaConcatPreservesForall!1691 (exprs!8450 cWitness!35) (exprs!8450 ct2!352) lambda!454304))))

(declare-fun lt!2606802 () Unit!164985)

(declare-fun choose!56993 (Regex!19010 Context!15900 Context!15900 Context!15900 C!38294) Unit!164985)

(assert (=> d!2275678 (= lt!2606802 (choose!56993 (h!77830 (exprs!8450 ct1!256)) lt!2606739 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9645 (Regex!19010) Bool)

(assert (=> d!2275678 (validRegex!9645 (h!77830 (exprs!8450 ct1!256)))))

(assert (=> d!2275678 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!17 (h!77830 (exprs!8450 ct1!256)) lt!2606739 ct2!352 cWitness!35 c!10305) lt!2606802)))

(declare-fun bs!1916940 () Bool)

(assert (= bs!1916940 d!2275678))

(declare-fun m!7994048 () Bool)

(assert (=> bs!1916940 m!7994048))

(declare-fun m!7994050 () Bool)

(assert (=> bs!1916940 m!7994050))

(declare-fun m!7994052 () Bool)

(assert (=> bs!1916940 m!7994052))

(declare-fun m!7994054 () Bool)

(assert (=> bs!1916940 m!7994054))

(assert (=> bs!1916940 m!7993870))

(declare-fun m!7994056 () Bool)

(assert (=> bs!1916940 m!7994056))

(declare-fun m!7994058 () Bool)

(assert (=> bs!1916940 m!7994058))

(declare-fun m!7994060 () Bool)

(assert (=> bs!1916940 m!7994060))

(assert (=> b!7327976 d!2275678))

(declare-fun d!2275680 () Bool)

(assert (=> d!2275680 (= (tail!14699 lt!2606738) (t!385893 lt!2606738))))

(assert (=> b!7327976 d!2275680))

(declare-fun d!2275682 () Bool)

(assert (=> d!2275682 (= (isEmpty!40928 (exprs!8450 ct1!256)) (is-Nil!71382 (exprs!8450 ct1!256)))))

(assert (=> b!7327975 d!2275682))

(declare-fun d!2275684 () Bool)

(assert (=> d!2275684 (= (isEmpty!40928 lt!2606738) (is-Nil!71382 lt!2606738))))

(assert (=> b!7327980 d!2275684))

(declare-fun b!7328132 () Bool)

(declare-fun e!4387942 () List!71506)

(assert (=> b!7328132 (= e!4387942 (Cons!71382 (h!77830 (exprs!8450 ct1!256)) (++!16834 (t!385893 (exprs!8450 ct1!256)) (exprs!8450 ct2!352))))))

(declare-fun b!7328131 () Bool)

(assert (=> b!7328131 (= e!4387942 (exprs!8450 ct2!352))))

(declare-fun d!2275686 () Bool)

(declare-fun e!4387941 () Bool)

(assert (=> d!2275686 e!4387941))

(declare-fun res!2961826 () Bool)

(assert (=> d!2275686 (=> (not res!2961826) (not e!4387941))))

(declare-fun lt!2606805 () List!71506)

(assert (=> d!2275686 (= res!2961826 (= (content!14951 lt!2606805) (set.union (content!14951 (exprs!8450 ct1!256)) (content!14951 (exprs!8450 ct2!352)))))))

(assert (=> d!2275686 (= lt!2606805 e!4387942)))

(declare-fun c!1360404 () Bool)

(assert (=> d!2275686 (= c!1360404 (is-Nil!71382 (exprs!8450 ct1!256)))))

(assert (=> d!2275686 (= (++!16834 (exprs!8450 ct1!256) (exprs!8450 ct2!352)) lt!2606805)))

(declare-fun b!7328134 () Bool)

(assert (=> b!7328134 (= e!4387941 (or (not (= (exprs!8450 ct2!352) Nil!71382)) (= lt!2606805 (exprs!8450 ct1!256))))))

(declare-fun b!7328133 () Bool)

(declare-fun res!2961827 () Bool)

(assert (=> b!7328133 (=> (not res!2961827) (not e!4387941))))

(assert (=> b!7328133 (= res!2961827 (= (size!41928 lt!2606805) (+ (size!41928 (exprs!8450 ct1!256)) (size!41928 (exprs!8450 ct2!352)))))))

(assert (= (and d!2275686 c!1360404) b!7328131))

(assert (= (and d!2275686 (not c!1360404)) b!7328132))

(assert (= (and d!2275686 res!2961826) b!7328133))

(assert (= (and b!7328133 res!2961827) b!7328134))

(declare-fun m!7994062 () Bool)

(assert (=> b!7328132 m!7994062))

(declare-fun m!7994064 () Bool)

(assert (=> d!2275686 m!7994064))

(declare-fun m!7994066 () Bool)

(assert (=> d!2275686 m!7994066))

(assert (=> d!2275686 m!7993986))

(declare-fun m!7994068 () Bool)

(assert (=> b!7328133 m!7994068))

(declare-fun m!7994070 () Bool)

(assert (=> b!7328133 m!7994070))

(assert (=> b!7328133 m!7993992))

(assert (=> b!7327974 d!2275686))

(declare-fun d!2275688 () Bool)

(assert (=> d!2275688 (forall!17859 (++!16834 (exprs!8450 ct1!256) (exprs!8450 ct2!352)) lambda!454283)))

(declare-fun lt!2606806 () Unit!164985)

(assert (=> d!2275688 (= lt!2606806 (choose!56992 (exprs!8450 ct1!256) (exprs!8450 ct2!352) lambda!454283))))

(assert (=> d!2275688 (forall!17859 (exprs!8450 ct1!256) lambda!454283)))

(assert (=> d!2275688 (= (lemmaConcatPreservesForall!1691 (exprs!8450 ct1!256) (exprs!8450 ct2!352) lambda!454283) lt!2606806)))

(declare-fun bs!1916941 () Bool)

(assert (= bs!1916941 d!2275688))

(assert (=> bs!1916941 m!7993860))

(assert (=> bs!1916941 m!7993860))

(declare-fun m!7994072 () Bool)

(assert (=> bs!1916941 m!7994072))

(declare-fun m!7994074 () Bool)

(assert (=> bs!1916941 m!7994074))

(declare-fun m!7994076 () Bool)

(assert (=> bs!1916941 m!7994076))

(assert (=> b!7327974 d!2275688))

(declare-fun d!2275690 () Bool)

(declare-fun nullableFct!3225 (Regex!19010) Bool)

(assert (=> d!2275690 (= (nullable!8114 (h!77830 (exprs!8450 ct1!256))) (nullableFct!3225 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun bs!1916942 () Bool)

(assert (= bs!1916942 d!2275690))

(declare-fun m!7994078 () Bool)

(assert (=> bs!1916942 m!7994078))

(assert (=> b!7327973 d!2275690))

(declare-fun c!1360408 () Bool)

(declare-fun c!1360407 () Bool)

(declare-fun bm!667194 () Bool)

(declare-fun call!667203 () List!71506)

(assert (=> bm!667194 (= call!667203 ($colon$colon!3041 (exprs!8450 lt!2606739) (ite (or c!1360408 c!1360407) (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun bm!667195 () Bool)

(declare-fun c!1360406 () Bool)

(declare-fun call!667204 () (Set Context!15900))

(assert (=> bm!667195 (= call!667204 (derivationStepZipperDown!2841 (ite c!1360406 (regOne!38533 (h!77830 (exprs!8450 ct1!256))) (regOne!38532 (h!77830 (exprs!8450 ct1!256)))) (ite c!1360406 lt!2606739 (Context!15901 call!667203)) c!10305))))

(declare-fun d!2275692 () Bool)

(declare-fun c!1360405 () Bool)

(assert (=> d!2275692 (= c!1360405 (and (is-ElementMatch!19010 (h!77830 (exprs!8450 ct1!256))) (= (c!1360357 (h!77830 (exprs!8450 ct1!256))) c!10305)))))

(declare-fun e!4387943 () (Set Context!15900))

(assert (=> d!2275692 (= (derivationStepZipperDown!2841 (h!77830 (exprs!8450 ct1!256)) lt!2606739 c!10305) e!4387943)))

(declare-fun b!7328135 () Bool)

(declare-fun e!4387945 () (Set Context!15900))

(declare-fun e!4387947 () (Set Context!15900))

(assert (=> b!7328135 (= e!4387945 e!4387947)))

(assert (=> b!7328135 (= c!1360407 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328136 () Bool)

(declare-fun e!4387948 () (Set Context!15900))

(assert (=> b!7328136 (= e!4387948 (as set.empty (Set Context!15900)))))

(declare-fun b!7328137 () Bool)

(declare-fun e!4387944 () (Set Context!15900))

(declare-fun call!667200 () (Set Context!15900))

(assert (=> b!7328137 (= e!4387944 (set.union call!667204 call!667200))))

(declare-fun b!7328138 () Bool)

(declare-fun call!667199 () (Set Context!15900))

(assert (=> b!7328138 (= e!4387947 call!667199)))

(declare-fun bm!667196 () Bool)

(declare-fun call!667202 () List!71506)

(assert (=> bm!667196 (= call!667202 call!667203)))

(declare-fun b!7328139 () Bool)

(assert (=> b!7328139 (= e!4387943 e!4387944)))

(assert (=> b!7328139 (= c!1360406 (is-Union!19010 (h!77830 (exprs!8450 ct1!256))))))

(declare-fun b!7328140 () Bool)

(declare-fun e!4387946 () Bool)

(assert (=> b!7328140 (= e!4387946 (nullable!8114 (regOne!38532 (h!77830 (exprs!8450 ct1!256)))))))

(declare-fun bm!667197 () Bool)

(declare-fun call!667201 () (Set Context!15900))

(assert (=> bm!667197 (= call!667201 call!667200)))

(declare-fun b!7328141 () Bool)

(declare-fun c!1360409 () Bool)

(assert (=> b!7328141 (= c!1360409 (is-Star!19010 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328141 (= e!4387947 e!4387948)))

(declare-fun bm!667198 () Bool)

(assert (=> bm!667198 (= call!667199 call!667201)))

(declare-fun b!7328142 () Bool)

(assert (=> b!7328142 (= e!4387948 call!667199)))

(declare-fun b!7328143 () Bool)

(assert (=> b!7328143 (= c!1360408 e!4387946)))

(declare-fun res!2961828 () Bool)

(assert (=> b!7328143 (=> (not res!2961828) (not e!4387946))))

(assert (=> b!7328143 (= res!2961828 (is-Concat!27855 (h!77830 (exprs!8450 ct1!256))))))

(assert (=> b!7328143 (= e!4387944 e!4387945)))

(declare-fun bm!667199 () Bool)

(assert (=> bm!667199 (= call!667200 (derivationStepZipperDown!2841 (ite c!1360406 (regTwo!38533 (h!77830 (exprs!8450 ct1!256))) (ite c!1360408 (regTwo!38532 (h!77830 (exprs!8450 ct1!256))) (ite c!1360407 (regOne!38532 (h!77830 (exprs!8450 ct1!256))) (reg!19339 (h!77830 (exprs!8450 ct1!256)))))) (ite (or c!1360406 c!1360408) lt!2606739 (Context!15901 call!667202)) c!10305))))

(declare-fun b!7328144 () Bool)

(assert (=> b!7328144 (= e!4387943 (set.insert lt!2606739 (as set.empty (Set Context!15900))))))

(declare-fun b!7328145 () Bool)

(assert (=> b!7328145 (= e!4387945 (set.union call!667204 call!667201))))

(assert (= (and d!2275692 c!1360405) b!7328144))

(assert (= (and d!2275692 (not c!1360405)) b!7328139))

(assert (= (and b!7328139 c!1360406) b!7328137))

(assert (= (and b!7328139 (not c!1360406)) b!7328143))

(assert (= (and b!7328143 res!2961828) b!7328140))

(assert (= (and b!7328143 c!1360408) b!7328145))

(assert (= (and b!7328143 (not c!1360408)) b!7328135))

(assert (= (and b!7328135 c!1360407) b!7328138))

(assert (= (and b!7328135 (not c!1360407)) b!7328141))

(assert (= (and b!7328141 c!1360409) b!7328142))

(assert (= (and b!7328141 (not c!1360409)) b!7328136))

(assert (= (or b!7328138 b!7328142) bm!667196))

(assert (= (or b!7328138 b!7328142) bm!667198))

(assert (= (or b!7328145 bm!667198) bm!667197))

(assert (= (or b!7328145 bm!667196) bm!667194))

(assert (= (or b!7328137 bm!667197) bm!667199))

(assert (= (or b!7328137 b!7328145) bm!667195))

(declare-fun m!7994080 () Bool)

(assert (=> b!7328144 m!7994080))

(assert (=> b!7328140 m!7994012))

(declare-fun m!7994082 () Bool)

(assert (=> bm!667194 m!7994082))

(declare-fun m!7994084 () Bool)

(assert (=> bm!667195 m!7994084))

(declare-fun m!7994086 () Bool)

(assert (=> bm!667199 m!7994086))

(assert (=> b!7327973 d!2275692))

(declare-fun d!2275694 () Bool)

(assert (=> d!2275694 (= (tail!14699 (exprs!8450 ct1!256)) (t!385893 (exprs!8450 ct1!256)))))

(assert (=> b!7327973 d!2275694))

(declare-fun d!2275696 () Bool)

(declare-fun res!2961834 () Bool)

(declare-fun e!4387959 () Bool)

(assert (=> d!2275696 (=> res!2961834 e!4387959)))

(assert (=> d!2275696 (= res!2961834 (is-Nil!71382 (exprs!8450 cWitness!35)))))

(assert (=> d!2275696 (= (forall!17859 (exprs!8450 cWitness!35) lambda!454283) e!4387959)))

(declare-fun b!7328161 () Bool)

(declare-fun e!4387960 () Bool)

(assert (=> b!7328161 (= e!4387959 e!4387960)))

(declare-fun res!2961835 () Bool)

(assert (=> b!7328161 (=> (not res!2961835) (not e!4387960))))

(declare-fun dynLambda!29416 (Int Regex!19010) Bool)

(assert (=> b!7328161 (= res!2961835 (dynLambda!29416 lambda!454283 (h!77830 (exprs!8450 cWitness!35))))))

(declare-fun b!7328162 () Bool)

(assert (=> b!7328162 (= e!4387960 (forall!17859 (t!385893 (exprs!8450 cWitness!35)) lambda!454283))))

(assert (= (and d!2275696 (not res!2961834)) b!7328161))

(assert (= (and b!7328161 res!2961835) b!7328162))

(declare-fun b_lambda!283445 () Bool)

(assert (=> (not b_lambda!283445) (not b!7328161)))

(declare-fun m!7994094 () Bool)

(assert (=> b!7328161 m!7994094))

(declare-fun m!7994098 () Bool)

(assert (=> b!7328162 m!7994098))

(assert (=> b!7327978 d!2275696))

(declare-fun b!7328167 () Bool)

(declare-fun e!4387963 () Bool)

(declare-fun tp!2080846 () Bool)

(declare-fun tp!2080847 () Bool)

(assert (=> b!7328167 (= e!4387963 (and tp!2080846 tp!2080847))))

(assert (=> b!7327981 (= tp!2080832 e!4387963)))

(assert (= (and b!7327981 (is-Cons!71382 (exprs!8450 ct2!352))) b!7328167))

(declare-fun b!7328168 () Bool)

(declare-fun e!4387964 () Bool)

(declare-fun tp!2080848 () Bool)

(declare-fun tp!2080849 () Bool)

(assert (=> b!7328168 (= e!4387964 (and tp!2080848 tp!2080849))))

(assert (=> b!7327979 (= tp!2080831 e!4387964)))

(assert (= (and b!7327979 (is-Cons!71382 (exprs!8450 cWitness!35))) b!7328168))

(declare-fun b!7328169 () Bool)

(declare-fun e!4387965 () Bool)

(declare-fun tp!2080850 () Bool)

(declare-fun tp!2080851 () Bool)

(assert (=> b!7328169 (= e!4387965 (and tp!2080850 tp!2080851))))

(assert (=> b!7327977 (= tp!2080830 e!4387965)))

(assert (= (and b!7327977 (is-Cons!71382 (exprs!8450 ct1!256))) b!7328169))

(declare-fun b_lambda!283447 () Bool)

(assert (= b_lambda!283445 (or b!7327974 b_lambda!283447)))

(declare-fun bs!1916943 () Bool)

(declare-fun d!2275700 () Bool)

(assert (= bs!1916943 (and d!2275700 b!7327974)))

(assert (=> bs!1916943 (= (dynLambda!29416 lambda!454283 (h!77830 (exprs!8450 cWitness!35))) (validRegex!9645 (h!77830 (exprs!8450 cWitness!35))))))

(declare-fun m!7994102 () Bool)

(assert (=> bs!1916943 m!7994102))

(assert (=> b!7328161 d!2275700))

(push 1)

(assert (not bm!667199))

(assert (not d!2275652))

(assert (not b_lambda!283447))

(assert (not d!2275688))

(assert (not b!7328096))

(assert (not bm!667194))

(assert (not bm!667184))

(assert (not b!7328028))

(assert (not bm!667175))

(assert (not b!7328140))

(assert (not b!7328168))

(assert (not bm!667189))

(assert (not d!2275670))

(assert (not b!7328055))

(assert (not bm!667170))

(assert (not d!2275674))

(assert (not bm!667185))

(assert (not b!7328162))

(assert (not d!2275672))

(assert (not bs!1916943))

(assert (not b!7328125))

(assert (not d!2275678))

(assert (not d!2275656))

(assert (not b!7328118))

(assert (not b!7328132))

(assert (not d!2275686))

(assert (not b!7328133))

(assert (not b!7328054))

(assert (not d!2275654))

(assert tp_is_empty!48265)

(assert (not b!7328029))

(assert (not b!7328117))

(assert (not bm!667171))

(assert (not bm!667157))

(assert (not d!2275650))

(assert (not bm!667195))

(assert (not b!7328169))

(assert (not d!2275690))

(assert (not b!7328167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

