; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232866 () Bool)

(assert start!232866)

(declare-fun b!2372854 () Bool)

(assert (=> b!2372854 true))

(assert (=> b!2372854 true))

(declare-fun lambda!87946 () Int)

(declare-fun lambda!87945 () Int)

(assert (=> b!2372854 (not (= lambda!87946 lambda!87945))))

(assert (=> b!2372854 true))

(assert (=> b!2372854 true))

(declare-fun b!2372853 () Bool)

(declare-fun e!1514280 () Bool)

(declare-fun e!1514271 () Bool)

(assert (=> b!2372853 (= e!1514280 (not e!1514271))))

(declare-fun res!1007304 () Bool)

(assert (=> b!2372853 (=> res!1007304 e!1514271)))

(declare-datatypes ((C!14062 0))(
  ( (C!14063 (val!8273 Int)) )
))
(declare-datatypes ((Regex!6952 0))(
  ( (ElementMatch!6952 (c!377168 C!14062)) (Concat!11588 (regOne!14416 Regex!6952) (regTwo!14416 Regex!6952)) (EmptyExpr!6952) (Star!6952 (reg!7281 Regex!6952)) (EmptyLang!6952) (Union!6952 (regOne!14417 Regex!6952) (regTwo!14417 Regex!6952)) )
))
(declare-fun r!13927 () Regex!6952)

(assert (=> b!2372853 (= res!1007304 (not (is-Concat!11588 r!13927)))))

(declare-fun lt!866483 () Bool)

(declare-fun lt!866488 () Bool)

(assert (=> b!2372853 (= lt!866483 lt!866488)))

(declare-datatypes ((List!28142 0))(
  ( (Nil!28044) (Cons!28044 (h!33445 C!14062) (t!208119 List!28142)) )
))
(declare-fun s!9460 () List!28142)

(declare-fun matchRSpec!801 (Regex!6952 List!28142) Bool)

(assert (=> b!2372853 (= lt!866488 (matchRSpec!801 r!13927 s!9460))))

(declare-fun matchR!3069 (Regex!6952 List!28142) Bool)

(assert (=> b!2372853 (= lt!866483 (matchR!3069 r!13927 s!9460))))

(declare-datatypes ((Unit!40939 0))(
  ( (Unit!40940) )
))
(declare-fun lt!866493 () Unit!40939)

(declare-fun mainMatchTheorem!801 (Regex!6952 List!28142) Unit!40939)

(assert (=> b!2372853 (= lt!866493 (mainMatchTheorem!801 r!13927 s!9460))))

(declare-fun e!1514273 () Bool)

(assert (=> b!2372854 (= e!1514271 e!1514273)))

(declare-fun res!1007307 () Bool)

(assert (=> b!2372854 (=> res!1007307 e!1514273)))

(declare-fun lt!866489 () Bool)

(assert (=> b!2372854 (= res!1007307 (not (= lt!866488 lt!866489)))))

(declare-fun Exists!1014 (Int) Bool)

(assert (=> b!2372854 (= (Exists!1014 lambda!87945) (Exists!1014 lambda!87946))))

(declare-fun lt!866490 () Unit!40939)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!353 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> b!2372854 (= lt!866490 (lemmaExistCutMatchRandMatchRSpecEquivalent!353 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460))))

(assert (=> b!2372854 (= lt!866489 (Exists!1014 lambda!87945))))

(declare-datatypes ((tuple2!27768 0))(
  ( (tuple2!27769 (_1!16425 List!28142) (_2!16425 List!28142)) )
))
(declare-datatypes ((Option!5495 0))(
  ( (None!5494) (Some!5494 (v!30902 tuple2!27768)) )
))
(declare-fun isDefined!4323 (Option!5495) Bool)

(declare-fun findConcatSeparation!603 (Regex!6952 Regex!6952 List!28142 List!28142 List!28142) Option!5495)

(assert (=> b!2372854 (= lt!866489 (isDefined!4323 (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) Nil!28044 s!9460 s!9460)))))

(declare-fun lt!866485 () Unit!40939)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!603 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> b!2372854 (= lt!866485 (lemmaFindConcatSeparationEquivalentToExists!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460))))

(declare-fun b!2372855 () Bool)

(declare-fun e!1514277 () Bool)

(declare-fun tp_is_empty!11317 () Bool)

(declare-fun tp!758271 () Bool)

(assert (=> b!2372855 (= e!1514277 (and tp_is_empty!11317 tp!758271))))

(declare-fun b!2372856 () Bool)

(declare-fun e!1514278 () Bool)

(declare-fun lt!866486 () Regex!6952)

(declare-fun validRegex!2679 (Regex!6952) Bool)

(assert (=> b!2372856 (= e!1514278 (validRegex!2679 lt!866486))))

(declare-fun b!2372857 () Bool)

(declare-fun e!1514279 () Bool)

(declare-fun tp!758274 () Bool)

(declare-fun tp!758273 () Bool)

(assert (=> b!2372857 (= e!1514279 (and tp!758274 tp!758273))))

(declare-fun b!2372858 () Bool)

(declare-fun e!1514276 () Bool)

(assert (=> b!2372858 (= e!1514276 e!1514278)))

(declare-fun res!1007301 () Bool)

(assert (=> b!2372858 (=> res!1007301 e!1514278)))

(declare-fun lt!866487 () Regex!6952)

(assert (=> b!2372858 (= res!1007301 (not (validRegex!2679 lt!866487)))))

(assert (=> b!2372858 (isDefined!4323 (findConcatSeparation!603 lt!866487 EmptyExpr!6952 Nil!28044 s!9460 s!9460))))

(declare-fun lt!866484 () Unit!40939)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!7 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> b!2372858 (= lt!866484 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!7 lt!866487 EmptyExpr!6952 s!9460))))

(declare-fun e!1514274 () Bool)

(assert (=> b!2372858 e!1514274))

(declare-fun res!1007305 () Bool)

(assert (=> b!2372858 (=> (not res!1007305) (not e!1514274))))

(declare-fun lt!866494 () Regex!6952)

(declare-fun ++!6912 (List!28142 List!28142) List!28142)

(assert (=> b!2372858 (= res!1007305 (matchR!3069 lt!866494 (++!6912 s!9460 Nil!28044)))))

(assert (=> b!2372858 (= lt!866494 (Concat!11588 lt!866487 EmptyExpr!6952))))

(declare-fun lt!866492 () Unit!40939)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!25 (Regex!6952 Regex!6952 List!28142 List!28142) Unit!40939)

(assert (=> b!2372858 (= lt!866492 (lemmaTwoRegexMatchThenConcatMatchesConcatString!25 lt!866487 EmptyExpr!6952 s!9460 Nil!28044))))

(declare-fun b!2372859 () Bool)

(declare-fun e!1514275 () Bool)

(declare-fun tp!758277 () Bool)

(declare-fun tp!758270 () Bool)

(assert (=> b!2372859 (= e!1514275 (and tp!758277 tp!758270))))

(declare-fun res!1007303 () Bool)

(assert (=> start!232866 (=> (not res!1007303) (not e!1514280))))

(declare-datatypes ((List!28143 0))(
  ( (Nil!28045) (Cons!28045 (h!33446 Regex!6952) (t!208120 List!28143)) )
))
(declare-fun l!9164 () List!28143)

(declare-fun lambda!87944 () Int)

(declare-fun forall!5586 (List!28143 Int) Bool)

(assert (=> start!232866 (= res!1007303 (forall!5586 l!9164 lambda!87944))))

(assert (=> start!232866 e!1514280))

(assert (=> start!232866 e!1514275))

(assert (=> start!232866 e!1514279))

(assert (=> start!232866 e!1514277))

(declare-fun b!2372860 () Bool)

(declare-fun e!1514272 () Bool)

(declare-fun e!1514281 () Bool)

(assert (=> b!2372860 (= e!1514272 e!1514281)))

(declare-fun res!1007302 () Bool)

(assert (=> b!2372860 (=> res!1007302 e!1514281)))

(assert (=> b!2372860 (= res!1007302 (not (= lt!866486 EmptyExpr!6952)))))

(declare-fun lt!866491 () List!28143)

(declare-fun generalisedConcat!53 (List!28143) Regex!6952)

(assert (=> b!2372860 (= lt!866486 (generalisedConcat!53 lt!866491))))

(declare-fun b!2372861 () Bool)

(declare-fun tp!758276 () Bool)

(assert (=> b!2372861 (= e!1514279 tp!758276)))

(declare-fun b!2372862 () Bool)

(declare-fun res!1007299 () Bool)

(assert (=> b!2372862 (=> (not res!1007299) (not e!1514280))))

(assert (=> b!2372862 (= res!1007299 (= r!13927 (generalisedConcat!53 l!9164)))))

(declare-fun b!2372863 () Bool)

(declare-fun tp!758275 () Bool)

(declare-fun tp!758272 () Bool)

(assert (=> b!2372863 (= e!1514279 (and tp!758275 tp!758272))))

(declare-fun b!2372864 () Bool)

(declare-fun res!1007306 () Bool)

(assert (=> b!2372864 (=> res!1007306 e!1514273)))

(declare-fun isEmpty!15979 (List!28143) Bool)

(assert (=> b!2372864 (= res!1007306 (isEmpty!15979 l!9164))))

(declare-fun b!2372865 () Bool)

(assert (=> b!2372865 (= e!1514279 tp_is_empty!11317)))

(declare-fun b!2372866 () Bool)

(assert (=> b!2372866 (= e!1514273 e!1514272)))

(declare-fun res!1007300 () Bool)

(assert (=> b!2372866 (=> res!1007300 e!1514272)))

(assert (=> b!2372866 (= res!1007300 (not (isEmpty!15979 lt!866491)))))

(declare-fun tail!3413 (List!28143) List!28143)

(assert (=> b!2372866 (= lt!866491 (tail!3413 l!9164))))

(declare-fun b!2372867 () Bool)

(assert (=> b!2372867 (= e!1514274 (matchR!3069 lt!866494 s!9460))))

(declare-fun b!2372868 () Bool)

(assert (=> b!2372868 (= e!1514281 e!1514276)))

(declare-fun res!1007308 () Bool)

(assert (=> b!2372868 (=> res!1007308 e!1514276)))

(assert (=> b!2372868 (= res!1007308 (not (matchR!3069 lt!866487 s!9460)))))

(declare-fun head!5143 (List!28143) Regex!6952)

(assert (=> b!2372868 (= lt!866487 (head!5143 l!9164))))

(assert (= (and start!232866 res!1007303) b!2372862))

(assert (= (and b!2372862 res!1007299) b!2372853))

(assert (= (and b!2372853 (not res!1007304)) b!2372854))

(assert (= (and b!2372854 (not res!1007307)) b!2372864))

(assert (= (and b!2372864 (not res!1007306)) b!2372866))

(assert (= (and b!2372866 (not res!1007300)) b!2372860))

(assert (= (and b!2372860 (not res!1007302)) b!2372868))

(assert (= (and b!2372868 (not res!1007308)) b!2372858))

(assert (= (and b!2372858 res!1007305) b!2372867))

(assert (= (and b!2372858 (not res!1007301)) b!2372856))

(assert (= (and start!232866 (is-Cons!28045 l!9164)) b!2372859))

(assert (= (and start!232866 (is-ElementMatch!6952 r!13927)) b!2372865))

(assert (= (and start!232866 (is-Concat!11588 r!13927)) b!2372857))

(assert (= (and start!232866 (is-Star!6952 r!13927)) b!2372861))

(assert (= (and start!232866 (is-Union!6952 r!13927)) b!2372863))

(assert (= (and start!232866 (is-Cons!28044 s!9460)) b!2372855))

(declare-fun m!2779947 () Bool)

(assert (=> b!2372862 m!2779947))

(declare-fun m!2779949 () Bool)

(assert (=> b!2372854 m!2779949))

(declare-fun m!2779951 () Bool)

(assert (=> b!2372854 m!2779951))

(declare-fun m!2779953 () Bool)

(assert (=> b!2372854 m!2779953))

(declare-fun m!2779955 () Bool)

(assert (=> b!2372854 m!2779955))

(declare-fun m!2779957 () Bool)

(assert (=> b!2372854 m!2779957))

(assert (=> b!2372854 m!2779949))

(assert (=> b!2372854 m!2779955))

(declare-fun m!2779959 () Bool)

(assert (=> b!2372854 m!2779959))

(declare-fun m!2779961 () Bool)

(assert (=> b!2372868 m!2779961))

(declare-fun m!2779963 () Bool)

(assert (=> b!2372868 m!2779963))

(declare-fun m!2779965 () Bool)

(assert (=> b!2372867 m!2779965))

(declare-fun m!2779967 () Bool)

(assert (=> b!2372864 m!2779967))

(declare-fun m!2779969 () Bool)

(assert (=> b!2372866 m!2779969))

(declare-fun m!2779971 () Bool)

(assert (=> b!2372866 m!2779971))

(declare-fun m!2779973 () Bool)

(assert (=> b!2372853 m!2779973))

(declare-fun m!2779975 () Bool)

(assert (=> b!2372853 m!2779975))

(declare-fun m!2779977 () Bool)

(assert (=> b!2372853 m!2779977))

