; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707780 () Bool)

(assert start!707780)

(declare-fun b!7261859 () Bool)

(declare-fun e!4354650 () Bool)

(declare-fun lt!2591055 () Bool)

(assert (=> b!7261859 (= e!4354650 (not lt!2591055))))

(declare-fun lt!2591053 () Bool)

(assert (=> b!7261859 (= lt!2591053 lt!2591055)))

(declare-fun e!4354651 () Bool)

(assert (=> b!7261859 (= lt!2591055 e!4354651)))

(declare-fun res!2944371 () Bool)

(assert (=> b!7261859 (=> res!2944371 e!4354651)))

(declare-fun lt!2591052 () Bool)

(assert (=> b!7261859 (= res!2944371 lt!2591052)))

(declare-datatypes ((C!37708 0))(
  ( (C!37709 (val!28802 Int)) )
))
(declare-datatypes ((List!70730 0))(
  ( (Nil!70606) (Cons!70606 (h!77054 C!37708) (t!384796 List!70730)) )
))
(declare-fun s!7887 () List!70730)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18717 0))(
  ( (ElementMatch!18717 (c!1350959 C!37708)) (Concat!27562 (regOne!37946 Regex!18717) (regTwo!37946 Regex!18717)) (EmptyExpr!18717) (Star!18717 (reg!19046 Regex!18717)) (EmptyLang!18717) (Union!18717 (regOne!37947 Regex!18717) (regTwo!37947 Regex!18717)) )
))
(declare-datatypes ((List!70731 0))(
  ( (Nil!70607) (Cons!70607 (h!77055 Regex!18717) (t!384797 List!70731)) )
))
(declare-datatypes ((Context!15314 0))(
  ( (Context!15315 (exprs!8157 List!70731)) )
))
(declare-fun lt!2591056 () (InoxSet Context!15314))

(declare-fun lt!2591054 () (InoxSet Context!15314))

(declare-fun matchZipper!3621 ((InoxSet Context!15314) List!70730) Bool)

(assert (=> b!7261859 (= lt!2591053 (matchZipper!3621 ((_ map or) lt!2591056 lt!2591054) s!7887))))

(assert (=> b!7261859 (= lt!2591052 (matchZipper!3621 lt!2591056 s!7887))))

(declare-datatypes ((Unit!164060 0))(
  ( (Unit!164061) )
))
(declare-fun lt!2591051 () Unit!164060)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1760 ((InoxSet Context!15314) (InoxSet Context!15314) List!70730) Unit!164060)

(assert (=> b!7261859 (= lt!2591051 (lemmaZipperConcatMatchesSameAsBothZippers!1760 lt!2591056 lt!2591054 s!7887))))

(declare-datatypes ((List!70732 0))(
  ( (Nil!70608) (Cons!70608 (h!77056 Context!15314) (t!384798 List!70732)) )
))
(declare-fun zl!1658 () List!70732)

(declare-fun content!14711 (List!70732) (InoxSet Context!15314))

(assert (=> b!7261859 (= lt!2591054 (content!14711 (t!384798 zl!1658)))))

(assert (=> b!7261859 (= lt!2591056 (store ((as const (Array Context!15314 Bool)) false) (h!77056 zl!1658) true))))

(declare-fun b!7261860 () Bool)

(declare-fun e!4354652 () Bool)

(declare-fun tp_is_empty!46899 () Bool)

(declare-fun tp!2039362 () Bool)

(assert (=> b!7261860 (= e!4354652 (and tp_is_empty!46899 tp!2039362))))

(declare-fun b!7261861 () Bool)

(declare-fun e!4354654 () Bool)

(declare-fun tp!2039361 () Bool)

(assert (=> b!7261861 (= e!4354654 tp!2039361)))

(declare-fun b!7261862 () Bool)

(assert (=> b!7261862 (= e!4354651 (matchZipper!3621 lt!2591054 s!7887))))

(declare-fun res!2944372 () Bool)

