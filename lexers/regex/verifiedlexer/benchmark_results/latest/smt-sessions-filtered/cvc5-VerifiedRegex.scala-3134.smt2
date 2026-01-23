; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184576 () Bool)

(assert start!184576)

(declare-fun b!1849526 () Bool)

(assert (=> b!1849526 true))

(assert (=> b!1849526 true))

(declare-fun b!1849517 () Bool)

(declare-fun res!830442 () Bool)

(declare-fun e!1181640 () Bool)

(assert (=> b!1849517 (=> res!830442 e!1181640)))

(declare-datatypes ((C!10190 0))(
  ( (C!10191 (val!5821 Int)) )
))
(declare-datatypes ((List!20501 0))(
  ( (Nil!20429) (Cons!20429 (h!25830 C!10190) (t!172274 List!20501)) )
))
(declare-fun prefix!1614 () List!20501)

(declare-fun lt!715374 () List!20501)

(declare-fun isPrefix!1893 (List!20501 List!20501) Bool)

(assert (=> b!1849517 (= res!830442 (not (isPrefix!1893 prefix!1614 lt!715374)))))

(declare-fun b!1849518 () Bool)

(declare-fun res!830444 () Bool)

(declare-fun e!1181641 () Bool)

(assert (=> b!1849518 (=> (not res!830444) (not e!1181641))))

(declare-datatypes ((Regex!5020 0))(
  ( (ElementMatch!5020 (c!301905 C!10190)) (Concat!8798 (regOne!10552 Regex!5020) (regTwo!10552 Regex!5020)) (EmptyExpr!5020) (Star!5020 (reg!5349 Regex!5020)) (EmptyLang!5020) (Union!5020 (regOne!10553 Regex!5020) (regTwo!10553 Regex!5020)) )
))
(declare-fun r!26091 () Regex!5020)

(declare-fun c!13459 () C!10190)

(declare-fun contains!3785 (List!20501 C!10190) Bool)

(declare-fun usedCharacters!325 (Regex!5020) List!20501)

(assert (=> b!1849518 (= res!830444 (not (contains!3785 (usedCharacters!325 r!26091) c!13459)))))

(declare-fun b!1849519 () Bool)

(declare-fun res!830438 () Bool)

(assert (=> b!1849519 (=> (not res!830438) (not e!1181641))))

(declare-fun prefixMatch!797 (Regex!5020 List!20501) Bool)

(assert (=> b!1849519 (= res!830438 (prefixMatch!797 r!26091 prefix!1614))))

(declare-fun b!1849521 () Bool)

(declare-fun e!1181638 () Bool)

(declare-fun tp_is_empty!8489 () Bool)

(assert (=> b!1849521 (= e!1181638 tp_is_empty!8489)))

(declare-fun b!1849522 () Bool)

(declare-fun res!830437 () Bool)

(assert (=> b!1849522 (=> res!830437 e!1181640)))

(declare-fun ++!5545 (List!20501 List!20501) List!20501)

(declare-fun getSuffix!997 (List!20501 List!20501) List!20501)

(assert (=> b!1849522 (= res!830437 (not (= lt!715374 (++!5545 prefix!1614 (getSuffix!997 lt!715374 prefix!1614)))))))

(declare-fun b!1849523 () Bool)

(declare-fun tp!522996 () Bool)

(assert (=> b!1849523 (= e!1181638 tp!522996)))

(declare-fun b!1849524 () Bool)

(declare-fun res!830443 () Bool)

(assert (=> b!1849524 (=> (not res!830443) (not e!1181641))))

(assert (=> b!1849524 (= res!830443 (contains!3785 prefix!1614 c!13459))))

(declare-fun b!1849525 () Bool)

(declare-fun tp!522994 () Bool)

(declare-fun tp!522992 () Bool)

(assert (=> b!1849525 (= e!1181638 (and tp!522994 tp!522992))))

(declare-fun e!1181642 () Bool)

(assert (=> b!1849526 (= e!1181641 (not e!1181642))))

(declare-fun res!830440 () Bool)

(assert (=> b!1849526 (=> res!830440 e!1181642)))

(declare-fun lambda!73149 () Int)

(declare-fun Exists!974 (Int) Bool)

(assert (=> b!1849526 (= res!830440 (not (Exists!974 lambda!73149)))))

(assert (=> b!1849526 (Exists!974 lambda!73149)))

(declare-datatypes ((Unit!35115 0))(
  ( (Unit!35116) )
))
(declare-fun lt!715373 () Unit!35115)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!292 (Regex!5020 List!20501) Unit!35115)

(assert (=> b!1849526 (= lt!715373 (lemmaPrefixMatchThenExistsStringThatMatches!292 r!26091 prefix!1614))))

(declare-fun b!1849527 () Bool)

(assert (=> b!1849527 (= e!1181640 (contains!3785 lt!715374 c!13459))))

(declare-fun b!1849520 () Bool)

(declare-fun e!1181639 () Bool)

(declare-fun tp!522995 () Bool)

(assert (=> b!1849520 (= e!1181639 (and tp_is_empty!8489 tp!522995))))

(declare-fun res!830439 () Bool)

(assert (=> start!184576 (=> (not res!830439) (not e!1181641))))

(declare-fun validRegex!2064 (Regex!5020) Bool)

(assert (=> start!184576 (= res!830439 (validRegex!2064 r!26091))))

(assert (=> start!184576 e!1181641))

(assert (=> start!184576 e!1181638))

(assert (=> start!184576 e!1181639))

(assert (=> start!184576 tp_is_empty!8489))

(declare-fun b!1849528 () Bool)

(assert (=> b!1849528 (= e!1181642 e!1181640)))

(declare-fun res!830441 () Bool)

(assert (=> b!1849528 (=> res!830441 e!1181640)))

(declare-fun matchR!2457 (Regex!5020 List!20501) Bool)

(assert (=> b!1849528 (= res!830441 (not (matchR!2457 r!26091 lt!715374)))))

(declare-fun pickWitness!271 (Int) List!20501)

(assert (=> b!1849528 (= lt!715374 (pickWitness!271 lambda!73149))))

(declare-fun b!1849529 () Bool)

(declare-fun tp!522993 () Bool)

(declare-fun tp!522997 () Bool)

(assert (=> b!1849529 (= e!1181638 (and tp!522993 tp!522997))))

