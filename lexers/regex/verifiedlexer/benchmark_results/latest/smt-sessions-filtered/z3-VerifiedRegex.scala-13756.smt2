; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733972 () Bool)

(assert start!733972)

(declare-fun b!7619841 () Bool)

(assert (=> b!7619841 true))

(assert (=> b!7619841 true))

(declare-fun b!7619831 () Bool)

(declare-fun e!4531011 () Bool)

(declare-fun tp_is_empty!50969 () Bool)

(assert (=> b!7619831 (= e!4531011 tp_is_empty!50969)))

(declare-fun b!7619832 () Bool)

(declare-fun e!4531004 () Bool)

(declare-fun e!4531007 () Bool)

(assert (=> b!7619832 (= e!4531004 e!4531007)))

(declare-fun res!3050623 () Bool)

(assert (=> b!7619832 (=> res!3050623 e!4531007)))

(declare-datatypes ((C!40940 0))(
  ( (C!40941 (val!30910 Int)) )
))
(declare-datatypes ((Regex!20307 0))(
  ( (ElementMatch!20307 (c!1404342 C!40940)) (Concat!29152 (regOne!41126 Regex!20307) (regTwo!41126 Regex!20307)) (EmptyExpr!20307) (Star!20307 (reg!20636 Regex!20307)) (EmptyLang!20307) (Union!20307 (regOne!41127 Regex!20307) (regTwo!41127 Regex!20307)) )
))
(declare-fun r!14126 () Regex!20307)

(declare-fun nullable!8874 (Regex!20307) Bool)

(assert (=> b!7619832 (= res!3050623 (nullable!8874 (reg!20636 r!14126)))))

(declare-datatypes ((List!73160 0))(
  ( (Nil!73036) (Cons!73036 (h!79484 C!40940) (t!387895 List!73160)) )
))
(declare-datatypes ((tuple2!69176 0))(
  ( (tuple2!69177 (_1!37891 List!73160) (_2!37891 List!73160)) )
))
(declare-fun lt!2656488 () tuple2!69176)

(declare-fun matchR!9814 (Regex!20307 List!73160) Bool)

(declare-fun matchRSpec!4506 (Regex!20307 List!73160) Bool)

(assert (=> b!7619832 (= (matchR!9814 r!14126 (_2!37891 lt!2656488)) (matchRSpec!4506 r!14126 (_2!37891 lt!2656488)))))

(declare-datatypes ((Unit!167476 0))(
  ( (Unit!167477) )
))
(declare-fun lt!2656486 () Unit!167476)

(declare-fun mainMatchTheorem!4500 (Regex!20307 List!73160) Unit!167476)

(assert (=> b!7619832 (= lt!2656486 (mainMatchTheorem!4500 r!14126 (_2!37891 lt!2656488)))))

(assert (=> b!7619832 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656488)) (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656488)))))

(declare-fun lt!2656492 () Unit!167476)

(assert (=> b!7619832 (= lt!2656492 (mainMatchTheorem!4500 (reg!20636 r!14126) (_1!37891 lt!2656488)))))

(declare-fun lambda!468361 () Int)

(declare-fun pickWitness!438 (Int) tuple2!69176)

(assert (=> b!7619832 (= lt!2656488 (pickWitness!438 lambda!468361))))

(declare-fun b!7619833 () Bool)

(declare-fun res!3050625 () Bool)

(assert (=> b!7619833 (=> res!3050625 e!4531007)))

(declare-fun cut!8 () tuple2!69176)

(declare-fun s!9605 () List!73160)

(declare-fun ++!17617 (List!73160 List!73160) List!73160)

(assert (=> b!7619833 (= res!3050625 (not (= (++!17617 (_1!37891 cut!8) (_2!37891 cut!8)) s!9605)))))

(declare-fun b!7619834 () Bool)

(declare-fun res!3050624 () Bool)

(declare-fun e!4531003 () Bool)

(assert (=> b!7619834 (=> (not res!3050624) (not e!4531003))))

(get-info :version)

(assert (=> b!7619834 (= res!3050624 (and (not ((_ is EmptyExpr!20307) r!14126)) (not ((_ is EmptyLang!20307) r!14126)) (not ((_ is ElementMatch!20307) r!14126)) (not ((_ is Union!20307) r!14126)) ((_ is Star!20307) r!14126)))))

(declare-fun b!7619835 () Bool)

(declare-fun e!4531006 () Bool)

(assert (=> b!7619835 (= e!4531006 false)))

(declare-fun b!7619836 () Bool)

(declare-fun tp!2224997 () Bool)

(declare-fun tp!2224994 () Bool)

(assert (=> b!7619836 (= e!4531011 (and tp!2224997 tp!2224994))))

(declare-fun b!7619837 () Bool)

(declare-fun e!4531005 () Bool)

(assert (=> b!7619837 (= e!4531005 e!4531004)))

(declare-fun res!3050632 () Bool)

(assert (=> b!7619837 (=> res!3050632 e!4531004)))

(declare-fun Exists!4463 (Int) Bool)

(assert (=> b!7619837 (= res!3050632 (not (Exists!4463 lambda!468361)))))

(declare-fun lt!2656497 () Unit!167476)

(declare-fun e!4531002 () Unit!167476)

(assert (=> b!7619837 (= lt!2656497 e!4531002)))

(declare-fun c!1404341 () Bool)

(assert (=> b!7619837 (= c!1404341 (not (matchR!9814 r!14126 s!9605)))))

(declare-fun lt!2656495 () tuple2!69176)

(assert (=> b!7619837 (= (matchR!9814 r!14126 (_2!37891 lt!2656495)) (matchRSpec!4506 r!14126 (_2!37891 lt!2656495)))))

(declare-fun lt!2656490 () Unit!167476)

(assert (=> b!7619837 (= lt!2656490 (mainMatchTheorem!4500 r!14126 (_2!37891 lt!2656495)))))

(assert (=> b!7619837 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656495)) (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656495)))))

(declare-fun lt!2656494 () Unit!167476)

(assert (=> b!7619837 (= lt!2656494 (mainMatchTheorem!4500 (reg!20636 r!14126) (_1!37891 lt!2656495)))))

(declare-datatypes ((Option!17382 0))(
  ( (None!17381) (Some!17381 (v!54516 tuple2!69176)) )
))
(declare-fun lt!2656498 () Option!17382)

(declare-fun get!25772 (Option!17382) tuple2!69176)

(assert (=> b!7619837 (= lt!2656495 (get!25772 lt!2656498))))

(declare-fun b!7619838 () Bool)

(declare-fun res!3050627 () Bool)

(assert (=> b!7619838 (=> res!3050627 e!4531007)))

(declare-fun isEmpty!41652 (List!73160) Bool)

(assert (=> b!7619838 (= res!3050627 (isEmpty!41652 (_1!37891 cut!8)))))

(declare-fun b!7619839 () Bool)

(declare-fun tp!2224998 () Bool)

(declare-fun tp!2224993 () Bool)

(assert (=> b!7619839 (= e!4531011 (and tp!2224998 tp!2224993))))

(declare-fun b!7619840 () Bool)

(declare-fun validRegex!10727 (Regex!20307) Bool)

(assert (=> b!7619840 (= e!4531007 (validRegex!10727 (reg!20636 r!14126)))))

(assert (=> b!7619841 (= e!4531003 (not e!4531005))))

(declare-fun res!3050630 () Bool)

(assert (=> b!7619841 (=> res!3050630 e!4531005)))

(declare-fun lt!2656491 () Bool)

(assert (=> b!7619841 (= res!3050630 (not lt!2656491))))

(assert (=> b!7619841 (= lt!2656491 (Exists!4463 lambda!468361))))

(declare-fun isDefined!13998 (Option!17382) Bool)

(assert (=> b!7619841 (= lt!2656491 (isDefined!13998 lt!2656498))))

(declare-fun findConcatSeparation!3412 (Regex!20307 Regex!20307 List!73160 List!73160 List!73160) Option!17382)

(assert (=> b!7619841 (= lt!2656498 (findConcatSeparation!3412 (reg!20636 r!14126) r!14126 Nil!73036 s!9605 s!9605))))

(declare-fun lt!2656489 () Unit!167476)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3170 (Regex!20307 Regex!20307 List!73160) Unit!167476)

(assert (=> b!7619841 (= lt!2656489 (lemmaFindConcatSeparationEquivalentToExists!3170 (reg!20636 r!14126) r!14126 s!9605))))

(declare-fun b!7619842 () Bool)

(declare-fun Unit!167478 () Unit!167476)

(assert (=> b!7619842 (= e!4531002 Unit!167478)))

(declare-fun b!7619843 () Bool)

(declare-fun res!3050631 () Bool)

(assert (=> b!7619843 (=> res!3050631 e!4531007)))

(assert (=> b!7619843 (= res!3050631 (isEmpty!41652 (_1!37891 lt!2656488)))))

(declare-fun b!7619844 () Bool)

(declare-fun e!4531010 () Bool)

(declare-fun tp!2224992 () Bool)

(assert (=> b!7619844 (= e!4531010 (and tp_is_empty!50969 tp!2224992))))

(declare-fun b!7619845 () Bool)

(declare-fun e!4531008 () Bool)

(declare-fun tp!2224996 () Bool)

(assert (=> b!7619845 (= e!4531008 (and tp_is_empty!50969 tp!2224996))))

(declare-fun b!7619847 () Bool)

(declare-fun tp!2224999 () Bool)

(assert (=> b!7619847 (= e!4531011 tp!2224999)))

(declare-fun res!3050629 () Bool)

(assert (=> start!733972 (=> (not res!3050629) (not e!4531003))))

(assert (=> start!733972 (= res!3050629 (validRegex!10727 r!14126))))

(assert (=> start!733972 e!4531003))

(assert (=> start!733972 e!4531011))

(assert (=> start!733972 e!4531008))

(declare-fun e!4531009 () Bool)

(assert (=> start!733972 (and e!4531010 e!4531009)))

(declare-fun b!7619846 () Bool)

(declare-fun Unit!167479 () Unit!167476)

(assert (=> b!7619846 (= e!4531002 Unit!167479)))

(declare-fun lt!2656487 () Unit!167476)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!134 (Regex!20307 Regex!20307 List!73160 List!73160 List!73160) Unit!167476)

(assert (=> b!7619846 (= lt!2656487 (lemmaFindSeparationIsDefinedThenConcatMatches!134 (reg!20636 r!14126) r!14126 (_1!37891 lt!2656495) (_2!37891 lt!2656495) s!9605))))

(declare-fun lt!2656493 () List!73160)

(assert (=> b!7619846 (= lt!2656493 (++!17617 (_1!37891 lt!2656495) (_2!37891 lt!2656495)))))

(assert (=> b!7619846 (matchR!9814 (Concat!29152 (reg!20636 r!14126) r!14126) lt!2656493)))

(declare-fun lt!2656496 () Unit!167476)

(declare-fun lemmaStarApp!188 (Regex!20307 List!73160 List!73160) Unit!167476)

(assert (=> b!7619846 (= lt!2656496 (lemmaStarApp!188 (reg!20636 r!14126) (_1!37891 lt!2656495) (_2!37891 lt!2656495)))))

(declare-fun res!3050626 () Bool)

(assert (=> b!7619846 (= res!3050626 (matchR!9814 r!14126 lt!2656493))))

(assert (=> b!7619846 (=> (not res!3050626) (not e!4531006))))

(assert (=> b!7619846 e!4531006))

(declare-fun b!7619848 () Bool)

(declare-fun res!3050628 () Bool)

(assert (=> b!7619848 (=> (not res!3050628) (not e!4531003))))

(assert (=> b!7619848 (= res!3050628 (not (isEmpty!41652 s!9605)))))

(declare-fun b!7619849 () Bool)

(declare-fun tp!2224995 () Bool)

(assert (=> b!7619849 (= e!4531009 (and tp_is_empty!50969 tp!2224995))))

(assert (= (and start!733972 res!3050629) b!7619834))

(assert (= (and b!7619834 res!3050624) b!7619848))

(assert (= (and b!7619848 res!3050628) b!7619841))

(assert (= (and b!7619841 (not res!3050630)) b!7619837))

(assert (= (and b!7619837 c!1404341) b!7619846))

(assert (= (and b!7619837 (not c!1404341)) b!7619842))

(assert (= (and b!7619846 res!3050626) b!7619835))

(assert (= (and b!7619837 (not res!3050632)) b!7619832))

(assert (= (and b!7619832 (not res!3050623)) b!7619843))

(assert (= (and b!7619843 (not res!3050631)) b!7619833))

(assert (= (and b!7619833 (not res!3050625)) b!7619838))

(assert (= (and b!7619838 (not res!3050627)) b!7619840))

(assert (= (and start!733972 ((_ is ElementMatch!20307) r!14126)) b!7619831))

(assert (= (and start!733972 ((_ is Concat!29152) r!14126)) b!7619839))

(assert (= (and start!733972 ((_ is Star!20307) r!14126)) b!7619847))

(assert (= (and start!733972 ((_ is Union!20307) r!14126)) b!7619836))

(assert (= (and start!733972 ((_ is Cons!73036) s!9605)) b!7619845))

(assert (= (and start!733972 ((_ is Cons!73036) (_1!37891 cut!8))) b!7619844))

(assert (= (and start!733972 ((_ is Cons!73036) (_2!37891 cut!8))) b!7619849))

(declare-fun m!8151960 () Bool)

(assert (=> b!7619840 m!8151960))

(declare-fun m!8151962 () Bool)

(assert (=> b!7619841 m!8151962))

(declare-fun m!8151964 () Bool)

(assert (=> b!7619841 m!8151964))

(declare-fun m!8151966 () Bool)

(assert (=> b!7619841 m!8151966))

(declare-fun m!8151968 () Bool)

(assert (=> b!7619841 m!8151968))

(declare-fun m!8151970 () Bool)

(assert (=> b!7619843 m!8151970))

(declare-fun m!8151972 () Bool)

(assert (=> b!7619837 m!8151972))

(declare-fun m!8151974 () Bool)

(assert (=> b!7619837 m!8151974))

(declare-fun m!8151976 () Bool)

(assert (=> b!7619837 m!8151976))

(declare-fun m!8151978 () Bool)

(assert (=> b!7619837 m!8151978))

(declare-fun m!8151980 () Bool)

(assert (=> b!7619837 m!8151980))

(declare-fun m!8151982 () Bool)

(assert (=> b!7619837 m!8151982))

(declare-fun m!8151984 () Bool)

(assert (=> b!7619837 m!8151984))

(assert (=> b!7619837 m!8151962))

(declare-fun m!8151986 () Bool)

(assert (=> b!7619837 m!8151986))

(declare-fun m!8151988 () Bool)

(assert (=> b!7619846 m!8151988))

(declare-fun m!8151990 () Bool)

(assert (=> b!7619846 m!8151990))

(declare-fun m!8151992 () Bool)

(assert (=> b!7619846 m!8151992))

(declare-fun m!8151994 () Bool)

(assert (=> b!7619846 m!8151994))

(declare-fun m!8151996 () Bool)

(assert (=> b!7619846 m!8151996))

(declare-fun m!8151998 () Bool)

(assert (=> b!7619832 m!8151998))

(declare-fun m!8152000 () Bool)

(assert (=> b!7619832 m!8152000))

(declare-fun m!8152002 () Bool)

(assert (=> b!7619832 m!8152002))

(declare-fun m!8152004 () Bool)

(assert (=> b!7619832 m!8152004))

(declare-fun m!8152006 () Bool)

(assert (=> b!7619832 m!8152006))

(declare-fun m!8152008 () Bool)

(assert (=> b!7619832 m!8152008))

(declare-fun m!8152010 () Bool)

(assert (=> b!7619832 m!8152010))

(declare-fun m!8152012 () Bool)

(assert (=> b!7619832 m!8152012))

(declare-fun m!8152014 () Bool)

(assert (=> b!7619833 m!8152014))

(declare-fun m!8152016 () Bool)

(assert (=> b!7619838 m!8152016))

(declare-fun m!8152018 () Bool)

(assert (=> b!7619848 m!8152018))

(declare-fun m!8152020 () Bool)

(assert (=> start!733972 m!8152020))

(check-sat (not start!733972) (not b!7619839) (not b!7619837) (not b!7619846) (not b!7619849) (not b!7619833) (not b!7619848) (not b!7619838) (not b!7619844) (not b!7619841) tp_is_empty!50969 (not b!7619836) (not b!7619843) (not b!7619847) (not b!7619832) (not b!7619840) (not b!7619845))
(check-sat)
(get-model)

(declare-fun b!7619919 () Bool)

(declare-fun res!3050668 () Bool)

(declare-fun e!4531052 () Bool)

(assert (=> b!7619919 (=> (not res!3050668) (not e!4531052))))

(declare-fun lt!2656503 () List!73160)

(declare-fun size!42534 (List!73160) Int)

(assert (=> b!7619919 (= res!3050668 (= (size!42534 lt!2656503) (+ (size!42534 (_1!37891 cut!8)) (size!42534 (_2!37891 cut!8)))))))

(declare-fun b!7619917 () Bool)

(declare-fun e!4531051 () List!73160)

(assert (=> b!7619917 (= e!4531051 (_2!37891 cut!8))))

(declare-fun b!7619920 () Bool)

(assert (=> b!7619920 (= e!4531052 (or (not (= (_2!37891 cut!8) Nil!73036)) (= lt!2656503 (_1!37891 cut!8))))))

(declare-fun d!2323037 () Bool)

(assert (=> d!2323037 e!4531052))

(declare-fun res!3050669 () Bool)

