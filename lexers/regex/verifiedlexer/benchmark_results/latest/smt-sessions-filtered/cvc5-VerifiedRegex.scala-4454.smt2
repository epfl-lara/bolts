; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236678 () Bool)

(assert start!236678)

(declare-fun b!2415775 () Bool)

(declare-fun e!1537406 () Bool)

(declare-fun tp!768297 () Bool)

(declare-fun tp!768294 () Bool)

(assert (=> b!2415775 (= e!1537406 (and tp!768297 tp!768294))))

(declare-fun b!2415777 () Bool)

(declare-fun e!1537403 () Bool)

(assert (=> b!2415777 (= e!1537403 false)))

(declare-fun b!2415778 () Bool)

(declare-fun tp!768291 () Bool)

(assert (=> b!2415778 (= e!1537406 tp!768291)))

(declare-fun b!2415779 () Bool)

(declare-datatypes ((Unit!41475 0))(
  ( (Unit!41476) )
))
(declare-fun e!1537404 () Unit!41475)

(declare-fun Unit!41477 () Unit!41475)

(assert (=> b!2415779 (= e!1537404 Unit!41477)))

(declare-fun b!2415780 () Bool)

(declare-fun res!1025961 () Bool)

(declare-fun e!1537407 () Bool)

(assert (=> b!2415780 (=> res!1025961 e!1537407)))

(declare-datatypes ((C!14358 0))(
  ( (C!14359 (val!8421 Int)) )
))
(declare-datatypes ((Regex!7100 0))(
  ( (ElementMatch!7100 (c!384935 C!14358)) (Concat!11736 (regOne!14712 Regex!7100) (regTwo!14712 Regex!7100)) (EmptyExpr!7100) (Star!7100 (reg!7429 Regex!7100)) (EmptyLang!7100) (Union!7100 (regOne!14713 Regex!7100) (regTwo!14713 Regex!7100)) )
))
(declare-datatypes ((List!28438 0))(
  ( (Nil!28340) (Cons!28340 (h!33741 Regex!7100) (t!208415 List!28438)) )
))
(declare-fun l!9164 () List!28438)

(declare-fun isEmpty!16347 (List!28438) Bool)

(assert (=> b!2415780 (= res!1025961 (isEmpty!16347 l!9164))))

(declare-fun b!2415781 () Bool)

(declare-fun e!1537409 () Bool)

(declare-fun tp_is_empty!11613 () Bool)

(declare-fun tp!768296 () Bool)

(assert (=> b!2415781 (= e!1537409 (and tp_is_empty!11613 tp!768296))))

(declare-fun b!2415782 () Bool)

(declare-fun res!1025967 () Bool)

(declare-fun e!1537402 () Bool)

(assert (=> b!2415782 (=> (not res!1025967) (not e!1537402))))

(declare-fun r!13927 () Regex!7100)

(declare-fun generalisedConcat!201 (List!28438) Regex!7100)

(assert (=> b!2415782 (= res!1025967 (= r!13927 (generalisedConcat!201 l!9164)))))

(declare-fun b!2415783 () Bool)

(declare-fun e!1537401 () Bool)

(declare-fun tp!768290 () Bool)

(declare-fun tp!768292 () Bool)

(assert (=> b!2415783 (= e!1537401 (and tp!768290 tp!768292))))

(declare-fun b!2415784 () Bool)

(assert (=> b!2415784 (= e!1537406 tp_is_empty!11613)))

(declare-fun b!2415776 () Bool)

(assert (=> b!2415776 (= e!1537402 (not e!1537407))))

(declare-fun res!1025968 () Bool)

(assert (=> b!2415776 (=> res!1025968 e!1537407)))

(assert (=> b!2415776 (= res!1025968 (or (is-Concat!11736 r!13927) (is-EmptyExpr!7100 r!13927)))))

(declare-datatypes ((List!28439 0))(
  ( (Nil!28341) (Cons!28341 (h!33742 C!14358) (t!208416 List!28439)) )
))
(declare-fun s!9460 () List!28439)

(declare-fun matchR!3217 (Regex!7100 List!28439) Bool)

(declare-fun matchRSpec!949 (Regex!7100 List!28439) Bool)

(assert (=> b!2415776 (= (matchR!3217 r!13927 s!9460) (matchRSpec!949 r!13927 s!9460))))

(declare-fun lt!874232 () Unit!41475)

(declare-fun mainMatchTheorem!949 (Regex!7100 List!28439) Unit!41475)

(assert (=> b!2415776 (= lt!874232 (mainMatchTheorem!949 r!13927 s!9460))))

(declare-fun res!1025963 () Bool)

(assert (=> start!236678 (=> (not res!1025963) (not e!1537402))))

(declare-fun lambda!90978 () Int)

(declare-fun forall!5734 (List!28438 Int) Bool)

(assert (=> start!236678 (= res!1025963 (forall!5734 l!9164 lambda!90978))))

(assert (=> start!236678 e!1537402))

(assert (=> start!236678 e!1537401))

(assert (=> start!236678 e!1537406))

(assert (=> start!236678 e!1537409))

(declare-fun b!2415785 () Bool)

(declare-fun e!1537405 () Bool)

(assert (=> b!2415785 (= e!1537407 e!1537405)))

(declare-fun res!1025962 () Bool)

(assert (=> b!2415785 (=> res!1025962 e!1537405)))

(declare-fun lt!874229 () List!28438)

(assert (=> b!2415785 (= res!1025962 (not (isEmpty!16347 lt!874229)))))

(declare-fun tail!3684 (List!28438) List!28438)

(assert (=> b!2415785 (= lt!874229 (tail!3684 l!9164))))

(declare-fun b!2415786 () Bool)

(declare-fun res!1025965 () Bool)

(assert (=> b!2415786 (=> res!1025965 e!1537405)))

(assert (=> b!2415786 (= res!1025965 (not (= (generalisedConcat!201 lt!874229) EmptyExpr!7100)))))

(declare-fun b!2415787 () Bool)

(declare-fun tp!768295 () Bool)

(declare-fun tp!768293 () Bool)

(assert (=> b!2415787 (= e!1537406 (and tp!768295 tp!768293))))

(declare-fun b!2415788 () Bool)

(declare-fun e!1537408 () Bool)

(assert (=> b!2415788 (= e!1537408 (forall!5734 lt!874229 lambda!90978))))

(declare-fun lt!874230 () Bool)

(assert (=> b!2415788 (not lt!874230)))

(declare-fun lt!874235 () Unit!41475)

(assert (=> b!2415788 (= lt!874235 e!1537404)))

(declare-fun c!384934 () Bool)

(assert (=> b!2415788 (= c!384934 lt!874230)))

(declare-datatypes ((tuple2!27980 0))(
  ( (tuple2!27981 (_1!16531 List!28439) (_2!16531 List!28439)) )
))
(declare-datatypes ((Option!5601 0))(
  ( (None!5600) (Some!5600 (v!31008 tuple2!27980)) )
))
(declare-fun lt!874236 () Option!5601)

(declare-fun isDefined!4427 (Option!5601) Bool)

(assert (=> b!2415788 (= lt!874230 (isDefined!4427 lt!874236))))

(declare-fun lt!874231 () Regex!7100)

(declare-fun findConcatSeparation!709 (Regex!7100 Regex!7100 List!28439 List!28439 List!28439) Option!5601)

(assert (=> b!2415788 (= lt!874236 (findConcatSeparation!709 lt!874231 EmptyExpr!7100 Nil!28341 s!9460 s!9460))))

(declare-fun b!2415789 () Bool)

(assert (=> b!2415789 (= e!1537405 e!1537408)))

(declare-fun res!1025964 () Bool)

(assert (=> b!2415789 (=> res!1025964 e!1537408)))

(assert (=> b!2415789 (= res!1025964 (matchR!3217 lt!874231 s!9460))))

(declare-fun head!5412 (List!28438) Regex!7100)

(assert (=> b!2415789 (= lt!874231 (head!5412 l!9164))))

(declare-fun b!2415790 () Bool)

(declare-fun Unit!41478 () Unit!41475)

(assert (=> b!2415790 (= e!1537404 Unit!41478)))

(declare-fun lt!874234 () tuple2!27980)

(declare-fun get!8703 (Option!5601) tuple2!27980)

(assert (=> b!2415790 (= lt!874234 (get!8703 lt!874236))))

(declare-fun lt!874233 () Unit!41475)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!49 (Regex!7100 Regex!7100 List!28439 List!28439 List!28439) Unit!41475)

(assert (=> b!2415790 (= lt!874233 (lemmaFindSeparationIsDefinedThenConcatMatches!49 lt!874231 EmptyExpr!7100 (_1!16531 lt!874234) (_2!16531 lt!874234) s!9460))))

(declare-fun res!1025966 () Bool)

(declare-fun ++!7021 (List!28439 List!28439) List!28439)

(assert (=> b!2415790 (= res!1025966 (matchR!3217 (Concat!11736 lt!874231 EmptyExpr!7100) (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))))))

(assert (=> b!2415790 (=> (not res!1025966) (not e!1537403))))

(assert (=> b!2415790 e!1537403))

(assert (= (and start!236678 res!1025963) b!2415782))

(assert (= (and b!2415782 res!1025967) b!2415776))

(assert (= (and b!2415776 (not res!1025968)) b!2415780))

(assert (= (and b!2415780 (not res!1025961)) b!2415785))

(assert (= (and b!2415785 (not res!1025962)) b!2415786))

(assert (= (and b!2415786 (not res!1025965)) b!2415789))

