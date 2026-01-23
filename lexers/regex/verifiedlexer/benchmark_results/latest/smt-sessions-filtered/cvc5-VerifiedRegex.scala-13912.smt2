; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738942 () Bool)

(assert start!738942)

(declare-fun b!7751356 () Bool)

(declare-fun e!4595110 () Bool)

(declare-fun tp!2274244 () Bool)

(assert (=> b!7751356 (= e!4595110 tp!2274244)))

(declare-fun b!7751357 () Bool)

(declare-fun res!3090796 () Bool)

(declare-fun e!4595112 () Bool)

(assert (=> b!7751357 (=> (not res!3090796) (not e!4595112))))

(declare-datatypes ((C!41562 0))(
  ( (C!41563 (val!31221 Int)) )
))
(declare-datatypes ((Regex!20618 0))(
  ( (ElementMatch!20618 (c!1429595 C!41562)) (Concat!29463 (regOne!41748 Regex!20618) (regTwo!41748 Regex!20618)) (EmptyExpr!20618) (Star!20618 (reg!20947 Regex!20618)) (EmptyLang!20618) (Union!20618 (regOne!41749 Regex!20618) (regTwo!41749 Regex!20618)) )
))
(declare-fun lt!2669453 () Regex!20618)

(declare-datatypes ((List!73463 0))(
  ( (Nil!73339) (Cons!73339 (h!79787 C!41562) (t!388198 List!73463)) )
))
(declare-fun s2!3963 () List!73463)

(declare-fun matchR!10108 (Regex!20618 List!73463) Bool)

(assert (=> b!7751357 (= res!3090796 (matchR!10108 lt!2669453 s2!3963))))

(declare-fun res!3090797 () Bool)

(assert (=> start!738942 (=> (not res!3090797) (not e!4595112))))

(declare-fun validRegex!11036 (Regex!20618) Bool)

(assert (=> start!738942 (= res!3090797 (validRegex!11036 lt!2669453))))

(declare-fun r!25892 () Regex!20618)

(assert (=> start!738942 (= lt!2669453 (Star!20618 r!25892))))

(assert (=> start!738942 e!4595112))

(assert (=> start!738942 e!4595110))

(declare-fun e!4595111 () Bool)

(assert (=> start!738942 e!4595111))

(declare-fun e!4595113 () Bool)

(assert (=> start!738942 e!4595113))

(declare-fun b!7751358 () Bool)

(declare-fun res!3090795 () Bool)

(assert (=> b!7751358 (=> (not res!3090795) (not e!4595112))))

(declare-fun s1!4391 () List!73463)

(assert (=> b!7751358 (= res!3090795 (matchR!10108 r!25892 s1!4391))))

(declare-fun b!7751359 () Bool)

(declare-fun res!3090794 () Bool)

(assert (=> b!7751359 (=> (not res!3090794) (not e!4595112))))

(assert (=> b!7751359 (= res!3090794 (is-Cons!73339 s1!4391))))

(declare-fun b!7751360 () Bool)

(declare-fun tp_is_empty!51591 () Bool)

(declare-fun tp!2274243 () Bool)

(assert (=> b!7751360 (= e!4595111 (and tp_is_empty!51591 tp!2274243))))

(declare-fun b!7751361 () Bool)

(declare-fun e!4595114 () Bool)

(declare-fun lt!2669454 () Regex!20618)

(assert (=> b!7751361 (= e!4595114 (not (validRegex!11036 lt!2669454)))))

(declare-fun b!7751362 () Bool)

(declare-fun tp!2274241 () Bool)

(declare-fun tp!2274246 () Bool)

(assert (=> b!7751362 (= e!4595110 (and tp!2274241 tp!2274246))))

(declare-fun b!7751363 () Bool)

(declare-fun tp!2274242 () Bool)

(assert (=> b!7751363 (= e!4595113 (and tp_is_empty!51591 tp!2274242))))

(declare-fun b!7751364 () Bool)

(assert (=> b!7751364 (= e!4595112 e!4595114)))

(declare-fun res!3090793 () Bool)

(assert (=> b!7751364 (=> (not res!3090793) (not e!4595114))))

(declare-fun derivativeStep!6039 (Regex!20618 C!41562) Regex!20618)

(assert (=> b!7751364 (= res!3090793 (= (derivativeStep!6039 lt!2669453 (h!79787 s1!4391)) (Concat!29463 lt!2669454 lt!2669453)))))

(assert (=> b!7751364 (= lt!2669454 (derivativeStep!6039 r!25892 (h!79787 s1!4391)))))

(declare-fun b!7751365 () Bool)

(assert (=> b!7751365 (= e!4595110 tp_is_empty!51591)))

(declare-fun b!7751366 () Bool)

(declare-fun tp!2274245 () Bool)

(declare-fun tp!2274240 () Bool)

(assert (=> b!7751366 (= e!4595110 (and tp!2274245 tp!2274240))))

(assert (= (and start!738942 res!3090797) b!7751358))

(assert (= (and b!7751358 res!3090795) b!7751357))

(assert (= (and b!7751357 res!3090796) b!7751359))

(assert (= (and b!7751359 res!3090794) b!7751364))

(assert (= (and b!7751364 res!3090793) b!7751361))

(assert (= (and start!738942 (is-ElementMatch!20618 r!25892)) b!7751365))

(assert (= (and start!738942 (is-Concat!29463 r!25892)) b!7751362))

(assert (= (and start!738942 (is-Star!20618 r!25892)) b!7751356))

(assert (= (and start!738942 (is-Union!20618 r!25892)) b!7751366))

(assert (= (and start!738942 (is-Cons!73339 s1!4391)) b!7751360))

(assert (= (and start!738942 (is-Cons!73339 s2!3963)) b!7751363))

(declare-fun m!8216786 () Bool)

(assert (=> start!738942 m!8216786))

(declare-fun m!8216788 () Bool)

(assert (=> b!7751364 m!8216788))

(declare-fun m!8216790 () Bool)

(assert (=> b!7751364 m!8216790))

(declare-fun m!8216792 () Bool)

(assert (=> b!7751357 m!8216792))

(declare-fun m!8216794 () Bool)

(assert (=> b!7751358 m!8216794))

(declare-fun m!8216796 () Bool)