(assert (= (and start!184576 res!830439) b!1849524))

(assert (= (and b!1849524 res!830443) b!1849518))

(assert (= (and b!1849518 res!830444) b!1849519))

(assert (= (and b!1849519 res!830438) b!1849526))

(assert (= (and b!1849526 (not res!830440)) b!1849528))

(assert (= (and b!1849528 (not res!830441)) b!1849517))

(assert (= (and b!1849517 (not res!830442)) b!1849522))

(assert (= (and b!1849522 (not res!830437)) b!1849527))

(assert (= (and start!184576 (is-ElementMatch!5020 r!26091)) b!1849521))

(assert (= (and start!184576 (is-Concat!8798 r!26091)) b!1849529))

(assert (= (and start!184576 (is-Star!5020 r!26091)) b!1849523))

(assert (= (and start!184576 (is-Union!5020 r!26091)) b!1849525))

(assert (= (and start!184576 (is-Cons!20429 prefix!1614)) b!1849520))

(declare-fun m!2276637 () Bool)

(assert (=> b!1849527 m!2276637))

(declare-fun m!2276639 () Bool)

(assert (=> b!1849526 m!2276639))

(assert (=> b!1849526 m!2276639))

(declare-fun m!2276641 () Bool)

(assert (=> b!1849526 m!2276641))

(declare-fun m!2276643 () Bool)

(assert (=> b!1849518 m!2276643))

(assert (=> b!1849518 m!2276643))

(declare-fun m!2276645 () Bool)

(assert (=> b!1849518 m!2276645))

(declare-fun m!2276647 () Bool)

(assert (=> b!1849528 m!2276647))

(declare-fun m!2276649 () Bool)

(assert (=> b!1849528 m!2276649))

(declare-fun m!2276651 () Bool)

(assert (=> b!1849522 m!2276651))

(assert (=> b!1849522 m!2276651))

(declare-fun m!2276653 () Bool)

(assert (=> b!1849522 m!2276653))

(declare-fun m!2276655 () Bool)

(assert (=> b!1849517 m!2276655))

(declare-fun m!2276657 () Bool)

(assert (=> start!184576 m!2276657))

(declare-fun m!2276659 () Bool)

(assert (=> b!1849524 m!2276659))

(declare-fun m!2276661 () Bool)

(assert (=> b!1849519 m!2276661))

(push 1)

(assert (not b!1849526))

(assert (not b!1849522))

(assert (not b!1849520))

(assert (not b!1849527))

(assert (not b!1849517))

(assert (not b!1849525))

(assert (not start!184576))

(assert (not b!1849518))

(assert (not b!1849519))

(assert tp_is_empty!8489)

(assert (not b!1849523))

(assert (not b!1849524))

(assert (not b!1849528))

(assert (not b!1849529))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!565643 () Bool)

(declare-fun lt!715383 () Bool)

(declare-fun content!3048 (List!20501) (Set C!10190))

(assert (=> d!565643 (= lt!715383 (set.member c!13459 (content!3048 lt!715374)))))

(declare-fun e!1181668 () Bool)

(assert (=> d!565643 (= lt!715383 e!1181668)))

(declare-fun res!830479 () Bool)

(assert (=> d!565643 (=> (not res!830479) (not e!1181668))))

(assert (=> d!565643 (= res!830479 (is-Cons!20429 lt!715374))))

(assert (=> d!565643 (= (contains!3785 lt!715374 c!13459) lt!715383)))

(declare-fun b!1849587 () Bool)

(declare-fun e!1181669 () Bool)

(assert (=> b!1849587 (= e!1181668 e!1181669)))

(declare-fun res!830480 () Bool)

(assert (=> b!1849587 (=> res!830480 e!1181669)))

(assert (=> b!1849587 (= res!830480 (= (h!25830 lt!715374) c!13459))))

(declare-fun b!1849588 () Bool)

(assert (=> b!1849588 (= e!1181669 (contains!3785 (t!172274 lt!715374) c!13459))))

(assert (= (and d!565643 res!830479) b!1849587))

(assert (= (and b!1849587 (not res!830480)) b!1849588))

(declare-fun m!2276689 () Bool)

(assert (=> d!565643 m!2276689))

(declare-fun m!2276691 () Bool)

(assert (=> d!565643 m!2276691))

(declare-fun m!2276693 () Bool)

(assert (=> b!1849588 m!2276693))

(assert (=> b!1849527 d!565643))

(declare-fun d!565645 () Bool)

(declare-fun choose!11641 (Int) Bool)

(assert (=> d!565645 (= (Exists!974 lambda!73149) (choose!11641 lambda!73149))))

(declare-fun bs!409776 () Bool)

(assert (= bs!409776 d!565645))

(declare-fun m!2276695 () Bool)

(assert (=> bs!409776 m!2276695))

(assert (=> b!1849526 d!565645))

(declare-fun bs!409777 () Bool)

(declare-fun d!565647 () Bool)

(assert (= bs!409777 (and d!565647 b!1849526)))

(declare-fun lambda!73159 () Int)

(assert (=> bs!409777 (= lambda!73159 lambda!73149)))

(assert (=> d!565647 true))

(assert (=> d!565647 true))

(assert (=> d!565647 (Exists!974 lambda!73159)))

(declare-fun lt!715386 () Unit!35115)

(declare-fun choose!11642 (Regex!5020 List!20501) Unit!35115)

(assert (=> d!565647 (= lt!715386 (choose!11642 r!26091 prefix!1614))))

(assert (=> d!565647 (validRegex!2064 r!26091)))

(assert (=> d!565647 (= (lemmaPrefixMatchThenExistsStringThatMatches!292 r!26091 prefix!1614) lt!715386)))

(declare-fun bs!409778 () Bool)

(assert (= bs!409778 d!565647))

(declare-fun m!2276697 () Bool)

(assert (=> bs!409778 m!2276697))

(declare-fun m!2276699 () Bool)

(assert (=> bs!409778 m!2276699))

(assert (=> bs!409778 m!2276657))

(assert (=> b!1849526 d!565647))

(declare-fun b!1849619 () Bool)

(declare-fun e!1181692 () Bool)

(declare-fun nullable!1562 (Regex!5020) Bool)

(assert (=> b!1849619 (= e!1181692 (nullable!1562 r!26091))))

(declare-fun b!1849620 () Bool)

(declare-fun res!830503 () Bool)

