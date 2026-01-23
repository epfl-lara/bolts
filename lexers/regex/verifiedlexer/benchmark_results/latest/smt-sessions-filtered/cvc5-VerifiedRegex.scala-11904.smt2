; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667504 () Bool)

(assert start!667504)

(declare-fun b!6955875 () Bool)

(assert (=> b!6955875 true))

(assert (=> b!6955875 true))

(declare-fun bs!1858032 () Bool)

(declare-fun b!6955873 () Bool)

(assert (= bs!1858032 (and b!6955873 b!6955875)))

(declare-fun lambda!396794 () Int)

(declare-fun lambda!396793 () Int)

(assert (=> bs!1858032 (not (= lambda!396794 lambda!396793))))

(assert (=> b!6955873 true))

(assert (=> b!6955873 true))

(declare-fun b!6955870 () Bool)

(declare-fun e!4182766 () Bool)

(declare-fun tp!1917574 () Bool)

(assert (=> b!6955870 (= e!4182766 tp!1917574)))

(declare-fun b!6955871 () Bool)

(declare-fun e!4182767 () Bool)

(declare-fun lt!2478457 () Bool)

(declare-fun lt!2478456 () Bool)

(assert (=> b!6955871 (= e!4182767 (or (not lt!2478457) lt!2478456))))

(declare-fun b!6955872 () Bool)

(declare-fun res!2838200 () Bool)

(declare-fun e!4182765 () Bool)

(assert (=> b!6955872 (=> (not res!2838200) (not e!4182765))))

(declare-fun Exists!4050 (Int) Bool)

(assert (=> b!6955872 (= res!2838200 (not (Exists!4050 lambda!396793)))))

(declare-fun res!2838197 () Bool)

(assert (=> b!6955873 (=> (not res!2838197) (not e!4182765))))

(assert (=> b!6955873 (= res!2838197 (Exists!4050 lambda!396794))))

(declare-fun b!6955874 () Bool)

(declare-fun tp_is_empty!43333 () Bool)

(assert (=> b!6955874 (= e!4182766 tp_is_empty!43333)))

(declare-fun res!2838199 () Bool)

(assert (=> b!6955875 (=> (not res!2838199) (not e!4182765))))

(assert (=> b!6955875 (= res!2838199 (not (Exists!4050 lambda!396793)))))

(declare-fun b!6955876 () Bool)

(declare-fun res!2838198 () Bool)

(assert (=> b!6955876 (=> (not res!2838198) (not e!4182765))))

(declare-datatypes ((C!34378 0))(
  ( (C!34379 (val!26891 Int)) )
))
(declare-datatypes ((Regex!17054 0))(
  ( (ElementMatch!17054 (c!1289942 C!34378)) (Concat!25899 (regOne!34620 Regex!17054) (regTwo!34620 Regex!17054)) (EmptyExpr!17054) (Star!17054 (reg!17383 Regex!17054)) (EmptyLang!17054) (Union!17054 (regOne!34621 Regex!17054) (regTwo!34621 Regex!17054)) )
))
(declare-fun rInner!765 () Regex!17054)

(declare-fun nullable!6867 (Regex!17054) Bool)

(assert (=> b!6955876 (= res!2838198 (not (nullable!6867 rInner!765)))))

(declare-fun b!6955877 () Bool)

(assert (=> b!6955877 (= e!4182765 (not e!4182767))))

(declare-fun res!2838202 () Bool)

(assert (=> b!6955877 (=> res!2838202 e!4182767)))

(declare-datatypes ((List!66807 0))(
  ( (Nil!66683) (Cons!66683 (h!73131 C!34378) (t!380550 List!66807)) )
))
(declare-datatypes ((tuple2!67810 0))(
  ( (tuple2!67811 (_1!37208 List!66807) (_2!37208 List!66807)) )
))
(declare-fun lt!2478454 () tuple2!67810)

(declare-fun s!10388 () List!66807)

(declare-fun ++!15083 (List!66807 List!66807) List!66807)

(assert (=> b!6955877 (= res!2838202 (not (= (++!15083 (_1!37208 lt!2478454) (_2!37208 lt!2478454)) s!10388)))))

(declare-fun lt!2478458 () Regex!17054)

(declare-fun matchRSpec!4079 (Regex!17054 List!66807) Bool)

(assert (=> b!6955877 (= lt!2478456 (matchRSpec!4079 lt!2478458 (_2!37208 lt!2478454)))))

(declare-fun matchR!9164 (Regex!17054 List!66807) Bool)

(assert (=> b!6955877 (= lt!2478456 (matchR!9164 lt!2478458 (_2!37208 lt!2478454)))))

(declare-datatypes ((Unit!160776 0))(
  ( (Unit!160777) )
))
(declare-fun lt!2478455 () Unit!160776)

(declare-fun mainMatchTheorem!4073 (Regex!17054 List!66807) Unit!160776)

(assert (=> b!6955877 (= lt!2478455 (mainMatchTheorem!4073 lt!2478458 (_2!37208 lt!2478454)))))

(assert (=> b!6955877 (= lt!2478458 (Star!17054 rInner!765))))

(assert (=> b!6955877 (= lt!2478457 (matchRSpec!4079 rInner!765 (_1!37208 lt!2478454)))))

(assert (=> b!6955877 (= lt!2478457 (matchR!9164 rInner!765 (_1!37208 lt!2478454)))))

(declare-fun lt!2478459 () Unit!160776)

(assert (=> b!6955877 (= lt!2478459 (mainMatchTheorem!4073 rInner!765 (_1!37208 lt!2478454)))))

(declare-fun pickWitness!377 (Int) tuple2!67810)

(assert (=> b!6955877 (= lt!2478454 (pickWitness!377 lambda!396794))))

(declare-fun b!6955878 () Bool)

(declare-fun tp!1917570 () Bool)

(declare-fun tp!1917573 () Bool)

(assert (=> b!6955878 (= e!4182766 (and tp!1917570 tp!1917573))))

(declare-fun res!2838201 () Bool)

(assert (=> start!667504 (=> (not res!2838201) (not e!4182765))))

(declare-fun validRegex!8760 (Regex!17054) Bool)

(assert (=> start!667504 (= res!2838201 (validRegex!8760 rInner!765))))

(assert (=> start!667504 e!4182765))

(assert (=> start!667504 e!4182766))

(declare-fun e!4182768 () Bool)

(assert (=> start!667504 e!4182768))

(declare-fun b!6955879 () Bool)

(declare-fun tp!1917571 () Bool)

(assert (=> b!6955879 (= e!4182768 (and tp_is_empty!43333 tp!1917571))))

(declare-fun b!6955880 () Bool)

(declare-fun tp!1917572 () Bool)

(declare-fun tp!1917575 () Bool)

(assert (=> b!6955880 (= e!4182766 (and tp!1917572 tp!1917575))))

(assert (= (and start!667504 res!2838201) b!6955876))

(assert (= (and b!6955876 res!2838198) b!6955875))

(assert (= (and b!6955875 res!2838199) b!6955872))

(assert (= (and b!6955872 res!2838200) b!6955873))

(assert (= (and b!6955873 res!2838197) b!6955877))

(assert (= (and b!6955877 (not res!2838202)) b!6955871))

(assert (= (and start!667504 (is-ElementMatch!17054 rInner!765)) b!6955874))

(assert (= (and start!667504 (is-Concat!25899 rInner!765)) b!6955880))

(assert (= (and start!667504 (is-Star!17054 rInner!765)) b!6955870))

(assert (= (and start!667504 (is-Union!17054 rInner!765)) b!6955878))

