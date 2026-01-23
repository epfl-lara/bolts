; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665298 () Bool)

(assert start!665298)

(declare-fun b!6912781 () Bool)

(assert (=> b!6912781 true))

(assert (=> b!6912781 true))

(assert (=> b!6912781 true))

(declare-fun lambda!392900 () Int)

(declare-fun lambda!392899 () Int)

(assert (=> b!6912781 (not (= lambda!392900 lambda!392899))))

(assert (=> b!6912781 true))

(assert (=> b!6912781 true))

(assert (=> b!6912781 true))

(declare-fun bs!1845289 () Bool)

(declare-fun b!6912780 () Bool)

(assert (= bs!1845289 (and b!6912780 b!6912781)))

(declare-datatypes ((C!34056 0))(
  ( (C!34057 (val!26730 Int)) )
))
(declare-datatypes ((Regex!16893 0))(
  ( (ElementMatch!16893 (c!1283947 C!34056)) (Concat!25738 (regOne!34298 Regex!16893) (regTwo!34298 Regex!16893)) (EmptyExpr!16893) (Star!16893 (reg!17222 Regex!16893)) (EmptyLang!16893) (Union!16893 (regOne!34299 Regex!16893) (regTwo!34299 Regex!16893)) )
))
(declare-fun r1!6342 () Regex!16893)

(declare-datatypes ((List!66650 0))(
  ( (Nil!66526) (Cons!66526 (h!72974 C!34056) (t!380393 List!66650)) )
))
(declare-datatypes ((tuple2!67520 0))(
  ( (tuple2!67521 (_1!37063 List!66650) (_2!37063 List!66650)) )
))
(declare-fun lt!2468980 () tuple2!67520)

(declare-fun s!14361 () List!66650)

(declare-fun lambda!392901 () Int)

(declare-fun r2!6280 () Regex!16893)

(declare-fun r3!135 () Regex!16893)

(declare-fun lt!2468983 () Regex!16893)

(assert (=> bs!1845289 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392901 lambda!392899))))

(assert (=> bs!1845289 (not (= lambda!392901 lambda!392900))))

(assert (=> b!6912780 true))

(assert (=> b!6912780 true))

(assert (=> b!6912780 true))

(declare-fun lambda!392902 () Int)

(assert (=> bs!1845289 (not (= lambda!392902 lambda!392899))))

(assert (=> bs!1845289 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392902 lambda!392900))))

(assert (=> b!6912780 (not (= lambda!392902 lambda!392901))))

(assert (=> b!6912780 true))

(assert (=> b!6912780 true))

(assert (=> b!6912780 true))

(declare-fun bs!1845290 () Bool)

(declare-fun b!6912778 () Bool)

(assert (= bs!1845290 (and b!6912778 b!6912781)))

(declare-fun lt!2468979 () List!66650)

(declare-fun lambda!392903 () Int)

(assert (=> bs!1845290 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392903 lambda!392899))))

(assert (=> bs!1845290 (not (= lambda!392903 lambda!392900))))

(declare-fun bs!1845291 () Bool)

(assert (= bs!1845291 (and b!6912778 b!6912780)))

(assert (=> bs!1845291 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392903 lambda!392901))))

(assert (=> bs!1845291 (not (= lambda!392903 lambda!392902))))

(assert (=> b!6912778 true))

(assert (=> b!6912778 true))

(assert (=> b!6912778 true))

(declare-fun lambda!392904 () Int)

(assert (=> bs!1845290 (not (= lambda!392904 lambda!392899))))

(assert (=> bs!1845291 (not (= lambda!392904 lambda!392901))))

(assert (=> bs!1845291 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392904 lambda!392902))))

(assert (=> b!6912778 (not (= lambda!392904 lambda!392903))))

(assert (=> bs!1845290 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392904 lambda!392900))))

(assert (=> b!6912778 true))

(assert (=> b!6912778 true))

(assert (=> b!6912778 true))

(declare-fun b!6912765 () Bool)

(declare-fun res!2819209 () Bool)

(declare-fun e!4161747 () Bool)

(assert (=> b!6912765 (=> (not res!2819209) (not e!4161747))))

(declare-fun validRegex!8601 (Regex!16893) Bool)

(assert (=> b!6912765 (= res!2819209 (validRegex!8601 r2!6280))))

(declare-fun b!6912766 () Bool)

(declare-fun e!4161740 () Bool)

(declare-fun tp!1903664 () Bool)

(declare-fun tp!1903667 () Bool)

(assert (=> b!6912766 (= e!4161740 (and tp!1903664 tp!1903667))))

(declare-fun b!6912767 () Bool)

(declare-fun e!4161742 () Bool)

(declare-fun e!4161739 () Bool)

(assert (=> b!6912767 (= e!4161742 e!4161739)))

(declare-fun res!2819212 () Bool)

(assert (=> b!6912767 (=> res!2819212 e!4161739)))

(declare-datatypes ((Option!16672 0))(
  ( (None!16671) (Some!16671 (v!52943 tuple2!67520)) )
))
(declare-fun lt!2468989 () Option!16672)

(declare-fun isDefined!13375 (Option!16672) Bool)

(assert (=> b!6912767 (= res!2819212 (not (isDefined!13375 lt!2468989)))))

(declare-fun findConcatSeparation!3086 (Regex!16893 Regex!16893 List!66650 List!66650 List!66650) Option!16672)

(assert (=> b!6912767 (= lt!2468989 (findConcatSeparation!3086 r1!6342 lt!2468983 Nil!66526 s!14361 s!14361))))

(declare-fun b!6912768 () Bool)

(declare-fun e!4161746 () Bool)

(declare-fun tp!1903669 () Bool)

(declare-fun tp!1903658 () Bool)

(assert (=> b!6912768 (= e!4161746 (and tp!1903669 tp!1903658))))

(declare-fun b!6912769 () Bool)

(declare-fun e!4161743 () Bool)

(declare-fun tp_is_empty!43011 () Bool)

(declare-fun tp!1903662 () Bool)

(assert (=> b!6912769 (= e!4161743 (and tp_is_empty!43011 tp!1903662))))

(declare-fun b!6912770 () Bool)

(assert (=> b!6912770 (= e!4161740 tp_is_empty!43011)))

(declare-fun b!6912771 () Bool)

(declare-fun e!4161745 () Bool)

(declare-fun tp!1903656 () Bool)

(declare-fun tp!1903665 () Bool)

(assert (=> b!6912771 (= e!4161745 (and tp!1903656 tp!1903665))))

(declare-fun b!6912772 () Bool)

(declare-fun tp!1903671 () Bool)

(assert (=> b!6912772 (= e!4161740 tp!1903671)))

(declare-fun b!6912773 () Bool)

(assert (=> b!6912773 (= e!4161745 tp_is_empty!43011)))

(declare-fun b!6912774 () Bool)

(declare-fun res!2819217 () Bool)

(declare-fun e!4161748 () Bool)

(assert (=> b!6912774 (=> res!2819217 e!4161748)))

(declare-fun lt!2469003 () tuple2!67520)

(declare-fun matchR!9038 (Regex!16893 List!66650) Bool)

(assert (=> b!6912774 (= res!2819217 (not (matchR!9038 r3!135 (_2!37063 lt!2469003))))))

(declare-fun res!2819211 () Bool)

(assert (=> start!665298 (=> (not res!2819211) (not e!4161747))))

(assert (=> start!665298 (= res!2819211 (validRegex!8601 r1!6342))))

(assert (=> start!665298 e!4161747))

(assert (=> start!665298 e!4161740))

(assert (=> start!665298 e!4161745))

(assert (=> start!665298 e!4161746))

(assert (=> start!665298 e!4161743))

(declare-fun b!6912775 () Bool)

(declare-fun tp!1903666 () Bool)

(assert (=> b!6912775 (= e!4161746 tp!1903666)))

(declare-fun b!6912776 () Bool)

(assert (=> b!6912776 (= e!4161747 (not e!4161742))))

(declare-fun res!2819218 () Bool)

(assert (=> b!6912776 (=> res!2819218 e!4161742)))

(declare-fun lt!2468996 () Bool)

(assert (=> b!6912776 (= res!2819218 lt!2468996)))

(declare-fun lt!2469002 () Regex!16893)

(declare-fun matchRSpec!3956 (Regex!16893 List!66650) Bool)

(assert (=> b!6912776 (= (matchR!9038 lt!2469002 s!14361) (matchRSpec!3956 lt!2469002 s!14361))))

(declare-datatypes ((Unit!160522 0))(
  ( (Unit!160523) )
))
(declare-fun lt!2468993 () Unit!160522)

(declare-fun mainMatchTheorem!3956 (Regex!16893 List!66650) Unit!160522)

(assert (=> b!6912776 (= lt!2468993 (mainMatchTheorem!3956 lt!2469002 s!14361))))

(declare-fun lt!2468976 () Regex!16893)

(assert (=> b!6912776 (= lt!2468996 (matchRSpec!3956 lt!2468976 s!14361))))

(assert (=> b!6912776 (= lt!2468996 (matchR!9038 lt!2468976 s!14361))))

(declare-fun lt!2468997 () Unit!160522)

(assert (=> b!6912776 (= lt!2468997 (mainMatchTheorem!3956 lt!2468976 s!14361))))

(assert (=> b!6912776 (= lt!2469002 (Concat!25738 r1!6342 lt!2468983))))

(assert (=> b!6912776 (= lt!2468983 (Concat!25738 r2!6280 r3!135))))

(declare-fun lt!2468978 () Regex!16893)

(assert (=> b!6912776 (= lt!2468976 (Concat!25738 lt!2468978 r3!135))))

(assert (=> b!6912776 (= lt!2468978 (Concat!25738 r1!6342 r2!6280))))

(declare-fun b!6912777 () Bool)

(declare-fun res!2819213 () Bool)

(declare-fun e!4161744 () Bool)

(assert (=> b!6912777 (=> res!2819213 e!4161744)))

(assert (=> b!6912777 (= res!2819213 (not (matchR!9038 lt!2468983 (_2!37063 lt!2468980))))))

(declare-fun e!4161741 () Bool)

(declare-fun lt!2469000 () Bool)

(assert (=> b!6912778 (= e!4161741 lt!2469000)))

(declare-fun lt!2468999 () Bool)

(assert (=> b!6912778 lt!2468999))

(declare-fun lt!2468981 () Unit!160522)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!74 (Regex!16893 Regex!16893 List!66650 List!66650 List!66650 List!66650 List!66650) Unit!160522)

(assert (=> b!6912778 (= lt!2468981 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!74 r1!6342 r2!6280 (_1!37063 lt!2468980) (_1!37063 lt!2469003) lt!2468979 Nil!66526 lt!2468979))))

(declare-fun Exists!3901 (Int) Bool)

(assert (=> b!6912778 (= (Exists!3901 lambda!392903) (Exists!3901 lambda!392904))))

(declare-fun lt!2468998 () Unit!160522)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2374 (Regex!16893 Regex!16893 List!66650) Unit!160522)

(assert (=> b!6912778 (= lt!2468998 (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r1!6342 r2!6280 lt!2468979))))

(assert (=> b!6912778 (= lt!2468999 (Exists!3901 lambda!392903))))

(assert (=> b!6912778 (= lt!2468999 (isDefined!13375 (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979)))))

(declare-fun lt!2468994 () Unit!160522)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2848 (Regex!16893 Regex!16893 List!66650) Unit!160522)

(assert (=> b!6912778 (= lt!2468994 (lemmaFindConcatSeparationEquivalentToExists!2848 r1!6342 r2!6280 lt!2468979))))

(assert (=> b!6912778 (= lt!2469000 (matchRSpec!3956 lt!2468978 lt!2468979))))

(assert (=> b!6912778 (= lt!2469000 (matchR!9038 lt!2468978 lt!2468979))))

(declare-fun lt!2469001 () Unit!160522)

(assert (=> b!6912778 (= lt!2469001 (mainMatchTheorem!3956 lt!2468978 lt!2468979))))

(declare-fun lt!2468995 () List!66650)

(declare-fun ++!14946 (List!66650 List!66650) List!66650)

(assert (=> b!6912778 (= (++!14946 lt!2468979 (_2!37063 lt!2469003)) lt!2468995)))

(assert (=> b!6912778 (= lt!2468979 (++!14946 (_1!37063 lt!2468980) (_1!37063 lt!2469003)))))

(declare-fun lt!2468986 () Unit!160522)

(declare-fun lemmaConcatAssociativity!3004 (List!66650 List!66650 List!66650) Unit!160522)

(assert (=> b!6912778 (= lt!2468986 (lemmaConcatAssociativity!3004 (_1!37063 lt!2468980) (_1!37063 lt!2469003) (_2!37063 lt!2469003)))))

(declare-fun b!6912779 () Bool)

(assert (=> b!6912779 (= e!4161746 tp_is_empty!43011)))

(assert (=> b!6912780 (= e!4161744 e!4161748)))

(declare-fun res!2819214 () Bool)

(assert (=> b!6912780 (=> res!2819214 e!4161748)))

(assert (=> b!6912780 (= res!2819214 (not (matchR!9038 r2!6280 (_1!37063 lt!2469003))))))

(declare-fun lt!2468991 () Option!16672)

(declare-fun get!23290 (Option!16672) tuple2!67520)

(assert (=> b!6912780 (= lt!2469003 (get!23290 lt!2468991))))

(assert (=> b!6912780 (= (Exists!3901 lambda!392901) (Exists!3901 lambda!392902))))

(declare-fun lt!2468988 () Unit!160522)

(assert (=> b!6912780 (= lt!2468988 (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r2!6280 r3!135 (_2!37063 lt!2468980)))))

(assert (=> b!6912780 (= (isDefined!13375 lt!2468991) (Exists!3901 lambda!392901))))

(assert (=> b!6912780 (= lt!2468991 (findConcatSeparation!3086 r2!6280 r3!135 Nil!66526 (_2!37063 lt!2468980) (_2!37063 lt!2468980)))))

(declare-fun lt!2468990 () Unit!160522)

(assert (=> b!6912780 (= lt!2468990 (lemmaFindConcatSeparationEquivalentToExists!2848 r2!6280 r3!135 (_2!37063 lt!2468980)))))

(assert (=> b!6912780 (matchRSpec!3956 lt!2468983 (_2!37063 lt!2468980))))

(declare-fun lt!2468985 () Unit!160522)

(assert (=> b!6912780 (= lt!2468985 (mainMatchTheorem!3956 lt!2468983 (_2!37063 lt!2468980)))))

(assert (=> b!6912781 (= e!4161739 e!4161744)))

(declare-fun res!2819215 () Bool)

(assert (=> b!6912781 (=> res!2819215 e!4161744)))

(declare-fun lt!2468984 () Bool)

(assert (=> b!6912781 (= res!2819215 (not lt!2468984))))

(assert (=> b!6912781 (= lt!2468984 (matchRSpec!3956 r1!6342 (_1!37063 lt!2468980)))))

(assert (=> b!6912781 (= lt!2468984 (matchR!9038 r1!6342 (_1!37063 lt!2468980)))))

(declare-fun lt!2468982 () Unit!160522)

(assert (=> b!6912781 (= lt!2468982 (mainMatchTheorem!3956 r1!6342 (_1!37063 lt!2468980)))))

(assert (=> b!6912781 (= lt!2468980 (get!23290 lt!2468989))))

(assert (=> b!6912781 (= (Exists!3901 lambda!392899) (Exists!3901 lambda!392900))))

(declare-fun lt!2468975 () Unit!160522)

(assert (=> b!6912781 (= lt!2468975 (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r1!6342 lt!2468983 s!14361))))

(assert (=> b!6912781 (Exists!3901 lambda!392899)))

(declare-fun lt!2468977 () Unit!160522)

(assert (=> b!6912781 (= lt!2468977 (lemmaFindConcatSeparationEquivalentToExists!2848 r1!6342 lt!2468983 s!14361))))

(declare-fun b!6912782 () Bool)

(declare-fun res!2819210 () Bool)

(assert (=> b!6912782 (=> (not res!2819210) (not e!4161747))))

(assert (=> b!6912782 (= res!2819210 (validRegex!8601 r3!135))))

(declare-fun b!6912783 () Bool)

(declare-fun tp!1903663 () Bool)

(assert (=> b!6912783 (= e!4161745 tp!1903663)))

(declare-fun b!6912784 () Bool)

(declare-fun tp!1903670 () Bool)

(declare-fun tp!1903668 () Bool)

(assert (=> b!6912784 (= e!4161745 (and tp!1903670 tp!1903668))))

(declare-fun b!6912785 () Bool)

(assert (=> b!6912785 (= e!4161748 e!4161741)))

(declare-fun res!2819216 () Bool)

(assert (=> b!6912785 (=> res!2819216 e!4161741)))

(assert (=> b!6912785 (= res!2819216 (not (= lt!2468995 s!14361)))))

(assert (=> b!6912785 (= lt!2468995 (++!14946 (_1!37063 lt!2468980) (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003))))))

(assert (=> b!6912785 (matchRSpec!3956 r3!135 (_2!37063 lt!2469003))))

(declare-fun lt!2468992 () Unit!160522)

(assert (=> b!6912785 (= lt!2468992 (mainMatchTheorem!3956 r3!135 (_2!37063 lt!2469003)))))

(assert (=> b!6912785 (matchRSpec!3956 r2!6280 (_1!37063 lt!2469003))))

(declare-fun lt!2468987 () Unit!160522)

(assert (=> b!6912785 (= lt!2468987 (mainMatchTheorem!3956 r2!6280 (_1!37063 lt!2469003)))))

(declare-fun b!6912786 () Bool)

(declare-fun tp!1903661 () Bool)

(declare-fun tp!1903657 () Bool)

(assert (=> b!6912786 (= e!4161740 (and tp!1903661 tp!1903657))))

(declare-fun b!6912787 () Bool)

(declare-fun tp!1903660 () Bool)

(declare-fun tp!1903659 () Bool)

(assert (=> b!6912787 (= e!4161746 (and tp!1903660 tp!1903659))))

(assert (= (and start!665298 res!2819211) b!6912765))

(assert (= (and b!6912765 res!2819209) b!6912782))

(assert (= (and b!6912782 res!2819210) b!6912776))

(assert (= (and b!6912776 (not res!2819218)) b!6912767))

(assert (= (and b!6912767 (not res!2819212)) b!6912781))

(assert (= (and b!6912781 (not res!2819215)) b!6912777))

(assert (= (and b!6912777 (not res!2819213)) b!6912780))

(assert (= (and b!6912780 (not res!2819214)) b!6912774))

(assert (= (and b!6912774 (not res!2819217)) b!6912785))

(assert (= (and b!6912785 (not res!2819216)) b!6912778))

(get-info :version)

(assert (= (and start!665298 ((_ is ElementMatch!16893) r1!6342)) b!6912770))

(assert (= (and start!665298 ((_ is Concat!25738) r1!6342)) b!6912766))

(assert (= (and start!665298 ((_ is Star!16893) r1!6342)) b!6912772))

(assert (= (and start!665298 ((_ is Union!16893) r1!6342)) b!6912786))

(assert (= (and start!665298 ((_ is ElementMatch!16893) r2!6280)) b!6912773))

(assert (= (and start!665298 ((_ is Concat!25738) r2!6280)) b!6912784))

(assert (= (and start!665298 ((_ is Star!16893) r2!6280)) b!6912783))

(assert (= (and start!665298 ((_ is Union!16893) r2!6280)) b!6912771))

(assert (= (and start!665298 ((_ is ElementMatch!16893) r3!135)) b!6912779))

(assert (= (and start!665298 ((_ is Concat!25738) r3!135)) b!6912787))

(assert (= (and start!665298 ((_ is Star!16893) r3!135)) b!6912775))

(assert (= (and start!665298 ((_ is Union!16893) r3!135)) b!6912768))

(assert (= (and start!665298 ((_ is Cons!66526) s!14361)) b!6912769))

(declare-fun m!7626672 () Bool)

(assert (=> b!6912776 m!7626672))

(declare-fun m!7626674 () Bool)

(assert (=> b!6912776 m!7626674))

(declare-fun m!7626676 () Bool)

(assert (=> b!6912776 m!7626676))

(declare-fun m!7626678 () Bool)

(assert (=> b!6912776 m!7626678))

(declare-fun m!7626680 () Bool)

(assert (=> b!6912776 m!7626680))

(declare-fun m!7626682 () Bool)

(assert (=> b!6912776 m!7626682))

(declare-fun m!7626684 () Bool)

(assert (=> b!6912780 m!7626684))

(declare-fun m!7626686 () Bool)

(assert (=> b!6912780 m!7626686))

(declare-fun m!7626688 () Bool)

(assert (=> b!6912780 m!7626688))

(declare-fun m!7626690 () Bool)

(assert (=> b!6912780 m!7626690))

(declare-fun m!7626692 () Bool)

(assert (=> b!6912780 m!7626692))

(declare-fun m!7626694 () Bool)

(assert (=> b!6912780 m!7626694))

(declare-fun m!7626696 () Bool)

(assert (=> b!6912780 m!7626696))

(declare-fun m!7626698 () Bool)

(assert (=> b!6912780 m!7626698))

(assert (=> b!6912780 m!7626692))

(declare-fun m!7626700 () Bool)

(assert (=> b!6912780 m!7626700))

(declare-fun m!7626702 () Bool)

(assert (=> b!6912780 m!7626702))

(declare-fun m!7626704 () Bool)

(assert (=> b!6912765 m!7626704))

(declare-fun m!7626706 () Bool)

(assert (=> b!6912782 m!7626706))

(declare-fun m!7626708 () Bool)

(assert (=> b!6912778 m!7626708))

(declare-fun m!7626710 () Bool)

(assert (=> b!6912778 m!7626710))

(assert (=> b!6912778 m!7626710))

(declare-fun m!7626712 () Bool)

(assert (=> b!6912778 m!7626712))

(declare-fun m!7626714 () Bool)

(assert (=> b!6912778 m!7626714))

(declare-fun m!7626716 () Bool)

(assert (=> b!6912778 m!7626716))

(declare-fun m!7626718 () Bool)

(assert (=> b!6912778 m!7626718))

(declare-fun m!7626720 () Bool)

(assert (=> b!6912778 m!7626720))

(declare-fun m!7626722 () Bool)

(assert (=> b!6912778 m!7626722))

(declare-fun m!7626724 () Bool)

(assert (=> b!6912778 m!7626724))

(declare-fun m!7626726 () Bool)

(assert (=> b!6912778 m!7626726))

(declare-fun m!7626728 () Bool)

(assert (=> b!6912778 m!7626728))

(declare-fun m!7626730 () Bool)

(assert (=> b!6912778 m!7626730))

(assert (=> b!6912778 m!7626722))

(declare-fun m!7626732 () Bool)

(assert (=> b!6912778 m!7626732))

(declare-fun m!7626734 () Bool)

(assert (=> b!6912777 m!7626734))

(declare-fun m!7626736 () Bool)

(assert (=> start!665298 m!7626736))

(declare-fun m!7626738 () Bool)

(assert (=> b!6912785 m!7626738))

(assert (=> b!6912785 m!7626738))

(declare-fun m!7626740 () Bool)

(assert (=> b!6912785 m!7626740))

(declare-fun m!7626742 () Bool)

(assert (=> b!6912785 m!7626742))

(declare-fun m!7626744 () Bool)

(assert (=> b!6912785 m!7626744))

(declare-fun m!7626746 () Bool)

(assert (=> b!6912785 m!7626746))

(declare-fun m!7626748 () Bool)

(assert (=> b!6912785 m!7626748))

(declare-fun m!7626750 () Bool)

(assert (=> b!6912774 m!7626750))

(declare-fun m!7626752 () Bool)

(assert (=> b!6912781 m!7626752))

(declare-fun m!7626754 () Bool)

(assert (=> b!6912781 m!7626754))

(declare-fun m!7626756 () Bool)

(assert (=> b!6912781 m!7626756))

(declare-fun m!7626758 () Bool)

(assert (=> b!6912781 m!7626758))

(declare-fun m!7626760 () Bool)

(assert (=> b!6912781 m!7626760))

(declare-fun m!7626762 () Bool)

(assert (=> b!6912781 m!7626762))

(declare-fun m!7626764 () Bool)

(assert (=> b!6912781 m!7626764))

(assert (=> b!6912781 m!7626754))

(declare-fun m!7626766 () Bool)

(assert (=> b!6912781 m!7626766))

(declare-fun m!7626768 () Bool)

(assert (=> b!6912767 m!7626768))

(declare-fun m!7626770 () Bool)

(assert (=> b!6912767 m!7626770))

(check-sat (not start!665298) (not b!6912772) (not b!6912765) (not b!6912774) (not b!6912766) (not b!6912768) (not b!6912771) (not b!6912785) (not b!6912787) (not b!6912780) (not b!6912769) (not b!6912777) (not b!6912767) (not b!6912782) (not b!6912781) (not b!6912784) (not b!6912775) (not b!6912786) (not b!6912778) (not b!6912783) tp_is_empty!43011 (not b!6912776))
(check-sat)
(get-model)

(declare-fun d!2163612 () Bool)

(assert (=> d!2163612 (= (matchR!9038 r1!6342 (_1!37063 lt!2468980)) (matchRSpec!3956 r1!6342 (_1!37063 lt!2468980)))))

(declare-fun lt!2469006 () Unit!160522)

(declare-fun choose!51486 (Regex!16893 List!66650) Unit!160522)

(assert (=> d!2163612 (= lt!2469006 (choose!51486 r1!6342 (_1!37063 lt!2468980)))))

(assert (=> d!2163612 (validRegex!8601 r1!6342)))

(assert (=> d!2163612 (= (mainMatchTheorem!3956 r1!6342 (_1!37063 lt!2468980)) lt!2469006)))

(declare-fun bs!1845292 () Bool)

(assert (= bs!1845292 d!2163612))

(assert (=> bs!1845292 m!7626752))

(assert (=> bs!1845292 m!7626764))

(declare-fun m!7626772 () Bool)

(assert (=> bs!1845292 m!7626772))

(assert (=> bs!1845292 m!7626736))

(assert (=> b!6912781 d!2163612))

(declare-fun d!2163614 () Bool)

(declare-fun choose!51487 (Int) Bool)

(assert (=> d!2163614 (= (Exists!3901 lambda!392899) (choose!51487 lambda!392899))))

(declare-fun bs!1845293 () Bool)

(assert (= bs!1845293 d!2163614))

(declare-fun m!7626774 () Bool)

(assert (=> bs!1845293 m!7626774))

(assert (=> b!6912781 d!2163614))

(declare-fun bs!1845301 () Bool)

(declare-fun b!6912875 () Bool)

(assert (= bs!1845301 (and b!6912875 b!6912781)))

(declare-fun lambda!392915 () Int)

(assert (=> bs!1845301 (not (= lambda!392915 lambda!392899))))

(declare-fun bs!1845302 () Bool)

(assert (= bs!1845302 (and b!6912875 b!6912780)))

(assert (=> bs!1845302 (not (= lambda!392915 lambda!392901))))

(assert (=> bs!1845302 (not (= lambda!392915 lambda!392902))))

(assert (=> bs!1845301 (not (= lambda!392915 lambda!392900))))

(declare-fun bs!1845303 () Bool)

(assert (= bs!1845303 (and b!6912875 b!6912778)))

(assert (=> bs!1845303 (not (= lambda!392915 lambda!392904))))

(assert (=> bs!1845303 (not (= lambda!392915 lambda!392903))))

(assert (=> b!6912875 true))

(assert (=> b!6912875 true))

(declare-fun bs!1845304 () Bool)

(declare-fun b!6912877 () Bool)

(assert (= bs!1845304 (and b!6912877 b!6912780)))

(declare-fun lambda!392916 () Int)

(assert (=> bs!1845304 (not (= lambda!392916 lambda!392901))))

(assert (=> bs!1845304 (= (and (= (_1!37063 lt!2468980) (_2!37063 lt!2468980)) (= (regOne!34298 r1!6342) r2!6280) (= (regTwo!34298 r1!6342) r3!135)) (= lambda!392916 lambda!392902))))

(declare-fun bs!1845305 () Bool)

(assert (= bs!1845305 (and b!6912877 b!6912781)))

(assert (=> bs!1845305 (= (and (= (_1!37063 lt!2468980) s!14361) (= (regOne!34298 r1!6342) r1!6342) (= (regTwo!34298 r1!6342) lt!2468983)) (= lambda!392916 lambda!392900))))

(declare-fun bs!1845306 () Bool)

(assert (= bs!1845306 (and b!6912877 b!6912875)))

(assert (=> bs!1845306 (not (= lambda!392916 lambda!392915))))

(assert (=> bs!1845305 (not (= lambda!392916 lambda!392899))))

(declare-fun bs!1845307 () Bool)

(assert (= bs!1845307 (and b!6912877 b!6912778)))

(assert (=> bs!1845307 (= (and (= (_1!37063 lt!2468980) lt!2468979) (= (regOne!34298 r1!6342) r1!6342) (= (regTwo!34298 r1!6342) r2!6280)) (= lambda!392916 lambda!392904))))

(assert (=> bs!1845307 (not (= lambda!392916 lambda!392903))))

(assert (=> b!6912877 true))

(assert (=> b!6912877 true))

(declare-fun b!6912873 () Bool)

(declare-fun c!1283971 () Bool)

(assert (=> b!6912873 (= c!1283971 ((_ is ElementMatch!16893) r1!6342))))

(declare-fun e!4161797 () Bool)

(declare-fun e!4161793 () Bool)

(assert (=> b!6912873 (= e!4161797 e!4161793)))

(declare-fun b!6912874 () Bool)

(declare-fun e!4161798 () Bool)

(assert (=> b!6912874 (= e!4161798 (matchRSpec!3956 (regTwo!34299 r1!6342) (_1!37063 lt!2468980)))))

(declare-fun e!4161794 () Bool)

(declare-fun call!628476 () Bool)

(assert (=> b!6912875 (= e!4161794 call!628476)))

(declare-fun bm!628471 () Bool)

(declare-fun call!628477 () Bool)

(declare-fun isEmpty!38777 (List!66650) Bool)

(assert (=> bm!628471 (= call!628477 (isEmpty!38777 (_1!37063 lt!2468980)))))

(declare-fun d!2163616 () Bool)

(declare-fun c!1283972 () Bool)

(assert (=> d!2163616 (= c!1283972 ((_ is EmptyExpr!16893) r1!6342))))

(declare-fun e!4161799 () Bool)

(assert (=> d!2163616 (= (matchRSpec!3956 r1!6342 (_1!37063 lt!2468980)) e!4161799)))

(declare-fun b!6912876 () Bool)

(declare-fun c!1283969 () Bool)

(assert (=> b!6912876 (= c!1283969 ((_ is Union!16893) r1!6342))))

(declare-fun e!4161800 () Bool)

(assert (=> b!6912876 (= e!4161793 e!4161800)))

(declare-fun bm!628472 () Bool)

(declare-fun c!1283970 () Bool)

(assert (=> bm!628472 (= call!628476 (Exists!3901 (ite c!1283970 lambda!392915 lambda!392916)))))

(declare-fun e!4161796 () Bool)

(assert (=> b!6912877 (= e!4161796 call!628476)))

(declare-fun b!6912878 () Bool)

(assert (=> b!6912878 (= e!4161793 (= (_1!37063 lt!2468980) (Cons!66526 (c!1283947 r1!6342) Nil!66526)))))

(declare-fun b!6912879 () Bool)

(assert (=> b!6912879 (= e!4161799 e!4161797)))

(declare-fun res!2819254 () Bool)

(assert (=> b!6912879 (= res!2819254 (not ((_ is EmptyLang!16893) r1!6342)))))

(assert (=> b!6912879 (=> (not res!2819254) (not e!4161797))))

(declare-fun b!6912880 () Bool)

(declare-fun res!2819255 () Bool)

(assert (=> b!6912880 (=> res!2819255 e!4161794)))

(assert (=> b!6912880 (= res!2819255 call!628477)))

(assert (=> b!6912880 (= e!4161796 e!4161794)))

(declare-fun b!6912881 () Bool)

(assert (=> b!6912881 (= e!4161800 e!4161798)))

(declare-fun res!2819256 () Bool)

(assert (=> b!6912881 (= res!2819256 (matchRSpec!3956 (regOne!34299 r1!6342) (_1!37063 lt!2468980)))))

(assert (=> b!6912881 (=> res!2819256 e!4161798)))

(declare-fun b!6912882 () Bool)

(assert (=> b!6912882 (= e!4161800 e!4161796)))

(assert (=> b!6912882 (= c!1283970 ((_ is Star!16893) r1!6342))))

(declare-fun b!6912883 () Bool)

(assert (=> b!6912883 (= e!4161799 call!628477)))

(assert (= (and d!2163616 c!1283972) b!6912883))

(assert (= (and d!2163616 (not c!1283972)) b!6912879))

(assert (= (and b!6912879 res!2819254) b!6912873))

(assert (= (and b!6912873 c!1283971) b!6912878))

(assert (= (and b!6912873 (not c!1283971)) b!6912876))

(assert (= (and b!6912876 c!1283969) b!6912881))

(assert (= (and b!6912876 (not c!1283969)) b!6912882))

(assert (= (and b!6912881 (not res!2819256)) b!6912874))

(assert (= (and b!6912882 c!1283970) b!6912880))

(assert (= (and b!6912882 (not c!1283970)) b!6912877))

(assert (= (and b!6912880 (not res!2819255)) b!6912875))

(assert (= (or b!6912875 b!6912877) bm!628472))

(assert (= (or b!6912883 b!6912880) bm!628471))

(declare-fun m!7626784 () Bool)

(assert (=> b!6912874 m!7626784))

(declare-fun m!7626786 () Bool)

(assert (=> bm!628471 m!7626786))

