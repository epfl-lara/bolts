; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700860 () Bool)

(assert start!700860)

(declare-fun res!2932486 () Bool)

(declare-fun e!4332476 () Bool)

(assert (=> start!700860 (=> (not res!2932486) (not e!4332476))))

(declare-datatypes ((C!37128 0))(
  ( (C!37129 (val!28512 Int)) )
))
(declare-datatypes ((Regex!18427 0))(
  ( (ElementMatch!18427 (c!1340833 C!37128)) (Concat!27272 (regOne!37366 Regex!18427) (regTwo!37366 Regex!18427)) (EmptyExpr!18427) (Star!18427 (reg!18756 Regex!18427)) (EmptyLang!18427) (Union!18427 (regOne!37367 Regex!18427) (regTwo!37367 Regex!18427)) )
))
(declare-datatypes ((List!69965 0))(
  ( (Nil!69841) (Cons!69841 (h!76289 Regex!18427) (t!383996 List!69965)) )
))
(declare-datatypes ((Context!14758 0))(
  ( (Context!14759 (exprs!7879 List!69965)) )
))
(declare-fun c!7037 () Context!14758)

(get-info :version)

(assert (=> start!700860 (= res!2932486 ((_ is Cons!69841) (exprs!7879 c!7037)))))

(assert (=> start!700860 e!4332476))

(declare-fun e!4332477 () Bool)

(declare-fun inv!89089 (Context!14758) Bool)

(assert (=> start!700860 (and (inv!89089 c!7037) e!4332477)))

(declare-fun b!7227384 () Bool)

(declare-fun lt!2572252 () Context!14758)

(assert (=> b!7227384 (= e!4332476 (not (inv!89089 lt!2572252)))))

(declare-fun lt!2572254 () Int)

(declare-fun contextDepth!334 (Context!14758) Int)

(assert (=> b!7227384 (= lt!2572254 (contextDepth!334 lt!2572252))))

(assert (=> b!7227384 (= lt!2572252 (Context!14759 (t!383996 (exprs!7879 c!7037))))))

(declare-fun lt!2572253 () Int)

(declare-fun regexDepth!416 (Regex!18427) Int)

