; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719306 () Bool)

(assert start!719306)

(declare-fun b!7369650 () Bool)

(declare-fun e!4412005 () Bool)

(declare-fun tp!2094935 () Bool)

(declare-fun tp!2094937 () Bool)

(assert (=> b!7369650 (= e!4412005 (and tp!2094935 tp!2094937))))

(declare-fun b!7369651 () Bool)

(declare-fun tp!2094938 () Bool)

(declare-fun tp!2094939 () Bool)

(assert (=> b!7369651 (= e!4412005 (and tp!2094938 tp!2094939))))

(declare-fun b!7369652 () Bool)

(declare-fun e!4412008 () Bool)

(declare-fun e!4412010 () Bool)

(assert (=> b!7369652 (= e!4412008 e!4412010)))

(declare-fun res!2973857 () Bool)

(assert (=> b!7369652 (=> (not res!2973857) (not e!4412010))))

(declare-datatypes ((C!38818 0))(
  ( (C!38819 (val!29769 Int)) )
))
(declare-datatypes ((Regex!19272 0))(
  ( (ElementMatch!19272 (c!1369608 C!38818)) (Concat!28117 (regOne!39056 Regex!19272) (regTwo!39056 Regex!19272)) (EmptyExpr!19272) (Star!19272 (reg!19601 Regex!19272)) (EmptyLang!19272) (Union!19272 (regOne!39057 Regex!19272) (regTwo!39057 Regex!19272)) )
))
(declare-datatypes ((List!71768 0))(
  ( (Nil!71644) (Cons!71644 (h!78092 Regex!19272) (t!386227 List!71768)) )
))
(declare-datatypes ((Context!16424 0))(
  ( (Context!16425 (exprs!8712 List!71768)) )
))
(declare-fun cWitness!61 () Context!16424)

(declare-fun lt!2615296 () (Set Context!16424))

(assert (=> b!7369652 (= res!2973857 (set.member cWitness!61 lt!2615296))))

(declare-fun r1!2370 () Regex!19272)

(declare-fun c!10362 () C!38818)

(declare-fun ct1!282 () Context!16424)

(declare-fun derivationStepZipperDown!3098 (Regex!19272 Context!16424 C!38818) (Set Context!16424))

(assert (=> b!7369652 (= lt!2615296 (derivationStepZipperDown!3098 r1!2370 ct1!282 c!10362))))

(declare-fun res!2973851 () Bool)

(assert (=> start!719306 (=> (not res!2973851) (not e!4412008))))

(declare-fun validRegex!9868 (Regex!19272) Bool)

(assert (=> start!719306 (= res!2973851 (validRegex!9868 r1!2370))))

(assert (=> start!719306 e!4412008))

(declare-fun tp_is_empty!48789 () Bool)

(assert (=> start!719306 tp_is_empty!48789))

(declare-fun e!4412009 () Bool)

(declare-fun inv!91521 (Context!16424) Bool)

(assert (=> start!719306 (and (inv!91521 cWitness!61) e!4412009)))

(declare-fun e!4412006 () Bool)

(assert (=> start!719306 (and (inv!91521 ct1!282) e!4412006)))

(assert (=> start!719306 e!4412005))

(declare-fun ct2!378 () Context!16424)

(declare-fun e!4412003 () Bool)

(assert (=> start!719306 (and (inv!91521 ct2!378) e!4412003)))

(declare-fun b!7369653 () Bool)

(declare-fun e!4412007 () Bool)

(declare-fun lt!2615301 () Context!16424)

(declare-fun lt!2615300 () (Set Context!16424))

(assert (=> b!7369653 (= e!4412007 (not (set.member lt!2615301 lt!2615300)))))

(declare-datatypes ((Unit!165493 0))(
  ( (Unit!165494) )
))
(declare-fun lt!2615298 () Unit!165493)

(declare-fun lambda!457920 () Int)

(declare-fun lemmaConcatPreservesForall!1945 (List!71768 List!71768 Int) Unit!165493)

(assert (=> b!7369653 (= lt!2615298 (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457920))))

(declare-fun lt!2615302 () List!71768)

(declare-fun ++!17088 (List!71768 List!71768) List!71768)

(assert (=> b!7369653 (set.member lt!2615301 (derivationStepZipperDown!3098 (regOne!39056 r1!2370) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) c!10362))))

(assert (=> b!7369653 (= lt!2615301 (Context!16425 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378))))))

(declare-fun lt!2615305 () Unit!165493)

(assert (=> b!7369653 (= lt!2615305 (lemmaConcatPreservesForall!1945 lt!2615302 (exprs!8712 ct2!378) lambda!457920))))

(declare-fun lt!2615304 () Unit!165493)

(assert (=> b!7369653 (= lt!2615304 (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457920))))

(declare-fun lt!2615303 () Unit!165493)

(declare-fun lt!2615306 () Context!16424)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!131 (Regex!19272 Context!16424 Context!16424 Context!16424 C!38818) Unit!165493)

(assert (=> b!7369653 (= lt!2615303 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!131 (regOne!39056 r1!2370) lt!2615306 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7369654 () Bool)

(declare-fun tp!2094936 () Bool)

(assert (=> b!7369654 (= e!4412005 tp!2094936)))

(declare-fun b!7369655 () Bool)

(declare-fun tp!2094932 () Bool)

(assert (=> b!7369655 (= e!4412006 tp!2094932)))

(declare-fun b!7369656 () Bool)

(declare-fun tp!2094933 () Bool)

(assert (=> b!7369656 (= e!4412003 tp!2094933)))

(declare-fun b!7369657 () Bool)

(declare-fun res!2973852 () Bool)

(declare-fun e!4412004 () Bool)

(assert (=> b!7369657 (=> (not res!2973852) (not e!4412004))))

(assert (=> b!7369657 (= res!2973852 (validRegex!9868 (regTwo!39056 r1!2370)))))

(declare-fun b!7369658 () Bool)

(declare-fun tp!2094934 () Bool)

(assert (=> b!7369658 (= e!4412009 tp!2094934)))

(declare-fun b!7369659 () Bool)

(assert (=> b!7369659 (= e!4412004 e!4412007)))

(declare-fun res!2973856 () Bool)

(assert (=> b!7369659 (=> (not res!2973856) (not e!4412007))))

(declare-fun lt!2615299 () (Set Context!16424))

(assert (=> b!7369659 (= res!2973856 (= lt!2615296 (set.union lt!2615299 (derivationStepZipperDown!3098 (regTwo!39056 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7369659 (= lt!2615299 (derivationStepZipperDown!3098 (regOne!39056 r1!2370) lt!2615306 c!10362))))

(assert (=> b!7369659 (= lt!2615306 (Context!16425 lt!2615302))))

(declare-fun $colon$colon!3254 (List!71768 Regex!19272) List!71768)

(assert (=> b!7369659 (= lt!2615302 ($colon$colon!3254 (exprs!8712 ct1!282) (regTwo!39056 r1!2370)))))

(declare-fun b!7369660 () Bool)

(assert (=> b!7369660 (= e!4412010 e!4412004)))

(declare-fun res!2973854 () Bool)

(assert (=> b!7369660 (=> (not res!2973854) (not e!4412004))))

(assert (=> b!7369660 (= res!2973854 (and (or (not (is-ElementMatch!19272 r1!2370)) (not (= c!10362 (c!1369608 r1!2370)))) (not (is-Union!19272 r1!2370)) (is-Concat!28117 r1!2370)))))

(assert (=> b!7369660 (= lt!2615300 (derivationStepZipperDown!3098 r1!2370 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) c!10362))))

(declare-fun lt!2615297 () Unit!165493)

(assert (=> b!7369660 (= lt!2615297 (lemmaConcatPreservesForall!1945 (exprs!8712 ct1!282) (exprs!8712 ct2!378) lambda!457920))))

(declare-fun b!7369661 () Bool)

(declare-fun res!2973855 () Bool)

(assert (=> b!7369661 (=> (not res!2973855) (not e!4412007))))

(assert (=> b!7369661 (= res!2973855 (set.member cWitness!61 lt!2615299))))

(declare-fun b!7369662 () Bool)

(assert (=> b!7369662 (= e!4412005 tp_is_empty!48789)))

(declare-fun b!7369663 () Bool)

(declare-fun res!2973853 () Bool)

(assert (=> b!7369663 (=> (not res!2973853) (not e!4412004))))

(declare-fun nullable!8348 (Regex!19272) Bool)

(assert (=> b!7369663 (= res!2973853 (nullable!8348 (regOne!39056 r1!2370)))))

(assert (= (and start!719306 res!2973851) b!7369652))

(assert (= (and b!7369652 res!2973857) b!7369660))

(assert (= (and b!7369660 res!2973854) b!7369663))

(assert (= (and b!7369663 res!2973853) b!7369657))

(assert (= (and b!7369657 res!2973852) b!7369659))

(assert (= (and b!7369659 res!2973856) b!7369661))

(assert (= (and b!7369661 res!2973855) b!7369653))

(assert (= start!719306 b!7369658))

(assert (= start!719306 b!7369655))

(assert (= (and start!719306 (is-ElementMatch!19272 r1!2370)) b!7369662))

(assert (= (and start!719306 (is-Concat!28117 r1!2370)) b!7369650))

(assert (= (and start!719306 (is-Star!19272 r1!2370)) b!7369654))

(assert (= (and start!719306 (is-Union!19272 r1!2370)) b!7369651))

(assert (= start!719306 b!7369656))

(declare-fun m!8023738 () Bool)

(assert (=> start!719306 m!8023738))

(declare-fun m!8023740 () Bool)

(assert (=> start!719306 m!8023740))

(declare-fun m!8023742 () Bool)

(assert (=> start!719306 m!8023742))

(declare-fun m!8023744 () Bool)

(assert (=> start!719306 m!8023744))

(declare-fun m!8023746 () Bool)

(assert (=> b!7369659 m!8023746))

(declare-fun m!8023748 () Bool)

(assert (=> b!7369659 m!8023748))

(declare-fun m!8023750 () Bool)

(assert (=> b!7369659 m!8023750))

(declare-fun m!8023752 () Bool)

(assert (=> b!7369663 m!8023752))

(declare-fun m!8023754 () Bool)

(assert (=> b!7369660 m!8023754))

(declare-fun m!8023756 () Bool)

(assert (=> b!7369660 m!8023756))

(declare-fun m!8023758 () Bool)

(assert (=> b!7369660 m!8023758))

(declare-fun m!8023760 () Bool)

(assert (=> b!7369657 m!8023760))

(declare-fun m!8023762 () Bool)

(assert (=> b!7369652 m!8023762))

(declare-fun m!8023764 () Bool)

(assert (=> b!7369652 m!8023764))

(declare-fun m!8023766 () Bool)

(assert (=> b!7369661 m!8023766))

(declare-fun m!8023768 () Bool)

(assert (=> b!7369653 m!8023768))

(declare-fun m!8023770 () Bool)

(assert (=> b!7369653 m!8023770))

(declare-fun m!8023772 () Bool)

(assert (=> b!7369653 m!8023772))

(declare-fun m!8023774 () Bool)

(assert (=> b!7369653 m!8023774))

(declare-fun m!8023776 () Bool)

(assert (=> b!7369653 m!8023776))

(declare-fun m!8023778 () Bool)

(assert (=> b!7369653 m!8023778))

(assert (=> b!7369653 m!8023768))

(declare-fun m!8023780 () Bool)

(assert (=> b!7369653 m!8023780))

(declare-fun m!8023782 () Bool)

(assert (=> b!7369653 m!8023782))

(push 1)

(assert (not b!7369657))

(assert (not b!7369651))

(assert (not b!7369653))

(assert (not b!7369658))

(assert (not b!7369655))

(assert (not b!7369652))

(assert (not b!7369650))

(assert (not start!719306))

(assert (not b!7369660))

(assert (not b!7369659))

(assert (not b!7369663))

(assert (not b!7369656))

(assert (not b!7369654))

(assert tp_is_empty!48789)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7369728 () Bool)

(declare-fun e!4412048 () (Set Context!16424))

(declare-fun call!676653 () (Set Context!16424))

(declare-fun call!676654 () (Set Context!16424))

(assert (=> b!7369728 (= e!4412048 (set.union call!676653 call!676654))))

(declare-fun bm!676645 () Bool)

(declare-fun call!676655 () (Set Context!16424))

(assert (=> bm!676645 (= call!676654 call!676655)))

(declare-fun b!7369729 () Bool)

(declare-fun e!4412050 () (Set Context!16424))

(declare-fun call!676651 () (Set Context!16424))

(assert (=> b!7369729 (= e!4412050 call!676651)))

(declare-fun bm!676646 () Bool)

(declare-fun call!676650 () List!71768)

(declare-fun call!676652 () List!71768)

(assert (=> bm!676646 (= call!676650 call!676652)))

(declare-fun b!7369730 () Bool)

(declare-fun c!1369622 () Bool)

(assert (=> b!7369730 (= c!1369622 (is-Star!19272 r1!2370))))

(declare-fun e!4412052 () (Set Context!16424))

(assert (=> b!7369730 (= e!4412052 e!4412050)))

(declare-fun b!7369731 () Bool)

(declare-fun e!4412049 () (Set Context!16424))

(assert (=> b!7369731 (= e!4412049 (set.union call!676653 call!676655))))

(declare-fun b!7369732 () Bool)

(assert (=> b!7369732 (= e!4412050 (as set.empty (Set Context!16424)))))

(declare-fun b!7369733 () Bool)

(assert (=> b!7369733 (= e!4412052 call!676651)))

(declare-fun bm!676647 () Bool)

(declare-fun c!1369620 () Bool)

(assert (=> bm!676647 (= call!676653 (derivationStepZipperDown!3098 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)) (ite c!1369620 ct1!282 (Context!16425 call!676652)) c!10362))))

(declare-fun b!7369734 () Bool)

(declare-fun e!4412051 () (Set Context!16424))

(assert (=> b!7369734 (= e!4412051 (set.insert ct1!282 (as set.empty (Set Context!16424))))))

(declare-fun b!7369735 () Bool)

(assert (=> b!7369735 (= e!4412048 e!4412052)))

(declare-fun c!1369624 () Bool)

(assert (=> b!7369735 (= c!1369624 (is-Concat!28117 r1!2370))))

(declare-fun bm!676648 () Bool)

(declare-fun c!1369621 () Bool)

(assert (=> bm!676648 (= call!676652 ($colon$colon!3254 (exprs!8712 ct1!282) (ite (or c!1369621 c!1369624) (regTwo!39056 r1!2370) r1!2370)))))

(declare-fun b!7369736 () Bool)

(declare-fun e!4412047 () Bool)

(assert (=> b!7369736 (= e!4412047 (nullable!8348 (regOne!39056 r1!2370)))))

(declare-fun bm!676649 () Bool)

(assert (=> bm!676649 (= call!676655 (derivationStepZipperDown!3098 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))) (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650)) c!10362))))

(declare-fun b!7369737 () Bool)

(assert (=> b!7369737 (= c!1369621 e!4412047)))

(declare-fun res!2973881 () Bool)

(assert (=> b!7369737 (=> (not res!2973881) (not e!4412047))))

(assert (=> b!7369737 (= res!2973881 (is-Concat!28117 r1!2370))))

(assert (=> b!7369737 (= e!4412049 e!4412048)))

(declare-fun d!2283435 () Bool)

(declare-fun c!1369623 () Bool)

(assert (=> d!2283435 (= c!1369623 (and (is-ElementMatch!19272 r1!2370) (= (c!1369608 r1!2370) c!10362)))))

(assert (=> d!2283435 (= (derivationStepZipperDown!3098 r1!2370 ct1!282 c!10362) e!4412051)))

(declare-fun b!7369738 () Bool)

(assert (=> b!7369738 (= e!4412051 e!4412049)))

(assert (=> b!7369738 (= c!1369620 (is-Union!19272 r1!2370))))

(declare-fun bm!676650 () Bool)

(assert (=> bm!676650 (= call!676651 call!676654)))

(assert (= (and d!2283435 c!1369623) b!7369734))

(assert (= (and d!2283435 (not c!1369623)) b!7369738))

(assert (= (and b!7369738 c!1369620) b!7369731))

(assert (= (and b!7369738 (not c!1369620)) b!7369737))

(assert (= (and b!7369737 res!2973881) b!7369736))

(assert (= (and b!7369737 c!1369621) b!7369728))

(assert (= (and b!7369737 (not c!1369621)) b!7369735))

(assert (= (and b!7369735 c!1369624) b!7369733))

(assert (= (and b!7369735 (not c!1369624)) b!7369730))

(assert (= (and b!7369730 c!1369622) b!7369729))

(assert (= (and b!7369730 (not c!1369622)) b!7369732))

(assert (= (or b!7369733 b!7369729) bm!676646))

(assert (= (or b!7369733 b!7369729) bm!676650))

(assert (= (or b!7369728 bm!676650) bm!676645))

(assert (= (or b!7369728 bm!676646) bm!676648))

(assert (= (or b!7369731 bm!676645) bm!676649))

(assert (= (or b!7369731 b!7369728) bm!676647))

(assert (=> b!7369736 m!8023752))

(declare-fun m!8023830 () Bool)

(assert (=> bm!676647 m!8023830))

(declare-fun m!8023832 () Bool)

(assert (=> bm!676649 m!8023832))

(declare-fun m!8023834 () Bool)

(assert (=> b!7369734 m!8023834))

(declare-fun m!8023836 () Bool)

(assert (=> bm!676648 m!8023836))

(assert (=> b!7369652 d!2283435))

(declare-fun bm!676657 () Bool)

(declare-fun call!676664 () Bool)

(declare-fun call!676663 () Bool)

(assert (=> bm!676657 (= call!676664 call!676663)))

(declare-fun b!7369757 () Bool)

(declare-fun e!4412067 () Bool)

(assert (=> b!7369757 (= e!4412067 call!676664)))

(declare-fun b!7369758 () Bool)

(declare-fun e!4412073 () Bool)

(declare-fun e!4412071 () Bool)

(assert (=> b!7369758 (= e!4412073 e!4412071)))

(declare-fun res!2973893 () Bool)

(assert (=> b!7369758 (= res!2973893 (not (nullable!8348 (reg!19601 r1!2370))))))

(assert (=> b!7369758 (=> (not res!2973893) (not e!4412071))))

(declare-fun b!7369759 () Bool)

(assert (=> b!7369759 (= e!4412071 call!676663)))

(declare-fun b!7369760 () Bool)

(declare-fun e!4412068 () Bool)

(declare-fun call!676662 () Bool)

(assert (=> b!7369760 (= e!4412068 call!676662)))

(declare-fun b!7369761 () Bool)

(declare-fun e!4412070 () Bool)

(assert (=> b!7369761 (= e!4412070 e!4412067)))

(declare-fun res!2973895 () Bool)

(assert (=> b!7369761 (=> (not res!2973895) (not e!4412067))))

(assert (=> b!7369761 (= res!2973895 call!676662)))

(declare-fun b!7369762 () Bool)

(declare-fun res!2973892 () Bool)

(assert (=> b!7369762 (=> res!2973892 e!4412070)))

(assert (=> b!7369762 (= res!2973892 (not (is-Concat!28117 r1!2370)))))

(declare-fun e!4412072 () Bool)

(assert (=> b!7369762 (= e!4412072 e!4412070)))

(declare-fun bm!676658 () Bool)

(declare-fun c!1369630 () Bool)

(assert (=> bm!676658 (= call!676662 (validRegex!9868 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun d!2283437 () Bool)

(declare-fun res!2973894 () Bool)

(declare-fun e!4412069 () Bool)

(assert (=> d!2283437 (=> res!2973894 e!4412069)))

(assert (=> d!2283437 (= res!2973894 (is-ElementMatch!19272 r1!2370))))

(assert (=> d!2283437 (= (validRegex!9868 r1!2370) e!4412069)))

(declare-fun b!7369763 () Bool)

(declare-fun res!2973896 () Bool)

(assert (=> b!7369763 (=> (not res!2973896) (not e!4412068))))

(assert (=> b!7369763 (= res!2973896 call!676664)))

(assert (=> b!7369763 (= e!4412072 e!4412068)))

(declare-fun b!7369764 () Bool)

(assert (=> b!7369764 (= e!4412073 e!4412072)))

(assert (=> b!7369764 (= c!1369630 (is-Union!19272 r1!2370))))

(declare-fun c!1369629 () Bool)

(declare-fun bm!676659 () Bool)

(assert (=> bm!676659 (= call!676663 (validRegex!9868 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))

(declare-fun b!7369765 () Bool)

(assert (=> b!7369765 (= e!4412069 e!4412073)))

(assert (=> b!7369765 (= c!1369629 (is-Star!19272 r1!2370))))

(assert (= (and d!2283437 (not res!2973894)) b!7369765))

(assert (= (and b!7369765 c!1369629) b!7369758))

(assert (= (and b!7369765 (not c!1369629)) b!7369764))

(assert (= (and b!7369758 res!2973893) b!7369759))

(assert (= (and b!7369764 c!1369630) b!7369763))

(assert (= (and b!7369764 (not c!1369630)) b!7369762))

(assert (= (and b!7369763 res!2973896) b!7369760))

(assert (= (and b!7369762 (not res!2973892)) b!7369761))

(assert (= (and b!7369761 res!2973895) b!7369757))

(assert (= (or b!7369763 b!7369757) bm!676657))

(assert (= (or b!7369760 b!7369761) bm!676658))

(assert (= (or b!7369759 bm!676657) bm!676659))

(declare-fun m!8023838 () Bool)

(assert (=> b!7369758 m!8023838))

(declare-fun m!8023840 () Bool)

(assert (=> bm!676658 m!8023840))

(declare-fun m!8023842 () Bool)

(assert (=> bm!676659 m!8023842))

(assert (=> start!719306 d!2283437))

(declare-fun bs!1920782 () Bool)

(declare-fun d!2283439 () Bool)

(assert (= bs!1920782 (and d!2283439 b!7369660)))

(declare-fun lambda!457932 () Int)

(assert (=> bs!1920782 (= lambda!457932 lambda!457920)))

(declare-fun forall!18078 (List!71768 Int) Bool)

(assert (=> d!2283439 (= (inv!91521 cWitness!61) (forall!18078 (exprs!8712 cWitness!61) lambda!457932))))

(declare-fun bs!1920783 () Bool)

(assert (= bs!1920783 d!2283439))

(declare-fun m!8023844 () Bool)

(assert (=> bs!1920783 m!8023844))

(assert (=> start!719306 d!2283439))

(declare-fun bs!1920784 () Bool)

(declare-fun d!2283441 () Bool)

(assert (= bs!1920784 (and d!2283441 b!7369660)))

(declare-fun lambda!457933 () Int)

(assert (=> bs!1920784 (= lambda!457933 lambda!457920)))

(declare-fun bs!1920785 () Bool)

(assert (= bs!1920785 (and d!2283441 d!2283439)))

(assert (=> bs!1920785 (= lambda!457933 lambda!457932)))

(assert (=> d!2283441 (= (inv!91521 ct1!282) (forall!18078 (exprs!8712 ct1!282) lambda!457933))))

(declare-fun bs!1920786 () Bool)

(assert (= bs!1920786 d!2283441))

(declare-fun m!8023846 () Bool)

(assert (=> bs!1920786 m!8023846))

(assert (=> start!719306 d!2283441))

(declare-fun bs!1920787 () Bool)

(declare-fun d!2283443 () Bool)

(assert (= bs!1920787 (and d!2283443 b!7369660)))

(declare-fun lambda!457934 () Int)

(assert (=> bs!1920787 (= lambda!457934 lambda!457920)))

(declare-fun bs!1920788 () Bool)

(assert (= bs!1920788 (and d!2283443 d!2283439)))

(assert (=> bs!1920788 (= lambda!457934 lambda!457932)))

(declare-fun bs!1920789 () Bool)

(assert (= bs!1920789 (and d!2283443 d!2283441)))

(assert (=> bs!1920789 (= lambda!457934 lambda!457933)))

(assert (=> d!2283443 (= (inv!91521 ct2!378) (forall!18078 (exprs!8712 ct2!378) lambda!457934))))

(declare-fun bs!1920790 () Bool)

(assert (= bs!1920790 d!2283443))

(declare-fun m!8023848 () Bool)

(assert (=> bs!1920790 m!8023848))

(assert (=> start!719306 d!2283443))

(declare-fun bm!676660 () Bool)

(declare-fun call!676667 () Bool)

(declare-fun call!676666 () Bool)

(assert (=> bm!676660 (= call!676667 call!676666)))

(declare-fun b!7369766 () Bool)

(declare-fun e!4412074 () Bool)

(assert (=> b!7369766 (= e!4412074 call!676667)))

(declare-fun b!7369767 () Bool)

(declare-fun e!4412080 () Bool)

(declare-fun e!4412078 () Bool)

(assert (=> b!7369767 (= e!4412080 e!4412078)))

(declare-fun res!2973898 () Bool)

(assert (=> b!7369767 (= res!2973898 (not (nullable!8348 (reg!19601 (regTwo!39056 r1!2370)))))))

(assert (=> b!7369767 (=> (not res!2973898) (not e!4412078))))

(declare-fun b!7369768 () Bool)

(assert (=> b!7369768 (= e!4412078 call!676666)))

(declare-fun b!7369769 () Bool)

(declare-fun e!4412075 () Bool)

(declare-fun call!676665 () Bool)

(assert (=> b!7369769 (= e!4412075 call!676665)))

(declare-fun b!7369770 () Bool)

(declare-fun e!4412077 () Bool)

(assert (=> b!7369770 (= e!4412077 e!4412074)))

(declare-fun res!2973900 () Bool)

(assert (=> b!7369770 (=> (not res!2973900) (not e!4412074))))

(assert (=> b!7369770 (= res!2973900 call!676665)))

(declare-fun b!7369771 () Bool)

(declare-fun res!2973897 () Bool)

(assert (=> b!7369771 (=> res!2973897 e!4412077)))

(assert (=> b!7369771 (= res!2973897 (not (is-Concat!28117 (regTwo!39056 r1!2370))))))

(declare-fun e!4412079 () Bool)

(assert (=> b!7369771 (= e!4412079 e!4412077)))

(declare-fun bm!676661 () Bool)

(declare-fun c!1369632 () Bool)

(assert (=> bm!676661 (= call!676665 (validRegex!9868 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(declare-fun d!2283445 () Bool)

(declare-fun res!2973899 () Bool)

(declare-fun e!4412076 () Bool)

(assert (=> d!2283445 (=> res!2973899 e!4412076)))

(assert (=> d!2283445 (= res!2973899 (is-ElementMatch!19272 (regTwo!39056 r1!2370)))))

(assert (=> d!2283445 (= (validRegex!9868 (regTwo!39056 r1!2370)) e!4412076)))

(declare-fun b!7369772 () Bool)

(declare-fun res!2973901 () Bool)

(assert (=> b!7369772 (=> (not res!2973901) (not e!4412075))))

(assert (=> b!7369772 (= res!2973901 call!676667)))

(assert (=> b!7369772 (= e!4412079 e!4412075)))

(declare-fun b!7369773 () Bool)

(assert (=> b!7369773 (= e!4412080 e!4412079)))

(assert (=> b!7369773 (= c!1369632 (is-Union!19272 (regTwo!39056 r1!2370)))))

(declare-fun bm!676662 () Bool)

(declare-fun c!1369631 () Bool)

(assert (=> bm!676662 (= call!676666 (validRegex!9868 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))

(declare-fun b!7369774 () Bool)

(assert (=> b!7369774 (= e!4412076 e!4412080)))

(assert (=> b!7369774 (= c!1369631 (is-Star!19272 (regTwo!39056 r1!2370)))))

(assert (= (and d!2283445 (not res!2973899)) b!7369774))

(assert (= (and b!7369774 c!1369631) b!7369767))

(assert (= (and b!7369774 (not c!1369631)) b!7369773))

(assert (= (and b!7369767 res!2973898) b!7369768))

(assert (= (and b!7369773 c!1369632) b!7369772))

(assert (= (and b!7369773 (not c!1369632)) b!7369771))

(assert (= (and b!7369772 res!2973901) b!7369769))

(assert (= (and b!7369771 (not res!2973897)) b!7369770))

(assert (= (and b!7369770 res!2973900) b!7369766))

(assert (= (or b!7369772 b!7369766) bm!676660))

(assert (= (or b!7369769 b!7369770) bm!676661))

(assert (= (or b!7369768 bm!676660) bm!676662))

(declare-fun m!8023850 () Bool)

(assert (=> b!7369767 m!8023850))

(declare-fun m!8023852 () Bool)

(assert (=> bm!676661 m!8023852))

(declare-fun m!8023854 () Bool)

(assert (=> bm!676662 m!8023854))

(assert (=> b!7369657 d!2283445))

(declare-fun bs!1920791 () Bool)

(declare-fun d!2283447 () Bool)

(assert (= bs!1920791 (and d!2283447 b!7369660)))

(declare-fun lambda!457939 () Int)

(assert (=> bs!1920791 (= lambda!457939 lambda!457920)))

(declare-fun bs!1920792 () Bool)

(assert (= bs!1920792 (and d!2283447 d!2283439)))

(assert (=> bs!1920792 (= lambda!457939 lambda!457932)))

(declare-fun bs!1920793 () Bool)

(assert (= bs!1920793 (and d!2283447 d!2283441)))

(assert (=> bs!1920793 (= lambda!457939 lambda!457933)))

(declare-fun bs!1920794 () Bool)

(assert (= bs!1920794 (and d!2283447 d!2283443)))

(assert (=> bs!1920794 (= lambda!457939 lambda!457934)))

(assert (=> d!2283447 (set.member (Context!16425 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378))) (derivationStepZipperDown!3098 (regOne!39056 r1!2370) (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) c!10362))))

(declare-fun lt!2615351 () Unit!165493)

(assert (=> d!2283447 (= lt!2615351 (lemmaConcatPreservesForall!1945 (exprs!8712 lt!2615306) (exprs!8712 ct2!378) lambda!457939))))

(declare-fun lt!2615350 () Unit!165493)

(assert (=> d!2283447 (= lt!2615350 (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457939))))

(declare-fun lt!2615349 () Unit!165493)

(declare-fun choose!57297 (Regex!19272 Context!16424 Context!16424 Context!16424 C!38818) Unit!165493)

(assert (=> d!2283447 (= lt!2615349 (choose!57297 (regOne!39056 r1!2370) lt!2615306 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2283447 (validRegex!9868 (regOne!39056 r1!2370))))

(assert (=> d!2283447 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!131 (regOne!39056 r1!2370) lt!2615306 ct2!378 cWitness!61 c!10362) lt!2615349)))

(declare-fun bs!1920796 () Bool)

(assert (= bs!1920796 d!2283447))

(declare-fun m!8023862 () Bool)

(assert (=> bs!1920796 m!8023862))

(declare-fun m!8023864 () Bool)

(assert (=> bs!1920796 m!8023864))

(declare-fun m!8023866 () Bool)

(assert (=> bs!1920796 m!8023866))

(declare-fun m!8023868 () Bool)

(assert (=> bs!1920796 m!8023868))

(declare-fun m!8023870 () Bool)

(assert (=> bs!1920796 m!8023870))

(declare-fun m!8023872 () Bool)

(assert (=> bs!1920796 m!8023872))

(declare-fun m!8023874 () Bool)

(assert (=> bs!1920796 m!8023874))

(assert (=> bs!1920796 m!8023778))

(assert (=> b!7369653 d!2283447))

(declare-fun d!2283453 () Bool)

(assert (=> d!2283453 (forall!18078 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)) lambda!457920)))

(declare-fun lt!2615354 () Unit!165493)

(declare-fun choose!57298 (List!71768 List!71768 Int) Unit!165493)

(assert (=> d!2283453 (= lt!2615354 (choose!57298 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457920))))

(assert (=> d!2283453 (forall!18078 (exprs!8712 cWitness!61) lambda!457920)))

(assert (=> d!2283453 (= (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457920) lt!2615354)))

(declare-fun bs!1920797 () Bool)

(assert (= bs!1920797 d!2283453))

(assert (=> bs!1920797 m!8023778))

(assert (=> bs!1920797 m!8023778))

(declare-fun m!8023876 () Bool)

(assert (=> bs!1920797 m!8023876))

(declare-fun m!8023878 () Bool)

(assert (=> bs!1920797 m!8023878))

(declare-fun m!8023880 () Bool)

(assert (=> bs!1920797 m!8023880))

(assert (=> b!7369653 d!2283453))

(declare-fun d!2283455 () Bool)

(assert (=> d!2283455 (forall!18078 (++!17088 lt!2615302 (exprs!8712 ct2!378)) lambda!457920)))

(declare-fun lt!2615355 () Unit!165493)

(assert (=> d!2283455 (= lt!2615355 (choose!57298 lt!2615302 (exprs!8712 ct2!378) lambda!457920))))

(assert (=> d!2283455 (forall!18078 lt!2615302 lambda!457920)))

(assert (=> d!2283455 (= (lemmaConcatPreservesForall!1945 lt!2615302 (exprs!8712 ct2!378) lambda!457920) lt!2615355)))

(declare-fun bs!1920798 () Bool)

(assert (= bs!1920798 d!2283455))

(assert (=> bs!1920798 m!8023772))

(assert (=> bs!1920798 m!8023772))

(declare-fun m!8023882 () Bool)

(assert (=> bs!1920798 m!8023882))

(declare-fun m!8023884 () Bool)

(assert (=> bs!1920798 m!8023884))

(declare-fun m!8023886 () Bool)

(assert (=> bs!1920798 m!8023886))

(assert (=> b!7369653 d!2283455))

(declare-fun b!7369787 () Bool)

(declare-fun e!4412087 () List!71768)

(assert (=> b!7369787 (= e!4412087 (exprs!8712 ct2!378))))

(declare-fun b!7369789 () Bool)

(declare-fun res!2973907 () Bool)

(declare-fun e!4412088 () Bool)

(assert (=> b!7369789 (=> (not res!2973907) (not e!4412088))))

(declare-fun lt!2615360 () List!71768)

(declare-fun size!42130 (List!71768) Int)

(assert (=> b!7369789 (= res!2973907 (= (size!42130 lt!2615360) (+ (size!42130 (exprs!8712 cWitness!61)) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7369790 () Bool)

(assert (=> b!7369790 (= e!4412088 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615360 (exprs!8712 cWitness!61))))))

(declare-fun b!7369788 () Bool)

(assert (=> b!7369788 (= e!4412087 (Cons!71644 (h!78092 (exprs!8712 cWitness!61)) (++!17088 (t!386227 (exprs!8712 cWitness!61)) (exprs!8712 ct2!378))))))

(declare-fun d!2283457 () Bool)

(assert (=> d!2283457 e!4412088))

(declare-fun res!2973906 () Bool)

(assert (=> d!2283457 (=> (not res!2973906) (not e!4412088))))

(declare-fun content!15152 (List!71768) (Set Regex!19272))

(assert (=> d!2283457 (= res!2973906 (= (content!15152 lt!2615360) (set.union (content!15152 (exprs!8712 cWitness!61)) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283457 (= lt!2615360 e!4412087)))

(declare-fun c!1369638 () Bool)

(assert (=> d!2283457 (= c!1369638 (is-Nil!71644 (exprs!8712 cWitness!61)))))

(assert (=> d!2283457 (= (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)) lt!2615360)))

(assert (= (and d!2283457 c!1369638) b!7369787))

(assert (= (and d!2283457 (not c!1369638)) b!7369788))

(assert (= (and d!2283457 res!2973906) b!7369789))

(assert (= (and b!7369789 res!2973907) b!7369790))

(declare-fun m!8023888 () Bool)

(assert (=> b!7369789 m!8023888))

(declare-fun m!8023890 () Bool)

(assert (=> b!7369789 m!8023890))

(declare-fun m!8023892 () Bool)

(assert (=> b!7369789 m!8023892))

(declare-fun m!8023894 () Bool)

(assert (=> b!7369788 m!8023894))

(declare-fun m!8023896 () Bool)

(assert (=> d!2283457 m!8023896))

(declare-fun m!8023898 () Bool)

(assert (=> d!2283457 m!8023898))

(declare-fun m!8023900 () Bool)

(assert (=> d!2283457 m!8023900))

(assert (=> b!7369653 d!2283457))

(declare-fun b!7369795 () Bool)

(declare-fun e!4412092 () (Set Context!16424))

(declare-fun call!676671 () (Set Context!16424))

(declare-fun call!676672 () (Set Context!16424))

(assert (=> b!7369795 (= e!4412092 (set.union call!676671 call!676672))))

(declare-fun bm!676663 () Bool)

(declare-fun call!676673 () (Set Context!16424))

(assert (=> bm!676663 (= call!676672 call!676673)))

(declare-fun b!7369796 () Bool)

(declare-fun e!4412094 () (Set Context!16424))

(declare-fun call!676669 () (Set Context!16424))

(assert (=> b!7369796 (= e!4412094 call!676669)))

(declare-fun bm!676664 () Bool)

(declare-fun call!676668 () List!71768)

(declare-fun call!676670 () List!71768)

(assert (=> bm!676664 (= call!676668 call!676670)))

(declare-fun b!7369797 () Bool)

(declare-fun c!1369641 () Bool)

(assert (=> b!7369797 (= c!1369641 (is-Star!19272 (regOne!39056 r1!2370)))))

(declare-fun e!4412096 () (Set Context!16424))

(assert (=> b!7369797 (= e!4412096 e!4412094)))

(declare-fun b!7369798 () Bool)

(declare-fun e!4412093 () (Set Context!16424))

(assert (=> b!7369798 (= e!4412093 (set.union call!676671 call!676673))))

(declare-fun b!7369799 () Bool)

(assert (=> b!7369799 (= e!4412094 (as set.empty (Set Context!16424)))))

(declare-fun b!7369800 () Bool)

(assert (=> b!7369800 (= e!4412096 call!676669)))

(declare-fun bm!676665 () Bool)

(declare-fun c!1369639 () Bool)

(assert (=> bm!676665 (= call!676671 (derivationStepZipperDown!3098 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))) (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670)) c!10362))))

(declare-fun b!7369801 () Bool)

(declare-fun e!4412095 () (Set Context!16424))

(assert (=> b!7369801 (= e!4412095 (set.insert (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (as set.empty (Set Context!16424))))))

(declare-fun b!7369802 () Bool)

(assert (=> b!7369802 (= e!4412092 e!4412096)))

(declare-fun c!1369643 () Bool)

(assert (=> b!7369802 (= c!1369643 (is-Concat!28117 (regOne!39056 r1!2370)))))

(declare-fun c!1369640 () Bool)

(declare-fun bm!676666 () Bool)

(assert (=> bm!676666 (= call!676670 ($colon$colon!3254 (exprs!8712 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378)))) (ite (or c!1369640 c!1369643) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370))))))

(declare-fun b!7369803 () Bool)

(declare-fun e!4412091 () Bool)

(assert (=> b!7369803 (= e!4412091 (nullable!8348 (regOne!39056 (regOne!39056 r1!2370))))))

(declare-fun bm!676667 () Bool)

(assert (=> bm!676667 (= call!676673 (derivationStepZipperDown!3098 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))) (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668)) c!10362))))

