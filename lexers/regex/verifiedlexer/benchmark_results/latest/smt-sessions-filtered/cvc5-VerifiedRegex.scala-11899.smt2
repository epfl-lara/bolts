; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667356 () Bool)

(assert start!667356)

(declare-fun b!6953914 () Bool)

(assert (=> b!6953914 true))

(assert (=> b!6953914 true))

(declare-fun b!6953912 () Bool)

(declare-fun e!4181814 () Bool)

(declare-fun tp!1917086 () Bool)

(declare-fun tp!1917087 () Bool)

(assert (=> b!6953912 (= e!4181814 (and tp!1917086 tp!1917087))))

(declare-fun b!6953913 () Bool)

(declare-fun tp!1917088 () Bool)

(assert (=> b!6953913 (= e!4181814 tp!1917088)))

(declare-fun res!2837303 () Bool)

(declare-fun e!4181816 () Bool)

(assert (=> b!6953914 (=> (not res!2837303) (not e!4181816))))

(declare-fun lambda!396655 () Int)

(declare-fun Exists!4040 (Int) Bool)

(assert (=> b!6953914 (= res!2837303 (Exists!4040 lambda!396655))))

(declare-fun res!2837301 () Bool)

(assert (=> start!667356 (=> (not res!2837301) (not e!4181816))))

(declare-datatypes ((C!34358 0))(
  ( (C!34359 (val!26881 Int)) )
))
(declare-datatypes ((Regex!17044 0))(
  ( (ElementMatch!17044 (c!1289636 C!34358)) (Concat!25889 (regOne!34600 Regex!17044) (regTwo!34600 Regex!17044)) (EmptyExpr!17044) (Star!17044 (reg!17373 Regex!17044)) (EmptyLang!17044) (Union!17044 (regOne!34601 Regex!17044) (regTwo!34601 Regex!17044)) )
))
(declare-fun rInner!765 () Regex!17044)

(declare-fun validRegex!8750 (Regex!17044) Bool)

(assert (=> start!667356 (= res!2837301 (validRegex!8750 rInner!765))))

(assert (=> start!667356 e!4181816))

(assert (=> start!667356 e!4181814))

(declare-fun e!4181815 () Bool)

(assert (=> start!667356 e!4181815))

(declare-fun b!6953915 () Bool)

(declare-fun tp_is_empty!43313 () Bool)

(assert (=> b!6953915 (= e!4181814 tp_is_empty!43313)))

(declare-fun b!6953916 () Bool)

(declare-fun tp!1917089 () Bool)

(assert (=> b!6953916 (= e!4181815 (and tp_is_empty!43313 tp!1917089))))

(declare-fun b!6953917 () Bool)

(declare-fun tp!1917090 () Bool)

(declare-fun tp!1917091 () Bool)

(assert (=> b!6953917 (= e!4181814 (and tp!1917090 tp!1917091))))

(declare-fun b!6953918 () Bool)

(declare-fun e!4181813 () Bool)

(assert (=> b!6953918 (= e!4181816 e!4181813)))

(declare-fun res!2837304 () Bool)

(assert (=> b!6953918 (=> (not res!2837304) (not e!4181813))))

(declare-datatypes ((List!66797 0))(
  ( (Nil!66673) (Cons!66673 (h!73121 C!34358) (t!380540 List!66797)) )
))
(declare-datatypes ((tuple2!67794 0))(
  ( (tuple2!67795 (_1!37200 List!66797) (_2!37200 List!66797)) )
))
(declare-fun lt!2478223 () tuple2!67794)

(declare-fun s!10388 () List!66797)

(declare-fun ++!15075 (List!66797 List!66797) List!66797)

(assert (=> b!6953918 (= res!2837304 (= (++!15075 (_1!37200 lt!2478223) (_2!37200 lt!2478223)) s!10388))))

(declare-fun pickWitness!369 (Int) tuple2!67794)

(assert (=> b!6953918 (= lt!2478223 (pickWitness!369 lambda!396655))))

(declare-fun b!6953919 () Bool)

(declare-fun res!2837302 () Bool)

(assert (=> b!6953919 (=> (not res!2837302) (not e!4181816))))

(declare-fun nullable!6857 (Regex!17044) Bool)

(assert (=> b!6953919 (= res!2837302 (not (nullable!6857 rInner!765)))))

(declare-fun b!6953920 () Bool)

(declare-fun lt!2478222 () Bool)

(assert (=> b!6953920 (= e!4181813 (not lt!2478222))))

(declare-fun lt!2478224 () Regex!17044)

(declare-fun matchR!9156 (Regex!17044 List!66797) Bool)

(declare-fun matchRSpec!4071 (Regex!17044 List!66797) Bool)

(assert (=> b!6953920 (= (matchR!9156 lt!2478224 (_2!37200 lt!2478223)) (matchRSpec!4071 lt!2478224 (_2!37200 lt!2478223)))))

(declare-datatypes ((Unit!160760 0))(
  ( (Unit!160761) )
))
(declare-fun lt!2478220 () Unit!160760)

(declare-fun mainMatchTheorem!4065 (Regex!17044 List!66797) Unit!160760)

(assert (=> b!6953920 (= lt!2478220 (mainMatchTheorem!4065 lt!2478224 (_2!37200 lt!2478223)))))

(assert (=> b!6953920 (= lt!2478224 (Star!17044 rInner!765))))

(assert (=> b!6953920 (= lt!2478222 (matchRSpec!4071 rInner!765 (_1!37200 lt!2478223)))))

(assert (=> b!6953920 (= lt!2478222 (matchR!9156 rInner!765 (_1!37200 lt!2478223)))))

(declare-fun lt!2478221 () Unit!160760)

(assert (=> b!6953920 (= lt!2478221 (mainMatchTheorem!4065 rInner!765 (_1!37200 lt!2478223)))))

(assert (= (and start!667356 res!2837301) b!6953919))

(assert (= (and b!6953919 res!2837302) b!6953914))

(assert (= (and b!6953914 res!2837303) b!6953918))

(assert (= (and b!6953918 res!2837304) b!6953920))

(assert (= (and start!667356 (is-ElementMatch!17044 rInner!765)) b!6953915))

(assert (= (and start!667356 (is-Concat!25889 rInner!765)) b!6953912))

(assert (= (and start!667356 (is-Star!17044 rInner!765)) b!6953913))

(assert (= (and start!667356 (is-Union!17044 rInner!765)) b!6953917))

(assert (= (and start!667356 (is-Cons!66673 s!10388)) b!6953916))

(declare-fun m!7653404 () Bool)

(assert (=> b!6953914 m!7653404))

(declare-fun m!7653406 () Bool)

(assert (=> b!6953919 m!7653406))

(declare-fun m!7653408 () Bool)

(assert (=> start!667356 m!7653408))

(declare-fun m!7653410 () Bool)

(assert (=> b!6953918 m!7653410))

(declare-fun m!7653412 () Bool)

(assert (=> b!6953918 m!7653412))

(declare-fun m!7653414 () Bool)

(assert (=> b!6953920 m!7653414))

(declare-fun m!7653416 () Bool)

(assert (=> b!6953920 m!7653416))