(assert (=> b!7751361 m!8216796))

(push 1)

(assert (not b!7751366))

(assert (not b!7751360))

(assert (not b!7751358))

(assert (not b!7751363))

(assert (not b!7751361))

(assert (not b!7751356))

(assert (not b!7751362))

(assert (not b!7751357))

(assert tp_is_empty!51591)

(assert (not start!738942))

(assert (not b!7751364))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7751418 () Bool)

(declare-fun e!4595149 () Bool)

(declare-fun e!4595146 () Bool)

(assert (=> b!7751418 (= e!4595149 e!4595146)))

(declare-fun res!3090827 () Bool)

(declare-fun nullable!9079 (Regex!20618) Bool)

(assert (=> b!7751418 (= res!3090827 (not (nullable!9079 (reg!20947 lt!2669453))))))

(assert (=> b!7751418 (=> (not res!3090827) (not e!4595146))))

(declare-fun b!7751419 () Bool)

(declare-fun e!4595150 () Bool)

(declare-fun call!718395 () Bool)

(assert (=> b!7751419 (= e!4595150 call!718395)))

(declare-fun bm!718388 () Bool)

(declare-fun call!718394 () Bool)

(declare-fun c!1429602 () Bool)

(assert (=> bm!718388 (= call!718394 (validRegex!11036 (ite c!1429602 (regOne!41749 lt!2669453) (regOne!41748 lt!2669453))))))

(declare-fun b!7751420 () Bool)

(declare-fun res!3090826 () Bool)

(declare-fun e!4595148 () Bool)

(assert (=> b!7751420 (=> res!3090826 e!4595148)))

(assert (=> b!7751420 (= res!3090826 (not (is-Concat!29463 lt!2669453)))))

(declare-fun e!4595144 () Bool)

(assert (=> b!7751420 (= e!4595144 e!4595148)))

(declare-fun b!7751421 () Bool)

(declare-fun call!718393 () Bool)

(assert (=> b!7751421 (= e!4595146 call!718393)))

(declare-fun b!7751422 () Bool)

(declare-fun e!4595145 () Bool)

(assert (=> b!7751422 (= e!4595145 e!4595149)))

(declare-fun c!1429601 () Bool)

(assert (=> b!7751422 (= c!1429601 (is-Star!20618 lt!2669453))))

(declare-fun b!7751423 () Bool)

(assert (=> b!7751423 (= e!4595149 e!4595144)))

(assert (=> b!7751423 (= c!1429602 (is-Union!20618 lt!2669453))))

(declare-fun b!7751424 () Bool)

(assert (=> b!7751424 (= e!4595148 e!4595150)))

(declare-fun res!3090824 () Bool)

(assert (=> b!7751424 (=> (not res!3090824) (not e!4595150))))

(assert (=> b!7751424 (= res!3090824 call!718394)))

(declare-fun bm!718390 () Bool)

(assert (=> bm!718390 (= call!718395 call!718393)))

(declare-fun b!7751425 () Bool)

(declare-fun e!4595147 () Bool)

(assert (=> b!7751425 (= e!4595147 call!718395)))

(declare-fun b!7751426 () Bool)

(declare-fun res!3090823 () Bool)

(assert (=> b!7751426 (=> (not res!3090823) (not e!4595147))))

(assert (=> b!7751426 (= res!3090823 call!718394)))

(assert (=> b!7751426 (= e!4595144 e!4595147)))

(declare-fun bm!718389 () Bool)

(assert (=> bm!718389 (= call!718393 (validRegex!11036 (ite c!1429601 (reg!20947 lt!2669453) (ite c!1429602 (regTwo!41749 lt!2669453) (regTwo!41748 lt!2669453)))))))

(declare-fun d!2342713 () Bool)

(declare-fun res!3090825 () Bool)

(assert (=> d!2342713 (=> res!3090825 e!4595145)))

(assert (=> d!2342713 (= res!3090825 (is-ElementMatch!20618 lt!2669453))))

(assert (=> d!2342713 (= (validRegex!11036 lt!2669453) e!4595145)))

(assert (= (and d!2342713 (not res!3090825)) b!7751422))

(assert (= (and b!7751422 c!1429601) b!7751418))

(assert (= (and b!7751422 (not c!1429601)) b!7751423))

(assert (= (and b!7751418 res!3090827) b!7751421))

(assert (= (and b!7751423 c!1429602) b!7751426))

(assert (= (and b!7751423 (not c!1429602)) b!7751420))

(assert (= (and b!7751426 res!3090823) b!7751425))

(assert (= (and b!7751420 (not res!3090826)) b!7751424))

(assert (= (and b!7751424 res!3090824) b!7751419))

(assert (= (or b!7751426 b!7751424) bm!718388))

(assert (= (or b!7751425 b!7751419) bm!718390))

(assert (= (or b!7751421 bm!718390) bm!718389))

(declare-fun m!8216810 () Bool)

(assert (=> b!7751418 m!8216810))

(declare-fun m!8216812 () Bool)

(assert (=> bm!718388 m!8216812))

(declare-fun m!8216814 () Bool)

(assert (=> bm!718389 m!8216814))

(assert (=> start!738942 d!2342713))

(declare-fun b!7751461 () Bool)

(declare-fun res!3090846 () Bool)

(declare-fun e!4595167 () Bool)

(assert (=> b!7751461 (=> res!3090846 e!4595167)))

(declare-fun isEmpty!42026 (List!73463) Bool)

(declare-fun tail!15375 (List!73463) List!73463)

(assert (=> b!7751461 (= res!3090846 (not (isEmpty!42026 (tail!15375 s1!4391))))))

(declare-fun b!7751462 () Bool)

(declare-fun res!3090847 () Bool)

(declare-fun e!4595171 () Bool)

(assert (=> b!7751462 (=> res!3090847 e!4595171)))

(declare-fun e!4595172 () Bool)

(assert (=> b!7751462 (= res!3090847 e!4595172)))

(declare-fun res!3090851 () Bool)

(assert (=> b!7751462 (=> (not res!3090851) (not e!4595172))))

(declare-fun lt!2669465 () Bool)

(assert (=> b!7751462 (= res!3090851 lt!2669465)))

(declare-fun b!7751463 () Bool)

