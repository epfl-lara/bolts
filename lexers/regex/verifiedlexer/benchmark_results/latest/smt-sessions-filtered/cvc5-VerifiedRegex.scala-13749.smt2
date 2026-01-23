; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733838 () Bool)

(assert start!733838)

(declare-fun b!7617867 () Bool)

(assert (=> b!7617867 true))

(assert (=> b!7617867 true))

(declare-fun b!7617860 () Bool)

(declare-fun e!4529981 () Bool)

(declare-fun tp_is_empty!50939 () Bool)

(declare-fun tp!2224508 () Bool)

(assert (=> b!7617860 (= e!4529981 (and tp_is_empty!50939 tp!2224508))))

(declare-fun b!7617861 () Bool)

(declare-fun e!4529980 () Bool)

(assert (=> b!7617861 (= e!4529980 tp_is_empty!50939)))

(declare-fun b!7617862 () Bool)

(declare-datatypes ((Unit!167416 0))(
  ( (Unit!167417) )
))
(declare-fun e!4529977 () Unit!167416)

(declare-fun Unit!167418 () Unit!167416)

(assert (=> b!7617862 (= e!4529977 Unit!167418)))

(declare-fun lt!2655872 () Unit!167416)

(declare-datatypes ((C!40910 0))(
  ( (C!40911 (val!30895 Int)) )
))
(declare-datatypes ((List!73145 0))(
  ( (Nil!73021) (Cons!73021 (h!79469 C!40910) (t!387880 List!73145)) )
))
(declare-datatypes ((tuple2!69146 0))(
  ( (tuple2!69147 (_1!37876 List!73145) (_2!37876 List!73145)) )
))
(declare-fun lt!2655874 () tuple2!69146)

(declare-fun s!9605 () List!73145)

(declare-datatypes ((Regex!20292 0))(
  ( (ElementMatch!20292 (c!1404062 C!40910)) (Concat!29137 (regOne!41096 Regex!20292) (regTwo!41096 Regex!20292)) (EmptyExpr!20292) (Star!20292 (reg!20621 Regex!20292)) (EmptyLang!20292) (Union!20292 (regOne!41097 Regex!20292) (regTwo!41097 Regex!20292)) )
))
(declare-fun r!14126 () Regex!20292)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!119 (Regex!20292 Regex!20292 List!73145 List!73145 List!73145) Unit!167416)

(assert (=> b!7617862 (= lt!2655872 (lemmaFindSeparationIsDefinedThenConcatMatches!119 (reg!20621 r!14126) r!14126 (_1!37876 lt!2655874) (_2!37876 lt!2655874) s!9605))))

(declare-fun lt!2655875 () List!73145)

(declare-fun ++!17602 (List!73145 List!73145) List!73145)

(assert (=> b!7617862 (= lt!2655875 (++!17602 (_1!37876 lt!2655874) (_2!37876 lt!2655874)))))

(declare-fun matchR!9799 (Regex!20292 List!73145) Bool)

(assert (=> b!7617862 (matchR!9799 (Concat!29137 (reg!20621 r!14126) r!14126) lt!2655875)))

(declare-fun lt!2655873 () Unit!167416)

(declare-fun lemmaStarApp!173 (Regex!20292 List!73145 List!73145) Unit!167416)

(assert (=> b!7617862 (= lt!2655873 (lemmaStarApp!173 (reg!20621 r!14126) (_1!37876 lt!2655874) (_2!37876 lt!2655874)))))

(declare-fun res!3049673 () Bool)

(assert (=> b!7617862 (= res!3049673 (matchR!9799 r!14126 lt!2655875))))

(declare-fun e!4529979 () Bool)

(assert (=> b!7617862 (=> (not res!3049673) (not e!4529979))))

(assert (=> b!7617862 e!4529979))

(declare-fun b!7617863 () Bool)

(declare-fun e!4529982 () Bool)

(declare-fun validRegex!10712 (Regex!20292) Bool)

(assert (=> b!7617863 (= e!4529982 (validRegex!10712 (reg!20621 r!14126)))))

(declare-fun b!7617864 () Bool)

(declare-fun e!4529978 () Bool)

(assert (=> b!7617864 (= e!4529978 e!4529982)))

(declare-fun res!3049670 () Bool)

(assert (=> b!7617864 (=> res!3049670 e!4529982)))

(declare-fun cut!5 () tuple2!69146)

(assert (=> b!7617864 (= res!3049670 (not (= (++!17602 (_1!37876 cut!5) (_2!37876 cut!5)) s!9605)))))

(declare-fun lt!2655879 () Unit!167416)

(assert (=> b!7617864 (= lt!2655879 e!4529977)))

(declare-fun c!1404061 () Bool)

(assert (=> b!7617864 (= c!1404061 (not (matchR!9799 r!14126 s!9605)))))

(declare-fun matchRSpec!4491 (Regex!20292 List!73145) Bool)

(assert (=> b!7617864 (= (matchR!9799 r!14126 (_2!37876 lt!2655874)) (matchRSpec!4491 r!14126 (_2!37876 lt!2655874)))))

(declare-fun lt!2655878 () Unit!167416)

(declare-fun mainMatchTheorem!4485 (Regex!20292 List!73145) Unit!167416)

(assert (=> b!7617864 (= lt!2655878 (mainMatchTheorem!4485 r!14126 (_2!37876 lt!2655874)))))

(assert (=> b!7617864 (= (matchR!9799 (reg!20621 r!14126) (_1!37876 lt!2655874)) (matchRSpec!4491 (reg!20621 r!14126) (_1!37876 lt!2655874)))))

(declare-fun lt!2655877 () Unit!167416)

(assert (=> b!7617864 (= lt!2655877 (mainMatchTheorem!4485 (reg!20621 r!14126) (_1!37876 lt!2655874)))))

(declare-datatypes ((Option!17367 0))(
  ( (None!17366) (Some!17366 (v!54501 tuple2!69146)) )
))
(declare-fun lt!2655871 () Option!17367)

(declare-fun get!25750 (Option!17367) tuple2!69146)

(assert (=> b!7617864 (= lt!2655874 (get!25750 lt!2655871))))

(declare-fun b!7617865 () Bool)

(declare-fun e!4529974 () Bool)

(declare-fun tp!2224512 () Bool)

(assert (=> b!7617865 (= e!4529974 (and tp_is_empty!50939 tp!2224512))))

(declare-fun b!7617866 () Bool)

(declare-fun Unit!167419 () Unit!167416)

(assert (=> b!7617866 (= e!4529977 Unit!167419)))

(declare-fun e!4529975 () Bool)

(assert (=> b!7617867 (= e!4529975 (not e!4529978))))

(declare-fun res!3049671 () Bool)

(assert (=> b!7617867 (=> res!3049671 e!4529978)))

(declare-fun lt!2655876 () Bool)

(assert (=> b!7617867 (= res!3049671 (not lt!2655876))))

(declare-fun lambda!468232 () Int)

(declare-fun Exists!4448 (Int) Bool)

(assert (=> b!7617867 (= lt!2655876 (Exists!4448 lambda!468232))))

(declare-fun isDefined!13983 (Option!17367) Bool)

(assert (=> b!7617867 (= lt!2655876 (isDefined!13983 lt!2655871))))

(declare-fun findConcatSeparation!3397 (Regex!20292 Regex!20292 List!73145 List!73145 List!73145) Option!17367)

(assert (=> b!7617867 (= lt!2655871 (findConcatSeparation!3397 (reg!20621 r!14126) r!14126 Nil!73021 s!9605 s!9605))))

(declare-fun lt!2655880 () Unit!167416)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3155 (Regex!20292 Regex!20292 List!73145) Unit!167416)

(assert (=> b!7617867 (= lt!2655880 (lemmaFindConcatSeparationEquivalentToExists!3155 (reg!20621 r!14126) r!14126 s!9605))))

(declare-fun b!7617868 () Bool)

(declare-fun e!4529976 () Bool)

(declare-fun tp!2224515 () Bool)

(assert (=> b!7617868 (= e!4529976 (and tp_is_empty!50939 tp!2224515))))

(declare-fun b!7617869 () Bool)

(declare-fun tp!2224514 () Bool)

(declare-fun tp!2224509 () Bool)

(assert (=> b!7617869 (= e!4529980 (and tp!2224514 tp!2224509))))

(declare-fun b!7617870 () Bool)

(declare-fun tp!2224513 () Bool)

(declare-fun tp!2224510 () Bool)

(assert (=> b!7617870 (= e!4529980 (and tp!2224513 tp!2224510))))

(declare-fun b!7617871 () Bool)

(assert (=> b!7617871 (= e!4529979 false)))

(declare-fun b!7617872 () Bool)

(declare-fun res!3049669 () Bool)

(assert (=> b!7617872 (=> (not res!3049669) (not e!4529975))))

(declare-fun isEmpty!41634 (List!73145) Bool)

(assert (=> b!7617872 (= res!3049669 (not (isEmpty!41634 s!9605)))))

(declare-fun b!7617873 () Bool)

(declare-fun tp!2224511 () Bool)

(assert (=> b!7617873 (= e!4529980 tp!2224511)))

(declare-fun res!3049672 () Bool)

(assert (=> start!733838 (=> (not res!3049672) (not e!4529975))))

(assert (=> start!733838 (= res!3049672 (validRegex!10712 r!14126))))

(assert (=> start!733838 e!4529975))

(assert (=> start!733838 e!4529980))

(assert (=> start!733838 e!4529976))

(assert (=> start!733838 (and e!4529974 e!4529981)))

(declare-fun b!7617874 () Bool)

(declare-fun res!3049674 () Bool)

(assert (=> b!7617874 (=> (not res!3049674) (not e!4529975))))

(assert (=> b!7617874 (= res!3049674 (and (not (is-EmptyExpr!20292 r!14126)) (not (is-EmptyLang!20292 r!14126)) (not (is-ElementMatch!20292 r!14126)) (not (is-Union!20292 r!14126)) (is-Star!20292 r!14126)))))

(assert (= (and start!733838 res!3049672) b!7617874))

(assert (= (and b!7617874 res!3049674) b!7617872))

(assert (= (and b!7617872 res!3049669) b!7617867))

(assert (= (and b!7617867 (not res!3049671)) b!7617864))

(assert (= (and b!7617864 c!1404061) b!7617862))

(assert (= (and b!7617864 (not c!1404061)) b!7617866))

(assert (= (and b!7617862 res!3049673) b!7617871))

(assert (= (and b!7617864 (not res!3049670)) b!7617863))

(assert (= (and start!733838 (is-ElementMatch!20292 r!14126)) b!7617861))

(assert (= (and start!733838 (is-Concat!29137 r!14126)) b!7617869))

(assert (= (and start!733838 (is-Star!20292 r!14126)) b!7617873))

(assert (= (and start!733838 (is-Union!20292 r!14126)) b!7617870))

(assert (= (and start!733838 (is-Cons!73021 s!9605)) b!7617868))

(assert (= (and start!733838 (is-Cons!73021 (_1!37876 cut!5))) b!7617865))

(assert (= (and start!733838 (is-Cons!73021 (_2!37876 cut!5))) b!7617860))

(declare-fun m!8150706 () Bool)

(assert (=> start!733838 m!8150706))

(declare-fun m!8150708 () Bool)

(assert (=> b!7617867 m!8150708))

(declare-fun m!8150710 () Bool)

(assert (=> b!7617867 m!8150710))

(declare-fun m!8150712 () Bool)

(assert (=> b!7617867 m!8150712))

(declare-fun m!8150714 () Bool)

(assert (=> b!7617867 m!8150714))

(declare-fun m!8150716 () Bool)

(assert (=> b!7617863 m!8150716))

(declare-fun m!8150718 () Bool)

(assert (=> b!7617862 m!8150718))

(declare-fun m!8150720 () Bool)

(assert (=> b!7617862 m!8150720))

(declare-fun m!8150722 () Bool)

(assert (=> b!7617862 m!8150722))

(declare-fun m!8150724 () Bool)

(assert (=> b!7617862 m!8150724))

(declare-fun m!8150726 () Bool)

(assert (=> b!7617862 m!8150726))

(declare-fun m!8150728 () Bool)

(assert (=> b!7617864 m!8150728))

(declare-fun m!8150730 () Bool)

(assert (=> b!7617864 m!8150730))

(declare-fun m!8150732 () Bool)

(assert (=> b!7617864 m!8150732))

(declare-fun m!8150734 () Bool)

(assert (=> b!7617864 m!8150734))

(declare-fun m!8150736 () Bool)

(assert (=> b!7617864 m!8150736))

(declare-fun m!8150738 () Bool)

(assert (=> b!7617864 m!8150738))

(declare-fun m!8150740 () Bool)

