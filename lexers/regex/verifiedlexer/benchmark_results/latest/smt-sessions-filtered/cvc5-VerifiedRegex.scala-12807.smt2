; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707820 () Bool)

(assert start!707820)

(declare-fun b!7262097 () Bool)

(declare-fun e!4354812 () Bool)

(declare-fun tp_is_empty!46909 () Bool)

(declare-fun tp!2039466 () Bool)

(assert (=> b!7262097 (= e!4354812 (and tp_is_empty!46909 tp!2039466))))

(declare-fun b!7262098 () Bool)

(declare-fun e!4354810 () Bool)

(declare-fun tp!2039467 () Bool)

(assert (=> b!7262098 (= e!4354810 tp!2039467)))

(declare-datatypes ((C!37718 0))(
  ( (C!37719 (val!28807 Int)) )
))
(declare-datatypes ((Regex!18722 0))(
  ( (ElementMatch!18722 (c!1351002 C!37718)) (Concat!27567 (regOne!37956 Regex!18722) (regTwo!37956 Regex!18722)) (EmptyExpr!18722) (Star!18722 (reg!19051 Regex!18722)) (EmptyLang!18722) (Union!18722 (regOne!37957 Regex!18722) (regTwo!37957 Regex!18722)) )
))
(declare-datatypes ((List!70745 0))(
  ( (Nil!70621) (Cons!70621 (h!77069 Regex!18722) (t!384811 List!70745)) )
))
(declare-datatypes ((Context!15324 0))(
  ( (Context!15325 (exprs!8162 List!70745)) )
))
(declare-datatypes ((List!70746 0))(
  ( (Nil!70622) (Cons!70622 (h!77070 Context!15324) (t!384812 List!70746)) )
))
(declare-fun zl!1658 () List!70746)

(declare-fun b!7262099 () Bool)

(declare-fun e!4354811 () Bool)

(declare-fun tp!2039465 () Bool)

(declare-fun inv!89816 (Context!15324) Bool)

(assert (=> b!7262099 (= e!4354811 (and (inv!89816 (h!77070 zl!1658)) e!4354810 tp!2039465))))

(declare-fun b!7262100 () Bool)

(declare-fun lt!2591127 () Bool)

(declare-fun lt!2591125 () (Set Context!15324))

(declare-fun lt!2591124 () Bool)

(declare-fun e!4354814 () Bool)

(assert (=> b!7262100 (= e!4354814 (not (or (not lt!2591124) (not lt!2591127) (set.member (h!77070 zl!1658) lt!2591125))))))

(declare-fun lt!2591122 () Bool)

(assert (=> b!7262100 (= lt!2591122 lt!2591124)))

(declare-fun e!4354813 () Bool)

(assert (=> b!7262100 (= lt!2591124 e!4354813)))

(declare-fun res!2944418 () Bool)

(assert (=> b!7262100 (=> res!2944418 e!4354813)))

(assert (=> b!7262100 (= res!2944418 lt!2591127)))

(declare-fun lt!2591126 () (Set Context!15324))

(declare-fun lt!2591128 () (Set Context!15324))

(declare-datatypes ((List!70747 0))(
  ( (Nil!70623) (Cons!70623 (h!77071 C!37718) (t!384813 List!70747)) )
))
(declare-fun s!7887 () List!70747)

(declare-fun matchZipper!3626 ((Set Context!15324) List!70747) Bool)

(assert (=> b!7262100 (= lt!2591122 (matchZipper!3626 (set.union lt!2591128 lt!2591126) s!7887))))

(assert (=> b!7262100 (= lt!2591127 (matchZipper!3626 lt!2591128 s!7887))))

(declare-datatypes ((Unit!164066 0))(
  ( (Unit!164067) )
))
(declare-fun lt!2591123 () Unit!164066)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1763 ((Set Context!15324) (Set Context!15324) List!70747) Unit!164066)

(assert (=> b!7262100 (= lt!2591123 (lemmaZipperConcatMatchesSameAsBothZippers!1763 lt!2591128 lt!2591126 s!7887))))

