; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718786 () Bool)

(assert start!718786)

(declare-fun b!7361784 () Bool)

(declare-fun e!4407657 () Bool)

(declare-fun tp!2092001 () Bool)

(assert (=> b!7361784 (= e!4407657 tp!2092001)))

(declare-fun b!7361785 () Bool)

(declare-fun res!2971864 () Bool)

(declare-fun e!4407656 () Bool)

(assert (=> b!7361785 (=> (not res!2971864) (not e!4407656))))

(declare-datatypes ((C!38742 0))(
  ( (C!38743 (val!29731 Int)) )
))
(declare-datatypes ((Regex!19234 0))(
  ( (ElementMatch!19234 (c!1367838 C!38742)) (Concat!28079 (regOne!38980 Regex!19234) (regTwo!38980 Regex!19234)) (EmptyExpr!19234) (Star!19234 (reg!19563 Regex!19234)) (EmptyLang!19234) (Union!19234 (regOne!38981 Regex!19234) (regTwo!38981 Regex!19234)) )
))
(declare-datatypes ((List!71730 0))(
  ( (Nil!71606) (Cons!71606 (h!78054 Regex!19234) (t!386179 List!71730)) )
))
(declare-datatypes ((Context!16348 0))(
  ( (Context!16349 (exprs!8674 List!71730)) )
))
(declare-fun cWitness!61 () Context!16348)

(declare-fun lt!2614058 () (Set Context!16348))

(assert (=> b!7361785 (= res!2971864 (set.member cWitness!61 lt!2614058))))

(declare-fun b!7361786 () Bool)

(declare-fun e!4407652 () Bool)

(declare-fun tp!2092000 () Bool)

(declare-fun tp!2091999 () Bool)

(assert (=> b!7361786 (= e!4407652 (and tp!2092000 tp!2091999))))

(declare-fun res!2971863 () Bool)

(declare-fun e!4407653 () Bool)

(assert (=> start!718786 (=> (not res!2971863) (not e!4407653))))

(declare-fun r1!2370 () Regex!19234)

(declare-fun validRegex!9830 (Regex!19234) Bool)

(assert (=> start!718786 (= res!2971863 (validRegex!9830 r1!2370))))

(assert (=> start!718786 e!4407653))

(declare-fun tp_is_empty!48713 () Bool)

(assert (=> start!718786 tp_is_empty!48713))

(declare-fun e!4407658 () Bool)

(declare-fun inv!91426 (Context!16348) Bool)

(assert (=> start!718786 (and (inv!91426 cWitness!61) e!4407658)))

(declare-fun ct1!282 () Context!16348)

(assert (=> start!718786 (and (inv!91426 ct1!282) e!4407657)))

(assert (=> start!718786 e!4407652))

(declare-fun ct2!378 () Context!16348)

(declare-fun e!4407651 () Bool)

(assert (=> start!718786 (and (inv!91426 ct2!378) e!4407651)))

(declare-fun b!7361787 () Bool)

(declare-fun e!4407655 () Bool)

(assert (=> b!7361787 (= e!4407655 e!4407656)))

(declare-fun res!2971867 () Bool)

(assert (=> b!7361787 (=> (not res!2971867) (not e!4407656))))

(declare-fun c!10362 () C!38742)

(declare-fun lt!2614057 () (Set Context!16348))

(declare-fun derivationStepZipperDown!3060 (Regex!19234 Context!16348 C!38742) (Set Context!16348))