(declare-fun e!4595173 () Bool)

(declare-fun head!15835 (List!73463) C!41562)

(assert (=> b!7751463 (= e!4595173 (matchR!10108 (derivativeStep!6039 r!25892 (head!15835 s1!4391)) (tail!15375 s1!4391)))))

(declare-fun b!7751464 () Bool)

(declare-fun e!4595169 () Bool)

(declare-fun call!718398 () Bool)

(assert (=> b!7751464 (= e!4595169 (= lt!2669465 call!718398))))

(declare-fun b!7751466 () Bool)

(declare-fun e!4595168 () Bool)

(assert (=> b!7751466 (= e!4595169 e!4595168)))

(declare-fun c!1429613 () Bool)

(assert (=> b!7751466 (= c!1429613 (is-EmptyLang!20618 r!25892))))

(declare-fun b!7751467 () Bool)

(assert (=> b!7751467 (= e!4595173 (nullable!9079 r!25892))))

(declare-fun b!7751468 () Bool)

(assert (=> b!7751468 (= e!4595172 (= (head!15835 s1!4391) (c!1429595 r!25892)))))

(declare-fun b!7751469 () Bool)

(assert (=> b!7751469 (= e!4595167 (not (= (head!15835 s1!4391) (c!1429595 r!25892))))))

(declare-fun bm!718393 () Bool)

(assert (=> bm!718393 (= call!718398 (isEmpty!42026 s1!4391))))

(declare-fun b!7751470 () Bool)

(declare-fun res!3090850 () Bool)

(assert (=> b!7751470 (=> (not res!3090850) (not e!4595172))))

(assert (=> b!7751470 (= res!3090850 (not call!718398))))

(declare-fun b!7751471 () Bool)

(declare-fun e!4595170 () Bool)

(assert (=> b!7751471 (= e!4595171 e!4595170)))

(declare-fun res!3090848 () Bool)

(assert (=> b!7751471 (=> (not res!3090848) (not e!4595170))))

(assert (=> b!7751471 (= res!3090848 (not lt!2669465))))

(declare-fun b!7751472 () Bool)

(assert (=> b!7751472 (= e!4595170 e!4595167)))

(declare-fun res!3090844 () Bool)

(assert (=> b!7751472 (=> res!3090844 e!4595167)))

(assert (=> b!7751472 (= res!3090844 call!718398)))

(declare-fun d!2342717 () Bool)

(assert (=> d!2342717 e!4595169))

(declare-fun c!1429612 () Bool)

(assert (=> d!2342717 (= c!1429612 (is-EmptyExpr!20618 r!25892))))

(assert (=> d!2342717 (= lt!2669465 e!4595173)))

(declare-fun c!1429611 () Bool)

(assert (=> d!2342717 (= c!1429611 (isEmpty!42026 s1!4391))))

(assert (=> d!2342717 (validRegex!11036 r!25892)))

(assert (=> d!2342717 (= (matchR!10108 r!25892 s1!4391) lt!2669465)))

(declare-fun b!7751465 () Bool)

(declare-fun res!3090845 () Bool)

(assert (=> b!7751465 (=> (not res!3090845) (not e!4595172))))

(assert (=> b!7751465 (= res!3090845 (isEmpty!42026 (tail!15375 s1!4391)))))

(declare-fun b!7751473 () Bool)

(assert (=> b!7751473 (= e!4595168 (not lt!2669465))))

(declare-fun b!7751474 () Bool)

(declare-fun res!3090849 () Bool)

(assert (=> b!7751474 (=> res!3090849 e!4595171)))

(assert (=> b!7751474 (= res!3090849 (not (is-ElementMatch!20618 r!25892)))))

(assert (=> b!7751474 (= e!4595168 e!4595171)))

(assert (= (and d!2342717 c!1429611) b!7751467))

(assert (= (and d!2342717 (not c!1429611)) b!7751463))

(assert (= (and d!2342717 c!1429612) b!7751464))

(assert (= (and d!2342717 (not c!1429612)) b!7751466))

(assert (= (and b!7751466 c!1429613) b!7751473))

(assert (= (and b!7751466 (not c!1429613)) b!7751474))

(assert (= (and b!7751474 (not res!3090849)) b!7751462))

(assert (= (and b!7751462 res!3090851) b!7751470))

(assert (= (and b!7751470 res!3090850) b!7751465))

(assert (= (and b!7751465 res!3090845) b!7751468))

(assert (= (and b!7751462 (not res!3090847)) b!7751471))

(assert (= (and b!7751471 res!3090848) b!7751472))

(assert (= (and b!7751472 (not res!3090844)) b!7751461))

(assert (= (and b!7751461 (not res!3090846)) b!7751469))

(assert (= (or b!7751464 b!7751470 b!7751472) bm!718393))

(declare-fun m!8216816 () Bool)

(assert (=> bm!718393 m!8216816))

(declare-fun m!8216818 () Bool)

(assert (=> b!7751469 m!8216818))

(declare-fun m!8216820 () Bool)

(assert (=> b!7751465 m!8216820))

(assert (=> b!7751465 m!8216820))

(declare-fun m!8216822 () Bool)

(assert (=> b!7751465 m!8216822))

(assert (=> b!7751468 m!8216818))

(declare-fun m!8216824 () Bool)

(assert (=> b!7751467 m!8216824))

(assert (=> b!7751463 m!8216818))

(assert (=> b!7751463 m!8216818))

(declare-fun m!8216826 () Bool)

(assert (=> b!7751463 m!8216826))

(assert (=> b!7751463 m!8216820))

(assert (=> b!7751463 m!8216826))

(assert (=> b!7751463 m!8216820))

(declare-fun m!8216828 () Bool)

(assert (=> b!7751463 m!8216828))

(assert (=> d!2342717 m!8216816))

(declare-fun m!8216830 () Bool)

(assert (=> d!2342717 m!8216830))

(assert (=> b!7751461 m!8216820))

(assert (=> b!7751461 m!8216820))

(assert (=> b!7751461 m!8216822))

(assert (=> b!7751358 d!2342717))

(declare-fun b!7751517 () Bool)

(declare-fun c!1429631 () Bool)

(assert (=> b!7751517 (= c!1429631 (is-Union!20618 lt!2669453))))

