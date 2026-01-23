; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697090 () Bool)

(assert start!697090)

(declare-fun b!7149526 () Bool)

(declare-fun res!2916402 () Bool)

(declare-fun e!4295995 () Bool)

(assert (=> b!7149526 (=> (not res!2916402) (not e!4295995))))

(declare-datatypes ((C!36746 0))(
  ( (C!36747 (val!28321 Int)) )
))
(declare-datatypes ((Regex!18236 0))(
  ( (ElementMatch!18236 (c!1332995 C!36746)) (Concat!27081 (regOne!36984 Regex!18236) (regTwo!36984 Regex!18236)) (EmptyExpr!18236) (Star!18236 (reg!18565 Regex!18236)) (EmptyLang!18236) (Union!18236 (regOne!36985 Regex!18236) (regTwo!36985 Regex!18236)) )
))
(declare-fun r!13911 () Regex!18236)

(declare-datatypes ((List!69540 0))(
  ( (Nil!69416) (Cons!69416 (h!75864 Regex!18236) (t!383557 List!69540)) )
))
(declare-fun l!9154 () List!69540)

(declare-fun generalisedConcat!2411 (List!69540) Regex!18236)

(assert (=> b!7149526 (= res!2916402 (= r!13911 (generalisedConcat!2411 l!9154)))))

(declare-fun res!2916403 () Bool)

(assert (=> start!697090 (=> (not res!2916403) (not e!4295995))))

(declare-fun lambda!436037 () Int)

(declare-fun forall!17076 (List!69540 Int) Bool)

(assert (=> start!697090 (= res!2916403 (forall!17076 l!9154 lambda!436037))))

(assert (=> start!697090 e!4295995))

(declare-fun e!4295996 () Bool)

(assert (=> start!697090 e!4295996))

(declare-fun e!4295997 () Bool)

(assert (=> start!697090 e!4295997))

(declare-fun b!7149527 () Bool)

(declare-fun tp_is_empty!46109 () Bool)

(assert (=> b!7149527 (= e!4295997 tp_is_empty!46109)))

(declare-fun b!7149528 () Bool)

(declare-fun tp!1973904 () Bool)

(declare-fun tp!1973902 () Bool)

(assert (=> b!7149528 (= e!4295997 (and tp!1973904 tp!1973902))))

(declare-fun b!7149529 () Bool)

(assert (=> b!7149529 (= e!4295995 (not (= (regTwo!36984 r!13911) (generalisedConcat!2411 (t!383557 l!9154)))))))

(declare-fun b!7149530 () Bool)

(declare-fun tp!1973900 () Bool)

(declare-fun tp!1973901 () Bool)

(assert (=> b!7149530 (= e!4295996 (and tp!1973900 tp!1973901))))

(declare-fun b!7149531 () Bool)

(declare-fun tp!1973899 () Bool)

(assert (=> b!7149531 (= e!4295997 tp!1973899)))

(declare-fun b!7149532 () Bool)

(declare-fun tp!1973903 () Bool)

(declare-fun tp!1973898 () Bool)

(assert (=> b!7149532 (= e!4295997 (and tp!1973903 tp!1973898))))

(declare-fun b!7149533 () Bool)

(declare-fun e!4295998 () Bool)

(declare-fun isEmpty!40106 (List!69540) Bool)

(assert (=> b!7149533 (= e!4295998 (not (isEmpty!40106 (t!383557 l!9154))))))

(declare-fun b!7149534 () Bool)

(declare-fun res!2916406 () Bool)

(assert (=> b!7149534 (=> (not res!2916406) (not e!4295995))))

(assert (=> b!7149534 (= res!2916406 (and (is-Cons!69416 l!9154) (is-Concat!27081 r!13911)))))

(declare-fun b!7149535 () Bool)

(declare-fun res!2916405 () Bool)

(assert (=> b!7149535 (=> (not res!2916405) (not e!4295995))))