(assert (=> start!707780 (=> (not res!2944372) (not e!4354650))))

(assert (=> start!707780 (= res!2944372 (matchZipper!3621 (content!14711 zl!1658) s!7887))))

(assert (=> start!707780 e!4354650))

(declare-fun e!4354653 () Bool)

(assert (=> start!707780 e!4354653))

(assert (=> start!707780 e!4354652))

(declare-fun b!7261863 () Bool)

(declare-fun res!2944370 () Bool)

(assert (=> b!7261863 (=> (not res!2944370) (not e!4354650))))

(get-info :version)

(assert (=> b!7261863 (= res!2944370 ((_ is Cons!70608) zl!1658))))

(declare-fun tp!2039360 () Bool)

(declare-fun b!7261864 () Bool)

(declare-fun inv!89802 (Context!15314) Bool)

(assert (=> b!7261864 (= e!4354653 (and (inv!89802 (h!77056 zl!1658)) e!4354654 tp!2039360))))

(assert (= (and start!707780 res!2944372) b!7261863))

(assert (= (and b!7261863 res!2944370) b!7261859))

(assert (= (and b!7261859 (not res!2944371)) b!7261862))

(assert (= b!7261864 b!7261861))

(assert (= (and start!707780 ((_ is Cons!70608) zl!1658)) b!7261864))

(assert (= (and start!707780 ((_ is Cons!70606) s!7887)) b!7261860))

(declare-fun m!7946464 () Bool)

(assert (=> b!7261859 m!7946464))

(declare-fun m!7946466 () Bool)

(assert (=> b!7261859 m!7946466))

(declare-fun m!7946468 () Bool)

(assert (=> b!7261859 m!7946468))

(declare-fun m!7946470 () Bool)

(assert (=> b!7261859 m!7946470))

(declare-fun m!7946472 () Bool)

(assert (=> b!7261859 m!7946472))

(declare-fun m!7946474 () Bool)

(assert (=> b!7261862 m!7946474))

(declare-fun m!7946476 () Bool)

(assert (=> start!707780 m!7946476))

(assert (=> start!707780 m!7946476))

(declare-fun m!7946478 () Bool)

(assert (=> start!707780 m!7946478))

(declare-fun m!7946480 () Bool)

(assert (=> b!7261864 m!7946480))

(check-sat (not b!7261861) (not b!7261862) (not b!7261864) (not b!7261859) tp_is_empty!46899 (not b!7261860) (not start!707780))
(check-sat)
(get-model)

(declare-fun d!2259217 () Bool)

(declare-fun lambda!446720 () Int)

(declare-fun forall!17563 (List!70731 Int) Bool)

(assert (=> d!2259217 (= (inv!89802 (h!77056 zl!1658)) (forall!17563 (exprs!8157 (h!77056 zl!1658)) lambda!446720))))

(declare-fun bs!1909493 () Bool)

(assert (= bs!1909493 d!2259217))

(declare-fun m!7946494 () Bool)

(assert (=> bs!1909493 m!7946494))

(assert (=> b!7261864 d!2259217))

(declare-fun d!2259223 () Bool)

(declare-fun c!1350968 () Bool)

(declare-fun isEmpty!40615 (List!70730) Bool)

(assert (=> d!2259223 (= c!1350968 (isEmpty!40615 s!7887))))

(declare-fun e!4354663 () Bool)

(assert (=> d!2259223 (= (matchZipper!3621 ((_ map or) lt!2591056 lt!2591054) s!7887) e!4354663)))

(declare-fun b!7261881 () Bool)

(declare-fun nullableZipper!2949 ((InoxSet Context!15314)) Bool)

(assert (=> b!7261881 (= e!4354663 (nullableZipper!2949 ((_ map or) lt!2591056 lt!2591054)))))

(declare-fun b!7261882 () Bool)

(declare-fun derivationStepZipper!3475 ((InoxSet Context!15314) C!37708) (InoxSet Context!15314))

