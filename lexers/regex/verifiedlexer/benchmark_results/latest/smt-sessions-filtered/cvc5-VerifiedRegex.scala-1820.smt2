; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90836 () Bool)

(assert start!90836)

(declare-fun b!1054742 () Bool)

(assert (=> b!1054742 true))

(assert (=> b!1054742 true))

(declare-fun lambda!38104 () Int)

(declare-fun lambda!38103 () Int)

(assert (=> b!1054742 (not (= lambda!38104 lambda!38103))))

(assert (=> b!1054742 true))

(assert (=> b!1054742 true))

(declare-fun bs!251548 () Bool)

(declare-fun b!1054749 () Bool)

(assert (= bs!251548 (and b!1054749 b!1054742)))

(declare-fun lambda!38105 () Int)

(declare-datatypes ((C!6366 0))(
  ( (C!6367 (val!3431 Int)) )
))
(declare-datatypes ((Regex!2898 0))(
  ( (ElementMatch!2898 (c!176427 C!6366)) (Concat!4731 (regOne!6308 Regex!2898) (regTwo!6308 Regex!2898)) (EmptyExpr!2898) (Star!2898 (reg!3227 Regex!2898)) (EmptyLang!2898) (Union!2898 (regOne!6309 Regex!2898) (regTwo!6309 Regex!2898)) )
))
(declare-fun lt!358849 () Regex!2898)

(declare-fun r!15766 () Regex!2898)

(declare-fun lt!358852 () Regex!2898)

(assert (=> bs!251548 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38105 lambda!38103))))

(assert (=> bs!251548 (not (= lambda!38105 lambda!38104))))

(assert (=> b!1054749 true))

(assert (=> b!1054749 true))

(assert (=> b!1054749 true))

(declare-fun lambda!38106 () Int)

(assert (=> bs!251548 (not (= lambda!38106 lambda!38103))))

(assert (=> bs!251548 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38106 lambda!38104))))

(assert (=> b!1054749 (not (= lambda!38106 lambda!38105))))

(assert (=> b!1054749 true))

(assert (=> b!1054749 true))

(assert (=> b!1054749 true))

(declare-fun res!471683 () Bool)

(declare-fun e!669866 () Bool)

(assert (=> start!90836 (=> (not res!471683) (not e!669866))))

(declare-fun validRegex!1367 (Regex!2898) Bool)

(assert (=> start!90836 (= res!471683 (validRegex!1367 r!15766))))

(assert (=> start!90836 e!669866))

(declare-fun e!669864 () Bool)

(assert (=> start!90836 e!669864))

(declare-fun e!669869 () Bool)

(assert (=> start!90836 e!669869))

(declare-fun b!1054740 () Bool)

(declare-fun tp!317647 () Bool)

(assert (=> b!1054740 (= e!669864 tp!317647)))

(declare-fun b!1054741 () Bool)

(declare-fun tp_is_empty!5439 () Bool)

(assert (=> b!1054741 (= e!669864 tp_is_empty!5439)))

(declare-fun e!669867 () Bool)

(declare-fun e!669868 () Bool)

(assert (=> b!1054742 (= e!669867 e!669868)))

(declare-fun res!471682 () Bool)

(assert (=> b!1054742 (=> res!471682 e!669868)))

(declare-datatypes ((List!10128 0))(
  ( (Nil!10112) (Cons!10112 (h!15513 C!6366) (t!101174 List!10128)) )
))
(declare-fun s!10566 () List!10128)

(declare-fun isEmpty!6526 (List!10128) Bool)

(assert (=> b!1054742 (= res!471682 (isEmpty!6526 s!10566))))

(declare-fun Exists!625 (Int) Bool)

(assert (=> b!1054742 (= (Exists!625 lambda!38103) (Exists!625 lambda!38104))))

(declare-datatypes ((Unit!15471 0))(
  ( (Unit!15472) )
))
(declare-fun lt!358853 () Unit!15471)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!313 (Regex!2898 Regex!2898 List!10128) Unit!15471)

(assert (=> b!1054742 (= lt!358853 (lemmaExistCutMatchRandMatchRSpecEquivalent!313 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566))))

(declare-datatypes ((tuple2!11562 0))(
  ( (tuple2!11563 (_1!6607 List!10128) (_2!6607 List!10128)) )
))
(declare-datatypes ((Option!2423 0))(
  ( (None!2422) (Some!2422 (v!19839 tuple2!11562)) )
))
(declare-fun isDefined!2065 (Option!2423) Bool)

(declare-fun findConcatSeparation!529 (Regex!2898 Regex!2898 List!10128 List!10128 List!10128) Option!2423)

(assert (=> b!1054742 (= (isDefined!2065 (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) Nil!10112 s!10566 s!10566)) (Exists!625 lambda!38103))))

(declare-fun lt!358847 () Unit!15471)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!529 (Regex!2898 Regex!2898 List!10128) Unit!15471)

(assert (=> b!1054742 (= lt!358847 (lemmaFindConcatSeparationEquivalentToExists!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566))))

(declare-fun b!1054743 () Bool)

(declare-fun tp!317645 () Bool)

(assert (=> b!1054743 (= e!669869 (and tp_is_empty!5439 tp!317645))))

(declare-fun b!1054744 () Bool)

(declare-fun tp!317649 () Bool)

(declare-fun tp!317648 () Bool)

(assert (=> b!1054744 (= e!669864 (and tp!317649 tp!317648))))

(declare-fun b!1054745 () Bool)

(assert (=> b!1054745 (= e!669866 (not e!669867))))

(declare-fun res!471681 () Bool)

(assert (=> b!1054745 (=> res!471681 e!669867)))

(declare-fun lt!358857 () Bool)

(assert (=> b!1054745 (= res!471681 (or lt!358857 (and (is-Concat!4731 r!15766) (is-EmptyExpr!2898 (regOne!6308 r!15766))) (and (is-Concat!4731 r!15766) (is-EmptyExpr!2898 (regTwo!6308 r!15766))) (not (is-Concat!4731 r!15766))))))

(declare-fun matchRSpec!697 (Regex!2898 List!10128) Bool)

(assert (=> b!1054745 (= lt!358857 (matchRSpec!697 r!15766 s!10566))))

(declare-fun matchR!1434 (Regex!2898 List!10128) Bool)

(assert (=> b!1054745 (= lt!358857 (matchR!1434 r!15766 s!10566))))

(declare-fun lt!358846 () Unit!15471)

(declare-fun mainMatchTheorem!697 (Regex!2898 List!10128) Unit!15471)

(assert (=> b!1054745 (= lt!358846 (mainMatchTheorem!697 r!15766 s!10566))))

(declare-fun b!1054746 () Bool)

(declare-fun e!669865 () Bool)

(assert (=> b!1054746 (= e!669868 e!669865)))

(declare-fun res!471684 () Bool)

(assert (=> b!1054746 (=> res!471684 e!669865)))

(declare-fun lt!358845 () Regex!2898)

(assert (=> b!1054746 (= res!471684 (not (matchR!1434 lt!358845 s!10566)))))

(assert (=> b!1054746 (= lt!358845 (Concat!4731 lt!358849 lt!358852))))

(declare-fun removeUselessConcat!447 (Regex!2898) Regex!2898)

(assert (=> b!1054746 (= lt!358852 (removeUselessConcat!447 (regTwo!6308 r!15766)))))

(assert (=> b!1054746 (= lt!358849 (removeUselessConcat!447 (regOne!6308 r!15766)))))

(declare-fun b!1054747 () Bool)

(declare-fun tp!317646 () Bool)

(declare-fun tp!317650 () Bool)

(assert (=> b!1054747 (= e!669864 (and tp!317646 tp!317650))))

(declare-fun b!1054748 () Bool)

(declare-fun e!669870 () Bool)

(assert (=> b!1054748 (= e!669870 false)))

(declare-fun lt!358848 () tuple2!11562)

(declare-fun ++!2798 (List!10128 List!10128) List!10128)

(assert (=> b!1054748 (matchR!1434 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)) (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)))))

(declare-fun lt!358844 () Unit!15471)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!9 (Regex!2898 Regex!2898 List!10128 List!10128) Unit!15471)

(assert (=> b!1054748 (= lt!358844 (lemmaTwoRegexMatchThenConcatMatchesConcatString!9 (regOne!6308 r!15766) (regTwo!6308 r!15766) (_1!6607 lt!358848) (_2!6607 lt!358848)))))

(assert (=> b!1054748 (= (matchR!1434 (regTwo!6308 r!15766) (_2!6607 lt!358848)) (matchR!1434 lt!358852 (_2!6607 lt!358848)))))

(declare-fun lt!358856 () Unit!15471)

(declare-fun lemmaRemoveUselessConcatSound!271 (Regex!2898 List!10128) Unit!15471)

(assert (=> b!1054748 (= lt!358856 (lemmaRemoveUselessConcatSound!271 (regTwo!6308 r!15766) (_2!6607 lt!358848)))))

(assert (=> b!1054748 (= (matchR!1434 (regOne!6308 r!15766) (_1!6607 lt!358848)) (matchR!1434 lt!358849 (_1!6607 lt!358848)))))

(declare-fun lt!358851 () Unit!15471)

(assert (=> b!1054748 (= lt!358851 (lemmaRemoveUselessConcatSound!271 (regOne!6308 r!15766) (_1!6607 lt!358848)))))

(declare-fun lt!358855 () Option!2423)

(declare-fun get!3625 (Option!2423) tuple2!11562)

(assert (=> b!1054748 (= lt!358848 (get!3625 lt!358855))))

(assert (=> b!1054749 (= e!669865 e!669870)))

(declare-fun res!471685 () Bool)

(assert (=> b!1054749 (=> res!471685 e!669870)))

(declare-fun lt!358850 () Bool)

(assert (=> b!1054749 (= res!471685 (not lt!358850))))

(assert (=> b!1054749 (= (Exists!625 lambda!38105) (Exists!625 lambda!38106))))

(declare-fun lt!358854 () Unit!15471)

(assert (=> b!1054749 (= lt!358854 (lemmaExistCutMatchRandMatchRSpecEquivalent!313 lt!358849 lt!358852 s!10566))))

(assert (=> b!1054749 (= lt!358850 (Exists!625 lambda!38105))))

(assert (=> b!1054749 (= lt!358850 (isDefined!2065 lt!358855))))

(assert (=> b!1054749 (= lt!358855 (findConcatSeparation!529 lt!358849 lt!358852 Nil!10112 s!10566 s!10566))))

(declare-fun lt!358842 () Unit!15471)

(assert (=> b!1054749 (= lt!358842 (lemmaFindConcatSeparationEquivalentToExists!529 lt!358849 lt!358852 s!10566))))

(assert (=> b!1054749 (matchRSpec!697 lt!358845 s!10566)))

(declare-fun lt!358843 () Unit!15471)

(assert (=> b!1054749 (= lt!358843 (mainMatchTheorem!697 lt!358845 s!10566))))

(assert (= (and start!90836 res!471683) b!1054745))

(assert (= (and b!1054745 (not res!471681)) b!1054742))

(assert (= (and b!1054742 (not res!471682)) b!1054746))

(assert (= (and b!1054746 (not res!471684)) b!1054749))

(assert (= (and b!1054749 (not res!471685)) b!1054748))

(assert (= (and start!90836 (is-ElementMatch!2898 r!15766)) b!1054741))

(assert (= (and start!90836 (is-Concat!4731 r!15766)) b!1054747))

(assert (= (and start!90836 (is-Star!2898 r!15766)) b!1054740))

(assert (= (and start!90836 (is-Union!2898 r!15766)) b!1054744))

(assert (= (and start!90836 (is-Cons!10112 s!10566)) b!1054743))

(declare-fun m!1218257 () Bool)

(assert (=> b!1054745 m!1218257))

(declare-fun m!1218259 () Bool)

(assert (=> b!1054745 m!1218259))

(declare-fun m!1218261 () Bool)

(assert (=> b!1054745 m!1218261))

(declare-fun m!1218263 () Bool)

(assert (=> b!1054742 m!1218263))

(declare-fun m!1218265 () Bool)

(assert (=> b!1054742 m!1218265))

(declare-fun m!1218267 () Bool)

(assert (=> b!1054742 m!1218267))

(declare-fun m!1218269 () Bool)

(assert (=> b!1054742 m!1218269))

(assert (=> b!1054742 m!1218269))

(declare-fun m!1218271 () Bool)

(assert (=> b!1054742 m!1218271))

(assert (=> b!1054742 m!1218263))

(declare-fun m!1218273 () Bool)

(assert (=> b!1054742 m!1218273))

(declare-fun m!1218275 () Bool)

(assert (=> b!1054742 m!1218275))

(declare-fun m!1218277 () Bool)

(assert (=> b!1054746 m!1218277))

(declare-fun m!1218279 () Bool)

(assert (=> b!1054746 m!1218279))

(declare-fun m!1218281 () Bool)

(assert (=> b!1054746 m!1218281))

(declare-fun m!1218283 () Bool)

(assert (=> b!1054749 m!1218283))

(declare-fun m!1218285 () Bool)

(assert (=> b!1054749 m!1218285))

(declare-fun m!1218287 () Bool)

(assert (=> b!1054749 m!1218287))

(assert (=> b!1054749 m!1218283))

(declare-fun m!1218289 () Bool)

(assert (=> b!1054749 m!1218289))

(declare-fun m!1218291 () Bool)

(assert (=> b!1054749 m!1218291))

(declare-fun m!1218293 () Bool)

(assert (=> b!1054749 m!1218293))

(declare-fun m!1218295 () Bool)

(assert (=> b!1054749 m!1218295))

(declare-fun m!1218297 () Bool)

(assert (=> b!1054749 m!1218297))

(declare-fun m!1218299 () Bool)

(assert (=> start!90836 m!1218299))

(declare-fun m!1218301 () Bool)

(assert (=> b!1054748 m!1218301))

(declare-fun m!1218303 () Bool)

(assert (=> b!1054748 m!1218303))

(declare-fun m!1218305 () Bool)

(assert (=> b!1054748 m!1218305))

(declare-fun m!1218307 () Bool)

(assert (=> b!1054748 m!1218307))

(declare-fun m!1218309 () Bool)

(assert (=> b!1054748 m!1218309))

(declare-fun m!1218311 () Bool)

(assert (=> b!1054748 m!1218311))

(assert (=> b!1054748 m!1218301))

(declare-fun m!1218313 () Bool)

(assert (=> b!1054748 m!1218313))

(declare-fun m!1218315 () Bool)

(assert (=> b!1054748 m!1218315))

(declare-fun m!1218317 () Bool)

(assert (=> b!1054748 m!1218317))

(declare-fun m!1218319 () Bool)

(assert (=> b!1054748 m!1218319))

(push 1)

(assert (not b!1054742))

(assert (not b!1054744))

(assert (not b!1054747))

(assert (not start!90836))

(assert (not b!1054746))

(assert (not b!1054748))

(assert (not b!1054749))

(assert (not b!1054743))

(assert (not b!1054745))

(assert (not b!1054740))

(assert tp_is_empty!5439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!300033 () Bool)

(declare-fun choose!6707 (Int) Bool)

(assert (=> d!300033 (= (Exists!625 lambda!38103) (choose!6707 lambda!38103))))

(declare-fun bs!251550 () Bool)

(assert (= bs!251550 d!300033))

(declare-fun m!1218385 () Bool)

(assert (=> bs!251550 m!1218385))

(assert (=> b!1054742 d!300033))

(declare-fun d!300035 () Bool)

(assert (=> d!300035 (= (isEmpty!6526 s!10566) (is-Nil!10112 s!10566))))

(assert (=> b!1054742 d!300035))

(declare-fun d!300037 () Bool)

(declare-fun isEmpty!6528 (Option!2423) Bool)

(assert (=> d!300037 (= (isDefined!2065 (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) Nil!10112 s!10566 s!10566)) (not (isEmpty!6528 (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) Nil!10112 s!10566 s!10566))))))

(declare-fun bs!251551 () Bool)

(assert (= bs!251551 d!300037))

(assert (=> bs!251551 m!1218263))

(declare-fun m!1218387 () Bool)

(assert (=> bs!251551 m!1218387))

(assert (=> b!1054742 d!300037))

(declare-fun bs!251552 () Bool)

(declare-fun d!300039 () Bool)

(assert (= bs!251552 (and d!300039 b!1054742)))

(declare-fun lambda!38125 () Int)

(assert (=> bs!251552 (= lambda!38125 lambda!38103)))

(assert (=> bs!251552 (not (= lambda!38125 lambda!38104))))

(declare-fun bs!251553 () Bool)

(assert (= bs!251553 (and d!300039 b!1054749)))

(assert (=> bs!251553 (= (and (= (regOne!6308 r!15766) lt!358849) (= (regTwo!6308 r!15766) lt!358852)) (= lambda!38125 lambda!38105))))

(assert (=> bs!251553 (not (= lambda!38125 lambda!38106))))

(assert (=> d!300039 true))

(assert (=> d!300039 true))

(assert (=> d!300039 true))

(assert (=> d!300039 (= (isDefined!2065 (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) Nil!10112 s!10566 s!10566)) (Exists!625 lambda!38125))))

(declare-fun lt!358908 () Unit!15471)

(declare-fun choose!6708 (Regex!2898 Regex!2898 List!10128) Unit!15471)

