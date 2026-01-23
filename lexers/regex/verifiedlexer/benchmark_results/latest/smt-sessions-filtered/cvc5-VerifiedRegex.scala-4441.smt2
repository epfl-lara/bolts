; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236154 () Bool)

(assert start!236154)

(declare-fun b!2409587 () Bool)

(declare-fun e!1534123 () Bool)

(declare-datatypes ((C!14306 0))(
  ( (C!14307 (val!8395 Int)) )
))
(declare-datatypes ((Regex!7074 0))(
  ( (ElementMatch!7074 (c!383838 C!14306)) (Concat!11710 (regOne!14660 Regex!7074) (regTwo!14660 Regex!7074)) (EmptyExpr!7074) (Star!7074 (reg!7403 Regex!7074)) (EmptyLang!7074) (Union!7074 (regOne!14661 Regex!7074) (regTwo!14661 Regex!7074)) )
))
(declare-fun lt!873365 () Regex!7074)

(declare-datatypes ((List!28386 0))(
  ( (Nil!28288) (Cons!28288 (h!33689 C!14306) (t!208363 List!28386)) )
))
(declare-fun s!9460 () List!28386)

(declare-fun matchR!3191 (Regex!7074 List!28386) Bool)

(assert (=> b!2409587 (= e!1534123 (matchR!3191 lt!873365 s!9460))))

(declare-fun b!2409588 () Bool)

(declare-fun e!1534124 () Bool)

(declare-fun tp!766689 () Bool)

(declare-fun tp!766691 () Bool)

(assert (=> b!2409588 (= e!1534124 (and tp!766689 tp!766691))))

(declare-fun b!2409589 () Bool)

(declare-fun e!1534118 () Bool)

(declare-fun e!1534120 () Bool)

(assert (=> b!2409589 (= e!1534118 (not e!1534120))))

(declare-fun res!1023344 () Bool)

(assert (=> b!2409589 (=> res!1023344 e!1534120)))

(declare-fun r!13927 () Regex!7074)

(assert (=> b!2409589 (= res!1023344 (or (is-Concat!11710 r!13927) (is-EmptyExpr!7074 r!13927)))))

(declare-fun matchRSpec!923 (Regex!7074 List!28386) Bool)

(assert (=> b!2409589 (= (matchR!3191 r!13927 s!9460) (matchRSpec!923 r!13927 s!9460))))

(declare-datatypes ((Unit!41419 0))(
  ( (Unit!41420) )
))
(declare-fun lt!873368 () Unit!41419)

(declare-fun mainMatchTheorem!923 (Regex!7074 List!28386) Unit!41419)

(assert (=> b!2409589 (= lt!873368 (mainMatchTheorem!923 r!13927 s!9460))))

(declare-fun b!2409590 () Bool)

(declare-fun e!1534121 () Bool)

(declare-fun tp_is_empty!11561 () Bool)

(declare-fun tp!766686 () Bool)

(assert (=> b!2409590 (= e!1534121 (and tp_is_empty!11561 tp!766686))))

(declare-fun b!2409591 () Bool)

(declare-fun res!1023342 () Bool)

(assert (=> b!2409591 (=> (not res!1023342) (not e!1534118))))

(declare-datatypes ((List!28387 0))(
  ( (Nil!28289) (Cons!28289 (h!33690 Regex!7074) (t!208364 List!28387)) )
))
(declare-fun l!9164 () List!28387)

(declare-fun generalisedConcat!175 (List!28387) Regex!7074)

(assert (=> b!2409591 (= res!1023342 (= r!13927 (generalisedConcat!175 l!9164)))))

(declare-fun b!2409592 () Bool)

(declare-fun res!1023343 () Bool)

(declare-fun e!1534122 () Bool)

(assert (=> b!2409592 (=> res!1023343 e!1534122)))

(declare-fun lt!873364 () List!28387)

(assert (=> b!2409592 (= res!1023343 (not (= (generalisedConcat!175 lt!873364) EmptyExpr!7074)))))

(declare-fun b!2409593 () Bool)

(declare-fun e!1534117 () Bool)

(assert (=> b!2409593 (= e!1534122 e!1534117)))

(declare-fun res!1023345 () Bool)

(assert (=> b!2409593 (=> res!1023345 e!1534117)))

(declare-fun lt!873366 () Regex!7074)

(assert (=> b!2409593 (= res!1023345 (not (matchR!3191 lt!873366 s!9460)))))

(declare-fun head!5367 (List!28387) Regex!7074)

(assert (=> b!2409593 (= lt!873366 (head!5367 l!9164))))

(declare-fun b!2409594 () Bool)

(declare-fun e!1534119 () Bool)

(assert (=> b!2409594 (= e!1534119 tp_is_empty!11561)))

(declare-fun b!2409595 () Bool)

(assert (=> b!2409595 (= e!1534117 (not (= l!9164 Nil!28289)))))

(declare-datatypes ((tuple2!27944 0))(
  ( (tuple2!27945 (_1!16513 List!28386) (_2!16513 List!28386)) )
))
(declare-datatypes ((Option!5583 0))(
  ( (None!5582) (Some!5582 (v!30990 tuple2!27944)) )
))
(declare-fun isDefined!4411 (Option!5583) Bool)

(declare-fun findConcatSeparation!691 (Regex!7074 Regex!7074 List!28386 List!28386 List!28386) Option!5583)

(assert (=> b!2409595 (isDefined!4411 (findConcatSeparation!691 lt!873366 EmptyExpr!7074 Nil!28288 s!9460 s!9460))))

(declare-fun lt!873363 () Unit!41419)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!47 (Regex!7074 Regex!7074 List!28386) Unit!41419)

(assert (=> b!2409595 (= lt!873363 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!47 lt!873366 EmptyExpr!7074 s!9460))))

(assert (=> b!2409595 e!1534123))

(declare-fun res!1023347 () Bool)

(assert (=> b!2409595 (=> (not res!1023347) (not e!1534123))))

(declare-fun ++!7003 (List!28386 List!28386) List!28386)

(assert (=> b!2409595 (= res!1023347 (matchR!3191 lt!873365 (++!7003 s!9460 Nil!28288)))))

(assert (=> b!2409595 (= lt!873365 (Concat!11710 lt!873366 EmptyExpr!7074))))

(declare-fun lt!873367 () Unit!41419)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!73 (Regex!7074 Regex!7074 List!28386 List!28386) Unit!41419)

(assert (=> b!2409595 (= lt!873367 (lemmaTwoRegexMatchThenConcatMatchesConcatString!73 lt!873366 EmptyExpr!7074 s!9460 Nil!28288))))

(declare-fun b!2409596 () Bool)

(assert (=> b!2409596 (= e!1534120 e!1534122)))

(declare-fun res!1023348 () Bool)

(assert (=> b!2409596 (=> res!1023348 e!1534122)))

(declare-fun isEmpty!16289 (List!28387) Bool)

(assert (=> b!2409596 (= res!1023348 (not (isEmpty!16289 lt!873364)))))

(declare-fun tail!3639 (List!28387) List!28387)

(assert (=> b!2409596 (= lt!873364 (tail!3639 l!9164))))

(declare-fun b!2409597 () Bool)

(declare-fun res!1023346 () Bool)

(assert (=> b!2409597 (=> res!1023346 e!1534120)))

(assert (=> b!2409597 (= res!1023346 (isEmpty!16289 l!9164))))

(declare-fun res!1023341 () Bool)

(assert (=> start!236154 (=> (not res!1023341) (not e!1534118))))

(declare-fun lambda!90694 () Int)

(declare-fun forall!5708 (List!28387 Int) Bool)

(assert (=> start!236154 (= res!1023341 (forall!5708 l!9164 lambda!90694))))

(assert (=> start!236154 e!1534118))

(assert (=> start!236154 e!1534124))

(assert (=> start!236154 e!1534119))

(assert (=> start!236154 e!1534121))

(declare-fun b!2409598 () Bool)

(declare-fun tp!766688 () Bool)

(assert (=> b!2409598 (= e!1534119 tp!766688)))

(declare-fun b!2409599 () Bool)

(declare-fun tp!766692 () Bool)

(declare-fun tp!766687 () Bool)

(assert (=> b!2409599 (= e!1534119 (and tp!766692 tp!766687))))

(declare-fun b!2409600 () Bool)

(declare-fun tp!766693 () Bool)

(declare-fun tp!766690 () Bool)

(assert (=> b!2409600 (= e!1534119 (and tp!766693 tp!766690))))

(assert (= (and start!236154 res!1023341) b!2409591))

(assert (= (and b!2409591 res!1023342) b!2409589))

(assert (= (and b!2409589 (not res!1023344)) b!2409597))

(assert (= (and b!2409597 (not res!1023346)) b!2409596))

(assert (= (and b!2409596 (not res!1023348)) b!2409592))

(assert (= (and b!2409592 (not res!1023343)) b!2409593))

(assert (= (and b!2409593 (not res!1023345)) b!2409595))

(assert (= (and b!2409595 res!1023347) b!2409587))

(assert (= (and start!236154 (is-Cons!28289 l!9164)) b!2409588))

(assert (= (and start!236154 (is-ElementMatch!7074 r!13927)) b!2409594))

(assert (= (and start!236154 (is-Concat!11710 r!13927)) b!2409599))

(assert (= (and start!236154 (is-Star!7074 r!13927)) b!2409598))

(assert (= (and start!236154 (is-Union!7074 r!13927)) b!2409600))

(assert (= (and start!236154 (is-Cons!28288 s!9460)) b!2409590))

(declare-fun m!2801487 () Bool)

(assert (=> b!2409592 m!2801487))

(declare-fun m!2801489 () Bool)

(assert (=> b!2409589 m!2801489))

(declare-fun m!2801491 () Bool)

(assert (=> b!2409589 m!2801491))

(declare-fun m!2801493 () Bool)

(assert (=> b!2409589 m!2801493))

(declare-fun m!2801495 () Bool)

(assert (=> start!236154 m!2801495))

(declare-fun m!2801497 () Bool)

(assert (=> b!2409596 m!2801497))

(declare-fun m!2801499 () Bool)

(assert (=> b!2409596 m!2801499))