(declare-fun m!2779979 () Bool)

(assert (=> start!232866 m!2779979))

(declare-fun m!2779981 () Bool)

(assert (=> b!2372858 m!2779981))

(declare-fun m!2779983 () Bool)

(assert (=> b!2372858 m!2779983))

(declare-fun m!2779985 () Bool)

(assert (=> b!2372858 m!2779985))

(declare-fun m!2779987 () Bool)

(assert (=> b!2372858 m!2779987))

(declare-fun m!2779989 () Bool)

(assert (=> b!2372858 m!2779989))

(declare-fun m!2779991 () Bool)

(assert (=> b!2372858 m!2779991))

(assert (=> b!2372858 m!2779983))

(assert (=> b!2372858 m!2779991))

(declare-fun m!2779993 () Bool)

(assert (=> b!2372858 m!2779993))

(declare-fun m!2779995 () Bool)

(assert (=> b!2372856 m!2779995))

(declare-fun m!2779997 () Bool)

(assert (=> b!2372860 m!2779997))

(push 1)

(assert (not b!2372867))

(assert (not b!2372856))

(assert (not b!2372866))

(assert (not b!2372861))

(assert (not b!2372859))

(assert (not b!2372864))

(assert (not b!2372868))

(assert (not b!2372854))

(assert (not b!2372857))

(assert tp_is_empty!11317)

(assert (not b!2372862))

(assert (not b!2372860))

(assert (not b!2372863))

(assert (not b!2372853))

(assert (not b!2372858))

(assert (not start!232866))

