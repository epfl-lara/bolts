; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236526 () Bool)

(assert start!236526)

(declare-fun b!2413933 () Bool)

(declare-fun e!1536445 () Bool)

(declare-datatypes ((C!14338 0))(
  ( (C!14339 (val!8411 Int)) )
))
(declare-datatypes ((List!28418 0))(
  ( (Nil!28320) (Cons!28320 (h!33721 C!14338) (t!208395 List!28418)) )
))
(declare-fun s!9460 () List!28418)

(declare-fun ++!7013 (List!28418 List!28418) List!28418)

(assert (=> b!2413933 (= e!1536445 (= (++!7013 Nil!28320 s!9460) s!9460))))

(declare-fun res!1025194 () Bool)

(declare-fun e!1536446 () Bool)

(assert (=> start!236526 (=> (not res!1025194) (not e!1536446))))

(declare-datatypes ((Regex!7090 0))(
  ( (ElementMatch!7090 (c!384622 C!14338)) (Concat!11726 (regOne!14692 Regex!7090) (regTwo!14692 Regex!7090)) (EmptyExpr!7090) (Star!7090 (reg!7419 Regex!7090)) (EmptyLang!7090) (Union!7090 (regOne!14693 Regex!7090) (regTwo!14693 Regex!7090)) )
))
(declare-datatypes ((List!28419 0))(
  ( (Nil!28321) (Cons!28321 (h!33722 Regex!7090) (t!208396 List!28419)) )
))
(declare-fun l!9164 () List!28419)

(declare-fun lambda!90886 () Int)

(declare-fun forall!5724 (List!28419 Int) Bool)

(assert (=> start!236526 (= res!1025194 (forall!5724 l!9164 lambda!90886))))

(assert (=> start!236526 e!1536446))

(declare-fun e!1536442 () Bool)

(assert (=> start!236526 e!1536442))

(declare-fun e!1536447 () Bool)

(assert (=> start!236526 e!1536447))

(declare-fun e!1536441 () Bool)

(assert (=> start!236526 e!1536441))

(declare-fun b!2413934 () Bool)

(declare-fun tp!767762 () Bool)

(declare-fun tp!767760 () Bool)

(assert (=> b!2413934 (= e!1536447 (and tp!767762 tp!767760))))

(declare-fun b!2413935 () Bool)

(declare-fun tp_is_empty!11593 () Bool)

(declare-fun tp!767761 () Bool)

(assert (=> b!2413935 (= e!1536441 (and tp_is_empty!11593 tp!767761))))

(declare-fun b!2413936 () Bool)

(declare-fun res!1025196 () Bool)

(assert (=> b!2413936 (=> res!1025196 e!1536445)))

(declare-fun lt!873953 () Regex!7090)

(declare-fun validRegex!2812 (Regex!7090) Bool)

(assert (=> b!2413936 (= res!1025196 (not (validRegex!2812 lt!873953)))))

(declare-fun b!2413937 () Bool)

(declare-fun e!1536443 () Bool)

(assert (=> b!2413937 (= e!1536446 (not e!1536443))))

(declare-fun res!1025197 () Bool)

(assert (=> b!2413937 (=> res!1025197 e!1536443)))

(declare-fun r!13927 () Regex!7090)

(assert (=> b!2413937 (= res!1025197 (or (is-Concat!11726 r!13927) (is-EmptyExpr!7090 r!13927)))))

(declare-fun matchR!3207 (Regex!7090 List!28418) Bool)

(declare-fun matchRSpec!939 (Regex!7090 List!28418) Bool)

(assert (=> b!2413937 (= (matchR!3207 r!13927 s!9460) (matchRSpec!939 r!13927 s!9460))))

(declare-datatypes ((Unit!41451 0))(
  ( (Unit!41452) )
))
(declare-fun lt!873955 () Unit!41451)

(declare-fun mainMatchTheorem!939 (Regex!7090 List!28418) Unit!41451)

(assert (=> b!2413937 (= lt!873955 (mainMatchTheorem!939 r!13927 s!9460))))

(declare-fun b!2413938 () Bool)

(declare-fun tp!767759 () Bool)

(assert (=> b!2413938 (= e!1536447 tp!767759)))

(declare-fun b!2413939 () Bool)

(declare-fun res!1025192 () Bool)

(assert (=> b!2413939 (=> res!1025192 e!1536443)))

(declare-fun isEmpty!16328 (List!28419) Bool)

(assert (=> b!2413939 (= res!1025192 (isEmpty!16328 l!9164))))

(declare-fun b!2413940 () Bool)

(declare-fun tp!767758 () Bool)

(declare-fun tp!767756 () Bool)

(assert (=> b!2413940 (= e!1536447 (and tp!767758 tp!767756))))

(declare-fun b!2413941 () Bool)

(declare-fun e!1536444 () Bool)

(assert (=> b!2413941 (= e!1536443 e!1536444)))

(declare-fun res!1025195 () Bool)

(assert (=> b!2413941 (=> res!1025195 e!1536444)))

(declare-fun lt!873954 () List!28419)

(assert (=> b!2413941 (= res!1025195 (not (isEmpty!16328 lt!873954)))))

(declare-fun tail!3669 (List!28419) List!28419)

(assert (=> b!2413941 (= lt!873954 (tail!3669 l!9164))))

(declare-fun b!2413942 () Bool)

(assert (=> b!2413942 (= e!1536447 tp_is_empty!11593)))

(declare-fun b!2413943 () Bool)

(declare-fun res!1025191 () Bool)

(assert (=> b!2413943 (=> (not res!1025191) (not e!1536446))))

(declare-fun generalisedConcat!191 (List!28419) Regex!7090)

(assert (=> b!2413943 (= res!1025191 (= r!13927 (generalisedConcat!191 l!9164)))))

(declare-fun b!2413944 () Bool)

(assert (=> b!2413944 (= e!1536444 e!1536445)))

(declare-fun res!1025193 () Bool)

(assert (=> b!2413944 (=> res!1025193 e!1536445)))

(assert (=> b!2413944 (= res!1025193 (matchR!3207 lt!873953 s!9460))))

(declare-fun head!5397 (List!28419) Regex!7090)

(assert (=> b!2413944 (= lt!873953 (head!5397 l!9164))))

(declare-fun b!2413945 () Bool)

(declare-fun tp!767763 () Bool)

(declare-fun tp!767757 () Bool)

(assert (=> b!2413945 (= e!1536442 (and tp!767763 tp!767757))))

(declare-fun b!2413946 () Bool)

(declare-fun res!1025199 () Bool)

(assert (=> b!2413946 (=> res!1025199 e!1536445)))

(assert (=> b!2413946 (= res!1025199 false)))

(declare-fun b!2413947 () Bool)

(declare-fun res!1025198 () Bool)

(assert (=> b!2413947 (=> res!1025198 e!1536444)))

(assert (=> b!2413947 (= res!1025198 (not (= (generalisedConcat!191 lt!873954) EmptyExpr!7090)))))

(assert (= (and start!236526 res!1025194) b!2413943))

(assert (= (and b!2413943 res!1025191) b!2413937))

(assert (= (and b!2413937 (not res!1025197)) b!2413939))

(assert (= (and b!2413939 (not res!1025192)) b!2413941))

(assert (= (and b!2413941 (not res!1025195)) b!2413947))

(assert (= (and b!2413947 (not res!1025198)) b!2413944))

(assert (= (and b!2413944 (not res!1025193)) b!2413936))

(assert (= (and b!2413936 (not res!1025196)) b!2413946))

