; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667092 () Bool)

(assert start!667092)

(declare-fun b!6949767 () Bool)

(assert (=> b!6949767 true))

(assert (=> b!6949767 true))

(declare-fun b!6949760 () Bool)

(declare-fun e!4179932 () Bool)

(declare-fun tp_is_empty!43245 () Bool)

(assert (=> b!6949760 (= e!4179932 tp_is_empty!43245)))

(declare-fun b!6949761 () Bool)

(declare-fun e!4179935 () Bool)

(declare-fun tp!1915731 () Bool)

(assert (=> b!6949761 (= e!4179935 (and tp_is_empty!43245 tp!1915731))))

(declare-fun b!6949762 () Bool)

(declare-fun tp!1915729 () Bool)

(assert (=> b!6949762 (= e!4179932 tp!1915729)))

(declare-fun b!6949763 () Bool)

(declare-fun e!4179933 () Bool)

(declare-fun tp!1915730 () Bool)

(assert (=> b!6949763 (= e!4179933 (and tp_is_empty!43245 tp!1915730))))

(declare-fun b!6949764 () Bool)

(declare-fun res!2835298 () Bool)

(declare-fun e!4179934 () Bool)

(assert (=> b!6949764 (=> (not res!2835298) (not e!4179934))))

(declare-datatypes ((C!34290 0))(
  ( (C!34291 (val!26847 Int)) )
))
(declare-datatypes ((List!66763 0))(
  ( (Nil!66639) (Cons!66639 (h!73087 C!34290) (t!380506 List!66763)) )
))
(declare-datatypes ((tuple2!67730 0))(
  ( (tuple2!67731 (_1!37168 List!66763) (_2!37168 List!66763)) )
))
(declare-fun cut!47 () tuple2!67730)

(declare-fun s!10388 () List!66763)

(declare-fun ++!15047 (List!66763 List!66763) List!66763)

(assert (=> b!6949764 (= res!2835298 (= (++!15047 (_1!37168 cut!47) (_2!37168 cut!47)) s!10388))))

(declare-fun res!2835297 () Bool)

(assert (=> start!667092 (=> (not res!2835297) (not e!4179934))))

(declare-datatypes ((Regex!17010 0))(
  ( (ElementMatch!17010 (c!1289202 C!34290)) (Concat!25855 (regOne!34532 Regex!17010) (regTwo!34532 Regex!17010)) (EmptyExpr!17010) (Star!17010 (reg!17339 Regex!17010)) (EmptyLang!17010) (Union!17010 (regOne!34533 Regex!17010) (regTwo!34533 Regex!17010)) )
))
(declare-fun rInner!765 () Regex!17010)

(declare-fun validRegex!8716 (Regex!17010) Bool)

(assert (=> start!667092 (= res!2835297 (validRegex!8716 rInner!765))))

(assert (=> start!667092 e!4179934))

(assert (=> start!667092 e!4179932))

(assert (=> start!667092 e!4179933))

(declare-fun e!4179931 () Bool)

(assert (=> start!667092 (and e!4179935 e!4179931)))

(declare-fun b!6949765 () Bool)

(declare-fun tp!1915727 () Bool)

(declare-fun tp!1915733 () Bool)

(assert (=> b!6949765 (= e!4179932 (and tp!1915727 tp!1915733))))

(declare-fun b!6949766 () Bool)

(declare-fun tp!1915732 () Bool)

(declare-fun tp!1915728 () Bool)

(assert (=> b!6949766 (= e!4179932 (and tp!1915732 tp!1915728))))

(declare-fun res!2835299 () Bool)

(assert (=> b!6949767 (=> (not res!2835299) (not e!4179934))))

(declare-fun lambda!396303 () Int)

(declare-fun Exists!4006 (Int) Bool)

(assert (=> b!6949767 (= res!2835299 (not (Exists!4006 lambda!396303)))))

(declare-fun b!6949768 () Bool)

(declare-fun res!2835295 () Bool)

(assert (=> b!6949768 (=> (not res!2835295) (not e!4179934))))

(declare-fun nullable!6823 (Regex!17010) Bool)

(assert (=> b!6949768 (= res!2835295 (not (nullable!6823 rInner!765)))))

(declare-fun b!6949769 () Bool)

(declare-fun tp!1915726 () Bool)

(assert (=> b!6949769 (= e!4179931 (and tp_is_empty!43245 tp!1915726))))

(declare-fun b!6949770 () Bool)

(declare-fun res!2835296 () Bool)

(assert (=> b!6949770 (=> (not res!2835296) (not e!4179934))))

(declare-fun matchR!9139 (Regex!17010 List!66763) Bool)