(declare-fun b!7369804 () Bool)

(assert (=> b!7369804 (= c!1369640 e!4412091)))

(declare-fun res!2973912 () Bool)

(assert (=> b!7369804 (=> (not res!2973912) (not e!4412091))))

(assert (=> b!7369804 (= res!2973912 (is-Concat!28117 (regOne!39056 r1!2370)))))

(assert (=> b!7369804 (= e!4412093 e!4412092)))

(declare-fun d!2283459 () Bool)

(declare-fun c!1369642 () Bool)

(assert (=> d!2283459 (= c!1369642 (and (is-ElementMatch!19272 (regOne!39056 r1!2370)) (= (c!1369608 (regOne!39056 r1!2370)) c!10362)))))

(assert (=> d!2283459 (= (derivationStepZipperDown!3098 (regOne!39056 r1!2370) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) c!10362) e!4412095)))

(declare-fun b!7369805 () Bool)

(assert (=> b!7369805 (= e!4412095 e!4412093)))

(assert (=> b!7369805 (= c!1369639 (is-Union!19272 (regOne!39056 r1!2370)))))

(declare-fun bm!676668 () Bool)

(assert (=> bm!676668 (= call!676669 call!676672)))

(assert (= (and d!2283459 c!1369642) b!7369801))

(assert (= (and d!2283459 (not c!1369642)) b!7369805))

(assert (= (and b!7369805 c!1369639) b!7369798))

(assert (= (and b!7369805 (not c!1369639)) b!7369804))

(assert (= (and b!7369804 res!2973912) b!7369803))

(assert (= (and b!7369804 c!1369640) b!7369795))

(assert (= (and b!7369804 (not c!1369640)) b!7369802))

(assert (= (and b!7369802 c!1369643) b!7369800))

(assert (= (and b!7369802 (not c!1369643)) b!7369797))

(assert (= (and b!7369797 c!1369641) b!7369796))

(assert (= (and b!7369797 (not c!1369641)) b!7369799))

(assert (= (or b!7369800 b!7369796) bm!676664))

(assert (= (or b!7369800 b!7369796) bm!676668))

(assert (= (or b!7369795 bm!676668) bm!676663))

(assert (= (or b!7369795 bm!676664) bm!676666))

(assert (= (or b!7369798 bm!676663) bm!676667))

(assert (= (or b!7369798 b!7369795) bm!676665))

(declare-fun m!8023902 () Bool)

(assert (=> b!7369803 m!8023902))

(declare-fun m!8023904 () Bool)

(assert (=> bm!676665 m!8023904))

(declare-fun m!8023906 () Bool)

(assert (=> bm!676667 m!8023906))

(declare-fun m!8023908 () Bool)

(assert (=> b!7369801 m!8023908))

(declare-fun m!8023910 () Bool)

(assert (=> bm!676666 m!8023910))

(assert (=> b!7369653 d!2283459))

(declare-fun b!7369806 () Bool)

(declare-fun e!4412097 () List!71768)

(assert (=> b!7369806 (= e!4412097 (exprs!8712 ct2!378))))

(declare-fun b!7369808 () Bool)

(declare-fun res!2973914 () Bool)

(declare-fun e!4412098 () Bool)

(assert (=> b!7369808 (=> (not res!2973914) (not e!4412098))))

(declare-fun lt!2615361 () List!71768)

(assert (=> b!7369808 (= res!2973914 (= (size!42130 lt!2615361) (+ (size!42130 lt!2615302) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7369809 () Bool)

(assert (=> b!7369809 (= e!4412098 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615361 lt!2615302)))))

(declare-fun b!7369807 () Bool)

(assert (=> b!7369807 (= e!4412097 (Cons!71644 (h!78092 lt!2615302) (++!17088 (t!386227 lt!2615302) (exprs!8712 ct2!378))))))

(declare-fun d!2283461 () Bool)

(assert (=> d!2283461 e!4412098))

(declare-fun res!2973913 () Bool)

(assert (=> d!2283461 (=> (not res!2973913) (not e!4412098))))

(assert (=> d!2283461 (= res!2973913 (= (content!15152 lt!2615361) (set.union (content!15152 lt!2615302) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283461 (= lt!2615361 e!4412097)))

(declare-fun c!1369644 () Bool)

(assert (=> d!2283461 (= c!1369644 (is-Nil!71644 lt!2615302))))

(assert (=> d!2283461 (= (++!17088 lt!2615302 (exprs!8712 ct2!378)) lt!2615361)))

(assert (= (and d!2283461 c!1369644) b!7369806))

(assert (= (and d!2283461 (not c!1369644)) b!7369807))

(assert (= (and d!2283461 res!2973913) b!7369808))

(assert (= (and b!7369808 res!2973914) b!7369809))

(declare-fun m!8023912 () Bool)

(assert (=> b!7369808 m!8023912))

(declare-fun m!8023914 () Bool)

(assert (=> b!7369808 m!8023914))

(assert (=> b!7369808 m!8023892))

(declare-fun m!8023916 () Bool)

(assert (=> b!7369807 m!8023916))

(declare-fun m!8023918 () Bool)

(assert (=> d!2283461 m!8023918))

(declare-fun m!8023920 () Bool)

(assert (=> d!2283461 m!8023920))

(assert (=> d!2283461 m!8023900))

(assert (=> b!7369653 d!2283461))

(declare-fun d!2283463 () Bool)

(declare-fun nullableFct!3337 (Regex!19272) Bool)

(assert (=> d!2283463 (= (nullable!8348 (regOne!39056 r1!2370)) (nullableFct!3337 (regOne!39056 r1!2370)))))

(declare-fun bs!1920799 () Bool)

(assert (= bs!1920799 d!2283463))

(declare-fun m!8023922 () Bool)

(assert (=> bs!1920799 m!8023922))

(assert (=> b!7369663 d!2283463))

(declare-fun b!7369810 () Bool)

(declare-fun e!4412100 () (Set Context!16424))

(declare-fun call!676677 () (Set Context!16424))

(declare-fun call!676678 () (Set Context!16424))

(assert (=> b!7369810 (= e!4412100 (set.union call!676677 call!676678))))

(declare-fun bm!676669 () Bool)

(declare-fun call!676679 () (Set Context!16424))

(assert (=> bm!676669 (= call!676678 call!676679)))

(declare-fun b!7369811 () Bool)

(declare-fun e!4412102 () (Set Context!16424))

(declare-fun call!676675 () (Set Context!16424))

(assert (=> b!7369811 (= e!4412102 call!676675)))

(declare-fun bm!676670 () Bool)

(declare-fun call!676674 () List!71768)

(declare-fun call!676676 () List!71768)

(assert (=> bm!676670 (= call!676674 call!676676)))

(declare-fun b!7369812 () Bool)

(declare-fun c!1369647 () Bool)

(assert (=> b!7369812 (= c!1369647 (is-Star!19272 r1!2370))))

(declare-fun e!4412104 () (Set Context!16424))

(assert (=> b!7369812 (= e!4412104 e!4412102)))

(declare-fun b!7369813 () Bool)

(declare-fun e!4412101 () (Set Context!16424))

(assert (=> b!7369813 (= e!4412101 (set.union call!676677 call!676679))))

(declare-fun b!7369814 () Bool)

(assert (=> b!7369814 (= e!4412102 (as set.empty (Set Context!16424)))))

(declare-fun b!7369815 () Bool)

(assert (=> b!7369815 (= e!4412104 call!676675)))

(declare-fun c!1369645 () Bool)

(declare-fun bm!676671 () Bool)

(assert (=> bm!676671 (= call!676677 (derivationStepZipperDown!3098 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)) (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676)) c!10362))))

(declare-fun b!7369816 () Bool)

(declare-fun e!4412103 () (Set Context!16424))

(assert (=> b!7369816 (= e!4412103 (set.insert (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (as set.empty (Set Context!16424))))))

(declare-fun b!7369817 () Bool)

(assert (=> b!7369817 (= e!4412100 e!4412104)))

(declare-fun c!1369649 () Bool)

(assert (=> b!7369817 (= c!1369649 (is-Concat!28117 r1!2370))))

(declare-fun c!1369646 () Bool)

(declare-fun bm!676672 () Bool)

(assert (=> bm!676672 (= call!676676 ($colon$colon!3254 (exprs!8712 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)))) (ite (or c!1369646 c!1369649) (regTwo!39056 r1!2370) r1!2370)))))

(declare-fun b!7369818 () Bool)

(declare-fun e!4412099 () Bool)

(assert (=> b!7369818 (= e!4412099 (nullable!8348 (regOne!39056 r1!2370)))))

(declare-fun bm!676673 () Bool)

(assert (=> bm!676673 (= call!676679 (derivationStepZipperDown!3098 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))) (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674)) c!10362))))

(declare-fun b!7369819 () Bool)

(assert (=> b!7369819 (= c!1369646 e!4412099)))

(declare-fun res!2973915 () Bool)

(assert (=> b!7369819 (=> (not res!2973915) (not e!4412099))))

(assert (=> b!7369819 (= res!2973915 (is-Concat!28117 r1!2370))))

(assert (=> b!7369819 (= e!4412101 e!4412100)))

(declare-fun d!2283465 () Bool)

(declare-fun c!1369648 () Bool)

(assert (=> d!2283465 (= c!1369648 (and (is-ElementMatch!19272 r1!2370) (= (c!1369608 r1!2370) c!10362)))))

(assert (=> d!2283465 (= (derivationStepZipperDown!3098 r1!2370 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) c!10362) e!4412103)))

(declare-fun b!7369820 () Bool)

(assert (=> b!7369820 (= e!4412103 e!4412101)))

(assert (=> b!7369820 (= c!1369645 (is-Union!19272 r1!2370))))

(declare-fun bm!676674 () Bool)

(assert (=> bm!676674 (= call!676675 call!676678)))

(assert (= (and d!2283465 c!1369648) b!7369816))

(assert (= (and d!2283465 (not c!1369648)) b!7369820))

(assert (= (and b!7369820 c!1369645) b!7369813))

(assert (= (and b!7369820 (not c!1369645)) b!7369819))

(assert (= (and b!7369819 res!2973915) b!7369818))

(assert (= (and b!7369819 c!1369646) b!7369810))

(assert (= (and b!7369819 (not c!1369646)) b!7369817))

(assert (= (and b!7369817 c!1369649) b!7369815))

(assert (= (and b!7369817 (not c!1369649)) b!7369812))

(assert (= (and b!7369812 c!1369647) b!7369811))

(assert (= (and b!7369812 (not c!1369647)) b!7369814))

(assert (= (or b!7369815 b!7369811) bm!676670))

(assert (= (or b!7369815 b!7369811) bm!676674))

(assert (= (or b!7369810 bm!676674) bm!676669))

(assert (= (or b!7369810 bm!676670) bm!676672))

(assert (= (or b!7369813 bm!676669) bm!676673))

(assert (= (or b!7369813 b!7369810) bm!676671))

(assert (=> b!7369818 m!8023752))

(declare-fun m!8023924 () Bool)

(assert (=> bm!676671 m!8023924))

(declare-fun m!8023926 () Bool)

(assert (=> bm!676673 m!8023926))

(declare-fun m!8023928 () Bool)

(assert (=> b!7369816 m!8023928))

(declare-fun m!8023930 () Bool)

(assert (=> bm!676672 m!8023930))

(assert (=> b!7369660 d!2283465))

(declare-fun b!7369821 () Bool)

(declare-fun e!4412105 () List!71768)

(assert (=> b!7369821 (= e!4412105 (exprs!8712 ct2!378))))

(declare-fun b!7369823 () Bool)

(declare-fun res!2973917 () Bool)

(declare-fun e!4412106 () Bool)

(assert (=> b!7369823 (=> (not res!2973917) (not e!4412106))))

(declare-fun lt!2615362 () List!71768)

(assert (=> b!7369823 (= res!2973917 (= (size!42130 lt!2615362) (+ (size!42130 (exprs!8712 ct1!282)) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7369824 () Bool)

(assert (=> b!7369824 (= e!4412106 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615362 (exprs!8712 ct1!282))))))

(declare-fun b!7369822 () Bool)

(assert (=> b!7369822 (= e!4412105 (Cons!71644 (h!78092 (exprs!8712 ct1!282)) (++!17088 (t!386227 (exprs!8712 ct1!282)) (exprs!8712 ct2!378))))))

(declare-fun d!2283467 () Bool)

(assert (=> d!2283467 e!4412106))

(declare-fun res!2973916 () Bool)

(assert (=> d!2283467 (=> (not res!2973916) (not e!4412106))))

(assert (=> d!2283467 (= res!2973916 (= (content!15152 lt!2615362) (set.union (content!15152 (exprs!8712 ct1!282)) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283467 (= lt!2615362 e!4412105)))

(declare-fun c!1369650 () Bool)

(assert (=> d!2283467 (= c!1369650 (is-Nil!71644 (exprs!8712 ct1!282)))))

(assert (=> d!2283467 (= (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)) lt!2615362)))

(assert (= (and d!2283467 c!1369650) b!7369821))

(assert (= (and d!2283467 (not c!1369650)) b!7369822))

(assert (= (and d!2283467 res!2973916) b!7369823))

(assert (= (and b!7369823 res!2973917) b!7369824))

(declare-fun m!8023932 () Bool)

(assert (=> b!7369823 m!8023932))

(declare-fun m!8023934 () Bool)

(assert (=> b!7369823 m!8023934))

(assert (=> b!7369823 m!8023892))

(declare-fun m!8023936 () Bool)

(assert (=> b!7369822 m!8023936))

(declare-fun m!8023938 () Bool)

(assert (=> d!2283467 m!8023938))

(declare-fun m!8023940 () Bool)

(assert (=> d!2283467 m!8023940))

(assert (=> d!2283467 m!8023900))

(assert (=> b!7369660 d!2283467))

(declare-fun d!2283469 () Bool)

(assert (=> d!2283469 (forall!18078 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)) lambda!457920)))

(declare-fun lt!2615364 () Unit!165493)

(assert (=> d!2283469 (= lt!2615364 (choose!57298 (exprs!8712 ct1!282) (exprs!8712 ct2!378) lambda!457920))))

(assert (=> d!2283469 (forall!18078 (exprs!8712 ct1!282) lambda!457920)))

(assert (=> d!2283469 (= (lemmaConcatPreservesForall!1945 (exprs!8712 ct1!282) (exprs!8712 ct2!378) lambda!457920) lt!2615364)))

(declare-fun bs!1920800 () Bool)

(assert (= bs!1920800 d!2283469))

(assert (=> bs!1920800 m!8023754))

(assert (=> bs!1920800 m!8023754))

(declare-fun m!8023942 () Bool)

(assert (=> bs!1920800 m!8023942))

(declare-fun m!8023944 () Bool)

(assert (=> bs!1920800 m!8023944))

(declare-fun m!8023946 () Bool)

(assert (=> bs!1920800 m!8023946))

(assert (=> b!7369660 d!2283469))

(declare-fun b!7369829 () Bool)

(declare-fun e!4412110 () (Set Context!16424))

(declare-fun call!676683 () (Set Context!16424))

(declare-fun call!676684 () (Set Context!16424))

(assert (=> b!7369829 (= e!4412110 (set.union call!676683 call!676684))))

(declare-fun bm!676675 () Bool)

(declare-fun call!676685 () (Set Context!16424))

(assert (=> bm!676675 (= call!676684 call!676685)))

(declare-fun b!7369830 () Bool)

(declare-fun e!4412112 () (Set Context!16424))

(declare-fun call!676681 () (Set Context!16424))

(assert (=> b!7369830 (= e!4412112 call!676681)))

(declare-fun bm!676676 () Bool)

(declare-fun call!676680 () List!71768)

(declare-fun call!676682 () List!71768)

(assert (=> bm!676676 (= call!676680 call!676682)))

(declare-fun b!7369831 () Bool)

(declare-fun c!1369654 () Bool)

(assert (=> b!7369831 (= c!1369654 (is-Star!19272 (regTwo!39056 r1!2370)))))

(declare-fun e!4412114 () (Set Context!16424))

(assert (=> b!7369831 (= e!4412114 e!4412112)))

(declare-fun b!7369832 () Bool)

(declare-fun e!4412111 () (Set Context!16424))

(assert (=> b!7369832 (= e!4412111 (set.union call!676683 call!676685))))

(declare-fun b!7369833 () Bool)

(assert (=> b!7369833 (= e!4412112 (as set.empty (Set Context!16424)))))

(declare-fun b!7369834 () Bool)

(assert (=> b!7369834 (= e!4412114 call!676681)))

(declare-fun c!1369652 () Bool)

(declare-fun bm!676677 () Bool)

(assert (=> bm!676677 (= call!676683 (derivationStepZipperDown!3098 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))) (ite c!1369652 ct1!282 (Context!16425 call!676682)) c!10362))))

(declare-fun b!7369835 () Bool)

(declare-fun e!4412113 () (Set Context!16424))

(assert (=> b!7369835 (= e!4412113 (set.insert ct1!282 (as set.empty (Set Context!16424))))))

(declare-fun b!7369836 () Bool)

(assert (=> b!7369836 (= e!4412110 e!4412114)))

(declare-fun c!1369656 () Bool)

(assert (=> b!7369836 (= c!1369656 (is-Concat!28117 (regTwo!39056 r1!2370)))))

(declare-fun c!1369653 () Bool)

(declare-fun bm!676678 () Bool)

(assert (=> bm!676678 (= call!676682 ($colon$colon!3254 (exprs!8712 ct1!282) (ite (or c!1369653 c!1369656) (regTwo!39056 (regTwo!39056 r1!2370)) (regTwo!39056 r1!2370))))))

(declare-fun b!7369837 () Bool)

(declare-fun e!4412109 () Bool)

(assert (=> b!7369837 (= e!4412109 (nullable!8348 (regOne!39056 (regTwo!39056 r1!2370))))))

(declare-fun bm!676679 () Bool)

(assert (=> bm!676679 (= call!676685 (derivationStepZipperDown!3098 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))) (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680)) c!10362))))

(declare-fun b!7369838 () Bool)

(assert (=> b!7369838 (= c!1369653 e!4412109)))

(declare-fun res!2973920 () Bool)

(assert (=> b!7369838 (=> (not res!2973920) (not e!4412109))))

(assert (=> b!7369838 (= res!2973920 (is-Concat!28117 (regTwo!39056 r1!2370)))))

(assert (=> b!7369838 (= e!4412111 e!4412110)))

(declare-fun d!2283471 () Bool)

(declare-fun c!1369655 () Bool)

(assert (=> d!2283471 (= c!1369655 (and (is-ElementMatch!19272 (regTwo!39056 r1!2370)) (= (c!1369608 (regTwo!39056 r1!2370)) c!10362)))))

(assert (=> d!2283471 (= (derivationStepZipperDown!3098 (regTwo!39056 r1!2370) ct1!282 c!10362) e!4412113)))

(declare-fun b!7369839 () Bool)

(assert (=> b!7369839 (= e!4412113 e!4412111)))

(assert (=> b!7369839 (= c!1369652 (is-Union!19272 (regTwo!39056 r1!2370)))))

(declare-fun bm!676680 () Bool)

(assert (=> bm!676680 (= call!676681 call!676684)))

(assert (= (and d!2283471 c!1369655) b!7369835))

(assert (= (and d!2283471 (not c!1369655)) b!7369839))

(assert (= (and b!7369839 c!1369652) b!7369832))

(assert (= (and b!7369839 (not c!1369652)) b!7369838))

(assert (= (and b!7369838 res!2973920) b!7369837))

(assert (= (and b!7369838 c!1369653) b!7369829))

(assert (= (and b!7369838 (not c!1369653)) b!7369836))

(assert (= (and b!7369836 c!1369656) b!7369834))

(assert (= (and b!7369836 (not c!1369656)) b!7369831))

(assert (= (and b!7369831 c!1369654) b!7369830))

(assert (= (and b!7369831 (not c!1369654)) b!7369833))

(assert (= (or b!7369834 b!7369830) bm!676676))

(assert (= (or b!7369834 b!7369830) bm!676680))

(assert (= (or b!7369829 bm!676680) bm!676675))

(assert (= (or b!7369829 bm!676676) bm!676678))

(assert (= (or b!7369832 bm!676675) bm!676679))

(assert (= (or b!7369832 b!7369829) bm!676677))

(declare-fun m!8023956 () Bool)

(assert (=> b!7369837 m!8023956))

(declare-fun m!8023962 () Bool)

(assert (=> bm!676677 m!8023962))

(declare-fun m!8023966 () Bool)

(assert (=> bm!676679 m!8023966))

(assert (=> b!7369835 m!8023834))

(declare-fun m!8023968 () Bool)

(assert (=> bm!676678 m!8023968))

(assert (=> b!7369659 d!2283471))

(declare-fun b!7369840 () Bool)

(declare-fun e!4412116 () (Set Context!16424))

(declare-fun call!676689 () (Set Context!16424))

(declare-fun call!676690 () (Set Context!16424))

(assert (=> b!7369840 (= e!4412116 (set.union call!676689 call!676690))))

(declare-fun bm!676681 () Bool)

(declare-fun call!676691 () (Set Context!16424))

(assert (=> bm!676681 (= call!676690 call!676691)))

(declare-fun b!7369841 () Bool)

(declare-fun e!4412118 () (Set Context!16424))

(declare-fun call!676687 () (Set Context!16424))

(assert (=> b!7369841 (= e!4412118 call!676687)))

(declare-fun bm!676682 () Bool)

(declare-fun call!676686 () List!71768)

(declare-fun call!676688 () List!71768)

(assert (=> bm!676682 (= call!676686 call!676688)))

(declare-fun b!7369842 () Bool)

(declare-fun c!1369659 () Bool)

(assert (=> b!7369842 (= c!1369659 (is-Star!19272 (regOne!39056 r1!2370)))))

(declare-fun e!4412120 () (Set Context!16424))

(assert (=> b!7369842 (= e!4412120 e!4412118)))

(declare-fun b!7369843 () Bool)

(declare-fun e!4412117 () (Set Context!16424))

(assert (=> b!7369843 (= e!4412117 (set.union call!676689 call!676691))))

(declare-fun b!7369844 () Bool)

(assert (=> b!7369844 (= e!4412118 (as set.empty (Set Context!16424)))))

(declare-fun b!7369845 () Bool)

(assert (=> b!7369845 (= e!4412120 call!676687)))

(declare-fun c!1369657 () Bool)

(declare-fun bm!676683 () Bool)

(assert (=> bm!676683 (= call!676689 (derivationStepZipperDown!3098 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))) (ite c!1369657 lt!2615306 (Context!16425 call!676688)) c!10362))))

(declare-fun b!7369846 () Bool)

(declare-fun e!4412119 () (Set Context!16424))

(assert (=> b!7369846 (= e!4412119 (set.insert lt!2615306 (as set.empty (Set Context!16424))))))

(declare-fun b!7369847 () Bool)

(assert (=> b!7369847 (= e!4412116 e!4412120)))

(declare-fun c!1369661 () Bool)

(assert (=> b!7369847 (= c!1369661 (is-Concat!28117 (regOne!39056 r1!2370)))))

(declare-fun bm!676684 () Bool)

(declare-fun c!1369658 () Bool)

(assert (=> bm!676684 (= call!676688 ($colon$colon!3254 (exprs!8712 lt!2615306) (ite (or c!1369658 c!1369661) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370))))))

(declare-fun b!7369848 () Bool)

(declare-fun e!4412115 () Bool)

(assert (=> b!7369848 (= e!4412115 (nullable!8348 (regOne!39056 (regOne!39056 r1!2370))))))

(declare-fun bm!676685 () Bool)

(assert (=> bm!676685 (= call!676691 (derivationStepZipperDown!3098 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))) (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686)) c!10362))))

(declare-fun b!7369849 () Bool)

(assert (=> b!7369849 (= c!1369658 e!4412115)))

(declare-fun res!2973921 () Bool)

(assert (=> b!7369849 (=> (not res!2973921) (not e!4412115))))

(assert (=> b!7369849 (= res!2973921 (is-Concat!28117 (regOne!39056 r1!2370)))))

(assert (=> b!7369849 (= e!4412117 e!4412116)))

(declare-fun d!2283475 () Bool)

(declare-fun c!1369660 () Bool)

(assert (=> d!2283475 (= c!1369660 (and (is-ElementMatch!19272 (regOne!39056 r1!2370)) (= (c!1369608 (regOne!39056 r1!2370)) c!10362)))))

(assert (=> d!2283475 (= (derivationStepZipperDown!3098 (regOne!39056 r1!2370) lt!2615306 c!10362) e!4412119)))

(declare-fun b!7369850 () Bool)

(assert (=> b!7369850 (= e!4412119 e!4412117)))

(assert (=> b!7369850 (= c!1369657 (is-Union!19272 (regOne!39056 r1!2370)))))

(declare-fun bm!676686 () Bool)

(assert (=> bm!676686 (= call!676687 call!676690)))

(assert (= (and d!2283475 c!1369660) b!7369846))

(assert (= (and d!2283475 (not c!1369660)) b!7369850))

(assert (= (and b!7369850 c!1369657) b!7369843))

(assert (= (and b!7369850 (not c!1369657)) b!7369849))

(assert (= (and b!7369849 res!2973921) b!7369848))

(assert (= (and b!7369849 c!1369658) b!7369840))

(assert (= (and b!7369849 (not c!1369658)) b!7369847))

(assert (= (and b!7369847 c!1369661) b!7369845))

(assert (= (and b!7369847 (not c!1369661)) b!7369842))

(assert (= (and b!7369842 c!1369659) b!7369841))

(assert (= (and b!7369842 (not c!1369659)) b!7369844))

(assert (= (or b!7369845 b!7369841) bm!676682))

(assert (= (or b!7369845 b!7369841) bm!676686))

(assert (= (or b!7369840 bm!676686) bm!676681))

(assert (= (or b!7369840 bm!676682) bm!676684))

(assert (= (or b!7369843 bm!676681) bm!676685))

(assert (= (or b!7369843 b!7369840) bm!676683))

(assert (=> b!7369848 m!8023902))

(declare-fun m!8023970 () Bool)

(assert (=> bm!676683 m!8023970))

(declare-fun m!8023972 () Bool)

(assert (=> bm!676685 m!8023972))

(declare-fun m!8023974 () Bool)

(assert (=> b!7369846 m!8023974))

(declare-fun m!8023976 () Bool)

(assert (=> bm!676684 m!8023976))

(assert (=> b!7369659 d!2283475))

(declare-fun d!2283477 () Bool)

(assert (=> d!2283477 (= ($colon$colon!3254 (exprs!8712 ct1!282) (regTwo!39056 r1!2370)) (Cons!71644 (regTwo!39056 r1!2370) (exprs!8712 ct1!282)))))

(assert (=> b!7369659 d!2283477))

(declare-fun b!7369861 () Bool)

(declare-fun e!4412123 () Bool)

(assert (=> b!7369861 (= e!4412123 tp_is_empty!48789)))

(declare-fun b!7369863 () Bool)

(declare-fun tp!2094978 () Bool)

(assert (=> b!7369863 (= e!4412123 tp!2094978)))

(declare-fun b!7369864 () Bool)

(declare-fun tp!2094977 () Bool)

(declare-fun tp!2094975 () Bool)

(assert (=> b!7369864 (= e!4412123 (and tp!2094977 tp!2094975))))

(declare-fun b!7369862 () Bool)

(declare-fun tp!2094976 () Bool)

(declare-fun tp!2094974 () Bool)

(assert (=> b!7369862 (= e!4412123 (and tp!2094976 tp!2094974))))

(assert (=> b!7369651 (= tp!2094938 e!4412123)))

(assert (= (and b!7369651 (is-ElementMatch!19272 (regOne!39057 r1!2370))) b!7369861))

(assert (= (and b!7369651 (is-Concat!28117 (regOne!39057 r1!2370))) b!7369862))

(assert (= (and b!7369651 (is-Star!19272 (regOne!39057 r1!2370))) b!7369863))

(assert (= (and b!7369651 (is-Union!19272 (regOne!39057 r1!2370))) b!7369864))

(declare-fun b!7369865 () Bool)

(declare-fun e!4412124 () Bool)

