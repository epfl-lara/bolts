; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667946 () Bool)

(assert start!667946)

(declare-fun b!6961722 () Bool)

(declare-fun res!2840598 () Bool)

(declare-fun e!4185681 () Bool)

(assert (=> b!6961722 (=> res!2840598 e!4185681)))

(declare-datatypes ((C!34448 0))(
  ( (C!34449 (val!26926 Int)) )
))
(declare-datatypes ((Regex!17089 0))(
  ( (ElementMatch!17089 (c!1290847 C!34448)) (Concat!25934 (regOne!34690 Regex!17089) (regTwo!34690 Regex!17089)) (EmptyExpr!17089) (Star!17089 (reg!17418 Regex!17089)) (EmptyLang!17089) (Union!17089 (regOne!34691 Regex!17089) (regTwo!34691 Regex!17089)) )
))
(declare-datatypes ((List!66863 0))(
  ( (Nil!66739) (Cons!66739 (h!73187 Regex!17089) (t!380606 List!66863)) )
))
(declare-fun l!9142 () List!66863)

(declare-fun isEmpty!38960 (List!66863) Bool)

(assert (=> b!6961722 (= res!2840598 (isEmpty!38960 l!9142))))

(declare-fun b!6961723 () Bool)

(declare-fun res!2840595 () Bool)

(assert (=> b!6961723 (=> res!2840595 e!4185681)))

(declare-fun tail!13041 (List!66863) List!66863)

(assert (=> b!6961723 (= res!2840595 (isEmpty!38960 (tail!13041 l!9142)))))

(declare-fun res!2840593 () Bool)

(declare-fun e!4185680 () Bool)

(assert (=> start!667946 (=> (not res!2840593) (not e!4185680))))

(declare-fun lambda!397200 () Int)

(declare-fun forall!15960 (List!66863 Int) Bool)

(assert (=> start!667946 (= res!2840593 (forall!15960 l!9142 lambda!397200))))

(assert (=> start!667946 e!4185680))

(declare-fun e!4185682 () Bool)

(assert (=> start!667946 e!4185682))

(declare-fun e!4185679 () Bool)

(assert (=> start!667946 e!4185679))

(declare-fun e!4185678 () Bool)

(assert (=> start!667946 e!4185678))

(declare-fun b!6961724 () Bool)

(declare-fun tp_is_empty!43403 () Bool)

(assert (=> b!6961724 (= e!4185679 tp_is_empty!43403)))

(declare-fun b!6961725 () Bool)

(declare-fun tp!1919466 () Bool)

(declare-fun tp!1919468 () Bool)

(assert (=> b!6961725 (= e!4185679 (and tp!1919466 tp!1919468))))

(declare-fun b!6961726 () Bool)

(declare-fun tp!1919467 () Bool)

(assert (=> b!6961726 (= e!4185679 tp!1919467)))

(declare-fun b!6961727 () Bool)

(declare-fun tp!1919464 () Bool)

(declare-fun tp!1919469 () Bool)

(assert (=> b!6961727 (= e!4185679 (and tp!1919464 tp!1919469))))

(declare-fun b!6961728 () Bool)

(declare-fun r!13765 () Regex!17089)

(declare-fun validRegex!8785 (Regex!17089) Bool)

(assert (=> b!6961728 (= e!4185681 (validRegex!8785 (regTwo!34691 r!13765)))))

(declare-fun b!6961729 () Bool)

(declare-fun res!2840597 () Bool)

(assert (=> b!6961729 (=> res!2840597 e!4185681)))

(declare-datatypes ((List!66864 0))(
  ( (Nil!66740) (Cons!66740 (h!73188 C!34448) (t!380607 List!66864)) )
))
(declare-fun s!9351 () List!66864)

(declare-fun matchRSpec!4110 (Regex!17089 List!66864) Bool)

(assert (=> b!6961729 (= res!2840597 (matchRSpec!4110 (regOne!34691 r!13765) s!9351))))

(declare-fun b!6961730 () Bool)

(declare-fun tp!1919463 () Bool)

(declare-fun tp!1919462 () Bool)

(assert (=> b!6961730 (= e!4185682 (and tp!1919463 tp!1919462))))

(declare-fun b!6961731 () Bool)

(declare-fun tp!1919465 () Bool)

(assert (=> b!6961731 (= e!4185678 (and tp_is_empty!43403 tp!1919465))))

(declare-fun b!6961732 () Bool)

(declare-fun res!2840596 () Bool)

(assert (=> b!6961732 (=> (not res!2840596) (not e!4185680))))

(declare-fun generalisedUnion!2564 (List!66863) Regex!17089)

(assert (=> b!6961732 (= res!2840596 (= r!13765 (generalisedUnion!2564 l!9142)))))

(declare-fun b!6961733 () Bool)

(assert (=> b!6961733 (= e!4185680 (not e!4185681))))

(declare-fun res!2840594 () Bool)

(assert (=> b!6961733 (=> res!2840594 e!4185681)))

(get-info :version)

(assert (=> b!6961733 (= res!2840594 (not ((_ is Union!17089) r!13765)))))

(declare-fun matchR!9195 (Regex!17089 List!66864) Bool)

(assert (=> b!6961733 (= (matchR!9195 r!13765 s!9351) (matchRSpec!4110 r!13765 s!9351))))

(declare-datatypes ((Unit!160838 0))(
  ( (Unit!160839) )
))
(declare-fun lt!2478955 () Unit!160838)

(declare-fun mainMatchTheorem!4104 (Regex!17089 List!66864) Unit!160838)

(assert (=> b!6961733 (= lt!2478955 (mainMatchTheorem!4104 r!13765 s!9351))))

(assert (= (and start!667946 res!2840593) b!6961732))

(assert (= (and b!6961732 res!2840596) b!6961733))

(assert (= (and b!6961733 (not res!2840594)) b!6961722))

(assert (= (and b!6961722 (not res!2840598)) b!6961723))

(assert (= (and b!6961723 (not res!2840595)) b!6961729))

(assert (= (and b!6961729 (not res!2840597)) b!6961728))

(assert (= (and start!667946 ((_ is Cons!66739) l!9142)) b!6961730))

(assert (= (and start!667946 ((_ is ElementMatch!17089) r!13765)) b!6961724))

(assert (= (and start!667946 ((_ is Concat!25934) r!13765)) b!6961725))

(assert (= (and start!667946 ((_ is Star!17089) r!13765)) b!6961726))

(assert (= (and start!667946 ((_ is Union!17089) r!13765)) b!6961727))

(assert (= (and start!667946 ((_ is Cons!66740) s!9351)) b!6961731))

(declare-fun m!7656340 () Bool)

(assert (=> b!6961722 m!7656340))

(declare-fun m!7656342 () Bool)

(assert (=> b!6961723 m!7656342))

(assert (=> b!6961723 m!7656342))

(declare-fun m!7656344 () Bool)

(assert (=> b!6961723 m!7656344))

(declare-fun m!7656346 () Bool)

(assert (=> b!6961733 m!7656346))

(declare-fun m!7656348 () Bool)

(assert (=> b!6961733 m!7656348))

(declare-fun m!7656350 () Bool)

(assert (=> b!6961733 m!7656350))

(declare-fun m!7656352 () Bool)

(assert (=> start!667946 m!7656352))

(declare-fun m!7656354 () Bool)

(assert (=> b!6961728 m!7656354))

(declare-fun m!7656356 () Bool)

(assert (=> b!6961732 m!7656356))

(declare-fun m!7656358 () Bool)

(assert (=> b!6961729 m!7656358))

(check-sat (not b!6961730) (not b!6961733) (not b!6961728) (not b!6961727) (not b!6961722) (not start!667946) (not b!6961723) (not b!6961732) tp_is_empty!43403 (not b!6961731) (not b!6961729) (not b!6961725) (not b!6961726))
(check-sat)
(get-model)

(declare-fun b!6961864 () Bool)

(assert (=> b!6961864 true))

(assert (=> b!6961864 true))

(declare-fun bs!1858347 () Bool)

(declare-fun b!6961859 () Bool)

(assert (= bs!1858347 (and b!6961859 b!6961864)))

(declare-fun lambda!397214 () Int)

(declare-fun lambda!397211 () Int)

(assert (=> bs!1858347 (not (= lambda!397214 lambda!397211))))

(assert (=> b!6961859 true))

(assert (=> b!6961859 true))

(declare-fun b!6961855 () Bool)

(declare-fun res!2840660 () Bool)

(declare-fun e!4185749 () Bool)

(assert (=> b!6961855 (=> res!2840660 e!4185749)))

(declare-fun call!632103 () Bool)

(assert (=> b!6961855 (= res!2840660 call!632103)))

(declare-fun e!4185751 () Bool)

(assert (=> b!6961855 (= e!4185751 e!4185749)))

(declare-fun b!6961856 () Bool)

(declare-fun e!4185747 () Bool)

(assert (=> b!6961856 (= e!4185747 e!4185751)))

(declare-fun c!1290880 () Bool)

(assert (=> b!6961856 (= c!1290880 ((_ is Star!17089) (regOne!34691 r!13765)))))

(declare-fun d!2170082 () Bool)

(declare-fun c!1290879 () Bool)

(assert (=> d!2170082 (= c!1290879 ((_ is EmptyExpr!17089) (regOne!34691 r!13765)))))

(declare-fun e!4185748 () Bool)

(assert (=> d!2170082 (= (matchRSpec!4110 (regOne!34691 r!13765) s!9351) e!4185748)))

(declare-fun b!6961857 () Bool)

(declare-fun c!1290877 () Bool)

(assert (=> b!6961857 (= c!1290877 ((_ is Union!17089) (regOne!34691 r!13765)))))

(declare-fun e!4185753 () Bool)

(assert (=> b!6961857 (= e!4185753 e!4185747)))

(declare-fun bm!632098 () Bool)

(declare-fun isEmpty!38962 (List!66864) Bool)

(assert (=> bm!632098 (= call!632103 (isEmpty!38962 s!9351))))

(declare-fun b!6961858 () Bool)

(declare-fun e!4185752 () Bool)

(assert (=> b!6961858 (= e!4185752 (matchRSpec!4110 (regTwo!34691 (regOne!34691 r!13765)) s!9351))))

(declare-fun call!632104 () Bool)

(declare-fun bm!632099 () Bool)

(declare-fun Exists!4073 (Int) Bool)

(assert (=> bm!632099 (= call!632104 (Exists!4073 (ite c!1290880 lambda!397211 lambda!397214)))))

(assert (=> b!6961859 (= e!4185751 call!632104)))

(declare-fun b!6961860 () Bool)

(assert (=> b!6961860 (= e!4185753 (= s!9351 (Cons!66740 (c!1290847 (regOne!34691 r!13765)) Nil!66740)))))

(declare-fun b!6961861 () Bool)

(declare-fun c!1290878 () Bool)

(assert (=> b!6961861 (= c!1290878 ((_ is ElementMatch!17089) (regOne!34691 r!13765)))))

(declare-fun e!4185750 () Bool)

(assert (=> b!6961861 (= e!4185750 e!4185753)))

(declare-fun b!6961862 () Bool)

(assert (=> b!6961862 (= e!4185748 call!632103)))

(declare-fun b!6961863 () Bool)

(assert (=> b!6961863 (= e!4185748 e!4185750)))

(declare-fun res!2840658 () Bool)

(assert (=> b!6961863 (= res!2840658 (not ((_ is EmptyLang!17089) (regOne!34691 r!13765))))))

(assert (=> b!6961863 (=> (not res!2840658) (not e!4185750))))

(assert (=> b!6961864 (= e!4185749 call!632104)))

(declare-fun b!6961865 () Bool)

(assert (=> b!6961865 (= e!4185747 e!4185752)))

(declare-fun res!2840659 () Bool)

(assert (=> b!6961865 (= res!2840659 (matchRSpec!4110 (regOne!34691 (regOne!34691 r!13765)) s!9351))))

(assert (=> b!6961865 (=> res!2840659 e!4185752)))

(assert (= (and d!2170082 c!1290879) b!6961862))

(assert (= (and d!2170082 (not c!1290879)) b!6961863))

(assert (= (and b!6961863 res!2840658) b!6961861))

(assert (= (and b!6961861 c!1290878) b!6961860))

(assert (= (and b!6961861 (not c!1290878)) b!6961857))

(assert (= (and b!6961857 c!1290877) b!6961865))

(assert (= (and b!6961857 (not c!1290877)) b!6961856))

(assert (= (and b!6961865 (not res!2840659)) b!6961858))

(assert (= (and b!6961856 c!1290880) b!6961855))

(assert (= (and b!6961856 (not c!1290880)) b!6961859))

(assert (= (and b!6961855 (not res!2840660)) b!6961864))

(assert (= (or b!6961864 b!6961859) bm!632099))

(assert (= (or b!6961862 b!6961855) bm!632098))

(declare-fun m!7656388 () Bool)

(assert (=> bm!632098 m!7656388))

(declare-fun m!7656390 () Bool)

(assert (=> b!6961858 m!7656390))

(declare-fun m!7656392 () Bool)

(assert (=> bm!632099 m!7656392))

(declare-fun m!7656394 () Bool)

(assert (=> b!6961865 m!7656394))

(assert (=> b!6961729 d!2170082))

(declare-fun b!6961956 () Bool)

(declare-fun res!2840696 () Bool)

(declare-fun e!4185816 () Bool)

(assert (=> b!6961956 (=> res!2840696 e!4185816)))

(assert (=> b!6961956 (= res!2840696 (not ((_ is Concat!25934) (regTwo!34691 r!13765))))))

(declare-fun e!4185815 () Bool)

(assert (=> b!6961956 (= e!4185815 e!4185816)))

(declare-fun b!6961957 () Bool)

(declare-fun e!4185819 () Bool)

(assert (=> b!6961957 (= e!4185819 e!4185815)))

(declare-fun c!1290908 () Bool)

(assert (=> b!6961957 (= c!1290908 ((_ is Union!17089) (regTwo!34691 r!13765)))))

(declare-fun b!6961958 () Bool)

(declare-fun e!4185814 () Bool)

(assert (=> b!6961958 (= e!4185819 e!4185814)))

(declare-fun res!2840695 () Bool)

(declare-fun nullable!6892 (Regex!17089) Bool)

(assert (=> b!6961958 (= res!2840695 (not (nullable!6892 (reg!17418 (regTwo!34691 r!13765)))))))

(assert (=> b!6961958 (=> (not res!2840695) (not e!4185814))))

(declare-fun bm!632117 () Bool)

(declare-fun call!632122 () Bool)