(declare-fun e!4595199 () Regex!20618)

(declare-fun e!4595196 () Regex!20618)

(assert (=> b!7751517 (= e!4595199 e!4595196)))

(declare-fun b!7751518 () Bool)

(declare-fun e!4595200 () Regex!20618)

(assert (=> b!7751518 (= e!4595200 e!4595199)))

(declare-fun c!1429632 () Bool)

(assert (=> b!7751518 (= c!1429632 (is-ElementMatch!20618 lt!2669453))))

(declare-fun bm!718404 () Bool)

(declare-fun call!718412 () Regex!20618)

(declare-fun call!718409 () Regex!20618)

(assert (=> bm!718404 (= call!718412 call!718409)))

(declare-fun call!718410 () Regex!20618)

(declare-fun bm!718405 () Bool)

(assert (=> bm!718405 (= call!718410 (derivativeStep!6039 (ite c!1429631 (regOne!41749 lt!2669453) (regTwo!41748 lt!2669453)) (h!79787 s1!4391)))))

(declare-fun bm!718406 () Bool)

(declare-fun call!718411 () Regex!20618)

(assert (=> bm!718406 (= call!718409 call!718411)))

(declare-fun b!7751519 () Bool)

(assert (=> b!7751519 (= e!4595199 (ite (= (h!79787 s1!4391) (c!1429595 lt!2669453)) EmptyExpr!20618 EmptyLang!20618))))

(declare-fun b!7751520 () Bool)

(declare-fun c!1429628 () Bool)

(assert (=> b!7751520 (= c!1429628 (nullable!9079 (regOne!41748 lt!2669453)))))

(declare-fun e!4595198 () Regex!20618)

(declare-fun e!4595197 () Regex!20618)

(assert (=> b!7751520 (= e!4595198 e!4595197)))

(declare-fun b!7751521 () Bool)

(assert (=> b!7751521 (= e!4595198 (Concat!29463 call!718409 lt!2669453))))

(declare-fun c!1429629 () Bool)

(declare-fun bm!718407 () Bool)

(assert (=> bm!718407 (= call!718411 (derivativeStep!6039 (ite c!1429631 (regTwo!41749 lt!2669453) (ite c!1429629 (reg!20947 lt!2669453) (regOne!41748 lt!2669453))) (h!79787 s1!4391)))))

(declare-fun b!7751522 () Bool)

(assert (=> b!7751522 (= e!4595197 (Union!20618 (Concat!29463 call!718412 (regTwo!41748 lt!2669453)) call!718410))))

(declare-fun b!7751523 () Bool)

(assert (=> b!7751523 (= e!4595197 (Union!20618 (Concat!29463 call!718412 (regTwo!41748 lt!2669453)) EmptyLang!20618))))

(declare-fun b!7751524 () Bool)

(assert (=> b!7751524 (= e!4595200 EmptyLang!20618)))

(declare-fun b!7751525 () Bool)

(assert (=> b!7751525 (= e!4595196 (Union!20618 call!718410 call!718411))))

(declare-fun b!7751526 () Bool)

(assert (=> b!7751526 (= e!4595196 e!4595198)))

(assert (=> b!7751526 (= c!1429629 (is-Star!20618 lt!2669453))))

(declare-fun d!2342719 () Bool)

(declare-fun lt!2669468 () Regex!20618)

(assert (=> d!2342719 (validRegex!11036 lt!2669468)))

(assert (=> d!2342719 (= lt!2669468 e!4595200)))

(declare-fun c!1429630 () Bool)

(assert (=> d!2342719 (= c!1429630 (or (is-EmptyExpr!20618 lt!2669453) (is-EmptyLang!20618 lt!2669453)))))

(assert (=> d!2342719 (validRegex!11036 lt!2669453)))

(assert (=> d!2342719 (= (derivativeStep!6039 lt!2669453 (h!79787 s1!4391)) lt!2669468)))

(assert (= (and d!2342719 c!1429630) b!7751524))

(assert (= (and d!2342719 (not c!1429630)) b!7751518))

(assert (= (and b!7751518 c!1429632) b!7751519))

(assert (= (and b!7751518 (not c!1429632)) b!7751517))

(assert (= (and b!7751517 c!1429631) b!7751525))

(assert (= (and b!7751517 (not c!1429631)) b!7751526))

(assert (= (and b!7751526 c!1429629) b!7751521))

(assert (= (and b!7751526 (not c!1429629)) b!7751520))

(assert (= (and b!7751520 c!1429628) b!7751522))

(assert (= (and b!7751520 (not c!1429628)) b!7751523))

(assert (= (or b!7751522 b!7751523) bm!718404))

(assert (= (or b!7751521 bm!718404) bm!718406))

(assert (= (or b!7751525 bm!718406) bm!718407))

(assert (= (or b!7751525 b!7751522) bm!718405))

(declare-fun m!8216832 () Bool)

(assert (=> bm!718405 m!8216832))

(declare-fun m!8216834 () Bool)

(assert (=> b!7751520 m!8216834))

(declare-fun m!8216836 () Bool)

(assert (=> bm!718407 m!8216836))

(declare-fun m!8216838 () Bool)

(assert (=> d!2342719 m!8216838))

(assert (=> d!2342719 m!8216786))

(assert (=> b!7751364 d!2342719))

(declare-fun b!7751541 () Bool)

(declare-fun c!1429639 () Bool)

(assert (=> b!7751541 (= c!1429639 (is-Union!20618 r!25892))))

(declare-fun e!4595211 () Regex!20618)

(declare-fun e!4595208 () Regex!20618)

(assert (=> b!7751541 (= e!4595211 e!4595208)))

(declare-fun b!7751542 () Bool)

(declare-fun e!4595212 () Regex!20618)

(assert (=> b!7751542 (= e!4595212 e!4595211)))

(declare-fun c!1429640 () Bool)

(assert (=> b!7751542 (= c!1429640 (is-ElementMatch!20618 r!25892))))

(declare-fun bm!718409 () Bool)

(declare-fun call!718417 () Regex!20618)

(declare-fun call!718414 () Regex!20618)

(assert (=> bm!718409 (= call!718417 call!718414)))

(declare-fun call!718415 () Regex!20618)

(declare-fun bm!718410 () Bool)