(assert (not b!2372855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!461363 () Bool)

(declare-fun d!695617 () Bool)

(assert (= bs!461363 (and d!695617 start!232866)))

(declare-fun lambda!87960 () Int)

(assert (=> bs!461363 (= lambda!87960 lambda!87944)))

(declare-fun b!2372957 () Bool)

(declare-fun e!1514333 () Regex!6952)

(assert (=> b!2372957 (= e!1514333 (Concat!11588 (h!33446 lt!866491) (generalisedConcat!53 (t!208120 lt!866491))))))

(declare-fun b!2372958 () Bool)

(assert (=> b!2372958 (= e!1514333 EmptyExpr!6952)))

(declare-fun b!2372959 () Bool)

(declare-fun e!1514337 () Bool)

(declare-fun e!1514334 () Bool)

(assert (=> b!2372959 (= e!1514337 e!1514334)))

(declare-fun c!377178 () Bool)

(assert (=> b!2372959 (= c!377178 (isEmpty!15979 lt!866491))))

(declare-fun b!2372960 () Bool)

(declare-fun e!1514336 () Bool)

(declare-fun lt!866533 () Regex!6952)

(declare-fun isConcat!30 (Regex!6952) Bool)

(assert (=> b!2372960 (= e!1514336 (isConcat!30 lt!866533))))

(assert (=> d!695617 e!1514337))

(declare-fun res!1007355 () Bool)

(assert (=> d!695617 (=> (not res!1007355) (not e!1514337))))

(assert (=> d!695617 (= res!1007355 (validRegex!2679 lt!866533))))

(declare-fun e!1514335 () Regex!6952)

(assert (=> d!695617 (= lt!866533 e!1514335)))

(declare-fun c!377180 () Bool)

(declare-fun e!1514338 () Bool)

(assert (=> d!695617 (= c!377180 e!1514338)))

(declare-fun res!1007356 () Bool)

(assert (=> d!695617 (=> (not res!1007356) (not e!1514338))))

(assert (=> d!695617 (= res!1007356 (is-Cons!28045 lt!866491))))

(assert (=> d!695617 (forall!5586 lt!866491 lambda!87960)))

(assert (=> d!695617 (= (generalisedConcat!53 lt!866491) lt!866533)))

(declare-fun b!2372961 () Bool)

(assert (=> b!2372961 (= e!1514336 (= lt!866533 (head!5143 lt!866491)))))

(declare-fun b!2372962 () Bool)

(assert (=> b!2372962 (= e!1514335 (h!33446 lt!866491))))

(declare-fun b!2372963 () Bool)

(declare-fun isEmptyExpr!30 (Regex!6952) Bool)

(assert (=> b!2372963 (= e!1514334 (isEmptyExpr!30 lt!866533))))

(declare-fun b!2372964 () Bool)

(assert (=> b!2372964 (= e!1514334 e!1514336)))

(declare-fun c!377181 () Bool)

(assert (=> b!2372964 (= c!377181 (isEmpty!15979 (tail!3413 lt!866491)))))

(declare-fun b!2372965 () Bool)

(assert (=> b!2372965 (= e!1514338 (isEmpty!15979 (t!208120 lt!866491)))))

(declare-fun b!2372966 () Bool)

(assert (=> b!2372966 (= e!1514335 e!1514333)))

(declare-fun c!377179 () Bool)

(assert (=> b!2372966 (= c!377179 (is-Cons!28045 lt!866491))))

(assert (= (and d!695617 res!1007356) b!2372965))

(assert (= (and d!695617 c!377180) b!2372962))

(assert (= (and d!695617 (not c!377180)) b!2372966))

(assert (= (and b!2372966 c!377179) b!2372957))

(assert (= (and b!2372966 (not c!377179)) b!2372958))

(assert (= (and d!695617 res!1007355) b!2372959))

(assert (= (and b!2372959 c!377178) b!2372963))

(assert (= (and b!2372959 (not c!377178)) b!2372964))

(assert (= (and b!2372964 c!377181) b!2372961))

(assert (= (and b!2372964 (not c!377181)) b!2372960))

(declare-fun m!2780051 () Bool)

(assert (=> b!2372963 m!2780051))

(declare-fun m!2780053 () Bool)

(assert (=> d!695617 m!2780053))

(declare-fun m!2780055 () Bool)

(assert (=> d!695617 m!2780055))

(declare-fun m!2780057 () Bool)

(assert (=> b!2372961 m!2780057))

(declare-fun m!2780059 () Bool)

(assert (=> b!2372957 m!2780059))

(declare-fun m!2780061 () Bool)

(assert (=> b!2372965 m!2780061))

(declare-fun m!2780063 () Bool)

(assert (=> b!2372960 m!2780063))

(assert (=> b!2372959 m!2779969))

(declare-fun m!2780065 () Bool)

(assert (=> b!2372964 m!2780065))

(assert (=> b!2372964 m!2780065))

(declare-fun m!2780067 () Bool)

(assert (=> b!2372964 m!2780067))

(assert (=> b!2372860 d!695617))

(declare-fun bs!461364 () Bool)

(declare-fun b!2373006 () Bool)

(assert (= bs!461364 (and b!2373006 b!2372854)))

(declare-fun lambda!87965 () Int)

(assert (=> bs!461364 (not (= lambda!87965 lambda!87945))))

(assert (=> bs!461364 (not (= lambda!87965 lambda!87946))))

(assert (=> b!2373006 true))

(assert (=> b!2373006 true))

(declare-fun bs!461365 () Bool)

(declare-fun b!2373007 () Bool)

(assert (= bs!461365 (and b!2373007 b!2372854)))

(declare-fun lambda!87966 () Int)

(assert (=> bs!461365 (not (= lambda!87966 lambda!87945))))

(assert (=> bs!461365 (= lambda!87966 lambda!87946)))

(declare-fun bs!461366 () Bool)

(assert (= bs!461366 (and b!2373007 b!2373006)))

(assert (=> bs!461366 (not (= lambda!87966 lambda!87965))))

(assert (=> b!2373007 true))

(assert (=> b!2373007 true))

(declare-fun b!2372999 () Bool)

(declare-fun e!1514360 () Bool)

(assert (=> b!2372999 (= e!1514360 (= s!9460 (Cons!28044 (c!377168 r!13927) Nil!28044)))))

(declare-fun b!2373000 () Bool)

(declare-fun e!1514357 () Bool)

(assert (=> b!2373000 (= e!1514357 (matchRSpec!801 (regTwo!14417 r!13927) s!9460))))

(declare-fun b!2373001 () Bool)

(declare-fun e!1514358 () Bool)

(declare-fun e!1514363 () Bool)

(assert (=> b!2373001 (= e!1514358 e!1514363)))

(declare-fun c!377193 () Bool)

(assert (=> b!2373001 (= c!377193 (is-Star!6952 r!13927))))

(declare-fun b!2373002 () Bool)

(declare-fun e!1514359 () Bool)

(declare-fun call!144231 () Bool)

(assert (=> b!2373002 (= e!1514359 call!144231)))

(declare-fun b!2373003 () Bool)

(declare-fun c!377192 () Bool)

(assert (=> b!2373003 (= c!377192 (is-ElementMatch!6952 r!13927))))

(declare-fun e!1514361 () Bool)

(assert (=> b!2373003 (= e!1514361 e!1514360)))

(declare-fun b!2373004 () Bool)

(declare-fun c!377190 () Bool)

(assert (=> b!2373004 (= c!377190 (is-Union!6952 r!13927))))

(assert (=> b!2373004 (= e!1514360 e!1514358)))

(declare-fun b!2373005 () Bool)

(assert (=> b!2373005 (= e!1514358 e!1514357)))

(declare-fun res!1007373 () Bool)

(assert (=> b!2373005 (= res!1007373 (matchRSpec!801 (regOne!14417 r!13927) s!9460))))

(assert (=> b!2373005 (=> res!1007373 e!1514357)))

(declare-fun e!1514362 () Bool)

(declare-fun call!144232 () Bool)

(assert (=> b!2373006 (= e!1514362 call!144232)))

(declare-fun bm!144227 () Bool)

(assert (=> bm!144227 (= call!144232 (Exists!1014 (ite c!377193 lambda!87965 lambda!87966)))))

(assert (=> b!2373007 (= e!1514363 call!144232)))

(declare-fun b!2373008 () Bool)

(declare-fun res!1007374 () Bool)

(assert (=> b!2373008 (=> res!1007374 e!1514362)))

(assert (=> b!2373008 (= res!1007374 call!144231)))

(assert (=> b!2373008 (= e!1514363 e!1514362)))

(declare-fun b!2373009 () Bool)

(assert (=> b!2373009 (= e!1514359 e!1514361)))

(declare-fun res!1007375 () Bool)

(assert (=> b!2373009 (= res!1007375 (not (is-EmptyLang!6952 r!13927)))))

(assert (=> b!2373009 (=> (not res!1007375) (not e!1514361))))

(declare-fun bm!144226 () Bool)

(declare-fun isEmpty!15981 (List!28142) Bool)

(assert (=> bm!144226 (= call!144231 (isEmpty!15981 s!9460))))

(declare-fun d!695619 () Bool)

(declare-fun c!377191 () Bool)

(assert (=> d!695619 (= c!377191 (is-EmptyExpr!6952 r!13927))))

(assert (=> d!695619 (= (matchRSpec!801 r!13927 s!9460) e!1514359)))

(assert (= (and d!695619 c!377191) b!2373002))

(assert (= (and d!695619 (not c!377191)) b!2373009))

(assert (= (and b!2373009 res!1007375) b!2373003))

(assert (= (and b!2373003 c!377192) b!2372999))

(assert (= (and b!2373003 (not c!377192)) b!2373004))

(assert (= (and b!2373004 c!377190) b!2373005))

(assert (= (and b!2373004 (not c!377190)) b!2373001))

(assert (= (and b!2373005 (not res!1007373)) b!2373000))

(assert (= (and b!2373001 c!377193) b!2373008))

(assert (= (and b!2373001 (not c!377193)) b!2373007))

(assert (= (and b!2373008 (not res!1007374)) b!2373006))

(assert (= (or b!2373006 b!2373007) bm!144227))

(assert (= (or b!2373002 b!2373008) bm!144226))

(declare-fun m!2780069 () Bool)

(assert (=> b!2373000 m!2780069))

(declare-fun m!2780071 () Bool)

(assert (=> b!2373005 m!2780071))

(declare-fun m!2780073 () Bool)

(assert (=> bm!144227 m!2780073))

(declare-fun m!2780075 () Bool)

(assert (=> bm!144226 m!2780075))

(assert (=> b!2372853 d!695619))

(declare-fun b!2373066 () Bool)

(declare-fun e!1514395 () Bool)

(declare-fun head!5145 (List!28142) C!14062)

(assert (=> b!2373066 (= e!1514395 (= (head!5145 s!9460) (c!377168 r!13927)))))

(declare-fun b!2373067 () Bool)

(declare-fun e!1514397 () Bool)

(declare-fun lt!866538 () Bool)

(assert (=> b!2373067 (= e!1514397 (not lt!866538))))

(declare-fun b!2373069 () Bool)

(declare-fun res!1007410 () Bool)

(assert (=> b!2373069 (=> (not res!1007410) (not e!1514395))))

(declare-fun tail!3415 (List!28142) List!28142)

(assert (=> b!2373069 (= res!1007410 (isEmpty!15981 (tail!3415 s!9460)))))

(declare-fun b!2373070 () Bool)

(declare-fun e!1514392 () Bool)

(declare-fun e!1514394 () Bool)

(assert (=> b!2373070 (= e!1514392 e!1514394)))

(declare-fun res!1007413 () Bool)

(assert (=> b!2373070 (=> (not res!1007413) (not e!1514394))))

(assert (=> b!2373070 (= res!1007413 (not lt!866538))))

(declare-fun b!2373071 () Bool)

(declare-fun e!1514393 () Bool)

(declare-fun nullable!2008 (Regex!6952) Bool)

(assert (=> b!2373071 (= e!1514393 (nullable!2008 r!13927))))

(declare-fun b!2373072 () Bool)

(declare-fun e!1514396 () Bool)

(declare-fun call!144235 () Bool)

(assert (=> b!2373072 (= e!1514396 (= lt!866538 call!144235))))

(declare-fun b!2373073 () Bool)

(declare-fun e!1514398 () Bool)

(assert (=> b!2373073 (= e!1514398 (not (= (head!5145 s!9460) (c!377168 r!13927))))))

(declare-fun b!2373074 () Bool)

(declare-fun res!1007411 () Bool)

(assert (=> b!2373074 (=> res!1007411 e!1514398)))

(assert (=> b!2373074 (= res!1007411 (not (isEmpty!15981 (tail!3415 s!9460))))))

(declare-fun bm!144230 () Bool)

(assert (=> bm!144230 (= call!144235 (isEmpty!15981 s!9460))))

(declare-fun b!2373075 () Bool)

(declare-fun derivativeStep!1666 (Regex!6952 C!14062) Regex!6952)

(assert (=> b!2373075 (= e!1514393 (matchR!3069 (derivativeStep!1666 r!13927 (head!5145 s!9460)) (tail!3415 s!9460)))))

(declare-fun b!2373076 () Bool)

(assert (=> b!2373076 (= e!1514394 e!1514398)))

(declare-fun res!1007408 () Bool)

(assert (=> b!2373076 (=> res!1007408 e!1514398)))

(assert (=> b!2373076 (= res!1007408 call!144235)))

(declare-fun b!2373068 () Bool)

(declare-fun res!1007415 () Bool)

(assert (=> b!2373068 (=> res!1007415 e!1514392)))

(assert (=> b!2373068 (= res!1007415 (not (is-ElementMatch!6952 r!13927)))))

(assert (=> b!2373068 (= e!1514397 e!1514392)))

(declare-fun d!695623 () Bool)

(assert (=> d!695623 e!1514396))

(declare-fun c!377207 () Bool)

(assert (=> d!695623 (= c!377207 (is-EmptyExpr!6952 r!13927))))

(assert (=> d!695623 (= lt!866538 e!1514393)))

(declare-fun c!377206 () Bool)

(assert (=> d!695623 (= c!377206 (isEmpty!15981 s!9460))))

(assert (=> d!695623 (validRegex!2679 r!13927)))

(assert (=> d!695623 (= (matchR!3069 r!13927 s!9460) lt!866538)))

(declare-fun b!2373077 () Bool)

(declare-fun res!1007412 () Bool)

(assert (=> b!2373077 (=> (not res!1007412) (not e!1514395))))

(assert (=> b!2373077 (= res!1007412 (not call!144235))))

(declare-fun b!2373078 () Bool)

(declare-fun res!1007409 () Bool)

(assert (=> b!2373078 (=> res!1007409 e!1514392)))

(assert (=> b!2373078 (= res!1007409 e!1514395)))

(declare-fun res!1007414 () Bool)

(assert (=> b!2373078 (=> (not res!1007414) (not e!1514395))))

(assert (=> b!2373078 (= res!1007414 lt!866538)))

(declare-fun b!2373079 () Bool)

(assert (=> b!2373079 (= e!1514396 e!1514397)))

(declare-fun c!377208 () Bool)

(assert (=> b!2373079 (= c!377208 (is-EmptyLang!6952 r!13927))))

(assert (= (and d!695623 c!377206) b!2373071))

(assert (= (and d!695623 (not c!377206)) b!2373075))

(assert (= (and d!695623 c!377207) b!2373072))

(assert (= (and d!695623 (not c!377207)) b!2373079))

(assert (= (and b!2373079 c!377208) b!2373067))

(assert (= (and b!2373079 (not c!377208)) b!2373068))

(assert (= (and b!2373068 (not res!1007415)) b!2373078))

(assert (= (and b!2373078 res!1007414) b!2373077))

(assert (= (and b!2373077 res!1007412) b!2373069))

(assert (= (and b!2373069 res!1007410) b!2373066))

(assert (= (and b!2373078 (not res!1007409)) b!2373070))

(assert (= (and b!2373070 res!1007413) b!2373076))

(assert (= (and b!2373076 (not res!1007408)) b!2373074))

(assert (= (and b!2373074 (not res!1007411)) b!2373073))

(assert (= (or b!2373072 b!2373076 b!2373077) bm!144230))

(declare-fun m!2780077 () Bool)

(assert (=> b!2373075 m!2780077))

(assert (=> b!2373075 m!2780077))

(declare-fun m!2780079 () Bool)

(assert (=> b!2373075 m!2780079))

(declare-fun m!2780081 () Bool)

(assert (=> b!2373075 m!2780081))

(assert (=> b!2373075 m!2780079))

(assert (=> b!2373075 m!2780081))

(declare-fun m!2780083 () Bool)

(assert (=> b!2373075 m!2780083))

(assert (=> b!2373073 m!2780077))

(assert (=> b!2373066 m!2780077))

(assert (=> b!2373069 m!2780081))

(assert (=> b!2373069 m!2780081))

(declare-fun m!2780085 () Bool)

(assert (=> b!2373069 m!2780085))

(assert (=> b!2373074 m!2780081))

(assert (=> b!2373074 m!2780081))

(assert (=> b!2373074 m!2780085))

(assert (=> bm!144230 m!2780075))

(declare-fun m!2780087 () Bool)

(assert (=> b!2373071 m!2780087))

(assert (=> d!695623 m!2780075))

(declare-fun m!2780089 () Bool)

(assert (=> d!695623 m!2780089))

(assert (=> b!2372853 d!695623))

(declare-fun d!695625 () Bool)

(assert (=> d!695625 (= (matchR!3069 r!13927 s!9460) (matchRSpec!801 r!13927 s!9460))))

(declare-fun lt!866541 () Unit!40939)

(declare-fun choose!13824 (Regex!6952 List!28142) Unit!40939)

(assert (=> d!695625 (= lt!866541 (choose!13824 r!13927 s!9460))))

(assert (=> d!695625 (validRegex!2679 r!13927)))

(assert (=> d!695625 (= (mainMatchTheorem!801 r!13927 s!9460) lt!866541)))

(declare-fun bs!461367 () Bool)

(assert (= bs!461367 d!695625))

(assert (=> bs!461367 m!2779975))

(assert (=> bs!461367 m!2779973))

(declare-fun m!2780091 () Bool)

(assert (=> bs!461367 m!2780091))

(assert (=> bs!461367 m!2780089))

(assert (=> b!2372853 d!695625))

(declare-fun d!695627 () Bool)

(assert (=> d!695627 (= (isEmpty!15979 l!9164) (is-Nil!28045 l!9164))))

(assert (=> b!2372864 d!695627))

(declare-fun bs!461368 () Bool)

(declare-fun d!695629 () Bool)

(assert (= bs!461368 (and d!695629 start!232866)))

(declare-fun lambda!87967 () Int)

(assert (=> bs!461368 (= lambda!87967 lambda!87944)))

(declare-fun bs!461369 () Bool)

(assert (= bs!461369 (and d!695629 d!695617)))

(assert (=> bs!461369 (= lambda!87967 lambda!87960)))

(declare-fun b!2373080 () Bool)

(declare-fun e!1514399 () Regex!6952)

(assert (=> b!2373080 (= e!1514399 (Concat!11588 (h!33446 l!9164) (generalisedConcat!53 (t!208120 l!9164))))))

(declare-fun b!2373081 () Bool)

(assert (=> b!2373081 (= e!1514399 EmptyExpr!6952)))

(declare-fun b!2373082 () Bool)

(declare-fun e!1514403 () Bool)

(declare-fun e!1514400 () Bool)

(assert (=> b!2373082 (= e!1514403 e!1514400)))

(declare-fun c!377209 () Bool)

(assert (=> b!2373082 (= c!377209 (isEmpty!15979 l!9164))))

(declare-fun b!2373083 () Bool)

(declare-fun e!1514402 () Bool)

(declare-fun lt!866542 () Regex!6952)

(assert (=> b!2373083 (= e!1514402 (isConcat!30 lt!866542))))

(assert (=> d!695629 e!1514403))

(declare-fun res!1007416 () Bool)

(assert (=> d!695629 (=> (not res!1007416) (not e!1514403))))

(assert (=> d!695629 (= res!1007416 (validRegex!2679 lt!866542))))

(declare-fun e!1514401 () Regex!6952)

(assert (=> d!695629 (= lt!866542 e!1514401)))

(declare-fun c!377211 () Bool)

(declare-fun e!1514404 () Bool)

(assert (=> d!695629 (= c!377211 e!1514404)))

(declare-fun res!1007417 () Bool)

(assert (=> d!695629 (=> (not res!1007417) (not e!1514404))))

(assert (=> d!695629 (= res!1007417 (is-Cons!28045 l!9164))))

(assert (=> d!695629 (forall!5586 l!9164 lambda!87967)))

(assert (=> d!695629 (= (generalisedConcat!53 l!9164) lt!866542)))

(declare-fun b!2373084 () Bool)

(assert (=> b!2373084 (= e!1514402 (= lt!866542 (head!5143 l!9164)))))

(declare-fun b!2373085 () Bool)

(assert (=> b!2373085 (= e!1514401 (h!33446 l!9164))))

(declare-fun b!2373086 () Bool)

(assert (=> b!2373086 (= e!1514400 (isEmptyExpr!30 lt!866542))))

(declare-fun b!2373087 () Bool)

(assert (=> b!2373087 (= e!1514400 e!1514402)))

(declare-fun c!377212 () Bool)

(assert (=> b!2373087 (= c!377212 (isEmpty!15979 (tail!3413 l!9164)))))

(declare-fun b!2373088 () Bool)

(assert (=> b!2373088 (= e!1514404 (isEmpty!15979 (t!208120 l!9164)))))

(declare-fun b!2373089 () Bool)

(assert (=> b!2373089 (= e!1514401 e!1514399)))

(declare-fun c!377210 () Bool)

(assert (=> b!2373089 (= c!377210 (is-Cons!28045 l!9164))))

(assert (= (and d!695629 res!1007417) b!2373088))

(assert (= (and d!695629 c!377211) b!2373085))

(assert (= (and d!695629 (not c!377211)) b!2373089))

(assert (= (and b!2373089 c!377210) b!2373080))

(assert (= (and b!2373089 (not c!377210)) b!2373081))

(assert (= (and d!695629 res!1007416) b!2373082))

(assert (= (and b!2373082 c!377209) b!2373086))

(assert (= (and b!2373082 (not c!377209)) b!2373087))

(assert (= (and b!2373087 c!377212) b!2373084))

(assert (= (and b!2373087 (not c!377212)) b!2373083))

(declare-fun m!2780093 () Bool)

(assert (=> b!2373086 m!2780093))

(declare-fun m!2780095 () Bool)

(assert (=> d!695629 m!2780095))

(declare-fun m!2780097 () Bool)

(assert (=> d!695629 m!2780097))

(assert (=> b!2373084 m!2779963))

(declare-fun m!2780099 () Bool)

(assert (=> b!2373080 m!2780099))

(declare-fun m!2780101 () Bool)

(assert (=> b!2373088 m!2780101))

(declare-fun m!2780103 () Bool)

(assert (=> b!2373083 m!2780103))

(assert (=> b!2373082 m!2779967))

(assert (=> b!2373087 m!2779971))

(assert (=> b!2373087 m!2779971))

(declare-fun m!2780105 () Bool)

(assert (=> b!2373087 m!2780105))

(assert (=> b!2372862 d!695629))

(declare-fun d!695631 () Bool)

(declare-fun res!1007422 () Bool)

(declare-fun e!1514409 () Bool)

(assert (=> d!695631 (=> res!1007422 e!1514409)))

(assert (=> d!695631 (= res!1007422 (is-Nil!28045 l!9164))))

(assert (=> d!695631 (= (forall!5586 l!9164 lambda!87944) e!1514409)))

(declare-fun b!2373094 () Bool)

(declare-fun e!1514410 () Bool)

(assert (=> b!2373094 (= e!1514409 e!1514410)))

(declare-fun res!1007423 () Bool)

(assert (=> b!2373094 (=> (not res!1007423) (not e!1514410))))

(declare-fun dynLambda!12076 (Int Regex!6952) Bool)

(assert (=> b!2373094 (= res!1007423 (dynLambda!12076 lambda!87944 (h!33446 l!9164)))))

(declare-fun b!2373095 () Bool)

(assert (=> b!2373095 (= e!1514410 (forall!5586 (t!208120 l!9164) lambda!87944))))

(assert (= (and d!695631 (not res!1007422)) b!2373094))

(assert (= (and b!2373094 res!1007423) b!2373095))

(declare-fun b_lambda!73963 () Bool)

(assert (=> (not b_lambda!73963) (not b!2373094)))

(declare-fun m!2780107 () Bool)

(assert (=> b!2373094 m!2780107))

(declare-fun m!2780109 () Bool)

(assert (=> b!2373095 m!2780109))

(assert (=> start!232866 d!695631))

(declare-fun bm!144240 () Bool)

(declare-fun call!144245 () Bool)

(declare-fun c!377221 () Bool)

(assert (=> bm!144240 (= call!144245 (validRegex!2679 (ite c!377221 (regOne!14417 lt!866486) (regTwo!14416 lt!866486))))))

(declare-fun d!695633 () Bool)

(declare-fun res!1007444 () Bool)

(declare-fun e!1514436 () Bool)

(assert (=> d!695633 (=> res!1007444 e!1514436)))

(assert (=> d!695633 (= res!1007444 (is-ElementMatch!6952 lt!866486))))

(assert (=> d!695633 (= (validRegex!2679 lt!866486) e!1514436)))

(declare-fun b!2373128 () Bool)

(declare-fun res!1007446 () Bool)

(declare-fun e!1514438 () Bool)

(assert (=> b!2373128 (=> res!1007446 e!1514438)))

(assert (=> b!2373128 (= res!1007446 (not (is-Concat!11588 lt!866486)))))

(declare-fun e!1514437 () Bool)

(assert (=> b!2373128 (= e!1514437 e!1514438)))

(declare-fun bm!144241 () Bool)

(declare-fun call!144247 () Bool)

(declare-fun call!144246 () Bool)

(assert (=> bm!144241 (= call!144247 call!144246)))

(declare-fun b!2373129 () Bool)

(declare-fun e!1514435 () Bool)

(declare-fun e!1514434 () Bool)

(assert (=> b!2373129 (= e!1514435 e!1514434)))

(declare-fun res!1007443 () Bool)

(assert (=> b!2373129 (= res!1007443 (not (nullable!2008 (reg!7281 lt!866486))))))

(assert (=> b!2373129 (=> (not res!1007443) (not e!1514434))))

(declare-fun b!2373130 () Bool)

(declare-fun e!1514433 () Bool)

(assert (=> b!2373130 (= e!1514433 call!144245)))

(declare-fun b!2373131 () Bool)

(assert (=> b!2373131 (= e!1514435 e!1514437)))

(assert (=> b!2373131 (= c!377221 (is-Union!6952 lt!866486))))

(declare-fun b!2373132 () Bool)

(declare-fun e!1514432 () Bool)

(assert (=> b!2373132 (= e!1514432 call!144247)))

(declare-fun c!377220 () Bool)

(declare-fun bm!144242 () Bool)

(assert (=> bm!144242 (= call!144246 (validRegex!2679 (ite c!377220 (reg!7281 lt!866486) (ite c!377221 (regTwo!14417 lt!866486) (regOne!14416 lt!866486)))))))

(declare-fun b!2373133 () Bool)

(declare-fun res!1007442 () Bool)

(assert (=> b!2373133 (=> (not res!1007442) (not e!1514432))))

(assert (=> b!2373133 (= res!1007442 call!144245)))

(assert (=> b!2373133 (= e!1514437 e!1514432)))

(declare-fun b!2373134 () Bool)

(assert (=> b!2373134 (= e!1514436 e!1514435)))

(assert (=> b!2373134 (= c!377220 (is-Star!6952 lt!866486))))

(declare-fun b!2373135 () Bool)

(assert (=> b!2373135 (= e!1514438 e!1514433)))

(declare-fun res!1007445 () Bool)

(assert (=> b!2373135 (=> (not res!1007445) (not e!1514433))))

(assert (=> b!2373135 (= res!1007445 call!144247)))

(declare-fun b!2373136 () Bool)

(assert (=> b!2373136 (= e!1514434 call!144246)))

(assert (= (and d!695633 (not res!1007444)) b!2373134))

(assert (= (and b!2373134 c!377220) b!2373129))

(assert (= (and b!2373134 (not c!377220)) b!2373131))

(assert (= (and b!2373129 res!1007443) b!2373136))

(assert (= (and b!2373131 c!377221) b!2373133))

(assert (= (and b!2373131 (not c!377221)) b!2373128))

(assert (= (and b!2373133 res!1007442) b!2373132))

(assert (= (and b!2373128 (not res!1007446)) b!2373135))

(assert (= (and b!2373135 res!1007445) b!2373130))

(assert (= (or b!2373133 b!2373130) bm!144240))

(assert (= (or b!2373132 b!2373135) bm!144241))

(assert (= (or b!2373136 bm!144241) bm!144242))

(declare-fun m!2780125 () Bool)

(assert (=> bm!144240 m!2780125))

(declare-fun m!2780127 () Bool)

(assert (=> b!2373129 m!2780127))

(declare-fun m!2780129 () Bool)

(assert (=> bm!144242 m!2780129))

(assert (=> b!2372856 d!695633))

(declare-fun d!695639 () Bool)

(assert (=> d!695639 (= (isEmpty!15979 lt!866491) (is-Nil!28045 lt!866491))))

(assert (=> b!2372866 d!695639))

(declare-fun d!695641 () Bool)

(assert (=> d!695641 (= (tail!3413 l!9164) (t!208120 l!9164))))

(assert (=> b!2372866 d!695641))

(declare-fun d!695643 () Bool)

(declare-fun choose!13825 (Int) Bool)

(assert (=> d!695643 (= (Exists!1014 lambda!87946) (choose!13825 lambda!87946))))

(declare-fun bs!461370 () Bool)

(assert (= bs!461370 d!695643))

(declare-fun m!2780131 () Bool)

(assert (=> bs!461370 m!2780131))

(assert (=> b!2372854 d!695643))

(declare-fun d!695645 () Bool)

(declare-fun isEmpty!15982 (Option!5495) Bool)

(assert (=> d!695645 (= (isDefined!4323 (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) Nil!28044 s!9460 s!9460)) (not (isEmpty!15982 (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) Nil!28044 s!9460 s!9460))))))