(declare-fun m!2801501 () Bool)

(assert (=> b!2409597 m!2801501))

(declare-fun m!2801503 () Bool)

(assert (=> b!2409587 m!2801503))

(declare-fun m!2801505 () Bool)

(assert (=> b!2409593 m!2801505))

(declare-fun m!2801507 () Bool)

(assert (=> b!2409593 m!2801507))

(declare-fun m!2801509 () Bool)

(assert (=> b!2409591 m!2801509))

(declare-fun m!2801511 () Bool)

(assert (=> b!2409595 m!2801511))

(declare-fun m!2801513 () Bool)

(assert (=> b!2409595 m!2801513))

(declare-fun m!2801515 () Bool)

(assert (=> b!2409595 m!2801515))

(declare-fun m!2801517 () Bool)

(assert (=> b!2409595 m!2801517))

(declare-fun m!2801519 () Bool)

(assert (=> b!2409595 m!2801519))

(assert (=> b!2409595 m!2801515))

(declare-fun m!2801521 () Bool)

(assert (=> b!2409595 m!2801521))

(assert (=> b!2409595 m!2801517))

(push 1)

(assert (not b!2409590))

(assert (not b!2409598))

(assert (not b!2409600))

(assert (not b!2409587))

(assert (not b!2409592))

(assert (not b!2409597))

(assert (not b!2409591))

(assert (not b!2409595))

(assert (not b!2409588))

(assert (not b!2409593))

(assert tp_is_empty!11561)

(assert (not start!236154))

(assert (not b!2409589))

(assert (not b!2409599))

