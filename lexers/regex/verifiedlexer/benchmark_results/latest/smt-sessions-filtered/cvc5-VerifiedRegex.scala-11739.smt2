; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663522 () Bool)

(assert start!663522)

(declare-fun b!6875683 () Bool)

(assert (=> b!6875683 true))

(declare-fun b!6875680 () Bool)

(declare-fun e!4144113 () Bool)

(declare-fun tp!1889026 () Bool)

(assert (=> b!6875680 (= e!4144113 tp!1889026)))

(declare-fun b!6875681 () Bool)

(declare-fun res!2803710 () Bool)

(declare-fun e!4144112 () Bool)

(assert (=> b!6875681 (=> (not res!2803710) (not e!4144112))))

(declare-datatypes ((C!33718 0))(
  ( (C!33719 (val!26561 Int)) )
))
(declare-datatypes ((Regex!16724 0))(
  ( (ElementMatch!16724 (c!1279408 C!33718)) (Concat!25569 (regOne!33960 Regex!16724) (regTwo!33960 Regex!16724)) (EmptyExpr!16724) (Star!16724 (reg!17053 Regex!16724)) (EmptyLang!16724) (Union!16724 (regOne!33961 Regex!16724) (regTwo!33961 Regex!16724)) )
))
(declare-datatypes ((List!66459 0))(
  ( (Nil!66335) (Cons!66335 (h!72783 Regex!16724) (t!380202 List!66459)) )
))
(declare-datatypes ((Context!12216 0))(
  ( (Context!12217 (exprs!6608 List!66459)) )
))
(declare-datatypes ((List!66460 0))(
  ( (Nil!66336) (Cons!66336 (h!72784 Context!12216) (t!380203 List!66460)) )
))
(declare-fun zl!1520 () List!66460)

(declare-fun r!11177 () Regex!16724)

(declare-fun contains!20380 (List!66459 Regex!16724) Bool)

(declare-fun unfocusZipperList!2141 (List!66460) List!66459)

(assert (=> b!6875681 (= res!2803710 (contains!20380 (unfocusZipperList!2141 (t!380203 zl!1520)) r!11177))))

(declare-fun b!6875682 () Bool)

(declare-fun tp!1889031 () Bool)

(declare-fun tp!1889030 () Bool)

(assert (=> b!6875682 (= e!4144113 (and tp!1889031 tp!1889030))))

(declare-fun lambda!389228 () Int)

(declare-fun exists!2854 (List!66460 Int) Bool)

(assert (=> b!6875683 (= e!4144112 (not (exists!2854 zl!1520 lambda!389228)))))

(assert (=> b!6875683 (exists!2854 (t!380203 zl!1520) lambda!389228)))

(declare-datatypes ((Unit!160212 0))(
  ( (Unit!160213) )
))
(declare-fun lt!2459111 () Unit!160212)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!43 (List!66460 Regex!16724) Unit!160212)

(assert (=> b!6875683 (= lt!2459111 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!43 (t!380203 zl!1520) r!11177))))

(declare-fun tp!1889032 () Bool)

(declare-fun e!4144111 () Bool)

(declare-fun e!4144114 () Bool)

(declare-fun b!6875684 () Bool)

(declare-fun inv!85058 (Context!12216) Bool)

(assert (=> b!6875684 (= e!4144111 (and (inv!85058 (h!72784 zl!1520)) e!4144114 tp!1889032))))

(declare-fun b!6875685 () Bool)

(declare-fun tp_is_empty!42701 () Bool)

(assert (=> b!6875685 (= e!4144113 tp_is_empty!42701)))

(declare-fun b!6875687 () Bool)

(declare-fun res!2803709 () Bool)

(assert (=> b!6875687 (=> (not res!2803709) (not e!4144112))))

(assert (=> b!6875687 (= res!2803709 (is-Cons!66336 zl!1520))))

(declare-fun b!6875688 () Bool)

(declare-fun tp!1889028 () Bool)

(declare-fun tp!1889029 () Bool)

(assert (=> b!6875688 (= e!4144113 (and tp!1889028 tp!1889029))))

(declare-fun res!2803711 () Bool)

(assert (=> start!663522 (=> (not res!2803711) (not e!4144112))))

(assert (=> start!663522 (= res!2803711 (contains!20380 (unfocusZipperList!2141 zl!1520) r!11177))))

(assert (=> start!663522 e!4144112))

(assert (=> start!663522 e!4144111))

(assert (=> start!663522 e!4144113))

(declare-fun b!6875686 () Bool)

(declare-fun tp!1889027 () Bool)

(assert (=> b!6875686 (= e!4144114 tp!1889027)))

(assert (= (and start!663522 res!2803711) b!6875687))

(assert (= (and b!6875687 res!2803709) b!6875681))

(assert (= (and b!6875681 res!2803710) b!6875683))

(assert (= b!6875684 b!6875686))

(assert (= (and start!663522 (is-Cons!66336 zl!1520)) b!6875684))

(assert (= (and start!663522 (is-ElementMatch!16724 r!11177)) b!6875685))

(assert (= (and start!663522 (is-Concat!25569 r!11177)) b!6875688))

(assert (= (and start!663522 (is-Star!16724 r!11177)) b!6875680))

(assert (= (and start!663522 (is-Union!16724 r!11177)) b!6875682))

(declare-fun m!7604044 () Bool)

(assert (=> b!6875681 m!7604044))

(assert (=> b!6875681 m!7604044))

(declare-fun m!7604046 () Bool)

(assert (=> b!6875681 m!7604046))

(declare-fun m!7604048 () Bool)

(assert (=> b!6875683 m!7604048))

(declare-fun m!7604050 () Bool)

(assert (=> b!6875683 m!7604050))

(declare-fun m!7604052 () Bool)

(assert (=> b!6875683 m!7604052))

(declare-fun m!7604054 () Bool)

(assert (=> b!6875684 m!7604054))

(declare-fun m!7604056 () Bool)

(assert (=> start!663522 m!7604056))

(assert (=> start!663522 m!7604056))

(declare-fun m!7604058 () Bool)

(assert (=> start!663522 m!7604058))

(push 1)

(assert (not b!6875684))

(assert (not b!6875683))

(assert (not start!663522))

(assert (not b!6875686))

(assert (not b!6875681))

(assert (not b!6875682))

(assert tp_is_empty!42701)

(assert (not b!6875680))

(assert (not b!6875688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2159236 () Bool)

(declare-fun lt!2459117 () Bool)

(declare-fun content!13029 (List!66459) (Set Regex!16724))

(assert (=> d!2159236 (= lt!2459117 (set.member r!11177 (content!13029 (unfocusZipperList!2141 (t!380203 zl!1520)))))))

(declare-fun e!4144132 () Bool)

(assert (=> d!2159236 (= lt!2459117 e!4144132)))

(declare-fun res!2803726 () Bool)

(assert (=> d!2159236 (=> (not res!2803726) (not e!4144132))))

(assert (=> d!2159236 (= res!2803726 (is-Cons!66335 (unfocusZipperList!2141 (t!380203 zl!1520))))))

(assert (=> d!2159236 (= (contains!20380 (unfocusZipperList!2141 (t!380203 zl!1520)) r!11177) lt!2459117)))

(declare-fun b!6875724 () Bool)

(declare-fun e!4144131 () Bool)

(assert (=> b!6875724 (= e!4144132 e!4144131)))

(declare-fun res!2803725 () Bool)

(assert (=> b!6875724 (=> res!2803725 e!4144131)))

(assert (=> b!6875724 (= res!2803725 (= (h!72783 (unfocusZipperList!2141 (t!380203 zl!1520))) r!11177))))

(declare-fun b!6875725 () Bool)

(assert (=> b!6875725 (= e!4144131 (contains!20380 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520))) r!11177))))

(assert (= (and d!2159236 res!2803726) b!6875724))

(assert (= (and b!6875724 (not res!2803725)) b!6875725))

(assert (=> d!2159236 m!7604044))

(declare-fun m!7604076 () Bool)

(assert (=> d!2159236 m!7604076))

(declare-fun m!7604078 () Bool)

(assert (=> d!2159236 m!7604078))

(declare-fun m!7604080 () Bool)

(assert (=> b!6875725 m!7604080))

(assert (=> b!6875681 d!2159236))

(declare-fun d!2159240 () Bool)

(declare-fun lt!2459120 () List!66459)

(declare-fun lambda!389240 () Int)

(declare-fun forall!15921 (List!66459 Int) Bool)

(assert (=> d!2159240 (forall!15921 lt!2459120 lambda!389240)))

(declare-fun e!4144135 () List!66459)

(assert (=> d!2159240 (= lt!2459120 e!4144135)))

(declare-fun c!1279416 () Bool)

(assert (=> d!2159240 (= c!1279416 (is-Cons!66336 (t!380203 zl!1520)))))

(assert (=> d!2159240 (= (unfocusZipperList!2141 (t!380203 zl!1520)) lt!2459120)))

(declare-fun b!6875732 () Bool)

(declare-fun generalisedConcat!2306 (List!66459) Regex!16724)

(assert (=> b!6875732 (= e!4144135 (Cons!66335 (generalisedConcat!2306 (exprs!6608 (h!72784 (t!380203 zl!1520)))) (unfocusZipperList!2141 (t!380203 (t!380203 zl!1520)))))))

(declare-fun b!6875733 () Bool)

(assert (=> b!6875733 (= e!4144135 Nil!66335)))

(assert (= (and d!2159240 c!1279416) b!6875732))

(assert (= (and d!2159240 (not c!1279416)) b!6875733))

(declare-fun m!7604086 () Bool)

(assert (=> d!2159240 m!7604086))

(declare-fun m!7604088 () Bool)

(assert (=> b!6875732 m!7604088))

(declare-fun m!7604090 () Bool)

(assert (=> b!6875732 m!7604090))

(assert (=> b!6875681 d!2159240))

(declare-fun d!2159246 () Bool)

(declare-fun lt!2459121 () Bool)

(assert (=> d!2159246 (= lt!2459121 (set.member r!11177 (content!13029 (unfocusZipperList!2141 zl!1520))))))

(declare-fun e!4144137 () Bool)

(assert (=> d!2159246 (= lt!2459121 e!4144137)))

(declare-fun res!2803728 () Bool)

(assert (=> d!2159246 (=> (not res!2803728) (not e!4144137))))

(assert (=> d!2159246 (= res!2803728 (is-Cons!66335 (unfocusZipperList!2141 zl!1520)))))

(assert (=> d!2159246 (= (contains!20380 (unfocusZipperList!2141 zl!1520) r!11177) lt!2459121)))

(declare-fun b!6875734 () Bool)

(declare-fun e!4144136 () Bool)

(assert (=> b!6875734 (= e!4144137 e!4144136)))

(declare-fun res!2803727 () Bool)

(assert (=> b!6875734 (=> res!2803727 e!4144136)))

(assert (=> b!6875734 (= res!2803727 (= (h!72783 (unfocusZipperList!2141 zl!1520)) r!11177))))

(declare-fun b!6875735 () Bool)

(assert (=> b!6875735 (= e!4144136 (contains!20380 (t!380202 (unfocusZipperList!2141 zl!1520)) r!11177))))

(assert (= (and d!2159246 res!2803728) b!6875734))

(assert (= (and b!6875734 (not res!2803727)) b!6875735))

(assert (=> d!2159246 m!7604056))

(declare-fun m!7604092 () Bool)

(assert (=> d!2159246 m!7604092))

(declare-fun m!7604094 () Bool)

(assert (=> d!2159246 m!7604094))

(declare-fun m!7604096 () Bool)

(assert (=> b!6875735 m!7604096))

(assert (=> start!663522 d!2159246))

(declare-fun bs!1837717 () Bool)

(declare-fun d!2159248 () Bool)

(assert (= bs!1837717 (and d!2159248 d!2159240)))

(declare-fun lambda!389241 () Int)

(assert (=> bs!1837717 (= lambda!389241 lambda!389240)))

(declare-fun lt!2459122 () List!66459)

(assert (=> d!2159248 (forall!15921 lt!2459122 lambda!389241)))

(declare-fun e!4144138 () List!66459)

(assert (=> d!2159248 (= lt!2459122 e!4144138)))

(declare-fun c!1279417 () Bool)

(assert (=> d!2159248 (= c!1279417 (is-Cons!66336 zl!1520))))

(assert (=> d!2159248 (= (unfocusZipperList!2141 zl!1520) lt!2459122)))

(declare-fun b!6875736 () Bool)

(assert (=> b!6875736 (= e!4144138 (Cons!66335 (generalisedConcat!2306 (exprs!6608 (h!72784 zl!1520))) (unfocusZipperList!2141 (t!380203 zl!1520))))))

(declare-fun b!6875737 () Bool)

(assert (=> b!6875737 (= e!4144138 Nil!66335)))

(assert (= (and d!2159248 c!1279417) b!6875736))

(assert (= (and d!2159248 (not c!1279417)) b!6875737))

(declare-fun m!7604098 () Bool)

(assert (=> d!2159248 m!7604098))

(declare-fun m!7604100 () Bool)

(assert (=> b!6875736 m!7604100))

(assert (=> b!6875736 m!7604044))

