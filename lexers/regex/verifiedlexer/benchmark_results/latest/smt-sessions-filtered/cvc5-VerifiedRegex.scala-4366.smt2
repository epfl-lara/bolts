; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232136 () Bool)

(assert start!232136)

(declare-fun b!2365284 () Bool)

(assert (=> b!2365284 true))

(assert (=> b!2365284 true))

(declare-fun lambda!87180 () Int)

(declare-fun lambda!87179 () Int)

(assert (=> b!2365284 (not (= lambda!87180 lambda!87179))))

(assert (=> b!2365284 true))

(assert (=> b!2365284 true))

(declare-fun b!2365275 () Bool)

(declare-fun e!1510306 () Bool)

(declare-fun tp_is_empty!11261 () Bool)

(assert (=> b!2365275 (= e!1510306 tp_is_empty!11261)))

(declare-fun b!2365276 () Bool)

(declare-fun tp!756425 () Bool)

(assert (=> b!2365276 (= e!1510306 tp!756425)))

(declare-fun b!2365277 () Bool)

(declare-fun tp!756428 () Bool)

(declare-fun tp!756423 () Bool)

(assert (=> b!2365277 (= e!1510306 (and tp!756428 tp!756423))))

(declare-fun b!2365278 () Bool)

(declare-fun e!1510303 () Bool)

(declare-fun tp!756424 () Bool)

(assert (=> b!2365278 (= e!1510303 (and tp_is_empty!11261 tp!756424))))

(declare-fun res!1003785 () Bool)

(declare-fun e!1510305 () Bool)

(assert (=> start!232136 (=> (not res!1003785) (not e!1510305))))

(declare-datatypes ((C!14006 0))(
  ( (C!14007 (val!8245 Int)) )
))
(declare-datatypes ((Regex!6924 0))(
  ( (ElementMatch!6924 (c!375946 C!14006)) (Concat!11560 (regOne!14360 Regex!6924) (regTwo!14360 Regex!6924)) (EmptyExpr!6924) (Star!6924 (reg!7253 Regex!6924)) (EmptyLang!6924) (Union!6924 (regOne!14361 Regex!6924) (regTwo!14361 Regex!6924)) )
))
(declare-datatypes ((List!28086 0))(
  ( (Nil!27988) (Cons!27988 (h!33389 Regex!6924) (t!208063 List!28086)) )
))
(declare-fun l!9164 () List!28086)

(declare-fun lambda!87178 () Int)

(declare-fun forall!5558 (List!28086 Int) Bool)

(assert (=> start!232136 (= res!1003785 (forall!5558 l!9164 lambda!87178))))

(assert (=> start!232136 e!1510305))

(declare-fun e!1510304 () Bool)

(assert (=> start!232136 e!1510304))

(assert (=> start!232136 e!1510306))

(assert (=> start!232136 e!1510303))

(declare-fun b!2365279 () Bool)

(declare-fun e!1510302 () Bool)

(assert (=> b!2365279 (= e!1510302 (not (= l!9164 Nil!27988)))))

(declare-fun b!2365280 () Bool)

(declare-fun tp!756426 () Bool)

(declare-fun tp!756422 () Bool)

(assert (=> b!2365280 (= e!1510306 (and tp!756426 tp!756422))))

(declare-fun b!2365281 () Bool)

(declare-fun res!1003783 () Bool)

(assert (=> b!2365281 (=> (not res!1003783) (not e!1510305))))

(declare-fun r!13927 () Regex!6924)

(declare-fun generalisedConcat!25 (List!28086) Regex!6924)

(assert (=> b!2365281 (= res!1003783 (= r!13927 (generalisedConcat!25 l!9164)))))

(declare-fun b!2365282 () Bool)

(declare-fun tp!756429 () Bool)

(declare-fun tp!756427 () Bool)

(assert (=> b!2365282 (= e!1510304 (and tp!756429 tp!756427))))

(declare-fun b!2365283 () Bool)

(declare-fun res!1003784 () Bool)

(assert (=> b!2365283 (=> res!1003784 e!1510302)))

(declare-fun isEmpty!15909 (List!28086) Bool)

(assert (=> b!2365283 (= res!1003784 (isEmpty!15909 l!9164))))

(declare-fun e!1510301 () Bool)

(assert (=> b!2365284 (= e!1510301 e!1510302)))

(declare-fun res!1003782 () Bool)

(assert (=> b!2365284 (=> res!1003782 e!1510302)))

(declare-fun lt!865010 () Bool)

(declare-fun lt!865012 () Bool)

(assert (=> b!2365284 (= res!1003782 (not (= lt!865010 lt!865012)))))

(declare-fun Exists!986 (Int) Bool)

(assert (=> b!2365284 (= (Exists!986 lambda!87179) (Exists!986 lambda!87180))))

(declare-datatypes ((Unit!40883 0))(
  ( (Unit!40884) )
))
(declare-fun lt!865011 () Unit!40883)

(declare-datatypes ((List!28087 0))(
  ( (Nil!27989) (Cons!27989 (h!33390 C!14006) (t!208064 List!28087)) )
))
(declare-fun s!9460 () List!28087)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!325 (Regex!6924 Regex!6924 List!28087) Unit!40883)

(assert (=> b!2365284 (= lt!865011 (lemmaExistCutMatchRandMatchRSpecEquivalent!325 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460))))

(assert (=> b!2365284 (= lt!865012 (Exists!986 lambda!87179))))

(declare-datatypes ((tuple2!27712 0))(
  ( (tuple2!27713 (_1!16397 List!28087) (_2!16397 List!28087)) )
))
(declare-datatypes ((Option!5467 0))(
  ( (None!5466) (Some!5466 (v!30874 tuple2!27712)) )
))
(declare-fun isDefined!4295 (Option!5467) Bool)

(declare-fun findConcatSeparation!575 (Regex!6924 Regex!6924 List!28087 List!28087 List!28087) Option!5467)

(assert (=> b!2365284 (= lt!865012 (isDefined!4295 (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) Nil!27989 s!9460 s!9460)))))

(declare-fun lt!865014 () Unit!40883)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!575 (Regex!6924 Regex!6924 List!28087) Unit!40883)

(assert (=> b!2365284 (= lt!865014 (lemmaFindConcatSeparationEquivalentToExists!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460))))

(declare-fun b!2365285 () Bool)

(assert (=> b!2365285 (= e!1510305 (not e!1510301))))

(declare-fun res!1003781 () Bool)

(assert (=> b!2365285 (=> res!1003781 e!1510301)))

(assert (=> b!2365285 (= res!1003781 (not (is-Concat!11560 r!13927)))))

(declare-fun lt!865009 () Bool)

