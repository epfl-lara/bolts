; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571970 () Bool)

(assert start!571970)

(declare-fun b!5461646 () Bool)

(assert (=> b!5461646 true))

(assert (=> b!5461646 true))

(declare-fun lambda!289672 () Int)

(declare-fun lambda!289671 () Int)

(assert (=> b!5461646 (not (= lambda!289672 lambda!289671))))

(assert (=> b!5461646 true))

(assert (=> b!5461646 true))

(declare-fun b!5461639 () Bool)

(assert (=> b!5461639 true))

(declare-fun bs!1264248 () Bool)

(declare-fun b!5461653 () Bool)

(assert (= bs!1264248 (and b!5461653 b!5461646)))

(declare-fun lambda!289674 () Int)

(declare-datatypes ((C!30848 0))(
  ( (C!30849 (val!25126 Int)) )
))
(declare-datatypes ((Regex!15289 0))(
  ( (ElementMatch!15289 (c!954439 C!30848)) (Concat!24134 (regOne!31090 Regex!15289) (regTwo!31090 Regex!15289)) (EmptyExpr!15289) (Star!15289 (reg!15618 Regex!15289)) (EmptyLang!15289) (Union!15289 (regOne!31091 Regex!15289) (regTwo!31091 Regex!15289)) )
))
(declare-fun lt!2231462 () Regex!15289)

(declare-fun r!7292 () Regex!15289)

(assert (=> bs!1264248 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231462 (regTwo!31090 r!7292))) (= lambda!289674 lambda!289671))))

(assert (=> bs!1264248 (not (= lambda!289674 lambda!289672))))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(declare-fun lambda!289675 () Int)

(assert (=> bs!1264248 (not (= lambda!289675 lambda!289671))))

(assert (=> bs!1264248 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231462 (regTwo!31090 r!7292))) (= lambda!289675 lambda!289672))))

(assert (=> b!5461653 (not (= lambda!289675 lambda!289674))))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(declare-fun lt!2231362 () Regex!15289)

(declare-fun lambda!289676 () Int)

(assert (=> bs!1264248 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231362 (regTwo!31090 r!7292))) (= lambda!289676 lambda!289671))))

(assert (=> bs!1264248 (not (= lambda!289676 lambda!289672))))

(assert (=> b!5461653 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231362 lt!2231462)) (= lambda!289676 lambda!289674))))

(assert (=> b!5461653 (not (= lambda!289676 lambda!289675))))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(declare-fun lambda!289677 () Int)

(assert (=> b!5461653 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231362 lt!2231462)) (= lambda!289677 lambda!289675))))

(assert (=> bs!1264248 (not (= lambda!289677 lambda!289671))))

(assert (=> b!5461653 (not (= lambda!289677 lambda!289676))))

(assert (=> bs!1264248 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231362 (regTwo!31090 r!7292))) (= lambda!289677 lambda!289672))))

(assert (=> b!5461653 (not (= lambda!289677 lambda!289674))))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(assert (=> b!5461653 true))

(declare-fun bs!1264249 () Bool)

(declare-fun b!5461694 () Bool)

(assert (= bs!1264249 (and b!5461694 b!5461653)))

(declare-fun lambda!289678 () Int)

(assert (=> bs!1264249 (not (= lambda!289678 lambda!289675))))

(declare-fun bs!1264250 () Bool)

(assert (= bs!1264250 (and b!5461694 b!5461646)))

(declare-fun lt!2231471 () Regex!15289)

(assert (=> bs!1264250 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231471 (regTwo!31090 r!7292))) (= lambda!289678 lambda!289671))))

(assert (=> bs!1264249 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231471 lt!2231362)) (= lambda!289678 lambda!289676))))

(assert (=> bs!1264249 (not (= lambda!289678 lambda!289677))))

(assert (=> bs!1264250 (not (= lambda!289678 lambda!289672))))

(assert (=> bs!1264249 (= (= lt!2231471 lt!2231462) (= lambda!289678 lambda!289674))))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(declare-fun lambda!289679 () Int)

(assert (=> bs!1264249 (= (= lt!2231471 lt!2231462) (= lambda!289679 lambda!289675))))

(assert (=> bs!1264250 (not (= lambda!289679 lambda!289671))))

(assert (=> b!5461694 (not (= lambda!289679 lambda!289678))))

(assert (=> bs!1264249 (not (= lambda!289679 lambda!289676))))

(assert (=> bs!1264249 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231471 lt!2231362)) (= lambda!289679 lambda!289677))))

(assert (=> bs!1264250 (= (and (= (regOne!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231471 (regTwo!31090 r!7292))) (= lambda!289679 lambda!289672))))

(assert (=> bs!1264249 (not (= lambda!289679 lambda!289674))))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(declare-fun lambda!289680 () Int)

(assert (=> bs!1264249 (not (= lambda!289680 lambda!289675))))

(assert (=> b!5461694 (not (= lambda!289680 lambda!289679))))

(declare-fun lt!2231403 () Regex!15289)

(assert (=> bs!1264250 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231403 (regTwo!31090 r!7292))) (= lambda!289680 lambda!289671))))

(assert (=> b!5461694 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231403 lt!2231471)) (= lambda!289680 lambda!289678))))

(assert (=> bs!1264249 (= (= lt!2231403 lt!2231362) (= lambda!289680 lambda!289676))))

(assert (=> bs!1264249 (not (= lambda!289680 lambda!289677))))

(assert (=> bs!1264250 (not (= lambda!289680 lambda!289672))))

(assert (=> bs!1264249 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231403 lt!2231462)) (= lambda!289680 lambda!289674))))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(declare-fun lambda!289681 () Int)

(assert (=> b!5461694 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231403 lt!2231471)) (= lambda!289681 lambda!289679))))

(assert (=> bs!1264250 (not (= lambda!289681 lambda!289671))))

(assert (=> b!5461694 (not (= lambda!289681 lambda!289678))))

(assert (=> bs!1264249 (not (= lambda!289681 lambda!289676))))

(assert (=> bs!1264249 (= (= lt!2231403 lt!2231362) (= lambda!289681 lambda!289677))))

(assert (=> bs!1264249 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231403 lt!2231462)) (= lambda!289681 lambda!289675))))

(assert (=> b!5461694 (not (= lambda!289681 lambda!289680))))

(assert (=> bs!1264250 (= (and (= (regTwo!31090 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231403 (regTwo!31090 r!7292))) (= lambda!289681 lambda!289672))))

(assert (=> bs!1264249 (not (= lambda!289681 lambda!289674))))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(assert (=> b!5461694 true))

(declare-fun bs!1264251 () Bool)

(declare-fun b!5461650 () Bool)

(assert (= bs!1264251 (and b!5461650 b!5461694)))

(declare-fun lambda!289682 () Int)

(assert (=> bs!1264251 (not (= lambda!289682 lambda!289679))))

(declare-fun bs!1264252 () Bool)

(assert (= bs!1264252 (and b!5461650 b!5461646)))

(declare-fun lt!2231373 () Regex!15289)

(assert (=> bs!1264252 (= (= lt!2231373 (regOne!31090 r!7292)) (= lambda!289682 lambda!289671))))

(assert (=> bs!1264251 (= (and (= lt!2231373 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231471)) (= lambda!289682 lambda!289678))))

(declare-fun bs!1264253 () Bool)

(assert (= bs!1264253 (and b!5461650 b!5461653)))

(assert (=> bs!1264253 (= (and (= lt!2231373 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231362)) (= lambda!289682 lambda!289676))))

(assert (=> bs!1264251 (not (= lambda!289682 lambda!289681))))

(assert (=> bs!1264253 (not (= lambda!289682 lambda!289677))))

(assert (=> bs!1264253 (not (= lambda!289682 lambda!289675))))

(assert (=> bs!1264251 (= (and (= lt!2231373 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231403)) (= lambda!289682 lambda!289680))))

(assert (=> bs!1264252 (not (= lambda!289682 lambda!289672))))

(assert (=> bs!1264253 (= (and (= lt!2231373 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231462)) (= lambda!289682 lambda!289674))))

(assert (=> b!5461650 true))

(assert (=> b!5461650 true))

(assert (=> b!5461650 true))

(declare-fun lambda!289683 () Int)

(assert (=> b!5461650 (not (= lambda!289683 lambda!289682))))

(assert (=> bs!1264251 (= (and (= lt!2231373 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231471)) (= lambda!289683 lambda!289679))))

(assert (=> bs!1264252 (not (= lambda!289683 lambda!289671))))

(assert (=> bs!1264251 (not (= lambda!289683 lambda!289678))))

(assert (=> bs!1264253 (not (= lambda!289683 lambda!289676))))

(assert (=> bs!1264251 (= (and (= lt!2231373 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231403)) (= lambda!289683 lambda!289681))))

(assert (=> bs!1264253 (= (and (= lt!2231373 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231362)) (= lambda!289683 lambda!289677))))

(assert (=> bs!1264253 (= (and (= lt!2231373 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231462)) (= lambda!289683 lambda!289675))))

(assert (=> bs!1264251 (not (= lambda!289683 lambda!289680))))

(assert (=> bs!1264252 (= (= lt!2231373 (regOne!31090 r!7292)) (= lambda!289683 lambda!289672))))

(assert (=> bs!1264253 (not (= lambda!289683 lambda!289674))))

(assert (=> b!5461650 true))

(assert (=> b!5461650 true))

(assert (=> b!5461650 true))

(declare-fun bs!1264254 () Bool)

(declare-fun b!5461640 () Bool)

(assert (= bs!1264254 (and b!5461640 b!5461650)))

(declare-datatypes ((List!62166 0))(
  ( (Nil!62042) (Cons!62042 (h!68490 C!30848) (t!375395 List!62166)) )
))
(declare-fun s!2326 () List!62166)

(declare-fun lambda!289684 () Int)

(declare-datatypes ((tuple2!64976 0))(
  ( (tuple2!64977 (_1!35791 List!62166) (_2!35791 List!62166)) )
))
(declare-fun lt!2231432 () tuple2!64976)

(assert (=> bs!1264254 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289684 lambda!289682))))

(assert (=> bs!1264254 (not (= lambda!289684 lambda!289683))))

(declare-fun bs!1264255 () Bool)

(assert (= bs!1264255 (and b!5461640 b!5461694)))

(assert (=> bs!1264255 (not (= lambda!289684 lambda!289679))))

(declare-fun bs!1264256 () Bool)

(assert (= bs!1264256 (and b!5461640 b!5461646)))

(assert (=> bs!1264256 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289684 lambda!289671))))

(assert (=> bs!1264255 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289684 lambda!289678))))

(declare-fun bs!1264257 () Bool)

(assert (= bs!1264257 (and b!5461640 b!5461653)))

(assert (=> bs!1264257 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289684 lambda!289676))))

(assert (=> bs!1264255 (not (= lambda!289684 lambda!289681))))

(assert (=> bs!1264257 (not (= lambda!289684 lambda!289677))))

(assert (=> bs!1264257 (not (= lambda!289684 lambda!289675))))

(assert (=> bs!1264255 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289684 lambda!289680))))

(assert (=> bs!1264256 (not (= lambda!289684 lambda!289672))))

(assert (=> bs!1264257 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289684 lambda!289674))))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(declare-fun lambda!289685 () Int)

(assert (=> bs!1264254 (not (= lambda!289685 lambda!289682))))

(assert (=> bs!1264254 (not (= lambda!289685 lambda!289683))))

(assert (=> bs!1264256 (not (= lambda!289685 lambda!289671))))

(assert (=> bs!1264255 (not (= lambda!289685 lambda!289678))))

(assert (=> bs!1264257 (not (= lambda!289685 lambda!289676))))

(assert (=> bs!1264255 (not (= lambda!289685 lambda!289681))))

(assert (=> bs!1264257 (not (= lambda!289685 lambda!289677))))

(assert (=> bs!1264257 (not (= lambda!289685 lambda!289675))))

(assert (=> bs!1264255 (not (= lambda!289685 lambda!289680))))

(assert (=> b!5461640 (not (= lambda!289685 lambda!289684))))

(assert (=> bs!1264255 (not (= lambda!289685 lambda!289679))))

(assert (=> bs!1264256 (not (= lambda!289685 lambda!289672))))

(assert (=> bs!1264257 (not (= lambda!289685 lambda!289674))))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(declare-fun lambda!289686 () Int)

(assert (=> bs!1264254 (not (= lambda!289686 lambda!289682))))

(assert (=> bs!1264254 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289686 lambda!289683))))

(assert (=> bs!1264256 (not (= lambda!289686 lambda!289671))))

(assert (=> bs!1264255 (not (= lambda!289686 lambda!289678))))

(assert (=> bs!1264257 (not (= lambda!289686 lambda!289676))))

(assert (=> b!5461640 (not (= lambda!289686 lambda!289685))))

(assert (=> bs!1264255 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289686 lambda!289681))))

(assert (=> bs!1264257 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289686 lambda!289677))))

(assert (=> bs!1264257 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289686 lambda!289675))))

(assert (=> bs!1264255 (not (= lambda!289686 lambda!289680))))

(assert (=> b!5461640 (not (= lambda!289686 lambda!289684))))

(assert (=> bs!1264255 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289686 lambda!289679))))

(assert (=> bs!1264256 (= (and (= (_1!35791 lt!2231432) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289686 lambda!289672))))

(assert (=> bs!1264257 (not (= lambda!289686 lambda!289674))))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(assert (=> b!5461640 true))

(declare-fun b!5461695 () Bool)

(assert (=> b!5461695 true))

(declare-fun bs!1264258 () Bool)

(assert (= bs!1264258 (and b!5461695 b!5461640)))

(declare-fun lambda!289689 () Int)

(declare-fun lambda!289687 () Int)

(assert (=> bs!1264258 (= lambda!289689 lambda!289687)))

(declare-fun bs!1264259 () Bool)

(assert (= bs!1264259 (and b!5461695 b!5461650)))

(declare-fun lt!2231408 () Regex!15289)

(declare-fun lambda!289690 () Int)

(assert (=> bs!1264259 (= (= lt!2231408 lt!2231373) (= lambda!289690 lambda!289682))))

(assert (=> bs!1264259 (not (= lambda!289690 lambda!289683))))

(declare-fun bs!1264260 () Bool)

(assert (= bs!1264260 (and b!5461695 b!5461646)))

(assert (=> bs!1264260 (= (= lt!2231408 (regOne!31090 r!7292)) (= lambda!289690 lambda!289671))))

(declare-fun bs!1264261 () Bool)

(assert (= bs!1264261 (and b!5461695 b!5461694)))

(assert (=> bs!1264261 (= (and (= lt!2231408 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231471)) (= lambda!289690 lambda!289678))))

(assert (=> bs!1264258 (not (= lambda!289690 lambda!289685))))

(assert (=> bs!1264261 (not (= lambda!289690 lambda!289681))))

(declare-fun bs!1264262 () Bool)

(assert (= bs!1264262 (and b!5461695 b!5461653)))

(assert (=> bs!1264262 (not (= lambda!289690 lambda!289677))))

(assert (=> bs!1264262 (not (= lambda!289690 lambda!289675))))

(assert (=> bs!1264261 (= (and (= lt!2231408 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231403)) (= lambda!289690 lambda!289680))))

(assert (=> bs!1264258 (= (and (= s!2326 (_1!35791 lt!2231432)) (= lt!2231408 (reg!15618 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231373)) (= lambda!289690 lambda!289684))))

(assert (=> bs!1264261 (not (= lambda!289690 lambda!289679))))

(assert (=> bs!1264260 (not (= lambda!289690 lambda!289672))))

(assert (=> bs!1264262 (= (and (= lt!2231408 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231462)) (= lambda!289690 lambda!289674))))

(assert (=> bs!1264262 (= (and (= lt!2231408 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231362)) (= lambda!289690 lambda!289676))))

(assert (=> bs!1264258 (not (= lambda!289690 lambda!289686))))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(declare-fun lambda!289691 () Int)

(assert (=> bs!1264259 (not (= lambda!289691 lambda!289682))))

(assert (=> bs!1264259 (= (= lt!2231408 lt!2231373) (= lambda!289691 lambda!289683))))

(assert (=> bs!1264260 (not (= lambda!289691 lambda!289671))))

(assert (=> bs!1264261 (not (= lambda!289691 lambda!289678))))

(assert (=> bs!1264258 (not (= lambda!289691 lambda!289685))))

(assert (=> bs!1264261 (= (and (= lt!2231408 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231403)) (= lambda!289691 lambda!289681))))

(assert (=> bs!1264262 (= (and (= lt!2231408 (regTwo!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231362)) (= lambda!289691 lambda!289677))))

(assert (=> bs!1264262 (= (and (= lt!2231408 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231462)) (= lambda!289691 lambda!289675))))

(assert (=> bs!1264261 (not (= lambda!289691 lambda!289680))))

(assert (=> bs!1264258 (not (= lambda!289691 lambda!289684))))

(assert (=> bs!1264261 (= (and (= lt!2231408 (regOne!31090 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231471)) (= lambda!289691 lambda!289679))))

(assert (=> bs!1264260 (= (= lt!2231408 (regOne!31090 r!7292)) (= lambda!289691 lambda!289672))))

(assert (=> bs!1264262 (not (= lambda!289691 lambda!289674))))

(assert (=> b!5461695 (not (= lambda!289691 lambda!289690))))

(assert (=> bs!1264262 (not (= lambda!289691 lambda!289676))))

(assert (=> bs!1264258 (= (and (= s!2326 (_1!35791 lt!2231432)) (= lt!2231408 (reg!15618 (regOne!31090 r!7292))) (= (regTwo!31090 r!7292) lt!2231373)) (= lambda!289691 lambda!289686))))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(declare-fun lambda!289692 () Int)

(declare-fun lt!2231315 () tuple2!64976)

(assert (=> bs!1264259 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289692 lambda!289682))))

(assert (=> bs!1264259 (not (= lambda!289692 lambda!289683))))

(assert (=> bs!1264260 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289692 lambda!289671))))

(assert (=> bs!1264261 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289692 lambda!289678))))

(assert (=> b!5461695 (not (= lambda!289692 lambda!289691))))

(assert (=> bs!1264258 (not (= lambda!289692 lambda!289685))))

(assert (=> bs!1264261 (not (= lambda!289692 lambda!289681))))

(assert (=> bs!1264262 (not (= lambda!289692 lambda!289677))))

(assert (=> bs!1264262 (not (= lambda!289692 lambda!289675))))

(assert (=> bs!1264261 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289692 lambda!289680))))

(assert (=> bs!1264258 (= (= (_1!35791 lt!2231315) (_1!35791 lt!2231432)) (= lambda!289692 lambda!289684))))

(assert (=> bs!1264261 (not (= lambda!289692 lambda!289679))))

(assert (=> bs!1264260 (not (= lambda!289692 lambda!289672))))

(assert (=> bs!1264262 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289692 lambda!289674))))

(assert (=> b!5461695 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231408) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289692 lambda!289690))))

(assert (=> bs!1264262 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289692 lambda!289676))))

(assert (=> bs!1264258 (not (= lambda!289692 lambda!289686))))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(declare-fun lambda!289693 () Int)

(assert (=> bs!1264259 (not (= lambda!289693 lambda!289682))))

(assert (=> bs!1264259 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289693 lambda!289683))))

(assert (=> bs!1264260 (not (= lambda!289693 lambda!289671))))

(assert (=> bs!1264261 (not (= lambda!289693 lambda!289678))))

(assert (=> b!5461695 (not (= lambda!289693 lambda!289692))))

(assert (=> b!5461695 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231408) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289693 lambda!289691))))

(assert (=> bs!1264258 (not (= lambda!289693 lambda!289685))))

(assert (=> bs!1264261 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289693 lambda!289681))))

(assert (=> bs!1264262 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289693 lambda!289677))))

(assert (=> bs!1264262 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289693 lambda!289675))))

(assert (=> bs!1264261 (not (= lambda!289693 lambda!289680))))

(assert (=> bs!1264258 (not (= lambda!289693 lambda!289684))))

(assert (=> bs!1264261 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289693 lambda!289679))))

(assert (=> bs!1264260 (= (and (= (_1!35791 lt!2231315) s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289693 lambda!289672))))

(assert (=> bs!1264262 (not (= lambda!289693 lambda!289674))))

(assert (=> b!5461695 (not (= lambda!289693 lambda!289690))))

(assert (=> bs!1264262 (not (= lambda!289693 lambda!289676))))

(assert (=> bs!1264258 (= (= (_1!35791 lt!2231315) (_1!35791 lt!2231432)) (= lambda!289693 lambda!289686))))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(declare-fun lambda!289694 () Int)

(assert (=> bs!1264259 (not (= lambda!289694 lambda!289682))))

(assert (=> bs!1264259 (not (= lambda!289694 lambda!289683))))

(assert (=> bs!1264260 (not (= lambda!289694 lambda!289671))))

(assert (=> bs!1264261 (not (= lambda!289694 lambda!289678))))

(assert (=> b!5461695 (not (= lambda!289694 lambda!289692))))

(assert (=> b!5461695 (not (= lambda!289694 lambda!289691))))

(assert (=> bs!1264258 (= (= (_1!35791 lt!2231315) (_1!35791 lt!2231432)) (= lambda!289694 lambda!289685))))

(assert (=> bs!1264262 (not (= lambda!289694 lambda!289677))))

(assert (=> bs!1264262 (not (= lambda!289694 lambda!289675))))

(assert (=> bs!1264261 (not (= lambda!289694 lambda!289680))))

(assert (=> bs!1264258 (not (= lambda!289694 lambda!289684))))

(assert (=> bs!1264261 (not (= lambda!289694 lambda!289679))))

(assert (=> bs!1264260 (not (= lambda!289694 lambda!289672))))

(assert (=> bs!1264262 (not (= lambda!289694 lambda!289674))))

(assert (=> b!5461695 (not (= lambda!289694 lambda!289690))))

(assert (=> bs!1264262 (not (= lambda!289694 lambda!289676))))

(assert (=> bs!1264258 (not (= lambda!289694 lambda!289686))))

(assert (=> b!5461695 (not (= lambda!289694 lambda!289693))))

(assert (=> bs!1264261 (not (= lambda!289694 lambda!289681))))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(assert (=> b!5461695 true))

(declare-fun bs!1264263 () Bool)

(declare-fun b!5461664 () Bool)

(assert (= bs!1264263 (and b!5461664 b!5461650)))

(declare-fun lambda!289695 () Int)

(assert (=> bs!1264263 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289695 lambda!289682))))