(assert (=> b!7369865 (= e!4412124 tp_is_empty!48789)))

(declare-fun b!7369867 () Bool)

(declare-fun tp!2094983 () Bool)

(assert (=> b!7369867 (= e!4412124 tp!2094983)))

(declare-fun b!7369868 () Bool)

(declare-fun tp!2094982 () Bool)

(declare-fun tp!2094980 () Bool)

(assert (=> b!7369868 (= e!4412124 (and tp!2094982 tp!2094980))))

(declare-fun b!7369866 () Bool)

(declare-fun tp!2094981 () Bool)

(declare-fun tp!2094979 () Bool)

(assert (=> b!7369866 (= e!4412124 (and tp!2094981 tp!2094979))))

(assert (=> b!7369651 (= tp!2094939 e!4412124)))

(assert (= (and b!7369651 (is-ElementMatch!19272 (regTwo!39057 r1!2370))) b!7369865))

(assert (= (and b!7369651 (is-Concat!28117 (regTwo!39057 r1!2370))) b!7369866))

(assert (= (and b!7369651 (is-Star!19272 (regTwo!39057 r1!2370))) b!7369867))

(assert (= (and b!7369651 (is-Union!19272 (regTwo!39057 r1!2370))) b!7369868))

(declare-fun b!7369873 () Bool)

(declare-fun e!4412127 () Bool)

(declare-fun tp!2094988 () Bool)

(declare-fun tp!2094989 () Bool)

(assert (=> b!7369873 (= e!4412127 (and tp!2094988 tp!2094989))))

(assert (=> b!7369658 (= tp!2094934 e!4412127)))

(assert (= (and b!7369658 (is-Cons!71644 (exprs!8712 cWitness!61))) b!7369873))

(declare-fun b!7369874 () Bool)

(declare-fun e!4412128 () Bool)

(assert (=> b!7369874 (= e!4412128 tp_is_empty!48789)))

(declare-fun b!7369876 () Bool)

(declare-fun tp!2094994 () Bool)

(assert (=> b!7369876 (= e!4412128 tp!2094994)))

(declare-fun b!7369877 () Bool)

(declare-fun tp!2094993 () Bool)

(declare-fun tp!2094991 () Bool)

(assert (=> b!7369877 (= e!4412128 (and tp!2094993 tp!2094991))))

(declare-fun b!7369875 () Bool)

(declare-fun tp!2094992 () Bool)

(declare-fun tp!2094990 () Bool)

(assert (=> b!7369875 (= e!4412128 (and tp!2094992 tp!2094990))))

(assert (=> b!7369654 (= tp!2094936 e!4412128)))

(assert (= (and b!7369654 (is-ElementMatch!19272 (reg!19601 r1!2370))) b!7369874))

(assert (= (and b!7369654 (is-Concat!28117 (reg!19601 r1!2370))) b!7369875))

(assert (= (and b!7369654 (is-Star!19272 (reg!19601 r1!2370))) b!7369876))

(assert (= (and b!7369654 (is-Union!19272 (reg!19601 r1!2370))) b!7369877))

(declare-fun b!7369878 () Bool)

(declare-fun e!4412129 () Bool)

(declare-fun tp!2094995 () Bool)

(declare-fun tp!2094996 () Bool)

(assert (=> b!7369878 (= e!4412129 (and tp!2094995 tp!2094996))))

(assert (=> b!7369656 (= tp!2094933 e!4412129)))

(assert (= (and b!7369656 (is-Cons!71644 (exprs!8712 ct2!378))) b!7369878))

(declare-fun b!7369879 () Bool)

(declare-fun e!4412130 () Bool)

(assert (=> b!7369879 (= e!4412130 tp_is_empty!48789)))

(declare-fun b!7369881 () Bool)

(declare-fun tp!2095001 () Bool)

(assert (=> b!7369881 (= e!4412130 tp!2095001)))

(declare-fun b!7369882 () Bool)

(declare-fun tp!2095000 () Bool)

(declare-fun tp!2094998 () Bool)

(assert (=> b!7369882 (= e!4412130 (and tp!2095000 tp!2094998))))

(declare-fun b!7369880 () Bool)

(declare-fun tp!2094999 () Bool)

(declare-fun tp!2094997 () Bool)

(assert (=> b!7369880 (= e!4412130 (and tp!2094999 tp!2094997))))

(assert (=> b!7369650 (= tp!2094935 e!4412130)))

(assert (= (and b!7369650 (is-ElementMatch!19272 (regOne!39056 r1!2370))) b!7369879))

(assert (= (and b!7369650 (is-Concat!28117 (regOne!39056 r1!2370))) b!7369880))

(assert (= (and b!7369650 (is-Star!19272 (regOne!39056 r1!2370))) b!7369881))

(assert (= (and b!7369650 (is-Union!19272 (regOne!39056 r1!2370))) b!7369882))

(declare-fun b!7369883 () Bool)

(declare-fun e!4412131 () Bool)

(assert (=> b!7369883 (= e!4412131 tp_is_empty!48789)))

(declare-fun b!7369885 () Bool)

(declare-fun tp!2095006 () Bool)

(assert (=> b!7369885 (= e!4412131 tp!2095006)))

(declare-fun b!7369886 () Bool)

(declare-fun tp!2095005 () Bool)

(declare-fun tp!2095003 () Bool)

(assert (=> b!7369886 (= e!4412131 (and tp!2095005 tp!2095003))))

(declare-fun b!7369884 () Bool)

(declare-fun tp!2095004 () Bool)

(declare-fun tp!2095002 () Bool)

(assert (=> b!7369884 (= e!4412131 (and tp!2095004 tp!2095002))))

(assert (=> b!7369650 (= tp!2094937 e!4412131)))

(assert (= (and b!7369650 (is-ElementMatch!19272 (regTwo!39056 r1!2370))) b!7369883))

(assert (= (and b!7369650 (is-Concat!28117 (regTwo!39056 r1!2370))) b!7369884))

(assert (= (and b!7369650 (is-Star!19272 (regTwo!39056 r1!2370))) b!7369885))

(assert (= (and b!7369650 (is-Union!19272 (regTwo!39056 r1!2370))) b!7369886))

(declare-fun b!7369887 () Bool)

(declare-fun e!4412132 () Bool)

(declare-fun tp!2095007 () Bool)

(declare-fun tp!2095008 () Bool)

(assert (=> b!7369887 (= e!4412132 (and tp!2095007 tp!2095008))))

(assert (=> b!7369655 (= tp!2094932 e!4412132)))

(assert (= (and b!7369655 (is-Cons!71644 (exprs!8712 ct1!282))) b!7369887))

(push 1)

(assert (not bm!676678))

(assert (not bm!676672))

(assert (not b!7369823))

(assert (not bm!676658))

(assert (not b!7369873))

(assert (not b!7369875))

(assert (not bm!676666))

(assert (not b!7369818))

(assert (not b!7369864))

(assert (not bm!676649))

(assert (not b!7369822))

(assert (not d!2283455))

(assert (not bm!676662))

(assert (not b!7369867))

(assert (not bm!676671))

(assert (not b!7369862))

(assert (not b!7369848))

(assert (not d!2283441))

(assert (not b!7369837))

(assert (not d!2283443))

(assert (not b!7369884))

(assert (not bm!676648))

(assert (not b!7369758))

(assert (not b!7369866))

(assert (not d!2283453))

(assert (not b!7369788))

(assert (not b!7369876))

(assert (not bm!676659))

(assert (not d!2283457))

(assert (not d!2283447))

(assert (not b!7369803))

(assert (not bm!676667))

(assert (not bm!676684))

(assert (not b!7369880))

(assert (not b!7369885))

(assert (not b!7369736))

(assert (not bm!676679))

(assert tp_is_empty!48789)

(assert (not bm!676665))

(assert (not bm!676661))

(assert (not d!2283463))

(assert (not d!2283469))

(assert (not b!7369807))

(assert (not d!2283467))

(assert (not bm!676647))

(assert (not b!7369863))

(assert (not bm!676673))

(assert (not b!7369808))

(assert (not b!7369887))

(assert (not d!2283439))

(assert (not bm!676685))

(assert (not b!7369877))

(assert (not b!7369868))

(assert (not b!7369886))

(assert (not b!7369767))

(assert (not bm!676677))

(assert (not bm!676683))

(assert (not b!7369882))

(assert (not b!7369789))

(assert (not b!7369878))

(assert (not b!7369881))