(assert (=> b!7361787 (= res!2971867 (= lt!2614057 (set.union lt!2614058 (derivationStepZipperDown!3060 (regTwo!38981 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7361787 (= lt!2614058 (derivationStepZipperDown!3060 (regOne!38981 r1!2370) ct1!282 c!10362))))

(declare-fun b!7361788 () Bool)

(assert (=> b!7361788 (= e!4407652 tp_is_empty!48713)))

(declare-fun b!7361789 () Bool)

(declare-fun tp!2091997 () Bool)

(assert (=> b!7361789 (= e!4407652 tp!2091997)))

(declare-fun b!7361790 () Bool)

(declare-fun tp!2091996 () Bool)

(declare-fun tp!2092003 () Bool)

(assert (=> b!7361790 (= e!4407652 (and tp!2091996 tp!2092003))))

(declare-fun b!7361791 () Bool)

(declare-fun e!4407654 () Bool)

(assert (=> b!7361791 (= e!4407654 e!4407655)))

(declare-fun res!2971865 () Bool)

(assert (=> b!7361791 (=> (not res!2971865) (not e!4407655))))

(assert (=> b!7361791 (= res!2971865 (and (or (not (is-ElementMatch!19234 r1!2370)) (not (= c!10362 (c!1367838 r1!2370)))) (is-Union!19234 r1!2370)))))

(declare-fun lt!2614059 () (Set Context!16348))

(declare-fun ++!17050 (List!71730 List!71730) List!71730)

(assert (=> b!7361791 (= lt!2614059 (derivationStepZipperDown!3060 r1!2370 (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378))) c!10362))))

(declare-fun lambda!457416 () Int)

(declare-datatypes ((Unit!165417 0))(
  ( (Unit!165418) )
))
(declare-fun lt!2614056 () Unit!165417)

(declare-fun lemmaConcatPreservesForall!1907 (List!71730 List!71730 Int) Unit!165417)

(assert (=> b!7361791 (= lt!2614056 (lemmaConcatPreservesForall!1907 (exprs!8674 ct1!282) (exprs!8674 ct2!378) lambda!457416))))

(declare-fun b!7361792 () Bool)

(declare-fun tp!2092002 () Bool)

(assert (=> b!7361792 (= e!4407658 tp!2092002)))

(declare-fun b!7361793 () Bool)

(assert (=> b!7361793 (= e!4407656 (not (validRegex!9830 (regOne!38981 r1!2370))))))

(declare-fun b!7361794 () Bool)

(assert (=> b!7361794 (= e!4407653 e!4407654)))

(declare-fun res!2971866 () Bool)

(assert (=> b!7361794 (=> (not res!2971866) (not e!4407654))))

(assert (=> b!7361794 (= res!2971866 (set.member cWitness!61 lt!2614057))))

(assert (=> b!7361794 (= lt!2614057 (derivationStepZipperDown!3060 r1!2370 ct1!282 c!10362))))

(declare-fun b!7361795 () Bool)

(declare-fun tp!2091998 () Bool)

(assert (=> b!7361795 (= e!4407651 tp!2091998)))

(assert (= (and start!718786 res!2971863) b!7361794))

(assert (= (and b!7361794 res!2971866) b!7361791))

(assert (= (and b!7361791 res!2971865) b!7361787))

(assert (= (and b!7361787 res!2971867) b!7361785))

(assert (= (and b!7361785 res!2971864) b!7361793))

(assert (= start!718786 b!7361792))

(assert (= start!718786 b!7361784))

(assert (= (and start!718786 (is-ElementMatch!19234 r1!2370)) b!7361788))

(assert (= (and start!718786 (is-Concat!28079 r1!2370)) b!7361786))

(assert (= (and start!718786 (is-Star!19234 r1!2370)) b!7361789))

(assert (= (and start!718786 (is-Union!19234 r1!2370)) b!7361790))

(assert (= start!718786 b!7361795))

(declare-fun m!8019002 () Bool)

(assert (=> b!7361785 m!8019002))

(declare-fun m!8019004 () Bool)

(assert (=> b!7361793 m!8019004))

(declare-fun m!8019006 () Bool)

(assert (=> start!718786 m!8019006))

(declare-fun m!8019008 () Bool)

(assert (=> start!718786 m!8019008))

(declare-fun m!8019010 () Bool)

(assert (=> start!718786 m!8019010))

(declare-fun m!8019012 () Bool)

(assert (=> start!718786 m!8019012))

(declare-fun m!8019014 () Bool)

(assert (=> b!7361787 m!8019014))

(declare-fun m!8019016 () Bool)

(assert (=> b!7361787 m!8019016))

(declare-fun m!8019018 () Bool)

(assert (=> b!7361791 m!8019018))

(declare-fun m!8019020 () Bool)

(assert (=> b!7361791 m!8019020))

(declare-fun m!8019022 () Bool)

(assert (=> b!7361791 m!8019022))

(declare-fun m!8019024 () Bool)

(assert (=> b!7361794 m!8019024))

(declare-fun m!8019026 () Bool)

(assert (=> b!7361794 m!8019026))

(push 1)

(assert tp_is_empty!48713)

(assert (not b!7361795))

(assert (not b!7361787))

(assert (not b!7361791))

(assert (not start!718786))

(assert (not b!7361792))

(assert (not b!7361786))

(assert (not b!7361793))

(assert (not b!7361794))

(assert (not b!7361790))

(assert (not b!7361789))

(assert (not b!7361784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7361854 () Bool)

(declare-fun e!4407700 () (Set Context!16348))

(assert (=> b!7361854 (= e!4407700 (as set.empty (Set Context!16348)))))

(declare-fun bm!674713 () Bool)

(declare-fun call!674720 () List!71730)

(declare-fun call!674718 () List!71730)

(assert (=> bm!674713 (= call!674720 call!674718)))

(declare-fun b!7361855 () Bool)

(declare-fun call!674722 () (Set Context!16348))

(assert (=> b!7361855 (= e!4407700 call!674722)))

(declare-fun c!1367853 () Bool)

(declare-fun c!1367852 () Bool)

(declare-fun bm!674714 () Bool)

(declare-fun $colon$colon!3222 (List!71730 Regex!19234) List!71730)

(assert (=> bm!674714 (= call!674718 ($colon$colon!3222 (exprs!8674 ct1!282) (ite (or c!1367853 c!1367852) (regTwo!38980 r1!2370) r1!2370)))))

(declare-fun b!7361856 () Bool)

(declare-fun e!4407698 () Bool)

(assert (=> b!7361856 (= c!1367853 e!4407698)))

(declare-fun res!2971885 () Bool)

(assert (=> b!7361856 (=> (not res!2971885) (not e!4407698))))

(assert (=> b!7361856 (= res!2971885 (is-Concat!28079 r1!2370))))

(declare-fun e!4407697 () (Set Context!16348))

(declare-fun e!4407696 () (Set Context!16348))

(assert (=> b!7361856 (= e!4407697 e!4407696)))

(declare-fun b!7361857 () Bool)

(declare-fun e!4407695 () (Set Context!16348))

(assert (=> b!7361857 (= e!4407695 e!4407697)))

(declare-fun c!1367851 () Bool)

(assert (=> b!7361857 (= c!1367851 (is-Union!19234 r1!2370))))

(declare-fun b!7361858 () Bool)

(declare-fun c!1367854 () Bool)

(assert (=> b!7361858 (= c!1367854 (is-Star!19234 r1!2370))))

(declare-fun e!4407699 () (Set Context!16348))

(assert (=> b!7361858 (= e!4407699 e!4407700)))

(declare-fun b!7361859 () Bool)

(declare-fun call!674721 () (Set Context!16348))

(declare-fun call!674719 () (Set Context!16348))

(assert (=> b!7361859 (= e!4407696 (set.union call!674721 call!674719))))

(declare-fun d!2282232 () Bool)

(declare-fun c!1367850 () Bool)

(assert (=> d!2282232 (= c!1367850 (and (is-ElementMatch!19234 r1!2370) (= (c!1367838 r1!2370) c!10362)))))

(assert (=> d!2282232 (= (derivationStepZipperDown!3060 r1!2370 ct1!282 c!10362) e!4407695)))

(declare-fun b!7361860 () Bool)

(assert (=> b!7361860 (= e!4407695 (set.insert ct1!282 (as set.empty (Set Context!16348))))))

(declare-fun b!7361861 () Bool)

(assert (=> b!7361861 (= e!4407696 e!4407699)))

(assert (=> b!7361861 (= c!1367852 (is-Concat!28079 r1!2370))))

(declare-fun b!7361862 () Bool)

(declare-fun call!674723 () (Set Context!16348))

(assert (=> b!7361862 (= e!4407697 (set.union call!674723 call!674721))))

(declare-fun b!7361863 () Bool)

(assert (=> b!7361863 (= e!4407699 call!674722)))

(declare-fun bm!674715 () Bool)

(assert (=> bm!674715 (= call!674722 call!674719)))

(declare-fun bm!674716 () Bool)

(assert (=> bm!674716 (= call!674719 call!674723)))

(declare-fun b!7361864 () Bool)

(declare-fun nullable!8316 (Regex!19234) Bool)

(assert (=> b!7361864 (= e!4407698 (nullable!8316 (regOne!38980 r1!2370)))))

(declare-fun bm!674717 () Bool)

(assert (=> bm!674717 (= call!674723 (derivationStepZipperDown!3060 (ite c!1367851 (regOne!38981 r1!2370) (ite c!1367853 (regTwo!38980 r1!2370) (ite c!1367852 (regOne!38980 r1!2370) (reg!19563 r1!2370)))) (ite (or c!1367851 c!1367853) ct1!282 (Context!16349 call!674720)) c!10362))))

(declare-fun bm!674718 () Bool)

(assert (=> bm!674718 (= call!674721 (derivationStepZipperDown!3060 (ite c!1367851 (regTwo!38981 r1!2370) (regOne!38980 r1!2370)) (ite c!1367851 ct1!282 (Context!16349 call!674718)) c!10362))))

(assert (= (and d!2282232 c!1367850) b!7361860))

(assert (= (and d!2282232 (not c!1367850)) b!7361857))

(assert (= (and b!7361857 c!1367851) b!7361862))

(assert (= (and b!7361857 (not c!1367851)) b!7361856))

(assert (= (and b!7361856 res!2971885) b!7361864))

(assert (= (and b!7361856 c!1367853) b!7361859))

(assert (= (and b!7361856 (not c!1367853)) b!7361861))

(assert (= (and b!7361861 c!1367852) b!7361863))

(assert (= (and b!7361861 (not c!1367852)) b!7361858))

(assert (= (and b!7361858 c!1367854) b!7361855))

(assert (= (and b!7361858 (not c!1367854)) b!7361854))

(assert (= (or b!7361863 b!7361855) bm!674713))

(assert (= (or b!7361863 b!7361855) bm!674715))

(assert (= (or b!7361859 bm!674715) bm!674716))

(assert (= (or b!7361859 bm!674713) bm!674714))

(assert (= (or b!7361862 b!7361859) bm!674718))

(assert (= (or b!7361862 bm!674716) bm!674717))

(declare-fun m!8019054 () Bool)

(assert (=> bm!674718 m!8019054))

(declare-fun m!8019056 () Bool)

(assert (=> b!7361864 m!8019056))

(declare-fun m!8019058 () Bool)

(assert (=> bm!674714 m!8019058))

(declare-fun m!8019060 () Bool)

(assert (=> bm!674717 m!8019060))

(declare-fun m!8019062 () Bool)

(assert (=> b!7361860 m!8019062))

(assert (=> b!7361794 d!2282232))

(declare-fun b!7361865 () Bool)

(declare-fun e!4407706 () (Set Context!16348))

(assert (=> b!7361865 (= e!4407706 (as set.empty (Set Context!16348)))))

(declare-fun bm!674719 () Bool)

(declare-fun call!674726 () List!71730)

(declare-fun call!674724 () List!71730)

(assert (=> bm!674719 (= call!674726 call!674724)))

(declare-fun b!7361866 () Bool)

(declare-fun call!674728 () (Set Context!16348))

(assert (=> b!7361866 (= e!4407706 call!674728)))

(declare-fun c!1367858 () Bool)

(declare-fun c!1367857 () Bool)

(declare-fun bm!674720 () Bool)

(assert (=> bm!674720 (= call!674724 ($colon$colon!3222 (exprs!8674 ct1!282) (ite (or c!1367858 c!1367857) (regTwo!38980 (regTwo!38981 r1!2370)) (regTwo!38981 r1!2370))))))

(declare-fun b!7361867 () Bool)

(declare-fun e!4407704 () Bool)

(assert (=> b!7361867 (= c!1367858 e!4407704)))

(declare-fun res!2971886 () Bool)

(assert (=> b!7361867 (=> (not res!2971886) (not e!4407704))))

(assert (=> b!7361867 (= res!2971886 (is-Concat!28079 (regTwo!38981 r1!2370)))))

(declare-fun e!4407703 () (Set Context!16348))

(declare-fun e!4407702 () (Set Context!16348))

(assert (=> b!7361867 (= e!4407703 e!4407702)))

(declare-fun b!7361868 () Bool)

(declare-fun e!4407701 () (Set Context!16348))

(assert (=> b!7361868 (= e!4407701 e!4407703)))

(declare-fun c!1367856 () Bool)

(assert (=> b!7361868 (= c!1367856 (is-Union!19234 (regTwo!38981 r1!2370)))))

(declare-fun b!7361869 () Bool)

(declare-fun c!1367859 () Bool)

(assert (=> b!7361869 (= c!1367859 (is-Star!19234 (regTwo!38981 r1!2370)))))

(declare-fun e!4407705 () (Set Context!16348))

(assert (=> b!7361869 (= e!4407705 e!4407706)))

(declare-fun b!7361870 () Bool)

(declare-fun call!674727 () (Set Context!16348))

(declare-fun call!674725 () (Set Context!16348))

(assert (=> b!7361870 (= e!4407702 (set.union call!674727 call!674725))))

(declare-fun d!2282236 () Bool)

(declare-fun c!1367855 () Bool)

(assert (=> d!2282236 (= c!1367855 (and (is-ElementMatch!19234 (regTwo!38981 r1!2370)) (= (c!1367838 (regTwo!38981 r1!2370)) c!10362)))))

(assert (=> d!2282236 (= (derivationStepZipperDown!3060 (regTwo!38981 r1!2370) ct1!282 c!10362) e!4407701)))

(declare-fun b!7361871 () Bool)

(assert (=> b!7361871 (= e!4407701 (set.insert ct1!282 (as set.empty (Set Context!16348))))))

(declare-fun b!7361872 () Bool)

(assert (=> b!7361872 (= e!4407702 e!4407705)))

(assert (=> b!7361872 (= c!1367857 (is-Concat!28079 (regTwo!38981 r1!2370)))))

(declare-fun b!7361873 () Bool)

(declare-fun call!674729 () (Set Context!16348))

(assert (=> b!7361873 (= e!4407703 (set.union call!674729 call!674727))))

(declare-fun b!7361874 () Bool)

(assert (=> b!7361874 (= e!4407705 call!674728)))

(declare-fun bm!674721 () Bool)

(assert (=> bm!674721 (= call!674728 call!674725)))

(declare-fun bm!674722 () Bool)

(assert (=> bm!674722 (= call!674725 call!674729)))

(declare-fun b!7361875 () Bool)

(assert (=> b!7361875 (= e!4407704 (nullable!8316 (regOne!38980 (regTwo!38981 r1!2370))))))

(declare-fun bm!674723 () Bool)

(assert (=> bm!674723 (= call!674729 (derivationStepZipperDown!3060 (ite c!1367856 (regOne!38981 (regTwo!38981 r1!2370)) (ite c!1367858 (regTwo!38980 (regTwo!38981 r1!2370)) (ite c!1367857 (regOne!38980 (regTwo!38981 r1!2370)) (reg!19563 (regTwo!38981 r1!2370))))) (ite (or c!1367856 c!1367858) ct1!282 (Context!16349 call!674726)) c!10362))))

(declare-fun bm!674724 () Bool)

(assert (=> bm!674724 (= call!674727 (derivationStepZipperDown!3060 (ite c!1367856 (regTwo!38981 (regTwo!38981 r1!2370)) (regOne!38980 (regTwo!38981 r1!2370))) (ite c!1367856 ct1!282 (Context!16349 call!674724)) c!10362))))

(assert (= (and d!2282236 c!1367855) b!7361871))

(assert (= (and d!2282236 (not c!1367855)) b!7361868))

(assert (= (and b!7361868 c!1367856) b!7361873))

(assert (= (and b!7361868 (not c!1367856)) b!7361867))

(assert (= (and b!7361867 res!2971886) b!7361875))

(assert (= (and b!7361867 c!1367858) b!7361870))

(assert (= (and b!7361867 (not c!1367858)) b!7361872))

(assert (= (and b!7361872 c!1367857) b!7361874))

(assert (= (and b!7361872 (not c!1367857)) b!7361869))

(assert (= (and b!7361869 c!1367859) b!7361866))

(assert (= (and b!7361869 (not c!1367859)) b!7361865))

(assert (= (or b!7361874 b!7361866) bm!674719))

(assert (= (or b!7361874 b!7361866) bm!674721))

(assert (= (or b!7361870 bm!674721) bm!674722))

(assert (= (or b!7361870 bm!674719) bm!674720))

(assert (= (or b!7361873 b!7361870) bm!674724))

(assert (= (or b!7361873 bm!674722) bm!674723))

(declare-fun m!8019064 () Bool)

(assert (=> bm!674724 m!8019064))

(declare-fun m!8019066 () Bool)

(assert (=> b!7361875 m!8019066))

(declare-fun m!8019068 () Bool)

(assert (=> bm!674720 m!8019068))

(declare-fun m!8019070 () Bool)

(assert (=> bm!674723 m!8019070))

(assert (=> b!7361871 m!8019062))

(assert (=> b!7361787 d!2282236))

(declare-fun b!7361876 () Bool)

(declare-fun e!4407712 () (Set Context!16348))

(assert (=> b!7361876 (= e!4407712 (as set.empty (Set Context!16348)))))

(declare-fun bm!674725 () Bool)

(declare-fun call!674732 () List!71730)

(declare-fun call!674730 () List!71730)

(assert (=> bm!674725 (= call!674732 call!674730)))

(declare-fun b!7361877 () Bool)

(declare-fun call!674734 () (Set Context!16348))

(assert (=> b!7361877 (= e!4407712 call!674734)))

(declare-fun c!1367862 () Bool)

(declare-fun bm!674726 () Bool)

(declare-fun c!1367863 () Bool)

(assert (=> bm!674726 (= call!674730 ($colon$colon!3222 (exprs!8674 ct1!282) (ite (or c!1367863 c!1367862) (regTwo!38980 (regOne!38981 r1!2370)) (regOne!38981 r1!2370))))))

(declare-fun b!7361878 () Bool)

(declare-fun e!4407710 () Bool)

(assert (=> b!7361878 (= c!1367863 e!4407710)))

(declare-fun res!2971887 () Bool)

(assert (=> b!7361878 (=> (not res!2971887) (not e!4407710))))

(assert (=> b!7361878 (= res!2971887 (is-Concat!28079 (regOne!38981 r1!2370)))))

(declare-fun e!4407709 () (Set Context!16348))

(declare-fun e!4407708 () (Set Context!16348))

(assert (=> b!7361878 (= e!4407709 e!4407708)))

(declare-fun b!7361879 () Bool)

(declare-fun e!4407707 () (Set Context!16348))

(assert (=> b!7361879 (= e!4407707 e!4407709)))

(declare-fun c!1367861 () Bool)

(assert (=> b!7361879 (= c!1367861 (is-Union!19234 (regOne!38981 r1!2370)))))

(declare-fun b!7361880 () Bool)

(declare-fun c!1367864 () Bool)

(assert (=> b!7361880 (= c!1367864 (is-Star!19234 (regOne!38981 r1!2370)))))

(declare-fun e!4407711 () (Set Context!16348))

(assert (=> b!7361880 (= e!4407711 e!4407712)))

(declare-fun b!7361881 () Bool)

(declare-fun call!674733 () (Set Context!16348))

(declare-fun call!674731 () (Set Context!16348))

(assert (=> b!7361881 (= e!4407708 (set.union call!674733 call!674731))))

(declare-fun d!2282238 () Bool)

(declare-fun c!1367860 () Bool)

(assert (=> d!2282238 (= c!1367860 (and (is-ElementMatch!19234 (regOne!38981 r1!2370)) (= (c!1367838 (regOne!38981 r1!2370)) c!10362)))))

(assert (=> d!2282238 (= (derivationStepZipperDown!3060 (regOne!38981 r1!2370) ct1!282 c!10362) e!4407707)))

(declare-fun b!7361882 () Bool)

(assert (=> b!7361882 (= e!4407707 (set.insert ct1!282 (as set.empty (Set Context!16348))))))

(declare-fun b!7361883 () Bool)

(assert (=> b!7361883 (= e!4407708 e!4407711)))

(assert (=> b!7361883 (= c!1367862 (is-Concat!28079 (regOne!38981 r1!2370)))))

(declare-fun b!7361884 () Bool)

(declare-fun call!674735 () (Set Context!16348))

(assert (=> b!7361884 (= e!4407709 (set.union call!674735 call!674733))))

(declare-fun b!7361885 () Bool)

(assert (=> b!7361885 (= e!4407711 call!674734)))

(declare-fun bm!674727 () Bool)

(assert (=> bm!674727 (= call!674734 call!674731)))

(declare-fun bm!674728 () Bool)

(assert (=> bm!674728 (= call!674731 call!674735)))

(declare-fun b!7361886 () Bool)

(assert (=> b!7361886 (= e!4407710 (nullable!8316 (regOne!38980 (regOne!38981 r1!2370))))))

(declare-fun bm!674729 () Bool)

(assert (=> bm!674729 (= call!674735 (derivationStepZipperDown!3060 (ite c!1367861 (regOne!38981 (regOne!38981 r1!2370)) (ite c!1367863 (regTwo!38980 (regOne!38981 r1!2370)) (ite c!1367862 (regOne!38980 (regOne!38981 r1!2370)) (reg!19563 (regOne!38981 r1!2370))))) (ite (or c!1367861 c!1367863) ct1!282 (Context!16349 call!674732)) c!10362))))

(declare-fun bm!674730 () Bool)

(assert (=> bm!674730 (= call!674733 (derivationStepZipperDown!3060 (ite c!1367861 (regTwo!38981 (regOne!38981 r1!2370)) (regOne!38980 (regOne!38981 r1!2370))) (ite c!1367861 ct1!282 (Context!16349 call!674730)) c!10362))))

(assert (= (and d!2282238 c!1367860) b!7361882))

(assert (= (and d!2282238 (not c!1367860)) b!7361879))

(assert (= (and b!7361879 c!1367861) b!7361884))

(assert (= (and b!7361879 (not c!1367861)) b!7361878))

(assert (= (and b!7361878 res!2971887) b!7361886))

(assert (= (and b!7361878 c!1367863) b!7361881))

(assert (= (and b!7361878 (not c!1367863)) b!7361883))

(assert (= (and b!7361883 c!1367862) b!7361885))

(assert (= (and b!7361883 (not c!1367862)) b!7361880))

(assert (= (and b!7361880 c!1367864) b!7361877))

(assert (= (and b!7361880 (not c!1367864)) b!7361876))

(assert (= (or b!7361885 b!7361877) bm!674725))

(assert (= (or b!7361885 b!7361877) bm!674727))

(assert (= (or b!7361881 bm!674727) bm!674728))

(assert (= (or b!7361881 bm!674725) bm!674726))

(assert (= (or b!7361884 b!7361881) bm!674730))

(assert (= (or b!7361884 bm!674728) bm!674729))

(declare-fun m!8019072 () Bool)

(assert (=> bm!674730 m!8019072))

(declare-fun m!8019074 () Bool)

(assert (=> b!7361886 m!8019074))

(declare-fun m!8019076 () Bool)

(assert (=> bm!674726 m!8019076))

(declare-fun m!8019078 () Bool)

(assert (=> bm!674729 m!8019078))

(assert (=> b!7361882 m!8019062))

(assert (=> b!7361787 d!2282238))

(declare-fun b!7361927 () Bool)

(declare-fun e!4407743 () Bool)

(declare-fun e!4407740 () Bool)

(assert (=> b!7361927 (= e!4407743 e!4407740)))

(declare-fun c!1367879 () Bool)

(assert (=> b!7361927 (= c!1367879 (is-Union!19234 (regOne!38981 r1!2370)))))

(declare-fun b!7361928 () Bool)

(declare-fun e!4407744 () Bool)

(declare-fun call!674754 () Bool)

(assert (=> b!7361928 (= e!4407744 call!674754)))

(declare-fun bm!674747 () Bool)

(declare-fun call!674756 () Bool)

(assert (=> bm!674747 (= call!674756 (validRegex!9830 (ite c!1367879 (regTwo!38981 (regOne!38981 r1!2370)) (regOne!38980 (regOne!38981 r1!2370)))))))

(declare-fun b!7361929 () Bool)

(declare-fun e!4407741 () Bool)

(assert (=> b!7361929 (= e!4407741 e!4407743)))

(declare-fun c!1367880 () Bool)

(assert (=> b!7361929 (= c!1367880 (is-Star!19234 (regOne!38981 r1!2370)))))

(declare-fun b!7361930 () Bool)

(assert (=> b!7361930 (= e!4407743 e!4407744)))

(declare-fun res!2971901 () Bool)

(assert (=> b!7361930 (= res!2971901 (not (nullable!8316 (reg!19563 (regOne!38981 r1!2370)))))))

(assert (=> b!7361930 (=> (not res!2971901) (not e!4407744))))

(declare-fun b!7361931 () Bool)

(declare-fun e!4407739 () Bool)

(declare-fun call!674755 () Bool)

(assert (=> b!7361931 (= e!4407739 call!674755)))

(declare-fun bm!674749 () Bool)

(assert (=> bm!674749 (= call!674754 (validRegex!9830 (ite c!1367880 (reg!19563 (regOne!38981 r1!2370)) (ite c!1367879 (regOne!38981 (regOne!38981 r1!2370)) (regTwo!38980 (regOne!38981 r1!2370))))))))

(declare-fun b!7361932 () Bool)

(declare-fun res!2971900 () Bool)

(declare-fun e!4407745 () Bool)

(assert (=> b!7361932 (=> (not res!2971900) (not e!4407745))))

(assert (=> b!7361932 (= res!2971900 call!674755)))

(assert (=> b!7361932 (= e!4407740 e!4407745)))

(declare-fun b!7361933 () Bool)

(declare-fun res!2971904 () Bool)

(declare-fun e!4407742 () Bool)

(assert (=> b!7361933 (=> res!2971904 e!4407742)))

(assert (=> b!7361933 (= res!2971904 (not (is-Concat!28079 (regOne!38981 r1!2370))))))

(assert (=> b!7361933 (= e!4407740 e!4407742)))

(declare-fun b!7361934 () Bool)

(assert (=> b!7361934 (= e!4407742 e!4407739)))

(declare-fun res!2971902 () Bool)

(assert (=> b!7361934 (=> (not res!2971902) (not e!4407739))))

(assert (=> b!7361934 (= res!2971902 call!674756)))

(declare-fun b!7361935 () Bool)

(assert (=> b!7361935 (= e!4407745 call!674756)))

(declare-fun d!2282240 () Bool)

(declare-fun res!2971903 () Bool)

(assert (=> d!2282240 (=> res!2971903 e!4407741)))

(assert (=> d!2282240 (= res!2971903 (is-ElementMatch!19234 (regOne!38981 r1!2370)))))

(assert (=> d!2282240 (= (validRegex!9830 (regOne!38981 r1!2370)) e!4407741)))

(declare-fun bm!674748 () Bool)

(assert (=> bm!674748 (= call!674755 call!674754)))

(assert (= (and d!2282240 (not res!2971903)) b!7361929))

(assert (= (and b!7361929 c!1367880) b!7361930))

(assert (= (and b!7361929 (not c!1367880)) b!7361927))

(assert (= (and b!7361930 res!2971901) b!7361928))

(assert (= (and b!7361927 c!1367879) b!7361932))

(assert (= (and b!7361927 (not c!1367879)) b!7361933))

(assert (= (and b!7361932 res!2971900) b!7361935))

(assert (= (and b!7361933 (not res!2971904)) b!7361934))

(assert (= (and b!7361934 res!2971902) b!7361931))

(assert (= (or b!7361932 b!7361931) bm!674748))

(assert (= (or b!7361935 b!7361934) bm!674747))

(assert (= (or b!7361928 bm!674748) bm!674749))

(declare-fun m!8019080 () Bool)

(assert (=> bm!674747 m!8019080))

(declare-fun m!8019082 () Bool)

(assert (=> b!7361930 m!8019082))

(declare-fun m!8019084 () Bool)

(assert (=> bm!674749 m!8019084))

(assert (=> b!7361793 d!2282240))

(declare-fun b!7361936 () Bool)

(declare-fun e!4407750 () Bool)

(declare-fun e!4407747 () Bool)

(assert (=> b!7361936 (= e!4407750 e!4407747)))

(declare-fun c!1367881 () Bool)

(assert (=> b!7361936 (= c!1367881 (is-Union!19234 r1!2370))))

(declare-fun b!7361937 () Bool)

(declare-fun e!4407751 () Bool)

(declare-fun call!674757 () Bool)

(assert (=> b!7361937 (= e!4407751 call!674757)))

(declare-fun bm!674752 () Bool)

(declare-fun call!674759 () Bool)

(assert (=> bm!674752 (= call!674759 (validRegex!9830 (ite c!1367881 (regTwo!38981 r1!2370) (regOne!38980 r1!2370))))))

(declare-fun b!7361938 () Bool)

(declare-fun e!4407748 () Bool)

(assert (=> b!7361938 (= e!4407748 e!4407750)))

(declare-fun c!1367882 () Bool)

(assert (=> b!7361938 (= c!1367882 (is-Star!19234 r1!2370))))

(declare-fun b!7361939 () Bool)

(assert (=> b!7361939 (= e!4407750 e!4407751)))

(declare-fun res!2971906 () Bool)

(assert (=> b!7361939 (= res!2971906 (not (nullable!8316 (reg!19563 r1!2370))))))

(assert (=> b!7361939 (=> (not res!2971906) (not e!4407751))))

(declare-fun b!7361940 () Bool)

(declare-fun e!4407746 () Bool)

(declare-fun call!674758 () Bool)

(assert (=> b!7361940 (= e!4407746 call!674758)))

(declare-fun bm!674754 () Bool)

(assert (=> bm!674754 (= call!674757 (validRegex!9830 (ite c!1367882 (reg!19563 r1!2370) (ite c!1367881 (regOne!38981 r1!2370) (regTwo!38980 r1!2370)))))))

(declare-fun b!7361941 () Bool)

(declare-fun res!2971905 () Bool)

(declare-fun e!4407752 () Bool)

(assert (=> b!7361941 (=> (not res!2971905) (not e!4407752))))

(assert (=> b!7361941 (= res!2971905 call!674758)))

(assert (=> b!7361941 (= e!4407747 e!4407752)))

(declare-fun b!7361942 () Bool)

(declare-fun res!2971909 () Bool)

(declare-fun e!4407749 () Bool)

(assert (=> b!7361942 (=> res!2971909 e!4407749)))

(assert (=> b!7361942 (= res!2971909 (not (is-Concat!28079 r1!2370)))))

(assert (=> b!7361942 (= e!4407747 e!4407749)))

(declare-fun b!7361943 () Bool)

(assert (=> b!7361943 (= e!4407749 e!4407746)))

(declare-fun res!2971907 () Bool)

(assert (=> b!7361943 (=> (not res!2971907) (not e!4407746))))

(assert (=> b!7361943 (= res!2971907 call!674759)))

(declare-fun b!7361944 () Bool)

(assert (=> b!7361944 (= e!4407752 call!674759)))

(declare-fun d!2282242 () Bool)

(declare-fun res!2971908 () Bool)

(assert (=> d!2282242 (=> res!2971908 e!4407748)))

(assert (=> d!2282242 (= res!2971908 (is-ElementMatch!19234 r1!2370))))

(assert (=> d!2282242 (= (validRegex!9830 r1!2370) e!4407748)))

(declare-fun bm!674753 () Bool)

(assert (=> bm!674753 (= call!674758 call!674757)))

(assert (= (and d!2282242 (not res!2971908)) b!7361938))

(assert (= (and b!7361938 c!1367882) b!7361939))

(assert (= (and b!7361938 (not c!1367882)) b!7361936))

(assert (= (and b!7361939 res!2971906) b!7361937))

(assert (= (and b!7361936 c!1367881) b!7361941))

(assert (= (and b!7361936 (not c!1367881)) b!7361942))

(assert (= (and b!7361941 res!2971905) b!7361944))

(assert (= (and b!7361942 (not res!2971909)) b!7361943))

(assert (= (and b!7361943 res!2971907) b!7361940))

(assert (= (or b!7361941 b!7361940) bm!674753))

(assert (= (or b!7361944 b!7361943) bm!674752))

(assert (= (or b!7361937 bm!674753) bm!674754))

(declare-fun m!8019086 () Bool)

(assert (=> bm!674752 m!8019086))

(declare-fun m!8019088 () Bool)

(assert (=> b!7361939 m!8019088))

(declare-fun m!8019090 () Bool)

(assert (=> bm!674754 m!8019090))

(assert (=> start!718786 d!2282242))

(declare-fun bs!1920206 () Bool)

(declare-fun d!2282244 () Bool)

(assert (= bs!1920206 (and d!2282244 b!7361791)))

(declare-fun lambda!457422 () Int)

(assert (=> bs!1920206 (= lambda!457422 lambda!457416)))

(declare-fun forall!18046 (List!71730 Int) Bool)

(assert (=> d!2282244 (= (inv!91426 cWitness!61) (forall!18046 (exprs!8674 cWitness!61) lambda!457422))))

(declare-fun bs!1920207 () Bool)

(assert (= bs!1920207 d!2282244))

(declare-fun m!8019092 () Bool)

(assert (=> bs!1920207 m!8019092))

(assert (=> start!718786 d!2282244))

(declare-fun bs!1920208 () Bool)

(declare-fun d!2282246 () Bool)

(assert (= bs!1920208 (and d!2282246 b!7361791)))

(declare-fun lambda!457423 () Int)

(assert (=> bs!1920208 (= lambda!457423 lambda!457416)))

(declare-fun bs!1920209 () Bool)

(assert (= bs!1920209 (and d!2282246 d!2282244)))

(assert (=> bs!1920209 (= lambda!457423 lambda!457422)))

(assert (=> d!2282246 (= (inv!91426 ct1!282) (forall!18046 (exprs!8674 ct1!282) lambda!457423))))

(declare-fun bs!1920210 () Bool)

(assert (= bs!1920210 d!2282246))

(declare-fun m!8019094 () Bool)

(assert (=> bs!1920210 m!8019094))

(assert (=> start!718786 d!2282246))

(declare-fun bs!1920211 () Bool)

(declare-fun d!2282248 () Bool)

(assert (= bs!1920211 (and d!2282248 b!7361791)))

(declare-fun lambda!457424 () Int)

(assert (=> bs!1920211 (= lambda!457424 lambda!457416)))

(declare-fun bs!1920212 () Bool)

(assert (= bs!1920212 (and d!2282248 d!2282244)))

(assert (=> bs!1920212 (= lambda!457424 lambda!457422)))

(declare-fun bs!1920213 () Bool)

(assert (= bs!1920213 (and d!2282248 d!2282246)))

(assert (=> bs!1920213 (= lambda!457424 lambda!457423)))

(assert (=> d!2282248 (= (inv!91426 ct2!378) (forall!18046 (exprs!8674 ct2!378) lambda!457424))))

(declare-fun bs!1920214 () Bool)

(assert (= bs!1920214 d!2282248))

(declare-fun m!8019096 () Bool)

(assert (=> bs!1920214 m!8019096))

(assert (=> start!718786 d!2282248))

(declare-fun b!7361945 () Bool)

(declare-fun e!4407758 () (Set Context!16348))

(assert (=> b!7361945 (= e!4407758 (as set.empty (Set Context!16348)))))

(declare-fun bm!674755 () Bool)

(declare-fun call!674762 () List!71730)

(declare-fun call!674760 () List!71730)

(assert (=> bm!674755 (= call!674762 call!674760)))

(declare-fun b!7361946 () Bool)

(declare-fun call!674764 () (Set Context!16348))

(assert (=> b!7361946 (= e!4407758 call!674764)))

(declare-fun bm!674756 () Bool)

(declare-fun c!1367886 () Bool)

(declare-fun c!1367885 () Bool)

(assert (=> bm!674756 (= call!674760 ($colon$colon!3222 (exprs!8674 (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378)))) (ite (or c!1367886 c!1367885) (regTwo!38980 r1!2370) r1!2370)))))

(declare-fun b!7361947 () Bool)

(declare-fun e!4407756 () Bool)

(assert (=> b!7361947 (= c!1367886 e!4407756)))

(declare-fun res!2971910 () Bool)

(assert (=> b!7361947 (=> (not res!2971910) (not e!4407756))))

(assert (=> b!7361947 (= res!2971910 (is-Concat!28079 r1!2370))))

(declare-fun e!4407755 () (Set Context!16348))

(declare-fun e!4407754 () (Set Context!16348))

(assert (=> b!7361947 (= e!4407755 e!4407754)))

(declare-fun b!7361948 () Bool)

(declare-fun e!4407753 () (Set Context!16348))

(assert (=> b!7361948 (= e!4407753 e!4407755)))

(declare-fun c!1367884 () Bool)

(assert (=> b!7361948 (= c!1367884 (is-Union!19234 r1!2370))))

(declare-fun b!7361949 () Bool)

(declare-fun c!1367887 () Bool)

(assert (=> b!7361949 (= c!1367887 (is-Star!19234 r1!2370))))

(declare-fun e!4407757 () (Set Context!16348))

(assert (=> b!7361949 (= e!4407757 e!4407758)))

(declare-fun b!7361950 () Bool)

(declare-fun call!674763 () (Set Context!16348))

(declare-fun call!674761 () (Set Context!16348))

(assert (=> b!7361950 (= e!4407754 (set.union call!674763 call!674761))))

(declare-fun d!2282250 () Bool)

(declare-fun c!1367883 () Bool)

(assert (=> d!2282250 (= c!1367883 (and (is-ElementMatch!19234 r1!2370) (= (c!1367838 r1!2370) c!10362)))))

(assert (=> d!2282250 (= (derivationStepZipperDown!3060 r1!2370 (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378))) c!10362) e!4407753)))

