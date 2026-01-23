; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694120 () Bool)

(assert start!694120)

(declare-fun b!7124634 () Bool)

(declare-fun res!2907172 () Bool)

(declare-fun e!4281462 () Bool)

(assert (=> b!7124634 (=> (not res!2907172) (not e!4281462))))

(declare-datatypes ((C!36262 0))(
  ( (C!36263 (val!28057 Int)) )
))
(declare-datatypes ((Regex!17996 0))(
  ( (ElementMatch!17996 (c!1329231 C!36262)) (Concat!26841 (regOne!36504 Regex!17996) (regTwo!36504 Regex!17996)) (EmptyExpr!17996) (Star!17996 (reg!18325 Regex!17996)) (EmptyLang!17996) (Union!17996 (regOne!36505 Regex!17996) (regTwo!36505 Regex!17996)) )
))
(declare-datatypes ((List!69043 0))(
  ( (Nil!68919) (Cons!68919 (h!75367 Regex!17996) (t!383020 List!69043)) )
))
(declare-datatypes ((Context!13980 0))(
  ( (Context!13981 (exprs!7490 List!69043)) )
))
(declare-datatypes ((List!69044 0))(
  ( (Nil!68920) (Cons!68920 (h!75368 Context!13980) (t!383021 List!69044)) )
))
(declare-fun zl!1616 () List!69044)

(declare-fun c!9962 () Context!13980)

(declare-fun contains!20538 (List!69044 Context!13980) Bool)

(assert (=> b!7124634 (= res!2907172 (contains!20538 (t!383021 zl!1616) c!9962))))

(declare-fun b!7124635 () Bool)

(declare-fun e!4281461 () Bool)

(declare-fun tp!1962255 () Bool)

(assert (=> b!7124635 (= e!4281461 tp!1962255)))

(declare-fun b!7124636 () Bool)

(declare-fun e!4281460 () Bool)

(declare-fun tp!1962256 () Bool)

(assert (=> b!7124636 (= e!4281460 tp!1962256)))

(declare-fun b!7124637 () Bool)

(declare-fun lt!2562963 () Int)

(declare-fun zipperDepthTotal!589 (List!69044) Int)

(assert (=> b!7124637 (= e!4281462 (not (<= lt!2562963 (zipperDepthTotal!589 zl!1616))))))

(assert (=> b!7124637 (<= lt!2562963 (zipperDepthTotal!589 (t!383021 zl!1616)))))

(declare-fun contextDepthTotal!560 (Context!13980) Int)

(assert (=> b!7124637 (= lt!2562963 (contextDepthTotal!560 c!9962))))

(declare-datatypes ((Unit!162845 0))(
  ( (Unit!162846) )
))
(declare-fun lt!2562962 () Unit!162845)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!123 (List!69044 Context!13980) Unit!162845)

(assert (=> b!7124637 (= lt!2562962 (lemmaTotalDepthZipperLargerThanOfAnyContext!123 (t!383021 zl!1616) c!9962))))

(declare-fun e!4281463 () Bool)

(declare-fun b!7124638 () Bool)

(declare-fun tp!1962254 () Bool)

(declare-fun inv!88019 (Context!13980) Bool)

(assert (=> b!7124638 (= e!4281463 (and (inv!88019 (h!75368 zl!1616)) e!4281460 tp!1962254))))

(declare-fun res!2907171 () Bool)

(assert (=> start!694120 (=> (not res!2907171) (not e!4281462))))

(assert (=> start!694120 (= res!2907171 (contains!20538 zl!1616 c!9962))))

(assert (=> start!694120 e!4281462))

(assert (=> start!694120 e!4281463))

(assert (=> start!694120 (and (inv!88019 c!9962) e!4281461)))

(declare-fun b!7124639 () Bool)

(declare-fun res!2907170 () Bool)

(assert (=> b!7124639 (=> (not res!2907170) (not e!4281462))))

(assert (=> b!7124639 (= res!2907170 (is-Cons!68920 zl!1616))))

(assert (= (and start!694120 res!2907171) b!7124639))

(assert (= (and b!7124639 res!2907170) b!7124634))

(assert (= (and b!7124634 res!2907172) b!7124637))

(assert (= b!7124638 b!7124636))

(assert (= (and start!694120 (is-Cons!68920 zl!1616)) b!7124638))

(assert (= start!694120 b!7124635))

(declare-fun m!7842094 () Bool)

(assert (=> b!7124634 m!7842094))

(declare-fun m!7842096 () Bool)

(assert (=> b!7124637 m!7842096))

(declare-fun m!7842098 () Bool)

(assert (=> b!7124637 m!7842098))

(declare-fun m!7842100 () Bool)

(assert (=> b!7124637 m!7842100))

(declare-fun m!7842102 () Bool)

(assert (=> b!7124637 m!7842102))

(declare-fun m!7842104 () Bool)

(assert (=> b!7124638 m!7842104))

(declare-fun m!7842106 () Bool)

(assert (=> start!694120 m!7842106))

(declare-fun m!7842108 () Bool)

(assert (=> start!694120 m!7842108))

(push 1)

(assert (not b!7124635))

(assert (not start!694120))

(assert (not b!7124634))

(assert (not b!7124637))

(assert (not b!7124638))