(assert (= (and b!2415789 (not res!1025964)) b!2415788))

(assert (= (and b!2415788 c!384934) b!2415790))

(assert (= (and b!2415788 (not c!384934)) b!2415779))

(assert (= (and b!2415790 res!1025966) b!2415777))

(assert (= (and start!236678 (is-Cons!28340 l!9164)) b!2415783))

(assert (= (and start!236678 (is-ElementMatch!7100 r!13927)) b!2415784))

(assert (= (and start!236678 (is-Concat!11736 r!13927)) b!2415787))

(assert (= (and start!236678 (is-Star!7100 r!13927)) b!2415778))

(assert (= (and start!236678 (is-Union!7100 r!13927)) b!2415775))

(assert (= (and start!236678 (is-Cons!28341 s!9460)) b!2415781))

(declare-fun m!2804635 () Bool)

(assert (=> b!2415788 m!2804635))

(declare-fun m!2804637 () Bool)

(assert (=> b!2415788 m!2804637))

(declare-fun m!2804639 () Bool)

(assert (=> b!2415788 m!2804639))

(declare-fun m!2804641 () Bool)

(assert (=> b!2415785 m!2804641))

(declare-fun m!2804643 () Bool)

(assert (=> b!2415785 m!2804643))

(declare-fun m!2804645 () Bool)

(assert (=> b!2415776 m!2804645))

(declare-fun m!2804647 () Bool)

(assert (=> b!2415776 m!2804647))

(declare-fun m!2804649 () Bool)

(assert (=> b!2415776 m!2804649))

(declare-fun m!2804651 () Bool)

(assert (=> start!236678 m!2804651))

(declare-fun m!2804653 () Bool)

(assert (=> b!2415789 m!2804653))

(declare-fun m!2804655 () Bool)

(assert (=> b!2415789 m!2804655))

(declare-fun m!2804657 () Bool)

(assert (=> b!2415782 m!2804657))

(declare-fun m!2804659 () Bool)

(assert (=> b!2415780 m!2804659))

(declare-fun m!2804661 () Bool)

(assert (=> b!2415786 m!2804661))

(declare-fun m!2804663 () Bool)

(assert (=> b!2415790 m!2804663))

(declare-fun m!2804665 () Bool)

(assert (=> b!2415790 m!2804665))

(declare-fun m!2804667 () Bool)

(assert (=> b!2415790 m!2804667))

(assert (=> b!2415790 m!2804667))

(declare-fun m!2804669 () Bool)

(assert (=> b!2415790 m!2804669))

(push 1)

(assert (not b!2415783))

(assert (not b!2415776))

(assert (not b!2415780))

(assert (not b!2415790))

(assert tp_is_empty!11613)

(assert (not b!2415785))

(assert (not b!2415789))

(assert (not b!2415781))

(assert (not b!2415788))

(assert (not b!2415778))

(assert (not b!2415786))

(assert (not start!236678))

(assert (not b!2415787))

(assert (not b!2415775))