(declare-fun b!7361951 () Bool)

(assert (=> b!7361951 (= e!4407753 (set.insert (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378))) (as set.empty (Set Context!16348))))))

(declare-fun b!7361952 () Bool)

(assert (=> b!7361952 (= e!4407754 e!4407757)))

(assert (=> b!7361952 (= c!1367885 (is-Concat!28079 r1!2370))))

(declare-fun b!7361953 () Bool)

(declare-fun call!674765 () (Set Context!16348))

(assert (=> b!7361953 (= e!4407755 (set.union call!674765 call!674763))))

(declare-fun b!7361954 () Bool)

(assert (=> b!7361954 (= e!4407757 call!674764)))

(declare-fun bm!674757 () Bool)

(assert (=> bm!674757 (= call!674764 call!674761)))

(declare-fun bm!674758 () Bool)

(assert (=> bm!674758 (= call!674761 call!674765)))

(declare-fun b!7361955 () Bool)

(assert (=> b!7361955 (= e!4407756 (nullable!8316 (regOne!38980 r1!2370)))))

(declare-fun bm!674759 () Bool)

(assert (=> bm!674759 (= call!674765 (derivationStepZipperDown!3060 (ite c!1367884 (regOne!38981 r1!2370) (ite c!1367886 (regTwo!38980 r1!2370) (ite c!1367885 (regOne!38980 r1!2370) (reg!19563 r1!2370)))) (ite (or c!1367884 c!1367886) (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378))) (Context!16349 call!674762)) c!10362))))

