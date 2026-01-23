; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232458 () Bool)

(assert start!232458)

(declare-fun b!2368658 () Bool)

(assert (=> b!2368658 true))

(assert (=> b!2368658 true))

(declare-fun lambda!87560 () Int)

(declare-fun lambda!87559 () Int)

(assert (=> b!2368658 (not (= lambda!87560 lambda!87559))))

(assert (=> b!2368658 true))

(assert (=> b!2368658 true))

(declare-fun b!2368645 () Bool)

(declare-fun e!1512040 () Bool)

(declare-fun tp!757349 () Bool)

(declare-fun tp!757350 () Bool)

(assert (=> b!2368645 (= e!1512040 (and tp!757349 tp!757350))))

(declare-fun b!2368646 () Bool)

(declare-fun tp_is_empty!11289 () Bool)

(assert (=> b!2368646 (= e!1512040 tp_is_empty!11289)))

(declare-fun b!2368647 () Bool)

(declare-fun e!1512039 () Bool)

(declare-fun e!1512036 () Bool)

(assert (=> b!2368647 (= e!1512039 e!1512036)))

(declare-fun res!1005295 () Bool)

(assert (=> b!2368647 (=> res!1005295 e!1512036)))

(declare-datatypes ((C!14034 0))(
  ( (C!14035 (val!8259 Int)) )
))
(declare-datatypes ((Regex!6938 0))(
  ( (ElementMatch!6938 (c!376470 C!14034)) (Concat!11574 (regOne!14388 Regex!6938) (regTwo!14388 Regex!6938)) (EmptyExpr!6938) (Star!6938 (reg!7267 Regex!6938)) (EmptyLang!6938) (Union!6938 (regOne!14389 Regex!6938) (regTwo!14389 Regex!6938)) )
))
(declare-fun lt!865610 () Regex!6938)

(declare-datatypes ((List!28114 0))(
  ( (Nil!28016) (Cons!28016 (h!33417 C!14034) (t!208091 List!28114)) )
))
(declare-fun s!9460 () List!28114)

(declare-fun matchR!3055 (Regex!6938 List!28114) Bool)

(assert (=> b!2368647 (= res!1005295 (not (matchR!3055 lt!865610 s!9460)))))

(declare-datatypes ((List!28115 0))(
  ( (Nil!28017) (Cons!28017 (h!33418 Regex!6938) (t!208092 List!28115)) )
))
(declare-fun l!9164 () List!28115)

(declare-fun head!5117 (List!28115) Regex!6938)

(assert (=> b!2368647 (= lt!865610 (head!5117 l!9164))))

(declare-fun b!2368648 () Bool)

(declare-fun e!1512033 () Bool)

(declare-fun e!1512038 () Bool)

(assert (=> b!2368648 (= e!1512033 (not e!1512038))))

(declare-fun res!1005301 () Bool)

(assert (=> b!2368648 (=> res!1005301 e!1512038)))

(declare-fun r!13927 () Regex!6938)

(assert (=> b!2368648 (= res!1005301 (not (is-Concat!11574 r!13927)))))

(declare-fun lt!865613 () Bool)

(declare-fun lt!865605 () Bool)

(assert (=> b!2368648 (= lt!865613 lt!865605)))

(declare-fun matchRSpec!787 (Regex!6938 List!28114) Bool)

(assert (=> b!2368648 (= lt!865605 (matchRSpec!787 r!13927 s!9460))))

(assert (=> b!2368648 (= lt!865613 (matchR!3055 r!13927 s!9460))))

(declare-datatypes ((Unit!40911 0))(
  ( (Unit!40912) )
))
(declare-fun lt!865612 () Unit!40911)

(declare-fun mainMatchTheorem!787 (Regex!6938 List!28114) Unit!40911)

(assert (=> b!2368648 (= lt!865612 (mainMatchTheorem!787 r!13927 s!9460))))

(declare-fun b!2368649 () Bool)

(declare-fun res!1005300 () Bool)

(assert (=> b!2368649 (=> res!1005300 e!1512039)))

(declare-fun lt!865607 () List!28115)

(declare-fun generalisedConcat!39 (List!28115) Regex!6938)

(assert (=> b!2368649 (= res!1005300 (not (= (generalisedConcat!39 lt!865607) EmptyExpr!6938)))))

(declare-fun b!2368650 () Bool)

(declare-fun res!1005299 () Bool)

(declare-fun e!1512035 () Bool)

(assert (=> b!2368650 (=> res!1005299 e!1512035)))

(declare-fun isEmpty!15941 (List!28115) Bool)

(assert (=> b!2368650 (= res!1005299 (isEmpty!15941 l!9164))))

(declare-fun b!2368651 () Bool)

(declare-fun e!1512034 () Bool)

(declare-fun tp!757353 () Bool)

(declare-fun tp!757351 () Bool)

(assert (=> b!2368651 (= e!1512034 (and tp!757353 tp!757351))))

(declare-fun b!2368652 () Bool)

(declare-fun res!1005296 () Bool)

(assert (=> b!2368652 (=> (not res!1005296) (not e!1512033))))

(assert (=> b!2368652 (= res!1005296 (= r!13927 (generalisedConcat!39 l!9164)))))

(declare-fun res!1005302 () Bool)

(assert (=> start!232458 (=> (not res!1005302) (not e!1512033))))

(declare-fun lambda!87558 () Int)

(declare-fun forall!5572 (List!28115 Int) Bool)

(assert (=> start!232458 (= res!1005302 (forall!5572 l!9164 lambda!87558))))

(assert (=> start!232458 e!1512033))

(assert (=> start!232458 e!1512034))

(assert (=> start!232458 e!1512040))

(declare-fun e!1512037 () Bool)

(assert (=> start!232458 e!1512037))

(declare-fun b!2368653 () Bool)

(declare-fun tp!757346 () Bool)

(declare-fun tp!757352 () Bool)

(assert (=> b!2368653 (= e!1512040 (and tp!757346 tp!757352))))

(declare-fun b!2368654 () Bool)

(assert (=> b!2368654 (= e!1512036 (not (= l!9164 Nil!28017)))))

(declare-fun ++!6898 (List!28114 List!28114) List!28114)

(assert (=> b!2368654 (matchR!3055 (Concat!11574 lt!865610 EmptyExpr!6938) (++!6898 s!9460 Nil!28016))))

(declare-fun lt!865608 () Unit!40911)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!11 (Regex!6938 Regex!6938 List!28114 List!28114) Unit!40911)

(assert (=> b!2368654 (= lt!865608 (lemmaTwoRegexMatchThenConcatMatchesConcatString!11 lt!865610 EmptyExpr!6938 s!9460 Nil!28016))))

(declare-fun b!2368655 () Bool)

(declare-fun tp!757348 () Bool)

(assert (=> b!2368655 (= e!1512037 (and tp_is_empty!11289 tp!757348))))

(declare-fun b!2368656 () Bool)

(declare-fun tp!757347 () Bool)

(assert (=> b!2368656 (= e!1512040 tp!757347)))

(declare-fun b!2368657 () Bool)

(assert (=> b!2368657 (= e!1512035 e!1512039)))

(declare-fun res!1005297 () Bool)

(assert (=> b!2368657 (=> res!1005297 e!1512039)))

(assert (=> b!2368657 (= res!1005297 (not (isEmpty!15941 lt!865607)))))

(declare-fun tail!3387 (List!28115) List!28115)

(assert (=> b!2368657 (= lt!865607 (tail!3387 l!9164))))

(assert (=> b!2368658 (= e!1512038 e!1512035)))

(declare-fun res!1005298 () Bool)

(assert (=> b!2368658 (=> res!1005298 e!1512035)))

(declare-fun lt!865611 () Bool)

(assert (=> b!2368658 (= res!1005298 (not (= lt!865605 lt!865611)))))

(declare-fun Exists!1000 (Int) Bool)

(assert (=> b!2368658 (= (Exists!1000 lambda!87559) (Exists!1000 lambda!87560))))

(declare-fun lt!865606 () Unit!40911)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!339 (Regex!6938 Regex!6938 List!28114) Unit!40911)

(assert (=> b!2368658 (= lt!865606 (lemmaExistCutMatchRandMatchRSpecEquivalent!339 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460))))

(assert (=> b!2368658 (= lt!865611 (Exists!1000 lambda!87559))))

(declare-datatypes ((tuple2!27740 0))(
  ( (tuple2!27741 (_1!16411 List!28114) (_2!16411 List!28114)) )
))
(declare-datatypes ((Option!5481 0))(
  ( (None!5480) (Some!5480 (v!30888 tuple2!27740)) )
))
(declare-fun isDefined!4309 (Option!5481) Bool)

(declare-fun findConcatSeparation!589 (Regex!6938 Regex!6938 List!28114 List!28114 List!28114) Option!5481)

(assert (=> b!2368658 (= lt!865611 (isDefined!4309 (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) Nil!28016 s!9460 s!9460)))))

(declare-fun lt!865609 () Unit!40911)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!589 (Regex!6938 Regex!6938 List!28114) Unit!40911)

(assert (=> b!2368658 (= lt!865609 (lemmaFindConcatSeparationEquivalentToExists!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460))))

(assert (= (and start!232458 res!1005302) b!2368652))

(assert (= (and b!2368652 res!1005296) b!2368648))

(assert (= (and b!2368648 (not res!1005301)) b!2368658))

(assert (= (and b!2368658 (not res!1005298)) b!2368650))

(assert (= (and b!2368650 (not res!1005299)) b!2368657))

(assert (= (and b!2368657 (not res!1005297)) b!2368649))

(assert (= (and b!2368649 (not res!1005300)) b!2368647))

(assert (= (and b!2368647 (not res!1005295)) b!2368654))

(assert (= (and start!232458 (is-Cons!28017 l!9164)) b!2368651))

(assert (= (and start!232458 (is-ElementMatch!6938 r!13927)) b!2368646))

(assert (= (and start!232458 (is-Concat!11574 r!13927)) b!2368653))

(assert (= (and start!232458 (is-Star!6938 r!13927)) b!2368656))