(assert (not b!2409596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700452 () Bool)

(declare-fun res!1023377 () Bool)

(declare-fun e!1534153 () Bool)

(assert (=> d!700452 (=> res!1023377 e!1534153)))

(assert (=> d!700452 (= res!1023377 (is-Nil!28289 l!9164))))

(assert (=> d!700452 (= (forall!5708 l!9164 lambda!90694) e!1534153)))

(declare-fun b!2409647 () Bool)

(declare-fun e!1534154 () Bool)

(assert (=> b!2409647 (= e!1534153 e!1534154)))

(declare-fun res!1023378 () Bool)

(assert (=> b!2409647 (=> (not res!1023378) (not e!1534154))))

(declare-fun dynLambda!12179 (Int Regex!7074) Bool)

(assert (=> b!2409647 (= res!1023378 (dynLambda!12179 lambda!90694 (h!33690 l!9164)))))

(declare-fun b!2409648 () Bool)

(assert (=> b!2409648 (= e!1534154 (forall!5708 (t!208364 l!9164) lambda!90694))))

(assert (= (and d!700452 (not res!1023377)) b!2409647))

(assert (= (and b!2409647 res!1023378) b!2409648))

(declare-fun b_lambda!74475 () Bool)

(assert (=> (not b_lambda!74475) (not b!2409647)))

(declare-fun m!2801563 () Bool)

(assert (=> b!2409647 m!2801563))

(declare-fun m!2801565 () Bool)

(assert (=> b!2409648 m!2801565))

(assert (=> start!236154 d!700452))

(declare-fun bs!463392 () Bool)

(declare-fun d!700456 () Bool)

(assert (= bs!463392 (and d!700456 start!236154)))

(declare-fun lambda!90700 () Int)

(assert (=> bs!463392 (= lambda!90700 lambda!90694)))

(declare-fun b!2409681 () Bool)

(declare-fun e!1534178 () Regex!7074)

(assert (=> b!2409681 (= e!1534178 EmptyExpr!7074)))

(declare-fun b!2409683 () Bool)

(declare-fun e!1534173 () Regex!7074)

(assert (=> b!2409683 (= e!1534173 (h!33690 l!9164))))

(declare-fun b!2409684 () Bool)

(assert (=> b!2409684 (= e!1534178 (Concat!11710 (h!33690 l!9164) (generalisedConcat!175 (t!208364 l!9164))))))

(declare-fun b!2409685 () Bool)

(declare-fun e!1534174 () Bool)

(declare-fun e!1534176 () Bool)

(assert (=> b!2409685 (= e!1534174 e!1534176)))

(declare-fun c!383853 () Bool)

(assert (=> b!2409685 (= c!383853 (isEmpty!16289 (tail!3639 l!9164)))))

(declare-fun b!2409686 () Bool)

(declare-fun lt!873395 () Regex!7074)

(declare-fun isConcat!135 (Regex!7074) Bool)

(assert (=> b!2409686 (= e!1534176 (isConcat!135 lt!873395))))

(declare-fun b!2409687 () Bool)

(assert (=> b!2409687 (= e!1534173 e!1534178)))

(declare-fun c!383854 () Bool)

(assert (=> b!2409687 (= c!383854 (is-Cons!28289 l!9164))))

(declare-fun b!2409688 () Bool)

(assert (=> b!2409688 (= e!1534176 (= lt!873395 (head!5367 l!9164)))))

(declare-fun b!2409682 () Bool)

(declare-fun e!1534175 () Bool)

(assert (=> b!2409682 (= e!1534175 (isEmpty!16289 (t!208364 l!9164)))))

(declare-fun e!1534177 () Bool)

(assert (=> d!700456 e!1534177))

(declare-fun res!1023390 () Bool)

(assert (=> d!700456 (=> (not res!1023390) (not e!1534177))))

(declare-fun validRegex!2796 (Regex!7074) Bool)

(assert (=> d!700456 (= res!1023390 (validRegex!2796 lt!873395))))

(assert (=> d!700456 (= lt!873395 e!1534173)))

(declare-fun c!383851 () Bool)

(assert (=> d!700456 (= c!383851 e!1534175)))

(declare-fun res!1023389 () Bool)

(assert (=> d!700456 (=> (not res!1023389) (not e!1534175))))

(assert (=> d!700456 (= res!1023389 (is-Cons!28289 l!9164))))

(assert (=> d!700456 (forall!5708 l!9164 lambda!90700)))

(assert (=> d!700456 (= (generalisedConcat!175 l!9164) lt!873395)))

(declare-fun b!2409689 () Bool)

(declare-fun isEmptyExpr!135 (Regex!7074) Bool)

(assert (=> b!2409689 (= e!1534174 (isEmptyExpr!135 lt!873395))))

(declare-fun b!2409690 () Bool)

(assert (=> b!2409690 (= e!1534177 e!1534174)))

(declare-fun c!383852 () Bool)

(assert (=> b!2409690 (= c!383852 (isEmpty!16289 l!9164))))

(assert (= (and d!700456 res!1023389) b!2409682))

(assert (= (and d!700456 c!383851) b!2409683))

(assert (= (and d!700456 (not c!383851)) b!2409687))

(assert (= (and b!2409687 c!383854) b!2409684))

(assert (= (and b!2409687 (not c!383854)) b!2409681))

(assert (= (and d!700456 res!1023390) b!2409690))

(assert (= (and b!2409690 c!383852) b!2409689))

(assert (= (and b!2409690 (not c!383852)) b!2409685))

(assert (= (and b!2409685 c!383853) b!2409688))

(assert (= (and b!2409685 (not c!383853)) b!2409686))

(declare-fun m!2801583 () Bool)

(assert (=> b!2409684 m!2801583))

(assert (=> b!2409685 m!2801499))

(assert (=> b!2409685 m!2801499))

(declare-fun m!2801585 () Bool)

(assert (=> b!2409685 m!2801585))

(declare-fun m!2801587 () Bool)

(assert (=> b!2409686 m!2801587))

(declare-fun m!2801589 () Bool)

(assert (=> b!2409682 m!2801589))

(declare-fun m!2801591 () Bool)

(assert (=> d!700456 m!2801591))

(declare-fun m!2801593 () Bool)

(assert (=> d!700456 m!2801593))

(assert (=> b!2409688 m!2801507))

(assert (=> b!2409690 m!2801501))

(declare-fun m!2801595 () Bool)

(assert (=> b!2409689 m!2801595))

(assert (=> b!2409591 d!700456))

(declare-fun d!700462 () Bool)

(assert (=> d!700462 (= (isEmpty!16289 l!9164) (is-Nil!28289 l!9164))))

(assert (=> b!2409597 d!700462))

(declare-fun bs!463394 () Bool)

(declare-fun d!700464 () Bool)

(assert (= bs!463394 (and d!700464 start!236154)))

(declare-fun lambda!90701 () Int)

(assert (=> bs!463394 (= lambda!90701 lambda!90694)))

(declare-fun bs!463395 () Bool)

(assert (= bs!463395 (and d!700464 d!700456)))

(assert (=> bs!463395 (= lambda!90701 lambda!90700)))

(declare-fun b!2409691 () Bool)

(declare-fun e!1534184 () Regex!7074)

(assert (=> b!2409691 (= e!1534184 EmptyExpr!7074)))

(declare-fun b!2409693 () Bool)

(declare-fun e!1534179 () Regex!7074)

(assert (=> b!2409693 (= e!1534179 (h!33690 lt!873364))))

(declare-fun b!2409694 () Bool)

(assert (=> b!2409694 (= e!1534184 (Concat!11710 (h!33690 lt!873364) (generalisedConcat!175 (t!208364 lt!873364))))))

(declare-fun b!2409695 () Bool)

(declare-fun e!1534180 () Bool)

(declare-fun e!1534182 () Bool)

(assert (=> b!2409695 (= e!1534180 e!1534182)))

(declare-fun c!383857 () Bool)

(assert (=> b!2409695 (= c!383857 (isEmpty!16289 (tail!3639 lt!873364)))))

(declare-fun b!2409696 () Bool)

(declare-fun lt!873396 () Regex!7074)

(assert (=> b!2409696 (= e!1534182 (isConcat!135 lt!873396))))

(declare-fun b!2409697 () Bool)

(assert (=> b!2409697 (= e!1534179 e!1534184)))

(declare-fun c!383858 () Bool)

(assert (=> b!2409697 (= c!383858 (is-Cons!28289 lt!873364))))

(declare-fun b!2409698 () Bool)

(assert (=> b!2409698 (= e!1534182 (= lt!873396 (head!5367 lt!873364)))))

(declare-fun b!2409692 () Bool)

(declare-fun e!1534181 () Bool)

(assert (=> b!2409692 (= e!1534181 (isEmpty!16289 (t!208364 lt!873364)))))

(declare-fun e!1534183 () Bool)

(assert (=> d!700464 e!1534183))

(declare-fun res!1023392 () Bool)

(assert (=> d!700464 (=> (not res!1023392) (not e!1534183))))

(assert (=> d!700464 (= res!1023392 (validRegex!2796 lt!873396))))

(assert (=> d!700464 (= lt!873396 e!1534179)))

(declare-fun c!383855 () Bool)

(assert (=> d!700464 (= c!383855 e!1534181)))

(declare-fun res!1023391 () Bool)

(assert (=> d!700464 (=> (not res!1023391) (not e!1534181))))

(assert (=> d!700464 (= res!1023391 (is-Cons!28289 lt!873364))))

(assert (=> d!700464 (forall!5708 lt!873364 lambda!90701)))

(assert (=> d!700464 (= (generalisedConcat!175 lt!873364) lt!873396)))

(declare-fun b!2409699 () Bool)

(assert (=> b!2409699 (= e!1534180 (isEmptyExpr!135 lt!873396))))

(declare-fun b!2409700 () Bool)

(assert (=> b!2409700 (= e!1534183 e!1534180)))

(declare-fun c!383856 () Bool)

(assert (=> b!2409700 (= c!383856 (isEmpty!16289 lt!873364))))

(assert (= (and d!700464 res!1023391) b!2409692))

(assert (= (and d!700464 c!383855) b!2409693))

(assert (= (and d!700464 (not c!383855)) b!2409697))

(assert (= (and b!2409697 c!383858) b!2409694))

(assert (= (and b!2409697 (not c!383858)) b!2409691))

(assert (= (and d!700464 res!1023392) b!2409700))

(assert (= (and b!2409700 c!383856) b!2409699))

(assert (= (and b!2409700 (not c!383856)) b!2409695))

(assert (= (and b!2409695 c!383857) b!2409698))

(assert (= (and b!2409695 (not c!383857)) b!2409696))

(declare-fun m!2801597 () Bool)

(assert (=> b!2409694 m!2801597))

(declare-fun m!2801599 () Bool)

(assert (=> b!2409695 m!2801599))

(assert (=> b!2409695 m!2801599))

(declare-fun m!2801601 () Bool)

(assert (=> b!2409695 m!2801601))

(declare-fun m!2801603 () Bool)

(assert (=> b!2409696 m!2801603))

(declare-fun m!2801605 () Bool)

(assert (=> b!2409692 m!2801605))

(declare-fun m!2801607 () Bool)

(assert (=> d!700464 m!2801607))

(declare-fun m!2801609 () Bool)

(assert (=> d!700464 m!2801609))

(declare-fun m!2801611 () Bool)

(assert (=> b!2409698 m!2801611))

(assert (=> b!2409700 m!2801497))

(declare-fun m!2801613 () Bool)

(assert (=> b!2409699 m!2801613))

(assert (=> b!2409592 d!700464))

(declare-fun b!2409732 () Bool)

(declare-fun e!1534202 () Bool)

(declare-fun head!5369 (List!28386) C!14306)

(assert (=> b!2409732 (= e!1534202 (= (head!5369 s!9460) (c!383838 lt!873365)))))

(declare-fun b!2409733 () Bool)

(declare-fun e!1534203 () Bool)

(declare-fun lt!873402 () Bool)

(declare-fun call!147171 () Bool)

(assert (=> b!2409733 (= e!1534203 (= lt!873402 call!147171))))

(declare-fun b!2409734 () Bool)

(declare-fun res!1023414 () Bool)

(assert (=> b!2409734 (=> (not res!1023414) (not e!1534202))))

(assert (=> b!2409734 (= res!1023414 (not call!147171))))

(declare-fun bm!147166 () Bool)

(declare-fun isEmpty!16291 (List!28386) Bool)

(assert (=> bm!147166 (= call!147171 (isEmpty!16291 s!9460))))

(declare-fun b!2409735 () Bool)

(declare-fun e!1534204 () Bool)

(assert (=> b!2409735 (= e!1534204 (not (= (head!5369 s!9460) (c!383838 lt!873365))))))

(declare-fun d!700466 () Bool)

(assert (=> d!700466 e!1534203))

(declare-fun c!383867 () Bool)

(assert (=> d!700466 (= c!383867 (is-EmptyExpr!7074 lt!873365))))

(declare-fun e!1534208 () Bool)

(assert (=> d!700466 (= lt!873402 e!1534208)))

(declare-fun c!383866 () Bool)

(assert (=> d!700466 (= c!383866 (isEmpty!16291 s!9460))))

(assert (=> d!700466 (validRegex!2796 lt!873365)))

(assert (=> d!700466 (= (matchR!3191 lt!873365 s!9460) lt!873402)))

(declare-fun b!2409736 () Bool)

(declare-fun e!1534206 () Bool)

(assert (=> b!2409736 (= e!1534203 e!1534206)))

(declare-fun c!383865 () Bool)

(assert (=> b!2409736 (= c!383865 (is-EmptyLang!7074 lt!873365))))

(declare-fun b!2409737 () Bool)

(assert (=> b!2409737 (= e!1534206 (not lt!873402))))

(declare-fun b!2409738 () Bool)

(declare-fun res!1023412 () Bool)

(declare-fun e!1534207 () Bool)

(assert (=> b!2409738 (=> res!1023412 e!1534207)))

(assert (=> b!2409738 (= res!1023412 e!1534202)))

(declare-fun res!1023417 () Bool)

(assert (=> b!2409738 (=> (not res!1023417) (not e!1534202))))

(assert (=> b!2409738 (= res!1023417 lt!873402)))

(declare-fun b!2409739 () Bool)

(declare-fun res!1023416 () Bool)

(assert (=> b!2409739 (=> (not res!1023416) (not e!1534202))))

(declare-fun tail!3641 (List!28386) List!28386)

(assert (=> b!2409739 (= res!1023416 (isEmpty!16291 (tail!3641 s!9460)))))

(declare-fun b!2409740 () Bool)

(declare-fun derivativeStep!1773 (Regex!7074 C!14306) Regex!7074)

(assert (=> b!2409740 (= e!1534208 (matchR!3191 (derivativeStep!1773 lt!873365 (head!5369 s!9460)) (tail!3641 s!9460)))))

(declare-fun b!2409741 () Bool)

(declare-fun e!1534205 () Bool)

(assert (=> b!2409741 (= e!1534207 e!1534205)))

(declare-fun res!1023418 () Bool)

(assert (=> b!2409741 (=> (not res!1023418) (not e!1534205))))

(assert (=> b!2409741 (= res!1023418 (not lt!873402))))

(declare-fun b!2409742 () Bool)

(declare-fun res!1023419 () Bool)

(assert (=> b!2409742 (=> res!1023419 e!1534204)))

(assert (=> b!2409742 (= res!1023419 (not (isEmpty!16291 (tail!3641 s!9460))))))

(declare-fun b!2409743 () Bool)

(assert (=> b!2409743 (= e!1534205 e!1534204)))

(declare-fun res!1023413 () Bool)

(assert (=> b!2409743 (=> res!1023413 e!1534204)))

(assert (=> b!2409743 (= res!1023413 call!147171)))

(declare-fun b!2409744 () Bool)

(declare-fun nullable!2116 (Regex!7074) Bool)

(assert (=> b!2409744 (= e!1534208 (nullable!2116 lt!873365))))

(declare-fun b!2409745 () Bool)

(declare-fun res!1023415 () Bool)

(assert (=> b!2409745 (=> res!1023415 e!1534207)))

(assert (=> b!2409745 (= res!1023415 (not (is-ElementMatch!7074 lt!873365)))))

(assert (=> b!2409745 (= e!1534206 e!1534207)))

(assert (= (and d!700466 c!383866) b!2409744))

(assert (= (and d!700466 (not c!383866)) b!2409740))

(assert (= (and d!700466 c!383867) b!2409733))

(assert (= (and d!700466 (not c!383867)) b!2409736))

(assert (= (and b!2409736 c!383865) b!2409737))

(assert (= (and b!2409736 (not c!383865)) b!2409745))

(assert (= (and b!2409745 (not res!1023415)) b!2409738))

(assert (= (and b!2409738 res!1023417) b!2409734))

(assert (= (and b!2409734 res!1023414) b!2409739))

(assert (= (and b!2409739 res!1023416) b!2409732))

(assert (= (and b!2409738 (not res!1023412)) b!2409741))

(assert (= (and b!2409741 res!1023418) b!2409743))

(assert (= (and b!2409743 (not res!1023413)) b!2409742))

(assert (= (and b!2409742 (not res!1023419)) b!2409735))

(assert (= (or b!2409733 b!2409734 b!2409743) bm!147166))

(declare-fun m!2801621 () Bool)

(assert (=> b!2409739 m!2801621))

(assert (=> b!2409739 m!2801621))

(declare-fun m!2801623 () Bool)

(assert (=> b!2409739 m!2801623))

(declare-fun m!2801625 () Bool)

(assert (=> d!700466 m!2801625))

(declare-fun m!2801627 () Bool)

(assert (=> d!700466 m!2801627))

(declare-fun m!2801629 () Bool)

(assert (=> b!2409740 m!2801629))

(assert (=> b!2409740 m!2801629))

(declare-fun m!2801631 () Bool)

(assert (=> b!2409740 m!2801631))

(assert (=> b!2409740 m!2801621))

(assert (=> b!2409740 m!2801631))

(assert (=> b!2409740 m!2801621))

(declare-fun m!2801633 () Bool)

(assert (=> b!2409740 m!2801633))

(assert (=> b!2409742 m!2801621))

(assert (=> b!2409742 m!2801621))

(assert (=> b!2409742 m!2801623))

(assert (=> b!2409732 m!2801629))

(declare-fun m!2801635 () Bool)

(assert (=> b!2409744 m!2801635))

(assert (=> bm!147166 m!2801625))

(assert (=> b!2409735 m!2801629))

(assert (=> b!2409587 d!700466))

(declare-fun b!2409746 () Bool)

(declare-fun e!1534209 () Bool)

(assert (=> b!2409746 (= e!1534209 (= (head!5369 s!9460) (c!383838 lt!873366)))))

(declare-fun b!2409747 () Bool)

(declare-fun e!1534210 () Bool)

(declare-fun lt!873403 () Bool)

(declare-fun call!147172 () Bool)

(assert (=> b!2409747 (= e!1534210 (= lt!873403 call!147172))))

(declare-fun b!2409748 () Bool)

(declare-fun res!1023422 () Bool)

(assert (=> b!2409748 (=> (not res!1023422) (not e!1534209))))

(assert (=> b!2409748 (= res!1023422 (not call!147172))))

(declare-fun bm!147167 () Bool)

(assert (=> bm!147167 (= call!147172 (isEmpty!16291 s!9460))))

(declare-fun b!2409749 () Bool)

(declare-fun e!1534211 () Bool)

(assert (=> b!2409749 (= e!1534211 (not (= (head!5369 s!9460) (c!383838 lt!873366))))))

(declare-fun d!700470 () Bool)

(assert (=> d!700470 e!1534210))

(declare-fun c!383870 () Bool)

(assert (=> d!700470 (= c!383870 (is-EmptyExpr!7074 lt!873366))))

(declare-fun e!1534215 () Bool)

(assert (=> d!700470 (= lt!873403 e!1534215)))

(declare-fun c!383869 () Bool)

(assert (=> d!700470 (= c!383869 (isEmpty!16291 s!9460))))

(assert (=> d!700470 (validRegex!2796 lt!873366)))

(assert (=> d!700470 (= (matchR!3191 lt!873366 s!9460) lt!873403)))

(declare-fun b!2409750 () Bool)

(declare-fun e!1534213 () Bool)

(assert (=> b!2409750 (= e!1534210 e!1534213)))

(declare-fun c!383868 () Bool)

(assert (=> b!2409750 (= c!383868 (is-EmptyLang!7074 lt!873366))))

(declare-fun b!2409751 () Bool)

(assert (=> b!2409751 (= e!1534213 (not lt!873403))))

(declare-fun b!2409752 () Bool)

(declare-fun res!1023420 () Bool)

(declare-fun e!1534214 () Bool)

(assert (=> b!2409752 (=> res!1023420 e!1534214)))

(assert (=> b!2409752 (= res!1023420 e!1534209)))

(declare-fun res!1023425 () Bool)

(assert (=> b!2409752 (=> (not res!1023425) (not e!1534209))))

(assert (=> b!2409752 (= res!1023425 lt!873403)))

(declare-fun b!2409753 () Bool)

(declare-fun res!1023424 () Bool)

(assert (=> b!2409753 (=> (not res!1023424) (not e!1534209))))

(assert (=> b!2409753 (= res!1023424 (isEmpty!16291 (tail!3641 s!9460)))))

(declare-fun b!2409754 () Bool)

(assert (=> b!2409754 (= e!1534215 (matchR!3191 (derivativeStep!1773 lt!873366 (head!5369 s!9460)) (tail!3641 s!9460)))))

(declare-fun b!2409755 () Bool)

(declare-fun e!1534212 () Bool)

(assert (=> b!2409755 (= e!1534214 e!1534212)))

(declare-fun res!1023426 () Bool)

(assert (=> b!2409755 (=> (not res!1023426) (not e!1534212))))

(assert (=> b!2409755 (= res!1023426 (not lt!873403))))

(declare-fun b!2409756 () Bool)

(declare-fun res!1023427 () Bool)

(assert (=> b!2409756 (=> res!1023427 e!1534211)))

(assert (=> b!2409756 (= res!1023427 (not (isEmpty!16291 (tail!3641 s!9460))))))

(declare-fun b!2409757 () Bool)

(assert (=> b!2409757 (= e!1534212 e!1534211)))

(declare-fun res!1023421 () Bool)

(assert (=> b!2409757 (=> res!1023421 e!1534211)))

(assert (=> b!2409757 (= res!1023421 call!147172)))

(declare-fun b!2409758 () Bool)

(assert (=> b!2409758 (= e!1534215 (nullable!2116 lt!873366))))

(declare-fun b!2409759 () Bool)

(declare-fun res!1023423 () Bool)

(assert (=> b!2409759 (=> res!1023423 e!1534214)))

(assert (=> b!2409759 (= res!1023423 (not (is-ElementMatch!7074 lt!873366)))))

(assert (=> b!2409759 (= e!1534213 e!1534214)))

(assert (= (and d!700470 c!383869) b!2409758))

(assert (= (and d!700470 (not c!383869)) b!2409754))

(assert (= (and d!700470 c!383870) b!2409747))

(assert (= (and d!700470 (not c!383870)) b!2409750))

(assert (= (and b!2409750 c!383868) b!2409751))

(assert (= (and b!2409750 (not c!383868)) b!2409759))

(assert (= (and b!2409759 (not res!1023423)) b!2409752))

(assert (= (and b!2409752 res!1023425) b!2409748))

(assert (= (and b!2409748 res!1023422) b!2409753))

(assert (= (and b!2409753 res!1023424) b!2409746))

(assert (= (and b!2409752 (not res!1023420)) b!2409755))

(assert (= (and b!2409755 res!1023426) b!2409757))

(assert (= (and b!2409757 (not res!1023421)) b!2409756))

(assert (= (and b!2409756 (not res!1023427)) b!2409749))

(assert (= (or b!2409747 b!2409748 b!2409757) bm!147167))

(assert (=> b!2409753 m!2801621))

(assert (=> b!2409753 m!2801621))

(assert (=> b!2409753 m!2801623))

(assert (=> d!700470 m!2801625))

(declare-fun m!2801637 () Bool)

(assert (=> d!700470 m!2801637))

(assert (=> b!2409754 m!2801629))

(assert (=> b!2409754 m!2801629))

(declare-fun m!2801639 () Bool)

(assert (=> b!2409754 m!2801639))

(assert (=> b!2409754 m!2801621))

(assert (=> b!2409754 m!2801639))

(assert (=> b!2409754 m!2801621))

(declare-fun m!2801641 () Bool)

(assert (=> b!2409754 m!2801641))

(assert (=> b!2409756 m!2801621))

(assert (=> b!2409756 m!2801621))

(assert (=> b!2409756 m!2801623))

(assert (=> b!2409746 m!2801629))

(declare-fun m!2801643 () Bool)

(assert (=> b!2409758 m!2801643))

(assert (=> bm!147167 m!2801625))

(assert (=> b!2409749 m!2801629))

(assert (=> b!2409593 d!700470))

(declare-fun d!700472 () Bool)

(assert (=> d!700472 (= (head!5367 l!9164) (h!33690 l!9164))))

(assert (=> b!2409593 d!700472))

(declare-fun b!2409760 () Bool)

(declare-fun e!1534216 () Bool)

(assert (=> b!2409760 (= e!1534216 (= (head!5369 s!9460) (c!383838 r!13927)))))

(declare-fun b!2409761 () Bool)

(declare-fun e!1534217 () Bool)

(declare-fun lt!873404 () Bool)

(declare-fun call!147173 () Bool)

(assert (=> b!2409761 (= e!1534217 (= lt!873404 call!147173))))

(declare-fun b!2409762 () Bool)

(declare-fun res!1023430 () Bool)

(assert (=> b!2409762 (=> (not res!1023430) (not e!1534216))))

(assert (=> b!2409762 (= res!1023430 (not call!147173))))

(declare-fun bm!147168 () Bool)

(assert (=> bm!147168 (= call!147173 (isEmpty!16291 s!9460))))

(declare-fun b!2409763 () Bool)

(declare-fun e!1534218 () Bool)

(assert (=> b!2409763 (= e!1534218 (not (= (head!5369 s!9460) (c!383838 r!13927))))))

(declare-fun d!700474 () Bool)

(assert (=> d!700474 e!1534217))

(declare-fun c!383873 () Bool)

(assert (=> d!700474 (= c!383873 (is-EmptyExpr!7074 r!13927))))

(declare-fun e!1534222 () Bool)

(assert (=> d!700474 (= lt!873404 e!1534222)))

(declare-fun c!383872 () Bool)

(assert (=> d!700474 (= c!383872 (isEmpty!16291 s!9460))))

(assert (=> d!700474 (validRegex!2796 r!13927)))

(assert (=> d!700474 (= (matchR!3191 r!13927 s!9460) lt!873404)))

(declare-fun b!2409764 () Bool)

(declare-fun e!1534220 () Bool)

(assert (=> b!2409764 (= e!1534217 e!1534220)))

(declare-fun c!383871 () Bool)

(assert (=> b!2409764 (= c!383871 (is-EmptyLang!7074 r!13927))))

(declare-fun b!2409765 () Bool)

(assert (=> b!2409765 (= e!1534220 (not lt!873404))))

(declare-fun b!2409766 () Bool)

(declare-fun res!1023428 () Bool)

(declare-fun e!1534221 () Bool)

(assert (=> b!2409766 (=> res!1023428 e!1534221)))

(assert (=> b!2409766 (= res!1023428 e!1534216)))

(declare-fun res!1023433 () Bool)

(assert (=> b!2409766 (=> (not res!1023433) (not e!1534216))))

(assert (=> b!2409766 (= res!1023433 lt!873404)))

(declare-fun b!2409767 () Bool)

(declare-fun res!1023432 () Bool)

(assert (=> b!2409767 (=> (not res!1023432) (not e!1534216))))

(assert (=> b!2409767 (= res!1023432 (isEmpty!16291 (tail!3641 s!9460)))))

(declare-fun b!2409768 () Bool)

(assert (=> b!2409768 (= e!1534222 (matchR!3191 (derivativeStep!1773 r!13927 (head!5369 s!9460)) (tail!3641 s!9460)))))

(declare-fun b!2409769 () Bool)

(declare-fun e!1534219 () Bool)

(assert (=> b!2409769 (= e!1534221 e!1534219)))

(declare-fun res!1023434 () Bool)

(assert (=> b!2409769 (=> (not res!1023434) (not e!1534219))))

(assert (=> b!2409769 (= res!1023434 (not lt!873404))))

(declare-fun b!2409770 () Bool)

(declare-fun res!1023435 () Bool)

(assert (=> b!2409770 (=> res!1023435 e!1534218)))

(assert (=> b!2409770 (= res!1023435 (not (isEmpty!16291 (tail!3641 s!9460))))))

(declare-fun b!2409771 () Bool)

(assert (=> b!2409771 (= e!1534219 e!1534218)))

(declare-fun res!1023429 () Bool)

(assert (=> b!2409771 (=> res!1023429 e!1534218)))

(assert (=> b!2409771 (= res!1023429 call!147173)))

(declare-fun b!2409772 () Bool)

(assert (=> b!2409772 (= e!1534222 (nullable!2116 r!13927))))

(declare-fun b!2409773 () Bool)

(declare-fun res!1023431 () Bool)

(assert (=> b!2409773 (=> res!1023431 e!1534221)))

(assert (=> b!2409773 (= res!1023431 (not (is-ElementMatch!7074 r!13927)))))

(assert (=> b!2409773 (= e!1534220 e!1534221)))

(assert (= (and d!700474 c!383872) b!2409772))

(assert (= (and d!700474 (not c!383872)) b!2409768))

(assert (= (and d!700474 c!383873) b!2409761))

(assert (= (and d!700474 (not c!383873)) b!2409764))

(assert (= (and b!2409764 c!383871) b!2409765))

(assert (= (and b!2409764 (not c!383871)) b!2409773))

(assert (= (and b!2409773 (not res!1023431)) b!2409766))

(assert (= (and b!2409766 res!1023433) b!2409762))

(assert (= (and b!2409762 res!1023430) b!2409767))

(assert (= (and b!2409767 res!1023432) b!2409760))

(assert (= (and b!2409766 (not res!1023428)) b!2409769))

(assert (= (and b!2409769 res!1023434) b!2409771))

(assert (= (and b!2409771 (not res!1023429)) b!2409770))

(assert (= (and b!2409770 (not res!1023435)) b!2409763))

(assert (= (or b!2409761 b!2409762 b!2409771) bm!147168))

(assert (=> b!2409767 m!2801621))

(assert (=> b!2409767 m!2801621))

(assert (=> b!2409767 m!2801623))

(assert (=> d!700474 m!2801625))

(declare-fun m!2801645 () Bool)

(assert (=> d!700474 m!2801645))

(assert (=> b!2409768 m!2801629))

(assert (=> b!2409768 m!2801629))

(declare-fun m!2801647 () Bool)

(assert (=> b!2409768 m!2801647))

(assert (=> b!2409768 m!2801621))

(assert (=> b!2409768 m!2801647))

(assert (=> b!2409768 m!2801621))

(declare-fun m!2801649 () Bool)

(assert (=> b!2409768 m!2801649))

(assert (=> b!2409770 m!2801621))

(assert (=> b!2409770 m!2801621))

(assert (=> b!2409770 m!2801623))

(assert (=> b!2409760 m!2801629))

(declare-fun m!2801651 () Bool)

(assert (=> b!2409772 m!2801651))

(assert (=> bm!147168 m!2801625))

(assert (=> b!2409763 m!2801629))

(assert (=> b!2409589 d!700474))

(declare-fun b!2409857 () Bool)

(assert (=> b!2409857 true))

(assert (=> b!2409857 true))

(declare-fun bs!463396 () Bool)

(declare-fun b!2409851 () Bool)

(assert (= bs!463396 (and b!2409851 b!2409857)))

(declare-fun lambda!90707 () Int)

(declare-fun lambda!90706 () Int)

(assert (=> bs!463396 (not (= lambda!90707 lambda!90706))))

(assert (=> b!2409851 true))

(assert (=> b!2409851 true))

(declare-fun b!2409848 () Bool)

(declare-fun e!1534263 () Bool)

(assert (=> b!2409848 (= e!1534263 (matchRSpec!923 (regTwo!14661 r!13927) s!9460))))

(declare-fun b!2409849 () Bool)

(declare-fun e!1534267 () Bool)

(declare-fun call!147181 () Bool)

(assert (=> b!2409849 (= e!1534267 call!147181)))

(declare-fun b!2409850 () Bool)

(declare-fun e!1534264 () Bool)

(assert (=> b!2409850 (= e!1534264 e!1534263)))

(declare-fun res!1023476 () Bool)

(assert (=> b!2409850 (= res!1023476 (matchRSpec!923 (regOne!14661 r!13927) s!9460))))

(assert (=> b!2409850 (=> res!1023476 e!1534263)))

(declare-fun c!383893 () Bool)

(declare-fun call!147182 () Bool)

(declare-fun bm!147176 () Bool)

(declare-fun Exists!1125 (Int) Bool)

(assert (=> bm!147176 (= call!147182 (Exists!1125 (ite c!383893 lambda!90706 lambda!90707)))))

(declare-fun e!1534268 () Bool)

(assert (=> b!2409851 (= e!1534268 call!147182)))

(declare-fun b!2409852 () Bool)

(declare-fun res!1023478 () Bool)

(declare-fun e!1534262 () Bool)

(assert (=> b!2409852 (=> res!1023478 e!1534262)))

(assert (=> b!2409852 (= res!1023478 call!147181)))

(assert (=> b!2409852 (= e!1534268 e!1534262)))

(declare-fun b!2409853 () Bool)

(assert (=> b!2409853 (= e!1534264 e!1534268)))

(assert (=> b!2409853 (= c!383893 (is-Star!7074 r!13927))))

(declare-fun d!700476 () Bool)

(declare-fun c!383891 () Bool)

(assert (=> d!700476 (= c!383891 (is-EmptyExpr!7074 r!13927))))

(assert (=> d!700476 (= (matchRSpec!923 r!13927 s!9460) e!1534267)))

(declare-fun b!2409854 () Bool)

(declare-fun e!1534265 () Bool)

(assert (=> b!2409854 (= e!1534265 (= s!9460 (Cons!28288 (c!383838 r!13927) Nil!28288)))))

(declare-fun bm!147177 () Bool)

(assert (=> bm!147177 (= call!147181 (isEmpty!16291 s!9460))))

(declare-fun b!2409855 () Bool)

(declare-fun c!383892 () Bool)

(assert (=> b!2409855 (= c!383892 (is-Union!7074 r!13927))))

(assert (=> b!2409855 (= e!1534265 e!1534264)))

(declare-fun b!2409856 () Bool)

(declare-fun e!1534266 () Bool)

(assert (=> b!2409856 (= e!1534267 e!1534266)))

(declare-fun res!1023477 () Bool)

(assert (=> b!2409856 (= res!1023477 (not (is-EmptyLang!7074 r!13927)))))

(assert (=> b!2409856 (=> (not res!1023477) (not e!1534266))))

(assert (=> b!2409857 (= e!1534262 call!147182)))

(declare-fun b!2409858 () Bool)

(declare-fun c!383894 () Bool)

(assert (=> b!2409858 (= c!383894 (is-ElementMatch!7074 r!13927))))

(assert (=> b!2409858 (= e!1534266 e!1534265)))

(assert (= (and d!700476 c!383891) b!2409849))

(assert (= (and d!700476 (not c!383891)) b!2409856))

(assert (= (and b!2409856 res!1023477) b!2409858))

(assert (= (and b!2409858 c!383894) b!2409854))

(assert (= (and b!2409858 (not c!383894)) b!2409855))

(assert (= (and b!2409855 c!383892) b!2409850))

(assert (= (and b!2409855 (not c!383892)) b!2409853))

(assert (= (and b!2409850 (not res!1023476)) b!2409848))

(assert (= (and b!2409853 c!383893) b!2409852))

(assert (= (and b!2409853 (not c!383893)) b!2409851))

(assert (= (and b!2409852 (not res!1023478)) b!2409857))

(assert (= (or b!2409857 b!2409851) bm!147176))

(assert (= (or b!2409849 b!2409852) bm!147177))

(declare-fun m!2801669 () Bool)

(assert (=> b!2409848 m!2801669))

(declare-fun m!2801671 () Bool)

(assert (=> b!2409850 m!2801671))

(declare-fun m!2801673 () Bool)

(assert (=> bm!147176 m!2801673))

(assert (=> bm!147177 m!2801625))

(assert (=> b!2409589 d!700476))

(declare-fun d!700480 () Bool)

(assert (=> d!700480 (= (matchR!3191 r!13927 s!9460) (matchRSpec!923 r!13927 s!9460))))

(declare-fun lt!873410 () Unit!41419)

(declare-fun choose!14249 (Regex!7074 List!28386) Unit!41419)

(assert (=> d!700480 (= lt!873410 (choose!14249 r!13927 s!9460))))

(assert (=> d!700480 (validRegex!2796 r!13927)))

(assert (=> d!700480 (= (mainMatchTheorem!923 r!13927 s!9460) lt!873410)))

(declare-fun bs!463397 () Bool)

(assert (= bs!463397 d!700480))

(assert (=> bs!463397 m!2801489))

(assert (=> bs!463397 m!2801491))

(declare-fun m!2801675 () Bool)

(assert (=> bs!463397 m!2801675))

(assert (=> bs!463397 m!2801645))

(assert (=> b!2409589 d!700480))

(declare-fun d!700482 () Bool)

(assert (=> d!700482 (isDefined!4411 (findConcatSeparation!691 lt!873366 EmptyExpr!7074 Nil!28288 s!9460 s!9460))))

(declare-fun lt!873413 () Unit!41419)

(declare-fun choose!14250 (Regex!7074 Regex!7074 List!28386) Unit!41419)

(assert (=> d!700482 (= lt!873413 (choose!14250 lt!873366 EmptyExpr!7074 s!9460))))

(assert (=> d!700482 (validRegex!2796 lt!873366)))

(assert (=> d!700482 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!47 lt!873366 EmptyExpr!7074 s!9460) lt!873413)))

