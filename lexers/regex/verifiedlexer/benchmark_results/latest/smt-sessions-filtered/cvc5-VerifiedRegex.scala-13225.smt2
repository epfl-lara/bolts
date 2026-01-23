; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720254 () Bool)

(assert start!720254)

(declare-fun res!2977864 () Bool)

(declare-fun e!4419795 () Bool)

(assert (=> start!720254 (=> (not res!2977864) (not e!4419795))))

(declare-datatypes ((C!38950 0))(
  ( (C!38951 (val!29835 Int)) )
))
(declare-datatypes ((Regex!19338 0))(
  ( (ElementMatch!19338 (c!1372512 C!38950)) (Concat!28183 (regOne!39188 Regex!19338) (regTwo!39188 Regex!19338)) (EmptyExpr!19338) (Star!19338 (reg!19667 Regex!19338)) (EmptyLang!19338) (Union!19338 (regOne!39189 Regex!19338) (regTwo!39189 Regex!19338)) )
))
(declare-fun r1!2370 () Regex!19338)

(declare-fun validRegex!9934 (Regex!19338) Bool)

(assert (=> start!720254 (= res!2977864 (validRegex!9934 r1!2370))))

(assert (=> start!720254 e!4419795))

(declare-fun tp_is_empty!48921 () Bool)

(assert (=> start!720254 tp_is_empty!48921))

(declare-datatypes ((List!71834 0))(
  ( (Nil!71710) (Cons!71710 (h!78158 Regex!19338) (t!386333 List!71834)) )
))
(declare-datatypes ((Context!16556 0))(
  ( (Context!16557 (exprs!8778 List!71834)) )
))
(declare-fun cWitness!61 () Context!16556)

(declare-fun e!4419794 () Bool)

(declare-fun inv!91686 (Context!16556) Bool)

(assert (=> start!720254 (and (inv!91686 cWitness!61) e!4419794)))

(declare-fun ct1!282 () Context!16556)

(declare-fun e!4419796 () Bool)

(assert (=> start!720254 (and (inv!91686 ct1!282) e!4419796)))

(declare-fun e!4419799 () Bool)

(assert (=> start!720254 e!4419799))

(declare-fun ct2!378 () Context!16556)

(declare-fun e!4419797 () Bool)

(assert (=> start!720254 (and (inv!91686 ct2!378) e!4419797)))

(declare-fun b!7383906 () Bool)

(declare-fun tp!2100540 () Bool)

(declare-fun tp!2100547 () Bool)

(assert (=> b!7383906 (= e!4419799 (and tp!2100540 tp!2100547))))

(declare-fun b!7383907 () Bool)

(declare-fun tp!2100542 () Bool)

(assert (=> b!7383907 (= e!4419794 tp!2100542)))

(declare-fun b!7383908 () Bool)

(declare-fun res!2977868 () Bool)

(assert (=> b!7383908 (=> (not res!2977868) (not e!4419795))))

(declare-fun c!10362 () C!38950)

(declare-fun derivationStepZipperDown!3164 (Regex!19338 Context!16556 C!38950) (Set Context!16556))