(assert (=> start!663522 d!2159248))

(declare-fun bs!1837718 () Bool)

(declare-fun d!2159250 () Bool)

(assert (= bs!1837718 (and d!2159250 d!2159240)))

(declare-fun lambda!389244 () Int)

(assert (=> bs!1837718 (= lambda!389244 lambda!389240)))

(declare-fun bs!1837719 () Bool)

(assert (= bs!1837719 (and d!2159250 d!2159248)))

(assert (=> bs!1837719 (= lambda!389244 lambda!389241)))

(assert (=> d!2159250 (= (inv!85058 (h!72784 zl!1520)) (forall!15921 (exprs!6608 (h!72784 zl!1520)) lambda!389244))))

(declare-fun bs!1837720 () Bool)

(assert (= bs!1837720 d!2159250))

(declare-fun m!7604102 () Bool)

(assert (=> bs!1837720 m!7604102))

(assert (=> b!6875684 d!2159250))

(declare-fun bs!1837721 () Bool)

(declare-fun d!2159252 () Bool)

(assert (= bs!1837721 (and d!2159252 b!6875683)))

(declare-fun lambda!389247 () Int)

(assert (=> bs!1837721 (not (= lambda!389247 lambda!389228))))

(assert (=> d!2159252 true))

(declare-fun order!27755 () Int)

(declare-fun dynLambda!26555 (Int Int) Int)

(assert (=> d!2159252 (< (dynLambda!26555 order!27755 lambda!389228) (dynLambda!26555 order!27755 lambda!389247))))

(declare-fun forall!15922 (List!66460 Int) Bool)

(assert (=> d!2159252 (= (exists!2854 zl!1520 lambda!389228) (not (forall!15922 zl!1520 lambda!389247)))))

(declare-fun bs!1837722 () Bool)

(assert (= bs!1837722 d!2159252))

(declare-fun m!7604104 () Bool)

(assert (=> bs!1837722 m!7604104))

(assert (=> b!6875683 d!2159252))

(declare-fun bs!1837723 () Bool)

(declare-fun d!2159254 () Bool)

(assert (= bs!1837723 (and d!2159254 b!6875683)))

(declare-fun lambda!389248 () Int)

(assert (=> bs!1837723 (not (= lambda!389248 lambda!389228))))

(declare-fun bs!1837724 () Bool)

(assert (= bs!1837724 (and d!2159254 d!2159252)))

(assert (=> bs!1837724 (= lambda!389248 lambda!389247)))

(assert (=> d!2159254 true))

(assert (=> d!2159254 (< (dynLambda!26555 order!27755 lambda!389228) (dynLambda!26555 order!27755 lambda!389248))))

(assert (=> d!2159254 (= (exists!2854 (t!380203 zl!1520) lambda!389228) (not (forall!15922 (t!380203 zl!1520) lambda!389248)))))

(declare-fun bs!1837725 () Bool)

(assert (= bs!1837725 d!2159254))

(declare-fun m!7604106 () Bool)

(assert (=> bs!1837725 m!7604106))

(assert (=> b!6875683 d!2159254))

(declare-fun bs!1837729 () Bool)

(declare-fun d!2159256 () Bool)

(assert (= bs!1837729 (and d!2159256 b!6875683)))

(declare-fun lambda!389254 () Int)

(assert (=> bs!1837729 (= lambda!389254 lambda!389228)))

(declare-fun bs!1837730 () Bool)

(assert (= bs!1837730 (and d!2159256 d!2159252)))

(assert (=> bs!1837730 (not (= lambda!389254 lambda!389247))))

(declare-fun bs!1837731 () Bool)

(assert (= bs!1837731 (and d!2159256 d!2159254)))

(assert (=> bs!1837731 (not (= lambda!389254 lambda!389248))))

(assert (=> d!2159256 true))

(assert (=> d!2159256 (exists!2854 (t!380203 zl!1520) lambda!389254)))

(declare-fun lt!2459128 () Unit!160212)

(declare-fun choose!51232 (List!66460 Regex!16724) Unit!160212)

(assert (=> d!2159256 (= lt!2459128 (choose!51232 (t!380203 zl!1520) r!11177))))

(assert (=> d!2159256 (contains!20380 (unfocusZipperList!2141 (t!380203 zl!1520)) r!11177)))

(assert (=> d!2159256 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!43 (t!380203 zl!1520) r!11177) lt!2459128)))

(declare-fun bs!1837733 () Bool)

(assert (= bs!1837733 d!2159256))

(declare-fun m!7604112 () Bool)

(assert (=> bs!1837733 m!7604112))

(declare-fun m!7604114 () Bool)

(assert (=> bs!1837733 m!7604114))

(assert (=> bs!1837733 m!7604044))

(assert (=> bs!1837733 m!7604044))

(assert (=> bs!1837733 m!7604046))

(assert (=> b!6875683 d!2159256))

(declare-fun b!6875751 () Bool)

(declare-fun e!4144141 () Bool)

(declare-fun tp!1889066 () Bool)

(declare-fun tp!1889068 () Bool)

(assert (=> b!6875751 (= e!4144141 (and tp!1889066 tp!1889068))))

(assert (=> b!6875682 (= tp!1889031 e!4144141)))

(declare-fun b!6875750 () Bool)

(assert (=> b!6875750 (= e!4144141 tp_is_empty!42701)))

(declare-fun b!6875753 () Bool)

(declare-fun tp!1889064 () Bool)

(declare-fun tp!1889065 () Bool)

(assert (=> b!6875753 (= e!4144141 (and tp!1889064 tp!1889065))))

(declare-fun b!6875752 () Bool)

(declare-fun tp!1889067 () Bool)

(assert (=> b!6875752 (= e!4144141 tp!1889067)))

(assert (= (and b!6875682 (is-ElementMatch!16724 (regOne!33961 r!11177))) b!6875750))

(assert (= (and b!6875682 (is-Concat!25569 (regOne!33961 r!11177))) b!6875751))

(assert (= (and b!6875682 (is-Star!16724 (regOne!33961 r!11177))) b!6875752))

(assert (= (and b!6875682 (is-Union!16724 (regOne!33961 r!11177))) b!6875753))

(declare-fun b!6875755 () Bool)

(declare-fun e!4144142 () Bool)

(declare-fun tp!1889071 () Bool)

(declare-fun tp!1889073 () Bool)

(assert (=> b!6875755 (= e!4144142 (and tp!1889071 tp!1889073))))

(assert (=> b!6875682 (= tp!1889030 e!4144142)))

(declare-fun b!6875754 () Bool)

(assert (=> b!6875754 (= e!4144142 tp_is_empty!42701)))

(declare-fun b!6875757 () Bool)

(declare-fun tp!1889069 () Bool)

(declare-fun tp!1889070 () Bool)

(assert (=> b!6875757 (= e!4144142 (and tp!1889069 tp!1889070))))

(declare-fun b!6875756 () Bool)

(declare-fun tp!1889072 () Bool)

(assert (=> b!6875756 (= e!4144142 tp!1889072)))

(assert (= (and b!6875682 (is-ElementMatch!16724 (regTwo!33961 r!11177))) b!6875754))

(assert (= (and b!6875682 (is-Concat!25569 (regTwo!33961 r!11177))) b!6875755))

(assert (= (and b!6875682 (is-Star!16724 (regTwo!33961 r!11177))) b!6875756))

(assert (= (and b!6875682 (is-Union!16724 (regTwo!33961 r!11177))) b!6875757))

(declare-fun b!6875759 () Bool)

(declare-fun e!4144143 () Bool)

(declare-fun tp!1889076 () Bool)

(declare-fun tp!1889078 () Bool)

(assert (=> b!6875759 (= e!4144143 (and tp!1889076 tp!1889078))))

(assert (=> b!6875680 (= tp!1889026 e!4144143)))

(declare-fun b!6875758 () Bool)

(assert (=> b!6875758 (= e!4144143 tp_is_empty!42701)))

(declare-fun b!6875761 () Bool)

(declare-fun tp!1889074 () Bool)

(declare-fun tp!1889075 () Bool)

(assert (=> b!6875761 (= e!4144143 (and tp!1889074 tp!1889075))))

(declare-fun b!6875760 () Bool)

(declare-fun tp!1889077 () Bool)

(assert (=> b!6875760 (= e!4144143 tp!1889077)))

(assert (= (and b!6875680 (is-ElementMatch!16724 (reg!17053 r!11177))) b!6875758))

(assert (= (and b!6875680 (is-Concat!25569 (reg!17053 r!11177))) b!6875759))

(assert (= (and b!6875680 (is-Star!16724 (reg!17053 r!11177))) b!6875760))

(assert (= (and b!6875680 (is-Union!16724 (reg!17053 r!11177))) b!6875761))

(declare-fun b!6875766 () Bool)

(declare-fun e!4144146 () Bool)

(declare-fun tp!1889083 () Bool)

(declare-fun tp!1889084 () Bool)

(assert (=> b!6875766 (= e!4144146 (and tp!1889083 tp!1889084))))

(assert (=> b!6875686 (= tp!1889027 e!4144146)))

(assert (= (and b!6875686 (is-Cons!66335 (exprs!6608 (h!72784 zl!1520)))) b!6875766))

(declare-fun b!6875774 () Bool)

(declare-fun e!4144152 () Bool)

(declare-fun tp!1889089 () Bool)

(assert (=> b!6875774 (= e!4144152 tp!1889089)))

(declare-fun e!4144151 () Bool)

(declare-fun b!6875773 () Bool)

(declare-fun tp!1889090 () Bool)

(assert (=> b!6875773 (= e!4144151 (and (inv!85058 (h!72784 (t!380203 zl!1520))) e!4144152 tp!1889090))))

(assert (=> b!6875684 (= tp!1889032 e!4144151)))

(assert (= b!6875773 b!6875774))

(assert (= (and b!6875684 (is-Cons!66336 (t!380203 zl!1520))) b!6875773))

(declare-fun m!7604116 () Bool)

(assert (=> b!6875773 m!7604116))

(declare-fun b!6875776 () Bool)

(declare-fun e!4144153 () Bool)

(declare-fun tp!1889093 () Bool)

(declare-fun tp!1889095 () Bool)

(assert (=> b!6875776 (= e!4144153 (and tp!1889093 tp!1889095))))

(assert (=> b!6875688 (= tp!1889028 e!4144153)))

(declare-fun b!6875775 () Bool)

(assert (=> b!6875775 (= e!4144153 tp_is_empty!42701)))

(declare-fun b!6875778 () Bool)

(declare-fun tp!1889091 () Bool)

(declare-fun tp!1889092 () Bool)

(assert (=> b!6875778 (= e!4144153 (and tp!1889091 tp!1889092))))

(declare-fun b!6875777 () Bool)

(declare-fun tp!1889094 () Bool)

(assert (=> b!6875777 (= e!4144153 tp!1889094)))

(assert (= (and b!6875688 (is-ElementMatch!16724 (regOne!33960 r!11177))) b!6875775))

(assert (= (and b!6875688 (is-Concat!25569 (regOne!33960 r!11177))) b!6875776))

(assert (= (and b!6875688 (is-Star!16724 (regOne!33960 r!11177))) b!6875777))

(assert (= (and b!6875688 (is-Union!16724 (regOne!33960 r!11177))) b!6875778))

(declare-fun b!6875780 () Bool)

(declare-fun e!4144154 () Bool)

(declare-fun tp!1889098 () Bool)

(declare-fun tp!1889100 () Bool)

(assert (=> b!6875780 (= e!4144154 (and tp!1889098 tp!1889100))))

(assert (=> b!6875688 (= tp!1889029 e!4144154)))

(declare-fun b!6875779 () Bool)

(assert (=> b!6875779 (= e!4144154 tp_is_empty!42701)))

(declare-fun b!6875782 () Bool)

(declare-fun tp!1889096 () Bool)

(declare-fun tp!1889097 () Bool)

(assert (=> b!6875782 (= e!4144154 (and tp!1889096 tp!1889097))))

(declare-fun b!6875781 () Bool)

(declare-fun tp!1889099 () Bool)

(assert (=> b!6875781 (= e!4144154 tp!1889099)))

(assert (= (and b!6875688 (is-ElementMatch!16724 (regTwo!33960 r!11177))) b!6875779))

(assert (= (and b!6875688 (is-Concat!25569 (regTwo!33960 r!11177))) b!6875780))

(assert (= (and b!6875688 (is-Star!16724 (regTwo!33960 r!11177))) b!6875781))

(assert (= (and b!6875688 (is-Union!16724 (regTwo!33960 r!11177))) b!6875782))

(push 1)

(assert (not b!6875756))

(assert (not d!2159236))

(assert (not d!2159252))

(assert (not b!6875725))

(assert (not b!6875735))

(assert (not d!2159240))

(assert (not b!6875778))

(assert (not b!6875752))

(assert (not b!6875732))

(assert (not b!6875736))

(assert (not d!2159256))

(assert (not b!6875761))

(assert (not d!2159248))

(assert (not b!6875757))

(assert (not b!6875755))

(assert (not b!6875774))

(assert (not b!6875760))

(assert (not b!6875780))

(assert (not b!6875753))