(assert (=> d!2323037 (=> (not res!3050669) (not e!4531052))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15441 (List!73160) (InoxSet C!40940))

(assert (=> d!2323037 (= res!3050669 (= (content!15441 lt!2656503) ((_ map or) (content!15441 (_1!37891 cut!8)) (content!15441 (_2!37891 cut!8)))))))

(assert (=> d!2323037 (= lt!2656503 e!4531051)))

(declare-fun c!1404357 () Bool)

(assert (=> d!2323037 (= c!1404357 ((_ is Nil!73036) (_1!37891 cut!8)))))

(assert (=> d!2323037 (= (++!17617 (_1!37891 cut!8) (_2!37891 cut!8)) lt!2656503)))

(declare-fun b!7619918 () Bool)

(assert (=> b!7619918 (= e!4531051 (Cons!73036 (h!79484 (_1!37891 cut!8)) (++!17617 (t!387895 (_1!37891 cut!8)) (_2!37891 cut!8))))))

(assert (= (and d!2323037 c!1404357) b!7619917))

(assert (= (and d!2323037 (not c!1404357)) b!7619918))

(assert (= (and d!2323037 res!3050669) b!7619919))

(assert (= (and b!7619919 res!3050668) b!7619920))

(declare-fun m!8152028 () Bool)

(assert (=> b!7619919 m!8152028))

(declare-fun m!8152030 () Bool)

(assert (=> b!7619919 m!8152030))

(declare-fun m!8152032 () Bool)

(assert (=> b!7619919 m!8152032))

(declare-fun m!8152034 () Bool)

(assert (=> d!2323037 m!8152034))

(declare-fun m!8152036 () Bool)

(assert (=> d!2323037 m!8152036))

(declare-fun m!8152038 () Bool)

(assert (=> d!2323037 m!8152038))

(declare-fun m!8152040 () Bool)

(assert (=> b!7619918 m!8152040))

(assert (=> b!7619833 d!2323037))

(declare-fun b!7619985 () Bool)

(declare-fun e!4531098 () Bool)

(declare-fun call!699853 () Bool)

(assert (=> b!7619985 (= e!4531098 call!699853)))

(declare-fun b!7619986 () Bool)

(declare-fun e!4531093 () Bool)

(declare-fun e!4531096 () Bool)

(assert (=> b!7619986 (= e!4531093 e!4531096)))

(declare-fun res!3050706 () Bool)

(assert (=> b!7619986 (=> (not res!3050706) (not e!4531096))))

(declare-fun call!699854 () Bool)

(assert (=> b!7619986 (= res!3050706 call!699854)))

(declare-fun bm!699848 () Bool)

(declare-fun c!1404374 () Bool)

(assert (=> bm!699848 (= call!699854 (validRegex!10727 (ite c!1404374 (regOne!41127 r!14126) (regOne!41126 r!14126))))))

(declare-fun b!7619987 () Bool)

(declare-fun e!4531095 () Bool)

(declare-fun call!699855 () Bool)

(assert (=> b!7619987 (= e!4531095 call!699855)))

(declare-fun b!7619988 () Bool)

(declare-fun res!3050707 () Bool)

(assert (=> b!7619988 (=> (not res!3050707) (not e!4531098))))

(assert (=> b!7619988 (= res!3050707 call!699854)))

(declare-fun e!4531092 () Bool)

(assert (=> b!7619988 (= e!4531092 e!4531098)))

(declare-fun b!7619989 () Bool)

(declare-fun res!3050705 () Bool)

(assert (=> b!7619989 (=> res!3050705 e!4531093)))

(assert (=> b!7619989 (= res!3050705 (not ((_ is Concat!29152) r!14126)))))

(assert (=> b!7619989 (= e!4531092 e!4531093)))

(declare-fun b!7619990 () Bool)

(assert (=> b!7619990 (= e!4531096 call!699853)))

(declare-fun b!7619991 () Bool)

(declare-fun e!4531094 () Bool)

(declare-fun e!4531097 () Bool)

(assert (=> b!7619991 (= e!4531094 e!4531097)))

(declare-fun c!1404373 () Bool)

(assert (=> b!7619991 (= c!1404373 ((_ is Star!20307) r!14126))))

(declare-fun b!7619992 () Bool)

(assert (=> b!7619992 (= e!4531097 e!4531095)))

(declare-fun res!3050708 () Bool)

(assert (=> b!7619992 (= res!3050708 (not (nullable!8874 (reg!20636 r!14126))))))

(assert (=> b!7619992 (=> (not res!3050708) (not e!4531095))))

(declare-fun bm!699849 () Bool)

(assert (=> bm!699849 (= call!699853 call!699855)))

(declare-fun d!2323041 () Bool)

(declare-fun res!3050704 () Bool)

(assert (=> d!2323041 (=> res!3050704 e!4531094)))

(assert (=> d!2323041 (= res!3050704 ((_ is ElementMatch!20307) r!14126))))

(assert (=> d!2323041 (= (validRegex!10727 r!14126) e!4531094)))

(declare-fun bm!699850 () Bool)

(assert (=> bm!699850 (= call!699855 (validRegex!10727 (ite c!1404373 (reg!20636 r!14126) (ite c!1404374 (regTwo!41127 r!14126) (regTwo!41126 r!14126)))))))

(declare-fun b!7619993 () Bool)

(assert (=> b!7619993 (= e!4531097 e!4531092)))

(assert (=> b!7619993 (= c!1404374 ((_ is Union!20307) r!14126))))

(assert (= (and d!2323041 (not res!3050704)) b!7619991))

(assert (= (and b!7619991 c!1404373) b!7619992))

(assert (= (and b!7619991 (not c!1404373)) b!7619993))

(assert (= (and b!7619992 res!3050708) b!7619987))

(assert (= (and b!7619993 c!1404374) b!7619988))

(assert (= (and b!7619993 (not c!1404374)) b!7619989))

(assert (= (and b!7619988 res!3050707) b!7619985))

(assert (= (and b!7619989 (not res!3050705)) b!7619986))

(assert (= (and b!7619986 res!3050706) b!7619990))

(assert (= (or b!7619988 b!7619986) bm!699848))

(assert (= (or b!7619985 b!7619990) bm!699849))

(assert (= (or b!7619987 bm!699849) bm!699850))

(declare-fun m!8152054 () Bool)

(assert (=> bm!699848 m!8152054))

(assert (=> b!7619992 m!8152004))

(declare-fun m!8152056 () Bool)

(assert (=> bm!699850 m!8152056))

(assert (=> start!733972 d!2323041))

(declare-fun b!7620098 () Bool)

(declare-fun res!3050768 () Bool)

(declare-fun e!4531160 () Bool)

(assert (=> b!7620098 (=> (not res!3050768) (not e!4531160))))

(declare-fun call!699869 () Bool)

(assert (=> b!7620098 (= res!3050768 (not call!699869))))

(declare-fun b!7620099 () Bool)

(declare-fun e!4531158 () Bool)

(declare-fun head!15654 (List!73160) C!40940)

(assert (=> b!7620099 (= e!4531158 (not (= (head!15654 lt!2656493) (c!1404342 r!14126))))))

(declare-fun b!7620100 () Bool)

(declare-fun e!4531156 () Bool)

(declare-fun derivativeStep!5854 (Regex!20307 C!40940) Regex!20307)

(declare-fun tail!15194 (List!73160) List!73160)

(assert (=> b!7620100 (= e!4531156 (matchR!9814 (derivativeStep!5854 r!14126 (head!15654 lt!2656493)) (tail!15194 lt!2656493)))))

(declare-fun d!2323047 () Bool)

(declare-fun e!4531155 () Bool)

(assert (=> d!2323047 e!4531155))

(declare-fun c!1404402 () Bool)

(assert (=> d!2323047 (= c!1404402 ((_ is EmptyExpr!20307) r!14126))))

(declare-fun lt!2656523 () Bool)

(assert (=> d!2323047 (= lt!2656523 e!4531156)))

(declare-fun c!1404403 () Bool)

(assert (=> d!2323047 (= c!1404403 (isEmpty!41652 lt!2656493))))

(assert (=> d!2323047 (validRegex!10727 r!14126)))

(assert (=> d!2323047 (= (matchR!9814 r!14126 lt!2656493) lt!2656523)))

(declare-fun b!7620101 () Bool)

(assert (=> b!7620101 (= e!4531156 (nullable!8874 r!14126))))

(declare-fun b!7620102 () Bool)

(declare-fun res!3050761 () Bool)

(declare-fun e!4531159 () Bool)

(assert (=> b!7620102 (=> res!3050761 e!4531159)))

(assert (=> b!7620102 (= res!3050761 e!4531160)))

(declare-fun res!3050767 () Bool)

(assert (=> b!7620102 (=> (not res!3050767) (not e!4531160))))

(assert (=> b!7620102 (= res!3050767 lt!2656523)))

(declare-fun b!7620103 () Bool)

(assert (=> b!7620103 (= e!4531160 (= (head!15654 lt!2656493) (c!1404342 r!14126)))))

(declare-fun bm!699864 () Bool)

(assert (=> bm!699864 (= call!699869 (isEmpty!41652 lt!2656493))))

(declare-fun b!7620104 () Bool)

(declare-fun e!4531157 () Bool)

(assert (=> b!7620104 (= e!4531157 e!4531158)))

(declare-fun res!3050763 () Bool)

(assert (=> b!7620104 (=> res!3050763 e!4531158)))

(assert (=> b!7620104 (= res!3050763 call!699869)))

(declare-fun b!7620105 () Bool)

(assert (=> b!7620105 (= e!4531155 (= lt!2656523 call!699869))))

(declare-fun b!7620106 () Bool)

(declare-fun res!3050766 () Bool)

(assert (=> b!7620106 (=> res!3050766 e!4531159)))

(assert (=> b!7620106 (= res!3050766 (not ((_ is ElementMatch!20307) r!14126)))))

(declare-fun e!4531154 () Bool)

(assert (=> b!7620106 (= e!4531154 e!4531159)))

(declare-fun b!7620107 () Bool)

(assert (=> b!7620107 (= e!4531159 e!4531157)))

(declare-fun res!3050765 () Bool)

(assert (=> b!7620107 (=> (not res!3050765) (not e!4531157))))

(assert (=> b!7620107 (= res!3050765 (not lt!2656523))))

(declare-fun b!7620108 () Bool)

(declare-fun res!3050762 () Bool)

(assert (=> b!7620108 (=> (not res!3050762) (not e!4531160))))

(assert (=> b!7620108 (= res!3050762 (isEmpty!41652 (tail!15194 lt!2656493)))))

(declare-fun b!7620109 () Bool)

(declare-fun res!3050764 () Bool)

(assert (=> b!7620109 (=> res!3050764 e!4531158)))

(assert (=> b!7620109 (= res!3050764 (not (isEmpty!41652 (tail!15194 lt!2656493))))))

(declare-fun b!7620110 () Bool)

(assert (=> b!7620110 (= e!4531155 e!4531154)))

(declare-fun c!1404401 () Bool)

(assert (=> b!7620110 (= c!1404401 ((_ is EmptyLang!20307) r!14126))))

(declare-fun b!7620111 () Bool)

(assert (=> b!7620111 (= e!4531154 (not lt!2656523))))

(assert (= (and d!2323047 c!1404403) b!7620101))

(assert (= (and d!2323047 (not c!1404403)) b!7620100))

(assert (= (and d!2323047 c!1404402) b!7620105))

(assert (= (and d!2323047 (not c!1404402)) b!7620110))

(assert (= (and b!7620110 c!1404401) b!7620111))

(assert (= (and b!7620110 (not c!1404401)) b!7620106))

(assert (= (and b!7620106 (not res!3050766)) b!7620102))

(assert (= (and b!7620102 res!3050767) b!7620098))

(assert (= (and b!7620098 res!3050768) b!7620108))

(assert (= (and b!7620108 res!3050762) b!7620103))

(assert (= (and b!7620102 (not res!3050761)) b!7620107))

(assert (= (and b!7620107 res!3050765) b!7620104))

(assert (= (and b!7620104 (not res!3050763)) b!7620109))

(assert (= (and b!7620109 (not res!3050764)) b!7620099))

(assert (= (or b!7620105 b!7620098 b!7620104) bm!699864))

(declare-fun m!8152136 () Bool)

(assert (=> b!7620103 m!8152136))

(declare-fun m!8152138 () Bool)

(assert (=> d!2323047 m!8152138))

(assert (=> d!2323047 m!8152020))

(declare-fun m!8152140 () Bool)

(assert (=> b!7620108 m!8152140))

(assert (=> b!7620108 m!8152140))

(declare-fun m!8152142 () Bool)

(assert (=> b!7620108 m!8152142))

(assert (=> bm!699864 m!8152138))

(assert (=> b!7620109 m!8152140))

(assert (=> b!7620109 m!8152140))

(assert (=> b!7620109 m!8152142))

(assert (=> b!7620100 m!8152136))

(assert (=> b!7620100 m!8152136))

(declare-fun m!8152144 () Bool)

(assert (=> b!7620100 m!8152144))

(assert (=> b!7620100 m!8152140))

(assert (=> b!7620100 m!8152144))

(assert (=> b!7620100 m!8152140))

(declare-fun m!8152148 () Bool)

(assert (=> b!7620100 m!8152148))

(declare-fun m!8152152 () Bool)

(assert (=> b!7620101 m!8152152))

(assert (=> b!7620099 m!8152136))

(assert (=> b!7619846 d!2323047))

(declare-fun b!7620128 () Bool)

(declare-fun res!3050777 () Bool)

(declare-fun e!4531169 () Bool)

(assert (=> b!7620128 (=> (not res!3050777) (not e!4531169))))

(declare-fun lt!2656528 () List!73160)

(assert (=> b!7620128 (= res!3050777 (= (size!42534 lt!2656528) (+ (size!42534 (_1!37891 lt!2656495)) (size!42534 (_2!37891 lt!2656495)))))))

(declare-fun b!7620126 () Bool)

(declare-fun e!4531168 () List!73160)

(assert (=> b!7620126 (= e!4531168 (_2!37891 lt!2656495))))

(declare-fun b!7620129 () Bool)

(assert (=> b!7620129 (= e!4531169 (or (not (= (_2!37891 lt!2656495) Nil!73036)) (= lt!2656528 (_1!37891 lt!2656495))))))

(declare-fun d!2323073 () Bool)

(assert (=> d!2323073 e!4531169))

(declare-fun res!3050778 () Bool)

(assert (=> d!2323073 (=> (not res!3050778) (not e!4531169))))

(assert (=> d!2323073 (= res!3050778 (= (content!15441 lt!2656528) ((_ map or) (content!15441 (_1!37891 lt!2656495)) (content!15441 (_2!37891 lt!2656495)))))))

(assert (=> d!2323073 (= lt!2656528 e!4531168)))

(declare-fun c!1404407 () Bool)

(assert (=> d!2323073 (= c!1404407 ((_ is Nil!73036) (_1!37891 lt!2656495)))))

(assert (=> d!2323073 (= (++!17617 (_1!37891 lt!2656495) (_2!37891 lt!2656495)) lt!2656528)))

(declare-fun b!7620127 () Bool)

(assert (=> b!7620127 (= e!4531168 (Cons!73036 (h!79484 (_1!37891 lt!2656495)) (++!17617 (t!387895 (_1!37891 lt!2656495)) (_2!37891 lt!2656495))))))

(assert (= (and d!2323073 c!1404407) b!7620126))

(assert (= (and d!2323073 (not c!1404407)) b!7620127))

(assert (= (and d!2323073 res!3050778) b!7620128))

(assert (= (and b!7620128 res!3050777) b!7620129))

(declare-fun m!8152160 () Bool)

(assert (=> b!7620128 m!8152160))

(declare-fun m!8152162 () Bool)

(assert (=> b!7620128 m!8152162))

(declare-fun m!8152164 () Bool)

(assert (=> b!7620128 m!8152164))

(declare-fun m!8152166 () Bool)

(assert (=> d!2323073 m!8152166))

(declare-fun m!8152168 () Bool)

(assert (=> d!2323073 m!8152168))

(declare-fun m!8152170 () Bool)

(assert (=> d!2323073 m!8152170))

(declare-fun m!8152172 () Bool)

(assert (=> b!7620127 m!8152172))

(assert (=> b!7619846 d!2323073))

(declare-fun d!2323077 () Bool)

(assert (=> d!2323077 (matchR!9814 (Star!20307 (reg!20636 r!14126)) (++!17617 (_1!37891 lt!2656495) (_2!37891 lt!2656495)))))

(declare-fun lt!2656533 () Unit!167476)

(declare-fun choose!58787 (Regex!20307 List!73160 List!73160) Unit!167476)

(assert (=> d!2323077 (= lt!2656533 (choose!58787 (reg!20636 r!14126) (_1!37891 lt!2656495) (_2!37891 lt!2656495)))))

(assert (=> d!2323077 (validRegex!10727 (Star!20307 (reg!20636 r!14126)))))

(assert (=> d!2323077 (= (lemmaStarApp!188 (reg!20636 r!14126) (_1!37891 lt!2656495) (_2!37891 lt!2656495)) lt!2656533)))

(declare-fun bs!1943215 () Bool)

(assert (= bs!1943215 d!2323077))

(assert (=> bs!1943215 m!8151994))

(assert (=> bs!1943215 m!8151994))

(declare-fun m!8152201 () Bool)

(assert (=> bs!1943215 m!8152201))

(declare-fun m!8152204 () Bool)

(assert (=> bs!1943215 m!8152204))

(declare-fun m!8152208 () Bool)

(assert (=> bs!1943215 m!8152208))

(assert (=> b!7619846 d!2323077))

(declare-fun b!7620166 () Bool)

(declare-fun res!3050800 () Bool)

(declare-fun e!4531197 () Bool)

(assert (=> b!7620166 (=> (not res!3050800) (not e!4531197))))

(declare-fun call!699876 () Bool)

(assert (=> b!7620166 (= res!3050800 (not call!699876))))

(declare-fun b!7620167 () Bool)

(declare-fun e!4531195 () Bool)

(assert (=> b!7620167 (= e!4531195 (not (= (head!15654 lt!2656493) (c!1404342 (Concat!29152 (reg!20636 r!14126) r!14126)))))))

(declare-fun b!7620168 () Bool)

(declare-fun e!4531193 () Bool)

(assert (=> b!7620168 (= e!4531193 (matchR!9814 (derivativeStep!5854 (Concat!29152 (reg!20636 r!14126) r!14126) (head!15654 lt!2656493)) (tail!15194 lt!2656493)))))

(declare-fun d!2323087 () Bool)

(declare-fun e!4531192 () Bool)

(assert (=> d!2323087 e!4531192))

(declare-fun c!1404420 () Bool)

(assert (=> d!2323087 (= c!1404420 ((_ is EmptyExpr!20307) (Concat!29152 (reg!20636 r!14126) r!14126)))))

(declare-fun lt!2656535 () Bool)

(assert (=> d!2323087 (= lt!2656535 e!4531193)))

(declare-fun c!1404421 () Bool)

(assert (=> d!2323087 (= c!1404421 (isEmpty!41652 lt!2656493))))

(assert (=> d!2323087 (validRegex!10727 (Concat!29152 (reg!20636 r!14126) r!14126))))

(assert (=> d!2323087 (= (matchR!9814 (Concat!29152 (reg!20636 r!14126) r!14126) lt!2656493) lt!2656535)))

(declare-fun b!7620169 () Bool)

(assert (=> b!7620169 (= e!4531193 (nullable!8874 (Concat!29152 (reg!20636 r!14126) r!14126)))))

(declare-fun b!7620170 () Bool)

(declare-fun res!3050793 () Bool)

(declare-fun e!4531196 () Bool)

(assert (=> b!7620170 (=> res!3050793 e!4531196)))

(assert (=> b!7620170 (= res!3050793 e!4531197)))

(declare-fun res!3050799 () Bool)

(assert (=> b!7620170 (=> (not res!3050799) (not e!4531197))))

(assert (=> b!7620170 (= res!3050799 lt!2656535)))

(declare-fun b!7620171 () Bool)

(assert (=> b!7620171 (= e!4531197 (= (head!15654 lt!2656493) (c!1404342 (Concat!29152 (reg!20636 r!14126) r!14126))))))

(declare-fun bm!699871 () Bool)

(assert (=> bm!699871 (= call!699876 (isEmpty!41652 lt!2656493))))

(declare-fun b!7620172 () Bool)

(declare-fun e!4531194 () Bool)

(assert (=> b!7620172 (= e!4531194 e!4531195)))

(declare-fun res!3050795 () Bool)

(assert (=> b!7620172 (=> res!3050795 e!4531195)))

(assert (=> b!7620172 (= res!3050795 call!699876)))

(declare-fun b!7620173 () Bool)

(assert (=> b!7620173 (= e!4531192 (= lt!2656535 call!699876))))

(declare-fun b!7620174 () Bool)

(declare-fun res!3050798 () Bool)

(assert (=> b!7620174 (=> res!3050798 e!4531196)))

(assert (=> b!7620174 (= res!3050798 (not ((_ is ElementMatch!20307) (Concat!29152 (reg!20636 r!14126) r!14126))))))

(declare-fun e!4531191 () Bool)

(assert (=> b!7620174 (= e!4531191 e!4531196)))

(declare-fun b!7620175 () Bool)

(assert (=> b!7620175 (= e!4531196 e!4531194)))

(declare-fun res!3050797 () Bool)

(assert (=> b!7620175 (=> (not res!3050797) (not e!4531194))))

(assert (=> b!7620175 (= res!3050797 (not lt!2656535))))

(declare-fun b!7620176 () Bool)

(declare-fun res!3050794 () Bool)

(assert (=> b!7620176 (=> (not res!3050794) (not e!4531197))))

(assert (=> b!7620176 (= res!3050794 (isEmpty!41652 (tail!15194 lt!2656493)))))

(declare-fun b!7620177 () Bool)

(declare-fun res!3050796 () Bool)

(assert (=> b!7620177 (=> res!3050796 e!4531195)))

(assert (=> b!7620177 (= res!3050796 (not (isEmpty!41652 (tail!15194 lt!2656493))))))

(declare-fun b!7620178 () Bool)

(assert (=> b!7620178 (= e!4531192 e!4531191)))

(declare-fun c!1404419 () Bool)

(assert (=> b!7620178 (= c!1404419 ((_ is EmptyLang!20307) (Concat!29152 (reg!20636 r!14126) r!14126)))))

(declare-fun b!7620179 () Bool)

(assert (=> b!7620179 (= e!4531191 (not lt!2656535))))

(assert (= (and d!2323087 c!1404421) b!7620169))

(assert (= (and d!2323087 (not c!1404421)) b!7620168))

(assert (= (and d!2323087 c!1404420) b!7620173))

(assert (= (and d!2323087 (not c!1404420)) b!7620178))

(assert (= (and b!7620178 c!1404419) b!7620179))

(assert (= (and b!7620178 (not c!1404419)) b!7620174))

(assert (= (and b!7620174 (not res!3050798)) b!7620170))

(assert (= (and b!7620170 res!3050799) b!7620166))

(assert (= (and b!7620166 res!3050800) b!7620176))

(assert (= (and b!7620176 res!3050794) b!7620171))

(assert (= (and b!7620170 (not res!3050793)) b!7620175))

(assert (= (and b!7620175 res!3050797) b!7620172))

(assert (= (and b!7620172 (not res!3050795)) b!7620177))

(assert (= (and b!7620177 (not res!3050796)) b!7620167))

(assert (= (or b!7620173 b!7620166 b!7620172) bm!699871))

(assert (=> b!7620171 m!8152136))

(assert (=> d!2323087 m!8152138))

(declare-fun m!8152222 () Bool)

(assert (=> d!2323087 m!8152222))

(assert (=> b!7620176 m!8152140))

(assert (=> b!7620176 m!8152140))

(assert (=> b!7620176 m!8152142))

(assert (=> bm!699871 m!8152138))

(assert (=> b!7620177 m!8152140))

(assert (=> b!7620177 m!8152140))

(assert (=> b!7620177 m!8152142))

(assert (=> b!7620168 m!8152136))

(assert (=> b!7620168 m!8152136))

(declare-fun m!8152230 () Bool)

(assert (=> b!7620168 m!8152230))

(assert (=> b!7620168 m!8152140))

(assert (=> b!7620168 m!8152230))

(assert (=> b!7620168 m!8152140))

(declare-fun m!8152240 () Bool)

(assert (=> b!7620168 m!8152240))

(declare-fun m!8152242 () Bool)

(assert (=> b!7620169 m!8152242))

(assert (=> b!7620167 m!8152136))

(assert (=> b!7619846 d!2323087))

(declare-fun d!2323099 () Bool)

(assert (=> d!2323099 (matchR!9814 (Concat!29152 (reg!20636 r!14126) r!14126) (++!17617 (_1!37891 lt!2656495) (_2!37891 lt!2656495)))))

(declare-fun lt!2656540 () Unit!167476)

(declare-fun choose!58789 (Regex!20307 Regex!20307 List!73160 List!73160 List!73160) Unit!167476)

(assert (=> d!2323099 (= lt!2656540 (choose!58789 (reg!20636 r!14126) r!14126 (_1!37891 lt!2656495) (_2!37891 lt!2656495) s!9605))))

(assert (=> d!2323099 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323099 (= (lemmaFindSeparationIsDefinedThenConcatMatches!134 (reg!20636 r!14126) r!14126 (_1!37891 lt!2656495) (_2!37891 lt!2656495) s!9605) lt!2656540)))

(declare-fun bs!1943218 () Bool)

(assert (= bs!1943218 d!2323099))

(assert (=> bs!1943218 m!8151994))

(assert (=> bs!1943218 m!8151994))

(declare-fun m!8152246 () Bool)

(assert (=> bs!1943218 m!8152246))

(declare-fun m!8152248 () Bool)

(assert (=> bs!1943218 m!8152248))

(assert (=> bs!1943218 m!8151960))

(assert (=> b!7619846 d!2323099))

(declare-fun b!7620198 () Bool)

(declare-fun e!4531213 () Bool)

(declare-fun call!699878 () Bool)

(assert (=> b!7620198 (= e!4531213 call!699878)))

(declare-fun b!7620199 () Bool)

(declare-fun e!4531208 () Bool)

(declare-fun e!4531211 () Bool)

(assert (=> b!7620199 (= e!4531208 e!4531211)))

(declare-fun res!3050813 () Bool)

(assert (=> b!7620199 (=> (not res!3050813) (not e!4531211))))

(declare-fun call!699879 () Bool)

(assert (=> b!7620199 (= res!3050813 call!699879)))

(declare-fun bm!699873 () Bool)

(declare-fun c!1404427 () Bool)

(assert (=> bm!699873 (= call!699879 (validRegex!10727 (ite c!1404427 (regOne!41127 (reg!20636 r!14126)) (regOne!41126 (reg!20636 r!14126)))))))

(declare-fun b!7620200 () Bool)

(declare-fun e!4531210 () Bool)

(declare-fun call!699880 () Bool)

(assert (=> b!7620200 (= e!4531210 call!699880)))

(declare-fun b!7620201 () Bool)

(declare-fun res!3050814 () Bool)

(assert (=> b!7620201 (=> (not res!3050814) (not e!4531213))))

(assert (=> b!7620201 (= res!3050814 call!699879)))

(declare-fun e!4531207 () Bool)

(assert (=> b!7620201 (= e!4531207 e!4531213)))

(declare-fun b!7620202 () Bool)

(declare-fun res!3050812 () Bool)

(assert (=> b!7620202 (=> res!3050812 e!4531208)))

(assert (=> b!7620202 (= res!3050812 (not ((_ is Concat!29152) (reg!20636 r!14126))))))

(assert (=> b!7620202 (= e!4531207 e!4531208)))

(declare-fun b!7620203 () Bool)

(assert (=> b!7620203 (= e!4531211 call!699878)))

(declare-fun b!7620204 () Bool)

(declare-fun e!4531209 () Bool)

(declare-fun e!4531212 () Bool)

(assert (=> b!7620204 (= e!4531209 e!4531212)))

(declare-fun c!1404426 () Bool)

(assert (=> b!7620204 (= c!1404426 ((_ is Star!20307) (reg!20636 r!14126)))))

(declare-fun b!7620205 () Bool)

(assert (=> b!7620205 (= e!4531212 e!4531210)))

(declare-fun res!3050815 () Bool)

(assert (=> b!7620205 (= res!3050815 (not (nullable!8874 (reg!20636 (reg!20636 r!14126)))))))

(assert (=> b!7620205 (=> (not res!3050815) (not e!4531210))))

(declare-fun bm!699874 () Bool)

(assert (=> bm!699874 (= call!699878 call!699880)))

(declare-fun d!2323103 () Bool)

(declare-fun res!3050811 () Bool)

(assert (=> d!2323103 (=> res!3050811 e!4531209)))

(assert (=> d!2323103 (= res!3050811 ((_ is ElementMatch!20307) (reg!20636 r!14126)))))

(assert (=> d!2323103 (= (validRegex!10727 (reg!20636 r!14126)) e!4531209)))

(declare-fun bm!699875 () Bool)

(assert (=> bm!699875 (= call!699880 (validRegex!10727 (ite c!1404426 (reg!20636 (reg!20636 r!14126)) (ite c!1404427 (regTwo!41127 (reg!20636 r!14126)) (regTwo!41126 (reg!20636 r!14126))))))))

(declare-fun b!7620206 () Bool)

(assert (=> b!7620206 (= e!4531212 e!4531207)))

(assert (=> b!7620206 (= c!1404427 ((_ is Union!20307) (reg!20636 r!14126)))))

(assert (= (and d!2323103 (not res!3050811)) b!7620204))

(assert (= (and b!7620204 c!1404426) b!7620205))

(assert (= (and b!7620204 (not c!1404426)) b!7620206))

(assert (= (and b!7620205 res!3050815) b!7620200))

(assert (= (and b!7620206 c!1404427) b!7620201))

(assert (= (and b!7620206 (not c!1404427)) b!7620202))

(assert (= (and b!7620201 res!3050814) b!7620198))

(assert (= (and b!7620202 (not res!3050812)) b!7620199))

(assert (= (and b!7620199 res!3050813) b!7620203))

(assert (= (or b!7620201 b!7620199) bm!699873))

(assert (= (or b!7620198 b!7620203) bm!699874))

(assert (= (or b!7620200 bm!699874) bm!699875))

(declare-fun m!8152250 () Bool)

(assert (=> bm!699873 m!8152250))

(declare-fun m!8152252 () Bool)

(assert (=> b!7620205 m!8152252))

(declare-fun m!8152254 () Bool)

(assert (=> bm!699875 m!8152254))

(assert (=> b!7619840 d!2323103))

(declare-fun d!2323105 () Bool)

(declare-fun choose!58790 (Int) Bool)

(assert (=> d!2323105 (= (Exists!4463 lambda!468361) (choose!58790 lambda!468361))))

(declare-fun bs!1943219 () Bool)

(assert (= bs!1943219 d!2323105))

(declare-fun m!8152256 () Bool)

(assert (=> bs!1943219 m!8152256))

(assert (=> b!7619841 d!2323105))

(declare-fun d!2323107 () Bool)

(declare-fun isEmpty!41653 (Option!17382) Bool)

(assert (=> d!2323107 (= (isDefined!13998 lt!2656498) (not (isEmpty!41653 lt!2656498)))))

(declare-fun bs!1943220 () Bool)

(assert (= bs!1943220 d!2323107))

(declare-fun m!8152258 () Bool)

(assert (=> bs!1943220 m!8152258))

(assert (=> b!7619841 d!2323107))

(declare-fun b!7620304 () Bool)

(declare-fun res!3050856 () Bool)

(declare-fun e!4531261 () Bool)

(assert (=> b!7620304 (=> (not res!3050856) (not e!4531261))))

(declare-fun lt!2656561 () Option!17382)

(assert (=> b!7620304 (= res!3050856 (matchR!9814 (reg!20636 r!14126) (_1!37891 (get!25772 lt!2656561))))))

(declare-fun b!7620305 () Bool)

(declare-fun e!4531263 () Option!17382)

(declare-fun e!4531264 () Option!17382)

(assert (=> b!7620305 (= e!4531263 e!4531264)))

(declare-fun c!1404441 () Bool)

(assert (=> b!7620305 (= c!1404441 ((_ is Nil!73036) s!9605))))

(declare-fun b!7620306 () Bool)

(declare-fun e!4531265 () Bool)

(assert (=> b!7620306 (= e!4531265 (matchR!9814 r!14126 s!9605))))

(declare-fun b!7620307 () Bool)

(declare-fun res!3050854 () Bool)

(assert (=> b!7620307 (=> (not res!3050854) (not e!4531261))))

(assert (=> b!7620307 (= res!3050854 (matchR!9814 r!14126 (_2!37891 (get!25772 lt!2656561))))))

(declare-fun b!7620308 () Bool)

(declare-fun e!4531262 () Bool)

(assert (=> b!7620308 (= e!4531262 (not (isDefined!13998 lt!2656561)))))

(declare-fun b!7620310 () Bool)

(assert (=> b!7620310 (= e!4531261 (= (++!17617 (_1!37891 (get!25772 lt!2656561)) (_2!37891 (get!25772 lt!2656561))) s!9605))))

(declare-fun b!7620311 () Bool)

(declare-fun lt!2656560 () Unit!167476)

(declare-fun lt!2656559 () Unit!167476)

(assert (=> b!7620311 (= lt!2656560 lt!2656559)))

(assert (=> b!7620311 (= (++!17617 (++!17617 Nil!73036 (Cons!73036 (h!79484 s!9605) Nil!73036)) (t!387895 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3216 (List!73160 C!40940 List!73160 List!73160) Unit!167476)

(assert (=> b!7620311 (= lt!2656559 (lemmaMoveElementToOtherListKeepsConcatEq!3216 Nil!73036 (h!79484 s!9605) (t!387895 s!9605) s!9605))))

(assert (=> b!7620311 (= e!4531264 (findConcatSeparation!3412 (reg!20636 r!14126) r!14126 (++!17617 Nil!73036 (Cons!73036 (h!79484 s!9605) Nil!73036)) (t!387895 s!9605) s!9605))))

(declare-fun b!7620312 () Bool)

(assert (=> b!7620312 (= e!4531264 None!17381)))

(declare-fun b!7620309 () Bool)

(assert (=> b!7620309 (= e!4531263 (Some!17381 (tuple2!69177 Nil!73036 s!9605)))))

(declare-fun d!2323109 () Bool)

(assert (=> d!2323109 e!4531262))

(declare-fun res!3050852 () Bool)

(assert (=> d!2323109 (=> res!3050852 e!4531262)))

(assert (=> d!2323109 (= res!3050852 e!4531261)))

(declare-fun res!3050853 () Bool)

(assert (=> d!2323109 (=> (not res!3050853) (not e!4531261))))

(assert (=> d!2323109 (= res!3050853 (isDefined!13998 lt!2656561))))

(assert (=> d!2323109 (= lt!2656561 e!4531263)))

(declare-fun c!1404440 () Bool)

(assert (=> d!2323109 (= c!1404440 e!4531265)))

(declare-fun res!3050855 () Bool)

(assert (=> d!2323109 (=> (not res!3050855) (not e!4531265))))

(assert (=> d!2323109 (= res!3050855 (matchR!9814 (reg!20636 r!14126) Nil!73036))))

(assert (=> d!2323109 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323109 (= (findConcatSeparation!3412 (reg!20636 r!14126) r!14126 Nil!73036 s!9605 s!9605) lt!2656561)))

(assert (= (and d!2323109 res!3050855) b!7620306))

(assert (= (and d!2323109 c!1404440) b!7620309))

(assert (= (and d!2323109 (not c!1404440)) b!7620305))

(assert (= (and b!7620305 c!1404441) b!7620312))

(assert (= (and b!7620305 (not c!1404441)) b!7620311))

(assert (= (and d!2323109 res!3050853) b!7620304))

(assert (= (and b!7620304 res!3050856) b!7620307))

(assert (= (and b!7620307 res!3050854) b!7620310))

(assert (= (and d!2323109 (not res!3050852)) b!7620308))

(assert (=> b!7620306 m!8151978))

(declare-fun m!8152296 () Bool)

(assert (=> b!7620307 m!8152296))

(declare-fun m!8152298 () Bool)

(assert (=> b!7620307 m!8152298))

(assert (=> b!7620310 m!8152296))

(declare-fun m!8152300 () Bool)

(assert (=> b!7620310 m!8152300))

(declare-fun m!8152302 () Bool)

(assert (=> b!7620311 m!8152302))

(assert (=> b!7620311 m!8152302))

(declare-fun m!8152304 () Bool)

(assert (=> b!7620311 m!8152304))

(declare-fun m!8152306 () Bool)

(assert (=> b!7620311 m!8152306))

(assert (=> b!7620311 m!8152302))

(declare-fun m!8152308 () Bool)

(assert (=> b!7620311 m!8152308))

(declare-fun m!8152310 () Bool)

(assert (=> d!2323109 m!8152310))

(declare-fun m!8152312 () Bool)

(assert (=> d!2323109 m!8152312))

(assert (=> d!2323109 m!8151960))

(assert (=> b!7620304 m!8152296))

(declare-fun m!8152314 () Bool)

(assert (=> b!7620304 m!8152314))

(assert (=> b!7620308 m!8152310))

(assert (=> b!7619841 d!2323109))

(declare-fun bs!1943232 () Bool)

(declare-fun d!2323119 () Bool)

(assert (= bs!1943232 (and d!2323119 b!7619841)))

(declare-fun lambda!468379 () Int)

(assert (=> bs!1943232 (= lambda!468379 lambda!468361)))

(assert (=> d!2323119 true))

(assert (=> d!2323119 true))

(assert (=> d!2323119 true))

(assert (=> d!2323119 (= (isDefined!13998 (findConcatSeparation!3412 (reg!20636 r!14126) r!14126 Nil!73036 s!9605 s!9605)) (Exists!4463 lambda!468379))))

(declare-fun lt!2656564 () Unit!167476)

(declare-fun choose!58791 (Regex!20307 Regex!20307 List!73160) Unit!167476)

(assert (=> d!2323119 (= lt!2656564 (choose!58791 (reg!20636 r!14126) r!14126 s!9605))))

(assert (=> d!2323119 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323119 (= (lemmaFindConcatSeparationEquivalentToExists!3170 (reg!20636 r!14126) r!14126 s!9605) lt!2656564)))

(declare-fun bs!1943233 () Bool)

(assert (= bs!1943233 d!2323119))

(assert (=> bs!1943233 m!8151966))

(assert (=> bs!1943233 m!8151966))

(declare-fun m!8152316 () Bool)

(assert (=> bs!1943233 m!8152316))

(declare-fun m!8152318 () Bool)

(assert (=> bs!1943233 m!8152318))

(assert (=> bs!1943233 m!8151960))

(declare-fun m!8152320 () Bool)

(assert (=> bs!1943233 m!8152320))

(assert (=> b!7619841 d!2323119))

(declare-fun d!2323121 () Bool)

(assert (=> d!2323121 (= (isEmpty!41652 (_1!37891 cut!8)) ((_ is Nil!73036) (_1!37891 cut!8)))))

(assert (=> b!7619838 d!2323121))

(declare-fun d!2323123 () Bool)

(assert (=> d!2323123 (= (isEmpty!41652 (_1!37891 lt!2656488)) ((_ is Nil!73036) (_1!37891 lt!2656488)))))

(assert (=> b!7619843 d!2323123))

(declare-fun d!2323125 () Bool)

(declare-fun nullableFct!3543 (Regex!20307) Bool)

(assert (=> d!2323125 (= (nullable!8874 (reg!20636 r!14126)) (nullableFct!3543 (reg!20636 r!14126)))))

(declare-fun bs!1943234 () Bool)

(assert (= bs!1943234 d!2323125))

(declare-fun m!8152322 () Bool)

(assert (=> bs!1943234 m!8152322))

(assert (=> b!7619832 d!2323125))

(declare-fun d!2323127 () Bool)

(assert (=> d!2323127 (= (matchR!9814 r!14126 (_2!37891 lt!2656488)) (matchRSpec!4506 r!14126 (_2!37891 lt!2656488)))))

(declare-fun lt!2656567 () Unit!167476)

(declare-fun choose!58792 (Regex!20307 List!73160) Unit!167476)

(assert (=> d!2323127 (= lt!2656567 (choose!58792 r!14126 (_2!37891 lt!2656488)))))

(assert (=> d!2323127 (validRegex!10727 r!14126)))

(assert (=> d!2323127 (= (mainMatchTheorem!4500 r!14126 (_2!37891 lt!2656488)) lt!2656567)))

(declare-fun bs!1943235 () Bool)

(assert (= bs!1943235 d!2323127))

(assert (=> bs!1943235 m!8152006))

(assert (=> bs!1943235 m!8152008))

(declare-fun m!8152324 () Bool)

(assert (=> bs!1943235 m!8152324))

(assert (=> bs!1943235 m!8152020))

(assert (=> b!7619832 d!2323127))

(declare-fun bs!1943236 () Bool)

(declare-fun b!7620353 () Bool)

(assert (= bs!1943236 (and b!7620353 b!7619841)))

(declare-fun lambda!468384 () Int)

(assert (=> bs!1943236 (not (= lambda!468384 lambda!468361))))

(declare-fun bs!1943237 () Bool)

(assert (= bs!1943237 (and b!7620353 d!2323119)))

(assert (=> bs!1943237 (not (= lambda!468384 lambda!468379))))

(assert (=> b!7620353 true))

(assert (=> b!7620353 true))

(declare-fun bs!1943238 () Bool)

(declare-fun b!7620356 () Bool)

(assert (= bs!1943238 (and b!7620356 b!7619841)))

(declare-fun lambda!468385 () Int)

(assert (=> bs!1943238 (not (= lambda!468385 lambda!468361))))

(declare-fun bs!1943239 () Bool)

(assert (= bs!1943239 (and b!7620356 d!2323119)))

(assert (=> bs!1943239 (not (= lambda!468385 lambda!468379))))

(declare-fun bs!1943240 () Bool)

(assert (= bs!1943240 (and b!7620356 b!7620353)))

(assert (=> bs!1943240 (not (= lambda!468385 lambda!468384))))

(assert (=> b!7620356 true))

(assert (=> b!7620356 true))

(declare-fun b!7620349 () Bool)

(declare-fun e!4531287 () Bool)

(declare-fun e!4531290 () Bool)

(assert (=> b!7620349 (= e!4531287 e!4531290)))

(declare-fun c!1404452 () Bool)

(assert (=> b!7620349 (= c!1404452 ((_ is Star!20307) r!14126))))

(declare-fun b!7620350 () Bool)

(declare-fun e!4531291 () Bool)

(assert (=> b!7620350 (= e!4531287 e!4531291)))

(declare-fun res!3050878 () Bool)

(assert (=> b!7620350 (= res!3050878 (matchRSpec!4506 (regOne!41127 r!14126) (_2!37891 lt!2656488)))))

(assert (=> b!7620350 (=> res!3050878 e!4531291)))

(declare-fun call!699889 () Bool)

(declare-fun bm!699883 () Bool)

(assert (=> bm!699883 (= call!699889 (Exists!4463 (ite c!1404452 lambda!468384 lambda!468385)))))

(declare-fun b!7620351 () Bool)

(declare-fun e!4531289 () Bool)

(declare-fun call!699888 () Bool)

(assert (=> b!7620351 (= e!4531289 call!699888)))

(declare-fun b!7620352 () Bool)

(assert (=> b!7620352 (= e!4531291 (matchRSpec!4506 (regTwo!41127 r!14126) (_2!37891 lt!2656488)))))

(declare-fun e!4531286 () Bool)

(assert (=> b!7620353 (= e!4531286 call!699889)))

(declare-fun d!2323129 () Bool)

(declare-fun c!1404453 () Bool)

(assert (=> d!2323129 (= c!1404453 ((_ is EmptyExpr!20307) r!14126))))

(assert (=> d!2323129 (= (matchRSpec!4506 r!14126 (_2!37891 lt!2656488)) e!4531289)))

(declare-fun bm!699884 () Bool)

(assert (=> bm!699884 (= call!699888 (isEmpty!41652 (_2!37891 lt!2656488)))))

(declare-fun b!7620354 () Bool)

(declare-fun res!3050877 () Bool)

(assert (=> b!7620354 (=> res!3050877 e!4531286)))

(assert (=> b!7620354 (= res!3050877 call!699888)))

(assert (=> b!7620354 (= e!4531290 e!4531286)))

(declare-fun b!7620355 () Bool)

(declare-fun c!1404451 () Bool)

(assert (=> b!7620355 (= c!1404451 ((_ is Union!20307) r!14126))))

(declare-fun e!4531292 () Bool)

(assert (=> b!7620355 (= e!4531292 e!4531287)))

(assert (=> b!7620356 (= e!4531290 call!699889)))

(declare-fun b!7620357 () Bool)

(declare-fun c!1404450 () Bool)

(assert (=> b!7620357 (= c!1404450 ((_ is ElementMatch!20307) r!14126))))

(declare-fun e!4531288 () Bool)

(assert (=> b!7620357 (= e!4531288 e!4531292)))

(declare-fun b!7620358 () Bool)

(assert (=> b!7620358 (= e!4531289 e!4531288)))

(declare-fun res!3050879 () Bool)

(assert (=> b!7620358 (= res!3050879 (not ((_ is EmptyLang!20307) r!14126)))))

(assert (=> b!7620358 (=> (not res!3050879) (not e!4531288))))

(declare-fun b!7620359 () Bool)

(assert (=> b!7620359 (= e!4531292 (= (_2!37891 lt!2656488) (Cons!73036 (c!1404342 r!14126) Nil!73036)))))

(assert (= (and d!2323129 c!1404453) b!7620351))

(assert (= (and d!2323129 (not c!1404453)) b!7620358))

(assert (= (and b!7620358 res!3050879) b!7620357))

(assert (= (and b!7620357 c!1404450) b!7620359))

(assert (= (and b!7620357 (not c!1404450)) b!7620355))

(assert (= (and b!7620355 c!1404451) b!7620350))

(assert (= (and b!7620355 (not c!1404451)) b!7620349))

(assert (= (and b!7620350 (not res!3050878)) b!7620352))

(assert (= (and b!7620349 c!1404452) b!7620354))

(assert (= (and b!7620349 (not c!1404452)) b!7620356))

(assert (= (and b!7620354 (not res!3050877)) b!7620353))

(assert (= (or b!7620353 b!7620356) bm!699883))

(assert (= (or b!7620351 b!7620354) bm!699884))

(declare-fun m!8152326 () Bool)

(assert (=> b!7620350 m!8152326))

(declare-fun m!8152328 () Bool)

(assert (=> bm!699883 m!8152328))

(declare-fun m!8152330 () Bool)

(assert (=> b!7620352 m!8152330))

(declare-fun m!8152332 () Bool)

(assert (=> bm!699884 m!8152332))

(assert (=> b!7619832 d!2323129))

(declare-fun b!7620360 () Bool)

(declare-fun res!3050887 () Bool)

(declare-fun e!4531299 () Bool)

(assert (=> b!7620360 (=> (not res!3050887) (not e!4531299))))

(declare-fun call!699890 () Bool)

(assert (=> b!7620360 (= res!3050887 (not call!699890))))

(declare-fun b!7620361 () Bool)

(declare-fun e!4531297 () Bool)

(assert (=> b!7620361 (= e!4531297 (not (= (head!15654 (_2!37891 lt!2656488)) (c!1404342 r!14126))))))

(declare-fun b!7620362 () Bool)

(declare-fun e!4531295 () Bool)

(assert (=> b!7620362 (= e!4531295 (matchR!9814 (derivativeStep!5854 r!14126 (head!15654 (_2!37891 lt!2656488))) (tail!15194 (_2!37891 lt!2656488))))))

(declare-fun d!2323131 () Bool)

(declare-fun e!4531294 () Bool)

(assert (=> d!2323131 e!4531294))

(declare-fun c!1404455 () Bool)

(assert (=> d!2323131 (= c!1404455 ((_ is EmptyExpr!20307) r!14126))))

(declare-fun lt!2656568 () Bool)

(assert (=> d!2323131 (= lt!2656568 e!4531295)))

(declare-fun c!1404456 () Bool)

(assert (=> d!2323131 (= c!1404456 (isEmpty!41652 (_2!37891 lt!2656488)))))

(assert (=> d!2323131 (validRegex!10727 r!14126)))

(assert (=> d!2323131 (= (matchR!9814 r!14126 (_2!37891 lt!2656488)) lt!2656568)))

(declare-fun b!7620363 () Bool)

(assert (=> b!7620363 (= e!4531295 (nullable!8874 r!14126))))

(declare-fun b!7620364 () Bool)

(declare-fun res!3050880 () Bool)

(declare-fun e!4531298 () Bool)

(assert (=> b!7620364 (=> res!3050880 e!4531298)))

(assert (=> b!7620364 (= res!3050880 e!4531299)))

(declare-fun res!3050886 () Bool)

(assert (=> b!7620364 (=> (not res!3050886) (not e!4531299))))

(assert (=> b!7620364 (= res!3050886 lt!2656568)))

(declare-fun b!7620365 () Bool)

(assert (=> b!7620365 (= e!4531299 (= (head!15654 (_2!37891 lt!2656488)) (c!1404342 r!14126)))))

(declare-fun bm!699885 () Bool)

(assert (=> bm!699885 (= call!699890 (isEmpty!41652 (_2!37891 lt!2656488)))))

(declare-fun b!7620366 () Bool)

(declare-fun e!4531296 () Bool)

(assert (=> b!7620366 (= e!4531296 e!4531297)))

(declare-fun res!3050882 () Bool)

(assert (=> b!7620366 (=> res!3050882 e!4531297)))

(assert (=> b!7620366 (= res!3050882 call!699890)))

(declare-fun b!7620367 () Bool)

(assert (=> b!7620367 (= e!4531294 (= lt!2656568 call!699890))))

(declare-fun b!7620368 () Bool)

(declare-fun res!3050885 () Bool)

(assert (=> b!7620368 (=> res!3050885 e!4531298)))

(assert (=> b!7620368 (= res!3050885 (not ((_ is ElementMatch!20307) r!14126)))))

(declare-fun e!4531293 () Bool)

(assert (=> b!7620368 (= e!4531293 e!4531298)))

(declare-fun b!7620369 () Bool)

(assert (=> b!7620369 (= e!4531298 e!4531296)))

(declare-fun res!3050884 () Bool)

(assert (=> b!7620369 (=> (not res!3050884) (not e!4531296))))

(assert (=> b!7620369 (= res!3050884 (not lt!2656568))))

(declare-fun b!7620370 () Bool)

(declare-fun res!3050881 () Bool)

(assert (=> b!7620370 (=> (not res!3050881) (not e!4531299))))

(assert (=> b!7620370 (= res!3050881 (isEmpty!41652 (tail!15194 (_2!37891 lt!2656488))))))

(declare-fun b!7620371 () Bool)

(declare-fun res!3050883 () Bool)

(assert (=> b!7620371 (=> res!3050883 e!4531297)))

(assert (=> b!7620371 (= res!3050883 (not (isEmpty!41652 (tail!15194 (_2!37891 lt!2656488)))))))

(declare-fun b!7620372 () Bool)

(assert (=> b!7620372 (= e!4531294 e!4531293)))

(declare-fun c!1404454 () Bool)

(assert (=> b!7620372 (= c!1404454 ((_ is EmptyLang!20307) r!14126))))

(declare-fun b!7620373 () Bool)

(assert (=> b!7620373 (= e!4531293 (not lt!2656568))))

(assert (= (and d!2323131 c!1404456) b!7620363))

(assert (= (and d!2323131 (not c!1404456)) b!7620362))

(assert (= (and d!2323131 c!1404455) b!7620367))

(assert (= (and d!2323131 (not c!1404455)) b!7620372))

(assert (= (and b!7620372 c!1404454) b!7620373))

(assert (= (and b!7620372 (not c!1404454)) b!7620368))

(assert (= (and b!7620368 (not res!3050885)) b!7620364))

(assert (= (and b!7620364 res!3050886) b!7620360))

(assert (= (and b!7620360 res!3050887) b!7620370))

(assert (= (and b!7620370 res!3050881) b!7620365))

(assert (= (and b!7620364 (not res!3050880)) b!7620369))

(assert (= (and b!7620369 res!3050884) b!7620366))

(assert (= (and b!7620366 (not res!3050882)) b!7620371))

(assert (= (and b!7620371 (not res!3050883)) b!7620361))

(assert (= (or b!7620367 b!7620360 b!7620366) bm!699885))

(declare-fun m!8152334 () Bool)

(assert (=> b!7620365 m!8152334))

(assert (=> d!2323131 m!8152332))

(assert (=> d!2323131 m!8152020))

(declare-fun m!8152336 () Bool)

(assert (=> b!7620370 m!8152336))

(assert (=> b!7620370 m!8152336))

(declare-fun m!8152338 () Bool)

(assert (=> b!7620370 m!8152338))

(assert (=> bm!699885 m!8152332))

(assert (=> b!7620371 m!8152336))

(assert (=> b!7620371 m!8152336))

(assert (=> b!7620371 m!8152338))

(assert (=> b!7620362 m!8152334))

(assert (=> b!7620362 m!8152334))

(declare-fun m!8152340 () Bool)

(assert (=> b!7620362 m!8152340))

(assert (=> b!7620362 m!8152336))

(assert (=> b!7620362 m!8152340))

(assert (=> b!7620362 m!8152336))

(declare-fun m!8152342 () Bool)

(assert (=> b!7620362 m!8152342))

(assert (=> b!7620363 m!8152152))

(assert (=> b!7620361 m!8152334))

(assert (=> b!7619832 d!2323131))

(declare-fun b!7620374 () Bool)

(declare-fun res!3050895 () Bool)

(declare-fun e!4531306 () Bool)

(assert (=> b!7620374 (=> (not res!3050895) (not e!4531306))))

(declare-fun call!699891 () Bool)

(assert (=> b!7620374 (= res!3050895 (not call!699891))))

(declare-fun b!7620375 () Bool)

(declare-fun e!4531304 () Bool)

(assert (=> b!7620375 (= e!4531304 (not (= (head!15654 (_1!37891 lt!2656488)) (c!1404342 (reg!20636 r!14126)))))))

(declare-fun b!7620376 () Bool)

(declare-fun e!4531302 () Bool)

(assert (=> b!7620376 (= e!4531302 (matchR!9814 (derivativeStep!5854 (reg!20636 r!14126) (head!15654 (_1!37891 lt!2656488))) (tail!15194 (_1!37891 lt!2656488))))))

(declare-fun d!2323133 () Bool)

(declare-fun e!4531301 () Bool)

(assert (=> d!2323133 e!4531301))

(declare-fun c!1404458 () Bool)

(assert (=> d!2323133 (= c!1404458 ((_ is EmptyExpr!20307) (reg!20636 r!14126)))))

(declare-fun lt!2656569 () Bool)

(assert (=> d!2323133 (= lt!2656569 e!4531302)))

(declare-fun c!1404459 () Bool)

(assert (=> d!2323133 (= c!1404459 (isEmpty!41652 (_1!37891 lt!2656488)))))

(assert (=> d!2323133 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323133 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656488)) lt!2656569)))

(declare-fun b!7620377 () Bool)

(assert (=> b!7620377 (= e!4531302 (nullable!8874 (reg!20636 r!14126)))))

(declare-fun b!7620378 () Bool)

(declare-fun res!3050888 () Bool)

(declare-fun e!4531305 () Bool)

(assert (=> b!7620378 (=> res!3050888 e!4531305)))

(assert (=> b!7620378 (= res!3050888 e!4531306)))

(declare-fun res!3050894 () Bool)

(assert (=> b!7620378 (=> (not res!3050894) (not e!4531306))))

(assert (=> b!7620378 (= res!3050894 lt!2656569)))

(declare-fun b!7620379 () Bool)

(assert (=> b!7620379 (= e!4531306 (= (head!15654 (_1!37891 lt!2656488)) (c!1404342 (reg!20636 r!14126))))))

(declare-fun bm!699886 () Bool)

(assert (=> bm!699886 (= call!699891 (isEmpty!41652 (_1!37891 lt!2656488)))))

(declare-fun b!7620380 () Bool)

(declare-fun e!4531303 () Bool)

(assert (=> b!7620380 (= e!4531303 e!4531304)))

(declare-fun res!3050890 () Bool)

(assert (=> b!7620380 (=> res!3050890 e!4531304)))

(assert (=> b!7620380 (= res!3050890 call!699891)))

(declare-fun b!7620381 () Bool)

(assert (=> b!7620381 (= e!4531301 (= lt!2656569 call!699891))))

(declare-fun b!7620382 () Bool)

(declare-fun res!3050893 () Bool)

(assert (=> b!7620382 (=> res!3050893 e!4531305)))

(assert (=> b!7620382 (= res!3050893 (not ((_ is ElementMatch!20307) (reg!20636 r!14126))))))

(declare-fun e!4531300 () Bool)

(assert (=> b!7620382 (= e!4531300 e!4531305)))

(declare-fun b!7620383 () Bool)

(assert (=> b!7620383 (= e!4531305 e!4531303)))

(declare-fun res!3050892 () Bool)

(assert (=> b!7620383 (=> (not res!3050892) (not e!4531303))))

(assert (=> b!7620383 (= res!3050892 (not lt!2656569))))

(declare-fun b!7620384 () Bool)

(declare-fun res!3050889 () Bool)

(assert (=> b!7620384 (=> (not res!3050889) (not e!4531306))))

(assert (=> b!7620384 (= res!3050889 (isEmpty!41652 (tail!15194 (_1!37891 lt!2656488))))))

(declare-fun b!7620385 () Bool)

(declare-fun res!3050891 () Bool)

(assert (=> b!7620385 (=> res!3050891 e!4531304)))

(assert (=> b!7620385 (= res!3050891 (not (isEmpty!41652 (tail!15194 (_1!37891 lt!2656488)))))))

(declare-fun b!7620386 () Bool)

(assert (=> b!7620386 (= e!4531301 e!4531300)))

(declare-fun c!1404457 () Bool)

(assert (=> b!7620386 (= c!1404457 ((_ is EmptyLang!20307) (reg!20636 r!14126)))))

(declare-fun b!7620387 () Bool)

(assert (=> b!7620387 (= e!4531300 (not lt!2656569))))

(assert (= (and d!2323133 c!1404459) b!7620377))

(assert (= (and d!2323133 (not c!1404459)) b!7620376))

(assert (= (and d!2323133 c!1404458) b!7620381))

(assert (= (and d!2323133 (not c!1404458)) b!7620386))

(assert (= (and b!7620386 c!1404457) b!7620387))

(assert (= (and b!7620386 (not c!1404457)) b!7620382))

(assert (= (and b!7620382 (not res!3050893)) b!7620378))

(assert (= (and b!7620378 res!3050894) b!7620374))

(assert (= (and b!7620374 res!3050895) b!7620384))

(assert (= (and b!7620384 res!3050889) b!7620379))

(assert (= (and b!7620378 (not res!3050888)) b!7620383))

(assert (= (and b!7620383 res!3050892) b!7620380))

(assert (= (and b!7620380 (not res!3050890)) b!7620385))

(assert (= (and b!7620385 (not res!3050891)) b!7620375))

(assert (= (or b!7620381 b!7620374 b!7620380) bm!699886))

(declare-fun m!8152344 () Bool)

(assert (=> b!7620379 m!8152344))

(assert (=> d!2323133 m!8151970))

(assert (=> d!2323133 m!8151960))

(declare-fun m!8152346 () Bool)

(assert (=> b!7620384 m!8152346))

(assert (=> b!7620384 m!8152346))

(declare-fun m!8152348 () Bool)

(assert (=> b!7620384 m!8152348))

(assert (=> bm!699886 m!8151970))

(assert (=> b!7620385 m!8152346))

(assert (=> b!7620385 m!8152346))

(assert (=> b!7620385 m!8152348))

(assert (=> b!7620376 m!8152344))

(assert (=> b!7620376 m!8152344))

(declare-fun m!8152350 () Bool)

(assert (=> b!7620376 m!8152350))

(assert (=> b!7620376 m!8152346))

(assert (=> b!7620376 m!8152350))

(assert (=> b!7620376 m!8152346))

(declare-fun m!8152352 () Bool)

(assert (=> b!7620376 m!8152352))

(assert (=> b!7620377 m!8152004))

(assert (=> b!7620375 m!8152344))

(assert (=> b!7619832 d!2323133))

(declare-fun bs!1943241 () Bool)

(declare-fun b!7620392 () Bool)

(assert (= bs!1943241 (and b!7620392 b!7619841)))

(declare-fun lambda!468386 () Int)

(assert (=> bs!1943241 (not (= lambda!468386 lambda!468361))))

(declare-fun bs!1943242 () Bool)

(assert (= bs!1943242 (and b!7620392 d!2323119)))

(assert (=> bs!1943242 (not (= lambda!468386 lambda!468379))))

(declare-fun bs!1943243 () Bool)

(assert (= bs!1943243 (and b!7620392 b!7620353)))

(assert (=> bs!1943243 (= (and (= (_1!37891 lt!2656488) (_2!37891 lt!2656488)) (= (reg!20636 (reg!20636 r!14126)) (reg!20636 r!14126)) (= (reg!20636 r!14126) r!14126)) (= lambda!468386 lambda!468384))))

(declare-fun bs!1943244 () Bool)

(assert (= bs!1943244 (and b!7620392 b!7620356)))

(assert (=> bs!1943244 (not (= lambda!468386 lambda!468385))))

(assert (=> b!7620392 true))

(assert (=> b!7620392 true))

(declare-fun bs!1943245 () Bool)

(declare-fun b!7620395 () Bool)

(assert (= bs!1943245 (and b!7620395 b!7619841)))

(declare-fun lambda!468387 () Int)

(assert (=> bs!1943245 (not (= lambda!468387 lambda!468361))))

(declare-fun bs!1943246 () Bool)

(assert (= bs!1943246 (and b!7620395 b!7620353)))

(assert (=> bs!1943246 (not (= lambda!468387 lambda!468384))))

(declare-fun bs!1943247 () Bool)

(assert (= bs!1943247 (and b!7620395 b!7620392)))

(assert (=> bs!1943247 (not (= lambda!468387 lambda!468386))))

(declare-fun bs!1943248 () Bool)

(assert (= bs!1943248 (and b!7620395 b!7620356)))

(assert (=> bs!1943248 (= (and (= (_1!37891 lt!2656488) (_2!37891 lt!2656488)) (= (regOne!41126 (reg!20636 r!14126)) (regOne!41126 r!14126)) (= (regTwo!41126 (reg!20636 r!14126)) (regTwo!41126 r!14126))) (= lambda!468387 lambda!468385))))

(declare-fun bs!1943249 () Bool)

(assert (= bs!1943249 (and b!7620395 d!2323119)))

(assert (=> bs!1943249 (not (= lambda!468387 lambda!468379))))

(assert (=> b!7620395 true))

(assert (=> b!7620395 true))

(declare-fun b!7620388 () Bool)

(declare-fun e!4531308 () Bool)

(declare-fun e!4531311 () Bool)

(assert (=> b!7620388 (= e!4531308 e!4531311)))

(declare-fun c!1404462 () Bool)

(assert (=> b!7620388 (= c!1404462 ((_ is Star!20307) (reg!20636 r!14126)))))

(declare-fun b!7620389 () Bool)

(declare-fun e!4531312 () Bool)

(assert (=> b!7620389 (= e!4531308 e!4531312)))

(declare-fun res!3050897 () Bool)

(assert (=> b!7620389 (= res!3050897 (matchRSpec!4506 (regOne!41127 (reg!20636 r!14126)) (_1!37891 lt!2656488)))))

(assert (=> b!7620389 (=> res!3050897 e!4531312)))

(declare-fun bm!699887 () Bool)

(declare-fun call!699893 () Bool)

(assert (=> bm!699887 (= call!699893 (Exists!4463 (ite c!1404462 lambda!468386 lambda!468387)))))

(declare-fun b!7620390 () Bool)

(declare-fun e!4531310 () Bool)

(declare-fun call!699892 () Bool)

(assert (=> b!7620390 (= e!4531310 call!699892)))

(declare-fun b!7620391 () Bool)

(assert (=> b!7620391 (= e!4531312 (matchRSpec!4506 (regTwo!41127 (reg!20636 r!14126)) (_1!37891 lt!2656488)))))

(declare-fun e!4531307 () Bool)

(assert (=> b!7620392 (= e!4531307 call!699893)))

(declare-fun d!2323135 () Bool)

(declare-fun c!1404463 () Bool)

(assert (=> d!2323135 (= c!1404463 ((_ is EmptyExpr!20307) (reg!20636 r!14126)))))

(assert (=> d!2323135 (= (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656488)) e!4531310)))

(declare-fun bm!699888 () Bool)

(assert (=> bm!699888 (= call!699892 (isEmpty!41652 (_1!37891 lt!2656488)))))

(declare-fun b!7620393 () Bool)

(declare-fun res!3050896 () Bool)

(assert (=> b!7620393 (=> res!3050896 e!4531307)))

(assert (=> b!7620393 (= res!3050896 call!699892)))

(assert (=> b!7620393 (= e!4531311 e!4531307)))

(declare-fun b!7620394 () Bool)

(declare-fun c!1404461 () Bool)

(assert (=> b!7620394 (= c!1404461 ((_ is Union!20307) (reg!20636 r!14126)))))

(declare-fun e!4531313 () Bool)

(assert (=> b!7620394 (= e!4531313 e!4531308)))

(assert (=> b!7620395 (= e!4531311 call!699893)))

(declare-fun b!7620396 () Bool)

(declare-fun c!1404460 () Bool)

(assert (=> b!7620396 (= c!1404460 ((_ is ElementMatch!20307) (reg!20636 r!14126)))))

(declare-fun e!4531309 () Bool)

(assert (=> b!7620396 (= e!4531309 e!4531313)))

(declare-fun b!7620397 () Bool)

(assert (=> b!7620397 (= e!4531310 e!4531309)))

(declare-fun res!3050898 () Bool)

(assert (=> b!7620397 (= res!3050898 (not ((_ is EmptyLang!20307) (reg!20636 r!14126))))))

(assert (=> b!7620397 (=> (not res!3050898) (not e!4531309))))

(declare-fun b!7620398 () Bool)

(assert (=> b!7620398 (= e!4531313 (= (_1!37891 lt!2656488) (Cons!73036 (c!1404342 (reg!20636 r!14126)) Nil!73036)))))

(assert (= (and d!2323135 c!1404463) b!7620390))

(assert (= (and d!2323135 (not c!1404463)) b!7620397))

(assert (= (and b!7620397 res!3050898) b!7620396))

(assert (= (and b!7620396 c!1404460) b!7620398))

(assert (= (and b!7620396 (not c!1404460)) b!7620394))

(assert (= (and b!7620394 c!1404461) b!7620389))

(assert (= (and b!7620394 (not c!1404461)) b!7620388))

(assert (= (and b!7620389 (not res!3050897)) b!7620391))

(assert (= (and b!7620388 c!1404462) b!7620393))

(assert (= (and b!7620388 (not c!1404462)) b!7620395))

(assert (= (and b!7620393 (not res!3050896)) b!7620392))

(assert (= (or b!7620392 b!7620395) bm!699887))

(assert (= (or b!7620390 b!7620393) bm!699888))

(declare-fun m!8152354 () Bool)

(assert (=> b!7620389 m!8152354))

(declare-fun m!8152356 () Bool)

(assert (=> bm!699887 m!8152356))

(declare-fun m!8152358 () Bool)

(assert (=> b!7620391 m!8152358))

(assert (=> bm!699888 m!8151970))

(assert (=> b!7619832 d!2323135))

(declare-fun d!2323137 () Bool)

(assert (=> d!2323137 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656488)) (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656488)))))

