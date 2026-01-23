; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738710 () Bool)

(assert start!738710)

(declare-fun b!7747774 () Bool)

(assert (=> b!7747774 true))

(assert (=> b!7747774 true))

(declare-fun bs!1965641 () Bool)

(declare-fun b!7747786 () Bool)

(assert (= bs!1965641 (and b!7747786 b!7747774)))

(declare-fun lambda!471805 () Int)

(declare-fun lambda!471804 () Int)

(assert (=> bs!1965641 (not (= lambda!471805 lambda!471804))))

(assert (=> b!7747786 true))

(assert (=> b!7747786 true))

(declare-fun b!7747770 () Bool)

(declare-fun e!4593303 () Bool)

(declare-fun tp!2273203 () Bool)

(declare-fun tp!2273206 () Bool)

(assert (=> b!7747770 (= e!4593303 (and tp!2273203 tp!2273206))))

(declare-fun b!7747772 () Bool)

(declare-fun res!3089226 () Bool)

(declare-fun e!4593304 () Bool)

(assert (=> b!7747772 (=> res!3089226 e!4593304)))

(declare-datatypes ((C!41510 0))(
  ( (C!41511 (val!31195 Int)) )
))
(declare-datatypes ((List!73439 0))(
  ( (Nil!73315) (Cons!73315 (h!79763 C!41510) (t!388174 List!73439)) )
))
(declare-fun s!9605 () List!73439)

(declare-fun ++!17791 (List!73439 List!73439) List!73439)

(assert (=> b!7747772 (= res!3089226 (not (= (++!17791 Nil!73315 s!9605) s!9605)))))

(declare-fun b!7747773 () Bool)

(declare-fun e!4593300 () Bool)

(assert (=> b!7747773 (= e!4593300 false)))

(declare-fun e!4593302 () Bool)

(declare-fun e!4593301 () Bool)

(assert (=> b!7747774 (= e!4593302 (not e!4593301))))

(declare-fun res!3089225 () Bool)

(assert (=> b!7747774 (=> res!3089225 e!4593301)))

(declare-datatypes ((Regex!20592 0))(
  ( (ElementMatch!20592 (c!1429038 C!41510)) (Concat!29437 (regOne!41696 Regex!20592) (regTwo!41696 Regex!20592)) (EmptyExpr!20592) (Star!20592 (reg!20921 Regex!20592)) (EmptyLang!20592) (Union!20592 (regOne!41697 Regex!20592) (regTwo!41697 Regex!20592)) )
))
(declare-fun r!14126 () Regex!20592)

(declare-fun matchR!10084 (Regex!20592 List!73439) Bool)

(assert (=> b!7747774 (= res!3089225 (matchR!10084 r!14126 s!9605))))

(declare-fun lt!2668924 () Bool)

(declare-fun Exists!4713 (Int) Bool)

(assert (=> b!7747774 (= lt!2668924 (Exists!4713 lambda!471804))))

(declare-datatypes ((tuple2!69638 0))(
  ( (tuple2!69639 (_1!38122 List!73439) (_2!38122 List!73439)) )
))
(declare-datatypes ((Option!17613 0))(
  ( (None!17612) (Some!17612 (v!54747 tuple2!69638)) )
))
(declare-fun lt!2668925 () Option!17613)

(declare-fun isDefined!14229 (Option!17613) Bool)

(assert (=> b!7747774 (= lt!2668924 (isDefined!14229 lt!2668925))))

(declare-fun findConcatSeparation!3643 (Regex!20592 Regex!20592 List!73439 List!73439 List!73439) Option!17613)

(assert (=> b!7747774 (= lt!2668925 (findConcatSeparation!3643 (regOne!41696 r!14126) (regTwo!41696 r!14126) Nil!73315 s!9605 s!9605))))

(declare-datatypes ((Unit!168292 0))(
  ( (Unit!168293) )
))
(declare-fun lt!2668929 () Unit!168292)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3401 (Regex!20592 Regex!20592 List!73439) Unit!168292)

(assert (=> b!7747774 (= lt!2668929 (lemmaFindConcatSeparationEquivalentToExists!3401 (regOne!41696 r!14126) (regTwo!41696 r!14126) s!9605))))

(declare-fun b!7747775 () Bool)

(declare-fun e!4593298 () Bool)

(declare-fun tp_is_empty!51539 () Bool)

(declare-fun tp!2273204 () Bool)

(assert (=> b!7747775 (= e!4593298 (and tp_is_empty!51539 tp!2273204))))

(declare-fun b!7747776 () Bool)

(declare-fun tp!2273205 () Bool)

(assert (=> b!7747776 (= e!4593303 tp!2273205)))

(declare-fun b!7747777 () Bool)

(assert (=> b!7747777 (= e!4593303 tp_is_empty!51539)))

(declare-fun b!7747778 () Bool)

(declare-fun res!3089218 () Bool)

(assert (=> b!7747778 (=> res!3089218 e!4593304)))

(declare-fun validRegex!11010 (Regex!20592) Bool)

(assert (=> b!7747778 (= res!3089218 (not (validRegex!11010 (regTwo!41696 r!14126))))))

(declare-fun b!7747779 () Bool)

(declare-fun e!4593299 () Unit!168292)

(declare-fun Unit!168294 () Unit!168292)

(assert (=> b!7747779 (= e!4593299 Unit!168294)))

(declare-fun lt!2668932 () tuple2!69638)

(declare-fun get!26079 (Option!17613) tuple2!69638)

(assert (=> b!7747779 (= lt!2668932 (get!26079 lt!2668925))))

(declare-fun lt!2668926 () Unit!168292)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!217 (Regex!20592 Regex!20592 List!73439 List!73439 List!73439) Unit!168292)

(assert (=> b!7747779 (= lt!2668926 (lemmaFindSeparationIsDefinedThenConcatMatches!217 (regOne!41696 r!14126) (regTwo!41696 r!14126) (_1!38122 lt!2668932) (_2!38122 lt!2668932) s!9605))))

(declare-fun res!3089221 () Bool)

(assert (=> b!7747779 (= res!3089221 (matchR!10084 r!14126 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))))))

(assert (=> b!7747779 (=> (not res!3089221) (not e!4593300))))

(assert (=> b!7747779 e!4593300))

(declare-fun b!7747780 () Bool)

(declare-fun lt!2668928 () Bool)

(assert (=> b!7747780 (= e!4593304 lt!2668928)))

(declare-fun b!7747781 () Bool)

(declare-fun tp!2273202 () Bool)

(declare-fun tp!2273207 () Bool)

(assert (=> b!7747781 (= e!4593303 (and tp!2273202 tp!2273207))))

(declare-fun res!3089217 () Bool)

(assert (=> start!738710 (=> (not res!3089217) (not e!4593302))))

(assert (=> start!738710 (= res!3089217 (validRegex!11010 r!14126))))

(assert (=> start!738710 e!4593302))

(assert (=> start!738710 e!4593303))

(assert (=> start!738710 e!4593298))

(declare-fun b!7747771 () Bool)

(declare-fun res!3089222 () Bool)

(assert (=> b!7747771 (=> res!3089222 e!4593304)))

(declare-fun lt!2668923 () tuple2!69638)

(declare-fun isPrefix!6236 (List!73439 List!73439) Bool)

(assert (=> b!7747771 (= res!3089222 (not (isPrefix!6236 Nil!73315 (_1!38122 lt!2668923))))))

(declare-fun b!7747782 () Bool)

(declare-fun Unit!168295 () Unit!168292)

(assert (=> b!7747782 (= e!4593299 Unit!168295)))

(declare-fun b!7747783 () Bool)

(declare-fun e!4593305 () Bool)

(assert (=> b!7747783 (= e!4593301 e!4593305)))

(declare-fun res!3089224 () Bool)

(assert (=> b!7747783 (=> res!3089224 e!4593305)))

(assert (=> b!7747783 (= res!3089224 (Exists!4713 lambda!471804))))

(declare-fun lt!2668927 () Unit!168292)

(assert (=> b!7747783 (= lt!2668927 e!4593299)))

(declare-fun c!1429037 () Bool)

(assert (=> b!7747783 (= c!1429037 lt!2668924)))

(declare-fun b!7747784 () Bool)

(declare-fun res!3089220 () Bool)

(assert (=> b!7747784 (=> (not res!3089220) (not e!4593302))))

(assert (=> b!7747784 (= res!3089220 (and (not (is-EmptyExpr!20592 r!14126)) (not (is-EmptyLang!20592 r!14126)) (not (is-ElementMatch!20592 r!14126)) (not (is-Union!20592 r!14126)) (not (is-Star!20592 r!14126))))))

(declare-fun b!7747785 () Bool)

(assert (=> b!7747785 (= e!4593305 e!4593304)))

(declare-fun res!3089227 () Bool)

(assert (=> b!7747785 (=> res!3089227 e!4593304)))

(assert (=> b!7747785 (= res!3089227 (not (validRegex!11010 (regOne!41696 r!14126))))))

(declare-fun matchRSpec!4657 (Regex!20592 List!73439) Bool)

(assert (=> b!7747785 (= (matchR!10084 (regTwo!41696 r!14126) (_2!38122 lt!2668923)) (matchRSpec!4657 (regTwo!41696 r!14126) (_2!38122 lt!2668923)))))

(declare-fun lt!2668930 () Unit!168292)

(declare-fun mainMatchTheorem!4627 (Regex!20592 List!73439) Unit!168292)

(assert (=> b!7747785 (= lt!2668930 (mainMatchTheorem!4627 (regTwo!41696 r!14126) (_2!38122 lt!2668923)))))

(assert (=> b!7747785 (= lt!2668928 (matchRSpec!4657 (regOne!41696 r!14126) (_1!38122 lt!2668923)))))

(assert (=> b!7747785 (= lt!2668928 (matchR!10084 (regOne!41696 r!14126) (_1!38122 lt!2668923)))))

(declare-fun lt!2668931 () Unit!168292)

(assert (=> b!7747785 (= lt!2668931 (mainMatchTheorem!4627 (regOne!41696 r!14126) (_1!38122 lt!2668923)))))

(declare-fun pickWitness!549 (Int) tuple2!69638)

(assert (=> b!7747785 (= lt!2668923 (pickWitness!549 lambda!471805))))

(declare-fun res!3089219 () Bool)

(assert (=> b!7747786 (=> res!3089219 e!4593305)))

(assert (=> b!7747786 (= res!3089219 (not (Exists!4713 lambda!471805)))))

(declare-fun b!7747787 () Bool)

(declare-fun res!3089223 () Bool)

(assert (=> b!7747787 (=> res!3089223 e!4593304)))

(assert (=> b!7747787 (= res!3089223 (not (= (++!17791 (_1!38122 lt!2668923) (_2!38122 lt!2668923)) s!9605)))))

(assert (= (and start!738710 res!3089217) b!7747784))

(assert (= (and b!7747784 res!3089220) b!7747774))

(assert (= (and b!7747774 (not res!3089225)) b!7747783))

(assert (= (and b!7747783 c!1429037) b!7747779))

(assert (= (and b!7747783 (not c!1429037)) b!7747782))

(assert (= (and b!7747779 res!3089221) b!7747773))

(assert (= (and b!7747783 (not res!3089224)) b!7747786))

(assert (= (and b!7747786 (not res!3089219)) b!7747785))

(assert (= (and b!7747785 (not res!3089227)) b!7747778))

(assert (= (and b!7747778 (not res!3089218)) b!7747787))

(assert (= (and b!7747787 (not res!3089223)) b!7747771))

(assert (= (and b!7747771 (not res!3089222)) b!7747772))

(assert (= (and b!7747772 (not res!3089226)) b!7747780))

(assert (= (and start!738710 (is-ElementMatch!20592 r!14126)) b!7747777))

(assert (= (and start!738710 (is-Concat!29437 r!14126)) b!7747781))

(assert (= (and start!738710 (is-Star!20592 r!14126)) b!7747776))

(assert (= (and start!738710 (is-Union!20592 r!14126)) b!7747770))

(assert (= (and start!738710 (is-Cons!73315 s!9605)) b!7747775))

(declare-fun m!8215062 () Bool)

(assert (=> b!7747787 m!8215062))

(declare-fun m!8215064 () Bool)

(assert (=> start!738710 m!8215064))

(declare-fun m!8215066 () Bool)

(assert (=> b!7747786 m!8215066))

(declare-fun m!8215068 () Bool)

(assert (=> b!7747772 m!8215068))

(declare-fun m!8215070 () Bool)

(assert (=> b!7747774 m!8215070))

(declare-fun m!8215072 () Bool)

(assert (=> b!7747774 m!8215072))

(declare-fun m!8215074 () Bool)

(assert (=> b!7747774 m!8215074))

(declare-fun m!8215076 () Bool)

(assert (=> b!7747774 m!8215076))

(declare-fun m!8215078 () Bool)

(assert (=> b!7747774 m!8215078))

(declare-fun m!8215080 () Bool)

(assert (=> b!7747778 m!8215080))

(declare-fun m!8215082 () Bool)

(assert (=> b!7747785 m!8215082))

(declare-fun m!8215084 () Bool)

(assert (=> b!7747785 m!8215084))

(declare-fun m!8215086 () Bool)

(assert (=> b!7747785 m!8215086))

(declare-fun m!8215088 () Bool)

(assert (=> b!7747785 m!8215088))

(declare-fun m!8215090 () Bool)

(assert (=> b!7747785 m!8215090))

(declare-fun m!8215092 () Bool)

(assert (=> b!7747785 m!8215092))

(declare-fun m!8215094 () Bool)

(assert (=> b!7747785 m!8215094))

(declare-fun m!8215096 () Bool)

(assert (=> b!7747785 m!8215096))

(declare-fun m!8215098 () Bool)