(assert (=> d!300039 (= lt!358908 (choose!6708 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566))))

(assert (=> d!300039 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300039 (= (lemmaFindConcatSeparationEquivalentToExists!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566) lt!358908)))

(declare-fun bs!251554 () Bool)

(assert (= bs!251554 d!300039))

(assert (=> bs!251554 m!1218263))

(assert (=> bs!251554 m!1218265))

(assert (=> bs!251554 m!1218263))

(declare-fun m!1218389 () Bool)

(assert (=> bs!251554 m!1218389))

(declare-fun m!1218391 () Bool)

(assert (=> bs!251554 m!1218391))

(declare-fun m!1218393 () Bool)

(assert (=> bs!251554 m!1218393))

(assert (=> b!1054742 d!300039))

(declare-fun b!1054834 () Bool)

(declare-fun e!669918 () Bool)

(assert (=> b!1054834 (= e!669918 (matchR!1434 (regTwo!6308 r!15766) s!10566))))

(declare-fun b!1054835 () Bool)

(declare-fun e!669916 () Option!2423)

(declare-fun e!669919 () Option!2423)

(assert (=> b!1054835 (= e!669916 e!669919)))

(declare-fun c!176434 () Bool)

(assert (=> b!1054835 (= c!176434 (is-Nil!10112 s!10566))))

(declare-fun d!300041 () Bool)

(declare-fun e!669920 () Bool)

(assert (=> d!300041 e!669920))

(declare-fun res!471742 () Bool)

(assert (=> d!300041 (=> res!471742 e!669920)))

(declare-fun e!669917 () Bool)

(assert (=> d!300041 (= res!471742 e!669917)))

(declare-fun res!471743 () Bool)

(assert (=> d!300041 (=> (not res!471743) (not e!669917))))

(declare-fun lt!358916 () Option!2423)

(assert (=> d!300041 (= res!471743 (isDefined!2065 lt!358916))))

(assert (=> d!300041 (= lt!358916 e!669916)))

(declare-fun c!176433 () Bool)

(assert (=> d!300041 (= c!176433 e!669918)))

(declare-fun res!471740 () Bool)

(assert (=> d!300041 (=> (not res!471740) (not e!669918))))

(assert (=> d!300041 (= res!471740 (matchR!1434 (regOne!6308 r!15766) Nil!10112))))

(assert (=> d!300041 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300041 (= (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) Nil!10112 s!10566 s!10566) lt!358916)))

(declare-fun b!1054836 () Bool)

(assert (=> b!1054836 (= e!669919 None!2422)))

(declare-fun b!1054837 () Bool)

(declare-fun res!471741 () Bool)

(assert (=> b!1054837 (=> (not res!471741) (not e!669917))))

(assert (=> b!1054837 (= res!471741 (matchR!1434 (regTwo!6308 r!15766) (_2!6607 (get!3625 lt!358916))))))

(declare-fun b!1054838 () Bool)

(assert (=> b!1054838 (= e!669920 (not (isDefined!2065 lt!358916)))))

(declare-fun b!1054839 () Bool)

(assert (=> b!1054839 (= e!669916 (Some!2422 (tuple2!11563 Nil!10112 s!10566)))))

(declare-fun b!1054840 () Bool)

(declare-fun res!471739 () Bool)

(assert (=> b!1054840 (=> (not res!471739) (not e!669917))))

(assert (=> b!1054840 (= res!471739 (matchR!1434 (regOne!6308 r!15766) (_1!6607 (get!3625 lt!358916))))))

(declare-fun b!1054841 () Bool)

(declare-fun lt!358915 () Unit!15471)

(declare-fun lt!358917 () Unit!15471)

(assert (=> b!1054841 (= lt!358915 lt!358917)))

(assert (=> b!1054841 (= (++!2798 (++!2798 Nil!10112 (Cons!10112 (h!15513 s!10566) Nil!10112)) (t!101174 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!391 (List!10128 C!6366 List!10128 List!10128) Unit!15471)

(assert (=> b!1054841 (= lt!358917 (lemmaMoveElementToOtherListKeepsConcatEq!391 Nil!10112 (h!15513 s!10566) (t!101174 s!10566) s!10566))))

(assert (=> b!1054841 (= e!669919 (findConcatSeparation!529 (regOne!6308 r!15766) (regTwo!6308 r!15766) (++!2798 Nil!10112 (Cons!10112 (h!15513 s!10566) Nil!10112)) (t!101174 s!10566) s!10566))))

(declare-fun b!1054842 () Bool)

(assert (=> b!1054842 (= e!669917 (= (++!2798 (_1!6607 (get!3625 lt!358916)) (_2!6607 (get!3625 lt!358916))) s!10566))))

(assert (= (and d!300041 res!471740) b!1054834))

(assert (= (and d!300041 c!176433) b!1054839))

(assert (= (and d!300041 (not c!176433)) b!1054835))

(assert (= (and b!1054835 c!176434) b!1054836))

(assert (= (and b!1054835 (not c!176434)) b!1054841))

(assert (= (and d!300041 res!471743) b!1054840))

(assert (= (and b!1054840 res!471739) b!1054837))

(assert (= (and b!1054837 res!471741) b!1054842))

(assert (= (and d!300041 (not res!471742)) b!1054838))

(declare-fun m!1218395 () Bool)

(assert (=> b!1054837 m!1218395))

(declare-fun m!1218397 () Bool)

(assert (=> b!1054837 m!1218397))

(declare-fun m!1218399 () Bool)

(assert (=> d!300041 m!1218399))

(declare-fun m!1218401 () Bool)

(assert (=> d!300041 m!1218401))

(assert (=> d!300041 m!1218393))

(assert (=> b!1054840 m!1218395))

(declare-fun m!1218403 () Bool)

(assert (=> b!1054840 m!1218403))

(declare-fun m!1218405 () Bool)

(assert (=> b!1054841 m!1218405))

(assert (=> b!1054841 m!1218405))

(declare-fun m!1218407 () Bool)

(assert (=> b!1054841 m!1218407))

(declare-fun m!1218409 () Bool)

(assert (=> b!1054841 m!1218409))

(assert (=> b!1054841 m!1218405))

(declare-fun m!1218411 () Bool)

(assert (=> b!1054841 m!1218411))

(assert (=> b!1054838 m!1218399))

(assert (=> b!1054842 m!1218395))

(declare-fun m!1218413 () Bool)

(assert (=> b!1054842 m!1218413))

(declare-fun m!1218415 () Bool)

(assert (=> b!1054834 m!1218415))

(assert (=> b!1054742 d!300041))

(declare-fun bs!251555 () Bool)

(declare-fun d!300045 () Bool)

(assert (= bs!251555 (and d!300045 d!300039)))

(declare-fun lambda!38130 () Int)

(assert (=> bs!251555 (= lambda!38130 lambda!38125)))

(declare-fun bs!251556 () Bool)

(assert (= bs!251556 (and d!300045 b!1054742)))

(assert (=> bs!251556 (not (= lambda!38130 lambda!38104))))

(declare-fun bs!251557 () Bool)

(assert (= bs!251557 (and d!300045 b!1054749)))

(assert (=> bs!251557 (not (= lambda!38130 lambda!38106))))

(assert (=> bs!251557 (= (and (= (regOne!6308 r!15766) lt!358849) (= (regTwo!6308 r!15766) lt!358852)) (= lambda!38130 lambda!38105))))

(assert (=> bs!251556 (= lambda!38130 lambda!38103)))

(assert (=> d!300045 true))

(assert (=> d!300045 true))

(assert (=> d!300045 true))

(declare-fun lambda!38131 () Int)

(assert (=> bs!251555 (not (= lambda!38131 lambda!38125))))

(assert (=> bs!251556 (= lambda!38131 lambda!38104)))

(assert (=> bs!251557 (= (and (= (regOne!6308 r!15766) lt!358849) (= (regTwo!6308 r!15766) lt!358852)) (= lambda!38131 lambda!38106))))

(declare-fun bs!251558 () Bool)

(assert (= bs!251558 d!300045))

(assert (=> bs!251558 (not (= lambda!38131 lambda!38130))))

(assert (=> bs!251557 (not (= lambda!38131 lambda!38105))))

(assert (=> bs!251556 (not (= lambda!38131 lambda!38103))))

(assert (=> d!300045 true))

(assert (=> d!300045 true))

(assert (=> d!300045 true))

(assert (=> d!300045 (= (Exists!625 lambda!38130) (Exists!625 lambda!38131))))

(declare-fun lt!358920 () Unit!15471)

(declare-fun choose!6709 (Regex!2898 Regex!2898 List!10128) Unit!15471)

(assert (=> d!300045 (= lt!358920 (choose!6709 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566))))

(assert (=> d!300045 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300045 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!313 (regOne!6308 r!15766) (regTwo!6308 r!15766) s!10566) lt!358920)))

(declare-fun m!1218423 () Bool)

(assert (=> bs!251558 m!1218423))

(declare-fun m!1218425 () Bool)

(assert (=> bs!251558 m!1218425))

(declare-fun m!1218427 () Bool)

(assert (=> bs!251558 m!1218427))

(assert (=> bs!251558 m!1218393))

(assert (=> b!1054742 d!300045))

(declare-fun d!300049 () Bool)

(assert (=> d!300049 (= (Exists!625 lambda!38104) (choose!6707 lambda!38104))))

(declare-fun bs!251559 () Bool)

(assert (= bs!251559 d!300049))

(declare-fun m!1218429 () Bool)

(assert (=> bs!251559 m!1218429))

(assert (=> b!1054742 d!300049))

(declare-fun b!1054910 () Bool)

(declare-fun e!669967 () Bool)

(declare-fun nullable!990 (Regex!2898) Bool)

(assert (=> b!1054910 (= e!669967 (nullable!990 lt!358849))))

(declare-fun b!1054911 () Bool)

(declare-fun res!471784 () Bool)

(declare-fun e!669964 () Bool)

(assert (=> b!1054911 (=> res!471784 e!669964)))

(declare-fun tail!1507 (List!10128) List!10128)

(assert (=> b!1054911 (= res!471784 (not (isEmpty!6526 (tail!1507 (_1!6607 lt!358848)))))))

(declare-fun b!1054912 () Bool)

(declare-fun e!669965 () Bool)

(declare-fun e!669963 () Bool)

(assert (=> b!1054912 (= e!669965 e!669963)))

(declare-fun c!176451 () Bool)

(assert (=> b!1054912 (= c!176451 (is-EmptyLang!2898 lt!358849))))

(declare-fun b!1054913 () Bool)

(declare-fun res!471785 () Bool)

(declare-fun e!669966 () Bool)

(assert (=> b!1054913 (=> res!471785 e!669966)))

(assert (=> b!1054913 (= res!471785 (not (is-ElementMatch!2898 lt!358849)))))

(assert (=> b!1054913 (= e!669963 e!669966)))

(declare-fun b!1054914 () Bool)

(declare-fun lt!358925 () Bool)

(assert (=> b!1054914 (= e!669963 (not lt!358925))))

(declare-fun b!1054915 () Bool)

(declare-fun derivativeStep!790 (Regex!2898 C!6366) Regex!2898)

(declare-fun head!1945 (List!10128) C!6366)

(assert (=> b!1054915 (= e!669967 (matchR!1434 (derivativeStep!790 lt!358849 (head!1945 (_1!6607 lt!358848))) (tail!1507 (_1!6607 lt!358848))))))

(declare-fun b!1054916 () Bool)

(assert (=> b!1054916 (= e!669964 (not (= (head!1945 (_1!6607 lt!358848)) (c!176427 lt!358849))))))

(declare-fun b!1054917 () Bool)

(declare-fun e!669968 () Bool)

(assert (=> b!1054917 (= e!669968 e!669964)))

(declare-fun res!471787 () Bool)

(assert (=> b!1054917 (=> res!471787 e!669964)))

(declare-fun call!75253 () Bool)

(assert (=> b!1054917 (= res!471787 call!75253)))

(declare-fun d!300051 () Bool)

(assert (=> d!300051 e!669965))

(declare-fun c!176449 () Bool)

(assert (=> d!300051 (= c!176449 (is-EmptyExpr!2898 lt!358849))))

(assert (=> d!300051 (= lt!358925 e!669967)))

(declare-fun c!176450 () Bool)

(assert (=> d!300051 (= c!176450 (isEmpty!6526 (_1!6607 lt!358848)))))

(assert (=> d!300051 (validRegex!1367 lt!358849)))

(assert (=> d!300051 (= (matchR!1434 lt!358849 (_1!6607 lt!358848)) lt!358925)))

(declare-fun b!1054918 () Bool)

(declare-fun e!669962 () Bool)

(assert (=> b!1054918 (= e!669962 (= (head!1945 (_1!6607 lt!358848)) (c!176427 lt!358849)))))

(declare-fun b!1054919 () Bool)

(declare-fun res!471789 () Bool)

(assert (=> b!1054919 (=> (not res!471789) (not e!669962))))

(assert (=> b!1054919 (= res!471789 (not call!75253))))

(declare-fun b!1054920 () Bool)

(assert (=> b!1054920 (= e!669965 (= lt!358925 call!75253))))

(declare-fun b!1054921 () Bool)

(declare-fun res!471790 () Bool)

(assert (=> b!1054921 (=> res!471790 e!669966)))

(assert (=> b!1054921 (= res!471790 e!669962)))

(declare-fun res!471783 () Bool)

(assert (=> b!1054921 (=> (not res!471783) (not e!669962))))

(assert (=> b!1054921 (= res!471783 lt!358925)))

(declare-fun bm!75248 () Bool)

(assert (=> bm!75248 (= call!75253 (isEmpty!6526 (_1!6607 lt!358848)))))

(declare-fun b!1054922 () Bool)

(declare-fun res!471786 () Bool)

(assert (=> b!1054922 (=> (not res!471786) (not e!669962))))

(assert (=> b!1054922 (= res!471786 (isEmpty!6526 (tail!1507 (_1!6607 lt!358848))))))

(declare-fun b!1054923 () Bool)

(assert (=> b!1054923 (= e!669966 e!669968)))

(declare-fun res!471788 () Bool)

(assert (=> b!1054923 (=> (not res!471788) (not e!669968))))

(assert (=> b!1054923 (= res!471788 (not lt!358925))))

(assert (= (and d!300051 c!176450) b!1054910))

(assert (= (and d!300051 (not c!176450)) b!1054915))

(assert (= (and d!300051 c!176449) b!1054920))

(assert (= (and d!300051 (not c!176449)) b!1054912))

(assert (= (and b!1054912 c!176451) b!1054914))

(assert (= (and b!1054912 (not c!176451)) b!1054913))

(assert (= (and b!1054913 (not res!471785)) b!1054921))

(assert (= (and b!1054921 res!471783) b!1054919))

(assert (= (and b!1054919 res!471789) b!1054922))

(assert (= (and b!1054922 res!471786) b!1054918))

(assert (= (and b!1054921 (not res!471790)) b!1054923))

(assert (= (and b!1054923 res!471788) b!1054917))

(assert (= (and b!1054917 (not res!471787)) b!1054911))

(assert (= (and b!1054911 (not res!471784)) b!1054916))

(assert (= (or b!1054920 b!1054917 b!1054919) bm!75248))

(declare-fun m!1218431 () Bool)

(assert (=> b!1054915 m!1218431))

(assert (=> b!1054915 m!1218431))

(declare-fun m!1218433 () Bool)

(assert (=> b!1054915 m!1218433))

(declare-fun m!1218435 () Bool)

(assert (=> b!1054915 m!1218435))

(assert (=> b!1054915 m!1218433))

(assert (=> b!1054915 m!1218435))

(declare-fun m!1218437 () Bool)

(assert (=> b!1054915 m!1218437))

(declare-fun m!1218439 () Bool)

(assert (=> bm!75248 m!1218439))

(assert (=> b!1054911 m!1218435))

(assert (=> b!1054911 m!1218435))

(declare-fun m!1218441 () Bool)

(assert (=> b!1054911 m!1218441))

(assert (=> d!300051 m!1218439))

(declare-fun m!1218443 () Bool)

(assert (=> d!300051 m!1218443))

(declare-fun m!1218445 () Bool)

(assert (=> b!1054910 m!1218445))

(assert (=> b!1054916 m!1218431))

(assert (=> b!1054918 m!1218431))

(assert (=> b!1054922 m!1218435))

(assert (=> b!1054922 m!1218435))

(assert (=> b!1054922 m!1218441))

(assert (=> b!1054748 d!300051))

(declare-fun b!1054944 () Bool)

(declare-fun e!669984 () Bool)

(assert (=> b!1054944 (= e!669984 (nullable!990 lt!358852))))

(declare-fun b!1054945 () Bool)

(declare-fun res!471804 () Bool)

(declare-fun e!669981 () Bool)

(assert (=> b!1054945 (=> res!471804 e!669981)))

(assert (=> b!1054945 (= res!471804 (not (isEmpty!6526 (tail!1507 (_2!6607 lt!358848)))))))

(declare-fun b!1054946 () Bool)

(declare-fun e!669982 () Bool)

(declare-fun e!669980 () Bool)

(assert (=> b!1054946 (= e!669982 e!669980)))

(declare-fun c!176458 () Bool)

(assert (=> b!1054946 (= c!176458 (is-EmptyLang!2898 lt!358852))))

(declare-fun b!1054947 () Bool)

(declare-fun res!471805 () Bool)

(declare-fun e!669983 () Bool)

(assert (=> b!1054947 (=> res!471805 e!669983)))

(assert (=> b!1054947 (= res!471805 (not (is-ElementMatch!2898 lt!358852)))))

(assert (=> b!1054947 (= e!669980 e!669983)))

(declare-fun b!1054948 () Bool)

(declare-fun lt!358926 () Bool)

(assert (=> b!1054948 (= e!669980 (not lt!358926))))

(declare-fun b!1054949 () Bool)

(assert (=> b!1054949 (= e!669984 (matchR!1434 (derivativeStep!790 lt!358852 (head!1945 (_2!6607 lt!358848))) (tail!1507 (_2!6607 lt!358848))))))

(declare-fun b!1054950 () Bool)

(assert (=> b!1054950 (= e!669981 (not (= (head!1945 (_2!6607 lt!358848)) (c!176427 lt!358852))))))

(declare-fun b!1054951 () Bool)

(declare-fun e!669985 () Bool)

(assert (=> b!1054951 (= e!669985 e!669981)))

(declare-fun res!471807 () Bool)

(assert (=> b!1054951 (=> res!471807 e!669981)))

(declare-fun call!75254 () Bool)

(assert (=> b!1054951 (= res!471807 call!75254)))

(declare-fun d!300053 () Bool)

(assert (=> d!300053 e!669982))

(declare-fun c!176456 () Bool)

(assert (=> d!300053 (= c!176456 (is-EmptyExpr!2898 lt!358852))))

(assert (=> d!300053 (= lt!358926 e!669984)))

(declare-fun c!176457 () Bool)

(assert (=> d!300053 (= c!176457 (isEmpty!6526 (_2!6607 lt!358848)))))

(assert (=> d!300053 (validRegex!1367 lt!358852)))

(assert (=> d!300053 (= (matchR!1434 lt!358852 (_2!6607 lt!358848)) lt!358926)))

(declare-fun b!1054952 () Bool)

(declare-fun e!669979 () Bool)

(assert (=> b!1054952 (= e!669979 (= (head!1945 (_2!6607 lt!358848)) (c!176427 lt!358852)))))

(declare-fun b!1054953 () Bool)

(declare-fun res!471809 () Bool)

(assert (=> b!1054953 (=> (not res!471809) (not e!669979))))

(assert (=> b!1054953 (= res!471809 (not call!75254))))

(declare-fun b!1054954 () Bool)

(assert (=> b!1054954 (= e!669982 (= lt!358926 call!75254))))

(declare-fun b!1054955 () Bool)

(declare-fun res!471810 () Bool)

(assert (=> b!1054955 (=> res!471810 e!669983)))

(assert (=> b!1054955 (= res!471810 e!669979)))

(declare-fun res!471803 () Bool)

(assert (=> b!1054955 (=> (not res!471803) (not e!669979))))

(assert (=> b!1054955 (= res!471803 lt!358926)))

(declare-fun bm!75249 () Bool)

(assert (=> bm!75249 (= call!75254 (isEmpty!6526 (_2!6607 lt!358848)))))

(declare-fun b!1054956 () Bool)

(declare-fun res!471806 () Bool)

(assert (=> b!1054956 (=> (not res!471806) (not e!669979))))

(assert (=> b!1054956 (= res!471806 (isEmpty!6526 (tail!1507 (_2!6607 lt!358848))))))

(declare-fun b!1054957 () Bool)

(assert (=> b!1054957 (= e!669983 e!669985)))

(declare-fun res!471808 () Bool)

(assert (=> b!1054957 (=> (not res!471808) (not e!669985))))

(assert (=> b!1054957 (= res!471808 (not lt!358926))))

(assert (= (and d!300053 c!176457) b!1054944))

(assert (= (and d!300053 (not c!176457)) b!1054949))

(assert (= (and d!300053 c!176456) b!1054954))

(assert (= (and d!300053 (not c!176456)) b!1054946))

(assert (= (and b!1054946 c!176458) b!1054948))

(assert (= (and b!1054946 (not c!176458)) b!1054947))

(assert (= (and b!1054947 (not res!471805)) b!1054955))

(assert (= (and b!1054955 res!471803) b!1054953))

(assert (= (and b!1054953 res!471809) b!1054956))

(assert (= (and b!1054956 res!471806) b!1054952))

(assert (= (and b!1054955 (not res!471810)) b!1054957))

(assert (= (and b!1054957 res!471808) b!1054951))

(assert (= (and b!1054951 (not res!471807)) b!1054945))

(assert (= (and b!1054945 (not res!471804)) b!1054950))

(assert (= (or b!1054954 b!1054951 b!1054953) bm!75249))

(declare-fun m!1218447 () Bool)

(assert (=> b!1054949 m!1218447))

(assert (=> b!1054949 m!1218447))

(declare-fun m!1218449 () Bool)

(assert (=> b!1054949 m!1218449))

(declare-fun m!1218451 () Bool)

(assert (=> b!1054949 m!1218451))

(assert (=> b!1054949 m!1218449))

(assert (=> b!1054949 m!1218451))

(declare-fun m!1218453 () Bool)

(assert (=> b!1054949 m!1218453))

(declare-fun m!1218455 () Bool)

(assert (=> bm!75249 m!1218455))

(assert (=> b!1054945 m!1218451))

(assert (=> b!1054945 m!1218451))

(declare-fun m!1218457 () Bool)

(assert (=> b!1054945 m!1218457))

(assert (=> d!300053 m!1218455))

(declare-fun m!1218459 () Bool)

(assert (=> d!300053 m!1218459))

(declare-fun m!1218461 () Bool)

(assert (=> b!1054944 m!1218461))

(assert (=> b!1054950 m!1218447))

(assert (=> b!1054952 m!1218447))

(assert (=> b!1054956 m!1218451))

(assert (=> b!1054956 m!1218451))

(assert (=> b!1054956 m!1218457))

(assert (=> b!1054748 d!300053))

(declare-fun d!300055 () Bool)

(assert (=> d!300055 (= (get!3625 lt!358855) (v!19839 lt!358855))))

(assert (=> b!1054748 d!300055))

(declare-fun b!1054962 () Bool)

(declare-fun e!669993 () Bool)

(assert (=> b!1054962 (= e!669993 (nullable!990 (regTwo!6308 r!15766)))))

(declare-fun b!1054963 () Bool)

(declare-fun res!471816 () Bool)

(declare-fun e!669990 () Bool)

(assert (=> b!1054963 (=> res!471816 e!669990)))

(assert (=> b!1054963 (= res!471816 (not (isEmpty!6526 (tail!1507 (_2!6607 lt!358848)))))))

(declare-fun b!1054964 () Bool)

(declare-fun e!669991 () Bool)

(declare-fun e!669989 () Bool)

(assert (=> b!1054964 (= e!669991 e!669989)))

(declare-fun c!176461 () Bool)

(assert (=> b!1054964 (= c!176461 (is-EmptyLang!2898 (regTwo!6308 r!15766)))))

(declare-fun b!1054965 () Bool)

(declare-fun res!471817 () Bool)

(declare-fun e!669992 () Bool)

(assert (=> b!1054965 (=> res!471817 e!669992)))

(assert (=> b!1054965 (= res!471817 (not (is-ElementMatch!2898 (regTwo!6308 r!15766))))))

(assert (=> b!1054965 (= e!669989 e!669992)))

(declare-fun b!1054966 () Bool)

(declare-fun lt!358927 () Bool)

(assert (=> b!1054966 (= e!669989 (not lt!358927))))

(declare-fun b!1054967 () Bool)

(assert (=> b!1054967 (= e!669993 (matchR!1434 (derivativeStep!790 (regTwo!6308 r!15766) (head!1945 (_2!6607 lt!358848))) (tail!1507 (_2!6607 lt!358848))))))

(declare-fun b!1054968 () Bool)

(assert (=> b!1054968 (= e!669990 (not (= (head!1945 (_2!6607 lt!358848)) (c!176427 (regTwo!6308 r!15766)))))))

(declare-fun b!1054969 () Bool)

(declare-fun e!669994 () Bool)

(assert (=> b!1054969 (= e!669994 e!669990)))

(declare-fun res!471819 () Bool)

(assert (=> b!1054969 (=> res!471819 e!669990)))

(declare-fun call!75255 () Bool)

(assert (=> b!1054969 (= res!471819 call!75255)))

(declare-fun d!300057 () Bool)

(assert (=> d!300057 e!669991))

(declare-fun c!176459 () Bool)

(assert (=> d!300057 (= c!176459 (is-EmptyExpr!2898 (regTwo!6308 r!15766)))))

(assert (=> d!300057 (= lt!358927 e!669993)))

(declare-fun c!176460 () Bool)

(assert (=> d!300057 (= c!176460 (isEmpty!6526 (_2!6607 lt!358848)))))

(assert (=> d!300057 (validRegex!1367 (regTwo!6308 r!15766))))

(assert (=> d!300057 (= (matchR!1434 (regTwo!6308 r!15766) (_2!6607 lt!358848)) lt!358927)))

(declare-fun b!1054970 () Bool)

(declare-fun e!669988 () Bool)

(assert (=> b!1054970 (= e!669988 (= (head!1945 (_2!6607 lt!358848)) (c!176427 (regTwo!6308 r!15766))))))

(declare-fun b!1054971 () Bool)

(declare-fun res!471821 () Bool)

(assert (=> b!1054971 (=> (not res!471821) (not e!669988))))

(assert (=> b!1054971 (= res!471821 (not call!75255))))

(declare-fun b!1054972 () Bool)

(assert (=> b!1054972 (= e!669991 (= lt!358927 call!75255))))

(declare-fun b!1054973 () Bool)

(declare-fun res!471822 () Bool)

(assert (=> b!1054973 (=> res!471822 e!669992)))

(assert (=> b!1054973 (= res!471822 e!669988)))

(declare-fun res!471815 () Bool)

(assert (=> b!1054973 (=> (not res!471815) (not e!669988))))

(assert (=> b!1054973 (= res!471815 lt!358927)))

(declare-fun bm!75250 () Bool)

(assert (=> bm!75250 (= call!75255 (isEmpty!6526 (_2!6607 lt!358848)))))

(declare-fun b!1054974 () Bool)

(declare-fun res!471818 () Bool)

(assert (=> b!1054974 (=> (not res!471818) (not e!669988))))

(assert (=> b!1054974 (= res!471818 (isEmpty!6526 (tail!1507 (_2!6607 lt!358848))))))

(declare-fun b!1054975 () Bool)

(assert (=> b!1054975 (= e!669992 e!669994)))

(declare-fun res!471820 () Bool)

(assert (=> b!1054975 (=> (not res!471820) (not e!669994))))

(assert (=> b!1054975 (= res!471820 (not lt!358927))))

(assert (= (and d!300057 c!176460) b!1054962))

(assert (= (and d!300057 (not c!176460)) b!1054967))

(assert (= (and d!300057 c!176459) b!1054972))

(assert (= (and d!300057 (not c!176459)) b!1054964))

(assert (= (and b!1054964 c!176461) b!1054966))

(assert (= (and b!1054964 (not c!176461)) b!1054965))

(assert (= (and b!1054965 (not res!471817)) b!1054973))

(assert (= (and b!1054973 res!471815) b!1054971))

(assert (= (and b!1054971 res!471821) b!1054974))

(assert (= (and b!1054974 res!471818) b!1054970))

(assert (= (and b!1054973 (not res!471822)) b!1054975))

(assert (= (and b!1054975 res!471820) b!1054969))

(assert (= (and b!1054969 (not res!471819)) b!1054963))

(assert (= (and b!1054963 (not res!471816)) b!1054968))

(assert (= (or b!1054972 b!1054969 b!1054971) bm!75250))

(assert (=> b!1054967 m!1218447))

(assert (=> b!1054967 m!1218447))

(declare-fun m!1218463 () Bool)

(assert (=> b!1054967 m!1218463))

(assert (=> b!1054967 m!1218451))

(assert (=> b!1054967 m!1218463))

(assert (=> b!1054967 m!1218451))

(declare-fun m!1218465 () Bool)

(assert (=> b!1054967 m!1218465))

(assert (=> bm!75250 m!1218455))

(assert (=> b!1054963 m!1218451))

(assert (=> b!1054963 m!1218451))

(assert (=> b!1054963 m!1218457))

(assert (=> d!300057 m!1218455))

(declare-fun m!1218467 () Bool)

(assert (=> d!300057 m!1218467))

(declare-fun m!1218469 () Bool)

(assert (=> b!1054962 m!1218469))

(assert (=> b!1054968 m!1218447))

(assert (=> b!1054970 m!1218447))

(assert (=> b!1054974 m!1218451))

(assert (=> b!1054974 m!1218451))

(assert (=> b!1054974 m!1218457))

(assert (=> b!1054748 d!300057))

(declare-fun b!1054976 () Bool)

(declare-fun e!670000 () Bool)

(assert (=> b!1054976 (= e!670000 (nullable!990 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766))))))