(declare-fun lt!2656570 () Unit!167476)

(assert (=> d!2323137 (= lt!2656570 (choose!58792 (reg!20636 r!14126) (_1!37891 lt!2656488)))))

(assert (=> d!2323137 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323137 (= (mainMatchTheorem!4500 (reg!20636 r!14126) (_1!37891 lt!2656488)) lt!2656570)))

(declare-fun bs!1943250 () Bool)

(assert (= bs!1943250 d!2323137))

(assert (=> bs!1943250 m!8152002))

(assert (=> bs!1943250 m!8151998))

(declare-fun m!8152360 () Bool)

(assert (=> bs!1943250 m!8152360))

(assert (=> bs!1943250 m!8151960))

(assert (=> b!7619832 d!2323137))

(declare-fun d!2323139 () Bool)

(declare-fun lt!2656573 () tuple2!69176)

(declare-fun dynLambda!29914 (Int tuple2!69176) Bool)

(assert (=> d!2323139 (dynLambda!29914 lambda!468361 lt!2656573)))

(declare-fun choose!58794 (Int) tuple2!69176)

(assert (=> d!2323139 (= lt!2656573 (choose!58794 lambda!468361))))

(assert (=> d!2323139 (Exists!4463 lambda!468361)))

(assert (=> d!2323139 (= (pickWitness!438 lambda!468361) lt!2656573)))