(declare-fun m!7626788 () Bool)

(assert (=> bm!628472 m!7626788))

(declare-fun m!7626790 () Bool)

(assert (=> b!6912881 m!7626790))

(assert (=> b!6912781 d!2163616))

(declare-fun d!2163620 () Bool)

(assert (=> d!2163620 (= (get!23290 lt!2468989) (v!52943 lt!2468989))))

(assert (=> b!6912781 d!2163620))

(declare-fun bs!1845309 () Bool)

(declare-fun d!2163622 () Bool)

(assert (= bs!1845309 (and d!2163622 b!6912877)))

(declare-fun lambda!392923 () Int)

(assert (=> bs!1845309 (not (= lambda!392923 lambda!392916))))

(declare-fun bs!1845310 () Bool)

(assert (= bs!1845310 (and d!2163622 b!6912780)))

(assert (=> bs!1845310 (= (and (= s!14361 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= lt!2468983 r3!135)) (= lambda!392923 lambda!392901))))

(assert (=> bs!1845310 (not (= lambda!392923 lambda!392902))))

(declare-fun bs!1845311 () Bool)

(assert (= bs!1845311 (and d!2163622 b!6912781)))

(assert (=> bs!1845311 (not (= lambda!392923 lambda!392900))))

(declare-fun bs!1845312 () Bool)

(assert (= bs!1845312 (and d!2163622 b!6912875)))

(assert (=> bs!1845312 (not (= lambda!392923 lambda!392915))))

(assert (=> bs!1845311 (= lambda!392923 lambda!392899)))

(declare-fun bs!1845313 () Bool)

(assert (= bs!1845313 (and d!2163622 b!6912778)))

(assert (=> bs!1845313 (not (= lambda!392923 lambda!392904))))

(assert (=> bs!1845313 (= (and (= s!14361 lt!2468979) (= lt!2468983 r2!6280)) (= lambda!392923 lambda!392903))))

(assert (=> d!2163622 true))

(assert (=> d!2163622 true))

(assert (=> d!2163622 true))

(declare-fun lambda!392926 () Int)

(assert (=> bs!1845309 (= (and (= s!14361 (_1!37063 lt!2468980)) (= r1!6342 (regOne!34298 r1!6342)) (= lt!2468983 (regTwo!34298 r1!6342))) (= lambda!392926 lambda!392916))))

(assert (=> bs!1845310 (not (= lambda!392926 lambda!392901))))

(assert (=> bs!1845310 (= (and (= s!14361 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= lt!2468983 r3!135)) (= lambda!392926 lambda!392902))))

(declare-fun bs!1845314 () Bool)

(assert (= bs!1845314 d!2163622))

(assert (=> bs!1845314 (not (= lambda!392926 lambda!392923))))

(assert (=> bs!1845311 (= lambda!392926 lambda!392900)))

(assert (=> bs!1845312 (not (= lambda!392926 lambda!392915))))

(assert (=> bs!1845311 (not (= lambda!392926 lambda!392899))))

(assert (=> bs!1845313 (= (and (= s!14361 lt!2468979) (= lt!2468983 r2!6280)) (= lambda!392926 lambda!392904))))

(assert (=> bs!1845313 (not (= lambda!392926 lambda!392903))))

(assert (=> d!2163622 true))

(assert (=> d!2163622 true))

(assert (=> d!2163622 true))

(assert (=> d!2163622 (= (Exists!3901 lambda!392923) (Exists!3901 lambda!392926))))

(declare-fun lt!2469014 () Unit!160522)

(declare-fun choose!51488 (Regex!16893 Regex!16893 List!66650) Unit!160522)

(assert (=> d!2163622 (= lt!2469014 (choose!51488 r1!6342 lt!2468983 s!14361))))

(assert (=> d!2163622 (validRegex!8601 r1!6342)))

(assert (=> d!2163622 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r1!6342 lt!2468983 s!14361) lt!2469014)))

(declare-fun m!7626806 () Bool)

(assert (=> bs!1845314 m!7626806))

(declare-fun m!7626808 () Bool)

(assert (=> bs!1845314 m!7626808))

(declare-fun m!7626810 () Bool)

(assert (=> bs!1845314 m!7626810))

(assert (=> bs!1845314 m!7626736))

(assert (=> b!6912781 d!2163622))

(declare-fun b!6912970 () Bool)

(declare-fun e!4161848 () Bool)

(declare-fun lt!2469021 () Bool)

(assert (=> b!6912970 (= e!4161848 (not lt!2469021))))

(declare-fun b!6912971 () Bool)

(declare-fun res!2819324 () Bool)

(declare-fun e!4161844 () Bool)

(assert (=> b!6912971 (=> res!2819324 e!4161844)))

(declare-fun tail!12916 (List!66650) List!66650)

(assert (=> b!6912971 (= res!2819324 (not (isEmpty!38777 (tail!12916 (_1!37063 lt!2468980)))))))

(declare-fun b!6912972 () Bool)

(declare-fun res!2819322 () Bool)

(declare-fun e!4161846 () Bool)

(assert (=> b!6912972 (=> (not res!2819322) (not e!4161846))))

(declare-fun call!628483 () Bool)

(assert (=> b!6912972 (= res!2819322 (not call!628483))))

(declare-fun b!6912973 () Bool)

(declare-fun e!4161850 () Bool)

(assert (=> b!6912973 (= e!4161850 e!4161848)))

(declare-fun c!1283988 () Bool)

(assert (=> b!6912973 (= c!1283988 ((_ is EmptyLang!16893) r1!6342))))

(declare-fun b!6912974 () Bool)

(declare-fun e!4161849 () Bool)

(declare-fun nullable!6732 (Regex!16893) Bool)

(assert (=> b!6912974 (= e!4161849 (nullable!6732 r1!6342))))

(declare-fun b!6912976 () Bool)

(declare-fun head!13864 (List!66650) C!34056)

(assert (=> b!6912976 (= e!4161846 (= (head!13864 (_1!37063 lt!2468980)) (c!1283947 r1!6342)))))

(declare-fun b!6912977 () Bool)

(declare-fun res!2819320 () Bool)

(assert (=> b!6912977 (=> (not res!2819320) (not e!4161846))))

(assert (=> b!6912977 (= res!2819320 (isEmpty!38777 (tail!12916 (_1!37063 lt!2468980))))))

(declare-fun bm!628478 () Bool)

(assert (=> bm!628478 (= call!628483 (isEmpty!38777 (_1!37063 lt!2468980)))))

(declare-fun b!6912978 () Bool)

(declare-fun e!4161847 () Bool)

(declare-fun e!4161845 () Bool)

(assert (=> b!6912978 (= e!4161847 e!4161845)))

(declare-fun res!2819319 () Bool)

(assert (=> b!6912978 (=> (not res!2819319) (not e!4161845))))

(assert (=> b!6912978 (= res!2819319 (not lt!2469021))))

(declare-fun b!6912979 () Bool)

(declare-fun res!2819321 () Bool)

(assert (=> b!6912979 (=> res!2819321 e!4161847)))

(assert (=> b!6912979 (= res!2819321 (not ((_ is ElementMatch!16893) r1!6342)))))

(assert (=> b!6912979 (= e!4161848 e!4161847)))

(declare-fun b!6912975 () Bool)

(assert (=> b!6912975 (= e!4161850 (= lt!2469021 call!628483))))

(declare-fun d!2163628 () Bool)

(assert (=> d!2163628 e!4161850))

(declare-fun c!1283989 () Bool)

(assert (=> d!2163628 (= c!1283989 ((_ is EmptyExpr!16893) r1!6342))))

(assert (=> d!2163628 (= lt!2469021 e!4161849)))

(declare-fun c!1283987 () Bool)

(assert (=> d!2163628 (= c!1283987 (isEmpty!38777 (_1!37063 lt!2468980)))))

(assert (=> d!2163628 (validRegex!8601 r1!6342)))

(assert (=> d!2163628 (= (matchR!9038 r1!6342 (_1!37063 lt!2468980)) lt!2469021)))

(declare-fun b!6912980 () Bool)

(assert (=> b!6912980 (= e!4161844 (not (= (head!13864 (_1!37063 lt!2468980)) (c!1283947 r1!6342))))))

(declare-fun b!6912981 () Bool)

(declare-fun derivativeStep!5411 (Regex!16893 C!34056) Regex!16893)

(assert (=> b!6912981 (= e!4161849 (matchR!9038 (derivativeStep!5411 r1!6342 (head!13864 (_1!37063 lt!2468980))) (tail!12916 (_1!37063 lt!2468980))))))

(declare-fun b!6912982 () Bool)

(assert (=> b!6912982 (= e!4161845 e!4161844)))

(declare-fun res!2819317 () Bool)

(assert (=> b!6912982 (=> res!2819317 e!4161844)))

(assert (=> b!6912982 (= res!2819317 call!628483)))

(declare-fun b!6912983 () Bool)

(declare-fun res!2819318 () Bool)

(assert (=> b!6912983 (=> res!2819318 e!4161847)))

(assert (=> b!6912983 (= res!2819318 e!4161846)))

(declare-fun res!2819323 () Bool)

(assert (=> b!6912983 (=> (not res!2819323) (not e!4161846))))

(assert (=> b!6912983 (= res!2819323 lt!2469021)))

(assert (= (and d!2163628 c!1283987) b!6912974))

(assert (= (and d!2163628 (not c!1283987)) b!6912981))

(assert (= (and d!2163628 c!1283989) b!6912975))

(assert (= (and d!2163628 (not c!1283989)) b!6912973))

(assert (= (and b!6912973 c!1283988) b!6912970))

(assert (= (and b!6912973 (not c!1283988)) b!6912979))

(assert (= (and b!6912979 (not res!2819321)) b!6912983))

(assert (= (and b!6912983 res!2819323) b!6912972))

(assert (= (and b!6912972 res!2819322) b!6912977))

(assert (= (and b!6912977 res!2819320) b!6912976))

(assert (= (and b!6912983 (not res!2819318)) b!6912978))

(assert (= (and b!6912978 res!2819319) b!6912982))

(assert (= (and b!6912982 (not res!2819317)) b!6912971))

(assert (= (and b!6912971 (not res!2819324)) b!6912980))

(assert (= (or b!6912975 b!6912972 b!6912982) bm!628478))

(declare-fun m!7626818 () Bool)

(assert (=> b!6912981 m!7626818))

(assert (=> b!6912981 m!7626818))

(declare-fun m!7626820 () Bool)

(assert (=> b!6912981 m!7626820))

(declare-fun m!7626822 () Bool)

(assert (=> b!6912981 m!7626822))

(assert (=> b!6912981 m!7626820))

(assert (=> b!6912981 m!7626822))

(declare-fun m!7626824 () Bool)

(assert (=> b!6912981 m!7626824))

(declare-fun m!7626826 () Bool)

(assert (=> b!6912974 m!7626826))

(assert (=> b!6912977 m!7626822))

(assert (=> b!6912977 m!7626822))

(declare-fun m!7626828 () Bool)

(assert (=> b!6912977 m!7626828))

(assert (=> bm!628478 m!7626786))

(assert (=> b!6912971 m!7626822))

(assert (=> b!6912971 m!7626822))

(assert (=> b!6912971 m!7626828))

(assert (=> d!2163628 m!7626786))

(assert (=> d!2163628 m!7626736))

(assert (=> b!6912980 m!7626818))

(assert (=> b!6912976 m!7626818))

(assert (=> b!6912781 d!2163628))

(declare-fun d!2163634 () Bool)

(assert (=> d!2163634 (= (Exists!3901 lambda!392900) (choose!51487 lambda!392900))))

(declare-fun bs!1845327 () Bool)

(assert (= bs!1845327 d!2163634))

(declare-fun m!7626830 () Bool)

(assert (=> bs!1845327 m!7626830))

(assert (=> b!6912781 d!2163634))

(declare-fun bs!1845332 () Bool)

(declare-fun d!2163636 () Bool)

(assert (= bs!1845332 (and d!2163636 b!6912877)))

(declare-fun lambda!392934 () Int)

(assert (=> bs!1845332 (not (= lambda!392934 lambda!392916))))

(declare-fun bs!1845333 () Bool)

(assert (= bs!1845333 (and d!2163636 d!2163622)))

(assert (=> bs!1845333 (not (= lambda!392934 lambda!392926))))

(declare-fun bs!1845334 () Bool)

(assert (= bs!1845334 (and d!2163636 b!6912780)))

(assert (=> bs!1845334 (= (and (= s!14361 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= lt!2468983 r3!135)) (= lambda!392934 lambda!392901))))

(assert (=> bs!1845334 (not (= lambda!392934 lambda!392902))))

(assert (=> bs!1845333 (= lambda!392934 lambda!392923)))

(declare-fun bs!1845335 () Bool)

(assert (= bs!1845335 (and d!2163636 b!6912781)))

(assert (=> bs!1845335 (not (= lambda!392934 lambda!392900))))

(declare-fun bs!1845336 () Bool)

(assert (= bs!1845336 (and d!2163636 b!6912875)))

(assert (=> bs!1845336 (not (= lambda!392934 lambda!392915))))

(assert (=> bs!1845335 (= lambda!392934 lambda!392899)))

(declare-fun bs!1845337 () Bool)

(assert (= bs!1845337 (and d!2163636 b!6912778)))

(assert (=> bs!1845337 (not (= lambda!392934 lambda!392904))))

(assert (=> bs!1845337 (= (and (= s!14361 lt!2468979) (= lt!2468983 r2!6280)) (= lambda!392934 lambda!392903))))

(assert (=> d!2163636 true))

(assert (=> d!2163636 true))

(assert (=> d!2163636 true))

(assert (=> d!2163636 (= (isDefined!13375 (findConcatSeparation!3086 r1!6342 lt!2468983 Nil!66526 s!14361 s!14361)) (Exists!3901 lambda!392934))))

(declare-fun lt!2469028 () Unit!160522)

(declare-fun choose!51493 (Regex!16893 Regex!16893 List!66650) Unit!160522)

(assert (=> d!2163636 (= lt!2469028 (choose!51493 r1!6342 lt!2468983 s!14361))))

(assert (=> d!2163636 (validRegex!8601 r1!6342)))

(assert (=> d!2163636 (= (lemmaFindConcatSeparationEquivalentToExists!2848 r1!6342 lt!2468983 s!14361) lt!2469028)))

(declare-fun bs!1845338 () Bool)

(assert (= bs!1845338 d!2163636))

(declare-fun m!7626860 () Bool)

(assert (=> bs!1845338 m!7626860))

(assert (=> bs!1845338 m!7626770))

(declare-fun m!7626862 () Bool)

(assert (=> bs!1845338 m!7626862))

(declare-fun m!7626864 () Bool)

(assert (=> bs!1845338 m!7626864))

(assert (=> bs!1845338 m!7626770))

(assert (=> bs!1845338 m!7626736))

(assert (=> b!6912781 d!2163636))

(declare-fun d!2163648 () Bool)

(assert (=> d!2163648 (= (matchR!9038 lt!2468983 (_2!37063 lt!2468980)) (matchRSpec!3956 lt!2468983 (_2!37063 lt!2468980)))))

(declare-fun lt!2469029 () Unit!160522)

(assert (=> d!2163648 (= lt!2469029 (choose!51486 lt!2468983 (_2!37063 lt!2468980)))))

(assert (=> d!2163648 (validRegex!8601 lt!2468983)))

(assert (=> d!2163648 (= (mainMatchTheorem!3956 lt!2468983 (_2!37063 lt!2468980)) lt!2469029)))

(declare-fun bs!1845339 () Bool)

(assert (= bs!1845339 d!2163648))

(assert (=> bs!1845339 m!7626734))

(assert (=> bs!1845339 m!7626690))

(declare-fun m!7626866 () Bool)

(assert (=> bs!1845339 m!7626866))

(declare-fun m!7626868 () Bool)

(assert (=> bs!1845339 m!7626868))

(assert (=> b!6912780 d!2163648))

(declare-fun b!6913002 () Bool)

(declare-fun e!4161864 () Bool)

(declare-fun lt!2469030 () Bool)

(assert (=> b!6913002 (= e!4161864 (not lt!2469030))))

(declare-fun b!6913003 () Bool)

(declare-fun res!2819344 () Bool)

(declare-fun e!4161860 () Bool)

(assert (=> b!6913003 (=> res!2819344 e!4161860)))

(assert (=> b!6913003 (= res!2819344 (not (isEmpty!38777 (tail!12916 (_1!37063 lt!2469003)))))))

(declare-fun b!6913004 () Bool)

(declare-fun res!2819342 () Bool)

(declare-fun e!4161862 () Bool)

(assert (=> b!6913004 (=> (not res!2819342) (not e!4161862))))

(declare-fun call!628485 () Bool)

(assert (=> b!6913004 (= res!2819342 (not call!628485))))

(declare-fun b!6913005 () Bool)

(declare-fun e!4161866 () Bool)

(assert (=> b!6913005 (= e!4161866 e!4161864)))

(declare-fun c!1283994 () Bool)

(assert (=> b!6913005 (= c!1283994 ((_ is EmptyLang!16893) r2!6280))))

(declare-fun b!6913006 () Bool)

(declare-fun e!4161865 () Bool)

(assert (=> b!6913006 (= e!4161865 (nullable!6732 r2!6280))))

(declare-fun b!6913008 () Bool)

(assert (=> b!6913008 (= e!4161862 (= (head!13864 (_1!37063 lt!2469003)) (c!1283947 r2!6280)))))

(declare-fun b!6913009 () Bool)

(declare-fun res!2819340 () Bool)

(assert (=> b!6913009 (=> (not res!2819340) (not e!4161862))))

(assert (=> b!6913009 (= res!2819340 (isEmpty!38777 (tail!12916 (_1!37063 lt!2469003))))))

(declare-fun bm!628480 () Bool)

(assert (=> bm!628480 (= call!628485 (isEmpty!38777 (_1!37063 lt!2469003)))))

(declare-fun b!6913010 () Bool)

(declare-fun e!4161863 () Bool)

(declare-fun e!4161861 () Bool)

(assert (=> b!6913010 (= e!4161863 e!4161861)))

(declare-fun res!2819339 () Bool)

(assert (=> b!6913010 (=> (not res!2819339) (not e!4161861))))

(assert (=> b!6913010 (= res!2819339 (not lt!2469030))))

(declare-fun b!6913011 () Bool)

(declare-fun res!2819341 () Bool)

(assert (=> b!6913011 (=> res!2819341 e!4161863)))

(assert (=> b!6913011 (= res!2819341 (not ((_ is ElementMatch!16893) r2!6280)))))

(assert (=> b!6913011 (= e!4161864 e!4161863)))

(declare-fun b!6913007 () Bool)

(assert (=> b!6913007 (= e!4161866 (= lt!2469030 call!628485))))

(declare-fun d!2163650 () Bool)

(assert (=> d!2163650 e!4161866))

(declare-fun c!1283995 () Bool)

(assert (=> d!2163650 (= c!1283995 ((_ is EmptyExpr!16893) r2!6280))))

(assert (=> d!2163650 (= lt!2469030 e!4161865)))

(declare-fun c!1283993 () Bool)

(assert (=> d!2163650 (= c!1283993 (isEmpty!38777 (_1!37063 lt!2469003)))))

(assert (=> d!2163650 (validRegex!8601 r2!6280)))

(assert (=> d!2163650 (= (matchR!9038 r2!6280 (_1!37063 lt!2469003)) lt!2469030)))

(declare-fun b!6913012 () Bool)

(assert (=> b!6913012 (= e!4161860 (not (= (head!13864 (_1!37063 lt!2469003)) (c!1283947 r2!6280))))))

(declare-fun b!6913013 () Bool)

(assert (=> b!6913013 (= e!4161865 (matchR!9038 (derivativeStep!5411 r2!6280 (head!13864 (_1!37063 lt!2469003))) (tail!12916 (_1!37063 lt!2469003))))))

(declare-fun b!6913014 () Bool)

(assert (=> b!6913014 (= e!4161861 e!4161860)))

(declare-fun res!2819337 () Bool)

(assert (=> b!6913014 (=> res!2819337 e!4161860)))

(assert (=> b!6913014 (= res!2819337 call!628485)))

(declare-fun b!6913015 () Bool)

(declare-fun res!2819338 () Bool)

(assert (=> b!6913015 (=> res!2819338 e!4161863)))

(assert (=> b!6913015 (= res!2819338 e!4161862)))

(declare-fun res!2819343 () Bool)

(assert (=> b!6913015 (=> (not res!2819343) (not e!4161862))))

(assert (=> b!6913015 (= res!2819343 lt!2469030)))

(assert (= (and d!2163650 c!1283993) b!6913006))

(assert (= (and d!2163650 (not c!1283993)) b!6913013))

(assert (= (and d!2163650 c!1283995) b!6913007))

(assert (= (and d!2163650 (not c!1283995)) b!6913005))

(assert (= (and b!6913005 c!1283994) b!6913002))

(assert (= (and b!6913005 (not c!1283994)) b!6913011))

(assert (= (and b!6913011 (not res!2819341)) b!6913015))

(assert (= (and b!6913015 res!2819343) b!6913004))

(assert (= (and b!6913004 res!2819342) b!6913009))

(assert (= (and b!6913009 res!2819340) b!6913008))

(assert (= (and b!6913015 (not res!2819338)) b!6913010))

(assert (= (and b!6913010 res!2819339) b!6913014))

(assert (= (and b!6913014 (not res!2819337)) b!6913003))

(assert (= (and b!6913003 (not res!2819344)) b!6913012))

(assert (= (or b!6913007 b!6913004 b!6913014) bm!628480))

(declare-fun m!7626870 () Bool)

(assert (=> b!6913013 m!7626870))

(assert (=> b!6913013 m!7626870))

(declare-fun m!7626872 () Bool)

(assert (=> b!6913013 m!7626872))

(declare-fun m!7626874 () Bool)

(assert (=> b!6913013 m!7626874))

(assert (=> b!6913013 m!7626872))

(assert (=> b!6913013 m!7626874))

(declare-fun m!7626876 () Bool)

(assert (=> b!6913013 m!7626876))

(declare-fun m!7626878 () Bool)

(assert (=> b!6913006 m!7626878))

(assert (=> b!6913009 m!7626874))

(assert (=> b!6913009 m!7626874))

(declare-fun m!7626880 () Bool)

(assert (=> b!6913009 m!7626880))

(declare-fun m!7626882 () Bool)

(assert (=> bm!628480 m!7626882))

(assert (=> b!6913003 m!7626874))

(assert (=> b!6913003 m!7626874))

(assert (=> b!6913003 m!7626880))

(assert (=> d!2163650 m!7626882))

(assert (=> d!2163650 m!7626704))

(assert (=> b!6913012 m!7626870))

(assert (=> b!6913008 m!7626870))

(assert (=> b!6912780 d!2163650))

(declare-fun bs!1845340 () Bool)

(declare-fun d!2163652 () Bool)

(assert (= bs!1845340 (and d!2163652 b!6912877)))

(declare-fun lambda!392935 () Int)

(assert (=> bs!1845340 (not (= lambda!392935 lambda!392916))))

(declare-fun bs!1845341 () Bool)

(assert (= bs!1845341 (and d!2163652 d!2163622)))

(assert (=> bs!1845341 (not (= lambda!392935 lambda!392926))))

(declare-fun bs!1845342 () Bool)

(assert (= bs!1845342 (and d!2163652 b!6912780)))

(assert (=> bs!1845342 (not (= lambda!392935 lambda!392902))))

(assert (=> bs!1845341 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392935 lambda!392923))))

(declare-fun bs!1845343 () Bool)

(assert (= bs!1845343 (and d!2163652 b!6912781)))

(assert (=> bs!1845343 (not (= lambda!392935 lambda!392900))))

(declare-fun bs!1845344 () Bool)

(assert (= bs!1845344 (and d!2163652 b!6912875)))

(assert (=> bs!1845344 (not (= lambda!392935 lambda!392915))))

(assert (=> bs!1845343 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392935 lambda!392899))))

(declare-fun bs!1845345 () Bool)

(assert (= bs!1845345 (and d!2163652 d!2163636)))

(assert (=> bs!1845345 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392935 lambda!392934))))

(assert (=> bs!1845342 (= lambda!392935 lambda!392901)))

(declare-fun bs!1845346 () Bool)

(assert (= bs!1845346 (and d!2163652 b!6912778)))

(assert (=> bs!1845346 (not (= lambda!392935 lambda!392904))))

(assert (=> bs!1845346 (= (and (= (_2!37063 lt!2468980) lt!2468979) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392935 lambda!392903))))

(assert (=> d!2163652 true))

(assert (=> d!2163652 true))

(assert (=> d!2163652 true))

(declare-fun bs!1845347 () Bool)

(assert (= bs!1845347 d!2163652))

(declare-fun lambda!392936 () Int)

(assert (=> bs!1845347 (not (= lambda!392936 lambda!392935))))

(assert (=> bs!1845340 (= (and (= (_2!37063 lt!2468980) (_1!37063 lt!2468980)) (= r2!6280 (regOne!34298 r1!6342)) (= r3!135 (regTwo!34298 r1!6342))) (= lambda!392936 lambda!392916))))

(assert (=> bs!1845341 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392936 lambda!392926))))

(assert (=> bs!1845342 (= lambda!392936 lambda!392902)))

(assert (=> bs!1845341 (not (= lambda!392936 lambda!392923))))

(assert (=> bs!1845343 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392936 lambda!392900))))

(assert (=> bs!1845344 (not (= lambda!392936 lambda!392915))))

(assert (=> bs!1845343 (not (= lambda!392936 lambda!392899))))

(assert (=> bs!1845345 (not (= lambda!392936 lambda!392934))))

(assert (=> bs!1845342 (not (= lambda!392936 lambda!392901))))

(assert (=> bs!1845346 (= (and (= (_2!37063 lt!2468980) lt!2468979) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392936 lambda!392904))))

(assert (=> bs!1845346 (not (= lambda!392936 lambda!392903))))

(assert (=> d!2163652 true))

(assert (=> d!2163652 true))

(assert (=> d!2163652 true))

(assert (=> d!2163652 (= (Exists!3901 lambda!392935) (Exists!3901 lambda!392936))))

(declare-fun lt!2469031 () Unit!160522)

(assert (=> d!2163652 (= lt!2469031 (choose!51488 r2!6280 r3!135 (_2!37063 lt!2468980)))))

(assert (=> d!2163652 (validRegex!8601 r2!6280)))

(assert (=> d!2163652 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r2!6280 r3!135 (_2!37063 lt!2468980)) lt!2469031)))

(declare-fun m!7626884 () Bool)

(assert (=> bs!1845347 m!7626884))

(declare-fun m!7626886 () Bool)

(assert (=> bs!1845347 m!7626886))

(declare-fun m!7626888 () Bool)

(assert (=> bs!1845347 m!7626888))

(assert (=> bs!1845347 m!7626704))

(assert (=> b!6912780 d!2163652))

(declare-fun d!2163654 () Bool)

(assert (=> d!2163654 (= (get!23290 lt!2468991) (v!52943 lt!2468991))))

(assert (=> b!6912780 d!2163654))

(declare-fun d!2163656 () Bool)

(assert (=> d!2163656 (= (Exists!3901 lambda!392902) (choose!51487 lambda!392902))))

(declare-fun bs!1845348 () Bool)

(assert (= bs!1845348 d!2163656))

(declare-fun m!7626890 () Bool)

(assert (=> bs!1845348 m!7626890))

(assert (=> b!6912780 d!2163656))

(declare-fun b!6913097 () Bool)

(declare-fun res!2819385 () Bool)

(declare-fun e!4161916 () Bool)

(assert (=> b!6913097 (=> (not res!2819385) (not e!4161916))))

(declare-fun lt!2469048 () Option!16672)

(assert (=> b!6913097 (= res!2819385 (matchR!9038 r2!6280 (_1!37063 (get!23290 lt!2469048))))))

(declare-fun b!6913098 () Bool)

(declare-fun res!2819388 () Bool)

(assert (=> b!6913098 (=> (not res!2819388) (not e!4161916))))

(assert (=> b!6913098 (= res!2819388 (matchR!9038 r3!135 (_2!37063 (get!23290 lt!2469048))))))

(declare-fun b!6913099 () Bool)

(declare-fun e!4161917 () Bool)

(assert (=> b!6913099 (= e!4161917 (not (isDefined!13375 lt!2469048)))))

(declare-fun b!6913100 () Bool)

(declare-fun e!4161915 () Option!16672)

(declare-fun e!4161913 () Option!16672)

(assert (=> b!6913100 (= e!4161915 e!4161913)))

(declare-fun c!1284018 () Bool)

(assert (=> b!6913100 (= c!1284018 ((_ is Nil!66526) (_2!37063 lt!2468980)))))

(declare-fun b!6913102 () Bool)

(assert (=> b!6913102 (= e!4161916 (= (++!14946 (_1!37063 (get!23290 lt!2469048)) (_2!37063 (get!23290 lt!2469048))) (_2!37063 lt!2468980)))))

(declare-fun b!6913103 () Bool)

(declare-fun lt!2469050 () Unit!160522)

(declare-fun lt!2469049 () Unit!160522)

(assert (=> b!6913103 (= lt!2469050 lt!2469049)))

