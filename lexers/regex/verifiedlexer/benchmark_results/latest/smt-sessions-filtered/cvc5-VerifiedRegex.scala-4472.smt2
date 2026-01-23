; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237842 () Bool)

(assert start!237842)

(declare-fun b!2428475 () Bool)

(declare-fun e!1544414 () Bool)

(declare-fun tp_is_empty!11685 () Bool)

(assert (=> b!2428475 (= e!1544414 tp_is_empty!11685)))

(declare-fun b!2428476 () Bool)

(declare-fun e!1544413 () Bool)

(declare-datatypes ((C!14430 0))(
  ( (C!14431 (val!8457 Int)) )
))
(declare-datatypes ((Regex!7136 0))(
  ( (ElementMatch!7136 (c!387402 C!14430)) (Concat!11772 (regOne!14784 Regex!7136) (regTwo!14784 Regex!7136)) (EmptyExpr!7136) (Star!7136 (reg!7465 Regex!7136)) (EmptyLang!7136) (Union!7136 (regOne!14785 Regex!7136) (regTwo!14785 Regex!7136)) )
))
(declare-datatypes ((List!28510 0))(
  ( (Nil!28412) (Cons!28412 (h!33813 Regex!7136) (t!208487 List!28510)) )
))
(declare-fun l!9164 () List!28510)

(declare-fun isEmpty!16451 (List!28510) Bool)

(assert (=> b!2428476 (= e!1544413 (not (isEmpty!16451 l!9164)))))

(declare-fun b!2428477 () Bool)

(declare-fun tp!770919 () Bool)

(assert (=> b!2428477 (= e!1544414 tp!770919)))

(declare-fun b!2428478 () Bool)

(declare-fun e!1544412 () Bool)

(assert (=> b!2428478 (= e!1544412 (not e!1544413))))

(declare-fun res!1031422 () Bool)

(assert (=> b!2428478 (=> res!1031422 e!1544413)))

(declare-fun r!13927 () Regex!7136)

(assert (=> b!2428478 (= res!1031422 (or (is-Concat!11772 r!13927) (is-EmptyExpr!7136 r!13927)))))

(declare-datatypes ((List!28511 0))(
  ( (Nil!28413) (Cons!28413 (h!33814 C!14430) (t!208488 List!28511)) )
))
(declare-fun s!9460 () List!28511)

(declare-fun matchR!3253 (Regex!7136 List!28511) Bool)

(declare-fun matchRSpec!985 (Regex!7136 List!28511) Bool)

(assert (=> b!2428478 (= (matchR!3253 r!13927 s!9460) (matchRSpec!985 r!13927 s!9460))))

(declare-datatypes ((Unit!41659 0))(
  ( (Unit!41660) )
))
(declare-fun lt!876767 () Unit!41659)

(declare-fun mainMatchTheorem!985 (Regex!7136 List!28511) Unit!41659)

(assert (=> b!2428478 (= lt!876767 (mainMatchTheorem!985 r!13927 s!9460))))

(declare-fun b!2428479 () Bool)

(declare-fun e!1544415 () Bool)

(declare-fun tp!770924 () Bool)

(assert (=> b!2428479 (= e!1544415 (and tp_is_empty!11685 tp!770924))))

(declare-fun b!2428480 () Bool)

(declare-fun e!1544411 () Bool)

(declare-fun tp!770921 () Bool)

(declare-fun tp!770920 () Bool)

(assert (=> b!2428480 (= e!1544411 (and tp!770921 tp!770920))))

(declare-fun b!2428481 () Bool)

(declare-fun res!1031423 () Bool)

(assert (=> b!2428481 (=> (not res!1031423) (not e!1544412))))

(declare-fun generalisedConcat!237 (List!28510) Regex!7136)

(assert (=> b!2428481 (= res!1031423 (= r!13927 (generalisedConcat!237 l!9164)))))

(declare-fun res!1031421 () Bool)

(assert (=> start!237842 (=> (not res!1031421) (not e!1544412))))

(declare-fun lambda!91540 () Int)

(declare-fun forall!5770 (List!28510 Int) Bool)

(assert (=> start!237842 (= res!1031421 (forall!5770 l!9164 lambda!91540))))

(assert (=> start!237842 e!1544412))

(assert (=> start!237842 e!1544411))

(assert (=> start!237842 e!1544414))

(assert (=> start!237842 e!1544415))

(declare-fun b!2428482 () Bool)

(declare-fun tp!770925 () Bool)

(declare-fun tp!770923 () Bool)

(assert (=> b!2428482 (= e!1544414 (and tp!770925 tp!770923))))

(declare-fun b!2428483 () Bool)

(declare-fun tp!770922 () Bool)