(declare-fun b_lambda!288991 () Bool)

(assert (=> (not b_lambda!288991) (not d!2323139)))

(declare-fun bs!1943251 () Bool)

(assert (= bs!1943251 d!2323139))

(declare-fun m!8152362 () Bool)

(assert (=> bs!1943251 m!8152362))

(declare-fun m!8152364 () Bool)

(assert (=> bs!1943251 m!8152364))

(assert (=> bs!1943251 m!8151962))

(assert (=> b!7619832 d!2323139))

(declare-fun d!2323141 () Bool)

(assert (=> d!2323141 (= (isEmpty!41652 s!9605) ((_ is Nil!73036) s!9605))))

(assert (=> b!7619848 d!2323141))

(declare-fun b!7620399 () Bool)

(declare-fun res!3050906 () Bool)

(declare-fun e!4531320 () Bool)

(assert (=> b!7620399 (=> (not res!3050906) (not e!4531320))))

(declare-fun call!699894 () Bool)

(assert (=> b!7620399 (= res!3050906 (not call!699894))))

(declare-fun b!7620400 () Bool)

(declare-fun e!4531318 () Bool)

(assert (=> b!7620400 (= e!4531318 (not (= (head!15654 s!9605) (c!1404342 r!14126))))))

(declare-fun b!7620401 () Bool)