(declare-fun e!1181687 () Bool)

(assert (=> b!1849620 (=> res!830503 e!1181687)))

(declare-fun e!1181690 () Bool)

(assert (=> b!1849620 (= res!830503 e!1181690)))

(declare-fun res!830501 () Bool)

(assert (=> b!1849620 (=> (not res!830501) (not e!1181690))))

(declare-fun lt!715389 () Bool)

(assert (=> b!1849620 (= res!830501 lt!715389)))

(declare-fun b!1849621 () Bool)

(declare-fun e!1181688 () Bool)

(assert (=> b!1849621 (= e!1181687 e!1181688)))

(declare-fun res!830504 () Bool)

(assert (=> b!1849621 (=> (not res!830504) (not e!1181688))))

(assert (=> b!1849621 (= res!830504 (not lt!715389))))

(declare-fun b!1849622 () Bool)

(declare-fun head!4330 (List!20501) C!10190)

(assert (=> b!1849622 (= e!1181690 (= (head!4330 lt!715374) (c!301905 r!26091)))))

(declare-fun b!1849623 () Bool)

(declare-fun e!1181691 () Bool)

(declare-fun e!1181689 () Bool)

(assert (=> b!1849623 (= e!1181691 e!1181689)))

(declare-fun c!301915 () Bool)

(assert (=> b!1849623 (= c!301915 (is-EmptyLang!5020 r!26091))))

(declare-fun b!1849624 () Bool)

(declare-fun derivativeStep!1326 (Regex!5020 C!10190) Regex!5020)

(declare-fun tail!2793 (List!20501) List!20501)

(assert (=> b!1849624 (= e!1181692 (matchR!2457 (derivativeStep!1326 r!26091 (head!4330 lt!715374)) (tail!2793 lt!715374)))))

(declare-fun b!1849625 () Bool)

(declare-fun res!830502 () Bool)

(assert (=> b!1849625 (=> (not res!830502) (not e!1181690))))

(declare-fun call!115325 () Bool)

(assert (=> b!1849625 (= res!830502 (not call!115325))))

(declare-fun b!1849626 () Bool)

(assert (=> b!1849626 (= e!1181691 (= lt!715389 call!115325))))

(declare-fun d!565649 () Bool)

(assert (=> d!565649 e!1181691))

(declare-fun c!301914 () Bool)

(assert (=> d!565649 (= c!301914 (is-EmptyExpr!5020 r!26091))))

(assert (=> d!565649 (= lt!715389 e!1181692)))

(declare-fun c!301913 () Bool)

(declare-fun isEmpty!12779 (List!20501) Bool)

(assert (=> d!565649 (= c!301913 (isEmpty!12779 lt!715374))))

(assert (=> d!565649 (validRegex!2064 r!26091)))

(assert (=> d!565649 (= (matchR!2457 r!26091 lt!715374) lt!715389)))

(declare-fun b!1849627 () Bool)

(declare-fun res!830500 () Bool)

(declare-fun e!1181686 () Bool)

(assert (=> b!1849627 (=> res!830500 e!1181686)))

(assert (=> b!1849627 (= res!830500 (not (isEmpty!12779 (tail!2793 lt!715374))))))

(declare-fun b!1849628 () Bool)

(declare-fun res!830499 () Bool)

(assert (=> b!1849628 (=> res!830499 e!1181687)))

(assert (=> b!1849628 (= res!830499 (not (is-ElementMatch!5020 r!26091)))))

(assert (=> b!1849628 (= e!1181689 e!1181687)))

(declare-fun b!1849629 () Bool)

(assert (=> b!1849629 (= e!1181688 e!1181686)))

(declare-fun res!830505 () Bool)

(assert (=> b!1849629 (=> res!830505 e!1181686)))

(assert (=> b!1849629 (= res!830505 call!115325)))

(declare-fun b!1849630 () Bool)

(assert (=> b!1849630 (= e!1181686 (not (= (head!4330 lt!715374) (c!301905 r!26091))))))

(declare-fun b!1849631 () Bool)

(declare-fun res!830506 () Bool)

(assert (=> b!1849631 (=> (not res!830506) (not e!1181690))))

(assert (=> b!1849631 (= res!830506 (isEmpty!12779 (tail!2793 lt!715374)))))

(declare-fun bm!115320 () Bool)

(assert (=> bm!115320 (= call!115325 (isEmpty!12779 lt!715374))))

(declare-fun b!1849632 () Bool)

(assert (=> b!1849632 (= e!1181689 (not lt!715389))))

(assert (= (and d!565649 c!301913) b!1849619))

(assert (= (and d!565649 (not c!301913)) b!1849624))

(assert (= (and d!565649 c!301914) b!1849626))

(assert (= (and d!565649 (not c!301914)) b!1849623))

(assert (= (and b!1849623 c!301915) b!1849632))

(assert (= (and b!1849623 (not c!301915)) b!1849628))

(assert (= (and b!1849628 (not res!830499)) b!1849620))

(assert (= (and b!1849620 res!830501) b!1849625))

(assert (= (and b!1849625 res!830502) b!1849631))

(assert (= (and b!1849631 res!830506) b!1849622))

(assert (= (and b!1849620 (not res!830503)) b!1849621))

(assert (= (and b!1849621 res!830504) b!1849629))

(assert (= (and b!1849629 (not res!830505)) b!1849627))

(assert (= (and b!1849627 (not res!830500)) b!1849630))

(assert (= (or b!1849626 b!1849625 b!1849629) bm!115320))

(declare-fun m!2276701 () Bool)

(assert (=> bm!115320 m!2276701))

(declare-fun m!2276703 () Bool)

(assert (=> b!1849630 m!2276703))

(declare-fun m!2276705 () Bool)

(assert (=> b!1849619 m!2276705))

(assert (=> d!565649 m!2276701))

(assert (=> d!565649 m!2276657))

(declare-fun m!2276707 () Bool)

(assert (=> b!1849627 m!2276707))

(assert (=> b!1849627 m!2276707))

(declare-fun m!2276709 () Bool)

(assert (=> b!1849627 m!2276709))

(assert (=> b!1849622 m!2276703))

(assert (=> b!1849631 m!2276707))

(assert (=> b!1849631 m!2276707))

(assert (=> b!1849631 m!2276709))

(assert (=> b!1849624 m!2276703))