(assert (=> bs!1264263 (not (= lambda!289695 lambda!289683))))

(declare-fun bs!1264264 () Bool)

(assert (= bs!1264264 (and b!5461664 b!5461646)))

(assert (=> bs!1264264 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289695 lambda!289671))))

(declare-fun bs!1264265 () Bool)

(assert (= bs!1264265 (and b!5461664 b!5461694)))

(assert (=> bs!1264265 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289695 lambda!289678))))

(declare-fun bs!1264266 () Bool)

(assert (= bs!1264266 (and b!5461664 b!5461695)))

(assert (=> bs!1264266 (= (= Nil!62042 (_1!35791 lt!2231315)) (= lambda!289695 lambda!289692))))

(assert (=> bs!1264266 (not (= lambda!289695 lambda!289691))))

(declare-fun bs!1264267 () Bool)

(assert (= bs!1264267 (and b!5461664 b!5461640)))

(assert (=> bs!1264267 (not (= lambda!289695 lambda!289685))))

(declare-fun bs!1264268 () Bool)

(assert (= bs!1264268 (and b!5461664 b!5461653)))

(assert (=> bs!1264268 (not (= lambda!289695 lambda!289677))))

(assert (=> bs!1264266 (not (= lambda!289695 lambda!289694))))

(assert (=> bs!1264268 (not (= lambda!289695 lambda!289675))))

(assert (=> bs!1264265 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289695 lambda!289680))))

(assert (=> bs!1264267 (= (= Nil!62042 (_1!35791 lt!2231432)) (= lambda!289695 lambda!289684))))

(assert (=> bs!1264265 (not (= lambda!289695 lambda!289679))))

(assert (=> bs!1264264 (not (= lambda!289695 lambda!289672))))

(assert (=> bs!1264268 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289695 lambda!289674))))

(assert (=> bs!1264266 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231408) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289695 lambda!289690))))

(assert (=> bs!1264268 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289695 lambda!289676))))

(assert (=> bs!1264267 (not (= lambda!289695 lambda!289686))))

(assert (=> bs!1264266 (not (= lambda!289695 lambda!289693))))

(assert (=> bs!1264265 (not (= lambda!289695 lambda!289681))))

(assert (=> b!5461664 true))

(assert (=> b!5461664 true))

(declare-fun lambda!289696 () Int)

(assert (=> bs!1264263 (not (= lambda!289696 lambda!289682))))

(assert (=> bs!1264263 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231373) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289696 lambda!289683))))

(assert (=> b!5461664 (not (= lambda!289696 lambda!289695))))

(assert (=> bs!1264264 (not (= lambda!289696 lambda!289671))))

(assert (=> bs!1264265 (not (= lambda!289696 lambda!289678))))

(assert (=> bs!1264266 (not (= lambda!289696 lambda!289692))))

(assert (=> bs!1264266 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) lt!2231408) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289696 lambda!289691))))

(assert (=> bs!1264267 (not (= lambda!289696 lambda!289685))))

(assert (=> bs!1264268 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231362)) (= lambda!289696 lambda!289677))))

(assert (=> bs!1264266 (not (= lambda!289696 lambda!289694))))

(assert (=> bs!1264268 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231462)) (= lambda!289696 lambda!289675))))

(assert (=> bs!1264265 (not (= lambda!289696 lambda!289680))))

(assert (=> bs!1264267 (not (= lambda!289696 lambda!289684))))

(assert (=> bs!1264265 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231471)) (= lambda!289696 lambda!289679))))

(assert (=> bs!1264264 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regOne!31090 r!7292)) (= lt!2231373 (regTwo!31090 r!7292))) (= lambda!289696 lambda!289672))))

(assert (=> bs!1264268 (not (= lambda!289696 lambda!289674))))

(assert (=> bs!1264266 (not (= lambda!289696 lambda!289690))))

(assert (=> bs!1264268 (not (= lambda!289696 lambda!289676))))

(assert (=> bs!1264267 (= (= Nil!62042 (_1!35791 lt!2231432)) (= lambda!289696 lambda!289686))))

(assert (=> bs!1264266 (= (= Nil!62042 (_1!35791 lt!2231315)) (= lambda!289696 lambda!289693))))

(assert (=> bs!1264265 (= (and (= Nil!62042 s!2326) (= (reg!15618 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) (= lt!2231373 lt!2231403)) (= lambda!289696 lambda!289681))))

(assert (=> b!5461664 true))

(assert (=> b!5461664 true))

(declare-fun lambda!289697 () Int)

(assert (=> bs!1264263 (not (= lambda!289697 lambda!289682))))

(assert (=> bs!1264263 (not (= lambda!289697 lambda!289683))))

(assert (=> b!5461664 (not (= lambda!289697 lambda!289695))))

(assert (=> bs!1264264 (not (= lambda!289697 lambda!289671))))

(assert (=> bs!1264265 (not (= lambda!289697 lambda!289678))))

(assert (=> bs!1264266 (not (= lambda!289697 lambda!289692))))

(assert (=> bs!1264266 (not (= lambda!289697 lambda!289691))))

(assert (=> bs!1264267 (= (= Nil!62042 (_1!35791 lt!2231432)) (= lambda!289697 lambda!289685))))

(assert (=> bs!1264268 (not (= lambda!289697 lambda!289677))))

(assert (=> b!5461664 (not (= lambda!289697 lambda!289696))))

(assert (=> bs!1264266 (= (= Nil!62042 (_1!35791 lt!2231315)) (= lambda!289697 lambda!289694))))

(assert (=> bs!1264268 (not (= lambda!289697 lambda!289675))))

(assert (=> bs!1264265 (not (= lambda!289697 lambda!289680))))

(assert (=> bs!1264267 (not (= lambda!289697 lambda!289684))))

(assert (=> bs!1264265 (not (= lambda!289697 lambda!289679))))

(assert (=> bs!1264264 (not (= lambda!289697 lambda!289672))))

(assert (=> bs!1264268 (not (= lambda!289697 lambda!289674))))

(assert (=> bs!1264266 (not (= lambda!289697 lambda!289690))))

(assert (=> bs!1264268 (not (= lambda!289697 lambda!289676))))

(assert (=> bs!1264267 (not (= lambda!289697 lambda!289686))))

(assert (=> bs!1264266 (not (= lambda!289697 lambda!289693))))

(assert (=> bs!1264265 (not (= lambda!289697 lambda!289681))))

(assert (=> b!5461664 true))

(assert (=> b!5461664 true))

(declare-fun bm!401742 () Bool)

(declare-fun call!401788 () Bool)

(declare-fun call!401943 () Bool)

(assert (=> bm!401742 (= call!401788 call!401943)))

(declare-fun b!5461633 () Bool)

(declare-datatypes ((Unit!154968 0))(
  ( (Unit!154969) )
))
(declare-fun e!3382000 () Unit!154968)

(declare-fun Unit!154970 () Unit!154968)

(assert (=> b!5461633 (= e!3382000 Unit!154970)))

(declare-fun b!5461634 () Bool)

(declare-fun c!954426 () Bool)

(declare-fun e!3381987 () Bool)

(assert (=> b!5461634 (= c!954426 e!3381987)))

(declare-fun res!2326361 () Bool)

(assert (=> b!5461634 (=> (not res!2326361) (not e!3381987))))

(get-info :version)

(assert (=> b!5461634 (= res!2326361 ((_ is Concat!24134) (regOne!31090 r!7292)))))

(declare-fun e!3381990 () Unit!154968)

(declare-fun e!3381985 () Unit!154968)

(assert (=> b!5461634 (= e!3381990 e!3381985)))

(declare-fun bm!401743 () Bool)

(declare-fun call!401823 () Bool)

(declare-fun call!401785 () Bool)

(assert (=> bm!401743 (= call!401823 call!401785)))

(declare-fun bm!401744 () Bool)

(declare-fun call!401758 () Bool)

(declare-fun call!401787 () Bool)

(assert (=> bm!401744 (= call!401758 call!401787)))

(declare-datatypes ((Option!15400 0))(
  ( (None!15399) (Some!15399 (v!51428 tuple2!64976)) )
))
(declare-fun lt!2231305 () Option!15400)

(declare-fun c!954429 () Bool)

(declare-fun c!954437 () Bool)

(declare-fun lt!2231319 () Option!15400)

(declare-fun call!401941 () Bool)

(declare-fun bm!401745 () Bool)

(declare-fun call!401926 () Option!15400)

(declare-fun call!401801 () Option!15400)

(declare-fun isDefined!12103 (Option!15400) Bool)

(assert (=> bm!401745 (= call!401941 (isDefined!12103 (ite c!954426 call!401926 (ite c!954437 call!401801 (ite c!954429 lt!2231319 lt!2231305)))))))

(declare-fun bm!401746 () Bool)

(declare-fun call!401907 () Unit!154968)

(declare-fun call!401766 () Unit!154968)

(assert (=> bm!401746 (= call!401907 call!401766)))

(declare-fun bm!401747 () Bool)

(declare-fun call!401794 () Unit!154968)

(declare-fun call!401924 () Unit!154968)

(assert (=> bm!401747 (= call!401794 call!401924)))

(declare-fun setIsEmpty!35731 () Bool)

(declare-fun setRes!35731 () Bool)

(assert (=> setIsEmpty!35731 setRes!35731))

(declare-fun bm!401748 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62167 0))(
  ( (Nil!62043) (Cons!62043 (h!68491 Regex!15289) (t!375396 List!62167)) )
))
(declare-datatypes ((Context!9346 0))(
  ( (Context!9347 (exprs!5173 List!62167)) )
))
(declare-fun lt!2231454 () (InoxSet Context!9346))

(declare-fun lt!2231314 () (InoxSet Context!9346))

(declare-fun z!1189 () (InoxSet Context!9346))

(declare-fun c!954430 () Bool)

(declare-fun lt!2231347 () (InoxSet Context!9346))

(declare-fun lt!2231274 () (InoxSet Context!9346))

(declare-fun c!954427 () Bool)

(declare-fun lt!2231290 () (InoxSet Context!9346))

(declare-fun call!401810 () Bool)

(declare-fun c!954434 () Bool)

(declare-fun lt!2231336 () tuple2!64976)

(declare-fun lt!2231367 () (InoxSet Context!9346))

(declare-fun c!954431 () Bool)

(declare-fun lt!2231448 () (InoxSet Context!9346))

(declare-fun lt!2231358 () (InoxSet Context!9346))

(declare-fun matchZipper!1533 ((InoxSet Context!9346) List!62166) Bool)

(assert (=> bm!401748 (= call!401810 (matchZipper!1533 (ite c!954431 lt!2231347 (ite c!954434 ((_ map or) lt!2231290 lt!2231454) (ite c!954426 ((_ map or) lt!2231358 lt!2231367) (ite c!954430 (ite c!954429 z!1189 (ite c!954427 lt!2231274 lt!2231314)) lt!2231448)))) (ite (or c!954431 c!954434 c!954426) (t!375395 s!2326) (ite c!954430 (ite c!954429 s!2326 (ite c!954427 (_1!35791 lt!2231336) s!2326)) (t!375395 s!2326)))))))

(declare-fun b!5461635 () Bool)

(declare-fun e!3381993 () Bool)

(declare-fun lt!2231342 () Bool)

(declare-fun lt!2231302 () Bool)

(assert (=> b!5461635 (= e!3381993 (or (not lt!2231342) lt!2231302))))

(declare-fun res!2326376 () Bool)

(declare-fun e!3381999 () Bool)

(assert (=> start!571970 (=> (not res!2326376) (not e!3381999))))

(declare-fun validRegex!7025 (Regex!15289) Bool)

(assert (=> start!571970 (= res!2326376 (validRegex!7025 r!7292))))

(assert (=> start!571970 e!3381999))

(declare-fun e!3382015 () Bool)

(assert (=> start!571970 e!3382015))

(declare-fun condSetEmpty!35731 () Bool)

(assert (=> start!571970 (= condSetEmpty!35731 (= z!1189 ((as const (Array Context!9346 Bool)) false)))))

(assert (=> start!571970 setRes!35731))

(declare-fun e!3382022 () Bool)

(assert (=> start!571970 e!3382022))

(declare-fun e!3382016 () Bool)

(assert (=> start!571970 e!3382016))

(declare-fun bm!401749 () Bool)

(declare-fun call!401822 () Bool)

(declare-fun call!401747 () Bool)

(assert (=> bm!401749 (= call!401822 call!401747)))

(declare-fun bm!401750 () Bool)

(declare-fun call!401817 () Unit!154968)

(declare-fun call!401837 () Unit!154968)

(assert (=> bm!401750 (= call!401817 call!401837)))

(declare-fun bm!401751 () Bool)

(declare-fun call!401793 () (InoxSet Context!9346))

(declare-fun lt!2231306 () Context!9346)

(declare-fun lt!2231369 () Context!9346)

(declare-fun derivationStepZipperUp!661 (Context!9346 C!30848) (InoxSet Context!9346))

(assert (=> bm!401751 (= call!401793 (derivationStepZipperUp!661 (ite c!954437 lt!2231306 lt!2231369) (h!68490 s!2326)))))

(declare-fun bm!401752 () Bool)

(declare-fun call!401814 () Option!15400)

(declare-fun call!401945 () Option!15400)

(assert (=> bm!401752 (= call!401814 call!401945)))

(declare-fun b!5461636 () Bool)

(declare-fun e!3382017 () Bool)

(declare-fun call!401923 () Bool)

(assert (=> b!5461636 (= e!3382017 call!401923)))

(declare-fun b!5461637 () Bool)

(declare-fun res!2326370 () Bool)

(declare-fun e!3382021 () Bool)

(assert (=> b!5461637 (=> res!2326370 e!3382021)))

(declare-datatypes ((List!62168 0))(
  ( (Nil!62044) (Cons!62044 (h!68492 Context!9346) (t!375397 List!62168)) )
))
(declare-fun zl!343 () List!62168)

(declare-fun generalisedConcat!958 (List!62167) Regex!15289)

(assert (=> b!5461637 (= res!2326370 (not (= r!7292 (generalisedConcat!958 (exprs!5173 (h!68492 zl!343))))))))

(declare-fun b!5461638 () Bool)

(declare-fun e!3382010 () Bool)

(declare-fun call!401833 () Bool)

(assert (=> b!5461638 (= e!3382010 (= lt!2231342 call!401833))))

(declare-fun bm!401753 () Bool)

(declare-fun call!401874 () Unit!154968)

(declare-fun call!401808 () Unit!154968)

(assert (=> bm!401753 (= call!401874 call!401808)))

(declare-fun bm!401754 () Bool)

(declare-fun call!401954 () (InoxSet Context!9346))

(declare-fun call!401930 () (InoxSet Context!9346))

(assert (=> bm!401754 (= call!401954 call!401930)))

(declare-fun bm!401755 () Bool)

(declare-fun call!401846 () Bool)

(declare-fun call!401779 () Bool)

(assert (=> bm!401755 (= call!401846 call!401779)))

(declare-fun bm!401756 () Bool)

(declare-fun call!401804 () (InoxSet Context!9346))

(assert (=> bm!401756 (= call!401804 call!401793)))

(declare-fun bm!401757 () Bool)

(declare-fun call!401792 () Bool)

(declare-fun call!401868 () Bool)

(assert (=> bm!401757 (= call!401792 call!401868)))

(declare-fun bm!401758 () Bool)

(declare-fun call!401889 () Bool)

(declare-fun call!401860 () Bool)

(assert (=> bm!401758 (= call!401889 call!401860)))

(declare-fun bm!401759 () Bool)

(declare-fun call!401755 () Bool)

(declare-fun Exists!2470 (Int) Bool)

(assert (=> bm!401759 (= call!401755 (Exists!2470 (ite c!954437 lambda!289679 (ite c!954429 lambda!289685 (ite c!954427 lambda!289692 lambda!289697)))))))

(declare-fun bm!401760 () Bool)

(declare-fun call!401894 () Bool)

(declare-fun call!401843 () Bool)

(assert (=> bm!401760 (= call!401894 call!401843)))

(declare-fun e!3382006 () Bool)

(declare-fun e!3382004 () Bool)

(assert (=> b!5461639 (= e!3382006 e!3382004)))

(declare-fun res!2326367 () Bool)

(assert (=> b!5461639 (=> res!2326367 e!3382004)))

(declare-fun lt!2231292 () (InoxSet Context!9346))

(declare-fun lt!2231338 () (InoxSet Context!9346))

(declare-fun derivationStepZipper!1508 ((InoxSet Context!9346) C!30848) (InoxSet Context!9346))

(assert (=> b!5461639 (= res!2326367 (not (= lt!2231338 (derivationStepZipper!1508 lt!2231292 (h!68490 s!2326)))))))

(declare-fun lambda!289673 () Int)

(declare-fun flatMap!1016 ((InoxSet Context!9346) Int) (InoxSet Context!9346))

(assert (=> b!5461639 (= (flatMap!1016 lt!2231292 lambda!289673) (derivationStepZipperUp!661 lt!2231369 (h!68490 s!2326)))))

(declare-fun lt!2231303 () Unit!154968)

(declare-fun lemmaFlatMapOnSingletonSet!548 ((InoxSet Context!9346) Context!9346 Int) Unit!154968)

(assert (=> b!5461639 (= lt!2231303 (lemmaFlatMapOnSingletonSet!548 lt!2231292 lt!2231369 lambda!289673))))

(assert (=> b!5461639 (= lt!2231292 (store ((as const (Array Context!9346 Bool)) false) lt!2231369 true))))

(declare-fun lt!2231339 () Unit!154968)

(declare-fun e!3382019 () Unit!154968)

(assert (=> b!5461639 (= lt!2231339 e!3382019)))

(assert (=> b!5461639 (= c!954431 (and ((_ is ElementMatch!15289) (regOne!31090 r!7292)) (= (c!954439 (regOne!31090 r!7292)) (h!68490 s!2326))))))

(declare-fun lt!2231469 () Unit!154968)

(declare-fun e!3381988 () Unit!154968)

(assert (=> b!5461639 (= lt!2231469 e!3381988)))

(declare-fun c!954435 () Bool)

(declare-fun nullable!5458 (Regex!15289) Bool)

(assert (=> b!5461639 (= c!954435 (nullable!5458 (h!68491 (exprs!5173 (h!68492 zl!343)))))))

(assert (=> b!5461639 (= (flatMap!1016 z!1189 lambda!289673) (derivationStepZipperUp!661 (h!68492 zl!343) (h!68490 s!2326)))))

(declare-fun lt!2231411 () Unit!154968)

(assert (=> b!5461639 (= lt!2231411 (lemmaFlatMapOnSingletonSet!548 z!1189 (h!68492 zl!343) lambda!289673))))

(assert (=> b!5461639 (= lt!2231338 (derivationStepZipperUp!661 lt!2231369 (h!68490 s!2326)))))

(declare-fun derivationStepZipperDown!737 (Regex!15289 Context!9346 C!30848) (InoxSet Context!9346))

(assert (=> b!5461639 (= lt!2231448 (derivationStepZipperDown!737 (h!68491 (exprs!5173 (h!68492 zl!343))) lt!2231369 (h!68490 s!2326)))))