(declare-fun m!7653418 () Bool)

(assert (=> b!6953920 m!7653418))

(declare-fun m!7653420 () Bool)

(assert (=> b!6953920 m!7653420))

(declare-fun m!7653422 () Bool)

(assert (=> b!6953920 m!7653422))

(declare-fun m!7653424 () Bool)

(assert (=> b!6953920 m!7653424))

(push 1)

(assert (not b!6953920))

(assert tp_is_empty!43313)

(assert (not b!6953917))

(assert (not b!6953913))

(assert (not b!6953918))

(assert (not start!667356))

(assert (not b!6953912))

(assert (not b!6953919))

(assert (not b!6953916))

(assert (not b!6953914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6953982 () Bool)

(declare-fun e!4181849 () Bool)

(declare-fun e!4181851 () Bool)

(assert (=> b!6953982 (= e!4181849 e!4181851)))

(declare-fun res!2837338 () Bool)

(assert (=> b!6953982 (= res!2837338 (not (nullable!6857 (reg!17373 rInner!765))))))

(assert (=> b!6953982 (=> (not res!2837338) (not e!4181851))))

(declare-fun b!6953983 () Bool)

(declare-fun e!4181850 () Bool)

(assert (=> b!6953983 (= e!4181850 e!4181849)))

(declare-fun c!1289642 () Bool)

(assert (=> b!6953983 (= c!1289642 (is-Star!17044 rInner!765))))

(declare-fun b!6953984 () Bool)

(declare-fun e!4181853 () Bool)

(declare-fun e!4181848 () Bool)

(assert (=> b!6953984 (= e!4181853 e!4181848)))

(declare-fun res!2837339 () Bool)

(assert (=> b!6953984 (=> (not res!2837339) (not e!4181848))))

(declare-fun call!631520 () Bool)

(assert (=> b!6953984 (= res!2837339 call!631520)))

(declare-fun d!2169338 () Bool)

(declare-fun res!2837336 () Bool)

(assert (=> d!2169338 (=> res!2837336 e!4181850)))

(assert (=> d!2169338 (= res!2837336 (is-ElementMatch!17044 rInner!765))))

(assert (=> d!2169338 (= (validRegex!8750 rInner!765) e!4181850)))

(declare-fun b!6953985 () Bool)

(declare-fun call!631521 () Bool)

(assert (=> b!6953985 (= e!4181851 call!631521)))

(declare-fun b!6953986 () Bool)

(declare-fun e!4181852 () Bool)

(assert (=> b!6953986 (= e!4181849 e!4181852)))

(declare-fun c!1289643 () Bool)

(assert (=> b!6953986 (= c!1289643 (is-Union!17044 rInner!765))))

(declare-fun bm!631515 () Bool)

(declare-fun call!631522 () Bool)

(assert (=> bm!631515 (= call!631522 (validRegex!8750 (ite c!1289643 (regOne!34601 rInner!765) (regTwo!34600 rInner!765))))))

(declare-fun bm!631516 () Bool)

(assert (=> bm!631516 (= call!631521 (validRegex!8750 (ite c!1289642 (reg!17373 rInner!765) (ite c!1289643 (regTwo!34601 rInner!765) (regOne!34600 rInner!765)))))))

(declare-fun b!6953987 () Bool)

(declare-fun res!2837335 () Bool)

(declare-fun e!4181847 () Bool)

(assert (=> b!6953987 (=> (not res!2837335) (not e!4181847))))

(assert (=> b!6953987 (= res!2837335 call!631522)))

(assert (=> b!6953987 (= e!4181852 e!4181847)))

(declare-fun bm!631517 () Bool)

(assert (=> bm!631517 (= call!631520 call!631521)))

(declare-fun b!6953988 () Bool)

(assert (=> b!6953988 (= e!4181848 call!631522)))

(declare-fun b!6953989 () Bool)

(declare-fun res!2837337 () Bool)

(assert (=> b!6953989 (=> res!2837337 e!4181853)))

(assert (=> b!6953989 (= res!2837337 (not (is-Concat!25889 rInner!765)))))

(assert (=> b!6953989 (= e!4181852 e!4181853)))

(declare-fun b!6953990 () Bool)

(assert (=> b!6953990 (= e!4181847 call!631520)))

(assert (= (and d!2169338 (not res!2837336)) b!6953983))

(assert (= (and b!6953983 c!1289642) b!6953982))

(assert (= (and b!6953983 (not c!1289642)) b!6953986))

(assert (= (and b!6953982 res!2837338) b!6953985))

(assert (= (and b!6953986 c!1289643) b!6953987))

(assert (= (and b!6953986 (not c!1289643)) b!6953989))

(assert (= (and b!6953987 res!2837335) b!6953990))

(assert (= (and b!6953989 (not res!2837337)) b!6953984))

(assert (= (and b!6953984 res!2837339) b!6953988))

(assert (= (or b!6953987 b!6953988) bm!631515))

(assert (= (or b!6953990 b!6953984) bm!631517))

(assert (= (or b!6953985 bm!631517) bm!631516))

(declare-fun m!7653448 () Bool)

(assert (=> b!6953982 m!7653448))

(declare-fun m!7653450 () Bool)

(assert (=> bm!631515 m!7653450))

(declare-fun m!7653452 () Bool)

(assert (=> bm!631516 m!7653452))

(assert (=> start!667356 d!2169338))

(declare-fun d!2169340 () Bool)

(declare-fun e!4181858 () Bool)

(assert (=> d!2169340 e!4181858))

(declare-fun res!2837345 () Bool)

(assert (=> d!2169340 (=> (not res!2837345) (not e!4181858))))

(declare-fun lt!2478242 () List!66797)

(declare-fun content!13141 (List!66797) (Set C!34358))

(assert (=> d!2169340 (= res!2837345 (= (content!13141 lt!2478242) (set.union (content!13141 (_1!37200 lt!2478223)) (content!13141 (_2!37200 lt!2478223)))))))

(declare-fun e!4181859 () List!66797)

(assert (=> d!2169340 (= lt!2478242 e!4181859)))

(declare-fun c!1289646 () Bool)

(assert (=> d!2169340 (= c!1289646 (is-Nil!66673 (_1!37200 lt!2478223)))))

(assert (=> d!2169340 (= (++!15075 (_1!37200 lt!2478223) (_2!37200 lt!2478223)) lt!2478242)))

(declare-fun b!6953999 () Bool)

(assert (=> b!6953999 (= e!4181859 (_2!37200 lt!2478223))))

(declare-fun b!6954002 () Bool)

(assert (=> b!6954002 (= e!4181858 (or (not (= (_2!37200 lt!2478223) Nil!66673)) (= lt!2478242 (_1!37200 lt!2478223))))))

(declare-fun b!6954000 () Bool)

(assert (=> b!6954000 (= e!4181859 (Cons!66673 (h!73121 (_1!37200 lt!2478223)) (++!15075 (t!380540 (_1!37200 lt!2478223)) (_2!37200 lt!2478223))))))

(declare-fun b!6954001 () Bool)

(declare-fun res!2837344 () Bool)

(assert (=> b!6954001 (=> (not res!2837344) (not e!4181858))))

(declare-fun size!40838 (List!66797) Int)

(assert (=> b!6954001 (= res!2837344 (= (size!40838 lt!2478242) (+ (size!40838 (_1!37200 lt!2478223)) (size!40838 (_2!37200 lt!2478223)))))))

(assert (= (and d!2169340 c!1289646) b!6953999))

(assert (= (and d!2169340 (not c!1289646)) b!6954000))

(assert (= (and d!2169340 res!2837345) b!6954001))

(assert (= (and b!6954001 res!2837344) b!6954002))

(declare-fun m!7653454 () Bool)

(assert (=> d!2169340 m!7653454))

(declare-fun m!7653456 () Bool)

(assert (=> d!2169340 m!7653456))

(declare-fun m!7653458 () Bool)

(assert (=> d!2169340 m!7653458))

(declare-fun m!7653460 () Bool)

(assert (=> b!6954000 m!7653460))

(declare-fun m!7653462 () Bool)

(assert (=> b!6954001 m!7653462))

(declare-fun m!7653464 () Bool)

(assert (=> b!6954001 m!7653464))

(declare-fun m!7653466 () Bool)

(assert (=> b!6954001 m!7653466))

(assert (=> b!6953918 d!2169340))

(declare-fun d!2169344 () Bool)

(declare-fun lt!2478245 () tuple2!67794)

(declare-fun dynLambda!26586 (Int tuple2!67794) Bool)

(assert (=> d!2169344 (dynLambda!26586 lambda!396655 lt!2478245)))

(declare-fun choose!51818 (Int) tuple2!67794)

(assert (=> d!2169344 (= lt!2478245 (choose!51818 lambda!396655))))

(assert (=> d!2169344 (Exists!4040 lambda!396655)))

(assert (=> d!2169344 (= (pickWitness!369 lambda!396655) lt!2478245)))

(declare-fun b_lambda!260425 () Bool)

(assert (=> (not b_lambda!260425) (not d!2169344)))

(declare-fun bs!1857870 () Bool)

(assert (= bs!1857870 d!2169344))

(declare-fun m!7653468 () Bool)

(assert (=> bs!1857870 m!7653468))

(declare-fun m!7653470 () Bool)

(assert (=> bs!1857870 m!7653470))

(assert (=> bs!1857870 m!7653404))

(assert (=> b!6953918 d!2169344))

(declare-fun b!6954058 () Bool)

(declare-fun e!4181896 () Bool)

(declare-fun e!4181901 () Bool)

(assert (=> b!6954058 (= e!4181896 e!4181901)))

(declare-fun res!2837384 () Bool)

(assert (=> b!6954058 (=> (not res!2837384) (not e!4181901))))

(declare-fun lt!2478248 () Bool)

(assert (=> b!6954058 (= res!2837384 (not lt!2478248))))

(declare-fun b!6954059 () Bool)

(declare-fun res!2837378 () Bool)

(assert (=> b!6954059 (=> res!2837378 e!4181896)))

(declare-fun e!4181898 () Bool)

(assert (=> b!6954059 (= res!2837378 e!4181898)))

(declare-fun res!2837383 () Bool)

(assert (=> b!6954059 (=> (not res!2837383) (not e!4181898))))

(assert (=> b!6954059 (= res!2837383 lt!2478248)))

(declare-fun b!6954060 () Bool)

(declare-fun e!4181900 () Bool)

(assert (=> b!6954060 (= e!4181900 (nullable!6857 lt!2478224))))

(declare-fun b!6954061 () Bool)

(declare-fun e!4181895 () Bool)

(assert (=> b!6954061 (= e!4181895 (not lt!2478248))))

(declare-fun b!6954062 () Bool)

(declare-fun e!4181897 () Bool)

(assert (=> b!6954062 (= e!4181901 e!4181897)))

(declare-fun res!2837377 () Bool)

(assert (=> b!6954062 (=> res!2837377 e!4181897)))

(declare-fun call!631534 () Bool)

(assert (=> b!6954062 (= res!2837377 call!631534)))

(declare-fun b!6954064 () Bool)

(declare-fun head!13940 (List!66797) C!34358)

(assert (=> b!6954064 (= e!4181897 (not (= (head!13940 (_2!37200 lt!2478223)) (c!1289636 lt!2478224))))))

(declare-fun b!6954065 () Bool)

(declare-fun e!4181899 () Bool)

(assert (=> b!6954065 (= e!4181899 (= lt!2478248 call!631534))))

(declare-fun b!6954066 () Bool)

(declare-fun res!2837379 () Bool)

(assert (=> b!6954066 (=> res!2837379 e!4181897)))

(declare-fun isEmpty!38911 (List!66797) Bool)

(declare-fun tail!12992 (List!66797) List!66797)

(assert (=> b!6954066 (= res!2837379 (not (isEmpty!38911 (tail!12992 (_2!37200 lt!2478223)))))))

(declare-fun b!6954067 () Bool)

(assert (=> b!6954067 (= e!4181899 e!4181895)))

(declare-fun c!1289660 () Bool)

(assert (=> b!6954067 (= c!1289660 (is-EmptyLang!17044 lt!2478224))))

(declare-fun b!6954068 () Bool)

(declare-fun derivativeStep!5487 (Regex!17044 C!34358) Regex!17044)

(assert (=> b!6954068 (= e!4181900 (matchR!9156 (derivativeStep!5487 lt!2478224 (head!13940 (_2!37200 lt!2478223))) (tail!12992 (_2!37200 lt!2478223))))))

(declare-fun b!6954069 () Bool)

(declare-fun res!2837381 () Bool)

(assert (=> b!6954069 (=> res!2837381 e!4181896)))

(assert (=> b!6954069 (= res!2837381 (not (is-ElementMatch!17044 lt!2478224)))))

(assert (=> b!6954069 (= e!4181895 e!4181896)))

(declare-fun b!6954070 () Bool)

(declare-fun res!2837382 () Bool)

(assert (=> b!6954070 (=> (not res!2837382) (not e!4181898))))

(assert (=> b!6954070 (= res!2837382 (isEmpty!38911 (tail!12992 (_2!37200 lt!2478223))))))

(declare-fun b!6954063 () Bool)

(declare-fun res!2837380 () Bool)

(assert (=> b!6954063 (=> (not res!2837380) (not e!4181898))))

(assert (=> b!6954063 (= res!2837380 (not call!631534))))

(declare-fun d!2169346 () Bool)

(assert (=> d!2169346 e!4181899))

(declare-fun c!1289659 () Bool)

(assert (=> d!2169346 (= c!1289659 (is-EmptyExpr!17044 lt!2478224))))

(assert (=> d!2169346 (= lt!2478248 e!4181900)))

(declare-fun c!1289661 () Bool)

(assert (=> d!2169346 (= c!1289661 (isEmpty!38911 (_2!37200 lt!2478223)))))

(assert (=> d!2169346 (validRegex!8750 lt!2478224)))

(assert (=> d!2169346 (= (matchR!9156 lt!2478224 (_2!37200 lt!2478223)) lt!2478248)))

(declare-fun bm!631529 () Bool)

(assert (=> bm!631529 (= call!631534 (isEmpty!38911 (_2!37200 lt!2478223)))))

(declare-fun b!6954071 () Bool)

(assert (=> b!6954071 (= e!4181898 (= (head!13940 (_2!37200 lt!2478223)) (c!1289636 lt!2478224)))))

(assert (= (and d!2169346 c!1289661) b!6954060))

(assert (= (and d!2169346 (not c!1289661)) b!6954068))

(assert (= (and d!2169346 c!1289659) b!6954065))

(assert (= (and d!2169346 (not c!1289659)) b!6954067))

(assert (= (and b!6954067 c!1289660) b!6954061))

(assert (= (and b!6954067 (not c!1289660)) b!6954069))

(assert (= (and b!6954069 (not res!2837381)) b!6954059))

(assert (= (and b!6954059 res!2837383) b!6954063))

(assert (= (and b!6954063 res!2837380) b!6954070))

(assert (= (and b!6954070 res!2837382) b!6954071))

(assert (= (and b!6954059 (not res!2837378)) b!6954058))

(assert (= (and b!6954058 res!2837384) b!6954062))

(assert (= (and b!6954062 (not res!2837377)) b!6954066))

(assert (= (and b!6954066 (not res!2837379)) b!6954064))

(assert (= (or b!6954065 b!6954062 b!6954063) bm!631529))

(declare-fun m!7653480 () Bool)

(assert (=> b!6954070 m!7653480))

(assert (=> b!6954070 m!7653480))

(declare-fun m!7653482 () Bool)

(assert (=> b!6954070 m!7653482))

(declare-fun m!7653484 () Bool)

(assert (=> b!6954068 m!7653484))

(assert (=> b!6954068 m!7653484))

(declare-fun m!7653486 () Bool)

(assert (=> b!6954068 m!7653486))

(assert (=> b!6954068 m!7653480))

(assert (=> b!6954068 m!7653486))

(assert (=> b!6954068 m!7653480))

(declare-fun m!7653488 () Bool)

(assert (=> b!6954068 m!7653488))

(assert (=> b!6954066 m!7653480))

(assert (=> b!6954066 m!7653480))

(assert (=> b!6954066 m!7653482))

(assert (=> b!6954064 m!7653484))

(declare-fun m!7653490 () Bool)

(assert (=> b!6954060 m!7653490))

(assert (=> b!6954071 m!7653484))

(declare-fun m!7653492 () Bool)

(assert (=> bm!631529 m!7653492))

(assert (=> d!2169346 m!7653492))

(declare-fun m!7653494 () Bool)

(assert (=> d!2169346 m!7653494))

(assert (=> b!6953920 d!2169346))

(declare-fun bs!1857872 () Bool)

(declare-fun b!6954120 () Bool)

(assert (= bs!1857872 (and b!6954120 b!6953914)))

(declare-fun lambda!396665 () Int)

(assert (=> bs!1857872 (not (= lambda!396665 lambda!396655))))

(assert (=> b!6954120 true))

(assert (=> b!6954120 true))

(declare-fun bs!1857874 () Bool)

(declare-fun b!6954116 () Bool)

(assert (= bs!1857874 (and b!6954116 b!6953914)))

(declare-fun lambda!396666 () Int)

(assert (=> bs!1857874 (not (= lambda!396666 lambda!396655))))

(declare-fun bs!1857875 () Bool)

(assert (= bs!1857875 (and b!6954116 b!6954120)))

(assert (=> bs!1857875 (not (= lambda!396666 lambda!396665))))

(assert (=> b!6954116 true))

(assert (=> b!6954116 true))

(declare-fun d!2169352 () Bool)

(declare-fun c!1289673 () Bool)

(assert (=> d!2169352 (= c!1289673 (is-EmptyExpr!17044 lt!2478224))))

(declare-fun e!4181928 () Bool)

(assert (=> d!2169352 (= (matchRSpec!4071 lt!2478224 (_2!37200 lt!2478223)) e!4181928)))

(declare-fun e!4181927 () Bool)

(declare-fun call!631540 () Bool)

(assert (=> b!6954116 (= e!4181927 call!631540)))

(declare-fun b!6954117 () Bool)

(declare-fun c!1289676 () Bool)

(assert (=> b!6954117 (= c!1289676 (is-ElementMatch!17044 lt!2478224))))

(declare-fun e!4181929 () Bool)

(declare-fun e!4181931 () Bool)

(assert (=> b!6954117 (= e!4181929 e!4181931)))

(declare-fun c!1289675 () Bool)

(declare-fun bm!631534 () Bool)

(assert (=> bm!631534 (= call!631540 (Exists!4040 (ite c!1289675 lambda!396665 lambda!396666)))))

(declare-fun b!6954118 () Bool)

(declare-fun call!631539 () Bool)

(assert (=> b!6954118 (= e!4181928 call!631539)))

(declare-fun b!6954119 () Bool)

(declare-fun e!4181932 () Bool)

(assert (=> b!6954119 (= e!4181932 (matchRSpec!4071 (regTwo!34601 lt!2478224) (_2!37200 lt!2478223)))))

(declare-fun e!4181926 () Bool)

(assert (=> b!6954120 (= e!4181926 call!631540)))

(declare-fun b!6954121 () Bool)

(declare-fun e!4181930 () Bool)

(assert (=> b!6954121 (= e!4181930 e!4181932)))

(declare-fun res!2837409 () Bool)

(assert (=> b!6954121 (= res!2837409 (matchRSpec!4071 (regOne!34601 lt!2478224) (_2!37200 lt!2478223)))))

(assert (=> b!6954121 (=> res!2837409 e!4181932)))

(declare-fun b!6954122 () Bool)

(declare-fun c!1289674 () Bool)

(assert (=> b!6954122 (= c!1289674 (is-Union!17044 lt!2478224))))

(assert (=> b!6954122 (= e!4181931 e!4181930)))

(declare-fun b!6954123 () Bool)

(assert (=> b!6954123 (= e!4181928 e!4181929)))

(declare-fun res!2837407 () Bool)

(assert (=> b!6954123 (= res!2837407 (not (is-EmptyLang!17044 lt!2478224)))))

(assert (=> b!6954123 (=> (not res!2837407) (not e!4181929))))

(declare-fun b!6954124 () Bool)

(declare-fun res!2837408 () Bool)

(assert (=> b!6954124 (=> res!2837408 e!4181926)))

(assert (=> b!6954124 (= res!2837408 call!631539)))

(assert (=> b!6954124 (= e!4181927 e!4181926)))

(declare-fun b!6954125 () Bool)

(assert (=> b!6954125 (= e!4181931 (= (_2!37200 lt!2478223) (Cons!66673 (c!1289636 lt!2478224) Nil!66673)))))

(declare-fun bm!631535 () Bool)

(assert (=> bm!631535 (= call!631539 (isEmpty!38911 (_2!37200 lt!2478223)))))

(declare-fun b!6954126 () Bool)

(assert (=> b!6954126 (= e!4181930 e!4181927)))

(assert (=> b!6954126 (= c!1289675 (is-Star!17044 lt!2478224))))

(assert (= (and d!2169352 c!1289673) b!6954118))

(assert (= (and d!2169352 (not c!1289673)) b!6954123))

(assert (= (and b!6954123 res!2837407) b!6954117))

(assert (= (and b!6954117 c!1289676) b!6954125))

(assert (= (and b!6954117 (not c!1289676)) b!6954122))

(assert (= (and b!6954122 c!1289674) b!6954121))

(assert (= (and b!6954122 (not c!1289674)) b!6954126))

(assert (= (and b!6954121 (not res!2837409)) b!6954119))

(assert (= (and b!6954126 c!1289675) b!6954124))

(assert (= (and b!6954126 (not c!1289675)) b!6954116))

(assert (= (and b!6954124 (not res!2837408)) b!6954120))

(assert (= (or b!6954120 b!6954116) bm!631534))

(assert (= (or b!6954118 b!6954124) bm!631535))

(declare-fun m!7653514 () Bool)

(assert (=> bm!631534 m!7653514))

(declare-fun m!7653516 () Bool)

(assert (=> b!6954119 m!7653516))

(declare-fun m!7653518 () Bool)

(assert (=> b!6954121 m!7653518))

(assert (=> bm!631535 m!7653492))

(assert (=> b!6953920 d!2169352))

(declare-fun bs!1857876 () Bool)

(declare-fun b!6954131 () Bool)

(assert (= bs!1857876 (and b!6954131 b!6953914)))

(declare-fun lambda!396667 () Int)

(assert (=> bs!1857876 (not (= lambda!396667 lambda!396655))))

(declare-fun bs!1857877 () Bool)

(assert (= bs!1857877 (and b!6954131 b!6954120)))

(assert (=> bs!1857877 (= (and (= (_1!37200 lt!2478223) (_2!37200 lt!2478223)) (= (reg!17373 rInner!765) (reg!17373 lt!2478224)) (= rInner!765 lt!2478224)) (= lambda!396667 lambda!396665))))

(declare-fun bs!1857878 () Bool)

(assert (= bs!1857878 (and b!6954131 b!6954116)))

(assert (=> bs!1857878 (not (= lambda!396667 lambda!396666))))

(assert (=> b!6954131 true))

(assert (=> b!6954131 true))

(declare-fun bs!1857879 () Bool)

(declare-fun b!6954127 () Bool)

(assert (= bs!1857879 (and b!6954127 b!6953914)))

(declare-fun lambda!396668 () Int)

(assert (=> bs!1857879 (not (= lambda!396668 lambda!396655))))

(declare-fun bs!1857880 () Bool)

(assert (= bs!1857880 (and b!6954127 b!6954120)))

(assert (=> bs!1857880 (not (= lambda!396668 lambda!396665))))

(declare-fun bs!1857881 () Bool)

(assert (= bs!1857881 (and b!6954127 b!6954116)))

(assert (=> bs!1857881 (= (and (= (_1!37200 lt!2478223) (_2!37200 lt!2478223)) (= (regOne!34600 rInner!765) (regOne!34600 lt!2478224)) (= (regTwo!34600 rInner!765) (regTwo!34600 lt!2478224))) (= lambda!396668 lambda!396666))))

(declare-fun bs!1857882 () Bool)

(assert (= bs!1857882 (and b!6954127 b!6954131)))

(assert (=> bs!1857882 (not (= lambda!396668 lambda!396667))))

(assert (=> b!6954127 true))

(assert (=> b!6954127 true))

(declare-fun d!2169358 () Bool)

(declare-fun c!1289677 () Bool)

(assert (=> d!2169358 (= c!1289677 (is-EmptyExpr!17044 rInner!765))))

(declare-fun e!4181935 () Bool)

(assert (=> d!2169358 (= (matchRSpec!4071 rInner!765 (_1!37200 lt!2478223)) e!4181935)))

(declare-fun e!4181934 () Bool)

(declare-fun call!631542 () Bool)

(assert (=> b!6954127 (= e!4181934 call!631542)))

(declare-fun b!6954128 () Bool)

(declare-fun c!1289680 () Bool)

(assert (=> b!6954128 (= c!1289680 (is-ElementMatch!17044 rInner!765))))

(declare-fun e!4181936 () Bool)

(declare-fun e!4181938 () Bool)

(assert (=> b!6954128 (= e!4181936 e!4181938)))

(declare-fun c!1289679 () Bool)

(declare-fun bm!631536 () Bool)

(assert (=> bm!631536 (= call!631542 (Exists!4040 (ite c!1289679 lambda!396667 lambda!396668)))))

(declare-fun b!6954129 () Bool)

(declare-fun call!631541 () Bool)

(assert (=> b!6954129 (= e!4181935 call!631541)))

(declare-fun b!6954130 () Bool)

(declare-fun e!4181939 () Bool)

(assert (=> b!6954130 (= e!4181939 (matchRSpec!4071 (regTwo!34601 rInner!765) (_1!37200 lt!2478223)))))

(declare-fun e!4181933 () Bool)

(assert (=> b!6954131 (= e!4181933 call!631542)))

(declare-fun b!6954132 () Bool)

(declare-fun e!4181937 () Bool)

(assert (=> b!6954132 (= e!4181937 e!4181939)))

(declare-fun res!2837412 () Bool)

(assert (=> b!6954132 (= res!2837412 (matchRSpec!4071 (regOne!34601 rInner!765) (_1!37200 lt!2478223)))))

(assert (=> b!6954132 (=> res!2837412 e!4181939)))

(declare-fun b!6954133 () Bool)

(declare-fun c!1289678 () Bool)

(assert (=> b!6954133 (= c!1289678 (is-Union!17044 rInner!765))))

(assert (=> b!6954133 (= e!4181938 e!4181937)))

(declare-fun b!6954134 () Bool)

(assert (=> b!6954134 (= e!4181935 e!4181936)))

(declare-fun res!2837410 () Bool)

(assert (=> b!6954134 (= res!2837410 (not (is-EmptyLang!17044 rInner!765)))))

(assert (=> b!6954134 (=> (not res!2837410) (not e!4181936))))

(declare-fun b!6954135 () Bool)

(declare-fun res!2837411 () Bool)

(assert (=> b!6954135 (=> res!2837411 e!4181933)))

(assert (=> b!6954135 (= res!2837411 call!631541)))

(assert (=> b!6954135 (= e!4181934 e!4181933)))

(declare-fun b!6954136 () Bool)

(assert (=> b!6954136 (= e!4181938 (= (_1!37200 lt!2478223) (Cons!66673 (c!1289636 rInner!765) Nil!66673)))))

(declare-fun bm!631537 () Bool)

(assert (=> bm!631537 (= call!631541 (isEmpty!38911 (_1!37200 lt!2478223)))))

(declare-fun b!6954137 () Bool)

(assert (=> b!6954137 (= e!4181937 e!4181934)))

(assert (=> b!6954137 (= c!1289679 (is-Star!17044 rInner!765))))

(assert (= (and d!2169358 c!1289677) b!6954129))

(assert (= (and d!2169358 (not c!1289677)) b!6954134))

(assert (= (and b!6954134 res!2837410) b!6954128))

(assert (= (and b!6954128 c!1289680) b!6954136))

(assert (= (and b!6954128 (not c!1289680)) b!6954133))

(assert (= (and b!6954133 c!1289678) b!6954132))

(assert (= (and b!6954133 (not c!1289678)) b!6954137))

(assert (= (and b!6954132 (not res!2837412)) b!6954130))

(assert (= (and b!6954137 c!1289679) b!6954135))

(assert (= (and b!6954137 (not c!1289679)) b!6954127))

(assert (= (and b!6954135 (not res!2837411)) b!6954131))

(assert (= (or b!6954131 b!6954127) bm!631536))

(assert (= (or b!6954129 b!6954135) bm!631537))

(declare-fun m!7653520 () Bool)

(assert (=> bm!631536 m!7653520))

(declare-fun m!7653522 () Bool)

(assert (=> b!6954130 m!7653522))

(declare-fun m!7653524 () Bool)

(assert (=> b!6954132 m!7653524))

(declare-fun m!7653526 () Bool)

(assert (=> bm!631537 m!7653526))

(assert (=> b!6953920 d!2169358))

(declare-fun b!6954138 () Bool)

(declare-fun e!4181941 () Bool)

(declare-fun e!4181946 () Bool)

(assert (=> b!6954138 (= e!4181941 e!4181946)))

(declare-fun res!2837420 () Bool)

(assert (=> b!6954138 (=> (not res!2837420) (not e!4181946))))

(declare-fun lt!2478255 () Bool)

(assert (=> b!6954138 (= res!2837420 (not lt!2478255))))

(declare-fun b!6954139 () Bool)

(declare-fun res!2837414 () Bool)

(assert (=> b!6954139 (=> res!2837414 e!4181941)))

(declare-fun e!4181943 () Bool)

(assert (=> b!6954139 (= res!2837414 e!4181943)))

(declare-fun res!2837419 () Bool)

(assert (=> b!6954139 (=> (not res!2837419) (not e!4181943))))

(assert (=> b!6954139 (= res!2837419 lt!2478255)))

(declare-fun b!6954140 () Bool)

(declare-fun e!4181945 () Bool)

(assert (=> b!6954140 (= e!4181945 (nullable!6857 rInner!765))))

(declare-fun b!6954141 () Bool)

(declare-fun e!4181940 () Bool)

(assert (=> b!6954141 (= e!4181940 (not lt!2478255))))

(declare-fun b!6954142 () Bool)

(declare-fun e!4181942 () Bool)

(assert (=> b!6954142 (= e!4181946 e!4181942)))

(declare-fun res!2837413 () Bool)

(assert (=> b!6954142 (=> res!2837413 e!4181942)))

(declare-fun call!631543 () Bool)

(assert (=> b!6954142 (= res!2837413 call!631543)))

(declare-fun b!6954144 () Bool)

(assert (=> b!6954144 (= e!4181942 (not (= (head!13940 (_1!37200 lt!2478223)) (c!1289636 rInner!765))))))

(declare-fun b!6954145 () Bool)

(declare-fun e!4181944 () Bool)

(assert (=> b!6954145 (= e!4181944 (= lt!2478255 call!631543))))

(declare-fun b!6954146 () Bool)

(declare-fun res!2837415 () Bool)

(assert (=> b!6954146 (=> res!2837415 e!4181942)))

(assert (=> b!6954146 (= res!2837415 (not (isEmpty!38911 (tail!12992 (_1!37200 lt!2478223)))))))

(declare-fun b!6954147 () Bool)

(assert (=> b!6954147 (= e!4181944 e!4181940)))

(declare-fun c!1289682 () Bool)

(assert (=> b!6954147 (= c!1289682 (is-EmptyLang!17044 rInner!765))))

(declare-fun b!6954148 () Bool)

(assert (=> b!6954148 (= e!4181945 (matchR!9156 (derivativeStep!5487 rInner!765 (head!13940 (_1!37200 lt!2478223))) (tail!12992 (_1!37200 lt!2478223))))))

(declare-fun b!6954149 () Bool)

(declare-fun res!2837417 () Bool)

(assert (=> b!6954149 (=> res!2837417 e!4181941)))

(assert (=> b!6954149 (= res!2837417 (not (is-ElementMatch!17044 rInner!765)))))

(assert (=> b!6954149 (= e!4181940 e!4181941)))

(declare-fun b!6954150 () Bool)

(declare-fun res!2837418 () Bool)

(assert (=> b!6954150 (=> (not res!2837418) (not e!4181943))))

(assert (=> b!6954150 (= res!2837418 (isEmpty!38911 (tail!12992 (_1!37200 lt!2478223))))))

(declare-fun b!6954143 () Bool)

(declare-fun res!2837416 () Bool)

(assert (=> b!6954143 (=> (not res!2837416) (not e!4181943))))

(assert (=> b!6954143 (= res!2837416 (not call!631543))))

(declare-fun d!2169360 () Bool)

(assert (=> d!2169360 e!4181944))

(declare-fun c!1289681 () Bool)

(assert (=> d!2169360 (= c!1289681 (is-EmptyExpr!17044 rInner!765))))

(assert (=> d!2169360 (= lt!2478255 e!4181945)))

(declare-fun c!1289683 () Bool)

(assert (=> d!2169360 (= c!1289683 (isEmpty!38911 (_1!37200 lt!2478223)))))

(assert (=> d!2169360 (validRegex!8750 rInner!765)))

(assert (=> d!2169360 (= (matchR!9156 rInner!765 (_1!37200 lt!2478223)) lt!2478255)))

(declare-fun bm!631538 () Bool)

(assert (=> bm!631538 (= call!631543 (isEmpty!38911 (_1!37200 lt!2478223)))))

(declare-fun b!6954151 () Bool)

(assert (=> b!6954151 (= e!4181943 (= (head!13940 (_1!37200 lt!2478223)) (c!1289636 rInner!765)))))

(assert (= (and d!2169360 c!1289683) b!6954140))

(assert (= (and d!2169360 (not c!1289683)) b!6954148))

(assert (= (and d!2169360 c!1289681) b!6954145))

(assert (= (and d!2169360 (not c!1289681)) b!6954147))

(assert (= (and b!6954147 c!1289682) b!6954141))

(assert (= (and b!6954147 (not c!1289682)) b!6954149))

(assert (= (and b!6954149 (not res!2837417)) b!6954139))

(assert (= (and b!6954139 res!2837419) b!6954143))

(assert (= (and b!6954143 res!2837416) b!6954150))

(assert (= (and b!6954150 res!2837418) b!6954151))

(assert (= (and b!6954139 (not res!2837414)) b!6954138))

(assert (= (and b!6954138 res!2837420) b!6954142))

(assert (= (and b!6954142 (not res!2837413)) b!6954146))

(assert (= (and b!6954146 (not res!2837415)) b!6954144))

(assert (= (or b!6954145 b!6954142 b!6954143) bm!631538))

(declare-fun m!7653528 () Bool)

(assert (=> b!6954150 m!7653528))

(assert (=> b!6954150 m!7653528))

(declare-fun m!7653530 () Bool)

(assert (=> b!6954150 m!7653530))

(declare-fun m!7653532 () Bool)

(assert (=> b!6954148 m!7653532))

(assert (=> b!6954148 m!7653532))

(declare-fun m!7653534 () Bool)

(assert (=> b!6954148 m!7653534))

(assert (=> b!6954148 m!7653528))

(assert (=> b!6954148 m!7653534))

(assert (=> b!6954148 m!7653528))

(declare-fun m!7653536 () Bool)

(assert (=> b!6954148 m!7653536))

(assert (=> b!6954146 m!7653528))

(assert (=> b!6954146 m!7653528))

(assert (=> b!6954146 m!7653530))

(assert (=> b!6954144 m!7653532))

(assert (=> b!6954140 m!7653406))

(assert (=> b!6954151 m!7653532))

(assert (=> bm!631538 m!7653526))

(assert (=> d!2169360 m!7653526))

(assert (=> d!2169360 m!7653408))

(assert (=> b!6953920 d!2169360))

(declare-fun d!2169362 () Bool)

(assert (=> d!2169362 (= (matchR!9156 rInner!765 (_1!37200 lt!2478223)) (matchRSpec!4071 rInner!765 (_1!37200 lt!2478223)))))

(declare-fun lt!2478258 () Unit!160760)

(declare-fun choose!51819 (Regex!17044 List!66797) Unit!160760)

(assert (=> d!2169362 (= lt!2478258 (choose!51819 rInner!765 (_1!37200 lt!2478223)))))

(assert (=> d!2169362 (validRegex!8750 rInner!765)))

(assert (=> d!2169362 (= (mainMatchTheorem!4065 rInner!765 (_1!37200 lt!2478223)) lt!2478258)))

(declare-fun bs!1857883 () Bool)

(assert (= bs!1857883 d!2169362))

(assert (=> bs!1857883 m!7653420))

(assert (=> bs!1857883 m!7653424))

(declare-fun m!7653538 () Bool)

(assert (=> bs!1857883 m!7653538))

(assert (=> bs!1857883 m!7653408))

(assert (=> b!6953920 d!2169362))

(declare-fun d!2169364 () Bool)

(assert (=> d!2169364 (= (matchR!9156 lt!2478224 (_2!37200 lt!2478223)) (matchRSpec!4071 lt!2478224 (_2!37200 lt!2478223)))))

(declare-fun lt!2478259 () Unit!160760)

(assert (=> d!2169364 (= lt!2478259 (choose!51819 lt!2478224 (_2!37200 lt!2478223)))))

(assert (=> d!2169364 (validRegex!8750 lt!2478224)))

(assert (=> d!2169364 (= (mainMatchTheorem!4065 lt!2478224 (_2!37200 lt!2478223)) lt!2478259)))

(declare-fun bs!1857884 () Bool)

(assert (= bs!1857884 d!2169364))

(assert (=> bs!1857884 m!7653416))

(assert (=> bs!1857884 m!7653422))

(declare-fun m!7653540 () Bool)

(assert (=> bs!1857884 m!7653540))

(assert (=> bs!1857884 m!7653494))

(assert (=> b!6953920 d!2169364))

(declare-fun d!2169366 () Bool)

(declare-fun choose!51820 (Int) Bool)

(assert (=> d!2169366 (= (Exists!4040 lambda!396655) (choose!51820 lambda!396655))))

(declare-fun bs!1857885 () Bool)

(assert (= bs!1857885 d!2169366))

(declare-fun m!7653542 () Bool)

(assert (=> bs!1857885 m!7653542))

(assert (=> b!6953914 d!2169366))

(declare-fun d!2169368 () Bool)

(declare-fun nullableFct!2569 (Regex!17044) Bool)

(assert (=> d!2169368 (= (nullable!6857 rInner!765) (nullableFct!2569 rInner!765))))

(declare-fun bs!1857886 () Bool)

(assert (= bs!1857886 d!2169368))

(declare-fun m!7653544 () Bool)

(assert (=> bs!1857886 m!7653544))

(assert (=> b!6953919 d!2169368))

(declare-fun b!6954156 () Bool)

(declare-fun e!4181949 () Bool)

(declare-fun tp!1917112 () Bool)

(assert (=> b!6954156 (= e!4181949 (and tp_is_empty!43313 tp!1917112))))

(assert (=> b!6953916 (= tp!1917089 e!4181949)))

(assert (= (and b!6953916 (is-Cons!66673 (t!380540 s!10388))) b!6954156))

(declare-fun b!6954167 () Bool)

(declare-fun e!4181952 () Bool)

(assert (=> b!6954167 (= e!4181952 tp_is_empty!43313)))

(declare-fun b!6954169 () Bool)

(declare-fun tp!1917123 () Bool)

(assert (=> b!6954169 (= e!4181952 tp!1917123)))

(assert (=> b!6953912 (= tp!1917086 e!4181952)))

(declare-fun b!6954168 () Bool)

(declare-fun tp!1917127 () Bool)

(declare-fun tp!1917124 () Bool)

(assert (=> b!6954168 (= e!4181952 (and tp!1917127 tp!1917124))))

(declare-fun b!6954170 () Bool)

(declare-fun tp!1917125 () Bool)

(declare-fun tp!1917126 () Bool)

(assert (=> b!6954170 (= e!4181952 (and tp!1917125 tp!1917126))))

(assert (= (and b!6953912 (is-ElementMatch!17044 (regOne!34600 rInner!765))) b!6954167))

(assert (= (and b!6953912 (is-Concat!25889 (regOne!34600 rInner!765))) b!6954168))

(assert (= (and b!6953912 (is-Star!17044 (regOne!34600 rInner!765))) b!6954169))

(assert (= (and b!6953912 (is-Union!17044 (regOne!34600 rInner!765))) b!6954170))

(declare-fun b!6954171 () Bool)

(declare-fun e!4181953 () Bool)

(assert (=> b!6954171 (= e!4181953 tp_is_empty!43313)))

(declare-fun b!6954173 () Bool)

(declare-fun tp!1917128 () Bool)

(assert (=> b!6954173 (= e!4181953 tp!1917128)))

(assert (=> b!6953912 (= tp!1917087 e!4181953)))

(declare-fun b!6954172 () Bool)

(declare-fun tp!1917132 () Bool)

(declare-fun tp!1917129 () Bool)

(assert (=> b!6954172 (= e!4181953 (and tp!1917132 tp!1917129))))

(declare-fun b!6954174 () Bool)

(declare-fun tp!1917130 () Bool)

(declare-fun tp!1917131 () Bool)

(assert (=> b!6954174 (= e!4181953 (and tp!1917130 tp!1917131))))

(assert (= (and b!6953912 (is-ElementMatch!17044 (regTwo!34600 rInner!765))) b!6954171))

(assert (= (and b!6953912 (is-Concat!25889 (regTwo!34600 rInner!765))) b!6954172))

(assert (= (and b!6953912 (is-Star!17044 (regTwo!34600 rInner!765))) b!6954173))

(assert (= (and b!6953912 (is-Union!17044 (regTwo!34600 rInner!765))) b!6954174))

(declare-fun b!6954175 () Bool)

(declare-fun e!4181954 () Bool)

(assert (=> b!6954175 (= e!4181954 tp_is_empty!43313)))

(declare-fun b!6954177 () Bool)

(declare-fun tp!1917133 () Bool)

(assert (=> b!6954177 (= e!4181954 tp!1917133)))

(assert (=> b!6953917 (= tp!1917090 e!4181954)))

(declare-fun b!6954176 () Bool)

(declare-fun tp!1917137 () Bool)

(declare-fun tp!1917134 () Bool)

(assert (=> b!6954176 (= e!4181954 (and tp!1917137 tp!1917134))))

(declare-fun b!6954178 () Bool)

(declare-fun tp!1917135 () Bool)

(declare-fun tp!1917136 () Bool)

(assert (=> b!6954178 (= e!4181954 (and tp!1917135 tp!1917136))))

(assert (= (and b!6953917 (is-ElementMatch!17044 (regOne!34601 rInner!765))) b!6954175))

(assert (= (and b!6953917 (is-Concat!25889 (regOne!34601 rInner!765))) b!6954176))

(assert (= (and b!6953917 (is-Star!17044 (regOne!34601 rInner!765))) b!6954177))

(assert (= (and b!6953917 (is-Union!17044 (regOne!34601 rInner!765))) b!6954178))

(declare-fun b!6954179 () Bool)

(declare-fun e!4181955 () Bool)

(assert (=> b!6954179 (= e!4181955 tp_is_empty!43313)))

(declare-fun b!6954181 () Bool)

(declare-fun tp!1917138 () Bool)

(assert (=> b!6954181 (= e!4181955 tp!1917138)))

(assert (=> b!6953917 (= tp!1917091 e!4181955)))

(declare-fun b!6954180 () Bool)

(declare-fun tp!1917142 () Bool)

(declare-fun tp!1917139 () Bool)

(assert (=> b!6954180 (= e!4181955 (and tp!1917142 tp!1917139))))

(declare-fun b!6954182 () Bool)

(declare-fun tp!1917140 () Bool)

(declare-fun tp!1917141 () Bool)

(assert (=> b!6954182 (= e!4181955 (and tp!1917140 tp!1917141))))

(assert (= (and b!6953917 (is-ElementMatch!17044 (regTwo!34601 rInner!765))) b!6954179))

(assert (= (and b!6953917 (is-Concat!25889 (regTwo!34601 rInner!765))) b!6954180))

(assert (= (and b!6953917 (is-Star!17044 (regTwo!34601 rInner!765))) b!6954181))

(assert (= (and b!6953917 (is-Union!17044 (regTwo!34601 rInner!765))) b!6954182))

(declare-fun b!6954183 () Bool)

(declare-fun e!4181956 () Bool)

(assert (=> b!6954183 (= e!4181956 tp_is_empty!43313)))

(declare-fun b!6954185 () Bool)

(declare-fun tp!1917143 () Bool)

(assert (=> b!6954185 (= e!4181956 tp!1917143)))

(assert (=> b!6953913 (= tp!1917088 e!4181956)))

(declare-fun b!6954184 () Bool)

(declare-fun tp!1917147 () Bool)

(declare-fun tp!1917144 () Bool)

(assert (=> b!6954184 (= e!4181956 (and tp!1917147 tp!1917144))))

(declare-fun b!6954186 () Bool)

(declare-fun tp!1917145 () Bool)

(declare-fun tp!1917146 () Bool)

(assert (=> b!6954186 (= e!4181956 (and tp!1917145 tp!1917146))))

(assert (= (and b!6953913 (is-ElementMatch!17044 (reg!17373 rInner!765))) b!6954183))

(assert (= (and b!6953913 (is-Concat!25889 (reg!17373 rInner!765))) b!6954184))

(assert (= (and b!6953913 (is-Star!17044 (reg!17373 rInner!765))) b!6954185))

(assert (= (and b!6953913 (is-Union!17044 (reg!17373 rInner!765))) b!6954186))

(declare-fun b_lambda!260429 () Bool)

(assert (= b_lambda!260425 (or b!6953914 b_lambda!260429)))

(declare-fun bs!1857887 () Bool)

(declare-fun d!2169370 () Bool)

(assert (= bs!1857887 (and d!2169370 b!6953914)))

(declare-fun res!2837421 () Bool)

(declare-fun e!4181957 () Bool)

(assert (=> bs!1857887 (=> (not res!2837421) (not e!4181957))))

(assert (=> bs!1857887 (= res!2837421 (= (++!15075 (_1!37200 lt!2478245) (_2!37200 lt!2478245)) s!10388))))

(assert (=> bs!1857887 (= (dynLambda!26586 lambda!396655 lt!2478245) e!4181957)))

(declare-fun b!6954187 () Bool)

(declare-fun res!2837422 () Bool)

(assert (=> b!6954187 (=> (not res!2837422) (not e!4181957))))

(assert (=> b!6954187 (= res!2837422 (matchR!9156 rInner!765 (_1!37200 lt!2478245)))))

(declare-fun b!6954188 () Bool)

(assert (=> b!6954188 (= e!4181957 (matchR!9156 (Star!17044 rInner!765) (_2!37200 lt!2478245)))))

(assert (= (and bs!1857887 res!2837421) b!6954187))

(assert (= (and b!6954187 res!2837422) b!6954188))

(declare-fun m!7653546 () Bool)

(assert (=> bs!1857887 m!7653546))

(declare-fun m!7653548 () Bool)

(assert (=> b!6954187 m!7653548))

(declare-fun m!7653550 () Bool)

(assert (=> b!6954188 m!7653550))

(assert (=> d!2169344 d!2169370))

(push 1)

(assert (not b!6954169))

(assert (not bs!1857887))

(assert (not b!6954066))

(assert (not bm!631534))

(assert (not d!2169366))

(assert (not b!6954177))

(assert (not b!6954071))

(assert (not b!6954184))

(assert (not b!6954146))

(assert (not b!6954174))

(assert (not bm!631535))

(assert (not b!6954150))

(assert (not b_lambda!260429))

(assert (not bm!631515))

(assert (not d!2169368))

(assert (not b!6953982))

(assert (not b!6954187))

(assert (not b!6954068))

(assert (not bm!631537))

(assert (not b!6954168))

(assert (not bm!631529))

(assert (not bm!631516))

(assert (not b!6954119))

(assert tp_is_empty!43313)

(assert (not b!6954070))

(assert (not b!6954188))

(assert (not b!6954140))

(assert (not b!6954148))

(assert (not b!6954186))

(assert (not b!6954172))

(assert (not d!2169346))

(assert (not b!6954130))

(assert (not b!6954185))

(assert (not b!6954173))

(assert (not d!2169344))

(assert (not b!6954170))

(assert (not b!6954180))

(assert (not b!6954144))

(assert (not d!2169364))

(assert (not b!6954132))

(assert (not b!6954156))

(assert (not d!2169362))

(assert (not b!6954178))

(assert (not b!6954121))

(assert (not d!2169340))

(assert (not bm!631536))

(assert (not b!6954151))

(assert (not b!6954176))

(assert (not b!6954001))

(assert (not b!6954060))

(assert (not bm!631538))

(assert (not b!6954000))

(assert (not b!6954182))

(assert (not b!6954181))

(assert (not b!6954064))

(assert (not d!2169360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