(assert (=> b!7383908 (= res!2977868 (set.member cWitness!61 (derivationStepZipperDown!3164 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7383909 () Bool)

(declare-fun tp!2100545 () Bool)

(assert (=> b!7383909 (= e!4419799 tp!2100545)))

(declare-fun b!7383910 () Bool)

(assert (=> b!7383910 (= e!4419799 tp_is_empty!48921)))

(declare-fun b!7383911 () Bool)

(declare-fun tp!2100541 () Bool)

(assert (=> b!7383911 (= e!4419797 tp!2100541)))

(declare-fun b!7383912 () Bool)

(declare-fun e!4419798 () Bool)

(declare-fun nullable!8412 (Regex!19338) Bool)

(assert (=> b!7383912 (= e!4419798 (not (nullable!8412 (regOne!39188 r1!2370))))))

(declare-fun b!7383913 () Bool)

(declare-fun res!2977866 () Bool)

(declare-fun e!4419793 () Bool)

(assert (=> b!7383913 (=> (not res!2977866) (not e!4419793))))

(assert (=> b!7383913 (= res!2977866 (and (not (is-Concat!28183 r1!2370)) (not (is-Star!19338 r1!2370))))))

(declare-fun b!7383914 () Bool)

(declare-fun tp!2100543 () Bool)

(assert (=> b!7383914 (= e!4419796 tp!2100543)))

(declare-fun b!7383915 () Bool)

(assert (=> b!7383915 (= e!4419795 e!4419793)))

(declare-fun res!2977863 () Bool)

(assert (=> b!7383915 (=> (not res!2977863) (not e!4419793))))

(assert (=> b!7383915 (= res!2977863 (and (or (not (is-ElementMatch!19338 r1!2370)) (not (= c!10362 (c!1372512 r1!2370)))) (not (is-Union!19338 r1!2370))))))

(declare-fun lt!2617457 () (Set Context!16556))

(declare-fun ++!17154 (List!71834 List!71834) List!71834)

(assert (=> b!7383915 (= lt!2617457 (derivationStepZipperDown!3164 r1!2370 (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165625 0))(
  ( (Unit!165626) )
))
(declare-fun lt!2617459 () Unit!165625)

(declare-fun lambda!458752 () Int)

(declare-fun lemmaConcatPreservesForall!2011 (List!71834 List!71834 Int) Unit!165625)

(assert (=> b!7383915 (= lt!2617459 (lemmaConcatPreservesForall!2011 (exprs!8778 ct1!282) (exprs!8778 ct2!378) lambda!458752))))

(declare-fun b!7383916 () Bool)

(declare-fun tp!2100544 () Bool)

(declare-fun tp!2100546 () Bool)

(assert (=> b!7383916 (= e!4419799 (and tp!2100544 tp!2100546))))

(declare-fun b!7383917 () Bool)

(declare-fun res!2977867 () Bool)

(assert (=> b!7383917 (=> (not res!2977867) (not e!4419793))))

(assert (=> b!7383917 (= res!2977867 e!4419798)))

(declare-fun res!2977865 () Bool)

(assert (=> b!7383917 (=> res!2977865 e!4419798)))

(assert (=> b!7383917 (= res!2977865 (not (is-Concat!28183 r1!2370)))))

(declare-fun b!7383918 () Bool)

(assert (=> b!7383918 (= e!4419793 (not (set.member (Context!16557 (++!17154 (exprs!8778 cWitness!61) (exprs!8778 ct2!378))) lt!2617457)))))

(declare-fun lt!2617456 () Unit!165625)

(assert (=> b!7383918 (= lt!2617456 (lemmaConcatPreservesForall!2011 (exprs!8778 ct1!282) (exprs!8778 ct2!378) lambda!458752))))

(declare-fun lt!2617458 () Unit!165625)

(assert (=> b!7383918 (= lt!2617458 (lemmaConcatPreservesForall!2011 (exprs!8778 cWitness!61) (exprs!8778 ct2!378) lambda!458752))))

(assert (= (and start!720254 res!2977864) b!7383908))

(assert (= (and b!7383908 res!2977868) b!7383915))

(assert (= (and b!7383915 res!2977863) b!7383917))

(assert (= (and b!7383917 (not res!2977865)) b!7383912))

(assert (= (and b!7383917 res!2977867) b!7383913))

(assert (= (and b!7383913 res!2977866) b!7383918))

(assert (= start!720254 b!7383907))

(assert (= start!720254 b!7383914))

(assert (= (and start!720254 (is-ElementMatch!19338 r1!2370)) b!7383910))

(assert (= (and start!720254 (is-Concat!28183 r1!2370)) b!7383916))

(assert (= (and start!720254 (is-Star!19338 r1!2370)) b!7383909))

(assert (= (and start!720254 (is-Union!19338 r1!2370)) b!7383906))

(assert (= start!720254 b!7383911))

(declare-fun m!8033006 () Bool)

(assert (=> b!7383908 m!8033006))

(declare-fun m!8033008 () Bool)

(assert (=> b!7383908 m!8033008))

(declare-fun m!8033010 () Bool)

(assert (=> start!720254 m!8033010))

(declare-fun m!8033012 () Bool)

(assert (=> start!720254 m!8033012))

(declare-fun m!8033014 () Bool)

(assert (=> start!720254 m!8033014))

(declare-fun m!8033016 () Bool)

(assert (=> start!720254 m!8033016))

(declare-fun m!8033018 () Bool)

(assert (=> b!7383918 m!8033018))

(declare-fun m!8033020 () Bool)

(assert (=> b!7383918 m!8033020))

(declare-fun m!8033022 () Bool)

(assert (=> b!7383918 m!8033022))

(declare-fun m!8033024 () Bool)

(assert (=> b!7383918 m!8033024))

(declare-fun m!8033026 () Bool)

(assert (=> b!7383915 m!8033026))

(declare-fun m!8033028 () Bool)

(assert (=> b!7383915 m!8033028))

(assert (=> b!7383915 m!8033022))

(declare-fun m!8033030 () Bool)

(assert (=> b!7383912 m!8033030))

(push 1)

(assert (not b!7383914))

(assert (not b!7383911))

(assert (not b!7383915))

(assert tp_is_empty!48921)

(assert (not b!7383906))

(assert (not b!7383909))

(assert (not b!7383908))

(assert (not b!7383918))

(assert (not b!7383916))

(assert (not b!7383912))

(assert (not start!720254))

(assert (not b!7383907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7383980 () Bool)

(declare-fun e!4419833 () (Set Context!16556))

(assert (=> b!7383980 (= e!4419833 (set.insert ct1!282 (as set.empty (Set Context!16556))))))

(declare-fun b!7383981 () Bool)

(declare-fun e!4419836 () (Set Context!16556))

(declare-fun e!4419837 () (Set Context!16556))

(assert (=> b!7383981 (= e!4419836 e!4419837)))

(declare-fun c!1372526 () Bool)

(assert (=> b!7383981 (= c!1372526 (is-Concat!28183 r1!2370))))

(declare-fun b!7383982 () Bool)

(declare-fun call!679702 () (Set Context!16556))

(declare-fun call!679701 () (Set Context!16556))

(assert (=> b!7383982 (= e!4419836 (set.union call!679702 call!679701))))

(declare-fun b!7383983 () Bool)

(declare-fun c!1372527 () Bool)

(assert (=> b!7383983 (= c!1372527 (is-Star!19338 r1!2370))))

(declare-fun e!4419834 () (Set Context!16556))

(assert (=> b!7383983 (= e!4419837 e!4419834)))

(declare-fun call!679703 () List!71834)

(declare-fun bm!679693 () Bool)

(declare-fun c!1372525 () Bool)

(declare-fun $colon$colon!3316 (List!71834 Regex!19338) List!71834)

(assert (=> bm!679693 (= call!679703 ($colon$colon!3316 (exprs!8778 ct1!282) (ite (or c!1372525 c!1372526) (regTwo!39188 r1!2370) r1!2370)))))

(declare-fun b!7383984 () Bool)

(assert (=> b!7383984 (= e!4419834 (as set.empty (Set Context!16556)))))

(declare-fun b!7383985 () Bool)

(declare-fun e!4419835 () (Set Context!16556))

(declare-fun call!679699 () (Set Context!16556))

(assert (=> b!7383985 (= e!4419835 (set.union call!679702 call!679699))))

(declare-fun b!7383986 () Bool)

(declare-fun e!4419838 () Bool)

(assert (=> b!7383986 (= c!1372525 e!4419838)))

(declare-fun res!2977889 () Bool)

(assert (=> b!7383986 (=> (not res!2977889) (not e!4419838))))

(assert (=> b!7383986 (= res!2977889 (is-Concat!28183 r1!2370))))

(assert (=> b!7383986 (= e!4419835 e!4419836)))

(declare-fun b!7383987 () Bool)

(declare-fun call!679698 () (Set Context!16556))

(assert (=> b!7383987 (= e!4419837 call!679698)))

(declare-fun bm!679694 () Bool)

(assert (=> bm!679694 (= call!679701 call!679699)))

(declare-fun bm!679695 () Bool)

(declare-fun c!1372528 () Bool)

(assert (=> bm!679695 (= call!679702 (derivationStepZipperDown!3164 (ite c!1372528 (regOne!39189 r1!2370) (regOne!39188 r1!2370)) (ite c!1372528 ct1!282 (Context!16557 call!679703)) c!10362))))

(declare-fun b!7383989 () Bool)

(assert (=> b!7383989 (= e!4419834 call!679698)))

(declare-fun bm!679696 () Bool)

(assert (=> bm!679696 (= call!679698 call!679701)))

(declare-fun bm!679697 () Bool)

(declare-fun call!679700 () List!71834)

(assert (=> bm!679697 (= call!679700 call!679703)))

(declare-fun bm!679698 () Bool)

(assert (=> bm!679698 (= call!679699 (derivationStepZipperDown!3164 (ite c!1372528 (regTwo!39189 r1!2370) (ite c!1372525 (regTwo!39188 r1!2370) (ite c!1372526 (regOne!39188 r1!2370) (reg!19667 r1!2370)))) (ite (or c!1372528 c!1372525) ct1!282 (Context!16557 call!679700)) c!10362))))

(declare-fun b!7383990 () Bool)

(assert (=> b!7383990 (= e!4419838 (nullable!8412 (regOne!39188 r1!2370)))))

(declare-fun d!2286200 () Bool)

(declare-fun c!1372524 () Bool)

(assert (=> d!2286200 (= c!1372524 (and (is-ElementMatch!19338 r1!2370) (= (c!1372512 r1!2370) c!10362)))))

(assert (=> d!2286200 (= (derivationStepZipperDown!3164 r1!2370 ct1!282 c!10362) e!4419833)))

(declare-fun b!7383988 () Bool)

(assert (=> b!7383988 (= e!4419833 e!4419835)))

(assert (=> b!7383988 (= c!1372528 (is-Union!19338 r1!2370))))

(assert (= (and d!2286200 c!1372524) b!7383980))

(assert (= (and d!2286200 (not c!1372524)) b!7383988))

(assert (= (and b!7383988 c!1372528) b!7383985))

(assert (= (and b!7383988 (not c!1372528)) b!7383986))

(assert (= (and b!7383986 res!2977889) b!7383990))

(assert (= (and b!7383986 c!1372525) b!7383982))

(assert (= (and b!7383986 (not c!1372525)) b!7383981))

(assert (= (and b!7383981 c!1372526) b!7383987))

(assert (= (and b!7383981 (not c!1372526)) b!7383983))

(assert (= (and b!7383983 c!1372527) b!7383989))

(assert (= (and b!7383983 (not c!1372527)) b!7383984))

(assert (= (or b!7383987 b!7383989) bm!679697))

(assert (= (or b!7383987 b!7383989) bm!679696))

(assert (= (or b!7383982 bm!679696) bm!679694))

(assert (= (or b!7383982 bm!679697) bm!679693))

(assert (= (or b!7383985 bm!679694) bm!679698))

(assert (= (or b!7383985 b!7383982) bm!679695))

(declare-fun m!8033058 () Bool)

(assert (=> bm!679698 m!8033058))

(declare-fun m!8033060 () Bool)

(assert (=> bm!679695 m!8033060))

(assert (=> b!7383990 m!8033030))

(declare-fun m!8033062 () Bool)

(assert (=> b!7383980 m!8033062))

(declare-fun m!8033064 () Bool)

(assert (=> bm!679693 m!8033064))

(assert (=> b!7383908 d!2286200))

(declare-fun b!7384001 () Bool)

(declare-fun res!2977894 () Bool)

(declare-fun e!4419844 () Bool)

(assert (=> b!7384001 (=> (not res!2977894) (not e!4419844))))

(declare-fun lt!2617474 () List!71834)

(declare-fun size!42172 (List!71834) Int)

(assert (=> b!7384001 (= res!2977894 (= (size!42172 lt!2617474) (+ (size!42172 (exprs!8778 cWitness!61)) (size!42172 (exprs!8778 ct2!378)))))))

(declare-fun b!7384002 () Bool)

(assert (=> b!7384002 (= e!4419844 (or (not (= (exprs!8778 ct2!378) Nil!71710)) (= lt!2617474 (exprs!8778 cWitness!61))))))

(declare-fun b!7384000 () Bool)

(declare-fun e!4419843 () List!71834)

(assert (=> b!7384000 (= e!4419843 (Cons!71710 (h!78158 (exprs!8778 cWitness!61)) (++!17154 (t!386333 (exprs!8778 cWitness!61)) (exprs!8778 ct2!378))))))

(declare-fun b!7383999 () Bool)

(assert (=> b!7383999 (= e!4419843 (exprs!8778 ct2!378))))

(declare-fun d!2286204 () Bool)

(assert (=> d!2286204 e!4419844))

(declare-fun res!2977895 () Bool)

(assert (=> d!2286204 (=> (not res!2977895) (not e!4419844))))

(declare-fun content!15194 (List!71834) (Set Regex!19338))

(assert (=> d!2286204 (= res!2977895 (= (content!15194 lt!2617474) (set.union (content!15194 (exprs!8778 cWitness!61)) (content!15194 (exprs!8778 ct2!378)))))))

(assert (=> d!2286204 (= lt!2617474 e!4419843)))

(declare-fun c!1372531 () Bool)

(assert (=> d!2286204 (= c!1372531 (is-Nil!71710 (exprs!8778 cWitness!61)))))

(assert (=> d!2286204 (= (++!17154 (exprs!8778 cWitness!61) (exprs!8778 ct2!378)) lt!2617474)))

(assert (= (and d!2286204 c!1372531) b!7383999))

(assert (= (and d!2286204 (not c!1372531)) b!7384000))

(assert (= (and d!2286204 res!2977895) b!7384001))

(assert (= (and b!7384001 res!2977894) b!7384002))

(declare-fun m!8033068 () Bool)

(assert (=> b!7384001 m!8033068))

(declare-fun m!8033070 () Bool)

(assert (=> b!7384001 m!8033070))

(declare-fun m!8033072 () Bool)

(assert (=> b!7384001 m!8033072))

(declare-fun m!8033074 () Bool)

(assert (=> b!7384000 m!8033074))

(declare-fun m!8033076 () Bool)

(assert (=> d!2286204 m!8033076))

(declare-fun m!8033078 () Bool)

(assert (=> d!2286204 m!8033078))

(declare-fun m!8033080 () Bool)

(assert (=> d!2286204 m!8033080))

(assert (=> b!7383918 d!2286204))

(declare-fun d!2286208 () Bool)

(declare-fun forall!18122 (List!71834 Int) Bool)

(assert (=> d!2286208 (forall!18122 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378)) lambda!458752)))

(declare-fun lt!2617477 () Unit!165625)

(declare-fun choose!57359 (List!71834 List!71834 Int) Unit!165625)

(assert (=> d!2286208 (= lt!2617477 (choose!57359 (exprs!8778 ct1!282) (exprs!8778 ct2!378) lambda!458752))))

(assert (=> d!2286208 (forall!18122 (exprs!8778 ct1!282) lambda!458752)))

(assert (=> d!2286208 (= (lemmaConcatPreservesForall!2011 (exprs!8778 ct1!282) (exprs!8778 ct2!378) lambda!458752) lt!2617477)))

(declare-fun bs!1921833 () Bool)

(assert (= bs!1921833 d!2286208))

(assert (=> bs!1921833 m!8033026))

(assert (=> bs!1921833 m!8033026))

(declare-fun m!8033082 () Bool)

(assert (=> bs!1921833 m!8033082))

(declare-fun m!8033084 () Bool)

(assert (=> bs!1921833 m!8033084))

(declare-fun m!8033086 () Bool)

(assert (=> bs!1921833 m!8033086))

(assert (=> b!7383918 d!2286208))

(declare-fun d!2286210 () Bool)

(assert (=> d!2286210 (forall!18122 (++!17154 (exprs!8778 cWitness!61) (exprs!8778 ct2!378)) lambda!458752)))

(declare-fun lt!2617478 () Unit!165625)

(assert (=> d!2286210 (= lt!2617478 (choose!57359 (exprs!8778 cWitness!61) (exprs!8778 ct2!378) lambda!458752))))

(assert (=> d!2286210 (forall!18122 (exprs!8778 cWitness!61) lambda!458752)))

(assert (=> d!2286210 (= (lemmaConcatPreservesForall!2011 (exprs!8778 cWitness!61) (exprs!8778 ct2!378) lambda!458752) lt!2617478)))

(declare-fun bs!1921834 () Bool)

(assert (= bs!1921834 d!2286210))

(assert (=> bs!1921834 m!8033018))

(assert (=> bs!1921834 m!8033018))

(declare-fun m!8033088 () Bool)

(assert (=> bs!1921834 m!8033088))

(declare-fun m!8033090 () Bool)

(assert (=> bs!1921834 m!8033090))

(declare-fun m!8033092 () Bool)

(assert (=> bs!1921834 m!8033092))

(assert (=> b!7383918 d!2286210))

(declare-fun d!2286212 () Bool)

(declare-fun nullableFct!3378 (Regex!19338) Bool)

(assert (=> d!2286212 (= (nullable!8412 (regOne!39188 r1!2370)) (nullableFct!3378 (regOne!39188 r1!2370)))))

(declare-fun bs!1921835 () Bool)

(assert (= bs!1921835 d!2286212))

(declare-fun m!8033094 () Bool)

(assert (=> bs!1921835 m!8033094))

(assert (=> b!7383912 d!2286212))

(declare-fun b!7384003 () Bool)

(declare-fun e!4419845 () (Set Context!16556))

(assert (=> b!7384003 (= e!4419845 (set.insert (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378))) (as set.empty (Set Context!16556))))))

(declare-fun b!7384004 () Bool)

(declare-fun e!4419848 () (Set Context!16556))

(declare-fun e!4419849 () (Set Context!16556))

(assert (=> b!7384004 (= e!4419848 e!4419849)))

(declare-fun c!1372534 () Bool)

(assert (=> b!7384004 (= c!1372534 (is-Concat!28183 r1!2370))))

(declare-fun b!7384005 () Bool)

(declare-fun call!679708 () (Set Context!16556))

(declare-fun call!679707 () (Set Context!16556))

(assert (=> b!7384005 (= e!4419848 (set.union call!679708 call!679707))))

(declare-fun b!7384006 () Bool)

(declare-fun c!1372535 () Bool)

(assert (=> b!7384006 (= c!1372535 (is-Star!19338 r1!2370))))

(declare-fun e!4419846 () (Set Context!16556))

(assert (=> b!7384006 (= e!4419849 e!4419846)))

(declare-fun c!1372533 () Bool)

(declare-fun bm!679699 () Bool)

(declare-fun call!679709 () List!71834)

(assert (=> bm!679699 (= call!679709 ($colon$colon!3316 (exprs!8778 (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378)))) (ite (or c!1372533 c!1372534) (regTwo!39188 r1!2370) r1!2370)))))

(declare-fun b!7384007 () Bool)

(assert (=> b!7384007 (= e!4419846 (as set.empty (Set Context!16556)))))

(declare-fun b!7384008 () Bool)

(declare-fun e!4419847 () (Set Context!16556))

(declare-fun call!679705 () (Set Context!16556))

(assert (=> b!7384008 (= e!4419847 (set.union call!679708 call!679705))))

(declare-fun b!7384009 () Bool)

(declare-fun e!4419850 () Bool)

(assert (=> b!7384009 (= c!1372533 e!4419850)))

(declare-fun res!2977896 () Bool)

(assert (=> b!7384009 (=> (not res!2977896) (not e!4419850))))

(assert (=> b!7384009 (= res!2977896 (is-Concat!28183 r1!2370))))

(assert (=> b!7384009 (= e!4419847 e!4419848)))

(declare-fun b!7384010 () Bool)

(declare-fun call!679704 () (Set Context!16556))

(assert (=> b!7384010 (= e!4419849 call!679704)))

(declare-fun bm!679700 () Bool)

(assert (=> bm!679700 (= call!679707 call!679705)))

(declare-fun c!1372536 () Bool)

(declare-fun bm!679701 () Bool)

(assert (=> bm!679701 (= call!679708 (derivationStepZipperDown!3164 (ite c!1372536 (regOne!39189 r1!2370) (regOne!39188 r1!2370)) (ite c!1372536 (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378))) (Context!16557 call!679709)) c!10362))))