(assert (=> bm!718410 (= call!718415 (derivativeStep!6039 (ite c!1429639 (regOne!41749 r!25892) (regTwo!41748 r!25892)) (h!79787 s1!4391)))))

(declare-fun bm!718411 () Bool)

(declare-fun call!718416 () Regex!20618)

(assert (=> bm!718411 (= call!718414 call!718416)))

(declare-fun b!7751543 () Bool)

(assert (=> b!7751543 (= e!4595211 (ite (= (h!79787 s1!4391) (c!1429595 r!25892)) EmptyExpr!20618 EmptyLang!20618))))

(declare-fun b!7751544 () Bool)

(declare-fun c!1429636 () Bool)

(assert (=> b!7751544 (= c!1429636 (nullable!9079 (regOne!41748 r!25892)))))

(declare-fun e!4595210 () Regex!20618)

(declare-fun e!4595209 () Regex!20618)

(assert (=> b!7751544 (= e!4595210 e!4595209)))

(declare-fun b!7751545 () Bool)

(assert (=> b!7751545 (= e!4595210 (Concat!29463 call!718414 r!25892))))

(declare-fun bm!718412 () Bool)

(declare-fun c!1429637 () Bool)

(assert (=> bm!718412 (= call!718416 (derivativeStep!6039 (ite c!1429639 (regTwo!41749 r!25892) (ite c!1429637 (reg!20947 r!25892) (regOne!41748 r!25892))) (h!79787 s1!4391)))))

(declare-fun b!7751546 () Bool)

(assert (=> b!7751546 (= e!4595209 (Union!20618 (Concat!29463 call!718417 (regTwo!41748 r!25892)) call!718415))))

(declare-fun b!7751547 () Bool)

(assert (=> b!7751547 (= e!4595209 (Union!20618 (Concat!29463 call!718417 (regTwo!41748 r!25892)) EmptyLang!20618))))

(declare-fun b!7751548 () Bool)

(assert (=> b!7751548 (= e!4595212 EmptyLang!20618)))

(declare-fun b!7751549 () Bool)

(assert (=> b!7751549 (= e!4595208 (Union!20618 call!718415 call!718416))))

(declare-fun b!7751550 () Bool)

(assert (=> b!7751550 (= e!4595208 e!4595210)))

(assert (=> b!7751550 (= c!1429637 (is-Star!20618 r!25892))))

(declare-fun d!2342721 () Bool)

(declare-fun lt!2669470 () Regex!20618)

(assert (=> d!2342721 (validRegex!11036 lt!2669470)))

(assert (=> d!2342721 (= lt!2669470 e!4595212)))

(declare-fun c!1429638 () Bool)

(assert (=> d!2342721 (= c!1429638 (or (is-EmptyExpr!20618 r!25892) (is-EmptyLang!20618 r!25892)))))

(assert (=> d!2342721 (validRegex!11036 r!25892)))

(assert (=> d!2342721 (= (derivativeStep!6039 r!25892 (h!79787 s1!4391)) lt!2669470)))

(assert (= (and d!2342721 c!1429638) b!7751548))

(assert (= (and d!2342721 (not c!1429638)) b!7751542))

(assert (= (and b!7751542 c!1429640) b!7751543))

(assert (= (and b!7751542 (not c!1429640)) b!7751541))

(assert (= (and b!7751541 c!1429639) b!7751549))

(assert (= (and b!7751541 (not c!1429639)) b!7751550))

(assert (= (and b!7751550 c!1429637) b!7751545))

(assert (= (and b!7751550 (not c!1429637)) b!7751544))

(assert (= (and b!7751544 c!1429636) b!7751546))

(assert (= (and b!7751544 (not c!1429636)) b!7751547))

(assert (= (or b!7751546 b!7751547) bm!718409))

(assert (= (or b!7751545 bm!718409) bm!718411))

(assert (= (or b!7751549 bm!718411) bm!718412))

(assert (= (or b!7751549 b!7751546) bm!718410))

(declare-fun m!8216840 () Bool)

(assert (=> bm!718410 m!8216840))

(declare-fun m!8216842 () Bool)

(assert (=> b!7751544 m!8216842))

(declare-fun m!8216844 () Bool)

(assert (=> bm!718412 m!8216844))

(declare-fun m!8216846 () Bool)

(assert (=> d!2342721 m!8216846))

(assert (=> d!2342721 m!8216830))

(assert (=> b!7751364 d!2342721))

(declare-fun b!7751551 () Bool)

(declare-fun res!3090878 () Bool)

(declare-fun e!4595213 () Bool)

(assert (=> b!7751551 (=> res!3090878 e!4595213)))

(assert (=> b!7751551 (= res!3090878 (not (isEmpty!42026 (tail!15375 s2!3963))))))

(declare-fun b!7751552 () Bool)

(declare-fun res!3090879 () Bool)

(declare-fun e!4595217 () Bool)

(assert (=> b!7751552 (=> res!3090879 e!4595217)))

(declare-fun e!4595218 () Bool)

(assert (=> b!7751552 (= res!3090879 e!4595218)))

(declare-fun res!3090883 () Bool)

(assert (=> b!7751552 (=> (not res!3090883) (not e!4595218))))

(declare-fun lt!2669471 () Bool)

(assert (=> b!7751552 (= res!3090883 lt!2669471)))

(declare-fun b!7751553 () Bool)

(declare-fun e!4595219 () Bool)

(assert (=> b!7751553 (= e!4595219 (matchR!10108 (derivativeStep!6039 lt!2669453 (head!15835 s2!3963)) (tail!15375 s2!3963)))))

(declare-fun b!7751554 () Bool)

(declare-fun e!4595215 () Bool)

(declare-fun call!718418 () Bool)

(assert (=> b!7751554 (= e!4595215 (= lt!2669471 call!718418))))

(declare-fun b!7751556 () Bool)

(declare-fun e!4595214 () Bool)

(assert (=> b!7751556 (= e!4595215 e!4595214)))

(declare-fun c!1429643 () Bool)

(assert (=> b!7751556 (= c!1429643 (is-EmptyLang!20618 lt!2669453))))

(declare-fun b!7751557 () Bool)

(assert (=> b!7751557 (= e!4595219 (nullable!9079 lt!2669453))))