(assert (=> b!2365285 (= lt!865009 lt!865010)))

(declare-fun matchRSpec!773 (Regex!6924 List!28087) Bool)

(assert (=> b!2365285 (= lt!865010 (matchRSpec!773 r!13927 s!9460))))

(declare-fun matchR!3041 (Regex!6924 List!28087) Bool)

(assert (=> b!2365285 (= lt!865009 (matchR!3041 r!13927 s!9460))))

(declare-fun lt!865013 () Unit!40883)

(declare-fun mainMatchTheorem!773 (Regex!6924 List!28087) Unit!40883)

(assert (=> b!2365285 (= lt!865013 (mainMatchTheorem!773 r!13927 s!9460))))

(assert (= (and start!232136 res!1003785) b!2365281))

(assert (= (and b!2365281 res!1003783) b!2365285))

(assert (= (and b!2365285 (not res!1003781)) b!2365284))

(assert (= (and b!2365284 (not res!1003782)) b!2365283))

(assert (= (and b!2365283 (not res!1003784)) b!2365279))

(assert (= (and start!232136 (is-Cons!27988 l!9164)) b!2365282))

(assert (= (and start!232136 (is-ElementMatch!6924 r!13927)) b!2365275))

(assert (= (and start!232136 (is-Concat!11560 r!13927)) b!2365277))

(assert (= (and start!232136 (is-Star!6924 r!13927)) b!2365276))

(assert (= (and start!232136 (is-Union!6924 r!13927)) b!2365280))

(assert (= (and start!232136 (is-Cons!27989 s!9460)) b!2365278))

(declare-fun m!2775791 () Bool)

(assert (=> b!2365283 m!2775791))

(declare-fun m!2775793 () Bool)

(assert (=> b!2365285 m!2775793))

(declare-fun m!2775795 () Bool)

(assert (=> b!2365285 m!2775795))

(declare-fun m!2775797 () Bool)

(assert (=> b!2365285 m!2775797))

(declare-fun m!2775799 () Bool)

(assert (=> b!2365284 m!2775799))

(declare-fun m!2775801 () Bool)

(assert (=> b!2365284 m!2775801))

(declare-fun m!2775803 () Bool)

(assert (=> b!2365284 m!2775803))

(assert (=> b!2365284 m!2775799))

(declare-fun m!2775805 () Bool)

(assert (=> b!2365284 m!2775805))

(declare-fun m!2775807 () Bool)

(assert (=> b!2365284 m!2775807))

(declare-fun m!2775809 () Bool)

(assert (=> b!2365284 m!2775809))

(assert (=> b!2365284 m!2775807))

(declare-fun m!2775811 () Bool)

(assert (=> start!232136 m!2775811))

(declare-fun m!2775813 () Bool)

(assert (=> b!2365281 m!2775813))

(push 1)

(assert (not b!2365284))

(assert tp_is_empty!11261)

(assert (not b!2365283))

(assert (not b!2365280))

(assert (not b!2365282))

(assert (not b!2365276))

(assert (not b!2365285))

(assert (not b!2365281))

(assert (not start!232136))

(assert (not b!2365278))

(assert (not b!2365277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!694649 () Bool)

(declare-fun isEmpty!15911 (Option!5467) Bool)

(assert (=> d!694649 (= (isDefined!4295 (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) Nil!27989 s!9460 s!9460)) (not (isEmpty!15911 (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) Nil!27989 s!9460 s!9460))))))

(declare-fun bs!460852 () Bool)

(assert (= bs!460852 d!694649))

(assert (=> bs!460852 m!2775799))

(declare-fun m!2775839 () Bool)

(assert (=> bs!460852 m!2775839))

(assert (=> b!2365284 d!694649))

(declare-fun bs!460853 () Bool)

(declare-fun d!694651 () Bool)

(assert (= bs!460853 (and d!694651 b!2365284)))

(declare-fun lambda!87194 () Int)

(assert (=> bs!460853 (= lambda!87194 lambda!87179)))

(assert (=> bs!460853 (not (= lambda!87194 lambda!87180))))

(assert (=> d!694651 true))

(assert (=> d!694651 true))

(assert (=> d!694651 true))

(assert (=> d!694651 (= (isDefined!4295 (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) Nil!27989 s!9460 s!9460)) (Exists!986 lambda!87194))))

(declare-fun lt!865035 () Unit!40883)

(declare-fun choose!13729 (Regex!6924 Regex!6924 List!28087) Unit!40883)

(assert (=> d!694651 (= lt!865035 (choose!13729 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460))))

(declare-fun validRegex!2654 (Regex!6924) Bool)

(assert (=> d!694651 (validRegex!2654 (regOne!14360 r!13927))))

(assert (=> d!694651 (= (lemmaFindConcatSeparationEquivalentToExists!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460) lt!865035)))

(declare-fun bs!460854 () Bool)

(assert (= bs!460854 d!694651))

(declare-fun m!2775841 () Bool)

(assert (=> bs!460854 m!2775841))

(assert (=> bs!460854 m!2775799))

(declare-fun m!2775843 () Bool)

(assert (=> bs!460854 m!2775843))

(declare-fun m!2775845 () Bool)

(assert (=> bs!460854 m!2775845))

(assert (=> bs!460854 m!2775799))

(assert (=> bs!460854 m!2775801))

(assert (=> b!2365284 d!694651))

(declare-fun bs!460856 () Bool)

(declare-fun d!694653 () Bool)

(assert (= bs!460856 (and d!694653 b!2365284)))

(declare-fun lambda!87199 () Int)

(assert (=> bs!460856 (= lambda!87199 lambda!87179)))

(assert (=> bs!460856 (not (= lambda!87199 lambda!87180))))

(declare-fun bs!460857 () Bool)

(assert (= bs!460857 (and d!694653 d!694651)))

(assert (=> bs!460857 (= lambda!87199 lambda!87194)))

(assert (=> d!694653 true))

(assert (=> d!694653 true))

(assert (=> d!694653 true))

(declare-fun lambda!87200 () Int)

(assert (=> bs!460856 (not (= lambda!87200 lambda!87179))))

(assert (=> bs!460856 (= lambda!87200 lambda!87180)))

(assert (=> bs!460857 (not (= lambda!87200 lambda!87194))))

(declare-fun bs!460858 () Bool)

(assert (= bs!460858 d!694653))

(assert (=> bs!460858 (not (= lambda!87200 lambda!87199))))

(assert (=> d!694653 true))

(assert (=> d!694653 true))

(assert (=> d!694653 true))

(assert (=> d!694653 (= (Exists!986 lambda!87199) (Exists!986 lambda!87200))))

(declare-fun lt!865038 () Unit!40883)