(assert (=> b!1849624 m!2276703))

(declare-fun m!2276711 () Bool)

(assert (=> b!1849624 m!2276711))

(assert (=> b!1849624 m!2276707))

(assert (=> b!1849624 m!2276711))

(assert (=> b!1849624 m!2276707))

(declare-fun m!2276713 () Bool)

(assert (=> b!1849624 m!2276713))

(assert (=> b!1849528 d!565649))

(declare-fun d!565653 () Bool)

(declare-fun lt!715392 () List!20501)

(declare-fun dynLambda!10157 (Int List!20501) Bool)

(assert (=> d!565653 (dynLambda!10157 lambda!73149 lt!715392)))

(declare-fun choose!11643 (Int) List!20501)

(assert (=> d!565653 (= lt!715392 (choose!11643 lambda!73149))))

(assert (=> d!565653 (Exists!974 lambda!73149)))

(assert (=> d!565653 (= (pickWitness!271 lambda!73149) lt!715392)))

(declare-fun b_lambda!61413 () Bool)

(assert (=> (not b_lambda!61413) (not d!565653)))

(declare-fun bs!409779 () Bool)

(assert (= bs!409779 d!565653))

(declare-fun m!2276715 () Bool)

(assert (=> bs!409779 m!2276715))

(declare-fun m!2276717 () Bool)

(assert (=> bs!409779 m!2276717))

(assert (=> bs!409779 m!2276639))

(assert (=> b!1849528 d!565653))

(declare-fun b!1849664 () Bool)

(declare-fun e!1181707 () List!20501)

(assert (=> b!1849664 (= e!1181707 (Cons!20429 (h!25830 prefix!1614) (++!5545 (t!172274 prefix!1614) (getSuffix!997 lt!715374 prefix!1614))))))

(declare-fun d!565655 () Bool)

(declare-fun e!1181708 () Bool)

(assert (=> d!565655 e!1181708))

(declare-fun res!830521 () Bool)

(assert (=> d!565655 (=> (not res!830521) (not e!1181708))))

(declare-fun lt!715397 () List!20501)

(assert (=> d!565655 (= res!830521 (= (content!3048 lt!715397) (set.union (content!3048 prefix!1614) (content!3048 (getSuffix!997 lt!715374 prefix!1614)))))))

(assert (=> d!565655 (= lt!715397 e!1181707)))

(declare-fun c!301924 () Bool)

(assert (=> d!565655 (= c!301924 (is-Nil!20429 prefix!1614))))

(assert (=> d!565655 (= (++!5545 prefix!1614 (getSuffix!997 lt!715374 prefix!1614)) lt!715397)))

(declare-fun b!1849663 () Bool)

(assert (=> b!1849663 (= e!1181707 (getSuffix!997 lt!715374 prefix!1614))))

(declare-fun b!1849665 () Bool)

(declare-fun res!830522 () Bool)

(assert (=> b!1849665 (=> (not res!830522) (not e!1181708))))

(declare-fun size!16145 (List!20501) Int)

(assert (=> b!1849665 (= res!830522 (= (size!16145 lt!715397) (+ (size!16145 prefix!1614) (size!16145 (getSuffix!997 lt!715374 prefix!1614)))))))

(declare-fun b!1849666 () Bool)

(assert (=> b!1849666 (= e!1181708 (or (not (= (getSuffix!997 lt!715374 prefix!1614) Nil!20429)) (= lt!715397 prefix!1614)))))

(assert (= (and d!565655 c!301924) b!1849663))

(assert (= (and d!565655 (not c!301924)) b!1849664))

(assert (= (and d!565655 res!830521) b!1849665))

(assert (= (and b!1849665 res!830522) b!1849666))

(assert (=> b!1849664 m!2276651))

(declare-fun m!2276719 () Bool)

(assert (=> b!1849664 m!2276719))

(declare-fun m!2276721 () Bool)

(assert (=> d!565655 m!2276721))

(declare-fun m!2276723 () Bool)

(assert (=> d!565655 m!2276723))

(assert (=> d!565655 m!2276651))

(declare-fun m!2276725 () Bool)

(assert (=> d!565655 m!2276725))

(declare-fun m!2276727 () Bool)

(assert (=> b!1849665 m!2276727))

(declare-fun m!2276729 () Bool)

(assert (=> b!1849665 m!2276729))

(assert (=> b!1849665 m!2276651))

(declare-fun m!2276731 () Bool)

(assert (=> b!1849665 m!2276731))

(assert (=> b!1849522 d!565655))

(declare-fun d!565657 () Bool)

(declare-fun lt!715400 () List!20501)

(assert (=> d!565657 (= (++!5545 prefix!1614 lt!715400) lt!715374)))

(declare-fun e!1181715 () List!20501)

(assert (=> d!565657 (= lt!715400 e!1181715)))

(declare-fun c!301927 () Bool)

(assert (=> d!565657 (= c!301927 (is-Cons!20429 prefix!1614))))

(assert (=> d!565657 (>= (size!16145 lt!715374) (size!16145 prefix!1614))))

(assert (=> d!565657 (= (getSuffix!997 lt!715374 prefix!1614) lt!715400)))

(declare-fun b!1849677 () Bool)

(assert (=> b!1849677 (= e!1181715 (getSuffix!997 (tail!2793 lt!715374) (t!172274 prefix!1614)))))

(declare-fun b!1849678 () Bool)

(assert (=> b!1849678 (= e!1181715 lt!715374)))

(assert (= (and d!565657 c!301927) b!1849677))

(assert (= (and d!565657 (not c!301927)) b!1849678))

(declare-fun m!2276733 () Bool)

(assert (=> d!565657 m!2276733))

(declare-fun m!2276735 () Bool)

(assert (=> d!565657 m!2276735))

(assert (=> d!565657 m!2276729))

(assert (=> b!1849677 m!2276707))

(assert (=> b!1849677 m!2276707))

(declare-fun m!2276737 () Bool)

(assert (=> b!1849677 m!2276737))

(assert (=> b!1849522 d!565657))

(declare-fun b!1849689 () Bool)

(declare-fun e!1181724 () Bool)

(assert (=> b!1849689 (= e!1181724 (isPrefix!1893 (tail!2793 prefix!1614) (tail!2793 lt!715374)))))

(declare-fun d!565659 () Bool)

(declare-fun e!1181722 () Bool)