(declare-fun bs!463398 () Bool)

(assert (= bs!463398 d!700482))

(assert (=> bs!463398 m!2801517))

(assert (=> bs!463398 m!2801517))

(assert (=> bs!463398 m!2801519))

(declare-fun m!2801677 () Bool)

(assert (=> bs!463398 m!2801677))

(assert (=> bs!463398 m!2801637))

(assert (=> b!2409595 d!700482))

(declare-fun b!2409863 () Bool)

(declare-fun e!1534269 () Bool)

(assert (=> b!2409863 (= e!1534269 (= (head!5369 (++!7003 s!9460 Nil!28288)) (c!383838 lt!873365)))))

(declare-fun b!2409864 () Bool)

(declare-fun e!1534270 () Bool)

(declare-fun lt!873414 () Bool)

(declare-fun call!147183 () Bool)

(assert (=> b!2409864 (= e!1534270 (= lt!873414 call!147183))))

(declare-fun b!2409865 () Bool)

(declare-fun res!1023481 () Bool)

(assert (=> b!2409865 (=> (not res!1023481) (not e!1534269))))

(assert (=> b!2409865 (= res!1023481 (not call!147183))))

(declare-fun bm!147178 () Bool)

(assert (=> bm!147178 (= call!147183 (isEmpty!16291 (++!7003 s!9460 Nil!28288)))))