(assert (=> b!7747771 m!8215098))

(declare-fun m!8215100 () Bool)

(assert (=> b!7747779 m!8215100))

(declare-fun m!8215102 () Bool)

(assert (=> b!7747779 m!8215102))

(declare-fun m!8215104 () Bool)

(assert (=> b!7747779 m!8215104))

(assert (=> b!7747779 m!8215104))

(declare-fun m!8215106 () Bool)

(assert (=> b!7747779 m!8215106))

(assert (=> b!7747783 m!8215078))

(push 1)

(assert (not b!7747783))

(assert (not b!7747774))

(assert (not b!7747770))

(assert (not b!7747786))

(assert (not b!7747775))

(assert (not b!7747771))

(assert (not b!7747781))

(assert (not b!7747779))

(assert (not b!7747776))

(assert (not start!738710))

(assert (not b!7747772))

(assert tp_is_empty!51539)

(assert (not b!7747785))

(assert (not b!7747778))

(assert (not b!7747787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7747875 () Bool)

(declare-fun e!4593343 () List!73439)

(assert (=> b!7747875 (= e!4593343 (Cons!73315 (h!79763 (_1!38122 lt!2668923)) (++!17791 (t!388174 (_1!38122 lt!2668923)) (_2!38122 lt!2668923))))))

(declare-fun b!7747876 () Bool)

(declare-fun res!3089282 () Bool)

(declare-fun e!4593342 () Bool)

(assert (=> b!7747876 (=> (not res!3089282) (not e!4593342))))

(declare-fun lt!2668965 () List!73439)

(declare-fun size!42650 (List!73439) Int)

(assert (=> b!7747876 (= res!3089282 (= (size!42650 lt!2668965) (+ (size!42650 (_1!38122 lt!2668923)) (size!42650 (_2!38122 lt!2668923)))))))

(declare-fun b!7747874 () Bool)

(assert (=> b!7747874 (= e!4593343 (_2!38122 lt!2668923))))

(declare-fun b!7747877 () Bool)

(assert (=> b!7747877 (= e!4593342 (or (not (= (_2!38122 lt!2668923) Nil!73315)) (= lt!2668965 (_1!38122 lt!2668923))))))

(declare-fun d!2342392 () Bool)

(assert (=> d!2342392 e!4593342))

(declare-fun res!3089281 () Bool)

(assert (=> d!2342392 (=> (not res!3089281) (not e!4593342))))

(declare-fun content!15547 (List!73439) (Set C!41510))

(assert (=> d!2342392 (= res!3089281 (= (content!15547 lt!2668965) (set.union (content!15547 (_1!38122 lt!2668923)) (content!15547 (_2!38122 lt!2668923)))))))

(assert (=> d!2342392 (= lt!2668965 e!4593343)))

(declare-fun c!1429045 () Bool)

(assert (=> d!2342392 (= c!1429045 (is-Nil!73315 (_1!38122 lt!2668923)))))

(assert (=> d!2342392 (= (++!17791 (_1!38122 lt!2668923) (_2!38122 lt!2668923)) lt!2668965)))

(assert (= (and d!2342392 c!1429045) b!7747874))

(assert (= (and d!2342392 (not c!1429045)) b!7747875))

(assert (= (and d!2342392 res!3089281) b!7747876))

(assert (= (and b!7747876 res!3089282) b!7747877))

(declare-fun m!8215154 () Bool)

(assert (=> b!7747875 m!8215154))

(declare-fun m!8215156 () Bool)

(assert (=> b!7747876 m!8215156))

(declare-fun m!8215158 () Bool)

(assert (=> b!7747876 m!8215158))

(declare-fun m!8215160 () Bool)

(assert (=> b!7747876 m!8215160))

(declare-fun m!8215162 () Bool)

(assert (=> d!2342392 m!8215162))

(declare-fun m!8215164 () Bool)

(assert (=> d!2342392 m!8215164))

(declare-fun m!8215166 () Bool)

(assert (=> d!2342392 m!8215166))

(assert (=> b!7747787 d!2342392))

(declare-fun d!2342394 () Bool)

(declare-fun e!4593351 () Bool)

(assert (=> d!2342394 e!4593351))

(declare-fun res!3089291 () Bool)

(assert (=> d!2342394 (=> res!3089291 e!4593351)))

(declare-fun lt!2668968 () Bool)

(assert (=> d!2342394 (= res!3089291 (not lt!2668968))))

(declare-fun e!4593350 () Bool)

(assert (=> d!2342394 (= lt!2668968 e!4593350)))

(declare-fun res!3089293 () Bool)

(assert (=> d!2342394 (=> res!3089293 e!4593350)))

(assert (=> d!2342394 (= res!3089293 (is-Nil!73315 Nil!73315))))

(assert (=> d!2342394 (= (isPrefix!6236 Nil!73315 (_1!38122 lt!2668923)) lt!2668968)))

(declare-fun b!7747889 () Bool)

(assert (=> b!7747889 (= e!4593351 (>= (size!42650 (_1!38122 lt!2668923)) (size!42650 Nil!73315)))))

(declare-fun b!7747888 () Bool)

(declare-fun e!4593352 () Bool)

(declare-fun tail!15364 (List!73439) List!73439)

(assert (=> b!7747888 (= e!4593352 (isPrefix!6236 (tail!15364 Nil!73315) (tail!15364 (_1!38122 lt!2668923))))))

(declare-fun b!7747887 () Bool)

(declare-fun res!3089294 () Bool)

(assert (=> b!7747887 (=> (not res!3089294) (not e!4593352))))

(declare-fun head!15824 (List!73439) C!41510)

(assert (=> b!7747887 (= res!3089294 (= (head!15824 Nil!73315) (head!15824 (_1!38122 lt!2668923))))))

(declare-fun b!7747886 () Bool)

(assert (=> b!7747886 (= e!4593350 e!4593352)))

(declare-fun res!3089292 () Bool)

(assert (=> b!7747886 (=> (not res!3089292) (not e!4593352))))

(assert (=> b!7747886 (= res!3089292 (not (is-Nil!73315 (_1!38122 lt!2668923))))))

(assert (= (and d!2342394 (not res!3089293)) b!7747886))

(assert (= (and b!7747886 res!3089292) b!7747887))

(assert (= (and b!7747887 res!3089294) b!7747888))

(assert (= (and d!2342394 (not res!3089291)) b!7747889))

(assert (=> b!7747889 m!8215158))

(declare-fun m!8215170 () Bool)

(assert (=> b!7747889 m!8215170))

(declare-fun m!8215172 () Bool)

(assert (=> b!7747888 m!8215172))

(declare-fun m!8215174 () Bool)

(assert (=> b!7747888 m!8215174))

(assert (=> b!7747888 m!8215172))

(assert (=> b!7747888 m!8215174))

(declare-fun m!8215176 () Bool)

(assert (=> b!7747888 m!8215176))

(declare-fun m!8215178 () Bool)

(assert (=> b!7747887 m!8215178))

(declare-fun m!8215180 () Bool)

(assert (=> b!7747887 m!8215180))

(assert (=> b!7747771 d!2342394))

(declare-fun bm!718056 () Bool)

(declare-fun call!718062 () Bool)

(declare-fun c!1429050 () Bool)

(assert (=> bm!718056 (= call!718062 (validRegex!11010 (ite c!1429050 (regTwo!41697 (regTwo!41696 r!14126)) (regTwo!41696 (regTwo!41696 r!14126)))))))

(declare-fun bm!718057 () Bool)

(declare-fun call!718063 () Bool)

(declare-fun c!1429051 () Bool)

(assert (=> bm!718057 (= call!718063 (validRegex!11010 (ite c!1429051 (reg!20921 (regTwo!41696 r!14126)) (ite c!1429050 (regOne!41697 (regTwo!41696 r!14126)) (regOne!41696 (regTwo!41696 r!14126))))))))

(declare-fun b!7747916 () Bool)

(declare-fun e!4593374 () Bool)

(declare-fun e!4593375 () Bool)

(assert (=> b!7747916 (= e!4593374 e!4593375)))

(assert (=> b!7747916 (= c!1429051 (is-Star!20592 (regTwo!41696 r!14126)))))

(declare-fun b!7747917 () Bool)

(declare-fun res!3089316 () Bool)

(declare-fun e!4593379 () Bool)

(assert (=> b!7747917 (=> res!3089316 e!4593379)))

(assert (=> b!7747917 (= res!3089316 (not (is-Concat!29437 (regTwo!41696 r!14126))))))

(declare-fun e!4593376 () Bool)

(assert (=> b!7747917 (= e!4593376 e!4593379)))

(declare-fun b!7747918 () Bool)

(declare-fun e!4593377 () Bool)

(assert (=> b!7747918 (= e!4593379 e!4593377)))

(declare-fun res!3089313 () Bool)

(assert (=> b!7747918 (=> (not res!3089313) (not e!4593377))))

(declare-fun call!718061 () Bool)

(assert (=> b!7747918 (= res!3089313 call!718061)))

(declare-fun bm!718058 () Bool)

(assert (=> bm!718058 (= call!718061 call!718063)))

(declare-fun d!2342400 () Bool)

(declare-fun res!3089314 () Bool)

(assert (=> d!2342400 (=> res!3089314 e!4593374)))

(assert (=> d!2342400 (= res!3089314 (is-ElementMatch!20592 (regTwo!41696 r!14126)))))

(assert (=> d!2342400 (= (validRegex!11010 (regTwo!41696 r!14126)) e!4593374)))

(declare-fun b!7747919 () Bool)

(declare-fun e!4593373 () Bool)

(assert (=> b!7747919 (= e!4593373 call!718062)))

(declare-fun b!7747920 () Bool)

(assert (=> b!7747920 (= e!4593377 call!718062)))

(declare-fun b!7747921 () Bool)

(declare-fun e!4593378 () Bool)

(assert (=> b!7747921 (= e!4593375 e!4593378)))

(declare-fun res!3089317 () Bool)

(declare-fun nullable!9065 (Regex!20592) Bool)

(assert (=> b!7747921 (= res!3089317 (not (nullable!9065 (reg!20921 (regTwo!41696 r!14126)))))))

(assert (=> b!7747921 (=> (not res!3089317) (not e!4593378))))

(declare-fun b!7747922 () Bool)

(assert (=> b!7747922 (= e!4593378 call!718063)))

(declare-fun b!7747923 () Bool)

(declare-fun res!3089315 () Bool)

(assert (=> b!7747923 (=> (not res!3089315) (not e!4593373))))

(assert (=> b!7747923 (= res!3089315 call!718061)))

(assert (=> b!7747923 (= e!4593376 e!4593373)))

(declare-fun b!7747924 () Bool)

(assert (=> b!7747924 (= e!4593375 e!4593376)))

(assert (=> b!7747924 (= c!1429050 (is-Union!20592 (regTwo!41696 r!14126)))))

(assert (= (and d!2342400 (not res!3089314)) b!7747916))

(assert (= (and b!7747916 c!1429051) b!7747921))

(assert (= (and b!7747916 (not c!1429051)) b!7747924))

(assert (= (and b!7747921 res!3089317) b!7747922))

(assert (= (and b!7747924 c!1429050) b!7747923))

(assert (= (and b!7747924 (not c!1429050)) b!7747917))

(assert (= (and b!7747923 res!3089315) b!7747919))

(assert (= (and b!7747917 (not res!3089316)) b!7747918))

(assert (= (and b!7747918 res!3089313) b!7747920))

(assert (= (or b!7747923 b!7747918) bm!718058))

(assert (= (or b!7747919 b!7747920) bm!718056))

(assert (= (or b!7747922 bm!718058) bm!718057))

(declare-fun m!8215182 () Bool)

(assert (=> bm!718056 m!8215182))

(declare-fun m!8215184 () Bool)

(assert (=> bm!718057 m!8215184))

(declare-fun m!8215186 () Bool)

(assert (=> b!7747921 m!8215186))

(assert (=> b!7747778 d!2342400))

(declare-fun d!2342402 () Bool)

(declare-fun choose!59406 (Int) Bool)

(assert (=> d!2342402 (= (Exists!4713 lambda!471804) (choose!59406 lambda!471804))))

(declare-fun bs!1965644 () Bool)

(assert (= bs!1965644 d!2342402))

(declare-fun m!8215188 () Bool)

(assert (=> bs!1965644 m!8215188))

(assert (=> b!7747783 d!2342402))

(declare-fun b!7747926 () Bool)

(declare-fun e!4593381 () List!73439)

(assert (=> b!7747926 (= e!4593381 (Cons!73315 (h!79763 Nil!73315) (++!17791 (t!388174 Nil!73315) s!9605)))))

(declare-fun b!7747927 () Bool)

(declare-fun res!3089319 () Bool)

(declare-fun e!4593380 () Bool)

(assert (=> b!7747927 (=> (not res!3089319) (not e!4593380))))

(declare-fun lt!2668971 () List!73439)

(assert (=> b!7747927 (= res!3089319 (= (size!42650 lt!2668971) (+ (size!42650 Nil!73315) (size!42650 s!9605))))))

(declare-fun b!7747925 () Bool)

(assert (=> b!7747925 (= e!4593381 s!9605)))

(declare-fun b!7747928 () Bool)

(assert (=> b!7747928 (= e!4593380 (or (not (= s!9605 Nil!73315)) (= lt!2668971 Nil!73315)))))

(declare-fun d!2342404 () Bool)

(assert (=> d!2342404 e!4593380))

(declare-fun res!3089318 () Bool)

(assert (=> d!2342404 (=> (not res!3089318) (not e!4593380))))

(assert (=> d!2342404 (= res!3089318 (= (content!15547 lt!2668971) (set.union (content!15547 Nil!73315) (content!15547 s!9605))))))

(assert (=> d!2342404 (= lt!2668971 e!4593381)))

(declare-fun c!1429052 () Bool)

(assert (=> d!2342404 (= c!1429052 (is-Nil!73315 Nil!73315))))

(assert (=> d!2342404 (= (++!17791 Nil!73315 s!9605) lt!2668971)))

(assert (= (and d!2342404 c!1429052) b!7747925))

(assert (= (and d!2342404 (not c!1429052)) b!7747926))

(assert (= (and d!2342404 res!3089318) b!7747927))

(assert (= (and b!7747927 res!3089319) b!7747928))

(declare-fun m!8215190 () Bool)

(assert (=> b!7747926 m!8215190))

(declare-fun m!8215192 () Bool)

(assert (=> b!7747927 m!8215192))

(assert (=> b!7747927 m!8215170))

(declare-fun m!8215194 () Bool)

(assert (=> b!7747927 m!8215194))

(declare-fun m!8215196 () Bool)

(assert (=> d!2342404 m!8215196))

(declare-fun m!8215198 () Bool)

(assert (=> d!2342404 m!8215198))

(declare-fun m!8215200 () Bool)

(assert (=> d!2342404 m!8215200))

(assert (=> b!7747772 d!2342404))

(declare-fun b!7747961 () Bool)

(declare-fun e!4593400 () Bool)

(declare-fun e!4593405 () Bool)

(assert (=> b!7747961 (= e!4593400 e!4593405)))

(declare-fun res!3089346 () Bool)

(assert (=> b!7747961 (=> res!3089346 e!4593405)))

(declare-fun call!718066 () Bool)

(assert (=> b!7747961 (= res!3089346 call!718066)))

(declare-fun b!7747962 () Bool)

(declare-fun res!3089343 () Bool)

(declare-fun e!4593402 () Bool)

(assert (=> b!7747962 (=> res!3089343 e!4593402)))

(declare-fun e!4593399 () Bool)

(assert (=> b!7747962 (= res!3089343 e!4593399)))

(declare-fun res!3089345 () Bool)

(assert (=> b!7747962 (=> (not res!3089345) (not e!4593399))))

(declare-fun lt!2668975 () Bool)

(assert (=> b!7747962 (= res!3089345 lt!2668975)))

(declare-fun b!7747963 () Bool)

(assert (=> b!7747963 (= e!4593399 (= (head!15824 s!9605) (c!1429038 r!14126)))))

(declare-fun b!7747964 () Bool)

(declare-fun res!3089347 () Bool)

(assert (=> b!7747964 (=> (not res!3089347) (not e!4593399))))

(declare-fun isEmpty!42009 (List!73439) Bool)

(assert (=> b!7747964 (= res!3089347 (isEmpty!42009 (tail!15364 s!9605)))))

(declare-fun b!7747965 () Bool)

(assert (=> b!7747965 (= e!4593402 e!4593400)))

(declare-fun res!3089341 () Bool)

(assert (=> b!7747965 (=> (not res!3089341) (not e!4593400))))

(assert (=> b!7747965 (= res!3089341 (not lt!2668975))))

(declare-fun b!7747966 () Bool)

(declare-fun e!4593401 () Bool)

(assert (=> b!7747966 (= e!4593401 (not lt!2668975))))

(declare-fun b!7747967 () Bool)

(declare-fun e!4593404 () Bool)

(assert (=> b!7747967 (= e!4593404 (nullable!9065 r!14126))))

(declare-fun b!7747968 () Bool)

(declare-fun e!4593403 () Bool)

(assert (=> b!7747968 (= e!4593403 e!4593401)))

(declare-fun c!1429061 () Bool)

(assert (=> b!7747968 (= c!1429061 (is-EmptyLang!20592 r!14126))))

(declare-fun b!7747969 () Bool)

(declare-fun res!3089344 () Bool)

(assert (=> b!7747969 (=> (not res!3089344) (not e!4593399))))

(assert (=> b!7747969 (= res!3089344 (not call!718066))))

(declare-fun b!7747970 () Bool)

(assert (=> b!7747970 (= e!4593403 (= lt!2668975 call!718066))))

(declare-fun b!7747971 () Bool)

(declare-fun res!3089340 () Bool)

(assert (=> b!7747971 (=> res!3089340 e!4593405)))

(assert (=> b!7747971 (= res!3089340 (not (isEmpty!42009 (tail!15364 s!9605))))))

(declare-fun b!7747972 () Bool)

(assert (=> b!7747972 (= e!4593405 (not (= (head!15824 s!9605) (c!1429038 r!14126))))))

(declare-fun d!2342406 () Bool)

(assert (=> d!2342406 e!4593403))

(declare-fun c!1429060 () Bool)

(assert (=> d!2342406 (= c!1429060 (is-EmptyExpr!20592 r!14126))))

(assert (=> d!2342406 (= lt!2668975 e!4593404)))

(declare-fun c!1429059 () Bool)

(assert (=> d!2342406 (= c!1429059 (isEmpty!42009 s!9605))))

(assert (=> d!2342406 (validRegex!11010 r!14126)))

(assert (=> d!2342406 (= (matchR!10084 r!14126 s!9605) lt!2668975)))

(declare-fun b!7747973 () Bool)

(declare-fun derivativeStep!6024 (Regex!20592 C!41510) Regex!20592)

(assert (=> b!7747973 (= e!4593404 (matchR!10084 (derivativeStep!6024 r!14126 (head!15824 s!9605)) (tail!15364 s!9605)))))

(declare-fun bm!718061 () Bool)

(assert (=> bm!718061 (= call!718066 (isEmpty!42009 s!9605))))

(declare-fun b!7747974 () Bool)

(declare-fun res!3089342 () Bool)

(assert (=> b!7747974 (=> res!3089342 e!4593402)))

(assert (=> b!7747974 (= res!3089342 (not (is-ElementMatch!20592 r!14126)))))

(assert (=> b!7747974 (= e!4593401 e!4593402)))

(assert (= (and d!2342406 c!1429059) b!7747967))

(assert (= (and d!2342406 (not c!1429059)) b!7747973))

(assert (= (and d!2342406 c!1429060) b!7747970))

(assert (= (and d!2342406 (not c!1429060)) b!7747968))

(assert (= (and b!7747968 c!1429061) b!7747966))

(assert (= (and b!7747968 (not c!1429061)) b!7747974))

(assert (= (and b!7747974 (not res!3089342)) b!7747962))

(assert (= (and b!7747962 res!3089345) b!7747969))

(assert (= (and b!7747969 res!3089344) b!7747964))

(assert (= (and b!7747964 res!3089347) b!7747963))

(assert (= (and b!7747962 (not res!3089343)) b!7747965))

(assert (= (and b!7747965 res!3089341) b!7747961))

(assert (= (and b!7747961 (not res!3089346)) b!7747971))

(assert (= (and b!7747971 (not res!3089340)) b!7747972))

(assert (= (or b!7747970 b!7747961 b!7747969) bm!718061))

(declare-fun m!8215216 () Bool)

(assert (=> b!7747972 m!8215216))

(declare-fun m!8215218 () Bool)

(assert (=> b!7747971 m!8215218))

(assert (=> b!7747971 m!8215218))

(declare-fun m!8215220 () Bool)

(assert (=> b!7747971 m!8215220))

(assert (=> b!7747963 m!8215216))

(declare-fun m!8215222 () Bool)

(assert (=> d!2342406 m!8215222))

(assert (=> d!2342406 m!8215064))

(assert (=> b!7747964 m!8215218))

(assert (=> b!7747964 m!8215218))

(assert (=> b!7747964 m!8215220))

(declare-fun m!8215224 () Bool)

(assert (=> b!7747967 m!8215224))

(assert (=> bm!718061 m!8215222))

(assert (=> b!7747973 m!8215216))

(assert (=> b!7747973 m!8215216))

(declare-fun m!8215226 () Bool)

(assert (=> b!7747973 m!8215226))

(assert (=> b!7747973 m!8215218))

(assert (=> b!7747973 m!8215226))

(assert (=> b!7747973 m!8215218))

(declare-fun m!8215228 () Bool)

(assert (=> b!7747973 m!8215228))

(assert (=> b!7747774 d!2342406))

(declare-fun bs!1965645 () Bool)

(declare-fun d!2342410 () Bool)

(assert (= bs!1965645 (and d!2342410 b!7747774)))

(declare-fun lambda!471820 () Int)

(assert (=> bs!1965645 (= lambda!471820 lambda!471804)))

(declare-fun bs!1965646 () Bool)

(assert (= bs!1965646 (and d!2342410 b!7747786)))

(assert (=> bs!1965646 (not (= lambda!471820 lambda!471805))))

(assert (=> d!2342410 true))

(assert (=> d!2342410 true))

(assert (=> d!2342410 true))

(assert (=> d!2342410 (= (isDefined!14229 (findConcatSeparation!3643 (regOne!41696 r!14126) (regTwo!41696 r!14126) Nil!73315 s!9605 s!9605)) (Exists!4713 lambda!471820))))

(declare-fun lt!2668981 () Unit!168292)

(declare-fun choose!59407 (Regex!20592 Regex!20592 List!73439) Unit!168292)

(assert (=> d!2342410 (= lt!2668981 (choose!59407 (regOne!41696 r!14126) (regTwo!41696 r!14126) s!9605))))

(assert (=> d!2342410 (validRegex!11010 (regOne!41696 r!14126))))

(assert (=> d!2342410 (= (lemmaFindConcatSeparationEquivalentToExists!3401 (regOne!41696 r!14126) (regTwo!41696 r!14126) s!9605) lt!2668981)))

(declare-fun bs!1965647 () Bool)

(assert (= bs!1965647 d!2342410))

(assert (=> bs!1965647 m!8215072))

(declare-fun m!8215230 () Bool)

(assert (=> bs!1965647 m!8215230))

(declare-fun m!8215232 () Bool)

(assert (=> bs!1965647 m!8215232))

(assert (=> bs!1965647 m!8215072))

(assert (=> bs!1965647 m!8215092))

(declare-fun m!8215234 () Bool)

(assert (=> bs!1965647 m!8215234))

(assert (=> b!7747774 d!2342410))

(assert (=> b!7747774 d!2342402))

(declare-fun d!2342412 () Bool)

(declare-fun isEmpty!42010 (Option!17613) Bool)

(assert (=> d!2342412 (= (isDefined!14229 lt!2668925) (not (isEmpty!42010 lt!2668925)))))

(declare-fun bs!1965650 () Bool)

(assert (= bs!1965650 d!2342412))

(declare-fun m!8215236 () Bool)

(assert (=> bs!1965650 m!8215236))

(assert (=> b!7747774 d!2342412))

(declare-fun d!2342414 () Bool)

(declare-fun e!4593423 () Bool)

(assert (=> d!2342414 e!4593423))

(declare-fun res!3089367 () Bool)

(assert (=> d!2342414 (=> res!3089367 e!4593423)))

(declare-fun e!4593420 () Bool)

(assert (=> d!2342414 (= res!3089367 e!4593420)))

(declare-fun res!3089370 () Bool)

(assert (=> d!2342414 (=> (not res!3089370) (not e!4593420))))

(declare-fun lt!2668988 () Option!17613)

(assert (=> d!2342414 (= res!3089370 (isDefined!14229 lt!2668988))))

(declare-fun e!4593421 () Option!17613)

(assert (=> d!2342414 (= lt!2668988 e!4593421)))

(declare-fun c!1429067 () Bool)

(declare-fun e!4593424 () Bool)

(assert (=> d!2342414 (= c!1429067 e!4593424)))

(declare-fun res!3089368 () Bool)

(assert (=> d!2342414 (=> (not res!3089368) (not e!4593424))))

(assert (=> d!2342414 (= res!3089368 (matchR!10084 (regOne!41696 r!14126) Nil!73315))))

(assert (=> d!2342414 (validRegex!11010 (regOne!41696 r!14126))))

(assert (=> d!2342414 (= (findConcatSeparation!3643 (regOne!41696 r!14126) (regTwo!41696 r!14126) Nil!73315 s!9605 s!9605) lt!2668988)))

(declare-fun b!7748001 () Bool)

(assert (=> b!7748001 (= e!4593424 (matchR!10084 (regTwo!41696 r!14126) s!9605))))

(declare-fun b!7748002 () Bool)

(declare-fun lt!2668990 () Unit!168292)

(declare-fun lt!2668989 () Unit!168292)

(assert (=> b!7748002 (= lt!2668990 lt!2668989)))

(assert (=> b!7748002 (= (++!17791 (++!17791 Nil!73315 (Cons!73315 (h!79763 s!9605) Nil!73315)) (t!388174 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3337 (List!73439 C!41510 List!73439 List!73439) Unit!168292)

(assert (=> b!7748002 (= lt!2668989 (lemmaMoveElementToOtherListKeepsConcatEq!3337 Nil!73315 (h!79763 s!9605) (t!388174 s!9605) s!9605))))

(declare-fun e!4593422 () Option!17613)

(assert (=> b!7748002 (= e!4593422 (findConcatSeparation!3643 (regOne!41696 r!14126) (regTwo!41696 r!14126) (++!17791 Nil!73315 (Cons!73315 (h!79763 s!9605) Nil!73315)) (t!388174 s!9605) s!9605))))

(declare-fun b!7748003 () Bool)

(assert (=> b!7748003 (= e!4593423 (not (isDefined!14229 lt!2668988)))))

(declare-fun b!7748004 () Bool)

(declare-fun res!3089369 () Bool)

(assert (=> b!7748004 (=> (not res!3089369) (not e!4593420))))

(assert (=> b!7748004 (= res!3089369 (matchR!10084 (regOne!41696 r!14126) (_1!38122 (get!26079 lt!2668988))))))

(declare-fun b!7748005 () Bool)

(assert (=> b!7748005 (= e!4593421 (Some!17612 (tuple2!69639 Nil!73315 s!9605)))))

(declare-fun b!7748006 () Bool)

(declare-fun res!3089366 () Bool)

(assert (=> b!7748006 (=> (not res!3089366) (not e!4593420))))

(assert (=> b!7748006 (= res!3089366 (matchR!10084 (regTwo!41696 r!14126) (_2!38122 (get!26079 lt!2668988))))))

(declare-fun b!7748007 () Bool)

(assert (=> b!7748007 (= e!4593422 None!17612)))

(declare-fun b!7748008 () Bool)

(assert (=> b!7748008 (= e!4593421 e!4593422)))

(declare-fun c!1429066 () Bool)

(assert (=> b!7748008 (= c!1429066 (is-Nil!73315 s!9605))))

(declare-fun b!7748009 () Bool)

(assert (=> b!7748009 (= e!4593420 (= (++!17791 (_1!38122 (get!26079 lt!2668988)) (_2!38122 (get!26079 lt!2668988))) s!9605))))

(assert (= (and d!2342414 res!3089368) b!7748001))

(assert (= (and d!2342414 c!1429067) b!7748005))

(assert (= (and d!2342414 (not c!1429067)) b!7748008))

(assert (= (and b!7748008 c!1429066) b!7748007))

(assert (= (and b!7748008 (not c!1429066)) b!7748002))

(assert (= (and d!2342414 res!3089370) b!7748004))

(assert (= (and b!7748004 res!3089369) b!7748006))

(assert (= (and b!7748006 res!3089366) b!7748009))

(assert (= (and d!2342414 (not res!3089367)) b!7748003))

(declare-fun m!8215244 () Bool)

(assert (=> b!7748001 m!8215244))

(declare-fun m!8215246 () Bool)

(assert (=> b!7748003 m!8215246))

(declare-fun m!8215248 () Bool)

(assert (=> b!7748002 m!8215248))

(assert (=> b!7748002 m!8215248))

(declare-fun m!8215250 () Bool)

(assert (=> b!7748002 m!8215250))

(declare-fun m!8215252 () Bool)

(assert (=> b!7748002 m!8215252))

(assert (=> b!7748002 m!8215248))

(declare-fun m!8215254 () Bool)

(assert (=> b!7748002 m!8215254))

(assert (=> d!2342414 m!8215246))

(declare-fun m!8215256 () Bool)

(assert (=> d!2342414 m!8215256))

(assert (=> d!2342414 m!8215092))

(declare-fun m!8215258 () Bool)

(assert (=> b!7748006 m!8215258))

(declare-fun m!8215260 () Bool)

(assert (=> b!7748006 m!8215260))

(assert (=> b!7748009 m!8215258))

(declare-fun m!8215262 () Bool)

(assert (=> b!7748009 m!8215262))

(assert (=> b!7748004 m!8215258))

(declare-fun m!8215264 () Bool)

(assert (=> b!7748004 m!8215264))

(assert (=> b!7747774 d!2342414))

(declare-fun d!2342418 () Bool)

(assert (=> d!2342418 (= (get!26079 lt!2668925) (v!54747 lt!2668925))))

(assert (=> b!7747779 d!2342418))

(declare-fun d!2342420 () Bool)

(assert (=> d!2342420 (matchR!10084 (Concat!29437 (regOne!41696 r!14126) (regTwo!41696 r!14126)) (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932)))))

(declare-fun lt!2668993 () Unit!168292)

(declare-fun choose!59408 (Regex!20592 Regex!20592 List!73439 List!73439 List!73439) Unit!168292)

(assert (=> d!2342420 (= lt!2668993 (choose!59408 (regOne!41696 r!14126) (regTwo!41696 r!14126) (_1!38122 lt!2668932) (_2!38122 lt!2668932) s!9605))))

(assert (=> d!2342420 (validRegex!11010 (regOne!41696 r!14126))))

(assert (=> d!2342420 (= (lemmaFindSeparationIsDefinedThenConcatMatches!217 (regOne!41696 r!14126) (regTwo!41696 r!14126) (_1!38122 lt!2668932) (_2!38122 lt!2668932) s!9605) lt!2668993)))

(declare-fun bs!1965652 () Bool)

(assert (= bs!1965652 d!2342420))

(assert (=> bs!1965652 m!8215104))

(assert (=> bs!1965652 m!8215104))

(declare-fun m!8215266 () Bool)

(assert (=> bs!1965652 m!8215266))

(declare-fun m!8215268 () Bool)

(assert (=> bs!1965652 m!8215268))

(assert (=> bs!1965652 m!8215092))

(assert (=> b!7747779 d!2342420))

(declare-fun b!7748010 () Bool)

(declare-fun e!4593426 () Bool)

(declare-fun e!4593431 () Bool)

(assert (=> b!7748010 (= e!4593426 e!4593431)))

(declare-fun res!3089377 () Bool)

(assert (=> b!7748010 (=> res!3089377 e!4593431)))

(declare-fun call!718067 () Bool)

(assert (=> b!7748010 (= res!3089377 call!718067)))

(declare-fun b!7748011 () Bool)

(declare-fun res!3089374 () Bool)

(declare-fun e!4593428 () Bool)

(assert (=> b!7748011 (=> res!3089374 e!4593428)))

(declare-fun e!4593425 () Bool)

(assert (=> b!7748011 (= res!3089374 e!4593425)))

(declare-fun res!3089376 () Bool)

(assert (=> b!7748011 (=> (not res!3089376) (not e!4593425))))

(declare-fun lt!2668994 () Bool)

(assert (=> b!7748011 (= res!3089376 lt!2668994)))

(declare-fun b!7748012 () Bool)

(assert (=> b!7748012 (= e!4593425 (= (head!15824 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))) (c!1429038 r!14126)))))

(declare-fun b!7748013 () Bool)

(declare-fun res!3089378 () Bool)

(assert (=> b!7748013 (=> (not res!3089378) (not e!4593425))))

(assert (=> b!7748013 (= res!3089378 (isEmpty!42009 (tail!15364 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932)))))))