(assert (=> d!565659 e!1181722))

(declare-fun res!830538 () Bool)

(assert (=> d!565659 (=> res!830538 e!1181722)))

(declare-fun lt!715403 () Bool)

(assert (=> d!565659 (= res!830538 (not lt!715403))))

(declare-fun e!1181723 () Bool)

(assert (=> d!565659 (= lt!715403 e!1181723)))

(declare-fun res!830537 () Bool)

(assert (=> d!565659 (=> res!830537 e!1181723)))

(assert (=> d!565659 (= res!830537 (is-Nil!20429 prefix!1614))))

(assert (=> d!565659 (= (isPrefix!1893 prefix!1614 lt!715374) lt!715403)))

(declare-fun b!1849687 () Bool)

(assert (=> b!1849687 (= e!1181723 e!1181724)))

(declare-fun res!830540 () Bool)

(assert (=> b!1849687 (=> (not res!830540) (not e!1181724))))

(assert (=> b!1849687 (= res!830540 (not (is-Nil!20429 lt!715374)))))

(declare-fun b!1849688 () Bool)

(declare-fun res!830539 () Bool)

(assert (=> b!1849688 (=> (not res!830539) (not e!1181724))))

(assert (=> b!1849688 (= res!830539 (= (head!4330 prefix!1614) (head!4330 lt!715374)))))

(declare-fun b!1849690 () Bool)

(assert (=> b!1849690 (= e!1181722 (>= (size!16145 lt!715374) (size!16145 prefix!1614)))))

(assert (= (and d!565659 (not res!830537)) b!1849687))

(assert (= (and b!1849687 res!830540) b!1849688))

(assert (= (and b!1849688 res!830539) b!1849689))

(assert (= (and d!565659 (not res!830538)) b!1849690))

(declare-fun m!2276739 () Bool)

(assert (=> b!1849689 m!2276739))

(assert (=> b!1849689 m!2276707))

(assert (=> b!1849689 m!2276739))

(assert (=> b!1849689 m!2276707))

(declare-fun m!2276741 () Bool)

(assert (=> b!1849689 m!2276741))

(declare-fun m!2276743 () Bool)

(assert (=> b!1849688 m!2276743))

(assert (=> b!1849688 m!2276703))

(assert (=> b!1849690 m!2276735))

(assert (=> b!1849690 m!2276729))

(assert (=> b!1849517 d!565659))

(declare-fun d!565661 () Bool)

(declare-fun lt!715404 () Bool)

(assert (=> d!565661 (= lt!715404 (set.member c!13459 (content!3048 prefix!1614)))))

(declare-fun e!1181725 () Bool)

(assert (=> d!565661 (= lt!715404 e!1181725)))

(declare-fun res!830541 () Bool)

(assert (=> d!565661 (=> (not res!830541) (not e!1181725))))

(assert (=> d!565661 (= res!830541 (is-Cons!20429 prefix!1614))))

(assert (=> d!565661 (= (contains!3785 prefix!1614 c!13459) lt!715404)))

(declare-fun b!1849691 () Bool)

(declare-fun e!1181726 () Bool)

(assert (=> b!1849691 (= e!1181725 e!1181726)))

(declare-fun res!830542 () Bool)

(assert (=> b!1849691 (=> res!830542 e!1181726)))

(assert (=> b!1849691 (= res!830542 (= (h!25830 prefix!1614) c!13459))))

(declare-fun b!1849692 () Bool)

(assert (=> b!1849692 (= e!1181726 (contains!3785 (t!172274 prefix!1614) c!13459))))

(assert (= (and d!565661 res!830541) b!1849691))

(assert (= (and b!1849691 (not res!830542)) b!1849692))

(assert (=> d!565661 m!2276723))

(declare-fun m!2276745 () Bool)

(assert (=> d!565661 m!2276745))

(declare-fun m!2276747 () Bool)

(assert (=> b!1849692 m!2276747))

(assert (=> b!1849524 d!565661))

(declare-fun d!565663 () Bool)

(declare-fun c!301933 () Bool)

(assert (=> d!565663 (= c!301933 (isEmpty!12779 prefix!1614))))

(declare-fun e!1181736 () Bool)

(assert (=> d!565663 (= (prefixMatch!797 r!26091 prefix!1614) e!1181736)))

(declare-fun b!1849711 () Bool)

(declare-fun lostCause!633 (Regex!5020) Bool)

(assert (=> b!1849711 (= e!1181736 (not (lostCause!633 r!26091)))))

(declare-fun b!1849712 () Bool)

(assert (=> b!1849712 (= e!1181736 (prefixMatch!797 (derivativeStep!1326 r!26091 (head!4330 prefix!1614)) (tail!2793 prefix!1614)))))

(assert (= (and d!565663 c!301933) b!1849711))

(assert (= (and d!565663 (not c!301933)) b!1849712))

(declare-fun m!2276749 () Bool)

(assert (=> d!565663 m!2276749))

(declare-fun m!2276751 () Bool)

(assert (=> b!1849711 m!2276751))

(assert (=> b!1849712 m!2276743))

(assert (=> b!1849712 m!2276743))

(declare-fun m!2276753 () Bool)

(assert (=> b!1849712 m!2276753))

(assert (=> b!1849712 m!2276739))

(assert (=> b!1849712 m!2276753))

(assert (=> b!1849712 m!2276739))

(declare-fun m!2276755 () Bool)

(assert (=> b!1849712 m!2276755))

(assert (=> b!1849519 d!565663))

(declare-fun d!565665 () Bool)

(declare-fun lt!715406 () Bool)

(assert (=> d!565665 (= lt!715406 (set.member c!13459 (content!3048 (usedCharacters!325 r!26091))))))

(declare-fun e!1181737 () Bool)

(assert (=> d!565665 (= lt!715406 e!1181737)))

(declare-fun res!830551 () Bool)

(assert (=> d!565665 (=> (not res!830551) (not e!1181737))))

(assert (=> d!565665 (= res!830551 (is-Cons!20429 (usedCharacters!325 r!26091)))))

(assert (=> d!565665 (= (contains!3785 (usedCharacters!325 r!26091) c!13459) lt!715406)))

(declare-fun b!1849713 () Bool)

(declare-fun e!1181738 () Bool)

(assert (=> b!1849713 (= e!1181737 e!1181738)))

(declare-fun res!830552 () Bool)