(declare-fun b!1054977 () Bool)

(declare-fun res!471824 () Bool)

(declare-fun e!669997 () Bool)

(assert (=> b!1054977 (=> res!471824 e!669997)))

(assert (=> b!1054977 (= res!471824 (not (isEmpty!6526 (tail!1507 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))))))))

(declare-fun b!1054978 () Bool)

(declare-fun e!669998 () Bool)

(declare-fun e!669996 () Bool)

(assert (=> b!1054978 (= e!669998 e!669996)))

(declare-fun c!176464 () Bool)

(assert (=> b!1054978 (= c!176464 (is-EmptyLang!2898 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766))))))

(declare-fun b!1054979 () Bool)

(declare-fun res!471825 () Bool)

(declare-fun e!669999 () Bool)

(assert (=> b!1054979 (=> res!471825 e!669999)))

(assert (=> b!1054979 (= res!471825 (not (is-ElementMatch!2898 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)))))))

(assert (=> b!1054979 (= e!669996 e!669999)))

(declare-fun b!1054980 () Bool)

(declare-fun lt!358928 () Bool)

(assert (=> b!1054980 (= e!669996 (not lt!358928))))

(declare-fun b!1054981 () Bool)

(assert (=> b!1054981 (= e!670000 (matchR!1434 (derivativeStep!790 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)) (head!1945 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)))) (tail!1507 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)))))))

(declare-fun b!1054982 () Bool)

(assert (=> b!1054982 (= e!669997 (not (= (head!1945 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))) (c!176427 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766))))))))

(declare-fun b!1054983 () Bool)

(declare-fun e!670001 () Bool)

(assert (=> b!1054983 (= e!670001 e!669997)))

(declare-fun res!471827 () Bool)

(assert (=> b!1054983 (=> res!471827 e!669997)))

(declare-fun call!75258 () Bool)

(assert (=> b!1054983 (= res!471827 call!75258)))

(declare-fun d!300059 () Bool)

(assert (=> d!300059 e!669998))

(declare-fun c!176462 () Bool)

(assert (=> d!300059 (= c!176462 (is-EmptyExpr!2898 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766))))))

(assert (=> d!300059 (= lt!358928 e!670000)))

(declare-fun c!176463 () Bool)

(assert (=> d!300059 (= c!176463 (isEmpty!6526 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))))))

(assert (=> d!300059 (validRegex!1367 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)))))

(assert (=> d!300059 (= (matchR!1434 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)) (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))) lt!358928)))

(declare-fun b!1054984 () Bool)

(declare-fun e!669995 () Bool)

(assert (=> b!1054984 (= e!669995 (= (head!1945 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))) (c!176427 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)))))))

(declare-fun b!1054985 () Bool)

(declare-fun res!471829 () Bool)

(assert (=> b!1054985 (=> (not res!471829) (not e!669995))))

(assert (=> b!1054985 (= res!471829 (not call!75258))))

(declare-fun b!1054986 () Bool)

(assert (=> b!1054986 (= e!669998 (= lt!358928 call!75258))))

(declare-fun b!1054987 () Bool)

(declare-fun res!471830 () Bool)

(assert (=> b!1054987 (=> res!471830 e!669999)))

(assert (=> b!1054987 (= res!471830 e!669995)))

(declare-fun res!471823 () Bool)

(assert (=> b!1054987 (=> (not res!471823) (not e!669995))))

(assert (=> b!1054987 (= res!471823 lt!358928)))

(declare-fun bm!75253 () Bool)

(assert (=> bm!75253 (= call!75258 (isEmpty!6526 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848))))))

(declare-fun b!1054988 () Bool)

(declare-fun res!471826 () Bool)

(assert (=> b!1054988 (=> (not res!471826) (not e!669995))))

(assert (=> b!1054988 (= res!471826 (isEmpty!6526 (tail!1507 (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)))))))

(declare-fun b!1054989 () Bool)

(assert (=> b!1054989 (= e!669999 e!670001)))

(declare-fun res!471828 () Bool)

(assert (=> b!1054989 (=> (not res!471828) (not e!670001))))

(assert (=> b!1054989 (= res!471828 (not lt!358928))))

(assert (= (and d!300059 c!176463) b!1054976))

(assert (= (and d!300059 (not c!176463)) b!1054981))

(assert (= (and d!300059 c!176462) b!1054986))

(assert (= (and d!300059 (not c!176462)) b!1054978))