(assert (=> bm!632117 (= call!632122 (validRegex!8785 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))

(declare-fun b!6961959 () Bool)

(declare-fun e!4185820 () Bool)

(assert (=> b!6961959 (= e!4185820 call!632122)))

(declare-fun c!1290907 () Bool)

(declare-fun call!632124 () Bool)

(declare-fun bm!632118 () Bool)

(assert (=> bm!632118 (= call!632124 (validRegex!8785 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))

(declare-fun b!6961960 () Bool)

(declare-fun e!4185818 () Bool)

(assert (=> b!6961960 (= e!4185818 e!4185819)))

(assert (=> b!6961960 (= c!1290907 ((_ is Star!17089) (regTwo!34691 r!13765)))))

(declare-fun b!6961961 () Bool)

(assert (=> b!6961961 (= e!4185814 call!632124)))

(declare-fun b!6961962 () Bool)

(declare-fun e!4185817 () Bool)

(assert (=> b!6961962 (= e!4185817 call!632122)))

(declare-fun b!6961963 () Bool)

(assert (=> b!6961963 (= e!4185816 e!4185817)))

(declare-fun res!2840697 () Bool)

(assert (=> b!6961963 (=> (not res!2840697) (not e!4185817))))

(declare-fun call!632123 () Bool)

(assert (=> b!6961963 (= res!2840697 call!632123)))

(declare-fun bm!632119 () Bool)

(assert (=> bm!632119 (= call!632123 call!632124)))

(declare-fun d!2170094 () Bool)

(declare-fun res!2840698 () Bool)

(assert (=> d!2170094 (=> res!2840698 e!4185818)))

(assert (=> d!2170094 (= res!2840698 ((_ is ElementMatch!17089) (regTwo!34691 r!13765)))))

(assert (=> d!2170094 (= (validRegex!8785 (regTwo!34691 r!13765)) e!4185818)))

(declare-fun b!6961964 () Bool)

(declare-fun res!2840699 () Bool)

(assert (=> b!6961964 (=> (not res!2840699) (not e!4185820))))

(assert (=> b!6961964 (= res!2840699 call!632123)))

(assert (=> b!6961964 (= e!4185815 e!4185820)))

(assert (= (and d!2170094 (not res!2840698)) b!6961960))

(assert (= (and b!6961960 c!1290907) b!6961958))

(assert (= (and b!6961960 (not c!1290907)) b!6961957))

(assert (= (and b!6961958 res!2840695) b!6961961))

(assert (= (and b!6961957 c!1290908) b!6961964))

(assert (= (and b!6961957 (not c!1290908)) b!6961956))

(assert (= (and b!6961964 res!2840699) b!6961959))

(assert (= (and b!6961956 (not res!2840696)) b!6961963))

(assert (= (and b!6961963 res!2840697) b!6961962))

(assert (= (or b!6961964 b!6961963) bm!632119))

(assert (= (or b!6961959 b!6961962) bm!632117))

(assert (= (or b!6961961 bm!632119) bm!632118))

(declare-fun m!7656416 () Bool)

(assert (=> b!6961958 m!7656416))

(declare-fun m!7656418 () Bool)

(assert (=> bm!632117 m!7656418))

(declare-fun m!7656422 () Bool)

(assert (=> bm!632118 m!7656422))

(assert (=> b!6961728 d!2170094))

(declare-fun d!2170102 () Bool)

(declare-fun res!2840710 () Bool)

(declare-fun e!4185845 () Bool)

(assert (=> d!2170102 (=> res!2840710 e!4185845)))

(assert (=> d!2170102 (= res!2840710 ((_ is Nil!66739) l!9142))))

(assert (=> d!2170102 (= (forall!15960 l!9142 lambda!397200) e!4185845)))

(declare-fun b!6962019 () Bool)

(declare-fun e!4185846 () Bool)

(assert (=> b!6962019 (= e!4185845 e!4185846)))

(declare-fun res!2840711 () Bool)

(assert (=> b!6962019 (=> (not res!2840711) (not e!4185846))))

(declare-fun dynLambda!26614 (Int Regex!17089) Bool)

(assert (=> b!6962019 (= res!2840711 (dynLambda!26614 lambda!397200 (h!73187 l!9142)))))

(declare-fun b!6962020 () Bool)

(assert (=> b!6962020 (= e!4185846 (forall!15960 (t!380606 l!9142) lambda!397200))))

(assert (= (and d!2170102 (not res!2840710)) b!6962019))

(assert (= (and b!6962019 res!2840711) b!6962020))

(declare-fun b_lambda!260573 () Bool)

(assert (=> (not b_lambda!260573) (not b!6962019)))

(declare-fun m!7656428 () Bool)

(assert (=> b!6962019 m!7656428))

(declare-fun m!7656430 () Bool)

(assert (=> b!6962020 m!7656430))

(assert (=> start!667946 d!2170102))

(declare-fun d!2170110 () Bool)

(assert (=> d!2170110 (= (isEmpty!38960 (tail!13041 l!9142)) ((_ is Nil!66739) (tail!13041 l!9142)))))

(assert (=> b!6961723 d!2170110))

(declare-fun d!2170112 () Bool)

(assert (=> d!2170112 (= (tail!13041 l!9142) (t!380606 l!9142))))

(assert (=> b!6961723 d!2170112))

(declare-fun d!2170114 () Bool)

(assert (=> d!2170114 (= (isEmpty!38960 l!9142) ((_ is Nil!66739) l!9142))))

(assert (=> b!6961722 d!2170114))

(declare-fun b!6962049 () Bool)

(declare-fun res!2840732 () Bool)

(declare-fun e!4185861 () Bool)

(assert (=> b!6962049 (=> (not res!2840732) (not e!4185861))))

(declare-fun tail!13043 (List!66864) List!66864)

(assert (=> b!6962049 (= res!2840732 (isEmpty!38962 (tail!13043 s!9351)))))

(declare-fun b!6962050 () Bool)

(declare-fun e!4185866 () Bool)

(declare-fun e!4185867 () Bool)

(assert (=> b!6962050 (= e!4185866 e!4185867)))

(declare-fun c!1290915 () Bool)

(assert (=> b!6962050 (= c!1290915 ((_ is EmptyLang!17089) r!13765))))

(declare-fun d!2170116 () Bool)

(assert (=> d!2170116 e!4185866))

(declare-fun c!1290917 () Bool)

(assert (=> d!2170116 (= c!1290917 ((_ is EmptyExpr!17089) r!13765))))

(declare-fun lt!2478967 () Bool)

(declare-fun e!4185864 () Bool)

(assert (=> d!2170116 (= lt!2478967 e!4185864)))

(declare-fun c!1290916 () Bool)

(assert (=> d!2170116 (= c!1290916 (isEmpty!38962 s!9351))))

(assert (=> d!2170116 (validRegex!8785 r!13765)))

(assert (=> d!2170116 (= (matchR!9195 r!13765 s!9351) lt!2478967)))

(declare-fun b!6962051 () Bool)

(declare-fun res!2840731 () Bool)

(declare-fun e!4185863 () Bool)

(assert (=> b!6962051 (=> res!2840731 e!4185863)))

(assert (=> b!6962051 (= res!2840731 e!4185861)))

(declare-fun res!2840733 () Bool)

(assert (=> b!6962051 (=> (not res!2840733) (not e!4185861))))

(assert (=> b!6962051 (= res!2840733 lt!2478967)))

(declare-fun b!6962052 () Bool)

(declare-fun e!4185862 () Bool)

(declare-fun e!4185865 () Bool)

(assert (=> b!6962052 (= e!4185862 e!4185865)))

(declare-fun res!2840730 () Bool)

(assert (=> b!6962052 (=> res!2840730 e!4185865)))

(declare-fun call!632127 () Bool)

(assert (=> b!6962052 (= res!2840730 call!632127)))

(declare-fun b!6962053 () Bool)

(declare-fun head!13983 (List!66864) C!34448)

(assert (=> b!6962053 (= e!4185861 (= (head!13983 s!9351) (c!1290847 r!13765)))))

(declare-fun b!6962054 () Bool)

(declare-fun res!2840728 () Bool)

(assert (=> b!6962054 (=> res!2840728 e!4185865)))

(assert (=> b!6962054 (= res!2840728 (not (isEmpty!38962 (tail!13043 s!9351))))))

(declare-fun b!6962055 () Bool)

(assert (=> b!6962055 (= e!4185863 e!4185862)))

(declare-fun res!2840729 () Bool)

(assert (=> b!6962055 (=> (not res!2840729) (not e!4185862))))

(assert (=> b!6962055 (= res!2840729 (not lt!2478967))))

(declare-fun b!6962056 () Bool)

(declare-fun res!2840735 () Bool)

(assert (=> b!6962056 (=> res!2840735 e!4185863)))

(assert (=> b!6962056 (= res!2840735 (not ((_ is ElementMatch!17089) r!13765)))))

(assert (=> b!6962056 (= e!4185867 e!4185863)))

(declare-fun b!6962057 () Bool)

(declare-fun res!2840734 () Bool)

(assert (=> b!6962057 (=> (not res!2840734) (not e!4185861))))

(assert (=> b!6962057 (= res!2840734 (not call!632127))))

(declare-fun b!6962058 () Bool)

(declare-fun derivativeStep!5518 (Regex!17089 C!34448) Regex!17089)

(assert (=> b!6962058 (= e!4185864 (matchR!9195 (derivativeStep!5518 r!13765 (head!13983 s!9351)) (tail!13043 s!9351)))))

(declare-fun bm!632122 () Bool)

(assert (=> bm!632122 (= call!632127 (isEmpty!38962 s!9351))))

(declare-fun b!6962059 () Bool)

(assert (=> b!6962059 (= e!4185865 (not (= (head!13983 s!9351) (c!1290847 r!13765))))))

(declare-fun b!6962060 () Bool)

(assert (=> b!6962060 (= e!4185867 (not lt!2478967))))

(declare-fun b!6962061 () Bool)

(assert (=> b!6962061 (= e!4185866 (= lt!2478967 call!632127))))

(declare-fun b!6962062 () Bool)

(assert (=> b!6962062 (= e!4185864 (nullable!6892 r!13765))))

(assert (= (and d!2170116 c!1290916) b!6962062))

(assert (= (and d!2170116 (not c!1290916)) b!6962058))

(assert (= (and d!2170116 c!1290917) b!6962061))

(assert (= (and d!2170116 (not c!1290917)) b!6962050))

(assert (= (and b!6962050 c!1290915) b!6962060))

(assert (= (and b!6962050 (not c!1290915)) b!6962056))

(assert (= (and b!6962056 (not res!2840735)) b!6962051))

(assert (= (and b!6962051 res!2840733) b!6962057))

(assert (= (and b!6962057 res!2840734) b!6962049))

(assert (= (and b!6962049 res!2840732) b!6962053))

(assert (= (and b!6962051 (not res!2840731)) b!6962055))

(assert (= (and b!6962055 res!2840729) b!6962052))

(assert (= (and b!6962052 (not res!2840730)) b!6962054))

(assert (= (and b!6962054 (not res!2840728)) b!6962059))

(assert (= (or b!6962061 b!6962052 b!6962057) bm!632122))

(declare-fun m!7656432 () Bool)

(assert (=> b!6962053 m!7656432))

(declare-fun m!7656434 () Bool)

(assert (=> b!6962062 m!7656434))

(declare-fun m!7656436 () Bool)

(assert (=> b!6962054 m!7656436))

(assert (=> b!6962054 m!7656436))

(declare-fun m!7656438 () Bool)

(assert (=> b!6962054 m!7656438))

(assert (=> b!6962059 m!7656432))

(assert (=> d!2170116 m!7656388))

(declare-fun m!7656440 () Bool)

(assert (=> d!2170116 m!7656440))

(assert (=> bm!632122 m!7656388))

(assert (=> b!6962049 m!7656436))

(assert (=> b!6962049 m!7656436))

(assert (=> b!6962049 m!7656438))

(assert (=> b!6962058 m!7656432))

(assert (=> b!6962058 m!7656432))

(declare-fun m!7656442 () Bool)

(assert (=> b!6962058 m!7656442))

(assert (=> b!6962058 m!7656436))

(assert (=> b!6962058 m!7656442))

(assert (=> b!6962058 m!7656436))

(declare-fun m!7656444 () Bool)

(assert (=> b!6962058 m!7656444))

(assert (=> b!6961733 d!2170116))

(declare-fun bs!1858350 () Bool)

(declare-fun b!6962072 () Bool)

(assert (= bs!1858350 (and b!6962072 b!6961864)))

(declare-fun lambda!397218 () Int)

(assert (=> bs!1858350 (= (and (= (reg!17418 r!13765) (reg!17418 (regOne!34691 r!13765))) (= r!13765 (regOne!34691 r!13765))) (= lambda!397218 lambda!397211))))

(declare-fun bs!1858351 () Bool)

(assert (= bs!1858351 (and b!6962072 b!6961859)))

(assert (=> bs!1858351 (not (= lambda!397218 lambda!397214))))

(assert (=> b!6962072 true))

(assert (=> b!6962072 true))

(declare-fun bs!1858352 () Bool)

(declare-fun b!6962067 () Bool)

(assert (= bs!1858352 (and b!6962067 b!6961864)))

(declare-fun lambda!397219 () Int)

(assert (=> bs!1858352 (not (= lambda!397219 lambda!397211))))

(declare-fun bs!1858353 () Bool)

(assert (= bs!1858353 (and b!6962067 b!6961859)))

(assert (=> bs!1858353 (= (and (= (regOne!34690 r!13765) (regOne!34690 (regOne!34691 r!13765))) (= (regTwo!34690 r!13765) (regTwo!34690 (regOne!34691 r!13765)))) (= lambda!397219 lambda!397214))))

(declare-fun bs!1858354 () Bool)

(assert (= bs!1858354 (and b!6962067 b!6962072)))

(assert (=> bs!1858354 (not (= lambda!397219 lambda!397218))))

(assert (=> b!6962067 true))

(assert (=> b!6962067 true))

(declare-fun b!6962063 () Bool)

(declare-fun res!2840738 () Bool)

(declare-fun e!4185870 () Bool)

(assert (=> b!6962063 (=> res!2840738 e!4185870)))

(declare-fun call!632128 () Bool)

(assert (=> b!6962063 (= res!2840738 call!632128)))

(declare-fun e!4185872 () Bool)

(assert (=> b!6962063 (= e!4185872 e!4185870)))

(declare-fun b!6962064 () Bool)

(declare-fun e!4185868 () Bool)

(assert (=> b!6962064 (= e!4185868 e!4185872)))

(declare-fun c!1290921 () Bool)

(assert (=> b!6962064 (= c!1290921 ((_ is Star!17089) r!13765))))

(declare-fun d!2170118 () Bool)

(declare-fun c!1290920 () Bool)

(assert (=> d!2170118 (= c!1290920 ((_ is EmptyExpr!17089) r!13765))))

(declare-fun e!4185869 () Bool)

(assert (=> d!2170118 (= (matchRSpec!4110 r!13765 s!9351) e!4185869)))

(declare-fun b!6962065 () Bool)

(declare-fun c!1290918 () Bool)

(assert (=> b!6962065 (= c!1290918 ((_ is Union!17089) r!13765))))

(declare-fun e!4185874 () Bool)

(assert (=> b!6962065 (= e!4185874 e!4185868)))

(declare-fun bm!632123 () Bool)

(assert (=> bm!632123 (= call!632128 (isEmpty!38962 s!9351))))

(declare-fun b!6962066 () Bool)

(declare-fun e!4185873 () Bool)

(assert (=> b!6962066 (= e!4185873 (matchRSpec!4110 (regTwo!34691 r!13765) s!9351))))

(declare-fun bm!632124 () Bool)

(declare-fun call!632129 () Bool)

(assert (=> bm!632124 (= call!632129 (Exists!4073 (ite c!1290921 lambda!397218 lambda!397219)))))

(assert (=> b!6962067 (= e!4185872 call!632129)))

(declare-fun b!6962068 () Bool)

(assert (=> b!6962068 (= e!4185874 (= s!9351 (Cons!66740 (c!1290847 r!13765) Nil!66740)))))

(declare-fun b!6962069 () Bool)

(declare-fun c!1290919 () Bool)

(assert (=> b!6962069 (= c!1290919 ((_ is ElementMatch!17089) r!13765))))

(declare-fun e!4185871 () Bool)

(assert (=> b!6962069 (= e!4185871 e!4185874)))

(declare-fun b!6962070 () Bool)

(assert (=> b!6962070 (= e!4185869 call!632128)))

(declare-fun b!6962071 () Bool)

(assert (=> b!6962071 (= e!4185869 e!4185871)))

(declare-fun res!2840736 () Bool)

(assert (=> b!6962071 (= res!2840736 (not ((_ is EmptyLang!17089) r!13765)))))

(assert (=> b!6962071 (=> (not res!2840736) (not e!4185871))))

(assert (=> b!6962072 (= e!4185870 call!632129)))

(declare-fun b!6962073 () Bool)

(assert (=> b!6962073 (= e!4185868 e!4185873)))

(declare-fun res!2840737 () Bool)

(assert (=> b!6962073 (= res!2840737 (matchRSpec!4110 (regOne!34691 r!13765) s!9351))))

(assert (=> b!6962073 (=> res!2840737 e!4185873)))

(assert (= (and d!2170118 c!1290920) b!6962070))

(assert (= (and d!2170118 (not c!1290920)) b!6962071))

(assert (= (and b!6962071 res!2840736) b!6962069))

(assert (= (and b!6962069 c!1290919) b!6962068))

(assert (= (and b!6962069 (not c!1290919)) b!6962065))

(assert (= (and b!6962065 c!1290918) b!6962073))

(assert (= (and b!6962065 (not c!1290918)) b!6962064))

(assert (= (and b!6962073 (not res!2840737)) b!6962066))

(assert (= (and b!6962064 c!1290921) b!6962063))

(assert (= (and b!6962064 (not c!1290921)) b!6962067))

(assert (= (and b!6962063 (not res!2840738)) b!6962072))

(assert (= (or b!6962072 b!6962067) bm!632124))

(assert (= (or b!6962070 b!6962063) bm!632123))

(assert (=> bm!632123 m!7656388))

(declare-fun m!7656446 () Bool)

(assert (=> b!6962066 m!7656446))

(declare-fun m!7656448 () Bool)

(assert (=> bm!632124 m!7656448))

(assert (=> b!6962073 m!7656358))

(assert (=> b!6961733 d!2170118))

(declare-fun d!2170120 () Bool)

(assert (=> d!2170120 (= (matchR!9195 r!13765 s!9351) (matchRSpec!4110 r!13765 s!9351))))

(declare-fun lt!2478970 () Unit!160838)

(declare-fun choose!51884 (Regex!17089 List!66864) Unit!160838)

(assert (=> d!2170120 (= lt!2478970 (choose!51884 r!13765 s!9351))))

(assert (=> d!2170120 (validRegex!8785 r!13765)))

(assert (=> d!2170120 (= (mainMatchTheorem!4104 r!13765 s!9351) lt!2478970)))

(declare-fun bs!1858355 () Bool)

(assert (= bs!1858355 d!2170120))

(assert (=> bs!1858355 m!7656346))

(assert (=> bs!1858355 m!7656348))

(declare-fun m!7656450 () Bool)

(assert (=> bs!1858355 m!7656450))

(assert (=> bs!1858355 m!7656440))

(assert (=> b!6961733 d!2170120))

(declare-fun bs!1858356 () Bool)

(declare-fun d!2170122 () Bool)

(assert (= bs!1858356 (and d!2170122 start!667946)))

(declare-fun lambda!397222 () Int)

(assert (=> bs!1858356 (= lambda!397222 lambda!397200)))

(declare-fun b!6962094 () Bool)

(declare-fun e!4185891 () Regex!17089)

(declare-fun e!4185887 () Regex!17089)

(assert (=> b!6962094 (= e!4185891 e!4185887)))

(declare-fun c!1290930 () Bool)

(assert (=> b!6962094 (= c!1290930 ((_ is Cons!66739) l!9142))))

(declare-fun b!6962095 () Bool)

(declare-fun e!4185892 () Bool)

(declare-fun e!4185888 () Bool)

(assert (=> b!6962095 (= e!4185892 e!4185888)))

(declare-fun c!1290933 () Bool)

(assert (=> b!6962095 (= c!1290933 (isEmpty!38960 l!9142))))

(declare-fun b!6962096 () Bool)

(declare-fun e!4185889 () Bool)

(declare-fun lt!2478973 () Regex!17089)

(declare-fun head!13984 (List!66863) Regex!17089)

(assert (=> b!6962096 (= e!4185889 (= lt!2478973 (head!13984 l!9142)))))

(declare-fun b!6962097 () Bool)

(declare-fun isUnion!1471 (Regex!17089) Bool)

(assert (=> b!6962097 (= e!4185889 (isUnion!1471 lt!2478973))))

(declare-fun b!6962098 () Bool)

(assert (=> b!6962098 (= e!4185887 (Union!17089 (h!73187 l!9142) (generalisedUnion!2564 (t!380606 l!9142))))))

(declare-fun b!6962099 () Bool)

(assert (=> b!6962099 (= e!4185887 EmptyLang!17089)))

(declare-fun b!6962100 () Bool)

(assert (=> b!6962100 (= e!4185888 e!4185889)))

(declare-fun c!1290931 () Bool)

(assert (=> b!6962100 (= c!1290931 (isEmpty!38960 (tail!13041 l!9142)))))

(declare-fun b!6962101 () Bool)

(declare-fun isEmptyLang!2043 (Regex!17089) Bool)

(assert (=> b!6962101 (= e!4185888 (isEmptyLang!2043 lt!2478973))))

(assert (=> d!2170122 e!4185892))

(declare-fun res!2840743 () Bool)

(assert (=> d!2170122 (=> (not res!2840743) (not e!4185892))))

(assert (=> d!2170122 (= res!2840743 (validRegex!8785 lt!2478973))))

(assert (=> d!2170122 (= lt!2478973 e!4185891)))

(declare-fun c!1290932 () Bool)

(declare-fun e!4185890 () Bool)

(assert (=> d!2170122 (= c!1290932 e!4185890)))

(declare-fun res!2840744 () Bool)

(assert (=> d!2170122 (=> (not res!2840744) (not e!4185890))))

(assert (=> d!2170122 (= res!2840744 ((_ is Cons!66739) l!9142))))

(assert (=> d!2170122 (forall!15960 l!9142 lambda!397222)))

(assert (=> d!2170122 (= (generalisedUnion!2564 l!9142) lt!2478973)))

(declare-fun b!6962102 () Bool)

(assert (=> b!6962102 (= e!4185890 (isEmpty!38960 (t!380606 l!9142)))))

(declare-fun b!6962103 () Bool)

(assert (=> b!6962103 (= e!4185891 (h!73187 l!9142))))

(assert (= (and d!2170122 res!2840744) b!6962102))

(assert (= (and d!2170122 c!1290932) b!6962103))

(assert (= (and d!2170122 (not c!1290932)) b!6962094))

(assert (= (and b!6962094 c!1290930) b!6962098))

(assert (= (and b!6962094 (not c!1290930)) b!6962099))

(assert (= (and d!2170122 res!2840743) b!6962095))

(assert (= (and b!6962095 c!1290933) b!6962101))

(assert (= (and b!6962095 (not c!1290933)) b!6962100))

(assert (= (and b!6962100 c!1290931) b!6962096))

(assert (= (and b!6962100 (not c!1290931)) b!6962097))

(declare-fun m!7656452 () Bool)

(assert (=> b!6962098 m!7656452))

(declare-fun m!7656454 () Bool)

(assert (=> b!6962096 m!7656454))

(declare-fun m!7656456 () Bool)

(assert (=> b!6962097 m!7656456))

(declare-fun m!7656458 () Bool)

(assert (=> b!6962101 m!7656458))

(declare-fun m!7656460 () Bool)

(assert (=> d!2170122 m!7656460))

(declare-fun m!7656462 () Bool)

(assert (=> d!2170122 m!7656462))

(declare-fun m!7656464 () Bool)

(assert (=> b!6962102 m!7656464))

(assert (=> b!6962100 m!7656342))

(assert (=> b!6962100 m!7656342))

(assert (=> b!6962100 m!7656344))

(assert (=> b!6962095 m!7656340))

(assert (=> b!6961732 d!2170122))

(declare-fun b!6962115 () Bool)

(declare-fun e!4185895 () Bool)

(declare-fun tp!1919530 () Bool)

(declare-fun tp!1919532 () Bool)

(assert (=> b!6962115 (= e!4185895 (and tp!1919530 tp!1919532))))

(assert (=> b!6961726 (= tp!1919467 e!4185895)))

(declare-fun b!6962117 () Bool)

(declare-fun tp!1919529 () Bool)

(declare-fun tp!1919531 () Bool)

(assert (=> b!6962117 (= e!4185895 (and tp!1919529 tp!1919531))))

(declare-fun b!6962116 () Bool)

(declare-fun tp!1919533 () Bool)

(assert (=> b!6962116 (= e!4185895 tp!1919533)))

(declare-fun b!6962114 () Bool)

(assert (=> b!6962114 (= e!4185895 tp_is_empty!43403)))

(assert (= (and b!6961726 ((_ is ElementMatch!17089) (reg!17418 r!13765))) b!6962114))

(assert (= (and b!6961726 ((_ is Concat!25934) (reg!17418 r!13765))) b!6962115))

(assert (= (and b!6961726 ((_ is Star!17089) (reg!17418 r!13765))) b!6962116))

(assert (= (and b!6961726 ((_ is Union!17089) (reg!17418 r!13765))) b!6962117))

(declare-fun b!6962122 () Bool)

(declare-fun e!4185898 () Bool)

(declare-fun tp!1919536 () Bool)

(assert (=> b!6962122 (= e!4185898 (and tp_is_empty!43403 tp!1919536))))

(assert (=> b!6961731 (= tp!1919465 e!4185898)))

(assert (= (and b!6961731 ((_ is Cons!66740) (t!380607 s!9351))) b!6962122))

(declare-fun b!6962124 () Bool)

(declare-fun e!4185899 () Bool)

(declare-fun tp!1919538 () Bool)

(declare-fun tp!1919540 () Bool)

(assert (=> b!6962124 (= e!4185899 (and tp!1919538 tp!1919540))))

(assert (=> b!6961730 (= tp!1919463 e!4185899)))

(declare-fun b!6962126 () Bool)

(declare-fun tp!1919537 () Bool)

(declare-fun tp!1919539 () Bool)

(assert (=> b!6962126 (= e!4185899 (and tp!1919537 tp!1919539))))

(declare-fun b!6962125 () Bool)

(declare-fun tp!1919541 () Bool)

(assert (=> b!6962125 (= e!4185899 tp!1919541)))

(declare-fun b!6962123 () Bool)

(assert (=> b!6962123 (= e!4185899 tp_is_empty!43403)))

(assert (= (and b!6961730 ((_ is ElementMatch!17089) (h!73187 l!9142))) b!6962123))

(assert (= (and b!6961730 ((_ is Concat!25934) (h!73187 l!9142))) b!6962124))

(assert (= (and b!6961730 ((_ is Star!17089) (h!73187 l!9142))) b!6962125))

(assert (= (and b!6961730 ((_ is Union!17089) (h!73187 l!9142))) b!6962126))

(declare-fun b!6962131 () Bool)

(declare-fun e!4185902 () Bool)

(declare-fun tp!1919546 () Bool)

(declare-fun tp!1919547 () Bool)

(assert (=> b!6962131 (= e!4185902 (and tp!1919546 tp!1919547))))

(assert (=> b!6961730 (= tp!1919462 e!4185902)))

(assert (= (and b!6961730 ((_ is Cons!66739) (t!380606 l!9142))) b!6962131))

(declare-fun b!6962133 () Bool)

(declare-fun e!4185903 () Bool)

(declare-fun tp!1919549 () Bool)

(declare-fun tp!1919551 () Bool)

(assert (=> b!6962133 (= e!4185903 (and tp!1919549 tp!1919551))))

(assert (=> b!6961725 (= tp!1919466 e!4185903)))

(declare-fun b!6962135 () Bool)

(declare-fun tp!1919548 () Bool)

(declare-fun tp!1919550 () Bool)

(assert (=> b!6962135 (= e!4185903 (and tp!1919548 tp!1919550))))

(declare-fun b!6962134 () Bool)

(declare-fun tp!1919552 () Bool)

(assert (=> b!6962134 (= e!4185903 tp!1919552)))

(declare-fun b!6962132 () Bool)

(assert (=> b!6962132 (= e!4185903 tp_is_empty!43403)))

(assert (= (and b!6961725 ((_ is ElementMatch!17089) (regOne!34690 r!13765))) b!6962132))

(assert (= (and b!6961725 ((_ is Concat!25934) (regOne!34690 r!13765))) b!6962133))

(assert (= (and b!6961725 ((_ is Star!17089) (regOne!34690 r!13765))) b!6962134))

(assert (= (and b!6961725 ((_ is Union!17089) (regOne!34690 r!13765))) b!6962135))

(declare-fun b!6962137 () Bool)

(declare-fun e!4185904 () Bool)

(declare-fun tp!1919554 () Bool)

(declare-fun tp!1919556 () Bool)

(assert (=> b!6962137 (= e!4185904 (and tp!1919554 tp!1919556))))

(assert (=> b!6961725 (= tp!1919468 e!4185904)))

(declare-fun b!6962139 () Bool)

(declare-fun tp!1919553 () Bool)

(declare-fun tp!1919555 () Bool)

(assert (=> b!6962139 (= e!4185904 (and tp!1919553 tp!1919555))))

(declare-fun b!6962138 () Bool)

(declare-fun tp!1919557 () Bool)

(assert (=> b!6962138 (= e!4185904 tp!1919557)))

(declare-fun b!6962136 () Bool)

(assert (=> b!6962136 (= e!4185904 tp_is_empty!43403)))

(assert (= (and b!6961725 ((_ is ElementMatch!17089) (regTwo!34690 r!13765))) b!6962136))

(assert (= (and b!6961725 ((_ is Concat!25934) (regTwo!34690 r!13765))) b!6962137))

(assert (= (and b!6961725 ((_ is Star!17089) (regTwo!34690 r!13765))) b!6962138))

(assert (= (and b!6961725 ((_ is Union!17089) (regTwo!34690 r!13765))) b!6962139))

(declare-fun b!6962141 () Bool)

(declare-fun e!4185905 () Bool)

(declare-fun tp!1919559 () Bool)

(declare-fun tp!1919561 () Bool)

(assert (=> b!6962141 (= e!4185905 (and tp!1919559 tp!1919561))))

(assert (=> b!6961727 (= tp!1919464 e!4185905)))

(declare-fun b!6962143 () Bool)

(declare-fun tp!1919558 () Bool)

(declare-fun tp!1919560 () Bool)

(assert (=> b!6962143 (= e!4185905 (and tp!1919558 tp!1919560))))

(declare-fun b!6962142 () Bool)

(declare-fun tp!1919562 () Bool)

(assert (=> b!6962142 (= e!4185905 tp!1919562)))

(declare-fun b!6962140 () Bool)

(assert (=> b!6962140 (= e!4185905 tp_is_empty!43403)))

(assert (= (and b!6961727 ((_ is ElementMatch!17089) (regOne!34691 r!13765))) b!6962140))

(assert (= (and b!6961727 ((_ is Concat!25934) (regOne!34691 r!13765))) b!6962141))

(assert (= (and b!6961727 ((_ is Star!17089) (regOne!34691 r!13765))) b!6962142))

(assert (= (and b!6961727 ((_ is Union!17089) (regOne!34691 r!13765))) b!6962143))

(declare-fun b!6962145 () Bool)

(declare-fun e!4185906 () Bool)

(declare-fun tp!1919564 () Bool)

(declare-fun tp!1919566 () Bool)

(assert (=> b!6962145 (= e!4185906 (and tp!1919564 tp!1919566))))

(assert (=> b!6961727 (= tp!1919469 e!4185906)))

(declare-fun b!6962147 () Bool)

(declare-fun tp!1919563 () Bool)

(declare-fun tp!1919565 () Bool)

(assert (=> b!6962147 (= e!4185906 (and tp!1919563 tp!1919565))))

(declare-fun b!6962146 () Bool)

(declare-fun tp!1919567 () Bool)

(assert (=> b!6962146 (= e!4185906 tp!1919567)))

(declare-fun b!6962144 () Bool)

(assert (=> b!6962144 (= e!4185906 tp_is_empty!43403)))

(assert (= (and b!6961727 ((_ is ElementMatch!17089) (regTwo!34691 r!13765))) b!6962144))

(assert (= (and b!6961727 ((_ is Concat!25934) (regTwo!34691 r!13765))) b!6962145))

(assert (= (and b!6961727 ((_ is Star!17089) (regTwo!34691 r!13765))) b!6962146))

(assert (= (and b!6961727 ((_ is Union!17089) (regTwo!34691 r!13765))) b!6962147))

(declare-fun b_lambda!260575 () Bool)

(assert (= b_lambda!260573 (or start!667946 b_lambda!260575)))

(declare-fun bs!1858357 () Bool)

(declare-fun d!2170124 () Bool)

(assert (= bs!1858357 (and d!2170124 start!667946)))

(assert (=> bs!1858357 (= (dynLambda!26614 lambda!397200 (h!73187 l!9142)) (validRegex!8785 (h!73187 l!9142)))))

(declare-fun m!7656466 () Bool)

(assert (=> bs!1858357 m!7656466))

(assert (=> b!6962019 d!2170124))

(check-sat (not b!6962100) (not b!6962096) (not b!6962098) (not b!6962138) (not b!6962097) (not bm!632098) (not bm!632122) (not b!6962146) (not bm!632123) (not b!6962066) (not b!6962145) (not b!6962124) (not b!6962122) (not b!6962049) (not b!6962062) (not d!2170122) (not b!6962020) (not b!6962054) (not bm!632118) (not b!6962115) (not b!6962058) (not b!6961958) (not b!6962134) (not b!6962137) (not b!6962116) (not b!6962053) (not b!6962147) (not bm!632124) (not b!6962143) (not b!6962125) (not b!6962095) (not bs!1858357) (not b!6962133) (not b!6962131) (not b!6962073) (not b!6961858) (not b!6962059) (not b!6962142) (not b!6962117) (not b!6962126) (not b_lambda!260575) tp_is_empty!43403 (not b!6962101) (not d!2170120) (not bm!632117) (not d!2170116) (not b!6962139) (not b!6962141) (not b!6962102) (not b!6962135) (not b!6961865) (not bm!632099))
(check-sat)
(get-model)

(assert (=> b!6962073 d!2170082))

(declare-fun b!6962410 () Bool)

(declare-fun res!2840794 () Bool)

(declare-fun e!4186030 () Bool)

(assert (=> b!6962410 (=> res!2840794 e!4186030)))

(assert (=> b!6962410 (= res!2840794 (not ((_ is Concat!25934) (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765)))))))))

(declare-fun e!4186029 () Bool)

(assert (=> b!6962410 (= e!4186029 e!4186030)))

(declare-fun b!6962411 () Bool)

(declare-fun e!4186033 () Bool)

(assert (=> b!6962411 (= e!4186033 e!4186029)))

(declare-fun c!1290979 () Bool)

(assert (=> b!6962411 (= c!1290979 ((_ is Union!17089) (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))

(declare-fun b!6962412 () Bool)

(declare-fun e!4186028 () Bool)

(assert (=> b!6962412 (= e!4186033 e!4186028)))

(declare-fun res!2840793 () Bool)

(assert (=> b!6962412 (= res!2840793 (not (nullable!6892 (reg!17418 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))))

(assert (=> b!6962412 (=> (not res!2840793) (not e!4186028))))

(declare-fun call!632164 () Bool)

(declare-fun bm!632159 () Bool)

(assert (=> bm!632159 (= call!632164 (validRegex!8785 (ite c!1290979 (regTwo!34691 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))) (regTwo!34690 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))))

(declare-fun b!6962413 () Bool)

(declare-fun e!4186034 () Bool)

(assert (=> b!6962413 (= e!4186034 call!632164)))

(declare-fun bm!632160 () Bool)

(declare-fun call!632166 () Bool)

(declare-fun c!1290978 () Bool)

(assert (=> bm!632160 (= call!632166 (validRegex!8785 (ite c!1290978 (reg!17418 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))) (ite c!1290979 (regOne!34691 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))) (regOne!34690 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765)))))))))))