(assert (=> b!6913103 (= (++!14946 (++!14946 Nil!66526 (Cons!66526 (h!72974 (_2!37063 lt!2468980)) Nil!66526)) (t!380393 (_2!37063 lt!2468980))) (_2!37063 lt!2468980))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2819 (List!66650 C!34056 List!66650 List!66650) Unit!160522)

(assert (=> b!6913103 (= lt!2469049 (lemmaMoveElementToOtherListKeepsConcatEq!2819 Nil!66526 (h!72974 (_2!37063 lt!2468980)) (t!380393 (_2!37063 lt!2468980)) (_2!37063 lt!2468980)))))

(assert (=> b!6913103 (= e!4161913 (findConcatSeparation!3086 r2!6280 r3!135 (++!14946 Nil!66526 (Cons!66526 (h!72974 (_2!37063 lt!2468980)) Nil!66526)) (t!380393 (_2!37063 lt!2468980)) (_2!37063 lt!2468980)))))

(declare-fun b!6913104 () Bool)

(assert (=> b!6913104 (= e!4161915 (Some!16671 (tuple2!67521 Nil!66526 (_2!37063 lt!2468980))))))

(declare-fun b!6913105 () Bool)

(declare-fun e!4161914 () Bool)

(assert (=> b!6913105 (= e!4161914 (matchR!9038 r3!135 (_2!37063 lt!2468980)))))

(declare-fun b!6913101 () Bool)

(assert (=> b!6913101 (= e!4161913 None!16671)))

(declare-fun d!2163658 () Bool)

(assert (=> d!2163658 e!4161917))

(declare-fun res!2819387 () Bool)

(assert (=> d!2163658 (=> res!2819387 e!4161917)))

(assert (=> d!2163658 (= res!2819387 e!4161916)))

(declare-fun res!2819386 () Bool)

(assert (=> d!2163658 (=> (not res!2819386) (not e!4161916))))

(assert (=> d!2163658 (= res!2819386 (isDefined!13375 lt!2469048))))

(assert (=> d!2163658 (= lt!2469048 e!4161915)))

(declare-fun c!1284017 () Bool)

(assert (=> d!2163658 (= c!1284017 e!4161914)))

(declare-fun res!2819384 () Bool)

(assert (=> d!2163658 (=> (not res!2819384) (not e!4161914))))

(assert (=> d!2163658 (= res!2819384 (matchR!9038 r2!6280 Nil!66526))))

(assert (=> d!2163658 (validRegex!8601 r2!6280)))

(assert (=> d!2163658 (= (findConcatSeparation!3086 r2!6280 r3!135 Nil!66526 (_2!37063 lt!2468980) (_2!37063 lt!2468980)) lt!2469048)))

(assert (= (and d!2163658 res!2819384) b!6913105))

(assert (= (and d!2163658 c!1284017) b!6913104))

(assert (= (and d!2163658 (not c!1284017)) b!6913100))

(assert (= (and b!6913100 c!1284018) b!6913101))

(assert (= (and b!6913100 (not c!1284018)) b!6913103))

(assert (= (and d!2163658 res!2819386) b!6913097))

(assert (= (and b!6913097 res!2819385) b!6913098))

(assert (= (and b!6913098 res!2819388) b!6913102))

(assert (= (and d!2163658 (not res!2819387)) b!6913099))

(declare-fun m!7626936 () Bool)

(assert (=> b!6913099 m!7626936))

(declare-fun m!7626938 () Bool)

(assert (=> b!6913103 m!7626938))

(assert (=> b!6913103 m!7626938))

(declare-fun m!7626940 () Bool)

(assert (=> b!6913103 m!7626940))

(declare-fun m!7626942 () Bool)

(assert (=> b!6913103 m!7626942))

(assert (=> b!6913103 m!7626938))

(declare-fun m!7626944 () Bool)

(assert (=> b!6913103 m!7626944))

(declare-fun m!7626946 () Bool)

(assert (=> b!6913105 m!7626946))

(declare-fun m!7626948 () Bool)

(assert (=> b!6913102 m!7626948))

(declare-fun m!7626950 () Bool)

(assert (=> b!6913102 m!7626950))

(assert (=> d!2163658 m!7626936))

(declare-fun m!7626952 () Bool)

(assert (=> d!2163658 m!7626952))

(assert (=> d!2163658 m!7626704))

(assert (=> b!6913097 m!7626948))

(declare-fun m!7626954 () Bool)

(assert (=> b!6913097 m!7626954))

(assert (=> b!6913098 m!7626948))

(declare-fun m!7626956 () Bool)

(assert (=> b!6913098 m!7626956))

(assert (=> b!6912780 d!2163658))

(declare-fun d!2163666 () Bool)

(assert (=> d!2163666 (= (Exists!3901 lambda!392901) (choose!51487 lambda!392901))))

(declare-fun bs!1845383 () Bool)

(assert (= bs!1845383 d!2163666))

(declare-fun m!7626958 () Bool)

(assert (=> bs!1845383 m!7626958))

(assert (=> b!6912780 d!2163666))

(declare-fun bs!1845384 () Bool)

(declare-fun b!6913108 () Bool)

(assert (= bs!1845384 (and b!6913108 d!2163652)))

(declare-fun lambda!392941 () Int)

(assert (=> bs!1845384 (not (= lambda!392941 lambda!392936))))

(assert (=> bs!1845384 (not (= lambda!392941 lambda!392935))))

(declare-fun bs!1845385 () Bool)

(assert (= bs!1845385 (and b!6913108 b!6912877)))

(assert (=> bs!1845385 (not (= lambda!392941 lambda!392916))))

(declare-fun bs!1845386 () Bool)

(assert (= bs!1845386 (and b!6913108 d!2163622)))

(assert (=> bs!1845386 (not (= lambda!392941 lambda!392926))))

(declare-fun bs!1845387 () Bool)

(assert (= bs!1845387 (and b!6913108 b!6912780)))

(assert (=> bs!1845387 (not (= lambda!392941 lambda!392902))))

(assert (=> bs!1845386 (not (= lambda!392941 lambda!392923))))

(declare-fun bs!1845388 () Bool)

(assert (= bs!1845388 (and b!6913108 b!6912781)))

(assert (=> bs!1845388 (not (= lambda!392941 lambda!392900))))

(declare-fun bs!1845389 () Bool)

(assert (= bs!1845389 (and b!6913108 b!6912875)))

(assert (=> bs!1845389 (= (and (= (_2!37063 lt!2468980) (_1!37063 lt!2468980)) (= (reg!17222 lt!2468983) (reg!17222 r1!6342)) (= lt!2468983 r1!6342)) (= lambda!392941 lambda!392915))))

(assert (=> bs!1845388 (not (= lambda!392941 lambda!392899))))

(declare-fun bs!1845391 () Bool)

(assert (= bs!1845391 (and b!6913108 d!2163636)))

(assert (=> bs!1845391 (not (= lambda!392941 lambda!392934))))

(assert (=> bs!1845387 (not (= lambda!392941 lambda!392901))))

(declare-fun bs!1845393 () Bool)

(assert (= bs!1845393 (and b!6913108 b!6912778)))

(assert (=> bs!1845393 (not (= lambda!392941 lambda!392904))))

(assert (=> bs!1845393 (not (= lambda!392941 lambda!392903))))

(assert (=> b!6913108 true))

(assert (=> b!6913108 true))

(declare-fun bs!1845394 () Bool)

(declare-fun b!6913110 () Bool)

(assert (= bs!1845394 (and b!6913110 b!6913108)))

(declare-fun lambda!392942 () Int)

(assert (=> bs!1845394 (not (= lambda!392942 lambda!392941))))

(declare-fun bs!1845395 () Bool)

(assert (= bs!1845395 (and b!6913110 d!2163652)))

(assert (=> bs!1845395 (= (and (= (regOne!34298 lt!2468983) r2!6280) (= (regTwo!34298 lt!2468983) r3!135)) (= lambda!392942 lambda!392936))))

(assert (=> bs!1845395 (not (= lambda!392942 lambda!392935))))

(declare-fun bs!1845396 () Bool)

(assert (= bs!1845396 (and b!6913110 b!6912877)))

(assert (=> bs!1845396 (= (and (= (_2!37063 lt!2468980) (_1!37063 lt!2468980)) (= (regOne!34298 lt!2468983) (regOne!34298 r1!6342)) (= (regTwo!34298 lt!2468983) (regTwo!34298 r1!6342))) (= lambda!392942 lambda!392916))))

(declare-fun bs!1845397 () Bool)

(assert (= bs!1845397 (and b!6913110 d!2163622)))

(assert (=> bs!1845397 (= (and (= (_2!37063 lt!2468980) s!14361) (= (regOne!34298 lt!2468983) r1!6342) (= (regTwo!34298 lt!2468983) lt!2468983)) (= lambda!392942 lambda!392926))))

(declare-fun bs!1845398 () Bool)

(assert (= bs!1845398 (and b!6913110 b!6912780)))

(assert (=> bs!1845398 (= (and (= (regOne!34298 lt!2468983) r2!6280) (= (regTwo!34298 lt!2468983) r3!135)) (= lambda!392942 lambda!392902))))

(assert (=> bs!1845397 (not (= lambda!392942 lambda!392923))))

(declare-fun bs!1845399 () Bool)

(assert (= bs!1845399 (and b!6913110 b!6912781)))

(assert (=> bs!1845399 (= (and (= (_2!37063 lt!2468980) s!14361) (= (regOne!34298 lt!2468983) r1!6342) (= (regTwo!34298 lt!2468983) lt!2468983)) (= lambda!392942 lambda!392900))))

(declare-fun bs!1845400 () Bool)

(assert (= bs!1845400 (and b!6913110 b!6912875)))

(assert (=> bs!1845400 (not (= lambda!392942 lambda!392915))))

(assert (=> bs!1845399 (not (= lambda!392942 lambda!392899))))

(declare-fun bs!1845401 () Bool)

(assert (= bs!1845401 (and b!6913110 d!2163636)))

(assert (=> bs!1845401 (not (= lambda!392942 lambda!392934))))

(assert (=> bs!1845398 (not (= lambda!392942 lambda!392901))))

(declare-fun bs!1845402 () Bool)

(assert (= bs!1845402 (and b!6913110 b!6912778)))

(assert (=> bs!1845402 (= (and (= (_2!37063 lt!2468980) lt!2468979) (= (regOne!34298 lt!2468983) r1!6342) (= (regTwo!34298 lt!2468983) r2!6280)) (= lambda!392942 lambda!392904))))

(assert (=> bs!1845402 (not (= lambda!392942 lambda!392903))))

(assert (=> b!6913110 true))

(assert (=> b!6913110 true))

(declare-fun b!6913106 () Bool)

(declare-fun c!1284021 () Bool)

(assert (=> b!6913106 (= c!1284021 ((_ is ElementMatch!16893) lt!2468983))))

(declare-fun e!4161921 () Bool)

(declare-fun e!4161918 () Bool)

(assert (=> b!6913106 (= e!4161921 e!4161918)))

(declare-fun b!6913107 () Bool)

(declare-fun e!4161922 () Bool)

(assert (=> b!6913107 (= e!4161922 (matchRSpec!3956 (regTwo!34299 lt!2468983) (_2!37063 lt!2468980)))))

(declare-fun e!4161919 () Bool)

(declare-fun call!628491 () Bool)

(assert (=> b!6913108 (= e!4161919 call!628491)))

(declare-fun bm!628486 () Bool)

(declare-fun call!628492 () Bool)

(assert (=> bm!628486 (= call!628492 (isEmpty!38777 (_2!37063 lt!2468980)))))

(declare-fun d!2163668 () Bool)

(declare-fun c!1284022 () Bool)

(assert (=> d!2163668 (= c!1284022 ((_ is EmptyExpr!16893) lt!2468983))))

(declare-fun e!4161923 () Bool)

(assert (=> d!2163668 (= (matchRSpec!3956 lt!2468983 (_2!37063 lt!2468980)) e!4161923)))

(declare-fun b!6913109 () Bool)

(declare-fun c!1284019 () Bool)

(assert (=> b!6913109 (= c!1284019 ((_ is Union!16893) lt!2468983))))

(declare-fun e!4161924 () Bool)

(assert (=> b!6913109 (= e!4161918 e!4161924)))

(declare-fun bm!628487 () Bool)

(declare-fun c!1284020 () Bool)

(assert (=> bm!628487 (= call!628491 (Exists!3901 (ite c!1284020 lambda!392941 lambda!392942)))))

(declare-fun e!4161920 () Bool)

(assert (=> b!6913110 (= e!4161920 call!628491)))

(declare-fun b!6913111 () Bool)

(assert (=> b!6913111 (= e!4161918 (= (_2!37063 lt!2468980) (Cons!66526 (c!1283947 lt!2468983) Nil!66526)))))

(declare-fun b!6913112 () Bool)

(assert (=> b!6913112 (= e!4161923 e!4161921)))

(declare-fun res!2819389 () Bool)

(assert (=> b!6913112 (= res!2819389 (not ((_ is EmptyLang!16893) lt!2468983)))))

(assert (=> b!6913112 (=> (not res!2819389) (not e!4161921))))

(declare-fun b!6913113 () Bool)

(declare-fun res!2819390 () Bool)

(assert (=> b!6913113 (=> res!2819390 e!4161919)))

(assert (=> b!6913113 (= res!2819390 call!628492)))

(assert (=> b!6913113 (= e!4161920 e!4161919)))

(declare-fun b!6913114 () Bool)

(assert (=> b!6913114 (= e!4161924 e!4161922)))

(declare-fun res!2819391 () Bool)

(assert (=> b!6913114 (= res!2819391 (matchRSpec!3956 (regOne!34299 lt!2468983) (_2!37063 lt!2468980)))))

(assert (=> b!6913114 (=> res!2819391 e!4161922)))

(declare-fun b!6913115 () Bool)

(assert (=> b!6913115 (= e!4161924 e!4161920)))

(assert (=> b!6913115 (= c!1284020 ((_ is Star!16893) lt!2468983))))

(declare-fun b!6913116 () Bool)

(assert (=> b!6913116 (= e!4161923 call!628492)))

(assert (= (and d!2163668 c!1284022) b!6913116))

(assert (= (and d!2163668 (not c!1284022)) b!6913112))

(assert (= (and b!6913112 res!2819389) b!6913106))

(assert (= (and b!6913106 c!1284021) b!6913111))

(assert (= (and b!6913106 (not c!1284021)) b!6913109))

(assert (= (and b!6913109 c!1284019) b!6913114))

(assert (= (and b!6913109 (not c!1284019)) b!6913115))

(assert (= (and b!6913114 (not res!2819391)) b!6913107))

(assert (= (and b!6913115 c!1284020) b!6913113))

(assert (= (and b!6913115 (not c!1284020)) b!6913110))

(assert (= (and b!6913113 (not res!2819390)) b!6913108))

(assert (= (or b!6913108 b!6913110) bm!628487))

(assert (= (or b!6913116 b!6913113) bm!628486))

(declare-fun m!7626978 () Bool)

(assert (=> b!6913107 m!7626978))

(declare-fun m!7626980 () Bool)

(assert (=> bm!628486 m!7626980))

(declare-fun m!7626982 () Bool)

(assert (=> bm!628487 m!7626982))

(declare-fun m!7626984 () Bool)

(assert (=> b!6913114 m!7626984))

(assert (=> b!6912780 d!2163668))

(declare-fun d!2163678 () Bool)

(declare-fun isEmpty!38779 (Option!16672) Bool)

(assert (=> d!2163678 (= (isDefined!13375 lt!2468991) (not (isEmpty!38779 lt!2468991)))))

(declare-fun bs!1845403 () Bool)

(assert (= bs!1845403 d!2163678))

(declare-fun m!7626986 () Bool)

(assert (=> bs!1845403 m!7626986))

(assert (=> b!6912780 d!2163678))

(declare-fun bs!1845404 () Bool)

(declare-fun d!2163680 () Bool)

(assert (= bs!1845404 (and d!2163680 b!6913108)))

(declare-fun lambda!392943 () Int)

(assert (=> bs!1845404 (not (= lambda!392943 lambda!392941))))

(declare-fun bs!1845405 () Bool)

(assert (= bs!1845405 (and d!2163680 d!2163652)))

(assert (=> bs!1845405 (not (= lambda!392943 lambda!392936))))

(declare-fun bs!1845406 () Bool)

(assert (= bs!1845406 (and d!2163680 b!6912877)))

(assert (=> bs!1845406 (not (= lambda!392943 lambda!392916))))

(declare-fun bs!1845407 () Bool)

(assert (= bs!1845407 (and d!2163680 d!2163622)))

(assert (=> bs!1845407 (not (= lambda!392943 lambda!392926))))

(declare-fun bs!1845408 () Bool)

(assert (= bs!1845408 (and d!2163680 b!6912780)))

(assert (=> bs!1845408 (not (= lambda!392943 lambda!392902))))

(assert (=> bs!1845407 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392943 lambda!392923))))

(declare-fun bs!1845409 () Bool)

(assert (= bs!1845409 (and d!2163680 b!6912781)))

(assert (=> bs!1845409 (not (= lambda!392943 lambda!392900))))

(declare-fun bs!1845410 () Bool)

(assert (= bs!1845410 (and d!2163680 b!6913110)))

(assert (=> bs!1845410 (not (= lambda!392943 lambda!392942))))

(assert (=> bs!1845405 (= lambda!392943 lambda!392935)))

(declare-fun bs!1845411 () Bool)

(assert (= bs!1845411 (and d!2163680 b!6912875)))

(assert (=> bs!1845411 (not (= lambda!392943 lambda!392915))))

(assert (=> bs!1845409 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392943 lambda!392899))))

(declare-fun bs!1845412 () Bool)

(assert (= bs!1845412 (and d!2163680 d!2163636)))

(assert (=> bs!1845412 (= (and (= (_2!37063 lt!2468980) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468983)) (= lambda!392943 lambda!392934))))

(assert (=> bs!1845408 (= lambda!392943 lambda!392901)))

(declare-fun bs!1845413 () Bool)

(assert (= bs!1845413 (and d!2163680 b!6912778)))

(assert (=> bs!1845413 (not (= lambda!392943 lambda!392904))))

(assert (=> bs!1845413 (= (and (= (_2!37063 lt!2468980) lt!2468979) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!392943 lambda!392903))))

(assert (=> d!2163680 true))

(assert (=> d!2163680 true))

(assert (=> d!2163680 true))

(assert (=> d!2163680 (= (isDefined!13375 (findConcatSeparation!3086 r2!6280 r3!135 Nil!66526 (_2!37063 lt!2468980) (_2!37063 lt!2468980))) (Exists!3901 lambda!392943))))

(declare-fun lt!2469054 () Unit!160522)

(assert (=> d!2163680 (= lt!2469054 (choose!51493 r2!6280 r3!135 (_2!37063 lt!2468980)))))

(assert (=> d!2163680 (validRegex!8601 r2!6280)))

(assert (=> d!2163680 (= (lemmaFindConcatSeparationEquivalentToExists!2848 r2!6280 r3!135 (_2!37063 lt!2468980)) lt!2469054)))

(declare-fun bs!1845414 () Bool)

(assert (= bs!1845414 d!2163680))

(declare-fun m!7626990 () Bool)

(assert (=> bs!1845414 m!7626990))

(assert (=> bs!1845414 m!7626698))

(declare-fun m!7626996 () Bool)

(assert (=> bs!1845414 m!7626996))

(declare-fun m!7626998 () Bool)

(assert (=> bs!1845414 m!7626998))

(assert (=> bs!1845414 m!7626698))

(assert (=> bs!1845414 m!7626704))

(assert (=> b!6912780 d!2163680))

(declare-fun b!6913205 () Bool)

(declare-fun e!4161993 () Bool)

(declare-fun e!4161992 () Bool)

(assert (=> b!6913205 (= e!4161993 e!4161992)))

(declare-fun c!1284044 () Bool)

(assert (=> b!6913205 (= c!1284044 ((_ is Union!16893) r1!6342))))

(declare-fun c!1284045 () Bool)

(declare-fun bm!628512 () Bool)

(declare-fun call!628518 () Bool)

(assert (=> bm!628512 (= call!628518 (validRegex!8601 (ite c!1284045 (reg!17222 r1!6342) (ite c!1284044 (regTwo!34299 r1!6342) (regOne!34298 r1!6342)))))))

(declare-fun d!2163684 () Bool)

(declare-fun res!2819438 () Bool)

(declare-fun e!4161989 () Bool)

(assert (=> d!2163684 (=> res!2819438 e!4161989)))

(assert (=> d!2163684 (= res!2819438 ((_ is ElementMatch!16893) r1!6342))))

(assert (=> d!2163684 (= (validRegex!8601 r1!6342) e!4161989)))

(declare-fun bm!628513 () Bool)

(declare-fun call!628519 () Bool)

(assert (=> bm!628513 (= call!628519 (validRegex!8601 (ite c!1284044 (regOne!34299 r1!6342) (regTwo!34298 r1!6342))))))

(declare-fun b!6913206 () Bool)

(declare-fun res!2819439 () Bool)

(declare-fun e!4161988 () Bool)

(assert (=> b!6913206 (=> res!2819439 e!4161988)))

(assert (=> b!6913206 (= res!2819439 (not ((_ is Concat!25738) r1!6342)))))

(assert (=> b!6913206 (= e!4161992 e!4161988)))

(declare-fun b!6913207 () Bool)

(declare-fun e!4161994 () Bool)

(assert (=> b!6913207 (= e!4161994 call!628519)))

(declare-fun b!6913208 () Bool)

(declare-fun res!2819442 () Bool)

(declare-fun e!4161990 () Bool)

(assert (=> b!6913208 (=> (not res!2819442) (not e!4161990))))

(assert (=> b!6913208 (= res!2819442 call!628519)))

(assert (=> b!6913208 (= e!4161992 e!4161990)))

(declare-fun bm!628514 () Bool)

(declare-fun call!628517 () Bool)

(assert (=> bm!628514 (= call!628517 call!628518)))

(declare-fun b!6913209 () Bool)

(declare-fun e!4161991 () Bool)

(assert (=> b!6913209 (= e!4161993 e!4161991)))

(declare-fun res!2819440 () Bool)

(assert (=> b!6913209 (= res!2819440 (not (nullable!6732 (reg!17222 r1!6342))))))

(assert (=> b!6913209 (=> (not res!2819440) (not e!4161991))))

(declare-fun b!6913210 () Bool)

(assert (=> b!6913210 (= e!4161991 call!628518)))

(declare-fun b!6913211 () Bool)

(assert (=> b!6913211 (= e!4161989 e!4161993)))

(assert (=> b!6913211 (= c!1284045 ((_ is Star!16893) r1!6342))))

(declare-fun b!6913212 () Bool)

(assert (=> b!6913212 (= e!4161988 e!4161994)))

(declare-fun res!2819441 () Bool)

(assert (=> b!6913212 (=> (not res!2819441) (not e!4161994))))

(assert (=> b!6913212 (= res!2819441 call!628517)))

(declare-fun b!6913213 () Bool)

(assert (=> b!6913213 (= e!4161990 call!628517)))

(assert (= (and d!2163684 (not res!2819438)) b!6913211))

(assert (= (and b!6913211 c!1284045) b!6913209))

(assert (= (and b!6913211 (not c!1284045)) b!6913205))

(assert (= (and b!6913209 res!2819440) b!6913210))

(assert (= (and b!6913205 c!1284044) b!6913208))

(assert (= (and b!6913205 (not c!1284044)) b!6913206))

(assert (= (and b!6913208 res!2819442) b!6913213))

(assert (= (and b!6913206 (not res!2819439)) b!6913212))

(assert (= (and b!6913212 res!2819441) b!6913207))

(assert (= (or b!6913208 b!6913207) bm!628513))

(assert (= (or b!6913213 b!6913212) bm!628514))

(assert (= (or b!6913210 bm!628514) bm!628512))

(declare-fun m!7627012 () Bool)

(assert (=> bm!628512 m!7627012))

(declare-fun m!7627014 () Bool)

(assert (=> bm!628513 m!7627014))

(declare-fun m!7627016 () Bool)

(assert (=> b!6913209 m!7627016))

(assert (=> start!665298 d!2163684))

(declare-fun b!6913214 () Bool)

(declare-fun e!4162000 () Bool)

(declare-fun e!4161999 () Bool)

(assert (=> b!6913214 (= e!4162000 e!4161999)))

(declare-fun c!1284046 () Bool)

(assert (=> b!6913214 (= c!1284046 ((_ is Union!16893) r3!135))))

(declare-fun call!628521 () Bool)

(declare-fun bm!628515 () Bool)

(declare-fun c!1284047 () Bool)

(assert (=> bm!628515 (= call!628521 (validRegex!8601 (ite c!1284047 (reg!17222 r3!135) (ite c!1284046 (regTwo!34299 r3!135) (regOne!34298 r3!135)))))))

(declare-fun d!2163690 () Bool)

(declare-fun res!2819443 () Bool)

(declare-fun e!4161996 () Bool)

(assert (=> d!2163690 (=> res!2819443 e!4161996)))

(assert (=> d!2163690 (= res!2819443 ((_ is ElementMatch!16893) r3!135))))

(assert (=> d!2163690 (= (validRegex!8601 r3!135) e!4161996)))

(declare-fun bm!628516 () Bool)

(declare-fun call!628522 () Bool)

(assert (=> bm!628516 (= call!628522 (validRegex!8601 (ite c!1284046 (regOne!34299 r3!135) (regTwo!34298 r3!135))))))

(declare-fun b!6913215 () Bool)

(declare-fun res!2819444 () Bool)

(declare-fun e!4161995 () Bool)

(assert (=> b!6913215 (=> res!2819444 e!4161995)))

(assert (=> b!6913215 (= res!2819444 (not ((_ is Concat!25738) r3!135)))))

(assert (=> b!6913215 (= e!4161999 e!4161995)))

(declare-fun b!6913216 () Bool)

(declare-fun e!4162001 () Bool)

(assert (=> b!6913216 (= e!4162001 call!628522)))

(declare-fun b!6913217 () Bool)

(declare-fun res!2819447 () Bool)

(declare-fun e!4161997 () Bool)

(assert (=> b!6913217 (=> (not res!2819447) (not e!4161997))))

(assert (=> b!6913217 (= res!2819447 call!628522)))

(assert (=> b!6913217 (= e!4161999 e!4161997)))

(declare-fun bm!628517 () Bool)

(declare-fun call!628520 () Bool)

(assert (=> bm!628517 (= call!628520 call!628521)))

(declare-fun b!6913218 () Bool)

(declare-fun e!4161998 () Bool)

(assert (=> b!6913218 (= e!4162000 e!4161998)))

(declare-fun res!2819445 () Bool)

(assert (=> b!6913218 (= res!2819445 (not (nullable!6732 (reg!17222 r3!135))))))

(assert (=> b!6913218 (=> (not res!2819445) (not e!4161998))))

(declare-fun b!6913219 () Bool)

(assert (=> b!6913219 (= e!4161998 call!628521)))

(declare-fun b!6913220 () Bool)

(assert (=> b!6913220 (= e!4161996 e!4162000)))

(assert (=> b!6913220 (= c!1284047 ((_ is Star!16893) r3!135))))

(declare-fun b!6913221 () Bool)

(assert (=> b!6913221 (= e!4161995 e!4162001)))

(declare-fun res!2819446 () Bool)

(assert (=> b!6913221 (=> (not res!2819446) (not e!4162001))))

(assert (=> b!6913221 (= res!2819446 call!628520)))

(declare-fun b!6913222 () Bool)

(assert (=> b!6913222 (= e!4161997 call!628520)))

(assert (= (and d!2163690 (not res!2819443)) b!6913220))

(assert (= (and b!6913220 c!1284047) b!6913218))

(assert (= (and b!6913220 (not c!1284047)) b!6913214))

(assert (= (and b!6913218 res!2819445) b!6913219))

(assert (= (and b!6913214 c!1284046) b!6913217))

(assert (= (and b!6913214 (not c!1284046)) b!6913215))

(assert (= (and b!6913217 res!2819447) b!6913222))

(assert (= (and b!6913215 (not res!2819444)) b!6913221))

(assert (= (and b!6913221 res!2819446) b!6913216))

(assert (= (or b!6913217 b!6913216) bm!628516))

(assert (= (or b!6913222 b!6913221) bm!628517))

(assert (= (or b!6913219 bm!628517) bm!628515))

(declare-fun m!7627026 () Bool)

(assert (=> bm!628515 m!7627026))

(declare-fun m!7627028 () Bool)

(assert (=> bm!628516 m!7627028))

(declare-fun m!7627030 () Bool)

(assert (=> b!6913218 m!7627030))

(assert (=> b!6912782 d!2163690))

(declare-fun b!6913223 () Bool)

(declare-fun e!4162007 () Bool)

(declare-fun e!4162006 () Bool)

(assert (=> b!6913223 (= e!4162007 e!4162006)))

(declare-fun c!1284048 () Bool)

(assert (=> b!6913223 (= c!1284048 ((_ is Union!16893) r2!6280))))

(declare-fun bm!628518 () Bool)

(declare-fun c!1284049 () Bool)

(declare-fun call!628524 () Bool)

(assert (=> bm!628518 (= call!628524 (validRegex!8601 (ite c!1284049 (reg!17222 r2!6280) (ite c!1284048 (regTwo!34299 r2!6280) (regOne!34298 r2!6280)))))))

(declare-fun d!2163694 () Bool)

(declare-fun res!2819448 () Bool)

(declare-fun e!4162003 () Bool)

(assert (=> d!2163694 (=> res!2819448 e!4162003)))

(assert (=> d!2163694 (= res!2819448 ((_ is ElementMatch!16893) r2!6280))))

(assert (=> d!2163694 (= (validRegex!8601 r2!6280) e!4162003)))

(declare-fun bm!628519 () Bool)

(declare-fun call!628525 () Bool)

(assert (=> bm!628519 (= call!628525 (validRegex!8601 (ite c!1284048 (regOne!34299 r2!6280) (regTwo!34298 r2!6280))))))

(declare-fun b!6913224 () Bool)

(declare-fun res!2819449 () Bool)

(declare-fun e!4162002 () Bool)

(assert (=> b!6913224 (=> res!2819449 e!4162002)))

(assert (=> b!6913224 (= res!2819449 (not ((_ is Concat!25738) r2!6280)))))

(assert (=> b!6913224 (= e!4162006 e!4162002)))

(declare-fun b!6913225 () Bool)

(declare-fun e!4162008 () Bool)

(assert (=> b!6913225 (= e!4162008 call!628525)))

(declare-fun b!6913226 () Bool)

(declare-fun res!2819452 () Bool)

(declare-fun e!4162004 () Bool)

(assert (=> b!6913226 (=> (not res!2819452) (not e!4162004))))

(assert (=> b!6913226 (= res!2819452 call!628525)))

(assert (=> b!6913226 (= e!4162006 e!4162004)))

(declare-fun bm!628520 () Bool)

(declare-fun call!628523 () Bool)

(assert (=> bm!628520 (= call!628523 call!628524)))

(declare-fun b!6913227 () Bool)

(declare-fun e!4162005 () Bool)

(assert (=> b!6913227 (= e!4162007 e!4162005)))

(declare-fun res!2819450 () Bool)

(assert (=> b!6913227 (= res!2819450 (not (nullable!6732 (reg!17222 r2!6280))))))

(assert (=> b!6913227 (=> (not res!2819450) (not e!4162005))))

(declare-fun b!6913228 () Bool)

(assert (=> b!6913228 (= e!4162005 call!628524)))

(declare-fun b!6913229 () Bool)

(assert (=> b!6913229 (= e!4162003 e!4162007)))

(assert (=> b!6913229 (= c!1284049 ((_ is Star!16893) r2!6280))))

(declare-fun b!6913230 () Bool)

(assert (=> b!6913230 (= e!4162002 e!4162008)))

(declare-fun res!2819451 () Bool)

(assert (=> b!6913230 (=> (not res!2819451) (not e!4162008))))

(assert (=> b!6913230 (= res!2819451 call!628523)))

(declare-fun b!6913231 () Bool)

(assert (=> b!6913231 (= e!4162004 call!628523)))

(assert (= (and d!2163694 (not res!2819448)) b!6913229))

(assert (= (and b!6913229 c!1284049) b!6913227))

(assert (= (and b!6913229 (not c!1284049)) b!6913223))

(assert (= (and b!6913227 res!2819450) b!6913228))

(assert (= (and b!6913223 c!1284048) b!6913226))

(assert (= (and b!6913223 (not c!1284048)) b!6913224))

(assert (= (and b!6913226 res!2819452) b!6913231))

(assert (= (and b!6913224 (not res!2819449)) b!6913230))

(assert (= (and b!6913230 res!2819451) b!6913225))

(assert (= (or b!6913226 b!6913225) bm!628519))

(assert (= (or b!6913231 b!6913230) bm!628520))

(assert (= (or b!6913228 bm!628520) bm!628518))

(declare-fun m!7627032 () Bool)

(assert (=> bm!628518 m!7627032))

(declare-fun m!7627034 () Bool)

(assert (=> bm!628519 m!7627034))

(declare-fun m!7627036 () Bool)

(assert (=> b!6913227 m!7627036))

(assert (=> b!6912765 d!2163694))

(declare-fun bs!1845438 () Bool)

(declare-fun b!6913234 () Bool)

(assert (= bs!1845438 (and b!6913234 b!6913108)))

(declare-fun lambda!392946 () Int)

(assert (=> bs!1845438 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (reg!17222 lt!2469002) (reg!17222 lt!2468983)) (= lt!2469002 lt!2468983)) (= lambda!392946 lambda!392941))))

(declare-fun bs!1845439 () Bool)

(assert (= bs!1845439 (and b!6913234 d!2163680)))

(assert (=> bs!1845439 (not (= lambda!392946 lambda!392943))))

(declare-fun bs!1845440 () Bool)

(assert (= bs!1845440 (and b!6913234 d!2163652)))

(assert (=> bs!1845440 (not (= lambda!392946 lambda!392936))))

(declare-fun bs!1845441 () Bool)

(assert (= bs!1845441 (and b!6913234 b!6912877)))

(assert (=> bs!1845441 (not (= lambda!392946 lambda!392916))))

(declare-fun bs!1845442 () Bool)

(assert (= bs!1845442 (and b!6913234 d!2163622)))

(assert (=> bs!1845442 (not (= lambda!392946 lambda!392926))))

(declare-fun bs!1845443 () Bool)

(assert (= bs!1845443 (and b!6913234 b!6912780)))

(assert (=> bs!1845443 (not (= lambda!392946 lambda!392902))))

(assert (=> bs!1845442 (not (= lambda!392946 lambda!392923))))

(declare-fun bs!1845444 () Bool)

(assert (= bs!1845444 (and b!6913234 b!6912781)))

(assert (=> bs!1845444 (not (= lambda!392946 lambda!392900))))

(declare-fun bs!1845445 () Bool)

(assert (= bs!1845445 (and b!6913234 b!6913110)))

(assert (=> bs!1845445 (not (= lambda!392946 lambda!392942))))

(assert (=> bs!1845440 (not (= lambda!392946 lambda!392935))))

(declare-fun bs!1845446 () Bool)

(assert (= bs!1845446 (and b!6913234 b!6912875)))

(assert (=> bs!1845446 (= (and (= s!14361 (_1!37063 lt!2468980)) (= (reg!17222 lt!2469002) (reg!17222 r1!6342)) (= lt!2469002 r1!6342)) (= lambda!392946 lambda!392915))))

(assert (=> bs!1845444 (not (= lambda!392946 lambda!392899))))

(declare-fun bs!1845447 () Bool)

(assert (= bs!1845447 (and b!6913234 d!2163636)))

(assert (=> bs!1845447 (not (= lambda!392946 lambda!392934))))

(assert (=> bs!1845443 (not (= lambda!392946 lambda!392901))))

(declare-fun bs!1845448 () Bool)

(assert (= bs!1845448 (and b!6913234 b!6912778)))

(assert (=> bs!1845448 (not (= lambda!392946 lambda!392904))))

(assert (=> bs!1845448 (not (= lambda!392946 lambda!392903))))

(assert (=> b!6913234 true))

(assert (=> b!6913234 true))

(declare-fun bs!1845449 () Bool)

(declare-fun b!6913236 () Bool)

(assert (= bs!1845449 (and b!6913236 b!6913108)))

(declare-fun lambda!392947 () Int)

(assert (=> bs!1845449 (not (= lambda!392947 lambda!392941))))

(declare-fun bs!1845450 () Bool)

(assert (= bs!1845450 (and b!6913236 d!2163680)))

(assert (=> bs!1845450 (not (= lambda!392947 lambda!392943))))

(declare-fun bs!1845451 () Bool)

(assert (= bs!1845451 (and b!6913236 d!2163652)))

(assert (=> bs!1845451 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2469002) r2!6280) (= (regTwo!34298 lt!2469002) r3!135)) (= lambda!392947 lambda!392936))))

(declare-fun bs!1845452 () Bool)

(assert (= bs!1845452 (and b!6913236 b!6913234)))

(assert (=> bs!1845452 (not (= lambda!392947 lambda!392946))))

(declare-fun bs!1845453 () Bool)

(assert (= bs!1845453 (and b!6913236 b!6912877)))

(assert (=> bs!1845453 (= (and (= s!14361 (_1!37063 lt!2468980)) (= (regOne!34298 lt!2469002) (regOne!34298 r1!6342)) (= (regTwo!34298 lt!2469002) (regTwo!34298 r1!6342))) (= lambda!392947 lambda!392916))))

(declare-fun bs!1845454 () Bool)

(assert (= bs!1845454 (and b!6913236 d!2163622)))

(assert (=> bs!1845454 (= (and (= (regOne!34298 lt!2469002) r1!6342) (= (regTwo!34298 lt!2469002) lt!2468983)) (= lambda!392947 lambda!392926))))

(declare-fun bs!1845455 () Bool)

(assert (= bs!1845455 (and b!6913236 b!6912780)))

(assert (=> bs!1845455 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2469002) r2!6280) (= (regTwo!34298 lt!2469002) r3!135)) (= lambda!392947 lambda!392902))))

(assert (=> bs!1845454 (not (= lambda!392947 lambda!392923))))

(declare-fun bs!1845456 () Bool)