(assert (=> b!5461639 (= lt!2231369 (Context!9347 (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun lt!2231380 () (InoxSet Context!9346))

(assert (=> b!5461639 (= lt!2231380 (derivationStepZipperUp!661 (Context!9347 (Cons!62043 (h!68491 (exprs!5173 (h!68492 zl!343))) (t!375396 (exprs!5173 (h!68492 zl!343))))) (h!68490 s!2326)))))

(declare-fun call!401831 () List!62166)

(declare-fun lt!2231420 () tuple2!64976)

(declare-fun bm!401761 () Bool)

(declare-fun lt!2231361 () List!62166)

(declare-fun lt!2231425 () tuple2!64976)

(declare-fun ++!13657 (List!62166 List!62166) List!62166)

(assert (=> bm!401761 (= call!401831 (++!13657 (ite c!954429 (_1!35791 lt!2231420) (_2!35791 lt!2231425)) (ite c!954429 lt!2231361 (_2!35791 lt!2231315))))))

(declare-fun bm!401762 () Bool)

(declare-fun call!401867 () Regex!15289)

(declare-fun call!401826 () Regex!15289)

(assert (=> bm!401762 (= call!401867 call!401826)))

(declare-fun bm!401763 () Bool)

(declare-fun call!401873 () Bool)

(declare-fun call!401883 () Bool)

(assert (=> bm!401763 (= call!401873 call!401883)))

(declare-fun bm!401764 () Bool)

(declare-fun call!401841 () Bool)

(declare-fun call!401866 () Bool)

(assert (=> bm!401764 (= call!401841 call!401866)))

(declare-fun bm!401765 () Bool)

(declare-fun call!401863 () Regex!15289)

(declare-fun call!401783 () Regex!15289)

(assert (=> bm!401765 (= call!401863 call!401783)))

(declare-fun bm!401766 () Bool)

(declare-fun call!401854 () Unit!154968)

(declare-fun call!401847 () Unit!154968)

(assert (=> bm!401766 (= call!401854 call!401847)))

(declare-fun bm!401767 () Bool)

(declare-fun call!401812 () Bool)

(assert (=> bm!401767 (= call!401812 call!401894)))

(declare-fun bm!401768 () Bool)

(declare-fun lt!2231300 () List!62167)

(declare-fun lt!2231294 () List!62167)

(declare-fun call!401786 () Unit!154968)

(declare-fun lemmaConcatPreservesForall!256 (List!62167 List!62167 Int) Unit!154968)

(assert (=> bm!401768 (= call!401786 (lemmaConcatPreservesForall!256 lt!2231300 lt!2231294 (ite c!954429 lambda!289687 lambda!289689)))))

(declare-fun call!401795 () Unit!154968)

(declare-fun bm!401769 () Bool)

(declare-fun lemmaStarApp!84 (Regex!15289 List!62166 List!62166) Unit!154968)

(assert (=> bm!401769 (= call!401795 (lemmaStarApp!84 (reg!15618 (regOne!31090 r!7292)) (ite c!954429 (_1!35791 lt!2231420) (_1!35791 lt!2231425)) (ite c!954429 (_2!35791 lt!2231420) (_2!35791 lt!2231425))))))

(declare-fun bm!401770 () Bool)

(declare-fun call!401820 () Bool)

(declare-fun call!401885 () Bool)

(assert (=> bm!401770 (= call!401820 call!401885)))

(declare-fun e!3381995 () Unit!154968)

(declare-fun Unit!154971 () Unit!154968)

(assert (=> b!5461640 (= e!3381995 Unit!154971)))

(declare-fun lt!2231346 () Unit!154968)

(declare-fun call!401899 () Unit!154968)

(assert (=> b!5461640 (= lt!2231346 call!401899)))

(declare-fun call!401830 () Bool)

(declare-fun call!401915 () Bool)

(assert (=> b!5461640 (= call!401830 call!401915)))

(declare-fun lt!2231467 () Unit!154968)

(declare-fun call!401798 () Unit!154968)

(assert (=> b!5461640 (= lt!2231467 call!401798)))

(declare-fun call!401864 () Option!15400)

(assert (=> b!5461640 (= lt!2231319 call!401864)))

(declare-fun call!401861 () Bool)

(assert (=> b!5461640 (= call!401861 call!401873)))

(declare-fun lt!2231465 () Unit!154968)

(declare-fun call!401750 () Unit!154968)

(assert (=> b!5461640 (= lt!2231465 call!401750)))

(assert (=> b!5461640 (= call!401868 call!401779)))

(declare-fun lt!2231328 () Unit!154968)

(declare-fun call!401903 () Unit!154968)

(assert (=> b!5461640 (= lt!2231328 call!401903)))

(assert (=> b!5461640 (= call!401841 call!401889)))

(declare-fun call!401900 () tuple2!64976)

(assert (=> b!5461640 (= lt!2231420 call!401900)))

(declare-fun lt!2231331 () Unit!154968)

(declare-fun call!401780 () Unit!154968)

(assert (=> b!5461640 (= lt!2231331 call!401780)))

(declare-fun lt!2231379 () List!62166)

(declare-fun call!401828 () List!62166)

(assert (=> b!5461640 (= lt!2231379 call!401828)))

(declare-fun call!401906 () List!62166)

(assert (=> b!5461640 (= lt!2231361 call!401906)))

(declare-fun lt!2231275 () List!62166)

(declare-fun call!401886 () List!62166)

(assert (=> b!5461640 (= lt!2231275 call!401886)))

(declare-fun lt!2231399 () List!62166)

(assert (=> b!5461640 (= lt!2231399 call!401831)))

(assert (=> b!5461640 (= lt!2231275 lt!2231399)))

(declare-fun lt!2231474 () Unit!154968)

(assert (=> b!5461640 (= lt!2231474 call!401795)))

(declare-fun call!401897 () Bool)

(assert (=> b!5461640 call!401897))

(declare-fun lt!2231415 () Unit!154968)

(assert (=> b!5461640 (= lt!2231415 call!401808)))

(declare-fun call!401774 () Bool)

(assert (=> b!5461640 call!401774))

(declare-fun lt!2231407 () Unit!154968)

(declare-fun call!401858 () Unit!154968)

(assert (=> b!5461640 (= lt!2231407 call!401858)))

(declare-fun call!401763 () Bool)

(declare-fun call!401922 () Bool)

(assert (=> b!5461640 (= call!401763 call!401922)))

(declare-fun lt!2231327 () Unit!154968)

(declare-fun call!401937 () Unit!154968)

(assert (=> b!5461640 (= lt!2231327 call!401937)))

(declare-fun call!401840 () Bool)

(assert (=> b!5461640 call!401840))

(declare-fun lt!2231430 () Unit!154968)

(declare-fun call!401865 () Unit!154968)

(assert (=> b!5461640 (= lt!2231430 call!401865)))

(declare-fun lt!2231283 () Unit!154968)

(assert (=> b!5461640 (= lt!2231283 call!401786)))

(declare-fun call!401916 () Bool)

(assert (=> b!5461640 call!401916))

(declare-fun lt!2231479 () Unit!154968)

(declare-fun call!401853 () Unit!154968)

(assert (=> b!5461640 (= lt!2231479 call!401853)))

(declare-fun res!2326380 () Bool)

(declare-fun call!401848 () Bool)

(assert (=> b!5461640 (= res!2326380 call!401848)))

(declare-fun e!3381994 () Bool)

(assert (=> b!5461640 (=> (not res!2326380) (not e!3381994))))

(assert (=> b!5461640 e!3381994))

(declare-fun lt!2231372 () Unit!154968)

(declare-fun call!401949 () Unit!154968)

(assert (=> b!5461640 (= lt!2231372 call!401949)))

(declare-fun call!401799 () Bool)

(assert (=> b!5461640 call!401799))

(declare-fun bm!401771 () Bool)

(declare-fun call!401862 () Bool)

(declare-fun call!401777 () Bool)

(assert (=> bm!401771 (= call!401862 call!401777)))

(declare-fun bm!401772 () Bool)

(declare-fun call!401919 () Bool)

(assert (=> bm!401772 (= call!401943 call!401919)))

(declare-fun b!5461641 () Bool)

(declare-fun res!2326363 () Bool)

(assert (=> b!5461641 (=> (not res!2326363) (not e!3381999))))

(declare-fun toList!9073 ((InoxSet Context!9346)) List!62168)

(assert (=> b!5461641 (= res!2326363 (= (toList!9073 z!1189) zl!343))))

(declare-fun bm!401773 () Bool)

(declare-fun call!401781 () Bool)

(assert (=> bm!401773 (= call!401781 (Exists!2470 (ite c!954426 lambda!289675 (ite c!954437 lambda!289678 (ite c!954429 lambda!289686 (ite c!954427 lambda!289692 lambda!289695))))))))

(declare-fun bm!401774 () Bool)

(declare-fun call!401796 () Unit!154968)

(assert (=> bm!401774 (= call!401796 call!401907)))

(declare-fun bm!401775 () Bool)

(declare-fun call!401807 () Bool)

(assert (=> bm!401775 (= call!401807 call!401941)))

(declare-fun b!5461642 () Bool)

(declare-fun e!3382026 () Bool)

(assert (=> b!5461642 (= e!3382026 false)))

(declare-fun b!5461643 () Bool)

(declare-fun e!3382013 () Bool)

(assert (=> b!5461643 (= e!3382013 true)))

(declare-fun lt!2231351 () Regex!15289)

(declare-fun matchR!7474 (Regex!15289 List!62166) Bool)

(assert (=> b!5461643 (= (matchR!7474 lt!2231351 s!2326) (matchZipper!1533 lt!2231292 s!2326))))

(declare-fun lt!2231332 () Unit!154968)

(declare-fun lt!2231382 () List!62168)

(declare-fun theoremZipperRegexEquiv!569 ((InoxSet Context!9346) List!62168 Regex!15289 List!62166) Unit!154968)

(assert (=> b!5461643 (= lt!2231332 (theoremZipperRegexEquiv!569 lt!2231292 lt!2231382 lt!2231351 s!2326))))

(declare-fun bm!401776 () Bool)

(declare-fun call!401884 () Bool)

(declare-fun call!401773 () Bool)

(assert (=> bm!401776 (= call!401884 call!401773)))

(declare-fun b!5461644 () Bool)

(declare-fun e!3382024 () Bool)

(assert (=> b!5461644 e!3382024))

(declare-fun res!2326382 () Bool)

(assert (=> b!5461644 (=> (not res!2326382) (not e!3382024))))

(declare-fun lt!2231378 () Bool)

(declare-fun lt!2231409 () Regex!15289)

(declare-fun matchRSpec!2392 (Regex!15289 List!62166) Bool)

(assert (=> b!5461644 (= res!2326382 (= lt!2231378 (matchRSpec!2392 lt!2231409 s!2326)))))

(declare-fun lt!2231466 () Unit!154968)

(declare-fun call!401815 () Unit!154968)

(assert (=> b!5461644 (= lt!2231466 call!401815)))

(declare-fun lt!2231435 () Bool)

(assert (=> b!5461644 (= lt!2231435 call!401773)))

(declare-fun lt!2231453 () Unit!154968)

(declare-fun call!401904 () Unit!154968)

(assert (=> b!5461644 (= lt!2231453 call!401904)))

(assert (=> b!5461644 (= lt!2231378 lt!2231435)))

(declare-fun call!401809 () Bool)

(assert (=> b!5461644 (= lt!2231435 call!401809)))

(declare-fun call!401888 () Bool)

(assert (=> b!5461644 (= lt!2231378 call!401888)))

(declare-fun lt!2231364 () Regex!15289)

(assert (=> b!5461644 (= lt!2231364 (Union!15289 (Concat!24134 (regOne!31091 (regOne!31090 r!7292)) (regTwo!31090 r!7292)) (Concat!24134 (regTwo!31091 (regOne!31090 r!7292)) (regTwo!31090 r!7292))))))

(assert (=> b!5461644 (= lt!2231409 (Concat!24134 (regOne!31090 r!7292) (regTwo!31090 r!7292)))))

(declare-fun lt!2231295 () Unit!154968)

(declare-fun lemmaConcatDistributesInUnion!36 (Regex!15289 Regex!15289 Regex!15289 List!62166) Unit!154968)

(assert (=> b!5461644 (= lt!2231295 (lemmaConcatDistributesInUnion!36 (regOne!31091 (regOne!31090 r!7292)) (regTwo!31091 (regOne!31090 r!7292)) (regTwo!31090 r!7292) s!2326))))

(declare-fun lt!2231463 () Bool)

(declare-fun call!401953 () Bool)

(assert (=> b!5461644 (= lt!2231463 call!401953)))

(declare-fun lt!2231393 () Unit!154968)

(declare-fun lt!2231375 () Regex!15289)

(declare-fun mainMatchTheorem!2392 (Regex!15289 List!62166) Unit!154968)

(assert (=> b!5461644 (= lt!2231393 (mainMatchTheorem!2392 lt!2231375 s!2326))))

(declare-fun lt!2231400 () Bool)

(declare-fun call!401805 () Bool)

(assert (=> b!5461644 (= lt!2231400 call!401805)))

(declare-fun lt!2231297 () Unit!154968)

(assert (=> b!5461644 (= lt!2231297 call!401837)))

(declare-fun call!401749 () Bool)

(assert (=> b!5461644 (= lt!2231463 call!401749)))

(declare-fun call!401802 () Bool)

(assert (=> b!5461644 (= lt!2231463 call!401802)))

(declare-fun lt!2231477 () Unit!154968)

(declare-fun call!401952 () Unit!154968)

(assert (=> b!5461644 (= lt!2231477 call!401952)))

(declare-fun call!401768 () Regex!15289)

(assert (=> b!5461644 (= lt!2231375 call!401768)))

(declare-fun call!401765 () Bool)

(assert (=> b!5461644 (= lt!2231400 call!401765)))

(declare-fun call!401757 () Bool)

(assert (=> b!5461644 (= lt!2231400 call!401757)))

(declare-fun lt!2231384 () Unit!154968)

(assert (=> b!5461644 (= lt!2231384 call!401907)))

(declare-fun lt!2231419 () Regex!15289)

(assert (=> b!5461644 (= lt!2231419 call!401826)))

(declare-fun lt!2231426 () Unit!154968)

(declare-fun e!3382018 () Unit!154968)

(assert (=> b!5461644 (= lt!2231426 e!3382018)))

(declare-fun c!954436 () Bool)

(declare-fun call!401920 () Bool)

(assert (=> b!5461644 (= c!954436 call!401920)))

(declare-fun call!401938 () (InoxSet Context!9346))

(declare-fun call!401844 () (InoxSet Context!9346))

(assert (=> b!5461644 (= call!401938 call!401844)))

(declare-fun lt!2231365 () Unit!154968)

(declare-fun call!401927 () Unit!154968)

(assert (=> b!5461644 (= lt!2231365 call!401927)))

(declare-fun lt!2231296 () (InoxSet Context!9346))

(assert (=> b!5461644 (= lt!2231296 call!401844)))

(declare-fun lt!2231459 () Unit!154968)

(declare-fun e!3382001 () Unit!154968)

(assert (=> b!5461644 (= lt!2231459 e!3382001)))

(declare-fun c!954428 () Bool)

(assert (=> b!5461644 (= c!954428 (nullable!5458 (regOne!31091 (regOne!31090 r!7292))))))

(declare-fun call!401909 () (InoxSet Context!9346))

(declare-fun call!401771 () (InoxSet Context!9346))

(assert (=> b!5461644 (= call!401909 call!401771)))

(declare-fun lt!2231312 () Unit!154968)

(declare-fun call!401778 () Unit!154968)

(assert (=> b!5461644 (= lt!2231312 call!401778)))

(declare-fun lt!2231321 () (InoxSet Context!9346))

(assert (=> b!5461644 (= lt!2231321 call!401771)))

(declare-fun lt!2231376 () (InoxSet Context!9346))

(declare-fun lt!2231447 () Context!9346)

(assert (=> b!5461644 (= lt!2231376 (store ((as const (Array Context!9346 Bool)) false) lt!2231447 true))))

(declare-fun lt!2231289 () List!62167)

(assert (=> b!5461644 (= lt!2231447 (Context!9347 lt!2231289))))

(assert (=> b!5461644 (= lt!2231289 (Cons!62043 (regTwo!31091 (regOne!31090 r!7292)) (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun lt!2231441 () (InoxSet Context!9346))

(declare-fun lt!2231329 () Context!9346)

(assert (=> b!5461644 (= lt!2231441 (store ((as const (Array Context!9346 Bool)) false) lt!2231329 true))))

(declare-fun lt!2231476 () List!62167)

(assert (=> b!5461644 (= lt!2231329 (Context!9347 lt!2231476))))

(assert (=> b!5461644 (= lt!2231476 (Cons!62043 (regOne!31091 (regOne!31090 r!7292)) (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun call!401752 () Bool)

(declare-fun e!3381997 () Bool)

(assert (=> b!5461644 (= call!401752 e!3381997)))

(declare-fun res!2326381 () Bool)

(assert (=> b!5461644 (=> res!2326381 e!3381997)))

(declare-fun lt!2231436 () Bool)

(assert (=> b!5461644 (= res!2326381 lt!2231436)))

(declare-fun call!401910 () Bool)

(assert (=> b!5461644 (= lt!2231436 call!401910)))

(declare-fun lt!2231318 () Unit!154968)

(declare-fun call!401775 () Unit!154968)

(assert (=> b!5461644 (= lt!2231318 call!401775)))

(declare-fun call!401872 () (InoxSet Context!9346))

(assert (=> b!5461644 (= lt!2231454 call!401872)))

(declare-fun call!401946 () (InoxSet Context!9346))

(assert (=> b!5461644 (= lt!2231290 call!401946)))

(declare-fun Unit!154972 () Unit!154968)

(assert (=> b!5461644 (= e!3381990 Unit!154972)))

(declare-fun bm!401777 () Bool)

(declare-fun call!401806 () Bool)

(assert (=> bm!401777 (= call!401806 call!401774)))

(declare-fun bm!401778 () Bool)

(declare-fun call!401769 () Bool)

(assert (=> bm!401778 (= call!401840 call!401769)))

(declare-fun lt!2231349 () Regex!15289)

(declare-fun lt!2231337 () Regex!15289)

(declare-fun bm!401779 () Bool)

(declare-fun lt!2231387 () Regex!15289)

(declare-fun lt!2231344 () List!62166)

(assert (=> bm!401779 (= call!401809 (matchR!7474 (ite c!954434 lt!2231364 (ite c!954426 lt!2231337 (ite c!954437 (Concat!24134 (regOne!31090 r!7292) lt!2231403) (ite c!954430 (ite c!954429 lt!2231387 lt!2231349) (regOne!31090 r!7292))))) (ite (or c!954434 c!954426 c!954437) s!2326 (ite c!954430 (ite c!954429 lt!2231399 lt!2231344) s!2326))))))

(declare-fun bm!401780 () Bool)

(declare-fun call!401836 () Unit!154968)

(assert (=> bm!401780 (= call!401899 call!401836)))

(declare-fun bm!401781 () Bool)

(declare-fun call!401816 () Unit!154968)

(declare-fun call!401856 () Unit!154968)

(assert (=> bm!401781 (= call!401816 call!401856)))

(declare-fun bm!401782 () Bool)

(declare-fun call!401855 () Unit!154968)

(assert (=> bm!401782 (= call!401855 call!401796)))

(declare-fun b!5461645 () Bool)

(assert (=> b!5461645 (= c!954430 ((_ is Star!15289) (regOne!31090 r!7292)))))

(declare-fun e!3381986 () Unit!154968)

(declare-fun e!3382011 () Unit!154968)

(assert (=> b!5461645 (= e!3381986 e!3382011)))

(declare-fun bm!401783 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1578 (Regex!15289 Regex!15289 List!62166) Unit!154968)

(assert (=> bm!401783 (= call!401847 (lemmaFindConcatSeparationEquivalentToExists!1578 (ite (or c!954426 c!954437) (regTwo!31090 (regOne!31090 r!7292)) (ite c!954429 lt!2231373 lt!2231408)) (ite c!954426 lt!2231362 (ite c!954437 lt!2231403 (regTwo!31090 r!7292))) s!2326))))

(declare-fun bm!401784 () Bool)

(declare-fun call!401753 () Bool)

(declare-fun call!401850 () Bool)

(assert (=> bm!401784 (= call!401753 call!401850)))

(assert (=> b!5461646 (= e!3382021 e!3382006)))

(declare-fun res!2326359 () Bool)

(assert (=> b!5461646 (=> res!2326359 e!3382006)))

(declare-fun lt!2231276 () Bool)

(assert (=> b!5461646 (= res!2326359 (or (not (= lt!2231342 lt!2231276)) ((_ is Nil!62042) s!2326)))))

(assert (=> b!5461646 (= (Exists!2470 lambda!289671) (Exists!2470 lambda!289672))))

(declare-fun lt!2231410 () Unit!154968)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1124 (Regex!15289 Regex!15289 List!62166) Unit!154968)

(assert (=> b!5461646 (= lt!2231410 (lemmaExistCutMatchRandMatchRSpecEquivalent!1124 (regOne!31090 r!7292) (regTwo!31090 r!7292) s!2326))))

(assert (=> b!5461646 (= lt!2231276 (Exists!2470 lambda!289671))))

(declare-fun findConcatSeparation!1814 (Regex!15289 Regex!15289 List!62166 List!62166 List!62166) Option!15400)

(assert (=> b!5461646 (= lt!2231276 (isDefined!12103 (findConcatSeparation!1814 (regOne!31090 r!7292) (regTwo!31090 r!7292) Nil!62042 s!2326 s!2326)))))

(declare-fun lt!2231350 () Unit!154968)

(assert (=> b!5461646 (= lt!2231350 (lemmaFindConcatSeparationEquivalentToExists!1578 (regOne!31090 r!7292) (regTwo!31090 r!7292) s!2326))))

(declare-fun bm!401785 () Bool)

(declare-fun call!401912 () Regex!15289)

(assert (=> bm!401785 (= call!401912 call!401863)))

(declare-fun lt!2231311 () (InoxSet Context!9346))

(declare-fun call!401880 () (InoxSet Context!9346))

(declare-fun bm!401786 () Bool)

(declare-fun lt!2231352 () (InoxSet Context!9346))

(assert (=> bm!401786 (= call!401880 (flatMap!1016 (ite c!954437 lt!2231352 lt!2231311) (ite c!954437 lambda!289673 lambda!289673)))))

(declare-fun b!5461647 () Bool)

(declare-fun e!3382014 () Bool)

(declare-fun call!401908 () Bool)

(assert (=> b!5461647 (= e!3382014 call!401908)))

(declare-fun bm!401787 () Bool)

(declare-fun lt!2231320 () (InoxSet Context!9346))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!526 ((InoxSet Context!9346) (InoxSet Context!9346) List!62166) Unit!154968)

(assert (=> bm!401787 (= call!401775 (lemmaZipperConcatMatchesSameAsBothZippers!526 (ite c!954434 lt!2231290 (ite c!954426 lt!2231358 lt!2231448)) (ite c!954434 lt!2231454 (ite c!954426 lt!2231320 lt!2231338)) (t!375395 s!2326)))))

(declare-fun bm!401788 () Bool)

(declare-fun lt!2231359 () List!62166)

(assert (=> bm!401788 (= call!401906 (++!13657 (ite c!954429 (_2!35791 lt!2231420) (_1!35791 lt!2231425)) (ite c!954429 (_2!35791 lt!2231432) lt!2231359)))))

(declare-fun bm!401789 () Bool)

(declare-fun call!401934 () Bool)

(declare-fun call!401869 () Bool)

(assert (=> bm!401789 (= call!401934 call!401869)))

(declare-fun bm!401790 () Bool)

(declare-fun call!401878 () Bool)

(assert (=> bm!401790 (= call!401878 call!401822)))

(declare-fun bm!401791 () Bool)

(assert (=> bm!401791 (= call!401945 (findConcatSeparation!1814 (ite (or c!954426 c!954437) (regTwo!31090 (regOne!31090 r!7292)) (reg!15618 (regOne!31090 r!7292))) (ite c!954426 lt!2231362 (ite c!954437 lt!2231403 lt!2231373)) Nil!62042 (ite (or c!954426 c!954437) s!2326 (ite c!954429 (_1!35791 lt!2231432) (ite c!954427 (_1!35791 lt!2231315) Nil!62042))) (ite (or c!954426 c!954437) s!2326 (ite c!954429 (_1!35791 lt!2231432) (ite c!954427 (_1!35791 lt!2231315) Nil!62042)))))))

(declare-fun bm!401792 () Bool)

(declare-fun call!401881 () Unit!154968)

(assert (=> bm!401792 (= call!401881 call!401750)))

(declare-fun bm!401793 () Bool)

(declare-fun call!401834 () Bool)

(assert (=> bm!401793 (= call!401834 call!401820)))

(declare-fun bm!401794 () Bool)

(declare-fun call!401950 () Unit!154968)

(declare-fun call!401851 () Unit!154968)

(assert (=> bm!401794 (= call!401950 call!401851)))

(declare-fun bm!401795 () Bool)

(assert (=> bm!401795 (= call!401946 (derivationStepZipperDown!737 (ite c!954434 (regOne!31091 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) lt!2231369 (h!68490 s!2326)))))

(declare-fun bm!401796 () Bool)

(declare-fun call!401797 () Option!15400)

(assert (=> bm!401796 (= call!401797 call!401864)))

(declare-fun bm!401797 () Bool)

(declare-fun call!401895 () Bool)

(assert (=> bm!401797 (= call!401895 call!401923)))

(declare-fun bm!401798 () Bool)

(declare-fun lt!2231317 () Context!9346)

(declare-fun lt!2231445 () Context!9346)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!104 (Context!9346 Context!9346 List!62166 List!62166) Unit!154968)

(assert (=> bm!401798 (= call!401865 (lemmaConcatenateContextMatchesConcatOfStrings!104 lt!2231317 lt!2231445 (ite c!954429 (_1!35791 lt!2231420) (_1!35791 lt!2231336)) (ite c!954429 lt!2231361 (_2!35791 lt!2231336))))))

(declare-fun bm!401799 () Bool)

(declare-fun call!401870 () Bool)

(assert (=> bm!401799 (= call!401757 call!401870)))

(declare-fun lt!2231395 () List!62166)

(declare-fun bm!401800 () Bool)

(assert (=> bm!401800 (= call!401828 (++!13657 (ite c!954429 (_1!35791 lt!2231420) lt!2231395) (ite c!954429 (_2!35791 lt!2231420) (_2!35791 lt!2231315))))))

(declare-fun b!5461648 () Bool)

(declare-fun Unit!154973 () Unit!154968)

(assert (=> b!5461648 (= e!3382019 Unit!154973)))

(assert (=> b!5461648 (= lt!2231347 (store ((as const (Array Context!9346 Bool)) false) lt!2231369 true))))

(declare-fun lt!2231442 () Regex!15289)

(declare-fun call!401948 () Regex!15289)

(assert (=> b!5461648 (= lt!2231442 call!401948)))

(declare-fun lt!2231285 () Unit!154968)

(assert (=> b!5461648 (= lt!2231285 call!401766)))

(assert (=> b!5461648 (= call!401870 call!401810)))

(declare-fun bm!401801 () Bool)

(declare-fun call!401857 () Bool)

(assert (=> bm!401801 (= call!401857 call!401884)))

(declare-fun bm!401802 () Bool)

(declare-fun call!401951 () Unit!154968)

(declare-fun call!401902 () Unit!154968)

(assert (=> bm!401802 (= call!401951 call!401902)))

(declare-fun bm!401803 () Bool)

(declare-fun call!401876 () Bool)

(assert (=> bm!401803 (= call!401876 (Exists!2470 (ite c!954426 lambda!289676 (ite c!954429 lambda!289682 (ite c!954427 lambda!289690 lambda!289696)))))))

(declare-fun bm!401804 () Bool)

(declare-fun call!401936 () Bool)

(assert (=> bm!401804 (= call!401830 call!401936)))

(declare-fun bm!401805 () Bool)

(declare-fun call!401911 () Unit!154968)

(assert (=> bm!401805 (= call!401856 call!401911)))

(declare-fun b!5461649 () Bool)

(declare-fun call!401784 () Bool)

(assert (=> b!5461649 (= e!3382024 (= lt!2231342 call!401784))))

(declare-fun call!401905 () Bool)

(assert (=> b!5461650 call!401905))

(declare-fun lt!2231301 () Unit!154968)

(assert (=> b!5461650 (= lt!2231301 e!3381995)))

(declare-fun c!954433 () Bool)

(declare-fun isEmpty!34031 (List!62166) Bool)

(assert (=> b!5461650 (= c!954433 (isEmpty!34031 (_1!35791 lt!2231432)))))

(declare-fun call!401819 () tuple2!64976)

(assert (=> b!5461650 (= lt!2231432 call!401819)))

(declare-fun call!401776 () Bool)

(assert (=> b!5461650 (= call!401776 call!401753)))

(declare-fun lt!2231422 () Unit!154968)

(declare-fun call!401782 () Unit!154968)

(assert (=> b!5461650 (= lt!2231422 call!401782)))

(assert (=> b!5461650 (= call!401934 call!401777)))

(declare-fun lt!2231475 () Option!15400)

(declare-fun call!401842 () Option!15400)

(assert (=> b!5461650 (= lt!2231475 call!401842)))

(declare-fun lt!2231288 () Unit!154968)

(declare-fun call!401852 () Unit!154968)

(assert (=> b!5461650 (= lt!2231288 call!401852)))

(declare-fun e!3382002 () Unit!154968)

(declare-fun Unit!154974 () Unit!154968)

(assert (=> b!5461650 (= e!3382002 Unit!154974)))

(declare-fun bm!401806 () Bool)

(assert (=> bm!401806 (= call!401798 call!401951)))

(declare-fun b!5461651 () Bool)

(declare-fun res!2326354 () Bool)

(assert (=> b!5461651 (=> res!2326354 e!3382021)))

(assert (=> b!5461651 (= res!2326354 (not ((_ is Cons!62043) (exprs!5173 (h!68492 zl!343)))))))

(declare-fun b!5461652 () Bool)

(declare-fun e!3382023 () Bool)

(declare-fun call!401914 () Bool)

(assert (=> b!5461652 (= e!3382023 (= lt!2231342 call!401914))))

(declare-fun Unit!154975 () Unit!154968)

(assert (=> b!5461653 (= e!3381985 Unit!154975)))

(declare-fun lt!2231391 () List!62167)

(assert (=> b!5461653 (= lt!2231391 (Cons!62043 (regTwo!31090 (regOne!31090 r!7292)) (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun lt!2231313 () Context!9346)

(assert (=> b!5461653 (= lt!2231313 (Context!9347 lt!2231391))))

(declare-fun call!401761 () (InoxSet Context!9346))

(assert (=> b!5461653 (= lt!2231358 call!401761)))

(assert (=> b!5461653 (= lt!2231320 call!401946)))

(declare-fun lt!2231326 () Unit!154968)

(declare-fun call!401759 () Unit!154968)

(assert (=> b!5461653 (= lt!2231326 call!401759)))

(declare-fun lt!2231310 () Bool)

(declare-fun call!401901 () Bool)

(assert (=> b!5461653 (= lt!2231310 call!401901)))

(declare-fun res!2326384 () Bool)

(assert (=> b!5461653 (= res!2326384 lt!2231310)))

(declare-fun e!3381991 () Bool)

(assert (=> b!5461653 (=> res!2326384 e!3381991)))

(assert (=> b!5461653 (= call!401908 e!3381991)))

(declare-fun lt!2231473 () List!62167)

(assert (=> b!5461653 (= lt!2231473 (Cons!62043 (regOne!31090 (regOne!31090 r!7292)) lt!2231391))))

(declare-fun lt!2231443 () Context!9346)

(assert (=> b!5461653 (= lt!2231443 (Context!9347 lt!2231473))))

(declare-fun lt!2231282 () (InoxSet Context!9346))

(assert (=> b!5461653 (= lt!2231282 (store ((as const (Array Context!9346 Bool)) false) lt!2231443 true))))

(declare-fun lt!2231278 () (InoxSet Context!9346))

(assert (=> b!5461653 (= lt!2231278 (store ((as const (Array Context!9346 Bool)) false) lt!2231313 true))))

(declare-fun lt!2231398 () (InoxSet Context!9346))

(declare-fun call!401748 () (InoxSet Context!9346))

(assert (=> b!5461653 (= lt!2231398 call!401748)))

(declare-fun lt!2231405 () Unit!154968)

(declare-fun call!401892 () Unit!154968)

(assert (=> b!5461653 (= lt!2231405 call!401892)))

(declare-fun call!401824 () (InoxSet Context!9346))

(assert (=> b!5461653 (= call!401824 call!401748)))

(declare-fun call!401818 () (InoxSet Context!9346))

(assert (=> b!5461653 (= lt!2231367 call!401818)))

(declare-fun lt!2231439 () Unit!154968)

(declare-fun call!401754 () Unit!154968)

(assert (=> b!5461653 (= lt!2231439 call!401754)))

(assert (=> b!5461653 (= call!401930 call!401818)))

(declare-fun lt!2231286 () Unit!154968)

(declare-fun call!401827 () Unit!154968)

(assert (=> b!5461653 (= lt!2231286 call!401827)))

(declare-fun res!2326374 () Bool)

(assert (=> b!5461653 (= res!2326374 lt!2231310)))

(assert (=> b!5461653 (=> res!2326374 e!3382017)))

(declare-fun call!401762 () Bool)

(assert (=> b!5461653 (= call!401762 e!3382017)))

(assert (=> b!5461653 (= lt!2231337 call!401783)))

(declare-fun lt!2231333 () Unit!154968)

(assert (=> b!5461653 (= lt!2231333 call!401796)))

(declare-fun lt!2231414 () Bool)

(assert (=> b!5461653 (= lt!2231414 call!401747)))

(declare-fun call!401770 () Bool)

(assert (=> b!5461653 (= lt!2231414 call!401770)))

(declare-fun call!401893 () Regex!15289)

(assert (=> b!5461653 (= lt!2231462 call!401893)))

(declare-fun lt!2231343 () Unit!154968)

(declare-fun call!401896 () Unit!154968)

(assert (=> b!5461653 (= lt!2231343 call!401896)))

(declare-fun lt!2231335 () Bool)

(declare-fun call!401838 () Bool)

(assert (=> b!5461653 (= lt!2231335 call!401838)))

(assert (=> b!5461653 (= lt!2231335 call!401820)))

(declare-fun lt!2231388 () Unit!154968)

(assert (=> b!5461653 (= lt!2231388 call!401851)))

(declare-fun call!401756 () Bool)

(assert (=> b!5461653 (= lt!2231414 call!401756)))

(declare-fun lt!2231291 () Unit!154968)

(assert (=> b!5461653 (= lt!2231291 call!401902)))

(assert (=> b!5461653 (= call!401941 call!401787)))

(declare-fun lt!2231309 () Unit!154968)

(declare-fun call!401825 () Unit!154968)

(assert (=> b!5461653 (= lt!2231309 call!401825)))

(declare-fun call!401913 () Bool)

(assert (=> b!5461653 (= call!401913 call!401781)))

(declare-fun lt!2231299 () Unit!154968)

(assert (=> b!5461653 (= lt!2231299 call!401817)))

(declare-fun call!401813 () Bool)

(assert (=> b!5461653 (= lt!2231335 call!401813)))

(assert (=> b!5461653 (= lt!2231362 call!401867)))

(declare-fun lt!2231279 () Unit!154968)

(assert (=> b!5461653 (= lt!2231279 call!401847)))

(declare-fun call!401803 () Bool)

(assert (=> b!5461653 (= call!401803 call!401876)))

(declare-fun lt!2231418 () Unit!154968)

(declare-fun call!401871 () Unit!154968)

(assert (=> b!5461653 (= lt!2231418 call!401871)))

(declare-fun call!401832 () Bool)

(assert (=> b!5461653 (= call!401832 call!401866)))

(declare-fun lt!2231440 () Unit!154968)

(declare-fun call!401940 () Unit!154968)

(assert (=> b!5461653 (= lt!2231440 call!401940)))

(declare-fun res!2326366 () Bool)

(assert (=> b!5461653 (= res!2326366 (= call!401785 call!401919))))

(assert (=> b!5461653 (=> (not res!2326366) (not e!3382023))))

(assert (=> b!5461653 e!3382023))

(declare-fun b!5461654 () Bool)

(assert (=> b!5461654 (= e!3381985 e!3381986)))

(assert (=> b!5461654 (= c!954437 ((_ is Concat!24134) (regOne!31090 r!7292)))))

(declare-fun bm!401807 () Bool)

(declare-fun call!401875 () Unit!154968)

(assert (=> bm!401807 (= call!401875 call!401871)))

(declare-fun bm!401808 () Bool)

(assert (=> bm!401808 (= call!401825 (lemmaExistCutMatchRandMatchRSpecEquivalent!1124 (ite (or c!954426 c!954437) (regOne!31090 (regOne!31090 r!7292)) (ite c!954429 lt!2231373 (reg!15618 (regOne!31090 r!7292)))) (ite c!954426 lt!2231462 (ite c!954437 lt!2231471 (ite c!954429 (regTwo!31090 r!7292) lt!2231373))) (ite (or c!954426 c!954437 c!954429) s!2326 (_1!35791 lt!2231315))))))

(declare-fun bm!401809 () Bool)

(declare-fun lemmaConcatAssociative!84 (Regex!15289 Regex!15289 Regex!15289 List!62166) Unit!154968)

(assert (=> bm!401809 (= call!401940 (lemmaConcatAssociative!84 (ite (or c!954426 c!954437) (regOne!31090 (regOne!31090 r!7292)) (reg!15618 (regOne!31090 r!7292))) (ite (or c!954426 c!954437) (regTwo!31090 (regOne!31090 r!7292)) lt!2231373) (ite c!954426 lt!2231362 (ite c!954437 lt!2231403 (regTwo!31090 r!7292))) s!2326))))

(declare-fun bm!401810 () Bool)

(declare-fun call!401935 () Bool)

(assert (=> bm!401810 (= call!401935 call!401914)))

(declare-fun bm!401811 () Bool)

(assert (=> bm!401811 (= call!401785 call!401802)))

(declare-fun bm!401812 () Bool)

(declare-fun call!401887 () Unit!154968)

(assert (=> bm!401812 (= call!401887 call!401855)))

(declare-fun bm!401813 () Bool)

(declare-fun call!401898 () Unit!154968)

(assert (=> bm!401813 (= call!401782 call!401898)))

(declare-fun b!5461655 () Bool)

(declare-fun tp_is_empty!39831 () Bool)

(assert (=> b!5461655 (= e!3382015 tp_is_empty!39831)))

(declare-fun bm!401814 () Bool)

(declare-fun call!401789 () Bool)

(declare-fun call!401947 () Bool)

(assert (=> bm!401814 (= call!401789 call!401947)))

(declare-fun bm!401815 () Bool)

(declare-fun call!401791 () Bool)

(assert (=> bm!401815 (= call!401791 call!401762)))

(declare-fun bm!401816 () Bool)

(assert (=> bm!401816 (= call!401843 call!401813)))

(declare-fun bm!401817 () Bool)

(declare-fun call!401928 () List!62166)

(declare-fun call!401829 () Bool)

(declare-fun lt!2231287 () Regex!15289)

(assert (=> bm!401817 (= call!401829 (matchR!7474 (ite c!954427 lt!2231287 lt!2231349) (ite c!954427 s!2326 call!401928)))))

(declare-fun bm!401818 () Bool)

(declare-fun lt!2231353 () Regex!15289)

(assert (=> bm!401818 (= call!401815 (mainMatchTheorem!2392 (ite c!954434 lt!2231409 (ite c!954426 lt!2231337 (ite c!954437 lt!2231353 (ite c!954430 (ite c!954429 lt!2231373 lt!2231287) (regTwo!31090 r!7292))))) (ite (or c!954434 c!954426 c!954437) s!2326 (ite (and c!954430 c!954429) (_1!35791 lt!2231432) s!2326))))))

(declare-fun bm!401819 () Bool)

(declare-fun call!401859 () Unit!154968)

(assert (=> bm!401819 (= call!401859 call!401940)))

(declare-fun bm!401820 () Bool)

(assert (=> bm!401820 (= call!401904 (mainMatchTheorem!2392 (ite c!954434 lt!2231364 (ite c!954427 lt!2231408 lt!2231373)) (ite c!954434 s!2326 (ite c!954427 (_1!35791 lt!2231315) Nil!62042))))))

(declare-fun bm!401821 () Bool)

(assert (=> bm!401821 (= call!401883 (Exists!2470 (ite c!954437 lambda!289681 (ite c!954429 lambda!289684 lambda!289690))))))

(declare-fun b!5461656 () Bool)

(declare-fun Unit!154976 () Unit!154968)

(assert (=> b!5461656 (= e!3381988 Unit!154976)))

(declare-fun lt!2231374 () Unit!154968)

(assert (=> b!5461656 (= lt!2231374 (lemmaZipperConcatMatchesSameAsBothZippers!526 lt!2231448 lt!2231338 (t!375395 s!2326)))))

(declare-fun res!2326360 () Bool)

(assert (=> b!5461656 (= res!2326360 (matchZipper!1533 lt!2231448 (t!375395 s!2326)))))

(declare-fun e!3382012 () Bool)

(assert (=> b!5461656 (=> res!2326360 e!3382012)))

(assert (=> b!5461656 (= (matchZipper!1533 ((_ map or) lt!2231448 lt!2231338) (t!375395 s!2326)) e!3382012)))

(declare-fun bm!401822 () Bool)

(declare-fun lt!2231371 () (InoxSet Context!9346))

(declare-fun lt!2231478 () (InoxSet Context!9346))

(declare-fun lt!2231345 () (InoxSet Context!9346))

(assert (=> bm!401822 (= call!401749 (matchZipper!1533 (ite c!954434 lt!2231376 (ite c!954426 lt!2231358 (ite c!954430 (ite c!954429 (ite c!954433 lt!2231371 z!1189) lt!2231478) lt!2231345))) (ite c!954434 s!2326 (ite c!954426 (t!375395 s!2326) (ite c!954430 (ite c!954429 s!2326 (_2!35791 lt!2231336)) s!2326)))))))

(declare-fun bm!401823 () Bool)

(assert (=> bm!401823 (= call!401930 call!401909)))

(declare-fun tp!1502290 () Bool)

(declare-fun e!3382005 () Bool)

(declare-fun b!5461657 () Bool)

(declare-fun inv!81469 (Context!9346) Bool)

(assert (=> b!5461657 (= e!3382022 (and (inv!81469 (h!68492 zl!343)) e!3382005 tp!1502290))))

(declare-fun b!5461658 () Bool)

(declare-fun e!3382007 () Bool)

(declare-fun lt!2231413 () Bool)

(assert (=> b!5461658 (= e!3382007 lt!2231413)))

(declare-fun b!5461659 () Bool)

(declare-fun Unit!154977 () Unit!154968)

(assert (=> b!5461659 (= e!3382001 Unit!154977)))

(declare-fun lt!2231330 () Unit!154968)

(assert (=> b!5461659 (= lt!2231330 call!401827)))

(declare-fun res!2326356 () Bool)

(assert (=> b!5461659 (= res!2326356 lt!2231436)))

(declare-fun e!3382009 () Bool)

(assert (=> b!5461659 (=> res!2326356 e!3382009)))

(declare-fun call!401925 () Bool)

(assert (=> b!5461659 (= call!401925 e!3382009)))

(declare-fun bm!401824 () Bool)

(declare-fun call!401849 () Unit!154968)

(assert (=> bm!401824 (= call!401849 call!401836)))

(declare-fun bm!401825 () Bool)

(declare-fun call!401933 () Bool)

(assert (=> bm!401825 (= call!401933 call!401889)))

(declare-fun bm!401826 () Bool)

(assert (=> bm!401826 (= call!401869 call!401803)))

(declare-fun bm!401827 () Bool)

(declare-fun call!401944 () Unit!154968)

(assert (=> bm!401827 (= call!401944 call!401927)))

(declare-fun bm!401828 () Bool)

(declare-fun call!401932 () Bool)

(assert (=> bm!401828 (= call!401932 call!401770)))

(declare-fun b!5461660 () Bool)

(declare-fun res!2326379 () Bool)

(assert (=> b!5461660 (=> res!2326379 e!3382021)))

(assert (=> b!5461660 (= res!2326379 (or ((_ is EmptyExpr!15289) r!7292) ((_ is EmptyLang!15289) r!7292) ((_ is ElementMatch!15289) r!7292) ((_ is Union!15289) r!7292) (not ((_ is Concat!24134) r!7292))))))

(declare-fun bm!401829 () Bool)

(assert (=> bm!401829 (= call!401851 call!401815)))

(declare-fun bm!401830 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!446 (Regex!15289 List!62166) Unit!154968)

(assert (=> bm!401830 (= call!401750 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!446 (reg!15618 (regOne!31090 r!7292)) (ite c!954429 (_1!35791 lt!2231432) (ite c!954427 (_1!35791 lt!2231315) Nil!62042))))))

(declare-fun bm!401831 () Bool)

(declare-fun call!401917 () Regex!15289)

(assert (=> bm!401831 (= call!401917 call!401912)))

(declare-fun lt!2231416 () Option!15400)

(declare-fun bm!401832 () Bool)

(assert (=> bm!401832 (= call!401803 (isDefined!12103 (ite c!954426 call!401945 (ite c!954437 call!401814 (ite c!954429 lt!2231475 lt!2231416)))))))

(declare-fun lt!2231322 () Regex!15289)

(declare-fun bm!401833 () Bool)

(declare-fun lt!2231277 () Regex!15289)

(assert (=> bm!401833 (= call!401766 (theoremZipperRegexEquiv!569 (ite c!954431 lt!2231347 (ite c!954434 lt!2231441 (ite c!954426 lt!2231282 (ite c!954437 lt!2231352 (ite c!954430 (ite c!954429 (ite c!954433 lt!2231371 lt!2231274) lt!2231478) lt!2231345))))) (ite c!954431 (Cons!62044 lt!2231369 Nil!62044) (ite c!954434 (Cons!62044 lt!2231329 Nil!62044) (ite c!954426 (Cons!62044 lt!2231443 Nil!62044) (ite c!954437 (Cons!62044 lt!2231306 Nil!62044) (ite c!954430 (ite c!954429 (ite c!954433 (Cons!62044 lt!2231369 Nil!62044) (Cons!62044 lt!2231317 Nil!62044)) (Cons!62044 lt!2231445 Nil!62044)) (Cons!62044 lt!2231369 Nil!62044)))))) (ite c!954431 lt!2231442 (ite c!954434 lt!2231419 (ite c!954426 lt!2231337 (ite c!954437 lt!2231353 (ite c!954430 (ite c!954429 (ite c!954433 lt!2231277 (reg!15618 (regOne!31090 r!7292))) lt!2231349) lt!2231322))))) (ite c!954431 (t!375395 s!2326) (ite (or c!954434 c!954426 c!954437) s!2326 (ite c!954430 (ite c!954429 (ite c!954433 s!2326 (_1!35791 lt!2231420)) (_2!35791 lt!2231336)) s!2326)))))))

(declare-fun b!5461661 () Bool)

(assert (=> b!5461661 e!3382010))

(declare-fun res!2326368 () Bool)

(assert (=> b!5461661 (=> (not res!2326368) (not e!3382010))))

(declare-fun call!401772 () Bool)

(assert (=> b!5461661 (= res!2326368 (= call!401772 call!401812))))

(declare-fun lt!2231392 () Unit!154968)

(assert (=> b!5461661 (= lt!2231392 call!401849)))

(declare-fun call!401929 () Bool)

(declare-fun call!401760 () Bool)

(assert (=> b!5461661 (= call!401929 call!401760)))

(declare-fun lt!2231280 () Unit!154968)

(assert (=> b!5461661 (= lt!2231280 call!401816)))

(declare-fun call!401882 () Bool)

(assert (=> b!5461661 (not call!401882)))

(declare-fun lt!2231451 () Unit!154968)

(declare-fun call!401764 () Unit!154968)

(assert (=> b!5461661 (= lt!2231451 call!401764)))

(declare-fun e!3382020 () Unit!154968)

(declare-fun Unit!154978 () Unit!154968)

(assert (=> b!5461661 (= e!3382020 Unit!154978)))

(declare-fun bm!401834 () Bool)

(declare-fun lt!2231456 () List!62166)

(assert (=> bm!401834 (= call!401897 (matchR!7474 (ite c!954429 lt!2231373 lt!2231387) (ite c!954429 lt!2231379 lt!2231456)))))

(declare-fun b!5461662 () Bool)

(declare-fun tp!1502284 () Bool)

(declare-fun tp!1502288 () Bool)

(assert (=> b!5461662 (= e!3382015 (and tp!1502284 tp!1502288))))

(declare-fun lt!2231446 () List!62167)

(declare-fun bm!401835 () Bool)

(assert (=> bm!401835 (= call!401872 (derivationStepZipperDown!737 (ite c!954434 (regTwo!31091 (regOne!31090 r!7292)) (ite (or c!954426 c!954437) (regOne!31090 (regOne!31090 r!7292)) (reg!15618 (regOne!31090 r!7292)))) (ite c!954434 lt!2231369 (ite c!954426 lt!2231313 (ite c!954437 (Context!9347 lt!2231446) lt!2231445))) (h!68490 s!2326)))))

(declare-fun bm!401836 () Bool)

(declare-fun get!21398 (Option!15400) tuple2!64976)

(assert (=> bm!401836 (= call!401819 (get!21398 (ite c!954429 lt!2231475 lt!2231416)))))

(declare-fun bm!401837 () Bool)

(declare-fun call!401790 () Unit!154968)

(assert (=> bm!401837 (= call!401790 call!401904)))

(declare-fun call!401845 () Bool)

(declare-fun lt!2231308 () Option!15400)

(declare-fun bm!401838 () Bool)

(assert (=> bm!401838 (= call!401845 (isDefined!12103 (ite c!954427 lt!2231308 call!401797)))))

(declare-fun bm!401839 () Bool)

(assert (=> bm!401839 (= call!401752 call!401810)))

(declare-fun bm!401840 () Bool)

(assert (=> bm!401840 (= call!401882 call!401791)))

(declare-fun bm!401841 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!256 (Regex!15289 Regex!15289 List!62166 List!62166) Unit!154968)

(assert (=> bm!401841 (= call!401853 (lemmaTwoRegexMatchThenConcatMatchesConcatString!256 (ite c!954429 (reg!15618 (regOne!31090 r!7292)) lt!2231373) (ite c!954429 lt!2231349 (regTwo!31090 r!7292)) (ite c!954429 (_1!35791 lt!2231420) lt!2231395) (ite c!954429 lt!2231361 (_2!35791 lt!2231315))))))

(declare-fun b!5461663 () Bool)

(declare-fun e!3381998 () Bool)

(assert (=> b!5461663 (= e!3381998 e!3382013)))

(declare-fun res!2326378 () Bool)

(assert (=> b!5461663 (=> res!2326378 e!3382013)))

(declare-fun zipperDepth!190 (List!62168) Int)

(assert (=> b!5461663 (= res!2326378 (< (zipperDepth!190 zl!343) (zipperDepth!190 lt!2231382)))))

(assert (=> b!5461663 (= lt!2231382 (Cons!62044 lt!2231369 Nil!62044))))

(declare-fun e!3381996 () Bool)

(assert (=> b!5461664 e!3381996))

(declare-fun res!2326372 () Bool)

(assert (=> b!5461664 (=> (not res!2326372) (not e!3381996))))

(assert (=> b!5461664 (= res!2326372 call!401829)))

(declare-fun lt!2231404 () Unit!154968)

(assert (=> b!5461664 (= lt!2231404 call!401874)))

(assert (=> b!5461664 (= call!401792 call!401846)))

(declare-fun lt!2231455 () Unit!154968)

(assert (=> b!5461664 (= lt!2231455 call!401881)))

(assert (=> b!5461664 (= call!401933 call!401862)))

(declare-fun lt!2231298 () Unit!154968)

(declare-fun call!401921 () Unit!154968)

(assert (=> b!5461664 (= lt!2231298 call!401921)))

(declare-fun call!401931 () Bool)

(assert (=> b!5461664 (= call!401845 call!401931)))

(declare-fun lt!2231385 () Unit!154968)

(declare-fun call!401751 () Unit!154968)

(assert (=> b!5461664 (= lt!2231385 call!401751)))

(declare-fun call!401890 () Bool)

(assert (=> b!5461664 (= call!401788 call!401890)))

(declare-fun lt!2231431 () Unit!154968)

(assert (=> b!5461664 (= lt!2231431 call!401790)))

(declare-fun call!401918 () Bool)

(assert (=> b!5461664 (= call!401806 call!401918)))

(declare-fun lt!2231366 () Unit!154968)

(declare-fun call!401877 () Unit!154968)

(assert (=> b!5461664 (= lt!2231366 call!401877)))

(declare-fun lt!2231397 () Regex!15289)

(assert (=> b!5461664 (= lt!2231397 call!401917)))

(declare-fun call!401800 () (InoxSet Context!9346))

(assert (=> b!5461664 (= call!401800 call!401804)))

(declare-fun lt!2231381 () Unit!154968)

(assert (=> b!5461664 (= lt!2231381 call!401944)))

(assert (=> b!5461664 (= lt!2231314 (store ((as const (Array Context!9346 Bool)) false) lt!2231369 true))))

(declare-fun e!3382025 () Unit!154968)

(declare-fun Unit!154979 () Unit!154968)

(assert (=> b!5461664 (= e!3382025 Unit!154979)))

(declare-fun bm!401842 () Bool)

(declare-fun call!401811 () Bool)

(assert (=> bm!401842 (= call!401799 call!401811)))

(declare-fun b!5461665 () Bool)

(assert (=> b!5461665 (= e!3381991 call!401925)))

(declare-fun b!5461666 () Bool)

(declare-fun tp!1502289 () Bool)

(assert (=> b!5461666 (= e!3382015 tp!1502289)))

(declare-fun bm!401843 () Bool)

(assert (=> bm!401843 (= call!401905 call!401791)))

(declare-fun bm!401844 () Bool)

(assert (=> bm!401844 (= call!401818 call!401844)))

(declare-fun bm!401845 () Bool)

(assert (=> bm!401845 (= call!401893 call!401768)))

(declare-fun bm!401846 () Bool)

(assert (=> bm!401846 (= call!401824 call!401938)))

(declare-fun bm!401847 () Bool)

(assert (=> bm!401847 (= call!401770 call!401910)))

(declare-fun b!5461667 () Bool)

(declare-fun Unit!154980 () Unit!154968)

(assert (=> b!5461667 (= e!3381988 Unit!154980)))

(declare-fun b!5461668 () Bool)

(assert (=> b!5461668 (= e!3381987 call!401920)))

(declare-fun bm!401848 () Bool)

(assert (=> bm!401848 (= call!401808 (lemmaTwoRegexMatchThenConcatMatchesConcatString!256 (ite c!954429 lt!2231373 (ite c!954427 (reg!15618 (regOne!31090 r!7292)) lt!2231373)) (ite c!954429 (regTwo!31090 r!7292) (ite c!954427 lt!2231349 (regTwo!31090 r!7292))) (ite c!954429 (_2!35791 lt!2231420) (ite c!954427 (_1!35791 lt!2231336) Nil!62042)) (ite c!954429 (_2!35791 lt!2231432) (ite c!954427 (_2!35791 lt!2231336) s!2326))))))

(declare-fun bm!401849 () Bool)

(declare-fun call!401942 () Bool)

(assert (=> bm!401849 (= call!401942 call!401823)))

(declare-fun bm!401850 () Bool)

(declare-fun call!401891 () Bool)

(assert (=> bm!401850 (= call!401891 call!401913)))

(declare-fun bm!401851 () Bool)

(assert (=> bm!401851 (= call!401926 (findConcatSeparation!1814 (ite (or c!954426 c!954437) (regOne!31090 (regOne!31090 r!7292)) (ite c!954429 lt!2231373 lt!2231408)) (ite c!954426 lt!2231462 (ite c!954437 lt!2231471 (regTwo!31090 r!7292))) Nil!62042 s!2326 s!2326))))

(declare-fun bm!401852 () Bool)

(assert (=> bm!401852 (= call!401938 (flatMap!1016 (ite c!954434 lt!2231376 (ite c!954426 lt!2231282 lt!2231478)) (ite c!954434 lambda!289673 (ite c!954426 lambda!289673 lambda!289673))))))

(declare-fun bm!401853 () Bool)

(assert (=> bm!401853 (= call!401911 call!401817)))

(declare-fun bm!401854 () Bool)

(assert (=> bm!401854 (= call!401747 call!401809)))

(declare-fun bm!401855 () Bool)

(assert (=> bm!401855 (= call!401915 call!401894)))

(declare-fun bm!401856 () Bool)

(assert (=> bm!401856 (= call!401826 call!401948)))

(declare-fun b!5461669 () Bool)

(declare-fun tp!1502291 () Bool)

(assert (=> b!5461669 (= e!3382016 (and tp_is_empty!39831 tp!1502291))))

(declare-fun bm!401857 () Bool)

(declare-fun lemmaConcatAssociativity!2866 (List!62166 List!62166 List!62166) Unit!154968)

(assert (=> bm!401857 (= call!401780 (lemmaConcatAssociativity!2866 (ite c!954429 (_1!35791 lt!2231420) (_1!35791 lt!2231425)) (ite c!954429 (_2!35791 lt!2231420) (_2!35791 lt!2231425)) (ite c!954429 (_2!35791 lt!2231432) (_2!35791 lt!2231315))))))

(declare-fun bm!401858 () Bool)

(assert (=> bm!401858 (= call!401842 call!401801)))

(declare-fun bm!401859 () Bool)

(assert (=> bm!401859 (= call!401771 (derivationStepZipperUp!661 (ite c!954434 lt!2231329 lt!2231445) (h!68490 s!2326)))))

(declare-fun bm!401860 () Bool)

(assert (=> bm!401860 (= call!401777 call!401876)))

(declare-fun bm!401861 () Bool)

(assert (=> bm!401861 (= call!401801 call!401926)))

(declare-fun bm!401862 () Bool)

(assert (=> bm!401862 (= call!401908 (matchZipper!1533 (ite c!954434 lt!2231338 ((_ map or) lt!2231358 lt!2231320)) (t!375395 s!2326)))))

(declare-fun bm!401863 () Bool)

(assert (=> bm!401863 (= call!401909 (flatMap!1016 (ite c!954434 lt!2231441 (ite c!954426 lt!2231278 (ite c!954430 lt!2231274 lt!2231345))) (ite c!954434 lambda!289673 (ite c!954426 lambda!289673 (ite c!954430 lambda!289673 lambda!289673)))))))

(declare-fun b!5461670 () Bool)

(assert (=> b!5461670 (= e!3382019 e!3381990)))

(assert (=> b!5461670 (= c!954434 ((_ is Union!15289) (regOne!31090 r!7292)))))

(declare-fun bm!401864 () Bool)

(assert (=> bm!401864 (= call!401896 call!401952)))

(declare-fun bm!401865 () Bool)

(assert (=> bm!401865 (= call!401774 (matchR!7474 (ite c!954429 lt!2231349 (ite c!954427 lt!2231408 lt!2231397)) (ite c!954429 lt!2231361 (ite c!954427 (_1!35791 lt!2231315) s!2326))))))

(declare-fun bm!401866 () Bool)

(declare-fun c!954432 () Bool)

(assert (=> bm!401866 (= call!401802 (matchR!7474 (ite c!954434 lt!2231375 (ite c!954426 (Concat!24134 (Concat!24134 (regOne!31090 (regOne!31090 r!7292)) (regTwo!31090 (regOne!31090 r!7292))) lt!2231362) (ite c!954437 lt!2231353 (ite c!954430 (ite c!954429 (ite c!954433 lt!2231277 lt!2231373) (reg!15618 (regOne!31090 r!7292))) (ite c!954432 lt!2231322 (regOne!31090 r!7292)))))) (ite (or c!954434 c!954426 c!954437) s!2326 (ite c!954430 (ite c!954429 (ite c!954433 s!2326 (_1!35791 lt!2231432)) (_1!35791 lt!2231336)) s!2326))))))

(declare-fun bm!401867 () Bool)

(assert (=> bm!401867 (= call!401761 call!401872)))

(declare-fun bm!401868 () Bool)

(assert (=> bm!401868 (= call!401870 (matchR!7474 (ite c!954431 lt!2231442 (ite c!954434 lt!2231419 (ite c!954426 (Concat!24134 (regOne!31090 (regOne!31090 r!7292)) (Concat!24134 (regTwo!31090 (regOne!31090 r!7292)) lt!2231362)) (ite c!954437 lt!2231471 (ite c!954427 lt!2231349 lt!2231373))))) (ite c!954431 (t!375395 s!2326) (ite (or c!954434 c!954426 c!954437) s!2326 (ite c!954427 (_2!35791 lt!2231336) Nil!62042)))))))

(declare-fun bm!401869 () Bool)

(assert (=> bm!401869 (= call!401754 (lemmaFlatMapOnSingletonSet!548 (ite c!954426 lt!2231278 (ite c!954437 lt!2231352 (ite c!954430 lt!2231274 lt!2231345))) (ite c!954426 lt!2231313 (ite c!954437 lt!2231306 (ite c!954430 lt!2231317 lt!2231369))) (ite c!954426 lambda!289673 (ite c!954437 lambda!289673 (ite c!954430 lambda!289673 lambda!289673)))))))

(declare-fun bm!401870 () Bool)

(declare-fun call!401939 () Bool)

(assert (=> bm!401870 (= call!401922 call!401939)))

(declare-fun bm!401871 () Bool)

(assert (=> bm!401871 (= call!401916 call!401895)))

(declare-fun bm!401872 () Bool)

(assert (=> bm!401872 (= call!401929 call!401942)))

(declare-fun bm!401873 () Bool)

(assert (=> bm!401873 (= call!401900 (get!21398 (ite c!954429 lt!2231319 lt!2231305)))))

(declare-fun bm!401874 () Bool)

(assert (=> bm!401874 (= call!401914 call!401765)))

(declare-fun bm!401875 () Bool)

(assert (=> bm!401875 (= call!401759 call!401775)))

(declare-fun bm!401876 () Bool)

(assert (=> bm!401876 (= call!401952 (theoremZipperRegexEquiv!569 (ite c!954434 lt!2231376 (ite c!954426 lt!2231278 (ite c!954429 lt!2231478 (ite c!954427 lt!2231274 lt!2231314)))) (ite c!954434 (Cons!62044 lt!2231447 Nil!62044) (ite c!954426 (Cons!62044 lt!2231313 Nil!62044) (ite c!954429 (Cons!62044 lt!2231445 Nil!62044) (ite c!954427 (Cons!62044 lt!2231317 Nil!62044) (Cons!62044 lt!2231369 Nil!62044))))) (ite c!954434 lt!2231375 (ite c!954426 lt!2231462 (ite c!954429 lt!2231349 (ite c!954427 (reg!15618 (regOne!31090 r!7292)) lt!2231397)))) (ite (or c!954434 c!954426) s!2326 (ite c!954429 lt!2231361 (ite c!954427 (_1!35791 lt!2231336) s!2326)))))))

(declare-fun bm!401877 () Bool)

(assert (=> bm!401877 (= call!401902 (lemmaFindConcatSeparationEquivalentToExists!1578 (ite (or c!954426 c!954437) (regOne!31090 (regOne!31090 r!7292)) (reg!15618 (regOne!31090 r!7292))) (ite c!954426 lt!2231462 (ite c!954437 lt!2231471 lt!2231373)) (ite (or c!954426 c!954437) s!2326 (ite c!954429 (_1!35791 lt!2231432) (ite c!954427 (_1!35791 lt!2231315) Nil!62042)))))))

(declare-fun b!5461671 () Bool)

(declare-fun res!2326362 () Bool)

(assert (=> b!5461671 (=> res!2326362 e!3382021)))

(declare-fun isEmpty!34032 (List!62168) Bool)

(assert (=> b!5461671 (= res!2326362 (not (isEmpty!34032 (t!375397 zl!343))))))

(declare-fun b!5461672 () Bool)

(declare-fun e!3382003 () Bool)

(assert (=> b!5461672 (= e!3382003 (= lt!2231342 call!401935))))

(declare-fun bm!401878 () Bool)

(assert (=> bm!401878 (= call!401928 call!401886)))

(declare-fun bm!401879 () Bool)

(assert (=> bm!401879 (= call!401765 (matchZipper!1533 (ite c!954434 lt!2231441 (ite (or c!954426 c!954437) z!1189 (ite c!954430 (ite c!954429 lt!2231274 lt!2231448) ((_ map or) lt!2231448 lt!2231338)))) (ite (or c!954434 c!954426 c!954437) s!2326 (ite (and c!954430 c!954429) (_1!35791 lt!2231420) (t!375395 s!2326)))))))

(declare-fun bm!401880 () Bool)

(assert (=> bm!401880 (= call!401860 call!401781)))

(declare-fun bm!401881 () Bool)

(assert (=> bm!401881 (= call!401768 (generalisedConcat!958 (ite c!954434 lt!2231289 (ite c!954426 lt!2231391 lt!2231446))))))

(declare-fun bm!401882 () Bool)

(assert (=> bm!401882 (= call!401927 (lemmaFlatMapOnSingletonSet!548 (ite c!954434 lt!2231376 (ite c!954429 lt!2231371 lt!2231314)) (ite c!954434 lt!2231447 lt!2231369) (ite c!954434 lambda!289673 (ite c!954429 lambda!289673 lambda!289673))))))

(declare-fun b!5461673 () Bool)

(declare-fun Unit!154981 () Unit!154968)

(assert (=> b!5461673 (= e!3382018 Unit!154981)))

(declare-fun lt!2231304 () Unit!154968)

(assert (=> b!5461673 (= lt!2231304 (lemmaZipperConcatMatchesSameAsBothZippers!526 lt!2231454 lt!2231338 (t!375395 s!2326)))))

(declare-fun res!2326358 () Bool)

(assert (=> b!5461673 (= res!2326358 call!401885)))

(assert (=> b!5461673 (=> res!2326358 e!3382014)))

(assert (=> b!5461673 (= (matchZipper!1533 ((_ map or) lt!2231454 lt!2231338) (t!375395 s!2326)) e!3382014)))

(declare-fun bm!401883 () Bool)

(assert (=> bm!401883 (= call!401813 call!401805)))

(declare-fun b!5461674 () Bool)

(declare-fun res!2326369 () Bool)

(assert (=> b!5461674 (=> (not res!2326369) (not e!3381999))))

(declare-fun unfocusZipper!1031 (List!62168) Regex!15289)

(assert (=> b!5461674 (= res!2326369 (= r!7292 (unfocusZipper!1031 zl!343)))))

(declare-fun b!5461675 () Bool)

(declare-fun tp!1502285 () Bool)

(assert (=> b!5461675 (= e!3382005 tp!1502285)))

(declare-fun bm!401884 () Bool)

(assert (=> bm!401884 (= call!401920 (nullable!5458 (ite c!954434 (regTwo!31091 (regOne!31090 r!7292)) (regOne!31090 (regOne!31090 r!7292)))))))

(declare-fun b!5461676 () Bool)

(declare-fun Unit!154982 () Unit!154968)

(assert (=> b!5461676 (= e!3382018 Unit!154982)))

(declare-fun bm!401885 () Bool)

(assert (=> bm!401885 (= call!401861 call!401807)))

(declare-fun bm!401886 () Bool)

(assert (=> bm!401886 (= call!401832 (Exists!2470 (ite c!954426 lambda!289676 (ite c!954437 lambda!289680 (ite c!954429 lambda!289683 (ite c!954427 lambda!289694 lambda!289695))))))))

(declare-fun bm!401887 () Bool)

(assert (=> bm!401887 (= call!401949 (lemmaConcatPreservesForall!256 lt!2231300 lt!2231294 (ite c!954429 lambda!289687 lambda!289689)))))

(declare-fun bm!401888 () Bool)

(assert (=> bm!401888 (= call!401864 call!401814)))

(declare-fun b!5461677 () Bool)

(assert (=> b!5461677 (= e!3381997 call!401885)))

(declare-fun bm!401889 () Bool)

(assert (=> bm!401889 (= call!401953 (matchRSpec!2392 (ite c!954434 lt!2231375 (ite c!954426 lt!2231337 (ite c!954427 lt!2231287 lt!2231373))) (ite (or c!954434 c!954426 c!954427) s!2326 Nil!62042)))))

(declare-fun bm!401890 () Bool)

(declare-fun call!401767 () Bool)

(assert (=> bm!401890 (= call!401811 call!401767)))

(declare-fun bm!401891 () Bool)

(assert (=> bm!401891 (= call!401760 call!401857)))

(declare-fun bm!401892 () Bool)

(assert (=> bm!401892 (= call!401939 call!401935)))

(declare-fun bm!401893 () Bool)

(assert (=> bm!401893 (= call!401850 call!401832)))

(declare-fun bm!401894 () Bool)

(assert (=> bm!401894 (= call!401901 call!401749)))

(declare-fun bm!401895 () Bool)

(assert (=> bm!401895 (= call!401877 call!401937)))

(declare-fun bm!401896 () Bool)

(assert (=> bm!401896 (= call!401921 call!401903)))

(declare-fun b!5461678 () Bool)

(declare-fun lt!2231468 () Bool)

(assert (=> b!5461678 (not lt!2231468)))

(declare-fun lt!2231356 () Unit!154968)

(assert (=> b!5461678 (= lt!2231356 e!3382000)))

(declare-fun c!954438 () Bool)

(assert (=> b!5461678 (= c!954438 lt!2231468)))

(assert (=> b!5461678 (= lt!2231468 call!401916)))

(declare-fun Unit!154983 () Unit!154968)

(assert (=> b!5461678 (= e!3382002 Unit!154983)))

(declare-fun bm!401897 () Bool)

(assert (=> bm!401897 (= call!401923 call!401784)))

(declare-fun bm!401898 () Bool)

(assert (=> bm!401898 (= call!401844 (derivationStepZipperUp!661 (ite c!954434 lt!2231447 (ite c!954426 lt!2231313 lt!2231317)) (h!68490 s!2326)))))

(declare-fun bm!401899 () Bool)

(assert (=> bm!401899 (= call!401805 (matchRSpec!2392 (ite c!954434 lt!2231419 (ite c!954426 lt!2231462 (ite c!954437 lt!2231353 (ite c!954430 (ite c!954429 lt!2231373 lt!2231408) (ite c!954432 (regOne!31090 r!7292) (regTwo!31090 r!7292)))))) (ite (or c!954434 c!954426 c!954437) s!2326 (ite c!954430 (ite c!954429 (_1!35791 lt!2231432) (_1!35791 lt!2231315)) s!2326))))))

(declare-fun bm!401900 () Bool)

(assert (=> bm!401900 (= call!401800 (flatMap!1016 (ite c!954429 lt!2231371 lt!2231314) (ite c!954429 lambda!289673 lambda!289673)))))

(declare-fun lt!2231334 () Context!9346)

(declare-fun bm!401901 () Bool)

(assert (=> bm!401901 (= call!401748 (derivationStepZipperUp!661 (ite c!954426 lt!2231443 (ite c!954430 lt!2231334 lt!2231369)) (h!68490 s!2326)))))

(declare-fun b!5461679 () Bool)

(assert (=> b!5461679 (= e!3382009 call!401908)))

(declare-fun b!5461680 () Bool)

(declare-fun Unit!154984 () Unit!154968)

(assert (=> b!5461680 (= e!3381995 Unit!154984)))

(assert (=> b!5461680 (= lt!2231371 (store ((as const (Array Context!9346 Bool)) false) lt!2231369 true))))

(declare-fun lt!2231394 () Unit!154968)

(assert (=> b!5461680 (= lt!2231394 call!401944)))

(assert (=> b!5461680 (= call!401800 call!401804)))

(assert (=> b!5461680 (= lt!2231277 call!401917)))

(declare-fun lt!2231424 () Unit!154968)

(assert (=> b!5461680 (= lt!2231424 call!401858)))

(declare-fun res!2326357 () Bool)

(assert (=> b!5461680 (= res!2326357 (= call!401830 call!401799))))

(declare-fun e!3381992 () Bool)

(assert (=> b!5461680 (=> (not res!2326357) (not e!3381992))))

(assert (=> b!5461680 e!3381992))

(declare-fun bm!401902 () Bool)

(assert (=> bm!401902 (= call!401836 call!401950)))

(declare-fun bm!401903 () Bool)

(declare-fun call!401839 () Unit!154968)

(assert (=> bm!401903 (= call!401839 call!401887)))

(declare-fun b!5461681 () Bool)

(declare-fun Unit!154985 () Unit!154968)

(assert (=> b!5461681 (= e!3382011 Unit!154985)))

(assert (=> b!5461681 (= lt!2231373 (regOne!31090 r!7292))))

(assert (=> b!5461681 (= lt!2231294 (Cons!62043 lt!2231373 (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(assert (=> b!5461681 (= lt!2231334 (Context!9347 (Cons!62043 (reg!15618 (regOne!31090 r!7292)) lt!2231294)))))

(assert (=> b!5461681 (= lt!2231311 (store ((as const (Array Context!9346 Bool)) false) lt!2231334 true))))

(declare-fun lt!2231423 () (InoxSet Context!9346))

(declare-fun call!401835 () (InoxSet Context!9346))

(assert (=> b!5461681 (= lt!2231423 call!401835)))

(declare-fun lt!2231325 () Unit!154968)

(assert (=> b!5461681 (= lt!2231325 call!401892)))

(assert (=> b!5461681 (= call!401880 call!401835)))

(assert (=> b!5461681 (= lt!2231445 (Context!9347 lt!2231294))))

(declare-fun lt!2231357 () (InoxSet Context!9346))

(declare-fun call!401879 () (InoxSet Context!9346))

(assert (=> b!5461681 (= lt!2231357 call!401879)))

(assert (=> b!5461681 (= lt!2231349 (Concat!24134 lt!2231373 (regTwo!31090 r!7292)))))

(assert (=> b!5461681 (= lt!2231387 (Concat!24134 (reg!15618 (regOne!31090 r!7292)) lt!2231349))))

(assert (=> b!5461681 (= lt!2231300 (Cons!62043 (reg!15618 (regOne!31090 r!7292)) Nil!62043))))

(assert (=> b!5461681 (= lt!2231317 (Context!9347 lt!2231300))))

(assert (=> b!5461681 (= lt!2231274 (store ((as const (Array Context!9346 Bool)) false) lt!2231317 true))))

(assert (=> b!5461681 (= lt!2231478 (store ((as const (Array Context!9346 Bool)) false) lt!2231445 true))))

(declare-fun lt!2231472 () (InoxSet Context!9346))

(assert (=> b!5461681 (= lt!2231472 call!401818)))

(declare-fun lt!2231402 () (InoxSet Context!9346))

(assert (=> b!5461681 (= lt!2231402 call!401771)))

(declare-fun lt!2231464 () Unit!154968)

(assert (=> b!5461681 (= lt!2231464 call!401794)))

(assert (=> b!5461681 (= call!401954 call!401818)))

(declare-fun lt!2231383 () Unit!154968)

(assert (=> b!5461681 (= lt!2231383 call!401778)))

(assert (=> b!5461681 (= call!401824 call!401771)))

(declare-fun lt!2231307 () Unit!154968)

(assert (=> b!5461681 (= lt!2231307 call!401856)))

(assert (=> b!5461681 (= lt!2231413 call!401789)))

(declare-fun res!2326377 () Bool)

(assert (=> b!5461681 (= res!2326377 (= lt!2231413 call!401857))))

(assert (=> b!5461681 (=> (not res!2326377) (not e!3381993))))

(assert (=> b!5461681 e!3381993))

(assert (=> b!5461681 (= c!954429 lt!2231342)))

(declare-fun lt!2231437 () Unit!154968)

(assert (=> b!5461681 (= lt!2231437 e!3382002)))

(assert (=> b!5461681 (= lt!2231342 call!401834)))

(declare-fun bm!401904 () Bool)

(assert (=> bm!401904 (= call!401913 (Exists!2470 (ite c!954426 lambda!289674 (ite c!954437 lambda!289678 (ite c!954429 lambda!289682 lambda!289692)))))))

(declare-fun b!5461682 () Bool)

(declare-fun Unit!154986 () Unit!154968)

(assert (=> b!5461682 (= e!3382001 Unit!154986)))

(declare-fun b!5461683 () Bool)

(declare-fun e!3382008 () Bool)

(assert (=> b!5461683 (= e!3382008 (= lt!2231342 call!401833))))

(declare-fun bm!401905 () Bool)

(assert (=> bm!401905 (= call!401756 call!401953)))

(declare-fun bm!401906 () Bool)

(assert (=> bm!401906 (= call!401888 (matchR!7474 (ite c!954434 lt!2231409 (ite c!954426 lt!2231462 (ite c!954437 (Concat!24134 (regOne!31090 (regOne!31090 r!7292)) (Concat!24134 (regTwo!31090 (regOne!31090 r!7292)) lt!2231403)) (ite c!954430 lt!2231387 (regTwo!31090 r!7292))))) s!2326))))

(declare-fun bm!401907 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!44 ((InoxSet Context!9346) List!62166) Unit!154968)

(assert (=> bm!401907 (= call!401764 (lemmaEmptyZipperMatchesNothing!44 lt!2231448 (t!375395 s!2326)))))

(declare-fun bm!401908 () Bool)

(assert (=> bm!401908 (= call!401848 call!401878)))

(declare-fun bm!401909 () Bool)

(assert (=> bm!401909 (= call!401924 call!401754)))

(declare-fun bm!401910 () Bool)

(assert (=> bm!401910 (= call!401776 call!401891)))

(declare-fun lt!2231386 () List!62167)

(declare-fun bm!401911 () Bool)

(assert (=> bm!401911 (= call!401783 (generalisedConcat!958 (ite c!954426 lt!2231473 (ite c!954437 lt!2231386 (t!375396 (exprs!5173 (h!68492 zl!343)))))))))

(declare-fun bm!401912 () Bool)

(assert (=> bm!401912 (= call!401866 (Exists!2470 (ite c!954426 lambda!289677 (ite c!954429 lambda!289684 lambda!289693))))))

(declare-fun bm!401913 () Bool)

(assert (=> bm!401913 (= call!401931 call!401753)))

(declare-fun bm!401914 () Bool)

(assert (=> bm!401914 (= call!401918 call!401905)))

(declare-fun bm!401915 () Bool)

(assert (=> bm!401915 (= call!401827 (lemmaZipperConcatMatchesSameAsBothZippers!526 (ite c!954434 lt!2231290 lt!2231358) (ite c!954434 lt!2231338 lt!2231367) (t!375395 s!2326)))))

(declare-fun b!5461684 () Bool)

(declare-fun res!2326383 () Bool)

(assert (=> b!5461684 (=> res!2326383 e!3382006)))

(declare-fun isEmpty!34033 (List!62167) Bool)

(assert (=> b!5461684 (= res!2326383 (isEmpty!34033 (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun b!5461685 () Bool)

(declare-fun tp!1502287 () Bool)

(declare-fun tp!1502293 () Bool)

(assert (=> b!5461685 (= e!3382015 (and tp!1502287 tp!1502293))))

(declare-fun bm!401916 () Bool)

(declare-fun call!401821 () List!62167)

(assert (=> bm!401916 (= call!401784 (matchZipper!1533 (ite c!954434 z!1189 (ite c!954426 lt!2231367 (ite c!954437 lt!2231352 (ite c!954429 (store ((as const (Array Context!9346 Bool)) false) (Context!9347 call!401821) true) z!1189)))) (ite c!954434 s!2326 (ite c!954426 (t!375395 s!2326) (ite c!954437 s!2326 (ite c!954429 lt!2231399 s!2326))))))))

(declare-fun b!5461686 () Bool)

(assert (=> b!5461686 (= e!3381994 lt!2231413)))

(declare-fun bm!401917 () Bool)

(assert (=> bm!401917 (= call!401936 call!401942)))

(declare-fun bm!401918 () Bool)

(assert (=> bm!401918 (= call!401767 call!401901)))

(declare-fun bm!401919 () Bool)

(assert (=> bm!401919 (= call!401833 call!401932)))

(declare-fun bm!401920 () Bool)

(assert (=> bm!401920 (= call!401886 (++!13657 (ite c!954429 lt!2231379 (ite c!954427 (_1!35791 lt!2231425) Nil!62042)) (ite c!954429 (_2!35791 lt!2231432) (ite c!954427 (_2!35791 lt!2231425) s!2326))))))

(declare-fun b!5461687 () Bool)

(assert (=> b!5461687 (= e!3382004 e!3381998)))

(declare-fun res!2326373 () Bool)

(assert (=> b!5461687 (=> res!2326373 e!3381998)))

(declare-fun regexDepth!205 (Regex!15289) Int)

(assert (=> b!5461687 (= res!2326373 (< (regexDepth!205 r!7292) (regexDepth!205 lt!2231351)))))

(assert (=> b!5461687 (= lt!2231351 (generalisedConcat!958 (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun b!5461688 () Bool)

(assert (=> b!5461688 (= e!3382012 (matchZipper!1533 lt!2231338 (t!375395 s!2326)))))

(declare-fun bm!401921 () Bool)

(assert (=> bm!401921 (= call!401947 call!401838)))

(declare-fun bm!401922 () Bool)

(assert (=> bm!401922 (= call!401948 (generalisedConcat!958 (ite c!954431 (t!375396 (exprs!5173 (h!68492 zl!343))) (ite c!954434 lt!2231476 (t!375396 (exprs!5173 (h!68492 zl!343)))))))))

(declare-fun bm!401923 () Bool)

(assert (=> bm!401923 (= call!401885 (matchZipper!1533 (ite c!954434 lt!2231454 (ite c!954426 lt!2231278 (ite c!954430 z!1189 lt!2231338))) (ite c!954434 (t!375395 s!2326) (ite (or c!954426 c!954430) s!2326 (t!375395 s!2326)))))))

(declare-fun bm!401924 () Bool)

(assert (=> bm!401924 (= call!401858 call!401839)))

(declare-fun bm!401925 () Bool)

(assert (=> bm!401925 (= call!401779 call!401755)))

(declare-fun b!5461689 () Bool)

(assert (=> b!5461689 e!3382008))

(declare-fun res!2326364 () Bool)

(assert (=> b!5461689 (=> (not res!2326364) (not e!3382008))))

(assert (=> b!5461689 (= res!2326364 (= call!401929 call!401767))))

(declare-fun lt!2231323 () Unit!154968)

(assert (=> b!5461689 (= lt!2231323 call!401887)))

(assert (=> b!5461689 (= lt!2231322 call!401912)))

(assert (=> b!5461689 (= call!401939 call!401834)))

(declare-fun lt!2231363 () Unit!154968)

(assert (=> b!5461689 (= lt!2231363 call!401759)))

(assert (=> b!5461689 (= call!401954 call!401835)))

(declare-fun lt!2231470 () Unit!154968)

(assert (=> b!5461689 (= lt!2231470 call!401794)))

(assert (=> b!5461689 (= lt!2231345 (store ((as const (Array Context!9346 Bool)) false) lt!2231369 true))))

(assert (=> b!5461689 (= call!401772 call!401760)))

(declare-fun lt!2231421 () Unit!154968)

(assert (=> b!5461689 (= lt!2231421 call!401849)))

(assert (=> b!5461689 (= call!401878 call!401812)))

(declare-fun lt!2231457 () Unit!154968)

(assert (=> b!5461689 (= lt!2231457 call!401816)))

(assert (=> b!5461689 (not call!401882)))

(declare-fun lt!2231390 () Unit!154968)

(assert (=> b!5461689 (= lt!2231390 call!401764)))

(declare-fun Unit!154987 () Unit!154968)

(assert (=> b!5461689 (= e!3382020 Unit!154987)))

(declare-fun b!5461690 () Bool)

(assert (=> b!5461690 (= e!3382000 e!3382025)))

(assert (=> b!5461690 (= c!954427 call!401922)))

(declare-fun lt!2231452 () List!62167)

(declare-fun bm!401926 () Bool)

(assert (=> bm!401926 (= call!401910 (matchZipper!1533 (ite c!954434 lt!2231290 (ite c!954426 lt!2231282 (ite c!954430 (ite c!954429 (ite c!954433 z!1189 lt!2231478) (store ((as const (Array Context!9346 Bool)) false) (Context!9347 lt!2231452) true)) z!1189))) (ite c!954434 (t!375395 s!2326) (ite c!954426 s!2326 (ite c!954430 (ite c!954429 (ite c!954433 s!2326 lt!2231361) lt!2231456) s!2326)))))))

(declare-fun setElem!35731 () Context!9346)

(declare-fun setNonEmpty!35731 () Bool)

(declare-fun tp!1502286 () Bool)

(declare-fun e!3381989 () Bool)

(assert (=> setNonEmpty!35731 (= setRes!35731 (and tp!1502286 (inv!81469 setElem!35731) e!3381989))))

(declare-fun setRest!35731 () (InoxSet Context!9346))

(assert (=> setNonEmpty!35731 (= z!1189 ((_ map or) (store ((as const (Array Context!9346 Bool)) false) setElem!35731 true) setRest!35731))))

(declare-fun bm!401927 () Bool)

(assert (=> bm!401927 (= call!401778 (lemmaFlatMapOnSingletonSet!548 (ite c!954434 lt!2231441 lt!2231478) (ite c!954434 lt!2231329 lt!2231445) (ite c!954434 lambda!289673 lambda!289673)))))

(declare-fun bm!401928 () Bool)

(assert (=> bm!401928 (= call!401937 call!401896)))

(declare-fun b!5461691 () Bool)

(assert (=> b!5461691 (= e!3382011 e!3382020)))

(assert (=> b!5461691 (= c!954432 ((_ is EmptyExpr!15289) (regOne!31090 r!7292)))))

(declare-fun bm!401929 () Bool)

(assert (=> bm!401929 (= call!401852 call!401854)))

(declare-fun bm!401930 () Bool)

(assert (=> bm!401930 (= call!401787 (Exists!2470 (ite c!954426 lambda!289674 (ite c!954437 lambda!289680 (ite c!954429 lambda!289684 (ite c!954427 lambda!289691 lambda!289695))))))))

(declare-fun bm!401931 () Bool)

(assert (=> bm!401931 (= call!401769 call!401932)))

(declare-fun b!5461692 () Bool)

(assert (=> b!5461692 (= e!3381992 call!401840)))

(declare-fun b!5461693 () Bool)

(assert (=> b!5461693 (= e!3381996 false)))

(declare-fun bm!401932 () Bool)

(assert (=> bm!401932 (= call!401835 call!401748)))

(declare-fun bm!401933 () Bool)

(assert (=> bm!401933 (= call!401838 call!401888)))

(assert (=> b!5461694 e!3382003))

(declare-fun res!2326355 () Bool)

(assert (=> b!5461694 (=> (not res!2326355) (not e!3382003))))

(assert (=> b!5461694 (= res!2326355 (= call!401822 call!401947))))

(declare-fun lt!2231324 () Unit!154968)

(assert (=> b!5461694 (= lt!2231324 call!401859)))

(assert (=> b!5461694 (= call!401850 call!401883)))

(declare-fun lt!2231433 () Unit!154968)

(assert (=> b!5461694 (= lt!2231433 call!401875)))

(assert (=> b!5461694 (= call!401869 call!401758)))

(declare-fun lt!2231341 () Unit!154968)

(assert (=> b!5461694 (= lt!2231341 call!401854)))

(assert (=> b!5461694 (= lt!2231403 call!401867)))

(assert (=> b!5461694 (= call!401943 call!401884)))

(declare-fun lt!2231412 () Unit!154968)

(assert (=> b!5461694 (= lt!2231412 call!401911)))

(assert (=> b!5461694 (= call!401891 call!401755)))

(declare-fun lt!2231360 () Unit!154968)

(assert (=> b!5461694 (= lt!2231360 call!401898)))

(assert (=> b!5461694 (= call!401807 call!401860)))

(declare-fun lt!2231368 () Unit!154968)

(assert (=> b!5461694 (= lt!2231368 call!401951)))

(assert (=> b!5461694 (= lt!2231471 call!401893)))

(declare-fun lt!2231429 () Bool)

(assert (=> b!5461694 (= lt!2231429 call!401843)))

(declare-fun lt!2231460 () Unit!154968)

(assert (=> b!5461694 (= lt!2231460 call!401950)))

(assert (=> b!5461694 (= lt!2231429 call!401895)))

(assert (=> b!5461694 (= lt!2231429 call!401823)))

(declare-fun lt!2231281 () Unit!154968)

(assert (=> b!5461694 (= lt!2231281 call!401855)))

(assert (=> b!5461694 (= lt!2231353 call!401863)))

(assert (=> b!5461694 (= call!401880 call!401793)))

(declare-fun lt!2231450 () Unit!154968)

(assert (=> b!5461694 (= lt!2231450 call!401924)))

(declare-fun lt!2231284 () (InoxSet Context!9346))

(assert (=> b!5461694 (= lt!2231284 call!401793)))

(assert (=> b!5461694 (= lt!2231352 (store ((as const (Array Context!9346 Bool)) false) lt!2231306 true))))

(assert (=> b!5461694 (= lt!2231306 (Context!9347 lt!2231386))))

(assert (=> b!5461694 (= lt!2231386 (Cons!62043 (regOne!31090 (regOne!31090 r!7292)) lt!2231446))))

(declare-fun lt!2231428 () (InoxSet Context!9346))

(assert (=> b!5461694 (= lt!2231428 call!401879)))

(assert (=> b!5461694 (= lt!2231446 (Cons!62043 (regTwo!31090 (regOne!31090 r!7292)) (t!375396 (exprs!5173 (h!68492 zl!343)))))))

(declare-fun Unit!154988 () Unit!154968)

(assert (=> b!5461694 (= e!3381986 Unit!154988)))

(declare-fun bm!401934 () Bool)

(assert (=> bm!401934 (= call!401892 (lemmaFlatMapOnSingletonSet!548 (ite c!954426 lt!2231282 lt!2231311) (ite c!954426 lt!2231443 lt!2231334) (ite c!954426 lambda!289673 lambda!289673)))))

(declare-fun bm!401935 () Bool)

(assert (=> bm!401935 (= call!401868 call!401758)))

(declare-fun bm!401936 () Bool)

(assert (=> bm!401936 (= call!401925 (matchZipper!1533 (ite c!954434 ((_ map or) lt!2231290 lt!2231338) lt!2231320) (t!375395 s!2326)))))

(declare-fun bm!401937 () Bool)

(assert (=> bm!401937 (= call!401773 (matchRSpec!2392 (ite c!954434 lt!2231364 (ite c!954437 lt!2231471 (ite c!954430 lt!2231387 (ite c!954432 (regTwo!31090 r!7292) (regOne!31090 r!7292))))) s!2326))))

(declare-fun bm!401938 () Bool)

(assert (=> bm!401938 (= call!401871 (lemmaExistCutMatchRandMatchRSpecEquivalent!1124 (ite (or c!954426 c!954437) (regTwo!31090 (regOne!31090 r!7292)) (ite c!954429 (reg!15618 (regOne!31090 r!7292)) (ite c!954427 lt!2231408 (reg!15618 (regOne!31090 r!7292))))) (ite c!954426 lt!2231362 (ite c!954437 lt!2231403 (ite c!954429 lt!2231373 (ite c!954427 (regTwo!31090 r!7292) lt!2231373)))) (ite (or c!954426 c!954437) s!2326 (ite c!954429 (_1!35791 lt!2231432) (ite c!954427 s!2326 Nil!62042)))))))

(declare-fun bm!401939 () Bool)

(assert (=> bm!401939 (= call!401762 call!401752)))

(assert (=> b!5461695 e!3382026))

(declare-fun res!2326371 () Bool)

(assert (=> b!5461695 (=> (not res!2326371) (not e!3382026))))

(assert (=> b!5461695 (= res!2326371 call!401848)))

(declare-fun lt!2231340 () Unit!154968)

(assert (=> b!5461695 (= lt!2231340 call!401853)))

(assert (=> b!5461695 call!401763))

(declare-fun lt!2231293 () Unit!154968)

(assert (=> b!5461695 (= lt!2231293 call!401795)))

(assert (=> b!5461695 (= lt!2231344 call!401906)))

(assert (=> b!5461695 (= lt!2231344 call!401828)))

(assert (=> b!5461695 (= lt!2231359 call!401831)))

(assert (=> b!5461695 (= lt!2231395 call!401928)))

(declare-fun lt!2231417 () Unit!154968)

(assert (=> b!5461695 (= lt!2231417 call!401780)))

(assert (=> b!5461695 (= lt!2231425 call!401900)))

(assert (=> b!5461695 (= call!401933 call!401931)))

(declare-fun lt!2231401 () Unit!154968)

(assert (=> b!5461695 (= lt!2231401 call!401881)))

(assert (=> b!5461695 (= call!401846 call!401841)))

(declare-fun lt!2231427 () Unit!154968)

(assert (=> b!5461695 (= lt!2231427 call!401782)))

(assert (=> b!5461695 (= call!401861 call!401776)))

(assert (=> b!5461695 (= lt!2231305 call!401797)))

(declare-fun lt!2231438 () Unit!154968)

(assert (=> b!5461695 (= lt!2231438 call!401751)))

(assert (=> b!5461695 (= call!401806 call!401915)))

(declare-fun lt!2231389 () Unit!154968)

(assert (=> b!5461695 (= lt!2231389 call!401790)))

(assert (=> b!5461695 (= lt!2231315 call!401819)))

(assert (=> b!5461695 (= call!401873 call!401792)))

(declare-fun lt!2231355 () Unit!154968)

(assert (=> b!5461695 (= lt!2231355 call!401921)))

(assert (=> b!5461695 (= call!401934 call!401862)))

(assert (=> b!5461695 (= lt!2231416 call!401842)))

(declare-fun lt!2231444 () Unit!154968)

(assert (=> b!5461695 (= lt!2231444 call!401852)))

(assert (=> b!5461695 call!401890))

(declare-fun lt!2231377 () Unit!154968)

(assert (=> b!5461695 (= lt!2231377 call!401899)))

(assert (=> b!5461695 call!401829))

(assert (=> b!5461695 (= lt!2231287 (Concat!24134 lt!2231408 (regTwo!31090 r!7292)))))

(assert (=> b!5461695 (= lt!2231408 (Concat!24134 (reg!15618 (regOne!31090 r!7292)) lt!2231373))))

(declare-fun lt!2231458 () Unit!154968)

(assert (=> b!5461695 (= lt!2231458 call!401859)))

(assert (=> b!5461695 e!3382007))

(declare-fun res!2326353 () Bool)

(assert (=> b!5461695 (=> (not res!2326353) (not e!3382007))))

(assert (=> b!5461695 (= res!2326353 call!401897)))

(declare-fun lt!2231461 () Unit!154968)

(assert (=> b!5461695 (= lt!2231461 call!401874)))

(assert (=> b!5461695 (= call!401788 call!401811)))

(declare-fun lt!2231406 () Unit!154968)

(assert (=> b!5461695 (= lt!2231406 call!401839)))

(assert (=> b!5461695 (= call!401936 call!401918)))

(declare-fun lt!2231354 () Unit!154968)

(assert (=> b!5461695 (= lt!2231354 call!401877)))

(assert (=> b!5461695 call!401769))

(assert (=> b!5461695 (= lt!2231456 (++!13657 (_1!35791 lt!2231336) (_2!35791 lt!2231336)))))

(assert (=> b!5461695 (= lt!2231452 call!401821)))

(declare-fun lt!2231316 () Unit!154968)

(assert (=> b!5461695 (= lt!2231316 call!401949)))

(declare-fun lt!2231396 () Unit!154968)

(assert (=> b!5461695 (= lt!2231396 call!401865)))

(assert (=> b!5461695 (= lt!2231336 (get!21398 lt!2231308))))

(assert (=> b!5461695 call!401845))

(declare-fun findConcatSeparationZippers!88 ((InoxSet Context!9346) (InoxSet Context!9346) List!62166 List!62166 List!62166) Option!15400)

(assert (=> b!5461695 (= lt!2231308 (findConcatSeparationZippers!88 lt!2231274 lt!2231478 Nil!62042 s!2326 s!2326))))

(declare-fun lt!2231434 () Unit!154968)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!88 ((InoxSet Context!9346) Context!9346 List!62166) Unit!154968)

(assert (=> b!5461695 (= lt!2231434 (lemmaConcatZipperMatchesStringThenFindConcatDefined!88 lt!2231274 lt!2231445 s!2326))))

(declare-fun lambda!289688 () Int)

(declare-fun map!14260 ((InoxSet Context!9346) Int) (InoxSet Context!9346))

(assert (=> b!5461695 (= (map!14260 lt!2231274 lambda!289688) (store ((as const (Array Context!9346 Bool)) false) (Context!9347 call!401821) true))))

(declare-fun lt!2231449 () Unit!154968)

(assert (=> b!5461695 (= lt!2231449 call!401786)))

(declare-fun lt!2231348 () Unit!154968)

(declare-fun lemmaMapOnSingletonSet!90 ((InoxSet Context!9346) Context!9346 Int) Unit!154968)

(assert (=> b!5461695 (= lt!2231348 (lemmaMapOnSingletonSet!90 lt!2231274 lt!2231317 lambda!289688))))

(declare-fun Unit!154989 () Unit!154968)

(assert (=> b!5461695 (= e!3382025 Unit!154989)))

(declare-fun bm!401940 () Bool)

(assert (=> bm!401940 (= call!401837 (mainMatchTheorem!2392 (ite c!954434 lt!2231419 (ite c!954426 lt!2231462 (ite c!954437 lt!2231471 (ite c!954430 lt!2231387 (regOne!31090 r!7292))))) s!2326))))

(declare-fun b!5461696 () Bool)

(assert (=> b!5461696 (= e!3381999 (not e!3382021))))

(declare-fun res!2326375 () Bool)

(assert (=> b!5461696 (=> res!2326375 e!3382021)))

(assert (=> b!5461696 (= res!2326375 (not ((_ is Cons!62044) zl!343)))))

(assert (=> b!5461696 (= lt!2231342 lt!2231302)))

(assert (=> b!5461696 (= lt!2231302 (matchRSpec!2392 r!7292 s!2326))))

(assert (=> b!5461696 (= lt!2231342 (matchR!7474 r!7292 s!2326))))

(declare-fun lt!2231370 () Unit!154968)

(assert (=> b!5461696 (= lt!2231370 (mainMatchTheorem!2392 r!7292 s!2326))))

(declare-fun bm!401941 () Bool)

(assert (=> bm!401941 (= call!401772 call!401789)))

(declare-fun b!5461697 () Bool)

(declare-fun tp!1502292 () Bool)

(assert (=> b!5461697 (= e!3381989 tp!1502292)))

(declare-fun bm!401942 () Bool)

(assert (=> bm!401942 (= call!401890 call!401756)))

(declare-fun b!5461698 () Bool)

(declare-fun res!2326365 () Bool)

(assert (=> b!5461698 (=> res!2326365 e!3382021)))

(declare-fun generalisedUnion!1218 (List!62167) Regex!15289)

(declare-fun unfocusZipperList!731 (List!62168) List!62167)

(assert (=> b!5461698 (= res!2326365 (not (= r!7292 (generalisedUnion!1218 (unfocusZipperList!731 zl!343)))))))

(declare-fun bm!401943 () Bool)

(declare-fun ++!13658 (List!62167 List!62167) List!62167)

(assert (=> bm!401943 (= call!401821 (++!13658 lt!2231300 lt!2231294))))

(declare-fun bm!401944 () Bool)

(assert (=> bm!401944 (= call!401751 call!401798)))

(declare-fun bm!401945 () Bool)

(assert (=> bm!401945 (= call!401919 call!401757)))

(declare-fun bm!401946 () Bool)

(assert (=> bm!401946 (= call!401763 (matchR!7474 (ite c!954429 (reg!15618 (regOne!31090 r!7292)) lt!2231373) (ite c!954429 (_1!35791 lt!2231420) lt!2231395)))))

(declare-fun bm!401947 () Bool)

(assert (=> bm!401947 (= call!401903 call!401875)))

(declare-fun bm!401948 () Bool)

(assert (=> bm!401948 (= call!401879 call!401761)))

(declare-fun bm!401949 () Bool)

(assert (=> bm!401949 (= call!401898 call!401825)))

(assert (= (and start!571970 res!2326376) b!5461641))

(assert (= (and b!5461641 res!2326363) b!5461674))

(assert (= (and b!5461674 res!2326369) b!5461696))

(assert (= (and b!5461696 (not res!2326375)) b!5461671))

(assert (= (and b!5461671 (not res!2326362)) b!5461637))

(assert (= (and b!5461637 (not res!2326370)) b!5461651))

(assert (= (and b!5461651 (not res!2326354)) b!5461698))

(assert (= (and b!5461698 (not res!2326365)) b!5461660))

(assert (= (and b!5461660 (not res!2326379)) b!5461646))

(assert (= (and b!5461646 (not res!2326359)) b!5461684))

(assert (= (and b!5461684 (not res!2326383)) b!5461639))

(assert (= (and b!5461639 c!954435) b!5461656))

(assert (= (and b!5461639 (not c!954435)) b!5461667))

(assert (= (and b!5461656 (not res!2326360)) b!5461688))

(assert (= (and b!5461639 c!954431) b!5461648))

(assert (= (and b!5461639 (not c!954431)) b!5461670))

(assert (= (and b!5461670 c!954434) b!5461644))

(assert (= (and b!5461670 (not c!954434)) b!5461634))

(assert (= (and b!5461644 (not res!2326381)) b!5461677))

(assert (= (and b!5461644 c!954428) b!5461659))

(assert (= (and b!5461644 (not c!954428)) b!5461682))

(assert (= (and b!5461659 (not res!2326356)) b!5461679))

(assert (= (and b!5461644 c!954436) b!5461673))

(assert (= (and b!5461644 (not c!954436)) b!5461676))

(assert (= (and b!5461673 (not res!2326358)) b!5461647))

(assert (= (and b!5461644 res!2326382) b!5461649))

(assert (= (and b!5461634 res!2326361) b!5461668))

(assert (= (and b!5461634 c!954426) b!5461653))

(assert (= (and b!5461634 (not c!954426)) b!5461654))

(assert (= (and b!5461653 (not res!2326384)) b!5461665))

(assert (= (and b!5461653 (not res!2326374)) b!5461636))

(assert (= (and b!5461653 res!2326366) b!5461652))

(assert (= (and b!5461654 c!954437) b!5461694))

(assert (= (and b!5461654 (not c!954437)) b!5461645))

(assert (= (and b!5461694 res!2326355) b!5461672))

(assert (= (and b!5461645 c!954430) b!5461681))

(assert (= (and b!5461645 (not c!954430)) b!5461691))

(assert (= (and b!5461681 res!2326377) b!5461635))

(assert (= (and b!5461681 c!954429) b!5461650))

(assert (= (and b!5461681 (not c!954429)) b!5461678))

(assert (= (and b!5461650 c!954433) b!5461680))

(assert (= (and b!5461650 (not c!954433)) b!5461640))

(assert (= (and b!5461680 res!2326357) b!5461692))

(assert (= (and b!5461640 res!2326380) b!5461686))

(assert (= (or b!5461680 b!5461640) bm!401804))

(assert (= (or b!5461680 b!5461640) bm!401924))

(assert (= (or b!5461692 b!5461640) bm!401778))

(assert (= (or b!5461680 b!5461640) bm!401842))

(assert (= (and b!5461678 c!954438) b!5461690))

(assert (= (and b!5461678 (not c!954438)) b!5461633))

(assert (= (and b!5461690 c!954427) b!5461695))

(assert (= (and b!5461690 (not c!954427)) b!5461664))

(assert (= (and b!5461695 res!2326353) b!5461658))

(assert (= (and b!5461695 res!2326371) b!5461642))

(assert (= (and b!5461664 res!2326372) b!5461693))

(assert (= (or b!5461695 b!5461664) bm!401825))

(assert (= (or b!5461695 b!5461664) bm!401837))

(assert (= (or b!5461695 b!5461664) bm!401755))

(assert (= (or b!5461695 b!5461664) bm!401792))

(assert (= (or b!5461695 b!5461664) bm!401895))

(assert (= (or b!5461695 b!5461664) bm!401757))

(assert (= (or b!5461695 b!5461664) bm!401914))

(assert (= (or b!5461695 b!5461664) bm!401944))

(assert (= (or b!5461695 b!5461664) bm!401796))

(assert (= (or b!5461695 b!5461664) bm!401753))

(assert (= (or b!5461695 b!5461664) bm!401777))

(assert (= (or b!5461695 b!5461664) bm!401942))

(assert (= (or b!5461695 b!5461664) bm!401913))

(assert (= (or b!5461695 b!5461664) bm!401742))

(assert (= (or b!5461695 b!5461664) bm!401896))

(assert (= (or b!5461695 b!5461664) bm!401771))

(assert (= (or b!5461695 b!5461664) bm!401878))

(assert (= (or b!5461695 b!5461664) bm!401817))

(assert (= (or b!5461695 b!5461664) bm!401838))

(assert (= (or b!5461650 b!5461695) bm!401789))

(assert (= (or b!5461640 b!5461695) bm!401855))

(assert (= (or bm!401778 b!5461695) bm!401931))

(assert (= (or b!5461640 bm!401777) bm!401865))

(assert (= (or b!5461640 b!5461695) bm!401943))

(assert (= (or b!5461640 b!5461695) bm!401885))

(assert (= (or b!5461650 b!5461695) bm!401929))

(assert (= (or b!5461640 b!5461695) bm!401800))

(assert (= (or b!5461650 bm!401913) bm!401784))

(assert (= (or b!5461640 bm!401878) bm!401920))

(assert (= (or bm!401842 b!5461695) bm!401890))

(assert (= (or b!5461640 bm!401753) bm!401848))

(assert (= (or bm!401924 b!5461695) bm!401903))

(assert (= (or b!5461650 bm!401914) bm!401843))

(assert (= (or b!5461650 bm!401771) bm!401860))

(assert (= (or b!5461640 bm!401757) bm!401935))

(assert (= (or b!5461680 b!5461664) bm!401756))

(assert (= (or b!5461650 b!5461695) bm!401910))

(assert (= (or b!5461680 b!5461664) bm!401900))

(assert (= (or b!5461640 bm!401792) bm!401830))

(assert (= (or b!5461640 bm!401796) bm!401888))

(assert (= (or b!5461640 b!5461695) bm!401857))

(assert (= (or b!5461640 b!5461695) bm!401873))

(assert (= (or b!5461640 bm!401825) bm!401758))

(assert (= (or b!5461640 b!5461695) bm!401761))

(assert (= (or b!5461640 b!5461695) bm!401908))

(assert (= (or b!5461640 b!5461695) bm!401946))

(assert (= (or b!5461650 b!5461695) bm!401836))

(assert (= (or b!5461640 bm!401755) bm!401925))

(assert (= (or b!5461640 b!5461695) bm!401764))

(assert (= (or b!5461640 b!5461695) bm!401841))

(assert (= (or b!5461640 b!5461695) bm!401788))

(assert (= (or b!5461640 b!5461695) bm!401763))

(assert (= (or b!5461680 b!5461664) bm!401831))

(assert (= (or b!5461640 b!5461695) bm!401887))

(assert (= (or b!5461680 b!5461664) bm!401827))

(assert (= (or b!5461640 b!5461695) bm!401769))

(assert (= (or bm!401804 b!5461695) bm!401917))

(assert (= (or b!5461640 b!5461695) bm!401798))

(assert (= (or b!5461640 b!5461695) bm!401780))

(assert (= (or b!5461640 b!5461690) bm!401870))

(assert (= (or b!5461640 bm!401944) bm!401806))

(assert (= (or b!5461640 b!5461695) bm!401834))

(assert (= (or b!5461640 bm!401895) bm!401928))

(assert (= (or b!5461640 bm!401896) bm!401947))

(assert (= (or b!5461650 b!5461695) bm!401858))

(assert (= (or b!5461640 b!5461695) bm!401768))

(assert (= (or b!5461650 b!5461695) bm!401813))

(assert (= (or b!5461640 b!5461678) bm!401871))

(assert (= (and b!5461691 c!954432) b!5461689))

(assert (= (and b!5461691 (not c!954432)) b!5461661))

(assert (= (and b!5461689 res!2326364) b!5461683))

(assert (= (and b!5461661 res!2326368) b!5461638))

(assert (= (or b!5461689 b!5461661) bm!401941))

(assert (= (or b!5461689 b!5461661) bm!401891))

(assert (= (or b!5461689 b!5461661) bm!401824))

(assert (= (or b!5461683 b!5461638) bm!401919))

(assert (= (or b!5461689 b!5461661) bm!401907))

(assert (= (or b!5461689 b!5461661) bm!401840))

(assert (= (or b!5461689 b!5461661) bm!401872))

(assert (= (or b!5461689 b!5461661) bm!401767))

(assert (= (or b!5461689 b!5461661) bm!401781))

(assert (= (or bm!401917 bm!401872) bm!401849))

(assert (= (or bm!401843 bm!401840) bm!401815))

(assert (= (or b!5461681 b!5461689) bm!401932))

(assert (= (or bm!401855 bm!401767) bm!401760))

(assert (= (or b!5461681 bm!401891) bm!401801))

(assert (= (or bm!401831 b!5461689) bm!401785))

(assert (= (or bm!401780 bm!401824) bm!401902))

(assert (= (or bm!401903 b!5461689) bm!401812))

(assert (= (or bm!401931 bm!401919) bm!401828))

(assert (= (or bm!401870 b!5461689) bm!401892))

(assert (= (or b!5461681 b!5461689) bm!401747))

(assert (= (or b!5461681 b!5461689) bm!401754))

(assert (= (or bm!401908 b!5461689) bm!401790))

(assert (= (or b!5461681 bm!401941) bm!401814))

(assert (= (or bm!401890 b!5461689) bm!401918))

(assert (= (or b!5461681 bm!401781) bm!401805))

(assert (= (or b!5461681 b!5461689) bm!401793))

(assert (= (or b!5461694 bm!401858) bm!401861))

(assert (= (or b!5461694 bm!401801) bm!401776))

(assert (= (or b!5461694 bm!401812) bm!401782))

(assert (= (or b!5461694 bm!401790) bm!401749))

(assert (= (or b!5461694 bm!401910) bm!401850))

(assert (= (or b!5461694 b!5461681) bm!401948))

(assert (= (or b!5461694 bm!401758) bm!401880))

(assert (= (or b!5461672 bm!401892) bm!401810))

(assert (= (or b!5461694 bm!401760) bm!401816))

(assert (= (or b!5461694 bm!401784) bm!401893))

(assert (= (or b!5461694 bm!401805) bm!401853))

(assert (= (or b!5461694 bm!401947) bm!401807))

(assert (= (or b!5461694 bm!401925) bm!401759))

(assert (= (or b!5461694 bm!401813) bm!401949))

(assert (= (or b!5461694 bm!401871) bm!401797))

(assert (= (or b!5461694 bm!401756) bm!401751))

(assert (= (or b!5461694 bm!401902) bm!401794))

(assert (= (or b!5461694 bm!401849) bm!401743))

(assert (= (or b!5461694 b!5461681) bm!401786))

(assert (= (or b!5461694 bm!401929) bm!401766))

(assert (= (or b!5461694 bm!401888) bm!401752))

(assert (= (or b!5461694 bm!401747) bm!401909))

(assert (= (or b!5461694 bm!401806) bm!401802))

(assert (= (or b!5461694 bm!401814) bm!401921))

(assert (= (or b!5461694 b!5461695) bm!401819))

(assert (= (or b!5461694 bm!401742) bm!401772))

(assert (= (or b!5461694 bm!401785) bm!401765))

(assert (= (or b!5461694 bm!401935) bm!401744))

(assert (= (or b!5461694 bm!401763) bm!401821))

(assert (= (or b!5461694 bm!401885) bm!401775))

(assert (= (or b!5461694 bm!401789) bm!401826))

(assert (= (or b!5461653 bm!401772) bm!401945))

(assert (= (or b!5461653 bm!401850) bm!401904))

(assert (= (or b!5461653 b!5461689) bm!401875))

(assert (= (or b!5461653 bm!401893) bm!401886))

(assert (= (or b!5461653 bm!401880) bm!401773))

(assert (= (or b!5461653 bm!401909) bm!401869))

(assert (= (or b!5461653 bm!401764) bm!401912))

(assert (= (or b!5461653 b!5461694) bm!401762))

(assert (= (or b!5461653 bm!401749) bm!401854))

(assert (= (or b!5461653 bm!401765) bm!401911))

(assert (= (or b!5461653 bm!401861) bm!401851))

(assert (= (or b!5461653 bm!401949) bm!401808))

(assert (= (or b!5461653 b!5461681) bm!401934))

(assert (= (or b!5461653 bm!401921) bm!401933))

(assert (= (or b!5461653 bm!401744) bm!401930))

(assert (= (or b!5461653 bm!401853) bm!401750))

(assert (= (or b!5461653 bm!401918) bm!401894))

(assert (= (or b!5461653 bm!401793) bm!401770))

(assert (= (or b!5461653 b!5461681) bm!401844))

(assert (= (or b!5461653 bm!401754) bm!401823))

(assert (= (or b!5461653 bm!401816) bm!401883))

(assert (= (or b!5461653 b!5461694) bm!401845))

(assert (= (or b!5461653 bm!401752) bm!401791))

(assert (= (or b!5461653 bm!401743) bm!401811))

(assert (= (or b!5461653 bm!401942) bm!401905))

(assert (= (or b!5461653 bm!401932) bm!401901))

(assert (= (or b!5461653 b!5461681) bm!401846))

(assert (= (or b!5461653 bm!401802) bm!401877))

(assert (= (or b!5461653 bm!401948) bm!401867))

(assert (= (or b!5461653 bm!401828) bm!401847))

(assert (= (or b!5461653 bm!401928) bm!401864))

(assert (= (or b!5461653 bm!401794) bm!401829))

(assert (= (or b!5461653 bm!401807) bm!401938))

(assert (= (or b!5461653 bm!401815) bm!401939))

(assert (= (or b!5461653 bm!401819) bm!401809))

(assert (= (or b!5461636 bm!401797) bm!401897))

(assert (= (or b!5461653 bm!401766) bm!401783))

(assert (= (or b!5461653 bm!401782) bm!401774))

(assert (= (or b!5461652 bm!401810) bm!401874))

(assert (= (or b!5461653 bm!401860) bm!401803))

(assert (= (or b!5461653 bm!401775) bm!401745))

(assert (= (or b!5461653 bm!401826) bm!401832))

(assert (= (or b!5461644 bm!401847) bm!401926))

(assert (= (or b!5461644 bm!401846) bm!401852))

(assert (= (or b!5461644 bm!401844) bm!401898))

(assert (= (or b!5461644 bm!401875) bm!401787))

(assert (= (or b!5461644 b!5461681) bm!401859))

(assert (= (or b!5461644 bm!401829) bm!401818))

(assert (= (or b!5461644 bm!401867) bm!401835))

(assert (= (or b!5461644 bm!401837) bm!401820))

(assert (= (or b!5461644 b!5461681) bm!401927))

(assert (= (or b!5461644 bm!401811) bm!401866))

(assert (= (or b!5461644 bm!401864) bm!401876))

(assert (= (or b!5461644 bm!401774) bm!401746))

(assert (= (or b!5461644 bm!401905) bm!401889))

(assert (= (or b!5461644 bm!401939) bm!401839))

(assert (= (or b!5461644 b!5461653) bm!401795))

(assert (= (or b!5461644 bm!401945) bm!401799))

(assert (= (or b!5461673 b!5461677 bm!401770) bm!401923))

(assert (= (or b!5461644 bm!401854) bm!401779))

(assert (= (or b!5461644 bm!401894) bm!401822))

(assert (= (or b!5461647 b!5461679 b!5461653) bm!401862))

(assert (= (or b!5461659 b!5461653) bm!401915))

(assert (= (or b!5461644 bm!401883) bm!401899))

(assert (= (or b!5461644 b!5461668) bm!401884))

(assert (= (or b!5461644 bm!401827) bm!401882))

(assert (= (or b!5461644 bm!401762) bm!401856))

(assert (= (or b!5461649 bm!401897) bm!401916))

(assert (= (or b!5461644 bm!401776) bm!401937))

(assert (= (or b!5461644 bm!401750) bm!401940))

(assert (= (or b!5461644 bm!401933) bm!401906))

(assert (= (or b!5461644 bm!401874) bm!401879))

(assert (= (or b!5461659 b!5461665) bm!401936))

(assert (= (or b!5461644 bm!401823) bm!401863))

(assert (= (or b!5461644 bm!401845) bm!401881))

(assert (= (or b!5461648 bm!401799) bm!401868))

(assert (= (or b!5461648 bm!401856) bm!401922))

(assert (= (or b!5461648 bm!401746) bm!401833))

(assert (= (or b!5461648 bm!401839) bm!401748))

(assert (= (and b!5461639 (not res!2326367)) b!5461687))

(assert (= (and b!5461687 (not res!2326373)) b!5461663))

(assert (= (and b!5461663 (not res!2326378)) b!5461643))

(assert (= (and start!571970 ((_ is ElementMatch!15289) r!7292)) b!5461655))

(assert (= (and start!571970 ((_ is Concat!24134) r!7292)) b!5461685))

(assert (= (and start!571970 ((_ is Star!15289) r!7292)) b!5461666))

(assert (= (and start!571970 ((_ is Union!15289) r!7292)) b!5461662))

(assert (= (and start!571970 condSetEmpty!35731) setIsEmpty!35731))

(assert (= (and start!571970 (not condSetEmpty!35731)) setNonEmpty!35731))

(assert (= setNonEmpty!35731 b!5461697))

(assert (= b!5461657 b!5461675))

(assert (= (and start!571970 ((_ is Cons!62044) zl!343)) b!5461657))

(assert (= (and start!571970 ((_ is Cons!62042) s!2326)) b!5461669))

(declare-fun m!6482920 () Bool)

(assert (=> b!5461653 m!6482920))

(declare-fun m!6482922 () Bool)

(assert (=> b!5461653 m!6482922))

(declare-fun m!6482924 () Bool)

(assert (=> bm!401926 m!6482924))

(declare-fun m!6482926 () Bool)

(assert (=> bm!401926 m!6482926))

(declare-fun m!6482928 () Bool)

(assert (=> bm!401808 m!6482928))

(declare-fun m!6482930 () Bool)

(assert (=> bm!401748 m!6482930))

(declare-fun m!6482932 () Bool)

(assert (=> bm!401923 m!6482932))

(declare-fun m!6482934 () Bool)

(assert (=> start!571970 m!6482934))

(declare-fun m!6482936 () Bool)

(assert (=> bm!401817 m!6482936))

(declare-fun m!6482938 () Bool)

(assert (=> bm!401848 m!6482938))

(declare-fun m!6482940 () Bool)

(assert (=> bm!401887 m!6482940))

(declare-fun m!6482942 () Bool)

(assert (=> bm!401835 m!6482942))

(declare-fun m!6482944 () Bool)

(assert (=> b!5461689 m!6482944))

(declare-fun m!6482946 () Bool)

(assert (=> b!5461681 m!6482946))

(declare-fun m!6482948 () Bool)

(assert (=> b!5461681 m!6482948))

(declare-fun m!6482950 () Bool)

(assert (=> b!5461681 m!6482950))

(declare-fun m!6482952 () Bool)

(assert (=> b!5461646 m!6482952))

(declare-fun m!6482954 () Bool)

(assert (=> b!5461646 m!6482954))

(assert (=> b!5461646 m!6482952))

(declare-fun m!6482956 () Bool)

(assert (=> b!5461646 m!6482956))

(declare-fun m!6482958 () Bool)

(assert (=> b!5461646 m!6482958))

(declare-fun m!6482960 () Bool)

(assert (=> b!5461646 m!6482960))

(assert (=> b!5461646 m!6482956))

(declare-fun m!6482962 () Bool)

(assert (=> b!5461646 m!6482962))

(declare-fun m!6482964 () Bool)

(assert (=> b!5461641 m!6482964))

(declare-fun m!6482966 () Bool)

(assert (=> bm!401821 m!6482966))

(declare-fun m!6482968 () Bool)

(assert (=> bm!401834 m!6482968))

(declare-fun m!6482970 () Bool)

(assert (=> bm!401803 m!6482970))

(declare-fun m!6482972 () Bool)

(assert (=> bm!401889 m!6482972))

(declare-fun m!6482974 () Bool)

(assert (=> bm!401912 m!6482974))

(declare-fun m!6482976 () Bool)

(assert (=> bm!401930 m!6482976))

(declare-fun m!6482978 () Bool)

(assert (=> bm!401869 m!6482978))

(declare-fun m!6482980 () Bool)

(assert (=> bm!401922 m!6482980))

(declare-fun m!6482982 () Bool)

(assert (=> b!5461671 m!6482982))

(declare-fun m!6482984 () Bool)

(assert (=> bm!401906 m!6482984))

(declare-fun m!6482986 () Bool)

(assert (=> bm!401911 m!6482986))

(declare-fun m!6482988 () Bool)

(assert (=> bm!401876 m!6482988))

(declare-fun m!6482990 () Bool)

(assert (=> b!5461695 m!6482990))

(declare-fun m!6482992 () Bool)

(assert (=> b!5461695 m!6482992))

(declare-fun m!6482994 () Bool)

(assert (=> b!5461695 m!6482994))

(declare-fun m!6482996 () Bool)

(assert (=> b!5461695 m!6482996))

(declare-fun m!6482998 () Bool)

(assert (=> b!5461695 m!6482998))

(declare-fun m!6483000 () Bool)

(assert (=> b!5461695 m!6483000))

(declare-fun m!6483002 () Bool)

(assert (=> b!5461695 m!6483002))

(declare-fun m!6483004 () Bool)

(assert (=> b!5461657 m!6483004))

(assert (=> bm!401916 m!6483002))

(declare-fun m!6483006 () Bool)

(assert (=> bm!401916 m!6483006))

(declare-fun m!6483008 () Bool)

(assert (=> bm!401859 m!6483008))

(declare-fun m!6483010 () Bool)

(assert (=> bm!401898 m!6483010))

(declare-fun m!6483012 () Bool)

(assert (=> bm!401787 m!6483012))

(declare-fun m!6483014 () Bool)

(assert (=> bm!401791 m!6483014))

(declare-fun m!6483016 () Bool)

(assert (=> bm!401833 m!6483016))

(declare-fun m!6483018 () Bool)

(assert (=> bm!401786 m!6483018))

(declare-fun m!6483020 () Bool)

(assert (=> bm!401841 m!6483020))

(declare-fun m!6483022 () Bool)

(assert (=> bm!401873 m!6483022))

(declare-fun m!6483024 () Bool)

(assert (=> b!5461684 m!6483024))

(declare-fun m!6483026 () Bool)

(assert (=> bm!401879 m!6483026))

(declare-fun m!6483028 () Bool)

(assert (=> bm!401946 m!6483028))

(declare-fun m!6483030 () Bool)

(assert (=> bm!401886 m!6483030))

(declare-fun m!6483032 () Bool)

(assert (=> bm!401882 m!6483032))

(declare-fun m!6483034 () Bool)

(assert (=> bm!401779 m!6483034))

(declare-fun m!6483036 () Bool)

(assert (=> bm!401838 m!6483036))

(declare-fun m!6483038 () Bool)

(assert (=> bm!401783 m!6483038))

(declare-fun m!6483040 () Bool)

(assert (=> bm!401920 m!6483040))

(declare-fun m!6483042 () Bool)

(assert (=> bm!401745 m!6483042))

(declare-fun m!6483044 () Bool)

(assert (=> b!5461696 m!6483044))

(declare-fun m!6483046 () Bool)

(assert (=> b!5461696 m!6483046))

(declare-fun m!6483048 () Bool)

(assert (=> b!5461696 m!6483048))

(declare-fun m!6483050 () Bool)

(assert (=> bm!401759 m!6483050))

(declare-fun m!6483052 () Bool)

(assert (=> bm!401857 m!6483052))

(declare-fun m!6483054 () Bool)

(assert (=> bm!401795 m!6483054))

(assert (=> b!5461648 m!6482944))

(declare-fun m!6483056 () Bool)

(assert (=> b!5461639 m!6483056))

(declare-fun m!6483058 () Bool)

(assert (=> b!5461639 m!6483058))

(declare-fun m!6483060 () Bool)

(assert (=> b!5461639 m!6483060))

(assert (=> b!5461639 m!6482944))

(declare-fun m!6483062 () Bool)

(assert (=> b!5461639 m!6483062))

(declare-fun m!6483064 () Bool)

(assert (=> b!5461639 m!6483064))

(declare-fun m!6483066 () Bool)

(assert (=> b!5461639 m!6483066))

(declare-fun m!6483068 () Bool)

(assert (=> b!5461639 m!6483068))

(declare-fun m!6483070 () Bool)

(assert (=> b!5461639 m!6483070))

(declare-fun m!6483072 () Bool)

(assert (=> b!5461639 m!6483072))

(declare-fun m!6483074 () Bool)

(assert (=> b!5461639 m!6483074))

(declare-fun m!6483076 () Bool)

(assert (=> bm!401881 m!6483076))

(declare-fun m!6483078 () Bool)

(assert (=> bm!401769 m!6483078))

(declare-fun m!6483080 () Bool)

(assert (=> bm!401820 m!6483080))

(declare-fun m!6483082 () Bool)

(assert (=> bm!401865 m!6483082))

(declare-fun m!6483084 () Bool)

(assert (=> bm!401904 m!6483084))

(declare-fun m!6483086 () Bool)

(assert (=> bm!401943 m!6483086))

(declare-fun m!6483088 () Bool)

(assert (=> b!5461650 m!6483088))

(declare-fun m!6483090 () Bool)

(assert (=> bm!401936 m!6483090))

(declare-fun m!6483092 () Bool)

(assert (=> b!5461637 m!6483092))

(declare-fun m!6483094 () Bool)

(assert (=> b!5461644 m!6483094))

(declare-fun m!6483096 () Bool)

(assert (=> b!5461644 m!6483096))

(declare-fun m!6483098 () Bool)

(assert (=> b!5461644 m!6483098))

(declare-fun m!6483100 () Bool)

(assert (=> b!5461644 m!6483100))

(declare-fun m!6483102 () Bool)

(assert (=> b!5461644 m!6483102))

(declare-fun m!6483104 () Bool)

(assert (=> b!5461644 m!6483104))

(declare-fun m!6483106 () Bool)

(assert (=> bm!401934 m!6483106))

(declare-fun m!6483108 () Bool)

(assert (=> bm!401899 m!6483108))

(declare-fun m!6483110 () Bool)

(assert (=> bm!401852 m!6483110))

(declare-fun m!6483112 () Bool)

(assert (=> bm!401851 m!6483112))

(declare-fun m!6483114 () Bool)

(assert (=> b!5461643 m!6483114))

(declare-fun m!6483116 () Bool)

(assert (=> b!5461643 m!6483116))

(declare-fun m!6483118 () Bool)

(assert (=> b!5461643 m!6483118))

(declare-fun m!6483120 () Bool)

(assert (=> bm!401901 m!6483120))

(declare-fun m!6483122 () Bool)

(assert (=> bm!401830 m!6483122))

(declare-fun m!6483124 () Bool)

(assert (=> b!5461674 m!6483124))

(declare-fun m!6483126 () Bool)

(assert (=> bm!401927 m!6483126))

(declare-fun m!6483128 () Bool)

(assert (=> bm!401862 m!6483128))

(declare-fun m!6483130 () Bool)

(assert (=> bm!401773 m!6483130))

(declare-fun m!6483132 () Bool)

(assert (=> b!5461688 m!6483132))

(declare-fun m!6483134 () Bool)

(assert (=> bm!401868 m!6483134))

(declare-fun m!6483136 () Bool)

(assert (=> bm!401915 m!6483136))

(declare-fun m!6483138 () Bool)

(assert (=> b!5461698 m!6483138))

(assert (=> b!5461698 m!6483138))

(declare-fun m!6483140 () Bool)

(assert (=> b!5461698 m!6483140))

(declare-fun m!6483142 () Bool)

(assert (=> bm!401788 m!6483142))

(declare-fun m!6483144 () Bool)

(assert (=> bm!401822 m!6483144))

(declare-fun m!6483146 () Bool)

(assert (=> b!5461673 m!6483146))

(declare-fun m!6483148 () Bool)

(assert (=> b!5461673 m!6483148))

(declare-fun m!6483150 () Bool)

(assert (=> bm!401900 m!6483150))

(declare-fun m!6483152 () Bool)

(assert (=> b!5461687 m!6483152))

(declare-fun m!6483154 () Bool)

(assert (=> b!5461687 m!6483154))

(declare-fun m!6483156 () Bool)

(assert (=> b!5461687 m!6483156))

(declare-fun m!6483158 () Bool)

(assert (=> b!5461694 m!6483158))

(declare-fun m!6483160 () Bool)

(assert (=> bm!401800 m!6483160))

(declare-fun m!6483162 () Bool)

(assert (=> bm!401938 m!6483162))

(declare-fun m!6483164 () Bool)

(assert (=> bm!401761 m!6483164))

(declare-fun m!6483166 () Bool)

(assert (=> setNonEmpty!35731 m!6483166))

(declare-fun m!6483168 () Bool)

(assert (=> bm!401940 m!6483168))

(declare-fun m!6483170 () Bool)

(assert (=> bm!401937 m!6483170))

(declare-fun m!6483172 () Bool)

(assert (=> bm!401877 m!6483172))

(assert (=> b!5461664 m!6482944))

(declare-fun m!6483174 () Bool)

(assert (=> bm!401866 m!6483174))

(declare-fun m!6483176 () Bool)

(assert (=> bm!401809 m!6483176))

(declare-fun m!6483178 () Bool)

(assert (=> bm!401798 m!6483178))

(declare-fun m!6483180 () Bool)

(assert (=> bm!401832 m!6483180))

(declare-fun m!6483182 () Bool)

(assert (=> bm!401907 m!6483182))

(declare-fun m!6483184 () Bool)

(assert (=> bm!401818 m!6483184))

(declare-fun m!6483186 () Bool)

(assert (=> bm!401863 m!6483186))

(declare-fun m!6483188 () Bool)

(assert (=> b!5461656 m!6483188))

(declare-fun m!6483190 () Bool)

(assert (=> b!5461656 m!6483190))

(declare-fun m!6483192 () Bool)

(assert (=> b!5461656 m!6483192))

(declare-fun m!6483194 () Bool)

(assert (=> bm!401751 m!6483194))

(declare-fun m!6483196 () Bool)

(assert (=> bm!401836 m!6483196))

(assert (=> b!5461680 m!6482944))

(declare-fun m!6483198 () Bool)

(assert (=> b!5461663 m!6483198))

(declare-fun m!6483200 () Bool)

(assert (=> b!5461663 m!6483200))

(assert (=> bm!401768 m!6482940))

(declare-fun m!6483202 () Bool)

(assert (=> bm!401884 m!6483202))

(check-sat (not bm!401852) (not b!5461650) (not bm!401838) (not bm!401884) (not bm!401800) (not b!5461662) (not bm!401916) (not bm!401907) (not b!5461671) (not b!5461695) (not bm!401877) (not b!5461641) (not bm!401798) (not bm!401911) (not bm!401835) (not bm!401881) (not b!5461669) (not bm!401940) (not b!5461687) (not bm!401912) (not bm!401937) tp_is_empty!39831 (not b!5461646) (not bm!401873) (not bm!401803) (not b!5461666) (not bm!401751) (not bm!401830) (not bm!401930) (not bm!401898) (not bm!401879) (not b!5461644) (not bm!401923) (not bm!401943) (not b!5461656) (not bm!401832) (not bm!401927) (not bm!401787) (not bm!401773) (not b!5461698) (not bm!401841) (not b!5461697) (not b!5461675) (not bm!401866) (not bm!401920) (not bm!401759) (not bm!401745) (not bm!401834) (not bm!401926) (not bm!401809) (not bm!401934) (not bm!401788) (not b!5461643) (not bm!401922) (not bm!401876) (not bm!401779) (not bm!401862) (not bm!401900) (not bm!401748) (not bm!401906) (not bm!401833) (not b!5461696) (not bm!401761) (not bm!401769) (not bm!401915) (not setNonEmpty!35731) (not bm!401857) (not b!5461637) (not bm!401946) (not b!5461673) (not bm!401795) (not bm!401786) (not b!5461639) (not bm!401868) (not bm!401820) (not b!5461688) (not bm!401836) (not bm!401899) (not bm!401817) (not start!571970) (not bm!401822) (not b!5461684) (not bm!401886) (not b!5461657) (not bm!401869) (not bm!401863) (not bm!401904) (not bm!401887) (not b!5461663) (not bm!401901) (not bm!401859) (not bm!401851) (not bm!401821) (not bm!401808) (not bm!401783) (not bm!401768) (not bm!401791) (not bm!401848) (not bm!401889) (not bm!401936) (not bm!401882) (not bm!401938) (not bm!401818) (not b!5461685) (not b!5461674) (not bm!401865))
(check-sat)