(declare-fun bm!674760 () Bool)

(assert (=> bm!674760 (= call!674763 (derivationStepZipperDown!3060 (ite c!1367884 (regTwo!38981 r1!2370) (regOne!38980 r1!2370)) (ite c!1367884 (Context!16349 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378))) (Context!16349 call!674760)) c!10362))))

(assert (= (and d!2282250 c!1367883) b!7361951))

(assert (= (and d!2282250 (not c!1367883)) b!7361948))

(assert (= (and b!7361948 c!1367884) b!7361953))

(assert (= (and b!7361948 (not c!1367884)) b!7361947))

(assert (= (and b!7361947 res!2971910) b!7361955))

(assert (= (and b!7361947 c!1367886) b!7361950))

(assert (= (and b!7361947 (not c!1367886)) b!7361952))

(assert (= (and b!7361952 c!1367885) b!7361954))

(assert (= (and b!7361952 (not c!1367885)) b!7361949))

(assert (= (and b!7361949 c!1367887) b!7361946))

(assert (= (and b!7361949 (not c!1367887)) b!7361945))

(assert (= (or b!7361954 b!7361946) bm!674755))

(assert (= (or b!7361954 b!7361946) bm!674757))

(assert (= (or b!7361950 bm!674757) bm!674758))

(assert (= (or b!7361950 bm!674755) bm!674756))