(assert (= (and b!2413946 (not res!1025199)) b!2413933))

(assert (= (and start!236526 (is-Cons!28321 l!9164)) b!2413945))

(assert (= (and start!236526 (is-ElementMatch!7090 r!13927)) b!2413942))

(assert (= (and start!236526 (is-Concat!11726 r!13927)) b!2413934))

(assert (= (and start!236526 (is-Star!7090 r!13927)) b!2413938))

(assert (= (and start!236526 (is-Union!7090 r!13927)) b!2413940))

(assert (= (and start!236526 (is-Cons!28320 s!9460)) b!2413935))

(declare-fun m!2803735 () Bool)

(assert (=> b!2413944 m!2803735))

(declare-fun m!2803737 () Bool)

(assert (=> b!2413944 m!2803737))

(declare-fun m!2803739 () Bool)

(assert (=> start!236526 m!2803739))

(declare-fun m!2803741 () Bool)

(assert (=> b!2413941 m!2803741))

(declare-fun m!2803743 () Bool)

(assert (=> b!2413941 m!2803743))

(declare-fun m!2803745 () Bool)

(assert (=> b!2413943 m!2803745))

(declare-fun m!2803747 () Bool)

(assert (=> b!2413937 m!2803747))

(declare-fun m!2803749 () Bool)

(assert (=> b!2413937 m!2803749))

(declare-fun m!2803751 () Bool)

(assert (=> b!2413937 m!2803751))

(declare-fun m!2803753 () Bool)

(assert (=> b!2413939 m!2803753))

(declare-fun m!2803755 () Bool)

(assert (=> b!2413933 m!2803755))

(declare-fun m!2803757 () Bool)

(assert (=> b!2413936 m!2803757))

(declare-fun m!2803759 () Bool)

(assert (=> b!2413947 m!2803759))

(push 1)

(assert (not start!236526))

(assert (not b!2413945))

(assert tp_is_empty!11593)

(assert (not b!2413933))

(assert (not b!2413937))

(assert (not b!2413935))

(assert (not b!2413944))

(assert (not b!2413947))

(assert (not b!2413938))

(assert (not b!2413939))

(assert (not b!2413940))

(assert (not b!2413936))

(assert (not b!2413941))

(assert (not b!2413934))