(assert (not d!2159254))

(assert (not b!6875759))

(assert (not b!6875777))

(assert (not d!2159250))

(assert (not b!6875781))

(assert (not b!6875751))

(assert (not b!6875776))

(assert (not b!6875773))

(assert tp_is_empty!42701)

(assert (not d!2159246))

(assert (not b!6875766))

(assert (not b!6875782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2159268 () Bool)

(declare-fun c!1279428 () Bool)

(assert (=> d!2159268 (= c!1279428 (is-Nil!66335 (unfocusZipperList!2141 (t!380203 zl!1520))))))

(declare-fun e!4144185 () (Set Regex!16724))

(assert (=> d!2159268 (= (content!13029 (unfocusZipperList!2141 (t!380203 zl!1520))) e!4144185)))

(declare-fun b!6875846 () Bool)

(assert (=> b!6875846 (= e!4144185 (as set.empty (Set Regex!16724)))))

(declare-fun b!6875847 () Bool)

(assert (=> b!6875847 (= e!4144185 (set.union (set.insert (h!72783 (unfocusZipperList!2141 (t!380203 zl!1520))) (as set.empty (Set Regex!16724))) (content!13029 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520))))))))

(assert (= (and d!2159268 c!1279428) b!6875846))

(assert (= (and d!2159268 (not c!1279428)) b!6875847))

(declare-fun m!7604144 () Bool)

(assert (=> b!6875847 m!7604144))

(declare-fun m!7604146 () Bool)

(assert (=> b!6875847 m!7604146))

(assert (=> d!2159236 d!2159268))

(declare-fun d!2159270 () Bool)

(declare-fun res!2803741 () Bool)

(declare-fun e!4144190 () Bool)

(assert (=> d!2159270 (=> res!2803741 e!4144190)))

(assert (=> d!2159270 (= res!2803741 (is-Nil!66336 zl!1520))))

(assert (=> d!2159270 (= (forall!15922 zl!1520 lambda!389247) e!4144190)))

(declare-fun b!6875852 () Bool)

(declare-fun e!4144191 () Bool)

(assert (=> b!6875852 (= e!4144190 e!4144191)))

(declare-fun res!2803742 () Bool)

(assert (=> b!6875852 (=> (not res!2803742) (not e!4144191))))

(declare-fun dynLambda!26557 (Int Context!12216) Bool)

(assert (=> b!6875852 (= res!2803742 (dynLambda!26557 lambda!389247 (h!72784 zl!1520)))))

(declare-fun b!6875853 () Bool)

(assert (=> b!6875853 (= e!4144191 (forall!15922 (t!380203 zl!1520) lambda!389247))))

(assert (= (and d!2159270 (not res!2803741)) b!6875852))

(assert (= (and b!6875852 res!2803742) b!6875853))

(declare-fun b_lambda!260171 () Bool)

(assert (=> (not b_lambda!260171) (not b!6875852)))

(declare-fun m!7604148 () Bool)

(assert (=> b!6875852 m!7604148))

(declare-fun m!7604150 () Bool)

(assert (=> b!6875853 m!7604150))

(assert (=> d!2159252 d!2159270))

(declare-fun d!2159272 () Bool)

(declare-fun res!2803747 () Bool)

(declare-fun e!4144196 () Bool)

(assert (=> d!2159272 (=> res!2803747 e!4144196)))

(assert (=> d!2159272 (= res!2803747 (is-Nil!66335 lt!2459120))))

(assert (=> d!2159272 (= (forall!15921 lt!2459120 lambda!389240) e!4144196)))

(declare-fun b!6875858 () Bool)

(declare-fun e!4144197 () Bool)

(assert (=> b!6875858 (= e!4144196 e!4144197)))

(declare-fun res!2803748 () Bool)

(assert (=> b!6875858 (=> (not res!2803748) (not e!4144197))))

(declare-fun dynLambda!26558 (Int Regex!16724) Bool)

(assert (=> b!6875858 (= res!2803748 (dynLambda!26558 lambda!389240 (h!72783 lt!2459120)))))

(declare-fun b!6875859 () Bool)

(assert (=> b!6875859 (= e!4144197 (forall!15921 (t!380202 lt!2459120) lambda!389240))))

(assert (= (and d!2159272 (not res!2803747)) b!6875858))

(assert (= (and b!6875858 res!2803748) b!6875859))

(declare-fun b_lambda!260173 () Bool)

(assert (=> (not b_lambda!260173) (not b!6875858)))

(declare-fun m!7604152 () Bool)

(assert (=> b!6875858 m!7604152))

(declare-fun m!7604154 () Bool)

(assert (=> b!6875859 m!7604154))

(assert (=> d!2159240 d!2159272))

(declare-fun d!2159274 () Bool)

(declare-fun c!1279429 () Bool)

(assert (=> d!2159274 (= c!1279429 (is-Nil!66335 (unfocusZipperList!2141 zl!1520)))))

(declare-fun e!4144198 () (Set Regex!16724))

(assert (=> d!2159274 (= (content!13029 (unfocusZipperList!2141 zl!1520)) e!4144198)))

(declare-fun b!6875860 () Bool)

(assert (=> b!6875860 (= e!4144198 (as set.empty (Set Regex!16724)))))

(declare-fun b!6875861 () Bool)

(assert (=> b!6875861 (= e!4144198 (set.union (set.insert (h!72783 (unfocusZipperList!2141 zl!1520)) (as set.empty (Set Regex!16724))) (content!13029 (t!380202 (unfocusZipperList!2141 zl!1520)))))))

(assert (= (and d!2159274 c!1279429) b!6875860))

(assert (= (and d!2159274 (not c!1279429)) b!6875861))

(declare-fun m!7604156 () Bool)

(assert (=> b!6875861 m!7604156))

(declare-fun m!7604158 () Bool)

(assert (=> b!6875861 m!7604158))

(assert (=> d!2159246 d!2159274))

(declare-fun bs!1837738 () Bool)

(declare-fun d!2159276 () Bool)

(assert (= bs!1837738 (and d!2159276 b!6875683)))

(declare-fun lambda!389262 () Int)

(assert (=> bs!1837738 (not (= lambda!389262 lambda!389228))))

(declare-fun bs!1837739 () Bool)

(assert (= bs!1837739 (and d!2159276 d!2159252)))

(assert (=> bs!1837739 (= (= lambda!389254 lambda!389228) (= lambda!389262 lambda!389247))))

(declare-fun bs!1837740 () Bool)

(assert (= bs!1837740 (and d!2159276 d!2159254)))

(assert (=> bs!1837740 (= (= lambda!389254 lambda!389228) (= lambda!389262 lambda!389248))))

(declare-fun bs!1837741 () Bool)

(assert (= bs!1837741 (and d!2159276 d!2159256)))

(assert (=> bs!1837741 (not (= lambda!389262 lambda!389254))))

(assert (=> d!2159276 true))

(assert (=> d!2159276 (< (dynLambda!26555 order!27755 lambda!389254) (dynLambda!26555 order!27755 lambda!389262))))

(assert (=> d!2159276 (= (exists!2854 (t!380203 zl!1520) lambda!389254) (not (forall!15922 (t!380203 zl!1520) lambda!389262)))))

(declare-fun bs!1837742 () Bool)

(assert (= bs!1837742 d!2159276))

(declare-fun m!7604160 () Bool)

(assert (=> bs!1837742 m!7604160))

(assert (=> d!2159256 d!2159276))

(declare-fun bs!1837743 () Bool)

(declare-fun d!2159278 () Bool)

(assert (= bs!1837743 (and d!2159278 d!2159276)))

(declare-fun lambda!389265 () Int)

(assert (=> bs!1837743 (not (= lambda!389265 lambda!389262))))

(declare-fun bs!1837744 () Bool)

(assert (= bs!1837744 (and d!2159278 d!2159256)))

(assert (=> bs!1837744 (= lambda!389265 lambda!389254)))

(declare-fun bs!1837745 () Bool)

(assert (= bs!1837745 (and d!2159278 d!2159252)))

(assert (=> bs!1837745 (not (= lambda!389265 lambda!389247))))

(declare-fun bs!1837746 () Bool)

(assert (= bs!1837746 (and d!2159278 d!2159254)))

(assert (=> bs!1837746 (not (= lambda!389265 lambda!389248))))

(declare-fun bs!1837747 () Bool)

(assert (= bs!1837747 (and d!2159278 b!6875683)))

(assert (=> bs!1837747 (= lambda!389265 lambda!389228)))

(assert (=> d!2159278 true))

(assert (=> d!2159278 (exists!2854 (t!380203 zl!1520) lambda!389265)))

(assert (=> d!2159278 true))

(declare-fun _$46!2048 () Unit!160212)

(assert (=> d!2159278 (= (choose!51232 (t!380203 zl!1520) r!11177) _$46!2048)))

(declare-fun bs!1837748 () Bool)

(assert (= bs!1837748 d!2159278))

(declare-fun m!7604162 () Bool)

(assert (=> bs!1837748 m!7604162))

(assert (=> d!2159256 d!2159278))

(assert (=> d!2159256 d!2159236))

(assert (=> d!2159256 d!2159240))

(declare-fun d!2159280 () Bool)

(declare-fun res!2803749 () Bool)

(declare-fun e!4144199 () Bool)

(assert (=> d!2159280 (=> res!2803749 e!4144199)))

(assert (=> d!2159280 (= res!2803749 (is-Nil!66335 (exprs!6608 (h!72784 zl!1520))))))

(assert (=> d!2159280 (= (forall!15921 (exprs!6608 (h!72784 zl!1520)) lambda!389244) e!4144199)))

(declare-fun b!6875862 () Bool)

(declare-fun e!4144200 () Bool)

(assert (=> b!6875862 (= e!4144199 e!4144200)))

(declare-fun res!2803750 () Bool)

(assert (=> b!6875862 (=> (not res!2803750) (not e!4144200))))

(assert (=> b!6875862 (= res!2803750 (dynLambda!26558 lambda!389244 (h!72783 (exprs!6608 (h!72784 zl!1520)))))))

(declare-fun b!6875863 () Bool)

(assert (=> b!6875863 (= e!4144200 (forall!15921 (t!380202 (exprs!6608 (h!72784 zl!1520))) lambda!389244))))

(assert (= (and d!2159280 (not res!2803749)) b!6875862))

(assert (= (and b!6875862 res!2803750) b!6875863))

(declare-fun b_lambda!260175 () Bool)

(assert (=> (not b_lambda!260175) (not b!6875862)))

(declare-fun m!7604164 () Bool)

(assert (=> b!6875862 m!7604164))

(declare-fun m!7604166 () Bool)

(assert (=> b!6875863 m!7604166))

(assert (=> d!2159250 d!2159280))

(declare-fun bs!1837749 () Bool)

(declare-fun d!2159282 () Bool)

(assert (= bs!1837749 (and d!2159282 d!2159240)))

(declare-fun lambda!389268 () Int)

(assert (=> bs!1837749 (= lambda!389268 lambda!389240)))

(declare-fun bs!1837750 () Bool)

(assert (= bs!1837750 (and d!2159282 d!2159248)))

(assert (=> bs!1837750 (= lambda!389268 lambda!389241)))

(declare-fun bs!1837751 () Bool)

(assert (= bs!1837751 (and d!2159282 d!2159250)))

(assert (=> bs!1837751 (= lambda!389268 lambda!389244)))

(declare-fun b!6875884 () Bool)

(declare-fun e!4144217 () Regex!16724)

(assert (=> b!6875884 (= e!4144217 (h!72783 (exprs!6608 (h!72784 (t!380203 zl!1520)))))))

(declare-fun b!6875885 () Bool)

(declare-fun e!4144216 () Regex!16724)

(assert (=> b!6875885 (= e!4144217 e!4144216)))

(declare-fun c!1279440 () Bool)

(assert (=> b!6875885 (= c!1279440 (is-Cons!66335 (exprs!6608 (h!72784 (t!380203 zl!1520)))))))

(declare-fun b!6875886 () Bool)

(declare-fun e!4144215 () Bool)

(declare-fun lt!2459139 () Regex!16724)

(declare-fun isEmptyExpr!2021 (Regex!16724) Bool)

(assert (=> b!6875886 (= e!4144215 (isEmptyExpr!2021 lt!2459139))))

(declare-fun b!6875887 () Bool)

(declare-fun e!4144214 () Bool)

(assert (=> b!6875887 (= e!4144215 e!4144214)))

(declare-fun c!1279441 () Bool)

(declare-fun isEmpty!38656 (List!66459) Bool)

(declare-fun tail!12850 (List!66459) List!66459)

(assert (=> b!6875887 (= c!1279441 (isEmpty!38656 (tail!12850 (exprs!6608 (h!72784 (t!380203 zl!1520))))))))

(declare-fun b!6875888 () Bool)

(declare-fun e!4144213 () Bool)

(assert (=> b!6875888 (= e!4144213 (isEmpty!38656 (t!380202 (exprs!6608 (h!72784 (t!380203 zl!1520))))))))

(declare-fun b!6875889 () Bool)

(assert (=> b!6875889 (= e!4144216 EmptyExpr!16724)))

