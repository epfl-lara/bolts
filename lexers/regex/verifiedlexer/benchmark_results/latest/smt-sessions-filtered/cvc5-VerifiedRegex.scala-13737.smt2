; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733714 () Bool)

(assert start!733714)

(declare-fun b!7616244 () Bool)

(assert (=> b!7616244 true))

(assert (=> b!7616244 true))

(declare-fun b!7616242 () Bool)

(declare-fun e!4529220 () Bool)

(declare-fun tp!2223921 () Bool)

(declare-fun tp!2223924 () Bool)

(assert (=> b!7616242 (= e!4529220 (and tp!2223921 tp!2223924))))

(declare-fun b!7616243 () Bool)

(declare-fun tp_is_empty!50891 () Bool)

(assert (=> b!7616243 (= e!4529220 tp_is_empty!50891)))

(declare-fun e!4529219 () Bool)

(declare-fun e!4529221 () Bool)

(assert (=> b!7616244 (= e!4529219 (not e!4529221))))

(declare-fun res!3048928 () Bool)

(assert (=> b!7616244 (=> res!3048928 e!4529221)))

(declare-datatypes ((C!40862 0))(
  ( (C!40863 (val!30871 Int)) )
))
(declare-datatypes ((Regex!20268 0))(
  ( (ElementMatch!20268 (c!1403899 C!40862)) (Concat!29113 (regOne!41048 Regex!20268) (regTwo!41048 Regex!20268)) (EmptyExpr!20268) (Star!20268 (reg!20597 Regex!20268)) (EmptyLang!20268) (Union!20268 (regOne!41049 Regex!20268) (regTwo!41049 Regex!20268)) )
))
(declare-fun r!14126 () Regex!20268)

(declare-fun validRegex!10688 (Regex!20268) Bool)

(assert (=> b!7616244 (= res!3048928 (not (validRegex!10688 (reg!20597 r!14126))))))

(declare-datatypes ((List!73121 0))(
  ( (Nil!72997) (Cons!72997 (h!79445 C!40862) (t!387856 List!73121)) )
))
(declare-fun s!9605 () List!73121)

(declare-fun lambda!468132 () Int)

(declare-datatypes ((tuple2!69098 0))(
  ( (tuple2!69099 (_1!37852 List!73121) (_2!37852 List!73121)) )
))
(declare-datatypes ((Option!17343 0))(
  ( (None!17342) (Some!17342 (v!54477 tuple2!69098)) )
))
(declare-fun isDefined!13959 (Option!17343) Bool)

(declare-fun findConcatSeparation!3373 (Regex!20268 Regex!20268 List!73121 List!73121 List!73121) Option!17343)

(declare-fun Exists!4424 (Int) Bool)

(assert (=> b!7616244 (= (isDefined!13959 (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 Nil!72997 s!9605 s!9605)) (Exists!4424 lambda!468132))))

(declare-datatypes ((Unit!167368 0))(
  ( (Unit!167369) )
))
(declare-fun lt!2655383 () Unit!167368)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3131 (Regex!20268 Regex!20268 List!73121) Unit!167368)

(assert (=> b!7616244 (= lt!2655383 (lemmaFindConcatSeparationEquivalentToExists!3131 (reg!20597 r!14126) r!14126 s!9605))))

(declare-fun b!7616245 () Bool)

(declare-fun tp!2223922 () Bool)

(declare-fun tp!2223925 () Bool)

(assert (=> b!7616245 (= e!4529220 (and tp!2223922 tp!2223925))))

(declare-fun b!7616246 () Bool)

(declare-fun res!3048929 () Bool)

(assert (=> b!7616246 (=> (not res!3048929) (not e!4529219))))

(declare-fun isEmpty!41606 (List!73121) Bool)

(assert (=> b!7616246 (= res!3048929 (not (isEmpty!41606 s!9605)))))

(declare-fun b!7616247 () Bool)

(declare-fun res!3048927 () Bool)

(assert (=> b!7616247 (=> res!3048927 e!4529221)))

(assert (=> b!7616247 (= res!3048927 (not (validRegex!10688 r!14126)))))

(declare-fun b!7616248 () Bool)

(declare-fun tp!2223923 () Bool)

(assert (=> b!7616248 (= e!4529220 tp!2223923)))

(declare-fun res!3048931 () Bool)

(assert (=> start!733714 (=> (not res!3048931) (not e!4529219))))

(assert (=> start!733714 (= res!3048931 (validRegex!10688 r!14126))))

(assert (=> start!733714 e!4529219))

(assert (=> start!733714 e!4529220))

(declare-fun e!4529218 () Bool)

(assert (=> start!733714 e!4529218))