(assert (= (or b!7361953 b!7361950) bm!674760))

(assert (= (or b!7361953 bm!674758) bm!674759))

(declare-fun m!8019098 () Bool)

(assert (=> bm!674760 m!8019098))

(assert (=> b!7361955 m!8019056))

(declare-fun m!8019100 () Bool)

(assert (=> bm!674756 m!8019100))

(declare-fun m!8019102 () Bool)

(assert (=> bm!674759 m!8019102))

(declare-fun m!8019104 () Bool)

(assert (=> b!7361951 m!8019104))

(assert (=> b!7361791 d!2282250))

(declare-fun b!7361977 () Bool)

(declare-fun res!2971916 () Bool)

(declare-fun e!4407769 () Bool)

(assert (=> b!7361977 (=> (not res!2971916) (not e!4407769))))

(declare-fun lt!2614074 () List!71730)

(declare-fun size!42101 (List!71730) Int)

(assert (=> b!7361977 (= res!2971916 (= (size!42101 lt!2614074) (+ (size!42101 (exprs!8674 ct1!282)) (size!42101 (exprs!8674 ct2!378)))))))

(declare-fun b!7361976 () Bool)

(declare-fun e!4407770 () List!71730)

(assert (=> b!7361976 (= e!4407770 (Cons!71606 (h!78054 (exprs!8674 ct1!282)) (++!17050 (t!386179 (exprs!8674 ct1!282)) (exprs!8674 ct2!378))))))