(declare-fun b!7748014 () Bool)

(assert (=> b!7748014 (= e!4593428 e!4593426)))

(declare-fun res!3089372 () Bool)

(assert (=> b!7748014 (=> (not res!3089372) (not e!4593426))))

(assert (=> b!7748014 (= res!3089372 (not lt!2668994))))

(declare-fun b!7748015 () Bool)

(declare-fun e!4593427 () Bool)

(assert (=> b!7748015 (= e!4593427 (not lt!2668994))))

(declare-fun b!7748016 () Bool)

(declare-fun e!4593430 () Bool)

(assert (=> b!7748016 (= e!4593430 (nullable!9065 r!14126))))

(declare-fun b!7748017 () Bool)

(declare-fun e!4593429 () Bool)

(assert (=> b!7748017 (= e!4593429 e!4593427)))

(declare-fun c!1429070 () Bool)

(assert (=> b!7748017 (= c!1429070 (is-EmptyLang!20592 r!14126))))

(declare-fun b!7748018 () Bool)

(declare-fun res!3089375 () Bool)

(assert (=> b!7748018 (=> (not res!3089375) (not e!4593425))))

(assert (=> b!7748018 (= res!3089375 (not call!718067))))

(declare-fun b!7748019 () Bool)

(assert (=> b!7748019 (= e!4593429 (= lt!2668994 call!718067))))