(declare-fun b!7384012 () Bool)

(assert (=> b!7384012 (= e!4419846 call!679704)))

(declare-fun bm!679702 () Bool)

(assert (=> bm!679702 (= call!679704 call!679707)))

(declare-fun bm!679703 () Bool)

(declare-fun call!679706 () List!71834)

(assert (=> bm!679703 (= call!679706 call!679709)))

(declare-fun bm!679704 () Bool)

(assert (=> bm!679704 (= call!679705 (derivationStepZipperDown!3164 (ite c!1372536 (regTwo!39189 r1!2370) (ite c!1372533 (regTwo!39188 r1!2370) (ite c!1372534 (regOne!39188 r1!2370) (reg!19667 r1!2370)))) (ite (or c!1372536 c!1372533) (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378))) (Context!16557 call!679706)) c!10362))))

(declare-fun b!7384013 () Bool)

(assert (=> b!7384013 (= e!4419850 (nullable!8412 (regOne!39188 r1!2370)))))

(declare-fun d!2286214 () Bool)

(declare-fun c!1372532 () Bool)

(assert (=> d!2286214 (= c!1372532 (and (is-ElementMatch!19338 r1!2370) (= (c!1372512 r1!2370) c!10362)))))

(assert (=> d!2286214 (= (derivationStepZipperDown!3164 r1!2370 (Context!16557 (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378))) c!10362) e!4419845)))