(declare-fun b!7616249 () Bool)

(declare-fun tp!2223920 () Bool)

(assert (=> b!7616249 (= e!4529218 (and tp_is_empty!50891 tp!2223920))))

(declare-fun b!7616250 () Bool)

(declare-fun ++!17590 (List!73121 List!73121) List!73121)

(assert (=> b!7616250 (= e!4529221 (= (++!17590 Nil!72997 s!9605) s!9605))))

(declare-fun b!7616251 () Bool)

(declare-fun res!3048930 () Bool)

(assert (=> b!7616251 (=> (not res!3048930) (not e!4529219))))

(assert (=> b!7616251 (= res!3048930 (and (not (is-EmptyExpr!20268 r!14126)) (not (is-EmptyLang!20268 r!14126)) (not (is-ElementMatch!20268 r!14126)) (not (is-Union!20268 r!14126)) (is-Star!20268 r!14126)))))

(assert (= (and start!733714 res!3048931) b!7616251))

(assert (= (and b!7616251 res!3048930) b!7616246))

(assert (= (and b!7616246 res!3048929) b!7616244))

(assert (= (and b!7616244 (not res!3048928)) b!7616247))

(assert (= (and b!7616247 (not res!3048927)) b!7616250))

(assert (= (and start!733714 (is-ElementMatch!20268 r!14126)) b!7616243))

(assert (= (and start!733714 (is-Concat!29113 r!14126)) b!7616245))

(assert (= (and start!733714 (is-Star!20268 r!14126)) b!7616248))

(assert (= (and start!733714 (is-Union!20268 r!14126)) b!7616242))

(assert (= (and start!733714 (is-Cons!72997 s!9605)) b!7616249))

(declare-fun m!8149722 () Bool)

(assert (=> b!7616247 m!8149722))

(declare-fun m!8149724 () Bool)

(assert (=> b!7616250 m!8149724))

(declare-fun m!8149726 () Bool)

(assert (=> b!7616244 m!8149726))

(declare-fun m!8149728 () Bool)

(assert (=> b!7616244 m!8149728))

(declare-fun m!8149730 () Bool)

(assert (=> b!7616244 m!8149730))

(declare-fun m!8149732 () Bool)

(assert (=> b!7616244 m!8149732))

(assert (=> b!7616244 m!8149726))

(declare-fun m!8149734 () Bool)

(assert (=> b!7616244 m!8149734))

(declare-fun m!8149736 () Bool)

(assert (=> b!7616246 m!8149736))

(assert (=> start!733714 m!8149722))

(push 1)

(assert (not b!7616245))

(assert (not b!7616244))

(assert (not b!7616247))

(assert (not b!7616246))

(assert tp_is_empty!50891)

(assert (not b!7616250))

(assert (not b!7616249))

(assert (not b!7616242))

(assert (not start!733714))