(declare-fun bs!461371 () Bool)

(assert (= bs!461371 d!695645))

(assert (=> bs!461371 m!2779955))

(declare-fun m!2780133 () Bool)

(assert (=> bs!461371 m!2780133))

(assert (=> b!2372854 d!695645))

(declare-fun d!695647 () Bool)

(assert (=> d!695647 (= (Exists!1014 lambda!87945) (choose!13825 lambda!87945))))

(declare-fun bs!461372 () Bool)

(assert (= bs!461372 d!695647))

(declare-fun m!2780135 () Bool)

(assert (=> bs!461372 m!2780135))

(assert (=> b!2372854 d!695647))

(declare-fun bs!461373 () Bool)

(declare-fun d!695649 () Bool)

(assert (= bs!461373 (and d!695649 b!2372854)))

(declare-fun lambda!87970 () Int)

(assert (=> bs!461373 (= lambda!87970 lambda!87945)))

(assert (=> bs!461373 (not (= lambda!87970 lambda!87946))))

(declare-fun bs!461374 () Bool)

(assert (= bs!461374 (and d!695649 b!2373006)))

(assert (=> bs!461374 (not (= lambda!87970 lambda!87965))))

(declare-fun bs!461375 () Bool)

(assert (= bs!461375 (and d!695649 b!2373007)))

(assert (=> bs!461375 (not (= lambda!87970 lambda!87966))))

(assert (=> d!695649 true))

(assert (=> d!695649 true))

(assert (=> d!695649 true))

(assert (=> d!695649 (= (isDefined!4323 (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) Nil!28044 s!9460 s!9460)) (Exists!1014 lambda!87970))))

(declare-fun lt!866546 () Unit!40939)

(declare-fun choose!13826 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> d!695649 (= lt!866546 (choose!13826 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460))))

(assert (=> d!695649 (validRegex!2679 (regOne!14416 r!13927))))

(assert (=> d!695649 (= (lemmaFindConcatSeparationEquivalentToExists!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460) lt!866546)))

(declare-fun bs!461376 () Bool)

(assert (= bs!461376 d!695649))

(declare-fun m!2780137 () Bool)

(assert (=> bs!461376 m!2780137))

(declare-fun m!2780139 () Bool)

(assert (=> bs!461376 m!2780139))

(assert (=> bs!461376 m!2779955))

(assert (=> bs!461376 m!2779955))

(assert (=> bs!461376 m!2779959))

(declare-fun m!2780141 () Bool)

(assert (=> bs!461376 m!2780141))

(assert (=> b!2372854 d!695649))

(declare-fun bs!461377 () Bool)

(declare-fun d!695651 () Bool)

(assert (= bs!461377 (and d!695651 b!2372854)))

(declare-fun lambda!87978 () Int)

(assert (=> bs!461377 (= lambda!87978 lambda!87945)))

(declare-fun bs!461378 () Bool)

(assert (= bs!461378 (and d!695651 b!2373007)))

(assert (=> bs!461378 (not (= lambda!87978 lambda!87966))))

(declare-fun bs!461379 () Bool)

(assert (= bs!461379 (and d!695651 d!695649)))

(assert (=> bs!461379 (= lambda!87978 lambda!87970)))

(assert (=> bs!461377 (not (= lambda!87978 lambda!87946))))

(declare-fun bs!461380 () Bool)

(assert (= bs!461380 (and d!695651 b!2373006)))

(assert (=> bs!461380 (not (= lambda!87978 lambda!87965))))

(assert (=> d!695651 true))

(assert (=> d!695651 true))

(assert (=> d!695651 true))

(declare-fun lambda!87980 () Int)

(assert (=> bs!461377 (not (= lambda!87980 lambda!87945))))

(declare-fun bs!461381 () Bool)

(assert (= bs!461381 d!695651))

(assert (=> bs!461381 (not (= lambda!87980 lambda!87978))))

(assert (=> bs!461378 (= lambda!87980 lambda!87966)))

(assert (=> bs!461379 (not (= lambda!87980 lambda!87970))))

(assert (=> bs!461377 (= lambda!87980 lambda!87946)))

(assert (=> bs!461380 (not (= lambda!87980 lambda!87965))))

(assert (=> d!695651 true))

(assert (=> d!695651 true))

(assert (=> d!695651 true))

(assert (=> d!695651 (= (Exists!1014 lambda!87978) (Exists!1014 lambda!87980))))

(declare-fun lt!866549 () Unit!40939)

(declare-fun choose!13827 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> d!695651 (= lt!866549 (choose!13827 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460))))

(assert (=> d!695651 (validRegex!2679 (regOne!14416 r!13927))))

(assert (=> d!695651 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!353 (regOne!14416 r!13927) (regTwo!14416 r!13927) s!9460) lt!866549)))

(declare-fun m!2780143 () Bool)

(assert (=> bs!461381 m!2780143))

(declare-fun m!2780145 () Bool)

(assert (=> bs!461381 m!2780145))

(declare-fun m!2780147 () Bool)

(assert (=> bs!461381 m!2780147))

(assert (=> bs!461381 m!2780137))

(assert (=> b!2372854 d!695651))

(declare-fun d!695653 () Bool)

(declare-fun e!1514483 () Bool)

(assert (=> d!695653 e!1514483))

(declare-fun res!1007491 () Bool)

(assert (=> d!695653 (=> res!1007491 e!1514483)))

(declare-fun e!1514484 () Bool)

(assert (=> d!695653 (= res!1007491 e!1514484)))

(declare-fun res!1007492 () Bool)

(assert (=> d!695653 (=> (not res!1007492) (not e!1514484))))

(declare-fun lt!866556 () Option!5495)

(assert (=> d!695653 (= res!1007492 (isDefined!4323 lt!866556))))

(declare-fun e!1514481 () Option!5495)

(assert (=> d!695653 (= lt!866556 e!1514481)))

(declare-fun c!377239 () Bool)

(declare-fun e!1514482 () Bool)

(assert (=> d!695653 (= c!377239 e!1514482)))

(declare-fun res!1007488 () Bool)

(assert (=> d!695653 (=> (not res!1007488) (not e!1514482))))

(assert (=> d!695653 (= res!1007488 (matchR!3069 (regOne!14416 r!13927) Nil!28044))))

(assert (=> d!695653 (validRegex!2679 (regOne!14416 r!13927))))

(assert (=> d!695653 (= (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) Nil!28044 s!9460 s!9460) lt!866556)))

(declare-fun b!2373210 () Bool)

(declare-fun get!8532 (Option!5495) tuple2!27768)

(assert (=> b!2373210 (= e!1514484 (= (++!6912 (_1!16425 (get!8532 lt!866556)) (_2!16425 (get!8532 lt!866556))) s!9460))))

(declare-fun b!2373211 () Bool)

(declare-fun res!1007489 () Bool)

(assert (=> b!2373211 (=> (not res!1007489) (not e!1514484))))

(assert (=> b!2373211 (= res!1007489 (matchR!3069 (regOne!14416 r!13927) (_1!16425 (get!8532 lt!866556))))))

(declare-fun b!2373212 () Bool)

(assert (=> b!2373212 (= e!1514482 (matchR!3069 (regTwo!14416 r!13927) s!9460))))

(declare-fun b!2373213 () Bool)

(assert (=> b!2373213 (= e!1514481 (Some!5494 (tuple2!27769 Nil!28044 s!9460)))))

(declare-fun b!2373214 () Bool)