(declare-fun b!7384011 () Bool)

(assert (=> b!7384011 (= e!4419845 e!4419847)))

(assert (=> b!7384011 (= c!1372536 (is-Union!19338 r1!2370))))

(assert (= (and d!2286214 c!1372532) b!7384003))

(assert (= (and d!2286214 (not c!1372532)) b!7384011))

(assert (= (and b!7384011 c!1372536) b!7384008))

(assert (= (and b!7384011 (not c!1372536)) b!7384009))

(assert (= (and b!7384009 res!2977896) b!7384013))

(assert (= (and b!7384009 c!1372533) b!7384005))

(assert (= (and b!7384009 (not c!1372533)) b!7384004))

(assert (= (and b!7384004 c!1372534) b!7384010))

(assert (= (and b!7384004 (not c!1372534)) b!7384006))

(assert (= (and b!7384006 c!1372535) b!7384012))

(assert (= (and b!7384006 (not c!1372535)) b!7384007))

(assert (= (or b!7384010 b!7384012) bm!679703))

(assert (= (or b!7384010 b!7384012) bm!679702))

(assert (= (or b!7384005 bm!679702) bm!679700))

(assert (= (or b!7384005 bm!679703) bm!679699))

(assert (= (or b!7384008 bm!679700) bm!679704))

