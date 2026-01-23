; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232726 () Bool)

(assert start!232726)

(declare-fun b!2371429 () Bool)

(assert (=> b!2371429 true))

(assert (=> b!2371429 true))

(declare-fun lambda!87824 () Int)

(declare-fun lambda!87823 () Int)

(assert (=> b!2371429 (not (= lambda!87824 lambda!87823))))

(assert (=> b!2371429 true))

(assert (=> b!2371429 true))

(declare-fun e!1513506 () Bool)

(declare-fun e!1513509 () Bool)

(assert (=> b!2371429 (= e!1513506 e!1513509)))

(declare-fun res!1006626 () Bool)

(assert (=> b!2371429 (=> res!1006626 e!1513509)))

(declare-fun lt!866189 () Bool)

(declare-fun lt!866198 () Bool)

(assert (=> b!2371429 (= res!1006626 (not (= lt!866189 lt!866198)))))

(declare-fun Exists!1010 (Int) Bool)

(assert (=> b!2371429 (= (Exists!1010 lambda!87823) (Exists!1010 lambda!87824))))

(declare-datatypes ((Unit!40931 0))(
  ( (Unit!40932) )
))
(declare-fun lt!866192 () Unit!40931)

(declare-datatypes ((C!14054 0))(
  ( (C!14055 (val!8269 Int)) )
))
(declare-datatypes ((Regex!6948 0))(
  ( (ElementMatch!6948 (c!376924 C!14054)) (Concat!11584 (regOne!14408 Regex!6948) (regTwo!14408 Regex!6948)) (EmptyExpr!6948) (Star!6948 (reg!7277 Regex!6948)) (EmptyLang!6948) (Union!6948 (regOne!14409 Regex!6948) (regTwo!14409 Regex!6948)) )
))
(declare-fun r!13927 () Regex!6948)

(declare-datatypes ((List!28134 0))(
  ( (Nil!28036) (Cons!28036 (h!33437 C!14054) (t!208111 List!28134)) )
))
(declare-fun s!9460 () List!28134)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!349 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> b!2371429 (= lt!866192 (lemmaExistCutMatchRandMatchRSpecEquivalent!349 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460))))

(assert (=> b!2371429 (= lt!866198 (Exists!1010 lambda!87823))))

(declare-datatypes ((tuple2!27760 0))(
  ( (tuple2!27761 (_1!16421 List!28134) (_2!16421 List!28134)) )
))
(declare-datatypes ((Option!5491 0))(
  ( (None!5490) (Some!5490 (v!30898 tuple2!27760)) )
))
(declare-fun isDefined!4319 (Option!5491) Bool)

(declare-fun findConcatSeparation!599 (Regex!6948 Regex!6948 List!28134 List!28134 List!28134) Option!5491)

(assert (=> b!2371429 (= lt!866198 (isDefined!4319 (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) Nil!28036 s!9460 s!9460)))))

(declare-fun lt!866193 () Unit!40931)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!599 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> b!2371429 (= lt!866193 (lemmaFindConcatSeparationEquivalentToExists!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460))))

(declare-fun b!2371430 () Bool)

(declare-fun e!1513511 () Bool)

(declare-fun e!1513510 () Bool)

(assert (=> b!2371430 (= e!1513511 e!1513510)))

(declare-fun res!1006627 () Bool)

(assert (=> b!2371430 (=> res!1006627 e!1513510)))

(declare-fun lt!866191 () Regex!6948)

(declare-fun matchR!3065 (Regex!6948 List!28134) Bool)

(assert (=> b!2371430 (= res!1006627 (not (matchR!3065 lt!866191 s!9460)))))

(declare-datatypes ((List!28135 0))(
  ( (Nil!28037) (Cons!28037 (h!33438 Regex!6948) (t!208112 List!28135)) )
))
(declare-fun l!9164 () List!28135)

(declare-fun head!5135 (List!28135) Regex!6948)

(assert (=> b!2371430 (= lt!866191 (head!5135 l!9164))))

(declare-fun b!2371431 () Bool)

(declare-fun lt!866190 () List!28135)

(declare-fun lambda!87822 () Int)

(declare-fun forall!5582 (List!28135 Int) Bool)

(assert (=> b!2371431 (= e!1513510 (forall!5582 lt!866190 lambda!87822))))

(assert (=> b!2371431 (isDefined!4319 (findConcatSeparation!599 lt!866191 EmptyExpr!6948 Nil!28036 s!9460 s!9460))))

(declare-fun lt!866194 () Unit!40931)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!3 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> b!2371431 (= lt!866194 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!3 lt!866191 EmptyExpr!6948 s!9460))))

(declare-fun e!1513508 () Bool)

(assert (=> b!2371431 e!1513508))

(declare-fun res!1006625 () Bool)

(assert (=> b!2371431 (=> (not res!1006625) (not e!1513508))))

(declare-fun lt!866197 () Regex!6948)

(declare-fun ++!6908 (List!28134 List!28134) List!28134)

(assert (=> b!2371431 (= res!1006625 (matchR!3065 lt!866197 (++!6908 s!9460 Nil!28036)))))

(assert (=> b!2371431 (= lt!866197 (Concat!11584 lt!866191 EmptyExpr!6948))))

(declare-fun lt!866199 () Unit!40931)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!21 (Regex!6948 Regex!6948 List!28134 List!28134) Unit!40931)

(assert (=> b!2371431 (= lt!866199 (lemmaTwoRegexMatchThenConcatMatchesConcatString!21 lt!866191 EmptyExpr!6948 s!9460 Nil!28036))))

(declare-fun b!2371432 () Bool)

(declare-fun e!1513512 () Bool)

(declare-fun tp!757979 () Bool)

(assert (=> b!2371432 (= e!1513512 tp!757979)))

(declare-fun b!2371433 () Bool)

(declare-fun res!1006620 () Bool)

(declare-fun e!1513505 () Bool)

(assert (=> b!2371433 (=> (not res!1006620) (not e!1513505))))

(declare-fun generalisedConcat!49 (List!28135) Regex!6948)

(assert (=> b!2371433 (= res!1006620 (= r!13927 (generalisedConcat!49 l!9164)))))

(declare-fun b!2371434 () Bool)

(declare-fun tp!757980 () Bool)

(declare-fun tp!757984 () Bool)

(assert (=> b!2371434 (= e!1513512 (and tp!757980 tp!757984))))

(declare-fun b!2371435 () Bool)

(assert (=> b!2371435 (= e!1513505 (not e!1513506))))

(declare-fun res!1006624 () Bool)

(assert (=> b!2371435 (=> res!1006624 e!1513506)))

(assert (=> b!2371435 (= res!1006624 (not (is-Concat!11584 r!13927)))))

(declare-fun lt!866196 () Bool)

(assert (=> b!2371435 (= lt!866196 lt!866189)))

(declare-fun matchRSpec!797 (Regex!6948 List!28134) Bool)

(assert (=> b!2371435 (= lt!866189 (matchRSpec!797 r!13927 s!9460))))

(assert (=> b!2371435 (= lt!866196 (matchR!3065 r!13927 s!9460))))

(declare-fun lt!866195 () Unit!40931)

(declare-fun mainMatchTheorem!797 (Regex!6948 List!28134) Unit!40931)

(assert (=> b!2371435 (= lt!866195 (mainMatchTheorem!797 r!13927 s!9460))))

(declare-fun b!2371436 () Bool)

(declare-fun tp_is_empty!11309 () Bool)

(assert (=> b!2371436 (= e!1513512 tp_is_empty!11309)))

(declare-fun b!2371437 () Bool)

(assert (=> b!2371437 (= e!1513508 (matchR!3065 lt!866197 s!9460))))

(declare-fun res!1006619 () Bool)

(assert (=> start!232726 (=> (not res!1006619) (not e!1513505))))

(assert (=> start!232726 (= res!1006619 (forall!5582 l!9164 lambda!87822))))

(assert (=> start!232726 e!1513505))

(declare-fun e!1513513 () Bool)

(assert (=> start!232726 e!1513513))

(assert (=> start!232726 e!1513512))

(declare-fun e!1513507 () Bool)

(assert (=> start!232726 e!1513507))

(declare-fun b!2371438 () Bool)

(declare-fun res!1006621 () Bool)

(assert (=> b!2371438 (=> res!1006621 e!1513509)))

(declare-fun isEmpty!15967 (List!28135) Bool)

(assert (=> b!2371438 (= res!1006621 (isEmpty!15967 l!9164))))

(declare-fun b!2371439 () Bool)

(declare-fun tp!757981 () Bool)

(declare-fun tp!757983 () Bool)

(assert (=> b!2371439 (= e!1513513 (and tp!757981 tp!757983))))

(declare-fun b!2371440 () Bool)

(declare-fun tp!757985 () Bool)

(declare-fun tp!757978 () Bool)

(assert (=> b!2371440 (= e!1513512 (and tp!757985 tp!757978))))

(declare-fun b!2371441 () Bool)

(assert (=> b!2371441 (= e!1513509 e!1513511)))

(declare-fun res!1006622 () Bool)

(assert (=> b!2371441 (=> res!1006622 e!1513511)))

(assert (=> b!2371441 (= res!1006622 (not (isEmpty!15967 lt!866190)))))

(declare-fun tail!3405 (List!28135) List!28135)

(assert (=> b!2371441 (= lt!866190 (tail!3405 l!9164))))

(declare-fun b!2371442 () Bool)

(declare-fun tp!757982 () Bool)

(assert (=> b!2371442 (= e!1513507 (and tp_is_empty!11309 tp!757982))))

(declare-fun b!2371443 () Bool)

(declare-fun res!1006623 () Bool)

(assert (=> b!2371443 (=> res!1006623 e!1513511)))

(assert (=> b!2371443 (= res!1006623 (not (= (generalisedConcat!49 lt!866190) EmptyExpr!6948)))))

(assert (= (and start!232726 res!1006619) b!2371433))

(assert (= (and b!2371433 res!1006620) b!2371435))

(assert (= (and b!2371435 (not res!1006624)) b!2371429))

(assert (= (and b!2371429 (not res!1006626)) b!2371438))

(assert (= (and b!2371438 (not res!1006621)) b!2371441))

(assert (= (and b!2371441 (not res!1006622)) b!2371443))

(assert (= (and b!2371443 (not res!1006623)) b!2371430))

(assert (= (and b!2371430 (not res!1006627)) b!2371431))

(assert (= (and b!2371431 res!1006625) b!2371437))

(assert (= (and start!232726 (is-Cons!28037 l!9164)) b!2371439))

(assert (= (and start!232726 (is-ElementMatch!6948 r!13927)) b!2371436))

(assert (= (and start!232726 (is-Concat!11584 r!13927)) b!2371434))

(assert (= (and start!232726 (is-Star!6948 r!13927)) b!2371432))

(assert (= (and start!232726 (is-Union!6948 r!13927)) b!2371440))

(assert (= (and start!232726 (is-Cons!28036 s!9460)) b!2371442))

(declare-fun m!2779047 () Bool)

(assert (=> b!2371443 m!2779047))

(declare-fun m!2779049 () Bool)

(assert (=> b!2371435 m!2779049))

(declare-fun m!2779051 () Bool)

(assert (=> b!2371435 m!2779051))

(declare-fun m!2779053 () Bool)

(assert (=> b!2371435 m!2779053))

(declare-fun m!2779055 () Bool)

(assert (=> b!2371437 m!2779055))

(declare-fun m!2779057 () Bool)

(assert (=> b!2371433 m!2779057))

(declare-fun m!2779059 () Bool)

(assert (=> b!2371430 m!2779059))

(declare-fun m!2779061 () Bool)

(assert (=> b!2371430 m!2779061))

(declare-fun m!2779063 () Bool)

(assert (=> b!2371438 m!2779063))

(declare-fun m!2779065 () Bool)

(assert (=> start!232726 m!2779065))

(declare-fun m!2779067 () Bool)

(assert (=> b!2371431 m!2779067))

(declare-fun m!2779069 () Bool)

(assert (=> b!2371431 m!2779069))

(declare-fun m!2779071 () Bool)

(assert (=> b!2371431 m!2779071))

(assert (=> b!2371431 m!2779069))

(declare-fun m!2779073 () Bool)