(declare-fun e!1514480 () Option!5495)

(assert (=> b!2373214 (= e!1514481 e!1514480)))

(declare-fun c!377238 () Bool)

(assert (=> b!2373214 (= c!377238 (is-Nil!28044 s!9460))))

(declare-fun b!2373215 () Bool)

(declare-fun res!1007490 () Bool)

(assert (=> b!2373215 (=> (not res!1007490) (not e!1514484))))

(assert (=> b!2373215 (= res!1007490 (matchR!3069 (regTwo!14416 r!13927) (_2!16425 (get!8532 lt!866556))))))

(declare-fun b!2373216 () Bool)

(assert (=> b!2373216 (= e!1514480 None!5494)))

(declare-fun b!2373217 () Bool)

(assert (=> b!2373217 (= e!1514483 (not (isDefined!4323 lt!866556)))))

(declare-fun b!2373218 () Bool)

(declare-fun lt!866557 () Unit!40939)

(declare-fun lt!866558 () Unit!40939)

(assert (=> b!2373218 (= lt!866557 lt!866558)))

(assert (=> b!2373218 (= (++!6912 (++!6912 Nil!28044 (Cons!28044 (h!33445 s!9460) Nil!28044)) (t!208119 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!556 (List!28142 C!14062 List!28142 List!28142) Unit!40939)

(assert (=> b!2373218 (= lt!866558 (lemmaMoveElementToOtherListKeepsConcatEq!556 Nil!28044 (h!33445 s!9460) (t!208119 s!9460) s!9460))))

(assert (=> b!2373218 (= e!1514480 (findConcatSeparation!603 (regOne!14416 r!13927) (regTwo!14416 r!13927) (++!6912 Nil!28044 (Cons!28044 (h!33445 s!9460) Nil!28044)) (t!208119 s!9460) s!9460))))

(assert (= (and d!695653 res!1007488) b!2373212))

(assert (= (and d!695653 c!377239) b!2373213))

(assert (= (and d!695653 (not c!377239)) b!2373214))

(assert (= (and b!2373214 c!377238) b!2373216))

(assert (= (and b!2373214 (not c!377238)) b!2373218))

(assert (= (and d!695653 res!1007492) b!2373211))

(assert (= (and b!2373211 res!1007489) b!2373215))

(assert (= (and b!2373215 res!1007490) b!2373210))

(assert (= (and d!695653 (not res!1007491)) b!2373217))

(declare-fun m!2780151 () Bool)

(assert (=> b!2373211 m!2780151))

(declare-fun m!2780155 () Bool)

(assert (=> b!2373211 m!2780155))

(declare-fun m!2780159 () Bool)

(assert (=> d!695653 m!2780159))

(declare-fun m!2780161 () Bool)

(assert (=> d!695653 m!2780161))

(assert (=> d!695653 m!2780137))

(assert (=> b!2373217 m!2780159))

(declare-fun m!2780163 () Bool)

(assert (=> b!2373212 m!2780163))

(assert (=> b!2373215 m!2780151))

(declare-fun m!2780165 () Bool)

(assert (=> b!2373215 m!2780165))

(assert (=> b!2373210 m!2780151))

(declare-fun m!2780167 () Bool)

(assert (=> b!2373210 m!2780167))

(declare-fun m!2780169 () Bool)

(assert (=> b!2373218 m!2780169))

(assert (=> b!2373218 m!2780169))

(declare-fun m!2780171 () Bool)

(assert (=> b!2373218 m!2780171))

(declare-fun m!2780173 () Bool)

(assert (=> b!2373218 m!2780173))

(assert (=> b!2373218 m!2780169))

(declare-fun m!2780175 () Bool)

(assert (=> b!2373218 m!2780175))

(assert (=> b!2372854 d!695653))

(declare-fun d!695657 () Bool)

(assert (=> d!695657 (matchR!3069 (Concat!11588 lt!866487 EmptyExpr!6952) (++!6912 s!9460 Nil!28044))))

(declare-fun lt!866562 () Unit!40939)

(declare-fun choose!13828 (Regex!6952 Regex!6952 List!28142 List!28142) Unit!40939)

(assert (=> d!695657 (= lt!866562 (choose!13828 lt!866487 EmptyExpr!6952 s!9460 Nil!28044))))

(declare-fun e!1514494 () Bool)

(assert (=> d!695657 e!1514494))

(declare-fun res!1007503 () Bool)

(assert (=> d!695657 (=> (not res!1007503) (not e!1514494))))

(assert (=> d!695657 (= res!1007503 (validRegex!2679 lt!866487))))

(assert (=> d!695657 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!25 lt!866487 EmptyExpr!6952 s!9460 Nil!28044) lt!866562)))

(declare-fun b!2373235 () Bool)

(assert (=> b!2373235 (= e!1514494 (validRegex!2679 EmptyExpr!6952))))

(assert (= (and d!695657 res!1007503) b!2373235))

(assert (=> d!695657 m!2779983))

(assert (=> d!695657 m!2779983))

(declare-fun m!2780185 () Bool)

(assert (=> d!695657 m!2780185))

(declare-fun m!2780187 () Bool)

(assert (=> d!695657 m!2780187))

(assert (=> d!695657 m!2779989))

(declare-fun m!2780189 () Bool)

(assert (=> b!2373235 m!2780189))

(assert (=> b!2372858 d!695657))

(declare-fun b!2373236 () Bool)

(declare-fun e!1514498 () Bool)

(assert (=> b!2373236 (= e!1514498 (= (head!5145 (++!6912 s!9460 Nil!28044)) (c!377168 lt!866494)))))

(declare-fun b!2373237 () Bool)

(declare-fun e!1514500 () Bool)

(declare-fun lt!866563 () Bool)

(assert (=> b!2373237 (= e!1514500 (not lt!866563))))

(declare-fun b!2373239 () Bool)

(declare-fun res!1007506 () Bool)

(assert (=> b!2373239 (=> (not res!1007506) (not e!1514498))))

(assert (=> b!2373239 (= res!1007506 (isEmpty!15981 (tail!3415 (++!6912 s!9460 Nil!28044))))))

(declare-fun b!2373240 () Bool)

(declare-fun e!1514495 () Bool)

(declare-fun e!1514497 () Bool)

(assert (=> b!2373240 (= e!1514495 e!1514497)))

(declare-fun res!1007509 () Bool)

(assert (=> b!2373240 (=> (not res!1007509) (not e!1514497))))

(assert (=> b!2373240 (= res!1007509 (not lt!866563))))

(declare-fun b!2373241 () Bool)

(declare-fun e!1514496 () Bool)

(assert (=> b!2373241 (= e!1514496 (nullable!2008 lt!866494))))

(declare-fun b!2373242 () Bool)

(declare-fun e!1514499 () Bool)

(declare-fun call!144255 () Bool)

(assert (=> b!2373242 (= e!1514499 (= lt!866563 call!144255))))

(declare-fun b!2373243 () Bool)

(declare-fun e!1514501 () Bool)

(assert (=> b!2373243 (= e!1514501 (not (= (head!5145 (++!6912 s!9460 Nil!28044)) (c!377168 lt!866494))))))

(declare-fun b!2373244 () Bool)

(declare-fun res!1007507 () Bool)

(assert (=> b!2373244 (=> res!1007507 e!1514501)))

(assert (=> b!2373244 (= res!1007507 (not (isEmpty!15981 (tail!3415 (++!6912 s!9460 Nil!28044)))))))

(declare-fun bm!144250 () Bool)

(assert (=> bm!144250 (= call!144255 (isEmpty!15981 (++!6912 s!9460 Nil!28044)))))

(declare-fun b!2373245 () Bool)

(assert (=> b!2373245 (= e!1514496 (matchR!3069 (derivativeStep!1666 lt!866494 (head!5145 (++!6912 s!9460 Nil!28044))) (tail!3415 (++!6912 s!9460 Nil!28044))))))

(declare-fun b!2373246 () Bool)

(assert (=> b!2373246 (= e!1514497 e!1514501)))

(declare-fun res!1007504 () Bool)

(assert (=> b!2373246 (=> res!1007504 e!1514501)))

(assert (=> b!2373246 (= res!1007504 call!144255)))

(declare-fun b!2373238 () Bool)

(declare-fun res!1007511 () Bool)

(assert (=> b!2373238 (=> res!1007511 e!1514495)))

(assert (=> b!2373238 (= res!1007511 (not (is-ElementMatch!6952 lt!866494)))))

(assert (=> b!2373238 (= e!1514500 e!1514495)))

(declare-fun d!695661 () Bool)

(assert (=> d!695661 e!1514499))

(declare-fun c!377244 () Bool)

(assert (=> d!695661 (= c!377244 (is-EmptyExpr!6952 lt!866494))))

(assert (=> d!695661 (= lt!866563 e!1514496)))

(declare-fun c!377243 () Bool)

(assert (=> d!695661 (= c!377243 (isEmpty!15981 (++!6912 s!9460 Nil!28044)))))

(assert (=> d!695661 (validRegex!2679 lt!866494)))

(assert (=> d!695661 (= (matchR!3069 lt!866494 (++!6912 s!9460 Nil!28044)) lt!866563)))

(declare-fun b!2373247 () Bool)

(declare-fun res!1007508 () Bool)

(assert (=> b!2373247 (=> (not res!1007508) (not e!1514498))))

(assert (=> b!2373247 (= res!1007508 (not call!144255))))

(declare-fun b!2373248 () Bool)

(declare-fun res!1007505 () Bool)

(assert (=> b!2373248 (=> res!1007505 e!1514495)))

(assert (=> b!2373248 (= res!1007505 e!1514498)))

(declare-fun res!1007510 () Bool)

(assert (=> b!2373248 (=> (not res!1007510) (not e!1514498))))

(assert (=> b!2373248 (= res!1007510 lt!866563)))

(declare-fun b!2373249 () Bool)

(assert (=> b!2373249 (= e!1514499 e!1514500)))

(declare-fun c!377245 () Bool)

(assert (=> b!2373249 (= c!377245 (is-EmptyLang!6952 lt!866494))))

(assert (= (and d!695661 c!377243) b!2373241))

(assert (= (and d!695661 (not c!377243)) b!2373245))

(assert (= (and d!695661 c!377244) b!2373242))

(assert (= (and d!695661 (not c!377244)) b!2373249))

(assert (= (and b!2373249 c!377245) b!2373237))

(assert (= (and b!2373249 (not c!377245)) b!2373238))

(assert (= (and b!2373238 (not res!1007511)) b!2373248))

(assert (= (and b!2373248 res!1007510) b!2373247))

(assert (= (and b!2373247 res!1007508) b!2373239))

(assert (= (and b!2373239 res!1007506) b!2373236))

(assert (= (and b!2373248 (not res!1007505)) b!2373240))

(assert (= (and b!2373240 res!1007509) b!2373246))

(assert (= (and b!2373246 (not res!1007504)) b!2373244))

(assert (= (and b!2373244 (not res!1007507)) b!2373243))

(assert (= (or b!2373242 b!2373246 b!2373247) bm!144250))

(assert (=> b!2373245 m!2779983))

(declare-fun m!2780191 () Bool)

(assert (=> b!2373245 m!2780191))

(assert (=> b!2373245 m!2780191))

(declare-fun m!2780193 () Bool)

(assert (=> b!2373245 m!2780193))

(assert (=> b!2373245 m!2779983))

(declare-fun m!2780195 () Bool)

(assert (=> b!2373245 m!2780195))

(assert (=> b!2373245 m!2780193))

(assert (=> b!2373245 m!2780195))

(declare-fun m!2780197 () Bool)

(assert (=> b!2373245 m!2780197))

(assert (=> b!2373243 m!2779983))

(assert (=> b!2373243 m!2780191))

(assert (=> b!2373236 m!2779983))

(assert (=> b!2373236 m!2780191))

(assert (=> b!2373239 m!2779983))

(assert (=> b!2373239 m!2780195))

(assert (=> b!2373239 m!2780195))

(declare-fun m!2780199 () Bool)

(assert (=> b!2373239 m!2780199))

(assert (=> b!2373244 m!2779983))

(assert (=> b!2373244 m!2780195))

(assert (=> b!2373244 m!2780195))

(assert (=> b!2373244 m!2780199))

(assert (=> bm!144250 m!2779983))

(declare-fun m!2780201 () Bool)

(assert (=> bm!144250 m!2780201))

(declare-fun m!2780203 () Bool)

(assert (=> b!2373241 m!2780203))

(assert (=> d!695661 m!2779983))

(assert (=> d!695661 m!2780201))

(declare-fun m!2780205 () Bool)

(assert (=> d!695661 m!2780205))

(assert (=> b!2372858 d!695661))

(declare-fun b!2373258 () Bool)

(declare-fun e!1514506 () List!28142)

(assert (=> b!2373258 (= e!1514506 Nil!28044)))

(declare-fun b!2373259 () Bool)

(assert (=> b!2373259 (= e!1514506 (Cons!28044 (h!33445 s!9460) (++!6912 (t!208119 s!9460) Nil!28044)))))

(declare-fun b!2373261 () Bool)

(declare-fun e!1514507 () Bool)

(declare-fun lt!866569 () List!28142)

(assert (=> b!2373261 (= e!1514507 (or (not (= Nil!28044 Nil!28044)) (= lt!866569 s!9460)))))

(declare-fun b!2373260 () Bool)

(declare-fun res!1007516 () Bool)

(assert (=> b!2373260 (=> (not res!1007516) (not e!1514507))))

(declare-fun size!22152 (List!28142) Int)

(assert (=> b!2373260 (= res!1007516 (= (size!22152 lt!866569) (+ (size!22152 s!9460) (size!22152 Nil!28044))))))

(declare-fun d!695663 () Bool)

(assert (=> d!695663 e!1514507))

(declare-fun res!1007517 () Bool)

(assert (=> d!695663 (=> (not res!1007517) (not e!1514507))))

(declare-fun content!3814 (List!28142) (Set C!14062))

(assert (=> d!695663 (= res!1007517 (= (content!3814 lt!866569) (set.union (content!3814 s!9460) (content!3814 Nil!28044))))))

(assert (=> d!695663 (= lt!866569 e!1514506)))

(declare-fun c!377248 () Bool)

(assert (=> d!695663 (= c!377248 (is-Nil!28044 s!9460))))

(assert (=> d!695663 (= (++!6912 s!9460 Nil!28044) lt!866569)))

(assert (= (and d!695663 c!377248) b!2373258))

(assert (= (and d!695663 (not c!377248)) b!2373259))

(assert (= (and d!695663 res!1007517) b!2373260))

(assert (= (and b!2373260 res!1007516) b!2373261))

(declare-fun m!2780209 () Bool)

(assert (=> b!2373259 m!2780209))

(declare-fun m!2780211 () Bool)

(assert (=> b!2373260 m!2780211))

(declare-fun m!2780213 () Bool)

(assert (=> b!2373260 m!2780213))

(declare-fun m!2780215 () Bool)

(assert (=> b!2373260 m!2780215))

(declare-fun m!2780217 () Bool)

(assert (=> d!695663 m!2780217))

(declare-fun m!2780219 () Bool)

(assert (=> d!695663 m!2780219))

(declare-fun m!2780221 () Bool)

(assert (=> d!695663 m!2780221))

(assert (=> b!2372858 d!695663))

(declare-fun bm!144251 () Bool)

(declare-fun call!144256 () Bool)

(declare-fun c!377250 () Bool)

(assert (=> bm!144251 (= call!144256 (validRegex!2679 (ite c!377250 (regOne!14417 lt!866487) (regTwo!14416 lt!866487))))))

(declare-fun d!695667 () Bool)

(declare-fun res!1007520 () Bool)

(declare-fun e!1514512 () Bool)

(assert (=> d!695667 (=> res!1007520 e!1514512)))

(assert (=> d!695667 (= res!1007520 (is-ElementMatch!6952 lt!866487))))

(assert (=> d!695667 (= (validRegex!2679 lt!866487) e!1514512)))

(declare-fun b!2373262 () Bool)

(declare-fun res!1007522 () Bool)

(declare-fun e!1514514 () Bool)

(assert (=> b!2373262 (=> res!1007522 e!1514514)))

(assert (=> b!2373262 (= res!1007522 (not (is-Concat!11588 lt!866487)))))

(declare-fun e!1514513 () Bool)

(assert (=> b!2373262 (= e!1514513 e!1514514)))

(declare-fun bm!144252 () Bool)

(declare-fun call!144258 () Bool)

(declare-fun call!144257 () Bool)

(assert (=> bm!144252 (= call!144258 call!144257)))

(declare-fun b!2373263 () Bool)

(declare-fun e!1514511 () Bool)

(declare-fun e!1514510 () Bool)

(assert (=> b!2373263 (= e!1514511 e!1514510)))

(declare-fun res!1007519 () Bool)

(assert (=> b!2373263 (= res!1007519 (not (nullable!2008 (reg!7281 lt!866487))))))

(assert (=> b!2373263 (=> (not res!1007519) (not e!1514510))))

(declare-fun b!2373264 () Bool)

(declare-fun e!1514509 () Bool)

(assert (=> b!2373264 (= e!1514509 call!144256)))

(declare-fun b!2373265 () Bool)

(assert (=> b!2373265 (= e!1514511 e!1514513)))

(assert (=> b!2373265 (= c!377250 (is-Union!6952 lt!866487))))

(declare-fun b!2373266 () Bool)

(declare-fun e!1514508 () Bool)

(assert (=> b!2373266 (= e!1514508 call!144258)))

(declare-fun bm!144253 () Bool)

(declare-fun c!377249 () Bool)

(assert (=> bm!144253 (= call!144257 (validRegex!2679 (ite c!377249 (reg!7281 lt!866487) (ite c!377250 (regTwo!14417 lt!866487) (regOne!14416 lt!866487)))))))

(declare-fun b!2373267 () Bool)

(declare-fun res!1007518 () Bool)

(assert (=> b!2373267 (=> (not res!1007518) (not e!1514508))))

(assert (=> b!2373267 (= res!1007518 call!144256)))

(assert (=> b!2373267 (= e!1514513 e!1514508)))

(declare-fun b!2373268 () Bool)

(assert (=> b!2373268 (= e!1514512 e!1514511)))

(assert (=> b!2373268 (= c!377249 (is-Star!6952 lt!866487))))

(declare-fun b!2373269 () Bool)

(assert (=> b!2373269 (= e!1514514 e!1514509)))

(declare-fun res!1007521 () Bool)

(assert (=> b!2373269 (=> (not res!1007521) (not e!1514509))))

(assert (=> b!2373269 (= res!1007521 call!144258)))

(declare-fun b!2373270 () Bool)

(assert (=> b!2373270 (= e!1514510 call!144257)))

(assert (= (and d!695667 (not res!1007520)) b!2373268))

(assert (= (and b!2373268 c!377249) b!2373263))

(assert (= (and b!2373268 (not c!377249)) b!2373265))

(assert (= (and b!2373263 res!1007519) b!2373270))

(assert (= (and b!2373265 c!377250) b!2373267))

(assert (= (and b!2373265 (not c!377250)) b!2373262))

(assert (= (and b!2373267 res!1007518) b!2373266))

(assert (= (and b!2373262 (not res!1007522)) b!2373269))

(assert (= (and b!2373269 res!1007521) b!2373264))

(assert (= (or b!2373267 b!2373264) bm!144251))

(assert (= (or b!2373266 b!2373269) bm!144252))

(assert (= (or b!2373270 bm!144252) bm!144253))

(declare-fun m!2780223 () Bool)

(assert (=> bm!144251 m!2780223))

(declare-fun m!2780225 () Bool)

(assert (=> b!2373263 m!2780225))

(declare-fun m!2780227 () Bool)

(assert (=> bm!144253 m!2780227))

(assert (=> b!2372858 d!695667))

(declare-fun d!695669 () Bool)

(assert (=> d!695669 (isDefined!4323 (findConcatSeparation!603 lt!866487 EmptyExpr!6952 Nil!28044 s!9460 s!9460))))

(declare-fun lt!866572 () Unit!40939)

(declare-fun choose!13829 (Regex!6952 Regex!6952 List!28142) Unit!40939)

(assert (=> d!695669 (= lt!866572 (choose!13829 lt!866487 EmptyExpr!6952 s!9460))))

(assert (=> d!695669 (validRegex!2679 lt!866487)))

(assert (=> d!695669 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!7 lt!866487 EmptyExpr!6952 s!9460) lt!866572)))