(assert (=> b!7617864 m!8150740))

(declare-fun m!8150742 () Bool)

(assert (=> b!7617864 m!8150742))

(declare-fun m!8150744 () Bool)

(assert (=> b!7617864 m!8150744))

(declare-fun m!8150746 () Bool)

(assert (=> b!7617872 m!8150746))

(push 1)

(assert (not b!7617872))

(assert (not start!733838))

(assert (not b!7617862))

(assert (not b!7617863))

(assert (not b!7617869))

(assert (not b!7617870))

(assert (not b!7617864))

(assert (not b!7617868))

(assert tp_is_empty!50939)

(assert (not b!7617865))

(assert (not b!7617860))

(assert (not b!7617867))

(assert (not b!7617873))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!699728 () Bool)

(declare-fun call!699733 () Bool)

(declare-fun c!1404072 () Bool)

(assert (=> bm!699728 (= call!699733 (validRegex!10712 (ite c!1404072 (regOne!41097 (reg!20621 r!14126)) (regOne!41096 (reg!20621 r!14126)))))))

(declare-fun b!7617950 () Bool)

(declare-fun e!4530026 () Bool)

(declare-fun call!699734 () Bool)

(assert (=> b!7617950 (= e!4530026 call!699734)))

(declare-fun d!2322858 () Bool)

(declare-fun res!3049707 () Bool)

(declare-fun e!4530027 () Bool)

(assert (=> d!2322858 (=> res!3049707 e!4530027)))

(assert (=> d!2322858 (= res!3049707 (is-ElementMatch!20292 (reg!20621 r!14126)))))

(assert (=> d!2322858 (= (validRegex!10712 (reg!20621 r!14126)) e!4530027)))

(declare-fun bm!699729 () Bool)

(declare-fun c!1404071 () Bool)

(assert (=> bm!699729 (= call!699734 (validRegex!10712 (ite c!1404071 (reg!20621 (reg!20621 r!14126)) (ite c!1404072 (regTwo!41097 (reg!20621 r!14126)) (regTwo!41096 (reg!20621 r!14126))))))))

(declare-fun b!7617951 () Bool)

(declare-fun e!4530030 () Bool)

(declare-fun call!699735 () Bool)

(assert (=> b!7617951 (= e!4530030 call!699735)))

(declare-fun b!7617952 () Bool)

(declare-fun e!4530031 () Bool)

(declare-fun e!4530029 () Bool)

(assert (=> b!7617952 (= e!4530031 e!4530029)))

(assert (=> b!7617952 (= c!1404072 (is-Union!20292 (reg!20621 r!14126)))))

(declare-fun b!7617953 () Bool)

(declare-fun res!3049711 () Bool)

(assert (=> b!7617953 (=> (not res!3049711) (not e!4530030))))

(assert (=> b!7617953 (= res!3049711 call!699733)))

(assert (=> b!7617953 (= e!4530029 e!4530030)))

(declare-fun bm!699730 () Bool)

(assert (=> bm!699730 (= call!699735 call!699734)))

(declare-fun b!7617954 () Bool)

(assert (=> b!7617954 (= e!4530031 e!4530026)))

(declare-fun res!3049708 () Bool)

(declare-fun nullable!8869 (Regex!20292) Bool)

(assert (=> b!7617954 (= res!3049708 (not (nullable!8869 (reg!20621 (reg!20621 r!14126)))))))

(assert (=> b!7617954 (=> (not res!3049708) (not e!4530026))))

(declare-fun b!7617955 () Bool)

(declare-fun res!3049710 () Bool)

(declare-fun e!4530028 () Bool)

(assert (=> b!7617955 (=> res!3049710 e!4530028)))

(assert (=> b!7617955 (= res!3049710 (not (is-Concat!29137 (reg!20621 r!14126))))))

(assert (=> b!7617955 (= e!4530029 e!4530028)))

(declare-fun b!7617956 () Bool)

(assert (=> b!7617956 (= e!4530027 e!4530031)))

(assert (=> b!7617956 (= c!1404071 (is-Star!20292 (reg!20621 r!14126)))))

(declare-fun b!7617957 () Bool)

(declare-fun e!4530032 () Bool)

(assert (=> b!7617957 (= e!4530032 call!699735)))

(declare-fun b!7617958 () Bool)

(assert (=> b!7617958 (= e!4530028 e!4530032)))

(declare-fun res!3049709 () Bool)

(assert (=> b!7617958 (=> (not res!3049709) (not e!4530032))))

(assert (=> b!7617958 (= res!3049709 call!699733)))

(assert (= (and d!2322858 (not res!3049707)) b!7617956))

(assert (= (and b!7617956 c!1404071) b!7617954))

(assert (= (and b!7617956 (not c!1404071)) b!7617952))

(assert (= (and b!7617954 res!3049708) b!7617950))

(assert (= (and b!7617952 c!1404072) b!7617953))

(assert (= (and b!7617952 (not c!1404072)) b!7617955))

(assert (= (and b!7617953 res!3049711) b!7617951))

(assert (= (and b!7617955 (not res!3049710)) b!7617958))

(assert (= (and b!7617958 res!3049709) b!7617957))

(assert (= (or b!7617953 b!7617958) bm!699728))

(assert (= (or b!7617951 b!7617957) bm!699730))

(assert (= (or b!7617950 bm!699730) bm!699729))

(declare-fun m!8150790 () Bool)

(assert (=> bm!699728 m!8150790))

(declare-fun m!8150792 () Bool)

(assert (=> bm!699729 m!8150792))

(declare-fun m!8150794 () Bool)

(assert (=> b!7617954 m!8150794))

(assert (=> b!7617863 d!2322858))

(declare-fun d!2322862 () Bool)

(assert (=> d!2322862 (= (isEmpty!41634 s!9605) (is-Nil!73021 s!9605))))

(assert (=> b!7617872 d!2322862))

(declare-fun d!2322864 () Bool)

(declare-fun choose!58767 (Int) Bool)

(assert (=> d!2322864 (= (Exists!4448 lambda!468232) (choose!58767 lambda!468232))))

(declare-fun bs!1943069 () Bool)

(assert (= bs!1943069 d!2322864))

(declare-fun m!8150796 () Bool)

(assert (=> bs!1943069 m!8150796))

(assert (=> b!7617867 d!2322864))

(declare-fun d!2322866 () Bool)

(declare-fun isEmpty!41636 (Option!17367) Bool)

(assert (=> d!2322866 (= (isDefined!13983 lt!2655871) (not (isEmpty!41636 lt!2655871)))))

(declare-fun bs!1943070 () Bool)

(assert (= bs!1943070 d!2322866))

(declare-fun m!8150798 () Bool)

(assert (=> bs!1943070 m!8150798))

(assert (=> b!7617867 d!2322866))

(declare-fun b!7618005 () Bool)

(declare-fun e!4530057 () Bool)

(declare-fun lt!2655919 () Option!17367)

(assert (=> b!7618005 (= e!4530057 (= (++!17602 (_1!37876 (get!25750 lt!2655919)) (_2!37876 (get!25750 lt!2655919))) s!9605))))

(declare-fun b!7618006 () Bool)

(declare-fun e!4530058 () Bool)

(assert (=> b!7618006 (= e!4530058 (matchR!9799 r!14126 s!9605))))

(declare-fun b!7618007 () Bool)

(declare-fun e!4530059 () Bool)

(assert (=> b!7618007 (= e!4530059 (not (isDefined!13983 lt!2655919)))))

(declare-fun b!7618008 () Bool)

(declare-fun res!3049742 () Bool)

(assert (=> b!7618008 (=> (not res!3049742) (not e!4530057))))

(assert (=> b!7618008 (= res!3049742 (matchR!9799 (reg!20621 r!14126) (_1!37876 (get!25750 lt!2655919))))))

(declare-fun b!7618009 () Bool)

(declare-fun lt!2655920 () Unit!167416)

(declare-fun lt!2655921 () Unit!167416)

(assert (=> b!7618009 (= lt!2655920 lt!2655921)))