(assert (= (or b!7384008 b!7384005) bm!679701))

(declare-fun m!8033096 () Bool)

(assert (=> bm!679704 m!8033096))

(declare-fun m!8033098 () Bool)

(assert (=> bm!679701 m!8033098))

(assert (=> b!7384013 m!8033030))

(declare-fun m!8033100 () Bool)

(assert (=> b!7384003 m!8033100))

(declare-fun m!8033102 () Bool)

(assert (=> bm!679699 m!8033102))

(assert (=> b!7383915 d!2286214))

(declare-fun b!7384016 () Bool)

(declare-fun res!2977897 () Bool)

(declare-fun e!4419852 () Bool)

(assert (=> b!7384016 (=> (not res!2977897) (not e!4419852))))

(declare-fun lt!2617479 () List!71834)

(assert (=> b!7384016 (= res!2977897 (= (size!42172 lt!2617479) (+ (size!42172 (exprs!8778 ct1!282)) (size!42172 (exprs!8778 ct2!378)))))))

(declare-fun b!7384017 () Bool)

(assert (=> b!7384017 (= e!4419852 (or (not (= (exprs!8778 ct2!378) Nil!71710)) (= lt!2617479 (exprs!8778 ct1!282))))))

(declare-fun b!7384015 () Bool)

(declare-fun e!4419851 () List!71834)

(assert (=> b!7384015 (= e!4419851 (Cons!71710 (h!78158 (exprs!8778 ct1!282)) (++!17154 (t!386333 (exprs!8778 ct1!282)) (exprs!8778 ct2!378))))))

(declare-fun b!7384014 () Bool)

(assert (=> b!7384014 (= e!4419851 (exprs!8778 ct2!378))))

(declare-fun d!2286216 () Bool)

(assert (=> d!2286216 e!4419852))

(declare-fun res!2977898 () Bool)

(assert (=> d!2286216 (=> (not res!2977898) (not e!4419852))))

(assert (=> d!2286216 (= res!2977898 (= (content!15194 lt!2617479) (set.union (content!15194 (exprs!8778 ct1!282)) (content!15194 (exprs!8778 ct2!378)))))))

(assert (=> d!2286216 (= lt!2617479 e!4419851)))