(declare-fun b!7751558 () Bool)

(assert (=> b!7751558 (= e!4595218 (= (head!15835 s2!3963) (c!1429595 lt!2669453)))))

(declare-fun b!7751559 () Bool)

(assert (=> b!7751559 (= e!4595213 (not (= (head!15835 s2!3963) (c!1429595 lt!2669453))))))

(declare-fun bm!718413 () Bool)

(assert (=> bm!718413 (= call!718418 (isEmpty!42026 s2!3963))))

(declare-fun b!7751560 () Bool)

(declare-fun res!3090882 () Bool)

(assert (=> b!7751560 (=> (not res!3090882) (not e!4595218))))

(assert (=> b!7751560 (= res!3090882 (not call!718418))))

(declare-fun b!7751561 () Bool)

(declare-fun e!4595216 () Bool)

(assert (=> b!7751561 (= e!4595217 e!4595216)))

(declare-fun res!3090880 () Bool)

(assert (=> b!7751561 (=> (not res!3090880) (not e!4595216))))

(assert (=> b!7751561 (= res!3090880 (not lt!2669471))))

(declare-fun b!7751562 () Bool)

(assert (=> b!7751562 (= e!4595216 e!4595213)))

(declare-fun res!3090876 () Bool)

(assert (=> b!7751562 (=> res!3090876 e!4595213)))

(assert (=> b!7751562 (= res!3090876 call!718418)))

(declare-fun d!2342723 () Bool)

(assert (=> d!2342723 e!4595215))

(declare-fun c!1429642 () Bool)

(assert (=> d!2342723 (= c!1429642 (is-EmptyExpr!20618 lt!2669453))))

(assert (=> d!2342723 (= lt!2669471 e!4595219)))

(declare-fun c!1429641 () Bool)

(assert (=> d!2342723 (= c!1429641 (isEmpty!42026 s2!3963))))

(assert (=> d!2342723 (validRegex!11036 lt!2669453)))

(assert (=> d!2342723 (= (matchR!10108 lt!2669453 s2!3963) lt!2669471)))

(declare-fun b!7751555 () Bool)

(declare-fun res!3090877 () Bool)

(assert (=> b!7751555 (=> (not res!3090877) (not e!4595218))))

(assert (=> b!7751555 (= res!3090877 (isEmpty!42026 (tail!15375 s2!3963)))))

(declare-fun b!7751563 () Bool)

(assert (=> b!7751563 (= e!4595214 (not lt!2669471))))

(declare-fun b!7751564 () Bool)

(declare-fun res!3090881 () Bool)

(assert (=> b!7751564 (=> res!3090881 e!4595217)))

(assert (=> b!7751564 (= res!3090881 (not (is-ElementMatch!20618 lt!2669453)))))

(assert (=> b!7751564 (= e!4595214 e!4595217)))

(assert (= (and d!2342723 c!1429641) b!7751557))

(assert (= (and d!2342723 (not c!1429641)) b!7751553))

(assert (= (and d!2342723 c!1429642) b!7751554))

(assert (= (and d!2342723 (not c!1429642)) b!7751556))

(assert (= (and b!7751556 c!1429643) b!7751563))

(assert (= (and b!7751556 (not c!1429643)) b!7751564))

(assert (= (and b!7751564 (not res!3090881)) b!7751552))

(assert (= (and b!7751552 res!3090883) b!7751560))

(assert (= (and b!7751560 res!3090882) b!7751555))

(assert (= (and b!7751555 res!3090877) b!7751558))

(assert (= (and b!7751552 (not res!3090879)) b!7751561))

(assert (= (and b!7751561 res!3090880) b!7751562))

(assert (= (and b!7751562 (not res!3090876)) b!7751551))

(assert (= (and b!7751551 (not res!3090878)) b!7751559))

(assert (= (or b!7751554 b!7751560 b!7751562) bm!718413))

(declare-fun m!8216850 () Bool)

(assert (=> bm!718413 m!8216850))

(declare-fun m!8216854 () Bool)

(assert (=> b!7751559 m!8216854))

(declare-fun m!8216856 () Bool)

(assert (=> b!7751555 m!8216856))

(assert (=> b!7751555 m!8216856))

(declare-fun m!8216860 () Bool)

(assert (=> b!7751555 m!8216860))

(assert (=> b!7751558 m!8216854))

(declare-fun m!8216862 () Bool)

(assert (=> b!7751557 m!8216862))

(assert (=> b!7751553 m!8216854))

(assert (=> b!7751553 m!8216854))

(declare-fun m!8216866 () Bool)

(assert (=> b!7751553 m!8216866))

(assert (=> b!7751553 m!8216856))

(assert (=> b!7751553 m!8216866))

(assert (=> b!7751553 m!8216856))

(declare-fun m!8216868 () Bool)

(assert (=> b!7751553 m!8216868))

(assert (=> d!2342723 m!8216850))

(assert (=> d!2342723 m!8216786))

(assert (=> b!7751551 m!8216856))

(assert (=> b!7751551 m!8216856))

(assert (=> b!7751551 m!8216860))

(assert (=> b!7751357 d!2342723))

(declare-fun b!7751565 () Bool)

(declare-fun e!4595225 () Bool)

(declare-fun e!4595222 () Bool)

(assert (=> b!7751565 (= e!4595225 e!4595222)))

(declare-fun res!3090888 () Bool)

(assert (=> b!7751565 (= res!3090888 (not (nullable!9079 (reg!20947 lt!2669454))))))

(assert (=> b!7751565 (=> (not res!3090888) (not e!4595222))))

(declare-fun b!7751566 () Bool)

(declare-fun e!4595226 () Bool)

(declare-fun call!718421 () Bool)

(assert (=> b!7751566 (= e!4595226 call!718421)))

(declare-fun bm!718414 () Bool)

(declare-fun call!718420 () Bool)

(declare-fun c!1429645 () Bool)

(assert (=> bm!718414 (= call!718420 (validRegex!11036 (ite c!1429645 (regOne!41749 lt!2669454) (regOne!41748 lt!2669454))))))

(declare-fun b!7751567 () Bool)

(declare-fun res!3090887 () Bool)

(declare-fun e!4595224 () Bool)

(assert (=> b!7751567 (=> res!3090887 e!4595224)))