(assert (= (and start!232458 (is-Union!6938 r!13927)) b!2368645))

(assert (= (and start!232458 (is-Cons!28016 s!9460)) b!2368655))

(declare-fun m!2777391 () Bool)

(assert (=> b!2368654 m!2777391))

(assert (=> b!2368654 m!2777391))

(declare-fun m!2777393 () Bool)

(assert (=> b!2368654 m!2777393))

(declare-fun m!2777395 () Bool)

(assert (=> b!2368654 m!2777395))

(declare-fun m!2777397 () Bool)

(assert (=> start!232458 m!2777397))

(declare-fun m!2777399 () Bool)

(assert (=> b!2368650 m!2777399))

(declare-fun m!2777401 () Bool)

(assert (=> b!2368648 m!2777401))

(declare-fun m!2777403 () Bool)

(assert (=> b!2368648 m!2777403))

(declare-fun m!2777405 () Bool)

(assert (=> b!2368648 m!2777405))

(declare-fun m!2777407 () Bool)

(assert (=> b!2368647 m!2777407))

(declare-fun m!2777409 () Bool)

(assert (=> b!2368647 m!2777409))

(declare-fun m!2777411 () Bool)

(assert (=> b!2368658 m!2777411))

(declare-fun m!2777413 () Bool)

(assert (=> b!2368658 m!2777413))

(declare-fun m!2777415 () Bool)

(assert (=> b!2368658 m!2777415))

(assert (=> b!2368658 m!2777411))

(declare-fun m!2777417 () Bool)

(assert (=> b!2368658 m!2777417))

(declare-fun m!2777419 () Bool)

(assert (=> b!2368658 m!2777419))

(assert (=> b!2368658 m!2777419))

(declare-fun m!2777421 () Bool)

(assert (=> b!2368658 m!2777421))

(declare-fun m!2777423 () Bool)

(assert (=> b!2368657 m!2777423))

(declare-fun m!2777425 () Bool)

(assert (=> b!2368657 m!2777425))

(declare-fun m!2777427 () Bool)

(assert (=> b!2368649 m!2777427))

(declare-fun m!2777429 () Bool)

(assert (=> b!2368652 m!2777429))

(push 1)

(assert (not b!2368648))

(assert (not b!2368650))

(assert (not b!2368657))

(assert (not b!2368655))

(assert (not b!2368654))

(assert (not b!2368651))

(assert (not b!2368649))

(assert (not b!2368647))

(assert (not b!2368645))

(assert (not b!2368653))

(assert tp_is_empty!11289)

(assert (not b!2368656))

(assert (not b!2368652))

(assert (not b!2368658))