(assert (not b!7616248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2322742 () Bool)

(declare-fun res!3048974 () Bool)

(declare-fun e!4529270 () Bool)

(assert (=> d!2322742 (=> res!3048974 e!4529270)))

(assert (=> d!2322742 (= res!3048974 (is-ElementMatch!20268 r!14126))))

(assert (=> d!2322742 (= (validRegex!10688 r!14126) e!4529270)))

(declare-fun b!7616330 () Bool)

(declare-fun res!3048973 () Bool)

(declare-fun e!4529265 () Bool)

(assert (=> b!7616330 (=> (not res!3048973) (not e!4529265))))

(declare-fun call!699659 () Bool)

(assert (=> b!7616330 (= res!3048973 call!699659)))

(declare-fun e!4529266 () Bool)

(assert (=> b!7616330 (= e!4529266 e!4529265)))

(declare-fun b!7616331 () Bool)

(declare-fun e!4529264 () Bool)

(declare-fun e!4529269 () Bool)

(assert (=> b!7616331 (= e!4529264 e!4529269)))

(declare-fun res!3048972 () Bool)

(declare-fun nullable!8865 (Regex!20268) Bool)

(assert (=> b!7616331 (= res!3048972 (not (nullable!8865 (reg!20597 r!14126))))))

(assert (=> b!7616331 (=> (not res!3048972) (not e!4529269))))

(declare-fun b!7616332 () Bool)

(declare-fun res!3048971 () Bool)

(declare-fun e!4529267 () Bool)

(assert (=> b!7616332 (=> res!3048971 e!4529267)))

(assert (=> b!7616332 (= res!3048971 (not (is-Concat!29113 r!14126)))))

(assert (=> b!7616332 (= e!4529266 e!4529267)))

(declare-fun b!7616333 () Bool)

(declare-fun call!699658 () Bool)

(assert (=> b!7616333 (= e!4529269 call!699658)))

(declare-fun b!7616334 () Bool)

(assert (=> b!7616334 (= e!4529270 e!4529264)))

(declare-fun c!1403910 () Bool)

(assert (=> b!7616334 (= c!1403910 (is-Star!20268 r!14126))))

(declare-fun b!7616335 () Bool)

(assert (=> b!7616335 (= e!4529264 e!4529266)))

(declare-fun c!1403909 () Bool)

(assert (=> b!7616335 (= c!1403909 (is-Union!20268 r!14126))))

(declare-fun b!7616336 () Bool)

(declare-fun e!4529268 () Bool)

(declare-fun call!699657 () Bool)

(assert (=> b!7616336 (= e!4529268 call!699657)))

(declare-fun bm!699652 () Bool)

(assert (=> bm!699652 (= call!699657 call!699658)))

(declare-fun bm!699653 () Bool)

(assert (=> bm!699653 (= call!699658 (validRegex!10688 (ite c!1403910 (reg!20597 r!14126) (ite c!1403909 (regTwo!41049 r!14126) (regTwo!41048 r!14126)))))))

(declare-fun b!7616337 () Bool)

(assert (=> b!7616337 (= e!4529267 e!4529268)))

(declare-fun res!3048975 () Bool)

(assert (=> b!7616337 (=> (not res!3048975) (not e!4529268))))

(assert (=> b!7616337 (= res!3048975 call!699659)))

(declare-fun bm!699654 () Bool)

(assert (=> bm!699654 (= call!699659 (validRegex!10688 (ite c!1403909 (regOne!41049 r!14126) (regOne!41048 r!14126))))))

(declare-fun b!7616338 () Bool)

(assert (=> b!7616338 (= e!4529265 call!699657)))

(assert (= (and d!2322742 (not res!3048974)) b!7616334))

(assert (= (and b!7616334 c!1403910) b!7616331))

(assert (= (and b!7616334 (not c!1403910)) b!7616335))

(assert (= (and b!7616331 res!3048972) b!7616333))

(assert (= (and b!7616335 c!1403909) b!7616330))

(assert (= (and b!7616335 (not c!1403909)) b!7616332))

(assert (= (and b!7616330 res!3048973) b!7616338))

(assert (= (and b!7616332 (not res!3048971)) b!7616337))

(assert (= (and b!7616337 res!3048975) b!7616336))

(assert (= (or b!7616330 b!7616337) bm!699654))

(assert (= (or b!7616338 b!7616336) bm!699652))

(assert (= (or b!7616333 bm!699652) bm!699653))

(declare-fun m!8149754 () Bool)

(assert (=> b!7616331 m!8149754))

(declare-fun m!8149756 () Bool)

(assert (=> bm!699653 m!8149756))

(declare-fun m!8149758 () Bool)

(assert (=> bm!699654 m!8149758))

(assert (=> b!7616247 d!2322742))

(assert (=> start!733714 d!2322742))

(declare-fun d!2322746 () Bool)

(assert (=> d!2322746 (= (isEmpty!41606 s!9605) (is-Nil!72997 s!9605))))

(assert (=> b!7616246 d!2322746))

(declare-fun d!2322748 () Bool)

(declare-fun choose!58755 (Int) Bool)

(assert (=> d!2322748 (= (Exists!4424 lambda!468132) (choose!58755 lambda!468132))))

(declare-fun bs!1942995 () Bool)

(assert (= bs!1942995 d!2322748))

(declare-fun m!8149760 () Bool)

(assert (=> bs!1942995 m!8149760))

(assert (=> b!7616244 d!2322748))

(declare-fun d!2322750 () Bool)

(declare-fun isEmpty!41608 (Option!17343) Bool)

(assert (=> d!2322750 (= (isDefined!13959 (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 Nil!72997 s!9605 s!9605)) (not (isEmpty!41608 (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 Nil!72997 s!9605 s!9605))))))

(declare-fun bs!1942996 () Bool)

(assert (= bs!1942996 d!2322750))

(assert (=> bs!1942996 m!8149726))

(declare-fun m!8149762 () Bool)

(assert (=> bs!1942996 m!8149762))

(assert (=> b!7616244 d!2322750))

(declare-fun b!7616378 () Bool)

(declare-fun e!4529294 () Bool)

(declare-fun matchR!9779 (Regex!20268 List!73121) Bool)

(assert (=> b!7616378 (= e!4529294 (matchR!9779 r!14126 s!9605))))

(declare-fun b!7616379 () Bool)

(declare-fun lt!2655397 () Unit!167368)

(declare-fun lt!2655396 () Unit!167368)

(assert (=> b!7616379 (= lt!2655397 lt!2655396)))

(assert (=> b!7616379 (= (++!17590 (++!17590 Nil!72997 (Cons!72997 (h!79445 s!9605) Nil!72997)) (t!387856 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3209 (List!73121 C!40862 List!73121 List!73121) Unit!167368)

(assert (=> b!7616379 (= lt!2655396 (lemmaMoveElementToOtherListKeepsConcatEq!3209 Nil!72997 (h!79445 s!9605) (t!387856 s!9605) s!9605))))

(declare-fun e!4529295 () Option!17343)

(assert (=> b!7616379 (= e!4529295 (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 (++!17590 Nil!72997 (Cons!72997 (h!79445 s!9605) Nil!72997)) (t!387856 s!9605) s!9605))))

(declare-fun b!7616380 () Bool)

(declare-fun res!3048998 () Bool)

(declare-fun e!4529296 () Bool)

(assert (=> b!7616380 (=> (not res!3048998) (not e!4529296))))

(declare-fun lt!2655398 () Option!17343)

(declare-fun get!25718 (Option!17343) tuple2!69098)

(assert (=> b!7616380 (= res!3048998 (matchR!9779 (reg!20597 r!14126) (_1!37852 (get!25718 lt!2655398))))))

(declare-fun b!7616381 () Bool)

(declare-fun e!4529297 () Bool)

(assert (=> b!7616381 (= e!4529297 (not (isDefined!13959 lt!2655398)))))

(declare-fun b!7616382 () Bool)

(declare-fun res!3048997 () Bool)

(assert (=> b!7616382 (=> (not res!3048997) (not e!4529296))))

(assert (=> b!7616382 (= res!3048997 (matchR!9779 r!14126 (_2!37852 (get!25718 lt!2655398))))))

(declare-fun b!7616383 () Bool)

(assert (=> b!7616383 (= e!4529296 (= (++!17590 (_1!37852 (get!25718 lt!2655398)) (_2!37852 (get!25718 lt!2655398))) s!9605))))

(declare-fun b!7616384 () Bool)

(declare-fun e!4529298 () Option!17343)

(assert (=> b!7616384 (= e!4529298 (Some!17342 (tuple2!69099 Nil!72997 s!9605)))))

(declare-fun d!2322752 () Bool)

(assert (=> d!2322752 e!4529297))

(declare-fun res!3049000 () Bool)

(assert (=> d!2322752 (=> res!3049000 e!4529297)))

(assert (=> d!2322752 (= res!3049000 e!4529296)))

(declare-fun res!3048999 () Bool)

(assert (=> d!2322752 (=> (not res!3048999) (not e!4529296))))

(assert (=> d!2322752 (= res!3048999 (isDefined!13959 lt!2655398))))

(assert (=> d!2322752 (= lt!2655398 e!4529298)))

(declare-fun c!1403920 () Bool)

(assert (=> d!2322752 (= c!1403920 e!4529294)))

(declare-fun res!3049001 () Bool)

(assert (=> d!2322752 (=> (not res!3049001) (not e!4529294))))

(assert (=> d!2322752 (= res!3049001 (matchR!9779 (reg!20597 r!14126) Nil!72997))))

(assert (=> d!2322752 (validRegex!10688 (reg!20597 r!14126))))

(assert (=> d!2322752 (= (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 Nil!72997 s!9605 s!9605) lt!2655398)))

(declare-fun b!7616385 () Bool)

(assert (=> b!7616385 (= e!4529298 e!4529295)))

(declare-fun c!1403921 () Bool)

(assert (=> b!7616385 (= c!1403921 (is-Nil!72997 s!9605))))

(declare-fun b!7616386 () Bool)

(assert (=> b!7616386 (= e!4529295 None!17342)))

(assert (= (and d!2322752 res!3049001) b!7616378))

(assert (= (and d!2322752 c!1403920) b!7616384))

(assert (= (and d!2322752 (not c!1403920)) b!7616385))

(assert (= (and b!7616385 c!1403921) b!7616386))

(assert (= (and b!7616385 (not c!1403921)) b!7616379))

(assert (= (and d!2322752 res!3048999) b!7616380))

(assert (= (and b!7616380 res!3048998) b!7616382))

(assert (= (and b!7616382 res!3048997) b!7616383))

(assert (= (and d!2322752 (not res!3049000)) b!7616381))

(declare-fun m!8149786 () Bool)

(assert (=> b!7616382 m!8149786))

(declare-fun m!8149788 () Bool)

(assert (=> b!7616382 m!8149788))

(declare-fun m!8149790 () Bool)

(assert (=> b!7616379 m!8149790))

(assert (=> b!7616379 m!8149790))

(declare-fun m!8149792 () Bool)

(assert (=> b!7616379 m!8149792))

(declare-fun m!8149794 () Bool)

(assert (=> b!7616379 m!8149794))

(assert (=> b!7616379 m!8149790))

(declare-fun m!8149796 () Bool)

(assert (=> b!7616379 m!8149796))

(declare-fun m!8149798 () Bool)

(assert (=> b!7616378 m!8149798))

(declare-fun m!8149800 () Bool)

(assert (=> b!7616381 m!8149800))

(assert (=> b!7616380 m!8149786))

(declare-fun m!8149802 () Bool)

(assert (=> b!7616380 m!8149802))

(assert (=> d!2322752 m!8149800))

(declare-fun m!8149804 () Bool)

(assert (=> d!2322752 m!8149804))

(assert (=> d!2322752 m!8149730))

(assert (=> b!7616383 m!8149786))

(declare-fun m!8149806 () Bool)

(assert (=> b!7616383 m!8149806))

(assert (=> b!7616244 d!2322752))

(declare-fun d!2322762 () Bool)

(declare-fun res!3049005 () Bool)

(declare-fun e!4529305 () Bool)

(assert (=> d!2322762 (=> res!3049005 e!4529305)))

(assert (=> d!2322762 (= res!3049005 (is-ElementMatch!20268 (reg!20597 r!14126)))))

(assert (=> d!2322762 (= (validRegex!10688 (reg!20597 r!14126)) e!4529305)))

(declare-fun b!7616387 () Bool)

(declare-fun res!3049004 () Bool)

(declare-fun e!4529300 () Bool)

(assert (=> b!7616387 (=> (not res!3049004) (not e!4529300))))

(declare-fun call!699671 () Bool)

(assert (=> b!7616387 (= res!3049004 call!699671)))

(declare-fun e!4529301 () Bool)

(assert (=> b!7616387 (= e!4529301 e!4529300)))

(declare-fun b!7616388 () Bool)

(declare-fun e!4529299 () Bool)

(declare-fun e!4529304 () Bool)

(assert (=> b!7616388 (= e!4529299 e!4529304)))

(declare-fun res!3049003 () Bool)

(assert (=> b!7616388 (= res!3049003 (not (nullable!8865 (reg!20597 (reg!20597 r!14126)))))))

(assert (=> b!7616388 (=> (not res!3049003) (not e!4529304))))

(declare-fun b!7616389 () Bool)

(declare-fun res!3049002 () Bool)

(declare-fun e!4529302 () Bool)

(assert (=> b!7616389 (=> res!3049002 e!4529302)))

(assert (=> b!7616389 (= res!3049002 (not (is-Concat!29113 (reg!20597 r!14126))))))

(assert (=> b!7616389 (= e!4529301 e!4529302)))

(declare-fun b!7616390 () Bool)

(declare-fun call!699670 () Bool)

(assert (=> b!7616390 (= e!4529304 call!699670)))

(declare-fun b!7616391 () Bool)

(assert (=> b!7616391 (= e!4529305 e!4529299)))

(declare-fun c!1403923 () Bool)

(assert (=> b!7616391 (= c!1403923 (is-Star!20268 (reg!20597 r!14126)))))

(declare-fun b!7616392 () Bool)

(assert (=> b!7616392 (= e!4529299 e!4529301)))

(declare-fun c!1403922 () Bool)

(assert (=> b!7616392 (= c!1403922 (is-Union!20268 (reg!20597 r!14126)))))

(declare-fun b!7616393 () Bool)

(declare-fun e!4529303 () Bool)

(declare-fun call!699669 () Bool)

(assert (=> b!7616393 (= e!4529303 call!699669)))

(declare-fun bm!699664 () Bool)

(assert (=> bm!699664 (= call!699669 call!699670)))

(declare-fun bm!699665 () Bool)

(assert (=> bm!699665 (= call!699670 (validRegex!10688 (ite c!1403923 (reg!20597 (reg!20597 r!14126)) (ite c!1403922 (regTwo!41049 (reg!20597 r!14126)) (regTwo!41048 (reg!20597 r!14126))))))))

(declare-fun b!7616394 () Bool)

(assert (=> b!7616394 (= e!4529302 e!4529303)))

(declare-fun res!3049006 () Bool)

(assert (=> b!7616394 (=> (not res!3049006) (not e!4529303))))

(assert (=> b!7616394 (= res!3049006 call!699671)))

(declare-fun bm!699666 () Bool)

(assert (=> bm!699666 (= call!699671 (validRegex!10688 (ite c!1403922 (regOne!41049 (reg!20597 r!14126)) (regOne!41048 (reg!20597 r!14126)))))))

(declare-fun b!7616395 () Bool)

(assert (=> b!7616395 (= e!4529300 call!699669)))

(assert (= (and d!2322762 (not res!3049005)) b!7616391))

(assert (= (and b!7616391 c!1403923) b!7616388))

(assert (= (and b!7616391 (not c!1403923)) b!7616392))

(assert (= (and b!7616388 res!3049003) b!7616390))

(assert (= (and b!7616392 c!1403922) b!7616387))

(assert (= (and b!7616392 (not c!1403922)) b!7616389))

(assert (= (and b!7616387 res!3049004) b!7616395))

(assert (= (and b!7616389 (not res!3049002)) b!7616394))

(assert (= (and b!7616394 res!3049006) b!7616393))

(assert (= (or b!7616387 b!7616394) bm!699666))

(assert (= (or b!7616395 b!7616393) bm!699664))

(assert (= (or b!7616390 bm!699664) bm!699665))

(declare-fun m!8149808 () Bool)

(assert (=> b!7616388 m!8149808))

(declare-fun m!8149810 () Bool)

(assert (=> bm!699665 m!8149810))

(declare-fun m!8149812 () Bool)

(assert (=> bm!699666 m!8149812))

(assert (=> b!7616244 d!2322762))

(declare-fun bs!1942999 () Bool)

(declare-fun d!2322764 () Bool)

(assert (= bs!1942999 (and d!2322764 b!7616244)))

(declare-fun lambda!468138 () Int)

(assert (=> bs!1942999 (= lambda!468138 lambda!468132)))

(assert (=> d!2322764 true))

(assert (=> d!2322764 true))

(assert (=> d!2322764 true))

(assert (=> d!2322764 (= (isDefined!13959 (findConcatSeparation!3373 (reg!20597 r!14126) r!14126 Nil!72997 s!9605 s!9605)) (Exists!4424 lambda!468138))))

(declare-fun lt!2655410 () Unit!167368)

(declare-fun choose!58756 (Regex!20268 Regex!20268 List!73121) Unit!167368)

(assert (=> d!2322764 (= lt!2655410 (choose!58756 (reg!20597 r!14126) r!14126 s!9605))))

(assert (=> d!2322764 (validRegex!10688 (reg!20597 r!14126))))

(assert (=> d!2322764 (= (lemmaFindConcatSeparationEquivalentToExists!3131 (reg!20597 r!14126) r!14126 s!9605) lt!2655410)))

(declare-fun bs!1943000 () Bool)

(assert (= bs!1943000 d!2322764))

(declare-fun m!8149844 () Bool)

(assert (=> bs!1943000 m!8149844))

(declare-fun m!8149846 () Bool)

(assert (=> bs!1943000 m!8149846))

(assert (=> bs!1943000 m!8149726))

(assert (=> bs!1943000 m!8149730))

(assert (=> bs!1943000 m!8149726))

(assert (=> bs!1943000 m!8149734))

(assert (=> b!7616244 d!2322764))

(declare-fun d!2322772 () Bool)

(declare-fun e!4529335 () Bool)

(assert (=> d!2322772 e!4529335))

(declare-fun res!3049035 () Bool)

(assert (=> d!2322772 (=> (not res!3049035) (not e!4529335))))

(declare-fun lt!2655413 () List!73121)

(declare-fun content!15433 (List!73121) (Set C!40862))

(assert (=> d!2322772 (= res!3049035 (= (content!15433 lt!2655413) (set.union (content!15433 Nil!72997) (content!15433 s!9605))))))

(declare-fun e!4529334 () List!73121)

(assert (=> d!2322772 (= lt!2655413 e!4529334)))

(declare-fun c!1403934 () Bool)

(assert (=> d!2322772 (= c!1403934 (is-Nil!72997 Nil!72997))))

(assert (=> d!2322772 (= (++!17590 Nil!72997 s!9605) lt!2655413)))

(declare-fun b!7616444 () Bool)

(assert (=> b!7616444 (= e!4529334 s!9605)))

(declare-fun b!7616446 () Bool)

(declare-fun res!3049036 () Bool)

(assert (=> b!7616446 (=> (not res!3049036) (not e!4529335))))

(declare-fun size!42526 (List!73121) Int)

(assert (=> b!7616446 (= res!3049036 (= (size!42526 lt!2655413) (+ (size!42526 Nil!72997) (size!42526 s!9605))))))

(declare-fun b!7616447 () Bool)

(assert (=> b!7616447 (= e!4529335 (or (not (= s!9605 Nil!72997)) (= lt!2655413 Nil!72997)))))

(declare-fun b!7616445 () Bool)

(assert (=> b!7616445 (= e!4529334 (Cons!72997 (h!79445 Nil!72997) (++!17590 (t!387856 Nil!72997) s!9605)))))

(assert (= (and d!2322772 c!1403934) b!7616444))

(assert (= (and d!2322772 (not c!1403934)) b!7616445))

(assert (= (and d!2322772 res!3049035) b!7616446))

(assert (= (and b!7616446 res!3049036) b!7616447))

(declare-fun m!8149848 () Bool)

(assert (=> d!2322772 m!8149848))

(declare-fun m!8149850 () Bool)

(assert (=> d!2322772 m!8149850))

(declare-fun m!8149852 () Bool)

(assert (=> d!2322772 m!8149852))

(declare-fun m!8149854 () Bool)

(assert (=> b!7616446 m!8149854))

(declare-fun m!8149856 () Bool)

(assert (=> b!7616446 m!8149856))

(declare-fun m!8149858 () Bool)

(assert (=> b!7616446 m!8149858))

(declare-fun m!8149860 () Bool)

(assert (=> b!7616445 m!8149860))

(assert (=> b!7616250 d!2322772))

(declare-fun b!7616464 () Bool)

(declare-fun e!4529340 () Bool)

(declare-fun tp!2223957 () Bool)

(assert (=> b!7616464 (= e!4529340 tp!2223957)))

(declare-fun b!7616462 () Bool)

(assert (=> b!7616462 (= e!4529340 tp_is_empty!50891)))

(declare-fun b!7616465 () Bool)

(declare-fun tp!2223954 () Bool)

(declare-fun tp!2223958 () Bool)

(assert (=> b!7616465 (= e!4529340 (and tp!2223954 tp!2223958))))

(assert (=> b!7616248 (= tp!2223923 e!4529340)))

(declare-fun b!7616463 () Bool)

(declare-fun tp!2223956 () Bool)

(declare-fun tp!2223955 () Bool)

(assert (=> b!7616463 (= e!4529340 (and tp!2223956 tp!2223955))))

(assert (= (and b!7616248 (is-ElementMatch!20268 (reg!20597 r!14126))) b!7616462))

(assert (= (and b!7616248 (is-Concat!29113 (reg!20597 r!14126))) b!7616463))

(assert (= (and b!7616248 (is-Star!20268 (reg!20597 r!14126))) b!7616464))

(assert (= (and b!7616248 (is-Union!20268 (reg!20597 r!14126))) b!7616465))

(declare-fun b!7616468 () Bool)

(declare-fun e!4529341 () Bool)

(declare-fun tp!2223962 () Bool)

(assert (=> b!7616468 (= e!4529341 tp!2223962)))

(declare-fun b!7616466 () Bool)

(assert (=> b!7616466 (= e!4529341 tp_is_empty!50891)))

(declare-fun b!7616469 () Bool)

(declare-fun tp!2223959 () Bool)

(declare-fun tp!2223963 () Bool)

(assert (=> b!7616469 (= e!4529341 (and tp!2223959 tp!2223963))))

(assert (=> b!7616242 (= tp!2223921 e!4529341)))

(declare-fun b!7616467 () Bool)

(declare-fun tp!2223961 () Bool)

(declare-fun tp!2223960 () Bool)

(assert (=> b!7616467 (= e!4529341 (and tp!2223961 tp!2223960))))

(assert (= (and b!7616242 (is-ElementMatch!20268 (regOne!41049 r!14126))) b!7616466))

(assert (= (and b!7616242 (is-Concat!29113 (regOne!41049 r!14126))) b!7616467))

(assert (= (and b!7616242 (is-Star!20268 (regOne!41049 r!14126))) b!7616468))

(assert (= (and b!7616242 (is-Union!20268 (regOne!41049 r!14126))) b!7616469))

(declare-fun b!7616472 () Bool)

(declare-fun e!4529342 () Bool)

(declare-fun tp!2223967 () Bool)

(assert (=> b!7616472 (= e!4529342 tp!2223967)))

(declare-fun b!7616470 () Bool)

(assert (=> b!7616470 (= e!4529342 tp_is_empty!50891)))

(declare-fun b!7616473 () Bool)

(declare-fun tp!2223964 () Bool)

(declare-fun tp!2223968 () Bool)

(assert (=> b!7616473 (= e!4529342 (and tp!2223964 tp!2223968))))

(assert (=> b!7616242 (= tp!2223924 e!4529342)))

(declare-fun b!7616471 () Bool)

(declare-fun tp!2223966 () Bool)

(declare-fun tp!2223965 () Bool)

(assert (=> b!7616471 (= e!4529342 (and tp!2223966 tp!2223965))))

(assert (= (and b!7616242 (is-ElementMatch!20268 (regTwo!41049 r!14126))) b!7616470))

(assert (= (and b!7616242 (is-Concat!29113 (regTwo!41049 r!14126))) b!7616471))

(assert (= (and b!7616242 (is-Star!20268 (regTwo!41049 r!14126))) b!7616472))

(assert (= (and b!7616242 (is-Union!20268 (regTwo!41049 r!14126))) b!7616473))

(declare-fun b!7616476 () Bool)

(declare-fun e!4529343 () Bool)

(declare-fun tp!2223972 () Bool)

(assert (=> b!7616476 (= e!4529343 tp!2223972)))

(declare-fun b!7616474 () Bool)

(assert (=> b!7616474 (= e!4529343 tp_is_empty!50891)))

(declare-fun b!7616477 () Bool)

(declare-fun tp!2223969 () Bool)

(declare-fun tp!2223973 () Bool)

(assert (=> b!7616477 (= e!4529343 (and tp!2223969 tp!2223973))))

(assert (=> b!7616245 (= tp!2223922 e!4529343)))

(declare-fun b!7616475 () Bool)

(declare-fun tp!2223971 () Bool)

(declare-fun tp!2223970 () Bool)

(assert (=> b!7616475 (= e!4529343 (and tp!2223971 tp!2223970))))

(assert (= (and b!7616245 (is-ElementMatch!20268 (regOne!41048 r!14126))) b!7616474))

(assert (= (and b!7616245 (is-Concat!29113 (regOne!41048 r!14126))) b!7616475))

(assert (= (and b!7616245 (is-Star!20268 (regOne!41048 r!14126))) b!7616476))

(assert (= (and b!7616245 (is-Union!20268 (regOne!41048 r!14126))) b!7616477))

(declare-fun b!7616480 () Bool)

(declare-fun e!4529344 () Bool)

(declare-fun tp!2223977 () Bool)

(assert (=> b!7616480 (= e!4529344 tp!2223977)))

(declare-fun b!7616478 () Bool)

(assert (=> b!7616478 (= e!4529344 tp_is_empty!50891)))

(declare-fun b!7616481 () Bool)

(declare-fun tp!2223974 () Bool)

(declare-fun tp!2223978 () Bool)

(assert (=> b!7616481 (= e!4529344 (and tp!2223974 tp!2223978))))

(assert (=> b!7616245 (= tp!2223925 e!4529344)))

(declare-fun b!7616479 () Bool)

(declare-fun tp!2223976 () Bool)

(declare-fun tp!2223975 () Bool)

(assert (=> b!7616479 (= e!4529344 (and tp!2223976 tp!2223975))))

(assert (= (and b!7616245 (is-ElementMatch!20268 (regTwo!41048 r!14126))) b!7616478))

(assert (= (and b!7616245 (is-Concat!29113 (regTwo!41048 r!14126))) b!7616479))

(assert (= (and b!7616245 (is-Star!20268 (regTwo!41048 r!14126))) b!7616480))

(assert (= (and b!7616245 (is-Union!20268 (regTwo!41048 r!14126))) b!7616481))

(declare-fun b!7616486 () Bool)

(declare-fun e!4529347 () Bool)

(declare-fun tp!2223981 () Bool)

(assert (=> b!7616486 (= e!4529347 (and tp_is_empty!50891 tp!2223981))))

(assert (=> b!7616249 (= tp!2223920 e!4529347)))

(assert (= (and b!7616249 (is-Cons!72997 (t!387856 s!9605))) b!7616486))

(push 1)

(assert (not b!7616477))

(assert (not b!7616381))

(assert (not b!7616475))

(assert (not b!7616480))

(assert (not bm!699654))

(assert (not b!7616445))

(assert (not b!7616383))

(assert (not b!7616388))

(assert (not b!7616469))

(assert (not d!2322748))

(assert (not b!7616331))

(assert (not b!7616467))

(assert (not b!7616379))

(assert (not b!7616479))

(assert tp_is_empty!50891)

(assert (not bm!699653))

(assert (not b!7616382))

(assert (not b!7616468))

(assert (not b!7616465))

(assert (not b!7616476))

(assert (not b!7616481))

(assert (not b!7616471))

(assert (not b!7616378))

(assert (not b!7616446))

(assert (not b!7616473))

(assert (not b!7616486))

(assert (not d!2322750))

(assert (not bm!699665))

(assert (not d!2322772))

(assert (not d!2322752))

(assert (not b!7616463))

(assert (not b!7616380))

(assert (not d!2322764))

(assert (not b!7616464))

(assert (not b!7616472))

(assert (not bm!699666))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