(assert (=> b!7751567 (= res!3090887 (not (is-Concat!29463 lt!2669454)))))

(declare-fun e!4595220 () Bool)

(assert (=> b!7751567 (= e!4595220 e!4595224)))

(declare-fun b!7751568 () Bool)

(declare-fun call!718419 () Bool)

(assert (=> b!7751568 (= e!4595222 call!718419)))

(declare-fun b!7751569 () Bool)

(declare-fun e!4595221 () Bool)

(assert (=> b!7751569 (= e!4595221 e!4595225)))

(declare-fun c!1429644 () Bool)

(assert (=> b!7751569 (= c!1429644 (is-Star!20618 lt!2669454))))

(declare-fun b!7751570 () Bool)

(assert (=> b!7751570 (= e!4595225 e!4595220)))

(assert (=> b!7751570 (= c!1429645 (is-Union!20618 lt!2669454))))

(declare-fun b!7751571 () Bool)

(assert (=> b!7751571 (= e!4595224 e!4595226)))

(declare-fun res!3090885 () Bool)

(assert (=> b!7751571 (=> (not res!3090885) (not e!4595226))))

(assert (=> b!7751571 (= res!3090885 call!718420)))

(declare-fun bm!718416 () Bool)

(assert (=> bm!718416 (= call!718421 call!718419)))

(declare-fun b!7751572 () Bool)

(declare-fun e!4595223 () Bool)

(assert (=> b!7751572 (= e!4595223 call!718421)))

(declare-fun b!7751573 () Bool)

(declare-fun res!3090884 () Bool)

(assert (=> b!7751573 (=> (not res!3090884) (not e!4595223))))

(assert (=> b!7751573 (= res!3090884 call!718420)))

(assert (=> b!7751573 (= e!4595220 e!4595223)))

(declare-fun bm!718415 () Bool)

(assert (=> bm!718415 (= call!718419 (validRegex!11036 (ite c!1429644 (reg!20947 lt!2669454) (ite c!1429645 (regTwo!41749 lt!2669454) (regTwo!41748 lt!2669454)))))))

(declare-fun d!2342725 () Bool)

(declare-fun res!3090886 () Bool)

(assert (=> d!2342725 (=> res!3090886 e!4595221)))

(assert (=> d!2342725 (= res!3090886 (is-ElementMatch!20618 lt!2669454))))

(assert (=> d!2342725 (= (validRegex!11036 lt!2669454) e!4595221)))

(assert (= (and d!2342725 (not res!3090886)) b!7751569))

(assert (= (and b!7751569 c!1429644) b!7751565))

(assert (= (and b!7751569 (not c!1429644)) b!7751570))

(assert (= (and b!7751565 res!3090888) b!7751568))

(assert (= (and b!7751570 c!1429645) b!7751573))

(assert (= (and b!7751570 (not c!1429645)) b!7751567))

(assert (= (and b!7751573 res!3090884) b!7751572))

(assert (= (and b!7751567 (not res!3090887)) b!7751571))

(assert (= (and b!7751571 res!3090885) b!7751566))

(assert (= (or b!7751573 b!7751571) bm!718414))

(assert (= (or b!7751572 b!7751566) bm!718416))

(assert (= (or b!7751568 bm!718416) bm!718415))

(declare-fun m!8216878 () Bool)

(assert (=> b!7751565 m!8216878))

(declare-fun m!8216880 () Bool)

(assert (=> bm!718414 m!8216880))

(declare-fun m!8216882 () Bool)

(assert (=> bm!718415 m!8216882))

(assert (=> b!7751361 d!2342725))

(declare-fun b!7751592 () Bool)

(declare-fun e!4595236 () Bool)

(declare-fun tp!2274270 () Bool)

(assert (=> b!7751592 (= e!4595236 (and tp_is_empty!51591 tp!2274270))))

(assert (=> b!7751360 (= tp!2274243 e!4595236)))

(assert (= (and b!7751360 (is-Cons!73339 (t!388198 s1!4391))) b!7751592))

(declare-fun b!7751606 () Bool)

(declare-fun e!4595239 () Bool)

(declare-fun tp!2274282 () Bool)

(declare-fun tp!2274281 () Bool)

(assert (=> b!7751606 (= e!4595239 (and tp!2274282 tp!2274281))))

(declare-fun b!7751604 () Bool)

(declare-fun tp!2274284 () Bool)

(declare-fun tp!2274285 () Bool)

(assert (=> b!7751604 (= e!4595239 (and tp!2274284 tp!2274285))))

(declare-fun b!7751603 () Bool)

(assert (=> b!7751603 (= e!4595239 tp_is_empty!51591)))

(declare-fun b!7751605 () Bool)

(declare-fun tp!2274283 () Bool)

(assert (=> b!7751605 (= e!4595239 tp!2274283)))

(assert (=> b!7751362 (= tp!2274241 e!4595239)))

(assert (= (and b!7751362 (is-ElementMatch!20618 (regOne!41748 r!25892))) b!7751603))

(assert (= (and b!7751362 (is-Concat!29463 (regOne!41748 r!25892))) b!7751604))

(assert (= (and b!7751362 (is-Star!20618 (regOne!41748 r!25892))) b!7751605))

(assert (= (and b!7751362 (is-Union!20618 (regOne!41748 r!25892))) b!7751606))

(declare-fun b!7751610 () Bool)

(declare-fun e!4595240 () Bool)

(declare-fun tp!2274287 () Bool)

(declare-fun tp!2274286 () Bool)

(assert (=> b!7751610 (= e!4595240 (and tp!2274287 tp!2274286))))

(declare-fun b!7751608 () Bool)

(declare-fun tp!2274289 () Bool)

(declare-fun tp!2274290 () Bool)

(assert (=> b!7751608 (= e!4595240 (and tp!2274289 tp!2274290))))

(declare-fun b!7751607 () Bool)

(assert (=> b!7751607 (= e!4595240 tp_is_empty!51591)))

(declare-fun b!7751609 () Bool)

(declare-fun tp!2274288 () Bool)

(assert (=> b!7751609 (= e!4595240 tp!2274288)))

(assert (=> b!7751362 (= tp!2274246 e!4595240)))