(declare-fun tp!770918 () Bool)

(assert (=> b!2428483 (= e!1544414 (and tp!770922 tp!770918))))

(assert (= (and start!237842 res!1031421) b!2428481))

(assert (= (and b!2428481 res!1031423) b!2428478))

(assert (= (and b!2428478 (not res!1031422)) b!2428476))

(assert (= (and start!237842 (is-Cons!28412 l!9164)) b!2428480))

(assert (= (and start!237842 (is-ElementMatch!7136 r!13927)) b!2428475))

(assert (= (and start!237842 (is-Concat!11772 r!13927)) b!2428483))

(assert (= (and start!237842 (is-Star!7136 r!13927)) b!2428477))

(assert (= (and start!237842 (is-Union!7136 r!13927)) b!2428482))

(assert (= (and start!237842 (is-Cons!28413 s!9460)) b!2428479))

(declare-fun m!2812607 () Bool)

(assert (=> b!2428476 m!2812607))

(declare-fun m!2812609 () Bool)

(assert (=> b!2428478 m!2812609))

(declare-fun m!2812611 () Bool)

(assert (=> b!2428478 m!2812611))

(declare-fun m!2812613 () Bool)

(assert (=> b!2428478 m!2812613))

(declare-fun m!2812615 () Bool)

(assert (=> b!2428481 m!2812615))

(declare-fun m!2812617 () Bool)

(assert (=> start!237842 m!2812617))

(push 1)

(assert (not b!2428480))

(assert (not b!2428476))

(assert (not start!237842))

(assert (not b!2428477))

(assert (not b!2428481))

(assert (not b!2428478))

(assert (not b!2428482))

(assert (not b!2428483))

(assert tp_is_empty!11685)