(assert (=> b!2371431 m!2779073))

(declare-fun m!2779075 () Bool)

(assert (=> b!2371431 m!2779075))

(declare-fun m!2779077 () Bool)

(assert (=> b!2371431 m!2779077))

(assert (=> b!2371431 m!2779067))

(declare-fun m!2779079 () Bool)

(assert (=> b!2371431 m!2779079))

(declare-fun m!2779081 () Bool)

(assert (=> b!2371441 m!2779081))

(declare-fun m!2779083 () Bool)

(assert (=> b!2371441 m!2779083))

(declare-fun m!2779085 () Bool)

(assert (=> b!2371429 m!2779085))

(declare-fun m!2779087 () Bool)

(assert (=> b!2371429 m!2779087))

(declare-fun m!2779089 () Bool)

(assert (=> b!2371429 m!2779089))

(declare-fun m!2779091 () Bool)

(assert (=> b!2371429 m!2779091))

(declare-fun m!2779093 () Bool)

(assert (=> b!2371429 m!2779093))

(assert (=> b!2371429 m!2779091))

(assert (=> b!2371429 m!2779089))

(declare-fun m!2779095 () Bool)

(assert (=> b!2371429 m!2779095))

(push 1)

(assert tp_is_empty!11309)

(assert (not b!2371432))

(assert (not b!2371441))

(assert (not b!2371429))

(assert (not start!232726))

(assert (not b!2371440))

(assert (not b!2371438))

(assert (not b!2371434))

(assert (not b!2371439))

(assert (not b!2371435))

(assert (not b!2371431))

(assert (not b!2371437))

(assert (not b!2371443))

(assert (not b!2371433))

(assert (not b!2371430))

(assert (not b!2371442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!695403 () Bool)

(declare-fun res!1006671 () Bool)

(declare-fun e!1513551 () Bool)

(assert (=> d!695403 (=> res!1006671 e!1513551)))

(assert (=> d!695403 (= res!1006671 (is-Nil!28037 l!9164))))

(assert (=> d!695403 (= (forall!5582 l!9164 lambda!87822) e!1513551)))

(declare-fun b!2371513 () Bool)

(declare-fun e!1513552 () Bool)

(assert (=> b!2371513 (= e!1513551 e!1513552)))

(declare-fun res!1006672 () Bool)

(assert (=> b!2371513 (=> (not res!1006672) (not e!1513552))))

(declare-fun dynLambda!12073 (Int Regex!6948) Bool)

(assert (=> b!2371513 (= res!1006672 (dynLambda!12073 lambda!87822 (h!33438 l!9164)))))

(declare-fun b!2371514 () Bool)

(assert (=> b!2371514 (= e!1513552 (forall!5582 (t!208112 l!9164) lambda!87822))))

(assert (= (and d!695403 (not res!1006671)) b!2371513))

(assert (= (and b!2371513 res!1006672) b!2371514))

(declare-fun b_lambda!73939 () Bool)

(assert (=> (not b_lambda!73939) (not b!2371513)))

(declare-fun m!2779147 () Bool)

(assert (=> b!2371513 m!2779147))

(declare-fun m!2779149 () Bool)

(assert (=> b!2371514 m!2779149))

(assert (=> start!232726 d!695403))

(declare-fun d!695405 () Bool)

(declare-fun isEmpty!15969 (Option!5491) Bool)

(assert (=> d!695405 (= (isDefined!4319 (findConcatSeparation!599 lt!866191 EmptyExpr!6948 Nil!28036 s!9460 s!9460)) (not (isEmpty!15969 (findConcatSeparation!599 lt!866191 EmptyExpr!6948 Nil!28036 s!9460 s!9460))))))

(declare-fun bs!461269 () Bool)

(assert (= bs!461269 d!695405))

(assert (=> bs!461269 m!2779067))

(declare-fun m!2779151 () Bool)

(assert (=> bs!461269 m!2779151))

(assert (=> b!2371431 d!695405))

(declare-fun d!695407 () Bool)

(assert (=> d!695407 (isDefined!4319 (findConcatSeparation!599 lt!866191 EmptyExpr!6948 Nil!28036 s!9460 s!9460))))

(declare-fun lt!866235 () Unit!40931)

(declare-fun choose!13803 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> d!695407 (= lt!866235 (choose!13803 lt!866191 EmptyExpr!6948 s!9460))))

(declare-fun validRegex!2675 (Regex!6948) Bool)

(assert (=> d!695407 (validRegex!2675 lt!866191)))

(assert (=> d!695407 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!3 lt!866191 EmptyExpr!6948 s!9460) lt!866235)))

(declare-fun bs!461270 () Bool)

(assert (= bs!461270 d!695407))

(assert (=> bs!461270 m!2779067))

(assert (=> bs!461270 m!2779067))

(assert (=> bs!461270 m!2779079))

(declare-fun m!2779153 () Bool)

(assert (=> bs!461270 m!2779153))

(declare-fun m!2779155 () Bool)

(assert (=> bs!461270 m!2779155))

(assert (=> b!2371431 d!695407))

(declare-fun d!695409 () Bool)

(declare-fun res!1006673 () Bool)

(declare-fun e!1513553 () Bool)

(assert (=> d!695409 (=> res!1006673 e!1513553)))

(assert (=> d!695409 (= res!1006673 (is-Nil!28037 lt!866190))))

(assert (=> d!695409 (= (forall!5582 lt!866190 lambda!87822) e!1513553)))

(declare-fun b!2371515 () Bool)

(declare-fun e!1513554 () Bool)

(assert (=> b!2371515 (= e!1513553 e!1513554)))

(declare-fun res!1006674 () Bool)

(assert (=> b!2371515 (=> (not res!1006674) (not e!1513554))))

(assert (=> b!2371515 (= res!1006674 (dynLambda!12073 lambda!87822 (h!33438 lt!866190)))))

(declare-fun b!2371516 () Bool)

(assert (=> b!2371516 (= e!1513554 (forall!5582 (t!208112 lt!866190) lambda!87822))))

(assert (= (and d!695409 (not res!1006673)) b!2371515))

(assert (= (and b!2371515 res!1006674) b!2371516))

(declare-fun b_lambda!73941 () Bool)

(assert (=> (not b_lambda!73941) (not b!2371515)))

(declare-fun m!2779157 () Bool)

(assert (=> b!2371515 m!2779157))

(declare-fun m!2779159 () Bool)

(assert (=> b!2371516 m!2779159))

(assert (=> b!2371431 d!695409))

(declare-fun b!2371528 () Bool)

(declare-fun e!1513560 () Bool)

(declare-fun lt!866238 () List!28134)

(assert (=> b!2371528 (= e!1513560 (or (not (= Nil!28036 Nil!28036)) (= lt!866238 s!9460)))))

(declare-fun d!695411 () Bool)

(assert (=> d!695411 e!1513560))

(declare-fun res!1006680 () Bool)

(assert (=> d!695411 (=> (not res!1006680) (not e!1513560))))

(declare-fun content!3811 (List!28134) (Set C!14054))

(assert (=> d!695411 (= res!1006680 (= (content!3811 lt!866238) (set.union (content!3811 s!9460) (content!3811 Nil!28036))))))

(declare-fun e!1513559 () List!28134)

(assert (=> d!695411 (= lt!866238 e!1513559)))

(declare-fun c!376928 () Bool)

(assert (=> d!695411 (= c!376928 (is-Nil!28036 s!9460))))

(assert (=> d!695411 (= (++!6908 s!9460 Nil!28036) lt!866238)))

(declare-fun b!2371527 () Bool)

(declare-fun res!1006679 () Bool)

(assert (=> b!2371527 (=> (not res!1006679) (not e!1513560))))

(declare-fun size!22149 (List!28134) Int)

(assert (=> b!2371527 (= res!1006679 (= (size!22149 lt!866238) (+ (size!22149 s!9460) (size!22149 Nil!28036))))))

(declare-fun b!2371526 () Bool)

(assert (=> b!2371526 (= e!1513559 (Cons!28036 (h!33437 s!9460) (++!6908 (t!208111 s!9460) Nil!28036)))))

(declare-fun b!2371525 () Bool)

(assert (=> b!2371525 (= e!1513559 Nil!28036)))

(assert (= (and d!695411 c!376928) b!2371525))

(assert (= (and d!695411 (not c!376928)) b!2371526))

(assert (= (and d!695411 res!1006680) b!2371527))

(assert (= (and b!2371527 res!1006679) b!2371528))

(declare-fun m!2779161 () Bool)

(assert (=> d!695411 m!2779161))

(declare-fun m!2779163 () Bool)

(assert (=> d!695411 m!2779163))

(declare-fun m!2779165 () Bool)

(assert (=> d!695411 m!2779165))

(declare-fun m!2779167 () Bool)

(assert (=> b!2371527 m!2779167))

(declare-fun m!2779169 () Bool)

(assert (=> b!2371527 m!2779169))

(declare-fun m!2779171 () Bool)

(assert (=> b!2371527 m!2779171))

(declare-fun m!2779173 () Bool)

(assert (=> b!2371526 m!2779173))

(assert (=> b!2371431 d!695411))

(declare-fun b!2371548 () Bool)

(declare-fun e!1513575 () Option!5491)

(declare-fun e!1513572 () Option!5491)

(assert (=> b!2371548 (= e!1513575 e!1513572)))

(declare-fun c!376934 () Bool)

(assert (=> b!2371548 (= c!376934 (is-Nil!28036 s!9460))))

(declare-fun b!2371549 () Bool)

(declare-fun e!1513574 () Bool)

(assert (=> b!2371549 (= e!1513574 (matchR!3065 EmptyExpr!6948 s!9460))))

(declare-fun b!2371550 () Bool)

(declare-fun e!1513571 () Bool)

(declare-fun lt!866245 () Option!5491)

(declare-fun get!8526 (Option!5491) tuple2!27760)

(assert (=> b!2371550 (= e!1513571 (= (++!6908 (_1!16421 (get!8526 lt!866245)) (_2!16421 (get!8526 lt!866245))) s!9460))))

(declare-fun b!2371551 () Bool)

(declare-fun e!1513573 () Bool)

(assert (=> b!2371551 (= e!1513573 (not (isDefined!4319 lt!866245)))))

(declare-fun b!2371552 () Bool)

(declare-fun res!1006694 () Bool)

(assert (=> b!2371552 (=> (not res!1006694) (not e!1513571))))

(assert (=> b!2371552 (= res!1006694 (matchR!3065 EmptyExpr!6948 (_2!16421 (get!8526 lt!866245))))))

(declare-fun b!2371553 () Bool)

(assert (=> b!2371553 (= e!1513575 (Some!5490 (tuple2!27761 Nil!28036 s!9460)))))

(declare-fun b!2371547 () Bool)

(declare-fun res!1006695 () Bool)

(assert (=> b!2371547 (=> (not res!1006695) (not e!1513571))))

(assert (=> b!2371547 (= res!1006695 (matchR!3065 lt!866191 (_1!16421 (get!8526 lt!866245))))))

(declare-fun d!695413 () Bool)

(assert (=> d!695413 e!1513573))

(declare-fun res!1006691 () Bool)

(assert (=> d!695413 (=> res!1006691 e!1513573)))

(assert (=> d!695413 (= res!1006691 e!1513571)))

(declare-fun res!1006692 () Bool)

(assert (=> d!695413 (=> (not res!1006692) (not e!1513571))))

(assert (=> d!695413 (= res!1006692 (isDefined!4319 lt!866245))))

(assert (=> d!695413 (= lt!866245 e!1513575)))

(declare-fun c!376933 () Bool)

(assert (=> d!695413 (= c!376933 e!1513574)))

(declare-fun res!1006693 () Bool)

(assert (=> d!695413 (=> (not res!1006693) (not e!1513574))))

(assert (=> d!695413 (= res!1006693 (matchR!3065 lt!866191 Nil!28036))))

(assert (=> d!695413 (validRegex!2675 lt!866191)))

(assert (=> d!695413 (= (findConcatSeparation!599 lt!866191 EmptyExpr!6948 Nil!28036 s!9460 s!9460) lt!866245)))

(declare-fun b!2371554 () Bool)

(declare-fun lt!866246 () Unit!40931)