(declare-fun b!6875890 () Bool)

(declare-fun e!4144218 () Bool)

(assert (=> b!6875890 (= e!4144218 e!4144215)))

(declare-fun c!1279443 () Bool)

(assert (=> b!6875890 (= c!1279443 (isEmpty!38656 (exprs!6608 (h!72784 (t!380203 zl!1520)))))))

(declare-fun b!6875891 () Bool)

(declare-fun head!13798 (List!66459) Regex!16724)

(assert (=> b!6875891 (= e!4144214 (= lt!2459139 (head!13798 (exprs!6608 (h!72784 (t!380203 zl!1520))))))))

(assert (=> d!2159282 e!4144218))

(declare-fun res!2803756 () Bool)

(assert (=> d!2159282 (=> (not res!2803756) (not e!4144218))))

(declare-fun validRegex!8450 (Regex!16724) Bool)

(assert (=> d!2159282 (= res!2803756 (validRegex!8450 lt!2459139))))

(assert (=> d!2159282 (= lt!2459139 e!4144217)))

(declare-fun c!1279442 () Bool)

(assert (=> d!2159282 (= c!1279442 e!4144213)))

(declare-fun res!2803755 () Bool)

(assert (=> d!2159282 (=> (not res!2803755) (not e!4144213))))

(assert (=> d!2159282 (= res!2803755 (is-Cons!66335 (exprs!6608 (h!72784 (t!380203 zl!1520)))))))

(assert (=> d!2159282 (forall!15921 (exprs!6608 (h!72784 (t!380203 zl!1520))) lambda!389268)))

(assert (=> d!2159282 (= (generalisedConcat!2306 (exprs!6608 (h!72784 (t!380203 zl!1520)))) lt!2459139)))

(declare-fun b!6875892 () Bool)

(declare-fun isConcat!1544 (Regex!16724) Bool)

(assert (=> b!6875892 (= e!4144214 (isConcat!1544 lt!2459139))))

(declare-fun b!6875893 () Bool)

(assert (=> b!6875893 (= e!4144216 (Concat!25569 (h!72783 (exprs!6608 (h!72784 (t!380203 zl!1520)))) (generalisedConcat!2306 (t!380202 (exprs!6608 (h!72784 (t!380203 zl!1520)))))))))

(assert (= (and d!2159282 res!2803755) b!6875888))

(assert (= (and d!2159282 c!1279442) b!6875884))

(assert (= (and d!2159282 (not c!1279442)) b!6875885))

(assert (= (and b!6875885 c!1279440) b!6875893))

(assert (= (and b!6875885 (not c!1279440)) b!6875889))

(assert (= (and d!2159282 res!2803756) b!6875890))

(assert (= (and b!6875890 c!1279443) b!6875886))

(assert (= (and b!6875890 (not c!1279443)) b!6875887))

(assert (= (and b!6875887 c!1279441) b!6875891))

(assert (= (and b!6875887 (not c!1279441)) b!6875892))

(declare-fun m!7604168 () Bool)

(assert (=> b!6875891 m!7604168))

(declare-fun m!7604170 () Bool)

(assert (=> b!6875893 m!7604170))

(declare-fun m!7604172 () Bool)

(assert (=> b!6875892 m!7604172))

(declare-fun m!7604174 () Bool)

(assert (=> b!6875888 m!7604174))

(declare-fun m!7604176 () Bool)

(assert (=> b!6875886 m!7604176))

(declare-fun m!7604178 () Bool)

(assert (=> d!2159282 m!7604178))

(declare-fun m!7604180 () Bool)

(assert (=> d!2159282 m!7604180))

(declare-fun m!7604182 () Bool)

(assert (=> b!6875890 m!7604182))

(declare-fun m!7604184 () Bool)

(assert (=> b!6875887 m!7604184))

(assert (=> b!6875887 m!7604184))

(declare-fun m!7604186 () Bool)

(assert (=> b!6875887 m!7604186))

(assert (=> b!6875732 d!2159282))

(declare-fun bs!1837752 () Bool)

(declare-fun d!2159284 () Bool)

(assert (= bs!1837752 (and d!2159284 d!2159240)))

(declare-fun lambda!389269 () Int)

(assert (=> bs!1837752 (= lambda!389269 lambda!389240)))

(declare-fun bs!1837753 () Bool)

(assert (= bs!1837753 (and d!2159284 d!2159248)))

(assert (=> bs!1837753 (= lambda!389269 lambda!389241)))

(declare-fun bs!1837754 () Bool)

(assert (= bs!1837754 (and d!2159284 d!2159250)))

(assert (=> bs!1837754 (= lambda!389269 lambda!389244)))

(declare-fun bs!1837755 () Bool)

(assert (= bs!1837755 (and d!2159284 d!2159282)))

(assert (=> bs!1837755 (= lambda!389269 lambda!389268)))

(declare-fun lt!2459140 () List!66459)

(assert (=> d!2159284 (forall!15921 lt!2459140 lambda!389269)))

(declare-fun e!4144219 () List!66459)

(assert (=> d!2159284 (= lt!2459140 e!4144219)))

(declare-fun c!1279444 () Bool)

(assert (=> d!2159284 (= c!1279444 (is-Cons!66336 (t!380203 (t!380203 zl!1520))))))

(assert (=> d!2159284 (= (unfocusZipperList!2141 (t!380203 (t!380203 zl!1520))) lt!2459140)))

(declare-fun b!6875894 () Bool)

(assert (=> b!6875894 (= e!4144219 (Cons!66335 (generalisedConcat!2306 (exprs!6608 (h!72784 (t!380203 (t!380203 zl!1520))))) (unfocusZipperList!2141 (t!380203 (t!380203 (t!380203 zl!1520))))))))

(declare-fun b!6875895 () Bool)

(assert (=> b!6875895 (= e!4144219 Nil!66335)))

(assert (= (and d!2159284 c!1279444) b!6875894))

(assert (= (and d!2159284 (not c!1279444)) b!6875895))

(declare-fun m!7604188 () Bool)

(assert (=> d!2159284 m!7604188))

(declare-fun m!7604190 () Bool)

(assert (=> b!6875894 m!7604190))

(declare-fun m!7604192 () Bool)

(assert (=> b!6875894 m!7604192))

(assert (=> b!6875732 d!2159284))

(declare-fun bs!1837756 () Bool)

(declare-fun d!2159286 () Bool)

(assert (= bs!1837756 (and d!2159286 d!2159240)))

(declare-fun lambda!389270 () Int)

(assert (=> bs!1837756 (= lambda!389270 lambda!389240)))

(declare-fun bs!1837757 () Bool)

(assert (= bs!1837757 (and d!2159286 d!2159284)))

(assert (=> bs!1837757 (= lambda!389270 lambda!389269)))

(declare-fun bs!1837758 () Bool)

(assert (= bs!1837758 (and d!2159286 d!2159282)))

(assert (=> bs!1837758 (= lambda!389270 lambda!389268)))

(declare-fun bs!1837759 () Bool)

(assert (= bs!1837759 (and d!2159286 d!2159250)))

(assert (=> bs!1837759 (= lambda!389270 lambda!389244)))

(declare-fun bs!1837760 () Bool)

(assert (= bs!1837760 (and d!2159286 d!2159248)))

(assert (=> bs!1837760 (= lambda!389270 lambda!389241)))

(assert (=> d!2159286 (= (inv!85058 (h!72784 (t!380203 zl!1520))) (forall!15921 (exprs!6608 (h!72784 (t!380203 zl!1520))) lambda!389270))))

(declare-fun bs!1837761 () Bool)

(assert (= bs!1837761 d!2159286))

(declare-fun m!7604194 () Bool)

(assert (=> bs!1837761 m!7604194))

(assert (=> b!6875773 d!2159286))

(declare-fun d!2159288 () Bool)

(declare-fun res!2803757 () Bool)

(declare-fun e!4144220 () Bool)

(assert (=> d!2159288 (=> res!2803757 e!4144220)))

(assert (=> d!2159288 (= res!2803757 (is-Nil!66335 lt!2459122))))

(assert (=> d!2159288 (= (forall!15921 lt!2459122 lambda!389241) e!4144220)))

(declare-fun b!6875896 () Bool)

(declare-fun e!4144221 () Bool)

(assert (=> b!6875896 (= e!4144220 e!4144221)))

(declare-fun res!2803758 () Bool)

(assert (=> b!6875896 (=> (not res!2803758) (not e!4144221))))

(assert (=> b!6875896 (= res!2803758 (dynLambda!26558 lambda!389241 (h!72783 lt!2459122)))))

(declare-fun b!6875897 () Bool)

(assert (=> b!6875897 (= e!4144221 (forall!15921 (t!380202 lt!2459122) lambda!389241))))

(assert (= (and d!2159288 (not res!2803757)) b!6875896))

(assert (= (and b!6875896 res!2803758) b!6875897))

(declare-fun b_lambda!260177 () Bool)

(assert (=> (not b_lambda!260177) (not b!6875896)))

(declare-fun m!7604196 () Bool)

(assert (=> b!6875896 m!7604196))

(declare-fun m!7604198 () Bool)

(assert (=> b!6875897 m!7604198))

(assert (=> d!2159248 d!2159288))

(declare-fun d!2159290 () Bool)

(declare-fun res!2803759 () Bool)

(declare-fun e!4144222 () Bool)

(assert (=> d!2159290 (=> res!2803759 e!4144222)))

(assert (=> d!2159290 (= res!2803759 (is-Nil!66336 (t!380203 zl!1520)))))

(assert (=> d!2159290 (= (forall!15922 (t!380203 zl!1520) lambda!389248) e!4144222)))

(declare-fun b!6875898 () Bool)

(declare-fun e!4144223 () Bool)

(assert (=> b!6875898 (= e!4144222 e!4144223)))

(declare-fun res!2803760 () Bool)

(assert (=> b!6875898 (=> (not res!2803760) (not e!4144223))))

(assert (=> b!6875898 (= res!2803760 (dynLambda!26557 lambda!389248 (h!72784 (t!380203 zl!1520))))))

(declare-fun b!6875899 () Bool)

(assert (=> b!6875899 (= e!4144223 (forall!15922 (t!380203 (t!380203 zl!1520)) lambda!389248))))

(assert (= (and d!2159290 (not res!2803759)) b!6875898))

(assert (= (and b!6875898 res!2803760) b!6875899))

(declare-fun b_lambda!260179 () Bool)

(assert (=> (not b_lambda!260179) (not b!6875898)))

(declare-fun m!7604200 () Bool)

(assert (=> b!6875898 m!7604200))

(declare-fun m!7604202 () Bool)

(assert (=> b!6875899 m!7604202))

(assert (=> d!2159254 d!2159290))

(declare-fun d!2159292 () Bool)

(declare-fun lt!2459141 () Bool)

(assert (=> d!2159292 (= lt!2459141 (set.member r!11177 (content!13029 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520))))))))

(declare-fun e!4144225 () Bool)

(assert (=> d!2159292 (= lt!2459141 e!4144225)))

(declare-fun res!2803762 () Bool)

(assert (=> d!2159292 (=> (not res!2803762) (not e!4144225))))

(assert (=> d!2159292 (= res!2803762 (is-Cons!66335 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520)))))))

(assert (=> d!2159292 (= (contains!20380 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520))) r!11177) lt!2459141)))

(declare-fun b!6875900 () Bool)

(declare-fun e!4144224 () Bool)

(assert (=> b!6875900 (= e!4144225 e!4144224)))

(declare-fun res!2803761 () Bool)

(assert (=> b!6875900 (=> res!2803761 e!4144224)))

(assert (=> b!6875900 (= res!2803761 (= (h!72783 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520)))) r!11177))))

(declare-fun b!6875901 () Bool)

(assert (=> b!6875901 (= e!4144224 (contains!20380 (t!380202 (t!380202 (unfocusZipperList!2141 (t!380203 zl!1520)))) r!11177))))

(assert (= (and d!2159292 res!2803762) b!6875900))

(assert (= (and b!6875900 (not res!2803761)) b!6875901))

(assert (=> d!2159292 m!7604146))

(declare-fun m!7604204 () Bool)

(assert (=> d!2159292 m!7604204))

(declare-fun m!7604206 () Bool)

(assert (=> b!6875901 m!7604206))

(assert (=> b!6875725 d!2159292))

(declare-fun bs!1837762 () Bool)

(declare-fun d!2159294 () Bool)

(assert (= bs!1837762 (and d!2159294 d!2159240)))

(declare-fun lambda!389271 () Int)

(assert (=> bs!1837762 (= lambda!389271 lambda!389240)))

(declare-fun bs!1837763 () Bool)

(assert (= bs!1837763 (and d!2159294 d!2159284)))

(assert (=> bs!1837763 (= lambda!389271 lambda!389269)))

(declare-fun bs!1837764 () Bool)

(assert (= bs!1837764 (and d!2159294 d!2159282)))

(assert (=> bs!1837764 (= lambda!389271 lambda!389268)))

(declare-fun bs!1837765 () Bool)

(assert (= bs!1837765 (and d!2159294 d!2159286)))

(assert (=> bs!1837765 (= lambda!389271 lambda!389270)))