(declare-fun b!7748020 () Bool)

(declare-fun res!3089371 () Bool)

(assert (=> b!7748020 (=> res!3089371 e!4593431)))

(assert (=> b!7748020 (= res!3089371 (not (isEmpty!42009 (tail!15364 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))))))))

(declare-fun b!7748021 () Bool)

(assert (=> b!7748021 (= e!4593431 (not (= (head!15824 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))) (c!1429038 r!14126))))))

(declare-fun d!2342422 () Bool)

(assert (=> d!2342422 e!4593429))

(declare-fun c!1429069 () Bool)

(assert (=> d!2342422 (= c!1429069 (is-EmptyExpr!20592 r!14126))))

(assert (=> d!2342422 (= lt!2668994 e!4593430)))

(declare-fun c!1429068 () Bool)

(assert (=> d!2342422 (= c!1429068 (isEmpty!42009 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))))))

(assert (=> d!2342422 (validRegex!11010 r!14126)))

(assert (=> d!2342422 (= (matchR!10084 r!14126 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))) lt!2668994)))

(declare-fun b!7748022 () Bool)

(assert (=> b!7748022 (= e!4593430 (matchR!10084 (derivativeStep!6024 r!14126 (head!15824 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932)))) (tail!15364 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932)))))))

(declare-fun bm!718062 () Bool)

(assert (=> bm!718062 (= call!718067 (isEmpty!42009 (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932))))))

(declare-fun b!7748023 () Bool)

(declare-fun res!3089373 () Bool)

(assert (=> b!7748023 (=> res!3089373 e!4593428)))

(assert (=> b!7748023 (= res!3089373 (not (is-ElementMatch!20592 r!14126)))))

(assert (=> b!7748023 (= e!4593427 e!4593428)))

(assert (= (and d!2342422 c!1429068) b!7748016))

(assert (= (and d!2342422 (not c!1429068)) b!7748022))

(assert (= (and d!2342422 c!1429069) b!7748019))

(assert (= (and d!2342422 (not c!1429069)) b!7748017))

(assert (= (and b!7748017 c!1429070) b!7748015))

(assert (= (and b!7748017 (not c!1429070)) b!7748023))

(assert (= (and b!7748023 (not res!3089373)) b!7748011))

(assert (= (and b!7748011 res!3089376) b!7748018))

(assert (= (and b!7748018 res!3089375) b!7748013))

(assert (= (and b!7748013 res!3089378) b!7748012))

(assert (= (and b!7748011 (not res!3089374)) b!7748014))

(assert (= (and b!7748014 res!3089372) b!7748010))

(assert (= (and b!7748010 (not res!3089377)) b!7748020))

(assert (= (and b!7748020 (not res!3089371)) b!7748021))

(assert (= (or b!7748019 b!7748010 b!7748018) bm!718062))

(assert (=> b!7748021 m!8215104))

(declare-fun m!8215270 () Bool)

(assert (=> b!7748021 m!8215270))

(assert (=> b!7748020 m!8215104))

(declare-fun m!8215272 () Bool)

(assert (=> b!7748020 m!8215272))

(assert (=> b!7748020 m!8215272))

(declare-fun m!8215274 () Bool)

(assert (=> b!7748020 m!8215274))

(assert (=> b!7748012 m!8215104))

(assert (=> b!7748012 m!8215270))

(assert (=> d!2342422 m!8215104))

(declare-fun m!8215276 () Bool)

(assert (=> d!2342422 m!8215276))

(assert (=> d!2342422 m!8215064))

(assert (=> b!7748013 m!8215104))

(assert (=> b!7748013 m!8215272))

(assert (=> b!7748013 m!8215272))

(assert (=> b!7748013 m!8215274))

(assert (=> b!7748016 m!8215224))

(assert (=> bm!718062 m!8215104))

(assert (=> bm!718062 m!8215276))

(assert (=> b!7748022 m!8215104))

(assert (=> b!7748022 m!8215270))

(assert (=> b!7748022 m!8215270))

(declare-fun m!8215278 () Bool)

(assert (=> b!7748022 m!8215278))

(assert (=> b!7748022 m!8215104))

(assert (=> b!7748022 m!8215272))

(assert (=> b!7748022 m!8215278))

(assert (=> b!7748022 m!8215272))

(declare-fun m!8215280 () Bool)

(assert (=> b!7748022 m!8215280))

(assert (=> b!7747779 d!2342422))

(declare-fun b!7748025 () Bool)

(declare-fun e!4593433 () List!73439)

(assert (=> b!7748025 (= e!4593433 (Cons!73315 (h!79763 (_1!38122 lt!2668932)) (++!17791 (t!388174 (_1!38122 lt!2668932)) (_2!38122 lt!2668932))))))

(declare-fun b!7748026 () Bool)

(declare-fun res!3089380 () Bool)

(declare-fun e!4593432 () Bool)

(assert (=> b!7748026 (=> (not res!3089380) (not e!4593432))))

(declare-fun lt!2668995 () List!73439)

(assert (=> b!7748026 (= res!3089380 (= (size!42650 lt!2668995) (+ (size!42650 (_1!38122 lt!2668932)) (size!42650 (_2!38122 lt!2668932)))))))

(declare-fun b!7748024 () Bool)

(assert (=> b!7748024 (= e!4593433 (_2!38122 lt!2668932))))

(declare-fun b!7748027 () Bool)

(assert (=> b!7748027 (= e!4593432 (or (not (= (_2!38122 lt!2668932) Nil!73315)) (= lt!2668995 (_1!38122 lt!2668932))))))

(declare-fun d!2342424 () Bool)

(assert (=> d!2342424 e!4593432))

(declare-fun res!3089379 () Bool)

(assert (=> d!2342424 (=> (not res!3089379) (not e!4593432))))

(assert (=> d!2342424 (= res!3089379 (= (content!15547 lt!2668995) (set.union (content!15547 (_1!38122 lt!2668932)) (content!15547 (_2!38122 lt!2668932)))))))

(assert (=> d!2342424 (= lt!2668995 e!4593433)))

(declare-fun c!1429071 () Bool)

(assert (=> d!2342424 (= c!1429071 (is-Nil!73315 (_1!38122 lt!2668932)))))

(assert (=> d!2342424 (= (++!17791 (_1!38122 lt!2668932) (_2!38122 lt!2668932)) lt!2668995)))

(assert (= (and d!2342424 c!1429071) b!7748024))