(declare-fun b!7361978 () Bool)

(assert (=> b!7361978 (= e!4407769 (or (not (= (exprs!8674 ct2!378) Nil!71606)) (= lt!2614074 (exprs!8674 ct1!282))))))

(declare-fun b!7361975 () Bool)

(assert (=> b!7361975 (= e!4407770 (exprs!8674 ct2!378))))

(declare-fun d!2282252 () Bool)

(assert (=> d!2282252 e!4407769))

(declare-fun res!2971917 () Bool)

(assert (=> d!2282252 (=> (not res!2971917) (not e!4407769))))

(declare-fun content!15123 (List!71730) (Set Regex!19234))

(assert (=> d!2282252 (= res!2971917 (= (content!15123 lt!2614074) (set.union (content!15123 (exprs!8674 ct1!282)) (content!15123 (exprs!8674 ct2!378)))))))

(assert (=> d!2282252 (= lt!2614074 e!4407770)))

(declare-fun c!1367895 () Bool)

(assert (=> d!2282252 (= c!1367895 (is-Nil!71606 (exprs!8674 ct1!282)))))

(assert (=> d!2282252 (= (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378)) lt!2614074)))

(assert (= (and d!2282252 c!1367895) b!7361975))

(assert (= (and d!2282252 (not c!1367895)) b!7361976))