(assert (= (and start!667504 (is-Cons!66683 s!10388)) b!6955879))

(declare-fun m!7654240 () Bool)

(assert (=> start!667504 m!7654240))

(declare-fun m!7654242 () Bool)

(assert (=> b!6955877 m!7654242))

(declare-fun m!7654244 () Bool)

(assert (=> b!6955877 m!7654244))

(declare-fun m!7654246 () Bool)

(assert (=> b!6955877 m!7654246))

(declare-fun m!7654248 () Bool)

(assert (=> b!6955877 m!7654248))

(declare-fun m!7654250 () Bool)

(assert (=> b!6955877 m!7654250))

(declare-fun m!7654252 () Bool)

(assert (=> b!6955877 m!7654252))

(declare-fun m!7654254 () Bool)

(assert (=> b!6955877 m!7654254))

(declare-fun m!7654256 () Bool)

(assert (=> b!6955877 m!7654256))

(declare-fun m!7654258 () Bool)

(assert (=> b!6955876 m!7654258))

(declare-fun m!7654260 () Bool)

(assert (=> b!6955875 m!7654260))

(assert (=> b!6955872 m!7654260))

(declare-fun m!7654262 () Bool)

(assert (=> b!6955873 m!7654262))

(push 1)

(assert (not b!6955872))

(assert (not start!667504))

(assert tp_is_empty!43333)

(assert (not b!6955873))

(assert (not b!6955880))

(assert (not b!6955876))

(assert (not b!6955878))

(assert (not b!6955879))

(assert (not b!6955875))

(assert (not b!6955870))