(assert (= (and d!2342424 (not c!1429071)) b!7748025))

(assert (= (and d!2342424 res!3089379) b!7748026))

(assert (= (and b!7748026 res!3089380) b!7748027))

(declare-fun m!8215282 () Bool)

(assert (=> b!7748025 m!8215282))

(declare-fun m!8215284 () Bool)

(assert (=> b!7748026 m!8215284))

(declare-fun m!8215286 () Bool)

(assert (=> b!7748026 m!8215286))

(declare-fun m!8215288 () Bool)

(assert (=> b!7748026 m!8215288))

(declare-fun m!8215290 () Bool)

(assert (=> d!2342424 m!8215290))

(declare-fun m!8215292 () Bool)

(assert (=> d!2342424 m!8215292))

(declare-fun m!8215294 () Bool)

(assert (=> d!2342424 m!8215294))

(assert (=> b!7747779 d!2342424))

(declare-fun bm!718063 () Bool)

(declare-fun call!718069 () Bool)

(declare-fun c!1429072 () Bool)

(assert (=> bm!718063 (= call!718069 (validRegex!11010 (ite c!1429072 (regTwo!41697 r!14126) (regTwo!41696 r!14126))))))

(declare-fun bm!718064 () Bool)

(declare-fun c!1429073 () Bool)

(declare-fun call!718070 () Bool)

(assert (=> bm!718064 (= call!718070 (validRegex!11010 (ite c!1429073 (reg!20921 r!14126) (ite c!1429072 (regOne!41697 r!14126) (regOne!41696 r!14126)))))))

(declare-fun b!7748028 () Bool)

(declare-fun e!4593435 () Bool)

(declare-fun e!4593436 () Bool)

(assert (=> b!7748028 (= e!4593435 e!4593436)))

(assert (=> b!7748028 (= c!1429073 (is-Star!20592 r!14126))))

(declare-fun b!7748029 () Bool)

(declare-fun res!3089384 () Bool)

(declare-fun e!4593440 () Bool)

(assert (=> b!7748029 (=> res!3089384 e!4593440)))

(assert (=> b!7748029 (= res!3089384 (not (is-Concat!29437 r!14126)))))

(declare-fun e!4593437 () Bool)

(assert (=> b!7748029 (= e!4593437 e!4593440)))

(declare-fun b!7748030 () Bool)

(declare-fun e!4593438 () Bool)

(assert (=> b!7748030 (= e!4593440 e!4593438)))

(declare-fun res!3089381 () Bool)

(assert (=> b!7748030 (=> (not res!3089381) (not e!4593438))))

(declare-fun call!718068 () Bool)

(assert (=> b!7748030 (= res!3089381 call!718068)))

(declare-fun bm!718065 () Bool)

(assert (=> bm!718065 (= call!718068 call!718070)))

(declare-fun d!2342426 () Bool)

(declare-fun res!3089382 () Bool)

(assert (=> d!2342426 (=> res!3089382 e!4593435)))

(assert (=> d!2342426 (= res!3089382 (is-ElementMatch!20592 r!14126))))

(assert (=> d!2342426 (= (validRegex!11010 r!14126) e!4593435)))

(declare-fun b!7748031 () Bool)

(declare-fun e!4593434 () Bool)

(assert (=> b!7748031 (= e!4593434 call!718069)))

(declare-fun b!7748032 () Bool)

(assert (=> b!7748032 (= e!4593438 call!718069)))

(declare-fun b!7748033 () Bool)

(declare-fun e!4593439 () Bool)

(assert (=> b!7748033 (= e!4593436 e!4593439)))

(declare-fun res!3089385 () Bool)

(assert (=> b!7748033 (= res!3089385 (not (nullable!9065 (reg!20921 r!14126))))))

(assert (=> b!7748033 (=> (not res!3089385) (not e!4593439))))

(declare-fun b!7748034 () Bool)

(assert (=> b!7748034 (= e!4593439 call!718070)))

(declare-fun b!7748035 () Bool)

(declare-fun res!3089383 () Bool)

(assert (=> b!7748035 (=> (not res!3089383) (not e!4593434))))

(assert (=> b!7748035 (= res!3089383 call!718068)))

(assert (=> b!7748035 (= e!4593437 e!4593434)))

(declare-fun b!7748036 () Bool)

(assert (=> b!7748036 (= e!4593436 e!4593437)))

(assert (=> b!7748036 (= c!1429072 (is-Union!20592 r!14126))))

(assert (= (and d!2342426 (not res!3089382)) b!7748028))

(assert (= (and b!7748028 c!1429073) b!7748033))

(assert (= (and b!7748028 (not c!1429073)) b!7748036))

(assert (= (and b!7748033 res!3089385) b!7748034))

(assert (= (and b!7748036 c!1429072) b!7748035))

(assert (= (and b!7748036 (not c!1429072)) b!7748029))

(assert (= (and b!7748035 res!3089383) b!7748031))

(assert (= (and b!7748029 (not res!3089384)) b!7748030))

(assert (= (and b!7748030 res!3089381) b!7748032))

(assert (= (or b!7748035 b!7748030) bm!718065))

(assert (= (or b!7748031 b!7748032) bm!718063))

(assert (= (or b!7748034 bm!718065) bm!718064))

(declare-fun m!8215296 () Bool)

(assert (=> bm!718063 m!8215296))

(declare-fun m!8215298 () Bool)

(assert (=> bm!718064 m!8215298))

(declare-fun m!8215300 () Bool)

(assert (=> b!7748033 m!8215300))

(assert (=> start!738710 d!2342426))

(declare-fun d!2342428 () Bool)

(assert (=> d!2342428 (= (Exists!4713 lambda!471805) (choose!59406 lambda!471805))))

(declare-fun bs!1965653 () Bool)

(assert (= bs!1965653 d!2342428))

(declare-fun m!8215302 () Bool)

(assert (=> bs!1965653 m!8215302))

(assert (=> b!7747786 d!2342428))

(declare-fun bs!1965654 () Bool)

(declare-fun b!7748101 () Bool)

(assert (= bs!1965654 (and b!7748101 b!7747774)))

(declare-fun lambda!471826 () Int)

(assert (=> bs!1965654 (not (= lambda!471826 lambda!471804))))

(declare-fun bs!1965655 () Bool)

(assert (= bs!1965655 (and b!7748101 b!7747786)))

(assert (=> bs!1965655 (not (= lambda!471826 lambda!471805))))

(declare-fun bs!1965656 () Bool)

(assert (= bs!1965656 (and b!7748101 d!2342410)))

(assert (=> bs!1965656 (not (= lambda!471826 lambda!471820))))

(assert (=> b!7748101 true))

(assert (=> b!7748101 true))

(declare-fun bs!1965657 () Bool)

(declare-fun b!7748099 () Bool)

(assert (= bs!1965657 (and b!7748099 b!7747774)))

(declare-fun lambda!471827 () Int)

(assert (=> bs!1965657 (not (= lambda!471827 lambda!471804))))

(declare-fun bs!1965659 () Bool)

(assert (= bs!1965659 (and b!7748099 b!7747786)))

(assert (=> bs!1965659 (= (and (= (_1!38122 lt!2668923) s!9605) (= (regOne!41696 (regOne!41696 r!14126)) (regOne!41696 r!14126)) (= (regTwo!41696 (regOne!41696 r!14126)) (regTwo!41696 r!14126))) (= lambda!471827 lambda!471805))))

(declare-fun bs!1965660 () Bool)

(assert (= bs!1965660 (and b!7748099 d!2342410)))

(assert (=> bs!1965660 (not (= lambda!471827 lambda!471820))))

(declare-fun bs!1965661 () Bool)

(assert (= bs!1965661 (and b!7748099 b!7748101)))

(assert (=> bs!1965661 (not (= lambda!471827 lambda!471826))))

(assert (=> b!7748099 true))

(assert (=> b!7748099 true))

(declare-fun b!7748096 () Bool)

(declare-fun e!4593478 () Bool)

(declare-fun e!4593475 () Bool)

(assert (=> b!7748096 (= e!4593478 e!4593475)))

(declare-fun c!1429090 () Bool)

(assert (=> b!7748096 (= c!1429090 (is-Star!20592 (regOne!41696 r!14126)))))

(declare-fun b!7748097 () Bool)

(declare-fun e!4593479 () Bool)

(declare-fun call!718076 () Bool)

(assert (=> b!7748097 (= e!4593479 call!718076)))

(declare-fun b!7748098 () Bool)

(declare-fun e!4593477 () Bool)

(assert (=> b!7748098 (= e!4593477 (= (_1!38122 lt!2668923) (Cons!73315 (c!1429038 (regOne!41696 r!14126)) Nil!73315)))))

(declare-fun call!718075 () Bool)

(assert (=> b!7748099 (= e!4593475 call!718075)))

(declare-fun bm!718070 () Bool)

(assert (=> bm!718070 (= call!718076 (isEmpty!42009 (_1!38122 lt!2668923)))))

(declare-fun b!7748100 () Bool)

(declare-fun c!1429089 () Bool)

(assert (=> b!7748100 (= c!1429089 (is-Union!20592 (regOne!41696 r!14126)))))

(assert (=> b!7748100 (= e!4593477 e!4593478)))

(declare-fun e!4593476 () Bool)

(assert (=> b!7748101 (= e!4593476 call!718075)))

(declare-fun b!7748102 () Bool)

(declare-fun c!1429091 () Bool)

(assert (=> b!7748102 (= c!1429091 (is-ElementMatch!20592 (regOne!41696 r!14126)))))

(declare-fun e!4593474 () Bool)

(assert (=> b!7748102 (= e!4593474 e!4593477)))

(declare-fun b!7748103 () Bool)

(declare-fun res!3089418 () Bool)

(assert (=> b!7748103 (=> res!3089418 e!4593476)))

(assert (=> b!7748103 (= res!3089418 call!718076)))

(assert (=> b!7748103 (= e!4593475 e!4593476)))

(declare-fun d!2342430 () Bool)

(declare-fun c!1429088 () Bool)

(assert (=> d!2342430 (= c!1429088 (is-EmptyExpr!20592 (regOne!41696 r!14126)))))

(assert (=> d!2342430 (= (matchRSpec!4657 (regOne!41696 r!14126) (_1!38122 lt!2668923)) e!4593479)))

(declare-fun bm!718071 () Bool)

(assert (=> bm!718071 (= call!718075 (Exists!4713 (ite c!1429090 lambda!471826 lambda!471827)))))

(declare-fun b!7748104 () Bool)

(assert (=> b!7748104 (= e!4593479 e!4593474)))

(declare-fun res!3089419 () Bool)

(assert (=> b!7748104 (= res!3089419 (not (is-EmptyLang!20592 (regOne!41696 r!14126))))))

(assert (=> b!7748104 (=> (not res!3089419) (not e!4593474))))

(declare-fun b!7748105 () Bool)

(declare-fun e!4593480 () Bool)

(assert (=> b!7748105 (= e!4593480 (matchRSpec!4657 (regTwo!41697 (regOne!41696 r!14126)) (_1!38122 lt!2668923)))))

(declare-fun b!7748106 () Bool)

(assert (=> b!7748106 (= e!4593478 e!4593480)))

(declare-fun res!3089417 () Bool)

(assert (=> b!7748106 (= res!3089417 (matchRSpec!4657 (regOne!41697 (regOne!41696 r!14126)) (_1!38122 lt!2668923)))))

(assert (=> b!7748106 (=> res!3089417 e!4593480)))

(assert (= (and d!2342430 c!1429088) b!7748097))

(assert (= (and d!2342430 (not c!1429088)) b!7748104))

(assert (= (and b!7748104 res!3089419) b!7748102))

(assert (= (and b!7748102 c!1429091) b!7748098))

(assert (= (and b!7748102 (not c!1429091)) b!7748100))

(assert (= (and b!7748100 c!1429089) b!7748106))

(assert (= (and b!7748100 (not c!1429089)) b!7748096))

(assert (= (and b!7748106 (not res!3089417)) b!7748105))

(assert (= (and b!7748096 c!1429090) b!7748103))

(assert (= (and b!7748096 (not c!1429090)) b!7748099))

(assert (= (and b!7748103 (not res!3089418)) b!7748101))

(assert (= (or b!7748101 b!7748099) bm!718071))

(assert (= (or b!7748097 b!7748103) bm!718070))

(declare-fun m!8215328 () Bool)

(assert (=> bm!718070 m!8215328))

(declare-fun m!8215330 () Bool)

(assert (=> bm!718071 m!8215330))

(declare-fun m!8215332 () Bool)

(assert (=> b!7748105 m!8215332))

(declare-fun m!8215334 () Bool)

(assert (=> b!7748106 m!8215334))

(assert (=> b!7747785 d!2342430))

(declare-fun b!7748107 () Bool)

(declare-fun e!4593482 () Bool)

(declare-fun e!4593487 () Bool)

(assert (=> b!7748107 (= e!4593482 e!4593487)))

(declare-fun res!3089426 () Bool)

(assert (=> b!7748107 (=> res!3089426 e!4593487)))

(declare-fun call!718077 () Bool)

(assert (=> b!7748107 (= res!3089426 call!718077)))

(declare-fun b!7748108 () Bool)

(declare-fun res!3089423 () Bool)

(declare-fun e!4593484 () Bool)

(assert (=> b!7748108 (=> res!3089423 e!4593484)))

(declare-fun e!4593481 () Bool)

(assert (=> b!7748108 (= res!3089423 e!4593481)))

(declare-fun res!3089425 () Bool)

(assert (=> b!7748108 (=> (not res!3089425) (not e!4593481))))

(declare-fun lt!2669005 () Bool)

(assert (=> b!7748108 (= res!3089425 lt!2669005)))

