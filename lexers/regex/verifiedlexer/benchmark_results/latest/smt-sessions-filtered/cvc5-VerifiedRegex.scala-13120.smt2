; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717230 () Bool)

(assert start!717230)

(declare-fun b!7343866 () Bool)

(declare-fun e!4397441 () Bool)

(declare-fun e!4397437 () Bool)

(assert (=> b!7343866 (= e!4397441 e!4397437)))

(declare-fun res!2966445 () Bool)

(assert (=> b!7343866 (=> (not res!2966445) (not e!4397437))))

(declare-datatypes ((C!38530 0))(
  ( (C!38531 (val!29625 Int)) )
))
(declare-datatypes ((Regex!19128 0))(
  ( (ElementMatch!19128 (c!1364168 C!38530)) (Concat!27973 (regOne!38768 Regex!19128) (regTwo!38768 Regex!19128)) (EmptyExpr!19128) (Star!19128 (reg!19457 Regex!19128)) (EmptyLang!19128) (Union!19128 (regOne!38769 Regex!19128) (regTwo!38769 Regex!19128)) )
))
(declare-fun r1!2370 () Regex!19128)

(declare-fun c!10362 () C!38530)

(assert (=> b!7343866 (= res!2966445 (and (or (not (is-ElementMatch!19128 r1!2370)) (not (= c!10362 (c!1364168 r1!2370)))) (is-Union!19128 r1!2370)))))

(declare-datatypes ((List!71624 0))(
  ( (Nil!71500) (Cons!71500 (h!77948 Regex!19128) (t!386019 List!71624)) )
))
(declare-datatypes ((Context!16136 0))(
  ( (Context!16137 (exprs!8568 List!71624)) )
))
(declare-fun lt!2610705 () Context!16136)

(declare-fun lt!2610701 () (Set Context!16136))

(declare-fun derivationStepZipperDown!2954 (Regex!19128 Context!16136 C!38530) (Set Context!16136))

(assert (=> b!7343866 (= lt!2610701 (derivationStepZipperDown!2954 r1!2370 lt!2610705 c!10362))))

(declare-fun ct1!282 () Context!16136)

(declare-fun ct2!378 () Context!16136)

(declare-fun ++!16946 (List!71624 List!71624) List!71624)

(assert (=> b!7343866 (= lt!2610705 (Context!16137 (++!16946 (exprs!8568 ct1!282) (exprs!8568 ct2!378))))))

(declare-fun lambda!455904 () Int)

(declare-datatypes ((Unit!165209 0))(
  ( (Unit!165210) )
))
(declare-fun lt!2610696 () Unit!165209)

(declare-fun lemmaConcatPreservesForall!1803 (List!71624 List!71624 Int) Unit!165209)

(assert (=> b!7343866 (= lt!2610696 (lemmaConcatPreservesForall!1803 (exprs!8568 ct1!282) (exprs!8568 ct2!378) lambda!455904))))

(declare-fun b!7343867 () Bool)

(declare-fun e!4397439 () Bool)

(declare-fun tp_is_empty!48501 () Bool)

(assert (=> b!7343867 (= e!4397439 tp_is_empty!48501)))

(declare-fun b!7343868 () Bool)

(declare-fun e!4397436 () Bool)

(declare-fun tp!2085507 () Bool)

(assert (=> b!7343868 (= e!4397436 tp!2085507)))

(declare-fun b!7343869 () Bool)

(declare-fun tp!2085503 () Bool)

(assert (=> b!7343869 (= e!4397439 tp!2085503)))

(declare-fun b!7343870 () Bool)

(declare-fun res!2966444 () Bool)

(declare-fun e!4397435 () Bool)

(assert (=> b!7343870 (=> (not res!2966444) (not e!4397435))))

(declare-fun cWitness!61 () Context!16136)

(declare-fun lt!2610699 () (Set Context!16136))

(assert (=> b!7343870 (= res!2966444 (not (set.member cWitness!61 lt!2610699)))))

(declare-fun res!2966447 () Bool)

(declare-fun e!4397434 () Bool)

(assert (=> start!717230 (=> (not res!2966447) (not e!4397434))))

(declare-fun validRegex!9724 (Regex!19128) Bool)

(assert (=> start!717230 (= res!2966447 (validRegex!9724 r1!2370))))

(assert (=> start!717230 e!4397434))

(assert (=> start!717230 tp_is_empty!48501))

(declare-fun e!4397438 () Bool)

(declare-fun inv!91161 (Context!16136) Bool)

(assert (=> start!717230 (and (inv!91161 cWitness!61) e!4397438)))

(declare-fun e!4397433 () Bool)

(assert (=> start!717230 (and (inv!91161 ct1!282) e!4397433)))

(assert (=> start!717230 e!4397439))

(assert (=> start!717230 (and (inv!91161 ct2!378) e!4397436)))

(declare-fun b!7343871 () Bool)

(declare-fun e!4397440 () Bool)

(assert (=> b!7343871 (= e!4397435 (not e!4397440))))

(declare-fun res!2966448 () Bool)

(assert (=> b!7343871 (=> res!2966448 e!4397440)))

(declare-fun lt!2610704 () Context!16136)

(assert (=> b!7343871 (= res!2966448 (not (set.member lt!2610704 lt!2610701)))))

(declare-fun lt!2610703 () Unit!165209)

(assert (=> b!7343871 (= lt!2610703 (lemmaConcatPreservesForall!1803 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455904))))

(assert (=> b!7343871 (set.member lt!2610704 (derivationStepZipperDown!2954 (regTwo!38769 r1!2370) lt!2610705 c!10362))))

(assert (=> b!7343871 (= lt!2610704 (Context!16137 (++!16946 (exprs!8568 cWitness!61) (exprs!8568 ct2!378))))))

(declare-fun lt!2610697 () Unit!165209)

(assert (=> b!7343871 (= lt!2610697 (lemmaConcatPreservesForall!1803 (exprs!8568 ct1!282) (exprs!8568 ct2!378) lambda!455904))))

(declare-fun lt!2610706 () Unit!165209)

(assert (=> b!7343871 (= lt!2610706 (lemmaConcatPreservesForall!1803 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455904))))

(declare-fun lt!2610700 () Unit!165209)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!61 (Regex!19128 Context!16136 Context!16136 Context!16136 C!38530) Unit!165209)