(assert (=> b!6949770 (= res!2835296 (matchR!9139 rInner!765 (_1!37168 cut!47)))))

(declare-fun b!6949771 () Bool)

(assert (=> b!6949771 (= e!4179934 (not (validRegex!8716 (Star!17010 rInner!765))))))

(assert (= (and start!667092 res!2835297) b!6949768))

(assert (= (and b!6949768 res!2835295) b!6949767))

(assert (= (and b!6949767 res!2835299) b!6949764))

(assert (= (and b!6949764 res!2835298) b!6949770))

(assert (= (and b!6949770 res!2835296) b!6949771))

(assert (= (and start!667092 (is-ElementMatch!17010 rInner!765)) b!6949760))

(assert (= (and start!667092 (is-Concat!25855 rInner!765)) b!6949765))

(assert (= (and start!667092 (is-Star!17010 rInner!765)) b!6949762))

(assert (= (and start!667092 (is-Union!17010 rInner!765)) b!6949766))

(assert (= (and start!667092 (is-Cons!66639 s!10388)) b!6949763))

(assert (= (and start!667092 (is-Cons!66639 (_1!37168 cut!47))) b!6949761))

(assert (= (and start!667092 (is-Cons!66639 (_2!37168 cut!47))) b!6949769))

(declare-fun m!7651992 () Bool)

(assert (=> b!6949768 m!7651992))

(declare-fun m!7651994 () Bool)

(assert (=> b!6949770 m!7651994))

(declare-fun m!7651996 () Bool)

(assert (=> start!667092 m!7651996))

(declare-fun m!7651998 () Bool)

(assert (=> b!6949764 m!7651998))

(declare-fun m!7652000 () Bool)

(assert (=> b!6949771 m!7652000))

(declare-fun m!7652002 () Bool)

(assert (=> b!6949767 m!7652002))

(push 1)

(assert (not b!6949763))

(assert (not b!6949768))

(assert (not b!6949761))

(assert (not b!6949767))

(assert tp_is_empty!43245)

(assert (not b!6949765))

(assert (not b!6949769))

(assert (not b!6949764))

(assert (not start!667092))

(assert (not b!6949762))

(assert (not b!6949771))

(assert (not b!6949766))