(assert (not b!2415782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2415868 () Bool)

(declare-fun res!1026010 () Bool)

(declare-fun e!1537453 () Bool)

(assert (=> b!2415868 (=> (not res!1026010) (not e!1537453))))

(declare-fun isEmpty!16349 (List!28439) Bool)

(declare-fun tail!3686 (List!28439) List!28439)

(assert (=> b!2415868 (= res!1026010 (isEmpty!16349 (tail!3686 s!9460)))))

(declare-fun b!2415869 () Bool)

(declare-fun e!1537451 () Bool)

(declare-fun e!1537454 () Bool)

(assert (=> b!2415869 (= e!1537451 e!1537454)))

(declare-fun res!1026015 () Bool)

(assert (=> b!2415869 (=> res!1026015 e!1537454)))

(declare-fun call!147495 () Bool)

(assert (=> b!2415869 (= res!1026015 call!147495)))

(declare-fun b!2415870 () Bool)

(declare-fun res!1026012 () Bool)

(assert (=> b!2415870 (=> (not res!1026012) (not e!1537453))))

(assert (=> b!2415870 (= res!1026012 (not call!147495))))

(declare-fun b!2415871 () Bool)

(declare-fun e!1537452 () Bool)

(declare-fun nullable!2135 (Regex!7100) Bool)

(assert (=> b!2415871 (= e!1537452 (nullable!2135 r!13927))))

(declare-fun b!2415872 () Bool)

(declare-fun e!1537457 () Bool)

(declare-fun lt!874263 () Bool)

(assert (=> b!2415872 (= e!1537457 (= lt!874263 call!147495))))

(declare-fun bm!147490 () Bool)

(assert (=> bm!147490 (= call!147495 (isEmpty!16349 s!9460))))

(declare-fun b!2415873 () Bool)

(declare-fun e!1537455 () Bool)

(assert (=> b!2415873 (= e!1537457 e!1537455)))

(declare-fun c!384947 () Bool)

(assert (=> b!2415873 (= c!384947 (is-EmptyLang!7100 r!13927))))

(declare-fun b!2415874 () Bool)

(declare-fun res!1026014 () Bool)

(assert (=> b!2415874 (=> res!1026014 e!1537454)))

(assert (=> b!2415874 (= res!1026014 (not (isEmpty!16349 (tail!3686 s!9460))))))

(declare-fun b!2415875 () Bool)

(declare-fun res!1026016 () Bool)

(declare-fun e!1537456 () Bool)

(assert (=> b!2415875 (=> res!1026016 e!1537456)))

(assert (=> b!2415875 (= res!1026016 e!1537453)))

(declare-fun res!1026009 () Bool)

(assert (=> b!2415875 (=> (not res!1026009) (not e!1537453))))

(assert (=> b!2415875 (= res!1026009 lt!874263)))

(declare-fun b!2415876 () Bool)

(assert (=> b!2415876 (= e!1537455 (not lt!874263))))

(declare-fun d!701159 () Bool)

(assert (=> d!701159 e!1537457))

(declare-fun c!384946 () Bool)

(assert (=> d!701159 (= c!384946 (is-EmptyExpr!7100 r!13927))))

(assert (=> d!701159 (= lt!874263 e!1537452)))

(declare-fun c!384948 () Bool)

(assert (=> d!701159 (= c!384948 (isEmpty!16349 s!9460))))

(declare-fun validRegex!2820 (Regex!7100) Bool)

(assert (=> d!701159 (validRegex!2820 r!13927)))

(assert (=> d!701159 (= (matchR!3217 r!13927 s!9460) lt!874263)))

(declare-fun b!2415867 () Bool)

(assert (=> b!2415867 (= e!1537456 e!1537451)))

(declare-fun res!1026011 () Bool)

(assert (=> b!2415867 (=> (not res!1026011) (not e!1537451))))

(assert (=> b!2415867 (= res!1026011 (not lt!874263))))

(declare-fun b!2415877 () Bool)

(declare-fun derivativeStep!1792 (Regex!7100 C!14358) Regex!7100)

(declare-fun head!5414 (List!28439) C!14358)

(assert (=> b!2415877 (= e!1537452 (matchR!3217 (derivativeStep!1792 r!13927 (head!5414 s!9460)) (tail!3686 s!9460)))))

(declare-fun b!2415878 () Bool)

(assert (=> b!2415878 (= e!1537453 (= (head!5414 s!9460) (c!384935 r!13927)))))

(declare-fun b!2415879 () Bool)

(declare-fun res!1026013 () Bool)

(assert (=> b!2415879 (=> res!1026013 e!1537456)))

(assert (=> b!2415879 (= res!1026013 (not (is-ElementMatch!7100 r!13927)))))

(assert (=> b!2415879 (= e!1537455 e!1537456)))

(declare-fun b!2415880 () Bool)

(assert (=> b!2415880 (= e!1537454 (not (= (head!5414 s!9460) (c!384935 r!13927))))))

(assert (= (and d!701159 c!384948) b!2415871))

(assert (= (and d!701159 (not c!384948)) b!2415877))

(assert (= (and d!701159 c!384946) b!2415872))

(assert (= (and d!701159 (not c!384946)) b!2415873))

(assert (= (and b!2415873 c!384947) b!2415876))

(assert (= (and b!2415873 (not c!384947)) b!2415879))

(assert (= (and b!2415879 (not res!1026013)) b!2415875))

(assert (= (and b!2415875 res!1026009) b!2415870))

(assert (= (and b!2415870 res!1026012) b!2415868))

(assert (= (and b!2415868 res!1026010) b!2415878))

(assert (= (and b!2415875 (not res!1026016)) b!2415867))

(assert (= (and b!2415867 res!1026011) b!2415869))

(assert (= (and b!2415869 (not res!1026015)) b!2415874))

(assert (= (and b!2415874 (not res!1026014)) b!2415880))

(assert (= (or b!2415872 b!2415869 b!2415870) bm!147490))

(declare-fun m!2804707 () Bool)

(assert (=> b!2415868 m!2804707))

(assert (=> b!2415868 m!2804707))

(declare-fun m!2804709 () Bool)

(assert (=> b!2415868 m!2804709))

(declare-fun m!2804711 () Bool)

(assert (=> d!701159 m!2804711))

(declare-fun m!2804713 () Bool)

(assert (=> d!701159 m!2804713))

(declare-fun m!2804715 () Bool)

(assert (=> b!2415871 m!2804715))

(declare-fun m!2804717 () Bool)

(assert (=> b!2415877 m!2804717))

(assert (=> b!2415877 m!2804717))

(declare-fun m!2804719 () Bool)

(assert (=> b!2415877 m!2804719))

(assert (=> b!2415877 m!2804707))

(assert (=> b!2415877 m!2804719))

(assert (=> b!2415877 m!2804707))

(declare-fun m!2804721 () Bool)

(assert (=> b!2415877 m!2804721))

(assert (=> b!2415874 m!2804707))

(assert (=> b!2415874 m!2804707))

(assert (=> b!2415874 m!2804709))

(assert (=> bm!147490 m!2804711))

(assert (=> b!2415878 m!2804717))

(assert (=> b!2415880 m!2804717))

(assert (=> b!2415776 d!701159))

(declare-fun b!2415948 () Bool)

(assert (=> b!2415948 true))

(assert (=> b!2415948 true))

(declare-fun bs!463565 () Bool)

(declare-fun b!2415943 () Bool)

(assert (= bs!463565 (and b!2415943 b!2415948)))

(declare-fun lambda!90989 () Int)

(declare-fun lambda!90988 () Int)

(assert (=> bs!463565 (not (= lambda!90989 lambda!90988))))

(assert (=> b!2415943 true))

(assert (=> b!2415943 true))

(declare-fun b!2415941 () Bool)

(declare-fun c!384963 () Bool)

(assert (=> b!2415941 (= c!384963 (is-ElementMatch!7100 r!13927))))

(declare-fun e!1537490 () Bool)

(declare-fun e!1537492 () Bool)

(assert (=> b!2415941 (= e!1537490 e!1537492)))

(declare-fun b!2415942 () Bool)

(declare-fun res!1026051 () Bool)

(declare-fun e!1537491 () Bool)

(assert (=> b!2415942 (=> res!1026051 e!1537491)))

(declare-fun call!147503 () Bool)

(assert (=> b!2415942 (= res!1026051 call!147503)))

(declare-fun e!1537494 () Bool)

(assert (=> b!2415942 (= e!1537494 e!1537491)))

(declare-fun d!701163 () Bool)

(declare-fun c!384964 () Bool)

(assert (=> d!701163 (= c!384964 (is-EmptyExpr!7100 r!13927))))

(declare-fun e!1537495 () Bool)

(assert (=> d!701163 (= (matchRSpec!949 r!13927 s!9460) e!1537495)))

(declare-fun call!147502 () Bool)

(assert (=> b!2415943 (= e!1537494 call!147502)))

(declare-fun b!2415944 () Bool)

(declare-fun e!1537493 () Bool)

(assert (=> b!2415944 (= e!1537493 (matchRSpec!949 (regTwo!14713 r!13927) s!9460))))

(declare-fun bm!147497 () Bool)

(assert (=> bm!147497 (= call!147503 (isEmpty!16349 s!9460))))

(declare-fun b!2415945 () Bool)

(declare-fun c!384965 () Bool)

(assert (=> b!2415945 (= c!384965 (is-Union!7100 r!13927))))

(declare-fun e!1537496 () Bool)

(assert (=> b!2415945 (= e!1537492 e!1537496)))

(declare-fun b!2415946 () Bool)

(assert (=> b!2415946 (= e!1537496 e!1537493)))

(declare-fun res!1026050 () Bool)

(assert (=> b!2415946 (= res!1026050 (matchRSpec!949 (regOne!14713 r!13927) s!9460))))

(assert (=> b!2415946 (=> res!1026050 e!1537493)))

(declare-fun b!2415947 () Bool)

(assert (=> b!2415947 (= e!1537495 e!1537490)))

(declare-fun res!1026049 () Bool)

(assert (=> b!2415947 (= res!1026049 (not (is-EmptyLang!7100 r!13927)))))

(assert (=> b!2415947 (=> (not res!1026049) (not e!1537490))))

(declare-fun c!384966 () Bool)

(declare-fun bm!147498 () Bool)

(declare-fun Exists!1141 (Int) Bool)

(assert (=> bm!147498 (= call!147502 (Exists!1141 (ite c!384966 lambda!90988 lambda!90989)))))

(assert (=> b!2415948 (= e!1537491 call!147502)))

(declare-fun b!2415949 () Bool)

(assert (=> b!2415949 (= e!1537492 (= s!9460 (Cons!28341 (c!384935 r!13927) Nil!28341)))))

(declare-fun b!2415950 () Bool)

(assert (=> b!2415950 (= e!1537496 e!1537494)))

(assert (=> b!2415950 (= c!384966 (is-Star!7100 r!13927))))

(declare-fun b!2415951 () Bool)

(assert (=> b!2415951 (= e!1537495 call!147503)))

(assert (= (and d!701163 c!384964) b!2415951))

(assert (= (and d!701163 (not c!384964)) b!2415947))

(assert (= (and b!2415947 res!1026049) b!2415941))

(assert (= (and b!2415941 c!384963) b!2415949))

(assert (= (and b!2415941 (not c!384963)) b!2415945))

(assert (= (and b!2415945 c!384965) b!2415946))

(assert (= (and b!2415945 (not c!384965)) b!2415950))

(assert (= (and b!2415946 (not res!1026050)) b!2415944))

(assert (= (and b!2415950 c!384966) b!2415942))

(assert (= (and b!2415950 (not c!384966)) b!2415943))

(assert (= (and b!2415942 (not res!1026051)) b!2415948))

(assert (= (or b!2415948 b!2415943) bm!147498))

(assert (= (or b!2415951 b!2415942) bm!147497))

(declare-fun m!2804723 () Bool)

(assert (=> b!2415944 m!2804723))

(assert (=> bm!147497 m!2804711))

(declare-fun m!2804725 () Bool)

(assert (=> b!2415946 m!2804725))

(declare-fun m!2804727 () Bool)

(assert (=> bm!147498 m!2804727))

(assert (=> b!2415776 d!701163))

(declare-fun d!701165 () Bool)

(assert (=> d!701165 (= (matchR!3217 r!13927 s!9460) (matchRSpec!949 r!13927 s!9460))))

(declare-fun lt!874268 () Unit!41475)

(declare-fun choose!14284 (Regex!7100 List!28439) Unit!41475)

(assert (=> d!701165 (= lt!874268 (choose!14284 r!13927 s!9460))))

(assert (=> d!701165 (validRegex!2820 r!13927)))

(assert (=> d!701165 (= (mainMatchTheorem!949 r!13927 s!9460) lt!874268)))

(declare-fun bs!463566 () Bool)

(assert (= bs!463566 d!701165))

(assert (=> bs!463566 m!2804645))

(assert (=> bs!463566 m!2804647))

(declare-fun m!2804729 () Bool)

(assert (=> bs!463566 m!2804729))

(assert (=> bs!463566 m!2804713))

(assert (=> b!2415776 d!701165))

(declare-fun bs!463567 () Bool)

(declare-fun d!701167 () Bool)

(assert (= bs!463567 (and d!701167 start!236678)))

(declare-fun lambda!90992 () Int)

(assert (=> bs!463567 (= lambda!90992 lambda!90978)))

(declare-fun b!2415990 () Bool)

(declare-fun e!1537518 () Bool)

(declare-fun lt!874272 () Regex!7100)

(assert (=> b!2415990 (= e!1537518 (= lt!874272 (head!5412 l!9164)))))

(declare-fun b!2415991 () Bool)

(declare-fun isConcat!155 (Regex!7100) Bool)

(assert (=> b!2415991 (= e!1537518 (isConcat!155 lt!874272))))

(declare-fun e!1537517 () Bool)

(assert (=> d!701167 e!1537517))

(declare-fun res!1026065 () Bool)

(assert (=> d!701167 (=> (not res!1026065) (not e!1537517))))

(assert (=> d!701167 (= res!1026065 (validRegex!2820 lt!874272))))

(declare-fun e!1537516 () Regex!7100)

(assert (=> d!701167 (= lt!874272 e!1537516)))

(declare-fun c!384978 () Bool)

(declare-fun e!1537519 () Bool)

(assert (=> d!701167 (= c!384978 e!1537519)))

(declare-fun res!1026064 () Bool)

(assert (=> d!701167 (=> (not res!1026064) (not e!1537519))))

(assert (=> d!701167 (= res!1026064 (is-Cons!28340 l!9164))))

(assert (=> d!701167 (forall!5734 l!9164 lambda!90992)))

(assert (=> d!701167 (= (generalisedConcat!201 l!9164) lt!874272)))

(declare-fun b!2415992 () Bool)

(assert (=> b!2415992 (= e!1537519 (isEmpty!16347 (t!208415 l!9164)))))

(declare-fun b!2415993 () Bool)

(declare-fun e!1537520 () Regex!7100)

(assert (=> b!2415993 (= e!1537516 e!1537520)))

(declare-fun c!384981 () Bool)

(assert (=> b!2415993 (= c!384981 (is-Cons!28340 l!9164))))

(declare-fun b!2415994 () Bool)

(declare-fun e!1537521 () Bool)

(assert (=> b!2415994 (= e!1537521 e!1537518)))

(declare-fun c!384980 () Bool)

(assert (=> b!2415994 (= c!384980 (isEmpty!16347 (tail!3684 l!9164)))))

(declare-fun b!2415995 () Bool)

(assert (=> b!2415995 (= e!1537517 e!1537521)))

(declare-fun c!384979 () Bool)

(assert (=> b!2415995 (= c!384979 (isEmpty!16347 l!9164))))

(declare-fun b!2415996 () Bool)

(assert (=> b!2415996 (= e!1537520 (Concat!11736 (h!33741 l!9164) (generalisedConcat!201 (t!208415 l!9164))))))

(declare-fun b!2415997 () Bool)

(assert (=> b!2415997 (= e!1537520 EmptyExpr!7100)))

(declare-fun b!2415998 () Bool)

(assert (=> b!2415998 (= e!1537516 (h!33741 l!9164))))

(declare-fun b!2415999 () Bool)

(declare-fun isEmptyExpr!155 (Regex!7100) Bool)

(assert (=> b!2415999 (= e!1537521 (isEmptyExpr!155 lt!874272))))

(assert (= (and d!701167 res!1026064) b!2415992))

(assert (= (and d!701167 c!384978) b!2415998))

(assert (= (and d!701167 (not c!384978)) b!2415993))

(assert (= (and b!2415993 c!384981) b!2415996))

(assert (= (and b!2415993 (not c!384981)) b!2415997))

(assert (= (and d!701167 res!1026065) b!2415995))

(assert (= (and b!2415995 c!384979) b!2415999))

(assert (= (and b!2415995 (not c!384979)) b!2415994))

(assert (= (and b!2415994 c!384980) b!2415990))

(assert (= (and b!2415994 (not c!384980)) b!2415991))

(assert (=> b!2415995 m!2804659))

(assert (=> b!2415990 m!2804655))

(declare-fun m!2804747 () Bool)

(assert (=> b!2415992 m!2804747))

(declare-fun m!2804749 () Bool)

(assert (=> b!2415999 m!2804749))

(declare-fun m!2804751 () Bool)

(assert (=> b!2415991 m!2804751))

(declare-fun m!2804753 () Bool)

(assert (=> d!701167 m!2804753))

(declare-fun m!2804755 () Bool)

(assert (=> d!701167 m!2804755))

(declare-fun m!2804757 () Bool)

(assert (=> b!2415996 m!2804757))

(assert (=> b!2415994 m!2804643))

(assert (=> b!2415994 m!2804643))

(declare-fun m!2804759 () Bool)

(assert (=> b!2415994 m!2804759))

(assert (=> b!2415782 d!701167))

(declare-fun d!701171 () Bool)

(declare-fun res!1026070 () Bool)

(declare-fun e!1537526 () Bool)

(assert (=> d!701171 (=> res!1026070 e!1537526)))

(assert (=> d!701171 (= res!1026070 (is-Nil!28340 lt!874229))))

(assert (=> d!701171 (= (forall!5734 lt!874229 lambda!90978) e!1537526)))

(declare-fun b!2416004 () Bool)

(declare-fun e!1537527 () Bool)

(assert (=> b!2416004 (= e!1537526 e!1537527)))

(declare-fun res!1026071 () Bool)

(assert (=> b!2416004 (=> (not res!1026071) (not e!1537527))))

(declare-fun dynLambda!12197 (Int Regex!7100) Bool)

(assert (=> b!2416004 (= res!1026071 (dynLambda!12197 lambda!90978 (h!33741 lt!874229)))))

(declare-fun b!2416005 () Bool)

(assert (=> b!2416005 (= e!1537527 (forall!5734 (t!208415 lt!874229) lambda!90978))))

(assert (= (and d!701171 (not res!1026070)) b!2416004))

(assert (= (and b!2416004 res!1026071) b!2416005))

(declare-fun b_lambda!74563 () Bool)

(assert (=> (not b_lambda!74563) (not b!2416004)))

(declare-fun m!2804761 () Bool)

(assert (=> b!2416004 m!2804761))

(declare-fun m!2804763 () Bool)

(assert (=> b!2416005 m!2804763))

(assert (=> b!2415788 d!701171))

(declare-fun d!701173 () Bool)

(declare-fun isEmpty!16350 (Option!5601) Bool)

(assert (=> d!701173 (= (isDefined!4427 lt!874236) (not (isEmpty!16350 lt!874236)))))

(declare-fun bs!463568 () Bool)

(assert (= bs!463568 d!701173))

(declare-fun m!2804765 () Bool)

(assert (=> bs!463568 m!2804765))

(assert (=> b!2415788 d!701173))

(declare-fun b!2416052 () Bool)

(declare-fun e!1537556 () Option!5601)

(assert (=> b!2416052 (= e!1537556 None!5600)))

(declare-fun b!2416053 () Bool)

(declare-fun e!1537554 () Bool)

(declare-fun lt!874279 () Option!5601)

(assert (=> b!2416053 (= e!1537554 (= (++!7021 (_1!16531 (get!8703 lt!874279)) (_2!16531 (get!8703 lt!874279))) s!9460))))

(declare-fun b!2416054 () Bool)

(declare-fun e!1537557 () Bool)

(assert (=> b!2416054 (= e!1537557 (not (isDefined!4427 lt!874279)))))

(declare-fun b!2416055 () Bool)

(declare-fun e!1537558 () Bool)

(assert (=> b!2416055 (= e!1537558 (matchR!3217 EmptyExpr!7100 s!9460))))

(declare-fun b!2416056 () Bool)

(declare-fun res!1026095 () Bool)

(assert (=> b!2416056 (=> (not res!1026095) (not e!1537554))))

(assert (=> b!2416056 (= res!1026095 (matchR!3217 lt!874231 (_1!16531 (get!8703 lt!874279))))))

(declare-fun b!2416057 () Bool)

(declare-fun res!1026098 () Bool)

(assert (=> b!2416057 (=> (not res!1026098) (not e!1537554))))

(assert (=> b!2416057 (= res!1026098 (matchR!3217 EmptyExpr!7100 (_2!16531 (get!8703 lt!874279))))))

(declare-fun b!2416058 () Bool)

(declare-fun lt!874280 () Unit!41475)

(declare-fun lt!874281 () Unit!41475)

(assert (=> b!2416058 (= lt!874280 lt!874281)))

(assert (=> b!2416058 (= (++!7021 (++!7021 Nil!28341 (Cons!28341 (h!33742 s!9460) Nil!28341)) (t!208416 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!649 (List!28439 C!14358 List!28439 List!28439) Unit!41475)

(assert (=> b!2416058 (= lt!874281 (lemmaMoveElementToOtherListKeepsConcatEq!649 Nil!28341 (h!33742 s!9460) (t!208416 s!9460) s!9460))))

(assert (=> b!2416058 (= e!1537556 (findConcatSeparation!709 lt!874231 EmptyExpr!7100 (++!7021 Nil!28341 (Cons!28341 (h!33742 s!9460) Nil!28341)) (t!208416 s!9460) s!9460))))

(declare-fun d!701175 () Bool)

(assert (=> d!701175 e!1537557))

(declare-fun res!1026094 () Bool)

(assert (=> d!701175 (=> res!1026094 e!1537557)))

(assert (=> d!701175 (= res!1026094 e!1537554)))

(declare-fun res!1026097 () Bool)

(assert (=> d!701175 (=> (not res!1026097) (not e!1537554))))

(assert (=> d!701175 (= res!1026097 (isDefined!4427 lt!874279))))

(declare-fun e!1537555 () Option!5601)

(assert (=> d!701175 (= lt!874279 e!1537555)))

(declare-fun c!384995 () Bool)

(assert (=> d!701175 (= c!384995 e!1537558)))

(declare-fun res!1026096 () Bool)

(assert (=> d!701175 (=> (not res!1026096) (not e!1537558))))

(assert (=> d!701175 (= res!1026096 (matchR!3217 lt!874231 Nil!28341))))

(assert (=> d!701175 (validRegex!2820 lt!874231)))

(assert (=> d!701175 (= (findConcatSeparation!709 lt!874231 EmptyExpr!7100 Nil!28341 s!9460 s!9460) lt!874279)))

(declare-fun b!2416059 () Bool)

(assert (=> b!2416059 (= e!1537555 e!1537556)))

(declare-fun c!384994 () Bool)

(assert (=> b!2416059 (= c!384994 (is-Nil!28341 s!9460))))

(declare-fun b!2416060 () Bool)

(assert (=> b!2416060 (= e!1537555 (Some!5600 (tuple2!27981 Nil!28341 s!9460)))))

(assert (= (and d!701175 res!1026096) b!2416055))

(assert (= (and d!701175 c!384995) b!2416060))

(assert (= (and d!701175 (not c!384995)) b!2416059))

(assert (= (and b!2416059 c!384994) b!2416052))

(assert (= (and b!2416059 (not c!384994)) b!2416058))

(assert (= (and d!701175 res!1026097) b!2416056))

(assert (= (and b!2416056 res!1026095) b!2416057))

(assert (= (and b!2416057 res!1026098) b!2416053))

(assert (= (and d!701175 (not res!1026094)) b!2416054))

(declare-fun m!2804767 () Bool)

(assert (=> b!2416056 m!2804767))

(declare-fun m!2804769 () Bool)

(assert (=> b!2416056 m!2804769))

(declare-fun m!2804771 () Bool)

(assert (=> b!2416054 m!2804771))

(assert (=> b!2416057 m!2804767))

(declare-fun m!2804773 () Bool)

(assert (=> b!2416057 m!2804773))

(assert (=> b!2416053 m!2804767))

(declare-fun m!2804775 () Bool)

(assert (=> b!2416053 m!2804775))

(assert (=> d!701175 m!2804771))

(declare-fun m!2804777 () Bool)

(assert (=> d!701175 m!2804777))

(declare-fun m!2804779 () Bool)

(assert (=> d!701175 m!2804779))

(declare-fun m!2804781 () Bool)

(assert (=> b!2416055 m!2804781))

(declare-fun m!2804783 () Bool)

(assert (=> b!2416058 m!2804783))

(assert (=> b!2416058 m!2804783))

(declare-fun m!2804785 () Bool)

(assert (=> b!2416058 m!2804785))

(declare-fun m!2804787 () Bool)

(assert (=> b!2416058 m!2804787))

(assert (=> b!2416058 m!2804783))

(declare-fun m!2804789 () Bool)

(assert (=> b!2416058 m!2804789))

(assert (=> b!2415788 d!701175))

(declare-fun b!2416066 () Bool)

(declare-fun res!1026104 () Bool)

(declare-fun e!1537563 () Bool)

(assert (=> b!2416066 (=> (not res!1026104) (not e!1537563))))

(assert (=> b!2416066 (= res!1026104 (isEmpty!16349 (tail!3686 s!9460)))))

(declare-fun b!2416067 () Bool)

(declare-fun e!1537561 () Bool)

(declare-fun e!1537564 () Bool)

(assert (=> b!2416067 (= e!1537561 e!1537564)))

(declare-fun res!1026109 () Bool)

(assert (=> b!2416067 (=> res!1026109 e!1537564)))

(declare-fun call!147505 () Bool)

(assert (=> b!2416067 (= res!1026109 call!147505)))

(declare-fun b!2416068 () Bool)

(declare-fun res!1026106 () Bool)

(assert (=> b!2416068 (=> (not res!1026106) (not e!1537563))))

(assert (=> b!2416068 (= res!1026106 (not call!147505))))

(declare-fun b!2416069 () Bool)

(declare-fun e!1537562 () Bool)

(assert (=> b!2416069 (= e!1537562 (nullable!2135 lt!874231))))

(declare-fun b!2416070 () Bool)

(declare-fun e!1537567 () Bool)

(declare-fun lt!874282 () Bool)

(assert (=> b!2416070 (= e!1537567 (= lt!874282 call!147505))))

(declare-fun bm!147500 () Bool)

(assert (=> bm!147500 (= call!147505 (isEmpty!16349 s!9460))))

(declare-fun b!2416071 () Bool)

(declare-fun e!1537565 () Bool)

(assert (=> b!2416071 (= e!1537567 e!1537565)))

(declare-fun c!384997 () Bool)

(assert (=> b!2416071 (= c!384997 (is-EmptyLang!7100 lt!874231))))

(declare-fun b!2416072 () Bool)

(declare-fun res!1026108 () Bool)

(assert (=> b!2416072 (=> res!1026108 e!1537564)))

(assert (=> b!2416072 (= res!1026108 (not (isEmpty!16349 (tail!3686 s!9460))))))

(declare-fun b!2416073 () Bool)

(declare-fun res!1026110 () Bool)

(declare-fun e!1537566 () Bool)

(assert (=> b!2416073 (=> res!1026110 e!1537566)))

(assert (=> b!2416073 (= res!1026110 e!1537563)))

(declare-fun res!1026103 () Bool)

(assert (=> b!2416073 (=> (not res!1026103) (not e!1537563))))

(assert (=> b!2416073 (= res!1026103 lt!874282)))

(declare-fun b!2416074 () Bool)

(assert (=> b!2416074 (= e!1537565 (not lt!874282))))

(declare-fun d!701177 () Bool)

(assert (=> d!701177 e!1537567))

(declare-fun c!384996 () Bool)

(assert (=> d!701177 (= c!384996 (is-EmptyExpr!7100 lt!874231))))

(assert (=> d!701177 (= lt!874282 e!1537562)))

(declare-fun c!384998 () Bool)

(assert (=> d!701177 (= c!384998 (isEmpty!16349 s!9460))))

(assert (=> d!701177 (validRegex!2820 lt!874231)))

(assert (=> d!701177 (= (matchR!3217 lt!874231 s!9460) lt!874282)))

(declare-fun b!2416065 () Bool)

(assert (=> b!2416065 (= e!1537566 e!1537561)))

(declare-fun res!1026105 () Bool)

(assert (=> b!2416065 (=> (not res!1026105) (not e!1537561))))

(assert (=> b!2416065 (= res!1026105 (not lt!874282))))

(declare-fun b!2416075 () Bool)

(assert (=> b!2416075 (= e!1537562 (matchR!3217 (derivativeStep!1792 lt!874231 (head!5414 s!9460)) (tail!3686 s!9460)))))

(declare-fun b!2416076 () Bool)

(assert (=> b!2416076 (= e!1537563 (= (head!5414 s!9460) (c!384935 lt!874231)))))

(declare-fun b!2416077 () Bool)

(declare-fun res!1026107 () Bool)

(assert (=> b!2416077 (=> res!1026107 e!1537566)))

(assert (=> b!2416077 (= res!1026107 (not (is-ElementMatch!7100 lt!874231)))))

(assert (=> b!2416077 (= e!1537565 e!1537566)))

(declare-fun b!2416078 () Bool)

(assert (=> b!2416078 (= e!1537564 (not (= (head!5414 s!9460) (c!384935 lt!874231))))))

(assert (= (and d!701177 c!384998) b!2416069))

(assert (= (and d!701177 (not c!384998)) b!2416075))

(assert (= (and d!701177 c!384996) b!2416070))

(assert (= (and d!701177 (not c!384996)) b!2416071))

(assert (= (and b!2416071 c!384997) b!2416074))

(assert (= (and b!2416071 (not c!384997)) b!2416077))

(assert (= (and b!2416077 (not res!1026107)) b!2416073))

(assert (= (and b!2416073 res!1026103) b!2416068))

(assert (= (and b!2416068 res!1026106) b!2416066))

(assert (= (and b!2416066 res!1026104) b!2416076))

(assert (= (and b!2416073 (not res!1026110)) b!2416065))

(assert (= (and b!2416065 res!1026105) b!2416067))

(assert (= (and b!2416067 (not res!1026109)) b!2416072))

(assert (= (and b!2416072 (not res!1026108)) b!2416078))

(assert (= (or b!2416070 b!2416067 b!2416068) bm!147500))

(assert (=> b!2416066 m!2804707))

(assert (=> b!2416066 m!2804707))

(assert (=> b!2416066 m!2804709))

(assert (=> d!701177 m!2804711))

(assert (=> d!701177 m!2804779))

(declare-fun m!2804791 () Bool)

(assert (=> b!2416069 m!2804791))

(assert (=> b!2416075 m!2804717))

(assert (=> b!2416075 m!2804717))

(declare-fun m!2804793 () Bool)

(assert (=> b!2416075 m!2804793))

(assert (=> b!2416075 m!2804707))

(assert (=> b!2416075 m!2804793))

(assert (=> b!2416075 m!2804707))

(declare-fun m!2804795 () Bool)

(assert (=> b!2416075 m!2804795))

(assert (=> b!2416072 m!2804707))

(assert (=> b!2416072 m!2804707))

(assert (=> b!2416072 m!2804709))

(assert (=> bm!147500 m!2804711))

(assert (=> b!2416076 m!2804717))

(assert (=> b!2416078 m!2804717))

(assert (=> b!2415789 d!701177))

(declare-fun d!701179 () Bool)

(assert (=> d!701179 (= (head!5412 l!9164) (h!33741 l!9164))))

(assert (=> b!2415789 d!701179))

(declare-fun d!701181 () Bool)

(assert (=> d!701181 (= (get!8703 lt!874236) (v!31008 lt!874236))))

(assert (=> b!2415790 d!701181))

(declare-fun d!701183 () Bool)

(assert (=> d!701183 (matchR!3217 (Concat!11736 lt!874231 EmptyExpr!7100) (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234)))))

(declare-fun lt!874285 () Unit!41475)

(declare-fun choose!14285 (Regex!7100 Regex!7100 List!28439 List!28439 List!28439) Unit!41475)

(assert (=> d!701183 (= lt!874285 (choose!14285 lt!874231 EmptyExpr!7100 (_1!16531 lt!874234) (_2!16531 lt!874234) s!9460))))

(assert (=> d!701183 (validRegex!2820 lt!874231)))

(assert (=> d!701183 (= (lemmaFindSeparationIsDefinedThenConcatMatches!49 lt!874231 EmptyExpr!7100 (_1!16531 lt!874234) (_2!16531 lt!874234) s!9460) lt!874285)))

(declare-fun bs!463569 () Bool)

(assert (= bs!463569 d!701183))

(assert (=> bs!463569 m!2804667))

(assert (=> bs!463569 m!2804667))

(assert (=> bs!463569 m!2804669))

(declare-fun m!2804797 () Bool)

(assert (=> bs!463569 m!2804797))

(assert (=> bs!463569 m!2804779))

(assert (=> b!2415790 d!701183))

(declare-fun b!2416080 () Bool)

(declare-fun res!1026112 () Bool)

(declare-fun e!1537570 () Bool)

(assert (=> b!2416080 (=> (not res!1026112) (not e!1537570))))

(assert (=> b!2416080 (= res!1026112 (isEmpty!16349 (tail!3686 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234)))))))

(declare-fun b!2416081 () Bool)

(declare-fun e!1537568 () Bool)

(declare-fun e!1537571 () Bool)

(assert (=> b!2416081 (= e!1537568 e!1537571)))

(declare-fun res!1026117 () Bool)

(assert (=> b!2416081 (=> res!1026117 e!1537571)))

(declare-fun call!147510 () Bool)

(assert (=> b!2416081 (= res!1026117 call!147510)))

(declare-fun b!2416082 () Bool)

(declare-fun res!1026114 () Bool)

(assert (=> b!2416082 (=> (not res!1026114) (not e!1537570))))

(assert (=> b!2416082 (= res!1026114 (not call!147510))))

(declare-fun b!2416083 () Bool)

(declare-fun e!1537569 () Bool)

(assert (=> b!2416083 (= e!1537569 (nullable!2135 (Concat!11736 lt!874231 EmptyExpr!7100)))))

(declare-fun b!2416084 () Bool)

(declare-fun e!1537574 () Bool)

(declare-fun lt!874286 () Bool)

(assert (=> b!2416084 (= e!1537574 (= lt!874286 call!147510))))

(declare-fun bm!147505 () Bool)

(assert (=> bm!147505 (= call!147510 (isEmpty!16349 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))))))