(assert (= (and b!1054978 c!176464) b!1054980))

(assert (= (and b!1054978 (not c!176464)) b!1054979))

(assert (= (and b!1054979 (not res!471825)) b!1054987))

(assert (= (and b!1054987 res!471823) b!1054985))

(assert (= (and b!1054985 res!471829) b!1054988))

(assert (= (and b!1054988 res!471826) b!1054984))

(assert (= (and b!1054987 (not res!471830)) b!1054989))

(assert (= (and b!1054989 res!471828) b!1054983))

(assert (= (and b!1054983 (not res!471827)) b!1054977))

(assert (= (and b!1054977 (not res!471824)) b!1054982))

(assert (= (or b!1054986 b!1054983 b!1054985) bm!75253))

(assert (=> b!1054981 m!1218301))

(declare-fun m!1218471 () Bool)

(assert (=> b!1054981 m!1218471))

(assert (=> b!1054981 m!1218471))

(declare-fun m!1218473 () Bool)

(assert (=> b!1054981 m!1218473))

(assert (=> b!1054981 m!1218301))

(declare-fun m!1218475 () Bool)

(assert (=> b!1054981 m!1218475))

(assert (=> b!1054981 m!1218473))

(assert (=> b!1054981 m!1218475))

(declare-fun m!1218477 () Bool)

(assert (=> b!1054981 m!1218477))

(assert (=> bm!75253 m!1218301))

(declare-fun m!1218479 () Bool)

(assert (=> bm!75253 m!1218479))

(assert (=> b!1054977 m!1218301))

(assert (=> b!1054977 m!1218475))

(assert (=> b!1054977 m!1218475))

(declare-fun m!1218481 () Bool)

(assert (=> b!1054977 m!1218481))

(assert (=> d!300059 m!1218301))

(assert (=> d!300059 m!1218479))

(declare-fun m!1218483 () Bool)

(assert (=> d!300059 m!1218483))

(declare-fun m!1218485 () Bool)

(assert (=> b!1054976 m!1218485))

(assert (=> b!1054982 m!1218301))

(assert (=> b!1054982 m!1218471))

(assert (=> b!1054984 m!1218301))

(assert (=> b!1054984 m!1218471))

(assert (=> b!1054988 m!1218301))

(assert (=> b!1054988 m!1218475))

(assert (=> b!1054988 m!1218475))

(assert (=> b!1054988 m!1218481))

(assert (=> b!1054748 d!300059))

(declare-fun d!300061 () Bool)

(assert (=> d!300061 (= (matchR!1434 (regOne!6308 r!15766) (_1!6607 lt!358848)) (matchR!1434 (removeUselessConcat!447 (regOne!6308 r!15766)) (_1!6607 lt!358848)))))

(declare-fun lt!358931 () Unit!15471)

(declare-fun choose!6710 (Regex!2898 List!10128) Unit!15471)

(assert (=> d!300061 (= lt!358931 (choose!6710 (regOne!6308 r!15766) (_1!6607 lt!358848)))))

(assert (=> d!300061 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300061 (= (lemmaRemoveUselessConcatSound!271 (regOne!6308 r!15766) (_1!6607 lt!358848)) lt!358931)))

(declare-fun bs!251560 () Bool)

(assert (= bs!251560 d!300061))

(declare-fun m!1218487 () Bool)

(assert (=> bs!251560 m!1218487))

(assert (=> bs!251560 m!1218393))

(assert (=> bs!251560 m!1218315))

(assert (=> bs!251560 m!1218281))

(assert (=> bs!251560 m!1218281))

(declare-fun m!1218489 () Bool)

(assert (=> bs!251560 m!1218489))

(assert (=> b!1054748 d!300061))

(declare-fun b!1054990 () Bool)

(declare-fun e!670007 () Bool)

(assert (=> b!1054990 (= e!670007 (nullable!990 (regOne!6308 r!15766)))))

(declare-fun b!1054991 () Bool)

(declare-fun res!471832 () Bool)

(declare-fun e!670004 () Bool)

(assert (=> b!1054991 (=> res!471832 e!670004)))

(assert (=> b!1054991 (= res!471832 (not (isEmpty!6526 (tail!1507 (_1!6607 lt!358848)))))))

(declare-fun b!1054992 () Bool)

(declare-fun e!670005 () Bool)

(declare-fun e!670003 () Bool)

(assert (=> b!1054992 (= e!670005 e!670003)))

(declare-fun c!176467 () Bool)

(assert (=> b!1054992 (= c!176467 (is-EmptyLang!2898 (regOne!6308 r!15766)))))

(declare-fun b!1054993 () Bool)

(declare-fun res!471833 () Bool)

(declare-fun e!670006 () Bool)

(assert (=> b!1054993 (=> res!471833 e!670006)))

(assert (=> b!1054993 (= res!471833 (not (is-ElementMatch!2898 (regOne!6308 r!15766))))))

(assert (=> b!1054993 (= e!670003 e!670006)))

(declare-fun b!1054994 () Bool)

(declare-fun lt!358932 () Bool)

(assert (=> b!1054994 (= e!670003 (not lt!358932))))

(declare-fun b!1054995 () Bool)

(assert (=> b!1054995 (= e!670007 (matchR!1434 (derivativeStep!790 (regOne!6308 r!15766) (head!1945 (_1!6607 lt!358848))) (tail!1507 (_1!6607 lt!358848))))))

(declare-fun b!1054996 () Bool)

(assert (=> b!1054996 (= e!670004 (not (= (head!1945 (_1!6607 lt!358848)) (c!176427 (regOne!6308 r!15766)))))))

(declare-fun b!1054997 () Bool)

(declare-fun e!670008 () Bool)

(assert (=> b!1054997 (= e!670008 e!670004)))

(declare-fun res!471835 () Bool)

(assert (=> b!1054997 (=> res!471835 e!670004)))

(declare-fun call!75259 () Bool)

(assert (=> b!1054997 (= res!471835 call!75259)))

(declare-fun d!300063 () Bool)

(assert (=> d!300063 e!670005))

(declare-fun c!176465 () Bool)

(assert (=> d!300063 (= c!176465 (is-EmptyExpr!2898 (regOne!6308 r!15766)))))

(assert (=> d!300063 (= lt!358932 e!670007)))

(declare-fun c!176466 () Bool)

(assert (=> d!300063 (= c!176466 (isEmpty!6526 (_1!6607 lt!358848)))))

(assert (=> d!300063 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300063 (= (matchR!1434 (regOne!6308 r!15766) (_1!6607 lt!358848)) lt!358932)))

(declare-fun b!1054998 () Bool)

(declare-fun e!670002 () Bool)

(assert (=> b!1054998 (= e!670002 (= (head!1945 (_1!6607 lt!358848)) (c!176427 (regOne!6308 r!15766))))))

(declare-fun b!1054999 () Bool)

(declare-fun res!471837 () Bool)

(assert (=> b!1054999 (=> (not res!471837) (not e!670002))))

(assert (=> b!1054999 (= res!471837 (not call!75259))))

(declare-fun b!1055000 () Bool)

(assert (=> b!1055000 (= e!670005 (= lt!358932 call!75259))))

(declare-fun b!1055001 () Bool)

(declare-fun res!471838 () Bool)

(assert (=> b!1055001 (=> res!471838 e!670006)))

(assert (=> b!1055001 (= res!471838 e!670002)))

(declare-fun res!471831 () Bool)

(assert (=> b!1055001 (=> (not res!471831) (not e!670002))))

(assert (=> b!1055001 (= res!471831 lt!358932)))

(declare-fun bm!75254 () Bool)

(assert (=> bm!75254 (= call!75259 (isEmpty!6526 (_1!6607 lt!358848)))))

(declare-fun b!1055002 () Bool)

(declare-fun res!471834 () Bool)

(assert (=> b!1055002 (=> (not res!471834) (not e!670002))))

(assert (=> b!1055002 (= res!471834 (isEmpty!6526 (tail!1507 (_1!6607 lt!358848))))))

(declare-fun b!1055003 () Bool)

(assert (=> b!1055003 (= e!670006 e!670008)))

(declare-fun res!471836 () Bool)

(assert (=> b!1055003 (=> (not res!471836) (not e!670008))))

(assert (=> b!1055003 (= res!471836 (not lt!358932))))

(assert (= (and d!300063 c!176466) b!1054990))

(assert (= (and d!300063 (not c!176466)) b!1054995))

(assert (= (and d!300063 c!176465) b!1055000))

(assert (= (and d!300063 (not c!176465)) b!1054992))

(assert (= (and b!1054992 c!176467) b!1054994))

(assert (= (and b!1054992 (not c!176467)) b!1054993))

(assert (= (and b!1054993 (not res!471833)) b!1055001))

(assert (= (and b!1055001 res!471831) b!1054999))

(assert (= (and b!1054999 res!471837) b!1055002))

(assert (= (and b!1055002 res!471834) b!1054998))

(assert (= (and b!1055001 (not res!471838)) b!1055003))

(assert (= (and b!1055003 res!471836) b!1054997))

(assert (= (and b!1054997 (not res!471835)) b!1054991))

(assert (= (and b!1054991 (not res!471832)) b!1054996))

(assert (= (or b!1055000 b!1054997 b!1054999) bm!75254))

(assert (=> b!1054995 m!1218431))

(assert (=> b!1054995 m!1218431))

(declare-fun m!1218491 () Bool)

(assert (=> b!1054995 m!1218491))

(assert (=> b!1054995 m!1218435))

(assert (=> b!1054995 m!1218491))

(assert (=> b!1054995 m!1218435))

(declare-fun m!1218493 () Bool)

(assert (=> b!1054995 m!1218493))

(assert (=> bm!75254 m!1218439))

(assert (=> b!1054991 m!1218435))

(assert (=> b!1054991 m!1218435))

(assert (=> b!1054991 m!1218441))

(assert (=> d!300063 m!1218439))

(assert (=> d!300063 m!1218393))

(declare-fun m!1218495 () Bool)

(assert (=> b!1054990 m!1218495))

(assert (=> b!1054996 m!1218431))

(assert (=> b!1054998 m!1218431))

(assert (=> b!1055002 m!1218435))

(assert (=> b!1055002 m!1218435))

(assert (=> b!1055002 m!1218441))

(assert (=> b!1054748 d!300063))

(declare-fun d!300065 () Bool)

(declare-fun e!670020 () Bool)

(assert (=> d!300065 e!670020))

(declare-fun res!471852 () Bool)

(assert (=> d!300065 (=> (not res!471852) (not e!670020))))

(declare-fun lt!358936 () List!10128)

(declare-fun content!1453 (List!10128) (Set C!6366))

(assert (=> d!300065 (= res!471852 (= (content!1453 lt!358936) (set.union (content!1453 (_1!6607 lt!358848)) (content!1453 (_2!6607 lt!358848)))))))

(declare-fun e!670021 () List!10128)

(assert (=> d!300065 (= lt!358936 e!670021)))

(declare-fun c!176473 () Bool)

(assert (=> d!300065 (= c!176473 (is-Nil!10112 (_1!6607 lt!358848)))))

(assert (=> d!300065 (= (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)) lt!358936)))

(declare-fun b!1055027 () Bool)

(assert (=> b!1055027 (= e!670021 (Cons!10112 (h!15513 (_1!6607 lt!358848)) (++!2798 (t!101174 (_1!6607 lt!358848)) (_2!6607 lt!358848))))))

(declare-fun b!1055029 () Bool)

(assert (=> b!1055029 (= e!670020 (or (not (= (_2!6607 lt!358848) Nil!10112)) (= lt!358936 (_1!6607 lt!358848))))))

(declare-fun b!1055026 () Bool)

(assert (=> b!1055026 (= e!670021 (_2!6607 lt!358848))))

(declare-fun b!1055028 () Bool)

(declare-fun res!471851 () Bool)

(assert (=> b!1055028 (=> (not res!471851) (not e!670020))))

(declare-fun size!7999 (List!10128) Int)

(assert (=> b!1055028 (= res!471851 (= (size!7999 lt!358936) (+ (size!7999 (_1!6607 lt!358848)) (size!7999 (_2!6607 lt!358848)))))))

(assert (= (and d!300065 c!176473) b!1055026))

(assert (= (and d!300065 (not c!176473)) b!1055027))

(assert (= (and d!300065 res!471852) b!1055028))

(assert (= (and b!1055028 res!471851) b!1055029))

(declare-fun m!1218499 () Bool)

(assert (=> d!300065 m!1218499))

(declare-fun m!1218503 () Bool)

(assert (=> d!300065 m!1218503))

(declare-fun m!1218505 () Bool)

(assert (=> d!300065 m!1218505))

(declare-fun m!1218507 () Bool)

(assert (=> b!1055027 m!1218507))

(declare-fun m!1218509 () Bool)

(assert (=> b!1055028 m!1218509))

(declare-fun m!1218513 () Bool)

(assert (=> b!1055028 m!1218513))

(declare-fun m!1218515 () Bool)

(assert (=> b!1055028 m!1218515))

(assert (=> b!1054748 d!300065))

(declare-fun d!300067 () Bool)

(assert (=> d!300067 (= (matchR!1434 (regTwo!6308 r!15766) (_2!6607 lt!358848)) (matchR!1434 (removeUselessConcat!447 (regTwo!6308 r!15766)) (_2!6607 lt!358848)))))

(declare-fun lt!358937 () Unit!15471)

(assert (=> d!300067 (= lt!358937 (choose!6710 (regTwo!6308 r!15766) (_2!6607 lt!358848)))))

(assert (=> d!300067 (validRegex!1367 (regTwo!6308 r!15766))))

(assert (=> d!300067 (= (lemmaRemoveUselessConcatSound!271 (regTwo!6308 r!15766) (_2!6607 lt!358848)) lt!358937)))

(declare-fun bs!251561 () Bool)

(assert (= bs!251561 d!300067))

(declare-fun m!1218521 () Bool)

(assert (=> bs!251561 m!1218521))

(assert (=> bs!251561 m!1218467))

(assert (=> bs!251561 m!1218317))

(assert (=> bs!251561 m!1218279))

(assert (=> bs!251561 m!1218279))

(declare-fun m!1218525 () Bool)

(assert (=> bs!251561 m!1218525))

(assert (=> b!1054748 d!300067))

(declare-fun d!300069 () Bool)

(assert (=> d!300069 (matchR!1434 (Concat!4731 (regOne!6308 r!15766) (regTwo!6308 r!15766)) (++!2798 (_1!6607 lt!358848) (_2!6607 lt!358848)))))

(declare-fun lt!358942 () Unit!15471)

(declare-fun choose!6711 (Regex!2898 Regex!2898 List!10128 List!10128) Unit!15471)

(assert (=> d!300069 (= lt!358942 (choose!6711 (regOne!6308 r!15766) (regTwo!6308 r!15766) (_1!6607 lt!358848) (_2!6607 lt!358848)))))

(declare-fun e!670038 () Bool)

(assert (=> d!300069 e!670038))

(declare-fun res!471871 () Bool)

(assert (=> d!300069 (=> (not res!471871) (not e!670038))))

(assert (=> d!300069 (= res!471871 (validRegex!1367 (regOne!6308 r!15766)))))

(assert (=> d!300069 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!9 (regOne!6308 r!15766) (regTwo!6308 r!15766) (_1!6607 lt!358848) (_2!6607 lt!358848)) lt!358942)))

(declare-fun b!1055060 () Bool)

(assert (=> b!1055060 (= e!670038 (validRegex!1367 (regTwo!6308 r!15766)))))

(assert (= (and d!300069 res!471871) b!1055060))

(assert (=> d!300069 m!1218301))

(assert (=> d!300069 m!1218301))

(assert (=> d!300069 m!1218303))

(declare-fun m!1218547 () Bool)

(assert (=> d!300069 m!1218547))

(assert (=> d!300069 m!1218393))

(assert (=> b!1055060 m!1218467))

(assert (=> b!1054748 d!300069))

(declare-fun bm!75264 () Bool)

(declare-fun call!75269 () Bool)

(declare-fun c!176484 () Bool)

(assert (=> bm!75264 (= call!75269 (validRegex!1367 (ite c!176484 (regOne!6309 r!15766) (regOne!6308 r!15766))))))

(declare-fun b!1055079 () Bool)

(declare-fun res!471883 () Bool)

(declare-fun e!670056 () Bool)

(assert (=> b!1055079 (=> res!471883 e!670056)))

(assert (=> b!1055079 (= res!471883 (not (is-Concat!4731 r!15766)))))

(declare-fun e!670057 () Bool)

(assert (=> b!1055079 (= e!670057 e!670056)))

(declare-fun b!1055080 () Bool)

(declare-fun res!471884 () Bool)

(declare-fun e!670055 () Bool)

(assert (=> b!1055080 (=> (not res!471884) (not e!670055))))

(assert (=> b!1055080 (= res!471884 call!75269)))

(assert (=> b!1055080 (= e!670057 e!670055)))

(declare-fun d!300075 () Bool)

(declare-fun res!471885 () Bool)

(declare-fun e!670058 () Bool)

(assert (=> d!300075 (=> res!471885 e!670058)))

(assert (=> d!300075 (= res!471885 (is-ElementMatch!2898 r!15766))))

(assert (=> d!300075 (= (validRegex!1367 r!15766) e!670058)))