(assert (not start!232458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!695038 () Bool)

(assert (=> d!695038 (= (isEmpty!15941 l!9164) (is-Nil!28017 l!9164))))

(assert (=> b!2368650 d!695038))

(declare-fun d!695040 () Bool)

(declare-fun res!1005343 () Bool)

(declare-fun e!1512075 () Bool)

(assert (=> d!695040 (=> res!1005343 e!1512075)))

(assert (=> d!695040 (= res!1005343 (is-Nil!28017 l!9164))))

(assert (=> d!695040 (= (forall!5572 l!9164 lambda!87558) e!1512075)))

(declare-fun b!2368725 () Bool)

(declare-fun e!1512076 () Bool)

(assert (=> b!2368725 (= e!1512075 e!1512076)))

(declare-fun res!1005344 () Bool)

(assert (=> b!2368725 (=> (not res!1005344) (not e!1512076))))

(declare-fun dynLambda!12066 (Int Regex!6938) Bool)

(assert (=> b!2368725 (= res!1005344 (dynLambda!12066 lambda!87558 (h!33418 l!9164)))))

(declare-fun b!2368726 () Bool)

(assert (=> b!2368726 (= e!1512076 (forall!5572 (t!208092 l!9164) lambda!87558))))

(assert (= (and d!695040 (not res!1005343)) b!2368725))

(assert (= (and b!2368725 res!1005344) b!2368726))

(declare-fun b_lambda!73907 () Bool)

(assert (=> (not b_lambda!73907) (not b!2368725)))

(declare-fun m!2777471 () Bool)

(assert (=> b!2368725 m!2777471))

(declare-fun m!2777473 () Bool)

(assert (=> b!2368726 m!2777473))

(assert (=> start!232458 d!695040))

(declare-fun bs!461095 () Bool)

(declare-fun d!695044 () Bool)

(assert (= bs!461095 (and d!695044 start!232458)))

(declare-fun lambda!87574 () Int)

(assert (=> bs!461095 (= lambda!87574 lambda!87558)))

(declare-fun b!2368747 () Bool)

(declare-fun e!1512093 () Bool)

(declare-fun lt!865643 () Regex!6938)

(declare-fun isEmptyExpr!20 (Regex!6938) Bool)

(assert (=> b!2368747 (= e!1512093 (isEmptyExpr!20 lt!865643))))

(declare-fun b!2368748 () Bool)

(declare-fun e!1512091 () Bool)

(assert (=> b!2368748 (= e!1512091 (isEmpty!15941 (t!208092 lt!865607)))))

(declare-fun b!2368749 () Bool)

(declare-fun e!1512089 () Bool)

(declare-fun isConcat!20 (Regex!6938) Bool)

(assert (=> b!2368749 (= e!1512089 (isConcat!20 lt!865643))))

(declare-fun b!2368750 () Bool)

(declare-fun e!1512092 () Regex!6938)

(assert (=> b!2368750 (= e!1512092 (h!33418 lt!865607))))

(declare-fun b!2368751 () Bool)

(assert (=> b!2368751 (= e!1512093 e!1512089)))

(declare-fun c!376482 () Bool)

(assert (=> b!2368751 (= c!376482 (isEmpty!15941 (tail!3387 lt!865607)))))

(declare-fun e!1512094 () Bool)

(assert (=> d!695044 e!1512094))

(declare-fun res!1005349 () Bool)

(assert (=> d!695044 (=> (not res!1005349) (not e!1512094))))

(declare-fun validRegex!2667 (Regex!6938) Bool)

(assert (=> d!695044 (= res!1005349 (validRegex!2667 lt!865643))))

(assert (=> d!695044 (= lt!865643 e!1512092)))

(declare-fun c!376481 () Bool)

(assert (=> d!695044 (= c!376481 e!1512091)))

(declare-fun res!1005350 () Bool)

(assert (=> d!695044 (=> (not res!1005350) (not e!1512091))))

(assert (=> d!695044 (= res!1005350 (is-Cons!28017 lt!865607))))

(assert (=> d!695044 (forall!5572 lt!865607 lambda!87574)))

(assert (=> d!695044 (= (generalisedConcat!39 lt!865607) lt!865643)))

(declare-fun b!2368752 () Bool)

(assert (=> b!2368752 (= e!1512089 (= lt!865643 (head!5117 lt!865607)))))

(declare-fun b!2368753 () Bool)

(declare-fun e!1512090 () Regex!6938)

(assert (=> b!2368753 (= e!1512090 (Concat!11574 (h!33418 lt!865607) (generalisedConcat!39 (t!208092 lt!865607))))))

(declare-fun b!2368754 () Bool)

(assert (=> b!2368754 (= e!1512090 EmptyExpr!6938)))

(declare-fun b!2368755 () Bool)

(assert (=> b!2368755 (= e!1512094 e!1512093)))

(declare-fun c!376480 () Bool)

(assert (=> b!2368755 (= c!376480 (isEmpty!15941 lt!865607))))

(declare-fun b!2368756 () Bool)

(assert (=> b!2368756 (= e!1512092 e!1512090)))

(declare-fun c!376483 () Bool)

(assert (=> b!2368756 (= c!376483 (is-Cons!28017 lt!865607))))

(assert (= (and d!695044 res!1005350) b!2368748))

(assert (= (and d!695044 c!376481) b!2368750))

(assert (= (and d!695044 (not c!376481)) b!2368756))

(assert (= (and b!2368756 c!376483) b!2368753))

(assert (= (and b!2368756 (not c!376483)) b!2368754))

(assert (= (and d!695044 res!1005349) b!2368755))

(assert (= (and b!2368755 c!376480) b!2368747))

(assert (= (and b!2368755 (not c!376480)) b!2368751))

(assert (= (and b!2368751 c!376482) b!2368752))

(assert (= (and b!2368751 (not c!376482)) b!2368749))

(declare-fun m!2777475 () Bool)

(assert (=> b!2368752 m!2777475))

(declare-fun m!2777477 () Bool)

(assert (=> b!2368748 m!2777477))

(declare-fun m!2777479 () Bool)

(assert (=> b!2368747 m!2777479))

(declare-fun m!2777481 () Bool)

(assert (=> b!2368753 m!2777481))

(declare-fun m!2777483 () Bool)

(assert (=> b!2368749 m!2777483))

(declare-fun m!2777485 () Bool)

(assert (=> b!2368751 m!2777485))

(assert (=> b!2368751 m!2777485))

(declare-fun m!2777487 () Bool)

(assert (=> b!2368751 m!2777487))

(assert (=> b!2368755 m!2777423))

(declare-fun m!2777489 () Bool)

(assert (=> d!695044 m!2777489))

(declare-fun m!2777491 () Bool)

(assert (=> d!695044 m!2777491))

(assert (=> b!2368649 d!695044))

(declare-fun d!695046 () Bool)

(declare-fun e!1512125 () Bool)

(assert (=> d!695046 e!1512125))

(declare-fun c!376500 () Bool)

(assert (=> d!695046 (= c!376500 (is-EmptyExpr!6938 (Concat!11574 lt!865610 EmptyExpr!6938)))))

(declare-fun lt!865646 () Bool)

(declare-fun e!1512128 () Bool)

(assert (=> d!695046 (= lt!865646 e!1512128)))

(declare-fun c!376499 () Bool)

(declare-fun isEmpty!15943 (List!28114) Bool)

(assert (=> d!695046 (= c!376499 (isEmpty!15943 (++!6898 s!9460 Nil!28016)))))

(assert (=> d!695046 (validRegex!2667 (Concat!11574 lt!865610 EmptyExpr!6938))))

(assert (=> d!695046 (= (matchR!3055 (Concat!11574 lt!865610 EmptyExpr!6938) (++!6898 s!9460 Nil!28016)) lt!865646)))

(declare-fun b!2368813 () Bool)

(declare-fun e!1512131 () Bool)

(assert (=> b!2368813 (= e!1512125 e!1512131)))

(declare-fun c!376498 () Bool)

(assert (=> b!2368813 (= c!376498 (is-EmptyLang!6938 (Concat!11574 lt!865610 EmptyExpr!6938)))))

(declare-fun b!2368814 () Bool)

(declare-fun e!1512127 () Bool)

(declare-fun e!1512126 () Bool)

(assert (=> b!2368814 (= e!1512127 e!1512126)))

(declare-fun res!1005382 () Bool)

(assert (=> b!2368814 (=> res!1005382 e!1512126)))

(declare-fun call!144053 () Bool)

(assert (=> b!2368814 (= res!1005382 call!144053)))

(declare-fun b!2368815 () Bool)

(assert (=> b!2368815 (= e!1512125 (= lt!865646 call!144053))))

(declare-fun b!2368816 () Bool)

(declare-fun res!1005380 () Bool)

(declare-fun e!1512130 () Bool)

(assert (=> b!2368816 (=> (not res!1005380) (not e!1512130))))

(assert (=> b!2368816 (= res!1005380 (not call!144053))))

(declare-fun b!2368817 () Bool)

(declare-fun res!1005386 () Bool)

(declare-fun e!1512129 () Bool)

(assert (=> b!2368817 (=> res!1005386 e!1512129)))

(assert (=> b!2368817 (= res!1005386 e!1512130)))

(declare-fun res!1005383 () Bool)

(assert (=> b!2368817 (=> (not res!1005383) (not e!1512130))))

(assert (=> b!2368817 (= res!1005383 lt!865646)))

(declare-fun b!2368818 () Bool)

(declare-fun head!5119 (List!28114) C!14034)

(assert (=> b!2368818 (= e!1512130 (= (head!5119 (++!6898 s!9460 Nil!28016)) (c!376470 (Concat!11574 lt!865610 EmptyExpr!6938))))))

(declare-fun b!2368819 () Bool)

(assert (=> b!2368819 (= e!1512126 (not (= (head!5119 (++!6898 s!9460 Nil!28016)) (c!376470 (Concat!11574 lt!865610 EmptyExpr!6938)))))))

(declare-fun b!2368820 () Bool)

(declare-fun res!1005385 () Bool)

(assert (=> b!2368820 (=> res!1005385 e!1512126)))

(declare-fun tail!3389 (List!28114) List!28114)

(assert (=> b!2368820 (= res!1005385 (not (isEmpty!15943 (tail!3389 (++!6898 s!9460 Nil!28016)))))))

(declare-fun b!2368821 () Bool)

(declare-fun derivativeStep!1655 (Regex!6938 C!14034) Regex!6938)

(assert (=> b!2368821 (= e!1512128 (matchR!3055 (derivativeStep!1655 (Concat!11574 lt!865610 EmptyExpr!6938) (head!5119 (++!6898 s!9460 Nil!28016))) (tail!3389 (++!6898 s!9460 Nil!28016))))))

(declare-fun b!2368822 () Bool)

(assert (=> b!2368822 (= e!1512131 (not lt!865646))))

(declare-fun b!2368823 () Bool)

(declare-fun nullable!1997 (Regex!6938) Bool)

(assert (=> b!2368823 (= e!1512128 (nullable!1997 (Concat!11574 lt!865610 EmptyExpr!6938)))))

(declare-fun b!2368824 () Bool)

(assert (=> b!2368824 (= e!1512129 e!1512127)))

(declare-fun res!1005379 () Bool)

(assert (=> b!2368824 (=> (not res!1005379) (not e!1512127))))

(assert (=> b!2368824 (= res!1005379 (not lt!865646))))

(declare-fun b!2368825 () Bool)

(declare-fun res!1005384 () Bool)

(assert (=> b!2368825 (=> res!1005384 e!1512129)))

(assert (=> b!2368825 (= res!1005384 (not (is-ElementMatch!6938 (Concat!11574 lt!865610 EmptyExpr!6938))))))

(assert (=> b!2368825 (= e!1512131 e!1512129)))

(declare-fun bm!144048 () Bool)

(assert (=> bm!144048 (= call!144053 (isEmpty!15943 (++!6898 s!9460 Nil!28016)))))

(declare-fun b!2368826 () Bool)

(declare-fun res!1005381 () Bool)

(assert (=> b!2368826 (=> (not res!1005381) (not e!1512130))))

(assert (=> b!2368826 (= res!1005381 (isEmpty!15943 (tail!3389 (++!6898 s!9460 Nil!28016))))))

(assert (= (and d!695046 c!376499) b!2368823))

(assert (= (and d!695046 (not c!376499)) b!2368821))

(assert (= (and d!695046 c!376500) b!2368815))

(assert (= (and d!695046 (not c!376500)) b!2368813))

(assert (= (and b!2368813 c!376498) b!2368822))

(assert (= (and b!2368813 (not c!376498)) b!2368825))

(assert (= (and b!2368825 (not res!1005384)) b!2368817))

(assert (= (and b!2368817 res!1005383) b!2368816))

(assert (= (and b!2368816 res!1005380) b!2368826))

(assert (= (and b!2368826 res!1005381) b!2368818))

(assert (= (and b!2368817 (not res!1005386)) b!2368824))

(assert (= (and b!2368824 res!1005379) b!2368814))

(assert (= (and b!2368814 (not res!1005382)) b!2368820))

(assert (= (and b!2368820 (not res!1005385)) b!2368819))

(assert (= (or b!2368815 b!2368814 b!2368816) bm!144048))

(assert (=> bm!144048 m!2777391))

(declare-fun m!2777493 () Bool)

(assert (=> bm!144048 m!2777493))

(assert (=> b!2368819 m!2777391))

(declare-fun m!2777495 () Bool)

(assert (=> b!2368819 m!2777495))

(assert (=> b!2368818 m!2777391))

(assert (=> b!2368818 m!2777495))

(assert (=> d!695046 m!2777391))

(assert (=> d!695046 m!2777493))

(declare-fun m!2777497 () Bool)

(assert (=> d!695046 m!2777497))

(assert (=> b!2368826 m!2777391))

(declare-fun m!2777499 () Bool)

(assert (=> b!2368826 m!2777499))

(assert (=> b!2368826 m!2777499))

(declare-fun m!2777501 () Bool)

(assert (=> b!2368826 m!2777501))

(assert (=> b!2368820 m!2777391))

(assert (=> b!2368820 m!2777499))

(assert (=> b!2368820 m!2777499))

(assert (=> b!2368820 m!2777501))

(assert (=> b!2368821 m!2777391))

(assert (=> b!2368821 m!2777495))

(assert (=> b!2368821 m!2777495))

(declare-fun m!2777503 () Bool)

(assert (=> b!2368821 m!2777503))

(assert (=> b!2368821 m!2777391))

(assert (=> b!2368821 m!2777499))

(assert (=> b!2368821 m!2777503))

(assert (=> b!2368821 m!2777499))

(declare-fun m!2777505 () Bool)

(assert (=> b!2368821 m!2777505))

(declare-fun m!2777507 () Bool)

(assert (=> b!2368823 m!2777507))

(assert (=> b!2368654 d!695046))

(declare-fun b!2368841 () Bool)

(declare-fun res!1005396 () Bool)

(declare-fun e!1512139 () Bool)

(assert (=> b!2368841 (=> (not res!1005396) (not e!1512139))))

(declare-fun lt!865649 () List!28114)

(declare-fun size!22142 (List!28114) Int)

(assert (=> b!2368841 (= res!1005396 (= (size!22142 lt!865649) (+ (size!22142 s!9460) (size!22142 Nil!28016))))))

(declare-fun d!695048 () Bool)

(assert (=> d!695048 e!1512139))

(declare-fun res!1005395 () Bool)

(assert (=> d!695048 (=> (not res!1005395) (not e!1512139))))

(declare-fun content!3804 (List!28114) (Set C!14034))

(assert (=> d!695048 (= res!1005395 (= (content!3804 lt!865649) (set.union (content!3804 s!9460) (content!3804 Nil!28016))))))

(declare-fun e!1512138 () List!28114)

(assert (=> d!695048 (= lt!865649 e!1512138)))

(declare-fun c!376503 () Bool)

(assert (=> d!695048 (= c!376503 (is-Nil!28016 s!9460))))

(assert (=> d!695048 (= (++!6898 s!9460 Nil!28016) lt!865649)))

(declare-fun b!2368842 () Bool)

(assert (=> b!2368842 (= e!1512139 (or (not (= Nil!28016 Nil!28016)) (= lt!865649 s!9460)))))

(declare-fun b!2368840 () Bool)

(assert (=> b!2368840 (= e!1512138 (Cons!28016 (h!33417 s!9460) (++!6898 (t!208091 s!9460) Nil!28016)))))

(declare-fun b!2368839 () Bool)

(assert (=> b!2368839 (= e!1512138 Nil!28016)))

(assert (= (and d!695048 c!376503) b!2368839))

(assert (= (and d!695048 (not c!376503)) b!2368840))

(assert (= (and d!695048 res!1005395) b!2368841))

(assert (= (and b!2368841 res!1005396) b!2368842))

(declare-fun m!2777509 () Bool)

(assert (=> b!2368841 m!2777509))

(declare-fun m!2777511 () Bool)

(assert (=> b!2368841 m!2777511))

(declare-fun m!2777513 () Bool)

(assert (=> b!2368841 m!2777513))

(declare-fun m!2777515 () Bool)

(assert (=> d!695048 m!2777515))

(declare-fun m!2777517 () Bool)

(assert (=> d!695048 m!2777517))

(declare-fun m!2777519 () Bool)

(assert (=> d!695048 m!2777519))

(declare-fun m!2777521 () Bool)

(assert (=> b!2368840 m!2777521))

(assert (=> b!2368654 d!695048))

(declare-fun d!695050 () Bool)

(assert (=> d!695050 (matchR!3055 (Concat!11574 lt!865610 EmptyExpr!6938) (++!6898 s!9460 Nil!28016))))

(declare-fun lt!865652 () Unit!40911)

(declare-fun choose!13763 (Regex!6938 Regex!6938 List!28114 List!28114) Unit!40911)

(assert (=> d!695050 (= lt!865652 (choose!13763 lt!865610 EmptyExpr!6938 s!9460 Nil!28016))))

(declare-fun e!1512142 () Bool)

(assert (=> d!695050 e!1512142))

(declare-fun res!1005399 () Bool)

(assert (=> d!695050 (=> (not res!1005399) (not e!1512142))))

(assert (=> d!695050 (= res!1005399 (validRegex!2667 lt!865610))))

(assert (=> d!695050 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!11 lt!865610 EmptyExpr!6938 s!9460 Nil!28016) lt!865652)))