(declare-fun b!2416085 () Bool)

(declare-fun e!1537572 () Bool)

(assert (=> b!2416085 (= e!1537574 e!1537572)))

(declare-fun c!385000 () Bool)

(assert (=> b!2416085 (= c!385000 (is-EmptyLang!7100 (Concat!11736 lt!874231 EmptyExpr!7100)))))

(declare-fun b!2416086 () Bool)

(declare-fun res!1026116 () Bool)

(assert (=> b!2416086 (=> res!1026116 e!1537571)))

(assert (=> b!2416086 (= res!1026116 (not (isEmpty!16349 (tail!3686 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))))))))

(declare-fun b!2416087 () Bool)

(declare-fun res!1026118 () Bool)

(declare-fun e!1537573 () Bool)

(assert (=> b!2416087 (=> res!1026118 e!1537573)))

(assert (=> b!2416087 (= res!1026118 e!1537570)))

(declare-fun res!1026111 () Bool)

(assert (=> b!2416087 (=> (not res!1026111) (not e!1537570))))

(assert (=> b!2416087 (= res!1026111 lt!874286)))

(declare-fun b!2416088 () Bool)

(assert (=> b!2416088 (= e!1537572 (not lt!874286))))

(declare-fun d!701185 () Bool)

(assert (=> d!701185 e!1537574))