(declare-fun c!1372537 () Bool)

(assert (=> d!2286216 (= c!1372537 (is-Nil!71710 (exprs!8778 ct1!282)))))

(assert (=> d!2286216 (= (++!17154 (exprs!8778 ct1!282) (exprs!8778 ct2!378)) lt!2617479)))

(assert (= (and d!2286216 c!1372537) b!7384014))

(assert (= (and d!2286216 (not c!1372537)) b!7384015))

(assert (= (and d!2286216 res!2977898) b!7384016))

(assert (= (and b!7384016 res!2977897) b!7384017))

(declare-fun m!8033104 () Bool)

(assert (=> b!7384016 m!8033104))

(declare-fun m!8033106 () Bool)

(assert (=> b!7384016 m!8033106))

(assert (=> b!7384016 m!8033072))

(declare-fun m!8033108 () Bool)

(assert (=> b!7384015 m!8033108))

(declare-fun m!8033110 () Bool)

(assert (=> d!2286216 m!8033110))

(declare-fun m!8033112 () Bool)

(assert (=> d!2286216 m!8033112))

(assert (=> d!2286216 m!8033080))

(assert (=> b!7383915 d!2286216))

(assert (=> b!7383915 d!2286208))

(declare-fun b!7384058 () Bool)

(declare-fun e!4419882 () Bool)

(declare-fun e!4419884 () Bool)

(assert (=> b!7384058 (= e!4419882 e!4419884)))

(declare-fun c!1372553 () Bool)

(assert (=> b!7384058 (= c!1372553 (is-Union!19338 r1!2370))))

(declare-fun b!7384059 () Bool)

(declare-fun e!4419883 () Bool)

(declare-fun e!4419885 () Bool)

(assert (=> b!7384059 (= e!4419883 e!4419885)))

(declare-fun res!2977913 () Bool)

(assert (=> b!7384059 (=> (not res!2977913) (not e!4419885))))

(declare-fun call!679724 () Bool)

(assert (=> b!7384059 (= res!2977913 call!679724)))

(declare-fun b!7384061 () Bool)

(declare-fun e!4419879 () Bool)

(assert (=> b!7384061 (= e!4419882 e!4419879)))

(declare-fun res!2977911 () Bool)

(assert (=> b!7384061 (= res!2977911 (not (nullable!8412 (reg!19667 r1!2370))))))

(assert (=> b!7384061 (=> (not res!2977911) (not e!4419879))))

(declare-fun b!7384062 () Bool)

(declare-fun call!679725 () Bool)

(assert (=> b!7384062 (= e!4419879 call!679725)))

(declare-fun b!7384063 () Bool)

(declare-fun res!2977912 () Bool)

(declare-fun e!4419881 () Bool)

(assert (=> b!7384063 (=> (not res!2977912) (not e!4419881))))

(declare-fun call!679726 () Bool)

(assert (=> b!7384063 (= res!2977912 call!679726)))

(assert (=> b!7384063 (= e!4419884 e!4419881)))

(declare-fun b!7384064 () Bool)

(assert (=> b!7384064 (= e!4419881 call!679724)))

(declare-fun b!7384065 () Bool)

(declare-fun e!4419880 () Bool)

(assert (=> b!7384065 (= e!4419880 e!4419882)))

(declare-fun c!1372552 () Bool)

(assert (=> b!7384065 (= c!1372552 (is-Star!19338 r1!2370))))

(declare-fun bm!679719 () Bool)

(assert (=> bm!679719 (= call!679725 (validRegex!9934 (ite c!1372552 (reg!19667 r1!2370) (ite c!1372553 (regTwo!39189 r1!2370) (regOne!39188 r1!2370)))))))

(declare-fun bm!679720 () Bool)

(assert (=> bm!679720 (= call!679726 (validRegex!9934 (ite c!1372553 (regOne!39189 r1!2370) (regTwo!39188 r1!2370))))))

(declare-fun b!7384060 () Bool)

(declare-fun res!2977915 () Bool)

(assert (=> b!7384060 (=> res!2977915 e!4419883)))

(assert (=> b!7384060 (= res!2977915 (not (is-Concat!28183 r1!2370)))))

(assert (=> b!7384060 (= e!4419884 e!4419883)))

(declare-fun d!2286218 () Bool)

(declare-fun res!2977914 () Bool)

(assert (=> d!2286218 (=> res!2977914 e!4419880)))

(assert (=> d!2286218 (= res!2977914 (is-ElementMatch!19338 r1!2370))))

(assert (=> d!2286218 (= (validRegex!9934 r1!2370) e!4419880)))

(declare-fun b!7384066 () Bool)

(assert (=> b!7384066 (= e!4419885 call!679726)))

(declare-fun bm!679721 () Bool)

(assert (=> bm!679721 (= call!679724 call!679725)))

(assert (= (and d!2286218 (not res!2977914)) b!7384065))

(assert (= (and b!7384065 c!1372552) b!7384061))

(assert (= (and b!7384065 (not c!1372552)) b!7384058))

(assert (= (and b!7384061 res!2977911) b!7384062))

(assert (= (and b!7384058 c!1372553) b!7384063))

(assert (= (and b!7384058 (not c!1372553)) b!7384060))

(assert (= (and b!7384063 res!2977912) b!7384064))

(assert (= (and b!7384060 (not res!2977915)) b!7384059))

(assert (= (and b!7384059 res!2977913) b!7384066))

(assert (= (or b!7384063 b!7384066) bm!679720))

(assert (= (or b!7384064 b!7384059) bm!679721))

(assert (= (or b!7384062 bm!679721) bm!679719))

(declare-fun m!8033114 () Bool)

(assert (=> b!7384061 m!8033114))

(declare-fun m!8033116 () Bool)

(assert (=> bm!679719 m!8033116))

(declare-fun m!8033118 () Bool)

(assert (=> bm!679720 m!8033118))

(assert (=> start!720254 d!2286218))

(declare-fun bs!1921836 () Bool)