(declare-fun e!4531316 () Bool)

(assert (=> b!7620401 (= e!4531316 (matchR!9814 (derivativeStep!5854 r!14126 (head!15654 s!9605)) (tail!15194 s!9605)))))

(declare-fun d!2323143 () Bool)

(declare-fun e!4531315 () Bool)

(assert (=> d!2323143 e!4531315))

(declare-fun c!1404465 () Bool)

(assert (=> d!2323143 (= c!1404465 ((_ is EmptyExpr!20307) r!14126))))

(declare-fun lt!2656574 () Bool)

(assert (=> d!2323143 (= lt!2656574 e!4531316)))

(declare-fun c!1404466 () Bool)

(assert (=> d!2323143 (= c!1404466 (isEmpty!41652 s!9605))))

(assert (=> d!2323143 (validRegex!10727 r!14126)))

(assert (=> d!2323143 (= (matchR!9814 r!14126 s!9605) lt!2656574)))

(declare-fun b!7620402 () Bool)

(assert (=> b!7620402 (= e!4531316 (nullable!8874 r!14126))))

(declare-fun b!7620403 () Bool)

(declare-fun res!3050899 () Bool)

(declare-fun e!4531319 () Bool)

(assert (=> b!7620403 (=> res!3050899 e!4531319)))