(assert (=> b!1849713 (=> res!830552 e!1181738)))

(assert (=> b!1849713 (= res!830552 (= (h!25830 (usedCharacters!325 r!26091)) c!13459))))

(declare-fun b!1849714 () Bool)

(assert (=> b!1849714 (= e!1181738 (contains!3785 (t!172274 (usedCharacters!325 r!26091)) c!13459))))

(assert (= (and d!565665 res!830551) b!1849713))

(assert (= (and b!1849713 (not res!830552)) b!1849714))

(assert (=> d!565665 m!2276643))

(declare-fun m!2276757 () Bool)

(assert (=> d!565665 m!2276757))

(declare-fun m!2276759 () Bool)

(assert (=> d!565665 m!2276759))

(declare-fun m!2276761 () Bool)

(assert (=> b!1849714 m!2276761))

(assert (=> b!1849518 d!565665))

(declare-fun bm!115332 () Bool)

(declare-fun call!115338 () List!20501)

(declare-fun c!301942 () Bool)

(assert (=> bm!115332 (= call!115338 (usedCharacters!325 (ite c!301942 (regOne!10553 r!26091) (regTwo!10552 r!26091))))))

(declare-fun b!1849731 () Bool)

(declare-fun e!1181750 () List!20501)

(declare-fun call!115339 () List!20501)

(assert (=> b!1849731 (= e!1181750 call!115339)))

(declare-fun b!1849732 () Bool)

(declare-fun e!1181748 () List!20501)

(declare-fun e!1181747 () List!20501)

(assert (=> b!1849732 (= e!1181748 e!1181747)))

(declare-fun c!301943 () Bool)

(assert (=> b!1849732 (= c!301943 (is-ElementMatch!5020 r!26091))))

(declare-fun b!1849733 () Bool)

(declare-fun e!1181749 () List!20501)

(declare-fun call!115340 () List!20501)

(assert (=> b!1849733 (= e!1181749 call!115340)))

(declare-fun b!1849734 () Bool)

(assert (=> b!1849734 (= e!1181747 (Cons!20429 (c!301905 r!26091) Nil!20429))))

(declare-fun b!1849735 () Bool)

(assert (=> b!1849735 (= e!1181748 Nil!20429)))

(declare-fun c!301945 () Bool)

(declare-fun bm!115333 () Bool)

(assert (=> bm!115333 (= call!115340 (usedCharacters!325 (ite c!301945 (reg!5349 r!26091) (ite c!301942 (regTwo!10553 r!26091) (regOne!10552 r!26091)))))))

(declare-fun b!1849736 () Bool)

(assert (=> b!1849736 (= e!1181750 call!115339)))

(declare-fun d!565667 () Bool)

(declare-fun c!301944 () Bool)

(assert (=> d!565667 (= c!301944 (or (is-EmptyExpr!5020 r!26091) (is-EmptyLang!5020 r!26091)))))

(assert (=> d!565667 (= (usedCharacters!325 r!26091) e!1181748)))

(declare-fun bm!115334 () Bool)

(declare-fun call!115337 () List!20501)

(assert (=> bm!115334 (= call!115337 call!115340)))

(declare-fun b!1849737 () Bool)

(assert (=> b!1849737 (= e!1181749 e!1181750)))

(assert (=> b!1849737 (= c!301942 (is-Union!5020 r!26091))))

(declare-fun bm!115335 () Bool)

(assert (=> bm!115335 (= call!115339 (++!5545 (ite c!301942 call!115338 call!115337) (ite c!301942 call!115337 call!115338)))))

(declare-fun b!1849738 () Bool)

(assert (=> b!1849738 (= c!301945 (is-Star!5020 r!26091))))

(assert (=> b!1849738 (= e!1181747 e!1181749)))

(assert (= (and d!565667 c!301944) b!1849735))

(assert (= (and d!565667 (not c!301944)) b!1849732))

(assert (= (and b!1849732 c!301943) b!1849734))

(assert (= (and b!1849732 (not c!301943)) b!1849738))

(assert (= (and b!1849738 c!301945) b!1849733))

(assert (= (and b!1849738 (not c!301945)) b!1849737))

(assert (= (and b!1849737 c!301942) b!1849736))

(assert (= (and b!1849737 (not c!301942)) b!1849731))

(assert (= (or b!1849736 b!1849731) bm!115334))

(assert (= (or b!1849736 b!1849731) bm!115332))

(assert (= (or b!1849736 b!1849731) bm!115335))

(assert (= (or b!1849733 bm!115334) bm!115333))

(declare-fun m!2276781 () Bool)

(assert (=> bm!115332 m!2276781))

(declare-fun m!2276783 () Bool)

(assert (=> bm!115333 m!2276783))

(declare-fun m!2276785 () Bool)

(assert (=> bm!115335 m!2276785))

(assert (=> b!1849518 d!565667))

(declare-fun b!1849763 () Bool)

(declare-fun e!1181777 () Bool)

(declare-fun e!1181771 () Bool)

(assert (=> b!1849763 (= e!1181777 e!1181771)))

(declare-fun c!301950 () Bool)

(assert (=> b!1849763 (= c!301950 (is-Union!5020 r!26091))))

(declare-fun b!1849764 () Bool)

(declare-fun e!1181773 () Bool)

(declare-fun call!115348 () Bool)

(assert (=> b!1849764 (= e!1181773 call!115348)))

(declare-fun bm!115342 () Bool)

(declare-fun c!301951 () Bool)

(assert (=> bm!115342 (= call!115348 (validRegex!2064 (ite c!301951 (reg!5349 r!26091) (ite c!301950 (regTwo!10553 r!26091) (regTwo!10552 r!26091)))))))

(declare-fun bm!115343 () Bool)

(declare-fun call!115347 () Bool)

(assert (=> bm!115343 (= call!115347 call!115348)))

(declare-fun b!1849765 () Bool)

(declare-fun e!1181774 () Bool)

(assert (=> b!1849765 (= e!1181774 call!115347)))

(declare-fun b!1849766 () Bool)

(assert (=> b!1849766 (= e!1181777 e!1181773)))

(declare-fun res!830569 () Bool)

(assert (=> b!1849766 (= res!830569 (not (nullable!1562 (reg!5349 r!26091))))))

(assert (=> b!1849766 (=> (not res!830569) (not e!1181773))))