(declare-fun lt!866247 () Unit!40931)

(assert (=> b!2371554 (= lt!866246 lt!866247)))

(assert (=> b!2371554 (= (++!6908 (++!6908 Nil!28036 (Cons!28036 (h!33437 s!9460) Nil!28036)) (t!208111 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!552 (List!28134 C!14054 List!28134 List!28134) Unit!40931)

(assert (=> b!2371554 (= lt!866247 (lemmaMoveElementToOtherListKeepsConcatEq!552 Nil!28036 (h!33437 s!9460) (t!208111 s!9460) s!9460))))

(assert (=> b!2371554 (= e!1513572 (findConcatSeparation!599 lt!866191 EmptyExpr!6948 (++!6908 Nil!28036 (Cons!28036 (h!33437 s!9460) Nil!28036)) (t!208111 s!9460) s!9460))))

(declare-fun b!2371555 () Bool)

(assert (=> b!2371555 (= e!1513572 None!5490)))

(assert (= (and d!695413 res!1006693) b!2371549))

(assert (= (and d!695413 c!376933) b!2371553))

(assert (= (and d!695413 (not c!376933)) b!2371548))

(assert (= (and b!2371548 c!376934) b!2371555))

(assert (= (and b!2371548 (not c!376934)) b!2371554))

(assert (= (and d!695413 res!1006692) b!2371547))

(assert (= (and b!2371547 res!1006695) b!2371552))

(assert (= (and b!2371552 res!1006694) b!2371550))

(assert (= (and d!695413 (not res!1006691)) b!2371551))

(declare-fun m!2779175 () Bool)

(assert (=> b!2371554 m!2779175))

(assert (=> b!2371554 m!2779175))

(declare-fun m!2779177 () Bool)

(assert (=> b!2371554 m!2779177))

(declare-fun m!2779179 () Bool)

(assert (=> b!2371554 m!2779179))

(assert (=> b!2371554 m!2779175))

(declare-fun m!2779181 () Bool)

(assert (=> b!2371554 m!2779181))

(declare-fun m!2779183 () Bool)

(assert (=> b!2371552 m!2779183))

(declare-fun m!2779185 () Bool)

(assert (=> b!2371552 m!2779185))

(declare-fun m!2779187 () Bool)

(assert (=> d!695413 m!2779187))

(declare-fun m!2779189 () Bool)

(assert (=> d!695413 m!2779189))

(assert (=> d!695413 m!2779155))

(assert (=> b!2371547 m!2779183))

(declare-fun m!2779191 () Bool)

(assert (=> b!2371547 m!2779191))

(assert (=> b!2371550 m!2779183))

(declare-fun m!2779193 () Bool)

(assert (=> b!2371550 m!2779193))

(declare-fun m!2779195 () Bool)

(assert (=> b!2371549 m!2779195))

(assert (=> b!2371551 m!2779187))

(assert (=> b!2371431 d!695413))

(declare-fun d!695417 () Bool)

(assert (=> d!695417 (matchR!3065 (Concat!11584 lt!866191 EmptyExpr!6948) (++!6908 s!9460 Nil!28036))))

(declare-fun lt!866250 () Unit!40931)

(declare-fun choose!13804 (Regex!6948 Regex!6948 List!28134 List!28134) Unit!40931)

(assert (=> d!695417 (= lt!866250 (choose!13804 lt!866191 EmptyExpr!6948 s!9460 Nil!28036))))

(declare-fun e!1513578 () Bool)

(assert (=> d!695417 e!1513578))

(declare-fun res!1006698 () Bool)

(assert (=> d!695417 (=> (not res!1006698) (not e!1513578))))

(assert (=> d!695417 (= res!1006698 (validRegex!2675 lt!866191))))

(assert (=> d!695417 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!21 lt!866191 EmptyExpr!6948 s!9460 Nil!28036) lt!866250)))

(declare-fun b!2371558 () Bool)

(assert (=> b!2371558 (= e!1513578 (validRegex!2675 EmptyExpr!6948))))

(assert (= (and d!695417 res!1006698) b!2371558))

(assert (=> d!695417 m!2779069))

(assert (=> d!695417 m!2779069))

(declare-fun m!2779201 () Bool)

(assert (=> d!695417 m!2779201))

(declare-fun m!2779203 () Bool)

(assert (=> d!695417 m!2779203))

(assert (=> d!695417 m!2779155))

(declare-fun m!2779205 () Bool)

(assert (=> b!2371558 m!2779205))

(assert (=> b!2371431 d!695417))

(declare-fun bm!144158 () Bool)

(declare-fun call!144163 () Bool)

(declare-fun isEmpty!15970 (List!28134) Bool)

(assert (=> bm!144158 (= call!144163 (isEmpty!15970 (++!6908 s!9460 Nil!28036)))))

(declare-fun b!2371587 () Bool)

(declare-fun e!1513598 () Bool)

(declare-fun derivativeStep!1662 (Regex!6948 C!14054) Regex!6948)

(declare-fun head!5137 (List!28134) C!14054)

(declare-fun tail!3407 (List!28134) List!28134)

(assert (=> b!2371587 (= e!1513598 (matchR!3065 (derivativeStep!1662 lt!866197 (head!5137 (++!6908 s!9460 Nil!28036))) (tail!3407 (++!6908 s!9460 Nil!28036))))))

(declare-fun b!2371588 () Bool)

(declare-fun res!1006718 () Bool)

(declare-fun e!1513594 () Bool)

(assert (=> b!2371588 (=> res!1006718 e!1513594)))

(assert (=> b!2371588 (= res!1006718 (not (isEmpty!15970 (tail!3407 (++!6908 s!9460 Nil!28036)))))))

(declare-fun b!2371589 () Bool)

(declare-fun nullable!2004 (Regex!6948) Bool)

(assert (=> b!2371589 (= e!1513598 (nullable!2004 lt!866197))))

(declare-fun b!2371590 () Bool)

(declare-fun e!1513595 () Bool)

(assert (=> b!2371590 (= e!1513595 e!1513594)))

(declare-fun res!1006717 () Bool)

(assert (=> b!2371590 (=> res!1006717 e!1513594)))

(assert (=> b!2371590 (= res!1006717 call!144163)))

(declare-fun b!2371591 () Bool)

(declare-fun e!1513597 () Bool)

(assert (=> b!2371591 (= e!1513597 e!1513595)))

(declare-fun res!1006721 () Bool)

(assert (=> b!2371591 (=> (not res!1006721) (not e!1513595))))

(declare-fun lt!866253 () Bool)

(assert (=> b!2371591 (= res!1006721 (not lt!866253))))

(declare-fun b!2371592 () Bool)

(declare-fun e!1513593 () Bool)

(assert (=> b!2371592 (= e!1513593 (not lt!866253))))

(declare-fun b!2371593 () Bool)

(declare-fun res!1006715 () Bool)

(declare-fun e!1513596 () Bool)

(assert (=> b!2371593 (=> (not res!1006715) (not e!1513596))))

(assert (=> b!2371593 (= res!1006715 (isEmpty!15970 (tail!3407 (++!6908 s!9460 Nil!28036))))))

(declare-fun b!2371594 () Bool)

(declare-fun res!1006719 () Bool)

(assert (=> b!2371594 (=> (not res!1006719) (not e!1513596))))

(assert (=> b!2371594 (= res!1006719 (not call!144163))))

(declare-fun b!2371595 () Bool)

(declare-fun res!1006720 () Bool)

(assert (=> b!2371595 (=> res!1006720 e!1513597)))

(assert (=> b!2371595 (= res!1006720 (not (is-ElementMatch!6948 lt!866197)))))

(assert (=> b!2371595 (= e!1513593 e!1513597)))

(declare-fun b!2371596 () Bool)

(declare-fun res!1006716 () Bool)

(assert (=> b!2371596 (=> res!1006716 e!1513597)))

(assert (=> b!2371596 (= res!1006716 e!1513596)))

(declare-fun res!1006722 () Bool)

(assert (=> b!2371596 (=> (not res!1006722) (not e!1513596))))

(assert (=> b!2371596 (= res!1006722 lt!866253)))

(declare-fun d!695423 () Bool)

(declare-fun e!1513599 () Bool)

(assert (=> d!695423 e!1513599))

(declare-fun c!376942 () Bool)

(assert (=> d!695423 (= c!376942 (is-EmptyExpr!6948 lt!866197))))

(assert (=> d!695423 (= lt!866253 e!1513598)))

(declare-fun c!376941 () Bool)

(assert (=> d!695423 (= c!376941 (isEmpty!15970 (++!6908 s!9460 Nil!28036)))))

(assert (=> d!695423 (validRegex!2675 lt!866197)))

(assert (=> d!695423 (= (matchR!3065 lt!866197 (++!6908 s!9460 Nil!28036)) lt!866253)))

(declare-fun b!2371597 () Bool)

(assert (=> b!2371597 (= e!1513594 (not (= (head!5137 (++!6908 s!9460 Nil!28036)) (c!376924 lt!866197))))))

(declare-fun b!2371598 () Bool)

(assert (=> b!2371598 (= e!1513599 e!1513593)))

(declare-fun c!376943 () Bool)

(assert (=> b!2371598 (= c!376943 (is-EmptyLang!6948 lt!866197))))

(declare-fun b!2371599 () Bool)

(assert (=> b!2371599 (= e!1513596 (= (head!5137 (++!6908 s!9460 Nil!28036)) (c!376924 lt!866197)))))

(declare-fun b!2371600 () Bool)

(assert (=> b!2371600 (= e!1513599 (= lt!866253 call!144163))))

(assert (= (and d!695423 c!376941) b!2371589))

(assert (= (and d!695423 (not c!376941)) b!2371587))

(assert (= (and d!695423 c!376942) b!2371600))

(assert (= (and d!695423 (not c!376942)) b!2371598))

(assert (= (and b!2371598 c!376943) b!2371592))

(assert (= (and b!2371598 (not c!376943)) b!2371595))

(assert (= (and b!2371595 (not res!1006720)) b!2371596))

(assert (= (and b!2371596 res!1006722) b!2371594))

(assert (= (and b!2371594 res!1006719) b!2371593))

(assert (= (and b!2371593 res!1006715) b!2371599))

(assert (= (and b!2371596 (not res!1006716)) b!2371591))

(assert (= (and b!2371591 res!1006721) b!2371590))

(assert (= (and b!2371590 (not res!1006717)) b!2371588))

(assert (= (and b!2371588 (not res!1006718)) b!2371597))

(assert (= (or b!2371600 b!2371590 b!2371594) bm!144158))

(assert (=> d!695423 m!2779069))

(declare-fun m!2779207 () Bool)

(assert (=> d!695423 m!2779207))

(declare-fun m!2779209 () Bool)

(assert (=> d!695423 m!2779209))

(assert (=> b!2371597 m!2779069))

(declare-fun m!2779211 () Bool)

(assert (=> b!2371597 m!2779211))

(assert (=> bm!144158 m!2779069))

(assert (=> bm!144158 m!2779207))

(assert (=> b!2371587 m!2779069))

(assert (=> b!2371587 m!2779211))

(assert (=> b!2371587 m!2779211))

(declare-fun m!2779213 () Bool)

(assert (=> b!2371587 m!2779213))

(assert (=> b!2371587 m!2779069))

(declare-fun m!2779215 () Bool)

(assert (=> b!2371587 m!2779215))

(assert (=> b!2371587 m!2779213))

(assert (=> b!2371587 m!2779215))

(declare-fun m!2779217 () Bool)

(assert (=> b!2371587 m!2779217))

(assert (=> b!2371593 m!2779069))

(assert (=> b!2371593 m!2779215))

(assert (=> b!2371593 m!2779215))

(declare-fun m!2779219 () Bool)

(assert (=> b!2371593 m!2779219))

(assert (=> b!2371588 m!2779069))

(assert (=> b!2371588 m!2779215))

(assert (=> b!2371588 m!2779215))

(assert (=> b!2371588 m!2779219))

(declare-fun m!2779221 () Bool)

(assert (=> b!2371589 m!2779221))

(assert (=> b!2371599 m!2779069))

(assert (=> b!2371599 m!2779211))

(assert (=> b!2371431 d!695423))

(declare-fun d!695425 () Bool)

(assert (=> d!695425 (= (isEmpty!15967 lt!866190) (is-Nil!28037 lt!866190))))

(assert (=> b!2371441 d!695425))

(declare-fun d!695427 () Bool)

(assert (=> d!695427 (= (tail!3405 l!9164) (t!208112 l!9164))))

(assert (=> b!2371441 d!695427))

(declare-fun bm!144159 () Bool)

(declare-fun call!144164 () Bool)

(assert (=> bm!144159 (= call!144164 (isEmpty!15970 s!9460))))

(declare-fun b!2371601 () Bool)

(declare-fun e!1513605 () Bool)

(assert (=> b!2371601 (= e!1513605 (matchR!3065 (derivativeStep!1662 lt!866191 (head!5137 s!9460)) (tail!3407 s!9460)))))

(declare-fun b!2371602 () Bool)

(declare-fun res!1006726 () Bool)

(declare-fun e!1513601 () Bool)

(assert (=> b!2371602 (=> res!1006726 e!1513601)))

(assert (=> b!2371602 (= res!1006726 (not (isEmpty!15970 (tail!3407 s!9460))))))

(declare-fun b!2371603 () Bool)

(assert (=> b!2371603 (= e!1513605 (nullable!2004 lt!866191))))

(declare-fun b!2371604 () Bool)

(declare-fun e!1513602 () Bool)

(assert (=> b!2371604 (= e!1513602 e!1513601)))

(declare-fun res!1006725 () Bool)

(assert (=> b!2371604 (=> res!1006725 e!1513601)))

(assert (=> b!2371604 (= res!1006725 call!144164)))

(declare-fun b!2371605 () Bool)

(declare-fun e!1513604 () Bool)

(assert (=> b!2371605 (= e!1513604 e!1513602)))

(declare-fun res!1006729 () Bool)

(assert (=> b!2371605 (=> (not res!1006729) (not e!1513602))))

(declare-fun lt!866256 () Bool)

(assert (=> b!2371605 (= res!1006729 (not lt!866256))))

(declare-fun b!2371606 () Bool)

(declare-fun e!1513600 () Bool)

(assert (=> b!2371606 (= e!1513600 (not lt!866256))))

(declare-fun b!2371607 () Bool)

(declare-fun res!1006723 () Bool)

(declare-fun e!1513603 () Bool)

(assert (=> b!2371607 (=> (not res!1006723) (not e!1513603))))

(assert (=> b!2371607 (= res!1006723 (isEmpty!15970 (tail!3407 s!9460)))))

(declare-fun b!2371608 () Bool)

(declare-fun res!1006727 () Bool)

(assert (=> b!2371608 (=> (not res!1006727) (not e!1513603))))

(assert (=> b!2371608 (= res!1006727 (not call!144164))))

(declare-fun b!2371609 () Bool)

(declare-fun res!1006728 () Bool)

(assert (=> b!2371609 (=> res!1006728 e!1513604)))

(assert (=> b!2371609 (= res!1006728 (not (is-ElementMatch!6948 lt!866191)))))

(assert (=> b!2371609 (= e!1513600 e!1513604)))

(declare-fun b!2371610 () Bool)

(declare-fun res!1006724 () Bool)

(assert (=> b!2371610 (=> res!1006724 e!1513604)))

(assert (=> b!2371610 (= res!1006724 e!1513603)))

(declare-fun res!1006730 () Bool)

(assert (=> b!2371610 (=> (not res!1006730) (not e!1513603))))

(assert (=> b!2371610 (= res!1006730 lt!866256)))

(declare-fun d!695429 () Bool)

(declare-fun e!1513606 () Bool)

(assert (=> d!695429 e!1513606))

(declare-fun c!376945 () Bool)

(assert (=> d!695429 (= c!376945 (is-EmptyExpr!6948 lt!866191))))

(assert (=> d!695429 (= lt!866256 e!1513605)))

(declare-fun c!376944 () Bool)

(assert (=> d!695429 (= c!376944 (isEmpty!15970 s!9460))))

(assert (=> d!695429 (validRegex!2675 lt!866191)))

(assert (=> d!695429 (= (matchR!3065 lt!866191 s!9460) lt!866256)))

(declare-fun b!2371611 () Bool)

(assert (=> b!2371611 (= e!1513601 (not (= (head!5137 s!9460) (c!376924 lt!866191))))))

(declare-fun b!2371612 () Bool)

(assert (=> b!2371612 (= e!1513606 e!1513600)))

(declare-fun c!376946 () Bool)

(assert (=> b!2371612 (= c!376946 (is-EmptyLang!6948 lt!866191))))

(declare-fun b!2371613 () Bool)

(assert (=> b!2371613 (= e!1513603 (= (head!5137 s!9460) (c!376924 lt!866191)))))

(declare-fun b!2371614 () Bool)

(assert (=> b!2371614 (= e!1513606 (= lt!866256 call!144164))))

(assert (= (and d!695429 c!376944) b!2371603))

(assert (= (and d!695429 (not c!376944)) b!2371601))

(assert (= (and d!695429 c!376945) b!2371614))

(assert (= (and d!695429 (not c!376945)) b!2371612))

(assert (= (and b!2371612 c!376946) b!2371606))

(assert (= (and b!2371612 (not c!376946)) b!2371609))

(assert (= (and b!2371609 (not res!1006728)) b!2371610))

(assert (= (and b!2371610 res!1006730) b!2371608))

(assert (= (and b!2371608 res!1006727) b!2371607))

(assert (= (and b!2371607 res!1006723) b!2371613))

(assert (= (and b!2371610 (not res!1006724)) b!2371605))

(assert (= (and b!2371605 res!1006729) b!2371604))

(assert (= (and b!2371604 (not res!1006725)) b!2371602))

(assert (= (and b!2371602 (not res!1006726)) b!2371611))

(assert (= (or b!2371614 b!2371604 b!2371608) bm!144159))

(declare-fun m!2779223 () Bool)

(assert (=> d!695429 m!2779223))

(assert (=> d!695429 m!2779155))

(declare-fun m!2779225 () Bool)

(assert (=> b!2371611 m!2779225))

(assert (=> bm!144159 m!2779223))

(assert (=> b!2371601 m!2779225))

(assert (=> b!2371601 m!2779225))

(declare-fun m!2779227 () Bool)

(assert (=> b!2371601 m!2779227))

(declare-fun m!2779229 () Bool)

(assert (=> b!2371601 m!2779229))

(assert (=> b!2371601 m!2779227))

(assert (=> b!2371601 m!2779229))

(declare-fun m!2779231 () Bool)

(assert (=> b!2371601 m!2779231))

(assert (=> b!2371607 m!2779229))

(assert (=> b!2371607 m!2779229))

(declare-fun m!2779233 () Bool)

(assert (=> b!2371607 m!2779233))

(assert (=> b!2371602 m!2779229))

(assert (=> b!2371602 m!2779229))

(assert (=> b!2371602 m!2779233))

(declare-fun m!2779235 () Bool)

(assert (=> b!2371603 m!2779235))

(assert (=> b!2371613 m!2779225))

(assert (=> b!2371430 d!695429))

(declare-fun d!695431 () Bool)

(assert (=> d!695431 (= (head!5135 l!9164) (h!33438 l!9164))))

(assert (=> b!2371430 d!695431))

(declare-fun bs!461275 () Bool)

(declare-fun d!695433 () Bool)

(assert (= bs!461275 (and d!695433 start!232726)))

(declare-fun lambda!87843 () Int)

(assert (=> bs!461275 (= lambda!87843 lambda!87822)))

(declare-fun b!2371639 () Bool)

(declare-fun e!1513624 () Bool)

(declare-fun lt!866260 () Regex!6948)

(declare-fun isConcat!27 (Regex!6948) Bool)

(assert (=> b!2371639 (= e!1513624 (isConcat!27 lt!866260))))

(declare-fun b!2371640 () Bool)

(declare-fun e!1513622 () Regex!6948)

(assert (=> b!2371640 (= e!1513622 EmptyExpr!6948)))

(declare-fun b!2371641 () Bool)

(assert (=> b!2371641 (= e!1513624 (= lt!866260 (head!5135 lt!866190)))))

(declare-fun b!2371642 () Bool)

(declare-fun e!1513625 () Bool)

(declare-fun isEmptyExpr!27 (Regex!6948) Bool)

(assert (=> b!2371642 (= e!1513625 (isEmptyExpr!27 lt!866260))))

(declare-fun e!1513621 () Bool)

(assert (=> d!695433 e!1513621))

(declare-fun res!1006740 () Bool)

(assert (=> d!695433 (=> (not res!1006740) (not e!1513621))))

(assert (=> d!695433 (= res!1006740 (validRegex!2675 lt!866260))))

(declare-fun e!1513623 () Regex!6948)

(assert (=> d!695433 (= lt!866260 e!1513623)))

(declare-fun c!376956 () Bool)

(declare-fun e!1513626 () Bool)

(assert (=> d!695433 (= c!376956 e!1513626)))

(declare-fun res!1006739 () Bool)

(assert (=> d!695433 (=> (not res!1006739) (not e!1513626))))

(assert (=> d!695433 (= res!1006739 (is-Cons!28037 lt!866190))))

(assert (=> d!695433 (forall!5582 lt!866190 lambda!87843)))

(assert (=> d!695433 (= (generalisedConcat!49 lt!866190) lt!866260)))

(declare-fun b!2371643 () Bool)

(assert (=> b!2371643 (= e!1513623 (h!33438 lt!866190))))

(declare-fun b!2371644 () Bool)

(assert (=> b!2371644 (= e!1513623 e!1513622)))

(declare-fun c!376955 () Bool)

(assert (=> b!2371644 (= c!376955 (is-Cons!28037 lt!866190))))

(declare-fun b!2371645 () Bool)

(assert (=> b!2371645 (= e!1513621 e!1513625)))

(declare-fun c!376957 () Bool)

(assert (=> b!2371645 (= c!376957 (isEmpty!15967 lt!866190))))

(declare-fun b!2371646 () Bool)

(assert (=> b!2371646 (= e!1513625 e!1513624)))

(declare-fun c!376958 () Bool)

(assert (=> b!2371646 (= c!376958 (isEmpty!15967 (tail!3405 lt!866190)))))

(declare-fun b!2371647 () Bool)

(assert (=> b!2371647 (= e!1513622 (Concat!11584 (h!33438 lt!866190) (generalisedConcat!49 (t!208112 lt!866190))))))

(declare-fun b!2371648 () Bool)

(assert (=> b!2371648 (= e!1513626 (isEmpty!15967 (t!208112 lt!866190)))))

(assert (= (and d!695433 res!1006739) b!2371648))

(assert (= (and d!695433 c!376956) b!2371643))

(assert (= (and d!695433 (not c!376956)) b!2371644))

(assert (= (and b!2371644 c!376955) b!2371647))

(assert (= (and b!2371644 (not c!376955)) b!2371640))

(assert (= (and d!695433 res!1006740) b!2371645))

(assert (= (and b!2371645 c!376957) b!2371642))

(assert (= (and b!2371645 (not c!376957)) b!2371646))

(assert (= (and b!2371646 c!376958) b!2371641))

(assert (= (and b!2371646 (not c!376958)) b!2371639))

(declare-fun m!2779243 () Bool)

(assert (=> b!2371646 m!2779243))

(assert (=> b!2371646 m!2779243))

(declare-fun m!2779245 () Bool)

(assert (=> b!2371646 m!2779245))

(declare-fun m!2779247 () Bool)

(assert (=> b!2371647 m!2779247))

(declare-fun m!2779249 () Bool)

(assert (=> b!2371641 m!2779249))

(declare-fun m!2779251 () Bool)

(assert (=> d!695433 m!2779251))

(declare-fun m!2779253 () Bool)

(assert (=> d!695433 m!2779253))

(declare-fun m!2779255 () Bool)

(assert (=> b!2371642 m!2779255))

(declare-fun m!2779257 () Bool)

(assert (=> b!2371639 m!2779257))

(assert (=> b!2371645 m!2779081))

(declare-fun m!2779259 () Bool)

(assert (=> b!2371648 m!2779259))

(assert (=> b!2371443 d!695433))

(declare-fun bm!144160 () Bool)

(declare-fun call!144165 () Bool)

(assert (=> bm!144160 (= call!144165 (isEmpty!15970 s!9460))))

(declare-fun b!2371649 () Bool)

(declare-fun e!1513632 () Bool)

(assert (=> b!2371649 (= e!1513632 (matchR!3065 (derivativeStep!1662 lt!866197 (head!5137 s!9460)) (tail!3407 s!9460)))))

(declare-fun b!2371650 () Bool)

(declare-fun res!1006744 () Bool)

(declare-fun e!1513628 () Bool)

(assert (=> b!2371650 (=> res!1006744 e!1513628)))

(assert (=> b!2371650 (= res!1006744 (not (isEmpty!15970 (tail!3407 s!9460))))))

(declare-fun b!2371651 () Bool)

(assert (=> b!2371651 (= e!1513632 (nullable!2004 lt!866197))))

(declare-fun b!2371652 () Bool)

(declare-fun e!1513629 () Bool)

(assert (=> b!2371652 (= e!1513629 e!1513628)))

(declare-fun res!1006743 () Bool)

(assert (=> b!2371652 (=> res!1006743 e!1513628)))

(assert (=> b!2371652 (= res!1006743 call!144165)))

(declare-fun b!2371653 () Bool)

(declare-fun e!1513631 () Bool)

(assert (=> b!2371653 (= e!1513631 e!1513629)))

(declare-fun res!1006747 () Bool)

(assert (=> b!2371653 (=> (not res!1006747) (not e!1513629))))

(declare-fun lt!866261 () Bool)

(assert (=> b!2371653 (= res!1006747 (not lt!866261))))

(declare-fun b!2371654 () Bool)

(declare-fun e!1513627 () Bool)

(assert (=> b!2371654 (= e!1513627 (not lt!866261))))

(declare-fun b!2371655 () Bool)

(declare-fun res!1006741 () Bool)

(declare-fun e!1513630 () Bool)

(assert (=> b!2371655 (=> (not res!1006741) (not e!1513630))))

(assert (=> b!2371655 (= res!1006741 (isEmpty!15970 (tail!3407 s!9460)))))

(declare-fun b!2371656 () Bool)

(declare-fun res!1006745 () Bool)

(assert (=> b!2371656 (=> (not res!1006745) (not e!1513630))))

(assert (=> b!2371656 (= res!1006745 (not call!144165))))

(declare-fun b!2371657 () Bool)

(declare-fun res!1006746 () Bool)

(assert (=> b!2371657 (=> res!1006746 e!1513631)))

(assert (=> b!2371657 (= res!1006746 (not (is-ElementMatch!6948 lt!866197)))))

(assert (=> b!2371657 (= e!1513627 e!1513631)))

(declare-fun b!2371658 () Bool)

(declare-fun res!1006742 () Bool)

(assert (=> b!2371658 (=> res!1006742 e!1513631)))

(assert (=> b!2371658 (= res!1006742 e!1513630)))

(declare-fun res!1006748 () Bool)

(assert (=> b!2371658 (=> (not res!1006748) (not e!1513630))))

(assert (=> b!2371658 (= res!1006748 lt!866261)))

(declare-fun d!695437 () Bool)

(declare-fun e!1513633 () Bool)

(assert (=> d!695437 e!1513633))

(declare-fun c!376960 () Bool)

(assert (=> d!695437 (= c!376960 (is-EmptyExpr!6948 lt!866197))))

(assert (=> d!695437 (= lt!866261 e!1513632)))

(declare-fun c!376959 () Bool)

(assert (=> d!695437 (= c!376959 (isEmpty!15970 s!9460))))

(assert (=> d!695437 (validRegex!2675 lt!866197)))

(assert (=> d!695437 (= (matchR!3065 lt!866197 s!9460) lt!866261)))

(declare-fun b!2371659 () Bool)

(assert (=> b!2371659 (= e!1513628 (not (= (head!5137 s!9460) (c!376924 lt!866197))))))

(declare-fun b!2371660 () Bool)

(assert (=> b!2371660 (= e!1513633 e!1513627)))

(declare-fun c!376961 () Bool)

(assert (=> b!2371660 (= c!376961 (is-EmptyLang!6948 lt!866197))))

(declare-fun b!2371661 () Bool)

(assert (=> b!2371661 (= e!1513630 (= (head!5137 s!9460) (c!376924 lt!866197)))))

(declare-fun b!2371662 () Bool)

(assert (=> b!2371662 (= e!1513633 (= lt!866261 call!144165))))

(assert (= (and d!695437 c!376959) b!2371651))

(assert (= (and d!695437 (not c!376959)) b!2371649))

(assert (= (and d!695437 c!376960) b!2371662))

(assert (= (and d!695437 (not c!376960)) b!2371660))

(assert (= (and b!2371660 c!376961) b!2371654))

(assert (= (and b!2371660 (not c!376961)) b!2371657))

(assert (= (and b!2371657 (not res!1006746)) b!2371658))

(assert (= (and b!2371658 res!1006748) b!2371656))

(assert (= (and b!2371656 res!1006745) b!2371655))

(assert (= (and b!2371655 res!1006741) b!2371661))

(assert (= (and b!2371658 (not res!1006742)) b!2371653))

(assert (= (and b!2371653 res!1006747) b!2371652))

(assert (= (and b!2371652 (not res!1006743)) b!2371650))

(assert (= (and b!2371650 (not res!1006744)) b!2371659))

(assert (= (or b!2371662 b!2371652 b!2371656) bm!144160))

(assert (=> d!695437 m!2779223))

(assert (=> d!695437 m!2779209))

(assert (=> b!2371659 m!2779225))

(assert (=> bm!144160 m!2779223))

(assert (=> b!2371649 m!2779225))

(assert (=> b!2371649 m!2779225))

(declare-fun m!2779261 () Bool)

(assert (=> b!2371649 m!2779261))

(assert (=> b!2371649 m!2779229))

(assert (=> b!2371649 m!2779261))

(assert (=> b!2371649 m!2779229))

(declare-fun m!2779263 () Bool)

(assert (=> b!2371649 m!2779263))

(assert (=> b!2371655 m!2779229))

(assert (=> b!2371655 m!2779229))

(assert (=> b!2371655 m!2779233))

(assert (=> b!2371650 m!2779229))

(assert (=> b!2371650 m!2779229))

(assert (=> b!2371650 m!2779233))

(assert (=> b!2371651 m!2779221))

(assert (=> b!2371661 m!2779225))

(assert (=> b!2371437 d!695437))

(declare-fun bs!461276 () Bool)

(declare-fun d!695439 () Bool)

(assert (= bs!461276 (and d!695439 start!232726)))

(declare-fun lambda!87844 () Int)

(assert (=> bs!461276 (= lambda!87844 lambda!87822)))

(declare-fun bs!461277 () Bool)

(assert (= bs!461277 (and d!695439 d!695433)))

(assert (=> bs!461277 (= lambda!87844 lambda!87843)))

(declare-fun b!2371663 () Bool)

(declare-fun e!1513637 () Bool)

(declare-fun lt!866262 () Regex!6948)

(assert (=> b!2371663 (= e!1513637 (isConcat!27 lt!866262))))

(declare-fun b!2371664 () Bool)

(declare-fun e!1513635 () Regex!6948)

(assert (=> b!2371664 (= e!1513635 EmptyExpr!6948)))

(declare-fun b!2371665 () Bool)

(assert (=> b!2371665 (= e!1513637 (= lt!866262 (head!5135 l!9164)))))

(declare-fun b!2371666 () Bool)

(declare-fun e!1513638 () Bool)

(assert (=> b!2371666 (= e!1513638 (isEmptyExpr!27 lt!866262))))

(declare-fun e!1513634 () Bool)

(assert (=> d!695439 e!1513634))

(declare-fun res!1006750 () Bool)

(assert (=> d!695439 (=> (not res!1006750) (not e!1513634))))

(assert (=> d!695439 (= res!1006750 (validRegex!2675 lt!866262))))

(declare-fun e!1513636 () Regex!6948)

(assert (=> d!695439 (= lt!866262 e!1513636)))

(declare-fun c!376963 () Bool)

(declare-fun e!1513639 () Bool)

(assert (=> d!695439 (= c!376963 e!1513639)))

(declare-fun res!1006749 () Bool)

(assert (=> d!695439 (=> (not res!1006749) (not e!1513639))))

(assert (=> d!695439 (= res!1006749 (is-Cons!28037 l!9164))))

(assert (=> d!695439 (forall!5582 l!9164 lambda!87844)))

(assert (=> d!695439 (= (generalisedConcat!49 l!9164) lt!866262)))

(declare-fun b!2371667 () Bool)

(assert (=> b!2371667 (= e!1513636 (h!33438 l!9164))))

(declare-fun b!2371668 () Bool)

(assert (=> b!2371668 (= e!1513636 e!1513635)))

(declare-fun c!376962 () Bool)

(assert (=> b!2371668 (= c!376962 (is-Cons!28037 l!9164))))

(declare-fun b!2371669 () Bool)

(assert (=> b!2371669 (= e!1513634 e!1513638)))

(declare-fun c!376964 () Bool)

(assert (=> b!2371669 (= c!376964 (isEmpty!15967 l!9164))))

(declare-fun b!2371670 () Bool)

(assert (=> b!2371670 (= e!1513638 e!1513637)))

(declare-fun c!376965 () Bool)

(assert (=> b!2371670 (= c!376965 (isEmpty!15967 (tail!3405 l!9164)))))

(declare-fun b!2371671 () Bool)

(assert (=> b!2371671 (= e!1513635 (Concat!11584 (h!33438 l!9164) (generalisedConcat!49 (t!208112 l!9164))))))

(declare-fun b!2371672 () Bool)

(assert (=> b!2371672 (= e!1513639 (isEmpty!15967 (t!208112 l!9164)))))

(assert (= (and d!695439 res!1006749) b!2371672))

(assert (= (and d!695439 c!376963) b!2371667))

(assert (= (and d!695439 (not c!376963)) b!2371668))

(assert (= (and b!2371668 c!376962) b!2371671))

(assert (= (and b!2371668 (not c!376962)) b!2371664))

(assert (= (and d!695439 res!1006750) b!2371669))

(assert (= (and b!2371669 c!376964) b!2371666))

(assert (= (and b!2371669 (not c!376964)) b!2371670))

(assert (= (and b!2371670 c!376965) b!2371665))

(assert (= (and b!2371670 (not c!376965)) b!2371663))

(assert (=> b!2371670 m!2779083))

(assert (=> b!2371670 m!2779083))

(declare-fun m!2779265 () Bool)

(assert (=> b!2371670 m!2779265))

(declare-fun m!2779267 () Bool)

(assert (=> b!2371671 m!2779267))

(assert (=> b!2371665 m!2779061))

(declare-fun m!2779269 () Bool)

(assert (=> d!695439 m!2779269))

(declare-fun m!2779271 () Bool)

(assert (=> d!695439 m!2779271))

(declare-fun m!2779273 () Bool)

(assert (=> b!2371666 m!2779273))

(declare-fun m!2779275 () Bool)

(assert (=> b!2371663 m!2779275))

(assert (=> b!2371669 m!2779063))

(declare-fun m!2779277 () Bool)

(assert (=> b!2371672 m!2779277))

(assert (=> b!2371433 d!695439))

(declare-fun d!695441 () Bool)

(assert (=> d!695441 (= (isEmpty!15967 l!9164) (is-Nil!28037 l!9164))))

(assert (=> b!2371438 d!695441))

(declare-fun bs!461278 () Bool)

(declare-fun b!2371710 () Bool)

(assert (= bs!461278 (and b!2371710 b!2371429)))

(declare-fun lambda!87851 () Int)

(assert (=> bs!461278 (not (= lambda!87851 lambda!87823))))

(assert (=> bs!461278 (not (= lambda!87851 lambda!87824))))

(assert (=> b!2371710 true))

(assert (=> b!2371710 true))

(declare-fun bs!461279 () Bool)

(declare-fun b!2371713 () Bool)

(assert (= bs!461279 (and b!2371713 b!2371429)))

(declare-fun lambda!87852 () Int)

(assert (=> bs!461279 (not (= lambda!87852 lambda!87823))))

(assert (=> bs!461279 (= lambda!87852 lambda!87824)))

(declare-fun bs!461280 () Bool)

(assert (= bs!461280 (and b!2371713 b!2371710)))

(assert (=> bs!461280 (not (= lambda!87852 lambda!87851))))

(assert (=> b!2371713 true))

(assert (=> b!2371713 true))

(declare-fun c!376977 () Bool)

(declare-fun bm!144165 () Bool)

(declare-fun call!144171 () Bool)

(assert (=> bm!144165 (= call!144171 (Exists!1010 (ite c!376977 lambda!87851 lambda!87852)))))

(declare-fun e!1513660 () Bool)

(assert (=> b!2371710 (= e!1513660 call!144171)))

(declare-fun b!2371711 () Bool)

(declare-fun e!1513664 () Bool)

(declare-fun e!1513665 () Bool)

(assert (=> b!2371711 (= e!1513664 e!1513665)))

(assert (=> b!2371711 (= c!376977 (is-Star!6948 r!13927))))

(declare-fun b!2371712 () Bool)

(declare-fun res!1006773 () Bool)

(assert (=> b!2371712 (=> res!1006773 e!1513660)))

(declare-fun call!144170 () Bool)

(assert (=> b!2371712 (= res!1006773 call!144170)))

(assert (=> b!2371712 (= e!1513665 e!1513660)))

(assert (=> b!2371713 (= e!1513665 call!144171)))

(declare-fun d!695443 () Bool)

(declare-fun c!376974 () Bool)

(assert (=> d!695443 (= c!376974 (is-EmptyExpr!6948 r!13927))))

(declare-fun e!1513663 () Bool)

(assert (=> d!695443 (= (matchRSpec!797 r!13927 s!9460) e!1513663)))

(declare-fun b!2371709 () Bool)

(assert (=> b!2371709 (= e!1513663 call!144170)))

(declare-fun bm!144166 () Bool)

(assert (=> bm!144166 (= call!144170 (isEmpty!15970 s!9460))))

(declare-fun b!2371714 () Bool)

(declare-fun e!1513666 () Bool)

(assert (=> b!2371714 (= e!1513666 (matchRSpec!797 (regTwo!14409 r!13927) s!9460))))

(declare-fun b!2371715 () Bool)

(declare-fun e!1513661 () Bool)

(assert (=> b!2371715 (= e!1513663 e!1513661)))

(declare-fun res!1006772 () Bool)

(assert (=> b!2371715 (= res!1006772 (not (is-EmptyLang!6948 r!13927)))))

(assert (=> b!2371715 (=> (not res!1006772) (not e!1513661))))

(declare-fun b!2371716 () Bool)

(declare-fun e!1513662 () Bool)

(assert (=> b!2371716 (= e!1513662 (= s!9460 (Cons!28036 (c!376924 r!13927) Nil!28036)))))

(declare-fun b!2371717 () Bool)

(assert (=> b!2371717 (= e!1513664 e!1513666)))

(declare-fun res!1006771 () Bool)

(assert (=> b!2371717 (= res!1006771 (matchRSpec!797 (regOne!14409 r!13927) s!9460))))

(assert (=> b!2371717 (=> res!1006771 e!1513666)))

(declare-fun b!2371718 () Bool)

(declare-fun c!376975 () Bool)

(assert (=> b!2371718 (= c!376975 (is-Union!6948 r!13927))))

(assert (=> b!2371718 (= e!1513662 e!1513664)))

(declare-fun b!2371719 () Bool)

(declare-fun c!376976 () Bool)

(assert (=> b!2371719 (= c!376976 (is-ElementMatch!6948 r!13927))))

(assert (=> b!2371719 (= e!1513661 e!1513662)))

(assert (= (and d!695443 c!376974) b!2371709))

(assert (= (and d!695443 (not c!376974)) b!2371715))

(assert (= (and b!2371715 res!1006772) b!2371719))

(assert (= (and b!2371719 c!376976) b!2371716))

(assert (= (and b!2371719 (not c!376976)) b!2371718))

(assert (= (and b!2371718 c!376975) b!2371717))

(assert (= (and b!2371718 (not c!376975)) b!2371711))

(assert (= (and b!2371717 (not res!1006771)) b!2371714))

(assert (= (and b!2371711 c!376977) b!2371712))

(assert (= (and b!2371711 (not c!376977)) b!2371713))

(assert (= (and b!2371712 (not res!1006773)) b!2371710))

(assert (= (or b!2371710 b!2371713) bm!144165))

(assert (= (or b!2371709 b!2371712) bm!144166))

(declare-fun m!2779279 () Bool)

(assert (=> bm!144165 m!2779279))

(assert (=> bm!144166 m!2779223))

(declare-fun m!2779281 () Bool)

(assert (=> b!2371714 m!2779281))

(declare-fun m!2779283 () Bool)

(assert (=> b!2371717 m!2779283))

(assert (=> b!2371435 d!695443))

(declare-fun bm!144167 () Bool)

(declare-fun call!144172 () Bool)

(assert (=> bm!144167 (= call!144172 (isEmpty!15970 s!9460))))

(declare-fun b!2371724 () Bool)

(declare-fun e!1513674 () Bool)

(assert (=> b!2371724 (= e!1513674 (matchR!3065 (derivativeStep!1662 r!13927 (head!5137 s!9460)) (tail!3407 s!9460)))))

(declare-fun b!2371725 () Bool)

(declare-fun res!1006781 () Bool)

(declare-fun e!1513670 () Bool)

(assert (=> b!2371725 (=> res!1006781 e!1513670)))

(assert (=> b!2371725 (= res!1006781 (not (isEmpty!15970 (tail!3407 s!9460))))))

(declare-fun b!2371726 () Bool)

(assert (=> b!2371726 (= e!1513674 (nullable!2004 r!13927))))

(declare-fun b!2371727 () Bool)

(declare-fun e!1513671 () Bool)

(assert (=> b!2371727 (= e!1513671 e!1513670)))

(declare-fun res!1006780 () Bool)

(assert (=> b!2371727 (=> res!1006780 e!1513670)))

(assert (=> b!2371727 (= res!1006780 call!144172)))

(declare-fun b!2371728 () Bool)

(declare-fun e!1513673 () Bool)

(assert (=> b!2371728 (= e!1513673 e!1513671)))

(declare-fun res!1006784 () Bool)

(assert (=> b!2371728 (=> (not res!1006784) (not e!1513671))))

(declare-fun lt!866265 () Bool)

(assert (=> b!2371728 (= res!1006784 (not lt!866265))))

(declare-fun b!2371729 () Bool)

(declare-fun e!1513669 () Bool)

(assert (=> b!2371729 (= e!1513669 (not lt!866265))))

(declare-fun b!2371730 () Bool)

(declare-fun res!1006778 () Bool)

(declare-fun e!1513672 () Bool)

(assert (=> b!2371730 (=> (not res!1006778) (not e!1513672))))

(assert (=> b!2371730 (= res!1006778 (isEmpty!15970 (tail!3407 s!9460)))))

(declare-fun b!2371731 () Bool)

(declare-fun res!1006782 () Bool)

(assert (=> b!2371731 (=> (not res!1006782) (not e!1513672))))

(assert (=> b!2371731 (= res!1006782 (not call!144172))))

(declare-fun b!2371732 () Bool)

(declare-fun res!1006783 () Bool)

(assert (=> b!2371732 (=> res!1006783 e!1513673)))

(assert (=> b!2371732 (= res!1006783 (not (is-ElementMatch!6948 r!13927)))))

(assert (=> b!2371732 (= e!1513669 e!1513673)))

(declare-fun b!2371733 () Bool)

(declare-fun res!1006779 () Bool)

(assert (=> b!2371733 (=> res!1006779 e!1513673)))

(assert (=> b!2371733 (= res!1006779 e!1513672)))

(declare-fun res!1006785 () Bool)

(assert (=> b!2371733 (=> (not res!1006785) (not e!1513672))))

(assert (=> b!2371733 (= res!1006785 lt!866265)))

(declare-fun d!695445 () Bool)

(declare-fun e!1513675 () Bool)

(assert (=> d!695445 e!1513675))

(declare-fun c!376979 () Bool)

(assert (=> d!695445 (= c!376979 (is-EmptyExpr!6948 r!13927))))

(assert (=> d!695445 (= lt!866265 e!1513674)))

(declare-fun c!376978 () Bool)

(assert (=> d!695445 (= c!376978 (isEmpty!15970 s!9460))))

(assert (=> d!695445 (validRegex!2675 r!13927)))

(assert (=> d!695445 (= (matchR!3065 r!13927 s!9460) lt!866265)))

(declare-fun b!2371734 () Bool)

(assert (=> b!2371734 (= e!1513670 (not (= (head!5137 s!9460) (c!376924 r!13927))))))

(declare-fun b!2371735 () Bool)

(assert (=> b!2371735 (= e!1513675 e!1513669)))

(declare-fun c!376980 () Bool)

(assert (=> b!2371735 (= c!376980 (is-EmptyLang!6948 r!13927))))

(declare-fun b!2371736 () Bool)

(assert (=> b!2371736 (= e!1513672 (= (head!5137 s!9460) (c!376924 r!13927)))))

(declare-fun b!2371737 () Bool)

(assert (=> b!2371737 (= e!1513675 (= lt!866265 call!144172))))

(assert (= (and d!695445 c!376978) b!2371726))

(assert (= (and d!695445 (not c!376978)) b!2371724))

(assert (= (and d!695445 c!376979) b!2371737))

(assert (= (and d!695445 (not c!376979)) b!2371735))

(assert (= (and b!2371735 c!376980) b!2371729))

(assert (= (and b!2371735 (not c!376980)) b!2371732))

(assert (= (and b!2371732 (not res!1006783)) b!2371733))

(assert (= (and b!2371733 res!1006785) b!2371731))

(assert (= (and b!2371731 res!1006782) b!2371730))

(assert (= (and b!2371730 res!1006778) b!2371736))

(assert (= (and b!2371733 (not res!1006779)) b!2371728))

(assert (= (and b!2371728 res!1006784) b!2371727))

(assert (= (and b!2371727 (not res!1006780)) b!2371725))

(assert (= (and b!2371725 (not res!1006781)) b!2371734))

(assert (= (or b!2371737 b!2371727 b!2371731) bm!144167))

(assert (=> d!695445 m!2779223))

(declare-fun m!2779285 () Bool)

(assert (=> d!695445 m!2779285))

(assert (=> b!2371734 m!2779225))

(assert (=> bm!144167 m!2779223))

(assert (=> b!2371724 m!2779225))

(assert (=> b!2371724 m!2779225))

(declare-fun m!2779287 () Bool)

(assert (=> b!2371724 m!2779287))

(assert (=> b!2371724 m!2779229))

(assert (=> b!2371724 m!2779287))

(assert (=> b!2371724 m!2779229))

(declare-fun m!2779289 () Bool)

(assert (=> b!2371724 m!2779289))

(assert (=> b!2371730 m!2779229))

(assert (=> b!2371730 m!2779229))

(assert (=> b!2371730 m!2779233))

(assert (=> b!2371725 m!2779229))

(assert (=> b!2371725 m!2779229))

(assert (=> b!2371725 m!2779233))

(declare-fun m!2779291 () Bool)

(assert (=> b!2371726 m!2779291))

(assert (=> b!2371736 m!2779225))

(assert (=> b!2371435 d!695445))

(declare-fun d!695447 () Bool)

(assert (=> d!695447 (= (matchR!3065 r!13927 s!9460) (matchRSpec!797 r!13927 s!9460))))

(declare-fun lt!866269 () Unit!40931)

(declare-fun choose!13805 (Regex!6948 List!28134) Unit!40931)

(assert (=> d!695447 (= lt!866269 (choose!13805 r!13927 s!9460))))

(assert (=> d!695447 (validRegex!2675 r!13927)))

(assert (=> d!695447 (= (mainMatchTheorem!797 r!13927 s!9460) lt!866269)))

(declare-fun bs!461281 () Bool)

(assert (= bs!461281 d!695447))

(assert (=> bs!461281 m!2779051))

(assert (=> bs!461281 m!2779049))

(declare-fun m!2779293 () Bool)

(assert (=> bs!461281 m!2779293))

(assert (=> bs!461281 m!2779285))

(assert (=> b!2371435 d!695447))

(declare-fun d!695449 () Bool)

(assert (=> d!695449 (= (isDefined!4319 (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) Nil!28036 s!9460 s!9460)) (not (isEmpty!15969 (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) Nil!28036 s!9460 s!9460))))))