(declare-fun b!6962414 () Bool)

(declare-fun e!4186032 () Bool)

(assert (=> b!6962414 (= e!4186032 e!4186033)))

(assert (=> b!6962414 (= c!1290978 ((_ is Star!17089) (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))

(declare-fun b!6962415 () Bool)

(assert (=> b!6962415 (= e!4186028 call!632166)))

(declare-fun b!6962416 () Bool)

(declare-fun e!4186031 () Bool)

(assert (=> b!6962416 (= e!4186031 call!632164)))

(declare-fun b!6962417 () Bool)

(assert (=> b!6962417 (= e!4186030 e!4186031)))

(declare-fun res!2840795 () Bool)

(assert (=> b!6962417 (=> (not res!2840795) (not e!4186031))))

(declare-fun call!632165 () Bool)

(assert (=> b!6962417 (= res!2840795 call!632165)))

(declare-fun bm!632161 () Bool)

(assert (=> bm!632161 (= call!632165 call!632166)))

(declare-fun d!2170182 () Bool)

(declare-fun res!2840796 () Bool)

(assert (=> d!2170182 (=> res!2840796 e!4186032)))

(assert (=> d!2170182 (= res!2840796 ((_ is ElementMatch!17089) (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))))))

(assert (=> d!2170182 (= (validRegex!8785 (ite c!1290907 (reg!17418 (regTwo!34691 r!13765)) (ite c!1290908 (regOne!34691 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 r!13765))))) e!4186032)))

(declare-fun b!6962418 () Bool)

(declare-fun res!2840797 () Bool)

(assert (=> b!6962418 (=> (not res!2840797) (not e!4186034))))

(assert (=> b!6962418 (= res!2840797 call!632165)))

(assert (=> b!6962418 (= e!4186029 e!4186034)))

(assert (= (and d!2170182 (not res!2840796)) b!6962414))

(assert (= (and b!6962414 c!1290978) b!6962412))

(assert (= (and b!6962414 (not c!1290978)) b!6962411))

(assert (= (and b!6962412 res!2840793) b!6962415))

(assert (= (and b!6962411 c!1290979) b!6962418))

(assert (= (and b!6962411 (not c!1290979)) b!6962410))

(assert (= (and b!6962418 res!2840797) b!6962413))

(assert (= (and b!6962410 (not res!2840794)) b!6962417))

(assert (= (and b!6962417 res!2840795) b!6962416))

(assert (= (or b!6962418 b!6962417) bm!632161))

(assert (= (or b!6962413 b!6962416) bm!632159))

(assert (= (or b!6962415 bm!632161) bm!632160))

(declare-fun m!7656574 () Bool)

(assert (=> b!6962412 m!7656574))

(declare-fun m!7656576 () Bool)

(assert (=> bm!632159 m!7656576))

(declare-fun m!7656578 () Bool)

(assert (=> bm!632160 m!7656578))

(assert (=> bm!632118 d!2170182))

(declare-fun b!6962419 () Bool)

(declare-fun res!2840799 () Bool)

(declare-fun e!4186037 () Bool)

(assert (=> b!6962419 (=> res!2840799 e!4186037)))

(assert (=> b!6962419 (= res!2840799 (not ((_ is Concat!25934) (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765))))))))

(declare-fun e!4186036 () Bool)

(assert (=> b!6962419 (= e!4186036 e!4186037)))

(declare-fun b!6962420 () Bool)

(declare-fun e!4186040 () Bool)

(assert (=> b!6962420 (= e!4186040 e!4186036)))

(declare-fun c!1290981 () Bool)

(assert (=> b!6962420 (= c!1290981 ((_ is Union!17089) (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))

(declare-fun b!6962421 () Bool)

(declare-fun e!4186035 () Bool)

(assert (=> b!6962421 (= e!4186040 e!4186035)))

(declare-fun res!2840798 () Bool)

(assert (=> b!6962421 (= res!2840798 (not (nullable!6892 (reg!17418 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))))

(assert (=> b!6962421 (=> (not res!2840798) (not e!4186035))))

(declare-fun bm!632162 () Bool)

(declare-fun call!632167 () Bool)

(assert (=> bm!632162 (= call!632167 (validRegex!8785 (ite c!1290981 (regTwo!34691 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))) (regTwo!34690 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))))

(declare-fun b!6962422 () Bool)

(declare-fun e!4186041 () Bool)

(assert (=> b!6962422 (= e!4186041 call!632167)))

(declare-fun call!632169 () Bool)

(declare-fun bm!632163 () Bool)

(declare-fun c!1290980 () Bool)

(assert (=> bm!632163 (= call!632169 (validRegex!8785 (ite c!1290980 (reg!17418 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))) (ite c!1290981 (regOne!34691 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))) (regOne!34690 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765))))))))))

(declare-fun b!6962423 () Bool)

(declare-fun e!4186039 () Bool)

(assert (=> b!6962423 (= e!4186039 e!4186040)))

