; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86128 () Bool)

(assert start!86128)

(declare-fun b!968591 () Bool)

(assert (=> b!968591 true))

(assert (=> b!968591 true))

(assert (=> b!968591 true))

(declare-fun lambda!34224 () Int)

(declare-fun lambda!34223 () Int)

(assert (=> b!968591 (not (= lambda!34224 lambda!34223))))

(assert (=> b!968591 true))

(assert (=> b!968591 true))

(assert (=> b!968591 true))

(declare-fun bs!242222 () Bool)

(declare-fun b!968586 () Bool)

(assert (= bs!242222 (and b!968586 b!968591)))

(declare-datatypes ((C!5958 0))(
  ( (C!5959 (val!3227 Int)) )
))
(declare-datatypes ((Regex!2694 0))(
  ( (ElementMatch!2694 (c!157890 C!5958)) (Concat!4527 (regOne!5900 Regex!2694) (regTwo!5900 Regex!2694)) (EmptyExpr!2694) (Star!2694 (reg!3023 Regex!2694)) (EmptyLang!2694) (Union!2694 (regOne!5901 Regex!2694) (regTwo!5901 Regex!2694)) )
))
(declare-fun lt!348556 () Regex!2694)

(declare-fun lt!348541 () Regex!2694)

(declare-fun lambda!34225 () Int)

(declare-fun lt!348552 () Regex!2694)

(declare-fun r!15766 () Regex!2694)

(assert (=> bs!242222 (= (and (= lt!348556 (reg!3023 r!15766)) (= lt!348552 lt!348541)) (= lambda!34225 lambda!34223))))

(assert (=> bs!242222 (not (= lambda!34225 lambda!34224))))

(assert (=> b!968586 true))

(assert (=> b!968586 true))

(assert (=> b!968586 true))

(declare-fun lambda!34226 () Int)

(assert (=> bs!242222 (not (= lambda!34226 lambda!34223))))

(assert (=> bs!242222 (= (and (= lt!348556 (reg!3023 r!15766)) (= lt!348552 lt!348541)) (= lambda!34226 lambda!34224))))

(assert (=> b!968586 (not (= lambda!34226 lambda!34225))))

(assert (=> b!968586 true))

(assert (=> b!968586 true))

(assert (=> b!968586 true))

(declare-fun e!624661 () Bool)

(declare-fun e!624659 () Bool)

(assert (=> b!968586 (= e!624661 e!624659)))

(declare-fun res!440393 () Bool)

(assert (=> b!968586 (=> res!440393 e!624659)))

(declare-datatypes ((List!9924 0))(
  ( (Nil!9908) (Cons!9908 (h!15309 C!5958) (t!100970 List!9924)) )
))
(declare-fun s!10566 () List!9924)

(declare-fun isEmpty!6216 (List!9924) Bool)

(assert (=> b!968586 (= res!440393 (isEmpty!6216 s!10566))))

(declare-fun Exists!437 (Int) Bool)

(assert (=> b!968586 (= (Exists!437 lambda!34225) (Exists!437 lambda!34226))))

(declare-datatypes ((Unit!15047 0))(
  ( (Unit!15048) )
))
(declare-fun lt!348557 () Unit!15047)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!155 (Regex!2694 List!9924) Unit!15047)

(assert (=> b!968586 (= lt!348557 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!155 lt!348556 s!10566))))

(declare-fun lt!348549 () Bool)

(assert (=> b!968586 (= lt!348549 (Exists!437 lambda!34225))))

(declare-datatypes ((tuple2!11266 0))(
  ( (tuple2!11267 (_1!6459 List!9924) (_2!6459 List!9924)) )
))
(declare-datatypes ((Option!2275 0))(
  ( (None!2274) (Some!2274 (v!19691 tuple2!11266)) )
))
(declare-fun lt!348540 () Option!2275)

(declare-fun isDefined!1917 (Option!2275) Bool)

(assert (=> b!968586 (= lt!348549 (isDefined!1917 lt!348540))))

(declare-fun findConcatSeparation!381 (Regex!2694 Regex!2694 List!9924 List!9924 List!9924) Option!2275)

(assert (=> b!968586 (= lt!348540 (findConcatSeparation!381 lt!348556 lt!348552 Nil!9908 s!10566 s!10566))))

(declare-fun lt!348546 () Unit!15047)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!381 (Regex!2694 Regex!2694 List!9924) Unit!15047)

(assert (=> b!968586 (= lt!348546 (lemmaFindConcatSeparationEquivalentToExists!381 lt!348556 lt!348552 s!10566))))

(declare-fun matchRSpec!495 (Regex!2694 List!9924) Bool)

(assert (=> b!968586 (matchRSpec!495 lt!348552 s!10566)))

(declare-fun lt!348548 () Unit!15047)

(declare-fun mainMatchTheorem!495 (Regex!2694 List!9924) Unit!15047)

(assert (=> b!968586 (= lt!348548 (mainMatchTheorem!495 lt!348552 s!10566))))

(declare-fun b!968587 () Bool)

(declare-fun e!624658 () Bool)

(declare-fun e!624662 () Bool)

(assert (=> b!968587 (= e!624658 (not e!624662))))

(declare-fun res!440394 () Bool)

(assert (=> b!968587 (=> res!440394 e!624662)))

(declare-fun lt!348553 () Bool)

(assert (=> b!968587 (= res!440394 (or lt!348553 (and (is-Concat!4527 r!15766) (is-EmptyExpr!2694 (regOne!5900 r!15766))) (and (is-Concat!4527 r!15766) (is-EmptyExpr!2694 (regTwo!5900 r!15766))) (is-Concat!4527 r!15766) (is-Union!2694 r!15766) (not (is-Star!2694 r!15766))))))

(assert (=> b!968587 (= lt!348553 (matchRSpec!495 r!15766 s!10566))))

(declare-fun matchR!1232 (Regex!2694 List!9924) Bool)

(assert (=> b!968587 (= lt!348553 (matchR!1232 r!15766 s!10566))))

(declare-fun lt!348542 () Unit!15047)

(assert (=> b!968587 (= lt!348542 (mainMatchTheorem!495 r!15766 s!10566))))

(declare-fun b!968588 () Bool)

(declare-fun res!440392 () Bool)

(assert (=> b!968588 (=> res!440392 e!624659)))

(assert (=> b!968588 (= res!440392 (not lt!348549))))

(declare-fun b!968589 () Bool)

(declare-fun res!440389 () Bool)

(declare-fun e!624656 () Bool)

(assert (=> b!968589 (=> res!440389 e!624656)))

(declare-fun lt!348558 () tuple2!11266)

(assert (=> b!968589 (= res!440389 (not (matchR!1232 lt!348552 (_2!6459 lt!348558))))))

(declare-fun b!968590 () Bool)

(declare-fun lt!348554 () Bool)

(assert (=> b!968590 (= e!624656 lt!348554)))

(declare-fun lt!348551 () Regex!2694)

(assert (=> b!968590 (= lt!348554 (matchR!1232 lt!348551 (_2!6459 lt!348558)))))

(assert (=> b!968590 (= lt!348554 (matchR!1232 lt!348541 (_2!6459 lt!348558)))))

(declare-fun removeUselessConcat!341 (Regex!2694) Regex!2694)

(assert (=> b!968590 (= lt!348551 (removeUselessConcat!341 lt!348541))))

(declare-fun lt!348544 () Unit!15047)

(declare-fun lemmaRemoveUselessConcatSound!193 (Regex!2694 List!9924) Unit!15047)

(assert (=> b!968590 (= lt!348544 (lemmaRemoveUselessConcatSound!193 lt!348541 (_2!6459 lt!348558)))))

(declare-fun lt!348545 () Unit!15047)

(declare-fun e!624660 () Unit!15047)

(assert (=> b!968590 (= lt!348545 e!624660)))

(declare-fun c!157889 () Bool)

(declare-fun size!7944 (List!9924) Int)

(assert (=> b!968590 (= c!157889 (= (size!7944 (_2!6459 lt!348558)) (size!7944 s!10566)))))

(assert (=> b!968590 (matchR!1232 (reg!3023 r!15766) (_1!6459 lt!348558))))

(declare-fun lt!348547 () Unit!15047)

(assert (=> b!968590 (= lt!348547 (lemmaRemoveUselessConcatSound!193 (reg!3023 r!15766) (_1!6459 lt!348558)))))

(assert (=> b!968591 (= e!624662 e!624661)))

(declare-fun res!440395 () Bool)

(assert (=> b!968591 (=> res!440395 e!624661)))

(assert (=> b!968591 (= res!440395 (not (matchR!1232 lt!348552 s!10566)))))

(assert (=> b!968591 (= lt!348552 (Star!2694 lt!348556))))

(assert (=> b!968591 (= lt!348556 (removeUselessConcat!341 (reg!3023 r!15766)))))

(assert (=> b!968591 (= (Exists!437 lambda!34223) (Exists!437 lambda!34224))))

(declare-fun lt!348550 () Unit!15047)

(assert (=> b!968591 (= lt!348550 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!155 (reg!3023 r!15766) s!10566))))

(assert (=> b!968591 (= (isDefined!1917 (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 Nil!9908 s!10566 s!10566)) (Exists!437 lambda!34223))))

(declare-fun lt!348555 () Unit!15047)

(assert (=> b!968591 (= lt!348555 (lemmaFindConcatSeparationEquivalentToExists!381 (reg!3023 r!15766) lt!348541 s!10566))))

(assert (=> b!968591 (= lt!348541 (Star!2694 (reg!3023 r!15766)))))

(declare-fun b!968592 () Bool)

(declare-fun e!624663 () Bool)

(declare-fun tp_is_empty!5031 () Bool)

(assert (=> b!968592 (= e!624663 tp_is_empty!5031)))

(declare-fun b!968593 () Bool)

(declare-fun tp!296829 () Bool)

(declare-fun tp!296825 () Bool)

(assert (=> b!968593 (= e!624663 (and tp!296829 tp!296825))))

(declare-fun b!968594 () Bool)

(declare-fun e!624657 () Bool)

(declare-fun tp!296830 () Bool)

(assert (=> b!968594 (= e!624657 (and tp_is_empty!5031 tp!296830))))

(declare-fun b!968595 () Bool)

(declare-fun tp!296826 () Bool)

(assert (=> b!968595 (= e!624663 tp!296826)))

(declare-fun b!968597 () Bool)

(declare-fun Unit!15049 () Unit!15047)

(assert (=> b!968597 (= e!624660 Unit!15049)))

(declare-fun b!968598 () Bool)

(declare-fun Unit!15050 () Unit!15047)

(assert (=> b!968598 (= e!624660 Unit!15050)))

(declare-fun lt!348543 () Unit!15047)

(assert (=> b!968598 (= lt!348543 (mainMatchTheorem!495 (reg!3023 r!15766) (_1!6459 lt!348558)))))

(assert (=> b!968598 false))

(declare-fun b!968599 () Bool)

(declare-fun tp!296827 () Bool)

(declare-fun tp!296828 () Bool)

(assert (=> b!968599 (= e!624663 (and tp!296827 tp!296828))))

(declare-fun b!968596 () Bool)

(assert (=> b!968596 (= e!624659 e!624656)))

(declare-fun res!440391 () Bool)

(assert (=> b!968596 (=> res!440391 e!624656)))

(assert (=> b!968596 (= res!440391 (not (matchR!1232 lt!348556 (_1!6459 lt!348558))))))

(declare-fun get!3406 (Option!2275) tuple2!11266)

(assert (=> b!968596 (= lt!348558 (get!3406 lt!348540))))

(declare-fun res!440390 () Bool)

(assert (=> start!86128 (=> (not res!440390) (not e!624658))))

(declare-fun validRegex!1163 (Regex!2694) Bool)

(assert (=> start!86128 (= res!440390 (validRegex!1163 r!15766))))

(assert (=> start!86128 e!624658))

(assert (=> start!86128 e!624663))

(assert (=> start!86128 e!624657))

(assert (= (and start!86128 res!440390) b!968587))

(assert (= (and b!968587 (not res!440394)) b!968591))

(assert (= (and b!968591 (not res!440395)) b!968586))

(assert (= (and b!968586 (not res!440393)) b!968588))

(assert (= (and b!968588 (not res!440392)) b!968596))

(assert (= (and b!968596 (not res!440391)) b!968589))

(assert (= (and b!968589 (not res!440389)) b!968590))

(assert (= (and b!968590 c!157889) b!968598))

(assert (= (and b!968590 (not c!157889)) b!968597))

(assert (= (and start!86128 (is-ElementMatch!2694 r!15766)) b!968592))

(assert (= (and start!86128 (is-Concat!4527 r!15766)) b!968593))

(assert (= (and start!86128 (is-Star!2694 r!15766)) b!968595))

(assert (= (and start!86128 (is-Union!2694 r!15766)) b!968599))

(assert (= (and start!86128 (is-Cons!9908 s!10566)) b!968594))

(declare-fun m!1173897 () Bool)

(assert (=> b!968586 m!1173897))

(declare-fun m!1173899 () Bool)

(assert (=> b!968586 m!1173899))

(declare-fun m!1173901 () Bool)

(assert (=> b!968586 m!1173901))

(declare-fun m!1173903 () Bool)

(assert (=> b!968586 m!1173903))

(declare-fun m!1173905 () Bool)

(assert (=> b!968586 m!1173905))

(assert (=> b!968586 m!1173899))

(declare-fun m!1173907 () Bool)

(assert (=> b!968586 m!1173907))

(declare-fun m!1173909 () Bool)

(assert (=> b!968586 m!1173909))

(declare-fun m!1173911 () Bool)

(assert (=> b!968586 m!1173911))

(declare-fun m!1173913 () Bool)

(assert (=> b!968586 m!1173913))

(declare-fun m!1173915 () Bool)

(assert (=> b!968587 m!1173915))

(declare-fun m!1173917 () Bool)

(assert (=> b!968587 m!1173917))

(declare-fun m!1173919 () Bool)

(assert (=> b!968587 m!1173919))

(declare-fun m!1173921 () Bool)

(assert (=> b!968591 m!1173921))

(assert (=> b!968591 m!1173921))

(declare-fun m!1173923 () Bool)

(assert (=> b!968591 m!1173923))

(declare-fun m!1173925 () Bool)

(assert (=> b!968591 m!1173925))

(declare-fun m!1173927 () Bool)

(assert (=> b!968591 m!1173927))

(assert (=> b!968591 m!1173927))

(declare-fun m!1173929 () Bool)

(assert (=> b!968591 m!1173929))

(declare-fun m!1173931 () Bool)

(assert (=> b!968591 m!1173931))

(declare-fun m!1173933 () Bool)

(assert (=> b!968591 m!1173933))

(declare-fun m!1173935 () Bool)

(assert (=> b!968591 m!1173935))

(declare-fun m!1173937 () Bool)

(assert (=> start!86128 m!1173937))

(declare-fun m!1173939 () Bool)

(assert (=> b!968598 m!1173939))

(declare-fun m!1173941 () Bool)

(assert (=> b!968590 m!1173941))

(declare-fun m!1173943 () Bool)

(assert (=> b!968590 m!1173943))

(declare-fun m!1173945 () Bool)

(assert (=> b!968590 m!1173945))

(declare-fun m!1173947 () Bool)

(assert (=> b!968590 m!1173947))

(declare-fun m!1173949 () Bool)

(assert (=> b!968590 m!1173949))

(declare-fun m!1173951 () Bool)

(assert (=> b!968590 m!1173951))

(declare-fun m!1173953 () Bool)

(assert (=> b!968590 m!1173953))

(declare-fun m!1173955 () Bool)

(assert (=> b!968590 m!1173955))

(declare-fun m!1173957 () Bool)

(assert (=> b!968589 m!1173957))

(declare-fun m!1173959 () Bool)

(assert (=> b!968596 m!1173959))

(declare-fun m!1173961 () Bool)

(assert (=> b!968596 m!1173961))

(push 1)

(assert (not b!968586))

(assert (not b!968599))

(assert (not b!968587))

(assert (not start!86128))

(assert (not b!968595))

(assert (not b!968598))

(assert (not b!968596))

(assert (not b!968591))

(assert (not b!968590))

(assert (not b!968594))

(assert tp_is_empty!5031)

(assert (not b!968589))