(declare-fun bs!461282 () Bool)

(assert (= bs!461282 d!695449))

(assert (=> bs!461282 m!2779089))

(declare-fun m!2779295 () Bool)

(assert (=> bs!461282 m!2779295))

(assert (=> b!2371429 d!695449))

(declare-fun bs!461287 () Bool)

(declare-fun d!695451 () Bool)

(assert (= bs!461287 (and d!695451 b!2371429)))

(declare-fun lambda!87859 () Int)

(assert (=> bs!461287 (= lambda!87859 lambda!87823)))

(assert (=> bs!461287 (not (= lambda!87859 lambda!87824))))

(declare-fun bs!461288 () Bool)

(assert (= bs!461288 (and d!695451 b!2371710)))

(assert (=> bs!461288 (not (= lambda!87859 lambda!87851))))

(declare-fun bs!461289 () Bool)

(assert (= bs!461289 (and d!695451 b!2371713)))

(assert (=> bs!461289 (not (= lambda!87859 lambda!87852))))

(assert (=> d!695451 true))

(assert (=> d!695451 true))

(assert (=> d!695451 true))

(assert (=> d!695451 (= (isDefined!4319 (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) Nil!28036 s!9460 s!9460)) (Exists!1010 lambda!87859))))

(declare-fun lt!866272 () Unit!40931)