(declare-fun b!2368845 () Bool)

(assert (=> b!2368845 (= e!1512142 (validRegex!2667 EmptyExpr!6938))))

(assert (= (and d!695050 res!1005399) b!2368845))

(assert (=> d!695050 m!2777391))

(assert (=> d!695050 m!2777391))

(assert (=> d!695050 m!2777393))

(declare-fun m!2777523 () Bool)

(assert (=> d!695050 m!2777523))

(declare-fun m!2777525 () Bool)

(assert (=> d!695050 m!2777525))

(declare-fun m!2777527 () Bool)

(assert (=> b!2368845 m!2777527))

(assert (=> b!2368654 d!695050))

(declare-fun bs!461099 () Bool)

(declare-fun b!2368894 () Bool)

(assert (= bs!461099 (and b!2368894 b!2368658)))

(declare-fun lambda!87585 () Int)

(assert (=> bs!461099 (not (= lambda!87585 lambda!87559))))

(assert (=> bs!461099 (not (= lambda!87585 lambda!87560))))

(assert (=> b!2368894 true))

(assert (=> b!2368894 true))

(declare-fun bs!461100 () Bool)

(declare-fun b!2368897 () Bool)

(assert (= bs!461100 (and b!2368897 b!2368658)))

(declare-fun lambda!87586 () Int)

(assert (=> bs!461100 (not (= lambda!87586 lambda!87559))))

(assert (=> bs!461100 (= lambda!87586 lambda!87560)))

(declare-fun bs!461101 () Bool)

(assert (= bs!461101 (and b!2368897 b!2368894)))

(assert (=> bs!461101 (not (= lambda!87586 lambda!87585))))

(assert (=> b!2368897 true))

(assert (=> b!2368897 true))

(declare-fun b!2368889 () Bool)

(declare-fun e!1512172 () Bool)

(declare-fun call!144064 () Bool)

(assert (=> b!2368889 (= e!1512172 call!144064)))

(declare-fun b!2368890 () Bool)

(declare-fun e!1512173 () Bool)

(assert (=> b!2368890 (= e!1512172 e!1512173)))

(declare-fun res!1005419 () Bool)

(assert (=> b!2368890 (= res!1005419 (not (is-EmptyLang!6938 r!13927)))))

(assert (=> b!2368890 (=> (not res!1005419) (not e!1512173))))

(declare-fun b!2368891 () Bool)

(declare-fun c!376516 () Bool)

(assert (=> b!2368891 (= c!376516 (is-ElementMatch!6938 r!13927))))

(declare-fun e!1512169 () Bool)

(assert (=> b!2368891 (= e!1512173 e!1512169)))

(declare-fun b!2368892 () Bool)

(declare-fun res!1005421 () Bool)

(declare-fun e!1512171 () Bool)

(assert (=> b!2368892 (=> res!1005421 e!1512171)))

(assert (=> b!2368892 (= res!1005421 call!144064)))

(declare-fun e!1512168 () Bool)

(assert (=> b!2368892 (= e!1512168 e!1512171)))

(declare-fun b!2368893 () Bool)

(assert (=> b!2368893 (= e!1512169 (= s!9460 (Cons!28016 (c!376470 r!13927) Nil!28016)))))

(declare-fun call!144065 () Bool)

(assert (=> b!2368894 (= e!1512171 call!144065)))

(declare-fun bm!144059 () Bool)

(assert (=> bm!144059 (= call!144064 (isEmpty!15943 s!9460))))

(declare-fun b!2368895 () Bool)

(declare-fun e!1512174 () Bool)

(declare-fun e!1512170 () Bool)

(assert (=> b!2368895 (= e!1512174 e!1512170)))

(declare-fun res!1005420 () Bool)

(assert (=> b!2368895 (= res!1005420 (matchRSpec!787 (regOne!14389 r!13927) s!9460))))

(assert (=> b!2368895 (=> res!1005420 e!1512170)))

(declare-fun b!2368896 () Bool)

(assert (=> b!2368896 (= e!1512170 (matchRSpec!787 (regTwo!14389 r!13927) s!9460))))

(declare-fun d!695052 () Bool)

(declare-fun c!376518 () Bool)

(assert (=> d!695052 (= c!376518 (is-EmptyExpr!6938 r!13927))))

(assert (=> d!695052 (= (matchRSpec!787 r!13927 s!9460) e!1512172)))

(declare-fun bm!144060 () Bool)

(declare-fun c!376519 () Bool)

(assert (=> bm!144060 (= call!144065 (Exists!1000 (ite c!376519 lambda!87585 lambda!87586)))))

(assert (=> b!2368897 (= e!1512168 call!144065)))

(declare-fun b!2368898 () Bool)

(assert (=> b!2368898 (= e!1512174 e!1512168)))

(assert (=> b!2368898 (= c!376519 (is-Star!6938 r!13927))))

(declare-fun b!2368899 () Bool)

(declare-fun c!376517 () Bool)

(assert (=> b!2368899 (= c!376517 (is-Union!6938 r!13927))))

(assert (=> b!2368899 (= e!1512169 e!1512174)))

(assert (= (and d!695052 c!376518) b!2368889))

(assert (= (and d!695052 (not c!376518)) b!2368890))

(assert (= (and b!2368890 res!1005419) b!2368891))

(assert (= (and b!2368891 c!376516) b!2368893))

(assert (= (and b!2368891 (not c!376516)) b!2368899))

(assert (= (and b!2368899 c!376517) b!2368895))

(assert (= (and b!2368899 (not c!376517)) b!2368898))

(assert (= (and b!2368895 (not res!1005420)) b!2368896))

(assert (= (and b!2368898 c!376519) b!2368892))

(assert (= (and b!2368898 (not c!376519)) b!2368897))

(assert (= (and b!2368892 (not res!1005421)) b!2368894))

(assert (= (or b!2368894 b!2368897) bm!144060))

(assert (= (or b!2368889 b!2368892) bm!144059))

(declare-fun m!2777537 () Bool)

(assert (=> bm!144059 m!2777537))

(declare-fun m!2777539 () Bool)

(assert (=> b!2368895 m!2777539))

(declare-fun m!2777541 () Bool)

(assert (=> b!2368896 m!2777541))

(declare-fun m!2777543 () Bool)

(assert (=> bm!144060 m!2777543))

(assert (=> b!2368648 d!695052))

(declare-fun d!695056 () Bool)

(declare-fun e!1512175 () Bool)

(assert (=> d!695056 e!1512175))

(declare-fun c!376522 () Bool)

(assert (=> d!695056 (= c!376522 (is-EmptyExpr!6938 r!13927))))

(declare-fun lt!865653 () Bool)

(declare-fun e!1512178 () Bool)

(assert (=> d!695056 (= lt!865653 e!1512178)))

(declare-fun c!376521 () Bool)

(assert (=> d!695056 (= c!376521 (isEmpty!15943 s!9460))))

(assert (=> d!695056 (validRegex!2667 r!13927)))

(assert (=> d!695056 (= (matchR!3055 r!13927 s!9460) lt!865653)))

(declare-fun b!2368900 () Bool)

(declare-fun e!1512181 () Bool)

(assert (=> b!2368900 (= e!1512175 e!1512181)))

(declare-fun c!376520 () Bool)

(assert (=> b!2368900 (= c!376520 (is-EmptyLang!6938 r!13927))))

(declare-fun b!2368901 () Bool)

(declare-fun e!1512177 () Bool)

(declare-fun e!1512176 () Bool)

(assert (=> b!2368901 (= e!1512177 e!1512176)))

(declare-fun res!1005425 () Bool)

(assert (=> b!2368901 (=> res!1005425 e!1512176)))

(declare-fun call!144066 () Bool)

(assert (=> b!2368901 (= res!1005425 call!144066)))

(declare-fun b!2368902 () Bool)

(assert (=> b!2368902 (= e!1512175 (= lt!865653 call!144066))))

(declare-fun b!2368903 () Bool)

(declare-fun res!1005423 () Bool)

(declare-fun e!1512180 () Bool)

(assert (=> b!2368903 (=> (not res!1005423) (not e!1512180))))

(assert (=> b!2368903 (= res!1005423 (not call!144066))))

(declare-fun b!2368904 () Bool)

(declare-fun res!1005429 () Bool)

(declare-fun e!1512179 () Bool)

(assert (=> b!2368904 (=> res!1005429 e!1512179)))

(assert (=> b!2368904 (= res!1005429 e!1512180)))

(declare-fun res!1005426 () Bool)

(assert (=> b!2368904 (=> (not res!1005426) (not e!1512180))))

(assert (=> b!2368904 (= res!1005426 lt!865653)))

(declare-fun b!2368905 () Bool)

(assert (=> b!2368905 (= e!1512180 (= (head!5119 s!9460) (c!376470 r!13927)))))

(declare-fun b!2368906 () Bool)

(assert (=> b!2368906 (= e!1512176 (not (= (head!5119 s!9460) (c!376470 r!13927))))))

(declare-fun b!2368907 () Bool)

(declare-fun res!1005428 () Bool)

(assert (=> b!2368907 (=> res!1005428 e!1512176)))

(assert (=> b!2368907 (= res!1005428 (not (isEmpty!15943 (tail!3389 s!9460))))))