(declare-fun b!1849767 () Bool)

(declare-fun e!1181776 () Bool)

(assert (=> b!1849767 (= e!1181776 call!115347)))

(declare-fun bm!115344 () Bool)

(declare-fun call!115349 () Bool)

(assert (=> bm!115344 (= call!115349 (validRegex!2064 (ite c!301950 (regOne!10553 r!26091) (regOne!10552 r!26091))))))

(declare-fun d!565673 () Bool)

(declare-fun res!830573 () Bool)

(declare-fun e!1181775 () Bool)

(assert (=> d!565673 (=> res!830573 e!1181775)))

(assert (=> d!565673 (= res!830573 (is-ElementMatch!5020 r!26091))))

(assert (=> d!565673 (= (validRegex!2064 r!26091) e!1181775)))

(declare-fun b!1849768 () Bool)

(declare-fun e!1181772 () Bool)

(assert (=> b!1849768 (= e!1181772 e!1181774)))

(declare-fun res!830572 () Bool)

(assert (=> b!1849768 (=> (not res!830572) (not e!1181774))))

(assert (=> b!1849768 (= res!830572 call!115349)))

(declare-fun b!1849769 () Bool)

(declare-fun res!830571 () Bool)

(assert (=> b!1849769 (=> res!830571 e!1181772)))

(assert (=> b!1849769 (= res!830571 (not (is-Concat!8798 r!26091)))))

(assert (=> b!1849769 (= e!1181771 e!1181772)))

(declare-fun b!1849770 () Bool)

(declare-fun res!830570 () Bool)

(assert (=> b!1849770 (=> (not res!830570) (not e!1181776))))

(assert (=> b!1849770 (= res!830570 call!115349)))

(assert (=> b!1849770 (= e!1181771 e!1181776)))

(declare-fun b!1849771 () Bool)

(assert (=> b!1849771 (= e!1181775 e!1181777)))

(assert (=> b!1849771 (= c!301951 (is-Star!5020 r!26091))))

(assert (= (and d!565673 (not res!830573)) b!1849771))

(assert (= (and b!1849771 c!301951) b!1849766))

(assert (= (and b!1849771 (not c!301951)) b!1849763))

(assert (= (and b!1849766 res!830569) b!1849764))

(assert (= (and b!1849763 c!301950) b!1849770))

(assert (= (and b!1849763 (not c!301950)) b!1849769))

(assert (= (and b!1849770 res!830570) b!1849767))

(assert (= (and b!1849769 (not res!830571)) b!1849768))

(assert (= (and b!1849768 res!830572) b!1849765))

(assert (= (or b!1849767 b!1849765) bm!115343))

(assert (= (or b!1849770 b!1849768) bm!115344))

(assert (= (or b!1849764 bm!115343) bm!115342))

(declare-fun m!2276793 () Bool)

(assert (=> bm!115342 m!2276793))

(declare-fun m!2276795 () Bool)

(assert (=> b!1849766 m!2276795))

(declare-fun m!2276797 () Bool)

(assert (=> bm!115344 m!2276797))

(assert (=> start!184576 d!565673))

(declare-fun b!1849785 () Bool)

(declare-fun e!1181780 () Bool)

(declare-fun tp!523028 () Bool)

(declare-fun tp!523030 () Bool)

(assert (=> b!1849785 (= e!1181780 (and tp!523028 tp!523030))))

(assert (=> b!1849523 (= tp!522996 e!1181780)))

(declare-fun b!1849783 () Bool)

(declare-fun tp!523027 () Bool)

(declare-fun tp!523026 () Bool)

(assert (=> b!1849783 (= e!1181780 (and tp!523027 tp!523026))))

(declare-fun b!1849784 () Bool)

(declare-fun tp!523029 () Bool)

(assert (=> b!1849784 (= e!1181780 tp!523029)))

(declare-fun b!1849782 () Bool)

(assert (=> b!1849782 (= e!1181780 tp_is_empty!8489)))

(assert (= (and b!1849523 (is-ElementMatch!5020 (reg!5349 r!26091))) b!1849782))

(assert (= (and b!1849523 (is-Concat!8798 (reg!5349 r!26091))) b!1849783))

(assert (= (and b!1849523 (is-Star!5020 (reg!5349 r!26091))) b!1849784))

(assert (= (and b!1849523 (is-Union!5020 (reg!5349 r!26091))) b!1849785))

(declare-fun b!1849789 () Bool)

(declare-fun e!1181781 () Bool)

(declare-fun tp!523033 () Bool)

(declare-fun tp!523035 () Bool)

(assert (=> b!1849789 (= e!1181781 (and tp!523033 tp!523035))))

(assert (=> b!1849529 (= tp!522993 e!1181781)))

(declare-fun b!1849787 () Bool)

(declare-fun tp!523032 () Bool)

(declare-fun tp!523031 () Bool)

(assert (=> b!1849787 (= e!1181781 (and tp!523032 tp!523031))))

(declare-fun b!1849788 () Bool)

(declare-fun tp!523034 () Bool)

(assert (=> b!1849788 (= e!1181781 tp!523034)))

(declare-fun b!1849786 () Bool)

(assert (=> b!1849786 (= e!1181781 tp_is_empty!8489)))

(assert (= (and b!1849529 (is-ElementMatch!5020 (regOne!10552 r!26091))) b!1849786))

(assert (= (and b!1849529 (is-Concat!8798 (regOne!10552 r!26091))) b!1849787))

(assert (= (and b!1849529 (is-Star!5020 (regOne!10552 r!26091))) b!1849788))

(assert (= (and b!1849529 (is-Union!5020 (regOne!10552 r!26091))) b!1849789))

(declare-fun b!1849793 () Bool)

(declare-fun e!1181782 () Bool)

(declare-fun tp!523038 () Bool)

(declare-fun tp!523040 () Bool)

(assert (=> b!1849793 (= e!1181782 (and tp!523038 tp!523040))))

(assert (=> b!1849529 (= tp!522997 e!1181782)))

(declare-fun b!1849791 () Bool)

(declare-fun tp!523037 () Bool)

(declare-fun tp!523036 () Bool)

(assert (=> b!1849791 (= e!1181782 (and tp!523037 tp!523036))))

(declare-fun b!1849792 () Bool)

(declare-fun tp!523039 () Bool)

(assert (=> b!1849792 (= e!1181782 tp!523039)))