(declare-fun bs!1837766 () Bool)

(assert (= bs!1837766 (and d!2159294 d!2159250)))

(assert (=> bs!1837766 (= lambda!389271 lambda!389244)))

(declare-fun bs!1837767 () Bool)

(assert (= bs!1837767 (and d!2159294 d!2159248)))

(assert (=> bs!1837767 (= lambda!389271 lambda!389241)))

(declare-fun b!6875902 () Bool)

(declare-fun e!4144230 () Regex!16724)

(assert (=> b!6875902 (= e!4144230 (h!72783 (exprs!6608 (h!72784 zl!1520))))))

(declare-fun b!6875903 () Bool)

(declare-fun e!4144229 () Regex!16724)

(assert (=> b!6875903 (= e!4144230 e!4144229)))

(declare-fun c!1279445 () Bool)

(assert (=> b!6875903 (= c!1279445 (is-Cons!66335 (exprs!6608 (h!72784 zl!1520))))))

(declare-fun b!6875904 () Bool)

(declare-fun e!4144228 () Bool)

(declare-fun lt!2459142 () Regex!16724)

(assert (=> b!6875904 (= e!4144228 (isEmptyExpr!2021 lt!2459142))))

(declare-fun b!6875905 () Bool)

(declare-fun e!4144227 () Bool)

(assert (=> b!6875905 (= e!4144228 e!4144227)))

(declare-fun c!1279446 () Bool)

(assert (=> b!6875905 (= c!1279446 (isEmpty!38656 (tail!12850 (exprs!6608 (h!72784 zl!1520)))))))

(declare-fun b!6875906 () Bool)

(declare-fun e!4144226 () Bool)

(assert (=> b!6875906 (= e!4144226 (isEmpty!38656 (t!380202 (exprs!6608 (h!72784 zl!1520)))))))

(declare-fun b!6875907 () Bool)

(assert (=> b!6875907 (= e!4144229 EmptyExpr!16724)))

(declare-fun b!6875908 () Bool)

(declare-fun e!4144231 () Bool)

(assert (=> b!6875908 (= e!4144231 e!4144228)))

(declare-fun c!1279448 () Bool)

(assert (=> b!6875908 (= c!1279448 (isEmpty!38656 (exprs!6608 (h!72784 zl!1520))))))

(declare-fun b!6875909 () Bool)

(assert (=> b!6875909 (= e!4144227 (= lt!2459142 (head!13798 (exprs!6608 (h!72784 zl!1520)))))))

(assert (=> d!2159294 e!4144231))

(declare-fun res!2803764 () Bool)

(assert (=> d!2159294 (=> (not res!2803764) (not e!4144231))))

(assert (=> d!2159294 (= res!2803764 (validRegex!8450 lt!2459142))))

(assert (=> d!2159294 (= lt!2459142 e!4144230)))

(declare-fun c!1279447 () Bool)

(assert (=> d!2159294 (= c!1279447 e!4144226)))

(declare-fun res!2803763 () Bool)

(assert (=> d!2159294 (=> (not res!2803763) (not e!4144226))))

(assert (=> d!2159294 (= res!2803763 (is-Cons!66335 (exprs!6608 (h!72784 zl!1520))))))

(assert (=> d!2159294 (forall!15921 (exprs!6608 (h!72784 zl!1520)) lambda!389271)))

(assert (=> d!2159294 (= (generalisedConcat!2306 (exprs!6608 (h!72784 zl!1520))) lt!2459142)))

(declare-fun b!6875910 () Bool)

(assert (=> b!6875910 (= e!4144227 (isConcat!1544 lt!2459142))))

(declare-fun b!6875911 () Bool)

(assert (=> b!6875911 (= e!4144229 (Concat!25569 (h!72783 (exprs!6608 (h!72784 zl!1520))) (generalisedConcat!2306 (t!380202 (exprs!6608 (h!72784 zl!1520))))))))

(assert (= (and d!2159294 res!2803763) b!6875906))

(assert (= (and d!2159294 c!1279447) b!6875902))

(assert (= (and d!2159294 (not c!1279447)) b!6875903))

(assert (= (and b!6875903 c!1279445) b!6875911))

(assert (= (and b!6875903 (not c!1279445)) b!6875907))

(assert (= (and d!2159294 res!2803764) b!6875908))

(assert (= (and b!6875908 c!1279448) b!6875904))

(assert (= (and b!6875908 (not c!1279448)) b!6875905))

(assert (= (and b!6875905 c!1279446) b!6875909))

(assert (= (and b!6875905 (not c!1279446)) b!6875910))

(declare-fun m!7604208 () Bool)

(assert (=> b!6875909 m!7604208))

(declare-fun m!7604210 () Bool)

(assert (=> b!6875911 m!7604210))

(declare-fun m!7604212 () Bool)

(assert (=> b!6875910 m!7604212))

(declare-fun m!7604214 () Bool)

(assert (=> b!6875906 m!7604214))

(declare-fun m!7604216 () Bool)

(assert (=> b!6875904 m!7604216))

(declare-fun m!7604218 () Bool)

(assert (=> d!2159294 m!7604218))

(declare-fun m!7604220 () Bool)

(assert (=> d!2159294 m!7604220))

(declare-fun m!7604222 () Bool)

(assert (=> b!6875908 m!7604222))

(declare-fun m!7604224 () Bool)

(assert (=> b!6875905 m!7604224))

(assert (=> b!6875905 m!7604224))

(declare-fun m!7604226 () Bool)

(assert (=> b!6875905 m!7604226))

(assert (=> b!6875736 d!2159294))

(assert (=> b!6875736 d!2159240))

(declare-fun d!2159296 () Bool)

(declare-fun lt!2459143 () Bool)

(assert (=> d!2159296 (= lt!2459143 (set.member r!11177 (content!13029 (t!380202 (unfocusZipperList!2141 zl!1520)))))))

(declare-fun e!4144233 () Bool)

(assert (=> d!2159296 (= lt!2459143 e!4144233)))

(declare-fun res!2803766 () Bool)

(assert (=> d!2159296 (=> (not res!2803766) (not e!4144233))))

(assert (=> d!2159296 (= res!2803766 (is-Cons!66335 (t!380202 (unfocusZipperList!2141 zl!1520))))))

(assert (=> d!2159296 (= (contains!20380 (t!380202 (unfocusZipperList!2141 zl!1520)) r!11177) lt!2459143)))

(declare-fun b!6875912 () Bool)

(declare-fun e!4144232 () Bool)

(assert (=> b!6875912 (= e!4144233 e!4144232)))

(declare-fun res!2803765 () Bool)

(assert (=> b!6875912 (=> res!2803765 e!4144232)))

(assert (=> b!6875912 (= res!2803765 (= (h!72783 (t!380202 (unfocusZipperList!2141 zl!1520))) r!11177))))

(declare-fun b!6875913 () Bool)

(assert (=> b!6875913 (= e!4144232 (contains!20380 (t!380202 (t!380202 (unfocusZipperList!2141 zl!1520))) r!11177))))

(assert (= (and d!2159296 res!2803766) b!6875912))

(assert (= (and b!6875912 (not res!2803765)) b!6875913))

(assert (=> d!2159296 m!7604158))

(declare-fun m!7604228 () Bool)

(assert (=> d!2159296 m!7604228))

(declare-fun m!7604230 () Bool)

(assert (=> b!6875913 m!7604230))

(assert (=> b!6875735 d!2159296))

(declare-fun b!6875915 () Bool)

(declare-fun e!4144234 () Bool)

(declare-fun tp!1889150 () Bool)

(declare-fun tp!1889152 () Bool)

(assert (=> b!6875915 (= e!4144234 (and tp!1889150 tp!1889152))))

(assert (=> b!6875766 (= tp!1889083 e!4144234)))

(declare-fun b!6875914 () Bool)

(assert (=> b!6875914 (= e!4144234 tp_is_empty!42701)))

(declare-fun b!6875917 () Bool)

(declare-fun tp!1889148 () Bool)

(declare-fun tp!1889149 () Bool)

(assert (=> b!6875917 (= e!4144234 (and tp!1889148 tp!1889149))))

(declare-fun b!6875916 () Bool)

(declare-fun tp!1889151 () Bool)

(assert (=> b!6875916 (= e!4144234 tp!1889151)))

(assert (= (and b!6875766 (is-ElementMatch!16724 (h!72783 (exprs!6608 (h!72784 zl!1520))))) b!6875914))

(assert (= (and b!6875766 (is-Concat!25569 (h!72783 (exprs!6608 (h!72784 zl!1520))))) b!6875915))

(assert (= (and b!6875766 (is-Star!16724 (h!72783 (exprs!6608 (h!72784 zl!1520))))) b!6875916))

(assert (= (and b!6875766 (is-Union!16724 (h!72783 (exprs!6608 (h!72784 zl!1520))))) b!6875917))

(declare-fun b!6875918 () Bool)

(declare-fun e!4144235 () Bool)

(declare-fun tp!1889153 () Bool)

(declare-fun tp!1889154 () Bool)

(assert (=> b!6875918 (= e!4144235 (and tp!1889153 tp!1889154))))

(assert (=> b!6875766 (= tp!1889084 e!4144235)))

(assert (= (and b!6875766 (is-Cons!66335 (t!380202 (exprs!6608 (h!72784 zl!1520))))) b!6875918))

(declare-fun b!6875920 () Bool)

(declare-fun e!4144236 () Bool)

(declare-fun tp!1889157 () Bool)

(declare-fun tp!1889159 () Bool)

(assert (=> b!6875920 (= e!4144236 (and tp!1889157 tp!1889159))))

(assert (=> b!6875756 (= tp!1889072 e!4144236)))

(declare-fun b!6875919 () Bool)

(assert (=> b!6875919 (= e!4144236 tp_is_empty!42701)))

(declare-fun b!6875922 () Bool)

(declare-fun tp!1889155 () Bool)

(declare-fun tp!1889156 () Bool)

(assert (=> b!6875922 (= e!4144236 (and tp!1889155 tp!1889156))))

(declare-fun b!6875921 () Bool)

(declare-fun tp!1889158 () Bool)

(assert (=> b!6875921 (= e!4144236 tp!1889158)))

(assert (= (and b!6875756 (is-ElementMatch!16724 (reg!17053 (regTwo!33961 r!11177)))) b!6875919))

(assert (= (and b!6875756 (is-Concat!25569 (reg!17053 (regTwo!33961 r!11177)))) b!6875920))

(assert (= (and b!6875756 (is-Star!16724 (reg!17053 (regTwo!33961 r!11177)))) b!6875921))

(assert (= (and b!6875756 (is-Union!16724 (reg!17053 (regTwo!33961 r!11177)))) b!6875922))

(declare-fun b!6875924 () Bool)

(declare-fun e!4144237 () Bool)

(declare-fun tp!1889162 () Bool)

(declare-fun tp!1889164 () Bool)

(assert (=> b!6875924 (= e!4144237 (and tp!1889162 tp!1889164))))

(assert (=> b!6875777 (= tp!1889094 e!4144237)))

(declare-fun b!6875923 () Bool)

(assert (=> b!6875923 (= e!4144237 tp_is_empty!42701)))

(declare-fun b!6875926 () Bool)

(declare-fun tp!1889160 () Bool)

(declare-fun tp!1889161 () Bool)

(assert (=> b!6875926 (= e!4144237 (and tp!1889160 tp!1889161))))

(declare-fun b!6875925 () Bool)

(declare-fun tp!1889163 () Bool)

(assert (=> b!6875925 (= e!4144237 tp!1889163)))

(assert (= (and b!6875777 (is-ElementMatch!16724 (reg!17053 (regOne!33960 r!11177)))) b!6875923))

(assert (= (and b!6875777 (is-Concat!25569 (reg!17053 (regOne!33960 r!11177)))) b!6875924))

(assert (= (and b!6875777 (is-Star!16724 (reg!17053 (regOne!33960 r!11177)))) b!6875925))

(assert (= (and b!6875777 (is-Union!16724 (reg!17053 (regOne!33960 r!11177)))) b!6875926))

(declare-fun b!6875928 () Bool)

(declare-fun e!4144238 () Bool)

(declare-fun tp!1889167 () Bool)

(declare-fun tp!1889169 () Bool)

(assert (=> b!6875928 (= e!4144238 (and tp!1889167 tp!1889169))))

(assert (=> b!6875751 (= tp!1889066 e!4144238)))

(declare-fun b!6875927 () Bool)

(assert (=> b!6875927 (= e!4144238 tp_is_empty!42701)))

(declare-fun b!6875930 () Bool)

(declare-fun tp!1889165 () Bool)

(declare-fun tp!1889166 () Bool)

(assert (=> b!6875930 (= e!4144238 (and tp!1889165 tp!1889166))))

(declare-fun b!6875929 () Bool)

(declare-fun tp!1889168 () Bool)

(assert (=> b!6875929 (= e!4144238 tp!1889168)))

(assert (= (and b!6875751 (is-ElementMatch!16724 (regOne!33960 (regOne!33961 r!11177)))) b!6875927))

(assert (= (and b!6875751 (is-Concat!25569 (regOne!33960 (regOne!33961 r!11177)))) b!6875928))