(declare-fun bs!461386 () Bool)

(assert (= bs!461386 d!695669))

(assert (=> bs!461386 m!2779991))

(assert (=> bs!461386 m!2779991))

(assert (=> bs!461386 m!2779993))

(declare-fun m!2780229 () Bool)

(assert (=> bs!461386 m!2780229))

(assert (=> bs!461386 m!2779989))

(assert (=> b!2372858 d!695669))

(declare-fun d!695671 () Bool)

(assert (=> d!695671 (= (isDefined!4323 (findConcatSeparation!603 lt!866487 EmptyExpr!6952 Nil!28044 s!9460 s!9460)) (not (isEmpty!15982 (findConcatSeparation!603 lt!866487 EmptyExpr!6952 Nil!28044 s!9460 s!9460))))))

(declare-fun bs!461387 () Bool)

(assert (= bs!461387 d!695671))

(assert (=> bs!461387 m!2779991))

(declare-fun m!2780231 () Bool)

(assert (=> bs!461387 m!2780231))

(assert (=> b!2372858 d!695671))

(declare-fun d!695673 () Bool)

(declare-fun e!1514518 () Bool)

(assert (=> d!695673 e!1514518))

(declare-fun res!1007526 () Bool)

(assert (=> d!695673 (=> res!1007526 e!1514518)))

(declare-fun e!1514519 () Bool)

(assert (=> d!695673 (= res!1007526 e!1514519)))

(declare-fun res!1007527 () Bool)

(assert (=> d!695673 (=> (not res!1007527) (not e!1514519))))

(declare-fun lt!866573 () Option!5495)

(assert (=> d!695673 (= res!1007527 (isDefined!4323 lt!866573))))

(declare-fun e!1514516 () Option!5495)

(assert (=> d!695673 (= lt!866573 e!1514516)))

(declare-fun c!377252 () Bool)

(declare-fun e!1514517 () Bool)

(assert (=> d!695673 (= c!377252 e!1514517)))

(declare-fun res!1007523 () Bool)

(assert (=> d!695673 (=> (not res!1007523) (not e!1514517))))

(assert (=> d!695673 (= res!1007523 (matchR!3069 lt!866487 Nil!28044))))

(assert (=> d!695673 (validRegex!2679 lt!866487)))

(assert (=> d!695673 (= (findConcatSeparation!603 lt!866487 EmptyExpr!6952 Nil!28044 s!9460 s!9460) lt!866573)))

(declare-fun b!2373271 () Bool)

(assert (=> b!2373271 (= e!1514519 (= (++!6912 (_1!16425 (get!8532 lt!866573)) (_2!16425 (get!8532 lt!866573))) s!9460))))

(declare-fun b!2373272 () Bool)

(declare-fun res!1007524 () Bool)

(assert (=> b!2373272 (=> (not res!1007524) (not e!1514519))))

(assert (=> b!2373272 (= res!1007524 (matchR!3069 lt!866487 (_1!16425 (get!8532 lt!866573))))))

(declare-fun b!2373273 () Bool)

(assert (=> b!2373273 (= e!1514517 (matchR!3069 EmptyExpr!6952 s!9460))))

(declare-fun b!2373274 () Bool)

(assert (=> b!2373274 (= e!1514516 (Some!5494 (tuple2!27769 Nil!28044 s!9460)))))

(declare-fun b!2373275 () Bool)

(declare-fun e!1514515 () Option!5495)

(assert (=> b!2373275 (= e!1514516 e!1514515)))

(declare-fun c!377251 () Bool)

(assert (=> b!2373275 (= c!377251 (is-Nil!28044 s!9460))))

(declare-fun b!2373276 () Bool)

(declare-fun res!1007525 () Bool)

(assert (=> b!2373276 (=> (not res!1007525) (not e!1514519))))

(assert (=> b!2373276 (= res!1007525 (matchR!3069 EmptyExpr!6952 (_2!16425 (get!8532 lt!866573))))))

(declare-fun b!2373277 () Bool)

(assert (=> b!2373277 (= e!1514515 None!5494)))

(declare-fun b!2373278 () Bool)

(assert (=> b!2373278 (= e!1514518 (not (isDefined!4323 lt!866573)))))

(declare-fun b!2373279 () Bool)

(declare-fun lt!866574 () Unit!40939)

(declare-fun lt!866575 () Unit!40939)

(assert (=> b!2373279 (= lt!866574 lt!866575)))

(assert (=> b!2373279 (= (++!6912 (++!6912 Nil!28044 (Cons!28044 (h!33445 s!9460) Nil!28044)) (t!208119 s!9460)) s!9460)))

(assert (=> b!2373279 (= lt!866575 (lemmaMoveElementToOtherListKeepsConcatEq!556 Nil!28044 (h!33445 s!9460) (t!208119 s!9460) s!9460))))

(assert (=> b!2373279 (= e!1514515 (findConcatSeparation!603 lt!866487 EmptyExpr!6952 (++!6912 Nil!28044 (Cons!28044 (h!33445 s!9460) Nil!28044)) (t!208119 s!9460) s!9460))))

(assert (= (and d!695673 res!1007523) b!2373273))

(assert (= (and d!695673 c!377252) b!2373274))

(assert (= (and d!695673 (not c!377252)) b!2373275))

(assert (= (and b!2373275 c!377251) b!2373277))

(assert (= (and b!2373275 (not c!377251)) b!2373279))

(assert (= (and d!695673 res!1007527) b!2373272))

(assert (= (and b!2373272 res!1007524) b!2373276))

(assert (= (and b!2373276 res!1007525) b!2373271))

(assert (= (and d!695673 (not res!1007526)) b!2373278))

(declare-fun m!2780233 () Bool)

(assert (=> b!2373272 m!2780233))

(declare-fun m!2780235 () Bool)

(assert (=> b!2373272 m!2780235))

(declare-fun m!2780237 () Bool)