(declare-fun b!2368908 () Bool)

(assert (=> b!2368908 (= e!1512178 (matchR!3055 (derivativeStep!1655 r!13927 (head!5119 s!9460)) (tail!3389 s!9460)))))

(declare-fun b!2368909 () Bool)

(assert (=> b!2368909 (= e!1512181 (not lt!865653))))

(declare-fun b!2368910 () Bool)

(assert (=> b!2368910 (= e!1512178 (nullable!1997 r!13927))))

(declare-fun b!2368911 () Bool)

(assert (=> b!2368911 (= e!1512179 e!1512177)))

(declare-fun res!1005422 () Bool)

(assert (=> b!2368911 (=> (not res!1005422) (not e!1512177))))

(assert (=> b!2368911 (= res!1005422 (not lt!865653))))

(declare-fun b!2368912 () Bool)

(declare-fun res!1005427 () Bool)

(assert (=> b!2368912 (=> res!1005427 e!1512179)))

(assert (=> b!2368912 (= res!1005427 (not (is-ElementMatch!6938 r!13927)))))

(assert (=> b!2368912 (= e!1512181 e!1512179)))

(declare-fun bm!144061 () Bool)

(assert (=> bm!144061 (= call!144066 (isEmpty!15943 s!9460))))

(declare-fun b!2368913 () Bool)

(declare-fun res!1005424 () Bool)

(assert (=> b!2368913 (=> (not res!1005424) (not e!1512180))))

(assert (=> b!2368913 (= res!1005424 (isEmpty!15943 (tail!3389 s!9460)))))

(assert (= (and d!695056 c!376521) b!2368910))

(assert (= (and d!695056 (not c!376521)) b!2368908))

(assert (= (and d!695056 c!376522) b!2368902))

(assert (= (and d!695056 (not c!376522)) b!2368900))

(assert (= (and b!2368900 c!376520) b!2368909))

(assert (= (and b!2368900 (not c!376520)) b!2368912))

(assert (= (and b!2368912 (not res!1005427)) b!2368904))

(assert (= (and b!2368904 res!1005426) b!2368903))

(assert (= (and b!2368903 res!1005423) b!2368913))

(assert (= (and b!2368913 res!1005424) b!2368905))

(assert (= (and b!2368904 (not res!1005429)) b!2368911))

(assert (= (and b!2368911 res!1005422) b!2368901))

(assert (= (and b!2368901 (not res!1005425)) b!2368907))

(assert (= (and b!2368907 (not res!1005428)) b!2368906))

(assert (= (or b!2368902 b!2368901 b!2368903) bm!144061))

(assert (=> bm!144061 m!2777537))

(declare-fun m!2777545 () Bool)

(assert (=> b!2368906 m!2777545))

(assert (=> b!2368905 m!2777545))

(assert (=> d!695056 m!2777537))

(declare-fun m!2777547 () Bool)

(assert (=> d!695056 m!2777547))

(declare-fun m!2777549 () Bool)

(assert (=> b!2368913 m!2777549))

(assert (=> b!2368913 m!2777549))

(declare-fun m!2777551 () Bool)

(assert (=> b!2368913 m!2777551))

(assert (=> b!2368907 m!2777549))

(assert (=> b!2368907 m!2777549))

(assert (=> b!2368907 m!2777551))

(assert (=> b!2368908 m!2777545))

(assert (=> b!2368908 m!2777545))

(declare-fun m!2777553 () Bool)

(assert (=> b!2368908 m!2777553))

(assert (=> b!2368908 m!2777549))

(assert (=> b!2368908 m!2777553))

(assert (=> b!2368908 m!2777549))

(declare-fun m!2777555 () Bool)

(assert (=> b!2368908 m!2777555))

(declare-fun m!2777557 () Bool)

(assert (=> b!2368910 m!2777557))

(assert (=> b!2368648 d!695056))

(declare-fun d!695058 () Bool)

(assert (=> d!695058 (= (matchR!3055 r!13927 s!9460) (matchRSpec!787 r!13927 s!9460))))

(declare-fun lt!865656 () Unit!40911)

(declare-fun choose!13764 (Regex!6938 List!28114) Unit!40911)

(assert (=> d!695058 (= lt!865656 (choose!13764 r!13927 s!9460))))

(assert (=> d!695058 (validRegex!2667 r!13927)))

(assert (=> d!695058 (= (mainMatchTheorem!787 r!13927 s!9460) lt!865656)))

(declare-fun bs!461102 () Bool)

(assert (= bs!461102 d!695058))

(assert (=> bs!461102 m!2777403))

(assert (=> bs!461102 m!2777401))

(declare-fun m!2777559 () Bool)

(assert (=> bs!461102 m!2777559))

(assert (=> bs!461102 m!2777547))

(assert (=> b!2368648 d!695058))

(declare-fun bs!461103 () Bool)

(declare-fun d!695060 () Bool)

(assert (= bs!461103 (and d!695060 b!2368658)))

(declare-fun lambda!87589 () Int)

(assert (=> bs!461103 (= lambda!87589 lambda!87559)))

(assert (=> bs!461103 (not (= lambda!87589 lambda!87560))))

(declare-fun bs!461104 () Bool)

(assert (= bs!461104 (and d!695060 b!2368894)))

(assert (=> bs!461104 (not (= lambda!87589 lambda!87585))))

(declare-fun bs!461105 () Bool)

(assert (= bs!461105 (and d!695060 b!2368897)))

(assert (=> bs!461105 (not (= lambda!87589 lambda!87586))))

(assert (=> d!695060 true))

(assert (=> d!695060 true))

(assert (=> d!695060 true))

(assert (=> d!695060 (= (isDefined!4309 (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) Nil!28016 s!9460 s!9460)) (Exists!1000 lambda!87589))))

(declare-fun lt!865661 () Unit!40911)

(declare-fun choose!13765 (Regex!6938 Regex!6938 List!28114) Unit!40911)

(assert (=> d!695060 (= lt!865661 (choose!13765 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460))))

(assert (=> d!695060 (validRegex!2667 (regOne!14388 r!13927))))

(assert (=> d!695060 (= (lemmaFindConcatSeparationEquivalentToExists!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460) lt!865661)))

(declare-fun bs!461106 () Bool)

(assert (= bs!461106 d!695060))

(declare-fun m!2777561 () Bool)

(assert (=> bs!461106 m!2777561))

(declare-fun m!2777563 () Bool)

(assert (=> bs!461106 m!2777563))

(assert (=> bs!461106 m!2777411))

(assert (=> bs!461106 m!2777413))

(assert (=> bs!461106 m!2777411))

(declare-fun m!2777565 () Bool)

(assert (=> bs!461106 m!2777565))

(assert (=> b!2368658 d!695060))

(declare-fun bs!461107 () Bool)

(declare-fun d!695062 () Bool)

(assert (= bs!461107 (and d!695062 d!695060)))

(declare-fun lambda!87594 () Int)

(assert (=> bs!461107 (= lambda!87594 lambda!87589)))

(declare-fun bs!461108 () Bool)

(assert (= bs!461108 (and d!695062 b!2368658)))

(assert (=> bs!461108 (not (= lambda!87594 lambda!87560))))

(assert (=> bs!461108 (= lambda!87594 lambda!87559)))

(declare-fun bs!461109 () Bool)

(assert (= bs!461109 (and d!695062 b!2368894)))

(assert (=> bs!461109 (not (= lambda!87594 lambda!87585))))

(declare-fun bs!461110 () Bool)

(assert (= bs!461110 (and d!695062 b!2368897)))

(assert (=> bs!461110 (not (= lambda!87594 lambda!87586))))

(assert (=> d!695062 true))

(assert (=> d!695062 true))

(assert (=> d!695062 true))

(declare-fun lambda!87595 () Int)

(assert (=> bs!461107 (not (= lambda!87595 lambda!87589))))

(declare-fun bs!461111 () Bool)

(assert (= bs!461111 d!695062))

(assert (=> bs!461111 (not (= lambda!87595 lambda!87594))))

(assert (=> bs!461108 (= lambda!87595 lambda!87560)))

(assert (=> bs!461108 (not (= lambda!87595 lambda!87559))))

(assert (=> bs!461109 (not (= lambda!87595 lambda!87585))))

(assert (=> bs!461110 (= lambda!87595 lambda!87586)))

(assert (=> d!695062 true))

(assert (=> d!695062 true))

(assert (=> d!695062 true))

(assert (=> d!695062 (= (Exists!1000 lambda!87594) (Exists!1000 lambda!87595))))

(declare-fun lt!865665 () Unit!40911)

(declare-fun choose!13766 (Regex!6938 Regex!6938 List!28114) Unit!40911)

(assert (=> d!695062 (= lt!865665 (choose!13766 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460))))

(assert (=> d!695062 (validRegex!2667 (regOne!14388 r!13927))))

(assert (=> d!695062 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!339 (regOne!14388 r!13927) (regTwo!14388 r!13927) s!9460) lt!865665)))

(declare-fun m!2777581 () Bool)

(assert (=> bs!461111 m!2777581))

(declare-fun m!2777583 () Bool)

(assert (=> bs!461111 m!2777583))

(declare-fun m!2777585 () Bool)

(assert (=> bs!461111 m!2777585))

(assert (=> bs!461111 m!2777565))

(assert (=> b!2368658 d!695062))

(declare-fun b!2368996 () Bool)

(declare-fun e!1512226 () Bool)

(declare-fun lt!865677 () Option!5481)

(declare-fun get!8513 (Option!5481) tuple2!27740)

(assert (=> b!2368996 (= e!1512226 (= (++!6898 (_1!16411 (get!8513 lt!865677)) (_2!16411 (get!8513 lt!865677))) s!9460))))

(declare-fun b!2368997 () Bool)

(declare-fun lt!865679 () Unit!40911)

(declare-fun lt!865678 () Unit!40911)

(assert (=> b!2368997 (= lt!865679 lt!865678)))