(declare-fun b!1055081 () Bool)

(declare-fun e!670059 () Bool)

(assert (=> b!1055081 (= e!670056 e!670059)))

(declare-fun res!471882 () Bool)

(assert (=> b!1055081 (=> (not res!471882) (not e!670059))))

(assert (=> b!1055081 (= res!471882 call!75269)))

(declare-fun c!176485 () Bool)

(declare-fun call!75270 () Bool)

(declare-fun bm!75265 () Bool)

(assert (=> bm!75265 (= call!75270 (validRegex!1367 (ite c!176485 (reg!3227 r!15766) (ite c!176484 (regTwo!6309 r!15766) (regTwo!6308 r!15766)))))))

(declare-fun b!1055082 () Bool)

(declare-fun call!75271 () Bool)

(assert (=> b!1055082 (= e!670055 call!75271)))

(declare-fun b!1055083 () Bool)

(declare-fun e!670053 () Bool)

(assert (=> b!1055083 (= e!670053 e!670057)))

(assert (=> b!1055083 (= c!176484 (is-Union!2898 r!15766))))

(declare-fun b!1055084 () Bool)

(declare-fun e!670054 () Bool)

(assert (=> b!1055084 (= e!670054 call!75270)))

(declare-fun b!1055085 () Bool)

(assert (=> b!1055085 (= e!670053 e!670054)))

(declare-fun res!471886 () Bool)

(assert (=> b!1055085 (= res!471886 (not (nullable!990 (reg!3227 r!15766))))))

(assert (=> b!1055085 (=> (not res!471886) (not e!670054))))

(declare-fun b!1055086 () Bool)

(assert (=> b!1055086 (= e!670059 call!75271)))

(declare-fun bm!75266 () Bool)

(assert (=> bm!75266 (= call!75271 call!75270)))

(declare-fun b!1055087 () Bool)

(assert (=> b!1055087 (= e!670058 e!670053)))

(assert (=> b!1055087 (= c!176485 (is-Star!2898 r!15766))))

(assert (= (and d!300075 (not res!471885)) b!1055087))

(assert (= (and b!1055087 c!176485) b!1055085))

(assert (= (and b!1055087 (not c!176485)) b!1055083))

(assert (= (and b!1055085 res!471886) b!1055084))

(assert (= (and b!1055083 c!176484) b!1055080))

(assert (= (and b!1055083 (not c!176484)) b!1055079))

(assert (= (and b!1055080 res!471884) b!1055082))

(assert (= (and b!1055079 (not res!471883)) b!1055081))

(assert (= (and b!1055081 res!471882) b!1055086))

(assert (= (or b!1055082 b!1055086) bm!75266))

(assert (= (or b!1055080 b!1055081) bm!75264))

(assert (= (or b!1055084 bm!75266) bm!75265))

(declare-fun m!1218557 () Bool)

(assert (=> bm!75264 m!1218557))

(declare-fun m!1218559 () Bool)

(assert (=> bm!75265 m!1218559))

(declare-fun m!1218561 () Bool)

(assert (=> b!1055085 m!1218561))

(assert (=> start!90836 d!300075))

(declare-fun b!1055088 () Bool)

(declare-fun e!670062 () Bool)

(assert (=> b!1055088 (= e!670062 (matchR!1434 lt!358852 s!10566))))

(declare-fun b!1055089 () Bool)

(declare-fun e!670060 () Option!2423)

(declare-fun e!670063 () Option!2423)

(assert (=> b!1055089 (= e!670060 e!670063)))

(declare-fun c!176487 () Bool)

(assert (=> b!1055089 (= c!176487 (is-Nil!10112 s!10566))))

(declare-fun d!300079 () Bool)

(declare-fun e!670064 () Bool)

(assert (=> d!300079 e!670064))

(declare-fun res!471890 () Bool)

(assert (=> d!300079 (=> res!471890 e!670064)))

(declare-fun e!670061 () Bool)

(assert (=> d!300079 (= res!471890 e!670061)))

(declare-fun res!471891 () Bool)

(assert (=> d!300079 (=> (not res!471891) (not e!670061))))

(declare-fun lt!358944 () Option!2423)

(assert (=> d!300079 (= res!471891 (isDefined!2065 lt!358944))))

(assert (=> d!300079 (= lt!358944 e!670060)))

(declare-fun c!176486 () Bool)

(assert (=> d!300079 (= c!176486 e!670062)))

(declare-fun res!471888 () Bool)

(assert (=> d!300079 (=> (not res!471888) (not e!670062))))

(assert (=> d!300079 (= res!471888 (matchR!1434 lt!358849 Nil!10112))))

(assert (=> d!300079 (validRegex!1367 lt!358849)))

(assert (=> d!300079 (= (findConcatSeparation!529 lt!358849 lt!358852 Nil!10112 s!10566 s!10566) lt!358944)))

(declare-fun b!1055090 () Bool)

(assert (=> b!1055090 (= e!670063 None!2422)))

(declare-fun b!1055091 () Bool)

(declare-fun res!471889 () Bool)

(assert (=> b!1055091 (=> (not res!471889) (not e!670061))))

(assert (=> b!1055091 (= res!471889 (matchR!1434 lt!358852 (_2!6607 (get!3625 lt!358944))))))

(declare-fun b!1055092 () Bool)

(assert (=> b!1055092 (= e!670064 (not (isDefined!2065 lt!358944)))))

(declare-fun b!1055093 () Bool)

(assert (=> b!1055093 (= e!670060 (Some!2422 (tuple2!11563 Nil!10112 s!10566)))))

(declare-fun b!1055094 () Bool)

(declare-fun res!471887 () Bool)

(assert (=> b!1055094 (=> (not res!471887) (not e!670061))))

(assert (=> b!1055094 (= res!471887 (matchR!1434 lt!358849 (_1!6607 (get!3625 lt!358944))))))

(declare-fun b!1055095 () Bool)

(declare-fun lt!358943 () Unit!15471)

(declare-fun lt!358945 () Unit!15471)

(assert (=> b!1055095 (= lt!358943 lt!358945)))

(assert (=> b!1055095 (= (++!2798 (++!2798 Nil!10112 (Cons!10112 (h!15513 s!10566) Nil!10112)) (t!101174 s!10566)) s!10566)))

(assert (=> b!1055095 (= lt!358945 (lemmaMoveElementToOtherListKeepsConcatEq!391 Nil!10112 (h!15513 s!10566) (t!101174 s!10566) s!10566))))

(assert (=> b!1055095 (= e!670063 (findConcatSeparation!529 lt!358849 lt!358852 (++!2798 Nil!10112 (Cons!10112 (h!15513 s!10566) Nil!10112)) (t!101174 s!10566) s!10566))))

(declare-fun b!1055096 () Bool)

(assert (=> b!1055096 (= e!670061 (= (++!2798 (_1!6607 (get!3625 lt!358944)) (_2!6607 (get!3625 lt!358944))) s!10566))))

(assert (= (and d!300079 res!471888) b!1055088))

(assert (= (and d!300079 c!176486) b!1055093))

(assert (= (and d!300079 (not c!176486)) b!1055089))

(assert (= (and b!1055089 c!176487) b!1055090))

(assert (= (and b!1055089 (not c!176487)) b!1055095))

(assert (= (and d!300079 res!471891) b!1055094))

(assert (= (and b!1055094 res!471887) b!1055091))

(assert (= (and b!1055091 res!471889) b!1055096))

(assert (= (and d!300079 (not res!471890)) b!1055092))

(declare-fun m!1218563 () Bool)

(assert (=> b!1055091 m!1218563))

(declare-fun m!1218565 () Bool)

(assert (=> b!1055091 m!1218565))

(declare-fun m!1218567 () Bool)

(assert (=> d!300079 m!1218567))

(declare-fun m!1218569 () Bool)

(assert (=> d!300079 m!1218569))

(assert (=> d!300079 m!1218443))

(assert (=> b!1055094 m!1218563))

(declare-fun m!1218571 () Bool)

(assert (=> b!1055094 m!1218571))

(assert (=> b!1055095 m!1218405))

(assert (=> b!1055095 m!1218405))

(assert (=> b!1055095 m!1218407))

(assert (=> b!1055095 m!1218409))

(assert (=> b!1055095 m!1218405))

(declare-fun m!1218573 () Bool)

(assert (=> b!1055095 m!1218573))

(assert (=> b!1055092 m!1218567))

(assert (=> b!1055096 m!1218563))

(declare-fun m!1218575 () Bool)

(assert (=> b!1055096 m!1218575))

(declare-fun m!1218577 () Bool)

(assert (=> b!1055088 m!1218577))

(assert (=> b!1054749 d!300079))

(declare-fun d!300081 () Bool)

(assert (=> d!300081 (= (Exists!625 lambda!38105) (choose!6707 lambda!38105))))

(declare-fun bs!251562 () Bool)

(assert (= bs!251562 d!300081))

(declare-fun m!1218579 () Bool)

(assert (=> bs!251562 m!1218579))

(assert (=> b!1054749 d!300081))

(declare-fun d!300083 () Bool)

(assert (=> d!300083 (= (matchR!1434 lt!358845 s!10566) (matchRSpec!697 lt!358845 s!10566))))

(declare-fun lt!358951 () Unit!15471)

(declare-fun choose!6712 (Regex!2898 List!10128) Unit!15471)

(assert (=> d!300083 (= lt!358951 (choose!6712 lt!358845 s!10566))))

(assert (=> d!300083 (validRegex!1367 lt!358845)))

(assert (=> d!300083 (= (mainMatchTheorem!697 lt!358845 s!10566) lt!358951)))

(declare-fun bs!251563 () Bool)

(assert (= bs!251563 d!300083))

(assert (=> bs!251563 m!1218277))

(assert (=> bs!251563 m!1218285))

(declare-fun m!1218581 () Bool)

(assert (=> bs!251563 m!1218581))

(declare-fun m!1218583 () Bool)

(assert (=> bs!251563 m!1218583))

(assert (=> b!1054749 d!300083))

(declare-fun d!300085 () Bool)

(assert (=> d!300085 (= (Exists!625 lambda!38106) (choose!6707 lambda!38106))))

(declare-fun bs!251564 () Bool)

(assert (= bs!251564 d!300085))

(declare-fun m!1218585 () Bool)

(assert (=> bs!251564 m!1218585))

(assert (=> b!1054749 d!300085))

(declare-fun bs!251565 () Bool)

(declare-fun d!300087 () Bool)

(assert (= bs!251565 (and d!300087 d!300045)))

(declare-fun lambda!38132 () Int)

(assert (=> bs!251565 (not (= lambda!38132 lambda!38131))))

(declare-fun bs!251566 () Bool)

(assert (= bs!251566 (and d!300087 d!300039)))

(assert (=> bs!251566 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38132 lambda!38125))))

(declare-fun bs!251567 () Bool)

(assert (= bs!251567 (and d!300087 b!1054742)))

(assert (=> bs!251567 (not (= lambda!38132 lambda!38104))))

(declare-fun bs!251568 () Bool)

(assert (= bs!251568 (and d!300087 b!1054749)))

(assert (=> bs!251568 (not (= lambda!38132 lambda!38106))))

(assert (=> bs!251565 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38132 lambda!38130))))

(assert (=> bs!251568 (= lambda!38132 lambda!38105)))

(assert (=> bs!251567 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38132 lambda!38103))))

(assert (=> d!300087 true))

(assert (=> d!300087 true))

(assert (=> d!300087 true))

(declare-fun lambda!38133 () Int)

(assert (=> bs!251565 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38133 lambda!38131))))

(assert (=> bs!251566 (not (= lambda!38133 lambda!38125))))

(assert (=> bs!251567 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38133 lambda!38104))))

(assert (=> bs!251568 (= lambda!38133 lambda!38106)))

(declare-fun bs!251569 () Bool)

(assert (= bs!251569 d!300087))

(assert (=> bs!251569 (not (= lambda!38133 lambda!38132))))

(assert (=> bs!251565 (not (= lambda!38133 lambda!38130))))

(assert (=> bs!251568 (not (= lambda!38133 lambda!38105))))

(assert (=> bs!251567 (not (= lambda!38133 lambda!38103))))

(assert (=> d!300087 true))

(assert (=> d!300087 true))

(assert (=> d!300087 true))

(assert (=> d!300087 (= (Exists!625 lambda!38132) (Exists!625 lambda!38133))))

(declare-fun lt!358952 () Unit!15471)

(assert (=> d!300087 (= lt!358952 (choose!6709 lt!358849 lt!358852 s!10566))))

(assert (=> d!300087 (validRegex!1367 lt!358849)))

(assert (=> d!300087 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!313 lt!358849 lt!358852 s!10566) lt!358952)))

(declare-fun m!1218591 () Bool)

(assert (=> bs!251569 m!1218591))

(declare-fun m!1218593 () Bool)

(assert (=> bs!251569 m!1218593))

(declare-fun m!1218595 () Bool)

(assert (=> bs!251569 m!1218595))

(assert (=> bs!251569 m!1218443))

(assert (=> b!1054749 d!300087))

(declare-fun d!300091 () Bool)

(assert (=> d!300091 (= (isDefined!2065 lt!358855) (not (isEmpty!6528 lt!358855)))))

(declare-fun bs!251570 () Bool)

(assert (= bs!251570 d!300091))

(declare-fun m!1218597 () Bool)

(assert (=> bs!251570 m!1218597))

(assert (=> b!1054749 d!300091))

(declare-fun bs!251571 () Bool)

(declare-fun d!300093 () Bool)

(assert (= bs!251571 (and d!300093 d!300045)))

(declare-fun lambda!38134 () Int)

(assert (=> bs!251571 (not (= lambda!38134 lambda!38131))))

(declare-fun bs!251572 () Bool)

(assert (= bs!251572 (and d!300093 d!300087)))

(assert (=> bs!251572 (not (= lambda!38134 lambda!38133))))

(declare-fun bs!251573 () Bool)

(assert (= bs!251573 (and d!300093 d!300039)))

(assert (=> bs!251573 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38134 lambda!38125))))

(declare-fun bs!251574 () Bool)

(assert (= bs!251574 (and d!300093 b!1054742)))

(assert (=> bs!251574 (not (= lambda!38134 lambda!38104))))

(declare-fun bs!251575 () Bool)

(assert (= bs!251575 (and d!300093 b!1054749)))

(assert (=> bs!251575 (not (= lambda!38134 lambda!38106))))

(assert (=> bs!251572 (= lambda!38134 lambda!38132)))

(assert (=> bs!251571 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38134 lambda!38130))))

(assert (=> bs!251575 (= lambda!38134 lambda!38105)))

(assert (=> bs!251574 (= (and (= lt!358849 (regOne!6308 r!15766)) (= lt!358852 (regTwo!6308 r!15766))) (= lambda!38134 lambda!38103))))

(assert (=> d!300093 true))

(assert (=> d!300093 true))

(assert (=> d!300093 true))

(assert (=> d!300093 (= (isDefined!2065 (findConcatSeparation!529 lt!358849 lt!358852 Nil!10112 s!10566 s!10566)) (Exists!625 lambda!38134))))

(declare-fun lt!358953 () Unit!15471)

(assert (=> d!300093 (= lt!358953 (choose!6708 lt!358849 lt!358852 s!10566))))

(assert (=> d!300093 (validRegex!1367 lt!358849)))

(assert (=> d!300093 (= (lemmaFindConcatSeparationEquivalentToExists!529 lt!358849 lt!358852 s!10566) lt!358953)))

(declare-fun bs!251576 () Bool)

(assert (= bs!251576 d!300093))

(assert (=> bs!251576 m!1218289))

(declare-fun m!1218599 () Bool)

(assert (=> bs!251576 m!1218599))

(assert (=> bs!251576 m!1218289))

(declare-fun m!1218601 () Bool)

(assert (=> bs!251576 m!1218601))

(declare-fun m!1218603 () Bool)

(assert (=> bs!251576 m!1218603))

(assert (=> bs!251576 m!1218443))

(assert (=> b!1054749 d!300093))

(declare-fun bs!251578 () Bool)

(declare-fun b!1055153 () Bool)

(assert (= bs!251578 (and b!1055153 d!300045)))

(declare-fun lambda!38139 () Int)

(assert (=> bs!251578 (not (= lambda!38139 lambda!38131))))

(declare-fun bs!251579 () Bool)

(assert (= bs!251579 (and b!1055153 d!300039)))

(assert (=> bs!251579 (not (= lambda!38139 lambda!38125))))

(declare-fun bs!251580 () Bool)

(assert (= bs!251580 (and b!1055153 b!1054742)))

(assert (=> bs!251580 (not (= lambda!38139 lambda!38104))))

(declare-fun bs!251581 () Bool)

(assert (= bs!251581 (and b!1055153 b!1054749)))

(assert (=> bs!251581 (not (= lambda!38139 lambda!38106))))

(declare-fun bs!251582 () Bool)

(assert (= bs!251582 (and b!1055153 d!300087)))

(assert (=> bs!251582 (not (= lambda!38139 lambda!38132))))

(assert (=> bs!251578 (not (= lambda!38139 lambda!38130))))

(declare-fun bs!251583 () Bool)

(assert (= bs!251583 (and b!1055153 d!300093)))

(assert (=> bs!251583 (not (= lambda!38139 lambda!38134))))