(assert (= bs!1845456 (and b!6913236 b!6912781)))

(assert (=> bs!1845456 (= (and (= (regOne!34298 lt!2469002) r1!6342) (= (regTwo!34298 lt!2469002) lt!2468983)) (= lambda!392947 lambda!392900))))

(declare-fun bs!1845457 () Bool)

(assert (= bs!1845457 (and b!6913236 b!6913110)))

(assert (=> bs!1845457 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2469002) (regOne!34298 lt!2468983)) (= (regTwo!34298 lt!2469002) (regTwo!34298 lt!2468983))) (= lambda!392947 lambda!392942))))

(assert (=> bs!1845451 (not (= lambda!392947 lambda!392935))))

(declare-fun bs!1845459 () Bool)

(assert (= bs!1845459 (and b!6913236 b!6912875)))

(assert (=> bs!1845459 (not (= lambda!392947 lambda!392915))))

(assert (=> bs!1845456 (not (= lambda!392947 lambda!392899))))

(declare-fun bs!1845461 () Bool)

(assert (= bs!1845461 (and b!6913236 d!2163636)))

(assert (=> bs!1845461 (not (= lambda!392947 lambda!392934))))

(assert (=> bs!1845455 (not (= lambda!392947 lambda!392901))))

(declare-fun bs!1845462 () Bool)

(assert (= bs!1845462 (and b!6913236 b!6912778)))

(assert (=> bs!1845462 (= (and (= s!14361 lt!2468979) (= (regOne!34298 lt!2469002) r1!6342) (= (regTwo!34298 lt!2469002) r2!6280)) (= lambda!392947 lambda!392904))))

(assert (=> bs!1845462 (not (= lambda!392947 lambda!392903))))

(assert (=> b!6913236 true))

(assert (=> b!6913236 true))

(declare-fun b!6913232 () Bool)

(declare-fun c!1284052 () Bool)

(assert (=> b!6913232 (= c!1284052 ((_ is ElementMatch!16893) lt!2469002))))

(declare-fun e!4162012 () Bool)

(declare-fun e!4162009 () Bool)

(assert (=> b!6913232 (= e!4162012 e!4162009)))

(declare-fun b!6913233 () Bool)

(declare-fun e!4162013 () Bool)

(assert (=> b!6913233 (= e!4162013 (matchRSpec!3956 (regTwo!34299 lt!2469002) s!14361))))

(declare-fun e!4162010 () Bool)

(declare-fun call!628526 () Bool)

(assert (=> b!6913234 (= e!4162010 call!628526)))

(declare-fun bm!628521 () Bool)

(declare-fun call!628527 () Bool)

(assert (=> bm!628521 (= call!628527 (isEmpty!38777 s!14361))))

(declare-fun d!2163696 () Bool)

(declare-fun c!1284053 () Bool)

(assert (=> d!2163696 (= c!1284053 ((_ is EmptyExpr!16893) lt!2469002))))

(declare-fun e!4162014 () Bool)

(assert (=> d!2163696 (= (matchRSpec!3956 lt!2469002 s!14361) e!4162014)))

(declare-fun b!6913235 () Bool)

(declare-fun c!1284050 () Bool)

(assert (=> b!6913235 (= c!1284050 ((_ is Union!16893) lt!2469002))))

(declare-fun e!4162015 () Bool)

(assert (=> b!6913235 (= e!4162009 e!4162015)))

(declare-fun bm!628522 () Bool)

(declare-fun c!1284051 () Bool)

(assert (=> bm!628522 (= call!628526 (Exists!3901 (ite c!1284051 lambda!392946 lambda!392947)))))

(declare-fun e!4162011 () Bool)

(assert (=> b!6913236 (= e!4162011 call!628526)))

(declare-fun b!6913237 () Bool)

(assert (=> b!6913237 (= e!4162009 (= s!14361 (Cons!66526 (c!1283947 lt!2469002) Nil!66526)))))

(declare-fun b!6913238 () Bool)

(assert (=> b!6913238 (= e!4162014 e!4162012)))

(declare-fun res!2819453 () Bool)

(assert (=> b!6913238 (= res!2819453 (not ((_ is EmptyLang!16893) lt!2469002)))))

(assert (=> b!6913238 (=> (not res!2819453) (not e!4162012))))

(declare-fun b!6913239 () Bool)

(declare-fun res!2819454 () Bool)

(assert (=> b!6913239 (=> res!2819454 e!4162010)))

(assert (=> b!6913239 (= res!2819454 call!628527)))

(assert (=> b!6913239 (= e!4162011 e!4162010)))

(declare-fun b!6913240 () Bool)

(assert (=> b!6913240 (= e!4162015 e!4162013)))

(declare-fun res!2819455 () Bool)

(assert (=> b!6913240 (= res!2819455 (matchRSpec!3956 (regOne!34299 lt!2469002) s!14361))))

(assert (=> b!6913240 (=> res!2819455 e!4162013)))

(declare-fun b!6913241 () Bool)

(assert (=> b!6913241 (= e!4162015 e!4162011)))

(assert (=> b!6913241 (= c!1284051 ((_ is Star!16893) lt!2469002))))

(declare-fun b!6913242 () Bool)

(assert (=> b!6913242 (= e!4162014 call!628527)))

(assert (= (and d!2163696 c!1284053) b!6913242))

(assert (= (and d!2163696 (not c!1284053)) b!6913238))

(assert (= (and b!6913238 res!2819453) b!6913232))

(assert (= (and b!6913232 c!1284052) b!6913237))

(assert (= (and b!6913232 (not c!1284052)) b!6913235))

(assert (= (and b!6913235 c!1284050) b!6913240))

(assert (= (and b!6913235 (not c!1284050)) b!6913241))

(assert (= (and b!6913240 (not res!2819455)) b!6913233))

(assert (= (and b!6913241 c!1284051) b!6913239))

(assert (= (and b!6913241 (not c!1284051)) b!6913236))

(assert (= (and b!6913239 (not res!2819454)) b!6913234))

(assert (= (or b!6913234 b!6913236) bm!628522))

(assert (= (or b!6913242 b!6913239) bm!628521))

(declare-fun m!7627070 () Bool)

(assert (=> b!6913233 m!7627070))

(declare-fun m!7627072 () Bool)

(assert (=> bm!628521 m!7627072))

(declare-fun m!7627074 () Bool)

(assert (=> bm!628522 m!7627074))

(declare-fun m!7627076 () Bool)

(assert (=> b!6913240 m!7627076))

(assert (=> b!6912776 d!2163696))

(declare-fun b!6913270 () Bool)

(declare-fun e!4162035 () Bool)

(declare-fun lt!2469061 () Bool)

(assert (=> b!6913270 (= e!4162035 (not lt!2469061))))

(declare-fun b!6913271 () Bool)

(declare-fun res!2819474 () Bool)

(declare-fun e!4162031 () Bool)

(assert (=> b!6913271 (=> res!2819474 e!4162031)))

(assert (=> b!6913271 (= res!2819474 (not (isEmpty!38777 (tail!12916 s!14361))))))

(declare-fun b!6913272 () Bool)

(declare-fun res!2819472 () Bool)

(declare-fun e!4162033 () Bool)

(assert (=> b!6913272 (=> (not res!2819472) (not e!4162033))))

(declare-fun call!628530 () Bool)

(assert (=> b!6913272 (= res!2819472 (not call!628530))))

(declare-fun b!6913273 () Bool)

(declare-fun e!4162037 () Bool)

(assert (=> b!6913273 (= e!4162037 e!4162035)))

(declare-fun c!1284063 () Bool)

(assert (=> b!6913273 (= c!1284063 ((_ is EmptyLang!16893) lt!2469002))))

(declare-fun b!6913274 () Bool)

(declare-fun e!4162036 () Bool)

(assert (=> b!6913274 (= e!4162036 (nullable!6732 lt!2469002))))

(declare-fun b!6913276 () Bool)

(assert (=> b!6913276 (= e!4162033 (= (head!13864 s!14361) (c!1283947 lt!2469002)))))

(declare-fun b!6913277 () Bool)

(declare-fun res!2819470 () Bool)

(assert (=> b!6913277 (=> (not res!2819470) (not e!4162033))))

(assert (=> b!6913277 (= res!2819470 (isEmpty!38777 (tail!12916 s!14361)))))

(declare-fun bm!628525 () Bool)

(assert (=> bm!628525 (= call!628530 (isEmpty!38777 s!14361))))

(declare-fun b!6913278 () Bool)

(declare-fun e!4162034 () Bool)

(declare-fun e!4162032 () Bool)

(assert (=> b!6913278 (= e!4162034 e!4162032)))

(declare-fun res!2819469 () Bool)

(assert (=> b!6913278 (=> (not res!2819469) (not e!4162032))))

(assert (=> b!6913278 (= res!2819469 (not lt!2469061))))

(declare-fun b!6913279 () Bool)

(declare-fun res!2819471 () Bool)

(assert (=> b!6913279 (=> res!2819471 e!4162034)))

(assert (=> b!6913279 (= res!2819471 (not ((_ is ElementMatch!16893) lt!2469002)))))

(assert (=> b!6913279 (= e!4162035 e!4162034)))

(declare-fun b!6913275 () Bool)

(assert (=> b!6913275 (= e!4162037 (= lt!2469061 call!628530))))

(declare-fun d!2163706 () Bool)

(assert (=> d!2163706 e!4162037))

(declare-fun c!1284064 () Bool)

(assert (=> d!2163706 (= c!1284064 ((_ is EmptyExpr!16893) lt!2469002))))

(assert (=> d!2163706 (= lt!2469061 e!4162036)))

(declare-fun c!1284062 () Bool)

(assert (=> d!2163706 (= c!1284062 (isEmpty!38777 s!14361))))

(assert (=> d!2163706 (validRegex!8601 lt!2469002)))

(assert (=> d!2163706 (= (matchR!9038 lt!2469002 s!14361) lt!2469061)))

(declare-fun b!6913280 () Bool)

(assert (=> b!6913280 (= e!4162031 (not (= (head!13864 s!14361) (c!1283947 lt!2469002))))))

(declare-fun b!6913281 () Bool)

(assert (=> b!6913281 (= e!4162036 (matchR!9038 (derivativeStep!5411 lt!2469002 (head!13864 s!14361)) (tail!12916 s!14361)))))

(declare-fun b!6913282 () Bool)

(assert (=> b!6913282 (= e!4162032 e!4162031)))

(declare-fun res!2819467 () Bool)

(assert (=> b!6913282 (=> res!2819467 e!4162031)))

(assert (=> b!6913282 (= res!2819467 call!628530)))

(declare-fun b!6913283 () Bool)

(declare-fun res!2819468 () Bool)

(assert (=> b!6913283 (=> res!2819468 e!4162034)))

(assert (=> b!6913283 (= res!2819468 e!4162033)))

(declare-fun res!2819473 () Bool)

(assert (=> b!6913283 (=> (not res!2819473) (not e!4162033))))

(assert (=> b!6913283 (= res!2819473 lt!2469061)))

(assert (= (and d!2163706 c!1284062) b!6913274))

(assert (= (and d!2163706 (not c!1284062)) b!6913281))

(assert (= (and d!2163706 c!1284064) b!6913275))

(assert (= (and d!2163706 (not c!1284064)) b!6913273))

(assert (= (and b!6913273 c!1284063) b!6913270))

(assert (= (and b!6913273 (not c!1284063)) b!6913279))

(assert (= (and b!6913279 (not res!2819471)) b!6913283))

(assert (= (and b!6913283 res!2819473) b!6913272))

(assert (= (and b!6913272 res!2819472) b!6913277))

(assert (= (and b!6913277 res!2819470) b!6913276))

(assert (= (and b!6913283 (not res!2819468)) b!6913278))

(assert (= (and b!6913278 res!2819469) b!6913282))

(assert (= (and b!6913282 (not res!2819467)) b!6913271))

(assert (= (and b!6913271 (not res!2819474)) b!6913280))

(assert (= (or b!6913275 b!6913272 b!6913282) bm!628525))

(declare-fun m!7627078 () Bool)

(assert (=> b!6913281 m!7627078))

(assert (=> b!6913281 m!7627078))

(declare-fun m!7627080 () Bool)

(assert (=> b!6913281 m!7627080))

(declare-fun m!7627082 () Bool)

(assert (=> b!6913281 m!7627082))

(assert (=> b!6913281 m!7627080))

(assert (=> b!6913281 m!7627082))

(declare-fun m!7627084 () Bool)

(assert (=> b!6913281 m!7627084))

(declare-fun m!7627086 () Bool)

(assert (=> b!6913274 m!7627086))

(assert (=> b!6913277 m!7627082))

(assert (=> b!6913277 m!7627082))

(declare-fun m!7627088 () Bool)

(assert (=> b!6913277 m!7627088))

(assert (=> bm!628525 m!7627072))

(assert (=> b!6913271 m!7627082))

(assert (=> b!6913271 m!7627082))

(assert (=> b!6913271 m!7627088))

(assert (=> d!2163706 m!7627072))

(declare-fun m!7627090 () Bool)

(assert (=> d!2163706 m!7627090))

(assert (=> b!6913280 m!7627078))

(assert (=> b!6913276 m!7627078))

(assert (=> b!6912776 d!2163706))

(declare-fun b!6913284 () Bool)

(declare-fun e!4162042 () Bool)

(declare-fun lt!2469062 () Bool)

(assert (=> b!6913284 (= e!4162042 (not lt!2469062))))

(declare-fun b!6913285 () Bool)

(declare-fun res!2819482 () Bool)

(declare-fun e!4162038 () Bool)

(assert (=> b!6913285 (=> res!2819482 e!4162038)))

(assert (=> b!6913285 (= res!2819482 (not (isEmpty!38777 (tail!12916 s!14361))))))

(declare-fun b!6913286 () Bool)

(declare-fun res!2819480 () Bool)

(declare-fun e!4162040 () Bool)

(assert (=> b!6913286 (=> (not res!2819480) (not e!4162040))))

(declare-fun call!628531 () Bool)

(assert (=> b!6913286 (= res!2819480 (not call!628531))))

(declare-fun b!6913287 () Bool)

(declare-fun e!4162044 () Bool)

(assert (=> b!6913287 (= e!4162044 e!4162042)))

(declare-fun c!1284066 () Bool)

(assert (=> b!6913287 (= c!1284066 ((_ is EmptyLang!16893) lt!2468976))))

(declare-fun b!6913288 () Bool)

(declare-fun e!4162043 () Bool)

(assert (=> b!6913288 (= e!4162043 (nullable!6732 lt!2468976))))

(declare-fun b!6913290 () Bool)

(assert (=> b!6913290 (= e!4162040 (= (head!13864 s!14361) (c!1283947 lt!2468976)))))

(declare-fun b!6913291 () Bool)

(declare-fun res!2819478 () Bool)

(assert (=> b!6913291 (=> (not res!2819478) (not e!4162040))))

(assert (=> b!6913291 (= res!2819478 (isEmpty!38777 (tail!12916 s!14361)))))

(declare-fun bm!628526 () Bool)

(assert (=> bm!628526 (= call!628531 (isEmpty!38777 s!14361))))

(declare-fun b!6913292 () Bool)

(declare-fun e!4162041 () Bool)

(declare-fun e!4162039 () Bool)

(assert (=> b!6913292 (= e!4162041 e!4162039)))

(declare-fun res!2819477 () Bool)

(assert (=> b!6913292 (=> (not res!2819477) (not e!4162039))))

(assert (=> b!6913292 (= res!2819477 (not lt!2469062))))

(declare-fun b!6913293 () Bool)

(declare-fun res!2819479 () Bool)

(assert (=> b!6913293 (=> res!2819479 e!4162041)))

(assert (=> b!6913293 (= res!2819479 (not ((_ is ElementMatch!16893) lt!2468976)))))

(assert (=> b!6913293 (= e!4162042 e!4162041)))

(declare-fun b!6913289 () Bool)

(assert (=> b!6913289 (= e!4162044 (= lt!2469062 call!628531))))

(declare-fun d!2163708 () Bool)

(assert (=> d!2163708 e!4162044))

(declare-fun c!1284067 () Bool)

(assert (=> d!2163708 (= c!1284067 ((_ is EmptyExpr!16893) lt!2468976))))

(assert (=> d!2163708 (= lt!2469062 e!4162043)))

(declare-fun c!1284065 () Bool)

(assert (=> d!2163708 (= c!1284065 (isEmpty!38777 s!14361))))

(assert (=> d!2163708 (validRegex!8601 lt!2468976)))

(assert (=> d!2163708 (= (matchR!9038 lt!2468976 s!14361) lt!2469062)))

(declare-fun b!6913294 () Bool)

(assert (=> b!6913294 (= e!4162038 (not (= (head!13864 s!14361) (c!1283947 lt!2468976))))))

(declare-fun b!6913295 () Bool)

(assert (=> b!6913295 (= e!4162043 (matchR!9038 (derivativeStep!5411 lt!2468976 (head!13864 s!14361)) (tail!12916 s!14361)))))

(declare-fun b!6913296 () Bool)

(assert (=> b!6913296 (= e!4162039 e!4162038)))

(declare-fun res!2819475 () Bool)

(assert (=> b!6913296 (=> res!2819475 e!4162038)))

(assert (=> b!6913296 (= res!2819475 call!628531)))

(declare-fun b!6913297 () Bool)

(declare-fun res!2819476 () Bool)

(assert (=> b!6913297 (=> res!2819476 e!4162041)))

(assert (=> b!6913297 (= res!2819476 e!4162040)))

(declare-fun res!2819481 () Bool)

(assert (=> b!6913297 (=> (not res!2819481) (not e!4162040))))

(assert (=> b!6913297 (= res!2819481 lt!2469062)))

(assert (= (and d!2163708 c!1284065) b!6913288))

(assert (= (and d!2163708 (not c!1284065)) b!6913295))

(assert (= (and d!2163708 c!1284067) b!6913289))

(assert (= (and d!2163708 (not c!1284067)) b!6913287))

(assert (= (and b!6913287 c!1284066) b!6913284))

(assert (= (and b!6913287 (not c!1284066)) b!6913293))

(assert (= (and b!6913293 (not res!2819479)) b!6913297))

(assert (= (and b!6913297 res!2819481) b!6913286))

(assert (= (and b!6913286 res!2819480) b!6913291))

(assert (= (and b!6913291 res!2819478) b!6913290))

(assert (= (and b!6913297 (not res!2819476)) b!6913292))

(assert (= (and b!6913292 res!2819477) b!6913296))

(assert (= (and b!6913296 (not res!2819475)) b!6913285))

(assert (= (and b!6913285 (not res!2819482)) b!6913294))

(assert (= (or b!6913289 b!6913286 b!6913296) bm!628526))

(assert (=> b!6913295 m!7627078))

(assert (=> b!6913295 m!7627078))

(declare-fun m!7627092 () Bool)

(assert (=> b!6913295 m!7627092))

(assert (=> b!6913295 m!7627082))

(assert (=> b!6913295 m!7627092))

(assert (=> b!6913295 m!7627082))

(declare-fun m!7627094 () Bool)

(assert (=> b!6913295 m!7627094))

(declare-fun m!7627096 () Bool)

(assert (=> b!6913288 m!7627096))

(assert (=> b!6913291 m!7627082))

(assert (=> b!6913291 m!7627082))

(assert (=> b!6913291 m!7627088))

(assert (=> bm!628526 m!7627072))

(assert (=> b!6913285 m!7627082))

(assert (=> b!6913285 m!7627082))

(assert (=> b!6913285 m!7627088))

(assert (=> d!2163708 m!7627072))

(declare-fun m!7627098 () Bool)

(assert (=> d!2163708 m!7627098))

(assert (=> b!6913294 m!7627078))

(assert (=> b!6913290 m!7627078))

(assert (=> b!6912776 d!2163708))

(declare-fun bs!1845481 () Bool)

(declare-fun b!6913300 () Bool)

(assert (= bs!1845481 (and b!6913300 b!6913108)))

(declare-fun lambda!392950 () Int)

(assert (=> bs!1845481 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (reg!17222 lt!2468976) (reg!17222 lt!2468983)) (= lt!2468976 lt!2468983)) (= lambda!392950 lambda!392941))))

(declare-fun bs!1845483 () Bool)

(assert (= bs!1845483 (and b!6913300 d!2163680)))

(assert (=> bs!1845483 (not (= lambda!392950 lambda!392943))))

(declare-fun bs!1845485 () Bool)

(assert (= bs!1845485 (and b!6913300 d!2163652)))

(assert (=> bs!1845485 (not (= lambda!392950 lambda!392936))))

(declare-fun bs!1845487 () Bool)

(assert (= bs!1845487 (and b!6913300 b!6913234)))

(assert (=> bs!1845487 (= (and (= (reg!17222 lt!2468976) (reg!17222 lt!2469002)) (= lt!2468976 lt!2469002)) (= lambda!392950 lambda!392946))))

(declare-fun bs!1845489 () Bool)

(assert (= bs!1845489 (and b!6913300 b!6912877)))

(assert (=> bs!1845489 (not (= lambda!392950 lambda!392916))))

(declare-fun bs!1845491 () Bool)

(assert (= bs!1845491 (and b!6913300 b!6912780)))

(assert (=> bs!1845491 (not (= lambda!392950 lambda!392902))))

(declare-fun bs!1845492 () Bool)

(assert (= bs!1845492 (and b!6913300 d!2163622)))

(assert (=> bs!1845492 (not (= lambda!392950 lambda!392923))))

(declare-fun bs!1845495 () Bool)

(assert (= bs!1845495 (and b!6913300 b!6912781)))

(assert (=> bs!1845495 (not (= lambda!392950 lambda!392900))))

(declare-fun bs!1845497 () Bool)

(assert (= bs!1845497 (and b!6913300 b!6913110)))

(assert (=> bs!1845497 (not (= lambda!392950 lambda!392942))))

(assert (=> bs!1845485 (not (= lambda!392950 lambda!392935))))

(declare-fun bs!1845498 () Bool)

(assert (= bs!1845498 (and b!6913300 b!6912875)))

(assert (=> bs!1845498 (= (and (= s!14361 (_1!37063 lt!2468980)) (= (reg!17222 lt!2468976) (reg!17222 r1!6342)) (= lt!2468976 r1!6342)) (= lambda!392950 lambda!392915))))

(assert (=> bs!1845495 (not (= lambda!392950 lambda!392899))))

(declare-fun bs!1845500 () Bool)

(assert (= bs!1845500 (and b!6913300 b!6913236)))

(assert (=> bs!1845500 (not (= lambda!392950 lambda!392947))))

(assert (=> bs!1845492 (not (= lambda!392950 lambda!392926))))

(declare-fun bs!1845501 () Bool)

(assert (= bs!1845501 (and b!6913300 d!2163636)))

(assert (=> bs!1845501 (not (= lambda!392950 lambda!392934))))

(assert (=> bs!1845491 (not (= lambda!392950 lambda!392901))))

(declare-fun bs!1845502 () Bool)

(assert (= bs!1845502 (and b!6913300 b!6912778)))

(assert (=> bs!1845502 (not (= lambda!392950 lambda!392904))))

(assert (=> bs!1845502 (not (= lambda!392950 lambda!392903))))

(assert (=> b!6913300 true))

(assert (=> b!6913300 true))

(declare-fun bs!1845505 () Bool)

(declare-fun b!6913302 () Bool)

(assert (= bs!1845505 (and b!6913302 b!6913108)))

(declare-fun lambda!392951 () Int)

(assert (=> bs!1845505 (not (= lambda!392951 lambda!392941))))

(declare-fun bs!1845506 () Bool)

(assert (= bs!1845506 (and b!6913302 d!2163680)))

(assert (=> bs!1845506 (not (= lambda!392951 lambda!392943))))

(declare-fun bs!1845508 () Bool)

(assert (= bs!1845508 (and b!6913302 d!2163652)))

(assert (=> bs!1845508 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468976) r2!6280) (= (regTwo!34298 lt!2468976) r3!135)) (= lambda!392951 lambda!392936))))

(declare-fun bs!1845510 () Bool)

(assert (= bs!1845510 (and b!6913302 b!6913234)))

(assert (=> bs!1845510 (not (= lambda!392951 lambda!392946))))

(declare-fun bs!1845512 () Bool)

(assert (= bs!1845512 (and b!6913302 b!6912877)))

(assert (=> bs!1845512 (= (and (= s!14361 (_1!37063 lt!2468980)) (= (regOne!34298 lt!2468976) (regOne!34298 r1!6342)) (= (regTwo!34298 lt!2468976) (regTwo!34298 r1!6342))) (= lambda!392951 lambda!392916))))

(declare-fun bs!1845514 () Bool)

(assert (= bs!1845514 (and b!6913302 b!6912780)))

(assert (=> bs!1845514 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468976) r2!6280) (= (regTwo!34298 lt!2468976) r3!135)) (= lambda!392951 lambda!392902))))

(declare-fun bs!1845516 () Bool)

(assert (= bs!1845516 (and b!6913302 b!6913300)))

(assert (=> bs!1845516 (not (= lambda!392951 lambda!392950))))

(declare-fun bs!1845518 () Bool)

(assert (= bs!1845518 (and b!6913302 d!2163622)))

(assert (=> bs!1845518 (not (= lambda!392951 lambda!392923))))

(declare-fun bs!1845520 () Bool)

(assert (= bs!1845520 (and b!6913302 b!6912781)))

(assert (=> bs!1845520 (= (and (= (regOne!34298 lt!2468976) r1!6342) (= (regTwo!34298 lt!2468976) lt!2468983)) (= lambda!392951 lambda!392900))))

(declare-fun bs!1845522 () Bool)

(assert (= bs!1845522 (and b!6913302 b!6913110)))

(assert (=> bs!1845522 (= (and (= s!14361 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468976) (regOne!34298 lt!2468983)) (= (regTwo!34298 lt!2468976) (regTwo!34298 lt!2468983))) (= lambda!392951 lambda!392942))))

(assert (=> bs!1845508 (not (= lambda!392951 lambda!392935))))

(declare-fun bs!1845524 () Bool)

(assert (= bs!1845524 (and b!6913302 b!6912875)))

(assert (=> bs!1845524 (not (= lambda!392951 lambda!392915))))

(assert (=> bs!1845520 (not (= lambda!392951 lambda!392899))))

(declare-fun bs!1845527 () Bool)

(assert (= bs!1845527 (and b!6913302 b!6913236)))

(assert (=> bs!1845527 (= (and (= (regOne!34298 lt!2468976) (regOne!34298 lt!2469002)) (= (regTwo!34298 lt!2468976) (regTwo!34298 lt!2469002))) (= lambda!392951 lambda!392947))))

(assert (=> bs!1845518 (= (and (= (regOne!34298 lt!2468976) r1!6342) (= (regTwo!34298 lt!2468976) lt!2468983)) (= lambda!392951 lambda!392926))))

(declare-fun bs!1845530 () Bool)

(assert (= bs!1845530 (and b!6913302 d!2163636)))

(assert (=> bs!1845530 (not (= lambda!392951 lambda!392934))))

(assert (=> bs!1845514 (not (= lambda!392951 lambda!392901))))

(declare-fun bs!1845532 () Bool)

(assert (= bs!1845532 (and b!6913302 b!6912778)))

(assert (=> bs!1845532 (= (and (= s!14361 lt!2468979) (= (regOne!34298 lt!2468976) r1!6342) (= (regTwo!34298 lt!2468976) r2!6280)) (= lambda!392951 lambda!392904))))

(assert (=> bs!1845532 (not (= lambda!392951 lambda!392903))))

(assert (=> b!6913302 true))

(assert (=> b!6913302 true))

(declare-fun b!6913298 () Bool)

(declare-fun c!1284070 () Bool)

(assert (=> b!6913298 (= c!1284070 ((_ is ElementMatch!16893) lt!2468976))))

(declare-fun e!4162048 () Bool)

(declare-fun e!4162045 () Bool)

(assert (=> b!6913298 (= e!4162048 e!4162045)))

(declare-fun b!6913299 () Bool)

(declare-fun e!4162049 () Bool)

(assert (=> b!6913299 (= e!4162049 (matchRSpec!3956 (regTwo!34299 lt!2468976) s!14361))))

(declare-fun e!4162046 () Bool)

(declare-fun call!628532 () Bool)

(assert (=> b!6913300 (= e!4162046 call!628532)))

(declare-fun bm!628527 () Bool)

(declare-fun call!628533 () Bool)

(assert (=> bm!628527 (= call!628533 (isEmpty!38777 s!14361))))

(declare-fun d!2163710 () Bool)

(declare-fun c!1284071 () Bool)

(assert (=> d!2163710 (= c!1284071 ((_ is EmptyExpr!16893) lt!2468976))))

(declare-fun e!4162050 () Bool)

(assert (=> d!2163710 (= (matchRSpec!3956 lt!2468976 s!14361) e!4162050)))

(declare-fun b!6913301 () Bool)

(declare-fun c!1284068 () Bool)

(assert (=> b!6913301 (= c!1284068 ((_ is Union!16893) lt!2468976))))

(declare-fun e!4162051 () Bool)

(assert (=> b!6913301 (= e!4162045 e!4162051)))

(declare-fun bm!628528 () Bool)

(declare-fun c!1284069 () Bool)

(assert (=> bm!628528 (= call!628532 (Exists!3901 (ite c!1284069 lambda!392950 lambda!392951)))))

(declare-fun e!4162047 () Bool)

(assert (=> b!6913302 (= e!4162047 call!628532)))

(declare-fun b!6913303 () Bool)

(assert (=> b!6913303 (= e!4162045 (= s!14361 (Cons!66526 (c!1283947 lt!2468976) Nil!66526)))))

(declare-fun b!6913304 () Bool)

(assert (=> b!6913304 (= e!4162050 e!4162048)))

(declare-fun res!2819483 () Bool)

(assert (=> b!6913304 (= res!2819483 (not ((_ is EmptyLang!16893) lt!2468976)))))

(assert (=> b!6913304 (=> (not res!2819483) (not e!4162048))))

(declare-fun b!6913305 () Bool)

(declare-fun res!2819484 () Bool)

(assert (=> b!6913305 (=> res!2819484 e!4162046)))

(assert (=> b!6913305 (= res!2819484 call!628533)))

(assert (=> b!6913305 (= e!4162047 e!4162046)))

(declare-fun b!6913306 () Bool)

(assert (=> b!6913306 (= e!4162051 e!4162049)))

(declare-fun res!2819485 () Bool)

(assert (=> b!6913306 (= res!2819485 (matchRSpec!3956 (regOne!34299 lt!2468976) s!14361))))

(assert (=> b!6913306 (=> res!2819485 e!4162049)))

(declare-fun b!6913307 () Bool)

(assert (=> b!6913307 (= e!4162051 e!4162047)))

(assert (=> b!6913307 (= c!1284069 ((_ is Star!16893) lt!2468976))))

(declare-fun b!6913308 () Bool)

(assert (=> b!6913308 (= e!4162050 call!628533)))

(assert (= (and d!2163710 c!1284071) b!6913308))

(assert (= (and d!2163710 (not c!1284071)) b!6913304))

(assert (= (and b!6913304 res!2819483) b!6913298))

(assert (= (and b!6913298 c!1284070) b!6913303))

(assert (= (and b!6913298 (not c!1284070)) b!6913301))

(assert (= (and b!6913301 c!1284068) b!6913306))

(assert (= (and b!6913301 (not c!1284068)) b!6913307))

(assert (= (and b!6913306 (not res!2819485)) b!6913299))

(assert (= (and b!6913307 c!1284069) b!6913305))

(assert (= (and b!6913307 (not c!1284069)) b!6913302))

(assert (= (and b!6913305 (not res!2819484)) b!6913300))

(assert (= (or b!6913300 b!6913302) bm!628528))

(assert (= (or b!6913308 b!6913305) bm!628527))

(declare-fun m!7627118 () Bool)

(assert (=> b!6913299 m!7627118))

(assert (=> bm!628527 m!7627072))

(declare-fun m!7627120 () Bool)

(assert (=> bm!628528 m!7627120))

(declare-fun m!7627122 () Bool)

(assert (=> b!6913306 m!7627122))

(assert (=> b!6912776 d!2163710))

(declare-fun d!2163720 () Bool)

(assert (=> d!2163720 (= (matchR!9038 lt!2468976 s!14361) (matchRSpec!3956 lt!2468976 s!14361))))

(declare-fun lt!2469065 () Unit!160522)

(assert (=> d!2163720 (= lt!2469065 (choose!51486 lt!2468976 s!14361))))

(assert (=> d!2163720 (validRegex!8601 lt!2468976)))

(assert (=> d!2163720 (= (mainMatchTheorem!3956 lt!2468976 s!14361) lt!2469065)))

(declare-fun bs!1845535 () Bool)

(assert (= bs!1845535 d!2163720))

(assert (=> bs!1845535 m!7626676))

(assert (=> bs!1845535 m!7626680))

(declare-fun m!7627124 () Bool)

(assert (=> bs!1845535 m!7627124))

(assert (=> bs!1845535 m!7627098))

(assert (=> b!6912776 d!2163720))

(declare-fun d!2163722 () Bool)

(assert (=> d!2163722 (= (matchR!9038 lt!2469002 s!14361) (matchRSpec!3956 lt!2469002 s!14361))))

(declare-fun lt!2469066 () Unit!160522)

(assert (=> d!2163722 (= lt!2469066 (choose!51486 lt!2469002 s!14361))))

(assert (=> d!2163722 (validRegex!8601 lt!2469002)))

(assert (=> d!2163722 (= (mainMatchTheorem!3956 lt!2469002 s!14361) lt!2469066)))

(declare-fun bs!1845536 () Bool)

(assert (= bs!1845536 d!2163722))

(assert (=> bs!1845536 m!7626678))

(assert (=> bs!1845536 m!7626682))