(declare-fun choose!13730 (Regex!6924 Regex!6924 List!28087) Unit!40883)

(assert (=> d!694653 (= lt!865038 (choose!13730 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460))))

(assert (=> d!694653 (validRegex!2654 (regOne!14360 r!13927))))

(assert (=> d!694653 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!325 (regOne!14360 r!13927) (regTwo!14360 r!13927) s!9460) lt!865038)))

(declare-fun m!2775849 () Bool)

(assert (=> bs!460858 m!2775849))

(declare-fun m!2775851 () Bool)

(assert (=> bs!460858 m!2775851))

(declare-fun m!2775853 () Bool)

(assert (=> bs!460858 m!2775853))

(assert (=> bs!460858 m!2775843))

(assert (=> b!2365284 d!694653))

(declare-fun d!694661 () Bool)

(declare-fun choose!13731 (Int) Bool)

(assert (=> d!694661 (= (Exists!986 lambda!87180) (choose!13731 lambda!87180))))

(declare-fun bs!460859 () Bool)

(assert (= bs!460859 d!694661))

(declare-fun m!2775855 () Bool)

(assert (=> bs!460859 m!2775855))

(assert (=> b!2365284 d!694661))

(declare-fun b!2365373 () Bool)

(declare-fun res!1003839 () Bool)

(declare-fun e!1510351 () Bool)

(assert (=> b!2365373 (=> (not res!1003839) (not e!1510351))))

(declare-fun lt!865049 () Option!5467)

(declare-fun get!8498 (Option!5467) tuple2!27712)

(assert (=> b!2365373 (= res!1003839 (matchR!3041 (regOne!14360 r!13927) (_1!16397 (get!8498 lt!865049))))))

(declare-fun b!2365374 () Bool)

(declare-fun ++!6890 (List!28087 List!28087) List!28087)

(assert (=> b!2365374 (= e!1510351 (= (++!6890 (_1!16397 (get!8498 lt!865049)) (_2!16397 (get!8498 lt!865049))) s!9460))))

(declare-fun b!2365375 () Bool)

(declare-fun lt!865048 () Unit!40883)

(declare-fun lt!865050 () Unit!40883)

(assert (=> b!2365375 (= lt!865048 lt!865050)))