(assert (not b!2413943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700972 () Bool)

(assert (=> d!700972 (= (isEmpty!16328 lt!873954) (is-Nil!28321 lt!873954))))

(assert (=> b!2413941 d!700972))

(declare-fun d!700974 () Bool)

(assert (=> d!700974 (= (tail!3669 l!9164) (t!208396 l!9164))))

(assert (=> b!2413941 d!700974))

(declare-fun b!2414017 () Bool)

(declare-fun e!1536495 () Bool)

(declare-fun call!147421 () Bool)

(assert (=> b!2414017 (= e!1536495 call!147421)))

(declare-fun b!2414018 () Bool)

(declare-fun e!1536492 () Bool)

(declare-fun e!1536490 () Bool)

(assert (=> b!2414018 (= e!1536492 e!1536490)))

(declare-fun c!384628 () Bool)

(assert (=> b!2414018 (= c!384628 (is-Star!7090 lt!873953))))

(declare-fun b!2414019 () Bool)

(declare-fun res!1025246 () Bool)

(assert (=> b!2414019 (=> (not res!1025246) (not e!1536495))))

(declare-fun call!147420 () Bool)

(assert (=> b!2414019 (= res!1025246 call!147420)))

(declare-fun e!1536494 () Bool)

(assert (=> b!2414019 (= e!1536494 e!1536495)))

(declare-fun b!2414020 () Bool)

(assert (=> b!2414020 (= e!1536490 e!1536494)))

(declare-fun c!384629 () Bool)

(assert (=> b!2414020 (= c!384629 (is-Union!7090 lt!873953))))

(declare-fun bm!147415 () Bool)

(declare-fun call!147419 () Bool)

(assert (=> bm!147415 (= call!147421 call!147419)))

(declare-fun bm!147414 () Bool)

(assert (=> bm!147414 (= call!147419 (validRegex!2812 (ite c!384628 (reg!7419 lt!873953) (ite c!384629 (regTwo!14693 lt!873953) (regOne!14692 lt!873953)))))))

(declare-fun d!700976 () Bool)

(declare-fun res!1025243 () Bool)

(assert (=> d!700976 (=> res!1025243 e!1536492)))

(assert (=> d!700976 (= res!1025243 (is-ElementMatch!7090 lt!873953))))

(assert (=> d!700976 (= (validRegex!2812 lt!873953) e!1536492)))

(declare-fun b!2414021 () Bool)

(declare-fun e!1536491 () Bool)

(assert (=> b!2414021 (= e!1536491 call!147419)))

(declare-fun b!2414022 () Bool)

(declare-fun e!1536493 () Bool)

(declare-fun e!1536489 () Bool)

(assert (=> b!2414022 (= e!1536493 e!1536489)))

(declare-fun res!1025247 () Bool)

(assert (=> b!2414022 (=> (not res!1025247) (not e!1536489))))

(assert (=> b!2414022 (= res!1025247 call!147421)))

(declare-fun b!2414023 () Bool)

(assert (=> b!2414023 (= e!1536489 call!147420)))

(declare-fun b!2414024 () Bool)

(assert (=> b!2414024 (= e!1536490 e!1536491)))

(declare-fun res!1025244 () Bool)

(declare-fun nullable!2130 (Regex!7090) Bool)

(assert (=> b!2414024 (= res!1025244 (not (nullable!2130 (reg!7419 lt!873953))))))

(assert (=> b!2414024 (=> (not res!1025244) (not e!1536491))))

(declare-fun b!2414025 () Bool)

(declare-fun res!1025245 () Bool)

(assert (=> b!2414025 (=> res!1025245 e!1536493)))

(assert (=> b!2414025 (= res!1025245 (not (is-Concat!11726 lt!873953)))))

(assert (=> b!2414025 (= e!1536494 e!1536493)))

(declare-fun bm!147416 () Bool)

(assert (=> bm!147416 (= call!147420 (validRegex!2812 (ite c!384629 (regOne!14693 lt!873953) (regTwo!14692 lt!873953))))))

(assert (= (and d!700976 (not res!1025243)) b!2414018))

(assert (= (and b!2414018 c!384628) b!2414024))

(assert (= (and b!2414018 (not c!384628)) b!2414020))

(assert (= (and b!2414024 res!1025244) b!2414021))

(assert (= (and b!2414020 c!384629) b!2414019))

(assert (= (and b!2414020 (not c!384629)) b!2414025))

(assert (= (and b!2414019 res!1025246) b!2414017))

(assert (= (and b!2414025 (not res!1025245)) b!2414022))

(assert (= (and b!2414022 res!1025247) b!2414023))

(assert (= (or b!2414019 b!2414023) bm!147416))

(assert (= (or b!2414017 b!2414022) bm!147415))

(assert (= (or b!2414021 bm!147415) bm!147414))

(declare-fun m!2803791 () Bool)

(assert (=> bm!147414 m!2803791))

(declare-fun m!2803793 () Bool)

(assert (=> b!2414024 m!2803793))

(declare-fun m!2803795 () Bool)

(assert (=> bm!147416 m!2803795))

(assert (=> b!2413936 d!700976))

(declare-fun bs!463513 () Bool)

(declare-fun d!700980 () Bool)

(assert (= bs!463513 (and d!700980 start!236526)))

(declare-fun lambda!90894 () Int)

(assert (=> bs!463513 (= lambda!90894 lambda!90886)))

(declare-fun b!2414066 () Bool)

(declare-fun e!1536523 () Regex!7090)

(declare-fun e!1536524 () Regex!7090)

(assert (=> b!2414066 (= e!1536523 e!1536524)))

(declare-fun c!384648 () Bool)

(assert (=> b!2414066 (= c!384648 (is-Cons!28321 lt!873954))))

(declare-fun e!1536522 () Bool)

(assert (=> d!700980 e!1536522))

(declare-fun res!1025256 () Bool)

(assert (=> d!700980 (=> (not res!1025256) (not e!1536522))))

(declare-fun lt!873969 () Regex!7090)

(assert (=> d!700980 (= res!1025256 (validRegex!2812 lt!873969))))

(assert (=> d!700980 (= lt!873969 e!1536523)))

(declare-fun c!384647 () Bool)

(declare-fun e!1536520 () Bool)

(assert (=> d!700980 (= c!384647 e!1536520)))

(declare-fun res!1025257 () Bool)

(assert (=> d!700980 (=> (not res!1025257) (not e!1536520))))

(assert (=> d!700980 (= res!1025257 (is-Cons!28321 lt!873954))))

(assert (=> d!700980 (forall!5724 lt!873954 lambda!90894)))

(assert (=> d!700980 (= (generalisedConcat!191 lt!873954) lt!873969)))

(declare-fun b!2414067 () Bool)

(declare-fun e!1536521 () Bool)

(declare-fun e!1536525 () Bool)

(assert (=> b!2414067 (= e!1536521 e!1536525)))

(declare-fun c!384646 () Bool)

(assert (=> b!2414067 (= c!384646 (isEmpty!16328 (tail!3669 lt!873954)))))

(declare-fun b!2414068 () Bool)

(assert (=> b!2414068 (= e!1536524 (Concat!11726 (h!33722 lt!873954) (generalisedConcat!191 (t!208396 lt!873954))))))

(declare-fun b!2414069 () Bool)

(assert (=> b!2414069 (= e!1536523 (h!33722 lt!873954))))

(declare-fun b!2414070 () Bool)

(assert (=> b!2414070 (= e!1536520 (isEmpty!16328 (t!208396 lt!873954)))))

(declare-fun b!2414071 () Bool)

(assert (=> b!2414071 (= e!1536522 e!1536521)))

(declare-fun c!384649 () Bool)

(assert (=> b!2414071 (= c!384649 (isEmpty!16328 lt!873954))))

(declare-fun b!2414072 () Bool)

(declare-fun isEmptyExpr!149 (Regex!7090) Bool)

(assert (=> b!2414072 (= e!1536521 (isEmptyExpr!149 lt!873969))))

(declare-fun b!2414073 () Bool)

(assert (=> b!2414073 (= e!1536525 (= lt!873969 (head!5397 lt!873954)))))

(declare-fun b!2414074 () Bool)

(assert (=> b!2414074 (= e!1536524 EmptyExpr!7090)))

(declare-fun b!2414075 () Bool)

(declare-fun isConcat!149 (Regex!7090) Bool)

(assert (=> b!2414075 (= e!1536525 (isConcat!149 lt!873969))))

(assert (= (and d!700980 res!1025257) b!2414070))

(assert (= (and d!700980 c!384647) b!2414069))

(assert (= (and d!700980 (not c!384647)) b!2414066))

(assert (= (and b!2414066 c!384648) b!2414068))

(assert (= (and b!2414066 (not c!384648)) b!2414074))

(assert (= (and d!700980 res!1025256) b!2414071))

(assert (= (and b!2414071 c!384649) b!2414072))

(assert (= (and b!2414071 (not c!384649)) b!2414067))

(assert (= (and b!2414067 c!384646) b!2414073))

(assert (= (and b!2414067 (not c!384646)) b!2414075))

(declare-fun m!2803797 () Bool)

(assert (=> d!700980 m!2803797))

(declare-fun m!2803799 () Bool)

(assert (=> d!700980 m!2803799))

(declare-fun m!2803801 () Bool)

(assert (=> b!2414073 m!2803801))

(assert (=> b!2414071 m!2803741))

(declare-fun m!2803803 () Bool)

(assert (=> b!2414068 m!2803803))

(declare-fun m!2803805 () Bool)

(assert (=> b!2414072 m!2803805))

(declare-fun m!2803807 () Bool)

(assert (=> b!2414070 m!2803807))

(declare-fun m!2803809 () Bool)

(assert (=> b!2414067 m!2803809))

(assert (=> b!2414067 m!2803809))

(declare-fun m!2803811 () Bool)

(assert (=> b!2414067 m!2803811))

(declare-fun m!2803813 () Bool)

(assert (=> b!2414075 m!2803813))

(assert (=> b!2413947 d!700980))

(declare-fun b!2414124 () Bool)

(declare-fun e!1536557 () Bool)

(declare-fun e!1536553 () Bool)

(assert (=> b!2414124 (= e!1536557 e!1536553)))

(declare-fun res!1025280 () Bool)

(assert (=> b!2414124 (=> res!1025280 e!1536553)))

(declare-fun call!147424 () Bool)

(assert (=> b!2414124 (= res!1025280 call!147424)))

(declare-fun b!2414125 () Bool)

(declare-fun res!1025278 () Bool)

(declare-fun e!1536552 () Bool)

(assert (=> b!2414125 (=> res!1025278 e!1536552)))

(assert (=> b!2414125 (= res!1025278 (not (is-ElementMatch!7090 r!13927)))))

(declare-fun e!1536555 () Bool)

(assert (=> b!2414125 (= e!1536555 e!1536552)))

(declare-fun b!2414126 () Bool)

(declare-fun e!1536554 () Bool)

(declare-fun lt!873974 () Bool)

(assert (=> b!2414126 (= e!1536554 (= lt!873974 call!147424))))

(declare-fun b!2414127 () Bool)

(declare-fun res!1025285 () Bool)

(assert (=> b!2414127 (=> res!1025285 e!1536553)))

(declare-fun isEmpty!16330 (List!28418) Bool)

(declare-fun tail!3671 (List!28418) List!28418)

(assert (=> b!2414127 (= res!1025285 (not (isEmpty!16330 (tail!3671 s!9460))))))

(declare-fun b!2414128 () Bool)

(declare-fun res!1025284 () Bool)

(assert (=> b!2414128 (=> res!1025284 e!1536552)))

(declare-fun e!1536558 () Bool)

(assert (=> b!2414128 (= res!1025284 e!1536558)))

(declare-fun res!1025282 () Bool)

(assert (=> b!2414128 (=> (not res!1025282) (not e!1536558))))

(assert (=> b!2414128 (= res!1025282 lt!873974)))

(declare-fun b!2414129 () Bool)

(declare-fun res!1025281 () Bool)

(assert (=> b!2414129 (=> (not res!1025281) (not e!1536558))))

(assert (=> b!2414129 (= res!1025281 (not call!147424))))

(declare-fun b!2414130 () Bool)

(assert (=> b!2414130 (= e!1536554 e!1536555)))

(declare-fun c!384665 () Bool)

(assert (=> b!2414130 (= c!384665 (is-EmptyLang!7090 r!13927))))

(declare-fun bm!147419 () Bool)

(assert (=> bm!147419 (= call!147424 (isEmpty!16330 s!9460))))

(declare-fun b!2414131 () Bool)

(assert (=> b!2414131 (= e!1536552 e!1536557)))

(declare-fun res!1025283 () Bool)

(assert (=> b!2414131 (=> (not res!1025283) (not e!1536557))))

(assert (=> b!2414131 (= res!1025283 (not lt!873974))))

(declare-fun b!2414132 () Bool)

(declare-fun e!1536556 () Bool)

(declare-fun derivativeStep!1787 (Regex!7090 C!14338) Regex!7090)

(declare-fun head!5399 (List!28418) C!14338)

(assert (=> b!2414132 (= e!1536556 (matchR!3207 (derivativeStep!1787 r!13927 (head!5399 s!9460)) (tail!3671 s!9460)))))

(declare-fun b!2414133 () Bool)

(assert (=> b!2414133 (= e!1536555 (not lt!873974))))

(declare-fun d!700982 () Bool)

(assert (=> d!700982 e!1536554))

(declare-fun c!384664 () Bool)

(assert (=> d!700982 (= c!384664 (is-EmptyExpr!7090 r!13927))))

(assert (=> d!700982 (= lt!873974 e!1536556)))

(declare-fun c!384666 () Bool)

(assert (=> d!700982 (= c!384666 (isEmpty!16330 s!9460))))

(assert (=> d!700982 (validRegex!2812 r!13927)))

(assert (=> d!700982 (= (matchR!3207 r!13927 s!9460) lt!873974)))

(declare-fun b!2414134 () Bool)

(assert (=> b!2414134 (= e!1536553 (not (= (head!5399 s!9460) (c!384622 r!13927))))))

(declare-fun b!2414135 () Bool)

(declare-fun res!1025279 () Bool)

(assert (=> b!2414135 (=> (not res!1025279) (not e!1536558))))

(assert (=> b!2414135 (= res!1025279 (isEmpty!16330 (tail!3671 s!9460)))))

(declare-fun b!2414136 () Bool)

(assert (=> b!2414136 (= e!1536556 (nullable!2130 r!13927))))

(declare-fun b!2414137 () Bool)

(assert (=> b!2414137 (= e!1536558 (= (head!5399 s!9460) (c!384622 r!13927)))))

(assert (= (and d!700982 c!384666) b!2414136))

(assert (= (and d!700982 (not c!384666)) b!2414132))

(assert (= (and d!700982 c!384664) b!2414126))

(assert (= (and d!700982 (not c!384664)) b!2414130))

(assert (= (and b!2414130 c!384665) b!2414133))

(assert (= (and b!2414130 (not c!384665)) b!2414125))

(assert (= (and b!2414125 (not res!1025278)) b!2414128))

(assert (= (and b!2414128 res!1025282) b!2414129))

(assert (= (and b!2414129 res!1025281) b!2414135))

(assert (= (and b!2414135 res!1025279) b!2414137))

(assert (= (and b!2414128 (not res!1025284)) b!2414131))

(assert (= (and b!2414131 res!1025283) b!2414124))

(assert (= (and b!2414124 (not res!1025280)) b!2414127))

(assert (= (and b!2414127 (not res!1025285)) b!2414134))

(assert (= (or b!2414126 b!2414124 b!2414129) bm!147419))

(declare-fun m!2803829 () Bool)

(assert (=> b!2414137 m!2803829))

(declare-fun m!2803831 () Bool)

(assert (=> b!2414127 m!2803831))

(assert (=> b!2414127 m!2803831))

(declare-fun m!2803835 () Bool)

(assert (=> b!2414127 m!2803835))

(assert (=> b!2414135 m!2803831))

(assert (=> b!2414135 m!2803831))

(assert (=> b!2414135 m!2803835))

(declare-fun m!2803839 () Bool)

(assert (=> d!700982 m!2803839))

(declare-fun m!2803841 () Bool)

(assert (=> d!700982 m!2803841))

(declare-fun m!2803843 () Bool)

(assert (=> b!2414136 m!2803843))

(assert (=> b!2414134 m!2803829))

(assert (=> bm!147419 m!2803839))

(assert (=> b!2414132 m!2803829))

(assert (=> b!2414132 m!2803829))

(declare-fun m!2803847 () Bool)

(assert (=> b!2414132 m!2803847))

(assert (=> b!2414132 m!2803831))

(assert (=> b!2414132 m!2803847))

(assert (=> b!2414132 m!2803831))

(declare-fun m!2803851 () Bool)

(assert (=> b!2414132 m!2803851))

(assert (=> b!2413937 d!700982))

(declare-fun b!2414190 () Bool)

(assert (=> b!2414190 true))

(assert (=> b!2414190 true))

(declare-fun bs!463517 () Bool)

(declare-fun b!2414182 () Bool)

(assert (= bs!463517 (and b!2414182 b!2414190)))

(declare-fun lambda!90902 () Int)

(declare-fun lambda!90901 () Int)

(assert (=> bs!463517 (not (= lambda!90902 lambda!90901))))

(assert (=> b!2414182 true))

(assert (=> b!2414182 true))

(declare-fun e!1536588 () Bool)

(declare-fun call!147429 () Bool)

(assert (=> b!2414182 (= e!1536588 call!147429)))

(declare-fun c!384678 () Bool)

(declare-fun bm!147424 () Bool)

(declare-fun Exists!1137 (Int) Bool)

(assert (=> bm!147424 (= call!147429 (Exists!1137 (ite c!384678 lambda!90901 lambda!90902)))))

(declare-fun b!2414183 () Bool)

(declare-fun res!1025308 () Bool)

(declare-fun e!1536587 () Bool)

(assert (=> b!2414183 (=> res!1025308 e!1536587)))

(declare-fun call!147430 () Bool)

(assert (=> b!2414183 (= res!1025308 call!147430)))

(assert (=> b!2414183 (= e!1536588 e!1536587)))

(declare-fun b!2414184 () Bool)

(declare-fun e!1536584 () Bool)

(assert (=> b!2414184 (= e!1536584 call!147430)))

(declare-fun bm!147425 () Bool)

(assert (=> bm!147425 (= call!147430 (isEmpty!16330 s!9460))))

(declare-fun b!2414185 () Bool)

(declare-fun e!1536585 () Bool)

(assert (=> b!2414185 (= e!1536585 (matchRSpec!939 (regTwo!14693 r!13927) s!9460))))

(declare-fun b!2414186 () Bool)

(declare-fun e!1536589 () Bool)

(assert (=> b!2414186 (= e!1536589 e!1536585)))

(declare-fun res!1025310 () Bool)

(assert (=> b!2414186 (= res!1025310 (matchRSpec!939 (regOne!14693 r!13927) s!9460))))

(assert (=> b!2414186 (=> res!1025310 e!1536585)))

(declare-fun b!2414187 () Bool)

(declare-fun e!1536586 () Bool)

(assert (=> b!2414187 (= e!1536586 (= s!9460 (Cons!28320 (c!384622 r!13927) Nil!28320)))))

(declare-fun b!2414188 () Bool)

(assert (=> b!2414188 (= e!1536589 e!1536588)))

(assert (=> b!2414188 (= c!384678 (is-Star!7090 r!13927))))

(declare-fun b!2414189 () Bool)

(declare-fun c!384680 () Bool)

(assert (=> b!2414189 (= c!384680 (is-Union!7090 r!13927))))

(assert (=> b!2414189 (= e!1536586 e!1536589)))

(declare-fun d!700990 () Bool)

(declare-fun c!384679 () Bool)

(assert (=> d!700990 (= c!384679 (is-EmptyExpr!7090 r!13927))))

(assert (=> d!700990 (= (matchRSpec!939 r!13927 s!9460) e!1536584)))

(assert (=> b!2414190 (= e!1536587 call!147429)))

(declare-fun b!2414191 () Bool)

(declare-fun e!1536583 () Bool)

(assert (=> b!2414191 (= e!1536584 e!1536583)))

(declare-fun res!1025309 () Bool)

(assert (=> b!2414191 (= res!1025309 (not (is-EmptyLang!7090 r!13927)))))

(assert (=> b!2414191 (=> (not res!1025309) (not e!1536583))))

(declare-fun b!2414192 () Bool)

(declare-fun c!384681 () Bool)

(assert (=> b!2414192 (= c!384681 (is-ElementMatch!7090 r!13927))))

(assert (=> b!2414192 (= e!1536583 e!1536586)))

(assert (= (and d!700990 c!384679) b!2414184))

(assert (= (and d!700990 (not c!384679)) b!2414191))

(assert (= (and b!2414191 res!1025309) b!2414192))

(assert (= (and b!2414192 c!384681) b!2414187))

(assert (= (and b!2414192 (not c!384681)) b!2414189))

(assert (= (and b!2414189 c!384680) b!2414186))

(assert (= (and b!2414189 (not c!384680)) b!2414188))

(assert (= (and b!2414186 (not res!1025310)) b!2414185))

(assert (= (and b!2414188 c!384678) b!2414183))

(assert (= (and b!2414188 (not c!384678)) b!2414182))

(assert (= (and b!2414183 (not res!1025308)) b!2414190))

(assert (= (or b!2414190 b!2414182) bm!147424))

(assert (= (or b!2414184 b!2414183) bm!147425))

(declare-fun m!2803877 () Bool)

(assert (=> bm!147424 m!2803877))

(assert (=> bm!147425 m!2803839))

(declare-fun m!2803879 () Bool)

(assert (=> b!2414185 m!2803879))

(declare-fun m!2803881 () Bool)

(assert (=> b!2414186 m!2803881))

(assert (=> b!2413937 d!700990))

(declare-fun d!700998 () Bool)

(assert (=> d!700998 (= (matchR!3207 r!13927 s!9460) (matchRSpec!939 r!13927 s!9460))))

(declare-fun lt!873980 () Unit!41451)

(declare-fun choose!14278 (Regex!7090 List!28418) Unit!41451)

(assert (=> d!700998 (= lt!873980 (choose!14278 r!13927 s!9460))))

(assert (=> d!700998 (validRegex!2812 r!13927)))

(assert (=> d!700998 (= (mainMatchTheorem!939 r!13927 s!9460) lt!873980)))

(declare-fun bs!463518 () Bool)

(assert (= bs!463518 d!700998))

(assert (=> bs!463518 m!2803747))

(assert (=> bs!463518 m!2803749))

(declare-fun m!2803883 () Bool)

(assert (=> bs!463518 m!2803883))

(assert (=> bs!463518 m!2803841))

(assert (=> b!2413937 d!700998))

(declare-fun bs!463519 () Bool)

(declare-fun d!701000 () Bool)

(assert (= bs!463519 (and d!701000 start!236526)))

(declare-fun lambda!90903 () Int)

(assert (=> bs!463519 (= lambda!90903 lambda!90886)))

(declare-fun bs!463520 () Bool)

(assert (= bs!463520 (and d!701000 d!700980)))

(assert (=> bs!463520 (= lambda!90903 lambda!90894)))

(declare-fun b!2414215 () Bool)

(declare-fun e!1536607 () Regex!7090)

(declare-fun e!1536608 () Regex!7090)

(assert (=> b!2414215 (= e!1536607 e!1536608)))

(declare-fun c!384688 () Bool)

(assert (=> b!2414215 (= c!384688 (is-Cons!28321 l!9164))))

(declare-fun e!1536606 () Bool)

(assert (=> d!701000 e!1536606))

(declare-fun res!1025321 () Bool)

(assert (=> d!701000 (=> (not res!1025321) (not e!1536606))))

(declare-fun lt!873981 () Regex!7090)

(assert (=> d!701000 (= res!1025321 (validRegex!2812 lt!873981))))

(assert (=> d!701000 (= lt!873981 e!1536607)))

(declare-fun c!384687 () Bool)

(declare-fun e!1536604 () Bool)

(assert (=> d!701000 (= c!384687 e!1536604)))

(declare-fun res!1025322 () Bool)

(assert (=> d!701000 (=> (not res!1025322) (not e!1536604))))

(assert (=> d!701000 (= res!1025322 (is-Cons!28321 l!9164))))

(assert (=> d!701000 (forall!5724 l!9164 lambda!90903)))

(assert (=> d!701000 (= (generalisedConcat!191 l!9164) lt!873981)))

(declare-fun b!2414216 () Bool)

(declare-fun e!1536605 () Bool)

(declare-fun e!1536609 () Bool)

(assert (=> b!2414216 (= e!1536605 e!1536609)))

(declare-fun c!384686 () Bool)

(assert (=> b!2414216 (= c!384686 (isEmpty!16328 (tail!3669 l!9164)))))

(declare-fun b!2414217 () Bool)

(assert (=> b!2414217 (= e!1536608 (Concat!11726 (h!33722 l!9164) (generalisedConcat!191 (t!208396 l!9164))))))

(declare-fun b!2414218 () Bool)

(assert (=> b!2414218 (= e!1536607 (h!33722 l!9164))))

(declare-fun b!2414219 () Bool)

(assert (=> b!2414219 (= e!1536604 (isEmpty!16328 (t!208396 l!9164)))))

(declare-fun b!2414220 () Bool)

(assert (=> b!2414220 (= e!1536606 e!1536605)))

(declare-fun c!384689 () Bool)

(assert (=> b!2414220 (= c!384689 (isEmpty!16328 l!9164))))

(declare-fun b!2414221 () Bool)

(assert (=> b!2414221 (= e!1536605 (isEmptyExpr!149 lt!873981))))

(declare-fun b!2414222 () Bool)

(assert (=> b!2414222 (= e!1536609 (= lt!873981 (head!5397 l!9164)))))

(declare-fun b!2414223 () Bool)

(assert (=> b!2414223 (= e!1536608 EmptyExpr!7090)))

(declare-fun b!2414224 () Bool)

(assert (=> b!2414224 (= e!1536609 (isConcat!149 lt!873981))))

(assert (= (and d!701000 res!1025322) b!2414219))

(assert (= (and d!701000 c!384687) b!2414218))

(assert (= (and d!701000 (not c!384687)) b!2414215))

(assert (= (and b!2414215 c!384688) b!2414217))

(assert (= (and b!2414215 (not c!384688)) b!2414223))

(assert (= (and d!701000 res!1025321) b!2414220))

(assert (= (and b!2414220 c!384689) b!2414221))

(assert (= (and b!2414220 (not c!384689)) b!2414216))

(assert (= (and b!2414216 c!384686) b!2414222))

(assert (= (and b!2414216 (not c!384686)) b!2414224))

(declare-fun m!2803885 () Bool)

(assert (=> d!701000 m!2803885))

(declare-fun m!2803887 () Bool)

(assert (=> d!701000 m!2803887))

(assert (=> b!2414222 m!2803737))

(assert (=> b!2414220 m!2803753))

(declare-fun m!2803889 () Bool)

(assert (=> b!2414217 m!2803889))

(declare-fun m!2803891 () Bool)

(assert (=> b!2414221 m!2803891))

(declare-fun m!2803893 () Bool)

(assert (=> b!2414219 m!2803893))

(assert (=> b!2414216 m!2803743))

(assert (=> b!2414216 m!2803743))

(declare-fun m!2803895 () Bool)

(assert (=> b!2414216 m!2803895))

(declare-fun m!2803897 () Bool)

(assert (=> b!2414224 m!2803897))

(assert (=> b!2413943 d!701000))

(declare-fun d!701002 () Bool)

(declare-fun e!1536614 () Bool)

(assert (=> d!701002 e!1536614))

(declare-fun res!1025328 () Bool)

(assert (=> d!701002 (=> (not res!1025328) (not e!1536614))))

(declare-fun lt!873984 () List!28418)

(declare-fun content!3883 (List!28418) (Set C!14338))

(assert (=> d!701002 (= res!1025328 (= (content!3883 lt!873984) (set.union (content!3883 Nil!28320) (content!3883 s!9460))))))

(declare-fun e!1536615 () List!28418)

(assert (=> d!701002 (= lt!873984 e!1536615)))

(declare-fun c!384692 () Bool)

(assert (=> d!701002 (= c!384692 (is-Nil!28320 Nil!28320))))

(assert (=> d!701002 (= (++!7013 Nil!28320 s!9460) lt!873984)))

(declare-fun b!2414236 () Bool)

(assert (=> b!2414236 (= e!1536614 (or (not (= s!9460 Nil!28320)) (= lt!873984 Nil!28320)))))

(declare-fun b!2414233 () Bool)

(assert (=> b!2414233 (= e!1536615 s!9460)))

(declare-fun b!2414235 () Bool)

(declare-fun res!1025327 () Bool)

(assert (=> b!2414235 (=> (not res!1025327) (not e!1536614))))

(declare-fun size!22221 (List!28418) Int)

(assert (=> b!2414235 (= res!1025327 (= (size!22221 lt!873984) (+ (size!22221 Nil!28320) (size!22221 s!9460))))))

(declare-fun b!2414234 () Bool)

(assert (=> b!2414234 (= e!1536615 (Cons!28320 (h!33721 Nil!28320) (++!7013 (t!208395 Nil!28320) s!9460)))))

(assert (= (and d!701002 c!384692) b!2414233))

(assert (= (and d!701002 (not c!384692)) b!2414234))

(assert (= (and d!701002 res!1025328) b!2414235))

(assert (= (and b!2414235 res!1025327) b!2414236))

(declare-fun m!2803899 () Bool)

(assert (=> d!701002 m!2803899))

(declare-fun m!2803901 () Bool)

(assert (=> d!701002 m!2803901))

(declare-fun m!2803903 () Bool)

(assert (=> d!701002 m!2803903))

(declare-fun m!2803905 () Bool)

(assert (=> b!2414235 m!2803905))

(declare-fun m!2803907 () Bool)

(assert (=> b!2414235 m!2803907))

(declare-fun m!2803909 () Bool)

(assert (=> b!2414235 m!2803909))

(declare-fun m!2803911 () Bool)

(assert (=> b!2414234 m!2803911))

(assert (=> b!2413933 d!701002))

(declare-fun b!2414237 () Bool)

(declare-fun e!1536621 () Bool)

(declare-fun e!1536617 () Bool)

(assert (=> b!2414237 (= e!1536621 e!1536617)))

(declare-fun res!1025331 () Bool)

(assert (=> b!2414237 (=> res!1025331 e!1536617)))

(declare-fun call!147437 () Bool)

(assert (=> b!2414237 (= res!1025331 call!147437)))

(declare-fun b!2414238 () Bool)

(declare-fun res!1025329 () Bool)

(declare-fun e!1536616 () Bool)

(assert (=> b!2414238 (=> res!1025329 e!1536616)))

(assert (=> b!2414238 (= res!1025329 (not (is-ElementMatch!7090 lt!873953)))))

(declare-fun e!1536619 () Bool)

(assert (=> b!2414238 (= e!1536619 e!1536616)))

(declare-fun b!2414239 () Bool)

(declare-fun e!1536618 () Bool)

(declare-fun lt!873985 () Bool)

(assert (=> b!2414239 (= e!1536618 (= lt!873985 call!147437))))

(declare-fun b!2414240 () Bool)

(declare-fun res!1025336 () Bool)

(assert (=> b!2414240 (=> res!1025336 e!1536617)))

(assert (=> b!2414240 (= res!1025336 (not (isEmpty!16330 (tail!3671 s!9460))))))

(declare-fun b!2414241 () Bool)

(declare-fun res!1025335 () Bool)

(assert (=> b!2414241 (=> res!1025335 e!1536616)))

(declare-fun e!1536622 () Bool)

(assert (=> b!2414241 (= res!1025335 e!1536622)))

(declare-fun res!1025333 () Bool)

(assert (=> b!2414241 (=> (not res!1025333) (not e!1536622))))

(assert (=> b!2414241 (= res!1025333 lt!873985)))

(declare-fun b!2414242 () Bool)

(declare-fun res!1025332 () Bool)

(assert (=> b!2414242 (=> (not res!1025332) (not e!1536622))))

(assert (=> b!2414242 (= res!1025332 (not call!147437))))

(declare-fun b!2414243 () Bool)

(assert (=> b!2414243 (= e!1536618 e!1536619)))

(declare-fun c!384694 () Bool)

(assert (=> b!2414243 (= c!384694 (is-EmptyLang!7090 lt!873953))))

(declare-fun bm!147432 () Bool)

(assert (=> bm!147432 (= call!147437 (isEmpty!16330 s!9460))))

(declare-fun b!2414244 () Bool)

(assert (=> b!2414244 (= e!1536616 e!1536621)))

(declare-fun res!1025334 () Bool)

(assert (=> b!2414244 (=> (not res!1025334) (not e!1536621))))

(assert (=> b!2414244 (= res!1025334 (not lt!873985))))

(declare-fun b!2414245 () Bool)

(declare-fun e!1536620 () Bool)

(assert (=> b!2414245 (= e!1536620 (matchR!3207 (derivativeStep!1787 lt!873953 (head!5399 s!9460)) (tail!3671 s!9460)))))

(declare-fun b!2414246 () Bool)

(assert (=> b!2414246 (= e!1536619 (not lt!873985))))

(declare-fun d!701004 () Bool)

(assert (=> d!701004 e!1536618))

(declare-fun c!384693 () Bool)

(assert (=> d!701004 (= c!384693 (is-EmptyExpr!7090 lt!873953))))

(assert (=> d!701004 (= lt!873985 e!1536620)))

(declare-fun c!384695 () Bool)

(assert (=> d!701004 (= c!384695 (isEmpty!16330 s!9460))))

(assert (=> d!701004 (validRegex!2812 lt!873953)))

(assert (=> d!701004 (= (matchR!3207 lt!873953 s!9460) lt!873985)))

(declare-fun b!2414247 () Bool)

(assert (=> b!2414247 (= e!1536617 (not (= (head!5399 s!9460) (c!384622 lt!873953))))))

(declare-fun b!2414248 () Bool)

(declare-fun res!1025330 () Bool)

(assert (=> b!2414248 (=> (not res!1025330) (not e!1536622))))

(assert (=> b!2414248 (= res!1025330 (isEmpty!16330 (tail!3671 s!9460)))))

(declare-fun b!2414249 () Bool)

(assert (=> b!2414249 (= e!1536620 (nullable!2130 lt!873953))))

(declare-fun b!2414250 () Bool)

(assert (=> b!2414250 (= e!1536622 (= (head!5399 s!9460) (c!384622 lt!873953)))))

(assert (= (and d!701004 c!384695) b!2414249))

(assert (= (and d!701004 (not c!384695)) b!2414245))

(assert (= (and d!701004 c!384693) b!2414239))

(assert (= (and d!701004 (not c!384693)) b!2414243))

(assert (= (and b!2414243 c!384694) b!2414246))

(assert (= (and b!2414243 (not c!384694)) b!2414238))

(assert (= (and b!2414238 (not res!1025329)) b!2414241))

(assert (= (and b!2414241 res!1025333) b!2414242))

(assert (= (and b!2414242 res!1025332) b!2414248))

(assert (= (and b!2414248 res!1025330) b!2414250))

(assert (= (and b!2414241 (not res!1025335)) b!2414244))

(assert (= (and b!2414244 res!1025334) b!2414237))

(assert (= (and b!2414237 (not res!1025331)) b!2414240))

(assert (= (and b!2414240 (not res!1025336)) b!2414247))

(assert (= (or b!2414239 b!2414237 b!2414242) bm!147432))

(assert (=> b!2414250 m!2803829))

(assert (=> b!2414240 m!2803831))

(assert (=> b!2414240 m!2803831))

(assert (=> b!2414240 m!2803835))

(assert (=> b!2414248 m!2803831))

(assert (=> b!2414248 m!2803831))

(assert (=> b!2414248 m!2803835))

(assert (=> d!701004 m!2803839))

(assert (=> d!701004 m!2803757))

(declare-fun m!2803913 () Bool)

(assert (=> b!2414249 m!2803913))

(assert (=> b!2414247 m!2803829))

(assert (=> bm!147432 m!2803839))

(assert (=> b!2414245 m!2803829))

(assert (=> b!2414245 m!2803829))

(declare-fun m!2803915 () Bool)

(assert (=> b!2414245 m!2803915))

(assert (=> b!2414245 m!2803831))

(assert (=> b!2414245 m!2803915))

(assert (=> b!2414245 m!2803831))

(declare-fun m!2803917 () Bool)

(assert (=> b!2414245 m!2803917))

(assert (=> b!2413944 d!701004))

(declare-fun d!701006 () Bool)

(assert (=> d!701006 (= (head!5397 l!9164) (h!33722 l!9164))))

(assert (=> b!2413944 d!701006))

(declare-fun d!701008 () Bool)

(assert (=> d!701008 (= (isEmpty!16328 l!9164) (is-Nil!28321 l!9164))))

(assert (=> b!2413939 d!701008))

(declare-fun d!701010 () Bool)

(declare-fun res!1025346 () Bool)

(declare-fun e!1536634 () Bool)

(assert (=> d!701010 (=> res!1025346 e!1536634)))

(assert (=> d!701010 (= res!1025346 (is-Nil!28321 l!9164))))

(assert (=> d!701010 (= (forall!5724 l!9164 lambda!90886) e!1536634)))

(declare-fun b!2414264 () Bool)

(declare-fun e!1536635 () Bool)

(assert (=> b!2414264 (= e!1536634 e!1536635)))

(declare-fun res!1025347 () Bool)

(assert (=> b!2414264 (=> (not res!1025347) (not e!1536635))))

(declare-fun dynLambda!12192 (Int Regex!7090) Bool)

(assert (=> b!2414264 (= res!1025347 (dynLambda!12192 lambda!90886 (h!33722 l!9164)))))

(declare-fun b!2414265 () Bool)

(assert (=> b!2414265 (= e!1536635 (forall!5724 (t!208396 l!9164) lambda!90886))))

(assert (= (and d!701010 (not res!1025346)) b!2414264))

(assert (= (and b!2414264 res!1025347) b!2414265))

(declare-fun b_lambda!74541 () Bool)

(assert (=> (not b_lambda!74541) (not b!2414264)))

(declare-fun m!2803925 () Bool)

(assert (=> b!2414264 m!2803925))

(declare-fun m!2803927 () Bool)

(assert (=> b!2414265 m!2803927))

(assert (=> start!236526 d!701010))

(declare-fun b!2414279 () Bool)

(declare-fun e!1536638 () Bool)

(declare-fun tp!767799 () Bool)

(declare-fun tp!767801 () Bool)

(assert (=> b!2414279 (= e!1536638 (and tp!767799 tp!767801))))

(declare-fun b!2414276 () Bool)

(assert (=> b!2414276 (= e!1536638 tp_is_empty!11593)))

(declare-fun b!2414278 () Bool)

(declare-fun tp!767802 () Bool)

(assert (=> b!2414278 (= e!1536638 tp!767802)))

(assert (=> b!2413934 (= tp!767762 e!1536638)))

(declare-fun b!2414277 () Bool)

(declare-fun tp!767800 () Bool)

(declare-fun tp!767798 () Bool)

(assert (=> b!2414277 (= e!1536638 (and tp!767800 tp!767798))))

(assert (= (and b!2413934 (is-ElementMatch!7090 (regOne!14692 r!13927))) b!2414276))

(assert (= (and b!2413934 (is-Concat!11726 (regOne!14692 r!13927))) b!2414277))

(assert (= (and b!2413934 (is-Star!7090 (regOne!14692 r!13927))) b!2414278))

(assert (= (and b!2413934 (is-Union!7090 (regOne!14692 r!13927))) b!2414279))

(declare-fun b!2414283 () Bool)

(declare-fun e!1536639 () Bool)

(declare-fun tp!767804 () Bool)

(declare-fun tp!767806 () Bool)

(assert (=> b!2414283 (= e!1536639 (and tp!767804 tp!767806))))

(declare-fun b!2414280 () Bool)

(assert (=> b!2414280 (= e!1536639 tp_is_empty!11593)))

(declare-fun b!2414282 () Bool)

(declare-fun tp!767807 () Bool)

(assert (=> b!2414282 (= e!1536639 tp!767807)))

(assert (=> b!2413934 (= tp!767760 e!1536639)))

(declare-fun b!2414281 () Bool)

(declare-fun tp!767805 () Bool)

(declare-fun tp!767803 () Bool)

(assert (=> b!2414281 (= e!1536639 (and tp!767805 tp!767803))))

(assert (= (and b!2413934 (is-ElementMatch!7090 (regTwo!14692 r!13927))) b!2414280))

(assert (= (and b!2413934 (is-Concat!11726 (regTwo!14692 r!13927))) b!2414281))

(assert (= (and b!2413934 (is-Star!7090 (regTwo!14692 r!13927))) b!2414282))

(assert (= (and b!2413934 (is-Union!7090 (regTwo!14692 r!13927))) b!2414283))

(declare-fun b!2414287 () Bool)

(declare-fun e!1536640 () Bool)

(declare-fun tp!767809 () Bool)

(declare-fun tp!767811 () Bool)

(assert (=> b!2414287 (= e!1536640 (and tp!767809 tp!767811))))

(declare-fun b!2414284 () Bool)

(assert (=> b!2414284 (= e!1536640 tp_is_empty!11593)))

(declare-fun b!2414286 () Bool)

(declare-fun tp!767812 () Bool)

(assert (=> b!2414286 (= e!1536640 tp!767812)))

(assert (=> b!2413945 (= tp!767763 e!1536640)))

(declare-fun b!2414285 () Bool)

(declare-fun tp!767810 () Bool)

(declare-fun tp!767808 () Bool)

(assert (=> b!2414285 (= e!1536640 (and tp!767810 tp!767808))))

(assert (= (and b!2413945 (is-ElementMatch!7090 (h!33722 l!9164))) b!2414284))

(assert (= (and b!2413945 (is-Concat!11726 (h!33722 l!9164))) b!2414285))

(assert (= (and b!2413945 (is-Star!7090 (h!33722 l!9164))) b!2414286))

(assert (= (and b!2413945 (is-Union!7090 (h!33722 l!9164))) b!2414287))

(declare-fun b!2414292 () Bool)

(declare-fun e!1536643 () Bool)

(declare-fun tp!767817 () Bool)

(declare-fun tp!767818 () Bool)

(assert (=> b!2414292 (= e!1536643 (and tp!767817 tp!767818))))

(assert (=> b!2413945 (= tp!767757 e!1536643)))

(assert (= (and b!2413945 (is-Cons!28321 (t!208396 l!9164))) b!2414292))

(declare-fun b!2414296 () Bool)

(declare-fun e!1536644 () Bool)

(declare-fun tp!767820 () Bool)

(declare-fun tp!767822 () Bool)

(assert (=> b!2414296 (= e!1536644 (and tp!767820 tp!767822))))

(declare-fun b!2414293 () Bool)

(assert (=> b!2414293 (= e!1536644 tp_is_empty!11593)))

(declare-fun b!2414295 () Bool)

(declare-fun tp!767823 () Bool)

(assert (=> b!2414295 (= e!1536644 tp!767823)))

(assert (=> b!2413940 (= tp!767758 e!1536644)))

(declare-fun b!2414294 () Bool)

(declare-fun tp!767821 () Bool)

(declare-fun tp!767819 () Bool)

(assert (=> b!2414294 (= e!1536644 (and tp!767821 tp!767819))))

(assert (= (and b!2413940 (is-ElementMatch!7090 (regOne!14693 r!13927))) b!2414293))

(assert (= (and b!2413940 (is-Concat!11726 (regOne!14693 r!13927))) b!2414294))

(assert (= (and b!2413940 (is-Star!7090 (regOne!14693 r!13927))) b!2414295))

(assert (= (and b!2413940 (is-Union!7090 (regOne!14693 r!13927))) b!2414296))

(declare-fun b!2414300 () Bool)

(declare-fun e!1536645 () Bool)

(declare-fun tp!767825 () Bool)

(declare-fun tp!767827 () Bool)

(assert (=> b!2414300 (= e!1536645 (and tp!767825 tp!767827))))

(declare-fun b!2414297 () Bool)

(assert (=> b!2414297 (= e!1536645 tp_is_empty!11593)))

(declare-fun b!2414299 () Bool)

(declare-fun tp!767828 () Bool)

(assert (=> b!2414299 (= e!1536645 tp!767828)))

(assert (=> b!2413940 (= tp!767756 e!1536645)))

(declare-fun b!2414298 () Bool)

(declare-fun tp!767826 () Bool)

(declare-fun tp!767824 () Bool)

(assert (=> b!2414298 (= e!1536645 (and tp!767826 tp!767824))))

(assert (= (and b!2413940 (is-ElementMatch!7090 (regTwo!14693 r!13927))) b!2414297))

(assert (= (and b!2413940 (is-Concat!11726 (regTwo!14693 r!13927))) b!2414298))

(assert (= (and b!2413940 (is-Star!7090 (regTwo!14693 r!13927))) b!2414299))

(assert (= (and b!2413940 (is-Union!7090 (regTwo!14693 r!13927))) b!2414300))

(declare-fun b!2414305 () Bool)

(declare-fun e!1536648 () Bool)

(declare-fun tp!767831 () Bool)

(assert (=> b!2414305 (= e!1536648 (and tp_is_empty!11593 tp!767831))))

(assert (=> b!2413935 (= tp!767761 e!1536648)))

(assert (= (and b!2413935 (is-Cons!28320 (t!208395 s!9460))) b!2414305))

(declare-fun b!2414309 () Bool)

(declare-fun e!1536649 () Bool)

(declare-fun tp!767833 () Bool)

(declare-fun tp!767835 () Bool)

(assert (=> b!2414309 (= e!1536649 (and tp!767833 tp!767835))))

(declare-fun b!2414306 () Bool)

(assert (=> b!2414306 (= e!1536649 tp_is_empty!11593)))

(declare-fun b!2414308 () Bool)

(declare-fun tp!767836 () Bool)

(assert (=> b!2414308 (= e!1536649 tp!767836)))

(assert (=> b!2413938 (= tp!767759 e!1536649)))

(declare-fun b!2414307 () Bool)

(declare-fun tp!767834 () Bool)

(declare-fun tp!767832 () Bool)

(assert (=> b!2414307 (= e!1536649 (and tp!767834 tp!767832))))

(assert (= (and b!2413938 (is-ElementMatch!7090 (reg!7419 r!13927))) b!2414306))

(assert (= (and b!2413938 (is-Concat!11726 (reg!7419 r!13927))) b!2414307))

(assert (= (and b!2413938 (is-Star!7090 (reg!7419 r!13927))) b!2414308))

(assert (= (and b!2413938 (is-Union!7090 (reg!7419 r!13927))) b!2414309))

(declare-fun b_lambda!74543 () Bool)

(assert (= b_lambda!74541 (or start!236526 b_lambda!74543)))

(declare-fun bs!463521 () Bool)

(declare-fun d!701014 () Bool)

(assert (= bs!463521 (and d!701014 start!236526)))

(assert (=> bs!463521 (= (dynLambda!12192 lambda!90886 (h!33722 l!9164)) (validRegex!2812 (h!33722 l!9164)))))

(declare-fun m!2803929 () Bool)

(assert (=> bs!463521 m!2803929))

(assert (=> b!2414264 d!701014))

(push 1)

(assert (not b!2414072))

(assert (not b!2414136))

(assert (not b!2414286))

(assert (not b!2414248))

(assert (not b!2414134))

(assert (not b!2414240))

(assert (not b!2414249))

(assert (not bm!147419))

(assert (not b!2414265))

(assert (not b!2414281))

(assert (not b!2414292))

(assert (not b!2414127))

(assert (not b!2414070))

(assert (not b!2414186))

(assert (not b!2414300))

(assert (not b!2414277))

(assert (not b!2414068))

(assert (not b!2414305))

(assert (not b!2414071))

(assert (not b!2414296))

(assert (not b!2414234))

(assert (not b!2414073))

(assert (not b!2414224))

(assert tp_is_empty!11593)

(assert (not b!2414235))

(assert (not b!2414307))

(assert (not bm!147416))

(assert (not bm!147432))

(assert (not b!2414135))

(assert (not b!2414299))

(assert (not bm!147425))

(assert (not b!2414247))

(assert (not b!2414283))

(assert (not d!701004))

(assert (not d!700998))

(assert (not b!2414298))

(assert (not b!2414075))

(assert (not b!2414285))

(assert (not b!2414185))

(assert (not d!701000))

(assert (not b!2414132))

(assert (not bm!147424))

(assert (not b!2414308))

(assert (not b!2414309))

(assert (not d!700982))

(assert (not b!2414245))

(assert (not b!2414287))

(assert (not b!2414294))

(assert (not d!701002))

(assert (not b!2414220))

(assert (not b!2414250))

(assert (not d!700980))

(assert (not b!2414295))

(assert (not b!2414282))

(assert (not b!2414222))

(assert (not b!2414219))

(assert (not b!2414067))

(assert (not b!2414221))

(assert (not b!2414278))

(assert (not b_lambda!74543))

(assert (not b!2414137))

(assert (not bm!147414))

(assert (not b!2414024))

(assert (not bs!463521))

(assert (not b!2414217))

(assert (not b!2414279))

(assert (not b!2414216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