(assert (= (and b!6875751 (is-Star!16724 (regOne!33960 (regOne!33961 r!11177)))) b!6875929))

(assert (= (and b!6875751 (is-Union!16724 (regOne!33960 (regOne!33961 r!11177)))) b!6875930))

(declare-fun b!6875932 () Bool)

(declare-fun e!4144239 () Bool)

(declare-fun tp!1889172 () Bool)

(declare-fun tp!1889174 () Bool)

(assert (=> b!6875932 (= e!4144239 (and tp!1889172 tp!1889174))))

(assert (=> b!6875751 (= tp!1889068 e!4144239)))

(declare-fun b!6875931 () Bool)

(assert (=> b!6875931 (= e!4144239 tp_is_empty!42701)))

(declare-fun b!6875934 () Bool)

(declare-fun tp!1889170 () Bool)

(declare-fun tp!1889171 () Bool)

(assert (=> b!6875934 (= e!4144239 (and tp!1889170 tp!1889171))))

(declare-fun b!6875933 () Bool)

(declare-fun tp!1889173 () Bool)

(assert (=> b!6875933 (= e!4144239 tp!1889173)))

(assert (= (and b!6875751 (is-ElementMatch!16724 (regTwo!33960 (regOne!33961 r!11177)))) b!6875931))

(assert (= (and b!6875751 (is-Concat!25569 (regTwo!33960 (regOne!33961 r!11177)))) b!6875932))

(assert (= (and b!6875751 (is-Star!16724 (regTwo!33960 (regOne!33961 r!11177)))) b!6875933))

(assert (= (and b!6875751 (is-Union!16724 (regTwo!33960 (regOne!33961 r!11177)))) b!6875934))

(declare-fun b!6875935 () Bool)

(declare-fun e!4144240 () Bool)

(declare-fun tp!1889175 () Bool)

(declare-fun tp!1889176 () Bool)

(assert (=> b!6875935 (= e!4144240 (and tp!1889175 tp!1889176))))

(assert (=> b!6875774 (= tp!1889089 e!4144240)))

(assert (= (and b!6875774 (is-Cons!66335 (exprs!6608 (h!72784 (t!380203 zl!1520))))) b!6875935))

(declare-fun b!6875937 () Bool)

(declare-fun e!4144241 () Bool)

(declare-fun tp!1889179 () Bool)

(declare-fun tp!1889181 () Bool)

(assert (=> b!6875937 (= e!4144241 (and tp!1889179 tp!1889181))))

(assert (=> b!6875752 (= tp!1889067 e!4144241)))

(declare-fun b!6875936 () Bool)

(assert (=> b!6875936 (= e!4144241 tp_is_empty!42701)))

(declare-fun b!6875939 () Bool)

(declare-fun tp!1889177 () Bool)

(declare-fun tp!1889178 () Bool)

(assert (=> b!6875939 (= e!4144241 (and tp!1889177 tp!1889178))))

(declare-fun b!6875938 () Bool)

(declare-fun tp!1889180 () Bool)

(assert (=> b!6875938 (= e!4144241 tp!1889180)))

(assert (= (and b!6875752 (is-ElementMatch!16724 (reg!17053 (regOne!33961 r!11177)))) b!6875936))

(assert (= (and b!6875752 (is-Concat!25569 (reg!17053 (regOne!33961 r!11177)))) b!6875937))

(assert (= (and b!6875752 (is-Star!16724 (reg!17053 (regOne!33961 r!11177)))) b!6875938))

(assert (= (and b!6875752 (is-Union!16724 (reg!17053 (regOne!33961 r!11177)))) b!6875939))

(declare-fun b!6875941 () Bool)

(declare-fun e!4144242 () Bool)

(declare-fun tp!1889184 () Bool)

(declare-fun tp!1889186 () Bool)

(assert (=> b!6875941 (= e!4144242 (and tp!1889184 tp!1889186))))

(assert (=> b!6875761 (= tp!1889074 e!4144242)))

(declare-fun b!6875940 () Bool)

(assert (=> b!6875940 (= e!4144242 tp_is_empty!42701)))

(declare-fun b!6875943 () Bool)

(declare-fun tp!1889182 () Bool)

(declare-fun tp!1889183 () Bool)

(assert (=> b!6875943 (= e!4144242 (and tp!1889182 tp!1889183))))

(declare-fun b!6875942 () Bool)

(declare-fun tp!1889185 () Bool)

(assert (=> b!6875942 (= e!4144242 tp!1889185)))

(assert (= (and b!6875761 (is-ElementMatch!16724 (regOne!33961 (reg!17053 r!11177)))) b!6875940))

(assert (= (and b!6875761 (is-Concat!25569 (regOne!33961 (reg!17053 r!11177)))) b!6875941))

(assert (= (and b!6875761 (is-Star!16724 (regOne!33961 (reg!17053 r!11177)))) b!6875942))

(assert (= (and b!6875761 (is-Union!16724 (regOne!33961 (reg!17053 r!11177)))) b!6875943))

(declare-fun b!6875945 () Bool)

(declare-fun e!4144243 () Bool)

(declare-fun tp!1889189 () Bool)

(declare-fun tp!1889191 () Bool)

(assert (=> b!6875945 (= e!4144243 (and tp!1889189 tp!1889191))))

(assert (=> b!6875761 (= tp!1889075 e!4144243)))

(declare-fun b!6875944 () Bool)

(assert (=> b!6875944 (= e!4144243 tp_is_empty!42701)))

(declare-fun b!6875947 () Bool)

(declare-fun tp!1889187 () Bool)

(declare-fun tp!1889188 () Bool)

(assert (=> b!6875947 (= e!4144243 (and tp!1889187 tp!1889188))))

(declare-fun b!6875946 () Bool)

(declare-fun tp!1889190 () Bool)

(assert (=> b!6875946 (= e!4144243 tp!1889190)))

(assert (= (and b!6875761 (is-ElementMatch!16724 (regTwo!33961 (reg!17053 r!11177)))) b!6875944))

(assert (= (and b!6875761 (is-Concat!25569 (regTwo!33961 (reg!17053 r!11177)))) b!6875945))

(assert (= (and b!6875761 (is-Star!16724 (regTwo!33961 (reg!17053 r!11177)))) b!6875946))

(assert (= (and b!6875761 (is-Union!16724 (regTwo!33961 (reg!17053 r!11177)))) b!6875947))

(declare-fun b!6875949 () Bool)

(declare-fun e!4144244 () Bool)

(declare-fun tp!1889194 () Bool)

(declare-fun tp!1889196 () Bool)

(assert (=> b!6875949 (= e!4144244 (and tp!1889194 tp!1889196))))

(assert (=> b!6875782 (= tp!1889096 e!4144244)))

(declare-fun b!6875948 () Bool)

(assert (=> b!6875948 (= e!4144244 tp_is_empty!42701)))

(declare-fun b!6875951 () Bool)

(declare-fun tp!1889192 () Bool)

(declare-fun tp!1889193 () Bool)

(assert (=> b!6875951 (= e!4144244 (and tp!1889192 tp!1889193))))

(declare-fun b!6875950 () Bool)

(declare-fun tp!1889195 () Bool)

(assert (=> b!6875950 (= e!4144244 tp!1889195)))

(assert (= (and b!6875782 (is-ElementMatch!16724 (regOne!33961 (regTwo!33960 r!11177)))) b!6875948))

(assert (= (and b!6875782 (is-Concat!25569 (regOne!33961 (regTwo!33960 r!11177)))) b!6875949))

(assert (= (and b!6875782 (is-Star!16724 (regOne!33961 (regTwo!33960 r!11177)))) b!6875950))

(assert (= (and b!6875782 (is-Union!16724 (regOne!33961 (regTwo!33960 r!11177)))) b!6875951))

(declare-fun b!6875953 () Bool)

(declare-fun e!4144245 () Bool)

(declare-fun tp!1889199 () Bool)

(declare-fun tp!1889201 () Bool)

(assert (=> b!6875953 (= e!4144245 (and tp!1889199 tp!1889201))))

(assert (=> b!6875782 (= tp!1889097 e!4144245)))

(declare-fun b!6875952 () Bool)

(assert (=> b!6875952 (= e!4144245 tp_is_empty!42701)))

(declare-fun b!6875955 () Bool)

(declare-fun tp!1889197 () Bool)

(declare-fun tp!1889198 () Bool)

(assert (=> b!6875955 (= e!4144245 (and tp!1889197 tp!1889198))))

(declare-fun b!6875954 () Bool)

(declare-fun tp!1889200 () Bool)

(assert (=> b!6875954 (= e!4144245 tp!1889200)))

(assert (= (and b!6875782 (is-ElementMatch!16724 (regTwo!33961 (regTwo!33960 r!11177)))) b!6875952))

(assert (= (and b!6875782 (is-Concat!25569 (regTwo!33961 (regTwo!33960 r!11177)))) b!6875953))

(assert (= (and b!6875782 (is-Star!16724 (regTwo!33961 (regTwo!33960 r!11177)))) b!6875954))

(assert (= (and b!6875782 (is-Union!16724 (regTwo!33961 (regTwo!33960 r!11177)))) b!6875955))

(declare-fun b!6875957 () Bool)

(declare-fun e!4144247 () Bool)

(declare-fun tp!1889202 () Bool)

(assert (=> b!6875957 (= e!4144247 tp!1889202)))

(declare-fun e!4144246 () Bool)

(declare-fun tp!1889203 () Bool)

(declare-fun b!6875956 () Bool)

(assert (=> b!6875956 (= e!4144246 (and (inv!85058 (h!72784 (t!380203 (t!380203 zl!1520)))) e!4144247 tp!1889203))))

(assert (=> b!6875773 (= tp!1889090 e!4144246)))

(assert (= b!6875956 b!6875957))

(assert (= (and b!6875773 (is-Cons!66336 (t!380203 (t!380203 zl!1520)))) b!6875956))

(declare-fun m!7604232 () Bool)

(assert (=> b!6875956 m!7604232))

(declare-fun b!6875959 () Bool)

(declare-fun e!4144248 () Bool)

(declare-fun tp!1889206 () Bool)

(declare-fun tp!1889208 () Bool)

(assert (=> b!6875959 (= e!4144248 (and tp!1889206 tp!1889208))))

(assert (=> b!6875759 (= tp!1889076 e!4144248)))

(declare-fun b!6875958 () Bool)

(assert (=> b!6875958 (= e!4144248 tp_is_empty!42701)))

(declare-fun b!6875961 () Bool)

(declare-fun tp!1889204 () Bool)

(declare-fun tp!1889205 () Bool)

(assert (=> b!6875961 (= e!4144248 (and tp!1889204 tp!1889205))))

(declare-fun b!6875960 () Bool)

(declare-fun tp!1889207 () Bool)

(assert (=> b!6875960 (= e!4144248 tp!1889207)))

(assert (= (and b!6875759 (is-ElementMatch!16724 (regOne!33960 (reg!17053 r!11177)))) b!6875958))

(assert (= (and b!6875759 (is-Concat!25569 (regOne!33960 (reg!17053 r!11177)))) b!6875959))

(assert (= (and b!6875759 (is-Star!16724 (regOne!33960 (reg!17053 r!11177)))) b!6875960))

(assert (= (and b!6875759 (is-Union!16724 (regOne!33960 (reg!17053 r!11177)))) b!6875961))

(declare-fun b!6875963 () Bool)

(declare-fun e!4144249 () Bool)

(declare-fun tp!1889211 () Bool)

(declare-fun tp!1889213 () Bool)

(assert (=> b!6875963 (= e!4144249 (and tp!1889211 tp!1889213))))

(assert (=> b!6875759 (= tp!1889078 e!4144249)))

(declare-fun b!6875962 () Bool)

(assert (=> b!6875962 (= e!4144249 tp_is_empty!42701)))

(declare-fun b!6875965 () Bool)

(declare-fun tp!1889209 () Bool)

(declare-fun tp!1889210 () Bool)

(assert (=> b!6875965 (= e!4144249 (and tp!1889209 tp!1889210))))

(declare-fun b!6875964 () Bool)

(declare-fun tp!1889212 () Bool)

(assert (=> b!6875964 (= e!4144249 tp!1889212)))

(assert (= (and b!6875759 (is-ElementMatch!16724 (regTwo!33960 (reg!17053 r!11177)))) b!6875962))

(assert (= (and b!6875759 (is-Concat!25569 (regTwo!33960 (reg!17053 r!11177)))) b!6875963))

(assert (= (and b!6875759 (is-Star!16724 (regTwo!33960 (reg!17053 r!11177)))) b!6875964))

(assert (= (and b!6875759 (is-Union!16724 (regTwo!33960 (reg!17053 r!11177)))) b!6875965))

(declare-fun b!6875967 () Bool)

(declare-fun e!4144250 () Bool)

(declare-fun tp!1889216 () Bool)

(declare-fun tp!1889218 () Bool)

(assert (=> b!6875967 (= e!4144250 (and tp!1889216 tp!1889218))))

(assert (=> b!6875780 (= tp!1889098 e!4144250)))

(declare-fun b!6875966 () Bool)