(declare-fun content!14716 (List!70746) (Set Context!15324))

(assert (=> b!7262100 (= lt!2591126 (content!14716 (t!384812 zl!1658)))))

(assert (=> b!7262100 (= lt!2591128 (set.insert (h!77070 zl!1658) (as set.empty (Set Context!15324))))))

(declare-fun b!7262101 () Bool)

(assert (=> b!7262101 (= e!4354813 (matchZipper!3626 lt!2591126 s!7887))))

(declare-fun b!7262096 () Bool)

(declare-fun res!2944419 () Bool)

(assert (=> b!7262096 (=> (not res!2944419) (not e!4354814))))

(assert (=> b!7262096 (= res!2944419 (is-Cons!70622 zl!1658))))

(declare-fun res!2944420 () Bool)

(assert (=> start!707820 (=> (not res!2944420) (not e!4354814))))

(assert (=> start!707820 (= res!2944420 (matchZipper!3626 lt!2591125 s!7887))))

(assert (=> start!707820 (= lt!2591125 (content!14716 zl!1658))))

(assert (=> start!707820 e!4354814))

(assert (=> start!707820 e!4354811))

(assert (=> start!707820 e!4354812))

(assert (= (and start!707820 res!2944420) b!7262096))

(assert (= (and b!7262096 res!2944419) b!7262100))

(assert (= (and b!7262100 (not res!2944418)) b!7262101))

(assert (= b!7262099 b!7262098))

(assert (= (and start!707820 (is-Cons!70622 zl!1658)) b!7262099))

(assert (= (and start!707820 (is-Cons!70623 s!7887)) b!7262097))

(declare-fun m!7946634 () Bool)

(assert (=> b!7262099 m!7946634))

(declare-fun m!7946636 () Bool)

(assert (=> b!7262100 m!7946636))

(declare-fun m!7946638 () Bool)

(assert (=> b!7262100 m!7946638))

(declare-fun m!7946640 () Bool)

(assert (=> b!7262100 m!7946640))

(declare-fun m!7946642 () Bool)

(assert (=> b!7262100 m!7946642))

(declare-fun m!7946644 () Bool)

(assert (=> b!7262100 m!7946644))

(declare-fun m!7946646 () Bool)

(assert (=> b!7262100 m!7946646))

(declare-fun m!7946648 () Bool)

(assert (=> b!7262101 m!7946648))

(declare-fun m!7946650 () Bool)

(assert (=> start!707820 m!7946650))

(declare-fun m!7946652 () Bool)

(assert (=> start!707820 m!7946652))

(push 1)

(assert (not b!7262097))

(assert tp_is_empty!46909)

(assert (not b!7262099))

(assert (not b!7262098))

(assert (not b!7262100))

(assert (not b!7262101))