(declare-fun c!384999 () Bool)

(assert (=> d!701185 (= c!384999 (is-EmptyExpr!7100 (Concat!11736 lt!874231 EmptyExpr!7100)))))

(assert (=> d!701185 (= lt!874286 e!1537569)))

(declare-fun c!385001 () Bool)

(assert (=> d!701185 (= c!385001 (isEmpty!16349 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))))))

(assert (=> d!701185 (validRegex!2820 (Concat!11736 lt!874231 EmptyExpr!7100))))

(assert (=> d!701185 (= (matchR!3217 (Concat!11736 lt!874231 EmptyExpr!7100) (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))) lt!874286)))

(declare-fun b!2416079 () Bool)

(assert (=> b!2416079 (= e!1537573 e!1537568)))

(declare-fun res!1026113 () Bool)

(assert (=> b!2416079 (=> (not res!1026113) (not e!1537568))))

(assert (=> b!2416079 (= res!1026113 (not lt!874286))))

(declare-fun b!2416089 () Bool)

(assert (=> b!2416089 (= e!1537569 (matchR!3217 (derivativeStep!1792 (Concat!11736 lt!874231 EmptyExpr!7100) (head!5414 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234)))) (tail!3686 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234)))))))

(declare-fun b!2416090 () Bool)

(assert (=> b!2416090 (= e!1537570 (= (head!5414 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))) (c!384935 (Concat!11736 lt!874231 EmptyExpr!7100))))))