(declare-fun b!7748109 () Bool)

(assert (=> b!7748109 (= e!4593481 (= (head!15824 (_1!38122 lt!2668923)) (c!1429038 (regOne!41696 r!14126))))))

(declare-fun b!7748110 () Bool)

(declare-fun res!3089427 () Bool)

(assert (=> b!7748110 (=> (not res!3089427) (not e!4593481))))

(assert (=> b!7748110 (= res!3089427 (isEmpty!42009 (tail!15364 (_1!38122 lt!2668923))))))

(declare-fun b!7748111 () Bool)

(assert (=> b!7748111 (= e!4593484 e!4593482)))

(declare-fun res!3089421 () Bool)

(assert (=> b!7748111 (=> (not res!3089421) (not e!4593482))))

(assert (=> b!7748111 (= res!3089421 (not lt!2669005))))

(declare-fun b!7748112 () Bool)

(declare-fun e!4593483 () Bool)

(assert (=> b!7748112 (= e!4593483 (not lt!2669005))))

(declare-fun b!7748113 () Bool)

(declare-fun e!4593486 () Bool)

(assert (=> b!7748113 (= e!4593486 (nullable!9065 (regOne!41696 r!14126)))))

(declare-fun b!7748114 () Bool)

(declare-fun e!4593485 () Bool)

(assert (=> b!7748114 (= e!4593485 e!4593483)))

(declare-fun c!1429094 () Bool)

(assert (=> b!7748114 (= c!1429094 (is-EmptyLang!20592 (regOne!41696 r!14126)))))

(declare-fun b!7748115 () Bool)

(declare-fun res!3089424 () Bool)

(assert (=> b!7748115 (=> (not res!3089424) (not e!4593481))))

(assert (=> b!7748115 (= res!3089424 (not call!718077))))

(declare-fun b!7748116 () Bool)

(assert (=> b!7748116 (= e!4593485 (= lt!2669005 call!718077))))

(declare-fun b!7748117 () Bool)

(declare-fun res!3089420 () Bool)

(assert (=> b!7748117 (=> res!3089420 e!4593487)))

(assert (=> b!7748117 (= res!3089420 (not (isEmpty!42009 (tail!15364 (_1!38122 lt!2668923)))))))

(declare-fun b!7748118 () Bool)

(assert (=> b!7748118 (= e!4593487 (not (= (head!15824 (_1!38122 lt!2668923)) (c!1429038 (regOne!41696 r!14126)))))))

(declare-fun d!2342436 () Bool)

(assert (=> d!2342436 e!4593485))

(declare-fun c!1429093 () Bool)

(assert (=> d!2342436 (= c!1429093 (is-EmptyExpr!20592 (regOne!41696 r!14126)))))

(assert (=> d!2342436 (= lt!2669005 e!4593486)))

(declare-fun c!1429092 () Bool)

(assert (=> d!2342436 (= c!1429092 (isEmpty!42009 (_1!38122 lt!2668923)))))

(assert (=> d!2342436 (validRegex!11010 (regOne!41696 r!14126))))

(assert (=> d!2342436 (= (matchR!10084 (regOne!41696 r!14126) (_1!38122 lt!2668923)) lt!2669005)))

(declare-fun b!7748119 () Bool)

(assert (=> b!7748119 (= e!4593486 (matchR!10084 (derivativeStep!6024 (regOne!41696 r!14126) (head!15824 (_1!38122 lt!2668923))) (tail!15364 (_1!38122 lt!2668923))))))

(declare-fun bm!718072 () Bool)

(assert (=> bm!718072 (= call!718077 (isEmpty!42009 (_1!38122 lt!2668923)))))

(declare-fun b!7748120 () Bool)

(declare-fun res!3089422 () Bool)

(assert (=> b!7748120 (=> res!3089422 e!4593484)))

(assert (=> b!7748120 (= res!3089422 (not (is-ElementMatch!20592 (regOne!41696 r!14126))))))

(assert (=> b!7748120 (= e!4593483 e!4593484)))

(assert (= (and d!2342436 c!1429092) b!7748113))

(assert (= (and d!2342436 (not c!1429092)) b!7748119))

(assert (= (and d!2342436 c!1429093) b!7748116))

(assert (= (and d!2342436 (not c!1429093)) b!7748114))

(assert (= (and b!7748114 c!1429094) b!7748112))

(assert (= (and b!7748114 (not c!1429094)) b!7748120))

(assert (= (and b!7748120 (not res!3089422)) b!7748108))

(assert (= (and b!7748108 res!3089425) b!7748115))

(assert (= (and b!7748115 res!3089424) b!7748110))

(assert (= (and b!7748110 res!3089427) b!7748109))

(assert (= (and b!7748108 (not res!3089423)) b!7748111))

(assert (= (and b!7748111 res!3089421) b!7748107))

(assert (= (and b!7748107 (not res!3089426)) b!7748117))

(assert (= (and b!7748117 (not res!3089420)) b!7748118))

(assert (= (or b!7748116 b!7748107 b!7748115) bm!718072))

(assert (=> b!7748118 m!8215180))

(assert (=> b!7748117 m!8215174))

(assert (=> b!7748117 m!8215174))

(declare-fun m!8215336 () Bool)

(assert (=> b!7748117 m!8215336))

(assert (=> b!7748109 m!8215180))

(assert (=> d!2342436 m!8215328))

(assert (=> d!2342436 m!8215092))

(assert (=> b!7748110 m!8215174))

(assert (=> b!7748110 m!8215174))

(assert (=> b!7748110 m!8215336))

(declare-fun m!8215338 () Bool)

(assert (=> b!7748113 m!8215338))

(assert (=> bm!718072 m!8215328))

(assert (=> b!7748119 m!8215180))

(assert (=> b!7748119 m!8215180))

(declare-fun m!8215340 () Bool)

(assert (=> b!7748119 m!8215340))

(assert (=> b!7748119 m!8215174))

(assert (=> b!7748119 m!8215340))

(assert (=> b!7748119 m!8215174))

(declare-fun m!8215342 () Bool)

(assert (=> b!7748119 m!8215342))

(assert (=> b!7747785 d!2342436))

(declare-fun bs!1965662 () Bool)

(declare-fun b!7748126 () Bool)

(assert (= bs!1965662 (and b!7748126 b!7748099)))

(declare-fun lambda!471828 () Int)

(assert (=> bs!1965662 (not (= lambda!471828 lambda!471827))))

(declare-fun bs!1965663 () Bool)

(assert (= bs!1965663 (and b!7748126 b!7748101)))

(assert (=> bs!1965663 (= (and (= (_2!38122 lt!2668923) (_1!38122 lt!2668923)) (= (reg!20921 (regTwo!41696 r!14126)) (reg!20921 (regOne!41696 r!14126))) (= (regTwo!41696 r!14126) (regOne!41696 r!14126))) (= lambda!471828 lambda!471826))))

(declare-fun bs!1965664 () Bool)

(assert (= bs!1965664 (and b!7748126 d!2342410)))

(assert (=> bs!1965664 (not (= lambda!471828 lambda!471820))))

(declare-fun bs!1965665 () Bool)

(assert (= bs!1965665 (and b!7748126 b!7747786)))

(assert (=> bs!1965665 (not (= lambda!471828 lambda!471805))))

(declare-fun bs!1965666 () Bool)

(assert (= bs!1965666 (and b!7748126 b!7747774)))

(assert (=> bs!1965666 (not (= lambda!471828 lambda!471804))))

(assert (=> b!7748126 true))

(assert (=> b!7748126 true))

(declare-fun bs!1965667 () Bool)

(declare-fun b!7748124 () Bool)

(assert (= bs!1965667 (and b!7748124 b!7748099)))

(declare-fun lambda!471829 () Int)

(assert (=> bs!1965667 (= (and (= (_2!38122 lt!2668923) (_1!38122 lt!2668923)) (= (regOne!41696 (regTwo!41696 r!14126)) (regOne!41696 (regOne!41696 r!14126))) (= (regTwo!41696 (regTwo!41696 r!14126)) (regTwo!41696 (regOne!41696 r!14126)))) (= lambda!471829 lambda!471827))))

(declare-fun bs!1965668 () Bool)

(assert (= bs!1965668 (and b!7748124 b!7748101)))

(assert (=> bs!1965668 (not (= lambda!471829 lambda!471826))))

(declare-fun bs!1965669 () Bool)

(assert (= bs!1965669 (and b!7748124 b!7747786)))

(assert (=> bs!1965669 (= (and (= (_2!38122 lt!2668923) s!9605) (= (regOne!41696 (regTwo!41696 r!14126)) (regOne!41696 r!14126)) (= (regTwo!41696 (regTwo!41696 r!14126)) (regTwo!41696 r!14126))) (= lambda!471829 lambda!471805))))

(declare-fun bs!1965670 () Bool)

(assert (= bs!1965670 (and b!7748124 b!7747774)))

(assert (=> bs!1965670 (not (= lambda!471829 lambda!471804))))

(declare-fun bs!1965671 () Bool)

(assert (= bs!1965671 (and b!7748124 d!2342410)))

(assert (=> bs!1965671 (not (= lambda!471829 lambda!471820))))

(declare-fun bs!1965672 () Bool)

(assert (= bs!1965672 (and b!7748124 b!7748126)))

(assert (=> bs!1965672 (not (= lambda!471829 lambda!471828))))

(assert (=> b!7748124 true))

(assert (=> b!7748124 true))

(declare-fun b!7748121 () Bool)

(declare-fun e!4593492 () Bool)

(declare-fun e!4593489 () Bool)

(assert (=> b!7748121 (= e!4593492 e!4593489)))

(declare-fun c!1429097 () Bool)

(assert (=> b!7748121 (= c!1429097 (is-Star!20592 (regTwo!41696 r!14126)))))

(declare-fun b!7748122 () Bool)

(declare-fun e!4593493 () Bool)

(declare-fun call!718079 () Bool)

(assert (=> b!7748122 (= e!4593493 call!718079)))

(declare-fun b!7748123 () Bool)

(declare-fun e!4593491 () Bool)

(assert (=> b!7748123 (= e!4593491 (= (_2!38122 lt!2668923) (Cons!73315 (c!1429038 (regTwo!41696 r!14126)) Nil!73315)))))

(declare-fun call!718078 () Bool)

(assert (=> b!7748124 (= e!4593489 call!718078)))

(declare-fun bm!718073 () Bool)

(assert (=> bm!718073 (= call!718079 (isEmpty!42009 (_2!38122 lt!2668923)))))

(declare-fun b!7748125 () Bool)

(declare-fun c!1429096 () Bool)

(assert (=> b!7748125 (= c!1429096 (is-Union!20592 (regTwo!41696 r!14126)))))

(assert (=> b!7748125 (= e!4593491 e!4593492)))

(declare-fun e!4593490 () Bool)

(assert (=> b!7748126 (= e!4593490 call!718078)))

(declare-fun b!7748127 () Bool)

(declare-fun c!1429098 () Bool)

(assert (=> b!7748127 (= c!1429098 (is-ElementMatch!20592 (regTwo!41696 r!14126)))))

(declare-fun e!4593488 () Bool)

(assert (=> b!7748127 (= e!4593488 e!4593491)))

(declare-fun b!7748128 () Bool)

(declare-fun res!3089429 () Bool)

(assert (=> b!7748128 (=> res!3089429 e!4593490)))

(assert (=> b!7748128 (= res!3089429 call!718079)))

(assert (=> b!7748128 (= e!4593489 e!4593490)))

(declare-fun d!2342438 () Bool)

(declare-fun c!1429095 () Bool)

(assert (=> d!2342438 (= c!1429095 (is-EmptyExpr!20592 (regTwo!41696 r!14126)))))

(assert (=> d!2342438 (= (matchRSpec!4657 (regTwo!41696 r!14126) (_2!38122 lt!2668923)) e!4593493)))

(declare-fun bm!718074 () Bool)

(assert (=> bm!718074 (= call!718078 (Exists!4713 (ite c!1429097 lambda!471828 lambda!471829)))))

(declare-fun b!7748129 () Bool)

(assert (=> b!7748129 (= e!4593493 e!4593488)))

(declare-fun res!3089430 () Bool)

(assert (=> b!7748129 (= res!3089430 (not (is-EmptyLang!20592 (regTwo!41696 r!14126))))))

(assert (=> b!7748129 (=> (not res!3089430) (not e!4593488))))

(declare-fun b!7748130 () Bool)

(declare-fun e!4593494 () Bool)

(assert (=> b!7748130 (= e!4593494 (matchRSpec!4657 (regTwo!41697 (regTwo!41696 r!14126)) (_2!38122 lt!2668923)))))

(declare-fun b!7748131 () Bool)

(assert (=> b!7748131 (= e!4593492 e!4593494)))

(declare-fun res!3089428 () Bool)

(assert (=> b!7748131 (= res!3089428 (matchRSpec!4657 (regOne!41697 (regTwo!41696 r!14126)) (_2!38122 lt!2668923)))))

(assert (=> b!7748131 (=> res!3089428 e!4593494)))

(assert (= (and d!2342438 c!1429095) b!7748122))

(assert (= (and d!2342438 (not c!1429095)) b!7748129))

(assert (= (and b!7748129 res!3089430) b!7748127))

(assert (= (and b!7748127 c!1429098) b!7748123))

(assert (= (and b!7748127 (not c!1429098)) b!7748125))

(assert (= (and b!7748125 c!1429096) b!7748131))

(assert (= (and b!7748125 (not c!1429096)) b!7748121))

(assert (= (and b!7748131 (not res!3089428)) b!7748130))

(assert (= (and b!7748121 c!1429097) b!7748128))

(assert (= (and b!7748121 (not c!1429097)) b!7748124))