(assert (=> b!7227384 (= lt!2572253 (regexDepth!416 (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227385 () Bool)

(declare-fun tp!2032554 () Bool)

(assert (=> b!7227385 (= e!4332477 tp!2032554)))

(assert (= (and start!700860 res!2932486) b!7227384))

(assert (= start!700860 b!7227385))

(declare-fun m!7896394 () Bool)

(assert (=> start!700860 m!7896394))

(declare-fun m!7896396 () Bool)

(assert (=> b!7227384 m!7896396))

(declare-fun m!7896398 () Bool)

(assert (=> b!7227384 m!7896398))

(declare-fun m!7896400 () Bool)

(assert (=> b!7227384 m!7896400))

(check-sat (not b!7227384) (not start!700860) (not b!7227385))
(check-sat)
(get-model)

(declare-fun d!2244712 () Bool)

(declare-fun lambda!438650 () Int)

(declare-fun forall!17253 (List!69965 Int) Bool)

(assert (=> d!2244712 (= (inv!89089 lt!2572252) (forall!17253 (exprs!7879 lt!2572252) lambda!438650))))

(declare-fun bs!1902056 () Bool)

(assert (= bs!1902056 d!2244712))

(declare-fun m!7896428 () Bool)

(assert (=> bs!1902056 m!7896428))

(assert (=> b!7227384 d!2244712))

(declare-fun bs!1902066 () Bool)

(declare-fun b!7227522 () Bool)

(assert (= bs!1902066 (and b!7227522 d!2244712)))

(declare-fun lambda!438657 () Int)

(assert (=> bs!1902066 (not (= lambda!438657 lambda!438650))))

(assert (=> b!7227522 true))

(declare-fun bs!1902067 () Bool)

(declare-fun b!7227524 () Bool)

(assert (= bs!1902067 (and b!7227524 d!2244712)))

(declare-fun lambda!438658 () Int)

(assert (=> bs!1902067 (not (= lambda!438658 lambda!438650))))

(declare-fun bs!1902068 () Bool)

(assert (= bs!1902068 (and b!7227524 b!7227522)))

(declare-fun lt!2572285 () Int)

(declare-fun lt!2572286 () Int)

(assert (=> bs!1902068 (= (= lt!2572285 lt!2572286) (= lambda!438658 lambda!438657))))

(assert (=> b!7227524 true))

(declare-fun d!2244720 () Bool)

(declare-fun e!4332561 () Bool)

(assert (=> d!2244720 e!4332561))

(declare-fun res!2932519 () Bool)

(assert (=> d!2244720 (=> (not res!2932519) (not e!4332561))))

(assert (=> d!2244720 (= res!2932519 (>= lt!2572285 0))))

(declare-fun e!4332562 () Int)

(assert (=> d!2244720 (= lt!2572285 e!4332562)))

(declare-fun c!1340884 () Bool)

(assert (=> d!2244720 (= c!1340884 ((_ is Cons!69841) (exprs!7879 lt!2572252)))))

(assert (=> d!2244720 (= (contextDepth!334 lt!2572252) lt!2572285)))

(assert (=> b!7227522 (= e!4332562 lt!2572286)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7227522 (= lt!2572286 (maxBigInt!0 (regexDepth!416 (h!76289 (exprs!7879 lt!2572252))) (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))))))

(declare-datatypes ((Unit!163443 0))(
  ( (Unit!163444) )
))
(declare-fun lt!2572288 () Unit!163443)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!150 (List!69965 Int Int) Unit!163443)

(assert (=> b!7227522 (= lt!2572288 (lemmaForallRegexDepthBiggerThanTransitive!150 (t!383996 (exprs!7879 lt!2572252)) lt!2572286 (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))))))

(assert (=> b!7227522 (forall!17253 (t!383996 (exprs!7879 lt!2572252)) lambda!438657)))

(declare-fun lt!2572287 () Unit!163443)

(assert (=> b!7227522 (= lt!2572287 lt!2572288)))

(declare-fun b!7227523 () Bool)

(assert (=> b!7227523 (= e!4332562 0)))

(assert (=> b!7227524 (= e!4332561 (forall!17253 (exprs!7879 lt!2572252) lambda!438658))))

(assert (= (and d!2244720 c!1340884) b!7227522))

(assert (= (and d!2244720 (not c!1340884)) b!7227523))

(assert (= (and d!2244720 res!2932519) b!7227524))

(declare-fun m!7896480 () Bool)

(assert (=> b!7227522 m!7896480))

(assert (=> b!7227522 m!7896480))

(declare-fun m!7896486 () Bool)

(assert (=> b!7227522 m!7896486))

(declare-fun m!7896488 () Bool)

(assert (=> b!7227522 m!7896488))

(assert (=> b!7227522 m!7896486))

(declare-fun m!7896490 () Bool)

(assert (=> b!7227522 m!7896490))

(declare-fun m!7896492 () Bool)

(assert (=> b!7227522 m!7896492))

(assert (=> b!7227522 m!7896486))

(declare-fun m!7896494 () Bool)

(assert (=> b!7227524 m!7896494))

(assert (=> b!7227384 d!2244720))

(declare-fun b!7227615 () Bool)

(declare-fun e!4332618 () Bool)

(declare-fun lt!2572296 () Int)

(declare-fun call!657933 () Int)

(assert (=> b!7227615 (= e!4332618 (> lt!2572296 call!657933))))

(declare-fun bm!657925 () Bool)

(declare-fun call!657934 () Int)

(declare-fun call!657931 () Int)

(assert (=> bm!657925 (= call!657934 call!657931)))

(declare-fun b!7227616 () Bool)

(declare-fun c!1340917 () Bool)

(assert (=> b!7227616 (= c!1340917 ((_ is Union!18427) (h!76289 (exprs!7879 c!7037))))))

(declare-fun e!4332611 () Int)

(declare-fun e!4332612 () Int)

(assert (=> b!7227616 (= e!4332611 e!4332612)))

(declare-fun bm!657926 () Bool)

(declare-fun call!657930 () Int)

(declare-fun call!657932 () Int)

(assert (=> bm!657926 (= call!657930 (maxBigInt!0 call!657932 call!657934))))

(declare-fun b!7227617 () Bool)

(declare-fun e!4332613 () Bool)

(assert (=> b!7227617 (= e!4332613 (= lt!2572296 1))))

(declare-fun d!2244742 () Bool)

(declare-fun e!4332619 () Bool)

(assert (=> d!2244742 e!4332619))

(declare-fun res!2932538 () Bool)

(assert (=> d!2244742 (=> (not res!2932538) (not e!4332619))))

(assert (=> d!2244742 (= res!2932538 (> lt!2572296 0))))

(declare-fun e!4332620 () Int)

(assert (=> d!2244742 (= lt!2572296 e!4332620)))

(declare-fun c!1340919 () Bool)

(assert (=> d!2244742 (= c!1340919 ((_ is ElementMatch!18427) (h!76289 (exprs!7879 c!7037))))))

(assert (=> d!2244742 (= (regexDepth!416 (h!76289 (exprs!7879 c!7037))) lt!2572296)))

(declare-fun b!7227618 () Bool)

(declare-fun e!4332616 () Bool)

(assert (=> b!7227618 (= e!4332619 e!4332616)))

(declare-fun c!1340913 () Bool)

(assert (=> b!7227618 (= c!1340913 ((_ is Union!18427) (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227619 () Bool)

(assert (=> b!7227619 (= e!4332620 e!4332611)))

(declare-fun c!1340916 () Bool)

(assert (=> b!7227619 (= c!1340916 ((_ is Star!18427) (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227620 () Bool)

(declare-fun e!4332617 () Int)

(assert (=> b!7227620 (= e!4332617 (+ 1 call!657930))))

(declare-fun b!7227621 () Bool)

(assert (=> b!7227621 (= e!4332617 1)))

(declare-fun b!7227622 () Bool)

(assert (=> b!7227622 (= e!4332611 (+ 1 call!657931))))

(declare-fun b!7227623 () Bool)

(assert (=> b!7227623 (= e!4332616 e!4332618)))

(declare-fun res!2932537 () Bool)

(declare-fun call!657936 () Int)

(assert (=> b!7227623 (= res!2932537 (> lt!2572296 call!657936))))

(assert (=> b!7227623 (=> (not res!2932537) (not e!4332618))))

(declare-fun b!7227624 () Bool)

(declare-fun e!4332615 () Bool)

(assert (=> b!7227624 (= e!4332616 e!4332615)))

(declare-fun c!1340918 () Bool)

(assert (=> b!7227624 (= c!1340918 ((_ is Concat!27272) (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227625 () Bool)

(assert (=> b!7227625 (= e!4332612 (+ 1 call!657930))))

(declare-fun bm!657927 () Bool)

(assert (=> bm!657927 (= call!657933 (regexDepth!416 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227626 () Bool)

(declare-fun e!4332614 () Bool)

(assert (=> b!7227626 (= e!4332614 (> lt!2572296 call!657933))))

(declare-fun bm!657928 () Bool)

(declare-fun call!657935 () Int)

(assert (=> bm!657928 (= call!657935 call!657936)))

(declare-fun b!7227627 () Bool)

(declare-fun c!1340915 () Bool)

(assert (=> b!7227627 (= c!1340915 ((_ is Star!18427) (h!76289 (exprs!7879 c!7037))))))

(assert (=> b!7227627 (= e!4332615 e!4332613)))

(declare-fun b!7227628 () Bool)

(assert (=> b!7227628 (= e!4332612 e!4332617)))

(declare-fun c!1340914 () Bool)

(assert (=> b!7227628 (= c!1340914 ((_ is Concat!27272) (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227629 () Bool)

(assert (=> b!7227629 (= e!4332613 (> lt!2572296 call!657935))))

(declare-fun b!7227630 () Bool)

(assert (=> b!7227630 (= e!4332620 1)))

(declare-fun bm!657929 () Bool)

(assert (=> bm!657929 (= call!657936 (regexDepth!416 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun bm!657930 () Bool)

(assert (=> bm!657930 (= call!657932 (regexDepth!416 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun bm!657931 () Bool)

(assert (=> bm!657931 (= call!657931 (regexDepth!416 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227631 () Bool)

(declare-fun res!2932536 () Bool)

(assert (=> b!7227631 (=> (not res!2932536) (not e!4332614))))

(assert (=> b!7227631 (= res!2932536 (> lt!2572296 call!657935))))

(assert (=> b!7227631 (= e!4332615 e!4332614)))

(assert (= (and d!2244742 c!1340919) b!7227630))

(assert (= (and d!2244742 (not c!1340919)) b!7227619))

(assert (= (and b!7227619 c!1340916) b!7227622))

(assert (= (and b!7227619 (not c!1340916)) b!7227616))

(assert (= (and b!7227616 c!1340917) b!7227625))

(assert (= (and b!7227616 (not c!1340917)) b!7227628))

(assert (= (and b!7227628 c!1340914) b!7227620))

(assert (= (and b!7227628 (not c!1340914)) b!7227621))

(assert (= (or b!7227625 b!7227620) bm!657930))

(assert (= (or b!7227625 b!7227620) bm!657925))

(assert (= (or b!7227625 b!7227620) bm!657926))

(assert (= (or b!7227622 bm!657925) bm!657931))

(assert (= (and d!2244742 res!2932538) b!7227618))

(assert (= (and b!7227618 c!1340913) b!7227623))

(assert (= (and b!7227618 (not c!1340913)) b!7227624))

(assert (= (and b!7227623 res!2932537) b!7227615))

(assert (= (and b!7227624 c!1340918) b!7227631))

(assert (= (and b!7227624 (not c!1340918)) b!7227627))

(assert (= (and b!7227631 res!2932536) b!7227626))

(assert (= (and b!7227627 c!1340915) b!7227629))

(assert (= (and b!7227627 (not c!1340915)) b!7227617))

(assert (= (or b!7227631 b!7227629) bm!657928))

(assert (= (or b!7227623 bm!657928) bm!657929))

(assert (= (or b!7227615 b!7227626) bm!657927))

(declare-fun m!7896530 () Bool)

(assert (=> bm!657931 m!7896530))

(declare-fun m!7896532 () Bool)

(assert (=> bm!657930 m!7896532))

(declare-fun m!7896534 () Bool)

(assert (=> bm!657929 m!7896534))

(declare-fun m!7896536 () Bool)

(assert (=> bm!657926 m!7896536))

(declare-fun m!7896538 () Bool)

(assert (=> bm!657927 m!7896538))

(assert (=> b!7227384 d!2244742))

(declare-fun bs!1902080 () Bool)

(declare-fun d!2244758 () Bool)

(assert (= bs!1902080 (and d!2244758 d!2244712)))

(declare-fun lambda!438662 () Int)

(assert (=> bs!1902080 (= lambda!438662 lambda!438650)))

(declare-fun bs!1902081 () Bool)

(assert (= bs!1902081 (and d!2244758 b!7227522)))

(assert (=> bs!1902081 (not (= lambda!438662 lambda!438657))))

(declare-fun bs!1902082 () Bool)

(assert (= bs!1902082 (and d!2244758 b!7227524)))

(assert (=> bs!1902082 (not (= lambda!438662 lambda!438658))))

(assert (=> d!2244758 (= (inv!89089 c!7037) (forall!17253 (exprs!7879 c!7037) lambda!438662))))

(declare-fun bs!1902083 () Bool)

(assert (= bs!1902083 d!2244758))

(declare-fun m!7896540 () Bool)

(assert (=> bs!1902083 m!7896540))

(assert (=> start!700860 d!2244758))

(declare-fun b!7227636 () Bool)

(declare-fun e!4332623 () Bool)

(declare-fun tp!2032582 () Bool)

(declare-fun tp!2032583 () Bool)

(assert (=> b!7227636 (= e!4332623 (and tp!2032582 tp!2032583))))

(assert (=> b!7227385 (= tp!2032554 e!4332623)))

(assert (= (and b!7227385 ((_ is Cons!69841) (exprs!7879 c!7037))) b!7227636))

(check-sat (not d!2244758) (not b!7227524) (not d!2244712) (not bm!657929) (not b!7227636) (not b!7227522) (not bm!657926) (not bm!657930) (not bm!657931) (not bm!657927))
(check-sat)
(get-model)

(declare-fun d!2244760 () Bool)

(declare-fun res!2932543 () Bool)

(declare-fun e!4332628 () Bool)

(assert (=> d!2244760 (=> res!2932543 e!4332628)))

(assert (=> d!2244760 (= res!2932543 ((_ is Nil!69841) (exprs!7879 lt!2572252)))))

(assert (=> d!2244760 (= (forall!17253 (exprs!7879 lt!2572252) lambda!438658) e!4332628)))

(declare-fun b!7227641 () Bool)

(declare-fun e!4332629 () Bool)

(assert (=> b!7227641 (= e!4332628 e!4332629)))

(declare-fun res!2932544 () Bool)

(assert (=> b!7227641 (=> (not res!2932544) (not e!4332629))))

(declare-fun dynLambda!28443 (Int Regex!18427) Bool)

(assert (=> b!7227641 (= res!2932544 (dynLambda!28443 lambda!438658 (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227642 () Bool)

(assert (=> b!7227642 (= e!4332629 (forall!17253 (t!383996 (exprs!7879 lt!2572252)) lambda!438658))))

(assert (= (and d!2244760 (not res!2932543)) b!7227641))

(assert (= (and b!7227641 res!2932544) b!7227642))

(declare-fun b_lambda!276735 () Bool)

(assert (=> (not b_lambda!276735) (not b!7227641)))

(declare-fun m!7896542 () Bool)

(assert (=> b!7227641 m!7896542))

(declare-fun m!7896544 () Bool)

(assert (=> b!7227642 m!7896544))

(assert (=> b!7227524 d!2244760))

(declare-fun d!2244762 () Bool)

(declare-fun res!2932545 () Bool)

(declare-fun e!4332630 () Bool)

(assert (=> d!2244762 (=> res!2932545 e!4332630)))

(assert (=> d!2244762 (= res!2932545 ((_ is Nil!69841) (exprs!7879 c!7037)))))

(assert (=> d!2244762 (= (forall!17253 (exprs!7879 c!7037) lambda!438662) e!4332630)))

(declare-fun b!7227643 () Bool)

(declare-fun e!4332631 () Bool)

(assert (=> b!7227643 (= e!4332630 e!4332631)))

(declare-fun res!2932546 () Bool)

(assert (=> b!7227643 (=> (not res!2932546) (not e!4332631))))

(assert (=> b!7227643 (= res!2932546 (dynLambda!28443 lambda!438662 (h!76289 (exprs!7879 c!7037))))))

(declare-fun b!7227644 () Bool)

(assert (=> b!7227644 (= e!4332631 (forall!17253 (t!383996 (exprs!7879 c!7037)) lambda!438662))))

(assert (= (and d!2244762 (not res!2932545)) b!7227643))

(assert (= (and b!7227643 res!2932546) b!7227644))

(declare-fun b_lambda!276737 () Bool)

(assert (=> (not b_lambda!276737) (not b!7227643)))

(declare-fun m!7896546 () Bool)

(assert (=> b!7227643 m!7896546))

(declare-fun m!7896548 () Bool)

(assert (=> b!7227644 m!7896548))

(assert (=> d!2244758 d!2244762))

(declare-fun b!7227645 () Bool)

(declare-fun e!4332639 () Bool)

(declare-fun lt!2572297 () Int)

(declare-fun call!657940 () Int)

(assert (=> b!7227645 (= e!4332639 (> lt!2572297 call!657940))))

(declare-fun bm!657932 () Bool)

(declare-fun call!657941 () Int)

(declare-fun call!657938 () Int)

(assert (=> bm!657932 (= call!657941 call!657938)))

(declare-fun b!7227646 () Bool)

(declare-fun c!1340924 () Bool)

(assert (=> b!7227646 (= c!1340924 ((_ is Union!18427) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun e!4332632 () Int)

(declare-fun e!4332633 () Int)

(assert (=> b!7227646 (= e!4332632 e!4332633)))

(declare-fun bm!657933 () Bool)

(declare-fun call!657937 () Int)

(declare-fun call!657939 () Int)

(assert (=> bm!657933 (= call!657937 (maxBigInt!0 call!657939 call!657941))))

(declare-fun b!7227647 () Bool)

(declare-fun e!4332634 () Bool)

(assert (=> b!7227647 (= e!4332634 (= lt!2572297 1))))

(declare-fun d!2244764 () Bool)

(declare-fun e!4332640 () Bool)

(assert (=> d!2244764 e!4332640))

(declare-fun res!2932549 () Bool)

(assert (=> d!2244764 (=> (not res!2932549) (not e!4332640))))

(assert (=> d!2244764 (= res!2932549 (> lt!2572297 0))))

(declare-fun e!4332641 () Int)

(assert (=> d!2244764 (= lt!2572297 e!4332641)))

(declare-fun c!1340926 () Bool)

(assert (=> d!2244764 (= c!1340926 ((_ is ElementMatch!18427) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(assert (=> d!2244764 (= (regexDepth!416 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) lt!2572297)))

(declare-fun b!7227648 () Bool)

(declare-fun e!4332637 () Bool)

(assert (=> b!7227648 (= e!4332640 e!4332637)))

(declare-fun c!1340920 () Bool)

(assert (=> b!7227648 (= c!1340920 ((_ is Union!18427) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227649 () Bool)

(assert (=> b!7227649 (= e!4332641 e!4332632)))

(declare-fun c!1340923 () Bool)

(assert (=> b!7227649 (= c!1340923 ((_ is Star!18427) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227650 () Bool)

(declare-fun e!4332638 () Int)

(assert (=> b!7227650 (= e!4332638 (+ 1 call!657937))))

(declare-fun b!7227651 () Bool)

(assert (=> b!7227651 (= e!4332638 1)))

(declare-fun b!7227652 () Bool)

(assert (=> b!7227652 (= e!4332632 (+ 1 call!657938))))

(declare-fun b!7227653 () Bool)

(assert (=> b!7227653 (= e!4332637 e!4332639)))

(declare-fun res!2932548 () Bool)

(declare-fun call!657943 () Int)

(assert (=> b!7227653 (= res!2932548 (> lt!2572297 call!657943))))

(assert (=> b!7227653 (=> (not res!2932548) (not e!4332639))))

(declare-fun b!7227654 () Bool)

(declare-fun e!4332636 () Bool)

(assert (=> b!7227654 (= e!4332637 e!4332636)))

(declare-fun c!1340925 () Bool)

(assert (=> b!7227654 (= c!1340925 ((_ is Concat!27272) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227655 () Bool)

(assert (=> b!7227655 (= e!4332633 (+ 1 call!657937))))

(declare-fun bm!657934 () Bool)

(assert (=> bm!657934 (= call!657940 (regexDepth!416 (ite c!1340920 (regTwo!37367 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (regTwo!37366 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))))

(declare-fun b!7227656 () Bool)

(declare-fun e!4332635 () Bool)

(assert (=> b!7227656 (= e!4332635 (> lt!2572297 call!657940))))

(declare-fun bm!657935 () Bool)

(declare-fun call!657942 () Int)

(assert (=> bm!657935 (= call!657942 call!657943)))

(declare-fun b!7227657 () Bool)

(declare-fun c!1340922 () Bool)

(assert (=> b!7227657 (= c!1340922 ((_ is Star!18427) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(assert (=> b!7227657 (= e!4332636 e!4332634)))

(declare-fun b!7227658 () Bool)

(assert (=> b!7227658 (= e!4332633 e!4332638)))

(declare-fun c!1340921 () Bool)

(assert (=> b!7227658 (= c!1340921 ((_ is Concat!27272) (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227659 () Bool)

(assert (=> b!7227659 (= e!4332634 (> lt!2572297 call!657942))))

(declare-fun b!7227660 () Bool)

(assert (=> b!7227660 (= e!4332641 1)))

(declare-fun bm!657936 () Bool)

(assert (=> bm!657936 (= call!657943 (regexDepth!416 (ite c!1340920 (regOne!37367 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (ite c!1340925 (regOne!37366 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (reg!18756 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun bm!657937 () Bool)

(assert (=> bm!657937 (= call!657939 (regexDepth!416 (ite c!1340924 (regOne!37367 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (regOne!37366 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))))))))

(declare-fun bm!657938 () Bool)

(assert (=> bm!657938 (= call!657938 (regexDepth!416 (ite c!1340923 (reg!18756 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (ite c!1340924 (regTwo!37367 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037))))) (regTwo!37366 (ite c!1340917 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (regOne!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun b!7227661 () Bool)

(declare-fun res!2932547 () Bool)

(assert (=> b!7227661 (=> (not res!2932547) (not e!4332635))))

(assert (=> b!7227661 (= res!2932547 (> lt!2572297 call!657942))))

(assert (=> b!7227661 (= e!4332636 e!4332635)))

(assert (= (and d!2244764 c!1340926) b!7227660))

(assert (= (and d!2244764 (not c!1340926)) b!7227649))

(assert (= (and b!7227649 c!1340923) b!7227652))

(assert (= (and b!7227649 (not c!1340923)) b!7227646))

(assert (= (and b!7227646 c!1340924) b!7227655))

(assert (= (and b!7227646 (not c!1340924)) b!7227658))

(assert (= (and b!7227658 c!1340921) b!7227650))

(assert (= (and b!7227658 (not c!1340921)) b!7227651))

(assert (= (or b!7227655 b!7227650) bm!657937))

(assert (= (or b!7227655 b!7227650) bm!657932))

(assert (= (or b!7227655 b!7227650) bm!657933))

(assert (= (or b!7227652 bm!657932) bm!657938))

(assert (= (and d!2244764 res!2932549) b!7227648))

(assert (= (and b!7227648 c!1340920) b!7227653))

(assert (= (and b!7227648 (not c!1340920)) b!7227654))

(assert (= (and b!7227653 res!2932548) b!7227645))

(assert (= (and b!7227654 c!1340925) b!7227661))

(assert (= (and b!7227654 (not c!1340925)) b!7227657))

(assert (= (and b!7227661 res!2932547) b!7227656))

(assert (= (and b!7227657 c!1340922) b!7227659))

(assert (= (and b!7227657 (not c!1340922)) b!7227647))

(assert (= (or b!7227661 b!7227659) bm!657935))

(assert (= (or b!7227653 bm!657935) bm!657936))

(assert (= (or b!7227645 b!7227656) bm!657934))

(declare-fun m!7896550 () Bool)

(assert (=> bm!657938 m!7896550))

(declare-fun m!7896552 () Bool)

(assert (=> bm!657937 m!7896552))

(declare-fun m!7896554 () Bool)

(assert (=> bm!657936 m!7896554))

(declare-fun m!7896556 () Bool)

(assert (=> bm!657933 m!7896556))

(declare-fun m!7896558 () Bool)

(assert (=> bm!657934 m!7896558))

(assert (=> bm!657930 d!2244764))

(declare-fun d!2244766 () Bool)

(assert (=> d!2244766 (= (maxBigInt!0 call!657932 call!657934) (ite (>= call!657932 call!657934) call!657932 call!657934))))

(assert (=> bm!657926 d!2244766))

(declare-fun b!7227663 () Bool)

(declare-fun e!4332649 () Bool)

(declare-fun lt!2572298 () Int)

(declare-fun call!657947 () Int)

(assert (=> b!7227663 (= e!4332649 (> lt!2572298 call!657947))))

(declare-fun bm!657939 () Bool)

(declare-fun call!657948 () Int)

(declare-fun call!657945 () Int)

(assert (=> bm!657939 (= call!657948 call!657945)))

(declare-fun c!1340931 () Bool)

(declare-fun b!7227664 () Bool)

(assert (=> b!7227664 (= c!1340931 ((_ is Union!18427) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun e!4332642 () Int)

(declare-fun e!4332643 () Int)

(assert (=> b!7227664 (= e!4332642 e!4332643)))

(declare-fun bm!657940 () Bool)

(declare-fun call!657944 () Int)

(declare-fun call!657946 () Int)

(assert (=> bm!657940 (= call!657944 (maxBigInt!0 call!657946 call!657948))))

(declare-fun b!7227665 () Bool)

(declare-fun e!4332644 () Bool)

(assert (=> b!7227665 (= e!4332644 (= lt!2572298 1))))

(declare-fun d!2244768 () Bool)

(declare-fun e!4332650 () Bool)

(assert (=> d!2244768 e!4332650))

(declare-fun res!2932552 () Bool)

(assert (=> d!2244768 (=> (not res!2932552) (not e!4332650))))

(assert (=> d!2244768 (= res!2932552 (> lt!2572298 0))))

(declare-fun e!4332651 () Int)

(assert (=> d!2244768 (= lt!2572298 e!4332651)))

(declare-fun c!1340933 () Bool)

(assert (=> d!2244768 (= c!1340933 ((_ is ElementMatch!18427) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(assert (=> d!2244768 (= (regexDepth!416 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) lt!2572298)))

(declare-fun b!7227666 () Bool)

(declare-fun e!4332647 () Bool)

(assert (=> b!7227666 (= e!4332650 e!4332647)))

(declare-fun c!1340927 () Bool)

(assert (=> b!7227666 (= c!1340927 ((_ is Union!18427) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227667 () Bool)

(assert (=> b!7227667 (= e!4332651 e!4332642)))

(declare-fun c!1340930 () Bool)

(assert (=> b!7227667 (= c!1340930 ((_ is Star!18427) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227668 () Bool)

(declare-fun e!4332648 () Int)

(assert (=> b!7227668 (= e!4332648 (+ 1 call!657944))))

(declare-fun b!7227669 () Bool)

(assert (=> b!7227669 (= e!4332648 1)))

(declare-fun b!7227670 () Bool)

(assert (=> b!7227670 (= e!4332642 (+ 1 call!657945))))

(declare-fun b!7227671 () Bool)

(assert (=> b!7227671 (= e!4332647 e!4332649)))

(declare-fun res!2932551 () Bool)

(declare-fun call!657950 () Int)

(assert (=> b!7227671 (= res!2932551 (> lt!2572298 call!657950))))

(assert (=> b!7227671 (=> (not res!2932551) (not e!4332649))))

(declare-fun b!7227672 () Bool)

(declare-fun e!4332646 () Bool)

(assert (=> b!7227672 (= e!4332647 e!4332646)))

(declare-fun c!1340932 () Bool)

(assert (=> b!7227672 (= c!1340932 ((_ is Concat!27272) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227673 () Bool)

(assert (=> b!7227673 (= e!4332643 (+ 1 call!657944))))

(declare-fun bm!657941 () Bool)

(assert (=> bm!657941 (= call!657947 (regexDepth!416 (ite c!1340927 (regTwo!37367 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (regTwo!37366 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun b!7227674 () Bool)

(declare-fun e!4332645 () Bool)

(assert (=> b!7227674 (= e!4332645 (> lt!2572298 call!657947))))

(declare-fun bm!657942 () Bool)

(declare-fun call!657949 () Int)

(assert (=> bm!657942 (= call!657949 call!657950)))

(declare-fun b!7227675 () Bool)

(declare-fun c!1340929 () Bool)

(assert (=> b!7227675 (= c!1340929 ((_ is Star!18427) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(assert (=> b!7227675 (= e!4332646 e!4332644)))

(declare-fun b!7227676 () Bool)

(assert (=> b!7227676 (= e!4332643 e!4332648)))

(declare-fun c!1340928 () Bool)

(assert (=> b!7227676 (= c!1340928 ((_ is Concat!27272) (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227677 () Bool)

(assert (=> b!7227677 (= e!4332644 (> lt!2572298 call!657949))))

(declare-fun b!7227678 () Bool)

(assert (=> b!7227678 (= e!4332651 1)))

(declare-fun bm!657943 () Bool)

(assert (=> bm!657943 (= call!657950 (regexDepth!416 (ite c!1340927 (regOne!37367 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (ite c!1340932 (regOne!37366 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (reg!18756 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037))))))))))))

(declare-fun bm!657944 () Bool)

(assert (=> bm!657944 (= call!657946 (regexDepth!416 (ite c!1340931 (regOne!37367 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (regOne!37366 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun bm!657945 () Bool)

(assert (=> bm!657945 (= call!657945 (regexDepth!416 (ite c!1340930 (reg!18756 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (ite c!1340931 (regTwo!37367 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037)))))) (regTwo!37366 (ite c!1340913 (regOne!37367 (h!76289 (exprs!7879 c!7037))) (ite c!1340918 (regOne!37366 (h!76289 (exprs!7879 c!7037))) (reg!18756 (h!76289 (exprs!7879 c!7037))))))))))))

(declare-fun b!7227679 () Bool)

(declare-fun res!2932550 () Bool)

(assert (=> b!7227679 (=> (not res!2932550) (not e!4332645))))

(assert (=> b!7227679 (= res!2932550 (> lt!2572298 call!657949))))

(assert (=> b!7227679 (= e!4332646 e!4332645)))

(assert (= (and d!2244768 c!1340933) b!7227678))

(assert (= (and d!2244768 (not c!1340933)) b!7227667))

(assert (= (and b!7227667 c!1340930) b!7227670))

(assert (= (and b!7227667 (not c!1340930)) b!7227664))

(assert (= (and b!7227664 c!1340931) b!7227673))

(assert (= (and b!7227664 (not c!1340931)) b!7227676))

(assert (= (and b!7227676 c!1340928) b!7227668))

(assert (= (and b!7227676 (not c!1340928)) b!7227669))

(assert (= (or b!7227673 b!7227668) bm!657944))

(assert (= (or b!7227673 b!7227668) bm!657939))

(assert (= (or b!7227673 b!7227668) bm!657940))

(assert (= (or b!7227670 bm!657939) bm!657945))

(assert (= (and d!2244768 res!2932552) b!7227666))

(assert (= (and b!7227666 c!1340927) b!7227671))

(assert (= (and b!7227666 (not c!1340927)) b!7227672))

(assert (= (and b!7227671 res!2932551) b!7227663))

(assert (= (and b!7227672 c!1340932) b!7227679))

(assert (= (and b!7227672 (not c!1340932)) b!7227675))

(assert (= (and b!7227679 res!2932550) b!7227674))

(assert (= (and b!7227675 c!1340929) b!7227677))

(assert (= (and b!7227675 (not c!1340929)) b!7227665))

(assert (= (or b!7227679 b!7227677) bm!657942))

(assert (= (or b!7227671 bm!657942) bm!657943))

(assert (= (or b!7227663 b!7227674) bm!657941))

(declare-fun m!7896560 () Bool)

(assert (=> bm!657945 m!7896560))

(declare-fun m!7896562 () Bool)

(assert (=> bm!657944 m!7896562))

(declare-fun m!7896564 () Bool)

(assert (=> bm!657943 m!7896564))

(declare-fun m!7896566 () Bool)

(assert (=> bm!657940 m!7896566))

(declare-fun m!7896568 () Bool)

(assert (=> bm!657941 m!7896568))

(assert (=> bm!657929 d!2244768))

(declare-fun d!2244770 () Bool)

(declare-fun res!2932553 () Bool)

(declare-fun e!4332652 () Bool)

(assert (=> d!2244770 (=> res!2932553 e!4332652)))

(assert (=> d!2244770 (= res!2932553 ((_ is Nil!69841) (exprs!7879 lt!2572252)))))

(assert (=> d!2244770 (= (forall!17253 (exprs!7879 lt!2572252) lambda!438650) e!4332652)))

(declare-fun b!7227680 () Bool)

(declare-fun e!4332653 () Bool)

(assert (=> b!7227680 (= e!4332652 e!4332653)))

(declare-fun res!2932554 () Bool)

(assert (=> b!7227680 (=> (not res!2932554) (not e!4332653))))

(assert (=> b!7227680 (= res!2932554 (dynLambda!28443 lambda!438650 (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227681 () Bool)

(assert (=> b!7227681 (= e!4332653 (forall!17253 (t!383996 (exprs!7879 lt!2572252)) lambda!438650))))

(assert (= (and d!2244770 (not res!2932553)) b!7227680))

(assert (= (and b!7227680 res!2932554) b!7227681))

(declare-fun b_lambda!276739 () Bool)

(assert (=> (not b_lambda!276739) (not b!7227680)))

(declare-fun m!7896570 () Bool)

(assert (=> b!7227680 m!7896570))

(declare-fun m!7896572 () Bool)

(assert (=> b!7227681 m!7896572))

(assert (=> d!2244712 d!2244770))

(declare-fun b!7227682 () Bool)

(declare-fun e!4332661 () Bool)

(declare-fun lt!2572299 () Int)

(declare-fun call!657954 () Int)

(assert (=> b!7227682 (= e!4332661 (> lt!2572299 call!657954))))

(declare-fun bm!657946 () Bool)

(declare-fun call!657955 () Int)

(declare-fun call!657952 () Int)

(assert (=> bm!657946 (= call!657955 call!657952)))

(declare-fun b!7227683 () Bool)

(declare-fun c!1340938 () Bool)

(assert (=> b!7227683 (= c!1340938 ((_ is Union!18427) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun e!4332654 () Int)

(declare-fun e!4332655 () Int)

(assert (=> b!7227683 (= e!4332654 e!4332655)))

(declare-fun bm!657947 () Bool)

(declare-fun call!657951 () Int)

(declare-fun call!657953 () Int)

(assert (=> bm!657947 (= call!657951 (maxBigInt!0 call!657953 call!657955))))

(declare-fun b!7227684 () Bool)

(declare-fun e!4332656 () Bool)

(assert (=> b!7227684 (= e!4332656 (= lt!2572299 1))))

(declare-fun d!2244772 () Bool)

(declare-fun e!4332662 () Bool)

(assert (=> d!2244772 e!4332662))

(declare-fun res!2932557 () Bool)

(assert (=> d!2244772 (=> (not res!2932557) (not e!4332662))))

(assert (=> d!2244772 (= res!2932557 (> lt!2572299 0))))

(declare-fun e!4332663 () Int)

(assert (=> d!2244772 (= lt!2572299 e!4332663)))

(declare-fun c!1340940 () Bool)

(assert (=> d!2244772 (= c!1340940 ((_ is ElementMatch!18427) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(assert (=> d!2244772 (= (regexDepth!416 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) lt!2572299)))

(declare-fun b!7227685 () Bool)

(declare-fun e!4332659 () Bool)

(assert (=> b!7227685 (= e!4332662 e!4332659)))

(declare-fun c!1340934 () Bool)

(assert (=> b!7227685 (= c!1340934 ((_ is Union!18427) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227686 () Bool)

(assert (=> b!7227686 (= e!4332663 e!4332654)))

(declare-fun c!1340937 () Bool)

(assert (=> b!7227686 (= c!1340937 ((_ is Star!18427) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227687 () Bool)

(declare-fun e!4332660 () Int)

(assert (=> b!7227687 (= e!4332660 (+ 1 call!657951))))

(declare-fun b!7227688 () Bool)

(assert (=> b!7227688 (= e!4332660 1)))

(declare-fun b!7227689 () Bool)

(assert (=> b!7227689 (= e!4332654 (+ 1 call!657952))))

(declare-fun b!7227690 () Bool)

(assert (=> b!7227690 (= e!4332659 e!4332661)))

(declare-fun res!2932556 () Bool)

(declare-fun call!657957 () Int)

(assert (=> b!7227690 (= res!2932556 (> lt!2572299 call!657957))))

(assert (=> b!7227690 (=> (not res!2932556) (not e!4332661))))

(declare-fun b!7227691 () Bool)

(declare-fun e!4332658 () Bool)

(assert (=> b!7227691 (= e!4332659 e!4332658)))

(declare-fun c!1340939 () Bool)

(assert (=> b!7227691 (= c!1340939 ((_ is Concat!27272) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227692 () Bool)

(assert (=> b!7227692 (= e!4332655 (+ 1 call!657951))))

(declare-fun bm!657948 () Bool)

(assert (=> bm!657948 (= call!657954 (regexDepth!416 (ite c!1340934 (regTwo!37367 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (regTwo!37366 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun b!7227693 () Bool)

(declare-fun e!4332657 () Bool)

(assert (=> b!7227693 (= e!4332657 (> lt!2572299 call!657954))))

(declare-fun bm!657949 () Bool)

(declare-fun call!657956 () Int)

(assert (=> bm!657949 (= call!657956 call!657957)))

(declare-fun c!1340936 () Bool)

(declare-fun b!7227694 () Bool)

(assert (=> b!7227694 (= c!1340936 ((_ is Star!18427) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(assert (=> b!7227694 (= e!4332658 e!4332656)))

(declare-fun b!7227695 () Bool)

(assert (=> b!7227695 (= e!4332655 e!4332660)))

(declare-fun c!1340935 () Bool)

(assert (=> b!7227695 (= c!1340935 ((_ is Concat!27272) (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))

(declare-fun b!7227696 () Bool)

(assert (=> b!7227696 (= e!4332656 (> lt!2572299 call!657956))))

(declare-fun b!7227697 () Bool)

(assert (=> b!7227697 (= e!4332663 1)))

(declare-fun bm!657950 () Bool)

(assert (=> bm!657950 (= call!657957 (regexDepth!416 (ite c!1340934 (regOne!37367 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (ite c!1340939 (regOne!37366 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (reg!18756 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))))))

(declare-fun bm!657951 () Bool)

(assert (=> bm!657951 (= call!657953 (regexDepth!416 (ite c!1340938 (regOne!37367 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (regOne!37366 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun bm!657952 () Bool)

(assert (=> bm!657952 (= call!657952 (regexDepth!416 (ite c!1340937 (reg!18756 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (ite c!1340938 (regTwo!37367 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))) (regTwo!37366 (ite c!1340916 (reg!18756 (h!76289 (exprs!7879 c!7037))) (ite c!1340917 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))))))

(declare-fun b!7227698 () Bool)

(declare-fun res!2932555 () Bool)

(assert (=> b!7227698 (=> (not res!2932555) (not e!4332657))))

(assert (=> b!7227698 (= res!2932555 (> lt!2572299 call!657956))))

(assert (=> b!7227698 (= e!4332658 e!4332657)))

(assert (= (and d!2244772 c!1340940) b!7227697))

(assert (= (and d!2244772 (not c!1340940)) b!7227686))

(assert (= (and b!7227686 c!1340937) b!7227689))

(assert (= (and b!7227686 (not c!1340937)) b!7227683))

(assert (= (and b!7227683 c!1340938) b!7227692))

(assert (= (and b!7227683 (not c!1340938)) b!7227695))

(assert (= (and b!7227695 c!1340935) b!7227687))

(assert (= (and b!7227695 (not c!1340935)) b!7227688))

(assert (= (or b!7227692 b!7227687) bm!657951))

(assert (= (or b!7227692 b!7227687) bm!657946))

(assert (= (or b!7227692 b!7227687) bm!657947))

(assert (= (or b!7227689 bm!657946) bm!657952))

(assert (= (and d!2244772 res!2932557) b!7227685))

(assert (= (and b!7227685 c!1340934) b!7227690))

(assert (= (and b!7227685 (not c!1340934)) b!7227691))

(assert (= (and b!7227690 res!2932556) b!7227682))

(assert (= (and b!7227691 c!1340939) b!7227698))

(assert (= (and b!7227691 (not c!1340939)) b!7227694))

(assert (= (and b!7227698 res!2932555) b!7227693))

(assert (= (and b!7227694 c!1340936) b!7227696))

(assert (= (and b!7227694 (not c!1340936)) b!7227684))

(assert (= (or b!7227698 b!7227696) bm!657949))

(assert (= (or b!7227690 bm!657949) bm!657950))

(assert (= (or b!7227682 b!7227693) bm!657948))

(declare-fun m!7896574 () Bool)

(assert (=> bm!657952 m!7896574))

(declare-fun m!7896576 () Bool)

(assert (=> bm!657951 m!7896576))

(declare-fun m!7896578 () Bool)

(assert (=> bm!657950 m!7896578))

(declare-fun m!7896580 () Bool)

(assert (=> bm!657947 m!7896580))

(declare-fun m!7896582 () Bool)

(assert (=> bm!657948 m!7896582))

(assert (=> bm!657931 d!2244772))

(declare-fun bs!1902084 () Bool)

(declare-fun b!7227699 () Bool)

(assert (= bs!1902084 (and b!7227699 d!2244712)))

(declare-fun lambda!438663 () Int)

(assert (=> bs!1902084 (not (= lambda!438663 lambda!438650))))

(declare-fun bs!1902085 () Bool)

(assert (= bs!1902085 (and b!7227699 b!7227522)))

(declare-fun lt!2572301 () Int)

(assert (=> bs!1902085 (= (= lt!2572301 lt!2572286) (= lambda!438663 lambda!438657))))

(declare-fun bs!1902086 () Bool)

(assert (= bs!1902086 (and b!7227699 b!7227524)))

(assert (=> bs!1902086 (= (= lt!2572301 lt!2572285) (= lambda!438663 lambda!438658))))

(declare-fun bs!1902087 () Bool)

(assert (= bs!1902087 (and b!7227699 d!2244758)))

(assert (=> bs!1902087 (not (= lambda!438663 lambda!438662))))

(assert (=> b!7227699 true))

(declare-fun bs!1902088 () Bool)

(declare-fun b!7227701 () Bool)

(assert (= bs!1902088 (and b!7227701 b!7227699)))

(declare-fun lt!2572300 () Int)

(declare-fun lambda!438664 () Int)

(assert (=> bs!1902088 (= (= lt!2572300 lt!2572301) (= lambda!438664 lambda!438663))))

(declare-fun bs!1902089 () Bool)

(assert (= bs!1902089 (and b!7227701 b!7227524)))

(assert (=> bs!1902089 (= (= lt!2572300 lt!2572285) (= lambda!438664 lambda!438658))))

(declare-fun bs!1902090 () Bool)

(assert (= bs!1902090 (and b!7227701 d!2244758)))

(assert (=> bs!1902090 (not (= lambda!438664 lambda!438662))))

(declare-fun bs!1902091 () Bool)

(assert (= bs!1902091 (and b!7227701 b!7227522)))

(assert (=> bs!1902091 (= (= lt!2572300 lt!2572286) (= lambda!438664 lambda!438657))))

(declare-fun bs!1902092 () Bool)

(assert (= bs!1902092 (and b!7227701 d!2244712)))

(assert (=> bs!1902092 (not (= lambda!438664 lambda!438650))))

(assert (=> b!7227701 true))

(declare-fun d!2244774 () Bool)

(declare-fun e!4332664 () Bool)

(assert (=> d!2244774 e!4332664))

(declare-fun res!2932558 () Bool)

(assert (=> d!2244774 (=> (not res!2932558) (not e!4332664))))

(assert (=> d!2244774 (= res!2932558 (>= lt!2572300 0))))

(declare-fun e!4332665 () Int)

(assert (=> d!2244774 (= lt!2572300 e!4332665)))

(declare-fun c!1340941 () Bool)

(assert (=> d!2244774 (= c!1340941 ((_ is Cons!69841) (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))))))

(assert (=> d!2244774 (= (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))) lt!2572300)))

(assert (=> b!7227699 (= e!4332665 lt!2572301)))

(assert (=> b!7227699 (= lt!2572301 (maxBigInt!0 (regexDepth!416 (h!76289 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))))) (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))))))))))

(declare-fun lt!2572303 () Unit!163443)

(assert (=> b!7227699 (= lt!2572303 (lemmaForallRegexDepthBiggerThanTransitive!150 (t!383996 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))) lt!2572301 (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))))))))))

(assert (=> b!7227699 (forall!17253 (t!383996 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))) lambda!438663)))

(declare-fun lt!2572302 () Unit!163443)

(assert (=> b!7227699 (= lt!2572302 lt!2572303)))

(declare-fun b!7227700 () Bool)

(assert (=> b!7227700 (= e!4332665 0)))

(assert (=> b!7227701 (= e!4332664 (forall!17253 (exprs!7879 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))) lambda!438664))))

(assert (= (and d!2244774 c!1340941) b!7227699))

(assert (= (and d!2244774 (not c!1340941)) b!7227700))

(assert (= (and d!2244774 res!2932558) b!7227701))

(declare-fun m!7896584 () Bool)

(assert (=> b!7227699 m!7896584))

(assert (=> b!7227699 m!7896584))

(declare-fun m!7896586 () Bool)

(assert (=> b!7227699 m!7896586))

(declare-fun m!7896588 () Bool)

(assert (=> b!7227699 m!7896588))

(assert (=> b!7227699 m!7896586))

(declare-fun m!7896590 () Bool)

(assert (=> b!7227699 m!7896590))

(declare-fun m!7896592 () Bool)

(assert (=> b!7227699 m!7896592))

(assert (=> b!7227699 m!7896586))

(declare-fun m!7896594 () Bool)

(assert (=> b!7227701 m!7896594))

(assert (=> b!7227522 d!2244774))

(declare-fun bs!1902093 () Bool)

(declare-fun d!2244776 () Bool)

(assert (= bs!1902093 (and d!2244776 b!7227701)))

(declare-fun lambda!438667 () Int)

(assert (=> bs!1902093 (= (= lt!2572286 lt!2572300) (= lambda!438667 lambda!438664))))

(declare-fun bs!1902094 () Bool)

(assert (= bs!1902094 (and d!2244776 b!7227699)))

(assert (=> bs!1902094 (= (= lt!2572286 lt!2572301) (= lambda!438667 lambda!438663))))

(declare-fun bs!1902095 () Bool)

(assert (= bs!1902095 (and d!2244776 b!7227524)))

(assert (=> bs!1902095 (= (= lt!2572286 lt!2572285) (= lambda!438667 lambda!438658))))

(declare-fun bs!1902096 () Bool)

(assert (= bs!1902096 (and d!2244776 d!2244758)))

(assert (=> bs!1902096 (not (= lambda!438667 lambda!438662))))

(declare-fun bs!1902097 () Bool)

(assert (= bs!1902097 (and d!2244776 b!7227522)))

(assert (=> bs!1902097 (= lambda!438667 lambda!438657)))

(declare-fun bs!1902098 () Bool)

(assert (= bs!1902098 (and d!2244776 d!2244712)))

(assert (=> bs!1902098 (not (= lambda!438667 lambda!438650))))

(assert (=> d!2244776 true))

(assert (=> d!2244776 (forall!17253 (t!383996 (exprs!7879 lt!2572252)) lambda!438667)))

(declare-fun lt!2572306 () Unit!163443)

(declare-fun choose!55465 (List!69965 Int Int) Unit!163443)

(assert (=> d!2244776 (= lt!2572306 (choose!55465 (t!383996 (exprs!7879 lt!2572252)) lt!2572286 (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))))))

(assert (=> d!2244776 (>= lt!2572286 (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252)))))))

(assert (=> d!2244776 (= (lemmaForallRegexDepthBiggerThanTransitive!150 (t!383996 (exprs!7879 lt!2572252)) lt!2572286 (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))) lt!2572306)))

(declare-fun bs!1902099 () Bool)

(assert (= bs!1902099 d!2244776))

(declare-fun m!7896596 () Bool)

(assert (=> bs!1902099 m!7896596))

(assert (=> bs!1902099 m!7896486))

(declare-fun m!7896598 () Bool)

(assert (=> bs!1902099 m!7896598))

(assert (=> b!7227522 d!2244776))

(declare-fun d!2244778 () Bool)

(declare-fun res!2932559 () Bool)

(declare-fun e!4332666 () Bool)

(assert (=> d!2244778 (=> res!2932559 e!4332666)))

(assert (=> d!2244778 (= res!2932559 ((_ is Nil!69841) (t!383996 (exprs!7879 lt!2572252))))))

(assert (=> d!2244778 (= (forall!17253 (t!383996 (exprs!7879 lt!2572252)) lambda!438657) e!4332666)))

(declare-fun b!7227703 () Bool)

(declare-fun e!4332667 () Bool)

(assert (=> b!7227703 (= e!4332666 e!4332667)))

(declare-fun res!2932560 () Bool)

(assert (=> b!7227703 (=> (not res!2932560) (not e!4332667))))

(assert (=> b!7227703 (= res!2932560 (dynLambda!28443 lambda!438657 (h!76289 (t!383996 (exprs!7879 lt!2572252)))))))

(declare-fun b!7227704 () Bool)

(assert (=> b!7227704 (= e!4332667 (forall!17253 (t!383996 (t!383996 (exprs!7879 lt!2572252))) lambda!438657))))

(assert (= (and d!2244778 (not res!2932559)) b!7227703))

(assert (= (and b!7227703 res!2932560) b!7227704))

(declare-fun b_lambda!276741 () Bool)

(assert (=> (not b_lambda!276741) (not b!7227703)))

(declare-fun m!7896600 () Bool)

(assert (=> b!7227703 m!7896600))

(declare-fun m!7896602 () Bool)

(assert (=> b!7227704 m!7896602))

(assert (=> b!7227522 d!2244778))

(declare-fun b!7227705 () Bool)

(declare-fun e!4332675 () Bool)

(declare-fun lt!2572307 () Int)

(declare-fun call!657961 () Int)

(assert (=> b!7227705 (= e!4332675 (> lt!2572307 call!657961))))

(declare-fun bm!657953 () Bool)

(declare-fun call!657962 () Int)

(declare-fun call!657959 () Int)

(assert (=> bm!657953 (= call!657962 call!657959)))

(declare-fun b!7227706 () Bool)

(declare-fun c!1340946 () Bool)

(assert (=> b!7227706 (= c!1340946 ((_ is Union!18427) (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun e!4332668 () Int)

(declare-fun e!4332669 () Int)

(assert (=> b!7227706 (= e!4332668 e!4332669)))

(declare-fun bm!657954 () Bool)

(declare-fun call!657958 () Int)

(declare-fun call!657960 () Int)

(assert (=> bm!657954 (= call!657958 (maxBigInt!0 call!657960 call!657962))))

(declare-fun b!7227707 () Bool)

(declare-fun e!4332670 () Bool)

(assert (=> b!7227707 (= e!4332670 (= lt!2572307 1))))

(declare-fun d!2244780 () Bool)

(declare-fun e!4332676 () Bool)

(assert (=> d!2244780 e!4332676))

(declare-fun res!2932563 () Bool)

(assert (=> d!2244780 (=> (not res!2932563) (not e!4332676))))

(assert (=> d!2244780 (= res!2932563 (> lt!2572307 0))))

(declare-fun e!4332677 () Int)

(assert (=> d!2244780 (= lt!2572307 e!4332677)))

(declare-fun c!1340948 () Bool)

(assert (=> d!2244780 (= c!1340948 ((_ is ElementMatch!18427) (h!76289 (exprs!7879 lt!2572252))))))

(assert (=> d!2244780 (= (regexDepth!416 (h!76289 (exprs!7879 lt!2572252))) lt!2572307)))

(declare-fun b!7227708 () Bool)

(declare-fun e!4332673 () Bool)

(assert (=> b!7227708 (= e!4332676 e!4332673)))

(declare-fun c!1340942 () Bool)

(assert (=> b!7227708 (= c!1340942 ((_ is Union!18427) (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227709 () Bool)

(assert (=> b!7227709 (= e!4332677 e!4332668)))

(declare-fun c!1340945 () Bool)

(assert (=> b!7227709 (= c!1340945 ((_ is Star!18427) (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227710 () Bool)

(declare-fun e!4332674 () Int)

(assert (=> b!7227710 (= e!4332674 (+ 1 call!657958))))

(declare-fun b!7227711 () Bool)

(assert (=> b!7227711 (= e!4332674 1)))

(declare-fun b!7227712 () Bool)

(assert (=> b!7227712 (= e!4332668 (+ 1 call!657959))))

(declare-fun b!7227713 () Bool)

(assert (=> b!7227713 (= e!4332673 e!4332675)))

(declare-fun res!2932562 () Bool)

(declare-fun call!657964 () Int)

(assert (=> b!7227713 (= res!2932562 (> lt!2572307 call!657964))))

(assert (=> b!7227713 (=> (not res!2932562) (not e!4332675))))

(declare-fun b!7227714 () Bool)

(declare-fun e!4332672 () Bool)

(assert (=> b!7227714 (= e!4332673 e!4332672)))

(declare-fun c!1340947 () Bool)

(assert (=> b!7227714 (= c!1340947 ((_ is Concat!27272) (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227715 () Bool)

(assert (=> b!7227715 (= e!4332669 (+ 1 call!657958))))

(declare-fun bm!657955 () Bool)

(assert (=> bm!657955 (= call!657961 (regexDepth!416 (ite c!1340942 (regTwo!37367 (h!76289 (exprs!7879 lt!2572252))) (regTwo!37366 (h!76289 (exprs!7879 lt!2572252))))))))

(declare-fun b!7227716 () Bool)

(declare-fun e!4332671 () Bool)

(assert (=> b!7227716 (= e!4332671 (> lt!2572307 call!657961))))

(declare-fun bm!657956 () Bool)

(declare-fun call!657963 () Int)

(assert (=> bm!657956 (= call!657963 call!657964)))

(declare-fun b!7227717 () Bool)

(declare-fun c!1340944 () Bool)

(assert (=> b!7227717 (= c!1340944 ((_ is Star!18427) (h!76289 (exprs!7879 lt!2572252))))))

(assert (=> b!7227717 (= e!4332672 e!4332670)))

(declare-fun b!7227718 () Bool)

(assert (=> b!7227718 (= e!4332669 e!4332674)))

(declare-fun c!1340943 () Bool)

(assert (=> b!7227718 (= c!1340943 ((_ is Concat!27272) (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun b!7227719 () Bool)

(assert (=> b!7227719 (= e!4332670 (> lt!2572307 call!657963))))

(declare-fun b!7227720 () Bool)

(assert (=> b!7227720 (= e!4332677 1)))

(declare-fun bm!657957 () Bool)

(assert (=> bm!657957 (= call!657964 (regexDepth!416 (ite c!1340942 (regOne!37367 (h!76289 (exprs!7879 lt!2572252))) (ite c!1340947 (regOne!37366 (h!76289 (exprs!7879 lt!2572252))) (reg!18756 (h!76289 (exprs!7879 lt!2572252)))))))))

(declare-fun bm!657958 () Bool)

(assert (=> bm!657958 (= call!657960 (regexDepth!416 (ite c!1340946 (regOne!37367 (h!76289 (exprs!7879 lt!2572252))) (regOne!37366 (h!76289 (exprs!7879 lt!2572252))))))))

(declare-fun bm!657959 () Bool)

(assert (=> bm!657959 (= call!657959 (regexDepth!416 (ite c!1340945 (reg!18756 (h!76289 (exprs!7879 lt!2572252))) (ite c!1340946 (regTwo!37367 (h!76289 (exprs!7879 lt!2572252))) (regTwo!37366 (h!76289 (exprs!7879 lt!2572252)))))))))

(declare-fun b!7227721 () Bool)

(declare-fun res!2932561 () Bool)

(assert (=> b!7227721 (=> (not res!2932561) (not e!4332671))))

(assert (=> b!7227721 (= res!2932561 (> lt!2572307 call!657963))))

(assert (=> b!7227721 (= e!4332672 e!4332671)))

(assert (= (and d!2244780 c!1340948) b!7227720))

(assert (= (and d!2244780 (not c!1340948)) b!7227709))

(assert (= (and b!7227709 c!1340945) b!7227712))

(assert (= (and b!7227709 (not c!1340945)) b!7227706))

(assert (= (and b!7227706 c!1340946) b!7227715))

(assert (= (and b!7227706 (not c!1340946)) b!7227718))

(assert (= (and b!7227718 c!1340943) b!7227710))

(assert (= (and b!7227718 (not c!1340943)) b!7227711))

(assert (= (or b!7227715 b!7227710) bm!657958))

(assert (= (or b!7227715 b!7227710) bm!657953))

(assert (= (or b!7227715 b!7227710) bm!657954))

(assert (= (or b!7227712 bm!657953) bm!657959))

(assert (= (and d!2244780 res!2932563) b!7227708))

(assert (= (and b!7227708 c!1340942) b!7227713))

(assert (= (and b!7227708 (not c!1340942)) b!7227714))

(assert (= (and b!7227713 res!2932562) b!7227705))

(assert (= (and b!7227714 c!1340947) b!7227721))

(assert (= (and b!7227714 (not c!1340947)) b!7227717))

(assert (= (and b!7227721 res!2932561) b!7227716))

(assert (= (and b!7227717 c!1340944) b!7227719))

(assert (= (and b!7227717 (not c!1340944)) b!7227707))

(assert (= (or b!7227721 b!7227719) bm!657956))

(assert (= (or b!7227713 bm!657956) bm!657957))

(assert (= (or b!7227705 b!7227716) bm!657955))

(declare-fun m!7896604 () Bool)

(assert (=> bm!657959 m!7896604))

(declare-fun m!7896606 () Bool)

(assert (=> bm!657958 m!7896606))

(declare-fun m!7896608 () Bool)

(assert (=> bm!657957 m!7896608))

(declare-fun m!7896610 () Bool)

(assert (=> bm!657954 m!7896610))

(declare-fun m!7896612 () Bool)

(assert (=> bm!657955 m!7896612))

(assert (=> b!7227522 d!2244780))

(declare-fun d!2244782 () Bool)

(assert (=> d!2244782 (= (maxBigInt!0 (regexDepth!416 (h!76289 (exprs!7879 lt!2572252))) (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))) (ite (>= (regexDepth!416 (h!76289 (exprs!7879 lt!2572252))) (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))) (regexDepth!416 (h!76289 (exprs!7879 lt!2572252))) (contextDepth!334 (Context!14759 (t!383996 (exprs!7879 lt!2572252))))))))

(assert (=> b!7227522 d!2244782))

(declare-fun b!7227722 () Bool)

(declare-fun e!4332685 () Bool)

(declare-fun lt!2572308 () Int)

(declare-fun call!657968 () Int)

(assert (=> b!7227722 (= e!4332685 (> lt!2572308 call!657968))))

(declare-fun bm!657960 () Bool)

(declare-fun call!657969 () Int)

(declare-fun call!657966 () Int)

(assert (=> bm!657960 (= call!657969 call!657966)))

(declare-fun b!7227723 () Bool)

(declare-fun c!1340953 () Bool)

(assert (=> b!7227723 (= c!1340953 ((_ is Union!18427) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun e!4332678 () Int)

(declare-fun e!4332679 () Int)

(assert (=> b!7227723 (= e!4332678 e!4332679)))

(declare-fun bm!657961 () Bool)

(declare-fun call!657965 () Int)

(declare-fun call!657967 () Int)

(assert (=> bm!657961 (= call!657965 (maxBigInt!0 call!657967 call!657969))))

(declare-fun b!7227724 () Bool)

(declare-fun e!4332680 () Bool)

(assert (=> b!7227724 (= e!4332680 (= lt!2572308 1))))

(declare-fun d!2244784 () Bool)

(declare-fun e!4332686 () Bool)

(assert (=> d!2244784 e!4332686))

(declare-fun res!2932566 () Bool)

(assert (=> d!2244784 (=> (not res!2932566) (not e!4332686))))

(assert (=> d!2244784 (= res!2932566 (> lt!2572308 0))))

(declare-fun e!4332687 () Int)

(assert (=> d!2244784 (= lt!2572308 e!4332687)))

(declare-fun c!1340955 () Bool)

(assert (=> d!2244784 (= c!1340955 ((_ is ElementMatch!18427) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(assert (=> d!2244784 (= (regexDepth!416 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) lt!2572308)))

(declare-fun b!7227725 () Bool)

(declare-fun e!4332683 () Bool)

(assert (=> b!7227725 (= e!4332686 e!4332683)))

(declare-fun c!1340949 () Bool)

(assert (=> b!7227725 (= c!1340949 ((_ is Union!18427) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227726 () Bool)

(assert (=> b!7227726 (= e!4332687 e!4332678)))

(declare-fun c!1340952 () Bool)

(assert (=> b!7227726 (= c!1340952 ((_ is Star!18427) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227727 () Bool)

(declare-fun e!4332684 () Int)

(assert (=> b!7227727 (= e!4332684 (+ 1 call!657965))))

(declare-fun b!7227728 () Bool)

(assert (=> b!7227728 (= e!4332684 1)))

(declare-fun b!7227729 () Bool)

(assert (=> b!7227729 (= e!4332678 (+ 1 call!657966))))

(declare-fun b!7227730 () Bool)

(assert (=> b!7227730 (= e!4332683 e!4332685)))

(declare-fun res!2932565 () Bool)

(declare-fun call!657971 () Int)

(assert (=> b!7227730 (= res!2932565 (> lt!2572308 call!657971))))

(assert (=> b!7227730 (=> (not res!2932565) (not e!4332685))))

(declare-fun b!7227731 () Bool)

(declare-fun e!4332682 () Bool)

(assert (=> b!7227731 (= e!4332683 e!4332682)))

(declare-fun c!1340954 () Bool)

(assert (=> b!7227731 (= c!1340954 ((_ is Concat!27272) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227732 () Bool)

(assert (=> b!7227732 (= e!4332679 (+ 1 call!657965))))

(declare-fun bm!657962 () Bool)

(assert (=> bm!657962 (= call!657968 (regexDepth!416 (ite c!1340949 (regTwo!37367 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (regTwo!37366 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))))

(declare-fun b!7227733 () Bool)

(declare-fun e!4332681 () Bool)

(assert (=> b!7227733 (= e!4332681 (> lt!2572308 call!657968))))

(declare-fun bm!657963 () Bool)

(declare-fun call!657970 () Int)

(assert (=> bm!657963 (= call!657970 call!657971)))

(declare-fun b!7227734 () Bool)

(declare-fun c!1340951 () Bool)

(assert (=> b!7227734 (= c!1340951 ((_ is Star!18427) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(assert (=> b!7227734 (= e!4332682 e!4332680)))

(declare-fun b!7227735 () Bool)

(assert (=> b!7227735 (= e!4332679 e!4332684)))

(declare-fun c!1340950 () Bool)

(assert (=> b!7227735 (= c!1340950 ((_ is Concat!27272) (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))

(declare-fun b!7227736 () Bool)

(assert (=> b!7227736 (= e!4332680 (> lt!2572308 call!657970))))

(declare-fun b!7227737 () Bool)

(assert (=> b!7227737 (= e!4332687 1)))

(declare-fun bm!657964 () Bool)

(assert (=> bm!657964 (= call!657971 (regexDepth!416 (ite c!1340949 (regOne!37367 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (ite c!1340954 (regOne!37366 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (reg!18756 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun bm!657965 () Bool)

(assert (=> bm!657965 (= call!657967 (regexDepth!416 (ite c!1340953 (regOne!37367 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (regOne!37366 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))))))))

(declare-fun bm!657966 () Bool)

(assert (=> bm!657966 (= call!657966 (regexDepth!416 (ite c!1340952 (reg!18756 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (ite c!1340953 (regTwo!37367 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037))))) (regTwo!37366 (ite c!1340913 (regTwo!37367 (h!76289 (exprs!7879 c!7037))) (regTwo!37366 (h!76289 (exprs!7879 c!7037)))))))))))

(declare-fun b!7227738 () Bool)

(declare-fun res!2932564 () Bool)

(assert (=> b!7227738 (=> (not res!2932564) (not e!4332681))))

(assert (=> b!7227738 (= res!2932564 (> lt!2572308 call!657970))))

(assert (=> b!7227738 (= e!4332682 e!4332681)))

(assert (= (and d!2244784 c!1340955) b!7227737))

(assert (= (and d!2244784 (not c!1340955)) b!7227726))

(assert (= (and b!7227726 c!1340952) b!7227729))

(assert (= (and b!7227726 (not c!1340952)) b!7227723))

(assert (= (and b!7227723 c!1340953) b!7227732))

(assert (= (and b!7227723 (not c!1340953)) b!7227735))

(assert (= (and b!7227735 c!1340950) b!7227727))

(assert (= (and b!7227735 (not c!1340950)) b!7227728))

(assert (= (or b!7227732 b!7227727) bm!657965))

(assert (= (or b!7227732 b!7227727) bm!657960))

(assert (= (or b!7227732 b!7227727) bm!657961))

(assert (= (or b!7227729 bm!657960) bm!657966))

(assert (= (and d!2244784 res!2932566) b!7227725))

(assert (= (and b!7227725 c!1340949) b!7227730))

(assert (= (and b!7227725 (not c!1340949)) b!7227731))

(assert (= (and b!7227730 res!2932565) b!7227722))

(assert (= (and b!7227731 c!1340954) b!7227738))

(assert (= (and b!7227731 (not c!1340954)) b!7227734))

(assert (= (and b!7227738 res!2932564) b!7227733))

(assert (= (and b!7227734 c!1340951) b!7227736))

(assert (= (and b!7227734 (not c!1340951)) b!7227724))

(assert (= (or b!7227738 b!7227736) bm!657963))

(assert (= (or b!7227730 bm!657963) bm!657964))

(assert (= (or b!7227722 b!7227733) bm!657962))

(declare-fun m!7896614 () Bool)

(assert (=> bm!657966 m!7896614))

(declare-fun m!7896616 () Bool)

(assert (=> bm!657965 m!7896616))

(declare-fun m!7896618 () Bool)

(assert (=> bm!657964 m!7896618))

(declare-fun m!7896620 () Bool)

(assert (=> bm!657961 m!7896620))

(declare-fun m!7896622 () Bool)

(assert (=> bm!657962 m!7896622))

(assert (=> bm!657927 d!2244784))

(declare-fun b!7227751 () Bool)

(declare-fun e!4332690 () Bool)

(declare-fun tp!2032594 () Bool)

(assert (=> b!7227751 (= e!4332690 tp!2032594)))

(declare-fun b!7227749 () Bool)

(declare-fun tp_is_empty!46367 () Bool)

(assert (=> b!7227749 (= e!4332690 tp_is_empty!46367)))

(assert (=> b!7227636 (= tp!2032582 e!4332690)))

(declare-fun b!7227750 () Bool)

(declare-fun tp!2032595 () Bool)

(declare-fun tp!2032596 () Bool)

(assert (=> b!7227750 (= e!4332690 (and tp!2032595 tp!2032596))))

(declare-fun b!7227752 () Bool)

(declare-fun tp!2032598 () Bool)

(declare-fun tp!2032597 () Bool)

(assert (=> b!7227752 (= e!4332690 (and tp!2032598 tp!2032597))))

(assert (= (and b!7227636 ((_ is ElementMatch!18427) (h!76289 (exprs!7879 c!7037)))) b!7227749))

(assert (= (and b!7227636 ((_ is Concat!27272) (h!76289 (exprs!7879 c!7037)))) b!7227750))

(assert (= (and b!7227636 ((_ is Star!18427) (h!76289 (exprs!7879 c!7037)))) b!7227751))

(assert (= (and b!7227636 ((_ is Union!18427) (h!76289 (exprs!7879 c!7037)))) b!7227752))

(declare-fun b!7227753 () Bool)

(declare-fun e!4332691 () Bool)

(declare-fun tp!2032599 () Bool)

(declare-fun tp!2032600 () Bool)

(assert (=> b!7227753 (= e!4332691 (and tp!2032599 tp!2032600))))

(assert (=> b!7227636 (= tp!2032583 e!4332691)))

(assert (= (and b!7227636 ((_ is Cons!69841) (t!383996 (exprs!7879 c!7037)))) b!7227753))

(declare-fun b_lambda!276743 () Bool)

(assert (= b_lambda!276737 (or d!2244758 b_lambda!276743)))

(declare-fun bs!1902100 () Bool)

(declare-fun d!2244786 () Bool)

(assert (= bs!1902100 (and d!2244786 d!2244758)))

(declare-fun validRegex!9496 (Regex!18427) Bool)

(assert (=> bs!1902100 (= (dynLambda!28443 lambda!438662 (h!76289 (exprs!7879 c!7037))) (validRegex!9496 (h!76289 (exprs!7879 c!7037))))))

(declare-fun m!7896624 () Bool)

(assert (=> bs!1902100 m!7896624))

(assert (=> b!7227643 d!2244786))

(declare-fun b_lambda!276745 () Bool)

(assert (= b_lambda!276741 (or b!7227522 b_lambda!276745)))

(declare-fun bs!1902101 () Bool)

(declare-fun d!2244788 () Bool)

(assert (= bs!1902101 (and d!2244788 b!7227522)))

(assert (=> bs!1902101 (= (dynLambda!28443 lambda!438657 (h!76289 (t!383996 (exprs!7879 lt!2572252)))) (>= lt!2572286 (regexDepth!416 (h!76289 (t!383996 (exprs!7879 lt!2572252))))))))

(declare-fun m!7896626 () Bool)

(assert (=> bs!1902101 m!7896626))

(assert (=> b!7227703 d!2244788))

(declare-fun b_lambda!276747 () Bool)

(assert (= b_lambda!276739 (or d!2244712 b_lambda!276747)))

(declare-fun bs!1902102 () Bool)

(declare-fun d!2244790 () Bool)

(assert (= bs!1902102 (and d!2244790 d!2244712)))

(assert (=> bs!1902102 (= (dynLambda!28443 lambda!438650 (h!76289 (exprs!7879 lt!2572252))) (validRegex!9496 (h!76289 (exprs!7879 lt!2572252))))))

(declare-fun m!7896628 () Bool)

(assert (=> bs!1902102 m!7896628))

(assert (=> b!7227680 d!2244790))

(declare-fun b_lambda!276749 () Bool)

(assert (= b_lambda!276735 (or b!7227524 b_lambda!276749)))

(declare-fun bs!1902103 () Bool)

(declare-fun d!2244792 () Bool)

(assert (= bs!1902103 (and d!2244792 b!7227524)))

(assert (=> bs!1902103 (= (dynLambda!28443 lambda!438658 (h!76289 (exprs!7879 lt!2572252))) (>= lt!2572285 (regexDepth!416 (h!76289 (exprs!7879 lt!2572252)))))))

(assert (=> bs!1902103 m!7896480))

(assert (=> b!7227641 d!2244792))

(check-sat (not b!7227750) (not bm!657962) (not b!7227701) (not b!7227753) (not bm!657938) (not bm!657950) (not d!2244776) (not bm!657944) (not b_lambda!276743) (not bm!657955) (not bm!657948) (not bm!657934) (not bm!657957) (not bm!657958) (not b!7227752) tp_is_empty!46367 (not bs!1902102) (not bm!657943) (not bm!657965) (not bm!657940) (not bm!657933) (not bm!657937) (not bm!657964) (not bm!657951) (not b!7227681) (not bm!657961) (not b_lambda!276747) (not b_lambda!276745) (not bm!657954) (not b_lambda!276749) (not bm!657936) (not b!7227699) (not b!7227644) (not bm!657945) (not bm!657941) (not b!7227751) (not b!7227642) (not bm!657959) (not bs!1902101) (not bm!657947) (not bs!1902100) (not bs!1902103) (not bm!657952) (not bm!657966) (not b!7227704))
(check-sat)