(declare-fun choose!13806 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> d!695451 (= lt!866272 (choose!13806 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460))))

(assert (=> d!695451 (validRegex!2675 (regOne!14408 r!13927))))

(assert (=> d!695451 (= (lemmaFindConcatSeparationEquivalentToExists!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460) lt!866272)))

(declare-fun bs!461290 () Bool)

(assert (= bs!461290 d!695451))

(declare-fun m!2779305 () Bool)

(assert (=> bs!461290 m!2779305))

(declare-fun m!2779307 () Bool)

(assert (=> bs!461290 m!2779307))

(assert (=> bs!461290 m!2779089))

(assert (=> bs!461290 m!2779095))

(assert (=> bs!461290 m!2779089))

(declare-fun m!2779309 () Bool)

(assert (=> bs!461290 m!2779309))

(assert (=> b!2371429 d!695451))

(declare-fun bs!461291 () Bool)

(declare-fun d!695457 () Bool)

(assert (= bs!461291 (and d!695457 b!2371429)))

(declare-fun lambda!87864 () Int)

(assert (=> bs!461291 (= lambda!87864 lambda!87823)))

(declare-fun bs!461292 () Bool)

(assert (= bs!461292 (and d!695457 d!695451)))

(assert (=> bs!461292 (= lambda!87864 lambda!87859)))