(assert (=> b!7618009 (= (++!17602 (++!17602 Nil!73021 (Cons!73021 (h!79469 s!9605) Nil!73021)) (t!387880 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3213 (List!73145 C!40910 List!73145 List!73145) Unit!167416)

(assert (=> b!7618009 (= lt!2655921 (lemmaMoveElementToOtherListKeepsConcatEq!3213 Nil!73021 (h!79469 s!9605) (t!387880 s!9605) s!9605))))

(declare-fun e!4530060 () Option!17367)

(assert (=> b!7618009 (= e!4530060 (findConcatSeparation!3397 (reg!20621 r!14126) r!14126 (++!17602 Nil!73021 (Cons!73021 (h!79469 s!9605) Nil!73021)) (t!387880 s!9605) s!9605))))

(declare-fun d!2322868 () Bool)

(assert (=> d!2322868 e!4530059))

(declare-fun res!3049741 () Bool)

(assert (=> d!2322868 (=> res!3049741 e!4530059)))

(assert (=> d!2322868 (= res!3049741 e!4530057)))

(declare-fun res!3049739 () Bool)

(assert (=> d!2322868 (=> (not res!3049739) (not e!4530057))))

(assert (=> d!2322868 (= res!3049739 (isDefined!13983 lt!2655919))))

(declare-fun e!4530061 () Option!17367)

(assert (=> d!2322868 (= lt!2655919 e!4530061)))

(declare-fun c!1404083 () Bool)

(assert (=> d!2322868 (= c!1404083 e!4530058)))

(declare-fun res!3049740 () Bool)

(assert (=> d!2322868 (=> (not res!3049740) (not e!4530058))))

(assert (=> d!2322868 (= res!3049740 (matchR!9799 (reg!20621 r!14126) Nil!73021))))

(assert (=> d!2322868 (validRegex!10712 (reg!20621 r!14126))))

(assert (=> d!2322868 (= (findConcatSeparation!3397 (reg!20621 r!14126) r!14126 Nil!73021 s!9605 s!9605) lt!2655919)))

(declare-fun b!7618010 () Bool)

(assert (=> b!7618010 (= e!4530060 None!17366)))

(declare-fun b!7618011 () Bool)

(assert (=> b!7618011 (= e!4530061 e!4530060)))

(declare-fun c!1404084 () Bool)

(assert (=> b!7618011 (= c!1404084 (is-Nil!73021 s!9605))))

(declare-fun b!7618012 () Bool)

(assert (=> b!7618012 (= e!4530061 (Some!17366 (tuple2!69147 Nil!73021 s!9605)))))

(declare-fun b!7618013 () Bool)

(declare-fun res!3049738 () Bool)

(assert (=> b!7618013 (=> (not res!3049738) (not e!4530057))))

(assert (=> b!7618013 (= res!3049738 (matchR!9799 r!14126 (_2!37876 (get!25750 lt!2655919))))))

(assert (= (and d!2322868 res!3049740) b!7618006))

(assert (= (and d!2322868 c!1404083) b!7618012))

(assert (= (and d!2322868 (not c!1404083)) b!7618011))

(assert (= (and b!7618011 c!1404084) b!7618010))

(assert (= (and b!7618011 (not c!1404084)) b!7618009))

(assert (= (and d!2322868 res!3049739) b!7618008))

(assert (= (and b!7618008 res!3049742) b!7618013))

(assert (= (and b!7618013 res!3049738) b!7618005))

(assert (= (and d!2322868 (not res!3049741)) b!7618007))

(declare-fun m!8150800 () Bool)

(assert (=> d!2322868 m!8150800))

(declare-fun m!8150802 () Bool)

(assert (=> d!2322868 m!8150802))

(assert (=> d!2322868 m!8150716))

(declare-fun m!8150804 () Bool)

(assert (=> b!7618009 m!8150804))

(assert (=> b!7618009 m!8150804))

(declare-fun m!8150806 () Bool)

(assert (=> b!7618009 m!8150806))

(declare-fun m!8150808 () Bool)

(assert (=> b!7618009 m!8150808))

(assert (=> b!7618009 m!8150804))

(declare-fun m!8150810 () Bool)

(assert (=> b!7618009 m!8150810))

(declare-fun m!8150812 () Bool)

(assert (=> b!7618013 m!8150812))

(declare-fun m!8150814 () Bool)

(assert (=> b!7618013 m!8150814))

(assert (=> b!7618008 m!8150812))

(declare-fun m!8150816 () Bool)

(assert (=> b!7618008 m!8150816))

(assert (=> b!7618007 m!8150800))

(assert (=> b!7618005 m!8150812))

(declare-fun m!8150818 () Bool)

(assert (=> b!7618005 m!8150818))

(assert (=> b!7618006 m!8150734))

(assert (=> b!7617867 d!2322868))

(declare-fun bs!1943071 () Bool)

(declare-fun d!2322870 () Bool)

(assert (= bs!1943071 (and d!2322870 b!7617867)))

(declare-fun lambda!468238 () Int)

(assert (=> bs!1943071 (= lambda!468238 lambda!468232)))

(assert (=> d!2322870 true))

(assert (=> d!2322870 true))

(assert (=> d!2322870 true))

(assert (=> d!2322870 (= (isDefined!13983 (findConcatSeparation!3397 (reg!20621 r!14126) r!14126 Nil!73021 s!9605 s!9605)) (Exists!4448 lambda!468238))))

(declare-fun lt!2655925 () Unit!167416)

(declare-fun choose!58768 (Regex!20292 Regex!20292 List!73145) Unit!167416)

(assert (=> d!2322870 (= lt!2655925 (choose!58768 (reg!20621 r!14126) r!14126 s!9605))))

(assert (=> d!2322870 (validRegex!10712 (reg!20621 r!14126))))

(assert (=> d!2322870 (= (lemmaFindConcatSeparationEquivalentToExists!3155 (reg!20621 r!14126) r!14126 s!9605) lt!2655925)))

(declare-fun bs!1943072 () Bool)

(assert (= bs!1943072 d!2322870))

(declare-fun m!8150832 () Bool)

(assert (=> bs!1943072 m!8150832))

(declare-fun m!8150834 () Bool)

(assert (=> bs!1943072 m!8150834))

(assert (=> bs!1943072 m!8150712))

(declare-fun m!8150836 () Bool)

(assert (=> bs!1943072 m!8150836))

(assert (=> bs!1943072 m!8150716))

(assert (=> bs!1943072 m!8150712))

(assert (=> b!7617867 d!2322870))

(declare-fun d!2322874 () Bool)

(assert (=> d!2322874 (matchR!9799 (Star!20292 (reg!20621 r!14126)) (++!17602 (_1!37876 lt!2655874) (_2!37876 lt!2655874)))))

(declare-fun lt!2655928 () Unit!167416)

(declare-fun choose!58769 (Regex!20292 List!73145 List!73145) Unit!167416)

(assert (=> d!2322874 (= lt!2655928 (choose!58769 (reg!20621 r!14126) (_1!37876 lt!2655874) (_2!37876 lt!2655874)))))

(assert (=> d!2322874 (validRegex!10712 (Star!20292 (reg!20621 r!14126)))))

(assert (=> d!2322874 (= (lemmaStarApp!173 (reg!20621 r!14126) (_1!37876 lt!2655874) (_2!37876 lt!2655874)) lt!2655928)))

(declare-fun bs!1943073 () Bool)

(assert (= bs!1943073 d!2322874))

(assert (=> bs!1943073 m!8150720))

(assert (=> bs!1943073 m!8150720))

(declare-fun m!8150838 () Bool)

(assert (=> bs!1943073 m!8150838))

(declare-fun m!8150840 () Bool)

(assert (=> bs!1943073 m!8150840))

(declare-fun m!8150842 () Bool)

(assert (=> bs!1943073 m!8150842))

(assert (=> b!7617862 d!2322874))

(declare-fun b!7618049 () Bool)

(declare-fun e!4530080 () List!73145)

(assert (=> b!7618049 (= e!4530080 (Cons!73021 (h!79469 (_1!37876 lt!2655874)) (++!17602 (t!387880 (_1!37876 lt!2655874)) (_2!37876 lt!2655874))))))

(declare-fun d!2322876 () Bool)

(declare-fun e!4530079 () Bool)

(assert (=> d!2322876 e!4530079))

(declare-fun res!3049763 () Bool)

(assert (=> d!2322876 (=> (not res!3049763) (not e!4530079))))

(declare-fun lt!2655933 () List!73145)

(declare-fun content!15436 (List!73145) (Set C!40910))

(assert (=> d!2322876 (= res!3049763 (= (content!15436 lt!2655933) (set.union (content!15436 (_1!37876 lt!2655874)) (content!15436 (_2!37876 lt!2655874)))))))

(assert (=> d!2322876 (= lt!2655933 e!4530080)))

(declare-fun c!1404092 () Bool)

(assert (=> d!2322876 (= c!1404092 (is-Nil!73021 (_1!37876 lt!2655874)))))

(assert (=> d!2322876 (= (++!17602 (_1!37876 lt!2655874) (_2!37876 lt!2655874)) lt!2655933)))

(declare-fun b!7618050 () Bool)

(declare-fun res!3049764 () Bool)

(assert (=> b!7618050 (=> (not res!3049764) (not e!4530079))))

(declare-fun size!42529 (List!73145) Int)

(assert (=> b!7618050 (= res!3049764 (= (size!42529 lt!2655933) (+ (size!42529 (_1!37876 lt!2655874)) (size!42529 (_2!37876 lt!2655874)))))))

(declare-fun b!7618051 () Bool)

(assert (=> b!7618051 (= e!4530079 (or (not (= (_2!37876 lt!2655874) Nil!73021)) (= lt!2655933 (_1!37876 lt!2655874))))))

(declare-fun b!7618048 () Bool)

(assert (=> b!7618048 (= e!4530080 (_2!37876 lt!2655874))))

(assert (= (and d!2322876 c!1404092) b!7618048))

(assert (= (and d!2322876 (not c!1404092)) b!7618049))

(assert (= (and d!2322876 res!3049763) b!7618050))

(assert (= (and b!7618050 res!3049764) b!7618051))

(declare-fun m!8150844 () Bool)

(assert (=> b!7618049 m!8150844))

(declare-fun m!8150846 () Bool)

(assert (=> d!2322876 m!8150846))

(declare-fun m!8150848 () Bool)

(assert (=> d!2322876 m!8150848))

(declare-fun m!8150850 () Bool)

(assert (=> d!2322876 m!8150850))

(declare-fun m!8150852 () Bool)

(assert (=> b!7618050 m!8150852))

(declare-fun m!8150854 () Bool)

(assert (=> b!7618050 m!8150854))

(declare-fun m!8150856 () Bool)

(assert (=> b!7618050 m!8150856))

(assert (=> b!7617862 d!2322876))

(declare-fun d!2322878 () Bool)

(assert (=> d!2322878 (matchR!9799 (Concat!29137 (reg!20621 r!14126) r!14126) (++!17602 (_1!37876 lt!2655874) (_2!37876 lt!2655874)))))

(declare-fun lt!2655937 () Unit!167416)

(declare-fun choose!58770 (Regex!20292 Regex!20292 List!73145 List!73145 List!73145) Unit!167416)

(assert (=> d!2322878 (= lt!2655937 (choose!58770 (reg!20621 r!14126) r!14126 (_1!37876 lt!2655874) (_2!37876 lt!2655874) s!9605))))

(assert (=> d!2322878 (validRegex!10712 (reg!20621 r!14126))))

(assert (=> d!2322878 (= (lemmaFindSeparationIsDefinedThenConcatMatches!119 (reg!20621 r!14126) r!14126 (_1!37876 lt!2655874) (_2!37876 lt!2655874) s!9605) lt!2655937)))

(declare-fun bs!1943074 () Bool)

(assert (= bs!1943074 d!2322878))

(assert (=> bs!1943074 m!8150720))

(assert (=> bs!1943074 m!8150720))

(declare-fun m!8150872 () Bool)

(assert (=> bs!1943074 m!8150872))

(declare-fun m!8150874 () Bool)

(assert (=> bs!1943074 m!8150874))

(assert (=> bs!1943074 m!8150716))

(assert (=> b!7617862 d!2322878))

(declare-fun b!7618094 () Bool)

(declare-fun e!4530107 () Bool)

(declare-fun head!15649 (List!73145) C!40910)

(assert (=> b!7618094 (= e!4530107 (not (= (head!15649 lt!2655875) (c!1404062 (Concat!29137 (reg!20621 r!14126) r!14126)))))))

(declare-fun b!7618095 () Bool)

(declare-fun e!4530108 () Bool)

(assert (=> b!7618095 (= e!4530108 (= (head!15649 lt!2655875) (c!1404062 (Concat!29137 (reg!20621 r!14126) r!14126))))))

(declare-fun b!7618096 () Bool)

(declare-fun res!3049789 () Bool)

(assert (=> b!7618096 (=> (not res!3049789) (not e!4530108))))

(declare-fun tail!15189 (List!73145) List!73145)

(assert (=> b!7618096 (= res!3049789 (isEmpty!41634 (tail!15189 lt!2655875)))))

(declare-fun b!7618097 () Bool)

(declare-fun e!4530109 () Bool)

(declare-fun e!4530103 () Bool)

(assert (=> b!7618097 (= e!4530109 e!4530103)))

(declare-fun c!1404105 () Bool)

(assert (=> b!7618097 (= c!1404105 (is-EmptyLang!20292 (Concat!29137 (reg!20621 r!14126) r!14126)))))

(declare-fun d!2322882 () Bool)

(assert (=> d!2322882 e!4530109))

(declare-fun c!1404103 () Bool)

(assert (=> d!2322882 (= c!1404103 (is-EmptyExpr!20292 (Concat!29137 (reg!20621 r!14126) r!14126)))))

(declare-fun lt!2655940 () Bool)

(declare-fun e!4530104 () Bool)

(assert (=> d!2322882 (= lt!2655940 e!4530104)))

(declare-fun c!1404106 () Bool)

(assert (=> d!2322882 (= c!1404106 (isEmpty!41634 lt!2655875))))

(assert (=> d!2322882 (validRegex!10712 (Concat!29137 (reg!20621 r!14126) r!14126))))

(assert (=> d!2322882 (= (matchR!9799 (Concat!29137 (reg!20621 r!14126) r!14126) lt!2655875) lt!2655940)))

(declare-fun b!7618098 () Bool)

(declare-fun e!4530106 () Bool)

(assert (=> b!7618098 (= e!4530106 e!4530107)))

(declare-fun res!3049792 () Bool)

(assert (=> b!7618098 (=> res!3049792 e!4530107)))

(declare-fun call!699741 () Bool)

(assert (=> b!7618098 (= res!3049792 call!699741)))

(declare-fun b!7618099 () Bool)

(declare-fun derivativeStep!5849 (Regex!20292 C!40910) Regex!20292)

(assert (=> b!7618099 (= e!4530104 (matchR!9799 (derivativeStep!5849 (Concat!29137 (reg!20621 r!14126) r!14126) (head!15649 lt!2655875)) (tail!15189 lt!2655875)))))

(declare-fun b!7618100 () Bool)

(assert (=> b!7618100 (= e!4530109 (= lt!2655940 call!699741))))

(declare-fun b!7618101 () Bool)

(declare-fun res!3049788 () Bool)

(declare-fun e!4530105 () Bool)

(assert (=> b!7618101 (=> res!3049788 e!4530105)))

(assert (=> b!7618101 (= res!3049788 (not (is-ElementMatch!20292 (Concat!29137 (reg!20621 r!14126) r!14126))))))

(assert (=> b!7618101 (= e!4530103 e!4530105)))

(declare-fun b!7618102 () Bool)

(declare-fun res!3049790 () Bool)

(assert (=> b!7618102 (=> res!3049790 e!4530105)))

(assert (=> b!7618102 (= res!3049790 e!4530108)))

(declare-fun res!3049791 () Bool)

(assert (=> b!7618102 (=> (not res!3049791) (not e!4530108))))

(assert (=> b!7618102 (= res!3049791 lt!2655940)))

(declare-fun b!7618103 () Bool)

(declare-fun res!3049786 () Bool)

(assert (=> b!7618103 (=> (not res!3049786) (not e!4530108))))

(assert (=> b!7618103 (= res!3049786 (not call!699741))))

(declare-fun bm!699736 () Bool)

(assert (=> bm!699736 (= call!699741 (isEmpty!41634 lt!2655875))))

(declare-fun b!7618104 () Bool)

(assert (=> b!7618104 (= e!4530104 (nullable!8869 (Concat!29137 (reg!20621 r!14126) r!14126)))))

(declare-fun b!7618105 () Bool)

(declare-fun res!3049787 () Bool)

(assert (=> b!7618105 (=> res!3049787 e!4530107)))

(assert (=> b!7618105 (= res!3049787 (not (isEmpty!41634 (tail!15189 lt!2655875))))))

(declare-fun b!7618106 () Bool)

(assert (=> b!7618106 (= e!4530105 e!4530106)))

(declare-fun res!3049785 () Bool)

(assert (=> b!7618106 (=> (not res!3049785) (not e!4530106))))

(assert (=> b!7618106 (= res!3049785 (not lt!2655940))))

(declare-fun b!7618107 () Bool)

(assert (=> b!7618107 (= e!4530103 (not lt!2655940))))

(assert (= (and d!2322882 c!1404106) b!7618104))

(assert (= (and d!2322882 (not c!1404106)) b!7618099))

(assert (= (and d!2322882 c!1404103) b!7618100))

(assert (= (and d!2322882 (not c!1404103)) b!7618097))

(assert (= (and b!7618097 c!1404105) b!7618107))

(assert (= (and b!7618097 (not c!1404105)) b!7618101))

(assert (= (and b!7618101 (not res!3049788)) b!7618102))

(assert (= (and b!7618102 res!3049791) b!7618103))

(assert (= (and b!7618103 res!3049786) b!7618096))

(assert (= (and b!7618096 res!3049789) b!7618095))

(assert (= (and b!7618102 (not res!3049790)) b!7618106))

(assert (= (and b!7618106 res!3049785) b!7618098))

(assert (= (and b!7618098 (not res!3049792)) b!7618105))

(assert (= (and b!7618105 (not res!3049787)) b!7618094))

(assert (= (or b!7618100 b!7618098 b!7618103) bm!699736))

(declare-fun m!8150876 () Bool)

(assert (=> b!7618096 m!8150876))

(assert (=> b!7618096 m!8150876))

(declare-fun m!8150878 () Bool)

(assert (=> b!7618096 m!8150878))

(declare-fun m!8150880 () Bool)

(assert (=> b!7618104 m!8150880))

(assert (=> b!7618105 m!8150876))

(assert (=> b!7618105 m!8150876))

(assert (=> b!7618105 m!8150878))

(declare-fun m!8150882 () Bool)

(assert (=> b!7618099 m!8150882))

(assert (=> b!7618099 m!8150882))

(declare-fun m!8150884 () Bool)

(assert (=> b!7618099 m!8150884))

(assert (=> b!7618099 m!8150876))

(assert (=> b!7618099 m!8150884))

(assert (=> b!7618099 m!8150876))

(declare-fun m!8150886 () Bool)

(assert (=> b!7618099 m!8150886))

(declare-fun m!8150888 () Bool)

(assert (=> d!2322882 m!8150888))

(declare-fun m!8150890 () Bool)

(assert (=> d!2322882 m!8150890))

(assert (=> b!7618094 m!8150882))

(assert (=> bm!699736 m!8150888))

(assert (=> b!7618095 m!8150882))

(assert (=> b!7617862 d!2322882))

(declare-fun b!7618120 () Bool)

(declare-fun e!4530122 () Bool)

(assert (=> b!7618120 (= e!4530122 (not (= (head!15649 lt!2655875) (c!1404062 r!14126))))))

(declare-fun b!7618121 () Bool)

(declare-fun e!4530123 () Bool)

(assert (=> b!7618121 (= e!4530123 (= (head!15649 lt!2655875) (c!1404062 r!14126)))))

(declare-fun b!7618122 () Bool)

(declare-fun res!3049801 () Bool)

(assert (=> b!7618122 (=> (not res!3049801) (not e!4530123))))

(assert (=> b!7618122 (= res!3049801 (isEmpty!41634 (tail!15189 lt!2655875)))))

(declare-fun b!7618123 () Bool)

(declare-fun e!4530124 () Bool)

(declare-fun e!4530118 () Bool)

(assert (=> b!7618123 (= e!4530124 e!4530118)))

(declare-fun c!1404112 () Bool)

(assert (=> b!7618123 (= c!1404112 (is-EmptyLang!20292 r!14126))))

(declare-fun d!2322884 () Bool)

(assert (=> d!2322884 e!4530124))

(declare-fun c!1404111 () Bool)

(assert (=> d!2322884 (= c!1404111 (is-EmptyExpr!20292 r!14126))))

(declare-fun lt!2655941 () Bool)

(declare-fun e!4530119 () Bool)

(assert (=> d!2322884 (= lt!2655941 e!4530119)))

(declare-fun c!1404113 () Bool)

(assert (=> d!2322884 (= c!1404113 (isEmpty!41634 lt!2655875))))

(assert (=> d!2322884 (validRegex!10712 r!14126)))

(assert (=> d!2322884 (= (matchR!9799 r!14126 lt!2655875) lt!2655941)))

(declare-fun b!7618124 () Bool)

(declare-fun e!4530121 () Bool)

(assert (=> b!7618124 (= e!4530121 e!4530122)))

(declare-fun res!3049804 () Bool)

(assert (=> b!7618124 (=> res!3049804 e!4530122)))

(declare-fun call!699742 () Bool)

(assert (=> b!7618124 (= res!3049804 call!699742)))

(declare-fun b!7618125 () Bool)

(assert (=> b!7618125 (= e!4530119 (matchR!9799 (derivativeStep!5849 r!14126 (head!15649 lt!2655875)) (tail!15189 lt!2655875)))))

(declare-fun b!7618126 () Bool)

(assert (=> b!7618126 (= e!4530124 (= lt!2655941 call!699742))))

(declare-fun b!7618127 () Bool)

(declare-fun res!3049800 () Bool)

(declare-fun e!4530120 () Bool)

(assert (=> b!7618127 (=> res!3049800 e!4530120)))

(assert (=> b!7618127 (= res!3049800 (not (is-ElementMatch!20292 r!14126)))))

(assert (=> b!7618127 (= e!4530118 e!4530120)))

(declare-fun b!7618128 () Bool)

(declare-fun res!3049802 () Bool)

(assert (=> b!7618128 (=> res!3049802 e!4530120)))

(assert (=> b!7618128 (= res!3049802 e!4530123)))

(declare-fun res!3049803 () Bool)

(assert (=> b!7618128 (=> (not res!3049803) (not e!4530123))))

(assert (=> b!7618128 (= res!3049803 lt!2655941)))

(declare-fun b!7618129 () Bool)

(declare-fun res!3049798 () Bool)

(assert (=> b!7618129 (=> (not res!3049798) (not e!4530123))))

(assert (=> b!7618129 (= res!3049798 (not call!699742))))

(declare-fun bm!699737 () Bool)

(assert (=> bm!699737 (= call!699742 (isEmpty!41634 lt!2655875))))

(declare-fun b!7618130 () Bool)

(assert (=> b!7618130 (= e!4530119 (nullable!8869 r!14126))))

(declare-fun b!7618131 () Bool)

(declare-fun res!3049799 () Bool)

(assert (=> b!7618131 (=> res!3049799 e!4530122)))

(assert (=> b!7618131 (= res!3049799 (not (isEmpty!41634 (tail!15189 lt!2655875))))))

(declare-fun b!7618132 () Bool)

(assert (=> b!7618132 (= e!4530120 e!4530121)))

(declare-fun res!3049797 () Bool)

(assert (=> b!7618132 (=> (not res!3049797) (not e!4530121))))

(assert (=> b!7618132 (= res!3049797 (not lt!2655941))))

(declare-fun b!7618133 () Bool)

(assert (=> b!7618133 (= e!4530118 (not lt!2655941))))

(assert (= (and d!2322884 c!1404113) b!7618130))

(assert (= (and d!2322884 (not c!1404113)) b!7618125))

(assert (= (and d!2322884 c!1404111) b!7618126))

(assert (= (and d!2322884 (not c!1404111)) b!7618123))

(assert (= (and b!7618123 c!1404112) b!7618133))

(assert (= (and b!7618123 (not c!1404112)) b!7618127))

(assert (= (and b!7618127 (not res!3049800)) b!7618128))

(assert (= (and b!7618128 res!3049803) b!7618129))

(assert (= (and b!7618129 res!3049798) b!7618122))

(assert (= (and b!7618122 res!3049801) b!7618121))

(assert (= (and b!7618128 (not res!3049802)) b!7618132))

(assert (= (and b!7618132 res!3049797) b!7618124))

(assert (= (and b!7618124 (not res!3049804)) b!7618131))

(assert (= (and b!7618131 (not res!3049799)) b!7618120))

(assert (= (or b!7618126 b!7618124 b!7618129) bm!699737))

(assert (=> b!7618122 m!8150876))

(assert (=> b!7618122 m!8150876))

(assert (=> b!7618122 m!8150878))

(declare-fun m!8150892 () Bool)

(assert (=> b!7618130 m!8150892))

(assert (=> b!7618131 m!8150876))

(assert (=> b!7618131 m!8150876))

(assert (=> b!7618131 m!8150878))

(assert (=> b!7618125 m!8150882))

(assert (=> b!7618125 m!8150882))

(declare-fun m!8150894 () Bool)

(assert (=> b!7618125 m!8150894))

(assert (=> b!7618125 m!8150876))

(assert (=> b!7618125 m!8150894))

(assert (=> b!7618125 m!8150876))

(declare-fun m!8150896 () Bool)

(assert (=> b!7618125 m!8150896))

(assert (=> d!2322884 m!8150888))

(assert (=> d!2322884 m!8150706))

(assert (=> b!7618120 m!8150882))

(assert (=> bm!699737 m!8150888))

(assert (=> b!7618121 m!8150882))

(assert (=> b!7617862 d!2322884))

(declare-fun bm!699738 () Bool)

(declare-fun call!699743 () Bool)

(declare-fun c!1404115 () Bool)

(assert (=> bm!699738 (= call!699743 (validRegex!10712 (ite c!1404115 (regOne!41097 r!14126) (regOne!41096 r!14126))))))

(declare-fun b!7618134 () Bool)

(declare-fun e!4530125 () Bool)

(declare-fun call!699744 () Bool)

(assert (=> b!7618134 (= e!4530125 call!699744)))

(declare-fun d!2322886 () Bool)

(declare-fun res!3049805 () Bool)

(declare-fun e!4530126 () Bool)

(assert (=> d!2322886 (=> res!3049805 e!4530126)))

(assert (=> d!2322886 (= res!3049805 (is-ElementMatch!20292 r!14126))))

(assert (=> d!2322886 (= (validRegex!10712 r!14126) e!4530126)))

(declare-fun bm!699739 () Bool)

(declare-fun c!1404114 () Bool)

(assert (=> bm!699739 (= call!699744 (validRegex!10712 (ite c!1404114 (reg!20621 r!14126) (ite c!1404115 (regTwo!41097 r!14126) (regTwo!41096 r!14126)))))))

(declare-fun b!7618135 () Bool)

(declare-fun e!4530129 () Bool)

(declare-fun call!699745 () Bool)

(assert (=> b!7618135 (= e!4530129 call!699745)))

(declare-fun b!7618136 () Bool)

(declare-fun e!4530130 () Bool)

(declare-fun e!4530128 () Bool)

(assert (=> b!7618136 (= e!4530130 e!4530128)))

(assert (=> b!7618136 (= c!1404115 (is-Union!20292 r!14126))))

(declare-fun b!7618137 () Bool)

(declare-fun res!3049809 () Bool)

(assert (=> b!7618137 (=> (not res!3049809) (not e!4530129))))

(assert (=> b!7618137 (= res!3049809 call!699743)))

(assert (=> b!7618137 (= e!4530128 e!4530129)))

(declare-fun bm!699740 () Bool)

(assert (=> bm!699740 (= call!699745 call!699744)))

(declare-fun b!7618138 () Bool)

(assert (=> b!7618138 (= e!4530130 e!4530125)))

(declare-fun res!3049806 () Bool)

(assert (=> b!7618138 (= res!3049806 (not (nullable!8869 (reg!20621 r!14126))))))

(assert (=> b!7618138 (=> (not res!3049806) (not e!4530125))))

(declare-fun b!7618139 () Bool)

(declare-fun res!3049808 () Bool)

(declare-fun e!4530127 () Bool)

(assert (=> b!7618139 (=> res!3049808 e!4530127)))

(assert (=> b!7618139 (= res!3049808 (not (is-Concat!29137 r!14126)))))

(assert (=> b!7618139 (= e!4530128 e!4530127)))

(declare-fun b!7618140 () Bool)

(assert (=> b!7618140 (= e!4530126 e!4530130)))

(assert (=> b!7618140 (= c!1404114 (is-Star!20292 r!14126))))

(declare-fun b!7618141 () Bool)

(declare-fun e!4530131 () Bool)

(assert (=> b!7618141 (= e!4530131 call!699745)))

(declare-fun b!7618142 () Bool)

(assert (=> b!7618142 (= e!4530127 e!4530131)))

(declare-fun res!3049807 () Bool)

(assert (=> b!7618142 (=> (not res!3049807) (not e!4530131))))

(assert (=> b!7618142 (= res!3049807 call!699743)))

(assert (= (and d!2322886 (not res!3049805)) b!7618140))

(assert (= (and b!7618140 c!1404114) b!7618138))

(assert (= (and b!7618140 (not c!1404114)) b!7618136))

(assert (= (and b!7618138 res!3049806) b!7618134))

(assert (= (and b!7618136 c!1404115) b!7618137))

(assert (= (and b!7618136 (not c!1404115)) b!7618139))

(assert (= (and b!7618137 res!3049809) b!7618135))

(assert (= (and b!7618139 (not res!3049808)) b!7618142))

(assert (= (and b!7618142 res!3049807) b!7618141))

(assert (= (or b!7618137 b!7618142) bm!699738))

(assert (= (or b!7618135 b!7618141) bm!699740))

(assert (= (or b!7618134 bm!699740) bm!699739))

(declare-fun m!8150898 () Bool)

(assert (=> bm!699738 m!8150898))

(declare-fun m!8150900 () Bool)

(assert (=> bm!699739 m!8150900))

(declare-fun m!8150902 () Bool)

(assert (=> b!7618138 m!8150902))

(assert (=> start!733838 d!2322886))

(declare-fun b!7618143 () Bool)

(declare-fun e!4530136 () Bool)

(assert (=> b!7618143 (= e!4530136 (not (= (head!15649 s!9605) (c!1404062 r!14126))))))

(declare-fun b!7618144 () Bool)

(declare-fun e!4530137 () Bool)

(assert (=> b!7618144 (= e!4530137 (= (head!15649 s!9605) (c!1404062 r!14126)))))

(declare-fun b!7618145 () Bool)

(declare-fun res!3049814 () Bool)

(assert (=> b!7618145 (=> (not res!3049814) (not e!4530137))))

(assert (=> b!7618145 (= res!3049814 (isEmpty!41634 (tail!15189 s!9605)))))

(declare-fun b!7618146 () Bool)

(declare-fun e!4530138 () Bool)

(declare-fun e!4530132 () Bool)

(assert (=> b!7618146 (= e!4530138 e!4530132)))

(declare-fun c!1404117 () Bool)

(assert (=> b!7618146 (= c!1404117 (is-EmptyLang!20292 r!14126))))

(declare-fun d!2322888 () Bool)

(assert (=> d!2322888 e!4530138))

(declare-fun c!1404116 () Bool)

(assert (=> d!2322888 (= c!1404116 (is-EmptyExpr!20292 r!14126))))

(declare-fun lt!2655942 () Bool)

(declare-fun e!4530133 () Bool)

(assert (=> d!2322888 (= lt!2655942 e!4530133)))

(declare-fun c!1404118 () Bool)

(assert (=> d!2322888 (= c!1404118 (isEmpty!41634 s!9605))))

(assert (=> d!2322888 (validRegex!10712 r!14126)))

(assert (=> d!2322888 (= (matchR!9799 r!14126 s!9605) lt!2655942)))

(declare-fun b!7618147 () Bool)

(declare-fun e!4530135 () Bool)

(assert (=> b!7618147 (= e!4530135 e!4530136)))

(declare-fun res!3049817 () Bool)

(assert (=> b!7618147 (=> res!3049817 e!4530136)))

(declare-fun call!699746 () Bool)

(assert (=> b!7618147 (= res!3049817 call!699746)))

(declare-fun b!7618148 () Bool)

(assert (=> b!7618148 (= e!4530133 (matchR!9799 (derivativeStep!5849 r!14126 (head!15649 s!9605)) (tail!15189 s!9605)))))

(declare-fun b!7618149 () Bool)

(assert (=> b!7618149 (= e!4530138 (= lt!2655942 call!699746))))

(declare-fun b!7618150 () Bool)

(declare-fun res!3049813 () Bool)

(declare-fun e!4530134 () Bool)

(assert (=> b!7618150 (=> res!3049813 e!4530134)))

(assert (=> b!7618150 (= res!3049813 (not (is-ElementMatch!20292 r!14126)))))

(assert (=> b!7618150 (= e!4530132 e!4530134)))

(declare-fun b!7618151 () Bool)

(declare-fun res!3049815 () Bool)

(assert (=> b!7618151 (=> res!3049815 e!4530134)))

(assert (=> b!7618151 (= res!3049815 e!4530137)))

(declare-fun res!3049816 () Bool)

(assert (=> b!7618151 (=> (not res!3049816) (not e!4530137))))

(assert (=> b!7618151 (= res!3049816 lt!2655942)))

(declare-fun b!7618152 () Bool)

(declare-fun res!3049811 () Bool)

(assert (=> b!7618152 (=> (not res!3049811) (not e!4530137))))

(assert (=> b!7618152 (= res!3049811 (not call!699746))))

(declare-fun bm!699741 () Bool)

(assert (=> bm!699741 (= call!699746 (isEmpty!41634 s!9605))))

(declare-fun b!7618153 () Bool)

(assert (=> b!7618153 (= e!4530133 (nullable!8869 r!14126))))

(declare-fun b!7618154 () Bool)

(declare-fun res!3049812 () Bool)

(assert (=> b!7618154 (=> res!3049812 e!4530136)))

(assert (=> b!7618154 (= res!3049812 (not (isEmpty!41634 (tail!15189 s!9605))))))

(declare-fun b!7618155 () Bool)

(assert (=> b!7618155 (= e!4530134 e!4530135)))

(declare-fun res!3049810 () Bool)

(assert (=> b!7618155 (=> (not res!3049810) (not e!4530135))))

(assert (=> b!7618155 (= res!3049810 (not lt!2655942))))

(declare-fun b!7618156 () Bool)

(assert (=> b!7618156 (= e!4530132 (not lt!2655942))))

(assert (= (and d!2322888 c!1404118) b!7618153))

(assert (= (and d!2322888 (not c!1404118)) b!7618148))

(assert (= (and d!2322888 c!1404116) b!7618149))

(assert (= (and d!2322888 (not c!1404116)) b!7618146))

(assert (= (and b!7618146 c!1404117) b!7618156))

(assert (= (and b!7618146 (not c!1404117)) b!7618150))

(assert (= (and b!7618150 (not res!3049813)) b!7618151))

(assert (= (and b!7618151 res!3049816) b!7618152))

(assert (= (and b!7618152 res!3049811) b!7618145))

(assert (= (and b!7618145 res!3049814) b!7618144))

(assert (= (and b!7618151 (not res!3049815)) b!7618155))

(assert (= (and b!7618155 res!3049810) b!7618147))

(assert (= (and b!7618147 (not res!3049817)) b!7618154))

(assert (= (and b!7618154 (not res!3049812)) b!7618143))

(assert (= (or b!7618149 b!7618147 b!7618152) bm!699741))

(declare-fun m!8150904 () Bool)

(assert (=> b!7618145 m!8150904))

(assert (=> b!7618145 m!8150904))

(declare-fun m!8150906 () Bool)

(assert (=> b!7618145 m!8150906))

(assert (=> b!7618153 m!8150892))

(assert (=> b!7618154 m!8150904))

(assert (=> b!7618154 m!8150904))

(assert (=> b!7618154 m!8150906))

(declare-fun m!8150908 () Bool)

(assert (=> b!7618148 m!8150908))

(assert (=> b!7618148 m!8150908))

(declare-fun m!8150910 () Bool)

(assert (=> b!7618148 m!8150910))

(assert (=> b!7618148 m!8150904))

(assert (=> b!7618148 m!8150910))

(assert (=> b!7618148 m!8150904))

(declare-fun m!8150912 () Bool)

(assert (=> b!7618148 m!8150912))

(assert (=> d!2322888 m!8150746))

(assert (=> d!2322888 m!8150706))

(assert (=> b!7618143 m!8150908))

(assert (=> bm!699741 m!8150746))

(assert (=> b!7618144 m!8150908))

(assert (=> b!7617864 d!2322888))

(declare-fun bs!1943075 () Bool)

(declare-fun b!7618203 () Bool)

(assert (= bs!1943075 (and b!7618203 b!7617867)))

(declare-fun lambda!468247 () Int)

(assert (=> bs!1943075 (not (= lambda!468247 lambda!468232))))

(declare-fun bs!1943076 () Bool)

(assert (= bs!1943076 (and b!7618203 d!2322870)))

(assert (=> bs!1943076 (not (= lambda!468247 lambda!468238))))

(assert (=> b!7618203 true))

(assert (=> b!7618203 true))

(declare-fun bs!1943077 () Bool)

(declare-fun b!7618200 () Bool)

(assert (= bs!1943077 (and b!7618200 b!7617867)))

(declare-fun lambda!468248 () Int)

(assert (=> bs!1943077 (not (= lambda!468248 lambda!468232))))

(declare-fun bs!1943078 () Bool)

(assert (= bs!1943078 (and b!7618200 d!2322870)))

(assert (=> bs!1943078 (not (= lambda!468248 lambda!468238))))

(declare-fun bs!1943079 () Bool)

(assert (= bs!1943079 (and b!7618200 b!7618203)))

(assert (=> bs!1943079 (not (= lambda!468248 lambda!468247))))

(assert (=> b!7618200 true))

(assert (=> b!7618200 true))

(declare-fun b!7618199 () Bool)

(declare-fun res!3049846 () Bool)

(declare-fun e!4530164 () Bool)

(assert (=> b!7618199 (=> res!3049846 e!4530164)))

(declare-fun call!699756 () Bool)

(assert (=> b!7618199 (= res!3049846 call!699756)))

(declare-fun e!4530163 () Bool)

(assert (=> b!7618199 (= e!4530163 e!4530164)))

(declare-fun call!699755 () Bool)

(assert (=> b!7618200 (= e!4530163 call!699755)))

(declare-fun b!7618201 () Bool)

(declare-fun e!4530166 () Bool)

(declare-fun e!4530167 () Bool)

(assert (=> b!7618201 (= e!4530166 e!4530167)))

(declare-fun res!3049845 () Bool)

(assert (=> b!7618201 (= res!3049845 (matchRSpec!4491 (regOne!41097 r!14126) (_2!37876 lt!2655874)))))

(assert (=> b!7618201 (=> res!3049845 e!4530167)))

(declare-fun b!7618202 () Bool)

(declare-fun e!4530162 () Bool)

(assert (=> b!7618202 (= e!4530162 call!699756)))

(assert (=> b!7618203 (= e!4530164 call!699755)))

(declare-fun c!1404130 () Bool)

(declare-fun bm!699750 () Bool)

(assert (=> bm!699750 (= call!699755 (Exists!4448 (ite c!1404130 lambda!468247 lambda!468248)))))

(declare-fun d!2322890 () Bool)

(declare-fun c!1404129 () Bool)

(assert (=> d!2322890 (= c!1404129 (is-EmptyExpr!20292 r!14126))))

(assert (=> d!2322890 (= (matchRSpec!4491 r!14126 (_2!37876 lt!2655874)) e!4530162)))

(declare-fun b!7618204 () Bool)

(declare-fun c!1404127 () Bool)

(assert (=> b!7618204 (= c!1404127 (is-Union!20292 r!14126))))

(declare-fun e!4530161 () Bool)

(assert (=> b!7618204 (= e!4530161 e!4530166)))

(declare-fun b!7618205 () Bool)

(assert (=> b!7618205 (= e!4530166 e!4530163)))

(assert (=> b!7618205 (= c!1404130 (is-Star!20292 r!14126))))

(declare-fun b!7618206 () Bool)

(assert (=> b!7618206 (= e!4530167 (matchRSpec!4491 (regTwo!41097 r!14126) (_2!37876 lt!2655874)))))

(declare-fun b!7618207 () Bool)

(declare-fun e!4530165 () Bool)

(assert (=> b!7618207 (= e!4530162 e!4530165)))

(declare-fun res!3049844 () Bool)

(assert (=> b!7618207 (= res!3049844 (not (is-EmptyLang!20292 r!14126)))))

(assert (=> b!7618207 (=> (not res!3049844) (not e!4530165))))

(declare-fun b!7618208 () Bool)

(assert (=> b!7618208 (= e!4530161 (= (_2!37876 lt!2655874) (Cons!73021 (c!1404062 r!14126) Nil!73021)))))

(declare-fun b!7618209 () Bool)

(declare-fun c!1404128 () Bool)

(assert (=> b!7618209 (= c!1404128 (is-ElementMatch!20292 r!14126))))

(assert (=> b!7618209 (= e!4530165 e!4530161)))

(declare-fun bm!699751 () Bool)

(assert (=> bm!699751 (= call!699756 (isEmpty!41634 (_2!37876 lt!2655874)))))

(assert (= (and d!2322890 c!1404129) b!7618202))

(assert (= (and d!2322890 (not c!1404129)) b!7618207))

(assert (= (and b!7618207 res!3049844) b!7618209))

(assert (= (and b!7618209 c!1404128) b!7618208))

(assert (= (and b!7618209 (not c!1404128)) b!7618204))

(assert (= (and b!7618204 c!1404127) b!7618201))

(assert (= (and b!7618204 (not c!1404127)) b!7618205))

(assert (= (and b!7618201 (not res!3049845)) b!7618206))

(assert (= (and b!7618205 c!1404130) b!7618199))

(assert (= (and b!7618205 (not c!1404130)) b!7618200))

(assert (= (and b!7618199 (not res!3049846)) b!7618203))

(assert (= (or b!7618203 b!7618200) bm!699750))

(assert (= (or b!7618202 b!7618199) bm!699751))

(declare-fun m!8150914 () Bool)

(assert (=> b!7618201 m!8150914))

(declare-fun m!8150916 () Bool)

(assert (=> bm!699750 m!8150916))

(declare-fun m!8150918 () Bool)

(assert (=> b!7618206 m!8150918))

(declare-fun m!8150920 () Bool)

(assert (=> bm!699751 m!8150920))

(assert (=> b!7617864 d!2322890))

(declare-fun bs!1943080 () Bool)

(declare-fun b!7618214 () Bool)

(assert (= bs!1943080 (and b!7618214 b!7617867)))

(declare-fun lambda!468249 () Int)

(assert (=> bs!1943080 (not (= lambda!468249 lambda!468232))))

(declare-fun bs!1943081 () Bool)

(assert (= bs!1943081 (and b!7618214 d!2322870)))

(assert (=> bs!1943081 (not (= lambda!468249 lambda!468238))))

(declare-fun bs!1943082 () Bool)

(assert (= bs!1943082 (and b!7618214 b!7618203)))

(assert (=> bs!1943082 (= (and (= (_1!37876 lt!2655874) (_2!37876 lt!2655874)) (= (reg!20621 (reg!20621 r!14126)) (reg!20621 r!14126)) (= (reg!20621 r!14126) r!14126)) (= lambda!468249 lambda!468247))))

(declare-fun bs!1943083 () Bool)

(assert (= bs!1943083 (and b!7618214 b!7618200)))

(assert (=> bs!1943083 (not (= lambda!468249 lambda!468248))))

(assert (=> b!7618214 true))

(assert (=> b!7618214 true))

(declare-fun bs!1943084 () Bool)

(declare-fun b!7618211 () Bool)

(assert (= bs!1943084 (and b!7618211 d!2322870)))

(declare-fun lambda!468250 () Int)

(assert (=> bs!1943084 (not (= lambda!468250 lambda!468238))))

(declare-fun bs!1943085 () Bool)

(assert (= bs!1943085 (and b!7618211 b!7617867)))

(assert (=> bs!1943085 (not (= lambda!468250 lambda!468232))))

(declare-fun bs!1943086 () Bool)

(assert (= bs!1943086 (and b!7618211 b!7618214)))

(assert (=> bs!1943086 (not (= lambda!468250 lambda!468249))))

(declare-fun bs!1943087 () Bool)

(assert (= bs!1943087 (and b!7618211 b!7618200)))

(assert (=> bs!1943087 (= (and (= (_1!37876 lt!2655874) (_2!37876 lt!2655874)) (= (regOne!41096 (reg!20621 r!14126)) (regOne!41096 r!14126)) (= (regTwo!41096 (reg!20621 r!14126)) (regTwo!41096 r!14126))) (= lambda!468250 lambda!468248))))

(declare-fun bs!1943088 () Bool)

(assert (= bs!1943088 (and b!7618211 b!7618203)))

(assert (=> bs!1943088 (not (= lambda!468250 lambda!468247))))

(assert (=> b!7618211 true))

(assert (=> b!7618211 true))

(declare-fun b!7618210 () Bool)

(declare-fun res!3049849 () Bool)

(declare-fun e!4530171 () Bool)

(assert (=> b!7618210 (=> res!3049849 e!4530171)))

(declare-fun call!699758 () Bool)

(assert (=> b!7618210 (= res!3049849 call!699758)))

(declare-fun e!4530170 () Bool)

(assert (=> b!7618210 (= e!4530170 e!4530171)))

(declare-fun call!699757 () Bool)

(assert (=> b!7618211 (= e!4530170 call!699757)))

(declare-fun b!7618212 () Bool)

(declare-fun e!4530173 () Bool)

(declare-fun e!4530174 () Bool)

(assert (=> b!7618212 (= e!4530173 e!4530174)))

(declare-fun res!3049848 () Bool)

(assert (=> b!7618212 (= res!3049848 (matchRSpec!4491 (regOne!41097 (reg!20621 r!14126)) (_1!37876 lt!2655874)))))

(assert (=> b!7618212 (=> res!3049848 e!4530174)))

(declare-fun b!7618213 () Bool)

(declare-fun e!4530169 () Bool)

(assert (=> b!7618213 (= e!4530169 call!699758)))

(assert (=> b!7618214 (= e!4530171 call!699757)))

(declare-fun c!1404134 () Bool)

(declare-fun bm!699752 () Bool)

(assert (=> bm!699752 (= call!699757 (Exists!4448 (ite c!1404134 lambda!468249 lambda!468250)))))

(declare-fun d!2322892 () Bool)

(declare-fun c!1404133 () Bool)

(assert (=> d!2322892 (= c!1404133 (is-EmptyExpr!20292 (reg!20621 r!14126)))))

(assert (=> d!2322892 (= (matchRSpec!4491 (reg!20621 r!14126) (_1!37876 lt!2655874)) e!4530169)))

(declare-fun b!7618215 () Bool)

(declare-fun c!1404131 () Bool)

(assert (=> b!7618215 (= c!1404131 (is-Union!20292 (reg!20621 r!14126)))))

(declare-fun e!4530168 () Bool)

(assert (=> b!7618215 (= e!4530168 e!4530173)))

(declare-fun b!7618216 () Bool)

(assert (=> b!7618216 (= e!4530173 e!4530170)))

(assert (=> b!7618216 (= c!1404134 (is-Star!20292 (reg!20621 r!14126)))))

(declare-fun b!7618217 () Bool)

(assert (=> b!7618217 (= e!4530174 (matchRSpec!4491 (regTwo!41097 (reg!20621 r!14126)) (_1!37876 lt!2655874)))))

(declare-fun b!7618218 () Bool)

(declare-fun e!4530172 () Bool)

(assert (=> b!7618218 (= e!4530169 e!4530172)))

(declare-fun res!3049847 () Bool)

(assert (=> b!7618218 (= res!3049847 (not (is-EmptyLang!20292 (reg!20621 r!14126))))))

(assert (=> b!7618218 (=> (not res!3049847) (not e!4530172))))

(declare-fun b!7618219 () Bool)

(assert (=> b!7618219 (= e!4530168 (= (_1!37876 lt!2655874) (Cons!73021 (c!1404062 (reg!20621 r!14126)) Nil!73021)))))

(declare-fun b!7618220 () Bool)

(declare-fun c!1404132 () Bool)

(assert (=> b!7618220 (= c!1404132 (is-ElementMatch!20292 (reg!20621 r!14126)))))

(assert (=> b!7618220 (= e!4530172 e!4530168)))

(declare-fun bm!699753 () Bool)

(assert (=> bm!699753 (= call!699758 (isEmpty!41634 (_1!37876 lt!2655874)))))

(assert (= (and d!2322892 c!1404133) b!7618213))

(assert (= (and d!2322892 (not c!1404133)) b!7618218))

(assert (= (and b!7618218 res!3049847) b!7618220))

(assert (= (and b!7618220 c!1404132) b!7618219))

(assert (= (and b!7618220 (not c!1404132)) b!7618215))

(assert (= (and b!7618215 c!1404131) b!7618212))

(assert (= (and b!7618215 (not c!1404131)) b!7618216))

(assert (= (and b!7618212 (not res!3049848)) b!7618217))

(assert (= (and b!7618216 c!1404134) b!7618210))

(assert (= (and b!7618216 (not c!1404134)) b!7618211))

(assert (= (and b!7618210 (not res!3049849)) b!7618214))

(assert (= (or b!7618214 b!7618211) bm!699752))

(assert (= (or b!7618213 b!7618210) bm!699753))

(declare-fun m!8150922 () Bool)

(assert (=> b!7618212 m!8150922))

(declare-fun m!8150924 () Bool)

(assert (=> bm!699752 m!8150924))

(declare-fun m!8150926 () Bool)

(assert (=> b!7618217 m!8150926))

(declare-fun m!8150928 () Bool)

(assert (=> bm!699753 m!8150928))

(assert (=> b!7617864 d!2322892))

(declare-fun d!2322894 () Bool)

(assert (=> d!2322894 (= (matchR!9799 r!14126 (_2!37876 lt!2655874)) (matchRSpec!4491 r!14126 (_2!37876 lt!2655874)))))

(declare-fun lt!2655946 () Unit!167416)

(declare-fun choose!58771 (Regex!20292 List!73145) Unit!167416)

(assert (=> d!2322894 (= lt!2655946 (choose!58771 r!14126 (_2!37876 lt!2655874)))))

(assert (=> d!2322894 (validRegex!10712 r!14126)))

(assert (=> d!2322894 (= (mainMatchTheorem!4485 r!14126 (_2!37876 lt!2655874)) lt!2655946)))

(declare-fun bs!1943092 () Bool)

(assert (= bs!1943092 d!2322894))

(assert (=> bs!1943092 m!8150736))

(assert (=> bs!1943092 m!8150730))

(declare-fun m!8150938 () Bool)

(assert (=> bs!1943092 m!8150938))

(assert (=> bs!1943092 m!8150706))

(assert (=> b!7617864 d!2322894))

(declare-fun b!7618247 () Bool)

(declare-fun e!4530190 () List!73145)

(assert (=> b!7618247 (= e!4530190 (Cons!73021 (h!79469 (_1!37876 cut!5)) (++!17602 (t!387880 (_1!37876 cut!5)) (_2!37876 cut!5))))))

(declare-fun d!2322898 () Bool)

(declare-fun e!4530189 () Bool)

(assert (=> d!2322898 e!4530189))

(declare-fun res!3049861 () Bool)

(assert (=> d!2322898 (=> (not res!3049861) (not e!4530189))))

(declare-fun lt!2655947 () List!73145)

(assert (=> d!2322898 (= res!3049861 (= (content!15436 lt!2655947) (set.union (content!15436 (_1!37876 cut!5)) (content!15436 (_2!37876 cut!5)))))))

(assert (=> d!2322898 (= lt!2655947 e!4530190)))

(declare-fun c!1404142 () Bool)

(assert (=> d!2322898 (= c!1404142 (is-Nil!73021 (_1!37876 cut!5)))))

(assert (=> d!2322898 (= (++!17602 (_1!37876 cut!5) (_2!37876 cut!5)) lt!2655947)))

(declare-fun b!7618248 () Bool)

(declare-fun res!3049862 () Bool)

(assert (=> b!7618248 (=> (not res!3049862) (not e!4530189))))

(assert (=> b!7618248 (= res!3049862 (= (size!42529 lt!2655947) (+ (size!42529 (_1!37876 cut!5)) (size!42529 (_2!37876 cut!5)))))))

(declare-fun b!7618249 () Bool)

(assert (=> b!7618249 (= e!4530189 (or (not (= (_2!37876 cut!5) Nil!73021)) (= lt!2655947 (_1!37876 cut!5))))))

(declare-fun b!7618246 () Bool)

(assert (=> b!7618246 (= e!4530190 (_2!37876 cut!5))))

(assert (= (and d!2322898 c!1404142) b!7618246))

(assert (= (and d!2322898 (not c!1404142)) b!7618247))

(assert (= (and d!2322898 res!3049861) b!7618248))

(assert (= (and b!7618248 res!3049862) b!7618249))

(declare-fun m!8150940 () Bool)

(assert (=> b!7618247 m!8150940))

(declare-fun m!8150942 () Bool)

(assert (=> d!2322898 m!8150942))

(declare-fun m!8150944 () Bool)

(assert (=> d!2322898 m!8150944))

(declare-fun m!8150946 () Bool)

(assert (=> d!2322898 m!8150946))

(declare-fun m!8150948 () Bool)

(assert (=> b!7618248 m!8150948))

(declare-fun m!8150950 () Bool)

(assert (=> b!7618248 m!8150950))

(declare-fun m!8150952 () Bool)

(assert (=> b!7618248 m!8150952))

(assert (=> b!7617864 d!2322898))

(declare-fun d!2322900 () Bool)

(assert (=> d!2322900 (= (get!25750 lt!2655871) (v!54501 lt!2655871))))

(assert (=> b!7617864 d!2322900))

(declare-fun b!7618250 () Bool)

(declare-fun e!4530195 () Bool)

(assert (=> b!7618250 (= e!4530195 (not (= (head!15649 (_2!37876 lt!2655874)) (c!1404062 r!14126))))))

(declare-fun b!7618251 () Bool)

(declare-fun e!4530196 () Bool)

(assert (=> b!7618251 (= e!4530196 (= (head!15649 (_2!37876 lt!2655874)) (c!1404062 r!14126)))))

(declare-fun b!7618252 () Bool)

(declare-fun res!3049867 () Bool)

(assert (=> b!7618252 (=> (not res!3049867) (not e!4530196))))

(assert (=> b!7618252 (= res!3049867 (isEmpty!41634 (tail!15189 (_2!37876 lt!2655874))))))

(declare-fun b!7618253 () Bool)

(declare-fun e!4530197 () Bool)

(declare-fun e!4530191 () Bool)

(assert (=> b!7618253 (= e!4530197 e!4530191)))

(declare-fun c!1404144 () Bool)

(assert (=> b!7618253 (= c!1404144 (is-EmptyLang!20292 r!14126))))

(declare-fun d!2322902 () Bool)

(assert (=> d!2322902 e!4530197))

(declare-fun c!1404143 () Bool)

(assert (=> d!2322902 (= c!1404143 (is-EmptyExpr!20292 r!14126))))

(declare-fun lt!2655948 () Bool)

(declare-fun e!4530192 () Bool)

(assert (=> d!2322902 (= lt!2655948 e!4530192)))

(declare-fun c!1404145 () Bool)

(assert (=> d!2322902 (= c!1404145 (isEmpty!41634 (_2!37876 lt!2655874)))))

(assert (=> d!2322902 (validRegex!10712 r!14126)))

(assert (=> d!2322902 (= (matchR!9799 r!14126 (_2!37876 lt!2655874)) lt!2655948)))

(declare-fun b!7618254 () Bool)

(declare-fun e!4530194 () Bool)

(assert (=> b!7618254 (= e!4530194 e!4530195)))

(declare-fun res!3049870 () Bool)

(assert (=> b!7618254 (=> res!3049870 e!4530195)))

(declare-fun call!699762 () Bool)

(assert (=> b!7618254 (= res!3049870 call!699762)))

(declare-fun b!7618255 () Bool)

(assert (=> b!7618255 (= e!4530192 (matchR!9799 (derivativeStep!5849 r!14126 (head!15649 (_2!37876 lt!2655874))) (tail!15189 (_2!37876 lt!2655874))))))

(declare-fun b!7618256 () Bool)

(assert (=> b!7618256 (= e!4530197 (= lt!2655948 call!699762))))

(declare-fun b!7618257 () Bool)

(declare-fun res!3049866 () Bool)

(declare-fun e!4530193 () Bool)

(assert (=> b!7618257 (=> res!3049866 e!4530193)))

(assert (=> b!7618257 (= res!3049866 (not (is-ElementMatch!20292 r!14126)))))

(assert (=> b!7618257 (= e!4530191 e!4530193)))

(declare-fun b!7618258 () Bool)

(declare-fun res!3049868 () Bool)

(assert (=> b!7618258 (=> res!3049868 e!4530193)))

(assert (=> b!7618258 (= res!3049868 e!4530196)))

(declare-fun res!3049869 () Bool)

(assert (=> b!7618258 (=> (not res!3049869) (not e!4530196))))

(assert (=> b!7618258 (= res!3049869 lt!2655948)))

(declare-fun b!7618259 () Bool)

(declare-fun res!3049864 () Bool)

(assert (=> b!7618259 (=> (not res!3049864) (not e!4530196))))

(assert (=> b!7618259 (= res!3049864 (not call!699762))))

(declare-fun bm!699757 () Bool)

(assert (=> bm!699757 (= call!699762 (isEmpty!41634 (_2!37876 lt!2655874)))))

(declare-fun b!7618260 () Bool)

(assert (=> b!7618260 (= e!4530192 (nullable!8869 r!14126))))

(declare-fun b!7618261 () Bool)

(declare-fun res!3049865 () Bool)

(assert (=> b!7618261 (=> res!3049865 e!4530195)))

(assert (=> b!7618261 (= res!3049865 (not (isEmpty!41634 (tail!15189 (_2!37876 lt!2655874)))))))

(declare-fun b!7618262 () Bool)

(assert (=> b!7618262 (= e!4530193 e!4530194)))

(declare-fun res!3049863 () Bool)

(assert (=> b!7618262 (=> (not res!3049863) (not e!4530194))))

(assert (=> b!7618262 (= res!3049863 (not lt!2655948))))

(declare-fun b!7618263 () Bool)

(assert (=> b!7618263 (= e!4530191 (not lt!2655948))))

(assert (= (and d!2322902 c!1404145) b!7618260))

(assert (= (and d!2322902 (not c!1404145)) b!7618255))

(assert (= (and d!2322902 c!1404143) b!7618256))

(assert (= (and d!2322902 (not c!1404143)) b!7618253))

(assert (= (and b!7618253 c!1404144) b!7618263))

(assert (= (and b!7618253 (not c!1404144)) b!7618257))

(assert (= (and b!7618257 (not res!3049866)) b!7618258))

(assert (= (and b!7618258 res!3049869) b!7618259))

(assert (= (and b!7618259 res!3049864) b!7618252))

(assert (= (and b!7618252 res!3049867) b!7618251))

(assert (= (and b!7618258 (not res!3049868)) b!7618262))

(assert (= (and b!7618262 res!3049863) b!7618254))

(assert (= (and b!7618254 (not res!3049870)) b!7618261))

(assert (= (and b!7618261 (not res!3049865)) b!7618250))

(assert (= (or b!7618256 b!7618254 b!7618259) bm!699757))

(declare-fun m!8150960 () Bool)

(assert (=> b!7618252 m!8150960))

(assert (=> b!7618252 m!8150960))

(declare-fun m!8150962 () Bool)

(assert (=> b!7618252 m!8150962))

(assert (=> b!7618260 m!8150892))

(assert (=> b!7618261 m!8150960))

(assert (=> b!7618261 m!8150960))

(assert (=> b!7618261 m!8150962))

(declare-fun m!8150966 () Bool)

(assert (=> b!7618255 m!8150966))

(assert (=> b!7618255 m!8150966))

(declare-fun m!8150968 () Bool)

(assert (=> b!7618255 m!8150968))

(assert (=> b!7618255 m!8150960))

(assert (=> b!7618255 m!8150968))

(assert (=> b!7618255 m!8150960))

(declare-fun m!8150970 () Bool)

(assert (=> b!7618255 m!8150970))

(assert (=> d!2322902 m!8150920))

(assert (=> d!2322902 m!8150706))

(assert (=> b!7618250 m!8150966))

(assert (=> bm!699757 m!8150920))

(assert (=> b!7618251 m!8150966))

(assert (=> b!7617864 d!2322902))

(declare-fun d!2322904 () Bool)

(assert (=> d!2322904 (= (matchR!9799 (reg!20621 r!14126) (_1!37876 lt!2655874)) (matchRSpec!4491 (reg!20621 r!14126) (_1!37876 lt!2655874)))))

(declare-fun lt!2655949 () Unit!167416)

(assert (=> d!2322904 (= lt!2655949 (choose!58771 (reg!20621 r!14126) (_1!37876 lt!2655874)))))

(assert (=> d!2322904 (validRegex!10712 (reg!20621 r!14126))))

(assert (=> d!2322904 (= (mainMatchTheorem!4485 (reg!20621 r!14126) (_1!37876 lt!2655874)) lt!2655949)))

(declare-fun bs!1943093 () Bool)

(assert (= bs!1943093 d!2322904))

(assert (=> bs!1943093 m!8150744))

(assert (=> bs!1943093 m!8150732))

(declare-fun m!8150976 () Bool)

(assert (=> bs!1943093 m!8150976))

(assert (=> bs!1943093 m!8150716))

(assert (=> b!7617864 d!2322904))

(declare-fun b!7618264 () Bool)

(declare-fun e!4530202 () Bool)

(assert (=> b!7618264 (= e!4530202 (not (= (head!15649 (_1!37876 lt!2655874)) (c!1404062 (reg!20621 r!14126)))))))

(declare-fun b!7618265 () Bool)

(declare-fun e!4530203 () Bool)

(assert (=> b!7618265 (= e!4530203 (= (head!15649 (_1!37876 lt!2655874)) (c!1404062 (reg!20621 r!14126))))))

(declare-fun b!7618266 () Bool)

(declare-fun res!3049875 () Bool)

(assert (=> b!7618266 (=> (not res!3049875) (not e!4530203))))

(assert (=> b!7618266 (= res!3049875 (isEmpty!41634 (tail!15189 (_1!37876 lt!2655874))))))

(declare-fun b!7618267 () Bool)

(declare-fun e!4530204 () Bool)

(declare-fun e!4530198 () Bool)

(assert (=> b!7618267 (= e!4530204 e!4530198)))

(declare-fun c!1404147 () Bool)

(assert (=> b!7618267 (= c!1404147 (is-EmptyLang!20292 (reg!20621 r!14126)))))

(declare-fun d!2322908 () Bool)

(assert (=> d!2322908 e!4530204))

(declare-fun c!1404146 () Bool)

(assert (=> d!2322908 (= c!1404146 (is-EmptyExpr!20292 (reg!20621 r!14126)))))

(declare-fun lt!2655950 () Bool)

(declare-fun e!4530199 () Bool)

(assert (=> d!2322908 (= lt!2655950 e!4530199)))

(declare-fun c!1404148 () Bool)

(assert (=> d!2322908 (= c!1404148 (isEmpty!41634 (_1!37876 lt!2655874)))))

(assert (=> d!2322908 (validRegex!10712 (reg!20621 r!14126))))

(assert (=> d!2322908 (= (matchR!9799 (reg!20621 r!14126) (_1!37876 lt!2655874)) lt!2655950)))

(declare-fun b!7618268 () Bool)

(declare-fun e!4530201 () Bool)

(assert (=> b!7618268 (= e!4530201 e!4530202)))

(declare-fun res!3049878 () Bool)

(assert (=> b!7618268 (=> res!3049878 e!4530202)))

(declare-fun call!699763 () Bool)

(assert (=> b!7618268 (= res!3049878 call!699763)))

(declare-fun b!7618269 () Bool)

(assert (=> b!7618269 (= e!4530199 (matchR!9799 (derivativeStep!5849 (reg!20621 r!14126) (head!15649 (_1!37876 lt!2655874))) (tail!15189 (_1!37876 lt!2655874))))))

(declare-fun b!7618270 () Bool)

(assert (=> b!7618270 (= e!4530204 (= lt!2655950 call!699763))))

(declare-fun b!7618271 () Bool)

(declare-fun res!3049874 () Bool)

(declare-fun e!4530200 () Bool)

(assert (=> b!7618271 (=> res!3049874 e!4530200)))

(assert (=> b!7618271 (= res!3049874 (not (is-ElementMatch!20292 (reg!20621 r!14126))))))

(assert (=> b!7618271 (= e!4530198 e!4530200)))

(declare-fun b!7618272 () Bool)

(declare-fun res!3049876 () Bool)

(assert (=> b!7618272 (=> res!3049876 e!4530200)))

(assert (=> b!7618272 (= res!3049876 e!4530203)))

(declare-fun res!3049877 () Bool)

(assert (=> b!7618272 (=> (not res!3049877) (not e!4530203))))

(assert (=> b!7618272 (= res!3049877 lt!2655950)))

(declare-fun b!7618273 () Bool)

(declare-fun res!3049872 () Bool)

(assert (=> b!7618273 (=> (not res!3049872) (not e!4530203))))

(assert (=> b!7618273 (= res!3049872 (not call!699763))))

(declare-fun bm!699758 () Bool)

(assert (=> bm!699758 (= call!699763 (isEmpty!41634 (_1!37876 lt!2655874)))))

(declare-fun b!7618274 () Bool)

(assert (=> b!7618274 (= e!4530199 (nullable!8869 (reg!20621 r!14126)))))

(declare-fun b!7618275 () Bool)

(declare-fun res!3049873 () Bool)

(assert (=> b!7618275 (=> res!3049873 e!4530202)))

(assert (=> b!7618275 (= res!3049873 (not (isEmpty!41634 (tail!15189 (_1!37876 lt!2655874)))))))

(declare-fun b!7618276 () Bool)

(assert (=> b!7618276 (= e!4530200 e!4530201)))

(declare-fun res!3049871 () Bool)

(assert (=> b!7618276 (=> (not res!3049871) (not e!4530201))))

(assert (=> b!7618276 (= res!3049871 (not lt!2655950))))

(declare-fun b!7618277 () Bool)

(assert (=> b!7618277 (= e!4530198 (not lt!2655950))))

(assert (= (and d!2322908 c!1404148) b!7618274))

(assert (= (and d!2322908 (not c!1404148)) b!7618269))

(assert (= (and d!2322908 c!1404146) b!7618270))

(assert (= (and d!2322908 (not c!1404146)) b!7618267))

(assert (= (and b!7618267 c!1404147) b!7618277))

(assert (= (and b!7618267 (not c!1404147)) b!7618271))

(assert (= (and b!7618271 (not res!3049874)) b!7618272))

(assert (= (and b!7618272 res!3049877) b!7618273))

(assert (= (and b!7618273 res!3049872) b!7618266))

(assert (= (and b!7618266 res!3049875) b!7618265))

(assert (= (and b!7618272 (not res!3049876)) b!7618276))

(assert (= (and b!7618276 res!3049871) b!7618268))

(assert (= (and b!7618268 (not res!3049878)) b!7618275))

(assert (= (and b!7618275 (not res!3049873)) b!7618264))

(assert (= (or b!7618270 b!7618268 b!7618273) bm!699758))

(declare-fun m!8150978 () Bool)

(assert (=> b!7618266 m!8150978))

(assert (=> b!7618266 m!8150978))

(declare-fun m!8150980 () Bool)

(assert (=> b!7618266 m!8150980))

(assert (=> b!7618274 m!8150902))

(assert (=> b!7618275 m!8150978))

(assert (=> b!7618275 m!8150978))

(assert (=> b!7618275 m!8150980))

(declare-fun m!8150982 () Bool)

(assert (=> b!7618269 m!8150982))

(assert (=> b!7618269 m!8150982))

(declare-fun m!8150984 () Bool)

(assert (=> b!7618269 m!8150984))

(assert (=> b!7618269 m!8150978))

(assert (=> b!7618269 m!8150984))

(assert (=> b!7618269 m!8150978))

(declare-fun m!8150986 () Bool)

(assert (=> b!7618269 m!8150986))

(assert (=> d!2322908 m!8150928))

(assert (=> d!2322908 m!8150716))

(assert (=> b!7618264 m!8150982))

(assert (=> bm!699758 m!8150928))

(assert (=> b!7618265 m!8150982))

(assert (=> b!7617864 d!2322908))

(declare-fun b!7618282 () Bool)

(declare-fun e!4530207 () Bool)

(declare-fun tp!2224542 () Bool)

(assert (=> b!7618282 (= e!4530207 (and tp_is_empty!50939 tp!2224542))))

(assert (=> b!7617868 (= tp!2224515 e!4530207)))

(assert (= (and b!7617868 (is-Cons!73021 (t!387880 s!9605))) b!7618282))

(declare-fun b!7618293 () Bool)

(declare-fun e!4530210 () Bool)

(assert (=> b!7618293 (= e!4530210 tp_is_empty!50939)))

(declare-fun b!7618296 () Bool)

(declare-fun tp!2224555 () Bool)

(declare-fun tp!2224556 () Bool)

(assert (=> b!7618296 (= e!4530210 (and tp!2224555 tp!2224556))))

(declare-fun b!7618295 () Bool)

(declare-fun tp!2224557 () Bool)

(assert (=> b!7618295 (= e!4530210 tp!2224557)))

(declare-fun b!7618294 () Bool)

(declare-fun tp!2224554 () Bool)

(declare-fun tp!2224553 () Bool)

(assert (=> b!7618294 (= e!4530210 (and tp!2224554 tp!2224553))))

(assert (=> b!7617869 (= tp!2224514 e!4530210)))

(assert (= (and b!7617869 (is-ElementMatch!20292 (regOne!41096 r!14126))) b!7618293))

(assert (= (and b!7617869 (is-Concat!29137 (regOne!41096 r!14126))) b!7618294))

(assert (= (and b!7617869 (is-Star!20292 (regOne!41096 r!14126))) b!7618295))

(assert (= (and b!7617869 (is-Union!20292 (regOne!41096 r!14126))) b!7618296))

(declare-fun b!7618297 () Bool)

(declare-fun e!4530211 () Bool)

(assert (=> b!7618297 (= e!4530211 tp_is_empty!50939)))

(declare-fun b!7618300 () Bool)

(declare-fun tp!2224560 () Bool)

(declare-fun tp!2224561 () Bool)

(assert (=> b!7618300 (= e!4530211 (and tp!2224560 tp!2224561))))

(declare-fun b!7618299 () Bool)

(declare-fun tp!2224562 () Bool)

(assert (=> b!7618299 (= e!4530211 tp!2224562)))

(declare-fun b!7618298 () Bool)

(declare-fun tp!2224559 () Bool)

(declare-fun tp!2224558 () Bool)

(assert (=> b!7618298 (= e!4530211 (and tp!2224559 tp!2224558))))

(assert (=> b!7617869 (= tp!2224509 e!4530211)))

(assert (= (and b!7617869 (is-ElementMatch!20292 (regTwo!41096 r!14126))) b!7618297))

(assert (= (and b!7617869 (is-Concat!29137 (regTwo!41096 r!14126))) b!7618298))

(assert (= (and b!7617869 (is-Star!20292 (regTwo!41096 r!14126))) b!7618299))

(assert (= (and b!7617869 (is-Union!20292 (regTwo!41096 r!14126))) b!7618300))

(declare-fun b!7618301 () Bool)

(declare-fun e!4530212 () Bool)

(assert (=> b!7618301 (= e!4530212 tp_is_empty!50939)))

(declare-fun b!7618304 () Bool)

(declare-fun tp!2224565 () Bool)

(declare-fun tp!2224566 () Bool)

(assert (=> b!7618304 (= e!4530212 (and tp!2224565 tp!2224566))))

(declare-fun b!7618303 () Bool)

(declare-fun tp!2224567 () Bool)

(assert (=> b!7618303 (= e!4530212 tp!2224567)))

(declare-fun b!7618302 () Bool)

(declare-fun tp!2224564 () Bool)

(declare-fun tp!2224563 () Bool)

(assert (=> b!7618302 (= e!4530212 (and tp!2224564 tp!2224563))))

(assert (=> b!7617873 (= tp!2224511 e!4530212)))

(assert (= (and b!7617873 (is-ElementMatch!20292 (reg!20621 r!14126))) b!7618301))

(assert (= (and b!7617873 (is-Concat!29137 (reg!20621 r!14126))) b!7618302))

(assert (= (and b!7617873 (is-Star!20292 (reg!20621 r!14126))) b!7618303))

(assert (= (and b!7617873 (is-Union!20292 (reg!20621 r!14126))) b!7618304))

(declare-fun b!7618305 () Bool)

(declare-fun e!4530213 () Bool)

(declare-fun tp!2224568 () Bool)

(assert (=> b!7618305 (= e!4530213 (and tp_is_empty!50939 tp!2224568))))

(assert (=> b!7617860 (= tp!2224508 e!4530213)))

(assert (= (and b!7617860 (is-Cons!73021 (t!387880 (_2!37876 cut!5)))) b!7618305))

(declare-fun b!7618306 () Bool)

(declare-fun e!4530214 () Bool)

(assert (=> b!7618306 (= e!4530214 tp_is_empty!50939)))

(declare-fun b!7618309 () Bool)

(declare-fun tp!2224571 () Bool)

(declare-fun tp!2224572 () Bool)

(assert (=> b!7618309 (= e!4530214 (and tp!2224571 tp!2224572))))

(declare-fun b!7618308 () Bool)

(declare-fun tp!2224573 () Bool)

(assert (=> b!7618308 (= e!4530214 tp!2224573)))

(declare-fun b!7618307 () Bool)

(declare-fun tp!2224570 () Bool)

(declare-fun tp!2224569 () Bool)

(assert (=> b!7618307 (= e!4530214 (and tp!2224570 tp!2224569))))

(assert (=> b!7617870 (= tp!2224513 e!4530214)))

(assert (= (and b!7617870 (is-ElementMatch!20292 (regOne!41097 r!14126))) b!7618306))

(assert (= (and b!7617870 (is-Concat!29137 (regOne!41097 r!14126))) b!7618307))

(assert (= (and b!7617870 (is-Star!20292 (regOne!41097 r!14126))) b!7618308))

(assert (= (and b!7617870 (is-Union!20292 (regOne!41097 r!14126))) b!7618309))

(declare-fun b!7618310 () Bool)

(declare-fun e!4530215 () Bool)

(assert (=> b!7618310 (= e!4530215 tp_is_empty!50939)))

(declare-fun b!7618313 () Bool)

(declare-fun tp!2224576 () Bool)

(declare-fun tp!2224577 () Bool)

(assert (=> b!7618313 (= e!4530215 (and tp!2224576 tp!2224577))))

(declare-fun b!7618312 () Bool)

(declare-fun tp!2224578 () Bool)

(assert (=> b!7618312 (= e!4530215 tp!2224578)))

(declare-fun b!7618311 () Bool)

(declare-fun tp!2224575 () Bool)

(declare-fun tp!2224574 () Bool)

(assert (=> b!7618311 (= e!4530215 (and tp!2224575 tp!2224574))))

(assert (=> b!7617870 (= tp!2224510 e!4530215)))

(assert (= (and b!7617870 (is-ElementMatch!20292 (regTwo!41097 r!14126))) b!7618310))

(assert (= (and b!7617870 (is-Concat!29137 (regTwo!41097 r!14126))) b!7618311))

(assert (= (and b!7617870 (is-Star!20292 (regTwo!41097 r!14126))) b!7618312))

(assert (= (and b!7617870 (is-Union!20292 (regTwo!41097 r!14126))) b!7618313))

(declare-fun b!7618314 () Bool)

(declare-fun e!4530216 () Bool)

(declare-fun tp!2224579 () Bool)

(assert (=> b!7618314 (= e!4530216 (and tp_is_empty!50939 tp!2224579))))

(assert (=> b!7617865 (= tp!2224512 e!4530216)))

(assert (= (and b!7617865 (is-Cons!73021 (t!387880 (_1!37876 cut!5)))) b!7618314))

(push 1)

(assert (not b!7618282))

(assert (not bm!699757))

(assert (not b!7618143))

(assert (not bm!699753))

(assert (not b!7618217))

(assert (not b!7618212))

(assert (not b!7618131))

(assert (not b!7618144))

(assert (not d!2322888))

(assert (not b!7618201))

(assert (not b!7618013))

(assert (not bm!699738))

(assert (not b!7618274))

(assert (not b!7618300))

(assert (not b!7618264))

(assert (not b!7618104))

(assert (not b!7618007))

(assert (not b!7618252))

(assert (not b!7618125))

(assert (not b!7618153))

(assert (not b!7618305))

(assert (not d!2322908))

(assert (not b!7618005))

(assert (not bm!699739))

(assert (not b!7618313))

(assert (not b!7618154))

(assert (not b!7618120))

(assert (not bm!699741))

(assert (not b!7618311))

(assert (not b!7618295))

(assert (not b!7618009))

(assert (not b!7618296))

(assert (not bm!699751))

(assert (not b!7618006))

(assert (not d!2322878))

(assert (not b!7618302))

(assert tp_is_empty!50939)

(assert (not b!7618307))

(assert (not d!2322902))

(assert (not b!7618099))

(assert (not b!7618260))

(assert (not d!2322866))

(assert (not b!7618294))

(assert (not b!7618105))

(assert (not b!7618145))

(assert (not b!7618266))

(assert (not b!7618265))

(assert (not b!7618130))

(assert (not b!7618304))

(assert (not b!7617954))

(assert (not b!7618309))

(assert (not b!7618122))

(assert (not b!7618251))

(assert (not bm!699737))

(assert (not b!7618121))

(assert (not b!7618094))

(assert (not b!7618250))

(assert (not d!2322904))

(assert (not bm!699728))

(assert (not b!7618247))

(assert (not b!7618049))

(assert (not b!7618299))

(assert (not b!7618269))

(assert (not b!7618050))

(assert (not d!2322898))

(assert (not b!7618248))

(assert (not b!7618138))

(assert (not d!2322894))

(assert (not b!7618008))

(assert (not d!2322876))

(assert (not b!7618303))

(assert (not b!7618206))

(assert (not bm!699752))

(assert (not b!7618095))

(assert (not b!7618312))

(assert (not bm!699758))

(assert (not b!7618275))

(assert (not b!7618255))

(assert (not b!7618314))

(assert (not d!2322882))

(assert (not b!7618298))

(assert (not bm!699736))

(assert (not d!2322874))

(assert (not d!2322870))

(assert (not b!7618096))

(assert (not bm!699750))

(assert (not b!7618308))

(assert (not b!7618148))

(assert (not bm!699729))

(assert (not b!7618261))

(assert (not d!2322868))

(assert (not d!2322864))

(assert (not d!2322884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