(assert (not b!968593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!286351 () Bool)

(assert (=> d!286351 (= (isEmpty!6216 s!10566) (is-Nil!9908 s!10566))))

(assert (=> b!968586 d!286351))

(declare-fun d!286355 () Bool)

(assert (=> d!286355 (= (matchR!1232 lt!348552 s!10566) (matchRSpec!495 lt!348552 s!10566))))

(declare-fun lt!348618 () Unit!15047)

(declare-fun choose!6121 (Regex!2694 List!9924) Unit!15047)

(assert (=> d!286355 (= lt!348618 (choose!6121 lt!348552 s!10566))))

(assert (=> d!286355 (validRegex!1163 lt!348552)))

(assert (=> d!286355 (= (mainMatchTheorem!495 lt!348552 s!10566) lt!348618)))

(declare-fun bs!242224 () Bool)

(assert (= bs!242224 d!286355))

(assert (=> bs!242224 m!1173935))

(assert (=> bs!242224 m!1173909))

(declare-fun m!1174029 () Bool)

(assert (=> bs!242224 m!1174029))

(declare-fun m!1174031 () Bool)

(assert (=> bs!242224 m!1174031))

(assert (=> b!968586 d!286355))

(declare-fun d!286357 () Bool)

(declare-fun choose!6122 (Int) Bool)

(assert (=> d!286357 (= (Exists!437 lambda!34226) (choose!6122 lambda!34226))))

(declare-fun bs!242225 () Bool)

(assert (= bs!242225 d!286357))

(declare-fun m!1174033 () Bool)

(assert (=> bs!242225 m!1174033))

(assert (=> b!968586 d!286357))

(declare-fun bs!242227 () Bool)

(declare-fun d!286359 () Bool)

(assert (= bs!242227 (and d!286359 b!968591)))

(declare-fun lambda!34245 () Int)

(assert (=> bs!242227 (= (and (= lt!348556 (reg!3023 r!15766)) (= lt!348552 lt!348541)) (= lambda!34245 lambda!34223))))

(assert (=> bs!242227 (not (= lambda!34245 lambda!34224))))

(declare-fun bs!242228 () Bool)

(assert (= bs!242228 (and d!286359 b!968586)))

(assert (=> bs!242228 (= lambda!34245 lambda!34225)))

(assert (=> bs!242228 (not (= lambda!34245 lambda!34226))))

(assert (=> d!286359 true))

(assert (=> d!286359 true))

(assert (=> d!286359 true))

(assert (=> d!286359 (= (isDefined!1917 (findConcatSeparation!381 lt!348556 lt!348552 Nil!9908 s!10566 s!10566)) (Exists!437 lambda!34245))))

(declare-fun lt!348624 () Unit!15047)

(declare-fun choose!6123 (Regex!2694 Regex!2694 List!9924) Unit!15047)

(assert (=> d!286359 (= lt!348624 (choose!6123 lt!348556 lt!348552 s!10566))))

(assert (=> d!286359 (validRegex!1163 lt!348556)))

(assert (=> d!286359 (= (lemmaFindConcatSeparationEquivalentToExists!381 lt!348556 lt!348552 s!10566) lt!348624)))

(declare-fun bs!242229 () Bool)

(assert (= bs!242229 d!286359))

(declare-fun m!1174041 () Bool)

(assert (=> bs!242229 m!1174041))

(assert (=> bs!242229 m!1173913))

(declare-fun m!1174043 () Bool)

(assert (=> bs!242229 m!1174043))

(assert (=> bs!242229 m!1173913))

(declare-fun m!1174045 () Bool)

(assert (=> bs!242229 m!1174045))

(declare-fun m!1174047 () Bool)

(assert (=> bs!242229 m!1174047))

(assert (=> b!968586 d!286359))

(declare-fun d!286363 () Bool)

(assert (=> d!286363 (= (Exists!437 lambda!34225) (choose!6122 lambda!34225))))

(declare-fun bs!242230 () Bool)

(assert (= bs!242230 d!286363))

(declare-fun m!1174049 () Bool)

(assert (=> bs!242230 m!1174049))

(assert (=> b!968586 d!286363))

(declare-fun d!286365 () Bool)

(declare-fun isEmpty!6218 (Option!2275) Bool)

(assert (=> d!286365 (= (isDefined!1917 lt!348540) (not (isEmpty!6218 lt!348540)))))

(declare-fun bs!242231 () Bool)

(assert (= bs!242231 d!286365))

(declare-fun m!1174051 () Bool)

(assert (=> bs!242231 m!1174051))

(assert (=> b!968586 d!286365))

(declare-fun b!968728 () Bool)

(declare-fun res!440474 () Bool)

(declare-fun e!624731 () Bool)

(assert (=> b!968728 (=> (not res!440474) (not e!624731))))

(declare-fun lt!348631 () Option!2275)

(assert (=> b!968728 (= res!440474 (matchR!1232 lt!348556 (_1!6459 (get!3406 lt!348631))))))

(declare-fun d!286367 () Bool)

(declare-fun e!624732 () Bool)

(assert (=> d!286367 e!624732))

(declare-fun res!440472 () Bool)

(assert (=> d!286367 (=> res!440472 e!624732)))

(assert (=> d!286367 (= res!440472 e!624731)))

(declare-fun res!440471 () Bool)

(assert (=> d!286367 (=> (not res!440471) (not e!624731))))

(assert (=> d!286367 (= res!440471 (isDefined!1917 lt!348631))))

(declare-fun e!624730 () Option!2275)

(assert (=> d!286367 (= lt!348631 e!624730)))

(declare-fun c!157908 () Bool)

(declare-fun e!624728 () Bool)

(assert (=> d!286367 (= c!157908 e!624728)))

(declare-fun res!440473 () Bool)

(assert (=> d!286367 (=> (not res!440473) (not e!624728))))

(assert (=> d!286367 (= res!440473 (matchR!1232 lt!348556 Nil!9908))))

(assert (=> d!286367 (validRegex!1163 lt!348556)))

(assert (=> d!286367 (= (findConcatSeparation!381 lt!348556 lt!348552 Nil!9908 s!10566 s!10566) lt!348631)))

(declare-fun b!968729 () Bool)

(declare-fun e!624729 () Option!2275)

(assert (=> b!968729 (= e!624730 e!624729)))

(declare-fun c!157907 () Bool)

(assert (=> b!968729 (= c!157907 (is-Nil!9908 s!10566))))

(declare-fun b!968730 () Bool)

(assert (=> b!968730 (= e!624728 (matchR!1232 lt!348552 s!10566))))

(declare-fun b!968731 () Bool)

(declare-fun ++!2680 (List!9924 List!9924) List!9924)

(assert (=> b!968731 (= e!624731 (= (++!2680 (_1!6459 (get!3406 lt!348631)) (_2!6459 (get!3406 lt!348631))) s!10566))))

(declare-fun b!968732 () Bool)

(declare-fun lt!348633 () Unit!15047)

(declare-fun lt!348632 () Unit!15047)

(assert (=> b!968732 (= lt!348633 lt!348632)))

(assert (=> b!968732 (= (++!2680 (++!2680 Nil!9908 (Cons!9908 (h!15309 s!10566) Nil!9908)) (t!100970 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!281 (List!9924 C!5958 List!9924 List!9924) Unit!15047)

(assert (=> b!968732 (= lt!348632 (lemmaMoveElementToOtherListKeepsConcatEq!281 Nil!9908 (h!15309 s!10566) (t!100970 s!10566) s!10566))))

(assert (=> b!968732 (= e!624729 (findConcatSeparation!381 lt!348556 lt!348552 (++!2680 Nil!9908 (Cons!9908 (h!15309 s!10566) Nil!9908)) (t!100970 s!10566) s!10566))))

(declare-fun b!968733 () Bool)

(declare-fun res!440475 () Bool)

(assert (=> b!968733 (=> (not res!440475) (not e!624731))))

(assert (=> b!968733 (= res!440475 (matchR!1232 lt!348552 (_2!6459 (get!3406 lt!348631))))))

(declare-fun b!968734 () Bool)

(assert (=> b!968734 (= e!624730 (Some!2274 (tuple2!11267 Nil!9908 s!10566)))))

(declare-fun b!968735 () Bool)

(assert (=> b!968735 (= e!624729 None!2274)))

(declare-fun b!968736 () Bool)

(assert (=> b!968736 (= e!624732 (not (isDefined!1917 lt!348631)))))

(assert (= (and d!286367 res!440473) b!968730))

(assert (= (and d!286367 c!157908) b!968734))

(assert (= (and d!286367 (not c!157908)) b!968729))

(assert (= (and b!968729 c!157907) b!968735))

(assert (= (and b!968729 (not c!157907)) b!968732))

(assert (= (and d!286367 res!440471) b!968728))

(assert (= (and b!968728 res!440474) b!968733))

(assert (= (and b!968733 res!440475) b!968731))

(assert (= (and d!286367 (not res!440472)) b!968736))

(declare-fun m!1174053 () Bool)

(assert (=> d!286367 m!1174053))

(declare-fun m!1174055 () Bool)

(assert (=> d!286367 m!1174055))

(assert (=> d!286367 m!1174047))

(declare-fun m!1174057 () Bool)

(assert (=> b!968731 m!1174057))

(declare-fun m!1174059 () Bool)

(assert (=> b!968731 m!1174059))

(assert (=> b!968733 m!1174057))

(declare-fun m!1174061 () Bool)

(assert (=> b!968733 m!1174061))

(declare-fun m!1174063 () Bool)

(assert (=> b!968732 m!1174063))

(assert (=> b!968732 m!1174063))

(declare-fun m!1174065 () Bool)

(assert (=> b!968732 m!1174065))

(declare-fun m!1174067 () Bool)

(assert (=> b!968732 m!1174067))

(assert (=> b!968732 m!1174063))

(declare-fun m!1174069 () Bool)

(assert (=> b!968732 m!1174069))

(assert (=> b!968730 m!1173935))

(assert (=> b!968736 m!1174053))

(assert (=> b!968728 m!1174057))

(declare-fun m!1174071 () Bool)

(assert (=> b!968728 m!1174071))

(assert (=> b!968586 d!286367))

(declare-fun bs!242232 () Bool)

(declare-fun d!286369 () Bool)

(assert (= bs!242232 (and d!286369 b!968586)))

(declare-fun lambda!34254 () Int)

(assert (=> bs!242232 (not (= lambda!34254 lambda!34226))))

(declare-fun bs!242233 () Bool)

(assert (= bs!242233 (and d!286369 d!286359)))

(assert (=> bs!242233 (= (= (Star!2694 lt!348556) lt!348552) (= lambda!34254 lambda!34245))))

(declare-fun bs!242234 () Bool)

(assert (= bs!242234 (and d!286369 b!968591)))

(assert (=> bs!242234 (not (= lambda!34254 lambda!34224))))

(assert (=> bs!242232 (= (= (Star!2694 lt!348556) lt!348552) (= lambda!34254 lambda!34225))))

(assert (=> bs!242234 (= (and (= lt!348556 (reg!3023 r!15766)) (= (Star!2694 lt!348556) lt!348541)) (= lambda!34254 lambda!34223))))

(assert (=> d!286369 true))

(assert (=> d!286369 true))

(declare-fun lambda!34255 () Int)

(assert (=> bs!242232 (= (= (Star!2694 lt!348556) lt!348552) (= lambda!34255 lambda!34226))))

(assert (=> bs!242233 (not (= lambda!34255 lambda!34245))))

(assert (=> bs!242234 (= (and (= lt!348556 (reg!3023 r!15766)) (= (Star!2694 lt!348556) lt!348541)) (= lambda!34255 lambda!34224))))

(assert (=> bs!242232 (not (= lambda!34255 lambda!34225))))

(declare-fun bs!242235 () Bool)

(assert (= bs!242235 d!286369))

(assert (=> bs!242235 (not (= lambda!34255 lambda!34254))))

(assert (=> bs!242234 (not (= lambda!34255 lambda!34223))))

(assert (=> d!286369 true))

(assert (=> d!286369 true))

(assert (=> d!286369 (= (Exists!437 lambda!34254) (Exists!437 lambda!34255))))

(declare-fun lt!348636 () Unit!15047)

(declare-fun choose!6124 (Regex!2694 List!9924) Unit!15047)

(assert (=> d!286369 (= lt!348636 (choose!6124 lt!348556 s!10566))))

(assert (=> d!286369 (validRegex!1163 lt!348556)))

(assert (=> d!286369 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!155 lt!348556 s!10566) lt!348636)))

(declare-fun m!1174073 () Bool)

(assert (=> bs!242235 m!1174073))

(declare-fun m!1174075 () Bool)

(assert (=> bs!242235 m!1174075))

(declare-fun m!1174077 () Bool)

(assert (=> bs!242235 m!1174077))

(assert (=> bs!242235 m!1174047))

(assert (=> b!968586 d!286369))

(declare-fun bs!242241 () Bool)

(declare-fun b!968803 () Bool)

(assert (= bs!242241 (and b!968803 b!968586)))

(declare-fun lambda!34262 () Int)

(assert (=> bs!242241 (= (= (reg!3023 lt!348552) lt!348556) (= lambda!34262 lambda!34226))))

(declare-fun bs!242242 () Bool)

(assert (= bs!242242 (and b!968803 d!286359)))

(assert (=> bs!242242 (not (= lambda!34262 lambda!34245))))

(declare-fun bs!242243 () Bool)

(assert (= bs!242243 (and b!968803 b!968591)))

(assert (=> bs!242243 (= (and (= (reg!3023 lt!348552) (reg!3023 r!15766)) (= lt!348552 lt!348541)) (= lambda!34262 lambda!34224))))

(assert (=> bs!242241 (not (= lambda!34262 lambda!34225))))

(declare-fun bs!242244 () Bool)

(assert (= bs!242244 (and b!968803 d!286369)))

(assert (=> bs!242244 (= (and (= (reg!3023 lt!348552) lt!348556) (= lt!348552 (Star!2694 lt!348556))) (= lambda!34262 lambda!34255))))

(assert (=> bs!242244 (not (= lambda!34262 lambda!34254))))

(assert (=> bs!242243 (not (= lambda!34262 lambda!34223))))

(assert (=> b!968803 true))

(assert (=> b!968803 true))

(declare-fun bs!242245 () Bool)

(declare-fun b!968800 () Bool)

(assert (= bs!242245 (and b!968800 b!968586)))

(declare-fun lambda!34263 () Int)

(assert (=> bs!242245 (not (= lambda!34263 lambda!34226))))

(declare-fun bs!242246 () Bool)

(assert (= bs!242246 (and b!968800 d!286359)))

(assert (=> bs!242246 (not (= lambda!34263 lambda!34245))))

(declare-fun bs!242247 () Bool)

(assert (= bs!242247 (and b!968800 b!968591)))

(assert (=> bs!242247 (not (= lambda!34263 lambda!34224))))

(assert (=> bs!242245 (not (= lambda!34263 lambda!34225))))

(declare-fun bs!242248 () Bool)

(assert (= bs!242248 (and b!968800 b!968803)))

(assert (=> bs!242248 (not (= lambda!34263 lambda!34262))))

(declare-fun bs!242249 () Bool)

(assert (= bs!242249 (and b!968800 d!286369)))

(assert (=> bs!242249 (not (= lambda!34263 lambda!34255))))

(assert (=> bs!242249 (not (= lambda!34263 lambda!34254))))

(assert (=> bs!242247 (not (= lambda!34263 lambda!34223))))

(assert (=> b!968800 true))

(assert (=> b!968800 true))

(declare-fun b!968794 () Bool)

(declare-fun e!624768 () Bool)

(declare-fun e!624769 () Bool)

(assert (=> b!968794 (= e!624768 e!624769)))

(declare-fun res!440510 () Bool)

(assert (=> b!968794 (= res!440510 (not (is-EmptyLang!2694 lt!348552)))))

(assert (=> b!968794 (=> (not res!440510) (not e!624769))))

(declare-fun b!968795 () Bool)

(declare-fun e!624764 () Bool)

(declare-fun e!624765 () Bool)

(assert (=> b!968795 (= e!624764 e!624765)))

(declare-fun c!157923 () Bool)

(assert (=> b!968795 (= c!157923 (is-Star!2694 lt!348552))))

(declare-fun b!968796 () Bool)

(declare-fun call!61335 () Bool)

(assert (=> b!968796 (= e!624768 call!61335)))

(declare-fun b!968797 () Bool)

(declare-fun c!157924 () Bool)

(assert (=> b!968797 (= c!157924 (is-Union!2694 lt!348552))))

(declare-fun e!624767 () Bool)

(assert (=> b!968797 (= e!624767 e!624764)))

(declare-fun b!968798 () Bool)

(declare-fun e!624766 () Bool)

(assert (=> b!968798 (= e!624764 e!624766)))

(declare-fun res!440509 () Bool)

(assert (=> b!968798 (= res!440509 (matchRSpec!495 (regOne!5901 lt!348552) s!10566))))

(assert (=> b!968798 (=> res!440509 e!624766)))

(declare-fun b!968799 () Bool)

(declare-fun c!157921 () Bool)

(assert (=> b!968799 (= c!157921 (is-ElementMatch!2694 lt!348552))))

(assert (=> b!968799 (= e!624769 e!624767)))

(declare-fun call!61334 () Bool)

(assert (=> b!968800 (= e!624765 call!61334)))

(declare-fun d!286371 () Bool)

(declare-fun c!157922 () Bool)

(assert (=> d!286371 (= c!157922 (is-EmptyExpr!2694 lt!348552))))

(assert (=> d!286371 (= (matchRSpec!495 lt!348552 s!10566) e!624768)))

(declare-fun b!968801 () Bool)

(declare-fun res!440511 () Bool)

(declare-fun e!624770 () Bool)

(assert (=> b!968801 (=> res!440511 e!624770)))

(assert (=> b!968801 (= res!440511 call!61335)))

(assert (=> b!968801 (= e!624765 e!624770)))

(declare-fun bm!61329 () Bool)

(assert (=> bm!61329 (= call!61335 (isEmpty!6216 s!10566))))

(declare-fun b!968802 () Bool)

(assert (=> b!968802 (= e!624767 (= s!10566 (Cons!9908 (c!157890 lt!348552) Nil!9908)))))

(declare-fun bm!61330 () Bool)

(assert (=> bm!61330 (= call!61334 (Exists!437 (ite c!157923 lambda!34262 lambda!34263)))))

(assert (=> b!968803 (= e!624770 call!61334)))

(declare-fun b!968804 () Bool)

(assert (=> b!968804 (= e!624766 (matchRSpec!495 (regTwo!5901 lt!348552) s!10566))))

(assert (= (and d!286371 c!157922) b!968796))

(assert (= (and d!286371 (not c!157922)) b!968794))

(assert (= (and b!968794 res!440510) b!968799))

(assert (= (and b!968799 c!157921) b!968802))

(assert (= (and b!968799 (not c!157921)) b!968797))

(assert (= (and b!968797 c!157924) b!968798))

(assert (= (and b!968797 (not c!157924)) b!968795))

(assert (= (and b!968798 (not res!440509)) b!968804))

(assert (= (and b!968795 c!157923) b!968801))

(assert (= (and b!968795 (not c!157923)) b!968800))

(assert (= (and b!968801 (not res!440511)) b!968803))

(assert (= (or b!968803 b!968800) bm!61330))

(assert (= (or b!968796 b!968801) bm!61329))

(declare-fun m!1174085 () Bool)

(assert (=> b!968798 m!1174085))

(assert (=> bm!61329 m!1173897))

(declare-fun m!1174087 () Bool)

(assert (=> bm!61330 m!1174087))

(declare-fun m!1174089 () Bool)

(assert (=> b!968804 m!1174089))

(assert (=> b!968586 d!286371))

(declare-fun bs!242250 () Bool)

(declare-fun b!968814 () Bool)

(assert (= bs!242250 (and b!968814 b!968586)))

(declare-fun lambda!34264 () Int)

(assert (=> bs!242250 (= (and (= (reg!3023 r!15766) lt!348556) (= r!15766 lt!348552)) (= lambda!34264 lambda!34226))))

(declare-fun bs!242251 () Bool)

(assert (= bs!242251 (and b!968814 d!286359)))

(assert (=> bs!242251 (not (= lambda!34264 lambda!34245))))

(declare-fun bs!242252 () Bool)

(assert (= bs!242252 (and b!968814 b!968800)))

(assert (=> bs!242252 (not (= lambda!34264 lambda!34263))))

(declare-fun bs!242253 () Bool)

(assert (= bs!242253 (and b!968814 b!968591)))

(assert (=> bs!242253 (= (= r!15766 lt!348541) (= lambda!34264 lambda!34224))))

(assert (=> bs!242250 (not (= lambda!34264 lambda!34225))))

(declare-fun bs!242254 () Bool)

(assert (= bs!242254 (and b!968814 b!968803)))

(assert (=> bs!242254 (= (and (= (reg!3023 r!15766) (reg!3023 lt!348552)) (= r!15766 lt!348552)) (= lambda!34264 lambda!34262))))

(declare-fun bs!242255 () Bool)

(assert (= bs!242255 (and b!968814 d!286369)))

(assert (=> bs!242255 (= (and (= (reg!3023 r!15766) lt!348556) (= r!15766 (Star!2694 lt!348556))) (= lambda!34264 lambda!34255))))

(assert (=> bs!242255 (not (= lambda!34264 lambda!34254))))

(assert (=> bs!242253 (not (= lambda!34264 lambda!34223))))

(assert (=> b!968814 true))

(assert (=> b!968814 true))

(declare-fun bs!242256 () Bool)

(declare-fun b!968811 () Bool)

(assert (= bs!242256 (and b!968811 b!968586)))

(declare-fun lambda!34265 () Int)

(assert (=> bs!242256 (not (= lambda!34265 lambda!34226))))

(declare-fun bs!242257 () Bool)

(assert (= bs!242257 (and b!968811 d!286359)))

(assert (=> bs!242257 (not (= lambda!34265 lambda!34245))))

(declare-fun bs!242258 () Bool)

(assert (= bs!242258 (and b!968811 b!968800)))

(assert (=> bs!242258 (= (and (= (regOne!5900 r!15766) (regOne!5900 lt!348552)) (= (regTwo!5900 r!15766) (regTwo!5900 lt!348552))) (= lambda!34265 lambda!34263))))

(declare-fun bs!242259 () Bool)

(assert (= bs!242259 (and b!968811 b!968591)))

(assert (=> bs!242259 (not (= lambda!34265 lambda!34224))))

(assert (=> bs!242256 (not (= lambda!34265 lambda!34225))))

(declare-fun bs!242260 () Bool)

(assert (= bs!242260 (and b!968811 b!968803)))

(assert (=> bs!242260 (not (= lambda!34265 lambda!34262))))

(declare-fun bs!242261 () Bool)

(assert (= bs!242261 (and b!968811 d!286369)))

(assert (=> bs!242261 (not (= lambda!34265 lambda!34255))))

(assert (=> bs!242261 (not (= lambda!34265 lambda!34254))))

(assert (=> bs!242259 (not (= lambda!34265 lambda!34223))))

(declare-fun bs!242262 () Bool)

(assert (= bs!242262 (and b!968811 b!968814)))

(assert (=> bs!242262 (not (= lambda!34265 lambda!34264))))

(assert (=> b!968811 true))

(assert (=> b!968811 true))

(declare-fun b!968805 () Bool)

(declare-fun e!624775 () Bool)

(declare-fun e!624776 () Bool)

(assert (=> b!968805 (= e!624775 e!624776)))

(declare-fun res!440513 () Bool)

(assert (=> b!968805 (= res!440513 (not (is-EmptyLang!2694 r!15766)))))

(assert (=> b!968805 (=> (not res!440513) (not e!624776))))

(declare-fun b!968806 () Bool)

(declare-fun e!624771 () Bool)

(declare-fun e!624772 () Bool)

(assert (=> b!968806 (= e!624771 e!624772)))

(declare-fun c!157927 () Bool)

(assert (=> b!968806 (= c!157927 (is-Star!2694 r!15766))))

(declare-fun b!968807 () Bool)

(declare-fun call!61337 () Bool)

(assert (=> b!968807 (= e!624775 call!61337)))

(declare-fun b!968808 () Bool)

(declare-fun c!157928 () Bool)

(assert (=> b!968808 (= c!157928 (is-Union!2694 r!15766))))

(declare-fun e!624774 () Bool)

(assert (=> b!968808 (= e!624774 e!624771)))

(declare-fun b!968809 () Bool)

(declare-fun e!624773 () Bool)

(assert (=> b!968809 (= e!624771 e!624773)))

(declare-fun res!440512 () Bool)

(assert (=> b!968809 (= res!440512 (matchRSpec!495 (regOne!5901 r!15766) s!10566))))

(assert (=> b!968809 (=> res!440512 e!624773)))

(declare-fun b!968810 () Bool)

(declare-fun c!157925 () Bool)

(assert (=> b!968810 (= c!157925 (is-ElementMatch!2694 r!15766))))

(assert (=> b!968810 (= e!624776 e!624774)))

(declare-fun call!61336 () Bool)

(assert (=> b!968811 (= e!624772 call!61336)))

(declare-fun d!286375 () Bool)

(declare-fun c!157926 () Bool)

(assert (=> d!286375 (= c!157926 (is-EmptyExpr!2694 r!15766))))

(assert (=> d!286375 (= (matchRSpec!495 r!15766 s!10566) e!624775)))

(declare-fun b!968812 () Bool)

(declare-fun res!440514 () Bool)

(declare-fun e!624777 () Bool)

(assert (=> b!968812 (=> res!440514 e!624777)))

(assert (=> b!968812 (= res!440514 call!61337)))

(assert (=> b!968812 (= e!624772 e!624777)))

(declare-fun bm!61331 () Bool)

(assert (=> bm!61331 (= call!61337 (isEmpty!6216 s!10566))))

(declare-fun b!968813 () Bool)

(assert (=> b!968813 (= e!624774 (= s!10566 (Cons!9908 (c!157890 r!15766) Nil!9908)))))

(declare-fun bm!61332 () Bool)

(assert (=> bm!61332 (= call!61336 (Exists!437 (ite c!157927 lambda!34264 lambda!34265)))))

(assert (=> b!968814 (= e!624777 call!61336)))

(declare-fun b!968815 () Bool)

(assert (=> b!968815 (= e!624773 (matchRSpec!495 (regTwo!5901 r!15766) s!10566))))

(assert (= (and d!286375 c!157926) b!968807))

(assert (= (and d!286375 (not c!157926)) b!968805))

(assert (= (and b!968805 res!440513) b!968810))

(assert (= (and b!968810 c!157925) b!968813))

(assert (= (and b!968810 (not c!157925)) b!968808))

(assert (= (and b!968808 c!157928) b!968809))

(assert (= (and b!968808 (not c!157928)) b!968806))

(assert (= (and b!968809 (not res!440512)) b!968815))

(assert (= (and b!968806 c!157927) b!968812))

(assert (= (and b!968806 (not c!157927)) b!968811))

(assert (= (and b!968812 (not res!440514)) b!968814))

(assert (= (or b!968814 b!968811) bm!61332))

(assert (= (or b!968807 b!968812) bm!61331))

(declare-fun m!1174091 () Bool)

(assert (=> b!968809 m!1174091))

(assert (=> bm!61331 m!1173897))

(declare-fun m!1174093 () Bool)

(assert (=> bm!61332 m!1174093))

(declare-fun m!1174095 () Bool)

(assert (=> b!968815 m!1174095))

(assert (=> b!968587 d!286375))

(declare-fun b!968873 () Bool)

(declare-fun e!624806 () Bool)

(declare-fun lt!348641 () Bool)

(declare-fun call!61342 () Bool)

(assert (=> b!968873 (= e!624806 (= lt!348641 call!61342))))

(declare-fun b!968874 () Bool)

(declare-fun e!624810 () Bool)

(declare-fun e!624809 () Bool)

(assert (=> b!968874 (= e!624810 e!624809)))

(declare-fun res!440551 () Bool)

(assert (=> b!968874 (=> res!440551 e!624809)))

(assert (=> b!968874 (= res!440551 call!61342)))

(declare-fun b!968875 () Bool)

(declare-fun head!1779 (List!9924) C!5958)

(assert (=> b!968875 (= e!624809 (not (= (head!1779 s!10566) (c!157890 r!15766))))))

(declare-fun b!968876 () Bool)

(declare-fun e!624808 () Bool)

(assert (=> b!968876 (= e!624806 e!624808)))

(declare-fun c!157942 () Bool)

(assert (=> b!968876 (= c!157942 (is-EmptyLang!2694 r!15766))))

(declare-fun b!968877 () Bool)

(declare-fun res!440554 () Bool)

(declare-fun e!624811 () Bool)

(assert (=> b!968877 (=> (not res!440554) (not e!624811))))

(assert (=> b!968877 (= res!440554 (not call!61342))))

(declare-fun b!968878 () Bool)

(assert (=> b!968878 (= e!624808 (not lt!348641))))

(declare-fun d!286377 () Bool)

(assert (=> d!286377 e!624806))

(declare-fun c!157943 () Bool)

(assert (=> d!286377 (= c!157943 (is-EmptyExpr!2694 r!15766))))

(declare-fun e!624807 () Bool)

(assert (=> d!286377 (= lt!348641 e!624807)))

(declare-fun c!157941 () Bool)

(assert (=> d!286377 (= c!157941 (isEmpty!6216 s!10566))))

(assert (=> d!286377 (validRegex!1163 r!15766)))

(assert (=> d!286377 (= (matchR!1232 r!15766 s!10566) lt!348641)))

(declare-fun b!968872 () Bool)

(declare-fun res!440547 () Bool)

(assert (=> b!968872 (=> (not res!440547) (not e!624811))))

(declare-fun tail!1341 (List!9924) List!9924)

(assert (=> b!968872 (= res!440547 (isEmpty!6216 (tail!1341 s!10566)))))

(declare-fun b!968879 () Bool)

(declare-fun nullable!818 (Regex!2694) Bool)

(assert (=> b!968879 (= e!624807 (nullable!818 r!15766))))

(declare-fun bm!61337 () Bool)

(assert (=> bm!61337 (= call!61342 (isEmpty!6216 s!10566))))

(declare-fun b!968880 () Bool)

(declare-fun derivativeStep!626 (Regex!2694 C!5958) Regex!2694)

(assert (=> b!968880 (= e!624807 (matchR!1232 (derivativeStep!626 r!15766 (head!1779 s!10566)) (tail!1341 s!10566)))))

(declare-fun b!968881 () Bool)

(declare-fun e!624812 () Bool)

(assert (=> b!968881 (= e!624812 e!624810)))

(declare-fun res!440549 () Bool)

(assert (=> b!968881 (=> (not res!440549) (not e!624810))))

(assert (=> b!968881 (= res!440549 (not lt!348641))))

(declare-fun b!968882 () Bool)

(declare-fun res!440548 () Bool)

(assert (=> b!968882 (=> res!440548 e!624809)))

(assert (=> b!968882 (= res!440548 (not (isEmpty!6216 (tail!1341 s!10566))))))

(declare-fun b!968883 () Bool)

(declare-fun res!440550 () Bool)

(assert (=> b!968883 (=> res!440550 e!624812)))

(assert (=> b!968883 (= res!440550 e!624811)))

(declare-fun res!440552 () Bool)

(assert (=> b!968883 (=> (not res!440552) (not e!624811))))

(assert (=> b!968883 (= res!440552 lt!348641)))

(declare-fun b!968884 () Bool)

(assert (=> b!968884 (= e!624811 (= (head!1779 s!10566) (c!157890 r!15766)))))

(declare-fun b!968885 () Bool)

(declare-fun res!440553 () Bool)

(assert (=> b!968885 (=> res!440553 e!624812)))

(assert (=> b!968885 (= res!440553 (not (is-ElementMatch!2694 r!15766)))))

(assert (=> b!968885 (= e!624808 e!624812)))

(assert (= (and d!286377 c!157941) b!968879))

(assert (= (and d!286377 (not c!157941)) b!968880))

(assert (= (and d!286377 c!157943) b!968873))

(assert (= (and d!286377 (not c!157943)) b!968876))

(assert (= (and b!968876 c!157942) b!968878))

(assert (= (and b!968876 (not c!157942)) b!968885))

(assert (= (and b!968885 (not res!440553)) b!968883))

(assert (= (and b!968883 res!440552) b!968877))

(assert (= (and b!968877 res!440554) b!968872))

(assert (= (and b!968872 res!440547) b!968884))

(assert (= (and b!968883 (not res!440550)) b!968881))

(assert (= (and b!968881 res!440549) b!968874))

(assert (= (and b!968874 (not res!440551)) b!968882))

(assert (= (and b!968882 (not res!440548)) b!968875))

(assert (= (or b!968873 b!968874 b!968877) bm!61337))

(declare-fun m!1174097 () Bool)

(assert (=> b!968872 m!1174097))

(assert (=> b!968872 m!1174097))

(declare-fun m!1174099 () Bool)

(assert (=> b!968872 m!1174099))

(declare-fun m!1174101 () Bool)

(assert (=> b!968879 m!1174101))

(declare-fun m!1174103 () Bool)

(assert (=> b!968875 m!1174103))

(assert (=> b!968882 m!1174097))

(assert (=> b!968882 m!1174097))

(assert (=> b!968882 m!1174099))

(assert (=> b!968884 m!1174103))

(assert (=> b!968880 m!1174103))

(assert (=> b!968880 m!1174103))

(declare-fun m!1174105 () Bool)

(assert (=> b!968880 m!1174105))

(assert (=> b!968880 m!1174097))

(assert (=> b!968880 m!1174105))

(assert (=> b!968880 m!1174097))

(declare-fun m!1174107 () Bool)

(assert (=> b!968880 m!1174107))

(assert (=> bm!61337 m!1173897))

(assert (=> d!286377 m!1173897))

(assert (=> d!286377 m!1173937))

(assert (=> b!968587 d!286377))

(declare-fun d!286379 () Bool)

(assert (=> d!286379 (= (matchR!1232 r!15766 s!10566) (matchRSpec!495 r!15766 s!10566))))

(declare-fun lt!348642 () Unit!15047)

(assert (=> d!286379 (= lt!348642 (choose!6121 r!15766 s!10566))))

(assert (=> d!286379 (validRegex!1163 r!15766)))

(assert (=> d!286379 (= (mainMatchTheorem!495 r!15766 s!10566) lt!348642)))

(declare-fun bs!242263 () Bool)

(assert (= bs!242263 d!286379))

(assert (=> bs!242263 m!1173917))

(assert (=> bs!242263 m!1173915))

(declare-fun m!1174109 () Bool)

(assert (=> bs!242263 m!1174109))

(assert (=> bs!242263 m!1173937))

(assert (=> b!968587 d!286379))

(declare-fun d!286381 () Bool)

(assert (=> d!286381 (= (matchR!1232 (reg!3023 r!15766) (_1!6459 lt!348558)) (matchRSpec!495 (reg!3023 r!15766) (_1!6459 lt!348558)))))

(declare-fun lt!348643 () Unit!15047)

(assert (=> d!286381 (= lt!348643 (choose!6121 (reg!3023 r!15766) (_1!6459 lt!348558)))))

(assert (=> d!286381 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286381 (= (mainMatchTheorem!495 (reg!3023 r!15766) (_1!6459 lt!348558)) lt!348643)))

(declare-fun bs!242264 () Bool)

(assert (= bs!242264 d!286381))

(assert (=> bs!242264 m!1173955))

(declare-fun m!1174111 () Bool)

(assert (=> bs!242264 m!1174111))

(declare-fun m!1174113 () Bool)

(assert (=> bs!242264 m!1174113))

(declare-fun m!1174115 () Bool)

(assert (=> bs!242264 m!1174115))

(assert (=> b!968598 d!286381))

(declare-fun b!968887 () Bool)

(declare-fun e!624813 () Bool)

(declare-fun lt!348644 () Bool)

(declare-fun call!61343 () Bool)

(assert (=> b!968887 (= e!624813 (= lt!348644 call!61343))))

(declare-fun b!968888 () Bool)

(declare-fun e!624817 () Bool)

(declare-fun e!624816 () Bool)

(assert (=> b!968888 (= e!624817 e!624816)))

(declare-fun res!440559 () Bool)

(assert (=> b!968888 (=> res!440559 e!624816)))

(assert (=> b!968888 (= res!440559 call!61343)))

(declare-fun b!968889 () Bool)

(assert (=> b!968889 (= e!624816 (not (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348552))))))

(declare-fun b!968890 () Bool)

(declare-fun e!624815 () Bool)

(assert (=> b!968890 (= e!624813 e!624815)))

(declare-fun c!157945 () Bool)

(assert (=> b!968890 (= c!157945 (is-EmptyLang!2694 lt!348552))))

(declare-fun b!968891 () Bool)

(declare-fun res!440562 () Bool)

(declare-fun e!624818 () Bool)

(assert (=> b!968891 (=> (not res!440562) (not e!624818))))

(assert (=> b!968891 (= res!440562 (not call!61343))))

(declare-fun b!968892 () Bool)

(assert (=> b!968892 (= e!624815 (not lt!348644))))

(declare-fun d!286383 () Bool)

(assert (=> d!286383 e!624813))

(declare-fun c!157946 () Bool)

(assert (=> d!286383 (= c!157946 (is-EmptyExpr!2694 lt!348552))))

(declare-fun e!624814 () Bool)

(assert (=> d!286383 (= lt!348644 e!624814)))

(declare-fun c!157944 () Bool)

(assert (=> d!286383 (= c!157944 (isEmpty!6216 (_2!6459 lt!348558)))))

(assert (=> d!286383 (validRegex!1163 lt!348552)))

(assert (=> d!286383 (= (matchR!1232 lt!348552 (_2!6459 lt!348558)) lt!348644)))

(declare-fun b!968886 () Bool)

(declare-fun res!440555 () Bool)

(assert (=> b!968886 (=> (not res!440555) (not e!624818))))

(assert (=> b!968886 (= res!440555 (isEmpty!6216 (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968893 () Bool)

(assert (=> b!968893 (= e!624814 (nullable!818 lt!348552))))

(declare-fun bm!61338 () Bool)

(assert (=> bm!61338 (= call!61343 (isEmpty!6216 (_2!6459 lt!348558)))))

(declare-fun b!968894 () Bool)

(assert (=> b!968894 (= e!624814 (matchR!1232 (derivativeStep!626 lt!348552 (head!1779 (_2!6459 lt!348558))) (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968895 () Bool)

(declare-fun e!624819 () Bool)

(assert (=> b!968895 (= e!624819 e!624817)))

(declare-fun res!440557 () Bool)

(assert (=> b!968895 (=> (not res!440557) (not e!624817))))

(assert (=> b!968895 (= res!440557 (not lt!348644))))

(declare-fun b!968896 () Bool)

(declare-fun res!440556 () Bool)

(assert (=> b!968896 (=> res!440556 e!624816)))

(assert (=> b!968896 (= res!440556 (not (isEmpty!6216 (tail!1341 (_2!6459 lt!348558)))))))

(declare-fun b!968897 () Bool)

(declare-fun res!440558 () Bool)

(assert (=> b!968897 (=> res!440558 e!624819)))

(assert (=> b!968897 (= res!440558 e!624818)))

(declare-fun res!440560 () Bool)

(assert (=> b!968897 (=> (not res!440560) (not e!624818))))

(assert (=> b!968897 (= res!440560 lt!348644)))

(declare-fun b!968898 () Bool)

(assert (=> b!968898 (= e!624818 (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348552)))))

(declare-fun b!968899 () Bool)

(declare-fun res!440561 () Bool)

(assert (=> b!968899 (=> res!440561 e!624819)))

(assert (=> b!968899 (= res!440561 (not (is-ElementMatch!2694 lt!348552)))))

(assert (=> b!968899 (= e!624815 e!624819)))

(assert (= (and d!286383 c!157944) b!968893))

(assert (= (and d!286383 (not c!157944)) b!968894))

(assert (= (and d!286383 c!157946) b!968887))

(assert (= (and d!286383 (not c!157946)) b!968890))

(assert (= (and b!968890 c!157945) b!968892))

(assert (= (and b!968890 (not c!157945)) b!968899))

(assert (= (and b!968899 (not res!440561)) b!968897))

(assert (= (and b!968897 res!440560) b!968891))

(assert (= (and b!968891 res!440562) b!968886))

(assert (= (and b!968886 res!440555) b!968898))

(assert (= (and b!968897 (not res!440558)) b!968895))

(assert (= (and b!968895 res!440557) b!968888))

(assert (= (and b!968888 (not res!440559)) b!968896))

(assert (= (and b!968896 (not res!440556)) b!968889))

(assert (= (or b!968887 b!968888 b!968891) bm!61338))

(declare-fun m!1174117 () Bool)

(assert (=> b!968886 m!1174117))

(assert (=> b!968886 m!1174117))

(declare-fun m!1174119 () Bool)

(assert (=> b!968886 m!1174119))

(declare-fun m!1174121 () Bool)

(assert (=> b!968893 m!1174121))

(declare-fun m!1174123 () Bool)

(assert (=> b!968889 m!1174123))

(assert (=> b!968896 m!1174117))

(assert (=> b!968896 m!1174117))

(assert (=> b!968896 m!1174119))

(assert (=> b!968898 m!1174123))

(assert (=> b!968894 m!1174123))

(assert (=> b!968894 m!1174123))

(declare-fun m!1174125 () Bool)

(assert (=> b!968894 m!1174125))

(assert (=> b!968894 m!1174117))

(assert (=> b!968894 m!1174125))

(assert (=> b!968894 m!1174117))

(declare-fun m!1174127 () Bool)

(assert (=> b!968894 m!1174127))

(declare-fun m!1174129 () Bool)

(assert (=> bm!61338 m!1174129))

(assert (=> d!286383 m!1174129))

(assert (=> d!286383 m!1174031))

(assert (=> b!968589 d!286383))

(declare-fun d!286385 () Bool)

(declare-fun lt!348648 () Int)

(assert (=> d!286385 (>= lt!348648 0)))

(declare-fun e!624829 () Int)

(assert (=> d!286385 (= lt!348648 e!624829)))

(declare-fun c!157952 () Bool)

(assert (=> d!286385 (= c!157952 (is-Nil!9908 (_2!6459 lt!348558)))))

(assert (=> d!286385 (= (size!7944 (_2!6459 lt!348558)) lt!348648)))

(declare-fun b!968918 () Bool)

(assert (=> b!968918 (= e!624829 0)))

(declare-fun b!968919 () Bool)

(assert (=> b!968919 (= e!624829 (+ 1 (size!7944 (t!100970 (_2!6459 lt!348558)))))))

(assert (= (and d!286385 c!157952) b!968918))

(assert (= (and d!286385 (not c!157952)) b!968919))

(declare-fun m!1174131 () Bool)

(assert (=> b!968919 m!1174131))

(assert (=> b!968590 d!286385))

(declare-fun b!968942 () Bool)

(declare-fun e!624845 () Regex!2694)

(declare-fun call!61359 () Regex!2694)

(assert (=> b!968942 (= e!624845 call!61359)))

(declare-fun b!968943 () Bool)

(declare-fun c!157966 () Bool)

(assert (=> b!968943 (= c!157966 (is-Concat!4527 lt!348541))))

(declare-fun e!624846 () Regex!2694)

(declare-fun e!624847 () Regex!2694)

(assert (=> b!968943 (= e!624846 e!624847)))

(declare-fun bm!61351 () Bool)

(declare-fun call!61356 () Regex!2694)

(declare-fun call!61355 () Regex!2694)

(assert (=> bm!61351 (= call!61356 call!61355)))

(declare-fun b!968944 () Bool)

(declare-fun call!61358 () Regex!2694)

(assert (=> b!968944 (= e!624847 (Concat!4527 call!61358 call!61356))))

(declare-fun b!968945 () Bool)

(assert (=> b!968945 (= e!624845 e!624846)))

(declare-fun c!157963 () Bool)

(assert (=> b!968945 (= c!157963 (and (is-Concat!4527 lt!348541) (is-EmptyExpr!2694 (regTwo!5900 lt!348541))))))

(declare-fun b!968946 () Bool)

(declare-fun e!624843 () Regex!2694)

(assert (=> b!968946 (= e!624847 e!624843)))

(declare-fun c!157964 () Bool)

(assert (=> b!968946 (= c!157964 (is-Union!2694 lt!348541))))

(declare-fun b!968947 () Bool)

(declare-fun e!624842 () Regex!2694)

(declare-fun call!61357 () Regex!2694)

(assert (=> b!968947 (= e!624842 (Star!2694 call!61357))))

(declare-fun b!968948 () Bool)

(assert (=> b!968948 (= e!624842 lt!348541)))

(declare-fun b!968949 () Bool)

(assert (=> b!968949 (= e!624846 call!61355)))

(declare-fun b!968950 () Bool)

(declare-fun e!624844 () Bool)

(declare-fun lt!348652 () Regex!2694)

(assert (=> b!968950 (= e!624844 (= (nullable!818 lt!348652) (nullable!818 lt!348541)))))

(declare-fun bm!61352 () Bool)

(assert (=> bm!61352 (= call!61357 call!61356)))

(declare-fun bm!61353 () Bool)

(declare-fun c!157967 () Bool)

(assert (=> bm!61353 (= call!61359 (removeUselessConcat!341 (ite c!157967 (regTwo!5900 lt!348541) (ite c!157963 (regOne!5900 lt!348541) (ite c!157966 (regTwo!5900 lt!348541) (ite c!157964 (regTwo!5901 lt!348541) (reg!3023 lt!348541)))))))))

(declare-fun bm!61354 () Bool)

(assert (=> bm!61354 (= call!61358 (removeUselessConcat!341 (ite c!157966 (regOne!5900 lt!348541) (regOne!5901 lt!348541))))))

(declare-fun d!286387 () Bool)

(assert (=> d!286387 e!624844))

(declare-fun res!440573 () Bool)

(assert (=> d!286387 (=> (not res!440573) (not e!624844))))

(assert (=> d!286387 (= res!440573 (validRegex!1163 lt!348652))))

(assert (=> d!286387 (= lt!348652 e!624845)))

(assert (=> d!286387 (= c!157967 (and (is-Concat!4527 lt!348541) (is-EmptyExpr!2694 (regOne!5900 lt!348541))))))

(assert (=> d!286387 (validRegex!1163 lt!348541)))

(assert (=> d!286387 (= (removeUselessConcat!341 lt!348541) lt!348652)))

(declare-fun bm!61350 () Bool)

(assert (=> bm!61350 (= call!61355 call!61359)))

(declare-fun b!968951 () Bool)

(declare-fun c!157965 () Bool)

(assert (=> b!968951 (= c!157965 (is-Star!2694 lt!348541))))

(assert (=> b!968951 (= e!624843 e!624842)))

(declare-fun b!968952 () Bool)

(assert (=> b!968952 (= e!624843 (Union!2694 call!61358 call!61357))))

(assert (= (and d!286387 c!157967) b!968942))

(assert (= (and d!286387 (not c!157967)) b!968945))

(assert (= (and b!968945 c!157963) b!968949))

(assert (= (and b!968945 (not c!157963)) b!968943))

(assert (= (and b!968943 c!157966) b!968944))

(assert (= (and b!968943 (not c!157966)) b!968946))

(assert (= (and b!968946 c!157964) b!968952))

(assert (= (and b!968946 (not c!157964)) b!968951))

(assert (= (and b!968951 c!157965) b!968947))

(assert (= (and b!968951 (not c!157965)) b!968948))

(assert (= (or b!968952 b!968947) bm!61352))

(assert (= (or b!968944 bm!61352) bm!61351))

(assert (= (or b!968944 b!968952) bm!61354))

(assert (= (or b!968949 bm!61351) bm!61350))

(assert (= (or b!968942 bm!61350) bm!61353))

(assert (= (and d!286387 res!440573) b!968950))

(declare-fun m!1174147 () Bool)

(assert (=> b!968950 m!1174147))

(declare-fun m!1174149 () Bool)

(assert (=> b!968950 m!1174149))

(declare-fun m!1174151 () Bool)

(assert (=> bm!61353 m!1174151))

(declare-fun m!1174153 () Bool)

(assert (=> bm!61354 m!1174153))

(declare-fun m!1174155 () Bool)

(assert (=> d!286387 m!1174155))

(declare-fun m!1174157 () Bool)

(assert (=> d!286387 m!1174157))

(assert (=> b!968590 d!286387))

(declare-fun b!968954 () Bool)

(declare-fun e!624848 () Bool)

(declare-fun lt!348653 () Bool)

(declare-fun call!61360 () Bool)

(assert (=> b!968954 (= e!624848 (= lt!348653 call!61360))))

(declare-fun b!968955 () Bool)

(declare-fun e!624852 () Bool)

(declare-fun e!624851 () Bool)

(assert (=> b!968955 (= e!624852 e!624851)))

(declare-fun res!440578 () Bool)

(assert (=> b!968955 (=> res!440578 e!624851)))

(assert (=> b!968955 (= res!440578 call!61360)))

(declare-fun b!968956 () Bool)

(assert (=> b!968956 (= e!624851 (not (= (head!1779 (_1!6459 lt!348558)) (c!157890 (reg!3023 r!15766)))))))

(declare-fun b!968957 () Bool)

(declare-fun e!624850 () Bool)

(assert (=> b!968957 (= e!624848 e!624850)))

(declare-fun c!157969 () Bool)

(assert (=> b!968957 (= c!157969 (is-EmptyLang!2694 (reg!3023 r!15766)))))

(declare-fun b!968958 () Bool)

(declare-fun res!440581 () Bool)

(declare-fun e!624853 () Bool)

(assert (=> b!968958 (=> (not res!440581) (not e!624853))))

(assert (=> b!968958 (= res!440581 (not call!61360))))

(declare-fun b!968959 () Bool)

(assert (=> b!968959 (= e!624850 (not lt!348653))))

(declare-fun d!286393 () Bool)

(assert (=> d!286393 e!624848))

(declare-fun c!157970 () Bool)

(assert (=> d!286393 (= c!157970 (is-EmptyExpr!2694 (reg!3023 r!15766)))))

(declare-fun e!624849 () Bool)

(assert (=> d!286393 (= lt!348653 e!624849)))

(declare-fun c!157968 () Bool)

(assert (=> d!286393 (= c!157968 (isEmpty!6216 (_1!6459 lt!348558)))))

(assert (=> d!286393 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286393 (= (matchR!1232 (reg!3023 r!15766) (_1!6459 lt!348558)) lt!348653)))

(declare-fun b!968953 () Bool)

(declare-fun res!440574 () Bool)

(assert (=> b!968953 (=> (not res!440574) (not e!624853))))

(assert (=> b!968953 (= res!440574 (isEmpty!6216 (tail!1341 (_1!6459 lt!348558))))))

(declare-fun b!968960 () Bool)

(assert (=> b!968960 (= e!624849 (nullable!818 (reg!3023 r!15766)))))

(declare-fun bm!61355 () Bool)

(assert (=> bm!61355 (= call!61360 (isEmpty!6216 (_1!6459 lt!348558)))))

(declare-fun b!968961 () Bool)

(assert (=> b!968961 (= e!624849 (matchR!1232 (derivativeStep!626 (reg!3023 r!15766) (head!1779 (_1!6459 lt!348558))) (tail!1341 (_1!6459 lt!348558))))))

(declare-fun b!968962 () Bool)

(declare-fun e!624854 () Bool)

(assert (=> b!968962 (= e!624854 e!624852)))

(declare-fun res!440576 () Bool)

(assert (=> b!968962 (=> (not res!440576) (not e!624852))))

(assert (=> b!968962 (= res!440576 (not lt!348653))))

(declare-fun b!968963 () Bool)

(declare-fun res!440575 () Bool)

(assert (=> b!968963 (=> res!440575 e!624851)))

(assert (=> b!968963 (= res!440575 (not (isEmpty!6216 (tail!1341 (_1!6459 lt!348558)))))))

(declare-fun b!968964 () Bool)

(declare-fun res!440577 () Bool)

(assert (=> b!968964 (=> res!440577 e!624854)))

(assert (=> b!968964 (= res!440577 e!624853)))

(declare-fun res!440579 () Bool)

(assert (=> b!968964 (=> (not res!440579) (not e!624853))))

(assert (=> b!968964 (= res!440579 lt!348653)))

(declare-fun b!968965 () Bool)

(assert (=> b!968965 (= e!624853 (= (head!1779 (_1!6459 lt!348558)) (c!157890 (reg!3023 r!15766))))))

(declare-fun b!968966 () Bool)

(declare-fun res!440580 () Bool)

(assert (=> b!968966 (=> res!440580 e!624854)))

(assert (=> b!968966 (= res!440580 (not (is-ElementMatch!2694 (reg!3023 r!15766))))))

(assert (=> b!968966 (= e!624850 e!624854)))

(assert (= (and d!286393 c!157968) b!968960))

(assert (= (and d!286393 (not c!157968)) b!968961))

(assert (= (and d!286393 c!157970) b!968954))

(assert (= (and d!286393 (not c!157970)) b!968957))

(assert (= (and b!968957 c!157969) b!968959))

(assert (= (and b!968957 (not c!157969)) b!968966))

(assert (= (and b!968966 (not res!440580)) b!968964))

(assert (= (and b!968964 res!440579) b!968958))

(assert (= (and b!968958 res!440581) b!968953))

(assert (= (and b!968953 res!440574) b!968965))

(assert (= (and b!968964 (not res!440577)) b!968962))

(assert (= (and b!968962 res!440576) b!968955))

(assert (= (and b!968955 (not res!440578)) b!968963))

(assert (= (and b!968963 (not res!440575)) b!968956))

(assert (= (or b!968954 b!968955 b!968958) bm!61355))

(declare-fun m!1174159 () Bool)

(assert (=> b!968953 m!1174159))

(assert (=> b!968953 m!1174159))

(declare-fun m!1174161 () Bool)

(assert (=> b!968953 m!1174161))

(declare-fun m!1174163 () Bool)

(assert (=> b!968960 m!1174163))

(declare-fun m!1174165 () Bool)

(assert (=> b!968956 m!1174165))

(assert (=> b!968963 m!1174159))

(assert (=> b!968963 m!1174159))

(assert (=> b!968963 m!1174161))

(assert (=> b!968965 m!1174165))

(assert (=> b!968961 m!1174165))

(assert (=> b!968961 m!1174165))

(declare-fun m!1174167 () Bool)

(assert (=> b!968961 m!1174167))

(assert (=> b!968961 m!1174159))

(assert (=> b!968961 m!1174167))

(assert (=> b!968961 m!1174159))

(declare-fun m!1174169 () Bool)

(assert (=> b!968961 m!1174169))

(declare-fun m!1174171 () Bool)

(assert (=> bm!61355 m!1174171))

(assert (=> d!286393 m!1174171))

(assert (=> d!286393 m!1174115))

(assert (=> b!968590 d!286393))

(declare-fun d!286395 () Bool)

(assert (=> d!286395 (= (matchR!1232 (reg!3023 r!15766) (_1!6459 lt!348558)) (matchR!1232 (removeUselessConcat!341 (reg!3023 r!15766)) (_1!6459 lt!348558)))))

(declare-fun lt!348656 () Unit!15047)

(declare-fun choose!6126 (Regex!2694 List!9924) Unit!15047)

(assert (=> d!286395 (= lt!348656 (choose!6126 (reg!3023 r!15766) (_1!6459 lt!348558)))))

(assert (=> d!286395 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286395 (= (lemmaRemoveUselessConcatSound!193 (reg!3023 r!15766) (_1!6459 lt!348558)) lt!348656)))

(declare-fun bs!242266 () Bool)

(assert (= bs!242266 d!286395))

(assert (=> bs!242266 m!1174115))

(assert (=> bs!242266 m!1173933))

(declare-fun m!1174173 () Bool)

(assert (=> bs!242266 m!1174173))

(declare-fun m!1174175 () Bool)

(assert (=> bs!242266 m!1174175))

(assert (=> bs!242266 m!1173933))

(assert (=> bs!242266 m!1173955))

(assert (=> b!968590 d!286395))

(declare-fun b!968968 () Bool)

(declare-fun e!624855 () Bool)

(declare-fun lt!348657 () Bool)

(declare-fun call!61361 () Bool)

(assert (=> b!968968 (= e!624855 (= lt!348657 call!61361))))

(declare-fun b!968969 () Bool)

(declare-fun e!624859 () Bool)

(declare-fun e!624858 () Bool)

(assert (=> b!968969 (= e!624859 e!624858)))

(declare-fun res!440586 () Bool)

(assert (=> b!968969 (=> res!440586 e!624858)))

(assert (=> b!968969 (= res!440586 call!61361)))

(declare-fun b!968970 () Bool)

(assert (=> b!968970 (= e!624858 (not (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348551))))))

(declare-fun b!968971 () Bool)

(declare-fun e!624857 () Bool)

(assert (=> b!968971 (= e!624855 e!624857)))

(declare-fun c!157972 () Bool)

(assert (=> b!968971 (= c!157972 (is-EmptyLang!2694 lt!348551))))

(declare-fun b!968972 () Bool)

(declare-fun res!440589 () Bool)

(declare-fun e!624860 () Bool)

(assert (=> b!968972 (=> (not res!440589) (not e!624860))))

(assert (=> b!968972 (= res!440589 (not call!61361))))

(declare-fun b!968973 () Bool)

(assert (=> b!968973 (= e!624857 (not lt!348657))))

(declare-fun d!286397 () Bool)

(assert (=> d!286397 e!624855))

(declare-fun c!157973 () Bool)

(assert (=> d!286397 (= c!157973 (is-EmptyExpr!2694 lt!348551))))

(declare-fun e!624856 () Bool)

(assert (=> d!286397 (= lt!348657 e!624856)))

(declare-fun c!157971 () Bool)

(assert (=> d!286397 (= c!157971 (isEmpty!6216 (_2!6459 lt!348558)))))

(assert (=> d!286397 (validRegex!1163 lt!348551)))

(assert (=> d!286397 (= (matchR!1232 lt!348551 (_2!6459 lt!348558)) lt!348657)))

(declare-fun b!968967 () Bool)

(declare-fun res!440582 () Bool)

(assert (=> b!968967 (=> (not res!440582) (not e!624860))))

(assert (=> b!968967 (= res!440582 (isEmpty!6216 (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968974 () Bool)

(assert (=> b!968974 (= e!624856 (nullable!818 lt!348551))))

(declare-fun bm!61356 () Bool)

(assert (=> bm!61356 (= call!61361 (isEmpty!6216 (_2!6459 lt!348558)))))

(declare-fun b!968975 () Bool)

(assert (=> b!968975 (= e!624856 (matchR!1232 (derivativeStep!626 lt!348551 (head!1779 (_2!6459 lt!348558))) (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968976 () Bool)

(declare-fun e!624861 () Bool)

(assert (=> b!968976 (= e!624861 e!624859)))

(declare-fun res!440584 () Bool)

(assert (=> b!968976 (=> (not res!440584) (not e!624859))))

(assert (=> b!968976 (= res!440584 (not lt!348657))))

(declare-fun b!968977 () Bool)

(declare-fun res!440583 () Bool)

(assert (=> b!968977 (=> res!440583 e!624858)))

(assert (=> b!968977 (= res!440583 (not (isEmpty!6216 (tail!1341 (_2!6459 lt!348558)))))))

(declare-fun b!968978 () Bool)

(declare-fun res!440585 () Bool)

(assert (=> b!968978 (=> res!440585 e!624861)))

(assert (=> b!968978 (= res!440585 e!624860)))

(declare-fun res!440587 () Bool)

(assert (=> b!968978 (=> (not res!440587) (not e!624860))))

(assert (=> b!968978 (= res!440587 lt!348657)))

(declare-fun b!968979 () Bool)

(assert (=> b!968979 (= e!624860 (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348551)))))

(declare-fun b!968980 () Bool)

(declare-fun res!440588 () Bool)

(assert (=> b!968980 (=> res!440588 e!624861)))

(assert (=> b!968980 (= res!440588 (not (is-ElementMatch!2694 lt!348551)))))

(assert (=> b!968980 (= e!624857 e!624861)))

(assert (= (and d!286397 c!157971) b!968974))

(assert (= (and d!286397 (not c!157971)) b!968975))

(assert (= (and d!286397 c!157973) b!968968))

(assert (= (and d!286397 (not c!157973)) b!968971))

(assert (= (and b!968971 c!157972) b!968973))

(assert (= (and b!968971 (not c!157972)) b!968980))

(assert (= (and b!968980 (not res!440588)) b!968978))

(assert (= (and b!968978 res!440587) b!968972))

(assert (= (and b!968972 res!440589) b!968967))

(assert (= (and b!968967 res!440582) b!968979))

(assert (= (and b!968978 (not res!440585)) b!968976))

(assert (= (and b!968976 res!440584) b!968969))

(assert (= (and b!968969 (not res!440586)) b!968977))

(assert (= (and b!968977 (not res!440583)) b!968970))

(assert (= (or b!968968 b!968969 b!968972) bm!61356))

(assert (=> b!968967 m!1174117))

(assert (=> b!968967 m!1174117))

(assert (=> b!968967 m!1174119))

(declare-fun m!1174177 () Bool)

(assert (=> b!968974 m!1174177))

(assert (=> b!968970 m!1174123))

(assert (=> b!968977 m!1174117))

(assert (=> b!968977 m!1174117))

(assert (=> b!968977 m!1174119))

(assert (=> b!968979 m!1174123))

(assert (=> b!968975 m!1174123))

(assert (=> b!968975 m!1174123))

(declare-fun m!1174179 () Bool)

(assert (=> b!968975 m!1174179))

(assert (=> b!968975 m!1174117))

(assert (=> b!968975 m!1174179))

(assert (=> b!968975 m!1174117))

(declare-fun m!1174181 () Bool)

(assert (=> b!968975 m!1174181))

(assert (=> bm!61356 m!1174129))

(assert (=> d!286397 m!1174129))

(declare-fun m!1174183 () Bool)

(assert (=> d!286397 m!1174183))

(assert (=> b!968590 d!286397))

(declare-fun b!968982 () Bool)

(declare-fun e!624862 () Bool)

(declare-fun lt!348658 () Bool)

(declare-fun call!61362 () Bool)

(assert (=> b!968982 (= e!624862 (= lt!348658 call!61362))))

(declare-fun b!968983 () Bool)

(declare-fun e!624866 () Bool)

(declare-fun e!624865 () Bool)

(assert (=> b!968983 (= e!624866 e!624865)))

(declare-fun res!440594 () Bool)

(assert (=> b!968983 (=> res!440594 e!624865)))

(assert (=> b!968983 (= res!440594 call!61362)))

(declare-fun b!968984 () Bool)

(assert (=> b!968984 (= e!624865 (not (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348541))))))

(declare-fun b!968985 () Bool)

(declare-fun e!624864 () Bool)

(assert (=> b!968985 (= e!624862 e!624864)))

(declare-fun c!157975 () Bool)

(assert (=> b!968985 (= c!157975 (is-EmptyLang!2694 lt!348541))))

(declare-fun b!968986 () Bool)

(declare-fun res!440597 () Bool)

(declare-fun e!624867 () Bool)

(assert (=> b!968986 (=> (not res!440597) (not e!624867))))

(assert (=> b!968986 (= res!440597 (not call!61362))))

(declare-fun b!968987 () Bool)

(assert (=> b!968987 (= e!624864 (not lt!348658))))

(declare-fun d!286399 () Bool)

(assert (=> d!286399 e!624862))

(declare-fun c!157976 () Bool)

(assert (=> d!286399 (= c!157976 (is-EmptyExpr!2694 lt!348541))))

(declare-fun e!624863 () Bool)

(assert (=> d!286399 (= lt!348658 e!624863)))

(declare-fun c!157974 () Bool)

(assert (=> d!286399 (= c!157974 (isEmpty!6216 (_2!6459 lt!348558)))))

(assert (=> d!286399 (validRegex!1163 lt!348541)))

(assert (=> d!286399 (= (matchR!1232 lt!348541 (_2!6459 lt!348558)) lt!348658)))

(declare-fun b!968981 () Bool)

(declare-fun res!440590 () Bool)

(assert (=> b!968981 (=> (not res!440590) (not e!624867))))

(assert (=> b!968981 (= res!440590 (isEmpty!6216 (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968988 () Bool)

(assert (=> b!968988 (= e!624863 (nullable!818 lt!348541))))

(declare-fun bm!61357 () Bool)

(assert (=> bm!61357 (= call!61362 (isEmpty!6216 (_2!6459 lt!348558)))))

(declare-fun b!968989 () Bool)

(assert (=> b!968989 (= e!624863 (matchR!1232 (derivativeStep!626 lt!348541 (head!1779 (_2!6459 lt!348558))) (tail!1341 (_2!6459 lt!348558))))))

(declare-fun b!968990 () Bool)

(declare-fun e!624868 () Bool)

(assert (=> b!968990 (= e!624868 e!624866)))

(declare-fun res!440592 () Bool)

(assert (=> b!968990 (=> (not res!440592) (not e!624866))))

(assert (=> b!968990 (= res!440592 (not lt!348658))))

(declare-fun b!968991 () Bool)

(declare-fun res!440591 () Bool)

(assert (=> b!968991 (=> res!440591 e!624865)))

(assert (=> b!968991 (= res!440591 (not (isEmpty!6216 (tail!1341 (_2!6459 lt!348558)))))))

(declare-fun b!968992 () Bool)

(declare-fun res!440593 () Bool)

(assert (=> b!968992 (=> res!440593 e!624868)))

(assert (=> b!968992 (= res!440593 e!624867)))

(declare-fun res!440595 () Bool)

(assert (=> b!968992 (=> (not res!440595) (not e!624867))))

(assert (=> b!968992 (= res!440595 lt!348658)))

(declare-fun b!968993 () Bool)

(assert (=> b!968993 (= e!624867 (= (head!1779 (_2!6459 lt!348558)) (c!157890 lt!348541)))))

(declare-fun b!968994 () Bool)

(declare-fun res!440596 () Bool)

(assert (=> b!968994 (=> res!440596 e!624868)))

(assert (=> b!968994 (= res!440596 (not (is-ElementMatch!2694 lt!348541)))))

(assert (=> b!968994 (= e!624864 e!624868)))

(assert (= (and d!286399 c!157974) b!968988))

(assert (= (and d!286399 (not c!157974)) b!968989))

(assert (= (and d!286399 c!157976) b!968982))

(assert (= (and d!286399 (not c!157976)) b!968985))

(assert (= (and b!968985 c!157975) b!968987))

(assert (= (and b!968985 (not c!157975)) b!968994))

(assert (= (and b!968994 (not res!440596)) b!968992))

(assert (= (and b!968992 res!440595) b!968986))

(assert (= (and b!968986 res!440597) b!968981))

(assert (= (and b!968981 res!440590) b!968993))

(assert (= (and b!968992 (not res!440593)) b!968990))

(assert (= (and b!968990 res!440592) b!968983))

(assert (= (and b!968983 (not res!440594)) b!968991))

(assert (= (and b!968991 (not res!440591)) b!968984))

(assert (= (or b!968982 b!968983 b!968986) bm!61357))

(assert (=> b!968981 m!1174117))

(assert (=> b!968981 m!1174117))

(assert (=> b!968981 m!1174119))

(assert (=> b!968988 m!1174149))

(assert (=> b!968984 m!1174123))

(assert (=> b!968991 m!1174117))

(assert (=> b!968991 m!1174117))

(assert (=> b!968991 m!1174119))

(assert (=> b!968993 m!1174123))

(assert (=> b!968989 m!1174123))

(assert (=> b!968989 m!1174123))

(declare-fun m!1174185 () Bool)

(assert (=> b!968989 m!1174185))

(assert (=> b!968989 m!1174117))

(assert (=> b!968989 m!1174185))

(assert (=> b!968989 m!1174117))

(declare-fun m!1174187 () Bool)

(assert (=> b!968989 m!1174187))

(assert (=> bm!61357 m!1174129))

(assert (=> d!286399 m!1174129))

(assert (=> d!286399 m!1174157))

(assert (=> b!968590 d!286399))

(declare-fun d!286401 () Bool)

(assert (=> d!286401 (= (matchR!1232 lt!348541 (_2!6459 lt!348558)) (matchR!1232 (removeUselessConcat!341 lt!348541) (_2!6459 lt!348558)))))

(declare-fun lt!348661 () Unit!15047)

(assert (=> d!286401 (= lt!348661 (choose!6126 lt!348541 (_2!6459 lt!348558)))))

(assert (=> d!286401 (validRegex!1163 lt!348541)))

(assert (=> d!286401 (= (lemmaRemoveUselessConcatSound!193 lt!348541 (_2!6459 lt!348558)) lt!348661)))

(declare-fun bs!242267 () Bool)

(assert (= bs!242267 d!286401))

(assert (=> bs!242267 m!1174157))

(assert (=> bs!242267 m!1173953))

(declare-fun m!1174189 () Bool)

(assert (=> bs!242267 m!1174189))

(declare-fun m!1174191 () Bool)

(assert (=> bs!242267 m!1174191))

(assert (=> bs!242267 m!1173953))

(assert (=> bs!242267 m!1173945))

(assert (=> b!968590 d!286401))

(declare-fun d!286403 () Bool)

(declare-fun lt!348662 () Int)

(assert (=> d!286403 (>= lt!348662 0)))

(declare-fun e!624869 () Int)

(assert (=> d!286403 (= lt!348662 e!624869)))

(declare-fun c!157977 () Bool)

(assert (=> d!286403 (= c!157977 (is-Nil!9908 s!10566))))

(assert (=> d!286403 (= (size!7944 s!10566) lt!348662)))

(declare-fun b!968995 () Bool)

(assert (=> b!968995 (= e!624869 0)))

(declare-fun b!968996 () Bool)

(assert (=> b!968996 (= e!624869 (+ 1 (size!7944 (t!100970 s!10566))))))

(assert (= (and d!286403 c!157977) b!968995))

(assert (= (and d!286403 (not c!157977)) b!968996))

(declare-fun m!1174193 () Bool)

(assert (=> b!968996 m!1174193))

(assert (=> b!968590 d!286403))

(declare-fun call!61370 () Bool)

(declare-fun bm!61364 () Bool)

(declare-fun c!157983 () Bool)

(declare-fun c!157982 () Bool)

(assert (=> bm!61364 (= call!61370 (validRegex!1163 (ite c!157983 (reg!3023 r!15766) (ite c!157982 (regOne!5901 r!15766) (regOne!5900 r!15766)))))))

(declare-fun bm!61365 () Bool)

(declare-fun call!61371 () Bool)

(assert (=> bm!61365 (= call!61371 call!61370)))

(declare-fun b!969019 () Bool)

(declare-fun e!624892 () Bool)

(assert (=> b!969019 (= e!624892 call!61370)))

(declare-fun b!969020 () Bool)

(declare-fun e!624891 () Bool)

(assert (=> b!969020 (= e!624891 e!624892)))

(declare-fun res!440616 () Bool)

(assert (=> b!969020 (= res!440616 (not (nullable!818 (reg!3023 r!15766))))))

(assert (=> b!969020 (=> (not res!440616) (not e!624892))))

(declare-fun b!969021 () Bool)

(declare-fun e!624889 () Bool)

(declare-fun call!61369 () Bool)

(assert (=> b!969021 (= e!624889 call!61369)))

(declare-fun b!969022 () Bool)

(declare-fun res!440613 () Bool)

(assert (=> b!969022 (=> (not res!440613) (not e!624889))))

(assert (=> b!969022 (= res!440613 call!61371)))

(declare-fun e!624888 () Bool)

(assert (=> b!969022 (= e!624888 e!624889)))

(declare-fun b!969023 () Bool)

(assert (=> b!969023 (= e!624891 e!624888)))

(assert (=> b!969023 (= c!157982 (is-Union!2694 r!15766))))

(declare-fun b!969024 () Bool)

(declare-fun e!624890 () Bool)

(declare-fun e!624886 () Bool)

(assert (=> b!969024 (= e!624890 e!624886)))

(declare-fun res!440612 () Bool)

(assert (=> b!969024 (=> (not res!440612) (not e!624886))))

(assert (=> b!969024 (= res!440612 call!61371)))

(declare-fun bm!61366 () Bool)

(assert (=> bm!61366 (= call!61369 (validRegex!1163 (ite c!157982 (regTwo!5901 r!15766) (regTwo!5900 r!15766))))))

(declare-fun b!969025 () Bool)

(declare-fun res!440615 () Bool)

(assert (=> b!969025 (=> res!440615 e!624890)))

(assert (=> b!969025 (= res!440615 (not (is-Concat!4527 r!15766)))))

(assert (=> b!969025 (= e!624888 e!624890)))

(declare-fun b!969026 () Bool)

(declare-fun e!624887 () Bool)

(assert (=> b!969026 (= e!624887 e!624891)))

(assert (=> b!969026 (= c!157983 (is-Star!2694 r!15766))))

(declare-fun b!969027 () Bool)

(assert (=> b!969027 (= e!624886 call!61369)))

(declare-fun d!286405 () Bool)

(declare-fun res!440614 () Bool)

(assert (=> d!286405 (=> res!440614 e!624887)))

(assert (=> d!286405 (= res!440614 (is-ElementMatch!2694 r!15766))))

(assert (=> d!286405 (= (validRegex!1163 r!15766) e!624887)))

(assert (= (and d!286405 (not res!440614)) b!969026))

(assert (= (and b!969026 c!157983) b!969020))

(assert (= (and b!969026 (not c!157983)) b!969023))

(assert (= (and b!969020 res!440616) b!969019))

(assert (= (and b!969023 c!157982) b!969022))

(assert (= (and b!969023 (not c!157982)) b!969025))

(assert (= (and b!969022 res!440613) b!969021))

(assert (= (and b!969025 (not res!440615)) b!969024))

(assert (= (and b!969024 res!440612) b!969027))

(assert (= (or b!969021 b!969027) bm!61366))

(assert (= (or b!969022 b!969024) bm!61365))

(assert (= (or b!969019 bm!61365) bm!61364))

(declare-fun m!1174195 () Bool)

(assert (=> bm!61364 m!1174195))

(assert (=> b!969020 m!1174163))

(declare-fun m!1174197 () Bool)

(assert (=> bm!61366 m!1174197))

(assert (=> start!86128 d!286405))

(declare-fun b!969029 () Bool)

(declare-fun e!624893 () Bool)

(declare-fun lt!348663 () Bool)

(declare-fun call!61372 () Bool)

(assert (=> b!969029 (= e!624893 (= lt!348663 call!61372))))

(declare-fun b!969030 () Bool)

(declare-fun e!624897 () Bool)

(declare-fun e!624896 () Bool)

(assert (=> b!969030 (= e!624897 e!624896)))

(declare-fun res!440621 () Bool)

(assert (=> b!969030 (=> res!440621 e!624896)))

(assert (=> b!969030 (= res!440621 call!61372)))

(declare-fun b!969031 () Bool)

(assert (=> b!969031 (= e!624896 (not (= (head!1779 (_1!6459 lt!348558)) (c!157890 lt!348556))))))

(declare-fun b!969032 () Bool)

(declare-fun e!624895 () Bool)

(assert (=> b!969032 (= e!624893 e!624895)))

(declare-fun c!157985 () Bool)

(assert (=> b!969032 (= c!157985 (is-EmptyLang!2694 lt!348556))))

(declare-fun b!969033 () Bool)

(declare-fun res!440624 () Bool)

(declare-fun e!624898 () Bool)

(assert (=> b!969033 (=> (not res!440624) (not e!624898))))

(assert (=> b!969033 (= res!440624 (not call!61372))))

(declare-fun b!969034 () Bool)

(assert (=> b!969034 (= e!624895 (not lt!348663))))

(declare-fun d!286407 () Bool)

(assert (=> d!286407 e!624893))

(declare-fun c!157986 () Bool)

(assert (=> d!286407 (= c!157986 (is-EmptyExpr!2694 lt!348556))))

(declare-fun e!624894 () Bool)

(assert (=> d!286407 (= lt!348663 e!624894)))

(declare-fun c!157984 () Bool)

(assert (=> d!286407 (= c!157984 (isEmpty!6216 (_1!6459 lt!348558)))))

(assert (=> d!286407 (validRegex!1163 lt!348556)))

(assert (=> d!286407 (= (matchR!1232 lt!348556 (_1!6459 lt!348558)) lt!348663)))

(declare-fun b!969028 () Bool)

(declare-fun res!440617 () Bool)

(assert (=> b!969028 (=> (not res!440617) (not e!624898))))

(assert (=> b!969028 (= res!440617 (isEmpty!6216 (tail!1341 (_1!6459 lt!348558))))))

(declare-fun b!969035 () Bool)

(assert (=> b!969035 (= e!624894 (nullable!818 lt!348556))))

(declare-fun bm!61367 () Bool)

(assert (=> bm!61367 (= call!61372 (isEmpty!6216 (_1!6459 lt!348558)))))

(declare-fun b!969036 () Bool)

(assert (=> b!969036 (= e!624894 (matchR!1232 (derivativeStep!626 lt!348556 (head!1779 (_1!6459 lt!348558))) (tail!1341 (_1!6459 lt!348558))))))

(declare-fun b!969037 () Bool)

(declare-fun e!624899 () Bool)

(assert (=> b!969037 (= e!624899 e!624897)))

(declare-fun res!440619 () Bool)

(assert (=> b!969037 (=> (not res!440619) (not e!624897))))

(assert (=> b!969037 (= res!440619 (not lt!348663))))

(declare-fun b!969038 () Bool)

(declare-fun res!440618 () Bool)

(assert (=> b!969038 (=> res!440618 e!624896)))

(assert (=> b!969038 (= res!440618 (not (isEmpty!6216 (tail!1341 (_1!6459 lt!348558)))))))

(declare-fun b!969039 () Bool)

(declare-fun res!440620 () Bool)

(assert (=> b!969039 (=> res!440620 e!624899)))

(assert (=> b!969039 (= res!440620 e!624898)))

(declare-fun res!440622 () Bool)

(assert (=> b!969039 (=> (not res!440622) (not e!624898))))

(assert (=> b!969039 (= res!440622 lt!348663)))

(declare-fun b!969040 () Bool)

(assert (=> b!969040 (= e!624898 (= (head!1779 (_1!6459 lt!348558)) (c!157890 lt!348556)))))

(declare-fun b!969041 () Bool)

(declare-fun res!440623 () Bool)

(assert (=> b!969041 (=> res!440623 e!624899)))

(assert (=> b!969041 (= res!440623 (not (is-ElementMatch!2694 lt!348556)))))

(assert (=> b!969041 (= e!624895 e!624899)))

(assert (= (and d!286407 c!157984) b!969035))

(assert (= (and d!286407 (not c!157984)) b!969036))

(assert (= (and d!286407 c!157986) b!969029))

(assert (= (and d!286407 (not c!157986)) b!969032))

(assert (= (and b!969032 c!157985) b!969034))

(assert (= (and b!969032 (not c!157985)) b!969041))

(assert (= (and b!969041 (not res!440623)) b!969039))

(assert (= (and b!969039 res!440622) b!969033))

(assert (= (and b!969033 res!440624) b!969028))

(assert (= (and b!969028 res!440617) b!969040))

(assert (= (and b!969039 (not res!440620)) b!969037))

(assert (= (and b!969037 res!440619) b!969030))

(assert (= (and b!969030 (not res!440621)) b!969038))

(assert (= (and b!969038 (not res!440618)) b!969031))

(assert (= (or b!969029 b!969030 b!969033) bm!61367))

(assert (=> b!969028 m!1174159))

(assert (=> b!969028 m!1174159))

(assert (=> b!969028 m!1174161))

(declare-fun m!1174199 () Bool)

(assert (=> b!969035 m!1174199))

(assert (=> b!969031 m!1174165))

(assert (=> b!969038 m!1174159))

(assert (=> b!969038 m!1174159))

(assert (=> b!969038 m!1174161))

(assert (=> b!969040 m!1174165))

(assert (=> b!969036 m!1174165))

(assert (=> b!969036 m!1174165))

(declare-fun m!1174201 () Bool)

(assert (=> b!969036 m!1174201))

(assert (=> b!969036 m!1174159))

(assert (=> b!969036 m!1174201))

(assert (=> b!969036 m!1174159))

(declare-fun m!1174203 () Bool)

(assert (=> b!969036 m!1174203))

(assert (=> bm!61367 m!1174171))

(assert (=> d!286407 m!1174171))

(assert (=> d!286407 m!1174047))

(assert (=> b!968596 d!286407))

(declare-fun d!286409 () Bool)

(assert (=> d!286409 (= (get!3406 lt!348540) (v!19691 lt!348540))))

(assert (=> b!968596 d!286409))

(declare-fun b!969048 () Bool)

(declare-fun res!440634 () Bool)

(declare-fun e!624905 () Bool)

(assert (=> b!969048 (=> (not res!440634) (not e!624905))))

(declare-fun lt!348664 () Option!2275)

(assert (=> b!969048 (= res!440634 (matchR!1232 (reg!3023 r!15766) (_1!6459 (get!3406 lt!348664))))))

(declare-fun d!286411 () Bool)

(declare-fun e!624906 () Bool)

(assert (=> d!286411 e!624906))

(declare-fun res!440632 () Bool)

(assert (=> d!286411 (=> res!440632 e!624906)))

(assert (=> d!286411 (= res!440632 e!624905)))

(declare-fun res!440631 () Bool)

(assert (=> d!286411 (=> (not res!440631) (not e!624905))))

(assert (=> d!286411 (= res!440631 (isDefined!1917 lt!348664))))

(declare-fun e!624904 () Option!2275)

(assert (=> d!286411 (= lt!348664 e!624904)))

(declare-fun c!157988 () Bool)

(declare-fun e!624902 () Bool)

(assert (=> d!286411 (= c!157988 e!624902)))

(declare-fun res!440633 () Bool)

(assert (=> d!286411 (=> (not res!440633) (not e!624902))))

(assert (=> d!286411 (= res!440633 (matchR!1232 (reg!3023 r!15766) Nil!9908))))

(assert (=> d!286411 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286411 (= (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 Nil!9908 s!10566 s!10566) lt!348664)))

(declare-fun b!969049 () Bool)

(declare-fun e!624903 () Option!2275)

(assert (=> b!969049 (= e!624904 e!624903)))

(declare-fun c!157987 () Bool)

(assert (=> b!969049 (= c!157987 (is-Nil!9908 s!10566))))

(declare-fun b!969050 () Bool)

(assert (=> b!969050 (= e!624902 (matchR!1232 lt!348541 s!10566))))

(declare-fun b!969051 () Bool)

(assert (=> b!969051 (= e!624905 (= (++!2680 (_1!6459 (get!3406 lt!348664)) (_2!6459 (get!3406 lt!348664))) s!10566))))

(declare-fun b!969052 () Bool)

(declare-fun lt!348666 () Unit!15047)

(declare-fun lt!348665 () Unit!15047)

(assert (=> b!969052 (= lt!348666 lt!348665)))

(assert (=> b!969052 (= (++!2680 (++!2680 Nil!9908 (Cons!9908 (h!15309 s!10566) Nil!9908)) (t!100970 s!10566)) s!10566)))

(assert (=> b!969052 (= lt!348665 (lemmaMoveElementToOtherListKeepsConcatEq!281 Nil!9908 (h!15309 s!10566) (t!100970 s!10566) s!10566))))

(assert (=> b!969052 (= e!624903 (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 (++!2680 Nil!9908 (Cons!9908 (h!15309 s!10566) Nil!9908)) (t!100970 s!10566) s!10566))))

(declare-fun b!969053 () Bool)

(declare-fun res!440635 () Bool)

(assert (=> b!969053 (=> (not res!440635) (not e!624905))))

(assert (=> b!969053 (= res!440635 (matchR!1232 lt!348541 (_2!6459 (get!3406 lt!348664))))))

(declare-fun b!969054 () Bool)

(assert (=> b!969054 (= e!624904 (Some!2274 (tuple2!11267 Nil!9908 s!10566)))))

(declare-fun b!969055 () Bool)

(assert (=> b!969055 (= e!624903 None!2274)))

(declare-fun b!969056 () Bool)

(assert (=> b!969056 (= e!624906 (not (isDefined!1917 lt!348664)))))

(assert (= (and d!286411 res!440633) b!969050))

(assert (= (and d!286411 c!157988) b!969054))

(assert (= (and d!286411 (not c!157988)) b!969049))

(assert (= (and b!969049 c!157987) b!969055))

(assert (= (and b!969049 (not c!157987)) b!969052))

(assert (= (and d!286411 res!440631) b!969048))

(assert (= (and b!969048 res!440634) b!969053))

(assert (= (and b!969053 res!440635) b!969051))

(assert (= (and d!286411 (not res!440632)) b!969056))

(declare-fun m!1174205 () Bool)

(assert (=> d!286411 m!1174205))

(declare-fun m!1174207 () Bool)

(assert (=> d!286411 m!1174207))

(assert (=> d!286411 m!1174115))

(declare-fun m!1174209 () Bool)

(assert (=> b!969051 m!1174209))

(declare-fun m!1174211 () Bool)

(assert (=> b!969051 m!1174211))

(assert (=> b!969053 m!1174209))

(declare-fun m!1174213 () Bool)

(assert (=> b!969053 m!1174213))

(assert (=> b!969052 m!1174063))

(assert (=> b!969052 m!1174063))

(assert (=> b!969052 m!1174065))

(assert (=> b!969052 m!1174067))

(assert (=> b!969052 m!1174063))

(declare-fun m!1174215 () Bool)

(assert (=> b!969052 m!1174215))

(declare-fun m!1174217 () Bool)

(assert (=> b!969050 m!1174217))

(assert (=> b!969056 m!1174205))

(assert (=> b!969048 m!1174209))

(declare-fun m!1174219 () Bool)

(assert (=> b!969048 m!1174219))

(assert (=> b!968591 d!286411))

(declare-fun b!969058 () Bool)

(declare-fun e!624907 () Bool)

(declare-fun lt!348667 () Bool)

(declare-fun call!61373 () Bool)

(assert (=> b!969058 (= e!624907 (= lt!348667 call!61373))))

(declare-fun b!969059 () Bool)

(declare-fun e!624911 () Bool)

(declare-fun e!624910 () Bool)

(assert (=> b!969059 (= e!624911 e!624910)))

(declare-fun res!440640 () Bool)

(assert (=> b!969059 (=> res!440640 e!624910)))

(assert (=> b!969059 (= res!440640 call!61373)))

(declare-fun b!969060 () Bool)

(assert (=> b!969060 (= e!624910 (not (= (head!1779 s!10566) (c!157890 lt!348552))))))

(declare-fun b!969061 () Bool)

(declare-fun e!624909 () Bool)

(assert (=> b!969061 (= e!624907 e!624909)))

(declare-fun c!157990 () Bool)

(assert (=> b!969061 (= c!157990 (is-EmptyLang!2694 lt!348552))))

(declare-fun b!969062 () Bool)

(declare-fun res!440643 () Bool)

(declare-fun e!624912 () Bool)

(assert (=> b!969062 (=> (not res!440643) (not e!624912))))

(assert (=> b!969062 (= res!440643 (not call!61373))))

(declare-fun b!969063 () Bool)

(assert (=> b!969063 (= e!624909 (not lt!348667))))

(declare-fun d!286413 () Bool)

(assert (=> d!286413 e!624907))

(declare-fun c!157991 () Bool)

(assert (=> d!286413 (= c!157991 (is-EmptyExpr!2694 lt!348552))))

(declare-fun e!624908 () Bool)

(assert (=> d!286413 (= lt!348667 e!624908)))

(declare-fun c!157989 () Bool)

(assert (=> d!286413 (= c!157989 (isEmpty!6216 s!10566))))

(assert (=> d!286413 (validRegex!1163 lt!348552)))

(assert (=> d!286413 (= (matchR!1232 lt!348552 s!10566) lt!348667)))

(declare-fun b!969057 () Bool)

(declare-fun res!440636 () Bool)

(assert (=> b!969057 (=> (not res!440636) (not e!624912))))

(assert (=> b!969057 (= res!440636 (isEmpty!6216 (tail!1341 s!10566)))))

(declare-fun b!969064 () Bool)

(assert (=> b!969064 (= e!624908 (nullable!818 lt!348552))))

(declare-fun bm!61368 () Bool)

(assert (=> bm!61368 (= call!61373 (isEmpty!6216 s!10566))))

(declare-fun b!969065 () Bool)

(assert (=> b!969065 (= e!624908 (matchR!1232 (derivativeStep!626 lt!348552 (head!1779 s!10566)) (tail!1341 s!10566)))))

(declare-fun b!969066 () Bool)

(declare-fun e!624913 () Bool)

(assert (=> b!969066 (= e!624913 e!624911)))

(declare-fun res!440638 () Bool)

(assert (=> b!969066 (=> (not res!440638) (not e!624911))))

(assert (=> b!969066 (= res!440638 (not lt!348667))))

(declare-fun b!969067 () Bool)

(declare-fun res!440637 () Bool)

(assert (=> b!969067 (=> res!440637 e!624910)))

(assert (=> b!969067 (= res!440637 (not (isEmpty!6216 (tail!1341 s!10566))))))

(declare-fun b!969068 () Bool)

(declare-fun res!440639 () Bool)

(assert (=> b!969068 (=> res!440639 e!624913)))

(assert (=> b!969068 (= res!440639 e!624912)))

(declare-fun res!440641 () Bool)

(assert (=> b!969068 (=> (not res!440641) (not e!624912))))

(assert (=> b!969068 (= res!440641 lt!348667)))

(declare-fun b!969069 () Bool)

(assert (=> b!969069 (= e!624912 (= (head!1779 s!10566) (c!157890 lt!348552)))))

(declare-fun b!969070 () Bool)

(declare-fun res!440642 () Bool)

(assert (=> b!969070 (=> res!440642 e!624913)))

(assert (=> b!969070 (= res!440642 (not (is-ElementMatch!2694 lt!348552)))))

(assert (=> b!969070 (= e!624909 e!624913)))

(assert (= (and d!286413 c!157989) b!969064))

(assert (= (and d!286413 (not c!157989)) b!969065))

(assert (= (and d!286413 c!157991) b!969058))

(assert (= (and d!286413 (not c!157991)) b!969061))

(assert (= (and b!969061 c!157990) b!969063))

(assert (= (and b!969061 (not c!157990)) b!969070))

(assert (= (and b!969070 (not res!440642)) b!969068))

(assert (= (and b!969068 res!440641) b!969062))

(assert (= (and b!969062 res!440643) b!969057))

(assert (= (and b!969057 res!440636) b!969069))

(assert (= (and b!969068 (not res!440639)) b!969066))

(assert (= (and b!969066 res!440638) b!969059))

(assert (= (and b!969059 (not res!440640)) b!969067))

(assert (= (and b!969067 (not res!440637)) b!969060))

(assert (= (or b!969058 b!969059 b!969062) bm!61368))

(assert (=> b!969057 m!1174097))

(assert (=> b!969057 m!1174097))

(assert (=> b!969057 m!1174099))

(assert (=> b!969064 m!1174121))

(assert (=> b!969060 m!1174103))

(assert (=> b!969067 m!1174097))

(assert (=> b!969067 m!1174097))

(assert (=> b!969067 m!1174099))

(assert (=> b!969069 m!1174103))

(assert (=> b!969065 m!1174103))

(assert (=> b!969065 m!1174103))

(declare-fun m!1174221 () Bool)

(assert (=> b!969065 m!1174221))

(assert (=> b!969065 m!1174097))

(assert (=> b!969065 m!1174221))

(assert (=> b!969065 m!1174097))

(declare-fun m!1174223 () Bool)

(assert (=> b!969065 m!1174223))

(assert (=> bm!61368 m!1173897))

(assert (=> d!286413 m!1173897))

(assert (=> d!286413 m!1174031))

(assert (=> b!968591 d!286413))

(declare-fun bs!242268 () Bool)

(declare-fun d!286415 () Bool)

(assert (= bs!242268 (and d!286415 b!968586)))

(declare-fun lambda!34270 () Int)

(assert (=> bs!242268 (not (= lambda!34270 lambda!34226))))

(declare-fun bs!242269 () Bool)

(assert (= bs!242269 (and d!286415 d!286359)))

(assert (=> bs!242269 (= (and (= (reg!3023 r!15766) lt!348556) (= lt!348541 lt!348552)) (= lambda!34270 lambda!34245))))

(declare-fun bs!242270 () Bool)

(assert (= bs!242270 (and d!286415 b!968800)))

(assert (=> bs!242270 (not (= lambda!34270 lambda!34263))))

(declare-fun bs!242271 () Bool)

(assert (= bs!242271 (and d!286415 b!968811)))

(assert (=> bs!242271 (not (= lambda!34270 lambda!34265))))

(declare-fun bs!242272 () Bool)

(assert (= bs!242272 (and d!286415 b!968591)))

(assert (=> bs!242272 (not (= lambda!34270 lambda!34224))))

(assert (=> bs!242268 (= (and (= (reg!3023 r!15766) lt!348556) (= lt!348541 lt!348552)) (= lambda!34270 lambda!34225))))

(declare-fun bs!242273 () Bool)

(assert (= bs!242273 (and d!286415 b!968803)))

(assert (=> bs!242273 (not (= lambda!34270 lambda!34262))))

(declare-fun bs!242274 () Bool)

(assert (= bs!242274 (and d!286415 d!286369)))

(assert (=> bs!242274 (not (= lambda!34270 lambda!34255))))

(assert (=> bs!242274 (= (and (= (reg!3023 r!15766) lt!348556) (= lt!348541 (Star!2694 lt!348556))) (= lambda!34270 lambda!34254))))

(assert (=> bs!242272 (= lambda!34270 lambda!34223)))

(declare-fun bs!242275 () Bool)

(assert (= bs!242275 (and d!286415 b!968814)))

(assert (=> bs!242275 (not (= lambda!34270 lambda!34264))))

(assert (=> d!286415 true))

(assert (=> d!286415 true))

(assert (=> d!286415 true))

(assert (=> d!286415 (= (isDefined!1917 (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 Nil!9908 s!10566 s!10566)) (Exists!437 lambda!34270))))

(declare-fun lt!348668 () Unit!15047)

(assert (=> d!286415 (= lt!348668 (choose!6123 (reg!3023 r!15766) lt!348541 s!10566))))

(assert (=> d!286415 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286415 (= (lemmaFindConcatSeparationEquivalentToExists!381 (reg!3023 r!15766) lt!348541 s!10566) lt!348668)))

(declare-fun bs!242277 () Bool)

(assert (= bs!242277 d!286415))

(declare-fun m!1174225 () Bool)

(assert (=> bs!242277 m!1174225))

(assert (=> bs!242277 m!1173927))

(declare-fun m!1174227 () Bool)

(assert (=> bs!242277 m!1174227))

(assert (=> bs!242277 m!1173927))

(assert (=> bs!242277 m!1173929))

(assert (=> bs!242277 m!1174115))

(assert (=> b!968591 d!286415))

(declare-fun d!286417 () Bool)

(assert (=> d!286417 (= (isDefined!1917 (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 Nil!9908 s!10566 s!10566)) (not (isEmpty!6218 (findConcatSeparation!381 (reg!3023 r!15766) lt!348541 Nil!9908 s!10566 s!10566))))))

(declare-fun bs!242279 () Bool)

(assert (= bs!242279 d!286417))

(assert (=> bs!242279 m!1173927))

(declare-fun m!1174229 () Bool)

(assert (=> bs!242279 m!1174229))

(assert (=> b!968591 d!286417))

(declare-fun d!286419 () Bool)

(assert (=> d!286419 (= (Exists!437 lambda!34224) (choose!6122 lambda!34224))))

(declare-fun bs!242280 () Bool)

(assert (= bs!242280 d!286419))

(declare-fun m!1174231 () Bool)

(assert (=> bs!242280 m!1174231))

(assert (=> b!968591 d!286419))

(declare-fun bs!242283 () Bool)

(declare-fun d!286421 () Bool)

(assert (= bs!242283 (and d!286421 b!968586)))

(declare-fun lambda!34272 () Int)

(assert (=> bs!242283 (not (= lambda!34272 lambda!34226))))

(declare-fun bs!242284 () Bool)

(assert (= bs!242284 (and d!286421 d!286359)))

(assert (=> bs!242284 (= (and (= (reg!3023 r!15766) lt!348556) (= (Star!2694 (reg!3023 r!15766)) lt!348552)) (= lambda!34272 lambda!34245))))

(declare-fun bs!242285 () Bool)

(assert (= bs!242285 (and d!286421 b!968800)))

(assert (=> bs!242285 (not (= lambda!34272 lambda!34263))))

(declare-fun bs!242286 () Bool)

(assert (= bs!242286 (and d!286421 b!968811)))

(assert (=> bs!242286 (not (= lambda!34272 lambda!34265))))

(declare-fun bs!242287 () Bool)

(assert (= bs!242287 (and d!286421 b!968591)))

(assert (=> bs!242287 (not (= lambda!34272 lambda!34224))))

(assert (=> bs!242283 (= (and (= (reg!3023 r!15766) lt!348556) (= (Star!2694 (reg!3023 r!15766)) lt!348552)) (= lambda!34272 lambda!34225))))

(declare-fun bs!242288 () Bool)

(assert (= bs!242288 (and d!286421 b!968803)))

(assert (=> bs!242288 (not (= lambda!34272 lambda!34262))))

(declare-fun bs!242289 () Bool)

(assert (= bs!242289 (and d!286421 d!286369)))

(assert (=> bs!242289 (not (= lambda!34272 lambda!34255))))

(assert (=> bs!242289 (= (and (= (reg!3023 r!15766) lt!348556) (= (Star!2694 (reg!3023 r!15766)) (Star!2694 lt!348556))) (= lambda!34272 lambda!34254))))

(assert (=> bs!242287 (= (= (Star!2694 (reg!3023 r!15766)) lt!348541) (= lambda!34272 lambda!34223))))

(declare-fun bs!242290 () Bool)

(assert (= bs!242290 (and d!286421 b!968814)))

(assert (=> bs!242290 (not (= lambda!34272 lambda!34264))))

(declare-fun bs!242291 () Bool)

(assert (= bs!242291 (and d!286421 d!286415)))

(assert (=> bs!242291 (= (= (Star!2694 (reg!3023 r!15766)) lt!348541) (= lambda!34272 lambda!34270))))

(assert (=> d!286421 true))

(assert (=> d!286421 true))

(declare-fun lambda!34274 () Int)

(assert (=> bs!242283 (= (and (= (reg!3023 r!15766) lt!348556) (= (Star!2694 (reg!3023 r!15766)) lt!348552)) (= lambda!34274 lambda!34226))))

(assert (=> bs!242284 (not (= lambda!34274 lambda!34245))))

(assert (=> bs!242285 (not (= lambda!34274 lambda!34263))))

(assert (=> bs!242286 (not (= lambda!34274 lambda!34265))))

(assert (=> bs!242287 (= (= (Star!2694 (reg!3023 r!15766)) lt!348541) (= lambda!34274 lambda!34224))))

(assert (=> bs!242283 (not (= lambda!34274 lambda!34225))))

(assert (=> bs!242288 (= (and (= (reg!3023 r!15766) (reg!3023 lt!348552)) (= (Star!2694 (reg!3023 r!15766)) lt!348552)) (= lambda!34274 lambda!34262))))

(declare-fun bs!242293 () Bool)

(assert (= bs!242293 d!286421))

(assert (=> bs!242293 (not (= lambda!34274 lambda!34272))))

(assert (=> bs!242289 (= (and (= (reg!3023 r!15766) lt!348556) (= (Star!2694 (reg!3023 r!15766)) (Star!2694 lt!348556))) (= lambda!34274 lambda!34255))))

(assert (=> bs!242289 (not (= lambda!34274 lambda!34254))))

(assert (=> bs!242287 (not (= lambda!34274 lambda!34223))))

(assert (=> bs!242290 (= (= (Star!2694 (reg!3023 r!15766)) r!15766) (= lambda!34274 lambda!34264))))

(assert (=> bs!242291 (not (= lambda!34274 lambda!34270))))

(assert (=> d!286421 true))

(assert (=> d!286421 true))

(assert (=> d!286421 (= (Exists!437 lambda!34272) (Exists!437 lambda!34274))))

(declare-fun lt!348670 () Unit!15047)

(assert (=> d!286421 (= lt!348670 (choose!6124 (reg!3023 r!15766) s!10566))))

(assert (=> d!286421 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286421 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!155 (reg!3023 r!15766) s!10566) lt!348670)))

(declare-fun m!1174241 () Bool)

(assert (=> bs!242293 m!1174241))

(declare-fun m!1174243 () Bool)

(assert (=> bs!242293 m!1174243))

(declare-fun m!1174245 () Bool)

(assert (=> bs!242293 m!1174245))

(assert (=> bs!242293 m!1174115))

(assert (=> b!968591 d!286421))

(declare-fun d!286425 () Bool)

(assert (=> d!286425 (= (Exists!437 lambda!34223) (choose!6122 lambda!34223))))

(declare-fun bs!242294 () Bool)

(assert (= bs!242294 d!286425))

(declare-fun m!1174247 () Bool)

(assert (=> bs!242294 m!1174247))

(assert (=> b!968591 d!286425))

(declare-fun b!969071 () Bool)

(declare-fun e!624917 () Regex!2694)

(declare-fun call!61378 () Regex!2694)

(assert (=> b!969071 (= e!624917 call!61378)))

(declare-fun b!969072 () Bool)

(declare-fun c!157995 () Bool)

(assert (=> b!969072 (= c!157995 (is-Concat!4527 (reg!3023 r!15766)))))

(declare-fun e!624918 () Regex!2694)

(declare-fun e!624919 () Regex!2694)

(assert (=> b!969072 (= e!624918 e!624919)))

(declare-fun bm!61370 () Bool)

(declare-fun call!61375 () Regex!2694)

(declare-fun call!61374 () Regex!2694)

(assert (=> bm!61370 (= call!61375 call!61374)))

(declare-fun b!969073 () Bool)

(declare-fun call!61377 () Regex!2694)

(assert (=> b!969073 (= e!624919 (Concat!4527 call!61377 call!61375))))

(declare-fun b!969074 () Bool)

(assert (=> b!969074 (= e!624917 e!624918)))

(declare-fun c!157992 () Bool)

(assert (=> b!969074 (= c!157992 (and (is-Concat!4527 (reg!3023 r!15766)) (is-EmptyExpr!2694 (regTwo!5900 (reg!3023 r!15766)))))))

(declare-fun b!969075 () Bool)

(declare-fun e!624915 () Regex!2694)

(assert (=> b!969075 (= e!624919 e!624915)))

(declare-fun c!157993 () Bool)

(assert (=> b!969075 (= c!157993 (is-Union!2694 (reg!3023 r!15766)))))

(declare-fun b!969076 () Bool)

(declare-fun e!624914 () Regex!2694)

(declare-fun call!61376 () Regex!2694)

(assert (=> b!969076 (= e!624914 (Star!2694 call!61376))))

(declare-fun b!969077 () Bool)

(assert (=> b!969077 (= e!624914 (reg!3023 r!15766))))

(declare-fun b!969078 () Bool)

(assert (=> b!969078 (= e!624918 call!61374)))

(declare-fun b!969079 () Bool)

(declare-fun e!624916 () Bool)

(declare-fun lt!348671 () Regex!2694)

(assert (=> b!969079 (= e!624916 (= (nullable!818 lt!348671) (nullable!818 (reg!3023 r!15766))))))

(declare-fun bm!61371 () Bool)

(assert (=> bm!61371 (= call!61376 call!61375)))

(declare-fun c!157996 () Bool)

(declare-fun bm!61372 () Bool)

(assert (=> bm!61372 (= call!61378 (removeUselessConcat!341 (ite c!157996 (regTwo!5900 (reg!3023 r!15766)) (ite c!157992 (regOne!5900 (reg!3023 r!15766)) (ite c!157995 (regTwo!5900 (reg!3023 r!15766)) (ite c!157993 (regTwo!5901 (reg!3023 r!15766)) (reg!3023 (reg!3023 r!15766))))))))))

(declare-fun bm!61373 () Bool)

(assert (=> bm!61373 (= call!61377 (removeUselessConcat!341 (ite c!157995 (regOne!5900 (reg!3023 r!15766)) (regOne!5901 (reg!3023 r!15766)))))))

(declare-fun d!286427 () Bool)

(assert (=> d!286427 e!624916))

(declare-fun res!440644 () Bool)

(assert (=> d!286427 (=> (not res!440644) (not e!624916))))

(assert (=> d!286427 (= res!440644 (validRegex!1163 lt!348671))))

(assert (=> d!286427 (= lt!348671 e!624917)))

(assert (=> d!286427 (= c!157996 (and (is-Concat!4527 (reg!3023 r!15766)) (is-EmptyExpr!2694 (regOne!5900 (reg!3023 r!15766)))))))

(assert (=> d!286427 (validRegex!1163 (reg!3023 r!15766))))

(assert (=> d!286427 (= (removeUselessConcat!341 (reg!3023 r!15766)) lt!348671)))

(declare-fun bm!61369 () Bool)

(assert (=> bm!61369 (= call!61374 call!61378)))

(declare-fun b!969080 () Bool)

(declare-fun c!157994 () Bool)

(assert (=> b!969080 (= c!157994 (is-Star!2694 (reg!3023 r!15766)))))

(assert (=> b!969080 (= e!624915 e!624914)))

(declare-fun b!969081 () Bool)

(assert (=> b!969081 (= e!624915 (Union!2694 call!61377 call!61376))))

(assert (= (and d!286427 c!157996) b!969071))

(assert (= (and d!286427 (not c!157996)) b!969074))

(assert (= (and b!969074 c!157992) b!969078))

(assert (= (and b!969074 (not c!157992)) b!969072))

(assert (= (and b!969072 c!157995) b!969073))

(assert (= (and b!969072 (not c!157995)) b!969075))

(assert (= (and b!969075 c!157993) b!969081))

(assert (= (and b!969075 (not c!157993)) b!969080))

(assert (= (and b!969080 c!157994) b!969076))

(assert (= (and b!969080 (not c!157994)) b!969077))

(assert (= (or b!969081 b!969076) bm!61371))

(assert (= (or b!969073 bm!61371) bm!61370))

(assert (= (or b!969073 b!969081) bm!61373))

(assert (= (or b!969078 bm!61370) bm!61369))

(assert (= (or b!969071 bm!61369) bm!61372))

(assert (= (and d!286427 res!440644) b!969079))

(declare-fun m!1174249 () Bool)

(assert (=> b!969079 m!1174249))

(assert (=> b!969079 m!1174163))

(declare-fun m!1174251 () Bool)

(assert (=> bm!61372 m!1174251))

(declare-fun m!1174253 () Bool)

(assert (=> bm!61373 m!1174253))

(declare-fun m!1174255 () Bool)

(assert (=> d!286427 m!1174255))

(assert (=> d!286427 m!1174115))

(assert (=> b!968591 d!286427))

(declare-fun b!969092 () Bool)

(declare-fun e!624922 () Bool)

(assert (=> b!969092 (= e!624922 tp_is_empty!5031)))

(declare-fun b!969093 () Bool)

(declare-fun tp!296863 () Bool)

(declare-fun tp!296862 () Bool)

(assert (=> b!969093 (= e!624922 (and tp!296863 tp!296862))))

(declare-fun b!969094 () Bool)

(declare-fun tp!296861 () Bool)

(assert (=> b!969094 (= e!624922 tp!296861)))

(assert (=> b!968593 (= tp!296829 e!624922)))

(declare-fun b!969095 () Bool)

(declare-fun tp!296860 () Bool)

(declare-fun tp!296859 () Bool)

(assert (=> b!969095 (= e!624922 (and tp!296860 tp!296859))))

(assert (= (and b!968593 (is-ElementMatch!2694 (regOne!5900 r!15766))) b!969092))

(assert (= (and b!968593 (is-Concat!4527 (regOne!5900 r!15766))) b!969093))

(assert (= (and b!968593 (is-Star!2694 (regOne!5900 r!15766))) b!969094))

(assert (= (and b!968593 (is-Union!2694 (regOne!5900 r!15766))) b!969095))

(declare-fun b!969096 () Bool)

(declare-fun e!624923 () Bool)

(assert (=> b!969096 (= e!624923 tp_is_empty!5031)))

(declare-fun b!969097 () Bool)

(declare-fun tp!296868 () Bool)

(declare-fun tp!296867 () Bool)

(assert (=> b!969097 (= e!624923 (and tp!296868 tp!296867))))

(declare-fun b!969098 () Bool)

(declare-fun tp!296866 () Bool)

(assert (=> b!969098 (= e!624923 tp!296866)))

(assert (=> b!968593 (= tp!296825 e!624923)))

(declare-fun b!969099 () Bool)

(declare-fun tp!296865 () Bool)

(declare-fun tp!296864 () Bool)

(assert (=> b!969099 (= e!624923 (and tp!296865 tp!296864))))

(assert (= (and b!968593 (is-ElementMatch!2694 (regTwo!5900 r!15766))) b!969096))

(assert (= (and b!968593 (is-Concat!4527 (regTwo!5900 r!15766))) b!969097))

(assert (= (and b!968593 (is-Star!2694 (regTwo!5900 r!15766))) b!969098))

(assert (= (and b!968593 (is-Union!2694 (regTwo!5900 r!15766))) b!969099))

(declare-fun b!969100 () Bool)

(declare-fun e!624924 () Bool)

(assert (=> b!969100 (= e!624924 tp_is_empty!5031)))

(declare-fun b!969101 () Bool)

(declare-fun tp!296873 () Bool)

(declare-fun tp!296872 () Bool)

(assert (=> b!969101 (= e!624924 (and tp!296873 tp!296872))))

(declare-fun b!969102 () Bool)

(declare-fun tp!296871 () Bool)

(assert (=> b!969102 (= e!624924 tp!296871)))

(assert (=> b!968599 (= tp!296827 e!624924)))

(declare-fun b!969103 () Bool)

(declare-fun tp!296870 () Bool)

(declare-fun tp!296869 () Bool)

(assert (=> b!969103 (= e!624924 (and tp!296870 tp!296869))))

(assert (= (and b!968599 (is-ElementMatch!2694 (regOne!5901 r!15766))) b!969100))

(assert (= (and b!968599 (is-Concat!4527 (regOne!5901 r!15766))) b!969101))

(assert (= (and b!968599 (is-Star!2694 (regOne!5901 r!15766))) b!969102))

(assert (= (and b!968599 (is-Union!2694 (regOne!5901 r!15766))) b!969103))

(declare-fun b!969104 () Bool)

(declare-fun e!624925 () Bool)

(assert (=> b!969104 (= e!624925 tp_is_empty!5031)))

(declare-fun b!969105 () Bool)

(declare-fun tp!296878 () Bool)

(declare-fun tp!296877 () Bool)

(assert (=> b!969105 (= e!624925 (and tp!296878 tp!296877))))

(declare-fun b!969106 () Bool)

(declare-fun tp!296876 () Bool)

(assert (=> b!969106 (= e!624925 tp!296876)))

(assert (=> b!968599 (= tp!296828 e!624925)))

(declare-fun b!969107 () Bool)

(declare-fun tp!296875 () Bool)

(declare-fun tp!296874 () Bool)

(assert (=> b!969107 (= e!624925 (and tp!296875 tp!296874))))

(assert (= (and b!968599 (is-ElementMatch!2694 (regTwo!5901 r!15766))) b!969104))

(assert (= (and b!968599 (is-Concat!4527 (regTwo!5901 r!15766))) b!969105))

(assert (= (and b!968599 (is-Star!2694 (regTwo!5901 r!15766))) b!969106))

(assert (= (and b!968599 (is-Union!2694 (regTwo!5901 r!15766))) b!969107))

(declare-fun b!969112 () Bool)

(declare-fun e!624928 () Bool)

(declare-fun tp!296881 () Bool)

(assert (=> b!969112 (= e!624928 (and tp_is_empty!5031 tp!296881))))

(assert (=> b!968594 (= tp!296830 e!624928)))

(assert (= (and b!968594 (is-Cons!9908 (t!100970 s!10566))) b!969112))

(declare-fun b!969113 () Bool)

(declare-fun e!624929 () Bool)

(assert (=> b!969113 (= e!624929 tp_is_empty!5031)))

(declare-fun b!969114 () Bool)

(declare-fun tp!296886 () Bool)

(declare-fun tp!296885 () Bool)

(assert (=> b!969114 (= e!624929 (and tp!296886 tp!296885))))

(declare-fun b!969115 () Bool)

(declare-fun tp!296884 () Bool)

(assert (=> b!969115 (= e!624929 tp!296884)))

(assert (=> b!968595 (= tp!296826 e!624929)))

(declare-fun b!969116 () Bool)

(declare-fun tp!296883 () Bool)

(declare-fun tp!296882 () Bool)

(assert (=> b!969116 (= e!624929 (and tp!296883 tp!296882))))

(assert (= (and b!968595 (is-ElementMatch!2694 (reg!3023 r!15766))) b!969113))

(assert (= (and b!968595 (is-Concat!4527 (reg!3023 r!15766))) b!969114))

(assert (= (and b!968595 (is-Star!2694 (reg!3023 r!15766))) b!969115))

(assert (= (and b!968595 (is-Union!2694 (reg!3023 r!15766))) b!969116))

(push 1)

(assert (not d!286411))

(assert (not bm!61356))

(assert (not b!969107))

(assert (not d!286397))

(assert (not b!969028))

(assert (not b!968960))

(assert (not b!969103))

(assert (not bm!61357))

(assert (not bm!61353))

(assert (not b!968967))

(assert (not d!286387))

(assert (not b!968991))

(assert (not b!968804))

(assert (not b!969031))

(assert (not b!968815))

(assert (not d!286413))

(assert (not b!968872))

(assert (not b!968988))

(assert (not b!968963))

(assert (not bm!61373))

(assert (not b!969069))

(assert (not b!968894))

(assert (not bm!61368))

(assert (not b!968970))

(assert (not bm!61355))

(assert (not bm!61366))

(assert (not b!969052))

(assert (not d!286395))

(assert (not b!969105))

(assert (not b!969095))

(assert (not b!968950))

(assert (not b!968996))

(assert (not d!286401))

(assert (not bm!61354))

(assert (not b!968733))

(assert (not bm!61332))

(assert (not d!286381))

(assert (not b!968893))

(assert (not b!968798))

(assert (not d!286377))

(assert (not d!286399))

(assert (not b!969098))

(assert (not d!286367))

(assert (not b!969053))

(assert (not bm!61329))

(assert (not bm!61364))

(assert (not b!968919))

(assert (not b!969036))

(assert (not b!969060))

(assert (not d!286357))

(assert (not b!968884))

(assert (not b!968974))

(assert (not b!969115))

(assert (not b!968989))

(assert (not d!286427))

(assert (not b!969099))

(assert (not b!968898))

(assert (not b!968882))

(assert (not d!286425))

(assert (not d!286355))

(assert (not b!969094))

(assert (not b!968880))

(assert (not d!286365))

(assert (not b!969057))

(assert (not bm!61331))

(assert (not d!286363))

(assert (not b!969112))

(assert (not b!969093))

(assert (not b!969079))

(assert (not b!969106))

(assert (not b!969050))

(assert (not d!286417))

(assert (not b!968977))

(assert (not b!968732))

(assert (not d!286369))

(assert (not b!969067))

(assert (not b!969056))

(assert (not b!968984))

(assert (not b!968731))

(assert (not d!286415))

(assert (not b!968981))

(assert (not b!968730))

(assert (not b!969102))

(assert (not d!286407))

(assert (not b!969040))

(assert (not bm!61337))

(assert (not b!969065))

(assert (not d!286383))

(assert (not b!968896))

(assert (not b!969051))

(assert (not bm!61367))

(assert tp_is_empty!5031)

(assert (not b!969048))

(assert (not b!968875))

(assert (not b!969038))

(assert (not b!969114))

(assert (not b!968736))

(assert (not d!286419))

(assert (not d!286421))

(assert (not b!968961))

(assert (not b!968953))

(assert (not b!968809))

(assert (not b!968879))

(assert (not b!969116))

(assert (not d!286379))

(assert (not b!969097))

(assert (not b!968979))

(assert (not b!968886))

(assert (not b!968889))

(assert (not b!968965))

(assert (not b!969064))

(assert (not b!968728))

(assert (not bm!61338))

(assert (not b!968956))

(assert (not b!969035))

(assert (not b!968993))

(assert (not b!969101))

(assert (not bm!61372))

(assert (not b!968975))

(assert (not bm!61330))

(assert (not d!286393))

(assert (not b!969020))

(assert (not d!286359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