(declare-fun bs!461293 () Bool)

(assert (= bs!461293 (and d!695457 b!2371710)))

(assert (=> bs!461293 (not (= lambda!87864 lambda!87851))))

(declare-fun bs!461294 () Bool)

(assert (= bs!461294 (and d!695457 b!2371713)))

(assert (=> bs!461294 (not (= lambda!87864 lambda!87852))))

(assert (=> bs!461291 (not (= lambda!87864 lambda!87824))))

(assert (=> d!695457 true))

(assert (=> d!695457 true))

(assert (=> d!695457 true))

(declare-fun lambda!87865 () Int)

(assert (=> bs!461291 (not (= lambda!87865 lambda!87823))))

(assert (=> bs!461292 (not (= lambda!87865 lambda!87859))))

(assert (=> bs!461293 (not (= lambda!87865 lambda!87851))))

(declare-fun bs!461295 () Bool)

(assert (= bs!461295 d!695457))

(assert (=> bs!461295 (not (= lambda!87865 lambda!87864))))

(assert (=> bs!461294 (= lambda!87865 lambda!87852)))

(assert (=> bs!461291 (= lambda!87865 lambda!87824)))

(assert (=> d!695457 true))

(assert (=> d!695457 true))

(assert (=> d!695457 true))

(assert (=> d!695457 (= (Exists!1010 lambda!87864) (Exists!1010 lambda!87865))))