(assert (=> b!2365375 (= (++!6890 (++!6890 Nil!27989 (Cons!27989 (h!33390 s!9460) Nil!27989)) (t!208064 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!536 (List!28087 C!14006 List!28087 List!28087) Unit!40883)

(assert (=> b!2365375 (= lt!865050 (lemmaMoveElementToOtherListKeepsConcatEq!536 Nil!27989 (h!33390 s!9460) (t!208064 s!9460) s!9460))))

(declare-fun e!1510352 () Option!5467)

(assert (=> b!2365375 (= e!1510352 (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) (++!6890 Nil!27989 (Cons!27989 (h!33390 s!9460) Nil!27989)) (t!208064 s!9460) s!9460))))

(declare-fun b!2365376 () Bool)

(assert (=> b!2365376 (= e!1510352 None!5466)))

(declare-fun b!2365377 () Bool)

(declare-fun res!1003843 () Bool)

(assert (=> b!2365377 (=> (not res!1003843) (not e!1510351))))

(assert (=> b!2365377 (= res!1003843 (matchR!3041 (regTwo!14360 r!13927) (_2!16397 (get!8498 lt!865049))))))

(declare-fun b!2365379 () Bool)

(declare-fun e!1510353 () Bool)

(assert (=> b!2365379 (= e!1510353 (not (isDefined!4295 lt!865049)))))

(declare-fun b!2365380 () Bool)

(declare-fun e!1510349 () Bool)

(assert (=> b!2365380 (= e!1510349 (matchR!3041 (regTwo!14360 r!13927) s!9460))))

(declare-fun b!2365381 () Bool)

(declare-fun e!1510350 () Option!5467)

(assert (=> b!2365381 (= e!1510350 (Some!5466 (tuple2!27713 Nil!27989 s!9460)))))

(declare-fun d!694663 () Bool)

(assert (=> d!694663 e!1510353))

(declare-fun res!1003842 () Bool)

(assert (=> d!694663 (=> res!1003842 e!1510353)))

(assert (=> d!694663 (= res!1003842 e!1510351)))

(declare-fun res!1003840 () Bool)

(assert (=> d!694663 (=> (not res!1003840) (not e!1510351))))

(assert (=> d!694663 (= res!1003840 (isDefined!4295 lt!865049))))

(assert (=> d!694663 (= lt!865049 e!1510350)))

(declare-fun c!375953 () Bool)

(assert (=> d!694663 (= c!375953 e!1510349)))

(declare-fun res!1003841 () Bool)

(assert (=> d!694663 (=> (not res!1003841) (not e!1510349))))

(assert (=> d!694663 (= res!1003841 (matchR!3041 (regOne!14360 r!13927) Nil!27989))))

(assert (=> d!694663 (validRegex!2654 (regOne!14360 r!13927))))

(assert (=> d!694663 (= (findConcatSeparation!575 (regOne!14360 r!13927) (regTwo!14360 r!13927) Nil!27989 s!9460 s!9460) lt!865049)))

(declare-fun b!2365378 () Bool)

(assert (=> b!2365378 (= e!1510350 e!1510352)))

(declare-fun c!375952 () Bool)

(assert (=> b!2365378 (= c!375952 (is-Nil!27989 s!9460))))

(assert (= (and d!694663 res!1003841) b!2365380))

(assert (= (and d!694663 c!375953) b!2365381))

(assert (= (and d!694663 (not c!375953)) b!2365378))

(assert (= (and b!2365378 c!375952) b!2365376))

(assert (= (and b!2365378 (not c!375952)) b!2365375))

(assert (= (and d!694663 res!1003840) b!2365373))

(assert (= (and b!2365373 res!1003839) b!2365377))

(assert (= (and b!2365377 res!1003843) b!2365374))

(assert (= (and d!694663 (not res!1003842)) b!2365379))

(declare-fun m!2775857 () Bool)

(assert (=> b!2365373 m!2775857))

(declare-fun m!2775861 () Bool)

(assert (=> b!2365373 m!2775861))

(declare-fun m!2775863 () Bool)

(assert (=> d!694663 m!2775863))

(declare-fun m!2775865 () Bool)

(assert (=> d!694663 m!2775865))

(assert (=> d!694663 m!2775843))

(assert (=> b!2365377 m!2775857))

(declare-fun m!2775867 () Bool)

(assert (=> b!2365377 m!2775867))

(declare-fun m!2775869 () Bool)

(assert (=> b!2365375 m!2775869))

(assert (=> b!2365375 m!2775869))

(declare-fun m!2775871 () Bool)

(assert (=> b!2365375 m!2775871))

(declare-fun m!2775873 () Bool)

(assert (=> b!2365375 m!2775873))

(assert (=> b!2365375 m!2775869))

(declare-fun m!2775879 () Bool)

(assert (=> b!2365375 m!2775879))

(assert (=> b!2365374 m!2775857))

(declare-fun m!2775881 () Bool)

(assert (=> b!2365374 m!2775881))

(declare-fun m!2775883 () Bool)

(assert (=> b!2365380 m!2775883))

(assert (=> b!2365379 m!2775863))

(assert (=> b!2365284 d!694663))

(declare-fun d!694667 () Bool)

(assert (=> d!694667 (= (Exists!986 lambda!87179) (choose!13731 lambda!87179))))

(declare-fun bs!460862 () Bool)

(assert (= bs!460862 d!694667))

(declare-fun m!2775885 () Bool)

(assert (=> bs!460862 m!2775885))

(assert (=> b!2365284 d!694667))

(declare-fun d!694669 () Bool)

(declare-fun res!1003848 () Bool)

(declare-fun e!1510358 () Bool)

(assert (=> d!694669 (=> res!1003848 e!1510358)))

(assert (=> d!694669 (= res!1003848 (is-Nil!27988 l!9164))))

(assert (=> d!694669 (= (forall!5558 l!9164 lambda!87178) e!1510358)))

(declare-fun b!2365386 () Bool)

(declare-fun e!1510359 () Bool)

(assert (=> b!2365386 (= e!1510358 e!1510359)))

(declare-fun res!1003849 () Bool)

(assert (=> b!2365386 (=> (not res!1003849) (not e!1510359))))

(declare-fun dynLambda!12059 (Int Regex!6924) Bool)

(assert (=> b!2365386 (= res!1003849 (dynLambda!12059 lambda!87178 (h!33389 l!9164)))))

(declare-fun b!2365387 () Bool)

(assert (=> b!2365387 (= e!1510359 (forall!5558 (t!208063 l!9164) lambda!87178))))

(assert (= (and d!694669 (not res!1003848)) b!2365386))

(assert (= (and b!2365386 res!1003849) b!2365387))

(declare-fun b_lambda!73851 () Bool)

(assert (=> (not b_lambda!73851) (not b!2365386)))

(declare-fun m!2775887 () Bool)

(assert (=> b!2365386 m!2775887))

(declare-fun m!2775889 () Bool)

(assert (=> b!2365387 m!2775889))

(assert (=> start!232136 d!694669))

(declare-fun d!694671 () Bool)

(assert (=> d!694671 (= (isEmpty!15909 l!9164) (is-Nil!27988 l!9164))))

(assert (=> b!2365283 d!694671))

(declare-fun bs!460863 () Bool)

(declare-fun d!694673 () Bool)

(assert (= bs!460863 (and d!694673 start!232136)))

(declare-fun lambda!87206 () Int)

(assert (=> bs!460863 (= lambda!87206 lambda!87178)))

(declare-fun b!2365408 () Bool)

(declare-fun e!1510374 () Bool)

(declare-fun lt!865053 () Regex!6924)

(declare-fun isEmptyExpr!11 (Regex!6924) Bool)

(assert (=> b!2365408 (= e!1510374 (isEmptyExpr!11 lt!865053))))

(declare-fun b!2365409 () Bool)

(declare-fun e!1510376 () Bool)

(assert (=> b!2365409 (= e!1510376 e!1510374)))

(declare-fun c!375963 () Bool)

(assert (=> b!2365409 (= c!375963 (isEmpty!15909 l!9164))))

(declare-fun b!2365410 () Bool)

(declare-fun e!1510375 () Bool)

(assert (=> b!2365410 (= e!1510375 (isEmpty!15909 (t!208063 l!9164)))))

(declare-fun b!2365411 () Bool)

(declare-fun e!1510372 () Regex!6924)

(assert (=> b!2365411 (= e!1510372 (h!33389 l!9164))))

(assert (=> d!694673 e!1510376))

(declare-fun res!1003855 () Bool)

(assert (=> d!694673 (=> (not res!1003855) (not e!1510376))))

(assert (=> d!694673 (= res!1003855 (validRegex!2654 lt!865053))))

(assert (=> d!694673 (= lt!865053 e!1510372)))

(declare-fun c!375965 () Bool)

(assert (=> d!694673 (= c!375965 e!1510375)))

(declare-fun res!1003854 () Bool)

(assert (=> d!694673 (=> (not res!1003854) (not e!1510375))))

(assert (=> d!694673 (= res!1003854 (is-Cons!27988 l!9164))))

(assert (=> d!694673 (forall!5558 l!9164 lambda!87206)))

(assert (=> d!694673 (= (generalisedConcat!25 l!9164) lt!865053)))

(declare-fun b!2365412 () Bool)

(declare-fun e!1510377 () Bool)

(declare-fun isConcat!11 (Regex!6924) Bool)

(assert (=> b!2365412 (= e!1510377 (isConcat!11 lt!865053))))

(declare-fun b!2365413 () Bool)

(assert (=> b!2365413 (= e!1510374 e!1510377)))

(declare-fun c!375964 () Bool)

(declare-fun tail!3365 (List!28086) List!28086)

(assert (=> b!2365413 (= c!375964 (isEmpty!15909 (tail!3365 l!9164)))))

(declare-fun b!2365414 () Bool)

(declare-fun e!1510373 () Regex!6924)

(assert (=> b!2365414 (= e!1510373 EmptyExpr!6924)))

(declare-fun b!2365415 () Bool)

(declare-fun head!5096 (List!28086) Regex!6924)

(assert (=> b!2365415 (= e!1510377 (= lt!865053 (head!5096 l!9164)))))

(declare-fun b!2365416 () Bool)

(assert (=> b!2365416 (= e!1510372 e!1510373)))

(declare-fun c!375962 () Bool)

(assert (=> b!2365416 (= c!375962 (is-Cons!27988 l!9164))))

(declare-fun b!2365417 () Bool)

(assert (=> b!2365417 (= e!1510373 (Concat!11560 (h!33389 l!9164) (generalisedConcat!25 (t!208063 l!9164))))))

(assert (= (and d!694673 res!1003854) b!2365410))

(assert (= (and d!694673 c!375965) b!2365411))

(assert (= (and d!694673 (not c!375965)) b!2365416))

(assert (= (and b!2365416 c!375962) b!2365417))

(assert (= (and b!2365416 (not c!375962)) b!2365414))

(assert (= (and d!694673 res!1003855) b!2365409))

(assert (= (and b!2365409 c!375963) b!2365408))

(assert (= (and b!2365409 (not c!375963)) b!2365413))

(assert (= (and b!2365413 c!375964) b!2365415))

(assert (= (and b!2365413 (not c!375964)) b!2365412))

(declare-fun m!2775891 () Bool)

(assert (=> b!2365413 m!2775891))

(assert (=> b!2365413 m!2775891))

(declare-fun m!2775893 () Bool)

(assert (=> b!2365413 m!2775893))

(declare-fun m!2775895 () Bool)

(assert (=> d!694673 m!2775895))

(declare-fun m!2775897 () Bool)

(assert (=> d!694673 m!2775897))

(assert (=> b!2365409 m!2775791))

(declare-fun m!2775899 () Bool)

(assert (=> b!2365408 m!2775899))

(declare-fun m!2775901 () Bool)

(assert (=> b!2365415 m!2775901))

(declare-fun m!2775903 () Bool)

(assert (=> b!2365417 m!2775903))

(declare-fun m!2775905 () Bool)

(assert (=> b!2365412 m!2775905))

(declare-fun m!2775907 () Bool)

(assert (=> b!2365410 m!2775907))

(assert (=> b!2365281 d!694673))

(declare-fun bs!460866 () Bool)

(declare-fun b!2365465 () Bool)

(assert (= bs!460866 (and b!2365465 d!694651)))

(declare-fun lambda!87216 () Int)

(assert (=> bs!460866 (not (= lambda!87216 lambda!87194))))

(declare-fun bs!460867 () Bool)

(assert (= bs!460867 (and b!2365465 b!2365284)))

(assert (=> bs!460867 (not (= lambda!87216 lambda!87179))))

(assert (=> bs!460867 (not (= lambda!87216 lambda!87180))))

(declare-fun bs!460868 () Bool)

(assert (= bs!460868 (and b!2365465 d!694653)))

(assert (=> bs!460868 (not (= lambda!87216 lambda!87199))))

(assert (=> bs!460868 (not (= lambda!87216 lambda!87200))))

(assert (=> b!2365465 true))

(assert (=> b!2365465 true))

(declare-fun bs!460869 () Bool)

(declare-fun b!2365464 () Bool)

(assert (= bs!460869 (and b!2365464 b!2365465)))

(declare-fun lambda!87218 () Int)

(assert (=> bs!460869 (not (= lambda!87218 lambda!87216))))

(declare-fun bs!460870 () Bool)

(assert (= bs!460870 (and b!2365464 d!694651)))

(assert (=> bs!460870 (not (= lambda!87218 lambda!87194))))

(declare-fun bs!460871 () Bool)

(assert (= bs!460871 (and b!2365464 b!2365284)))

(assert (=> bs!460871 (not (= lambda!87218 lambda!87179))))

(assert (=> bs!460871 (= lambda!87218 lambda!87180)))

(declare-fun bs!460872 () Bool)

(assert (= bs!460872 (and b!2365464 d!694653)))

(assert (=> bs!460872 (not (= lambda!87218 lambda!87199))))

(assert (=> bs!460872 (= lambda!87218 lambda!87200)))

(assert (=> b!2365464 true))

(assert (=> b!2365464 true))

(declare-fun b!2365458 () Bool)

(declare-fun e!1510405 () Bool)

(declare-fun e!1510403 () Bool)

(assert (=> b!2365458 (= e!1510405 e!1510403)))

(declare-fun c!375975 () Bool)

(assert (=> b!2365458 (= c!375975 (is-Star!6924 r!13927))))

(declare-fun b!2365459 () Bool)

(declare-fun e!1510401 () Bool)

(assert (=> b!2365459 (= e!1510401 (matchRSpec!773 (regTwo!14361 r!13927) s!9460))))

(declare-fun call!143927 () Bool)

(declare-fun bm!143922 () Bool)

(assert (=> bm!143922 (= call!143927 (Exists!986 (ite c!375975 lambda!87216 lambda!87218)))))

(declare-fun b!2365460 () Bool)

(declare-fun c!375976 () Bool)

(assert (=> b!2365460 (= c!375976 (is-ElementMatch!6924 r!13927))))

(declare-fun e!1510404 () Bool)

(declare-fun e!1510402 () Bool)

(assert (=> b!2365460 (= e!1510404 e!1510402)))

(declare-fun bm!143923 () Bool)

(declare-fun call!143928 () Bool)

(declare-fun isEmpty!15912 (List!28087) Bool)

(assert (=> bm!143923 (= call!143928 (isEmpty!15912 s!9460))))

(declare-fun b!2365462 () Bool)

(declare-fun e!1510400 () Bool)

(assert (=> b!2365462 (= e!1510400 call!143928)))

(declare-fun b!2365463 () Bool)

(declare-fun res!1003881 () Bool)

(declare-fun e!1510406 () Bool)

(assert (=> b!2365463 (=> res!1003881 e!1510406)))

(assert (=> b!2365463 (= res!1003881 call!143928)))

(assert (=> b!2365463 (= e!1510403 e!1510406)))

(assert (=> b!2365464 (= e!1510403 call!143927)))

(assert (=> b!2365465 (= e!1510406 call!143927)))

(declare-fun b!2365466 () Bool)

(assert (=> b!2365466 (= e!1510402 (= s!9460 (Cons!27989 (c!375946 r!13927) Nil!27989)))))

(declare-fun b!2365467 () Bool)

(declare-fun c!375974 () Bool)

(assert (=> b!2365467 (= c!375974 (is-Union!6924 r!13927))))

(assert (=> b!2365467 (= e!1510402 e!1510405)))

(declare-fun b!2365468 () Bool)

(assert (=> b!2365468 (= e!1510400 e!1510404)))

(declare-fun res!1003880 () Bool)

(assert (=> b!2365468 (= res!1003880 (not (is-EmptyLang!6924 r!13927)))))

(assert (=> b!2365468 (=> (not res!1003880) (not e!1510404))))

(declare-fun d!694675 () Bool)

(declare-fun c!375977 () Bool)

(assert (=> d!694675 (= c!375977 (is-EmptyExpr!6924 r!13927))))

(assert (=> d!694675 (= (matchRSpec!773 r!13927 s!9460) e!1510400)))

(declare-fun b!2365461 () Bool)

(assert (=> b!2365461 (= e!1510405 e!1510401)))

(declare-fun res!1003882 () Bool)

(assert (=> b!2365461 (= res!1003882 (matchRSpec!773 (regOne!14361 r!13927) s!9460))))

(assert (=> b!2365461 (=> res!1003882 e!1510401)))

(assert (= (and d!694675 c!375977) b!2365462))

(assert (= (and d!694675 (not c!375977)) b!2365468))

(assert (= (and b!2365468 res!1003880) b!2365460))

(assert (= (and b!2365460 c!375976) b!2365466))

(assert (= (and b!2365460 (not c!375976)) b!2365467))

(assert (= (and b!2365467 c!375974) b!2365461))

(assert (= (and b!2365467 (not c!375974)) b!2365458))

(assert (= (and b!2365461 (not res!1003882)) b!2365459))

(assert (= (and b!2365458 c!375975) b!2365463))

(assert (= (and b!2365458 (not c!375975)) b!2365464))

(assert (= (and b!2365463 (not res!1003881)) b!2365465))

(assert (= (or b!2365465 b!2365464) bm!143922))

(assert (= (or b!2365462 b!2365463) bm!143923))

(declare-fun m!2775909 () Bool)

(assert (=> b!2365459 m!2775909))

(declare-fun m!2775911 () Bool)

(assert (=> bm!143922 m!2775911))

(declare-fun m!2775913 () Bool)

(assert (=> bm!143923 m!2775913))

(declare-fun m!2775915 () Bool)

(assert (=> b!2365461 m!2775915))

(assert (=> b!2365285 d!694675))

(declare-fun b!2365497 () Bool)

(declare-fun e!1510426 () Bool)

(declare-fun lt!865059 () Bool)

(assert (=> b!2365497 (= e!1510426 (not lt!865059))))

(declare-fun bm!143926 () Bool)

(declare-fun call!143931 () Bool)

(assert (=> bm!143926 (= call!143931 (isEmpty!15912 s!9460))))

(declare-fun b!2365498 () Bool)

(declare-fun e!1510421 () Bool)

(assert (=> b!2365498 (= e!1510421 e!1510426)))

(declare-fun c!375985 () Bool)

(assert (=> b!2365498 (= c!375985 (is-EmptyLang!6924 r!13927))))

(declare-fun b!2365499 () Bool)

(declare-fun res!1003906 () Bool)

(declare-fun e!1510424 () Bool)

(assert (=> b!2365499 (=> res!1003906 e!1510424)))

(assert (=> b!2365499 (= res!1003906 (not (is-ElementMatch!6924 r!13927)))))

(assert (=> b!2365499 (= e!1510426 e!1510424)))

(declare-fun b!2365500 () Bool)

(declare-fun e!1510423 () Bool)

(declare-fun head!5097 (List!28087) C!14006)

(assert (=> b!2365500 (= e!1510423 (not (= (head!5097 s!9460) (c!375946 r!13927))))))

(declare-fun b!2365501 () Bool)

(declare-fun res!1003900 () Bool)

(declare-fun e!1510422 () Bool)

(assert (=> b!2365501 (=> (not res!1003900) (not e!1510422))))

(assert (=> b!2365501 (= res!1003900 (not call!143931))))

(declare-fun b!2365503 () Bool)

(assert (=> b!2365503 (= e!1510422 (= (head!5097 s!9460) (c!375946 r!13927)))))

(declare-fun b!2365504 () Bool)

(declare-fun e!1510425 () Bool)

(assert (=> b!2365504 (= e!1510424 e!1510425)))

(declare-fun res!1003899 () Bool)

(assert (=> b!2365504 (=> (not res!1003899) (not e!1510425))))

(assert (=> b!2365504 (= res!1003899 (not lt!865059))))

(declare-fun b!2365505 () Bool)

(declare-fun res!1003901 () Bool)

(assert (=> b!2365505 (=> (not res!1003901) (not e!1510422))))

(declare-fun tail!3366 (List!28087) List!28087)

(assert (=> b!2365505 (= res!1003901 (isEmpty!15912 (tail!3366 s!9460)))))

(declare-fun b!2365506 () Bool)

(assert (=> b!2365506 (= e!1510425 e!1510423)))

(declare-fun res!1003902 () Bool)

(assert (=> b!2365506 (=> res!1003902 e!1510423)))

(assert (=> b!2365506 (= res!1003902 call!143931)))

(declare-fun b!2365507 () Bool)

(declare-fun e!1510427 () Bool)

(declare-fun nullable!1988 (Regex!6924) Bool)

(assert (=> b!2365507 (= e!1510427 (nullable!1988 r!13927))))

(declare-fun b!2365508 () Bool)

(declare-fun derivativeStep!1647 (Regex!6924 C!14006) Regex!6924)

(assert (=> b!2365508 (= e!1510427 (matchR!3041 (derivativeStep!1647 r!13927 (head!5097 s!9460)) (tail!3366 s!9460)))))

(declare-fun d!694677 () Bool)

(assert (=> d!694677 e!1510421))

(declare-fun c!375984 () Bool)

(assert (=> d!694677 (= c!375984 (is-EmptyExpr!6924 r!13927))))

(assert (=> d!694677 (= lt!865059 e!1510427)))

(declare-fun c!375986 () Bool)

(assert (=> d!694677 (= c!375986 (isEmpty!15912 s!9460))))

(assert (=> d!694677 (validRegex!2654 r!13927)))

(assert (=> d!694677 (= (matchR!3041 r!13927 s!9460) lt!865059)))

(declare-fun b!2365502 () Bool)

(declare-fun res!1003904 () Bool)

(assert (=> b!2365502 (=> res!1003904 e!1510424)))

(assert (=> b!2365502 (= res!1003904 e!1510422)))

(declare-fun res!1003905 () Bool)

(assert (=> b!2365502 (=> (not res!1003905) (not e!1510422))))

(assert (=> b!2365502 (= res!1003905 lt!865059)))

(declare-fun b!2365509 () Bool)

(declare-fun res!1003903 () Bool)

(assert (=> b!2365509 (=> res!1003903 e!1510423)))

(assert (=> b!2365509 (= res!1003903 (not (isEmpty!15912 (tail!3366 s!9460))))))

(declare-fun b!2365510 () Bool)

(assert (=> b!2365510 (= e!1510421 (= lt!865059 call!143931))))

(assert (= (and d!694677 c!375986) b!2365507))

(assert (= (and d!694677 (not c!375986)) b!2365508))

(assert (= (and d!694677 c!375984) b!2365510))

(assert (= (and d!694677 (not c!375984)) b!2365498))

(assert (= (and b!2365498 c!375985) b!2365497))

(assert (= (and b!2365498 (not c!375985)) b!2365499))

(assert (= (and b!2365499 (not res!1003906)) b!2365502))

(assert (= (and b!2365502 res!1003905) b!2365501))

(assert (= (and b!2365501 res!1003900) b!2365505))

(assert (= (and b!2365505 res!1003901) b!2365503))

(assert (= (and b!2365502 (not res!1003904)) b!2365504))

(assert (= (and b!2365504 res!1003899) b!2365506))

(assert (= (and b!2365506 (not res!1003902)) b!2365509))

(assert (= (and b!2365509 (not res!1003903)) b!2365500))

(assert (= (or b!2365510 b!2365501 b!2365506) bm!143926))

(assert (=> bm!143926 m!2775913))

(declare-fun m!2775925 () Bool)

(assert (=> b!2365509 m!2775925))

(assert (=> b!2365509 m!2775925))

(declare-fun m!2775927 () Bool)

(assert (=> b!2365509 m!2775927))

(declare-fun m!2775929 () Bool)

(assert (=> b!2365508 m!2775929))

(assert (=> b!2365508 m!2775929))

(declare-fun m!2775931 () Bool)

(assert (=> b!2365508 m!2775931))

(assert (=> b!2365508 m!2775925))

(assert (=> b!2365508 m!2775931))

(assert (=> b!2365508 m!2775925))

(declare-fun m!2775933 () Bool)

(assert (=> b!2365508 m!2775933))

(assert (=> b!2365500 m!2775929))

(assert (=> d!694677 m!2775913))

(declare-fun m!2775935 () Bool)

(assert (=> d!694677 m!2775935))

(declare-fun m!2775937 () Bool)

(assert (=> b!2365507 m!2775937))

(assert (=> b!2365503 m!2775929))

(assert (=> b!2365505 m!2775925))

(assert (=> b!2365505 m!2775925))

(assert (=> b!2365505 m!2775927))

(assert (=> b!2365285 d!694677))

(declare-fun d!694683 () Bool)

(assert (=> d!694683 (= (matchR!3041 r!13927 s!9460) (matchRSpec!773 r!13927 s!9460))))

(declare-fun lt!865062 () Unit!40883)

(declare-fun choose!13732 (Regex!6924 List!28087) Unit!40883)

(assert (=> d!694683 (= lt!865062 (choose!13732 r!13927 s!9460))))

(assert (=> d!694683 (validRegex!2654 r!13927)))

(assert (=> d!694683 (= (mainMatchTheorem!773 r!13927 s!9460) lt!865062)))

(declare-fun bs!460875 () Bool)

(assert (= bs!460875 d!694683))

(assert (=> bs!460875 m!2775795))

(assert (=> bs!460875 m!2775793))

(declare-fun m!2775939 () Bool)

(assert (=> bs!460875 m!2775939))

(assert (=> bs!460875 m!2775935))

(assert (=> b!2365285 d!694683))

(declare-fun e!1510430 () Bool)

(assert (=> b!2365277 (= tp!756428 e!1510430)))

(declare-fun b!2365522 () Bool)

(declare-fun tp!756466 () Bool)

(declare-fun tp!756465 () Bool)

(assert (=> b!2365522 (= e!1510430 (and tp!756466 tp!756465))))

(declare-fun b!2365524 () Bool)

(declare-fun tp!756468 () Bool)

(declare-fun tp!756467 () Bool)

(assert (=> b!2365524 (= e!1510430 (and tp!756468 tp!756467))))

(declare-fun b!2365521 () Bool)

(assert (=> b!2365521 (= e!1510430 tp_is_empty!11261)))

(declare-fun b!2365523 () Bool)

(declare-fun tp!756464 () Bool)

(assert (=> b!2365523 (= e!1510430 tp!756464)))

(assert (= (and b!2365277 (is-ElementMatch!6924 (regOne!14360 r!13927))) b!2365521))

(assert (= (and b!2365277 (is-Concat!11560 (regOne!14360 r!13927))) b!2365522))

(assert (= (and b!2365277 (is-Star!6924 (regOne!14360 r!13927))) b!2365523))

(assert (= (and b!2365277 (is-Union!6924 (regOne!14360 r!13927))) b!2365524))

(declare-fun e!1510431 () Bool)

(assert (=> b!2365277 (= tp!756423 e!1510431)))

(declare-fun b!2365526 () Bool)

(declare-fun tp!756471 () Bool)

(declare-fun tp!756470 () Bool)

(assert (=> b!2365526 (= e!1510431 (and tp!756471 tp!756470))))

(declare-fun b!2365528 () Bool)

(declare-fun tp!756473 () Bool)

(declare-fun tp!756472 () Bool)

(assert (=> b!2365528 (= e!1510431 (and tp!756473 tp!756472))))

(declare-fun b!2365525 () Bool)

(assert (=> b!2365525 (= e!1510431 tp_is_empty!11261)))

(declare-fun b!2365527 () Bool)

(declare-fun tp!756469 () Bool)

(assert (=> b!2365527 (= e!1510431 tp!756469)))

(assert (= (and b!2365277 (is-ElementMatch!6924 (regTwo!14360 r!13927))) b!2365525))

(assert (= (and b!2365277 (is-Concat!11560 (regTwo!14360 r!13927))) b!2365526))

(assert (= (and b!2365277 (is-Star!6924 (regTwo!14360 r!13927))) b!2365527))

(assert (= (and b!2365277 (is-Union!6924 (regTwo!14360 r!13927))) b!2365528))

(declare-fun b!2365533 () Bool)

(declare-fun e!1510434 () Bool)

(declare-fun tp!756476 () Bool)

(assert (=> b!2365533 (= e!1510434 (and tp_is_empty!11261 tp!756476))))

(assert (=> b!2365278 (= tp!756424 e!1510434)))

(assert (= (and b!2365278 (is-Cons!27989 (t!208064 s!9460))) b!2365533))

(declare-fun e!1510435 () Bool)

(assert (=> b!2365276 (= tp!756425 e!1510435)))

(declare-fun b!2365535 () Bool)

(declare-fun tp!756479 () Bool)

(declare-fun tp!756478 () Bool)

(assert (=> b!2365535 (= e!1510435 (and tp!756479 tp!756478))))

(declare-fun b!2365537 () Bool)

(declare-fun tp!756481 () Bool)

(declare-fun tp!756480 () Bool)

(assert (=> b!2365537 (= e!1510435 (and tp!756481 tp!756480))))

(declare-fun b!2365534 () Bool)

(assert (=> b!2365534 (= e!1510435 tp_is_empty!11261)))

(declare-fun b!2365536 () Bool)

(declare-fun tp!756477 () Bool)

(assert (=> b!2365536 (= e!1510435 tp!756477)))

(assert (= (and b!2365276 (is-ElementMatch!6924 (reg!7253 r!13927))) b!2365534))

(assert (= (and b!2365276 (is-Concat!11560 (reg!7253 r!13927))) b!2365535))

(assert (= (and b!2365276 (is-Star!6924 (reg!7253 r!13927))) b!2365536))

(assert (= (and b!2365276 (is-Union!6924 (reg!7253 r!13927))) b!2365537))

(declare-fun e!1510436 () Bool)

(assert (=> b!2365282 (= tp!756429 e!1510436)))

(declare-fun b!2365539 () Bool)

(declare-fun tp!756484 () Bool)

(declare-fun tp!756483 () Bool)

(assert (=> b!2365539 (= e!1510436 (and tp!756484 tp!756483))))

(declare-fun b!2365541 () Bool)

(declare-fun tp!756486 () Bool)

(declare-fun tp!756485 () Bool)

(assert (=> b!2365541 (= e!1510436 (and tp!756486 tp!756485))))

(declare-fun b!2365538 () Bool)

(assert (=> b!2365538 (= e!1510436 tp_is_empty!11261)))

(declare-fun b!2365540 () Bool)

(declare-fun tp!756482 () Bool)

(assert (=> b!2365540 (= e!1510436 tp!756482)))

(assert (= (and b!2365282 (is-ElementMatch!6924 (h!33389 l!9164))) b!2365538))

(assert (= (and b!2365282 (is-Concat!11560 (h!33389 l!9164))) b!2365539))

(assert (= (and b!2365282 (is-Star!6924 (h!33389 l!9164))) b!2365540))

(assert (= (and b!2365282 (is-Union!6924 (h!33389 l!9164))) b!2365541))

(declare-fun b!2365546 () Bool)

(declare-fun e!1510439 () Bool)

(declare-fun tp!756491 () Bool)

(declare-fun tp!756492 () Bool)

(assert (=> b!2365546 (= e!1510439 (and tp!756491 tp!756492))))

(assert (=> b!2365282 (= tp!756427 e!1510439)))

(assert (= (and b!2365282 (is-Cons!27988 (t!208063 l!9164))) b!2365546))

(declare-fun e!1510440 () Bool)

(assert (=> b!2365280 (= tp!756426 e!1510440)))

(declare-fun b!2365548 () Bool)

(declare-fun tp!756495 () Bool)

(declare-fun tp!756494 () Bool)

(assert (=> b!2365548 (= e!1510440 (and tp!756495 tp!756494))))

(declare-fun b!2365550 () Bool)

(declare-fun tp!756497 () Bool)

(declare-fun tp!756496 () Bool)

(assert (=> b!2365550 (= e!1510440 (and tp!756497 tp!756496))))

(declare-fun b!2365547 () Bool)

(assert (=> b!2365547 (= e!1510440 tp_is_empty!11261)))

(declare-fun b!2365549 () Bool)

(declare-fun tp!756493 () Bool)

(assert (=> b!2365549 (= e!1510440 tp!756493)))

(assert (= (and b!2365280 (is-ElementMatch!6924 (regOne!14361 r!13927))) b!2365547))

(assert (= (and b!2365280 (is-Concat!11560 (regOne!14361 r!13927))) b!2365548))

(assert (= (and b!2365280 (is-Star!6924 (regOne!14361 r!13927))) b!2365549))

(assert (= (and b!2365280 (is-Union!6924 (regOne!14361 r!13927))) b!2365550))

(declare-fun e!1510441 () Bool)

(assert (=> b!2365280 (= tp!756422 e!1510441)))

(declare-fun b!2365552 () Bool)

(declare-fun tp!756500 () Bool)

(declare-fun tp!756499 () Bool)

(assert (=> b!2365552 (= e!1510441 (and tp!756500 tp!756499))))

(declare-fun b!2365554 () Bool)

(declare-fun tp!756502 () Bool)

(declare-fun tp!756501 () Bool)

(assert (=> b!2365554 (= e!1510441 (and tp!756502 tp!756501))))

(declare-fun b!2365551 () Bool)

(assert (=> b!2365551 (= e!1510441 tp_is_empty!11261)))

(declare-fun b!2365553 () Bool)

(declare-fun tp!756498 () Bool)

(assert (=> b!2365553 (= e!1510441 tp!756498)))

(assert (= (and b!2365280 (is-ElementMatch!6924 (regTwo!14361 r!13927))) b!2365551))

(assert (= (and b!2365280 (is-Concat!11560 (regTwo!14361 r!13927))) b!2365552))

(assert (= (and b!2365280 (is-Star!6924 (regTwo!14361 r!13927))) b!2365553))

(assert (= (and b!2365280 (is-Union!6924 (regTwo!14361 r!13927))) b!2365554))

(declare-fun b_lambda!73853 () Bool)

(assert (= b_lambda!73851 (or start!232136 b_lambda!73853)))

(declare-fun bs!460876 () Bool)

(declare-fun d!694685 () Bool)

(assert (= bs!460876 (and d!694685 start!232136)))

(assert (=> bs!460876 (= (dynLambda!12059 lambda!87178 (h!33389 l!9164)) (validRegex!2654 (h!33389 l!9164)))))

(declare-fun m!2775941 () Bool)

(assert (=> bs!460876 m!2775941))

(assert (=> b!2365386 d!694685))

(push 1)

(assert (not b!2365554))

(assert (not b!2365408))

(assert (not b!2365380))

(assert (not bm!143922))

(assert (not b!2365507))

(assert (not b!2365373))

(assert (not bs!460876))

(assert (not d!694649))

(assert (not b!2365417))

(assert (not b!2365415))

(assert (not b!2365550))

(assert (not b!2365503))

(assert (not d!694661))

(assert (not b!2365459))

(assert (not b!2365522))

(assert (not b!2365539))

(assert (not d!694653))

(assert (not d!694663))

(assert (not b!2365374))

(assert (not b!2365377))

(assert (not b!2365527))

(assert (not b!2365509))

(assert (not b!2365549))

(assert tp_is_empty!11261)

(assert (not d!694667))

(assert (not b!2365526))

(assert (not b!2365409))

(assert (not d!694677))

(assert (not b!2365387))

(assert (not b!2365533))

(assert (not b!2365410))

(assert (not b!2365500))

(assert (not b!2365505))

(assert (not b!2365413))

(assert (not b!2365528))

(assert (not b!2365553))

(assert (not d!694651))

(assert (not b!2365548))

(assert (not b!2365524))

(assert (not b!2365412))

(assert (not b!2365546))

(assert (not b!2365461))

(assert (not b!2365523))

(assert (not b!2365535))

(assert (not bm!143923))

(assert (not b!2365537))

(assert (not b!2365508))

(assert (not b!2365540))

(assert (not d!694683))

(assert (not bm!143926))

(assert (not b_lambda!73853))

(assert (not b!2365536))

(assert (not d!694673))

(assert (not b!2365379))

(assert (not b!2365541))

(assert (not b!2365375))

(assert (not b!2365552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

