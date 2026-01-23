; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!292374 () Bool)

(assert start!292374)

(declare-fun b!3063926 () Bool)

(assert (=> b!3063926 true))

(assert (=> b!3063926 true))

(declare-fun b!3063914 () Bool)

(declare-fun res!1257801 () Bool)

(declare-fun e!1918263 () Bool)

(assert (=> b!3063914 (=> res!1257801 e!1918263)))

(declare-datatypes ((C!19174 0))(
  ( (C!19175 (val!11623 Int)) )
))
(declare-datatypes ((Regex!9494 0))(
  ( (ElementMatch!9494 (c!508842 C!19174)) (Concat!14815 (regOne!19500 Regex!9494) (regTwo!19500 Regex!9494)) (EmptyExpr!9494) (Star!9494 (reg!9823 Regex!9494)) (EmptyLang!9494) (Union!9494 (regOne!19501 Regex!9494) (regTwo!19501 Regex!9494)) )
))
(declare-fun r!17423 () Regex!9494)

(declare-datatypes ((List!35359 0))(
  ( (Nil!35235) (Cons!35235 (h!40655 C!19174) (t!234424 List!35359)) )
))
(declare-fun matchR!4376 (Regex!9494 List!35359) Bool)

(assert (=> b!3063914 (= res!1257801 (not (matchR!4376 (regOne!19500 r!17423) Nil!35235)))))

(declare-fun b!3063915 () Bool)

(declare-fun res!1257797 () Bool)

(declare-fun e!1918264 () Bool)

(assert (=> b!3063915 (=> res!1257797 e!1918264)))

(declare-fun lt!1050351 () Regex!9494)

(declare-fun isEmptyLang!545 (Regex!9494) Bool)

(assert (=> b!3063915 (= res!1257797 (isEmptyLang!545 lt!1050351))))

(declare-fun b!3063916 () Bool)

(declare-fun res!1257794 () Bool)

(declare-fun e!1918260 () Bool)

(assert (=> b!3063916 (=> res!1257794 e!1918260)))

(declare-fun s!11993 () List!35359)

(declare-fun isEmpty!19554 (List!35359) Bool)

(assert (=> b!3063916 (= res!1257794 (isEmpty!19554 s!11993))))

(declare-fun b!3063917 () Bool)

(declare-fun e!1918265 () Bool)

(assert (=> b!3063917 (= e!1918265 (not e!1918260))))

(declare-fun res!1257795 () Bool)

(assert (=> b!3063917 (=> res!1257795 e!1918260)))

(declare-fun lt!1050350 () Bool)

(assert (=> b!3063917 (= res!1257795 (or lt!1050350 (not (is-Concat!14815 r!17423))))))

(declare-fun matchRSpec!1631 (Regex!9494 List!35359) Bool)

(assert (=> b!3063917 (= lt!1050350 (matchRSpec!1631 r!17423 s!11993))))

(assert (=> b!3063917 (= lt!1050350 (matchR!4376 r!17423 s!11993))))

(declare-datatypes ((Unit!49427 0))(
  ( (Unit!49428) )
))
(declare-fun lt!1050352 () Unit!49427)

(declare-fun mainMatchTheorem!1631 (Regex!9494 List!35359) Unit!49427)

(assert (=> b!3063917 (= lt!1050352 (mainMatchTheorem!1631 r!17423 s!11993))))

(declare-fun b!3063918 () Bool)

(declare-fun e!1918262 () Bool)

(declare-fun tp!967756 () Bool)

(assert (=> b!3063918 (= e!1918262 tp!967756)))

(declare-fun res!1257800 () Bool)

(assert (=> start!292374 (=> (not res!1257800) (not e!1918265))))

(declare-fun validRegex!4227 (Regex!9494) Bool)

(assert (=> start!292374 (= res!1257800 (validRegex!4227 r!17423))))

(assert (=> start!292374 e!1918265))

(assert (=> start!292374 e!1918262))

(declare-fun e!1918261 () Bool)

(assert (=> start!292374 e!1918261))

(declare-fun b!3063919 () Bool)

(assert (=> b!3063919 (= e!1918264 e!1918263)))

(declare-fun res!1257799 () Bool)

(assert (=> b!3063919 (=> res!1257799 e!1918263)))

(declare-fun lt!1050349 () Bool)

(assert (=> b!3063919 (= res!1257799 (not lt!1050349))))

(assert (=> b!3063919 (= lt!1050349 (matchR!4376 lt!1050351 s!11993))))

(assert (=> b!3063919 (= lt!1050349 (matchR!4376 (regTwo!19500 r!17423) s!11993))))

(declare-fun lt!1050347 () Unit!49427)

(declare-fun lemmaSimplifySound!279 (Regex!9494 List!35359) Unit!49427)

(assert (=> b!3063919 (= lt!1050347 (lemmaSimplifySound!279 (regTwo!19500 r!17423) s!11993))))

(declare-fun b!3063920 () Bool)

(declare-fun res!1257793 () Bool)

(assert (=> b!3063920 (=> res!1257793 e!1918263)))

(declare-fun nullable!3140 (Regex!9494) Bool)

(assert (=> b!3063920 (= res!1257793 (not (nullable!3140 (regOne!19500 r!17423))))))

(declare-fun b!3063921 () Bool)

(declare-fun tp_is_empty!16551 () Bool)

(assert (=> b!3063921 (= e!1918262 tp_is_empty!16551)))

(declare-fun b!3063922 () Bool)

(declare-fun tp!967754 () Bool)

(declare-fun tp!967755 () Bool)

(assert (=> b!3063922 (= e!1918262 (and tp!967754 tp!967755))))

(declare-fun b!3063923 () Bool)

(declare-fun tp!967759 () Bool)

(assert (=> b!3063923 (= e!1918261 (and tp_is_empty!16551 tp!967759))))

(declare-fun b!3063924 () Bool)

(assert (=> b!3063924 (= e!1918260 e!1918264)))

(declare-fun res!1257798 () Bool)

(assert (=> b!3063924 (=> res!1257798 e!1918264)))

(declare-fun lt!1050348 () Regex!9494)

(assert (=> b!3063924 (= res!1257798 (isEmptyLang!545 lt!1050348))))

(declare-fun simplify!449 (Regex!9494) Regex!9494)

(assert (=> b!3063924 (= lt!1050351 (simplify!449 (regTwo!19500 r!17423)))))

(assert (=> b!3063924 (= lt!1050348 (simplify!449 (regOne!19500 r!17423)))))

(declare-fun b!3063925 () Bool)

(declare-fun res!1257796 () Bool)

(assert (=> b!3063925 (=> res!1257796 e!1918264)))

(declare-fun isEmptyExpr!551 (Regex!9494) Bool)

(assert (=> b!3063925 (= res!1257796 (not (isEmptyExpr!551 lt!1050348)))))

(assert (=> b!3063926 (= e!1918263 (validRegex!4227 (regOne!19500 r!17423)))))

(declare-fun lambda!113925 () Int)

(declare-fun Exists!1757 (Int) Bool)

(assert (=> b!3063926 (Exists!1757 lambda!113925)))

(declare-fun lt!1050354 () Unit!49427)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!979 (Regex!9494 Regex!9494 List!35359) Unit!49427)

(assert (=> b!3063926 (= lt!1050354 (lemmaFindConcatSeparationEquivalentToExists!979 (regOne!19500 r!17423) (regTwo!19500 r!17423) s!11993))))

(declare-datatypes ((tuple2!34158 0))(
  ( (tuple2!34159 (_1!20211 List!35359) (_2!20211 List!35359)) )
))
(declare-datatypes ((Option!6811 0))(
  ( (None!6810) (Some!6810 (v!34944 tuple2!34158)) )
))
(declare-fun isDefined!5362 (Option!6811) Bool)

(declare-fun findConcatSeparation!1205 (Regex!9494 Regex!9494 List!35359 List!35359 List!35359) Option!6811)

(assert (=> b!3063926 (isDefined!5362 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993))))

(declare-fun lt!1050353 () Unit!49427)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!25 (Regex!9494 Regex!9494 List!35359 List!35359 List!35359 List!35359 List!35359) Unit!49427)

(assert (=> b!3063926 (= lt!1050353 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!25 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993 Nil!35235 s!11993))))

(declare-fun b!3063927 () Bool)

(declare-fun tp!967758 () Bool)

(declare-fun tp!967757 () Bool)

(assert (=> b!3063927 (= e!1918262 (and tp!967758 tp!967757))))

(assert (= (and start!292374 res!1257800) b!3063917))

(assert (= (and b!3063917 (not res!1257795)) b!3063916))

(assert (= (and b!3063916 (not res!1257794)) b!3063924))

(assert (= (and b!3063924 (not res!1257798)) b!3063915))

(assert (= (and b!3063915 (not res!1257797)) b!3063925))

(assert (= (and b!3063925 (not res!1257796)) b!3063919))

(assert (= (and b!3063919 (not res!1257799)) b!3063920))

(assert (= (and b!3063920 (not res!1257793)) b!3063914))

(assert (= (and b!3063914 (not res!1257801)) b!3063926))

(assert (= (and start!292374 (is-ElementMatch!9494 r!17423)) b!3063921))

(assert (= (and start!292374 (is-Concat!14815 r!17423)) b!3063922))

(assert (= (and start!292374 (is-Star!9494 r!17423)) b!3063918))

(assert (= (and start!292374 (is-Union!9494 r!17423)) b!3063927))

(assert (= (and start!292374 (is-Cons!35235 s!11993)) b!3063923))

(declare-fun m!3382777 () Bool)

(assert (=> b!3063914 m!3382777))

(declare-fun m!3382779 () Bool)

(assert (=> b!3063915 m!3382779))

(declare-fun m!3382781 () Bool)

(assert (=> b!3063916 m!3382781))

(declare-fun m!3382783 () Bool)

(assert (=> start!292374 m!3382783))

(declare-fun m!3382785 () Bool)

(assert (=> b!3063925 m!3382785))

(declare-fun m!3382787 () Bool)

(assert (=> b!3063917 m!3382787))

(declare-fun m!3382789 () Bool)

(assert (=> b!3063917 m!3382789))

(declare-fun m!3382791 () Bool)

(assert (=> b!3063917 m!3382791))

(declare-fun m!3382793 () Bool)

(assert (=> b!3063924 m!3382793))

(declare-fun m!3382795 () Bool)

(assert (=> b!3063924 m!3382795))

(declare-fun m!3382797 () Bool)

(assert (=> b!3063924 m!3382797))

(declare-fun m!3382799 () Bool)

(assert (=> b!3063926 m!3382799))

(declare-fun m!3382801 () Bool)

(assert (=> b!3063926 m!3382801))

(declare-fun m!3382803 () Bool)

(assert (=> b!3063926 m!3382803))

(declare-fun m!3382805 () Bool)

(assert (=> b!3063926 m!3382805))

(declare-fun m!3382807 () Bool)

(assert (=> b!3063926 m!3382807))

(assert (=> b!3063926 m!3382803))

(declare-fun m!3382809 () Bool)

(assert (=> b!3063926 m!3382809))

(declare-fun m!3382811 () Bool)

(assert (=> b!3063920 m!3382811))

(declare-fun m!3382813 () Bool)

(assert (=> b!3063919 m!3382813))

(declare-fun m!3382815 () Bool)

(assert (=> b!3063919 m!3382815))

(declare-fun m!3382817 () Bool)

(assert (=> b!3063919 m!3382817))

(push 1)

(assert (not b!3063927))

(assert (not b!3063926))

(assert (not b!3063925))

(assert (not start!292374))

(assert (not b!3063924))

(assert (not b!3063915))

(assert tp_is_empty!16551)

(assert (not b!3063922))

(assert (not b!3063914))

(assert (not b!3063918))

(assert (not b!3063920))

(assert (not b!3063923))

(assert (not b!3063916))

(assert (not b!3063917))