(assert (= (and b!7748128 (not res!3089429)) b!7748126))

(assert (= (or b!7748126 b!7748124) bm!718074))

(assert (= (or b!7748122 b!7748128) bm!718073))

(declare-fun m!8215344 () Bool)

(assert (=> bm!718073 m!8215344))

(declare-fun m!8215346 () Bool)

(assert (=> bm!718074 m!8215346))

(declare-fun m!8215348 () Bool)

(assert (=> b!7748130 m!8215348))

(declare-fun m!8215350 () Bool)

(assert (=> b!7748131 m!8215350))

(assert (=> b!7747785 d!2342438))

(declare-fun b!7748132 () Bool)

(declare-fun e!4593496 () Bool)

(declare-fun e!4593501 () Bool)

(assert (=> b!7748132 (= e!4593496 e!4593501)))

(declare-fun res!3089437 () Bool)

(assert (=> b!7748132 (=> res!3089437 e!4593501)))

(declare-fun call!718080 () Bool)

(assert (=> b!7748132 (= res!3089437 call!718080)))

(declare-fun b!7748133 () Bool)

(declare-fun res!3089434 () Bool)

(declare-fun e!4593498 () Bool)

(assert (=> b!7748133 (=> res!3089434 e!4593498)))

(declare-fun e!4593495 () Bool)

(assert (=> b!7748133 (= res!3089434 e!4593495)))

(declare-fun res!3089436 () Bool)

(assert (=> b!7748133 (=> (not res!3089436) (not e!4593495))))

(declare-fun lt!2669006 () Bool)

(assert (=> b!7748133 (= res!3089436 lt!2669006)))

(declare-fun b!7748134 () Bool)

(assert (=> b!7748134 (= e!4593495 (= (head!15824 (_2!38122 lt!2668923)) (c!1429038 (regTwo!41696 r!14126))))))

(declare-fun b!7748135 () Bool)

(declare-fun res!3089438 () Bool)

(assert (=> b!7748135 (=> (not res!3089438) (not e!4593495))))

(assert (=> b!7748135 (= res!3089438 (isEmpty!42009 (tail!15364 (_2!38122 lt!2668923))))))

(declare-fun b!7748136 () Bool)

(assert (=> b!7748136 (= e!4593498 e!4593496)))

(declare-fun res!3089432 () Bool)

(assert (=> b!7748136 (=> (not res!3089432) (not e!4593496))))

(assert (=> b!7748136 (= res!3089432 (not lt!2669006))))

(declare-fun b!7748137 () Bool)

(declare-fun e!4593497 () Bool)

(assert (=> b!7748137 (= e!4593497 (not lt!2669006))))

(declare-fun b!7748138 () Bool)

(declare-fun e!4593500 () Bool)

(assert (=> b!7748138 (= e!4593500 (nullable!9065 (regTwo!41696 r!14126)))))

(declare-fun b!7748139 () Bool)

(declare-fun e!4593499 () Bool)

(assert (=> b!7748139 (= e!4593499 e!4593497)))

(declare-fun c!1429101 () Bool)

(assert (=> b!7748139 (= c!1429101 (is-EmptyLang!20592 (regTwo!41696 r!14126)))))

(declare-fun b!7748140 () Bool)

(declare-fun res!3089435 () Bool)

(assert (=> b!7748140 (=> (not res!3089435) (not e!4593495))))

(assert (=> b!7748140 (= res!3089435 (not call!718080))))

(declare-fun b!7748141 () Bool)

(assert (=> b!7748141 (= e!4593499 (= lt!2669006 call!718080))))

(declare-fun b!7748142 () Bool)

(declare-fun res!3089431 () Bool)

(assert (=> b!7748142 (=> res!3089431 e!4593501)))

(assert (=> b!7748142 (= res!3089431 (not (isEmpty!42009 (tail!15364 (_2!38122 lt!2668923)))))))

(declare-fun b!7748143 () Bool)

(assert (=> b!7748143 (= e!4593501 (not (= (head!15824 (_2!38122 lt!2668923)) (c!1429038 (regTwo!41696 r!14126)))))))

(declare-fun d!2342440 () Bool)

(assert (=> d!2342440 e!4593499))

(declare-fun c!1429100 () Bool)

(assert (=> d!2342440 (= c!1429100 (is-EmptyExpr!20592 (regTwo!41696 r!14126)))))

(assert (=> d!2342440 (= lt!2669006 e!4593500)))

(declare-fun c!1429099 () Bool)

(assert (=> d!2342440 (= c!1429099 (isEmpty!42009 (_2!38122 lt!2668923)))))

(assert (=> d!2342440 (validRegex!11010 (regTwo!41696 r!14126))))

(assert (=> d!2342440 (= (matchR!10084 (regTwo!41696 r!14126) (_2!38122 lt!2668923)) lt!2669006)))

(declare-fun b!7748144 () Bool)

(assert (=> b!7748144 (= e!4593500 (matchR!10084 (derivativeStep!6024 (regTwo!41696 r!14126) (head!15824 (_2!38122 lt!2668923))) (tail!15364 (_2!38122 lt!2668923))))))

(declare-fun bm!718075 () Bool)

(assert (=> bm!718075 (= call!718080 (isEmpty!42009 (_2!38122 lt!2668923)))))

(declare-fun b!7748145 () Bool)

(declare-fun res!3089433 () Bool)

(assert (=> b!7748145 (=> res!3089433 e!4593498)))

(assert (=> b!7748145 (= res!3089433 (not (is-ElementMatch!20592 (regTwo!41696 r!14126))))))

(assert (=> b!7748145 (= e!4593497 e!4593498)))

(assert (= (and d!2342440 c!1429099) b!7748138))

(assert (= (and d!2342440 (not c!1429099)) b!7748144))

(assert (= (and d!2342440 c!1429100) b!7748141))

(assert (= (and d!2342440 (not c!1429100)) b!7748139))

(assert (= (and b!7748139 c!1429101) b!7748137))

(assert (= (and b!7748139 (not c!1429101)) b!7748145))

(assert (= (and b!7748145 (not res!3089433)) b!7748133))

(assert (= (and b!7748133 res!3089436) b!7748140))

(assert (= (and b!7748140 res!3089435) b!7748135))

(assert (= (and b!7748135 res!3089438) b!7748134))

(assert (= (and b!7748133 (not res!3089434)) b!7748136))

(assert (= (and b!7748136 res!3089432) b!7748132))

(assert (= (and b!7748132 (not res!3089437)) b!7748142))

(assert (= (and b!7748142 (not res!3089431)) b!7748143))

(assert (= (or b!7748141 b!7748132 b!7748140) bm!718075))

(declare-fun m!8215352 () Bool)

(assert (=> b!7748143 m!8215352))

(declare-fun m!8215354 () Bool)

(assert (=> b!7748142 m!8215354))

(assert (=> b!7748142 m!8215354))

(declare-fun m!8215356 () Bool)

(assert (=> b!7748142 m!8215356))

(assert (=> b!7748134 m!8215352))

(assert (=> d!2342440 m!8215344))

(assert (=> d!2342440 m!8215080))

(assert (=> b!7748135 m!8215354))

(assert (=> b!7748135 m!8215354))

(assert (=> b!7748135 m!8215356))

(declare-fun m!8215358 () Bool)

(assert (=> b!7748138 m!8215358))

(assert (=> bm!718075 m!8215344))

(assert (=> b!7748144 m!8215352))

(assert (=> b!7748144 m!8215352))

(declare-fun m!8215360 () Bool)

(assert (=> b!7748144 m!8215360))

(assert (=> b!7748144 m!8215354))

(assert (=> b!7748144 m!8215360))

(assert (=> b!7748144 m!8215354))

(declare-fun m!8215362 () Bool)

(assert (=> b!7748144 m!8215362))

(assert (=> b!7747785 d!2342440))

(declare-fun d!2342442 () Bool)

(declare-fun lt!2669009 () tuple2!69638)

(declare-fun dynLambda!29984 (Int tuple2!69638) Bool)

(assert (=> d!2342442 (dynLambda!29984 lambda!471805 lt!2669009)))

(declare-fun choose!59411 (Int) tuple2!69638)

(assert (=> d!2342442 (= lt!2669009 (choose!59411 lambda!471805))))

(assert (=> d!2342442 (Exists!4713 lambda!471805)))

(assert (=> d!2342442 (= (pickWitness!549 lambda!471805) lt!2669009)))

(declare-fun b_lambda!289419 () Bool)

(assert (=> (not b_lambda!289419) (not d!2342442)))

(declare-fun bs!1965673 () Bool)

(assert (= bs!1965673 d!2342442))

(declare-fun m!8215364 () Bool)

(assert (=> bs!1965673 m!8215364))

(declare-fun m!8215366 () Bool)

(assert (=> bs!1965673 m!8215366))

(assert (=> bs!1965673 m!8215066))

(assert (=> b!7747785 d!2342442))

(declare-fun d!2342444 () Bool)

(assert (=> d!2342444 (= (matchR!10084 (regTwo!41696 r!14126) (_2!38122 lt!2668923)) (matchRSpec!4657 (regTwo!41696 r!14126) (_2!38122 lt!2668923)))))

(declare-fun lt!2669014 () Unit!168292)

(declare-fun choose!59412 (Regex!20592 List!73439) Unit!168292)

(assert (=> d!2342444 (= lt!2669014 (choose!59412 (regTwo!41696 r!14126) (_2!38122 lt!2668923)))))

(assert (=> d!2342444 (validRegex!11010 (regTwo!41696 r!14126))))

(assert (=> d!2342444 (= (mainMatchTheorem!4627 (regTwo!41696 r!14126) (_2!38122 lt!2668923)) lt!2669014)))

(declare-fun bs!1965674 () Bool)

(assert (= bs!1965674 d!2342444))

(assert (=> bs!1965674 m!8215082))

(assert (=> bs!1965674 m!8215084))

(declare-fun m!8215368 () Bool)

(assert (=> bs!1965674 m!8215368))

(assert (=> bs!1965674 m!8215080))

(assert (=> b!7747785 d!2342444))

(declare-fun bm!718076 () Bool)

(declare-fun call!718082 () Bool)

(declare-fun c!1429104 () Bool)

(assert (=> bm!718076 (= call!718082 (validRegex!11010 (ite c!1429104 (regTwo!41697 (regOne!41696 r!14126)) (regTwo!41696 (regOne!41696 r!14126)))))))

(declare-fun bm!718077 () Bool)

(declare-fun c!1429105 () Bool)

(declare-fun call!718083 () Bool)

(assert (=> bm!718077 (= call!718083 (validRegex!11010 (ite c!1429105 (reg!20921 (regOne!41696 r!14126)) (ite c!1429104 (regOne!41697 (regOne!41696 r!14126)) (regOne!41696 (regOne!41696 r!14126))))))))

(declare-fun b!7748150 () Bool)

(declare-fun e!4593505 () Bool)

(declare-fun e!4593506 () Bool)

(assert (=> b!7748150 (= e!4593505 e!4593506)))

(assert (=> b!7748150 (= c!1429105 (is-Star!20592 (regOne!41696 r!14126)))))

(declare-fun b!7748151 () Bool)

(declare-fun res!3089442 () Bool)

(declare-fun e!4593510 () Bool)

(assert (=> b!7748151 (=> res!3089442 e!4593510)))

(assert (=> b!7748151 (= res!3089442 (not (is-Concat!29437 (regOne!41696 r!14126))))))

(declare-fun e!4593507 () Bool)

(assert (=> b!7748151 (= e!4593507 e!4593510)))

(declare-fun b!7748152 () Bool)

(declare-fun e!4593508 () Bool)

(assert (=> b!7748152 (= e!4593510 e!4593508)))

(declare-fun res!3089439 () Bool)

(assert (=> b!7748152 (=> (not res!3089439) (not e!4593508))))

(declare-fun call!718081 () Bool)

(assert (=> b!7748152 (= res!3089439 call!718081)))

(declare-fun bm!718078 () Bool)

(assert (=> bm!718078 (= call!718081 call!718083)))

(declare-fun d!2342446 () Bool)

(declare-fun res!3089440 () Bool)

(assert (=> d!2342446 (=> res!3089440 e!4593505)))

(assert (=> d!2342446 (= res!3089440 (is-ElementMatch!20592 (regOne!41696 r!14126)))))

(assert (=> d!2342446 (= (validRegex!11010 (regOne!41696 r!14126)) e!4593505)))

(declare-fun b!7748153 () Bool)

(declare-fun e!4593504 () Bool)

(assert (=> b!7748153 (= e!4593504 call!718082)))

(declare-fun b!7748154 () Bool)

(assert (=> b!7748154 (= e!4593508 call!718082)))

(declare-fun b!7748155 () Bool)

(declare-fun e!4593509 () Bool)

(assert (=> b!7748155 (= e!4593506 e!4593509)))

(declare-fun res!3089443 () Bool)

(assert (=> b!7748155 (= res!3089443 (not (nullable!9065 (reg!20921 (regOne!41696 r!14126)))))))

(assert (=> b!7748155 (=> (not res!3089443) (not e!4593509))))

(declare-fun b!7748156 () Bool)

(assert (=> b!7748156 (= e!4593509 call!718083)))

(declare-fun b!7748157 () Bool)

(declare-fun res!3089441 () Bool)

(assert (=> b!7748157 (=> (not res!3089441) (not e!4593504))))

(assert (=> b!7748157 (= res!3089441 call!718081)))

(assert (=> b!7748157 (= e!4593507 e!4593504)))

(declare-fun b!7748158 () Bool)

(assert (=> b!7748158 (= e!4593506 e!4593507)))

(assert (=> b!7748158 (= c!1429104 (is-Union!20592 (regOne!41696 r!14126)))))