(assert (= (and b!7751362 (is-ElementMatch!20618 (regTwo!41748 r!25892))) b!7751607))

(assert (= (and b!7751362 (is-Concat!29463 (regTwo!41748 r!25892))) b!7751608))

(assert (= (and b!7751362 (is-Star!20618 (regTwo!41748 r!25892))) b!7751609))

(assert (= (and b!7751362 (is-Union!20618 (regTwo!41748 r!25892))) b!7751610))

(declare-fun b!7751611 () Bool)

(declare-fun e!4595241 () Bool)

(declare-fun tp!2274291 () Bool)

(assert (=> b!7751611 (= e!4595241 (and tp_is_empty!51591 tp!2274291))))

(assert (=> b!7751363 (= tp!2274242 e!4595241)))

(assert (= (and b!7751363 (is-Cons!73339 (t!388198 s2!3963))) b!7751611))

(declare-fun b!7751615 () Bool)

(declare-fun e!4595242 () Bool)

(declare-fun tp!2274293 () Bool)

(declare-fun tp!2274292 () Bool)

(assert (=> b!7751615 (= e!4595242 (and tp!2274293 tp!2274292))))

(declare-fun b!7751613 () Bool)

(declare-fun tp!2274295 () Bool)

(declare-fun tp!2274296 () Bool)

(assert (=> b!7751613 (= e!4595242 (and tp!2274295 tp!2274296))))

(declare-fun b!7751612 () Bool)

(assert (=> b!7751612 (= e!4595242 tp_is_empty!51591)))

(declare-fun b!7751614 () Bool)

(declare-fun tp!2274294 () Bool)

(assert (=> b!7751614 (= e!4595242 tp!2274294)))

(assert (=> b!7751366 (= tp!2274245 e!4595242)))

(assert (= (and b!7751366 (is-ElementMatch!20618 (regOne!41749 r!25892))) b!7751612))

(assert (= (and b!7751366 (is-Concat!29463 (regOne!41749 r!25892))) b!7751613))

(assert (= (and b!7751366 (is-Star!20618 (regOne!41749 r!25892))) b!7751614))

(assert (= (and b!7751366 (is-Union!20618 (regOne!41749 r!25892))) b!7751615))

(declare-fun b!7751619 () Bool)

(declare-fun e!4595243 () Bool)

(declare-fun tp!2274298 () Bool)

(declare-fun tp!2274297 () Bool)

(assert (=> b!7751619 (= e!4595243 (and tp!2274298 tp!2274297))))

(declare-fun b!7751617 () Bool)

(declare-fun tp!2274300 () Bool)

(declare-fun tp!2274301 () Bool)

(assert (=> b!7751617 (= e!4595243 (and tp!2274300 tp!2274301))))

(declare-fun b!7751616 () Bool)

(assert (=> b!7751616 (= e!4595243 tp_is_empty!51591)))

(declare-fun b!7751618 () Bool)

(declare-fun tp!2274299 () Bool)

(assert (=> b!7751618 (= e!4595243 tp!2274299)))

(assert (=> b!7751366 (= tp!2274240 e!4595243)))

(assert (= (and b!7751366 (is-ElementMatch!20618 (regTwo!41749 r!25892))) b!7751616))

(assert (= (and b!7751366 (is-Concat!29463 (regTwo!41749 r!25892))) b!7751617))

(assert (= (and b!7751366 (is-Star!20618 (regTwo!41749 r!25892))) b!7751618))

(assert (= (and b!7751366 (is-Union!20618 (regTwo!41749 r!25892))) b!7751619))

(declare-fun b!7751623 () Bool)

(declare-fun e!4595244 () Bool)

(declare-fun tp!2274303 () Bool)

(declare-fun tp!2274302 () Bool)

(assert (=> b!7751623 (= e!4595244 (and tp!2274303 tp!2274302))))

(declare-fun b!7751621 () Bool)

(declare-fun tp!2274305 () Bool)

(declare-fun tp!2274306 () Bool)

(assert (=> b!7751621 (= e!4595244 (and tp!2274305 tp!2274306))))

(declare-fun b!7751620 () Bool)

(assert (=> b!7751620 (= e!4595244 tp_is_empty!51591)))

(declare-fun b!7751622 () Bool)

(declare-fun tp!2274304 () Bool)

(assert (=> b!7751622 (= e!4595244 tp!2274304)))

(assert (=> b!7751356 (= tp!2274244 e!4595244)))

(assert (= (and b!7751356 (is-ElementMatch!20618 (reg!20947 r!25892))) b!7751620))

(assert (= (and b!7751356 (is-Concat!29463 (reg!20947 r!25892))) b!7751621))

(assert (= (and b!7751356 (is-Star!20618 (reg!20947 r!25892))) b!7751622))

(assert (= (and b!7751356 (is-Union!20618 (reg!20947 r!25892))) b!7751623))

(push 1)

(assert tp_is_empty!51591)

(assert (not d!2342723))

(assert (not bm!718393))

(assert (not b!7751558))

(assert (not bm!718389))

(assert (not bm!718414))

(assert (not b!7751467))

(assert (not bm!718413))

(assert (not b!7751609))

(assert (not b!7751613))

(assert (not b!7751559))

(assert (not b!7751618))

(assert (not bm!718412))

(assert (not b!7751619))

(assert (not d!2342721))

(assert (not b!7751606))

(assert (not b!7751614))

(assert (not d!2342717))

(assert (not bm!718407))

(assert (not b!7751610))

(assert (not b!7751465))

(assert (not bm!718405))

(assert (not b!7751605))

(assert (not b!7751608))

(assert (not b!7751463))

(assert (not b!7751622))

(assert (not b!7751592))

(assert (not b!7751553))

(assert (not b!7751461))

(assert (not b!7751621))

(assert (not b!7751418))

(assert (not b!7751615))

(assert (not d!2342719))

(assert (not bm!718415))

(assert (not bm!718410))

(assert (not b!7751469))

(assert (not b!7751604))

(assert (not b!7751520))

(assert (not b!7751617))

(assert (not bm!718388))

(assert (not b!7751611))

(assert (not b!7751623))

(assert (not b!7751555))

(assert (not b!7751551))

(assert (not b!7751565))

(assert (not b!7751468))

(assert (not b!7751557))

(assert (not b!7751544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