(assert (not b!7124636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2223391 () Bool)

(declare-fun lambda!432975 () Int)

(declare-fun forall!16905 (List!69043 Int) Bool)

(assert (=> d!2223391 (= (inv!88019 (h!75368 zl!1616)) (forall!16905 (exprs!7490 (h!75368 zl!1616)) lambda!432975))))

(declare-fun bs!1886280 () Bool)

(assert (= bs!1886280 d!2223391))

(declare-fun m!7842126 () Bool)

(assert (=> bs!1886280 m!7842126))

(assert (=> b!7124638 d!2223391))

(declare-fun d!2223395 () Bool)

(declare-fun lt!2562972 () Int)

(assert (=> d!2223395 (>= lt!2562972 0)))

(declare-fun e!4281478 () Int)

(assert (=> d!2223395 (= lt!2562972 e!4281478)))

(declare-fun c!1329235 () Bool)

(assert (=> d!2223395 (= c!1329235 (is-Cons!68920 zl!1616))))

(assert (=> d!2223395 (= (zipperDepthTotal!589 zl!1616) lt!2562972)))

(declare-fun b!7124662 () Bool)

(assert (=> b!7124662 (= e!4281478 (+ (contextDepthTotal!560 (h!75368 zl!1616)) (zipperDepthTotal!589 (t!383021 zl!1616))))))

(declare-fun b!7124663 () Bool)

(assert (=> b!7124663 (= e!4281478 0)))

(assert (= (and d!2223395 c!1329235) b!7124662))

(assert (= (and d!2223395 (not c!1329235)) b!7124663))

(declare-fun m!7842128 () Bool)

(assert (=> b!7124662 m!7842128))

(assert (=> b!7124662 m!7842098))

(assert (=> b!7124637 d!2223395))

(declare-fun d!2223397 () Bool)

(declare-fun lt!2562973 () Int)

(assert (=> d!2223397 (>= lt!2562973 0)))

(declare-fun e!4281479 () Int)

(assert (=> d!2223397 (= lt!2562973 e!4281479)))

(declare-fun c!1329236 () Bool)

(assert (=> d!2223397 (= c!1329236 (is-Cons!68920 (t!383021 zl!1616)))))

(assert (=> d!2223397 (= (zipperDepthTotal!589 (t!383021 zl!1616)) lt!2562973)))

(declare-fun b!7124664 () Bool)

(assert (=> b!7124664 (= e!4281479 (+ (contextDepthTotal!560 (h!75368 (t!383021 zl!1616))) (zipperDepthTotal!589 (t!383021 (t!383021 zl!1616)))))))

(declare-fun b!7124665 () Bool)

(assert (=> b!7124665 (= e!4281479 0)))

(assert (= (and d!2223397 c!1329236) b!7124664))

(assert (= (and d!2223397 (not c!1329236)) b!7124665))

(declare-fun m!7842130 () Bool)

(assert (=> b!7124664 m!7842130))

(declare-fun m!7842132 () Bool)

(assert (=> b!7124664 m!7842132))

(assert (=> b!7124637 d!2223397))

(declare-fun d!2223399 () Bool)

(declare-fun lt!2562976 () Int)

(assert (=> d!2223399 (>= lt!2562976 0)))

(declare-fun e!4281482 () Int)

(assert (=> d!2223399 (= lt!2562976 e!4281482)))

(declare-fun c!1329240 () Bool)

(assert (=> d!2223399 (= c!1329240 (is-Cons!68919 (exprs!7490 c!9962)))))

(assert (=> d!2223399 (= (contextDepthTotal!560 c!9962) lt!2562976)))

(declare-fun b!7124670 () Bool)

(declare-fun regexDepthTotal!331 (Regex!17996) Int)

(assert (=> b!7124670 (= e!4281482 (+ (regexDepthTotal!331 (h!75367 (exprs!7490 c!9962))) (contextDepthTotal!560 (Context!13981 (t!383020 (exprs!7490 c!9962))))))))

(declare-fun b!7124671 () Bool)

(assert (=> b!7124671 (= e!4281482 1)))

(assert (= (and d!2223399 c!1329240) b!7124670))

(assert (= (and d!2223399 (not c!1329240)) b!7124671))

(declare-fun m!7842134 () Bool)

(assert (=> b!7124670 m!7842134))

(declare-fun m!7842136 () Bool)

(assert (=> b!7124670 m!7842136))

(assert (=> b!7124637 d!2223399))

(declare-fun d!2223401 () Bool)

(assert (=> d!2223401 (<= (contextDepthTotal!560 c!9962) (zipperDepthTotal!589 (t!383021 zl!1616)))))

(declare-fun lt!2562979 () Unit!162845)

(declare-fun choose!55088 (List!69044 Context!13980) Unit!162845)

(assert (=> d!2223401 (= lt!2562979 (choose!55088 (t!383021 zl!1616) c!9962))))

(assert (=> d!2223401 (contains!20538 (t!383021 zl!1616) c!9962)))

(assert (=> d!2223401 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!123 (t!383021 zl!1616) c!9962) lt!2562979)))

(declare-fun bs!1886281 () Bool)

(assert (= bs!1886281 d!2223401))

(assert (=> bs!1886281 m!7842100))

(assert (=> bs!1886281 m!7842098))

(declare-fun m!7842138 () Bool)

(assert (=> bs!1886281 m!7842138))

(assert (=> bs!1886281 m!7842094))

(assert (=> b!7124637 d!2223401))

(declare-fun d!2223403 () Bool)

(declare-fun lt!2562982 () Bool)

(declare-fun content!14105 (List!69044) (Set Context!13980))