(declare-fun m!7627126 () Bool)

(assert (=> bs!1845536 m!7627126))

(assert (=> bs!1845536 m!7627090))

(assert (=> b!6912776 d!2163722))

(declare-fun b!6913334 () Bool)

(declare-fun e!4162064 () Bool)

(declare-fun lt!2469070 () List!66650)

(assert (=> b!6913334 (= e!4162064 (or (not (= (_2!37063 lt!2469003) Nil!66526)) (= lt!2469070 (_1!37063 lt!2469003))))))

(declare-fun b!6913331 () Bool)

(declare-fun e!4162063 () List!66650)

(assert (=> b!6913331 (= e!4162063 (_2!37063 lt!2469003))))

(declare-fun b!6913332 () Bool)

(assert (=> b!6913332 (= e!4162063 (Cons!66526 (h!72974 (_1!37063 lt!2469003)) (++!14946 (t!380393 (_1!37063 lt!2469003)) (_2!37063 lt!2469003))))))

(declare-fun b!6913333 () Bool)

(declare-fun res!2819499 () Bool)

(assert (=> b!6913333 (=> (not res!2819499) (not e!4162064))))

(declare-fun size!40767 (List!66650) Int)

(assert (=> b!6913333 (= res!2819499 (= (size!40767 lt!2469070) (+ (size!40767 (_1!37063 lt!2469003)) (size!40767 (_2!37063 lt!2469003)))))))

(declare-fun d!2163724 () Bool)

(assert (=> d!2163724 e!4162064))

(declare-fun res!2819498 () Bool)

(assert (=> d!2163724 (=> (not res!2819498) (not e!4162064))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13070 (List!66650) (InoxSet C!34056))

(assert (=> d!2163724 (= res!2819498 (= (content!13070 lt!2469070) ((_ map or) (content!13070 (_1!37063 lt!2469003)) (content!13070 (_2!37063 lt!2469003)))))))

(assert (=> d!2163724 (= lt!2469070 e!4162063)))

(declare-fun c!1284077 () Bool)

(assert (=> d!2163724 (= c!1284077 ((_ is Nil!66526) (_1!37063 lt!2469003)))))

(assert (=> d!2163724 (= (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003)) lt!2469070)))

(assert (= (and d!2163724 c!1284077) b!6913331))

(assert (= (and d!2163724 (not c!1284077)) b!6913332))

(assert (= (and d!2163724 res!2819498) b!6913333))

(assert (= (and b!6913333 res!2819499) b!6913334))

(declare-fun m!7627140 () Bool)

(assert (=> b!6913332 m!7627140))

(declare-fun m!7627142 () Bool)

(assert (=> b!6913333 m!7627142))

(declare-fun m!7627144 () Bool)

(assert (=> b!6913333 m!7627144))

(declare-fun m!7627146 () Bool)

(assert (=> b!6913333 m!7627146))

(declare-fun m!7627148 () Bool)

(assert (=> d!2163724 m!7627148))

(declare-fun m!7627150 () Bool)

(assert (=> d!2163724 m!7627150))

(declare-fun m!7627152 () Bool)

(assert (=> d!2163724 m!7627152))

(assert (=> b!6912785 d!2163724))

(declare-fun bs!1845554 () Bool)

(declare-fun b!6913337 () Bool)

(assert (= bs!1845554 (and b!6913337 b!6913108)))

(declare-fun lambda!392955 () Int)

(assert (=> bs!1845554 (= (and (= (_1!37063 lt!2469003) (_2!37063 lt!2468980)) (= (reg!17222 r2!6280) (reg!17222 lt!2468983)) (= r2!6280 lt!2468983)) (= lambda!392955 lambda!392941))))

(declare-fun bs!1845555 () Bool)

(assert (= bs!1845555 (and b!6913337 d!2163680)))

(assert (=> bs!1845555 (not (= lambda!392955 lambda!392943))))

(declare-fun bs!1845556 () Bool)

(assert (= bs!1845556 (and b!6913337 d!2163652)))

(assert (=> bs!1845556 (not (= lambda!392955 lambda!392936))))

(declare-fun bs!1845557 () Bool)

(assert (= bs!1845557 (and b!6913337 b!6913234)))

(assert (=> bs!1845557 (= (and (= (_1!37063 lt!2469003) s!14361) (= (reg!17222 r2!6280) (reg!17222 lt!2469002)) (= r2!6280 lt!2469002)) (= lambda!392955 lambda!392946))))

(declare-fun bs!1845558 () Bool)

(assert (= bs!1845558 (and b!6913337 b!6912877)))

(assert (=> bs!1845558 (not (= lambda!392955 lambda!392916))))

(declare-fun bs!1845559 () Bool)

(assert (= bs!1845559 (and b!6913337 b!6912780)))

(assert (=> bs!1845559 (not (= lambda!392955 lambda!392902))))

(declare-fun bs!1845560 () Bool)

(assert (= bs!1845560 (and b!6913337 b!6913300)))

(assert (=> bs!1845560 (= (and (= (_1!37063 lt!2469003) s!14361) (= (reg!17222 r2!6280) (reg!17222 lt!2468976)) (= r2!6280 lt!2468976)) (= lambda!392955 lambda!392950))))

(declare-fun bs!1845561 () Bool)

(assert (= bs!1845561 (and b!6913337 d!2163622)))

(assert (=> bs!1845561 (not (= lambda!392955 lambda!392923))))

(declare-fun bs!1845562 () Bool)

(assert (= bs!1845562 (and b!6913337 b!6912781)))

(assert (=> bs!1845562 (not (= lambda!392955 lambda!392900))))

(declare-fun bs!1845563 () Bool)

(assert (= bs!1845563 (and b!6913337 b!6913110)))

(assert (=> bs!1845563 (not (= lambda!392955 lambda!392942))))

(assert (=> bs!1845556 (not (= lambda!392955 lambda!392935))))

(declare-fun bs!1845564 () Bool)

(assert (= bs!1845564 (and b!6913337 b!6913302)))

(assert (=> bs!1845564 (not (= lambda!392955 lambda!392951))))

(declare-fun bs!1845565 () Bool)

(assert (= bs!1845565 (and b!6913337 b!6912875)))

(assert (=> bs!1845565 (= (and (= (_1!37063 lt!2469003) (_1!37063 lt!2468980)) (= (reg!17222 r2!6280) (reg!17222 r1!6342)) (= r2!6280 r1!6342)) (= lambda!392955 lambda!392915))))

(assert (=> bs!1845562 (not (= lambda!392955 lambda!392899))))

(declare-fun bs!1845566 () Bool)

(assert (= bs!1845566 (and b!6913337 b!6913236)))

(assert (=> bs!1845566 (not (= lambda!392955 lambda!392947))))

(assert (=> bs!1845561 (not (= lambda!392955 lambda!392926))))

(declare-fun bs!1845567 () Bool)

(assert (= bs!1845567 (and b!6913337 d!2163636)))

(assert (=> bs!1845567 (not (= lambda!392955 lambda!392934))))

(assert (=> bs!1845559 (not (= lambda!392955 lambda!392901))))

(declare-fun bs!1845568 () Bool)

(assert (= bs!1845568 (and b!6913337 b!6912778)))

(assert (=> bs!1845568 (not (= lambda!392955 lambda!392904))))

(assert (=> bs!1845568 (not (= lambda!392955 lambda!392903))))

(assert (=> b!6913337 true))

(assert (=> b!6913337 true))

(declare-fun bs!1845570 () Bool)

(declare-fun b!6913339 () Bool)

(assert (= bs!1845570 (and b!6913339 b!6913108)))

(declare-fun lambda!392956 () Int)

(assert (=> bs!1845570 (not (= lambda!392956 lambda!392941))))

(declare-fun bs!1845572 () Bool)

(assert (= bs!1845572 (and b!6913339 d!2163680)))

(assert (=> bs!1845572 (not (= lambda!392956 lambda!392943))))

(declare-fun bs!1845573 () Bool)

(assert (= bs!1845573 (and b!6913339 d!2163652)))

(assert (=> bs!1845573 (= (and (= (_1!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r2!6280) r2!6280) (= (regTwo!34298 r2!6280) r3!135)) (= lambda!392956 lambda!392936))))

(declare-fun bs!1845574 () Bool)

(assert (= bs!1845574 (and b!6913339 b!6913234)))

(assert (=> bs!1845574 (not (= lambda!392956 lambda!392946))))

(declare-fun bs!1845575 () Bool)

(assert (= bs!1845575 (and b!6913339 b!6912877)))

(assert (=> bs!1845575 (= (and (= (_1!37063 lt!2469003) (_1!37063 lt!2468980)) (= (regOne!34298 r2!6280) (regOne!34298 r1!6342)) (= (regTwo!34298 r2!6280) (regTwo!34298 r1!6342))) (= lambda!392956 lambda!392916))))

(declare-fun bs!1845576 () Bool)

(assert (= bs!1845576 (and b!6913339 b!6912780)))

(assert (=> bs!1845576 (= (and (= (_1!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r2!6280) r2!6280) (= (regTwo!34298 r2!6280) r3!135)) (= lambda!392956 lambda!392902))))

(declare-fun bs!1845577 () Bool)

(assert (= bs!1845577 (and b!6913339 b!6913337)))

(assert (=> bs!1845577 (not (= lambda!392956 lambda!392955))))

(declare-fun bs!1845578 () Bool)

(assert (= bs!1845578 (and b!6913339 b!6913300)))

(assert (=> bs!1845578 (not (= lambda!392956 lambda!392950))))

(declare-fun bs!1845580 () Bool)

(assert (= bs!1845580 (and b!6913339 d!2163622)))

(assert (=> bs!1845580 (not (= lambda!392956 lambda!392923))))

(declare-fun bs!1845581 () Bool)

(assert (= bs!1845581 (and b!6913339 b!6912781)))

(assert (=> bs!1845581 (= (and (= (_1!37063 lt!2469003) s!14361) (= (regOne!34298 r2!6280) r1!6342) (= (regTwo!34298 r2!6280) lt!2468983)) (= lambda!392956 lambda!392900))))

(declare-fun bs!1845583 () Bool)

(assert (= bs!1845583 (and b!6913339 b!6913110)))

(assert (=> bs!1845583 (= (and (= (_1!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r2!6280) (regOne!34298 lt!2468983)) (= (regTwo!34298 r2!6280) (regTwo!34298 lt!2468983))) (= lambda!392956 lambda!392942))))

(assert (=> bs!1845573 (not (= lambda!392956 lambda!392935))))

(declare-fun bs!1845586 () Bool)

(assert (= bs!1845586 (and b!6913339 b!6913302)))

(assert (=> bs!1845586 (= (and (= (_1!37063 lt!2469003) s!14361) (= (regOne!34298 r2!6280) (regOne!34298 lt!2468976)) (= (regTwo!34298 r2!6280) (regTwo!34298 lt!2468976))) (= lambda!392956 lambda!392951))))

(declare-fun bs!1845588 () Bool)

(assert (= bs!1845588 (and b!6913339 b!6912875)))

(assert (=> bs!1845588 (not (= lambda!392956 lambda!392915))))

(assert (=> bs!1845581 (not (= lambda!392956 lambda!392899))))

(declare-fun bs!1845591 () Bool)

(assert (= bs!1845591 (and b!6913339 b!6913236)))

(assert (=> bs!1845591 (= (and (= (_1!37063 lt!2469003) s!14361) (= (regOne!34298 r2!6280) (regOne!34298 lt!2469002)) (= (regTwo!34298 r2!6280) (regTwo!34298 lt!2469002))) (= lambda!392956 lambda!392947))))

(assert (=> bs!1845580 (= (and (= (_1!37063 lt!2469003) s!14361) (= (regOne!34298 r2!6280) r1!6342) (= (regTwo!34298 r2!6280) lt!2468983)) (= lambda!392956 lambda!392926))))

(declare-fun bs!1845593 () Bool)

(assert (= bs!1845593 (and b!6913339 d!2163636)))

(assert (=> bs!1845593 (not (= lambda!392956 lambda!392934))))

(assert (=> bs!1845576 (not (= lambda!392956 lambda!392901))))

(declare-fun bs!1845595 () Bool)

(assert (= bs!1845595 (and b!6913339 b!6912778)))

(assert (=> bs!1845595 (= (and (= (_1!37063 lt!2469003) lt!2468979) (= (regOne!34298 r2!6280) r1!6342) (= (regTwo!34298 r2!6280) r2!6280)) (= lambda!392956 lambda!392904))))

(assert (=> bs!1845595 (not (= lambda!392956 lambda!392903))))

(assert (=> b!6913339 true))

(assert (=> b!6913339 true))

(declare-fun b!6913335 () Bool)

(declare-fun c!1284080 () Bool)

(assert (=> b!6913335 (= c!1284080 ((_ is ElementMatch!16893) r2!6280))))

(declare-fun e!4162068 () Bool)

(declare-fun e!4162065 () Bool)

(assert (=> b!6913335 (= e!4162068 e!4162065)))

(declare-fun b!6913336 () Bool)

(declare-fun e!4162069 () Bool)

(assert (=> b!6913336 (= e!4162069 (matchRSpec!3956 (regTwo!34299 r2!6280) (_1!37063 lt!2469003)))))

(declare-fun e!4162066 () Bool)

(declare-fun call!628535 () Bool)

(assert (=> b!6913337 (= e!4162066 call!628535)))

(declare-fun bm!628530 () Bool)

(declare-fun call!628536 () Bool)

(assert (=> bm!628530 (= call!628536 (isEmpty!38777 (_1!37063 lt!2469003)))))

(declare-fun d!2163728 () Bool)

(declare-fun c!1284081 () Bool)

(assert (=> d!2163728 (= c!1284081 ((_ is EmptyExpr!16893) r2!6280))))

(declare-fun e!4162070 () Bool)

(assert (=> d!2163728 (= (matchRSpec!3956 r2!6280 (_1!37063 lt!2469003)) e!4162070)))

(declare-fun b!6913338 () Bool)

(declare-fun c!1284078 () Bool)

(assert (=> b!6913338 (= c!1284078 ((_ is Union!16893) r2!6280))))

(declare-fun e!4162071 () Bool)

(assert (=> b!6913338 (= e!4162065 e!4162071)))

(declare-fun c!1284079 () Bool)

(declare-fun bm!628531 () Bool)

(assert (=> bm!628531 (= call!628535 (Exists!3901 (ite c!1284079 lambda!392955 lambda!392956)))))

(declare-fun e!4162067 () Bool)

(assert (=> b!6913339 (= e!4162067 call!628535)))

(declare-fun b!6913340 () Bool)

(assert (=> b!6913340 (= e!4162065 (= (_1!37063 lt!2469003) (Cons!66526 (c!1283947 r2!6280) Nil!66526)))))

(declare-fun b!6913341 () Bool)

(assert (=> b!6913341 (= e!4162070 e!4162068)))

(declare-fun res!2819500 () Bool)

(assert (=> b!6913341 (= res!2819500 (not ((_ is EmptyLang!16893) r2!6280)))))

(assert (=> b!6913341 (=> (not res!2819500) (not e!4162068))))

(declare-fun b!6913342 () Bool)

(declare-fun res!2819501 () Bool)

(assert (=> b!6913342 (=> res!2819501 e!4162066)))

(assert (=> b!6913342 (= res!2819501 call!628536)))

(assert (=> b!6913342 (= e!4162067 e!4162066)))

(declare-fun b!6913343 () Bool)

(assert (=> b!6913343 (= e!4162071 e!4162069)))

(declare-fun res!2819502 () Bool)

(assert (=> b!6913343 (= res!2819502 (matchRSpec!3956 (regOne!34299 r2!6280) (_1!37063 lt!2469003)))))

(assert (=> b!6913343 (=> res!2819502 e!4162069)))

(declare-fun b!6913344 () Bool)

(assert (=> b!6913344 (= e!4162071 e!4162067)))

(assert (=> b!6913344 (= c!1284079 ((_ is Star!16893) r2!6280))))

(declare-fun b!6913345 () Bool)

(assert (=> b!6913345 (= e!4162070 call!628536)))

(assert (= (and d!2163728 c!1284081) b!6913345))

(assert (= (and d!2163728 (not c!1284081)) b!6913341))

(assert (= (and b!6913341 res!2819500) b!6913335))

(assert (= (and b!6913335 c!1284080) b!6913340))

(assert (= (and b!6913335 (not c!1284080)) b!6913338))

(assert (= (and b!6913338 c!1284078) b!6913343))

(assert (= (and b!6913338 (not c!1284078)) b!6913344))

(assert (= (and b!6913343 (not res!2819502)) b!6913336))

(assert (= (and b!6913344 c!1284079) b!6913342))

(assert (= (and b!6913344 (not c!1284079)) b!6913339))

(assert (= (and b!6913342 (not res!2819501)) b!6913337))

(assert (= (or b!6913337 b!6913339) bm!628531))

(assert (= (or b!6913345 b!6913342) bm!628530))

(declare-fun m!7627186 () Bool)

(assert (=> b!6913336 m!7627186))

(assert (=> bm!628530 m!7626882))

(declare-fun m!7627188 () Bool)

(assert (=> bm!628531 m!7627188))

(declare-fun m!7627190 () Bool)

(assert (=> b!6913343 m!7627190))

(assert (=> b!6912785 d!2163728))

(declare-fun d!2163738 () Bool)

(assert (=> d!2163738 (= (matchR!9038 r3!135 (_2!37063 lt!2469003)) (matchRSpec!3956 r3!135 (_2!37063 lt!2469003)))))

(declare-fun lt!2469075 () Unit!160522)

(assert (=> d!2163738 (= lt!2469075 (choose!51486 r3!135 (_2!37063 lt!2469003)))))

(assert (=> d!2163738 (validRegex!8601 r3!135)))

(assert (=> d!2163738 (= (mainMatchTheorem!3956 r3!135 (_2!37063 lt!2469003)) lt!2469075)))

(declare-fun bs!1845602 () Bool)

(assert (= bs!1845602 d!2163738))

(assert (=> bs!1845602 m!7626750))

(assert (=> bs!1845602 m!7626744))

(declare-fun m!7627192 () Bool)

(assert (=> bs!1845602 m!7627192))

(assert (=> bs!1845602 m!7626706))

(assert (=> b!6912785 d!2163738))

(declare-fun bs!1845605 () Bool)

(declare-fun b!6913368 () Bool)

(assert (= bs!1845605 (and b!6913368 b!6913108)))

(declare-fun lambda!392958 () Int)

(assert (=> bs!1845605 (= (and (= (_2!37063 lt!2469003) (_2!37063 lt!2468980)) (= (reg!17222 r3!135) (reg!17222 lt!2468983)) (= r3!135 lt!2468983)) (= lambda!392958 lambda!392941))))

(declare-fun bs!1845607 () Bool)

(assert (= bs!1845607 (and b!6913368 d!2163680)))

(assert (=> bs!1845607 (not (= lambda!392958 lambda!392943))))

(declare-fun bs!1845609 () Bool)

(assert (= bs!1845609 (and b!6913368 d!2163652)))

(assert (=> bs!1845609 (not (= lambda!392958 lambda!392936))))

(declare-fun bs!1845611 () Bool)

(assert (= bs!1845611 (and b!6913368 b!6913234)))

(assert (=> bs!1845611 (= (and (= (_2!37063 lt!2469003) s!14361) (= (reg!17222 r3!135) (reg!17222 lt!2469002)) (= r3!135 lt!2469002)) (= lambda!392958 lambda!392946))))

(declare-fun bs!1845613 () Bool)

(assert (= bs!1845613 (and b!6913368 b!6912877)))

(assert (=> bs!1845613 (not (= lambda!392958 lambda!392916))))

(declare-fun bs!1845615 () Bool)

(assert (= bs!1845615 (and b!6913368 b!6912780)))

(assert (=> bs!1845615 (not (= lambda!392958 lambda!392902))))

(declare-fun bs!1845617 () Bool)

(assert (= bs!1845617 (and b!6913368 b!6913337)))

(assert (=> bs!1845617 (= (and (= (_2!37063 lt!2469003) (_1!37063 lt!2469003)) (= (reg!17222 r3!135) (reg!17222 r2!6280)) (= r3!135 r2!6280)) (= lambda!392958 lambda!392955))))

(declare-fun bs!1845619 () Bool)

(assert (= bs!1845619 (and b!6913368 b!6913300)))

(assert (=> bs!1845619 (= (and (= (_2!37063 lt!2469003) s!14361) (= (reg!17222 r3!135) (reg!17222 lt!2468976)) (= r3!135 lt!2468976)) (= lambda!392958 lambda!392950))))

(declare-fun bs!1845620 () Bool)

(assert (= bs!1845620 (and b!6913368 d!2163622)))

(assert (=> bs!1845620 (not (= lambda!392958 lambda!392923))))

(declare-fun bs!1845622 () Bool)

(assert (= bs!1845622 (and b!6913368 b!6913339)))

(assert (=> bs!1845622 (not (= lambda!392958 lambda!392956))))

(declare-fun bs!1845624 () Bool)

(assert (= bs!1845624 (and b!6913368 b!6912781)))

(assert (=> bs!1845624 (not (= lambda!392958 lambda!392900))))

(declare-fun bs!1845626 () Bool)

(assert (= bs!1845626 (and b!6913368 b!6913110)))

(assert (=> bs!1845626 (not (= lambda!392958 lambda!392942))))

(assert (=> bs!1845609 (not (= lambda!392958 lambda!392935))))

(declare-fun bs!1845629 () Bool)

(assert (= bs!1845629 (and b!6913368 b!6913302)))

(assert (=> bs!1845629 (not (= lambda!392958 lambda!392951))))

(declare-fun bs!1845631 () Bool)

(assert (= bs!1845631 (and b!6913368 b!6912875)))

(assert (=> bs!1845631 (= (and (= (_2!37063 lt!2469003) (_1!37063 lt!2468980)) (= (reg!17222 r3!135) (reg!17222 r1!6342)) (= r3!135 r1!6342)) (= lambda!392958 lambda!392915))))

(assert (=> bs!1845624 (not (= lambda!392958 lambda!392899))))

(declare-fun bs!1845634 () Bool)

(assert (= bs!1845634 (and b!6913368 b!6913236)))

(assert (=> bs!1845634 (not (= lambda!392958 lambda!392947))))

(assert (=> bs!1845620 (not (= lambda!392958 lambda!392926))))

(declare-fun bs!1845636 () Bool)

(assert (= bs!1845636 (and b!6913368 d!2163636)))

(assert (=> bs!1845636 (not (= lambda!392958 lambda!392934))))

(assert (=> bs!1845615 (not (= lambda!392958 lambda!392901))))

(declare-fun bs!1845638 () Bool)

(assert (= bs!1845638 (and b!6913368 b!6912778)))

(assert (=> bs!1845638 (not (= lambda!392958 lambda!392904))))

(assert (=> bs!1845638 (not (= lambda!392958 lambda!392903))))

(assert (=> b!6913368 true))

(assert (=> b!6913368 true))

(declare-fun bs!1845640 () Bool)

(declare-fun b!6913370 () Bool)

(assert (= bs!1845640 (and b!6913370 b!6913108)))

(declare-fun lambda!392960 () Int)

(assert (=> bs!1845640 (not (= lambda!392960 lambda!392941))))

(declare-fun bs!1845641 () Bool)

(assert (= bs!1845641 (and b!6913370 d!2163680)))

(assert (=> bs!1845641 (not (= lambda!392960 lambda!392943))))

(declare-fun bs!1845642 () Bool)

(assert (= bs!1845642 (and b!6913370 d!2163652)))

(assert (=> bs!1845642 (= (and (= (_2!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r3!135) r2!6280) (= (regTwo!34298 r3!135) r3!135)) (= lambda!392960 lambda!392936))))

(declare-fun bs!1845643 () Bool)

(assert (= bs!1845643 (and b!6913370 b!6913234)))

(assert (=> bs!1845643 (not (= lambda!392960 lambda!392946))))

(declare-fun bs!1845644 () Bool)

(assert (= bs!1845644 (and b!6913370 b!6912877)))

(assert (=> bs!1845644 (= (and (= (_2!37063 lt!2469003) (_1!37063 lt!2468980)) (= (regOne!34298 r3!135) (regOne!34298 r1!6342)) (= (regTwo!34298 r3!135) (regTwo!34298 r1!6342))) (= lambda!392960 lambda!392916))))

(declare-fun bs!1845645 () Bool)

(assert (= bs!1845645 (and b!6913370 b!6912780)))

(assert (=> bs!1845645 (= (and (= (_2!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r3!135) r2!6280) (= (regTwo!34298 r3!135) r3!135)) (= lambda!392960 lambda!392902))))

(declare-fun bs!1845646 () Bool)

(assert (= bs!1845646 (and b!6913370 b!6913337)))

(assert (=> bs!1845646 (not (= lambda!392960 lambda!392955))))

(declare-fun bs!1845647 () Bool)

(assert (= bs!1845647 (and b!6913370 b!6913300)))

(assert (=> bs!1845647 (not (= lambda!392960 lambda!392950))))

(declare-fun bs!1845648 () Bool)

(assert (= bs!1845648 (and b!6913370 d!2163622)))

(assert (=> bs!1845648 (not (= lambda!392960 lambda!392923))))

(declare-fun bs!1845649 () Bool)

(assert (= bs!1845649 (and b!6913370 b!6913368)))

(assert (=> bs!1845649 (not (= lambda!392960 lambda!392958))))

(declare-fun bs!1845650 () Bool)

(assert (= bs!1845650 (and b!6913370 b!6913339)))

(assert (=> bs!1845650 (= (and (= (_2!37063 lt!2469003) (_1!37063 lt!2469003)) (= (regOne!34298 r3!135) (regOne!34298 r2!6280)) (= (regTwo!34298 r3!135) (regTwo!34298 r2!6280))) (= lambda!392960 lambda!392956))))

(declare-fun bs!1845651 () Bool)

(assert (= bs!1845651 (and b!6913370 b!6912781)))

(assert (=> bs!1845651 (= (and (= (_2!37063 lt!2469003) s!14361) (= (regOne!34298 r3!135) r1!6342) (= (regTwo!34298 r3!135) lt!2468983)) (= lambda!392960 lambda!392900))))

(declare-fun bs!1845652 () Bool)

(assert (= bs!1845652 (and b!6913370 b!6913110)))

(assert (=> bs!1845652 (= (and (= (_2!37063 lt!2469003) (_2!37063 lt!2468980)) (= (regOne!34298 r3!135) (regOne!34298 lt!2468983)) (= (regTwo!34298 r3!135) (regTwo!34298 lt!2468983))) (= lambda!392960 lambda!392942))))

(assert (=> bs!1845642 (not (= lambda!392960 lambda!392935))))

(declare-fun bs!1845653 () Bool)

(assert (= bs!1845653 (and b!6913370 b!6913302)))

(assert (=> bs!1845653 (= (and (= (_2!37063 lt!2469003) s!14361) (= (regOne!34298 r3!135) (regOne!34298 lt!2468976)) (= (regTwo!34298 r3!135) (regTwo!34298 lt!2468976))) (= lambda!392960 lambda!392951))))

(declare-fun bs!1845654 () Bool)

(assert (= bs!1845654 (and b!6913370 b!6912875)))

(assert (=> bs!1845654 (not (= lambda!392960 lambda!392915))))

(assert (=> bs!1845651 (not (= lambda!392960 lambda!392899))))

(declare-fun bs!1845655 () Bool)

(assert (= bs!1845655 (and b!6913370 b!6913236)))

(assert (=> bs!1845655 (= (and (= (_2!37063 lt!2469003) s!14361) (= (regOne!34298 r3!135) (regOne!34298 lt!2469002)) (= (regTwo!34298 r3!135) (regTwo!34298 lt!2469002))) (= lambda!392960 lambda!392947))))

(assert (=> bs!1845648 (= (and (= (_2!37063 lt!2469003) s!14361) (= (regOne!34298 r3!135) r1!6342) (= (regTwo!34298 r3!135) lt!2468983)) (= lambda!392960 lambda!392926))))

(declare-fun bs!1845656 () Bool)

(assert (= bs!1845656 (and b!6913370 d!2163636)))

(assert (=> bs!1845656 (not (= lambda!392960 lambda!392934))))

(assert (=> bs!1845645 (not (= lambda!392960 lambda!392901))))

(declare-fun bs!1845657 () Bool)

(assert (= bs!1845657 (and b!6913370 b!6912778)))

(assert (=> bs!1845657 (= (and (= (_2!37063 lt!2469003) lt!2468979) (= (regOne!34298 r3!135) r1!6342) (= (regTwo!34298 r3!135) r2!6280)) (= lambda!392960 lambda!392904))))

(assert (=> bs!1845657 (not (= lambda!392960 lambda!392903))))

(assert (=> b!6913370 true))

(assert (=> b!6913370 true))

(declare-fun b!6913366 () Bool)

(declare-fun c!1284090 () Bool)

(assert (=> b!6913366 (= c!1284090 ((_ is ElementMatch!16893) r3!135))))

(declare-fun e!4162087 () Bool)

(declare-fun e!4162084 () Bool)

(assert (=> b!6913366 (= e!4162087 e!4162084)))

(declare-fun b!6913367 () Bool)

(declare-fun e!4162088 () Bool)

(assert (=> b!6913367 (= e!4162088 (matchRSpec!3956 (regTwo!34299 r3!135) (_2!37063 lt!2469003)))))

(declare-fun e!4162085 () Bool)

(declare-fun call!628539 () Bool)

(assert (=> b!6913368 (= e!4162085 call!628539)))

(declare-fun bm!628534 () Bool)

(declare-fun call!628540 () Bool)

(assert (=> bm!628534 (= call!628540 (isEmpty!38777 (_2!37063 lt!2469003)))))

(declare-fun d!2163740 () Bool)

(declare-fun c!1284091 () Bool)

(assert (=> d!2163740 (= c!1284091 ((_ is EmptyExpr!16893) r3!135))))

(declare-fun e!4162089 () Bool)

(assert (=> d!2163740 (= (matchRSpec!3956 r3!135 (_2!37063 lt!2469003)) e!4162089)))

(declare-fun b!6913369 () Bool)

(declare-fun c!1284088 () Bool)

(assert (=> b!6913369 (= c!1284088 ((_ is Union!16893) r3!135))))

(declare-fun e!4162090 () Bool)

(assert (=> b!6913369 (= e!4162084 e!4162090)))

(declare-fun bm!628535 () Bool)

(declare-fun c!1284089 () Bool)

(assert (=> bm!628535 (= call!628539 (Exists!3901 (ite c!1284089 lambda!392958 lambda!392960)))))

(declare-fun e!4162086 () Bool)

(assert (=> b!6913370 (= e!4162086 call!628539)))

(declare-fun b!6913371 () Bool)

(assert (=> b!6913371 (= e!4162084 (= (_2!37063 lt!2469003) (Cons!66526 (c!1283947 r3!135) Nil!66526)))))

(declare-fun b!6913372 () Bool)

(assert (=> b!6913372 (= e!4162089 e!4162087)))

(declare-fun res!2819511 () Bool)

(assert (=> b!6913372 (= res!2819511 (not ((_ is EmptyLang!16893) r3!135)))))

(assert (=> b!6913372 (=> (not res!2819511) (not e!4162087))))

(declare-fun b!6913373 () Bool)

(declare-fun res!2819512 () Bool)

(assert (=> b!6913373 (=> res!2819512 e!4162085)))

(assert (=> b!6913373 (= res!2819512 call!628540)))

(assert (=> b!6913373 (= e!4162086 e!4162085)))

(declare-fun b!6913374 () Bool)

(assert (=> b!6913374 (= e!4162090 e!4162088)))

(declare-fun res!2819513 () Bool)

(assert (=> b!6913374 (= res!2819513 (matchRSpec!3956 (regOne!34299 r3!135) (_2!37063 lt!2469003)))))

(assert (=> b!6913374 (=> res!2819513 e!4162088)))

(declare-fun b!6913375 () Bool)

(assert (=> b!6913375 (= e!4162090 e!4162086)))

(assert (=> b!6913375 (= c!1284089 ((_ is Star!16893) r3!135))))

(declare-fun b!6913376 () Bool)

(assert (=> b!6913376 (= e!4162089 call!628540)))

(assert (= (and d!2163740 c!1284091) b!6913376))

(assert (= (and d!2163740 (not c!1284091)) b!6913372))

(assert (= (and b!6913372 res!2819511) b!6913366))

(assert (= (and b!6913366 c!1284090) b!6913371))

(assert (= (and b!6913366 (not c!1284090)) b!6913369))

(assert (= (and b!6913369 c!1284088) b!6913374))

(assert (= (and b!6913369 (not c!1284088)) b!6913375))

(assert (= (and b!6913374 (not res!2819513)) b!6913367))

(assert (= (and b!6913375 c!1284089) b!6913373))

(assert (= (and b!6913375 (not c!1284089)) b!6913370))

(assert (= (and b!6913373 (not res!2819512)) b!6913368))

(assert (= (or b!6913368 b!6913370) bm!628535))

(assert (= (or b!6913376 b!6913373) bm!628534))

(declare-fun m!7627230 () Bool)

(assert (=> b!6913367 m!7627230))

(declare-fun m!7627232 () Bool)

(assert (=> bm!628534 m!7627232))

(declare-fun m!7627236 () Bool)

(assert (=> bm!628535 m!7627236))

(declare-fun m!7627238 () Bool)

(assert (=> b!6913374 m!7627238))

(assert (=> b!6912785 d!2163740))

(declare-fun d!2163750 () Bool)

(assert (=> d!2163750 (= (matchR!9038 r2!6280 (_1!37063 lt!2469003)) (matchRSpec!3956 r2!6280 (_1!37063 lt!2469003)))))

(declare-fun lt!2469081 () Unit!160522)