(assert (=> b!7149535 (= res!2916405 e!4295998)))

(declare-fun res!2916407 () Bool)

(assert (=> b!7149535 (=> res!2916407 e!4295998)))

(assert (=> b!7149535 (= res!2916407 (not (is-Cons!69416 l!9154)))))

(declare-fun b!7149536 () Bool)

(declare-fun res!2916404 () Bool)

(assert (=> b!7149536 (=> (not res!2916404) (not e!4295995))))

(assert (=> b!7149536 (= res!2916404 (forall!17076 (t!383557 l!9154) lambda!436037))))

(assert (= (and start!697090 res!2916403) b!7149526))

(assert (= (and b!7149526 res!2916402) b!7149535))

(assert (= (and b!7149535 (not res!2916407)) b!7149533))

(assert (= (and b!7149535 res!2916405) b!7149534))

(assert (= (and b!7149534 res!2916406) b!7149536))

(assert (= (and b!7149536 res!2916404) b!7149529))

(assert (= (and start!697090 (is-Cons!69416 l!9154)) b!7149530))

(assert (= (and start!697090 (is-ElementMatch!18236 r!13911)) b!7149527))

(assert (= (and start!697090 (is-Concat!27081 r!13911)) b!7149532))

(assert (= (and start!697090 (is-Star!18236 r!13911)) b!7149531))

(assert (= (and start!697090 (is-Union!18236 r!13911)) b!7149528))

(declare-fun m!7860616 () Bool)

(assert (=> b!7149526 m!7860616))

(declare-fun m!7860618 () Bool)

(assert (=> b!7149533 m!7860618))

(declare-fun m!7860620 () Bool)

(assert (=> start!697090 m!7860620))

(declare-fun m!7860622 () Bool)

(assert (=> b!7149536 m!7860622))

(declare-fun m!7860624 () Bool)

(assert (=> b!7149529 m!7860624))

(push 1)

(assert (not b!7149536))

(assert (not b!7149530))

(assert (not b!7149528))

(assert (not b!7149533))

(assert tp_is_empty!46109)

(assert (not start!697090))

(assert (not b!7149532))

(assert (not b!7149526))

(assert (not b!7149529))