(assert (=> d!2223403 (= lt!2562982 (set.member c!9962 (content!14105 (t!383021 zl!1616))))))

(declare-fun e!4281487 () Bool)

(assert (=> d!2223403 (= lt!2562982 e!4281487)))

(declare-fun res!2907187 () Bool)

(assert (=> d!2223403 (=> (not res!2907187) (not e!4281487))))

(assert (=> d!2223403 (= res!2907187 (is-Cons!68920 (t!383021 zl!1616)))))

(assert (=> d!2223403 (= (contains!20538 (t!383021 zl!1616) c!9962) lt!2562982)))

(declare-fun b!7124676 () Bool)

(declare-fun e!4281488 () Bool)

(assert (=> b!7124676 (= e!4281487 e!4281488)))

(declare-fun res!2907186 () Bool)

(assert (=> b!7124676 (=> res!2907186 e!4281488)))

(assert (=> b!7124676 (= res!2907186 (= (h!75368 (t!383021 zl!1616)) c!9962))))

(declare-fun b!7124677 () Bool)

(assert (=> b!7124677 (= e!4281488 (contains!20538 (t!383021 (t!383021 zl!1616)) c!9962))))

(assert (= (and d!2223403 res!2907187) b!7124676))

(assert (= (and b!7124676 (not res!2907186)) b!7124677))

(declare-fun m!7842140 () Bool)

(assert (=> d!2223403 m!7842140))

(declare-fun m!7842142 () Bool)

(assert (=> d!2223403 m!7842142))

(declare-fun m!7842144 () Bool)

(assert (=> b!7124677 m!7842144))

(assert (=> b!7124634 d!2223403))

(declare-fun d!2223405 () Bool)

(declare-fun lt!2562983 () Bool)

(assert (=> d!2223405 (= lt!2562983 (set.member c!9962 (content!14105 zl!1616)))))

(declare-fun e!4281489 () Bool)

(assert (=> d!2223405 (= lt!2562983 e!4281489)))

(declare-fun res!2907189 () Bool)

(assert (=> d!2223405 (=> (not res!2907189) (not e!4281489))))

(assert (=> d!2223405 (= res!2907189 (is-Cons!68920 zl!1616))))

(assert (=> d!2223405 (= (contains!20538 zl!1616 c!9962) lt!2562983)))

(declare-fun b!7124678 () Bool)

(declare-fun e!4281490 () Bool)

(assert (=> b!7124678 (= e!4281489 e!4281490)))

(declare-fun res!2907188 () Bool)

(assert (=> b!7124678 (=> res!2907188 e!4281490)))

(assert (=> b!7124678 (= res!2907188 (= (h!75368 zl!1616) c!9962))))

(declare-fun b!7124679 () Bool)

(assert (=> b!7124679 (= e!4281490 (contains!20538 (t!383021 zl!1616) c!9962))))

(assert (= (and d!2223405 res!2907189) b!7124678))

(assert (= (and b!7124678 (not res!2907188)) b!7124679))

(declare-fun m!7842146 () Bool)

(assert (=> d!2223405 m!7842146))

(declare-fun m!7842148 () Bool)

(assert (=> d!2223405 m!7842148))

(assert (=> b!7124679 m!7842094))

(assert (=> start!694120 d!2223405))

(declare-fun bs!1886282 () Bool)

(declare-fun d!2223407 () Bool)

(assert (= bs!1886282 (and d!2223407 d!2223391)))

(declare-fun lambda!432976 () Int)

(assert (=> bs!1886282 (= lambda!432976 lambda!432975)))

(assert (=> d!2223407 (= (inv!88019 c!9962) (forall!16905 (exprs!7490 c!9962) lambda!432976))))

(declare-fun bs!1886283 () Bool)

(assert (= bs!1886283 d!2223407))

(declare-fun m!7842150 () Bool)

(assert (=> bs!1886283 m!7842150))

(assert (=> start!694120 d!2223407))

(declare-fun b!7124684 () Bool)

(declare-fun e!4281493 () Bool)

(declare-fun tp!1962270 () Bool)

(declare-fun tp!1962271 () Bool)

(assert (=> b!7124684 (= e!4281493 (and tp!1962270 tp!1962271))))

(assert (=> b!7124635 (= tp!1962255 e!4281493)))

(assert (= (and b!7124635 (is-Cons!68919 (exprs!7490 c!9962))) b!7124684))

(declare-fun b!7124685 () Bool)

(declare-fun e!4281494 () Bool)

(declare-fun tp!1962272 () Bool)

(declare-fun tp!1962273 () Bool)

(assert (=> b!7124685 (= e!4281494 (and tp!1962272 tp!1962273))))

(assert (=> b!7124636 (= tp!1962256 e!4281494)))

(assert (= (and b!7124636 (is-Cons!68919 (exprs!7490 (h!75368 zl!1616)))) b!7124685))

(declare-fun b!7124693 () Bool)

(declare-fun e!4281500 () Bool)

(declare-fun tp!1962278 () Bool)

(assert (=> b!7124693 (= e!4281500 tp!1962278)))

(declare-fun b!7124692 () Bool)

(declare-fun e!4281499 () Bool)

(declare-fun tp!1962279 () Bool)

(assert (=> b!7124692 (= e!4281499 (and (inv!88019 (h!75368 (t!383021 zl!1616))) e!4281500 tp!1962279))))

(assert (=> b!7124638 (= tp!1962254 e!4281499)))