(assert (=> bs!251582 (not (= lambda!38139 lambda!38133))))

(assert (=> bs!251581 (not (= lambda!38139 lambda!38105))))

(assert (=> bs!251580 (not (= lambda!38139 lambda!38103))))

(assert (=> b!1055153 true))

(assert (=> b!1055153 true))

(declare-fun bs!251584 () Bool)

(declare-fun b!1055146 () Bool)

(assert (= bs!251584 (and b!1055146 b!1055153)))

(declare-fun lambda!38140 () Int)

(assert (=> bs!251584 (not (= lambda!38140 lambda!38139))))

(declare-fun bs!251585 () Bool)

(assert (= bs!251585 (and b!1055146 d!300045)))

(assert (=> bs!251585 (= (and (= (regOne!6308 lt!358845) (regOne!6308 r!15766)) (= (regTwo!6308 lt!358845) (regTwo!6308 r!15766))) (= lambda!38140 lambda!38131))))

(declare-fun bs!251586 () Bool)

(assert (= bs!251586 (and b!1055146 d!300039)))

(assert (=> bs!251586 (not (= lambda!38140 lambda!38125))))

(declare-fun bs!251587 () Bool)

(assert (= bs!251587 (and b!1055146 b!1054742)))

(assert (=> bs!251587 (= (and (= (regOne!6308 lt!358845) (regOne!6308 r!15766)) (= (regTwo!6308 lt!358845) (regTwo!6308 r!15766))) (= lambda!38140 lambda!38104))))

(declare-fun bs!251588 () Bool)

(assert (= bs!251588 (and b!1055146 b!1054749)))

(assert (=> bs!251588 (= (and (= (regOne!6308 lt!358845) lt!358849) (= (regTwo!6308 lt!358845) lt!358852)) (= lambda!38140 lambda!38106))))

(declare-fun bs!251589 () Bool)

(assert (= bs!251589 (and b!1055146 d!300087)))

(assert (=> bs!251589 (not (= lambda!38140 lambda!38132))))

(assert (=> bs!251585 (not (= lambda!38140 lambda!38130))))

(declare-fun bs!251590 () Bool)

(assert (= bs!251590 (and b!1055146 d!300093)))

(assert (=> bs!251590 (not (= lambda!38140 lambda!38134))))

(assert (=> bs!251589 (= (and (= (regOne!6308 lt!358845) lt!358849) (= (regTwo!6308 lt!358845) lt!358852)) (= lambda!38140 lambda!38133))))

(assert (=> bs!251588 (not (= lambda!38140 lambda!38105))))

(assert (=> bs!251587 (not (= lambda!38140 lambda!38103))))

(assert (=> b!1055146 true))

(assert (=> b!1055146 true))

(declare-fun bm!75271 () Bool)

(declare-fun call!75277 () Bool)

(assert (=> bm!75271 (= call!75277 (isEmpty!6526 s!10566))))

(declare-fun b!1055144 () Bool)

(declare-fun e!670094 () Bool)

(declare-fun e!670093 () Bool)

(assert (=> b!1055144 (= e!670094 e!670093)))

(declare-fun res!471918 () Bool)

(assert (=> b!1055144 (= res!471918 (matchRSpec!697 (regOne!6309 lt!358845) s!10566))))

(assert (=> b!1055144 (=> res!471918 e!670093)))

(declare-fun b!1055145 () Bool)

(assert (=> b!1055145 (= e!670093 (matchRSpec!697 (regTwo!6309 lt!358845) s!10566))))

(declare-fun e!670095 () Bool)

(declare-fun call!75276 () Bool)

(assert (=> b!1055146 (= e!670095 call!75276)))

(declare-fun b!1055147 () Bool)

(declare-fun e!670096 () Bool)

(declare-fun e!670098 () Bool)

(assert (=> b!1055147 (= e!670096 e!670098)))

(declare-fun res!471919 () Bool)

(assert (=> b!1055147 (= res!471919 (not (is-EmptyLang!2898 lt!358845)))))

(assert (=> b!1055147 (=> (not res!471919) (not e!670098))))

(declare-fun b!1055148 () Bool)

(declare-fun e!670092 () Bool)

(assert (=> b!1055148 (= e!670092 (= s!10566 (Cons!10112 (c!176427 lt!358845) Nil!10112)))))

(declare-fun d!300095 () Bool)

(declare-fun c!176499 () Bool)

(assert (=> d!300095 (= c!176499 (is-EmptyExpr!2898 lt!358845))))

(assert (=> d!300095 (= (matchRSpec!697 lt!358845 s!10566) e!670096)))

(declare-fun b!1055149 () Bool)

(declare-fun res!471917 () Bool)

(declare-fun e!670097 () Bool)

(assert (=> b!1055149 (=> res!471917 e!670097)))

(assert (=> b!1055149 (= res!471917 call!75277)))

(assert (=> b!1055149 (= e!670095 e!670097)))

(declare-fun b!1055150 () Bool)

(declare-fun c!176502 () Bool)

(assert (=> b!1055150 (= c!176502 (is-ElementMatch!2898 lt!358845))))

(assert (=> b!1055150 (= e!670098 e!670092)))

(declare-fun b!1055151 () Bool)

(assert (=> b!1055151 (= e!670096 call!75277)))

(declare-fun b!1055152 () Bool)

(assert (=> b!1055152 (= e!670094 e!670095)))

(declare-fun c!176500 () Bool)

(assert (=> b!1055152 (= c!176500 (is-Star!2898 lt!358845))))

(declare-fun bm!75272 () Bool)

(assert (=> bm!75272 (= call!75276 (Exists!625 (ite c!176500 lambda!38139 lambda!38140)))))

(assert (=> b!1055153 (= e!670097 call!75276)))

(declare-fun b!1055154 () Bool)

(declare-fun c!176501 () Bool)

(assert (=> b!1055154 (= c!176501 (is-Union!2898 lt!358845))))

(assert (=> b!1055154 (= e!670092 e!670094)))

(assert (= (and d!300095 c!176499) b!1055151))

(assert (= (and d!300095 (not c!176499)) b!1055147))

(assert (= (and b!1055147 res!471919) b!1055150))

(assert (= (and b!1055150 c!176502) b!1055148))

(assert (= (and b!1055150 (not c!176502)) b!1055154))

(assert (= (and b!1055154 c!176501) b!1055144))

(assert (= (and b!1055154 (not c!176501)) b!1055152))

(assert (= (and b!1055144 (not res!471918)) b!1055145))

(assert (= (and b!1055152 c!176500) b!1055149))

(assert (= (and b!1055152 (not c!176500)) b!1055146))

(assert (= (and b!1055149 (not res!471917)) b!1055153))

(assert (= (or b!1055153 b!1055146) bm!75272))

(assert (= (or b!1055151 b!1055149) bm!75271))

(assert (=> bm!75271 m!1218273))

(declare-fun m!1218629 () Bool)

(assert (=> b!1055144 m!1218629))

(declare-fun m!1218631 () Bool)

(assert (=> b!1055145 m!1218631))

(declare-fun m!1218633 () Bool)

(assert (=> bm!75272 m!1218633))

(assert (=> b!1054749 d!300095))

(declare-fun bs!251592 () Bool)

(declare-fun b!1055178 () Bool)

(assert (= bs!251592 (and b!1055178 b!1055153)))

(declare-fun lambda!38141 () Int)

(assert (=> bs!251592 (= (and (= (reg!3227 r!15766) (reg!3227 lt!358845)) (= r!15766 lt!358845)) (= lambda!38141 lambda!38139))))

(declare-fun bs!251593 () Bool)

(assert (= bs!251593 (and b!1055178 d!300045)))

(assert (=> bs!251593 (not (= lambda!38141 lambda!38131))))

(declare-fun bs!251594 () Bool)

(assert (= bs!251594 (and b!1055178 d!300039)))

(assert (=> bs!251594 (not (= lambda!38141 lambda!38125))))

(declare-fun bs!251595 () Bool)

(assert (= bs!251595 (and b!1055178 b!1054742)))

(assert (=> bs!251595 (not (= lambda!38141 lambda!38104))))

(declare-fun bs!251596 () Bool)

(assert (= bs!251596 (and b!1055178 b!1055146)))

(assert (=> bs!251596 (not (= lambda!38141 lambda!38140))))

(declare-fun bs!251597 () Bool)

(assert (= bs!251597 (and b!1055178 b!1054749)))

(assert (=> bs!251597 (not (= lambda!38141 lambda!38106))))

(declare-fun bs!251598 () Bool)

(assert (= bs!251598 (and b!1055178 d!300087)))

(assert (=> bs!251598 (not (= lambda!38141 lambda!38132))))

(assert (=> bs!251593 (not (= lambda!38141 lambda!38130))))

(declare-fun bs!251599 () Bool)

(assert (= bs!251599 (and b!1055178 d!300093)))

(assert (=> bs!251599 (not (= lambda!38141 lambda!38134))))

(assert (=> bs!251598 (not (= lambda!38141 lambda!38133))))

(assert (=> bs!251597 (not (= lambda!38141 lambda!38105))))

(assert (=> bs!251595 (not (= lambda!38141 lambda!38103))))

(assert (=> b!1055178 true))

(assert (=> b!1055178 true))

(declare-fun bs!251600 () Bool)

(declare-fun b!1055171 () Bool)

(assert (= bs!251600 (and b!1055171 b!1055153)))

(declare-fun lambda!38142 () Int)

(assert (=> bs!251600 (not (= lambda!38142 lambda!38139))))

(declare-fun bs!251601 () Bool)

(assert (= bs!251601 (and b!1055171 d!300045)))

(assert (=> bs!251601 (= lambda!38142 lambda!38131)))

(declare-fun bs!251602 () Bool)

(assert (= bs!251602 (and b!1055171 d!300039)))

(assert (=> bs!251602 (not (= lambda!38142 lambda!38125))))

(declare-fun bs!251603 () Bool)

(assert (= bs!251603 (and b!1055171 b!1055178)))

(assert (=> bs!251603 (not (= lambda!38142 lambda!38141))))

(declare-fun bs!251604 () Bool)

(assert (= bs!251604 (and b!1055171 b!1054742)))

(assert (=> bs!251604 (= lambda!38142 lambda!38104)))

(declare-fun bs!251605 () Bool)

(assert (= bs!251605 (and b!1055171 b!1055146)))

(assert (=> bs!251605 (= (and (= (regOne!6308 r!15766) (regOne!6308 lt!358845)) (= (regTwo!6308 r!15766) (regTwo!6308 lt!358845))) (= lambda!38142 lambda!38140))))

(declare-fun bs!251606 () Bool)

(assert (= bs!251606 (and b!1055171 b!1054749)))

(assert (=> bs!251606 (= (and (= (regOne!6308 r!15766) lt!358849) (= (regTwo!6308 r!15766) lt!358852)) (= lambda!38142 lambda!38106))))

(declare-fun bs!251607 () Bool)

(assert (= bs!251607 (and b!1055171 d!300087)))

(assert (=> bs!251607 (not (= lambda!38142 lambda!38132))))

(assert (=> bs!251601 (not (= lambda!38142 lambda!38130))))

(declare-fun bs!251608 () Bool)

(assert (= bs!251608 (and b!1055171 d!300093)))

(assert (=> bs!251608 (not (= lambda!38142 lambda!38134))))

(assert (=> bs!251607 (= (and (= (regOne!6308 r!15766) lt!358849) (= (regTwo!6308 r!15766) lt!358852)) (= lambda!38142 lambda!38133))))

(assert (=> bs!251606 (not (= lambda!38142 lambda!38105))))

(assert (=> bs!251604 (not (= lambda!38142 lambda!38103))))

(assert (=> b!1055171 true))

(assert (=> b!1055171 true))

(declare-fun bm!75274 () Bool)

(declare-fun call!75280 () Bool)

(assert (=> bm!75274 (= call!75280 (isEmpty!6526 s!10566))))

(declare-fun b!1055169 () Bool)

(declare-fun e!670108 () Bool)

(declare-fun e!670107 () Bool)

(assert (=> b!1055169 (= e!670108 e!670107)))

(declare-fun res!471929 () Bool)

(assert (=> b!1055169 (= res!471929 (matchRSpec!697 (regOne!6309 r!15766) s!10566))))

(assert (=> b!1055169 (=> res!471929 e!670107)))

(declare-fun b!1055170 () Bool)

(assert (=> b!1055170 (= e!670107 (matchRSpec!697 (regTwo!6309 r!15766) s!10566))))

(declare-fun e!670109 () Bool)

(declare-fun call!75279 () Bool)

(assert (=> b!1055171 (= e!670109 call!75279)))

(declare-fun b!1055172 () Bool)

(declare-fun e!670110 () Bool)

(declare-fun e!670112 () Bool)

(assert (=> b!1055172 (= e!670110 e!670112)))

(declare-fun res!471930 () Bool)

(assert (=> b!1055172 (= res!471930 (not (is-EmptyLang!2898 r!15766)))))

(assert (=> b!1055172 (=> (not res!471930) (not e!670112))))

(declare-fun b!1055173 () Bool)

(declare-fun e!670106 () Bool)

(assert (=> b!1055173 (= e!670106 (= s!10566 (Cons!10112 (c!176427 r!15766) Nil!10112)))))

(declare-fun d!300105 () Bool)

(declare-fun c!176506 () Bool)

(assert (=> d!300105 (= c!176506 (is-EmptyExpr!2898 r!15766))))

(assert (=> d!300105 (= (matchRSpec!697 r!15766 s!10566) e!670110)))

(declare-fun b!1055174 () Bool)

(declare-fun res!471928 () Bool)

(declare-fun e!670111 () Bool)

(assert (=> b!1055174 (=> res!471928 e!670111)))

(assert (=> b!1055174 (= res!471928 call!75280)))

(assert (=> b!1055174 (= e!670109 e!670111)))

(declare-fun b!1055175 () Bool)

(declare-fun c!176509 () Bool)

(assert (=> b!1055175 (= c!176509 (is-ElementMatch!2898 r!15766))))

(assert (=> b!1055175 (= e!670112 e!670106)))

(declare-fun b!1055176 () Bool)

(assert (=> b!1055176 (= e!670110 call!75280)))

(declare-fun b!1055177 () Bool)

(assert (=> b!1055177 (= e!670108 e!670109)))

(declare-fun c!176507 () Bool)

(assert (=> b!1055177 (= c!176507 (is-Star!2898 r!15766))))

(declare-fun bm!75275 () Bool)

(assert (=> bm!75275 (= call!75279 (Exists!625 (ite c!176507 lambda!38141 lambda!38142)))))

(assert (=> b!1055178 (= e!670111 call!75279)))

(declare-fun b!1055179 () Bool)

(declare-fun c!176508 () Bool)

(assert (=> b!1055179 (= c!176508 (is-Union!2898 r!15766))))

(assert (=> b!1055179 (= e!670106 e!670108)))

(assert (= (and d!300105 c!176506) b!1055176))

(assert (= (and d!300105 (not c!176506)) b!1055172))

(assert (= (and b!1055172 res!471930) b!1055175))

(assert (= (and b!1055175 c!176509) b!1055173))

(assert (= (and b!1055175 (not c!176509)) b!1055179))

(assert (= (and b!1055179 c!176508) b!1055169))

(assert (= (and b!1055179 (not c!176508)) b!1055177))

(assert (= (and b!1055169 (not res!471929)) b!1055170))

(assert (= (and b!1055177 c!176507) b!1055174))

(assert (= (and b!1055177 (not c!176507)) b!1055171))

(assert (= (and b!1055174 (not res!471928)) b!1055178))

(assert (= (or b!1055178 b!1055171) bm!75275))

(assert (= (or b!1055176 b!1055174) bm!75274))

(assert (=> bm!75274 m!1218273))

(declare-fun m!1218655 () Bool)

(assert (=> b!1055169 m!1218655))

(declare-fun m!1218657 () Bool)

(assert (=> b!1055170 m!1218657))

(declare-fun m!1218659 () Bool)

(assert (=> bm!75275 m!1218659))

(assert (=> b!1054745 d!300105))

(declare-fun b!1055194 () Bool)

(declare-fun e!670125 () Bool)

(assert (=> b!1055194 (= e!670125 (nullable!990 r!15766))))

(declare-fun b!1055195 () Bool)

(declare-fun res!471940 () Bool)

(declare-fun e!670122 () Bool)

(assert (=> b!1055195 (=> res!471940 e!670122)))

(assert (=> b!1055195 (= res!471940 (not (isEmpty!6526 (tail!1507 s!10566))))))

(declare-fun b!1055196 () Bool)

(declare-fun e!670123 () Bool)

(declare-fun e!670121 () Bool)

(assert (=> b!1055196 (= e!670123 e!670121)))

(declare-fun c!176515 () Bool)

(assert (=> b!1055196 (= c!176515 (is-EmptyLang!2898 r!15766))))

(declare-fun b!1055197 () Bool)

(declare-fun res!471941 () Bool)

(declare-fun e!670124 () Bool)

(assert (=> b!1055197 (=> res!471941 e!670124)))

(assert (=> b!1055197 (= res!471941 (not (is-ElementMatch!2898 r!15766)))))

(assert (=> b!1055197 (= e!670121 e!670124)))

(declare-fun b!1055198 () Bool)

(declare-fun lt!358963 () Bool)