(assert (= (and d!2342446 (not res!3089440)) b!7748150))

(assert (= (and b!7748150 c!1429105) b!7748155))

(assert (= (and b!7748150 (not c!1429105)) b!7748158))

(assert (= (and b!7748155 res!3089443) b!7748156))

(assert (= (and b!7748158 c!1429104) b!7748157))

(assert (= (and b!7748158 (not c!1429104)) b!7748151))

(assert (= (and b!7748157 res!3089441) b!7748153))

(assert (= (and b!7748151 (not res!3089442)) b!7748152))

(assert (= (and b!7748152 res!3089439) b!7748154))

(assert (= (or b!7748157 b!7748152) bm!718078))

(assert (= (or b!7748153 b!7748154) bm!718076))

(assert (= (or b!7748156 bm!718078) bm!718077))

(declare-fun m!8215370 () Bool)

(assert (=> bm!718076 m!8215370))

(declare-fun m!8215372 () Bool)

(assert (=> bm!718077 m!8215372))

(declare-fun m!8215374 () Bool)

(assert (=> b!7748155 m!8215374))

(assert (=> b!7747785 d!2342446))

(declare-fun d!2342448 () Bool)

(assert (=> d!2342448 (= (matchR!10084 (regOne!41696 r!14126) (_1!38122 lt!2668923)) (matchRSpec!4657 (regOne!41696 r!14126) (_1!38122 lt!2668923)))))

(declare-fun lt!2669015 () Unit!168292)

(assert (=> d!2342448 (= lt!2669015 (choose!59412 (regOne!41696 r!14126) (_1!38122 lt!2668923)))))

(assert (=> d!2342448 (validRegex!11010 (regOne!41696 r!14126))))

(assert (=> d!2342448 (= (mainMatchTheorem!4627 (regOne!41696 r!14126) (_1!38122 lt!2668923)) lt!2669015)))

(declare-fun bs!1965675 () Bool)

(assert (= bs!1965675 d!2342448))

(assert (=> bs!1965675 m!8215090))

(assert (=> bs!1965675 m!8215086))

(declare-fun m!8215376 () Bool)

(assert (=> bs!1965675 m!8215376))

(assert (=> bs!1965675 m!8215092))

(assert (=> b!7747785 d!2342448))

(declare-fun b!7748195 () Bool)

(declare-fun e!4593525 () Bool)

(declare-fun tp!2273239 () Bool)

(assert (=> b!7748195 (= e!4593525 tp!2273239)))

(declare-fun b!7748194 () Bool)

(declare-fun tp!2273237 () Bool)

(declare-fun tp!2273236 () Bool)

(assert (=> b!7748194 (= e!4593525 (and tp!2273237 tp!2273236))))

(assert (=> b!7747776 (= tp!2273205 e!4593525)))

(declare-fun b!7748196 () Bool)

(declare-fun tp!2273240 () Bool)

(declare-fun tp!2273238 () Bool)

(assert (=> b!7748196 (= e!4593525 (and tp!2273240 tp!2273238))))

(declare-fun b!7748193 () Bool)

(assert (=> b!7748193 (= e!4593525 tp_is_empty!51539)))

(assert (= (and b!7747776 (is-ElementMatch!20592 (reg!20921 r!14126))) b!7748193))

(assert (= (and b!7747776 (is-Concat!29437 (reg!20921 r!14126))) b!7748194))

(assert (= (and b!7747776 (is-Star!20592 (reg!20921 r!14126))) b!7748195))

(assert (= (and b!7747776 (is-Union!20592 (reg!20921 r!14126))) b!7748196))

(declare-fun b!7748199 () Bool)

(declare-fun e!4593526 () Bool)

(declare-fun tp!2273244 () Bool)

(assert (=> b!7748199 (= e!4593526 tp!2273244)))

(declare-fun b!7748198 () Bool)

(declare-fun tp!2273242 () Bool)

(declare-fun tp!2273241 () Bool)

(assert (=> b!7748198 (= e!4593526 (and tp!2273242 tp!2273241))))

(assert (=> b!7747781 (= tp!2273202 e!4593526)))

(declare-fun b!7748200 () Bool)

(declare-fun tp!2273245 () Bool)

(declare-fun tp!2273243 () Bool)

(assert (=> b!7748200 (= e!4593526 (and tp!2273245 tp!2273243))))

(declare-fun b!7748197 () Bool)

(assert (=> b!7748197 (= e!4593526 tp_is_empty!51539)))

(assert (= (and b!7747781 (is-ElementMatch!20592 (regOne!41696 r!14126))) b!7748197))

(assert (= (and b!7747781 (is-Concat!29437 (regOne!41696 r!14126))) b!7748198))

(assert (= (and b!7747781 (is-Star!20592 (regOne!41696 r!14126))) b!7748199))

(assert (= (and b!7747781 (is-Union!20592 (regOne!41696 r!14126))) b!7748200))

(declare-fun b!7748203 () Bool)

(declare-fun e!4593527 () Bool)

(declare-fun tp!2273249 () Bool)

(assert (=> b!7748203 (= e!4593527 tp!2273249)))

(declare-fun b!7748202 () Bool)

(declare-fun tp!2273247 () Bool)

(declare-fun tp!2273246 () Bool)

(assert (=> b!7748202 (= e!4593527 (and tp!2273247 tp!2273246))))

(assert (=> b!7747781 (= tp!2273207 e!4593527)))

(declare-fun b!7748204 () Bool)

(declare-fun tp!2273250 () Bool)

(declare-fun tp!2273248 () Bool)

(assert (=> b!7748204 (= e!4593527 (and tp!2273250 tp!2273248))))

(declare-fun b!7748201 () Bool)

(assert (=> b!7748201 (= e!4593527 tp_is_empty!51539)))

(assert (= (and b!7747781 (is-ElementMatch!20592 (regTwo!41696 r!14126))) b!7748201))

(assert (= (and b!7747781 (is-Concat!29437 (regTwo!41696 r!14126))) b!7748202))

(assert (= (and b!7747781 (is-Star!20592 (regTwo!41696 r!14126))) b!7748203))

(assert (= (and b!7747781 (is-Union!20592 (regTwo!41696 r!14126))) b!7748204))

(declare-fun b!7748207 () Bool)

(declare-fun e!4593528 () Bool)

(declare-fun tp!2273254 () Bool)

(assert (=> b!7748207 (= e!4593528 tp!2273254)))

(declare-fun b!7748206 () Bool)

(declare-fun tp!2273252 () Bool)

(declare-fun tp!2273251 () Bool)

(assert (=> b!7748206 (= e!4593528 (and tp!2273252 tp!2273251))))

(assert (=> b!7747770 (= tp!2273203 e!4593528)))

(declare-fun b!7748208 () Bool)

(declare-fun tp!2273255 () Bool)

(declare-fun tp!2273253 () Bool)

(assert (=> b!7748208 (= e!4593528 (and tp!2273255 tp!2273253))))

(declare-fun b!7748205 () Bool)

(assert (=> b!7748205 (= e!4593528 tp_is_empty!51539)))

(assert (= (and b!7747770 (is-ElementMatch!20592 (regOne!41697 r!14126))) b!7748205))

(assert (= (and b!7747770 (is-Concat!29437 (regOne!41697 r!14126))) b!7748206))

(assert (= (and b!7747770 (is-Star!20592 (regOne!41697 r!14126))) b!7748207))

(assert (= (and b!7747770 (is-Union!20592 (regOne!41697 r!14126))) b!7748208))

(declare-fun b!7748211 () Bool)

(declare-fun e!4593529 () Bool)

(declare-fun tp!2273259 () Bool)

(assert (=> b!7748211 (= e!4593529 tp!2273259)))

(declare-fun b!7748210 () Bool)

(declare-fun tp!2273257 () Bool)

(declare-fun tp!2273256 () Bool)

(assert (=> b!7748210 (= e!4593529 (and tp!2273257 tp!2273256))))

(assert (=> b!7747770 (= tp!2273206 e!4593529)))

(declare-fun b!7748212 () Bool)

(declare-fun tp!2273260 () Bool)

(declare-fun tp!2273258 () Bool)

(assert (=> b!7748212 (= e!4593529 (and tp!2273260 tp!2273258))))

(declare-fun b!7748209 () Bool)

(assert (=> b!7748209 (= e!4593529 tp_is_empty!51539)))

(assert (= (and b!7747770 (is-ElementMatch!20592 (regTwo!41697 r!14126))) b!7748209))

(assert (= (and b!7747770 (is-Concat!29437 (regTwo!41697 r!14126))) b!7748210))

(assert (= (and b!7747770 (is-Star!20592 (regTwo!41697 r!14126))) b!7748211))

(assert (= (and b!7747770 (is-Union!20592 (regTwo!41697 r!14126))) b!7748212))

(declare-fun b!7748217 () Bool)

(declare-fun e!4593532 () Bool)

(declare-fun tp!2273263 () Bool)

(assert (=> b!7748217 (= e!4593532 (and tp_is_empty!51539 tp!2273263))))

(assert (=> b!7747775 (= tp!2273204 e!4593532)))

(assert (= (and b!7747775 (is-Cons!73315 (t!388174 s!9605))) b!7748217))

(declare-fun b_lambda!289421 () Bool)

(assert (= b_lambda!289419 (or b!7747786 b_lambda!289421)))

(declare-fun bs!1965676 () Bool)

(declare-fun d!2342450 () Bool)

(assert (= bs!1965676 (and d!2342450 b!7747786)))

(declare-fun res!3089460 () Bool)

(declare-fun e!4593533 () Bool)

(assert (=> bs!1965676 (=> (not res!3089460) (not e!4593533))))

(assert (=> bs!1965676 (= res!3089460 (= (++!17791 (_1!38122 lt!2669009) (_2!38122 lt!2669009)) s!9605))))

(assert (=> bs!1965676 (= (dynLambda!29984 lambda!471805 lt!2669009) e!4593533)))

(declare-fun b!7748218 () Bool)

(declare-fun res!3089461 () Bool)

(assert (=> b!7748218 (=> (not res!3089461) (not e!4593533))))

(assert (=> b!7748218 (= res!3089461 (matchRSpec!4657 (regOne!41696 r!14126) (_1!38122 lt!2669009)))))

(declare-fun b!7748219 () Bool)

(assert (=> b!7748219 (= e!4593533 (matchRSpec!4657 (regTwo!41696 r!14126) (_2!38122 lt!2669009)))))

(assert (= (and bs!1965676 res!3089460) b!7748218))

(assert (= (and b!7748218 res!3089461) b!7748219))

(declare-fun m!8215378 () Bool)

(assert (=> bs!1965676 m!8215378))

(declare-fun m!8215380 () Bool)

(assert (=> b!7748218 m!8215380))

(declare-fun m!8215382 () Bool)

(assert (=> b!7748219 m!8215382))

(assert (=> d!2342442 d!2342450))

(push 1)

(assert (not b!7748144))

(assert (not b!7748105))

(assert (not b_lambda!289421))

(assert (not b!7748113))

(assert (not b!7748138))

(assert (not b!7748021))

(assert (not b!7748109))

(assert (not b!7748212))

(assert (not b!7748142))

(assert (not b!7748118))

(assert (not b!7748003))

(assert (not b!7747973))

(assert (not b!7748198))

(assert (not b!7748012))

(assert (not b!7748134))

(assert (not b!7748016))

(assert (not d!2342404))

(assert (not b!7748219))

(assert (not b!7748194))

(assert (not b!7747921))

(assert (not b!7748143))

(assert (not b!7748022))

(assert (not b!7748200))

(assert (not b!7748217))

(assert (not d!2342406))

(assert (not bm!718074))

(assert (not b!7747875))

(assert (not bm!718076))

(assert (not b!7748207))

(assert (not bm!718063))

(assert (not b!7748196))

(assert (not b!7748117))

(assert (not b!7748218))

(assert (not b!7747889))

(assert (not d!2342410))

(assert (not d!2342392))

(assert (not b!7748033))

(assert (not bm!718061))

(assert (not bs!1965676))

(assert (not d!2342402))

(assert (not b!7747971))

(assert (not b!7748002))

(assert (not bm!718070))

(assert (not b!7748009))

(assert (not b!7747967))

(assert (not b!7747964))

(assert (not b!7747887))

(assert (not b!7748211))

(assert (not bm!718064))

(assert (not d!2342424))

(assert (not b!7747888))

(assert (not b!7748106))

(assert (not bm!718062))

(assert (not b!7747927))

(assert (not b!7748006))

(assert (not b!7748119))

(assert (not b!7747963))

(assert (not d!2342414))

(assert (not b!7748001))

(assert (not d!2342428))

(assert (not b!7748206))

(assert (not b!7748204))

(assert (not b!7748208))

(assert (not bm!718071))

(assert (not b!7747926))

(assert (not bm!718057))

(assert (not b!7748025))

(assert (not d!2342448))

(assert (not b!7748004))

(assert (not d!2342420))

(assert (not b!7748026))

(assert (not b!7748135))

(assert (not bm!718073))

(assert (not b!7748013))

(assert (not d!2342422))

(assert (not bm!718072))

(assert (not b!7748155))

(assert (not b!7748110))

(assert (not d!2342440))

(assert (not bm!718075))

(assert tp_is_empty!51539)

(assert (not d!2342412))

(assert (not bm!718056))

(assert (not b!7747876))

(assert (not b!7748199))

(assert (not d!2342444))

(assert (not d!2342442))

(assert (not b!7748202))

(assert (not b!7748130))

(assert (not d!2342436))

(assert (not b!7747972))

(assert (not bm!718077))

(assert (not b!7748131))

(assert (not b!7748210))

(assert (not b!7748203))

(assert (not b!7748195))

(assert (not b!7748020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