(assert (=> b!6875966 (= e!4144250 tp_is_empty!42701)))

(declare-fun b!6875969 () Bool)

(declare-fun tp!1889214 () Bool)

(declare-fun tp!1889215 () Bool)

(assert (=> b!6875969 (= e!4144250 (and tp!1889214 tp!1889215))))

(declare-fun b!6875968 () Bool)

(declare-fun tp!1889217 () Bool)

(assert (=> b!6875968 (= e!4144250 tp!1889217)))

(assert (= (and b!6875780 (is-ElementMatch!16724 (regOne!33960 (regTwo!33960 r!11177)))) b!6875966))

(assert (= (and b!6875780 (is-Concat!25569 (regOne!33960 (regTwo!33960 r!11177)))) b!6875967))

(assert (= (and b!6875780 (is-Star!16724 (regOne!33960 (regTwo!33960 r!11177)))) b!6875968))

(assert (= (and b!6875780 (is-Union!16724 (regOne!33960 (regTwo!33960 r!11177)))) b!6875969))

(declare-fun b!6875971 () Bool)

(declare-fun e!4144251 () Bool)

(declare-fun tp!1889221 () Bool)

(declare-fun tp!1889223 () Bool)

(assert (=> b!6875971 (= e!4144251 (and tp!1889221 tp!1889223))))

(assert (=> b!6875780 (= tp!1889100 e!4144251)))

(declare-fun b!6875970 () Bool)

(assert (=> b!6875970 (= e!4144251 tp_is_empty!42701)))

(declare-fun b!6875973 () Bool)

(declare-fun tp!1889219 () Bool)

(declare-fun tp!1889220 () Bool)

(assert (=> b!6875973 (= e!4144251 (and tp!1889219 tp!1889220))))

(declare-fun b!6875972 () Bool)

(declare-fun tp!1889222 () Bool)

(assert (=> b!6875972 (= e!4144251 tp!1889222)))

(assert (= (and b!6875780 (is-ElementMatch!16724 (regTwo!33960 (regTwo!33960 r!11177)))) b!6875970))

(assert (= (and b!6875780 (is-Concat!25569 (regTwo!33960 (regTwo!33960 r!11177)))) b!6875971))

(assert (= (and b!6875780 (is-Star!16724 (regTwo!33960 (regTwo!33960 r!11177)))) b!6875972))

(assert (= (and b!6875780 (is-Union!16724 (regTwo!33960 (regTwo!33960 r!11177)))) b!6875973))

(declare-fun b!6875975 () Bool)

(declare-fun e!4144252 () Bool)

(declare-fun tp!1889226 () Bool)

(declare-fun tp!1889228 () Bool)

(assert (=> b!6875975 (= e!4144252 (and tp!1889226 tp!1889228))))

(assert (=> b!6875760 (= tp!1889077 e!4144252)))

(declare-fun b!6875974 () Bool)

(assert (=> b!6875974 (= e!4144252 tp_is_empty!42701)))

(declare-fun b!6875977 () Bool)

(declare-fun tp!1889224 () Bool)

(declare-fun tp!1889225 () Bool)

(assert (=> b!6875977 (= e!4144252 (and tp!1889224 tp!1889225))))

(declare-fun b!6875976 () Bool)

(declare-fun tp!1889227 () Bool)

(assert (=> b!6875976 (= e!4144252 tp!1889227)))

(assert (= (and b!6875760 (is-ElementMatch!16724 (reg!17053 (reg!17053 r!11177)))) b!6875974))

(assert (= (and b!6875760 (is-Concat!25569 (reg!17053 (reg!17053 r!11177)))) b!6875975))

(assert (= (and b!6875760 (is-Star!16724 (reg!17053 (reg!17053 r!11177)))) b!6875976))

(assert (= (and b!6875760 (is-Union!16724 (reg!17053 (reg!17053 r!11177)))) b!6875977))

(declare-fun b!6875979 () Bool)

(declare-fun e!4144253 () Bool)

(declare-fun tp!1889231 () Bool)

(declare-fun tp!1889233 () Bool)

(assert (=> b!6875979 (= e!4144253 (and tp!1889231 tp!1889233))))

(assert (=> b!6875781 (= tp!1889099 e!4144253)))

(declare-fun b!6875978 () Bool)

(assert (=> b!6875978 (= e!4144253 tp_is_empty!42701)))

(declare-fun b!6875981 () Bool)

(declare-fun tp!1889229 () Bool)

(declare-fun tp!1889230 () Bool)

(assert (=> b!6875981 (= e!4144253 (and tp!1889229 tp!1889230))))

(declare-fun b!6875980 () Bool)

(declare-fun tp!1889232 () Bool)

(assert (=> b!6875980 (= e!4144253 tp!1889232)))

(assert (= (and b!6875781 (is-ElementMatch!16724 (reg!17053 (regTwo!33960 r!11177)))) b!6875978))

(assert (= (and b!6875781 (is-Concat!25569 (reg!17053 (regTwo!33960 r!11177)))) b!6875979))

(assert (= (and b!6875781 (is-Star!16724 (reg!17053 (regTwo!33960 r!11177)))) b!6875980))

(assert (= (and b!6875781 (is-Union!16724 (reg!17053 (regTwo!33960 r!11177)))) b!6875981))

(declare-fun b!6875983 () Bool)

(declare-fun e!4144254 () Bool)

(declare-fun tp!1889236 () Bool)

(declare-fun tp!1889238 () Bool)

(assert (=> b!6875983 (= e!4144254 (and tp!1889236 tp!1889238))))

(assert (=> b!6875755 (= tp!1889071 e!4144254)))

(declare-fun b!6875982 () Bool)

(assert (=> b!6875982 (= e!4144254 tp_is_empty!42701)))

(declare-fun b!6875985 () Bool)

(declare-fun tp!1889234 () Bool)

(declare-fun tp!1889235 () Bool)

(assert (=> b!6875985 (= e!4144254 (and tp!1889234 tp!1889235))))

(declare-fun b!6875984 () Bool)

(declare-fun tp!1889237 () Bool)

(assert (=> b!6875984 (= e!4144254 tp!1889237)))

(assert (= (and b!6875755 (is-ElementMatch!16724 (regOne!33960 (regTwo!33961 r!11177)))) b!6875982))

(assert (= (and b!6875755 (is-Concat!25569 (regOne!33960 (regTwo!33961 r!11177)))) b!6875983))

(assert (= (and b!6875755 (is-Star!16724 (regOne!33960 (regTwo!33961 r!11177)))) b!6875984))

(assert (= (and b!6875755 (is-Union!16724 (regOne!33960 (regTwo!33961 r!11177)))) b!6875985))

(declare-fun b!6875987 () Bool)

(declare-fun e!4144255 () Bool)

(declare-fun tp!1889241 () Bool)

(declare-fun tp!1889243 () Bool)

(assert (=> b!6875987 (= e!4144255 (and tp!1889241 tp!1889243))))

(assert (=> b!6875755 (= tp!1889073 e!4144255)))

(declare-fun b!6875986 () Bool)

(assert (=> b!6875986 (= e!4144255 tp_is_empty!42701)))

(declare-fun b!6875989 () Bool)

(declare-fun tp!1889239 () Bool)

(declare-fun tp!1889240 () Bool)

(assert (=> b!6875989 (= e!4144255 (and tp!1889239 tp!1889240))))

(declare-fun b!6875988 () Bool)

(declare-fun tp!1889242 () Bool)

(assert (=> b!6875988 (= e!4144255 tp!1889242)))

(assert (= (and b!6875755 (is-ElementMatch!16724 (regTwo!33960 (regTwo!33961 r!11177)))) b!6875986))

(assert (= (and b!6875755 (is-Concat!25569 (regTwo!33960 (regTwo!33961 r!11177)))) b!6875987))

(assert (= (and b!6875755 (is-Star!16724 (regTwo!33960 (regTwo!33961 r!11177)))) b!6875988))

(assert (= (and b!6875755 (is-Union!16724 (regTwo!33960 (regTwo!33961 r!11177)))) b!6875989))

(declare-fun b!6875991 () Bool)

(declare-fun e!4144256 () Bool)

(declare-fun tp!1889246 () Bool)

(declare-fun tp!1889248 () Bool)

(assert (=> b!6875991 (= e!4144256 (and tp!1889246 tp!1889248))))

(assert (=> b!6875776 (= tp!1889093 e!4144256)))

(declare-fun b!6875990 () Bool)

(assert (=> b!6875990 (= e!4144256 tp_is_empty!42701)))

(declare-fun b!6875993 () Bool)

(declare-fun tp!1889244 () Bool)

(declare-fun tp!1889245 () Bool)

(assert (=> b!6875993 (= e!4144256 (and tp!1889244 tp!1889245))))

(declare-fun b!6875992 () Bool)

(declare-fun tp!1889247 () Bool)

(assert (=> b!6875992 (= e!4144256 tp!1889247)))

(assert (= (and b!6875776 (is-ElementMatch!16724 (regOne!33960 (regOne!33960 r!11177)))) b!6875990))

(assert (= (and b!6875776 (is-Concat!25569 (regOne!33960 (regOne!33960 r!11177)))) b!6875991))

(assert (= (and b!6875776 (is-Star!16724 (regOne!33960 (regOne!33960 r!11177)))) b!6875992))

(assert (= (and b!6875776 (is-Union!16724 (regOne!33960 (regOne!33960 r!11177)))) b!6875993))

(declare-fun b!6875995 () Bool)

(declare-fun e!4144257 () Bool)

(declare-fun tp!1889251 () Bool)

(declare-fun tp!1889253 () Bool)

(assert (=> b!6875995 (= e!4144257 (and tp!1889251 tp!1889253))))

(assert (=> b!6875776 (= tp!1889095 e!4144257)))

(declare-fun b!6875994 () Bool)

(assert (=> b!6875994 (= e!4144257 tp_is_empty!42701)))

(declare-fun b!6875997 () Bool)

(declare-fun tp!1889249 () Bool)

(declare-fun tp!1889250 () Bool)

(assert (=> b!6875997 (= e!4144257 (and tp!1889249 tp!1889250))))

(declare-fun b!6875996 () Bool)

(declare-fun tp!1889252 () Bool)

(assert (=> b!6875996 (= e!4144257 tp!1889252)))

(assert (= (and b!6875776 (is-ElementMatch!16724 (regTwo!33960 (regOne!33960 r!11177)))) b!6875994))

(assert (= (and b!6875776 (is-Concat!25569 (regTwo!33960 (regOne!33960 r!11177)))) b!6875995))

(assert (= (and b!6875776 (is-Star!16724 (regTwo!33960 (regOne!33960 r!11177)))) b!6875996))

(assert (= (and b!6875776 (is-Union!16724 (regTwo!33960 (regOne!33960 r!11177)))) b!6875997))

(declare-fun b!6875999 () Bool)

(declare-fun e!4144258 () Bool)

(declare-fun tp!1889256 () Bool)

(declare-fun tp!1889258 () Bool)

(assert (=> b!6875999 (= e!4144258 (and tp!1889256 tp!1889258))))

(assert (=> b!6875757 (= tp!1889069 e!4144258)))

(declare-fun b!6875998 () Bool)

(assert (=> b!6875998 (= e!4144258 tp_is_empty!42701)))

(declare-fun b!6876001 () Bool)

(declare-fun tp!1889254 () Bool)

(declare-fun tp!1889255 () Bool)

(assert (=> b!6876001 (= e!4144258 (and tp!1889254 tp!1889255))))

(declare-fun b!6876000 () Bool)

(declare-fun tp!1889257 () Bool)

(assert (=> b!6876000 (= e!4144258 tp!1889257)))

(assert (= (and b!6875757 (is-ElementMatch!16724 (regOne!33961 (regTwo!33961 r!11177)))) b!6875998))

(assert (= (and b!6875757 (is-Concat!25569 (regOne!33961 (regTwo!33961 r!11177)))) b!6875999))

(assert (= (and b!6875757 (is-Star!16724 (regOne!33961 (regTwo!33961 r!11177)))) b!6876000))

(assert (= (and b!6875757 (is-Union!16724 (regOne!33961 (regTwo!33961 r!11177)))) b!6876001))

(declare-fun b!6876003 () Bool)

(declare-fun e!4144259 () Bool)

(declare-fun tp!1889261 () Bool)

(declare-fun tp!1889263 () Bool)

(assert (=> b!6876003 (= e!4144259 (and tp!1889261 tp!1889263))))

(assert (=> b!6875757 (= tp!1889070 e!4144259)))

(declare-fun b!6876002 () Bool)

(assert (=> b!6876002 (= e!4144259 tp_is_empty!42701)))

(declare-fun b!6876005 () Bool)

(declare-fun tp!1889259 () Bool)

(declare-fun tp!1889260 () Bool)

(assert (=> b!6876005 (= e!4144259 (and tp!1889259 tp!1889260))))

(declare-fun b!6876004 () Bool)

(declare-fun tp!1889262 () Bool)

(assert (=> b!6876004 (= e!4144259 tp!1889262)))

(assert (= (and b!6875757 (is-ElementMatch!16724 (regTwo!33961 (regTwo!33961 r!11177)))) b!6876002))