(assert (not b!7149531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228639 () Bool)

(assert (=> d!2228639 (= (isEmpty!40106 (t!383557 l!9154)) (is-Nil!69416 (t!383557 l!9154)))))

(assert (=> b!7149533 d!2228639))

(declare-fun d!2228641 () Bool)

(declare-fun res!2916430 () Bool)

(declare-fun e!4296015 () Bool)

(assert (=> d!2228641 (=> res!2916430 e!4296015)))

(assert (=> d!2228641 (= res!2916430 (is-Nil!69416 (t!383557 l!9154)))))

(assert (=> d!2228641 (= (forall!17076 (t!383557 l!9154) lambda!436037) e!4296015)))

(declare-fun b!7149574 () Bool)

(declare-fun e!4296016 () Bool)

(assert (=> b!7149574 (= e!4296015 e!4296016)))

(declare-fun res!2916431 () Bool)

(assert (=> b!7149574 (=> (not res!2916431) (not e!4296016))))

(declare-fun dynLambda!28277 (Int Regex!18236) Bool)

(assert (=> b!7149574 (= res!2916431 (dynLambda!28277 lambda!436037 (h!75864 (t!383557 l!9154))))))

(declare-fun b!7149575 () Bool)

(assert (=> b!7149575 (= e!4296016 (forall!17076 (t!383557 (t!383557 l!9154)) lambda!436037))))

(assert (= (and d!2228641 (not res!2916430)) b!7149574))

(assert (= (and b!7149574 res!2916431) b!7149575))

(declare-fun b_lambda!272923 () Bool)

(assert (=> (not b_lambda!272923) (not b!7149574)))

(declare-fun m!7860636 () Bool)

(assert (=> b!7149574 m!7860636))

(declare-fun m!7860638 () Bool)

(assert (=> b!7149575 m!7860638))

(assert (=> b!7149536 d!2228641))

(declare-fun bs!1889442 () Bool)

(declare-fun d!2228643 () Bool)

(assert (= bs!1889442 (and d!2228643 start!697090)))

(declare-fun lambda!436045 () Int)

(assert (=> bs!1889442 (= lambda!436045 lambda!436037)))

(declare-fun b!7149596 () Bool)

(declare-fun e!4296029 () Regex!18236)

(assert (=> b!7149596 (= e!4296029 (h!75864 l!9154))))

(declare-fun e!4296030 () Bool)

(assert (=> d!2228643 e!4296030))

(declare-fun res!2916437 () Bool)

(assert (=> d!2228643 (=> (not res!2916437) (not e!4296030))))

(declare-fun lt!2569045 () Regex!18236)

(declare-fun validRegex!9391 (Regex!18236) Bool)

(assert (=> d!2228643 (= res!2916437 (validRegex!9391 lt!2569045))))

(assert (=> d!2228643 (= lt!2569045 e!4296029)))

(declare-fun c!1333007 () Bool)

(declare-fun e!4296032 () Bool)

(assert (=> d!2228643 (= c!1333007 e!4296032)))

(declare-fun res!2916436 () Bool)

(assert (=> d!2228643 (=> (not res!2916436) (not e!4296032))))

(assert (=> d!2228643 (= res!2916436 (is-Cons!69416 l!9154))))

(assert (=> d!2228643 (forall!17076 l!9154 lambda!436045)))

(assert (=> d!2228643 (= (generalisedConcat!2411 l!9154) lt!2569045)))

(declare-fun b!7149597 () Bool)

(declare-fun e!4296033 () Bool)

(assert (=> b!7149597 (= e!4296030 e!4296033)))

(declare-fun c!1333008 () Bool)

(assert (=> b!7149597 (= c!1333008 (isEmpty!40106 l!9154))))

(declare-fun b!7149598 () Bool)

(declare-fun e!4296031 () Bool)

(assert (=> b!7149598 (= e!4296033 e!4296031)))

(declare-fun c!1333005 () Bool)

(declare-fun tail!14012 (List!69540) List!69540)

(assert (=> b!7149598 (= c!1333005 (isEmpty!40106 (tail!14012 l!9154)))))

(declare-fun b!7149599 () Bool)

(declare-fun e!4296034 () Regex!18236)

(assert (=> b!7149599 (= e!4296034 (Concat!27081 (h!75864 l!9154) (generalisedConcat!2411 (t!383557 l!9154))))))

(declare-fun b!7149600 () Bool)

(declare-fun head!14543 (List!69540) Regex!18236)

(assert (=> b!7149600 (= e!4296031 (= lt!2569045 (head!14543 l!9154)))))

(declare-fun b!7149601 () Bool)

(declare-fun isConcat!1584 (Regex!18236) Bool)

(assert (=> b!7149601 (= e!4296031 (isConcat!1584 lt!2569045))))

(declare-fun b!7149602 () Bool)

(declare-fun isEmptyExpr!2062 (Regex!18236) Bool)

(assert (=> b!7149602 (= e!4296033 (isEmptyExpr!2062 lt!2569045))))

(declare-fun b!7149603 () Bool)

(assert (=> b!7149603 (= e!4296029 e!4296034)))

(declare-fun c!1333006 () Bool)

(assert (=> b!7149603 (= c!1333006 (is-Cons!69416 l!9154))))

(declare-fun b!7149604 () Bool)

(assert (=> b!7149604 (= e!4296032 (isEmpty!40106 (t!383557 l!9154)))))

(declare-fun b!7149605 () Bool)

(assert (=> b!7149605 (= e!4296034 EmptyExpr!18236)))

(assert (= (and d!2228643 res!2916436) b!7149604))

(assert (= (and d!2228643 c!1333007) b!7149596))

(assert (= (and d!2228643 (not c!1333007)) b!7149603))

(assert (= (and b!7149603 c!1333006) b!7149599))

(assert (= (and b!7149603 (not c!1333006)) b!7149605))

(assert (= (and d!2228643 res!2916437) b!7149597))

(assert (= (and b!7149597 c!1333008) b!7149602))

(assert (= (and b!7149597 (not c!1333008)) b!7149598))

(assert (= (and b!7149598 c!1333005) b!7149600))

(assert (= (and b!7149598 (not c!1333005)) b!7149601))

(declare-fun m!7860640 () Bool)

(assert (=> b!7149600 m!7860640))

(declare-fun m!7860642 () Bool)

(assert (=> d!2228643 m!7860642))

(declare-fun m!7860644 () Bool)

(assert (=> d!2228643 m!7860644))

(declare-fun m!7860646 () Bool)

(assert (=> b!7149602 m!7860646))

(declare-fun m!7860648 () Bool)

(assert (=> b!7149598 m!7860648))

(assert (=> b!7149598 m!7860648))

(declare-fun m!7860650 () Bool)

(assert (=> b!7149598 m!7860650))

(assert (=> b!7149604 m!7860618))

(declare-fun m!7860652 () Bool)

(assert (=> b!7149601 m!7860652))

(declare-fun m!7860654 () Bool)

(assert (=> b!7149597 m!7860654))

(assert (=> b!7149599 m!7860624))

(assert (=> b!7149526 d!2228643))

(declare-fun bs!1889443 () Bool)

(declare-fun d!2228647 () Bool)

(assert (= bs!1889443 (and d!2228647 start!697090)))

(declare-fun lambda!436046 () Int)

(assert (=> bs!1889443 (= lambda!436046 lambda!436037)))

(declare-fun bs!1889444 () Bool)

(assert (= bs!1889444 (and d!2228647 d!2228643)))

(assert (=> bs!1889444 (= lambda!436046 lambda!436045)))

(declare-fun b!7149606 () Bool)

(declare-fun e!4296035 () Regex!18236)

(assert (=> b!7149606 (= e!4296035 (h!75864 (t!383557 l!9154)))))

(declare-fun e!4296036 () Bool)

(assert (=> d!2228647 e!4296036))

(declare-fun res!2916439 () Bool)

(assert (=> d!2228647 (=> (not res!2916439) (not e!4296036))))

(declare-fun lt!2569046 () Regex!18236)

(assert (=> d!2228647 (= res!2916439 (validRegex!9391 lt!2569046))))

(assert (=> d!2228647 (= lt!2569046 e!4296035)))

(declare-fun c!1333011 () Bool)

(declare-fun e!4296038 () Bool)

(assert (=> d!2228647 (= c!1333011 e!4296038)))

(declare-fun res!2916438 () Bool)

(assert (=> d!2228647 (=> (not res!2916438) (not e!4296038))))

(assert (=> d!2228647 (= res!2916438 (is-Cons!69416 (t!383557 l!9154)))))

(assert (=> d!2228647 (forall!17076 (t!383557 l!9154) lambda!436046)))

(assert (=> d!2228647 (= (generalisedConcat!2411 (t!383557 l!9154)) lt!2569046)))

(declare-fun b!7149607 () Bool)

(declare-fun e!4296039 () Bool)

(assert (=> b!7149607 (= e!4296036 e!4296039)))

(declare-fun c!1333012 () Bool)

(assert (=> b!7149607 (= c!1333012 (isEmpty!40106 (t!383557 l!9154)))))

(declare-fun b!7149608 () Bool)

(declare-fun e!4296037 () Bool)

(assert (=> b!7149608 (= e!4296039 e!4296037)))

(declare-fun c!1333009 () Bool)

(assert (=> b!7149608 (= c!1333009 (isEmpty!40106 (tail!14012 (t!383557 l!9154))))))

(declare-fun b!7149609 () Bool)

(declare-fun e!4296040 () Regex!18236)

(assert (=> b!7149609 (= e!4296040 (Concat!27081 (h!75864 (t!383557 l!9154)) (generalisedConcat!2411 (t!383557 (t!383557 l!9154)))))))

(declare-fun b!7149610 () Bool)

(assert (=> b!7149610 (= e!4296037 (= lt!2569046 (head!14543 (t!383557 l!9154))))))

(declare-fun b!7149611 () Bool)

(assert (=> b!7149611 (= e!4296037 (isConcat!1584 lt!2569046))))

(declare-fun b!7149612 () Bool)

(assert (=> b!7149612 (= e!4296039 (isEmptyExpr!2062 lt!2569046))))

(declare-fun b!7149613 () Bool)

(assert (=> b!7149613 (= e!4296035 e!4296040)))

(declare-fun c!1333010 () Bool)

(assert (=> b!7149613 (= c!1333010 (is-Cons!69416 (t!383557 l!9154)))))

(declare-fun b!7149614 () Bool)

(assert (=> b!7149614 (= e!4296038 (isEmpty!40106 (t!383557 (t!383557 l!9154))))))

(declare-fun b!7149615 () Bool)

(assert (=> b!7149615 (= e!4296040 EmptyExpr!18236)))

(assert (= (and d!2228647 res!2916438) b!7149614))

(assert (= (and d!2228647 c!1333011) b!7149606))

(assert (= (and d!2228647 (not c!1333011)) b!7149613))

(assert (= (and b!7149613 c!1333010) b!7149609))

(assert (= (and b!7149613 (not c!1333010)) b!7149615))

(assert (= (and d!2228647 res!2916439) b!7149607))

(assert (= (and b!7149607 c!1333012) b!7149612))

(assert (= (and b!7149607 (not c!1333012)) b!7149608))

(assert (= (and b!7149608 c!1333009) b!7149610))

(assert (= (and b!7149608 (not c!1333009)) b!7149611))

(declare-fun m!7860656 () Bool)

(assert (=> b!7149610 m!7860656))

(declare-fun m!7860658 () Bool)

(assert (=> d!2228647 m!7860658))

(declare-fun m!7860660 () Bool)

(assert (=> d!2228647 m!7860660))

(declare-fun m!7860662 () Bool)

(assert (=> b!7149612 m!7860662))

(declare-fun m!7860664 () Bool)

(assert (=> b!7149608 m!7860664))

(assert (=> b!7149608 m!7860664))

(declare-fun m!7860666 () Bool)

(assert (=> b!7149608 m!7860666))

(declare-fun m!7860668 () Bool)

(assert (=> b!7149614 m!7860668))

(declare-fun m!7860670 () Bool)

(assert (=> b!7149611 m!7860670))

(assert (=> b!7149607 m!7860618))

(declare-fun m!7860672 () Bool)

(assert (=> b!7149609 m!7860672))

(assert (=> b!7149529 d!2228647))

(declare-fun d!2228649 () Bool)

(declare-fun res!2916440 () Bool)

(declare-fun e!4296041 () Bool)

(assert (=> d!2228649 (=> res!2916440 e!4296041)))

(assert (=> d!2228649 (= res!2916440 (is-Nil!69416 l!9154))))

(assert (=> d!2228649 (= (forall!17076 l!9154 lambda!436037) e!4296041)))

(declare-fun b!7149616 () Bool)

(declare-fun e!4296042 () Bool)

(assert (=> b!7149616 (= e!4296041 e!4296042)))

(declare-fun res!2916441 () Bool)

(assert (=> b!7149616 (=> (not res!2916441) (not e!4296042))))

(assert (=> b!7149616 (= res!2916441 (dynLambda!28277 lambda!436037 (h!75864 l!9154)))))

(declare-fun b!7149617 () Bool)

(assert (=> b!7149617 (= e!4296042 (forall!17076 (t!383557 l!9154) lambda!436037))))

(assert (= (and d!2228649 (not res!2916440)) b!7149616))

(assert (= (and b!7149616 res!2916441) b!7149617))

(declare-fun b_lambda!272925 () Bool)

(assert (=> (not b_lambda!272925) (not b!7149616)))

(declare-fun m!7860674 () Bool)

(assert (=> b!7149616 m!7860674))

(assert (=> b!7149617 m!7860622))

(assert (=> start!697090 d!2228649))

(declare-fun b!7149631 () Bool)

(declare-fun e!4296045 () Bool)

(declare-fun tp!1973936 () Bool)

(declare-fun tp!1973937 () Bool)

(assert (=> b!7149631 (= e!4296045 (and tp!1973936 tp!1973937))))

(declare-fun b!7149630 () Bool)

(declare-fun tp!1973938 () Bool)

(assert (=> b!7149630 (= e!4296045 tp!1973938)))

(assert (=> b!7149532 (= tp!1973903 e!4296045)))

(declare-fun b!7149629 () Bool)

(declare-fun tp!1973940 () Bool)

(declare-fun tp!1973939 () Bool)

(assert (=> b!7149629 (= e!4296045 (and tp!1973940 tp!1973939))))

(declare-fun b!7149628 () Bool)

(assert (=> b!7149628 (= e!4296045 tp_is_empty!46109)))

(assert (= (and b!7149532 (is-ElementMatch!18236 (regOne!36984 r!13911))) b!7149628))

(assert (= (and b!7149532 (is-Concat!27081 (regOne!36984 r!13911))) b!7149629))

(assert (= (and b!7149532 (is-Star!18236 (regOne!36984 r!13911))) b!7149630))

(assert (= (and b!7149532 (is-Union!18236 (regOne!36984 r!13911))) b!7149631))

(declare-fun b!7149635 () Bool)

(declare-fun e!4296046 () Bool)

(declare-fun tp!1973941 () Bool)

(declare-fun tp!1973942 () Bool)

(assert (=> b!7149635 (= e!4296046 (and tp!1973941 tp!1973942))))

(declare-fun b!7149634 () Bool)

(declare-fun tp!1973943 () Bool)

(assert (=> b!7149634 (= e!4296046 tp!1973943)))

(assert (=> b!7149532 (= tp!1973898 e!4296046)))

(declare-fun b!7149633 () Bool)

(declare-fun tp!1973945 () Bool)

(declare-fun tp!1973944 () Bool)

(assert (=> b!7149633 (= e!4296046 (and tp!1973945 tp!1973944))))

(declare-fun b!7149632 () Bool)

(assert (=> b!7149632 (= e!4296046 tp_is_empty!46109)))

(assert (= (and b!7149532 (is-ElementMatch!18236 (regTwo!36984 r!13911))) b!7149632))

(assert (= (and b!7149532 (is-Concat!27081 (regTwo!36984 r!13911))) b!7149633))

(assert (= (and b!7149532 (is-Star!18236 (regTwo!36984 r!13911))) b!7149634))

(assert (= (and b!7149532 (is-Union!18236 (regTwo!36984 r!13911))) b!7149635))

(declare-fun b!7149639 () Bool)

(declare-fun e!4296047 () Bool)

(declare-fun tp!1973946 () Bool)

(declare-fun tp!1973947 () Bool)

(assert (=> b!7149639 (= e!4296047 (and tp!1973946 tp!1973947))))

(declare-fun b!7149638 () Bool)

(declare-fun tp!1973948 () Bool)

(assert (=> b!7149638 (= e!4296047 tp!1973948)))

(assert (=> b!7149531 (= tp!1973899 e!4296047)))

(declare-fun b!7149637 () Bool)

(declare-fun tp!1973950 () Bool)

(declare-fun tp!1973949 () Bool)

(assert (=> b!7149637 (= e!4296047 (and tp!1973950 tp!1973949))))

(declare-fun b!7149636 () Bool)

(assert (=> b!7149636 (= e!4296047 tp_is_empty!46109)))

(assert (= (and b!7149531 (is-ElementMatch!18236 (reg!18565 r!13911))) b!7149636))

(assert (= (and b!7149531 (is-Concat!27081 (reg!18565 r!13911))) b!7149637))

(assert (= (and b!7149531 (is-Star!18236 (reg!18565 r!13911))) b!7149638))

(assert (= (and b!7149531 (is-Union!18236 (reg!18565 r!13911))) b!7149639))

(declare-fun b!7149643 () Bool)

(declare-fun e!4296048 () Bool)

(declare-fun tp!1973951 () Bool)

(declare-fun tp!1973952 () Bool)

(assert (=> b!7149643 (= e!4296048 (and tp!1973951 tp!1973952))))

(declare-fun b!7149642 () Bool)

(declare-fun tp!1973953 () Bool)

(assert (=> b!7149642 (= e!4296048 tp!1973953)))

(assert (=> b!7149530 (= tp!1973900 e!4296048)))

(declare-fun b!7149641 () Bool)

(declare-fun tp!1973955 () Bool)

(declare-fun tp!1973954 () Bool)

(assert (=> b!7149641 (= e!4296048 (and tp!1973955 tp!1973954))))

(declare-fun b!7149640 () Bool)

(assert (=> b!7149640 (= e!4296048 tp_is_empty!46109)))

(assert (= (and b!7149530 (is-ElementMatch!18236 (h!75864 l!9154))) b!7149640))

(assert (= (and b!7149530 (is-Concat!27081 (h!75864 l!9154))) b!7149641))

(assert (= (and b!7149530 (is-Star!18236 (h!75864 l!9154))) b!7149642))

(assert (= (and b!7149530 (is-Union!18236 (h!75864 l!9154))) b!7149643))

(declare-fun b!7149648 () Bool)

(declare-fun e!4296051 () Bool)

(declare-fun tp!1973960 () Bool)

(declare-fun tp!1973961 () Bool)

(assert (=> b!7149648 (= e!4296051 (and tp!1973960 tp!1973961))))

(assert (=> b!7149530 (= tp!1973901 e!4296051)))

(assert (= (and b!7149530 (is-Cons!69416 (t!383557 l!9154))) b!7149648))

(declare-fun b!7149652 () Bool)

(declare-fun e!4296052 () Bool)

(declare-fun tp!1973962 () Bool)

(declare-fun tp!1973963 () Bool)

(assert (=> b!7149652 (= e!4296052 (and tp!1973962 tp!1973963))))

(declare-fun b!7149651 () Bool)

(declare-fun tp!1973964 () Bool)

(assert (=> b!7149651 (= e!4296052 tp!1973964)))

(assert (=> b!7149528 (= tp!1973904 e!4296052)))

(declare-fun b!7149650 () Bool)

(declare-fun tp!1973966 () Bool)

(declare-fun tp!1973965 () Bool)

(assert (=> b!7149650 (= e!4296052 (and tp!1973966 tp!1973965))))

(declare-fun b!7149649 () Bool)

(assert (=> b!7149649 (= e!4296052 tp_is_empty!46109)))

(assert (= (and b!7149528 (is-ElementMatch!18236 (regOne!36985 r!13911))) b!7149649))

(assert (= (and b!7149528 (is-Concat!27081 (regOne!36985 r!13911))) b!7149650))

(assert (= (and b!7149528 (is-Star!18236 (regOne!36985 r!13911))) b!7149651))

(assert (= (and b!7149528 (is-Union!18236 (regOne!36985 r!13911))) b!7149652))

(declare-fun b!7149656 () Bool)

(declare-fun e!4296053 () Bool)

(declare-fun tp!1973967 () Bool)

(declare-fun tp!1973968 () Bool)

(assert (=> b!7149656 (= e!4296053 (and tp!1973967 tp!1973968))))

(declare-fun b!7149655 () Bool)

(declare-fun tp!1973969 () Bool)

(assert (=> b!7149655 (= e!4296053 tp!1973969)))

(assert (=> b!7149528 (= tp!1973902 e!4296053)))

(declare-fun b!7149654 () Bool)

(declare-fun tp!1973971 () Bool)

(declare-fun tp!1973970 () Bool)

(assert (=> b!7149654 (= e!4296053 (and tp!1973971 tp!1973970))))

(declare-fun b!7149653 () Bool)

(assert (=> b!7149653 (= e!4296053 tp_is_empty!46109)))

(assert (= (and b!7149528 (is-ElementMatch!18236 (regTwo!36985 r!13911))) b!7149653))

(assert (= (and b!7149528 (is-Concat!27081 (regTwo!36985 r!13911))) b!7149654))

(assert (= (and b!7149528 (is-Star!18236 (regTwo!36985 r!13911))) b!7149655))

(assert (= (and b!7149528 (is-Union!18236 (regTwo!36985 r!13911))) b!7149656))

(declare-fun b_lambda!272927 () Bool)

(assert (= b_lambda!272923 (or start!697090 b_lambda!272927)))

(declare-fun bs!1889445 () Bool)

(declare-fun d!2228651 () Bool)

(assert (= bs!1889445 (and d!2228651 start!697090)))

(assert (=> bs!1889445 (= (dynLambda!28277 lambda!436037 (h!75864 (t!383557 l!9154))) (validRegex!9391 (h!75864 (t!383557 l!9154))))))

(declare-fun m!7860676 () Bool)

(assert (=> bs!1889445 m!7860676))

(assert (=> b!7149574 d!2228651))

(declare-fun b_lambda!272929 () Bool)

(assert (= b_lambda!272925 (or start!697090 b_lambda!272929)))

(declare-fun bs!1889446 () Bool)

(declare-fun d!2228653 () Bool)

(assert (= bs!1889446 (and d!2228653 start!697090)))

(assert (=> bs!1889446 (= (dynLambda!28277 lambda!436037 (h!75864 l!9154)) (validRegex!9391 (h!75864 l!9154)))))

(declare-fun m!7860678 () Bool)

(assert (=> bs!1889446 m!7860678))

(assert (=> b!7149616 d!2228653))

(push 1)

(assert (not b!7149602))

(assert (not bs!1889445))

(assert (not b!7149607))

(assert (not b!7149655))

(assert (not b!7149608))

(assert (not b!7149648))

(assert (not b!7149639))

(assert (not b!7149601))

(assert (not d!2228643))

(assert (not b!7149631))

(assert (not b!7149629))

(assert (not b!7149612))

(assert (not b!7149642))

(assert (not b!7149599))

(assert (not b_lambda!272929))

(assert (not b_lambda!272927))

(assert (not b!7149656))

(assert (not b!7149611))

(assert (not b!7149614))

(assert (not b!7149654))

(assert (not d!2228647))

(assert (not b!7149635))

(assert (not bs!1889446))

(assert (not b!7149630))

(assert (not b!7149609))

(assert (not b!7149643))

(assert (not b!7149634))

(assert (not b!7149652))

(assert (not b!7149641))

(assert (not b!7149633))

(assert (not b!7149600))

(assert (not b!7149604))

(assert (not b!7149637))

(assert (not b!7149597))

(assert tp_is_empty!46109)

(assert (not b!7149575))

(assert (not b!7149610))

(assert (not b!7149638))

(assert (not b!7149598))

(assert (not b!7149651))

(assert (not b!7149617))

(assert (not b!7149650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