(declare-fun b!1849790 () Bool)

(assert (=> b!1849790 (= e!1181782 tp_is_empty!8489)))

(assert (= (and b!1849529 (is-ElementMatch!5020 (regTwo!10552 r!26091))) b!1849790))

(assert (= (and b!1849529 (is-Concat!8798 (regTwo!10552 r!26091))) b!1849791))

(assert (= (and b!1849529 (is-Star!5020 (regTwo!10552 r!26091))) b!1849792))

(assert (= (and b!1849529 (is-Union!5020 (regTwo!10552 r!26091))) b!1849793))

(declare-fun b!1849798 () Bool)

(declare-fun e!1181785 () Bool)

(declare-fun tp!523043 () Bool)

(assert (=> b!1849798 (= e!1181785 (and tp_is_empty!8489 tp!523043))))

(assert (=> b!1849520 (= tp!522995 e!1181785)))

(assert (= (and b!1849520 (is-Cons!20429 (t!172274 prefix!1614))) b!1849798))

(declare-fun b!1849802 () Bool)

(declare-fun e!1181786 () Bool)

(declare-fun tp!523046 () Bool)

(declare-fun tp!523048 () Bool)

(assert (=> b!1849802 (= e!1181786 (and tp!523046 tp!523048))))

(assert (=> b!1849525 (= tp!522994 e!1181786)))

(declare-fun b!1849800 () Bool)

(declare-fun tp!523045 () Bool)

(declare-fun tp!523044 () Bool)

(assert (=> b!1849800 (= e!1181786 (and tp!523045 tp!523044))))

(declare-fun b!1849801 () Bool)

(declare-fun tp!523047 () Bool)

(assert (=> b!1849801 (= e!1181786 tp!523047)))

(declare-fun b!1849799 () Bool)

(assert (=> b!1849799 (= e!1181786 tp_is_empty!8489)))

(assert (= (and b!1849525 (is-ElementMatch!5020 (regOne!10553 r!26091))) b!1849799))

(assert (= (and b!1849525 (is-Concat!8798 (regOne!10553 r!26091))) b!1849800))

(assert (= (and b!1849525 (is-Star!5020 (regOne!10553 r!26091))) b!1849801))

(assert (= (and b!1849525 (is-Union!5020 (regOne!10553 r!26091))) b!1849802))

(declare-fun b!1849806 () Bool)

(declare-fun e!1181787 () Bool)

(declare-fun tp!523051 () Bool)

(declare-fun tp!523053 () Bool)

(assert (=> b!1849806 (= e!1181787 (and tp!523051 tp!523053))))

(assert (=> b!1849525 (= tp!522992 e!1181787)))

(declare-fun b!1849804 () Bool)

(declare-fun tp!523050 () Bool)

(declare-fun tp!523049 () Bool)

(assert (=> b!1849804 (= e!1181787 (and tp!523050 tp!523049))))

(declare-fun b!1849805 () Bool)

(declare-fun tp!523052 () Bool)

(assert (=> b!1849805 (= e!1181787 tp!523052)))

(declare-fun b!1849803 () Bool)

(assert (=> b!1849803 (= e!1181787 tp_is_empty!8489)))

(assert (= (and b!1849525 (is-ElementMatch!5020 (regTwo!10553 r!26091))) b!1849803))

(assert (= (and b!1849525 (is-Concat!8798 (regTwo!10553 r!26091))) b!1849804))

(assert (= (and b!1849525 (is-Star!5020 (regTwo!10553 r!26091))) b!1849805))

(assert (= (and b!1849525 (is-Union!5020 (regTwo!10553 r!26091))) b!1849806))

(declare-fun b_lambda!61417 () Bool)

(assert (= b_lambda!61413 (or b!1849526 b_lambda!61417)))

(declare-fun bs!409782 () Bool)

(declare-fun d!565679 () Bool)

(assert (= bs!409782 (and d!565679 b!1849526)))

(declare-fun res!830574 () Bool)

(declare-fun e!1181788 () Bool)

(assert (=> bs!409782 (=> (not res!830574) (not e!1181788))))

(assert (=> bs!409782 (= res!830574 (matchR!2457 r!26091 lt!715392))))

(assert (=> bs!409782 (= (dynLambda!10157 lambda!73149 lt!715392) e!1181788)))

(declare-fun b!1849807 () Bool)

(assert (=> b!1849807 (= e!1181788 (isPrefix!1893 prefix!1614 lt!715392))))

(assert (= (and bs!409782 res!830574) b!1849807))

(declare-fun m!2276801 () Bool)

(assert (=> bs!409782 m!2276801))

(declare-fun m!2276803 () Bool)

(assert (=> b!1849807 m!2276803))

(assert (=> d!565653 d!565679))

(push 1)

(assert (not b!1849690))

(assert (not d!565645))

(assert (not d!565653))

(assert (not b!1849787))

(assert (not b!1849783))

(assert (not d!565661))

(assert (not b!1849630))

(assert (not d!565647))

(assert (not bm!115335))

(assert (not d!565663))

(assert (not b!1849665))

(assert (not bs!409782))

(assert (not b!1849789))

(assert (not b!1849664))

(assert (not b!1849792))

(assert (not bm!115344))

(assert (not b!1849784))

(assert (not b!1849791))

(assert (not b!1849677))

(assert (not b!1849711))

(assert (not bm!115320))

(assert (not bm!115332))

(assert tp_is_empty!8489)

(assert (not b!1849624))

(assert (not b!1849588))

(assert (not b!1849793))

(assert (not b!1849805))

(assert (not b!1849627))

(assert (not b!1849712))

(assert (not b!1849631))

(assert (not b!1849800))

(assert (not b!1849688))

(assert (not b!1849804))

(assert (not b!1849802))

(assert (not b!1849807))

(assert (not d!565643))

(assert (not bm!115333))

(assert (not b!1849766))

(assert (not b!1849788))

(assert (not b!1849619))

(assert (not b!1849801))

(assert (not b!1849714))

(assert (not d!565657))

(assert (not b_lambda!61417))

(assert (not b!1849622))

(assert (not d!565655))

(assert (not d!565665))

(assert (not b!1849689))

(assert (not b!1849806))

(assert (not d!565649))

(assert (not b!1849798))

(assert (not b!1849692))

(assert (not bm!115342))

(assert (not b!1849785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