(assert (= b!7124692 b!7124693))

(assert (= (and b!7124638 (is-Cons!68920 (t!383021 zl!1616))) b!7124692))

(declare-fun m!7842152 () Bool)

(assert (=> b!7124692 m!7842152))

(push 1)

(assert (not b!7124685))

(assert (not b!7124692))

(assert (not d!2223401))

(assert (not d!2223405))

(assert (not d!2223407))

(assert (not b!7124670))

(assert (not b!7124693))

(assert (not d!2223391))

(assert (not d!2223403))

(assert (not b!7124679))

(assert (not b!7124677))

(assert (not b!7124662))

(assert (not b!7124664))

(assert (not b!7124684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7124710 () Bool)

(declare-fun e!4281509 () Int)

(declare-fun call!650816 () Int)

(declare-fun call!650815 () Int)

(assert (=> b!7124710 (= e!4281509 (+ 1 call!650816 call!650815))))

(declare-fun b!7124711 () Bool)

(declare-fun e!4281512 () Int)

(assert (=> b!7124711 (= e!4281512 (+ 1 call!650815 call!650816))))

(declare-fun bm!650810 () Bool)

(declare-fun c!1329252 () Bool)

(declare-fun call!650817 () Int)

(declare-fun c!1329253 () Bool)

(assert (=> bm!650810 (= call!650817 (regexDepthTotal!331 (ite c!1329253 (reg!18325 (h!75367 (exprs!7490 c!9962))) (ite c!1329252 (regTwo!36505 (h!75367 (exprs!7490 c!9962))) (regOne!36504 (h!75367 (exprs!7490 c!9962)))))))))

(declare-fun b!7124712 () Bool)

(assert (=> b!7124712 (= e!4281512 1)))

(declare-fun d!2223409 () Bool)

(declare-fun lt!2562986 () Int)

(assert (=> d!2223409 (> lt!2562986 0)))

(declare-fun e!4281510 () Int)

(assert (=> d!2223409 (= lt!2562986 e!4281510)))

(declare-fun c!1329250 () Bool)

(assert (=> d!2223409 (= c!1329250 (is-ElementMatch!17996 (h!75367 (exprs!7490 c!9962))))))

(assert (=> d!2223409 (= (regexDepthTotal!331 (h!75367 (exprs!7490 c!9962))) lt!2562986)))

(declare-fun b!7124713 () Bool)

(assert (=> b!7124713 (= e!4281510 1)))

(declare-fun b!7124714 () Bool)

(assert (=> b!7124714 (= e!4281509 e!4281512)))

(declare-fun c!1329251 () Bool)

(assert (=> b!7124714 (= c!1329251 (is-Concat!26841 (h!75367 (exprs!7490 c!9962))))))

(declare-fun bm!650811 () Bool)

(assert (=> bm!650811 (= call!650816 (regexDepthTotal!331 (ite c!1329252 (regOne!36505 (h!75367 (exprs!7490 c!9962))) (regTwo!36504 (h!75367 (exprs!7490 c!9962))))))))

(declare-fun b!7124715 () Bool)

(assert (=> b!7124715 (= c!1329252 (is-Union!17996 (h!75367 (exprs!7490 c!9962))))))

(declare-fun e!4281511 () Int)

(assert (=> b!7124715 (= e!4281511 e!4281509)))

(declare-fun b!7124716 () Bool)

(assert (=> b!7124716 (= e!4281511 (+ 1 call!650817))))

(declare-fun b!7124717 () Bool)

(assert (=> b!7124717 (= e!4281510 e!4281511)))

(assert (=> b!7124717 (= c!1329253 (is-Star!17996 (h!75367 (exprs!7490 c!9962))))))

(declare-fun bm!650812 () Bool)

(assert (=> bm!650812 (= call!650815 call!650817)))

(assert (= (and d!2223409 c!1329250) b!7124713))

(assert (= (and d!2223409 (not c!1329250)) b!7124717))

(assert (= (and b!7124717 c!1329253) b!7124716))

(assert (= (and b!7124717 (not c!1329253)) b!7124715))

(assert (= (and b!7124715 c!1329252) b!7124710))

(assert (= (and b!7124715 (not c!1329252)) b!7124714))

(assert (= (and b!7124714 c!1329251) b!7124711))

(assert (= (and b!7124714 (not c!1329251)) b!7124712))

(assert (= (or b!7124710 b!7124711) bm!650812))

(assert (= (or b!7124710 b!7124711) bm!650811))

(assert (= (or b!7124716 bm!650812) bm!650810))

(declare-fun m!7842154 () Bool)

(assert (=> bm!650810 m!7842154))

(declare-fun m!7842156 () Bool)

(assert (=> bm!650811 m!7842156))

(assert (=> b!7124670 d!2223409))

(declare-fun d!2223411 () Bool)

(declare-fun lt!2562987 () Int)

(assert (=> d!2223411 (>= lt!2562987 0)))

(declare-fun e!4281513 () Int)

(assert (=> d!2223411 (= lt!2562987 e!4281513)))

(declare-fun c!1329254 () Bool)

(assert (=> d!2223411 (= c!1329254 (is-Cons!68919 (exprs!7490 (Context!13981 (t!383020 (exprs!7490 c!9962))))))))

(assert (=> d!2223411 (= (contextDepthTotal!560 (Context!13981 (t!383020 (exprs!7490 c!9962)))) lt!2562987)))

(declare-fun b!7124718 () Bool)

(assert (=> b!7124718 (= e!4281513 (+ (regexDepthTotal!331 (h!75367 (exprs!7490 (Context!13981 (t!383020 (exprs!7490 c!9962)))))) (contextDepthTotal!560 (Context!13981 (t!383020 (exprs!7490 (Context!13981 (t!383020 (exprs!7490 c!9962)))))))))))

(declare-fun b!7124719 () Bool)

(assert (=> b!7124719 (= e!4281513 1)))

(assert (= (and d!2223411 c!1329254) b!7124718))

(assert (= (and d!2223411 (not c!1329254)) b!7124719))

(declare-fun m!7842158 () Bool)

(assert (=> b!7124718 m!7842158))

(declare-fun m!7842160 () Bool)

(assert (=> b!7124718 m!7842160))

(assert (=> b!7124670 d!2223411))

(assert (=> b!7124679 d!2223403))

(declare-fun d!2223413 () Bool)

(declare-fun lt!2562988 () Bool)

(assert (=> d!2223413 (= lt!2562988 (set.member c!9962 (content!14105 (t!383021 (t!383021 zl!1616)))))))

(declare-fun e!4281514 () Bool)

(assert (=> d!2223413 (= lt!2562988 e!4281514)))

(declare-fun res!2907191 () Bool)

(assert (=> d!2223413 (=> (not res!2907191) (not e!4281514))))

(assert (=> d!2223413 (= res!2907191 (is-Cons!68920 (t!383021 (t!383021 zl!1616))))))

(assert (=> d!2223413 (= (contains!20538 (t!383021 (t!383021 zl!1616)) c!9962) lt!2562988)))

(declare-fun b!7124720 () Bool)

(declare-fun e!4281515 () Bool)

(assert (=> b!7124720 (= e!4281514 e!4281515)))

(declare-fun res!2907190 () Bool)

(assert (=> b!7124720 (=> res!2907190 e!4281515)))

(assert (=> b!7124720 (= res!2907190 (= (h!75368 (t!383021 (t!383021 zl!1616))) c!9962))))

(declare-fun b!7124721 () Bool)

(assert (=> b!7124721 (= e!4281515 (contains!20538 (t!383021 (t!383021 (t!383021 zl!1616))) c!9962))))

(assert (= (and d!2223413 res!2907191) b!7124720))

(assert (= (and b!7124720 (not res!2907190)) b!7124721))

(declare-fun m!7842162 () Bool)

(assert (=> d!2223413 m!7842162))

(declare-fun m!7842164 () Bool)

(assert (=> d!2223413 m!7842164))

(declare-fun m!7842166 () Bool)

(assert (=> b!7124721 m!7842166))

(assert (=> b!7124677 d!2223413))

(assert (=> d!2223401 d!2223399))

(assert (=> d!2223401 d!2223397))

(declare-fun d!2223415 () Bool)

(assert (=> d!2223415 (<= (contextDepthTotal!560 c!9962) (zipperDepthTotal!589 (t!383021 zl!1616)))))

(assert (=> d!2223415 true))

(declare-fun _$53!140 () Unit!162845)

(assert (=> d!2223415 (= (choose!55088 (t!383021 zl!1616) c!9962) _$53!140)))

(declare-fun bs!1886284 () Bool)

(assert (= bs!1886284 d!2223415))

(assert (=> bs!1886284 m!7842100))

(assert (=> bs!1886284 m!7842098))

(assert (=> d!2223401 d!2223415))

(assert (=> d!2223401 d!2223403))

(declare-fun d!2223417 () Bool)

(declare-fun res!2907196 () Bool)

(declare-fun e!4281520 () Bool)

(assert (=> d!2223417 (=> res!2907196 e!4281520)))

(assert (=> d!2223417 (= res!2907196 (is-Nil!68919 (exprs!7490 (h!75368 zl!1616))))))

(assert (=> d!2223417 (= (forall!16905 (exprs!7490 (h!75368 zl!1616)) lambda!432975) e!4281520)))

(declare-fun b!7124726 () Bool)

(declare-fun e!4281521 () Bool)

(assert (=> b!7124726 (= e!4281520 e!4281521)))

(declare-fun res!2907197 () Bool)

(assert (=> b!7124726 (=> (not res!2907197) (not e!4281521))))

(declare-fun dynLambda!28106 (Int Regex!17996) Bool)

(assert (=> b!7124726 (= res!2907197 (dynLambda!28106 lambda!432975 (h!75367 (exprs!7490 (h!75368 zl!1616)))))))

(declare-fun b!7124727 () Bool)

(assert (=> b!7124727 (= e!4281521 (forall!16905 (t!383020 (exprs!7490 (h!75368 zl!1616))) lambda!432975))))

(assert (= (and d!2223417 (not res!2907196)) b!7124726))

(assert (= (and b!7124726 res!2907197) b!7124727))

(declare-fun b_lambda!271921 () Bool)

(assert (=> (not b_lambda!271921) (not b!7124726)))

(declare-fun m!7842168 () Bool)

(assert (=> b!7124726 m!7842168))

(declare-fun m!7842170 () Bool)

(assert (=> b!7124727 m!7842170))

(assert (=> d!2223391 d!2223417))

(declare-fun d!2223419 () Bool)

(declare-fun res!2907198 () Bool)

(declare-fun e!4281522 () Bool)

(assert (=> d!2223419 (=> res!2907198 e!4281522)))

(assert (=> d!2223419 (= res!2907198 (is-Nil!68919 (exprs!7490 c!9962)))))

(assert (=> d!2223419 (= (forall!16905 (exprs!7490 c!9962) lambda!432976) e!4281522)))

(declare-fun b!7124728 () Bool)

(declare-fun e!4281523 () Bool)

(assert (=> b!7124728 (= e!4281522 e!4281523)))

(declare-fun res!2907199 () Bool)

(assert (=> b!7124728 (=> (not res!2907199) (not e!4281523))))

(assert (=> b!7124728 (= res!2907199 (dynLambda!28106 lambda!432976 (h!75367 (exprs!7490 c!9962))))))

(declare-fun b!7124729 () Bool)

(assert (=> b!7124729 (= e!4281523 (forall!16905 (t!383020 (exprs!7490 c!9962)) lambda!432976))))

(assert (= (and d!2223419 (not res!2907198)) b!7124728))

(assert (= (and b!7124728 res!2907199) b!7124729))

(declare-fun b_lambda!271923 () Bool)

(assert (=> (not b_lambda!271923) (not b!7124728)))

(declare-fun m!7842172 () Bool)

(assert (=> b!7124728 m!7842172))

(declare-fun m!7842174 () Bool)

(assert (=> b!7124729 m!7842174))

(assert (=> d!2223407 d!2223419))

(declare-fun d!2223421 () Bool)

(declare-fun lt!2562989 () Int)

(assert (=> d!2223421 (>= lt!2562989 0)))

(declare-fun e!4281524 () Int)

(assert (=> d!2223421 (= lt!2562989 e!4281524)))

(declare-fun c!1329256 () Bool)

(assert (=> d!2223421 (= c!1329256 (is-Cons!68919 (exprs!7490 (h!75368 (t!383021 zl!1616)))))))

(assert (=> d!2223421 (= (contextDepthTotal!560 (h!75368 (t!383021 zl!1616))) lt!2562989)))

(declare-fun b!7124730 () Bool)

(assert (=> b!7124730 (= e!4281524 (+ (regexDepthTotal!331 (h!75367 (exprs!7490 (h!75368 (t!383021 zl!1616))))) (contextDepthTotal!560 (Context!13981 (t!383020 (exprs!7490 (h!75368 (t!383021 zl!1616))))))))))

(declare-fun b!7124731 () Bool)

(assert (=> b!7124731 (= e!4281524 1)))

(assert (= (and d!2223421 c!1329256) b!7124730))

(assert (= (and d!2223421 (not c!1329256)) b!7124731))

(declare-fun m!7842176 () Bool)

(assert (=> b!7124730 m!7842176))

(declare-fun m!7842178 () Bool)

(assert (=> b!7124730 m!7842178))

(assert (=> b!7124664 d!2223421))

(declare-fun d!2223423 () Bool)

(declare-fun lt!2562990 () Int)

(assert (=> d!2223423 (>= lt!2562990 0)))

(declare-fun e!4281525 () Int)

(assert (=> d!2223423 (= lt!2562990 e!4281525)))

(declare-fun c!1329257 () Bool)

(assert (=> d!2223423 (= c!1329257 (is-Cons!68920 (t!383021 (t!383021 zl!1616))))))

(assert (=> d!2223423 (= (zipperDepthTotal!589 (t!383021 (t!383021 zl!1616))) lt!2562990)))

(declare-fun b!7124732 () Bool)

(assert (=> b!7124732 (= e!4281525 (+ (contextDepthTotal!560 (h!75368 (t!383021 (t!383021 zl!1616)))) (zipperDepthTotal!589 (t!383021 (t!383021 (t!383021 zl!1616))))))))

(declare-fun b!7124733 () Bool)

(assert (=> b!7124733 (= e!4281525 0)))

(assert (= (and d!2223423 c!1329257) b!7124732))

(assert (= (and d!2223423 (not c!1329257)) b!7124733))

(declare-fun m!7842180 () Bool)

(assert (=> b!7124732 m!7842180))

(declare-fun m!7842182 () Bool)

(assert (=> b!7124732 m!7842182))

(assert (=> b!7124664 d!2223423))

(declare-fun d!2223425 () Bool)

(declare-fun c!1329260 () Bool)

(assert (=> d!2223425 (= c!1329260 (is-Nil!68920 (t!383021 zl!1616)))))

(declare-fun e!4281528 () (Set Context!13980))

(assert (=> d!2223425 (= (content!14105 (t!383021 zl!1616)) e!4281528)))

(declare-fun b!7124738 () Bool)

(assert (=> b!7124738 (= e!4281528 (as set.empty (Set Context!13980)))))

(declare-fun b!7124739 () Bool)

(assert (=> b!7124739 (= e!4281528 (set.union (set.insert (h!75368 (t!383021 zl!1616)) (as set.empty (Set Context!13980))) (content!14105 (t!383021 (t!383021 zl!1616)))))))

(assert (= (and d!2223425 c!1329260) b!7124738))

(assert (= (and d!2223425 (not c!1329260)) b!7124739))

(declare-fun m!7842184 () Bool)

(assert (=> b!7124739 m!7842184))

(assert (=> b!7124739 m!7842162))

(assert (=> d!2223403 d!2223425))

(declare-fun bs!1886285 () Bool)

(declare-fun d!2223427 () Bool)

(assert (= bs!1886285 (and d!2223427 d!2223391)))

(declare-fun lambda!432977 () Int)

(assert (=> bs!1886285 (= lambda!432977 lambda!432975)))

(declare-fun bs!1886286 () Bool)

(assert (= bs!1886286 (and d!2223427 d!2223407)))

(assert (=> bs!1886286 (= lambda!432977 lambda!432976)))

(assert (=> d!2223427 (= (inv!88019 (h!75368 (t!383021 zl!1616))) (forall!16905 (exprs!7490 (h!75368 (t!383021 zl!1616))) lambda!432977))))

(declare-fun bs!1886287 () Bool)

(assert (= bs!1886287 d!2223427))

(declare-fun m!7842186 () Bool)

(assert (=> bs!1886287 m!7842186))

(assert (=> b!7124692 d!2223427))

(declare-fun d!2223429 () Bool)

(declare-fun c!1329261 () Bool)

(assert (=> d!2223429 (= c!1329261 (is-Nil!68920 zl!1616))))

(declare-fun e!4281529 () (Set Context!13980))

(assert (=> d!2223429 (= (content!14105 zl!1616) e!4281529)))

(declare-fun b!7124740 () Bool)

(assert (=> b!7124740 (= e!4281529 (as set.empty (Set Context!13980)))))

(declare-fun b!7124741 () Bool)

(assert (=> b!7124741 (= e!4281529 (set.union (set.insert (h!75368 zl!1616) (as set.empty (Set Context!13980))) (content!14105 (t!383021 zl!1616))))))

(assert (= (and d!2223429 c!1329261) b!7124740))

(assert (= (and d!2223429 (not c!1329261)) b!7124741))

(declare-fun m!7842188 () Bool)

(assert (=> b!7124741 m!7842188))

(assert (=> b!7124741 m!7842140))

(assert (=> d!2223405 d!2223429))

(declare-fun d!2223431 () Bool)

(declare-fun lt!2562991 () Int)

(assert (=> d!2223431 (>= lt!2562991 0)))

(declare-fun e!4281530 () Int)

(assert (=> d!2223431 (= lt!2562991 e!4281530)))

(declare-fun c!1329262 () Bool)

(assert (=> d!2223431 (= c!1329262 (is-Cons!68919 (exprs!7490 (h!75368 zl!1616))))))

(assert (=> d!2223431 (= (contextDepthTotal!560 (h!75368 zl!1616)) lt!2562991)))

(declare-fun b!7124742 () Bool)

(assert (=> b!7124742 (= e!4281530 (+ (regexDepthTotal!331 (h!75367 (exprs!7490 (h!75368 zl!1616)))) (contextDepthTotal!560 (Context!13981 (t!383020 (exprs!7490 (h!75368 zl!1616)))))))))

(declare-fun b!7124743 () Bool)

(assert (=> b!7124743 (= e!4281530 1)))

(assert (= (and d!2223431 c!1329262) b!7124742))

(assert (= (and d!2223431 (not c!1329262)) b!7124743))

(declare-fun m!7842190 () Bool)

(assert (=> b!7124742 m!7842190))

(declare-fun m!7842192 () Bool)

(assert (=> b!7124742 m!7842192))

(assert (=> b!7124662 d!2223431))

(assert (=> b!7124662 d!2223397))

(declare-fun b!7124755 () Bool)

(declare-fun e!4281533 () Bool)

(declare-fun tp!1962292 () Bool)

(declare-fun tp!1962294 () Bool)

(assert (=> b!7124755 (= e!4281533 (and tp!1962292 tp!1962294))))

(declare-fun b!7124756 () Bool)

(declare-fun tp!1962293 () Bool)

(assert (=> b!7124756 (= e!4281533 tp!1962293)))

(declare-fun b!7124757 () Bool)

(declare-fun tp!1962291 () Bool)

(declare-fun tp!1962290 () Bool)

(assert (=> b!7124757 (= e!4281533 (and tp!1962291 tp!1962290))))

(declare-fun b!7124754 () Bool)

(declare-fun tp_is_empty!45601 () Bool)

(assert (=> b!7124754 (= e!4281533 tp_is_empty!45601)))

(assert (=> b!7124685 (= tp!1962272 e!4281533)))

(assert (= (and b!7124685 (is-ElementMatch!17996 (h!75367 (exprs!7490 (h!75368 zl!1616))))) b!7124754))

(assert (= (and b!7124685 (is-Concat!26841 (h!75367 (exprs!7490 (h!75368 zl!1616))))) b!7124755))

(assert (= (and b!7124685 (is-Star!17996 (h!75367 (exprs!7490 (h!75368 zl!1616))))) b!7124756))

(assert (= (and b!7124685 (is-Union!17996 (h!75367 (exprs!7490 (h!75368 zl!1616))))) b!7124757))

(declare-fun b!7124758 () Bool)

(declare-fun e!4281534 () Bool)

(declare-fun tp!1962295 () Bool)

(declare-fun tp!1962296 () Bool)

(assert (=> b!7124758 (= e!4281534 (and tp!1962295 tp!1962296))))

(assert (=> b!7124685 (= tp!1962273 e!4281534)))

(assert (= (and b!7124685 (is-Cons!68919 (t!383020 (exprs!7490 (h!75368 zl!1616))))) b!7124758))

(declare-fun b!7124760 () Bool)

(declare-fun e!4281535 () Bool)

(declare-fun tp!1962299 () Bool)

(declare-fun tp!1962301 () Bool)

(assert (=> b!7124760 (= e!4281535 (and tp!1962299 tp!1962301))))

(declare-fun b!7124761 () Bool)

(declare-fun tp!1962300 () Bool)

(assert (=> b!7124761 (= e!4281535 tp!1962300)))

(declare-fun b!7124762 () Bool)

(declare-fun tp!1962298 () Bool)

(declare-fun tp!1962297 () Bool)

(assert (=> b!7124762 (= e!4281535 (and tp!1962298 tp!1962297))))

(declare-fun b!7124759 () Bool)

(assert (=> b!7124759 (= e!4281535 tp_is_empty!45601)))

(assert (=> b!7124684 (= tp!1962270 e!4281535)))

(assert (= (and b!7124684 (is-ElementMatch!17996 (h!75367 (exprs!7490 c!9962)))) b!7124759))

(assert (= (and b!7124684 (is-Concat!26841 (h!75367 (exprs!7490 c!9962)))) b!7124760))

(assert (= (and b!7124684 (is-Star!17996 (h!75367 (exprs!7490 c!9962)))) b!7124761))

(assert (= (and b!7124684 (is-Union!17996 (h!75367 (exprs!7490 c!9962)))) b!7124762))

(declare-fun b!7124763 () Bool)

(declare-fun e!4281536 () Bool)

(declare-fun tp!1962302 () Bool)

(declare-fun tp!1962303 () Bool)

(assert (=> b!7124763 (= e!4281536 (and tp!1962302 tp!1962303))))

(assert (=> b!7124684 (= tp!1962271 e!4281536)))

(assert (= (and b!7124684 (is-Cons!68919 (t!383020 (exprs!7490 c!9962)))) b!7124763))

(declare-fun b!7124765 () Bool)

(declare-fun e!4281538 () Bool)

(declare-fun tp!1962304 () Bool)

(assert (=> b!7124765 (= e!4281538 tp!1962304)))

(declare-fun b!7124764 () Bool)

(declare-fun tp!1962305 () Bool)

(declare-fun e!4281537 () Bool)

(assert (=> b!7124764 (= e!4281537 (and (inv!88019 (h!75368 (t!383021 (t!383021 zl!1616)))) e!4281538 tp!1962305))))

(assert (=> b!7124692 (= tp!1962279 e!4281537)))

(assert (= b!7124764 b!7124765))

(assert (= (and b!7124692 (is-Cons!68920 (t!383021 (t!383021 zl!1616)))) b!7124764))

(declare-fun m!7842194 () Bool)

(assert (=> b!7124764 m!7842194))

(declare-fun b!7124766 () Bool)

(declare-fun e!4281539 () Bool)

(declare-fun tp!1962306 () Bool)

(declare-fun tp!1962307 () Bool)

(assert (=> b!7124766 (= e!4281539 (and tp!1962306 tp!1962307))))

(assert (=> b!7124693 (= tp!1962278 e!4281539)))

(assert (= (and b!7124693 (is-Cons!68919 (exprs!7490 (h!75368 (t!383021 zl!1616))))) b!7124766))

(declare-fun b_lambda!271925 () Bool)

(assert (= b_lambda!271921 (or d!2223391 b_lambda!271925)))

(declare-fun bs!1886288 () Bool)

(declare-fun d!2223433 () Bool)

(assert (= bs!1886288 (and d!2223433 d!2223391)))

(declare-fun validRegex!9263 (Regex!17996) Bool)

(assert (=> bs!1886288 (= (dynLambda!28106 lambda!432975 (h!75367 (exprs!7490 (h!75368 zl!1616)))) (validRegex!9263 (h!75367 (exprs!7490 (h!75368 zl!1616)))))))

(declare-fun m!7842196 () Bool)

(assert (=> bs!1886288 m!7842196))

(assert (=> b!7124726 d!2223433))

(declare-fun b_lambda!271927 () Bool)

(assert (= b_lambda!271923 (or d!2223407 b_lambda!271927)))

(declare-fun bs!1886289 () Bool)

(declare-fun d!2223435 () Bool)

(assert (= bs!1886289 (and d!2223435 d!2223407)))

(assert (=> bs!1886289 (= (dynLambda!28106 lambda!432976 (h!75367 (exprs!7490 c!9962))) (validRegex!9263 (h!75367 (exprs!7490 c!9962))))))

(declare-fun m!7842198 () Bool)

(assert (=> bs!1886289 m!7842198))

(assert (=> b!7124728 d!2223435))

(push 1)

(assert (not bm!650811))

(assert (not bs!1886289))

(assert (not b!7124739))

(assert (not b!7124763))

(assert (not b!7124766))

(assert (not b!7124721))

(assert (not d!2223415))

(assert (not b!7124764))

(assert (not b!7124760))

(assert (not b!7124756))

(assert (not b!7124718))

(assert (not b!7124765))

(assert (not b_lambda!271927))

(assert (not b!7124730))

(assert (not bs!1886288))

(assert (not b!7124761))

(assert (not bm!650810))

(assert (not b!7124732))

(assert (not b!7124727))

(assert (not b!7124755))

(assert (not b_lambda!271925))

(assert (not b!7124729))

(assert (not b!7124762))

(assert (not d!2223413))

(assert (not b!7124757))

(assert (not b!7124741))

(assert tp_is_empty!45601)

(assert (not d!2223427))

(assert (not b!7124742))

(assert (not b!7124758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