(assert (=> d!2163750 (= lt!2469081 (choose!51486 r2!6280 (_1!37063 lt!2469003)))))

(assert (=> d!2163750 (validRegex!8601 r2!6280)))

(assert (=> d!2163750 (= (mainMatchTheorem!3956 r2!6280 (_1!37063 lt!2469003)) lt!2469081)))

(declare-fun bs!1845658 () Bool)

(assert (= bs!1845658 d!2163750))

(assert (=> bs!1845658 m!7626696))

(assert (=> bs!1845658 m!7626742))

(declare-fun m!7627240 () Bool)

(assert (=> bs!1845658 m!7627240))

(assert (=> bs!1845658 m!7626704))

(assert (=> b!6912785 d!2163750))

(declare-fun lt!2469082 () List!66650)

(declare-fun b!6913417 () Bool)

(declare-fun e!4162111 () Bool)

(assert (=> b!6913417 (= e!4162111 (or (not (= (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003)) Nil!66526)) (= lt!2469082 (_1!37063 lt!2468980))))))

(declare-fun b!6913414 () Bool)

(declare-fun e!4162110 () List!66650)

(assert (=> b!6913414 (= e!4162110 (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003)))))

(declare-fun b!6913415 () Bool)

(assert (=> b!6913415 (= e!4162110 (Cons!66526 (h!72974 (_1!37063 lt!2468980)) (++!14946 (t!380393 (_1!37063 lt!2468980)) (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003)))))))

(declare-fun b!6913416 () Bool)

(declare-fun res!2819536 () Bool)

(assert (=> b!6913416 (=> (not res!2819536) (not e!4162111))))

(assert (=> b!6913416 (= res!2819536 (= (size!40767 lt!2469082) (+ (size!40767 (_1!37063 lt!2468980)) (size!40767 (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003))))))))

(declare-fun d!2163752 () Bool)

(assert (=> d!2163752 e!4162111))

(declare-fun res!2819535 () Bool)

(assert (=> d!2163752 (=> (not res!2819535) (not e!4162111))))

(assert (=> d!2163752 (= res!2819535 (= (content!13070 lt!2469082) ((_ map or) (content!13070 (_1!37063 lt!2468980)) (content!13070 (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003))))))))

(assert (=> d!2163752 (= lt!2469082 e!4162110)))

(declare-fun c!1284100 () Bool)

(assert (=> d!2163752 (= c!1284100 ((_ is Nil!66526) (_1!37063 lt!2468980)))))

(assert (=> d!2163752 (= (++!14946 (_1!37063 lt!2468980) (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003))) lt!2469082)))

(assert (= (and d!2163752 c!1284100) b!6913414))

(assert (= (and d!2163752 (not c!1284100)) b!6913415))

(assert (= (and d!2163752 res!2819535) b!6913416))

(assert (= (and b!6913416 res!2819536) b!6913417))

(assert (=> b!6913415 m!7626738))

(declare-fun m!7627244 () Bool)

(assert (=> b!6913415 m!7627244))

(declare-fun m!7627248 () Bool)

(assert (=> b!6913416 m!7627248))

(declare-fun m!7627252 () Bool)

(assert (=> b!6913416 m!7627252))

(assert (=> b!6913416 m!7626738))

(declare-fun m!7627254 () Bool)

(assert (=> b!6913416 m!7627254))

(declare-fun m!7627256 () Bool)

(assert (=> d!2163752 m!7627256))

(declare-fun m!7627260 () Bool)

(assert (=> d!2163752 m!7627260))

(assert (=> d!2163752 m!7626738))

(declare-fun m!7627262 () Bool)

(assert (=> d!2163752 m!7627262))

(assert (=> b!6912785 d!2163752))

(declare-fun b!6913418 () Bool)

(declare-fun e!4162116 () Bool)

(declare-fun lt!2469083 () Bool)

(assert (=> b!6913418 (= e!4162116 (not lt!2469083))))

(declare-fun b!6913419 () Bool)

(declare-fun res!2819544 () Bool)

(declare-fun e!4162112 () Bool)

(assert (=> b!6913419 (=> res!2819544 e!4162112)))

(assert (=> b!6913419 (= res!2819544 (not (isEmpty!38777 (tail!12916 (_2!37063 lt!2469003)))))))

(declare-fun b!6913420 () Bool)

(declare-fun res!2819542 () Bool)

(declare-fun e!4162114 () Bool)

(assert (=> b!6913420 (=> (not res!2819542) (not e!4162114))))

(declare-fun call!628543 () Bool)

(assert (=> b!6913420 (= res!2819542 (not call!628543))))

(declare-fun b!6913421 () Bool)

(declare-fun e!4162118 () Bool)

(assert (=> b!6913421 (= e!4162118 e!4162116)))

(declare-fun c!1284102 () Bool)

(assert (=> b!6913421 (= c!1284102 ((_ is EmptyLang!16893) r3!135))))

(declare-fun b!6913422 () Bool)

(declare-fun e!4162117 () Bool)

(assert (=> b!6913422 (= e!4162117 (nullable!6732 r3!135))))

(declare-fun b!6913424 () Bool)

(assert (=> b!6913424 (= e!4162114 (= (head!13864 (_2!37063 lt!2469003)) (c!1283947 r3!135)))))

(declare-fun b!6913425 () Bool)

(declare-fun res!2819540 () Bool)

(assert (=> b!6913425 (=> (not res!2819540) (not e!4162114))))

(assert (=> b!6913425 (= res!2819540 (isEmpty!38777 (tail!12916 (_2!37063 lt!2469003))))))

(declare-fun bm!628538 () Bool)

(assert (=> bm!628538 (= call!628543 (isEmpty!38777 (_2!37063 lt!2469003)))))

(declare-fun b!6913426 () Bool)

(declare-fun e!4162115 () Bool)

(declare-fun e!4162113 () Bool)

(assert (=> b!6913426 (= e!4162115 e!4162113)))

(declare-fun res!2819539 () Bool)

(assert (=> b!6913426 (=> (not res!2819539) (not e!4162113))))

(assert (=> b!6913426 (= res!2819539 (not lt!2469083))))

(declare-fun b!6913427 () Bool)

(declare-fun res!2819541 () Bool)

(assert (=> b!6913427 (=> res!2819541 e!4162115)))

(assert (=> b!6913427 (= res!2819541 (not ((_ is ElementMatch!16893) r3!135)))))

(assert (=> b!6913427 (= e!4162116 e!4162115)))

(declare-fun b!6913423 () Bool)

(assert (=> b!6913423 (= e!4162118 (= lt!2469083 call!628543))))

(declare-fun d!2163754 () Bool)

(assert (=> d!2163754 e!4162118))

(declare-fun c!1284103 () Bool)

(assert (=> d!2163754 (= c!1284103 ((_ is EmptyExpr!16893) r3!135))))

(assert (=> d!2163754 (= lt!2469083 e!4162117)))

(declare-fun c!1284101 () Bool)

(assert (=> d!2163754 (= c!1284101 (isEmpty!38777 (_2!37063 lt!2469003)))))

(assert (=> d!2163754 (validRegex!8601 r3!135)))

(assert (=> d!2163754 (= (matchR!9038 r3!135 (_2!37063 lt!2469003)) lt!2469083)))

(declare-fun b!6913428 () Bool)

(assert (=> b!6913428 (= e!4162112 (not (= (head!13864 (_2!37063 lt!2469003)) (c!1283947 r3!135))))))

(declare-fun b!6913429 () Bool)

(assert (=> b!6913429 (= e!4162117 (matchR!9038 (derivativeStep!5411 r3!135 (head!13864 (_2!37063 lt!2469003))) (tail!12916 (_2!37063 lt!2469003))))))

(declare-fun b!6913430 () Bool)

(assert (=> b!6913430 (= e!4162113 e!4162112)))

(declare-fun res!2819537 () Bool)

(assert (=> b!6913430 (=> res!2819537 e!4162112)))

(assert (=> b!6913430 (= res!2819537 call!628543)))

(declare-fun b!6913431 () Bool)

(declare-fun res!2819538 () Bool)

(assert (=> b!6913431 (=> res!2819538 e!4162115)))

(assert (=> b!6913431 (= res!2819538 e!4162114)))

(declare-fun res!2819543 () Bool)

(assert (=> b!6913431 (=> (not res!2819543) (not e!4162114))))

(assert (=> b!6913431 (= res!2819543 lt!2469083)))

(assert (= (and d!2163754 c!1284101) b!6913422))

(assert (= (and d!2163754 (not c!1284101)) b!6913429))

(assert (= (and d!2163754 c!1284103) b!6913423))

(assert (= (and d!2163754 (not c!1284103)) b!6913421))

(assert (= (and b!6913421 c!1284102) b!6913418))

(assert (= (and b!6913421 (not c!1284102)) b!6913427))

(assert (= (and b!6913427 (not res!2819541)) b!6913431))

(assert (= (and b!6913431 res!2819543) b!6913420))

(assert (= (and b!6913420 res!2819542) b!6913425))

(assert (= (and b!6913425 res!2819540) b!6913424))

(assert (= (and b!6913431 (not res!2819538)) b!6913426))

(assert (= (and b!6913426 res!2819539) b!6913430))

(assert (= (and b!6913430 (not res!2819537)) b!6913419))

(assert (= (and b!6913419 (not res!2819544)) b!6913428))

(assert (= (or b!6913423 b!6913420 b!6913430) bm!628538))

(declare-fun m!7627276 () Bool)

(assert (=> b!6913429 m!7627276))

(assert (=> b!6913429 m!7627276))

(declare-fun m!7627278 () Bool)

(assert (=> b!6913429 m!7627278))

(declare-fun m!7627280 () Bool)

(assert (=> b!6913429 m!7627280))

(assert (=> b!6913429 m!7627278))

(assert (=> b!6913429 m!7627280))

(declare-fun m!7627282 () Bool)

(assert (=> b!6913429 m!7627282))

(declare-fun m!7627284 () Bool)

(assert (=> b!6913422 m!7627284))

(assert (=> b!6913425 m!7627280))

(assert (=> b!6913425 m!7627280))

(declare-fun m!7627286 () Bool)

(assert (=> b!6913425 m!7627286))

(assert (=> bm!628538 m!7627232))

(assert (=> b!6913419 m!7627280))

(assert (=> b!6913419 m!7627280))

(assert (=> b!6913419 m!7627286))

(assert (=> d!2163754 m!7627232))

(assert (=> d!2163754 m!7626706))

(assert (=> b!6913428 m!7627276))

(assert (=> b!6913424 m!7627276))

(assert (=> b!6912774 d!2163754))

(declare-fun e!4162120 () Bool)

(declare-fun b!6913435 () Bool)

(declare-fun lt!2469086 () List!66650)

(assert (=> b!6913435 (= e!4162120 (or (not (= (_2!37063 lt!2469003) Nil!66526)) (= lt!2469086 lt!2468979)))))

(declare-fun b!6913432 () Bool)

(declare-fun e!4162119 () List!66650)

(assert (=> b!6913432 (= e!4162119 (_2!37063 lt!2469003))))

(declare-fun b!6913433 () Bool)

(assert (=> b!6913433 (= e!4162119 (Cons!66526 (h!72974 lt!2468979) (++!14946 (t!380393 lt!2468979) (_2!37063 lt!2469003))))))

(declare-fun b!6913434 () Bool)

(declare-fun res!2819546 () Bool)

(assert (=> b!6913434 (=> (not res!2819546) (not e!4162120))))

(assert (=> b!6913434 (= res!2819546 (= (size!40767 lt!2469086) (+ (size!40767 lt!2468979) (size!40767 (_2!37063 lt!2469003)))))))

(declare-fun d!2163762 () Bool)

(assert (=> d!2163762 e!4162120))

(declare-fun res!2819545 () Bool)

(assert (=> d!2163762 (=> (not res!2819545) (not e!4162120))))

(assert (=> d!2163762 (= res!2819545 (= (content!13070 lt!2469086) ((_ map or) (content!13070 lt!2468979) (content!13070 (_2!37063 lt!2469003)))))))

(assert (=> d!2163762 (= lt!2469086 e!4162119)))

(declare-fun c!1284104 () Bool)

(assert (=> d!2163762 (= c!1284104 ((_ is Nil!66526) lt!2468979))))

(assert (=> d!2163762 (= (++!14946 lt!2468979 (_2!37063 lt!2469003)) lt!2469086)))

(assert (= (and d!2163762 c!1284104) b!6913432))

(assert (= (and d!2163762 (not c!1284104)) b!6913433))

(assert (= (and d!2163762 res!2819545) b!6913434))

(assert (= (and b!6913434 res!2819546) b!6913435))

(declare-fun m!7627288 () Bool)

(assert (=> b!6913433 m!7627288))

(declare-fun m!7627290 () Bool)

(assert (=> b!6913434 m!7627290))

(declare-fun m!7627292 () Bool)

(assert (=> b!6913434 m!7627292))

(assert (=> b!6913434 m!7627146))

(declare-fun m!7627294 () Bool)

(assert (=> d!2163762 m!7627294))

(declare-fun m!7627296 () Bool)

(assert (=> d!2163762 m!7627296))

(assert (=> d!2163762 m!7627152))

(assert (=> b!6912778 d!2163762))

(declare-fun d!2163764 () Bool)

(assert (=> d!2163764 (= (Exists!3901 lambda!392904) (choose!51487 lambda!392904))))

(declare-fun bs!1845666 () Bool)

(assert (= bs!1845666 d!2163764))

(declare-fun m!7627298 () Bool)

(assert (=> bs!1845666 m!7627298))

(assert (=> b!6912778 d!2163764))

(declare-fun lt!2469087 () List!66650)

(declare-fun e!4162122 () Bool)

(declare-fun b!6913439 () Bool)

(assert (=> b!6913439 (= e!4162122 (or (not (= (_1!37063 lt!2469003) Nil!66526)) (= lt!2469087 (_1!37063 lt!2468980))))))

(declare-fun b!6913436 () Bool)

(declare-fun e!4162121 () List!66650)

(assert (=> b!6913436 (= e!4162121 (_1!37063 lt!2469003))))

(declare-fun b!6913437 () Bool)

(assert (=> b!6913437 (= e!4162121 (Cons!66526 (h!72974 (_1!37063 lt!2468980)) (++!14946 (t!380393 (_1!37063 lt!2468980)) (_1!37063 lt!2469003))))))

(declare-fun b!6913438 () Bool)

(declare-fun res!2819548 () Bool)

(assert (=> b!6913438 (=> (not res!2819548) (not e!4162122))))

(assert (=> b!6913438 (= res!2819548 (= (size!40767 lt!2469087) (+ (size!40767 (_1!37063 lt!2468980)) (size!40767 (_1!37063 lt!2469003)))))))

(declare-fun d!2163766 () Bool)

(assert (=> d!2163766 e!4162122))

(declare-fun res!2819547 () Bool)

(assert (=> d!2163766 (=> (not res!2819547) (not e!4162122))))

(assert (=> d!2163766 (= res!2819547 (= (content!13070 lt!2469087) ((_ map or) (content!13070 (_1!37063 lt!2468980)) (content!13070 (_1!37063 lt!2469003)))))))

(assert (=> d!2163766 (= lt!2469087 e!4162121)))

(declare-fun c!1284105 () Bool)

(assert (=> d!2163766 (= c!1284105 ((_ is Nil!66526) (_1!37063 lt!2468980)))))

(assert (=> d!2163766 (= (++!14946 (_1!37063 lt!2468980) (_1!37063 lt!2469003)) lt!2469087)))

(assert (= (and d!2163766 c!1284105) b!6913436))

(assert (= (and d!2163766 (not c!1284105)) b!6913437))

(assert (= (and d!2163766 res!2819547) b!6913438))

(assert (= (and b!6913438 res!2819548) b!6913439))

(declare-fun m!7627300 () Bool)

(assert (=> b!6913437 m!7627300))

(declare-fun m!7627302 () Bool)

(assert (=> b!6913438 m!7627302))

(assert (=> b!6913438 m!7627252))

(assert (=> b!6913438 m!7627144))

(declare-fun m!7627304 () Bool)

(assert (=> d!2163766 m!7627304))

(assert (=> d!2163766 m!7627260))

(assert (=> d!2163766 m!7627150))

(assert (=> b!6912778 d!2163766))

(declare-fun d!2163768 () Bool)

(assert (=> d!2163768 (= (isDefined!13375 (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979)) (not (isEmpty!38779 (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979))))))

(declare-fun bs!1845672 () Bool)

(assert (= bs!1845672 d!2163768))

(assert (=> bs!1845672 m!7626710))

(declare-fun m!7627306 () Bool)

(assert (=> bs!1845672 m!7627306))

(assert (=> b!6912778 d!2163768))

(declare-fun d!2163770 () Bool)

(assert (=> d!2163770 (= (++!14946 (++!14946 (_1!37063 lt!2468980) (_1!37063 lt!2469003)) (_2!37063 lt!2469003)) (++!14946 (_1!37063 lt!2468980) (++!14946 (_1!37063 lt!2469003) (_2!37063 lt!2469003))))))

(declare-fun lt!2469090 () Unit!160522)

(declare-fun choose!51494 (List!66650 List!66650 List!66650) Unit!160522)

(assert (=> d!2163770 (= lt!2469090 (choose!51494 (_1!37063 lt!2468980) (_1!37063 lt!2469003) (_2!37063 lt!2469003)))))

(assert (=> d!2163770 (= (lemmaConcatAssociativity!3004 (_1!37063 lt!2468980) (_1!37063 lt!2469003) (_2!37063 lt!2469003)) lt!2469090)))

(declare-fun bs!1845683 () Bool)

(assert (= bs!1845683 d!2163770))

(assert (=> bs!1845683 m!7626716))

(declare-fun m!7627312 () Bool)

(assert (=> bs!1845683 m!7627312))

(assert (=> bs!1845683 m!7626716))

(declare-fun m!7627314 () Bool)

(assert (=> bs!1845683 m!7627314))

(assert (=> bs!1845683 m!7626738))

(assert (=> bs!1845683 m!7626738))

(assert (=> bs!1845683 m!7626740))

(assert (=> b!6912778 d!2163770))

(declare-fun d!2163774 () Bool)

(assert (=> d!2163774 (= (matchR!9038 lt!2468978 lt!2468979) (matchRSpec!3956 lt!2468978 lt!2468979))))

(declare-fun lt!2469091 () Unit!160522)

(assert (=> d!2163774 (= lt!2469091 (choose!51486 lt!2468978 lt!2468979))))

(assert (=> d!2163774 (validRegex!8601 lt!2468978)))

(assert (=> d!2163774 (= (mainMatchTheorem!3956 lt!2468978 lt!2468979) lt!2469091)))

(declare-fun bs!1845684 () Bool)

(assert (= bs!1845684 d!2163774))

(assert (=> bs!1845684 m!7626732))

(assert (=> bs!1845684 m!7626726))

(declare-fun m!7627316 () Bool)

(assert (=> bs!1845684 m!7627316))

(declare-fun m!7627318 () Bool)

(assert (=> bs!1845684 m!7627318))

(assert (=> b!6912778 d!2163774))

(declare-fun bs!1845685 () Bool)

(declare-fun d!2163776 () Bool)

(assert (= bs!1845685 (and d!2163776 b!6913108)))

(declare-fun lambda!392962 () Int)

(assert (=> bs!1845685 (not (= lambda!392962 lambda!392941))))

(declare-fun bs!1845686 () Bool)

(assert (= bs!1845686 (and d!2163776 d!2163680)))

(assert (=> bs!1845686 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392962 lambda!392943))))

(declare-fun bs!1845687 () Bool)

(assert (= bs!1845687 (and d!2163776 d!2163652)))

(assert (=> bs!1845687 (not (= lambda!392962 lambda!392936))))

(declare-fun bs!1845688 () Bool)

(assert (= bs!1845688 (and d!2163776 b!6913234)))

(assert (=> bs!1845688 (not (= lambda!392962 lambda!392946))))

(declare-fun bs!1845689 () Bool)

(assert (= bs!1845689 (and d!2163776 b!6912877)))

(assert (=> bs!1845689 (not (= lambda!392962 lambda!392916))))

(declare-fun bs!1845690 () Bool)

(assert (= bs!1845690 (and d!2163776 b!6913337)))

(assert (=> bs!1845690 (not (= lambda!392962 lambda!392955))))

(declare-fun bs!1845691 () Bool)

(assert (= bs!1845691 (and d!2163776 b!6913300)))

(assert (=> bs!1845691 (not (= lambda!392962 lambda!392950))))

(declare-fun bs!1845692 () Bool)

(assert (= bs!1845692 (and d!2163776 d!2163622)))

(assert (=> bs!1845692 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392962 lambda!392923))))

(declare-fun bs!1845693 () Bool)

(assert (= bs!1845693 (and d!2163776 b!6913368)))

(assert (=> bs!1845693 (not (= lambda!392962 lambda!392958))))

(declare-fun bs!1845695 () Bool)

(assert (= bs!1845695 (and d!2163776 b!6913339)))

(assert (=> bs!1845695 (not (= lambda!392962 lambda!392956))))

(declare-fun bs!1845696 () Bool)

(assert (= bs!1845696 (and d!2163776 b!6912781)))

(assert (=> bs!1845696 (not (= lambda!392962 lambda!392900))))

(declare-fun bs!1845697 () Bool)

(assert (= bs!1845697 (and d!2163776 b!6913110)))

(assert (=> bs!1845697 (not (= lambda!392962 lambda!392942))))

(assert (=> bs!1845687 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392962 lambda!392935))))

(declare-fun bs!1845698 () Bool)

(assert (= bs!1845698 (and d!2163776 b!6913302)))

(assert (=> bs!1845698 (not (= lambda!392962 lambda!392951))))

(declare-fun bs!1845699 () Bool)

(assert (= bs!1845699 (and d!2163776 b!6912875)))

(assert (=> bs!1845699 (not (= lambda!392962 lambda!392915))))

(assert (=> bs!1845696 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392962 lambda!392899))))

(declare-fun bs!1845700 () Bool)

(assert (= bs!1845700 (and d!2163776 b!6913236)))

(assert (=> bs!1845700 (not (= lambda!392962 lambda!392947))))

(assert (=> bs!1845692 (not (= lambda!392962 lambda!392926))))

(declare-fun bs!1845701 () Bool)

(assert (= bs!1845701 (and d!2163776 d!2163636)))

(assert (=> bs!1845701 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392962 lambda!392934))))

(declare-fun bs!1845702 () Bool)

(assert (= bs!1845702 (and d!2163776 b!6912780)))

(assert (=> bs!1845702 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392962 lambda!392901))))

(assert (=> bs!1845702 (not (= lambda!392962 lambda!392902))))

(declare-fun bs!1845703 () Bool)

(assert (= bs!1845703 (and d!2163776 b!6913370)))

(assert (=> bs!1845703 (not (= lambda!392962 lambda!392960))))

(declare-fun bs!1845705 () Bool)

(assert (= bs!1845705 (and d!2163776 b!6912778)))

(assert (=> bs!1845705 (not (= lambda!392962 lambda!392904))))

(assert (=> bs!1845705 (= lambda!392962 lambda!392903)))

(assert (=> d!2163776 true))

(assert (=> d!2163776 true))

(assert (=> d!2163776 true))

(assert (=> d!2163776 (= (isDefined!13375 (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979)) (Exists!3901 lambda!392962))))

(declare-fun lt!2469092 () Unit!160522)

(assert (=> d!2163776 (= lt!2469092 (choose!51493 r1!6342 r2!6280 lt!2468979))))

(assert (=> d!2163776 (validRegex!8601 r1!6342)))

(assert (=> d!2163776 (= (lemmaFindConcatSeparationEquivalentToExists!2848 r1!6342 r2!6280 lt!2468979) lt!2469092)))

(declare-fun bs!1845706 () Bool)

(assert (= bs!1845706 d!2163776))

(declare-fun m!7627342 () Bool)

(assert (=> bs!1845706 m!7627342))

(assert (=> bs!1845706 m!7626710))

(assert (=> bs!1845706 m!7626712))

(declare-fun m!7627344 () Bool)

(assert (=> bs!1845706 m!7627344))

(assert (=> bs!1845706 m!7626710))

(assert (=> bs!1845706 m!7626736))

(assert (=> b!6912778 d!2163776))

(declare-fun d!2163786 () Bool)

(assert (=> d!2163786 (isDefined!13375 (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979))))

(declare-fun lt!2469101 () Unit!160522)

(declare-fun choose!51495 (Regex!16893 Regex!16893 List!66650 List!66650 List!66650 List!66650 List!66650) Unit!160522)

(assert (=> d!2163786 (= lt!2469101 (choose!51495 r1!6342 r2!6280 (_1!37063 lt!2468980) (_1!37063 lt!2469003) lt!2468979 Nil!66526 lt!2468979))))

(assert (=> d!2163786 (validRegex!8601 r1!6342)))

(assert (=> d!2163786 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!74 r1!6342 r2!6280 (_1!37063 lt!2468980) (_1!37063 lt!2469003) lt!2468979 Nil!66526 lt!2468979) lt!2469101)))

(declare-fun bs!1845727 () Bool)

(assert (= bs!1845727 d!2163786))

(assert (=> bs!1845727 m!7626710))

(assert (=> bs!1845727 m!7626710))

(assert (=> bs!1845727 m!7626712))

(declare-fun m!7627346 () Bool)

(assert (=> bs!1845727 m!7627346))

(assert (=> bs!1845727 m!7626736))

(assert (=> b!6912778 d!2163786))

(declare-fun bs!1845728 () Bool)

(declare-fun b!6913450 () Bool)

(assert (= bs!1845728 (and b!6913450 b!6913108)))

(declare-fun lambda!392965 () Int)

(assert (=> bs!1845728 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= (reg!17222 lt!2468978) (reg!17222 lt!2468983)) (= lt!2468978 lt!2468983)) (= lambda!392965 lambda!392941))))

(declare-fun bs!1845729 () Bool)

(assert (= bs!1845729 (and b!6913450 d!2163680)))

(assert (=> bs!1845729 (not (= lambda!392965 lambda!392943))))

(declare-fun bs!1845730 () Bool)

(assert (= bs!1845730 (and b!6913450 d!2163652)))

(assert (=> bs!1845730 (not (= lambda!392965 lambda!392936))))

(declare-fun bs!1845731 () Bool)

(assert (= bs!1845731 (and b!6913450 b!6913234)))

(assert (=> bs!1845731 (= (and (= lt!2468979 s!14361) (= (reg!17222 lt!2468978) (reg!17222 lt!2469002)) (= lt!2468978 lt!2469002)) (= lambda!392965 lambda!392946))))

(declare-fun bs!1845733 () Bool)

(assert (= bs!1845733 (and b!6913450 b!6913337)))

(assert (=> bs!1845733 (= (and (= lt!2468979 (_1!37063 lt!2469003)) (= (reg!17222 lt!2468978) (reg!17222 r2!6280)) (= lt!2468978 r2!6280)) (= lambda!392965 lambda!392955))))

(declare-fun bs!1845734 () Bool)

(assert (= bs!1845734 (and b!6913450 b!6913300)))

(assert (=> bs!1845734 (= (and (= lt!2468979 s!14361) (= (reg!17222 lt!2468978) (reg!17222 lt!2468976)) (= lt!2468978 lt!2468976)) (= lambda!392965 lambda!392950))))

(declare-fun bs!1845735 () Bool)

(assert (= bs!1845735 (and b!6913450 d!2163622)))

(assert (=> bs!1845735 (not (= lambda!392965 lambda!392923))))

(declare-fun bs!1845736 () Bool)

(assert (= bs!1845736 (and b!6913450 b!6913368)))

(assert (=> bs!1845736 (= (and (= lt!2468979 (_2!37063 lt!2469003)) (= (reg!17222 lt!2468978) (reg!17222 r3!135)) (= lt!2468978 r3!135)) (= lambda!392965 lambda!392958))))

(declare-fun bs!1845737 () Bool)

(assert (= bs!1845737 (and b!6913450 b!6913339)))

(assert (=> bs!1845737 (not (= lambda!392965 lambda!392956))))

(declare-fun bs!1845738 () Bool)

(assert (= bs!1845738 (and b!6913450 b!6912781)))

(assert (=> bs!1845738 (not (= lambda!392965 lambda!392900))))

(declare-fun bs!1845739 () Bool)

(assert (= bs!1845739 (and b!6913450 b!6913110)))

(assert (=> bs!1845739 (not (= lambda!392965 lambda!392942))))

(assert (=> bs!1845730 (not (= lambda!392965 lambda!392935))))

(declare-fun bs!1845741 () Bool)

(assert (= bs!1845741 (and b!6913450 b!6913302)))

(assert (=> bs!1845741 (not (= lambda!392965 lambda!392951))))

(declare-fun bs!1845742 () Bool)

(assert (= bs!1845742 (and b!6913450 d!2163776)))

(assert (=> bs!1845742 (not (= lambda!392965 lambda!392962))))

(declare-fun bs!1845743 () Bool)

(assert (= bs!1845743 (and b!6913450 b!6912877)))

(assert (=> bs!1845743 (not (= lambda!392965 lambda!392916))))

(declare-fun bs!1845744 () Bool)

(assert (= bs!1845744 (and b!6913450 b!6912875)))

(assert (=> bs!1845744 (= (and (= lt!2468979 (_1!37063 lt!2468980)) (= (reg!17222 lt!2468978) (reg!17222 r1!6342)) (= lt!2468978 r1!6342)) (= lambda!392965 lambda!392915))))

(assert (=> bs!1845738 (not (= lambda!392965 lambda!392899))))

(declare-fun bs!1845745 () Bool)

(assert (= bs!1845745 (and b!6913450 b!6913236)))

(assert (=> bs!1845745 (not (= lambda!392965 lambda!392947))))

(assert (=> bs!1845735 (not (= lambda!392965 lambda!392926))))

(declare-fun bs!1845746 () Bool)

(assert (= bs!1845746 (and b!6913450 d!2163636)))

(assert (=> bs!1845746 (not (= lambda!392965 lambda!392934))))

(declare-fun bs!1845747 () Bool)

(assert (= bs!1845747 (and b!6913450 b!6912780)))

(assert (=> bs!1845747 (not (= lambda!392965 lambda!392901))))

(assert (=> bs!1845747 (not (= lambda!392965 lambda!392902))))

(declare-fun bs!1845748 () Bool)

(assert (= bs!1845748 (and b!6913450 b!6913370)))

(assert (=> bs!1845748 (not (= lambda!392965 lambda!392960))))

(declare-fun bs!1845749 () Bool)

(assert (= bs!1845749 (and b!6913450 b!6912778)))

(assert (=> bs!1845749 (not (= lambda!392965 lambda!392904))))

(assert (=> bs!1845749 (not (= lambda!392965 lambda!392903))))

(assert (=> b!6913450 true))

(assert (=> b!6913450 true))

(declare-fun bs!1845750 () Bool)

(declare-fun b!6913452 () Bool)

(assert (= bs!1845750 (and b!6913452 b!6913108)))

(declare-fun lambda!392966 () Int)

(assert (=> bs!1845750 (not (= lambda!392966 lambda!392941))))

(declare-fun bs!1845751 () Bool)

(assert (= bs!1845751 (and b!6913452 d!2163680)))

(assert (=> bs!1845751 (not (= lambda!392966 lambda!392943))))

(declare-fun bs!1845752 () Bool)

(assert (= bs!1845752 (and b!6913452 d!2163652)))

(assert (=> bs!1845752 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468978) r2!6280) (= (regTwo!34298 lt!2468978) r3!135)) (= lambda!392966 lambda!392936))))

(declare-fun bs!1845753 () Bool)

(assert (= bs!1845753 (and b!6913452 b!6913234)))

(assert (=> bs!1845753 (not (= lambda!392966 lambda!392946))))

(declare-fun bs!1845754 () Bool)

(assert (= bs!1845754 (and b!6913452 b!6913450)))

(assert (=> bs!1845754 (not (= lambda!392966 lambda!392965))))

(declare-fun bs!1845755 () Bool)

(assert (= bs!1845755 (and b!6913452 b!6913337)))

(assert (=> bs!1845755 (not (= lambda!392966 lambda!392955))))

(declare-fun bs!1845756 () Bool)

(assert (= bs!1845756 (and b!6913452 b!6913300)))

(assert (=> bs!1845756 (not (= lambda!392966 lambda!392950))))

(declare-fun bs!1845757 () Bool)

(assert (= bs!1845757 (and b!6913452 d!2163622)))

(assert (=> bs!1845757 (not (= lambda!392966 lambda!392923))))

(declare-fun bs!1845758 () Bool)

(assert (= bs!1845758 (and b!6913452 b!6913368)))

(assert (=> bs!1845758 (not (= lambda!392966 lambda!392958))))

(declare-fun bs!1845759 () Bool)

(assert (= bs!1845759 (and b!6913452 b!6913339)))

(assert (=> bs!1845759 (= (and (= lt!2468979 (_1!37063 lt!2469003)) (= (regOne!34298 lt!2468978) (regOne!34298 r2!6280)) (= (regTwo!34298 lt!2468978) (regTwo!34298 r2!6280))) (= lambda!392966 lambda!392956))))

(declare-fun bs!1845760 () Bool)

(assert (= bs!1845760 (and b!6913452 b!6912781)))

(assert (=> bs!1845760 (= (and (= lt!2468979 s!14361) (= (regOne!34298 lt!2468978) r1!6342) (= (regTwo!34298 lt!2468978) lt!2468983)) (= lambda!392966 lambda!392900))))

(declare-fun bs!1845761 () Bool)

(assert (= bs!1845761 (and b!6913452 b!6913110)))

(assert (=> bs!1845761 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468978) (regOne!34298 lt!2468983)) (= (regTwo!34298 lt!2468978) (regTwo!34298 lt!2468983))) (= lambda!392966 lambda!392942))))