(declare-fun d!2286220 () Bool)

(assert (= bs!1921836 (and d!2286220 b!7383915)))

(declare-fun lambda!458762 () Int)

(assert (=> bs!1921836 (= lambda!458762 lambda!458752)))

(assert (=> d!2286220 (= (inv!91686 cWitness!61) (forall!18122 (exprs!8778 cWitness!61) lambda!458762))))

(declare-fun bs!1921837 () Bool)

(assert (= bs!1921837 d!2286220))

(declare-fun m!8033120 () Bool)

(assert (=> bs!1921837 m!8033120))

(assert (=> start!720254 d!2286220))

(declare-fun bs!1921838 () Bool)

(declare-fun d!2286222 () Bool)

(assert (= bs!1921838 (and d!2286222 b!7383915)))

(declare-fun lambda!458763 () Int)

(assert (=> bs!1921838 (= lambda!458763 lambda!458752)))

(declare-fun bs!1921839 () Bool)

(assert (= bs!1921839 (and d!2286222 d!2286220)))

(assert (=> bs!1921839 (= lambda!458763 lambda!458762)))

(assert (=> d!2286222 (= (inv!91686 ct1!282) (forall!18122 (exprs!8778 ct1!282) lambda!458763))))

(declare-fun bs!1921840 () Bool)

(assert (= bs!1921840 d!2286222))

(declare-fun m!8033122 () Bool)

(assert (=> bs!1921840 m!8033122))

(assert (=> start!720254 d!2286222))

(declare-fun bs!1921841 () Bool)

(declare-fun d!2286224 () Bool)

(assert (= bs!1921841 (and d!2286224 b!7383915)))

(declare-fun lambda!458764 () Int)

(assert (=> bs!1921841 (= lambda!458764 lambda!458752)))

(declare-fun bs!1921842 () Bool)

(assert (= bs!1921842 (and d!2286224 d!2286220)))

(assert (=> bs!1921842 (= lambda!458764 lambda!458762)))

(declare-fun bs!1921843 () Bool)

(assert (= bs!1921843 (and d!2286224 d!2286222)))

(assert (=> bs!1921843 (= lambda!458764 lambda!458763)))

(assert (=> d!2286224 (= (inv!91686 ct2!378) (forall!18122 (exprs!8778 ct2!378) lambda!458764))))

(declare-fun bs!1921844 () Bool)

(assert (= bs!1921844 d!2286224))

(declare-fun m!8033124 () Bool)

(assert (=> bs!1921844 m!8033124))

(assert (=> start!720254 d!2286224))

(declare-fun b!7384071 () Bool)

(declare-fun e!4419888 () Bool)

(declare-fun tp!2100576 () Bool)

(declare-fun tp!2100577 () Bool)

(assert (=> b!7384071 (= e!4419888 (and tp!2100576 tp!2100577))))

(assert (=> b!7383907 (= tp!2100542 e!4419888)))

(assert (= (and b!7383907 (is-Cons!71710 (exprs!8778 cWitness!61))) b!7384071))

(declare-fun b!7384084 () Bool)

(declare-fun e!4419891 () Bool)

(declare-fun tp!2100591 () Bool)

(assert (=> b!7384084 (= e!4419891 tp!2100591)))

(declare-fun b!7384085 () Bool)

(declare-fun tp!2100589 () Bool)

(declare-fun tp!2100592 () Bool)

(assert (=> b!7384085 (= e!4419891 (and tp!2100589 tp!2100592))))

(declare-fun b!7384082 () Bool)

(assert (=> b!7384082 (= e!4419891 tp_is_empty!48921)))

(assert (=> b!7383906 (= tp!2100540 e!4419891)))

(declare-fun b!7384083 () Bool)

(declare-fun tp!2100590 () Bool)

(declare-fun tp!2100588 () Bool)

(assert (=> b!7384083 (= e!4419891 (and tp!2100590 tp!2100588))))

(assert (= (and b!7383906 (is-ElementMatch!19338 (regOne!39189 r1!2370))) b!7384082))

(assert (= (and b!7383906 (is-Concat!28183 (regOne!39189 r1!2370))) b!7384083))

(assert (= (and b!7383906 (is-Star!19338 (regOne!39189 r1!2370))) b!7384084))

(assert (= (and b!7383906 (is-Union!19338 (regOne!39189 r1!2370))) b!7384085))

(declare-fun b!7384088 () Bool)

(declare-fun e!4419892 () Bool)

(declare-fun tp!2100596 () Bool)

(assert (=> b!7384088 (= e!4419892 tp!2100596)))

(declare-fun b!7384089 () Bool)

(declare-fun tp!2100594 () Bool)

(declare-fun tp!2100597 () Bool)

(assert (=> b!7384089 (= e!4419892 (and tp!2100594 tp!2100597))))

(declare-fun b!7384086 () Bool)

(assert (=> b!7384086 (= e!4419892 tp_is_empty!48921)))

(assert (=> b!7383906 (= tp!2100547 e!4419892)))

(declare-fun b!7384087 () Bool)

(declare-fun tp!2100595 () Bool)

(declare-fun tp!2100593 () Bool)

(assert (=> b!7384087 (= e!4419892 (and tp!2100595 tp!2100593))))

(assert (= (and b!7383906 (is-ElementMatch!19338 (regTwo!39189 r1!2370))) b!7384086))

(assert (= (and b!7383906 (is-Concat!28183 (regTwo!39189 r1!2370))) b!7384087))

(assert (= (and b!7383906 (is-Star!19338 (regTwo!39189 r1!2370))) b!7384088))

(assert (= (and b!7383906 (is-Union!19338 (regTwo!39189 r1!2370))) b!7384089))

(declare-fun b!7384092 () Bool)

(declare-fun e!4419893 () Bool)

(declare-fun tp!2100601 () Bool)

(assert (=> b!7384092 (= e!4419893 tp!2100601)))

(declare-fun b!7384093 () Bool)