(declare-fun head!14948 (List!70730) C!37708)

(declare-fun tail!14407 (List!70730) List!70730)

(assert (=> b!7261882 (= e!4354663 (matchZipper!3621 (derivationStepZipper!3475 ((_ map or) lt!2591056 lt!2591054) (head!14948 s!7887)) (tail!14407 s!7887)))))

(assert (= (and d!2259223 c!1350968) b!7261881))

(assert (= (and d!2259223 (not c!1350968)) b!7261882))

(declare-fun m!7946496 () Bool)

(assert (=> d!2259223 m!7946496))

(declare-fun m!7946498 () Bool)

(assert (=> b!7261881 m!7946498))

(declare-fun m!7946500 () Bool)

(assert (=> b!7261882 m!7946500))

(assert (=> b!7261882 m!7946500))

(declare-fun m!7946502 () Bool)

(assert (=> b!7261882 m!7946502))

(declare-fun m!7946504 () Bool)

(assert (=> b!7261882 m!7946504))

(assert (=> b!7261882 m!7946502))

(assert (=> b!7261882 m!7946504))

(declare-fun m!7946506 () Bool)

(assert (=> b!7261882 m!7946506))

(assert (=> b!7261859 d!2259223))

(declare-fun d!2259225 () Bool)

(declare-fun c!1350969 () Bool)

(assert (=> d!2259225 (= c!1350969 (isEmpty!40615 s!7887))))

(declare-fun e!4354664 () Bool)

(assert (=> d!2259225 (= (matchZipper!3621 lt!2591056 s!7887) e!4354664)))

(declare-fun b!7261883 () Bool)

(assert (=> b!7261883 (= e!4354664 (nullableZipper!2949 lt!2591056))))

(declare-fun b!7261884 () Bool)

(assert (=> b!7261884 (= e!4354664 (matchZipper!3621 (derivationStepZipper!3475 lt!2591056 (head!14948 s!7887)) (tail!14407 s!7887)))))

(assert (= (and d!2259225 c!1350969) b!7261883))

(assert (= (and d!2259225 (not c!1350969)) b!7261884))

(assert (=> d!2259225 m!7946496))

(declare-fun m!7946508 () Bool)

(assert (=> b!7261883 m!7946508))

(assert (=> b!7261884 m!7946500))

(assert (=> b!7261884 m!7946500))

(declare-fun m!7946510 () Bool)

(assert (=> b!7261884 m!7946510))

(assert (=> b!7261884 m!7946504))

(assert (=> b!7261884 m!7946510))

(assert (=> b!7261884 m!7946504))

(declare-fun m!7946512 () Bool)

(assert (=> b!7261884 m!7946512))

(assert (=> b!7261859 d!2259225))

(declare-fun d!2259227 () Bool)

(declare-fun e!4354667 () Bool)

(assert (=> d!2259227 (= (matchZipper!3621 ((_ map or) lt!2591056 lt!2591054) s!7887) e!4354667)))

(declare-fun res!2944375 () Bool)

(assert (=> d!2259227 (=> res!2944375 e!4354667)))

(assert (=> d!2259227 (= res!2944375 (matchZipper!3621 lt!2591056 s!7887))))

(declare-fun lt!2591059 () Unit!164060)

(declare-fun choose!56238 ((InoxSet Context!15314) (InoxSet Context!15314) List!70730) Unit!164060)

(assert (=> d!2259227 (= lt!2591059 (choose!56238 lt!2591056 lt!2591054 s!7887))))

(assert (=> d!2259227 (= (lemmaZipperConcatMatchesSameAsBothZippers!1760 lt!2591056 lt!2591054 s!7887) lt!2591059)))

(declare-fun b!7261887 () Bool)

(assert (=> b!7261887 (= e!4354667 (matchZipper!3621 lt!2591054 s!7887))))

(assert (= (and d!2259227 (not res!2944375)) b!7261887))