(assert (=> b!2368997 (= (++!6898 (++!6898 Nil!28016 (Cons!28016 (h!33417 s!9460) Nil!28016)) (t!208091 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!544 (List!28114 C!14034 List!28114 List!28114) Unit!40911)

(assert (=> b!2368997 (= lt!865678 (lemmaMoveElementToOtherListKeepsConcatEq!544 Nil!28016 (h!33417 s!9460) (t!208091 s!9460) s!9460))))

(declare-fun e!1512227 () Option!5481)

(assert (=> b!2368997 (= e!1512227 (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) (++!6898 Nil!28016 (Cons!28016 (h!33417 s!9460) Nil!28016)) (t!208091 s!9460) s!9460))))

(declare-fun b!2368998 () Bool)

(declare-fun res!1005479 () Bool)

(assert (=> b!2368998 (=> (not res!1005479) (not e!1512226))))

(assert (=> b!2368998 (= res!1005479 (matchR!3055 (regOne!14388 r!13927) (_1!16411 (get!8513 lt!865677))))))

(declare-fun b!2368999 () Bool)

(declare-fun e!1512225 () Option!5481)

(assert (=> b!2368999 (= e!1512225 e!1512227)))

(declare-fun c!376541 () Bool)

(assert (=> b!2368999 (= c!376541 (is-Nil!28016 s!9460))))

(declare-fun b!2369000 () Bool)

(declare-fun res!1005482 () Bool)

(assert (=> b!2369000 (=> (not res!1005482) (not e!1512226))))

(assert (=> b!2369000 (= res!1005482 (matchR!3055 (regTwo!14388 r!13927) (_2!16411 (get!8513 lt!865677))))))

(declare-fun b!2369001 () Bool)

(declare-fun e!1512229 () Bool)

(assert (=> b!2369001 (= e!1512229 (matchR!3055 (regTwo!14388 r!13927) s!9460))))

(declare-fun d!695066 () Bool)

(declare-fun e!1512228 () Bool)

(assert (=> d!695066 e!1512228))

(declare-fun res!1005481 () Bool)

(assert (=> d!695066 (=> res!1005481 e!1512228)))

(assert (=> d!695066 (= res!1005481 e!1512226)))

(declare-fun res!1005480 () Bool)

(assert (=> d!695066 (=> (not res!1005480) (not e!1512226))))

(assert (=> d!695066 (= res!1005480 (isDefined!4309 lt!865677))))

(assert (=> d!695066 (= lt!865677 e!1512225)))

(declare-fun c!376540 () Bool)

(assert (=> d!695066 (= c!376540 e!1512229)))

(declare-fun res!1005478 () Bool)

(assert (=> d!695066 (=> (not res!1005478) (not e!1512229))))

(assert (=> d!695066 (= res!1005478 (matchR!3055 (regOne!14388 r!13927) Nil!28016))))

(assert (=> d!695066 (validRegex!2667 (regOne!14388 r!13927))))

(assert (=> d!695066 (= (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) Nil!28016 s!9460 s!9460) lt!865677)))

(declare-fun b!2369002 () Bool)

(assert (=> b!2369002 (= e!1512227 None!5480)))

(declare-fun b!2369003 () Bool)

(assert (=> b!2369003 (= e!1512228 (not (isDefined!4309 lt!865677)))))

(declare-fun b!2369004 () Bool)

(assert (=> b!2369004 (= e!1512225 (Some!5480 (tuple2!27741 Nil!28016 s!9460)))))

(assert (= (and d!695066 res!1005478) b!2369001))

(assert (= (and d!695066 c!376540) b!2369004))

(assert (= (and d!695066 (not c!376540)) b!2368999))

(assert (= (and b!2368999 c!376541) b!2369002))

(assert (= (and b!2368999 (not c!376541)) b!2368997))

(assert (= (and d!695066 res!1005480) b!2368998))

(assert (= (and b!2368998 res!1005479) b!2369000))

(assert (= (and b!2369000 res!1005482) b!2368996))

(assert (= (and d!695066 (not res!1005481)) b!2369003))

(declare-fun m!2777589 () Bool)

(assert (=> b!2368998 m!2777589))

(declare-fun m!2777591 () Bool)

(assert (=> b!2368998 m!2777591))

(assert (=> b!2368996 m!2777589))

(declare-fun m!2777593 () Bool)

(assert (=> b!2368996 m!2777593))

(declare-fun m!2777595 () Bool)

(assert (=> b!2369003 m!2777595))

(declare-fun m!2777597 () Bool)

(assert (=> b!2369001 m!2777597))

(declare-fun m!2777599 () Bool)

(assert (=> b!2368997 m!2777599))

(assert (=> b!2368997 m!2777599))

(declare-fun m!2777601 () Bool)

(assert (=> b!2368997 m!2777601))

(declare-fun m!2777603 () Bool)

(assert (=> b!2368997 m!2777603))

(assert (=> b!2368997 m!2777599))

(declare-fun m!2777605 () Bool)

(assert (=> b!2368997 m!2777605))

(assert (=> b!2369000 m!2777589))

(declare-fun m!2777607 () Bool)

(assert (=> b!2369000 m!2777607))

(assert (=> d!695066 m!2777595))

(declare-fun m!2777609 () Bool)

(assert (=> d!695066 m!2777609))

(assert (=> d!695066 m!2777565))

(assert (=> b!2368658 d!695066))

(declare-fun d!695070 () Bool)

(declare-fun choose!13767 (Int) Bool)

(assert (=> d!695070 (= (Exists!1000 lambda!87559) (choose!13767 lambda!87559))))

(declare-fun bs!461113 () Bool)

(assert (= bs!461113 d!695070))

(declare-fun m!2777611 () Bool)

(assert (=> bs!461113 m!2777611))

(assert (=> b!2368658 d!695070))

(declare-fun d!695072 () Bool)

(declare-fun isEmpty!15944 (Option!5481) Bool)

(assert (=> d!695072 (= (isDefined!4309 (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) Nil!28016 s!9460 s!9460)) (not (isEmpty!15944 (findConcatSeparation!589 (regOne!14388 r!13927) (regTwo!14388 r!13927) Nil!28016 s!9460 s!9460))))))

(declare-fun bs!461114 () Bool)

(assert (= bs!461114 d!695072))

(assert (=> bs!461114 m!2777411))

(declare-fun m!2777613 () Bool)

(assert (=> bs!461114 m!2777613))

(assert (=> b!2368658 d!695072))

(declare-fun d!695074 () Bool)

(assert (=> d!695074 (= (Exists!1000 lambda!87560) (choose!13767 lambda!87560))))

(declare-fun bs!461115 () Bool)

(assert (= bs!461115 d!695074))

(declare-fun m!2777615 () Bool)

(assert (=> bs!461115 m!2777615))

(assert (=> b!2368658 d!695074))

(declare-fun d!695076 () Bool)

(declare-fun e!1512236 () Bool)

(assert (=> d!695076 e!1512236))

(declare-fun c!376548 () Bool)

(assert (=> d!695076 (= c!376548 (is-EmptyExpr!6938 lt!865610))))

(declare-fun lt!865680 () Bool)

(declare-fun e!1512239 () Bool)

(assert (=> d!695076 (= lt!865680 e!1512239)))

(declare-fun c!376547 () Bool)

(assert (=> d!695076 (= c!376547 (isEmpty!15943 s!9460))))

(assert (=> d!695076 (validRegex!2667 lt!865610)))

(assert (=> d!695076 (= (matchR!3055 lt!865610 s!9460) lt!865680)))

(declare-fun b!2369015 () Bool)

(declare-fun e!1512242 () Bool)

(assert (=> b!2369015 (= e!1512236 e!1512242)))

(declare-fun c!376546 () Bool)

(assert (=> b!2369015 (= c!376546 (is-EmptyLang!6938 lt!865610))))

(declare-fun b!2369016 () Bool)

(declare-fun e!1512238 () Bool)

(declare-fun e!1512237 () Bool)

(assert (=> b!2369016 (= e!1512238 e!1512237)))

(declare-fun res!1005488 () Bool)

(assert (=> b!2369016 (=> res!1005488 e!1512237)))

(declare-fun call!144070 () Bool)

(assert (=> b!2369016 (= res!1005488 call!144070)))

(declare-fun b!2369017 () Bool)

(assert (=> b!2369017 (= e!1512236 (= lt!865680 call!144070))))

(declare-fun b!2369018 () Bool)

(declare-fun res!1005486 () Bool)

(declare-fun e!1512241 () Bool)

(assert (=> b!2369018 (=> (not res!1005486) (not e!1512241))))

(assert (=> b!2369018 (= res!1005486 (not call!144070))))

(declare-fun b!2369019 () Bool)

(declare-fun res!1005492 () Bool)

(declare-fun e!1512240 () Bool)

(assert (=> b!2369019 (=> res!1005492 e!1512240)))

(assert (=> b!2369019 (= res!1005492 e!1512241)))

(declare-fun res!1005489 () Bool)

(assert (=> b!2369019 (=> (not res!1005489) (not e!1512241))))

(assert (=> b!2369019 (= res!1005489 lt!865680)))

(declare-fun b!2369020 () Bool)

(assert (=> b!2369020 (= e!1512241 (= (head!5119 s!9460) (c!376470 lt!865610)))))

(declare-fun b!2369021 () Bool)

(assert (=> b!2369021 (= e!1512237 (not (= (head!5119 s!9460) (c!376470 lt!865610))))))

(declare-fun b!2369022 () Bool)

(declare-fun res!1005491 () Bool)

(assert (=> b!2369022 (=> res!1005491 e!1512237)))

(assert (=> b!2369022 (= res!1005491 (not (isEmpty!15943 (tail!3389 s!9460))))))

(declare-fun b!2369023 () Bool)

(assert (=> b!2369023 (= e!1512239 (matchR!3055 (derivativeStep!1655 lt!865610 (head!5119 s!9460)) (tail!3389 s!9460)))))

(declare-fun b!2369024 () Bool)

(assert (=> b!2369024 (= e!1512242 (not lt!865680))))

(declare-fun b!2369025 () Bool)

(assert (=> b!2369025 (= e!1512239 (nullable!1997 lt!865610))))

(declare-fun b!2369026 () Bool)

(assert (=> b!2369026 (= e!1512240 e!1512238)))

(declare-fun res!1005485 () Bool)

(assert (=> b!2369026 (=> (not res!1005485) (not e!1512238))))

(assert (=> b!2369026 (= res!1005485 (not lt!865680))))

(declare-fun b!2369027 () Bool)

(declare-fun res!1005490 () Bool)

(assert (=> b!2369027 (=> res!1005490 e!1512240)))

(assert (=> b!2369027 (= res!1005490 (not (is-ElementMatch!6938 lt!865610)))))

(assert (=> b!2369027 (= e!1512242 e!1512240)))

(declare-fun bm!144065 () Bool)

(assert (=> bm!144065 (= call!144070 (isEmpty!15943 s!9460))))

(declare-fun b!2369028 () Bool)

(declare-fun res!1005487 () Bool)

(assert (=> b!2369028 (=> (not res!1005487) (not e!1512241))))

(assert (=> b!2369028 (= res!1005487 (isEmpty!15943 (tail!3389 s!9460)))))

(assert (= (and d!695076 c!376547) b!2369025))

(assert (= (and d!695076 (not c!376547)) b!2369023))

(assert (= (and d!695076 c!376548) b!2369017))

(assert (= (and d!695076 (not c!376548)) b!2369015))

(assert (= (and b!2369015 c!376546) b!2369024))

(assert (= (and b!2369015 (not c!376546)) b!2369027))

(assert (= (and b!2369027 (not res!1005490)) b!2369019))

(assert (= (and b!2369019 res!1005489) b!2369018))

(assert (= (and b!2369018 res!1005486) b!2369028))

(assert (= (and b!2369028 res!1005487) b!2369020))

(assert (= (and b!2369019 (not res!1005492)) b!2369026))

(assert (= (and b!2369026 res!1005485) b!2369016))

(assert (= (and b!2369016 (not res!1005488)) b!2369022))

(assert (= (and b!2369022 (not res!1005491)) b!2369021))

(assert (= (or b!2369017 b!2369016 b!2369018) bm!144065))

(assert (=> bm!144065 m!2777537))

(assert (=> b!2369021 m!2777545))

(assert (=> b!2369020 m!2777545))

(assert (=> d!695076 m!2777537))

(assert (=> d!695076 m!2777525))

(assert (=> b!2369028 m!2777549))

(assert (=> b!2369028 m!2777549))

(assert (=> b!2369028 m!2777551))

(assert (=> b!2369022 m!2777549))

(assert (=> b!2369022 m!2777549))

(assert (=> b!2369022 m!2777551))

(assert (=> b!2369023 m!2777545))

(assert (=> b!2369023 m!2777545))

(declare-fun m!2777617 () Bool)

(assert (=> b!2369023 m!2777617))

(assert (=> b!2369023 m!2777549))

(assert (=> b!2369023 m!2777617))

(assert (=> b!2369023 m!2777549))

(declare-fun m!2777619 () Bool)

(assert (=> b!2369023 m!2777619))

(declare-fun m!2777621 () Bool)

(assert (=> b!2369025 m!2777621))

(assert (=> b!2368647 d!695076))

(declare-fun d!695078 () Bool)

(assert (=> d!695078 (= (head!5117 l!9164) (h!33418 l!9164))))

(assert (=> b!2368647 d!695078))

(declare-fun bs!461116 () Bool)

(declare-fun d!695080 () Bool)

(assert (= bs!461116 (and d!695080 start!232458)))

(declare-fun lambda!87598 () Int)

(assert (=> bs!461116 (= lambda!87598 lambda!87558)))

(declare-fun bs!461117 () Bool)

(assert (= bs!461117 (and d!695080 d!695044)))

(assert (=> bs!461117 (= lambda!87598 lambda!87574)))

(declare-fun b!2369029 () Bool)

(declare-fun e!1512247 () Bool)

(declare-fun lt!865681 () Regex!6938)

(assert (=> b!2369029 (= e!1512247 (isEmptyExpr!20 lt!865681))))

(declare-fun b!2369030 () Bool)

(declare-fun e!1512245 () Bool)

(assert (=> b!2369030 (= e!1512245 (isEmpty!15941 (t!208092 l!9164)))))

(declare-fun b!2369031 () Bool)

(declare-fun e!1512243 () Bool)

(assert (=> b!2369031 (= e!1512243 (isConcat!20 lt!865681))))

(declare-fun b!2369032 () Bool)

(declare-fun e!1512246 () Regex!6938)

(assert (=> b!2369032 (= e!1512246 (h!33418 l!9164))))

(declare-fun b!2369033 () Bool)

(assert (=> b!2369033 (= e!1512247 e!1512243)))

(declare-fun c!376551 () Bool)

(assert (=> b!2369033 (= c!376551 (isEmpty!15941 (tail!3387 l!9164)))))

(declare-fun e!1512248 () Bool)

(assert (=> d!695080 e!1512248))

(declare-fun res!1005493 () Bool)

(assert (=> d!695080 (=> (not res!1005493) (not e!1512248))))

(assert (=> d!695080 (= res!1005493 (validRegex!2667 lt!865681))))

(assert (=> d!695080 (= lt!865681 e!1512246)))

(declare-fun c!376550 () Bool)

(assert (=> d!695080 (= c!376550 e!1512245)))

(declare-fun res!1005494 () Bool)

(assert (=> d!695080 (=> (not res!1005494) (not e!1512245))))

(assert (=> d!695080 (= res!1005494 (is-Cons!28017 l!9164))))

(assert (=> d!695080 (forall!5572 l!9164 lambda!87598)))

(assert (=> d!695080 (= (generalisedConcat!39 l!9164) lt!865681)))

(declare-fun b!2369034 () Bool)

(assert (=> b!2369034 (= e!1512243 (= lt!865681 (head!5117 l!9164)))))

(declare-fun b!2369035 () Bool)

(declare-fun e!1512244 () Regex!6938)

(assert (=> b!2369035 (= e!1512244 (Concat!11574 (h!33418 l!9164) (generalisedConcat!39 (t!208092 l!9164))))))

(declare-fun b!2369036 () Bool)

(assert (=> b!2369036 (= e!1512244 EmptyExpr!6938)))

(declare-fun b!2369037 () Bool)

(assert (=> b!2369037 (= e!1512248 e!1512247)))

(declare-fun c!376549 () Bool)

(assert (=> b!2369037 (= c!376549 (isEmpty!15941 l!9164))))

(declare-fun b!2369038 () Bool)

(assert (=> b!2369038 (= e!1512246 e!1512244)))

(declare-fun c!376552 () Bool)

(assert (=> b!2369038 (= c!376552 (is-Cons!28017 l!9164))))

(assert (= (and d!695080 res!1005494) b!2369030))

(assert (= (and d!695080 c!376550) b!2369032))

(assert (= (and d!695080 (not c!376550)) b!2369038))

(assert (= (and b!2369038 c!376552) b!2369035))

(assert (= (and b!2369038 (not c!376552)) b!2369036))

(assert (= (and d!695080 res!1005493) b!2369037))

(assert (= (and b!2369037 c!376549) b!2369029))

(assert (= (and b!2369037 (not c!376549)) b!2369033))

(assert (= (and b!2369033 c!376551) b!2369034))

(assert (= (and b!2369033 (not c!376551)) b!2369031))

(assert (=> b!2369034 m!2777409))

(declare-fun m!2777623 () Bool)

(assert (=> b!2369030 m!2777623))

(declare-fun m!2777625 () Bool)

(assert (=> b!2369029 m!2777625))

(declare-fun m!2777627 () Bool)

(assert (=> b!2369035 m!2777627))

(declare-fun m!2777629 () Bool)

(assert (=> b!2369031 m!2777629))

(assert (=> b!2369033 m!2777425))

(assert (=> b!2369033 m!2777425))

(declare-fun m!2777631 () Bool)

(assert (=> b!2369033 m!2777631))

(assert (=> b!2369037 m!2777399))

(declare-fun m!2777633 () Bool)

(assert (=> d!695080 m!2777633))

(declare-fun m!2777635 () Bool)

(assert (=> d!695080 m!2777635))

(assert (=> b!2368652 d!695080))

(declare-fun d!695082 () Bool)

(assert (=> d!695082 (= (isEmpty!15941 lt!865607) (is-Nil!28017 lt!865607))))

(assert (=> b!2368657 d!695082))

(declare-fun d!695084 () Bool)

(assert (=> d!695084 (= (tail!3387 l!9164) (t!208092 l!9164))))

(assert (=> b!2368657 d!695084))

(declare-fun b!2369043 () Bool)

(declare-fun e!1512251 () Bool)

(declare-fun tp!757380 () Bool)

(assert (=> b!2369043 (= e!1512251 (and tp_is_empty!11289 tp!757380))))

(assert (=> b!2368655 (= tp!757348 e!1512251)))

(assert (= (and b!2368655 (is-Cons!28016 (t!208091 s!9460))) b!2369043))

(declare-fun e!1512260 () Bool)

(assert (=> b!2368653 (= tp!757346 e!1512260)))

(declare-fun b!2369064 () Bool)

(assert (=> b!2369064 (= e!1512260 tp_is_empty!11289)))

(declare-fun b!2369067 () Bool)

(declare-fun tp!757393 () Bool)

(declare-fun tp!757394 () Bool)

(assert (=> b!2369067 (= e!1512260 (and tp!757393 tp!757394))))

(declare-fun b!2369066 () Bool)

(declare-fun tp!757395 () Bool)

(assert (=> b!2369066 (= e!1512260 tp!757395)))

(declare-fun b!2369065 () Bool)

(declare-fun tp!757392 () Bool)

(declare-fun tp!757391 () Bool)

(assert (=> b!2369065 (= e!1512260 (and tp!757392 tp!757391))))

(assert (= (and b!2368653 (is-ElementMatch!6938 (regOne!14388 r!13927))) b!2369064))

(assert (= (and b!2368653 (is-Concat!11574 (regOne!14388 r!13927))) b!2369065))

(assert (= (and b!2368653 (is-Star!6938 (regOne!14388 r!13927))) b!2369066))

(assert (= (and b!2368653 (is-Union!6938 (regOne!14388 r!13927))) b!2369067))

(declare-fun e!1512261 () Bool)

(assert (=> b!2368653 (= tp!757352 e!1512261)))

(declare-fun b!2369068 () Bool)

(assert (=> b!2369068 (= e!1512261 tp_is_empty!11289)))

(declare-fun b!2369071 () Bool)

(declare-fun tp!757398 () Bool)

(declare-fun tp!757399 () Bool)

(assert (=> b!2369071 (= e!1512261 (and tp!757398 tp!757399))))

(declare-fun b!2369070 () Bool)

(declare-fun tp!757400 () Bool)

(assert (=> b!2369070 (= e!1512261 tp!757400)))

(declare-fun b!2369069 () Bool)

(declare-fun tp!757397 () Bool)

(declare-fun tp!757396 () Bool)

(assert (=> b!2369069 (= e!1512261 (and tp!757397 tp!757396))))

(assert (= (and b!2368653 (is-ElementMatch!6938 (regTwo!14388 r!13927))) b!2369068))

(assert (= (and b!2368653 (is-Concat!11574 (regTwo!14388 r!13927))) b!2369069))

(assert (= (and b!2368653 (is-Star!6938 (regTwo!14388 r!13927))) b!2369070))

(assert (= (and b!2368653 (is-Union!6938 (regTwo!14388 r!13927))) b!2369071))

(declare-fun e!1512262 () Bool)

(assert (=> b!2368651 (= tp!757353 e!1512262)))

(declare-fun b!2369072 () Bool)

(assert (=> b!2369072 (= e!1512262 tp_is_empty!11289)))

(declare-fun b!2369075 () Bool)

(declare-fun tp!757403 () Bool)

(declare-fun tp!757404 () Bool)

(assert (=> b!2369075 (= e!1512262 (and tp!757403 tp!757404))))

(declare-fun b!2369074 () Bool)

(declare-fun tp!757405 () Bool)

(assert (=> b!2369074 (= e!1512262 tp!757405)))

(declare-fun b!2369073 () Bool)

(declare-fun tp!757402 () Bool)

(declare-fun tp!757401 () Bool)

(assert (=> b!2369073 (= e!1512262 (and tp!757402 tp!757401))))

(assert (= (and b!2368651 (is-ElementMatch!6938 (h!33418 l!9164))) b!2369072))

(assert (= (and b!2368651 (is-Concat!11574 (h!33418 l!9164))) b!2369073))

(assert (= (and b!2368651 (is-Star!6938 (h!33418 l!9164))) b!2369074))

(assert (= (and b!2368651 (is-Union!6938 (h!33418 l!9164))) b!2369075))

(declare-fun b!2369080 () Bool)

(declare-fun e!1512265 () Bool)

(declare-fun tp!757410 () Bool)

(declare-fun tp!757411 () Bool)

(assert (=> b!2369080 (= e!1512265 (and tp!757410 tp!757411))))

(assert (=> b!2368651 (= tp!757351 e!1512265)))

(assert (= (and b!2368651 (is-Cons!28017 (t!208092 l!9164))) b!2369080))

(declare-fun e!1512266 () Bool)

(assert (=> b!2368656 (= tp!757347 e!1512266)))

(declare-fun b!2369081 () Bool)

(assert (=> b!2369081 (= e!1512266 tp_is_empty!11289)))

(declare-fun b!2369084 () Bool)

(declare-fun tp!757414 () Bool)

(declare-fun tp!757415 () Bool)

(assert (=> b!2369084 (= e!1512266 (and tp!757414 tp!757415))))

(declare-fun b!2369083 () Bool)

(declare-fun tp!757416 () Bool)

(assert (=> b!2369083 (= e!1512266 tp!757416)))

(declare-fun b!2369082 () Bool)

(declare-fun tp!757413 () Bool)

(declare-fun tp!757412 () Bool)

(assert (=> b!2369082 (= e!1512266 (and tp!757413 tp!757412))))

(assert (= (and b!2368656 (is-ElementMatch!6938 (reg!7267 r!13927))) b!2369081))

(assert (= (and b!2368656 (is-Concat!11574 (reg!7267 r!13927))) b!2369082))

(assert (= (and b!2368656 (is-Star!6938 (reg!7267 r!13927))) b!2369083))

(assert (= (and b!2368656 (is-Union!6938 (reg!7267 r!13927))) b!2369084))

(declare-fun e!1512267 () Bool)

(assert (=> b!2368645 (= tp!757349 e!1512267)))

(declare-fun b!2369085 () Bool)

(assert (=> b!2369085 (= e!1512267 tp_is_empty!11289)))

(declare-fun b!2369088 () Bool)

(declare-fun tp!757419 () Bool)

(declare-fun tp!757420 () Bool)

(assert (=> b!2369088 (= e!1512267 (and tp!757419 tp!757420))))

(declare-fun b!2369087 () Bool)

(declare-fun tp!757421 () Bool)

(assert (=> b!2369087 (= e!1512267 tp!757421)))

(declare-fun b!2369086 () Bool)

(declare-fun tp!757418 () Bool)

(declare-fun tp!757417 () Bool)

(assert (=> b!2369086 (= e!1512267 (and tp!757418 tp!757417))))

(assert (= (and b!2368645 (is-ElementMatch!6938 (regOne!14389 r!13927))) b!2369085))

(assert (= (and b!2368645 (is-Concat!11574 (regOne!14389 r!13927))) b!2369086))

(assert (= (and b!2368645 (is-Star!6938 (regOne!14389 r!13927))) b!2369087))

(assert (= (and b!2368645 (is-Union!6938 (regOne!14389 r!13927))) b!2369088))

(declare-fun e!1512268 () Bool)

(assert (=> b!2368645 (= tp!757350 e!1512268)))

(declare-fun b!2369089 () Bool)

(assert (=> b!2369089 (= e!1512268 tp_is_empty!11289)))

(declare-fun b!2369092 () Bool)

(declare-fun tp!757424 () Bool)

(declare-fun tp!757425 () Bool)

(assert (=> b!2369092 (= e!1512268 (and tp!757424 tp!757425))))

(declare-fun b!2369091 () Bool)

(declare-fun tp!757426 () Bool)

(assert (=> b!2369091 (= e!1512268 tp!757426)))

(declare-fun b!2369090 () Bool)

(declare-fun tp!757423 () Bool)

(declare-fun tp!757422 () Bool)

(assert (=> b!2369090 (= e!1512268 (and tp!757423 tp!757422))))

(assert (= (and b!2368645 (is-ElementMatch!6938 (regTwo!14389 r!13927))) b!2369089))

(assert (= (and b!2368645 (is-Concat!11574 (regTwo!14389 r!13927))) b!2369090))

(assert (= (and b!2368645 (is-Star!6938 (regTwo!14389 r!13927))) b!2369091))

(assert (= (and b!2368645 (is-Union!6938 (regTwo!14389 r!13927))) b!2369092))

(declare-fun b_lambda!73909 () Bool)

(assert (= b_lambda!73907 (or start!232458 b_lambda!73909)))

(declare-fun bs!461119 () Bool)

(declare-fun d!695086 () Bool)

(assert (= bs!461119 (and d!695086 start!232458)))

(assert (=> bs!461119 (= (dynLambda!12066 lambda!87558 (h!33418 l!9164)) (validRegex!2667 (h!33418 l!9164)))))

(declare-fun m!2777652 () Bool)

(assert (=> bs!461119 m!2777652))

(assert (=> b!2368725 d!695086))

(push 1)

(assert (not d!695070))

(assert (not b!2369080))

(assert (not b!2368821))

(assert (not b!2369065))

(assert (not b!2369030))

(assert (not bm!144059))

(assert (not b!2368755))

(assert (not b!2368726))

(assert (not d!695048))

(assert (not b_lambda!73909))

(assert (not b!2369034))

(assert (not b!2369003))

(assert (not b!2368907))

(assert (not b!2368905))

(assert (not b!2369088))

(assert (not b!2369084))

(assert (not b!2369021))

(assert (not b!2369087))

(assert (not d!695056))

(assert (not b!2369067))

(assert (not b!2369029))

(assert (not b!2368826))

(assert (not b!2369073))

(assert (not b!2369043))

(assert (not b!2368820))

(assert (not b!2368896))

(assert (not b!2369090))

(assert (not b!2368751))

(assert (not d!695080))

(assert (not b!2368747))

(assert (not b!2369025))

(assert (not b!2368823))

(assert (not b!2368818))

(assert (not b!2369022))

(assert (not d!695062))

(assert (not b!2369028))

(assert (not b!2369031))

(assert (not b!2368908))

(assert (not bs!461119))

(assert (not d!695076))

(assert (not b!2368841))

(assert (not d!695044))

(assert (not b!2369020))

(assert (not b!2368910))

(assert (not b!2369066))

(assert (not bm!144060))

(assert (not b!2369083))

(assert (not b!2368906))

(assert (not d!695066))

(assert (not b!2369069))

(assert (not b!2369023))

(assert (not b!2368895))

(assert (not b!2369092))

(assert (not b!2368819))

(assert (not b!2368996))

(assert (not b!2369001))

(assert (not b!2368753))

(assert (not b!2368913))

(assert (not d!695072))

(assert (not bm!144061))

(assert (not d!695046))

(assert (not b!2369070))

(assert (not b!2369071))

(assert (not d!695074))

(assert (not b!2368748))

(assert (not d!695050))

(assert (not b!2368752))

(assert (not bm!144048))

(assert (not b!2369000))

(assert (not b!2368998))

(assert (not b!2369082))

(assert (not b!2368749))

(assert (not b!2369075))

(assert (not bm!144065))

(assert (not b!2369033))

(assert (not b!2368840))

(assert (not d!695060))

(assert (not b!2368997))

(assert (not b!2369074))

(assert (not b!2369091))

(assert (not d!695058))

(assert tp_is_empty!11289)

(assert (not b!2369035))

(assert (not b!2369037))

(assert (not b!2369086))

(assert (not b!2368845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