(declare-fun b!2409866 () Bool)

(declare-fun e!1534271 () Bool)

(assert (=> b!2409866 (= e!1534271 (not (= (head!5369 (++!7003 s!9460 Nil!28288)) (c!383838 lt!873365))))))

(declare-fun d!700484 () Bool)

(assert (=> d!700484 e!1534270))

(declare-fun c!383897 () Bool)

(assert (=> d!700484 (= c!383897 (is-EmptyExpr!7074 lt!873365))))

(declare-fun e!1534275 () Bool)

(assert (=> d!700484 (= lt!873414 e!1534275)))

(declare-fun c!383896 () Bool)

(assert (=> d!700484 (= c!383896 (isEmpty!16291 (++!7003 s!9460 Nil!28288)))))

(assert (=> d!700484 (validRegex!2796 lt!873365)))

(assert (=> d!700484 (= (matchR!3191 lt!873365 (++!7003 s!9460 Nil!28288)) lt!873414)))

(declare-fun b!2409867 () Bool)

(declare-fun e!1534273 () Bool)

(assert (=> b!2409867 (= e!1534270 e!1534273)))

(declare-fun c!383895 () Bool)

(assert (=> b!2409867 (= c!383895 (is-EmptyLang!7074 lt!873365))))

(declare-fun b!2409868 () Bool)