(assert (not b!3063919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3064000 () Bool)

(declare-fun e!1918303 () Bool)

(declare-fun call!212149 () Bool)

(assert (=> b!3064000 (= e!1918303 call!212149)))

(declare-fun b!3064001 () Bool)

(declare-fun res!1257847 () Bool)

(declare-fun e!1918305 () Bool)

(assert (=> b!3064001 (=> res!1257847 e!1918305)))

(assert (=> b!3064001 (= res!1257847 (not (is-Concat!14815 (regOne!19500 r!17423))))))

(declare-fun e!1918302 () Bool)

(assert (=> b!3064001 (= e!1918302 e!1918305)))

(declare-fun b!3064002 () Bool)

(declare-fun e!1918300 () Bool)

(declare-fun call!212148 () Bool)

(assert (=> b!3064002 (= e!1918300 call!212148)))

(declare-fun c!508848 () Bool)

(declare-fun c!508849 () Bool)

(declare-fun bm!212142 () Bool)

(assert (=> bm!212142 (= call!212148 (validRegex!4227 (ite c!508848 (reg!9823 (regOne!19500 r!17423)) (ite c!508849 (regTwo!19501 (regOne!19500 r!17423)) (regOne!19500 (regOne!19500 r!17423))))))))

(declare-fun b!3064003 () Bool)

(declare-fun e!1918301 () Bool)

(assert (=> b!3064003 (= e!1918301 e!1918302)))

(assert (=> b!3064003 (= c!508849 (is-Union!9494 (regOne!19500 r!17423)))))

(declare-fun bm!212143 () Bool)

(assert (=> bm!212143 (= call!212149 (validRegex!4227 (ite c!508849 (regOne!19501 (regOne!19500 r!17423)) (regTwo!19500 (regOne!19500 r!17423)))))))

(declare-fun d!855539 () Bool)

(declare-fun res!1257843 () Bool)

(declare-fun e!1918306 () Bool)

(assert (=> d!855539 (=> res!1257843 e!1918306)))

(assert (=> d!855539 (= res!1257843 (is-ElementMatch!9494 (regOne!19500 r!17423)))))

(assert (=> d!855539 (= (validRegex!4227 (regOne!19500 r!17423)) e!1918306)))

(declare-fun b!3064004 () Bool)

(assert (=> b!3064004 (= e!1918301 e!1918300)))

(declare-fun res!1257844 () Bool)

(assert (=> b!3064004 (= res!1257844 (not (nullable!3140 (reg!9823 (regOne!19500 r!17423)))))))

(assert (=> b!3064004 (=> (not res!1257844) (not e!1918300))))

(declare-fun b!3064005 () Bool)

(declare-fun e!1918304 () Bool)

(declare-fun call!212147 () Bool)

(assert (=> b!3064005 (= e!1918304 call!212147)))

(declare-fun b!3064006 () Bool)

(assert (=> b!3064006 (= e!1918305 e!1918303)))

(declare-fun res!1257846 () Bool)

(assert (=> b!3064006 (=> (not res!1257846) (not e!1918303))))

(assert (=> b!3064006 (= res!1257846 call!212147)))

(declare-fun b!3064007 () Bool)

(assert (=> b!3064007 (= e!1918306 e!1918301)))

(assert (=> b!3064007 (= c!508848 (is-Star!9494 (regOne!19500 r!17423)))))

(declare-fun bm!212144 () Bool)

(assert (=> bm!212144 (= call!212147 call!212148)))

(declare-fun b!3064008 () Bool)

(declare-fun res!1257845 () Bool)

(assert (=> b!3064008 (=> (not res!1257845) (not e!1918304))))

(assert (=> b!3064008 (= res!1257845 call!212149)))

(assert (=> b!3064008 (= e!1918302 e!1918304)))

(assert (= (and d!855539 (not res!1257843)) b!3064007))

(assert (= (and b!3064007 c!508848) b!3064004))

(assert (= (and b!3064007 (not c!508848)) b!3064003))

(assert (= (and b!3064004 res!1257844) b!3064002))

(assert (= (and b!3064003 c!508849) b!3064008))

(assert (= (and b!3064003 (not c!508849)) b!3064001))

(assert (= (and b!3064008 res!1257845) b!3064005))

(assert (= (and b!3064001 (not res!1257847)) b!3064006))

(assert (= (and b!3064006 res!1257846) b!3064000))

(assert (= (or b!3064008 b!3064000) bm!212143))

(assert (= (or b!3064005 b!3064006) bm!212144))

(assert (= (or b!3064002 bm!212144) bm!212142))

(declare-fun m!3382863 () Bool)

(assert (=> bm!212142 m!3382863))

(declare-fun m!3382865 () Bool)

(assert (=> bm!212143 m!3382865))

(declare-fun m!3382867 () Bool)

(assert (=> b!3064004 m!3382867))

(assert (=> b!3063926 d!855539))

(declare-fun d!855545 () Bool)

(assert (=> d!855545 (isDefined!5362 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993))))

(declare-fun lt!1050381 () Unit!49427)

(declare-fun choose!18144 (Regex!9494 Regex!9494 List!35359 List!35359 List!35359 List!35359 List!35359) Unit!49427)

(assert (=> d!855545 (= lt!1050381 (choose!18144 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993 Nil!35235 s!11993))))

(assert (=> d!855545 (validRegex!4227 (regOne!19500 r!17423))))

(assert (=> d!855545 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!25 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993 Nil!35235 s!11993) lt!1050381)))

(declare-fun bs!532503 () Bool)

(assert (= bs!532503 d!855545))

(assert (=> bs!532503 m!3382803))

(assert (=> bs!532503 m!3382803))

(assert (=> bs!532503 m!3382805))

(declare-fun m!3382869 () Bool)

(assert (=> bs!532503 m!3382869))

(assert (=> bs!532503 m!3382801))

(assert (=> b!3063926 d!855545))

(declare-fun d!855547 () Bool)

(declare-fun isEmpty!19556 (Option!6811) Bool)

(assert (=> d!855547 (= (isDefined!5362 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993)) (not (isEmpty!19556 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993))))))

(declare-fun bs!532504 () Bool)

(assert (= bs!532504 d!855547))

(assert (=> bs!532504 m!3382803))

(declare-fun m!3382871 () Bool)

(assert (=> bs!532504 m!3382871))

(assert (=> b!3063926 d!855547))

(declare-fun d!855549 () Bool)

(declare-fun choose!18145 (Int) Bool)

(assert (=> d!855549 (= (Exists!1757 lambda!113925) (choose!18145 lambda!113925))))

(declare-fun bs!532505 () Bool)

(assert (= bs!532505 d!855549))

(declare-fun m!3382873 () Bool)

(assert (=> bs!532505 m!3382873))

(assert (=> b!3063926 d!855549))

(declare-fun b!3064054 () Bool)

(declare-fun e!1918342 () Bool)

(declare-fun lt!1050388 () Option!6811)

(assert (=> b!3064054 (= e!1918342 (not (isDefined!5362 lt!1050388)))))

(declare-fun d!855551 () Bool)

(assert (=> d!855551 e!1918342))

(declare-fun res!1257873 () Bool)

(assert (=> d!855551 (=> res!1257873 e!1918342)))

(declare-fun e!1918341 () Bool)

(assert (=> d!855551 (= res!1257873 e!1918341)))

(declare-fun res!1257874 () Bool)

(assert (=> d!855551 (=> (not res!1257874) (not e!1918341))))

(assert (=> d!855551 (= res!1257874 (isDefined!5362 lt!1050388))))

(declare-fun e!1918339 () Option!6811)

(assert (=> d!855551 (= lt!1050388 e!1918339)))

(declare-fun c!508860 () Bool)

(declare-fun e!1918340 () Bool)

(assert (=> d!855551 (= c!508860 e!1918340)))

(declare-fun res!1257876 () Bool)

(assert (=> d!855551 (=> (not res!1257876) (not e!1918340))))

(assert (=> d!855551 (= res!1257876 (matchR!4376 (regOne!19500 r!17423) Nil!35235))))

(assert (=> d!855551 (validRegex!4227 (regOne!19500 r!17423))))

(assert (=> d!855551 (= (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993) lt!1050388)))

(declare-fun b!3064055 () Bool)

(declare-fun e!1918338 () Option!6811)

(assert (=> b!3064055 (= e!1918338 None!6810)))

(declare-fun b!3064056 () Bool)

(declare-fun res!1257875 () Bool)

(assert (=> b!3064056 (=> (not res!1257875) (not e!1918341))))

(declare-fun get!11025 (Option!6811) tuple2!34158)

(assert (=> b!3064056 (= res!1257875 (matchR!4376 (regTwo!19500 r!17423) (_2!20211 (get!11025 lt!1050388))))))

(declare-fun b!3064057 () Bool)

(declare-fun lt!1050389 () Unit!49427)

(declare-fun lt!1050390 () Unit!49427)

(assert (=> b!3064057 (= lt!1050389 lt!1050390)))

(declare-fun ++!8459 (List!35359 List!35359) List!35359)