(assert (=> b!1055198 (= e!670121 (not lt!358963))))

(declare-fun b!1055199 () Bool)

(assert (=> b!1055199 (= e!670125 (matchR!1434 (derivativeStep!790 r!15766 (head!1945 s!10566)) (tail!1507 s!10566)))))

(declare-fun b!1055200 () Bool)

(assert (=> b!1055200 (= e!670122 (not (= (head!1945 s!10566) (c!176427 r!15766))))))

(declare-fun b!1055201 () Bool)

(declare-fun e!670126 () Bool)

(assert (=> b!1055201 (= e!670126 e!670122)))

(declare-fun res!471943 () Bool)

(assert (=> b!1055201 (=> res!471943 e!670122)))

(declare-fun call!75282 () Bool)

(assert (=> b!1055201 (= res!471943 call!75282)))

(declare-fun d!300111 () Bool)

(assert (=> d!300111 e!670123))

(declare-fun c!176513 () Bool)

(assert (=> d!300111 (= c!176513 (is-EmptyExpr!2898 r!15766))))

(assert (=> d!300111 (= lt!358963 e!670125)))

(declare-fun c!176514 () Bool)

(assert (=> d!300111 (= c!176514 (isEmpty!6526 s!10566))))

(assert (=> d!300111 (validRegex!1367 r!15766)))

(assert (=> d!300111 (= (matchR!1434 r!15766 s!10566) lt!358963)))

(declare-fun b!1055202 () Bool)

(declare-fun e!670120 () Bool)

(assert (=> b!1055202 (= e!670120 (= (head!1945 s!10566) (c!176427 r!15766)))))

(declare-fun b!1055203 () Bool)

(declare-fun res!471945 () Bool)

(assert (=> b!1055203 (=> (not res!471945) (not e!670120))))

(assert (=> b!1055203 (= res!471945 (not call!75282))))

(declare-fun b!1055204 () Bool)

(assert (=> b!1055204 (= e!670123 (= lt!358963 call!75282))))

(declare-fun b!1055205 () Bool)

(declare-fun res!471946 () Bool)

(assert (=> b!1055205 (=> res!471946 e!670124)))

(assert (=> b!1055205 (= res!471946 e!670120)))

(declare-fun res!471939 () Bool)

(assert (=> b!1055205 (=> (not res!471939) (not e!670120))))

(assert (=> b!1055205 (= res!471939 lt!358963)))

(declare-fun bm!75277 () Bool)

(assert (=> bm!75277 (= call!75282 (isEmpty!6526 s!10566))))

(declare-fun b!1055206 () Bool)

(declare-fun res!471942 () Bool)

(assert (=> b!1055206 (=> (not res!471942) (not e!670120))))

(assert (=> b!1055206 (= res!471942 (isEmpty!6526 (tail!1507 s!10566)))))

(declare-fun b!1055207 () Bool)

(assert (=> b!1055207 (= e!670124 e!670126)))

(declare-fun res!471944 () Bool)

(assert (=> b!1055207 (=> (not res!471944) (not e!670126))))

(assert (=> b!1055207 (= res!471944 (not lt!358963))))

(assert (= (and d!300111 c!176514) b!1055194))

(assert (= (and d!300111 (not c!176514)) b!1055199))

(assert (= (and d!300111 c!176513) b!1055204))

(assert (= (and d!300111 (not c!176513)) b!1055196))

(assert (= (and b!1055196 c!176515) b!1055198))

(assert (= (and b!1055196 (not c!176515)) b!1055197))

(assert (= (and b!1055197 (not res!471941)) b!1055205))

(assert (= (and b!1055205 res!471939) b!1055203))

(assert (= (and b!1055203 res!471945) b!1055206))

(assert (= (and b!1055206 res!471942) b!1055202))

(assert (= (and b!1055205 (not res!471946)) b!1055207))

(assert (= (and b!1055207 res!471944) b!1055201))

(assert (= (and b!1055201 (not res!471943)) b!1055195))

(assert (= (and b!1055195 (not res!471940)) b!1055200))

(assert (= (or b!1055204 b!1055201 b!1055203) bm!75277))

(declare-fun m!1218663 () Bool)

(assert (=> b!1055199 m!1218663))

(assert (=> b!1055199 m!1218663))

(declare-fun m!1218665 () Bool)

(assert (=> b!1055199 m!1218665))

(declare-fun m!1218667 () Bool)

(assert (=> b!1055199 m!1218667))

(assert (=> b!1055199 m!1218665))

(assert (=> b!1055199 m!1218667))

(declare-fun m!1218669 () Bool)

(assert (=> b!1055199 m!1218669))

(assert (=> bm!75277 m!1218273))

(assert (=> b!1055195 m!1218667))

(assert (=> b!1055195 m!1218667))

(declare-fun m!1218671 () Bool)

(assert (=> b!1055195 m!1218671))

(assert (=> d!300111 m!1218273))

(assert (=> d!300111 m!1218299))

(declare-fun m!1218673 () Bool)

(assert (=> b!1055194 m!1218673))

(assert (=> b!1055200 m!1218663))

(assert (=> b!1055202 m!1218663))

(assert (=> b!1055206 m!1218667))

(assert (=> b!1055206 m!1218667))

(assert (=> b!1055206 m!1218671))

(assert (=> b!1054745 d!300111))

(declare-fun d!300115 () Bool)

(assert (=> d!300115 (= (matchR!1434 r!15766 s!10566) (matchRSpec!697 r!15766 s!10566))))

(declare-fun lt!358964 () Unit!15471)

(assert (=> d!300115 (= lt!358964 (choose!6712 r!15766 s!10566))))

(assert (=> d!300115 (validRegex!1367 r!15766)))

(assert (=> d!300115 (= (mainMatchTheorem!697 r!15766 s!10566) lt!358964)))

(declare-fun bs!251610 () Bool)

(assert (= bs!251610 d!300115))

(assert (=> bs!251610 m!1218259))

(assert (=> bs!251610 m!1218257))

(declare-fun m!1218675 () Bool)

(assert (=> bs!251610 m!1218675))

(assert (=> bs!251610 m!1218299))

(assert (=> b!1054745 d!300115))

(declare-fun b!1055208 () Bool)

(declare-fun e!670132 () Bool)

(assert (=> b!1055208 (= e!670132 (nullable!990 lt!358845))))

(declare-fun b!1055209 () Bool)

(declare-fun res!471948 () Bool)

(declare-fun e!670129 () Bool)

(assert (=> b!1055209 (=> res!471948 e!670129)))

(assert (=> b!1055209 (= res!471948 (not (isEmpty!6526 (tail!1507 s!10566))))))

(declare-fun b!1055210 () Bool)

(declare-fun e!670130 () Bool)

(declare-fun e!670128 () Bool)

(assert (=> b!1055210 (= e!670130 e!670128)))

(declare-fun c!176518 () Bool)

(assert (=> b!1055210 (= c!176518 (is-EmptyLang!2898 lt!358845))))

(declare-fun b!1055211 () Bool)

(declare-fun res!471949 () Bool)

(declare-fun e!670131 () Bool)

(assert (=> b!1055211 (=> res!471949 e!670131)))

(assert (=> b!1055211 (= res!471949 (not (is-ElementMatch!2898 lt!358845)))))

(assert (=> b!1055211 (= e!670128 e!670131)))

(declare-fun b!1055212 () Bool)

(declare-fun lt!358965 () Bool)

(assert (=> b!1055212 (= e!670128 (not lt!358965))))

(declare-fun b!1055213 () Bool)

(assert (=> b!1055213 (= e!670132 (matchR!1434 (derivativeStep!790 lt!358845 (head!1945 s!10566)) (tail!1507 s!10566)))))

(declare-fun b!1055214 () Bool)

(assert (=> b!1055214 (= e!670129 (not (= (head!1945 s!10566) (c!176427 lt!358845))))))

(declare-fun b!1055215 () Bool)

(declare-fun e!670133 () Bool)

(assert (=> b!1055215 (= e!670133 e!670129)))

(declare-fun res!471951 () Bool)

(assert (=> b!1055215 (=> res!471951 e!670129)))

(declare-fun call!75283 () Bool)

(assert (=> b!1055215 (= res!471951 call!75283)))

(declare-fun d!300117 () Bool)

(assert (=> d!300117 e!670130))

(declare-fun c!176516 () Bool)

(assert (=> d!300117 (= c!176516 (is-EmptyExpr!2898 lt!358845))))

(assert (=> d!300117 (= lt!358965 e!670132)))

(declare-fun c!176517 () Bool)

(assert (=> d!300117 (= c!176517 (isEmpty!6526 s!10566))))

(assert (=> d!300117 (validRegex!1367 lt!358845)))

(assert (=> d!300117 (= (matchR!1434 lt!358845 s!10566) lt!358965)))

(declare-fun b!1055216 () Bool)

(declare-fun e!670127 () Bool)

(assert (=> b!1055216 (= e!670127 (= (head!1945 s!10566) (c!176427 lt!358845)))))

(declare-fun b!1055217 () Bool)

(declare-fun res!471953 () Bool)

(assert (=> b!1055217 (=> (not res!471953) (not e!670127))))

(assert (=> b!1055217 (= res!471953 (not call!75283))))

(declare-fun b!1055218 () Bool)

(assert (=> b!1055218 (= e!670130 (= lt!358965 call!75283))))

(declare-fun b!1055219 () Bool)

(declare-fun res!471954 () Bool)

(assert (=> b!1055219 (=> res!471954 e!670131)))

(assert (=> b!1055219 (= res!471954 e!670127)))

(declare-fun res!471947 () Bool)

(assert (=> b!1055219 (=> (not res!471947) (not e!670127))))

(assert (=> b!1055219 (= res!471947 lt!358965)))

(declare-fun bm!75278 () Bool)

(assert (=> bm!75278 (= call!75283 (isEmpty!6526 s!10566))))

(declare-fun b!1055220 () Bool)

(declare-fun res!471950 () Bool)

(assert (=> b!1055220 (=> (not res!471950) (not e!670127))))

(assert (=> b!1055220 (= res!471950 (isEmpty!6526 (tail!1507 s!10566)))))

(declare-fun b!1055221 () Bool)

(assert (=> b!1055221 (= e!670131 e!670133)))

(declare-fun res!471952 () Bool)

(assert (=> b!1055221 (=> (not res!471952) (not e!670133))))

(assert (=> b!1055221 (= res!471952 (not lt!358965))))

(assert (= (and d!300117 c!176517) b!1055208))

(assert (= (and d!300117 (not c!176517)) b!1055213))

(assert (= (and d!300117 c!176516) b!1055218))

(assert (= (and d!300117 (not c!176516)) b!1055210))

(assert (= (and b!1055210 c!176518) b!1055212))

(assert (= (and b!1055210 (not c!176518)) b!1055211))

(assert (= (and b!1055211 (not res!471949)) b!1055219))

(assert (= (and b!1055219 res!471947) b!1055217))

(assert (= (and b!1055217 res!471953) b!1055220))

(assert (= (and b!1055220 res!471950) b!1055216))

(assert (= (and b!1055219 (not res!471954)) b!1055221))

(assert (= (and b!1055221 res!471952) b!1055215))

(assert (= (and b!1055215 (not res!471951)) b!1055209))

(assert (= (and b!1055209 (not res!471948)) b!1055214))

(assert (= (or b!1055218 b!1055215 b!1055217) bm!75278))

(assert (=> b!1055213 m!1218663))

(assert (=> b!1055213 m!1218663))

(declare-fun m!1218677 () Bool)

(assert (=> b!1055213 m!1218677))

(assert (=> b!1055213 m!1218667))

(assert (=> b!1055213 m!1218677))

(assert (=> b!1055213 m!1218667))

(declare-fun m!1218679 () Bool)

(assert (=> b!1055213 m!1218679))

(assert (=> bm!75278 m!1218273))

(assert (=> b!1055209 m!1218667))

(assert (=> b!1055209 m!1218667))

(assert (=> b!1055209 m!1218671))

(assert (=> d!300117 m!1218273))

(assert (=> d!300117 m!1218583))

(declare-fun m!1218681 () Bool)

(assert (=> b!1055208 m!1218681))

(assert (=> b!1055214 m!1218663))

(assert (=> b!1055216 m!1218663))

(assert (=> b!1055220 m!1218667))

(assert (=> b!1055220 m!1218667))

(assert (=> b!1055220 m!1218671))

(assert (=> b!1054746 d!300117))

(declare-fun b!1055244 () Bool)

(declare-fun c!176533 () Bool)

(assert (=> b!1055244 (= c!176533 (is-Star!2898 (regTwo!6308 r!15766)))))

(declare-fun e!670148 () Regex!2898)

(declare-fun e!670146 () Regex!2898)

(assert (=> b!1055244 (= e!670148 e!670146)))

(declare-fun d!300121 () Bool)

(declare-fun e!670149 () Bool)

(assert (=> d!300121 e!670149))

(declare-fun res!471957 () Bool)

(assert (=> d!300121 (=> (not res!471957) (not e!670149))))

(declare-fun lt!358968 () Regex!2898)

(assert (=> d!300121 (= res!471957 (validRegex!1367 lt!358968))))

(declare-fun e!670150 () Regex!2898)

(assert (=> d!300121 (= lt!358968 e!670150)))

(declare-fun c!176530 () Bool)

(assert (=> d!300121 (= c!176530 (and (is-Concat!4731 (regTwo!6308 r!15766)) (is-EmptyExpr!2898 (regOne!6308 (regTwo!6308 r!15766)))))))

(assert (=> d!300121 (validRegex!1367 (regTwo!6308 r!15766))))

(assert (=> d!300121 (= (removeUselessConcat!447 (regTwo!6308 r!15766)) lt!358968)))

(declare-fun b!1055245 () Bool)

(declare-fun e!670151 () Regex!2898)

(assert (=> b!1055245 (= e!670150 e!670151)))

(declare-fun c!176529 () Bool)

(assert (=> b!1055245 (= c!176529 (and (is-Concat!4731 (regTwo!6308 r!15766)) (is-EmptyExpr!2898 (regTwo!6308 (regTwo!6308 r!15766)))))))

(declare-fun b!1055246 () Bool)

(declare-fun e!670147 () Regex!2898)

(assert (=> b!1055246 (= e!670147 e!670148)))

(declare-fun c!176531 () Bool)

(assert (=> b!1055246 (= c!176531 (is-Union!2898 (regTwo!6308 r!15766)))))

(declare-fun b!1055247 () Bool)

(declare-fun call!75294 () Regex!2898)

(declare-fun call!75296 () Regex!2898)

(assert (=> b!1055247 (= e!670147 (Concat!4731 call!75294 call!75296))))

(declare-fun b!1055248 () Bool)

(declare-fun call!75297 () Regex!2898)

(assert (=> b!1055248 (= e!670151 call!75297)))

(declare-fun b!1055249 () Bool)

(assert (=> b!1055249 (= e!670149 (= (nullable!990 lt!358968) (nullable!990 (regTwo!6308 r!15766))))))

(declare-fun b!1055250 () Bool)

(assert (=> b!1055250 (= e!670146 (regTwo!6308 r!15766))))

(declare-fun bm!75289 () Bool)

(assert (=> bm!75289 (= call!75294 call!75297)))

(declare-fun bm!75290 () Bool)

(declare-fun c!176532 () Bool)

(assert (=> bm!75290 (= call!75296 (removeUselessConcat!447 (ite c!176532 (regTwo!6308 (regTwo!6308 r!15766)) (regOne!6309 (regTwo!6308 r!15766)))))))

(declare-fun bm!75291 () Bool)

(declare-fun call!75295 () Regex!2898)

(assert (=> bm!75291 (= call!75295 (removeUselessConcat!447 (ite c!176530 (regTwo!6308 (regTwo!6308 r!15766)) (ite (or c!176529 c!176532) (regOne!6308 (regTwo!6308 r!15766)) (ite c!176531 (regTwo!6309 (regTwo!6308 r!15766)) (reg!3227 (regTwo!6308 r!15766)))))))))

(declare-fun b!1055251 () Bool)

(declare-fun call!75298 () Regex!2898)

(assert (=> b!1055251 (= e!670148 (Union!2898 call!75296 call!75298))))

(declare-fun b!1055252 () Bool)

(assert (=> b!1055252 (= e!670146 (Star!2898 call!75298))))

(declare-fun b!1055253 () Bool)

(assert (=> b!1055253 (= e!670150 call!75295)))

(declare-fun bm!75292 () Bool)

(assert (=> bm!75292 (= call!75298 call!75294)))

(declare-fun b!1055254 () Bool)

(assert (=> b!1055254 (= c!176532 (is-Concat!4731 (regTwo!6308 r!15766)))))

(assert (=> b!1055254 (= e!670151 e!670147)))

(declare-fun bm!75293 () Bool)

(assert (=> bm!75293 (= call!75297 call!75295)))

(assert (= (and d!300121 c!176530) b!1055253))

(assert (= (and d!300121 (not c!176530)) b!1055245))

(assert (= (and b!1055245 c!176529) b!1055248))

(assert (= (and b!1055245 (not c!176529)) b!1055254))

(assert (= (and b!1055254 c!176532) b!1055247))

(assert (= (and b!1055254 (not c!176532)) b!1055246))

(assert (= (and b!1055246 c!176531) b!1055251))