(declare-fun b!2416091 () Bool)

(declare-fun res!1026115 () Bool)

(assert (=> b!2416091 (=> res!1026115 e!1537573)))

(assert (=> b!2416091 (= res!1026115 (not (is-ElementMatch!7100 (Concat!11736 lt!874231 EmptyExpr!7100))))))

(assert (=> b!2416091 (= e!1537572 e!1537573)))

(declare-fun b!2416092 () Bool)

(assert (=> b!2416092 (= e!1537571 (not (= (head!5414 (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234))) (c!384935 (Concat!11736 lt!874231 EmptyExpr!7100)))))))

(assert (= (and d!701185 c!385001) b!2416083))

(assert (= (and d!701185 (not c!385001)) b!2416089))

(assert (= (and d!701185 c!384999) b!2416084))

(assert (= (and d!701185 (not c!384999)) b!2416085))

(assert (= (and b!2416085 c!385000) b!2416088))

(assert (= (and b!2416085 (not c!385000)) b!2416091))

(assert (= (and b!2416091 (not res!1026115)) b!2416087))

(assert (= (and b!2416087 res!1026111) b!2416082))

(assert (= (and b!2416082 res!1026114) b!2416080))

(assert (= (and b!2416080 res!1026112) b!2416090))

(assert (= (and b!2416087 (not res!1026118)) b!2416079))

(assert (= (and b!2416079 res!1026113) b!2416081))

(assert (= (and b!2416081 (not res!1026117)) b!2416086))

(assert (= (and b!2416086 (not res!1026116)) b!2416092))

(assert (= (or b!2416084 b!2416081 b!2416082) bm!147505))

(assert (=> b!2416080 m!2804667))

(declare-fun m!2804799 () Bool)

(assert (=> b!2416080 m!2804799))

(assert (=> b!2416080 m!2804799))

(declare-fun m!2804801 () Bool)

(assert (=> b!2416080 m!2804801))

(assert (=> d!701185 m!2804667))

(declare-fun m!2804803 () Bool)

(assert (=> d!701185 m!2804803))

(declare-fun m!2804805 () Bool)

(assert (=> d!701185 m!2804805))

(declare-fun m!2804807 () Bool)

(assert (=> b!2416083 m!2804807))

(assert (=> b!2416089 m!2804667))

(declare-fun m!2804809 () Bool)

(assert (=> b!2416089 m!2804809))

(assert (=> b!2416089 m!2804809))

(declare-fun m!2804811 () Bool)

(assert (=> b!2416089 m!2804811))

(assert (=> b!2416089 m!2804667))

(assert (=> b!2416089 m!2804799))

(assert (=> b!2416089 m!2804811))

(assert (=> b!2416089 m!2804799))

(declare-fun m!2804813 () Bool)

(assert (=> b!2416089 m!2804813))

(assert (=> b!2416086 m!2804667))

(assert (=> b!2416086 m!2804799))

(assert (=> b!2416086 m!2804799))

(assert (=> b!2416086 m!2804801))

(assert (=> bm!147505 m!2804667))

(assert (=> bm!147505 m!2804803))

(assert (=> b!2416090 m!2804667))

(assert (=> b!2416090 m!2804809))

(assert (=> b!2416092 m!2804667))

(assert (=> b!2416092 m!2804809))

(assert (=> b!2415790 d!701185))

(declare-fun d!701187 () Bool)

(declare-fun e!1537586 () Bool)

(assert (=> d!701187 e!1537586))

(declare-fun res!1026126 () Bool)

(assert (=> d!701187 (=> (not res!1026126) (not e!1537586))))

(declare-fun lt!874289 () List!28439)

(declare-fun content!3887 (List!28439) (Set C!14358))

(assert (=> d!701187 (= res!1026126 (= (content!3887 lt!874289) (set.union (content!3887 (_1!16531 lt!874234)) (content!3887 (_2!16531 lt!874234)))))))

(declare-fun e!1537587 () List!28439)

(assert (=> d!701187 (= lt!874289 e!1537587)))

(declare-fun c!385008 () Bool)

(assert (=> d!701187 (= c!385008 (is-Nil!28341 (_1!16531 lt!874234)))))

(assert (=> d!701187 (= (++!7021 (_1!16531 lt!874234) (_2!16531 lt!874234)) lt!874289)))

(declare-fun b!2416114 () Bool)

(declare-fun res!1026127 () Bool)

(assert (=> b!2416114 (=> (not res!1026127) (not e!1537586))))

(declare-fun size!22225 (List!28439) Int)

(assert (=> b!2416114 (= res!1026127 (= (size!22225 lt!874289) (+ (size!22225 (_1!16531 lt!874234)) (size!22225 (_2!16531 lt!874234)))))))

(declare-fun b!2416115 () Bool)

(assert (=> b!2416115 (= e!1537586 (or (not (= (_2!16531 lt!874234) Nil!28341)) (= lt!874289 (_1!16531 lt!874234))))))

(declare-fun b!2416113 () Bool)

(assert (=> b!2416113 (= e!1537587 (Cons!28341 (h!33742 (_1!16531 lt!874234)) (++!7021 (t!208416 (_1!16531 lt!874234)) (_2!16531 lt!874234))))))

(declare-fun b!2416112 () Bool)

(assert (=> b!2416112 (= e!1537587 (_2!16531 lt!874234))))

(assert (= (and d!701187 c!385008) b!2416112))

(assert (= (and d!701187 (not c!385008)) b!2416113))

(assert (= (and d!701187 res!1026126) b!2416114))

(assert (= (and b!2416114 res!1026127) b!2416115))

(declare-fun m!2804815 () Bool)

(assert (=> d!701187 m!2804815))

(declare-fun m!2804817 () Bool)

(assert (=> d!701187 m!2804817))

(declare-fun m!2804819 () Bool)

(assert (=> d!701187 m!2804819))

(declare-fun m!2804821 () Bool)

(assert (=> b!2416114 m!2804821))

(declare-fun m!2804823 () Bool)

(assert (=> b!2416114 m!2804823))

(declare-fun m!2804825 () Bool)

(assert (=> b!2416114 m!2804825))

(declare-fun m!2804827 () Bool)

(assert (=> b!2416113 m!2804827))

(assert (=> b!2415790 d!701187))

(declare-fun d!701189 () Bool)

(assert (=> d!701189 (= (isEmpty!16347 l!9164) (is-Nil!28340 l!9164))))