(assert (=> d!695673 m!2780237))

(declare-fun m!2780239 () Bool)

(assert (=> d!695673 m!2780239))

(assert (=> d!695673 m!2779989))

(assert (=> b!2373278 m!2780237))

(declare-fun m!2780241 () Bool)

(assert (=> b!2373273 m!2780241))

(assert (=> b!2373276 m!2780233))

(declare-fun m!2780243 () Bool)

(assert (=> b!2373276 m!2780243))

(assert (=> b!2373271 m!2780233))

(declare-fun m!2780245 () Bool)

(assert (=> b!2373271 m!2780245))

(assert (=> b!2373279 m!2780169))

(assert (=> b!2373279 m!2780169))

(assert (=> b!2373279 m!2780171))

(assert (=> b!2373279 m!2780173))

(assert (=> b!2373279 m!2780169))

(declare-fun m!2780247 () Bool)

(assert (=> b!2373279 m!2780247))

(assert (=> b!2372858 d!695673))

(declare-fun b!2373280 () Bool)

(declare-fun e!1514523 () Bool)

(assert (=> b!2373280 (= e!1514523 (= (head!5145 s!9460) (c!377168 lt!866487)))))

(declare-fun b!2373281 () Bool)

(declare-fun e!1514525 () Bool)

(declare-fun lt!866578 () Bool)

(assert (=> b!2373281 (= e!1514525 (not lt!866578))))

(declare-fun b!2373283 () Bool)

(declare-fun res!1007530 () Bool)

(assert (=> b!2373283 (=> (not res!1007530) (not e!1514523))))

(assert (=> b!2373283 (= res!1007530 (isEmpty!15981 (tail!3415 s!9460)))))

(declare-fun b!2373284 () Bool)

(declare-fun e!1514520 () Bool)

(declare-fun e!1514522 () Bool)

(assert (=> b!2373284 (= e!1514520 e!1514522)))

(declare-fun res!1007533 () Bool)

(assert (=> b!2373284 (=> (not res!1007533) (not e!1514522))))

(assert (=> b!2373284 (= res!1007533 (not lt!866578))))

(declare-fun b!2373285 () Bool)

(declare-fun e!1514521 () Bool)

(assert (=> b!2373285 (= e!1514521 (nullable!2008 lt!866487))))

(declare-fun b!2373286 () Bool)

(declare-fun e!1514524 () Bool)

(declare-fun call!144259 () Bool)

(assert (=> b!2373286 (= e!1514524 (= lt!866578 call!144259))))

(declare-fun b!2373287 () Bool)

(declare-fun e!1514526 () Bool)

(assert (=> b!2373287 (= e!1514526 (not (= (head!5145 s!9460) (c!377168 lt!866487))))))

(declare-fun b!2373288 () Bool)

(declare-fun res!1007531 () Bool)

(assert (=> b!2373288 (=> res!1007531 e!1514526)))

(assert (=> b!2373288 (= res!1007531 (not (isEmpty!15981 (tail!3415 s!9460))))))

(declare-fun bm!144254 () Bool)

(assert (=> bm!144254 (= call!144259 (isEmpty!15981 s!9460))))

(declare-fun b!2373289 () Bool)

(assert (=> b!2373289 (= e!1514521 (matchR!3069 (derivativeStep!1666 lt!866487 (head!5145 s!9460)) (tail!3415 s!9460)))))

(declare-fun b!2373290 () Bool)

(assert (=> b!2373290 (= e!1514522 e!1514526)))

(declare-fun res!1007528 () Bool)

(assert (=> b!2373290 (=> res!1007528 e!1514526)))

(assert (=> b!2373290 (= res!1007528 call!144259)))

(declare-fun b!2373282 () Bool)

(declare-fun res!1007535 () Bool)

(assert (=> b!2373282 (=> res!1007535 e!1514520)))

(assert (=> b!2373282 (= res!1007535 (not (is-ElementMatch!6952 lt!866487)))))

(assert (=> b!2373282 (= e!1514525 e!1514520)))

(declare-fun d!695675 () Bool)

(assert (=> d!695675 e!1514524))

(declare-fun c!377254 () Bool)

(assert (=> d!695675 (= c!377254 (is-EmptyExpr!6952 lt!866487))))

(assert (=> d!695675 (= lt!866578 e!1514521)))

(declare-fun c!377253 () Bool)

(assert (=> d!695675 (= c!377253 (isEmpty!15981 s!9460))))

(assert (=> d!695675 (validRegex!2679 lt!866487)))

(assert (=> d!695675 (= (matchR!3069 lt!866487 s!9460) lt!866578)))

(declare-fun b!2373291 () Bool)

(declare-fun res!1007532 () Bool)

(assert (=> b!2373291 (=> (not res!1007532) (not e!1514523))))

(assert (=> b!2373291 (= res!1007532 (not call!144259))))

(declare-fun b!2373292 () Bool)

(declare-fun res!1007529 () Bool)

(assert (=> b!2373292 (=> res!1007529 e!1514520)))

(assert (=> b!2373292 (= res!1007529 e!1514523)))

(declare-fun res!1007534 () Bool)

(assert (=> b!2373292 (=> (not res!1007534) (not e!1514523))))

(assert (=> b!2373292 (= res!1007534 lt!866578)))

(declare-fun b!2373293 () Bool)

(assert (=> b!2373293 (= e!1514524 e!1514525)))

(declare-fun c!377255 () Bool)

(assert (=> b!2373293 (= c!377255 (is-EmptyLang!6952 lt!866487))))

(assert (= (and d!695675 c!377253) b!2373285))

(assert (= (and d!695675 (not c!377253)) b!2373289))

(assert (= (and d!695675 c!377254) b!2373286))

(assert (= (and d!695675 (not c!377254)) b!2373293))

(assert (= (and b!2373293 c!377255) b!2373281))

(assert (= (and b!2373293 (not c!377255)) b!2373282))

(assert (= (and b!2373282 (not res!1007535)) b!2373292))

(assert (= (and b!2373292 res!1007534) b!2373291))

(assert (= (and b!2373291 res!1007532) b!2373283))

(assert (= (and b!2373283 res!1007530) b!2373280))

(assert (= (and b!2373292 (not res!1007529)) b!2373284))

(assert (= (and b!2373284 res!1007533) b!2373290))

(assert (= (and b!2373290 (not res!1007528)) b!2373288))

(assert (= (and b!2373288 (not res!1007531)) b!2373287))

(assert (= (or b!2373286 b!2373290 b!2373291) bm!144254))

(assert (=> b!2373289 m!2780077))

(assert (=> b!2373289 m!2780077))

(declare-fun m!2780249 () Bool)

(assert (=> b!2373289 m!2780249))

(assert (=> b!2373289 m!2780081))

(assert (=> b!2373289 m!2780249))

(assert (=> b!2373289 m!2780081))

(declare-fun m!2780251 () Bool)

(assert (=> b!2373289 m!2780251))

(assert (=> b!2373287 m!2780077))

(assert (=> b!2373280 m!2780077))

(assert (=> b!2373283 m!2780081))

(assert (=> b!2373283 m!2780081))

(assert (=> b!2373283 m!2780085))

(assert (=> b!2373288 m!2780081))

(assert (=> b!2373288 m!2780081))

(assert (=> b!2373288 m!2780085))

(assert (=> bm!144254 m!2780075))

(declare-fun m!2780253 () Bool)

(assert (=> b!2373285 m!2780253))

(assert (=> d!695675 m!2780075))

(assert (=> d!695675 m!2779989))

(assert (=> b!2372868 d!695675))

(declare-fun d!695677 () Bool)

(assert (=> d!695677 (= (head!5143 l!9164) (h!33446 l!9164))))

(assert (=> b!2372868 d!695677))

(declare-fun b!2373294 () Bool)

(declare-fun e!1514530 () Bool)

(assert (=> b!2373294 (= e!1514530 (= (head!5145 s!9460) (c!377168 lt!866494)))))

(declare-fun b!2373295 () Bool)

(declare-fun e!1514532 () Bool)

(declare-fun lt!866580 () Bool)

(assert (=> b!2373295 (= e!1514532 (not lt!866580))))

(declare-fun b!2373297 () Bool)

(declare-fun res!1007538 () Bool)

(assert (=> b!2373297 (=> (not res!1007538) (not e!1514530))))

(assert (=> b!2373297 (= res!1007538 (isEmpty!15981 (tail!3415 s!9460)))))

(declare-fun b!2373298 () Bool)

(declare-fun e!1514527 () Bool)

(declare-fun e!1514529 () Bool)

(assert (=> b!2373298 (= e!1514527 e!1514529)))

(declare-fun res!1007541 () Bool)

(assert (=> b!2373298 (=> (not res!1007541) (not e!1514529))))

(assert (=> b!2373298 (= res!1007541 (not lt!866580))))

(declare-fun b!2373299 () Bool)

(declare-fun e!1514528 () Bool)

(assert (=> b!2373299 (= e!1514528 (nullable!2008 lt!866494))))

(declare-fun b!2373300 () Bool)

(declare-fun e!1514531 () Bool)

(declare-fun call!144260 () Bool)

(assert (=> b!2373300 (= e!1514531 (= lt!866580 call!144260))))

(declare-fun b!2373301 () Bool)

(declare-fun e!1514533 () Bool)

(assert (=> b!2373301 (= e!1514533 (not (= (head!5145 s!9460) (c!377168 lt!866494))))))

(declare-fun b!2373302 () Bool)

(declare-fun res!1007539 () Bool)

(assert (=> b!2373302 (=> res!1007539 e!1514533)))

(assert (=> b!2373302 (= res!1007539 (not (isEmpty!15981 (tail!3415 s!9460))))))

(declare-fun bm!144255 () Bool)

(assert (=> bm!144255 (= call!144260 (isEmpty!15981 s!9460))))

(declare-fun b!2373303 () Bool)

(assert (=> b!2373303 (= e!1514528 (matchR!3069 (derivativeStep!1666 lt!866494 (head!5145 s!9460)) (tail!3415 s!9460)))))

(declare-fun b!2373304 () Bool)

(assert (=> b!2373304 (= e!1514529 e!1514533)))

(declare-fun res!1007536 () Bool)

(assert (=> b!2373304 (=> res!1007536 e!1514533)))

(assert (=> b!2373304 (= res!1007536 call!144260)))

(declare-fun b!2373296 () Bool)

(declare-fun res!1007543 () Bool)

(assert (=> b!2373296 (=> res!1007543 e!1514527)))

(assert (=> b!2373296 (= res!1007543 (not (is-ElementMatch!6952 lt!866494)))))

(assert (=> b!2373296 (= e!1514532 e!1514527)))

(declare-fun d!695679 () Bool)

(assert (=> d!695679 e!1514531))

(declare-fun c!377257 () Bool)

(assert (=> d!695679 (= c!377257 (is-EmptyExpr!6952 lt!866494))))

(assert (=> d!695679 (= lt!866580 e!1514528)))

(declare-fun c!377256 () Bool)

(assert (=> d!695679 (= c!377256 (isEmpty!15981 s!9460))))

(assert (=> d!695679 (validRegex!2679 lt!866494)))

(assert (=> d!695679 (= (matchR!3069 lt!866494 s!9460) lt!866580)))

(declare-fun b!2373305 () Bool)

(declare-fun res!1007540 () Bool)

(assert (=> b!2373305 (=> (not res!1007540) (not e!1514530))))

(assert (=> b!2373305 (= res!1007540 (not call!144260))))

(declare-fun b!2373306 () Bool)

(declare-fun res!1007537 () Bool)

(assert (=> b!2373306 (=> res!1007537 e!1514527)))

(assert (=> b!2373306 (= res!1007537 e!1514530)))

(declare-fun res!1007542 () Bool)

(assert (=> b!2373306 (=> (not res!1007542) (not e!1514530))))

(assert (=> b!2373306 (= res!1007542 lt!866580)))

(declare-fun b!2373307 () Bool)

(assert (=> b!2373307 (= e!1514531 e!1514532)))

(declare-fun c!377258 () Bool)

(assert (=> b!2373307 (= c!377258 (is-EmptyLang!6952 lt!866494))))

(assert (= (and d!695679 c!377256) b!2373299))

(assert (= (and d!695679 (not c!377256)) b!2373303))

(assert (= (and d!695679 c!377257) b!2373300))

(assert (= (and d!695679 (not c!377257)) b!2373307))

(assert (= (and b!2373307 c!377258) b!2373295))

(assert (= (and b!2373307 (not c!377258)) b!2373296))

(assert (= (and b!2373296 (not res!1007543)) b!2373306))

(assert (= (and b!2373306 res!1007542) b!2373305))

(assert (= (and b!2373305 res!1007540) b!2373297))

(assert (= (and b!2373297 res!1007538) b!2373294))

(assert (= (and b!2373306 (not res!1007537)) b!2373298))

(assert (= (and b!2373298 res!1007541) b!2373304))

(assert (= (and b!2373304 (not res!1007536)) b!2373302))

(assert (= (and b!2373302 (not res!1007539)) b!2373301))

(assert (= (or b!2373300 b!2373304 b!2373305) bm!144255))

(assert (=> b!2373303 m!2780077))

(assert (=> b!2373303 m!2780077))