(assert (not b!2428479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!464052 () Bool)

(declare-fun d!702899 () Bool)

(assert (= bs!464052 (and d!702899 start!237842)))

(declare-fun lambda!91546 () Int)

(assert (=> bs!464052 (= lambda!91546 lambda!91540)))

(declare-fun b!2428531 () Bool)

(declare-fun e!1544445 () Bool)

(assert (=> b!2428531 (= e!1544445 (isEmpty!16451 (t!208487 l!9164)))))

(declare-fun b!2428532 () Bool)

(declare-fun e!1544447 () Regex!7136)

(assert (=> b!2428532 (= e!1544447 (Concat!11772 (h!33813 l!9164) (generalisedConcat!237 (t!208487 l!9164))))))

(declare-fun b!2428533 () Bool)

(declare-fun e!1544446 () Bool)

(declare-fun lt!876773 () Regex!7136)

(declare-fun isEmptyExpr!189 (Regex!7136) Bool)

(assert (=> b!2428533 (= e!1544446 (isEmptyExpr!189 lt!876773))))

(declare-fun b!2428534 () Bool)

(declare-fun e!1544444 () Bool)

(assert (=> b!2428534 (= e!1544446 e!1544444)))

(declare-fun c!387413 () Bool)

(declare-fun tail!3754 (List!28510) List!28510)

(assert (=> b!2428534 (= c!387413 (isEmpty!16451 (tail!3754 l!9164)))))

(declare-fun b!2428535 () Bool)

(declare-fun head!5482 (List!28510) Regex!7136)

(assert (=> b!2428535 (= e!1544444 (= lt!876773 (head!5482 l!9164)))))

(declare-fun b!2428536 () Bool)

(assert (=> b!2428536 (= e!1544447 EmptyExpr!7136)))

(declare-fun b!2428537 () Bool)

(declare-fun e!1544443 () Regex!7136)

(assert (=> b!2428537 (= e!1544443 (h!33813 l!9164))))

(declare-fun e!1544448 () Bool)

(assert (=> d!702899 e!1544448))

(declare-fun res!1031438 () Bool)

(assert (=> d!702899 (=> (not res!1031438) (not e!1544448))))

(declare-fun validRegex!2855 (Regex!7136) Bool)

(assert (=> d!702899 (= res!1031438 (validRegex!2855 lt!876773))))

(assert (=> d!702899 (= lt!876773 e!1544443)))

(declare-fun c!387414 () Bool)

(assert (=> d!702899 (= c!387414 e!1544445)))

(declare-fun res!1031437 () Bool)

(assert (=> d!702899 (=> (not res!1031437) (not e!1544445))))

(assert (=> d!702899 (= res!1031437 (is-Cons!28412 l!9164))))

(assert (=> d!702899 (forall!5770 l!9164 lambda!91546)))

(assert (=> d!702899 (= (generalisedConcat!237 l!9164) lt!876773)))

(declare-fun b!2428538 () Bool)

(assert (=> b!2428538 (= e!1544448 e!1544446)))

(declare-fun c!387412 () Bool)

(assert (=> b!2428538 (= c!387412 (isEmpty!16451 l!9164))))

(declare-fun b!2428539 () Bool)

(assert (=> b!2428539 (= e!1544443 e!1544447)))

(declare-fun c!387415 () Bool)

(assert (=> b!2428539 (= c!387415 (is-Cons!28412 l!9164))))

(declare-fun b!2428540 () Bool)

(declare-fun isConcat!189 (Regex!7136) Bool)

(assert (=> b!2428540 (= e!1544444 (isConcat!189 lt!876773))))

(assert (= (and d!702899 res!1031437) b!2428531))

(assert (= (and d!702899 c!387414) b!2428537))

(assert (= (and d!702899 (not c!387414)) b!2428539))

(assert (= (and b!2428539 c!387415) b!2428532))

(assert (= (and b!2428539 (not c!387415)) b!2428536))

(assert (= (and d!702899 res!1031438) b!2428538))

(assert (= (and b!2428538 c!387412) b!2428533))

(assert (= (and b!2428538 (not c!387412)) b!2428534))

(assert (= (and b!2428534 c!387413) b!2428535))

(assert (= (and b!2428534 (not c!387413)) b!2428540))

(assert (=> b!2428538 m!2812607))

(declare-fun m!2812631 () Bool)

(assert (=> b!2428540 m!2812631))

(declare-fun m!2812633 () Bool)

(assert (=> b!2428533 m!2812633))

(declare-fun m!2812635 () Bool)

(assert (=> b!2428535 m!2812635))

(declare-fun m!2812637 () Bool)

(assert (=> b!2428534 m!2812637))

(assert (=> b!2428534 m!2812637))

(declare-fun m!2812639 () Bool)

(assert (=> b!2428534 m!2812639))

(declare-fun m!2812641 () Bool)

(assert (=> b!2428532 m!2812641))

(declare-fun m!2812643 () Bool)

(assert (=> d!702899 m!2812643))

(declare-fun m!2812645 () Bool)

(assert (=> d!702899 m!2812645))

(declare-fun m!2812647 () Bool)

(assert (=> b!2428531 m!2812647))

(assert (=> b!2428481 d!702899))

(declare-fun d!702901 () Bool)

(declare-fun res!1031443 () Bool)

(declare-fun e!1544453 () Bool)

(assert (=> d!702901 (=> res!1031443 e!1544453)))

(assert (=> d!702901 (= res!1031443 (is-Nil!28412 l!9164))))

(assert (=> d!702901 (= (forall!5770 l!9164 lambda!91540) e!1544453)))

(declare-fun b!2428545 () Bool)

(declare-fun e!1544454 () Bool)

(assert (=> b!2428545 (= e!1544453 e!1544454)))

(declare-fun res!1031444 () Bool)

(assert (=> b!2428545 (=> (not res!1031444) (not e!1544454))))

(declare-fun dynLambda!12228 (Int Regex!7136) Bool)

(assert (=> b!2428545 (= res!1031444 (dynLambda!12228 lambda!91540 (h!33813 l!9164)))))

(declare-fun b!2428546 () Bool)

(assert (=> b!2428546 (= e!1544454 (forall!5770 (t!208487 l!9164) lambda!91540))))

(assert (= (and d!702901 (not res!1031443)) b!2428545))

(assert (= (and b!2428545 res!1031444) b!2428546))

(declare-fun b_lambda!74731 () Bool)

(assert (=> (not b_lambda!74731) (not b!2428545)))

(declare-fun m!2812649 () Bool)

(assert (=> b!2428545 m!2812649))

(declare-fun m!2812651 () Bool)

(assert (=> b!2428546 m!2812651))

(assert (=> start!237842 d!702901))

(declare-fun b!2428581 () Bool)

(declare-fun e!1544476 () Bool)

(declare-fun head!5483 (List!28511) C!14430)

(assert (=> b!2428581 (= e!1544476 (not (= (head!5483 s!9460) (c!387402 r!13927))))))

(declare-fun b!2428582 () Bool)

(declare-fun e!1544474 () Bool)

(assert (=> b!2428582 (= e!1544474 (= (head!5483 s!9460) (c!387402 r!13927)))))

(declare-fun b!2428583 () Bool)

(declare-fun e!1544477 () Bool)

(declare-fun nullable!2170 (Regex!7136) Bool)

(assert (=> b!2428583 (= e!1544477 (nullable!2170 r!13927))))

(declare-fun b!2428584 () Bool)

(declare-fun e!1544475 () Bool)

(declare-fun lt!876778 () Bool)

(declare-fun call!148609 () Bool)

(assert (=> b!2428584 (= e!1544475 (= lt!876778 call!148609))))

(declare-fun b!2428585 () Bool)

(declare-fun e!1544473 () Bool)

(assert (=> b!2428585 (= e!1544473 (not lt!876778))))

(declare-fun b!2428586 () Bool)

(declare-fun e!1544479 () Bool)

(declare-fun e!1544478 () Bool)

(assert (=> b!2428586 (= e!1544479 e!1544478)))

(declare-fun res!1031468 () Bool)

(assert (=> b!2428586 (=> (not res!1031468) (not e!1544478))))

(assert (=> b!2428586 (= res!1031468 (not lt!876778))))

(declare-fun bm!148604 () Bool)

(declare-fun isEmpty!16453 (List!28511) Bool)

(assert (=> bm!148604 (= call!148609 (isEmpty!16453 s!9460))))

(declare-fun b!2428587 () Bool)

(declare-fun res!1031467 () Bool)

(assert (=> b!2428587 (=> res!1031467 e!1544479)))

(assert (=> b!2428587 (= res!1031467 e!1544474)))

(declare-fun res!1031466 () Bool)

(assert (=> b!2428587 (=> (not res!1031466) (not e!1544474))))

(assert (=> b!2428587 (= res!1031466 lt!876778)))

(declare-fun b!2428588 () Bool)

(assert (=> b!2428588 (= e!1544478 e!1544476)))

(declare-fun res!1031464 () Bool)

(assert (=> b!2428588 (=> res!1031464 e!1544476)))

(assert (=> b!2428588 (= res!1031464 call!148609)))

(declare-fun b!2428590 () Bool)

(declare-fun res!1031465 () Bool)

(assert (=> b!2428590 (=> (not res!1031465) (not e!1544474))))

(assert (=> b!2428590 (= res!1031465 (not call!148609))))

(declare-fun b!2428591 () Bool)

(declare-fun res!1031469 () Bool)

(assert (=> b!2428591 (=> res!1031469 e!1544479)))

(assert (=> b!2428591 (= res!1031469 (not (is-ElementMatch!7136 r!13927)))))

(assert (=> b!2428591 (= e!1544473 e!1544479)))

(declare-fun b!2428592 () Bool)

(declare-fun res!1031470 () Bool)

(assert (=> b!2428592 (=> (not res!1031470) (not e!1544474))))

(declare-fun tail!3755 (List!28511) List!28511)

(assert (=> b!2428592 (= res!1031470 (isEmpty!16453 (tail!3755 s!9460)))))

(declare-fun b!2428593 () Bool)

(assert (=> b!2428593 (= e!1544475 e!1544473)))

(declare-fun c!387424 () Bool)

(assert (=> b!2428593 (= c!387424 (is-EmptyLang!7136 r!13927))))

(declare-fun b!2428594 () Bool)

(declare-fun res!1031463 () Bool)

(assert (=> b!2428594 (=> res!1031463 e!1544476)))

(assert (=> b!2428594 (= res!1031463 (not (isEmpty!16453 (tail!3755 s!9460))))))

(declare-fun b!2428589 () Bool)

(declare-fun derivativeStep!1827 (Regex!7136 C!14430) Regex!7136)

(assert (=> b!2428589 (= e!1544477 (matchR!3253 (derivativeStep!1827 r!13927 (head!5483 s!9460)) (tail!3755 s!9460)))))

(declare-fun d!702905 () Bool)

(assert (=> d!702905 e!1544475))

(declare-fun c!387426 () Bool)

(assert (=> d!702905 (= c!387426 (is-EmptyExpr!7136 r!13927))))

(assert (=> d!702905 (= lt!876778 e!1544477)))

(declare-fun c!387425 () Bool)

(assert (=> d!702905 (= c!387425 (isEmpty!16453 s!9460))))

(assert (=> d!702905 (validRegex!2855 r!13927)))

(assert (=> d!702905 (= (matchR!3253 r!13927 s!9460) lt!876778)))

(assert (= (and d!702905 c!387425) b!2428583))

(assert (= (and d!702905 (not c!387425)) b!2428589))

(assert (= (and d!702905 c!387426) b!2428584))

(assert (= (and d!702905 (not c!387426)) b!2428593))

(assert (= (and b!2428593 c!387424) b!2428585))

(assert (= (and b!2428593 (not c!387424)) b!2428591))

(assert (= (and b!2428591 (not res!1031469)) b!2428587))

(assert (= (and b!2428587 res!1031466) b!2428590))

(assert (= (and b!2428590 res!1031465) b!2428592))

(assert (= (and b!2428592 res!1031470) b!2428582))

(assert (= (and b!2428587 (not res!1031467)) b!2428586))

(assert (= (and b!2428586 res!1031468) b!2428588))

(assert (= (and b!2428588 (not res!1031464)) b!2428594))

(assert (= (and b!2428594 (not res!1031463)) b!2428581))

(assert (= (or b!2428584 b!2428588 b!2428590) bm!148604))

(declare-fun m!2812653 () Bool)

(assert (=> b!2428594 m!2812653))

(assert (=> b!2428594 m!2812653))

(declare-fun m!2812655 () Bool)

(assert (=> b!2428594 m!2812655))

(declare-fun m!2812657 () Bool)

(assert (=> b!2428582 m!2812657))

(assert (=> b!2428589 m!2812657))

(assert (=> b!2428589 m!2812657))

(declare-fun m!2812659 () Bool)

(assert (=> b!2428589 m!2812659))

(assert (=> b!2428589 m!2812653))

(assert (=> b!2428589 m!2812659))

(assert (=> b!2428589 m!2812653))

(declare-fun m!2812661 () Bool)

(assert (=> b!2428589 m!2812661))

(assert (=> b!2428581 m!2812657))

(declare-fun m!2812663 () Bool)

(assert (=> d!702905 m!2812663))

(declare-fun m!2812665 () Bool)

(assert (=> d!702905 m!2812665))

(assert (=> b!2428592 m!2812653))

(assert (=> b!2428592 m!2812653))

(assert (=> b!2428592 m!2812655))

(assert (=> bm!148604 m!2812663))

(declare-fun m!2812667 () Bool)

(assert (=> b!2428583 m!2812667))

(assert (=> b!2428478 d!702905))

(declare-fun b!2428664 () Bool)

(assert (=> b!2428664 true))

(assert (=> b!2428664 true))

(declare-fun bs!464054 () Bool)

(declare-fun b!2428665 () Bool)

(assert (= bs!464054 (and b!2428665 b!2428664)))

(declare-fun lambda!91555 () Int)

(declare-fun lambda!91554 () Int)

(assert (=> bs!464054 (not (= lambda!91555 lambda!91554))))

(assert (=> b!2428665 true))

(assert (=> b!2428665 true))

(declare-fun b!2428658 () Bool)

(declare-fun e!1544523 () Bool)

(declare-fun e!1544522 () Bool)

(assert (=> b!2428658 (= e!1544523 e!1544522)))

(declare-fun res!1031498 () Bool)

(assert (=> b!2428658 (= res!1031498 (not (is-EmptyLang!7136 r!13927)))))

(assert (=> b!2428658 (=> (not res!1031498) (not e!1544522))))

(declare-fun b!2428659 () Bool)

(declare-fun c!387446 () Bool)

(assert (=> b!2428659 (= c!387446 (is-ElementMatch!7136 r!13927))))

(declare-fun e!1544519 () Bool)

(assert (=> b!2428659 (= e!1544522 e!1544519)))

(declare-fun b!2428660 () Bool)

(declare-fun e!1544521 () Bool)

(declare-fun e!1544524 () Bool)

(assert (=> b!2428660 (= e!1544521 e!1544524)))

(declare-fun c!387447 () Bool)

(assert (=> b!2428660 (= c!387447 (is-Star!7136 r!13927))))

(declare-fun b!2428661 () Bool)

(declare-fun e!1544520 () Bool)

(assert (=> b!2428661 (= e!1544520 (matchRSpec!985 (regTwo!14785 r!13927) s!9460))))

(declare-fun call!148614 () Bool)

(declare-fun bm!148609 () Bool)

(declare-fun Exists!1176 (Int) Bool)

(assert (=> bm!148609 (= call!148614 (Exists!1176 (ite c!387447 lambda!91554 lambda!91555)))))

(declare-fun b!2428662 () Bool)

(declare-fun call!148615 () Bool)

(assert (=> b!2428662 (= e!1544523 call!148615)))

(declare-fun b!2428663 () Bool)

(declare-fun c!387448 () Bool)

(assert (=> b!2428663 (= c!387448 (is-Union!7136 r!13927))))

(assert (=> b!2428663 (= e!1544519 e!1544521)))

(declare-fun e!1544518 () Bool)

(assert (=> b!2428664 (= e!1544518 call!148614)))

(declare-fun bm!148610 () Bool)

(assert (=> bm!148610 (= call!148615 (isEmpty!16453 s!9460))))

(assert (=> b!2428665 (= e!1544524 call!148614)))

(declare-fun d!702907 () Bool)

(declare-fun c!387445 () Bool)

(assert (=> d!702907 (= c!387445 (is-EmptyExpr!7136 r!13927))))

(assert (=> d!702907 (= (matchRSpec!985 r!13927 s!9460) e!1544523)))

(declare-fun b!2428657 () Bool)

(assert (=> b!2428657 (= e!1544521 e!1544520)))

(declare-fun res!1031499 () Bool)

(assert (=> b!2428657 (= res!1031499 (matchRSpec!985 (regOne!14785 r!13927) s!9460))))

(assert (=> b!2428657 (=> res!1031499 e!1544520)))

(declare-fun b!2428666 () Bool)

(assert (=> b!2428666 (= e!1544519 (= s!9460 (Cons!28413 (c!387402 r!13927) Nil!28413)))))

(declare-fun b!2428667 () Bool)

(declare-fun res!1031497 () Bool)

(assert (=> b!2428667 (=> res!1031497 e!1544518)))

(assert (=> b!2428667 (= res!1031497 call!148615)))

(assert (=> b!2428667 (= e!1544524 e!1544518)))

(assert (= (and d!702907 c!387445) b!2428662))

(assert (= (and d!702907 (not c!387445)) b!2428658))

(assert (= (and b!2428658 res!1031498) b!2428659))

(assert (= (and b!2428659 c!387446) b!2428666))

(assert (= (and b!2428659 (not c!387446)) b!2428663))

(assert (= (and b!2428663 c!387448) b!2428657))

(assert (= (and b!2428663 (not c!387448)) b!2428660))

(assert (= (and b!2428657 (not res!1031499)) b!2428661))

(assert (= (and b!2428660 c!387447) b!2428667))

(assert (= (and b!2428660 (not c!387447)) b!2428665))

(assert (= (and b!2428667 (not res!1031497)) b!2428664))

(assert (= (or b!2428664 b!2428665) bm!148609))

(assert (= (or b!2428662 b!2428667) bm!148610))

(declare-fun m!2812691 () Bool)

(assert (=> b!2428661 m!2812691))

(declare-fun m!2812693 () Bool)

(assert (=> bm!148609 m!2812693))

(assert (=> bm!148610 m!2812663))

(declare-fun m!2812695 () Bool)

(assert (=> b!2428657 m!2812695))

(assert (=> b!2428478 d!702907))

(declare-fun d!702915 () Bool)

(assert (=> d!702915 (= (matchR!3253 r!13927 s!9460) (matchRSpec!985 r!13927 s!9460))))

(declare-fun lt!876782 () Unit!41659)

(declare-fun choose!14398 (Regex!7136 List!28511) Unit!41659)

(assert (=> d!702915 (= lt!876782 (choose!14398 r!13927 s!9460))))

(assert (=> d!702915 (validRegex!2855 r!13927)))

(assert (=> d!702915 (= (mainMatchTheorem!985 r!13927 s!9460) lt!876782)))

(declare-fun bs!464055 () Bool)

(assert (= bs!464055 d!702915))

(assert (=> bs!464055 m!2812609))

(assert (=> bs!464055 m!2812611))

(declare-fun m!2812697 () Bool)

(assert (=> bs!464055 m!2812697))

(assert (=> bs!464055 m!2812665))

(assert (=> b!2428478 d!702915))

(declare-fun d!702917 () Bool)

(assert (=> d!702917 (= (isEmpty!16451 l!9164) (is-Nil!28412 l!9164))))

(assert (=> b!2428476 d!702917))

(declare-fun b!2428684 () Bool)

(declare-fun e!1544527 () Bool)

(declare-fun tp!770964 () Bool)

(assert (=> b!2428684 (= e!1544527 tp!770964)))

(declare-fun b!2428685 () Bool)

(declare-fun tp!770962 () Bool)

(declare-fun tp!770963 () Bool)

(assert (=> b!2428685 (= e!1544527 (and tp!770962 tp!770963))))

(declare-fun b!2428683 () Bool)

(declare-fun tp!770961 () Bool)

(declare-fun tp!770960 () Bool)

(assert (=> b!2428683 (= e!1544527 (and tp!770961 tp!770960))))

(assert (=> b!2428480 (= tp!770921 e!1544527)))

(declare-fun b!2428682 () Bool)

(assert (=> b!2428682 (= e!1544527 tp_is_empty!11685)))

(assert (= (and b!2428480 (is-ElementMatch!7136 (h!33813 l!9164))) b!2428682))

(assert (= (and b!2428480 (is-Concat!11772 (h!33813 l!9164))) b!2428683))

(assert (= (and b!2428480 (is-Star!7136 (h!33813 l!9164))) b!2428684))

(assert (= (and b!2428480 (is-Union!7136 (h!33813 l!9164))) b!2428685))

(declare-fun b!2428690 () Bool)

(declare-fun e!1544530 () Bool)

(declare-fun tp!770969 () Bool)

(declare-fun tp!770970 () Bool)

(assert (=> b!2428690 (= e!1544530 (and tp!770969 tp!770970))))

(assert (=> b!2428480 (= tp!770920 e!1544530)))

(assert (= (and b!2428480 (is-Cons!28412 (t!208487 l!9164))) b!2428690))

(declare-fun b!2428695 () Bool)

(declare-fun e!1544533 () Bool)

(declare-fun tp!770973 () Bool)

(assert (=> b!2428695 (= e!1544533 (and tp_is_empty!11685 tp!770973))))

(assert (=> b!2428479 (= tp!770924 e!1544533)))

(assert (= (and b!2428479 (is-Cons!28413 (t!208488 s!9460))) b!2428695))

(declare-fun b!2428698 () Bool)

(declare-fun e!1544534 () Bool)

(declare-fun tp!770978 () Bool)

(assert (=> b!2428698 (= e!1544534 tp!770978)))

(declare-fun b!2428699 () Bool)

(declare-fun tp!770976 () Bool)

(declare-fun tp!770977 () Bool)

(assert (=> b!2428699 (= e!1544534 (and tp!770976 tp!770977))))

(declare-fun b!2428697 () Bool)

(declare-fun tp!770975 () Bool)

(declare-fun tp!770974 () Bool)

(assert (=> b!2428697 (= e!1544534 (and tp!770975 tp!770974))))

(assert (=> b!2428483 (= tp!770922 e!1544534)))

(declare-fun b!2428696 () Bool)

(assert (=> b!2428696 (= e!1544534 tp_is_empty!11685)))

(assert (= (and b!2428483 (is-ElementMatch!7136 (regOne!14784 r!13927))) b!2428696))

(assert (= (and b!2428483 (is-Concat!11772 (regOne!14784 r!13927))) b!2428697))

(assert (= (and b!2428483 (is-Star!7136 (regOne!14784 r!13927))) b!2428698))

(assert (= (and b!2428483 (is-Union!7136 (regOne!14784 r!13927))) b!2428699))

(declare-fun b!2428702 () Bool)

(declare-fun e!1544535 () Bool)

(declare-fun tp!770983 () Bool)

(assert (=> b!2428702 (= e!1544535 tp!770983)))

(declare-fun b!2428703 () Bool)

(declare-fun tp!770981 () Bool)

(declare-fun tp!770982 () Bool)

(assert (=> b!2428703 (= e!1544535 (and tp!770981 tp!770982))))

(declare-fun b!2428701 () Bool)

(declare-fun tp!770980 () Bool)

(declare-fun tp!770979 () Bool)

(assert (=> b!2428701 (= e!1544535 (and tp!770980 tp!770979))))

(assert (=> b!2428483 (= tp!770918 e!1544535)))

(declare-fun b!2428700 () Bool)

(assert (=> b!2428700 (= e!1544535 tp_is_empty!11685)))

(assert (= (and b!2428483 (is-ElementMatch!7136 (regTwo!14784 r!13927))) b!2428700))

(assert (= (and b!2428483 (is-Concat!11772 (regTwo!14784 r!13927))) b!2428701))

(assert (= (and b!2428483 (is-Star!7136 (regTwo!14784 r!13927))) b!2428702))

(assert (= (and b!2428483 (is-Union!7136 (regTwo!14784 r!13927))) b!2428703))

(declare-fun b!2428706 () Bool)

(declare-fun e!1544536 () Bool)

(declare-fun tp!770988 () Bool)

(assert (=> b!2428706 (= e!1544536 tp!770988)))

(declare-fun b!2428707 () Bool)

(declare-fun tp!770986 () Bool)

(declare-fun tp!770987 () Bool)

(assert (=> b!2428707 (= e!1544536 (and tp!770986 tp!770987))))

(declare-fun b!2428705 () Bool)

(declare-fun tp!770985 () Bool)

(declare-fun tp!770984 () Bool)

(assert (=> b!2428705 (= e!1544536 (and tp!770985 tp!770984))))

(assert (=> b!2428482 (= tp!770925 e!1544536)))

(declare-fun b!2428704 () Bool)

(assert (=> b!2428704 (= e!1544536 tp_is_empty!11685)))

(assert (= (and b!2428482 (is-ElementMatch!7136 (regOne!14785 r!13927))) b!2428704))

(assert (= (and b!2428482 (is-Concat!11772 (regOne!14785 r!13927))) b!2428705))

(assert (= (and b!2428482 (is-Star!7136 (regOne!14785 r!13927))) b!2428706))

(assert (= (and b!2428482 (is-Union!7136 (regOne!14785 r!13927))) b!2428707))

(declare-fun b!2428710 () Bool)

(declare-fun e!1544537 () Bool)

(declare-fun tp!770993 () Bool)

(assert (=> b!2428710 (= e!1544537 tp!770993)))

(declare-fun b!2428711 () Bool)

(declare-fun tp!770991 () Bool)

(declare-fun tp!770992 () Bool)

(assert (=> b!2428711 (= e!1544537 (and tp!770991 tp!770992))))

(declare-fun b!2428709 () Bool)

(declare-fun tp!770990 () Bool)

(declare-fun tp!770989 () Bool)

(assert (=> b!2428709 (= e!1544537 (and tp!770990 tp!770989))))

(assert (=> b!2428482 (= tp!770923 e!1544537)))

(declare-fun b!2428708 () Bool)

(assert (=> b!2428708 (= e!1544537 tp_is_empty!11685)))

(assert (= (and b!2428482 (is-ElementMatch!7136 (regTwo!14785 r!13927))) b!2428708))

(assert (= (and b!2428482 (is-Concat!11772 (regTwo!14785 r!13927))) b!2428709))

(assert (= (and b!2428482 (is-Star!7136 (regTwo!14785 r!13927))) b!2428710))

(assert (= (and b!2428482 (is-Union!7136 (regTwo!14785 r!13927))) b!2428711))

(declare-fun b!2428714 () Bool)

(declare-fun e!1544538 () Bool)

(declare-fun tp!770998 () Bool)

(assert (=> b!2428714 (= e!1544538 tp!770998)))

(declare-fun b!2428715 () Bool)

(declare-fun tp!770996 () Bool)

(declare-fun tp!770997 () Bool)

(assert (=> b!2428715 (= e!1544538 (and tp!770996 tp!770997))))

(declare-fun b!2428713 () Bool)

(declare-fun tp!770995 () Bool)

(declare-fun tp!770994 () Bool)

(assert (=> b!2428713 (= e!1544538 (and tp!770995 tp!770994))))

(assert (=> b!2428477 (= tp!770919 e!1544538)))

(declare-fun b!2428712 () Bool)

(assert (=> b!2428712 (= e!1544538 tp_is_empty!11685)))

(assert (= (and b!2428477 (is-ElementMatch!7136 (reg!7465 r!13927))) b!2428712))

(assert (= (and b!2428477 (is-Concat!11772 (reg!7465 r!13927))) b!2428713))

(assert (= (and b!2428477 (is-Star!7136 (reg!7465 r!13927))) b!2428714))

(assert (= (and b!2428477 (is-Union!7136 (reg!7465 r!13927))) b!2428715))

(declare-fun b_lambda!74735 () Bool)

(assert (= b_lambda!74731 (or start!237842 b_lambda!74735)))

(declare-fun bs!464056 () Bool)

(declare-fun d!702919 () Bool)

(assert (= bs!464056 (and d!702919 start!237842)))

(assert (=> bs!464056 (= (dynLambda!12228 lambda!91540 (h!33813 l!9164)) (validRegex!2855 (h!33813 l!9164)))))

(declare-fun m!2812699 () Bool)

(assert (=> bs!464056 m!2812699))

(assert (=> b!2428545 d!702919))

(push 1)

(assert (not b!2428589))

(assert (not b!2428531))

(assert (not d!702899))

(assert (not b!2428705))

(assert (not b!2428538))

(assert (not b!2428715))

(assert (not d!702905))

(assert (not b!2428713))

(assert (not b!2428592))

(assert (not d!702915))

(assert (not b!2428533))

(assert (not bm!148610))

(assert (not b!2428698))

(assert (not b!2428657))

(assert (not b!2428706))

(assert (not b!2428594))

(assert (not b!2428582))

(assert (not bm!148609))

(assert (not b!2428540))

(assert (not b!2428707))

(assert (not b!2428535))

(assert (not b!2428714))

(assert (not b!2428583))

(assert (not bm!148604))

(assert (not b!2428702))

(assert (not b!2428697))

(assert (not b!2428532))

(assert (not b!2428684))

(assert tp_is_empty!11685)

(assert (not b!2428703))

(assert (not b!2428709))

(assert (not b_lambda!74735))

(assert (not b!2428534))

(assert (not b!2428695))

(assert (not b!2428711))

(assert (not bs!464056))

(assert (not b!2428685))

(assert (not b!2428683))

(assert (not b!2428581))

(assert (not b!2428701))

(assert (not b!2428710))

(assert (not b!2428661))

(assert (not b!2428546))

(assert (not b!2428699))

(assert (not b!2428690))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