(assert (=> b!2409868 (= e!1534273 (not lt!873414))))

(declare-fun b!2409869 () Bool)

(declare-fun res!1023479 () Bool)

(declare-fun e!1534274 () Bool)

(assert (=> b!2409869 (=> res!1023479 e!1534274)))

(assert (=> b!2409869 (= res!1023479 e!1534269)))

(declare-fun res!1023484 () Bool)

(assert (=> b!2409869 (=> (not res!1023484) (not e!1534269))))

(assert (=> b!2409869 (= res!1023484 lt!873414)))

(declare-fun b!2409870 () Bool)

(declare-fun res!1023483 () Bool)

(assert (=> b!2409870 (=> (not res!1023483) (not e!1534269))))

(assert (=> b!2409870 (= res!1023483 (isEmpty!16291 (tail!3641 (++!7003 s!9460 Nil!28288))))))

(declare-fun b!2409871 () Bool)

(assert (=> b!2409871 (= e!1534275 (matchR!3191 (derivativeStep!1773 lt!873365 (head!5369 (++!7003 s!9460 Nil!28288))) (tail!3641 (++!7003 s!9460 Nil!28288))))))

(declare-fun b!2409872 () Bool)

(declare-fun e!1534272 () Bool)

(assert (=> b!2409872 (= e!1534274 e!1534272)))

(declare-fun res!1023485 () Bool)

(assert (=> b!2409872 (=> (not res!1023485) (not e!1534272))))

(assert (=> b!2409872 (= res!1023485 (not lt!873414))))

(declare-fun b!2409873 () Bool)

(declare-fun res!1023486 () Bool)

(assert (=> b!2409873 (=> res!1023486 e!1534271)))

(assert (=> b!2409873 (= res!1023486 (not (isEmpty!16291 (tail!3641 (++!7003 s!9460 Nil!28288)))))))

(declare-fun b!2409874 () Bool)

(assert (=> b!2409874 (= e!1534272 e!1534271)))

(declare-fun res!1023480 () Bool)

(assert (=> b!2409874 (=> res!1023480 e!1534271)))

(assert (=> b!2409874 (= res!1023480 call!147183)))

(declare-fun b!2409875 () Bool)

(assert (=> b!2409875 (= e!1534275 (nullable!2116 lt!873365))))

(declare-fun b!2409876 () Bool)

(declare-fun res!1023482 () Bool)

(assert (=> b!2409876 (=> res!1023482 e!1534274)))

(assert (=> b!2409876 (= res!1023482 (not (is-ElementMatch!7074 lt!873365)))))

(assert (=> b!2409876 (= e!1534273 e!1534274)))

(assert (= (and d!700484 c!383896) b!2409875))

(assert (= (and d!700484 (not c!383896)) b!2409871))

(assert (= (and d!700484 c!383897) b!2409864))

(assert (= (and d!700484 (not c!383897)) b!2409867))

(assert (= (and b!2409867 c!383895) b!2409868))

(assert (= (and b!2409867 (not c!383895)) b!2409876))

(assert (= (and b!2409876 (not res!1023482)) b!2409869))

(assert (= (and b!2409869 res!1023484) b!2409865))

(assert (= (and b!2409865 res!1023481) b!2409870))

(assert (= (and b!2409870 res!1023483) b!2409863))

(assert (= (and b!2409869 (not res!1023479)) b!2409872))

(assert (= (and b!2409872 res!1023485) b!2409874))

(assert (= (and b!2409874 (not res!1023480)) b!2409873))

(assert (= (and b!2409873 (not res!1023486)) b!2409866))

(assert (= (or b!2409864 b!2409865 b!2409874) bm!147178))

(assert (=> b!2409870 m!2801515))

(declare-fun m!2801679 () Bool)

(assert (=> b!2409870 m!2801679))

(assert (=> b!2409870 m!2801679))

(declare-fun m!2801681 () Bool)

(assert (=> b!2409870 m!2801681))

(assert (=> d!700484 m!2801515))

(declare-fun m!2801683 () Bool)

(assert (=> d!700484 m!2801683))

(assert (=> d!700484 m!2801627))

(assert (=> b!2409871 m!2801515))

(declare-fun m!2801685 () Bool)

(assert (=> b!2409871 m!2801685))

(assert (=> b!2409871 m!2801685))

(declare-fun m!2801687 () Bool)

(assert (=> b!2409871 m!2801687))

(assert (=> b!2409871 m!2801515))

(assert (=> b!2409871 m!2801679))

(assert (=> b!2409871 m!2801687))

(assert (=> b!2409871 m!2801679))

(declare-fun m!2801689 () Bool)

(assert (=> b!2409871 m!2801689))

(assert (=> b!2409873 m!2801515))

(assert (=> b!2409873 m!2801679))

(assert (=> b!2409873 m!2801679))

(assert (=> b!2409873 m!2801681))

(assert (=> b!2409863 m!2801515))

(assert (=> b!2409863 m!2801685))

(assert (=> b!2409875 m!2801635))

(assert (=> bm!147178 m!2801515))

(assert (=> bm!147178 m!2801683))

(assert (=> b!2409866 m!2801515))

(assert (=> b!2409866 m!2801685))

(assert (=> b!2409595 d!700484))

(declare-fun d!700486 () Bool)

(declare-fun isEmpty!16294 (Option!5583) Bool)

(assert (=> d!700486 (= (isDefined!4411 (findConcatSeparation!691 lt!873366 EmptyExpr!7074 Nil!28288 s!9460 s!9460)) (not (isEmpty!16294 (findConcatSeparation!691 lt!873366 EmptyExpr!7074 Nil!28288 s!9460 s!9460))))))

(declare-fun bs!463399 () Bool)

(assert (= bs!463399 d!700486))

(assert (=> bs!463399 m!2801517))

(declare-fun m!2801691 () Bool)

(assert (=> bs!463399 m!2801691))

(assert (=> b!2409595 d!700486))

(declare-fun b!2409936 () Bool)

(declare-fun e!1534308 () Bool)

(declare-fun lt!873433 () Option!5583)

(assert (=> b!2409936 (= e!1534308 (not (isDefined!4411 lt!873433)))))

(declare-fun b!2409937 () Bool)

(declare-fun e!1534311 () Option!5583)

(assert (=> b!2409937 (= e!1534311 None!5582)))

(declare-fun b!2409938 () Bool)

(declare-fun e!1534310 () Option!5583)

(assert (=> b!2409938 (= e!1534310 e!1534311)))

(declare-fun c!383912 () Bool)

(assert (=> b!2409938 (= c!383912 (is-Nil!28288 s!9460))))

(declare-fun d!700488 () Bool)

(assert (=> d!700488 e!1534308))

(declare-fun res!1023520 () Bool)

(assert (=> d!700488 (=> res!1023520 e!1534308)))

(declare-fun e!1534312 () Bool)

(assert (=> d!700488 (= res!1023520 e!1534312)))

(declare-fun res!1023523 () Bool)

(assert (=> d!700488 (=> (not res!1023523) (not e!1534312))))

(assert (=> d!700488 (= res!1023523 (isDefined!4411 lt!873433))))

(assert (=> d!700488 (= lt!873433 e!1534310)))

(declare-fun c!383911 () Bool)

(declare-fun e!1534309 () Bool)

(assert (=> d!700488 (= c!383911 e!1534309)))

(declare-fun res!1023524 () Bool)

(assert (=> d!700488 (=> (not res!1023524) (not e!1534309))))

(assert (=> d!700488 (= res!1023524 (matchR!3191 lt!873366 Nil!28288))))

(assert (=> d!700488 (validRegex!2796 lt!873366)))

(assert (=> d!700488 (= (findConcatSeparation!691 lt!873366 EmptyExpr!7074 Nil!28288 s!9460 s!9460) lt!873433)))

(declare-fun b!2409939 () Bool)

(declare-fun lt!873432 () Unit!41419)

(declare-fun lt!873431 () Unit!41419)