(assert (= (and d!2282252 res!2971917) b!7361977))

(assert (= (and b!7361977 res!2971916) b!7361978))

(declare-fun m!8019112 () Bool)

(assert (=> b!7361977 m!8019112))

(declare-fun m!8019114 () Bool)

(assert (=> b!7361977 m!8019114))

(declare-fun m!8019118 () Bool)

(assert (=> b!7361977 m!8019118))

(declare-fun m!8019120 () Bool)

(assert (=> b!7361976 m!8019120))

(declare-fun m!8019122 () Bool)

(assert (=> d!2282252 m!8019122))

(declare-fun m!8019126 () Bool)

(assert (=> d!2282252 m!8019126))

(declare-fun m!8019128 () Bool)

(assert (=> d!2282252 m!8019128))

(assert (=> b!7361791 d!2282252))

(declare-fun d!2282254 () Bool)

(assert (=> d!2282254 (forall!18046 (++!17050 (exprs!8674 ct1!282) (exprs!8674 ct2!378)) lambda!457416)))

(declare-fun lt!2614077 () Unit!165417)

(declare-fun choose!57254 (List!71730 List!71730 Int) Unit!165417)

(assert (=> d!2282254 (= lt!2614077 (choose!57254 (exprs!8674 ct1!282) (exprs!8674 ct2!378) lambda!457416))))

(assert (=> d!2282254 (forall!18046 (exprs!8674 ct1!282) lambda!457416)))

(assert (=> d!2282254 (= (lemmaConcatPreservesForall!1907 (exprs!8674 ct1!282) (exprs!8674 ct2!378) lambda!457416) lt!2614077)))

(declare-fun bs!1920215 () Bool)

(assert (= bs!1920215 d!2282254))

(assert (=> bs!1920215 m!8019018))

(assert (=> bs!1920215 m!8019018))

(declare-fun m!8019130 () Bool)

(assert (=> bs!1920215 m!8019130))

(declare-fun m!8019132 () Bool)

(assert (=> bs!1920215 m!8019132))

(declare-fun m!8019134 () Bool)

(assert (=> bs!1920215 m!8019134))

(assert (=> b!7361791 d!2282254))

(declare-fun b!7361989 () Bool)

(declare-fun e!4407773 () Bool)

(assert (=> b!7361989 (= e!4407773 tp_is_empty!48713)))

(declare-fun b!7361991 () Bool)

(declare-fun tp!2092038 () Bool)

(assert (=> b!7361991 (= e!4407773 tp!2092038)))

(assert (=> b!7361790 (= tp!2091996 e!4407773)))

(declare-fun b!7361990 () Bool)

(declare-fun tp!2092040 () Bool)

(declare-fun tp!2092041 () Bool)

(assert (=> b!7361990 (= e!4407773 (and tp!2092040 tp!2092041))))

(declare-fun b!7361992 () Bool)

(declare-fun tp!2092039 () Bool)

(declare-fun tp!2092042 () Bool)

(assert (=> b!7361992 (= e!4407773 (and tp!2092039 tp!2092042))))

(assert (= (and b!7361790 (is-ElementMatch!19234 (regOne!38981 r1!2370))) b!7361989))

(assert (= (and b!7361790 (is-Concat!28079 (regOne!38981 r1!2370))) b!7361990))

(assert (= (and b!7361790 (is-Star!19234 (regOne!38981 r1!2370))) b!7361991))

(assert (= (and b!7361790 (is-Union!19234 (regOne!38981 r1!2370))) b!7361992))

(declare-fun b!7361993 () Bool)

(declare-fun e!4407774 () Bool)

(assert (=> b!7361993 (= e!4407774 tp_is_empty!48713)))

(declare-fun b!7361995 () Bool)

(declare-fun tp!2092043 () Bool)

(assert (=> b!7361995 (= e!4407774 tp!2092043)))

(assert (=> b!7361790 (= tp!2092003 e!4407774)))

(declare-fun b!7361994 () Bool)

(declare-fun tp!2092045 () Bool)

(declare-fun tp!2092046 () Bool)

(assert (=> b!7361994 (= e!4407774 (and tp!2092045 tp!2092046))))