(assert (=> bs!1845752 (not (= lambda!392966 lambda!392935))))

(declare-fun bs!1845762 () Bool)

(assert (= bs!1845762 (and b!6913452 b!6913302)))

(assert (=> bs!1845762 (= (and (= lt!2468979 s!14361) (= (regOne!34298 lt!2468978) (regOne!34298 lt!2468976)) (= (regTwo!34298 lt!2468978) (regTwo!34298 lt!2468976))) (= lambda!392966 lambda!392951))))

(declare-fun bs!1845763 () Bool)

(assert (= bs!1845763 (and b!6913452 d!2163776)))

(assert (=> bs!1845763 (not (= lambda!392966 lambda!392962))))

(declare-fun bs!1845764 () Bool)

(assert (= bs!1845764 (and b!6913452 b!6912877)))

(assert (=> bs!1845764 (= (and (= lt!2468979 (_1!37063 lt!2468980)) (= (regOne!34298 lt!2468978) (regOne!34298 r1!6342)) (= (regTwo!34298 lt!2468978) (regTwo!34298 r1!6342))) (= lambda!392966 lambda!392916))))

(declare-fun bs!1845765 () Bool)

(assert (= bs!1845765 (and b!6913452 b!6912875)))

(assert (=> bs!1845765 (not (= lambda!392966 lambda!392915))))

(assert (=> bs!1845760 (not (= lambda!392966 lambda!392899))))

(declare-fun bs!1845766 () Bool)

(assert (= bs!1845766 (and b!6913452 b!6913236)))

(assert (=> bs!1845766 (= (and (= lt!2468979 s!14361) (= (regOne!34298 lt!2468978) (regOne!34298 lt!2469002)) (= (regTwo!34298 lt!2468978) (regTwo!34298 lt!2469002))) (= lambda!392966 lambda!392947))))

(assert (=> bs!1845757 (= (and (= lt!2468979 s!14361) (= (regOne!34298 lt!2468978) r1!6342) (= (regTwo!34298 lt!2468978) lt!2468983)) (= lambda!392966 lambda!392926))))

(declare-fun bs!1845768 () Bool)

(assert (= bs!1845768 (and b!6913452 d!2163636)))

(assert (=> bs!1845768 (not (= lambda!392966 lambda!392934))))

(declare-fun bs!1845769 () Bool)

(assert (= bs!1845769 (and b!6913452 b!6912780)))

(assert (=> bs!1845769 (not (= lambda!392966 lambda!392901))))

(assert (=> bs!1845769 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= (regOne!34298 lt!2468978) r2!6280) (= (regTwo!34298 lt!2468978) r3!135)) (= lambda!392966 lambda!392902))))

(declare-fun bs!1845770 () Bool)

(assert (= bs!1845770 (and b!6913452 b!6913370)))

(assert (=> bs!1845770 (= (and (= lt!2468979 (_2!37063 lt!2469003)) (= (regOne!34298 lt!2468978) (regOne!34298 r3!135)) (= (regTwo!34298 lt!2468978) (regTwo!34298 r3!135))) (= lambda!392966 lambda!392960))))

(declare-fun bs!1845771 () Bool)

(assert (= bs!1845771 (and b!6913452 b!6912778)))

(assert (=> bs!1845771 (= (and (= (regOne!34298 lt!2468978) r1!6342) (= (regTwo!34298 lt!2468978) r2!6280)) (= lambda!392966 lambda!392904))))

(assert (=> bs!1845771 (not (= lambda!392966 lambda!392903))))

(assert (=> b!6913452 true))

(assert (=> b!6913452 true))

(declare-fun b!6913448 () Bool)

(declare-fun c!1284110 () Bool)

(assert (=> b!6913448 (= c!1284110 ((_ is ElementMatch!16893) lt!2468978))))

(declare-fun e!4162130 () Bool)

(declare-fun e!4162127 () Bool)

(assert (=> b!6913448 (= e!4162130 e!4162127)))

(declare-fun b!6913449 () Bool)

(declare-fun e!4162131 () Bool)

(assert (=> b!6913449 (= e!4162131 (matchRSpec!3956 (regTwo!34299 lt!2468978) lt!2468979))))

(declare-fun e!4162128 () Bool)

(declare-fun call!628544 () Bool)

(assert (=> b!6913450 (= e!4162128 call!628544)))

(declare-fun bm!628539 () Bool)

(declare-fun call!628545 () Bool)

(assert (=> bm!628539 (= call!628545 (isEmpty!38777 lt!2468979))))

(declare-fun d!2163788 () Bool)

(declare-fun c!1284111 () Bool)

(assert (=> d!2163788 (= c!1284111 ((_ is EmptyExpr!16893) lt!2468978))))

(declare-fun e!4162132 () Bool)

(assert (=> d!2163788 (= (matchRSpec!3956 lt!2468978 lt!2468979) e!4162132)))

(declare-fun b!6913451 () Bool)

(declare-fun c!1284108 () Bool)

(assert (=> b!6913451 (= c!1284108 ((_ is Union!16893) lt!2468978))))

(declare-fun e!4162133 () Bool)

(assert (=> b!6913451 (= e!4162127 e!4162133)))

(declare-fun c!1284109 () Bool)

(declare-fun bm!628540 () Bool)

(assert (=> bm!628540 (= call!628544 (Exists!3901 (ite c!1284109 lambda!392965 lambda!392966)))))

(declare-fun e!4162129 () Bool)

(assert (=> b!6913452 (= e!4162129 call!628544)))

(declare-fun b!6913453 () Bool)

(assert (=> b!6913453 (= e!4162127 (= lt!2468979 (Cons!66526 (c!1283947 lt!2468978) Nil!66526)))))

(declare-fun b!6913454 () Bool)

(assert (=> b!6913454 (= e!4162132 e!4162130)))

(declare-fun res!2819553 () Bool)

(assert (=> b!6913454 (= res!2819553 (not ((_ is EmptyLang!16893) lt!2468978)))))

(assert (=> b!6913454 (=> (not res!2819553) (not e!4162130))))

(declare-fun b!6913455 () Bool)

(declare-fun res!2819554 () Bool)

(assert (=> b!6913455 (=> res!2819554 e!4162128)))

(assert (=> b!6913455 (= res!2819554 call!628545)))

(assert (=> b!6913455 (= e!4162129 e!4162128)))

(declare-fun b!6913456 () Bool)

(assert (=> b!6913456 (= e!4162133 e!4162131)))

(declare-fun res!2819555 () Bool)

(assert (=> b!6913456 (= res!2819555 (matchRSpec!3956 (regOne!34299 lt!2468978) lt!2468979))))

(assert (=> b!6913456 (=> res!2819555 e!4162131)))

(declare-fun b!6913457 () Bool)

(assert (=> b!6913457 (= e!4162133 e!4162129)))

(assert (=> b!6913457 (= c!1284109 ((_ is Star!16893) lt!2468978))))

(declare-fun b!6913458 () Bool)

(assert (=> b!6913458 (= e!4162132 call!628545)))

(assert (= (and d!2163788 c!1284111) b!6913458))

(assert (= (and d!2163788 (not c!1284111)) b!6913454))

(assert (= (and b!6913454 res!2819553) b!6913448))

(assert (= (and b!6913448 c!1284110) b!6913453))

(assert (= (and b!6913448 (not c!1284110)) b!6913451))

(assert (= (and b!6913451 c!1284108) b!6913456))

(assert (= (and b!6913451 (not c!1284108)) b!6913457))

(assert (= (and b!6913456 (not res!2819555)) b!6913449))

(assert (= (and b!6913457 c!1284109) b!6913455))

(assert (= (and b!6913457 (not c!1284109)) b!6913452))

(assert (= (and b!6913455 (not res!2819554)) b!6913450))

(assert (= (or b!6913450 b!6913452) bm!628540))

(assert (= (or b!6913458 b!6913455) bm!628539))

(declare-fun m!7627358 () Bool)

(assert (=> b!6913449 m!7627358))

(declare-fun m!7627360 () Bool)

(assert (=> bm!628539 m!7627360))

(declare-fun m!7627362 () Bool)

(assert (=> bm!628540 m!7627362))

(declare-fun m!7627364 () Bool)

(assert (=> b!6913456 m!7627364))

(assert (=> b!6912778 d!2163788))

(declare-fun b!6913470 () Bool)

(declare-fun e!4162145 () Bool)

(declare-fun lt!2469105 () Bool)

(assert (=> b!6913470 (= e!4162145 (not lt!2469105))))

(declare-fun b!6913471 () Bool)

(declare-fun res!2819566 () Bool)

(declare-fun e!4162141 () Bool)

(assert (=> b!6913471 (=> res!2819566 e!4162141)))

(assert (=> b!6913471 (= res!2819566 (not (isEmpty!38777 (tail!12916 lt!2468979))))))

(declare-fun b!6913472 () Bool)

(declare-fun res!2819564 () Bool)

(declare-fun e!4162143 () Bool)

(assert (=> b!6913472 (=> (not res!2819564) (not e!4162143))))

(declare-fun call!628548 () Bool)

(assert (=> b!6913472 (= res!2819564 (not call!628548))))

(declare-fun b!6913473 () Bool)

(declare-fun e!4162147 () Bool)

(assert (=> b!6913473 (= e!4162147 e!4162145)))

(declare-fun c!1284117 () Bool)

(assert (=> b!6913473 (= c!1284117 ((_ is EmptyLang!16893) lt!2468978))))

(declare-fun b!6913474 () Bool)

(declare-fun e!4162146 () Bool)

(assert (=> b!6913474 (= e!4162146 (nullable!6732 lt!2468978))))

(declare-fun b!6913476 () Bool)

(assert (=> b!6913476 (= e!4162143 (= (head!13864 lt!2468979) (c!1283947 lt!2468978)))))

(declare-fun b!6913477 () Bool)

(declare-fun res!2819562 () Bool)

(assert (=> b!6913477 (=> (not res!2819562) (not e!4162143))))

(assert (=> b!6913477 (= res!2819562 (isEmpty!38777 (tail!12916 lt!2468979)))))

(declare-fun bm!628543 () Bool)

(assert (=> bm!628543 (= call!628548 (isEmpty!38777 lt!2468979))))

(declare-fun b!6913478 () Bool)

(declare-fun e!4162144 () Bool)

(declare-fun e!4162142 () Bool)

(assert (=> b!6913478 (= e!4162144 e!4162142)))

(declare-fun res!2819561 () Bool)

(assert (=> b!6913478 (=> (not res!2819561) (not e!4162142))))

(assert (=> b!6913478 (= res!2819561 (not lt!2469105))))

(declare-fun b!6913479 () Bool)

(declare-fun res!2819563 () Bool)

(assert (=> b!6913479 (=> res!2819563 e!4162144)))

(assert (=> b!6913479 (= res!2819563 (not ((_ is ElementMatch!16893) lt!2468978)))))

(assert (=> b!6913479 (= e!4162145 e!4162144)))

(declare-fun b!6913475 () Bool)

(assert (=> b!6913475 (= e!4162147 (= lt!2469105 call!628548))))

(declare-fun d!2163796 () Bool)

(assert (=> d!2163796 e!4162147))

(declare-fun c!1284118 () Bool)

(assert (=> d!2163796 (= c!1284118 ((_ is EmptyExpr!16893) lt!2468978))))

(assert (=> d!2163796 (= lt!2469105 e!4162146)))

(declare-fun c!1284116 () Bool)

(assert (=> d!2163796 (= c!1284116 (isEmpty!38777 lt!2468979))))

(assert (=> d!2163796 (validRegex!8601 lt!2468978)))

(assert (=> d!2163796 (= (matchR!9038 lt!2468978 lt!2468979) lt!2469105)))

(declare-fun b!6913480 () Bool)

(assert (=> b!6913480 (= e!4162141 (not (= (head!13864 lt!2468979) (c!1283947 lt!2468978))))))

(declare-fun b!6913481 () Bool)

(assert (=> b!6913481 (= e!4162146 (matchR!9038 (derivativeStep!5411 lt!2468978 (head!13864 lt!2468979)) (tail!12916 lt!2468979)))))

(declare-fun b!6913482 () Bool)

(assert (=> b!6913482 (= e!4162142 e!4162141)))

(declare-fun res!2819559 () Bool)

(assert (=> b!6913482 (=> res!2819559 e!4162141)))

(assert (=> b!6913482 (= res!2819559 call!628548)))

(declare-fun b!6913483 () Bool)

(declare-fun res!2819560 () Bool)

(assert (=> b!6913483 (=> res!2819560 e!4162144)))

(assert (=> b!6913483 (= res!2819560 e!4162143)))

(declare-fun res!2819565 () Bool)

(assert (=> b!6913483 (=> (not res!2819565) (not e!4162143))))

(assert (=> b!6913483 (= res!2819565 lt!2469105)))

(assert (= (and d!2163796 c!1284116) b!6913474))

(assert (= (and d!2163796 (not c!1284116)) b!6913481))

(assert (= (and d!2163796 c!1284118) b!6913475))

(assert (= (and d!2163796 (not c!1284118)) b!6913473))

(assert (= (and b!6913473 c!1284117) b!6913470))

(assert (= (and b!6913473 (not c!1284117)) b!6913479))

(assert (= (and b!6913479 (not res!2819563)) b!6913483))

(assert (= (and b!6913483 res!2819565) b!6913472))

(assert (= (and b!6913472 res!2819564) b!6913477))

(assert (= (and b!6913477 res!2819562) b!6913476))

(assert (= (and b!6913483 (not res!2819560)) b!6913478))

(assert (= (and b!6913478 res!2819561) b!6913482))

(assert (= (and b!6913482 (not res!2819559)) b!6913471))

(assert (= (and b!6913471 (not res!2819566)) b!6913480))

(assert (= (or b!6913475 b!6913472 b!6913482) bm!628543))

(declare-fun m!7627366 () Bool)

(assert (=> b!6913481 m!7627366))

(assert (=> b!6913481 m!7627366))

(declare-fun m!7627368 () Bool)

(assert (=> b!6913481 m!7627368))

(declare-fun m!7627370 () Bool)

(assert (=> b!6913481 m!7627370))

(assert (=> b!6913481 m!7627368))

(assert (=> b!6913481 m!7627370))

(declare-fun m!7627372 () Bool)

(assert (=> b!6913481 m!7627372))

(declare-fun m!7627374 () Bool)

(assert (=> b!6913474 m!7627374))

(assert (=> b!6913477 m!7627370))

(assert (=> b!6913477 m!7627370))

(declare-fun m!7627376 () Bool)

(assert (=> b!6913477 m!7627376))

(assert (=> bm!628543 m!7627360))

(assert (=> b!6913471 m!7627370))

(assert (=> b!6913471 m!7627370))

(assert (=> b!6913471 m!7627376))

(assert (=> d!2163796 m!7627360))

(assert (=> d!2163796 m!7627318))

(assert (=> b!6913480 m!7627366))

(assert (=> b!6913476 m!7627366))

(assert (=> b!6912778 d!2163796))

(declare-fun bs!1845789 () Bool)

(declare-fun d!2163798 () Bool)

(assert (= bs!1845789 (and d!2163798 b!6913108)))

(declare-fun lambda!392968 () Int)

(assert (=> bs!1845789 (not (= lambda!392968 lambda!392941))))

(declare-fun bs!1845791 () Bool)

(assert (= bs!1845791 (and d!2163798 d!2163680)))

(assert (=> bs!1845791 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392968 lambda!392943))))

(declare-fun bs!1845792 () Bool)

(assert (= bs!1845792 (and d!2163798 d!2163652)))

(assert (=> bs!1845792 (not (= lambda!392968 lambda!392936))))

(declare-fun bs!1845794 () Bool)

(assert (= bs!1845794 (and d!2163798 b!6913234)))

(assert (=> bs!1845794 (not (= lambda!392968 lambda!392946))))

(declare-fun bs!1845795 () Bool)

(assert (= bs!1845795 (and d!2163798 b!6913452)))

(assert (=> bs!1845795 (not (= lambda!392968 lambda!392966))))

(declare-fun bs!1845797 () Bool)

(assert (= bs!1845797 (and d!2163798 b!6913450)))

(assert (=> bs!1845797 (not (= lambda!392968 lambda!392965))))

(declare-fun bs!1845798 () Bool)

(assert (= bs!1845798 (and d!2163798 b!6913337)))

(assert (=> bs!1845798 (not (= lambda!392968 lambda!392955))))

(declare-fun bs!1845800 () Bool)

(assert (= bs!1845800 (and d!2163798 b!6913300)))

(assert (=> bs!1845800 (not (= lambda!392968 lambda!392950))))

(declare-fun bs!1845801 () Bool)

(assert (= bs!1845801 (and d!2163798 d!2163622)))

(assert (=> bs!1845801 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392968 lambda!392923))))

(declare-fun bs!1845802 () Bool)

(assert (= bs!1845802 (and d!2163798 b!6913368)))

(assert (=> bs!1845802 (not (= lambda!392968 lambda!392958))))

(declare-fun bs!1845803 () Bool)

(assert (= bs!1845803 (and d!2163798 b!6913339)))

(assert (=> bs!1845803 (not (= lambda!392968 lambda!392956))))

(declare-fun bs!1845804 () Bool)

(assert (= bs!1845804 (and d!2163798 b!6912781)))

(assert (=> bs!1845804 (not (= lambda!392968 lambda!392900))))

(declare-fun bs!1845805 () Bool)

(assert (= bs!1845805 (and d!2163798 b!6913110)))

(assert (=> bs!1845805 (not (= lambda!392968 lambda!392942))))

(assert (=> bs!1845792 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392968 lambda!392935))))

(declare-fun bs!1845806 () Bool)

(assert (= bs!1845806 (and d!2163798 b!6913302)))

(assert (=> bs!1845806 (not (= lambda!392968 lambda!392951))))

(declare-fun bs!1845808 () Bool)

(assert (= bs!1845808 (and d!2163798 d!2163776)))

(assert (=> bs!1845808 (= lambda!392968 lambda!392962)))

(declare-fun bs!1845810 () Bool)

(assert (= bs!1845810 (and d!2163798 b!6912877)))

(assert (=> bs!1845810 (not (= lambda!392968 lambda!392916))))

(declare-fun bs!1845812 () Bool)

(assert (= bs!1845812 (and d!2163798 b!6912875)))

(assert (=> bs!1845812 (not (= lambda!392968 lambda!392915))))

(assert (=> bs!1845804 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392968 lambda!392899))))

(declare-fun bs!1845815 () Bool)

(assert (= bs!1845815 (and d!2163798 b!6913236)))

(assert (=> bs!1845815 (not (= lambda!392968 lambda!392947))))

(assert (=> bs!1845801 (not (= lambda!392968 lambda!392926))))

(declare-fun bs!1845818 () Bool)

(assert (= bs!1845818 (and d!2163798 d!2163636)))

(assert (=> bs!1845818 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392968 lambda!392934))))

(declare-fun bs!1845820 () Bool)

(assert (= bs!1845820 (and d!2163798 b!6912780)))

(assert (=> bs!1845820 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392968 lambda!392901))))

(assert (=> bs!1845820 (not (= lambda!392968 lambda!392902))))

(declare-fun bs!1845822 () Bool)

(assert (= bs!1845822 (and d!2163798 b!6913370)))

(assert (=> bs!1845822 (not (= lambda!392968 lambda!392960))))

(declare-fun bs!1845824 () Bool)

(assert (= bs!1845824 (and d!2163798 b!6912778)))

(assert (=> bs!1845824 (not (= lambda!392968 lambda!392904))))

(assert (=> bs!1845824 (= lambda!392968 lambda!392903)))

(assert (=> d!2163798 true))

(assert (=> d!2163798 true))

(assert (=> d!2163798 true))

(declare-fun lambda!392970 () Int)

(assert (=> bs!1845789 (not (= lambda!392970 lambda!392941))))

(assert (=> bs!1845791 (not (= lambda!392970 lambda!392943))))

(assert (=> bs!1845792 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392970 lambda!392936))))

(assert (=> bs!1845794 (not (= lambda!392970 lambda!392946))))

(declare-fun bs!1845834 () Bool)

(assert (= bs!1845834 d!2163798))

(assert (=> bs!1845834 (not (= lambda!392970 lambda!392968))))

(assert (=> bs!1845795 (= (and (= r1!6342 (regOne!34298 lt!2468978)) (= r2!6280 (regTwo!34298 lt!2468978))) (= lambda!392970 lambda!392966))))

(assert (=> bs!1845797 (not (= lambda!392970 lambda!392965))))

(assert (=> bs!1845798 (not (= lambda!392970 lambda!392955))))

(assert (=> bs!1845800 (not (= lambda!392970 lambda!392950))))

(assert (=> bs!1845801 (not (= lambda!392970 lambda!392923))))

(assert (=> bs!1845802 (not (= lambda!392970 lambda!392958))))

(assert (=> bs!1845803 (= (and (= lt!2468979 (_1!37063 lt!2469003)) (= r1!6342 (regOne!34298 r2!6280)) (= r2!6280 (regTwo!34298 r2!6280))) (= lambda!392970 lambda!392956))))

(assert (=> bs!1845804 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392970 lambda!392900))))

(assert (=> bs!1845805 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 (regOne!34298 lt!2468983)) (= r2!6280 (regTwo!34298 lt!2468983))) (= lambda!392970 lambda!392942))))

(assert (=> bs!1845792 (not (= lambda!392970 lambda!392935))))

(assert (=> bs!1845806 (= (and (= lt!2468979 s!14361) (= r1!6342 (regOne!34298 lt!2468976)) (= r2!6280 (regTwo!34298 lt!2468976))) (= lambda!392970 lambda!392951))))

(assert (=> bs!1845808 (not (= lambda!392970 lambda!392962))))

(assert (=> bs!1845810 (= (and (= lt!2468979 (_1!37063 lt!2468980)) (= r1!6342 (regOne!34298 r1!6342)) (= r2!6280 (regTwo!34298 r1!6342))) (= lambda!392970 lambda!392916))))

(assert (=> bs!1845812 (not (= lambda!392970 lambda!392915))))

(assert (=> bs!1845804 (not (= lambda!392970 lambda!392899))))

(assert (=> bs!1845815 (= (and (= lt!2468979 s!14361) (= r1!6342 (regOne!34298 lt!2469002)) (= r2!6280 (regTwo!34298 lt!2469002))) (= lambda!392970 lambda!392947))))

(assert (=> bs!1845801 (= (and (= lt!2468979 s!14361) (= r2!6280 lt!2468983)) (= lambda!392970 lambda!392926))))

(assert (=> bs!1845818 (not (= lambda!392970 lambda!392934))))

(assert (=> bs!1845820 (not (= lambda!392970 lambda!392901))))

(assert (=> bs!1845820 (= (and (= lt!2468979 (_2!37063 lt!2468980)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!392970 lambda!392902))))

(assert (=> bs!1845822 (= (and (= lt!2468979 (_2!37063 lt!2469003)) (= r1!6342 (regOne!34298 r3!135)) (= r2!6280 (regTwo!34298 r3!135))) (= lambda!392970 lambda!392960))))

(assert (=> bs!1845824 (= lambda!392970 lambda!392904)))

(assert (=> bs!1845824 (not (= lambda!392970 lambda!392903))))

(assert (=> d!2163798 true))

(assert (=> d!2163798 true))

(assert (=> d!2163798 true))

(assert (=> d!2163798 (= (Exists!3901 lambda!392968) (Exists!3901 lambda!392970))))

(declare-fun lt!2469106 () Unit!160522)

(assert (=> d!2163798 (= lt!2469106 (choose!51488 r1!6342 r2!6280 lt!2468979))))

(assert (=> d!2163798 (validRegex!8601 r1!6342)))

(assert (=> d!2163798 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2374 r1!6342 r2!6280 lt!2468979) lt!2469106)))

(declare-fun m!7627384 () Bool)

(assert (=> bs!1845834 m!7627384))

(declare-fun m!7627386 () Bool)

(assert (=> bs!1845834 m!7627386))

(declare-fun m!7627388 () Bool)

(assert (=> bs!1845834 m!7627388))

(assert (=> bs!1845834 m!7626736))

(assert (=> b!6912778 d!2163798))

(declare-fun d!2163800 () Bool)

(assert (=> d!2163800 (= (Exists!3901 lambda!392903) (choose!51487 lambda!392903))))

(declare-fun bs!1845838 () Bool)

(assert (= bs!1845838 d!2163800))

(declare-fun m!7627390 () Bool)

(assert (=> bs!1845838 m!7627390))

(assert (=> b!6912778 d!2163800))

(declare-fun b!6913499 () Bool)

(declare-fun res!2819568 () Bool)

(declare-fun e!4162156 () Bool)

(assert (=> b!6913499 (=> (not res!2819568) (not e!4162156))))

(declare-fun lt!2469107 () Option!16672)

(assert (=> b!6913499 (= res!2819568 (matchR!9038 r1!6342 (_1!37063 (get!23290 lt!2469107))))))

(declare-fun b!6913500 () Bool)

(declare-fun res!2819571 () Bool)

(assert (=> b!6913500 (=> (not res!2819571) (not e!4162156))))

(assert (=> b!6913500 (= res!2819571 (matchR!9038 r2!6280 (_2!37063 (get!23290 lt!2469107))))))

(declare-fun b!6913501 () Bool)

(declare-fun e!4162157 () Bool)

(assert (=> b!6913501 (= e!4162157 (not (isDefined!13375 lt!2469107)))))

(declare-fun b!6913502 () Bool)

(declare-fun e!4162155 () Option!16672)

(declare-fun e!4162153 () Option!16672)

(assert (=> b!6913502 (= e!4162155 e!4162153)))

(declare-fun c!1284120 () Bool)

(assert (=> b!6913502 (= c!1284120 ((_ is Nil!66526) lt!2468979))))

(declare-fun b!6913504 () Bool)

(assert (=> b!6913504 (= e!4162156 (= (++!14946 (_1!37063 (get!23290 lt!2469107)) (_2!37063 (get!23290 lt!2469107))) lt!2468979))))

(declare-fun b!6913507 () Bool)

(declare-fun lt!2469109 () Unit!160522)

(declare-fun lt!2469108 () Unit!160522)

(assert (=> b!6913507 (= lt!2469109 lt!2469108)))

(assert (=> b!6913507 (= (++!14946 (++!14946 Nil!66526 (Cons!66526 (h!72974 lt!2468979) Nil!66526)) (t!380393 lt!2468979)) lt!2468979)))

(assert (=> b!6913507 (= lt!2469108 (lemmaMoveElementToOtherListKeepsConcatEq!2819 Nil!66526 (h!72974 lt!2468979) (t!380393 lt!2468979) lt!2468979))))

(assert (=> b!6913507 (= e!4162153 (findConcatSeparation!3086 r1!6342 r2!6280 (++!14946 Nil!66526 (Cons!66526 (h!72974 lt!2468979) Nil!66526)) (t!380393 lt!2468979) lt!2468979))))

(declare-fun b!6913509 () Bool)

(assert (=> b!6913509 (= e!4162155 (Some!16671 (tuple2!67521 Nil!66526 lt!2468979)))))

(declare-fun b!6913511 () Bool)

(declare-fun e!4162154 () Bool)

(assert (=> b!6913511 (= e!4162154 (matchR!9038 r2!6280 lt!2468979))))

(declare-fun b!6913503 () Bool)

(assert (=> b!6913503 (= e!4162153 None!16671)))

(declare-fun d!2163802 () Bool)

(assert (=> d!2163802 e!4162157))

(declare-fun res!2819570 () Bool)

(assert (=> d!2163802 (=> res!2819570 e!4162157)))

(assert (=> d!2163802 (= res!2819570 e!4162156)))

(declare-fun res!2819569 () Bool)

(assert (=> d!2163802 (=> (not res!2819569) (not e!4162156))))

(assert (=> d!2163802 (= res!2819569 (isDefined!13375 lt!2469107))))

(assert (=> d!2163802 (= lt!2469107 e!4162155)))

(declare-fun c!1284119 () Bool)

(assert (=> d!2163802 (= c!1284119 e!4162154)))

(declare-fun res!2819567 () Bool)

(assert (=> d!2163802 (=> (not res!2819567) (not e!4162154))))

(assert (=> d!2163802 (= res!2819567 (matchR!9038 r1!6342 Nil!66526))))

(assert (=> d!2163802 (validRegex!8601 r1!6342)))

(assert (=> d!2163802 (= (findConcatSeparation!3086 r1!6342 r2!6280 Nil!66526 lt!2468979 lt!2468979) lt!2469107)))

(assert (= (and d!2163802 res!2819567) b!6913511))

(assert (= (and d!2163802 c!1284119) b!6913509))

(assert (= (and d!2163802 (not c!1284119)) b!6913502))

(assert (= (and b!6913502 c!1284120) b!6913503))

(assert (= (and b!6913502 (not c!1284120)) b!6913507))

(assert (= (and d!2163802 res!2819569) b!6913499))

(assert (= (and b!6913499 res!2819568) b!6913500))

(assert (= (and b!6913500 res!2819571) b!6913504))

(assert (= (and d!2163802 (not res!2819570)) b!6913501))

(declare-fun m!7627392 () Bool)

(assert (=> b!6913501 m!7627392))

(declare-fun m!7627394 () Bool)

(assert (=> b!6913507 m!7627394))

(assert (=> b!6913507 m!7627394))

(declare-fun m!7627396 () Bool)

(assert (=> b!6913507 m!7627396))

(declare-fun m!7627398 () Bool)

(assert (=> b!6913507 m!7627398))

(assert (=> b!6913507 m!7627394))

(declare-fun m!7627400 () Bool)

(assert (=> b!6913507 m!7627400))

(declare-fun m!7627402 () Bool)

(assert (=> b!6913511 m!7627402))

(declare-fun m!7627404 () Bool)

(assert (=> b!6913504 m!7627404))

(declare-fun m!7627406 () Bool)

(assert (=> b!6913504 m!7627406))

(assert (=> d!2163802 m!7627392))

(declare-fun m!7627408 () Bool)

(assert (=> d!2163802 m!7627408))

(assert (=> d!2163802 m!7626736))

(assert (=> b!6913499 m!7627404))

(declare-fun m!7627410 () Bool)

(assert (=> b!6913499 m!7627410))

(assert (=> b!6913500 m!7627404))

(declare-fun m!7627412 () Bool)

(assert (=> b!6913500 m!7627412))

(assert (=> b!6912778 d!2163802))

(declare-fun b!6913548 () Bool)

(declare-fun e!4162172 () Bool)

(declare-fun lt!2469110 () Bool)

(assert (=> b!6913548 (= e!4162172 (not lt!2469110))))

(declare-fun b!6913549 () Bool)

(declare-fun res!2819579 () Bool)

(declare-fun e!4162168 () Bool)

(assert (=> b!6913549 (=> res!2819579 e!4162168)))

(assert (=> b!6913549 (= res!2819579 (not (isEmpty!38777 (tail!12916 (_2!37063 lt!2468980)))))))

(declare-fun b!6913550 () Bool)

(declare-fun res!2819577 () Bool)

(declare-fun e!4162170 () Bool)

(assert (=> b!6913550 (=> (not res!2819577) (not e!4162170))))

(declare-fun call!628549 () Bool)

(assert (=> b!6913550 (= res!2819577 (not call!628549))))

(declare-fun b!6913551 () Bool)

(declare-fun e!4162174 () Bool)

(assert (=> b!6913551 (= e!4162174 e!4162172)))

(declare-fun c!1284122 () Bool)

(assert (=> b!6913551 (= c!1284122 ((_ is EmptyLang!16893) lt!2468983))))

(declare-fun b!6913552 () Bool)

(declare-fun e!4162173 () Bool)

(assert (=> b!6913552 (= e!4162173 (nullable!6732 lt!2468983))))

(declare-fun b!6913554 () Bool)

(assert (=> b!6913554 (= e!4162170 (= (head!13864 (_2!37063 lt!2468980)) (c!1283947 lt!2468983)))))

(declare-fun b!6913555 () Bool)

(declare-fun res!2819575 () Bool)

(assert (=> b!6913555 (=> (not res!2819575) (not e!4162170))))

(assert (=> b!6913555 (= res!2819575 (isEmpty!38777 (tail!12916 (_2!37063 lt!2468980))))))

(declare-fun bm!628544 () Bool)

(assert (=> bm!628544 (= call!628549 (isEmpty!38777 (_2!37063 lt!2468980)))))

(declare-fun b!6913556 () Bool)

(declare-fun e!4162171 () Bool)

(declare-fun e!4162169 () Bool)

(assert (=> b!6913556 (= e!4162171 e!4162169)))

(declare-fun res!2819574 () Bool)

(assert (=> b!6913556 (=> (not res!2819574) (not e!4162169))))

(assert (=> b!6913556 (= res!2819574 (not lt!2469110))))

(declare-fun b!6913557 () Bool)

(declare-fun res!2819576 () Bool)

(assert (=> b!6913557 (=> res!2819576 e!4162171)))

(assert (=> b!6913557 (= res!2819576 (not ((_ is ElementMatch!16893) lt!2468983)))))

(assert (=> b!6913557 (= e!4162172 e!4162171)))

(declare-fun b!6913553 () Bool)

(assert (=> b!6913553 (= e!4162174 (= lt!2469110 call!628549))))

(declare-fun d!2163804 () Bool)

(assert (=> d!2163804 e!4162174))

(declare-fun c!1284123 () Bool)

(assert (=> d!2163804 (= c!1284123 ((_ is EmptyExpr!16893) lt!2468983))))

(assert (=> d!2163804 (= lt!2469110 e!4162173)))

(declare-fun c!1284121 () Bool)

(assert (=> d!2163804 (= c!1284121 (isEmpty!38777 (_2!37063 lt!2468980)))))