(declare-fun lt!866275 () Unit!40931)

(declare-fun choose!13807 (Regex!6948 Regex!6948 List!28134) Unit!40931)

(assert (=> d!695457 (= lt!866275 (choose!13807 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460))))

(assert (=> d!695457 (validRegex!2675 (regOne!14408 r!13927))))

(assert (=> d!695457 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!349 (regOne!14408 r!13927) (regTwo!14408 r!13927) s!9460) lt!866275)))

(declare-fun m!2779311 () Bool)

(assert (=> bs!461295 m!2779311))

(declare-fun m!2779313 () Bool)

(assert (=> bs!461295 m!2779313))

(declare-fun m!2779315 () Bool)

(assert (=> bs!461295 m!2779315))

(assert (=> bs!461295 m!2779309))

(assert (=> b!2371429 d!695457))

(declare-fun d!695459 () Bool)

(declare-fun choose!13808 (Int) Bool)

(assert (=> d!695459 (= (Exists!1010 lambda!87824) (choose!13808 lambda!87824))))

(declare-fun bs!461296 () Bool)

(assert (= bs!461296 d!695459))

(declare-fun m!2779317 () Bool)

(assert (=> bs!461296 m!2779317))

(assert (=> b!2371429 d!695459))

(declare-fun b!2371751 () Bool)

(declare-fun e!1513686 () Option!5491)

(declare-fun e!1513683 () Option!5491)

(assert (=> b!2371751 (= e!1513686 e!1513683)))

(declare-fun c!376982 () Bool)

(assert (=> b!2371751 (= c!376982 (is-Nil!28036 s!9460))))

(declare-fun b!2371752 () Bool)

(declare-fun e!1513685 () Bool)

(assert (=> b!2371752 (= e!1513685 (matchR!3065 (regTwo!14408 r!13927) s!9460))))

(declare-fun b!2371753 () Bool)

(declare-fun e!1513682 () Bool)

(declare-fun lt!866276 () Option!5491)

(assert (=> b!2371753 (= e!1513682 (= (++!6908 (_1!16421 (get!8526 lt!866276)) (_2!16421 (get!8526 lt!866276))) s!9460))))

(declare-fun b!2371754 () Bool)

(declare-fun e!1513684 () Bool)

(assert (=> b!2371754 (= e!1513684 (not (isDefined!4319 lt!866276)))))

(declare-fun b!2371755 () Bool)

(declare-fun res!1006801 () Bool)

(assert (=> b!2371755 (=> (not res!1006801) (not e!1513682))))

(assert (=> b!2371755 (= res!1006801 (matchR!3065 (regTwo!14408 r!13927) (_2!16421 (get!8526 lt!866276))))))

(declare-fun b!2371756 () Bool)

(assert (=> b!2371756 (= e!1513686 (Some!5490 (tuple2!27761 Nil!28036 s!9460)))))

(declare-fun b!2371750 () Bool)

(declare-fun res!1006802 () Bool)

(assert (=> b!2371750 (=> (not res!1006802) (not e!1513682))))

(assert (=> b!2371750 (= res!1006802 (matchR!3065 (regOne!14408 r!13927) (_1!16421 (get!8526 lt!866276))))))

(declare-fun d!695461 () Bool)

(assert (=> d!695461 e!1513684))

(declare-fun res!1006798 () Bool)

(assert (=> d!695461 (=> res!1006798 e!1513684)))

(assert (=> d!695461 (= res!1006798 e!1513682)))

(declare-fun res!1006799 () Bool)

(assert (=> d!695461 (=> (not res!1006799) (not e!1513682))))

(assert (=> d!695461 (= res!1006799 (isDefined!4319 lt!866276))))

(assert (=> d!695461 (= lt!866276 e!1513686)))

(declare-fun c!376981 () Bool)

(assert (=> d!695461 (= c!376981 e!1513685)))

(declare-fun res!1006800 () Bool)

(assert (=> d!695461 (=> (not res!1006800) (not e!1513685))))

(assert (=> d!695461 (= res!1006800 (matchR!3065 (regOne!14408 r!13927) Nil!28036))))

(assert (=> d!695461 (validRegex!2675 (regOne!14408 r!13927))))

(assert (=> d!695461 (= (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) Nil!28036 s!9460 s!9460) lt!866276)))

(declare-fun b!2371757 () Bool)

(declare-fun lt!866277 () Unit!40931)

(declare-fun lt!866278 () Unit!40931)

(assert (=> b!2371757 (= lt!866277 lt!866278)))

(assert (=> b!2371757 (= (++!6908 (++!6908 Nil!28036 (Cons!28036 (h!33437 s!9460) Nil!28036)) (t!208111 s!9460)) s!9460)))

(assert (=> b!2371757 (= lt!866278 (lemmaMoveElementToOtherListKeepsConcatEq!552 Nil!28036 (h!33437 s!9460) (t!208111 s!9460) s!9460))))

(assert (=> b!2371757 (= e!1513683 (findConcatSeparation!599 (regOne!14408 r!13927) (regTwo!14408 r!13927) (++!6908 Nil!28036 (Cons!28036 (h!33437 s!9460) Nil!28036)) (t!208111 s!9460) s!9460))))

(declare-fun b!2371758 () Bool)

(assert (=> b!2371758 (= e!1513683 None!5490)))

(assert (= (and d!695461 res!1006800) b!2371752))

(assert (= (and d!695461 c!376981) b!2371756))

(assert (= (and d!695461 (not c!376981)) b!2371751))

(assert (= (and b!2371751 c!376982) b!2371758))

(assert (= (and b!2371751 (not c!376982)) b!2371757))

(assert (= (and d!695461 res!1006799) b!2371750))

(assert (= (and b!2371750 res!1006802) b!2371755))

(assert (= (and b!2371755 res!1006801) b!2371753))

(assert (= (and d!695461 (not res!1006798)) b!2371754))

(assert (=> b!2371757 m!2779175))

(assert (=> b!2371757 m!2779175))

(assert (=> b!2371757 m!2779177))

(assert (=> b!2371757 m!2779179))

(assert (=> b!2371757 m!2779175))

(declare-fun m!2779319 () Bool)

(assert (=> b!2371757 m!2779319))

(declare-fun m!2779321 () Bool)

(assert (=> b!2371755 m!2779321))

(declare-fun m!2779323 () Bool)

(assert (=> b!2371755 m!2779323))

(declare-fun m!2779325 () Bool)

(assert (=> d!695461 m!2779325))

(declare-fun m!2779327 () Bool)

(assert (=> d!695461 m!2779327))

(assert (=> d!695461 m!2779309))

(assert (=> b!2371750 m!2779321))

(declare-fun m!2779329 () Bool)

(assert (=> b!2371750 m!2779329))

(assert (=> b!2371753 m!2779321))

(declare-fun m!2779331 () Bool)

(assert (=> b!2371753 m!2779331))

(declare-fun m!2779333 () Bool)

(assert (=> b!2371752 m!2779333))

(assert (=> b!2371754 m!2779325))

(assert (=> b!2371429 d!695461))

(declare-fun d!695463 () Bool)

(assert (=> d!695463 (= (Exists!1010 lambda!87823) (choose!13808 lambda!87823))))

(declare-fun bs!461297 () Bool)

(assert (= bs!461297 d!695463))

(declare-fun m!2779335 () Bool)

(assert (=> bs!461297 m!2779335))

(assert (=> b!2371429 d!695463))

(declare-fun b!2371770 () Bool)

(declare-fun e!1513689 () Bool)

(declare-fun tp!758020 () Bool)

(declare-fun tp!758023 () Bool)

(assert (=> b!2371770 (= e!1513689 (and tp!758020 tp!758023))))

(assert (=> b!2371432 (= tp!757979 e!1513689)))

(declare-fun b!2371772 () Bool)

(declare-fun tp!758022 () Bool)

(declare-fun tp!758024 () Bool)

(assert (=> b!2371772 (= e!1513689 (and tp!758022 tp!758024))))