(assert (not b!6949770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6949847 () Bool)

(declare-fun e!4179972 () List!66763)

(assert (=> b!6949847 (= e!4179972 (Cons!66639 (h!73087 (_1!37168 cut!47)) (++!15047 (t!380506 (_1!37168 cut!47)) (_2!37168 cut!47))))))

(declare-fun b!6949848 () Bool)

(declare-fun res!2835334 () Bool)

(declare-fun e!4179971 () Bool)

(assert (=> b!6949848 (=> (not res!2835334) (not e!4179971))))

(declare-fun lt!2477876 () List!66763)

(declare-fun size!40822 (List!66763) Int)

(assert (=> b!6949848 (= res!2835334 (= (size!40822 lt!2477876) (+ (size!40822 (_1!37168 cut!47)) (size!40822 (_2!37168 cut!47)))))))

(declare-fun d!2169035 () Bool)

(assert (=> d!2169035 e!4179971))

(declare-fun res!2835333 () Bool)

(assert (=> d!2169035 (=> (not res!2835333) (not e!4179971))))

(declare-fun content!13125 (List!66763) (Set C!34290))

(assert (=> d!2169035 (= res!2835333 (= (content!13125 lt!2477876) (set.union (content!13125 (_1!37168 cut!47)) (content!13125 (_2!37168 cut!47)))))))

(assert (=> d!2169035 (= lt!2477876 e!4179972)))

(declare-fun c!1289210 () Bool)

(assert (=> d!2169035 (= c!1289210 (is-Nil!66639 (_1!37168 cut!47)))))

(assert (=> d!2169035 (= (++!15047 (_1!37168 cut!47) (_2!37168 cut!47)) lt!2477876)))

(declare-fun b!6949849 () Bool)

(assert (=> b!6949849 (= e!4179971 (or (not (= (_2!37168 cut!47) Nil!66639)) (= lt!2477876 (_1!37168 cut!47))))))

(declare-fun b!6949846 () Bool)

(assert (=> b!6949846 (= e!4179972 (_2!37168 cut!47))))

(assert (= (and d!2169035 c!1289210) b!6949846))

(assert (= (and d!2169035 (not c!1289210)) b!6949847))

(assert (= (and d!2169035 res!2835333) b!6949848))

(assert (= (and b!6949848 res!2835334) b!6949849))

(declare-fun m!7652016 () Bool)

(assert (=> b!6949847 m!7652016))

(declare-fun m!7652018 () Bool)

(assert (=> b!6949848 m!7652018))

(declare-fun m!7652020 () Bool)

(assert (=> b!6949848 m!7652020))

(declare-fun m!7652022 () Bool)

(assert (=> b!6949848 m!7652022))

(declare-fun m!7652024 () Bool)

(assert (=> d!2169035 m!7652024))

(declare-fun m!7652026 () Bool)

(assert (=> d!2169035 m!7652026))

(declare-fun m!7652028 () Bool)

(assert (=> d!2169035 m!7652028))

(assert (=> b!6949764 d!2169035))

(declare-fun d!2169037 () Bool)

(declare-fun choose!51794 (Int) Bool)

(assert (=> d!2169037 (= (Exists!4006 lambda!396303) (choose!51794 lambda!396303))))

(declare-fun bs!1857662 () Bool)

(assert (= bs!1857662 d!2169037))

(declare-fun m!7652030 () Bool)

(assert (=> bs!1857662 m!7652030))

(assert (=> b!6949767 d!2169037))

(declare-fun d!2169039 () Bool)

(declare-fun nullableFct!2554 (Regex!17010) Bool)

(assert (=> d!2169039 (= (nullable!6823 rInner!765) (nullableFct!2554 rInner!765))))

(declare-fun bs!1857663 () Bool)

(assert (= bs!1857663 d!2169039))

(declare-fun m!7652032 () Bool)

(assert (=> bs!1857663 m!7652032))

(assert (=> b!6949768 d!2169039))

(declare-fun b!6949877 () Bool)

(declare-fun e!4180000 () Bool)

(declare-fun call!631245 () Bool)

(assert (=> b!6949877 (= e!4180000 call!631245)))

(declare-fun b!6949878 () Bool)

(declare-fun e!4179995 () Bool)

(declare-fun e!4179998 () Bool)

(assert (=> b!6949878 (= e!4179995 e!4179998)))

(declare-fun res!2835353 () Bool)

(assert (=> b!6949878 (=> (not res!2835353) (not e!4179998))))

(assert (=> b!6949878 (= res!2835353 call!631245)))

(declare-fun b!6949879 () Bool)

(declare-fun call!631246 () Bool)

(assert (=> b!6949879 (= e!4179998 call!631246)))

(declare-fun b!6949880 () Bool)

(declare-fun e!4179994 () Bool)

(declare-fun e!4179997 () Bool)

(assert (=> b!6949880 (= e!4179994 e!4179997)))

(declare-fun c!1289218 () Bool)

(assert (=> b!6949880 (= c!1289218 (is-Star!17010 (Star!17010 rInner!765)))))

(declare-fun b!6949881 () Bool)

(declare-fun res!2835350 () Bool)

(assert (=> b!6949881 (=> (not res!2835350) (not e!4180000))))

(assert (=> b!6949881 (= res!2835350 call!631246)))

(declare-fun e!4179996 () Bool)

(assert (=> b!6949881 (= e!4179996 e!4180000)))

(declare-fun b!6949882 () Bool)

(declare-fun res!2835352 () Bool)

(assert (=> b!6949882 (=> res!2835352 e!4179995)))

(assert (=> b!6949882 (= res!2835352 (not (is-Concat!25855 (Star!17010 rInner!765))))))

(assert (=> b!6949882 (= e!4179996 e!4179995)))

(declare-fun bm!631241 () Bool)

(declare-fun c!1289217 () Bool)

(declare-fun call!631247 () Bool)

(assert (=> bm!631241 (= call!631247 (validRegex!8716 (ite c!1289218 (reg!17339 (Star!17010 rInner!765)) (ite c!1289217 (regTwo!34533 (Star!17010 rInner!765)) (regOne!34532 (Star!17010 rInner!765))))))))

(declare-fun b!6949883 () Bool)

(assert (=> b!6949883 (= e!4179997 e!4179996)))

(assert (=> b!6949883 (= c!1289217 (is-Union!17010 (Star!17010 rInner!765)))))

(declare-fun b!6949884 () Bool)

(declare-fun e!4179999 () Bool)

(assert (=> b!6949884 (= e!4179997 e!4179999)))

(declare-fun res!2835354 () Bool)

(assert (=> b!6949884 (= res!2835354 (not (nullable!6823 (reg!17339 (Star!17010 rInner!765)))))))

(assert (=> b!6949884 (=> (not res!2835354) (not e!4179999))))

(declare-fun b!6949885 () Bool)

(assert (=> b!6949885 (= e!4179999 call!631247)))

(declare-fun bm!631242 () Bool)

(assert (=> bm!631242 (= call!631245 call!631247)))

(declare-fun bm!631240 () Bool)

(assert (=> bm!631240 (= call!631246 (validRegex!8716 (ite c!1289217 (regOne!34533 (Star!17010 rInner!765)) (regTwo!34532 (Star!17010 rInner!765)))))))

(declare-fun d!2169041 () Bool)

(declare-fun res!2835351 () Bool)

(assert (=> d!2169041 (=> res!2835351 e!4179994)))

(assert (=> d!2169041 (= res!2835351 (is-ElementMatch!17010 (Star!17010 rInner!765)))))

(assert (=> d!2169041 (= (validRegex!8716 (Star!17010 rInner!765)) e!4179994)))

(assert (= (and d!2169041 (not res!2835351)) b!6949880))

(assert (= (and b!6949880 c!1289218) b!6949884))

(assert (= (and b!6949880 (not c!1289218)) b!6949883))

(assert (= (and b!6949884 res!2835354) b!6949885))

(assert (= (and b!6949883 c!1289217) b!6949881))

(assert (= (and b!6949883 (not c!1289217)) b!6949882))

(assert (= (and b!6949881 res!2835350) b!6949877))

(assert (= (and b!6949882 (not res!2835352)) b!6949878))

(assert (= (and b!6949878 res!2835353) b!6949879))

(assert (= (or b!6949881 b!6949879) bm!631240))

(assert (= (or b!6949877 b!6949878) bm!631242))

(assert (= (or b!6949885 bm!631242) bm!631241))

(declare-fun m!7652040 () Bool)

(assert (=> bm!631241 m!7652040))

(declare-fun m!7652042 () Bool)

(assert (=> b!6949884 m!7652042))

(declare-fun m!7652044 () Bool)

(assert (=> bm!631240 m!7652044))

(assert (=> b!6949771 d!2169041))

(declare-fun b!6949895 () Bool)

(declare-fun e!4180014 () Bool)

(declare-fun call!631251 () Bool)

(assert (=> b!6949895 (= e!4180014 call!631251)))

(declare-fun b!6949896 () Bool)

(declare-fun e!4180009 () Bool)

(declare-fun e!4180012 () Bool)

(assert (=> b!6949896 (= e!4180009 e!4180012)))

(declare-fun res!2835363 () Bool)

(assert (=> b!6949896 (=> (not res!2835363) (not e!4180012))))

(assert (=> b!6949896 (= res!2835363 call!631251)))

(declare-fun b!6949897 () Bool)

(declare-fun call!631252 () Bool)

(assert (=> b!6949897 (= e!4180012 call!631252)))

(declare-fun b!6949898 () Bool)

(declare-fun e!4180008 () Bool)

(declare-fun e!4180011 () Bool)

(assert (=> b!6949898 (= e!4180008 e!4180011)))

(declare-fun c!1289222 () Bool)

(assert (=> b!6949898 (= c!1289222 (is-Star!17010 rInner!765))))

(declare-fun b!6949899 () Bool)

(declare-fun res!2835360 () Bool)

(assert (=> b!6949899 (=> (not res!2835360) (not e!4180014))))

(assert (=> b!6949899 (= res!2835360 call!631252)))

(declare-fun e!4180010 () Bool)

(assert (=> b!6949899 (= e!4180010 e!4180014)))

(declare-fun b!6949900 () Bool)

(declare-fun res!2835362 () Bool)

(assert (=> b!6949900 (=> res!2835362 e!4180009)))

(assert (=> b!6949900 (= res!2835362 (not (is-Concat!25855 rInner!765)))))

(assert (=> b!6949900 (= e!4180010 e!4180009)))

(declare-fun c!1289221 () Bool)

(declare-fun bm!631247 () Bool)

(declare-fun call!631253 () Bool)

(assert (=> bm!631247 (= call!631253 (validRegex!8716 (ite c!1289222 (reg!17339 rInner!765) (ite c!1289221 (regTwo!34533 rInner!765) (regOne!34532 rInner!765)))))))

(declare-fun b!6949901 () Bool)

(assert (=> b!6949901 (= e!4180011 e!4180010)))

(assert (=> b!6949901 (= c!1289221 (is-Union!17010 rInner!765))))

(declare-fun b!6949902 () Bool)

(declare-fun e!4180013 () Bool)

(assert (=> b!6949902 (= e!4180011 e!4180013)))

(declare-fun res!2835364 () Bool)

(assert (=> b!6949902 (= res!2835364 (not (nullable!6823 (reg!17339 rInner!765))))))

(assert (=> b!6949902 (=> (not res!2835364) (not e!4180013))))

(declare-fun b!6949903 () Bool)

(assert (=> b!6949903 (= e!4180013 call!631253)))

(declare-fun bm!631248 () Bool)

(assert (=> bm!631248 (= call!631251 call!631253)))

(declare-fun bm!631246 () Bool)

(assert (=> bm!631246 (= call!631252 (validRegex!8716 (ite c!1289221 (regOne!34533 rInner!765) (regTwo!34532 rInner!765))))))

(declare-fun d!2169045 () Bool)

(declare-fun res!2835361 () Bool)

(assert (=> d!2169045 (=> res!2835361 e!4180008)))

(assert (=> d!2169045 (= res!2835361 (is-ElementMatch!17010 rInner!765))))

(assert (=> d!2169045 (= (validRegex!8716 rInner!765) e!4180008)))

(assert (= (and d!2169045 (not res!2835361)) b!6949898))

(assert (= (and b!6949898 c!1289222) b!6949902))

(assert (= (and b!6949898 (not c!1289222)) b!6949901))

(assert (= (and b!6949902 res!2835364) b!6949903))

(assert (= (and b!6949901 c!1289221) b!6949899))

(assert (= (and b!6949901 (not c!1289221)) b!6949900))

(assert (= (and b!6949899 res!2835360) b!6949895))

(assert (= (and b!6949900 (not res!2835362)) b!6949896))

(assert (= (and b!6949896 res!2835363) b!6949897))

(assert (= (or b!6949899 b!6949897) bm!631246))

(assert (= (or b!6949895 b!6949896) bm!631248))

(assert (= (or b!6949903 bm!631248) bm!631247))

(declare-fun m!7652052 () Bool)

(assert (=> bm!631247 m!7652052))

(declare-fun m!7652054 () Bool)

(assert (=> b!6949902 m!7652054))

(declare-fun m!7652056 () Bool)

(assert (=> bm!631246 m!7652056))

(assert (=> start!667092 d!2169045))

(declare-fun b!6949932 () Bool)

(declare-fun res!2835382 () Bool)

(declare-fun e!4180030 () Bool)

(assert (=> b!6949932 (=> (not res!2835382) (not e!4180030))))

(declare-fun call!631256 () Bool)

(assert (=> b!6949932 (= res!2835382 (not call!631256))))

(declare-fun b!6949933 () Bool)

(declare-fun e!4180032 () Bool)

(declare-fun lt!2477879 () Bool)

(assert (=> b!6949933 (= e!4180032 (= lt!2477879 call!631256))))

(declare-fun b!6949934 () Bool)

(declare-fun e!4180034 () Bool)

(declare-fun e!4180029 () Bool)

(assert (=> b!6949934 (= e!4180034 e!4180029)))

(declare-fun res!2835385 () Bool)

(assert (=> b!6949934 (=> (not res!2835385) (not e!4180029))))

(assert (=> b!6949934 (= res!2835385 (not lt!2477879))))

(declare-fun b!6949935 () Bool)

(declare-fun res!2835383 () Bool)

(assert (=> b!6949935 (=> (not res!2835383) (not e!4180030))))

(declare-fun isEmpty!38897 (List!66763) Bool)

(declare-fun tail!12984 (List!66763) List!66763)

(assert (=> b!6949935 (= res!2835383 (isEmpty!38897 (tail!12984 (_1!37168 cut!47))))))

(declare-fun b!6949936 () Bool)

(declare-fun e!4180033 () Bool)

(declare-fun derivativeStep!5479 (Regex!17010 C!34290) Regex!17010)

(declare-fun head!13932 (List!66763) C!34290)

(assert (=> b!6949936 (= e!4180033 (matchR!9139 (derivativeStep!5479 rInner!765 (head!13932 (_1!37168 cut!47))) (tail!12984 (_1!37168 cut!47))))))

(declare-fun d!2169049 () Bool)

(assert (=> d!2169049 e!4180032))

(declare-fun c!1289230 () Bool)

(assert (=> d!2169049 (= c!1289230 (is-EmptyExpr!17010 rInner!765))))

(assert (=> d!2169049 (= lt!2477879 e!4180033)))

(declare-fun c!1289229 () Bool)

(assert (=> d!2169049 (= c!1289229 (isEmpty!38897 (_1!37168 cut!47)))))

(assert (=> d!2169049 (validRegex!8716 rInner!765)))

(assert (=> d!2169049 (= (matchR!9139 rInner!765 (_1!37168 cut!47)) lt!2477879)))

(declare-fun b!6949937 () Bool)

(declare-fun e!4180035 () Bool)

(assert (=> b!6949937 (= e!4180032 e!4180035)))

(declare-fun c!1289231 () Bool)

(assert (=> b!6949937 (= c!1289231 (is-EmptyLang!17010 rInner!765))))

(declare-fun b!6949938 () Bool)

(assert (=> b!6949938 (= e!4180030 (= (head!13932 (_1!37168 cut!47)) (c!1289202 rInner!765)))))

(declare-fun b!6949939 () Bool)

(assert (=> b!6949939 (= e!4180035 (not lt!2477879))))

(declare-fun bm!631251 () Bool)

(assert (=> bm!631251 (= call!631256 (isEmpty!38897 (_1!37168 cut!47)))))

(declare-fun b!6949940 () Bool)

(assert (=> b!6949940 (= e!4180033 (nullable!6823 rInner!765))))

(declare-fun b!6949941 () Bool)

(declare-fun res!2835381 () Bool)

(declare-fun e!4180031 () Bool)

(assert (=> b!6949941 (=> res!2835381 e!4180031)))

(assert (=> b!6949941 (= res!2835381 (not (isEmpty!38897 (tail!12984 (_1!37168 cut!47)))))))

(declare-fun b!6949942 () Bool)

(assert (=> b!6949942 (= e!4180029 e!4180031)))

(declare-fun res!2835384 () Bool)

(assert (=> b!6949942 (=> res!2835384 e!4180031)))

(assert (=> b!6949942 (= res!2835384 call!631256)))

(declare-fun b!6949943 () Bool)

(declare-fun res!2835386 () Bool)

(assert (=> b!6949943 (=> res!2835386 e!4180034)))

(assert (=> b!6949943 (= res!2835386 e!4180030)))

(declare-fun res!2835388 () Bool)

(assert (=> b!6949943 (=> (not res!2835388) (not e!4180030))))

(assert (=> b!6949943 (= res!2835388 lt!2477879)))

(declare-fun b!6949944 () Bool)

(assert (=> b!6949944 (= e!4180031 (not (= (head!13932 (_1!37168 cut!47)) (c!1289202 rInner!765))))))

(declare-fun b!6949945 () Bool)

(declare-fun res!2835387 () Bool)

(assert (=> b!6949945 (=> res!2835387 e!4180034)))

(assert (=> b!6949945 (= res!2835387 (not (is-ElementMatch!17010 rInner!765)))))

(assert (=> b!6949945 (= e!4180035 e!4180034)))

(assert (= (and d!2169049 c!1289229) b!6949940))

(assert (= (and d!2169049 (not c!1289229)) b!6949936))

(assert (= (and d!2169049 c!1289230) b!6949933))

(assert (= (and d!2169049 (not c!1289230)) b!6949937))

(assert (= (and b!6949937 c!1289231) b!6949939))

(assert (= (and b!6949937 (not c!1289231)) b!6949945))

(assert (= (and b!6949945 (not res!2835387)) b!6949943))

(assert (= (and b!6949943 res!2835388) b!6949932))

(assert (= (and b!6949932 res!2835382) b!6949935))

(assert (= (and b!6949935 res!2835383) b!6949938))

(assert (= (and b!6949943 (not res!2835386)) b!6949934))

(assert (= (and b!6949934 res!2835385) b!6949942))

(assert (= (and b!6949942 (not res!2835384)) b!6949941))

(assert (= (and b!6949941 (not res!2835381)) b!6949944))

(assert (= (or b!6949933 b!6949932 b!6949942) bm!631251))

(declare-fun m!7652058 () Bool)

(assert (=> b!6949938 m!7652058))

(assert (=> b!6949944 m!7652058))

(declare-fun m!7652060 () Bool)

(assert (=> d!2169049 m!7652060))

(assert (=> d!2169049 m!7651996))

(assert (=> b!6949940 m!7651992))

(assert (=> b!6949936 m!7652058))

(assert (=> b!6949936 m!7652058))

(declare-fun m!7652062 () Bool)

(assert (=> b!6949936 m!7652062))

(declare-fun m!7652064 () Bool)

(assert (=> b!6949936 m!7652064))

(assert (=> b!6949936 m!7652062))

(assert (=> b!6949936 m!7652064))

(declare-fun m!7652066 () Bool)

(assert (=> b!6949936 m!7652066))

(assert (=> bm!631251 m!7652060))

(assert (=> b!6949941 m!7652064))

(assert (=> b!6949941 m!7652064))

(declare-fun m!7652068 () Bool)

(assert (=> b!6949941 m!7652068))

(assert (=> b!6949935 m!7652064))

(assert (=> b!6949935 m!7652064))

(assert (=> b!6949935 m!7652068))

(assert (=> b!6949770 d!2169049))

(declare-fun b!6949962 () Bool)

(declare-fun e!4180044 () Bool)

(declare-fun tp!1915760 () Bool)

(assert (=> b!6949962 (= e!4180044 (and tp_is_empty!43245 tp!1915760))))

(assert (=> b!6949763 (= tp!1915730 e!4180044)))

(assert (= (and b!6949763 (is-Cons!66639 (t!380506 s!10388))) b!6949962))

(declare-fun b!6949964 () Bool)

(declare-fun e!4180047 () Bool)

(declare-fun tp!1915761 () Bool)

(assert (=> b!6949964 (= e!4180047 (and tp_is_empty!43245 tp!1915761))))

(assert (=> b!6949769 (= tp!1915726 e!4180047)))

(assert (= (and b!6949769 (is-Cons!66639 (t!380506 (_2!37168 cut!47)))) b!6949964))

(declare-fun b!6949990 () Bool)

(declare-fun e!4180056 () Bool)

(assert (=> b!6949990 (= e!4180056 tp_is_empty!43245)))

(assert (=> b!6949762 (= tp!1915729 e!4180056)))

(declare-fun b!6949993 () Bool)

(declare-fun tp!1915776 () Bool)

(declare-fun tp!1915772 () Bool)

(assert (=> b!6949993 (= e!4180056 (and tp!1915776 tp!1915772))))

(declare-fun b!6949992 () Bool)

(declare-fun tp!1915774 () Bool)

(assert (=> b!6949992 (= e!4180056 tp!1915774)))

(declare-fun b!6949991 () Bool)

(declare-fun tp!1915773 () Bool)

(declare-fun tp!1915775 () Bool)

(assert (=> b!6949991 (= e!4180056 (and tp!1915773 tp!1915775))))

(assert (= (and b!6949762 (is-ElementMatch!17010 (reg!17339 rInner!765))) b!6949990))

(assert (= (and b!6949762 (is-Concat!25855 (reg!17339 rInner!765))) b!6949991))

(assert (= (and b!6949762 (is-Star!17010 (reg!17339 rInner!765))) b!6949992))

(assert (= (and b!6949762 (is-Union!17010 (reg!17339 rInner!765))) b!6949993))

(declare-fun b!6949994 () Bool)

(declare-fun e!4180057 () Bool)

(assert (=> b!6949994 (= e!4180057 tp_is_empty!43245)))

(assert (=> b!6949766 (= tp!1915732 e!4180057)))

(declare-fun b!6949997 () Bool)

(declare-fun tp!1915781 () Bool)

(declare-fun tp!1915777 () Bool)

(assert (=> b!6949997 (= e!4180057 (and tp!1915781 tp!1915777))))

(declare-fun b!6949996 () Bool)

(declare-fun tp!1915779 () Bool)

(assert (=> b!6949996 (= e!4180057 tp!1915779)))

(declare-fun b!6949995 () Bool)

(declare-fun tp!1915778 () Bool)

(declare-fun tp!1915780 () Bool)

(assert (=> b!6949995 (= e!4180057 (and tp!1915778 tp!1915780))))

(assert (= (and b!6949766 (is-ElementMatch!17010 (regOne!34533 rInner!765))) b!6949994))

(assert (= (and b!6949766 (is-Concat!25855 (regOne!34533 rInner!765))) b!6949995))

(assert (= (and b!6949766 (is-Star!17010 (regOne!34533 rInner!765))) b!6949996))

(assert (= (and b!6949766 (is-Union!17010 (regOne!34533 rInner!765))) b!6949997))

(declare-fun b!6949998 () Bool)

(declare-fun e!4180058 () Bool)

(assert (=> b!6949998 (= e!4180058 tp_is_empty!43245)))

(assert (=> b!6949766 (= tp!1915728 e!4180058)))

(declare-fun b!6950001 () Bool)

(declare-fun tp!1915786 () Bool)

(declare-fun tp!1915782 () Bool)

(assert (=> b!6950001 (= e!4180058 (and tp!1915786 tp!1915782))))

(declare-fun b!6950000 () Bool)

(declare-fun tp!1915784 () Bool)

(assert (=> b!6950000 (= e!4180058 tp!1915784)))

(declare-fun b!6949999 () Bool)

(declare-fun tp!1915783 () Bool)

(declare-fun tp!1915785 () Bool)

(assert (=> b!6949999 (= e!4180058 (and tp!1915783 tp!1915785))))

(assert (= (and b!6949766 (is-ElementMatch!17010 (regTwo!34533 rInner!765))) b!6949998))

(assert (= (and b!6949766 (is-Concat!25855 (regTwo!34533 rInner!765))) b!6949999))

(assert (= (and b!6949766 (is-Star!17010 (regTwo!34533 rInner!765))) b!6950000))

(assert (= (and b!6949766 (is-Union!17010 (regTwo!34533 rInner!765))) b!6950001))

(declare-fun b!6950002 () Bool)

(declare-fun e!4180059 () Bool)

(declare-fun tp!1915787 () Bool)

(assert (=> b!6950002 (= e!4180059 (and tp_is_empty!43245 tp!1915787))))

(assert (=> b!6949761 (= tp!1915731 e!4180059)))

(assert (= (and b!6949761 (is-Cons!66639 (t!380506 (_1!37168 cut!47)))) b!6950002))

(declare-fun b!6950003 () Bool)

(declare-fun e!4180060 () Bool)

(assert (=> b!6950003 (= e!4180060 tp_is_empty!43245)))

(assert (=> b!6949765 (= tp!1915727 e!4180060)))

(declare-fun b!6950006 () Bool)

(declare-fun tp!1915792 () Bool)

(declare-fun tp!1915788 () Bool)

(assert (=> b!6950006 (= e!4180060 (and tp!1915792 tp!1915788))))

(declare-fun b!6950005 () Bool)

(declare-fun tp!1915790 () Bool)

(assert (=> b!6950005 (= e!4180060 tp!1915790)))

(declare-fun b!6950004 () Bool)

(declare-fun tp!1915789 () Bool)

(declare-fun tp!1915791 () Bool)

(assert (=> b!6950004 (= e!4180060 (and tp!1915789 tp!1915791))))

(assert (= (and b!6949765 (is-ElementMatch!17010 (regOne!34532 rInner!765))) b!6950003))

(assert (= (and b!6949765 (is-Concat!25855 (regOne!34532 rInner!765))) b!6950004))

(assert (= (and b!6949765 (is-Star!17010 (regOne!34532 rInner!765))) b!6950005))

(assert (= (and b!6949765 (is-Union!17010 (regOne!34532 rInner!765))) b!6950006))

(declare-fun b!6950007 () Bool)

(declare-fun e!4180061 () Bool)

(assert (=> b!6950007 (= e!4180061 tp_is_empty!43245)))

(assert (=> b!6949765 (= tp!1915733 e!4180061)))

(declare-fun b!6950010 () Bool)

(declare-fun tp!1915797 () Bool)

(declare-fun tp!1915793 () Bool)

(assert (=> b!6950010 (= e!4180061 (and tp!1915797 tp!1915793))))

(declare-fun b!6950009 () Bool)

(declare-fun tp!1915795 () Bool)

(assert (=> b!6950009 (= e!4180061 tp!1915795)))

(declare-fun b!6950008 () Bool)

(declare-fun tp!1915794 () Bool)

(declare-fun tp!1915796 () Bool)

(assert (=> b!6950008 (= e!4180061 (and tp!1915794 tp!1915796))))

(assert (= (and b!6949765 (is-ElementMatch!17010 (regTwo!34532 rInner!765))) b!6950007))

(assert (= (and b!6949765 (is-Concat!25855 (regTwo!34532 rInner!765))) b!6950008))

(assert (= (and b!6949765 (is-Star!17010 (regTwo!34532 rInner!765))) b!6950009))

(assert (= (and b!6949765 (is-Union!17010 (regTwo!34532 rInner!765))) b!6950010))

(push 1)

(assert (not bm!631247))

(assert (not bm!631251))

(assert (not b!6950005))

(assert (not b!6949993))

(assert (not b!6950000))

(assert (not d!2169039))

(assert (not b!6950006))

(assert (not b!6949940))

(assert (not b!6950008))

(assert (not b!6950002))

(assert (not b!6949991))

(assert (not b!6949962))

(assert (not b!6949902))

(assert (not b!6950004))

(assert (not b!6949992))

(assert (not b!6949944))

(assert (not b!6949935))

(assert (not b!6950009))

(assert (not b!6949999))

(assert (not d!2169037))

(assert (not b!6949847))

(assert tp_is_empty!43245)

(assert (not b!6949936))

(assert (not b!6950001))

(assert (not bm!631246))

(assert (not b!6949996))

(assert (not b!6950010))

(assert (not bm!631241))

(assert (not b!6949941))

(assert (not d!2169049))

(assert (not b!6949938))

(assert (not b!6949848))

(assert (not b!6949884))

(assert (not b!6949997))

(assert (not bm!631240))

(assert (not b!6949995))

(assert (not b!6949964))

(assert (not d!2169035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