(assert (=> b!2409939 (= lt!873432 lt!873431)))

(assert (=> b!2409939 (= (++!7003 (++!7003 Nil!28288 (Cons!28288 (h!33689 s!9460) Nil!28288)) (t!208363 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!636 (List!28386 C!14306 List!28386 List!28386) Unit!41419)

(assert (=> b!2409939 (= lt!873431 (lemmaMoveElementToOtherListKeepsConcatEq!636 Nil!28288 (h!33689 s!9460) (t!208363 s!9460) s!9460))))

(assert (=> b!2409939 (= e!1534311 (findConcatSeparation!691 lt!873366 EmptyExpr!7074 (++!7003 Nil!28288 (Cons!28288 (h!33689 s!9460) Nil!28288)) (t!208363 s!9460) s!9460))))

(declare-fun b!2409940 () Bool)

(declare-fun get!8675 (Option!5583) tuple2!27944)

(assert (=> b!2409940 (= e!1534312 (= (++!7003 (_1!16513 (get!8675 lt!873433)) (_2!16513 (get!8675 lt!873433))) s!9460))))

(declare-fun b!2409941 () Bool)

(assert (=> b!2409941 (= e!1534309 (matchR!3191 EmptyExpr!7074 s!9460))))

(declare-fun b!2409942 () Bool)

(declare-fun res!1023521 () Bool)

(assert (=> b!2409942 (=> (not res!1023521) (not e!1534312))))

(assert (=> b!2409942 (= res!1023521 (matchR!3191 EmptyExpr!7074 (_2!16513 (get!8675 lt!873433))))))

(declare-fun b!2409943 () Bool)

(declare-fun res!1023522 () Bool)

(assert (=> b!2409943 (=> (not res!1023522) (not e!1534312))))

(assert (=> b!2409943 (= res!1023522 (matchR!3191 lt!873366 (_1!16513 (get!8675 lt!873433))))))

(declare-fun b!2409944 () Bool)

(assert (=> b!2409944 (= e!1534310 (Some!5582 (tuple2!27945 Nil!28288 s!9460)))))

(assert (= (and d!700488 res!1023524) b!2409941))

(assert (= (and d!700488 c!383911) b!2409944))

(assert (= (and d!700488 (not c!383911)) b!2409938))

(assert (= (and b!2409938 c!383912) b!2409937))

(assert (= (and b!2409938 (not c!383912)) b!2409939))

(assert (= (and d!700488 res!1023523) b!2409943))

(assert (= (and b!2409943 res!1023522) b!2409942))

(assert (= (and b!2409942 res!1023521) b!2409940))

(assert (= (and d!700488 (not res!1023520)) b!2409936))

(declare-fun m!2801729 () Bool)

(assert (=> b!2409940 m!2801729))

(declare-fun m!2801731 () Bool)

(assert (=> b!2409940 m!2801731))

(declare-fun m!2801733 () Bool)

(assert (=> b!2409941 m!2801733))

(assert (=> b!2409942 m!2801729))

(declare-fun m!2801735 () Bool)

(assert (=> b!2409942 m!2801735))

(declare-fun m!2801737 () Bool)

(assert (=> b!2409936 m!2801737))

(assert (=> b!2409943 m!2801729))

(declare-fun m!2801739 () Bool)

(assert (=> b!2409943 m!2801739))

(assert (=> d!700488 m!2801737))

(declare-fun m!2801741 () Bool)

(assert (=> d!700488 m!2801741))

(assert (=> d!700488 m!2801637))

(declare-fun m!2801743 () Bool)

(assert (=> b!2409939 m!2801743))

(assert (=> b!2409939 m!2801743))

(declare-fun m!2801745 () Bool)

(assert (=> b!2409939 m!2801745))

(declare-fun m!2801747 () Bool)

(assert (=> b!2409939 m!2801747))

(assert (=> b!2409939 m!2801743))

(declare-fun m!2801749 () Bool)

(assert (=> b!2409939 m!2801749))

(assert (=> b!2409595 d!700488))

(declare-fun d!700494 () Bool)

(declare-fun e!1534324 () Bool)

(assert (=> d!700494 e!1534324))

(declare-fun res!1023536 () Bool)

(assert (=> d!700494 (=> (not res!1023536) (not e!1534324))))

(declare-fun lt!873436 () List!28386)

(declare-fun content!3875 (List!28386) (Set C!14306))

(assert (=> d!700494 (= res!1023536 (= (content!3875 lt!873436) (set.union (content!3875 s!9460) (content!3875 Nil!28288))))))

(declare-fun e!1534323 () List!28386)

(assert (=> d!700494 (= lt!873436 e!1534323)))

(declare-fun c!383915 () Bool)

(assert (=> d!700494 (= c!383915 (is-Nil!28288 s!9460))))

(assert (=> d!700494 (= (++!7003 s!9460 Nil!28288) lt!873436)))

(declare-fun b!2409959 () Bool)

(assert (=> b!2409959 (= e!1534323 Nil!28288)))

(declare-fun b!2409961 () Bool)

(declare-fun res!1023535 () Bool)

(assert (=> b!2409961 (=> (not res!1023535) (not e!1534324))))

(declare-fun size!22213 (List!28386) Int)

(assert (=> b!2409961 (= res!1023535 (= (size!22213 lt!873436) (+ (size!22213 s!9460) (size!22213 Nil!28288))))))

(declare-fun b!2409962 () Bool)

(assert (=> b!2409962 (= e!1534324 (or (not (= Nil!28288 Nil!28288)) (= lt!873436 s!9460)))))

(declare-fun b!2409960 () Bool)

(assert (=> b!2409960 (= e!1534323 (Cons!28288 (h!33689 s!9460) (++!7003 (t!208363 s!9460) Nil!28288)))))

(assert (= (and d!700494 c!383915) b!2409959))

(assert (= (and d!700494 (not c!383915)) b!2409960))

(assert (= (and d!700494 res!1023536) b!2409961))

(assert (= (and b!2409961 res!1023535) b!2409962))

(declare-fun m!2801755 () Bool)

(assert (=> d!700494 m!2801755))

(declare-fun m!2801757 () Bool)

(assert (=> d!700494 m!2801757))

(declare-fun m!2801759 () Bool)

(assert (=> d!700494 m!2801759))

(declare-fun m!2801761 () Bool)

(assert (=> b!2409961 m!2801761))

(declare-fun m!2801763 () Bool)

(assert (=> b!2409961 m!2801763))

(declare-fun m!2801765 () Bool)

(assert (=> b!2409961 m!2801765))

(declare-fun m!2801767 () Bool)

(assert (=> b!2409960 m!2801767))

(assert (=> b!2409595 d!700494))

(declare-fun d!700500 () Bool)

(assert (=> d!700500 (matchR!3191 (Concat!11710 lt!873366 EmptyExpr!7074) (++!7003 s!9460 Nil!28288))))

(declare-fun lt!873441 () Unit!41419)

(declare-fun choose!14251 (Regex!7074 Regex!7074 List!28386 List!28386) Unit!41419)

(assert (=> d!700500 (= lt!873441 (choose!14251 lt!873366 EmptyExpr!7074 s!9460 Nil!28288))))

(declare-fun e!1534341 () Bool)

(assert (=> d!700500 e!1534341))

(declare-fun res!1023555 () Bool)

(assert (=> d!700500 (=> (not res!1023555) (not e!1534341))))

(assert (=> d!700500 (= res!1023555 (validRegex!2796 lt!873366))))

(assert (=> d!700500 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!73 lt!873366 EmptyExpr!7074 s!9460 Nil!28288) lt!873441)))

(declare-fun b!2409993 () Bool)

(assert (=> b!2409993 (= e!1534341 (validRegex!2796 EmptyExpr!7074))))

(assert (= (and d!700500 res!1023555) b!2409993))

(assert (=> d!700500 m!2801515))

(assert (=> d!700500 m!2801515))

(declare-fun m!2801781 () Bool)

(assert (=> d!700500 m!2801781))

(declare-fun m!2801783 () Bool)

(assert (=> d!700500 m!2801783))

(assert (=> d!700500 m!2801637))

(declare-fun m!2801785 () Bool)

(assert (=> b!2409993 m!2801785))

(assert (=> b!2409595 d!700500))

(declare-fun d!700506 () Bool)

(assert (=> d!700506 (= (isEmpty!16289 lt!873364) (is-Nil!28289 lt!873364))))

(assert (=> b!2409596 d!700506))

(declare-fun d!700508 () Bool)

(assert (=> d!700508 (= (tail!3639 l!9164) (t!208364 l!9164))))

(assert (=> b!2409596 d!700508))

(declare-fun b!2410007 () Bool)

(declare-fun e!1534344 () Bool)

(declare-fun tp!766729 () Bool)

(declare-fun tp!766731 () Bool)

(assert (=> b!2410007 (= e!1534344 (and tp!766729 tp!766731))))

(declare-fun b!2410005 () Bool)

(declare-fun tp!766732 () Bool)

(declare-fun tp!766728 () Bool)

(assert (=> b!2410005 (= e!1534344 (and tp!766732 tp!766728))))

(declare-fun b!2410004 () Bool)

(assert (=> b!2410004 (= e!1534344 tp_is_empty!11561)))

(declare-fun b!2410006 () Bool)

(declare-fun tp!766730 () Bool)

(assert (=> b!2410006 (= e!1534344 tp!766730)))

(assert (=> b!2409598 (= tp!766688 e!1534344)))

(assert (= (and b!2409598 (is-ElementMatch!7074 (reg!7403 r!13927))) b!2410004))

(assert (= (and b!2409598 (is-Concat!11710 (reg!7403 r!13927))) b!2410005))

(assert (= (and b!2409598 (is-Star!7074 (reg!7403 r!13927))) b!2410006))

(assert (= (and b!2409598 (is-Union!7074 (reg!7403 r!13927))) b!2410007))

(declare-fun b!2410011 () Bool)

(declare-fun e!1534345 () Bool)

(declare-fun tp!766734 () Bool)

(declare-fun tp!766736 () Bool)

(assert (=> b!2410011 (= e!1534345 (and tp!766734 tp!766736))))

(declare-fun b!2410009 () Bool)

(declare-fun tp!766737 () Bool)

(declare-fun tp!766733 () Bool)

(assert (=> b!2410009 (= e!1534345 (and tp!766737 tp!766733))))

(declare-fun b!2410008 () Bool)

(assert (=> b!2410008 (= e!1534345 tp_is_empty!11561)))

(declare-fun b!2410010 () Bool)

(declare-fun tp!766735 () Bool)

(assert (=> b!2410010 (= e!1534345 tp!766735)))

(assert (=> b!2409588 (= tp!766689 e!1534345)))

(assert (= (and b!2409588 (is-ElementMatch!7074 (h!33690 l!9164))) b!2410008))

(assert (= (and b!2409588 (is-Concat!11710 (h!33690 l!9164))) b!2410009))

(assert (= (and b!2409588 (is-Star!7074 (h!33690 l!9164))) b!2410010))

(assert (= (and b!2409588 (is-Union!7074 (h!33690 l!9164))) b!2410011))

(declare-fun b!2410016 () Bool)

(declare-fun e!1534348 () Bool)

(declare-fun tp!766742 () Bool)

(declare-fun tp!766743 () Bool)

(assert (=> b!2410016 (= e!1534348 (and tp!766742 tp!766743))))

(assert (=> b!2409588 (= tp!766691 e!1534348)))

(assert (= (and b!2409588 (is-Cons!28289 (t!208364 l!9164))) b!2410016))

(declare-fun b!2410020 () Bool)

(declare-fun e!1534349 () Bool)

(declare-fun tp!766745 () Bool)

(declare-fun tp!766747 () Bool)

(assert (=> b!2410020 (= e!1534349 (and tp!766745 tp!766747))))

(declare-fun b!2410018 () Bool)

(declare-fun tp!766748 () Bool)

(declare-fun tp!766744 () Bool)

(assert (=> b!2410018 (= e!1534349 (and tp!766748 tp!766744))))

(declare-fun b!2410017 () Bool)

(assert (=> b!2410017 (= e!1534349 tp_is_empty!11561)))

(declare-fun b!2410019 () Bool)

(declare-fun tp!766746 () Bool)

(assert (=> b!2410019 (= e!1534349 tp!766746)))

(assert (=> b!2409599 (= tp!766692 e!1534349)))

(assert (= (and b!2409599 (is-ElementMatch!7074 (regOne!14660 r!13927))) b!2410017))

(assert (= (and b!2409599 (is-Concat!11710 (regOne!14660 r!13927))) b!2410018))

(assert (= (and b!2409599 (is-Star!7074 (regOne!14660 r!13927))) b!2410019))

(assert (= (and b!2409599 (is-Union!7074 (regOne!14660 r!13927))) b!2410020))

(declare-fun b!2410024 () Bool)

(declare-fun e!1534350 () Bool)

(declare-fun tp!766750 () Bool)

(declare-fun tp!766752 () Bool)

(assert (=> b!2410024 (= e!1534350 (and tp!766750 tp!766752))))

(declare-fun b!2410022 () Bool)

(declare-fun tp!766753 () Bool)

(declare-fun tp!766749 () Bool)

(assert (=> b!2410022 (= e!1534350 (and tp!766753 tp!766749))))

(declare-fun b!2410021 () Bool)

(assert (=> b!2410021 (= e!1534350 tp_is_empty!11561)))

(declare-fun b!2410023 () Bool)

(declare-fun tp!766751 () Bool)

(assert (=> b!2410023 (= e!1534350 tp!766751)))

(assert (=> b!2409599 (= tp!766687 e!1534350)))

(assert (= (and b!2409599 (is-ElementMatch!7074 (regTwo!14660 r!13927))) b!2410021))

(assert (= (and b!2409599 (is-Concat!11710 (regTwo!14660 r!13927))) b!2410022))

(assert (= (and b!2409599 (is-Star!7074 (regTwo!14660 r!13927))) b!2410023))

(assert (= (and b!2409599 (is-Union!7074 (regTwo!14660 r!13927))) b!2410024))

(declare-fun b!2410028 () Bool)

(declare-fun e!1534351 () Bool)

(declare-fun tp!766755 () Bool)

(declare-fun tp!766757 () Bool)

(assert (=> b!2410028 (= e!1534351 (and tp!766755 tp!766757))))

(declare-fun b!2410026 () Bool)

(declare-fun tp!766758 () Bool)

(declare-fun tp!766754 () Bool)

(assert (=> b!2410026 (= e!1534351 (and tp!766758 tp!766754))))

(declare-fun b!2410025 () Bool)

(assert (=> b!2410025 (= e!1534351 tp_is_empty!11561)))

(declare-fun b!2410027 () Bool)

(declare-fun tp!766756 () Bool)

(assert (=> b!2410027 (= e!1534351 tp!766756)))

(assert (=> b!2409600 (= tp!766693 e!1534351)))

(assert (= (and b!2409600 (is-ElementMatch!7074 (regOne!14661 r!13927))) b!2410025))

(assert (= (and b!2409600 (is-Concat!11710 (regOne!14661 r!13927))) b!2410026))

(assert (= (and b!2409600 (is-Star!7074 (regOne!14661 r!13927))) b!2410027))

(assert (= (and b!2409600 (is-Union!7074 (regOne!14661 r!13927))) b!2410028))

(declare-fun b!2410032 () Bool)

(declare-fun e!1534352 () Bool)

(declare-fun tp!766760 () Bool)

(declare-fun tp!766762 () Bool)

(assert (=> b!2410032 (= e!1534352 (and tp!766760 tp!766762))))

(declare-fun b!2410030 () Bool)

(declare-fun tp!766763 () Bool)

(declare-fun tp!766759 () Bool)

(assert (=> b!2410030 (= e!1534352 (and tp!766763 tp!766759))))

(declare-fun b!2410029 () Bool)

(assert (=> b!2410029 (= e!1534352 tp_is_empty!11561)))

(declare-fun b!2410031 () Bool)

(declare-fun tp!766761 () Bool)

(assert (=> b!2410031 (= e!1534352 tp!766761)))

(assert (=> b!2409600 (= tp!766690 e!1534352)))

(assert (= (and b!2409600 (is-ElementMatch!7074 (regTwo!14661 r!13927))) b!2410029))

(assert (= (and b!2409600 (is-Concat!11710 (regTwo!14661 r!13927))) b!2410030))

(assert (= (and b!2409600 (is-Star!7074 (regTwo!14661 r!13927))) b!2410031))

(assert (= (and b!2409600 (is-Union!7074 (regTwo!14661 r!13927))) b!2410032))

(declare-fun b!2410037 () Bool)

(declare-fun e!1534355 () Bool)

(declare-fun tp!766766 () Bool)

(assert (=> b!2410037 (= e!1534355 (and tp_is_empty!11561 tp!766766))))

(assert (=> b!2409590 (= tp!766686 e!1534355)))

(assert (= (and b!2409590 (is-Cons!28288 (t!208363 s!9460))) b!2410037))

(declare-fun b_lambda!74479 () Bool)

(assert (= b_lambda!74475 (or start!236154 b_lambda!74479)))

(declare-fun bs!463400 () Bool)

(declare-fun d!700510 () Bool)

(assert (= bs!463400 (and d!700510 start!236154)))

(assert (=> bs!463400 (= (dynLambda!12179 lambda!90694 (h!33690 l!9164)) (validRegex!2796 (h!33690 l!9164)))))

(declare-fun m!2801787 () Bool)

(assert (=> bs!463400 m!2801787))

(assert (=> b!2409647 d!700510))

(push 1)

(assert (not b!2409939))

(assert (not b!2409696))

(assert (not b!2410018))

(assert (not b!2409648))

(assert (not bm!147166))

(assert (not b!2409768))

(assert (not b!2409744))

(assert (not b!2409866))

(assert (not b!2409740))

(assert (not b!2410009))

(assert (not b!2409875))

(assert (not b!2409684))

(assert (not b!2409756))

(assert (not b!2409943))

(assert (not b!2410027))

(assert (not b!2409746))

(assert (not bm!147168))

(assert (not b!2409694))

(assert (not b!2410011))

(assert (not d!700482))

(assert (not b!2409940))

(assert (not d!700466))

(assert (not b!2409848))

(assert (not b!2409942))

(assert (not b!2409767))

(assert (not d!700470))

(assert (not d!700500))

(assert (not b!2409688))

(assert (not b!2409689))

(assert (not d!700474))

(assert (not b!2410031))

(assert (not b!2409763))

(assert (not b!2409758))

(assert (not b!2410023))

(assert (not b!2409698))

(assert (not b!2409699))

(assert (not b!2409941))

(assert (not d!700488))

(assert (not b!2409871))

(assert (not b!2409754))

(assert tp_is_empty!11561)

(assert (not b!2410005))

(assert (not b!2409735))

(assert (not b!2410026))

(assert (not d!700494))

(assert (not bm!147167))

(assert (not b!2409690))

(assert (not b!2409863))

(assert (not b!2410028))

(assert (not b!2409686))

(assert (not b!2410016))

(assert (not b!2410032))

(assert (not b!2410030))

(assert (not b_lambda!74479))

(assert (not b!2409870))

(assert (not d!700464))

(assert (not b!2410006))

(assert (not b!2409739))

(assert (not bm!147177))

(assert (not b!2409682))

(assert (not b!2410007))

(assert (not b!2410022))

(assert (not b!2409760))

(assert (not b!2409742))

(assert (not b!2410010))

(assert (not d!700484))

(assert (not d!700456))

(assert (not b!2410019))

(assert (not b!2409960))

(assert (not b!2409772))

(assert (not d!700480))

(assert (not b!2410037))

(assert (not b!2409850))

(assert (not bs!463400))

(assert (not b!2410024))

(assert (not b!2409770))

(assert (not b!2409753))

(assert (not b!2409692))

(assert (not b!2410020))

(assert (not b!2409749))

(assert (not b!2409732))

(assert (not b!2409700))

(assert (not b!2409993))

(assert (not b!2409695))

(assert (not b!2409961))

(assert (not b!2409936))

(assert (not b!2409873))

(assert (not bm!147178))

(assert (not bm!147176))

(assert (not b!2409685))

(assert (not d!700486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