(assert (=> b!3064057 (= (++!8459 (++!8459 Nil!35235 (Cons!35235 (h!40655 s!11993) Nil!35235)) (t!234424 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1062 (List!35359 C!19174 List!35359 List!35359) Unit!49427)

(assert (=> b!3064057 (= lt!1050390 (lemmaMoveElementToOtherListKeepsConcatEq!1062 Nil!35235 (h!40655 s!11993) (t!234424 s!11993) s!11993))))

(assert (=> b!3064057 (= e!1918338 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) (++!8459 Nil!35235 (Cons!35235 (h!40655 s!11993) Nil!35235)) (t!234424 s!11993) s!11993))))

(declare-fun b!3064058 () Bool)

(assert (=> b!3064058 (= e!1918340 (matchR!4376 (regTwo!19500 r!17423) s!11993))))

(declare-fun b!3064059 () Bool)

(assert (=> b!3064059 (= e!1918339 (Some!6810 (tuple2!34159 Nil!35235 s!11993)))))

(declare-fun b!3064060 () Bool)

(declare-fun res!1257877 () Bool)

(assert (=> b!3064060 (=> (not res!1257877) (not e!1918341))))

(assert (=> b!3064060 (= res!1257877 (matchR!4376 (regOne!19500 r!17423) (_1!20211 (get!11025 lt!1050388))))))

(declare-fun b!3064061 () Bool)

(assert (=> b!3064061 (= e!1918341 (= (++!8459 (_1!20211 (get!11025 lt!1050388)) (_2!20211 (get!11025 lt!1050388))) s!11993))))

(declare-fun b!3064062 () Bool)

(assert (=> b!3064062 (= e!1918339 e!1918338)))

(declare-fun c!508861 () Bool)

(assert (=> b!3064062 (= c!508861 (is-Nil!35235 s!11993))))

(assert (= (and d!855551 res!1257876) b!3064058))

(assert (= (and d!855551 c!508860) b!3064059))

(assert (= (and d!855551 (not c!508860)) b!3064062))

(assert (= (and b!3064062 c!508861) b!3064055))

(assert (= (and b!3064062 (not c!508861)) b!3064057))

(assert (= (and d!855551 res!1257874) b!3064060))

(assert (= (and b!3064060 res!1257877) b!3064056))

(assert (= (and b!3064056 res!1257875) b!3064061))

(assert (= (and d!855551 (not res!1257873)) b!3064054))

(declare-fun m!3382881 () Bool)

(assert (=> b!3064060 m!3382881))

(declare-fun m!3382883 () Bool)

(assert (=> b!3064060 m!3382883))

(assert (=> b!3064058 m!3382815))

(assert (=> b!3064061 m!3382881))

(declare-fun m!3382885 () Bool)

(assert (=> b!3064061 m!3382885))

(declare-fun m!3382887 () Bool)

(assert (=> b!3064057 m!3382887))

(assert (=> b!3064057 m!3382887))

(declare-fun m!3382889 () Bool)

(assert (=> b!3064057 m!3382889))

(declare-fun m!3382891 () Bool)

(assert (=> b!3064057 m!3382891))

(assert (=> b!3064057 m!3382887))

(declare-fun m!3382893 () Bool)

(assert (=> b!3064057 m!3382893))

(declare-fun m!3382895 () Bool)

(assert (=> d!855551 m!3382895))

(assert (=> d!855551 m!3382777))

(assert (=> d!855551 m!3382801))

(assert (=> b!3064054 m!3382895))

(assert (=> b!3064056 m!3382881))

(declare-fun m!3382897 () Bool)

(assert (=> b!3064056 m!3382897))

(assert (=> b!3063926 d!855551))

(declare-fun bs!532508 () Bool)

(declare-fun d!855555 () Bool)

(assert (= bs!532508 (and d!855555 b!3063926)))

(declare-fun lambda!113931 () Int)

(assert (=> bs!532508 (= lambda!113931 lambda!113925)))

(assert (=> d!855555 true))

(assert (=> d!855555 true))

(assert (=> d!855555 true))

(assert (=> d!855555 (= (isDefined!5362 (findConcatSeparation!1205 (regOne!19500 r!17423) (regTwo!19500 r!17423) Nil!35235 s!11993 s!11993)) (Exists!1757 lambda!113931))))

(declare-fun lt!1050396 () Unit!49427)

(declare-fun choose!18146 (Regex!9494 Regex!9494 List!35359) Unit!49427)

(assert (=> d!855555 (= lt!1050396 (choose!18146 (regOne!19500 r!17423) (regTwo!19500 r!17423) s!11993))))

(assert (=> d!855555 (validRegex!4227 (regOne!19500 r!17423))))

(assert (=> d!855555 (= (lemmaFindConcatSeparationEquivalentToExists!979 (regOne!19500 r!17423) (regTwo!19500 r!17423) s!11993) lt!1050396)))

(declare-fun bs!532509 () Bool)

(assert (= bs!532509 d!855555))

(assert (=> bs!532509 m!3382803))

(assert (=> bs!532509 m!3382803))

(assert (=> bs!532509 m!3382805))

(declare-fun m!3382903 () Bool)

(assert (=> bs!532509 m!3382903))

(declare-fun m!3382905 () Bool)

(assert (=> bs!532509 m!3382905))

(assert (=> bs!532509 m!3382801))

(assert (=> b!3063926 d!855555))

(declare-fun d!855561 () Bool)

(assert (=> d!855561 (= (isEmptyLang!545 lt!1050351) (is-EmptyLang!9494 lt!1050351))))

(assert (=> b!3063915 d!855561))

(declare-fun d!855563 () Bool)

(declare-fun nullableFct!900 (Regex!9494) Bool)

(assert (=> d!855563 (= (nullable!3140 (regOne!19500 r!17423)) (nullableFct!900 (regOne!19500 r!17423)))))

(declare-fun bs!532510 () Bool)

(assert (= bs!532510 d!855563))

(declare-fun m!3382907 () Bool)

(assert (=> bs!532510 m!3382907))

(assert (=> b!3063920 d!855563))

(declare-fun bs!532511 () Bool)

(declare-fun b!3064100 () Bool)

(assert (= bs!532511 (and b!3064100 b!3063926)))

(declare-fun lambda!113936 () Int)

(assert (=> bs!532511 (not (= lambda!113936 lambda!113925))))

(declare-fun bs!532512 () Bool)

(assert (= bs!532512 (and b!3064100 d!855555)))

(assert (=> bs!532512 (not (= lambda!113936 lambda!113931))))

(assert (=> b!3064100 true))

(assert (=> b!3064100 true))

(declare-fun bs!532513 () Bool)

(declare-fun b!3064106 () Bool)

(assert (= bs!532513 (and b!3064106 b!3063926)))

(declare-fun lambda!113937 () Int)

(assert (=> bs!532513 (not (= lambda!113937 lambda!113925))))

(declare-fun bs!532514 () Bool)

(assert (= bs!532514 (and b!3064106 d!855555)))

(assert (=> bs!532514 (not (= lambda!113937 lambda!113931))))

(declare-fun bs!532515 () Bool)

(assert (= bs!532515 (and b!3064106 b!3064100)))

(assert (=> bs!532515 (not (= lambda!113937 lambda!113936))))

(assert (=> b!3064106 true))

(assert (=> b!3064106 true))

(declare-fun d!855565 () Bool)

(declare-fun c!508871 () Bool)

(assert (=> d!855565 (= c!508871 (is-EmptyExpr!9494 r!17423))))

(declare-fun e!1918363 () Bool)

(assert (=> d!855565 (= (matchRSpec!1631 r!17423 s!11993) e!1918363)))

(declare-fun b!3064099 () Bool)

(declare-fun e!1918366 () Bool)

(assert (=> b!3064099 (= e!1918366 (matchRSpec!1631 (regTwo!19501 r!17423) s!11993))))

(declare-fun e!1918369 () Bool)

(declare-fun call!212163 () Bool)

(assert (=> b!3064100 (= e!1918369 call!212163)))

(declare-fun b!3064101 () Bool)

(declare-fun res!1257900 () Bool)

(assert (=> b!3064101 (=> res!1257900 e!1918369)))

(declare-fun call!212164 () Bool)

(assert (=> b!3064101 (= res!1257900 call!212164)))

(declare-fun e!1918364 () Bool)

(assert (=> b!3064101 (= e!1918364 e!1918369)))

(declare-fun b!3064102 () Bool)

(assert (=> b!3064102 (= e!1918363 call!212164)))

(declare-fun b!3064103 () Bool)

(declare-fun c!508872 () Bool)

(assert (=> b!3064103 (= c!508872 (is-ElementMatch!9494 r!17423))))

(declare-fun e!1918367 () Bool)

(declare-fun e!1918365 () Bool)

(assert (=> b!3064103 (= e!1918367 e!1918365)))

(declare-fun bm!212158 () Bool)

(assert (=> bm!212158 (= call!212164 (isEmpty!19554 s!11993))))

(declare-fun c!508870 () Bool)

(declare-fun bm!212159 () Bool)

(assert (=> bm!212159 (= call!212163 (Exists!1757 (ite c!508870 lambda!113936 lambda!113937)))))

(declare-fun b!3064104 () Bool)

(assert (=> b!3064104 (= e!1918365 (= s!11993 (Cons!35235 (c!508842 r!17423) Nil!35235)))))

(declare-fun b!3064105 () Bool)

(declare-fun e!1918368 () Bool)

(assert (=> b!3064105 (= e!1918368 e!1918366)))

(declare-fun res!1257898 () Bool)

(assert (=> b!3064105 (= res!1257898 (matchRSpec!1631 (regOne!19501 r!17423) s!11993))))

(assert (=> b!3064105 (=> res!1257898 e!1918366)))

(assert (=> b!3064106 (= e!1918364 call!212163)))

(declare-fun b!3064107 () Bool)

(assert (=> b!3064107 (= e!1918363 e!1918367)))

(declare-fun res!1257899 () Bool)

(assert (=> b!3064107 (= res!1257899 (not (is-EmptyLang!9494 r!17423)))))

(assert (=> b!3064107 (=> (not res!1257899) (not e!1918367))))

(declare-fun b!3064108 () Bool)

(assert (=> b!3064108 (= e!1918368 e!1918364)))

(assert (=> b!3064108 (= c!508870 (is-Star!9494 r!17423))))

(declare-fun b!3064109 () Bool)

(declare-fun c!508873 () Bool)

(assert (=> b!3064109 (= c!508873 (is-Union!9494 r!17423))))

(assert (=> b!3064109 (= e!1918365 e!1918368)))

(assert (= (and d!855565 c!508871) b!3064102))

(assert (= (and d!855565 (not c!508871)) b!3064107))

(assert (= (and b!3064107 res!1257899) b!3064103))

(assert (= (and b!3064103 c!508872) b!3064104))

(assert (= (and b!3064103 (not c!508872)) b!3064109))

(assert (= (and b!3064109 c!508873) b!3064105))

(assert (= (and b!3064109 (not c!508873)) b!3064108))

(assert (= (and b!3064105 (not res!1257898)) b!3064099))

(assert (= (and b!3064108 c!508870) b!3064101))

(assert (= (and b!3064108 (not c!508870)) b!3064106))

(assert (= (and b!3064101 (not res!1257900)) b!3064100))

(assert (= (or b!3064100 b!3064106) bm!212159))

(assert (= (or b!3064102 b!3064101) bm!212158))

(declare-fun m!3382909 () Bool)

(assert (=> b!3064099 m!3382909))

(assert (=> bm!212158 m!3382781))

(declare-fun m!3382911 () Bool)

(assert (=> bm!212159 m!3382911))

(declare-fun m!3382913 () Bool)

(assert (=> b!3064105 m!3382913))

(assert (=> b!3063917 d!855565))

(declare-fun b!3064165 () Bool)

(declare-fun e!1918403 () Bool)

(declare-fun head!6795 (List!35359) C!19174)

(assert (=> b!3064165 (= e!1918403 (= (head!6795 s!11993) (c!508842 r!17423)))))

(declare-fun b!3064166 () Bool)

(declare-fun res!1257933 () Bool)

(declare-fun e!1918405 () Bool)

(assert (=> b!3064166 (=> res!1257933 e!1918405)))

(assert (=> b!3064166 (= res!1257933 (not (is-ElementMatch!9494 r!17423)))))

(declare-fun e!1918401 () Bool)

(assert (=> b!3064166 (= e!1918401 e!1918405)))

(declare-fun bm!212162 () Bool)

(declare-fun call!212167 () Bool)

(assert (=> bm!212162 (= call!212167 (isEmpty!19554 s!11993))))

(declare-fun b!3064167 () Bool)

(declare-fun res!1257937 () Bool)

(assert (=> b!3064167 (=> res!1257937 e!1918405)))

(assert (=> b!3064167 (= res!1257937 e!1918403)))

(declare-fun res!1257939 () Bool)

(assert (=> b!3064167 (=> (not res!1257939) (not e!1918403))))

(declare-fun lt!1050408 () Bool)

(assert (=> b!3064167 (= res!1257939 lt!1050408)))

(declare-fun d!855567 () Bool)

(declare-fun e!1918400 () Bool)

(assert (=> d!855567 e!1918400))

(declare-fun c!508887 () Bool)

(assert (=> d!855567 (= c!508887 (is-EmptyExpr!9494 r!17423))))

(declare-fun e!1918402 () Bool)

(assert (=> d!855567 (= lt!1050408 e!1918402)))

(declare-fun c!508888 () Bool)

(assert (=> d!855567 (= c!508888 (isEmpty!19554 s!11993))))

(assert (=> d!855567 (validRegex!4227 r!17423)))

(assert (=> d!855567 (= (matchR!4376 r!17423 s!11993) lt!1050408)))

(declare-fun b!3064168 () Bool)

(declare-fun res!1257934 () Bool)

(assert (=> b!3064168 (=> (not res!1257934) (not e!1918403))))

(declare-fun tail!5021 (List!35359) List!35359)

(assert (=> b!3064168 (= res!1257934 (isEmpty!19554 (tail!5021 s!11993)))))

(declare-fun b!3064169 () Bool)

(assert (=> b!3064169 (= e!1918400 e!1918401)))

(declare-fun c!508886 () Bool)

(assert (=> b!3064169 (= c!508886 (is-EmptyLang!9494 r!17423))))

(declare-fun b!3064170 () Bool)

(declare-fun e!1918404 () Bool)

(declare-fun e!1918399 () Bool)

(assert (=> b!3064170 (= e!1918404 e!1918399)))

(declare-fun res!1257935 () Bool)

(assert (=> b!3064170 (=> res!1257935 e!1918399)))

(assert (=> b!3064170 (= res!1257935 call!212167)))

(declare-fun b!3064171 () Bool)

(assert (=> b!3064171 (= e!1918405 e!1918404)))

(declare-fun res!1257936 () Bool)

(assert (=> b!3064171 (=> (not res!1257936) (not e!1918404))))

(assert (=> b!3064171 (= res!1257936 (not lt!1050408))))

(declare-fun b!3064172 () Bool)

(declare-fun res!1257938 () Bool)

(assert (=> b!3064172 (=> res!1257938 e!1918399)))

(assert (=> b!3064172 (= res!1257938 (not (isEmpty!19554 (tail!5021 s!11993))))))

(declare-fun b!3064173 () Bool)

(assert (=> b!3064173 (= e!1918400 (= lt!1050408 call!212167))))

(declare-fun b!3064174 () Bool)

(assert (=> b!3064174 (= e!1918402 (nullable!3140 r!17423))))

(declare-fun b!3064175 () Bool)

(declare-fun derivativeStep!2736 (Regex!9494 C!19174) Regex!9494)

(assert (=> b!3064175 (= e!1918402 (matchR!4376 (derivativeStep!2736 r!17423 (head!6795 s!11993)) (tail!5021 s!11993)))))

(declare-fun b!3064176 () Bool)

(declare-fun res!1257932 () Bool)

(assert (=> b!3064176 (=> (not res!1257932) (not e!1918403))))

(assert (=> b!3064176 (= res!1257932 (not call!212167))))

(declare-fun b!3064177 () Bool)

(assert (=> b!3064177 (= e!1918399 (not (= (head!6795 s!11993) (c!508842 r!17423))))))

(declare-fun b!3064178 () Bool)

(assert (=> b!3064178 (= e!1918401 (not lt!1050408))))

(assert (= (and d!855567 c!508888) b!3064174))

(assert (= (and d!855567 (not c!508888)) b!3064175))

(assert (= (and d!855567 c!508887) b!3064173))

(assert (= (and d!855567 (not c!508887)) b!3064169))

(assert (= (and b!3064169 c!508886) b!3064178))

(assert (= (and b!3064169 (not c!508886)) b!3064166))

(assert (= (and b!3064166 (not res!1257933)) b!3064167))

(assert (= (and b!3064167 res!1257939) b!3064176))

(assert (= (and b!3064176 res!1257932) b!3064168))

(assert (= (and b!3064168 res!1257934) b!3064165))

(assert (= (and b!3064167 (not res!1257937)) b!3064171))

(assert (= (and b!3064171 res!1257936) b!3064170))

(assert (= (and b!3064170 (not res!1257935)) b!3064172))

(assert (= (and b!3064172 (not res!1257938)) b!3064177))

(assert (= (or b!3064173 b!3064170 b!3064176) bm!212162))

(declare-fun m!3382915 () Bool)

(assert (=> b!3064172 m!3382915))

(assert (=> b!3064172 m!3382915))

(declare-fun m!3382917 () Bool)

(assert (=> b!3064172 m!3382917))

(assert (=> bm!212162 m!3382781))

(assert (=> b!3064168 m!3382915))

(assert (=> b!3064168 m!3382915))

(assert (=> b!3064168 m!3382917))

(declare-fun m!3382919 () Bool)

(assert (=> b!3064175 m!3382919))

(assert (=> b!3064175 m!3382919))

(declare-fun m!3382921 () Bool)

(assert (=> b!3064175 m!3382921))

(assert (=> b!3064175 m!3382915))

(assert (=> b!3064175 m!3382921))

(assert (=> b!3064175 m!3382915))

(declare-fun m!3382923 () Bool)

(assert (=> b!3064175 m!3382923))

(assert (=> b!3064165 m!3382919))

(declare-fun m!3382925 () Bool)

(assert (=> b!3064174 m!3382925))

(assert (=> b!3064177 m!3382919))

(assert (=> d!855567 m!3382781))

(assert (=> d!855567 m!3382783))

(assert (=> b!3063917 d!855567))

(declare-fun d!855569 () Bool)

(assert (=> d!855569 (= (matchR!4376 r!17423 s!11993) (matchRSpec!1631 r!17423 s!11993))))

(declare-fun lt!1050411 () Unit!49427)

(declare-fun choose!18147 (Regex!9494 List!35359) Unit!49427)

(assert (=> d!855569 (= lt!1050411 (choose!18147 r!17423 s!11993))))

(assert (=> d!855569 (validRegex!4227 r!17423)))

(assert (=> d!855569 (= (mainMatchTheorem!1631 r!17423 s!11993) lt!1050411)))

(declare-fun bs!532516 () Bool)

(assert (= bs!532516 d!855569))

(assert (=> bs!532516 m!3382789))

(assert (=> bs!532516 m!3382787))

(declare-fun m!3382945 () Bool)

(assert (=> bs!532516 m!3382945))

(assert (=> bs!532516 m!3382783))

(assert (=> b!3063917 d!855569))

(declare-fun d!855573 () Bool)

(assert (=> d!855573 (= (isEmpty!19554 s!11993) (is-Nil!35235 s!11993))))

(assert (=> b!3063916 d!855573))

(declare-fun d!855575 () Bool)

(assert (=> d!855575 (= (isEmptyExpr!551 lt!1050348) (is-EmptyExpr!9494 lt!1050348))))

(assert (=> b!3063925 d!855575))

(declare-fun b!3064179 () Bool)

(declare-fun e!1918410 () Bool)

(assert (=> b!3064179 (= e!1918410 (= (head!6795 Nil!35235) (c!508842 (regOne!19500 r!17423))))))

(declare-fun b!3064180 () Bool)

(declare-fun res!1257941 () Bool)

(declare-fun e!1918412 () Bool)

(assert (=> b!3064180 (=> res!1257941 e!1918412)))

(assert (=> b!3064180 (= res!1257941 (not (is-ElementMatch!9494 (regOne!19500 r!17423))))))

(declare-fun e!1918408 () Bool)

(assert (=> b!3064180 (= e!1918408 e!1918412)))

(declare-fun bm!212163 () Bool)

(declare-fun call!212168 () Bool)

(assert (=> bm!212163 (= call!212168 (isEmpty!19554 Nil!35235))))

(declare-fun b!3064181 () Bool)

(declare-fun res!1257945 () Bool)

(assert (=> b!3064181 (=> res!1257945 e!1918412)))

(assert (=> b!3064181 (= res!1257945 e!1918410)))

(declare-fun res!1257947 () Bool)

(assert (=> b!3064181 (=> (not res!1257947) (not e!1918410))))

(declare-fun lt!1050412 () Bool)

(assert (=> b!3064181 (= res!1257947 lt!1050412)))

(declare-fun d!855577 () Bool)

(declare-fun e!1918407 () Bool)

(assert (=> d!855577 e!1918407))

(declare-fun c!508890 () Bool)

(assert (=> d!855577 (= c!508890 (is-EmptyExpr!9494 (regOne!19500 r!17423)))))

(declare-fun e!1918409 () Bool)

(assert (=> d!855577 (= lt!1050412 e!1918409)))

(declare-fun c!508891 () Bool)

(assert (=> d!855577 (= c!508891 (isEmpty!19554 Nil!35235))))

(assert (=> d!855577 (validRegex!4227 (regOne!19500 r!17423))))

(assert (=> d!855577 (= (matchR!4376 (regOne!19500 r!17423) Nil!35235) lt!1050412)))

(declare-fun b!3064182 () Bool)

(declare-fun res!1257942 () Bool)

(assert (=> b!3064182 (=> (not res!1257942) (not e!1918410))))

(assert (=> b!3064182 (= res!1257942 (isEmpty!19554 (tail!5021 Nil!35235)))))

(declare-fun b!3064183 () Bool)

(assert (=> b!3064183 (= e!1918407 e!1918408)))

(declare-fun c!508889 () Bool)

(assert (=> b!3064183 (= c!508889 (is-EmptyLang!9494 (regOne!19500 r!17423)))))

(declare-fun b!3064184 () Bool)

(declare-fun e!1918411 () Bool)

(declare-fun e!1918406 () Bool)

(assert (=> b!3064184 (= e!1918411 e!1918406)))

(declare-fun res!1257943 () Bool)

(assert (=> b!3064184 (=> res!1257943 e!1918406)))

(assert (=> b!3064184 (= res!1257943 call!212168)))

(declare-fun b!3064185 () Bool)

(assert (=> b!3064185 (= e!1918412 e!1918411)))

(declare-fun res!1257944 () Bool)

(assert (=> b!3064185 (=> (not res!1257944) (not e!1918411))))

(assert (=> b!3064185 (= res!1257944 (not lt!1050412))))

(declare-fun b!3064186 () Bool)

(declare-fun res!1257946 () Bool)

(assert (=> b!3064186 (=> res!1257946 e!1918406)))

(assert (=> b!3064186 (= res!1257946 (not (isEmpty!19554 (tail!5021 Nil!35235))))))

(declare-fun b!3064187 () Bool)

(assert (=> b!3064187 (= e!1918407 (= lt!1050412 call!212168))))

(declare-fun b!3064188 () Bool)

(assert (=> b!3064188 (= e!1918409 (nullable!3140 (regOne!19500 r!17423)))))

(declare-fun b!3064189 () Bool)

(assert (=> b!3064189 (= e!1918409 (matchR!4376 (derivativeStep!2736 (regOne!19500 r!17423) (head!6795 Nil!35235)) (tail!5021 Nil!35235)))))

(declare-fun b!3064190 () Bool)

(declare-fun res!1257940 () Bool)

(assert (=> b!3064190 (=> (not res!1257940) (not e!1918410))))

(assert (=> b!3064190 (= res!1257940 (not call!212168))))

(declare-fun b!3064191 () Bool)

(assert (=> b!3064191 (= e!1918406 (not (= (head!6795 Nil!35235) (c!508842 (regOne!19500 r!17423)))))))

(declare-fun b!3064192 () Bool)

(assert (=> b!3064192 (= e!1918408 (not lt!1050412))))

(assert (= (and d!855577 c!508891) b!3064188))

(assert (= (and d!855577 (not c!508891)) b!3064189))

(assert (= (and d!855577 c!508890) b!3064187))

(assert (= (and d!855577 (not c!508890)) b!3064183))

(assert (= (and b!3064183 c!508889) b!3064192))

(assert (= (and b!3064183 (not c!508889)) b!3064180))

(assert (= (and b!3064180 (not res!1257941)) b!3064181))

(assert (= (and b!3064181 res!1257947) b!3064190))

(assert (= (and b!3064190 res!1257940) b!3064182))

(assert (= (and b!3064182 res!1257942) b!3064179))

(assert (= (and b!3064181 (not res!1257945)) b!3064185))

(assert (= (and b!3064185 res!1257944) b!3064184))

(assert (= (and b!3064184 (not res!1257943)) b!3064186))

(assert (= (and b!3064186 (not res!1257946)) b!3064191))

(assert (= (or b!3064187 b!3064184 b!3064190) bm!212163))

(declare-fun m!3382947 () Bool)

(assert (=> b!3064186 m!3382947))

(assert (=> b!3064186 m!3382947))

(declare-fun m!3382949 () Bool)

(assert (=> b!3064186 m!3382949))

(declare-fun m!3382951 () Bool)

(assert (=> bm!212163 m!3382951))

(assert (=> b!3064182 m!3382947))

(assert (=> b!3064182 m!3382947))

(assert (=> b!3064182 m!3382949))

(declare-fun m!3382953 () Bool)

(assert (=> b!3064189 m!3382953))

(assert (=> b!3064189 m!3382953))

(declare-fun m!3382955 () Bool)

(assert (=> b!3064189 m!3382955))

(assert (=> b!3064189 m!3382947))

(assert (=> b!3064189 m!3382955))

(assert (=> b!3064189 m!3382947))

(declare-fun m!3382957 () Bool)

(assert (=> b!3064189 m!3382957))

(assert (=> b!3064179 m!3382953))

(assert (=> b!3064188 m!3382811))

(assert (=> b!3064191 m!3382953))

(assert (=> d!855577 m!3382951))

(assert (=> d!855577 m!3382801))

(assert (=> b!3063914 d!855577))

(declare-fun b!3064193 () Bool)

(declare-fun e!1918417 () Bool)

(assert (=> b!3064193 (= e!1918417 (= (head!6795 s!11993) (c!508842 lt!1050351)))))

(declare-fun b!3064194 () Bool)

(declare-fun res!1257949 () Bool)

(declare-fun e!1918419 () Bool)

(assert (=> b!3064194 (=> res!1257949 e!1918419)))

(assert (=> b!3064194 (= res!1257949 (not (is-ElementMatch!9494 lt!1050351)))))

(declare-fun e!1918415 () Bool)

(assert (=> b!3064194 (= e!1918415 e!1918419)))

(declare-fun bm!212164 () Bool)

(declare-fun call!212169 () Bool)

(assert (=> bm!212164 (= call!212169 (isEmpty!19554 s!11993))))

(declare-fun b!3064195 () Bool)

(declare-fun res!1257953 () Bool)

(assert (=> b!3064195 (=> res!1257953 e!1918419)))

(assert (=> b!3064195 (= res!1257953 e!1918417)))

(declare-fun res!1257955 () Bool)

(assert (=> b!3064195 (=> (not res!1257955) (not e!1918417))))

(declare-fun lt!1050413 () Bool)

(assert (=> b!3064195 (= res!1257955 lt!1050413)))

(declare-fun d!855579 () Bool)

(declare-fun e!1918414 () Bool)

(assert (=> d!855579 e!1918414))

(declare-fun c!508893 () Bool)

(assert (=> d!855579 (= c!508893 (is-EmptyExpr!9494 lt!1050351))))

(declare-fun e!1918416 () Bool)

(assert (=> d!855579 (= lt!1050413 e!1918416)))

(declare-fun c!508894 () Bool)

(assert (=> d!855579 (= c!508894 (isEmpty!19554 s!11993))))

(assert (=> d!855579 (validRegex!4227 lt!1050351)))

(assert (=> d!855579 (= (matchR!4376 lt!1050351 s!11993) lt!1050413)))

(declare-fun b!3064196 () Bool)

(declare-fun res!1257950 () Bool)

(assert (=> b!3064196 (=> (not res!1257950) (not e!1918417))))

(assert (=> b!3064196 (= res!1257950 (isEmpty!19554 (tail!5021 s!11993)))))

(declare-fun b!3064197 () Bool)

(assert (=> b!3064197 (= e!1918414 e!1918415)))

(declare-fun c!508892 () Bool)

(assert (=> b!3064197 (= c!508892 (is-EmptyLang!9494 lt!1050351))))

(declare-fun b!3064198 () Bool)

(declare-fun e!1918418 () Bool)

(declare-fun e!1918413 () Bool)

(assert (=> b!3064198 (= e!1918418 e!1918413)))

(declare-fun res!1257951 () Bool)

(assert (=> b!3064198 (=> res!1257951 e!1918413)))

(assert (=> b!3064198 (= res!1257951 call!212169)))

(declare-fun b!3064199 () Bool)

(assert (=> b!3064199 (= e!1918419 e!1918418)))

(declare-fun res!1257952 () Bool)

(assert (=> b!3064199 (=> (not res!1257952) (not e!1918418))))

(assert (=> b!3064199 (= res!1257952 (not lt!1050413))))

(declare-fun b!3064200 () Bool)

(declare-fun res!1257954 () Bool)

(assert (=> b!3064200 (=> res!1257954 e!1918413)))

(assert (=> b!3064200 (= res!1257954 (not (isEmpty!19554 (tail!5021 s!11993))))))

(declare-fun b!3064201 () Bool)

(assert (=> b!3064201 (= e!1918414 (= lt!1050413 call!212169))))

(declare-fun b!3064202 () Bool)

(assert (=> b!3064202 (= e!1918416 (nullable!3140 lt!1050351))))

(declare-fun b!3064203 () Bool)

(assert (=> b!3064203 (= e!1918416 (matchR!4376 (derivativeStep!2736 lt!1050351 (head!6795 s!11993)) (tail!5021 s!11993)))))

(declare-fun b!3064204 () Bool)

(declare-fun res!1257948 () Bool)

(assert (=> b!3064204 (=> (not res!1257948) (not e!1918417))))

(assert (=> b!3064204 (= res!1257948 (not call!212169))))

(declare-fun b!3064205 () Bool)

(assert (=> b!3064205 (= e!1918413 (not (= (head!6795 s!11993) (c!508842 lt!1050351))))))

(declare-fun b!3064206 () Bool)

(assert (=> b!3064206 (= e!1918415 (not lt!1050413))))

(assert (= (and d!855579 c!508894) b!3064202))

(assert (= (and d!855579 (not c!508894)) b!3064203))

(assert (= (and d!855579 c!508893) b!3064201))

(assert (= (and d!855579 (not c!508893)) b!3064197))

(assert (= (and b!3064197 c!508892) b!3064206))

(assert (= (and b!3064197 (not c!508892)) b!3064194))

(assert (= (and b!3064194 (not res!1257949)) b!3064195))

(assert (= (and b!3064195 res!1257955) b!3064204))

(assert (= (and b!3064204 res!1257948) b!3064196))

(assert (= (and b!3064196 res!1257950) b!3064193))

(assert (= (and b!3064195 (not res!1257953)) b!3064199))

(assert (= (and b!3064199 res!1257952) b!3064198))

(assert (= (and b!3064198 (not res!1257951)) b!3064200))

(assert (= (and b!3064200 (not res!1257954)) b!3064205))

(assert (= (or b!3064201 b!3064198 b!3064204) bm!212164))

(assert (=> b!3064200 m!3382915))

(assert (=> b!3064200 m!3382915))

(assert (=> b!3064200 m!3382917))

(assert (=> bm!212164 m!3382781))

(assert (=> b!3064196 m!3382915))

(assert (=> b!3064196 m!3382915))

(assert (=> b!3064196 m!3382917))

(assert (=> b!3064203 m!3382919))

(assert (=> b!3064203 m!3382919))

(declare-fun m!3382959 () Bool)

(assert (=> b!3064203 m!3382959))

(assert (=> b!3064203 m!3382915))

(assert (=> b!3064203 m!3382959))

(assert (=> b!3064203 m!3382915))

(declare-fun m!3382961 () Bool)

(assert (=> b!3064203 m!3382961))

(assert (=> b!3064193 m!3382919))

(declare-fun m!3382963 () Bool)

(assert (=> b!3064202 m!3382963))

(assert (=> b!3064205 m!3382919))

(assert (=> d!855579 m!3382781))

(declare-fun m!3382965 () Bool)

(assert (=> d!855579 m!3382965))

(assert (=> b!3063919 d!855579))

(declare-fun b!3064207 () Bool)

(declare-fun e!1918424 () Bool)

(assert (=> b!3064207 (= e!1918424 (= (head!6795 s!11993) (c!508842 (regTwo!19500 r!17423))))))

(declare-fun b!3064208 () Bool)

(declare-fun res!1257957 () Bool)

(declare-fun e!1918426 () Bool)

(assert (=> b!3064208 (=> res!1257957 e!1918426)))

(assert (=> b!3064208 (= res!1257957 (not (is-ElementMatch!9494 (regTwo!19500 r!17423))))))

(declare-fun e!1918422 () Bool)

(assert (=> b!3064208 (= e!1918422 e!1918426)))

(declare-fun bm!212165 () Bool)

(declare-fun call!212170 () Bool)

(assert (=> bm!212165 (= call!212170 (isEmpty!19554 s!11993))))

(declare-fun b!3064209 () Bool)

(declare-fun res!1257961 () Bool)

(assert (=> b!3064209 (=> res!1257961 e!1918426)))

(assert (=> b!3064209 (= res!1257961 e!1918424)))

(declare-fun res!1257963 () Bool)

(assert (=> b!3064209 (=> (not res!1257963) (not e!1918424))))

(declare-fun lt!1050414 () Bool)

(assert (=> b!3064209 (= res!1257963 lt!1050414)))

(declare-fun d!855581 () Bool)

(declare-fun e!1918421 () Bool)

(assert (=> d!855581 e!1918421))

(declare-fun c!508896 () Bool)

(assert (=> d!855581 (= c!508896 (is-EmptyExpr!9494 (regTwo!19500 r!17423)))))

(declare-fun e!1918423 () Bool)

(assert (=> d!855581 (= lt!1050414 e!1918423)))

(declare-fun c!508897 () Bool)

(assert (=> d!855581 (= c!508897 (isEmpty!19554 s!11993))))

(assert (=> d!855581 (validRegex!4227 (regTwo!19500 r!17423))))

(assert (=> d!855581 (= (matchR!4376 (regTwo!19500 r!17423) s!11993) lt!1050414)))

(declare-fun b!3064210 () Bool)

(declare-fun res!1257958 () Bool)

(assert (=> b!3064210 (=> (not res!1257958) (not e!1918424))))

(assert (=> b!3064210 (= res!1257958 (isEmpty!19554 (tail!5021 s!11993)))))

(declare-fun b!3064211 () Bool)

(assert (=> b!3064211 (= e!1918421 e!1918422)))

(declare-fun c!508895 () Bool)

(assert (=> b!3064211 (= c!508895 (is-EmptyLang!9494 (regTwo!19500 r!17423)))))

(declare-fun b!3064212 () Bool)

(declare-fun e!1918425 () Bool)

(declare-fun e!1918420 () Bool)

(assert (=> b!3064212 (= e!1918425 e!1918420)))

(declare-fun res!1257959 () Bool)

(assert (=> b!3064212 (=> res!1257959 e!1918420)))

(assert (=> b!3064212 (= res!1257959 call!212170)))

(declare-fun b!3064213 () Bool)

(assert (=> b!3064213 (= e!1918426 e!1918425)))

(declare-fun res!1257960 () Bool)

(assert (=> b!3064213 (=> (not res!1257960) (not e!1918425))))

(assert (=> b!3064213 (= res!1257960 (not lt!1050414))))

(declare-fun b!3064214 () Bool)

(declare-fun res!1257962 () Bool)

(assert (=> b!3064214 (=> res!1257962 e!1918420)))

(assert (=> b!3064214 (= res!1257962 (not (isEmpty!19554 (tail!5021 s!11993))))))

(declare-fun b!3064215 () Bool)

(assert (=> b!3064215 (= e!1918421 (= lt!1050414 call!212170))))

(declare-fun b!3064216 () Bool)

(assert (=> b!3064216 (= e!1918423 (nullable!3140 (regTwo!19500 r!17423)))))

(declare-fun b!3064217 () Bool)

(assert (=> b!3064217 (= e!1918423 (matchR!4376 (derivativeStep!2736 (regTwo!19500 r!17423) (head!6795 s!11993)) (tail!5021 s!11993)))))

(declare-fun b!3064218 () Bool)

(declare-fun res!1257956 () Bool)

(assert (=> b!3064218 (=> (not res!1257956) (not e!1918424))))

(assert (=> b!3064218 (= res!1257956 (not call!212170))))

(declare-fun b!3064219 () Bool)

(assert (=> b!3064219 (= e!1918420 (not (= (head!6795 s!11993) (c!508842 (regTwo!19500 r!17423)))))))

(declare-fun b!3064220 () Bool)

(assert (=> b!3064220 (= e!1918422 (not lt!1050414))))

(assert (= (and d!855581 c!508897) b!3064216))

(assert (= (and d!855581 (not c!508897)) b!3064217))

(assert (= (and d!855581 c!508896) b!3064215))

(assert (= (and d!855581 (not c!508896)) b!3064211))

(assert (= (and b!3064211 c!508895) b!3064220))

(assert (= (and b!3064211 (not c!508895)) b!3064208))

(assert (= (and b!3064208 (not res!1257957)) b!3064209))

(assert (= (and b!3064209 res!1257963) b!3064218))

(assert (= (and b!3064218 res!1257956) b!3064210))

(assert (= (and b!3064210 res!1257958) b!3064207))

(assert (= (and b!3064209 (not res!1257961)) b!3064213))

(assert (= (and b!3064213 res!1257960) b!3064212))

(assert (= (and b!3064212 (not res!1257959)) b!3064214))

(assert (= (and b!3064214 (not res!1257962)) b!3064219))

(assert (= (or b!3064215 b!3064212 b!3064218) bm!212165))

(assert (=> b!3064214 m!3382915))

(assert (=> b!3064214 m!3382915))

(assert (=> b!3064214 m!3382917))

(assert (=> bm!212165 m!3382781))

(assert (=> b!3064210 m!3382915))

(assert (=> b!3064210 m!3382915))

(assert (=> b!3064210 m!3382917))

(assert (=> b!3064217 m!3382919))

(assert (=> b!3064217 m!3382919))

(declare-fun m!3382967 () Bool)

(assert (=> b!3064217 m!3382967))

(assert (=> b!3064217 m!3382915))

(assert (=> b!3064217 m!3382967))

(assert (=> b!3064217 m!3382915))

(declare-fun m!3382969 () Bool)

(assert (=> b!3064217 m!3382969))

(assert (=> b!3064207 m!3382919))

(declare-fun m!3382971 () Bool)

(assert (=> b!3064216 m!3382971))

(assert (=> b!3064219 m!3382919))

(assert (=> d!855581 m!3382781))

(declare-fun m!3382973 () Bool)

(assert (=> d!855581 m!3382973))

(assert (=> b!3063919 d!855581))

(declare-fun d!855583 () Bool)

(assert (=> d!855583 (= (matchR!4376 (regTwo!19500 r!17423) s!11993) (matchR!4376 (simplify!449 (regTwo!19500 r!17423)) s!11993))))

(declare-fun lt!1050417 () Unit!49427)

(declare-fun choose!18149 (Regex!9494 List!35359) Unit!49427)

(assert (=> d!855583 (= lt!1050417 (choose!18149 (regTwo!19500 r!17423) s!11993))))

(assert (=> d!855583 (validRegex!4227 (regTwo!19500 r!17423))))

(assert (=> d!855583 (= (lemmaSimplifySound!279 (regTwo!19500 r!17423) s!11993) lt!1050417)))

(declare-fun bs!532517 () Bool)

(assert (= bs!532517 d!855583))

(assert (=> bs!532517 m!3382815))

(assert (=> bs!532517 m!3382795))

(assert (=> bs!532517 m!3382973))

(declare-fun m!3382975 () Bool)

(assert (=> bs!532517 m!3382975))

(assert (=> bs!532517 m!3382795))

(declare-fun m!3382977 () Bool)

(assert (=> bs!532517 m!3382977))

(assert (=> b!3063919 d!855583))

(declare-fun b!3064221 () Bool)

(declare-fun e!1918430 () Bool)

(declare-fun call!212173 () Bool)

(assert (=> b!3064221 (= e!1918430 call!212173)))

(declare-fun b!3064222 () Bool)

(declare-fun res!1257968 () Bool)

(declare-fun e!1918432 () Bool)

(assert (=> b!3064222 (=> res!1257968 e!1918432)))

(assert (=> b!3064222 (= res!1257968 (not (is-Concat!14815 r!17423)))))

(declare-fun e!1918429 () Bool)

(assert (=> b!3064222 (= e!1918429 e!1918432)))

(declare-fun b!3064223 () Bool)

(declare-fun e!1918427 () Bool)

(declare-fun call!212172 () Bool)

(assert (=> b!3064223 (= e!1918427 call!212172)))

(declare-fun c!508899 () Bool)

(declare-fun bm!212166 () Bool)

(declare-fun c!508898 () Bool)

(assert (=> bm!212166 (= call!212172 (validRegex!4227 (ite c!508898 (reg!9823 r!17423) (ite c!508899 (regTwo!19501 r!17423) (regOne!19500 r!17423)))))))

(declare-fun b!3064224 () Bool)

(declare-fun e!1918428 () Bool)

(assert (=> b!3064224 (= e!1918428 e!1918429)))

(assert (=> b!3064224 (= c!508899 (is-Union!9494 r!17423))))

(declare-fun bm!212167 () Bool)

(assert (=> bm!212167 (= call!212173 (validRegex!4227 (ite c!508899 (regOne!19501 r!17423) (regTwo!19500 r!17423))))))

(declare-fun d!855585 () Bool)

(declare-fun res!1257964 () Bool)

(declare-fun e!1918433 () Bool)

(assert (=> d!855585 (=> res!1257964 e!1918433)))

(assert (=> d!855585 (= res!1257964 (is-ElementMatch!9494 r!17423))))

(assert (=> d!855585 (= (validRegex!4227 r!17423) e!1918433)))

(declare-fun b!3064225 () Bool)

(assert (=> b!3064225 (= e!1918428 e!1918427)))

(declare-fun res!1257965 () Bool)

(assert (=> b!3064225 (= res!1257965 (not (nullable!3140 (reg!9823 r!17423))))))

(assert (=> b!3064225 (=> (not res!1257965) (not e!1918427))))

(declare-fun b!3064226 () Bool)

(declare-fun e!1918431 () Bool)

(declare-fun call!212171 () Bool)

(assert (=> b!3064226 (= e!1918431 call!212171)))

(declare-fun b!3064227 () Bool)

(assert (=> b!3064227 (= e!1918432 e!1918430)))

(declare-fun res!1257967 () Bool)

(assert (=> b!3064227 (=> (not res!1257967) (not e!1918430))))

(assert (=> b!3064227 (= res!1257967 call!212171)))

(declare-fun b!3064228 () Bool)

(assert (=> b!3064228 (= e!1918433 e!1918428)))

(assert (=> b!3064228 (= c!508898 (is-Star!9494 r!17423))))

(declare-fun bm!212168 () Bool)

(assert (=> bm!212168 (= call!212171 call!212172)))

(declare-fun b!3064229 () Bool)

(declare-fun res!1257966 () Bool)

(assert (=> b!3064229 (=> (not res!1257966) (not e!1918431))))

(assert (=> b!3064229 (= res!1257966 call!212173)))

(assert (=> b!3064229 (= e!1918429 e!1918431)))

(assert (= (and d!855585 (not res!1257964)) b!3064228))

(assert (= (and b!3064228 c!508898) b!3064225))

(assert (= (and b!3064228 (not c!508898)) b!3064224))

(assert (= (and b!3064225 res!1257965) b!3064223))

(assert (= (and b!3064224 c!508899) b!3064229))

(assert (= (and b!3064224 (not c!508899)) b!3064222))

(assert (= (and b!3064229 res!1257966) b!3064226))

(assert (= (and b!3064222 (not res!1257968)) b!3064227))

(assert (= (and b!3064227 res!1257967) b!3064221))

(assert (= (or b!3064229 b!3064221) bm!212167))

(assert (= (or b!3064226 b!3064227) bm!212168))

(assert (= (or b!3064223 bm!212168) bm!212166))

(declare-fun m!3382979 () Bool)

(assert (=> bm!212166 m!3382979))

(declare-fun m!3382981 () Bool)

(assert (=> bm!212167 m!3382981))

(declare-fun m!3382983 () Bool)

(assert (=> b!3064225 m!3382983))

(assert (=> start!292374 d!855585))

(declare-fun d!855587 () Bool)

(assert (=> d!855587 (= (isEmptyLang!545 lt!1050348) (is-EmptyLang!9494 lt!1050348))))

(assert (=> b!3063924 d!855587))

(declare-fun lt!1050438 () Regex!9494)

(declare-fun lt!1050436 () Regex!9494)

(declare-fun bm!212183 () Bool)

(declare-fun c!508922 () Bool)

(declare-fun c!508923 () Bool)

(declare-fun lt!1050433 () Regex!9494)

(declare-fun call!212194 () Bool)

(assert (=> bm!212183 (= call!212194 (isEmptyLang!545 (ite c!508922 lt!1050436 (ite c!508923 lt!1050433 lt!1050438))))))

(declare-fun bm!212184 () Bool)

(declare-fun call!212191 () Bool)

(declare-fun lt!1050437 () Regex!9494)

(assert (=> bm!212184 (= call!212191 (isEmptyExpr!551 (ite c!508922 lt!1050436 lt!1050437)))))

(declare-fun b!3064284 () Bool)

(declare-fun c!508924 () Bool)

(declare-fun e!1918470 () Bool)

(assert (=> b!3064284 (= c!508924 e!1918470)))

(declare-fun res!1257980 () Bool)

(assert (=> b!3064284 (=> res!1257980 e!1918470)))

(assert (=> b!3064284 (= res!1257980 call!212194)))

(declare-fun call!212192 () Regex!9494)

(assert (=> b!3064284 (= lt!1050436 call!212192)))

(declare-fun e!1918465 () Regex!9494)

(declare-fun e!1918472 () Regex!9494)

(assert (=> b!3064284 (= e!1918465 e!1918472)))

(declare-fun bm!212185 () Bool)

(declare-fun call!212190 () Bool)

(assert (=> bm!212185 (= call!212190 call!212194)))

(declare-fun b!3064285 () Bool)

(declare-fun e!1918468 () Regex!9494)

(assert (=> b!3064285 (= e!1918468 e!1918465)))

(assert (=> b!3064285 (= c!508922 (is-Star!9494 (regTwo!19500 r!17423)))))

(declare-fun b!3064286 () Bool)

(declare-fun c!508928 () Bool)

(assert (=> b!3064286 (= c!508928 call!212191)))

(declare-fun e!1918466 () Regex!9494)

(declare-fun e!1918473 () Regex!9494)

(assert (=> b!3064286 (= e!1918466 e!1918473)))

(declare-fun call!212189 () Bool)

(declare-fun lt!1050435 () Regex!9494)

(declare-fun bm!212186 () Bool)

(assert (=> bm!212186 (= call!212189 (isEmptyLang!545 (ite c!508923 lt!1050435 lt!1050437)))))

(declare-fun b!3064287 () Bool)

(declare-fun c!508931 () Bool)

(assert (=> b!3064287 (= c!508931 (is-EmptyExpr!9494 (regTwo!19500 r!17423)))))

(declare-fun e!1918467 () Regex!9494)

(assert (=> b!3064287 (= e!1918467 e!1918468)))

(declare-fun d!855589 () Bool)

(declare-fun e!1918476 () Bool)

(assert (=> d!855589 e!1918476))

(declare-fun res!1257981 () Bool)

(assert (=> d!855589 (=> (not res!1257981) (not e!1918476))))

(declare-fun lt!1050434 () Regex!9494)

(assert (=> d!855589 (= res!1257981 (validRegex!4227 lt!1050434))))

(declare-fun e!1918477 () Regex!9494)

(assert (=> d!855589 (= lt!1050434 e!1918477)))

(declare-fun c!508930 () Bool)

(assert (=> d!855589 (= c!508930 (is-EmptyLang!9494 (regTwo!19500 r!17423)))))

(assert (=> d!855589 (validRegex!4227 (regTwo!19500 r!17423))))

(assert (=> d!855589 (= (simplify!449 (regTwo!19500 r!17423)) lt!1050434)))

(declare-fun b!3064288 () Bool)

(declare-fun e!1918475 () Regex!9494)

(assert (=> b!3064288 (= e!1918475 lt!1050437)))

(declare-fun b!3064289 () Bool)

(declare-fun e!1918471 () Regex!9494)

(assert (=> b!3064289 (= e!1918471 (Union!9494 lt!1050435 lt!1050433))))

(declare-fun b!3064290 () Bool)

(assert (=> b!3064290 (= e!1918473 lt!1050438)))

(declare-fun b!3064291 () Bool)

(assert (=> b!3064291 (= e!1918471 lt!1050435)))

(declare-fun b!3064292 () Bool)

(assert (=> b!3064292 (= e!1918473 e!1918475)))

(declare-fun c!508932 () Bool)

(assert (=> b!3064292 (= c!508932 (isEmptyExpr!551 lt!1050438))))

(declare-fun bm!212187 () Bool)

(declare-fun call!212193 () Regex!9494)

(assert (=> bm!212187 (= call!212193 (simplify!449 (ite c!508923 (regOne!19501 (regTwo!19500 r!17423)) (regTwo!19500 (regTwo!19500 r!17423)))))))

(declare-fun b!3064293 () Bool)

(assert (=> b!3064293 (= e!1918477 e!1918467)))

(declare-fun c!508927 () Bool)

(assert (=> b!3064293 (= c!508927 (is-ElementMatch!9494 (regTwo!19500 r!17423)))))

(declare-fun b!3064294 () Bool)

(declare-fun e!1918474 () Bool)

(assert (=> b!3064294 (= e!1918474 call!212190)))

(declare-fun b!3064295 () Bool)

(assert (=> b!3064295 (= e!1918475 (Concat!14815 lt!1050437 lt!1050438))))

(declare-fun b!3064296 () Bool)

(assert (=> b!3064296 (= e!1918468 EmptyExpr!9494)))

(declare-fun bm!212188 () Bool)

(assert (=> bm!212188 (= call!212192 (simplify!449 (ite c!508922 (reg!9823 (regTwo!19500 r!17423)) (ite c!508923 (regTwo!19501 (regTwo!19500 r!17423)) (regOne!19500 (regTwo!19500 r!17423))))))))

(declare-fun b!3064297 () Bool)

(assert (=> b!3064297 (= e!1918477 EmptyLang!9494)))

(declare-fun b!3064298 () Bool)

(assert (=> b!3064298 (= e!1918476 (= (nullable!3140 lt!1050434) (nullable!3140 (regTwo!19500 r!17423))))))

(declare-fun bm!212189 () Bool)

(declare-fun call!212188 () Regex!9494)

(assert (=> bm!212189 (= call!212188 call!212192)))

(declare-fun b!3064299 () Bool)

(assert (=> b!3064299 (= e!1918467 (regTwo!19500 r!17423))))

(declare-fun b!3064300 () Bool)

(assert (=> b!3064300 (= c!508923 (is-Union!9494 (regTwo!19500 r!17423)))))

(declare-fun e!1918464 () Regex!9494)

(assert (=> b!3064300 (= e!1918465 e!1918464)))

(declare-fun b!3064301 () Bool)

(assert (=> b!3064301 (= e!1918466 EmptyLang!9494)))

(declare-fun b!3064302 () Bool)

(assert (=> b!3064302 (= e!1918472 (Star!9494 lt!1050436))))

(declare-fun b!3064303 () Bool)

(declare-fun e!1918469 () Regex!9494)

(assert (=> b!3064303 (= e!1918469 lt!1050433)))

(declare-fun b!3064304 () Bool)

(assert (=> b!3064304 (= e!1918464 e!1918469)))

(assert (=> b!3064304 (= lt!1050435 call!212193)))

(assert (=> b!3064304 (= lt!1050433 call!212188)))

(declare-fun c!508929 () Bool)

(assert (=> b!3064304 (= c!508929 call!212189)))

(declare-fun b!3064305 () Bool)

(assert (=> b!3064305 (= e!1918464 e!1918466)))

(assert (=> b!3064305 (= lt!1050437 call!212188)))

(assert (=> b!3064305 (= lt!1050438 call!212193)))

(declare-fun res!1257979 () Bool)

(assert (=> b!3064305 (= res!1257979 call!212189)))

(assert (=> b!3064305 (=> res!1257979 e!1918474)))

(declare-fun c!508926 () Bool)

(assert (=> b!3064305 (= c!508926 e!1918474)))

(declare-fun b!3064306 () Bool)

(assert (=> b!3064306 (= e!1918470 call!212191)))

(declare-fun b!3064307 () Bool)

(declare-fun c!508925 () Bool)

(assert (=> b!3064307 (= c!508925 call!212190)))

(assert (=> b!3064307 (= e!1918469 e!1918471)))

(declare-fun b!3064308 () Bool)

(assert (=> b!3064308 (= e!1918472 EmptyExpr!9494)))

(assert (= (and d!855589 c!508930) b!3064297))

(assert (= (and d!855589 (not c!508930)) b!3064293))

(assert (= (and b!3064293 c!508927) b!3064299))

(assert (= (and b!3064293 (not c!508927)) b!3064287))

(assert (= (and b!3064287 c!508931) b!3064296))

(assert (= (and b!3064287 (not c!508931)) b!3064285))

(assert (= (and b!3064285 c!508922) b!3064284))

(assert (= (and b!3064285 (not c!508922)) b!3064300))

(assert (= (and b!3064284 (not res!1257980)) b!3064306))

(assert (= (and b!3064284 c!508924) b!3064308))

(assert (= (and b!3064284 (not c!508924)) b!3064302))

(assert (= (and b!3064300 c!508923) b!3064304))

(assert (= (and b!3064300 (not c!508923)) b!3064305))

(assert (= (and b!3064304 c!508929) b!3064303))

(assert (= (and b!3064304 (not c!508929)) b!3064307))

(assert (= (and b!3064307 c!508925) b!3064291))

(assert (= (and b!3064307 (not c!508925)) b!3064289))

(assert (= (and b!3064305 (not res!1257979)) b!3064294))

(assert (= (and b!3064305 c!508926) b!3064301))

(assert (= (and b!3064305 (not c!508926)) b!3064286))

(assert (= (and b!3064286 c!508928) b!3064290))

(assert (= (and b!3064286 (not c!508928)) b!3064292))

(assert (= (and b!3064292 c!508932) b!3064288))

(assert (= (and b!3064292 (not c!508932)) b!3064295))

(assert (= (or b!3064304 b!3064305) bm!212187))

(assert (= (or b!3064304 b!3064305) bm!212189))

(assert (= (or b!3064304 b!3064305) bm!212186))

(assert (= (or b!3064307 b!3064294) bm!212185))

(assert (= (or b!3064306 b!3064286) bm!212184))

(assert (= (or b!3064284 bm!212189) bm!212188))

(assert (= (or b!3064284 bm!212185) bm!212183))

(assert (= (and d!855589 res!1257981) b!3064298))

(declare-fun m!3382989 () Bool)

(assert (=> b!3064298 m!3382989))

(assert (=> b!3064298 m!3382971))

(declare-fun m!3382991 () Bool)

(assert (=> bm!212184 m!3382991))

(declare-fun m!3382993 () Bool)

(assert (=> bm!212186 m!3382993))

(declare-fun m!3382995 () Bool)

(assert (=> d!855589 m!3382995))

(assert (=> d!855589 m!3382973))

(declare-fun m!3382997 () Bool)

(assert (=> bm!212183 m!3382997))

(declare-fun m!3382999 () Bool)

(assert (=> bm!212188 m!3382999))

(declare-fun m!3383001 () Bool)

(assert (=> b!3064292 m!3383001))

(declare-fun m!3383003 () Bool)

(assert (=> bm!212187 m!3383003))

(assert (=> b!3063924 d!855589))

(declare-fun lt!1050439 () Regex!9494)

(declare-fun bm!212190 () Bool)

(declare-fun c!508933 () Bool)

(declare-fun lt!1050444 () Regex!9494)

(declare-fun c!508934 () Bool)

(declare-fun call!212201 () Bool)

(declare-fun lt!1050442 () Regex!9494)

(assert (=> bm!212190 (= call!212201 (isEmptyLang!545 (ite c!508933 lt!1050442 (ite c!508934 lt!1050439 lt!1050444))))))

(declare-fun call!212198 () Bool)

(declare-fun bm!212191 () Bool)

(declare-fun lt!1050443 () Regex!9494)

(assert (=> bm!212191 (= call!212198 (isEmptyExpr!551 (ite c!508933 lt!1050442 lt!1050443)))))

(declare-fun b!3064309 () Bool)

(declare-fun c!508935 () Bool)

(declare-fun e!1918484 () Bool)

(assert (=> b!3064309 (= c!508935 e!1918484)))

(declare-fun res!1257983 () Bool)

(assert (=> b!3064309 (=> res!1257983 e!1918484)))

(assert (=> b!3064309 (= res!1257983 call!212201)))

(declare-fun call!212199 () Regex!9494)

(assert (=> b!3064309 (= lt!1050442 call!212199)))

(declare-fun e!1918479 () Regex!9494)

(declare-fun e!1918486 () Regex!9494)

(assert (=> b!3064309 (= e!1918479 e!1918486)))

(declare-fun bm!212192 () Bool)

(declare-fun call!212197 () Bool)

(assert (=> bm!212192 (= call!212197 call!212201)))

(declare-fun b!3064310 () Bool)

(declare-fun e!1918482 () Regex!9494)

(assert (=> b!3064310 (= e!1918482 e!1918479)))

(assert (=> b!3064310 (= c!508933 (is-Star!9494 (regOne!19500 r!17423)))))

(declare-fun b!3064311 () Bool)

(declare-fun c!508939 () Bool)

(assert (=> b!3064311 (= c!508939 call!212198)))

(declare-fun e!1918480 () Regex!9494)

(declare-fun e!1918487 () Regex!9494)

(assert (=> b!3064311 (= e!1918480 e!1918487)))

(declare-fun lt!1050441 () Regex!9494)

(declare-fun call!212196 () Bool)

(declare-fun bm!212193 () Bool)

(assert (=> bm!212193 (= call!212196 (isEmptyLang!545 (ite c!508934 lt!1050441 lt!1050443)))))

(declare-fun b!3064312 () Bool)

(declare-fun c!508942 () Bool)

(assert (=> b!3064312 (= c!508942 (is-EmptyExpr!9494 (regOne!19500 r!17423)))))

(declare-fun e!1918481 () Regex!9494)

(assert (=> b!3064312 (= e!1918481 e!1918482)))

(declare-fun d!855593 () Bool)

(declare-fun e!1918490 () Bool)

(assert (=> d!855593 e!1918490))

(declare-fun res!1257984 () Bool)

(assert (=> d!855593 (=> (not res!1257984) (not e!1918490))))

(declare-fun lt!1050440 () Regex!9494)

(assert (=> d!855593 (= res!1257984 (validRegex!4227 lt!1050440))))

(declare-fun e!1918491 () Regex!9494)

(assert (=> d!855593 (= lt!1050440 e!1918491)))

(declare-fun c!508941 () Bool)

(assert (=> d!855593 (= c!508941 (is-EmptyLang!9494 (regOne!19500 r!17423)))))

(assert (=> d!855593 (validRegex!4227 (regOne!19500 r!17423))))

(assert (=> d!855593 (= (simplify!449 (regOne!19500 r!17423)) lt!1050440)))

(declare-fun b!3064313 () Bool)

(declare-fun e!1918489 () Regex!9494)

(assert (=> b!3064313 (= e!1918489 lt!1050443)))

(declare-fun b!3064314 () Bool)

(declare-fun e!1918485 () Regex!9494)

(assert (=> b!3064314 (= e!1918485 (Union!9494 lt!1050441 lt!1050439))))

(declare-fun b!3064315 () Bool)

(assert (=> b!3064315 (= e!1918487 lt!1050444)))

(declare-fun b!3064316 () Bool)

(assert (=> b!3064316 (= e!1918485 lt!1050441)))

(declare-fun b!3064317 () Bool)

(assert (=> b!3064317 (= e!1918487 e!1918489)))

(declare-fun c!508943 () Bool)

(assert (=> b!3064317 (= c!508943 (isEmptyExpr!551 lt!1050444))))

(declare-fun bm!212194 () Bool)

(declare-fun call!212200 () Regex!9494)

(assert (=> bm!212194 (= call!212200 (simplify!449 (ite c!508934 (regOne!19501 (regOne!19500 r!17423)) (regTwo!19500 (regOne!19500 r!17423)))))))

(declare-fun b!3064318 () Bool)

(assert (=> b!3064318 (= e!1918491 e!1918481)))

(declare-fun c!508938 () Bool)

(assert (=> b!3064318 (= c!508938 (is-ElementMatch!9494 (regOne!19500 r!17423)))))

(declare-fun b!3064319 () Bool)

(declare-fun e!1918488 () Bool)

(assert (=> b!3064319 (= e!1918488 call!212197)))

(declare-fun b!3064320 () Bool)

(assert (=> b!3064320 (= e!1918489 (Concat!14815 lt!1050443 lt!1050444))))

(declare-fun b!3064321 () Bool)

(assert (=> b!3064321 (= e!1918482 EmptyExpr!9494)))

(declare-fun bm!212195 () Bool)

(assert (=> bm!212195 (= call!212199 (simplify!449 (ite c!508933 (reg!9823 (regOne!19500 r!17423)) (ite c!508934 (regTwo!19501 (regOne!19500 r!17423)) (regOne!19500 (regOne!19500 r!17423))))))))

(declare-fun b!3064322 () Bool)

(assert (=> b!3064322 (= e!1918491 EmptyLang!9494)))

(declare-fun b!3064324 () Bool)

(assert (=> b!3064324 (= e!1918490 (= (nullable!3140 lt!1050440) (nullable!3140 (regOne!19500 r!17423))))))

(declare-fun bm!212196 () Bool)

(declare-fun call!212195 () Regex!9494)

(assert (=> bm!212196 (= call!212195 call!212199)))

(declare-fun b!3064326 () Bool)

(assert (=> b!3064326 (= e!1918481 (regOne!19500 r!17423))))

(declare-fun b!3064327 () Bool)

(assert (=> b!3064327 (= c!508934 (is-Union!9494 (regOne!19500 r!17423)))))

(declare-fun e!1918478 () Regex!9494)

(assert (=> b!3064327 (= e!1918479 e!1918478)))

(declare-fun b!3064328 () Bool)

(assert (=> b!3064328 (= e!1918480 EmptyLang!9494)))

(declare-fun b!3064329 () Bool)

(assert (=> b!3064329 (= e!1918486 (Star!9494 lt!1050442))))

(declare-fun b!3064330 () Bool)

(declare-fun e!1918483 () Regex!9494)

(assert (=> b!3064330 (= e!1918483 lt!1050439)))

(declare-fun b!3064331 () Bool)

(assert (=> b!3064331 (= e!1918478 e!1918483)))

(assert (=> b!3064331 (= lt!1050441 call!212200)))

(assert (=> b!3064331 (= lt!1050439 call!212195)))

(declare-fun c!508940 () Bool)

(assert (=> b!3064331 (= c!508940 call!212196)))

(declare-fun b!3064332 () Bool)

(assert (=> b!3064332 (= e!1918478 e!1918480)))

(assert (=> b!3064332 (= lt!1050443 call!212195)))

(assert (=> b!3064332 (= lt!1050444 call!212200)))

(declare-fun res!1257982 () Bool)

(assert (=> b!3064332 (= res!1257982 call!212196)))

(assert (=> b!3064332 (=> res!1257982 e!1918488)))

(declare-fun c!508937 () Bool)

(assert (=> b!3064332 (= c!508937 e!1918488)))

(declare-fun b!3064333 () Bool)

(assert (=> b!3064333 (= e!1918484 call!212198)))

(declare-fun b!3064334 () Bool)

(declare-fun c!508936 () Bool)

(assert (=> b!3064334 (= c!508936 call!212197)))

(assert (=> b!3064334 (= e!1918483 e!1918485)))

(declare-fun b!3064335 () Bool)

(assert (=> b!3064335 (= e!1918486 EmptyExpr!9494)))

(assert (= (and d!855593 c!508941) b!3064322))

(assert (= (and d!855593 (not c!508941)) b!3064318))

(assert (= (and b!3064318 c!508938) b!3064326))

(assert (= (and b!3064318 (not c!508938)) b!3064312))

(assert (= (and b!3064312 c!508942) b!3064321))

(assert (= (and b!3064312 (not c!508942)) b!3064310))

(assert (= (and b!3064310 c!508933) b!3064309))

(assert (= (and b!3064310 (not c!508933)) b!3064327))

(assert (= (and b!3064309 (not res!1257983)) b!3064333))

(assert (= (and b!3064309 c!508935) b!3064335))

(assert (= (and b!3064309 (not c!508935)) b!3064329))

(assert (= (and b!3064327 c!508934) b!3064331))

(assert (= (and b!3064327 (not c!508934)) b!3064332))

(assert (= (and b!3064331 c!508940) b!3064330))

(assert (= (and b!3064331 (not c!508940)) b!3064334))

(assert (= (and b!3064334 c!508936) b!3064316))

(assert (= (and b!3064334 (not c!508936)) b!3064314))

(assert (= (and b!3064332 (not res!1257982)) b!3064319))

(assert (= (and b!3064332 c!508937) b!3064328))

(assert (= (and b!3064332 (not c!508937)) b!3064311))

(assert (= (and b!3064311 c!508939) b!3064315))

(assert (= (and b!3064311 (not c!508939)) b!3064317))

(assert (= (and b!3064317 c!508943) b!3064313))

(assert (= (and b!3064317 (not c!508943)) b!3064320))

(assert (= (or b!3064331 b!3064332) bm!212194))

(assert (= (or b!3064331 b!3064332) bm!212196))

(assert (= (or b!3064331 b!3064332) bm!212193))

(assert (= (or b!3064334 b!3064319) bm!212192))

(assert (= (or b!3064333 b!3064311) bm!212191))

(assert (= (or b!3064309 bm!212196) bm!212195))

(assert (= (or b!3064309 bm!212192) bm!212190))

(assert (= (and d!855593 res!1257984) b!3064324))

(declare-fun m!3383005 () Bool)

(assert (=> b!3064324 m!3383005))

(assert (=> b!3064324 m!3382811))

(declare-fun m!3383007 () Bool)

(assert (=> bm!212191 m!3383007))

(declare-fun m!3383009 () Bool)

(assert (=> bm!212193 m!3383009))

(declare-fun m!3383011 () Bool)

(assert (=> d!855593 m!3383011))

(assert (=> d!855593 m!3382801))

(declare-fun m!3383013 () Bool)

(assert (=> bm!212190 m!3383013))

(declare-fun m!3383015 () Bool)

(assert (=> bm!212195 m!3383015))

(declare-fun m!3383017 () Bool)

(assert (=> b!3064317 m!3383017))

(declare-fun m!3383019 () Bool)

(assert (=> bm!212194 m!3383019))

(assert (=> b!3063924 d!855593))

(declare-fun b!3064375 () Bool)

(declare-fun e!1918508 () Bool)

(declare-fun tp!967791 () Bool)

(declare-fun tp!967792 () Bool)

(assert (=> b!3064375 (= e!1918508 (and tp!967791 tp!967792))))

(declare-fun b!3064374 () Bool)

(declare-fun tp!967789 () Bool)

(assert (=> b!3064374 (= e!1918508 tp!967789)))

(declare-fun b!3064373 () Bool)

(declare-fun tp!967788 () Bool)

(declare-fun tp!967790 () Bool)

(assert (=> b!3064373 (= e!1918508 (and tp!967788 tp!967790))))

(declare-fun b!3064372 () Bool)

(assert (=> b!3064372 (= e!1918508 tp_is_empty!16551)))

(assert (=> b!3063922 (= tp!967754 e!1918508)))

(assert (= (and b!3063922 (is-ElementMatch!9494 (regOne!19500 r!17423))) b!3064372))

(assert (= (and b!3063922 (is-Concat!14815 (regOne!19500 r!17423))) b!3064373))

(assert (= (and b!3063922 (is-Star!9494 (regOne!19500 r!17423))) b!3064374))

(assert (= (and b!3063922 (is-Union!9494 (regOne!19500 r!17423))) b!3064375))

(declare-fun b!3064379 () Bool)

(declare-fun e!1918509 () Bool)

(declare-fun tp!967796 () Bool)

(declare-fun tp!967797 () Bool)

(assert (=> b!3064379 (= e!1918509 (and tp!967796 tp!967797))))

(declare-fun b!3064378 () Bool)

(declare-fun tp!967794 () Bool)

(assert (=> b!3064378 (= e!1918509 tp!967794)))

(declare-fun b!3064377 () Bool)

(declare-fun tp!967793 () Bool)

(declare-fun tp!967795 () Bool)

(assert (=> b!3064377 (= e!1918509 (and tp!967793 tp!967795))))

(declare-fun b!3064376 () Bool)

(assert (=> b!3064376 (= e!1918509 tp_is_empty!16551)))

(assert (=> b!3063922 (= tp!967755 e!1918509)))

(assert (= (and b!3063922 (is-ElementMatch!9494 (regTwo!19500 r!17423))) b!3064376))

(assert (= (and b!3063922 (is-Concat!14815 (regTwo!19500 r!17423))) b!3064377))

(assert (= (and b!3063922 (is-Star!9494 (regTwo!19500 r!17423))) b!3064378))

(assert (= (and b!3063922 (is-Union!9494 (regTwo!19500 r!17423))) b!3064379))

(declare-fun b!3064383 () Bool)

(declare-fun e!1918510 () Bool)

(declare-fun tp!967801 () Bool)

(declare-fun tp!967802 () Bool)

(assert (=> b!3064383 (= e!1918510 (and tp!967801 tp!967802))))

(declare-fun b!3064382 () Bool)

(declare-fun tp!967799 () Bool)

(assert (=> b!3064382 (= e!1918510 tp!967799)))

(declare-fun b!3064381 () Bool)

(declare-fun tp!967798 () Bool)

(declare-fun tp!967800 () Bool)

(assert (=> b!3064381 (= e!1918510 (and tp!967798 tp!967800))))

(declare-fun b!3064380 () Bool)

(assert (=> b!3064380 (= e!1918510 tp_is_empty!16551)))

(assert (=> b!3063927 (= tp!967758 e!1918510)))

(assert (= (and b!3063927 (is-ElementMatch!9494 (regOne!19501 r!17423))) b!3064380))

(assert (= (and b!3063927 (is-Concat!14815 (regOne!19501 r!17423))) b!3064381))

(assert (= (and b!3063927 (is-Star!9494 (regOne!19501 r!17423))) b!3064382))

(assert (= (and b!3063927 (is-Union!9494 (regOne!19501 r!17423))) b!3064383))

(declare-fun b!3064387 () Bool)

(declare-fun e!1918511 () Bool)

(declare-fun tp!967806 () Bool)

(declare-fun tp!967807 () Bool)

(assert (=> b!3064387 (= e!1918511 (and tp!967806 tp!967807))))

(declare-fun b!3064386 () Bool)

(declare-fun tp!967804 () Bool)

(assert (=> b!3064386 (= e!1918511 tp!967804)))

(declare-fun b!3064385 () Bool)

(declare-fun tp!967803 () Bool)

(declare-fun tp!967805 () Bool)

(assert (=> b!3064385 (= e!1918511 (and tp!967803 tp!967805))))

(declare-fun b!3064384 () Bool)

(assert (=> b!3064384 (= e!1918511 tp_is_empty!16551)))

(assert (=> b!3063927 (= tp!967757 e!1918511)))

(assert (= (and b!3063927 (is-ElementMatch!9494 (regTwo!19501 r!17423))) b!3064384))

(assert (= (and b!3063927 (is-Concat!14815 (regTwo!19501 r!17423))) b!3064385))

(assert (= (and b!3063927 (is-Star!9494 (regTwo!19501 r!17423))) b!3064386))

(assert (= (and b!3063927 (is-Union!9494 (regTwo!19501 r!17423))) b!3064387))

(declare-fun b!3064391 () Bool)

(declare-fun e!1918512 () Bool)

(declare-fun tp!967811 () Bool)

(declare-fun tp!967812 () Bool)

(assert (=> b!3064391 (= e!1918512 (and tp!967811 tp!967812))))

(declare-fun b!3064390 () Bool)

(declare-fun tp!967809 () Bool)

(assert (=> b!3064390 (= e!1918512 tp!967809)))

(declare-fun b!3064389 () Bool)

(declare-fun tp!967808 () Bool)

(declare-fun tp!967810 () Bool)

(assert (=> b!3064389 (= e!1918512 (and tp!967808 tp!967810))))

(declare-fun b!3064388 () Bool)

(assert (=> b!3064388 (= e!1918512 tp_is_empty!16551)))

(assert (=> b!3063918 (= tp!967756 e!1918512)))

(assert (= (and b!3063918 (is-ElementMatch!9494 (reg!9823 r!17423))) b!3064388))

(assert (= (and b!3063918 (is-Concat!14815 (reg!9823 r!17423))) b!3064389))

(assert (= (and b!3063918 (is-Star!9494 (reg!9823 r!17423))) b!3064390))

(assert (= (and b!3063918 (is-Union!9494 (reg!9823 r!17423))) b!3064391))

(declare-fun b!3064396 () Bool)

(declare-fun e!1918515 () Bool)

(declare-fun tp!967815 () Bool)

(assert (=> b!3064396 (= e!1918515 (and tp_is_empty!16551 tp!967815))))

(assert (=> b!3063923 (= tp!967759 e!1918515)))

(assert (= (and b!3063923 (is-Cons!35235 (t!234424 s!11993))) b!3064396))

(push 1)

(assert (not d!855581))

(assert (not b!3064378))

(assert (not d!855577))

(assert (not b!3064375))

(assert (not bm!212164))

(assert (not b!3064179))

(assert (not b!3064390))

(assert (not b!3064202))

(assert (not b!3064205))

(assert (not bm!212188))

(assert (not b!3064225))

(assert (not b!3064188))

(assert (not b!3064099))

(assert (not b!3064061))

(assert (not d!855569))

(assert (not b!3064373))

(assert (not bm!212159))

(assert (not bm!212195))

(assert (not b!3064219))

(assert (not b!3064165))

(assert (not bm!212143))

(assert (not d!855589))

(assert (not b!3064175))

(assert (not bm!212162))

(assert (not b!3064177))

(assert (not bm!212194))

(assert (not b!3064382))

(assert (not d!855555))

(assert (not bm!212166))

(assert (not b!3064385))

(assert (not b!3064377))

(assert (not b!3064200))

(assert (not bm!212193))

(assert (not b!3064383))

(assert (not b!3064216))

(assert (not b!3064214))

(assert (not d!855579))

(assert (not bm!212165))

(assert (not b!3064386))

(assert (not b!3064105))

(assert (not b!3064172))

(assert (not b!3064057))

(assert (not b!3064374))

(assert (not b!3064191))

(assert (not bm!212186))

(assert (not d!855547))

(assert tp_is_empty!16551)

(assert (not bm!212191))

(assert (not b!3064182))

(assert (not b!3064060))

(assert (not bm!212187))

(assert (not bm!212142))

(assert (not b!3064387))

(assert (not d!855545))

(assert (not b!3064389))

(assert (not b!3064004))

(assert (not b!3064054))

(assert (not bm!212167))

(assert (not b!3064196))

(assert (not b!3064217))

(assert (not bm!212190))

(assert (not b!3064391))

(assert (not b!3064317))

(assert (not b!3064396))

(assert (not b!3064324))

(assert (not b!3064298))

(assert (not b!3064056))

(assert (not b!3064379))

(assert (not b!3064058))

(assert (not b!3064186))

(assert (not bm!212163))

(assert (not b!3064193))

(assert (not d!855563))

(assert (not d!855567))

(assert (not bm!212184))

(assert (not b!3064203))

(assert (not d!855593))

(assert (not b!3064292))

(assert (not d!855549))

(assert (not b!3064189))

(assert (not b!3064168))

(assert (not b!3064210))

(assert (not d!855583))

(assert (not d!855551))

(assert (not bm!212158))

(assert (not bm!212183))

(assert (not b!3064207))

(assert (not b!3064174))

(assert (not b!3064381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