(assert (=> b!7620403 (= res!3050899 e!4531320)))

(declare-fun res!3050905 () Bool)

(assert (=> b!7620403 (=> (not res!3050905) (not e!4531320))))

(assert (=> b!7620403 (= res!3050905 lt!2656574)))

(declare-fun b!7620404 () Bool)

(assert (=> b!7620404 (= e!4531320 (= (head!15654 s!9605) (c!1404342 r!14126)))))

(declare-fun bm!699889 () Bool)

(assert (=> bm!699889 (= call!699894 (isEmpty!41652 s!9605))))

(declare-fun b!7620405 () Bool)

(declare-fun e!4531317 () Bool)

(assert (=> b!7620405 (= e!4531317 e!4531318)))

(declare-fun res!3050901 () Bool)

(assert (=> b!7620405 (=> res!3050901 e!4531318)))

(assert (=> b!7620405 (= res!3050901 call!699894)))

(declare-fun b!7620406 () Bool)

(assert (=> b!7620406 (= e!4531315 (= lt!2656574 call!699894))))

(declare-fun b!7620407 () Bool)

(declare-fun res!3050904 () Bool)

(assert (=> b!7620407 (=> res!3050904 e!4531319)))

(assert (=> b!7620407 (= res!3050904 (not ((_ is ElementMatch!20307) r!14126)))))

(declare-fun e!4531314 () Bool)

(assert (=> b!7620407 (= e!4531314 e!4531319)))

(declare-fun b!7620408 () Bool)

(assert (=> b!7620408 (= e!4531319 e!4531317)))

(declare-fun res!3050903 () Bool)

(assert (=> b!7620408 (=> (not res!3050903) (not e!4531317))))

(assert (=> b!7620408 (= res!3050903 (not lt!2656574))))

(declare-fun b!7620409 () Bool)

(declare-fun res!3050900 () Bool)

(assert (=> b!7620409 (=> (not res!3050900) (not e!4531320))))

(assert (=> b!7620409 (= res!3050900 (isEmpty!41652 (tail!15194 s!9605)))))

(declare-fun b!7620410 () Bool)

(declare-fun res!3050902 () Bool)

(assert (=> b!7620410 (=> res!3050902 e!4531318)))

(assert (=> b!7620410 (= res!3050902 (not (isEmpty!41652 (tail!15194 s!9605))))))

(declare-fun b!7620411 () Bool)

(assert (=> b!7620411 (= e!4531315 e!4531314)))

(declare-fun c!1404464 () Bool)

(assert (=> b!7620411 (= c!1404464 ((_ is EmptyLang!20307) r!14126))))

(declare-fun b!7620412 () Bool)

(assert (=> b!7620412 (= e!4531314 (not lt!2656574))))

(assert (= (and d!2323143 c!1404466) b!7620402))

(assert (= (and d!2323143 (not c!1404466)) b!7620401))

(assert (= (and d!2323143 c!1404465) b!7620406))

(assert (= (and d!2323143 (not c!1404465)) b!7620411))

(assert (= (and b!7620411 c!1404464) b!7620412))

(assert (= (and b!7620411 (not c!1404464)) b!7620407))

(assert (= (and b!7620407 (not res!3050904)) b!7620403))

(assert (= (and b!7620403 res!3050905) b!7620399))

(assert (= (and b!7620399 res!3050906) b!7620409))

(assert (= (and b!7620409 res!3050900) b!7620404))

(assert (= (and b!7620403 (not res!3050899)) b!7620408))

(assert (= (and b!7620408 res!3050903) b!7620405))

(assert (= (and b!7620405 (not res!3050901)) b!7620410))

(assert (= (and b!7620410 (not res!3050902)) b!7620400))

(assert (= (or b!7620406 b!7620399 b!7620405) bm!699889))

(declare-fun m!8152366 () Bool)

(assert (=> b!7620404 m!8152366))

(assert (=> d!2323143 m!8152018))

(assert (=> d!2323143 m!8152020))

(declare-fun m!8152368 () Bool)

(assert (=> b!7620409 m!8152368))

(assert (=> b!7620409 m!8152368))

(declare-fun m!8152370 () Bool)

(assert (=> b!7620409 m!8152370))

(assert (=> bm!699889 m!8152018))

(assert (=> b!7620410 m!8152368))

(assert (=> b!7620410 m!8152368))

(assert (=> b!7620410 m!8152370))

(assert (=> b!7620401 m!8152366))

(assert (=> b!7620401 m!8152366))

(declare-fun m!8152372 () Bool)

(assert (=> b!7620401 m!8152372))

(assert (=> b!7620401 m!8152368))

(assert (=> b!7620401 m!8152372))

(assert (=> b!7620401 m!8152368))

(declare-fun m!8152374 () Bool)

(assert (=> b!7620401 m!8152374))

(assert (=> b!7620402 m!8152152))

(assert (=> b!7620400 m!8152366))

(assert (=> b!7619837 d!2323143))

(declare-fun bs!1943252 () Bool)

(declare-fun b!7620417 () Bool)

(assert (= bs!1943252 (and b!7620417 b!7620353)))

(declare-fun lambda!468388 () Int)

(assert (=> bs!1943252 (= (and (= (_1!37891 lt!2656495) (_2!37891 lt!2656488)) (= (reg!20636 (reg!20636 r!14126)) (reg!20636 r!14126)) (= (reg!20636 r!14126) r!14126)) (= lambda!468388 lambda!468384))))

(declare-fun bs!1943253 () Bool)

(assert (= bs!1943253 (and b!7620417 b!7620392)))

(assert (=> bs!1943253 (= (= (_1!37891 lt!2656495) (_1!37891 lt!2656488)) (= lambda!468388 lambda!468386))))

(declare-fun bs!1943254 () Bool)

(assert (= bs!1943254 (and b!7620417 b!7620356)))

(assert (=> bs!1943254 (not (= lambda!468388 lambda!468385))))

(declare-fun bs!1943255 () Bool)

(assert (= bs!1943255 (and b!7620417 d!2323119)))

(assert (=> bs!1943255 (not (= lambda!468388 lambda!468379))))

(declare-fun bs!1943256 () Bool)

(assert (= bs!1943256 (and b!7620417 b!7619841)))

(assert (=> bs!1943256 (not (= lambda!468388 lambda!468361))))

(declare-fun bs!1943257 () Bool)

(assert (= bs!1943257 (and b!7620417 b!7620395)))

(assert (=> bs!1943257 (not (= lambda!468388 lambda!468387))))

(assert (=> b!7620417 true))

(assert (=> b!7620417 true))

(declare-fun bs!1943258 () Bool)

(declare-fun b!7620420 () Bool)

(assert (= bs!1943258 (and b!7620420 b!7620417)))

(declare-fun lambda!468389 () Int)

(assert (=> bs!1943258 (not (= lambda!468389 lambda!468388))))

(declare-fun bs!1943259 () Bool)

(assert (= bs!1943259 (and b!7620420 b!7620353)))

(assert (=> bs!1943259 (not (= lambda!468389 lambda!468384))))

(declare-fun bs!1943260 () Bool)

(assert (= bs!1943260 (and b!7620420 b!7620392)))

(assert (=> bs!1943260 (not (= lambda!468389 lambda!468386))))

(declare-fun bs!1943261 () Bool)

(assert (= bs!1943261 (and b!7620420 b!7620356)))

(assert (=> bs!1943261 (= (and (= (_1!37891 lt!2656495) (_2!37891 lt!2656488)) (= (regOne!41126 (reg!20636 r!14126)) (regOne!41126 r!14126)) (= (regTwo!41126 (reg!20636 r!14126)) (regTwo!41126 r!14126))) (= lambda!468389 lambda!468385))))

(declare-fun bs!1943262 () Bool)

(assert (= bs!1943262 (and b!7620420 d!2323119)))

(assert (=> bs!1943262 (not (= lambda!468389 lambda!468379))))

(declare-fun bs!1943263 () Bool)

(assert (= bs!1943263 (and b!7620420 b!7619841)))

(assert (=> bs!1943263 (not (= lambda!468389 lambda!468361))))

(declare-fun bs!1943264 () Bool)

(assert (= bs!1943264 (and b!7620420 b!7620395)))

(assert (=> bs!1943264 (= (= (_1!37891 lt!2656495) (_1!37891 lt!2656488)) (= lambda!468389 lambda!468387))))

(assert (=> b!7620420 true))

(assert (=> b!7620420 true))

(declare-fun b!7620413 () Bool)

(declare-fun e!4531322 () Bool)

(declare-fun e!4531325 () Bool)

(assert (=> b!7620413 (= e!4531322 e!4531325)))

(declare-fun c!1404469 () Bool)

(assert (=> b!7620413 (= c!1404469 ((_ is Star!20307) (reg!20636 r!14126)))))

(declare-fun b!7620414 () Bool)

(declare-fun e!4531326 () Bool)

(assert (=> b!7620414 (= e!4531322 e!4531326)))

(declare-fun res!3050908 () Bool)

(assert (=> b!7620414 (= res!3050908 (matchRSpec!4506 (regOne!41127 (reg!20636 r!14126)) (_1!37891 lt!2656495)))))

(assert (=> b!7620414 (=> res!3050908 e!4531326)))

(declare-fun call!699896 () Bool)

(declare-fun bm!699890 () Bool)

(assert (=> bm!699890 (= call!699896 (Exists!4463 (ite c!1404469 lambda!468388 lambda!468389)))))

(declare-fun b!7620415 () Bool)

(declare-fun e!4531324 () Bool)

(declare-fun call!699895 () Bool)

(assert (=> b!7620415 (= e!4531324 call!699895)))

(declare-fun b!7620416 () Bool)

(assert (=> b!7620416 (= e!4531326 (matchRSpec!4506 (regTwo!41127 (reg!20636 r!14126)) (_1!37891 lt!2656495)))))

(declare-fun e!4531321 () Bool)

(assert (=> b!7620417 (= e!4531321 call!699896)))

(declare-fun d!2323145 () Bool)

(declare-fun c!1404470 () Bool)

(assert (=> d!2323145 (= c!1404470 ((_ is EmptyExpr!20307) (reg!20636 r!14126)))))

(assert (=> d!2323145 (= (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656495)) e!4531324)))

(declare-fun bm!699891 () Bool)

(assert (=> bm!699891 (= call!699895 (isEmpty!41652 (_1!37891 lt!2656495)))))

(declare-fun b!7620418 () Bool)

(declare-fun res!3050907 () Bool)

(assert (=> b!7620418 (=> res!3050907 e!4531321)))

(assert (=> b!7620418 (= res!3050907 call!699895)))

(assert (=> b!7620418 (= e!4531325 e!4531321)))

(declare-fun b!7620419 () Bool)

(declare-fun c!1404468 () Bool)

(assert (=> b!7620419 (= c!1404468 ((_ is Union!20307) (reg!20636 r!14126)))))

(declare-fun e!4531327 () Bool)

(assert (=> b!7620419 (= e!4531327 e!4531322)))

(assert (=> b!7620420 (= e!4531325 call!699896)))

(declare-fun b!7620421 () Bool)

(declare-fun c!1404467 () Bool)

(assert (=> b!7620421 (= c!1404467 ((_ is ElementMatch!20307) (reg!20636 r!14126)))))

(declare-fun e!4531323 () Bool)

(assert (=> b!7620421 (= e!4531323 e!4531327)))

(declare-fun b!7620422 () Bool)

(assert (=> b!7620422 (= e!4531324 e!4531323)))

(declare-fun res!3050909 () Bool)

(assert (=> b!7620422 (= res!3050909 (not ((_ is EmptyLang!20307) (reg!20636 r!14126))))))

(assert (=> b!7620422 (=> (not res!3050909) (not e!4531323))))

(declare-fun b!7620423 () Bool)

(assert (=> b!7620423 (= e!4531327 (= (_1!37891 lt!2656495) (Cons!73036 (c!1404342 (reg!20636 r!14126)) Nil!73036)))))

(assert (= (and d!2323145 c!1404470) b!7620415))

(assert (= (and d!2323145 (not c!1404470)) b!7620422))

(assert (= (and b!7620422 res!3050909) b!7620421))

(assert (= (and b!7620421 c!1404467) b!7620423))

(assert (= (and b!7620421 (not c!1404467)) b!7620419))

(assert (= (and b!7620419 c!1404468) b!7620414))

(assert (= (and b!7620419 (not c!1404468)) b!7620413))

(assert (= (and b!7620414 (not res!3050908)) b!7620416))

(assert (= (and b!7620413 c!1404469) b!7620418))

(assert (= (and b!7620413 (not c!1404469)) b!7620420))

(assert (= (and b!7620418 (not res!3050907)) b!7620417))

(assert (= (or b!7620417 b!7620420) bm!699890))

(assert (= (or b!7620415 b!7620418) bm!699891))

(declare-fun m!8152376 () Bool)

(assert (=> b!7620414 m!8152376))

(declare-fun m!8152378 () Bool)

(assert (=> bm!699890 m!8152378))

(declare-fun m!8152380 () Bool)

(assert (=> b!7620416 m!8152380))

(declare-fun m!8152382 () Bool)

(assert (=> bm!699891 m!8152382))

(assert (=> b!7619837 d!2323145))

(declare-fun bs!1943265 () Bool)

(declare-fun b!7620428 () Bool)

(assert (= bs!1943265 (and b!7620428 b!7620417)))

(declare-fun lambda!468390 () Int)

(assert (=> bs!1943265 (= (and (= (_2!37891 lt!2656495) (_1!37891 lt!2656495)) (= (reg!20636 r!14126) (reg!20636 (reg!20636 r!14126))) (= r!14126 (reg!20636 r!14126))) (= lambda!468390 lambda!468388))))

(declare-fun bs!1943266 () Bool)

(assert (= bs!1943266 (and b!7620428 b!7620353)))

(assert (=> bs!1943266 (= (= (_2!37891 lt!2656495) (_2!37891 lt!2656488)) (= lambda!468390 lambda!468384))))

(declare-fun bs!1943267 () Bool)

(assert (= bs!1943267 (and b!7620428 b!7620392)))

(assert (=> bs!1943267 (= (and (= (_2!37891 lt!2656495) (_1!37891 lt!2656488)) (= (reg!20636 r!14126) (reg!20636 (reg!20636 r!14126))) (= r!14126 (reg!20636 r!14126))) (= lambda!468390 lambda!468386))))

(declare-fun bs!1943268 () Bool)

(assert (= bs!1943268 (and b!7620428 d!2323119)))

(assert (=> bs!1943268 (not (= lambda!468390 lambda!468379))))

(declare-fun bs!1943269 () Bool)

(assert (= bs!1943269 (and b!7620428 b!7619841)))

(assert (=> bs!1943269 (not (= lambda!468390 lambda!468361))))

(declare-fun bs!1943270 () Bool)

(assert (= bs!1943270 (and b!7620428 b!7620395)))

(assert (=> bs!1943270 (not (= lambda!468390 lambda!468387))))

(declare-fun bs!1943271 () Bool)

(assert (= bs!1943271 (and b!7620428 b!7620356)))

(assert (=> bs!1943271 (not (= lambda!468390 lambda!468385))))

(declare-fun bs!1943272 () Bool)

(assert (= bs!1943272 (and b!7620428 b!7620420)))

(assert (=> bs!1943272 (not (= lambda!468390 lambda!468389))))

(assert (=> b!7620428 true))

(assert (=> b!7620428 true))

(declare-fun bs!1943273 () Bool)

(declare-fun b!7620431 () Bool)