(declare-fun b!2371769 () Bool)

(assert (=> b!2371769 (= e!1513689 tp_is_empty!11309)))

(declare-fun b!2371771 () Bool)

(declare-fun tp!758021 () Bool)

(assert (=> b!2371771 (= e!1513689 tp!758021)))

(assert (= (and b!2371432 (is-ElementMatch!6948 (reg!7277 r!13927))) b!2371769))

(assert (= (and b!2371432 (is-Concat!11584 (reg!7277 r!13927))) b!2371770))

(assert (= (and b!2371432 (is-Star!6948 (reg!7277 r!13927))) b!2371771))

(assert (= (and b!2371432 (is-Union!6948 (reg!7277 r!13927))) b!2371772))

(declare-fun b!2371777 () Bool)

(declare-fun e!1513692 () Bool)

(declare-fun tp!758027 () Bool)

(assert (=> b!2371777 (= e!1513692 (and tp_is_empty!11309 tp!758027))))

(assert (=> b!2371442 (= tp!757982 e!1513692)))

(assert (= (and b!2371442 (is-Cons!28036 (t!208111 s!9460))) b!2371777))

(declare-fun b!2371779 () Bool)

(declare-fun e!1513693 () Bool)

(declare-fun tp!758028 () Bool)

(declare-fun tp!758031 () Bool)

(assert (=> b!2371779 (= e!1513693 (and tp!758028 tp!758031))))

(assert (=> b!2371439 (= tp!757981 e!1513693)))

(declare-fun b!2371781 () Bool)

(declare-fun tp!758030 () Bool)

(declare-fun tp!758032 () Bool)

(assert (=> b!2371781 (= e!1513693 (and tp!758030 tp!758032))))

(declare-fun b!2371778 () Bool)

(assert (=> b!2371778 (= e!1513693 tp_is_empty!11309)))

(declare-fun b!2371780 () Bool)

(declare-fun tp!758029 () Bool)

(assert (=> b!2371780 (= e!1513693 tp!758029)))

(assert (= (and b!2371439 (is-ElementMatch!6948 (h!33438 l!9164))) b!2371778))

(assert (= (and b!2371439 (is-Concat!11584 (h!33438 l!9164))) b!2371779))

(assert (= (and b!2371439 (is-Star!6948 (h!33438 l!9164))) b!2371780))

(assert (= (and b!2371439 (is-Union!6948 (h!33438 l!9164))) b!2371781))

(declare-fun b!2371786 () Bool)

(declare-fun e!1513696 () Bool)

(declare-fun tp!758037 () Bool)

(declare-fun tp!758038 () Bool)

(assert (=> b!2371786 (= e!1513696 (and tp!758037 tp!758038))))

(assert (=> b!2371439 (= tp!757983 e!1513696)))

(assert (= (and b!2371439 (is-Cons!28037 (t!208112 l!9164))) b!2371786))

(declare-fun b!2371788 () Bool)

(declare-fun e!1513697 () Bool)

(declare-fun tp!758039 () Bool)

(declare-fun tp!758042 () Bool)

(assert (=> b!2371788 (= e!1513697 (and tp!758039 tp!758042))))

(assert (=> b!2371440 (= tp!757985 e!1513697)))

(declare-fun b!2371790 () Bool)

(declare-fun tp!758041 () Bool)

(declare-fun tp!758043 () Bool)

(assert (=> b!2371790 (= e!1513697 (and tp!758041 tp!758043))))

(declare-fun b!2371787 () Bool)

(assert (=> b!2371787 (= e!1513697 tp_is_empty!11309)))

(declare-fun b!2371789 () Bool)

(declare-fun tp!758040 () Bool)

(assert (=> b!2371789 (= e!1513697 tp!758040)))

(assert (= (and b!2371440 (is-ElementMatch!6948 (regOne!14409 r!13927))) b!2371787))

(assert (= (and b!2371440 (is-Concat!11584 (regOne!14409 r!13927))) b!2371788))

(assert (= (and b!2371440 (is-Star!6948 (regOne!14409 r!13927))) b!2371789))

(assert (= (and b!2371440 (is-Union!6948 (regOne!14409 r!13927))) b!2371790))

(declare-fun b!2371792 () Bool)

(declare-fun e!1513698 () Bool)

(declare-fun tp!758044 () Bool)

(declare-fun tp!758047 () Bool)

(assert (=> b!2371792 (= e!1513698 (and tp!758044 tp!758047))))

(assert (=> b!2371440 (= tp!757978 e!1513698)))

(declare-fun b!2371794 () Bool)

(declare-fun tp!758046 () Bool)

(declare-fun tp!758048 () Bool)

(assert (=> b!2371794 (= e!1513698 (and tp!758046 tp!758048))))

(declare-fun b!2371791 () Bool)

(assert (=> b!2371791 (= e!1513698 tp_is_empty!11309)))

(declare-fun b!2371793 () Bool)

(declare-fun tp!758045 () Bool)

(assert (=> b!2371793 (= e!1513698 tp!758045)))

(assert (= (and b!2371440 (is-ElementMatch!6948 (regTwo!14409 r!13927))) b!2371791))

(assert (= (and b!2371440 (is-Concat!11584 (regTwo!14409 r!13927))) b!2371792))

(assert (= (and b!2371440 (is-Star!6948 (regTwo!14409 r!13927))) b!2371793))

(assert (= (and b!2371440 (is-Union!6948 (regTwo!14409 r!13927))) b!2371794))

(declare-fun b!2371796 () Bool)

(declare-fun e!1513699 () Bool)

(declare-fun tp!758049 () Bool)

(declare-fun tp!758052 () Bool)

(assert (=> b!2371796 (= e!1513699 (and tp!758049 tp!758052))))

(assert (=> b!2371434 (= tp!757980 e!1513699)))

(declare-fun b!2371798 () Bool)

(declare-fun tp!758051 () Bool)

(declare-fun tp!758053 () Bool)

(assert (=> b!2371798 (= e!1513699 (and tp!758051 tp!758053))))

(declare-fun b!2371795 () Bool)

(assert (=> b!2371795 (= e!1513699 tp_is_empty!11309)))

(declare-fun b!2371797 () Bool)

(declare-fun tp!758050 () Bool)

(assert (=> b!2371797 (= e!1513699 tp!758050)))

(assert (= (and b!2371434 (is-ElementMatch!6948 (regOne!14408 r!13927))) b!2371795))

(assert (= (and b!2371434 (is-Concat!11584 (regOne!14408 r!13927))) b!2371796))

(assert (= (and b!2371434 (is-Star!6948 (regOne!14408 r!13927))) b!2371797))

(assert (= (and b!2371434 (is-Union!6948 (regOne!14408 r!13927))) b!2371798))

(declare-fun b!2371800 () Bool)

(declare-fun e!1513700 () Bool)

(declare-fun tp!758054 () Bool)

(declare-fun tp!758057 () Bool)

(assert (=> b!2371800 (= e!1513700 (and tp!758054 tp!758057))))

(assert (=> b!2371434 (= tp!757984 e!1513700)))

(declare-fun b!2371802 () Bool)

(declare-fun tp!758056 () Bool)

(declare-fun tp!758058 () Bool)

(assert (=> b!2371802 (= e!1513700 (and tp!758056 tp!758058))))

(declare-fun b!2371799 () Bool)

(assert (=> b!2371799 (= e!1513700 tp_is_empty!11309)))

(declare-fun b!2371801 () Bool)

(declare-fun tp!758055 () Bool)

(assert (=> b!2371801 (= e!1513700 tp!758055)))

(assert (= (and b!2371434 (is-ElementMatch!6948 (regTwo!14408 r!13927))) b!2371799))

(assert (= (and b!2371434 (is-Concat!11584 (regTwo!14408 r!13927))) b!2371800))

(assert (= (and b!2371434 (is-Star!6948 (regTwo!14408 r!13927))) b!2371801))

(assert (= (and b!2371434 (is-Union!6948 (regTwo!14408 r!13927))) b!2371802))

(declare-fun b_lambda!73943 () Bool)

(assert (= b_lambda!73941 (or start!232726 b_lambda!73943)))

(declare-fun bs!461298 () Bool)

(declare-fun d!695465 () Bool)

(assert (= bs!461298 (and d!695465 start!232726)))

(assert (=> bs!461298 (= (dynLambda!12073 lambda!87822 (h!33438 lt!866190)) (validRegex!2675 (h!33438 lt!866190)))))

(declare-fun m!2779337 () Bool)

(assert (=> bs!461298 m!2779337))

(assert (=> b!2371515 d!695465))

(declare-fun b_lambda!73945 () Bool)

(assert (= b_lambda!73939 (or start!232726 b_lambda!73945)))

(declare-fun bs!461299 () Bool)

(declare-fun d!695467 () Bool)

(assert (= bs!461299 (and d!695467 start!232726)))

(assert (=> bs!461299 (= (dynLambda!12073 lambda!87822 (h!33438 l!9164)) (validRegex!2675 (h!33438 l!9164)))))

(declare-fun m!2779339 () Bool)

(assert (=> bs!461299 m!2779339))

(assert (=> b!2371513 d!695467))

(push 1)

(assert (not d!695439))

(assert (not b!2371726))

(assert (not b!2371798))

(assert (not b!2371772))

(assert (not d!695461))

(assert (not b!2371793))

(assert (not b!2371734))

(assert (not b!2371796))

(assert (not b!2371794))

(assert (not b!2371665))

(assert (not b!2371597))

(assert tp_is_empty!11309)

(assert (not b!2371655))

(assert (not b!2371642))

(assert (not b!2371714))

(assert (not b!2371750))

(assert (not d!695433))

(assert (not b!2371588))

(assert (not b_lambda!73943))

(assert (not b!2371647))

(assert (not b!2371669))

(assert (not bm!144167))

(assert (not d!695437))

(assert (not b!2371599))

(assert (not b!2371613))

(assert (not b!2371670))

(assert (not b!2371558))

(assert (not b!2371639))

(assert (not b!2371801))

(assert (not b!2371603))

(assert (not d!695411))

(assert (not b!2371672))

(assert (not bs!461299))

(assert (not d!695463))

(assert (not b!2371666))

(assert (not bm!144160))

(assert (not b!2371770))

(assert (not b!2371771))

(assert (not b!2371593))

(assert (not b!2371648))

(assert (not b!2371792))

(assert (not b!2371651))

(assert (not d!695413))

(assert (not b!2371724))

(assert (not bm!144165))

(assert (not b!2371777))

(assert (not b!2371663))

(assert (not b_lambda!73945))

(assert (not b!2371671))

(assert (not bs!461298))

(assert (not b!2371779))

(assert (not b!2371587))

(assert (not b!2371800))

(assert (not b!2371717))

(assert (not d!695423))

(assert (not b!2371589))

(assert (not b!2371752))

(assert (not b!2371552))

(assert (not b!2371607))

(assert (not b!2371550))

(assert (not bm!144159))

(assert (not d!695449))

(assert (not b!2371780))

(assert (not b!2371602))

(assert (not b!2371755))

(assert (not b!2371802))

(assert (not d!695407))

(assert (not b!2371788))

(assert (not b!2371551))

(assert (not d!695451))

(assert (not d!695429))

(assert (not b!2371514))

(assert (not d!695417))

(assert (not d!695445))

(assert (not b!2371753))

(assert (not b!2371797))

(assert (not b!2371790))

(assert (not b!2371781))

(assert (not b!2371549))

(assert (not b!2371786))

(assert (not b!2371649))

(assert (not b!2371645))

(assert (not b!2371641))

(assert (not b!2371650))

(assert (not b!2371789))

(assert (not d!695459))

(assert (not b!2371754))

(assert (not b!2371547))

(assert (not b!2371611))

(assert (not b!2371757))

(assert (not b!2371659))

(assert (not b!2371725))

(assert (not b!2371661))

(assert (not bm!144158))

(assert (not d!695447))

(assert (not b!2371554))

(assert (not b!2371516))

(assert (not b!2371646))

(assert (not d!695405))

(assert (not b!2371527))

(assert (not b!2371601))

(assert (not b!2371736))

(assert (not bm!144166))

(assert (not d!695457))

(assert (not b!2371730))

(assert (not b!2371526))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