(assert (not start!707820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259256 () Bool)

(declare-fun c!1351008 () Bool)

(declare-fun isEmpty!40617 (List!70747) Bool)

(assert (=> d!2259256 (= c!1351008 (isEmpty!40617 s!7887))))

(declare-fun e!4354834 () Bool)

(assert (=> d!2259256 (= (matchZipper!3626 lt!2591126 s!7887) e!4354834)))

(declare-fun b!7262128 () Bool)

(declare-fun nullableZipper!2951 ((Set Context!15324)) Bool)

(assert (=> b!7262128 (= e!4354834 (nullableZipper!2951 lt!2591126))))

(declare-fun b!7262129 () Bool)

(declare-fun derivationStepZipper!3477 ((Set Context!15324) C!37718) (Set Context!15324))

(declare-fun head!14950 (List!70747) C!37718)

(declare-fun tail!14409 (List!70747) List!70747)

(assert (=> b!7262129 (= e!4354834 (matchZipper!3626 (derivationStepZipper!3477 lt!2591126 (head!14950 s!7887)) (tail!14409 s!7887)))))

(assert (= (and d!2259256 c!1351008) b!7262128))

(assert (= (and d!2259256 (not c!1351008)) b!7262129))

(declare-fun m!7946674 () Bool)

(assert (=> d!2259256 m!7946674))

(declare-fun m!7946676 () Bool)

(assert (=> b!7262128 m!7946676))

(declare-fun m!7946678 () Bool)

(assert (=> b!7262129 m!7946678))

(assert (=> b!7262129 m!7946678))

(declare-fun m!7946680 () Bool)

(assert (=> b!7262129 m!7946680))

(declare-fun m!7946682 () Bool)

(assert (=> b!7262129 m!7946682))

(assert (=> b!7262129 m!7946680))

(assert (=> b!7262129 m!7946682))

(declare-fun m!7946684 () Bool)

(assert (=> b!7262129 m!7946684))

(assert (=> b!7262101 d!2259256))

(declare-fun d!2259260 () Bool)

(declare-fun c!1351010 () Bool)

(assert (=> d!2259260 (= c!1351010 (isEmpty!40617 s!7887))))

(declare-fun e!4354836 () Bool)

(assert (=> d!2259260 (= (matchZipper!3626 lt!2591125 s!7887) e!4354836)))

(declare-fun b!7262132 () Bool)

(assert (=> b!7262132 (= e!4354836 (nullableZipper!2951 lt!2591125))))

(declare-fun b!7262133 () Bool)

(assert (=> b!7262133 (= e!4354836 (matchZipper!3626 (derivationStepZipper!3477 lt!2591125 (head!14950 s!7887)) (tail!14409 s!7887)))))

(assert (= (and d!2259260 c!1351010) b!7262132))

(assert (= (and d!2259260 (not c!1351010)) b!7262133))

(assert (=> d!2259260 m!7946674))

(declare-fun m!7946688 () Bool)

(assert (=> b!7262132 m!7946688))

(assert (=> b!7262133 m!7946678))

(assert (=> b!7262133 m!7946678))

(declare-fun m!7946694 () Bool)

(assert (=> b!7262133 m!7946694))

(assert (=> b!7262133 m!7946682))

(assert (=> b!7262133 m!7946694))

(assert (=> b!7262133 m!7946682))

(declare-fun m!7946700 () Bool)

(assert (=> b!7262133 m!7946700))

(assert (=> start!707820 d!2259260))

(declare-fun d!2259262 () Bool)

(declare-fun c!1351014 () Bool)

(assert (=> d!2259262 (= c!1351014 (is-Nil!70622 zl!1658))))

(declare-fun e!4354840 () (Set Context!15324))

(assert (=> d!2259262 (= (content!14716 zl!1658) e!4354840)))

(declare-fun b!7262140 () Bool)

(assert (=> b!7262140 (= e!4354840 (as set.empty (Set Context!15324)))))

(declare-fun b!7262141 () Bool)

(assert (=> b!7262141 (= e!4354840 (set.union (set.insert (h!77070 zl!1658) (as set.empty (Set Context!15324))) (content!14716 (t!384812 zl!1658))))))

(assert (= (and d!2259262 c!1351014) b!7262140))

(assert (= (and d!2259262 (not c!1351014)) b!7262141))

(assert (=> b!7262141 m!7946640))

(assert (=> b!7262141 m!7946642))

(assert (=> start!707820 d!2259262))

(declare-fun d!2259268 () Bool)

(declare-fun c!1351015 () Bool)

(assert (=> d!2259268 (= c!1351015 (isEmpty!40617 s!7887))))

(declare-fun e!4354841 () Bool)

(assert (=> d!2259268 (= (matchZipper!3626 (set.union lt!2591128 lt!2591126) s!7887) e!4354841)))

(declare-fun b!7262142 () Bool)

(assert (=> b!7262142 (= e!4354841 (nullableZipper!2951 (set.union lt!2591128 lt!2591126)))))

(declare-fun b!7262143 () Bool)

(assert (=> b!7262143 (= e!4354841 (matchZipper!3626 (derivationStepZipper!3477 (set.union lt!2591128 lt!2591126) (head!14950 s!7887)) (tail!14409 s!7887)))))

(assert (= (and d!2259268 c!1351015) b!7262142))

(assert (= (and d!2259268 (not c!1351015)) b!7262143))

(assert (=> d!2259268 m!7946674))

(declare-fun m!7946710 () Bool)

(assert (=> b!7262142 m!7946710))

(assert (=> b!7262143 m!7946678))

(assert (=> b!7262143 m!7946678))

(declare-fun m!7946712 () Bool)

(assert (=> b!7262143 m!7946712))

(assert (=> b!7262143 m!7946682))

(assert (=> b!7262143 m!7946712))

(assert (=> b!7262143 m!7946682))

(declare-fun m!7946714 () Bool)

(assert (=> b!7262143 m!7946714))

(assert (=> b!7262100 d!2259268))

(declare-fun d!2259270 () Bool)

(declare-fun c!1351016 () Bool)

(assert (=> d!2259270 (= c!1351016 (isEmpty!40617 s!7887))))

(declare-fun e!4354842 () Bool)

(assert (=> d!2259270 (= (matchZipper!3626 lt!2591128 s!7887) e!4354842)))

(declare-fun b!7262144 () Bool)

(assert (=> b!7262144 (= e!4354842 (nullableZipper!2951 lt!2591128))))

(declare-fun b!7262145 () Bool)

(assert (=> b!7262145 (= e!4354842 (matchZipper!3626 (derivationStepZipper!3477 lt!2591128 (head!14950 s!7887)) (tail!14409 s!7887)))))

(assert (= (and d!2259270 c!1351016) b!7262144))

(assert (= (and d!2259270 (not c!1351016)) b!7262145))

(assert (=> d!2259270 m!7946674))

(declare-fun m!7946716 () Bool)

(assert (=> b!7262144 m!7946716))

(assert (=> b!7262145 m!7946678))

(assert (=> b!7262145 m!7946678))

(declare-fun m!7946718 () Bool)

(assert (=> b!7262145 m!7946718))

(assert (=> b!7262145 m!7946682))

(assert (=> b!7262145 m!7946718))

(assert (=> b!7262145 m!7946682))

(declare-fun m!7946720 () Bool)

(assert (=> b!7262145 m!7946720))

(assert (=> b!7262100 d!2259270))

(declare-fun e!4354851 () Bool)

(declare-fun d!2259272 () Bool)

(assert (=> d!2259272 (= (matchZipper!3626 (set.union lt!2591128 lt!2591126) s!7887) e!4354851)))

(declare-fun res!2944435 () Bool)

(assert (=> d!2259272 (=> res!2944435 e!4354851)))

(assert (=> d!2259272 (= res!2944435 (matchZipper!3626 lt!2591128 s!7887))))

(declare-fun lt!2591155 () Unit!164066)

(declare-fun choose!56239 ((Set Context!15324) (Set Context!15324) List!70747) Unit!164066)

(assert (=> d!2259272 (= lt!2591155 (choose!56239 lt!2591128 lt!2591126 s!7887))))

(assert (=> d!2259272 (= (lemmaZipperConcatMatchesSameAsBothZippers!1763 lt!2591128 lt!2591126 s!7887) lt!2591155)))

(declare-fun b!7262157 () Bool)

(assert (=> b!7262157 (= e!4354851 (matchZipper!3626 lt!2591126 s!7887))))

(assert (= (and d!2259272 (not res!2944435)) b!7262157))

(assert (=> d!2259272 m!7946638))

(assert (=> d!2259272 m!7946636))

(declare-fun m!7946728 () Bool)

(assert (=> d!2259272 m!7946728))

(assert (=> b!7262157 m!7946648))

(assert (=> b!7262100 d!2259272))

(declare-fun d!2259278 () Bool)

(declare-fun c!1351020 () Bool)

(assert (=> d!2259278 (= c!1351020 (is-Nil!70622 (t!384812 zl!1658)))))

(declare-fun e!4354852 () (Set Context!15324))

(assert (=> d!2259278 (= (content!14716 (t!384812 zl!1658)) e!4354852)))

(declare-fun b!7262158 () Bool)

(assert (=> b!7262158 (= e!4354852 (as set.empty (Set Context!15324)))))

(declare-fun b!7262159 () Bool)

(assert (=> b!7262159 (= e!4354852 (set.union (set.insert (h!77070 (t!384812 zl!1658)) (as set.empty (Set Context!15324))) (content!14716 (t!384812 (t!384812 zl!1658)))))))

(assert (= (and d!2259278 c!1351020) b!7262158))

(assert (= (and d!2259278 (not c!1351020)) b!7262159))

(declare-fun m!7946730 () Bool)

(assert (=> b!7262159 m!7946730))

(declare-fun m!7946732 () Bool)

(assert (=> b!7262159 m!7946732))

(assert (=> b!7262100 d!2259278))

(declare-fun d!2259280 () Bool)

(declare-fun lambda!446738 () Int)

(declare-fun forall!17565 (List!70745 Int) Bool)

(assert (=> d!2259280 (= (inv!89816 (h!77070 zl!1658)) (forall!17565 (exprs!8162 (h!77070 zl!1658)) lambda!446738))))

(declare-fun bs!1909501 () Bool)

(assert (= bs!1909501 d!2259280))

(declare-fun m!7946734 () Bool)

(assert (=> bs!1909501 m!7946734))

(assert (=> b!7262099 d!2259280))

(declare-fun b!7262164 () Bool)

(declare-fun e!4354855 () Bool)

(declare-fun tp!2039479 () Bool)

(assert (=> b!7262164 (= e!4354855 (and tp_is_empty!46909 tp!2039479))))

(assert (=> b!7262097 (= tp!2039466 e!4354855)))

(assert (= (and b!7262097 (is-Cons!70623 (t!384813 s!7887))) b!7262164))

(declare-fun b!7262169 () Bool)

(declare-fun e!4354858 () Bool)

(declare-fun tp!2039484 () Bool)

(declare-fun tp!2039485 () Bool)

(assert (=> b!7262169 (= e!4354858 (and tp!2039484 tp!2039485))))

(assert (=> b!7262098 (= tp!2039467 e!4354858)))

(assert (= (and b!7262098 (is-Cons!70621 (exprs!8162 (h!77070 zl!1658)))) b!7262169))

(declare-fun b!7262177 () Bool)

(declare-fun e!4354864 () Bool)

(declare-fun tp!2039490 () Bool)

(assert (=> b!7262177 (= e!4354864 tp!2039490)))

(declare-fun e!4354863 () Bool)

(declare-fun b!7262176 () Bool)

(declare-fun tp!2039491 () Bool)

(assert (=> b!7262176 (= e!4354863 (and (inv!89816 (h!77070 (t!384812 zl!1658))) e!4354864 tp!2039491))))

(assert (=> b!7262099 (= tp!2039465 e!4354863)))

(assert (= b!7262176 b!7262177))

(assert (= (and b!7262099 (is-Cons!70622 (t!384812 zl!1658))) b!7262176))

(declare-fun m!7946736 () Bool)

(assert (=> b!7262176 m!7946736))

(push 1)

(assert (not b!7262142))

(assert (not d!2259270))

(assert (not b!7262141))

(assert (not b!7262132))

(assert (not d!2259280))

(assert (not b!7262176))

(assert (not d!2259268))

(assert (not b!7262159))

(assert (not b!7262164))

(assert (not b!7262133))

(assert (not b!7262128))

(assert (not b!7262143))

(assert tp_is_empty!46909)

(assert (not b!7262144))

(assert (not b!7262145))

(assert (not b!7262129))

(assert (not b!7262177))

(assert (not d!2259256))

(assert (not b!7262169))

(assert (not d!2259260))

(assert (not b!7262157))

(assert (not d!2259272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