(assert (= bs!1943273 (and b!7620431 b!7620417)))

(declare-fun lambda!468391 () Int)

(assert (=> bs!1943273 (not (= lambda!468391 lambda!468388))))

(declare-fun bs!1943274 () Bool)

(assert (= bs!1943274 (and b!7620431 b!7620353)))

(assert (=> bs!1943274 (not (= lambda!468391 lambda!468384))))

(declare-fun bs!1943275 () Bool)

(assert (= bs!1943275 (and b!7620431 b!7620392)))

(assert (=> bs!1943275 (not (= lambda!468391 lambda!468386))))

(declare-fun bs!1943276 () Bool)

(assert (= bs!1943276 (and b!7620431 b!7620428)))

(assert (=> bs!1943276 (not (= lambda!468391 lambda!468390))))

(declare-fun bs!1943277 () Bool)

(assert (= bs!1943277 (and b!7620431 d!2323119)))

(assert (=> bs!1943277 (not (= lambda!468391 lambda!468379))))

(declare-fun bs!1943278 () Bool)

(assert (= bs!1943278 (and b!7620431 b!7619841)))

(assert (=> bs!1943278 (not (= lambda!468391 lambda!468361))))

(declare-fun bs!1943279 () Bool)

(assert (= bs!1943279 (and b!7620431 b!7620395)))

(assert (=> bs!1943279 (= (and (= (_2!37891 lt!2656495) (_1!37891 lt!2656488)) (= (regOne!41126 r!14126) (regOne!41126 (reg!20636 r!14126))) (= (regTwo!41126 r!14126) (regTwo!41126 (reg!20636 r!14126)))) (= lambda!468391 lambda!468387))))

(declare-fun bs!1943280 () Bool)

(assert (= bs!1943280 (and b!7620431 b!7620356)))

(assert (=> bs!1943280 (= (= (_2!37891 lt!2656495) (_2!37891 lt!2656488)) (= lambda!468391 lambda!468385))))

(declare-fun bs!1943281 () Bool)

(assert (= bs!1943281 (and b!7620431 b!7620420)))

(assert (=> bs!1943281 (= (and (= (_2!37891 lt!2656495) (_1!37891 lt!2656495)) (= (regOne!41126 r!14126) (regOne!41126 (reg!20636 r!14126))) (= (regTwo!41126 r!14126) (regTwo!41126 (reg!20636 r!14126)))) (= lambda!468391 lambda!468389))))

(assert (=> b!7620431 true))

(assert (=> b!7620431 true))

(declare-fun b!7620424 () Bool)

(declare-fun e!4531329 () Bool)

(declare-fun e!4531332 () Bool)

(assert (=> b!7620424 (= e!4531329 e!4531332)))

(declare-fun c!1404473 () Bool)

(assert (=> b!7620424 (= c!1404473 ((_ is Star!20307) r!14126))))

(declare-fun b!7620425 () Bool)

(declare-fun e!4531333 () Bool)

(assert (=> b!7620425 (= e!4531329 e!4531333)))

(declare-fun res!3050911 () Bool)

(assert (=> b!7620425 (= res!3050911 (matchRSpec!4506 (regOne!41127 r!14126) (_2!37891 lt!2656495)))))

(assert (=> b!7620425 (=> res!3050911 e!4531333)))

(declare-fun call!699898 () Bool)

(declare-fun bm!699892 () Bool)

(assert (=> bm!699892 (= call!699898 (Exists!4463 (ite c!1404473 lambda!468390 lambda!468391)))))

(declare-fun b!7620426 () Bool)

(declare-fun e!4531331 () Bool)

(declare-fun call!699897 () Bool)

(assert (=> b!7620426 (= e!4531331 call!699897)))

(declare-fun b!7620427 () Bool)

(assert (=> b!7620427 (= e!4531333 (matchRSpec!4506 (regTwo!41127 r!14126) (_2!37891 lt!2656495)))))

(declare-fun e!4531328 () Bool)

(assert (=> b!7620428 (= e!4531328 call!699898)))

(declare-fun d!2323147 () Bool)

(declare-fun c!1404474 () Bool)

(assert (=> d!2323147 (= c!1404474 ((_ is EmptyExpr!20307) r!14126))))

(assert (=> d!2323147 (= (matchRSpec!4506 r!14126 (_2!37891 lt!2656495)) e!4531331)))

(declare-fun bm!699893 () Bool)

(assert (=> bm!699893 (= call!699897 (isEmpty!41652 (_2!37891 lt!2656495)))))

(declare-fun b!7620429 () Bool)

(declare-fun res!3050910 () Bool)

(assert (=> b!7620429 (=> res!3050910 e!4531328)))

(assert (=> b!7620429 (= res!3050910 call!699897)))

(assert (=> b!7620429 (= e!4531332 e!4531328)))

(declare-fun b!7620430 () Bool)

(declare-fun c!1404472 () Bool)

(assert (=> b!7620430 (= c!1404472 ((_ is Union!20307) r!14126))))

(declare-fun e!4531334 () Bool)

(assert (=> b!7620430 (= e!4531334 e!4531329)))

(assert (=> b!7620431 (= e!4531332 call!699898)))

(declare-fun b!7620432 () Bool)

(declare-fun c!1404471 () Bool)

(assert (=> b!7620432 (= c!1404471 ((_ is ElementMatch!20307) r!14126))))

(declare-fun e!4531330 () Bool)

(assert (=> b!7620432 (= e!4531330 e!4531334)))

(declare-fun b!7620433 () Bool)

(assert (=> b!7620433 (= e!4531331 e!4531330)))

(declare-fun res!3050912 () Bool)

(assert (=> b!7620433 (= res!3050912 (not ((_ is EmptyLang!20307) r!14126)))))

(assert (=> b!7620433 (=> (not res!3050912) (not e!4531330))))

(declare-fun b!7620434 () Bool)

(assert (=> b!7620434 (= e!4531334 (= (_2!37891 lt!2656495) (Cons!73036 (c!1404342 r!14126) Nil!73036)))))

(assert (= (and d!2323147 c!1404474) b!7620426))

(assert (= (and d!2323147 (not c!1404474)) b!7620433))

(assert (= (and b!7620433 res!3050912) b!7620432))

(assert (= (and b!7620432 c!1404471) b!7620434))

(assert (= (and b!7620432 (not c!1404471)) b!7620430))

(assert (= (and b!7620430 c!1404472) b!7620425))

(assert (= (and b!7620430 (not c!1404472)) b!7620424))

(assert (= (and b!7620425 (not res!3050911)) b!7620427))

(assert (= (and b!7620424 c!1404473) b!7620429))

(assert (= (and b!7620424 (not c!1404473)) b!7620431))

(assert (= (and b!7620429 (not res!3050910)) b!7620428))

(assert (= (or b!7620428 b!7620431) bm!699892))

(assert (= (or b!7620426 b!7620429) bm!699893))

(declare-fun m!8152384 () Bool)

(assert (=> b!7620425 m!8152384))

(declare-fun m!8152386 () Bool)

(assert (=> bm!699892 m!8152386))

(declare-fun m!8152388 () Bool)

(assert (=> b!7620427 m!8152388))

(declare-fun m!8152390 () Bool)

(assert (=> bm!699893 m!8152390))

(assert (=> b!7619837 d!2323147))

(assert (=> b!7619837 d!2323105))

(declare-fun d!2323149 () Bool)

(assert (=> d!2323149 (= (matchR!9814 r!14126 (_2!37891 lt!2656495)) (matchRSpec!4506 r!14126 (_2!37891 lt!2656495)))))

(declare-fun lt!2656575 () Unit!167476)

(assert (=> d!2323149 (= lt!2656575 (choose!58792 r!14126 (_2!37891 lt!2656495)))))

(assert (=> d!2323149 (validRegex!10727 r!14126)))

(assert (=> d!2323149 (= (mainMatchTheorem!4500 r!14126 (_2!37891 lt!2656495)) lt!2656575)))

(declare-fun bs!1943282 () Bool)

(assert (= bs!1943282 d!2323149))

(assert (=> bs!1943282 m!8151984))

(assert (=> bs!1943282 m!8151972))

(declare-fun m!8152392 () Bool)

(assert (=> bs!1943282 m!8152392))

(assert (=> bs!1943282 m!8152020))

(assert (=> b!7619837 d!2323149))

(declare-fun d!2323151 () Bool)

(assert (=> d!2323151 (= (get!25772 lt!2656498) (v!54516 lt!2656498))))

(assert (=> b!7619837 d!2323151))

(declare-fun b!7620435 () Bool)

(declare-fun res!3050920 () Bool)

(declare-fun e!4531341 () Bool)

(assert (=> b!7620435 (=> (not res!3050920) (not e!4531341))))

(declare-fun call!699899 () Bool)

(assert (=> b!7620435 (= res!3050920 (not call!699899))))

(declare-fun b!7620436 () Bool)

(declare-fun e!4531339 () Bool)

(assert (=> b!7620436 (= e!4531339 (not (= (head!15654 (_1!37891 lt!2656495)) (c!1404342 (reg!20636 r!14126)))))))

(declare-fun b!7620437 () Bool)

(declare-fun e!4531337 () Bool)

(assert (=> b!7620437 (= e!4531337 (matchR!9814 (derivativeStep!5854 (reg!20636 r!14126) (head!15654 (_1!37891 lt!2656495))) (tail!15194 (_1!37891 lt!2656495))))))

(declare-fun d!2323153 () Bool)

(declare-fun e!4531336 () Bool)

(assert (=> d!2323153 e!4531336))

(declare-fun c!1404476 () Bool)

(assert (=> d!2323153 (= c!1404476 ((_ is EmptyExpr!20307) (reg!20636 r!14126)))))

(declare-fun lt!2656576 () Bool)

(assert (=> d!2323153 (= lt!2656576 e!4531337)))

(declare-fun c!1404477 () Bool)

(assert (=> d!2323153 (= c!1404477 (isEmpty!41652 (_1!37891 lt!2656495)))))

(assert (=> d!2323153 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323153 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656495)) lt!2656576)))

(declare-fun b!7620438 () Bool)

(assert (=> b!7620438 (= e!4531337 (nullable!8874 (reg!20636 r!14126)))))

(declare-fun b!7620439 () Bool)

(declare-fun res!3050913 () Bool)

(declare-fun e!4531340 () Bool)

(assert (=> b!7620439 (=> res!3050913 e!4531340)))

(assert (=> b!7620439 (= res!3050913 e!4531341)))

(declare-fun res!3050919 () Bool)

(assert (=> b!7620439 (=> (not res!3050919) (not e!4531341))))

(assert (=> b!7620439 (= res!3050919 lt!2656576)))

(declare-fun b!7620440 () Bool)

(assert (=> b!7620440 (= e!4531341 (= (head!15654 (_1!37891 lt!2656495)) (c!1404342 (reg!20636 r!14126))))))

(declare-fun bm!699894 () Bool)

(assert (=> bm!699894 (= call!699899 (isEmpty!41652 (_1!37891 lt!2656495)))))

(declare-fun b!7620441 () Bool)

(declare-fun e!4531338 () Bool)

(assert (=> b!7620441 (= e!4531338 e!4531339)))

(declare-fun res!3050915 () Bool)

(assert (=> b!7620441 (=> res!3050915 e!4531339)))

(assert (=> b!7620441 (= res!3050915 call!699899)))

(declare-fun b!7620442 () Bool)

(assert (=> b!7620442 (= e!4531336 (= lt!2656576 call!699899))))

(declare-fun b!7620443 () Bool)

(declare-fun res!3050918 () Bool)

(assert (=> b!7620443 (=> res!3050918 e!4531340)))

(assert (=> b!7620443 (= res!3050918 (not ((_ is ElementMatch!20307) (reg!20636 r!14126))))))

(declare-fun e!4531335 () Bool)

(assert (=> b!7620443 (= e!4531335 e!4531340)))

(declare-fun b!7620444 () Bool)

(assert (=> b!7620444 (= e!4531340 e!4531338)))

(declare-fun res!3050917 () Bool)

(assert (=> b!7620444 (=> (not res!3050917) (not e!4531338))))

(assert (=> b!7620444 (= res!3050917 (not lt!2656576))))

(declare-fun b!7620445 () Bool)

(declare-fun res!3050914 () Bool)

(assert (=> b!7620445 (=> (not res!3050914) (not e!4531341))))

(assert (=> b!7620445 (= res!3050914 (isEmpty!41652 (tail!15194 (_1!37891 lt!2656495))))))

(declare-fun b!7620446 () Bool)

(declare-fun res!3050916 () Bool)

(assert (=> b!7620446 (=> res!3050916 e!4531339)))

(assert (=> b!7620446 (= res!3050916 (not (isEmpty!41652 (tail!15194 (_1!37891 lt!2656495)))))))

(declare-fun b!7620447 () Bool)

(assert (=> b!7620447 (= e!4531336 e!4531335)))

(declare-fun c!1404475 () Bool)

(assert (=> b!7620447 (= c!1404475 ((_ is EmptyLang!20307) (reg!20636 r!14126)))))

(declare-fun b!7620448 () Bool)

(assert (=> b!7620448 (= e!4531335 (not lt!2656576))))

(assert (= (and d!2323153 c!1404477) b!7620438))

(assert (= (and d!2323153 (not c!1404477)) b!7620437))

(assert (= (and d!2323153 c!1404476) b!7620442))

(assert (= (and d!2323153 (not c!1404476)) b!7620447))

(assert (= (and b!7620447 c!1404475) b!7620448))

(assert (= (and b!7620447 (not c!1404475)) b!7620443))

(assert (= (and b!7620443 (not res!3050918)) b!7620439))

(assert (= (and b!7620439 res!3050919) b!7620435))

(assert (= (and b!7620435 res!3050920) b!7620445))

(assert (= (and b!7620445 res!3050914) b!7620440))

(assert (= (and b!7620439 (not res!3050913)) b!7620444))

(assert (= (and b!7620444 res!3050917) b!7620441))

(assert (= (and b!7620441 (not res!3050915)) b!7620446))

(assert (= (and b!7620446 (not res!3050916)) b!7620436))

(assert (= (or b!7620442 b!7620435 b!7620441) bm!699894))

(declare-fun m!8152394 () Bool)

(assert (=> b!7620440 m!8152394))

(assert (=> d!2323153 m!8152382))

(assert (=> d!2323153 m!8151960))

(declare-fun m!8152396 () Bool)

(assert (=> b!7620445 m!8152396))

(assert (=> b!7620445 m!8152396))

(declare-fun m!8152398 () Bool)

(assert (=> b!7620445 m!8152398))

(assert (=> bm!699894 m!8152382))

(assert (=> b!7620446 m!8152396))

(assert (=> b!7620446 m!8152396))

(assert (=> b!7620446 m!8152398))

(assert (=> b!7620437 m!8152394))

(assert (=> b!7620437 m!8152394))

(declare-fun m!8152400 () Bool)

(assert (=> b!7620437 m!8152400))

(assert (=> b!7620437 m!8152396))

(assert (=> b!7620437 m!8152400))

(assert (=> b!7620437 m!8152396))

(declare-fun m!8152402 () Bool)

(assert (=> b!7620437 m!8152402))

(assert (=> b!7620438 m!8152004))

(assert (=> b!7620436 m!8152394))

(assert (=> b!7619837 d!2323153))

(declare-fun d!2323155 () Bool)

(assert (=> d!2323155 (= (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656495)) (matchRSpec!4506 (reg!20636 r!14126) (_1!37891 lt!2656495)))))

(declare-fun lt!2656577 () Unit!167476)

(assert (=> d!2323155 (= lt!2656577 (choose!58792 (reg!20636 r!14126) (_1!37891 lt!2656495)))))

(assert (=> d!2323155 (validRegex!10727 (reg!20636 r!14126))))

(assert (=> d!2323155 (= (mainMatchTheorem!4500 (reg!20636 r!14126) (_1!37891 lt!2656495)) lt!2656577)))

(declare-fun bs!1943283 () Bool)

(assert (= bs!1943283 d!2323155))

(assert (=> bs!1943283 m!8151986))

(assert (=> bs!1943283 m!8151976))

(declare-fun m!8152404 () Bool)

(assert (=> bs!1943283 m!8152404))

(assert (=> bs!1943283 m!8151960))

(assert (=> b!7619837 d!2323155))

(declare-fun b!7620449 () Bool)

(declare-fun res!3050928 () Bool)

(declare-fun e!4531348 () Bool)

(assert (=> b!7620449 (=> (not res!3050928) (not e!4531348))))

(declare-fun call!699900 () Bool)

(assert (=> b!7620449 (= res!3050928 (not call!699900))))

(declare-fun b!7620450 () Bool)

(declare-fun e!4531346 () Bool)

(assert (=> b!7620450 (= e!4531346 (not (= (head!15654 (_2!37891 lt!2656495)) (c!1404342 r!14126))))))

(declare-fun b!7620451 () Bool)

(declare-fun e!4531344 () Bool)

(assert (=> b!7620451 (= e!4531344 (matchR!9814 (derivativeStep!5854 r!14126 (head!15654 (_2!37891 lt!2656495))) (tail!15194 (_2!37891 lt!2656495))))))

(declare-fun d!2323157 () Bool)

(declare-fun e!4531343 () Bool)

(assert (=> d!2323157 e!4531343))

(declare-fun c!1404479 () Bool)

(assert (=> d!2323157 (= c!1404479 ((_ is EmptyExpr!20307) r!14126))))

(declare-fun lt!2656578 () Bool)

(assert (=> d!2323157 (= lt!2656578 e!4531344)))

(declare-fun c!1404480 () Bool)