(assert (=> b!6962423 (= c!1290980 ((_ is Star!17089) (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))

(declare-fun b!6962424 () Bool)

(assert (=> b!6962424 (= e!4186035 call!632169)))

(declare-fun b!6962425 () Bool)

(declare-fun e!4186038 () Bool)

(assert (=> b!6962425 (= e!4186038 call!632167)))

(declare-fun b!6962426 () Bool)

(assert (=> b!6962426 (= e!4186037 e!4186038)))

(declare-fun res!2840800 () Bool)

(assert (=> b!6962426 (=> (not res!2840800) (not e!4186038))))

(declare-fun call!632168 () Bool)

(assert (=> b!6962426 (= res!2840800 call!632168)))

(declare-fun bm!632164 () Bool)

(assert (=> bm!632164 (= call!632168 call!632169)))

(declare-fun d!2170184 () Bool)

(declare-fun res!2840801 () Bool)

(assert (=> d!2170184 (=> res!2840801 e!4186039)))

(assert (=> d!2170184 (= res!2840801 ((_ is ElementMatch!17089) (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))))))

(assert (=> d!2170184 (= (validRegex!8785 (ite c!1290908 (regTwo!34691 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 r!13765)))) e!4186039)))

(declare-fun b!6962427 () Bool)

(declare-fun res!2840802 () Bool)

(assert (=> b!6962427 (=> (not res!2840802) (not e!4186041))))

(assert (=> b!6962427 (= res!2840802 call!632168)))

(assert (=> b!6962427 (= e!4186036 e!4186041)))

(assert (= (and d!2170184 (not res!2840801)) b!6962423))

(assert (= (and b!6962423 c!1290980) b!6962421))

(assert (= (and b!6962423 (not c!1290980)) b!6962420))

(assert (= (and b!6962421 res!2840798) b!6962424))

(assert (= (and b!6962420 c!1290981) b!6962427))

(assert (= (and b!6962420 (not c!1290981)) b!6962419))

(assert (= (and b!6962427 res!2840802) b!6962422))

(assert (= (and b!6962419 (not res!2840799)) b!6962426))

(assert (= (and b!6962426 res!2840800) b!6962425))

(assert (= (or b!6962427 b!6962426) bm!632164))

(assert (= (or b!6962422 b!6962425) bm!632162))

(assert (= (or b!6962424 bm!632164) bm!632163))

(declare-fun m!7656580 () Bool)

(assert (=> b!6962421 m!7656580))

(declare-fun m!7656582 () Bool)

(assert (=> bm!632162 m!7656582))

(declare-fun m!7656584 () Bool)

(assert (=> bm!632163 m!7656584))

(assert (=> bm!632117 d!2170184))

(declare-fun bs!1858406 () Bool)

(declare-fun b!6962437 () Bool)

(assert (= bs!1858406 (and b!6962437 b!6961864)))

(declare-fun lambda!397230 () Int)

(assert (=> bs!1858406 (= (and (= (reg!17418 (regOne!34691 (regOne!34691 r!13765))) (reg!17418 (regOne!34691 r!13765))) (= (regOne!34691 (regOne!34691 r!13765)) (regOne!34691 r!13765))) (= lambda!397230 lambda!397211))))

(declare-fun bs!1858407 () Bool)

(assert (= bs!1858407 (and b!6962437 b!6961859)))

(assert (=> bs!1858407 (not (= lambda!397230 lambda!397214))))

(declare-fun bs!1858408 () Bool)

(assert (= bs!1858408 (and b!6962437 b!6962072)))

(assert (=> bs!1858408 (= (and (= (reg!17418 (regOne!34691 (regOne!34691 r!13765))) (reg!17418 r!13765)) (= (regOne!34691 (regOne!34691 r!13765)) r!13765)) (= lambda!397230 lambda!397218))))

(declare-fun bs!1858409 () Bool)

(assert (= bs!1858409 (and b!6962437 b!6962067)))

(assert (=> bs!1858409 (not (= lambda!397230 lambda!397219))))

(assert (=> b!6962437 true))

(assert (=> b!6962437 true))

(declare-fun bs!1858410 () Bool)

(declare-fun b!6962432 () Bool)

(assert (= bs!1858410 (and b!6962432 b!6962067)))

(declare-fun lambda!397231 () Int)

(assert (=> bs!1858410 (= (and (= (regOne!34690 (regOne!34691 (regOne!34691 r!13765))) (regOne!34690 r!13765)) (= (regTwo!34690 (regOne!34691 (regOne!34691 r!13765))) (regTwo!34690 r!13765))) (= lambda!397231 lambda!397219))))

(declare-fun bs!1858411 () Bool)

(assert (= bs!1858411 (and b!6962432 b!6961859)))

(assert (=> bs!1858411 (= (and (= (regOne!34690 (regOne!34691 (regOne!34691 r!13765))) (regOne!34690 (regOne!34691 r!13765))) (= (regTwo!34690 (regOne!34691 (regOne!34691 r!13765))) (regTwo!34690 (regOne!34691 r!13765)))) (= lambda!397231 lambda!397214))))

(declare-fun bs!1858412 () Bool)

(assert (= bs!1858412 (and b!6962432 b!6961864)))

(assert (=> bs!1858412 (not (= lambda!397231 lambda!397211))))

(declare-fun bs!1858413 () Bool)

(assert (= bs!1858413 (and b!6962432 b!6962072)))

(assert (=> bs!1858413 (not (= lambda!397231 lambda!397218))))

(declare-fun bs!1858414 () Bool)

(assert (= bs!1858414 (and b!6962432 b!6962437)))

(assert (=> bs!1858414 (not (= lambda!397231 lambda!397230))))

(assert (=> b!6962432 true))

(assert (=> b!6962432 true))

(declare-fun b!6962428 () Bool)

(declare-fun res!2840805 () Bool)

(declare-fun e!4186044 () Bool)

(assert (=> b!6962428 (=> res!2840805 e!4186044)))

(declare-fun call!632170 () Bool)

(assert (=> b!6962428 (= res!2840805 call!632170)))

(declare-fun e!4186046 () Bool)

(assert (=> b!6962428 (= e!4186046 e!4186044)))

(declare-fun b!6962429 () Bool)

(declare-fun e!4186042 () Bool)

(assert (=> b!6962429 (= e!4186042 e!4186046)))

(declare-fun c!1290985 () Bool)

(assert (=> b!6962429 (= c!1290985 ((_ is Star!17089) (regOne!34691 (regOne!34691 r!13765))))))

(declare-fun d!2170186 () Bool)

(declare-fun c!1290984 () Bool)

(assert (=> d!2170186 (= c!1290984 ((_ is EmptyExpr!17089) (regOne!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186043 () Bool)

(assert (=> d!2170186 (= (matchRSpec!4110 (regOne!34691 (regOne!34691 r!13765)) s!9351) e!4186043)))

(declare-fun b!6962430 () Bool)

(declare-fun c!1290982 () Bool)

(assert (=> b!6962430 (= c!1290982 ((_ is Union!17089) (regOne!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186048 () Bool)

(assert (=> b!6962430 (= e!4186048 e!4186042)))

(declare-fun bm!632165 () Bool)

(assert (=> bm!632165 (= call!632170 (isEmpty!38962 s!9351))))

(declare-fun b!6962431 () Bool)

(declare-fun e!4186047 () Bool)

(assert (=> b!6962431 (= e!4186047 (matchRSpec!4110 (regTwo!34691 (regOne!34691 (regOne!34691 r!13765))) s!9351))))

(declare-fun bm!632166 () Bool)

(declare-fun call!632171 () Bool)

(assert (=> bm!632166 (= call!632171 (Exists!4073 (ite c!1290985 lambda!397230 lambda!397231)))))

(assert (=> b!6962432 (= e!4186046 call!632171)))

(declare-fun b!6962433 () Bool)

(assert (=> b!6962433 (= e!4186048 (= s!9351 (Cons!66740 (c!1290847 (regOne!34691 (regOne!34691 r!13765))) Nil!66740)))))

(declare-fun b!6962434 () Bool)

(declare-fun c!1290983 () Bool)

(assert (=> b!6962434 (= c!1290983 ((_ is ElementMatch!17089) (regOne!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186045 () Bool)

(assert (=> b!6962434 (= e!4186045 e!4186048)))

(declare-fun b!6962435 () Bool)

(assert (=> b!6962435 (= e!4186043 call!632170)))

(declare-fun b!6962436 () Bool)

(assert (=> b!6962436 (= e!4186043 e!4186045)))

(declare-fun res!2840803 () Bool)

(assert (=> b!6962436 (= res!2840803 (not ((_ is EmptyLang!17089) (regOne!34691 (regOne!34691 r!13765)))))))

(assert (=> b!6962436 (=> (not res!2840803) (not e!4186045))))

(assert (=> b!6962437 (= e!4186044 call!632171)))

(declare-fun b!6962438 () Bool)

(assert (=> b!6962438 (= e!4186042 e!4186047)))

(declare-fun res!2840804 () Bool)

(assert (=> b!6962438 (= res!2840804 (matchRSpec!4110 (regOne!34691 (regOne!34691 (regOne!34691 r!13765))) s!9351))))

(assert (=> b!6962438 (=> res!2840804 e!4186047)))

(assert (= (and d!2170186 c!1290984) b!6962435))

(assert (= (and d!2170186 (not c!1290984)) b!6962436))

(assert (= (and b!6962436 res!2840803) b!6962434))

(assert (= (and b!6962434 c!1290983) b!6962433))

(assert (= (and b!6962434 (not c!1290983)) b!6962430))

(assert (= (and b!6962430 c!1290982) b!6962438))

(assert (= (and b!6962430 (not c!1290982)) b!6962429))

(assert (= (and b!6962438 (not res!2840804)) b!6962431))

(assert (= (and b!6962429 c!1290985) b!6962428))

(assert (= (and b!6962429 (not c!1290985)) b!6962432))

(assert (= (and b!6962428 (not res!2840805)) b!6962437))

(assert (= (or b!6962437 b!6962432) bm!632166))

(assert (= (or b!6962435 b!6962428) bm!632165))

(assert (=> bm!632165 m!7656388))

(declare-fun m!7656586 () Bool)

(assert (=> b!6962431 m!7656586))

(declare-fun m!7656588 () Bool)

(assert (=> bm!632166 m!7656588))

(declare-fun m!7656590 () Bool)

(assert (=> b!6962438 m!7656590))

(assert (=> b!6961865 d!2170186))

(declare-fun d!2170188 () Bool)

(assert (=> d!2170188 (= (head!13983 s!9351) (h!73188 s!9351))))

(assert (=> b!6962059 d!2170188))

(declare-fun bs!1858415 () Bool)

(declare-fun b!6962448 () Bool)

(assert (= bs!1858415 (and b!6962448 b!6962067)))

(declare-fun lambda!397232 () Int)

(assert (=> bs!1858415 (not (= lambda!397232 lambda!397219))))

(declare-fun bs!1858416 () Bool)

(assert (= bs!1858416 (and b!6962448 b!6961859)))

(assert (=> bs!1858416 (not (= lambda!397232 lambda!397214))))

(declare-fun bs!1858417 () Bool)

(assert (= bs!1858417 (and b!6962448 b!6962432)))

(assert (=> bs!1858417 (not (= lambda!397232 lambda!397231))))

(declare-fun bs!1858418 () Bool)

(assert (= bs!1858418 (and b!6962448 b!6961864)))

(assert (=> bs!1858418 (= (and (= (reg!17418 (regTwo!34691 (regOne!34691 r!13765))) (reg!17418 (regOne!34691 r!13765))) (= (regTwo!34691 (regOne!34691 r!13765)) (regOne!34691 r!13765))) (= lambda!397232 lambda!397211))))

(declare-fun bs!1858419 () Bool)

(assert (= bs!1858419 (and b!6962448 b!6962072)))

(assert (=> bs!1858419 (= (and (= (reg!17418 (regTwo!34691 (regOne!34691 r!13765))) (reg!17418 r!13765)) (= (regTwo!34691 (regOne!34691 r!13765)) r!13765)) (= lambda!397232 lambda!397218))))

(declare-fun bs!1858420 () Bool)

(assert (= bs!1858420 (and b!6962448 b!6962437)))

(assert (=> bs!1858420 (= (and (= (reg!17418 (regTwo!34691 (regOne!34691 r!13765))) (reg!17418 (regOne!34691 (regOne!34691 r!13765)))) (= (regTwo!34691 (regOne!34691 r!13765)) (regOne!34691 (regOne!34691 r!13765)))) (= lambda!397232 lambda!397230))))

(assert (=> b!6962448 true))

(assert (=> b!6962448 true))

(declare-fun bs!1858421 () Bool)

(declare-fun b!6962443 () Bool)

(assert (= bs!1858421 (and b!6962443 b!6962067)))

(declare-fun lambda!397233 () Int)

(assert (=> bs!1858421 (= (and (= (regOne!34690 (regTwo!34691 (regOne!34691 r!13765))) (regOne!34690 r!13765)) (= (regTwo!34690 (regTwo!34691 (regOne!34691 r!13765))) (regTwo!34690 r!13765))) (= lambda!397233 lambda!397219))))

(declare-fun bs!1858422 () Bool)

(assert (= bs!1858422 (and b!6962443 b!6961859)))

(assert (=> bs!1858422 (= (and (= (regOne!34690 (regTwo!34691 (regOne!34691 r!13765))) (regOne!34690 (regOne!34691 r!13765))) (= (regTwo!34690 (regTwo!34691 (regOne!34691 r!13765))) (regTwo!34690 (regOne!34691 r!13765)))) (= lambda!397233 lambda!397214))))

(declare-fun bs!1858423 () Bool)

(assert (= bs!1858423 (and b!6962443 b!6962432)))

(assert (=> bs!1858423 (= (and (= (regOne!34690 (regTwo!34691 (regOne!34691 r!13765))) (regOne!34690 (regOne!34691 (regOne!34691 r!13765)))) (= (regTwo!34690 (regTwo!34691 (regOne!34691 r!13765))) (regTwo!34690 (regOne!34691 (regOne!34691 r!13765))))) (= lambda!397233 lambda!397231))))

(declare-fun bs!1858424 () Bool)

(assert (= bs!1858424 (and b!6962443 b!6962448)))

(assert (=> bs!1858424 (not (= lambda!397233 lambda!397232))))

(declare-fun bs!1858425 () Bool)

(assert (= bs!1858425 (and b!6962443 b!6961864)))

(assert (=> bs!1858425 (not (= lambda!397233 lambda!397211))))

(declare-fun bs!1858426 () Bool)

(assert (= bs!1858426 (and b!6962443 b!6962072)))

(assert (=> bs!1858426 (not (= lambda!397233 lambda!397218))))

(declare-fun bs!1858427 () Bool)

(assert (= bs!1858427 (and b!6962443 b!6962437)))

(assert (=> bs!1858427 (not (= lambda!397233 lambda!397230))))

(assert (=> b!6962443 true))

(assert (=> b!6962443 true))

(declare-fun b!6962439 () Bool)

(declare-fun res!2840808 () Bool)

(declare-fun e!4186051 () Bool)

(assert (=> b!6962439 (=> res!2840808 e!4186051)))

(declare-fun call!632172 () Bool)

(assert (=> b!6962439 (= res!2840808 call!632172)))

(declare-fun e!4186053 () Bool)

(assert (=> b!6962439 (= e!4186053 e!4186051)))

(declare-fun b!6962440 () Bool)

(declare-fun e!4186049 () Bool)

(assert (=> b!6962440 (= e!4186049 e!4186053)))

(declare-fun c!1290989 () Bool)

(assert (=> b!6962440 (= c!1290989 ((_ is Star!17089) (regTwo!34691 (regOne!34691 r!13765))))))

(declare-fun d!2170190 () Bool)

(declare-fun c!1290988 () Bool)

(assert (=> d!2170190 (= c!1290988 ((_ is EmptyExpr!17089) (regTwo!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186050 () Bool)

(assert (=> d!2170190 (= (matchRSpec!4110 (regTwo!34691 (regOne!34691 r!13765)) s!9351) e!4186050)))

(declare-fun b!6962441 () Bool)

(declare-fun c!1290986 () Bool)

(assert (=> b!6962441 (= c!1290986 ((_ is Union!17089) (regTwo!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186055 () Bool)

(assert (=> b!6962441 (= e!4186055 e!4186049)))

(declare-fun bm!632167 () Bool)

(assert (=> bm!632167 (= call!632172 (isEmpty!38962 s!9351))))

(declare-fun b!6962442 () Bool)

(declare-fun e!4186054 () Bool)

(assert (=> b!6962442 (= e!4186054 (matchRSpec!4110 (regTwo!34691 (regTwo!34691 (regOne!34691 r!13765))) s!9351))))

(declare-fun bm!632168 () Bool)

(declare-fun call!632173 () Bool)

(assert (=> bm!632168 (= call!632173 (Exists!4073 (ite c!1290989 lambda!397232 lambda!397233)))))

(assert (=> b!6962443 (= e!4186053 call!632173)))

(declare-fun b!6962444 () Bool)

(assert (=> b!6962444 (= e!4186055 (= s!9351 (Cons!66740 (c!1290847 (regTwo!34691 (regOne!34691 r!13765))) Nil!66740)))))

(declare-fun b!6962445 () Bool)

(declare-fun c!1290987 () Bool)

(assert (=> b!6962445 (= c!1290987 ((_ is ElementMatch!17089) (regTwo!34691 (regOne!34691 r!13765))))))

(declare-fun e!4186052 () Bool)

(assert (=> b!6962445 (= e!4186052 e!4186055)))

(declare-fun b!6962446 () Bool)

(assert (=> b!6962446 (= e!4186050 call!632172)))

(declare-fun b!6962447 () Bool)

(assert (=> b!6962447 (= e!4186050 e!4186052)))

(declare-fun res!2840806 () Bool)

(assert (=> b!6962447 (= res!2840806 (not ((_ is EmptyLang!17089) (regTwo!34691 (regOne!34691 r!13765)))))))

(assert (=> b!6962447 (=> (not res!2840806) (not e!4186052))))

(assert (=> b!6962448 (= e!4186051 call!632173)))

(declare-fun b!6962449 () Bool)

(assert (=> b!6962449 (= e!4186049 e!4186054)))

(declare-fun res!2840807 () Bool)

(assert (=> b!6962449 (= res!2840807 (matchRSpec!4110 (regOne!34691 (regTwo!34691 (regOne!34691 r!13765))) s!9351))))

(assert (=> b!6962449 (=> res!2840807 e!4186054)))

(assert (= (and d!2170190 c!1290988) b!6962446))

(assert (= (and d!2170190 (not c!1290988)) b!6962447))

(assert (= (and b!6962447 res!2840806) b!6962445))

(assert (= (and b!6962445 c!1290987) b!6962444))

(assert (= (and b!6962445 (not c!1290987)) b!6962441))

(assert (= (and b!6962441 c!1290986) b!6962449))

(assert (= (and b!6962441 (not c!1290986)) b!6962440))

(assert (= (and b!6962449 (not res!2840807)) b!6962442))

(assert (= (and b!6962440 c!1290989) b!6962439))

(assert (= (and b!6962440 (not c!1290989)) b!6962443))

(assert (= (and b!6962439 (not res!2840808)) b!6962448))

(assert (= (or b!6962448 b!6962443) bm!632168))

(assert (= (or b!6962446 b!6962439) bm!632167))

(assert (=> bm!632167 m!7656388))

(declare-fun m!7656592 () Bool)

(assert (=> b!6962442 m!7656592))

(declare-fun m!7656594 () Bool)

(assert (=> bm!632168 m!7656594))

(declare-fun m!7656596 () Bool)

(assert (=> b!6962449 m!7656596))

(assert (=> b!6961858 d!2170190))

(declare-fun d!2170192 () Bool)

(declare-fun choose!51886 (Int) Bool)

(assert (=> d!2170192 (= (Exists!4073 (ite c!1290880 lambda!397211 lambda!397214)) (choose!51886 (ite c!1290880 lambda!397211 lambda!397214)))))

(declare-fun bs!1858428 () Bool)

(assert (= bs!1858428 d!2170192))

(declare-fun m!7656598 () Bool)

(assert (=> bs!1858428 m!7656598))

(assert (=> bm!632099 d!2170192))

(assert (=> b!6962100 d!2170110))

(assert (=> b!6962100 d!2170112))

(declare-fun d!2170194 () Bool)

(assert (=> d!2170194 (= (isEmpty!38962 s!9351) ((_ is Nil!66740) s!9351))))

(assert (=> bm!632122 d!2170194))

(assert (=> bm!632098 d!2170194))

(declare-fun bs!1858429 () Bool)

(declare-fun d!2170196 () Bool)

(assert (= bs!1858429 (and d!2170196 start!667946)))

(declare-fun lambda!397234 () Int)

(assert (=> bs!1858429 (= lambda!397234 lambda!397200)))

(declare-fun bs!1858430 () Bool)

(assert (= bs!1858430 (and d!2170196 d!2170122)))

(assert (=> bs!1858430 (= lambda!397234 lambda!397222)))

(declare-fun b!6962450 () Bool)

(declare-fun e!4186060 () Regex!17089)

(declare-fun e!4186056 () Regex!17089)

(assert (=> b!6962450 (= e!4186060 e!4186056)))

(declare-fun c!1290990 () Bool)

(assert (=> b!6962450 (= c!1290990 ((_ is Cons!66739) (t!380606 l!9142)))))

(declare-fun b!6962451 () Bool)

(declare-fun e!4186061 () Bool)

(declare-fun e!4186057 () Bool)

(assert (=> b!6962451 (= e!4186061 e!4186057)))

(declare-fun c!1290993 () Bool)

(assert (=> b!6962451 (= c!1290993 (isEmpty!38960 (t!380606 l!9142)))))

(declare-fun b!6962452 () Bool)

(declare-fun e!4186058 () Bool)

(declare-fun lt!2478979 () Regex!17089)

(assert (=> b!6962452 (= e!4186058 (= lt!2478979 (head!13984 (t!380606 l!9142))))))

(declare-fun b!6962453 () Bool)

(assert (=> b!6962453 (= e!4186058 (isUnion!1471 lt!2478979))))

(declare-fun b!6962454 () Bool)

(assert (=> b!6962454 (= e!4186056 (Union!17089 (h!73187 (t!380606 l!9142)) (generalisedUnion!2564 (t!380606 (t!380606 l!9142)))))))

(declare-fun b!6962455 () Bool)

(assert (=> b!6962455 (= e!4186056 EmptyLang!17089)))

(declare-fun b!6962456 () Bool)

(assert (=> b!6962456 (= e!4186057 e!4186058)))

(declare-fun c!1290991 () Bool)

(assert (=> b!6962456 (= c!1290991 (isEmpty!38960 (tail!13041 (t!380606 l!9142))))))

(declare-fun b!6962457 () Bool)

(assert (=> b!6962457 (= e!4186057 (isEmptyLang!2043 lt!2478979))))

(assert (=> d!2170196 e!4186061))

(declare-fun res!2840809 () Bool)

(assert (=> d!2170196 (=> (not res!2840809) (not e!4186061))))

(assert (=> d!2170196 (= res!2840809 (validRegex!8785 lt!2478979))))

(assert (=> d!2170196 (= lt!2478979 e!4186060)))

(declare-fun c!1290992 () Bool)

(declare-fun e!4186059 () Bool)

(assert (=> d!2170196 (= c!1290992 e!4186059)))

(declare-fun res!2840810 () Bool)

(assert (=> d!2170196 (=> (not res!2840810) (not e!4186059))))

(assert (=> d!2170196 (= res!2840810 ((_ is Cons!66739) (t!380606 l!9142)))))

(assert (=> d!2170196 (forall!15960 (t!380606 l!9142) lambda!397234)))

(assert (=> d!2170196 (= (generalisedUnion!2564 (t!380606 l!9142)) lt!2478979)))

(declare-fun b!6962458 () Bool)

(assert (=> b!6962458 (= e!4186059 (isEmpty!38960 (t!380606 (t!380606 l!9142))))))

(declare-fun b!6962459 () Bool)

(assert (=> b!6962459 (= e!4186060 (h!73187 (t!380606 l!9142)))))

(assert (= (and d!2170196 res!2840810) b!6962458))

(assert (= (and d!2170196 c!1290992) b!6962459))

(assert (= (and d!2170196 (not c!1290992)) b!6962450))

(assert (= (and b!6962450 c!1290990) b!6962454))

(assert (= (and b!6962450 (not c!1290990)) b!6962455))

(assert (= (and d!2170196 res!2840809) b!6962451))

(assert (= (and b!6962451 c!1290993) b!6962457))

(assert (= (and b!6962451 (not c!1290993)) b!6962456))

(assert (= (and b!6962456 c!1290991) b!6962452))

(assert (= (and b!6962456 (not c!1290991)) b!6962453))

(declare-fun m!7656600 () Bool)

(assert (=> b!6962454 m!7656600))

(declare-fun m!7656602 () Bool)

(assert (=> b!6962452 m!7656602))

(declare-fun m!7656604 () Bool)

(assert (=> b!6962453 m!7656604))

(declare-fun m!7656606 () Bool)

(assert (=> b!6962457 m!7656606))

(declare-fun m!7656608 () Bool)

(assert (=> d!2170196 m!7656608))

(declare-fun m!7656610 () Bool)

(assert (=> d!2170196 m!7656610))

(declare-fun m!7656612 () Bool)

(assert (=> b!6962458 m!7656612))

(declare-fun m!7656614 () Bool)

(assert (=> b!6962456 m!7656614))

(assert (=> b!6962456 m!7656614))

(declare-fun m!7656616 () Bool)

(assert (=> b!6962456 m!7656616))

(assert (=> b!6962451 m!7656464))

(assert (=> b!6962098 d!2170196))

(declare-fun d!2170198 () Bool)

(declare-fun nullableFct!2588 (Regex!17089) Bool)

(assert (=> d!2170198 (= (nullable!6892 r!13765) (nullableFct!2588 r!13765))))

(declare-fun bs!1858431 () Bool)

(assert (= bs!1858431 d!2170198))

(declare-fun m!7656618 () Bool)

(assert (=> bs!1858431 m!7656618))

(assert (=> b!6962062 d!2170198))

(declare-fun d!2170200 () Bool)

(assert (=> d!2170200 (= (isEmpty!38960 (t!380606 l!9142)) ((_ is Nil!66739) (t!380606 l!9142)))))

(assert (=> b!6962102 d!2170200))

(declare-fun d!2170202 () Bool)

(assert (=> d!2170202 (= (nullable!6892 (reg!17418 (regTwo!34691 r!13765))) (nullableFct!2588 (reg!17418 (regTwo!34691 r!13765))))))

(declare-fun bs!1858432 () Bool)

(assert (= bs!1858432 d!2170202))

(declare-fun m!7656620 () Bool)

(assert (=> bs!1858432 m!7656620))

(assert (=> b!6961958 d!2170202))

(declare-fun d!2170204 () Bool)

(assert (=> d!2170204 (= (isEmptyLang!2043 lt!2478973) ((_ is EmptyLang!17089) lt!2478973))))

(assert (=> b!6962101 d!2170204))

(declare-fun d!2170206 () Bool)

(declare-fun res!2840811 () Bool)

(declare-fun e!4186062 () Bool)

(assert (=> d!2170206 (=> res!2840811 e!4186062)))

(assert (=> d!2170206 (= res!2840811 ((_ is Nil!66739) (t!380606 l!9142)))))

(assert (=> d!2170206 (= (forall!15960 (t!380606 l!9142) lambda!397200) e!4186062)))

(declare-fun b!6962460 () Bool)

(declare-fun e!4186063 () Bool)

(assert (=> b!6962460 (= e!4186062 e!4186063)))

(declare-fun res!2840812 () Bool)

(assert (=> b!6962460 (=> (not res!2840812) (not e!4186063))))

(assert (=> b!6962460 (= res!2840812 (dynLambda!26614 lambda!397200 (h!73187 (t!380606 l!9142))))))

(declare-fun b!6962461 () Bool)

(assert (=> b!6962461 (= e!4186063 (forall!15960 (t!380606 (t!380606 l!9142)) lambda!397200))))

(assert (= (and d!2170206 (not res!2840811)) b!6962460))

(assert (= (and b!6962460 res!2840812) b!6962461))

(declare-fun b_lambda!260585 () Bool)

(assert (=> (not b_lambda!260585) (not b!6962460)))

(declare-fun m!7656622 () Bool)

(assert (=> b!6962460 m!7656622))

(declare-fun m!7656624 () Bool)

(assert (=> b!6962461 m!7656624))

(assert (=> b!6962020 d!2170206))

(assert (=> b!6962095 d!2170114))

(declare-fun d!2170208 () Bool)

(assert (=> d!2170208 (= (isEmpty!38962 (tail!13043 s!9351)) ((_ is Nil!66740) (tail!13043 s!9351)))))

(assert (=> b!6962054 d!2170208))

(declare-fun d!2170210 () Bool)

(assert (=> d!2170210 (= (tail!13043 s!9351) (t!380607 s!9351))))

(assert (=> b!6962054 d!2170210))

(declare-fun b!6962462 () Bool)

(declare-fun res!2840814 () Bool)

(declare-fun e!4186066 () Bool)

(assert (=> b!6962462 (=> res!2840814 e!4186066)))

(assert (=> b!6962462 (= res!2840814 (not ((_ is Concat!25934) (h!73187 l!9142))))))

(declare-fun e!4186065 () Bool)

(assert (=> b!6962462 (= e!4186065 e!4186066)))

(declare-fun b!6962463 () Bool)

(declare-fun e!4186069 () Bool)

(assert (=> b!6962463 (= e!4186069 e!4186065)))

(declare-fun c!1290995 () Bool)

(assert (=> b!6962463 (= c!1290995 ((_ is Union!17089) (h!73187 l!9142)))))

(declare-fun b!6962464 () Bool)

(declare-fun e!4186064 () Bool)

(assert (=> b!6962464 (= e!4186069 e!4186064)))

(declare-fun res!2840813 () Bool)

(assert (=> b!6962464 (= res!2840813 (not (nullable!6892 (reg!17418 (h!73187 l!9142)))))))

(assert (=> b!6962464 (=> (not res!2840813) (not e!4186064))))

(declare-fun bm!632169 () Bool)

(declare-fun call!632174 () Bool)

(assert (=> bm!632169 (= call!632174 (validRegex!8785 (ite c!1290995 (regTwo!34691 (h!73187 l!9142)) (regTwo!34690 (h!73187 l!9142)))))))

(declare-fun b!6962465 () Bool)

(declare-fun e!4186070 () Bool)

(assert (=> b!6962465 (= e!4186070 call!632174)))

(declare-fun c!1290994 () Bool)

(declare-fun bm!632170 () Bool)

(declare-fun call!632176 () Bool)

(assert (=> bm!632170 (= call!632176 (validRegex!8785 (ite c!1290994 (reg!17418 (h!73187 l!9142)) (ite c!1290995 (regOne!34691 (h!73187 l!9142)) (regOne!34690 (h!73187 l!9142))))))))

(declare-fun b!6962466 () Bool)

(declare-fun e!4186068 () Bool)

(assert (=> b!6962466 (= e!4186068 e!4186069)))

(assert (=> b!6962466 (= c!1290994 ((_ is Star!17089) (h!73187 l!9142)))))

(declare-fun b!6962467 () Bool)

(assert (=> b!6962467 (= e!4186064 call!632176)))

(declare-fun b!6962468 () Bool)

(declare-fun e!4186067 () Bool)

(assert (=> b!6962468 (= e!4186067 call!632174)))

(declare-fun b!6962469 () Bool)

(assert (=> b!6962469 (= e!4186066 e!4186067)))

(declare-fun res!2840815 () Bool)

(assert (=> b!6962469 (=> (not res!2840815) (not e!4186067))))

(declare-fun call!632175 () Bool)

(assert (=> b!6962469 (= res!2840815 call!632175)))

(declare-fun bm!632171 () Bool)

(assert (=> bm!632171 (= call!632175 call!632176)))

(declare-fun d!2170212 () Bool)

(declare-fun res!2840816 () Bool)

(assert (=> d!2170212 (=> res!2840816 e!4186068)))

(assert (=> d!2170212 (= res!2840816 ((_ is ElementMatch!17089) (h!73187 l!9142)))))

(assert (=> d!2170212 (= (validRegex!8785 (h!73187 l!9142)) e!4186068)))

(declare-fun b!6962470 () Bool)

(declare-fun res!2840817 () Bool)

(assert (=> b!6962470 (=> (not res!2840817) (not e!4186070))))

(assert (=> b!6962470 (= res!2840817 call!632175)))

(assert (=> b!6962470 (= e!4186065 e!4186070)))

(assert (= (and d!2170212 (not res!2840816)) b!6962466))

(assert (= (and b!6962466 c!1290994) b!6962464))

(assert (= (and b!6962466 (not c!1290994)) b!6962463))

(assert (= (and b!6962464 res!2840813) b!6962467))

(assert (= (and b!6962463 c!1290995) b!6962470))

(assert (= (and b!6962463 (not c!1290995)) b!6962462))

(assert (= (and b!6962470 res!2840817) b!6962465))

(assert (= (and b!6962462 (not res!2840814)) b!6962469))

(assert (= (and b!6962469 res!2840815) b!6962468))

(assert (= (or b!6962470 b!6962469) bm!632171))

(assert (= (or b!6962465 b!6962468) bm!632169))

(assert (= (or b!6962467 bm!632171) bm!632170))

(declare-fun m!7656626 () Bool)

(assert (=> b!6962464 m!7656626))

(declare-fun m!7656628 () Bool)

(assert (=> bm!632169 m!7656628))

(declare-fun m!7656630 () Bool)

(assert (=> bm!632170 m!7656630))

(assert (=> bs!1858357 d!2170212))

(assert (=> d!2170116 d!2170194))

(declare-fun b!6962471 () Bool)

(declare-fun res!2840819 () Bool)

(declare-fun e!4186073 () Bool)

(assert (=> b!6962471 (=> res!2840819 e!4186073)))

(assert (=> b!6962471 (= res!2840819 (not ((_ is Concat!25934) r!13765)))))

(declare-fun e!4186072 () Bool)

(assert (=> b!6962471 (= e!4186072 e!4186073)))

(declare-fun b!6962472 () Bool)

(declare-fun e!4186076 () Bool)

(assert (=> b!6962472 (= e!4186076 e!4186072)))

(declare-fun c!1290997 () Bool)

(assert (=> b!6962472 (= c!1290997 ((_ is Union!17089) r!13765))))

(declare-fun b!6962473 () Bool)

(declare-fun e!4186071 () Bool)

(assert (=> b!6962473 (= e!4186076 e!4186071)))

(declare-fun res!2840818 () Bool)

(assert (=> b!6962473 (= res!2840818 (not (nullable!6892 (reg!17418 r!13765))))))

(assert (=> b!6962473 (=> (not res!2840818) (not e!4186071))))

(declare-fun bm!632172 () Bool)

(declare-fun call!632177 () Bool)

(assert (=> bm!632172 (= call!632177 (validRegex!8785 (ite c!1290997 (regTwo!34691 r!13765) (regTwo!34690 r!13765))))))

(declare-fun b!6962474 () Bool)

(declare-fun e!4186077 () Bool)

(assert (=> b!6962474 (= e!4186077 call!632177)))

(declare-fun c!1290996 () Bool)

(declare-fun call!632179 () Bool)

(declare-fun bm!632173 () Bool)

(assert (=> bm!632173 (= call!632179 (validRegex!8785 (ite c!1290996 (reg!17418 r!13765) (ite c!1290997 (regOne!34691 r!13765) (regOne!34690 r!13765)))))))

(declare-fun b!6962475 () Bool)

(declare-fun e!4186075 () Bool)

(assert (=> b!6962475 (= e!4186075 e!4186076)))

(assert (=> b!6962475 (= c!1290996 ((_ is Star!17089) r!13765))))

(declare-fun b!6962476 () Bool)

(assert (=> b!6962476 (= e!4186071 call!632179)))

(declare-fun b!6962477 () Bool)

(declare-fun e!4186074 () Bool)

(assert (=> b!6962477 (= e!4186074 call!632177)))

(declare-fun b!6962478 () Bool)

(assert (=> b!6962478 (= e!4186073 e!4186074)))

(declare-fun res!2840820 () Bool)

(assert (=> b!6962478 (=> (not res!2840820) (not e!4186074))))

(declare-fun call!632178 () Bool)

(assert (=> b!6962478 (= res!2840820 call!632178)))

(declare-fun bm!632174 () Bool)

(assert (=> bm!632174 (= call!632178 call!632179)))

(declare-fun d!2170214 () Bool)

(declare-fun res!2840821 () Bool)

(assert (=> d!2170214 (=> res!2840821 e!4186075)))

(assert (=> d!2170214 (= res!2840821 ((_ is ElementMatch!17089) r!13765))))

(assert (=> d!2170214 (= (validRegex!8785 r!13765) e!4186075)))

(declare-fun b!6962479 () Bool)

(declare-fun res!2840822 () Bool)

(assert (=> b!6962479 (=> (not res!2840822) (not e!4186077))))

(assert (=> b!6962479 (= res!2840822 call!632178)))

(assert (=> b!6962479 (= e!4186072 e!4186077)))

(assert (= (and d!2170214 (not res!2840821)) b!6962475))

(assert (= (and b!6962475 c!1290996) b!6962473))

(assert (= (and b!6962475 (not c!1290996)) b!6962472))

(assert (= (and b!6962473 res!2840818) b!6962476))

(assert (= (and b!6962472 c!1290997) b!6962479))

(assert (= (and b!6962472 (not c!1290997)) b!6962471))

(assert (= (and b!6962479 res!2840822) b!6962474))

(assert (= (and b!6962471 (not res!2840819)) b!6962478))

(assert (= (and b!6962478 res!2840820) b!6962477))

(assert (= (or b!6962479 b!6962478) bm!632174))

(assert (= (or b!6962474 b!6962477) bm!632172))

(assert (= (or b!6962476 bm!632174) bm!632173))

(declare-fun m!7656632 () Bool)

(assert (=> b!6962473 m!7656632))

(declare-fun m!7656634 () Bool)

(assert (=> bm!632172 m!7656634))

(declare-fun m!7656636 () Bool)

(assert (=> bm!632173 m!7656636))

(assert (=> d!2170116 d!2170214))

(declare-fun d!2170216 () Bool)

(assert (=> d!2170216 (= (isUnion!1471 lt!2478973) ((_ is Union!17089) lt!2478973))))

(assert (=> b!6962097 d!2170216))

(declare-fun bs!1858433 () Bool)

(declare-fun b!6962489 () Bool)

(assert (= bs!1858433 (and b!6962489 b!6962067)))

(declare-fun lambda!397235 () Int)

(assert (=> bs!1858433 (not (= lambda!397235 lambda!397219))))

(declare-fun bs!1858434 () Bool)

(assert (= bs!1858434 (and b!6962489 b!6961859)))

(assert (=> bs!1858434 (not (= lambda!397235 lambda!397214))))

(declare-fun bs!1858435 () Bool)

(assert (= bs!1858435 (and b!6962489 b!6962432)))

(assert (=> bs!1858435 (not (= lambda!397235 lambda!397231))))

(declare-fun bs!1858436 () Bool)

(assert (= bs!1858436 (and b!6962489 b!6962448)))

(assert (=> bs!1858436 (= (and (= (reg!17418 (regTwo!34691 r!13765)) (reg!17418 (regTwo!34691 (regOne!34691 r!13765)))) (= (regTwo!34691 r!13765) (regTwo!34691 (regOne!34691 r!13765)))) (= lambda!397235 lambda!397232))))

(declare-fun bs!1858437 () Bool)

(assert (= bs!1858437 (and b!6962489 b!6962443)))

(assert (=> bs!1858437 (not (= lambda!397235 lambda!397233))))

(declare-fun bs!1858438 () Bool)

(assert (= bs!1858438 (and b!6962489 b!6961864)))

(assert (=> bs!1858438 (= (and (= (reg!17418 (regTwo!34691 r!13765)) (reg!17418 (regOne!34691 r!13765))) (= (regTwo!34691 r!13765) (regOne!34691 r!13765))) (= lambda!397235 lambda!397211))))

(declare-fun bs!1858439 () Bool)

(assert (= bs!1858439 (and b!6962489 b!6962072)))

(assert (=> bs!1858439 (= (and (= (reg!17418 (regTwo!34691 r!13765)) (reg!17418 r!13765)) (= (regTwo!34691 r!13765) r!13765)) (= lambda!397235 lambda!397218))))

(declare-fun bs!1858440 () Bool)

(assert (= bs!1858440 (and b!6962489 b!6962437)))

(assert (=> bs!1858440 (= (and (= (reg!17418 (regTwo!34691 r!13765)) (reg!17418 (regOne!34691 (regOne!34691 r!13765)))) (= (regTwo!34691 r!13765) (regOne!34691 (regOne!34691 r!13765)))) (= lambda!397235 lambda!397230))))

(assert (=> b!6962489 true))

(assert (=> b!6962489 true))

(declare-fun bs!1858441 () Bool)

(declare-fun b!6962484 () Bool)

(assert (= bs!1858441 (and b!6962484 b!6962067)))

(declare-fun lambda!397236 () Int)

(assert (=> bs!1858441 (= (and (= (regOne!34690 (regTwo!34691 r!13765)) (regOne!34690 r!13765)) (= (regTwo!34690 (regTwo!34691 r!13765)) (regTwo!34690 r!13765))) (= lambda!397236 lambda!397219))))

(declare-fun bs!1858442 () Bool)

(assert (= bs!1858442 (and b!6962484 b!6961859)))

(assert (=> bs!1858442 (= (and (= (regOne!34690 (regTwo!34691 r!13765)) (regOne!34690 (regOne!34691 r!13765))) (= (regTwo!34690 (regTwo!34691 r!13765)) (regTwo!34690 (regOne!34691 r!13765)))) (= lambda!397236 lambda!397214))))

(declare-fun bs!1858443 () Bool)

(assert (= bs!1858443 (and b!6962484 b!6962432)))

(assert (=> bs!1858443 (= (and (= (regOne!34690 (regTwo!34691 r!13765)) (regOne!34690 (regOne!34691 (regOne!34691 r!13765)))) (= (regTwo!34690 (regTwo!34691 r!13765)) (regTwo!34690 (regOne!34691 (regOne!34691 r!13765))))) (= lambda!397236 lambda!397231))))

(declare-fun bs!1858444 () Bool)

(assert (= bs!1858444 (and b!6962484 b!6962448)))

(assert (=> bs!1858444 (not (= lambda!397236 lambda!397232))))

(declare-fun bs!1858445 () Bool)

(assert (= bs!1858445 (and b!6962484 b!6962443)))

(assert (=> bs!1858445 (= (and (= (regOne!34690 (regTwo!34691 r!13765)) (regOne!34690 (regTwo!34691 (regOne!34691 r!13765)))) (= (regTwo!34690 (regTwo!34691 r!13765)) (regTwo!34690 (regTwo!34691 (regOne!34691 r!13765))))) (= lambda!397236 lambda!397233))))

(declare-fun bs!1858446 () Bool)

(assert (= bs!1858446 (and b!6962484 b!6961864)))

(assert (=> bs!1858446 (not (= lambda!397236 lambda!397211))))

(declare-fun bs!1858447 () Bool)

(assert (= bs!1858447 (and b!6962484 b!6962437)))

(assert (=> bs!1858447 (not (= lambda!397236 lambda!397230))))

(declare-fun bs!1858448 () Bool)

(assert (= bs!1858448 (and b!6962484 b!6962489)))

(assert (=> bs!1858448 (not (= lambda!397236 lambda!397235))))

(declare-fun bs!1858449 () Bool)

(assert (= bs!1858449 (and b!6962484 b!6962072)))

(assert (=> bs!1858449 (not (= lambda!397236 lambda!397218))))

(assert (=> b!6962484 true))

(assert (=> b!6962484 true))

(declare-fun b!6962480 () Bool)

(declare-fun res!2840825 () Bool)

(declare-fun e!4186080 () Bool)

(assert (=> b!6962480 (=> res!2840825 e!4186080)))

(declare-fun call!632180 () Bool)

(assert (=> b!6962480 (= res!2840825 call!632180)))

(declare-fun e!4186082 () Bool)

(assert (=> b!6962480 (= e!4186082 e!4186080)))

(declare-fun b!6962481 () Bool)

(declare-fun e!4186078 () Bool)

(assert (=> b!6962481 (= e!4186078 e!4186082)))

(declare-fun c!1291001 () Bool)

(assert (=> b!6962481 (= c!1291001 ((_ is Star!17089) (regTwo!34691 r!13765)))))

(declare-fun d!2170218 () Bool)

(declare-fun c!1291000 () Bool)

(assert (=> d!2170218 (= c!1291000 ((_ is EmptyExpr!17089) (regTwo!34691 r!13765)))))

(declare-fun e!4186079 () Bool)

(assert (=> d!2170218 (= (matchRSpec!4110 (regTwo!34691 r!13765) s!9351) e!4186079)))

(declare-fun b!6962482 () Bool)

(declare-fun c!1290998 () Bool)

(assert (=> b!6962482 (= c!1290998 ((_ is Union!17089) (regTwo!34691 r!13765)))))

(declare-fun e!4186084 () Bool)

(assert (=> b!6962482 (= e!4186084 e!4186078)))

(declare-fun bm!632175 () Bool)

(assert (=> bm!632175 (= call!632180 (isEmpty!38962 s!9351))))

(declare-fun b!6962483 () Bool)

(declare-fun e!4186083 () Bool)

(assert (=> b!6962483 (= e!4186083 (matchRSpec!4110 (regTwo!34691 (regTwo!34691 r!13765)) s!9351))))

(declare-fun call!632181 () Bool)

(declare-fun bm!632176 () Bool)

(assert (=> bm!632176 (= call!632181 (Exists!4073 (ite c!1291001 lambda!397235 lambda!397236)))))

(assert (=> b!6962484 (= e!4186082 call!632181)))

(declare-fun b!6962485 () Bool)

(assert (=> b!6962485 (= e!4186084 (= s!9351 (Cons!66740 (c!1290847 (regTwo!34691 r!13765)) Nil!66740)))))

(declare-fun b!6962486 () Bool)

(declare-fun c!1290999 () Bool)

(assert (=> b!6962486 (= c!1290999 ((_ is ElementMatch!17089) (regTwo!34691 r!13765)))))

(declare-fun e!4186081 () Bool)

(assert (=> b!6962486 (= e!4186081 e!4186084)))

(declare-fun b!6962487 () Bool)

(assert (=> b!6962487 (= e!4186079 call!632180)))

(declare-fun b!6962488 () Bool)

(assert (=> b!6962488 (= e!4186079 e!4186081)))

(declare-fun res!2840823 () Bool)

(assert (=> b!6962488 (= res!2840823 (not ((_ is EmptyLang!17089) (regTwo!34691 r!13765))))))

(assert (=> b!6962488 (=> (not res!2840823) (not e!4186081))))

(assert (=> b!6962489 (= e!4186080 call!632181)))

(declare-fun b!6962490 () Bool)

(assert (=> b!6962490 (= e!4186078 e!4186083)))

(declare-fun res!2840824 () Bool)

(assert (=> b!6962490 (= res!2840824 (matchRSpec!4110 (regOne!34691 (regTwo!34691 r!13765)) s!9351))))

(assert (=> b!6962490 (=> res!2840824 e!4186083)))

(assert (= (and d!2170218 c!1291000) b!6962487))

(assert (= (and d!2170218 (not c!1291000)) b!6962488))

(assert (= (and b!6962488 res!2840823) b!6962486))

(assert (= (and b!6962486 c!1290999) b!6962485))

(assert (= (and b!6962486 (not c!1290999)) b!6962482))

(assert (= (and b!6962482 c!1290998) b!6962490))

(assert (= (and b!6962482 (not c!1290998)) b!6962481))

(assert (= (and b!6962490 (not res!2840824)) b!6962483))

(assert (= (and b!6962481 c!1291001) b!6962480))

(assert (= (and b!6962481 (not c!1291001)) b!6962484))

(assert (= (and b!6962480 (not res!2840825)) b!6962489))

(assert (= (or b!6962489 b!6962484) bm!632176))

(assert (= (or b!6962487 b!6962480) bm!632175))

(assert (=> bm!632175 m!7656388))

(declare-fun m!7656638 () Bool)

(assert (=> b!6962483 m!7656638))

(declare-fun m!7656640 () Bool)

(assert (=> bm!632176 m!7656640))

(declare-fun m!7656642 () Bool)

(assert (=> b!6962490 m!7656642))

(assert (=> b!6962066 d!2170218))

(declare-fun d!2170220 () Bool)

(assert (=> d!2170220 (= (Exists!4073 (ite c!1290921 lambda!397218 lambda!397219)) (choose!51886 (ite c!1290921 lambda!397218 lambda!397219)))))

(declare-fun bs!1858450 () Bool)

(assert (= bs!1858450 d!2170220))

(declare-fun m!7656644 () Bool)

(assert (=> bs!1858450 m!7656644))

(assert (=> bm!632124 d!2170220))

(declare-fun b!6962491 () Bool)

(declare-fun res!2840830 () Bool)

(declare-fun e!4186085 () Bool)

(assert (=> b!6962491 (=> (not res!2840830) (not e!4186085))))

(assert (=> b!6962491 (= res!2840830 (isEmpty!38962 (tail!13043 (tail!13043 s!9351))))))

(declare-fun b!6962492 () Bool)

(declare-fun e!4186090 () Bool)

(declare-fun e!4186091 () Bool)

(assert (=> b!6962492 (= e!4186090 e!4186091)))

(declare-fun c!1291002 () Bool)

(assert (=> b!6962492 (= c!1291002 ((_ is EmptyLang!17089) (derivativeStep!5518 r!13765 (head!13983 s!9351))))))

(declare-fun d!2170222 () Bool)

(assert (=> d!2170222 e!4186090))

(declare-fun c!1291004 () Bool)

(assert (=> d!2170222 (= c!1291004 ((_ is EmptyExpr!17089) (derivativeStep!5518 r!13765 (head!13983 s!9351))))))

(declare-fun lt!2478980 () Bool)

(declare-fun e!4186088 () Bool)

(assert (=> d!2170222 (= lt!2478980 e!4186088)))

(declare-fun c!1291003 () Bool)

(assert (=> d!2170222 (= c!1291003 (isEmpty!38962 (tail!13043 s!9351)))))

(assert (=> d!2170222 (validRegex!8785 (derivativeStep!5518 r!13765 (head!13983 s!9351)))))

(assert (=> d!2170222 (= (matchR!9195 (derivativeStep!5518 r!13765 (head!13983 s!9351)) (tail!13043 s!9351)) lt!2478980)))

(declare-fun b!6962493 () Bool)

(declare-fun res!2840829 () Bool)

(declare-fun e!4186087 () Bool)

(assert (=> b!6962493 (=> res!2840829 e!4186087)))

(assert (=> b!6962493 (= res!2840829 e!4186085)))

(declare-fun res!2840831 () Bool)

(assert (=> b!6962493 (=> (not res!2840831) (not e!4186085))))

(assert (=> b!6962493 (= res!2840831 lt!2478980)))

(declare-fun b!6962494 () Bool)

(declare-fun e!4186086 () Bool)

(declare-fun e!4186089 () Bool)

(assert (=> b!6962494 (= e!4186086 e!4186089)))

(declare-fun res!2840828 () Bool)

(assert (=> b!6962494 (=> res!2840828 e!4186089)))

(declare-fun call!632182 () Bool)

(assert (=> b!6962494 (= res!2840828 call!632182)))

(declare-fun b!6962495 () Bool)

(assert (=> b!6962495 (= e!4186085 (= (head!13983 (tail!13043 s!9351)) (c!1290847 (derivativeStep!5518 r!13765 (head!13983 s!9351)))))))

(declare-fun b!6962496 () Bool)

(declare-fun res!2840826 () Bool)

(assert (=> b!6962496 (=> res!2840826 e!4186089)))

(assert (=> b!6962496 (= res!2840826 (not (isEmpty!38962 (tail!13043 (tail!13043 s!9351)))))))

(declare-fun b!6962497 () Bool)

(assert (=> b!6962497 (= e!4186087 e!4186086)))

(declare-fun res!2840827 () Bool)

(assert (=> b!6962497 (=> (not res!2840827) (not e!4186086))))

(assert (=> b!6962497 (= res!2840827 (not lt!2478980))))

(declare-fun b!6962498 () Bool)

(declare-fun res!2840833 () Bool)

(assert (=> b!6962498 (=> res!2840833 e!4186087)))

(assert (=> b!6962498 (= res!2840833 (not ((_ is ElementMatch!17089) (derivativeStep!5518 r!13765 (head!13983 s!9351)))))))

(assert (=> b!6962498 (= e!4186091 e!4186087)))

(declare-fun b!6962499 () Bool)

(declare-fun res!2840832 () Bool)

(assert (=> b!6962499 (=> (not res!2840832) (not e!4186085))))

(assert (=> b!6962499 (= res!2840832 (not call!632182))))

(declare-fun b!6962500 () Bool)

(assert (=> b!6962500 (= e!4186088 (matchR!9195 (derivativeStep!5518 (derivativeStep!5518 r!13765 (head!13983 s!9351)) (head!13983 (tail!13043 s!9351))) (tail!13043 (tail!13043 s!9351))))))

(declare-fun bm!632177 () Bool)

(assert (=> bm!632177 (= call!632182 (isEmpty!38962 (tail!13043 s!9351)))))

(declare-fun b!6962501 () Bool)

(assert (=> b!6962501 (= e!4186089 (not (= (head!13983 (tail!13043 s!9351)) (c!1290847 (derivativeStep!5518 r!13765 (head!13983 s!9351))))))))

(declare-fun b!6962502 () Bool)

(assert (=> b!6962502 (= e!4186091 (not lt!2478980))))

(declare-fun b!6962503 () Bool)

(assert (=> b!6962503 (= e!4186090 (= lt!2478980 call!632182))))

(declare-fun b!6962504 () Bool)

(assert (=> b!6962504 (= e!4186088 (nullable!6892 (derivativeStep!5518 r!13765 (head!13983 s!9351))))))

(assert (= (and d!2170222 c!1291003) b!6962504))

(assert (= (and d!2170222 (not c!1291003)) b!6962500))

(assert (= (and d!2170222 c!1291004) b!6962503))

(assert (= (and d!2170222 (not c!1291004)) b!6962492))

(assert (= (and b!6962492 c!1291002) b!6962502))

(assert (= (and b!6962492 (not c!1291002)) b!6962498))

(assert (= (and b!6962498 (not res!2840833)) b!6962493))

(assert (= (and b!6962493 res!2840831) b!6962499))

(assert (= (and b!6962499 res!2840832) b!6962491))

(assert (= (and b!6962491 res!2840830) b!6962495))

(assert (= (and b!6962493 (not res!2840829)) b!6962497))

(assert (= (and b!6962497 res!2840827) b!6962494))

(assert (= (and b!6962494 (not res!2840828)) b!6962496))

(assert (= (and b!6962496 (not res!2840826)) b!6962501))

(assert (= (or b!6962503 b!6962494 b!6962499) bm!632177))

(assert (=> b!6962495 m!7656436))

(declare-fun m!7656646 () Bool)

(assert (=> b!6962495 m!7656646))

(assert (=> b!6962504 m!7656442))

(declare-fun m!7656648 () Bool)

(assert (=> b!6962504 m!7656648))

(assert (=> b!6962496 m!7656436))

(declare-fun m!7656650 () Bool)

(assert (=> b!6962496 m!7656650))

(assert (=> b!6962496 m!7656650))

(declare-fun m!7656652 () Bool)

(assert (=> b!6962496 m!7656652))

(assert (=> b!6962501 m!7656436))

(assert (=> b!6962501 m!7656646))

(assert (=> d!2170222 m!7656436))

(assert (=> d!2170222 m!7656438))

(assert (=> d!2170222 m!7656442))

(declare-fun m!7656654 () Bool)

(assert (=> d!2170222 m!7656654))

(assert (=> bm!632177 m!7656436))

(assert (=> bm!632177 m!7656438))

(assert (=> b!6962491 m!7656436))

(assert (=> b!6962491 m!7656650))

(assert (=> b!6962491 m!7656650))

(assert (=> b!6962491 m!7656652))

(assert (=> b!6962500 m!7656436))

(assert (=> b!6962500 m!7656646))

(assert (=> b!6962500 m!7656442))

(assert (=> b!6962500 m!7656646))

(declare-fun m!7656656 () Bool)

(assert (=> b!6962500 m!7656656))

(assert (=> b!6962500 m!7656436))

(assert (=> b!6962500 m!7656650))

(assert (=> b!6962500 m!7656656))

(assert (=> b!6962500 m!7656650))

(declare-fun m!7656658 () Bool)

(assert (=> b!6962500 m!7656658))

(assert (=> b!6962058 d!2170222))

(declare-fun b!6962525 () Bool)

(declare-fun e!4186103 () Regex!17089)

(assert (=> b!6962525 (= e!4186103 EmptyLang!17089)))

(declare-fun bm!632186 () Bool)

(declare-fun call!632194 () Regex!17089)

(declare-fun c!1291019 () Bool)

(assert (=> bm!632186 (= call!632194 (derivativeStep!5518 (ite c!1291019 (regTwo!34691 r!13765) (regOne!34690 r!13765)) (head!13983 s!9351)))))

(declare-fun c!1291017 () Bool)

(declare-fun call!632192 () Regex!17089)

(declare-fun c!1291018 () Bool)

(declare-fun bm!632187 () Bool)

(assert (=> bm!632187 (= call!632192 (derivativeStep!5518 (ite c!1291019 (regOne!34691 r!13765) (ite c!1291017 (reg!17418 r!13765) (ite c!1291018 (regTwo!34690 r!13765) (regOne!34690 r!13765)))) (head!13983 s!9351)))))

(declare-fun b!6962526 () Bool)

(assert (=> b!6962526 (= c!1291018 (nullable!6892 (regOne!34690 r!13765)))))

(declare-fun e!4186102 () Regex!17089)

(declare-fun e!4186105 () Regex!17089)

(assert (=> b!6962526 (= e!4186102 e!4186105)))

(declare-fun bm!632188 () Bool)

(declare-fun call!632193 () Regex!17089)

(assert (=> bm!632188 (= call!632193 call!632192)))

(declare-fun b!6962527 () Bool)

(declare-fun call!632191 () Regex!17089)

(assert (=> b!6962527 (= e!4186105 (Union!17089 (Concat!25934 call!632191 (regTwo!34690 r!13765)) EmptyLang!17089))))

(declare-fun b!6962528 () Bool)

(declare-fun e!4186106 () Regex!17089)

(assert (=> b!6962528 (= e!4186103 e!4186106)))

(declare-fun c!1291016 () Bool)

(assert (=> b!6962528 (= c!1291016 ((_ is ElementMatch!17089) r!13765))))

(declare-fun d!2170224 () Bool)

(declare-fun lt!2478983 () Regex!17089)

(assert (=> d!2170224 (validRegex!8785 lt!2478983)))

(assert (=> d!2170224 (= lt!2478983 e!4186103)))

(declare-fun c!1291015 () Bool)

(assert (=> d!2170224 (= c!1291015 (or ((_ is EmptyExpr!17089) r!13765) ((_ is EmptyLang!17089) r!13765)))))

(assert (=> d!2170224 (validRegex!8785 r!13765)))

(assert (=> d!2170224 (= (derivativeStep!5518 r!13765 (head!13983 s!9351)) lt!2478983)))

(declare-fun b!6962529 () Bool)

(assert (=> b!6962529 (= c!1291019 ((_ is Union!17089) r!13765))))

(declare-fun e!4186104 () Regex!17089)

(assert (=> b!6962529 (= e!4186106 e!4186104)))

(declare-fun bm!632189 () Bool)

(assert (=> bm!632189 (= call!632191 call!632193)))

(declare-fun b!6962530 () Bool)

(assert (=> b!6962530 (= e!4186104 e!4186102)))

(assert (=> b!6962530 (= c!1291017 ((_ is Star!17089) r!13765))))

(declare-fun b!6962531 () Bool)

(assert (=> b!6962531 (= e!4186104 (Union!17089 call!632192 call!632194))))

(declare-fun b!6962532 () Bool)

(assert (=> b!6962532 (= e!4186106 (ite (= (head!13983 s!9351) (c!1290847 r!13765)) EmptyExpr!17089 EmptyLang!17089))))

(declare-fun b!6962533 () Bool)

(assert (=> b!6962533 (= e!4186102 (Concat!25934 call!632193 r!13765))))

(declare-fun b!6962534 () Bool)

(assert (=> b!6962534 (= e!4186105 (Union!17089 (Concat!25934 call!632194 (regTwo!34690 r!13765)) call!632191))))

(assert (= (and d!2170224 c!1291015) b!6962525))

(assert (= (and d!2170224 (not c!1291015)) b!6962528))

(assert (= (and b!6962528 c!1291016) b!6962532))

(assert (= (and b!6962528 (not c!1291016)) b!6962529))

(assert (= (and b!6962529 c!1291019) b!6962531))

(assert (= (and b!6962529 (not c!1291019)) b!6962530))

(assert (= (and b!6962530 c!1291017) b!6962533))

(assert (= (and b!6962530 (not c!1291017)) b!6962526))

(assert (= (and b!6962526 c!1291018) b!6962534))

(assert (= (and b!6962526 (not c!1291018)) b!6962527))

(assert (= (or b!6962534 b!6962527) bm!632189))

(assert (= (or b!6962533 bm!632189) bm!632188))

(assert (= (or b!6962531 bm!632188) bm!632187))

(assert (= (or b!6962531 b!6962534) bm!632186))

(assert (=> bm!632186 m!7656432))

(declare-fun m!7656660 () Bool)

(assert (=> bm!632186 m!7656660))

(assert (=> bm!632187 m!7656432))

(declare-fun m!7656662 () Bool)

(assert (=> bm!632187 m!7656662))

(declare-fun m!7656664 () Bool)

(assert (=> b!6962526 m!7656664))

(declare-fun m!7656666 () Bool)

(assert (=> d!2170224 m!7656666))

(assert (=> d!2170224 m!7656440))

(assert (=> b!6962058 d!2170224))

(assert (=> b!6962058 d!2170188))

(assert (=> b!6962058 d!2170210))

(assert (=> bm!632123 d!2170194))

(assert (=> d!2170120 d!2170116))

(assert (=> d!2170120 d!2170118))

(declare-fun d!2170226 () Bool)

(assert (=> d!2170226 (= (matchR!9195 r!13765 s!9351) (matchRSpec!4110 r!13765 s!9351))))

(assert (=> d!2170226 true))

(declare-fun _$88!5750 () Unit!160838)

(assert (=> d!2170226 (= (choose!51884 r!13765 s!9351) _$88!5750)))

(declare-fun bs!1858451 () Bool)

(assert (= bs!1858451 d!2170226))

(assert (=> bs!1858451 m!7656346))

(assert (=> bs!1858451 m!7656348))

(assert (=> d!2170120 d!2170226))

(assert (=> d!2170120 d!2170214))

(declare-fun d!2170228 () Bool)

(assert (=> d!2170228 (= (head!13984 l!9142) (h!73187 l!9142))))

(assert (=> b!6962096 d!2170228))

(declare-fun b!6962535 () Bool)

(declare-fun res!2840835 () Bool)

(declare-fun e!4186109 () Bool)

(assert (=> b!6962535 (=> res!2840835 e!4186109)))

(assert (=> b!6962535 (= res!2840835 (not ((_ is Concat!25934) lt!2478973)))))

(declare-fun e!4186108 () Bool)

(assert (=> b!6962535 (= e!4186108 e!4186109)))

(declare-fun b!6962536 () Bool)

(declare-fun e!4186112 () Bool)

(assert (=> b!6962536 (= e!4186112 e!4186108)))

(declare-fun c!1291021 () Bool)

(assert (=> b!6962536 (= c!1291021 ((_ is Union!17089) lt!2478973))))

(declare-fun b!6962537 () Bool)

(declare-fun e!4186107 () Bool)

(assert (=> b!6962537 (= e!4186112 e!4186107)))

(declare-fun res!2840834 () Bool)

(assert (=> b!6962537 (= res!2840834 (not (nullable!6892 (reg!17418 lt!2478973))))))

(assert (=> b!6962537 (=> (not res!2840834) (not e!4186107))))

(declare-fun bm!632190 () Bool)

(declare-fun call!632195 () Bool)

(assert (=> bm!632190 (= call!632195 (validRegex!8785 (ite c!1291021 (regTwo!34691 lt!2478973) (regTwo!34690 lt!2478973))))))

(declare-fun b!6962538 () Bool)

(declare-fun e!4186113 () Bool)

(assert (=> b!6962538 (= e!4186113 call!632195)))

(declare-fun c!1291020 () Bool)

(declare-fun call!632197 () Bool)

(declare-fun bm!632191 () Bool)

(assert (=> bm!632191 (= call!632197 (validRegex!8785 (ite c!1291020 (reg!17418 lt!2478973) (ite c!1291021 (regOne!34691 lt!2478973) (regOne!34690 lt!2478973)))))))

(declare-fun b!6962539 () Bool)

(declare-fun e!4186111 () Bool)

(assert (=> b!6962539 (= e!4186111 e!4186112)))

(assert (=> b!6962539 (= c!1291020 ((_ is Star!17089) lt!2478973))))

(declare-fun b!6962540 () Bool)

(assert (=> b!6962540 (= e!4186107 call!632197)))

(declare-fun b!6962541 () Bool)

(declare-fun e!4186110 () Bool)

(assert (=> b!6962541 (= e!4186110 call!632195)))

(declare-fun b!6962542 () Bool)

(assert (=> b!6962542 (= e!4186109 e!4186110)))

(declare-fun res!2840836 () Bool)

(assert (=> b!6962542 (=> (not res!2840836) (not e!4186110))))

(declare-fun call!632196 () Bool)

(assert (=> b!6962542 (= res!2840836 call!632196)))

(declare-fun bm!632192 () Bool)

(assert (=> bm!632192 (= call!632196 call!632197)))

(declare-fun d!2170230 () Bool)

(declare-fun res!2840837 () Bool)

(assert (=> d!2170230 (=> res!2840837 e!4186111)))

(assert (=> d!2170230 (= res!2840837 ((_ is ElementMatch!17089) lt!2478973))))

(assert (=> d!2170230 (= (validRegex!8785 lt!2478973) e!4186111)))

(declare-fun b!6962543 () Bool)

(declare-fun res!2840838 () Bool)

(assert (=> b!6962543 (=> (not res!2840838) (not e!4186113))))

(assert (=> b!6962543 (= res!2840838 call!632196)))

(assert (=> b!6962543 (= e!4186108 e!4186113)))

(assert (= (and d!2170230 (not res!2840837)) b!6962539))

(assert (= (and b!6962539 c!1291020) b!6962537))

(assert (= (and b!6962539 (not c!1291020)) b!6962536))

(assert (= (and b!6962537 res!2840834) b!6962540))

(assert (= (and b!6962536 c!1291021) b!6962543))

(assert (= (and b!6962536 (not c!1291021)) b!6962535))

(assert (= (and b!6962543 res!2840838) b!6962538))

(assert (= (and b!6962535 (not res!2840835)) b!6962542))

(assert (= (and b!6962542 res!2840836) b!6962541))

(assert (= (or b!6962543 b!6962542) bm!632192))

(assert (= (or b!6962538 b!6962541) bm!632190))

(assert (= (or b!6962540 bm!632192) bm!632191))

(declare-fun m!7656668 () Bool)

(assert (=> b!6962537 m!7656668))

(declare-fun m!7656670 () Bool)

(assert (=> bm!632190 m!7656670))

(declare-fun m!7656672 () Bool)

(assert (=> bm!632191 m!7656672))

(assert (=> d!2170122 d!2170230))

(declare-fun d!2170232 () Bool)

(declare-fun res!2840839 () Bool)

(declare-fun e!4186114 () Bool)

(assert (=> d!2170232 (=> res!2840839 e!4186114)))

(assert (=> d!2170232 (= res!2840839 ((_ is Nil!66739) l!9142))))

(assert (=> d!2170232 (= (forall!15960 l!9142 lambda!397222) e!4186114)))

(declare-fun b!6962544 () Bool)

(declare-fun e!4186115 () Bool)

(assert (=> b!6962544 (= e!4186114 e!4186115)))

(declare-fun res!2840840 () Bool)

(assert (=> b!6962544 (=> (not res!2840840) (not e!4186115))))

(assert (=> b!6962544 (= res!2840840 (dynLambda!26614 lambda!397222 (h!73187 l!9142)))))

(declare-fun b!6962545 () Bool)

(assert (=> b!6962545 (= e!4186115 (forall!15960 (t!380606 l!9142) lambda!397222))))

(assert (= (and d!2170232 (not res!2840839)) b!6962544))

(assert (= (and b!6962544 res!2840840) b!6962545))

(declare-fun b_lambda!260587 () Bool)

(assert (=> (not b_lambda!260587) (not b!6962544)))

(declare-fun m!7656674 () Bool)

(assert (=> b!6962544 m!7656674))

(declare-fun m!7656676 () Bool)

(assert (=> b!6962545 m!7656676))

(assert (=> d!2170122 d!2170232))

(assert (=> b!6962049 d!2170208))

(assert (=> b!6962049 d!2170210))

(assert (=> b!6962053 d!2170188))

(declare-fun b!6962547 () Bool)

(declare-fun e!4186116 () Bool)

(declare-fun tp!1919727 () Bool)

(declare-fun tp!1919729 () Bool)

(assert (=> b!6962547 (= e!4186116 (and tp!1919727 tp!1919729))))

(assert (=> b!6962126 (= tp!1919537 e!4186116)))

(declare-fun b!6962549 () Bool)

(declare-fun tp!1919726 () Bool)

(declare-fun tp!1919728 () Bool)

(assert (=> b!6962549 (= e!4186116 (and tp!1919726 tp!1919728))))

(declare-fun b!6962548 () Bool)

(declare-fun tp!1919730 () Bool)

(assert (=> b!6962548 (= e!4186116 tp!1919730)))

(declare-fun b!6962546 () Bool)

(assert (=> b!6962546 (= e!4186116 tp_is_empty!43403)))

(assert (= (and b!6962126 ((_ is ElementMatch!17089) (regOne!34691 (h!73187 l!9142)))) b!6962546))

(assert (= (and b!6962126 ((_ is Concat!25934) (regOne!34691 (h!73187 l!9142)))) b!6962547))

(assert (= (and b!6962126 ((_ is Star!17089) (regOne!34691 (h!73187 l!9142)))) b!6962548))

(assert (= (and b!6962126 ((_ is Union!17089) (regOne!34691 (h!73187 l!9142)))) b!6962549))

(declare-fun b!6962551 () Bool)

(declare-fun e!4186117 () Bool)

(declare-fun tp!1919732 () Bool)

(declare-fun tp!1919734 () Bool)

(assert (=> b!6962551 (= e!4186117 (and tp!1919732 tp!1919734))))

(assert (=> b!6962126 (= tp!1919539 e!4186117)))

(declare-fun b!6962553 () Bool)

(declare-fun tp!1919731 () Bool)

(declare-fun tp!1919733 () Bool)

(assert (=> b!6962553 (= e!4186117 (and tp!1919731 tp!1919733))))

(declare-fun b!6962552 () Bool)

(declare-fun tp!1919735 () Bool)

(assert (=> b!6962552 (= e!4186117 tp!1919735)))

(declare-fun b!6962550 () Bool)

(assert (=> b!6962550 (= e!4186117 tp_is_empty!43403)))

(assert (= (and b!6962126 ((_ is ElementMatch!17089) (regTwo!34691 (h!73187 l!9142)))) b!6962550))

(assert (= (and b!6962126 ((_ is Concat!25934) (regTwo!34691 (h!73187 l!9142)))) b!6962551))

(assert (= (and b!6962126 ((_ is Star!17089) (regTwo!34691 (h!73187 l!9142)))) b!6962552))

(assert (= (and b!6962126 ((_ is Union!17089) (regTwo!34691 (h!73187 l!9142)))) b!6962553))

(declare-fun b!6962555 () Bool)

(declare-fun e!4186118 () Bool)

(declare-fun tp!1919737 () Bool)

(declare-fun tp!1919739 () Bool)

(assert (=> b!6962555 (= e!4186118 (and tp!1919737 tp!1919739))))

(assert (=> b!6962124 (= tp!1919538 e!4186118)))

(declare-fun b!6962557 () Bool)

(declare-fun tp!1919736 () Bool)

(declare-fun tp!1919738 () Bool)

(assert (=> b!6962557 (= e!4186118 (and tp!1919736 tp!1919738))))

(declare-fun b!6962556 () Bool)

(declare-fun tp!1919740 () Bool)

(assert (=> b!6962556 (= e!4186118 tp!1919740)))

(declare-fun b!6962554 () Bool)

(assert (=> b!6962554 (= e!4186118 tp_is_empty!43403)))

(assert (= (and b!6962124 ((_ is ElementMatch!17089) (regOne!34690 (h!73187 l!9142)))) b!6962554))

(assert (= (and b!6962124 ((_ is Concat!25934) (regOne!34690 (h!73187 l!9142)))) b!6962555))

(assert (= (and b!6962124 ((_ is Star!17089) (regOne!34690 (h!73187 l!9142)))) b!6962556))

(assert (= (and b!6962124 ((_ is Union!17089) (regOne!34690 (h!73187 l!9142)))) b!6962557))

(declare-fun b!6962559 () Bool)

(declare-fun e!4186119 () Bool)

(declare-fun tp!1919742 () Bool)

(declare-fun tp!1919744 () Bool)

(assert (=> b!6962559 (= e!4186119 (and tp!1919742 tp!1919744))))

(assert (=> b!6962124 (= tp!1919540 e!4186119)))

(declare-fun b!6962561 () Bool)

(declare-fun tp!1919741 () Bool)

(declare-fun tp!1919743 () Bool)

(assert (=> b!6962561 (= e!4186119 (and tp!1919741 tp!1919743))))

(declare-fun b!6962560 () Bool)

(declare-fun tp!1919745 () Bool)

(assert (=> b!6962560 (= e!4186119 tp!1919745)))

(declare-fun b!6962558 () Bool)

(assert (=> b!6962558 (= e!4186119 tp_is_empty!43403)))

(assert (= (and b!6962124 ((_ is ElementMatch!17089) (regTwo!34690 (h!73187 l!9142)))) b!6962558))

(assert (= (and b!6962124 ((_ is Concat!25934) (regTwo!34690 (h!73187 l!9142)))) b!6962559))

(assert (= (and b!6962124 ((_ is Star!17089) (regTwo!34690 (h!73187 l!9142)))) b!6962560))

(assert (= (and b!6962124 ((_ is Union!17089) (regTwo!34690 (h!73187 l!9142)))) b!6962561))

(declare-fun b!6962563 () Bool)

(declare-fun e!4186120 () Bool)

(declare-fun tp!1919747 () Bool)

(declare-fun tp!1919749 () Bool)

(assert (=> b!6962563 (= e!4186120 (and tp!1919747 tp!1919749))))

(assert (=> b!6962125 (= tp!1919541 e!4186120)))

(declare-fun b!6962565 () Bool)

(declare-fun tp!1919746 () Bool)

(declare-fun tp!1919748 () Bool)

(assert (=> b!6962565 (= e!4186120 (and tp!1919746 tp!1919748))))

(declare-fun b!6962564 () Bool)

(declare-fun tp!1919750 () Bool)

(assert (=> b!6962564 (= e!4186120 tp!1919750)))

(declare-fun b!6962562 () Bool)

(assert (=> b!6962562 (= e!4186120 tp_is_empty!43403)))

(assert (= (and b!6962125 ((_ is ElementMatch!17089) (reg!17418 (h!73187 l!9142)))) b!6962562))

(assert (= (and b!6962125 ((_ is Concat!25934) (reg!17418 (h!73187 l!9142)))) b!6962563))

(assert (= (and b!6962125 ((_ is Star!17089) (reg!17418 (h!73187 l!9142)))) b!6962564))

(assert (= (and b!6962125 ((_ is Union!17089) (reg!17418 (h!73187 l!9142)))) b!6962565))

(declare-fun b!6962567 () Bool)

(declare-fun e!4186121 () Bool)

(declare-fun tp!1919752 () Bool)

(declare-fun tp!1919754 () Bool)

(assert (=> b!6962567 (= e!4186121 (and tp!1919752 tp!1919754))))

(assert (=> b!6962145 (= tp!1919564 e!4186121)))

(declare-fun b!6962569 () Bool)

(declare-fun tp!1919751 () Bool)

(declare-fun tp!1919753 () Bool)

(assert (=> b!6962569 (= e!4186121 (and tp!1919751 tp!1919753))))

(declare-fun b!6962568 () Bool)

(declare-fun tp!1919755 () Bool)

(assert (=> b!6962568 (= e!4186121 tp!1919755)))

(declare-fun b!6962566 () Bool)

(assert (=> b!6962566 (= e!4186121 tp_is_empty!43403)))

(assert (= (and b!6962145 ((_ is ElementMatch!17089) (regOne!34690 (regTwo!34691 r!13765)))) b!6962566))

(assert (= (and b!6962145 ((_ is Concat!25934) (regOne!34690 (regTwo!34691 r!13765)))) b!6962567))

(assert (= (and b!6962145 ((_ is Star!17089) (regOne!34690 (regTwo!34691 r!13765)))) b!6962568))

(assert (= (and b!6962145 ((_ is Union!17089) (regOne!34690 (regTwo!34691 r!13765)))) b!6962569))

(declare-fun b!6962571 () Bool)

(declare-fun e!4186122 () Bool)

(declare-fun tp!1919757 () Bool)

(declare-fun tp!1919759 () Bool)

(assert (=> b!6962571 (= e!4186122 (and tp!1919757 tp!1919759))))

(assert (=> b!6962145 (= tp!1919566 e!4186122)))

(declare-fun b!6962573 () Bool)

(declare-fun tp!1919756 () Bool)

(declare-fun tp!1919758 () Bool)

(assert (=> b!6962573 (= e!4186122 (and tp!1919756 tp!1919758))))

(declare-fun b!6962572 () Bool)

(declare-fun tp!1919760 () Bool)

(assert (=> b!6962572 (= e!4186122 tp!1919760)))

(declare-fun b!6962570 () Bool)

(assert (=> b!6962570 (= e!4186122 tp_is_empty!43403)))

(assert (= (and b!6962145 ((_ is ElementMatch!17089) (regTwo!34690 (regTwo!34691 r!13765)))) b!6962570))

(assert (= (and b!6962145 ((_ is Concat!25934) (regTwo!34690 (regTwo!34691 r!13765)))) b!6962571))

(assert (= (and b!6962145 ((_ is Star!17089) (regTwo!34690 (regTwo!34691 r!13765)))) b!6962572))

(assert (= (and b!6962145 ((_ is Union!17089) (regTwo!34690 (regTwo!34691 r!13765)))) b!6962573))

(declare-fun b!6962574 () Bool)

(declare-fun e!4186123 () Bool)

(declare-fun tp!1919761 () Bool)

(assert (=> b!6962574 (= e!4186123 (and tp_is_empty!43403 tp!1919761))))

(assert (=> b!6962122 (= tp!1919536 e!4186123)))

(assert (= (and b!6962122 ((_ is Cons!66740) (t!380607 (t!380607 s!9351)))) b!6962574))

(declare-fun b!6962576 () Bool)

(declare-fun e!4186124 () Bool)

(declare-fun tp!1919763 () Bool)

(declare-fun tp!1919765 () Bool)

(assert (=> b!6962576 (= e!4186124 (and tp!1919763 tp!1919765))))

(assert (=> b!6962133 (= tp!1919549 e!4186124)))

(declare-fun b!6962578 () Bool)

(declare-fun tp!1919762 () Bool)

(declare-fun tp!1919764 () Bool)

(assert (=> b!6962578 (= e!4186124 (and tp!1919762 tp!1919764))))

(declare-fun b!6962577 () Bool)

(declare-fun tp!1919766 () Bool)

(assert (=> b!6962577 (= e!4186124 tp!1919766)))

(declare-fun b!6962575 () Bool)

(assert (=> b!6962575 (= e!4186124 tp_is_empty!43403)))

(assert (= (and b!6962133 ((_ is ElementMatch!17089) (regOne!34690 (regOne!34690 r!13765)))) b!6962575))

(assert (= (and b!6962133 ((_ is Concat!25934) (regOne!34690 (regOne!34690 r!13765)))) b!6962576))

(assert (= (and b!6962133 ((_ is Star!17089) (regOne!34690 (regOne!34690 r!13765)))) b!6962577))

(assert (= (and b!6962133 ((_ is Union!17089) (regOne!34690 (regOne!34690 r!13765)))) b!6962578))

(declare-fun b!6962580 () Bool)

(declare-fun e!4186125 () Bool)

(declare-fun tp!1919768 () Bool)

(declare-fun tp!1919770 () Bool)

(assert (=> b!6962580 (= e!4186125 (and tp!1919768 tp!1919770))))

(assert (=> b!6962133 (= tp!1919551 e!4186125)))

(declare-fun b!6962582 () Bool)

(declare-fun tp!1919767 () Bool)

(declare-fun tp!1919769 () Bool)

(assert (=> b!6962582 (= e!4186125 (and tp!1919767 tp!1919769))))

(declare-fun b!6962581 () Bool)

(declare-fun tp!1919771 () Bool)

(assert (=> b!6962581 (= e!4186125 tp!1919771)))

(declare-fun b!6962579 () Bool)

(assert (=> b!6962579 (= e!4186125 tp_is_empty!43403)))

(assert (= (and b!6962133 ((_ is ElementMatch!17089) (regTwo!34690 (regOne!34690 r!13765)))) b!6962579))

(assert (= (and b!6962133 ((_ is Concat!25934) (regTwo!34690 (regOne!34690 r!13765)))) b!6962580))

(assert (= (and b!6962133 ((_ is Star!17089) (regTwo!34690 (regOne!34690 r!13765)))) b!6962581))

(assert (= (and b!6962133 ((_ is Union!17089) (regTwo!34690 (regOne!34690 r!13765)))) b!6962582))

(declare-fun b!6962584 () Bool)

(declare-fun e!4186126 () Bool)

(declare-fun tp!1919773 () Bool)

(declare-fun tp!1919775 () Bool)

(assert (=> b!6962584 (= e!4186126 (and tp!1919773 tp!1919775))))

(assert (=> b!6962147 (= tp!1919563 e!4186126)))

(declare-fun b!6962586 () Bool)

(declare-fun tp!1919772 () Bool)

(declare-fun tp!1919774 () Bool)

(assert (=> b!6962586 (= e!4186126 (and tp!1919772 tp!1919774))))

(declare-fun b!6962585 () Bool)

(declare-fun tp!1919776 () Bool)

(assert (=> b!6962585 (= e!4186126 tp!1919776)))

(declare-fun b!6962583 () Bool)

(assert (=> b!6962583 (= e!4186126 tp_is_empty!43403)))

(assert (= (and b!6962147 ((_ is ElementMatch!17089) (regOne!34691 (regTwo!34691 r!13765)))) b!6962583))

(assert (= (and b!6962147 ((_ is Concat!25934) (regOne!34691 (regTwo!34691 r!13765)))) b!6962584))

(assert (= (and b!6962147 ((_ is Star!17089) (regOne!34691 (regTwo!34691 r!13765)))) b!6962585))

(assert (= (and b!6962147 ((_ is Union!17089) (regOne!34691 (regTwo!34691 r!13765)))) b!6962586))

(declare-fun b!6962588 () Bool)

(declare-fun e!4186127 () Bool)

(declare-fun tp!1919778 () Bool)

(declare-fun tp!1919780 () Bool)

(assert (=> b!6962588 (= e!4186127 (and tp!1919778 tp!1919780))))

(assert (=> b!6962147 (= tp!1919565 e!4186127)))

(declare-fun b!6962590 () Bool)

(declare-fun tp!1919777 () Bool)

(declare-fun tp!1919779 () Bool)

(assert (=> b!6962590 (= e!4186127 (and tp!1919777 tp!1919779))))

(declare-fun b!6962589 () Bool)

(declare-fun tp!1919781 () Bool)

(assert (=> b!6962589 (= e!4186127 tp!1919781)))

(declare-fun b!6962587 () Bool)

(assert (=> b!6962587 (= e!4186127 tp_is_empty!43403)))

(assert (= (and b!6962147 ((_ is ElementMatch!17089) (regTwo!34691 (regTwo!34691 r!13765)))) b!6962587))

(assert (= (and b!6962147 ((_ is Concat!25934) (regTwo!34691 (regTwo!34691 r!13765)))) b!6962588))

(assert (= (and b!6962147 ((_ is Star!17089) (regTwo!34691 (regTwo!34691 r!13765)))) b!6962589))

(assert (= (and b!6962147 ((_ is Union!17089) (regTwo!34691 (regTwo!34691 r!13765)))) b!6962590))

(declare-fun b!6962592 () Bool)

(declare-fun e!4186128 () Bool)

(declare-fun tp!1919783 () Bool)

(declare-fun tp!1919785 () Bool)

(assert (=> b!6962592 (= e!4186128 (and tp!1919783 tp!1919785))))

(assert (=> b!6962115 (= tp!1919530 e!4186128)))

(declare-fun b!6962594 () Bool)

(declare-fun tp!1919782 () Bool)

(declare-fun tp!1919784 () Bool)

(assert (=> b!6962594 (= e!4186128 (and tp!1919782 tp!1919784))))

(declare-fun b!6962593 () Bool)

(declare-fun tp!1919786 () Bool)

(assert (=> b!6962593 (= e!4186128 tp!1919786)))

(declare-fun b!6962591 () Bool)

(assert (=> b!6962591 (= e!4186128 tp_is_empty!43403)))

(assert (= (and b!6962115 ((_ is ElementMatch!17089) (regOne!34690 (reg!17418 r!13765)))) b!6962591))

(assert (= (and b!6962115 ((_ is Concat!25934) (regOne!34690 (reg!17418 r!13765)))) b!6962592))

(assert (= (and b!6962115 ((_ is Star!17089) (regOne!34690 (reg!17418 r!13765)))) b!6962593))

(assert (= (and b!6962115 ((_ is Union!17089) (regOne!34690 (reg!17418 r!13765)))) b!6962594))

(declare-fun b!6962596 () Bool)

(declare-fun e!4186129 () Bool)

(declare-fun tp!1919788 () Bool)

(declare-fun tp!1919790 () Bool)

(assert (=> b!6962596 (= e!4186129 (and tp!1919788 tp!1919790))))

(assert (=> b!6962115 (= tp!1919532 e!4186129)))

(declare-fun b!6962598 () Bool)

(declare-fun tp!1919787 () Bool)

(declare-fun tp!1919789 () Bool)

(assert (=> b!6962598 (= e!4186129 (and tp!1919787 tp!1919789))))

(declare-fun b!6962597 () Bool)

(declare-fun tp!1919791 () Bool)

(assert (=> b!6962597 (= e!4186129 tp!1919791)))

(declare-fun b!6962595 () Bool)

(assert (=> b!6962595 (= e!4186129 tp_is_empty!43403)))

(assert (= (and b!6962115 ((_ is ElementMatch!17089) (regTwo!34690 (reg!17418 r!13765)))) b!6962595))

(assert (= (and b!6962115 ((_ is Concat!25934) (regTwo!34690 (reg!17418 r!13765)))) b!6962596))

(assert (= (and b!6962115 ((_ is Star!17089) (regTwo!34690 (reg!17418 r!13765)))) b!6962597))

(assert (= (and b!6962115 ((_ is Union!17089) (regTwo!34690 (reg!17418 r!13765)))) b!6962598))

(declare-fun b!6962600 () Bool)

(declare-fun e!4186130 () Bool)

(declare-fun tp!1919793 () Bool)

(declare-fun tp!1919795 () Bool)

(assert (=> b!6962600 (= e!4186130 (and tp!1919793 tp!1919795))))

(assert (=> b!6962138 (= tp!1919557 e!4186130)))

(declare-fun b!6962602 () Bool)

(declare-fun tp!1919792 () Bool)

(declare-fun tp!1919794 () Bool)

(assert (=> b!6962602 (= e!4186130 (and tp!1919792 tp!1919794))))

(declare-fun b!6962601 () Bool)

(declare-fun tp!1919796 () Bool)

(assert (=> b!6962601 (= e!4186130 tp!1919796)))

(declare-fun b!6962599 () Bool)

(assert (=> b!6962599 (= e!4186130 tp_is_empty!43403)))

(assert (= (and b!6962138 ((_ is ElementMatch!17089) (reg!17418 (regTwo!34690 r!13765)))) b!6962599))

(assert (= (and b!6962138 ((_ is Concat!25934) (reg!17418 (regTwo!34690 r!13765)))) b!6962600))

(assert (= (and b!6962138 ((_ is Star!17089) (reg!17418 (regTwo!34690 r!13765)))) b!6962601))

(assert (= (and b!6962138 ((_ is Union!17089) (reg!17418 (regTwo!34690 r!13765)))) b!6962602))

(declare-fun b!6962604 () Bool)

(declare-fun e!4186131 () Bool)

(declare-fun tp!1919798 () Bool)

(declare-fun tp!1919800 () Bool)

(assert (=> b!6962604 (= e!4186131 (and tp!1919798 tp!1919800))))

(assert (=> b!6962143 (= tp!1919558 e!4186131)))

(declare-fun b!6962606 () Bool)

(declare-fun tp!1919797 () Bool)

(declare-fun tp!1919799 () Bool)

(assert (=> b!6962606 (= e!4186131 (and tp!1919797 tp!1919799))))

(declare-fun b!6962605 () Bool)

(declare-fun tp!1919801 () Bool)

(assert (=> b!6962605 (= e!4186131 tp!1919801)))

(declare-fun b!6962603 () Bool)

(assert (=> b!6962603 (= e!4186131 tp_is_empty!43403)))

(assert (= (and b!6962143 ((_ is ElementMatch!17089) (regOne!34691 (regOne!34691 r!13765)))) b!6962603))

(assert (= (and b!6962143 ((_ is Concat!25934) (regOne!34691 (regOne!34691 r!13765)))) b!6962604))

(assert (= (and b!6962143 ((_ is Star!17089) (regOne!34691 (regOne!34691 r!13765)))) b!6962605))

(assert (= (and b!6962143 ((_ is Union!17089) (regOne!34691 (regOne!34691 r!13765)))) b!6962606))

(declare-fun b!6962608 () Bool)

(declare-fun e!4186132 () Bool)

(declare-fun tp!1919803 () Bool)

(declare-fun tp!1919805 () Bool)

(assert (=> b!6962608 (= e!4186132 (and tp!1919803 tp!1919805))))

(assert (=> b!6962143 (= tp!1919560 e!4186132)))

(declare-fun b!6962610 () Bool)

(declare-fun tp!1919802 () Bool)

(declare-fun tp!1919804 () Bool)

(assert (=> b!6962610 (= e!4186132 (and tp!1919802 tp!1919804))))

(declare-fun b!6962609 () Bool)

(declare-fun tp!1919806 () Bool)

(assert (=> b!6962609 (= e!4186132 tp!1919806)))

(declare-fun b!6962607 () Bool)

(assert (=> b!6962607 (= e!4186132 tp_is_empty!43403)))

(assert (= (and b!6962143 ((_ is ElementMatch!17089) (regTwo!34691 (regOne!34691 r!13765)))) b!6962607))

(assert (= (and b!6962143 ((_ is Concat!25934) (regTwo!34691 (regOne!34691 r!13765)))) b!6962608))

(assert (= (and b!6962143 ((_ is Star!17089) (regTwo!34691 (regOne!34691 r!13765)))) b!6962609))

(assert (= (and b!6962143 ((_ is Union!17089) (regTwo!34691 (regOne!34691 r!13765)))) b!6962610))

(declare-fun b!6962612 () Bool)

(declare-fun e!4186133 () Bool)

(declare-fun tp!1919808 () Bool)

(declare-fun tp!1919810 () Bool)

(assert (=> b!6962612 (= e!4186133 (and tp!1919808 tp!1919810))))

(assert (=> b!6962134 (= tp!1919552 e!4186133)))

(declare-fun b!6962614 () Bool)

(declare-fun tp!1919807 () Bool)

(declare-fun tp!1919809 () Bool)

(assert (=> b!6962614 (= e!4186133 (and tp!1919807 tp!1919809))))

(declare-fun b!6962613 () Bool)

(declare-fun tp!1919811 () Bool)

(assert (=> b!6962613 (= e!4186133 tp!1919811)))

(declare-fun b!6962611 () Bool)

(assert (=> b!6962611 (= e!4186133 tp_is_empty!43403)))

(assert (= (and b!6962134 ((_ is ElementMatch!17089) (reg!17418 (regOne!34690 r!13765)))) b!6962611))

(assert (= (and b!6962134 ((_ is Concat!25934) (reg!17418 (regOne!34690 r!13765)))) b!6962612))

(assert (= (and b!6962134 ((_ is Star!17089) (reg!17418 (regOne!34690 r!13765)))) b!6962613))

(assert (= (and b!6962134 ((_ is Union!17089) (reg!17418 (regOne!34690 r!13765)))) b!6962614))

(declare-fun b!6962616 () Bool)

(declare-fun e!4186134 () Bool)

(declare-fun tp!1919813 () Bool)

(declare-fun tp!1919815 () Bool)

(assert (=> b!6962616 (= e!4186134 (and tp!1919813 tp!1919815))))

(assert (=> b!6962141 (= tp!1919559 e!4186134)))

(declare-fun b!6962618 () Bool)

(declare-fun tp!1919812 () Bool)

(declare-fun tp!1919814 () Bool)

(assert (=> b!6962618 (= e!4186134 (and tp!1919812 tp!1919814))))

(declare-fun b!6962617 () Bool)

(declare-fun tp!1919816 () Bool)

(assert (=> b!6962617 (= e!4186134 tp!1919816)))

(declare-fun b!6962615 () Bool)

(assert (=> b!6962615 (= e!4186134 tp_is_empty!43403)))

(assert (= (and b!6962141 ((_ is ElementMatch!17089) (regOne!34690 (regOne!34691 r!13765)))) b!6962615))

(assert (= (and b!6962141 ((_ is Concat!25934) (regOne!34690 (regOne!34691 r!13765)))) b!6962616))

(assert (= (and b!6962141 ((_ is Star!17089) (regOne!34690 (regOne!34691 r!13765)))) b!6962617))

(assert (= (and b!6962141 ((_ is Union!17089) (regOne!34690 (regOne!34691 r!13765)))) b!6962618))

(declare-fun b!6962620 () Bool)

(declare-fun e!4186135 () Bool)

(declare-fun tp!1919818 () Bool)

(declare-fun tp!1919820 () Bool)

(assert (=> b!6962620 (= e!4186135 (and tp!1919818 tp!1919820))))

(assert (=> b!6962141 (= tp!1919561 e!4186135)))

(declare-fun b!6962622 () Bool)

(declare-fun tp!1919817 () Bool)

(declare-fun tp!1919819 () Bool)

(assert (=> b!6962622 (= e!4186135 (and tp!1919817 tp!1919819))))

(declare-fun b!6962621 () Bool)

(declare-fun tp!1919821 () Bool)

(assert (=> b!6962621 (= e!4186135 tp!1919821)))

(declare-fun b!6962619 () Bool)

(assert (=> b!6962619 (= e!4186135 tp_is_empty!43403)))

(assert (= (and b!6962141 ((_ is ElementMatch!17089) (regTwo!34690 (regOne!34691 r!13765)))) b!6962619))

(assert (= (and b!6962141 ((_ is Concat!25934) (regTwo!34690 (regOne!34691 r!13765)))) b!6962620))

(assert (= (and b!6962141 ((_ is Star!17089) (regTwo!34690 (regOne!34691 r!13765)))) b!6962621))

(assert (= (and b!6962141 ((_ is Union!17089) (regTwo!34690 (regOne!34691 r!13765)))) b!6962622))

(declare-fun b!6962624 () Bool)

(declare-fun e!4186136 () Bool)

(declare-fun tp!1919823 () Bool)

(declare-fun tp!1919825 () Bool)

(assert (=> b!6962624 (= e!4186136 (and tp!1919823 tp!1919825))))

(assert (=> b!6962146 (= tp!1919567 e!4186136)))

(declare-fun b!6962626 () Bool)

(declare-fun tp!1919822 () Bool)

(declare-fun tp!1919824 () Bool)

(assert (=> b!6962626 (= e!4186136 (and tp!1919822 tp!1919824))))

(declare-fun b!6962625 () Bool)

(declare-fun tp!1919826 () Bool)

(assert (=> b!6962625 (= e!4186136 tp!1919826)))

(declare-fun b!6962623 () Bool)

(assert (=> b!6962623 (= e!4186136 tp_is_empty!43403)))

(assert (= (and b!6962146 ((_ is ElementMatch!17089) (reg!17418 (regTwo!34691 r!13765)))) b!6962623))

(assert (= (and b!6962146 ((_ is Concat!25934) (reg!17418 (regTwo!34691 r!13765)))) b!6962624))

(assert (= (and b!6962146 ((_ is Star!17089) (reg!17418 (regTwo!34691 r!13765)))) b!6962625))

(assert (= (and b!6962146 ((_ is Union!17089) (reg!17418 (regTwo!34691 r!13765)))) b!6962626))

(declare-fun b!6962628 () Bool)

(declare-fun e!4186137 () Bool)

(declare-fun tp!1919828 () Bool)

(declare-fun tp!1919830 () Bool)

(assert (=> b!6962628 (= e!4186137 (and tp!1919828 tp!1919830))))

(assert (=> b!6962137 (= tp!1919554 e!4186137)))

(declare-fun b!6962630 () Bool)

(declare-fun tp!1919827 () Bool)

(declare-fun tp!1919829 () Bool)

(assert (=> b!6962630 (= e!4186137 (and tp!1919827 tp!1919829))))

(declare-fun b!6962629 () Bool)

(declare-fun tp!1919831 () Bool)

(assert (=> b!6962629 (= e!4186137 tp!1919831)))

(declare-fun b!6962627 () Bool)

(assert (=> b!6962627 (= e!4186137 tp_is_empty!43403)))

(assert (= (and b!6962137 ((_ is ElementMatch!17089) (regOne!34690 (regTwo!34690 r!13765)))) b!6962627))

(assert (= (and b!6962137 ((_ is Concat!25934) (regOne!34690 (regTwo!34690 r!13765)))) b!6962628))

(assert (= (and b!6962137 ((_ is Star!17089) (regOne!34690 (regTwo!34690 r!13765)))) b!6962629))

(assert (= (and b!6962137 ((_ is Union!17089) (regOne!34690 (regTwo!34690 r!13765)))) b!6962630))

(declare-fun b!6962632 () Bool)

(declare-fun e!4186138 () Bool)

(declare-fun tp!1919833 () Bool)

(declare-fun tp!1919835 () Bool)

(assert (=> b!6962632 (= e!4186138 (and tp!1919833 tp!1919835))))

(assert (=> b!6962137 (= tp!1919556 e!4186138)))

(declare-fun b!6962634 () Bool)

(declare-fun tp!1919832 () Bool)

(declare-fun tp!1919834 () Bool)

(assert (=> b!6962634 (= e!4186138 (and tp!1919832 tp!1919834))))

(declare-fun b!6962633 () Bool)

(declare-fun tp!1919836 () Bool)

(assert (=> b!6962633 (= e!4186138 tp!1919836)))

(declare-fun b!6962631 () Bool)

(assert (=> b!6962631 (= e!4186138 tp_is_empty!43403)))

(assert (= (and b!6962137 ((_ is ElementMatch!17089) (regTwo!34690 (regTwo!34690 r!13765)))) b!6962631))

(assert (= (and b!6962137 ((_ is Concat!25934) (regTwo!34690 (regTwo!34690 r!13765)))) b!6962632))

(assert (= (and b!6962137 ((_ is Star!17089) (regTwo!34690 (regTwo!34690 r!13765)))) b!6962633))

(assert (= (and b!6962137 ((_ is Union!17089) (regTwo!34690 (regTwo!34690 r!13765)))) b!6962634))

(declare-fun b!6962636 () Bool)

(declare-fun e!4186139 () Bool)

(declare-fun tp!1919838 () Bool)

(declare-fun tp!1919840 () Bool)

(assert (=> b!6962636 (= e!4186139 (and tp!1919838 tp!1919840))))

(assert (=> b!6962142 (= tp!1919562 e!4186139)))

(declare-fun b!6962638 () Bool)

(declare-fun tp!1919837 () Bool)

(declare-fun tp!1919839 () Bool)

(assert (=> b!6962638 (= e!4186139 (and tp!1919837 tp!1919839))))

(declare-fun b!6962637 () Bool)

(declare-fun tp!1919841 () Bool)

(assert (=> b!6962637 (= e!4186139 tp!1919841)))

(declare-fun b!6962635 () Bool)

(assert (=> b!6962635 (= e!4186139 tp_is_empty!43403)))

(assert (= (and b!6962142 ((_ is ElementMatch!17089) (reg!17418 (regOne!34691 r!13765)))) b!6962635))

(assert (= (and b!6962142 ((_ is Concat!25934) (reg!17418 (regOne!34691 r!13765)))) b!6962636))

(assert (= (and b!6962142 ((_ is Star!17089) (reg!17418 (regOne!34691 r!13765)))) b!6962637))

(assert (= (and b!6962142 ((_ is Union!17089) (reg!17418 (regOne!34691 r!13765)))) b!6962638))

(declare-fun b!6962640 () Bool)

(declare-fun e!4186140 () Bool)

(declare-fun tp!1919843 () Bool)

(declare-fun tp!1919845 () Bool)

(assert (=> b!6962640 (= e!4186140 (and tp!1919843 tp!1919845))))

(assert (=> b!6962131 (= tp!1919546 e!4186140)))

(declare-fun b!6962642 () Bool)

(declare-fun tp!1919842 () Bool)

(declare-fun tp!1919844 () Bool)

(assert (=> b!6962642 (= e!4186140 (and tp!1919842 tp!1919844))))

(declare-fun b!6962641 () Bool)

(declare-fun tp!1919846 () Bool)

(assert (=> b!6962641 (= e!4186140 tp!1919846)))

(declare-fun b!6962639 () Bool)

(assert (=> b!6962639 (= e!4186140 tp_is_empty!43403)))

(assert (= (and b!6962131 ((_ is ElementMatch!17089) (h!73187 (t!380606 l!9142)))) b!6962639))

(assert (= (and b!6962131 ((_ is Concat!25934) (h!73187 (t!380606 l!9142)))) b!6962640))

(assert (= (and b!6962131 ((_ is Star!17089) (h!73187 (t!380606 l!9142)))) b!6962641))

(assert (= (and b!6962131 ((_ is Union!17089) (h!73187 (t!380606 l!9142)))) b!6962642))

(declare-fun b!6962643 () Bool)

(declare-fun e!4186141 () Bool)

(declare-fun tp!1919847 () Bool)

(declare-fun tp!1919848 () Bool)

(assert (=> b!6962643 (= e!4186141 (and tp!1919847 tp!1919848))))

(assert (=> b!6962131 (= tp!1919547 e!4186141)))

(assert (= (and b!6962131 ((_ is Cons!66739) (t!380606 (t!380606 l!9142)))) b!6962643))

(declare-fun b!6962645 () Bool)

(declare-fun e!4186142 () Bool)

(declare-fun tp!1919850 () Bool)

(declare-fun tp!1919852 () Bool)

(assert (=> b!6962645 (= e!4186142 (and tp!1919850 tp!1919852))))

(assert (=> b!6962116 (= tp!1919533 e!4186142)))

(declare-fun b!6962647 () Bool)

(declare-fun tp!1919849 () Bool)

(declare-fun tp!1919851 () Bool)

(assert (=> b!6962647 (= e!4186142 (and tp!1919849 tp!1919851))))

(declare-fun b!6962646 () Bool)

(declare-fun tp!1919853 () Bool)

(assert (=> b!6962646 (= e!4186142 tp!1919853)))

(declare-fun b!6962644 () Bool)

(assert (=> b!6962644 (= e!4186142 tp_is_empty!43403)))

(assert (= (and b!6962116 ((_ is ElementMatch!17089) (reg!17418 (reg!17418 r!13765)))) b!6962644))

(assert (= (and b!6962116 ((_ is Concat!25934) (reg!17418 (reg!17418 r!13765)))) b!6962645))

(assert (= (and b!6962116 ((_ is Star!17089) (reg!17418 (reg!17418 r!13765)))) b!6962646))

(assert (= (and b!6962116 ((_ is Union!17089) (reg!17418 (reg!17418 r!13765)))) b!6962647))

(declare-fun b!6962649 () Bool)

(declare-fun e!4186143 () Bool)

(declare-fun tp!1919855 () Bool)

(declare-fun tp!1919857 () Bool)

(assert (=> b!6962649 (= e!4186143 (and tp!1919855 tp!1919857))))

(assert (=> b!6962139 (= tp!1919553 e!4186143)))

(declare-fun b!6962651 () Bool)

(declare-fun tp!1919854 () Bool)

(declare-fun tp!1919856 () Bool)

(assert (=> b!6962651 (= e!4186143 (and tp!1919854 tp!1919856))))

(declare-fun b!6962650 () Bool)

(declare-fun tp!1919858 () Bool)

(assert (=> b!6962650 (= e!4186143 tp!1919858)))

(declare-fun b!6962648 () Bool)

(assert (=> b!6962648 (= e!4186143 tp_is_empty!43403)))

(assert (= (and b!6962139 ((_ is ElementMatch!17089) (regOne!34691 (regTwo!34690 r!13765)))) b!6962648))

(assert (= (and b!6962139 ((_ is Concat!25934) (regOne!34691 (regTwo!34690 r!13765)))) b!6962649))

(assert (= (and b!6962139 ((_ is Star!17089) (regOne!34691 (regTwo!34690 r!13765)))) b!6962650))

(assert (= (and b!6962139 ((_ is Union!17089) (regOne!34691 (regTwo!34690 r!13765)))) b!6962651))

(declare-fun b!6962653 () Bool)

(declare-fun e!4186144 () Bool)

(declare-fun tp!1919860 () Bool)

(declare-fun tp!1919862 () Bool)

(assert (=> b!6962653 (= e!4186144 (and tp!1919860 tp!1919862))))

(assert (=> b!6962139 (= tp!1919555 e!4186144)))

(declare-fun b!6962655 () Bool)

(declare-fun tp!1919859 () Bool)

(declare-fun tp!1919861 () Bool)

(assert (=> b!6962655 (= e!4186144 (and tp!1919859 tp!1919861))))

(declare-fun b!6962654 () Bool)

(declare-fun tp!1919863 () Bool)

(assert (=> b!6962654 (= e!4186144 tp!1919863)))

(declare-fun b!6962652 () Bool)

(assert (=> b!6962652 (= e!4186144 tp_is_empty!43403)))

(assert (= (and b!6962139 ((_ is ElementMatch!17089) (regTwo!34691 (regTwo!34690 r!13765)))) b!6962652))

(assert (= (and b!6962139 ((_ is Concat!25934) (regTwo!34691 (regTwo!34690 r!13765)))) b!6962653))

(assert (= (and b!6962139 ((_ is Star!17089) (regTwo!34691 (regTwo!34690 r!13765)))) b!6962654))

(assert (= (and b!6962139 ((_ is Union!17089) (regTwo!34691 (regTwo!34690 r!13765)))) b!6962655))

(declare-fun b!6962657 () Bool)

(declare-fun e!4186145 () Bool)

(declare-fun tp!1919865 () Bool)

(declare-fun tp!1919867 () Bool)

(assert (=> b!6962657 (= e!4186145 (and tp!1919865 tp!1919867))))

(assert (=> b!6962135 (= tp!1919548 e!4186145)))

(declare-fun b!6962659 () Bool)

(declare-fun tp!1919864 () Bool)

(declare-fun tp!1919866 () Bool)

(assert (=> b!6962659 (= e!4186145 (and tp!1919864 tp!1919866))))

(declare-fun b!6962658 () Bool)

(declare-fun tp!1919868 () Bool)

(assert (=> b!6962658 (= e!4186145 tp!1919868)))

(declare-fun b!6962656 () Bool)

(assert (=> b!6962656 (= e!4186145 tp_is_empty!43403)))

(assert (= (and b!6962135 ((_ is ElementMatch!17089) (regOne!34691 (regOne!34690 r!13765)))) b!6962656))

(assert (= (and b!6962135 ((_ is Concat!25934) (regOne!34691 (regOne!34690 r!13765)))) b!6962657))

(assert (= (and b!6962135 ((_ is Star!17089) (regOne!34691 (regOne!34690 r!13765)))) b!6962658))

(assert (= (and b!6962135 ((_ is Union!17089) (regOne!34691 (regOne!34690 r!13765)))) b!6962659))

(declare-fun b!6962661 () Bool)

(declare-fun e!4186146 () Bool)

(declare-fun tp!1919870 () Bool)

(declare-fun tp!1919872 () Bool)

(assert (=> b!6962661 (= e!4186146 (and tp!1919870 tp!1919872))))

(assert (=> b!6962135 (= tp!1919550 e!4186146)))

(declare-fun b!6962663 () Bool)

(declare-fun tp!1919869 () Bool)

(declare-fun tp!1919871 () Bool)

(assert (=> b!6962663 (= e!4186146 (and tp!1919869 tp!1919871))))

(declare-fun b!6962662 () Bool)

(declare-fun tp!1919873 () Bool)

(assert (=> b!6962662 (= e!4186146 tp!1919873)))

(declare-fun b!6962660 () Bool)

(assert (=> b!6962660 (= e!4186146 tp_is_empty!43403)))

(assert (= (and b!6962135 ((_ is ElementMatch!17089) (regTwo!34691 (regOne!34690 r!13765)))) b!6962660))

(assert (= (and b!6962135 ((_ is Concat!25934) (regTwo!34691 (regOne!34690 r!13765)))) b!6962661))

(assert (= (and b!6962135 ((_ is Star!17089) (regTwo!34691 (regOne!34690 r!13765)))) b!6962662))

(assert (= (and b!6962135 ((_ is Union!17089) (regTwo!34691 (regOne!34690 r!13765)))) b!6962663))

(declare-fun b!6962665 () Bool)

(declare-fun e!4186147 () Bool)

(declare-fun tp!1919875 () Bool)

(declare-fun tp!1919877 () Bool)

(assert (=> b!6962665 (= e!4186147 (and tp!1919875 tp!1919877))))

(assert (=> b!6962117 (= tp!1919529 e!4186147)))

(declare-fun b!6962667 () Bool)

(declare-fun tp!1919874 () Bool)

(declare-fun tp!1919876 () Bool)

(assert (=> b!6962667 (= e!4186147 (and tp!1919874 tp!1919876))))

(declare-fun b!6962666 () Bool)

(declare-fun tp!1919878 () Bool)

(assert (=> b!6962666 (= e!4186147 tp!1919878)))

(declare-fun b!6962664 () Bool)

(assert (=> b!6962664 (= e!4186147 tp_is_empty!43403)))

(assert (= (and b!6962117 ((_ is ElementMatch!17089) (regOne!34691 (reg!17418 r!13765)))) b!6962664))

(assert (= (and b!6962117 ((_ is Concat!25934) (regOne!34691 (reg!17418 r!13765)))) b!6962665))

(assert (= (and b!6962117 ((_ is Star!17089) (regOne!34691 (reg!17418 r!13765)))) b!6962666))

(assert (= (and b!6962117 ((_ is Union!17089) (regOne!34691 (reg!17418 r!13765)))) b!6962667))

(declare-fun b!6962669 () Bool)

(declare-fun e!4186148 () Bool)

(declare-fun tp!1919880 () Bool)

(declare-fun tp!1919882 () Bool)

(assert (=> b!6962669 (= e!4186148 (and tp!1919880 tp!1919882))))

(assert (=> b!6962117 (= tp!1919531 e!4186148)))

(declare-fun b!6962671 () Bool)

(declare-fun tp!1919879 () Bool)

(declare-fun tp!1919881 () Bool)

(assert (=> b!6962671 (= e!4186148 (and tp!1919879 tp!1919881))))

(declare-fun b!6962670 () Bool)

(declare-fun tp!1919883 () Bool)

(assert (=> b!6962670 (= e!4186148 tp!1919883)))

(declare-fun b!6962668 () Bool)

(assert (=> b!6962668 (= e!4186148 tp_is_empty!43403)))

(assert (= (and b!6962117 ((_ is ElementMatch!17089) (regTwo!34691 (reg!17418 r!13765)))) b!6962668))

(assert (= (and b!6962117 ((_ is Concat!25934) (regTwo!34691 (reg!17418 r!13765)))) b!6962669))

(assert (= (and b!6962117 ((_ is Star!17089) (regTwo!34691 (reg!17418 r!13765)))) b!6962670))

(assert (= (and b!6962117 ((_ is Union!17089) (regTwo!34691 (reg!17418 r!13765)))) b!6962671))

(declare-fun b_lambda!260589 () Bool)

(assert (= b_lambda!260585 (or start!667946 b_lambda!260589)))

(declare-fun bs!1858452 () Bool)

(declare-fun d!2170234 () Bool)

(assert (= bs!1858452 (and d!2170234 start!667946)))

(assert (=> bs!1858452 (= (dynLambda!26614 lambda!397200 (h!73187 (t!380606 l!9142))) (validRegex!8785 (h!73187 (t!380606 l!9142))))))

(declare-fun m!7656678 () Bool)

(assert (=> bs!1858452 m!7656678))

(assert (=> b!6962460 d!2170234))

(declare-fun b_lambda!260591 () Bool)

(assert (= b_lambda!260587 (or d!2170122 b_lambda!260591)))

(declare-fun bs!1858453 () Bool)

(declare-fun d!2170236 () Bool)

(assert (= bs!1858453 (and d!2170236 d!2170122)))

(assert (=> bs!1858453 (= (dynLambda!26614 lambda!397222 (h!73187 l!9142)) (validRegex!8785 (h!73187 l!9142)))))

(assert (=> bs!1858453 m!7656466))

(assert (=> b!6962544 d!2170236))

(check-sat (not bm!632167) (not bm!632190) (not b!6962596) (not b!6962597) (not b!6962616) (not b!6962555) (not b!6962584) (not b!6962610) (not b!6962573) (not b!6962590) (not b!6962572) (not b!6962626) (not b!6962669) (not b!6962585) (not b!6962641) (not b!6962663) (not b!6962451) (not b!6962473) (not b!6962567) (not b!6962580) (not bs!1858452) (not d!2170224) (not b!6962457) (not b!6962662) (not b!6962593) (not bm!632162) (not b!6962605) (not b!6962601) (not b!6962526) (not b!6962589) (not bm!632166) (not b!6962633) (not bs!1858453) (not b!6962647) (not b!6962464) (not bm!632176) (not bm!632187) (not bm!632169) (not b!6962501) (not b!6962547) (not b!6962438) (not b!6962449) (not bm!632163) (not b!6962568) (not b!6962645) (not b!6962586) (not b!6962490) (not b!6962642) (not b!6962458) (not b!6962637) (not b!6962454) (not b!6962632) (not b!6962630) (not b!6962442) (not b!6962561) (not d!2170226) (not b!6962452) (not b!6962592) (not b!6962560) (not b_lambda!260589) (not b!6962621) (not d!2170222) (not b!6962565) (not b!6962577) (not b!6962553) (not b!6962666) (not d!2170192) (not b!6962659) (not b!6962549) (not b!6962658) (not b!6962667) (not b!6962643) (not b!6962557) (not b!6962582) (not b!6962670) (not b!6962556) (not b!6962564) (not b!6962655) (not b!6962646) (not b!6962548) (not b!6962495) (not b!6962650) (not b!6962653) (not b!6962456) (not b!6962581) (not d!2170220) (not b!6962537) (not bm!632170) (not b!6962640) (not bm!632191) (not b!6962602) (not b!6962431) (not bm!632177) (not b!6962576) (not b!6962614) (not d!2170196) (not b!6962671) tp_is_empty!43403 (not b!6962588) (not b!6962651) (not b!6962600) (not bm!632173) (not bm!632160) (not b_lambda!260575) (not b!6962661) (not b!6962618) (not b!6962665) (not b!6962620) (not b!6962625) (not b!6962552) (not b!6962604) (not b!6962617) (not b!6962569) (not b!6962483) (not b!6962545) (not bm!632186) (not b!6962638) (not d!2170202) (not b!6962629) (not b!6962496) (not bm!632159) (not bm!632172) (not bm!632175) (not b!6962636) (not b!6962491) (not b!6962563) (not b!6962500) (not bm!632168) (not b!6962504) (not b!6962574) (not b!6962606) (not b!6962609) (not b!6962624) (not b!6962598) (not b!6962594) (not b!6962461) (not d!2170198) (not b!6962622) (not b!6962613) (not b!6962453) (not b!6962578) (not b!6962634) (not b!6962657) (not b!6962628) (not b!6962421) (not bm!632165) (not b!6962571) (not b!6962612) (not b_lambda!260591) (not b!6962559) (not b!6962551) (not b!6962412) (not b!6962608) (not b!6962649) (not b!6962654))
(check-sat)