(assert (not d!2283461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2283511 () Bool)

(declare-fun res!2973957 () Bool)

(declare-fun e!4412223 () Bool)

(assert (=> d!2283511 (=> res!2973957 e!4412223)))

(assert (=> d!2283511 (= res!2973957 (is-Nil!71644 (exprs!8712 cWitness!61)))))

(assert (=> d!2283511 (= (forall!18078 (exprs!8712 cWitness!61) lambda!457932) e!4412223)))

(declare-fun b!7370050 () Bool)

(declare-fun e!4412224 () Bool)

(assert (=> b!7370050 (= e!4412223 e!4412224)))

(declare-fun res!2973958 () Bool)

(assert (=> b!7370050 (=> (not res!2973958) (not e!4412224))))

(declare-fun dynLambda!29524 (Int Regex!19272) Bool)

(assert (=> b!7370050 (= res!2973958 (dynLambda!29524 lambda!457932 (h!78092 (exprs!8712 cWitness!61))))))

(declare-fun b!7370051 () Bool)

(assert (=> b!7370051 (= e!4412224 (forall!18078 (t!386227 (exprs!8712 cWitness!61)) lambda!457932))))

(assert (= (and d!2283511 (not res!2973957)) b!7370050))

(assert (= (and b!7370050 res!2973958) b!7370051))

(declare-fun b_lambda!284411 () Bool)

(assert (=> (not b_lambda!284411) (not b!7370050)))

(declare-fun m!8024086 () Bool)

(assert (=> b!7370050 m!8024086))

(declare-fun m!8024088 () Bool)

(assert (=> b!7370051 m!8024088))

(assert (=> d!2283439 d!2283511))

(declare-fun b!7370052 () Bool)

(declare-fun e!4412226 () (Set Context!16424))

(declare-fun call!676749 () (Set Context!16424))

(declare-fun call!676750 () (Set Context!16424))

(assert (=> b!7370052 (= e!4412226 (set.union call!676749 call!676750))))

(declare-fun bm!676741 () Bool)

(declare-fun call!676751 () (Set Context!16424))

(assert (=> bm!676741 (= call!676750 call!676751)))

(declare-fun b!7370053 () Bool)

(declare-fun e!4412228 () (Set Context!16424))

(declare-fun call!676747 () (Set Context!16424))

(assert (=> b!7370053 (= e!4412228 call!676747)))

(declare-fun bm!676742 () Bool)

(declare-fun call!676746 () List!71768)

(declare-fun call!676748 () List!71768)

(assert (=> bm!676742 (= call!676746 call!676748)))

(declare-fun b!7370054 () Bool)

(declare-fun c!1369710 () Bool)

(assert (=> b!7370054 (= c!1369710 (is-Star!19272 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun e!4412230 () (Set Context!16424))

(assert (=> b!7370054 (= e!4412230 e!4412228)))

(declare-fun b!7370055 () Bool)

(declare-fun e!4412227 () (Set Context!16424))

(assert (=> b!7370055 (= e!4412227 (set.union call!676749 call!676751))))

(declare-fun b!7370056 () Bool)

(assert (=> b!7370056 (= e!4412228 (as set.empty (Set Context!16424)))))

(declare-fun b!7370057 () Bool)

(assert (=> b!7370057 (= e!4412230 call!676747)))

(declare-fun bm!676743 () Bool)

(declare-fun c!1369708 () Bool)

(assert (=> bm!676743 (= call!676749 (derivationStepZipperDown!3098 (ite c!1369708 (regOne!39057 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (regOne!39056 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))) (ite c!1369708 (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676)) (Context!16425 call!676748)) c!10362))))

(declare-fun b!7370058 () Bool)

(declare-fun e!4412229 () (Set Context!16424))

(assert (=> b!7370058 (= e!4412229 (set.insert (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370059 () Bool)

(assert (=> b!7370059 (= e!4412226 e!4412230)))

(declare-fun c!1369712 () Bool)

(assert (=> b!7370059 (= c!1369712 (is-Concat!28117 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun c!1369709 () Bool)

(declare-fun bm!676744 () Bool)

(assert (=> bm!676744 (= call!676748 ($colon$colon!3254 (exprs!8712 (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676))) (ite (or c!1369709 c!1369712) (regTwo!39056 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))))

(declare-fun b!7370060 () Bool)

(declare-fun e!4412225 () Bool)

(assert (=> b!7370060 (= e!4412225 (nullable!8348 (regOne!39056 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))))

(declare-fun bm!676745 () Bool)

(assert (=> bm!676745 (= call!676751 (derivationStepZipperDown!3098 (ite c!1369708 (regTwo!39057 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369709 (regTwo!39056 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369712 (regOne!39056 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (reg!19601 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))) (ite (or c!1369708 c!1369709) (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676)) (Context!16425 call!676746)) c!10362))))

(declare-fun b!7370061 () Bool)

(assert (=> b!7370061 (= c!1369709 e!4412225)))

(declare-fun res!2973959 () Bool)

(assert (=> b!7370061 (=> (not res!2973959) (not e!4412225))))

(assert (=> b!7370061 (= res!2973959 (is-Concat!28117 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(assert (=> b!7370061 (= e!4412227 e!4412226)))

(declare-fun d!2283513 () Bool)

(declare-fun c!1369711 () Bool)

(assert (=> d!2283513 (= c!1369711 (and (is-ElementMatch!19272 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (= (c!1369608 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) c!10362)))))

(assert (=> d!2283513 (= (derivationStepZipperDown!3098 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370)) (ite c!1369645 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676676)) c!10362) e!4412229)))

(declare-fun b!7370062 () Bool)

(assert (=> b!7370062 (= e!4412229 e!4412227)))

(assert (=> b!7370062 (= c!1369708 (is-Union!19272 (ite c!1369645 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun bm!676746 () Bool)

(assert (=> bm!676746 (= call!676747 call!676750)))

(assert (= (and d!2283513 c!1369711) b!7370058))

(assert (= (and d!2283513 (not c!1369711)) b!7370062))

(assert (= (and b!7370062 c!1369708) b!7370055))

(assert (= (and b!7370062 (not c!1369708)) b!7370061))

(assert (= (and b!7370061 res!2973959) b!7370060))

(assert (= (and b!7370061 c!1369709) b!7370052))

(assert (= (and b!7370061 (not c!1369709)) b!7370059))

(assert (= (and b!7370059 c!1369712) b!7370057))

(assert (= (and b!7370059 (not c!1369712)) b!7370054))

(assert (= (and b!7370054 c!1369710) b!7370053))

(assert (= (and b!7370054 (not c!1369710)) b!7370056))

(assert (= (or b!7370057 b!7370053) bm!676742))

(assert (= (or b!7370057 b!7370053) bm!676746))

(assert (= (or b!7370052 bm!676746) bm!676741))

(assert (= (or b!7370052 bm!676742) bm!676744))

(assert (= (or b!7370055 bm!676741) bm!676745))

(assert (= (or b!7370055 b!7370052) bm!676743))

(declare-fun m!8024090 () Bool)

(assert (=> b!7370060 m!8024090))

(declare-fun m!8024092 () Bool)

(assert (=> bm!676743 m!8024092))

(declare-fun m!8024094 () Bool)

(assert (=> bm!676745 m!8024094))

(declare-fun m!8024096 () Bool)

(assert (=> b!7370058 m!8024096))

(declare-fun m!8024098 () Bool)

(assert (=> bm!676744 m!8024098))

(assert (=> bm!676671 d!2283513))

(declare-fun d!2283515 () Bool)

(declare-fun res!2973960 () Bool)

(declare-fun e!4412231 () Bool)

(assert (=> d!2283515 (=> res!2973960 e!4412231)))

(assert (=> d!2283515 (= res!2973960 (is-Nil!71644 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))))))

(assert (=> d!2283515 (= (forall!18078 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)) lambda!457920) e!4412231)))

(declare-fun b!7370063 () Bool)

(declare-fun e!4412232 () Bool)

(assert (=> b!7370063 (= e!4412231 e!4412232)))

(declare-fun res!2973961 () Bool)

(assert (=> b!7370063 (=> (not res!2973961) (not e!4412232))))

(assert (=> b!7370063 (= res!2973961 (dynLambda!29524 lambda!457920 (h!78092 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)))))))

(declare-fun b!7370064 () Bool)

(assert (=> b!7370064 (= e!4412232 (forall!18078 (t!386227 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) lambda!457920))))

(assert (= (and d!2283515 (not res!2973960)) b!7370063))

(assert (= (and b!7370063 res!2973961) b!7370064))

(declare-fun b_lambda!284413 () Bool)

(assert (=> (not b_lambda!284413) (not b!7370063)))

(declare-fun m!8024100 () Bool)

(assert (=> b!7370063 m!8024100))

(declare-fun m!8024102 () Bool)

(assert (=> b!7370064 m!8024102))

(assert (=> d!2283469 d!2283515))

(assert (=> d!2283469 d!2283467))

(declare-fun d!2283517 () Bool)

(assert (=> d!2283517 (forall!18078 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)) lambda!457920)))

(assert (=> d!2283517 true))

(declare-fun _$78!936 () Unit!165493)

(assert (=> d!2283517 (= (choose!57298 (exprs!8712 ct1!282) (exprs!8712 ct2!378) lambda!457920) _$78!936)))

(declare-fun bs!1920818 () Bool)

(assert (= bs!1920818 d!2283517))

(assert (=> bs!1920818 m!8023754))

(assert (=> bs!1920818 m!8023754))

(assert (=> bs!1920818 m!8023942))

(assert (=> d!2283469 d!2283517))

(declare-fun d!2283519 () Bool)

(declare-fun res!2973962 () Bool)

(declare-fun e!4412233 () Bool)

(assert (=> d!2283519 (=> res!2973962 e!4412233)))

(assert (=> d!2283519 (= res!2973962 (is-Nil!71644 (exprs!8712 ct1!282)))))

(assert (=> d!2283519 (= (forall!18078 (exprs!8712 ct1!282) lambda!457920) e!4412233)))

(declare-fun b!7370065 () Bool)

(declare-fun e!4412234 () Bool)

(assert (=> b!7370065 (= e!4412233 e!4412234)))

(declare-fun res!2973963 () Bool)

(assert (=> b!7370065 (=> (not res!2973963) (not e!4412234))))

(assert (=> b!7370065 (= res!2973963 (dynLambda!29524 lambda!457920 (h!78092 (exprs!8712 ct1!282))))))

(declare-fun b!7370066 () Bool)

(assert (=> b!7370066 (= e!4412234 (forall!18078 (t!386227 (exprs!8712 ct1!282)) lambda!457920))))

(assert (= (and d!2283519 (not res!2973962)) b!7370065))

(assert (= (and b!7370065 res!2973963) b!7370066))

(declare-fun b_lambda!284415 () Bool)

(assert (=> (not b_lambda!284415) (not b!7370065)))

(declare-fun m!8024104 () Bool)

(assert (=> b!7370065 m!8024104))

(declare-fun m!8024106 () Bool)

(assert (=> b!7370066 m!8024106))

(assert (=> d!2283469 d!2283519))

(declare-fun b!7370067 () Bool)

(declare-fun e!4412236 () (Set Context!16424))

(declare-fun call!676755 () (Set Context!16424))

(declare-fun call!676756 () (Set Context!16424))

(assert (=> b!7370067 (= e!4412236 (set.union call!676755 call!676756))))

(declare-fun bm!676747 () Bool)

(declare-fun call!676757 () (Set Context!16424))

(assert (=> bm!676747 (= call!676756 call!676757)))

(declare-fun b!7370068 () Bool)

(declare-fun e!4412238 () (Set Context!16424))

(declare-fun call!676753 () (Set Context!16424))

(assert (=> b!7370068 (= e!4412238 call!676753)))

(declare-fun bm!676748 () Bool)

(declare-fun call!676752 () List!71768)

(declare-fun call!676754 () List!71768)

(assert (=> bm!676748 (= call!676752 call!676754)))

(declare-fun b!7370069 () Bool)

(declare-fun c!1369715 () Bool)

(assert (=> b!7370069 (= c!1369715 (is-Star!19272 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(declare-fun e!4412240 () (Set Context!16424))

(assert (=> b!7370069 (= e!4412240 e!4412238)))

(declare-fun b!7370070 () Bool)

(declare-fun e!4412237 () (Set Context!16424))

(assert (=> b!7370070 (= e!4412237 (set.union call!676755 call!676757))))

(declare-fun b!7370071 () Bool)

(assert (=> b!7370071 (= e!4412238 (as set.empty (Set Context!16424)))))

(declare-fun b!7370072 () Bool)

(assert (=> b!7370072 (= e!4412240 call!676753)))

(declare-fun c!1369713 () Bool)

(declare-fun bm!676749 () Bool)

(assert (=> bm!676749 (= call!676755 (derivationStepZipperDown!3098 (ite c!1369713 (regOne!39057 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (regOne!39056 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))) (ite c!1369713 (ite c!1369652 ct1!282 (Context!16425 call!676682)) (Context!16425 call!676754)) c!10362))))

(declare-fun b!7370073 () Bool)

(declare-fun e!4412239 () (Set Context!16424))

(assert (=> b!7370073 (= e!4412239 (set.insert (ite c!1369652 ct1!282 (Context!16425 call!676682)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370074 () Bool)

(assert (=> b!7370074 (= e!4412236 e!4412240)))

(declare-fun c!1369717 () Bool)

(assert (=> b!7370074 (= c!1369717 (is-Concat!28117 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(declare-fun c!1369714 () Bool)

(declare-fun bm!676750 () Bool)

(assert (=> bm!676750 (= call!676754 ($colon$colon!3254 (exprs!8712 (ite c!1369652 ct1!282 (Context!16425 call!676682))) (ite (or c!1369714 c!1369717) (regTwo!39056 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))))))

(declare-fun b!7370075 () Bool)

(declare-fun e!4412235 () Bool)

(assert (=> b!7370075 (= e!4412235 (nullable!8348 (regOne!39056 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))))))

(declare-fun bm!676751 () Bool)

(assert (=> bm!676751 (= call!676757 (derivationStepZipperDown!3098 (ite c!1369713 (regTwo!39057 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (ite c!1369714 (regTwo!39056 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (ite c!1369717 (regOne!39056 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (reg!19601 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))))) (ite (or c!1369713 c!1369714) (ite c!1369652 ct1!282 (Context!16425 call!676682)) (Context!16425 call!676752)) c!10362))))

(declare-fun b!7370076 () Bool)

(assert (=> b!7370076 (= c!1369714 e!4412235)))

(declare-fun res!2973964 () Bool)

(assert (=> b!7370076 (=> (not res!2973964) (not e!4412235))))

(assert (=> b!7370076 (= res!2973964 (is-Concat!28117 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(assert (=> b!7370076 (= e!4412237 e!4412236)))

(declare-fun d!2283521 () Bool)

(declare-fun c!1369716 () Bool)

(assert (=> d!2283521 (= c!1369716 (and (is-ElementMatch!19272 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (= (c!1369608 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) c!10362)))))

(assert (=> d!2283521 (= (derivationStepZipperDown!3098 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))) (ite c!1369652 ct1!282 (Context!16425 call!676682)) c!10362) e!4412239)))

(declare-fun b!7370077 () Bool)

(assert (=> b!7370077 (= e!4412239 e!4412237)))

(assert (=> b!7370077 (= c!1369713 (is-Union!19272 (ite c!1369652 (regOne!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(declare-fun bm!676752 () Bool)

(assert (=> bm!676752 (= call!676753 call!676756)))

(assert (= (and d!2283521 c!1369716) b!7370073))

(assert (= (and d!2283521 (not c!1369716)) b!7370077))

(assert (= (and b!7370077 c!1369713) b!7370070))

(assert (= (and b!7370077 (not c!1369713)) b!7370076))

(assert (= (and b!7370076 res!2973964) b!7370075))

(assert (= (and b!7370076 c!1369714) b!7370067))

(assert (= (and b!7370076 (not c!1369714)) b!7370074))

(assert (= (and b!7370074 c!1369717) b!7370072))

(assert (= (and b!7370074 (not c!1369717)) b!7370069))

(assert (= (and b!7370069 c!1369715) b!7370068))

(assert (= (and b!7370069 (not c!1369715)) b!7370071))

(assert (= (or b!7370072 b!7370068) bm!676748))

(assert (= (or b!7370072 b!7370068) bm!676752))

(assert (= (or b!7370067 bm!676752) bm!676747))

(assert (= (or b!7370067 bm!676748) bm!676750))

(assert (= (or b!7370070 bm!676747) bm!676751))

(assert (= (or b!7370070 b!7370067) bm!676749))

(declare-fun m!8024108 () Bool)

(assert (=> b!7370075 m!8024108))

(declare-fun m!8024110 () Bool)

(assert (=> bm!676749 m!8024110))

(declare-fun m!8024112 () Bool)

(assert (=> bm!676751 m!8024112))

(declare-fun m!8024114 () Bool)

(assert (=> b!7370073 m!8024114))

(declare-fun m!8024116 () Bool)

(assert (=> bm!676750 m!8024116))

(assert (=> bm!676677 d!2283521))

(declare-fun d!2283523 () Bool)

(assert (=> d!2283523 (= ($colon$colon!3254 (exprs!8712 lt!2615306) (ite (or c!1369658 c!1369661) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370))) (Cons!71644 (ite (or c!1369658 c!1369661) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370)) (exprs!8712 lt!2615306)))))

(assert (=> bm!676684 d!2283523))

(declare-fun bm!676753 () Bool)

(declare-fun call!676760 () Bool)

(declare-fun call!676759 () Bool)

(assert (=> bm!676753 (= call!676760 call!676759)))

(declare-fun b!7370078 () Bool)

(declare-fun e!4412241 () Bool)

(assert (=> b!7370078 (= e!4412241 call!676760)))

(declare-fun b!7370079 () Bool)

(declare-fun e!4412247 () Bool)

(declare-fun e!4412245 () Bool)

(assert (=> b!7370079 (= e!4412247 e!4412245)))

(declare-fun res!2973966 () Bool)

(assert (=> b!7370079 (= res!2973966 (not (nullable!8348 (reg!19601 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))))

(assert (=> b!7370079 (=> (not res!2973966) (not e!4412245))))

(declare-fun b!7370080 () Bool)

(assert (=> b!7370080 (= e!4412245 call!676759)))

(declare-fun b!7370081 () Bool)

(declare-fun e!4412242 () Bool)

(declare-fun call!676758 () Bool)

(assert (=> b!7370081 (= e!4412242 call!676758)))

(declare-fun b!7370082 () Bool)

(declare-fun e!4412244 () Bool)

(assert (=> b!7370082 (= e!4412244 e!4412241)))

(declare-fun res!2973968 () Bool)

(assert (=> b!7370082 (=> (not res!2973968) (not e!4412241))))

(assert (=> b!7370082 (= res!2973968 call!676758)))

(declare-fun b!7370083 () Bool)

(declare-fun res!2973965 () Bool)

(assert (=> b!7370083 (=> res!2973965 e!4412244)))

(assert (=> b!7370083 (= res!2973965 (not (is-Concat!28117 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370)))))))))

(declare-fun e!4412246 () Bool)

(assert (=> b!7370083 (= e!4412246 e!4412244)))

(declare-fun bm!676754 () Bool)

(declare-fun c!1369719 () Bool)

(assert (=> bm!676754 (= call!676758 (validRegex!9868 (ite c!1369719 (regTwo!39057 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))) (regOne!39056 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))))

(declare-fun d!2283525 () Bool)

(declare-fun res!2973967 () Bool)

(declare-fun e!4412243 () Bool)

(assert (=> d!2283525 (=> res!2973967 e!4412243)))

(assert (=> d!2283525 (= res!2973967 (is-ElementMatch!19272 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))

(assert (=> d!2283525 (= (validRegex!9868 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))) e!4412243)))

(declare-fun b!7370084 () Bool)

(declare-fun res!2973969 () Bool)

(assert (=> b!7370084 (=> (not res!2973969) (not e!4412242))))

(assert (=> b!7370084 (= res!2973969 call!676760)))

(assert (=> b!7370084 (= e!4412246 e!4412242)))

(declare-fun b!7370085 () Bool)

(assert (=> b!7370085 (= e!4412247 e!4412246)))

(assert (=> b!7370085 (= c!1369719 (is-Union!19272 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))

(declare-fun bm!676755 () Bool)

(declare-fun c!1369718 () Bool)

(assert (=> bm!676755 (= call!676759 (validRegex!9868 (ite c!1369718 (reg!19601 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))) (ite c!1369719 (regOne!39057 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))) (regTwo!39056 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370)))))))))))

(declare-fun b!7370086 () Bool)

(assert (=> b!7370086 (= e!4412243 e!4412247)))

(assert (=> b!7370086 (= c!1369718 (is-Star!19272 (ite c!1369631 (reg!19601 (regTwo!39056 r1!2370)) (ite c!1369632 (regOne!39057 (regTwo!39056 r1!2370)) (regTwo!39056 (regTwo!39056 r1!2370))))))))

(assert (= (and d!2283525 (not res!2973967)) b!7370086))

(assert (= (and b!7370086 c!1369718) b!7370079))

(assert (= (and b!7370086 (not c!1369718)) b!7370085))

(assert (= (and b!7370079 res!2973966) b!7370080))

(assert (= (and b!7370085 c!1369719) b!7370084))

(assert (= (and b!7370085 (not c!1369719)) b!7370083))

(assert (= (and b!7370084 res!2973969) b!7370081))

(assert (= (and b!7370083 (not res!2973965)) b!7370082))

(assert (= (and b!7370082 res!2973968) b!7370078))

(assert (= (or b!7370084 b!7370078) bm!676753))

(assert (= (or b!7370081 b!7370082) bm!676754))

(assert (= (or b!7370080 bm!676753) bm!676755))

(declare-fun m!8024118 () Bool)

(assert (=> b!7370079 m!8024118))

(declare-fun m!8024120 () Bool)

(assert (=> bm!676754 m!8024120))

(declare-fun m!8024122 () Bool)

(assert (=> bm!676755 m!8024122))

(assert (=> bm!676662 d!2283525))

(declare-fun b!7370087 () Bool)

(declare-fun e!4412249 () (Set Context!16424))

(declare-fun call!676764 () (Set Context!16424))

(declare-fun call!676765 () (Set Context!16424))

(assert (=> b!7370087 (= e!4412249 (set.union call!676764 call!676765))))

(declare-fun bm!676756 () Bool)

(declare-fun call!676766 () (Set Context!16424))

(assert (=> bm!676756 (= call!676765 call!676766)))

(declare-fun b!7370088 () Bool)

(declare-fun e!4412251 () (Set Context!16424))

(declare-fun call!676762 () (Set Context!16424))

(assert (=> b!7370088 (= e!4412251 call!676762)))

(declare-fun bm!676757 () Bool)

(declare-fun call!676761 () List!71768)

(declare-fun call!676763 () List!71768)

(assert (=> bm!676757 (= call!676761 call!676763)))

(declare-fun b!7370089 () Bool)

(declare-fun c!1369722 () Bool)

(assert (=> b!7370089 (= c!1369722 (is-Star!19272 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun e!4412253 () (Set Context!16424))

(assert (=> b!7370089 (= e!4412253 e!4412251)))

(declare-fun b!7370090 () Bool)

(declare-fun e!4412250 () (Set Context!16424))

(assert (=> b!7370090 (= e!4412250 (set.union call!676764 call!676766))))

(declare-fun b!7370091 () Bool)

(assert (=> b!7370091 (= e!4412251 (as set.empty (Set Context!16424)))))

(declare-fun b!7370092 () Bool)

(assert (=> b!7370092 (= e!4412253 call!676762)))

(declare-fun c!1369720 () Bool)

(declare-fun bm!676758 () Bool)

(assert (=> bm!676758 (= call!676764 (derivationStepZipperDown!3098 (ite c!1369720 (regOne!39057 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (regOne!39056 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))) (ite c!1369720 (ite c!1369657 lt!2615306 (Context!16425 call!676688)) (Context!16425 call!676763)) c!10362))))

(declare-fun e!4412252 () (Set Context!16424))

(declare-fun b!7370093 () Bool)

(assert (=> b!7370093 (= e!4412252 (set.insert (ite c!1369657 lt!2615306 (Context!16425 call!676688)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370094 () Bool)

(assert (=> b!7370094 (= e!4412249 e!4412253)))

(declare-fun c!1369724 () Bool)

(assert (=> b!7370094 (= c!1369724 (is-Concat!28117 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun c!1369721 () Bool)

(declare-fun bm!676759 () Bool)

(assert (=> bm!676759 (= call!676763 ($colon$colon!3254 (exprs!8712 (ite c!1369657 lt!2615306 (Context!16425 call!676688))) (ite (or c!1369721 c!1369724) (regTwo!39056 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))))

(declare-fun b!7370095 () Bool)

(declare-fun e!4412248 () Bool)

(assert (=> b!7370095 (= e!4412248 (nullable!8348 (regOne!39056 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))))

(declare-fun bm!676760 () Bool)

(assert (=> bm!676760 (= call!676766 (derivationStepZipperDown!3098 (ite c!1369720 (regTwo!39057 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369721 (regTwo!39056 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369724 (regOne!39056 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (reg!19601 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))) (ite (or c!1369720 c!1369721) (ite c!1369657 lt!2615306 (Context!16425 call!676688)) (Context!16425 call!676761)) c!10362))))

(declare-fun b!7370096 () Bool)

(assert (=> b!7370096 (= c!1369721 e!4412248)))

(declare-fun res!2973970 () Bool)

(assert (=> b!7370096 (=> (not res!2973970) (not e!4412248))))

(assert (=> b!7370096 (= res!2973970 (is-Concat!28117 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(assert (=> b!7370096 (= e!4412250 e!4412249)))

(declare-fun d!2283527 () Bool)

(declare-fun c!1369723 () Bool)

(assert (=> d!2283527 (= c!1369723 (and (is-ElementMatch!19272 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (= (c!1369608 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) c!10362)))))

(assert (=> d!2283527 (= (derivationStepZipperDown!3098 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))) (ite c!1369657 lt!2615306 (Context!16425 call!676688)) c!10362) e!4412252)))

(declare-fun b!7370097 () Bool)

(assert (=> b!7370097 (= e!4412252 e!4412250)))

(assert (=> b!7370097 (= c!1369720 (is-Union!19272 (ite c!1369657 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun bm!676761 () Bool)

(assert (=> bm!676761 (= call!676762 call!676765)))

(assert (= (and d!2283527 c!1369723) b!7370093))

(assert (= (and d!2283527 (not c!1369723)) b!7370097))

(assert (= (and b!7370097 c!1369720) b!7370090))

(assert (= (and b!7370097 (not c!1369720)) b!7370096))

(assert (= (and b!7370096 res!2973970) b!7370095))

(assert (= (and b!7370096 c!1369721) b!7370087))

(assert (= (and b!7370096 (not c!1369721)) b!7370094))

(assert (= (and b!7370094 c!1369724) b!7370092))

(assert (= (and b!7370094 (not c!1369724)) b!7370089))

(assert (= (and b!7370089 c!1369722) b!7370088))

(assert (= (and b!7370089 (not c!1369722)) b!7370091))

(assert (= (or b!7370092 b!7370088) bm!676757))

(assert (= (or b!7370092 b!7370088) bm!676761))

(assert (= (or b!7370087 bm!676761) bm!676756))

(assert (= (or b!7370087 bm!676757) bm!676759))

(assert (= (or b!7370090 bm!676756) bm!676760))

(assert (= (or b!7370090 b!7370087) bm!676758))

(declare-fun m!8024124 () Bool)

(assert (=> b!7370095 m!8024124))

(declare-fun m!8024126 () Bool)

(assert (=> bm!676758 m!8024126))

(declare-fun m!8024128 () Bool)

(assert (=> bm!676760 m!8024128))

(declare-fun m!8024130 () Bool)

(assert (=> b!7370093 m!8024130))

(declare-fun m!8024132 () Bool)

(assert (=> bm!676759 m!8024132))

(assert (=> bm!676683 d!2283527))

(declare-fun d!2283529 () Bool)

(declare-fun lt!2615380 () Int)

(assert (=> d!2283529 (>= lt!2615380 0)))

(declare-fun e!4412256 () Int)

(assert (=> d!2283529 (= lt!2615380 e!4412256)))

(declare-fun c!1369727 () Bool)

(assert (=> d!2283529 (= c!1369727 (is-Nil!71644 lt!2615362))))

(assert (=> d!2283529 (= (size!42130 lt!2615362) lt!2615380)))

(declare-fun b!7370102 () Bool)

(assert (=> b!7370102 (= e!4412256 0)))

(declare-fun b!7370103 () Bool)

(assert (=> b!7370103 (= e!4412256 (+ 1 (size!42130 (t!386227 lt!2615362))))))

(assert (= (and d!2283529 c!1369727) b!7370102))

(assert (= (and d!2283529 (not c!1369727)) b!7370103))

(declare-fun m!8024134 () Bool)

(assert (=> b!7370103 m!8024134))

(assert (=> b!7369823 d!2283529))

(declare-fun d!2283531 () Bool)

(declare-fun lt!2615381 () Int)

(assert (=> d!2283531 (>= lt!2615381 0)))

(declare-fun e!4412257 () Int)

(assert (=> d!2283531 (= lt!2615381 e!4412257)))

(declare-fun c!1369728 () Bool)

(assert (=> d!2283531 (= c!1369728 (is-Nil!71644 (exprs!8712 ct1!282)))))

(assert (=> d!2283531 (= (size!42130 (exprs!8712 ct1!282)) lt!2615381)))

(declare-fun b!7370104 () Bool)

(assert (=> b!7370104 (= e!4412257 0)))

(declare-fun b!7370105 () Bool)

(assert (=> b!7370105 (= e!4412257 (+ 1 (size!42130 (t!386227 (exprs!8712 ct1!282)))))))

(assert (= (and d!2283531 c!1369728) b!7370104))

(assert (= (and d!2283531 (not c!1369728)) b!7370105))

(declare-fun m!8024136 () Bool)

(assert (=> b!7370105 m!8024136))

(assert (=> b!7369823 d!2283531))

(declare-fun d!2283533 () Bool)

(declare-fun lt!2615382 () Int)

(assert (=> d!2283533 (>= lt!2615382 0)))

(declare-fun e!4412258 () Int)

(assert (=> d!2283533 (= lt!2615382 e!4412258)))

(declare-fun c!1369729 () Bool)

(assert (=> d!2283533 (= c!1369729 (is-Nil!71644 (exprs!8712 ct2!378)))))

(assert (=> d!2283533 (= (size!42130 (exprs!8712 ct2!378)) lt!2615382)))

(declare-fun b!7370106 () Bool)

(assert (=> b!7370106 (= e!4412258 0)))

(declare-fun b!7370107 () Bool)

(assert (=> b!7370107 (= e!4412258 (+ 1 (size!42130 (t!386227 (exprs!8712 ct2!378)))))))

(assert (= (and d!2283533 c!1369729) b!7370106))

(assert (= (and d!2283533 (not c!1369729)) b!7370107))

(declare-fun m!8024138 () Bool)

(assert (=> b!7370107 m!8024138))

(assert (=> b!7369823 d!2283533))

(declare-fun d!2283535 () Bool)

(assert (=> d!2283535 (= (nullable!8348 (regOne!39056 (regTwo!39056 r1!2370))) (nullableFct!3337 (regOne!39056 (regTwo!39056 r1!2370))))))

(declare-fun bs!1920819 () Bool)

(assert (= bs!1920819 d!2283535))

(declare-fun m!8024140 () Bool)

(assert (=> bs!1920819 m!8024140))

(assert (=> b!7369837 d!2283535))

(declare-fun b!7370108 () Bool)

(declare-fun e!4412260 () (Set Context!16424))

(declare-fun call!676770 () (Set Context!16424))

(declare-fun call!676771 () (Set Context!16424))

(assert (=> b!7370108 (= e!4412260 (set.union call!676770 call!676771))))

(declare-fun bm!676762 () Bool)

(declare-fun call!676772 () (Set Context!16424))

(assert (=> bm!676762 (= call!676771 call!676772)))

(declare-fun b!7370109 () Bool)

(declare-fun e!4412262 () (Set Context!16424))

(declare-fun call!676768 () (Set Context!16424))

(assert (=> b!7370109 (= e!4412262 call!676768)))

(declare-fun bm!676763 () Bool)

(declare-fun call!676767 () List!71768)

(declare-fun call!676769 () List!71768)

(assert (=> bm!676763 (= call!676767 call!676769)))

(declare-fun b!7370110 () Bool)

(declare-fun c!1369732 () Bool)

(assert (=> b!7370110 (= c!1369732 (is-Star!19272 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun e!4412264 () (Set Context!16424))

(assert (=> b!7370110 (= e!4412264 e!4412262)))

(declare-fun b!7370111 () Bool)

(declare-fun e!4412261 () (Set Context!16424))

(assert (=> b!7370111 (= e!4412261 (set.union call!676770 call!676772))))

(declare-fun b!7370112 () Bool)

(assert (=> b!7370112 (= e!4412262 (as set.empty (Set Context!16424)))))

(declare-fun b!7370113 () Bool)

(assert (=> b!7370113 (= e!4412264 call!676768)))

(declare-fun c!1369730 () Bool)

(declare-fun bm!676764 () Bool)

(assert (=> bm!676764 (= call!676770 (derivationStepZipperDown!3098 (ite c!1369730 (regOne!39057 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (regOne!39056 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))) (ite c!1369730 (ite c!1369620 ct1!282 (Context!16425 call!676652)) (Context!16425 call!676769)) c!10362))))

(declare-fun e!4412263 () (Set Context!16424))

(declare-fun b!7370114 () Bool)

(assert (=> b!7370114 (= e!4412263 (set.insert (ite c!1369620 ct1!282 (Context!16425 call!676652)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370115 () Bool)

(assert (=> b!7370115 (= e!4412260 e!4412264)))

(declare-fun c!1369734 () Bool)

(assert (=> b!7370115 (= c!1369734 (is-Concat!28117 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun bm!676765 () Bool)

(declare-fun c!1369731 () Bool)

(assert (=> bm!676765 (= call!676769 ($colon$colon!3254 (exprs!8712 (ite c!1369620 ct1!282 (Context!16425 call!676652))) (ite (or c!1369731 c!1369734) (regTwo!39056 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))))

(declare-fun b!7370116 () Bool)

(declare-fun e!4412259 () Bool)

(assert (=> b!7370116 (= e!4412259 (nullable!8348 (regOne!39056 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))))

(declare-fun bm!676766 () Bool)

(assert (=> bm!676766 (= call!676772 (derivationStepZipperDown!3098 (ite c!1369730 (regTwo!39057 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369731 (regTwo!39056 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369734 (regOne!39056 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (reg!19601 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)))))) (ite (or c!1369730 c!1369731) (ite c!1369620 ct1!282 (Context!16425 call!676652)) (Context!16425 call!676767)) c!10362))))

(declare-fun b!7370117 () Bool)

(assert (=> b!7370117 (= c!1369731 e!4412259)))

(declare-fun res!2973971 () Bool)

(assert (=> b!7370117 (=> (not res!2973971) (not e!4412259))))

(assert (=> b!7370117 (= res!2973971 (is-Concat!28117 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(assert (=> b!7370117 (= e!4412261 e!4412260)))

(declare-fun c!1369733 () Bool)

(declare-fun d!2283537 () Bool)

(assert (=> d!2283537 (= c!1369733 (and (is-ElementMatch!19272 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) (= (c!1369608 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))) c!10362)))))

(assert (=> d!2283537 (= (derivationStepZipperDown!3098 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370)) (ite c!1369620 ct1!282 (Context!16425 call!676652)) c!10362) e!4412263)))

(declare-fun b!7370118 () Bool)

(assert (=> b!7370118 (= e!4412263 e!4412261)))

(assert (=> b!7370118 (= c!1369730 (is-Union!19272 (ite c!1369620 (regOne!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun bm!676767 () Bool)

(assert (=> bm!676767 (= call!676768 call!676771)))

(assert (= (and d!2283537 c!1369733) b!7370114))

(assert (= (and d!2283537 (not c!1369733)) b!7370118))

(assert (= (and b!7370118 c!1369730) b!7370111))

(assert (= (and b!7370118 (not c!1369730)) b!7370117))

(assert (= (and b!7370117 res!2973971) b!7370116))

(assert (= (and b!7370117 c!1369731) b!7370108))

(assert (= (and b!7370117 (not c!1369731)) b!7370115))

(assert (= (and b!7370115 c!1369734) b!7370113))

(assert (= (and b!7370115 (not c!1369734)) b!7370110))

(assert (= (and b!7370110 c!1369732) b!7370109))

(assert (= (and b!7370110 (not c!1369732)) b!7370112))

(assert (= (or b!7370113 b!7370109) bm!676763))

(assert (= (or b!7370113 b!7370109) bm!676767))

(assert (= (or b!7370108 bm!676767) bm!676762))

(assert (= (or b!7370108 bm!676763) bm!676765))

(assert (= (or b!7370111 bm!676762) bm!676766))

(assert (= (or b!7370111 b!7370108) bm!676764))

(declare-fun m!8024142 () Bool)

(assert (=> b!7370116 m!8024142))

(declare-fun m!8024144 () Bool)

(assert (=> bm!676764 m!8024144))

(declare-fun m!8024146 () Bool)

(assert (=> bm!676766 m!8024146))

(declare-fun m!8024148 () Bool)

(assert (=> b!7370114 m!8024148))

(declare-fun m!8024150 () Bool)

(assert (=> bm!676765 m!8024150))

(assert (=> bm!676647 d!2283537))

(declare-fun bs!1920820 () Bool)

(declare-fun d!2283539 () Bool)

(assert (= bs!1920820 (and d!2283539 d!2283439)))

(declare-fun lambda!457954 () Int)

(assert (=> bs!1920820 (= lambda!457954 lambda!457932)))

(declare-fun bs!1920821 () Bool)

(assert (= bs!1920821 (and d!2283539 d!2283447)))

(assert (=> bs!1920821 (= lambda!457954 lambda!457939)))

(declare-fun bs!1920822 () Bool)

(assert (= bs!1920822 (and d!2283539 d!2283443)))

(assert (=> bs!1920822 (= lambda!457954 lambda!457934)))

(declare-fun bs!1920823 () Bool)

(assert (= bs!1920823 (and d!2283539 b!7369660)))

(assert (=> bs!1920823 (= lambda!457954 lambda!457920)))

(declare-fun bs!1920824 () Bool)

(assert (= bs!1920824 (and d!2283539 d!2283441)))

(assert (=> bs!1920824 (= lambda!457954 lambda!457933)))

(assert (=> d!2283539 (set.member (Context!16425 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378))) (derivationStepZipperDown!3098 (regOne!39056 r1!2370) (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) c!10362))))

(declare-fun lt!2615388 () Unit!165493)

(assert (=> d!2283539 (= lt!2615388 (lemmaConcatPreservesForall!1945 (exprs!8712 lt!2615306) (exprs!8712 ct2!378) lambda!457954))))

(declare-fun lt!2615387 () Unit!165493)

(assert (=> d!2283539 (= lt!2615387 (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457954))))

(assert (=> d!2283539 true))

(declare-fun _$59!742 () Unit!165493)

(assert (=> d!2283539 (= (choose!57297 (regOne!39056 r1!2370) lt!2615306 ct2!378 cWitness!61 c!10362) _$59!742)))

(declare-fun bs!1920825 () Bool)

(assert (= bs!1920825 d!2283539))

(assert (=> bs!1920825 m!8023872))

(declare-fun m!8024152 () Bool)

(assert (=> bs!1920825 m!8024152))

(assert (=> bs!1920825 m!8023862))

(assert (=> bs!1920825 m!8023870))

(assert (=> bs!1920825 m!8023778))

(declare-fun m!8024154 () Bool)

(assert (=> bs!1920825 m!8024154))

(assert (=> d!2283447 d!2283539))

(declare-fun b!7370119 () Bool)

(declare-fun e!4412265 () List!71768)

(assert (=> b!7370119 (= e!4412265 (exprs!8712 ct2!378))))

(declare-fun b!7370121 () Bool)

(declare-fun res!2973973 () Bool)

(declare-fun e!4412266 () Bool)

(assert (=> b!7370121 (=> (not res!2973973) (not e!4412266))))

(declare-fun lt!2615389 () List!71768)

(assert (=> b!7370121 (= res!2973973 (= (size!42130 lt!2615389) (+ (size!42130 (exprs!8712 lt!2615306)) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7370122 () Bool)

(assert (=> b!7370122 (= e!4412266 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615389 (exprs!8712 lt!2615306))))))

(declare-fun b!7370120 () Bool)

(assert (=> b!7370120 (= e!4412265 (Cons!71644 (h!78092 (exprs!8712 lt!2615306)) (++!17088 (t!386227 (exprs!8712 lt!2615306)) (exprs!8712 ct2!378))))))

(declare-fun d!2283541 () Bool)

(assert (=> d!2283541 e!4412266))

(declare-fun res!2973972 () Bool)

(assert (=> d!2283541 (=> (not res!2973972) (not e!4412266))))

(assert (=> d!2283541 (= res!2973972 (= (content!15152 lt!2615389) (set.union (content!15152 (exprs!8712 lt!2615306)) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283541 (= lt!2615389 e!4412265)))

(declare-fun c!1369736 () Bool)

(assert (=> d!2283541 (= c!1369736 (is-Nil!71644 (exprs!8712 lt!2615306)))))

(assert (=> d!2283541 (= (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378)) lt!2615389)))

(assert (= (and d!2283541 c!1369736) b!7370119))

(assert (= (and d!2283541 (not c!1369736)) b!7370120))

(assert (= (and d!2283541 res!2973972) b!7370121))

(assert (= (and b!7370121 res!2973973) b!7370122))

(declare-fun m!8024156 () Bool)

(assert (=> b!7370121 m!8024156))

(declare-fun m!8024158 () Bool)

(assert (=> b!7370121 m!8024158))

(assert (=> b!7370121 m!8023892))

(declare-fun m!8024160 () Bool)

(assert (=> b!7370120 m!8024160))

(declare-fun m!8024162 () Bool)

(assert (=> d!2283541 m!8024162))

(declare-fun m!8024164 () Bool)

(assert (=> d!2283541 m!8024164))

(assert (=> d!2283541 m!8023900))

(assert (=> d!2283447 d!2283541))

(assert (=> d!2283447 d!2283457))

(declare-fun bm!676768 () Bool)

(declare-fun call!676775 () Bool)

(declare-fun call!676774 () Bool)

(assert (=> bm!676768 (= call!676775 call!676774)))

(declare-fun b!7370123 () Bool)

(declare-fun e!4412267 () Bool)

(assert (=> b!7370123 (= e!4412267 call!676775)))

(declare-fun b!7370124 () Bool)

(declare-fun e!4412273 () Bool)

(declare-fun e!4412271 () Bool)

(assert (=> b!7370124 (= e!4412273 e!4412271)))

(declare-fun res!2973975 () Bool)

(assert (=> b!7370124 (= res!2973975 (not (nullable!8348 (reg!19601 (regOne!39056 r1!2370)))))))

(assert (=> b!7370124 (=> (not res!2973975) (not e!4412271))))

(declare-fun b!7370125 () Bool)

(assert (=> b!7370125 (= e!4412271 call!676774)))

(declare-fun b!7370126 () Bool)

(declare-fun e!4412268 () Bool)

(declare-fun call!676773 () Bool)

(assert (=> b!7370126 (= e!4412268 call!676773)))

(declare-fun b!7370127 () Bool)

(declare-fun e!4412270 () Bool)

(assert (=> b!7370127 (= e!4412270 e!4412267)))

(declare-fun res!2973977 () Bool)

(assert (=> b!7370127 (=> (not res!2973977) (not e!4412267))))

(assert (=> b!7370127 (= res!2973977 call!676773)))

(declare-fun b!7370128 () Bool)

(declare-fun res!2973974 () Bool)

(assert (=> b!7370128 (=> res!2973974 e!4412270)))

(assert (=> b!7370128 (= res!2973974 (not (is-Concat!28117 (regOne!39056 r1!2370))))))

(declare-fun e!4412272 () Bool)

(assert (=> b!7370128 (= e!4412272 e!4412270)))

(declare-fun bm!676769 () Bool)

(declare-fun c!1369738 () Bool)

(assert (=> bm!676769 (= call!676773 (validRegex!9868 (ite c!1369738 (regTwo!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun d!2283543 () Bool)

(declare-fun res!2973976 () Bool)

(declare-fun e!4412269 () Bool)

(assert (=> d!2283543 (=> res!2973976 e!4412269)))

(assert (=> d!2283543 (= res!2973976 (is-ElementMatch!19272 (regOne!39056 r1!2370)))))

(assert (=> d!2283543 (= (validRegex!9868 (regOne!39056 r1!2370)) e!4412269)))

(declare-fun b!7370129 () Bool)

(declare-fun res!2973978 () Bool)

(assert (=> b!7370129 (=> (not res!2973978) (not e!4412268))))

(assert (=> b!7370129 (= res!2973978 call!676775)))

(assert (=> b!7370129 (= e!4412272 e!4412268)))

(declare-fun b!7370130 () Bool)

(assert (=> b!7370130 (= e!4412273 e!4412272)))

(assert (=> b!7370130 (= c!1369738 (is-Union!19272 (regOne!39056 r1!2370)))))

(declare-fun c!1369737 () Bool)

(declare-fun bm!676770 () Bool)

(assert (=> bm!676770 (= call!676774 (validRegex!9868 (ite c!1369737 (reg!19601 (regOne!39056 r1!2370)) (ite c!1369738 (regOne!39057 (regOne!39056 r1!2370)) (regTwo!39056 (regOne!39056 r1!2370))))))))

(declare-fun b!7370131 () Bool)

(assert (=> b!7370131 (= e!4412269 e!4412273)))

(assert (=> b!7370131 (= c!1369737 (is-Star!19272 (regOne!39056 r1!2370)))))

(assert (= (and d!2283543 (not res!2973976)) b!7370131))

(assert (= (and b!7370131 c!1369737) b!7370124))

(assert (= (and b!7370131 (not c!1369737)) b!7370130))

(assert (= (and b!7370124 res!2973975) b!7370125))

(assert (= (and b!7370130 c!1369738) b!7370129))

(assert (= (and b!7370130 (not c!1369738)) b!7370128))

(assert (= (and b!7370129 res!2973978) b!7370126))

(assert (= (and b!7370128 (not res!2973974)) b!7370127))

(assert (= (and b!7370127 res!2973977) b!7370123))

(assert (= (or b!7370129 b!7370123) bm!676768))

(assert (= (or b!7370126 b!7370127) bm!676769))

(assert (= (or b!7370125 bm!676768) bm!676770))

(declare-fun m!8024166 () Bool)

(assert (=> b!7370124 m!8024166))

(declare-fun m!8024168 () Bool)

(assert (=> bm!676769 m!8024168))

(declare-fun m!8024170 () Bool)

(assert (=> bm!676770 m!8024170))

(assert (=> d!2283447 d!2283543))

(declare-fun d!2283545 () Bool)

(assert (=> d!2283545 (forall!18078 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378)) lambda!457939)))

(declare-fun lt!2615390 () Unit!165493)

(assert (=> d!2283545 (= lt!2615390 (choose!57298 (exprs!8712 lt!2615306) (exprs!8712 ct2!378) lambda!457939))))

(assert (=> d!2283545 (forall!18078 (exprs!8712 lt!2615306) lambda!457939)))

(assert (=> d!2283545 (= (lemmaConcatPreservesForall!1945 (exprs!8712 lt!2615306) (exprs!8712 ct2!378) lambda!457939) lt!2615390)))

(declare-fun bs!1920826 () Bool)

(assert (= bs!1920826 d!2283545))

(assert (=> bs!1920826 m!8023870))

(assert (=> bs!1920826 m!8023870))

(declare-fun m!8024172 () Bool)

(assert (=> bs!1920826 m!8024172))

(declare-fun m!8024174 () Bool)

(assert (=> bs!1920826 m!8024174))

(declare-fun m!8024176 () Bool)

(assert (=> bs!1920826 m!8024176))

(assert (=> d!2283447 d!2283545))

(declare-fun b!7370132 () Bool)

(declare-fun e!4412275 () (Set Context!16424))

(declare-fun call!676779 () (Set Context!16424))

(declare-fun call!676780 () (Set Context!16424))

(assert (=> b!7370132 (= e!4412275 (set.union call!676779 call!676780))))

(declare-fun bm!676771 () Bool)

(declare-fun call!676781 () (Set Context!16424))

(assert (=> bm!676771 (= call!676780 call!676781)))

(declare-fun b!7370133 () Bool)

(declare-fun e!4412277 () (Set Context!16424))

(declare-fun call!676777 () (Set Context!16424))

(assert (=> b!7370133 (= e!4412277 call!676777)))

(declare-fun bm!676772 () Bool)

(declare-fun call!676776 () List!71768)

(declare-fun call!676778 () List!71768)

(assert (=> bm!676772 (= call!676776 call!676778)))

(declare-fun b!7370134 () Bool)

(declare-fun c!1369741 () Bool)

(assert (=> b!7370134 (= c!1369741 (is-Star!19272 (regOne!39056 r1!2370)))))

(declare-fun e!4412279 () (Set Context!16424))

(assert (=> b!7370134 (= e!4412279 e!4412277)))

(declare-fun b!7370135 () Bool)

(declare-fun e!4412276 () (Set Context!16424))

(assert (=> b!7370135 (= e!4412276 (set.union call!676779 call!676781))))

(declare-fun b!7370136 () Bool)

(assert (=> b!7370136 (= e!4412277 (as set.empty (Set Context!16424)))))

(declare-fun b!7370137 () Bool)

(assert (=> b!7370137 (= e!4412279 call!676777)))

(declare-fun bm!676773 () Bool)

(declare-fun c!1369739 () Bool)

(assert (=> bm!676773 (= call!676779 (derivationStepZipperDown!3098 (ite c!1369739 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))) (ite c!1369739 (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) (Context!16425 call!676778)) c!10362))))

(declare-fun b!7370138 () Bool)

(declare-fun e!4412278 () (Set Context!16424))

(assert (=> b!7370138 (= e!4412278 (set.insert (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) (as set.empty (Set Context!16424))))))

(declare-fun b!7370139 () Bool)

(assert (=> b!7370139 (= e!4412275 e!4412279)))

(declare-fun c!1369743 () Bool)

(assert (=> b!7370139 (= c!1369743 (is-Concat!28117 (regOne!39056 r1!2370)))))

(declare-fun bm!676774 () Bool)

(declare-fun c!1369740 () Bool)

(assert (=> bm!676774 (= call!676778 ($colon$colon!3254 (exprs!8712 (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378)))) (ite (or c!1369740 c!1369743) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370))))))

(declare-fun b!7370140 () Bool)

(declare-fun e!4412274 () Bool)

(assert (=> b!7370140 (= e!4412274 (nullable!8348 (regOne!39056 (regOne!39056 r1!2370))))))

(declare-fun bm!676775 () Bool)

(assert (=> bm!676775 (= call!676781 (derivationStepZipperDown!3098 (ite c!1369739 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369740 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369743 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))) (ite (or c!1369739 c!1369740) (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) (Context!16425 call!676776)) c!10362))))

(declare-fun b!7370141 () Bool)

(assert (=> b!7370141 (= c!1369740 e!4412274)))

(declare-fun res!2973979 () Bool)

(assert (=> b!7370141 (=> (not res!2973979) (not e!4412274))))

(assert (=> b!7370141 (= res!2973979 (is-Concat!28117 (regOne!39056 r1!2370)))))

(assert (=> b!7370141 (= e!4412276 e!4412275)))

(declare-fun d!2283547 () Bool)

(declare-fun c!1369742 () Bool)

(assert (=> d!2283547 (= c!1369742 (and (is-ElementMatch!19272 (regOne!39056 r1!2370)) (= (c!1369608 (regOne!39056 r1!2370)) c!10362)))))

(assert (=> d!2283547 (= (derivationStepZipperDown!3098 (regOne!39056 r1!2370) (Context!16425 (++!17088 (exprs!8712 lt!2615306) (exprs!8712 ct2!378))) c!10362) e!4412278)))

(declare-fun b!7370142 () Bool)

(assert (=> b!7370142 (= e!4412278 e!4412276)))

(assert (=> b!7370142 (= c!1369739 (is-Union!19272 (regOne!39056 r1!2370)))))

(declare-fun bm!676776 () Bool)

(assert (=> bm!676776 (= call!676777 call!676780)))

(assert (= (and d!2283547 c!1369742) b!7370138))

(assert (= (and d!2283547 (not c!1369742)) b!7370142))

(assert (= (and b!7370142 c!1369739) b!7370135))

(assert (= (and b!7370142 (not c!1369739)) b!7370141))

(assert (= (and b!7370141 res!2973979) b!7370140))

(assert (= (and b!7370141 c!1369740) b!7370132))

(assert (= (and b!7370141 (not c!1369740)) b!7370139))

(assert (= (and b!7370139 c!1369743) b!7370137))

(assert (= (and b!7370139 (not c!1369743)) b!7370134))

(assert (= (and b!7370134 c!1369741) b!7370133))

(assert (= (and b!7370134 (not c!1369741)) b!7370136))

(assert (= (or b!7370137 b!7370133) bm!676772))

(assert (= (or b!7370137 b!7370133) bm!676776))

(assert (= (or b!7370132 bm!676776) bm!676771))

(assert (= (or b!7370132 bm!676772) bm!676774))

(assert (= (or b!7370135 bm!676771) bm!676775))

(assert (= (or b!7370135 b!7370132) bm!676773))

(assert (=> b!7370140 m!8023902))

(declare-fun m!8024178 () Bool)

(assert (=> bm!676773 m!8024178))

(declare-fun m!8024180 () Bool)

(assert (=> bm!676775 m!8024180))

(declare-fun m!8024182 () Bool)

(assert (=> b!7370138 m!8024182))

(declare-fun m!8024184 () Bool)

(assert (=> bm!676774 m!8024184))

(assert (=> d!2283447 d!2283547))

(declare-fun d!2283549 () Bool)

(assert (=> d!2283549 (forall!18078 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)) lambda!457939)))

(declare-fun lt!2615391 () Unit!165493)

(assert (=> d!2283549 (= lt!2615391 (choose!57298 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457939))))

(assert (=> d!2283549 (forall!18078 (exprs!8712 cWitness!61) lambda!457939)))

(assert (=> d!2283549 (= (lemmaConcatPreservesForall!1945 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457939) lt!2615391)))

(declare-fun bs!1920827 () Bool)

(assert (= bs!1920827 d!2283549))

(assert (=> bs!1920827 m!8023778))

(assert (=> bs!1920827 m!8023778))

(declare-fun m!8024186 () Bool)

(assert (=> bs!1920827 m!8024186))

(declare-fun m!8024188 () Bool)

(assert (=> bs!1920827 m!8024188))

(declare-fun m!8024190 () Bool)

(assert (=> bs!1920827 m!8024190))

(assert (=> d!2283447 d!2283549))

(declare-fun b!7370157 () Bool)

(declare-fun e!4412292 () Bool)

(declare-fun e!4412295 () Bool)

(assert (=> b!7370157 (= e!4412292 e!4412295)))

(declare-fun res!2973992 () Bool)

(assert (=> b!7370157 (=> res!2973992 e!4412295)))

(assert (=> b!7370157 (= res!2973992 (is-Star!19272 (regOne!39056 r1!2370)))))

(declare-fun b!7370158 () Bool)

(declare-fun e!4412293 () Bool)

(assert (=> b!7370158 (= e!4412295 e!4412293)))

(declare-fun c!1369746 () Bool)

(assert (=> b!7370158 (= c!1369746 (is-Union!19272 (regOne!39056 r1!2370)))))

(declare-fun b!7370159 () Bool)

(declare-fun e!4412294 () Bool)

(assert (=> b!7370159 (= e!4412293 e!4412294)))

(declare-fun res!2973990 () Bool)

(declare-fun call!676786 () Bool)

(assert (=> b!7370159 (= res!2973990 call!676786)))

(assert (=> b!7370159 (=> (not res!2973990) (not e!4412294))))

(declare-fun d!2283551 () Bool)

(declare-fun res!2973994 () Bool)

(declare-fun e!4412297 () Bool)

(assert (=> d!2283551 (=> res!2973994 e!4412297)))

(assert (=> d!2283551 (= res!2973994 (is-EmptyExpr!19272 (regOne!39056 r1!2370)))))

(assert (=> d!2283551 (= (nullableFct!3337 (regOne!39056 r1!2370)) e!4412297)))

(declare-fun b!7370160 () Bool)

(declare-fun e!4412296 () Bool)

(assert (=> b!7370160 (= e!4412296 call!676786)))

(declare-fun b!7370161 () Bool)

(assert (=> b!7370161 (= e!4412293 e!4412296)))

(declare-fun res!2973991 () Bool)

(declare-fun call!676787 () Bool)

(assert (=> b!7370161 (= res!2973991 call!676787)))

(assert (=> b!7370161 (=> res!2973991 e!4412296)))

(declare-fun b!7370162 () Bool)

(assert (=> b!7370162 (= e!4412294 call!676787)))

(declare-fun b!7370163 () Bool)

(assert (=> b!7370163 (= e!4412297 e!4412292)))

(declare-fun res!2973993 () Bool)

(assert (=> b!7370163 (=> (not res!2973993) (not e!4412292))))

(assert (=> b!7370163 (= res!2973993 (and (not (is-EmptyLang!19272 (regOne!39056 r1!2370))) (not (is-ElementMatch!19272 (regOne!39056 r1!2370)))))))

(declare-fun bm!676781 () Bool)

(assert (=> bm!676781 (= call!676787 (nullable!8348 (ite c!1369746 (regOne!39057 (regOne!39056 r1!2370)) (regTwo!39056 (regOne!39056 r1!2370)))))))

(declare-fun bm!676782 () Bool)

(assert (=> bm!676782 (= call!676786 (nullable!8348 (ite c!1369746 (regTwo!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(assert (= (and d!2283551 (not res!2973994)) b!7370163))

(assert (= (and b!7370163 res!2973993) b!7370157))

(assert (= (and b!7370157 (not res!2973992)) b!7370158))

(assert (= (and b!7370158 c!1369746) b!7370161))

(assert (= (and b!7370158 (not c!1369746)) b!7370159))

(assert (= (and b!7370161 (not res!2973991)) b!7370160))

(assert (= (and b!7370159 res!2973990) b!7370162))

(assert (= (or b!7370160 b!7370159) bm!676782))

(assert (= (or b!7370161 b!7370162) bm!676781))

(declare-fun m!8024192 () Bool)

(assert (=> bm!676781 m!8024192))

(declare-fun m!8024194 () Bool)

(assert (=> bm!676782 m!8024194))

(assert (=> d!2283463 d!2283551))

(declare-fun d!2283553 () Bool)

(declare-fun c!1369749 () Bool)

(assert (=> d!2283553 (= c!1369749 (is-Nil!71644 lt!2615361))))

(declare-fun e!4412300 () (Set Regex!19272))

(assert (=> d!2283553 (= (content!15152 lt!2615361) e!4412300)))

(declare-fun b!7370168 () Bool)

(assert (=> b!7370168 (= e!4412300 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370169 () Bool)

(assert (=> b!7370169 (= e!4412300 (set.union (set.insert (h!78092 lt!2615361) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 lt!2615361))))))

(assert (= (and d!2283553 c!1369749) b!7370168))

(assert (= (and d!2283553 (not c!1369749)) b!7370169))

(declare-fun m!8024196 () Bool)

(assert (=> b!7370169 m!8024196))

(declare-fun m!8024198 () Bool)

(assert (=> b!7370169 m!8024198))

(assert (=> d!2283461 d!2283553))

(declare-fun d!2283555 () Bool)

(declare-fun c!1369750 () Bool)

(assert (=> d!2283555 (= c!1369750 (is-Nil!71644 lt!2615302))))

(declare-fun e!4412301 () (Set Regex!19272))

(assert (=> d!2283555 (= (content!15152 lt!2615302) e!4412301)))

(declare-fun b!7370170 () Bool)

(assert (=> b!7370170 (= e!4412301 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370171 () Bool)

(assert (=> b!7370171 (= e!4412301 (set.union (set.insert (h!78092 lt!2615302) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 lt!2615302))))))

(assert (= (and d!2283555 c!1369750) b!7370170))

(assert (= (and d!2283555 (not c!1369750)) b!7370171))

(declare-fun m!8024200 () Bool)

(assert (=> b!7370171 m!8024200))

(declare-fun m!8024202 () Bool)

(assert (=> b!7370171 m!8024202))

(assert (=> d!2283461 d!2283555))

(declare-fun d!2283557 () Bool)

(declare-fun c!1369751 () Bool)

(assert (=> d!2283557 (= c!1369751 (is-Nil!71644 (exprs!8712 ct2!378)))))

(declare-fun e!4412302 () (Set Regex!19272))

(assert (=> d!2283557 (= (content!15152 (exprs!8712 ct2!378)) e!4412302)))

(declare-fun b!7370172 () Bool)

(assert (=> b!7370172 (= e!4412302 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370173 () Bool)

(assert (=> b!7370173 (= e!4412302 (set.union (set.insert (h!78092 (exprs!8712 ct2!378)) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 (exprs!8712 ct2!378)))))))

(assert (= (and d!2283557 c!1369751) b!7370172))

(assert (= (and d!2283557 (not c!1369751)) b!7370173))

(declare-fun m!8024204 () Bool)

(assert (=> b!7370173 m!8024204))

(declare-fun m!8024206 () Bool)

(assert (=> b!7370173 m!8024206))

(assert (=> d!2283461 d!2283557))

(declare-fun b!7370174 () Bool)

(declare-fun e!4412304 () (Set Context!16424))

(declare-fun call!676791 () (Set Context!16424))

(declare-fun call!676792 () (Set Context!16424))

(assert (=> b!7370174 (= e!4412304 (set.union call!676791 call!676792))))

(declare-fun bm!676783 () Bool)

(declare-fun call!676793 () (Set Context!16424))

(assert (=> bm!676783 (= call!676792 call!676793)))

(declare-fun b!7370175 () Bool)

(declare-fun e!4412306 () (Set Context!16424))

(declare-fun call!676789 () (Set Context!16424))

(assert (=> b!7370175 (= e!4412306 call!676789)))

(declare-fun bm!676784 () Bool)

(declare-fun call!676788 () List!71768)

(declare-fun call!676790 () List!71768)

(assert (=> bm!676784 (= call!676788 call!676790)))

(declare-fun b!7370176 () Bool)

(declare-fun c!1369754 () Bool)

(assert (=> b!7370176 (= c!1369754 (is-Star!19272 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))))))

(declare-fun e!4412308 () (Set Context!16424))

(assert (=> b!7370176 (= e!4412308 e!4412306)))

(declare-fun b!7370177 () Bool)

(declare-fun e!4412305 () (Set Context!16424))

(assert (=> b!7370177 (= e!4412305 (set.union call!676791 call!676793))))

(declare-fun b!7370178 () Bool)

(assert (=> b!7370178 (= e!4412306 (as set.empty (Set Context!16424)))))

(declare-fun b!7370179 () Bool)

(assert (=> b!7370179 (= e!4412308 call!676789)))

(declare-fun c!1369752 () Bool)

(declare-fun bm!676785 () Bool)

(assert (=> bm!676785 (= call!676791 (derivationStepZipperDown!3098 (ite c!1369752 (regOne!39057 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (regOne!39056 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))))) (ite c!1369752 (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680)) (Context!16425 call!676790)) c!10362))))

(declare-fun e!4412307 () (Set Context!16424))

(declare-fun b!7370180 () Bool)

(assert (=> b!7370180 (= e!4412307 (set.insert (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370181 () Bool)

(assert (=> b!7370181 (= e!4412304 e!4412308)))

(declare-fun c!1369756 () Bool)

(assert (=> b!7370181 (= c!1369756 (is-Concat!28117 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))))))

(declare-fun c!1369753 () Bool)

(declare-fun bm!676786 () Bool)

(assert (=> bm!676786 (= call!676790 ($colon$colon!3254 (exprs!8712 (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680))) (ite (or c!1369753 c!1369756) (regTwo!39056 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))))))))

(declare-fun e!4412303 () Bool)

(declare-fun b!7370182 () Bool)

(assert (=> b!7370182 (= e!4412303 (nullable!8348 (regOne!39056 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))))))))

(declare-fun bm!676787 () Bool)

(assert (=> bm!676787 (= call!676793 (derivationStepZipperDown!3098 (ite c!1369752 (regTwo!39057 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (ite c!1369753 (regTwo!39056 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (ite c!1369756 (regOne!39056 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (reg!19601 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))))))) (ite (or c!1369752 c!1369753) (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680)) (Context!16425 call!676788)) c!10362))))

(declare-fun b!7370183 () Bool)

(assert (=> b!7370183 (= c!1369753 e!4412303)))

(declare-fun res!2973995 () Bool)

(assert (=> b!7370183 (=> (not res!2973995) (not e!4412303))))

(assert (=> b!7370183 (= res!2973995 (is-Concat!28117 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))))))

(assert (=> b!7370183 (= e!4412305 e!4412304)))

(declare-fun c!1369755 () Bool)

(declare-fun d!2283559 () Bool)

(assert (=> d!2283559 (= c!1369755 (and (is-ElementMatch!19272 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) (= (c!1369608 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))) c!10362)))))

(assert (=> d!2283559 (= (derivationStepZipperDown!3098 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370))))) (ite (or c!1369652 c!1369653) ct1!282 (Context!16425 call!676680)) c!10362) e!4412307)))

(declare-fun b!7370184 () Bool)

(assert (=> b!7370184 (= e!4412307 e!4412305)))

(assert (=> b!7370184 (= c!1369752 (is-Union!19272 (ite c!1369652 (regTwo!39057 (regTwo!39056 r1!2370)) (ite c!1369653 (regTwo!39056 (regTwo!39056 r1!2370)) (ite c!1369656 (regOne!39056 (regTwo!39056 r1!2370)) (reg!19601 (regTwo!39056 r1!2370)))))))))

(declare-fun bm!676788 () Bool)

(assert (=> bm!676788 (= call!676789 call!676792)))

(assert (= (and d!2283559 c!1369755) b!7370180))

(assert (= (and d!2283559 (not c!1369755)) b!7370184))

(assert (= (and b!7370184 c!1369752) b!7370177))

(assert (= (and b!7370184 (not c!1369752)) b!7370183))

(assert (= (and b!7370183 res!2973995) b!7370182))

(assert (= (and b!7370183 c!1369753) b!7370174))

(assert (= (and b!7370183 (not c!1369753)) b!7370181))

(assert (= (and b!7370181 c!1369756) b!7370179))

(assert (= (and b!7370181 (not c!1369756)) b!7370176))

(assert (= (and b!7370176 c!1369754) b!7370175))

(assert (= (and b!7370176 (not c!1369754)) b!7370178))

(assert (= (or b!7370179 b!7370175) bm!676784))

(assert (= (or b!7370179 b!7370175) bm!676788))

(assert (= (or b!7370174 bm!676788) bm!676783))

(assert (= (or b!7370174 bm!676784) bm!676786))

(assert (= (or b!7370177 bm!676783) bm!676787))

(assert (= (or b!7370177 b!7370174) bm!676785))

(declare-fun m!8024208 () Bool)

(assert (=> b!7370182 m!8024208))

(declare-fun m!8024210 () Bool)

(assert (=> bm!676785 m!8024210))

(declare-fun m!8024212 () Bool)

(assert (=> bm!676787 m!8024212))

(declare-fun m!8024214 () Bool)

(assert (=> b!7370180 m!8024214))

(declare-fun m!8024216 () Bool)

(assert (=> bm!676786 m!8024216))

(assert (=> bm!676679 d!2283559))

(declare-fun d!2283561 () Bool)

(assert (=> d!2283561 (= (nullable!8348 (reg!19601 r1!2370)) (nullableFct!3337 (reg!19601 r1!2370)))))

(declare-fun bs!1920828 () Bool)

(assert (= bs!1920828 d!2283561))

(declare-fun m!8024218 () Bool)

(assert (=> bs!1920828 m!8024218))

(assert (=> b!7369758 d!2283561))

(declare-fun b!7370185 () Bool)

(declare-fun e!4412310 () (Set Context!16424))

(declare-fun call!676797 () (Set Context!16424))

(declare-fun call!676798 () (Set Context!16424))

(assert (=> b!7370185 (= e!4412310 (set.union call!676797 call!676798))))

(declare-fun bm!676789 () Bool)

(declare-fun call!676799 () (Set Context!16424))

(assert (=> bm!676789 (= call!676798 call!676799)))

(declare-fun b!7370186 () Bool)

(declare-fun e!4412312 () (Set Context!16424))

(declare-fun call!676795 () (Set Context!16424))

(assert (=> b!7370186 (= e!4412312 call!676795)))

(declare-fun bm!676790 () Bool)

(declare-fun call!676794 () List!71768)

(declare-fun call!676796 () List!71768)

(assert (=> bm!676790 (= call!676794 call!676796)))

(declare-fun c!1369759 () Bool)

(declare-fun b!7370187 () Bool)

(assert (=> b!7370187 (= c!1369759 (is-Star!19272 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun e!4412314 () (Set Context!16424))

(assert (=> b!7370187 (= e!4412314 e!4412312)))

(declare-fun b!7370188 () Bool)

(declare-fun e!4412311 () (Set Context!16424))

(assert (=> b!7370188 (= e!4412311 (set.union call!676797 call!676799))))

(declare-fun b!7370189 () Bool)

(assert (=> b!7370189 (= e!4412312 (as set.empty (Set Context!16424)))))

(declare-fun b!7370190 () Bool)

(assert (=> b!7370190 (= e!4412314 call!676795)))

(declare-fun c!1369757 () Bool)

(declare-fun bm!676791 () Bool)

(assert (=> bm!676791 (= call!676797 (derivationStepZipperDown!3098 (ite c!1369757 (regOne!39057 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (regOne!39056 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))) (ite c!1369757 (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686)) (Context!16425 call!676796)) c!10362))))

(declare-fun b!7370191 () Bool)

(declare-fun e!4412313 () (Set Context!16424))

(assert (=> b!7370191 (= e!4412313 (set.insert (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370192 () Bool)

(assert (=> b!7370192 (= e!4412310 e!4412314)))

(declare-fun c!1369761 () Bool)

(assert (=> b!7370192 (= c!1369761 (is-Concat!28117 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun bm!676792 () Bool)

(declare-fun c!1369758 () Bool)

(assert (=> bm!676792 (= call!676796 ($colon$colon!3254 (exprs!8712 (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686))) (ite (or c!1369758 c!1369761) (regTwo!39056 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))))

(declare-fun b!7370193 () Bool)

(declare-fun e!4412309 () Bool)

(assert (=> b!7370193 (= e!4412309 (nullable!8348 (regOne!39056 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))))

(declare-fun bm!676793 () Bool)

(assert (=> bm!676793 (= call!676799 (derivationStepZipperDown!3098 (ite c!1369757 (regTwo!39057 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369758 (regTwo!39056 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369761 (regOne!39056 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (reg!19601 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))) (ite (or c!1369757 c!1369758) (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686)) (Context!16425 call!676794)) c!10362))))

(declare-fun b!7370194 () Bool)

(assert (=> b!7370194 (= c!1369758 e!4412309)))

(declare-fun res!2973996 () Bool)

(assert (=> b!7370194 (=> (not res!2973996) (not e!4412309))))

(assert (=> b!7370194 (= res!2973996 (is-Concat!28117 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(assert (=> b!7370194 (= e!4412311 e!4412310)))

(declare-fun c!1369760 () Bool)

(declare-fun d!2283563 () Bool)

(assert (=> d!2283563 (= c!1369760 (and (is-ElementMatch!19272 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (= (c!1369608 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) c!10362)))))

(assert (=> d!2283563 (= (derivationStepZipperDown!3098 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))) (ite (or c!1369657 c!1369658) lt!2615306 (Context!16425 call!676686)) c!10362) e!4412313)))

(declare-fun b!7370195 () Bool)

(assert (=> b!7370195 (= e!4412313 e!4412311)))

(assert (=> b!7370195 (= c!1369757 (is-Union!19272 (ite c!1369657 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369658 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369661 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun bm!676794 () Bool)

(assert (=> bm!676794 (= call!676795 call!676798)))

(assert (= (and d!2283563 c!1369760) b!7370191))

(assert (= (and d!2283563 (not c!1369760)) b!7370195))

(assert (= (and b!7370195 c!1369757) b!7370188))

(assert (= (and b!7370195 (not c!1369757)) b!7370194))

(assert (= (and b!7370194 res!2973996) b!7370193))

(assert (= (and b!7370194 c!1369758) b!7370185))

(assert (= (and b!7370194 (not c!1369758)) b!7370192))

(assert (= (and b!7370192 c!1369761) b!7370190))

(assert (= (and b!7370192 (not c!1369761)) b!7370187))

(assert (= (and b!7370187 c!1369759) b!7370186))

(assert (= (and b!7370187 (not c!1369759)) b!7370189))

(assert (= (or b!7370190 b!7370186) bm!676790))

(assert (= (or b!7370190 b!7370186) bm!676794))

(assert (= (or b!7370185 bm!676794) bm!676789))

(assert (= (or b!7370185 bm!676790) bm!676792))

(assert (= (or b!7370188 bm!676789) bm!676793))

(assert (= (or b!7370188 b!7370185) bm!676791))

(declare-fun m!8024220 () Bool)

(assert (=> b!7370193 m!8024220))

(declare-fun m!8024222 () Bool)

(assert (=> bm!676791 m!8024222))

(declare-fun m!8024224 () Bool)

(assert (=> bm!676793 m!8024224))

(declare-fun m!8024226 () Bool)

(assert (=> b!7370191 m!8024226))

(declare-fun m!8024228 () Bool)

(assert (=> bm!676792 m!8024228))

(assert (=> bm!676685 d!2283563))

(declare-fun d!2283565 () Bool)

(assert (=> d!2283565 (= (nullable!8348 (regOne!39056 (regOne!39056 r1!2370))) (nullableFct!3337 (regOne!39056 (regOne!39056 r1!2370))))))

(declare-fun bs!1920829 () Bool)

(assert (= bs!1920829 d!2283565))

(declare-fun m!8024230 () Bool)

(assert (=> bs!1920829 m!8024230))

(assert (=> b!7369848 d!2283565))

(declare-fun d!2283567 () Bool)

(assert (=> d!2283567 (= ($colon$colon!3254 (exprs!8712 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)))) (ite (or c!1369646 c!1369649) (regTwo!39056 r1!2370) r1!2370)) (Cons!71644 (ite (or c!1369646 c!1369649) (regTwo!39056 r1!2370) r1!2370) (exprs!8712 (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))))))))

(assert (=> bm!676672 d!2283567))

(declare-fun b!7370196 () Bool)

(declare-fun e!4412315 () List!71768)

(assert (=> b!7370196 (= e!4412315 (exprs!8712 ct2!378))))

(declare-fun b!7370198 () Bool)

(declare-fun res!2973998 () Bool)

(declare-fun e!4412316 () Bool)

(assert (=> b!7370198 (=> (not res!2973998) (not e!4412316))))

(declare-fun lt!2615392 () List!71768)

(assert (=> b!7370198 (= res!2973998 (= (size!42130 lt!2615392) (+ (size!42130 (t!386227 (exprs!8712 ct1!282))) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7370199 () Bool)

(assert (=> b!7370199 (= e!4412316 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615392 (t!386227 (exprs!8712 ct1!282)))))))

(declare-fun b!7370197 () Bool)

(assert (=> b!7370197 (= e!4412315 (Cons!71644 (h!78092 (t!386227 (exprs!8712 ct1!282))) (++!17088 (t!386227 (t!386227 (exprs!8712 ct1!282))) (exprs!8712 ct2!378))))))

(declare-fun d!2283569 () Bool)

(assert (=> d!2283569 e!4412316))

(declare-fun res!2973997 () Bool)

(assert (=> d!2283569 (=> (not res!2973997) (not e!4412316))))

(assert (=> d!2283569 (= res!2973997 (= (content!15152 lt!2615392) (set.union (content!15152 (t!386227 (exprs!8712 ct1!282))) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283569 (= lt!2615392 e!4412315)))

(declare-fun c!1369762 () Bool)

(assert (=> d!2283569 (= c!1369762 (is-Nil!71644 (t!386227 (exprs!8712 ct1!282))))))

(assert (=> d!2283569 (= (++!17088 (t!386227 (exprs!8712 ct1!282)) (exprs!8712 ct2!378)) lt!2615392)))

(assert (= (and d!2283569 c!1369762) b!7370196))

(assert (= (and d!2283569 (not c!1369762)) b!7370197))

(assert (= (and d!2283569 res!2973997) b!7370198))

(assert (= (and b!7370198 res!2973998) b!7370199))

(declare-fun m!8024232 () Bool)

(assert (=> b!7370198 m!8024232))

(assert (=> b!7370198 m!8024136))

(assert (=> b!7370198 m!8023892))

(declare-fun m!8024234 () Bool)

(assert (=> b!7370197 m!8024234))

(declare-fun m!8024236 () Bool)

(assert (=> d!2283569 m!8024236))

(declare-fun m!8024238 () Bool)

(assert (=> d!2283569 m!8024238))

(assert (=> d!2283569 m!8023900))

(assert (=> b!7369822 d!2283569))

(declare-fun d!2283571 () Bool)

(assert (=> d!2283571 (= ($colon$colon!3254 (exprs!8712 ct1!282) (ite (or c!1369653 c!1369656) (regTwo!39056 (regTwo!39056 r1!2370)) (regTwo!39056 r1!2370))) (Cons!71644 (ite (or c!1369653 c!1369656) (regTwo!39056 (regTwo!39056 r1!2370)) (regTwo!39056 r1!2370)) (exprs!8712 ct1!282)))))

(assert (=> bm!676678 d!2283571))

(declare-fun b!7370200 () Bool)

(declare-fun e!4412318 () (Set Context!16424))

(declare-fun call!676803 () (Set Context!16424))

(declare-fun call!676804 () (Set Context!16424))

(assert (=> b!7370200 (= e!4412318 (set.union call!676803 call!676804))))

(declare-fun bm!676795 () Bool)

(declare-fun call!676805 () (Set Context!16424))

(assert (=> bm!676795 (= call!676804 call!676805)))

(declare-fun b!7370201 () Bool)

(declare-fun e!4412320 () (Set Context!16424))

(declare-fun call!676801 () (Set Context!16424))

(assert (=> b!7370201 (= e!4412320 call!676801)))

(declare-fun bm!676796 () Bool)

(declare-fun call!676800 () List!71768)

(declare-fun call!676802 () List!71768)

(assert (=> bm!676796 (= call!676800 call!676802)))

(declare-fun c!1369765 () Bool)

(declare-fun b!7370202 () Bool)

(assert (=> b!7370202 (= c!1369765 (is-Star!19272 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun e!4412322 () (Set Context!16424))

(assert (=> b!7370202 (= e!4412322 e!4412320)))

(declare-fun b!7370203 () Bool)

(declare-fun e!4412319 () (Set Context!16424))

(assert (=> b!7370203 (= e!4412319 (set.union call!676803 call!676805))))

(declare-fun b!7370204 () Bool)

(assert (=> b!7370204 (= e!4412320 (as set.empty (Set Context!16424)))))

(declare-fun b!7370205 () Bool)

(assert (=> b!7370205 (= e!4412322 call!676801)))

(declare-fun bm!676797 () Bool)

(declare-fun c!1369763 () Bool)

(assert (=> bm!676797 (= call!676803 (derivationStepZipperDown!3098 (ite c!1369763 (regOne!39057 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (regOne!39056 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))) (ite c!1369763 (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674)) (Context!16425 call!676802)) c!10362))))

(declare-fun e!4412321 () (Set Context!16424))

(declare-fun b!7370206 () Bool)

(assert (=> b!7370206 (= e!4412321 (set.insert (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370207 () Bool)

(assert (=> b!7370207 (= e!4412318 e!4412322)))

(declare-fun c!1369767 () Bool)

(assert (=> b!7370207 (= c!1369767 (is-Concat!28117 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun bm!676798 () Bool)

(declare-fun c!1369764 () Bool)

(assert (=> bm!676798 (= call!676802 ($colon$colon!3254 (exprs!8712 (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674))) (ite (or c!1369764 c!1369767) (regTwo!39056 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))))

(declare-fun b!7370208 () Bool)

(declare-fun e!4412317 () Bool)

(assert (=> b!7370208 (= e!4412317 (nullable!8348 (regOne!39056 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))))

(declare-fun bm!676799 () Bool)

(assert (=> bm!676799 (= call!676805 (derivationStepZipperDown!3098 (ite c!1369763 (regTwo!39057 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369764 (regTwo!39056 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369767 (regOne!39056 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (reg!19601 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))) (ite (or c!1369763 c!1369764) (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674)) (Context!16425 call!676800)) c!10362))))

(declare-fun b!7370209 () Bool)

(assert (=> b!7370209 (= c!1369764 e!4412317)))

(declare-fun res!2973999 () Bool)

(assert (=> b!7370209 (=> (not res!2973999) (not e!4412317))))

(assert (=> b!7370209 (= res!2973999 (is-Concat!28117 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(assert (=> b!7370209 (= e!4412319 e!4412318)))

(declare-fun d!2283573 () Bool)

(declare-fun c!1369766 () Bool)

(assert (=> d!2283573 (= c!1369766 (and (is-ElementMatch!19272 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (= (c!1369608 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) c!10362)))))

(assert (=> d!2283573 (= (derivationStepZipperDown!3098 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370)))) (ite (or c!1369645 c!1369646) (Context!16425 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378))) (Context!16425 call!676674)) c!10362) e!4412321)))

(declare-fun b!7370210 () Bool)

(assert (=> b!7370210 (= e!4412321 e!4412319)))

(assert (=> b!7370210 (= c!1369763 (is-Union!19272 (ite c!1369645 (regTwo!39057 r1!2370) (ite c!1369646 (regTwo!39056 r1!2370) (ite c!1369649 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun bm!676800 () Bool)

(assert (=> bm!676800 (= call!676801 call!676804)))

(assert (= (and d!2283573 c!1369766) b!7370206))

(assert (= (and d!2283573 (not c!1369766)) b!7370210))

(assert (= (and b!7370210 c!1369763) b!7370203))

(assert (= (and b!7370210 (not c!1369763)) b!7370209))

(assert (= (and b!7370209 res!2973999) b!7370208))

(assert (= (and b!7370209 c!1369764) b!7370200))

(assert (= (and b!7370209 (not c!1369764)) b!7370207))

(assert (= (and b!7370207 c!1369767) b!7370205))

(assert (= (and b!7370207 (not c!1369767)) b!7370202))

(assert (= (and b!7370202 c!1369765) b!7370201))

(assert (= (and b!7370202 (not c!1369765)) b!7370204))

(assert (= (or b!7370205 b!7370201) bm!676796))

(assert (= (or b!7370205 b!7370201) bm!676800))

(assert (= (or b!7370200 bm!676800) bm!676795))

(assert (= (or b!7370200 bm!676796) bm!676798))

(assert (= (or b!7370203 bm!676795) bm!676799))

(assert (= (or b!7370203 b!7370200) bm!676797))

(declare-fun m!8024240 () Bool)

(assert (=> b!7370208 m!8024240))

(declare-fun m!8024242 () Bool)

(assert (=> bm!676797 m!8024242))

(declare-fun m!8024244 () Bool)

(assert (=> bm!676799 m!8024244))

(declare-fun m!8024246 () Bool)

(assert (=> b!7370206 m!8024246))

(declare-fun m!8024248 () Bool)

(assert (=> bm!676798 m!8024248))

(assert (=> bm!676673 d!2283573))

(assert (=> b!7369818 d!2283463))

(declare-fun d!2283575 () Bool)

(declare-fun res!2974000 () Bool)

(declare-fun e!4412323 () Bool)

(assert (=> d!2283575 (=> res!2974000 e!4412323)))

(assert (=> d!2283575 (= res!2974000 (is-Nil!71644 (exprs!8712 ct2!378)))))

(assert (=> d!2283575 (= (forall!18078 (exprs!8712 ct2!378) lambda!457934) e!4412323)))

(declare-fun b!7370211 () Bool)

(declare-fun e!4412324 () Bool)

(assert (=> b!7370211 (= e!4412323 e!4412324)))

(declare-fun res!2974001 () Bool)

(assert (=> b!7370211 (=> (not res!2974001) (not e!4412324))))

(assert (=> b!7370211 (= res!2974001 (dynLambda!29524 lambda!457934 (h!78092 (exprs!8712 ct2!378))))))

(declare-fun b!7370212 () Bool)

(assert (=> b!7370212 (= e!4412324 (forall!18078 (t!386227 (exprs!8712 ct2!378)) lambda!457934))))

(assert (= (and d!2283575 (not res!2974000)) b!7370211))

(assert (= (and b!7370211 res!2974001) b!7370212))

(declare-fun b_lambda!284417 () Bool)

(assert (=> (not b_lambda!284417) (not b!7370211)))

(declare-fun m!8024250 () Bool)

(assert (=> b!7370211 m!8024250))

(declare-fun m!8024252 () Bool)

(assert (=> b!7370212 m!8024252))

(assert (=> d!2283443 d!2283575))

(declare-fun d!2283577 () Bool)

(declare-fun res!2974002 () Bool)

(declare-fun e!4412325 () Bool)

(assert (=> d!2283577 (=> res!2974002 e!4412325)))

(assert (=> d!2283577 (= res!2974002 (is-Nil!71644 (++!17088 lt!2615302 (exprs!8712 ct2!378))))))

(assert (=> d!2283577 (= (forall!18078 (++!17088 lt!2615302 (exprs!8712 ct2!378)) lambda!457920) e!4412325)))

(declare-fun b!7370213 () Bool)

(declare-fun e!4412326 () Bool)

(assert (=> b!7370213 (= e!4412325 e!4412326)))

(declare-fun res!2974003 () Bool)

(assert (=> b!7370213 (=> (not res!2974003) (not e!4412326))))

(assert (=> b!7370213 (= res!2974003 (dynLambda!29524 lambda!457920 (h!78092 (++!17088 lt!2615302 (exprs!8712 ct2!378)))))))

(declare-fun b!7370214 () Bool)

(assert (=> b!7370214 (= e!4412326 (forall!18078 (t!386227 (++!17088 lt!2615302 (exprs!8712 ct2!378))) lambda!457920))))

(assert (= (and d!2283577 (not res!2974002)) b!7370213))

(assert (= (and b!7370213 res!2974003) b!7370214))

(declare-fun b_lambda!284419 () Bool)

(assert (=> (not b_lambda!284419) (not b!7370213)))

(declare-fun m!8024254 () Bool)

(assert (=> b!7370213 m!8024254))

(declare-fun m!8024256 () Bool)

(assert (=> b!7370214 m!8024256))

(assert (=> d!2283455 d!2283577))

(assert (=> d!2283455 d!2283461))

(declare-fun d!2283579 () Bool)

(assert (=> d!2283579 (forall!18078 (++!17088 lt!2615302 (exprs!8712 ct2!378)) lambda!457920)))

(assert (=> d!2283579 true))

(declare-fun _$78!937 () Unit!165493)

(assert (=> d!2283579 (= (choose!57298 lt!2615302 (exprs!8712 ct2!378) lambda!457920) _$78!937)))

(declare-fun bs!1920830 () Bool)

(assert (= bs!1920830 d!2283579))

(assert (=> bs!1920830 m!8023772))

(assert (=> bs!1920830 m!8023772))

(assert (=> bs!1920830 m!8023882))

(assert (=> d!2283455 d!2283579))

(declare-fun d!2283581 () Bool)

(declare-fun res!2974004 () Bool)

(declare-fun e!4412327 () Bool)

(assert (=> d!2283581 (=> res!2974004 e!4412327)))

(assert (=> d!2283581 (= res!2974004 (is-Nil!71644 lt!2615302))))

(assert (=> d!2283581 (= (forall!18078 lt!2615302 lambda!457920) e!4412327)))

(declare-fun b!7370215 () Bool)

(declare-fun e!4412328 () Bool)

(assert (=> b!7370215 (= e!4412327 e!4412328)))

(declare-fun res!2974005 () Bool)

(assert (=> b!7370215 (=> (not res!2974005) (not e!4412328))))

(assert (=> b!7370215 (= res!2974005 (dynLambda!29524 lambda!457920 (h!78092 lt!2615302)))))

(declare-fun b!7370216 () Bool)

(assert (=> b!7370216 (= e!4412328 (forall!18078 (t!386227 lt!2615302) lambda!457920))))

(assert (= (and d!2283581 (not res!2974004)) b!7370215))

(assert (= (and b!7370215 res!2974005) b!7370216))

(declare-fun b_lambda!284421 () Bool)

(assert (=> (not b_lambda!284421) (not b!7370215)))

(declare-fun m!8024258 () Bool)

(assert (=> b!7370215 m!8024258))

(declare-fun m!8024260 () Bool)

(assert (=> b!7370216 m!8024260))

(assert (=> d!2283455 d!2283581))

(declare-fun bm!676801 () Bool)

(declare-fun call!676808 () Bool)

(declare-fun call!676807 () Bool)

(assert (=> bm!676801 (= call!676808 call!676807)))

(declare-fun b!7370217 () Bool)

(declare-fun e!4412329 () Bool)

(assert (=> b!7370217 (= e!4412329 call!676808)))

(declare-fun b!7370218 () Bool)

(declare-fun e!4412335 () Bool)

(declare-fun e!4412333 () Bool)

(assert (=> b!7370218 (= e!4412335 e!4412333)))

(declare-fun res!2974007 () Bool)

(assert (=> b!7370218 (= res!2974007 (not (nullable!8348 (reg!19601 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))))

(assert (=> b!7370218 (=> (not res!2974007) (not e!4412333))))

(declare-fun b!7370219 () Bool)

(assert (=> b!7370219 (= e!4412333 call!676807)))

(declare-fun b!7370220 () Bool)

(declare-fun e!4412330 () Bool)

(declare-fun call!676806 () Bool)

(assert (=> b!7370220 (= e!4412330 call!676806)))

(declare-fun b!7370221 () Bool)

(declare-fun e!4412332 () Bool)

(assert (=> b!7370221 (= e!4412332 e!4412329)))

(declare-fun res!2974009 () Bool)

(assert (=> b!7370221 (=> (not res!2974009) (not e!4412329))))

(assert (=> b!7370221 (= res!2974009 call!676806)))

(declare-fun b!7370222 () Bool)

(declare-fun res!2974006 () Bool)

(assert (=> b!7370222 (=> res!2974006 e!4412332)))

(assert (=> b!7370222 (= res!2974006 (not (is-Concat!28117 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370))))))))

(declare-fun e!4412334 () Bool)

(assert (=> b!7370222 (= e!4412334 e!4412332)))

(declare-fun c!1369769 () Bool)

(declare-fun bm!676802 () Bool)

(assert (=> bm!676802 (= call!676806 (validRegex!9868 (ite c!1369769 (regTwo!39057 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))) (regOne!39056 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))))

(declare-fun d!2283583 () Bool)

(declare-fun res!2974008 () Bool)

(declare-fun e!4412331 () Bool)

(assert (=> d!2283583 (=> res!2974008 e!4412331)))

(assert (=> d!2283583 (= res!2974008 (is-ElementMatch!19272 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))

(assert (=> d!2283583 (= (validRegex!9868 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))) e!4412331)))

(declare-fun b!7370223 () Bool)

(declare-fun res!2974010 () Bool)

(assert (=> b!7370223 (=> (not res!2974010) (not e!4412330))))

(assert (=> b!7370223 (= res!2974010 call!676808)))

(assert (=> b!7370223 (= e!4412334 e!4412330)))

(declare-fun b!7370224 () Bool)

(assert (=> b!7370224 (= e!4412335 e!4412334)))

(assert (=> b!7370224 (= c!1369769 (is-Union!19272 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))

(declare-fun c!1369768 () Bool)

(declare-fun bm!676803 () Bool)

(assert (=> bm!676803 (= call!676807 (validRegex!9868 (ite c!1369768 (reg!19601 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))) (ite c!1369769 (regOne!39057 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))) (regTwo!39056 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370))))))))))

(declare-fun b!7370225 () Bool)

(assert (=> b!7370225 (= e!4412331 e!4412335)))

(assert (=> b!7370225 (= c!1369768 (is-Star!19272 (ite c!1369629 (reg!19601 r1!2370) (ite c!1369630 (regOne!39057 r1!2370) (regTwo!39056 r1!2370)))))))

(assert (= (and d!2283583 (not res!2974008)) b!7370225))

(assert (= (and b!7370225 c!1369768) b!7370218))

(assert (= (and b!7370225 (not c!1369768)) b!7370224))

(assert (= (and b!7370218 res!2974007) b!7370219))

(assert (= (and b!7370224 c!1369769) b!7370223))

(assert (= (and b!7370224 (not c!1369769)) b!7370222))

(assert (= (and b!7370223 res!2974010) b!7370220))

(assert (= (and b!7370222 (not res!2974006)) b!7370221))

(assert (= (and b!7370221 res!2974009) b!7370217))

(assert (= (or b!7370223 b!7370217) bm!676801))

(assert (= (or b!7370220 b!7370221) bm!676802))

(assert (= (or b!7370219 bm!676801) bm!676803))

(declare-fun m!8024262 () Bool)

(assert (=> b!7370218 m!8024262))

(declare-fun m!8024264 () Bool)

(assert (=> bm!676802 m!8024264))

(declare-fun m!8024266 () Bool)

(assert (=> bm!676803 m!8024266))

(assert (=> bm!676659 d!2283583))

(declare-fun d!2283585 () Bool)

(assert (=> d!2283585 (= (nullable!8348 (reg!19601 (regTwo!39056 r1!2370))) (nullableFct!3337 (reg!19601 (regTwo!39056 r1!2370))))))

(declare-fun bs!1920831 () Bool)

(assert (= bs!1920831 d!2283585))

(declare-fun m!8024268 () Bool)

(assert (=> bs!1920831 m!8024268))

(assert (=> b!7369767 d!2283585))

(assert (=> b!7369736 d!2283463))

(declare-fun d!2283587 () Bool)

(assert (=> d!2283587 (= ($colon$colon!3254 (exprs!8712 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378)))) (ite (or c!1369640 c!1369643) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370))) (Cons!71644 (ite (or c!1369640 c!1369643) (regTwo!39056 (regOne!39056 r1!2370)) (regOne!39056 r1!2370)) (exprs!8712 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))))))))

(assert (=> bm!676666 d!2283587))

(declare-fun b!7370226 () Bool)

(declare-fun e!4412337 () (Set Context!16424))

(declare-fun call!676812 () (Set Context!16424))

(declare-fun call!676813 () (Set Context!16424))

(assert (=> b!7370226 (= e!4412337 (set.union call!676812 call!676813))))

(declare-fun bm!676804 () Bool)

(declare-fun call!676814 () (Set Context!16424))

(assert (=> bm!676804 (= call!676813 call!676814)))

(declare-fun b!7370227 () Bool)

(declare-fun e!4412339 () (Set Context!16424))

(declare-fun call!676810 () (Set Context!16424))

(assert (=> b!7370227 (= e!4412339 call!676810)))

(declare-fun bm!676805 () Bool)

(declare-fun call!676809 () List!71768)

(declare-fun call!676811 () List!71768)

(assert (=> bm!676805 (= call!676809 call!676811)))

(declare-fun b!7370228 () Bool)

(declare-fun c!1369772 () Bool)

(assert (=> b!7370228 (= c!1369772 (is-Star!19272 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun e!4412341 () (Set Context!16424))

(assert (=> b!7370228 (= e!4412341 e!4412339)))

(declare-fun b!7370229 () Bool)

(declare-fun e!4412338 () (Set Context!16424))

(assert (=> b!7370229 (= e!4412338 (set.union call!676812 call!676814))))

(declare-fun b!7370230 () Bool)

(assert (=> b!7370230 (= e!4412339 (as set.empty (Set Context!16424)))))

(declare-fun b!7370231 () Bool)

(assert (=> b!7370231 (= e!4412341 call!676810)))

(declare-fun bm!676806 () Bool)

(declare-fun c!1369770 () Bool)

(assert (=> bm!676806 (= call!676812 (derivationStepZipperDown!3098 (ite c!1369770 (regOne!39057 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (regOne!39056 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))) (ite c!1369770 (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650)) (Context!16425 call!676811)) c!10362))))

(declare-fun e!4412340 () (Set Context!16424))

(declare-fun b!7370232 () Bool)

(assert (=> b!7370232 (= e!4412340 (set.insert (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370233 () Bool)

(assert (=> b!7370233 (= e!4412337 e!4412341)))

(declare-fun c!1369774 () Bool)

(assert (=> b!7370233 (= c!1369774 (is-Concat!28117 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun c!1369771 () Bool)

(declare-fun bm!676807 () Bool)

(assert (=> bm!676807 (= call!676811 ($colon$colon!3254 (exprs!8712 (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650))) (ite (or c!1369771 c!1369774) (regTwo!39056 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))))

(declare-fun b!7370234 () Bool)

(declare-fun e!4412336 () Bool)

(assert (=> b!7370234 (= e!4412336 (nullable!8348 (regOne!39056 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))))

(declare-fun bm!676808 () Bool)

(assert (=> bm!676808 (= call!676814 (derivationStepZipperDown!3098 (ite c!1369770 (regTwo!39057 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369771 (regTwo!39056 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (ite c!1369774 (regOne!39056 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (reg!19601 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))))))) (ite (or c!1369770 c!1369771) (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650)) (Context!16425 call!676809)) c!10362))))

(declare-fun b!7370235 () Bool)

(assert (=> b!7370235 (= c!1369771 e!4412336)))

(declare-fun res!2974011 () Bool)

(assert (=> b!7370235 (=> (not res!2974011) (not e!4412336))))

(assert (=> b!7370235 (= res!2974011 (is-Concat!28117 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(assert (=> b!7370235 (= e!4412338 e!4412337)))

(declare-fun d!2283589 () Bool)

(declare-fun c!1369773 () Bool)

(assert (=> d!2283589 (= c!1369773 (and (is-ElementMatch!19272 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) (= (c!1369608 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))) c!10362)))))

(assert (=> d!2283589 (= (derivationStepZipperDown!3098 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370)))) (ite (or c!1369620 c!1369621) ct1!282 (Context!16425 call!676650)) c!10362) e!4412340)))

(declare-fun b!7370236 () Bool)

(assert (=> b!7370236 (= e!4412340 e!4412338)))

(assert (=> b!7370236 (= c!1369770 (is-Union!19272 (ite c!1369620 (regTwo!39057 r1!2370) (ite c!1369621 (regTwo!39056 r1!2370) (ite c!1369624 (regOne!39056 r1!2370) (reg!19601 r1!2370))))))))

(declare-fun bm!676809 () Bool)

(assert (=> bm!676809 (= call!676810 call!676813)))

(assert (= (and d!2283589 c!1369773) b!7370232))

(assert (= (and d!2283589 (not c!1369773)) b!7370236))

(assert (= (and b!7370236 c!1369770) b!7370229))

(assert (= (and b!7370236 (not c!1369770)) b!7370235))

(assert (= (and b!7370235 res!2974011) b!7370234))

(assert (= (and b!7370235 c!1369771) b!7370226))

(assert (= (and b!7370235 (not c!1369771)) b!7370233))

(assert (= (and b!7370233 c!1369774) b!7370231))

(assert (= (and b!7370233 (not c!1369774)) b!7370228))

(assert (= (and b!7370228 c!1369772) b!7370227))

(assert (= (and b!7370228 (not c!1369772)) b!7370230))

(assert (= (or b!7370231 b!7370227) bm!676805))

(assert (= (or b!7370231 b!7370227) bm!676809))

(assert (= (or b!7370226 bm!676809) bm!676804))

(assert (= (or b!7370226 bm!676805) bm!676807))

(assert (= (or b!7370229 bm!676804) bm!676808))

(assert (= (or b!7370229 b!7370226) bm!676806))

(declare-fun m!8024270 () Bool)

(assert (=> b!7370234 m!8024270))

(declare-fun m!8024272 () Bool)

(assert (=> bm!676806 m!8024272))

(declare-fun m!8024274 () Bool)

(assert (=> bm!676808 m!8024274))

(declare-fun m!8024276 () Bool)

(assert (=> b!7370232 m!8024276))

(declare-fun m!8024278 () Bool)

(assert (=> bm!676807 m!8024278))

(assert (=> bm!676649 d!2283589))

(assert (=> b!7369803 d!2283565))

(declare-fun bm!676810 () Bool)

(declare-fun call!676817 () Bool)

(declare-fun call!676816 () Bool)

(assert (=> bm!676810 (= call!676817 call!676816)))

(declare-fun b!7370237 () Bool)

(declare-fun e!4412342 () Bool)

(assert (=> b!7370237 (= e!4412342 call!676817)))

(declare-fun b!7370238 () Bool)

(declare-fun e!4412348 () Bool)

(declare-fun e!4412346 () Bool)

(assert (=> b!7370238 (= e!4412348 e!4412346)))

(declare-fun res!2974013 () Bool)

(assert (=> b!7370238 (= res!2974013 (not (nullable!8348 (reg!19601 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))))

(assert (=> b!7370238 (=> (not res!2974013) (not e!4412346))))

(declare-fun b!7370239 () Bool)

(assert (=> b!7370239 (= e!4412346 call!676816)))

(declare-fun b!7370240 () Bool)

(declare-fun e!4412343 () Bool)

(declare-fun call!676815 () Bool)

(assert (=> b!7370240 (= e!4412343 call!676815)))

(declare-fun b!7370241 () Bool)

(declare-fun e!4412345 () Bool)

(assert (=> b!7370241 (= e!4412345 e!4412342)))

(declare-fun res!2974015 () Bool)

(assert (=> b!7370241 (=> (not res!2974015) (not e!4412342))))

(assert (=> b!7370241 (= res!2974015 call!676815)))

(declare-fun b!7370242 () Bool)

(declare-fun res!2974012 () Bool)

(assert (=> b!7370242 (=> res!2974012 e!4412345)))

(assert (=> b!7370242 (= res!2974012 (not (is-Concat!28117 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370)))))))

(declare-fun e!4412347 () Bool)

(assert (=> b!7370242 (= e!4412347 e!4412345)))

(declare-fun bm!676811 () Bool)

(declare-fun c!1369776 () Bool)

(assert (=> bm!676811 (= call!676815 (validRegex!9868 (ite c!1369776 (regTwo!39057 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))) (regOne!39056 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))))

(declare-fun d!2283591 () Bool)

(declare-fun res!2974014 () Bool)

(declare-fun e!4412344 () Bool)

(assert (=> d!2283591 (=> res!2974014 e!4412344)))

(assert (=> d!2283591 (= res!2974014 (is-ElementMatch!19272 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))

(assert (=> d!2283591 (= (validRegex!9868 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))) e!4412344)))

(declare-fun b!7370243 () Bool)

(declare-fun res!2974016 () Bool)

(assert (=> b!7370243 (=> (not res!2974016) (not e!4412343))))

(assert (=> b!7370243 (= res!2974016 call!676817)))

(assert (=> b!7370243 (= e!4412347 e!4412343)))

(declare-fun b!7370244 () Bool)

(assert (=> b!7370244 (= e!4412348 e!4412347)))

(assert (=> b!7370244 (= c!1369776 (is-Union!19272 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))

(declare-fun bm!676812 () Bool)

(declare-fun c!1369775 () Bool)

(assert (=> bm!676812 (= call!676816 (validRegex!9868 (ite c!1369775 (reg!19601 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))) (ite c!1369776 (regOne!39057 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))) (regTwo!39056 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370)))))))))

(declare-fun b!7370245 () Bool)

(assert (=> b!7370245 (= e!4412344 e!4412348)))

(assert (=> b!7370245 (= c!1369775 (is-Star!19272 (ite c!1369630 (regTwo!39057 r1!2370) (regOne!39056 r1!2370))))))

(assert (= (and d!2283591 (not res!2974014)) b!7370245))

(assert (= (and b!7370245 c!1369775) b!7370238))

(assert (= (and b!7370245 (not c!1369775)) b!7370244))

(assert (= (and b!7370238 res!2974013) b!7370239))

(assert (= (and b!7370244 c!1369776) b!7370243))

(assert (= (and b!7370244 (not c!1369776)) b!7370242))

(assert (= (and b!7370243 res!2974016) b!7370240))

(assert (= (and b!7370242 (not res!2974012)) b!7370241))

(assert (= (and b!7370241 res!2974015) b!7370237))

(assert (= (or b!7370243 b!7370237) bm!676810))

(assert (= (or b!7370240 b!7370241) bm!676811))

(assert (= (or b!7370239 bm!676810) bm!676812))

(declare-fun m!8024280 () Bool)

(assert (=> b!7370238 m!8024280))

(declare-fun m!8024282 () Bool)

(assert (=> bm!676811 m!8024282))

(declare-fun m!8024284 () Bool)

(assert (=> bm!676812 m!8024284))

(assert (=> bm!676658 d!2283591))

(declare-fun d!2283593 () Bool)

(declare-fun res!2974017 () Bool)

(declare-fun e!4412349 () Bool)

(assert (=> d!2283593 (=> res!2974017 e!4412349)))

(assert (=> d!2283593 (= res!2974017 (is-Nil!71644 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378))))))

(assert (=> d!2283593 (= (forall!18078 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)) lambda!457920) e!4412349)))

(declare-fun b!7370246 () Bool)

(declare-fun e!4412350 () Bool)

(assert (=> b!7370246 (= e!4412349 e!4412350)))

(declare-fun res!2974018 () Bool)

(assert (=> b!7370246 (=> (not res!2974018) (not e!4412350))))

(assert (=> b!7370246 (= res!2974018 (dynLambda!29524 lambda!457920 (h!78092 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)))))))

(declare-fun b!7370247 () Bool)

(assert (=> b!7370247 (= e!4412350 (forall!18078 (t!386227 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378))) lambda!457920))))

(assert (= (and d!2283593 (not res!2974017)) b!7370246))

(assert (= (and b!7370246 res!2974018) b!7370247))

(declare-fun b_lambda!284423 () Bool)

(assert (=> (not b_lambda!284423) (not b!7370246)))

(declare-fun m!8024286 () Bool)

(assert (=> b!7370246 m!8024286))

(declare-fun m!8024288 () Bool)

(assert (=> b!7370247 m!8024288))

(assert (=> d!2283453 d!2283593))

(assert (=> d!2283453 d!2283457))

(declare-fun d!2283595 () Bool)

(assert (=> d!2283595 (forall!18078 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)) lambda!457920)))

(assert (=> d!2283595 true))

(declare-fun _$78!938 () Unit!165493)

(assert (=> d!2283595 (= (choose!57298 (exprs!8712 cWitness!61) (exprs!8712 ct2!378) lambda!457920) _$78!938)))

(declare-fun bs!1920832 () Bool)

(assert (= bs!1920832 d!2283595))

(assert (=> bs!1920832 m!8023778))

(assert (=> bs!1920832 m!8023778))

(assert (=> bs!1920832 m!8023876))

(assert (=> d!2283453 d!2283595))

(declare-fun d!2283597 () Bool)

(declare-fun res!2974019 () Bool)

(declare-fun e!4412351 () Bool)

(assert (=> d!2283597 (=> res!2974019 e!4412351)))

(assert (=> d!2283597 (= res!2974019 (is-Nil!71644 (exprs!8712 cWitness!61)))))

(assert (=> d!2283597 (= (forall!18078 (exprs!8712 cWitness!61) lambda!457920) e!4412351)))

(declare-fun b!7370248 () Bool)

(declare-fun e!4412352 () Bool)

(assert (=> b!7370248 (= e!4412351 e!4412352)))

(declare-fun res!2974020 () Bool)

(assert (=> b!7370248 (=> (not res!2974020) (not e!4412352))))

(assert (=> b!7370248 (= res!2974020 (dynLambda!29524 lambda!457920 (h!78092 (exprs!8712 cWitness!61))))))

(declare-fun b!7370249 () Bool)

(assert (=> b!7370249 (= e!4412352 (forall!18078 (t!386227 (exprs!8712 cWitness!61)) lambda!457920))))

(assert (= (and d!2283597 (not res!2974019)) b!7370248))

(assert (= (and b!7370248 res!2974020) b!7370249))

(declare-fun b_lambda!284425 () Bool)

(assert (=> (not b_lambda!284425) (not b!7370248)))

(declare-fun m!8024290 () Bool)

(assert (=> b!7370248 m!8024290))

(declare-fun m!8024292 () Bool)

(assert (=> b!7370249 m!8024292))

(assert (=> d!2283453 d!2283597))

(declare-fun b!7370250 () Bool)

(declare-fun e!4412354 () (Set Context!16424))

(declare-fun call!676821 () (Set Context!16424))

(declare-fun call!676822 () (Set Context!16424))

(assert (=> b!7370250 (= e!4412354 (set.union call!676821 call!676822))))

(declare-fun bm!676813 () Bool)

(declare-fun call!676823 () (Set Context!16424))

(assert (=> bm!676813 (= call!676822 call!676823)))

(declare-fun b!7370251 () Bool)

(declare-fun e!4412356 () (Set Context!16424))

(declare-fun call!676819 () (Set Context!16424))

(assert (=> b!7370251 (= e!4412356 call!676819)))

(declare-fun bm!676814 () Bool)

(declare-fun call!676818 () List!71768)

(declare-fun call!676820 () List!71768)

(assert (=> bm!676814 (= call!676818 call!676820)))

(declare-fun b!7370252 () Bool)

(declare-fun c!1369779 () Bool)

(assert (=> b!7370252 (= c!1369779 (is-Star!19272 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun e!4412358 () (Set Context!16424))

(assert (=> b!7370252 (= e!4412358 e!4412356)))

(declare-fun b!7370253 () Bool)

(declare-fun e!4412355 () (Set Context!16424))

(assert (=> b!7370253 (= e!4412355 (set.union call!676821 call!676823))))

(declare-fun b!7370254 () Bool)

(assert (=> b!7370254 (= e!4412356 (as set.empty (Set Context!16424)))))

(declare-fun b!7370255 () Bool)

(assert (=> b!7370255 (= e!4412358 call!676819)))

(declare-fun c!1369777 () Bool)

(declare-fun bm!676815 () Bool)

(assert (=> bm!676815 (= call!676821 (derivationStepZipperDown!3098 (ite c!1369777 (regOne!39057 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (regOne!39056 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))) (ite c!1369777 (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670)) (Context!16425 call!676820)) c!10362))))

(declare-fun e!4412357 () (Set Context!16424))

(declare-fun b!7370256 () Bool)

(assert (=> b!7370256 (= e!4412357 (set.insert (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370257 () Bool)

(assert (=> b!7370257 (= e!4412354 e!4412358)))

(declare-fun c!1369781 () Bool)

(assert (=> b!7370257 (= c!1369781 (is-Concat!28117 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun c!1369778 () Bool)

(declare-fun bm!676816 () Bool)

(assert (=> bm!676816 (= call!676820 ($colon$colon!3254 (exprs!8712 (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670))) (ite (or c!1369778 c!1369781) (regTwo!39056 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))))

(declare-fun b!7370258 () Bool)

(declare-fun e!4412353 () Bool)

(assert (=> b!7370258 (= e!4412353 (nullable!8348 (regOne!39056 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))))

(declare-fun bm!676817 () Bool)

(assert (=> bm!676817 (= call!676823 (derivationStepZipperDown!3098 (ite c!1369777 (regTwo!39057 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369778 (regTwo!39056 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (ite c!1369781 (regOne!39056 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (reg!19601 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))))))) (ite (or c!1369777 c!1369778) (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670)) (Context!16425 call!676818)) c!10362))))

(declare-fun b!7370259 () Bool)

(assert (=> b!7370259 (= c!1369778 e!4412353)))

(declare-fun res!2974021 () Bool)

(assert (=> b!7370259 (=> (not res!2974021) (not e!4412353))))

(assert (=> b!7370259 (= res!2974021 (is-Concat!28117 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(assert (=> b!7370259 (= e!4412355 e!4412354)))

(declare-fun d!2283599 () Bool)

(declare-fun c!1369780 () Bool)

(assert (=> d!2283599 (= c!1369780 (and (is-ElementMatch!19272 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) (= (c!1369608 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))) c!10362)))))

(assert (=> d!2283599 (= (derivationStepZipperDown!3098 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370))) (ite c!1369639 (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676670)) c!10362) e!4412357)))

(declare-fun b!7370260 () Bool)

(assert (=> b!7370260 (= e!4412357 e!4412355)))

(assert (=> b!7370260 (= c!1369777 (is-Union!19272 (ite c!1369639 (regOne!39057 (regOne!39056 r1!2370)) (regOne!39056 (regOne!39056 r1!2370)))))))

(declare-fun bm!676818 () Bool)

(assert (=> bm!676818 (= call!676819 call!676822)))

(assert (= (and d!2283599 c!1369780) b!7370256))

(assert (= (and d!2283599 (not c!1369780)) b!7370260))

(assert (= (and b!7370260 c!1369777) b!7370253))

(assert (= (and b!7370260 (not c!1369777)) b!7370259))

(assert (= (and b!7370259 res!2974021) b!7370258))

(assert (= (and b!7370259 c!1369778) b!7370250))

(assert (= (and b!7370259 (not c!1369778)) b!7370257))

(assert (= (and b!7370257 c!1369781) b!7370255))

(assert (= (and b!7370257 (not c!1369781)) b!7370252))

(assert (= (and b!7370252 c!1369779) b!7370251))

(assert (= (and b!7370252 (not c!1369779)) b!7370254))

(assert (= (or b!7370255 b!7370251) bm!676814))

(assert (= (or b!7370255 b!7370251) bm!676818))

(assert (= (or b!7370250 bm!676818) bm!676813))

(assert (= (or b!7370250 bm!676814) bm!676816))

(assert (= (or b!7370253 bm!676813) bm!676817))

(assert (= (or b!7370253 b!7370250) bm!676815))

(declare-fun m!8024294 () Bool)

(assert (=> b!7370258 m!8024294))

(declare-fun m!8024296 () Bool)

(assert (=> bm!676815 m!8024296))

(declare-fun m!8024298 () Bool)

(assert (=> bm!676817 m!8024298))

(declare-fun m!8024300 () Bool)

(assert (=> b!7370256 m!8024300))

(declare-fun m!8024302 () Bool)

(assert (=> bm!676816 m!8024302))

(assert (=> bm!676665 d!2283599))

(declare-fun d!2283601 () Bool)

(assert (=> d!2283601 (= ($colon$colon!3254 (exprs!8712 ct1!282) (ite (or c!1369621 c!1369624) (regTwo!39056 r1!2370) r1!2370)) (Cons!71644 (ite (or c!1369621 c!1369624) (regTwo!39056 r1!2370) r1!2370) (exprs!8712 ct1!282)))))

(assert (=> bm!676648 d!2283601))

(declare-fun bm!676819 () Bool)

(declare-fun call!676826 () Bool)

(declare-fun call!676825 () Bool)

(assert (=> bm!676819 (= call!676826 call!676825)))

(declare-fun b!7370261 () Bool)

(declare-fun e!4412359 () Bool)

(assert (=> b!7370261 (= e!4412359 call!676826)))

(declare-fun b!7370262 () Bool)

(declare-fun e!4412365 () Bool)

(declare-fun e!4412363 () Bool)

(assert (=> b!7370262 (= e!4412365 e!4412363)))

(declare-fun res!2974023 () Bool)

(assert (=> b!7370262 (= res!2974023 (not (nullable!8348 (reg!19601 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))))

(assert (=> b!7370262 (=> (not res!2974023) (not e!4412363))))

(declare-fun b!7370263 () Bool)

(assert (=> b!7370263 (= e!4412363 call!676825)))

(declare-fun b!7370264 () Bool)

(declare-fun e!4412360 () Bool)

(declare-fun call!676824 () Bool)

(assert (=> b!7370264 (= e!4412360 call!676824)))

(declare-fun b!7370265 () Bool)

(declare-fun e!4412362 () Bool)

(assert (=> b!7370265 (= e!4412362 e!4412359)))

(declare-fun res!2974025 () Bool)

(assert (=> b!7370265 (=> (not res!2974025) (not e!4412359))))

(assert (=> b!7370265 (= res!2974025 call!676824)))

(declare-fun b!7370266 () Bool)

(declare-fun res!2974022 () Bool)

(assert (=> b!7370266 (=> res!2974022 e!4412362)))

(assert (=> b!7370266 (= res!2974022 (not (is-Concat!28117 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))))))

(declare-fun e!4412364 () Bool)

(assert (=> b!7370266 (= e!4412364 e!4412362)))

(declare-fun c!1369783 () Bool)

(declare-fun bm!676820 () Bool)

(assert (=> bm!676820 (= call!676824 (validRegex!9868 (ite c!1369783 (regTwo!39057 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (regOne!39056 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))))

(declare-fun d!2283603 () Bool)

(declare-fun res!2974024 () Bool)

(declare-fun e!4412361 () Bool)

(assert (=> d!2283603 (=> res!2974024 e!4412361)))

(assert (=> d!2283603 (= res!2974024 (is-ElementMatch!19272 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(assert (=> d!2283603 (= (validRegex!9868 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) e!4412361)))

(declare-fun b!7370267 () Bool)

(declare-fun res!2974026 () Bool)

(assert (=> b!7370267 (=> (not res!2974026) (not e!4412360))))

(assert (=> b!7370267 (= res!2974026 call!676826)))

(assert (=> b!7370267 (= e!4412364 e!4412360)))

(declare-fun b!7370268 () Bool)

(assert (=> b!7370268 (= e!4412365 e!4412364)))

(assert (=> b!7370268 (= c!1369783 (is-Union!19272 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(declare-fun c!1369782 () Bool)

(declare-fun bm!676821 () Bool)

(assert (=> bm!676821 (= call!676825 (validRegex!9868 (ite c!1369782 (reg!19601 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (ite c!1369783 (regOne!39057 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))) (regTwo!39056 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370))))))))))

(declare-fun b!7370269 () Bool)

(assert (=> b!7370269 (= e!4412361 e!4412365)))

(assert (=> b!7370269 (= c!1369782 (is-Star!19272 (ite c!1369632 (regTwo!39057 (regTwo!39056 r1!2370)) (regOne!39056 (regTwo!39056 r1!2370)))))))

(assert (= (and d!2283603 (not res!2974024)) b!7370269))

(assert (= (and b!7370269 c!1369782) b!7370262))

(assert (= (and b!7370269 (not c!1369782)) b!7370268))

(assert (= (and b!7370262 res!2974023) b!7370263))

(assert (= (and b!7370268 c!1369783) b!7370267))

(assert (= (and b!7370268 (not c!1369783)) b!7370266))

(assert (= (and b!7370267 res!2974026) b!7370264))

(assert (= (and b!7370266 (not res!2974022)) b!7370265))

(assert (= (and b!7370265 res!2974025) b!7370261))

(assert (= (or b!7370267 b!7370261) bm!676819))

(assert (= (or b!7370264 b!7370265) bm!676820))

(assert (= (or b!7370263 bm!676819) bm!676821))

(declare-fun m!8024304 () Bool)

(assert (=> b!7370262 m!8024304))

(declare-fun m!8024306 () Bool)

(assert (=> bm!676820 m!8024306))

(declare-fun m!8024308 () Bool)

(assert (=> bm!676821 m!8024308))

(assert (=> bm!676661 d!2283603))

(declare-fun d!2283605 () Bool)

(declare-fun lt!2615393 () Int)

(assert (=> d!2283605 (>= lt!2615393 0)))

(declare-fun e!4412366 () Int)

(assert (=> d!2283605 (= lt!2615393 e!4412366)))

(declare-fun c!1369784 () Bool)

(assert (=> d!2283605 (= c!1369784 (is-Nil!71644 lt!2615361))))

(assert (=> d!2283605 (= (size!42130 lt!2615361) lt!2615393)))

(declare-fun b!7370270 () Bool)

(assert (=> b!7370270 (= e!4412366 0)))

(declare-fun b!7370271 () Bool)

(assert (=> b!7370271 (= e!4412366 (+ 1 (size!42130 (t!386227 lt!2615361))))))

(assert (= (and d!2283605 c!1369784) b!7370270))

(assert (= (and d!2283605 (not c!1369784)) b!7370271))

(declare-fun m!8024310 () Bool)

(assert (=> b!7370271 m!8024310))

(assert (=> b!7369808 d!2283605))

(declare-fun d!2283607 () Bool)

(declare-fun lt!2615394 () Int)

(assert (=> d!2283607 (>= lt!2615394 0)))

(declare-fun e!4412367 () Int)

(assert (=> d!2283607 (= lt!2615394 e!4412367)))

(declare-fun c!1369785 () Bool)

(assert (=> d!2283607 (= c!1369785 (is-Nil!71644 lt!2615302))))

(assert (=> d!2283607 (= (size!42130 lt!2615302) lt!2615394)))

(declare-fun b!7370272 () Bool)

(assert (=> b!7370272 (= e!4412367 0)))

(declare-fun b!7370273 () Bool)

(assert (=> b!7370273 (= e!4412367 (+ 1 (size!42130 (t!386227 lt!2615302))))))

(assert (= (and d!2283607 c!1369785) b!7370272))

(assert (= (and d!2283607 (not c!1369785)) b!7370273))

(declare-fun m!8024312 () Bool)

(assert (=> b!7370273 m!8024312))

(assert (=> b!7369808 d!2283607))

(assert (=> b!7369808 d!2283533))

(declare-fun d!2283609 () Bool)

(declare-fun lt!2615395 () Int)

(assert (=> d!2283609 (>= lt!2615395 0)))

(declare-fun e!4412368 () Int)

(assert (=> d!2283609 (= lt!2615395 e!4412368)))

(declare-fun c!1369786 () Bool)

(assert (=> d!2283609 (= c!1369786 (is-Nil!71644 lt!2615360))))

(assert (=> d!2283609 (= (size!42130 lt!2615360) lt!2615395)))

(declare-fun b!7370274 () Bool)

(assert (=> b!7370274 (= e!4412368 0)))

(declare-fun b!7370275 () Bool)

(assert (=> b!7370275 (= e!4412368 (+ 1 (size!42130 (t!386227 lt!2615360))))))

(assert (= (and d!2283609 c!1369786) b!7370274))

(assert (= (and d!2283609 (not c!1369786)) b!7370275))

(declare-fun m!8024314 () Bool)

(assert (=> b!7370275 m!8024314))

(assert (=> b!7369789 d!2283609))

(declare-fun d!2283611 () Bool)

(declare-fun lt!2615396 () Int)

(assert (=> d!2283611 (>= lt!2615396 0)))

(declare-fun e!4412369 () Int)

(assert (=> d!2283611 (= lt!2615396 e!4412369)))

(declare-fun c!1369787 () Bool)

(assert (=> d!2283611 (= c!1369787 (is-Nil!71644 (exprs!8712 cWitness!61)))))

(assert (=> d!2283611 (= (size!42130 (exprs!8712 cWitness!61)) lt!2615396)))

(declare-fun b!7370276 () Bool)

(assert (=> b!7370276 (= e!4412369 0)))

(declare-fun b!7370277 () Bool)

(assert (=> b!7370277 (= e!4412369 (+ 1 (size!42130 (t!386227 (exprs!8712 cWitness!61)))))))

(assert (= (and d!2283611 c!1369787) b!7370276))

(assert (= (and d!2283611 (not c!1369787)) b!7370277))

(declare-fun m!8024316 () Bool)

(assert (=> b!7370277 m!8024316))

(assert (=> b!7369789 d!2283611))

(assert (=> b!7369789 d!2283533))

(declare-fun d!2283613 () Bool)

(declare-fun c!1369788 () Bool)

(assert (=> d!2283613 (= c!1369788 (is-Nil!71644 lt!2615362))))

(declare-fun e!4412370 () (Set Regex!19272))

(assert (=> d!2283613 (= (content!15152 lt!2615362) e!4412370)))

(declare-fun b!7370278 () Bool)

(assert (=> b!7370278 (= e!4412370 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370279 () Bool)

(assert (=> b!7370279 (= e!4412370 (set.union (set.insert (h!78092 lt!2615362) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 lt!2615362))))))

(assert (= (and d!2283613 c!1369788) b!7370278))

(assert (= (and d!2283613 (not c!1369788)) b!7370279))

(declare-fun m!8024318 () Bool)

(assert (=> b!7370279 m!8024318))

(declare-fun m!8024320 () Bool)

(assert (=> b!7370279 m!8024320))

(assert (=> d!2283467 d!2283613))

(declare-fun d!2283615 () Bool)

(declare-fun c!1369789 () Bool)

(assert (=> d!2283615 (= c!1369789 (is-Nil!71644 (exprs!8712 ct1!282)))))

(declare-fun e!4412371 () (Set Regex!19272))

(assert (=> d!2283615 (= (content!15152 (exprs!8712 ct1!282)) e!4412371)))

(declare-fun b!7370280 () Bool)

(assert (=> b!7370280 (= e!4412371 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370281 () Bool)

(assert (=> b!7370281 (= e!4412371 (set.union (set.insert (h!78092 (exprs!8712 ct1!282)) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 (exprs!8712 ct1!282)))))))

(assert (= (and d!2283615 c!1369789) b!7370280))

(assert (= (and d!2283615 (not c!1369789)) b!7370281))

(declare-fun m!8024322 () Bool)

(assert (=> b!7370281 m!8024322))

(assert (=> b!7370281 m!8024238))

(assert (=> d!2283467 d!2283615))

(assert (=> d!2283467 d!2283557))

(declare-fun d!2283617 () Bool)

(declare-fun res!2974027 () Bool)

(declare-fun e!4412372 () Bool)

(assert (=> d!2283617 (=> res!2974027 e!4412372)))

(assert (=> d!2283617 (= res!2974027 (is-Nil!71644 (exprs!8712 ct1!282)))))

(assert (=> d!2283617 (= (forall!18078 (exprs!8712 ct1!282) lambda!457933) e!4412372)))

(declare-fun b!7370282 () Bool)

(declare-fun e!4412373 () Bool)

(assert (=> b!7370282 (= e!4412372 e!4412373)))

(declare-fun res!2974028 () Bool)

(assert (=> b!7370282 (=> (not res!2974028) (not e!4412373))))

(assert (=> b!7370282 (= res!2974028 (dynLambda!29524 lambda!457933 (h!78092 (exprs!8712 ct1!282))))))

(declare-fun b!7370283 () Bool)

(assert (=> b!7370283 (= e!4412373 (forall!18078 (t!386227 (exprs!8712 ct1!282)) lambda!457933))))

(assert (= (and d!2283617 (not res!2974027)) b!7370282))

(assert (= (and b!7370282 res!2974028) b!7370283))

(declare-fun b_lambda!284427 () Bool)

(assert (=> (not b_lambda!284427) (not b!7370282)))

(declare-fun m!8024324 () Bool)

(assert (=> b!7370282 m!8024324))

(declare-fun m!8024326 () Bool)

(assert (=> b!7370283 m!8024326))

(assert (=> d!2283441 d!2283617))

(declare-fun b!7370284 () Bool)

(declare-fun e!4412374 () List!71768)

(assert (=> b!7370284 (= e!4412374 (exprs!8712 ct2!378))))

(declare-fun b!7370286 () Bool)

(declare-fun res!2974030 () Bool)

(declare-fun e!4412375 () Bool)

(assert (=> b!7370286 (=> (not res!2974030) (not e!4412375))))

(declare-fun lt!2615397 () List!71768)

(assert (=> b!7370286 (= res!2974030 (= (size!42130 lt!2615397) (+ (size!42130 (t!386227 (exprs!8712 cWitness!61))) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7370287 () Bool)

(assert (=> b!7370287 (= e!4412375 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615397 (t!386227 (exprs!8712 cWitness!61)))))))

(declare-fun b!7370285 () Bool)

(assert (=> b!7370285 (= e!4412374 (Cons!71644 (h!78092 (t!386227 (exprs!8712 cWitness!61))) (++!17088 (t!386227 (t!386227 (exprs!8712 cWitness!61))) (exprs!8712 ct2!378))))))

(declare-fun d!2283619 () Bool)

(assert (=> d!2283619 e!4412375))

(declare-fun res!2974029 () Bool)

(assert (=> d!2283619 (=> (not res!2974029) (not e!4412375))))

(assert (=> d!2283619 (= res!2974029 (= (content!15152 lt!2615397) (set.union (content!15152 (t!386227 (exprs!8712 cWitness!61))) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283619 (= lt!2615397 e!4412374)))

(declare-fun c!1369790 () Bool)

(assert (=> d!2283619 (= c!1369790 (is-Nil!71644 (t!386227 (exprs!8712 cWitness!61))))))

(assert (=> d!2283619 (= (++!17088 (t!386227 (exprs!8712 cWitness!61)) (exprs!8712 ct2!378)) lt!2615397)))

(assert (= (and d!2283619 c!1369790) b!7370284))

(assert (= (and d!2283619 (not c!1369790)) b!7370285))

(assert (= (and d!2283619 res!2974029) b!7370286))

(assert (= (and b!7370286 res!2974030) b!7370287))

(declare-fun m!8024328 () Bool)

(assert (=> b!7370286 m!8024328))

(assert (=> b!7370286 m!8024316))

(assert (=> b!7370286 m!8023892))

(declare-fun m!8024330 () Bool)

(assert (=> b!7370285 m!8024330))

(declare-fun m!8024332 () Bool)

(assert (=> d!2283619 m!8024332))

(declare-fun m!8024334 () Bool)

(assert (=> d!2283619 m!8024334))

(assert (=> d!2283619 m!8023900))

(assert (=> b!7369788 d!2283619))

(declare-fun d!2283621 () Bool)

(declare-fun c!1369791 () Bool)

(assert (=> d!2283621 (= c!1369791 (is-Nil!71644 lt!2615360))))

(declare-fun e!4412376 () (Set Regex!19272))

(assert (=> d!2283621 (= (content!15152 lt!2615360) e!4412376)))

(declare-fun b!7370288 () Bool)

(assert (=> b!7370288 (= e!4412376 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370289 () Bool)

(assert (=> b!7370289 (= e!4412376 (set.union (set.insert (h!78092 lt!2615360) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 lt!2615360))))))

(assert (= (and d!2283621 c!1369791) b!7370288))

(assert (= (and d!2283621 (not c!1369791)) b!7370289))

(declare-fun m!8024336 () Bool)

(assert (=> b!7370289 m!8024336))

(declare-fun m!8024338 () Bool)

(assert (=> b!7370289 m!8024338))

(assert (=> d!2283457 d!2283621))

(declare-fun d!2283623 () Bool)

(declare-fun c!1369792 () Bool)

(assert (=> d!2283623 (= c!1369792 (is-Nil!71644 (exprs!8712 cWitness!61)))))

(declare-fun e!4412377 () (Set Regex!19272))

(assert (=> d!2283623 (= (content!15152 (exprs!8712 cWitness!61)) e!4412377)))

(declare-fun b!7370290 () Bool)

(assert (=> b!7370290 (= e!4412377 (as set.empty (Set Regex!19272)))))

(declare-fun b!7370291 () Bool)

(assert (=> b!7370291 (= e!4412377 (set.union (set.insert (h!78092 (exprs!8712 cWitness!61)) (as set.empty (Set Regex!19272))) (content!15152 (t!386227 (exprs!8712 cWitness!61)))))))

(assert (= (and d!2283623 c!1369792) b!7370290))

(assert (= (and d!2283623 (not c!1369792)) b!7370291))

(declare-fun m!8024340 () Bool)

(assert (=> b!7370291 m!8024340))

(assert (=> b!7370291 m!8024334))

(assert (=> d!2283457 d!2283623))

(assert (=> d!2283457 d!2283557))

(declare-fun b!7370292 () Bool)

(declare-fun e!4412379 () (Set Context!16424))

(declare-fun call!676830 () (Set Context!16424))

(declare-fun call!676831 () (Set Context!16424))

(assert (=> b!7370292 (= e!4412379 (set.union call!676830 call!676831))))

(declare-fun bm!676822 () Bool)

(declare-fun call!676832 () (Set Context!16424))

(assert (=> bm!676822 (= call!676831 call!676832)))

(declare-fun b!7370293 () Bool)

(declare-fun e!4412381 () (Set Context!16424))

(declare-fun call!676828 () (Set Context!16424))

(assert (=> b!7370293 (= e!4412381 call!676828)))

(declare-fun bm!676823 () Bool)

(declare-fun call!676827 () List!71768)

(declare-fun call!676829 () List!71768)

(assert (=> bm!676823 (= call!676827 call!676829)))

(declare-fun c!1369795 () Bool)

(declare-fun b!7370294 () Bool)

(assert (=> b!7370294 (= c!1369795 (is-Star!19272 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun e!4412383 () (Set Context!16424))

(assert (=> b!7370294 (= e!4412383 e!4412381)))

(declare-fun b!7370295 () Bool)

(declare-fun e!4412380 () (Set Context!16424))

(assert (=> b!7370295 (= e!4412380 (set.union call!676830 call!676832))))

(declare-fun b!7370296 () Bool)

(assert (=> b!7370296 (= e!4412381 (as set.empty (Set Context!16424)))))

(declare-fun b!7370297 () Bool)

(assert (=> b!7370297 (= e!4412383 call!676828)))

(declare-fun bm!676824 () Bool)

(declare-fun c!1369793 () Bool)

(assert (=> bm!676824 (= call!676830 (derivationStepZipperDown!3098 (ite c!1369793 (regOne!39057 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (regOne!39056 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))) (ite c!1369793 (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668)) (Context!16425 call!676829)) c!10362))))

(declare-fun b!7370298 () Bool)

(declare-fun e!4412382 () (Set Context!16424))

(assert (=> b!7370298 (= e!4412382 (set.insert (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668)) (as set.empty (Set Context!16424))))))

(declare-fun b!7370299 () Bool)

(assert (=> b!7370299 (= e!4412379 e!4412383)))

(declare-fun c!1369797 () Bool)

(assert (=> b!7370299 (= c!1369797 (is-Concat!28117 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun c!1369794 () Bool)

(declare-fun bm!676825 () Bool)

(assert (=> bm!676825 (= call!676829 ($colon$colon!3254 (exprs!8712 (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668))) (ite (or c!1369794 c!1369797) (regTwo!39056 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))))

(declare-fun e!4412378 () Bool)

(declare-fun b!7370300 () Bool)

(assert (=> b!7370300 (= e!4412378 (nullable!8348 (regOne!39056 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))))

(declare-fun bm!676826 () Bool)

(assert (=> bm!676826 (= call!676832 (derivationStepZipperDown!3098 (ite c!1369793 (regTwo!39057 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369794 (regTwo!39056 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (ite c!1369797 (regOne!39056 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (reg!19601 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))))))) (ite (or c!1369793 c!1369794) (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668)) (Context!16425 call!676827)) c!10362))))

(declare-fun b!7370301 () Bool)

(assert (=> b!7370301 (= c!1369794 e!4412378)))

(declare-fun res!2974031 () Bool)

(assert (=> b!7370301 (=> (not res!2974031) (not e!4412378))))

(assert (=> b!7370301 (= res!2974031 (is-Concat!28117 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(assert (=> b!7370301 (= e!4412380 e!4412379)))

(declare-fun d!2283625 () Bool)

(declare-fun c!1369796 () Bool)

(assert (=> d!2283625 (= c!1369796 (and (is-ElementMatch!19272 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) (= (c!1369608 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))) c!10362)))))

(assert (=> d!2283625 (= (derivationStepZipperDown!3098 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370))))) (ite (or c!1369639 c!1369640) (Context!16425 (++!17088 lt!2615302 (exprs!8712 ct2!378))) (Context!16425 call!676668)) c!10362) e!4412382)))

(declare-fun b!7370302 () Bool)

(assert (=> b!7370302 (= e!4412382 e!4412380)))

(assert (=> b!7370302 (= c!1369793 (is-Union!19272 (ite c!1369639 (regTwo!39057 (regOne!39056 r1!2370)) (ite c!1369640 (regTwo!39056 (regOne!39056 r1!2370)) (ite c!1369643 (regOne!39056 (regOne!39056 r1!2370)) (reg!19601 (regOne!39056 r1!2370)))))))))

(declare-fun bm!676827 () Bool)

(assert (=> bm!676827 (= call!676828 call!676831)))

(assert (= (and d!2283625 c!1369796) b!7370298))

(assert (= (and d!2283625 (not c!1369796)) b!7370302))

(assert (= (and b!7370302 c!1369793) b!7370295))

(assert (= (and b!7370302 (not c!1369793)) b!7370301))

(assert (= (and b!7370301 res!2974031) b!7370300))

(assert (= (and b!7370301 c!1369794) b!7370292))

(assert (= (and b!7370301 (not c!1369794)) b!7370299))

(assert (= (and b!7370299 c!1369797) b!7370297))

(assert (= (and b!7370299 (not c!1369797)) b!7370294))

(assert (= (and b!7370294 c!1369795) b!7370293))

(assert (= (and b!7370294 (not c!1369795)) b!7370296))

(assert (= (or b!7370297 b!7370293) bm!676823))

(assert (= (or b!7370297 b!7370293) bm!676827))

(assert (= (or b!7370292 bm!676827) bm!676822))

(assert (= (or b!7370292 bm!676823) bm!676825))

(assert (= (or b!7370295 bm!676822) bm!676826))

(assert (= (or b!7370295 b!7370292) bm!676824))

(declare-fun m!8024342 () Bool)

(assert (=> b!7370300 m!8024342))

(declare-fun m!8024344 () Bool)

(assert (=> bm!676824 m!8024344))

(declare-fun m!8024346 () Bool)

(assert (=> bm!676826 m!8024346))

(declare-fun m!8024348 () Bool)

(assert (=> b!7370298 m!8024348))

(declare-fun m!8024350 () Bool)

(assert (=> bm!676825 m!8024350))

(assert (=> bm!676667 d!2283625))

(declare-fun b!7370303 () Bool)

(declare-fun e!4412384 () List!71768)

(assert (=> b!7370303 (= e!4412384 (exprs!8712 ct2!378))))

(declare-fun b!7370305 () Bool)

(declare-fun res!2974033 () Bool)

(declare-fun e!4412385 () Bool)

(assert (=> b!7370305 (=> (not res!2974033) (not e!4412385))))

(declare-fun lt!2615398 () List!71768)

(assert (=> b!7370305 (= res!2974033 (= (size!42130 lt!2615398) (+ (size!42130 (t!386227 lt!2615302)) (size!42130 (exprs!8712 ct2!378)))))))

(declare-fun b!7370306 () Bool)

(assert (=> b!7370306 (= e!4412385 (or (not (= (exprs!8712 ct2!378) Nil!71644)) (= lt!2615398 (t!386227 lt!2615302))))))

(declare-fun b!7370304 () Bool)

(assert (=> b!7370304 (= e!4412384 (Cons!71644 (h!78092 (t!386227 lt!2615302)) (++!17088 (t!386227 (t!386227 lt!2615302)) (exprs!8712 ct2!378))))))

(declare-fun d!2283627 () Bool)

(assert (=> d!2283627 e!4412385))

(declare-fun res!2974032 () Bool)

(assert (=> d!2283627 (=> (not res!2974032) (not e!4412385))))

(assert (=> d!2283627 (= res!2974032 (= (content!15152 lt!2615398) (set.union (content!15152 (t!386227 lt!2615302)) (content!15152 (exprs!8712 ct2!378)))))))

(assert (=> d!2283627 (= lt!2615398 e!4412384)))

(declare-fun c!1369798 () Bool)

(assert (=> d!2283627 (= c!1369798 (is-Nil!71644 (t!386227 lt!2615302)))))

(assert (=> d!2283627 (= (++!17088 (t!386227 lt!2615302) (exprs!8712 ct2!378)) lt!2615398)))

(assert (= (and d!2283627 c!1369798) b!7370303))

(assert (= (and d!2283627 (not c!1369798)) b!7370304))

(assert (= (and d!2283627 res!2974032) b!7370305))

(assert (= (and b!7370305 res!2974033) b!7370306))

(declare-fun m!8024352 () Bool)

(assert (=> b!7370305 m!8024352))

(assert (=> b!7370305 m!8024312))

(assert (=> b!7370305 m!8023892))

(declare-fun m!8024354 () Bool)

(assert (=> b!7370304 m!8024354))

(declare-fun m!8024356 () Bool)

(assert (=> d!2283627 m!8024356))

(assert (=> d!2283627 m!8024202))

(assert (=> d!2283627 m!8023900))

(assert (=> b!7369807 d!2283627))

(declare-fun b!7370307 () Bool)

(declare-fun e!4412386 () Bool)

(assert (=> b!7370307 (= e!4412386 tp_is_empty!48789)))

(declare-fun b!7370309 () Bool)

(declare-fun tp!2095058 () Bool)

(assert (=> b!7370309 (= e!4412386 tp!2095058)))

(declare-fun b!7370310 () Bool)

(declare-fun tp!2095057 () Bool)

(declare-fun tp!2095055 () Bool)

(assert (=> b!7370310 (= e!4412386 (and tp!2095057 tp!2095055))))

(declare-fun b!7370308 () Bool)

(declare-fun tp!2095056 () Bool)

(declare-fun tp!2095054 () Bool)

(assert (=> b!7370308 (= e!4412386 (and tp!2095056 tp!2095054))))

(assert (=> b!7369866 (= tp!2094981 e!4412386)))

(assert (= (and b!7369866 (is-ElementMatch!19272 (regOne!39056 (regTwo!39057 r1!2370)))) b!7370307))

(assert (= (and b!7369866 (is-Concat!28117 (regOne!39056 (regTwo!39057 r1!2370)))) b!7370308))

(assert (= (and b!7369866 (is-Star!19272 (regOne!39056 (regTwo!39057 r1!2370)))) b!7370309))

(assert (= (and b!7369866 (is-Union!19272 (regOne!39056 (regTwo!39057 r1!2370)))) b!7370310))

(declare-fun b!7370311 () Bool)

(declare-fun e!4412387 () Bool)

(assert (=> b!7370311 (= e!4412387 tp_is_empty!48789)))

(declare-fun b!7370313 () Bool)

(declare-fun tp!2095063 () Bool)

(assert (=> b!7370313 (= e!4412387 tp!2095063)))

(declare-fun b!7370314 () Bool)

(declare-fun tp!2095062 () Bool)

(declare-fun tp!2095060 () Bool)

(assert (=> b!7370314 (= e!4412387 (and tp!2095062 tp!2095060))))

(declare-fun b!7370312 () Bool)

(declare-fun tp!2095061 () Bool)

(declare-fun tp!2095059 () Bool)

(assert (=> b!7370312 (= e!4412387 (and tp!2095061 tp!2095059))))

(assert (=> b!7369866 (= tp!2094979 e!4412387)))

(assert (= (and b!7369866 (is-ElementMatch!19272 (regTwo!39056 (regTwo!39057 r1!2370)))) b!7370311))

(assert (= (and b!7369866 (is-Concat!28117 (regTwo!39056 (regTwo!39057 r1!2370)))) b!7370312))

(assert (= (and b!7369866 (is-Star!19272 (regTwo!39056 (regTwo!39057 r1!2370)))) b!7370313))

(assert (= (and b!7369866 (is-Union!19272 (regTwo!39056 (regTwo!39057 r1!2370)))) b!7370314))

(declare-fun b!7370315 () Bool)

(declare-fun e!4412388 () Bool)

(assert (=> b!7370315 (= e!4412388 tp_is_empty!48789)))

(declare-fun b!7370317 () Bool)

(declare-fun tp!2095068 () Bool)

(assert (=> b!7370317 (= e!4412388 tp!2095068)))

(declare-fun b!7370318 () Bool)

(declare-fun tp!2095067 () Bool)

(declare-fun tp!2095065 () Bool)

(assert (=> b!7370318 (= e!4412388 (and tp!2095067 tp!2095065))))

(declare-fun b!7370316 () Bool)

(declare-fun tp!2095066 () Bool)

(declare-fun tp!2095064 () Bool)

(assert (=> b!7370316 (= e!4412388 (and tp!2095066 tp!2095064))))

(assert (=> b!7369881 (= tp!2095001 e!4412388)))

(assert (= (and b!7369881 (is-ElementMatch!19272 (reg!19601 (regOne!39056 r1!2370)))) b!7370315))

(assert (= (and b!7369881 (is-Concat!28117 (reg!19601 (regOne!39056 r1!2370)))) b!7370316))

(assert (= (and b!7369881 (is-Star!19272 (reg!19601 (regOne!39056 r1!2370)))) b!7370317))

(assert (= (and b!7369881 (is-Union!19272 (reg!19601 (regOne!39056 r1!2370)))) b!7370318))

(declare-fun b!7370319 () Bool)

(declare-fun e!4412389 () Bool)

(assert (=> b!7370319 (= e!4412389 tp_is_empty!48789)))

(declare-fun b!7370321 () Bool)

(declare-fun tp!2095073 () Bool)

(assert (=> b!7370321 (= e!4412389 tp!2095073)))

(declare-fun b!7370322 () Bool)

(declare-fun tp!2095072 () Bool)

(declare-fun tp!2095070 () Bool)

(assert (=> b!7370322 (= e!4412389 (and tp!2095072 tp!2095070))))

(declare-fun b!7370320 () Bool)

(declare-fun tp!2095071 () Bool)

(declare-fun tp!2095069 () Bool)

(assert (=> b!7370320 (= e!4412389 (and tp!2095071 tp!2095069))))

(assert (=> b!7369880 (= tp!2094999 e!4412389)))

(assert (= (and b!7369880 (is-ElementMatch!19272 (regOne!39056 (regOne!39056 r1!2370)))) b!7370319))

(assert (= (and b!7369880 (is-Concat!28117 (regOne!39056 (regOne!39056 r1!2370)))) b!7370320))

(assert (= (and b!7369880 (is-Star!19272 (regOne!39056 (regOne!39056 r1!2370)))) b!7370321))

(assert (= (and b!7369880 (is-Union!19272 (regOne!39056 (regOne!39056 r1!2370)))) b!7370322))

(declare-fun b!7370323 () Bool)

(declare-fun e!4412390 () Bool)

(assert (=> b!7370323 (= e!4412390 tp_is_empty!48789)))

(declare-fun b!7370325 () Bool)

(declare-fun tp!2095078 () Bool)

(assert (=> b!7370325 (= e!4412390 tp!2095078)))

(declare-fun b!7370326 () Bool)

(declare-fun tp!2095077 () Bool)

(declare-fun tp!2095075 () Bool)

(assert (=> b!7370326 (= e!4412390 (and tp!2095077 tp!2095075))))

(declare-fun b!7370324 () Bool)

(declare-fun tp!2095076 () Bool)

(declare-fun tp!2095074 () Bool)

(assert (=> b!7370324 (= e!4412390 (and tp!2095076 tp!2095074))))

(assert (=> b!7369880 (= tp!2094997 e!4412390)))

(assert (= (and b!7369880 (is-ElementMatch!19272 (regTwo!39056 (regOne!39056 r1!2370)))) b!7370323))

(assert (= (and b!7369880 (is-Concat!28117 (regTwo!39056 (regOne!39056 r1!2370)))) b!7370324))

(assert (= (and b!7369880 (is-Star!19272 (regTwo!39056 (regOne!39056 r1!2370)))) b!7370325))

(assert (= (and b!7369880 (is-Union!19272 (regTwo!39056 (regOne!39056 r1!2370)))) b!7370326))

(declare-fun b!7370327 () Bool)

(declare-fun e!4412391 () Bool)

(assert (=> b!7370327 (= e!4412391 tp_is_empty!48789)))

(declare-fun b!7370329 () Bool)

(declare-fun tp!2095083 () Bool)

(assert (=> b!7370329 (= e!4412391 tp!2095083)))

(declare-fun b!7370330 () Bool)

(declare-fun tp!2095082 () Bool)

(declare-fun tp!2095080 () Bool)

(assert (=> b!7370330 (= e!4412391 (and tp!2095082 tp!2095080))))

(declare-fun b!7370328 () Bool)

(declare-fun tp!2095081 () Bool)

(declare-fun tp!2095079 () Bool)

(assert (=> b!7370328 (= e!4412391 (and tp!2095081 tp!2095079))))

(assert (=> b!7369885 (= tp!2095006 e!4412391)))

(assert (= (and b!7369885 (is-ElementMatch!19272 (reg!19601 (regTwo!39056 r1!2370)))) b!7370327))

(assert (= (and b!7369885 (is-Concat!28117 (reg!19601 (regTwo!39056 r1!2370)))) b!7370328))

(assert (= (and b!7369885 (is-Star!19272 (reg!19601 (regTwo!39056 r1!2370)))) b!7370329))

(assert (= (and b!7369885 (is-Union!19272 (reg!19601 (regTwo!39056 r1!2370)))) b!7370330))

(declare-fun b!7370331 () Bool)

(declare-fun e!4412392 () Bool)

(assert (=> b!7370331 (= e!4412392 tp_is_empty!48789)))

(declare-fun b!7370333 () Bool)

(declare-fun tp!2095088 () Bool)

(assert (=> b!7370333 (= e!4412392 tp!2095088)))

(declare-fun b!7370334 () Bool)

(declare-fun tp!2095087 () Bool)

(declare-fun tp!2095085 () Bool)

(assert (=> b!7370334 (= e!4412392 (and tp!2095087 tp!2095085))))

(declare-fun b!7370332 () Bool)

(declare-fun tp!2095086 () Bool)

(declare-fun tp!2095084 () Bool)

(assert (=> b!7370332 (= e!4412392 (and tp!2095086 tp!2095084))))

(assert (=> b!7369882 (= tp!2095000 e!4412392)))

(assert (= (and b!7369882 (is-ElementMatch!19272 (regOne!39057 (regOne!39056 r1!2370)))) b!7370331))

(assert (= (and b!7369882 (is-Concat!28117 (regOne!39057 (regOne!39056 r1!2370)))) b!7370332))

(assert (= (and b!7369882 (is-Star!19272 (regOne!39057 (regOne!39056 r1!2370)))) b!7370333))

(assert (= (and b!7369882 (is-Union!19272 (regOne!39057 (regOne!39056 r1!2370)))) b!7370334))

(declare-fun b!7370335 () Bool)

(declare-fun e!4412393 () Bool)

(assert (=> b!7370335 (= e!4412393 tp_is_empty!48789)))

(declare-fun b!7370337 () Bool)

(declare-fun tp!2095093 () Bool)

(assert (=> b!7370337 (= e!4412393 tp!2095093)))

(declare-fun b!7370338 () Bool)

(declare-fun tp!2095092 () Bool)

(declare-fun tp!2095090 () Bool)

(assert (=> b!7370338 (= e!4412393 (and tp!2095092 tp!2095090))))

(declare-fun b!7370336 () Bool)

(declare-fun tp!2095091 () Bool)

(declare-fun tp!2095089 () Bool)

(assert (=> b!7370336 (= e!4412393 (and tp!2095091 tp!2095089))))

(assert (=> b!7369882 (= tp!2094998 e!4412393)))

(assert (= (and b!7369882 (is-ElementMatch!19272 (regTwo!39057 (regOne!39056 r1!2370)))) b!7370335))

(assert (= (and b!7369882 (is-Concat!28117 (regTwo!39057 (regOne!39056 r1!2370)))) b!7370336))

(assert (= (and b!7369882 (is-Star!19272 (regTwo!39057 (regOne!39056 r1!2370)))) b!7370337))

(assert (= (and b!7369882 (is-Union!19272 (regTwo!39057 (regOne!39056 r1!2370)))) b!7370338))

(declare-fun b!7370339 () Bool)

(declare-fun e!4412394 () Bool)

(assert (=> b!7370339 (= e!4412394 tp_is_empty!48789)))

(declare-fun b!7370341 () Bool)

(declare-fun tp!2095098 () Bool)

(assert (=> b!7370341 (= e!4412394 tp!2095098)))

(declare-fun b!7370342 () Bool)

(declare-fun tp!2095097 () Bool)

(declare-fun tp!2095095 () Bool)

(assert (=> b!7370342 (= e!4412394 (and tp!2095097 tp!2095095))))

(declare-fun b!7370340 () Bool)

(declare-fun tp!2095096 () Bool)

(declare-fun tp!2095094 () Bool)

(assert (=> b!7370340 (= e!4412394 (and tp!2095096 tp!2095094))))

(assert (=> b!7369863 (= tp!2094978 e!4412394)))

(assert (= (and b!7369863 (is-ElementMatch!19272 (reg!19601 (regOne!39057 r1!2370)))) b!7370339))

(assert (= (and b!7369863 (is-Concat!28117 (reg!19601 (regOne!39057 r1!2370)))) b!7370340))

(assert (= (and b!7369863 (is-Star!19272 (reg!19601 (regOne!39057 r1!2370)))) b!7370341))

(assert (= (and b!7369863 (is-Union!19272 (reg!19601 (regOne!39057 r1!2370)))) b!7370342))

(declare-fun b!7370343 () Bool)

(declare-fun e!4412395 () Bool)

(assert (=> b!7370343 (= e!4412395 tp_is_empty!48789)))

(declare-fun b!7370345 () Bool)

(declare-fun tp!2095103 () Bool)

(assert (=> b!7370345 (= e!4412395 tp!2095103)))

(declare-fun b!7370346 () Bool)

(declare-fun tp!2095102 () Bool)

(declare-fun tp!2095100 () Bool)

(assert (=> b!7370346 (= e!4412395 (and tp!2095102 tp!2095100))))

(declare-fun b!7370344 () Bool)

(declare-fun tp!2095101 () Bool)

(declare-fun tp!2095099 () Bool)

(assert (=> b!7370344 (= e!4412395 (and tp!2095101 tp!2095099))))

(assert (=> b!7369862 (= tp!2094976 e!4412395)))

(assert (= (and b!7369862 (is-ElementMatch!19272 (regOne!39056 (regOne!39057 r1!2370)))) b!7370343))

(assert (= (and b!7369862 (is-Concat!28117 (regOne!39056 (regOne!39057 r1!2370)))) b!7370344))

(assert (= (and b!7369862 (is-Star!19272 (regOne!39056 (regOne!39057 r1!2370)))) b!7370345))

(assert (= (and b!7369862 (is-Union!19272 (regOne!39056 (regOne!39057 r1!2370)))) b!7370346))

(declare-fun b!7370347 () Bool)

(declare-fun e!4412396 () Bool)

(assert (=> b!7370347 (= e!4412396 tp_is_empty!48789)))

(declare-fun b!7370349 () Bool)

(declare-fun tp!2095108 () Bool)

(assert (=> b!7370349 (= e!4412396 tp!2095108)))

(declare-fun b!7370350 () Bool)

(declare-fun tp!2095107 () Bool)

(declare-fun tp!2095105 () Bool)

(assert (=> b!7370350 (= e!4412396 (and tp!2095107 tp!2095105))))

(declare-fun b!7370348 () Bool)

(declare-fun tp!2095106 () Bool)

(declare-fun tp!2095104 () Bool)

(assert (=> b!7370348 (= e!4412396 (and tp!2095106 tp!2095104))))

(assert (=> b!7369862 (= tp!2094974 e!4412396)))

(assert (= (and b!7369862 (is-ElementMatch!19272 (regTwo!39056 (regOne!39057 r1!2370)))) b!7370347))

(assert (= (and b!7369862 (is-Concat!28117 (regTwo!39056 (regOne!39057 r1!2370)))) b!7370348))

(assert (= (and b!7369862 (is-Star!19272 (regTwo!39056 (regOne!39057 r1!2370)))) b!7370349))

(assert (= (and b!7369862 (is-Union!19272 (regTwo!39056 (regOne!39057 r1!2370)))) b!7370350))

(declare-fun b!7370351 () Bool)

(declare-fun e!4412397 () Bool)

(assert (=> b!7370351 (= e!4412397 tp_is_empty!48789)))

(declare-fun b!7370353 () Bool)

(declare-fun tp!2095113 () Bool)

(assert (=> b!7370353 (= e!4412397 tp!2095113)))

(declare-fun b!7370354 () Bool)

(declare-fun tp!2095112 () Bool)

(declare-fun tp!2095110 () Bool)

(assert (=> b!7370354 (= e!4412397 (and tp!2095112 tp!2095110))))

(declare-fun b!7370352 () Bool)

(declare-fun tp!2095111 () Bool)

(declare-fun tp!2095109 () Bool)

(assert (=> b!7370352 (= e!4412397 (and tp!2095111 tp!2095109))))

(assert (=> b!7369886 (= tp!2095005 e!4412397)))

(assert (= (and b!7369886 (is-ElementMatch!19272 (regOne!39057 (regTwo!39056 r1!2370)))) b!7370351))

(assert (= (and b!7369886 (is-Concat!28117 (regOne!39057 (regTwo!39056 r1!2370)))) b!7370352))

(assert (= (and b!7369886 (is-Star!19272 (regOne!39057 (regTwo!39056 r1!2370)))) b!7370353))

(assert (= (and b!7369886 (is-Union!19272 (regOne!39057 (regTwo!39056 r1!2370)))) b!7370354))

(declare-fun b!7370355 () Bool)

(declare-fun e!4412398 () Bool)

(assert (=> b!7370355 (= e!4412398 tp_is_empty!48789)))

(declare-fun b!7370357 () Bool)

(declare-fun tp!2095118 () Bool)

(assert (=> b!7370357 (= e!4412398 tp!2095118)))

(declare-fun b!7370358 () Bool)

(declare-fun tp!2095117 () Bool)

(declare-fun tp!2095115 () Bool)

(assert (=> b!7370358 (= e!4412398 (and tp!2095117 tp!2095115))))

(declare-fun b!7370356 () Bool)

(declare-fun tp!2095116 () Bool)

(declare-fun tp!2095114 () Bool)

(assert (=> b!7370356 (= e!4412398 (and tp!2095116 tp!2095114))))

(assert (=> b!7369886 (= tp!2095003 e!4412398)))

(assert (= (and b!7369886 (is-ElementMatch!19272 (regTwo!39057 (regTwo!39056 r1!2370)))) b!7370355))

(assert (= (and b!7369886 (is-Concat!28117 (regTwo!39057 (regTwo!39056 r1!2370)))) b!7370356))

(assert (= (and b!7369886 (is-Star!19272 (regTwo!39057 (regTwo!39056 r1!2370)))) b!7370357))

(assert (= (and b!7369886 (is-Union!19272 (regTwo!39057 (regTwo!39056 r1!2370)))) b!7370358))

(declare-fun b!7370359 () Bool)

(declare-fun e!4412399 () Bool)

(assert (=> b!7370359 (= e!4412399 tp_is_empty!48789)))

(declare-fun b!7370361 () Bool)

(declare-fun tp!2095123 () Bool)

(assert (=> b!7370361 (= e!4412399 tp!2095123)))

(declare-fun b!7370362 () Bool)

(declare-fun tp!2095122 () Bool)

(declare-fun tp!2095120 () Bool)

(assert (=> b!7370362 (= e!4412399 (and tp!2095122 tp!2095120))))

(declare-fun b!7370360 () Bool)

(declare-fun tp!2095121 () Bool)

(declare-fun tp!2095119 () Bool)

(assert (=> b!7370360 (= e!4412399 (and tp!2095121 tp!2095119))))

(assert (=> b!7369867 (= tp!2094983 e!4412399)))

(assert (= (and b!7369867 (is-ElementMatch!19272 (reg!19601 (regTwo!39057 r1!2370)))) b!7370359))

(assert (= (and b!7369867 (is-Concat!28117 (reg!19601 (regTwo!39057 r1!2370)))) b!7370360))

(assert (= (and b!7369867 (is-Star!19272 (reg!19601 (regTwo!39057 r1!2370)))) b!7370361))

(assert (= (and b!7369867 (is-Union!19272 (reg!19601 (regTwo!39057 r1!2370)))) b!7370362))

(declare-fun b!7370363 () Bool)

(declare-fun e!4412400 () Bool)

(assert (=> b!7370363 (= e!4412400 tp_is_empty!48789)))

(declare-fun b!7370365 () Bool)

(declare-fun tp!2095128 () Bool)

(assert (=> b!7370365 (= e!4412400 tp!2095128)))

(declare-fun b!7370366 () Bool)

(declare-fun tp!2095127 () Bool)

(declare-fun tp!2095125 () Bool)

(assert (=> b!7370366 (= e!4412400 (and tp!2095127 tp!2095125))))

(declare-fun b!7370364 () Bool)

(declare-fun tp!2095126 () Bool)

(declare-fun tp!2095124 () Bool)

(assert (=> b!7370364 (= e!4412400 (and tp!2095126 tp!2095124))))

(assert (=> b!7369876 (= tp!2094994 e!4412400)))

(assert (= (and b!7369876 (is-ElementMatch!19272 (reg!19601 (reg!19601 r1!2370)))) b!7370363))

(assert (= (and b!7369876 (is-Concat!28117 (reg!19601 (reg!19601 r1!2370)))) b!7370364))

(assert (= (and b!7369876 (is-Star!19272 (reg!19601 (reg!19601 r1!2370)))) b!7370365))

(assert (= (and b!7369876 (is-Union!19272 (reg!19601 (reg!19601 r1!2370)))) b!7370366))

(declare-fun b!7370367 () Bool)

(declare-fun e!4412401 () Bool)

(assert (=> b!7370367 (= e!4412401 tp_is_empty!48789)))

(declare-fun b!7370369 () Bool)

(declare-fun tp!2095133 () Bool)

(assert (=> b!7370369 (= e!4412401 tp!2095133)))

(declare-fun b!7370370 () Bool)

(declare-fun tp!2095132 () Bool)

(declare-fun tp!2095130 () Bool)

(assert (=> b!7370370 (= e!4412401 (and tp!2095132 tp!2095130))))

(declare-fun b!7370368 () Bool)

(declare-fun tp!2095131 () Bool)

(declare-fun tp!2095129 () Bool)

(assert (=> b!7370368 (= e!4412401 (and tp!2095131 tp!2095129))))

(assert (=> b!7369884 (= tp!2095004 e!4412401)))

(assert (= (and b!7369884 (is-ElementMatch!19272 (regOne!39056 (regTwo!39056 r1!2370)))) b!7370367))

(assert (= (and b!7369884 (is-Concat!28117 (regOne!39056 (regTwo!39056 r1!2370)))) b!7370368))

(assert (= (and b!7369884 (is-Star!19272 (regOne!39056 (regTwo!39056 r1!2370)))) b!7370369))

(assert (= (and b!7369884 (is-Union!19272 (regOne!39056 (regTwo!39056 r1!2370)))) b!7370370))

(declare-fun b!7370371 () Bool)

(declare-fun e!4412402 () Bool)

(assert (=> b!7370371 (= e!4412402 tp_is_empty!48789)))

(declare-fun b!7370373 () Bool)

(declare-fun tp!2095138 () Bool)

(assert (=> b!7370373 (= e!4412402 tp!2095138)))

(declare-fun b!7370374 () Bool)

(declare-fun tp!2095137 () Bool)

(declare-fun tp!2095135 () Bool)

(assert (=> b!7370374 (= e!4412402 (and tp!2095137 tp!2095135))))

(declare-fun b!7370372 () Bool)

(declare-fun tp!2095136 () Bool)

(declare-fun tp!2095134 () Bool)

(assert (=> b!7370372 (= e!4412402 (and tp!2095136 tp!2095134))))

(assert (=> b!7369884 (= tp!2095002 e!4412402)))

(assert (= (and b!7369884 (is-ElementMatch!19272 (regTwo!39056 (regTwo!39056 r1!2370)))) b!7370371))

(assert (= (and b!7369884 (is-Concat!28117 (regTwo!39056 (regTwo!39056 r1!2370)))) b!7370372))

(assert (= (and b!7369884 (is-Star!19272 (regTwo!39056 (regTwo!39056 r1!2370)))) b!7370373))

(assert (= (and b!7369884 (is-Union!19272 (regTwo!39056 (regTwo!39056 r1!2370)))) b!7370374))

(declare-fun b!7370375 () Bool)

(declare-fun e!4412403 () Bool)

(assert (=> b!7370375 (= e!4412403 tp_is_empty!48789)))

(declare-fun b!7370377 () Bool)

(declare-fun tp!2095143 () Bool)

(assert (=> b!7370377 (= e!4412403 tp!2095143)))

(declare-fun b!7370378 () Bool)

(declare-fun tp!2095142 () Bool)

(declare-fun tp!2095140 () Bool)

(assert (=> b!7370378 (= e!4412403 (and tp!2095142 tp!2095140))))

(declare-fun b!7370376 () Bool)

(declare-fun tp!2095141 () Bool)

(declare-fun tp!2095139 () Bool)

(assert (=> b!7370376 (= e!4412403 (and tp!2095141 tp!2095139))))

(assert (=> b!7369873 (= tp!2094988 e!4412403)))

(assert (= (and b!7369873 (is-ElementMatch!19272 (h!78092 (exprs!8712 cWitness!61)))) b!7370375))

(assert (= (and b!7369873 (is-Concat!28117 (h!78092 (exprs!8712 cWitness!61)))) b!7370376))

(assert (= (and b!7369873 (is-Star!19272 (h!78092 (exprs!8712 cWitness!61)))) b!7370377))

(assert (= (and b!7369873 (is-Union!19272 (h!78092 (exprs!8712 cWitness!61)))) b!7370378))

(declare-fun b!7370379 () Bool)

(declare-fun e!4412404 () Bool)

(declare-fun tp!2095144 () Bool)

(declare-fun tp!2095145 () Bool)

(assert (=> b!7370379 (= e!4412404 (and tp!2095144 tp!2095145))))

(assert (=> b!7369873 (= tp!2094989 e!4412404)))

(assert (= (and b!7369873 (is-Cons!71644 (t!386227 (exprs!8712 cWitness!61)))) b!7370379))

(declare-fun b!7370380 () Bool)

(declare-fun e!4412405 () Bool)

(assert (=> b!7370380 (= e!4412405 tp_is_empty!48789)))

(declare-fun b!7370382 () Bool)

(declare-fun tp!2095150 () Bool)

(assert (=> b!7370382 (= e!4412405 tp!2095150)))

(declare-fun b!7370383 () Bool)

(declare-fun tp!2095149 () Bool)

(declare-fun tp!2095147 () Bool)

(assert (=> b!7370383 (= e!4412405 (and tp!2095149 tp!2095147))))

(declare-fun b!7370381 () Bool)

(declare-fun tp!2095148 () Bool)

(declare-fun tp!2095146 () Bool)

(assert (=> b!7370381 (= e!4412405 (and tp!2095148 tp!2095146))))

(assert (=> b!7369877 (= tp!2094993 e!4412405)))

(assert (= (and b!7369877 (is-ElementMatch!19272 (regOne!39057 (reg!19601 r1!2370)))) b!7370380))

(assert (= (and b!7369877 (is-Concat!28117 (regOne!39057 (reg!19601 r1!2370)))) b!7370381))

(assert (= (and b!7369877 (is-Star!19272 (regOne!39057 (reg!19601 r1!2370)))) b!7370382))

(assert (= (and b!7369877 (is-Union!19272 (regOne!39057 (reg!19601 r1!2370)))) b!7370383))

(declare-fun b!7370384 () Bool)

(declare-fun e!4412406 () Bool)

(assert (=> b!7370384 (= e!4412406 tp_is_empty!48789)))

(declare-fun b!7370386 () Bool)

(declare-fun tp!2095155 () Bool)

(assert (=> b!7370386 (= e!4412406 tp!2095155)))

(declare-fun b!7370387 () Bool)

(declare-fun tp!2095154 () Bool)

(declare-fun tp!2095152 () Bool)

(assert (=> b!7370387 (= e!4412406 (and tp!2095154 tp!2095152))))

(declare-fun b!7370385 () Bool)

(declare-fun tp!2095153 () Bool)

(declare-fun tp!2095151 () Bool)

(assert (=> b!7370385 (= e!4412406 (and tp!2095153 tp!2095151))))

(assert (=> b!7369877 (= tp!2094991 e!4412406)))

(assert (= (and b!7369877 (is-ElementMatch!19272 (regTwo!39057 (reg!19601 r1!2370)))) b!7370384))

(assert (= (and b!7369877 (is-Concat!28117 (regTwo!39057 (reg!19601 r1!2370)))) b!7370385))

(assert (= (and b!7369877 (is-Star!19272 (regTwo!39057 (reg!19601 r1!2370)))) b!7370386))

(assert (= (and b!7369877 (is-Union!19272 (regTwo!39057 (reg!19601 r1!2370)))) b!7370387))

(declare-fun b!7370388 () Bool)

(declare-fun e!4412407 () Bool)

(assert (=> b!7370388 (= e!4412407 tp_is_empty!48789)))

(declare-fun b!7370390 () Bool)

(declare-fun tp!2095160 () Bool)

(assert (=> b!7370390 (= e!4412407 tp!2095160)))

(declare-fun b!7370391 () Bool)

(declare-fun tp!2095159 () Bool)

(declare-fun tp!2095157 () Bool)

(assert (=> b!7370391 (= e!4412407 (and tp!2095159 tp!2095157))))

(declare-fun b!7370389 () Bool)

(declare-fun tp!2095158 () Bool)

(declare-fun tp!2095156 () Bool)

(assert (=> b!7370389 (= e!4412407 (and tp!2095158 tp!2095156))))

(assert (=> b!7369887 (= tp!2095007 e!4412407)))

(assert (= (and b!7369887 (is-ElementMatch!19272 (h!78092 (exprs!8712 ct1!282)))) b!7370388))

(assert (= (and b!7369887 (is-Concat!28117 (h!78092 (exprs!8712 ct1!282)))) b!7370389))

(assert (= (and b!7369887 (is-Star!19272 (h!78092 (exprs!8712 ct1!282)))) b!7370390))

(assert (= (and b!7369887 (is-Union!19272 (h!78092 (exprs!8712 ct1!282)))) b!7370391))

(declare-fun b!7370392 () Bool)

(declare-fun e!4412408 () Bool)

(declare-fun tp!2095161 () Bool)

(declare-fun tp!2095162 () Bool)

(assert (=> b!7370392 (= e!4412408 (and tp!2095161 tp!2095162))))

(assert (=> b!7369887 (= tp!2095008 e!4412408)))

(assert (= (and b!7369887 (is-Cons!71644 (t!386227 (exprs!8712 ct1!282)))) b!7370392))

(declare-fun b!7370393 () Bool)

(declare-fun e!4412409 () Bool)

(assert (=> b!7370393 (= e!4412409 tp_is_empty!48789)))

(declare-fun b!7370395 () Bool)

(declare-fun tp!2095167 () Bool)

(assert (=> b!7370395 (= e!4412409 tp!2095167)))

(declare-fun b!7370396 () Bool)

(declare-fun tp!2095166 () Bool)

(declare-fun tp!2095164 () Bool)

(assert (=> b!7370396 (= e!4412409 (and tp!2095166 tp!2095164))))

(declare-fun b!7370394 () Bool)

(declare-fun tp!2095165 () Bool)

(declare-fun tp!2095163 () Bool)

(assert (=> b!7370394 (= e!4412409 (and tp!2095165 tp!2095163))))

(assert (=> b!7369875 (= tp!2094992 e!4412409)))

(assert (= (and b!7369875 (is-ElementMatch!19272 (regOne!39056 (reg!19601 r1!2370)))) b!7370393))

(assert (= (and b!7369875 (is-Concat!28117 (regOne!39056 (reg!19601 r1!2370)))) b!7370394))

(assert (= (and b!7369875 (is-Star!19272 (regOne!39056 (reg!19601 r1!2370)))) b!7370395))

(assert (= (and b!7369875 (is-Union!19272 (regOne!39056 (reg!19601 r1!2370)))) b!7370396))

(declare-fun b!7370397 () Bool)

(declare-fun e!4412410 () Bool)

(assert (=> b!7370397 (= e!4412410 tp_is_empty!48789)))

(declare-fun b!7370399 () Bool)

(declare-fun tp!2095172 () Bool)

(assert (=> b!7370399 (= e!4412410 tp!2095172)))

(declare-fun b!7370400 () Bool)

(declare-fun tp!2095171 () Bool)

(declare-fun tp!2095169 () Bool)

(assert (=> b!7370400 (= e!4412410 (and tp!2095171 tp!2095169))))

(declare-fun b!7370398 () Bool)

(declare-fun tp!2095170 () Bool)

(declare-fun tp!2095168 () Bool)

(assert (=> b!7370398 (= e!4412410 (and tp!2095170 tp!2095168))))

(assert (=> b!7369875 (= tp!2094990 e!4412410)))

(assert (= (and b!7369875 (is-ElementMatch!19272 (regTwo!39056 (reg!19601 r1!2370)))) b!7370397))

(assert (= (and b!7369875 (is-Concat!28117 (regTwo!39056 (reg!19601 r1!2370)))) b!7370398))

(assert (= (and b!7369875 (is-Star!19272 (regTwo!39056 (reg!19601 r1!2370)))) b!7370399))

(assert (= (and b!7369875 (is-Union!19272 (regTwo!39056 (reg!19601 r1!2370)))) b!7370400))

(declare-fun b!7370401 () Bool)

(declare-fun e!4412411 () Bool)

(assert (=> b!7370401 (= e!4412411 tp_is_empty!48789)))

(declare-fun b!7370403 () Bool)

(declare-fun tp!2095177 () Bool)

(assert (=> b!7370403 (= e!4412411 tp!2095177)))

(declare-fun b!7370404 () Bool)

(declare-fun tp!2095176 () Bool)

(declare-fun tp!2095174 () Bool)

(assert (=> b!7370404 (= e!4412411 (and tp!2095176 tp!2095174))))

(declare-fun b!7370402 () Bool)

(declare-fun tp!2095175 () Bool)

(declare-fun tp!2095173 () Bool)

(assert (=> b!7370402 (= e!4412411 (and tp!2095175 tp!2095173))))

(assert (=> b!7369864 (= tp!2094977 e!4412411)))

(assert (= (and b!7369864 (is-ElementMatch!19272 (regOne!39057 (regOne!39057 r1!2370)))) b!7370401))

(assert (= (and b!7369864 (is-Concat!28117 (regOne!39057 (regOne!39057 r1!2370)))) b!7370402))

(assert (= (and b!7369864 (is-Star!19272 (regOne!39057 (regOne!39057 r1!2370)))) b!7370403))

(assert (= (and b!7369864 (is-Union!19272 (regOne!39057 (regOne!39057 r1!2370)))) b!7370404))

(declare-fun b!7370405 () Bool)

(declare-fun e!4412412 () Bool)

(assert (=> b!7370405 (= e!4412412 tp_is_empty!48789)))

(declare-fun b!7370407 () Bool)

(declare-fun tp!2095182 () Bool)

(assert (=> b!7370407 (= e!4412412 tp!2095182)))

(declare-fun b!7370408 () Bool)

(declare-fun tp!2095181 () Bool)

(declare-fun tp!2095179 () Bool)

(assert (=> b!7370408 (= e!4412412 (and tp!2095181 tp!2095179))))

(declare-fun b!7370406 () Bool)

(declare-fun tp!2095180 () Bool)

(declare-fun tp!2095178 () Bool)

(assert (=> b!7370406 (= e!4412412 (and tp!2095180 tp!2095178))))

(assert (=> b!7369864 (= tp!2094975 e!4412412)))

(assert (= (and b!7369864 (is-ElementMatch!19272 (regTwo!39057 (regOne!39057 r1!2370)))) b!7370405))

(assert (= (and b!7369864 (is-Concat!28117 (regTwo!39057 (regOne!39057 r1!2370)))) b!7370406))

(assert (= (and b!7369864 (is-Star!19272 (regTwo!39057 (regOne!39057 r1!2370)))) b!7370407))

(assert (= (and b!7369864 (is-Union!19272 (regTwo!39057 (regOne!39057 r1!2370)))) b!7370408))

(declare-fun b!7370409 () Bool)

(declare-fun e!4412413 () Bool)

(assert (=> b!7370409 (= e!4412413 tp_is_empty!48789)))

(declare-fun b!7370411 () Bool)

(declare-fun tp!2095187 () Bool)

(assert (=> b!7370411 (= e!4412413 tp!2095187)))

(declare-fun b!7370412 () Bool)

(declare-fun tp!2095186 () Bool)

(declare-fun tp!2095184 () Bool)

(assert (=> b!7370412 (= e!4412413 (and tp!2095186 tp!2095184))))

(declare-fun b!7370410 () Bool)

(declare-fun tp!2095185 () Bool)

(declare-fun tp!2095183 () Bool)

(assert (=> b!7370410 (= e!4412413 (and tp!2095185 tp!2095183))))

(assert (=> b!7369868 (= tp!2094982 e!4412413)))

(assert (= (and b!7369868 (is-ElementMatch!19272 (regOne!39057 (regTwo!39057 r1!2370)))) b!7370409))

(assert (= (and b!7369868 (is-Concat!28117 (regOne!39057 (regTwo!39057 r1!2370)))) b!7370410))

(assert (= (and b!7369868 (is-Star!19272 (regOne!39057 (regTwo!39057 r1!2370)))) b!7370411))

(assert (= (and b!7369868 (is-Union!19272 (regOne!39057 (regTwo!39057 r1!2370)))) b!7370412))

(declare-fun b!7370413 () Bool)

(declare-fun e!4412414 () Bool)

(assert (=> b!7370413 (= e!4412414 tp_is_empty!48789)))

(declare-fun b!7370415 () Bool)

(declare-fun tp!2095192 () Bool)

(assert (=> b!7370415 (= e!4412414 tp!2095192)))

(declare-fun b!7370416 () Bool)

(declare-fun tp!2095191 () Bool)

(declare-fun tp!2095189 () Bool)

(assert (=> b!7370416 (= e!4412414 (and tp!2095191 tp!2095189))))

(declare-fun b!7370414 () Bool)

(declare-fun tp!2095190 () Bool)

(declare-fun tp!2095188 () Bool)

(assert (=> b!7370414 (= e!4412414 (and tp!2095190 tp!2095188))))

(assert (=> b!7369868 (= tp!2094980 e!4412414)))

(assert (= (and b!7369868 (is-ElementMatch!19272 (regTwo!39057 (regTwo!39057 r1!2370)))) b!7370413))

(assert (= (and b!7369868 (is-Concat!28117 (regTwo!39057 (regTwo!39057 r1!2370)))) b!7370414))

(assert (= (and b!7369868 (is-Star!19272 (regTwo!39057 (regTwo!39057 r1!2370)))) b!7370415))

(assert (= (and b!7369868 (is-Union!19272 (regTwo!39057 (regTwo!39057 r1!2370)))) b!7370416))

(declare-fun b!7370417 () Bool)

(declare-fun e!4412415 () Bool)

(assert (=> b!7370417 (= e!4412415 tp_is_empty!48789)))

(declare-fun b!7370419 () Bool)

(declare-fun tp!2095197 () Bool)

(assert (=> b!7370419 (= e!4412415 tp!2095197)))

(declare-fun b!7370420 () Bool)

(declare-fun tp!2095196 () Bool)

(declare-fun tp!2095194 () Bool)

(assert (=> b!7370420 (= e!4412415 (and tp!2095196 tp!2095194))))

(declare-fun b!7370418 () Bool)

(declare-fun tp!2095195 () Bool)

(declare-fun tp!2095193 () Bool)

(assert (=> b!7370418 (= e!4412415 (and tp!2095195 tp!2095193))))

(assert (=> b!7369878 (= tp!2094995 e!4412415)))

(assert (= (and b!7369878 (is-ElementMatch!19272 (h!78092 (exprs!8712 ct2!378)))) b!7370417))

(assert (= (and b!7369878 (is-Concat!28117 (h!78092 (exprs!8712 ct2!378)))) b!7370418))

(assert (= (and b!7369878 (is-Star!19272 (h!78092 (exprs!8712 ct2!378)))) b!7370419))

(assert (= (and b!7369878 (is-Union!19272 (h!78092 (exprs!8712 ct2!378)))) b!7370420))

(declare-fun b!7370421 () Bool)

(declare-fun e!4412416 () Bool)

(declare-fun tp!2095198 () Bool)

(declare-fun tp!2095199 () Bool)

(assert (=> b!7370421 (= e!4412416 (and tp!2095198 tp!2095199))))

(assert (=> b!7369878 (= tp!2094996 e!4412416)))

(assert (= (and b!7369878 (is-Cons!71644 (t!386227 (exprs!8712 ct2!378)))) b!7370421))

(declare-fun b_lambda!284429 () Bool)

(assert (= b_lambda!284413 (or b!7369660 b_lambda!284429)))

(declare-fun bs!1920833 () Bool)

(declare-fun d!2283629 () Bool)

(assert (= bs!1920833 (and d!2283629 b!7369660)))

(assert (=> bs!1920833 (= (dynLambda!29524 lambda!457920 (h!78092 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)))) (validRegex!9868 (h!78092 (++!17088 (exprs!8712 ct1!282) (exprs!8712 ct2!378)))))))

(declare-fun m!8024358 () Bool)

(assert (=> bs!1920833 m!8024358))

(assert (=> b!7370063 d!2283629))

(declare-fun b_lambda!284431 () Bool)

(assert (= b_lambda!284417 (or d!2283443 b_lambda!284431)))

(declare-fun bs!1920834 () Bool)

(declare-fun d!2283631 () Bool)

(assert (= bs!1920834 (and d!2283631 d!2283443)))

(assert (=> bs!1920834 (= (dynLambda!29524 lambda!457934 (h!78092 (exprs!8712 ct2!378))) (validRegex!9868 (h!78092 (exprs!8712 ct2!378))))))

(declare-fun m!8024360 () Bool)

(assert (=> bs!1920834 m!8024360))

(assert (=> b!7370211 d!2283631))

(declare-fun b_lambda!284433 () Bool)

(assert (= b_lambda!284415 (or b!7369660 b_lambda!284433)))

(declare-fun bs!1920835 () Bool)

(declare-fun d!2283633 () Bool)

(assert (= bs!1920835 (and d!2283633 b!7369660)))

(assert (=> bs!1920835 (= (dynLambda!29524 lambda!457920 (h!78092 (exprs!8712 ct1!282))) (validRegex!9868 (h!78092 (exprs!8712 ct1!282))))))

(declare-fun m!8024362 () Bool)

(assert (=> bs!1920835 m!8024362))

(assert (=> b!7370065 d!2283633))

(declare-fun b_lambda!284435 () Bool)

(assert (= b_lambda!284427 (or d!2283441 b_lambda!284435)))

(declare-fun bs!1920836 () Bool)

(declare-fun d!2283635 () Bool)

(assert (= bs!1920836 (and d!2283635 d!2283441)))

(assert (=> bs!1920836 (= (dynLambda!29524 lambda!457933 (h!78092 (exprs!8712 ct1!282))) (validRegex!9868 (h!78092 (exprs!8712 ct1!282))))))

(assert (=> bs!1920836 m!8024362))

(assert (=> b!7370282 d!2283635))

(declare-fun b_lambda!284437 () Bool)

(assert (= b_lambda!284419 (or b!7369660 b_lambda!284437)))

(declare-fun bs!1920837 () Bool)

(declare-fun d!2283637 () Bool)

(assert (= bs!1920837 (and d!2283637 b!7369660)))

(assert (=> bs!1920837 (= (dynLambda!29524 lambda!457920 (h!78092 (++!17088 lt!2615302 (exprs!8712 ct2!378)))) (validRegex!9868 (h!78092 (++!17088 lt!2615302 (exprs!8712 ct2!378)))))))

(declare-fun m!8024364 () Bool)

(assert (=> bs!1920837 m!8024364))

(assert (=> b!7370213 d!2283637))

(declare-fun b_lambda!284439 () Bool)

(assert (= b_lambda!284425 (or b!7369660 b_lambda!284439)))

(declare-fun bs!1920838 () Bool)

(declare-fun d!2283639 () Bool)

(assert (= bs!1920838 (and d!2283639 b!7369660)))

(assert (=> bs!1920838 (= (dynLambda!29524 lambda!457920 (h!78092 (exprs!8712 cWitness!61))) (validRegex!9868 (h!78092 (exprs!8712 cWitness!61))))))

(declare-fun m!8024366 () Bool)

(assert (=> bs!1920838 m!8024366))

(assert (=> b!7370248 d!2283639))

(declare-fun b_lambda!284441 () Bool)

(assert (= b_lambda!284411 (or d!2283439 b_lambda!284441)))

(declare-fun bs!1920839 () Bool)

(declare-fun d!2283641 () Bool)

(assert (= bs!1920839 (and d!2283641 d!2283439)))

(assert (=> bs!1920839 (= (dynLambda!29524 lambda!457932 (h!78092 (exprs!8712 cWitness!61))) (validRegex!9868 (h!78092 (exprs!8712 cWitness!61))))))

(assert (=> bs!1920839 m!8024366))

(assert (=> b!7370050 d!2283641))

(declare-fun b_lambda!284443 () Bool)

(assert (= b_lambda!284423 (or b!7369660 b_lambda!284443)))

(declare-fun bs!1920840 () Bool)

(declare-fun d!2283643 () Bool)

(assert (= bs!1920840 (and d!2283643 b!7369660)))

(assert (=> bs!1920840 (= (dynLambda!29524 lambda!457920 (h!78092 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)))) (validRegex!9868 (h!78092 (++!17088 (exprs!8712 cWitness!61) (exprs!8712 ct2!378)))))))

(declare-fun m!8024368 () Bool)

(assert (=> bs!1920840 m!8024368))

(assert (=> b!7370246 d!2283643))

(declare-fun b_lambda!284445 () Bool)

(assert (= b_lambda!284421 (or b!7369660 b_lambda!284445)))

(declare-fun bs!1920841 () Bool)

(declare-fun d!2283645 () Bool)

(assert (= bs!1920841 (and d!2283645 b!7369660)))

(assert (=> bs!1920841 (= (dynLambda!29524 lambda!457920 (h!78092 lt!2615302)) (validRegex!9868 (h!78092 lt!2615302)))))

(declare-fun m!8024370 () Bool)

(assert (=> bs!1920841 m!8024370))

(assert (=> b!7370215 d!2283645))

(push 1)

(assert (not b!7370392))

(assert (not bs!1920833))

(assert (not b!7370406))

(assert (not b!7370396))

(assert (not b!7370348))

(assert (not b!7370325))

(assert (not b!7370310))

(assert (not b!7370391))

(assert (not bm!676791))

(assert (not b!7370247))

(assert (not b!7370377))

(assert (not b!7370140))

(assert (not b!7370356))

(assert (not bm!676766))

(assert (not b!7370340))

(assert (not b!7370329))

(assert (not bm!676816))

(assert (not bm!676826))

(assert (not b!7370313))

(assert (not b_lambda!284443))

(assert (not b_lambda!284437))

(assert (not b!7370208))

(assert (not b!7370398))

(assert (not b!7370379))

(assert (not b!7370378))

(assert (not b!7370258))

(assert (not b!7370105))

(assert (not bm!676751))

(assert (not bs!1920836))

(assert (not bm!676811))

(assert (not b!7370403))

(assert (not b!7370345))

(assert (not b!7370121))

(assert (not b!7370415))

(assert (not b!7370369))

(assert (not b!7370322))

(assert (not b!7370382))

(assert (not b!7370412))

(assert (not b!7370289))

(assert (not b!7370376))

(assert (not bm!676759))

(assert (not b!7370362))

(assert (not b!7370216))

(assert (not b!7370368))

(assert (not b_lambda!284431))

(assert (not b!7370273))

(assert (not b!7370051))

(assert (not bm!676803))

(assert (not b!7370281))

(assert (not d!2283595))

(assert (not b!7370060))

(assert (not b!7370366))

(assert (not b!7370103))

(assert (not bm!676764))

(assert (not bm!676754))

(assert (not b!7370283))

(assert (not b!7370410))

(assert (not b!7370390))

(assert (not b!7370279))

(assert (not b!7370387))

(assert (not b!7370218))

(assert (not b!7370407))

(assert (not b!7370285))

(assert (not d!2283517))

(assert (not b!7370400))

(assert (not b!7370304))

(assert (not bm!676758))

(assert (not bm!676808))

(assert (not b!7370334))

(assert (not b!7370124))

(assert (not d!2283545))

(assert (not b!7370291))

(assert (not bm!676798))

(assert (not b!7370395))

(assert (not b!7370385))

(assert (not b!7370316))

(assert (not bm!676760))

(assert (not b!7370361))

(assert (not b!7370107))

(assert (not b!7370353))

(assert (not bm!676802))

(assert (not b!7370418))

(assert (not b!7370120))

(assert (not b!7370333))

(assert (not b!7370414))

(assert (not b_lambda!284435))

(assert (not bm!676806))

(assert (not bm!676773))

(assert (not b!7370309))

(assert (not b!7370330))

(assert (not b!7370374))

(assert (not d!2283565))

(assert (not bm!676785))

(assert (not bm!676824))

(assert (not bm!676821))

(assert (not bm!676775))

(assert (not bm!676765))

(assert (not b!7370320))

(assert (not b!7370317))

(assert (not b!7370344))

(assert (not b!7370075))

(assert (not b!7370095))

(assert (not b!7370411))

(assert (not b!7370352))

(assert (not b!7370416))

(assert (not b!7370324))

(assert (not b!7370064))

(assert (not bm!676781))

(assert (not bm!676745))

(assert (not bm!676750))

(assert (not bm!676797))

(assert (not b!7370318))

(assert (not b!7370171))

(assert (not b!7370354))

(assert (not b!7370198))

(assert (not bm!676812))

(assert (not b_lambda!284433))

(assert (not b_lambda!284445))

(assert (not b!7370321))

(assert (not d!2283619))

(assert (not b!7370275))

(assert (not b!7370358))

(assert (not b!7370305))

(assert (not b!7370312))

(assert (not b!7370365))

(assert (not bm!676770))

(assert (not b!7370262))

(assert (not b!7370314))

(assert tp_is_empty!48789)

(assert (not b!7370349))

(assert (not b!7370372))

(assert (not b!7370337))

(assert (not b!7370421))

(assert (not bm!676793))

(assert (not b!7370370))

(assert (not bm!676807))

(assert (not b!7370286))

(assert (not b!7370197))

(assert (not b_lambda!284429))

(assert (not b!7370383))

(assert (not b!7370381))

(assert (not b!7370373))

(assert (not d!2283549))

(assert (not b!7370212))

(assert (not d!2283561))

(assert (not d!2283541))

(assert (not b_lambda!284441))

(assert (not b!7370336))

(assert (not bm!676792))

(assert (not bm!676755))

(assert (not b!7370404))

(assert (not d!2283579))

(assert (not b!7370360))

(assert (not b!7370277))

(assert (not bs!1920839))

(assert (not b!7370308))

(assert (not d!2283585))

(assert (not b!7370249))

(assert (not b!7370341))

(assert (not bm!676749))

(assert (not b!7370169))

(assert (not d!2283627))

(assert (not b!7370389))

(assert (not bs!1920834))

(assert (not b!7370386))

(assert (not b!7370399))

(assert (not b!7370364))

(assert (not b!7370408))

(assert (not bm!676782))

(assert (not d!2283569))

(assert (not bm!676743))

(assert (not bs!1920840))

(assert (not bs!1920837))

(assert (not b!7370342))

(assert (not b!7370328))

(assert (not d!2283535))

(assert (not b!7370066))

(assert (not bm!676786))

(assert (not b!7370338))

(assert (not bm!676769))

(assert (not b!7370350))

(assert (not b!7370346))

(assert (not b!7370271))

(assert (not b!7370300))

(assert (not bm!676817))

(assert (not b!7370234))

(assert (not b!7370419))

(assert (not bm!676799))

(assert (not bm!676815))

(assert (not b!7370326))

(assert (not b!7370357))

(assert (not b!7370238))

(assert (not b!7370079))

(assert (not bm!676744))

(assert (not b!7370214))

(assert (not b!7370193))

(assert (not bm!676820))

(assert (not b!7370402))

(assert (not b!7370116))

(assert (not b_lambda!284439))

(assert (not d!2283539))

(assert (not b!7370420))

(assert (not bm!676825))

(assert (not b!7370173))

(assert (not b!7370182))

(assert (not bs!1920838))

(assert (not b!7370332))

(assert (not bs!1920835))

(assert (not bs!1920841))

(assert (not b!7370394))

(assert (not bm!676774))

(assert (not bm!676787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