(assert (=> d!2323157 (= c!1404480 (isEmpty!41652 (_2!37891 lt!2656495)))))

(assert (=> d!2323157 (validRegex!10727 r!14126)))

(assert (=> d!2323157 (= (matchR!9814 r!14126 (_2!37891 lt!2656495)) lt!2656578)))

(declare-fun b!7620452 () Bool)

(assert (=> b!7620452 (= e!4531344 (nullable!8874 r!14126))))

(declare-fun b!7620453 () Bool)

(declare-fun res!3050921 () Bool)

(declare-fun e!4531347 () Bool)

(assert (=> b!7620453 (=> res!3050921 e!4531347)))

(assert (=> b!7620453 (= res!3050921 e!4531348)))

(declare-fun res!3050927 () Bool)

(assert (=> b!7620453 (=> (not res!3050927) (not e!4531348))))

(assert (=> b!7620453 (= res!3050927 lt!2656578)))

(declare-fun b!7620454 () Bool)

(assert (=> b!7620454 (= e!4531348 (= (head!15654 (_2!37891 lt!2656495)) (c!1404342 r!14126)))))

(declare-fun bm!699895 () Bool)

(assert (=> bm!699895 (= call!699900 (isEmpty!41652 (_2!37891 lt!2656495)))))

(declare-fun b!7620455 () Bool)

(declare-fun e!4531345 () Bool)

(assert (=> b!7620455 (= e!4531345 e!4531346)))

(declare-fun res!3050923 () Bool)

(assert (=> b!7620455 (=> res!3050923 e!4531346)))

(assert (=> b!7620455 (= res!3050923 call!699900)))

(declare-fun b!7620456 () Bool)

(assert (=> b!7620456 (= e!4531343 (= lt!2656578 call!699900))))

(declare-fun b!7620457 () Bool)

(declare-fun res!3050926 () Bool)

(assert (=> b!7620457 (=> res!3050926 e!4531347)))

(assert (=> b!7620457 (= res!3050926 (not ((_ is ElementMatch!20307) r!14126)))))

(declare-fun e!4531342 () Bool)

(assert (=> b!7620457 (= e!4531342 e!4531347)))

(declare-fun b!7620458 () Bool)

(assert (=> b!7620458 (= e!4531347 e!4531345)))

(declare-fun res!3050925 () Bool)

(assert (=> b!7620458 (=> (not res!3050925) (not e!4531345))))

(assert (=> b!7620458 (= res!3050925 (not lt!2656578))))

(declare-fun b!7620459 () Bool)

(declare-fun res!3050922 () Bool)

(assert (=> b!7620459 (=> (not res!3050922) (not e!4531348))))

(assert (=> b!7620459 (= res!3050922 (isEmpty!41652 (tail!15194 (_2!37891 lt!2656495))))))

(declare-fun b!7620460 () Bool)

(declare-fun res!3050924 () Bool)

(assert (=> b!7620460 (=> res!3050924 e!4531346)))

(assert (=> b!7620460 (= res!3050924 (not (isEmpty!41652 (tail!15194 (_2!37891 lt!2656495)))))))

(declare-fun b!7620461 () Bool)

(assert (=> b!7620461 (= e!4531343 e!4531342)))

(declare-fun c!1404478 () Bool)

(assert (=> b!7620461 (= c!1404478 ((_ is EmptyLang!20307) r!14126))))

(declare-fun b!7620462 () Bool)

(assert (=> b!7620462 (= e!4531342 (not lt!2656578))))

(assert (= (and d!2323157 c!1404480) b!7620452))

(assert (= (and d!2323157 (not c!1404480)) b!7620451))

(assert (= (and d!2323157 c!1404479) b!7620456))

(assert (= (and d!2323157 (not c!1404479)) b!7620461))

(assert (= (and b!7620461 c!1404478) b!7620462))

(assert (= (and b!7620461 (not c!1404478)) b!7620457))

(assert (= (and b!7620457 (not res!3050926)) b!7620453))

(assert (= (and b!7620453 res!3050927) b!7620449))

(assert (= (and b!7620449 res!3050928) b!7620459))

(assert (= (and b!7620459 res!3050922) b!7620454))

(assert (= (and b!7620453 (not res!3050921)) b!7620458))

(assert (= (and b!7620458 res!3050925) b!7620455))

(assert (= (and b!7620455 (not res!3050923)) b!7620460))

(assert (= (and b!7620460 (not res!3050924)) b!7620450))

(assert (= (or b!7620456 b!7620449 b!7620455) bm!699895))

(declare-fun m!8152406 () Bool)

(assert (=> b!7620454 m!8152406))

(assert (=> d!2323157 m!8152390))

(assert (=> d!2323157 m!8152020))

(declare-fun m!8152408 () Bool)

(assert (=> b!7620459 m!8152408))

(assert (=> b!7620459 m!8152408))

(declare-fun m!8152410 () Bool)

(assert (=> b!7620459 m!8152410))

(assert (=> bm!699895 m!8152390))

(assert (=> b!7620460 m!8152408))

(assert (=> b!7620460 m!8152408))

(assert (=> b!7620460 m!8152410))

(assert (=> b!7620451 m!8152406))

(assert (=> b!7620451 m!8152406))

(declare-fun m!8152412 () Bool)

(assert (=> b!7620451 m!8152412))

(assert (=> b!7620451 m!8152408))

(assert (=> b!7620451 m!8152412))

(assert (=> b!7620451 m!8152408))

(declare-fun m!8152414 () Bool)

(assert (=> b!7620451 m!8152414))

(assert (=> b!7620452 m!8152152))

(assert (=> b!7620450 m!8152406))

(assert (=> b!7619837 d!2323157))

(declare-fun b!7620473 () Bool)

(declare-fun e!4531351 () Bool)

(assert (=> b!7620473 (= e!4531351 tp_is_empty!50969)))

(declare-fun b!7620474 () Bool)

(declare-fun tp!2225051 () Bool)

(declare-fun tp!2225054 () Bool)

(assert (=> b!7620474 (= e!4531351 (and tp!2225051 tp!2225054))))

(assert (=> b!7619839 (= tp!2224998 e!4531351)))

(declare-fun b!7620475 () Bool)

(declare-fun tp!2225052 () Bool)

(assert (=> b!7620475 (= e!4531351 tp!2225052)))

(declare-fun b!7620476 () Bool)

(declare-fun tp!2225053 () Bool)

(declare-fun tp!2225050 () Bool)

(assert (=> b!7620476 (= e!4531351 (and tp!2225053 tp!2225050))))

(assert (= (and b!7619839 ((_ is ElementMatch!20307) (regOne!41126 r!14126))) b!7620473))

(assert (= (and b!7619839 ((_ is Concat!29152) (regOne!41126 r!14126))) b!7620474))

(assert (= (and b!7619839 ((_ is Star!20307) (regOne!41126 r!14126))) b!7620475))

(assert (= (and b!7619839 ((_ is Union!20307) (regOne!41126 r!14126))) b!7620476))

(declare-fun b!7620477 () Bool)

(declare-fun e!4531352 () Bool)

(assert (=> b!7620477 (= e!4531352 tp_is_empty!50969)))

(declare-fun b!7620478 () Bool)

(declare-fun tp!2225056 () Bool)

(declare-fun tp!2225059 () Bool)

(assert (=> b!7620478 (= e!4531352 (and tp!2225056 tp!2225059))))

(assert (=> b!7619839 (= tp!2224993 e!4531352)))

(declare-fun b!7620479 () Bool)

(declare-fun tp!2225057 () Bool)

(assert (=> b!7620479 (= e!4531352 tp!2225057)))

(declare-fun b!7620480 () Bool)

(declare-fun tp!2225058 () Bool)

(declare-fun tp!2225055 () Bool)

(assert (=> b!7620480 (= e!4531352 (and tp!2225058 tp!2225055))))

(assert (= (and b!7619839 ((_ is ElementMatch!20307) (regTwo!41126 r!14126))) b!7620477))

(assert (= (and b!7619839 ((_ is Concat!29152) (regTwo!41126 r!14126))) b!7620478))

(assert (= (and b!7619839 ((_ is Star!20307) (regTwo!41126 r!14126))) b!7620479))

(assert (= (and b!7619839 ((_ is Union!20307) (regTwo!41126 r!14126))) b!7620480))

(declare-fun b!7620485 () Bool)

(declare-fun e!4531355 () Bool)

(declare-fun tp!2225062 () Bool)

(assert (=> b!7620485 (= e!4531355 (and tp_is_empty!50969 tp!2225062))))

(assert (=> b!7619844 (= tp!2224992 e!4531355)))

(assert (= (and b!7619844 ((_ is Cons!73036) (t!387895 (_1!37891 cut!8)))) b!7620485))

(declare-fun b!7620486 () Bool)

(declare-fun e!4531356 () Bool)

(declare-fun tp!2225063 () Bool)

(assert (=> b!7620486 (= e!4531356 (and tp_is_empty!50969 tp!2225063))))

(assert (=> b!7619849 (= tp!2224995 e!4531356)))

(assert (= (and b!7619849 ((_ is Cons!73036) (t!387895 (_2!37891 cut!8)))) b!7620486))

(declare-fun b!7620487 () Bool)

(declare-fun e!4531357 () Bool)

(declare-fun tp!2225064 () Bool)

(assert (=> b!7620487 (= e!4531357 (and tp_is_empty!50969 tp!2225064))))

(assert (=> b!7619845 (= tp!2224996 e!4531357)))

(assert (= (and b!7619845 ((_ is Cons!73036) (t!387895 s!9605))) b!7620487))

(declare-fun b!7620488 () Bool)

(declare-fun e!4531358 () Bool)

(assert (=> b!7620488 (= e!4531358 tp_is_empty!50969)))

(declare-fun b!7620489 () Bool)

(declare-fun tp!2225066 () Bool)

(declare-fun tp!2225069 () Bool)

(assert (=> b!7620489 (= e!4531358 (and tp!2225066 tp!2225069))))

(assert (=> b!7619847 (= tp!2224999 e!4531358)))

(declare-fun b!7620490 () Bool)

(declare-fun tp!2225067 () Bool)

(assert (=> b!7620490 (= e!4531358 tp!2225067)))

(declare-fun b!7620491 () Bool)

(declare-fun tp!2225068 () Bool)

(declare-fun tp!2225065 () Bool)

(assert (=> b!7620491 (= e!4531358 (and tp!2225068 tp!2225065))))

(assert (= (and b!7619847 ((_ is ElementMatch!20307) (reg!20636 r!14126))) b!7620488))

(assert (= (and b!7619847 ((_ is Concat!29152) (reg!20636 r!14126))) b!7620489))

(assert (= (and b!7619847 ((_ is Star!20307) (reg!20636 r!14126))) b!7620490))

(assert (= (and b!7619847 ((_ is Union!20307) (reg!20636 r!14126))) b!7620491))

(declare-fun b!7620492 () Bool)

(declare-fun e!4531359 () Bool)

(assert (=> b!7620492 (= e!4531359 tp_is_empty!50969)))

(declare-fun b!7620493 () Bool)

(declare-fun tp!2225071 () Bool)

(declare-fun tp!2225074 () Bool)

(assert (=> b!7620493 (= e!4531359 (and tp!2225071 tp!2225074))))

(assert (=> b!7619836 (= tp!2224997 e!4531359)))

(declare-fun b!7620494 () Bool)

(declare-fun tp!2225072 () Bool)

(assert (=> b!7620494 (= e!4531359 tp!2225072)))

(declare-fun b!7620495 () Bool)

(declare-fun tp!2225073 () Bool)

(declare-fun tp!2225070 () Bool)

(assert (=> b!7620495 (= e!4531359 (and tp!2225073 tp!2225070))))

(assert (= (and b!7619836 ((_ is ElementMatch!20307) (regOne!41127 r!14126))) b!7620492))

(assert (= (and b!7619836 ((_ is Concat!29152) (regOne!41127 r!14126))) b!7620493))

(assert (= (and b!7619836 ((_ is Star!20307) (regOne!41127 r!14126))) b!7620494))

(assert (= (and b!7619836 ((_ is Union!20307) (regOne!41127 r!14126))) b!7620495))

(declare-fun b!7620496 () Bool)

(declare-fun e!4531360 () Bool)

(assert (=> b!7620496 (= e!4531360 tp_is_empty!50969)))

(declare-fun b!7620497 () Bool)

(declare-fun tp!2225076 () Bool)

(declare-fun tp!2225079 () Bool)

(assert (=> b!7620497 (= e!4531360 (and tp!2225076 tp!2225079))))

(assert (=> b!7619836 (= tp!2224994 e!4531360)))

(declare-fun b!7620498 () Bool)

(declare-fun tp!2225077 () Bool)

(assert (=> b!7620498 (= e!4531360 tp!2225077)))

(declare-fun b!7620499 () Bool)

(declare-fun tp!2225078 () Bool)

(declare-fun tp!2225075 () Bool)

(assert (=> b!7620499 (= e!4531360 (and tp!2225078 tp!2225075))))

(assert (= (and b!7619836 ((_ is ElementMatch!20307) (regTwo!41127 r!14126))) b!7620496))

(assert (= (and b!7619836 ((_ is Concat!29152) (regTwo!41127 r!14126))) b!7620497))

(assert (= (and b!7619836 ((_ is Star!20307) (regTwo!41127 r!14126))) b!7620498))

(assert (= (and b!7619836 ((_ is Union!20307) (regTwo!41127 r!14126))) b!7620499))

(declare-fun b_lambda!288993 () Bool)

(assert (= b_lambda!288991 (or b!7619841 b_lambda!288993)))

(declare-fun bs!1943284 () Bool)

(declare-fun d!2323159 () Bool)

(assert (= bs!1943284 (and d!2323159 b!7619841)))

(declare-fun res!3050929 () Bool)

(declare-fun e!4531361 () Bool)

(assert (=> bs!1943284 (=> (not res!3050929) (not e!4531361))))

(assert (=> bs!1943284 (= res!3050929 (= (++!17617 (_1!37891 lt!2656573) (_2!37891 lt!2656573)) s!9605))))

(assert (=> bs!1943284 (= (dynLambda!29914 lambda!468361 lt!2656573) e!4531361)))

(declare-fun b!7620500 () Bool)

(declare-fun res!3050930 () Bool)

(assert (=> b!7620500 (=> (not res!3050930) (not e!4531361))))

(assert (=> b!7620500 (= res!3050930 (matchR!9814 (reg!20636 r!14126) (_1!37891 lt!2656573)))))

(declare-fun b!7620501 () Bool)

(assert (=> b!7620501 (= e!4531361 (matchR!9814 r!14126 (_2!37891 lt!2656573)))))

(assert (= (and bs!1943284 res!3050929) b!7620500))

(assert (= (and b!7620500 res!3050930) b!7620501))

(declare-fun m!8152416 () Bool)

(assert (=> bs!1943284 m!8152416))

(declare-fun m!8152418 () Bool)

(assert (=> b!7620500 m!8152418))

(declare-fun m!8152420 () Bool)

(assert (=> b!7620501 m!8152420))

(assert (=> d!2323139 d!2323159))

(check-sat (not b!7620361) (not d!2323105) (not b!7620460) (not b!7620451) (not b!7620127) (not b!7620177) (not b!7620385) (not b!7620478) (not b!7620363) (not d!2323127) (not b!7620454) (not b!7620459) (not b!7620167) (not b!7620437) (not d!2323037) (not b!7620304) (not d!2323155) (not b!7620103) (not b!7620100) (not b!7620310) (not b!7620427) (not d!2323047) (not b!7620414) (not bm!699875) (not b!7620490) (not b!7620446) (not d!2323157) (not b!7620384) (not bm!699886) (not d!2323107) (not b!7620402) (not bm!699884) (not b!7620128) (not b!7620099) (not b!7620379) (not d!2323099) (not d!2323125) (not d!2323153) (not b!7620474) (not b!7620440) (not b!7620485) (not b!7620500) (not d!2323109) (not b!7620101) (not d!2323087) (not b!7620362) (not b!7620401) (not b!7620311) (not b!7620438) (not d!2323139) (not b!7620476) (not b!7620501) (not b!7620365) (not bm!699891) (not b!7620480) (not d!2323077) (not b!7620171) (not b!7620389) (not b!7620375) (not bm!699890) (not bm!699848) (not b!7620108) (not d!2323073) (not b!7620370) (not b!7620491) (not bm!699850) (not b!7619919) (not b!7620109) (not bm!699895) (not b!7620307) (not b!7620350) (not bm!699871) (not b!7620479) (not b!7620489) (not b!7620168) (not b!7620436) (not bm!699894) (not b!7620308) (not bm!699888) (not b_lambda!288993) (not b!7620495) (not b!7620498) (not b!7620416) (not bs!1943284) (not d!2323143) (not b!7620391) (not b!7620352) (not b!7620169) (not bm!699864) (not bm!699885) (not b!7620499) (not b!7620400) (not b!7620487) (not b!7619992) (not b!7620205) (not bm!699883) (not b!7620176) (not b!7619918) (not b!7620475) (not b!7620306) (not bm!699873) (not b!7620371) (not d!2323149) (not bm!699892) (not b!7620404) (not b!7620486) (not bm!699889) (not b!7620452) (not d!2323131) (not b!7620425) (not d!2323137) (not d!2323119) (not d!2323133) (not b!7620410) (not b!7620445) (not b!7620409) (not b!7620377) (not bm!699887) (not b!7620497) (not b!7620450) (not b!7620493) tp_is_empty!50969 (not bm!699893) (not b!7620494) (not b!7620376))
(check-sat)