(assert (= (and b!6875757 (is-Concat!25569 (regTwo!33961 (regTwo!33961 r!11177)))) b!6876003))

(assert (= (and b!6875757 (is-Star!16724 (regTwo!33961 (regTwo!33961 r!11177)))) b!6876004))

(assert (= (and b!6875757 (is-Union!16724 (regTwo!33961 (regTwo!33961 r!11177)))) b!6876005))

(declare-fun b!6876007 () Bool)

(declare-fun e!4144260 () Bool)

(declare-fun tp!1889266 () Bool)

(declare-fun tp!1889268 () Bool)

(assert (=> b!6876007 (= e!4144260 (and tp!1889266 tp!1889268))))

(assert (=> b!6875778 (= tp!1889091 e!4144260)))

(declare-fun b!6876006 () Bool)

(assert (=> b!6876006 (= e!4144260 tp_is_empty!42701)))

(declare-fun b!6876009 () Bool)

(declare-fun tp!1889264 () Bool)

(declare-fun tp!1889265 () Bool)

(assert (=> b!6876009 (= e!4144260 (and tp!1889264 tp!1889265))))

(declare-fun b!6876008 () Bool)

(declare-fun tp!1889267 () Bool)

(assert (=> b!6876008 (= e!4144260 tp!1889267)))

(assert (= (and b!6875778 (is-ElementMatch!16724 (regOne!33961 (regOne!33960 r!11177)))) b!6876006))

(assert (= (and b!6875778 (is-Concat!25569 (regOne!33961 (regOne!33960 r!11177)))) b!6876007))

(assert (= (and b!6875778 (is-Star!16724 (regOne!33961 (regOne!33960 r!11177)))) b!6876008))

(assert (= (and b!6875778 (is-Union!16724 (regOne!33961 (regOne!33960 r!11177)))) b!6876009))

(declare-fun b!6876011 () Bool)

(declare-fun e!4144261 () Bool)

(declare-fun tp!1889271 () Bool)

(declare-fun tp!1889273 () Bool)

(assert (=> b!6876011 (= e!4144261 (and tp!1889271 tp!1889273))))

(assert (=> b!6875778 (= tp!1889092 e!4144261)))

(declare-fun b!6876010 () Bool)

(assert (=> b!6876010 (= e!4144261 tp_is_empty!42701)))

(declare-fun b!6876013 () Bool)

(declare-fun tp!1889269 () Bool)

(declare-fun tp!1889270 () Bool)

(assert (=> b!6876013 (= e!4144261 (and tp!1889269 tp!1889270))))

(declare-fun b!6876012 () Bool)

(declare-fun tp!1889272 () Bool)

(assert (=> b!6876012 (= e!4144261 tp!1889272)))

(assert (= (and b!6875778 (is-ElementMatch!16724 (regTwo!33961 (regOne!33960 r!11177)))) b!6876010))

(assert (= (and b!6875778 (is-Concat!25569 (regTwo!33961 (regOne!33960 r!11177)))) b!6876011))

(assert (= (and b!6875778 (is-Star!16724 (regTwo!33961 (regOne!33960 r!11177)))) b!6876012))

(assert (= (and b!6875778 (is-Union!16724 (regTwo!33961 (regOne!33960 r!11177)))) b!6876013))

(declare-fun b!6876015 () Bool)

(declare-fun e!4144262 () Bool)

(declare-fun tp!1889276 () Bool)

(declare-fun tp!1889278 () Bool)

(assert (=> b!6876015 (= e!4144262 (and tp!1889276 tp!1889278))))

(assert (=> b!6875753 (= tp!1889064 e!4144262)))

(declare-fun b!6876014 () Bool)

(assert (=> b!6876014 (= e!4144262 tp_is_empty!42701)))

(declare-fun b!6876017 () Bool)

(declare-fun tp!1889274 () Bool)

(declare-fun tp!1889275 () Bool)

(assert (=> b!6876017 (= e!4144262 (and tp!1889274 tp!1889275))))

(declare-fun b!6876016 () Bool)

(declare-fun tp!1889277 () Bool)

(assert (=> b!6876016 (= e!4144262 tp!1889277)))

(assert (= (and b!6875753 (is-ElementMatch!16724 (regOne!33961 (regOne!33961 r!11177)))) b!6876014))

(assert (= (and b!6875753 (is-Concat!25569 (regOne!33961 (regOne!33961 r!11177)))) b!6876015))

(assert (= (and b!6875753 (is-Star!16724 (regOne!33961 (regOne!33961 r!11177)))) b!6876016))

(assert (= (and b!6875753 (is-Union!16724 (regOne!33961 (regOne!33961 r!11177)))) b!6876017))

(declare-fun b!6876019 () Bool)

(declare-fun e!4144263 () Bool)

(declare-fun tp!1889281 () Bool)

(declare-fun tp!1889283 () Bool)

(assert (=> b!6876019 (= e!4144263 (and tp!1889281 tp!1889283))))

(assert (=> b!6875753 (= tp!1889065 e!4144263)))

(declare-fun b!6876018 () Bool)

(assert (=> b!6876018 (= e!4144263 tp_is_empty!42701)))

(declare-fun b!6876021 () Bool)

(declare-fun tp!1889279 () Bool)

(declare-fun tp!1889280 () Bool)

(assert (=> b!6876021 (= e!4144263 (and tp!1889279 tp!1889280))))

(declare-fun b!6876020 () Bool)

(declare-fun tp!1889282 () Bool)

(assert (=> b!6876020 (= e!4144263 tp!1889282)))

(assert (= (and b!6875753 (is-ElementMatch!16724 (regTwo!33961 (regOne!33961 r!11177)))) b!6876018))

(assert (= (and b!6875753 (is-Concat!25569 (regTwo!33961 (regOne!33961 r!11177)))) b!6876019))

(assert (= (and b!6875753 (is-Star!16724 (regTwo!33961 (regOne!33961 r!11177)))) b!6876020))

(assert (= (and b!6875753 (is-Union!16724 (regTwo!33961 (regOne!33961 r!11177)))) b!6876021))

(declare-fun b_lambda!260181 () Bool)

(assert (= b_lambda!260179 (or d!2159254 b_lambda!260181)))

(declare-fun bs!1837768 () Bool)

(declare-fun d!2159298 () Bool)

(assert (= bs!1837768 (and d!2159298 d!2159254)))

(assert (=> bs!1837768 (= (dynLambda!26557 lambda!389248 (h!72784 (t!380203 zl!1520))) (not (dynLambda!26557 lambda!389228 (h!72784 (t!380203 zl!1520)))))))

(declare-fun b_lambda!260191 () Bool)

(assert (=> (not b_lambda!260191) (not bs!1837768)))

(declare-fun m!7604234 () Bool)

(assert (=> bs!1837768 m!7604234))

(assert (=> b!6875898 d!2159298))

(declare-fun b_lambda!260183 () Bool)

(assert (= b_lambda!260175 (or d!2159250 b_lambda!260183)))

(declare-fun bs!1837769 () Bool)

(declare-fun d!2159300 () Bool)

(assert (= bs!1837769 (and d!2159300 d!2159250)))

(assert (=> bs!1837769 (= (dynLambda!26558 lambda!389244 (h!72783 (exprs!6608 (h!72784 zl!1520)))) (validRegex!8450 (h!72783 (exprs!6608 (h!72784 zl!1520)))))))

(declare-fun m!7604236 () Bool)

(assert (=> bs!1837769 m!7604236))

(assert (=> b!6875862 d!2159300))

(declare-fun b_lambda!260185 () Bool)

(assert (= b_lambda!260177 (or d!2159248 b_lambda!260185)))

(declare-fun bs!1837770 () Bool)

(declare-fun d!2159302 () Bool)

(assert (= bs!1837770 (and d!2159302 d!2159248)))

(assert (=> bs!1837770 (= (dynLambda!26558 lambda!389241 (h!72783 lt!2459122)) (validRegex!8450 (h!72783 lt!2459122)))))

(declare-fun m!7604238 () Bool)

(assert (=> bs!1837770 m!7604238))

(assert (=> b!6875896 d!2159302))

(declare-fun b_lambda!260187 () Bool)

(assert (= b_lambda!260173 (or d!2159240 b_lambda!260187)))

(declare-fun bs!1837771 () Bool)

(declare-fun d!2159304 () Bool)

(assert (= bs!1837771 (and d!2159304 d!2159240)))

(assert (=> bs!1837771 (= (dynLambda!26558 lambda!389240 (h!72783 lt!2459120)) (validRegex!8450 (h!72783 lt!2459120)))))

(declare-fun m!7604240 () Bool)

(assert (=> bs!1837771 m!7604240))

(assert (=> b!6875858 d!2159304))

(declare-fun b_lambda!260189 () Bool)

(assert (= b_lambda!260171 (or d!2159252 b_lambda!260189)))

(declare-fun bs!1837772 () Bool)

(declare-fun d!2159306 () Bool)

(assert (= bs!1837772 (and d!2159306 d!2159252)))

(assert (=> bs!1837772 (= (dynLambda!26557 lambda!389247 (h!72784 zl!1520)) (not (dynLambda!26557 lambda!389228 (h!72784 zl!1520))))))

(declare-fun b_lambda!260193 () Bool)

(assert (=> (not b_lambda!260193) (not bs!1837772)))

(declare-fun m!7604242 () Bool)

(assert (=> bs!1837772 m!7604242))

(assert (=> b!6875852 d!2159306))

(push 1)

(assert (not b!6875921))

(assert (not b!6876017))

(assert (not b!6875908))

(assert (not b!6875939))

(assert (not d!2159282))

(assert (not b!6876012))

(assert (not b!6875943))

(assert (not d!2159284))

(assert (not b!6875905))

(assert (not b_lambda!260181))

(assert (not b!6875993))

(assert (not b!6875922))

(assert (not b!6875861))

(assert (not b!6875915))

(assert (not b!6875949))

(assert (not bs!1837769))

(assert (not b!6875928))

(assert (not b_lambda!260191))

(assert (not b!6875904))

(assert (not b!6875859))

(assert (not b!6876003))

(assert (not b!6875887))

(assert (not b!6875975))

(assert (not b!6876005))

(assert (not b!6875913))

(assert (not b!6875979))

(assert (not b!6875932))

(assert (not b!6876011))

(assert (not b!6875968))

(assert (not b_lambda!260183))

(assert (not bs!1837770))

(assert (not b!6876016))

(assert (not b!6875924))

(assert (not b!6875987))

(assert (not b!6875996))

(assert (not b!6876008))

(assert (not b!6876009))

(assert (not b!6875973))

(assert (not b!6876013))

(assert (not b!6875971))

(assert (not b!6875983))

(assert (not b_lambda!260187))

(assert (not b!6875964))

(assert (not b_lambda!260185))

(assert (not b!6875980))

(assert (not b!6875910))

(assert (not b!6875888))

(assert (not bs!1837771))

(assert (not d!2159292))

(assert (not b!6875981))

(assert (not b!6875945))

(assert (not b!6875926))

(assert (not b!6876001))

(assert (not b!6875969))

(assert (not b!6875933))

(assert (not b!6875989))

(assert (not b!6875853))

(assert (not d!2159296))

(assert (not b!6875891))

(assert (not b!6875886))

(assert (not b!6875960))

(assert (not d!2159286))

(assert (not b!6875957))

(assert (not b!6875965))

(assert (not b_lambda!260193))

(assert (not b!6875995))

(assert (not b!6875892))

(assert (not b!6875963))

(assert (not b!6876007))

(assert (not b!6875901))

(assert (not b!6875847))

(assert (not b!6875906))

(assert (not b!6875899))

(assert (not d!2159294))

(assert (not b!6875909))

(assert (not b!6875918))

(assert (not b!6875956))

(assert (not b!6875999))

(assert (not b!6875992))

(assert (not b!6875985))

(assert (not b!6875951))

(assert (not b!6875938))

(assert (not b!6875947))

(assert (not b!6875972))

(assert (not b!6875930))

(assert (not b!6875959))

(assert (not b!6875984))

(assert (not b!6875890))

(assert (not b_lambda!260189))

(assert (not b!6875991))

(assert (not b!6875967))

(assert (not b!6875897))

(assert (not b!6875988))

(assert (not b!6875937))

(assert (not b!6875893))

(assert (not b!6875911))

(assert (not b!6875863))

(assert (not b!6875942))

(assert (not b!6876019))

(assert (not d!2159276))

(assert (not b!6875961))

(assert (not b!6876000))

(assert (not b!6876020))

(assert (not b!6875953))

(assert (not b!6876021))

(assert (not b!6875894))

(assert (not b!6875925))

(assert (not b!6875934))

(assert (not b!6876015))

(assert (not d!2159278))

(assert (not b!6875941))

(assert (not b!6875955))

(assert (not b!6875929))

(assert tp_is_empty!42701)

(assert (not b!6875946))

(assert (not b!6875977))

(assert (not b!6875950))

(assert (not b!6875997))

(assert (not b!6875920))

(assert (not b!6875935))

(assert (not b!6875916))

(assert (not b!6875976))

(assert (not b!6875917))

(assert (not b!6875954))

(assert (not b!6876004))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