(assert (=> d!2259227 m!7946472))

(assert (=> d!2259227 m!7946464))

(declare-fun m!7946514 () Bool)

(assert (=> d!2259227 m!7946514))

(assert (=> b!7261887 m!7946474))

(assert (=> b!7261859 d!2259227))

(declare-fun d!2259229 () Bool)

(declare-fun c!1350972 () Bool)

(assert (=> d!2259229 (= c!1350972 ((_ is Nil!70608) (t!384798 zl!1658)))))

(declare-fun e!4354670 () (InoxSet Context!15314))

(assert (=> d!2259229 (= (content!14711 (t!384798 zl!1658)) e!4354670)))

(declare-fun b!7261892 () Bool)

(assert (=> b!7261892 (= e!4354670 ((as const (Array Context!15314 Bool)) false))))

(declare-fun b!7261893 () Bool)

(assert (=> b!7261893 (= e!4354670 ((_ map or) (store ((as const (Array Context!15314 Bool)) false) (h!77056 (t!384798 zl!1658)) true) (content!14711 (t!384798 (t!384798 zl!1658)))))))

(assert (= (and d!2259229 c!1350972) b!7261892))

(assert (= (and d!2259229 (not c!1350972)) b!7261893))

(declare-fun m!7946516 () Bool)

(assert (=> b!7261893 m!7946516))

(declare-fun m!7946518 () Bool)

(assert (=> b!7261893 m!7946518))

(assert (=> b!7261859 d!2259229))

(declare-fun d!2259231 () Bool)

(declare-fun c!1350973 () Bool)

(assert (=> d!2259231 (= c!1350973 (isEmpty!40615 s!7887))))

(declare-fun e!4354671 () Bool)

(assert (=> d!2259231 (= (matchZipper!3621 lt!2591054 s!7887) e!4354671)))

(declare-fun b!7261894 () Bool)

(assert (=> b!7261894 (= e!4354671 (nullableZipper!2949 lt!2591054))))

(declare-fun b!7261895 () Bool)

(assert (=> b!7261895 (= e!4354671 (matchZipper!3621 (derivationStepZipper!3475 lt!2591054 (head!14948 s!7887)) (tail!14407 s!7887)))))

(assert (= (and d!2259231 c!1350973) b!7261894))

(assert (= (and d!2259231 (not c!1350973)) b!7261895))

(assert (=> d!2259231 m!7946496))

(declare-fun m!7946520 () Bool)

(assert (=> b!7261894 m!7946520))

(assert (=> b!7261895 m!7946500))

(assert (=> b!7261895 m!7946500))

(declare-fun m!7946522 () Bool)

(assert (=> b!7261895 m!7946522))

(assert (=> b!7261895 m!7946504))

(assert (=> b!7261895 m!7946522))

(assert (=> b!7261895 m!7946504))

(declare-fun m!7946524 () Bool)

(assert (=> b!7261895 m!7946524))

(assert (=> b!7261862 d!2259231))

(declare-fun d!2259233 () Bool)

(declare-fun c!1350974 () Bool)

(assert (=> d!2259233 (= c!1350974 (isEmpty!40615 s!7887))))

(declare-fun e!4354672 () Bool)

(assert (=> d!2259233 (= (matchZipper!3621 (content!14711 zl!1658) s!7887) e!4354672)))

(declare-fun b!7261896 () Bool)

(assert (=> b!7261896 (= e!4354672 (nullableZipper!2949 (content!14711 zl!1658)))))

(declare-fun b!7261897 () Bool)

(assert (=> b!7261897 (= e!4354672 (matchZipper!3621 (derivationStepZipper!3475 (content!14711 zl!1658) (head!14948 s!7887)) (tail!14407 s!7887)))))

(assert (= (and d!2259233 c!1350974) b!7261896))

(assert (= (and d!2259233 (not c!1350974)) b!7261897))

(assert (=> d!2259233 m!7946496))