(assert (= (and b!1055246 (not c!176531)) b!1055244))

(assert (= (and b!1055244 c!176533) b!1055252))

(assert (= (and b!1055244 (not c!176533)) b!1055250))

(assert (= (or b!1055251 b!1055252) bm!75292))

(assert (= (or b!1055247 b!1055251) bm!75290))

(assert (= (or b!1055247 bm!75292) bm!75289))

(assert (= (or b!1055248 bm!75289) bm!75293))

(assert (= (or b!1055253 bm!75293) bm!75291))

(assert (= (and d!300121 res!471957) b!1055249))

(declare-fun m!1218685 () Bool)

(assert (=> d!300121 m!1218685))

(assert (=> d!300121 m!1218467))

(declare-fun m!1218687 () Bool)

(assert (=> b!1055249 m!1218687))

(assert (=> b!1055249 m!1218469))

(declare-fun m!1218689 () Bool)

(assert (=> bm!75290 m!1218689))

(declare-fun m!1218691 () Bool)

(assert (=> bm!75291 m!1218691))

(assert (=> b!1054746 d!300121))

(declare-fun b!1055255 () Bool)

(declare-fun c!176538 () Bool)

(assert (=> b!1055255 (= c!176538 (is-Star!2898 (regOne!6308 r!15766)))))

(declare-fun e!670154 () Regex!2898)

(declare-fun e!670152 () Regex!2898)

(assert (=> b!1055255 (= e!670154 e!670152)))

(declare-fun d!300125 () Bool)

(declare-fun e!670155 () Bool)

(assert (=> d!300125 e!670155))

(declare-fun res!471958 () Bool)

(assert (=> d!300125 (=> (not res!471958) (not e!670155))))

(declare-fun lt!358969 () Regex!2898)

(assert (=> d!300125 (= res!471958 (validRegex!1367 lt!358969))))

(declare-fun e!670156 () Regex!2898)

(assert (=> d!300125 (= lt!358969 e!670156)))

(declare-fun c!176535 () Bool)

(assert (=> d!300125 (= c!176535 (and (is-Concat!4731 (regOne!6308 r!15766)) (is-EmptyExpr!2898 (regOne!6308 (regOne!6308 r!15766)))))))

(assert (=> d!300125 (validRegex!1367 (regOne!6308 r!15766))))

(assert (=> d!300125 (= (removeUselessConcat!447 (regOne!6308 r!15766)) lt!358969)))

(declare-fun b!1055256 () Bool)

(declare-fun e!670157 () Regex!2898)

(assert (=> b!1055256 (= e!670156 e!670157)))

(declare-fun c!176534 () Bool)

(assert (=> b!1055256 (= c!176534 (and (is-Concat!4731 (regOne!6308 r!15766)) (is-EmptyExpr!2898 (regTwo!6308 (regOne!6308 r!15766)))))))

(declare-fun b!1055257 () Bool)

(declare-fun e!670153 () Regex!2898)

(assert (=> b!1055257 (= e!670153 e!670154)))

(declare-fun c!176536 () Bool)

(assert (=> b!1055257 (= c!176536 (is-Union!2898 (regOne!6308 r!15766)))))

(declare-fun b!1055258 () Bool)

(declare-fun call!75299 () Regex!2898)

(declare-fun call!75301 () Regex!2898)

(assert (=> b!1055258 (= e!670153 (Concat!4731 call!75299 call!75301))))

(declare-fun b!1055259 () Bool)

(declare-fun call!75302 () Regex!2898)

(assert (=> b!1055259 (= e!670157 call!75302)))

(declare-fun b!1055260 () Bool)

(assert (=> b!1055260 (= e!670155 (= (nullable!990 lt!358969) (nullable!990 (regOne!6308 r!15766))))))

(declare-fun b!1055261 () Bool)

(assert (=> b!1055261 (= e!670152 (regOne!6308 r!15766))))

(declare-fun bm!75294 () Bool)

(assert (=> bm!75294 (= call!75299 call!75302)))

(declare-fun bm!75295 () Bool)

(declare-fun c!176537 () Bool)

(assert (=> bm!75295 (= call!75301 (removeUselessConcat!447 (ite c!176537 (regTwo!6308 (regOne!6308 r!15766)) (regOne!6309 (regOne!6308 r!15766)))))))

(declare-fun bm!75296 () Bool)

(declare-fun call!75300 () Regex!2898)

(assert (=> bm!75296 (= call!75300 (removeUselessConcat!447 (ite c!176535 (regTwo!6308 (regOne!6308 r!15766)) (ite (or c!176534 c!176537) (regOne!6308 (regOne!6308 r!15766)) (ite c!176536 (regTwo!6309 (regOne!6308 r!15766)) (reg!3227 (regOne!6308 r!15766)))))))))

(declare-fun b!1055262 () Bool)

(declare-fun call!75303 () Regex!2898)

(assert (=> b!1055262 (= e!670154 (Union!2898 call!75301 call!75303))))

(declare-fun b!1055263 () Bool)

(assert (=> b!1055263 (= e!670152 (Star!2898 call!75303))))

(declare-fun b!1055264 () Bool)

(assert (=> b!1055264 (= e!670156 call!75300)))

(declare-fun bm!75297 () Bool)

(assert (=> bm!75297 (= call!75303 call!75299)))

(declare-fun b!1055265 () Bool)

(assert (=> b!1055265 (= c!176537 (is-Concat!4731 (regOne!6308 r!15766)))))

(assert (=> b!1055265 (= e!670157 e!670153)))

(declare-fun bm!75298 () Bool)

(assert (=> bm!75298 (= call!75302 call!75300)))

(assert (= (and d!300125 c!176535) b!1055264))

(assert (= (and d!300125 (not c!176535)) b!1055256))

(assert (= (and b!1055256 c!176534) b!1055259))

(assert (= (and b!1055256 (not c!176534)) b!1055265))

(assert (= (and b!1055265 c!176537) b!1055258))

(assert (= (and b!1055265 (not c!176537)) b!1055257))

(assert (= (and b!1055257 c!176536) b!1055262))

(assert (= (and b!1055257 (not c!176536)) b!1055255))

(assert (= (and b!1055255 c!176538) b!1055263))

(assert (= (and b!1055255 (not c!176538)) b!1055261))

(assert (= (or b!1055262 b!1055263) bm!75297))

(assert (= (or b!1055258 b!1055262) bm!75295))

(assert (= (or b!1055258 bm!75297) bm!75294))

(assert (= (or b!1055259 bm!75294) bm!75298))

(assert (= (or b!1055264 bm!75298) bm!75296))

(assert (= (and d!300125 res!471958) b!1055260))

(declare-fun m!1218693 () Bool)

(assert (=> d!300125 m!1218693))

(assert (=> d!300125 m!1218393))

(declare-fun m!1218695 () Bool)

(assert (=> b!1055260 m!1218695))

(assert (=> b!1055260 m!1218495))

(declare-fun m!1218697 () Bool)

(assert (=> bm!75295 m!1218697))

(declare-fun m!1218699 () Bool)

(assert (=> bm!75296 m!1218699))

(assert (=> b!1054746 d!300125))

(declare-fun e!670160 () Bool)

(assert (=> b!1054747 (= tp!317646 e!670160)))

(declare-fun b!1055277 () Bool)

(declare-fun tp!317683 () Bool)

(declare-fun tp!317680 () Bool)

(assert (=> b!1055277 (= e!670160 (and tp!317683 tp!317680))))

(declare-fun b!1055278 () Bool)

(declare-fun tp!317681 () Bool)

(assert (=> b!1055278 (= e!670160 tp!317681)))

(declare-fun b!1055276 () Bool)

(assert (=> b!1055276 (= e!670160 tp_is_empty!5439)))

(declare-fun b!1055279 () Bool)

(declare-fun tp!317679 () Bool)

(declare-fun tp!317682 () Bool)

(assert (=> b!1055279 (= e!670160 (and tp!317679 tp!317682))))

(assert (= (and b!1054747 (is-ElementMatch!2898 (regOne!6308 r!15766))) b!1055276))

(assert (= (and b!1054747 (is-Concat!4731 (regOne!6308 r!15766))) b!1055277))

(assert (= (and b!1054747 (is-Star!2898 (regOne!6308 r!15766))) b!1055278))

(assert (= (and b!1054747 (is-Union!2898 (regOne!6308 r!15766))) b!1055279))

(declare-fun e!670161 () Bool)

(assert (=> b!1054747 (= tp!317650 e!670161)))

(declare-fun b!1055281 () Bool)

(declare-fun tp!317688 () Bool)

(declare-fun tp!317685 () Bool)

(assert (=> b!1055281 (= e!670161 (and tp!317688 tp!317685))))

(declare-fun b!1055282 () Bool)

(declare-fun tp!317686 () Bool)

(assert (=> b!1055282 (= e!670161 tp!317686)))

(declare-fun b!1055280 () Bool)

(assert (=> b!1055280 (= e!670161 tp_is_empty!5439)))

(declare-fun b!1055283 () Bool)

(declare-fun tp!317684 () Bool)

(declare-fun tp!317687 () Bool)

(assert (=> b!1055283 (= e!670161 (and tp!317684 tp!317687))))

(assert (= (and b!1054747 (is-ElementMatch!2898 (regTwo!6308 r!15766))) b!1055280))

(assert (= (and b!1054747 (is-Concat!4731 (regTwo!6308 r!15766))) b!1055281))

(assert (= (and b!1054747 (is-Star!2898 (regTwo!6308 r!15766))) b!1055282))

(assert (= (and b!1054747 (is-Union!2898 (regTwo!6308 r!15766))) b!1055283))

(declare-fun b!1055288 () Bool)

(declare-fun e!670164 () Bool)

(declare-fun tp!317691 () Bool)

(assert (=> b!1055288 (= e!670164 (and tp_is_empty!5439 tp!317691))))

(assert (=> b!1054743 (= tp!317645 e!670164)))

(assert (= (and b!1054743 (is-Cons!10112 (t!101174 s!10566))) b!1055288))

(declare-fun e!670165 () Bool)

(assert (=> b!1054744 (= tp!317649 e!670165)))

(declare-fun b!1055290 () Bool)

(declare-fun tp!317696 () Bool)

(declare-fun tp!317693 () Bool)

(assert (=> b!1055290 (= e!670165 (and tp!317696 tp!317693))))

(declare-fun b!1055291 () Bool)

(declare-fun tp!317694 () Bool)

(assert (=> b!1055291 (= e!670165 tp!317694)))

(declare-fun b!1055289 () Bool)

(assert (=> b!1055289 (= e!670165 tp_is_empty!5439)))

(declare-fun b!1055292 () Bool)

(declare-fun tp!317692 () Bool)

(declare-fun tp!317695 () Bool)

(assert (=> b!1055292 (= e!670165 (and tp!317692 tp!317695))))

(assert (= (and b!1054744 (is-ElementMatch!2898 (regOne!6309 r!15766))) b!1055289))

(assert (= (and b!1054744 (is-Concat!4731 (regOne!6309 r!15766))) b!1055290))

(assert (= (and b!1054744 (is-Star!2898 (regOne!6309 r!15766))) b!1055291))

(assert (= (and b!1054744 (is-Union!2898 (regOne!6309 r!15766))) b!1055292))

(declare-fun e!670166 () Bool)

(assert (=> b!1054744 (= tp!317648 e!670166)))

(declare-fun b!1055294 () Bool)

(declare-fun tp!317701 () Bool)

(declare-fun tp!317698 () Bool)

(assert (=> b!1055294 (= e!670166 (and tp!317701 tp!317698))))

(declare-fun b!1055295 () Bool)

(declare-fun tp!317699 () Bool)

(assert (=> b!1055295 (= e!670166 tp!317699)))

(declare-fun b!1055293 () Bool)

(assert (=> b!1055293 (= e!670166 tp_is_empty!5439)))

(declare-fun b!1055296 () Bool)

(declare-fun tp!317697 () Bool)

(declare-fun tp!317700 () Bool)

(assert (=> b!1055296 (= e!670166 (and tp!317697 tp!317700))))

(assert (= (and b!1054744 (is-ElementMatch!2898 (regTwo!6309 r!15766))) b!1055293))

(assert (= (and b!1054744 (is-Concat!4731 (regTwo!6309 r!15766))) b!1055294))

(assert (= (and b!1054744 (is-Star!2898 (regTwo!6309 r!15766))) b!1055295))

(assert (= (and b!1054744 (is-Union!2898 (regTwo!6309 r!15766))) b!1055296))

(declare-fun e!670167 () Bool)

(assert (=> b!1054740 (= tp!317647 e!670167)))

(declare-fun b!1055298 () Bool)

(declare-fun tp!317706 () Bool)

(declare-fun tp!317703 () Bool)

(assert (=> b!1055298 (= e!670167 (and tp!317706 tp!317703))))

(declare-fun b!1055299 () Bool)

(declare-fun tp!317704 () Bool)

(assert (=> b!1055299 (= e!670167 tp!317704)))

(declare-fun b!1055297 () Bool)

(assert (=> b!1055297 (= e!670167 tp_is_empty!5439)))

(declare-fun b!1055300 () Bool)

(declare-fun tp!317702 () Bool)

(declare-fun tp!317705 () Bool)

(assert (=> b!1055300 (= e!670167 (and tp!317702 tp!317705))))

(assert (= (and b!1054740 (is-ElementMatch!2898 (reg!3227 r!15766))) b!1055297))

(assert (= (and b!1054740 (is-Concat!4731 (reg!3227 r!15766))) b!1055298))

(assert (= (and b!1054740 (is-Star!2898 (reg!3227 r!15766))) b!1055299))

(assert (= (and b!1054740 (is-Union!2898 (reg!3227 r!15766))) b!1055300))

(push 1)

(assert (not d!300041))

(assert (not b!1055096))

(assert (not b!1055170))

(assert (not b!1054922))

(assert (not b!1055290))

(assert (not bm!75296))

(assert (not b!1054995))

(assert (not d!300069))

(assert (not b!1054984))

(assert (not b!1054996))

(assert (not b!1055213))

(assert (not b!1054915))

(assert (not b!1054991))

(assert (not b!1055281))

(assert (not b!1054956))

(assert (not b!1054911))

(assert (not b!1054841))

(assert (not b!1055088))

(assert (not b!1055028))

(assert (not b!1055291))

(assert (not b!1055206))

(assert (not b!1055299))

(assert (not b!1055145))

(assert (not d!300081))

(assert (not b!1054977))

(assert (not b!1055279))

(assert (not b!1054990))

(assert (not b!1055282))

(assert (not b!1054982))

(assert (not b!1054916))

(assert (not b!1055249))

(assert (not d!300061))

(assert (not b!1054988))

(assert (not b!1055216))

(assert (not b!1054962))

(assert (not bm!75278))

(assert (not d!300117))

(assert (not b!1054837))

(assert (not b!1055288))

(assert (not d!300039))

(assert (not bm!75253))

(assert (not b!1054840))

(assert (not d!300053))

(assert (not d!300037))

(assert (not b!1054998))

(assert (not b!1055092))

(assert (not d!300087))

(assert (not b!1055296))

(assert (not b!1055169))

(assert (not bm!75264))

(assert (not d!300065))

(assert (not b!1055194))

(assert (not b!1055220))

(assert (not d!300051))

(assert (not d!300079))

(assert (not b!1054838))

(assert (not d!300085))

(assert (not bm!75248))

(assert (not b!1055095))

(assert (not b!1054842))

(assert (not b!1055202))

(assert (not d!300125))

(assert (not b!1055209))

(assert (not b!1055283))

(assert (not b!1054968))

(assert (not d!300033))

(assert (not b!1054963))

(assert (not b!1055294))

(assert (not b!1054944))

(assert (not b!1054976))

(assert (not b!1055144))

(assert (not d!300121))

(assert (not bm!75295))

(assert (not d!300093))

(assert (not d!300067))

(assert (not b!1054981))

(assert (not bm!75290))

(assert (not b!1055002))

(assert (not bm!75274))

(assert (not d!300115))

(assert (not bm!75249))

(assert (not d!300057))

(assert (not b!1055027))

(assert (not d!300049))

(assert (not b!1054967))

(assert (not d!300063))

(assert (not b!1054918))

(assert (not bm!75265))

(assert (not b!1055298))

(assert (not b!1055278))

(assert (not d!300083))

(assert (not b!1055085))

(assert (not bm!75250))

(assert (not bm!75271))

(assert (not d!300045))

(assert (not b!1055091))

(assert (not b!1054945))

(assert (not d!300111))

(assert (not b!1055094))

(assert (not b!1055214))

(assert (not b!1054949))

(assert (not b!1055208))

(assert (not b!1055260))

(assert (not d!300091))

(assert (not b!1054910))

(assert (not b!1054970))

(assert (not d!300059))

(assert (not b!1055200))

(assert (not bm!75277))

(assert (not b!1054952))

(assert (not bm!75275))

(assert (not b!1055060))

(assert (not bm!75272))

(assert (not bm!75254))

(assert (not bm!75291))

(assert (not b!1055300))

(assert (not b!1055199))

(assert (not b!1055295))

(assert (not b!1055292))

(assert tp_is_empty!5439)

(assert (not b!1054974))

(assert (not b!1055277))

(assert (not b!1054950))

(assert (not b!1055195))

(assert (not b!1054834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