(declare-fun m!2780257 () Bool)

(assert (=> b!2373303 m!2780257))

(assert (=> b!2373303 m!2780081))

(assert (=> b!2373303 m!2780257))

(assert (=> b!2373303 m!2780081))

(declare-fun m!2780259 () Bool)

(assert (=> b!2373303 m!2780259))

(assert (=> b!2373301 m!2780077))

(assert (=> b!2373294 m!2780077))

(assert (=> b!2373297 m!2780081))

(assert (=> b!2373297 m!2780081))

(assert (=> b!2373297 m!2780085))

(assert (=> b!2373302 m!2780081))

(assert (=> b!2373302 m!2780081))

(assert (=> b!2373302 m!2780085))

(assert (=> bm!144255 m!2780075))

(assert (=> b!2373299 m!2780203))

(assert (=> d!695679 m!2780075))

(assert (=> d!695679 m!2780205))

(assert (=> b!2372867 d!695679))

(declare-fun b!2373320 () Bool)

(declare-fun e!1514536 () Bool)

(declare-fun tp!758316 () Bool)

(assert (=> b!2373320 (= e!1514536 tp!758316)))

(declare-fun b!2373319 () Bool)

(declare-fun tp!758315 () Bool)

(declare-fun tp!758312 () Bool)

(assert (=> b!2373319 (= e!1514536 (and tp!758315 tp!758312))))

(declare-fun b!2373321 () Bool)

(declare-fun tp!758313 () Bool)

(declare-fun tp!758314 () Bool)

(assert (=> b!2373321 (= e!1514536 (and tp!758313 tp!758314))))

(assert (=> b!2372861 (= tp!758276 e!1514536)))

(declare-fun b!2373318 () Bool)

(assert (=> b!2373318 (= e!1514536 tp_is_empty!11317)))

(assert (= (and b!2372861 (is-ElementMatch!6952 (reg!7281 r!13927))) b!2373318))

(assert (= (and b!2372861 (is-Concat!11588 (reg!7281 r!13927))) b!2373319))

(assert (= (and b!2372861 (is-Star!6952 (reg!7281 r!13927))) b!2373320))

(assert (= (and b!2372861 (is-Union!6952 (reg!7281 r!13927))) b!2373321))

(declare-fun b!2373326 () Bool)

(declare-fun e!1514539 () Bool)

(declare-fun tp!758319 () Bool)

(assert (=> b!2373326 (= e!1514539 (and tp_is_empty!11317 tp!758319))))

(assert (=> b!2372855 (= tp!758271 e!1514539)))

(assert (= (and b!2372855 (is-Cons!28044 (t!208119 s!9460))) b!2373326))

(declare-fun b!2373329 () Bool)

(declare-fun e!1514540 () Bool)

(declare-fun tp!758324 () Bool)

(assert (=> b!2373329 (= e!1514540 tp!758324)))

(declare-fun b!2373328 () Bool)

(declare-fun tp!758323 () Bool)

(declare-fun tp!758320 () Bool)

(assert (=> b!2373328 (= e!1514540 (and tp!758323 tp!758320))))

(declare-fun b!2373330 () Bool)

(declare-fun tp!758321 () Bool)

(declare-fun tp!758322 () Bool)

(assert (=> b!2373330 (= e!1514540 (and tp!758321 tp!758322))))

(assert (=> b!2372859 (= tp!758277 e!1514540)))

(declare-fun b!2373327 () Bool)

(assert (=> b!2373327 (= e!1514540 tp_is_empty!11317)))

(assert (= (and b!2372859 (is-ElementMatch!6952 (h!33446 l!9164))) b!2373327))

(assert (= (and b!2372859 (is-Concat!11588 (h!33446 l!9164))) b!2373328))

(assert (= (and b!2372859 (is-Star!6952 (h!33446 l!9164))) b!2373329))

(assert (= (and b!2372859 (is-Union!6952 (h!33446 l!9164))) b!2373330))

(declare-fun b!2373335 () Bool)

(declare-fun e!1514543 () Bool)

(declare-fun tp!758329 () Bool)

(declare-fun tp!758330 () Bool)

(assert (=> b!2373335 (= e!1514543 (and tp!758329 tp!758330))))

(assert (=> b!2372859 (= tp!758270 e!1514543)))

(assert (= (and b!2372859 (is-Cons!28045 (t!208120 l!9164))) b!2373335))

(declare-fun b!2373338 () Bool)

(declare-fun e!1514544 () Bool)

(declare-fun tp!758335 () Bool)

(assert (=> b!2373338 (= e!1514544 tp!758335)))

(declare-fun b!2373337 () Bool)

(declare-fun tp!758334 () Bool)

(declare-fun tp!758331 () Bool)

(assert (=> b!2373337 (= e!1514544 (and tp!758334 tp!758331))))

(declare-fun b!2373339 () Bool)

(declare-fun tp!758332 () Bool)

(declare-fun tp!758333 () Bool)

(assert (=> b!2373339 (= e!1514544 (and tp!758332 tp!758333))))

(assert (=> b!2372863 (= tp!758275 e!1514544)))

(declare-fun b!2373336 () Bool)

(assert (=> b!2373336 (= e!1514544 tp_is_empty!11317)))

(assert (= (and b!2372863 (is-ElementMatch!6952 (regOne!14417 r!13927))) b!2373336))

(assert (= (and b!2372863 (is-Concat!11588 (regOne!14417 r!13927))) b!2373337))

(assert (= (and b!2372863 (is-Star!6952 (regOne!14417 r!13927))) b!2373338))

(assert (= (and b!2372863 (is-Union!6952 (regOne!14417 r!13927))) b!2373339))

(declare-fun b!2373342 () Bool)

(declare-fun e!1514545 () Bool)

(declare-fun tp!758340 () Bool)

(assert (=> b!2373342 (= e!1514545 tp!758340)))

(declare-fun b!2373341 () Bool)

(declare-fun tp!758339 () Bool)

(declare-fun tp!758336 () Bool)

(assert (=> b!2373341 (= e!1514545 (and tp!758339 tp!758336))))

(declare-fun b!2373343 () Bool)

(declare-fun tp!758337 () Bool)

(declare-fun tp!758338 () Bool)

(assert (=> b!2373343 (= e!1514545 (and tp!758337 tp!758338))))

(assert (=> b!2372863 (= tp!758272 e!1514545)))

(declare-fun b!2373340 () Bool)

(assert (=> b!2373340 (= e!1514545 tp_is_empty!11317)))

(assert (= (and b!2372863 (is-ElementMatch!6952 (regTwo!14417 r!13927))) b!2373340))

(assert (= (and b!2372863 (is-Concat!11588 (regTwo!14417 r!13927))) b!2373341))

(assert (= (and b!2372863 (is-Star!6952 (regTwo!14417 r!13927))) b!2373342))

(assert (= (and b!2372863 (is-Union!6952 (regTwo!14417 r!13927))) b!2373343))

(declare-fun b!2373346 () Bool)

(declare-fun e!1514546 () Bool)

(declare-fun tp!758345 () Bool)

(assert (=> b!2373346 (= e!1514546 tp!758345)))

(declare-fun b!2373345 () Bool)

(declare-fun tp!758344 () Bool)

(declare-fun tp!758341 () Bool)

(assert (=> b!2373345 (= e!1514546 (and tp!758344 tp!758341))))

(declare-fun b!2373347 () Bool)

(declare-fun tp!758342 () Bool)

(declare-fun tp!758343 () Bool)

(assert (=> b!2373347 (= e!1514546 (and tp!758342 tp!758343))))

(assert (=> b!2372857 (= tp!758274 e!1514546)))

(declare-fun b!2373344 () Bool)

(assert (=> b!2373344 (= e!1514546 tp_is_empty!11317)))

(assert (= (and b!2372857 (is-ElementMatch!6952 (regOne!14416 r!13927))) b!2373344))

(assert (= (and b!2372857 (is-Concat!11588 (regOne!14416 r!13927))) b!2373345))

(assert (= (and b!2372857 (is-Star!6952 (regOne!14416 r!13927))) b!2373346))

(assert (= (and b!2372857 (is-Union!6952 (regOne!14416 r!13927))) b!2373347))

(declare-fun b!2373350 () Bool)

(declare-fun e!1514547 () Bool)

(declare-fun tp!758350 () Bool)

(assert (=> b!2373350 (= e!1514547 tp!758350)))

(declare-fun b!2373349 () Bool)

(declare-fun tp!758349 () Bool)

(declare-fun tp!758346 () Bool)

(assert (=> b!2373349 (= e!1514547 (and tp!758349 tp!758346))))

(declare-fun b!2373351 () Bool)

(declare-fun tp!758347 () Bool)

(declare-fun tp!758348 () Bool)

(assert (=> b!2373351 (= e!1514547 (and tp!758347 tp!758348))))

(assert (=> b!2372857 (= tp!758273 e!1514547)))

(declare-fun b!2373348 () Bool)

(assert (=> b!2373348 (= e!1514547 tp_is_empty!11317)))

(assert (= (and b!2372857 (is-ElementMatch!6952 (regTwo!14416 r!13927))) b!2373348))

(assert (= (and b!2372857 (is-Concat!11588 (regTwo!14416 r!13927))) b!2373349))

(assert (= (and b!2372857 (is-Star!6952 (regTwo!14416 r!13927))) b!2373350))

(assert (= (and b!2372857 (is-Union!6952 (regTwo!14416 r!13927))) b!2373351))

(declare-fun b_lambda!73965 () Bool)

(assert (= b_lambda!73963 (or start!232866 b_lambda!73965)))

(declare-fun bs!461389 () Bool)

(declare-fun d!695683 () Bool)

(assert (= bs!461389 (and d!695683 start!232866)))

(assert (=> bs!461389 (= (dynLambda!12076 lambda!87944 (h!33446 l!9164)) (validRegex!2679 (h!33446 l!9164)))))

(declare-fun m!2780261 () Bool)

(assert (=> bs!461389 m!2780261))

(assert (=> b!2373094 d!695683))

(push 1)

(assert (not b!2373299))

(assert (not bm!144250))

(assert (not b!2373244))

(assert (not b!2372960))

(assert (not b!2373066))

(assert (not d!695629))

(assert (not bm!144227))

(assert (not bm!144255))

(assert (not d!695653))

(assert (not b!2373075))

(assert (not b!2373351))

(assert (not b!2373236))

(assert (not b!2373086))

(assert (not d!695625))

(assert (not b!2373283))

(assert (not b!2373241))

(assert (not b!2373215))

(assert (not d!695679))

(assert (not bm!144251))

(assert (not b!2373329))

(assert (not b!2373000))

(assert (not b!2373342))

(assert (not d!695645))

(assert (not b!2373235))

(assert (not b!2373272))

(assert (not b!2373279))

(assert (not b!2373287))

(assert (not bm!144253))

(assert (not b!2373341))

(assert (not b!2373345))

(assert (not b!2373319))

(assert (not b!2373350))

(assert (not d!695657))

(assert (not bm!144230))

(assert (not b!2373212))

(assert (not b!2372964))

(assert (not bm!144254))

(assert (not b!2373083))

(assert (not b!2372965))

(assert (not b!2373330))

(assert (not b!2373088))

(assert (not bm!144242))

(assert (not d!695669))

(assert (not b!2373217))

(assert (not b!2373326))

(assert (not d!695617))

(assert (not b!2373337))

(assert (not b!2373302))

(assert (not b!2373073))

(assert (not b!2373263))

(assert (not d!695675))

(assert (not d!695623))

(assert (not b!2373239))

(assert (not bs!461389))

(assert (not b!2373321))

(assert (not b!2373074))

(assert (not b!2373278))

(assert (not b!2373335))

(assert (not b_lambda!73965))

(assert (not d!695647))

(assert (not b!2373087))

(assert (not bm!144226))

(assert (not b!2372957))

(assert (not b!2373328))

(assert (not b!2373339))

(assert (not d!695663))

(assert (not b!2373080))

(assert (not b!2373071))

(assert (not b!2373243))

(assert (not d!695661))

(assert (not bm!144240))

(assert (not b!2372961))

(assert (not b!2373005))

(assert (not b!2373289))

(assert (not b!2373320))

(assert (not b!2373082))

(assert (not b!2373259))

(assert (not b!2373271))

(assert (not b!2373285))

(assert (not b!2373218))

(assert (not b!2373343))

(assert (not b!2372963))

(assert (not d!695643))

(assert (not b!2373129))

(assert (not b!2373273))

(assert (not b!2373276))

(assert (not b!2372959))

(assert (not d!695671))

(assert (not b!2373288))

(assert (not b!2373069))

(assert (not b!2373347))

(assert (not b!2373301))

(assert (not d!695673))

(assert (not b!2373297))

(assert (not d!695651))

(assert (not b!2373211))

(assert (not b!2373303))

(assert (not b!2373245))

(assert tp_is_empty!11317)

(assert (not b!2373210))

(assert (not b!2373084))

(assert (not b!2373260))

(assert (not d!695649))

(assert (not b!2373349))

(assert (not b!2373346))

(assert (not b!2373280))

(assert (not b!2373294))

(assert (not b!2373338))

(assert (not b!2373095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