(assert (=> b!7343871 (= lt!2610700 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!61 (regTwo!38769 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7343872 () Bool)

(declare-fun tp!2085506 () Bool)

(assert (=> b!7343872 (= e!4397438 tp!2085506)))

(declare-fun b!7343873 () Bool)

(declare-fun forall!17958 (List!71624 Int) Bool)

(assert (=> b!7343873 (= e!4397440 (forall!17958 (exprs!8568 ct1!282) lambda!455904))))

(declare-fun lt!2610698 () Unit!165209)

(assert (=> b!7343873 (= lt!2610698 (lemmaConcatPreservesForall!1803 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455904))))

(declare-fun b!7343874 () Bool)

(assert (=> b!7343874 (= e!4397437 e!4397435)))

(declare-fun res!2966446 () Bool)

(assert (=> b!7343874 (=> (not res!2966446) (not e!4397435))))

(declare-fun lt!2610702 () (Set Context!16136))

(assert (=> b!7343874 (= res!2966446 (= lt!2610702 (set.union lt!2610699 (derivationStepZipperDown!2954 (regTwo!38769 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7343874 (= lt!2610699 (derivationStepZipperDown!2954 (regOne!38769 r1!2370) ct1!282 c!10362))))

(declare-fun b!7343875 () Bool)

(declare-fun tp!2085505 () Bool)

(assert (=> b!7343875 (= e!4397433 tp!2085505)))

(declare-fun b!7343876 () Bool)

(declare-fun tp!2085504 () Bool)

(declare-fun tp!2085509 () Bool)

(assert (=> b!7343876 (= e!4397439 (and tp!2085504 tp!2085509))))

(declare-fun b!7343877 () Bool)

(declare-fun tp!2085508 () Bool)

(declare-fun tp!2085502 () Bool)

(assert (=> b!7343877 (= e!4397439 (and tp!2085508 tp!2085502))))

(declare-fun b!7343878 () Bool)

(assert (=> b!7343878 (= e!4397434 e!4397441)))

(declare-fun res!2966443 () Bool)

(assert (=> b!7343878 (=> (not res!2966443) (not e!4397441))))

(assert (=> b!7343878 (= res!2966443 (set.member cWitness!61 lt!2610702))))

(assert (=> b!7343878 (= lt!2610702 (derivationStepZipperDown!2954 r1!2370 ct1!282 c!10362))))

(assert (= (and start!717230 res!2966447) b!7343878))

(assert (= (and b!7343878 res!2966443) b!7343866))

(assert (= (and b!7343866 res!2966445) b!7343874))

(assert (= (and b!7343874 res!2966446) b!7343870))

(assert (= (and b!7343870 res!2966444) b!7343871))

(assert (= (and b!7343871 (not res!2966448)) b!7343873))

(assert (= start!717230 b!7343872))

(assert (= start!717230 b!7343875))

(assert (= (and start!717230 (is-ElementMatch!19128 r1!2370)) b!7343867))

(assert (= (and start!717230 (is-Concat!27973 r1!2370)) b!7343876))

(assert (= (and start!717230 (is-Star!19128 r1!2370)) b!7343869))

(assert (= (and start!717230 (is-Union!19128 r1!2370)) b!7343877))

(assert (= start!717230 b!7343868))

(declare-fun m!8006794 () Bool)

(assert (=> b!7343873 m!8006794))

(declare-fun m!8006796 () Bool)

(assert (=> b!7343873 m!8006796))

(declare-fun m!8006798 () Bool)

(assert (=> b!7343870 m!8006798))

(declare-fun m!8006800 () Bool)

(assert (=> b!7343871 m!8006800))

(declare-fun m!8006802 () Bool)

(assert (=> b!7343871 m!8006802))

(assert (=> b!7343871 m!8006796))

(declare-fun m!8006804 () Bool)

(assert (=> b!7343871 m!8006804))

(assert (=> b!7343871 m!8006796))

(declare-fun m!8006806 () Bool)

(assert (=> b!7343871 m!8006806))

(declare-fun m!8006808 () Bool)

(assert (=> b!7343871 m!8006808))

(declare-fun m!8006810 () Bool)

(assert (=> b!7343871 m!8006810))

(declare-fun m!8006812 () Bool)

(assert (=> b!7343878 m!8006812))

(declare-fun m!8006814 () Bool)

(assert (=> b!7343878 m!8006814))

(declare-fun m!8006816 () Bool)

(assert (=> b!7343874 m!8006816))

(declare-fun m!8006818 () Bool)

(assert (=> b!7343874 m!8006818))

(declare-fun m!8006820 () Bool)

(assert (=> start!717230 m!8006820))

(declare-fun m!8006822 () Bool)

(assert (=> start!717230 m!8006822))

(declare-fun m!8006824 () Bool)

(assert (=> start!717230 m!8006824))

(declare-fun m!8006826 () Bool)

(assert (=> start!717230 m!8006826))

(declare-fun m!8006828 () Bool)

(assert (=> b!7343866 m!8006828))

(declare-fun m!8006830 () Bool)

(assert (=> b!7343866 m!8006830))

(assert (=> b!7343866 m!8006808))

(push 1)

(assert (not b!7343872))

(assert (not b!7343875))

(assert (not b!7343869))

(assert (not b!7343873))

(assert (not b!7343871))

(assert (not b!7343866))

(assert tp_is_empty!48501)

(assert (not b!7343874))

(assert (not b!7343876))

(assert (not b!7343878))

(assert (not b!7343868))

(assert (not b!7343877))

(assert (not start!717230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7343984 () Bool)

(declare-fun e!4397507 () (Set Context!16136))

(declare-fun e!4397508 () (Set Context!16136))

(assert (=> b!7343984 (= e!4397507 e!4397508)))

(declare-fun c!1364200 () Bool)

(assert (=> b!7343984 (= c!1364200 (is-Union!19128 (regTwo!38769 r1!2370)))))

(declare-fun bm!670753 () Bool)

(declare-fun call!670759 () List!71624)

(declare-fun call!670760 () List!71624)

(assert (=> bm!670753 (= call!670759 call!670760)))

(declare-fun b!7343985 () Bool)

(declare-fun e!4397506 () (Set Context!16136))

(declare-fun call!670763 () (Set Context!16136))

(assert (=> b!7343985 (= e!4397506 call!670763)))

(declare-fun b!7343986 () Bool)

(declare-fun e!4397505 () (Set Context!16136))

(declare-fun call!670762 () (Set Context!16136))

(declare-fun call!670758 () (Set Context!16136))

(assert (=> b!7343986 (= e!4397505 (set.union call!670762 call!670758))))

(declare-fun b!7343987 () Bool)

(declare-fun e!4397509 () (Set Context!16136))

(assert (=> b!7343987 (= e!4397509 (as set.empty (Set Context!16136)))))

(declare-fun bm!670754 () Bool)

(assert (=> bm!670754 (= call!670762 (derivationStepZipperDown!2954 (ite c!1364200 (regTwo!38769 (regTwo!38769 r1!2370)) (regOne!38768 (regTwo!38769 r1!2370))) (ite c!1364200 ct1!282 (Context!16137 call!670760)) c!10362))))

(declare-fun b!7343988 () Bool)

(declare-fun e!4397510 () Bool)

(declare-fun nullable!8222 (Regex!19128) Bool)

(assert (=> b!7343988 (= e!4397510 (nullable!8222 (regOne!38768 (regTwo!38769 r1!2370))))))

(declare-fun b!7343989 () Bool)

(declare-fun c!1364204 () Bool)

(assert (=> b!7343989 (= c!1364204 e!4397510)))

(declare-fun res!2966473 () Bool)

(assert (=> b!7343989 (=> (not res!2966473) (not e!4397510))))

(assert (=> b!7343989 (= res!2966473 (is-Concat!27973 (regTwo!38769 r1!2370)))))

(assert (=> b!7343989 (= e!4397508 e!4397505)))

(declare-fun b!7343990 () Bool)

(declare-fun call!670761 () (Set Context!16136))

(assert (=> b!7343990 (= e!4397508 (set.union call!670761 call!670762))))

(declare-fun bm!670756 () Bool)

(assert (=> bm!670756 (= call!670763 call!670758)))

(declare-fun b!7343991 () Bool)

(assert (=> b!7343991 (= e!4397509 call!670763)))

(declare-fun c!1364201 () Bool)

(declare-fun bm!670757 () Bool)

(declare-fun $colon$colon!3128 (List!71624 Regex!19128) List!71624)

(assert (=> bm!670757 (= call!670760 ($colon$colon!3128 (exprs!8568 ct1!282) (ite (or c!1364204 c!1364201) (regTwo!38768 (regTwo!38769 r1!2370)) (regTwo!38769 r1!2370))))))

(declare-fun b!7343992 () Bool)

(assert (=> b!7343992 (= e!4397507 (set.insert ct1!282 (as set.empty (Set Context!16136))))))

(declare-fun b!7343993 () Bool)

(declare-fun c!1364202 () Bool)

(assert (=> b!7343993 (= c!1364202 (is-Star!19128 (regTwo!38769 r1!2370)))))

(assert (=> b!7343993 (= e!4397506 e!4397509)))

(declare-fun bm!670758 () Bool)

(assert (=> bm!670758 (= call!670758 call!670761)))

(declare-fun b!7343994 () Bool)

(assert (=> b!7343994 (= e!4397505 e!4397506)))

(assert (=> b!7343994 (= c!1364201 (is-Concat!27973 (regTwo!38769 r1!2370)))))

(declare-fun bm!670755 () Bool)

(assert (=> bm!670755 (= call!670761 (derivationStepZipperDown!2954 (ite c!1364200 (regOne!38769 (regTwo!38769 r1!2370)) (ite c!1364204 (regTwo!38768 (regTwo!38769 r1!2370)) (ite c!1364201 (regOne!38768 (regTwo!38769 r1!2370)) (reg!19457 (regTwo!38769 r1!2370))))) (ite (or c!1364200 c!1364204) ct1!282 (Context!16137 call!670759)) c!10362))))

(declare-fun d!2279269 () Bool)

(declare-fun c!1364203 () Bool)

(assert (=> d!2279269 (= c!1364203 (and (is-ElementMatch!19128 (regTwo!38769 r1!2370)) (= (c!1364168 (regTwo!38769 r1!2370)) c!10362)))))

(assert (=> d!2279269 (= (derivationStepZipperDown!2954 (regTwo!38769 r1!2370) ct1!282 c!10362) e!4397507)))

(assert (= (and d!2279269 c!1364203) b!7343992))

(assert (= (and d!2279269 (not c!1364203)) b!7343984))

(assert (= (and b!7343984 c!1364200) b!7343990))

(assert (= (and b!7343984 (not c!1364200)) b!7343989))

(assert (= (and b!7343989 res!2966473) b!7343988))

(assert (= (and b!7343989 c!1364204) b!7343986))

(assert (= (and b!7343989 (not c!1364204)) b!7343994))

(assert (= (and b!7343994 c!1364201) b!7343985))

(assert (= (and b!7343994 (not c!1364201)) b!7343993))

(assert (= (and b!7343993 c!1364202) b!7343991))

(assert (= (and b!7343993 (not c!1364202)) b!7343987))

(assert (= (or b!7343985 b!7343991) bm!670753))

(assert (= (or b!7343985 b!7343991) bm!670756))

(assert (= (or b!7343986 bm!670756) bm!670758))

(assert (= (or b!7343986 bm!670753) bm!670757))

(assert (= (or b!7343990 b!7343986) bm!670754))

(assert (= (or b!7343990 bm!670758) bm!670755))

(declare-fun m!8006888 () Bool)

(assert (=> b!7343992 m!8006888))

(declare-fun m!8006890 () Bool)

(assert (=> bm!670757 m!8006890))

(declare-fun m!8006892 () Bool)

(assert (=> bm!670754 m!8006892))

(declare-fun m!8006894 () Bool)

(assert (=> bm!670755 m!8006894))

(declare-fun m!8006896 () Bool)

(assert (=> b!7343988 m!8006896))

(assert (=> b!7343874 d!2279269))

(declare-fun b!7343999 () Bool)

(declare-fun e!4397517 () (Set Context!16136))

(declare-fun e!4397518 () (Set Context!16136))

(assert (=> b!7343999 (= e!4397517 e!4397518)))

(declare-fun c!1364205 () Bool)

(assert (=> b!7343999 (= c!1364205 (is-Union!19128 (regOne!38769 r1!2370)))))

(declare-fun bm!670759 () Bool)

(declare-fun call!670765 () List!71624)

(declare-fun call!670766 () List!71624)

(assert (=> bm!670759 (= call!670765 call!670766)))

(declare-fun b!7344000 () Bool)

(declare-fun e!4397516 () (Set Context!16136))

(declare-fun call!670769 () (Set Context!16136))

(assert (=> b!7344000 (= e!4397516 call!670769)))

(declare-fun b!7344001 () Bool)

(declare-fun e!4397515 () (Set Context!16136))

(declare-fun call!670768 () (Set Context!16136))

(declare-fun call!670764 () (Set Context!16136))

(assert (=> b!7344001 (= e!4397515 (set.union call!670768 call!670764))))

(declare-fun b!7344002 () Bool)

(declare-fun e!4397519 () (Set Context!16136))

(assert (=> b!7344002 (= e!4397519 (as set.empty (Set Context!16136)))))

(declare-fun bm!670760 () Bool)

(assert (=> bm!670760 (= call!670768 (derivationStepZipperDown!2954 (ite c!1364205 (regTwo!38769 (regOne!38769 r1!2370)) (regOne!38768 (regOne!38769 r1!2370))) (ite c!1364205 ct1!282 (Context!16137 call!670766)) c!10362))))

(declare-fun b!7344003 () Bool)

(declare-fun e!4397520 () Bool)

(assert (=> b!7344003 (= e!4397520 (nullable!8222 (regOne!38768 (regOne!38769 r1!2370))))))

(declare-fun b!7344004 () Bool)

(declare-fun c!1364209 () Bool)

(assert (=> b!7344004 (= c!1364209 e!4397520)))

(declare-fun res!2966478 () Bool)

(assert (=> b!7344004 (=> (not res!2966478) (not e!4397520))))

(assert (=> b!7344004 (= res!2966478 (is-Concat!27973 (regOne!38769 r1!2370)))))

(assert (=> b!7344004 (= e!4397518 e!4397515)))

(declare-fun b!7344005 () Bool)

(declare-fun call!670767 () (Set Context!16136))

(assert (=> b!7344005 (= e!4397518 (set.union call!670767 call!670768))))

(declare-fun bm!670762 () Bool)

(assert (=> bm!670762 (= call!670769 call!670764)))

(declare-fun b!7344006 () Bool)

(assert (=> b!7344006 (= e!4397519 call!670769)))

(declare-fun c!1364206 () Bool)

(declare-fun bm!670763 () Bool)

(assert (=> bm!670763 (= call!670766 ($colon$colon!3128 (exprs!8568 ct1!282) (ite (or c!1364209 c!1364206) (regTwo!38768 (regOne!38769 r1!2370)) (regOne!38769 r1!2370))))))

(declare-fun b!7344007 () Bool)

(assert (=> b!7344007 (= e!4397517 (set.insert ct1!282 (as set.empty (Set Context!16136))))))

(declare-fun b!7344008 () Bool)

(declare-fun c!1364207 () Bool)

(assert (=> b!7344008 (= c!1364207 (is-Star!19128 (regOne!38769 r1!2370)))))

(assert (=> b!7344008 (= e!4397516 e!4397519)))

(declare-fun bm!670764 () Bool)

(assert (=> bm!670764 (= call!670764 call!670767)))

(declare-fun b!7344009 () Bool)

(assert (=> b!7344009 (= e!4397515 e!4397516)))

(assert (=> b!7344009 (= c!1364206 (is-Concat!27973 (regOne!38769 r1!2370)))))

(declare-fun bm!670761 () Bool)

(assert (=> bm!670761 (= call!670767 (derivationStepZipperDown!2954 (ite c!1364205 (regOne!38769 (regOne!38769 r1!2370)) (ite c!1364209 (regTwo!38768 (regOne!38769 r1!2370)) (ite c!1364206 (regOne!38768 (regOne!38769 r1!2370)) (reg!19457 (regOne!38769 r1!2370))))) (ite (or c!1364205 c!1364209) ct1!282 (Context!16137 call!670765)) c!10362))))

(declare-fun d!2279275 () Bool)

(declare-fun c!1364208 () Bool)

(assert (=> d!2279275 (= c!1364208 (and (is-ElementMatch!19128 (regOne!38769 r1!2370)) (= (c!1364168 (regOne!38769 r1!2370)) c!10362)))))

(assert (=> d!2279275 (= (derivationStepZipperDown!2954 (regOne!38769 r1!2370) ct1!282 c!10362) e!4397517)))

(assert (= (and d!2279275 c!1364208) b!7344007))

(assert (= (and d!2279275 (not c!1364208)) b!7343999))

(assert (= (and b!7343999 c!1364205) b!7344005))

(assert (= (and b!7343999 (not c!1364205)) b!7344004))

(assert (= (and b!7344004 res!2966478) b!7344003))

(assert (= (and b!7344004 c!1364209) b!7344001))

(assert (= (and b!7344004 (not c!1364209)) b!7344009))

(assert (= (and b!7344009 c!1364206) b!7344000))

(assert (= (and b!7344009 (not c!1364206)) b!7344008))

(assert (= (and b!7344008 c!1364207) b!7344006))

(assert (= (and b!7344008 (not c!1364207)) b!7344002))

(assert (= (or b!7344000 b!7344006) bm!670759))

(assert (= (or b!7344000 b!7344006) bm!670762))

(assert (= (or b!7344001 bm!670762) bm!670764))

(assert (= (or b!7344001 bm!670759) bm!670763))

(assert (= (or b!7344005 b!7344001) bm!670760))

(assert (= (or b!7344005 bm!670764) bm!670761))

(assert (=> b!7344007 m!8006888))

(declare-fun m!8006902 () Bool)

(assert (=> bm!670763 m!8006902))

(declare-fun m!8006904 () Bool)

(assert (=> bm!670760 m!8006904))

(declare-fun m!8006906 () Bool)

(assert (=> bm!670761 m!8006906))

(declare-fun m!8006908 () Bool)

(assert (=> b!7344003 m!8006908))

(assert (=> b!7343874 d!2279275))

(declare-fun d!2279279 () Bool)

(declare-fun res!2966485 () Bool)

(declare-fun e!4397527 () Bool)

(assert (=> d!2279279 (=> res!2966485 e!4397527)))

(assert (=> d!2279279 (= res!2966485 (is-Nil!71500 (exprs!8568 ct1!282)))))

(assert (=> d!2279279 (= (forall!17958 (exprs!8568 ct1!282) lambda!455904) e!4397527)))

(declare-fun b!7344016 () Bool)

(declare-fun e!4397528 () Bool)

(assert (=> b!7344016 (= e!4397527 e!4397528)))

(declare-fun res!2966486 () Bool)

(assert (=> b!7344016 (=> (not res!2966486) (not e!4397528))))

(declare-fun dynLambda!29465 (Int Regex!19128) Bool)

(assert (=> b!7344016 (= res!2966486 (dynLambda!29465 lambda!455904 (h!77948 (exprs!8568 ct1!282))))))

(declare-fun b!7344017 () Bool)

(assert (=> b!7344017 (= e!4397528 (forall!17958 (t!386019 (exprs!8568 ct1!282)) lambda!455904))))

(assert (= (and d!2279279 (not res!2966485)) b!7344016))

(assert (= (and b!7344016 res!2966486) b!7344017))

(declare-fun b_lambda!283957 () Bool)

(assert (=> (not b_lambda!283957) (not b!7344016)))

(declare-fun m!8006910 () Bool)

(assert (=> b!7344016 m!8006910))

(declare-fun m!8006912 () Bool)

(assert (=> b!7344017 m!8006912))

(assert (=> b!7343873 d!2279279))

(declare-fun d!2279281 () Bool)

(assert (=> d!2279281 (forall!17958 (++!16946 (exprs!8568 cWitness!61) (exprs!8568 ct2!378)) lambda!455904)))

(declare-fun lt!2610745 () Unit!165209)

(declare-fun choose!57124 (List!71624 List!71624 Int) Unit!165209)

(assert (=> d!2279281 (= lt!2610745 (choose!57124 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455904))))

(assert (=> d!2279281 (forall!17958 (exprs!8568 cWitness!61) lambda!455904)))

(assert (=> d!2279281 (= (lemmaConcatPreservesForall!1803 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455904) lt!2610745)))

(declare-fun bs!1918681 () Bool)

(assert (= bs!1918681 d!2279281))

(assert (=> bs!1918681 m!8006804))

(assert (=> bs!1918681 m!8006804))

(declare-fun m!8006920 () Bool)

(assert (=> bs!1918681 m!8006920))

(declare-fun m!8006922 () Bool)

(assert (=> bs!1918681 m!8006922))

(declare-fun m!8006924 () Bool)

(assert (=> bs!1918681 m!8006924))

(assert (=> b!7343873 d!2279281))

(declare-fun bm!670771 () Bool)

(declare-fun call!670776 () Bool)

(declare-fun call!670778 () Bool)

(assert (=> bm!670771 (= call!670776 call!670778)))

(declare-fun b!7344036 () Bool)

(declare-fun e!4397547 () Bool)

(declare-fun e!4397544 () Bool)

(assert (=> b!7344036 (= e!4397547 e!4397544)))

(declare-fun c!1364216 () Bool)

(assert (=> b!7344036 (= c!1364216 (is-Star!19128 r1!2370))))

(declare-fun b!7344037 () Bool)

(declare-fun res!2966497 () Bool)

(declare-fun e!4397548 () Bool)

(assert (=> b!7344037 (=> res!2966497 e!4397548)))

(assert (=> b!7344037 (= res!2966497 (not (is-Concat!27973 r1!2370)))))

(declare-fun e!4397545 () Bool)

(assert (=> b!7344037 (= e!4397545 e!4397548)))

(declare-fun b!7344038 () Bool)

(declare-fun e!4397549 () Bool)

(assert (=> b!7344038 (= e!4397544 e!4397549)))

(declare-fun res!2966501 () Bool)

(assert (=> b!7344038 (= res!2966501 (not (nullable!8222 (reg!19457 r1!2370))))))

(assert (=> b!7344038 (=> (not res!2966501) (not e!4397549))))

(declare-fun b!7344039 () Bool)

(declare-fun e!4397546 () Bool)

(declare-fun call!670777 () Bool)

(assert (=> b!7344039 (= e!4397546 call!670777)))

(declare-fun b!7344040 () Bool)

(assert (=> b!7344040 (= e!4397549 call!670778)))

(declare-fun b!7344041 () Bool)

(declare-fun e!4397543 () Bool)

(assert (=> b!7344041 (= e!4397543 call!670776)))

(declare-fun d!2279285 () Bool)

(declare-fun res!2966500 () Bool)

(assert (=> d!2279285 (=> res!2966500 e!4397547)))

(assert (=> d!2279285 (= res!2966500 (is-ElementMatch!19128 r1!2370))))

(assert (=> d!2279285 (= (validRegex!9724 r1!2370) e!4397547)))

(declare-fun b!7344042 () Bool)

(assert (=> b!7344042 (= e!4397544 e!4397545)))

(declare-fun c!1364215 () Bool)

(assert (=> b!7344042 (= c!1364215 (is-Union!19128 r1!2370))))

(declare-fun bm!670772 () Bool)

(assert (=> bm!670772 (= call!670778 (validRegex!9724 (ite c!1364216 (reg!19457 r1!2370) (ite c!1364215 (regOne!38769 r1!2370) (regTwo!38768 r1!2370)))))))

(declare-fun b!7344043 () Bool)

(assert (=> b!7344043 (= e!4397548 e!4397543)))

(declare-fun res!2966498 () Bool)

(assert (=> b!7344043 (=> (not res!2966498) (not e!4397543))))

(assert (=> b!7344043 (= res!2966498 call!670777)))

(declare-fun bm!670773 () Bool)

(assert (=> bm!670773 (= call!670777 (validRegex!9724 (ite c!1364215 (regTwo!38769 r1!2370) (regOne!38768 r1!2370))))))

(declare-fun b!7344044 () Bool)

(declare-fun res!2966499 () Bool)

(assert (=> b!7344044 (=> (not res!2966499) (not e!4397546))))

(assert (=> b!7344044 (= res!2966499 call!670776)))

(assert (=> b!7344044 (= e!4397545 e!4397546)))

(assert (= (and d!2279285 (not res!2966500)) b!7344036))

(assert (= (and b!7344036 c!1364216) b!7344038))

(assert (= (and b!7344036 (not c!1364216)) b!7344042))

(assert (= (and b!7344038 res!2966501) b!7344040))

(assert (= (and b!7344042 c!1364215) b!7344044))

(assert (= (and b!7344042 (not c!1364215)) b!7344037))

(assert (= (and b!7344044 res!2966499) b!7344039))

(assert (= (and b!7344037 (not res!2966497)) b!7344043))

(assert (= (and b!7344043 res!2966498) b!7344041))

(assert (= (or b!7344044 b!7344041) bm!670771))

(assert (= (or b!7344039 b!7344043) bm!670773))

(assert (= (or b!7344040 bm!670771) bm!670772))

(declare-fun m!8006926 () Bool)

(assert (=> b!7344038 m!8006926))

(declare-fun m!8006930 () Bool)

(assert (=> bm!670772 m!8006930))

(declare-fun m!8006932 () Bool)

(assert (=> bm!670773 m!8006932))

(assert (=> start!717230 d!2279285))

(declare-fun bs!1918684 () Bool)

(declare-fun d!2279287 () Bool)

(assert (= bs!1918684 (and d!2279287 b!7343866)))

(declare-fun lambda!455925 () Int)

(assert (=> bs!1918684 (= lambda!455925 lambda!455904)))

(assert (=> d!2279287 (= (inv!91161 cWitness!61) (forall!17958 (exprs!8568 cWitness!61) lambda!455925))))

(declare-fun bs!1918685 () Bool)

(assert (= bs!1918685 d!2279287))

(declare-fun m!8006944 () Bool)

(assert (=> bs!1918685 m!8006944))

(assert (=> start!717230 d!2279287))

(declare-fun bs!1918686 () Bool)

(declare-fun d!2279291 () Bool)

(assert (= bs!1918686 (and d!2279291 b!7343866)))

(declare-fun lambda!455926 () Int)

(assert (=> bs!1918686 (= lambda!455926 lambda!455904)))

(declare-fun bs!1918687 () Bool)

(assert (= bs!1918687 (and d!2279291 d!2279287)))

(assert (=> bs!1918687 (= lambda!455926 lambda!455925)))

(assert (=> d!2279291 (= (inv!91161 ct1!282) (forall!17958 (exprs!8568 ct1!282) lambda!455926))))

(declare-fun bs!1918688 () Bool)

(assert (= bs!1918688 d!2279291))

(declare-fun m!8006946 () Bool)

(assert (=> bs!1918688 m!8006946))

(assert (=> start!717230 d!2279291))

(declare-fun bs!1918689 () Bool)

(declare-fun d!2279293 () Bool)

(assert (= bs!1918689 (and d!2279293 b!7343866)))

(declare-fun lambda!455927 () Int)

(assert (=> bs!1918689 (= lambda!455927 lambda!455904)))

(declare-fun bs!1918690 () Bool)

(assert (= bs!1918690 (and d!2279293 d!2279287)))

(assert (=> bs!1918690 (= lambda!455927 lambda!455925)))

(declare-fun bs!1918691 () Bool)

(assert (= bs!1918691 (and d!2279293 d!2279291)))

(assert (=> bs!1918691 (= lambda!455927 lambda!455926)))

(assert (=> d!2279293 (= (inv!91161 ct2!378) (forall!17958 (exprs!8568 ct2!378) lambda!455927))))

(declare-fun bs!1918692 () Bool)

(assert (= bs!1918692 d!2279293))

(declare-fun m!8006948 () Bool)

(assert (=> bs!1918692 m!8006948))

(assert (=> start!717230 d!2279293))

(declare-fun b!7344045 () Bool)

(declare-fun e!4397552 () (Set Context!16136))

(declare-fun e!4397553 () (Set Context!16136))

(assert (=> b!7344045 (= e!4397552 e!4397553)))

(declare-fun c!1364217 () Bool)

(assert (=> b!7344045 (= c!1364217 (is-Union!19128 r1!2370))))

(declare-fun bm!670774 () Bool)

(declare-fun call!670780 () List!71624)

(declare-fun call!670781 () List!71624)

(assert (=> bm!670774 (= call!670780 call!670781)))

(declare-fun b!7344046 () Bool)

(declare-fun e!4397551 () (Set Context!16136))

(declare-fun call!670784 () (Set Context!16136))

(assert (=> b!7344046 (= e!4397551 call!670784)))

(declare-fun b!7344047 () Bool)

(declare-fun e!4397550 () (Set Context!16136))

(declare-fun call!670783 () (Set Context!16136))

(declare-fun call!670779 () (Set Context!16136))

(assert (=> b!7344047 (= e!4397550 (set.union call!670783 call!670779))))

(declare-fun b!7344048 () Bool)

(declare-fun e!4397554 () (Set Context!16136))

(assert (=> b!7344048 (= e!4397554 (as set.empty (Set Context!16136)))))

(declare-fun bm!670775 () Bool)

(assert (=> bm!670775 (= call!670783 (derivationStepZipperDown!2954 (ite c!1364217 (regTwo!38769 r1!2370) (regOne!38768 r1!2370)) (ite c!1364217 ct1!282 (Context!16137 call!670781)) c!10362))))

(declare-fun b!7344049 () Bool)

(declare-fun e!4397555 () Bool)

(assert (=> b!7344049 (= e!4397555 (nullable!8222 (regOne!38768 r1!2370)))))

(declare-fun b!7344050 () Bool)

(declare-fun c!1364221 () Bool)

(assert (=> b!7344050 (= c!1364221 e!4397555)))

(declare-fun res!2966502 () Bool)

(assert (=> b!7344050 (=> (not res!2966502) (not e!4397555))))

(assert (=> b!7344050 (= res!2966502 (is-Concat!27973 r1!2370))))

(assert (=> b!7344050 (= e!4397553 e!4397550)))

(declare-fun b!7344051 () Bool)

(declare-fun call!670782 () (Set Context!16136))

(assert (=> b!7344051 (= e!4397553 (set.union call!670782 call!670783))))

(declare-fun bm!670777 () Bool)

(assert (=> bm!670777 (= call!670784 call!670779)))

(declare-fun b!7344052 () Bool)

(assert (=> b!7344052 (= e!4397554 call!670784)))

(declare-fun bm!670778 () Bool)

(declare-fun c!1364218 () Bool)

(assert (=> bm!670778 (= call!670781 ($colon$colon!3128 (exprs!8568 ct1!282) (ite (or c!1364221 c!1364218) (regTwo!38768 r1!2370) r1!2370)))))

(declare-fun b!7344053 () Bool)

(assert (=> b!7344053 (= e!4397552 (set.insert ct1!282 (as set.empty (Set Context!16136))))))

(declare-fun b!7344054 () Bool)

(declare-fun c!1364219 () Bool)

(assert (=> b!7344054 (= c!1364219 (is-Star!19128 r1!2370))))

(assert (=> b!7344054 (= e!4397551 e!4397554)))

(declare-fun bm!670779 () Bool)

(assert (=> bm!670779 (= call!670779 call!670782)))

(declare-fun b!7344055 () Bool)

(assert (=> b!7344055 (= e!4397550 e!4397551)))

(assert (=> b!7344055 (= c!1364218 (is-Concat!27973 r1!2370))))

(declare-fun bm!670776 () Bool)

(assert (=> bm!670776 (= call!670782 (derivationStepZipperDown!2954 (ite c!1364217 (regOne!38769 r1!2370) (ite c!1364221 (regTwo!38768 r1!2370) (ite c!1364218 (regOne!38768 r1!2370) (reg!19457 r1!2370)))) (ite (or c!1364217 c!1364221) ct1!282 (Context!16137 call!670780)) c!10362))))

(declare-fun d!2279295 () Bool)

(declare-fun c!1364220 () Bool)

(assert (=> d!2279295 (= c!1364220 (and (is-ElementMatch!19128 r1!2370) (= (c!1364168 r1!2370) c!10362)))))

(assert (=> d!2279295 (= (derivationStepZipperDown!2954 r1!2370 ct1!282 c!10362) e!4397552)))

(assert (= (and d!2279295 c!1364220) b!7344053))

(assert (= (and d!2279295 (not c!1364220)) b!7344045))

(assert (= (and b!7344045 c!1364217) b!7344051))

(assert (= (and b!7344045 (not c!1364217)) b!7344050))

(assert (= (and b!7344050 res!2966502) b!7344049))

(assert (= (and b!7344050 c!1364221) b!7344047))

(assert (= (and b!7344050 (not c!1364221)) b!7344055))

(assert (= (and b!7344055 c!1364218) b!7344046))

(assert (= (and b!7344055 (not c!1364218)) b!7344054))

(assert (= (and b!7344054 c!1364219) b!7344052))

(assert (= (and b!7344054 (not c!1364219)) b!7344048))

(assert (= (or b!7344046 b!7344052) bm!670774))

(assert (= (or b!7344046 b!7344052) bm!670777))

(assert (= (or b!7344047 bm!670777) bm!670779))

(assert (= (or b!7344047 bm!670774) bm!670778))

(assert (= (or b!7344051 b!7344047) bm!670775))

(assert (= (or b!7344051 bm!670779) bm!670776))

(assert (=> b!7344053 m!8006888))

(declare-fun m!8006950 () Bool)

(assert (=> bm!670778 m!8006950))

(declare-fun m!8006952 () Bool)

(assert (=> bm!670775 m!8006952))

(declare-fun m!8006954 () Bool)

(assert (=> bm!670776 m!8006954))

(declare-fun m!8006956 () Bool)

(assert (=> b!7344049 m!8006956))

(assert (=> b!7343878 d!2279295))

(declare-fun b!7344064 () Bool)

(declare-fun e!4397562 () (Set Context!16136))

(declare-fun e!4397563 () (Set Context!16136))

(assert (=> b!7344064 (= e!4397562 e!4397563)))

(declare-fun c!1364224 () Bool)

(assert (=> b!7344064 (= c!1364224 (is-Union!19128 (regTwo!38769 r1!2370)))))

(declare-fun bm!670780 () Bool)

(declare-fun call!670786 () List!71624)

(declare-fun call!670787 () List!71624)

(assert (=> bm!670780 (= call!670786 call!670787)))

(declare-fun b!7344065 () Bool)

(declare-fun e!4397561 () (Set Context!16136))

(declare-fun call!670790 () (Set Context!16136))

(assert (=> b!7344065 (= e!4397561 call!670790)))

(declare-fun b!7344066 () Bool)

(declare-fun e!4397560 () (Set Context!16136))

(declare-fun call!670789 () (Set Context!16136))

(declare-fun call!670785 () (Set Context!16136))

(assert (=> b!7344066 (= e!4397560 (set.union call!670789 call!670785))))

(declare-fun b!7344067 () Bool)

(declare-fun e!4397564 () (Set Context!16136))

(assert (=> b!7344067 (= e!4397564 (as set.empty (Set Context!16136)))))

(declare-fun bm!670781 () Bool)

(assert (=> bm!670781 (= call!670789 (derivationStepZipperDown!2954 (ite c!1364224 (regTwo!38769 (regTwo!38769 r1!2370)) (regOne!38768 (regTwo!38769 r1!2370))) (ite c!1364224 lt!2610705 (Context!16137 call!670787)) c!10362))))

(declare-fun b!7344068 () Bool)

(declare-fun e!4397565 () Bool)

(assert (=> b!7344068 (= e!4397565 (nullable!8222 (regOne!38768 (regTwo!38769 r1!2370))))))

(declare-fun b!7344069 () Bool)

(declare-fun c!1364228 () Bool)

(assert (=> b!7344069 (= c!1364228 e!4397565)))

(declare-fun res!2966507 () Bool)

(assert (=> b!7344069 (=> (not res!2966507) (not e!4397565))))

(assert (=> b!7344069 (= res!2966507 (is-Concat!27973 (regTwo!38769 r1!2370)))))

(assert (=> b!7344069 (= e!4397563 e!4397560)))

(declare-fun b!7344070 () Bool)

(declare-fun call!670788 () (Set Context!16136))

(assert (=> b!7344070 (= e!4397563 (set.union call!670788 call!670789))))

(declare-fun bm!670783 () Bool)

(assert (=> bm!670783 (= call!670790 call!670785)))

(declare-fun b!7344071 () Bool)

(assert (=> b!7344071 (= e!4397564 call!670790)))

(declare-fun bm!670784 () Bool)

(declare-fun c!1364225 () Bool)

(assert (=> bm!670784 (= call!670787 ($colon$colon!3128 (exprs!8568 lt!2610705) (ite (or c!1364228 c!1364225) (regTwo!38768 (regTwo!38769 r1!2370)) (regTwo!38769 r1!2370))))))

(declare-fun b!7344072 () Bool)

(assert (=> b!7344072 (= e!4397562 (set.insert lt!2610705 (as set.empty (Set Context!16136))))))

(declare-fun b!7344073 () Bool)

(declare-fun c!1364226 () Bool)

(assert (=> b!7344073 (= c!1364226 (is-Star!19128 (regTwo!38769 r1!2370)))))

(assert (=> b!7344073 (= e!4397561 e!4397564)))

(declare-fun bm!670785 () Bool)

(assert (=> bm!670785 (= call!670785 call!670788)))

(declare-fun b!7344074 () Bool)

(assert (=> b!7344074 (= e!4397560 e!4397561)))

(assert (=> b!7344074 (= c!1364225 (is-Concat!27973 (regTwo!38769 r1!2370)))))

(declare-fun bm!670782 () Bool)

(assert (=> bm!670782 (= call!670788 (derivationStepZipperDown!2954 (ite c!1364224 (regOne!38769 (regTwo!38769 r1!2370)) (ite c!1364228 (regTwo!38768 (regTwo!38769 r1!2370)) (ite c!1364225 (regOne!38768 (regTwo!38769 r1!2370)) (reg!19457 (regTwo!38769 r1!2370))))) (ite (or c!1364224 c!1364228) lt!2610705 (Context!16137 call!670786)) c!10362))))

(declare-fun d!2279297 () Bool)

(declare-fun c!1364227 () Bool)

(assert (=> d!2279297 (= c!1364227 (and (is-ElementMatch!19128 (regTwo!38769 r1!2370)) (= (c!1364168 (regTwo!38769 r1!2370)) c!10362)))))

(assert (=> d!2279297 (= (derivationStepZipperDown!2954 (regTwo!38769 r1!2370) lt!2610705 c!10362) e!4397562)))

(assert (= (and d!2279297 c!1364227) b!7344072))

(assert (= (and d!2279297 (not c!1364227)) b!7344064))

(assert (= (and b!7344064 c!1364224) b!7344070))

(assert (= (and b!7344064 (not c!1364224)) b!7344069))

(assert (= (and b!7344069 res!2966507) b!7344068))

(assert (= (and b!7344069 c!1364228) b!7344066))

(assert (= (and b!7344069 (not c!1364228)) b!7344074))

(assert (= (and b!7344074 c!1364225) b!7344065))

(assert (= (and b!7344074 (not c!1364225)) b!7344073))

(assert (= (and b!7344073 c!1364226) b!7344071))

(assert (= (and b!7344073 (not c!1364226)) b!7344067))

(assert (= (or b!7344065 b!7344071) bm!670780))

(assert (= (or b!7344065 b!7344071) bm!670783))

(assert (= (or b!7344066 bm!670783) bm!670785))

(assert (= (or b!7344066 bm!670780) bm!670784))

(assert (= (or b!7344070 b!7344066) bm!670781))

(assert (= (or b!7344070 bm!670785) bm!670782))

(declare-fun m!8006958 () Bool)

(assert (=> b!7344072 m!8006958))

(declare-fun m!8006960 () Bool)

(assert (=> bm!670784 m!8006960))

(declare-fun m!8006962 () Bool)

(assert (=> bm!670781 m!8006962))

(declare-fun m!8006964 () Bool)

(assert (=> bm!670782 m!8006964))

(assert (=> b!7344068 m!8006896))

(assert (=> b!7343871 d!2279297))

(declare-fun bs!1918694 () Bool)

(declare-fun d!2279299 () Bool)

(assert (= bs!1918694 (and d!2279299 b!7343866)))

(declare-fun lambda!455932 () Int)

(assert (=> bs!1918694 (= lambda!455932 lambda!455904)))

(declare-fun bs!1918695 () Bool)

(assert (= bs!1918695 (and d!2279299 d!2279287)))

(assert (=> bs!1918695 (= lambda!455932 lambda!455925)))

(declare-fun bs!1918696 () Bool)

(assert (= bs!1918696 (and d!2279299 d!2279291)))

(assert (=> bs!1918696 (= lambda!455932 lambda!455926)))

(declare-fun bs!1918697 () Bool)

(assert (= bs!1918697 (and d!2279299 d!2279293)))

(assert (=> bs!1918697 (= lambda!455932 lambda!455927)))

(assert (=> d!2279299 (set.member (Context!16137 (++!16946 (exprs!8568 cWitness!61) (exprs!8568 ct2!378))) (derivationStepZipperDown!2954 (regTwo!38769 r1!2370) (Context!16137 (++!16946 (exprs!8568 ct1!282) (exprs!8568 ct2!378))) c!10362))))

(declare-fun lt!2610767 () Unit!165209)

(assert (=> d!2279299 (= lt!2610767 (lemmaConcatPreservesForall!1803 (exprs!8568 ct1!282) (exprs!8568 ct2!378) lambda!455932))))

(declare-fun lt!2610766 () Unit!165209)

(assert (=> d!2279299 (= lt!2610766 (lemmaConcatPreservesForall!1803 (exprs!8568 cWitness!61) (exprs!8568 ct2!378) lambda!455932))))

(declare-fun lt!2610765 () Unit!165209)

(declare-fun choose!57127 (Regex!19128 Context!16136 Context!16136 Context!16136 C!38530) Unit!165209)

(assert (=> d!2279299 (= lt!2610765 (choose!57127 (regTwo!38769 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279299 (validRegex!9724 (regTwo!38769 r1!2370))))

(assert (=> d!2279299 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!61 (regTwo!38769 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610765)))

(declare-fun bs!1918698 () Bool)

(assert (= bs!1918698 d!2279299))

(assert (=> bs!1918698 m!8006830))

(declare-fun m!8006992 () Bool)

(assert (=> bs!1918698 m!8006992))

(declare-fun m!8006996 () Bool)

(assert (=> bs!1918698 m!8006996))

(declare-fun m!8007000 () Bool)

(assert (=> bs!1918698 m!8007000))

(assert (=> bs!1918698 m!8006804))

(declare-fun m!8007004 () Bool)

(assert (=> bs!1918698 m!8007004))

(declare-fun m!8007006 () Bool)

(assert (=> bs!1918698 m!8007006))

(declare-fun m!8007008 () Bool)

(assert (=> bs!1918698 m!8007008))

(assert (=> b!7343871 d!2279299))

(declare-fun lt!2610771 () List!71624)

(declare-fun b!7344143 () Bool)

(declare-fun e!4397608 () Bool)

(assert (=> b!7344143 (= e!4397608 (or (not (= (exprs!8568 ct2!378) Nil!71500)) (= lt!2610771 (exprs!8568 cWitness!61))))))

(declare-fun d!2279309 () Bool)

(assert (=> d!2279309 e!4397608))

(declare-fun res!2966533 () Bool)

(assert (=> d!2279309 (=> (not res!2966533) (not e!4397608))))

(declare-fun content!15044 (List!71624) (Set Regex!19128))

(assert (=> d!2279309 (= res!2966533 (= (content!15044 lt!2610771) (set.union (content!15044 (exprs!8568 cWitness!61)) (content!15044 (exprs!8568 ct2!378)))))))

(declare-fun e!4397607 () List!71624)

(assert (=> d!2279309 (= lt!2610771 e!4397607)))

(declare-fun c!1364250 () Bool)

(assert (=> d!2279309 (= c!1364250 (is-Nil!71500 (exprs!8568 cWitness!61)))))

(assert (=> d!2279309 (= (++!16946 (exprs!8568 cWitness!61) (exprs!8568 ct2!378)) lt!2610771)))

(declare-fun b!7344141 () Bool)

(assert (=> b!7344141 (= e!4397607 (Cons!71500 (h!77948 (exprs!8568 cWitness!61)) (++!16946 (t!386019 (exprs!8568 cWitness!61)) (exprs!8568 ct2!378))))))

(declare-fun b!7344142 () Bool)

(declare-fun res!2966534 () Bool)

(assert (=> b!7344142 (=> (not res!2966534) (not e!4397608))))

(declare-fun size!42023 (List!71624) Int)

(assert (=> b!7344142 (= res!2966534 (= (size!42023 lt!2610771) (+ (size!42023 (exprs!8568 cWitness!61)) (size!42023 (exprs!8568 ct2!378)))))))

(declare-fun b!7344140 () Bool)

(assert (=> b!7344140 (= e!4397607 (exprs!8568 ct2!378))))

(assert (= (and d!2279309 c!1364250) b!7344140))

(assert (= (and d!2279309 (not c!1364250)) b!7344141))

(assert (= (and d!2279309 res!2966533) b!7344142))

(assert (= (and b!7344142 res!2966534) b!7344143))

(declare-fun m!8007034 () Bool)

(assert (=> d!2279309 m!8007034))

(declare-fun m!8007036 () Bool)

(assert (=> d!2279309 m!8007036))

(declare-fun m!8007038 () Bool)

(assert (=> d!2279309 m!8007038))

(declare-fun m!8007040 () Bool)

(assert (=> b!7344141 m!8007040))

(declare-fun m!8007042 () Bool)

(assert (=> b!7344142 m!8007042))

(declare-fun m!8007044 () Bool)

(assert (=> b!7344142 m!8007044))

(declare-fun m!8007046 () Bool)

(assert (=> b!7344142 m!8007046))

(assert (=> b!7343871 d!2279309))

(assert (=> b!7343871 d!2279281))

(declare-fun d!2279321 () Bool)

(assert (=> d!2279321 (forall!17958 (++!16946 (exprs!8568 ct1!282) (exprs!8568 ct2!378)) lambda!455904)))

(declare-fun lt!2610772 () Unit!165209)

(assert (=> d!2279321 (= lt!2610772 (choose!57124 (exprs!8568 ct1!282) (exprs!8568 ct2!378) lambda!455904))))

(assert (=> d!2279321 (forall!17958 (exprs!8568 ct1!282) lambda!455904)))

(assert (=> d!2279321 (= (lemmaConcatPreservesForall!1803 (exprs!8568 ct1!282) (exprs!8568 ct2!378) lambda!455904) lt!2610772)))

(declare-fun bs!1918711 () Bool)

(assert (= bs!1918711 d!2279321))

(assert (=> bs!1918711 m!8006830))

(assert (=> bs!1918711 m!8006830))

(declare-fun m!8007050 () Bool)

(assert (=> bs!1918711 m!8007050))

(declare-fun m!8007052 () Bool)

(assert (=> bs!1918711 m!8007052))

(assert (=> bs!1918711 m!8006794))

(assert (=> b!7343871 d!2279321))

(declare-fun b!7344155 () Bool)

(declare-fun e!4397617 () (Set Context!16136))

(declare-fun e!4397618 () (Set Context!16136))

(assert (=> b!7344155 (= e!4397617 e!4397618)))

(declare-fun c!1364256 () Bool)

(assert (=> b!7344155 (= c!1364256 (is-Union!19128 r1!2370))))

(declare-fun bm!670813 () Bool)

(declare-fun call!670819 () List!71624)

(declare-fun call!670820 () List!71624)

(assert (=> bm!670813 (= call!670819 call!670820)))

(declare-fun b!7344156 () Bool)

(declare-fun e!4397616 () (Set Context!16136))

(declare-fun call!670823 () (Set Context!16136))

(assert (=> b!7344156 (= e!4397616 call!670823)))

(declare-fun b!7344157 () Bool)

(declare-fun e!4397615 () (Set Context!16136))

(declare-fun call!670822 () (Set Context!16136))

(declare-fun call!670818 () (Set Context!16136))

(assert (=> b!7344157 (= e!4397615 (set.union call!670822 call!670818))))

(declare-fun b!7344158 () Bool)

(declare-fun e!4397619 () (Set Context!16136))

(assert (=> b!7344158 (= e!4397619 (as set.empty (Set Context!16136)))))

(declare-fun bm!670814 () Bool)

(assert (=> bm!670814 (= call!670822 (derivationStepZipperDown!2954 (ite c!1364256 (regTwo!38769 r1!2370) (regOne!38768 r1!2370)) (ite c!1364256 lt!2610705 (Context!16137 call!670820)) c!10362))))

(declare-fun b!7344159 () Bool)

(declare-fun e!4397620 () Bool)

(assert (=> b!7344159 (= e!4397620 (nullable!8222 (regOne!38768 r1!2370)))))

(declare-fun b!7344160 () Bool)

(declare-fun c!1364260 () Bool)

(assert (=> b!7344160 (= c!1364260 e!4397620)))

(declare-fun res!2966536 () Bool)

(assert (=> b!7344160 (=> (not res!2966536) (not e!4397620))))

(assert (=> b!7344160 (= res!2966536 (is-Concat!27973 r1!2370))))

(assert (=> b!7344160 (= e!4397618 e!4397615)))

(declare-fun b!7344161 () Bool)

(declare-fun call!670821 () (Set Context!16136))

(assert (=> b!7344161 (= e!4397618 (set.union call!670821 call!670822))))

(declare-fun bm!670816 () Bool)

(assert (=> bm!670816 (= call!670823 call!670818)))

(declare-fun b!7344162 () Bool)

(assert (=> b!7344162 (= e!4397619 call!670823)))

(declare-fun bm!670817 () Bool)

(declare-fun c!1364257 () Bool)

(assert (=> bm!670817 (= call!670820 ($colon$colon!3128 (exprs!8568 lt!2610705) (ite (or c!1364260 c!1364257) (regTwo!38768 r1!2370) r1!2370)))))

(declare-fun b!7344163 () Bool)

(assert (=> b!7344163 (= e!4397617 (set.insert lt!2610705 (as set.empty (Set Context!16136))))))

(declare-fun b!7344164 () Bool)

(declare-fun c!1364258 () Bool)

(assert (=> b!7344164 (= c!1364258 (is-Star!19128 r1!2370))))

(assert (=> b!7344164 (= e!4397616 e!4397619)))

(declare-fun bm!670818 () Bool)

(assert (=> bm!670818 (= call!670818 call!670821)))

(declare-fun b!7344165 () Bool)

(assert (=> b!7344165 (= e!4397615 e!4397616)))

(assert (=> b!7344165 (= c!1364257 (is-Concat!27973 r1!2370))))

(declare-fun bm!670815 () Bool)

(assert (=> bm!670815 (= call!670821 (derivationStepZipperDown!2954 (ite c!1364256 (regOne!38769 r1!2370) (ite c!1364260 (regTwo!38768 r1!2370) (ite c!1364257 (regOne!38768 r1!2370) (reg!19457 r1!2370)))) (ite (or c!1364256 c!1364260) lt!2610705 (Context!16137 call!670819)) c!10362))))

(declare-fun d!2279323 () Bool)

(declare-fun c!1364259 () Bool)

(assert (=> d!2279323 (= c!1364259 (and (is-ElementMatch!19128 r1!2370) (= (c!1364168 r1!2370) c!10362)))))

(assert (=> d!2279323 (= (derivationStepZipperDown!2954 r1!2370 lt!2610705 c!10362) e!4397617)))

(assert (= (and d!2279323 c!1364259) b!7344163))

(assert (= (and d!2279323 (not c!1364259)) b!7344155))

(assert (= (and b!7344155 c!1364256) b!7344161))

(assert (= (and b!7344155 (not c!1364256)) b!7344160))

(assert (= (and b!7344160 res!2966536) b!7344159))

(assert (= (and b!7344160 c!1364260) b!7344157))

(assert (= (and b!7344160 (not c!1364260)) b!7344165))

(assert (= (and b!7344165 c!1364257) b!7344156))

(assert (= (and b!7344165 (not c!1364257)) b!7344164))

(assert (= (and b!7344164 c!1364258) b!7344162))

(assert (= (and b!7344164 (not c!1364258)) b!7344158))

(assert (= (or b!7344156 b!7344162) bm!670813))

(assert (= (or b!7344156 b!7344162) bm!670816))

(assert (= (or b!7344157 bm!670816) bm!670818))

(assert (= (or b!7344157 bm!670813) bm!670817))

(assert (= (or b!7344161 b!7344157) bm!670814))

(assert (= (or b!7344161 bm!670818) bm!670815))

(assert (=> b!7344163 m!8006958))

(declare-fun m!8007058 () Bool)

(assert (=> bm!670817 m!8007058))

(declare-fun m!8007060 () Bool)

(assert (=> bm!670814 m!8007060))

(declare-fun m!8007062 () Bool)

(assert (=> bm!670815 m!8007062))

(assert (=> b!7344159 m!8006956))

(assert (=> b!7343866 d!2279323))

(declare-fun e!4397627 () Bool)

(declare-fun lt!2610773 () List!71624)

(declare-fun b!7344184 () Bool)

(assert (=> b!7344184 (= e!4397627 (or (not (= (exprs!8568 ct2!378) Nil!71500)) (= lt!2610773 (exprs!8568 ct1!282))))))

(declare-fun d!2279325 () Bool)

(assert (=> d!2279325 e!4397627))

(declare-fun res!2966537 () Bool)

(assert (=> d!2279325 (=> (not res!2966537) (not e!4397627))))

(assert (=> d!2279325 (= res!2966537 (= (content!15044 lt!2610773) (set.union (content!15044 (exprs!8568 ct1!282)) (content!15044 (exprs!8568 ct2!378)))))))

(declare-fun e!4397626 () List!71624)

(assert (=> d!2279325 (= lt!2610773 e!4397626)))

(declare-fun c!1364261 () Bool)

(assert (=> d!2279325 (= c!1364261 (is-Nil!71500 (exprs!8568 ct1!282)))))

(assert (=> d!2279325 (= (++!16946 (exprs!8568 ct1!282) (exprs!8568 ct2!378)) lt!2610773)))

(declare-fun b!7344182 () Bool)

(assert (=> b!7344182 (= e!4397626 (Cons!71500 (h!77948 (exprs!8568 ct1!282)) (++!16946 (t!386019 (exprs!8568 ct1!282)) (exprs!8568 ct2!378))))))

(declare-fun b!7344183 () Bool)

(declare-fun res!2966538 () Bool)

(assert (=> b!7344183 (=> (not res!2966538) (not e!4397627))))

(assert (=> b!7344183 (= res!2966538 (= (size!42023 lt!2610773) (+ (size!42023 (exprs!8568 ct1!282)) (size!42023 (exprs!8568 ct2!378)))))))

(declare-fun b!7344181 () Bool)

(assert (=> b!7344181 (= e!4397626 (exprs!8568 ct2!378))))

(assert (= (and d!2279325 c!1364261) b!7344181))

(assert (= (and d!2279325 (not c!1364261)) b!7344182))

(assert (= (and d!2279325 res!2966537) b!7344183))

(assert (= (and b!7344183 res!2966538) b!7344184))

(declare-fun m!8007064 () Bool)

(assert (=> d!2279325 m!8007064))

(declare-fun m!8007066 () Bool)

(assert (=> d!2279325 m!8007066))

(assert (=> d!2279325 m!8007038))

(declare-fun m!8007068 () Bool)

(assert (=> b!7344182 m!8007068))

(declare-fun m!8007070 () Bool)

(assert (=> b!7344183 m!8007070))

(declare-fun m!8007072 () Bool)

(assert (=> b!7344183 m!8007072))

(assert (=> b!7344183 m!8007046))

(assert (=> b!7343866 d!2279325))

(assert (=> b!7343866 d!2279321))

(declare-fun e!4397636 () Bool)

(assert (=> b!7343869 (= tp!2085503 e!4397636)))

(declare-fun b!7344218 () Bool)

(declare-fun tp!2085587 () Bool)

(assert (=> b!7344218 (= e!4397636 tp!2085587)))

(declare-fun b!7344216 () Bool)

(assert (=> b!7344216 (= e!4397636 tp_is_empty!48501)))

(declare-fun b!7344217 () Bool)

(declare-fun tp!2085589 () Bool)

(declare-fun tp!2085588 () Bool)

(assert (=> b!7344217 (= e!4397636 (and tp!2085589 tp!2085588))))

(declare-fun b!7344219 () Bool)

(declare-fun tp!2085591 () Bool)

(declare-fun tp!2085590 () Bool)

(assert (=> b!7344219 (= e!4397636 (and tp!2085591 tp!2085590))))

(assert (= (and b!7343869 (is-ElementMatch!19128 (reg!19457 r1!2370))) b!7344216))

(assert (= (and b!7343869 (is-Concat!27973 (reg!19457 r1!2370))) b!7344217))

(assert (= (and b!7343869 (is-Star!19128 (reg!19457 r1!2370))) b!7344218))

(assert (= (and b!7343869 (is-Union!19128 (reg!19457 r1!2370))) b!7344219))

(declare-fun b!7344225 () Bool)

(declare-fun e!4397640 () Bool)

(declare-fun tp!2085598 () Bool)

(declare-fun tp!2085599 () Bool)

(assert (=> b!7344225 (= e!4397640 (and tp!2085598 tp!2085599))))

(assert (=> b!7343868 (= tp!2085507 e!4397640)))

(assert (= (and b!7343868 (is-Cons!71500 (exprs!8568 ct2!378))) b!7344225))

(declare-fun e!4397641 () Bool)

(assert (=> b!7343877 (= tp!2085508 e!4397641)))

(declare-fun b!7344228 () Bool)

(declare-fun tp!2085600 () Bool)

(assert (=> b!7344228 (= e!4397641 tp!2085600)))

(declare-fun b!7344226 () Bool)

(assert (=> b!7344226 (= e!4397641 tp_is_empty!48501)))

(declare-fun b!7344227 () Bool)

(declare-fun tp!2085602 () Bool)

(declare-fun tp!2085601 () Bool)

(assert (=> b!7344227 (= e!4397641 (and tp!2085602 tp!2085601))))

(declare-fun b!7344229 () Bool)

(declare-fun tp!2085604 () Bool)

(declare-fun tp!2085603 () Bool)

(assert (=> b!7344229 (= e!4397641 (and tp!2085604 tp!2085603))))

(assert (= (and b!7343877 (is-ElementMatch!19128 (regOne!38769 r1!2370))) b!7344226))

(assert (= (and b!7343877 (is-Concat!27973 (regOne!38769 r1!2370))) b!7344227))

(assert (= (and b!7343877 (is-Star!19128 (regOne!38769 r1!2370))) b!7344228))

(assert (= (and b!7343877 (is-Union!19128 (regOne!38769 r1!2370))) b!7344229))

(declare-fun e!4397642 () Bool)

(assert (=> b!7343877 (= tp!2085502 e!4397642)))

(declare-fun b!7344232 () Bool)

(declare-fun tp!2085605 () Bool)

(assert (=> b!7344232 (= e!4397642 tp!2085605)))

(declare-fun b!7344230 () Bool)

(assert (=> b!7344230 (= e!4397642 tp_is_empty!48501)))

(declare-fun b!7344231 () Bool)

(declare-fun tp!2085607 () Bool)

(declare-fun tp!2085606 () Bool)

(assert (=> b!7344231 (= e!4397642 (and tp!2085607 tp!2085606))))

(declare-fun b!7344233 () Bool)

(declare-fun tp!2085609 () Bool)

(declare-fun tp!2085608 () Bool)

(assert (=> b!7344233 (= e!4397642 (and tp!2085609 tp!2085608))))

(assert (= (and b!7343877 (is-ElementMatch!19128 (regTwo!38769 r1!2370))) b!7344230))

(assert (= (and b!7343877 (is-Concat!27973 (regTwo!38769 r1!2370))) b!7344231))

(assert (= (and b!7343877 (is-Star!19128 (regTwo!38769 r1!2370))) b!7344232))

(assert (= (and b!7343877 (is-Union!19128 (regTwo!38769 r1!2370))) b!7344233))

(declare-fun b!7344234 () Bool)

(declare-fun e!4397643 () Bool)

(declare-fun tp!2085610 () Bool)

(declare-fun tp!2085611 () Bool)

(assert (=> b!7344234 (= e!4397643 (and tp!2085610 tp!2085611))))

(assert (=> b!7343872 (= tp!2085506 e!4397643)))

(assert (= (and b!7343872 (is-Cons!71500 (exprs!8568 cWitness!61))) b!7344234))

(declare-fun e!4397644 () Bool)

(assert (=> b!7343876 (= tp!2085504 e!4397644)))

(declare-fun b!7344237 () Bool)

(declare-fun tp!2085612 () Bool)

(assert (=> b!7344237 (= e!4397644 tp!2085612)))

(declare-fun b!7344235 () Bool)

(assert (=> b!7344235 (= e!4397644 tp_is_empty!48501)))

(declare-fun b!7344236 () Bool)

(declare-fun tp!2085614 () Bool)

(declare-fun tp!2085613 () Bool)

(assert (=> b!7344236 (= e!4397644 (and tp!2085614 tp!2085613))))

(declare-fun b!7344238 () Bool)

(declare-fun tp!2085616 () Bool)

(declare-fun tp!2085615 () Bool)

(assert (=> b!7344238 (= e!4397644 (and tp!2085616 tp!2085615))))

(assert (= (and b!7343876 (is-ElementMatch!19128 (regOne!38768 r1!2370))) b!7344235))

(assert (= (and b!7343876 (is-Concat!27973 (regOne!38768 r1!2370))) b!7344236))

(assert (= (and b!7343876 (is-Star!19128 (regOne!38768 r1!2370))) b!7344237))

(assert (= (and b!7343876 (is-Union!19128 (regOne!38768 r1!2370))) b!7344238))

(declare-fun e!4397645 () Bool)

(assert (=> b!7343876 (= tp!2085509 e!4397645)))

(declare-fun b!7344241 () Bool)

(declare-fun tp!2085617 () Bool)

(assert (=> b!7344241 (= e!4397645 tp!2085617)))

(declare-fun b!7344239 () Bool)

(assert (=> b!7344239 (= e!4397645 tp_is_empty!48501)))

(declare-fun b!7344240 () Bool)

(declare-fun tp!2085619 () Bool)

(declare-fun tp!2085618 () Bool)

(assert (=> b!7344240 (= e!4397645 (and tp!2085619 tp!2085618))))

(declare-fun b!7344242 () Bool)

(declare-fun tp!2085621 () Bool)

(declare-fun tp!2085620 () Bool)

(assert (=> b!7344242 (= e!4397645 (and tp!2085621 tp!2085620))))

(assert (= (and b!7343876 (is-ElementMatch!19128 (regTwo!38768 r1!2370))) b!7344239))

(assert (= (and b!7343876 (is-Concat!27973 (regTwo!38768 r1!2370))) b!7344240))

(assert (= (and b!7343876 (is-Star!19128 (regTwo!38768 r1!2370))) b!7344241))

(assert (= (and b!7343876 (is-Union!19128 (regTwo!38768 r1!2370))) b!7344242))

(declare-fun b!7344243 () Bool)

(declare-fun e!4397646 () Bool)

(declare-fun tp!2085622 () Bool)

(declare-fun tp!2085623 () Bool)

(assert (=> b!7344243 (= e!4397646 (and tp!2085622 tp!2085623))))

(assert (=> b!7343875 (= tp!2085505 e!4397646)))

(assert (= (and b!7343875 (is-Cons!71500 (exprs!8568 ct1!282))) b!7344243))

(declare-fun b_lambda!283961 () Bool)

(assert (= b_lambda!283957 (or b!7343866 b_lambda!283961)))

(declare-fun bs!1918713 () Bool)

(declare-fun d!2279329 () Bool)

(assert (= bs!1918713 (and d!2279329 b!7343866)))

(assert (=> bs!1918713 (= (dynLambda!29465 lambda!455904 (h!77948 (exprs!8568 ct1!282))) (validRegex!9724 (h!77948 (exprs!8568 ct1!282))))))

(declare-fun m!8007076 () Bool)

(assert (=> bs!1918713 m!8007076))

(assert (=> b!7344016 d!2279329))

(push 1)

(assert (not bm!670773))

(assert (not b!7344038))

(assert (not b!7344233))

(assert (not b!7344242))

(assert (not d!2279299))

(assert (not b!7344240))

(assert (not d!2279287))

(assert (not bm!670763))

(assert (not bm!670776))

(assert (not bm!670757))

(assert (not b!7344142))

(assert (not d!2279309))

(assert (not b!7344183))

(assert (not bm!670761))

(assert (not d!2279281))

(assert (not bm!670782))

(assert (not b!7344068))

(assert (not b!7344241))

(assert (not bm!670784))

(assert (not b!7344236))

(assert (not b!7344227))

(assert (not d!2279325))

(assert (not bs!1918713))

(assert (not b!7344238))

(assert (not b!7344237))

(assert (not bm!670760))

(assert (not bm!670817))

(assert (not b!7344049))

(assert (not d!2279293))

(assert (not b!7344243))

(assert (not b!7344229))

(assert (not b!7343988))

(assert (not b!7344159))

(assert (not b!7344003))

(assert tp_is_empty!48501)

(assert (not b!7344234))

(assert (not bm!670754))

(assert (not bm!670755))

(assert (not b!7344232))

(assert (not d!2279321))

(assert (not bm!670815))

(assert (not b!7344231))

(assert (not b!7344141))

(assert (not bm!670775))

(assert (not bm!670772))

(assert (not bm!670778))

(assert (not b!7344219))

(assert (not b!7344017))

(assert (not bm!670814))

(assert (not bm!670781))

(assert (not b!7344225))

(assert (not b_lambda!283961))

(assert (not d!2279291))

(assert (not b!7344228))

(assert (not b!7344218))

(assert (not b!7344217))

(assert (not b!7344182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