(assert (=> b!7261896 m!7946476))

(declare-fun m!7946526 () Bool)

(assert (=> b!7261896 m!7946526))

(assert (=> b!7261897 m!7946500))

(assert (=> b!7261897 m!7946476))

(assert (=> b!7261897 m!7946500))

(declare-fun m!7946528 () Bool)

(assert (=> b!7261897 m!7946528))

(assert (=> b!7261897 m!7946504))

(assert (=> b!7261897 m!7946528))

(assert (=> b!7261897 m!7946504))

(declare-fun m!7946530 () Bool)

(assert (=> b!7261897 m!7946530))

(assert (=> start!707780 d!2259233))

(declare-fun d!2259235 () Bool)

(declare-fun c!1350975 () Bool)

(assert (=> d!2259235 (= c!1350975 ((_ is Nil!70608) zl!1658))))

(declare-fun e!4354673 () (InoxSet Context!15314))

(assert (=> d!2259235 (= (content!14711 zl!1658) e!4354673)))

(declare-fun b!7261898 () Bool)

(assert (=> b!7261898 (= e!4354673 ((as const (Array Context!15314 Bool)) false))))

(declare-fun b!7261899 () Bool)

(assert (=> b!7261899 (= e!4354673 ((_ map or) (store ((as const (Array Context!15314 Bool)) false) (h!77056 zl!1658) true) (content!14711 (t!384798 zl!1658))))))

(assert (= (and d!2259235 c!1350975) b!7261898))

(assert (= (and d!2259235 (not c!1350975)) b!7261899))

(assert (=> b!7261899 m!7946466))

(assert (=> b!7261899 m!7946468))

(assert (=> start!707780 d!2259235))

(declare-fun b!7261904 () Bool)

(declare-fun e!4354676 () Bool)

(declare-fun tp!2039367 () Bool)

(declare-fun tp!2039368 () Bool)

(assert (=> b!7261904 (= e!4354676 (and tp!2039367 tp!2039368))))

(assert (=> b!7261861 (= tp!2039361 e!4354676)))

(assert (= (and b!7261861 ((_ is Cons!70607) (exprs!8157 (h!77056 zl!1658)))) b!7261904))

(declare-fun b!7261909 () Bool)

(declare-fun e!4354679 () Bool)

(declare-fun tp!2039371 () Bool)

(assert (=> b!7261909 (= e!4354679 (and tp_is_empty!46899 tp!2039371))))

(assert (=> b!7261860 (= tp!2039362 e!4354679)))

(assert (= (and b!7261860 ((_ is Cons!70606) (t!384796 s!7887))) b!7261909))

(declare-fun b!7261917 () Bool)

(declare-fun e!4354685 () Bool)

(declare-fun tp!2039376 () Bool)

(assert (=> b!7261917 (= e!4354685 tp!2039376)))

(declare-fun b!7261916 () Bool)

(declare-fun tp!2039377 () Bool)

(declare-fun e!4354684 () Bool)

(assert (=> b!7261916 (= e!4354684 (and (inv!89802 (h!77056 (t!384798 zl!1658))) e!4354685 tp!2039377))))

(assert (=> b!7261864 (= tp!2039360 e!4354684)))

(assert (= b!7261916 b!7261917))

(assert (= (and b!7261864 ((_ is Cons!70608) (t!384798 zl!1658))) b!7261916))

(declare-fun m!7946532 () Bool)

(assert (=> b!7261916 m!7946532))

(check-sat (not b!7261895) (not b!7261909) (not b!7261881) (not b!7261916) (not b!7261897) (not b!7261883) (not b!7261917) (not d!2259231) (not d!2259223) (not b!7261884) (not b!7261893) (not d!2259217) (not d!2259225) (not b!7261882) (not b!7261904) (not b!7261899) tp_is_empty!46899 (not b!7261887) (not b!7261894) (not d!2259227) (not d!2259233) (not b!7261896))
(check-sat)