(assert (not b!6955877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169543 () Bool)

(declare-fun choose!51840 (Int) Bool)

(assert (=> d!2169543 (= (Exists!4050 lambda!396794) (choose!51840 lambda!396794))))

(declare-fun bs!1858034 () Bool)

(assert (= bs!1858034 d!2169543))

(declare-fun m!7654288 () Bool)

(assert (=> bs!1858034 m!7654288))

(assert (=> b!6955873 d!2169543))

(declare-fun bs!1858037 () Bool)

(declare-fun b!6955974 () Bool)

(assert (= bs!1858037 (and b!6955974 b!6955875)))

(declare-fun lambda!396809 () Int)

(assert (=> bs!1858037 (not (= lambda!396809 lambda!396793))))

(declare-fun bs!1858038 () Bool)

(assert (= bs!1858038 (and b!6955974 b!6955873)))

(assert (=> bs!1858038 (= (and (= (_2!37208 lt!2478454) s!10388) (= (reg!17383 lt!2478458) rInner!765) (= lt!2478458 (Star!17054 rInner!765))) (= lambda!396809 lambda!396794))))

(assert (=> b!6955974 true))

(assert (=> b!6955974 true))

(declare-fun bs!1858039 () Bool)

(declare-fun b!6955980 () Bool)

(assert (= bs!1858039 (and b!6955980 b!6955875)))

(declare-fun lambda!396810 () Int)

(assert (=> bs!1858039 (not (= lambda!396810 lambda!396793))))

(declare-fun bs!1858040 () Bool)

(assert (= bs!1858040 (and b!6955980 b!6955873)))

(assert (=> bs!1858040 (not (= lambda!396810 lambda!396794))))

(declare-fun bs!1858041 () Bool)

(assert (= bs!1858041 (and b!6955980 b!6955974)))

(assert (=> bs!1858041 (not (= lambda!396810 lambda!396809))))

(assert (=> b!6955980 true))

(assert (=> b!6955980 true))

(declare-fun call!631686 () Bool)

(declare-fun c!1289952 () Bool)

(declare-fun bm!631681 () Bool)

(assert (=> bm!631681 (= call!631686 (Exists!4050 (ite c!1289952 lambda!396809 lambda!396810)))))

(declare-fun e!4182810 () Bool)

(assert (=> b!6955974 (= e!4182810 call!631686)))

(declare-fun b!6955975 () Bool)

(declare-fun c!1289955 () Bool)

(assert (=> b!6955975 (= c!1289955 (is-Union!17054 lt!2478458))))

(declare-fun e!4182812 () Bool)

(declare-fun e!4182807 () Bool)

(assert (=> b!6955975 (= e!4182812 e!4182807)))

(declare-fun b!6955976 () Bool)

(declare-fun e!4182808 () Bool)

(assert (=> b!6955976 (= e!4182807 e!4182808)))

(assert (=> b!6955976 (= c!1289952 (is-Star!17054 lt!2478458))))

(declare-fun d!2169545 () Bool)

(declare-fun c!1289954 () Bool)

(assert (=> d!2169545 (= c!1289954 (is-EmptyExpr!17054 lt!2478458))))

(declare-fun e!4182811 () Bool)

(assert (=> d!2169545 (= (matchRSpec!4079 lt!2478458 (_2!37208 lt!2478454)) e!4182811)))

(declare-fun b!6955977 () Bool)

(assert (=> b!6955977 (= e!4182812 (= (_2!37208 lt!2478454) (Cons!66683 (c!1289942 lt!2478458) Nil!66683)))))

(declare-fun b!6955978 () Bool)

(declare-fun e!4182813 () Bool)

(assert (=> b!6955978 (= e!4182811 e!4182813)))

(declare-fun res!2838257 () Bool)

(assert (=> b!6955978 (= res!2838257 (not (is-EmptyLang!17054 lt!2478458)))))

(assert (=> b!6955978 (=> (not res!2838257) (not e!4182813))))

(declare-fun b!6955979 () Bool)

(declare-fun e!4182809 () Bool)

(assert (=> b!6955979 (= e!4182807 e!4182809)))

(declare-fun res!2838259 () Bool)

(assert (=> b!6955979 (= res!2838259 (matchRSpec!4079 (regOne!34621 lt!2478458) (_2!37208 lt!2478454)))))

(assert (=> b!6955979 (=> res!2838259 e!4182809)))

(assert (=> b!6955980 (= e!4182808 call!631686)))

(declare-fun b!6955981 () Bool)

(assert (=> b!6955981 (= e!4182809 (matchRSpec!4079 (regTwo!34621 lt!2478458) (_2!37208 lt!2478454)))))

(declare-fun b!6955982 () Bool)

(declare-fun res!2838258 () Bool)

(assert (=> b!6955982 (=> res!2838258 e!4182810)))

(declare-fun call!631687 () Bool)

(assert (=> b!6955982 (= res!2838258 call!631687)))

(assert (=> b!6955982 (= e!4182808 e!4182810)))

(declare-fun b!6955983 () Bool)

(declare-fun c!1289953 () Bool)

(assert (=> b!6955983 (= c!1289953 (is-ElementMatch!17054 lt!2478458))))

(assert (=> b!6955983 (= e!4182813 e!4182812)))

(declare-fun bm!631682 () Bool)

(declare-fun isEmpty!38919 (List!66807) Bool)

(assert (=> bm!631682 (= call!631687 (isEmpty!38919 (_2!37208 lt!2478454)))))

(declare-fun b!6955984 () Bool)

(assert (=> b!6955984 (= e!4182811 call!631687)))

(assert (= (and d!2169545 c!1289954) b!6955984))

(assert (= (and d!2169545 (not c!1289954)) b!6955978))

(assert (= (and b!6955978 res!2838257) b!6955983))

(assert (= (and b!6955983 c!1289953) b!6955977))

(assert (= (and b!6955983 (not c!1289953)) b!6955975))

(assert (= (and b!6955975 c!1289955) b!6955979))

(assert (= (and b!6955975 (not c!1289955)) b!6955976))

(assert (= (and b!6955979 (not res!2838259)) b!6955981))

(assert (= (and b!6955976 c!1289952) b!6955982))

(assert (= (and b!6955976 (not c!1289952)) b!6955980))

(assert (= (and b!6955982 (not res!2838258)) b!6955974))

(assert (= (or b!6955974 b!6955980) bm!631681))

(assert (= (or b!6955984 b!6955982) bm!631682))

(declare-fun m!7654296 () Bool)

(assert (=> bm!631681 m!7654296))

(declare-fun m!7654298 () Bool)

(assert (=> b!6955979 m!7654298))

(declare-fun m!7654300 () Bool)

(assert (=> b!6955981 m!7654300))

(declare-fun m!7654302 () Bool)

(assert (=> bm!631682 m!7654302))

(assert (=> b!6955877 d!2169545))

(declare-fun b!6956035 () Bool)

(declare-fun res!2838283 () Bool)

(declare-fun e!4182843 () Bool)

(assert (=> b!6956035 (=> res!2838283 e!4182843)))

(declare-fun e!4182844 () Bool)

(assert (=> b!6956035 (= res!2838283 e!4182844)))

(declare-fun res!2838282 () Bool)

(assert (=> b!6956035 (=> (not res!2838282) (not e!4182844))))

(declare-fun lt!2478483 () Bool)

(assert (=> b!6956035 (= res!2838282 lt!2478483)))

(declare-fun b!6956036 () Bool)

(declare-fun e!4182846 () Bool)

(declare-fun call!631690 () Bool)

(assert (=> b!6956036 (= e!4182846 (= lt!2478483 call!631690))))

(declare-fun b!6956037 () Bool)

(declare-fun head!13948 (List!66807) C!34378)

(assert (=> b!6956037 (= e!4182844 (= (head!13948 (_1!37208 lt!2478454)) (c!1289942 rInner!765)))))

(declare-fun b!6956038 () Bool)

(declare-fun e!4182847 () Bool)

(assert (=> b!6956038 (= e!4182846 e!4182847)))

(declare-fun c!1289970 () Bool)

(assert (=> b!6956038 (= c!1289970 (is-EmptyLang!17054 rInner!765))))

(declare-fun b!6956039 () Bool)

(declare-fun res!2838287 () Bool)

(assert (=> b!6956039 (=> (not res!2838287) (not e!4182844))))

(assert (=> b!6956039 (= res!2838287 (not call!631690))))

(declare-fun b!6956040 () Bool)

(declare-fun e!4182842 () Bool)

(assert (=> b!6956040 (= e!4182842 (nullable!6867 rInner!765))))

(declare-fun b!6956041 () Bool)

(declare-fun res!2838285 () Bool)

(assert (=> b!6956041 (=> res!2838285 e!4182843)))

(assert (=> b!6956041 (= res!2838285 (not (is-ElementMatch!17054 rInner!765)))))

(assert (=> b!6956041 (= e!4182847 e!4182843)))

(declare-fun d!2169553 () Bool)

(assert (=> d!2169553 e!4182846))

(declare-fun c!1289971 () Bool)

(assert (=> d!2169553 (= c!1289971 (is-EmptyExpr!17054 rInner!765))))

(assert (=> d!2169553 (= lt!2478483 e!4182842)))

(declare-fun c!1289972 () Bool)

(assert (=> d!2169553 (= c!1289972 (isEmpty!38919 (_1!37208 lt!2478454)))))

(assert (=> d!2169553 (validRegex!8760 rInner!765)))

(assert (=> d!2169553 (= (matchR!9164 rInner!765 (_1!37208 lt!2478454)) lt!2478483)))

(declare-fun b!6956042 () Bool)

(declare-fun res!2838289 () Bool)

(declare-fun e!4182845 () Bool)

(assert (=> b!6956042 (=> res!2838289 e!4182845)))

(declare-fun tail!13000 (List!66807) List!66807)

(assert (=> b!6956042 (= res!2838289 (not (isEmpty!38919 (tail!13000 (_1!37208 lt!2478454)))))))

(declare-fun b!6956043 () Bool)

(assert (=> b!6956043 (= e!4182847 (not lt!2478483))))

(declare-fun b!6956044 () Bool)

(declare-fun e!4182848 () Bool)

(assert (=> b!6956044 (= e!4182843 e!4182848)))

(declare-fun res!2838288 () Bool)

(assert (=> b!6956044 (=> (not res!2838288) (not e!4182848))))

(assert (=> b!6956044 (= res!2838288 (not lt!2478483))))

(declare-fun b!6956045 () Bool)

(assert (=> b!6956045 (= e!4182845 (not (= (head!13948 (_1!37208 lt!2478454)) (c!1289942 rInner!765))))))

(declare-fun b!6956046 () Bool)

(declare-fun res!2838286 () Bool)

(assert (=> b!6956046 (=> (not res!2838286) (not e!4182844))))

(assert (=> b!6956046 (= res!2838286 (isEmpty!38919 (tail!13000 (_1!37208 lt!2478454))))))

(declare-fun bm!631685 () Bool)

(assert (=> bm!631685 (= call!631690 (isEmpty!38919 (_1!37208 lt!2478454)))))

(declare-fun b!6956047 () Bool)

(assert (=> b!6956047 (= e!4182848 e!4182845)))

(declare-fun res!2838284 () Bool)

(assert (=> b!6956047 (=> res!2838284 e!4182845)))

(assert (=> b!6956047 (= res!2838284 call!631690)))

(declare-fun b!6956048 () Bool)

(declare-fun derivativeStep!5495 (Regex!17054 C!34378) Regex!17054)

(assert (=> b!6956048 (= e!4182842 (matchR!9164 (derivativeStep!5495 rInner!765 (head!13948 (_1!37208 lt!2478454))) (tail!13000 (_1!37208 lt!2478454))))))

(assert (= (and d!2169553 c!1289972) b!6956040))

(assert (= (and d!2169553 (not c!1289972)) b!6956048))

(assert (= (and d!2169553 c!1289971) b!6956036))

(assert (= (and d!2169553 (not c!1289971)) b!6956038))

(assert (= (and b!6956038 c!1289970) b!6956043))

(assert (= (and b!6956038 (not c!1289970)) b!6956041))

(assert (= (and b!6956041 (not res!2838285)) b!6956035))

(assert (= (and b!6956035 res!2838282) b!6956039))

(assert (= (and b!6956039 res!2838287) b!6956046))

(assert (= (and b!6956046 res!2838286) b!6956037))

(assert (= (and b!6956035 (not res!2838283)) b!6956044))

(assert (= (and b!6956044 res!2838288) b!6956047))

(assert (= (and b!6956047 (not res!2838284)) b!6956042))

(assert (= (and b!6956042 (not res!2838289)) b!6956045))

(assert (= (or b!6956036 b!6956047 b!6956039) bm!631685))

(declare-fun m!7654304 () Bool)

(assert (=> b!6956046 m!7654304))

(assert (=> b!6956046 m!7654304))

(declare-fun m!7654306 () Bool)

(assert (=> b!6956046 m!7654306))

(declare-fun m!7654308 () Bool)

(assert (=> b!6956048 m!7654308))

(assert (=> b!6956048 m!7654308))

(declare-fun m!7654310 () Bool)

(assert (=> b!6956048 m!7654310))

(assert (=> b!6956048 m!7654304))

(assert (=> b!6956048 m!7654310))

(assert (=> b!6956048 m!7654304))

(declare-fun m!7654312 () Bool)

(assert (=> b!6956048 m!7654312))

(declare-fun m!7654314 () Bool)

(assert (=> bm!631685 m!7654314))

(assert (=> b!6956045 m!7654308))

(assert (=> d!2169553 m!7654314))

(assert (=> d!2169553 m!7654240))

(assert (=> b!6956042 m!7654304))

(assert (=> b!6956042 m!7654304))

(assert (=> b!6956042 m!7654306))

(assert (=> b!6956040 m!7654258))

(assert (=> b!6956037 m!7654308))

(assert (=> b!6955877 d!2169553))

(declare-fun bs!1858042 () Bool)

(declare-fun b!6956049 () Bool)

(assert (= bs!1858042 (and b!6956049 b!6955875)))

(declare-fun lambda!396812 () Int)

(assert (=> bs!1858042 (not (= lambda!396812 lambda!396793))))

(declare-fun bs!1858043 () Bool)

(assert (= bs!1858043 (and b!6956049 b!6955873)))

(assert (=> bs!1858043 (= (and (= (_1!37208 lt!2478454) s!10388) (= (reg!17383 rInner!765) rInner!765) (= rInner!765 (Star!17054 rInner!765))) (= lambda!396812 lambda!396794))))

(declare-fun bs!1858044 () Bool)

(assert (= bs!1858044 (and b!6956049 b!6955974)))

(assert (=> bs!1858044 (= (and (= (_1!37208 lt!2478454) (_2!37208 lt!2478454)) (= (reg!17383 rInner!765) (reg!17383 lt!2478458)) (= rInner!765 lt!2478458)) (= lambda!396812 lambda!396809))))

(declare-fun bs!1858045 () Bool)

(assert (= bs!1858045 (and b!6956049 b!6955980)))

(assert (=> bs!1858045 (not (= lambda!396812 lambda!396810))))

(assert (=> b!6956049 true))

(assert (=> b!6956049 true))

(declare-fun bs!1858046 () Bool)

(declare-fun b!6956055 () Bool)

(assert (= bs!1858046 (and b!6956055 b!6955974)))

(declare-fun lambda!396814 () Int)

(assert (=> bs!1858046 (not (= lambda!396814 lambda!396809))))

(declare-fun bs!1858047 () Bool)

(assert (= bs!1858047 (and b!6956055 b!6956049)))

(assert (=> bs!1858047 (not (= lambda!396814 lambda!396812))))

(declare-fun bs!1858048 () Bool)

(assert (= bs!1858048 (and b!6956055 b!6955980)))

(assert (=> bs!1858048 (= (and (= (_1!37208 lt!2478454) (_2!37208 lt!2478454)) (= (regOne!34620 rInner!765) (regOne!34620 lt!2478458)) (= (regTwo!34620 rInner!765) (regTwo!34620 lt!2478458))) (= lambda!396814 lambda!396810))))

(declare-fun bs!1858049 () Bool)

(assert (= bs!1858049 (and b!6956055 b!6955875)))

(assert (=> bs!1858049 (not (= lambda!396814 lambda!396793))))

(declare-fun bs!1858050 () Bool)

(assert (= bs!1858050 (and b!6956055 b!6955873)))

(assert (=> bs!1858050 (not (= lambda!396814 lambda!396794))))

(assert (=> b!6956055 true))

(assert (=> b!6956055 true))

(declare-fun c!1289973 () Bool)

(declare-fun call!631691 () Bool)

(declare-fun bm!631686 () Bool)

(assert (=> bm!631686 (= call!631691 (Exists!4050 (ite c!1289973 lambda!396812 lambda!396814)))))

(declare-fun e!4182852 () Bool)

(assert (=> b!6956049 (= e!4182852 call!631691)))

(declare-fun b!6956050 () Bool)

(declare-fun c!1289976 () Bool)

(assert (=> b!6956050 (= c!1289976 (is-Union!17054 rInner!765))))

(declare-fun e!4182854 () Bool)

(declare-fun e!4182849 () Bool)

(assert (=> b!6956050 (= e!4182854 e!4182849)))

(declare-fun b!6956051 () Bool)

(declare-fun e!4182850 () Bool)

(assert (=> b!6956051 (= e!4182849 e!4182850)))

(assert (=> b!6956051 (= c!1289973 (is-Star!17054 rInner!765))))

(declare-fun d!2169555 () Bool)

(declare-fun c!1289975 () Bool)

(assert (=> d!2169555 (= c!1289975 (is-EmptyExpr!17054 rInner!765))))

(declare-fun e!4182853 () Bool)

(assert (=> d!2169555 (= (matchRSpec!4079 rInner!765 (_1!37208 lt!2478454)) e!4182853)))

(declare-fun b!6956052 () Bool)

(assert (=> b!6956052 (= e!4182854 (= (_1!37208 lt!2478454) (Cons!66683 (c!1289942 rInner!765) Nil!66683)))))

(declare-fun b!6956053 () Bool)

(declare-fun e!4182855 () Bool)

(assert (=> b!6956053 (= e!4182853 e!4182855)))

(declare-fun res!2838290 () Bool)

(assert (=> b!6956053 (= res!2838290 (not (is-EmptyLang!17054 rInner!765)))))

(assert (=> b!6956053 (=> (not res!2838290) (not e!4182855))))

(declare-fun b!6956054 () Bool)

(declare-fun e!4182851 () Bool)

(assert (=> b!6956054 (= e!4182849 e!4182851)))

(declare-fun res!2838292 () Bool)

(assert (=> b!6956054 (= res!2838292 (matchRSpec!4079 (regOne!34621 rInner!765) (_1!37208 lt!2478454)))))

(assert (=> b!6956054 (=> res!2838292 e!4182851)))

(assert (=> b!6956055 (= e!4182850 call!631691)))

(declare-fun b!6956056 () Bool)

(assert (=> b!6956056 (= e!4182851 (matchRSpec!4079 (regTwo!34621 rInner!765) (_1!37208 lt!2478454)))))

(declare-fun b!6956057 () Bool)

(declare-fun res!2838291 () Bool)

(assert (=> b!6956057 (=> res!2838291 e!4182852)))

(declare-fun call!631692 () Bool)

(assert (=> b!6956057 (= res!2838291 call!631692)))

(assert (=> b!6956057 (= e!4182850 e!4182852)))

(declare-fun b!6956058 () Bool)

(declare-fun c!1289974 () Bool)

(assert (=> b!6956058 (= c!1289974 (is-ElementMatch!17054 rInner!765))))

(assert (=> b!6956058 (= e!4182855 e!4182854)))

(declare-fun bm!631687 () Bool)

(assert (=> bm!631687 (= call!631692 (isEmpty!38919 (_1!37208 lt!2478454)))))

(declare-fun b!6956059 () Bool)

(assert (=> b!6956059 (= e!4182853 call!631692)))

(assert (= (and d!2169555 c!1289975) b!6956059))

(assert (= (and d!2169555 (not c!1289975)) b!6956053))

(assert (= (and b!6956053 res!2838290) b!6956058))

(assert (= (and b!6956058 c!1289974) b!6956052))

(assert (= (and b!6956058 (not c!1289974)) b!6956050))

(assert (= (and b!6956050 c!1289976) b!6956054))

(assert (= (and b!6956050 (not c!1289976)) b!6956051))

(assert (= (and b!6956054 (not res!2838292)) b!6956056))

(assert (= (and b!6956051 c!1289973) b!6956057))

(assert (= (and b!6956051 (not c!1289973)) b!6956055))

(assert (= (and b!6956057 (not res!2838291)) b!6956049))

(assert (= (or b!6956049 b!6956055) bm!631686))

(assert (= (or b!6956059 b!6956057) bm!631687))

(declare-fun m!7654316 () Bool)

(assert (=> bm!631686 m!7654316))

(declare-fun m!7654318 () Bool)

(assert (=> b!6956054 m!7654318))

(declare-fun m!7654320 () Bool)

(assert (=> b!6956056 m!7654320))

(assert (=> bm!631687 m!7654314))

(assert (=> b!6955877 d!2169555))

(declare-fun d!2169557 () Bool)

(declare-fun lt!2478486 () tuple2!67810)

(declare-fun dynLambda!26594 (Int tuple2!67810) Bool)

(assert (=> d!2169557 (dynLambda!26594 lambda!396794 lt!2478486)))

(declare-fun choose!51841 (Int) tuple2!67810)

(assert (=> d!2169557 (= lt!2478486 (choose!51841 lambda!396794))))

(assert (=> d!2169557 (Exists!4050 lambda!396794)))

(assert (=> d!2169557 (= (pickWitness!377 lambda!396794) lt!2478486)))

(declare-fun b_lambda!260459 () Bool)

(assert (=> (not b_lambda!260459) (not d!2169557)))

(declare-fun bs!1858051 () Bool)

(assert (= bs!1858051 d!2169557))

(declare-fun m!7654322 () Bool)

(assert (=> bs!1858051 m!7654322))

(declare-fun m!7654324 () Bool)

(assert (=> bs!1858051 m!7654324))

(assert (=> bs!1858051 m!7654262))

(assert (=> b!6955877 d!2169557))

(declare-fun d!2169559 () Bool)

(assert (=> d!2169559 (= (matchR!9164 rInner!765 (_1!37208 lt!2478454)) (matchRSpec!4079 rInner!765 (_1!37208 lt!2478454)))))

(declare-fun lt!2478489 () Unit!160776)

(declare-fun choose!51842 (Regex!17054 List!66807) Unit!160776)

(assert (=> d!2169559 (= lt!2478489 (choose!51842 rInner!765 (_1!37208 lt!2478454)))))

(assert (=> d!2169559 (validRegex!8760 rInner!765)))

(assert (=> d!2169559 (= (mainMatchTheorem!4073 rInner!765 (_1!37208 lt!2478454)) lt!2478489)))

(declare-fun bs!1858052 () Bool)

(assert (= bs!1858052 d!2169559))

(assert (=> bs!1858052 m!7654246))

(assert (=> bs!1858052 m!7654242))

(declare-fun m!7654326 () Bool)

(assert (=> bs!1858052 m!7654326))

(assert (=> bs!1858052 m!7654240))

(assert (=> b!6955877 d!2169559))

(declare-fun b!6956079 () Bool)

(declare-fun e!4182864 () List!66807)

(assert (=> b!6956079 (= e!4182864 (Cons!66683 (h!73131 (_1!37208 lt!2478454)) (++!15083 (t!380550 (_1!37208 lt!2478454)) (_2!37208 lt!2478454))))))

(declare-fun b!6956081 () Bool)

(declare-fun e!4182865 () Bool)

(declare-fun lt!2478492 () List!66807)

(assert (=> b!6956081 (= e!4182865 (or (not (= (_2!37208 lt!2478454) Nil!66683)) (= lt!2478492 (_1!37208 lt!2478454))))))

(declare-fun d!2169561 () Bool)

(assert (=> d!2169561 e!4182865))

(declare-fun res!2838307 () Bool)

(assert (=> d!2169561 (=> (not res!2838307) (not e!4182865))))

(declare-fun content!13149 (List!66807) (Set C!34378))

(assert (=> d!2169561 (= res!2838307 (= (content!13149 lt!2478492) (set.union (content!13149 (_1!37208 lt!2478454)) (content!13149 (_2!37208 lt!2478454)))))))

(assert (=> d!2169561 (= lt!2478492 e!4182864)))

(declare-fun c!1289979 () Bool)

(assert (=> d!2169561 (= c!1289979 (is-Nil!66683 (_1!37208 lt!2478454)))))

(assert (=> d!2169561 (= (++!15083 (_1!37208 lt!2478454) (_2!37208 lt!2478454)) lt!2478492)))

(declare-fun b!6956080 () Bool)

(declare-fun res!2838308 () Bool)

(assert (=> b!6956080 (=> (not res!2838308) (not e!4182865))))

(declare-fun size!40846 (List!66807) Int)

(assert (=> b!6956080 (= res!2838308 (= (size!40846 lt!2478492) (+ (size!40846 (_1!37208 lt!2478454)) (size!40846 (_2!37208 lt!2478454)))))))

(declare-fun b!6956078 () Bool)

(assert (=> b!6956078 (= e!4182864 (_2!37208 lt!2478454))))

(assert (= (and d!2169561 c!1289979) b!6956078))

(assert (= (and d!2169561 (not c!1289979)) b!6956079))

(assert (= (and d!2169561 res!2838307) b!6956080))

(assert (= (and b!6956080 res!2838308) b!6956081))

(declare-fun m!7654328 () Bool)

(assert (=> b!6956079 m!7654328))

(declare-fun m!7654330 () Bool)

(assert (=> d!2169561 m!7654330))

(declare-fun m!7654332 () Bool)

(assert (=> d!2169561 m!7654332))

(declare-fun m!7654334 () Bool)

(assert (=> d!2169561 m!7654334))

(declare-fun m!7654336 () Bool)

(assert (=> b!6956080 m!7654336))

(declare-fun m!7654338 () Bool)

(assert (=> b!6956080 m!7654338))

(declare-fun m!7654340 () Bool)

(assert (=> b!6956080 m!7654340))

(assert (=> b!6955877 d!2169561))

(declare-fun d!2169563 () Bool)

(assert (=> d!2169563 (= (matchR!9164 lt!2478458 (_2!37208 lt!2478454)) (matchRSpec!4079 lt!2478458 (_2!37208 lt!2478454)))))

(declare-fun lt!2478493 () Unit!160776)

(assert (=> d!2169563 (= lt!2478493 (choose!51842 lt!2478458 (_2!37208 lt!2478454)))))

(assert (=> d!2169563 (validRegex!8760 lt!2478458)))

(assert (=> d!2169563 (= (mainMatchTheorem!4073 lt!2478458 (_2!37208 lt!2478454)) lt!2478493)))

(declare-fun bs!1858053 () Bool)

(assert (= bs!1858053 d!2169563))

(assert (=> bs!1858053 m!7654256))

(assert (=> bs!1858053 m!7654252))

(declare-fun m!7654342 () Bool)

(assert (=> bs!1858053 m!7654342))

(declare-fun m!7654344 () Bool)

(assert (=> bs!1858053 m!7654344))

(assert (=> b!6955877 d!2169563))

(declare-fun b!6956082 () Bool)

(declare-fun res!2838310 () Bool)

(declare-fun e!4182867 () Bool)

(assert (=> b!6956082 (=> res!2838310 e!4182867)))

(declare-fun e!4182868 () Bool)

(assert (=> b!6956082 (= res!2838310 e!4182868)))

(declare-fun res!2838309 () Bool)

(assert (=> b!6956082 (=> (not res!2838309) (not e!4182868))))

(declare-fun lt!2478494 () Bool)

(assert (=> b!6956082 (= res!2838309 lt!2478494)))

(declare-fun b!6956083 () Bool)

(declare-fun e!4182870 () Bool)

(declare-fun call!631697 () Bool)

(assert (=> b!6956083 (= e!4182870 (= lt!2478494 call!631697))))

(declare-fun b!6956084 () Bool)

(assert (=> b!6956084 (= e!4182868 (= (head!13948 (_2!37208 lt!2478454)) (c!1289942 lt!2478458)))))

(declare-fun b!6956085 () Bool)

(declare-fun e!4182871 () Bool)

(assert (=> b!6956085 (= e!4182870 e!4182871)))

(declare-fun c!1289980 () Bool)

(assert (=> b!6956085 (= c!1289980 (is-EmptyLang!17054 lt!2478458))))

(declare-fun b!6956086 () Bool)

(declare-fun res!2838314 () Bool)

(assert (=> b!6956086 (=> (not res!2838314) (not e!4182868))))

(assert (=> b!6956086 (= res!2838314 (not call!631697))))

(declare-fun b!6956087 () Bool)

(declare-fun e!4182866 () Bool)

(assert (=> b!6956087 (= e!4182866 (nullable!6867 lt!2478458))))

(declare-fun b!6956088 () Bool)

(declare-fun res!2838312 () Bool)

(assert (=> b!6956088 (=> res!2838312 e!4182867)))

(assert (=> b!6956088 (= res!2838312 (not (is-ElementMatch!17054 lt!2478458)))))

(assert (=> b!6956088 (= e!4182871 e!4182867)))

(declare-fun d!2169565 () Bool)

(assert (=> d!2169565 e!4182870))

(declare-fun c!1289981 () Bool)

(assert (=> d!2169565 (= c!1289981 (is-EmptyExpr!17054 lt!2478458))))

(assert (=> d!2169565 (= lt!2478494 e!4182866)))

(declare-fun c!1289982 () Bool)

(assert (=> d!2169565 (= c!1289982 (isEmpty!38919 (_2!37208 lt!2478454)))))

(assert (=> d!2169565 (validRegex!8760 lt!2478458)))

(assert (=> d!2169565 (= (matchR!9164 lt!2478458 (_2!37208 lt!2478454)) lt!2478494)))

(declare-fun b!6956089 () Bool)

(declare-fun res!2838316 () Bool)

(declare-fun e!4182869 () Bool)

(assert (=> b!6956089 (=> res!2838316 e!4182869)))

(assert (=> b!6956089 (= res!2838316 (not (isEmpty!38919 (tail!13000 (_2!37208 lt!2478454)))))))

(declare-fun b!6956090 () Bool)

(assert (=> b!6956090 (= e!4182871 (not lt!2478494))))

(declare-fun b!6956091 () Bool)

(declare-fun e!4182872 () Bool)

(assert (=> b!6956091 (= e!4182867 e!4182872)))

(declare-fun res!2838315 () Bool)

(assert (=> b!6956091 (=> (not res!2838315) (not e!4182872))))

(assert (=> b!6956091 (= res!2838315 (not lt!2478494))))

(declare-fun b!6956092 () Bool)

(assert (=> b!6956092 (= e!4182869 (not (= (head!13948 (_2!37208 lt!2478454)) (c!1289942 lt!2478458))))))

(declare-fun b!6956093 () Bool)

(declare-fun res!2838313 () Bool)

(assert (=> b!6956093 (=> (not res!2838313) (not e!4182868))))

(assert (=> b!6956093 (= res!2838313 (isEmpty!38919 (tail!13000 (_2!37208 lt!2478454))))))

(declare-fun bm!631692 () Bool)

(assert (=> bm!631692 (= call!631697 (isEmpty!38919 (_2!37208 lt!2478454)))))

(declare-fun b!6956094 () Bool)

(assert (=> b!6956094 (= e!4182872 e!4182869)))

(declare-fun res!2838311 () Bool)

(assert (=> b!6956094 (=> res!2838311 e!4182869)))

(assert (=> b!6956094 (= res!2838311 call!631697)))

(declare-fun b!6956095 () Bool)

(assert (=> b!6956095 (= e!4182866 (matchR!9164 (derivativeStep!5495 lt!2478458 (head!13948 (_2!37208 lt!2478454))) (tail!13000 (_2!37208 lt!2478454))))))

(assert (= (and d!2169565 c!1289982) b!6956087))

(assert (= (and d!2169565 (not c!1289982)) b!6956095))

(assert (= (and d!2169565 c!1289981) b!6956083))

(assert (= (and d!2169565 (not c!1289981)) b!6956085))

(assert (= (and b!6956085 c!1289980) b!6956090))

(assert (= (and b!6956085 (not c!1289980)) b!6956088))

(assert (= (and b!6956088 (not res!2838312)) b!6956082))

(assert (= (and b!6956082 res!2838309) b!6956086))

(assert (= (and b!6956086 res!2838314) b!6956093))

(assert (= (and b!6956093 res!2838313) b!6956084))

(assert (= (and b!6956082 (not res!2838310)) b!6956091))

(assert (= (and b!6956091 res!2838315) b!6956094))

(assert (= (and b!6956094 (not res!2838311)) b!6956089))

(assert (= (and b!6956089 (not res!2838316)) b!6956092))

(assert (= (or b!6956083 b!6956094 b!6956086) bm!631692))

(declare-fun m!7654346 () Bool)

(assert (=> b!6956093 m!7654346))

(assert (=> b!6956093 m!7654346))

(declare-fun m!7654348 () Bool)

(assert (=> b!6956093 m!7654348))

(declare-fun m!7654350 () Bool)

(assert (=> b!6956095 m!7654350))

(assert (=> b!6956095 m!7654350))

(declare-fun m!7654352 () Bool)

(assert (=> b!6956095 m!7654352))

(assert (=> b!6956095 m!7654346))

(assert (=> b!6956095 m!7654352))

(assert (=> b!6956095 m!7654346))

(declare-fun m!7654354 () Bool)

(assert (=> b!6956095 m!7654354))

(assert (=> bm!631692 m!7654302))

(assert (=> b!6956092 m!7654350))

(assert (=> d!2169565 m!7654302))

(assert (=> d!2169565 m!7654344))

(assert (=> b!6956089 m!7654346))

(assert (=> b!6956089 m!7654346))

(assert (=> b!6956089 m!7654348))

(declare-fun m!7654356 () Bool)

(assert (=> b!6956087 m!7654356))

(assert (=> b!6956084 m!7654350))

(assert (=> b!6955877 d!2169565))

(declare-fun d!2169567 () Bool)

(assert (=> d!2169567 (= (Exists!4050 lambda!396793) (choose!51840 lambda!396793))))

(declare-fun bs!1858054 () Bool)

(assert (= bs!1858054 d!2169567))

(declare-fun m!7654358 () Bool)

(assert (=> bs!1858054 m!7654358))

(assert (=> b!6955872 d!2169567))

(declare-fun bm!631701 () Bool)

(declare-fun call!631707 () Bool)

(declare-fun c!1289991 () Bool)

(assert (=> bm!631701 (= call!631707 (validRegex!8760 (ite c!1289991 (regOne!34621 rInner!765) (regTwo!34620 rInner!765))))))

(declare-fun b!6956125 () Bool)

(declare-fun e!4182897 () Bool)

(declare-fun call!631708 () Bool)

(assert (=> b!6956125 (= e!4182897 call!631708)))

(declare-fun b!6956126 () Bool)

(declare-fun res!2838332 () Bool)

(declare-fun e!4182895 () Bool)

(assert (=> b!6956126 (=> res!2838332 e!4182895)))

(assert (=> b!6956126 (= res!2838332 (not (is-Concat!25899 rInner!765)))))

(declare-fun e!4182900 () Bool)

(assert (=> b!6956126 (= e!4182900 e!4182895)))

(declare-fun b!6956127 () Bool)

(declare-fun e!4182894 () Bool)

(assert (=> b!6956127 (= e!4182894 e!4182900)))

(assert (=> b!6956127 (= c!1289991 (is-Union!17054 rInner!765))))

(declare-fun b!6956128 () Bool)

(declare-fun res!2838334 () Bool)

(declare-fun e!4182899 () Bool)

(assert (=> b!6956128 (=> (not res!2838334) (not e!4182899))))

(assert (=> b!6956128 (= res!2838334 call!631707)))

(assert (=> b!6956128 (= e!4182900 e!4182899)))

(declare-fun b!6956129 () Bool)

(declare-fun e!4182898 () Bool)

(assert (=> b!6956129 (= e!4182898 e!4182894)))

(declare-fun c!1289992 () Bool)

(assert (=> b!6956129 (= c!1289992 (is-Star!17054 rInner!765))))

(declare-fun bm!631702 () Bool)

(assert (=> bm!631702 (= call!631708 (validRegex!8760 (ite c!1289992 (reg!17383 rInner!765) (ite c!1289991 (regTwo!34621 rInner!765) (regOne!34620 rInner!765)))))))

(declare-fun b!6956131 () Bool)

(declare-fun e!4182896 () Bool)

(assert (=> b!6956131 (= e!4182895 e!4182896)))

(declare-fun res!2838330 () Bool)

(assert (=> b!6956131 (=> (not res!2838330) (not e!4182896))))

(declare-fun call!631706 () Bool)

(assert (=> b!6956131 (= res!2838330 call!631706)))

(declare-fun bm!631703 () Bool)

(assert (=> bm!631703 (= call!631706 call!631708)))

(declare-fun b!6956132 () Bool)

(assert (=> b!6956132 (= e!4182899 call!631706)))

(declare-fun b!6956133 () Bool)

(assert (=> b!6956133 (= e!4182894 e!4182897)))

(declare-fun res!2838331 () Bool)

(assert (=> b!6956133 (= res!2838331 (not (nullable!6867 (reg!17383 rInner!765))))))

(assert (=> b!6956133 (=> (not res!2838331) (not e!4182897))))

(declare-fun b!6956130 () Bool)

(assert (=> b!6956130 (= e!4182896 call!631707)))

(declare-fun d!2169569 () Bool)

(declare-fun res!2838333 () Bool)

(assert (=> d!2169569 (=> res!2838333 e!4182898)))

(assert (=> d!2169569 (= res!2838333 (is-ElementMatch!17054 rInner!765))))

(assert (=> d!2169569 (= (validRegex!8760 rInner!765) e!4182898)))

(assert (= (and d!2169569 (not res!2838333)) b!6956129))

(assert (= (and b!6956129 c!1289992) b!6956133))

(assert (= (and b!6956129 (not c!1289992)) b!6956127))

(assert (= (and b!6956133 res!2838331) b!6956125))

(assert (= (and b!6956127 c!1289991) b!6956128))

(assert (= (and b!6956127 (not c!1289991)) b!6956126))

(assert (= (and b!6956128 res!2838334) b!6956132))

(assert (= (and b!6956126 (not res!2838332)) b!6956131))

(assert (= (and b!6956131 res!2838330) b!6956130))

(assert (= (or b!6956128 b!6956130) bm!631701))

(assert (= (or b!6956132 b!6956131) bm!631703))

(assert (= (or b!6956125 bm!631703) bm!631702))

(declare-fun m!7654360 () Bool)

(assert (=> bm!631701 m!7654360))

(declare-fun m!7654362 () Bool)

(assert (=> bm!631702 m!7654362))

(declare-fun m!7654364 () Bool)

(assert (=> b!6956133 m!7654364))

(assert (=> start!667504 d!2169569))

(assert (=> b!6955875 d!2169567))

(declare-fun d!2169571 () Bool)

(declare-fun nullableFct!2577 (Regex!17054) Bool)

(assert (=> d!2169571 (= (nullable!6867 rInner!765) (nullableFct!2577 rInner!765))))

(declare-fun bs!1858057 () Bool)

(assert (= bs!1858057 d!2169571))

(declare-fun m!7654366 () Bool)

(assert (=> bs!1858057 m!7654366))

(assert (=> b!6955876 d!2169571))

(declare-fun b!6956146 () Bool)

(declare-fun e!4182903 () Bool)

(declare-fun tp!1917607 () Bool)

(assert (=> b!6956146 (= e!4182903 tp!1917607)))

(assert (=> b!6955878 (= tp!1917570 e!4182903)))

(declare-fun b!6956147 () Bool)

(declare-fun tp!1917604 () Bool)

(declare-fun tp!1917606 () Bool)

(assert (=> b!6956147 (= e!4182903 (and tp!1917604 tp!1917606))))

(declare-fun b!6956145 () Bool)

(declare-fun tp!1917608 () Bool)

(declare-fun tp!1917605 () Bool)

(assert (=> b!6956145 (= e!4182903 (and tp!1917608 tp!1917605))))

(declare-fun b!6956144 () Bool)

(assert (=> b!6956144 (= e!4182903 tp_is_empty!43333)))

(assert (= (and b!6955878 (is-ElementMatch!17054 (regOne!34621 rInner!765))) b!6956144))

(assert (= (and b!6955878 (is-Concat!25899 (regOne!34621 rInner!765))) b!6956145))

(assert (= (and b!6955878 (is-Star!17054 (regOne!34621 rInner!765))) b!6956146))

(assert (= (and b!6955878 (is-Union!17054 (regOne!34621 rInner!765))) b!6956147))

(declare-fun b!6956150 () Bool)

(declare-fun e!4182904 () Bool)

(declare-fun tp!1917612 () Bool)

(assert (=> b!6956150 (= e!4182904 tp!1917612)))

(assert (=> b!6955878 (= tp!1917573 e!4182904)))

(declare-fun b!6956151 () Bool)

(declare-fun tp!1917609 () Bool)

(declare-fun tp!1917611 () Bool)

(assert (=> b!6956151 (= e!4182904 (and tp!1917609 tp!1917611))))

(declare-fun b!6956149 () Bool)

(declare-fun tp!1917613 () Bool)

(declare-fun tp!1917610 () Bool)

(assert (=> b!6956149 (= e!4182904 (and tp!1917613 tp!1917610))))

(declare-fun b!6956148 () Bool)

(assert (=> b!6956148 (= e!4182904 tp_is_empty!43333)))

(assert (= (and b!6955878 (is-ElementMatch!17054 (regTwo!34621 rInner!765))) b!6956148))

(assert (= (and b!6955878 (is-Concat!25899 (regTwo!34621 rInner!765))) b!6956149))

(assert (= (and b!6955878 (is-Star!17054 (regTwo!34621 rInner!765))) b!6956150))

(assert (= (and b!6955878 (is-Union!17054 (regTwo!34621 rInner!765))) b!6956151))

(declare-fun b!6956154 () Bool)

(declare-fun e!4182905 () Bool)

(declare-fun tp!1917617 () Bool)

(assert (=> b!6956154 (= e!4182905 tp!1917617)))

(assert (=> b!6955870 (= tp!1917574 e!4182905)))

(declare-fun b!6956155 () Bool)

(declare-fun tp!1917614 () Bool)

(declare-fun tp!1917616 () Bool)

(assert (=> b!6956155 (= e!4182905 (and tp!1917614 tp!1917616))))

(declare-fun b!6956153 () Bool)

(declare-fun tp!1917618 () Bool)

(declare-fun tp!1917615 () Bool)

(assert (=> b!6956153 (= e!4182905 (and tp!1917618 tp!1917615))))

(declare-fun b!6956152 () Bool)

(assert (=> b!6956152 (= e!4182905 tp_is_empty!43333)))

(assert (= (and b!6955870 (is-ElementMatch!17054 (reg!17383 rInner!765))) b!6956152))

(assert (= (and b!6955870 (is-Concat!25899 (reg!17383 rInner!765))) b!6956153))

(assert (= (and b!6955870 (is-Star!17054 (reg!17383 rInner!765))) b!6956154))

(assert (= (and b!6955870 (is-Union!17054 (reg!17383 rInner!765))) b!6956155))

(declare-fun b!6956160 () Bool)

(declare-fun e!4182908 () Bool)

(declare-fun tp!1917621 () Bool)

(assert (=> b!6956160 (= e!4182908 (and tp_is_empty!43333 tp!1917621))))

(assert (=> b!6955879 (= tp!1917571 e!4182908)))

(assert (= (and b!6955879 (is-Cons!66683 (t!380550 s!10388))) b!6956160))

(declare-fun b!6956163 () Bool)

(declare-fun e!4182909 () Bool)

(declare-fun tp!1917625 () Bool)

(assert (=> b!6956163 (= e!4182909 tp!1917625)))

(assert (=> b!6955880 (= tp!1917572 e!4182909)))

(declare-fun b!6956164 () Bool)

(declare-fun tp!1917622 () Bool)

(declare-fun tp!1917624 () Bool)

(assert (=> b!6956164 (= e!4182909 (and tp!1917622 tp!1917624))))

(declare-fun b!6956162 () Bool)

(declare-fun tp!1917626 () Bool)

(declare-fun tp!1917623 () Bool)

(assert (=> b!6956162 (= e!4182909 (and tp!1917626 tp!1917623))))

(declare-fun b!6956161 () Bool)

(assert (=> b!6956161 (= e!4182909 tp_is_empty!43333)))

(assert (= (and b!6955880 (is-ElementMatch!17054 (regOne!34620 rInner!765))) b!6956161))

(assert (= (and b!6955880 (is-Concat!25899 (regOne!34620 rInner!765))) b!6956162))

(assert (= (and b!6955880 (is-Star!17054 (regOne!34620 rInner!765))) b!6956163))

(assert (= (and b!6955880 (is-Union!17054 (regOne!34620 rInner!765))) b!6956164))

(declare-fun b!6956167 () Bool)

(declare-fun e!4182910 () Bool)

(declare-fun tp!1917630 () Bool)

(assert (=> b!6956167 (= e!4182910 tp!1917630)))

(assert (=> b!6955880 (= tp!1917575 e!4182910)))

(declare-fun b!6956168 () Bool)

(declare-fun tp!1917627 () Bool)

(declare-fun tp!1917629 () Bool)

(assert (=> b!6956168 (= e!4182910 (and tp!1917627 tp!1917629))))

(declare-fun b!6956166 () Bool)

(declare-fun tp!1917631 () Bool)

(declare-fun tp!1917628 () Bool)

(assert (=> b!6956166 (= e!4182910 (and tp!1917631 tp!1917628))))

(declare-fun b!6956165 () Bool)

(assert (=> b!6956165 (= e!4182910 tp_is_empty!43333)))

(assert (= (and b!6955880 (is-ElementMatch!17054 (regTwo!34620 rInner!765))) b!6956165))

(assert (= (and b!6955880 (is-Concat!25899 (regTwo!34620 rInner!765))) b!6956166))

(assert (= (and b!6955880 (is-Star!17054 (regTwo!34620 rInner!765))) b!6956167))

(assert (= (and b!6955880 (is-Union!17054 (regTwo!34620 rInner!765))) b!6956168))

(declare-fun b_lambda!260461 () Bool)

(assert (= b_lambda!260459 (or b!6955873 b_lambda!260461)))

(declare-fun bs!1858061 () Bool)

(declare-fun d!2169573 () Bool)

(assert (= bs!1858061 (and d!2169573 b!6955873)))

(declare-fun res!2838335 () Bool)

(declare-fun e!4182911 () Bool)

(assert (=> bs!1858061 (=> (not res!2838335) (not e!4182911))))

(assert (=> bs!1858061 (= res!2838335 (= (++!15083 (_1!37208 lt!2478486) (_2!37208 lt!2478486)) s!10388))))

(assert (=> bs!1858061 (= (dynLambda!26594 lambda!396794 lt!2478486) e!4182911)))

(declare-fun b!6956169 () Bool)

(declare-fun res!2838336 () Bool)

(assert (=> b!6956169 (=> (not res!2838336) (not e!4182911))))

(assert (=> b!6956169 (= res!2838336 (not (isEmpty!38919 (_1!37208 lt!2478486))))))

(declare-fun b!6956170 () Bool)

(declare-fun res!2838337 () Bool)

(assert (=> b!6956170 (=> (not res!2838337) (not e!4182911))))

(assert (=> b!6956170 (= res!2838337 (matchRSpec!4079 rInner!765 (_1!37208 lt!2478486)))))

(declare-fun b!6956171 () Bool)

(assert (=> b!6956171 (= e!4182911 (matchRSpec!4079 (Star!17054 rInner!765) (_2!37208 lt!2478486)))))

(assert (= (and bs!1858061 res!2838335) b!6956169))

(assert (= (and b!6956169 res!2838336) b!6956170))

(assert (= (and b!6956170 res!2838337) b!6956171))

(declare-fun m!7654376 () Bool)

(assert (=> bs!1858061 m!7654376))

(declare-fun m!7654378 () Bool)

(assert (=> b!6956169 m!7654378))

(declare-fun m!7654380 () Bool)

(assert (=> b!6956170 m!7654380))

(declare-fun m!7654382 () Bool)

(assert (=> b!6956171 m!7654382))

(assert (=> d!2169557 d!2169573))

(push 1)

(assert (not b!6956169))

(assert (not b!6956145))

(assert (not b!6956164))

(assert (not bm!631685))

(assert (not d!2169543))

(assert (not d!2169557))

(assert (not b!6956168))

(assert (not b!6956087))

(assert (not b!6956166))

(assert (not b!6956160))

(assert (not b!6955981))

(assert (not b!6956095))

(assert (not bm!631682))

(assert (not d!2169553))

(assert (not b!6956171))

(assert (not b!6956150))

(assert (not b!6956155))

(assert (not b!6956056))

(assert (not b!6955979))

(assert (not b!6956042))

(assert (not d!2169559))

(assert (not bm!631687))

(assert (not b!6956048))

(assert (not b!6956162))

(assert (not b!6956146))

(assert (not b!6956149))

(assert (not bm!631701))

(assert (not d!2169565))

(assert (not b!6956092))

(assert (not b!6956079))

(assert tp_is_empty!43333)

(assert (not b!6956167))

(assert (not b!6956046))

(assert (not bm!631681))

(assert (not bm!631692))

(assert (not b!6956045))

(assert (not d!2169561))

(assert (not b!6956054))

(assert (not bm!631702))

(assert (not b!6956080))

(assert (not b!6956151))

(assert (not d!2169571))

(assert (not b!6956153))

(assert (not bm!631686))

(assert (not b!6956147))

(assert (not b!6956133))

(assert (not b!6956037))

(assert (not b!6956089))

(assert (not b!6956163))

(assert (not d!2169567))

(assert (not d!2169563))

(assert (not b_lambda!260461))

(assert (not b!6956040))

(assert (not b!6956170))

(assert (not b!6956084))

(assert (not bs!1858061))

(assert (not b!6956154))

(assert (not b!6956093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