(declare-fun b!7361996 () Bool)

(declare-fun tp!2092044 () Bool)

(declare-fun tp!2092047 () Bool)

(assert (=> b!7361996 (= e!4407774 (and tp!2092044 tp!2092047))))

(assert (= (and b!7361790 (is-ElementMatch!19234 (regTwo!38981 r1!2370))) b!7361993))

(assert (= (and b!7361790 (is-Concat!28079 (regTwo!38981 r1!2370))) b!7361994))

(assert (= (and b!7361790 (is-Star!19234 (regTwo!38981 r1!2370))) b!7361995))

(assert (= (and b!7361790 (is-Union!19234 (regTwo!38981 r1!2370))) b!7361996))

(declare-fun b!7362001 () Bool)

(declare-fun e!4407777 () Bool)

(declare-fun tp!2092052 () Bool)

(declare-fun tp!2092053 () Bool)

(assert (=> b!7362001 (= e!4407777 (and tp!2092052 tp!2092053))))

(assert (=> b!7361795 (= tp!2091998 e!4407777)))

(assert (= (and b!7361795 (is-Cons!71606 (exprs!8674 ct2!378))) b!7362001))

(declare-fun b!7362002 () Bool)

(declare-fun e!4407778 () Bool)

(declare-fun tp!2092054 () Bool)

(declare-fun tp!2092055 () Bool)

(assert (=> b!7362002 (= e!4407778 (and tp!2092054 tp!2092055))))

(assert (=> b!7361784 (= tp!2092001 e!4407778)))

(assert (= (and b!7361784 (is-Cons!71606 (exprs!8674 ct1!282))) b!7362002))

(declare-fun b!7362003 () Bool)

(declare-fun e!4407779 () Bool)

(assert (=> b!7362003 (= e!4407779 tp_is_empty!48713)))

(declare-fun b!7362005 () Bool)

(declare-fun tp!2092056 () Bool)

(assert (=> b!7362005 (= e!4407779 tp!2092056)))

(assert (=> b!7361789 (= tp!2091997 e!4407779)))

(declare-fun b!7362004 () Bool)

(declare-fun tp!2092058 () Bool)

(declare-fun tp!2092059 () Bool)

(assert (=> b!7362004 (= e!4407779 (and tp!2092058 tp!2092059))))

(declare-fun b!7362006 () Bool)

(declare-fun tp!2092057 () Bool)

(declare-fun tp!2092060 () Bool)

(assert (=> b!7362006 (= e!4407779 (and tp!2092057 tp!2092060))))

(assert (= (and b!7361789 (is-ElementMatch!19234 (reg!19563 r1!2370))) b!7362003))

(assert (= (and b!7361789 (is-Concat!28079 (reg!19563 r1!2370))) b!7362004))

(assert (= (and b!7361789 (is-Star!19234 (reg!19563 r1!2370))) b!7362005))

(assert (= (and b!7361789 (is-Union!19234 (reg!19563 r1!2370))) b!7362006))

(declare-fun b!7362007 () Bool)

(declare-fun e!4407780 () Bool)

(assert (=> b!7362007 (= e!4407780 tp_is_empty!48713)))

(declare-fun b!7362009 () Bool)

(declare-fun tp!2092061 () Bool)

(assert (=> b!7362009 (= e!4407780 tp!2092061)))

(assert (=> b!7361786 (= tp!2092000 e!4407780)))

(declare-fun b!7362008 () Bool)

(declare-fun tp!2092063 () Bool)

(declare-fun tp!2092064 () Bool)

(assert (=> b!7362008 (= e!4407780 (and tp!2092063 tp!2092064))))

(declare-fun b!7362010 () Bool)

(declare-fun tp!2092062 () Bool)

(declare-fun tp!2092065 () Bool)

(assert (=> b!7362010 (= e!4407780 (and tp!2092062 tp!2092065))))

(assert (= (and b!7361786 (is-ElementMatch!19234 (regOne!38980 r1!2370))) b!7362007))

(assert (= (and b!7361786 (is-Concat!28079 (regOne!38980 r1!2370))) b!7362008))

(assert (= (and b!7361786 (is-Star!19234 (regOne!38980 r1!2370))) b!7362009))

(assert (= (and b!7361786 (is-Union!19234 (regOne!38980 r1!2370))) b!7362010))

(declare-fun b!7362015 () Bool)

(declare-fun e!4407782 () Bool)

(assert (=> b!7362015 (= e!4407782 tp_is_empty!48713)))

(declare-fun b!7362017 () Bool)

(declare-fun tp!2092066 () Bool)

(assert (=> b!7362017 (= e!4407782 tp!2092066)))

(assert (=> b!7361786 (= tp!2091999 e!4407782)))

(declare-fun b!7362016 () Bool)

(declare-fun tp!2092068 () Bool)

(declare-fun tp!2092069 () Bool)

(assert (=> b!7362016 (= e!4407782 (and tp!2092068 tp!2092069))))

(declare-fun b!7362018 () Bool)

(declare-fun tp!2092067 () Bool)

(declare-fun tp!2092070 () Bool)

(assert (=> b!7362018 (= e!4407782 (and tp!2092067 tp!2092070))))

(assert (= (and b!7361786 (is-ElementMatch!19234 (regTwo!38980 r1!2370))) b!7362015))

(assert (= (and b!7361786 (is-Concat!28079 (regTwo!38980 r1!2370))) b!7362016))

(assert (= (and b!7361786 (is-Star!19234 (regTwo!38980 r1!2370))) b!7362017))

(assert (= (and b!7361786 (is-Union!19234 (regTwo!38980 r1!2370))) b!7362018))

(declare-fun b!7362019 () Bool)

(declare-fun e!4407784 () Bool)

(declare-fun tp!2092071 () Bool)

(declare-fun tp!2092072 () Bool)

(assert (=> b!7362019 (= e!4407784 (and tp!2092071 tp!2092072))))

(assert (=> b!7361792 (= tp!2092002 e!4407784)))

(assert (= (and b!7361792 (is-Cons!71606 (exprs!8674 cWitness!61))) b!7362019))

(push 1)

(assert (not bm!674714))

(assert (not b!7361991))

(assert (not bm!674747))

(assert (not bm!674756))

(assert (not d!2282252))

(assert (not d!2282244))

(assert (not bm!674754))

(assert (not bm!674760))

(assert (not d!2282248))

(assert (not bm!674752))

(assert (not b!7361977))

(assert (not bm!674759))

(assert (not b!7361930))

(assert tp_is_empty!48713)

(assert (not b!7362006))

(assert (not b!7361992))

(assert (not bm!674723))

(assert (not bm!674730))

(assert (not b!7361996))

(assert (not b!7361886))

(assert (not b!7361939))

(assert (not b!7362016))

(assert (not bm!674724))

(assert (not b!7362017))

(assert (not d!2282246))

(assert (not b!7362019))

(assert (not b!7361955))

(assert (not b!7361994))

(assert (not b!7361875))

(assert (not b!7362002))

(assert (not bm!674720))

(assert (not bm!674749))

(assert (not b!7362009))

(assert (not b!7362010))

(assert (not b!7361995))

(assert (not b!7361864))

(assert (not b!7361990))

(assert (not bm!674726))

(assert (not b!7362018))

(assert (not bm!674729))

(assert (not b!7362005))

(assert (not b!7362001))

(assert (not b!7362004))

(assert (not b!7362008))

(assert (not d!2282254))

(assert (not bm!674718))

(assert (not bm!674717))

(assert (not b!7361976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