(assert (=> b!2415780 d!701189))

(declare-fun d!701191 () Bool)

(assert (=> d!701191 (= (isEmpty!16347 lt!874229) (is-Nil!28340 lt!874229))))

(assert (=> b!2415785 d!701191))

(declare-fun d!701193 () Bool)

(assert (=> d!701193 (= (tail!3684 l!9164) (t!208415 l!9164))))

(assert (=> b!2415785 d!701193))

(declare-fun d!701195 () Bool)

(declare-fun res!1026128 () Bool)

(declare-fun e!1537588 () Bool)

(assert (=> d!701195 (=> res!1026128 e!1537588)))

(assert (=> d!701195 (= res!1026128 (is-Nil!28340 l!9164))))

(assert (=> d!701195 (= (forall!5734 l!9164 lambda!90978) e!1537588)))

(declare-fun b!2416118 () Bool)

(declare-fun e!1537589 () Bool)

(assert (=> b!2416118 (= e!1537588 e!1537589)))

(declare-fun res!1026129 () Bool)

(assert (=> b!2416118 (=> (not res!1026129) (not e!1537589))))

(assert (=> b!2416118 (= res!1026129 (dynLambda!12197 lambda!90978 (h!33741 l!9164)))))

(declare-fun b!2416119 () Bool)

(assert (=> b!2416119 (= e!1537589 (forall!5734 (t!208415 l!9164) lambda!90978))))

(assert (= (and d!701195 (not res!1026128)) b!2416118))

(assert (= (and b!2416118 res!1026129) b!2416119))

(declare-fun b_lambda!74565 () Bool)

(assert (=> (not b_lambda!74565) (not b!2416118)))

(declare-fun m!2804829 () Bool)

(assert (=> b!2416118 m!2804829))

(declare-fun m!2804831 () Bool)

(assert (=> b!2416119 m!2804831))

(assert (=> start!236678 d!701195))

(declare-fun bs!463570 () Bool)

(declare-fun d!701197 () Bool)

(assert (= bs!463570 (and d!701197 start!236678)))

(declare-fun lambda!90998 () Int)

(assert (=> bs!463570 (= lambda!90998 lambda!90978)))

(declare-fun bs!463571 () Bool)

(assert (= bs!463571 (and d!701197 d!701167)))

(assert (=> bs!463571 (= lambda!90998 lambda!90992)))

(declare-fun b!2416122 () Bool)

(declare-fun e!1537592 () Bool)

(declare-fun lt!874290 () Regex!7100)

(assert (=> b!2416122 (= e!1537592 (= lt!874290 (head!5412 lt!874229)))))

(declare-fun b!2416123 () Bool)

(assert (=> b!2416123 (= e!1537592 (isConcat!155 lt!874290))))

(declare-fun e!1537591 () Bool)

(assert (=> d!701197 e!1537591))

(declare-fun res!1026131 () Bool)

(assert (=> d!701197 (=> (not res!1026131) (not e!1537591))))

(assert (=> d!701197 (= res!1026131 (validRegex!2820 lt!874290))))

(declare-fun e!1537590 () Regex!7100)

(assert (=> d!701197 (= lt!874290 e!1537590)))

(declare-fun c!385009 () Bool)

(declare-fun e!1537593 () Bool)

(assert (=> d!701197 (= c!385009 e!1537593)))

(declare-fun res!1026130 () Bool)

(assert (=> d!701197 (=> (not res!1026130) (not e!1537593))))

(assert (=> d!701197 (= res!1026130 (is-Cons!28340 lt!874229))))

(assert (=> d!701197 (forall!5734 lt!874229 lambda!90998)))

(assert (=> d!701197 (= (generalisedConcat!201 lt!874229) lt!874290)))

(declare-fun b!2416124 () Bool)

(assert (=> b!2416124 (= e!1537593 (isEmpty!16347 (t!208415 lt!874229)))))

(declare-fun b!2416125 () Bool)

(declare-fun e!1537594 () Regex!7100)

(assert (=> b!2416125 (= e!1537590 e!1537594)))

(declare-fun c!385012 () Bool)

(assert (=> b!2416125 (= c!385012 (is-Cons!28340 lt!874229))))

(declare-fun b!2416126 () Bool)

(declare-fun e!1537595 () Bool)

(assert (=> b!2416126 (= e!1537595 e!1537592)))

(declare-fun c!385011 () Bool)

(assert (=> b!2416126 (= c!385011 (isEmpty!16347 (tail!3684 lt!874229)))))

(declare-fun b!2416127 () Bool)

(assert (=> b!2416127 (= e!1537591 e!1537595)))

(declare-fun c!385010 () Bool)

(assert (=> b!2416127 (= c!385010 (isEmpty!16347 lt!874229))))

(declare-fun b!2416128 () Bool)

(assert (=> b!2416128 (= e!1537594 (Concat!11736 (h!33741 lt!874229) (generalisedConcat!201 (t!208415 lt!874229))))))

(declare-fun b!2416129 () Bool)

(assert (=> b!2416129 (= e!1537594 EmptyExpr!7100)))

(declare-fun b!2416130 () Bool)

(assert (=> b!2416130 (= e!1537590 (h!33741 lt!874229))))

(declare-fun b!2416131 () Bool)

(assert (=> b!2416131 (= e!1537595 (isEmptyExpr!155 lt!874290))))

(assert (= (and d!701197 res!1026130) b!2416124))

(assert (= (and d!701197 c!385009) b!2416130))

(assert (= (and d!701197 (not c!385009)) b!2416125))

(assert (= (and b!2416125 c!385012) b!2416128))

(assert (= (and b!2416125 (not c!385012)) b!2416129))

(assert (= (and d!701197 res!1026131) b!2416127))

(assert (= (and b!2416127 c!385010) b!2416131))

(assert (= (and b!2416127 (not c!385010)) b!2416126))

(assert (= (and b!2416126 c!385011) b!2416122))

(assert (= (and b!2416126 (not c!385011)) b!2416123))

(assert (=> b!2416127 m!2804641))

(declare-fun m!2804833 () Bool)

(assert (=> b!2416122 m!2804833))

(declare-fun m!2804835 () Bool)

(assert (=> b!2416124 m!2804835))

(declare-fun m!2804837 () Bool)

(assert (=> b!2416131 m!2804837))

(declare-fun m!2804839 () Bool)

(assert (=> b!2416123 m!2804839))

(declare-fun m!2804841 () Bool)

(assert (=> d!701197 m!2804841))

(declare-fun m!2804843 () Bool)

(assert (=> d!701197 m!2804843))

(declare-fun m!2804845 () Bool)

(assert (=> b!2416128 m!2804845))

(declare-fun m!2804847 () Bool)

(assert (=> b!2416126 m!2804847))

(assert (=> b!2416126 m!2804847))

(declare-fun m!2804849 () Bool)

(assert (=> b!2416126 m!2804849))

(assert (=> b!2415786 d!701197))

(declare-fun b!2416136 () Bool)

(declare-fun e!1537598 () Bool)

(declare-fun tp!768324 () Bool)

(assert (=> b!2416136 (= e!1537598 (and tp_is_empty!11613 tp!768324))))

(assert (=> b!2415781 (= tp!768296 e!1537598)))

(assert (= (and b!2415781 (is-Cons!28341 (t!208416 s!9460))) b!2416136))

(declare-fun e!1537601 () Bool)

(assert (=> b!2415787 (= tp!768295 e!1537601)))

(declare-fun b!2416150 () Bool)

(declare-fun tp!768335 () Bool)

(declare-fun tp!768337 () Bool)

(assert (=> b!2416150 (= e!1537601 (and tp!768335 tp!768337))))

(declare-fun b!2416147 () Bool)

(assert (=> b!2416147 (= e!1537601 tp_is_empty!11613)))

(declare-fun b!2416148 () Bool)

(declare-fun tp!768338 () Bool)

(declare-fun tp!768336 () Bool)

(assert (=> b!2416148 (= e!1537601 (and tp!768338 tp!768336))))

(declare-fun b!2416149 () Bool)

(declare-fun tp!768339 () Bool)

(assert (=> b!2416149 (= e!1537601 tp!768339)))

(assert (= (and b!2415787 (is-ElementMatch!7100 (regOne!14712 r!13927))) b!2416147))

(assert (= (and b!2415787 (is-Concat!11736 (regOne!14712 r!13927))) b!2416148))

(assert (= (and b!2415787 (is-Star!7100 (regOne!14712 r!13927))) b!2416149))

(assert (= (and b!2415787 (is-Union!7100 (regOne!14712 r!13927))) b!2416150))

(declare-fun e!1537602 () Bool)

(assert (=> b!2415787 (= tp!768293 e!1537602)))

(declare-fun b!2416154 () Bool)

(declare-fun tp!768340 () Bool)

(declare-fun tp!768342 () Bool)

(assert (=> b!2416154 (= e!1537602 (and tp!768340 tp!768342))))

(declare-fun b!2416151 () Bool)

(assert (=> b!2416151 (= e!1537602 tp_is_empty!11613)))

(declare-fun b!2416152 () Bool)

(declare-fun tp!768343 () Bool)

(declare-fun tp!768341 () Bool)

(assert (=> b!2416152 (= e!1537602 (and tp!768343 tp!768341))))

(declare-fun b!2416153 () Bool)

(declare-fun tp!768344 () Bool)

(assert (=> b!2416153 (= e!1537602 tp!768344)))

(assert (= (and b!2415787 (is-ElementMatch!7100 (regTwo!14712 r!13927))) b!2416151))