(declare-fun tp!2100599 () Bool)

(declare-fun tp!2100602 () Bool)

(assert (=> b!7384093 (= e!4419893 (and tp!2100599 tp!2100602))))

(declare-fun b!7384090 () Bool)

(assert (=> b!7384090 (= e!4419893 tp_is_empty!48921)))

(assert (=> b!7383916 (= tp!2100544 e!4419893)))

(declare-fun b!7384091 () Bool)

(declare-fun tp!2100600 () Bool)

(declare-fun tp!2100598 () Bool)

(assert (=> b!7384091 (= e!4419893 (and tp!2100600 tp!2100598))))

(assert (= (and b!7383916 (is-ElementMatch!19338 (regOne!39188 r1!2370))) b!7384090))

(assert (= (and b!7383916 (is-Concat!28183 (regOne!39188 r1!2370))) b!7384091))

(assert (= (and b!7383916 (is-Star!19338 (regOne!39188 r1!2370))) b!7384092))

(assert (= (and b!7383916 (is-Union!19338 (regOne!39188 r1!2370))) b!7384093))

(declare-fun b!7384096 () Bool)

(declare-fun e!4419894 () Bool)

(declare-fun tp!2100606 () Bool)

(assert (=> b!7384096 (= e!4419894 tp!2100606)))

(declare-fun b!7384097 () Bool)

(declare-fun tp!2100604 () Bool)

(declare-fun tp!2100607 () Bool)

(assert (=> b!7384097 (= e!4419894 (and tp!2100604 tp!2100607))))

(declare-fun b!7384094 () Bool)

(assert (=> b!7384094 (= e!4419894 tp_is_empty!48921)))

(assert (=> b!7383916 (= tp!2100546 e!4419894)))

(declare-fun b!7384095 () Bool)

(declare-fun tp!2100605 () Bool)

(declare-fun tp!2100603 () Bool)

(assert (=> b!7384095 (= e!4419894 (and tp!2100605 tp!2100603))))

(assert (= (and b!7383916 (is-ElementMatch!19338 (regTwo!39188 r1!2370))) b!7384094))

(assert (= (and b!7383916 (is-Concat!28183 (regTwo!39188 r1!2370))) b!7384095))

(assert (= (and b!7383916 (is-Star!19338 (regTwo!39188 r1!2370))) b!7384096))

(assert (= (and b!7383916 (is-Union!19338 (regTwo!39188 r1!2370))) b!7384097))

(declare-fun b!7384098 () Bool)

(declare-fun e!4419895 () Bool)

(declare-fun tp!2100608 () Bool)

(declare-fun tp!2100609 () Bool)

(assert (=> b!7384098 (= e!4419895 (and tp!2100608 tp!2100609))))

(assert (=> b!7383911 (= tp!2100541 e!4419895)))

(assert (= (and b!7383911 (is-Cons!71710 (exprs!8778 ct2!378))) b!7384098))

(declare-fun b!7384099 () Bool)

(declare-fun e!4419896 () Bool)

(declare-fun tp!2100610 () Bool)

(declare-fun tp!2100611 () Bool)

(assert (=> b!7384099 (= e!4419896 (and tp!2100610 tp!2100611))))

(assert (=> b!7383914 (= tp!2100543 e!4419896)))

(assert (= (and b!7383914 (is-Cons!71710 (exprs!8778 ct1!282))) b!7384099))

(declare-fun b!7384102 () Bool)

(declare-fun e!4419897 () Bool)

(declare-fun tp!2100615 () Bool)

(assert (=> b!7384102 (= e!4419897 tp!2100615)))

(declare-fun b!7384103 () Bool)

(declare-fun tp!2100613 () Bool)

(declare-fun tp!2100616 () Bool)

(assert (=> b!7384103 (= e!4419897 (and tp!2100613 tp!2100616))))

(declare-fun b!7384100 () Bool)

(assert (=> b!7384100 (= e!4419897 tp_is_empty!48921)))

(assert (=> b!7383909 (= tp!2100545 e!4419897)))

(declare-fun b!7384101 () Bool)

(declare-fun tp!2100614 () Bool)

(declare-fun tp!2100612 () Bool)

(assert (=> b!7384101 (= e!4419897 (and tp!2100614 tp!2100612))))

(assert (= (and b!7383909 (is-ElementMatch!19338 (reg!19667 r1!2370))) b!7384100))

(assert (= (and b!7383909 (is-Concat!28183 (reg!19667 r1!2370))) b!7384101))

(assert (= (and b!7383909 (is-Star!19338 (reg!19667 r1!2370))) b!7384102))

(assert (= (and b!7383909 (is-Union!19338 (reg!19667 r1!2370))) b!7384103))

(push 1)

(assert (not b!7384013))

(assert (not b!7384001))

(assert (not b!7384071))

(assert (not b!7384000))

(assert tp_is_empty!48921)

(assert (not b!7384085))

(assert (not b!7384101))

(assert (not b!7384092))

(assert (not bm!679698))

(assert (not b!7384088))

(assert (not bm!679704))

(assert (not b!7383990))

(assert (not b!7384083))

(assert (not d!2286208))

(assert (not b!7384097))

(assert (not b!7384087))

(assert (not b!7384016))

(assert (not d!2286222))

(assert (not bm!679720))

(assert (not b!7384098))

(assert (not b!7384099))

(assert (not d!2286210))

(assert (not b!7384095))

(assert (not bm!679699))

(assert (not d!2286224))

(assert (not b!7384015))

(assert (not b!7384089))

(assert (not d!2286204))

(assert (not b!7384091))

(assert (not b!7384093))

(assert (not d!2286216))

(assert (not bm!679701))

(assert (not bm!679695))

(assert (not b!7384061))

(assert (not bm!679693))

(assert (not bm!679719))

(assert (not b!7384103))

(assert (not d!2286220))

(assert (not b!7384102))

(assert (not d!2286212))

(assert (not b!7384096))

(assert (not b!7384084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