(assert (=> d!2163804 (validRegex!8601 lt!2468983)))

(assert (=> d!2163804 (= (matchR!9038 lt!2468983 (_2!37063 lt!2468980)) lt!2469110)))

(declare-fun b!6913558 () Bool)

(assert (=> b!6913558 (= e!4162168 (not (= (head!13864 (_2!37063 lt!2468980)) (c!1283947 lt!2468983))))))

(declare-fun b!6913559 () Bool)

(assert (=> b!6913559 (= e!4162173 (matchR!9038 (derivativeStep!5411 lt!2468983 (head!13864 (_2!37063 lt!2468980))) (tail!12916 (_2!37063 lt!2468980))))))

(declare-fun b!6913560 () Bool)

(assert (=> b!6913560 (= e!4162169 e!4162168)))

(declare-fun res!2819572 () Bool)

(assert (=> b!6913560 (=> res!2819572 e!4162168)))

(assert (=> b!6913560 (= res!2819572 call!628549)))

(declare-fun b!6913561 () Bool)

(declare-fun res!2819573 () Bool)

(assert (=> b!6913561 (=> res!2819573 e!4162171)))

(assert (=> b!6913561 (= res!2819573 e!4162170)))

(declare-fun res!2819578 () Bool)

(assert (=> b!6913561 (=> (not res!2819578) (not e!4162170))))

(assert (=> b!6913561 (= res!2819578 lt!2469110)))

(assert (= (and d!2163804 c!1284121) b!6913552))

(assert (= (and d!2163804 (not c!1284121)) b!6913559))

(assert (= (and d!2163804 c!1284123) b!6913553))

(assert (= (and d!2163804 (not c!1284123)) b!6913551))

(assert (= (and b!6913551 c!1284122) b!6913548))

(assert (= (and b!6913551 (not c!1284122)) b!6913557))

(assert (= (and b!6913557 (not res!2819576)) b!6913561))

(assert (= (and b!6913561 res!2819578) b!6913550))

(assert (= (and b!6913550 res!2819577) b!6913555))

(assert (= (and b!6913555 res!2819575) b!6913554))

(assert (= (and b!6913561 (not res!2819573)) b!6913556))

(assert (= (and b!6913556 res!2819574) b!6913560))

(assert (= (and b!6913560 (not res!2819572)) b!6913549))

(assert (= (and b!6913549 (not res!2819579)) b!6913558))

(assert (= (or b!6913553 b!6913550 b!6913560) bm!628544))

(declare-fun m!7627414 () Bool)

(assert (=> b!6913559 m!7627414))

(assert (=> b!6913559 m!7627414))

(declare-fun m!7627416 () Bool)

(assert (=> b!6913559 m!7627416))

(declare-fun m!7627418 () Bool)

(assert (=> b!6913559 m!7627418))

(assert (=> b!6913559 m!7627416))

(assert (=> b!6913559 m!7627418))

(declare-fun m!7627420 () Bool)

(assert (=> b!6913559 m!7627420))

(declare-fun m!7627422 () Bool)

(assert (=> b!6913552 m!7627422))

(assert (=> b!6913555 m!7627418))

(assert (=> b!6913555 m!7627418))

(declare-fun m!7627424 () Bool)

(assert (=> b!6913555 m!7627424))

(assert (=> bm!628544 m!7626980))

(assert (=> b!6913549 m!7627418))

(assert (=> b!6913549 m!7627418))

(assert (=> b!6913549 m!7627424))

(assert (=> d!2163804 m!7626980))

(assert (=> d!2163804 m!7626868))

(assert (=> b!6913558 m!7627414))

(assert (=> b!6913554 m!7627414))

(assert (=> b!6912777 d!2163804))

(declare-fun d!2163806 () Bool)

(assert (=> d!2163806 (= (isDefined!13375 lt!2468989) (not (isEmpty!38779 lt!2468989)))))

(declare-fun bs!1845839 () Bool)

(assert (= bs!1845839 d!2163806))

(declare-fun m!7627426 () Bool)

(assert (=> bs!1845839 m!7627426))

(assert (=> b!6912767 d!2163806))

(declare-fun b!6913582 () Bool)

(declare-fun res!2819581 () Bool)

(declare-fun e!4162183 () Bool)

(assert (=> b!6913582 (=> (not res!2819581) (not e!4162183))))

(declare-fun lt!2469111 () Option!16672)

(assert (=> b!6913582 (= res!2819581 (matchR!9038 r1!6342 (_1!37063 (get!23290 lt!2469111))))))

(declare-fun b!6913583 () Bool)

(declare-fun res!2819584 () Bool)

(assert (=> b!6913583 (=> (not res!2819584) (not e!4162183))))

(assert (=> b!6913583 (= res!2819584 (matchR!9038 lt!2468983 (_2!37063 (get!23290 lt!2469111))))))

(declare-fun b!6913584 () Bool)

(declare-fun e!4162184 () Bool)

(assert (=> b!6913584 (= e!4162184 (not (isDefined!13375 lt!2469111)))))

(declare-fun b!6913585 () Bool)

(declare-fun e!4162182 () Option!16672)

(declare-fun e!4162180 () Option!16672)

(assert (=> b!6913585 (= e!4162182 e!4162180)))

(declare-fun c!1284125 () Bool)

(assert (=> b!6913585 (= c!1284125 ((_ is Nil!66526) s!14361))))

(declare-fun b!6913587 () Bool)

(assert (=> b!6913587 (= e!4162183 (= (++!14946 (_1!37063 (get!23290 lt!2469111)) (_2!37063 (get!23290 lt!2469111))) s!14361))))

(declare-fun b!6913588 () Bool)

(declare-fun lt!2469113 () Unit!160522)

(declare-fun lt!2469112 () Unit!160522)

(assert (=> b!6913588 (= lt!2469113 lt!2469112)))

(assert (=> b!6913588 (= (++!14946 (++!14946 Nil!66526 (Cons!66526 (h!72974 s!14361) Nil!66526)) (t!380393 s!14361)) s!14361)))

(assert (=> b!6913588 (= lt!2469112 (lemmaMoveElementToOtherListKeepsConcatEq!2819 Nil!66526 (h!72974 s!14361) (t!380393 s!14361) s!14361))))

(assert (=> b!6913588 (= e!4162180 (findConcatSeparation!3086 r1!6342 lt!2468983 (++!14946 Nil!66526 (Cons!66526 (h!72974 s!14361) Nil!66526)) (t!380393 s!14361) s!14361))))

(declare-fun b!6913589 () Bool)

(assert (=> b!6913589 (= e!4162182 (Some!16671 (tuple2!67521 Nil!66526 s!14361)))))

(declare-fun b!6913590 () Bool)

(declare-fun e!4162181 () Bool)

(assert (=> b!6913590 (= e!4162181 (matchR!9038 lt!2468983 s!14361))))

(declare-fun b!6913586 () Bool)

(assert (=> b!6913586 (= e!4162180 None!16671)))

(declare-fun d!2163808 () Bool)

(assert (=> d!2163808 e!4162184))

(declare-fun res!2819583 () Bool)

(assert (=> d!2163808 (=> res!2819583 e!4162184)))

(assert (=> d!2163808 (= res!2819583 e!4162183)))

(declare-fun res!2819582 () Bool)

(assert (=> d!2163808 (=> (not res!2819582) (not e!4162183))))

(assert (=> d!2163808 (= res!2819582 (isDefined!13375 lt!2469111))))

(assert (=> d!2163808 (= lt!2469111 e!4162182)))

(declare-fun c!1284124 () Bool)

(assert (=> d!2163808 (= c!1284124 e!4162181)))

(declare-fun res!2819580 () Bool)

(assert (=> d!2163808 (=> (not res!2819580) (not e!4162181))))

(assert (=> d!2163808 (= res!2819580 (matchR!9038 r1!6342 Nil!66526))))

(assert (=> d!2163808 (validRegex!8601 r1!6342)))

(assert (=> d!2163808 (= (findConcatSeparation!3086 r1!6342 lt!2468983 Nil!66526 s!14361 s!14361) lt!2469111)))

(assert (= (and d!2163808 res!2819580) b!6913590))

(assert (= (and d!2163808 c!1284124) b!6913589))

(assert (= (and d!2163808 (not c!1284124)) b!6913585))

(assert (= (and b!6913585 c!1284125) b!6913586))

(assert (= (and b!6913585 (not c!1284125)) b!6913588))

(assert (= (and d!2163808 res!2819582) b!6913582))

(assert (= (and b!6913582 res!2819581) b!6913583))

(assert (= (and b!6913583 res!2819584) b!6913587))

(assert (= (and d!2163808 (not res!2819583)) b!6913584))

(declare-fun m!7627428 () Bool)

(assert (=> b!6913584 m!7627428))

(declare-fun m!7627430 () Bool)

(assert (=> b!6913588 m!7627430))

(assert (=> b!6913588 m!7627430))

(declare-fun m!7627432 () Bool)

(assert (=> b!6913588 m!7627432))

(declare-fun m!7627434 () Bool)

(assert (=> b!6913588 m!7627434))

(assert (=> b!6913588 m!7627430))

(declare-fun m!7627436 () Bool)

(assert (=> b!6913588 m!7627436))

(declare-fun m!7627438 () Bool)

(assert (=> b!6913590 m!7627438))

(declare-fun m!7627440 () Bool)

(assert (=> b!6913587 m!7627440))

(declare-fun m!7627442 () Bool)

(assert (=> b!6913587 m!7627442))

(assert (=> d!2163808 m!7627428))

(assert (=> d!2163808 m!7627408))

(assert (=> d!2163808 m!7626736))

(assert (=> b!6913582 m!7627440))

(declare-fun m!7627444 () Bool)

(assert (=> b!6913582 m!7627444))

(assert (=> b!6913583 m!7627440))

(declare-fun m!7627446 () Bool)

(assert (=> b!6913583 m!7627446))

(assert (=> b!6912767 d!2163808))

(declare-fun b!6913602 () Bool)

(declare-fun e!4162187 () Bool)

(declare-fun tp!1903770 () Bool)

(declare-fun tp!1903772 () Bool)

(assert (=> b!6913602 (= e!4162187 (and tp!1903770 tp!1903772))))

(declare-fun b!6913601 () Bool)

(assert (=> b!6913601 (= e!4162187 tp_is_empty!43011)))

(assert (=> b!6912786 (= tp!1903661 e!4162187)))

(declare-fun b!6913604 () Bool)

(declare-fun tp!1903771 () Bool)

(declare-fun tp!1903773 () Bool)

(assert (=> b!6913604 (= e!4162187 (and tp!1903771 tp!1903773))))

(declare-fun b!6913603 () Bool)

(declare-fun tp!1903774 () Bool)

(assert (=> b!6913603 (= e!4162187 tp!1903774)))

(assert (= (and b!6912786 ((_ is ElementMatch!16893) (regOne!34299 r1!6342))) b!6913601))

(assert (= (and b!6912786 ((_ is Concat!25738) (regOne!34299 r1!6342))) b!6913602))

(assert (= (and b!6912786 ((_ is Star!16893) (regOne!34299 r1!6342))) b!6913603))

(assert (= (and b!6912786 ((_ is Union!16893) (regOne!34299 r1!6342))) b!6913604))

(declare-fun b!6913606 () Bool)

(declare-fun e!4162188 () Bool)

(declare-fun tp!1903775 () Bool)

(declare-fun tp!1903777 () Bool)

(assert (=> b!6913606 (= e!4162188 (and tp!1903775 tp!1903777))))

(declare-fun b!6913605 () Bool)

(assert (=> b!6913605 (= e!4162188 tp_is_empty!43011)))

(assert (=> b!6912786 (= tp!1903657 e!4162188)))

(declare-fun b!6913608 () Bool)

(declare-fun tp!1903776 () Bool)

(declare-fun tp!1903778 () Bool)

(assert (=> b!6913608 (= e!4162188 (and tp!1903776 tp!1903778))))

(declare-fun b!6913607 () Bool)

(declare-fun tp!1903779 () Bool)

(assert (=> b!6913607 (= e!4162188 tp!1903779)))

(assert (= (and b!6912786 ((_ is ElementMatch!16893) (regTwo!34299 r1!6342))) b!6913605))

(assert (= (and b!6912786 ((_ is Concat!25738) (regTwo!34299 r1!6342))) b!6913606))

(assert (= (and b!6912786 ((_ is Star!16893) (regTwo!34299 r1!6342))) b!6913607))

(assert (= (and b!6912786 ((_ is Union!16893) (regTwo!34299 r1!6342))) b!6913608))

(declare-fun b!6913610 () Bool)

(declare-fun e!4162189 () Bool)

(declare-fun tp!1903780 () Bool)

(declare-fun tp!1903782 () Bool)

(assert (=> b!6913610 (= e!4162189 (and tp!1903780 tp!1903782))))

(declare-fun b!6913609 () Bool)

(assert (=> b!6913609 (= e!4162189 tp_is_empty!43011)))

(assert (=> b!6912771 (= tp!1903656 e!4162189)))

(declare-fun b!6913612 () Bool)

(declare-fun tp!1903781 () Bool)

(declare-fun tp!1903783 () Bool)

(assert (=> b!6913612 (= e!4162189 (and tp!1903781 tp!1903783))))

(declare-fun b!6913611 () Bool)

(declare-fun tp!1903784 () Bool)

(assert (=> b!6913611 (= e!4162189 tp!1903784)))

(assert (= (and b!6912771 ((_ is ElementMatch!16893) (regOne!34299 r2!6280))) b!6913609))

(assert (= (and b!6912771 ((_ is Concat!25738) (regOne!34299 r2!6280))) b!6913610))

(assert (= (and b!6912771 ((_ is Star!16893) (regOne!34299 r2!6280))) b!6913611))

(assert (= (and b!6912771 ((_ is Union!16893) (regOne!34299 r2!6280))) b!6913612))

(declare-fun b!6913614 () Bool)

(declare-fun e!4162190 () Bool)

(declare-fun tp!1903785 () Bool)

(declare-fun tp!1903787 () Bool)

(assert (=> b!6913614 (= e!4162190 (and tp!1903785 tp!1903787))))

(declare-fun b!6913613 () Bool)

(assert (=> b!6913613 (= e!4162190 tp_is_empty!43011)))

(assert (=> b!6912771 (= tp!1903665 e!4162190)))

(declare-fun b!6913616 () Bool)

(declare-fun tp!1903786 () Bool)

(declare-fun tp!1903788 () Bool)

(assert (=> b!6913616 (= e!4162190 (and tp!1903786 tp!1903788))))

(declare-fun b!6913615 () Bool)

(declare-fun tp!1903789 () Bool)

(assert (=> b!6913615 (= e!4162190 tp!1903789)))

(assert (= (and b!6912771 ((_ is ElementMatch!16893) (regTwo!34299 r2!6280))) b!6913613))

(assert (= (and b!6912771 ((_ is Concat!25738) (regTwo!34299 r2!6280))) b!6913614))

(assert (= (and b!6912771 ((_ is Star!16893) (regTwo!34299 r2!6280))) b!6913615))

(assert (= (and b!6912771 ((_ is Union!16893) (regTwo!34299 r2!6280))) b!6913616))

(declare-fun b!6913618 () Bool)

(declare-fun e!4162191 () Bool)

(declare-fun tp!1903790 () Bool)

(declare-fun tp!1903792 () Bool)

(assert (=> b!6913618 (= e!4162191 (and tp!1903790 tp!1903792))))

(declare-fun b!6913617 () Bool)

(assert (=> b!6913617 (= e!4162191 tp_is_empty!43011)))

(assert (=> b!6912787 (= tp!1903660 e!4162191)))

(declare-fun b!6913620 () Bool)

(declare-fun tp!1903791 () Bool)

(declare-fun tp!1903793 () Bool)

(assert (=> b!6913620 (= e!4162191 (and tp!1903791 tp!1903793))))

(declare-fun b!6913619 () Bool)

(declare-fun tp!1903794 () Bool)

(assert (=> b!6913619 (= e!4162191 tp!1903794)))

(assert (= (and b!6912787 ((_ is ElementMatch!16893) (regOne!34298 r3!135))) b!6913617))

(assert (= (and b!6912787 ((_ is Concat!25738) (regOne!34298 r3!135))) b!6913618))

(assert (= (and b!6912787 ((_ is Star!16893) (regOne!34298 r3!135))) b!6913619))

(assert (= (and b!6912787 ((_ is Union!16893) (regOne!34298 r3!135))) b!6913620))

(declare-fun b!6913622 () Bool)

(declare-fun e!4162192 () Bool)

(declare-fun tp!1903795 () Bool)

(declare-fun tp!1903797 () Bool)

(assert (=> b!6913622 (= e!4162192 (and tp!1903795 tp!1903797))))

(declare-fun b!6913621 () Bool)

(assert (=> b!6913621 (= e!4162192 tp_is_empty!43011)))

(assert (=> b!6912787 (= tp!1903659 e!4162192)))

(declare-fun b!6913624 () Bool)

(declare-fun tp!1903796 () Bool)

(declare-fun tp!1903798 () Bool)

(assert (=> b!6913624 (= e!4162192 (and tp!1903796 tp!1903798))))

(declare-fun b!6913623 () Bool)

(declare-fun tp!1903799 () Bool)

(assert (=> b!6913623 (= e!4162192 tp!1903799)))

(assert (= (and b!6912787 ((_ is ElementMatch!16893) (regTwo!34298 r3!135))) b!6913621))

(assert (= (and b!6912787 ((_ is Concat!25738) (regTwo!34298 r3!135))) b!6913622))

(assert (= (and b!6912787 ((_ is Star!16893) (regTwo!34298 r3!135))) b!6913623))

(assert (= (and b!6912787 ((_ is Union!16893) (regTwo!34298 r3!135))) b!6913624))

(declare-fun b!6913629 () Bool)

(declare-fun e!4162195 () Bool)

(declare-fun tp!1903802 () Bool)

(assert (=> b!6913629 (= e!4162195 (and tp_is_empty!43011 tp!1903802))))

(assert (=> b!6912769 (= tp!1903662 e!4162195)))

(assert (= (and b!6912769 ((_ is Cons!66526) (t!380393 s!14361))) b!6913629))

(declare-fun b!6913631 () Bool)

(declare-fun e!4162196 () Bool)

(declare-fun tp!1903803 () Bool)

(declare-fun tp!1903805 () Bool)

(assert (=> b!6913631 (= e!4162196 (and tp!1903803 tp!1903805))))

(declare-fun b!6913630 () Bool)

(assert (=> b!6913630 (= e!4162196 tp_is_empty!43011)))

(assert (=> b!6912775 (= tp!1903666 e!4162196)))

(declare-fun b!6913633 () Bool)

(declare-fun tp!1903804 () Bool)

(declare-fun tp!1903806 () Bool)

(assert (=> b!6913633 (= e!4162196 (and tp!1903804 tp!1903806))))

(declare-fun b!6913632 () Bool)

(declare-fun tp!1903807 () Bool)

(assert (=> b!6913632 (= e!4162196 tp!1903807)))

(assert (= (and b!6912775 ((_ is ElementMatch!16893) (reg!17222 r3!135))) b!6913630))

(assert (= (and b!6912775 ((_ is Concat!25738) (reg!17222 r3!135))) b!6913631))

(assert (= (and b!6912775 ((_ is Star!16893) (reg!17222 r3!135))) b!6913632))

(assert (= (and b!6912775 ((_ is Union!16893) (reg!17222 r3!135))) b!6913633))

(declare-fun b!6913635 () Bool)

(declare-fun e!4162197 () Bool)

(declare-fun tp!1903808 () Bool)

(declare-fun tp!1903810 () Bool)

(assert (=> b!6913635 (= e!4162197 (and tp!1903808 tp!1903810))))

(declare-fun b!6913634 () Bool)

(assert (=> b!6913634 (= e!4162197 tp_is_empty!43011)))

(assert (=> b!6912768 (= tp!1903669 e!4162197)))

(declare-fun b!6913637 () Bool)

(declare-fun tp!1903809 () Bool)

(declare-fun tp!1903811 () Bool)

(assert (=> b!6913637 (= e!4162197 (and tp!1903809 tp!1903811))))

(declare-fun b!6913636 () Bool)

(declare-fun tp!1903812 () Bool)

(assert (=> b!6913636 (= e!4162197 tp!1903812)))

(assert (= (and b!6912768 ((_ is ElementMatch!16893) (regOne!34299 r3!135))) b!6913634))

(assert (= (and b!6912768 ((_ is Concat!25738) (regOne!34299 r3!135))) b!6913635))

(assert (= (and b!6912768 ((_ is Star!16893) (regOne!34299 r3!135))) b!6913636))

(assert (= (and b!6912768 ((_ is Union!16893) (regOne!34299 r3!135))) b!6913637))

(declare-fun b!6913639 () Bool)

(declare-fun e!4162198 () Bool)

(declare-fun tp!1903813 () Bool)

(declare-fun tp!1903815 () Bool)

(assert (=> b!6913639 (= e!4162198 (and tp!1903813 tp!1903815))))

(declare-fun b!6913638 () Bool)

(assert (=> b!6913638 (= e!4162198 tp_is_empty!43011)))

(assert (=> b!6912768 (= tp!1903658 e!4162198)))

(declare-fun b!6913641 () Bool)

(declare-fun tp!1903814 () Bool)

(declare-fun tp!1903816 () Bool)

(assert (=> b!6913641 (= e!4162198 (and tp!1903814 tp!1903816))))

(declare-fun b!6913640 () Bool)

(declare-fun tp!1903817 () Bool)

(assert (=> b!6913640 (= e!4162198 tp!1903817)))

(assert (= (and b!6912768 ((_ is ElementMatch!16893) (regTwo!34299 r3!135))) b!6913638))

(assert (= (and b!6912768 ((_ is Concat!25738) (regTwo!34299 r3!135))) b!6913639))

(assert (= (and b!6912768 ((_ is Star!16893) (regTwo!34299 r3!135))) b!6913640))

(assert (= (and b!6912768 ((_ is Union!16893) (regTwo!34299 r3!135))) b!6913641))

(declare-fun b!6913643 () Bool)

(declare-fun e!4162199 () Bool)

(declare-fun tp!1903818 () Bool)

(declare-fun tp!1903820 () Bool)

(assert (=> b!6913643 (= e!4162199 (and tp!1903818 tp!1903820))))

(declare-fun b!6913642 () Bool)

(assert (=> b!6913642 (= e!4162199 tp_is_empty!43011)))

(assert (=> b!6912784 (= tp!1903670 e!4162199)))

(declare-fun b!6913645 () Bool)

(declare-fun tp!1903819 () Bool)

(declare-fun tp!1903821 () Bool)

(assert (=> b!6913645 (= e!4162199 (and tp!1903819 tp!1903821))))

(declare-fun b!6913644 () Bool)

(declare-fun tp!1903822 () Bool)

(assert (=> b!6913644 (= e!4162199 tp!1903822)))

(assert (= (and b!6912784 ((_ is ElementMatch!16893) (regOne!34298 r2!6280))) b!6913642))

(assert (= (and b!6912784 ((_ is Concat!25738) (regOne!34298 r2!6280))) b!6913643))

(assert (= (and b!6912784 ((_ is Star!16893) (regOne!34298 r2!6280))) b!6913644))

(assert (= (and b!6912784 ((_ is Union!16893) (regOne!34298 r2!6280))) b!6913645))

(declare-fun b!6913647 () Bool)

(declare-fun e!4162200 () Bool)

(declare-fun tp!1903823 () Bool)

(declare-fun tp!1903825 () Bool)

(assert (=> b!6913647 (= e!4162200 (and tp!1903823 tp!1903825))))

(declare-fun b!6913646 () Bool)

(assert (=> b!6913646 (= e!4162200 tp_is_empty!43011)))

(assert (=> b!6912784 (= tp!1903668 e!4162200)))

(declare-fun b!6913649 () Bool)

(declare-fun tp!1903824 () Bool)

(declare-fun tp!1903826 () Bool)

(assert (=> b!6913649 (= e!4162200 (and tp!1903824 tp!1903826))))

(declare-fun b!6913648 () Bool)

(declare-fun tp!1903827 () Bool)

(assert (=> b!6913648 (= e!4162200 tp!1903827)))

(assert (= (and b!6912784 ((_ is ElementMatch!16893) (regTwo!34298 r2!6280))) b!6913646))

(assert (= (and b!6912784 ((_ is Concat!25738) (regTwo!34298 r2!6280))) b!6913647))

(assert (= (and b!6912784 ((_ is Star!16893) (regTwo!34298 r2!6280))) b!6913648))

(assert (= (and b!6912784 ((_ is Union!16893) (regTwo!34298 r2!6280))) b!6913649))

(declare-fun b!6913651 () Bool)

(declare-fun e!4162201 () Bool)

(declare-fun tp!1903828 () Bool)

(declare-fun tp!1903830 () Bool)

(assert (=> b!6913651 (= e!4162201 (and tp!1903828 tp!1903830))))

(declare-fun b!6913650 () Bool)

(assert (=> b!6913650 (= e!4162201 tp_is_empty!43011)))

(assert (=> b!6912766 (= tp!1903664 e!4162201)))

(declare-fun b!6913653 () Bool)

(declare-fun tp!1903829 () Bool)

(declare-fun tp!1903831 () Bool)

(assert (=> b!6913653 (= e!4162201 (and tp!1903829 tp!1903831))))

(declare-fun b!6913652 () Bool)

(declare-fun tp!1903832 () Bool)

(assert (=> b!6913652 (= e!4162201 tp!1903832)))

(assert (= (and b!6912766 ((_ is ElementMatch!16893) (regOne!34298 r1!6342))) b!6913650))

(assert (= (and b!6912766 ((_ is Concat!25738) (regOne!34298 r1!6342))) b!6913651))

(assert (= (and b!6912766 ((_ is Star!16893) (regOne!34298 r1!6342))) b!6913652))

(assert (= (and b!6912766 ((_ is Union!16893) (regOne!34298 r1!6342))) b!6913653))

(declare-fun b!6913655 () Bool)

(declare-fun e!4162202 () Bool)

(declare-fun tp!1903833 () Bool)

(declare-fun tp!1903835 () Bool)

(assert (=> b!6913655 (= e!4162202 (and tp!1903833 tp!1903835))))

(declare-fun b!6913654 () Bool)

(assert (=> b!6913654 (= e!4162202 tp_is_empty!43011)))

(assert (=> b!6912766 (= tp!1903667 e!4162202)))

(declare-fun b!6913657 () Bool)

(declare-fun tp!1903834 () Bool)

(declare-fun tp!1903836 () Bool)

(assert (=> b!6913657 (= e!4162202 (and tp!1903834 tp!1903836))))

(declare-fun b!6913656 () Bool)

(declare-fun tp!1903837 () Bool)

(assert (=> b!6913656 (= e!4162202 tp!1903837)))

(assert (= (and b!6912766 ((_ is ElementMatch!16893) (regTwo!34298 r1!6342))) b!6913654))

(assert (= (and b!6912766 ((_ is Concat!25738) (regTwo!34298 r1!6342))) b!6913655))

(assert (= (and b!6912766 ((_ is Star!16893) (regTwo!34298 r1!6342))) b!6913656))

(assert (= (and b!6912766 ((_ is Union!16893) (regTwo!34298 r1!6342))) b!6913657))

(declare-fun b!6913659 () Bool)

(declare-fun e!4162203 () Bool)

(declare-fun tp!1903838 () Bool)

(declare-fun tp!1903840 () Bool)

(assert (=> b!6913659 (= e!4162203 (and tp!1903838 tp!1903840))))

(declare-fun b!6913658 () Bool)

(assert (=> b!6913658 (= e!4162203 tp_is_empty!43011)))

(assert (=> b!6912783 (= tp!1903663 e!4162203)))

(declare-fun b!6913661 () Bool)

(declare-fun tp!1903839 () Bool)

(declare-fun tp!1903841 () Bool)

(assert (=> b!6913661 (= e!4162203 (and tp!1903839 tp!1903841))))

(declare-fun b!6913660 () Bool)

(declare-fun tp!1903842 () Bool)

(assert (=> b!6913660 (= e!4162203 tp!1903842)))

(assert (= (and b!6912783 ((_ is ElementMatch!16893) (reg!17222 r2!6280))) b!6913658))

(assert (= (and b!6912783 ((_ is Concat!25738) (reg!17222 r2!6280))) b!6913659))

(assert (= (and b!6912783 ((_ is Star!16893) (reg!17222 r2!6280))) b!6913660))

(assert (= (and b!6912783 ((_ is Union!16893) (reg!17222 r2!6280))) b!6913661))

(declare-fun b!6913663 () Bool)

(declare-fun e!4162204 () Bool)

(declare-fun tp!1903843 () Bool)

(declare-fun tp!1903845 () Bool)

(assert (=> b!6913663 (= e!4162204 (and tp!1903843 tp!1903845))))

(declare-fun b!6913662 () Bool)

(assert (=> b!6913662 (= e!4162204 tp_is_empty!43011)))

(assert (=> b!6912772 (= tp!1903671 e!4162204)))

(declare-fun b!6913665 () Bool)

(declare-fun tp!1903844 () Bool)

(declare-fun tp!1903846 () Bool)

(assert (=> b!6913665 (= e!4162204 (and tp!1903844 tp!1903846))))

(declare-fun b!6913664 () Bool)

(declare-fun tp!1903847 () Bool)

(assert (=> b!6913664 (= e!4162204 tp!1903847)))

(assert (= (and b!6912772 ((_ is ElementMatch!16893) (reg!17222 r1!6342))) b!6913662))

(assert (= (and b!6912772 ((_ is Concat!25738) (reg!17222 r1!6342))) b!6913663))

(assert (= (and b!6912772 ((_ is Star!16893) (reg!17222 r1!6342))) b!6913664))

(assert (= (and b!6912772 ((_ is Union!16893) (reg!17222 r1!6342))) b!6913665))

(check-sat (not d!2163678) (not d!2163796) (not b!6913660) (not b!6913659) (not b!6913290) (not b!6913471) (not d!2163612) (not bm!628521) (not b!6913433) (not b!6913209) (not b!6913437) (not b!6913664) (not b!6913637) (not b!6913558) (not d!2163762) (not b!6913480) (not b!6913424) (not b!6913665) (not d!2163802) (not b!6913648) (not b!6913610) (not b!6912981) (not b!6913559) (not b!6912974) (not b!6913614) (not d!2163804) (not bm!628531) (not b!6913603) (not b!6913616) (not b!6913009) (not d!2163648) (not b!6913434) (not b!6913620) (not b!6913511) (not b!6913474) (not d!2163722) (not d!2163808) (not b!6913499) (not b!6913281) (not b!6913645) (not d!2163656) (not b!6913555) (not b!6913504) (not bm!628471) (not bm!628527) (not b!6913099) (not bm!628539) (not b!6912980) (not b!6913227) (not d!2163706) (not d!2163724) (not d!2163738) (not d!2163752) (not b!6912971) (not b!6913633) (not bm!628526) (not b!6913651) (not b!6913336) (not bm!628530) (not b!6913657) (not b!6913429) (not b!6913271) (not b!6913619) (not b!6913587) (not bm!628518) (not b!6913644) (not bm!628528) (not bm!628513) (not b!6913655) (not bm!628515) (not bm!628478) (not b!6912881) (not b!6913343) (not b!6913500) (not b!6913456) (not b!6913604) (not b!6913647) (not d!2163622) (not d!2163720) (not b!6913640) (not b!6913608) (not b!6913422) (not b!6912874) (not d!2163652) (not d!2163770) (not b!6913552) (not b!6913632) (not b!6913481) (not b!6913656) (not b!6913294) (not b!6913299) (not b!6913103) (not b!6913107) (not b!6913419) (not b!6913649) (not b!6913374) (not b!6913582) (not b!6913105) (not b!6913612) (not b!6913333) (not bm!628480) (not b!6913615) (not bm!628486) (not b!6913012) (not bm!628535) (not b!6913218) (not b!6913276) (not d!2163776) (not d!2163800) (not b!6912976) (not bm!628512) (not bm!628516) (not b!6913280) (not b!6913641) (not b!6913606) (not bm!628544) (not b!6913274) (not d!2163764) (not d!2163614) (not b!6913285) (not bm!628519) (not bm!628543) (not d!2163708) (not b!6913367) (not b!6913549) (not b!6913003) (not d!2163628) (not b!6913652) (not d!2163798) (not b!6913477) (not bm!628538) (not b!6913624) (not b!6913428) (not b!6913584) (not b!6913602) (not b!6913636) (not bm!628525) (not b!6913332) (not b!6913588) (not b!6913635) (not bm!628487) (not b!6913097) (not b!6913623) (not b!6913618) (not b!6913661) (not bm!628540) (not b!6913438) (not b!6913425) (not b!6912977) (not d!2163806) (not d!2163786) (not d!2163666) (not b!6913476) (not b!6913653) (not b!6913008) (not d!2163634) (not b!6913295) (not b!6913639) tp_is_empty!43011 (not b!6913291) (not b!6913098) (not b!6913611) (not b!6913583) (not b!6913643) (not b!6913622) (not d!2163750) (not b!6913233) (not b!6913590) (not b!6913663) (not b!6913114) (not d!2163766) (not b!6913102) (not b!6913288) (not d!2163768) (not bm!628472) (not b!6913507) (not d!2163650) (not b!6913277) (not b!6913501) (not b!6913607) (not b!6913629) (not b!6913240) (not b!6913006) (not bm!628522) (not bm!628534) (not b!6913554) (not d!2163680) (not b!6913415) (not b!6913631) (not b!6913306) (not d!2163754) (not d!2163636) (not b!6913013) (not d!2163774) (not d!2163658) (not b!6913416) (not b!6913449))
(check-sat)