(assert (= (and b!2415787 (is-Concat!11736 (regTwo!14712 r!13927))) b!2416152))

(assert (= (and b!2415787 (is-Star!7100 (regTwo!14712 r!13927))) b!2416153))

(assert (= (and b!2415787 (is-Union!7100 (regTwo!14712 r!13927))) b!2416154))

(declare-fun e!1537603 () Bool)

(assert (=> b!2415778 (= tp!768291 e!1537603)))

(declare-fun b!2416158 () Bool)

(declare-fun tp!768345 () Bool)

(declare-fun tp!768347 () Bool)

(assert (=> b!2416158 (= e!1537603 (and tp!768345 tp!768347))))

(declare-fun b!2416155 () Bool)

(assert (=> b!2416155 (= e!1537603 tp_is_empty!11613)))

(declare-fun b!2416156 () Bool)

(declare-fun tp!768348 () Bool)

(declare-fun tp!768346 () Bool)

(assert (=> b!2416156 (= e!1537603 (and tp!768348 tp!768346))))

(declare-fun b!2416157 () Bool)

(declare-fun tp!768349 () Bool)

(assert (=> b!2416157 (= e!1537603 tp!768349)))

(assert (= (and b!2415778 (is-ElementMatch!7100 (reg!7429 r!13927))) b!2416155))

(assert (= (and b!2415778 (is-Concat!11736 (reg!7429 r!13927))) b!2416156))

(assert (= (and b!2415778 (is-Star!7100 (reg!7429 r!13927))) b!2416157))

(assert (= (and b!2415778 (is-Union!7100 (reg!7429 r!13927))) b!2416158))

(declare-fun e!1537604 () Bool)

(assert (=> b!2415783 (= tp!768290 e!1537604)))

(declare-fun b!2416162 () Bool)

(declare-fun tp!768350 () Bool)

(declare-fun tp!768352 () Bool)

(assert (=> b!2416162 (= e!1537604 (and tp!768350 tp!768352))))

(declare-fun b!2416159 () Bool)

(assert (=> b!2416159 (= e!1537604 tp_is_empty!11613)))

(declare-fun b!2416160 () Bool)

(declare-fun tp!768353 () Bool)

(declare-fun tp!768351 () Bool)

(assert (=> b!2416160 (= e!1537604 (and tp!768353 tp!768351))))

(declare-fun b!2416161 () Bool)

(declare-fun tp!768354 () Bool)

(assert (=> b!2416161 (= e!1537604 tp!768354)))

(assert (= (and b!2415783 (is-ElementMatch!7100 (h!33741 l!9164))) b!2416159))

(assert (= (and b!2415783 (is-Concat!11736 (h!33741 l!9164))) b!2416160))

(assert (= (and b!2415783 (is-Star!7100 (h!33741 l!9164))) b!2416161))

(assert (= (and b!2415783 (is-Union!7100 (h!33741 l!9164))) b!2416162))

(declare-fun b!2416167 () Bool)

(declare-fun e!1537607 () Bool)

(declare-fun tp!768359 () Bool)

(declare-fun tp!768360 () Bool)

(assert (=> b!2416167 (= e!1537607 (and tp!768359 tp!768360))))

(assert (=> b!2415783 (= tp!768292 e!1537607)))

(assert (= (and b!2415783 (is-Cons!28340 (t!208415 l!9164))) b!2416167))

(declare-fun e!1537608 () Bool)

(assert (=> b!2415775 (= tp!768297 e!1537608)))

(declare-fun b!2416171 () Bool)

(declare-fun tp!768361 () Bool)

(declare-fun tp!768363 () Bool)

(assert (=> b!2416171 (= e!1537608 (and tp!768361 tp!768363))))

(declare-fun b!2416168 () Bool)

(assert (=> b!2416168 (= e!1537608 tp_is_empty!11613)))

(declare-fun b!2416169 () Bool)

(declare-fun tp!768364 () Bool)

(declare-fun tp!768362 () Bool)

(assert (=> b!2416169 (= e!1537608 (and tp!768364 tp!768362))))

(declare-fun b!2416170 () Bool)

(declare-fun tp!768365 () Bool)

(assert (=> b!2416170 (= e!1537608 tp!768365)))

(assert (= (and b!2415775 (is-ElementMatch!7100 (regOne!14713 r!13927))) b!2416168))

(assert (= (and b!2415775 (is-Concat!11736 (regOne!14713 r!13927))) b!2416169))

(assert (= (and b!2415775 (is-Star!7100 (regOne!14713 r!13927))) b!2416170))

(assert (= (and b!2415775 (is-Union!7100 (regOne!14713 r!13927))) b!2416171))

(declare-fun e!1537609 () Bool)

(assert (=> b!2415775 (= tp!768294 e!1537609)))

(declare-fun b!2416175 () Bool)

(declare-fun tp!768366 () Bool)

(declare-fun tp!768368 () Bool)

(assert (=> b!2416175 (= e!1537609 (and tp!768366 tp!768368))))

(declare-fun b!2416172 () Bool)

(assert (=> b!2416172 (= e!1537609 tp_is_empty!11613)))

(declare-fun b!2416173 () Bool)

(declare-fun tp!768369 () Bool)

(declare-fun tp!768367 () Bool)

(assert (=> b!2416173 (= e!1537609 (and tp!768369 tp!768367))))

(declare-fun b!2416174 () Bool)

(declare-fun tp!768370 () Bool)

(assert (=> b!2416174 (= e!1537609 tp!768370)))

(assert (= (and b!2415775 (is-ElementMatch!7100 (regTwo!14713 r!13927))) b!2416172))

(assert (= (and b!2415775 (is-Concat!11736 (regTwo!14713 r!13927))) b!2416173))

(assert (= (and b!2415775 (is-Star!7100 (regTwo!14713 r!13927))) b!2416174))

(assert (= (and b!2415775 (is-Union!7100 (regTwo!14713 r!13927))) b!2416175))

(declare-fun b_lambda!74567 () Bool)

(assert (= b_lambda!74565 (or start!236678 b_lambda!74567)))

(declare-fun bs!463573 () Bool)

(declare-fun d!701201 () Bool)

(assert (= bs!463573 (and d!701201 start!236678)))

(assert (=> bs!463573 (= (dynLambda!12197 lambda!90978 (h!33741 l!9164)) (validRegex!2820 (h!33741 l!9164)))))

(declare-fun m!2804857 () Bool)

(assert (=> bs!463573 m!2804857))

(assert (=> b!2416118 d!701201))

(declare-fun b_lambda!74569 () Bool)

(assert (= b_lambda!74563 (or start!236678 b_lambda!74569)))

(declare-fun bs!463574 () Bool)

(declare-fun d!701203 () Bool)

(assert (= bs!463574 (and d!701203 start!236678)))

(assert (=> bs!463574 (= (dynLambda!12197 lambda!90978 (h!33741 lt!874229)) (validRegex!2820 (h!33741 lt!874229)))))

(declare-fun m!2804859 () Bool)

(assert (=> bs!463574 m!2804859))

(assert (=> b!2416004 d!701203))

(push 1)

(assert (not b!2416083))

(assert (not b!2416174))

(assert (not d!701183))

(assert (not d!701159))

(assert (not b!2416092))

(assert (not b_lambda!74569))

(assert (not b!2416170))

(assert (not b!2416076))

(assert (not b!2416090))

(assert (not d!701197))

(assert (not b!2416127))

(assert (not bm!147497))

(assert (not b!2416055))

(assert (not b!2416128))

(assert (not b!2415878))

(assert (not b!2416124))

(assert (not d!701167))

(assert (not bm!147498))

(assert (not bm!147490))

(assert (not bm!147500))

(assert (not b!2416123))

(assert (not d!701165))

(assert (not b!2416078))

(assert (not b!2416157))

(assert (not b!2415868))

(assert (not b!2415996))

(assert (not b!2416069))

(assert (not b!2415877))

(assert (not b!2415994))

(assert (not b!2416066))

(assert (not b!2416089))

(assert (not b!2415992))

(assert (not b!2416053))

(assert (not b!2416154))

(assert (not d!701175))

(assert (not b!2416173))

(assert (not b!2415995))

(assert (not b!2416057))

(assert (not b!2416150))

(assert (not b!2416162))

(assert (not b!2416161))

(assert tp_is_empty!11613)

(assert (not b!2415874))

(assert (not bm!147505))

(assert (not b!2416075))

(assert (not b!2416126))

(assert (not b!2416058))

(assert (not b!2416156))

(assert (not b!2416072))

(assert (not d!701187))

(assert (not b!2416056))

(assert (not b!2416158))

(assert (not bs!463574))

(assert (not bs!463573))

(assert (not b!2416167))

(assert (not b!2415991))

(assert (not b!2415946))

(assert (not b!2415944))

(assert (not b!2416131))

(assert (not b!2416113))

(assert (not b!2416136))

(assert (not b!2416149))

(assert (not d!701185))

(assert (not b!2416119))

(assert (not b!2416171))

(assert (not b!2416086))

(assert (not b!2416054))

(assert (not b!2416148))

(assert (not d!701173))

(assert (not b!2415990))

(assert (not b!2416114))

(assert (not b!2416005))

(assert (not d!701177))

(assert (not b!2416080))

(assert (not b!2416175))

(assert (not b!2416169))

(assert (not b!2416152))

(assert (not b!2416160))

(assert (not b!2416122))

(assert (not b_lambda!74567))

(assert (not b!2415999))

(assert (not b!2415880))

(assert (not b!2416153))

(assert (not b!2415871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

